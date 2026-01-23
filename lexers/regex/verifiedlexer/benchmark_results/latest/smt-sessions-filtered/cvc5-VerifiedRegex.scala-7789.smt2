; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409266 () Bool)

(assert start!409266)

(assert (=> start!409266 true))

(declare-fun b!4269101 () Bool)

(assert (=> b!4269101 true))

(assert (=> b!4269101 true))

(assert (=> b!4269101 true))

(declare-fun b!4269110 () Bool)

(declare-fun e!2650556 () Bool)

(declare-datatypes ((List!47410 0))(
  ( (Nil!47286) (Cons!47286 (h!52706 (_ BitVec 16)) (t!353597 List!47410)) )
))
(declare-datatypes ((IArray!28541 0))(
  ( (IArray!28542 (innerList!14328 List!47410)) )
))
(declare-datatypes ((Conc!14268 0))(
  ( (Node!14268 (left!35095 Conc!14268) (right!35425 Conc!14268) (csize!28766 Int) (cheight!14479 Int)) (Leaf!22058 (xs!17574 IArray!28541) (csize!28767 Int)) (Empty!14268) )
))
(declare-datatypes ((BalanceConc!28046 0))(
  ( (BalanceConc!28047 (c!726145 Conc!14268)) )
))
(declare-fun x!739437 () BalanceConc!28046)

(declare-fun tp!1307767 () Bool)

(declare-fun inv!62299 (Conc!14268) Bool)

(assert (=> b!4269110 (= e!2650556 (and (inv!62299 (c!726145 x!739437)) tp!1307767))))

(declare-fun inst!1624 () Bool)

(declare-datatypes ((IdentifierValueInjection!32 0))(
  ( (IdentifierValueInjection!33) )
))
(declare-fun thiss!2252 () IdentifierValueInjection!32)

(declare-fun inv!62300 (BalanceConc!28046) Bool)

(declare-fun list!17115 (BalanceConc!28046) List!47410)

(declare-datatypes ((TokenValue!8241 0))(
  ( (FloatLiteralValue!16482 (text!58132 List!47410)) (TokenValueExt!8240 (__x!28687 Int)) (Broken!41205 (value!248864 List!47410)) (Object!8364) (End!8241) (Def!8241) (Underscore!8241) (Match!8241) (Else!8241) (Error!8241) (Case!8241) (If!8241) (Extends!8241) (Abstract!8241) (Class!8241) (Val!8241) (DelimiterValue!16482 (del!8301 List!47410)) (KeywordValue!8247 (value!248865 List!47410)) (CommentValue!16482 (value!248866 List!47410)) (WhitespaceValue!16482 (value!248867 List!47410)) (IndentationValue!8241 (value!248868 List!47410)) (String!55200) (Int32!8241) (Broken!41206 (value!248869 List!47410)) (Boolean!8242) (Unit!66187) (OperatorValue!8244 (op!8301 List!47410)) (IdentifierValue!16482 (value!248870 List!47410)) (IdentifierValue!16483 (value!248871 List!47410)) (WhitespaceValue!16483 (value!248872 List!47410)) (True!16482) (False!16482) (Broken!41207 (value!248873 List!47410)) (Broken!41208 (value!248874 List!47410)) (True!16483) (RightBrace!8241) (RightBracket!8241) (Colon!8241) (Null!8241) (Comma!8241) (LeftBracket!8241) (False!16483) (LeftBrace!8241) (ImaginaryLiteralValue!8241 (text!58133 List!47410)) (StringLiteralValue!24723 (value!248875 List!47410)) (EOFValue!8241 (value!248876 List!47410)) (IdentValue!8241 (value!248877 List!47410)) (DelimiterValue!16483 (value!248878 List!47410)) (DedentValue!8241 (value!248879 List!47410)) (NewLineValue!8241 (value!248880 List!47410)) (IntegerValue!24723 (value!248881 (_ BitVec 32)) (text!58134 List!47410)) (IntegerValue!24724 (value!248882 Int) (text!58135 List!47410)) (Times!8241) (Or!8241) (Equal!8241) (Minus!8241) (Broken!41209 (value!248883 List!47410)) (And!8241) (Div!8241) (LessEqual!8241) (Mod!8241) (Concat!21139) (Not!8241) (Plus!8241) (SpaceValue!8241 (value!248884 List!47410)) (IntegerValue!24725 (value!248885 Int) (text!58136 List!47410)) (StringLiteralValue!24724 (text!58137 List!47410)) (FloatLiteralValue!16483 (text!58138 List!47410)) (BytesLiteralValue!8241 (value!248886 List!47410)) (CommentValue!16483 (value!248887 List!47410)) (StringLiteralValue!24725 (value!248888 List!47410)) (ErrorTokenValue!8241 (msg!8302 List!47410)) )
))
(declare-fun toCharacters!6 (IdentifierValueInjection!32 TokenValue!8241) BalanceConc!28046)

(declare-fun toValue!13 (IdentifierValueInjection!32 BalanceConc!28046) TokenValue!8241)

