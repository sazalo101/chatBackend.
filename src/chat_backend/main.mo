import Text "mo:base/Text";
import Int "mo:base/Int";
import Array "mo:base/Array";
actor Chat{
  type Message={
    sender:Text;
    content:Text;
    timestamp:Int;
  };
  var messages:[Message]=[];
  public func SendMessage(sender:Text,content:Text,timestamp:Int):async (){
    messages:=Array.append(messages,[{sender=sender;content=content;timestamp=timestamp}]);
  };
public query func getMessages():async [Message]{
      return messages;
};
};
