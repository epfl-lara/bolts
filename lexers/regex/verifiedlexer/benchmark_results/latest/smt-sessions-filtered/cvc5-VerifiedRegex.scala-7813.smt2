; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410516 () Bool)

(assert start!410516)

(assert (=> start!410516 true))

(declare-fun b!4275666 () Bool)

(assert (=> b!4275666 true))

(assert (=> b!4275666 true))

(assert (=> b!4275666 true))

(declare-fun b!4275675 () Bool)

(declare-fun e!2654526 () Bool)

(declare-datatypes ((List!47458 0))(
  ( (Nil!47334) (Cons!47334 (h!52754 (_ BitVec 16)) (t!353937 List!47458)) )
))
(declare-datatypes ((IArray!28637 0))(
  ( (IArray!28638 (innerList!14376 List!47458)) )
))
(declare-datatypes ((Conc!14316 0))(
  ( (Node!14316 (left!35239 Conc!14316) (right!35569 Conc!14316) (csize!28862 Int) (cheight!14527 Int)) (Leaf!22130 (xs!17622 IArray!28637) (csize!28863 Int)) (Empty!14316) )
))
(declare-datatypes ((BalanceConc!28142 0))(
  ( (BalanceConc!28143 (c!728085 Conc!14316)) )
))
(declare-fun x!743015 () BalanceConc!28142)

(declare-fun tp!1308507 () Bool)

(declare-fun inv!62590 (Conc!14316) Bool)

(assert (=> b!4275675 (= e!2654526 (and (inv!62590 (c!728085 x!743015)) tp!1308507))))

(declare-fun inst!1804 () Bool)

(declare-datatypes ((DelimiterValueInjection!32 0))(
  ( (DelimiterValueInjection!33) )
))
(declare-fun thiss!2654 () DelimiterValueInjection!32)

(declare-fun inv!62591 (BalanceConc!28142) Bool)

(declare-fun list!17226 (BalanceConc!28142) List!47458)

(declare-datatypes ((TokenValue!8289 0))(
  ( (FloatLiteralValue!16578 (text!58468 List!47458)) (TokenValueExt!8288 (__x!28735 Int)) (Broken!41445 (value!250136 List!47458)) (Object!8412) (End!8289) (Def!8289) (Underscore!8289) (Match!8289) (Else!8289) (Error!8289) (Case!8289) (If!8289) (Extends!8289) (Abstract!8289) (Class!8289) (Val!8289) (DelimiterValue!16578 (del!8349 List!47458)) (KeywordValue!8295 (value!250137 List!47458)) (CommentValue!16578 (value!250138 List!47458)) (WhitespaceValue!16578 (value!250139 List!47458)) (IndentationValue!8289 (value!250140 List!47458)) (String!55344) (Int32!8289) (Broken!41446 (value!250141 List!47458)) (Boolean!8290) (Unit!66279) (OperatorValue!8292 (op!8349 List!47458)) (IdentifierValue!16578 (value!250142 List!47458)) (IdentifierValue!16579 (value!250143 List!47458)) (WhitespaceValue!16579 (value!250144 List!47458)) (True!16578) (False!16578) (Broken!41447 (value!250145 List!47458)) (Broken!41448 (value!250146 List!47458)) (True!16579) (RightBrace!8289) (RightBracket!8289) (Colon!8289) (Null!8289) (Comma!8289) (LeftBracket!8289) (False!16579) (LeftBrace!8289) (ImaginaryLiteralValue!8289 (text!58469 List!47458)) (StringLiteralValue!24867 (value!250147 List!47458)) (EOFValue!8289 (value!250148 List!47458)) (IdentValue!8289 (value!250149 List!47458)) (DelimiterValue!16579 (value!250150 List!47458)) (DedentValue!8289 (value!250151 List!47458)) (NewLineValue!8289 (value!250152 List!47458)) (IntegerValue!24867 (value!250153 (_ BitVec 32)) (text!58470 List!47458)) (IntegerValue!24868 (value!250154 Int) (text!58471 List!47458)) (Times!8289) (Or!8289) (Equal!8289) (Minus!8289) (Broken!41449 (value!250155 List!47458)) (And!8289) (Div!8289) (LessEqual!8289) (Mod!8289) (Concat!21187) (Not!8289) (Plus!8289) (SpaceValue!8289 (value!250156 List!47458)) (IntegerValue!24869 (value!250157 Int) (text!58472 List!47458)) (StringLiteralValue!24868 (text!58473 List!47458)) (FloatLiteralValue!16579 (text!58474 List!47458)) (BytesLiteralValue!8289 (value!250158 List!47458)) (CommentValue!16579 (value!250159 List!47458)) (StringLiteralValue!24869 (value!250160 List!47458)) (ErrorTokenValue!8289 (msg!8350 List!47458)) )
))
(declare-fun toCharacters!12 (DelimiterValueInjection!32 TokenValue!8289) BalanceConc!28142)

(declare-fun toValue!19 (DelimiterValueInjection!32 BalanceConc!28142) TokenValue!8289)