(assert (=> start!409266 (= inst!1624 (=> (and (inv!62300 x!739437) e!2650556) (= (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (list!17115 x!739437))))))

(assert (= start!409266 b!4269110))

(declare-fun m!4861809 () Bool)

(assert (=> b!4269110 m!4861809))

(declare-fun m!4861811 () Bool)

(assert (=> start!409266 m!4861811))

(declare-fun m!4861813 () Bool)

(assert (=> start!409266 m!4861813))

(declare-fun m!4861815 () Bool)

(assert (=> start!409266 m!4861815))

(declare-fun m!4861817 () Bool)

(assert (=> start!409266 m!4861817))

(assert (=> start!409266 m!4861813))

(assert (=> start!409266 m!4861817))

(declare-fun m!4861819 () Bool)

(assert (=> start!409266 m!4861819))

(declare-fun res!1753863 () Bool)

(declare-fun e!2650559 () Bool)

(assert (=> b!4269101 (=> res!1753863 e!2650559)))

(declare-fun x!739438 () BalanceConc!28046)

(declare-fun x!739439 () BalanceConc!28046)

(assert (=> b!4269101 (= res!1753863 (not (= (list!17115 x!739438) (list!17115 x!739439))))))

(declare-fun inst!1625 () Bool)

(declare-fun e!2650558 () Bool)

(declare-fun e!2650557 () Bool)

(assert (=> b!4269101 (= inst!1625 (=> (and (inv!62300 x!739438) e!2650558 (inv!62300 x!739439) e!2650557) e!2650559))))

(declare-fun b!4269111 () Bool)

(assert (=> b!4269111 (= e!2650559 (= (toValue!13 thiss!2252 x!739438) (toValue!13 thiss!2252 x!739439)))))

(declare-fun b!4269112 () Bool)

(declare-fun tp!1307768 () Bool)

(assert (=> b!4269112 (= e!2650558 (and (inv!62299 (c!726145 x!739438)) tp!1307768))))

(declare-fun b!4269113 () Bool)

(declare-fun tp!1307769 () Bool)

(assert (=> b!4269113 (= e!2650557 (and (inv!62299 (c!726145 x!739439)) tp!1307769))))

(assert (= (and b!4269101 (not res!1753863)) b!4269111))

(assert (= b!4269101 b!4269112))

(assert (= b!4269101 b!4269113))

(declare-fun m!4861821 () Bool)

(assert (=> b!4269101 m!4861821))

(declare-fun m!4861823 () Bool)

(assert (=> b!4269101 m!4861823))

(declare-fun m!4861825 () Bool)

(assert (=> b!4269101 m!4861825))

(declare-fun m!4861827 () Bool)

(assert (=> b!4269101 m!4861827))

(declare-fun m!4861829 () Bool)

(assert (=> b!4269111 m!4861829))

(declare-fun m!4861831 () Bool)

(assert (=> b!4269111 m!4861831))

(declare-fun m!4861833 () Bool)

(assert (=> b!4269112 m!4861833))

(declare-fun m!4861835 () Bool)

(assert (=> b!4269113 m!4861835))

(declare-fun bs!599991 () Bool)

(declare-fun neg-inst!1624 () Bool)

(declare-fun s!239402 () Bool)

(assert (= bs!599991 (and neg-inst!1624 s!239402)))

(assert (=> bs!599991 (=> true (= (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (list!17115 x!739437)))))

(assert (=> m!4861819 m!4861817))

(assert (=> m!4861819 m!4861813))

(assert (=> m!4861819 m!4861815))

(assert (=> m!4861819 s!239402))

(assert (=> m!4861817 s!239402))

(declare-fun bs!599992 () Bool)

(assert (= bs!599992 (and neg-inst!1624 start!409266)))

(assert (=> bs!599992 (= true inst!1624)))

(declare-fun bs!599993 () Bool)

(declare-fun neg-inst!1625 () Bool)

(declare-fun s!239404 () Bool)

(assert (= bs!599993 (and neg-inst!1625 s!239404)))

(declare-fun res!1753864 () Bool)

(declare-fun e!2650560 () Bool)

(assert (=> bs!599993 (=> res!1753864 e!2650560)))

(assert (=> bs!599993 (= res!1753864 (not (= (list!17115 x!739438) (list!17115 x!739438))))))

(assert (=> bs!599993 (=> true e!2650560)))

(declare-fun b!4269114 () Bool)

(assert (=> b!4269114 (= e!2650560 (= (toValue!13 thiss!2252 x!739438) (toValue!13 thiss!2252 x!739438)))))

(assert (= (and bs!599993 (not res!1753864)) b!4269114))

(assert (=> m!4861829 m!4861821))

(assert (=> m!4861829 m!4861821))

(assert (=> m!4861829 s!239404))

(assert (=> m!4861829 s!239404))

(declare-fun bs!599994 () Bool)

(declare-fun s!239406 () Bool)

(assert (= bs!599994 (and neg-inst!1625 s!239406)))

(declare-fun res!1753865 () Bool)

(declare-fun e!2650561 () Bool)

(assert (=> bs!599994 (=> res!1753865 e!2650561)))

(assert (=> bs!599994 (= res!1753865 (not (= (list!17115 x!739438) (list!17115 x!739439))))))

(assert (=> bs!599994 (=> true e!2650561)))

(declare-fun b!4269115 () Bool)

(assert (=> b!4269115 (= e!2650561 (= (toValue!13 thiss!2252 x!739438) (toValue!13 thiss!2252 x!739439)))))

(assert (= (and bs!599994 (not res!1753865)) b!4269115))

(declare-fun bs!599995 () Bool)

(assert (= bs!599995 (and m!4861823 m!4861829)))

(assert (=> bs!599995 m!4861821))

(assert (=> bs!599995 m!4861823))

(assert (=> bs!599995 s!239406))

(declare-fun bs!599996 () Bool)

(declare-fun s!239408 () Bool)

(assert (= bs!599996 (and neg-inst!1625 s!239408)))

(declare-fun res!1753866 () Bool)

(declare-fun e!2650562 () Bool)

(assert (=> bs!599996 (=> res!1753866 e!2650562)))

(assert (=> bs!599996 (= res!1753866 (not (= (list!17115 x!739439) (list!17115 x!739439))))))

(assert (=> bs!599996 (=> true e!2650562)))

(declare-fun b!4269116 () Bool)

(assert (=> b!4269116 (= e!2650562 (= (toValue!13 thiss!2252 x!739439) (toValue!13 thiss!2252 x!739439)))))

(assert (= (and bs!599996 (not res!1753866)) b!4269116))

(assert (=> m!4861823 s!239408))

(declare-fun bs!599997 () Bool)

(declare-fun s!239410 () Bool)

(assert (= bs!599997 (and neg-inst!1625 s!239410)))

(declare-fun res!1753867 () Bool)

(declare-fun e!2650563 () Bool)

(assert (=> bs!599997 (=> res!1753867 e!2650563)))

(assert (=> bs!599997 (= res!1753867 (not (= (list!17115 x!739439) (list!17115 x!739438))))))

(assert (=> bs!599997 (=> true e!2650563)))

(declare-fun b!4269117 () Bool)

(assert (=> b!4269117 (= e!2650563 (= (toValue!13 thiss!2252 x!739439) (toValue!13 thiss!2252 x!739438)))))

(assert (= (and bs!599997 (not res!1753867)) b!4269117))

(assert (=> bs!599995 m!4861823))

(assert (=> bs!599995 m!4861821))

(assert (=> bs!599995 s!239410))

(assert (=> m!4861823 s!239408))

(declare-fun bs!599998 () Bool)

(declare-fun s!239412 () Bool)

(assert (= bs!599998 (and neg-inst!1625 s!239412)))

(declare-fun res!1753868 () Bool)

(declare-fun e!2650564 () Bool)

(assert (=> bs!599998 (=> res!1753868 e!2650564)))

(assert (=> bs!599998 (= res!1753868 (not (= (list!17115 x!739439) (list!17115 x!739437))))))

(assert (=> bs!599998 (=> true e!2650564)))

(declare-fun b!4269118 () Bool)

(assert (=> b!4269118 (= e!2650564 (= (toValue!13 thiss!2252 x!739439) (toValue!13 thiss!2252 x!739437)))))

(assert (= (and bs!599998 (not res!1753868)) b!4269118))

(declare-fun bs!599999 () Bool)

(assert (= bs!599999 (and m!4861819 m!4861823)))

(assert (=> bs!599999 m!4861823))

(assert (=> bs!599999 m!4861819))

(assert (=> bs!599999 s!239412))

(declare-fun bs!600000 () Bool)

(declare-fun s!239414 () Bool)

(assert (= bs!600000 (and neg-inst!1625 s!239414)))

(declare-fun res!1753869 () Bool)

(declare-fun e!2650565 () Bool)

(assert (=> bs!600000 (=> res!1753869 e!2650565)))

(assert (=> bs!600000 (= res!1753869 (not (= (list!17115 x!739438) (list!17115 x!739437))))))

(assert (=> bs!600000 (=> true e!2650565)))

(declare-fun b!4269119 () Bool)

(assert (=> b!4269119 (= e!2650565 (= (toValue!13 thiss!2252 x!739438) (toValue!13 thiss!2252 x!739437)))))

(assert (= (and bs!600000 (not res!1753869)) b!4269119))

(declare-fun bs!600001 () Bool)

(assert (= bs!600001 (and m!4861819 m!4861829)))

(assert (=> bs!600001 m!4861821))

(assert (=> bs!600001 m!4861819))

(assert (=> bs!600001 s!239414))

(declare-fun bs!600002 () Bool)

(declare-fun s!239416 () Bool)

(assert (= bs!600002 (and neg-inst!1625 s!239416)))

(declare-fun res!1753870 () Bool)

(declare-fun e!2650566 () Bool)

(assert (=> bs!600002 (=> res!1753870 e!2650566)))

(assert (=> bs!600002 (= res!1753870 (not (= (list!17115 x!739437) (list!17115 x!739437))))))

(assert (=> bs!600002 (=> true e!2650566)))

(declare-fun b!4269120 () Bool)

(assert (=> b!4269120 (= e!2650566 (= (toValue!13 thiss!2252 x!739437) (toValue!13 thiss!2252 x!739437)))))

(assert (= (and bs!600002 (not res!1753870)) b!4269120))

(assert (=> m!4861819 s!239416))

(declare-fun bs!600003 () Bool)

(declare-fun s!239418 () Bool)

(assert (= bs!600003 (and neg-inst!1625 s!239418)))

(declare-fun res!1753871 () Bool)

(declare-fun e!2650567 () Bool)

(assert (=> bs!600003 (=> res!1753871 e!2650567)))

(assert (=> bs!600003 (= res!1753871 (not (= (list!17115 x!739437) (list!17115 x!739439))))))

(assert (=> bs!600003 (=> true e!2650567)))

(declare-fun b!4269121 () Bool)

(assert (=> b!4269121 (= e!2650567 (= (toValue!13 thiss!2252 x!739437) (toValue!13 thiss!2252 x!739439)))))

(assert (= (and bs!600003 (not res!1753871)) b!4269121))

(assert (=> bs!599999 m!4861819))

(assert (=> bs!599999 m!4861823))

(assert (=> bs!599999 s!239418))

(declare-fun bs!600004 () Bool)

(declare-fun s!239420 () Bool)

(assert (= bs!600004 (and neg-inst!1625 s!239420)))

(declare-fun res!1753872 () Bool)

(declare-fun e!2650568 () Bool)

(assert (=> bs!600004 (=> res!1753872 e!2650568)))

(assert (=> bs!600004 (= res!1753872 (not (= (list!17115 x!739437) (list!17115 x!739438))))))

(assert (=> bs!600004 (=> true e!2650568)))

(declare-fun b!4269122 () Bool)

(assert (=> b!4269122 (= e!2650568 (= (toValue!13 thiss!2252 x!739437) (toValue!13 thiss!2252 x!739438)))))

(assert (= (and bs!600004 (not res!1753872)) b!4269122))

(assert (=> bs!600001 m!4861819))

(assert (=> bs!600001 m!4861821))

(assert (=> bs!600001 s!239420))

(assert (=> m!4861819 s!239416))

(declare-fun bs!600005 () Bool)

(assert (= bs!600005 (and m!4861821 m!4861823)))

(assert (=> bs!600005 s!239410))

(declare-fun bs!600006 () Bool)

(assert (= bs!600006 (and m!4861821 m!4861829)))

(assert (=> bs!600006 s!239404))

(declare-fun bs!600007 () Bool)

(assert (= bs!600007 (and m!4861821 m!4861819)))

(assert (=> bs!600007 s!239420))

(assert (=> m!4861821 s!239404))

(assert (=> bs!600005 s!239406))

(assert (=> bs!600006 s!239404))

(assert (=> bs!600007 s!239414))

(assert (=> m!4861821 s!239404))

(declare-fun bs!600008 () Bool)

(assert (= bs!600008 (and m!4861831 m!4861823)))

(assert (=> bs!600008 s!239408))

(declare-fun bs!600009 () Bool)

(assert (= bs!600009 (and m!4861831 m!4861829 m!4861821)))

(assert (=> bs!600009 s!239406))

(declare-fun bs!600010 () Bool)

(assert (= bs!600010 (and m!4861831 m!4861819)))

(assert (=> bs!600010 s!239418))

(assert (=> m!4861831 s!239408))

(assert (=> bs!600008 s!239408))

(assert (=> bs!600009 s!239410))

(assert (=> bs!600010 s!239412))

(assert (=> m!4861831 s!239408))

(declare-fun bs!600011 () Bool)

(assert (= bs!600011 (and m!4861817 m!4861823 m!4861831)))

(assert (=> bs!600011 s!239412))

(declare-fun bs!600012 () Bool)

(assert (= bs!600012 (and m!4861817 m!4861829 m!4861821)))

(assert (=> bs!600012 s!239414))

(declare-fun bs!600013 () Bool)

(assert (= bs!600013 (and m!4861817 m!4861819)))

(assert (=> bs!600013 s!239416))

(assert (=> m!4861817 s!239416))

(assert (=> bs!600011 s!239418))

(assert (=> bs!600012 s!239420))

(assert (=> bs!600013 s!239416))

(assert (=> m!4861817 s!239416))

(declare-fun bs!600014 () Bool)

(declare-fun s!239422 () Bool)

(assert (= bs!600014 (and neg-inst!1625 s!239422)))

(declare-fun res!1753873 () Bool)

(declare-fun e!2650569 () Bool)

(assert (=> bs!600014 (=> res!1753873 e!2650569)))

(assert (=> bs!600014 (= res!1753873 (not (= (list!17115 x!739439) (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (=> bs!600014 (=> true e!2650569)))

(declare-fun b!4269123 () Bool)

(assert (=> b!4269123 (= e!2650569 (= (toValue!13 thiss!2252 x!739439) (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(assert (= (and bs!600014 (not res!1753873)) b!4269123))

(declare-fun bs!600015 () Bool)

(assert (= bs!600015 (and m!4861815 m!4861823 m!4861831)))

(assert (=> bs!600015 m!4861823))

(assert (=> bs!600015 m!4861815))

(assert (=> bs!600015 s!239422))

(declare-fun bs!600016 () Bool)

(declare-fun s!239424 () Bool)

(assert (= bs!600016 (and neg-inst!1625 s!239424)))

(declare-fun res!1753874 () Bool)

(declare-fun e!2650570 () Bool)

(assert (=> bs!600016 (=> res!1753874 e!2650570)))

(assert (=> bs!600016 (= res!1753874 (not (= (list!17115 x!739438) (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (=> bs!600016 (=> true e!2650570)))

(declare-fun b!4269124 () Bool)

(assert (=> b!4269124 (= e!2650570 (= (toValue!13 thiss!2252 x!739438) (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(assert (= (and bs!600016 (not res!1753874)) b!4269124))

(declare-fun bs!600017 () Bool)

(assert (= bs!600017 (and m!4861815 m!4861829 m!4861821)))

(assert (=> bs!600017 m!4861821))

(assert (=> bs!600017 m!4861815))

(assert (=> bs!600017 s!239424))

(declare-fun bs!600018 () Bool)

(declare-fun s!239426 () Bool)

(assert (= bs!600018 (and neg-inst!1625 s!239426)))

(declare-fun res!1753875 () Bool)

(declare-fun e!2650571 () Bool)

(assert (=> bs!600018 (=> res!1753875 e!2650571)))

(assert (=> bs!600018 (= res!1753875 (not (= (list!17115 x!739437) (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (=> bs!600018 (=> true e!2650571)))

(declare-fun b!4269125 () Bool)

(assert (=> b!4269125 (= e!2650571 (= (toValue!13 thiss!2252 x!739437) (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(assert (= (and bs!600018 (not res!1753875)) b!4269125))

(declare-fun bs!600019 () Bool)

(assert (= bs!600019 (and m!4861815 m!4861819 m!4861817)))

(assert (=> bs!600019 m!4861819))

(assert (=> bs!600019 m!4861815))

(assert (=> bs!600019 s!239426))

(declare-fun bs!600020 () Bool)

(declare-fun s!239428 () Bool)

(assert (= bs!600020 (and neg-inst!1625 s!239428)))

(declare-fun res!1753876 () Bool)

(declare-fun e!2650572 () Bool)

(assert (=> bs!600020 (=> res!1753876 e!2650572)))

(assert (=> bs!600020 (= res!1753876 (not (= (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (=> bs!600020 (=> true e!2650572)))

(declare-fun b!4269126 () Bool)

(assert (=> b!4269126 (= e!2650572 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(assert (= (and bs!600020 (not res!1753876)) b!4269126))

(assert (=> m!4861815 s!239428))

(declare-fun bs!600021 () Bool)

(declare-fun s!239430 () Bool)

(assert (= bs!600021 (and neg-inst!1625 s!239430)))

(declare-fun res!1753877 () Bool)

(declare-fun e!2650573 () Bool)

(assert (=> bs!600021 (=> res!1753877 e!2650573)))

(assert (=> bs!600021 (= res!1753877 (not (= (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (list!17115 x!739439))))))

(assert (=> bs!600021 (=> true e!2650573)))

(declare-fun b!4269127 () Bool)

(assert (=> b!4269127 (= e!2650573 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (toValue!13 thiss!2252 x!739439)))))

(assert (= (and bs!600021 (not res!1753877)) b!4269127))

(assert (=> bs!600015 m!4861815))

(assert (=> bs!600015 m!4861823))

(assert (=> bs!600015 s!239430))

(declare-fun bs!600022 () Bool)

(declare-fun s!239432 () Bool)

(assert (= bs!600022 (and neg-inst!1625 s!239432)))

(declare-fun res!1753878 () Bool)

(declare-fun e!2650574 () Bool)

(assert (=> bs!600022 (=> res!1753878 e!2650574)))

(assert (=> bs!600022 (= res!1753878 (not (= (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (list!17115 x!739438))))))

(assert (=> bs!600022 (=> true e!2650574)))

(declare-fun b!4269128 () Bool)

(assert (=> b!4269128 (= e!2650574 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (toValue!13 thiss!2252 x!739438)))))

(assert (= (and bs!600022 (not res!1753878)) b!4269128))

(assert (=> bs!600017 m!4861815))

(assert (=> bs!600017 m!4861821))

(assert (=> bs!600017 s!239432))

(declare-fun bs!600023 () Bool)

(declare-fun s!239434 () Bool)

(assert (= bs!600023 (and neg-inst!1625 s!239434)))

(declare-fun res!1753879 () Bool)

(declare-fun e!2650575 () Bool)

(assert (=> bs!600023 (=> res!1753879 e!2650575)))

(assert (=> bs!600023 (= res!1753879 (not (= (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (list!17115 x!739437))))))

(assert (=> bs!600023 (=> true e!2650575)))

(declare-fun b!4269129 () Bool)

(assert (=> b!4269129 (= e!2650575 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (toValue!13 thiss!2252 x!739437)))))

(assert (= (and bs!600023 (not res!1753879)) b!4269129))

(assert (=> bs!600019 m!4861815))

(assert (=> bs!600019 m!4861819))

(assert (=> bs!600019 s!239434))

(assert (=> m!4861815 s!239428))

(declare-fun bs!600024 () Bool)

(assert (= bs!600024 (and neg-inst!1625 b!4269101)))

(assert (=> bs!600024 (= true inst!1625)))

(declare-fun res!1753862 () Bool)

(declare-fun e!2650555 () Bool)

(assert (=> start!409266 (=> res!1753862 e!2650555)))

(declare-fun lambda!130554 () Int)

(declare-fun Forall!1621 (Int) Bool)

(assert (=> start!409266 (= res!1753862 (not (Forall!1621 lambda!130554)))))

(assert (=> start!409266 (= (Forall!1621 lambda!130554) inst!1624)))

(assert (=> start!409266 (not e!2650555)))

(assert (=> start!409266 true))

(declare-fun lambda!130557 () Int)

(declare-fun Forall2!1214 (Int) Bool)

(assert (=> b!4269101 (= e!2650555 (Forall2!1214 lambda!130557))))

(assert (=> b!4269101 (= (Forall2!1214 lambda!130557) inst!1625)))

(declare-fun lambda!130555 () Int)

(declare-fun lambda!130556 () Int)

(declare-fun semiInverseModEq!3499 (Int Int) Bool)

(assert (=> b!4269101 (= (semiInverseModEq!3499 lambda!130555 lambda!130556) (Forall!1621 lambda!130554))))

(assert (= neg-inst!1624 inst!1624))

(assert (= (and start!409266 (not res!1753862)) b!4269101))

(assert (= neg-inst!1625 inst!1625))

(declare-fun m!4861837 () Bool)

(assert (=> start!409266 m!4861837))

(assert (=> start!409266 m!4861837))

(declare-fun m!4861839 () Bool)

(assert (=> b!4269101 m!4861839))

(assert (=> b!4269101 m!4861839))

(declare-fun m!4861841 () Bool)

(assert (=> b!4269101 m!4861841))

(assert (=> b!4269101 m!4861837))

(push 1)

(assert (not b!4269123))

(assert (not bs!599998))

(assert (not bs!599997))

(assert (not bs!599994))

(assert (not bs!599991))

(assert (not bs!600002))

(assert (not bs!600021))

(assert (not bs!599993))

(assert (not b!4269129))

(assert (not b!4269117))

(assert (not bs!599996))

(assert (not b!4269124))

(assert (not b!4269114))

(assert (not bs!600020))

(assert (not b!4269110))

(assert (not bs!600018))

(assert (not bs!600014))

(assert (not b!4269121))

(assert (not bs!600000))

(assert (not b!4269122))

(assert (not b!4269126))

(assert (not b!4269115))

(assert (not bs!600004))

(assert (not bs!600023))

(assert (not bs!600022))

(assert (not b!4269119))

(assert (not b!4269127))

(assert (not b!4269120))

(assert (not b!4269116))

(assert (not bs!600003))

(assert (not b!4269113))

(assert (not b!4269118))

(assert (not start!409266))

(assert (not b!4269101))

(assert (not b!4269125))

(assert (not b!4269128))

(assert (not b!4269112))

(assert (not bs!600016))

(assert (not b!4269111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258864 () Bool)

(declare-fun efficientList!459 (BalanceConc!28046) List!47410)

(assert (=> d!1258864 (= (toValue!13 thiss!2252 x!739437) (IdentifierValue!16483 (efficientList!459 x!739437)))))

(declare-fun bs!600060 () Bool)

(assert (= bs!600060 d!1258864))

(declare-fun m!4861877 () Bool)

(assert (=> bs!600060 m!4861877))

(assert (=> b!4269122 d!1258864))

(declare-fun d!1258866 () Bool)

(assert (=> d!1258866 (= (toValue!13 thiss!2252 x!739438) (IdentifierValue!16483 (efficientList!459 x!739438)))))

(declare-fun bs!600061 () Bool)

(assert (= bs!600061 d!1258866))

(declare-fun m!4861879 () Bool)

(assert (=> bs!600061 m!4861879))

(assert (=> b!4269122 d!1258866))

(assert (=> b!4269124 d!1258866))

(declare-fun d!1258868 () Bool)

(assert (=> d!1258868 (= (toValue!13 thiss!2252 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (IdentifierValue!16483 (efficientList!459 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(declare-fun bs!600062 () Bool)

(assert (= bs!600062 d!1258868))

(assert (=> bs!600062 m!4861813))

(declare-fun m!4861881 () Bool)

(assert (=> bs!600062 m!4861881))

(assert (=> b!4269124 d!1258868))

(declare-fun d!1258870 () Bool)

(declare-fun list!17117 (Conc!14268) List!47410)

(assert (=> d!1258870 (= (list!17115 x!739439) (list!17117 (c!726145 x!739439)))))

(declare-fun bs!600063 () Bool)

(assert (= bs!600063 d!1258870))

(declare-fun m!4861883 () Bool)

(assert (=> bs!600063 m!4861883))

(assert (=> bs!599996 d!1258870))

(declare-fun d!1258872 () Bool)

(assert (=> d!1258872 (= (list!17115 x!739437) (list!17117 (c!726145 x!739437)))))

(declare-fun bs!600064 () Bool)

(assert (= bs!600064 d!1258872))

(declare-fun m!4861885 () Bool)

(assert (=> bs!600064 m!4861885))

(assert (=> bs!600004 d!1258872))

(declare-fun d!1258874 () Bool)

(assert (=> d!1258874 (= (list!17115 x!739438) (list!17117 (c!726145 x!739438)))))

(declare-fun bs!600065 () Bool)

(assert (= bs!600065 d!1258874))

(declare-fun m!4861887 () Bool)

(assert (=> bs!600065 m!4861887))

(assert (=> bs!600004 d!1258874))

(assert (=> b!4269115 d!1258866))

(declare-fun d!1258876 () Bool)

(assert (=> d!1258876 (= (toValue!13 thiss!2252 x!739439) (IdentifierValue!16483 (efficientList!459 x!739439)))))

(declare-fun bs!600066 () Bool)

(assert (= bs!600066 d!1258876))

(declare-fun m!4861889 () Bool)

(assert (=> bs!600066 m!4861889))

(assert (=> b!4269115 d!1258876))

(assert (=> bs!600016 d!1258874))

(declare-fun d!1258878 () Bool)

(assert (=> d!1258878 (= (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (list!17117 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(declare-fun bs!600067 () Bool)

(assert (= bs!600067 d!1258878))

(declare-fun m!4861891 () Bool)

(assert (=> bs!600067 m!4861891))

(assert (=> bs!600016 d!1258878))

(assert (=> bs!600000 d!1258874))

(assert (=> bs!600000 d!1258872))

(assert (=> b!4269127 d!1258868))

(assert (=> b!4269127 d!1258876))

(assert (=> b!4269128 d!1258868))

(assert (=> b!4269128 d!1258866))

(assert (=> bs!600002 d!1258872))

(assert (=> b!4269119 d!1258866))

(assert (=> b!4269119 d!1258864))

(assert (=> bs!600022 d!1258878))

(assert (=> bs!600022 d!1258874))

(assert (=> b!4269116 d!1258876))

(assert (=> bs!600018 d!1258872))

(assert (=> bs!600018 d!1258878))

(assert (=> b!4269117 d!1258876))

(assert (=> b!4269117 d!1258866))

(assert (=> b!4269129 d!1258868))

(assert (=> b!4269129 d!1258864))

(assert (=> bs!600014 d!1258870))

(assert (=> bs!600014 d!1258878))

(assert (=> bs!600020 d!1258878))

(assert (=> bs!600003 d!1258872))

(assert (=> bs!600003 d!1258870))

(assert (=> bs!599997 d!1258870))

(assert (=> bs!599997 d!1258874))

(assert (=> b!4269125 d!1258864))

(assert (=> b!4269125 d!1258868))

(assert (=> bs!600023 d!1258878))

(assert (=> bs!600023 d!1258872))

(assert (=> b!4269120 d!1258864))

(assert (=> bs!599993 d!1258874))

(assert (=> bs!599994 d!1258874))

(assert (=> bs!599994 d!1258870))

(assert (=> b!4269118 d!1258876))

(assert (=> b!4269118 d!1258864))

(assert (=> bs!600021 d!1258878))

(assert (=> bs!600021 d!1258870))

(assert (=> b!4269114 d!1258866))

(assert (=> bs!599998 d!1258870))

(assert (=> bs!599998 d!1258872))

(assert (=> b!4269126 d!1258868))

(assert (=> b!4269121 d!1258864))

(assert (=> b!4269121 d!1258876))

(assert (=> b!4269123 d!1258876))

(assert (=> b!4269123 d!1258868))

(declare-fun bs!600068 () Bool)

(assert (= bs!600068 (and m!4861829 b!4269114)))

(assert (=> bs!600068 m!4861829))

(assert (=> bs!600068 m!4861829))

(declare-fun bs!600069 () Bool)

(assert (= bs!600069 (and m!4861823 m!4861829 b!4269115)))

(assert (=> bs!600069 m!4861829))

(assert (=> bs!600069 m!4861831))

(declare-fun bs!600070 () Bool)

(assert (= bs!600070 (and m!4861823 b!4269116)))

(assert (=> bs!600070 m!4861831))

(assert (=> bs!600070 m!4861831))

(declare-fun bs!600071 () Bool)

(assert (= bs!600071 (and m!4861823 m!4861829 b!4269117)))

(assert (=> bs!600071 m!4861831))

(assert (=> bs!600071 m!4861829))

(declare-fun bs!600072 () Bool)

(assert (= bs!600072 (and m!4861819 m!4861823 b!4269118)))

(assert (=> bs!600072 m!4861831))

(assert (=> bs!600072 m!4861817))

(declare-fun bs!600073 () Bool)

(assert (= bs!600073 (and m!4861819 m!4861829 b!4269119)))

(assert (=> bs!600073 m!4861829))

(assert (=> bs!600073 m!4861817))

(declare-fun bs!600074 () Bool)

(assert (= bs!600074 (and m!4861819 b!4269120)))

(assert (=> bs!600074 m!4861817))

(assert (=> bs!600074 m!4861817))

(declare-fun bs!600075 () Bool)

(assert (= bs!600075 (and m!4861819 m!4861823 b!4269121)))

(assert (=> bs!600075 m!4861817))

(assert (=> bs!600075 m!4861831))

(declare-fun bs!600076 () Bool)

(assert (= bs!600076 (and m!4861819 m!4861829 b!4269122)))

(assert (=> bs!600076 m!4861817))

(assert (=> bs!600076 m!4861829))

(declare-fun bs!600077 () Bool)

(assert (= bs!600077 (and m!4861815 m!4861823 m!4861831 b!4269123)))

(assert (=> bs!600077 m!4861831))

(declare-fun m!4861893 () Bool)

(assert (=> bs!600077 m!4861893))

(declare-fun bs!600078 () Bool)

(assert (= bs!600078 (and m!4861815 m!4861829 m!4861821 b!4269124)))

(assert (=> bs!600078 m!4861829))

(assert (=> bs!600078 m!4861893))

(declare-fun bs!600079 () Bool)

(assert (= bs!600079 (and m!4861815 m!4861819 m!4861817 b!4269125)))

(assert (=> bs!600079 m!4861817))

(assert (=> bs!600079 m!4861893))

(declare-fun bs!600080 () Bool)

(assert (= bs!600080 (and m!4861815 b!4269126)))

(assert (=> bs!600080 m!4861893))

(assert (=> bs!600080 m!4861893))

(declare-fun bs!600081 () Bool)

(assert (= bs!600081 (and m!4861815 m!4861823 m!4861831 b!4269127)))

(assert (=> bs!600081 m!4861893))

(assert (=> bs!600081 m!4861831))

(declare-fun bs!600082 () Bool)

(assert (= bs!600082 (and m!4861815 m!4861829 m!4861821 b!4269128)))

(assert (=> bs!600082 m!4861893))

(assert (=> bs!600082 m!4861829))

(declare-fun bs!600083 () Bool)

(assert (= bs!600083 (and m!4861815 m!4861819 m!4861817 b!4269129)))

(assert (=> bs!600083 m!4861893))

(assert (=> bs!600083 m!4861817))

(push 1)

(assert (not d!1258872))

(assert (not d!1258878))

(assert (not d!1258866))

(assert (not b!4269110))

(assert (not d!1258870))

(assert (not bs!599991))

(assert (not b!4269113))

(assert (not start!409266))

(assert (not b!4269101))

(assert (not d!1258864))

(assert (not b!4269111))

(assert (not d!1258868))

(assert (not d!1258876))

(assert (not b!4269112))

(assert (not d!1258874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4269183 () Bool)

(declare-fun e!2650617 () List!47410)

(assert (=> b!4269183 (= e!2650617 Nil!47286)))

(declare-fun d!1258896 () Bool)

(declare-fun c!726151 () Bool)

(assert (=> d!1258896 (= c!726151 (is-Empty!14268 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(assert (=> d!1258896 (= (list!17117 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))) e!2650617)))

(declare-fun b!4269186 () Bool)

(declare-fun e!2650618 () List!47410)

(declare-fun ++!12060 (List!47410 List!47410) List!47410)

(assert (=> b!4269186 (= e!2650618 (++!12060 (list!17117 (left!35095 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))) (list!17117 (right!35425 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))))

(declare-fun b!4269184 () Bool)

(assert (=> b!4269184 (= e!2650617 e!2650618)))

(declare-fun c!726152 () Bool)

(assert (=> b!4269184 (= c!726152 (is-Leaf!22058 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(declare-fun b!4269185 () Bool)

(declare-fun list!17119 (IArray!28541) List!47410)

(assert (=> b!4269185 (= e!2650618 (list!17119 (xs!17574 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (= (and d!1258896 c!726151) b!4269183))

(assert (= (and d!1258896 (not c!726151)) b!4269184))

(assert (= (and b!4269184 c!726152) b!4269185))

(assert (= (and b!4269184 (not c!726152)) b!4269186))

(declare-fun m!4861913 () Bool)

(assert (=> b!4269186 m!4861913))

(declare-fun m!4861915 () Bool)

(assert (=> b!4269186 m!4861915))

(assert (=> b!4269186 m!4861913))

(assert (=> b!4269186 m!4861915))

(declare-fun m!4861917 () Bool)

(assert (=> b!4269186 m!4861917))

(declare-fun m!4861919 () Bool)

(assert (=> b!4269185 m!4861919))

(assert (=> d!1258878 d!1258896))

(declare-fun d!1258898 () Bool)

(declare-fun lt!1512379 () List!47410)

(assert (=> d!1258898 (= lt!1512379 (list!17115 x!739438))))

(declare-fun efficientList!461 (Conc!14268 List!47410) List!47410)

(declare-fun efficientList$default$2!159 (Conc!14268) List!47410)

(assert (=> d!1258898 (= lt!1512379 (efficientList!461 (c!726145 x!739438) (efficientList$default$2!159 (c!726145 x!739438))))))

(assert (=> d!1258898 (= (efficientList!459 x!739438) lt!1512379)))

(declare-fun bs!600108 () Bool)

(assert (= bs!600108 d!1258898))

(assert (=> bs!600108 m!4861821))

(declare-fun m!4861921 () Bool)

(assert (=> bs!600108 m!4861921))

(assert (=> bs!600108 m!4861921))

(declare-fun m!4861923 () Bool)

(assert (=> bs!600108 m!4861923))

(assert (=> d!1258866 d!1258898))

(declare-fun b!4269187 () Bool)

(declare-fun e!2650619 () List!47410)

(assert (=> b!4269187 (= e!2650619 Nil!47286)))

(declare-fun d!1258900 () Bool)

(declare-fun c!726153 () Bool)

(assert (=> d!1258900 (= c!726153 (is-Empty!14268 (c!726145 x!739437)))))

(assert (=> d!1258900 (= (list!17117 (c!726145 x!739437)) e!2650619)))

(declare-fun b!4269190 () Bool)

(declare-fun e!2650620 () List!47410)

(assert (=> b!4269190 (= e!2650620 (++!12060 (list!17117 (left!35095 (c!726145 x!739437))) (list!17117 (right!35425 (c!726145 x!739437)))))))

(declare-fun b!4269188 () Bool)

(assert (=> b!4269188 (= e!2650619 e!2650620)))

(declare-fun c!726154 () Bool)

(assert (=> b!4269188 (= c!726154 (is-Leaf!22058 (c!726145 x!739437)))))

(declare-fun b!4269189 () Bool)

(assert (=> b!4269189 (= e!2650620 (list!17119 (xs!17574 (c!726145 x!739437))))))

(assert (= (and d!1258900 c!726153) b!4269187))

(assert (= (and d!1258900 (not c!726153)) b!4269188))

(assert (= (and b!4269188 c!726154) b!4269189))

(assert (= (and b!4269188 (not c!726154)) b!4269190))

(declare-fun m!4861925 () Bool)

(assert (=> b!4269190 m!4861925))

(declare-fun m!4861927 () Bool)

(assert (=> b!4269190 m!4861927))

(assert (=> b!4269190 m!4861925))

(assert (=> b!4269190 m!4861927))

(declare-fun m!4861929 () Bool)

(assert (=> b!4269190 m!4861929))

(declare-fun m!4861931 () Bool)

(assert (=> b!4269189 m!4861931))

(assert (=> d!1258872 d!1258900))

(declare-fun d!1258902 () Bool)

(declare-fun lt!1512380 () List!47410)

(assert (=> d!1258902 (= lt!1512380 (list!17115 x!739437))))

(assert (=> d!1258902 (= lt!1512380 (efficientList!461 (c!726145 x!739437) (efficientList$default$2!159 (c!726145 x!739437))))))

(assert (=> d!1258902 (= (efficientList!459 x!739437) lt!1512380)))

(declare-fun bs!600109 () Bool)

(assert (= bs!600109 d!1258902))

(assert (=> bs!600109 m!4861819))

(declare-fun m!4861933 () Bool)

(assert (=> bs!600109 m!4861933))

(assert (=> bs!600109 m!4861933))

(declare-fun m!4861935 () Bool)

(assert (=> bs!600109 m!4861935))

(assert (=> d!1258864 d!1258902))

(declare-fun b!4269191 () Bool)

(declare-fun e!2650621 () List!47410)

(assert (=> b!4269191 (= e!2650621 Nil!47286)))

(declare-fun d!1258904 () Bool)

(declare-fun c!726155 () Bool)

(assert (=> d!1258904 (= c!726155 (is-Empty!14268 (c!726145 x!739438)))))

(assert (=> d!1258904 (= (list!17117 (c!726145 x!739438)) e!2650621)))

(declare-fun b!4269194 () Bool)

(declare-fun e!2650622 () List!47410)

(assert (=> b!4269194 (= e!2650622 (++!12060 (list!17117 (left!35095 (c!726145 x!739438))) (list!17117 (right!35425 (c!726145 x!739438)))))))

(declare-fun b!4269192 () Bool)

(assert (=> b!4269192 (= e!2650621 e!2650622)))

(declare-fun c!726156 () Bool)

(assert (=> b!4269192 (= c!726156 (is-Leaf!22058 (c!726145 x!739438)))))

(declare-fun b!4269193 () Bool)

(assert (=> b!4269193 (= e!2650622 (list!17119 (xs!17574 (c!726145 x!739438))))))

(assert (= (and d!1258904 c!726155) b!4269191))

(assert (= (and d!1258904 (not c!726155)) b!4269192))

(assert (= (and b!4269192 c!726156) b!4269193))

(assert (= (and b!4269192 (not c!726156)) b!4269194))

(declare-fun m!4861937 () Bool)

(assert (=> b!4269194 m!4861937))

(declare-fun m!4861939 () Bool)

(assert (=> b!4269194 m!4861939))

(assert (=> b!4269194 m!4861937))

(assert (=> b!4269194 m!4861939))

(declare-fun m!4861941 () Bool)

(assert (=> b!4269194 m!4861941))

(declare-fun m!4861943 () Bool)

(assert (=> b!4269193 m!4861943))

(assert (=> d!1258874 d!1258904))

(declare-fun d!1258906 () Bool)

(declare-fun lt!1512381 () List!47410)

(assert (=> d!1258906 (= lt!1512381 (list!17115 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))

(assert (=> d!1258906 (= lt!1512381 (efficientList!461 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (=> d!1258906 (= (efficientList!459 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) lt!1512381)))

(declare-fun bs!600110 () Bool)

(assert (= bs!600110 d!1258906))

(assert (=> bs!600110 m!4861813))

(assert (=> bs!600110 m!4861815))

(declare-fun m!4861945 () Bool)

(assert (=> bs!600110 m!4861945))

(assert (=> bs!600110 m!4861945))

(declare-fun m!4861947 () Bool)

(assert (=> bs!600110 m!4861947))

(assert (=> d!1258868 d!1258906))

(declare-fun d!1258908 () Bool)

(declare-fun lt!1512382 () List!47410)

(assert (=> d!1258908 (= lt!1512382 (list!17115 x!739439))))

(assert (=> d!1258908 (= lt!1512382 (efficientList!461 (c!726145 x!739439) (efficientList$default$2!159 (c!726145 x!739439))))))

(assert (=> d!1258908 (= (efficientList!459 x!739439) lt!1512382)))

(declare-fun bs!600111 () Bool)

(assert (= bs!600111 d!1258908))

(assert (=> bs!600111 m!4861823))

(declare-fun m!4861949 () Bool)

(assert (=> bs!600111 m!4861949))

(assert (=> bs!600111 m!4861949))

(declare-fun m!4861951 () Bool)

(assert (=> bs!600111 m!4861951))

(assert (=> d!1258876 d!1258908))

(declare-fun b!4269195 () Bool)

(declare-fun e!2650623 () List!47410)

(assert (=> b!4269195 (= e!2650623 Nil!47286)))

(declare-fun d!1258910 () Bool)

(declare-fun c!726157 () Bool)

(assert (=> d!1258910 (= c!726157 (is-Empty!14268 (c!726145 x!739439)))))

(assert (=> d!1258910 (= (list!17117 (c!726145 x!739439)) e!2650623)))

(declare-fun b!4269198 () Bool)

(declare-fun e!2650624 () List!47410)

(assert (=> b!4269198 (= e!2650624 (++!12060 (list!17117 (left!35095 (c!726145 x!739439))) (list!17117 (right!35425 (c!726145 x!739439)))))))

(declare-fun b!4269196 () Bool)

(assert (=> b!4269196 (= e!2650623 e!2650624)))

(declare-fun c!726158 () Bool)

(assert (=> b!4269196 (= c!726158 (is-Leaf!22058 (c!726145 x!739439)))))

(declare-fun b!4269197 () Bool)

(assert (=> b!4269197 (= e!2650624 (list!17119 (xs!17574 (c!726145 x!739439))))))

(assert (= (and d!1258910 c!726157) b!4269195))

(assert (= (and d!1258910 (not c!726157)) b!4269196))

(assert (= (and b!4269196 c!726158) b!4269197))

(assert (= (and b!4269196 (not c!726158)) b!4269198))

(declare-fun m!4861953 () Bool)

(assert (=> b!4269198 m!4861953))

(declare-fun m!4861955 () Bool)

(assert (=> b!4269198 m!4861955))

(assert (=> b!4269198 m!4861953))

(assert (=> b!4269198 m!4861955))

(declare-fun m!4861957 () Bool)

(assert (=> b!4269198 m!4861957))

(declare-fun m!4861959 () Bool)

(assert (=> b!4269197 m!4861959))

(assert (=> d!1258870 d!1258910))

(push 1)

(assert (not d!1258906))

(assert (not b!4269189))

(assert (not b!4269110))

(assert (not b!4269198))

(assert (not d!1258898))

(assert (not d!1258908))

(assert (not b!4269193))

(assert (not b!4269190))

(assert (not b!4269185))

(assert (not b!4269113))

(assert (not start!409266))

(assert (not b!4269112))

(assert (not b!4269111))

(assert (not b!4269197))

(assert (not d!1258902))

(assert (not bs!599991))

(assert (not b!4269194))

(assert (not b!4269186))

(assert (not b!4269101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> bs!599991 d!1258878))

(declare-fun d!1258928 () Bool)

(declare-fun c!726174 () Bool)

(assert (=> d!1258928 (= c!726174 (is-IdentifierValue!16483 (toValue!13 thiss!2252 x!739437)))))

(declare-fun e!2650639 () BalanceConc!28046)

(assert (=> d!1258928 (= (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)) e!2650639)))

(declare-fun b!4269227 () Bool)

(declare-fun seqFromList!5858 (List!47410) BalanceConc!28046)

(assert (=> b!4269227 (= e!2650639 (seqFromList!5858 (value!248871 (toValue!13 thiss!2252 x!739437))))))

(declare-fun b!4269228 () Bool)

(assert (=> b!4269228 (= e!2650639 (BalanceConc!28047 Empty!14268))))

(assert (= (and d!1258928 c!726174) b!4269227))

(assert (= (and d!1258928 (not c!726174)) b!4269228))

(declare-fun m!4862009 () Bool)

(assert (=> b!4269227 m!4862009))

(assert (=> bs!599991 d!1258928))

(assert (=> bs!599991 d!1258864))

(assert (=> bs!599991 d!1258872))

(declare-fun d!1258930 () Bool)

(declare-fun c!726177 () Bool)

(assert (=> d!1258930 (= c!726177 (is-Node!14268 (c!726145 x!739437)))))

(declare-fun e!2650644 () Bool)

(assert (=> d!1258930 (= (inv!62299 (c!726145 x!739437)) e!2650644)))

(declare-fun b!4269235 () Bool)

(declare-fun inv!62303 (Conc!14268) Bool)

(assert (=> b!4269235 (= e!2650644 (inv!62303 (c!726145 x!739437)))))

(declare-fun b!4269236 () Bool)

(declare-fun e!2650645 () Bool)

(assert (=> b!4269236 (= e!2650644 e!2650645)))

(declare-fun res!1753920 () Bool)

(assert (=> b!4269236 (= res!1753920 (not (is-Leaf!22058 (c!726145 x!739437))))))

(assert (=> b!4269236 (=> res!1753920 e!2650645)))

(declare-fun b!4269237 () Bool)

(declare-fun inv!62304 (Conc!14268) Bool)

(assert (=> b!4269237 (= e!2650645 (inv!62304 (c!726145 x!739437)))))

(assert (= (and d!1258930 c!726177) b!4269235))

(assert (= (and d!1258930 (not c!726177)) b!4269236))

(assert (= (and b!4269236 (not res!1753920)) b!4269237))

(declare-fun m!4862011 () Bool)

(assert (=> b!4269235 m!4862011))

(declare-fun m!4862013 () Bool)

(assert (=> b!4269237 m!4862013))

(assert (=> b!4269110 d!1258930))

(assert (=> b!4269111 d!1258866))

(assert (=> b!4269111 d!1258876))

(declare-fun d!1258932 () Bool)

(declare-fun c!726178 () Bool)

(assert (=> d!1258932 (= c!726178 (is-Node!14268 (c!726145 x!739438)))))

(declare-fun e!2650646 () Bool)

(assert (=> d!1258932 (= (inv!62299 (c!726145 x!739438)) e!2650646)))

(declare-fun b!4269238 () Bool)

(assert (=> b!4269238 (= e!2650646 (inv!62303 (c!726145 x!739438)))))

(declare-fun b!4269239 () Bool)

(declare-fun e!2650647 () Bool)

(assert (=> b!4269239 (= e!2650646 e!2650647)))

(declare-fun res!1753921 () Bool)

(assert (=> b!4269239 (= res!1753921 (not (is-Leaf!22058 (c!726145 x!739438))))))

(assert (=> b!4269239 (=> res!1753921 e!2650647)))

(declare-fun b!4269240 () Bool)

(assert (=> b!4269240 (= e!2650647 (inv!62304 (c!726145 x!739438)))))

(assert (= (and d!1258932 c!726178) b!4269238))

(assert (= (and d!1258932 (not c!726178)) b!4269239))

(assert (= (and b!4269239 (not res!1753921)) b!4269240))

(declare-fun m!4862015 () Bool)

(assert (=> b!4269238 m!4862015))

(declare-fun m!4862017 () Bool)

(assert (=> b!4269240 m!4862017))

(assert (=> b!4269112 d!1258932))

(assert (=> d!1258906 d!1258878))

(declare-fun b!4269253 () Bool)

(declare-fun e!2650655 () List!47410)

(declare-fun call!294103 () List!47410)

(assert (=> b!4269253 (= e!2650655 call!294103)))

(declare-fun d!1258934 () Bool)

(declare-fun lt!1512402 () List!47410)

(assert (=> d!1258934 (= lt!1512402 (++!12060 (list!17117 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))) (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(declare-fun e!2650656 () List!47410)

(assert (=> d!1258934 (= lt!1512402 e!2650656)))

(declare-fun c!726187 () Bool)

(assert (=> d!1258934 (= c!726187 (is-Empty!14268 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(assert (=> d!1258934 (= (efficientList!461 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))) (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))) lt!1512402)))

(declare-fun b!4269254 () Bool)

(declare-datatypes ((Unit!66189 0))(
  ( (Unit!66190) )
))
(declare-fun lt!1512403 () Unit!66189)

(declare-fun lt!1512400 () Unit!66189)

(assert (=> b!4269254 (= lt!1512403 lt!1512400)))

(declare-fun lt!1512401 () List!47410)

(declare-fun lt!1512399 () List!47410)

(assert (=> b!4269254 (= (++!12060 (++!12060 lt!1512399 lt!1512401) (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))) (++!12060 lt!1512399 call!294103))))

(declare-fun lemmaConcatAssociativity!2702 (List!47410 List!47410 List!47410) Unit!66189)

(assert (=> b!4269254 (= lt!1512400 (lemmaConcatAssociativity!2702 lt!1512399 lt!1512401 (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (=> b!4269254 (= lt!1512401 (list!17117 (right!35425 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (=> b!4269254 (= lt!1512399 (list!17117 (left!35095 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (=> b!4269254 (= e!2650655 (efficientList!461 (left!35095 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))) (efficientList!461 (right!35425 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))) (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))))

(declare-fun b!4269255 () Bool)

(assert (=> b!4269255 (= e!2650656 e!2650655)))

(declare-fun c!726185 () Bool)

(assert (=> b!4269255 (= c!726185 (is-Leaf!22058 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(declare-fun b!4269256 () Bool)

(declare-fun e!2650654 () List!47410)

(assert (=> b!4269256 (= e!2650654 lt!1512401)))

(declare-fun b!4269257 () Bool)

(declare-fun efficientList!463 (IArray!28541) List!47410)

(assert (=> b!4269257 (= e!2650654 (efficientList!463 (xs!17574 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(declare-fun b!4269258 () Bool)

(assert (=> b!4269258 (= e!2650656 (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))))))

(declare-fun bm!294098 () Bool)

(declare-fun c!726186 () Bool)

(assert (=> bm!294098 (= c!726186 c!726185)))

(assert (=> bm!294098 (= call!294103 (++!12060 e!2650654 (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437))))))))

(assert (= (and d!1258934 c!726187) b!4269258))

(assert (= (and d!1258934 (not c!726187)) b!4269255))

(assert (= (and b!4269255 c!726185) b!4269253))

(assert (= (and b!4269255 (not c!726185)) b!4269254))

(assert (= (or b!4269253 b!4269254) bm!294098))

(assert (= (and bm!294098 c!726186) b!4269257))

(assert (= (and bm!294098 (not c!726186)) b!4269256))

(assert (=> d!1258934 m!4861891))

(assert (=> d!1258934 m!4861891))

(assert (=> d!1258934 m!4861945))

(declare-fun m!4862019 () Bool)

(assert (=> d!1258934 m!4862019))

(assert (=> b!4269254 m!4861945))

(declare-fun m!4862021 () Bool)

(assert (=> b!4269254 m!4862021))

(assert (=> b!4269254 m!4861945))

(declare-fun m!4862023 () Bool)

(assert (=> b!4269254 m!4862023))

(declare-fun m!4862025 () Bool)

(assert (=> b!4269254 m!4862025))

(assert (=> b!4269254 m!4862025))

(assert (=> b!4269254 m!4861945))

(declare-fun m!4862027 () Bool)

(assert (=> b!4269254 m!4862027))

(declare-fun m!4862029 () Bool)

(assert (=> b!4269254 m!4862029))

(assert (=> b!4269254 m!4861913))

(assert (=> b!4269254 m!4862021))

(declare-fun m!4862031 () Bool)

(assert (=> b!4269254 m!4862031))

(assert (=> b!4269254 m!4861915))

(declare-fun m!4862033 () Bool)

(assert (=> b!4269257 m!4862033))

(assert (=> bm!294098 m!4861945))

(declare-fun m!4862035 () Bool)

(assert (=> bm!294098 m!4862035))

(assert (=> d!1258906 d!1258934))

(declare-fun d!1258936 () Bool)

(assert (=> d!1258936 (= (efficientList$default$2!159 (c!726145 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739437)))) Nil!47286)))

(assert (=> d!1258906 d!1258936))

(assert (=> d!1258898 d!1258874))

(declare-fun b!4269259 () Bool)

(declare-fun e!2650658 () List!47410)

(declare-fun call!294104 () List!47410)

(assert (=> b!4269259 (= e!2650658 call!294104)))

(declare-fun d!1258938 () Bool)

(declare-fun lt!1512407 () List!47410)

(assert (=> d!1258938 (= lt!1512407 (++!12060 (list!17117 (c!726145 x!739438)) (efficientList$default$2!159 (c!726145 x!739438))))))

(declare-fun e!2650659 () List!47410)

(assert (=> d!1258938 (= lt!1512407 e!2650659)))

(declare-fun c!726190 () Bool)

(assert (=> d!1258938 (= c!726190 (is-Empty!14268 (c!726145 x!739438)))))

(assert (=> d!1258938 (= (efficientList!461 (c!726145 x!739438) (efficientList$default$2!159 (c!726145 x!739438))) lt!1512407)))

(declare-fun b!4269260 () Bool)

(declare-fun lt!1512408 () Unit!66189)

(declare-fun lt!1512405 () Unit!66189)

(assert (=> b!4269260 (= lt!1512408 lt!1512405)))

(declare-fun lt!1512404 () List!47410)

(declare-fun lt!1512406 () List!47410)

(assert (=> b!4269260 (= (++!12060 (++!12060 lt!1512404 lt!1512406) (efficientList$default$2!159 (c!726145 x!739438))) (++!12060 lt!1512404 call!294104))))

(assert (=> b!4269260 (= lt!1512405 (lemmaConcatAssociativity!2702 lt!1512404 lt!1512406 (efficientList$default$2!159 (c!726145 x!739438))))))

(assert (=> b!4269260 (= lt!1512406 (list!17117 (right!35425 (c!726145 x!739438))))))

(assert (=> b!4269260 (= lt!1512404 (list!17117 (left!35095 (c!726145 x!739438))))))

(assert (=> b!4269260 (= e!2650658 (efficientList!461 (left!35095 (c!726145 x!739438)) (efficientList!461 (right!35425 (c!726145 x!739438)) (efficientList$default$2!159 (c!726145 x!739438)))))))

(declare-fun b!4269261 () Bool)

(assert (=> b!4269261 (= e!2650659 e!2650658)))

(declare-fun c!726188 () Bool)

(assert (=> b!4269261 (= c!726188 (is-Leaf!22058 (c!726145 x!739438)))))

(declare-fun b!4269262 () Bool)

(declare-fun e!2650657 () List!47410)

(assert (=> b!4269262 (= e!2650657 lt!1512406)))

(declare-fun b!4269263 () Bool)

(assert (=> b!4269263 (= e!2650657 (efficientList!463 (xs!17574 (c!726145 x!739438))))))

(declare-fun b!4269264 () Bool)

(assert (=> b!4269264 (= e!2650659 (efficientList$default$2!159 (c!726145 x!739438)))))

(declare-fun bm!294099 () Bool)

(declare-fun c!726189 () Bool)

(assert (=> bm!294099 (= c!726189 c!726188)))

(assert (=> bm!294099 (= call!294104 (++!12060 e!2650657 (efficientList$default$2!159 (c!726145 x!739438))))))

(assert (= (and d!1258938 c!726190) b!4269264))

(assert (= (and d!1258938 (not c!726190)) b!4269261))

(assert (= (and b!4269261 c!726188) b!4269259))

(assert (= (and b!4269261 (not c!726188)) b!4269260))

(assert (= (or b!4269259 b!4269260) bm!294099))

(assert (= (and bm!294099 c!726189) b!4269263))

(assert (= (and bm!294099 (not c!726189)) b!4269262))

(assert (=> d!1258938 m!4861887))

(assert (=> d!1258938 m!4861887))

(assert (=> d!1258938 m!4861921))

(declare-fun m!4862037 () Bool)

(assert (=> d!1258938 m!4862037))

(assert (=> b!4269260 m!4861921))

(declare-fun m!4862039 () Bool)

(assert (=> b!4269260 m!4862039))

(assert (=> b!4269260 m!4861921))

(declare-fun m!4862041 () Bool)

(assert (=> b!4269260 m!4862041))

(declare-fun m!4862043 () Bool)

(assert (=> b!4269260 m!4862043))

(assert (=> b!4269260 m!4862043))

(assert (=> b!4269260 m!4861921))

(declare-fun m!4862045 () Bool)

(assert (=> b!4269260 m!4862045))

(declare-fun m!4862047 () Bool)

(assert (=> b!4269260 m!4862047))

(assert (=> b!4269260 m!4861937))

(assert (=> b!4269260 m!4862039))

(declare-fun m!4862049 () Bool)

(assert (=> b!4269260 m!4862049))

(assert (=> b!4269260 m!4861939))

(declare-fun m!4862051 () Bool)

(assert (=> b!4269263 m!4862051))

(assert (=> bm!294099 m!4861921))

(declare-fun m!4862053 () Bool)

(assert (=> bm!294099 m!4862053))

(assert (=> d!1258898 d!1258938))

(declare-fun d!1258940 () Bool)

(assert (=> d!1258940 (= (efficientList$default$2!159 (c!726145 x!739438)) Nil!47286)))

(assert (=> d!1258898 d!1258940))

(declare-fun d!1258942 () Bool)

(declare-fun isBalanced!3824 (Conc!14268) Bool)

(assert (=> d!1258942 (= (inv!62300 x!739438) (isBalanced!3824 (c!726145 x!739438)))))

(declare-fun bs!600116 () Bool)

(assert (= bs!600116 d!1258942))

(declare-fun m!4862055 () Bool)

(assert (=> bs!600116 m!4862055))

(assert (=> b!4269101 d!1258942))

(assert (=> b!4269101 d!1258870))

(declare-fun d!1258944 () Bool)

(assert (=> d!1258944 (= (inv!62300 x!739439) (isBalanced!3824 (c!726145 x!739439)))))

(declare-fun bs!600117 () Bool)

(assert (= bs!600117 d!1258944))

(declare-fun m!4862057 () Bool)

(assert (=> bs!600117 m!4862057))

(assert (=> b!4269101 d!1258944))

(declare-fun d!1258946 () Bool)

(declare-fun choose!26022 (Int) Bool)

(assert (=> d!1258946 (= (Forall2!1214 lambda!130557) (choose!26022 lambda!130557))))

(declare-fun bs!600118 () Bool)

(assert (= bs!600118 d!1258946))

(declare-fun m!4862059 () Bool)

(assert (=> bs!600118 m!4862059))

(assert (=> b!4269101 d!1258946))

(assert (=> b!4269101 d!1258874))

(declare-fun d!1258948 () Bool)

(declare-fun choose!26023 (Int) Bool)

(assert (=> d!1258948 (= (Forall!1621 lambda!130554) (choose!26023 lambda!130554))))

(declare-fun bs!600119 () Bool)

(assert (= bs!600119 d!1258948))

(declare-fun m!4862061 () Bool)

(assert (=> bs!600119 m!4862061))

(assert (=> b!4269101 d!1258948))

(declare-fun bs!600120 () Bool)

(declare-fun d!1258950 () Bool)

(assert (= bs!600120 (and d!1258950 start!409266)))

(declare-fun lambda!130578 () Int)

(assert (=> bs!600120 (not (= lambda!130578 lambda!130554))))

(assert (=> d!1258950 true))

(declare-fun order!24827 () Int)

(declare-fun order!24829 () Int)

(declare-fun dynLambda!20246 (Int Int) Int)

(declare-fun dynLambda!20247 (Int Int) Int)

(assert (=> d!1258950 (< (dynLambda!20246 order!24827 lambda!130555) (dynLambda!20247 order!24829 lambda!130578))))

(assert (=> d!1258950 true))

(declare-fun order!24831 () Int)

(declare-fun dynLambda!20248 (Int Int) Int)

(assert (=> d!1258950 (< (dynLambda!20248 order!24831 lambda!130556) (dynLambda!20247 order!24829 lambda!130578))))

(assert (=> d!1258950 (= (semiInverseModEq!3499 lambda!130555 lambda!130556) (Forall!1621 lambda!130578))))

(declare-fun bs!600121 () Bool)

(assert (= bs!600121 d!1258950))

(declare-fun m!4862063 () Bool)

(assert (=> bs!600121 m!4862063))

(assert (=> b!4269101 d!1258950))

(assert (=> d!1258908 d!1258870))

(declare-fun b!4269269 () Bool)

(declare-fun e!2650661 () List!47410)

(declare-fun call!294105 () List!47410)

(assert (=> b!4269269 (= e!2650661 call!294105)))

(declare-fun d!1258952 () Bool)

(declare-fun lt!1512412 () List!47410)

(assert (=> d!1258952 (= lt!1512412 (++!12060 (list!17117 (c!726145 x!739439)) (efficientList$default$2!159 (c!726145 x!739439))))))

(declare-fun e!2650662 () List!47410)

(assert (=> d!1258952 (= lt!1512412 e!2650662)))

(declare-fun c!726193 () Bool)

(assert (=> d!1258952 (= c!726193 (is-Empty!14268 (c!726145 x!739439)))))

(assert (=> d!1258952 (= (efficientList!461 (c!726145 x!739439) (efficientList$default$2!159 (c!726145 x!739439))) lt!1512412)))

(declare-fun b!4269270 () Bool)

(declare-fun lt!1512413 () Unit!66189)

(declare-fun lt!1512410 () Unit!66189)

(assert (=> b!4269270 (= lt!1512413 lt!1512410)))

(declare-fun lt!1512409 () List!47410)

(declare-fun lt!1512411 () List!47410)

(assert (=> b!4269270 (= (++!12060 (++!12060 lt!1512409 lt!1512411) (efficientList$default$2!159 (c!726145 x!739439))) (++!12060 lt!1512409 call!294105))))

(assert (=> b!4269270 (= lt!1512410 (lemmaConcatAssociativity!2702 lt!1512409 lt!1512411 (efficientList$default$2!159 (c!726145 x!739439))))))

(assert (=> b!4269270 (= lt!1512411 (list!17117 (right!35425 (c!726145 x!739439))))))

(assert (=> b!4269270 (= lt!1512409 (list!17117 (left!35095 (c!726145 x!739439))))))

(assert (=> b!4269270 (= e!2650661 (efficientList!461 (left!35095 (c!726145 x!739439)) (efficientList!461 (right!35425 (c!726145 x!739439)) (efficientList$default$2!159 (c!726145 x!739439)))))))

(declare-fun b!4269271 () Bool)

(assert (=> b!4269271 (= e!2650662 e!2650661)))

(declare-fun c!726191 () Bool)

(assert (=> b!4269271 (= c!726191 (is-Leaf!22058 (c!726145 x!739439)))))

(declare-fun b!4269272 () Bool)

(declare-fun e!2650660 () List!47410)

(assert (=> b!4269272 (= e!2650660 lt!1512411)))

(declare-fun b!4269273 () Bool)

(assert (=> b!4269273 (= e!2650660 (efficientList!463 (xs!17574 (c!726145 x!739439))))))

(declare-fun b!4269274 () Bool)

(assert (=> b!4269274 (= e!2650662 (efficientList$default$2!159 (c!726145 x!739439)))))

(declare-fun bm!294100 () Bool)

(declare-fun c!726192 () Bool)

(assert (=> bm!294100 (= c!726192 c!726191)))

(assert (=> bm!294100 (= call!294105 (++!12060 e!2650660 (efficientList$default$2!159 (c!726145 x!739439))))))

(assert (= (and d!1258952 c!726193) b!4269274))

(assert (= (and d!1258952 (not c!726193)) b!4269271))

(assert (= (and b!4269271 c!726191) b!4269269))

(assert (= (and b!4269271 (not c!726191)) b!4269270))

(assert (= (or b!4269269 b!4269270) bm!294100))

(assert (= (and bm!294100 c!726192) b!4269273))

(assert (= (and bm!294100 (not c!726192)) b!4269272))

(assert (=> d!1258952 m!4861883))

(assert (=> d!1258952 m!4861883))

(assert (=> d!1258952 m!4861949))

(declare-fun m!4862065 () Bool)

(assert (=> d!1258952 m!4862065))

(assert (=> b!4269270 m!4861949))

(declare-fun m!4862067 () Bool)

(assert (=> b!4269270 m!4862067))

(assert (=> b!4269270 m!4861949))

(declare-fun m!4862069 () Bool)

(assert (=> b!4269270 m!4862069))

(declare-fun m!4862071 () Bool)

(assert (=> b!4269270 m!4862071))

(assert (=> b!4269270 m!4862071))

(assert (=> b!4269270 m!4861949))

(declare-fun m!4862073 () Bool)

(assert (=> b!4269270 m!4862073))

(declare-fun m!4862075 () Bool)

(assert (=> b!4269270 m!4862075))

(assert (=> b!4269270 m!4861953))

(assert (=> b!4269270 m!4862067))

(declare-fun m!4862077 () Bool)

(assert (=> b!4269270 m!4862077))

(assert (=> b!4269270 m!4861955))

(declare-fun m!4862079 () Bool)

(assert (=> b!4269273 m!4862079))

(assert (=> bm!294100 m!4861949))

(declare-fun m!4862081 () Bool)

(assert (=> bm!294100 m!4862081))

(assert (=> d!1258908 d!1258952))

(declare-fun d!1258954 () Bool)

(assert (=> d!1258954 (= (efficientList$default$2!159 (c!726145 x!739439)) Nil!47286)))

(assert (=> d!1258908 d!1258954))

(declare-fun d!1258956 () Bool)

(declare-fun c!726194 () Bool)

(assert (=> d!1258956 (= c!726194 (is-Node!14268 (c!726145 x!739439)))))

(declare-fun e!2650663 () Bool)

(assert (=> d!1258956 (= (inv!62299 (c!726145 x!739439)) e!2650663)))

(declare-fun b!4269275 () Bool)

(assert (=> b!4269275 (= e!2650663 (inv!62303 (c!726145 x!739439)))))

(declare-fun b!4269276 () Bool)

(declare-fun e!2650664 () Bool)

(assert (=> b!4269276 (= e!2650663 e!2650664)))

(declare-fun res!1753924 () Bool)

(assert (=> b!4269276 (= res!1753924 (not (is-Leaf!22058 (c!726145 x!739439))))))

(assert (=> b!4269276 (=> res!1753924 e!2650664)))

(declare-fun b!4269277 () Bool)

(assert (=> b!4269277 (= e!2650664 (inv!62304 (c!726145 x!739439)))))

(assert (= (and d!1258956 c!726194) b!4269275))

(assert (= (and d!1258956 (not c!726194)) b!4269276))

(assert (= (and b!4269276 (not res!1753924)) b!4269277))

(declare-fun m!4862083 () Bool)

(assert (=> b!4269275 m!4862083))

(declare-fun m!4862085 () Bool)

(assert (=> b!4269277 m!4862085))

(assert (=> b!4269113 d!1258956))

(assert (=> start!409266 d!1258948))

(assert (=> start!409266 d!1258928))

(assert (=> start!409266 d!1258864))

(assert (=> start!409266 d!1258878))

(declare-fun d!1258958 () Bool)

(assert (=> d!1258958 (= (inv!62300 x!739437) (isBalanced!3824 (c!726145 x!739437)))))

(declare-fun bs!600122 () Bool)

(assert (= bs!600122 d!1258958))

(declare-fun m!4862087 () Bool)

(assert (=> bs!600122 m!4862087))

(assert (=> start!409266 d!1258958))

(assert (=> start!409266 d!1258872))

(assert (=> d!1258902 d!1258872))

(declare-fun b!4269278 () Bool)

(declare-fun e!2650666 () List!47410)

(declare-fun call!294106 () List!47410)

(assert (=> b!4269278 (= e!2650666 call!294106)))

(declare-fun d!1258960 () Bool)

(declare-fun lt!1512417 () List!47410)

(assert (=> d!1258960 (= lt!1512417 (++!12060 (list!17117 (c!726145 x!739437)) (efficientList$default$2!159 (c!726145 x!739437))))))

(declare-fun e!2650667 () List!47410)

(assert (=> d!1258960 (= lt!1512417 e!2650667)))

(declare-fun c!726197 () Bool)

(assert (=> d!1258960 (= c!726197 (is-Empty!14268 (c!726145 x!739437)))))

(assert (=> d!1258960 (= (efficientList!461 (c!726145 x!739437) (efficientList$default$2!159 (c!726145 x!739437))) lt!1512417)))

(declare-fun b!4269279 () Bool)

(declare-fun lt!1512418 () Unit!66189)

(declare-fun lt!1512415 () Unit!66189)

(assert (=> b!4269279 (= lt!1512418 lt!1512415)))

(declare-fun lt!1512416 () List!47410)

(declare-fun lt!1512414 () List!47410)

(assert (=> b!4269279 (= (++!12060 (++!12060 lt!1512414 lt!1512416) (efficientList$default$2!159 (c!726145 x!739437))) (++!12060 lt!1512414 call!294106))))

(assert (=> b!4269279 (= lt!1512415 (lemmaConcatAssociativity!2702 lt!1512414 lt!1512416 (efficientList$default$2!159 (c!726145 x!739437))))))

(assert (=> b!4269279 (= lt!1512416 (list!17117 (right!35425 (c!726145 x!739437))))))

(assert (=> b!4269279 (= lt!1512414 (list!17117 (left!35095 (c!726145 x!739437))))))

(assert (=> b!4269279 (= e!2650666 (efficientList!461 (left!35095 (c!726145 x!739437)) (efficientList!461 (right!35425 (c!726145 x!739437)) (efficientList$default$2!159 (c!726145 x!739437)))))))

(declare-fun b!4269280 () Bool)

(assert (=> b!4269280 (= e!2650667 e!2650666)))

(declare-fun c!726195 () Bool)

(assert (=> b!4269280 (= c!726195 (is-Leaf!22058 (c!726145 x!739437)))))

(declare-fun b!4269281 () Bool)

(declare-fun e!2650665 () List!47410)

(assert (=> b!4269281 (= e!2650665 lt!1512416)))

(declare-fun b!4269282 () Bool)

(assert (=> b!4269282 (= e!2650665 (efficientList!463 (xs!17574 (c!726145 x!739437))))))

(declare-fun b!4269283 () Bool)

(assert (=> b!4269283 (= e!2650667 (efficientList$default$2!159 (c!726145 x!739437)))))

(declare-fun bm!294101 () Bool)

(declare-fun c!726196 () Bool)

(assert (=> bm!294101 (= c!726196 c!726195)))

(assert (=> bm!294101 (= call!294106 (++!12060 e!2650665 (efficientList$default$2!159 (c!726145 x!739437))))))

(assert (= (and d!1258960 c!726197) b!4269283))

(assert (= (and d!1258960 (not c!726197)) b!4269280))

(assert (= (and b!4269280 c!726195) b!4269278))

(assert (= (and b!4269280 (not c!726195)) b!4269279))

(assert (= (or b!4269278 b!4269279) bm!294101))

(assert (= (and bm!294101 c!726196) b!4269282))

(assert (= (and bm!294101 (not c!726196)) b!4269281))

(assert (=> d!1258960 m!4861885))

(assert (=> d!1258960 m!4861885))

(assert (=> d!1258960 m!4861933))

(declare-fun m!4862089 () Bool)

(assert (=> d!1258960 m!4862089))

(assert (=> b!4269279 m!4861933))

(declare-fun m!4862091 () Bool)

(assert (=> b!4269279 m!4862091))

(assert (=> b!4269279 m!4861933))

(declare-fun m!4862093 () Bool)

(assert (=> b!4269279 m!4862093))

(declare-fun m!4862095 () Bool)

(assert (=> b!4269279 m!4862095))

(assert (=> b!4269279 m!4862095))

(assert (=> b!4269279 m!4861933))

(declare-fun m!4862097 () Bool)

(assert (=> b!4269279 m!4862097))

(declare-fun m!4862099 () Bool)

(assert (=> b!4269279 m!4862099))

(assert (=> b!4269279 m!4861925))

(assert (=> b!4269279 m!4862091))

(declare-fun m!4862101 () Bool)

(assert (=> b!4269279 m!4862101))

(assert (=> b!4269279 m!4861927))

(declare-fun m!4862103 () Bool)

(assert (=> b!4269282 m!4862103))

(assert (=> bm!294101 m!4861933))

(declare-fun m!4862105 () Bool)

(assert (=> bm!294101 m!4862105))

(assert (=> d!1258902 d!1258960))

(declare-fun d!1258962 () Bool)

(assert (=> d!1258962 (= (efficientList$default$2!159 (c!726145 x!739437)) Nil!47286)))

(assert (=> d!1258902 d!1258962))

(declare-fun tp!1307784 () Bool)

(declare-fun b!4269290 () Bool)

(declare-fun e!2650672 () Bool)

(declare-fun tp!1307783 () Bool)

(assert (=> b!4269290 (= e!2650672 (and (inv!62299 (left!35095 (c!726145 x!739437))) tp!1307783 (inv!62299 (right!35425 (c!726145 x!739437))) tp!1307784))))

(declare-fun b!4269291 () Bool)

(declare-fun inv!62305 (IArray!28541) Bool)

(assert (=> b!4269291 (= e!2650672 (inv!62305 (xs!17574 (c!726145 x!739437))))))

(assert (=> b!4269110 (= tp!1307767 (and (inv!62299 (c!726145 x!739437)) e!2650672))))

(assert (= (and b!4269110 (is-Node!14268 (c!726145 x!739437))) b!4269290))

(assert (= (and b!4269110 (is-Leaf!22058 (c!726145 x!739437))) b!4269291))

(declare-fun m!4862107 () Bool)

(assert (=> b!4269290 m!4862107))

(declare-fun m!4862109 () Bool)

(assert (=> b!4269290 m!4862109))

(declare-fun m!4862111 () Bool)

(assert (=> b!4269291 m!4862111))

(assert (=> b!4269110 m!4861809))

(declare-fun tp!1307786 () Bool)

(declare-fun e!2650674 () Bool)

(declare-fun tp!1307785 () Bool)

(declare-fun b!4269292 () Bool)

(assert (=> b!4269292 (= e!2650674 (and (inv!62299 (left!35095 (c!726145 x!739438))) tp!1307785 (inv!62299 (right!35425 (c!726145 x!739438))) tp!1307786))))

(declare-fun b!4269293 () Bool)

(assert (=> b!4269293 (= e!2650674 (inv!62305 (xs!17574 (c!726145 x!739438))))))

(assert (=> b!4269112 (= tp!1307768 (and (inv!62299 (c!726145 x!739438)) e!2650674))))

(assert (= (and b!4269112 (is-Node!14268 (c!726145 x!739438))) b!4269292))

(assert (= (and b!4269112 (is-Leaf!22058 (c!726145 x!739438))) b!4269293))

(declare-fun m!4862113 () Bool)

(assert (=> b!4269292 m!4862113))

(declare-fun m!4862115 () Bool)

(assert (=> b!4269292 m!4862115))

(declare-fun m!4862117 () Bool)

(assert (=> b!4269293 m!4862117))

(assert (=> b!4269112 m!4861833))

(declare-fun b!4269294 () Bool)

(declare-fun tp!1307788 () Bool)

(declare-fun e!2650676 () Bool)

(declare-fun tp!1307787 () Bool)

(assert (=> b!4269294 (= e!2650676 (and (inv!62299 (left!35095 (c!726145 x!739439))) tp!1307787 (inv!62299 (right!35425 (c!726145 x!739439))) tp!1307788))))

(declare-fun b!4269295 () Bool)

(assert (=> b!4269295 (= e!2650676 (inv!62305 (xs!17574 (c!726145 x!739439))))))

(assert (=> b!4269113 (= tp!1307769 (and (inv!62299 (c!726145 x!739439)) e!2650676))))

(assert (= (and b!4269113 (is-Node!14268 (c!726145 x!739439))) b!4269294))

(assert (= (and b!4269113 (is-Leaf!22058 (c!726145 x!739439))) b!4269295))

(declare-fun m!4862119 () Bool)

(assert (=> b!4269294 m!4862119))

(declare-fun m!4862121 () Bool)

(assert (=> b!4269294 m!4862121))

(declare-fun m!4862123 () Bool)

(assert (=> b!4269295 m!4862123))

(assert (=> b!4269113 m!4861835))

(push 1)

(assert (not d!1258948))

(assert (not b!4269235))

(assert (not b!4269227))

(assert (not b!4269237))

(assert (not b!4269189))

(assert (not b!4269292))

(assert (not b!4269254))

(assert (not b!4269260))

(assert (not b!4269282))

(assert (not b!4269110))

(assert (not d!1258950))

(assert (not d!1258958))

(assert (not b!4269198))

(assert (not bm!294098))

(assert (not b!4269290))

(assert (not b!4269238))

(assert (not b!4269263))

(assert (not b!4269193))

(assert (not b!4269270))

(assert (not b!4269257))

(assert (not b!4269275))

(assert (not b!4269194))

(assert (not b!4269277))

(assert (not b!4269190))

(assert (not b!4269294))

(assert (not b!4269185))

(assert (not b!4269279))

(assert (not bm!294099))

(assert (not bm!294100))

(assert (not bm!294101))

(assert (not b!4269113))

(assert (not d!1258946))

(assert (not b!4269293))

(assert (not b!4269186))

(assert (not d!1258942))

(assert (not d!1258934))

(assert (not d!1258952))

(assert (not d!1258944))

(assert (not d!1258938))

(assert (not b!4269295))

(assert (not b!4269291))

(assert (not b!4269112))

(assert (not b!4269273))

(assert (not d!1258960))

(assert (not b!4269197))

(assert (not b!4269240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

