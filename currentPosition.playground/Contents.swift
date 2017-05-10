

func checkDuplicate<T:Sequence,U:Sequence>(array1:T,array2:U)->[T.Iterator.Element]?
    where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element
{
    var uniqueArray:Array<T.Iterator.Element>=[];
    var combineArrry:Array<T.Iterator.Element>=[];
    combineArrry.append(contentsOf: array1);
    combineArrry.append(contentsOf: array2);
    var T = array1.makeIterator();
    uniqueArray.append(T.next()!);
    for item in combineArrry
    {
        if(uniqueArray.count>0)
        {
            if(uniqueArray.contains(item)==false)
            {
                uniqueArray.append(item);
            }
        }
        
    }
    return uniqueArray;
}
var k=checkDuplicate(array1: ["manish","2","3","4","5","6","7"], array2: ["manish","manish","manish"]);
print(k);