(assert (=> start!410516 (= inst!1804 (=> (and (inv!62591 x!743015) e!2654526) (= (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (list!17226 x!743015))))))

(assert (= start!410516 b!4275675))

(declare-fun m!4871229 () Bool)

(assert (=> b!4275675 m!4871229))

(declare-fun m!4871231 () Bool)

(assert (=> start!410516 m!4871231))

(declare-fun m!4871233 () Bool)

(assert (=> start!410516 m!4871233))

(declare-fun m!4871235 () Bool)

(assert (=> start!410516 m!4871235))

(declare-fun m!4871237 () Bool)

(assert (=> start!410516 m!4871237))

(assert (=> start!410516 m!4871237))

(assert (=> start!410516 m!4871233))

(declare-fun m!4871239 () Bool)

(assert (=> start!410516 m!4871239))

(declare-fun res!1755773 () Bool)

(declare-fun e!2654528 () Bool)

(assert (=> b!4275666 (=> res!1755773 e!2654528)))

(declare-fun x!743016 () BalanceConc!28142)

(declare-fun x!743017 () BalanceConc!28142)

(assert (=> b!4275666 (= res!1755773 (not (= (list!17226 x!743016) (list!17226 x!743017))))))

(declare-fun e!2654527 () Bool)

(declare-fun e!2654529 () Bool)

(declare-fun inst!1805 () Bool)

(assert (=> b!4275666 (= inst!1805 (=> (and (inv!62591 x!743016) e!2654527 (inv!62591 x!743017) e!2654529) e!2654528))))

(declare-fun b!4275676 () Bool)

(assert (=> b!4275676 (= e!2654528 (= (toValue!19 thiss!2654 x!743016) (toValue!19 thiss!2654 x!743017)))))

(declare-fun b!4275677 () Bool)

(declare-fun tp!1308509 () Bool)

(assert (=> b!4275677 (= e!2654527 (and (inv!62590 (c!728085 x!743016)) tp!1308509))))

(declare-fun b!4275678 () Bool)

(declare-fun tp!1308508 () Bool)

(assert (=> b!4275678 (= e!2654529 (and (inv!62590 (c!728085 x!743017)) tp!1308508))))

(assert (= (and b!4275666 (not res!1755773)) b!4275676))

(assert (= b!4275666 b!4275677))

(assert (= b!4275666 b!4275678))

(declare-fun m!4871241 () Bool)

(assert (=> b!4275666 m!4871241))

(declare-fun m!4871243 () Bool)

(assert (=> b!4275666 m!4871243))

(declare-fun m!4871245 () Bool)

(assert (=> b!4275666 m!4871245))

(declare-fun m!4871247 () Bool)

(assert (=> b!4275666 m!4871247))

(declare-fun m!4871249 () Bool)

(assert (=> b!4275676 m!4871249))

(declare-fun m!4871251 () Bool)

(assert (=> b!4275676 m!4871251))

(declare-fun m!4871253 () Bool)

(assert (=> b!4275677 m!4871253))

(declare-fun m!4871255 () Bool)

(assert (=> b!4275678 m!4871255))

(declare-fun bs!601985 () Bool)

(declare-fun neg-inst!1804 () Bool)

(declare-fun s!240302 () Bool)

(assert (= bs!601985 (and neg-inst!1804 s!240302)))

(assert (=> bs!601985 (=> true (= (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (list!17226 x!743015)))))

(assert (=> m!4871239 m!4871237))

(assert (=> m!4871239 m!4871233))

(assert (=> m!4871239 m!4871235))

(assert (=> m!4871239 s!240302))

(assert (=> m!4871237 s!240302))

(declare-fun bs!601986 () Bool)

(assert (= bs!601986 (and neg-inst!1804 start!410516)))

(assert (=> bs!601986 (= true inst!1804)))

(declare-fun bs!601987 () Bool)

(declare-fun neg-inst!1805 () Bool)

(declare-fun s!240304 () Bool)

(assert (= bs!601987 (and neg-inst!1805 s!240304)))

(declare-fun res!1755774 () Bool)

(declare-fun e!2654530 () Bool)

(assert (=> bs!601987 (=> res!1755774 e!2654530)))

(assert (=> bs!601987 (= res!1755774 (not (= (list!17226 x!743016) (list!17226 x!743016))))))

(assert (=> bs!601987 (=> true e!2654530)))

(declare-fun b!4275679 () Bool)

(assert (=> b!4275679 (= e!2654530 (= (toValue!19 thiss!2654 x!743016) (toValue!19 thiss!2654 x!743016)))))

(assert (= (and bs!601987 (not res!1755774)) b!4275679))

(assert (=> m!4871249 m!4871241))

(assert (=> m!4871249 m!4871241))

(assert (=> m!4871249 s!240304))

(assert (=> m!4871249 s!240304))

(declare-fun bs!601988 () Bool)

(declare-fun s!240306 () Bool)

(assert (= bs!601988 (and neg-inst!1805 s!240306)))

(declare-fun res!1755775 () Bool)

(declare-fun e!2654531 () Bool)

(assert (=> bs!601988 (=> res!1755775 e!2654531)))

(assert (=> bs!601988 (= res!1755775 (not (= (list!17226 x!743016) (list!17226 x!743017))))))

(assert (=> bs!601988 (=> true e!2654531)))

(declare-fun b!4275680 () Bool)

(assert (=> b!4275680 (= e!2654531 (= (toValue!19 thiss!2654 x!743016) (toValue!19 thiss!2654 x!743017)))))

(assert (= (and bs!601988 (not res!1755775)) b!4275680))

(declare-fun bs!601989 () Bool)

(assert (= bs!601989 (and m!4871243 m!4871249)))

(assert (=> bs!601989 m!4871241))

(assert (=> bs!601989 m!4871243))

(assert (=> bs!601989 s!240306))

(declare-fun bs!601990 () Bool)

(declare-fun s!240308 () Bool)

(assert (= bs!601990 (and neg-inst!1805 s!240308)))

(declare-fun res!1755776 () Bool)

(declare-fun e!2654532 () Bool)

(assert (=> bs!601990 (=> res!1755776 e!2654532)))

(assert (=> bs!601990 (= res!1755776 (not (= (list!17226 x!743017) (list!17226 x!743017))))))

(assert (=> bs!601990 (=> true e!2654532)))

(declare-fun b!4275681 () Bool)

(assert (=> b!4275681 (= e!2654532 (= (toValue!19 thiss!2654 x!743017) (toValue!19 thiss!2654 x!743017)))))

(assert (= (and bs!601990 (not res!1755776)) b!4275681))

(assert (=> m!4871243 s!240308))

(declare-fun bs!601991 () Bool)

(declare-fun s!240310 () Bool)

(assert (= bs!601991 (and neg-inst!1805 s!240310)))

(declare-fun res!1755777 () Bool)

(declare-fun e!2654533 () Bool)

(assert (=> bs!601991 (=> res!1755777 e!2654533)))

(assert (=> bs!601991 (= res!1755777 (not (= (list!17226 x!743017) (list!17226 x!743016))))))

(assert (=> bs!601991 (=> true e!2654533)))

(declare-fun b!4275682 () Bool)

(assert (=> b!4275682 (= e!2654533 (= (toValue!19 thiss!2654 x!743017) (toValue!19 thiss!2654 x!743016)))))

(assert (= (and bs!601991 (not res!1755777)) b!4275682))

(assert (=> bs!601989 m!4871243))

(assert (=> bs!601989 m!4871241))

(assert (=> bs!601989 s!240310))

(assert (=> m!4871243 s!240308))

(declare-fun bs!601992 () Bool)

(declare-fun s!240312 () Bool)

(assert (= bs!601992 (and neg-inst!1805 s!240312)))

(declare-fun res!1755778 () Bool)

(declare-fun e!2654534 () Bool)

(assert (=> bs!601992 (=> res!1755778 e!2654534)))

(assert (=> bs!601992 (= res!1755778 (not (= (list!17226 x!743017) (list!17226 x!743015))))))

(assert (=> bs!601992 (=> true e!2654534)))

(declare-fun b!4275683 () Bool)

(assert (=> b!4275683 (= e!2654534 (= (toValue!19 thiss!2654 x!743017) (toValue!19 thiss!2654 x!743015)))))

(assert (= (and bs!601992 (not res!1755778)) b!4275683))

(declare-fun bs!601993 () Bool)

(assert (= bs!601993 (and m!4871239 m!4871243)))

(assert (=> bs!601993 m!4871243))

(assert (=> bs!601993 m!4871239))

(assert (=> bs!601993 s!240312))

(declare-fun bs!601994 () Bool)

(declare-fun s!240314 () Bool)

(assert (= bs!601994 (and neg-inst!1805 s!240314)))

(declare-fun res!1755779 () Bool)

(declare-fun e!2654535 () Bool)

(assert (=> bs!601994 (=> res!1755779 e!2654535)))

(assert (=> bs!601994 (= res!1755779 (not (= (list!17226 x!743016) (list!17226 x!743015))))))

(assert (=> bs!601994 (=> true e!2654535)))

(declare-fun b!4275684 () Bool)

(assert (=> b!4275684 (= e!2654535 (= (toValue!19 thiss!2654 x!743016) (toValue!19 thiss!2654 x!743015)))))

(assert (= (and bs!601994 (not res!1755779)) b!4275684))

(declare-fun bs!601995 () Bool)

(assert (= bs!601995 (and m!4871239 m!4871249)))

(assert (=> bs!601995 m!4871241))

(assert (=> bs!601995 m!4871239))

(assert (=> bs!601995 s!240314))

(declare-fun bs!601996 () Bool)

(declare-fun s!240316 () Bool)

(assert (= bs!601996 (and neg-inst!1805 s!240316)))

(declare-fun res!1755780 () Bool)

(declare-fun e!2654536 () Bool)

(assert (=> bs!601996 (=> res!1755780 e!2654536)))

(assert (=> bs!601996 (= res!1755780 (not (= (list!17226 x!743015) (list!17226 x!743015))))))

(assert (=> bs!601996 (=> true e!2654536)))

(declare-fun b!4275685 () Bool)

(assert (=> b!4275685 (= e!2654536 (= (toValue!19 thiss!2654 x!743015) (toValue!19 thiss!2654 x!743015)))))

(assert (= (and bs!601996 (not res!1755780)) b!4275685))

(assert (=> m!4871239 s!240316))

(declare-fun bs!601997 () Bool)

(declare-fun s!240318 () Bool)

(assert (= bs!601997 (and neg-inst!1805 s!240318)))

(declare-fun res!1755781 () Bool)

(declare-fun e!2654537 () Bool)

(assert (=> bs!601997 (=> res!1755781 e!2654537)))

(assert (=> bs!601997 (= res!1755781 (not (= (list!17226 x!743015) (list!17226 x!743017))))))

(assert (=> bs!601997 (=> true e!2654537)))

(declare-fun b!4275686 () Bool)

(assert (=> b!4275686 (= e!2654537 (= (toValue!19 thiss!2654 x!743015) (toValue!19 thiss!2654 x!743017)))))

(assert (= (and bs!601997 (not res!1755781)) b!4275686))

(assert (=> bs!601993 m!4871239))

(assert (=> bs!601993 m!4871243))

(assert (=> bs!601993 s!240318))

(declare-fun bs!601998 () Bool)

(declare-fun s!240320 () Bool)

(assert (= bs!601998 (and neg-inst!1805 s!240320)))

(declare-fun res!1755782 () Bool)

(declare-fun e!2654538 () Bool)

(assert (=> bs!601998 (=> res!1755782 e!2654538)))

(assert (=> bs!601998 (= res!1755782 (not (= (list!17226 x!743015) (list!17226 x!743016))))))

(assert (=> bs!601998 (=> true e!2654538)))

(declare-fun b!4275687 () Bool)

(assert (=> b!4275687 (= e!2654538 (= (toValue!19 thiss!2654 x!743015) (toValue!19 thiss!2654 x!743016)))))

(assert (= (and bs!601998 (not res!1755782)) b!4275687))

(assert (=> bs!601995 m!4871239))

(assert (=> bs!601995 m!4871241))

(assert (=> bs!601995 s!240320))

(assert (=> m!4871239 s!240316))

(declare-fun bs!601999 () Bool)

(assert (= bs!601999 (and m!4871241 m!4871243)))

(assert (=> bs!601999 s!240310))

(declare-fun bs!602000 () Bool)

(assert (= bs!602000 (and m!4871241 m!4871239)))

(assert (=> bs!602000 s!240320))

(declare-fun bs!602001 () Bool)

(assert (= bs!602001 (and m!4871241 m!4871249)))

(assert (=> bs!602001 s!240304))

(assert (=> m!4871241 s!240304))

(assert (=> bs!601999 s!240306))

(assert (=> bs!602000 s!240314))

(assert (=> bs!602001 s!240304))

(assert (=> m!4871241 s!240304))

(declare-fun bs!602002 () Bool)

(assert (= bs!602002 (and m!4871251 m!4871243)))

(assert (=> bs!602002 s!240308))

(declare-fun bs!602003 () Bool)

(assert (= bs!602003 (and m!4871251 m!4871239)))

(assert (=> bs!602003 s!240318))

(declare-fun bs!602004 () Bool)

(assert (= bs!602004 (and m!4871251 m!4871249 m!4871241)))

(assert (=> bs!602004 s!240306))

(assert (=> m!4871251 s!240308))

(assert (=> bs!602002 s!240308))

(assert (=> bs!602003 s!240312))

(assert (=> bs!602004 s!240310))

(assert (=> m!4871251 s!240308))

(declare-fun bs!602005 () Bool)

(declare-fun s!240322 () Bool)

(assert (= bs!602005 (and neg-inst!1805 s!240322)))

(declare-fun res!1755783 () Bool)

(declare-fun e!2654539 () Bool)

(assert (=> bs!602005 (=> res!1755783 e!2654539)))

(assert (=> bs!602005 (= res!1755783 (not (= (list!17226 x!743017) (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (=> bs!602005 (=> true e!2654539)))

(declare-fun b!4275688 () Bool)

(assert (=> b!4275688 (= e!2654539 (= (toValue!19 thiss!2654 x!743017) (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(assert (= (and bs!602005 (not res!1755783)) b!4275688))

(declare-fun bs!602006 () Bool)

(assert (= bs!602006 (and m!4871235 m!4871243 m!4871251)))

(assert (=> bs!602006 m!4871243))

(assert (=> bs!602006 m!4871235))

(assert (=> bs!602006 s!240322))

(declare-fun bs!602007 () Bool)

(declare-fun s!240324 () Bool)

(assert (= bs!602007 (and neg-inst!1805 s!240324)))

(declare-fun res!1755784 () Bool)

(declare-fun e!2654540 () Bool)

(assert (=> bs!602007 (=> res!1755784 e!2654540)))

(assert (=> bs!602007 (= res!1755784 (not (= (list!17226 x!743015) (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (=> bs!602007 (=> true e!2654540)))

(declare-fun b!4275689 () Bool)

(assert (=> b!4275689 (= e!2654540 (= (toValue!19 thiss!2654 x!743015) (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(assert (= (and bs!602007 (not res!1755784)) b!4275689))

(declare-fun bs!602008 () Bool)

(assert (= bs!602008 (and m!4871235 m!4871239)))

(assert (=> bs!602008 m!4871239))

(assert (=> bs!602008 m!4871235))

(assert (=> bs!602008 s!240324))

(declare-fun bs!602009 () Bool)

(declare-fun s!240326 () Bool)

(assert (= bs!602009 (and neg-inst!1805 s!240326)))

(declare-fun res!1755785 () Bool)

(declare-fun e!2654541 () Bool)

(assert (=> bs!602009 (=> res!1755785 e!2654541)))

(assert (=> bs!602009 (= res!1755785 (not (= (list!17226 x!743016) (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (=> bs!602009 (=> true e!2654541)))

(declare-fun b!4275690 () Bool)

(assert (=> b!4275690 (= e!2654541 (= (toValue!19 thiss!2654 x!743016) (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(assert (= (and bs!602009 (not res!1755785)) b!4275690))

(declare-fun bs!602010 () Bool)

(assert (= bs!602010 (and m!4871235 m!4871249 m!4871241)))

(assert (=> bs!602010 m!4871241))

(assert (=> bs!602010 m!4871235))

(assert (=> bs!602010 s!240326))

(declare-fun bs!602011 () Bool)

(declare-fun s!240328 () Bool)

(assert (= bs!602011 (and neg-inst!1805 s!240328)))

(declare-fun res!1755786 () Bool)

(declare-fun e!2654542 () Bool)

(assert (=> bs!602011 (=> res!1755786 e!2654542)))

(assert (=> bs!602011 (= res!1755786 (not (= (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (=> bs!602011 (=> true e!2654542)))

(declare-fun b!4275691 () Bool)

(assert (=> b!4275691 (= e!2654542 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(assert (= (and bs!602011 (not res!1755786)) b!4275691))

(assert (=> m!4871235 s!240328))

(declare-fun bs!602012 () Bool)

(declare-fun s!240330 () Bool)

(assert (= bs!602012 (and neg-inst!1805 s!240330)))

(declare-fun res!1755787 () Bool)

(declare-fun e!2654543 () Bool)

(assert (=> bs!602012 (=> res!1755787 e!2654543)))

(assert (=> bs!602012 (= res!1755787 (not (= (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (list!17226 x!743017))))))

(assert (=> bs!602012 (=> true e!2654543)))

(declare-fun b!4275692 () Bool)

(assert (=> b!4275692 (= e!2654543 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (toValue!19 thiss!2654 x!743017)))))

(assert (= (and bs!602012 (not res!1755787)) b!4275692))

(assert (=> bs!602006 m!4871235))

(assert (=> bs!602006 m!4871243))

(assert (=> bs!602006 s!240330))

(declare-fun bs!602013 () Bool)

(declare-fun s!240332 () Bool)

(assert (= bs!602013 (and neg-inst!1805 s!240332)))

(declare-fun res!1755788 () Bool)

(declare-fun e!2654544 () Bool)

(assert (=> bs!602013 (=> res!1755788 e!2654544)))

(assert (=> bs!602013 (= res!1755788 (not (= (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (list!17226 x!743015))))))

(assert (=> bs!602013 (=> true e!2654544)))

(declare-fun b!4275693 () Bool)

(assert (=> b!4275693 (= e!2654544 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (toValue!19 thiss!2654 x!743015)))))

(assert (= (and bs!602013 (not res!1755788)) b!4275693))

(assert (=> bs!602008 m!4871235))

(assert (=> bs!602008 m!4871239))

(assert (=> bs!602008 s!240332))

(declare-fun bs!602014 () Bool)

(declare-fun s!240334 () Bool)

(assert (= bs!602014 (and neg-inst!1805 s!240334)))

(declare-fun res!1755789 () Bool)

(declare-fun e!2654545 () Bool)

(assert (=> bs!602014 (=> res!1755789 e!2654545)))

(assert (=> bs!602014 (= res!1755789 (not (= (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (list!17226 x!743016))))))

(assert (=> bs!602014 (=> true e!2654545)))

(declare-fun b!4275694 () Bool)

(assert (=> b!4275694 (= e!2654545 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (toValue!19 thiss!2654 x!743016)))))

(assert (= (and bs!602014 (not res!1755789)) b!4275694))

(assert (=> bs!602010 m!4871235))

(assert (=> bs!602010 m!4871241))

(assert (=> bs!602010 s!240334))

(assert (=> m!4871235 s!240328))

(assert (=> m!4871237 s!240316))

(declare-fun bs!602015 () Bool)

(assert (= bs!602015 (and m!4871237 m!4871249 m!4871241)))

(assert (=> bs!602015 s!240314))

(declare-fun bs!602016 () Bool)

(assert (= bs!602016 (and m!4871237 m!4871239)))

(assert (=> bs!602016 s!240316))

(declare-fun bs!602017 () Bool)

(assert (= bs!602017 (and m!4871237 m!4871235)))

(assert (=> bs!602017 s!240332))

(declare-fun bs!602018 () Bool)

(assert (= bs!602018 (and m!4871237 m!4871243 m!4871251)))

(assert (=> bs!602018 s!240312))

(assert (=> bs!602015 s!240320))

(assert (=> m!4871237 s!240316))

(assert (=> bs!602017 s!240324))

(assert (=> bs!602018 s!240318))

(assert (=> bs!602016 s!240316))

(declare-fun bs!602019 () Bool)

(assert (= bs!602019 (and neg-inst!1805 b!4275666)))

(assert (=> bs!602019 (= true inst!1805)))

(declare-fun res!1755772 () Bool)

(declare-fun e!2654525 () Bool)

(assert (=> start!410516 (=> res!1755772 e!2654525)))

(declare-fun lambda!131268 () Int)

(declare-fun Forall!1657 (Int) Bool)

(assert (=> start!410516 (= res!1755772 (not (Forall!1657 lambda!131268)))))

(assert (=> start!410516 (= (Forall!1657 lambda!131268) inst!1804)))

(assert (=> start!410516 (not e!2654525)))

(assert (=> start!410516 true))

(declare-fun lambda!131271 () Int)

(declare-fun Forall2!1238 (Int) Bool)

(assert (=> b!4275666 (= e!2654525 (Forall2!1238 lambda!131271))))

(assert (=> b!4275666 (= (Forall2!1238 lambda!131271) inst!1805)))

(declare-fun lambda!131269 () Int)

(declare-fun lambda!131270 () Int)

(declare-fun semiInverseModEq!3523 (Int Int) Bool)

(assert (=> b!4275666 (= (semiInverseModEq!3523 lambda!131269 lambda!131270) (Forall!1657 lambda!131268))))

(assert (= neg-inst!1804 inst!1804))

(assert (= (and start!410516 (not res!1755772)) b!4275666))

(assert (= neg-inst!1805 inst!1805))

(declare-fun m!4871257 () Bool)

(assert (=> start!410516 m!4871257))

(assert (=> start!410516 m!4871257))

(declare-fun m!4871259 () Bool)

(assert (=> b!4275666 m!4871259))

(assert (=> b!4275666 m!4871259))

(declare-fun m!4871261 () Bool)

(assert (=> b!4275666 m!4871261))

(assert (=> b!4275666 m!4871257))

(push 1)

(assert (not b!4275694))

(assert (not bs!602007))

(assert (not b!4275676))

(assert (not bs!601990))

(assert (not b!4275666))

(assert (not b!4275678))

(assert (not bs!601996))

(assert (not bs!602005))

(assert (not b!4275693))

(assert (not bs!601994))

(assert (not b!4275689))

(assert (not b!4275675))

(assert (not start!410516))

(assert (not bs!601991))

(assert (not b!4275691))

(assert (not bs!601985))

(assert (not b!4275684))

(assert (not bs!602009))

(assert (not bs!601988))

(assert (not b!4275687))

(assert (not bs!601992))

(assert (not bs!602014))

(assert (not b!4275677))

(assert (not bs!601987))

(assert (not b!4275682))

(assert (not bs!602011))

(assert (not b!4275688))

(assert (not b!4275680))

(assert (not bs!602013))

(assert (not b!4275685))

(assert (not bs!601998))

(assert (not bs!602012))

(assert (not b!4275686))

(assert (not b!4275679))

(assert (not b!4275690))

(assert (not b!4275681))

(assert (not b!4275692))

(assert (not b!4275683))

(assert (not bs!601997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1262070 () Bool)

(declare-fun list!17228 (Conc!14316) List!47458)

(assert (=> d!1262070 (= (list!17226 x!743016) (list!17228 (c!728085 x!743016)))))

(declare-fun bs!602057 () Bool)

(assert (= bs!602057 d!1262070))

(declare-fun m!4871297 () Bool)

(assert (=> bs!602057 m!4871297))

(assert (=> bs!601988 d!1262070))

(declare-fun d!1262072 () Bool)

(assert (=> d!1262072 (= (list!17226 x!743017) (list!17228 (c!728085 x!743017)))))

(declare-fun bs!602058 () Bool)

(assert (= bs!602058 d!1262072))

(declare-fun m!4871299 () Bool)

(assert (=> bs!602058 m!4871299))

(assert (=> bs!601988 d!1262072))

(declare-fun d!1262074 () Bool)

(assert (=> d!1262074 (= (list!17226 x!743015) (list!17228 (c!728085 x!743015)))))

(declare-fun bs!602059 () Bool)

(assert (= bs!602059 d!1262074))

(declare-fun m!4871301 () Bool)

(assert (=> bs!602059 m!4871301))

(assert (=> bs!602007 d!1262074))

(declare-fun d!1262076 () Bool)

(assert (=> d!1262076 (= (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (list!17228 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(declare-fun bs!602060 () Bool)

(assert (= bs!602060 d!1262076))

(declare-fun m!4871303 () Bool)

(assert (=> bs!602060 m!4871303))

(assert (=> bs!602007 d!1262076))

(declare-fun d!1262078 () Bool)

(declare-fun efficientList!564 (BalanceConc!28142) List!47458)

(assert (=> d!1262078 (= (toValue!19 thiss!2654 x!743015) (DelimiterValue!16579 (efficientList!564 x!743015)))))

(declare-fun bs!602061 () Bool)

(assert (= bs!602061 d!1262078))

(declare-fun m!4871305 () Bool)

(assert (=> bs!602061 m!4871305))

(assert (=> b!4275686 d!1262078))

(declare-fun d!1262080 () Bool)

(assert (=> d!1262080 (= (toValue!19 thiss!2654 x!743017) (DelimiterValue!16579 (efficientList!564 x!743017)))))

(declare-fun bs!602062 () Bool)

(assert (= bs!602062 d!1262080))

(declare-fun m!4871307 () Bool)

(assert (=> bs!602062 m!4871307))

(assert (=> b!4275686 d!1262080))

(assert (=> b!4275683 d!1262080))

(assert (=> b!4275683 d!1262078))

(declare-fun d!1262082 () Bool)

(assert (=> d!1262082 (= (toValue!19 thiss!2654 x!743016) (DelimiterValue!16579 (efficientList!564 x!743016)))))

(declare-fun bs!602063 () Bool)

(assert (= bs!602063 d!1262082))

(declare-fun m!4871309 () Bool)

(assert (=> bs!602063 m!4871309))

(assert (=> b!4275679 d!1262082))

(assert (=> bs!601997 d!1262074))

(assert (=> bs!601997 d!1262072))

(assert (=> bs!602012 d!1262076))

(assert (=> bs!602012 d!1262072))

(assert (=> bs!601992 d!1262072))

(assert (=> bs!601992 d!1262074))

(assert (=> b!4275682 d!1262080))

(assert (=> b!4275682 d!1262082))

(assert (=> bs!601987 d!1262070))

(declare-fun d!1262084 () Bool)

(assert (=> d!1262084 (= (toValue!19 thiss!2654 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (DelimiterValue!16579 (efficientList!564 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(declare-fun bs!602064 () Bool)

(assert (= bs!602064 d!1262084))

(assert (=> bs!602064 m!4871233))

(declare-fun m!4871311 () Bool)

(assert (=> bs!602064 m!4871311))

(assert (=> b!4275691 d!1262084))

(assert (=> b!4275688 d!1262080))

(assert (=> b!4275688 d!1262084))

(assert (=> bs!601991 d!1262072))

(assert (=> bs!601991 d!1262070))

(assert (=> bs!602005 d!1262072))

(assert (=> bs!602005 d!1262076))

(assert (=> b!4275685 d!1262078))

(assert (=> b!4275694 d!1262084))

(assert (=> b!4275694 d!1262082))

(assert (=> bs!602011 d!1262076))

(assert (=> bs!602014 d!1262076))

(assert (=> bs!602014 d!1262070))

(assert (=> b!4275681 d!1262080))

(assert (=> b!4275690 d!1262082))

(assert (=> b!4275690 d!1262084))

(assert (=> bs!601996 d!1262074))

(assert (=> b!4275684 d!1262082))

(assert (=> b!4275684 d!1262078))

(assert (=> b!4275693 d!1262084))

(assert (=> b!4275693 d!1262078))

(assert (=> bs!601990 d!1262072))

(assert (=> bs!602009 d!1262070))

(assert (=> bs!602009 d!1262076))

(assert (=> b!4275687 d!1262078))

(assert (=> b!4275687 d!1262082))

(assert (=> bs!601994 d!1262070))

(assert (=> bs!601994 d!1262074))

(assert (=> bs!602013 d!1262076))

(assert (=> bs!602013 d!1262074))

(assert (=> bs!601998 d!1262074))

(assert (=> bs!601998 d!1262070))

(assert (=> b!4275692 d!1262084))

(assert (=> b!4275692 d!1262080))

(assert (=> b!4275680 d!1262082))

(assert (=> b!4275680 d!1262080))

(assert (=> b!4275689 d!1262078))

(assert (=> b!4275689 d!1262084))

(declare-fun bs!602065 () Bool)

(assert (= bs!602065 (and m!4871249 b!4275679)))

(assert (=> bs!602065 m!4871249))

(assert (=> bs!602065 m!4871249))

(declare-fun bs!602066 () Bool)

(assert (= bs!602066 (and m!4871243 m!4871249 b!4275680)))

(assert (=> bs!602066 m!4871249))

(assert (=> bs!602066 m!4871251))

(declare-fun bs!602067 () Bool)

(assert (= bs!602067 (and m!4871243 b!4275681)))

(assert (=> bs!602067 m!4871251))

(assert (=> bs!602067 m!4871251))

(declare-fun bs!602068 () Bool)

(assert (= bs!602068 (and m!4871243 m!4871249 b!4275682)))

(assert (=> bs!602068 m!4871251))

(assert (=> bs!602068 m!4871249))

(declare-fun bs!602069 () Bool)

(assert (= bs!602069 (and m!4871239 m!4871243 b!4275683)))

(assert (=> bs!602069 m!4871251))

(assert (=> bs!602069 m!4871237))

(declare-fun bs!602070 () Bool)

(assert (= bs!602070 (and m!4871239 m!4871249 b!4275684)))

(assert (=> bs!602070 m!4871249))

(assert (=> bs!602070 m!4871237))

(declare-fun bs!602071 () Bool)

(assert (= bs!602071 (and m!4871239 b!4275685)))

(assert (=> bs!602071 m!4871237))

(assert (=> bs!602071 m!4871237))

(declare-fun bs!602072 () Bool)

(assert (= bs!602072 (and m!4871239 m!4871243 b!4275686)))

(assert (=> bs!602072 m!4871237))

(assert (=> bs!602072 m!4871251))

(declare-fun bs!602073 () Bool)

(assert (= bs!602073 (and m!4871239 m!4871249 b!4275687)))

(assert (=> bs!602073 m!4871237))

(assert (=> bs!602073 m!4871249))

(declare-fun bs!602074 () Bool)

(assert (= bs!602074 (and m!4871235 m!4871243 m!4871251 b!4275688)))

(assert (=> bs!602074 m!4871251))

(declare-fun m!4871313 () Bool)

(assert (=> bs!602074 m!4871313))

(declare-fun bs!602075 () Bool)

(assert (= bs!602075 (and m!4871235 m!4871239 b!4275689)))

(assert (=> bs!602075 m!4871237))

(assert (=> bs!602075 m!4871313))

(declare-fun bs!602076 () Bool)

(assert (= bs!602076 (and m!4871235 m!4871249 m!4871241 b!4275690)))

(assert (=> bs!602076 m!4871249))

(assert (=> bs!602076 m!4871313))

(declare-fun bs!602077 () Bool)

(assert (= bs!602077 (and m!4871235 b!4275691)))

(assert (=> bs!602077 m!4871313))

(assert (=> bs!602077 m!4871313))

(declare-fun bs!602078 () Bool)

(assert (= bs!602078 (and m!4871235 m!4871243 m!4871251 b!4275692)))

(assert (=> bs!602078 m!4871313))

(assert (=> bs!602078 m!4871251))

(declare-fun bs!602079 () Bool)

(assert (= bs!602079 (and m!4871235 m!4871239 b!4275693)))

(assert (=> bs!602079 m!4871313))

(assert (=> bs!602079 m!4871237))

(declare-fun bs!602080 () Bool)

(assert (= bs!602080 (and m!4871235 m!4871249 m!4871241 b!4275694)))

(assert (=> bs!602080 m!4871313))

(assert (=> bs!602080 m!4871249))

(push 1)

(assert (not d!1262070))

(assert (not start!410516))

(assert (not b!4275676))

(assert (not d!1262076))

(assert (not b!4275677))

(assert (not d!1262082))

(assert (not d!1262072))

(assert (not b!4275666))

(assert (not b!4275678))

(assert (not d!1262078))

(assert (not d!1262074))

(assert (not b!4275675))

(assert (not bs!601985))

(assert (not d!1262080))

(assert (not d!1262084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4275748 () Bool)

(declare-fun e!2654587 () List!47458)

(assert (=> b!4275748 (= e!2654587 Nil!47334)))

(declare-fun d!1262102 () Bool)

(declare-fun c!728091 () Bool)

(assert (=> d!1262102 (= c!728091 (is-Empty!14316 (c!728085 x!743017)))))

(assert (=> d!1262102 (= (list!17228 (c!728085 x!743017)) e!2654587)))

(declare-fun b!4275749 () Bool)

(declare-fun e!2654588 () List!47458)

(assert (=> b!4275749 (= e!2654587 e!2654588)))

(declare-fun c!728092 () Bool)

(assert (=> b!4275749 (= c!728092 (is-Leaf!22130 (c!728085 x!743017)))))

(declare-fun b!4275751 () Bool)

(declare-fun ++!12087 (List!47458 List!47458) List!47458)

(assert (=> b!4275751 (= e!2654588 (++!12087 (list!17228 (left!35239 (c!728085 x!743017))) (list!17228 (right!35569 (c!728085 x!743017)))))))

(declare-fun b!4275750 () Bool)

(declare-fun list!17230 (IArray!28637) List!47458)

(assert (=> b!4275750 (= e!2654588 (list!17230 (xs!17622 (c!728085 x!743017))))))

(assert (= (and d!1262102 c!728091) b!4275748))

(assert (= (and d!1262102 (not c!728091)) b!4275749))

(assert (= (and b!4275749 c!728092) b!4275750))

(assert (= (and b!4275749 (not c!728092)) b!4275751))

(declare-fun m!4871333 () Bool)

(assert (=> b!4275751 m!4871333))

(declare-fun m!4871335 () Bool)

(assert (=> b!4275751 m!4871335))

(assert (=> b!4275751 m!4871333))

(assert (=> b!4275751 m!4871335))

(declare-fun m!4871337 () Bool)

(assert (=> b!4275751 m!4871337))

(declare-fun m!4871339 () Bool)

(assert (=> b!4275750 m!4871339))

(assert (=> d!1262072 d!1262102))

(declare-fun d!1262104 () Bool)

(declare-fun lt!1513714 () List!47458)

(assert (=> d!1262104 (= lt!1513714 (list!17226 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))

(declare-fun efficientList!566 (Conc!14316 List!47458) List!47458)

(declare-fun efficientList$default$2!196 (Conc!14316) List!47458)

(assert (=> d!1262104 (= lt!1513714 (efficientList!566 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (=> d!1262104 (= (efficientList!564 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) lt!1513714)))

(declare-fun bs!602105 () Bool)

(assert (= bs!602105 d!1262104))

(assert (=> bs!602105 m!4871233))

(assert (=> bs!602105 m!4871235))

(declare-fun m!4871341 () Bool)

(assert (=> bs!602105 m!4871341))

(assert (=> bs!602105 m!4871341))

(declare-fun m!4871343 () Bool)

(assert (=> bs!602105 m!4871343))

(assert (=> d!1262084 d!1262104))

(declare-fun d!1262106 () Bool)

(declare-fun lt!1513715 () List!47458)

(assert (=> d!1262106 (= lt!1513715 (list!17226 x!743015))))

(assert (=> d!1262106 (= lt!1513715 (efficientList!566 (c!728085 x!743015) (efficientList$default$2!196 (c!728085 x!743015))))))

(assert (=> d!1262106 (= (efficientList!564 x!743015) lt!1513715)))

(declare-fun bs!602106 () Bool)

(assert (= bs!602106 d!1262106))

(assert (=> bs!602106 m!4871239))

(declare-fun m!4871345 () Bool)

(assert (=> bs!602106 m!4871345))

(assert (=> bs!602106 m!4871345))

(declare-fun m!4871347 () Bool)

(assert (=> bs!602106 m!4871347))

(assert (=> d!1262078 d!1262106))

(declare-fun b!4275752 () Bool)

(declare-fun e!2654589 () List!47458)

(assert (=> b!4275752 (= e!2654589 Nil!47334)))

(declare-fun d!1262108 () Bool)

(declare-fun c!728093 () Bool)

(assert (=> d!1262108 (= c!728093 (is-Empty!14316 (c!728085 x!743016)))))

(assert (=> d!1262108 (= (list!17228 (c!728085 x!743016)) e!2654589)))

(declare-fun b!4275753 () Bool)

(declare-fun e!2654590 () List!47458)

(assert (=> b!4275753 (= e!2654589 e!2654590)))

(declare-fun c!728094 () Bool)

(assert (=> b!4275753 (= c!728094 (is-Leaf!22130 (c!728085 x!743016)))))

(declare-fun b!4275755 () Bool)

(assert (=> b!4275755 (= e!2654590 (++!12087 (list!17228 (left!35239 (c!728085 x!743016))) (list!17228 (right!35569 (c!728085 x!743016)))))))

(declare-fun b!4275754 () Bool)

(assert (=> b!4275754 (= e!2654590 (list!17230 (xs!17622 (c!728085 x!743016))))))

(assert (= (and d!1262108 c!728093) b!4275752))

(assert (= (and d!1262108 (not c!728093)) b!4275753))

(assert (= (and b!4275753 c!728094) b!4275754))

(assert (= (and b!4275753 (not c!728094)) b!4275755))

(declare-fun m!4871349 () Bool)

(assert (=> b!4275755 m!4871349))

(declare-fun m!4871351 () Bool)

(assert (=> b!4275755 m!4871351))

(assert (=> b!4275755 m!4871349))

(assert (=> b!4275755 m!4871351))

(declare-fun m!4871353 () Bool)

(assert (=> b!4275755 m!4871353))

(declare-fun m!4871355 () Bool)

(assert (=> b!4275754 m!4871355))

(assert (=> d!1262070 d!1262108))

(declare-fun d!1262110 () Bool)

(declare-fun lt!1513716 () List!47458)

(assert (=> d!1262110 (= lt!1513716 (list!17226 x!743016))))

(assert (=> d!1262110 (= lt!1513716 (efficientList!566 (c!728085 x!743016) (efficientList$default$2!196 (c!728085 x!743016))))))

(assert (=> d!1262110 (= (efficientList!564 x!743016) lt!1513716)))

(declare-fun bs!602107 () Bool)

(assert (= bs!602107 d!1262110))

(assert (=> bs!602107 m!4871241))

(declare-fun m!4871357 () Bool)

(assert (=> bs!602107 m!4871357))

(assert (=> bs!602107 m!4871357))

(declare-fun m!4871359 () Bool)

(assert (=> bs!602107 m!4871359))

(assert (=> d!1262082 d!1262110))

(declare-fun d!1262112 () Bool)

(declare-fun lt!1513717 () List!47458)

(assert (=> d!1262112 (= lt!1513717 (list!17226 x!743017))))

(assert (=> d!1262112 (= lt!1513717 (efficientList!566 (c!728085 x!743017) (efficientList$default$2!196 (c!728085 x!743017))))))

(assert (=> d!1262112 (= (efficientList!564 x!743017) lt!1513717)))

(declare-fun bs!602108 () Bool)

(assert (= bs!602108 d!1262112))

(assert (=> bs!602108 m!4871243))

(declare-fun m!4871361 () Bool)

(assert (=> bs!602108 m!4871361))

(assert (=> bs!602108 m!4871361))

(declare-fun m!4871363 () Bool)

(assert (=> bs!602108 m!4871363))

(assert (=> d!1262080 d!1262112))

(declare-fun b!4275756 () Bool)

(declare-fun e!2654591 () List!47458)

(assert (=> b!4275756 (= e!2654591 Nil!47334)))

(declare-fun d!1262114 () Bool)

(declare-fun c!728095 () Bool)

(assert (=> d!1262114 (= c!728095 (is-Empty!14316 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(assert (=> d!1262114 (= (list!17228 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))) e!2654591)))

(declare-fun b!4275757 () Bool)

(declare-fun e!2654592 () List!47458)

(assert (=> b!4275757 (= e!2654591 e!2654592)))

(declare-fun c!728096 () Bool)

(assert (=> b!4275757 (= c!728096 (is-Leaf!22130 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(declare-fun b!4275759 () Bool)

(assert (=> b!4275759 (= e!2654592 (++!12087 (list!17228 (left!35239 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))) (list!17228 (right!35569 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))))

(declare-fun b!4275758 () Bool)

(assert (=> b!4275758 (= e!2654592 (list!17230 (xs!17622 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (= (and d!1262114 c!728095) b!4275756))

(assert (= (and d!1262114 (not c!728095)) b!4275757))

(assert (= (and b!4275757 c!728096) b!4275758))

(assert (= (and b!4275757 (not c!728096)) b!4275759))

(declare-fun m!4871365 () Bool)

(assert (=> b!4275759 m!4871365))

(declare-fun m!4871367 () Bool)

(assert (=> b!4275759 m!4871367))

(assert (=> b!4275759 m!4871365))

(assert (=> b!4275759 m!4871367))

(declare-fun m!4871369 () Bool)

(assert (=> b!4275759 m!4871369))

(declare-fun m!4871371 () Bool)

(assert (=> b!4275758 m!4871371))

(assert (=> d!1262076 d!1262114))

(declare-fun b!4275760 () Bool)

(declare-fun e!2654593 () List!47458)

(assert (=> b!4275760 (= e!2654593 Nil!47334)))

(declare-fun d!1262116 () Bool)

(declare-fun c!728097 () Bool)

(assert (=> d!1262116 (= c!728097 (is-Empty!14316 (c!728085 x!743015)))))

(assert (=> d!1262116 (= (list!17228 (c!728085 x!743015)) e!2654593)))

(declare-fun b!4275761 () Bool)

(declare-fun e!2654594 () List!47458)

(assert (=> b!4275761 (= e!2654593 e!2654594)))

(declare-fun c!728098 () Bool)

(assert (=> b!4275761 (= c!728098 (is-Leaf!22130 (c!728085 x!743015)))))

(declare-fun b!4275763 () Bool)

(assert (=> b!4275763 (= e!2654594 (++!12087 (list!17228 (left!35239 (c!728085 x!743015))) (list!17228 (right!35569 (c!728085 x!743015)))))))

(declare-fun b!4275762 () Bool)

(assert (=> b!4275762 (= e!2654594 (list!17230 (xs!17622 (c!728085 x!743015))))))

(assert (= (and d!1262116 c!728097) b!4275760))

(assert (= (and d!1262116 (not c!728097)) b!4275761))

(assert (= (and b!4275761 c!728098) b!4275762))

(assert (= (and b!4275761 (not c!728098)) b!4275763))

(declare-fun m!4871373 () Bool)

(assert (=> b!4275763 m!4871373))

(declare-fun m!4871375 () Bool)

(assert (=> b!4275763 m!4871375))

(assert (=> b!4275763 m!4871373))

(assert (=> b!4275763 m!4871375))

(declare-fun m!4871377 () Bool)

(assert (=> b!4275763 m!4871377))

(declare-fun m!4871379 () Bool)

(assert (=> b!4275762 m!4871379))

(assert (=> d!1262074 d!1262116))

(push 1)

(assert (not b!4275763))

(assert (not b!4275762))

(assert (not start!410516))

(assert (not bs!601985))

(assert (not b!4275676))

(assert (not d!1262104))

(assert (not b!4275755))

(assert (not b!4275751))

(assert (not b!4275677))

(assert (not d!1262112))

(assert (not b!4275758))

(assert (not b!4275666))

(assert (not b!4275678))

(assert (not b!4275754))

(assert (not b!4275759))

(assert (not d!1262106))

(assert (not b!4275750))

(assert (not d!1262110))

(assert (not b!4275675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!410516 d!1262076))

(declare-fun d!1262124 () Bool)

(declare-fun isBalanced!3860 (Conc!14316) Bool)

(assert (=> d!1262124 (= (inv!62591 x!743015) (isBalanced!3860 (c!728085 x!743015)))))

(declare-fun bs!602109 () Bool)

(assert (= bs!602109 d!1262124))

(declare-fun m!4871397 () Bool)

(assert (=> bs!602109 m!4871397))

(assert (=> start!410516 d!1262124))

(assert (=> start!410516 d!1262078))

(declare-fun d!1262126 () Bool)

(declare-fun choose!26071 (Int) Bool)

(assert (=> d!1262126 (= (Forall!1657 lambda!131268) (choose!26071 lambda!131268))))

(declare-fun bs!602110 () Bool)

(assert (= bs!602110 d!1262126))

(declare-fun m!4871399 () Bool)

(assert (=> bs!602110 m!4871399))

(assert (=> start!410516 d!1262126))

(declare-fun d!1262128 () Bool)

(declare-fun c!728114 () Bool)

(assert (=> d!1262128 (= c!728114 (is-DelimiterValue!16579 (toValue!19 thiss!2654 x!743015)))))

(declare-fun e!2654609 () BalanceConc!28142)

(assert (=> d!1262128 (= (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)) e!2654609)))

(declare-fun b!4275792 () Bool)

(declare-fun seqFromList!5886 (List!47458) BalanceConc!28142)

(assert (=> b!4275792 (= e!2654609 (seqFromList!5886 (value!250150 (toValue!19 thiss!2654 x!743015))))))

(declare-fun b!4275793 () Bool)

(assert (=> b!4275793 (= e!2654609 (BalanceConc!28143 Empty!14316))))

(assert (= (and d!1262128 c!728114) b!4275792))

(assert (= (and d!1262128 (not c!728114)) b!4275793))

(declare-fun m!4871433 () Bool)

(assert (=> b!4275792 m!4871433))

(assert (=> start!410516 d!1262128))

(assert (=> start!410516 d!1262074))

(declare-fun d!1262140 () Bool)

(declare-fun choose!26072 (Int) Bool)

(assert (=> d!1262140 (= (Forall2!1238 lambda!131271) (choose!26072 lambda!131271))))

(declare-fun bs!602115 () Bool)

(assert (= bs!602115 d!1262140))

(declare-fun m!4871435 () Bool)

(assert (=> bs!602115 m!4871435))

(assert (=> b!4275666 d!1262140))

(declare-fun d!1262142 () Bool)

(assert (=> d!1262142 (= (inv!62591 x!743017) (isBalanced!3860 (c!728085 x!743017)))))

(declare-fun bs!602116 () Bool)

(assert (= bs!602116 d!1262142))

(declare-fun m!4871437 () Bool)

(assert (=> bs!602116 m!4871437))

(assert (=> b!4275666 d!1262142))

(assert (=> b!4275666 d!1262070))

(declare-fun d!1262144 () Bool)

(assert (=> d!1262144 (= (inv!62591 x!743016) (isBalanced!3860 (c!728085 x!743016)))))

(declare-fun bs!602117 () Bool)

(assert (= bs!602117 d!1262144))

(declare-fun m!4871439 () Bool)

(assert (=> bs!602117 m!4871439))

(assert (=> b!4275666 d!1262144))

(declare-fun bs!602118 () Bool)

(declare-fun d!1262146 () Bool)

(assert (= bs!602118 (and d!1262146 start!410516)))

(declare-fun lambda!131292 () Int)

(assert (=> bs!602118 (not (= lambda!131292 lambda!131268))))

(assert (=> d!1262146 true))

(declare-fun order!24985 () Int)

(declare-fun order!24987 () Int)

(declare-fun dynLambda!20299 (Int Int) Int)

(declare-fun dynLambda!20300 (Int Int) Int)

(assert (=> d!1262146 (< (dynLambda!20299 order!24985 lambda!131269) (dynLambda!20300 order!24987 lambda!131292))))

(assert (=> d!1262146 true))

(declare-fun order!24989 () Int)

(declare-fun dynLambda!20301 (Int Int) Int)

(assert (=> d!1262146 (< (dynLambda!20301 order!24989 lambda!131270) (dynLambda!20300 order!24987 lambda!131292))))

(assert (=> d!1262146 (= (semiInverseModEq!3523 lambda!131269 lambda!131270) (Forall!1657 lambda!131292))))

(declare-fun bs!602119 () Bool)

(assert (= bs!602119 d!1262146))

(declare-fun m!4871441 () Bool)

(assert (=> bs!602119 m!4871441))

(assert (=> b!4275666 d!1262146))

(assert (=> b!4275666 d!1262126))

(assert (=> b!4275666 d!1262072))

(assert (=> d!1262112 d!1262072))

(declare-fun d!1262148 () Bool)

(declare-fun lt!1513737 () List!47458)

(assert (=> d!1262148 (= lt!1513737 (++!12087 (list!17228 (c!728085 x!743017)) (efficientList$default$2!196 (c!728085 x!743017))))))

(declare-fun e!2654618 () List!47458)

(assert (=> d!1262148 (= lt!1513737 e!2654618)))

(declare-fun c!728121 () Bool)

(assert (=> d!1262148 (= c!728121 (is-Empty!14316 (c!728085 x!743017)))))

(assert (=> d!1262148 (= (efficientList!566 (c!728085 x!743017) (efficientList$default$2!196 (c!728085 x!743017))) lt!1513737)))

(declare-fun bm!294227 () Bool)

(declare-fun c!728122 () Bool)

(declare-fun c!728123 () Bool)

(assert (=> bm!294227 (= c!728122 c!728123)))

(declare-fun call!294232 () List!47458)

(declare-fun lt!1513735 () List!47458)

(declare-fun e!2654617 () List!47458)

(assert (=> bm!294227 (= call!294232 (++!12087 e!2654617 (ite c!728123 (efficientList$default$2!196 (c!728085 x!743017)) lt!1513735)))))

(declare-fun b!4275810 () Bool)

(assert (=> b!4275810 (= e!2654618 (efficientList$default$2!196 (c!728085 x!743017)))))

(declare-fun b!4275811 () Bool)

(declare-fun e!2654616 () List!47458)

(assert (=> b!4275811 (= e!2654618 e!2654616)))

(assert (=> b!4275811 (= c!728123 (is-Leaf!22130 (c!728085 x!743017)))))

(declare-fun b!4275812 () Bool)

(declare-datatypes ((Unit!66281 0))(
  ( (Unit!66282) )
))
(declare-fun lt!1513738 () Unit!66281)

(declare-fun lt!1513734 () Unit!66281)

(assert (=> b!4275812 (= lt!1513738 lt!1513734)))

(declare-fun lt!1513736 () List!47458)

(assert (=> b!4275812 (= (++!12087 call!294232 (efficientList$default$2!196 (c!728085 x!743017))) (++!12087 lt!1513736 (++!12087 lt!1513735 (efficientList$default$2!196 (c!728085 x!743017)))))))

(declare-fun lemmaConcatAssociativity!2724 (List!47458 List!47458 List!47458) Unit!66281)

(assert (=> b!4275812 (= lt!1513734 (lemmaConcatAssociativity!2724 lt!1513736 lt!1513735 (efficientList$default$2!196 (c!728085 x!743017))))))

(assert (=> b!4275812 (= lt!1513735 (list!17228 (right!35569 (c!728085 x!743017))))))

(assert (=> b!4275812 (= lt!1513736 (list!17228 (left!35239 (c!728085 x!743017))))))

(assert (=> b!4275812 (= e!2654616 (efficientList!566 (left!35239 (c!728085 x!743017)) (efficientList!566 (right!35569 (c!728085 x!743017)) (efficientList$default$2!196 (c!728085 x!743017)))))))

(declare-fun b!4275813 () Bool)

(declare-fun efficientList!568 (IArray!28637) List!47458)

(assert (=> b!4275813 (= e!2654617 (efficientList!568 (xs!17622 (c!728085 x!743017))))))

(declare-fun b!4275814 () Bool)

(assert (=> b!4275814 (= e!2654616 call!294232)))

(declare-fun b!4275815 () Bool)

(assert (=> b!4275815 (= e!2654617 lt!1513736)))

(assert (= (and d!1262148 c!728121) b!4275810))

(assert (= (and d!1262148 (not c!728121)) b!4275811))

(assert (= (and b!4275811 c!728123) b!4275814))

(assert (= (and b!4275811 (not c!728123)) b!4275812))

(assert (= (or b!4275814 b!4275812) bm!294227))

(assert (= (and bm!294227 c!728122) b!4275813))

(assert (= (and bm!294227 (not c!728122)) b!4275815))

(assert (=> d!1262148 m!4871299))

(assert (=> d!1262148 m!4871299))

(assert (=> d!1262148 m!4871361))

(declare-fun m!4871443 () Bool)

(assert (=> d!1262148 m!4871443))

(declare-fun m!4871445 () Bool)

(assert (=> bm!294227 m!4871445))

(assert (=> b!4275812 m!4871361))

(declare-fun m!4871447 () Bool)

(assert (=> b!4275812 m!4871447))

(declare-fun m!4871449 () Bool)

(assert (=> b!4275812 m!4871449))

(declare-fun m!4871451 () Bool)

(assert (=> b!4275812 m!4871451))

(declare-fun m!4871453 () Bool)

(assert (=> b!4275812 m!4871453))

(declare-fun m!4871455 () Bool)

(assert (=> b!4275812 m!4871455))

(assert (=> b!4275812 m!4871333))

(assert (=> b!4275812 m!4871335))

(assert (=> b!4275812 m!4871361))

(assert (=> b!4275812 m!4871453))

(assert (=> b!4275812 m!4871361))

(assert (=> b!4275812 m!4871449))

(assert (=> b!4275812 m!4871361))

(declare-fun m!4871457 () Bool)

(assert (=> b!4275812 m!4871457))

(declare-fun m!4871459 () Bool)

(assert (=> b!4275813 m!4871459))

(assert (=> d!1262112 d!1262148))

(declare-fun d!1262150 () Bool)

(assert (=> d!1262150 (= (efficientList$default$2!196 (c!728085 x!743017)) Nil!47334)))

(assert (=> d!1262112 d!1262150))

(assert (=> d!1262104 d!1262076))

(declare-fun d!1262152 () Bool)

(declare-fun lt!1513742 () List!47458)

(assert (=> d!1262152 (= lt!1513742 (++!12087 (list!17228 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))) (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(declare-fun e!2654621 () List!47458)

(assert (=> d!1262152 (= lt!1513742 e!2654621)))

(declare-fun c!728124 () Bool)

(assert (=> d!1262152 (= c!728124 (is-Empty!14316 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(assert (=> d!1262152 (= (efficientList!566 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))) (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))) lt!1513742)))

(declare-fun bm!294228 () Bool)

(declare-fun c!728125 () Bool)

(declare-fun c!728126 () Bool)

(assert (=> bm!294228 (= c!728125 c!728126)))

(declare-fun call!294233 () List!47458)

(declare-fun lt!1513740 () List!47458)

(declare-fun e!2654620 () List!47458)

(assert (=> bm!294228 (= call!294233 (++!12087 e!2654620 (ite c!728126 (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))) lt!1513740)))))

(declare-fun b!4275816 () Bool)

(assert (=> b!4275816 (= e!2654621 (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(declare-fun b!4275817 () Bool)

(declare-fun e!2654619 () List!47458)

(assert (=> b!4275817 (= e!2654621 e!2654619)))

(assert (=> b!4275817 (= c!728126 (is-Leaf!22130 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))

(declare-fun b!4275818 () Bool)

(declare-fun lt!1513743 () Unit!66281)

(declare-fun lt!1513739 () Unit!66281)

(assert (=> b!4275818 (= lt!1513743 lt!1513739)))

(declare-fun lt!1513741 () List!47458)

(assert (=> b!4275818 (= (++!12087 call!294233 (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))) (++!12087 lt!1513741 (++!12087 lt!1513740 (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))))

(assert (=> b!4275818 (= lt!1513739 (lemmaConcatAssociativity!2724 lt!1513741 lt!1513740 (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (=> b!4275818 (= lt!1513740 (list!17228 (right!35569 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (=> b!4275818 (= lt!1513741 (list!17228 (left!35239 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(assert (=> b!4275818 (= e!2654619 (efficientList!566 (left!35239 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))) (efficientList!566 (right!35569 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))) (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))))))))

(declare-fun b!4275819 () Bool)

(assert (=> b!4275819 (= e!2654620 (efficientList!568 (xs!17622 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015))))))))

(declare-fun b!4275820 () Bool)

(assert (=> b!4275820 (= e!2654619 call!294233)))

(declare-fun b!4275821 () Bool)

(assert (=> b!4275821 (= e!2654620 lt!1513741)))

(assert (= (and d!1262152 c!728124) b!4275816))

(assert (= (and d!1262152 (not c!728124)) b!4275817))

(assert (= (and b!4275817 c!728126) b!4275820))

(assert (= (and b!4275817 (not c!728126)) b!4275818))

(assert (= (or b!4275820 b!4275818) bm!294228))

(assert (= (and bm!294228 c!728125) b!4275819))

(assert (= (and bm!294228 (not c!728125)) b!4275821))

(assert (=> d!1262152 m!4871303))

(assert (=> d!1262152 m!4871303))

(assert (=> d!1262152 m!4871341))

(declare-fun m!4871461 () Bool)

(assert (=> d!1262152 m!4871461))

(declare-fun m!4871463 () Bool)

(assert (=> bm!294228 m!4871463))

(assert (=> b!4275818 m!4871341))

(declare-fun m!4871465 () Bool)

(assert (=> b!4275818 m!4871465))

(declare-fun m!4871467 () Bool)

(assert (=> b!4275818 m!4871467))

(declare-fun m!4871469 () Bool)

(assert (=> b!4275818 m!4871469))

(declare-fun m!4871471 () Bool)

(assert (=> b!4275818 m!4871471))

(declare-fun m!4871473 () Bool)

(assert (=> b!4275818 m!4871473))

(assert (=> b!4275818 m!4871365))

(assert (=> b!4275818 m!4871367))

(assert (=> b!4275818 m!4871341))

(assert (=> b!4275818 m!4871471))

(assert (=> b!4275818 m!4871341))

(assert (=> b!4275818 m!4871467))

(assert (=> b!4275818 m!4871341))

(declare-fun m!4871475 () Bool)

(assert (=> b!4275818 m!4871475))

(declare-fun m!4871477 () Bool)

(assert (=> b!4275819 m!4871477))

(assert (=> d!1262104 d!1262152))

(declare-fun d!1262154 () Bool)

(assert (=> d!1262154 (= (efficientList$default$2!196 (c!728085 (toCharacters!12 thiss!2654 (toValue!19 thiss!2654 x!743015)))) Nil!47334)))

(assert (=> d!1262104 d!1262154))

(declare-fun d!1262156 () Bool)

(declare-fun c!728129 () Bool)

(assert (=> d!1262156 (= c!728129 (is-Node!14316 (c!728085 x!743016)))))

(declare-fun e!2654626 () Bool)

(assert (=> d!1262156 (= (inv!62590 (c!728085 x!743016)) e!2654626)))

(declare-fun b!4275828 () Bool)

(declare-fun inv!62594 (Conc!14316) Bool)

(assert (=> b!4275828 (= e!2654626 (inv!62594 (c!728085 x!743016)))))

(declare-fun b!4275829 () Bool)

(declare-fun e!2654627 () Bool)

(assert (=> b!4275829 (= e!2654626 e!2654627)))

(declare-fun res!1755830 () Bool)

(assert (=> b!4275829 (= res!1755830 (not (is-Leaf!22130 (c!728085 x!743016))))))

(assert (=> b!4275829 (=> res!1755830 e!2654627)))

(declare-fun b!4275830 () Bool)

(declare-fun inv!62595 (Conc!14316) Bool)

(assert (=> b!4275830 (= e!2654627 (inv!62595 (c!728085 x!743016)))))

(assert (= (and d!1262156 c!728129) b!4275828))

(assert (= (and d!1262156 (not c!728129)) b!4275829))

(assert (= (and b!4275829 (not res!1755830)) b!4275830))

(declare-fun m!4871479 () Bool)

(assert (=> b!4275828 m!4871479))

(declare-fun m!4871481 () Bool)

(assert (=> b!4275830 m!4871481))

(assert (=> b!4275677 d!1262156))

(declare-fun d!1262158 () Bool)

(declare-fun c!728130 () Bool)

(assert (=> d!1262158 (= c!728130 (is-Node!14316 (c!728085 x!743017)))))

(declare-fun e!2654628 () Bool)

(assert (=> d!1262158 (= (inv!62590 (c!728085 x!743017)) e!2654628)))

(declare-fun b!4275831 () Bool)

(assert (=> b!4275831 (= e!2654628 (inv!62594 (c!728085 x!743017)))))

(declare-fun b!4275832 () Bool)

(declare-fun e!2654629 () Bool)

(assert (=> b!4275832 (= e!2654628 e!2654629)))

(declare-fun res!1755831 () Bool)

(assert (=> b!4275832 (= res!1755831 (not (is-Leaf!22130 (c!728085 x!743017))))))

(assert (=> b!4275832 (=> res!1755831 e!2654629)))

(declare-fun b!4275833 () Bool)

(assert (=> b!4275833 (= e!2654629 (inv!62595 (c!728085 x!743017)))))

(assert (= (and d!1262158 c!728130) b!4275831))

(assert (= (and d!1262158 (not c!728130)) b!4275832))

(assert (= (and b!4275832 (not res!1755831)) b!4275833))

(declare-fun m!4871483 () Bool)

(assert (=> b!4275831 m!4871483))

(declare-fun m!4871485 () Bool)

(assert (=> b!4275833 m!4871485))

(assert (=> b!4275678 d!1262158))

(assert (=> b!4275676 d!1262082))

(assert (=> b!4275676 d!1262080))

(declare-fun d!1262160 () Bool)

(declare-fun c!728131 () Bool)

(assert (=> d!1262160 (= c!728131 (is-Node!14316 (c!728085 x!743015)))))

(declare-fun e!2654630 () Bool)

(assert (=> d!1262160 (= (inv!62590 (c!728085 x!743015)) e!2654630)))

(declare-fun b!4275834 () Bool)

(assert (=> b!4275834 (= e!2654630 (inv!62594 (c!728085 x!743015)))))

(declare-fun b!4275835 () Bool)

(declare-fun e!2654631 () Bool)

(assert (=> b!4275835 (= e!2654630 e!2654631)))

(declare-fun res!1755832 () Bool)

(assert (=> b!4275835 (= res!1755832 (not (is-Leaf!22130 (c!728085 x!743015))))))

(assert (=> b!4275835 (=> res!1755832 e!2654631)))

(declare-fun b!4275836 () Bool)

(assert (=> b!4275836 (= e!2654631 (inv!62595 (c!728085 x!743015)))))

(assert (= (and d!1262160 c!728131) b!4275834))

(assert (= (and d!1262160 (not c!728131)) b!4275835))

(assert (= (and b!4275835 (not res!1755832)) b!4275836))

(declare-fun m!4871487 () Bool)

(assert (=> b!4275834 m!4871487))

(declare-fun m!4871489 () Bool)

(assert (=> b!4275836 m!4871489))

(assert (=> b!4275675 d!1262160))

(assert (=> bs!601985 d!1262076))

(assert (=> bs!601985 d!1262128))

(assert (=> bs!601985 d!1262078))

(assert (=> bs!601985 d!1262074))

(assert (=> d!1262110 d!1262070))

(declare-fun d!1262162 () Bool)

(declare-fun lt!1513747 () List!47458)

(assert (=> d!1262162 (= lt!1513747 (++!12087 (list!17228 (c!728085 x!743016)) (efficientList$default$2!196 (c!728085 x!743016))))))

(declare-fun e!2654634 () List!47458)

(assert (=> d!1262162 (= lt!1513747 e!2654634)))

(declare-fun c!728132 () Bool)

(assert (=> d!1262162 (= c!728132 (is-Empty!14316 (c!728085 x!743016)))))

(assert (=> d!1262162 (= (efficientList!566 (c!728085 x!743016) (efficientList$default$2!196 (c!728085 x!743016))) lt!1513747)))

(declare-fun bm!294229 () Bool)

(declare-fun c!728133 () Bool)

(declare-fun c!728134 () Bool)

(assert (=> bm!294229 (= c!728133 c!728134)))

(declare-fun call!294234 () List!47458)

(declare-fun e!2654633 () List!47458)

(declare-fun lt!1513745 () List!47458)

(assert (=> bm!294229 (= call!294234 (++!12087 e!2654633 (ite c!728134 (efficientList$default$2!196 (c!728085 x!743016)) lt!1513745)))))

(declare-fun b!4275837 () Bool)

(assert (=> b!4275837 (= e!2654634 (efficientList$default$2!196 (c!728085 x!743016)))))

(declare-fun b!4275838 () Bool)

(declare-fun e!2654632 () List!47458)

(assert (=> b!4275838 (= e!2654634 e!2654632)))

(assert (=> b!4275838 (= c!728134 (is-Leaf!22130 (c!728085 x!743016)))))

(declare-fun b!4275839 () Bool)

(declare-fun lt!1513748 () Unit!66281)

(declare-fun lt!1513744 () Unit!66281)

(assert (=> b!4275839 (= lt!1513748 lt!1513744)))

(declare-fun lt!1513746 () List!47458)

(assert (=> b!4275839 (= (++!12087 call!294234 (efficientList$default$2!196 (c!728085 x!743016))) (++!12087 lt!1513746 (++!12087 lt!1513745 (efficientList$default$2!196 (c!728085 x!743016)))))))

(assert (=> b!4275839 (= lt!1513744 (lemmaConcatAssociativity!2724 lt!1513746 lt!1513745 (efficientList$default$2!196 (c!728085 x!743016))))))

(assert (=> b!4275839 (= lt!1513745 (list!17228 (right!35569 (c!728085 x!743016))))))

(assert (=> b!4275839 (= lt!1513746 (list!17228 (left!35239 (c!728085 x!743016))))))

(assert (=> b!4275839 (= e!2654632 (efficientList!566 (left!35239 (c!728085 x!743016)) (efficientList!566 (right!35569 (c!728085 x!743016)) (efficientList$default$2!196 (c!728085 x!743016)))))))

(declare-fun b!4275840 () Bool)

(assert (=> b!4275840 (= e!2654633 (efficientList!568 (xs!17622 (c!728085 x!743016))))))

(declare-fun b!4275841 () Bool)

(assert (=> b!4275841 (= e!2654632 call!294234)))

(declare-fun b!4275842 () Bool)

(assert (=> b!4275842 (= e!2654633 lt!1513746)))

(assert (= (and d!1262162 c!728132) b!4275837))

(assert (= (and d!1262162 (not c!728132)) b!4275838))

(assert (= (and b!4275838 c!728134) b!4275841))

(assert (= (and b!4275838 (not c!728134)) b!4275839))

(assert (= (or b!4275841 b!4275839) bm!294229))

(assert (= (and bm!294229 c!728133) b!4275840))

(assert (= (and bm!294229 (not c!728133)) b!4275842))

(assert (=> d!1262162 m!4871297))

(assert (=> d!1262162 m!4871297))

(assert (=> d!1262162 m!4871357))

(declare-fun m!4871491 () Bool)

(assert (=> d!1262162 m!4871491))

(declare-fun m!4871493 () Bool)

(assert (=> bm!294229 m!4871493))

(assert (=> b!4275839 m!4871357))

(declare-fun m!4871495 () Bool)

(assert (=> b!4275839 m!4871495))

(declare-fun m!4871497 () Bool)

(assert (=> b!4275839 m!4871497))

(declare-fun m!4871499 () Bool)

(assert (=> b!4275839 m!4871499))

(declare-fun m!4871501 () Bool)

(assert (=> b!4275839 m!4871501))

(declare-fun m!4871503 () Bool)

(assert (=> b!4275839 m!4871503))

(assert (=> b!4275839 m!4871349))

(assert (=> b!4275839 m!4871351))

(assert (=> b!4275839 m!4871357))

(assert (=> b!4275839 m!4871501))

(assert (=> b!4275839 m!4871357))

(assert (=> b!4275839 m!4871497))

(assert (=> b!4275839 m!4871357))

(declare-fun m!4871505 () Bool)

(assert (=> b!4275839 m!4871505))

(declare-fun m!4871507 () Bool)

(assert (=> b!4275840 m!4871507))

(assert (=> d!1262110 d!1262162))

(declare-fun d!1262164 () Bool)

(assert (=> d!1262164 (= (efficientList$default$2!196 (c!728085 x!743016)) Nil!47334)))

(assert (=> d!1262110 d!1262164))

(assert (=> d!1262106 d!1262074))

(declare-fun d!1262166 () Bool)

(declare-fun lt!1513752 () List!47458)

(assert (=> d!1262166 (= lt!1513752 (++!12087 (list!17228 (c!728085 x!743015)) (efficientList$default$2!196 (c!728085 x!743015))))))

(declare-fun e!2654637 () List!47458)

(assert (=> d!1262166 (= lt!1513752 e!2654637)))

(declare-fun c!728135 () Bool)

(assert (=> d!1262166 (= c!728135 (is-Empty!14316 (c!728085 x!743015)))))

(assert (=> d!1262166 (= (efficientList!566 (c!728085 x!743015) (efficientList$default$2!196 (c!728085 x!743015))) lt!1513752)))

(declare-fun bm!294230 () Bool)

(declare-fun c!728136 () Bool)

(declare-fun c!728137 () Bool)

(assert (=> bm!294230 (= c!728136 c!728137)))

(declare-fun lt!1513750 () List!47458)

(declare-fun call!294235 () List!47458)

(declare-fun e!2654636 () List!47458)

(assert (=> bm!294230 (= call!294235 (++!12087 e!2654636 (ite c!728137 (efficientList$default$2!196 (c!728085 x!743015)) lt!1513750)))))

(declare-fun b!4275843 () Bool)

(assert (=> b!4275843 (= e!2654637 (efficientList$default$2!196 (c!728085 x!743015)))))

(declare-fun b!4275844 () Bool)

(declare-fun e!2654635 () List!47458)

(assert (=> b!4275844 (= e!2654637 e!2654635)))

(assert (=> b!4275844 (= c!728137 (is-Leaf!22130 (c!728085 x!743015)))))

(declare-fun b!4275845 () Bool)

(declare-fun lt!1513753 () Unit!66281)

(declare-fun lt!1513749 () Unit!66281)

(assert (=> b!4275845 (= lt!1513753 lt!1513749)))

(declare-fun lt!1513751 () List!47458)

(assert (=> b!4275845 (= (++!12087 call!294235 (efficientList$default$2!196 (c!728085 x!743015))) (++!12087 lt!1513751 (++!12087 lt!1513750 (efficientList$default$2!196 (c!728085 x!743015)))))))

(assert (=> b!4275845 (= lt!1513749 (lemmaConcatAssociativity!2724 lt!1513751 lt!1513750 (efficientList$default$2!196 (c!728085 x!743015))))))

(assert (=> b!4275845 (= lt!1513750 (list!17228 (right!35569 (c!728085 x!743015))))))

(assert (=> b!4275845 (= lt!1513751 (list!17228 (left!35239 (c!728085 x!743015))))))

(assert (=> b!4275845 (= e!2654635 (efficientList!566 (left!35239 (c!728085 x!743015)) (efficientList!566 (right!35569 (c!728085 x!743015)) (efficientList$default$2!196 (c!728085 x!743015)))))))

(declare-fun b!4275846 () Bool)

(assert (=> b!4275846 (= e!2654636 (efficientList!568 (xs!17622 (c!728085 x!743015))))))

(declare-fun b!4275847 () Bool)

(assert (=> b!4275847 (= e!2654635 call!294235)))

(declare-fun b!4275848 () Bool)

(assert (=> b!4275848 (= e!2654636 lt!1513751)))

(assert (= (and d!1262166 c!728135) b!4275843))

(assert (= (and d!1262166 (not c!728135)) b!4275844))

(assert (= (and b!4275844 c!728137) b!4275847))

(assert (= (and b!4275844 (not c!728137)) b!4275845))

(assert (= (or b!4275847 b!4275845) bm!294230))

(assert (= (and bm!294230 c!728136) b!4275846))

(assert (= (and bm!294230 (not c!728136)) b!4275848))

(assert (=> d!1262166 m!4871301))

(assert (=> d!1262166 m!4871301))

(assert (=> d!1262166 m!4871345))

(declare-fun m!4871509 () Bool)

(assert (=> d!1262166 m!4871509))

(declare-fun m!4871511 () Bool)

(assert (=> bm!294230 m!4871511))

(assert (=> b!4275845 m!4871345))

(declare-fun m!4871513 () Bool)

(assert (=> b!4275845 m!4871513))

(declare-fun m!4871515 () Bool)

(assert (=> b!4275845 m!4871515))

(declare-fun m!4871517 () Bool)

(assert (=> b!4275845 m!4871517))

(declare-fun m!4871519 () Bool)

(assert (=> b!4275845 m!4871519))

(declare-fun m!4871521 () Bool)

(assert (=> b!4275845 m!4871521))

(assert (=> b!4275845 m!4871373))

(assert (=> b!4275845 m!4871375))

(assert (=> b!4275845 m!4871345))

(assert (=> b!4275845 m!4871519))

(assert (=> b!4275845 m!4871345))

(assert (=> b!4275845 m!4871515))

(assert (=> b!4275845 m!4871345))

(declare-fun m!4871523 () Bool)

(assert (=> b!4275845 m!4871523))

(declare-fun m!4871525 () Bool)

(assert (=> b!4275846 m!4871525))

(assert (=> d!1262106 d!1262166))

(declare-fun d!1262168 () Bool)

(assert (=> d!1262168 (= (efficientList$default$2!196 (c!728085 x!743015)) Nil!47334)))

(assert (=> d!1262106 d!1262168))

(declare-fun tp!1308524 () Bool)

(declare-fun b!4275855 () Bool)

(declare-fun tp!1308523 () Bool)

(declare-fun e!2654642 () Bool)

(assert (=> b!4275855 (= e!2654642 (and (inv!62590 (left!35239 (c!728085 x!743015))) tp!1308523 (inv!62590 (right!35569 (c!728085 x!743015))) tp!1308524))))

(declare-fun b!4275856 () Bool)

(declare-fun inv!62596 (IArray!28637) Bool)

(assert (=> b!4275856 (= e!2654642 (inv!62596 (xs!17622 (c!728085 x!743015))))))

(assert (=> b!4275675 (= tp!1308507 (and (inv!62590 (c!728085 x!743015)) e!2654642))))

(assert (= (and b!4275675 (is-Node!14316 (c!728085 x!743015))) b!4275855))

(assert (= (and b!4275675 (is-Leaf!22130 (c!728085 x!743015))) b!4275856))

(declare-fun m!4871527 () Bool)

(assert (=> b!4275855 m!4871527))

(declare-fun m!4871529 () Bool)

(assert (=> b!4275855 m!4871529))

(declare-fun m!4871531 () Bool)

(assert (=> b!4275856 m!4871531))

(assert (=> b!4275675 m!4871229))

(declare-fun e!2654644 () Bool)

(declare-fun tp!1308526 () Bool)

(declare-fun tp!1308525 () Bool)

(declare-fun b!4275857 () Bool)

(assert (=> b!4275857 (= e!2654644 (and (inv!62590 (left!35239 (c!728085 x!743016))) tp!1308525 (inv!62590 (right!35569 (c!728085 x!743016))) tp!1308526))))

(declare-fun b!4275858 () Bool)

(assert (=> b!4275858 (= e!2654644 (inv!62596 (xs!17622 (c!728085 x!743016))))))

(assert (=> b!4275677 (= tp!1308509 (and (inv!62590 (c!728085 x!743016)) e!2654644))))

(assert (= (and b!4275677 (is-Node!14316 (c!728085 x!743016))) b!4275857))

(assert (= (and b!4275677 (is-Leaf!22130 (c!728085 x!743016))) b!4275858))

(declare-fun m!4871533 () Bool)

(assert (=> b!4275857 m!4871533))

(declare-fun m!4871535 () Bool)

(assert (=> b!4275857 m!4871535))

(declare-fun m!4871537 () Bool)

(assert (=> b!4275858 m!4871537))

(assert (=> b!4275677 m!4871253))

(declare-fun b!4275859 () Bool)

(declare-fun tp!1308528 () Bool)

(declare-fun e!2654646 () Bool)

(declare-fun tp!1308527 () Bool)

(assert (=> b!4275859 (= e!2654646 (and (inv!62590 (left!35239 (c!728085 x!743017))) tp!1308527 (inv!62590 (right!35569 (c!728085 x!743017))) tp!1308528))))

(declare-fun b!4275860 () Bool)

(assert (=> b!4275860 (= e!2654646 (inv!62596 (xs!17622 (c!728085 x!743017))))))

(assert (=> b!4275678 (= tp!1308508 (and (inv!62590 (c!728085 x!743017)) e!2654646))))

(assert (= (and b!4275678 (is-Node!14316 (c!728085 x!743017))) b!4275859))

(assert (= (and b!4275678 (is-Leaf!22130 (c!728085 x!743017))) b!4275860))

(declare-fun m!4871539 () Bool)

(assert (=> b!4275859 m!4871539))

(declare-fun m!4871541 () Bool)

(assert (=> b!4275859 m!4871541))

(declare-fun m!4871543 () Bool)

(assert (=> b!4275860 m!4871543))

(assert (=> b!4275678 m!4871255))

(push 1)

(assert (not b!4275812))

(assert (not d!1262148))

(assert (not b!4275846))

(assert (not b!4275751))

(assert (not d!1262124))

(assert (not b!4275758))

(assert (not d!1262146))

(assert (not b!4275754))

(assert (not b!4275763))

(assert (not b!4275840))

(assert (not b!4275828))

(assert (not d!1262144))

(assert (not b!4275762))

(assert (not b!4275860))

(assert (not b!4275839))

(assert (not d!1262162))

(assert (not b!4275792))

(assert (not bm!294230))

(assert (not bm!294229))

(assert (not b!4275750))

(assert (not b!4275675))

(assert (not b!4275818))

(assert (not d!1262166))

(assert (not b!4275856))

(assert (not b!4275836))

(assert (not bm!294227))

(assert (not b!4275855))

(assert (not b!4275833))

(assert (not d!1262152))

(assert (not b!4275813))

(assert (not b!4275834))

(assert (not b!4275819))

(assert (not b!4275831))

(assert (not b!4275755))

(assert (not d!1262142))

(assert (not b!4275677))

(assert (not b!4275859))

(assert (not b!4275830))

(assert (not b!4275857))

(assert (not d!1262126))

(assert (not d!1262140))

(assert (not bm!294228))

(assert (not b!4275845))

(assert (not b!4275678))

(assert (not b!4275759))

(assert (not b!4275858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

