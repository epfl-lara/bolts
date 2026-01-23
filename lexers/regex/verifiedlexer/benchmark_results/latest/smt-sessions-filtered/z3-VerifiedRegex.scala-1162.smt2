; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59996 () Bool)

(assert start!59996)

(declare-fun b!622524 () Bool)

(declare-fun b_free!18237 () Bool)

(declare-fun b_next!18253 () Bool)

(assert (=> b!622524 (= b_free!18237 (not b_next!18253))))

(declare-fun tp!193450 () Bool)

(declare-fun b_and!61895 () Bool)

(assert (=> b!622524 (= tp!193450 b_and!61895)))

(declare-fun b_free!18239 () Bool)

(declare-fun b_next!18255 () Bool)

(assert (=> b!622524 (= b_free!18239 (not b_next!18255))))

(declare-fun tp!193447 () Bool)

(declare-fun b_and!61897 () Bool)

(assert (=> b!622524 (= tp!193447 b_and!61897)))

(declare-datatypes ((LexerInterface!1197 0))(
  ( (LexerInterfaceExt!1194 (__x!4566 Int)) (Lexer!1195) )
))
(declare-fun thiss!14007 () LexerInterface!1197)

(declare-fun e!378066 () Bool)

(declare-fun from!852 () Int)

(declare-datatypes ((List!6424 0))(
  ( (Nil!6414) (Cons!6414 (h!11815 (_ BitVec 16)) (t!81931 List!6424)) )
))
(declare-datatypes ((TokenValue!1333 0))(
  ( (FloatLiteralValue!2666 (text!9776 List!6424)) (TokenValueExt!1332 (__x!4567 Int)) (Broken!6665 (value!42144 List!6424)) (Object!1342) (End!1333) (Def!1333) (Underscore!1333) (Match!1333) (Else!1333) (Error!1333) (Case!1333) (If!1333) (Extends!1333) (Abstract!1333) (Class!1333) (Val!1333) (DelimiterValue!2666 (del!1393 List!6424)) (KeywordValue!1339 (value!42145 List!6424)) (CommentValue!2666 (value!42146 List!6424)) (WhitespaceValue!2666 (value!42147 List!6424)) (IndentationValue!1333 (value!42148 List!6424)) (String!8412) (Int32!1333) (Broken!6666 (value!42149 List!6424)) (Boolean!1334) (Unit!11501) (OperatorValue!1336 (op!1393 List!6424)) (IdentifierValue!2666 (value!42150 List!6424)) (IdentifierValue!2667 (value!42151 List!6424)) (WhitespaceValue!2667 (value!42152 List!6424)) (True!2666) (False!2666) (Broken!6667 (value!42153 List!6424)) (Broken!6668 (value!42154 List!6424)) (True!2667) (RightBrace!1333) (RightBracket!1333) (Colon!1333) (Null!1333) (Comma!1333) (LeftBracket!1333) (False!2667) (LeftBrace!1333) (ImaginaryLiteralValue!1333 (text!9777 List!6424)) (StringLiteralValue!3999 (value!42155 List!6424)) (EOFValue!1333 (value!42156 List!6424)) (IdentValue!1333 (value!42157 List!6424)) (DelimiterValue!2667 (value!42158 List!6424)) (DedentValue!1333 (value!42159 List!6424)) (NewLineValue!1333 (value!42160 List!6424)) (IntegerValue!3999 (value!42161 (_ BitVec 32)) (text!9778 List!6424)) (IntegerValue!4000 (value!42162 Int) (text!9779 List!6424)) (Times!1333) (Or!1333) (Equal!1333) (Minus!1333) (Broken!6669 (value!42163 List!6424)) (And!1333) (Div!1333) (LessEqual!1333) (Mod!1333) (Concat!2976) (Not!1333) (Plus!1333) (SpaceValue!1333 (value!42164 List!6424)) (IntegerValue!4001 (value!42165 Int) (text!9780 List!6424)) (StringLiteralValue!4000 (text!9781 List!6424)) (FloatLiteralValue!2667 (text!9782 List!6424)) (BytesLiteralValue!1333 (value!42166 List!6424)) (CommentValue!2667 (value!42167 List!6424)) (StringLiteralValue!4001 (value!42168 List!6424)) (ErrorTokenValue!1333 (msg!1394 List!6424)) )
))
(declare-datatypes ((C!4212 0))(
  ( (C!4213 (val!2332 Int)) )
))
(declare-datatypes ((List!6425 0))(
  ( (Nil!6415) (Cons!6415 (h!11816 C!4212) (t!81932 List!6425)) )
))
(declare-datatypes ((IArray!4119 0))(
  ( (IArray!4120 (innerList!2117 List!6425)) )
))
(declare-datatypes ((Conc!2059 0))(
  ( (Node!2059 (left!5087 Conc!2059) (right!5417 Conc!2059) (csize!4348 Int) (cheight!2270 Int)) (Leaf!3222 (xs!4696 IArray!4119) (csize!4349 Int)) (Empty!2059) )
))
(declare-datatypes ((BalanceConc!4126 0))(
  ( (BalanceConc!4127 (c!114441 Conc!2059)) )
))
(declare-datatypes ((String!8413 0))(
  ( (String!8414 (value!42169 String)) )
))
(declare-datatypes ((TokenValueInjection!2434 0))(
  ( (TokenValueInjection!2435 (toValue!2234 Int) (toChars!2093 Int)) )
))
(declare-datatypes ((Regex!1643 0))(
  ( (ElementMatch!1643 (c!114442 C!4212)) (Concat!2977 (regOne!3798 Regex!1643) (regTwo!3798 Regex!1643)) (EmptyExpr!1643) (Star!1643 (reg!1972 Regex!1643)) (EmptyLang!1643) (Union!1643 (regOne!3799 Regex!1643) (regTwo!3799 Regex!1643)) )
))
(declare-datatypes ((Rule!2418 0))(
  ( (Rule!2419 (regex!1309 Regex!1643) (tag!1571 String!8413) (isSeparator!1309 Bool) (transformation!1309 TokenValueInjection!2434)) )
))
(declare-datatypes ((Token!2342 0))(
  ( (Token!2343 (value!42170 TokenValue!1333) (rule!2105 Rule!2418) (size!5000 Int) (originalCharacters!1342 List!6425)) )
))
(declare-fun separatorToken!136 () Token!2342)

(declare-datatypes ((List!6426 0))(
  ( (Nil!6416) (Cons!6416 (h!11817 Token!2342) (t!81933 List!6426)) )
))
(declare-datatypes ((IArray!4121 0))(
  ( (IArray!4122 (innerList!2118 List!6426)) )
))
(declare-datatypes ((Conc!2060 0))(
  ( (Node!2060 (left!5088 Conc!2060) (right!5418 Conc!2060) (csize!4350 Int) (cheight!2271 Int)) (Leaf!3223 (xs!4697 IArray!4121) (csize!4351 Int)) (Empty!2060) )
))
(declare-datatypes ((BalanceConc!4128 0))(
  ( (BalanceConc!4129 (c!114443 Conc!2060)) )
))
(declare-fun v!6361 () BalanceConc!4128)

(declare-fun b!622522 () Bool)

(declare-fun list!2687 (BalanceConc!4126) List!6425)

(declare-fun printWithSeparatorTokenList!2 (LexerInterface!1197 List!6426 Token!2342) List!6425)

(declare-fun dropList!260 (BalanceConc!4128 Int) List!6426)

(assert (=> b!622522 (= e!378066 (not (= (list!2687 (BalanceConc!4127 Empty!2059)) (printWithSeparatorTokenList!2 thiss!14007 (dropList!260 v!6361 from!852) separatorToken!136))))))

(declare-fun b!622523 () Bool)

(declare-fun e!378063 () Bool)

(assert (=> b!622523 (= e!378063 e!378066)))

(declare-fun res!270855 () Bool)

(assert (=> b!622523 (=> (not res!270855) (not e!378066))))

(declare-fun lt!266338 () Int)

(assert (=> b!622523 (= res!270855 (and (<= from!852 lt!266338) (isSeparator!1309 (rule!2105 separatorToken!136)) (>= from!852 lt!266338)))))

(declare-fun size!5001 (BalanceConc!4128) Int)

(assert (=> b!622523 (= lt!266338 (size!5001 v!6361))))

(declare-fun e!378067 () Bool)

(assert (=> b!622524 (= e!378067 (and tp!193450 tp!193447))))

(declare-fun b!622526 () Bool)

(declare-fun e!378064 () Bool)

(declare-fun tp!193451 () Bool)

(declare-fun inv!8146 (Conc!2060) Bool)

(assert (=> b!622526 (= e!378064 (and (inv!8146 (c!114443 v!6361)) tp!193451))))

(declare-fun b!622527 () Bool)

(declare-fun e!378065 () Bool)

(declare-fun e!378070 () Bool)

(declare-fun tp!193449 () Bool)

(declare-fun inv!21 (TokenValue!1333) Bool)

(assert (=> b!622527 (= e!378065 (and (inv!21 (value!42170 separatorToken!136)) e!378070 tp!193449))))

(declare-fun res!270854 () Bool)

(assert (=> start!59996 (=> (not res!270854) (not e!378063))))

(get-info :version)

(assert (=> start!59996 (= res!270854 (and ((_ is Lexer!1195) thiss!14007) (>= from!852 0)))))

(assert (=> start!59996 e!378063))

(assert (=> start!59996 true))

(declare-fun inv!8147 (BalanceConc!4128) Bool)

(assert (=> start!59996 (and (inv!8147 v!6361) e!378064)))

(declare-fun inv!8148 (Token!2342) Bool)

(assert (=> start!59996 (and (inv!8148 separatorToken!136) e!378065)))

(declare-fun b!622525 () Bool)

(declare-fun tp!193448 () Bool)

(declare-fun inv!8141 (String!8413) Bool)

(declare-fun inv!8149 (TokenValueInjection!2434) Bool)

(assert (=> b!622525 (= e!378070 (and tp!193448 (inv!8141 (tag!1571 (rule!2105 separatorToken!136))) (inv!8149 (transformation!1309 (rule!2105 separatorToken!136))) e!378067))))

(assert (= (and start!59996 res!270854) b!622523))

(assert (= (and b!622523 res!270855) b!622522))

(assert (= start!59996 b!622526))

(assert (= b!622525 b!622524))

(assert (= b!622527 b!622525))

(assert (= start!59996 b!622527))

(declare-fun m!890835 () Bool)

(assert (=> start!59996 m!890835))

(declare-fun m!890837 () Bool)

(assert (=> start!59996 m!890837))

(declare-fun m!890839 () Bool)

(assert (=> b!622525 m!890839))

(declare-fun m!890841 () Bool)

(assert (=> b!622525 m!890841))

(declare-fun m!890843 () Bool)

(assert (=> b!622526 m!890843))

(declare-fun m!890845 () Bool)

(assert (=> b!622523 m!890845))

(declare-fun m!890847 () Bool)

(assert (=> b!622527 m!890847))

(declare-fun m!890849 () Bool)

(assert (=> b!622522 m!890849))

(declare-fun m!890851 () Bool)

(assert (=> b!622522 m!890851))

(assert (=> b!622522 m!890851))

(declare-fun m!890853 () Bool)

(assert (=> b!622522 m!890853))

(check-sat (not b!622527) b_and!61897 (not start!59996) b_and!61895 (not b!622526) (not b!622522) (not b!622523) (not b_next!18255) (not b_next!18253) (not b!622525))
(check-sat b_and!61895 b_and!61897 (not b_next!18255) (not b_next!18253))
(get-model)

(declare-fun d!217801 () Bool)

(declare-fun c!114450 () Bool)

(assert (=> d!217801 (= c!114450 ((_ is Node!2060) (c!114443 v!6361)))))

(declare-fun e!378081 () Bool)

(assert (=> d!217801 (= (inv!8146 (c!114443 v!6361)) e!378081)))

(declare-fun b!622544 () Bool)

(declare-fun inv!8150 (Conc!2060) Bool)

(assert (=> b!622544 (= e!378081 (inv!8150 (c!114443 v!6361)))))

(declare-fun b!622545 () Bool)

(declare-fun e!378082 () Bool)

(assert (=> b!622545 (= e!378081 e!378082)))

(declare-fun res!270864 () Bool)

(assert (=> b!622545 (= res!270864 (not ((_ is Leaf!3223) (c!114443 v!6361))))))

(assert (=> b!622545 (=> res!270864 e!378082)))

(declare-fun b!622546 () Bool)

(declare-fun inv!8151 (Conc!2060) Bool)

(assert (=> b!622546 (= e!378082 (inv!8151 (c!114443 v!6361)))))

(assert (= (and d!217801 c!114450) b!622544))

(assert (= (and d!217801 (not c!114450)) b!622545))

(assert (= (and b!622545 (not res!270864)) b!622546))

(declare-fun m!890855 () Bool)

(assert (=> b!622544 m!890855))

(declare-fun m!890857 () Bool)

(assert (=> b!622546 m!890857))

(assert (=> b!622526 d!217801))

(declare-fun b!622571 () Bool)

(declare-fun e!378099 () Bool)

(declare-fun inv!17 (TokenValue!1333) Bool)

(assert (=> b!622571 (= e!378099 (inv!17 (value!42170 separatorToken!136)))))

(declare-fun b!622573 () Bool)

(declare-fun e!378100 () Bool)

(declare-fun inv!16 (TokenValue!1333) Bool)

(assert (=> b!622573 (= e!378100 (inv!16 (value!42170 separatorToken!136)))))

(declare-fun b!622574 () Bool)

(declare-fun e!378098 () Bool)

(declare-fun inv!15 (TokenValue!1333) Bool)

(assert (=> b!622574 (= e!378098 (inv!15 (value!42170 separatorToken!136)))))

(declare-fun b!622575 () Bool)

(assert (=> b!622575 (= e!378100 e!378099)))

(declare-fun c!114461 () Bool)

(assert (=> b!622575 (= c!114461 ((_ is IntegerValue!4000) (value!42170 separatorToken!136)))))

(declare-fun d!217805 () Bool)

(declare-fun c!114460 () Bool)

(assert (=> d!217805 (= c!114460 ((_ is IntegerValue!3999) (value!42170 separatorToken!136)))))

(assert (=> d!217805 (= (inv!21 (value!42170 separatorToken!136)) e!378100)))

(declare-fun b!622572 () Bool)

(declare-fun res!270871 () Bool)

(assert (=> b!622572 (=> res!270871 e!378098)))

(assert (=> b!622572 (= res!270871 (not ((_ is IntegerValue!4001) (value!42170 separatorToken!136))))))

(assert (=> b!622572 (= e!378099 e!378098)))

(assert (= (and d!217805 c!114460) b!622573))

(assert (= (and d!217805 (not c!114460)) b!622575))

(assert (= (and b!622575 c!114461) b!622571))

(assert (= (and b!622575 (not c!114461)) b!622572))

(assert (= (and b!622572 (not res!270871)) b!622574))

(declare-fun m!890869 () Bool)

(assert (=> b!622571 m!890869))

(declare-fun m!890871 () Bool)

(assert (=> b!622573 m!890871))

(declare-fun m!890873 () Bool)

(assert (=> b!622574 m!890873))

(assert (=> b!622527 d!217805))

(declare-fun d!217811 () Bool)

(declare-fun list!2688 (Conc!2059) List!6425)

(assert (=> d!217811 (= (list!2687 (BalanceConc!4127 Empty!2059)) (list!2688 (c!114441 (BalanceConc!4127 Empty!2059))))))

(declare-fun bs!72103 () Bool)

(assert (= bs!72103 d!217811))

(declare-fun m!890875 () Bool)

(assert (=> bs!72103 m!890875))

(assert (=> b!622522 d!217811))

(declare-fun d!217815 () Bool)

(declare-fun c!114464 () Bool)

(assert (=> d!217815 (= c!114464 ((_ is Cons!6416) (dropList!260 v!6361 from!852)))))

(declare-fun e!378106 () List!6425)

(assert (=> d!217815 (= (printWithSeparatorTokenList!2 thiss!14007 (dropList!260 v!6361 from!852) separatorToken!136) e!378106)))

(declare-fun b!622583 () Bool)

(declare-fun ++!1768 (List!6425 List!6425) List!6425)

(declare-fun charsOf!897 (Token!2342) BalanceConc!4126)

(assert (=> b!622583 (= e!378106 (++!1768 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))

(declare-fun b!622584 () Bool)

(assert (=> b!622584 (= e!378106 Nil!6415)))

(assert (= (and d!217815 c!114464) b!622583))

(assert (= (and d!217815 (not c!114464)) b!622584))

(declare-fun m!890883 () Bool)

(assert (=> b!622583 m!890883))

(declare-fun m!890885 () Bool)

(assert (=> b!622583 m!890885))

(declare-fun m!890887 () Bool)

(assert (=> b!622583 m!890887))

(declare-fun m!890889 () Bool)

(assert (=> b!622583 m!890889))

(declare-fun m!890891 () Bool)

(assert (=> b!622583 m!890891))

(declare-fun m!890893 () Bool)

(assert (=> b!622583 m!890893))

(assert (=> b!622583 m!890885))

(declare-fun m!890895 () Bool)

(assert (=> b!622583 m!890895))

(assert (=> b!622583 m!890887))

(assert (=> b!622583 m!890883))

(assert (=> b!622583 m!890889))

(assert (=> b!622583 m!890893))

(assert (=> b!622583 m!890895))

(assert (=> b!622522 d!217815))

(declare-fun d!217821 () Bool)

(declare-fun drop!337 (List!6426 Int) List!6426)

(declare-fun list!2689 (Conc!2060) List!6426)

(assert (=> d!217821 (= (dropList!260 v!6361 from!852) (drop!337 (list!2689 (c!114443 v!6361)) from!852))))

(declare-fun bs!72105 () Bool)

(assert (= bs!72105 d!217821))

(declare-fun m!890909 () Bool)

(assert (=> bs!72105 m!890909))

(assert (=> bs!72105 m!890909))

(declare-fun m!890911 () Bool)

(assert (=> bs!72105 m!890911))

(assert (=> b!622522 d!217821))

(declare-fun d!217825 () Bool)

(declare-fun lt!266341 () Int)

(declare-fun size!5003 (List!6426) Int)

(declare-fun list!2690 (BalanceConc!4128) List!6426)

(assert (=> d!217825 (= lt!266341 (size!5003 (list!2690 v!6361)))))

(declare-fun size!5004 (Conc!2060) Int)

(assert (=> d!217825 (= lt!266341 (size!5004 (c!114443 v!6361)))))

(assert (=> d!217825 (= (size!5001 v!6361) lt!266341)))

(declare-fun bs!72107 () Bool)

(assert (= bs!72107 d!217825))

(declare-fun m!890915 () Bool)

(assert (=> bs!72107 m!890915))

(assert (=> bs!72107 m!890915))

(declare-fun m!890917 () Bool)

(assert (=> bs!72107 m!890917))

(declare-fun m!890919 () Bool)

(assert (=> bs!72107 m!890919))

(assert (=> b!622523 d!217825))

(declare-fun d!217829 () Bool)

(declare-fun isBalanced!542 (Conc!2060) Bool)

(assert (=> d!217829 (= (inv!8147 v!6361) (isBalanced!542 (c!114443 v!6361)))))

(declare-fun bs!72108 () Bool)

(assert (= bs!72108 d!217829))

(declare-fun m!890921 () Bool)

(assert (=> bs!72108 m!890921))

(assert (=> start!59996 d!217829))

(declare-fun d!217831 () Bool)

(declare-fun res!270885 () Bool)

(declare-fun e!378118 () Bool)

(assert (=> d!217831 (=> (not res!270885) (not e!378118))))

(declare-fun isEmpty!4572 (List!6425) Bool)

(assert (=> d!217831 (= res!270885 (not (isEmpty!4572 (originalCharacters!1342 separatorToken!136))))))

(assert (=> d!217831 (= (inv!8148 separatorToken!136) e!378118)))

(declare-fun b!622606 () Bool)

(declare-fun res!270886 () Bool)

(assert (=> b!622606 (=> (not res!270886) (not e!378118))))

(declare-fun dynLambda!3623 (Int TokenValue!1333) BalanceConc!4126)

(assert (=> b!622606 (= res!270886 (= (originalCharacters!1342 separatorToken!136) (list!2687 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))

(declare-fun b!622607 () Bool)

(declare-fun size!5005 (List!6425) Int)

(assert (=> b!622607 (= e!378118 (= (size!5000 separatorToken!136) (size!5005 (originalCharacters!1342 separatorToken!136))))))

(assert (= (and d!217831 res!270885) b!622606))

(assert (= (and b!622606 res!270886) b!622607))

(declare-fun b_lambda!24603 () Bool)

(assert (=> (not b_lambda!24603) (not b!622606)))

(declare-fun t!81937 () Bool)

(declare-fun tb!54025 () Bool)

(assert (=> (and b!622524 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!81937) tb!54025))

(declare-fun b!622612 () Bool)

(declare-fun e!378121 () Bool)

(declare-fun tp!193457 () Bool)

(declare-fun inv!8156 (Conc!2059) Bool)

(assert (=> b!622612 (= e!378121 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) tp!193457))))

(declare-fun result!61014 () Bool)

(declare-fun inv!8157 (BalanceConc!4126) Bool)

(assert (=> tb!54025 (= result!61014 (and (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))) e!378121))))

(assert (= tb!54025 b!622612))

(declare-fun m!890937 () Bool)

(assert (=> b!622612 m!890937))

(declare-fun m!890939 () Bool)

(assert (=> tb!54025 m!890939))

(assert (=> b!622606 t!81937))

(declare-fun b_and!61901 () Bool)

(assert (= b_and!61897 (and (=> t!81937 result!61014) b_and!61901)))

(declare-fun m!890941 () Bool)

(assert (=> d!217831 m!890941))

(declare-fun m!890943 () Bool)

(assert (=> b!622606 m!890943))

(assert (=> b!622606 m!890943))

(declare-fun m!890945 () Bool)

(assert (=> b!622606 m!890945))

(declare-fun m!890947 () Bool)

(assert (=> b!622607 m!890947))

(assert (=> start!59996 d!217831))

(declare-fun d!217835 () Bool)

(assert (=> d!217835 (= (inv!8141 (tag!1571 (rule!2105 separatorToken!136))) (= (mod (str.len (value!42169 (tag!1571 (rule!2105 separatorToken!136)))) 2) 0))))

(assert (=> b!622525 d!217835))

(declare-fun d!217839 () Bool)

(declare-fun res!270889 () Bool)

(declare-fun e!378129 () Bool)

(assert (=> d!217839 (=> (not res!270889) (not e!378129))))

(declare-fun semiInverseModEq!523 (Int Int) Bool)

(assert (=> d!217839 (= res!270889 (semiInverseModEq!523 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toValue!2234 (transformation!1309 (rule!2105 separatorToken!136)))))))

(assert (=> d!217839 (= (inv!8149 (transformation!1309 (rule!2105 separatorToken!136))) e!378129)))

(declare-fun b!622624 () Bool)

(declare-fun equivClasses!506 (Int Int) Bool)

(assert (=> b!622624 (= e!378129 (equivClasses!506 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toValue!2234 (transformation!1309 (rule!2105 separatorToken!136)))))))

(assert (= (and d!217839 res!270889) b!622624))

(declare-fun m!890959 () Bool)

(assert (=> d!217839 m!890959))

(declare-fun m!890961 () Bool)

(assert (=> b!622624 m!890961))

(assert (=> b!622525 d!217839))

(declare-fun tp!193481 () Bool)

(declare-fun b!622646 () Bool)

(declare-fun tp!193482 () Bool)

(declare-fun e!378141 () Bool)

(assert (=> b!622646 (= e!378141 (and (inv!8146 (left!5088 (c!114443 v!6361))) tp!193482 (inv!8146 (right!5418 (c!114443 v!6361))) tp!193481))))

(declare-fun b!622648 () Bool)

(declare-fun e!378140 () Bool)

(declare-fun tp!193480 () Bool)

(assert (=> b!622648 (= e!378140 tp!193480)))

(declare-fun b!622647 () Bool)

(declare-fun inv!8158 (IArray!4121) Bool)

(assert (=> b!622647 (= e!378141 (and (inv!8158 (xs!4697 (c!114443 v!6361))) e!378140))))

(assert (=> b!622526 (= tp!193451 (and (inv!8146 (c!114443 v!6361)) e!378141))))

(assert (= (and b!622526 ((_ is Node!2060) (c!114443 v!6361))) b!622646))

(assert (= b!622647 b!622648))

(assert (= (and b!622526 ((_ is Leaf!3223) (c!114443 v!6361))) b!622647))

(declare-fun m!890969 () Bool)

(assert (=> b!622646 m!890969))

(declare-fun m!890971 () Bool)

(assert (=> b!622646 m!890971))

(declare-fun m!890973 () Bool)

(assert (=> b!622647 m!890973))

(assert (=> b!622526 m!890843))

(declare-fun b!622657 () Bool)

(declare-fun e!378144 () Bool)

(declare-fun tp_is_empty!3613 () Bool)

(declare-fun tp!193491 () Bool)

(assert (=> b!622657 (= e!378144 (and tp_is_empty!3613 tp!193491))))

(assert (=> b!622527 (= tp!193449 e!378144)))

(assert (= (and b!622527 ((_ is Cons!6415) (originalCharacters!1342 separatorToken!136))) b!622657))

(declare-fun b!622674 () Bool)

(declare-fun e!378148 () Bool)

(declare-fun tp!193509 () Bool)

(assert (=> b!622674 (= e!378148 tp!193509)))

(declare-fun b!622673 () Bool)

(declare-fun tp!193508 () Bool)

(declare-fun tp!193510 () Bool)

(assert (=> b!622673 (= e!378148 (and tp!193508 tp!193510))))

(declare-fun b!622672 () Bool)

(assert (=> b!622672 (= e!378148 tp_is_empty!3613)))

(declare-fun b!622675 () Bool)

(declare-fun tp!193511 () Bool)

(declare-fun tp!193507 () Bool)

(assert (=> b!622675 (= e!378148 (and tp!193511 tp!193507))))

(assert (=> b!622525 (= tp!193448 e!378148)))

(assert (= (and b!622525 ((_ is ElementMatch!1643) (regex!1309 (rule!2105 separatorToken!136)))) b!622672))

(assert (= (and b!622525 ((_ is Concat!2977) (regex!1309 (rule!2105 separatorToken!136)))) b!622673))

(assert (= (and b!622525 ((_ is Star!1643) (regex!1309 (rule!2105 separatorToken!136)))) b!622674))

(assert (= (and b!622525 ((_ is Union!1643) (regex!1309 (rule!2105 separatorToken!136)))) b!622675))

(declare-fun b_lambda!24607 () Bool)

(assert (= b_lambda!24603 (or (and b!622524 b_free!18239) b_lambda!24607)))

(check-sat (not b!622647) (not b!622646) (not d!217821) (not b!622657) (not d!217831) (not b!622574) (not b!622573) (not d!217825) (not b!622571) (not tb!54025) (not b!622674) (not b!622546) (not d!217811) tp_is_empty!3613 (not b!622612) (not b_next!18253) (not b!622544) (not b!622583) (not b!622673) (not b!622675) b_and!61895 (not b!622648) (not b!622624) (not b_lambda!24607) (not d!217829) b_and!61901 (not b!622607) (not b!622606) (not b!622526) (not b_next!18255) (not d!217839))
(check-sat b_and!61895 b_and!61901 (not b_next!18255) (not b_next!18253))
(get-model)

(declare-fun d!217841 () Bool)

(assert (=> d!217841 (= (list!2687 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))) (list!2688 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))

(declare-fun bs!72111 () Bool)

(assert (= bs!72111 d!217841))

(declare-fun m!890975 () Bool)

(assert (=> bs!72111 m!890975))

(assert (=> b!622606 d!217841))

(declare-fun d!217843 () Bool)

(declare-fun lt!266347 () Int)

(assert (=> d!217843 (>= lt!266347 0)))

(declare-fun e!378151 () Int)

(assert (=> d!217843 (= lt!266347 e!378151)))

(declare-fun c!114470 () Bool)

(assert (=> d!217843 (= c!114470 ((_ is Nil!6415) (originalCharacters!1342 separatorToken!136)))))

(assert (=> d!217843 (= (size!5005 (originalCharacters!1342 separatorToken!136)) lt!266347)))

(declare-fun b!622680 () Bool)

(assert (=> b!622680 (= e!378151 0)))

(declare-fun b!622681 () Bool)

(assert (=> b!622681 (= e!378151 (+ 1 (size!5005 (t!81932 (originalCharacters!1342 separatorToken!136)))))))

(assert (= (and d!217843 c!114470) b!622680))

(assert (= (and d!217843 (not c!114470)) b!622681))

(declare-fun m!890977 () Bool)

(assert (=> b!622681 m!890977))

(assert (=> b!622607 d!217843))

(declare-fun d!217845 () Bool)

(declare-fun c!114471 () Bool)

(assert (=> d!217845 (= c!114471 ((_ is Node!2060) (left!5088 (c!114443 v!6361))))))

(declare-fun e!378152 () Bool)

(assert (=> d!217845 (= (inv!8146 (left!5088 (c!114443 v!6361))) e!378152)))

(declare-fun b!622682 () Bool)

(assert (=> b!622682 (= e!378152 (inv!8150 (left!5088 (c!114443 v!6361))))))

(declare-fun b!622683 () Bool)

(declare-fun e!378153 () Bool)

(assert (=> b!622683 (= e!378152 e!378153)))

(declare-fun res!270891 () Bool)

(assert (=> b!622683 (= res!270891 (not ((_ is Leaf!3223) (left!5088 (c!114443 v!6361)))))))

(assert (=> b!622683 (=> res!270891 e!378153)))

(declare-fun b!622684 () Bool)

(assert (=> b!622684 (= e!378153 (inv!8151 (left!5088 (c!114443 v!6361))))))

(assert (= (and d!217845 c!114471) b!622682))

(assert (= (and d!217845 (not c!114471)) b!622683))

(assert (= (and b!622683 (not res!270891)) b!622684))

(declare-fun m!890979 () Bool)

(assert (=> b!622682 m!890979))

(declare-fun m!890981 () Bool)

(assert (=> b!622684 m!890981))

(assert (=> b!622646 d!217845))

(declare-fun d!217847 () Bool)

(declare-fun c!114472 () Bool)

(assert (=> d!217847 (= c!114472 ((_ is Node!2060) (right!5418 (c!114443 v!6361))))))

(declare-fun e!378154 () Bool)

(assert (=> d!217847 (= (inv!8146 (right!5418 (c!114443 v!6361))) e!378154)))

(declare-fun b!622685 () Bool)

(assert (=> b!622685 (= e!378154 (inv!8150 (right!5418 (c!114443 v!6361))))))

(declare-fun b!622686 () Bool)

(declare-fun e!378155 () Bool)

(assert (=> b!622686 (= e!378154 e!378155)))

(declare-fun res!270892 () Bool)

(assert (=> b!622686 (= res!270892 (not ((_ is Leaf!3223) (right!5418 (c!114443 v!6361)))))))

(assert (=> b!622686 (=> res!270892 e!378155)))

(declare-fun b!622687 () Bool)

(assert (=> b!622687 (= e!378155 (inv!8151 (right!5418 (c!114443 v!6361))))))

(assert (= (and d!217847 c!114472) b!622685))

(assert (= (and d!217847 (not c!114472)) b!622686))

(assert (= (and b!622686 (not res!270892)) b!622687))

(declare-fun m!890983 () Bool)

(assert (=> b!622685 m!890983))

(declare-fun m!890985 () Bool)

(assert (=> b!622687 m!890985))

(assert (=> b!622646 d!217847))

(declare-fun b!622706 () Bool)

(declare-fun e!378168 () Int)

(assert (=> b!622706 (= e!378168 0)))

(declare-fun b!622707 () Bool)

(declare-fun e!378169 () List!6426)

(assert (=> b!622707 (= e!378169 (list!2689 (c!114443 v!6361)))))

(declare-fun b!622708 () Bool)

(declare-fun call!41136 () Int)

(assert (=> b!622708 (= e!378168 (- call!41136 from!852))))

(declare-fun bm!41131 () Bool)

(assert (=> bm!41131 (= call!41136 (size!5003 (list!2689 (c!114443 v!6361))))))

(declare-fun d!217849 () Bool)

(declare-fun e!378167 () Bool)

(assert (=> d!217849 e!378167))

(declare-fun res!270895 () Bool)

(assert (=> d!217849 (=> (not res!270895) (not e!378167))))

(declare-fun lt!266350 () List!6426)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1152 (List!6426) (InoxSet Token!2342))

(assert (=> d!217849 (= res!270895 (= ((_ map implies) (content!1152 lt!266350) (content!1152 (list!2689 (c!114443 v!6361)))) ((as const (InoxSet Token!2342)) true)))))

(declare-fun e!378166 () List!6426)

(assert (=> d!217849 (= lt!266350 e!378166)))

(declare-fun c!114481 () Bool)

(assert (=> d!217849 (= c!114481 ((_ is Nil!6416) (list!2689 (c!114443 v!6361))))))

(assert (=> d!217849 (= (drop!337 (list!2689 (c!114443 v!6361)) from!852) lt!266350)))

(declare-fun b!622709 () Bool)

(declare-fun e!378170 () Int)

(assert (=> b!622709 (= e!378170 e!378168)))

(declare-fun c!114483 () Bool)

(assert (=> b!622709 (= c!114483 (>= from!852 call!41136))))

(declare-fun b!622710 () Bool)

(assert (=> b!622710 (= e!378167 (= (size!5003 lt!266350) e!378170))))

(declare-fun c!114482 () Bool)

(assert (=> b!622710 (= c!114482 (<= from!852 0))))

(declare-fun b!622711 () Bool)

(assert (=> b!622711 (= e!378169 (drop!337 (t!81933 (list!2689 (c!114443 v!6361))) (- from!852 1)))))

(declare-fun b!622712 () Bool)

(assert (=> b!622712 (= e!378170 call!41136)))

(declare-fun b!622713 () Bool)

(assert (=> b!622713 (= e!378166 Nil!6416)))

(declare-fun b!622714 () Bool)

(assert (=> b!622714 (= e!378166 e!378169)))

(declare-fun c!114484 () Bool)

(assert (=> b!622714 (= c!114484 (<= from!852 0))))

(assert (= (and d!217849 c!114481) b!622713))

(assert (= (and d!217849 (not c!114481)) b!622714))

(assert (= (and b!622714 c!114484) b!622707))

(assert (= (and b!622714 (not c!114484)) b!622711))

(assert (= (and d!217849 res!270895) b!622710))

(assert (= (and b!622710 c!114482) b!622712))

(assert (= (and b!622710 (not c!114482)) b!622709))

(assert (= (and b!622709 c!114483) b!622706))

(assert (= (and b!622709 (not c!114483)) b!622708))

(assert (= (or b!622712 b!622709 b!622708) bm!41131))

(assert (=> bm!41131 m!890909))

(declare-fun m!890987 () Bool)

(assert (=> bm!41131 m!890987))

(declare-fun m!890989 () Bool)

(assert (=> d!217849 m!890989))

(assert (=> d!217849 m!890909))

(declare-fun m!890991 () Bool)

(assert (=> d!217849 m!890991))

(declare-fun m!890993 () Bool)

(assert (=> b!622710 m!890993))

(declare-fun m!890995 () Bool)

(assert (=> b!622711 m!890995))

(assert (=> d!217821 d!217849))

(declare-fun b!622723 () Bool)

(declare-fun e!378175 () List!6426)

(assert (=> b!622723 (= e!378175 Nil!6416)))

(declare-fun b!622725 () Bool)

(declare-fun e!378176 () List!6426)

(declare-fun list!2694 (IArray!4121) List!6426)

(assert (=> b!622725 (= e!378176 (list!2694 (xs!4697 (c!114443 v!6361))))))

(declare-fun b!622726 () Bool)

(declare-fun ++!1770 (List!6426 List!6426) List!6426)

(assert (=> b!622726 (= e!378176 (++!1770 (list!2689 (left!5088 (c!114443 v!6361))) (list!2689 (right!5418 (c!114443 v!6361)))))))

(declare-fun d!217851 () Bool)

(declare-fun c!114489 () Bool)

(assert (=> d!217851 (= c!114489 ((_ is Empty!2060) (c!114443 v!6361)))))

(assert (=> d!217851 (= (list!2689 (c!114443 v!6361)) e!378175)))

(declare-fun b!622724 () Bool)

(assert (=> b!622724 (= e!378175 e!378176)))

(declare-fun c!114490 () Bool)

(assert (=> b!622724 (= c!114490 ((_ is Leaf!3223) (c!114443 v!6361)))))

(assert (= (and d!217851 c!114489) b!622723))

(assert (= (and d!217851 (not c!114489)) b!622724))

(assert (= (and b!622724 c!114490) b!622725))

(assert (= (and b!622724 (not c!114490)) b!622726))

(declare-fun m!890997 () Bool)

(assert (=> b!622725 m!890997))

(declare-fun m!890999 () Bool)

(assert (=> b!622726 m!890999))

(declare-fun m!891001 () Bool)

(assert (=> b!622726 m!891001))

(assert (=> b!622726 m!890999))

(assert (=> b!622726 m!891001))

(declare-fun m!891003 () Bool)

(assert (=> b!622726 m!891003))

(assert (=> d!217821 d!217851))

(declare-fun d!217853 () Bool)

(assert (=> d!217853 (= (inv!8158 (xs!4697 (c!114443 v!6361))) (<= (size!5003 (innerList!2118 (xs!4697 (c!114443 v!6361)))) 2147483647))))

(declare-fun bs!72112 () Bool)

(assert (= bs!72112 d!217853))

(declare-fun m!891005 () Bool)

(assert (=> bs!72112 m!891005))

(assert (=> b!622647 d!217853))

(declare-fun d!217855 () Bool)

(declare-fun charsToBigInt!1 (List!6424) Int)

(assert (=> d!217855 (= (inv!17 (value!42170 separatorToken!136)) (= (charsToBigInt!1 (text!9779 (value!42170 separatorToken!136))) (value!42162 (value!42170 separatorToken!136))))))

(declare-fun bs!72113 () Bool)

(assert (= bs!72113 d!217855))

(declare-fun m!891007 () Bool)

(assert (=> bs!72113 m!891007))

(assert (=> b!622571 d!217855))

(declare-fun d!217859 () Bool)

(assert (=> d!217859 true))

(declare-fun order!4957 () Int)

(declare-fun lambda!16337 () Int)

(declare-fun order!4955 () Int)

(declare-fun dynLambda!3624 (Int Int) Int)

(declare-fun dynLambda!3625 (Int Int) Int)

(assert (=> d!217859 (< (dynLambda!3624 order!4955 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) (dynLambda!3625 order!4957 lambda!16337))))

(assert (=> d!217859 true))

(declare-fun order!4959 () Int)

(declare-fun dynLambda!3626 (Int Int) Int)

(assert (=> d!217859 (< (dynLambda!3626 order!4959 (toValue!2234 (transformation!1309 (rule!2105 separatorToken!136)))) (dynLambda!3625 order!4957 lambda!16337))))

(declare-fun Forall!316 (Int) Bool)

(assert (=> d!217859 (= (semiInverseModEq!523 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toValue!2234 (transformation!1309 (rule!2105 separatorToken!136)))) (Forall!316 lambda!16337))))

(declare-fun bs!72121 () Bool)

(assert (= bs!72121 d!217859))

(declare-fun m!891057 () Bool)

(assert (=> bs!72121 m!891057))

(assert (=> d!217839 d!217859))

(declare-fun d!217887 () Bool)

(declare-fun c!114504 () Bool)

(assert (=> d!217887 (= c!114504 ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))

(declare-fun e!378203 () Bool)

(assert (=> d!217887 (= (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) e!378203)))

(declare-fun b!622788 () Bool)

(declare-fun inv!8160 (Conc!2059) Bool)

(assert (=> b!622788 (= e!378203 (inv!8160 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))

(declare-fun b!622789 () Bool)

(declare-fun e!378204 () Bool)

(assert (=> b!622789 (= e!378203 e!378204)))

(declare-fun res!270928 () Bool)

(assert (=> b!622789 (= res!270928 (not ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(assert (=> b!622789 (=> res!270928 e!378204)))

(declare-fun b!622790 () Bool)

(declare-fun inv!8161 (Conc!2059) Bool)

(assert (=> b!622790 (= e!378204 (inv!8161 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))

(assert (= (and d!217887 c!114504) b!622788))

(assert (= (and d!217887 (not c!114504)) b!622789))

(assert (= (and b!622789 (not res!270928)) b!622790))

(declare-fun m!891059 () Bool)

(assert (=> b!622788 m!891059))

(declare-fun m!891061 () Bool)

(assert (=> b!622790 m!891061))

(assert (=> b!622612 d!217887))

(declare-fun b!622802 () Bool)

(declare-fun lt!266359 () List!6425)

(declare-fun e!378210 () Bool)

(assert (=> b!622802 (= e!378210 (or (not (= (list!2687 (charsOf!897 separatorToken!136)) Nil!6415)) (= lt!266359 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun b!622800 () Bool)

(declare-fun e!378209 () List!6425)

(assert (=> b!622800 (= e!378209 (Cons!6415 (h!11816 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) (++!1768 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun b!622801 () Bool)

(declare-fun res!270933 () Bool)

(assert (=> b!622801 (=> (not res!270933) (not e!378210))))

(assert (=> b!622801 (= res!270933 (= (size!5005 lt!266359) (+ (size!5005 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) (size!5005 (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun b!622799 () Bool)

(assert (=> b!622799 (= e!378209 (list!2687 (charsOf!897 separatorToken!136)))))

(declare-fun d!217889 () Bool)

(assert (=> d!217889 e!378210))

(declare-fun res!270934 () Bool)

(assert (=> d!217889 (=> (not res!270934) (not e!378210))))

(declare-fun content!1153 (List!6425) (InoxSet C!4212))

(assert (=> d!217889 (= res!270934 (= (content!1153 lt!266359) ((_ map or) (content!1153 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) (content!1153 (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!217889 (= lt!266359 e!378209)))

(declare-fun c!114507 () Bool)

(assert (=> d!217889 (= c!114507 ((_ is Nil!6415) (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))

(assert (=> d!217889 (= (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))) lt!266359)))

(assert (= (and d!217889 c!114507) b!622799))

(assert (= (and d!217889 (not c!114507)) b!622800))

(assert (= (and d!217889 res!270934) b!622801))

(assert (= (and b!622801 res!270933) b!622802))

(assert (=> b!622800 m!890895))

(declare-fun m!891063 () Bool)

(assert (=> b!622800 m!891063))

(declare-fun m!891065 () Bool)

(assert (=> b!622801 m!891065))

(assert (=> b!622801 m!890885))

(declare-fun m!891067 () Bool)

(assert (=> b!622801 m!891067))

(assert (=> b!622801 m!890895))

(declare-fun m!891069 () Bool)

(assert (=> b!622801 m!891069))

(declare-fun m!891071 () Bool)

(assert (=> d!217889 m!891071))

(assert (=> d!217889 m!890885))

(declare-fun m!891073 () Bool)

(assert (=> d!217889 m!891073))

(assert (=> d!217889 m!890895))

(declare-fun m!891075 () Bool)

(assert (=> d!217889 m!891075))

(assert (=> b!622583 d!217889))

(declare-fun d!217891 () Bool)

(declare-fun lt!266362 () BalanceConc!4126)

(assert (=> d!217891 (= (list!2687 lt!266362) (originalCharacters!1342 separatorToken!136))))

(assert (=> d!217891 (= lt!266362 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))

(assert (=> d!217891 (= (charsOf!897 separatorToken!136) lt!266362)))

(declare-fun b_lambda!24609 () Bool)

(assert (=> (not b_lambda!24609) (not d!217891)))

(assert (=> d!217891 t!81937))

(declare-fun b_and!61903 () Bool)

(assert (= b_and!61901 (and (=> t!81937 result!61014) b_and!61903)))

(declare-fun m!891077 () Bool)

(assert (=> d!217891 m!891077))

(assert (=> d!217891 m!890943))

(assert (=> b!622583 d!217891))

(declare-fun d!217893 () Bool)

(assert (=> d!217893 (= (list!2687 (charsOf!897 separatorToken!136)) (list!2688 (c!114441 (charsOf!897 separatorToken!136))))))

(declare-fun bs!72122 () Bool)

(assert (= bs!72122 d!217893))

(declare-fun m!891079 () Bool)

(assert (=> bs!72122 m!891079))

(assert (=> b!622583 d!217893))

(declare-fun d!217895 () Bool)

(assert (=> d!217895 (= (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2688 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))

(declare-fun bs!72123 () Bool)

(assert (= bs!72123 d!217895))

(declare-fun m!891081 () Bool)

(assert (=> bs!72123 m!891081))

(assert (=> b!622583 d!217895))

(declare-fun d!217897 () Bool)

(declare-fun c!114508 () Bool)

(assert (=> d!217897 (= c!114508 ((_ is Cons!6416) (t!81933 (dropList!260 v!6361 from!852))))))

(declare-fun e!378211 () List!6425)

(assert (=> d!217897 (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136) e!378211)))

(declare-fun b!622803 () Bool)

(assert (=> b!622803 (= e!378211 (++!1768 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))

(declare-fun b!622804 () Bool)

(assert (=> b!622804 (= e!378211 Nil!6415)))

(assert (= (and d!217897 c!114508) b!622803))

(assert (= (and d!217897 (not c!114508)) b!622804))

(declare-fun m!891083 () Bool)

(assert (=> b!622803 m!891083))

(declare-fun m!891085 () Bool)

(assert (=> b!622803 m!891085))

(declare-fun m!891087 () Bool)

(assert (=> b!622803 m!891087))

(declare-fun m!891089 () Bool)

(assert (=> b!622803 m!891089))

(declare-fun m!891091 () Bool)

(assert (=> b!622803 m!891091))

(assert (=> b!622803 m!890893))

(assert (=> b!622803 m!891085))

(assert (=> b!622803 m!890895))

(assert (=> b!622803 m!891087))

(assert (=> b!622803 m!891083))

(assert (=> b!622803 m!891089))

(assert (=> b!622803 m!890893))

(assert (=> b!622803 m!890895))

(assert (=> b!622583 d!217897))

(declare-fun d!217899 () Bool)

(declare-fun lt!266363 () BalanceConc!4126)

(assert (=> d!217899 (= (list!2687 lt!266363) (originalCharacters!1342 (h!11817 (dropList!260 v!6361 from!852))))))

(assert (=> d!217899 (= lt!266363 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))

(assert (=> d!217899 (= (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))) lt!266363)))

(declare-fun b_lambda!24611 () Bool)

(assert (=> (not b_lambda!24611) (not d!217899)))

(declare-fun t!81943 () Bool)

(declare-fun tb!54027 () Bool)

(assert (=> (and b!622524 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!81943) tb!54027))

(declare-fun b!622805 () Bool)

(declare-fun e!378212 () Bool)

(declare-fun tp!193512 () Bool)

(assert (=> b!622805 (= e!378212 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) tp!193512))))

(declare-fun result!61030 () Bool)

(assert (=> tb!54027 (= result!61030 (and (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))) e!378212))))

(assert (= tb!54027 b!622805))

(declare-fun m!891093 () Bool)

(assert (=> b!622805 m!891093))

(declare-fun m!891095 () Bool)

(assert (=> tb!54027 m!891095))

(assert (=> d!217899 t!81943))

(declare-fun b_and!61905 () Bool)

(assert (= b_and!61903 (and (=> t!81943 result!61030) b_and!61905)))

(declare-fun m!891097 () Bool)

(assert (=> d!217899 m!891097))

(declare-fun m!891099 () Bool)

(assert (=> d!217899 m!891099))

(assert (=> b!622583 d!217899))

(declare-fun e!378214 () Bool)

(declare-fun b!622809 () Bool)

(declare-fun lt!266364 () List!6425)

(assert (=> b!622809 (= e!378214 (or (not (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136) Nil!6415)) (= lt!266364 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun e!378213 () List!6425)

(declare-fun b!622807 () Bool)

(assert (=> b!622807 (= e!378213 (Cons!6415 (h!11816 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))) (++!1768 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))))

(declare-fun b!622808 () Bool)

(declare-fun res!270935 () Bool)

(assert (=> b!622808 (=> (not res!270935) (not e!378214))))

(assert (=> b!622808 (= res!270935 (= (size!5005 lt!266364) (+ (size!5005 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))) (size!5005 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))))

(declare-fun b!622806 () Bool)

(assert (=> b!622806 (= e!378213 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))

(declare-fun d!217901 () Bool)

(assert (=> d!217901 e!378214))

(declare-fun res!270936 () Bool)

(assert (=> d!217901 (=> (not res!270936) (not e!378214))))

(assert (=> d!217901 (= res!270936 (= (content!1153 lt!266364) ((_ map or) (content!1153 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))) (content!1153 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))))

(assert (=> d!217901 (= lt!266364 e!378213)))

(declare-fun c!114509 () Bool)

(assert (=> d!217901 (= c!114509 ((_ is Nil!6415) (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))))

(assert (=> d!217901 (= (++!1768 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)) lt!266364)))

(assert (= (and d!217901 c!114509) b!622806))

(assert (= (and d!217901 (not c!114509)) b!622807))

(assert (= (and d!217901 res!270936) b!622808))

(assert (= (and b!622808 res!270935) b!622809))

(assert (=> b!622807 m!890889))

(declare-fun m!891101 () Bool)

(assert (=> b!622807 m!891101))

(declare-fun m!891103 () Bool)

(assert (=> b!622808 m!891103))

(assert (=> b!622808 m!890887))

(declare-fun m!891105 () Bool)

(assert (=> b!622808 m!891105))

(assert (=> b!622808 m!890889))

(declare-fun m!891107 () Bool)

(assert (=> b!622808 m!891107))

(declare-fun m!891109 () Bool)

(assert (=> d!217901 m!891109))

(assert (=> d!217901 m!890887))

(declare-fun m!891111 () Bool)

(assert (=> d!217901 m!891111))

(assert (=> d!217901 m!890889))

(declare-fun m!891113 () Bool)

(assert (=> d!217901 m!891113))

(assert (=> b!622583 d!217901))

(declare-fun d!217903 () Bool)

(assert (=> d!217903 true))

(declare-fun lambda!16340 () Int)

(declare-fun order!4961 () Int)

(declare-fun dynLambda!3627 (Int Int) Int)

(assert (=> d!217903 (< (dynLambda!3626 order!4959 (toValue!2234 (transformation!1309 (rule!2105 separatorToken!136)))) (dynLambda!3627 order!4961 lambda!16340))))

(declare-fun Forall2!242 (Int) Bool)

(assert (=> d!217903 (= (equivClasses!506 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toValue!2234 (transformation!1309 (rule!2105 separatorToken!136)))) (Forall2!242 lambda!16340))))

(declare-fun bs!72124 () Bool)

(assert (= bs!72124 d!217903))

(declare-fun m!891115 () Bool)

(assert (=> bs!72124 m!891115))

(assert (=> b!622624 d!217903))

(declare-fun d!217905 () Bool)

(declare-fun lt!266367 () Int)

(assert (=> d!217905 (>= lt!266367 0)))

(declare-fun e!378219 () Int)

(assert (=> d!217905 (= lt!266367 e!378219)))

(declare-fun c!114512 () Bool)

(assert (=> d!217905 (= c!114512 ((_ is Nil!6416) (list!2690 v!6361)))))

(assert (=> d!217905 (= (size!5003 (list!2690 v!6361)) lt!266367)))

(declare-fun b!622818 () Bool)

(assert (=> b!622818 (= e!378219 0)))

(declare-fun b!622819 () Bool)

(assert (=> b!622819 (= e!378219 (+ 1 (size!5003 (t!81933 (list!2690 v!6361)))))))

(assert (= (and d!217905 c!114512) b!622818))

(assert (= (and d!217905 (not c!114512)) b!622819))

(declare-fun m!891117 () Bool)

(assert (=> b!622819 m!891117))

(assert (=> d!217825 d!217905))

(declare-fun d!217907 () Bool)

(assert (=> d!217907 (= (list!2690 v!6361) (list!2689 (c!114443 v!6361)))))

(declare-fun bs!72125 () Bool)

(assert (= bs!72125 d!217907))

(assert (=> bs!72125 m!890909))

(assert (=> d!217825 d!217907))

(declare-fun d!217909 () Bool)

(declare-fun lt!266370 () Int)

(assert (=> d!217909 (= lt!266370 (size!5003 (list!2689 (c!114443 v!6361))))))

(assert (=> d!217909 (= lt!266370 (ite ((_ is Empty!2060) (c!114443 v!6361)) 0 (ite ((_ is Leaf!3223) (c!114443 v!6361)) (csize!4351 (c!114443 v!6361)) (csize!4350 (c!114443 v!6361)))))))

(assert (=> d!217909 (= (size!5004 (c!114443 v!6361)) lt!266370)))

(declare-fun bs!72126 () Bool)

(assert (= bs!72126 d!217909))

(assert (=> bs!72126 m!890909))

(assert (=> bs!72126 m!890909))

(assert (=> bs!72126 m!890987))

(assert (=> d!217825 d!217909))

(declare-fun d!217911 () Bool)

(declare-fun charsToInt!0 (List!6424) (_ BitVec 32))

(assert (=> d!217911 (= (inv!16 (value!42170 separatorToken!136)) (= (charsToInt!0 (text!9778 (value!42170 separatorToken!136))) (value!42161 (value!42170 separatorToken!136))))))

(declare-fun bs!72127 () Bool)

(assert (= bs!72127 d!217911))

(declare-fun m!891119 () Bool)

(assert (=> bs!72127 m!891119))

(assert (=> b!622573 d!217911))

(declare-fun d!217913 () Bool)

(declare-fun res!270945 () Bool)

(declare-fun e!378222 () Bool)

(assert (=> d!217913 (=> (not res!270945) (not e!378222))))

(assert (=> d!217913 (= res!270945 (= (csize!4350 (c!114443 v!6361)) (+ (size!5004 (left!5088 (c!114443 v!6361))) (size!5004 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!217913 (= (inv!8150 (c!114443 v!6361)) e!378222)))

(declare-fun b!622826 () Bool)

(declare-fun res!270946 () Bool)

(assert (=> b!622826 (=> (not res!270946) (not e!378222))))

(assert (=> b!622826 (= res!270946 (and (not (= (left!5088 (c!114443 v!6361)) Empty!2060)) (not (= (right!5418 (c!114443 v!6361)) Empty!2060))))))

(declare-fun b!622827 () Bool)

(declare-fun res!270947 () Bool)

(assert (=> b!622827 (=> (not res!270947) (not e!378222))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!258 (Conc!2060) Int)

(assert (=> b!622827 (= res!270947 (= (cheight!2271 (c!114443 v!6361)) (+ (max!0 (height!258 (left!5088 (c!114443 v!6361))) (height!258 (right!5418 (c!114443 v!6361)))) 1)))))

(declare-fun b!622828 () Bool)

(assert (=> b!622828 (= e!378222 (<= 0 (cheight!2271 (c!114443 v!6361))))))

(assert (= (and d!217913 res!270945) b!622826))

(assert (= (and b!622826 res!270946) b!622827))

(assert (= (and b!622827 res!270947) b!622828))

(declare-fun m!891121 () Bool)

(assert (=> d!217913 m!891121))

(declare-fun m!891123 () Bool)

(assert (=> d!217913 m!891123))

(declare-fun m!891125 () Bool)

(assert (=> b!622827 m!891125))

(declare-fun m!891127 () Bool)

(assert (=> b!622827 m!891127))

(assert (=> b!622827 m!891125))

(assert (=> b!622827 m!891127))

(declare-fun m!891129 () Bool)

(assert (=> b!622827 m!891129))

(assert (=> b!622544 d!217913))

(declare-fun d!217915 () Bool)

(assert (=> d!217915 (= (isEmpty!4572 (originalCharacters!1342 separatorToken!136)) ((_ is Nil!6415) (originalCharacters!1342 separatorToken!136)))))

(assert (=> d!217831 d!217915))

(declare-fun d!217917 () Bool)

(declare-fun charsToBigInt!0 (List!6424 Int) Int)

(assert (=> d!217917 (= (inv!15 (value!42170 separatorToken!136)) (= (charsToBigInt!0 (text!9780 (value!42170 separatorToken!136)) 0) (value!42165 (value!42170 separatorToken!136))))))

(declare-fun bs!72128 () Bool)

(assert (= bs!72128 d!217917))

(declare-fun m!891131 () Bool)

(assert (=> bs!72128 m!891131))

(assert (=> b!622574 d!217917))

(assert (=> b!622526 d!217801))

(declare-fun b!622841 () Bool)

(declare-fun e!378227 () Bool)

(declare-fun isEmpty!4574 (Conc!2060) Bool)

(assert (=> b!622841 (= e!378227 (not (isEmpty!4574 (right!5418 (c!114443 v!6361)))))))

(declare-fun d!217919 () Bool)

(declare-fun res!270962 () Bool)

(declare-fun e!378228 () Bool)

(assert (=> d!217919 (=> res!270962 e!378228)))

(assert (=> d!217919 (= res!270962 (not ((_ is Node!2060) (c!114443 v!6361))))))

(assert (=> d!217919 (= (isBalanced!542 (c!114443 v!6361)) e!378228)))

(declare-fun b!622842 () Bool)

(declare-fun res!270961 () Bool)

(assert (=> b!622842 (=> (not res!270961) (not e!378227))))

(assert (=> b!622842 (= res!270961 (not (isEmpty!4574 (left!5088 (c!114443 v!6361)))))))

(declare-fun b!622843 () Bool)

(declare-fun res!270965 () Bool)

(assert (=> b!622843 (=> (not res!270965) (not e!378227))))

(assert (=> b!622843 (= res!270965 (<= (- (height!258 (left!5088 (c!114443 v!6361))) (height!258 (right!5418 (c!114443 v!6361)))) 1))))

(declare-fun b!622844 () Bool)

(declare-fun res!270960 () Bool)

(assert (=> b!622844 (=> (not res!270960) (not e!378227))))

(assert (=> b!622844 (= res!270960 (isBalanced!542 (left!5088 (c!114443 v!6361))))))

(declare-fun b!622845 () Bool)

(declare-fun res!270964 () Bool)

(assert (=> b!622845 (=> (not res!270964) (not e!378227))))

(assert (=> b!622845 (= res!270964 (isBalanced!542 (right!5418 (c!114443 v!6361))))))

(declare-fun b!622846 () Bool)

(assert (=> b!622846 (= e!378228 e!378227)))

(declare-fun res!270963 () Bool)

(assert (=> b!622846 (=> (not res!270963) (not e!378227))))

(assert (=> b!622846 (= res!270963 (<= (- 1) (- (height!258 (left!5088 (c!114443 v!6361))) (height!258 (right!5418 (c!114443 v!6361))))))))

(assert (= (and d!217919 (not res!270962)) b!622846))

(assert (= (and b!622846 res!270963) b!622843))

(assert (= (and b!622843 res!270965) b!622844))

(assert (= (and b!622844 res!270960) b!622845))

(assert (= (and b!622845 res!270964) b!622842))

(assert (= (and b!622842 res!270961) b!622841))

(declare-fun m!891133 () Bool)

(assert (=> b!622844 m!891133))

(declare-fun m!891135 () Bool)

(assert (=> b!622845 m!891135))

(declare-fun m!891137 () Bool)

(assert (=> b!622842 m!891137))

(assert (=> b!622846 m!891125))

(assert (=> b!622846 m!891127))

(assert (=> b!622843 m!891125))

(assert (=> b!622843 m!891127))

(declare-fun m!891139 () Bool)

(assert (=> b!622841 m!891139))

(assert (=> d!217829 d!217919))

(declare-fun d!217921 () Bool)

(declare-fun isBalanced!544 (Conc!2059) Bool)

(assert (=> d!217921 (= (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))) (isBalanced!544 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))

(declare-fun bs!72129 () Bool)

(assert (= bs!72129 d!217921))

(declare-fun m!891141 () Bool)

(assert (=> bs!72129 m!891141))

(assert (=> tb!54025 d!217921))

(declare-fun d!217923 () Bool)

(declare-fun res!270970 () Bool)

(declare-fun e!378231 () Bool)

(assert (=> d!217923 (=> (not res!270970) (not e!378231))))

(assert (=> d!217923 (= res!270970 (<= (size!5003 (list!2694 (xs!4697 (c!114443 v!6361)))) 512))))

(assert (=> d!217923 (= (inv!8151 (c!114443 v!6361)) e!378231)))

(declare-fun b!622851 () Bool)

(declare-fun res!270971 () Bool)

(assert (=> b!622851 (=> (not res!270971) (not e!378231))))

(assert (=> b!622851 (= res!270971 (= (csize!4351 (c!114443 v!6361)) (size!5003 (list!2694 (xs!4697 (c!114443 v!6361))))))))

(declare-fun b!622852 () Bool)

(assert (=> b!622852 (= e!378231 (and (> (csize!4351 (c!114443 v!6361)) 0) (<= (csize!4351 (c!114443 v!6361)) 512)))))

(assert (= (and d!217923 res!270970) b!622851))

(assert (= (and b!622851 res!270971) b!622852))

(assert (=> d!217923 m!890997))

(assert (=> d!217923 m!890997))

(declare-fun m!891143 () Bool)

(assert (=> d!217923 m!891143))

(assert (=> b!622851 m!890997))

(assert (=> b!622851 m!890997))

(assert (=> b!622851 m!891143))

(assert (=> b!622546 d!217923))

(declare-fun b!622864 () Bool)

(declare-fun e!378237 () List!6425)

(assert (=> b!622864 (= e!378237 (++!1768 (list!2688 (left!5087 (c!114441 (BalanceConc!4127 Empty!2059)))) (list!2688 (right!5417 (c!114441 (BalanceConc!4127 Empty!2059))))))))

(declare-fun b!622863 () Bool)

(declare-fun list!2696 (IArray!4119) List!6425)

(assert (=> b!622863 (= e!378237 (list!2696 (xs!4696 (c!114441 (BalanceConc!4127 Empty!2059)))))))

(declare-fun b!622862 () Bool)

(declare-fun e!378236 () List!6425)

(assert (=> b!622862 (= e!378236 e!378237)))

(declare-fun c!114518 () Bool)

(assert (=> b!622862 (= c!114518 ((_ is Leaf!3222) (c!114441 (BalanceConc!4127 Empty!2059))))))

(declare-fun d!217925 () Bool)

(declare-fun c!114517 () Bool)

(assert (=> d!217925 (= c!114517 ((_ is Empty!2059) (c!114441 (BalanceConc!4127 Empty!2059))))))

(assert (=> d!217925 (= (list!2688 (c!114441 (BalanceConc!4127 Empty!2059))) e!378236)))

(declare-fun b!622861 () Bool)

(assert (=> b!622861 (= e!378236 Nil!6415)))

(assert (= (and d!217925 c!114517) b!622861))

(assert (= (and d!217925 (not c!114517)) b!622862))

(assert (= (and b!622862 c!114518) b!622863))

(assert (= (and b!622862 (not c!114518)) b!622864))

(declare-fun m!891145 () Bool)

(assert (=> b!622864 m!891145))

(declare-fun m!891147 () Bool)

(assert (=> b!622864 m!891147))

(assert (=> b!622864 m!891145))

(assert (=> b!622864 m!891147))

(declare-fun m!891149 () Bool)

(assert (=> b!622864 m!891149))

(declare-fun m!891151 () Bool)

(assert (=> b!622863 m!891151))

(assert (=> d!217811 d!217925))

(declare-fun b!622865 () Bool)

(declare-fun tp!193514 () Bool)

(declare-fun e!378239 () Bool)

(declare-fun tp!193515 () Bool)

(assert (=> b!622865 (= e!378239 (and (inv!8146 (left!5088 (left!5088 (c!114443 v!6361)))) tp!193515 (inv!8146 (right!5418 (left!5088 (c!114443 v!6361)))) tp!193514))))

(declare-fun b!622867 () Bool)

(declare-fun e!378238 () Bool)

(declare-fun tp!193513 () Bool)

(assert (=> b!622867 (= e!378238 tp!193513)))

(declare-fun b!622866 () Bool)

(assert (=> b!622866 (= e!378239 (and (inv!8158 (xs!4697 (left!5088 (c!114443 v!6361)))) e!378238))))

(assert (=> b!622646 (= tp!193482 (and (inv!8146 (left!5088 (c!114443 v!6361))) e!378239))))

(assert (= (and b!622646 ((_ is Node!2060) (left!5088 (c!114443 v!6361)))) b!622865))

(assert (= b!622866 b!622867))

(assert (= (and b!622646 ((_ is Leaf!3223) (left!5088 (c!114443 v!6361)))) b!622866))

(declare-fun m!891153 () Bool)

(assert (=> b!622865 m!891153))

(declare-fun m!891155 () Bool)

(assert (=> b!622865 m!891155))

(declare-fun m!891157 () Bool)

(assert (=> b!622866 m!891157))

(assert (=> b!622646 m!890969))

(declare-fun tp!193517 () Bool)

(declare-fun e!378241 () Bool)

(declare-fun tp!193518 () Bool)

(declare-fun b!622868 () Bool)

(assert (=> b!622868 (= e!378241 (and (inv!8146 (left!5088 (right!5418 (c!114443 v!6361)))) tp!193518 (inv!8146 (right!5418 (right!5418 (c!114443 v!6361)))) tp!193517))))

(declare-fun b!622870 () Bool)

(declare-fun e!378240 () Bool)

(declare-fun tp!193516 () Bool)

(assert (=> b!622870 (= e!378240 tp!193516)))

(declare-fun b!622869 () Bool)

(assert (=> b!622869 (= e!378241 (and (inv!8158 (xs!4697 (right!5418 (c!114443 v!6361)))) e!378240))))

(assert (=> b!622646 (= tp!193481 (and (inv!8146 (right!5418 (c!114443 v!6361))) e!378241))))

(assert (= (and b!622646 ((_ is Node!2060) (right!5418 (c!114443 v!6361)))) b!622868))

(assert (= b!622869 b!622870))

(assert (= (and b!622646 ((_ is Leaf!3223) (right!5418 (c!114443 v!6361)))) b!622869))

(declare-fun m!891159 () Bool)

(assert (=> b!622868 m!891159))

(declare-fun m!891161 () Bool)

(assert (=> b!622868 m!891161))

(declare-fun m!891163 () Bool)

(assert (=> b!622869 m!891163))

(assert (=> b!622646 m!890971))

(declare-fun b!622873 () Bool)

(declare-fun e!378242 () Bool)

(declare-fun tp!193521 () Bool)

(assert (=> b!622873 (= e!378242 tp!193521)))

(declare-fun b!622872 () Bool)

(declare-fun tp!193520 () Bool)

(declare-fun tp!193522 () Bool)

(assert (=> b!622872 (= e!378242 (and tp!193520 tp!193522))))

(declare-fun b!622871 () Bool)

(assert (=> b!622871 (= e!378242 tp_is_empty!3613)))

(declare-fun b!622874 () Bool)

(declare-fun tp!193523 () Bool)

(declare-fun tp!193519 () Bool)

(assert (=> b!622874 (= e!378242 (and tp!193523 tp!193519))))

(assert (=> b!622673 (= tp!193508 e!378242)))

(assert (= (and b!622673 ((_ is ElementMatch!1643) (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))) b!622871))

(assert (= (and b!622673 ((_ is Concat!2977) (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))) b!622872))

(assert (= (and b!622673 ((_ is Star!1643) (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))) b!622873))

(assert (= (and b!622673 ((_ is Union!1643) (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))) b!622874))

(declare-fun b!622877 () Bool)

(declare-fun e!378243 () Bool)

(declare-fun tp!193526 () Bool)

(assert (=> b!622877 (= e!378243 tp!193526)))

(declare-fun b!622876 () Bool)

(declare-fun tp!193525 () Bool)

(declare-fun tp!193527 () Bool)

(assert (=> b!622876 (= e!378243 (and tp!193525 tp!193527))))

(declare-fun b!622875 () Bool)

(assert (=> b!622875 (= e!378243 tp_is_empty!3613)))

(declare-fun b!622878 () Bool)

(declare-fun tp!193528 () Bool)

(declare-fun tp!193524 () Bool)

(assert (=> b!622878 (= e!378243 (and tp!193528 tp!193524))))

(assert (=> b!622673 (= tp!193510 e!378243)))

(assert (= (and b!622673 ((_ is ElementMatch!1643) (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))) b!622875))

(assert (= (and b!622673 ((_ is Concat!2977) (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))) b!622876))

(assert (= (and b!622673 ((_ is Star!1643) (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))) b!622877))

(assert (= (and b!622673 ((_ is Union!1643) (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))) b!622878))

(declare-fun b!622881 () Bool)

(declare-fun e!378244 () Bool)

(declare-fun tp!193531 () Bool)

(assert (=> b!622881 (= e!378244 tp!193531)))

(declare-fun b!622880 () Bool)

(declare-fun tp!193530 () Bool)

(declare-fun tp!193532 () Bool)

(assert (=> b!622880 (= e!378244 (and tp!193530 tp!193532))))

(declare-fun b!622879 () Bool)

(assert (=> b!622879 (= e!378244 tp_is_empty!3613)))

(declare-fun b!622882 () Bool)

(declare-fun tp!193533 () Bool)

(declare-fun tp!193529 () Bool)

(assert (=> b!622882 (= e!378244 (and tp!193533 tp!193529))))

(assert (=> b!622674 (= tp!193509 e!378244)))

(assert (= (and b!622674 ((_ is ElementMatch!1643) (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))) b!622879))

(assert (= (and b!622674 ((_ is Concat!2977) (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))) b!622880))

(assert (= (and b!622674 ((_ is Star!1643) (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))) b!622881))

(assert (= (and b!622674 ((_ is Union!1643) (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))) b!622882))

(declare-fun b!622896 () Bool)

(declare-fun b_free!18241 () Bool)

(declare-fun b_next!18257 () Bool)

(assert (=> b!622896 (= b_free!18241 (not b_next!18257))))

(declare-fun tp!193547 () Bool)

(declare-fun b_and!61907 () Bool)

(assert (=> b!622896 (= tp!193547 b_and!61907)))

(declare-fun b_free!18243 () Bool)

(declare-fun b_next!18259 () Bool)

(assert (=> b!622896 (= b_free!18243 (not b_next!18259))))

(declare-fun t!81948 () Bool)

(declare-fun tb!54029 () Bool)

(assert (=> (and b!622896 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!81948) tb!54029))

(declare-fun result!61034 () Bool)

(assert (= result!61034 result!61014))

(assert (=> b!622606 t!81948))

(assert (=> d!217891 t!81948))

(declare-fun tb!54031 () Bool)

(declare-fun t!81950 () Bool)

(assert (=> (and b!622896 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!81950) tb!54031))

(declare-fun result!61036 () Bool)

(assert (= result!61036 result!61030))

(assert (=> d!217899 t!81950))

(declare-fun tp!193548 () Bool)

(declare-fun b_and!61909 () Bool)

(assert (=> b!622896 (= tp!193548 (and (=> t!81948 result!61034) (=> t!81950 result!61036) b_and!61909))))

(declare-fun e!378258 () Bool)

(declare-fun e!378261 () Bool)

(declare-fun tp!193545 () Bool)

(declare-fun b!622894 () Bool)

(assert (=> b!622894 (= e!378261 (and (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) e!378258 tp!193545))))

(declare-fun e!378257 () Bool)

(assert (=> b!622896 (= e!378257 (and tp!193547 tp!193548))))

(declare-fun e!378262 () Bool)

(assert (=> b!622648 (= tp!193480 e!378262)))

(declare-fun tp!193546 () Bool)

(declare-fun b!622893 () Bool)

(assert (=> b!622893 (= e!378262 (and (inv!8148 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))) e!378261 tp!193546))))

(declare-fun tp!193544 () Bool)

(declare-fun b!622895 () Bool)

(assert (=> b!622895 (= e!378258 (and tp!193544 (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) e!378257))))

(assert (= b!622895 b!622896))

(assert (= b!622894 b!622895))

(assert (= b!622893 b!622894))

(assert (= (and b!622648 ((_ is Cons!6416) (innerList!2118 (xs!4697 (c!114443 v!6361))))) b!622893))

(declare-fun m!891165 () Bool)

(assert (=> b!622894 m!891165))

(declare-fun m!891167 () Bool)

(assert (=> b!622893 m!891167))

(declare-fun m!891169 () Bool)

(assert (=> b!622895 m!891169))

(declare-fun m!891171 () Bool)

(assert (=> b!622895 m!891171))

(declare-fun tp!193555 () Bool)

(declare-fun e!378267 () Bool)

(declare-fun tp!193557 () Bool)

(declare-fun b!622905 () Bool)

(assert (=> b!622905 (= e!378267 (and (inv!8156 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) tp!193557 (inv!8156 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) tp!193555))))

(declare-fun b!622907 () Bool)

(declare-fun e!378268 () Bool)

(declare-fun tp!193556 () Bool)

(assert (=> b!622907 (= e!378268 tp!193556)))

(declare-fun b!622906 () Bool)

(declare-fun inv!8162 (IArray!4119) Bool)

(assert (=> b!622906 (= e!378267 (and (inv!8162 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378268))))

(assert (=> b!622612 (= tp!193457 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) e!378267))))

(assert (= (and b!622612 ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) b!622905))

(assert (= b!622906 b!622907))

(assert (= (and b!622612 ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) b!622906))

(declare-fun m!891173 () Bool)

(assert (=> b!622905 m!891173))

(declare-fun m!891175 () Bool)

(assert (=> b!622905 m!891175))

(declare-fun m!891177 () Bool)

(assert (=> b!622906 m!891177))

(assert (=> b!622612 m!890937))

(declare-fun b!622910 () Bool)

(declare-fun e!378269 () Bool)

(declare-fun tp!193560 () Bool)

(assert (=> b!622910 (= e!378269 tp!193560)))

(declare-fun b!622909 () Bool)

(declare-fun tp!193559 () Bool)

(declare-fun tp!193561 () Bool)

(assert (=> b!622909 (= e!378269 (and tp!193559 tp!193561))))

(declare-fun b!622908 () Bool)

(assert (=> b!622908 (= e!378269 tp_is_empty!3613)))

(declare-fun b!622911 () Bool)

(declare-fun tp!193562 () Bool)

(declare-fun tp!193558 () Bool)

(assert (=> b!622911 (= e!378269 (and tp!193562 tp!193558))))

(assert (=> b!622675 (= tp!193511 e!378269)))

(assert (= (and b!622675 ((_ is ElementMatch!1643) (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))) b!622908))

(assert (= (and b!622675 ((_ is Concat!2977) (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))) b!622909))

(assert (= (and b!622675 ((_ is Star!1643) (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))) b!622910))

(assert (= (and b!622675 ((_ is Union!1643) (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))) b!622911))

(declare-fun b!622914 () Bool)

(declare-fun e!378270 () Bool)

(declare-fun tp!193565 () Bool)

(assert (=> b!622914 (= e!378270 tp!193565)))

(declare-fun b!622913 () Bool)

(declare-fun tp!193564 () Bool)

(declare-fun tp!193566 () Bool)

(assert (=> b!622913 (= e!378270 (and tp!193564 tp!193566))))

(declare-fun b!622912 () Bool)

(assert (=> b!622912 (= e!378270 tp_is_empty!3613)))

(declare-fun b!622915 () Bool)

(declare-fun tp!193567 () Bool)

(declare-fun tp!193563 () Bool)

(assert (=> b!622915 (= e!378270 (and tp!193567 tp!193563))))

(assert (=> b!622675 (= tp!193507 e!378270)))

(assert (= (and b!622675 ((_ is ElementMatch!1643) (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))) b!622912))

(assert (= (and b!622675 ((_ is Concat!2977) (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))) b!622913))

(assert (= (and b!622675 ((_ is Star!1643) (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))) b!622914))

(assert (= (and b!622675 ((_ is Union!1643) (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))) b!622915))

(declare-fun b!622916 () Bool)

(declare-fun e!378271 () Bool)

(declare-fun tp!193568 () Bool)

(assert (=> b!622916 (= e!378271 (and tp_is_empty!3613 tp!193568))))

(assert (=> b!622657 (= tp!193491 e!378271)))

(assert (= (and b!622657 ((_ is Cons!6415) (t!81932 (originalCharacters!1342 separatorToken!136)))) b!622916))

(declare-fun b_lambda!24613 () Bool)

(assert (= b_lambda!24609 (or (and b!622524 b_free!18239) (and b!622896 b_free!18243 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) b_lambda!24613)))

(check-sat (not d!217893) (not b!622846) (not b!622893) (not b!622911) (not d!217889) (not b!622612) (not b_next!18253) (not d!217853) (not d!217895) (not d!217921) (not b!622710) (not b!622870) (not b!622872) b_and!61907 (not d!217899) (not d!217909) (not b!622894) (not b!622914) (not b!622646) (not d!217917) (not b!622916) (not b!622876) (not b!622866) (not b!622913) (not b!622844) (not b!622868) (not b!622790) (not d!217911) (not b!622803) (not b!622687) (not b!622915) (not b!622685) (not b!622711) (not d!217849) (not b!622864) (not b!622882) (not b!622881) (not b!622907) (not b!622842) (not b!622863) (not bm!41131) (not d!217855) (not b!622808) b_and!61895 (not b!622845) (not tb!54027) (not b!622725) (not b!622880) (not d!217901) (not b_lambda!24607) (not b!622851) (not b!622878) (not b!622684) (not b!622905) (not b!622841) (not b!622895) (not b!622681) (not b!622869) (not b!622865) (not b_lambda!24613) (not b!622873) (not b!622801) (not b_next!18259) (not b!622877) b_and!61909 (not b!622807) (not b!622805) (not b!622788) b_and!61905 (not d!217841) (not d!217891) (not b_lambda!24611) (not b!622909) (not b!622800) (not b!622910) (not b!622867) (not b!622874) (not b_next!18255) (not d!217923) (not b!622682) (not b!622819) (not b_next!18257) (not d!217913) (not d!217903) (not b!622827) (not b!622906) (not b!622726) (not b!622843) (not d!217859) tp_is_empty!3613 (not d!217907))
(check-sat (not b_next!18253) b_and!61907 b_and!61895 b_and!61905 (not b_next!18255) (not b_next!18257) (not b_next!18259) b_and!61909)
(get-model)

(assert (=> b!622646 d!217845))

(assert (=> b!622646 d!217847))

(declare-fun b!623056 () Bool)

(declare-fun e!378351 () Bool)

(assert (=> b!623056 (= e!378351 (not (isEmpty!4574 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun d!217957 () Bool)

(declare-fun res!271001 () Bool)

(declare-fun e!378352 () Bool)

(assert (=> d!217957 (=> res!271001 e!378352)))

(assert (=> d!217957 (= res!271001 (not ((_ is Node!2060) (left!5088 (c!114443 v!6361)))))))

(assert (=> d!217957 (= (isBalanced!542 (left!5088 (c!114443 v!6361))) e!378352)))

(declare-fun b!623057 () Bool)

(declare-fun res!271000 () Bool)

(assert (=> b!623057 (=> (not res!271000) (not e!378351))))

(assert (=> b!623057 (= res!271000 (not (isEmpty!4574 (left!5088 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!623058 () Bool)

(declare-fun res!271004 () Bool)

(assert (=> b!623058 (=> (not res!271004) (not e!378351))))

(assert (=> b!623058 (= res!271004 (<= (- (height!258 (left!5088 (left!5088 (c!114443 v!6361)))) (height!258 (right!5418 (left!5088 (c!114443 v!6361))))) 1))))

(declare-fun b!623059 () Bool)

(declare-fun res!270999 () Bool)

(assert (=> b!623059 (=> (not res!270999) (not e!378351))))

(assert (=> b!623059 (= res!270999 (isBalanced!542 (left!5088 (left!5088 (c!114443 v!6361)))))))

(declare-fun b!623060 () Bool)

(declare-fun res!271003 () Bool)

(assert (=> b!623060 (=> (not res!271003) (not e!378351))))

(assert (=> b!623060 (= res!271003 (isBalanced!542 (right!5418 (left!5088 (c!114443 v!6361)))))))

(declare-fun b!623061 () Bool)

(assert (=> b!623061 (= e!378352 e!378351)))

(declare-fun res!271002 () Bool)

(assert (=> b!623061 (=> (not res!271002) (not e!378351))))

(assert (=> b!623061 (= res!271002 (<= (- 1) (- (height!258 (left!5088 (left!5088 (c!114443 v!6361)))) (height!258 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(assert (= (and d!217957 (not res!271001)) b!623061))

(assert (= (and b!623061 res!271002) b!623058))

(assert (= (and b!623058 res!271004) b!623059))

(assert (= (and b!623059 res!270999) b!623060))

(assert (= (and b!623060 res!271003) b!623057))

(assert (= (and b!623057 res!271000) b!623056))

(declare-fun m!891287 () Bool)

(assert (=> b!623059 m!891287))

(declare-fun m!891289 () Bool)

(assert (=> b!623060 m!891289))

(declare-fun m!891291 () Bool)

(assert (=> b!623057 m!891291))

(declare-fun m!891293 () Bool)

(assert (=> b!623061 m!891293))

(declare-fun m!891295 () Bool)

(assert (=> b!623061 m!891295))

(assert (=> b!623058 m!891293))

(assert (=> b!623058 m!891295))

(declare-fun m!891297 () Bool)

(assert (=> b!623056 m!891297))

(assert (=> b!622844 d!217957))

(declare-fun d!217959 () Bool)

(assert (=> d!217959 (= (inv!8158 (xs!4697 (left!5088 (c!114443 v!6361)))) (<= (size!5003 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))) 2147483647))))

(declare-fun bs!72135 () Bool)

(assert (= bs!72135 d!217959))

(declare-fun m!891299 () Bool)

(assert (=> bs!72135 m!891299))

(assert (=> b!622866 d!217959))

(declare-fun d!217961 () Bool)

(declare-fun c!114550 () Bool)

(assert (=> d!217961 (= c!114550 ((_ is Nil!6415) lt!266359))))

(declare-fun e!378355 () (InoxSet C!4212))

(assert (=> d!217961 (= (content!1153 lt!266359) e!378355)))

(declare-fun b!623066 () Bool)

(assert (=> b!623066 (= e!378355 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623067 () Bool)

(assert (=> b!623067 (= e!378355 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 lt!266359) true) (content!1153 (t!81932 lt!266359))))))

(assert (= (and d!217961 c!114550) b!623066))

(assert (= (and d!217961 (not c!114550)) b!623067))

(declare-fun m!891301 () Bool)

(assert (=> b!623067 m!891301))

(declare-fun m!891303 () Bool)

(assert (=> b!623067 m!891303))

(assert (=> d!217889 d!217961))

(declare-fun d!217963 () Bool)

(declare-fun c!114551 () Bool)

(assert (=> d!217963 (= c!114551 ((_ is Nil!6415) (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))

(declare-fun e!378356 () (InoxSet C!4212))

(assert (=> d!217963 (= (content!1153 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) e!378356)))

(declare-fun b!623068 () Bool)

(assert (=> b!623068 (= e!378356 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623069 () Bool)

(assert (=> b!623069 (= e!378356 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) true) (content!1153 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (= (and d!217963 c!114551) b!623068))

(assert (= (and d!217963 (not c!114551)) b!623069))

(declare-fun m!891305 () Bool)

(assert (=> b!623069 m!891305))

(declare-fun m!891307 () Bool)

(assert (=> b!623069 m!891307))

(assert (=> d!217889 d!217963))

(declare-fun d!217965 () Bool)

(declare-fun c!114552 () Bool)

(assert (=> d!217965 (= c!114552 ((_ is Nil!6415) (list!2687 (charsOf!897 separatorToken!136))))))

(declare-fun e!378357 () (InoxSet C!4212))

(assert (=> d!217965 (= (content!1153 (list!2687 (charsOf!897 separatorToken!136))) e!378357)))

(declare-fun b!623070 () Bool)

(assert (=> b!623070 (= e!378357 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623071 () Bool)

(assert (=> b!623071 (= e!378357 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (list!2687 (charsOf!897 separatorToken!136))) true) (content!1153 (t!81932 (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (= (and d!217965 c!114552) b!623070))

(assert (= (and d!217965 (not c!114552)) b!623071))

(declare-fun m!891309 () Bool)

(assert (=> b!623071 m!891309))

(declare-fun m!891311 () Bool)

(assert (=> b!623071 m!891311))

(assert (=> d!217889 d!217965))

(declare-fun d!217967 () Bool)

(assert (=> d!217967 (= (height!258 (left!5088 (c!114443 v!6361))) (ite ((_ is Empty!2060) (left!5088 (c!114443 v!6361))) 0 (ite ((_ is Leaf!3223) (left!5088 (c!114443 v!6361))) 1 (cheight!2271 (left!5088 (c!114443 v!6361))))))))

(assert (=> b!622846 d!217967))

(declare-fun d!217969 () Bool)

(assert (=> d!217969 (= (height!258 (right!5418 (c!114443 v!6361))) (ite ((_ is Empty!2060) (right!5418 (c!114443 v!6361))) 0 (ite ((_ is Leaf!3223) (right!5418 (c!114443 v!6361))) 1 (cheight!2271 (right!5418 (c!114443 v!6361))))))))

(assert (=> b!622846 d!217969))

(declare-fun d!217971 () Bool)

(declare-fun lt!266385 () Int)

(assert (=> d!217971 (= lt!266385 (size!5003 (list!2689 (left!5088 (c!114443 v!6361)))))))

(assert (=> d!217971 (= lt!266385 (ite ((_ is Empty!2060) (left!5088 (c!114443 v!6361))) 0 (ite ((_ is Leaf!3223) (left!5088 (c!114443 v!6361))) (csize!4351 (left!5088 (c!114443 v!6361))) (csize!4350 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!217971 (= (size!5004 (left!5088 (c!114443 v!6361))) lt!266385)))

(declare-fun bs!72136 () Bool)

(assert (= bs!72136 d!217971))

(assert (=> bs!72136 m!890999))

(assert (=> bs!72136 m!890999))

(declare-fun m!891313 () Bool)

(assert (=> bs!72136 m!891313))

(assert (=> d!217913 d!217971))

(declare-fun d!217973 () Bool)

(declare-fun lt!266386 () Int)

(assert (=> d!217973 (= lt!266386 (size!5003 (list!2689 (right!5418 (c!114443 v!6361)))))))

(assert (=> d!217973 (= lt!266386 (ite ((_ is Empty!2060) (right!5418 (c!114443 v!6361))) 0 (ite ((_ is Leaf!3223) (right!5418 (c!114443 v!6361))) (csize!4351 (right!5418 (c!114443 v!6361))) (csize!4350 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!217973 (= (size!5004 (right!5418 (c!114443 v!6361))) lt!266386)))

(declare-fun bs!72137 () Bool)

(assert (= bs!72137 d!217973))

(assert (=> bs!72137 m!891001))

(assert (=> bs!72137 m!891001))

(declare-fun m!891315 () Bool)

(assert (=> bs!72137 m!891315))

(assert (=> d!217913 d!217973))

(declare-fun d!217975 () Bool)

(assert (=> d!217975 (= (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (= (mod (str.len (value!42169 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) 2) 0))))

(assert (=> b!622895 d!217975))

(declare-fun d!217977 () Bool)

(declare-fun res!271005 () Bool)

(declare-fun e!378358 () Bool)

(assert (=> d!217977 (=> (not res!271005) (not e!378358))))

(assert (=> d!217977 (= res!271005 (semiInverseModEq!523 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(assert (=> d!217977 (= (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) e!378358)))

(declare-fun b!623072 () Bool)

(assert (=> b!623072 (= e!378358 (equivClasses!506 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(assert (= (and d!217977 res!271005) b!623072))

(declare-fun m!891317 () Bool)

(assert (=> d!217977 m!891317))

(declare-fun m!891319 () Bool)

(assert (=> b!623072 m!891319))

(assert (=> b!622895 d!217977))

(declare-fun d!217979 () Bool)

(assert (=> d!217979 (= (max!0 (height!258 (left!5088 (c!114443 v!6361))) (height!258 (right!5418 (c!114443 v!6361)))) (ite (< (height!258 (left!5088 (c!114443 v!6361))) (height!258 (right!5418 (c!114443 v!6361)))) (height!258 (right!5418 (c!114443 v!6361))) (height!258 (left!5088 (c!114443 v!6361)))))))

(assert (=> b!622827 d!217979))

(assert (=> b!622827 d!217967))

(assert (=> b!622827 d!217969))

(declare-fun lt!266387 () List!6425)

(declare-fun b!623076 () Bool)

(declare-fun e!378360 () Bool)

(assert (=> b!623076 (= e!378360 (or (not (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136) Nil!6415)) (= lt!266387 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))))))

(declare-fun e!378359 () List!6425)

(declare-fun b!623074 () Bool)

(assert (=> b!623074 (= e!378359 (Cons!6415 (h!11816 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))) (++!1768 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))))

(declare-fun b!623075 () Bool)

(declare-fun res!271006 () Bool)

(assert (=> b!623075 (=> (not res!271006) (not e!378360))))

(assert (=> b!623075 (= res!271006 (= (size!5005 lt!266387) (+ (size!5005 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))) (size!5005 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))))

(declare-fun b!623073 () Bool)

(assert (=> b!623073 (= e!378359 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))

(declare-fun d!217981 () Bool)

(assert (=> d!217981 e!378360))

(declare-fun res!271007 () Bool)

(assert (=> d!217981 (=> (not res!271007) (not e!378360))))

(assert (=> d!217981 (= res!271007 (= (content!1153 lt!266387) ((_ map or) (content!1153 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))) (content!1153 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))))

(assert (=> d!217981 (= lt!266387 e!378359)))

(declare-fun c!114553 () Bool)

(assert (=> d!217981 (= c!114553 ((_ is Nil!6415) (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!217981 (= (++!1768 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)) lt!266387)))

(assert (= (and d!217981 c!114553) b!623073))

(assert (= (and d!217981 (not c!114553)) b!623074))

(assert (= (and d!217981 res!271007) b!623075))

(assert (= (and b!623075 res!271006) b!623076))

(assert (=> b!623074 m!890889))

(declare-fun m!891321 () Bool)

(assert (=> b!623074 m!891321))

(declare-fun m!891323 () Bool)

(assert (=> b!623075 m!891323))

(declare-fun m!891325 () Bool)

(assert (=> b!623075 m!891325))

(assert (=> b!623075 m!890889))

(assert (=> b!623075 m!891107))

(declare-fun m!891327 () Bool)

(assert (=> d!217981 m!891327))

(declare-fun m!891329 () Bool)

(assert (=> d!217981 m!891329))

(assert (=> d!217981 m!890889))

(assert (=> d!217981 m!891113))

(assert (=> b!622807 d!217981))

(declare-fun d!217983 () Bool)

(declare-fun res!271012 () Bool)

(declare-fun e!378363 () Bool)

(assert (=> d!217983 (=> (not res!271012) (not e!378363))))

(assert (=> d!217983 (= res!271012 (<= (size!5005 (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) 512))))

(assert (=> d!217983 (= (inv!8161 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) e!378363)))

(declare-fun b!623081 () Bool)

(declare-fun res!271013 () Bool)

(assert (=> b!623081 (=> (not res!271013) (not e!378363))))

(assert (=> b!623081 (= res!271013 (= (csize!4349 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) (size!5005 (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!623082 () Bool)

(assert (=> b!623082 (= e!378363 (and (> (csize!4349 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) 0) (<= (csize!4349 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) 512)))))

(assert (= (and d!217983 res!271012) b!623081))

(assert (= (and b!623081 res!271013) b!623082))

(declare-fun m!891331 () Bool)

(assert (=> d!217983 m!891331))

(assert (=> d!217983 m!891331))

(declare-fun m!891333 () Bool)

(assert (=> d!217983 m!891333))

(assert (=> b!623081 m!891331))

(assert (=> b!623081 m!891331))

(assert (=> b!623081 m!891333))

(assert (=> b!622790 d!217983))

(declare-fun d!217985 () Bool)

(declare-fun e!378368 () Bool)

(assert (=> d!217985 e!378368))

(declare-fun res!271018 () Bool)

(assert (=> d!217985 (=> (not res!271018) (not e!378368))))

(declare-fun lt!266390 () List!6426)

(assert (=> d!217985 (= res!271018 (= (content!1152 lt!266390) ((_ map or) (content!1152 (list!2689 (left!5088 (c!114443 v!6361)))) (content!1152 (list!2689 (right!5418 (c!114443 v!6361)))))))))

(declare-fun e!378369 () List!6426)

(assert (=> d!217985 (= lt!266390 e!378369)))

(declare-fun c!114556 () Bool)

(assert (=> d!217985 (= c!114556 ((_ is Nil!6416) (list!2689 (left!5088 (c!114443 v!6361)))))))

(assert (=> d!217985 (= (++!1770 (list!2689 (left!5088 (c!114443 v!6361))) (list!2689 (right!5418 (c!114443 v!6361)))) lt!266390)))

(declare-fun b!623094 () Bool)

(assert (=> b!623094 (= e!378368 (or (not (= (list!2689 (right!5418 (c!114443 v!6361))) Nil!6416)) (= lt!266390 (list!2689 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!623092 () Bool)

(assert (=> b!623092 (= e!378369 (Cons!6416 (h!11817 (list!2689 (left!5088 (c!114443 v!6361)))) (++!1770 (t!81933 (list!2689 (left!5088 (c!114443 v!6361)))) (list!2689 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623091 () Bool)

(assert (=> b!623091 (= e!378369 (list!2689 (right!5418 (c!114443 v!6361))))))

(declare-fun b!623093 () Bool)

(declare-fun res!271019 () Bool)

(assert (=> b!623093 (=> (not res!271019) (not e!378368))))

(assert (=> b!623093 (= res!271019 (= (size!5003 lt!266390) (+ (size!5003 (list!2689 (left!5088 (c!114443 v!6361)))) (size!5003 (list!2689 (right!5418 (c!114443 v!6361)))))))))

(assert (= (and d!217985 c!114556) b!623091))

(assert (= (and d!217985 (not c!114556)) b!623092))

(assert (= (and d!217985 res!271018) b!623093))

(assert (= (and b!623093 res!271019) b!623094))

(declare-fun m!891335 () Bool)

(assert (=> d!217985 m!891335))

(assert (=> d!217985 m!890999))

(declare-fun m!891337 () Bool)

(assert (=> d!217985 m!891337))

(assert (=> d!217985 m!891001))

(declare-fun m!891339 () Bool)

(assert (=> d!217985 m!891339))

(assert (=> b!623092 m!891001))

(declare-fun m!891341 () Bool)

(assert (=> b!623092 m!891341))

(declare-fun m!891343 () Bool)

(assert (=> b!623093 m!891343))

(assert (=> b!623093 m!890999))

(assert (=> b!623093 m!891313))

(assert (=> b!623093 m!891001))

(assert (=> b!623093 m!891315))

(assert (=> b!622726 d!217985))

(declare-fun b!623095 () Bool)

(declare-fun e!378370 () List!6426)

(assert (=> b!623095 (= e!378370 Nil!6416)))

(declare-fun b!623097 () Bool)

(declare-fun e!378371 () List!6426)

(assert (=> b!623097 (= e!378371 (list!2694 (xs!4697 (left!5088 (c!114443 v!6361)))))))

(declare-fun b!623098 () Bool)

(assert (=> b!623098 (= e!378371 (++!1770 (list!2689 (left!5088 (left!5088 (c!114443 v!6361)))) (list!2689 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun d!217987 () Bool)

(declare-fun c!114557 () Bool)

(assert (=> d!217987 (= c!114557 ((_ is Empty!2060) (left!5088 (c!114443 v!6361))))))

(assert (=> d!217987 (= (list!2689 (left!5088 (c!114443 v!6361))) e!378370)))

(declare-fun b!623096 () Bool)

(assert (=> b!623096 (= e!378370 e!378371)))

(declare-fun c!114558 () Bool)

(assert (=> b!623096 (= c!114558 ((_ is Leaf!3223) (left!5088 (c!114443 v!6361))))))

(assert (= (and d!217987 c!114557) b!623095))

(assert (= (and d!217987 (not c!114557)) b!623096))

(assert (= (and b!623096 c!114558) b!623097))

(assert (= (and b!623096 (not c!114558)) b!623098))

(declare-fun m!891345 () Bool)

(assert (=> b!623097 m!891345))

(declare-fun m!891347 () Bool)

(assert (=> b!623098 m!891347))

(declare-fun m!891349 () Bool)

(assert (=> b!623098 m!891349))

(assert (=> b!623098 m!891347))

(assert (=> b!623098 m!891349))

(declare-fun m!891351 () Bool)

(assert (=> b!623098 m!891351))

(assert (=> b!622726 d!217987))

(declare-fun b!623099 () Bool)

(declare-fun e!378372 () List!6426)

(assert (=> b!623099 (= e!378372 Nil!6416)))

(declare-fun b!623101 () Bool)

(declare-fun e!378373 () List!6426)

(assert (=> b!623101 (= e!378373 (list!2694 (xs!4697 (right!5418 (c!114443 v!6361)))))))

(declare-fun b!623102 () Bool)

(assert (=> b!623102 (= e!378373 (++!1770 (list!2689 (left!5088 (right!5418 (c!114443 v!6361)))) (list!2689 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun d!217989 () Bool)

(declare-fun c!114559 () Bool)

(assert (=> d!217989 (= c!114559 ((_ is Empty!2060) (right!5418 (c!114443 v!6361))))))

(assert (=> d!217989 (= (list!2689 (right!5418 (c!114443 v!6361))) e!378372)))

(declare-fun b!623100 () Bool)

(assert (=> b!623100 (= e!378372 e!378373)))

(declare-fun c!114560 () Bool)

(assert (=> b!623100 (= c!114560 ((_ is Leaf!3223) (right!5418 (c!114443 v!6361))))))

(assert (= (and d!217989 c!114559) b!623099))

(assert (= (and d!217989 (not c!114559)) b!623100))

(assert (= (and b!623100 c!114560) b!623101))

(assert (= (and b!623100 (not c!114560)) b!623102))

(declare-fun m!891353 () Bool)

(assert (=> b!623101 m!891353))

(declare-fun m!891355 () Bool)

(assert (=> b!623102 m!891355))

(declare-fun m!891357 () Bool)

(assert (=> b!623102 m!891357))

(assert (=> b!623102 m!891355))

(assert (=> b!623102 m!891357))

(declare-fun m!891359 () Bool)

(assert (=> b!623102 m!891359))

(assert (=> b!622726 d!217989))

(declare-fun d!217991 () Bool)

(declare-fun res!271020 () Bool)

(declare-fun e!378374 () Bool)

(assert (=> d!217991 (=> (not res!271020) (not e!378374))))

(assert (=> d!217991 (= res!271020 (= (csize!4350 (right!5418 (c!114443 v!6361))) (+ (size!5004 (left!5088 (right!5418 (c!114443 v!6361)))) (size!5004 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(assert (=> d!217991 (= (inv!8150 (right!5418 (c!114443 v!6361))) e!378374)))

(declare-fun b!623103 () Bool)

(declare-fun res!271021 () Bool)

(assert (=> b!623103 (=> (not res!271021) (not e!378374))))

(assert (=> b!623103 (= res!271021 (and (not (= (left!5088 (right!5418 (c!114443 v!6361))) Empty!2060)) (not (= (right!5418 (right!5418 (c!114443 v!6361))) Empty!2060))))))

(declare-fun b!623104 () Bool)

(declare-fun res!271022 () Bool)

(assert (=> b!623104 (=> (not res!271022) (not e!378374))))

(assert (=> b!623104 (= res!271022 (= (cheight!2271 (right!5418 (c!114443 v!6361))) (+ (max!0 (height!258 (left!5088 (right!5418 (c!114443 v!6361)))) (height!258 (right!5418 (right!5418 (c!114443 v!6361))))) 1)))))

(declare-fun b!623105 () Bool)

(assert (=> b!623105 (= e!378374 (<= 0 (cheight!2271 (right!5418 (c!114443 v!6361)))))))

(assert (= (and d!217991 res!271020) b!623103))

(assert (= (and b!623103 res!271021) b!623104))

(assert (= (and b!623104 res!271022) b!623105))

(declare-fun m!891361 () Bool)

(assert (=> d!217991 m!891361))

(declare-fun m!891363 () Bool)

(assert (=> d!217991 m!891363))

(declare-fun m!891365 () Bool)

(assert (=> b!623104 m!891365))

(declare-fun m!891367 () Bool)

(assert (=> b!623104 m!891367))

(assert (=> b!623104 m!891365))

(assert (=> b!623104 m!891367))

(declare-fun m!891369 () Bool)

(assert (=> b!623104 m!891369))

(assert (=> b!622685 d!217991))

(declare-fun d!217993 () Bool)

(declare-fun lt!266391 () Int)

(assert (=> d!217993 (>= lt!266391 0)))

(declare-fun e!378375 () Int)

(assert (=> d!217993 (= lt!266391 e!378375)))

(declare-fun c!114561 () Bool)

(assert (=> d!217993 (= c!114561 ((_ is Nil!6416) (list!2689 (c!114443 v!6361))))))

(assert (=> d!217993 (= (size!5003 (list!2689 (c!114443 v!6361))) lt!266391)))

(declare-fun b!623106 () Bool)

(assert (=> b!623106 (= e!378375 0)))

(declare-fun b!623107 () Bool)

(assert (=> b!623107 (= e!378375 (+ 1 (size!5003 (t!81933 (list!2689 (c!114443 v!6361))))))))

(assert (= (and d!217993 c!114561) b!623106))

(assert (= (and d!217993 (not c!114561)) b!623107))

(declare-fun m!891371 () Bool)

(assert (=> b!623107 m!891371))

(assert (=> d!217909 d!217993))

(assert (=> d!217909 d!217851))

(declare-fun d!217995 () Bool)

(declare-fun res!271023 () Bool)

(declare-fun e!378376 () Bool)

(assert (=> d!217995 (=> (not res!271023) (not e!378376))))

(assert (=> d!217995 (= res!271023 (<= (size!5003 (list!2694 (xs!4697 (right!5418 (c!114443 v!6361))))) 512))))

(assert (=> d!217995 (= (inv!8151 (right!5418 (c!114443 v!6361))) e!378376)))

(declare-fun b!623108 () Bool)

(declare-fun res!271024 () Bool)

(assert (=> b!623108 (=> (not res!271024) (not e!378376))))

(assert (=> b!623108 (= res!271024 (= (csize!4351 (right!5418 (c!114443 v!6361))) (size!5003 (list!2694 (xs!4697 (right!5418 (c!114443 v!6361)))))))))

(declare-fun b!623109 () Bool)

(assert (=> b!623109 (= e!378376 (and (> (csize!4351 (right!5418 (c!114443 v!6361))) 0) (<= (csize!4351 (right!5418 (c!114443 v!6361))) 512)))))

(assert (= (and d!217995 res!271023) b!623108))

(assert (= (and b!623108 res!271024) b!623109))

(assert (=> d!217995 m!891353))

(assert (=> d!217995 m!891353))

(declare-fun m!891373 () Bool)

(assert (=> d!217995 m!891373))

(assert (=> b!623108 m!891353))

(assert (=> b!623108 m!891353))

(assert (=> b!623108 m!891373))

(assert (=> b!622687 d!217995))

(declare-fun d!217997 () Bool)

(declare-fun lt!266394 () Bool)

(declare-fun isEmpty!4575 (List!6426) Bool)

(assert (=> d!217997 (= lt!266394 (isEmpty!4575 (list!2689 (left!5088 (c!114443 v!6361)))))))

(assert (=> d!217997 (= lt!266394 (= (size!5004 (left!5088 (c!114443 v!6361))) 0))))

(assert (=> d!217997 (= (isEmpty!4574 (left!5088 (c!114443 v!6361))) lt!266394)))

(declare-fun bs!72138 () Bool)

(assert (= bs!72138 d!217997))

(assert (=> bs!72138 m!890999))

(assert (=> bs!72138 m!890999))

(declare-fun m!891375 () Bool)

(assert (=> bs!72138 m!891375))

(assert (=> bs!72138 m!891121))

(assert (=> b!622842 d!217997))

(declare-fun lt!266395 () List!6425)

(declare-fun b!623113 () Bool)

(declare-fun e!378378 () Bool)

(assert (=> b!623113 (= e!378378 (or (not (= (list!2687 (charsOf!897 separatorToken!136)) Nil!6415)) (= lt!266395 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!623111 () Bool)

(declare-fun e!378377 () List!6425)

(assert (=> b!623111 (= e!378377 (Cons!6415 (h!11816 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) (++!1768 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun b!623112 () Bool)

(declare-fun res!271026 () Bool)

(assert (=> b!623112 (=> (not res!271026) (not e!378378))))

(assert (=> b!623112 (= res!271026 (= (size!5005 lt!266395) (+ (size!5005 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) (size!5005 (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623110 () Bool)

(assert (=> b!623110 (= e!378377 (list!2687 (charsOf!897 separatorToken!136)))))

(declare-fun d!217999 () Bool)

(assert (=> d!217999 e!378378))

(declare-fun res!271027 () Bool)

(assert (=> d!217999 (=> (not res!271027) (not e!378378))))

(assert (=> d!217999 (= res!271027 (= (content!1153 lt!266395) ((_ map or) (content!1153 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) (content!1153 (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!217999 (= lt!266395 e!378377)))

(declare-fun c!114562 () Bool)

(assert (=> d!217999 (= c!114562 ((_ is Nil!6415) (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(assert (=> d!217999 (= (++!1768 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))) lt!266395)))

(assert (= (and d!217999 c!114562) b!623110))

(assert (= (and d!217999 (not c!114562)) b!623111))

(assert (= (and d!217999 res!271027) b!623112))

(assert (= (and b!623112 res!271026) b!623113))

(assert (=> b!623111 m!890895))

(declare-fun m!891377 () Bool)

(assert (=> b!623111 m!891377))

(declare-fun m!891379 () Bool)

(assert (=> b!623112 m!891379))

(declare-fun m!891381 () Bool)

(assert (=> b!623112 m!891381))

(assert (=> b!623112 m!890895))

(assert (=> b!623112 m!891069))

(declare-fun m!891383 () Bool)

(assert (=> d!217999 m!891383))

(assert (=> d!217999 m!891307))

(assert (=> d!217999 m!890895))

(assert (=> d!217999 m!891075))

(assert (=> b!622800 d!217999))

(declare-fun d!218001 () Bool)

(assert (=> d!218001 (= (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))) (isBalanced!544 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun bs!72139 () Bool)

(assert (= bs!72139 d!218001))

(declare-fun m!891385 () Bool)

(assert (=> bs!72139 m!891385))

(assert (=> tb!54027 d!218001))

(assert (=> d!217907 d!217851))

(declare-fun d!218003 () Bool)

(declare-fun c!114563 () Bool)

(assert (=> d!218003 (= c!114563 ((_ is Node!2059) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun e!378379 () Bool)

(assert (=> d!218003 (= (inv!8156 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378379)))

(declare-fun b!623114 () Bool)

(assert (=> b!623114 (= e!378379 (inv!8160 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun b!623115 () Bool)

(declare-fun e!378380 () Bool)

(assert (=> b!623115 (= e!378379 e!378380)))

(declare-fun res!271028 () Bool)

(assert (=> b!623115 (= res!271028 (not ((_ is Leaf!3222) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> b!623115 (=> res!271028 e!378380)))

(declare-fun b!623116 () Bool)

(assert (=> b!623116 (= e!378380 (inv!8161 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(assert (= (and d!218003 c!114563) b!623114))

(assert (= (and d!218003 (not c!114563)) b!623115))

(assert (= (and b!623115 (not res!271028)) b!623116))

(declare-fun m!891387 () Bool)

(assert (=> b!623114 m!891387))

(declare-fun m!891389 () Bool)

(assert (=> b!623116 m!891389))

(assert (=> b!622905 d!218003))

(declare-fun d!218005 () Bool)

(declare-fun c!114564 () Bool)

(assert (=> d!218005 (= c!114564 ((_ is Node!2059) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun e!378381 () Bool)

(assert (=> d!218005 (= (inv!8156 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378381)))

(declare-fun b!623117 () Bool)

(assert (=> b!623117 (= e!378381 (inv!8160 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun b!623118 () Bool)

(declare-fun e!378382 () Bool)

(assert (=> b!623118 (= e!378381 e!378382)))

(declare-fun res!271029 () Bool)

(assert (=> b!623118 (= res!271029 (not ((_ is Leaf!3222) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> b!623118 (=> res!271029 e!378382)))

(declare-fun b!623119 () Bool)

(assert (=> b!623119 (= e!378382 (inv!8161 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(assert (= (and d!218005 c!114564) b!623117))

(assert (= (and d!218005 (not c!114564)) b!623118))

(assert (= (and b!623118 (not res!271029)) b!623119))

(declare-fun m!891391 () Bool)

(assert (=> b!623117 m!891391))

(declare-fun m!891393 () Bool)

(assert (=> b!623119 m!891393))

(assert (=> b!622905 d!218005))

(declare-fun d!218007 () Bool)

(declare-fun c!114565 () Bool)

(assert (=> d!218007 (= c!114565 ((_ is Node!2060) (left!5088 (right!5418 (c!114443 v!6361)))))))

(declare-fun e!378383 () Bool)

(assert (=> d!218007 (= (inv!8146 (left!5088 (right!5418 (c!114443 v!6361)))) e!378383)))

(declare-fun b!623120 () Bool)

(assert (=> b!623120 (= e!378383 (inv!8150 (left!5088 (right!5418 (c!114443 v!6361)))))))

(declare-fun b!623121 () Bool)

(declare-fun e!378384 () Bool)

(assert (=> b!623121 (= e!378383 e!378384)))

(declare-fun res!271030 () Bool)

(assert (=> b!623121 (= res!271030 (not ((_ is Leaf!3223) (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (=> b!623121 (=> res!271030 e!378384)))

(declare-fun b!623122 () Bool)

(assert (=> b!623122 (= e!378384 (inv!8151 (left!5088 (right!5418 (c!114443 v!6361)))))))

(assert (= (and d!218007 c!114565) b!623120))

(assert (= (and d!218007 (not c!114565)) b!623121))

(assert (= (and b!623121 (not res!271030)) b!623122))

(declare-fun m!891395 () Bool)

(assert (=> b!623120 m!891395))

(declare-fun m!891397 () Bool)

(assert (=> b!623122 m!891397))

(assert (=> b!622868 d!218007))

(declare-fun d!218009 () Bool)

(declare-fun c!114566 () Bool)

(assert (=> d!218009 (= c!114566 ((_ is Node!2060) (right!5418 (right!5418 (c!114443 v!6361)))))))

(declare-fun e!378385 () Bool)

(assert (=> d!218009 (= (inv!8146 (right!5418 (right!5418 (c!114443 v!6361)))) e!378385)))

(declare-fun b!623123 () Bool)

(assert (=> b!623123 (= e!378385 (inv!8150 (right!5418 (right!5418 (c!114443 v!6361)))))))

(declare-fun b!623124 () Bool)

(declare-fun e!378386 () Bool)

(assert (=> b!623124 (= e!378385 e!378386)))

(declare-fun res!271031 () Bool)

(assert (=> b!623124 (= res!271031 (not ((_ is Leaf!3223) (right!5418 (right!5418 (c!114443 v!6361))))))))

(assert (=> b!623124 (=> res!271031 e!378386)))

(declare-fun b!623125 () Bool)

(assert (=> b!623125 (= e!378386 (inv!8151 (right!5418 (right!5418 (c!114443 v!6361)))))))

(assert (= (and d!218009 c!114566) b!623123))

(assert (= (and d!218009 (not c!114566)) b!623124))

(assert (= (and b!623124 (not res!271031)) b!623125))

(declare-fun m!891399 () Bool)

(assert (=> b!623123 m!891399))

(declare-fun m!891401 () Bool)

(assert (=> b!623125 m!891401))

(assert (=> b!622868 d!218009))

(declare-fun d!218011 () Bool)

(declare-fun res!271032 () Bool)

(declare-fun e!378387 () Bool)

(assert (=> d!218011 (=> (not res!271032) (not e!378387))))

(assert (=> d!218011 (= res!271032 (not (isEmpty!4572 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(assert (=> d!218011 (= (inv!8148 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))) e!378387)))

(declare-fun b!623126 () Bool)

(declare-fun res!271033 () Bool)

(assert (=> b!623126 (=> (not res!271033) (not e!378387))))

(assert (=> b!623126 (= res!271033 (= (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))) (list!2687 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(declare-fun b!623127 () Bool)

(assert (=> b!623127 (= e!378387 (= (size!5000 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))) (size!5005 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(assert (= (and d!218011 res!271032) b!623126))

(assert (= (and b!623126 res!271033) b!623127))

(declare-fun b_lambda!24621 () Bool)

(assert (=> (not b_lambda!24621) (not b!623126)))

(declare-fun t!81961 () Bool)

(declare-fun tb!54039 () Bool)

(assert (=> (and b!622524 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!81961) tb!54039))

(declare-fun b!623128 () Bool)

(declare-fun e!378388 () Bool)

(declare-fun tp!193626 () Bool)

(assert (=> b!623128 (= e!378388 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) tp!193626))))

(declare-fun result!61050 () Bool)

(assert (=> tb!54039 (= result!61050 (and (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) e!378388))))

(assert (= tb!54039 b!623128))

(declare-fun m!891403 () Bool)

(assert (=> b!623128 m!891403))

(declare-fun m!891405 () Bool)

(assert (=> tb!54039 m!891405))

(assert (=> b!623126 t!81961))

(declare-fun b_and!61919 () Bool)

(assert (= b_and!61905 (and (=> t!81961 result!61050) b_and!61919)))

(declare-fun t!81963 () Bool)

(declare-fun tb!54041 () Bool)

(assert (=> (and b!622896 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!81963) tb!54041))

(declare-fun result!61052 () Bool)

(assert (= result!61052 result!61050))

(assert (=> b!623126 t!81963))

(declare-fun b_and!61921 () Bool)

(assert (= b_and!61909 (and (=> t!81963 result!61052) b_and!61921)))

(declare-fun m!891407 () Bool)

(assert (=> d!218011 m!891407))

(declare-fun m!891409 () Bool)

(assert (=> b!623126 m!891409))

(assert (=> b!623126 m!891409))

(declare-fun m!891411 () Bool)

(assert (=> b!623126 m!891411))

(declare-fun m!891413 () Bool)

(assert (=> b!623127 m!891413))

(assert (=> b!622893 d!218011))

(declare-fun d!218013 () Bool)

(declare-fun res!271040 () Bool)

(declare-fun e!378391 () Bool)

(assert (=> d!218013 (=> (not res!271040) (not e!378391))))

(declare-fun size!5008 (Conc!2059) Int)

(assert (=> d!218013 (= res!271040 (= (csize!4348 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) (+ (size!5008 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (size!5008 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> d!218013 (= (inv!8160 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) e!378391)))

(declare-fun b!623135 () Bool)

(declare-fun res!271041 () Bool)

(assert (=> b!623135 (=> (not res!271041) (not e!378391))))

(assert (=> b!623135 (= res!271041 (and (not (= (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) Empty!2059)) (not (= (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) Empty!2059))))))

(declare-fun b!623136 () Bool)

(declare-fun res!271042 () Bool)

(assert (=> b!623136 (=> (not res!271042) (not e!378391))))

(declare-fun height!259 (Conc!2059) Int)

(assert (=> b!623136 (= res!271042 (= (cheight!2270 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) (+ (max!0 (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) 1)))))

(declare-fun b!623137 () Bool)

(assert (=> b!623137 (= e!378391 (<= 0 (cheight!2270 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(assert (= (and d!218013 res!271040) b!623135))

(assert (= (and b!623135 res!271041) b!623136))

(assert (= (and b!623136 res!271042) b!623137))

(declare-fun m!891415 () Bool)

(assert (=> d!218013 m!891415))

(declare-fun m!891417 () Bool)

(assert (=> d!218013 m!891417))

(declare-fun m!891419 () Bool)

(assert (=> b!623136 m!891419))

(declare-fun m!891421 () Bool)

(assert (=> b!623136 m!891421))

(assert (=> b!623136 m!891419))

(assert (=> b!623136 m!891421))

(declare-fun m!891423 () Bool)

(assert (=> b!623136 m!891423))

(assert (=> b!622788 d!218013))

(assert (=> bm!41131 d!217993))

(declare-fun d!218015 () Bool)

(declare-fun lt!266396 () Int)

(assert (=> d!218015 (>= lt!266396 0)))

(declare-fun e!378392 () Int)

(assert (=> d!218015 (= lt!266396 e!378392)))

(declare-fun c!114567 () Bool)

(assert (=> d!218015 (= c!114567 ((_ is Nil!6416) lt!266350))))

(assert (=> d!218015 (= (size!5003 lt!266350) lt!266396)))

(declare-fun b!623138 () Bool)

(assert (=> b!623138 (= e!378392 0)))

(declare-fun b!623139 () Bool)

(assert (=> b!623139 (= e!378392 (+ 1 (size!5003 (t!81933 lt!266350))))))

(assert (= (and d!218015 c!114567) b!623138))

(assert (= (and d!218015 (not c!114567)) b!623139))

(declare-fun m!891425 () Bool)

(assert (=> b!623139 m!891425))

(assert (=> b!622710 d!218015))

(declare-fun d!218017 () Bool)

(assert (not d!218017))

(assert (=> b!622863 d!218017))

(declare-fun d!218019 () Bool)

(declare-fun choose!625 (List!6424) (_ BitVec 32))

(assert (=> d!218019 (= (charsToInt!0 (text!9778 (value!42170 separatorToken!136))) (choose!625 (text!9778 (value!42170 separatorToken!136))))))

(declare-fun bs!72140 () Bool)

(assert (= bs!72140 d!218019))

(declare-fun m!891427 () Bool)

(assert (=> bs!72140 m!891427))

(assert (=> d!217911 d!218019))

(declare-fun d!218021 () Bool)

(declare-fun c!114568 () Bool)

(assert (=> d!218021 (= c!114568 ((_ is Nil!6415) lt!266364))))

(declare-fun e!378393 () (InoxSet C!4212))

(assert (=> d!218021 (= (content!1153 lt!266364) e!378393)))

(declare-fun b!623140 () Bool)

(assert (=> b!623140 (= e!378393 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623141 () Bool)

(assert (=> b!623141 (= e!378393 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 lt!266364) true) (content!1153 (t!81932 lt!266364))))))

(assert (= (and d!218021 c!114568) b!623140))

(assert (= (and d!218021 (not c!114568)) b!623141))

(declare-fun m!891429 () Bool)

(assert (=> b!623141 m!891429))

(declare-fun m!891431 () Bool)

(assert (=> b!623141 m!891431))

(assert (=> d!217901 d!218021))

(declare-fun d!218023 () Bool)

(declare-fun c!114569 () Bool)

(assert (=> d!218023 (= c!114569 ((_ is Nil!6415) (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun e!378394 () (InoxSet C!4212))

(assert (=> d!218023 (= (content!1153 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))) e!378394)))

(declare-fun b!623142 () Bool)

(assert (=> b!623142 (= e!378394 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623143 () Bool)

(assert (=> b!623143 (= e!378394 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))) true) (content!1153 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))))))

(assert (= (and d!218023 c!114569) b!623142))

(assert (= (and d!218023 (not c!114569)) b!623143))

(declare-fun m!891433 () Bool)

(assert (=> b!623143 m!891433))

(assert (=> b!623143 m!891329))

(assert (=> d!217901 d!218023))

(declare-fun c!114570 () Bool)

(declare-fun d!218025 () Bool)

(assert (=> d!218025 (= c!114570 ((_ is Nil!6415) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))

(declare-fun e!378395 () (InoxSet C!4212))

(assert (=> d!218025 (= (content!1153 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)) e!378395)))

(declare-fun b!623144 () Bool)

(assert (=> b!623144 (= e!378395 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623145 () Bool)

(assert (=> b!623145 (= e!378395 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)) true) (content!1153 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))))

(assert (= (and d!218025 c!114570) b!623144))

(assert (= (and d!218025 (not c!114570)) b!623145))

(declare-fun m!891435 () Bool)

(assert (=> b!623145 m!891435))

(declare-fun m!891437 () Bool)

(assert (=> b!623145 m!891437))

(assert (=> d!217901 d!218025))

(declare-fun d!218027 () Bool)

(declare-fun lt!266397 () Int)

(assert (=> d!218027 (>= lt!266397 0)))

(declare-fun e!378396 () Int)

(assert (=> d!218027 (= lt!266397 e!378396)))

(declare-fun c!114571 () Bool)

(assert (=> d!218027 (= c!114571 ((_ is Nil!6416) (t!81933 (list!2690 v!6361))))))

(assert (=> d!218027 (= (size!5003 (t!81933 (list!2690 v!6361))) lt!266397)))

(declare-fun b!623146 () Bool)

(assert (=> b!623146 (= e!378396 0)))

(declare-fun b!623147 () Bool)

(assert (=> b!623147 (= e!378396 (+ 1 (size!5003 (t!81933 (t!81933 (list!2690 v!6361))))))))

(assert (= (and d!218027 c!114571) b!623146))

(assert (= (and d!218027 (not c!114571)) b!623147))

(declare-fun m!891439 () Bool)

(assert (=> b!623147 m!891439))

(assert (=> b!622819 d!218027))

(declare-fun d!218029 () Bool)

(declare-fun lt!266398 () Int)

(assert (=> d!218029 (>= lt!266398 0)))

(declare-fun e!378397 () Int)

(assert (=> d!218029 (= lt!266398 e!378397)))

(declare-fun c!114572 () Bool)

(assert (=> d!218029 (= c!114572 ((_ is Nil!6416) (list!2694 (xs!4697 (c!114443 v!6361)))))))

(assert (=> d!218029 (= (size!5003 (list!2694 (xs!4697 (c!114443 v!6361)))) lt!266398)))

(declare-fun b!623148 () Bool)

(assert (=> b!623148 (= e!378397 0)))

(declare-fun b!623149 () Bool)

(assert (=> b!623149 (= e!378397 (+ 1 (size!5003 (t!81933 (list!2694 (xs!4697 (c!114443 v!6361)))))))))

(assert (= (and d!218029 c!114572) b!623148))

(assert (= (and d!218029 (not c!114572)) b!623149))

(declare-fun m!891441 () Bool)

(assert (=> b!623149 m!891441))

(assert (=> d!217923 d!218029))

(declare-fun d!218031 () Bool)

(assert (=> d!218031 (= (list!2694 (xs!4697 (c!114443 v!6361))) (innerList!2118 (xs!4697 (c!114443 v!6361))))))

(assert (=> d!217923 d!218031))

(assert (=> b!622843 d!217967))

(assert (=> b!622843 d!217969))

(declare-fun d!218033 () Bool)

(declare-fun c!114573 () Bool)

(assert (=> d!218033 (= c!114573 ((_ is Node!2060) (left!5088 (left!5088 (c!114443 v!6361)))))))

(declare-fun e!378398 () Bool)

(assert (=> d!218033 (= (inv!8146 (left!5088 (left!5088 (c!114443 v!6361)))) e!378398)))

(declare-fun b!623150 () Bool)

(assert (=> b!623150 (= e!378398 (inv!8150 (left!5088 (left!5088 (c!114443 v!6361)))))))

(declare-fun b!623151 () Bool)

(declare-fun e!378399 () Bool)

(assert (=> b!623151 (= e!378398 e!378399)))

(declare-fun res!271044 () Bool)

(assert (=> b!623151 (= res!271044 (not ((_ is Leaf!3223) (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (=> b!623151 (=> res!271044 e!378399)))

(declare-fun b!623152 () Bool)

(assert (=> b!623152 (= e!378399 (inv!8151 (left!5088 (left!5088 (c!114443 v!6361)))))))

(assert (= (and d!218033 c!114573) b!623150))

(assert (= (and d!218033 (not c!114573)) b!623151))

(assert (= (and b!623151 (not res!271044)) b!623152))

(declare-fun m!891443 () Bool)

(assert (=> b!623150 m!891443))

(declare-fun m!891445 () Bool)

(assert (=> b!623152 m!891445))

(assert (=> b!622865 d!218033))

(declare-fun d!218035 () Bool)

(declare-fun c!114574 () Bool)

(assert (=> d!218035 (= c!114574 ((_ is Node!2060) (right!5418 (left!5088 (c!114443 v!6361)))))))

(declare-fun e!378400 () Bool)

(assert (=> d!218035 (= (inv!8146 (right!5418 (left!5088 (c!114443 v!6361)))) e!378400)))

(declare-fun b!623153 () Bool)

(assert (=> b!623153 (= e!378400 (inv!8150 (right!5418 (left!5088 (c!114443 v!6361)))))))

(declare-fun b!623154 () Bool)

(declare-fun e!378401 () Bool)

(assert (=> b!623154 (= e!378400 e!378401)))

(declare-fun res!271045 () Bool)

(assert (=> b!623154 (= res!271045 (not ((_ is Leaf!3223) (right!5418 (left!5088 (c!114443 v!6361))))))))

(assert (=> b!623154 (=> res!271045 e!378401)))

(declare-fun b!623155 () Bool)

(assert (=> b!623155 (= e!378401 (inv!8151 (right!5418 (left!5088 (c!114443 v!6361)))))))

(assert (= (and d!218035 c!114574) b!623153))

(assert (= (and d!218035 (not c!114574)) b!623154))

(assert (= (and b!623154 (not res!271045)) b!623155))

(declare-fun m!891447 () Bool)

(assert (=> b!623153 m!891447))

(declare-fun m!891449 () Bool)

(assert (=> b!623155 m!891449))

(assert (=> b!622865 d!218035))

(declare-fun b!623156 () Bool)

(declare-fun e!378402 () Bool)

(assert (=> b!623156 (= e!378402 (not (isEmpty!4574 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun d!218037 () Bool)

(declare-fun res!271048 () Bool)

(declare-fun e!378403 () Bool)

(assert (=> d!218037 (=> res!271048 e!378403)))

(assert (=> d!218037 (= res!271048 (not ((_ is Node!2060) (right!5418 (c!114443 v!6361)))))))

(assert (=> d!218037 (= (isBalanced!542 (right!5418 (c!114443 v!6361))) e!378403)))

(declare-fun b!623157 () Bool)

(declare-fun res!271047 () Bool)

(assert (=> b!623157 (=> (not res!271047) (not e!378402))))

(assert (=> b!623157 (= res!271047 (not (isEmpty!4574 (left!5088 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623158 () Bool)

(declare-fun res!271051 () Bool)

(assert (=> b!623158 (=> (not res!271051) (not e!378402))))

(assert (=> b!623158 (= res!271051 (<= (- (height!258 (left!5088 (right!5418 (c!114443 v!6361)))) (height!258 (right!5418 (right!5418 (c!114443 v!6361))))) 1))))

(declare-fun b!623159 () Bool)

(declare-fun res!271046 () Bool)

(assert (=> b!623159 (=> (not res!271046) (not e!378402))))

(assert (=> b!623159 (= res!271046 (isBalanced!542 (left!5088 (right!5418 (c!114443 v!6361)))))))

(declare-fun b!623160 () Bool)

(declare-fun res!271050 () Bool)

(assert (=> b!623160 (=> (not res!271050) (not e!378402))))

(assert (=> b!623160 (= res!271050 (isBalanced!542 (right!5418 (right!5418 (c!114443 v!6361)))))))

(declare-fun b!623161 () Bool)

(assert (=> b!623161 (= e!378403 e!378402)))

(declare-fun res!271049 () Bool)

(assert (=> b!623161 (=> (not res!271049) (not e!378402))))

(assert (=> b!623161 (= res!271049 (<= (- 1) (- (height!258 (left!5088 (right!5418 (c!114443 v!6361)))) (height!258 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(assert (= (and d!218037 (not res!271048)) b!623161))

(assert (= (and b!623161 res!271049) b!623158))

(assert (= (and b!623158 res!271051) b!623159))

(assert (= (and b!623159 res!271046) b!623160))

(assert (= (and b!623160 res!271050) b!623157))

(assert (= (and b!623157 res!271047) b!623156))

(declare-fun m!891451 () Bool)

(assert (=> b!623159 m!891451))

(declare-fun m!891453 () Bool)

(assert (=> b!623160 m!891453))

(declare-fun m!891455 () Bool)

(assert (=> b!623157 m!891455))

(assert (=> b!623161 m!891365))

(assert (=> b!623161 m!891367))

(assert (=> b!623158 m!891365))

(assert (=> b!623158 m!891367))

(declare-fun m!891457 () Bool)

(assert (=> b!623156 m!891457))

(assert (=> b!622845 d!218037))

(declare-fun b!623165 () Bool)

(declare-fun e!378405 () List!6425)

(assert (=> b!623165 (= e!378405 (++!1768 (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136)))) (list!2688 (right!5417 (c!114441 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623164 () Bool)

(assert (=> b!623164 (= e!378405 (list!2696 (xs!4696 (c!114441 (charsOf!897 separatorToken!136)))))))

(declare-fun b!623163 () Bool)

(declare-fun e!378404 () List!6425)

(assert (=> b!623163 (= e!378404 e!378405)))

(declare-fun c!114576 () Bool)

(assert (=> b!623163 (= c!114576 ((_ is Leaf!3222) (c!114441 (charsOf!897 separatorToken!136))))))

(declare-fun d!218039 () Bool)

(declare-fun c!114575 () Bool)

(assert (=> d!218039 (= c!114575 ((_ is Empty!2059) (c!114441 (charsOf!897 separatorToken!136))))))

(assert (=> d!218039 (= (list!2688 (c!114441 (charsOf!897 separatorToken!136))) e!378404)))

(declare-fun b!623162 () Bool)

(assert (=> b!623162 (= e!378404 Nil!6415)))

(assert (= (and d!218039 c!114575) b!623162))

(assert (= (and d!218039 (not c!114575)) b!623163))

(assert (= (and b!623163 c!114576) b!623164))

(assert (= (and b!623163 (not c!114576)) b!623165))

(declare-fun m!891459 () Bool)

(assert (=> b!623165 m!891459))

(declare-fun m!891461 () Bool)

(assert (=> b!623165 m!891461))

(assert (=> b!623165 m!891459))

(assert (=> b!623165 m!891461))

(declare-fun m!891463 () Bool)

(assert (=> b!623165 m!891463))

(declare-fun m!891465 () Bool)

(assert (=> b!623164 m!891465))

(assert (=> d!217893 d!218039))

(declare-fun d!218041 () Bool)

(declare-fun choose!4543 (Int) Bool)

(assert (=> d!218041 (= (Forall!316 lambda!16337) (choose!4543 lambda!16337))))

(declare-fun bs!72141 () Bool)

(assert (= bs!72141 d!218041))

(declare-fun m!891467 () Bool)

(assert (=> bs!72141 m!891467))

(assert (=> d!217859 d!218041))

(declare-fun d!218043 () Bool)

(assert (=> d!218043 (= (inv!8158 (xs!4697 (right!5418 (c!114443 v!6361)))) (<= (size!5003 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))) 2147483647))))

(declare-fun bs!72142 () Bool)

(assert (= bs!72142 d!218043))

(declare-fun m!891469 () Bool)

(assert (=> bs!72142 m!891469))

(assert (=> b!622869 d!218043))

(declare-fun b!623166 () Bool)

(declare-fun e!378407 () Bool)

(assert (=> b!623166 (= e!378407 (inv!17 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))

(declare-fun b!623168 () Bool)

(declare-fun e!378408 () Bool)

(assert (=> b!623168 (= e!378408 (inv!16 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))

(declare-fun b!623169 () Bool)

(declare-fun e!378406 () Bool)

(assert (=> b!623169 (= e!378406 (inv!15 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))

(declare-fun b!623170 () Bool)

(assert (=> b!623170 (= e!378408 e!378407)))

(declare-fun c!114578 () Bool)

(assert (=> b!623170 (= c!114578 ((_ is IntegerValue!4000) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))

(declare-fun d!218045 () Bool)

(declare-fun c!114577 () Bool)

(assert (=> d!218045 (= c!114577 ((_ is IntegerValue!3999) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))

(assert (=> d!218045 (= (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) e!378408)))

(declare-fun b!623167 () Bool)

(declare-fun res!271052 () Bool)

(assert (=> b!623167 (=> res!271052 e!378406)))

(assert (=> b!623167 (= res!271052 (not ((_ is IntegerValue!4001) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(assert (=> b!623167 (= e!378407 e!378406)))

(assert (= (and d!218045 c!114577) b!623168))

(assert (= (and d!218045 (not c!114577)) b!623170))

(assert (= (and b!623170 c!114578) b!623166))

(assert (= (and b!623170 (not c!114578)) b!623167))

(assert (= (and b!623167 (not res!271052)) b!623169))

(declare-fun m!891471 () Bool)

(assert (=> b!623166 m!891471))

(declare-fun m!891473 () Bool)

(assert (=> b!623168 m!891473))

(declare-fun m!891475 () Bool)

(assert (=> b!623169 m!891475))

(assert (=> b!622894 d!218045))

(declare-fun b!623174 () Bool)

(declare-fun e!378410 () List!6425)

(assert (=> b!623174 (= e!378410 (++!1768 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!623173 () Bool)

(assert (=> b!623173 (= e!378410 (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun b!623172 () Bool)

(declare-fun e!378409 () List!6425)

(assert (=> b!623172 (= e!378409 e!378410)))

(declare-fun c!114580 () Bool)

(assert (=> b!623172 (= c!114580 ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))

(declare-fun d!218047 () Bool)

(declare-fun c!114579 () Bool)

(assert (=> d!218047 (= c!114579 ((_ is Empty!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))

(assert (=> d!218047 (= (list!2688 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) e!378409)))

(declare-fun b!623171 () Bool)

(assert (=> b!623171 (= e!378409 Nil!6415)))

(assert (= (and d!218047 c!114579) b!623171))

(assert (= (and d!218047 (not c!114579)) b!623172))

(assert (= (and b!623172 c!114580) b!623173))

(assert (= (and b!623172 (not c!114580)) b!623174))

(declare-fun m!891477 () Bool)

(assert (=> b!623174 m!891477))

(declare-fun m!891479 () Bool)

(assert (=> b!623174 m!891479))

(assert (=> b!623174 m!891477))

(assert (=> b!623174 m!891479))

(declare-fun m!891481 () Bool)

(assert (=> b!623174 m!891481))

(assert (=> b!623173 m!891331))

(assert (=> d!217841 d!218047))

(assert (=> b!622851 d!218029))

(assert (=> b!622851 d!218031))

(declare-fun d!218049 () Bool)

(declare-fun lt!266399 () Int)

(assert (=> d!218049 (>= lt!266399 0)))

(declare-fun e!378411 () Int)

(assert (=> d!218049 (= lt!266399 e!378411)))

(declare-fun c!114581 () Bool)

(assert (=> d!218049 (= c!114581 ((_ is Nil!6415) (t!81932 (originalCharacters!1342 separatorToken!136))))))

(assert (=> d!218049 (= (size!5005 (t!81932 (originalCharacters!1342 separatorToken!136))) lt!266399)))

(declare-fun b!623175 () Bool)

(assert (=> b!623175 (= e!378411 0)))

(declare-fun b!623176 () Bool)

(assert (=> b!623176 (= e!378411 (+ 1 (size!5005 (t!81932 (t!81932 (originalCharacters!1342 separatorToken!136))))))))

(assert (= (and d!218049 c!114581) b!623175))

(assert (= (and d!218049 (not c!114581)) b!623176))

(declare-fun m!891483 () Bool)

(assert (=> b!623176 m!891483))

(assert (=> b!622681 d!218049))

(assert (=> b!622725 d!218031))

(declare-fun d!218051 () Bool)

(declare-fun lt!266400 () Int)

(assert (=> d!218051 (>= lt!266400 0)))

(declare-fun e!378412 () Int)

(assert (=> d!218051 (= lt!266400 e!378412)))

(declare-fun c!114582 () Bool)

(assert (=> d!218051 (= c!114582 ((_ is Nil!6415) lt!266364))))

(assert (=> d!218051 (= (size!5005 lt!266364) lt!266400)))

(declare-fun b!623177 () Bool)

(assert (=> b!623177 (= e!378412 0)))

(declare-fun b!623178 () Bool)

(assert (=> b!623178 (= e!378412 (+ 1 (size!5005 (t!81932 lt!266364))))))

(assert (= (and d!218051 c!114582) b!623177))

(assert (= (and d!218051 (not c!114582)) b!623178))

(declare-fun m!891485 () Bool)

(assert (=> b!623178 m!891485))

(assert (=> b!622808 d!218051))

(declare-fun d!218053 () Bool)

(declare-fun lt!266401 () Int)

(assert (=> d!218053 (>= lt!266401 0)))

(declare-fun e!378413 () Int)

(assert (=> d!218053 (= lt!266401 e!378413)))

(declare-fun c!114583 () Bool)

(assert (=> d!218053 (= c!114583 ((_ is Nil!6415) (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))))

(assert (=> d!218053 (= (size!5005 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))) lt!266401)))

(declare-fun b!623179 () Bool)

(assert (=> b!623179 (= e!378413 0)))

(declare-fun b!623180 () Bool)

(assert (=> b!623180 (= e!378413 (+ 1 (size!5005 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))))))

(assert (= (and d!218053 c!114583) b!623179))

(assert (= (and d!218053 (not c!114583)) b!623180))

(assert (=> b!623180 m!891325))

(assert (=> b!622808 d!218053))

(declare-fun d!218055 () Bool)

(declare-fun lt!266402 () Int)

(assert (=> d!218055 (>= lt!266402 0)))

(declare-fun e!378414 () Int)

(assert (=> d!218055 (= lt!266402 e!378414)))

(declare-fun c!114584 () Bool)

(assert (=> d!218055 (= c!114584 ((_ is Nil!6415) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))

(assert (=> d!218055 (= (size!5005 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)) lt!266402)))

(declare-fun b!623181 () Bool)

(assert (=> b!623181 (= e!378414 0)))

(declare-fun b!623182 () Bool)

(assert (=> b!623182 (= e!378414 (+ 1 (size!5005 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))))

(assert (= (and d!218055 c!114584) b!623181))

(assert (= (and d!218055 (not c!114584)) b!623182))

(declare-fun m!891487 () Bool)

(assert (=> b!623182 m!891487))

(assert (=> b!622808 d!218055))

(declare-fun d!218057 () Bool)

(declare-fun c!114585 () Bool)

(assert (=> d!218057 (= c!114585 ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun e!378415 () Bool)

(assert (=> d!218057 (= (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) e!378415)))

(declare-fun b!623183 () Bool)

(assert (=> b!623183 (= e!378415 (inv!8160 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun b!623184 () Bool)

(declare-fun e!378416 () Bool)

(assert (=> b!623184 (= e!378415 e!378416)))

(declare-fun res!271053 () Bool)

(assert (=> b!623184 (= res!271053 (not ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (=> b!623184 (=> res!271053 e!378416)))

(declare-fun b!623185 () Bool)

(assert (=> b!623185 (= e!378416 (inv!8161 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))))

(assert (= (and d!218057 c!114585) b!623183))

(assert (= (and d!218057 (not c!114585)) b!623184))

(assert (= (and b!623184 (not res!271053)) b!623185))

(declare-fun m!891489 () Bool)

(assert (=> b!623183 m!891489))

(declare-fun m!891491 () Bool)

(assert (=> b!623185 m!891491))

(assert (=> b!622805 d!218057))

(declare-fun d!218059 () Bool)

(declare-fun lt!266403 () Bool)

(assert (=> d!218059 (= lt!266403 (isEmpty!4575 (list!2689 (right!5418 (c!114443 v!6361)))))))

(assert (=> d!218059 (= lt!266403 (= (size!5004 (right!5418 (c!114443 v!6361))) 0))))

(assert (=> d!218059 (= (isEmpty!4574 (right!5418 (c!114443 v!6361))) lt!266403)))

(declare-fun bs!72143 () Bool)

(assert (= bs!72143 d!218059))

(assert (=> bs!72143 m!891001))

(assert (=> bs!72143 m!891001))

(declare-fun m!891493 () Bool)

(assert (=> bs!72143 m!891493))

(assert (=> bs!72143 m!891123))

(assert (=> b!622841 d!218059))

(declare-fun b!623198 () Bool)

(declare-fun res!271071 () Bool)

(declare-fun e!378421 () Bool)

(assert (=> b!623198 (=> (not res!271071) (not e!378421))))

(assert (=> b!623198 (= res!271071 (isBalanced!544 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun b!623199 () Bool)

(declare-fun res!271068 () Bool)

(assert (=> b!623199 (=> (not res!271068) (not e!378421))))

(assert (=> b!623199 (= res!271068 (isBalanced!544 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun d!218061 () Bool)

(declare-fun res!271067 () Bool)

(declare-fun e!378422 () Bool)

(assert (=> d!218061 (=> res!271067 e!378422)))

(assert (=> d!218061 (= res!271067 (not ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(assert (=> d!218061 (= (isBalanced!544 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))) e!378422)))

(declare-fun b!623200 () Bool)

(declare-fun res!271066 () Bool)

(assert (=> b!623200 (=> (not res!271066) (not e!378421))))

(declare-fun isEmpty!4576 (Conc!2059) Bool)

(assert (=> b!623200 (= res!271066 (not (isEmpty!4576 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!623201 () Bool)

(declare-fun res!271070 () Bool)

(assert (=> b!623201 (=> (not res!271070) (not e!378421))))

(assert (=> b!623201 (= res!271070 (<= (- (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) 1))))

(declare-fun b!623202 () Bool)

(assert (=> b!623202 (= e!378421 (not (isEmpty!4576 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!623203 () Bool)

(assert (=> b!623203 (= e!378422 e!378421)))

(declare-fun res!271069 () Bool)

(assert (=> b!623203 (=> (not res!271069) (not e!378421))))

(assert (=> b!623203 (= res!271069 (<= (- 1) (- (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (= (and d!218061 (not res!271067)) b!623203))

(assert (= (and b!623203 res!271069) b!623201))

(assert (= (and b!623201 res!271070) b!623198))

(assert (= (and b!623198 res!271071) b!623199))

(assert (= (and b!623199 res!271068) b!623200))

(assert (= (and b!623200 res!271066) b!623202))

(declare-fun m!891495 () Bool)

(assert (=> b!623200 m!891495))

(assert (=> b!623201 m!891419))

(assert (=> b!623201 m!891421))

(declare-fun m!891497 () Bool)

(assert (=> b!623198 m!891497))

(assert (=> b!623203 m!891419))

(assert (=> b!623203 m!891421))

(declare-fun m!891499 () Bool)

(assert (=> b!623202 m!891499))

(declare-fun m!891501 () Bool)

(assert (=> b!623199 m!891501))

(assert (=> d!217921 d!218061))

(assert (=> b!622612 d!217887))

(declare-fun d!218063 () Bool)

(declare-fun lt!266404 () Int)

(assert (=> d!218063 (>= lt!266404 0)))

(declare-fun e!378423 () Int)

(assert (=> d!218063 (= lt!266404 e!378423)))

(declare-fun c!114586 () Bool)

(assert (=> d!218063 (= c!114586 ((_ is Nil!6415) lt!266359))))

(assert (=> d!218063 (= (size!5005 lt!266359) lt!266404)))

(declare-fun b!623204 () Bool)

(assert (=> b!623204 (= e!378423 0)))

(declare-fun b!623205 () Bool)

(assert (=> b!623205 (= e!378423 (+ 1 (size!5005 (t!81932 lt!266359))))))

(assert (= (and d!218063 c!114586) b!623204))

(assert (= (and d!218063 (not c!114586)) b!623205))

(declare-fun m!891503 () Bool)

(assert (=> b!623205 m!891503))

(assert (=> b!622801 d!218063))

(declare-fun d!218065 () Bool)

(declare-fun lt!266405 () Int)

(assert (=> d!218065 (>= lt!266405 0)))

(declare-fun e!378424 () Int)

(assert (=> d!218065 (= lt!266405 e!378424)))

(declare-fun c!114587 () Bool)

(assert (=> d!218065 (= c!114587 ((_ is Nil!6415) (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))

(assert (=> d!218065 (= (size!5005 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) lt!266405)))

(declare-fun b!623206 () Bool)

(assert (=> b!623206 (= e!378424 0)))

(declare-fun b!623207 () Bool)

(assert (=> b!623207 (= e!378424 (+ 1 (size!5005 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (= (and d!218065 c!114587) b!623206))

(assert (= (and d!218065 (not c!114587)) b!623207))

(assert (=> b!623207 m!891381))

(assert (=> b!622801 d!218065))

(declare-fun d!218067 () Bool)

(declare-fun lt!266406 () Int)

(assert (=> d!218067 (>= lt!266406 0)))

(declare-fun e!378425 () Int)

(assert (=> d!218067 (= lt!266406 e!378425)))

(declare-fun c!114588 () Bool)

(assert (=> d!218067 (= c!114588 ((_ is Nil!6415) (list!2687 (charsOf!897 separatorToken!136))))))

(assert (=> d!218067 (= (size!5005 (list!2687 (charsOf!897 separatorToken!136))) lt!266406)))

(declare-fun b!623208 () Bool)

(assert (=> b!623208 (= e!378425 0)))

(declare-fun b!623209 () Bool)

(assert (=> b!623209 (= e!378425 (+ 1 (size!5005 (t!81932 (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (= (and d!218067 c!114588) b!623208))

(assert (= (and d!218067 (not c!114588)) b!623209))

(declare-fun m!891505 () Bool)

(assert (=> b!623209 m!891505))

(assert (=> b!622801 d!218067))

(declare-fun d!218069 () Bool)

(declare-fun c!114595 () Bool)

(assert (=> d!218069 (= c!114595 ((_ is Nil!6414) (text!9780 (value!42170 separatorToken!136))))))

(declare-fun e!378433 () Int)

(assert (=> d!218069 (= (charsToBigInt!0 (text!9780 (value!42170 separatorToken!136)) 0) e!378433)))

(declare-fun b!623223 () Bool)

(assert (=> b!623223 (= e!378433 0)))

(declare-fun b!623224 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!623224 (= e!378433 (charsToBigInt!0 (t!81931 (text!9780 (value!42170 separatorToken!136))) (+ (* 0 10) (charToBigInt!0 (h!11815 (text!9780 (value!42170 separatorToken!136)))))))))

(assert (= (and d!218069 c!114595) b!623223))

(assert (= (and d!218069 (not c!114595)) b!623224))

(declare-fun m!891509 () Bool)

(assert (=> b!623224 m!891509))

(declare-fun m!891511 () Bool)

(assert (=> b!623224 m!891511))

(assert (=> d!217917 d!218069))

(declare-fun d!218075 () Bool)

(declare-fun choose!4544 (Int) Bool)

(assert (=> d!218075 (= (Forall2!242 lambda!16340) (choose!4544 lambda!16340))))

(declare-fun bs!72145 () Bool)

(assert (= bs!72145 d!218075))

(declare-fun m!891523 () Bool)

(assert (=> bs!72145 m!891523))

(assert (=> d!217903 d!218075))

(assert (=> b!622803 d!217891))

(assert (=> b!622803 d!217893))

(declare-fun d!218079 () Bool)

(declare-fun lt!266408 () BalanceConc!4126)

(assert (=> d!218079 (= (list!2687 lt!266408) (originalCharacters!1342 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))

(assert (=> d!218079 (= lt!266408 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))))

(assert (=> d!218079 (= (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))) lt!266408)))

(declare-fun b_lambda!24623 () Bool)

(assert (=> (not b_lambda!24623) (not d!218079)))

(declare-fun t!81966 () Bool)

(declare-fun tb!54043 () Bool)

(assert (=> (and b!622524 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!81966) tb!54043))

(declare-fun e!378436 () Bool)

(declare-fun b!623229 () Bool)

(declare-fun tp!193627 () Bool)

(assert (=> b!623229 (= e!378436 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) tp!193627))))

(declare-fun result!61054 () Bool)

(assert (=> tb!54043 (= result!61054 (and (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) e!378436))))

(assert (= tb!54043 b!623229))

(declare-fun m!891533 () Bool)

(assert (=> b!623229 m!891533))

(declare-fun m!891535 () Bool)

(assert (=> tb!54043 m!891535))

(assert (=> d!218079 t!81966))

(declare-fun b_and!61923 () Bool)

(assert (= b_and!61919 (and (=> t!81966 result!61054) b_and!61923)))

(declare-fun tb!54045 () Bool)

(declare-fun t!81968 () Bool)

(assert (=> (and b!622896 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!81968) tb!54045))

(declare-fun result!61056 () Bool)

(assert (= result!61056 result!61054))

(assert (=> d!218079 t!81968))

(declare-fun b_and!61925 () Bool)

(assert (= b_and!61921 (and (=> t!81968 result!61056) b_and!61925)))

(declare-fun m!891537 () Bool)

(assert (=> d!218079 m!891537))

(declare-fun m!891539 () Bool)

(assert (=> d!218079 m!891539))

(assert (=> b!622803 d!218079))

(declare-fun d!218083 () Bool)

(assert (=> d!218083 (= (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2688 (c!114441 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))

(declare-fun bs!72146 () Bool)

(assert (= bs!72146 d!218083))

(declare-fun m!891541 () Bool)

(assert (=> bs!72146 m!891541))

(assert (=> b!622803 d!218083))

(declare-fun b!623233 () Bool)

(declare-fun lt!266409 () List!6425)

(declare-fun e!378438 () Bool)

(assert (=> b!623233 (= e!378438 (or (not (= (list!2687 (charsOf!897 separatorToken!136)) Nil!6415)) (= lt!266409 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))))))

(declare-fun e!378437 () List!6425)

(declare-fun b!623231 () Bool)

(assert (=> b!623231 (= e!378437 (Cons!6415 (h!11816 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (++!1768 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun b!623232 () Bool)

(declare-fun res!271073 () Bool)

(assert (=> b!623232 (=> (not res!271073) (not e!378438))))

(assert (=> b!623232 (= res!271073 (= (size!5005 lt!266409) (+ (size!5005 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (size!5005 (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623230 () Bool)

(assert (=> b!623230 (= e!378437 (list!2687 (charsOf!897 separatorToken!136)))))

(declare-fun d!218085 () Bool)

(assert (=> d!218085 e!378438))

(declare-fun res!271074 () Bool)

(assert (=> d!218085 (=> (not res!271074) (not e!378438))))

(assert (=> d!218085 (= res!271074 (= (content!1153 lt!266409) ((_ map or) (content!1153 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (content!1153 (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!218085 (= lt!266409 e!378437)))

(declare-fun c!114598 () Bool)

(assert (=> d!218085 (= c!114598 ((_ is Nil!6415) (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))

(assert (=> d!218085 (= (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))) lt!266409)))

(assert (= (and d!218085 c!114598) b!623230))

(assert (= (and d!218085 (not c!114598)) b!623231))

(assert (= (and d!218085 res!271074) b!623232))

(assert (= (and b!623232 res!271073) b!623233))

(assert (=> b!623231 m!890895))

(declare-fun m!891543 () Bool)

(assert (=> b!623231 m!891543))

(declare-fun m!891545 () Bool)

(assert (=> b!623232 m!891545))

(assert (=> b!623232 m!891085))

(declare-fun m!891547 () Bool)

(assert (=> b!623232 m!891547))

(assert (=> b!623232 m!890895))

(assert (=> b!623232 m!891069))

(declare-fun m!891549 () Bool)

(assert (=> d!218085 m!891549))

(assert (=> d!218085 m!891085))

(declare-fun m!891551 () Bool)

(assert (=> d!218085 m!891551))

(assert (=> d!218085 m!890895))

(assert (=> d!218085 m!891075))

(assert (=> b!622803 d!218085))

(declare-fun d!218087 () Bool)

(declare-fun c!114599 () Bool)

(assert (=> d!218087 (= c!114599 ((_ is Cons!6416) (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))

(declare-fun e!378439 () List!6425)

(assert (=> d!218087 (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136) e!378439)))

(declare-fun b!623234 () Bool)

(assert (=> b!623234 (= e!378439 (++!1768 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))) separatorToken!136)))))

(declare-fun b!623235 () Bool)

(assert (=> b!623235 (= e!378439 Nil!6415)))

(assert (= (and d!218087 c!114599) b!623234))

(assert (= (and d!218087 (not c!114599)) b!623235))

(declare-fun m!891553 () Bool)

(assert (=> b!623234 m!891553))

(declare-fun m!891555 () Bool)

(assert (=> b!623234 m!891555))

(declare-fun m!891557 () Bool)

(assert (=> b!623234 m!891557))

(declare-fun m!891559 () Bool)

(assert (=> b!623234 m!891559))

(declare-fun m!891561 () Bool)

(assert (=> b!623234 m!891561))

(assert (=> b!623234 m!890893))

(assert (=> b!623234 m!891555))

(assert (=> b!623234 m!890895))

(assert (=> b!623234 m!891557))

(assert (=> b!623234 m!891553))

(assert (=> b!623234 m!891559))

(assert (=> b!623234 m!890893))

(assert (=> b!623234 m!890895))

(assert (=> b!622803 d!218087))

(declare-fun lt!266410 () List!6425)

(declare-fun b!623239 () Bool)

(declare-fun e!378441 () Bool)

(assert (=> b!623239 (= e!378441 (or (not (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136) Nil!6415)) (= lt!266410 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623237 () Bool)

(declare-fun e!378440 () List!6425)

(assert (=> b!623237 (= e!378440 (Cons!6415 (h!11816 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))) (++!1768 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136))))))

(declare-fun b!623238 () Bool)

(declare-fun res!271075 () Bool)

(assert (=> b!623238 (=> (not res!271075) (not e!378441))))

(assert (=> b!623238 (= res!271075 (= (size!5005 lt!266410) (+ (size!5005 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))) (size!5005 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))))

(declare-fun b!623236 () Bool)

(assert (=> b!623236 (= e!378440 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136))))

(declare-fun d!218089 () Bool)

(assert (=> d!218089 e!378441))

(declare-fun res!271076 () Bool)

(assert (=> d!218089 (=> (not res!271076) (not e!378441))))

(assert (=> d!218089 (= res!271076 (= (content!1153 lt!266410) ((_ map or) (content!1153 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))) (content!1153 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))))

(assert (=> d!218089 (= lt!266410 e!378440)))

(declare-fun c!114600 () Bool)

(assert (=> d!218089 (= c!114600 ((_ is Nil!6415) (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(assert (=> d!218089 (= (++!1768 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)) lt!266410)))

(assert (= (and d!218089 c!114600) b!623236))

(assert (= (and d!218089 (not c!114600)) b!623237))

(assert (= (and d!218089 res!271076) b!623238))

(assert (= (and b!623238 res!271075) b!623239))

(assert (=> b!623237 m!891089))

(declare-fun m!891563 () Bool)

(assert (=> b!623237 m!891563))

(declare-fun m!891565 () Bool)

(assert (=> b!623238 m!891565))

(assert (=> b!623238 m!891087))

(declare-fun m!891567 () Bool)

(assert (=> b!623238 m!891567))

(assert (=> b!623238 m!891089))

(declare-fun m!891569 () Bool)

(assert (=> b!623238 m!891569))

(declare-fun m!891571 () Bool)

(assert (=> d!218089 m!891571))

(assert (=> d!218089 m!891087))

(declare-fun m!891573 () Bool)

(assert (=> d!218089 m!891573))

(assert (=> d!218089 m!891089))

(declare-fun m!891575 () Bool)

(assert (=> d!218089 m!891575))

(assert (=> b!622803 d!218089))

(declare-fun d!218091 () Bool)

(assert (=> d!218091 (= (inv!8162 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (<= (size!5005 (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) 2147483647))))

(declare-fun bs!72147 () Bool)

(assert (= bs!72147 d!218091))

(declare-fun m!891577 () Bool)

(assert (=> bs!72147 m!891577))

(assert (=> b!622906 d!218091))

(declare-fun d!218093 () Bool)

(declare-fun choose!644 (List!6424) Int)

(assert (=> d!218093 (= (charsToBigInt!1 (text!9779 (value!42170 separatorToken!136))) (choose!644 (text!9779 (value!42170 separatorToken!136))))))

(declare-fun bs!72148 () Bool)

(assert (= bs!72148 d!218093))

(declare-fun m!891579 () Bool)

(assert (=> bs!72148 m!891579))

(assert (=> d!217855 d!218093))

(declare-fun d!218095 () Bool)

(declare-fun c!114605 () Bool)

(assert (=> d!218095 (= c!114605 ((_ is Nil!6416) lt!266350))))

(declare-fun e!378448 () (InoxSet Token!2342))

(assert (=> d!218095 (= (content!1152 lt!266350) e!378448)))

(declare-fun b!623252 () Bool)

(assert (=> b!623252 (= e!378448 ((as const (Array Token!2342 Bool)) false))))

(declare-fun b!623253 () Bool)

(assert (=> b!623253 (= e!378448 ((_ map or) (store ((as const (Array Token!2342 Bool)) false) (h!11817 lt!266350) true) (content!1152 (t!81933 lt!266350))))))

(assert (= (and d!218095 c!114605) b!623252))

(assert (= (and d!218095 (not c!114605)) b!623253))

(declare-fun m!891581 () Bool)

(assert (=> b!623253 m!891581))

(declare-fun m!891583 () Bool)

(assert (=> b!623253 m!891583))

(assert (=> d!217849 d!218095))

(declare-fun d!218097 () Bool)

(declare-fun c!114606 () Bool)

(assert (=> d!218097 (= c!114606 ((_ is Nil!6416) (list!2689 (c!114443 v!6361))))))

(declare-fun e!378449 () (InoxSet Token!2342))

(assert (=> d!218097 (= (content!1152 (list!2689 (c!114443 v!6361))) e!378449)))

(declare-fun b!623254 () Bool)

(assert (=> b!623254 (= e!378449 ((as const (Array Token!2342 Bool)) false))))

(declare-fun b!623255 () Bool)

(assert (=> b!623255 (= e!378449 ((_ map or) (store ((as const (Array Token!2342 Bool)) false) (h!11817 (list!2689 (c!114443 v!6361))) true) (content!1152 (t!81933 (list!2689 (c!114443 v!6361))))))))

(assert (= (and d!218097 c!114606) b!623254))

(assert (= (and d!218097 (not c!114606)) b!623255))

(declare-fun m!891585 () Bool)

(assert (=> b!623255 m!891585))

(declare-fun m!891587 () Bool)

(assert (=> b!623255 m!891587))

(assert (=> d!217849 d!218097))

(declare-fun d!218099 () Bool)

(declare-fun res!271081 () Bool)

(declare-fun e!378450 () Bool)

(assert (=> d!218099 (=> (not res!271081) (not e!378450))))

(assert (=> d!218099 (= res!271081 (= (csize!4350 (left!5088 (c!114443 v!6361))) (+ (size!5004 (left!5088 (left!5088 (c!114443 v!6361)))) (size!5004 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(assert (=> d!218099 (= (inv!8150 (left!5088 (c!114443 v!6361))) e!378450)))

(declare-fun b!623256 () Bool)

(declare-fun res!271082 () Bool)

(assert (=> b!623256 (=> (not res!271082) (not e!378450))))

(assert (=> b!623256 (= res!271082 (and (not (= (left!5088 (left!5088 (c!114443 v!6361))) Empty!2060)) (not (= (right!5418 (left!5088 (c!114443 v!6361))) Empty!2060))))))

(declare-fun b!623257 () Bool)

(declare-fun res!271083 () Bool)

(assert (=> b!623257 (=> (not res!271083) (not e!378450))))

(assert (=> b!623257 (= res!271083 (= (cheight!2271 (left!5088 (c!114443 v!6361))) (+ (max!0 (height!258 (left!5088 (left!5088 (c!114443 v!6361)))) (height!258 (right!5418 (left!5088 (c!114443 v!6361))))) 1)))))

(declare-fun b!623258 () Bool)

(assert (=> b!623258 (= e!378450 (<= 0 (cheight!2271 (left!5088 (c!114443 v!6361)))))))

(assert (= (and d!218099 res!271081) b!623256))

(assert (= (and b!623256 res!271082) b!623257))

(assert (= (and b!623257 res!271083) b!623258))

(declare-fun m!891589 () Bool)

(assert (=> d!218099 m!891589))

(declare-fun m!891591 () Bool)

(assert (=> d!218099 m!891591))

(assert (=> b!623257 m!891293))

(assert (=> b!623257 m!891295))

(assert (=> b!623257 m!891293))

(assert (=> b!623257 m!891295))

(declare-fun m!891593 () Bool)

(assert (=> b!623257 m!891593))

(assert (=> b!622682 d!218099))

(declare-fun d!218101 () Bool)

(assert (=> d!218101 (= (list!2687 lt!266363) (list!2688 (c!114441 lt!266363)))))

(declare-fun bs!72149 () Bool)

(assert (= bs!72149 d!218101))

(declare-fun m!891595 () Bool)

(assert (=> bs!72149 m!891595))

(assert (=> d!217899 d!218101))

(declare-fun b!623262 () Bool)

(declare-fun e!378452 () List!6425)

(assert (=> b!623262 (= e!378452 (++!1768 (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!623261 () Bool)

(assert (=> b!623261 (= e!378452 (list!2696 (xs!4696 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun b!623260 () Bool)

(declare-fun e!378451 () List!6425)

(assert (=> b!623260 (= e!378451 e!378452)))

(declare-fun c!114608 () Bool)

(assert (=> b!623260 (= c!114608 ((_ is Leaf!3222) (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))

(declare-fun d!218103 () Bool)

(declare-fun c!114607 () Bool)

(assert (=> d!218103 (= c!114607 ((_ is Empty!2059) (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))

(assert (=> d!218103 (= (list!2688 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))) e!378451)))

(declare-fun b!623259 () Bool)

(assert (=> b!623259 (= e!378451 Nil!6415)))

(assert (= (and d!218103 c!114607) b!623259))

(assert (= (and d!218103 (not c!114607)) b!623260))

(assert (= (and b!623260 c!114608) b!623261))

(assert (= (and b!623260 (not c!114608)) b!623262))

(declare-fun m!891597 () Bool)

(assert (=> b!623262 m!891597))

(declare-fun m!891599 () Bool)

(assert (=> b!623262 m!891599))

(assert (=> b!623262 m!891597))

(assert (=> b!623262 m!891599))

(declare-fun m!891601 () Bool)

(assert (=> b!623262 m!891601))

(declare-fun m!891603 () Bool)

(assert (=> b!623261 m!891603))

(assert (=> d!217895 d!218103))

(declare-fun d!218105 () Bool)

(declare-fun lt!266413 () Int)

(assert (=> d!218105 (>= lt!266413 0)))

(declare-fun e!378453 () Int)

(assert (=> d!218105 (= lt!266413 e!378453)))

(declare-fun c!114609 () Bool)

(assert (=> d!218105 (= c!114609 ((_ is Nil!6416) (innerList!2118 (xs!4697 (c!114443 v!6361)))))))

(assert (=> d!218105 (= (size!5003 (innerList!2118 (xs!4697 (c!114443 v!6361)))) lt!266413)))

(declare-fun b!623263 () Bool)

(assert (=> b!623263 (= e!378453 0)))

(declare-fun b!623264 () Bool)

(assert (=> b!623264 (= e!378453 (+ 1 (size!5003 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))

(assert (= (and d!218105 c!114609) b!623263))

(assert (= (and d!218105 (not c!114609)) b!623264))

(declare-fun m!891605 () Bool)

(assert (=> b!623264 m!891605))

(assert (=> d!217853 d!218105))

(declare-fun d!218107 () Bool)

(declare-fun res!271084 () Bool)

(declare-fun e!378454 () Bool)

(assert (=> d!218107 (=> (not res!271084) (not e!378454))))

(assert (=> d!218107 (= res!271084 (<= (size!5003 (list!2694 (xs!4697 (left!5088 (c!114443 v!6361))))) 512))))

(assert (=> d!218107 (= (inv!8151 (left!5088 (c!114443 v!6361))) e!378454)))

(declare-fun b!623265 () Bool)

(declare-fun res!271085 () Bool)

(assert (=> b!623265 (=> (not res!271085) (not e!378454))))

(assert (=> b!623265 (= res!271085 (= (csize!4351 (left!5088 (c!114443 v!6361))) (size!5003 (list!2694 (xs!4697 (left!5088 (c!114443 v!6361)))))))))

(declare-fun b!623266 () Bool)

(assert (=> b!623266 (= e!378454 (and (> (csize!4351 (left!5088 (c!114443 v!6361))) 0) (<= (csize!4351 (left!5088 (c!114443 v!6361))) 512)))))

(assert (= (and d!218107 res!271084) b!623265))

(assert (= (and b!623265 res!271085) b!623266))

(assert (=> d!218107 m!891345))

(assert (=> d!218107 m!891345))

(declare-fun m!891607 () Bool)

(assert (=> d!218107 m!891607))

(assert (=> b!623265 m!891345))

(assert (=> b!623265 m!891345))

(assert (=> b!623265 m!891607))

(assert (=> b!622684 d!218107))

(declare-fun d!218109 () Bool)

(assert (not d!218109))

(assert (=> b!622864 d!218109))

(declare-fun d!218111 () Bool)

(assert (not d!218111))

(assert (=> b!622864 d!218111))

(declare-fun d!218113 () Bool)

(assert (not d!218113))

(assert (=> b!622864 d!218113))

(declare-fun b!623271 () Bool)

(declare-fun e!378459 () Int)

(assert (=> b!623271 (= e!378459 0)))

(declare-fun b!623272 () Bool)

(declare-fun e!378460 () List!6426)

(assert (=> b!623272 (= e!378460 (t!81933 (list!2689 (c!114443 v!6361))))))

(declare-fun b!623273 () Bool)

(declare-fun call!41141 () Int)

(assert (=> b!623273 (= e!378459 (- call!41141 (- from!852 1)))))

(declare-fun bm!41136 () Bool)

(assert (=> bm!41136 (= call!41141 (size!5003 (t!81933 (list!2689 (c!114443 v!6361)))))))

(declare-fun d!218115 () Bool)

(declare-fun e!378458 () Bool)

(assert (=> d!218115 e!378458))

(declare-fun res!271088 () Bool)

(assert (=> d!218115 (=> (not res!271088) (not e!378458))))

(declare-fun lt!266415 () List!6426)

(assert (=> d!218115 (= res!271088 (= ((_ map implies) (content!1152 lt!266415) (content!1152 (t!81933 (list!2689 (c!114443 v!6361))))) ((as const (InoxSet Token!2342)) true)))))

(declare-fun e!378457 () List!6426)

(assert (=> d!218115 (= lt!266415 e!378457)))

(declare-fun c!114611 () Bool)

(assert (=> d!218115 (= c!114611 ((_ is Nil!6416) (t!81933 (list!2689 (c!114443 v!6361)))))))

(assert (=> d!218115 (= (drop!337 (t!81933 (list!2689 (c!114443 v!6361))) (- from!852 1)) lt!266415)))

(declare-fun b!623274 () Bool)

(declare-fun e!378461 () Int)

(assert (=> b!623274 (= e!378461 e!378459)))

(declare-fun c!114613 () Bool)

(assert (=> b!623274 (= c!114613 (>= (- from!852 1) call!41141))))

(declare-fun b!623275 () Bool)

(assert (=> b!623275 (= e!378458 (= (size!5003 lt!266415) e!378461))))

(declare-fun c!114612 () Bool)

(assert (=> b!623275 (= c!114612 (<= (- from!852 1) 0))))

(declare-fun b!623276 () Bool)

(assert (=> b!623276 (= e!378460 (drop!337 (t!81933 (t!81933 (list!2689 (c!114443 v!6361)))) (- (- from!852 1) 1)))))

(declare-fun b!623277 () Bool)

(assert (=> b!623277 (= e!378461 call!41141)))

(declare-fun b!623278 () Bool)

(assert (=> b!623278 (= e!378457 Nil!6416)))

(declare-fun b!623279 () Bool)

(assert (=> b!623279 (= e!378457 e!378460)))

(declare-fun c!114614 () Bool)

(assert (=> b!623279 (= c!114614 (<= (- from!852 1) 0))))

(assert (= (and d!218115 c!114611) b!623278))

(assert (= (and d!218115 (not c!114611)) b!623279))

(assert (= (and b!623279 c!114614) b!623272))

(assert (= (and b!623279 (not c!114614)) b!623276))

(assert (= (and d!218115 res!271088) b!623275))

(assert (= (and b!623275 c!114612) b!623277))

(assert (= (and b!623275 (not c!114612)) b!623274))

(assert (= (and b!623274 c!114613) b!623271))

(assert (= (and b!623274 (not c!114613)) b!623273))

(assert (= (or b!623277 b!623274 b!623273) bm!41136))

(assert (=> bm!41136 m!891371))

(declare-fun m!891623 () Bool)

(assert (=> d!218115 m!891623))

(assert (=> d!218115 m!891587))

(declare-fun m!891625 () Bool)

(assert (=> b!623275 m!891625))

(declare-fun m!891629 () Bool)

(assert (=> b!623276 m!891629))

(assert (=> b!622711 d!218115))

(declare-fun d!218119 () Bool)

(assert (=> d!218119 (= (list!2687 lt!266362) (list!2688 (c!114441 lt!266362)))))

(declare-fun bs!72150 () Bool)

(assert (= bs!72150 d!218119))

(declare-fun m!891633 () Bool)

(assert (=> bs!72150 m!891633))

(assert (=> d!217891 d!218119))

(declare-fun b!623290 () Bool)

(declare-fun e!378466 () Bool)

(declare-fun tp!193630 () Bool)

(assert (=> b!623290 (= e!378466 tp!193630)))

(declare-fun b!623289 () Bool)

(declare-fun tp!193629 () Bool)

(declare-fun tp!193631 () Bool)

(assert (=> b!623289 (= e!378466 (and tp!193629 tp!193631))))

(declare-fun b!623288 () Bool)

(assert (=> b!623288 (= e!378466 tp_is_empty!3613)))

(declare-fun b!623291 () Bool)

(declare-fun tp!193632 () Bool)

(declare-fun tp!193628 () Bool)

(assert (=> b!623291 (= e!378466 (and tp!193632 tp!193628))))

(assert (=> b!622915 (= tp!193567 e!378466)))

(assert (= (and b!622915 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623288))

(assert (= (and b!622915 ((_ is Concat!2977) (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623289))

(assert (= (and b!622915 ((_ is Star!1643) (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623290))

(assert (= (and b!622915 ((_ is Union!1643) (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623291))

(declare-fun b!623294 () Bool)

(declare-fun e!378467 () Bool)

(declare-fun tp!193635 () Bool)

(assert (=> b!623294 (= e!378467 tp!193635)))

(declare-fun b!623293 () Bool)

(declare-fun tp!193634 () Bool)

(declare-fun tp!193636 () Bool)

(assert (=> b!623293 (= e!378467 (and tp!193634 tp!193636))))

(declare-fun b!623292 () Bool)

(assert (=> b!623292 (= e!378467 tp_is_empty!3613)))

(declare-fun b!623295 () Bool)

(declare-fun tp!193637 () Bool)

(declare-fun tp!193633 () Bool)

(assert (=> b!623295 (= e!378467 (and tp!193637 tp!193633))))

(assert (=> b!622915 (= tp!193563 e!378467)))

(assert (= (and b!622915 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623292))

(assert (= (and b!622915 ((_ is Concat!2977) (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623293))

(assert (= (and b!622915 ((_ is Star!1643) (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623294))

(assert (= (and b!622915 ((_ is Union!1643) (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623295))

(declare-fun b!623298 () Bool)

(declare-fun e!378468 () Bool)

(declare-fun tp!193640 () Bool)

(assert (=> b!623298 (= e!378468 tp!193640)))

(declare-fun b!623297 () Bool)

(declare-fun tp!193639 () Bool)

(declare-fun tp!193641 () Bool)

(assert (=> b!623297 (= e!378468 (and tp!193639 tp!193641))))

(declare-fun b!623296 () Bool)

(assert (=> b!623296 (= e!378468 tp_is_empty!3613)))

(declare-fun b!623299 () Bool)

(declare-fun tp!193642 () Bool)

(declare-fun tp!193638 () Bool)

(assert (=> b!623299 (= e!378468 (and tp!193642 tp!193638))))

(assert (=> b!622878 (= tp!193528 e!378468)))

(assert (= (and b!622878 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623296))

(assert (= (and b!622878 ((_ is Concat!2977) (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623297))

(assert (= (and b!622878 ((_ is Star!1643) (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623298))

(assert (= (and b!622878 ((_ is Union!1643) (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623299))

(declare-fun b!623304 () Bool)

(declare-fun e!378470 () Bool)

(declare-fun tp!193645 () Bool)

(assert (=> b!623304 (= e!378470 tp!193645)))

(declare-fun b!623303 () Bool)

(declare-fun tp!193644 () Bool)

(declare-fun tp!193646 () Bool)

(assert (=> b!623303 (= e!378470 (and tp!193644 tp!193646))))

(declare-fun b!623302 () Bool)

(assert (=> b!623302 (= e!378470 tp_is_empty!3613)))

(declare-fun b!623305 () Bool)

(declare-fun tp!193647 () Bool)

(declare-fun tp!193643 () Bool)

(assert (=> b!623305 (= e!378470 (and tp!193647 tp!193643))))

(assert (=> b!622878 (= tp!193524 e!378470)))

(assert (= (and b!622878 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623302))

(assert (= (and b!622878 ((_ is Concat!2977) (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623303))

(assert (= (and b!622878 ((_ is Star!1643) (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623304))

(assert (= (and b!622878 ((_ is Union!1643) (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623305))

(declare-fun tp!193650 () Bool)

(declare-fun b!623306 () Bool)

(declare-fun e!378472 () Bool)

(declare-fun tp!193649 () Bool)

(assert (=> b!623306 (= e!378472 (and (inv!8146 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))) tp!193650 (inv!8146 (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))) tp!193649))))

(declare-fun b!623308 () Bool)

(declare-fun e!378471 () Bool)

(declare-fun tp!193648 () Bool)

(assert (=> b!623308 (= e!378471 tp!193648)))

(declare-fun b!623307 () Bool)

(assert (=> b!623307 (= e!378472 (and (inv!8158 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))) e!378471))))

(assert (=> b!622865 (= tp!193515 (and (inv!8146 (left!5088 (left!5088 (c!114443 v!6361)))) e!378472))))

(assert (= (and b!622865 ((_ is Node!2060) (left!5088 (left!5088 (c!114443 v!6361))))) b!623306))

(assert (= b!623307 b!623308))

(assert (= (and b!622865 ((_ is Leaf!3223) (left!5088 (left!5088 (c!114443 v!6361))))) b!623307))

(declare-fun m!891649 () Bool)

(assert (=> b!623306 m!891649))

(declare-fun m!891651 () Bool)

(assert (=> b!623306 m!891651))

(declare-fun m!891653 () Bool)

(assert (=> b!623307 m!891653))

(assert (=> b!622865 m!891153))

(declare-fun b!623309 () Bool)

(declare-fun tp!193652 () Bool)

(declare-fun e!378474 () Bool)

(declare-fun tp!193653 () Bool)

(assert (=> b!623309 (= e!378474 (and (inv!8146 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))) tp!193653 (inv!8146 (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))) tp!193652))))

(declare-fun b!623311 () Bool)

(declare-fun e!378473 () Bool)

(declare-fun tp!193651 () Bool)

(assert (=> b!623311 (= e!378473 tp!193651)))

(declare-fun b!623310 () Bool)

(assert (=> b!623310 (= e!378474 (and (inv!8158 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))) e!378473))))

(assert (=> b!622865 (= tp!193514 (and (inv!8146 (right!5418 (left!5088 (c!114443 v!6361)))) e!378474))))

(assert (= (and b!622865 ((_ is Node!2060) (right!5418 (left!5088 (c!114443 v!6361))))) b!623309))

(assert (= b!623310 b!623311))

(assert (= (and b!622865 ((_ is Leaf!3223) (right!5418 (left!5088 (c!114443 v!6361))))) b!623310))

(declare-fun m!891655 () Bool)

(assert (=> b!623309 m!891655))

(declare-fun m!891657 () Bool)

(assert (=> b!623309 m!891657))

(declare-fun m!891659 () Bool)

(assert (=> b!623310 m!891659))

(assert (=> b!622865 m!891155))

(declare-fun b!623312 () Bool)

(declare-fun e!378475 () Bool)

(declare-fun tp!193654 () Bool)

(assert (=> b!623312 (= e!378475 (and tp_is_empty!3613 tp!193654))))

(assert (=> b!622916 (= tp!193568 e!378475)))

(assert (= (and b!622916 ((_ is Cons!6415) (t!81932 (t!81932 (originalCharacters!1342 separatorToken!136))))) b!623312))

(declare-fun b!623316 () Bool)

(declare-fun b_free!18249 () Bool)

(declare-fun b_next!18265 () Bool)

(assert (=> b!623316 (= b_free!18249 (not b_next!18265))))

(declare-fun tp!193658 () Bool)

(declare-fun b_and!61927 () Bool)

(assert (=> b!623316 (= tp!193658 b_and!61927)))

(declare-fun b_free!18251 () Bool)

(declare-fun b_next!18267 () Bool)

(assert (=> b!623316 (= b_free!18251 (not b_next!18267))))

(declare-fun tb!54047 () Bool)

(declare-fun t!81970 () Bool)

(assert (=> (and b!623316 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!81970) tb!54047))

(declare-fun result!61058 () Bool)

(assert (= result!61058 result!61030))

(assert (=> d!217899 t!81970))

(declare-fun t!81972 () Bool)

(declare-fun tb!54049 () Bool)

(assert (=> (and b!623316 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!81972) tb!54049))

(declare-fun result!61060 () Bool)

(assert (= result!61060 result!61014))

(assert (=> b!622606 t!81972))

(declare-fun t!81974 () Bool)

(declare-fun tb!54051 () Bool)

(assert (=> (and b!623316 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!81974) tb!54051))

(declare-fun result!61062 () Bool)

(assert (= result!61062 result!61050))

(assert (=> b!623126 t!81974))

(declare-fun t!81976 () Bool)

(declare-fun tb!54053 () Bool)

(assert (=> (and b!623316 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!81976) tb!54053))

(declare-fun result!61064 () Bool)

(assert (= result!61064 result!61054))

(assert (=> d!218079 t!81976))

(assert (=> d!217891 t!81972))

(declare-fun b_and!61929 () Bool)

(declare-fun tp!193659 () Bool)

(assert (=> b!623316 (= tp!193659 (and (=> t!81970 result!61058) (=> t!81976 result!61064) (=> t!81974 result!61062) (=> t!81972 result!61060) b_and!61929))))

(declare-fun tp!193656 () Bool)

(declare-fun e!378477 () Bool)

(declare-fun b!623314 () Bool)

(declare-fun e!378480 () Bool)

(assert (=> b!623314 (= e!378480 (and (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))) e!378477 tp!193656))))

(declare-fun e!378476 () Bool)

(assert (=> b!623316 (= e!378476 (and tp!193658 tp!193659))))

(declare-fun e!378481 () Bool)

(assert (=> b!622867 (= tp!193513 e!378481)))

(declare-fun tp!193657 () Bool)

(declare-fun b!623313 () Bool)

(assert (=> b!623313 (= e!378481 (and (inv!8148 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))) e!378480 tp!193657))))

(declare-fun tp!193655 () Bool)

(declare-fun b!623315 () Bool)

(assert (=> b!623315 (= e!378477 (and tp!193655 (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) e!378476))))

(assert (= b!623315 b!623316))

(assert (= b!623314 b!623315))

(assert (= b!623313 b!623314))

(assert (= (and b!622867 ((_ is Cons!6416) (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))) b!623313))

(declare-fun m!891661 () Bool)

(assert (=> b!623314 m!891661))

(declare-fun m!891663 () Bool)

(assert (=> b!623313 m!891663))

(declare-fun m!891665 () Bool)

(assert (=> b!623315 m!891665))

(declare-fun m!891667 () Bool)

(assert (=> b!623315 m!891667))

(declare-fun b!623317 () Bool)

(declare-fun e!378482 () Bool)

(declare-fun tp!193660 () Bool)

(assert (=> b!623317 (= e!378482 (and tp_is_empty!3613 tp!193660))))

(assert (=> b!622907 (= tp!193556 e!378482)))

(assert (= (and b!622907 ((_ is Cons!6415) (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!623317))

(declare-fun b!623318 () Bool)

(declare-fun e!378483 () Bool)

(declare-fun tp!193661 () Bool)

(assert (=> b!623318 (= e!378483 (and tp_is_empty!3613 tp!193661))))

(assert (=> b!622894 (= tp!193545 e!378483)))

(assert (= (and b!622894 ((_ is Cons!6415) (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) b!623318))

(declare-fun b!623322 () Bool)

(declare-fun b_free!18253 () Bool)

(declare-fun b_next!18269 () Bool)

(assert (=> b!623322 (= b_free!18253 (not b_next!18269))))

(declare-fun tp!193665 () Bool)

(declare-fun b_and!61931 () Bool)

(assert (=> b!623322 (= tp!193665 b_and!61931)))

(declare-fun b_free!18255 () Bool)

(declare-fun b_next!18271 () Bool)

(assert (=> b!623322 (= b_free!18255 (not b_next!18271))))

(declare-fun tb!54055 () Bool)

(declare-fun t!81978 () Bool)

(assert (=> (and b!623322 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!81978) tb!54055))

(declare-fun result!61066 () Bool)

(assert (= result!61066 result!61030))

(assert (=> d!217899 t!81978))

(declare-fun tb!54057 () Bool)

(declare-fun t!81980 () Bool)

(assert (=> (and b!623322 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!81980) tb!54057))

(declare-fun result!61068 () Bool)

(assert (= result!61068 result!61014))

(assert (=> b!622606 t!81980))

(declare-fun t!81982 () Bool)

(declare-fun tb!54059 () Bool)

(assert (=> (and b!623322 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!81982) tb!54059))

(declare-fun result!61070 () Bool)

(assert (= result!61070 result!61050))

(assert (=> b!623126 t!81982))

(declare-fun tb!54061 () Bool)

(declare-fun t!81984 () Bool)

(assert (=> (and b!623322 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!81984) tb!54061))

(declare-fun result!61072 () Bool)

(assert (= result!61072 result!61054))

(assert (=> d!218079 t!81984))

(assert (=> d!217891 t!81980))

(declare-fun b_and!61933 () Bool)

(declare-fun tp!193666 () Bool)

(assert (=> b!623322 (= tp!193666 (and (=> t!81982 result!61070) (=> t!81980 result!61068) (=> t!81978 result!61066) (=> t!81984 result!61072) b_and!61933))))

(declare-fun e!378488 () Bool)

(declare-fun e!378485 () Bool)

(declare-fun tp!193663 () Bool)

(declare-fun b!623320 () Bool)

(assert (=> b!623320 (= e!378488 (and (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))) e!378485 tp!193663))))

(declare-fun e!378484 () Bool)

(assert (=> b!623322 (= e!378484 (and tp!193665 tp!193666))))

(declare-fun e!378489 () Bool)

(assert (=> b!622870 (= tp!193516 e!378489)))

(declare-fun tp!193664 () Bool)

(declare-fun b!623319 () Bool)

(assert (=> b!623319 (= e!378489 (and (inv!8148 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))) e!378488 tp!193664))))

(declare-fun tp!193662 () Bool)

(declare-fun b!623321 () Bool)

(assert (=> b!623321 (= e!378485 (and tp!193662 (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) e!378484))))

(assert (= b!623321 b!623322))

(assert (= b!623320 b!623321))

(assert (= b!623319 b!623320))

(assert (= (and b!622870 ((_ is Cons!6416) (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))) b!623319))

(declare-fun m!891669 () Bool)

(assert (=> b!623320 m!891669))

(declare-fun m!891671 () Bool)

(assert (=> b!623319 m!891671))

(declare-fun m!891673 () Bool)

(assert (=> b!623321 m!891673))

(declare-fun m!891675 () Bool)

(assert (=> b!623321 m!891675))

(declare-fun b!623329 () Bool)

(declare-fun e!378492 () Bool)

(declare-fun tp!193669 () Bool)

(assert (=> b!623329 (= e!378492 tp!193669)))

(declare-fun b!623328 () Bool)

(declare-fun tp!193668 () Bool)

(declare-fun tp!193670 () Bool)

(assert (=> b!623328 (= e!378492 (and tp!193668 tp!193670))))

(declare-fun b!623327 () Bool)

(assert (=> b!623327 (= e!378492 tp_is_empty!3613)))

(declare-fun b!623330 () Bool)

(declare-fun tp!193671 () Bool)

(declare-fun tp!193667 () Bool)

(assert (=> b!623330 (= e!378492 (and tp!193671 tp!193667))))

(assert (=> b!622895 (= tp!193544 e!378492)))

(assert (= (and b!622895 ((_ is ElementMatch!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) b!623327))

(assert (= (and b!622895 ((_ is Concat!2977) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) b!623328))

(assert (= (and b!622895 ((_ is Star!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) b!623329))

(assert (= (and b!622895 ((_ is Union!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) b!623330))

(declare-fun tp!193672 () Bool)

(declare-fun e!378493 () Bool)

(declare-fun b!623331 () Bool)

(declare-fun tp!193674 () Bool)

(assert (=> b!623331 (= e!378493 (and (inv!8156 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) tp!193674 (inv!8156 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) tp!193672))))

(declare-fun b!623333 () Bool)

(declare-fun e!378494 () Bool)

(declare-fun tp!193673 () Bool)

(assert (=> b!623333 (= e!378494 tp!193673)))

(declare-fun b!623332 () Bool)

(assert (=> b!623332 (= e!378493 (and (inv!8162 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) e!378494))))

(assert (=> b!622805 (= tp!193512 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) e!378493))))

(assert (= (and b!622805 ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) b!623331))

(assert (= b!623332 b!623333))

(assert (= (and b!622805 ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) b!623332))

(declare-fun m!891677 () Bool)

(assert (=> b!623331 m!891677))

(declare-fun m!891679 () Bool)

(assert (=> b!623331 m!891679))

(declare-fun m!891681 () Bool)

(assert (=> b!623332 m!891681))

(assert (=> b!622805 m!891093))

(declare-fun b!623336 () Bool)

(declare-fun e!378495 () Bool)

(declare-fun tp!193677 () Bool)

(assert (=> b!623336 (= e!378495 tp!193677)))

(declare-fun b!623335 () Bool)

(declare-fun tp!193676 () Bool)

(declare-fun tp!193678 () Bool)

(assert (=> b!623335 (= e!378495 (and tp!193676 tp!193678))))

(declare-fun b!623334 () Bool)

(assert (=> b!623334 (= e!378495 tp_is_empty!3613)))

(declare-fun b!623337 () Bool)

(declare-fun tp!193679 () Bool)

(declare-fun tp!193675 () Bool)

(assert (=> b!623337 (= e!378495 (and tp!193679 tp!193675))))

(assert (=> b!622913 (= tp!193564 e!378495)))

(assert (= (and b!622913 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623334))

(assert (= (and b!622913 ((_ is Concat!2977) (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623335))

(assert (= (and b!622913 ((_ is Star!1643) (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623336))

(assert (= (and b!622913 ((_ is Union!1643) (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623337))

(declare-fun b!623340 () Bool)

(declare-fun e!378496 () Bool)

(declare-fun tp!193682 () Bool)

(assert (=> b!623340 (= e!378496 tp!193682)))

(declare-fun b!623339 () Bool)

(declare-fun tp!193681 () Bool)

(declare-fun tp!193683 () Bool)

(assert (=> b!623339 (= e!378496 (and tp!193681 tp!193683))))

(declare-fun b!623338 () Bool)

(assert (=> b!623338 (= e!378496 tp_is_empty!3613)))

(declare-fun b!623341 () Bool)

(declare-fun tp!193684 () Bool)

(declare-fun tp!193680 () Bool)

(assert (=> b!623341 (= e!378496 (and tp!193684 tp!193680))))

(assert (=> b!622913 (= tp!193566 e!378496)))

(assert (= (and b!622913 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623338))

(assert (= (and b!622913 ((_ is Concat!2977) (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623339))

(assert (= (and b!622913 ((_ is Star!1643) (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623340))

(assert (= (and b!622913 ((_ is Union!1643) (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623341))

(declare-fun b!623346 () Bool)

(declare-fun e!378498 () Bool)

(declare-fun tp!193687 () Bool)

(assert (=> b!623346 (= e!378498 tp!193687)))

(declare-fun b!623345 () Bool)

(declare-fun tp!193686 () Bool)

(declare-fun tp!193688 () Bool)

(assert (=> b!623345 (= e!378498 (and tp!193686 tp!193688))))

(declare-fun b!623344 () Bool)

(assert (=> b!623344 (= e!378498 tp_is_empty!3613)))

(declare-fun b!623347 () Bool)

(declare-fun tp!193689 () Bool)

(declare-fun tp!193685 () Bool)

(assert (=> b!623347 (= e!378498 (and tp!193689 tp!193685))))

(assert (=> b!622876 (= tp!193525 e!378498)))

(assert (= (and b!622876 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623344))

(assert (= (and b!622876 ((_ is Concat!2977) (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623345))

(assert (= (and b!622876 ((_ is Star!1643) (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623346))

(assert (= (and b!622876 ((_ is Union!1643) (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623347))

(declare-fun b!623350 () Bool)

(declare-fun e!378499 () Bool)

(declare-fun tp!193692 () Bool)

(assert (=> b!623350 (= e!378499 tp!193692)))

(declare-fun b!623349 () Bool)

(declare-fun tp!193691 () Bool)

(declare-fun tp!193693 () Bool)

(assert (=> b!623349 (= e!378499 (and tp!193691 tp!193693))))

(declare-fun b!623348 () Bool)

(assert (=> b!623348 (= e!378499 tp_is_empty!3613)))

(declare-fun b!623351 () Bool)

(declare-fun tp!193694 () Bool)

(declare-fun tp!193690 () Bool)

(assert (=> b!623351 (= e!378499 (and tp!193694 tp!193690))))

(assert (=> b!622876 (= tp!193527 e!378499)))

(assert (= (and b!622876 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623348))

(assert (= (and b!622876 ((_ is Concat!2977) (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623349))

(assert (= (and b!622876 ((_ is Star!1643) (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623350))

(assert (= (and b!622876 ((_ is Union!1643) (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623351))

(declare-fun b!623356 () Bool)

(declare-fun e!378501 () Bool)

(declare-fun tp!193697 () Bool)

(assert (=> b!623356 (= e!378501 tp!193697)))

(declare-fun b!623355 () Bool)

(declare-fun tp!193696 () Bool)

(declare-fun tp!193698 () Bool)

(assert (=> b!623355 (= e!378501 (and tp!193696 tp!193698))))

(declare-fun b!623354 () Bool)

(assert (=> b!623354 (= e!378501 tp_is_empty!3613)))

(declare-fun b!623357 () Bool)

(declare-fun tp!193699 () Bool)

(declare-fun tp!193695 () Bool)

(assert (=> b!623357 (= e!378501 (and tp!193699 tp!193695))))

(assert (=> b!622914 (= tp!193565 e!378501)))

(assert (= (and b!622914 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623354))

(assert (= (and b!622914 ((_ is Concat!2977) (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623355))

(assert (= (and b!622914 ((_ is Star!1643) (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623356))

(assert (= (and b!622914 ((_ is Union!1643) (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623357))

(declare-fun b!623360 () Bool)

(declare-fun e!378502 () Bool)

(declare-fun tp!193702 () Bool)

(assert (=> b!623360 (= e!378502 tp!193702)))

(declare-fun b!623359 () Bool)

(declare-fun tp!193701 () Bool)

(declare-fun tp!193703 () Bool)

(assert (=> b!623359 (= e!378502 (and tp!193701 tp!193703))))

(declare-fun b!623358 () Bool)

(assert (=> b!623358 (= e!378502 tp_is_empty!3613)))

(declare-fun b!623361 () Bool)

(declare-fun tp!193704 () Bool)

(declare-fun tp!193700 () Bool)

(assert (=> b!623361 (= e!378502 (and tp!193704 tp!193700))))

(assert (=> b!622877 (= tp!193526 e!378502)))

(assert (= (and b!622877 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623358))

(assert (= (and b!622877 ((_ is Concat!2977) (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623359))

(assert (= (and b!622877 ((_ is Star!1643) (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623360))

(assert (= (and b!622877 ((_ is Union!1643) (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623361))

(declare-fun b!623366 () Bool)

(declare-fun e!378504 () Bool)

(declare-fun tp!193707 () Bool)

(assert (=> b!623366 (= e!378504 tp!193707)))

(declare-fun b!623365 () Bool)

(declare-fun tp!193706 () Bool)

(declare-fun tp!193708 () Bool)

(assert (=> b!623365 (= e!378504 (and tp!193706 tp!193708))))

(declare-fun b!623364 () Bool)

(assert (=> b!623364 (= e!378504 tp_is_empty!3613)))

(declare-fun b!623367 () Bool)

(declare-fun tp!193709 () Bool)

(declare-fun tp!193705 () Bool)

(assert (=> b!623367 (= e!378504 (and tp!193709 tp!193705))))

(assert (=> b!622873 (= tp!193521 e!378504)))

(assert (= (and b!622873 ((_ is ElementMatch!1643) (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623364))

(assert (= (and b!622873 ((_ is Concat!2977) (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623365))

(assert (= (and b!622873 ((_ is Star!1643) (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623366))

(assert (= (and b!622873 ((_ is Union!1643) (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623367))

(declare-fun b!623370 () Bool)

(declare-fun e!378505 () Bool)

(declare-fun tp!193712 () Bool)

(assert (=> b!623370 (= e!378505 tp!193712)))

(declare-fun b!623369 () Bool)

(declare-fun tp!193711 () Bool)

(declare-fun tp!193713 () Bool)

(assert (=> b!623369 (= e!378505 (and tp!193711 tp!193713))))

(declare-fun b!623368 () Bool)

(assert (=> b!623368 (= e!378505 tp_is_empty!3613)))

(declare-fun b!623371 () Bool)

(declare-fun tp!193714 () Bool)

(declare-fun tp!193710 () Bool)

(assert (=> b!623371 (= e!378505 (and tp!193714 tp!193710))))

(assert (=> b!622911 (= tp!193562 e!378505)))

(assert (= (and b!622911 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623368))

(assert (= (and b!622911 ((_ is Concat!2977) (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623369))

(assert (= (and b!622911 ((_ is Star!1643) (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623370))

(assert (= (and b!622911 ((_ is Union!1643) (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623371))

(declare-fun b!623374 () Bool)

(declare-fun e!378506 () Bool)

(declare-fun tp!193717 () Bool)

(assert (=> b!623374 (= e!378506 tp!193717)))

(declare-fun b!623373 () Bool)

(declare-fun tp!193716 () Bool)

(declare-fun tp!193718 () Bool)

(assert (=> b!623373 (= e!378506 (and tp!193716 tp!193718))))

(declare-fun b!623372 () Bool)

(assert (=> b!623372 (= e!378506 tp_is_empty!3613)))

(declare-fun b!623375 () Bool)

(declare-fun tp!193719 () Bool)

(declare-fun tp!193715 () Bool)

(assert (=> b!623375 (= e!378506 (and tp!193719 tp!193715))))

(assert (=> b!622911 (= tp!193558 e!378506)))

(assert (= (and b!622911 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623372))

(assert (= (and b!622911 ((_ is Concat!2977) (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623373))

(assert (= (and b!622911 ((_ is Star!1643) (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623374))

(assert (= (and b!622911 ((_ is Union!1643) (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623375))

(declare-fun b!623378 () Bool)

(declare-fun e!378507 () Bool)

(declare-fun tp!193722 () Bool)

(assert (=> b!623378 (= e!378507 tp!193722)))

(declare-fun b!623377 () Bool)

(declare-fun tp!193721 () Bool)

(declare-fun tp!193723 () Bool)

(assert (=> b!623377 (= e!378507 (and tp!193721 tp!193723))))

(declare-fun b!623376 () Bool)

(assert (=> b!623376 (= e!378507 tp_is_empty!3613)))

(declare-fun b!623379 () Bool)

(declare-fun tp!193724 () Bool)

(declare-fun tp!193720 () Bool)

(assert (=> b!623379 (= e!378507 (and tp!193724 tp!193720))))

(assert (=> b!622874 (= tp!193523 e!378507)))

(assert (= (and b!622874 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623376))

(assert (= (and b!622874 ((_ is Concat!2977) (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623377))

(assert (= (and b!622874 ((_ is Star!1643) (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623378))

(assert (= (and b!622874 ((_ is Union!1643) (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623379))

(declare-fun b!623383 () Bool)

(declare-fun e!378509 () Bool)

(declare-fun tp!193728 () Bool)

(assert (=> b!623383 (= e!378509 tp!193728)))

(declare-fun b!623382 () Bool)

(declare-fun tp!193727 () Bool)

(declare-fun tp!193729 () Bool)

(assert (=> b!623382 (= e!378509 (and tp!193727 tp!193729))))

(declare-fun b!623381 () Bool)

(assert (=> b!623381 (= e!378509 tp_is_empty!3613)))

(declare-fun b!623384 () Bool)

(declare-fun tp!193730 () Bool)

(declare-fun tp!193726 () Bool)

(assert (=> b!623384 (= e!378509 (and tp!193730 tp!193726))))

(assert (=> b!622874 (= tp!193519 e!378509)))

(assert (= (and b!622874 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623381))

(assert (= (and b!622874 ((_ is Concat!2977) (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623382))

(assert (= (and b!622874 ((_ is Star!1643) (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623383))

(assert (= (and b!622874 ((_ is Union!1643) (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623384))

(declare-fun b!623385 () Bool)

(declare-fun tp!193731 () Bool)

(declare-fun tp!193733 () Bool)

(declare-fun e!378510 () Bool)

(assert (=> b!623385 (= e!378510 (and (inv!8156 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) tp!193733 (inv!8156 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) tp!193731))))

(declare-fun b!623387 () Bool)

(declare-fun e!378511 () Bool)

(declare-fun tp!193732 () Bool)

(assert (=> b!623387 (= e!378511 tp!193732)))

(declare-fun b!623386 () Bool)

(assert (=> b!623386 (= e!378510 (and (inv!8162 (xs!4696 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!378511))))

(assert (=> b!622905 (= tp!193557 (and (inv!8156 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378510))))

(assert (= (and b!622905 ((_ is Node!2059) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) b!623385))

(assert (= b!623386 b!623387))

(assert (= (and b!622905 ((_ is Leaf!3222) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) b!623386))

(declare-fun m!891703 () Bool)

(assert (=> b!623385 m!891703))

(declare-fun m!891705 () Bool)

(assert (=> b!623385 m!891705))

(declare-fun m!891707 () Bool)

(assert (=> b!623386 m!891707))

(assert (=> b!622905 m!891173))

(declare-fun e!378512 () Bool)

(declare-fun tp!193736 () Bool)

(declare-fun tp!193734 () Bool)

(declare-fun b!623388 () Bool)

(assert (=> b!623388 (= e!378512 (and (inv!8156 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) tp!193736 (inv!8156 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) tp!193734))))

(declare-fun b!623390 () Bool)

(declare-fun e!378513 () Bool)

(declare-fun tp!193735 () Bool)

(assert (=> b!623390 (= e!378513 tp!193735)))

(declare-fun b!623389 () Bool)

(assert (=> b!623389 (= e!378512 (and (inv!8162 (xs!4696 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!378513))))

(assert (=> b!622905 (= tp!193555 (and (inv!8156 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378512))))

(assert (= (and b!622905 ((_ is Node!2059) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) b!623388))

(assert (= b!623389 b!623390))

(assert (= (and b!622905 ((_ is Leaf!3222) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) b!623389))

(declare-fun m!891711 () Bool)

(assert (=> b!623388 m!891711))

(declare-fun m!891713 () Bool)

(assert (=> b!623388 m!891713))

(declare-fun m!891715 () Bool)

(assert (=> b!623389 m!891715))

(assert (=> b!622905 m!891175))

(declare-fun b!623395 () Bool)

(declare-fun tp!193739 () Bool)

(declare-fun e!378517 () Bool)

(declare-fun tp!193738 () Bool)

(assert (=> b!623395 (= e!378517 (and (inv!8146 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))) tp!193739 (inv!8146 (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))) tp!193738))))

(declare-fun b!623397 () Bool)

(declare-fun e!378516 () Bool)

(declare-fun tp!193737 () Bool)

(assert (=> b!623397 (= e!378516 tp!193737)))

(declare-fun b!623396 () Bool)

(assert (=> b!623396 (= e!378517 (and (inv!8158 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))) e!378516))))

(assert (=> b!622868 (= tp!193518 (and (inv!8146 (left!5088 (right!5418 (c!114443 v!6361)))) e!378517))))

(assert (= (and b!622868 ((_ is Node!2060) (left!5088 (right!5418 (c!114443 v!6361))))) b!623395))

(assert (= b!623396 b!623397))

(assert (= (and b!622868 ((_ is Leaf!3223) (left!5088 (right!5418 (c!114443 v!6361))))) b!623396))

(declare-fun m!891717 () Bool)

(assert (=> b!623395 m!891717))

(declare-fun m!891719 () Bool)

(assert (=> b!623395 m!891719))

(declare-fun m!891721 () Bool)

(assert (=> b!623396 m!891721))

(assert (=> b!622868 m!891159))

(declare-fun tp!193742 () Bool)

(declare-fun e!378519 () Bool)

(declare-fun b!623398 () Bool)

(declare-fun tp!193741 () Bool)

(assert (=> b!623398 (= e!378519 (and (inv!8146 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))) tp!193742 (inv!8146 (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))) tp!193741))))

(declare-fun b!623400 () Bool)

(declare-fun e!378518 () Bool)

(declare-fun tp!193740 () Bool)

(assert (=> b!623400 (= e!378518 tp!193740)))

(declare-fun b!623399 () Bool)

(assert (=> b!623399 (= e!378519 (and (inv!8158 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))) e!378518))))

(assert (=> b!622868 (= tp!193517 (and (inv!8146 (right!5418 (right!5418 (c!114443 v!6361)))) e!378519))))

(assert (= (and b!622868 ((_ is Node!2060) (right!5418 (right!5418 (c!114443 v!6361))))) b!623398))

(assert (= b!623399 b!623400))

(assert (= (and b!622868 ((_ is Leaf!3223) (right!5418 (right!5418 (c!114443 v!6361))))) b!623399))

(declare-fun m!891729 () Bool)

(assert (=> b!623398 m!891729))

(declare-fun m!891733 () Bool)

(assert (=> b!623398 m!891733))

(declare-fun m!891735 () Bool)

(assert (=> b!623399 m!891735))

(assert (=> b!622868 m!891161))

(declare-fun b!623404 () Bool)

(declare-fun b_free!18257 () Bool)

(declare-fun b_next!18273 () Bool)

(assert (=> b!623404 (= b_free!18257 (not b_next!18273))))

(declare-fun tp!193746 () Bool)

(declare-fun b_and!61939 () Bool)

(assert (=> b!623404 (= tp!193746 b_and!61939)))

(declare-fun b_free!18259 () Bool)

(declare-fun b_next!18275 () Bool)

(assert (=> b!623404 (= b_free!18259 (not b_next!18275))))

(declare-fun tb!54067 () Bool)

(declare-fun t!81990 () Bool)

(assert (=> (and b!623404 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!81990) tb!54067))

(declare-fun result!61078 () Bool)

(assert (= result!61078 result!61030))

(assert (=> d!217899 t!81990))

(declare-fun t!81992 () Bool)

(declare-fun tb!54069 () Bool)

(assert (=> (and b!623404 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!81992) tb!54069))

(declare-fun result!61080 () Bool)

(assert (= result!61080 result!61014))

(assert (=> b!622606 t!81992))

(declare-fun t!81994 () Bool)

(declare-fun tb!54071 () Bool)

(assert (=> (and b!623404 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!81994) tb!54071))

(declare-fun result!61082 () Bool)

(assert (= result!61082 result!61050))

(assert (=> b!623126 t!81994))

(declare-fun tb!54073 () Bool)

(declare-fun t!81996 () Bool)

(assert (=> (and b!623404 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!81996) tb!54073))

(declare-fun result!61084 () Bool)

(assert (= result!61084 result!61054))

(assert (=> d!218079 t!81996))

(assert (=> d!217891 t!81992))

(declare-fun b_and!61941 () Bool)

(declare-fun tp!193747 () Bool)

(assert (=> b!623404 (= tp!193747 (and (=> t!81994 result!61082) (=> t!81992 result!61080) (=> t!81996 result!61084) (=> t!81990 result!61078) b_and!61941))))

(declare-fun tp!193744 () Bool)

(declare-fun e!378524 () Bool)

(declare-fun e!378521 () Bool)

(declare-fun b!623402 () Bool)

(assert (=> b!623402 (= e!378524 (and (inv!21 (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) e!378521 tp!193744))))

(declare-fun e!378520 () Bool)

(assert (=> b!623404 (= e!378520 (and tp!193746 tp!193747))))

(declare-fun e!378525 () Bool)

(assert (=> b!622893 (= tp!193546 e!378525)))

(declare-fun tp!193745 () Bool)

(declare-fun b!623401 () Bool)

(assert (=> b!623401 (= e!378525 (and (inv!8148 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) e!378524 tp!193745))))

(declare-fun b!623403 () Bool)

(declare-fun tp!193743 () Bool)

(assert (=> b!623403 (= e!378521 (and tp!193743 (inv!8141 (tag!1571 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) e!378520))))

(assert (= b!623403 b!623404))

(assert (= b!623402 b!623403))

(assert (= b!623401 b!623402))

(assert (= (and b!622893 ((_ is Cons!6416) (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) b!623401))

(declare-fun m!891745 () Bool)

(assert (=> b!623402 m!891745))

(declare-fun m!891749 () Bool)

(assert (=> b!623401 m!891749))

(declare-fun m!891751 () Bool)

(assert (=> b!623403 m!891751))

(declare-fun m!891753 () Bool)

(assert (=> b!623403 m!891753))

(declare-fun b!623409 () Bool)

(declare-fun e!378527 () Bool)

(declare-fun tp!193750 () Bool)

(assert (=> b!623409 (= e!378527 tp!193750)))

(declare-fun b!623408 () Bool)

(declare-fun tp!193749 () Bool)

(declare-fun tp!193751 () Bool)

(assert (=> b!623408 (= e!378527 (and tp!193749 tp!193751))))

(declare-fun b!623407 () Bool)

(assert (=> b!623407 (= e!378527 tp_is_empty!3613)))

(declare-fun b!623410 () Bool)

(declare-fun tp!193752 () Bool)

(declare-fun tp!193748 () Bool)

(assert (=> b!623410 (= e!378527 (and tp!193752 tp!193748))))

(assert (=> b!622880 (= tp!193530 e!378527)))

(assert (= (and b!622880 ((_ is ElementMatch!1643) (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623407))

(assert (= (and b!622880 ((_ is Concat!2977) (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623408))

(assert (= (and b!622880 ((_ is Star!1643) (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623409))

(assert (= (and b!622880 ((_ is Union!1643) (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623410))

(declare-fun b!623413 () Bool)

(declare-fun e!378528 () Bool)

(declare-fun tp!193755 () Bool)

(assert (=> b!623413 (= e!378528 tp!193755)))

(declare-fun b!623412 () Bool)

(declare-fun tp!193754 () Bool)

(declare-fun tp!193756 () Bool)

(assert (=> b!623412 (= e!378528 (and tp!193754 tp!193756))))

(declare-fun b!623411 () Bool)

(assert (=> b!623411 (= e!378528 tp_is_empty!3613)))

(declare-fun b!623414 () Bool)

(declare-fun tp!193757 () Bool)

(declare-fun tp!193753 () Bool)

(assert (=> b!623414 (= e!378528 (and tp!193757 tp!193753))))

(assert (=> b!622880 (= tp!193532 e!378528)))

(assert (= (and b!622880 ((_ is ElementMatch!1643) (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623411))

(assert (= (and b!622880 ((_ is Concat!2977) (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623412))

(assert (= (and b!622880 ((_ is Star!1643) (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623413))

(assert (= (and b!622880 ((_ is Union!1643) (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623414))

(declare-fun b!623421 () Bool)

(declare-fun e!378531 () Bool)

(declare-fun tp!193760 () Bool)

(assert (=> b!623421 (= e!378531 tp!193760)))

(declare-fun b!623420 () Bool)

(declare-fun tp!193759 () Bool)

(declare-fun tp!193761 () Bool)

(assert (=> b!623420 (= e!378531 (and tp!193759 tp!193761))))

(declare-fun b!623419 () Bool)

(assert (=> b!623419 (= e!378531 tp_is_empty!3613)))

(declare-fun b!623422 () Bool)

(declare-fun tp!193762 () Bool)

(declare-fun tp!193758 () Bool)

(assert (=> b!623422 (= e!378531 (and tp!193762 tp!193758))))

(assert (=> b!622909 (= tp!193559 e!378531)))

(assert (= (and b!622909 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623419))

(assert (= (and b!622909 ((_ is Concat!2977) (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623420))

(assert (= (and b!622909 ((_ is Star!1643) (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623421))

(assert (= (and b!622909 ((_ is Union!1643) (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623422))

(declare-fun b!623425 () Bool)

(declare-fun e!378532 () Bool)

(declare-fun tp!193765 () Bool)

(assert (=> b!623425 (= e!378532 tp!193765)))

(declare-fun b!623424 () Bool)

(declare-fun tp!193764 () Bool)

(declare-fun tp!193766 () Bool)

(assert (=> b!623424 (= e!378532 (and tp!193764 tp!193766))))

(declare-fun b!623423 () Bool)

(assert (=> b!623423 (= e!378532 tp_is_empty!3613)))

(declare-fun b!623426 () Bool)

(declare-fun tp!193767 () Bool)

(declare-fun tp!193763 () Bool)

(assert (=> b!623426 (= e!378532 (and tp!193767 tp!193763))))

(assert (=> b!622909 (= tp!193561 e!378532)))

(assert (= (and b!622909 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623423))

(assert (= (and b!622909 ((_ is Concat!2977) (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623424))

(assert (= (and b!622909 ((_ is Star!1643) (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623425))

(assert (= (and b!622909 ((_ is Union!1643) (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623426))

(declare-fun b!623429 () Bool)

(declare-fun e!378533 () Bool)

(declare-fun tp!193770 () Bool)

(assert (=> b!623429 (= e!378533 tp!193770)))

(declare-fun b!623428 () Bool)

(declare-fun tp!193769 () Bool)

(declare-fun tp!193771 () Bool)

(assert (=> b!623428 (= e!378533 (and tp!193769 tp!193771))))

(declare-fun b!623427 () Bool)

(assert (=> b!623427 (= e!378533 tp_is_empty!3613)))

(declare-fun b!623430 () Bool)

(declare-fun tp!193772 () Bool)

(declare-fun tp!193768 () Bool)

(assert (=> b!623430 (= e!378533 (and tp!193772 tp!193768))))

(assert (=> b!622881 (= tp!193531 e!378533)))

(assert (= (and b!622881 ((_ is ElementMatch!1643) (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623427))

(assert (= (and b!622881 ((_ is Concat!2977) (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623428))

(assert (= (and b!622881 ((_ is Star!1643) (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623429))

(assert (= (and b!622881 ((_ is Union!1643) (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623430))

(declare-fun b!623433 () Bool)

(declare-fun e!378534 () Bool)

(declare-fun tp!193775 () Bool)

(assert (=> b!623433 (= e!378534 tp!193775)))

(declare-fun b!623432 () Bool)

(declare-fun tp!193774 () Bool)

(declare-fun tp!193776 () Bool)

(assert (=> b!623432 (= e!378534 (and tp!193774 tp!193776))))

(declare-fun b!623431 () Bool)

(assert (=> b!623431 (= e!378534 tp_is_empty!3613)))

(declare-fun b!623434 () Bool)

(declare-fun tp!193777 () Bool)

(declare-fun tp!193773 () Bool)

(assert (=> b!623434 (= e!378534 (and tp!193777 tp!193773))))

(assert (=> b!622872 (= tp!193520 e!378534)))

(assert (= (and b!622872 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623431))

(assert (= (and b!622872 ((_ is Concat!2977) (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623432))

(assert (= (and b!622872 ((_ is Star!1643) (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623433))

(assert (= (and b!622872 ((_ is Union!1643) (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623434))

(declare-fun b!623437 () Bool)

(declare-fun e!378535 () Bool)

(declare-fun tp!193780 () Bool)

(assert (=> b!623437 (= e!378535 tp!193780)))

(declare-fun b!623436 () Bool)

(declare-fun tp!193779 () Bool)

(declare-fun tp!193781 () Bool)

(assert (=> b!623436 (= e!378535 (and tp!193779 tp!193781))))

(declare-fun b!623435 () Bool)

(assert (=> b!623435 (= e!378535 tp_is_empty!3613)))

(declare-fun b!623438 () Bool)

(declare-fun tp!193782 () Bool)

(declare-fun tp!193778 () Bool)

(assert (=> b!623438 (= e!378535 (and tp!193782 tp!193778))))

(assert (=> b!622872 (= tp!193522 e!378535)))

(assert (= (and b!622872 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623435))

(assert (= (and b!622872 ((_ is Concat!2977) (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623436))

(assert (= (and b!622872 ((_ is Star!1643) (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623437))

(assert (= (and b!622872 ((_ is Union!1643) (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136)))))) b!623438))

(declare-fun b!623441 () Bool)

(declare-fun e!378536 () Bool)

(declare-fun tp!193785 () Bool)

(assert (=> b!623441 (= e!378536 tp!193785)))

(declare-fun b!623440 () Bool)

(declare-fun tp!193784 () Bool)

(declare-fun tp!193786 () Bool)

(assert (=> b!623440 (= e!378536 (and tp!193784 tp!193786))))

(declare-fun b!623439 () Bool)

(assert (=> b!623439 (= e!378536 tp_is_empty!3613)))

(declare-fun b!623442 () Bool)

(declare-fun tp!193787 () Bool)

(declare-fun tp!193783 () Bool)

(assert (=> b!623442 (= e!378536 (and tp!193787 tp!193783))))

(assert (=> b!622910 (= tp!193560 e!378536)))

(assert (= (and b!622910 ((_ is ElementMatch!1643) (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623439))

(assert (= (and b!622910 ((_ is Concat!2977) (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623440))

(assert (= (and b!622910 ((_ is Star!1643) (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623441))

(assert (= (and b!622910 ((_ is Union!1643) (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136)))))) b!623442))

(declare-fun b!623445 () Bool)

(declare-fun e!378537 () Bool)

(declare-fun tp!193790 () Bool)

(assert (=> b!623445 (= e!378537 tp!193790)))

(declare-fun b!623444 () Bool)

(declare-fun tp!193789 () Bool)

(declare-fun tp!193791 () Bool)

(assert (=> b!623444 (= e!378537 (and tp!193789 tp!193791))))

(declare-fun b!623443 () Bool)

(assert (=> b!623443 (= e!378537 tp_is_empty!3613)))

(declare-fun b!623446 () Bool)

(declare-fun tp!193792 () Bool)

(declare-fun tp!193788 () Bool)

(assert (=> b!623446 (= e!378537 (and tp!193792 tp!193788))))

(assert (=> b!622882 (= tp!193533 e!378537)))

(assert (= (and b!622882 ((_ is ElementMatch!1643) (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623443))

(assert (= (and b!622882 ((_ is Concat!2977) (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623444))

(assert (= (and b!622882 ((_ is Star!1643) (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623445))

(assert (= (and b!622882 ((_ is Union!1643) (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623446))

(declare-fun b!623449 () Bool)

(declare-fun e!378538 () Bool)

(declare-fun tp!193795 () Bool)

(assert (=> b!623449 (= e!378538 tp!193795)))

(declare-fun b!623448 () Bool)

(declare-fun tp!193794 () Bool)

(declare-fun tp!193796 () Bool)

(assert (=> b!623448 (= e!378538 (and tp!193794 tp!193796))))

(declare-fun b!623447 () Bool)

(assert (=> b!623447 (= e!378538 tp_is_empty!3613)))

(declare-fun b!623450 () Bool)

(declare-fun tp!193797 () Bool)

(declare-fun tp!193793 () Bool)

(assert (=> b!623450 (= e!378538 (and tp!193797 tp!193793))))

(assert (=> b!622882 (= tp!193529 e!378538)))

(assert (= (and b!622882 ((_ is ElementMatch!1643) (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623447))

(assert (= (and b!622882 ((_ is Concat!2977) (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623448))

(assert (= (and b!622882 ((_ is Star!1643) (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623449))

(assert (= (and b!622882 ((_ is Union!1643) (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136)))))) b!623450))

(declare-fun b_lambda!24627 () Bool)

(assert (= b_lambda!24621 (or (and b!622896 b_free!18243) (and b!622524 b_free!18239 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (and b!623316 b_free!18251 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (and b!623322 b_free!18255 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (and b!623404 b_free!18259 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b_lambda!24627)))

(declare-fun b_lambda!24629 () Bool)

(assert (= b_lambda!24611 (or (and b!622524 b_free!18239 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))))) (and b!623322 b_free!18255 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))))) (and b!623404 b_free!18259 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))))) (and b!623316 b_free!18251 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))))) (and b!622896 b_free!18243 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))))) b_lambda!24629)))

(declare-fun b_lambda!24631 () Bool)

(assert (= b_lambda!24607 (or (and b!622896 b_free!18243 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!623316 b_free!18251 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!623322 b_free!18255 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!623404 b_free!18259 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) b_lambda!24631)))

(check-sat (not d!217999) (not b!623125) (not b_next!18253) (not b!623359) (not b!623145) (not b!623310) (not b!623444) (not b!623436) (not b!623107) (not b!623355) (not d!218041) (not b!623253) b_and!61929 (not b!623174) (not b!623446) (not b!623069) (not b!623101) (not tb!54043) (not b_lambda!24629) (not b!623396) (not b!623332) (not b!623434) (not b!623136) (not b!623198) (not b!623450) (not b!623207) (not b!623119) (not b!623155) (not b!623128) (not d!218107) (not d!218075) (not b!623205) (not b!623081) (not b!623291) b_and!61933 (not d!217981) (not b!623276) b_and!61907 (not b!623413) (not b!623386) b_and!61941 b_and!61925 (not b!623387) (not b_next!18269) (not b!623360) (not b!623370) (not b!622868) (not b!623150) (not b!623437) (not b!623165) (not b!623104) (not b!623420) (not b!623074) (not b!623311) (not b!623388) (not b!623185) (not b!623365) (not b!623308) (not b!623339) (not b!623275) (not b!623126) (not b!623432) (not b!623314) (not b!623337) (not b!623331) (not b!623224) (not b!623307) b_and!61927 (not b!623303) (not d!218043) (not b!623201) (not b!623061) (not b!623397) (not b!623120) (not b!623357) (not b!623313) (not b!623060) (not b!623122) (not b!623257) (not b!623347) (not d!217985) (not b!623149) (not b!623152) (not b!623141) (not d!217977) (not b_lambda!24631) (not b!623408) (not b_next!18275) (not b!623315) (not b!623445) (not b!623395) (not b!623203) (not b!623299) (not b!623428) (not d!218085) (not b!623361) (not tb!54039) (not b!623295) (not b!623369) (not b!623232) (not b!623231) (not b!623378) (not b!623111) (not b!623200) (not b!623424) (not b!623403) (not b!623398) (not b!623234) (not b!623371) (not b!623255) (not b!623178) (not b!623071) (not d!218059) (not d!218001) (not b!623341) (not b!623143) (not d!218079) (not b!623421) (not b!623329) (not d!217973) b_and!61931 b_and!61895 (not d!218091) (not b!623182) (not b!623389) (not b!623067) (not b!623294) (not b!623320) (not d!217995) (not b!623180) (not b!623173) (not b!623298) (not b!623383) (not b!623117) (not d!217971) (not b!623098) (not b!623390) (not b!623209) (not b!623158) (not b!623375) (not b!623384) (not b!623169) (not b!623425) (not b!623147) (not b!623153) (not b!623102) (not b!623319) (not b!622905) (not b!623336) (not b!623166) (not b!623123) (not b!623351) (not b!623156) (not b!623072) (not b!622865) (not b!623097) (not b!623335) (not b_lambda!24613) (not bm!41136) (not b!623409) (not b_next!18265) (not b!623340) (not b!623414) (not b!623317) (not b!623382) (not b!623385) (not b!623293) (not b!623176) (not b!623160) (not b!623093) (not b!623346) (not b_next!18259) (not b!623321) (not b!623157) (not b_lambda!24627) (not b!623058) (not d!218083) (not b!623433) (not b!623333) (not b!623127) (not b!623330) (not b!623289) (not b!623349) (not b!623442) (not b!623374) (not b!623159) (not b!623261) (not b!622805) (not b!623379) (not d!217991) (not b!623199) (not b!623108) (not b!623426) (not b!623449) (not b!623422) (not b_next!18273) (not b!623441) (not b!623075) (not b!623448) (not b!623373) (not b!623183) (not b!623264) (not b!623306) (not b!623430) (not b!623056) (not b!623297) (not b!623112) (not b!623400) (not b!623305) (not b!623328) (not b!623429) (not d!218101) b_and!61939 (not b!623438) (not b!623356) (not b!623412) (not b!623114) (not b_next!18267) (not d!218115) (not b!623265) (not d!218011) (not d!218019) (not b!623057) (not b!623440) (not b!623262) (not b!623366) (not d!217959) (not d!218089) (not b!623161) (not b!623139) (not b!623312) (not b!623168) (not b!623399) (not d!217997) (not b_lambda!24623) (not b!623367) (not d!218119) (not b!623202) (not b!623402) (not b!623092) (not b_next!18255) (not b!623116) (not b!623401) (not b!623309) (not d!217983) (not d!218013) (not b!623350) (not b_next!18257) (not b!623164) (not b_next!18271) (not b!623318) (not d!218099) (not b!623410) (not d!218093) (not b!623238) (not b!623290) (not b!623059) tp_is_empty!3613 (not b!623345) (not b!623229) (not b!623237) (not b!623304) b_and!61923 (not b!623377))
(check-sat (not b_next!18253) b_and!61929 b_and!61927 (not b_next!18275) b_and!61931 b_and!61895 (not b_next!18265) (not b_next!18259) (not b_next!18273) b_and!61939 (not b_next!18267) (not b_next!18255) b_and!61923 b_and!61933 b_and!61907 b_and!61941 b_and!61925 (not b_next!18269) (not b_next!18257) (not b_next!18271))
(get-model)

(declare-fun d!218265 () Bool)

(declare-fun res!271169 () Bool)

(declare-fun e!378669 () Bool)

(assert (=> d!218265 (=> (not res!271169) (not e!378669))))

(assert (=> d!218265 (= res!271169 (<= (size!5003 (list!2694 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361)))))) 512))))

(assert (=> d!218265 (= (inv!8151 (left!5088 (left!5088 (c!114443 v!6361)))) e!378669)))

(declare-fun b!623734 () Bool)

(declare-fun res!271170 () Bool)

(assert (=> b!623734 (=> (not res!271170) (not e!378669))))

(assert (=> b!623734 (= res!271170 (= (csize!4351 (left!5088 (left!5088 (c!114443 v!6361)))) (size!5003 (list!2694 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))))

(declare-fun b!623735 () Bool)

(assert (=> b!623735 (= e!378669 (and (> (csize!4351 (left!5088 (left!5088 (c!114443 v!6361)))) 0) (<= (csize!4351 (left!5088 (left!5088 (c!114443 v!6361)))) 512)))))

(assert (= (and d!218265 res!271169) b!623734))

(assert (= (and b!623734 res!271170) b!623735))

(declare-fun m!892039 () Bool)

(assert (=> d!218265 m!892039))

(assert (=> d!218265 m!892039))

(declare-fun m!892041 () Bool)

(assert (=> d!218265 m!892041))

(assert (=> b!623734 m!892039))

(assert (=> b!623734 m!892039))

(assert (=> b!623734 m!892041))

(assert (=> b!623152 d!218265))

(declare-fun b!623736 () Bool)

(declare-fun res!271176 () Bool)

(declare-fun e!378670 () Bool)

(assert (=> b!623736 (=> (not res!271176) (not e!378670))))

(assert (=> b!623736 (= res!271176 (isBalanced!544 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!623737 () Bool)

(declare-fun res!271173 () Bool)

(assert (=> b!623737 (=> (not res!271173) (not e!378670))))

(assert (=> b!623737 (= res!271173 (isBalanced!544 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun d!218267 () Bool)

(declare-fun res!271172 () Bool)

(declare-fun e!378671 () Bool)

(assert (=> d!218267 (=> res!271172 e!378671)))

(assert (=> d!218267 (= res!271172 (not ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (=> d!218267 (= (isBalanced!544 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) e!378671)))

(declare-fun b!623738 () Bool)

(declare-fun res!271171 () Bool)

(assert (=> b!623738 (=> (not res!271171) (not e!378670))))

(assert (=> b!623738 (= res!271171 (not (isEmpty!4576 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(declare-fun b!623739 () Bool)

(declare-fun res!271175 () Bool)

(assert (=> b!623739 (=> (not res!271175) (not e!378670))))

(assert (=> b!623739 (= res!271175 (<= (- (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) 1))))

(declare-fun b!623740 () Bool)

(assert (=> b!623740 (= e!378670 (not (isEmpty!4576 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(declare-fun b!623741 () Bool)

(assert (=> b!623741 (= e!378671 e!378670)))

(declare-fun res!271174 () Bool)

(assert (=> b!623741 (=> (not res!271174) (not e!378670))))

(assert (=> b!623741 (= res!271174 (<= (- 1) (- (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))))

(assert (= (and d!218267 (not res!271172)) b!623741))

(assert (= (and b!623741 res!271174) b!623739))

(assert (= (and b!623739 res!271175) b!623736))

(assert (= (and b!623736 res!271176) b!623737))

(assert (= (and b!623737 res!271173) b!623738))

(assert (= (and b!623738 res!271171) b!623740))

(declare-fun m!892043 () Bool)

(assert (=> b!623738 m!892043))

(declare-fun m!892045 () Bool)

(assert (=> b!623739 m!892045))

(declare-fun m!892047 () Bool)

(assert (=> b!623739 m!892047))

(declare-fun m!892049 () Bool)

(assert (=> b!623736 m!892049))

(assert (=> b!623741 m!892045))

(assert (=> b!623741 m!892047))

(declare-fun m!892051 () Bool)

(assert (=> b!623740 m!892051))

(declare-fun m!892053 () Bool)

(assert (=> b!623737 m!892053))

(assert (=> d!218001 d!218267))

(declare-fun d!218269 () Bool)

(declare-fun c!114664 () Bool)

(assert (=> d!218269 (= c!114664 ((_ is Nil!6415) (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun e!378672 () (InoxSet C!4212))

(assert (=> d!218269 (= (content!1153 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) e!378672)))

(declare-fun b!623742 () Bool)

(assert (=> b!623742 (= e!378672 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623743 () Bool)

(assert (=> b!623743 (= e!378672 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) true) (content!1153 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(assert (= (and d!218269 c!114664) b!623742))

(assert (= (and d!218269 (not c!114664)) b!623743))

(declare-fun m!892055 () Bool)

(assert (=> b!623743 m!892055))

(declare-fun m!892057 () Bool)

(assert (=> b!623743 m!892057))

(assert (=> b!623069 d!218269))

(declare-fun d!218271 () Bool)

(declare-fun lt!266439 () Int)

(assert (=> d!218271 (>= lt!266439 0)))

(declare-fun e!378673 () Int)

(assert (=> d!218271 (= lt!266439 e!378673)))

(declare-fun c!114665 () Bool)

(assert (=> d!218271 (= c!114665 ((_ is Nil!6416) (list!2694 (xs!4697 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218271 (= (size!5003 (list!2694 (xs!4697 (left!5088 (c!114443 v!6361))))) lt!266439)))

(declare-fun b!623744 () Bool)

(assert (=> b!623744 (= e!378673 0)))

(declare-fun b!623745 () Bool)

(assert (=> b!623745 (= e!378673 (+ 1 (size!5003 (t!81933 (list!2694 (xs!4697 (left!5088 (c!114443 v!6361))))))))))

(assert (= (and d!218271 c!114665) b!623744))

(assert (= (and d!218271 (not c!114665)) b!623745))

(declare-fun m!892059 () Bool)

(assert (=> b!623745 m!892059))

(assert (=> b!623265 d!218271))

(declare-fun d!218273 () Bool)

(assert (=> d!218273 (= (list!2694 (xs!4697 (left!5088 (c!114443 v!6361)))) (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))

(assert (=> b!623265 d!218273))

(declare-fun d!218275 () Bool)

(declare-fun c!114666 () Bool)

(assert (=> d!218275 (= c!114666 ((_ is Node!2059) (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun e!378674 () Bool)

(assert (=> d!218275 (= (inv!8156 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!378674)))

(declare-fun b!623746 () Bool)

(assert (=> b!623746 (= e!378674 (inv!8160 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!623747 () Bool)

(declare-fun e!378675 () Bool)

(assert (=> b!623747 (= e!378674 e!378675)))

(declare-fun res!271177 () Bool)

(assert (=> b!623747 (= res!271177 (not ((_ is Leaf!3222) (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> b!623747 (=> res!271177 e!378675)))

(declare-fun b!623748 () Bool)

(assert (=> b!623748 (= e!378675 (inv!8161 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (= (and d!218275 c!114666) b!623746))

(assert (= (and d!218275 (not c!114666)) b!623747))

(assert (= (and b!623747 (not res!271177)) b!623748))

(declare-fun m!892061 () Bool)

(assert (=> b!623746 m!892061))

(declare-fun m!892063 () Bool)

(assert (=> b!623748 m!892063))

(assert (=> b!623388 d!218275))

(declare-fun d!218277 () Bool)

(declare-fun c!114667 () Bool)

(assert (=> d!218277 (= c!114667 ((_ is Node!2059) (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun e!378676 () Bool)

(assert (=> d!218277 (= (inv!8156 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!378676)))

(declare-fun b!623749 () Bool)

(assert (=> b!623749 (= e!378676 (inv!8160 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!623750 () Bool)

(declare-fun e!378677 () Bool)

(assert (=> b!623750 (= e!378676 e!378677)))

(declare-fun res!271178 () Bool)

(assert (=> b!623750 (= res!271178 (not ((_ is Leaf!3222) (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> b!623750 (=> res!271178 e!378677)))

(declare-fun b!623751 () Bool)

(assert (=> b!623751 (= e!378677 (inv!8161 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (= (and d!218277 c!114667) b!623749))

(assert (= (and d!218277 (not c!114667)) b!623750))

(assert (= (and b!623750 (not res!271178)) b!623751))

(declare-fun m!892065 () Bool)

(assert (=> b!623749 m!892065))

(declare-fun m!892067 () Bool)

(assert (=> b!623751 m!892067))

(assert (=> b!623388 d!218277))

(declare-fun d!218279 () Bool)

(assert (=> d!218279 (= (inv!15 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) (= (charsToBigInt!0 (text!9780 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) 0) (value!42165 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(declare-fun bs!72165 () Bool)

(assert (= bs!72165 d!218279))

(declare-fun m!892069 () Bool)

(assert (=> bs!72165 m!892069))

(assert (=> b!623169 d!218279))

(declare-fun d!218281 () Bool)

(assert (=> d!218281 (= (inv!8158 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))) (<= (size!5003 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361)))))) 2147483647))))

(declare-fun bs!72166 () Bool)

(assert (= bs!72166 d!218281))

(declare-fun m!892071 () Bool)

(assert (=> bs!72166 m!892071))

(assert (=> b!623307 d!218281))

(declare-fun b!623752 () Bool)

(declare-fun e!378678 () Bool)

(assert (=> b!623752 (= e!378678 (not (isEmpty!4574 (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))))))

(declare-fun d!218283 () Bool)

(declare-fun res!271181 () Bool)

(declare-fun e!378679 () Bool)

(assert (=> d!218283 (=> res!271181 e!378679)))

(assert (=> d!218283 (= res!271181 (not ((_ is Node!2060) (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218283 (= (isBalanced!542 (left!5088 (left!5088 (c!114443 v!6361)))) e!378679)))

(declare-fun b!623753 () Bool)

(declare-fun res!271180 () Bool)

(assert (=> b!623753 (=> (not res!271180) (not e!378678))))

(assert (=> b!623753 (= res!271180 (not (isEmpty!4574 (left!5088 (left!5088 (left!5088 (c!114443 v!6361)))))))))

(declare-fun b!623754 () Bool)

(declare-fun res!271184 () Bool)

(assert (=> b!623754 (=> (not res!271184) (not e!378678))))

(assert (=> b!623754 (= res!271184 (<= (- (height!258 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))) (height!258 (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))) 1))))

(declare-fun b!623755 () Bool)

(declare-fun res!271179 () Bool)

(assert (=> b!623755 (=> (not res!271179) (not e!378678))))

(assert (=> b!623755 (= res!271179 (isBalanced!542 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!623756 () Bool)

(declare-fun res!271183 () Bool)

(assert (=> b!623756 (=> (not res!271183) (not e!378678))))

(assert (=> b!623756 (= res!271183 (isBalanced!542 (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!623757 () Bool)

(assert (=> b!623757 (= e!378679 e!378678)))

(declare-fun res!271182 () Bool)

(assert (=> b!623757 (=> (not res!271182) (not e!378678))))

(assert (=> b!623757 (= res!271182 (<= (- 1) (- (height!258 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))) (height!258 (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))))))))

(assert (= (and d!218283 (not res!271181)) b!623757))

(assert (= (and b!623757 res!271182) b!623754))

(assert (= (and b!623754 res!271184) b!623755))

(assert (= (and b!623755 res!271179) b!623756))

(assert (= (and b!623756 res!271183) b!623753))

(assert (= (and b!623753 res!271180) b!623752))

(declare-fun m!892073 () Bool)

(assert (=> b!623755 m!892073))

(declare-fun m!892075 () Bool)

(assert (=> b!623756 m!892075))

(declare-fun m!892077 () Bool)

(assert (=> b!623753 m!892077))

(declare-fun m!892079 () Bool)

(assert (=> b!623757 m!892079))

(declare-fun m!892081 () Bool)

(assert (=> b!623757 m!892081))

(assert (=> b!623754 m!892079))

(assert (=> b!623754 m!892081))

(declare-fun m!892083 () Bool)

(assert (=> b!623752 m!892083))

(assert (=> b!623059 d!218283))

(declare-fun d!218285 () Bool)

(declare-fun c!114668 () Bool)

(assert (=> d!218285 (= c!114668 ((_ is Nil!6416) (t!81933 lt!266350)))))

(declare-fun e!378680 () (InoxSet Token!2342))

(assert (=> d!218285 (= (content!1152 (t!81933 lt!266350)) e!378680)))

(declare-fun b!623758 () Bool)

(assert (=> b!623758 (= e!378680 ((as const (Array Token!2342 Bool)) false))))

(declare-fun b!623759 () Bool)

(assert (=> b!623759 (= e!378680 ((_ map or) (store ((as const (Array Token!2342 Bool)) false) (h!11817 (t!81933 lt!266350)) true) (content!1152 (t!81933 (t!81933 lt!266350)))))))

(assert (= (and d!218285 c!114668) b!623758))

(assert (= (and d!218285 (not c!114668)) b!623759))

(declare-fun m!892085 () Bool)

(assert (=> b!623759 m!892085))

(declare-fun m!892087 () Bool)

(assert (=> b!623759 m!892087))

(assert (=> b!623253 d!218285))

(declare-fun d!218287 () Bool)

(declare-fun lt!266440 () Int)

(assert (=> d!218287 (>= lt!266440 0)))

(declare-fun e!378681 () Int)

(assert (=> d!218287 (= lt!266440 e!378681)))

(declare-fun c!114669 () Bool)

(assert (=> d!218287 (= c!114669 ((_ is Nil!6415) (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(assert (=> d!218287 (= (size!5005 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) lt!266440)))

(declare-fun b!623760 () Bool)

(assert (=> b!623760 (= e!378681 0)))

(declare-fun b!623761 () Bool)

(assert (=> b!623761 (= e!378681 (+ 1 (size!5005 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(assert (= (and d!218287 c!114669) b!623760))

(assert (= (and d!218287 (not c!114669)) b!623761))

(declare-fun m!892089 () Bool)

(assert (=> b!623761 m!892089))

(assert (=> b!623207 d!218287))

(declare-fun d!218289 () Bool)

(declare-fun lt!266441 () Int)

(assert (=> d!218289 (>= lt!266441 0)))

(declare-fun e!378682 () Int)

(assert (=> d!218289 (= lt!266441 e!378682)))

(declare-fun c!114670 () Bool)

(assert (=> d!218289 (= c!114670 ((_ is Nil!6416) (t!81933 (t!81933 (list!2690 v!6361)))))))

(assert (=> d!218289 (= (size!5003 (t!81933 (t!81933 (list!2690 v!6361)))) lt!266441)))

(declare-fun b!623762 () Bool)

(assert (=> b!623762 (= e!378682 0)))

(declare-fun b!623763 () Bool)

(assert (=> b!623763 (= e!378682 (+ 1 (size!5003 (t!81933 (t!81933 (t!81933 (list!2690 v!6361)))))))))

(assert (= (and d!218289 c!114670) b!623762))

(assert (= (and d!218289 (not c!114670)) b!623763))

(declare-fun m!892091 () Bool)

(assert (=> b!623763 m!892091))

(assert (=> b!623147 d!218289))

(declare-fun d!218291 () Bool)

(declare-fun res!271185 () Bool)

(declare-fun e!378683 () Bool)

(assert (=> d!218291 (=> (not res!271185) (not e!378683))))

(assert (=> d!218291 (= res!271185 (not (isEmpty!4572 (originalCharacters!1342 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(assert (=> d!218291 (= (inv!8148 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) e!378683)))

(declare-fun b!623764 () Bool)

(declare-fun res!271186 () Bool)

(assert (=> b!623764 (=> (not res!271186) (not e!378683))))

(assert (=> b!623764 (= res!271186 (= (originalCharacters!1342 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) (list!2687 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))))

(declare-fun b!623765 () Bool)

(assert (=> b!623765 (= e!378683 (= (size!5000 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) (size!5005 (originalCharacters!1342 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(assert (= (and d!218291 res!271185) b!623764))

(assert (= (and b!623764 res!271186) b!623765))

(declare-fun b_lambda!24641 () Bool)

(assert (=> (not b_lambda!24641) (not b!623764)))

(declare-fun tb!54103 () Bool)

(declare-fun t!82029 () Bool)

(assert (=> (and b!622524 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82029) tb!54103))

(declare-fun b!623766 () Bool)

(declare-fun e!378684 () Bool)

(declare-fun tp!193968 () Bool)

(assert (=> b!623766 (= e!378684 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) tp!193968))))

(declare-fun result!61114 () Bool)

(assert (=> tb!54103 (= result!61114 (and (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) e!378684))))

(assert (= tb!54103 b!623766))

(declare-fun m!892093 () Bool)

(assert (=> b!623766 m!892093))

(declare-fun m!892095 () Bool)

(assert (=> tb!54103 m!892095))

(assert (=> b!623764 t!82029))

(declare-fun b_and!61959 () Bool)

(assert (= b_and!61923 (and (=> t!82029 result!61114) b_and!61959)))

(declare-fun t!82031 () Bool)

(declare-fun tb!54105 () Bool)

(assert (=> (and b!623404 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82031) tb!54105))

(declare-fun result!61116 () Bool)

(assert (= result!61116 result!61114))

(assert (=> b!623764 t!82031))

(declare-fun b_and!61961 () Bool)

(assert (= b_and!61941 (and (=> t!82031 result!61116) b_and!61961)))

(declare-fun t!82033 () Bool)

(declare-fun tb!54107 () Bool)

(assert (=> (and b!623322 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82033) tb!54107))

(declare-fun result!61118 () Bool)

(assert (= result!61118 result!61114))

(assert (=> b!623764 t!82033))

(declare-fun b_and!61963 () Bool)

(assert (= b_and!61933 (and (=> t!82033 result!61118) b_and!61963)))

(declare-fun t!82035 () Bool)

(declare-fun tb!54109 () Bool)

(assert (=> (and b!623316 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82035) tb!54109))

(declare-fun result!61120 () Bool)

(assert (= result!61120 result!61114))

(assert (=> b!623764 t!82035))

(declare-fun b_and!61965 () Bool)

(assert (= b_and!61929 (and (=> t!82035 result!61120) b_and!61965)))

(declare-fun t!82037 () Bool)

(declare-fun tb!54111 () Bool)

(assert (=> (and b!622896 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82037) tb!54111))

(declare-fun result!61122 () Bool)

(assert (= result!61122 result!61114))

(assert (=> b!623764 t!82037))

(declare-fun b_and!61967 () Bool)

(assert (= b_and!61925 (and (=> t!82037 result!61122) b_and!61967)))

(declare-fun m!892097 () Bool)

(assert (=> d!218291 m!892097))

(declare-fun m!892099 () Bool)

(assert (=> b!623764 m!892099))

(assert (=> b!623764 m!892099))

(declare-fun m!892101 () Bool)

(assert (=> b!623764 m!892101))

(declare-fun m!892103 () Bool)

(assert (=> b!623765 m!892103))

(assert (=> b!623401 d!218291))

(declare-fun d!218293 () Bool)

(declare-fun lt!266442 () Int)

(assert (=> d!218293 (>= lt!266442 0)))

(declare-fun e!378685 () Int)

(assert (=> d!218293 (= lt!266442 e!378685)))

(declare-fun c!114671 () Bool)

(assert (=> d!218293 (= c!114671 ((_ is Nil!6415) (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218293 (= (size!5005 (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) lt!266442)))

(declare-fun b!623767 () Bool)

(assert (=> b!623767 (= e!378685 0)))

(declare-fun b!623768 () Bool)

(assert (=> b!623768 (= e!378685 (+ 1 (size!5005 (t!81932 (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(assert (= (and d!218293 c!114671) b!623767))

(assert (= (and d!218293 (not c!114671)) b!623768))

(declare-fun m!892105 () Bool)

(assert (=> b!623768 m!892105))

(assert (=> d!218091 d!218293))

(declare-fun d!218295 () Bool)

(declare-fun c!114672 () Bool)

(assert (=> d!218295 (= c!114672 ((_ is Node!2060) (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))))))

(declare-fun e!378686 () Bool)

(assert (=> d!218295 (= (inv!8146 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))) e!378686)))

(declare-fun b!623769 () Bool)

(assert (=> b!623769 (= e!378686 (inv!8150 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623770 () Bool)

(declare-fun e!378687 () Bool)

(assert (=> b!623770 (= e!378686 e!378687)))

(declare-fun res!271187 () Bool)

(assert (=> b!623770 (= res!271187 (not ((_ is Leaf!3223) (left!5088 (left!5088 (right!5418 (c!114443 v!6361)))))))))

(assert (=> b!623770 (=> res!271187 e!378687)))

(declare-fun b!623771 () Bool)

(assert (=> b!623771 (= e!378687 (inv!8151 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (= (and d!218295 c!114672) b!623769))

(assert (= (and d!218295 (not c!114672)) b!623770))

(assert (= (and b!623770 (not res!271187)) b!623771))

(declare-fun m!892107 () Bool)

(assert (=> b!623769 m!892107))

(declare-fun m!892109 () Bool)

(assert (=> b!623771 m!892109))

(assert (=> b!623395 d!218295))

(declare-fun d!218297 () Bool)

(declare-fun c!114673 () Bool)

(assert (=> d!218297 (= c!114673 ((_ is Node!2060) (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))))))

(declare-fun e!378688 () Bool)

(assert (=> d!218297 (= (inv!8146 (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))) e!378688)))

(declare-fun b!623772 () Bool)

(assert (=> b!623772 (= e!378688 (inv!8150 (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623773 () Bool)

(declare-fun e!378689 () Bool)

(assert (=> b!623773 (= e!378688 e!378689)))

(declare-fun res!271188 () Bool)

(assert (=> b!623773 (= res!271188 (not ((_ is Leaf!3223) (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))))))

(assert (=> b!623773 (=> res!271188 e!378689)))

(declare-fun b!623774 () Bool)

(assert (=> b!623774 (= e!378689 (inv!8151 (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (= (and d!218297 c!114673) b!623772))

(assert (= (and d!218297 (not c!114673)) b!623773))

(assert (= (and b!623773 (not res!271188)) b!623774))

(declare-fun m!892111 () Bool)

(assert (=> b!623772 m!892111))

(declare-fun m!892113 () Bool)

(assert (=> b!623774 m!892113))

(assert (=> b!623395 d!218297))

(declare-fun b!623775 () Bool)

(declare-fun e!378691 () Bool)

(assert (=> b!623775 (= e!378691 (inv!17 (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))

(declare-fun b!623777 () Bool)

(declare-fun e!378692 () Bool)

(assert (=> b!623777 (= e!378692 (inv!16 (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))

(declare-fun b!623778 () Bool)

(declare-fun e!378690 () Bool)

(assert (=> b!623778 (= e!378690 (inv!15 (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))

(declare-fun b!623779 () Bool)

(assert (=> b!623779 (= e!378692 e!378691)))

(declare-fun c!114675 () Bool)

(assert (=> b!623779 (= c!114675 ((_ is IntegerValue!4000) (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))

(declare-fun d!218299 () Bool)

(declare-fun c!114674 () Bool)

(assert (=> d!218299 (= c!114674 ((_ is IntegerValue!3999) (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))

(assert (=> d!218299 (= (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))) e!378692)))

(declare-fun b!623776 () Bool)

(declare-fun res!271189 () Bool)

(assert (=> b!623776 (=> res!271189 e!378690)))

(assert (=> b!623776 (= res!271189 (not ((_ is IntegerValue!4001) (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))))

(assert (=> b!623776 (= e!378691 e!378690)))

(assert (= (and d!218299 c!114674) b!623777))

(assert (= (and d!218299 (not c!114674)) b!623779))

(assert (= (and b!623779 c!114675) b!623775))

(assert (= (and b!623779 (not c!114675)) b!623776))

(assert (= (and b!623776 (not res!271189)) b!623778))

(declare-fun m!892115 () Bool)

(assert (=> b!623775 m!892115))

(declare-fun m!892117 () Bool)

(assert (=> b!623777 m!892117))

(declare-fun m!892119 () Bool)

(assert (=> b!623778 m!892119))

(assert (=> b!623320 d!218299))

(declare-fun d!218301 () Bool)

(declare-fun e!378693 () Bool)

(assert (=> d!218301 e!378693))

(declare-fun res!271190 () Bool)

(assert (=> d!218301 (=> (not res!271190) (not e!378693))))

(declare-fun lt!266443 () List!6426)

(assert (=> d!218301 (= res!271190 (= (content!1152 lt!266443) ((_ map or) (content!1152 (t!81933 (list!2689 (left!5088 (c!114443 v!6361))))) (content!1152 (list!2689 (right!5418 (c!114443 v!6361)))))))))

(declare-fun e!378694 () List!6426)

(assert (=> d!218301 (= lt!266443 e!378694)))

(declare-fun c!114676 () Bool)

(assert (=> d!218301 (= c!114676 ((_ is Nil!6416) (t!81933 (list!2689 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218301 (= (++!1770 (t!81933 (list!2689 (left!5088 (c!114443 v!6361)))) (list!2689 (right!5418 (c!114443 v!6361)))) lt!266443)))

(declare-fun b!623783 () Bool)

(assert (=> b!623783 (= e!378693 (or (not (= (list!2689 (right!5418 (c!114443 v!6361))) Nil!6416)) (= lt!266443 (t!81933 (list!2689 (left!5088 (c!114443 v!6361)))))))))

(declare-fun b!623781 () Bool)

(assert (=> b!623781 (= e!378694 (Cons!6416 (h!11817 (t!81933 (list!2689 (left!5088 (c!114443 v!6361))))) (++!1770 (t!81933 (t!81933 (list!2689 (left!5088 (c!114443 v!6361))))) (list!2689 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623780 () Bool)

(assert (=> b!623780 (= e!378694 (list!2689 (right!5418 (c!114443 v!6361))))))

(declare-fun b!623782 () Bool)

(declare-fun res!271191 () Bool)

(assert (=> b!623782 (=> (not res!271191) (not e!378693))))

(assert (=> b!623782 (= res!271191 (= (size!5003 lt!266443) (+ (size!5003 (t!81933 (list!2689 (left!5088 (c!114443 v!6361))))) (size!5003 (list!2689 (right!5418 (c!114443 v!6361)))))))))

(assert (= (and d!218301 c!114676) b!623780))

(assert (= (and d!218301 (not c!114676)) b!623781))

(assert (= (and d!218301 res!271190) b!623782))

(assert (= (and b!623782 res!271191) b!623783))

(declare-fun m!892121 () Bool)

(assert (=> d!218301 m!892121))

(declare-fun m!892123 () Bool)

(assert (=> d!218301 m!892123))

(assert (=> d!218301 m!891001))

(assert (=> d!218301 m!891339))

(assert (=> b!623781 m!891001))

(declare-fun m!892125 () Bool)

(assert (=> b!623781 m!892125))

(declare-fun m!892127 () Bool)

(assert (=> b!623782 m!892127))

(declare-fun m!892129 () Bool)

(assert (=> b!623782 m!892129))

(assert (=> b!623782 m!891001))

(assert (=> b!623782 m!891315))

(assert (=> b!623092 d!218301))

(assert (=> b!623097 d!218273))

(declare-fun d!218303 () Bool)

(declare-fun lt!266444 () Int)

(assert (=> d!218303 (>= lt!266444 0)))

(declare-fun e!378695 () Int)

(assert (=> d!218303 (= lt!266444 e!378695)))

(declare-fun c!114677 () Bool)

(assert (=> d!218303 (= c!114677 ((_ is Nil!6415) (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))))

(assert (=> d!218303 (= (size!5005 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))) lt!266444)))

(declare-fun b!623784 () Bool)

(assert (=> b!623784 (= e!378695 0)))

(declare-fun b!623785 () Bool)

(assert (=> b!623785 (= e!378695 (+ 1 (size!5005 (t!81932 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))))))

(assert (= (and d!218303 c!114677) b!623784))

(assert (= (and d!218303 (not c!114677)) b!623785))

(declare-fun m!892131 () Bool)

(assert (=> b!623785 m!892131))

(assert (=> b!623182 d!218303))

(declare-fun b!623786 () Bool)

(declare-fun res!271197 () Bool)

(declare-fun e!378696 () Bool)

(assert (=> b!623786 (=> (not res!271197) (not e!378696))))

(assert (=> b!623786 (= res!271197 (isBalanced!544 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!623787 () Bool)

(declare-fun res!271194 () Bool)

(assert (=> b!623787 (=> (not res!271194) (not e!378696))))

(assert (=> b!623787 (= res!271194 (isBalanced!544 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun d!218305 () Bool)

(declare-fun res!271193 () Bool)

(declare-fun e!378697 () Bool)

(assert (=> d!218305 (=> res!271193 e!378697)))

(assert (=> d!218305 (= res!271193 (not ((_ is Node!2059) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218305 (= (isBalanced!544 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378697)))

(declare-fun b!623788 () Bool)

(declare-fun res!271192 () Bool)

(assert (=> b!623788 (=> (not res!271192) (not e!378696))))

(assert (=> b!623788 (= res!271192 (not (isEmpty!4576 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!623789 () Bool)

(declare-fun res!271196 () Bool)

(assert (=> b!623789 (=> (not res!271196) (not e!378696))))

(assert (=> b!623789 (= res!271196 (<= (- (height!259 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (height!259 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) 1))))

(declare-fun b!623790 () Bool)

(assert (=> b!623790 (= e!378696 (not (isEmpty!4576 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!623791 () Bool)

(assert (=> b!623791 (= e!378697 e!378696)))

(declare-fun res!271195 () Bool)

(assert (=> b!623791 (=> (not res!271195) (not e!378696))))

(assert (=> b!623791 (= res!271195 (<= (- 1) (- (height!259 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (height!259 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(assert (= (and d!218305 (not res!271193)) b!623791))

(assert (= (and b!623791 res!271195) b!623789))

(assert (= (and b!623789 res!271196) b!623786))

(assert (= (and b!623786 res!271197) b!623787))

(assert (= (and b!623787 res!271194) b!623788))

(assert (= (and b!623788 res!271192) b!623790))

(declare-fun m!892133 () Bool)

(assert (=> b!623788 m!892133))

(declare-fun m!892135 () Bool)

(assert (=> b!623789 m!892135))

(declare-fun m!892137 () Bool)

(assert (=> b!623789 m!892137))

(declare-fun m!892139 () Bool)

(assert (=> b!623786 m!892139))

(assert (=> b!623791 m!892135))

(assert (=> b!623791 m!892137))

(declare-fun m!892141 () Bool)

(assert (=> b!623790 m!892141))

(declare-fun m!892143 () Bool)

(assert (=> b!623787 m!892143))

(assert (=> b!623198 d!218305))

(declare-fun d!218307 () Bool)

(assert (=> d!218307 (= (height!258 (left!5088 (right!5418 (c!114443 v!6361)))) (ite ((_ is Empty!2060) (left!5088 (right!5418 (c!114443 v!6361)))) 0 (ite ((_ is Leaf!3223) (left!5088 (right!5418 (c!114443 v!6361)))) 1 (cheight!2271 (left!5088 (right!5418 (c!114443 v!6361)))))))))

(assert (=> b!623158 d!218307))

(declare-fun d!218309 () Bool)

(assert (=> d!218309 (= (height!258 (right!5418 (right!5418 (c!114443 v!6361)))) (ite ((_ is Empty!2060) (right!5418 (right!5418 (c!114443 v!6361)))) 0 (ite ((_ is Leaf!3223) (right!5418 (right!5418 (c!114443 v!6361)))) 1 (cheight!2271 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(assert (=> b!623158 d!218309))

(declare-fun b!623795 () Bool)

(declare-fun e!378699 () Bool)

(declare-fun lt!266445 () List!6425)

(assert (=> b!623795 (= e!378699 (or (not (= (list!2688 (right!5417 (c!114441 (charsOf!897 separatorToken!136)))) Nil!6415)) (= lt!266445 (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136)))))))))

(declare-fun b!623793 () Bool)

(declare-fun e!378698 () List!6425)

(assert (=> b!623793 (= e!378698 (Cons!6415 (h!11816 (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136))))) (++!1768 (t!81932 (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136))))) (list!2688 (right!5417 (c!114441 (charsOf!897 separatorToken!136)))))))))

(declare-fun b!623794 () Bool)

(declare-fun res!271198 () Bool)

(assert (=> b!623794 (=> (not res!271198) (not e!378699))))

(assert (=> b!623794 (= res!271198 (= (size!5005 lt!266445) (+ (size!5005 (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136))))) (size!5005 (list!2688 (right!5417 (c!114441 (charsOf!897 separatorToken!136))))))))))

(declare-fun b!623792 () Bool)

(assert (=> b!623792 (= e!378698 (list!2688 (right!5417 (c!114441 (charsOf!897 separatorToken!136)))))))

(declare-fun d!218311 () Bool)

(assert (=> d!218311 e!378699))

(declare-fun res!271199 () Bool)

(assert (=> d!218311 (=> (not res!271199) (not e!378699))))

(assert (=> d!218311 (= res!271199 (= (content!1153 lt!266445) ((_ map or) (content!1153 (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136))))) (content!1153 (list!2688 (right!5417 (c!114441 (charsOf!897 separatorToken!136))))))))))

(assert (=> d!218311 (= lt!266445 e!378698)))

(declare-fun c!114678 () Bool)

(assert (=> d!218311 (= c!114678 ((_ is Nil!6415) (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136))))))))

(assert (=> d!218311 (= (++!1768 (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136)))) (list!2688 (right!5417 (c!114441 (charsOf!897 separatorToken!136))))) lt!266445)))

(assert (= (and d!218311 c!114678) b!623792))

(assert (= (and d!218311 (not c!114678)) b!623793))

(assert (= (and d!218311 res!271199) b!623794))

(assert (= (and b!623794 res!271198) b!623795))

(assert (=> b!623793 m!891461))

(declare-fun m!892145 () Bool)

(assert (=> b!623793 m!892145))

(declare-fun m!892147 () Bool)

(assert (=> b!623794 m!892147))

(assert (=> b!623794 m!891459))

(declare-fun m!892149 () Bool)

(assert (=> b!623794 m!892149))

(assert (=> b!623794 m!891461))

(declare-fun m!892151 () Bool)

(assert (=> b!623794 m!892151))

(declare-fun m!892153 () Bool)

(assert (=> d!218311 m!892153))

(assert (=> d!218311 m!891459))

(declare-fun m!892155 () Bool)

(assert (=> d!218311 m!892155))

(assert (=> d!218311 m!891461))

(declare-fun m!892157 () Bool)

(assert (=> d!218311 m!892157))

(assert (=> b!623165 d!218311))

(declare-fun b!623799 () Bool)

(declare-fun e!378701 () List!6425)

(assert (=> b!623799 (= e!378701 (++!1768 (list!2688 (left!5087 (left!5087 (c!114441 (charsOf!897 separatorToken!136))))) (list!2688 (right!5417 (left!5087 (c!114441 (charsOf!897 separatorToken!136)))))))))

(declare-fun b!623798 () Bool)

(assert (=> b!623798 (= e!378701 (list!2696 (xs!4696 (left!5087 (c!114441 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623797 () Bool)

(declare-fun e!378700 () List!6425)

(assert (=> b!623797 (= e!378700 e!378701)))

(declare-fun c!114680 () Bool)

(assert (=> b!623797 (= c!114680 ((_ is Leaf!3222) (left!5087 (c!114441 (charsOf!897 separatorToken!136)))))))

(declare-fun d!218313 () Bool)

(declare-fun c!114679 () Bool)

(assert (=> d!218313 (= c!114679 ((_ is Empty!2059) (left!5087 (c!114441 (charsOf!897 separatorToken!136)))))))

(assert (=> d!218313 (= (list!2688 (left!5087 (c!114441 (charsOf!897 separatorToken!136)))) e!378700)))

(declare-fun b!623796 () Bool)

(assert (=> b!623796 (= e!378700 Nil!6415)))

(assert (= (and d!218313 c!114679) b!623796))

(assert (= (and d!218313 (not c!114679)) b!623797))

(assert (= (and b!623797 c!114680) b!623798))

(assert (= (and b!623797 (not c!114680)) b!623799))

(declare-fun m!892159 () Bool)

(assert (=> b!623799 m!892159))

(declare-fun m!892161 () Bool)

(assert (=> b!623799 m!892161))

(assert (=> b!623799 m!892159))

(assert (=> b!623799 m!892161))

(declare-fun m!892163 () Bool)

(assert (=> b!623799 m!892163))

(declare-fun m!892165 () Bool)

(assert (=> b!623798 m!892165))

(assert (=> b!623165 d!218313))

(declare-fun b!623803 () Bool)

(declare-fun e!378703 () List!6425)

(assert (=> b!623803 (= e!378703 (++!1768 (list!2688 (left!5087 (right!5417 (c!114441 (charsOf!897 separatorToken!136))))) (list!2688 (right!5417 (right!5417 (c!114441 (charsOf!897 separatorToken!136)))))))))

(declare-fun b!623802 () Bool)

(assert (=> b!623802 (= e!378703 (list!2696 (xs!4696 (right!5417 (c!114441 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623801 () Bool)

(declare-fun e!378702 () List!6425)

(assert (=> b!623801 (= e!378702 e!378703)))

(declare-fun c!114682 () Bool)

(assert (=> b!623801 (= c!114682 ((_ is Leaf!3222) (right!5417 (c!114441 (charsOf!897 separatorToken!136)))))))

(declare-fun d!218315 () Bool)

(declare-fun c!114681 () Bool)

(assert (=> d!218315 (= c!114681 ((_ is Empty!2059) (right!5417 (c!114441 (charsOf!897 separatorToken!136)))))))

(assert (=> d!218315 (= (list!2688 (right!5417 (c!114441 (charsOf!897 separatorToken!136)))) e!378702)))

(declare-fun b!623800 () Bool)

(assert (=> b!623800 (= e!378702 Nil!6415)))

(assert (= (and d!218315 c!114681) b!623800))

(assert (= (and d!218315 (not c!114681)) b!623801))

(assert (= (and b!623801 c!114682) b!623802))

(assert (= (and b!623801 (not c!114682)) b!623803))

(declare-fun m!892167 () Bool)

(assert (=> b!623803 m!892167))

(declare-fun m!892169 () Bool)

(assert (=> b!623803 m!892169))

(assert (=> b!623803 m!892167))

(assert (=> b!623803 m!892169))

(declare-fun m!892171 () Bool)

(assert (=> b!623803 m!892171))

(declare-fun m!892173 () Bool)

(assert (=> b!623802 m!892173))

(assert (=> b!623165 d!218315))

(assert (=> b!622905 d!218003))

(assert (=> b!622905 d!218005))

(declare-fun d!218317 () Bool)

(declare-fun lt!266446 () Int)

(assert (=> d!218317 (>= lt!266446 0)))

(declare-fun e!378704 () Int)

(assert (=> d!218317 (= lt!266446 e!378704)))

(declare-fun c!114683 () Bool)

(assert (=> d!218317 (= c!114683 ((_ is Nil!6415) (t!81932 (t!81932 (originalCharacters!1342 separatorToken!136)))))))

(assert (=> d!218317 (= (size!5005 (t!81932 (t!81932 (originalCharacters!1342 separatorToken!136)))) lt!266446)))

(declare-fun b!623804 () Bool)

(assert (=> b!623804 (= e!378704 0)))

(declare-fun b!623805 () Bool)

(assert (=> b!623805 (= e!378704 (+ 1 (size!5005 (t!81932 (t!81932 (t!81932 (originalCharacters!1342 separatorToken!136)))))))))

(assert (= (and d!218317 c!114683) b!623804))

(assert (= (and d!218317 (not c!114683)) b!623805))

(declare-fun m!892175 () Bool)

(assert (=> b!623805 m!892175))

(assert (=> b!623176 d!218317))

(declare-fun b!623806 () Bool)

(declare-fun e!378706 () Bool)

(assert (=> b!623806 (= e!378706 (inv!17 (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(declare-fun b!623808 () Bool)

(declare-fun e!378707 () Bool)

(assert (=> b!623808 (= e!378707 (inv!16 (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(declare-fun b!623809 () Bool)

(declare-fun e!378705 () Bool)

(assert (=> b!623809 (= e!378705 (inv!15 (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(declare-fun b!623810 () Bool)

(assert (=> b!623810 (= e!378707 e!378706)))

(declare-fun c!114685 () Bool)

(assert (=> b!623810 (= c!114685 ((_ is IntegerValue!4000) (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(declare-fun d!218319 () Bool)

(declare-fun c!114684 () Bool)

(assert (=> d!218319 (= c!114684 ((_ is IntegerValue!3999) (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(assert (=> d!218319 (= (inv!21 (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) e!378707)))

(declare-fun b!623807 () Bool)

(declare-fun res!271200 () Bool)

(assert (=> b!623807 (=> res!271200 e!378705)))

(assert (=> b!623807 (= res!271200 (not ((_ is IntegerValue!4001) (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(assert (=> b!623807 (= e!378706 e!378705)))

(assert (= (and d!218319 c!114684) b!623808))

(assert (= (and d!218319 (not c!114684)) b!623810))

(assert (= (and b!623810 c!114685) b!623806))

(assert (= (and b!623810 (not c!114685)) b!623807))

(assert (= (and b!623807 (not res!271200)) b!623809))

(declare-fun m!892177 () Bool)

(assert (=> b!623806 m!892177))

(declare-fun m!892179 () Bool)

(assert (=> b!623808 m!892179))

(declare-fun m!892181 () Bool)

(assert (=> b!623809 m!892181))

(assert (=> b!623402 d!218319))

(declare-fun d!218321 () Bool)

(assert (=> d!218321 (= (isEmpty!4575 (list!2689 (right!5418 (c!114443 v!6361)))) ((_ is Nil!6416) (list!2689 (right!5418 (c!114443 v!6361)))))))

(assert (=> d!218059 d!218321))

(assert (=> d!218059 d!217989))

(assert (=> d!218059 d!217973))

(declare-fun d!218323 () Bool)

(assert (=> d!218323 (= (inv!8158 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))) (<= (size!5003 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361)))))) 2147483647))))

(declare-fun bs!72167 () Bool)

(assert (= bs!72167 d!218323))

(declare-fun m!892183 () Bool)

(assert (=> bs!72167 m!892183))

(assert (=> b!623396 d!218323))

(assert (=> d!218107 d!218271))

(assert (=> d!218107 d!218273))

(declare-fun d!218325 () Bool)

(declare-fun lt!266447 () Int)

(assert (=> d!218325 (>= lt!266447 0)))

(declare-fun e!378708 () Int)

(assert (=> d!218325 (= lt!266447 e!378708)))

(declare-fun c!114686 () Bool)

(assert (=> d!218325 (= c!114686 ((_ is Nil!6416) lt!266415))))

(assert (=> d!218325 (= (size!5003 lt!266415) lt!266447)))

(declare-fun b!623811 () Bool)

(assert (=> b!623811 (= e!378708 0)))

(declare-fun b!623812 () Bool)

(assert (=> b!623812 (= e!378708 (+ 1 (size!5003 (t!81933 lt!266415))))))

(assert (= (and d!218325 c!114686) b!623811))

(assert (= (and d!218325 (not c!114686)) b!623812))

(declare-fun m!892185 () Bool)

(assert (=> b!623812 m!892185))

(assert (=> b!623275 d!218325))

(declare-fun b!623816 () Bool)

(declare-fun e!378710 () Bool)

(declare-fun lt!266448 () List!6425)

(assert (=> b!623816 (= e!378710 (or (not (= (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) Nil!6415)) (= lt!266448 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!623814 () Bool)

(declare-fun e!378709 () List!6425)

(assert (=> b!623814 (= e!378709 (Cons!6415 (h!11816 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (++!1768 (t!81932 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!623815 () Bool)

(declare-fun res!271201 () Bool)

(assert (=> b!623815 (=> (not res!271201) (not e!378710))))

(assert (=> b!623815 (= res!271201 (= (size!5005 lt!266448) (+ (size!5005 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (size!5005 (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(declare-fun b!623813 () Bool)

(assert (=> b!623813 (= e!378709 (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun d!218327 () Bool)

(assert (=> d!218327 e!378710))

(declare-fun res!271202 () Bool)

(assert (=> d!218327 (=> (not res!271202) (not e!378710))))

(assert (=> d!218327 (= res!271202 (= (content!1153 lt!266448) ((_ map or) (content!1153 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (content!1153 (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(assert (=> d!218327 (= lt!266448 e!378709)))

(declare-fun c!114687 () Bool)

(assert (=> d!218327 (= c!114687 ((_ is Nil!6415) (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218327 (= (++!1768 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) lt!266448)))

(assert (= (and d!218327 c!114687) b!623813))

(assert (= (and d!218327 (not c!114687)) b!623814))

(assert (= (and d!218327 res!271202) b!623815))

(assert (= (and b!623815 res!271201) b!623816))

(assert (=> b!623814 m!891479))

(declare-fun m!892187 () Bool)

(assert (=> b!623814 m!892187))

(declare-fun m!892189 () Bool)

(assert (=> b!623815 m!892189))

(assert (=> b!623815 m!891477))

(declare-fun m!892191 () Bool)

(assert (=> b!623815 m!892191))

(assert (=> b!623815 m!891479))

(declare-fun m!892193 () Bool)

(assert (=> b!623815 m!892193))

(declare-fun m!892195 () Bool)

(assert (=> d!218327 m!892195))

(assert (=> d!218327 m!891477))

(declare-fun m!892197 () Bool)

(assert (=> d!218327 m!892197))

(assert (=> d!218327 m!891479))

(declare-fun m!892199 () Bool)

(assert (=> d!218327 m!892199))

(assert (=> b!623174 d!218327))

(declare-fun b!623820 () Bool)

(declare-fun e!378712 () List!6425)

(assert (=> b!623820 (= e!378712 (++!1768 (list!2688 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (list!2688 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!623819 () Bool)

(assert (=> b!623819 (= e!378712 (list!2696 (xs!4696 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!623818 () Bool)

(declare-fun e!378711 () List!6425)

(assert (=> b!623818 (= e!378711 e!378712)))

(declare-fun c!114689 () Bool)

(assert (=> b!623818 (= c!114689 ((_ is Leaf!3222) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun d!218329 () Bool)

(declare-fun c!114688 () Bool)

(assert (=> d!218329 (= c!114688 ((_ is Empty!2059) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(assert (=> d!218329 (= (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378711)))

(declare-fun b!623817 () Bool)

(assert (=> b!623817 (= e!378711 Nil!6415)))

(assert (= (and d!218329 c!114688) b!623817))

(assert (= (and d!218329 (not c!114688)) b!623818))

(assert (= (and b!623818 c!114689) b!623819))

(assert (= (and b!623818 (not c!114689)) b!623820))

(declare-fun m!892201 () Bool)

(assert (=> b!623820 m!892201))

(declare-fun m!892203 () Bool)

(assert (=> b!623820 m!892203))

(assert (=> b!623820 m!892201))

(assert (=> b!623820 m!892203))

(declare-fun m!892205 () Bool)

(assert (=> b!623820 m!892205))

(declare-fun m!892207 () Bool)

(assert (=> b!623819 m!892207))

(assert (=> b!623174 d!218329))

(declare-fun b!623824 () Bool)

(declare-fun e!378714 () List!6425)

(assert (=> b!623824 (= e!378714 (++!1768 (list!2688 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (list!2688 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!623823 () Bool)

(assert (=> b!623823 (= e!378714 (list!2696 (xs!4696 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!623822 () Bool)

(declare-fun e!378713 () List!6425)

(assert (=> b!623822 (= e!378713 e!378714)))

(declare-fun c!114691 () Bool)

(assert (=> b!623822 (= c!114691 ((_ is Leaf!3222) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(declare-fun d!218331 () Bool)

(declare-fun c!114690 () Bool)

(assert (=> d!218331 (= c!114690 ((_ is Empty!2059) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(assert (=> d!218331 (= (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378713)))

(declare-fun b!623821 () Bool)

(assert (=> b!623821 (= e!378713 Nil!6415)))

(assert (= (and d!218331 c!114690) b!623821))

(assert (= (and d!218331 (not c!114690)) b!623822))

(assert (= (and b!623822 c!114691) b!623823))

(assert (= (and b!623822 (not c!114691)) b!623824))

(declare-fun m!892209 () Bool)

(assert (=> b!623824 m!892209))

(declare-fun m!892211 () Bool)

(assert (=> b!623824 m!892211))

(assert (=> b!623824 m!892209))

(assert (=> b!623824 m!892211))

(declare-fun m!892213 () Bool)

(assert (=> b!623824 m!892213))

(declare-fun m!892215 () Bool)

(assert (=> b!623823 m!892215))

(assert (=> b!623174 d!218331))

(declare-fun d!218333 () Bool)

(declare-fun lt!266451 () Bool)

(assert (=> d!218333 (= lt!266451 (isEmpty!4572 (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218333 (= lt!266451 (= (size!5008 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 0))))

(assert (=> d!218333 (= (isEmpty!4576 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) lt!266451)))

(declare-fun bs!72168 () Bool)

(assert (= bs!72168 d!218333))

(assert (=> bs!72168 m!891479))

(assert (=> bs!72168 m!891479))

(declare-fun m!892217 () Bool)

(assert (=> bs!72168 m!892217))

(assert (=> bs!72168 m!891417))

(assert (=> b!623202 d!218333))

(declare-fun d!218335 () Bool)

(assert (=> d!218335 true))

(assert (=> d!218335 true))

(declare-fun res!271205 () (_ BitVec 32))

(assert (=> d!218335 (= (choose!625 (text!9778 (value!42170 separatorToken!136))) res!271205)))

(assert (=> d!218019 d!218335))

(declare-fun d!218337 () Bool)

(declare-fun lt!266452 () Int)

(assert (=> d!218337 (>= lt!266452 0)))

(declare-fun e!378715 () Int)

(assert (=> d!218337 (= lt!266452 e!378715)))

(declare-fun c!114692 () Bool)

(assert (=> d!218337 (= c!114692 ((_ is Nil!6416) (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))

(assert (=> d!218337 (= (size!5003 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))) lt!266452)))

(declare-fun b!623825 () Bool)

(assert (=> b!623825 (= e!378715 0)))

(declare-fun b!623826 () Bool)

(assert (=> b!623826 (= e!378715 (+ 1 (size!5003 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(assert (= (and d!218337 c!114692) b!623825))

(assert (= (and d!218337 (not c!114692)) b!623826))

(declare-fun m!892219 () Bool)

(assert (=> b!623826 m!892219))

(assert (=> b!623264 d!218337))

(declare-fun d!218339 () Bool)

(declare-fun res!271206 () Bool)

(declare-fun e!378716 () Bool)

(assert (=> d!218339 (=> (not res!271206) (not e!378716))))

(assert (=> d!218339 (= res!271206 (<= (size!5003 (list!2694 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361)))))) 512))))

(assert (=> d!218339 (= (inv!8151 (right!5418 (left!5088 (c!114443 v!6361)))) e!378716)))

(declare-fun b!623827 () Bool)

(declare-fun res!271207 () Bool)

(assert (=> b!623827 (=> (not res!271207) (not e!378716))))

(assert (=> b!623827 (= res!271207 (= (csize!4351 (right!5418 (left!5088 (c!114443 v!6361)))) (size!5003 (list!2694 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))))

(declare-fun b!623828 () Bool)

(assert (=> b!623828 (= e!378716 (and (> (csize!4351 (right!5418 (left!5088 (c!114443 v!6361)))) 0) (<= (csize!4351 (right!5418 (left!5088 (c!114443 v!6361)))) 512)))))

(assert (= (and d!218339 res!271206) b!623827))

(assert (= (and b!623827 res!271207) b!623828))

(declare-fun m!892221 () Bool)

(assert (=> d!218339 m!892221))

(assert (=> d!218339 m!892221))

(declare-fun m!892223 () Bool)

(assert (=> d!218339 m!892223))

(assert (=> b!623827 m!892221))

(assert (=> b!623827 m!892221))

(assert (=> b!623827 m!892223))

(assert (=> b!623155 d!218339))

(declare-fun d!218341 () Bool)

(assert (=> d!218341 (= (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (isBalanced!544 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))))))

(declare-fun bs!72169 () Bool)

(assert (= bs!72169 d!218341))

(declare-fun m!892225 () Bool)

(assert (=> bs!72169 m!892225))

(assert (=> tb!54043 d!218341))

(declare-fun d!218343 () Bool)

(declare-fun c!114693 () Bool)

(assert (=> d!218343 (= c!114693 ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(declare-fun e!378717 () Bool)

(assert (=> d!218343 (= (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) e!378717)))

(declare-fun b!623829 () Bool)

(assert (=> b!623829 (= e!378717 (inv!8160 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(declare-fun b!623830 () Bool)

(declare-fun e!378718 () Bool)

(assert (=> b!623830 (= e!378717 e!378718)))

(declare-fun res!271208 () Bool)

(assert (=> b!623830 (= res!271208 (not ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))))

(assert (=> b!623830 (=> res!271208 e!378718)))

(declare-fun b!623831 () Bool)

(assert (=> b!623831 (= e!378718 (inv!8161 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(assert (= (and d!218343 c!114693) b!623829))

(assert (= (and d!218343 (not c!114693)) b!623830))

(assert (= (and b!623830 (not res!271208)) b!623831))

(declare-fun m!892227 () Bool)

(assert (=> b!623829 m!892227))

(declare-fun m!892229 () Bool)

(assert (=> b!623831 m!892229))

(assert (=> b!623128 d!218343))

(declare-fun d!218345 () Bool)

(declare-fun c!114694 () Bool)

(assert (=> d!218345 (= c!114694 ((_ is Nil!6415) lt!266410))))

(declare-fun e!378719 () (InoxSet C!4212))

(assert (=> d!218345 (= (content!1153 lt!266410) e!378719)))

(declare-fun b!623832 () Bool)

(assert (=> b!623832 (= e!378719 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623833 () Bool)

(assert (=> b!623833 (= e!378719 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 lt!266410) true) (content!1153 (t!81932 lt!266410))))))

(assert (= (and d!218345 c!114694) b!623832))

(assert (= (and d!218345 (not c!114694)) b!623833))

(declare-fun m!892231 () Bool)

(assert (=> b!623833 m!892231))

(declare-fun m!892233 () Bool)

(assert (=> b!623833 m!892233))

(assert (=> d!218089 d!218345))

(declare-fun d!218347 () Bool)

(declare-fun c!114695 () Bool)

(assert (=> d!218347 (= c!114695 ((_ is Nil!6415) (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun e!378720 () (InoxSet C!4212))

(assert (=> d!218347 (= (content!1153 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))) e!378720)))

(declare-fun b!623834 () Bool)

(assert (=> b!623834 (= e!378720 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623835 () Bool)

(assert (=> b!623835 (= e!378720 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))) true) (content!1153 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))))))))

(assert (= (and d!218347 c!114695) b!623834))

(assert (= (and d!218347 (not c!114695)) b!623835))

(declare-fun m!892235 () Bool)

(assert (=> b!623835 m!892235))

(declare-fun m!892237 () Bool)

(assert (=> b!623835 m!892237))

(assert (=> d!218089 d!218347))

(declare-fun d!218349 () Bool)

(declare-fun c!114696 () Bool)

(assert (=> d!218349 (= c!114696 ((_ is Nil!6415) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))

(declare-fun e!378721 () (InoxSet C!4212))

(assert (=> d!218349 (= (content!1153 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)) e!378721)))

(declare-fun b!623836 () Bool)

(assert (=> b!623836 (= e!378721 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623837 () Bool)

(assert (=> b!623837 (= e!378721 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)) true) (content!1153 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))))

(assert (= (and d!218349 c!114696) b!623836))

(assert (= (and d!218349 (not c!114696)) b!623837))

(declare-fun m!892239 () Bool)

(assert (=> b!623837 m!892239))

(declare-fun m!892241 () Bool)

(assert (=> b!623837 m!892241))

(assert (=> d!218089 d!218349))

(declare-fun d!218351 () Bool)

(declare-fun res!271209 () Bool)

(declare-fun e!378722 () Bool)

(assert (=> d!218351 (=> (not res!271209) (not e!378722))))

(assert (=> d!218351 (= res!271209 (<= (size!5005 (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) 512))))

(assert (=> d!218351 (= (inv!8161 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) e!378722)))

(declare-fun b!623838 () Bool)

(declare-fun res!271210 () Bool)

(assert (=> b!623838 (=> (not res!271210) (not e!378722))))

(assert (=> b!623838 (= res!271210 (= (csize!4349 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) (size!5005 (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))))

(declare-fun b!623839 () Bool)

(assert (=> b!623839 (= e!378722 (and (> (csize!4349 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) 0) (<= (csize!4349 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) 512)))))

(assert (= (and d!218351 res!271209) b!623838))

(assert (= (and b!623838 res!271210) b!623839))

(declare-fun m!892243 () Bool)

(assert (=> d!218351 m!892243))

(assert (=> d!218351 m!892243))

(declare-fun m!892245 () Bool)

(assert (=> d!218351 m!892245))

(assert (=> b!623838 m!892243))

(assert (=> b!623838 m!892243))

(assert (=> b!623838 m!892245))

(assert (=> b!623185 d!218351))

(declare-fun d!218353 () Bool)

(declare-fun lt!266453 () Int)

(assert (=> d!218353 (>= lt!266453 0)))

(declare-fun e!378723 () Int)

(assert (=> d!218353 (= lt!266453 e!378723)))

(declare-fun c!114697 () Bool)

(assert (=> d!218353 (= c!114697 ((_ is Nil!6416) (t!81933 lt!266350)))))

(assert (=> d!218353 (= (size!5003 (t!81933 lt!266350)) lt!266453)))

(declare-fun b!623840 () Bool)

(assert (=> b!623840 (= e!378723 0)))

(declare-fun b!623841 () Bool)

(assert (=> b!623841 (= e!378723 (+ 1 (size!5003 (t!81933 (t!81933 lt!266350)))))))

(assert (= (and d!218353 c!114697) b!623840))

(assert (= (and d!218353 (not c!114697)) b!623841))

(declare-fun m!892247 () Bool)

(assert (=> b!623841 m!892247))

(assert (=> b!623139 d!218353))

(declare-fun d!218355 () Bool)

(declare-fun c!114698 () Bool)

(assert (=> d!218355 (= c!114698 ((_ is Nil!6415) lt!266395))))

(declare-fun e!378724 () (InoxSet C!4212))

(assert (=> d!218355 (= (content!1153 lt!266395) e!378724)))

(declare-fun b!623842 () Bool)

(assert (=> b!623842 (= e!378724 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623843 () Bool)

(assert (=> b!623843 (= e!378724 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 lt!266395) true) (content!1153 (t!81932 lt!266395))))))

(assert (= (and d!218355 c!114698) b!623842))

(assert (= (and d!218355 (not c!114698)) b!623843))

(declare-fun m!892249 () Bool)

(assert (=> b!623843 m!892249))

(declare-fun m!892251 () Bool)

(assert (=> b!623843 m!892251))

(assert (=> d!217999 d!218355))

(assert (=> d!217999 d!218269))

(assert (=> d!217999 d!217965))

(declare-fun d!218357 () Bool)

(assert (=> d!218357 (= (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (= (mod (str.len (value!42169 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) 2) 0))))

(assert (=> b!623315 d!218357))

(declare-fun d!218359 () Bool)

(declare-fun res!271211 () Bool)

(declare-fun e!378725 () Bool)

(assert (=> d!218359 (=> (not res!271211) (not e!378725))))

(assert (=> d!218359 (= res!271211 (semiInverseModEq!523 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))))

(assert (=> d!218359 (= (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) e!378725)))

(declare-fun b!623844 () Bool)

(assert (=> b!623844 (= e!378725 (equivClasses!506 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))))

(assert (= (and d!218359 res!271211) b!623844))

(declare-fun m!892253 () Bool)

(assert (=> d!218359 m!892253))

(declare-fun m!892255 () Bool)

(assert (=> b!623844 m!892255))

(assert (=> b!623315 d!218359))

(declare-fun d!218361 () Bool)

(declare-fun res!271212 () Bool)

(declare-fun e!378726 () Bool)

(assert (=> d!218361 (=> (not res!271212) (not e!378726))))

(assert (=> d!218361 (= res!271212 (<= (size!5003 (list!2694 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361)))))) 512))))

(assert (=> d!218361 (= (inv!8151 (left!5088 (right!5418 (c!114443 v!6361)))) e!378726)))

(declare-fun b!623845 () Bool)

(declare-fun res!271213 () Bool)

(assert (=> b!623845 (=> (not res!271213) (not e!378726))))

(assert (=> b!623845 (= res!271213 (= (csize!4351 (left!5088 (right!5418 (c!114443 v!6361)))) (size!5003 (list!2694 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))))

(declare-fun b!623846 () Bool)

(assert (=> b!623846 (= e!378726 (and (> (csize!4351 (left!5088 (right!5418 (c!114443 v!6361)))) 0) (<= (csize!4351 (left!5088 (right!5418 (c!114443 v!6361)))) 512)))))

(assert (= (and d!218361 res!271212) b!623845))

(assert (= (and b!623845 res!271213) b!623846))

(declare-fun m!892257 () Bool)

(assert (=> d!218361 m!892257))

(assert (=> d!218361 m!892257))

(declare-fun m!892259 () Bool)

(assert (=> d!218361 m!892259))

(assert (=> b!623845 m!892257))

(assert (=> b!623845 m!892257))

(assert (=> b!623845 m!892259))

(assert (=> b!623122 d!218361))

(declare-fun d!218363 () Bool)

(declare-fun c!114699 () Bool)

(assert (=> d!218363 (= c!114699 ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))))))

(declare-fun e!378727 () Bool)

(assert (=> d!218363 (= (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) e!378727)))

(declare-fun b!623847 () Bool)

(assert (=> b!623847 (= e!378727 (inv!8160 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!623848 () Bool)

(declare-fun e!378728 () Bool)

(assert (=> b!623848 (= e!378727 e!378728)))

(declare-fun res!271214 () Bool)

(assert (=> b!623848 (= res!271214 (not ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))))

(assert (=> b!623848 (=> res!271214 e!378728)))

(declare-fun b!623849 () Bool)

(assert (=> b!623849 (= e!378728 (inv!8161 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))))))

(assert (= (and d!218363 c!114699) b!623847))

(assert (= (and d!218363 (not c!114699)) b!623848))

(assert (= (and b!623848 (not res!271214)) b!623849))

(declare-fun m!892261 () Bool)

(assert (=> b!623847 m!892261))

(declare-fun m!892263 () Bool)

(assert (=> b!623849 m!892263))

(assert (=> b!623229 d!218363))

(declare-fun d!218365 () Bool)

(assert (=> d!218365 (= (inv!16 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) (= (charsToInt!0 (text!9778 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42161 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(declare-fun bs!72170 () Bool)

(assert (= bs!72170 d!218365))

(declare-fun m!892265 () Bool)

(assert (=> bs!72170 m!892265))

(assert (=> b!623168 d!218365))

(declare-fun d!218367 () Bool)

(declare-fun lt!266454 () Int)

(assert (=> d!218367 (>= lt!266454 0)))

(declare-fun e!378729 () Int)

(assert (=> d!218367 (= lt!266454 e!378729)))

(declare-fun c!114700 () Bool)

(assert (=> d!218367 (= c!114700 ((_ is Nil!6415) (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218367 (= (size!5005 (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) lt!266454)))

(declare-fun b!623850 () Bool)

(assert (=> b!623850 (= e!378729 0)))

(declare-fun b!623851 () Bool)

(assert (=> b!623851 (= e!378729 (+ 1 (size!5005 (t!81932 (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(assert (= (and d!218367 c!114700) b!623850))

(assert (= (and d!218367 (not c!114700)) b!623851))

(declare-fun m!892267 () Bool)

(assert (=> b!623851 m!892267))

(assert (=> b!623081 d!218367))

(declare-fun d!218369 () Bool)

(assert (=> d!218369 (= (list!2696 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))

(assert (=> b!623081 d!218369))

(declare-fun d!218371 () Bool)

(declare-fun c!114701 () Bool)

(assert (=> d!218371 (= c!114701 ((_ is Nil!6415) lt!266409))))

(declare-fun e!378730 () (InoxSet C!4212))

(assert (=> d!218371 (= (content!1153 lt!266409) e!378730)))

(declare-fun b!623852 () Bool)

(assert (=> b!623852 (= e!378730 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623853 () Bool)

(assert (=> b!623853 (= e!378730 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 lt!266409) true) (content!1153 (t!81932 lt!266409))))))

(assert (= (and d!218371 c!114701) b!623852))

(assert (= (and d!218371 (not c!114701)) b!623853))

(declare-fun m!892269 () Bool)

(assert (=> b!623853 m!892269))

(declare-fun m!892271 () Bool)

(assert (=> b!623853 m!892271))

(assert (=> d!218085 d!218371))

(declare-fun d!218373 () Bool)

(declare-fun c!114702 () Bool)

(assert (=> d!218373 (= c!114702 ((_ is Nil!6415) (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))

(declare-fun e!378731 () (InoxSet C!4212))

(assert (=> d!218373 (= (content!1153 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) e!378731)))

(declare-fun b!623854 () Bool)

(assert (=> b!623854 (= e!378731 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623855 () Bool)

(assert (=> b!623855 (= e!378731 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) true) (content!1153 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))))

(assert (= (and d!218373 c!114702) b!623854))

(assert (= (and d!218373 (not c!114702)) b!623855))

(declare-fun m!892273 () Bool)

(assert (=> b!623855 m!892273))

(declare-fun m!892275 () Bool)

(assert (=> b!623855 m!892275))

(assert (=> d!218085 d!218373))

(assert (=> d!218085 d!217965))

(declare-fun d!218375 () Bool)

(assert (=> d!218375 (= (isEmpty!4575 (list!2689 (left!5088 (c!114443 v!6361)))) ((_ is Nil!6416) (list!2689 (left!5088 (c!114443 v!6361)))))))

(assert (=> d!217997 d!218375))

(assert (=> d!217997 d!217987))

(assert (=> d!217997 d!217971))

(declare-fun d!218377 () Bool)

(declare-fun lt!266455 () Int)

(assert (=> d!218377 (>= lt!266455 0)))

(declare-fun e!378732 () Int)

(assert (=> d!218377 (= lt!266455 e!378732)))

(declare-fun c!114703 () Bool)

(assert (=> d!218377 (= c!114703 ((_ is Nil!6415) (t!81932 (list!2687 (charsOf!897 separatorToken!136)))))))

(assert (=> d!218377 (= (size!5005 (t!81932 (list!2687 (charsOf!897 separatorToken!136)))) lt!266455)))

(declare-fun b!623856 () Bool)

(assert (=> b!623856 (= e!378732 0)))

(declare-fun b!623857 () Bool)

(assert (=> b!623857 (= e!378732 (+ 1 (size!5005 (t!81932 (t!81932 (list!2687 (charsOf!897 separatorToken!136)))))))))

(assert (= (and d!218377 c!114703) b!623856))

(assert (= (and d!218377 (not c!114703)) b!623857))

(declare-fun m!892277 () Bool)

(assert (=> b!623857 m!892277))

(assert (=> b!623209 d!218377))

(declare-fun d!218379 () Bool)

(declare-fun res!271215 () Bool)

(declare-fun e!378733 () Bool)

(assert (=> d!218379 (=> (not res!271215) (not e!378733))))

(assert (=> d!218379 (= res!271215 (not (isEmpty!4572 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))))

(assert (=> d!218379 (= (inv!8148 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))) e!378733)))

(declare-fun b!623858 () Bool)

(declare-fun res!271216 () Bool)

(assert (=> b!623858 (=> (not res!271216) (not e!378733))))

(assert (=> b!623858 (= res!271216 (= (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))) (list!2687 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))))

(declare-fun b!623859 () Bool)

(assert (=> b!623859 (= e!378733 (= (size!5000 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))) (size!5005 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))))

(assert (= (and d!218379 res!271215) b!623858))

(assert (= (and b!623858 res!271216) b!623859))

(declare-fun b_lambda!24643 () Bool)

(assert (=> (not b_lambda!24643) (not b!623858)))

(declare-fun t!82040 () Bool)

(declare-fun tb!54113 () Bool)

(assert (=> (and b!623322 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82040) tb!54113))

(declare-fun b!623860 () Bool)

(declare-fun e!378734 () Bool)

(declare-fun tp!193969 () Bool)

(assert (=> b!623860 (= e!378734 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) tp!193969))))

(declare-fun result!61124 () Bool)

(assert (=> tb!54113 (= result!61124 (and (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) e!378734))))

(assert (= tb!54113 b!623860))

(declare-fun m!892279 () Bool)

(assert (=> b!623860 m!892279))

(declare-fun m!892281 () Bool)

(assert (=> tb!54113 m!892281))

(assert (=> b!623858 t!82040))

(declare-fun b_and!61969 () Bool)

(assert (= b_and!61963 (and (=> t!82040 result!61124) b_and!61969)))

(declare-fun t!82042 () Bool)

(declare-fun tb!54115 () Bool)

(assert (=> (and b!622896 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82042) tb!54115))

(declare-fun result!61126 () Bool)

(assert (= result!61126 result!61124))

(assert (=> b!623858 t!82042))

(declare-fun b_and!61971 () Bool)

(assert (= b_and!61967 (and (=> t!82042 result!61126) b_and!61971)))

(declare-fun t!82044 () Bool)

(declare-fun tb!54117 () Bool)

(assert (=> (and b!622524 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82044) tb!54117))

(declare-fun result!61128 () Bool)

(assert (= result!61128 result!61124))

(assert (=> b!623858 t!82044))

(declare-fun b_and!61973 () Bool)

(assert (= b_and!61959 (and (=> t!82044 result!61128) b_and!61973)))

(declare-fun t!82046 () Bool)

(declare-fun tb!54119 () Bool)

(assert (=> (and b!623316 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82046) tb!54119))

(declare-fun result!61130 () Bool)

(assert (= result!61130 result!61124))

(assert (=> b!623858 t!82046))

(declare-fun b_and!61975 () Bool)

(assert (= b_and!61965 (and (=> t!82046 result!61130) b_and!61975)))

(declare-fun t!82048 () Bool)

(declare-fun tb!54121 () Bool)

(assert (=> (and b!623404 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82048) tb!54121))

(declare-fun result!61132 () Bool)

(assert (= result!61132 result!61124))

(assert (=> b!623858 t!82048))

(declare-fun b_and!61977 () Bool)

(assert (= b_and!61961 (and (=> t!82048 result!61132) b_and!61977)))

(declare-fun m!892283 () Bool)

(assert (=> d!218379 m!892283))

(declare-fun m!892285 () Bool)

(assert (=> b!623858 m!892285))

(assert (=> b!623858 m!892285))

(declare-fun m!892287 () Bool)

(assert (=> b!623858 m!892287))

(declare-fun m!892289 () Bool)

(assert (=> b!623859 m!892289))

(assert (=> b!623319 d!218379))

(declare-fun d!218381 () Bool)

(declare-fun res!271217 () Bool)

(declare-fun e!378735 () Bool)

(assert (=> d!218381 (=> (not res!271217) (not e!378735))))

(assert (=> d!218381 (= res!271217 (<= (size!5003 (list!2694 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361)))))) 512))))

(assert (=> d!218381 (= (inv!8151 (right!5418 (right!5418 (c!114443 v!6361)))) e!378735)))

(declare-fun b!623861 () Bool)

(declare-fun res!271218 () Bool)

(assert (=> b!623861 (=> (not res!271218) (not e!378735))))

(assert (=> b!623861 (= res!271218 (= (csize!4351 (right!5418 (right!5418 (c!114443 v!6361)))) (size!5003 (list!2694 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))))

(declare-fun b!623862 () Bool)

(assert (=> b!623862 (= e!378735 (and (> (csize!4351 (right!5418 (right!5418 (c!114443 v!6361)))) 0) (<= (csize!4351 (right!5418 (right!5418 (c!114443 v!6361)))) 512)))))

(assert (= (and d!218381 res!271217) b!623861))

(assert (= (and b!623861 res!271218) b!623862))

(declare-fun m!892291 () Bool)

(assert (=> d!218381 m!892291))

(assert (=> d!218381 m!892291))

(declare-fun m!892293 () Bool)

(assert (=> d!218381 m!892293))

(assert (=> b!623861 m!892291))

(assert (=> b!623861 m!892291))

(assert (=> b!623861 m!892293))

(assert (=> b!623125 d!218381))

(assert (=> b!623161 d!218307))

(assert (=> b!623161 d!218309))

(declare-fun d!218383 () Bool)

(declare-fun lt!266456 () Int)

(assert (=> d!218383 (= lt!266456 (size!5003 (list!2689 (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218383 (= lt!266456 (ite ((_ is Empty!2060) (left!5088 (right!5418 (c!114443 v!6361)))) 0 (ite ((_ is Leaf!3223) (left!5088 (right!5418 (c!114443 v!6361)))) (csize!4351 (left!5088 (right!5418 (c!114443 v!6361)))) (csize!4350 (left!5088 (right!5418 (c!114443 v!6361)))))))))

(assert (=> d!218383 (= (size!5004 (left!5088 (right!5418 (c!114443 v!6361)))) lt!266456)))

(declare-fun bs!72171 () Bool)

(assert (= bs!72171 d!218383))

(assert (=> bs!72171 m!891355))

(assert (=> bs!72171 m!891355))

(declare-fun m!892295 () Bool)

(assert (=> bs!72171 m!892295))

(assert (=> d!217991 d!218383))

(declare-fun d!218385 () Bool)

(declare-fun lt!266457 () Int)

(assert (=> d!218385 (= lt!266457 (size!5003 (list!2689 (right!5418 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218385 (= lt!266457 (ite ((_ is Empty!2060) (right!5418 (right!5418 (c!114443 v!6361)))) 0 (ite ((_ is Leaf!3223) (right!5418 (right!5418 (c!114443 v!6361)))) (csize!4351 (right!5418 (right!5418 (c!114443 v!6361)))) (csize!4350 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(assert (=> d!218385 (= (size!5004 (right!5418 (right!5418 (c!114443 v!6361)))) lt!266457)))

(declare-fun bs!72172 () Bool)

(assert (= bs!72172 d!218385))

(assert (=> bs!72172 m!891357))

(assert (=> bs!72172 m!891357))

(declare-fun m!892297 () Bool)

(assert (=> bs!72172 m!892297))

(assert (=> d!217991 d!218385))

(declare-fun d!218387 () Bool)

(declare-fun lt!266458 () Int)

(assert (=> d!218387 (>= lt!266458 0)))

(declare-fun e!378736 () Int)

(assert (=> d!218387 (= lt!266458 e!378736)))

(declare-fun c!114704 () Bool)

(assert (=> d!218387 (= c!114704 ((_ is Nil!6415) lt!266410))))

(assert (=> d!218387 (= (size!5005 lt!266410) lt!266458)))

(declare-fun b!623863 () Bool)

(assert (=> b!623863 (= e!378736 0)))

(declare-fun b!623864 () Bool)

(assert (=> b!623864 (= e!378736 (+ 1 (size!5005 (t!81932 lt!266410))))))

(assert (= (and d!218387 c!114704) b!623863))

(assert (= (and d!218387 (not c!114704)) b!623864))

(declare-fun m!892299 () Bool)

(assert (=> b!623864 m!892299))

(assert (=> b!623238 d!218387))

(declare-fun d!218389 () Bool)

(declare-fun lt!266459 () Int)

(assert (=> d!218389 (>= lt!266459 0)))

(declare-fun e!378737 () Int)

(assert (=> d!218389 (= lt!266459 e!378737)))

(declare-fun c!114705 () Bool)

(assert (=> d!218389 (= c!114705 ((_ is Nil!6415) (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(assert (=> d!218389 (= (size!5005 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))) lt!266459)))

(declare-fun b!623865 () Bool)

(assert (=> b!623865 (= e!378737 0)))

(declare-fun b!623866 () Bool)

(assert (=> b!623866 (= e!378737 (+ 1 (size!5005 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))))))))

(assert (= (and d!218389 c!114705) b!623865))

(assert (= (and d!218389 (not c!114705)) b!623866))

(declare-fun m!892301 () Bool)

(assert (=> b!623866 m!892301))

(assert (=> b!623238 d!218389))

(declare-fun d!218391 () Bool)

(declare-fun lt!266460 () Int)

(assert (=> d!218391 (>= lt!266460 0)))

(declare-fun e!378738 () Int)

(assert (=> d!218391 (= lt!266460 e!378738)))

(declare-fun c!114706 () Bool)

(assert (=> d!218391 (= c!114706 ((_ is Nil!6415) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))

(assert (=> d!218391 (= (size!5005 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)) lt!266460)))

(declare-fun b!623867 () Bool)

(assert (=> b!623867 (= e!378738 0)))

(declare-fun b!623868 () Bool)

(assert (=> b!623868 (= e!378738 (+ 1 (size!5005 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))))

(assert (= (and d!218391 c!114706) b!623867))

(assert (= (and d!218391 (not c!114706)) b!623868))

(declare-fun m!892303 () Bool)

(assert (=> b!623868 m!892303))

(assert (=> b!623238 d!218391))

(declare-fun d!218393 () Bool)

(declare-fun lt!266461 () Int)

(assert (=> d!218393 (>= lt!266461 0)))

(declare-fun e!378739 () Int)

(assert (=> d!218393 (= lt!266461 e!378739)))

(declare-fun c!114707 () Bool)

(assert (=> d!218393 (= c!114707 ((_ is Nil!6415) (t!81932 lt!266359)))))

(assert (=> d!218393 (= (size!5005 (t!81932 lt!266359)) lt!266461)))

(declare-fun b!623869 () Bool)

(assert (=> b!623869 (= e!378739 0)))

(declare-fun b!623870 () Bool)

(assert (=> b!623870 (= e!378739 (+ 1 (size!5005 (t!81932 (t!81932 lt!266359)))))))

(assert (= (and d!218393 c!114707) b!623869))

(assert (= (and d!218393 (not c!114707)) b!623870))

(declare-fun m!892305 () Bool)

(assert (=> b!623870 m!892305))

(assert (=> b!623205 d!218393))

(declare-fun d!218395 () Bool)

(declare-fun lt!266462 () Int)

(assert (=> d!218395 (>= lt!266462 0)))

(declare-fun e!378740 () Int)

(assert (=> d!218395 (= lt!266462 e!378740)))

(declare-fun c!114708 () Bool)

(assert (=> d!218395 (= c!114708 ((_ is Nil!6415) lt!266395))))

(assert (=> d!218395 (= (size!5005 lt!266395) lt!266462)))

(declare-fun b!623871 () Bool)

(assert (=> b!623871 (= e!378740 0)))

(declare-fun b!623872 () Bool)

(assert (=> b!623872 (= e!378740 (+ 1 (size!5005 (t!81932 lt!266395))))))

(assert (= (and d!218395 c!114708) b!623871))

(assert (= (and d!218395 (not c!114708)) b!623872))

(declare-fun m!892307 () Bool)

(assert (=> b!623872 m!892307))

(assert (=> b!623112 d!218395))

(assert (=> b!623112 d!218287))

(assert (=> b!623112 d!218067))

(declare-fun d!218397 () Bool)

(declare-fun lt!266463 () Int)

(assert (=> d!218397 (>= lt!266463 0)))

(declare-fun e!378741 () Int)

(assert (=> d!218397 (= lt!266463 e!378741)))

(declare-fun c!114709 () Bool)

(assert (=> d!218397 (= c!114709 ((_ is Nil!6416) (list!2689 (right!5418 (c!114443 v!6361)))))))

(assert (=> d!218397 (= (size!5003 (list!2689 (right!5418 (c!114443 v!6361)))) lt!266463)))

(declare-fun b!623873 () Bool)

(assert (=> b!623873 (= e!378741 0)))

(declare-fun b!623874 () Bool)

(assert (=> b!623874 (= e!378741 (+ 1 (size!5003 (t!81933 (list!2689 (right!5418 (c!114443 v!6361)))))))))

(assert (= (and d!218397 c!114709) b!623873))

(assert (= (and d!218397 (not c!114709)) b!623874))

(declare-fun m!892309 () Bool)

(assert (=> b!623874 m!892309))

(assert (=> d!217973 d!218397))

(assert (=> d!217973 d!217989))

(declare-fun d!218399 () Bool)

(assert (=> d!218399 (= (list!2696 (xs!4696 (c!114441 (charsOf!897 separatorToken!136)))) (innerList!2117 (xs!4696 (c!114441 (charsOf!897 separatorToken!136)))))))

(assert (=> b!623164 d!218399))

(declare-fun d!218401 () Bool)

(declare-fun lt!266464 () Bool)

(assert (=> d!218401 (= lt!266464 (isEmpty!4575 (list!2689 (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218401 (= lt!266464 (= (size!5004 (left!5088 (right!5418 (c!114443 v!6361)))) 0))))

(assert (=> d!218401 (= (isEmpty!4574 (left!5088 (right!5418 (c!114443 v!6361)))) lt!266464)))

(declare-fun bs!72173 () Bool)

(assert (= bs!72173 d!218401))

(assert (=> bs!72173 m!891355))

(assert (=> bs!72173 m!891355))

(declare-fun m!892311 () Bool)

(assert (=> bs!72173 m!892311))

(assert (=> bs!72173 m!891361))

(assert (=> b!623157 d!218401))

(declare-fun d!218403 () Bool)

(assert (=> d!218403 (= (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (isBalanced!544 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(declare-fun bs!72174 () Bool)

(assert (= bs!72174 d!218403))

(declare-fun m!892313 () Bool)

(assert (=> bs!72174 m!892313))

(assert (=> tb!54039 d!218403))

(declare-fun d!218405 () Bool)

(assert (=> d!218405 (= (height!258 (left!5088 (left!5088 (c!114443 v!6361)))) (ite ((_ is Empty!2060) (left!5088 (left!5088 (c!114443 v!6361)))) 0 (ite ((_ is Leaf!3223) (left!5088 (left!5088 (c!114443 v!6361)))) 1 (cheight!2271 (left!5088 (left!5088 (c!114443 v!6361)))))))))

(assert (=> b!623058 d!218405))

(declare-fun d!218407 () Bool)

(assert (=> d!218407 (= (height!258 (right!5418 (left!5088 (c!114443 v!6361)))) (ite ((_ is Empty!2060) (right!5418 (left!5088 (c!114443 v!6361)))) 0 (ite ((_ is Leaf!3223) (right!5418 (left!5088 (c!114443 v!6361)))) 1 (cheight!2271 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(assert (=> b!623058 d!218407))

(declare-fun d!218409 () Bool)

(declare-fun c!114710 () Bool)

(assert (=> d!218409 (= c!114710 ((_ is Node!2060) (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))))))

(declare-fun e!378742 () Bool)

(assert (=> d!218409 (= (inv!8146 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))) e!378742)))

(declare-fun b!623875 () Bool)

(assert (=> b!623875 (= e!378742 (inv!8150 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!623876 () Bool)

(declare-fun e!378743 () Bool)

(assert (=> b!623876 (= e!378742 e!378743)))

(declare-fun res!271219 () Bool)

(assert (=> b!623876 (= res!271219 (not ((_ is Leaf!3223) (left!5088 (left!5088 (left!5088 (c!114443 v!6361)))))))))

(assert (=> b!623876 (=> res!271219 e!378743)))

(declare-fun b!623877 () Bool)

(assert (=> b!623877 (= e!378743 (inv!8151 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (= (and d!218409 c!114710) b!623875))

(assert (= (and d!218409 (not c!114710)) b!623876))

(assert (= (and b!623876 (not res!271219)) b!623877))

(declare-fun m!892315 () Bool)

(assert (=> b!623875 m!892315))

(declare-fun m!892317 () Bool)

(assert (=> b!623877 m!892317))

(assert (=> b!623306 d!218409))

(declare-fun d!218411 () Bool)

(declare-fun c!114711 () Bool)

(assert (=> d!218411 (= c!114711 ((_ is Node!2060) (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))))))

(declare-fun e!378744 () Bool)

(assert (=> d!218411 (= (inv!8146 (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))) e!378744)))

(declare-fun b!623878 () Bool)

(assert (=> b!623878 (= e!378744 (inv!8150 (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!623879 () Bool)

(declare-fun e!378745 () Bool)

(assert (=> b!623879 (= e!378744 e!378745)))

(declare-fun res!271220 () Bool)

(assert (=> b!623879 (= res!271220 (not ((_ is Leaf!3223) (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))))))

(assert (=> b!623879 (=> res!271220 e!378745)))

(declare-fun b!623880 () Bool)

(assert (=> b!623880 (= e!378745 (inv!8151 (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (= (and d!218411 c!114711) b!623878))

(assert (= (and d!218411 (not c!114711)) b!623879))

(assert (= (and b!623879 (not res!271220)) b!623880))

(declare-fun m!892319 () Bool)

(assert (=> b!623878 m!892319))

(declare-fun m!892321 () Bool)

(assert (=> b!623880 m!892321))

(assert (=> b!623306 d!218411))

(declare-fun bs!72175 () Bool)

(declare-fun d!218413 () Bool)

(assert (= bs!72175 (and d!218413 d!217859)))

(declare-fun lambda!16347 () Int)

(assert (=> bs!72175 (= (and (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) (= (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toValue!2234 (transformation!1309 (rule!2105 separatorToken!136))))) (= lambda!16347 lambda!16337))))

(assert (=> d!218413 true))

(assert (=> d!218413 (< (dynLambda!3624 order!4955 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (dynLambda!3625 order!4957 lambda!16347))))

(assert (=> d!218413 true))

(assert (=> d!218413 (< (dynLambda!3626 order!4959 (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (dynLambda!3625 order!4957 lambda!16347))))

(assert (=> d!218413 (= (semiInverseModEq!523 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (Forall!316 lambda!16347))))

(declare-fun bs!72176 () Bool)

(assert (= bs!72176 d!218413))

(declare-fun m!892323 () Bool)

(assert (=> bs!72176 m!892323))

(assert (=> d!217977 d!218413))

(assert (=> b!623173 d!218369))

(declare-fun d!218415 () Bool)

(declare-fun lt!266467 () Int)

(assert (=> d!218415 (= lt!266467 (size!5005 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218415 (= lt!266467 (ite ((_ is Empty!2059) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 0 (ite ((_ is Leaf!3222) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (csize!4349 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (csize!4348 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> d!218415 (= (size!5008 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) lt!266467)))

(declare-fun bs!72177 () Bool)

(assert (= bs!72177 d!218415))

(assert (=> bs!72177 m!891477))

(assert (=> bs!72177 m!891477))

(assert (=> bs!72177 m!892191))

(assert (=> d!218013 d!218415))

(declare-fun d!218417 () Bool)

(declare-fun lt!266468 () Int)

(assert (=> d!218417 (= lt!266468 (size!5005 (list!2688 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218417 (= lt!266468 (ite ((_ is Empty!2059) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 0 (ite ((_ is Leaf!3222) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (csize!4349 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (csize!4348 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> d!218417 (= (size!5008 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) lt!266468)))

(declare-fun bs!72178 () Bool)

(assert (= bs!72178 d!218417))

(assert (=> bs!72178 m!891479))

(assert (=> bs!72178 m!891479))

(assert (=> bs!72178 m!892193))

(assert (=> d!218013 d!218417))

(declare-fun d!218419 () Bool)

(declare-fun lt!266469 () Int)

(assert (=> d!218419 (>= lt!266469 0)))

(declare-fun e!378746 () Int)

(assert (=> d!218419 (= lt!266469 e!378746)))

(declare-fun c!114712 () Bool)

(assert (=> d!218419 (= c!114712 ((_ is Nil!6415) lt!266409))))

(assert (=> d!218419 (= (size!5005 lt!266409) lt!266469)))

(declare-fun b!623881 () Bool)

(assert (=> b!623881 (= e!378746 0)))

(declare-fun b!623882 () Bool)

(assert (=> b!623882 (= e!378746 (+ 1 (size!5005 (t!81932 lt!266409))))))

(assert (= (and d!218419 c!114712) b!623881))

(assert (= (and d!218419 (not c!114712)) b!623882))

(declare-fun m!892325 () Bool)

(assert (=> b!623882 m!892325))

(assert (=> b!623232 d!218419))

(declare-fun d!218421 () Bool)

(declare-fun lt!266470 () Int)

(assert (=> d!218421 (>= lt!266470 0)))

(declare-fun e!378747 () Int)

(assert (=> d!218421 (= lt!266470 e!378747)))

(declare-fun c!114713 () Bool)

(assert (=> d!218421 (= c!114713 ((_ is Nil!6415) (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))

(assert (=> d!218421 (= (size!5005 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) lt!266470)))

(declare-fun b!623883 () Bool)

(assert (=> b!623883 (= e!378747 0)))

(declare-fun b!623884 () Bool)

(assert (=> b!623884 (= e!378747 (+ 1 (size!5005 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))))

(assert (= (and d!218421 c!114713) b!623883))

(assert (= (and d!218421 (not c!114713)) b!623884))

(declare-fun m!892327 () Bool)

(assert (=> b!623884 m!892327))

(assert (=> b!623232 d!218421))

(assert (=> b!623232 d!218067))

(declare-fun d!218423 () Bool)

(assert (=> d!218423 true))

(assert (=> d!218423 true))

(declare-fun res!271223 () Int)

(assert (=> d!218423 (= (choose!644 (text!9779 (value!42170 separatorToken!136))) res!271223)))

(assert (=> d!218093 d!218423))

(declare-fun d!218425 () Bool)

(declare-fun lt!266471 () Int)

(assert (=> d!218425 (>= lt!266471 0)))

(declare-fun e!378748 () Int)

(assert (=> d!218425 (= lt!266471 e!378748)))

(declare-fun c!114714 () Bool)

(assert (=> d!218425 (= c!114714 ((_ is Nil!6416) (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218425 (= (size!5003 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))) lt!266471)))

(declare-fun b!623885 () Bool)

(assert (=> b!623885 (= e!378748 0)))

(declare-fun b!623886 () Bool)

(assert (=> b!623886 (= e!378748 (+ 1 (size!5003 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))

(assert (= (and d!218425 c!114714) b!623885))

(assert (= (and d!218425 (not c!114714)) b!623886))

(declare-fun m!892329 () Bool)

(assert (=> b!623886 m!892329))

(assert (=> d!217959 d!218425))

(declare-fun d!218427 () Bool)

(assert (=> d!218427 (= (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (ite ((_ is Empty!2059) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 0 (ite ((_ is Leaf!3222) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 1 (cheight!2270 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> b!623201 d!218427))

(declare-fun d!218429 () Bool)

(assert (=> d!218429 (= (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (ite ((_ is Empty!2059) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 0 (ite ((_ is Leaf!3222) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 1 (cheight!2270 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> b!623201 d!218429))

(declare-fun d!218431 () Bool)

(declare-fun res!271224 () Bool)

(declare-fun e!378749 () Bool)

(assert (=> d!218431 (=> (not res!271224) (not e!378749))))

(assert (=> d!218431 (= res!271224 (= (csize!4348 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (+ (size!5008 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (size!5008 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(assert (=> d!218431 (= (inv!8160 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378749)))

(declare-fun b!623887 () Bool)

(declare-fun res!271225 () Bool)

(assert (=> b!623887 (=> (not res!271225) (not e!378749))))

(assert (=> b!623887 (= res!271225 (and (not (= (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) Empty!2059)) (not (= (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) Empty!2059))))))

(declare-fun b!623888 () Bool)

(declare-fun res!271226 () Bool)

(assert (=> b!623888 (=> (not res!271226) (not e!378749))))

(assert (=> b!623888 (= res!271226 (= (cheight!2270 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (+ (max!0 (height!259 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (height!259 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) 1)))))

(declare-fun b!623889 () Bool)

(assert (=> b!623889 (= e!378749 (<= 0 (cheight!2270 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (= (and d!218431 res!271224) b!623887))

(assert (= (and b!623887 res!271225) b!623888))

(assert (= (and b!623888 res!271226) b!623889))

(declare-fun m!892331 () Bool)

(assert (=> d!218431 m!892331))

(declare-fun m!892333 () Bool)

(assert (=> d!218431 m!892333))

(assert (=> b!623888 m!892135))

(assert (=> b!623888 m!892137))

(assert (=> b!623888 m!892135))

(assert (=> b!623888 m!892137))

(declare-fun m!892335 () Bool)

(assert (=> b!623888 m!892335))

(assert (=> b!623114 d!218431))

(declare-fun d!218433 () Bool)

(declare-fun lt!266472 () Int)

(assert (=> d!218433 (= lt!266472 (size!5003 (list!2689 (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218433 (= lt!266472 (ite ((_ is Empty!2060) (left!5088 (left!5088 (c!114443 v!6361)))) 0 (ite ((_ is Leaf!3223) (left!5088 (left!5088 (c!114443 v!6361)))) (csize!4351 (left!5088 (left!5088 (c!114443 v!6361)))) (csize!4350 (left!5088 (left!5088 (c!114443 v!6361)))))))))

(assert (=> d!218433 (= (size!5004 (left!5088 (left!5088 (c!114443 v!6361)))) lt!266472)))

(declare-fun bs!72179 () Bool)

(assert (= bs!72179 d!218433))

(assert (=> bs!72179 m!891347))

(assert (=> bs!72179 m!891347))

(declare-fun m!892337 () Bool)

(assert (=> bs!72179 m!892337))

(assert (=> d!218099 d!218433))

(declare-fun d!218435 () Bool)

(declare-fun lt!266473 () Int)

(assert (=> d!218435 (= lt!266473 (size!5003 (list!2689 (right!5418 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218435 (= lt!266473 (ite ((_ is Empty!2060) (right!5418 (left!5088 (c!114443 v!6361)))) 0 (ite ((_ is Leaf!3223) (right!5418 (left!5088 (c!114443 v!6361)))) (csize!4351 (right!5418 (left!5088 (c!114443 v!6361)))) (csize!4350 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(assert (=> d!218435 (= (size!5004 (right!5418 (left!5088 (c!114443 v!6361)))) lt!266473)))

(declare-fun bs!72180 () Bool)

(assert (= bs!72180 d!218435))

(assert (=> bs!72180 m!891349))

(assert (=> bs!72180 m!891349))

(declare-fun m!892339 () Bool)

(assert (=> bs!72180 m!892339))

(assert (=> d!218099 d!218435))

(declare-fun d!218437 () Bool)

(assert (=> d!218437 (= (list!2687 lt!266408) (list!2688 (c!114441 lt!266408)))))

(declare-fun bs!72181 () Bool)

(assert (= bs!72181 d!218437))

(declare-fun m!892341 () Bool)

(assert (=> bs!72181 m!892341))

(assert (=> d!218079 d!218437))

(declare-fun d!218439 () Bool)

(declare-fun lt!266474 () Int)

(assert (=> d!218439 (>= lt!266474 0)))

(declare-fun e!378750 () Int)

(assert (=> d!218439 (= lt!266474 e!378750)))

(declare-fun c!114715 () Bool)

(assert (=> d!218439 (= c!114715 ((_ is Nil!6415) (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))

(assert (=> d!218439 (= (size!5005 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) lt!266474)))

(declare-fun b!623890 () Bool)

(assert (=> b!623890 (= e!378750 0)))

(declare-fun b!623891 () Bool)

(assert (=> b!623891 (= e!378750 (+ 1 (size!5005 (t!81932 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(assert (= (and d!218439 c!114715) b!623890))

(assert (= (and d!218439 (not c!114715)) b!623891))

(declare-fun m!892343 () Bool)

(assert (=> b!623891 m!892343))

(assert (=> b!623127 d!218439))

(declare-fun d!218441 () Bool)

(assert (=> d!218441 (= (inv!8158 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))) (<= (size!5003 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361)))))) 2147483647))))

(declare-fun bs!72182 () Bool)

(assert (= bs!72182 d!218441))

(declare-fun m!892345 () Bool)

(assert (=> bs!72182 m!892345))

(assert (=> b!623399 d!218441))

(declare-fun b!623895 () Bool)

(declare-fun e!378752 () List!6425)

(assert (=> b!623895 (= e!378752 (++!1768 (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))))

(declare-fun b!623894 () Bool)

(assert (=> b!623894 (= e!378752 (list!2696 (xs!4696 (c!114441 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!623893 () Bool)

(declare-fun e!378751 () List!6425)

(assert (=> b!623893 (= e!378751 e!378752)))

(declare-fun c!114717 () Bool)

(assert (=> b!623893 (= c!114717 ((_ is Leaf!3222) (c!114441 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))

(declare-fun d!218443 () Bool)

(declare-fun c!114716 () Bool)

(assert (=> d!218443 (= c!114716 ((_ is Empty!2059) (c!114441 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))

(assert (=> d!218443 (= (list!2688 (c!114441 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) e!378751)))

(declare-fun b!623892 () Bool)

(assert (=> b!623892 (= e!378751 Nil!6415)))

(assert (= (and d!218443 c!114716) b!623892))

(assert (= (and d!218443 (not c!114716)) b!623893))

(assert (= (and b!623893 c!114717) b!623894))

(assert (= (and b!623893 (not c!114717)) b!623895))

(declare-fun m!892347 () Bool)

(assert (=> b!623895 m!892347))

(declare-fun m!892349 () Bool)

(assert (=> b!623895 m!892349))

(assert (=> b!623895 m!892347))

(assert (=> b!623895 m!892349))

(declare-fun m!892351 () Bool)

(assert (=> b!623895 m!892351))

(declare-fun m!892353 () Bool)

(assert (=> b!623894 m!892353))

(assert (=> d!218083 d!218443))

(declare-fun d!218445 () Bool)

(declare-fun e!378753 () Bool)

(assert (=> d!218445 e!378753))

(declare-fun res!271227 () Bool)

(assert (=> d!218445 (=> (not res!271227) (not e!378753))))

(declare-fun lt!266475 () List!6426)

(assert (=> d!218445 (= res!271227 (= (content!1152 lt!266475) ((_ map or) (content!1152 (list!2689 (left!5088 (right!5418 (c!114443 v!6361))))) (content!1152 (list!2689 (right!5418 (right!5418 (c!114443 v!6361))))))))))

(declare-fun e!378754 () List!6426)

(assert (=> d!218445 (= lt!266475 e!378754)))

(declare-fun c!114718 () Bool)

(assert (=> d!218445 (= c!114718 ((_ is Nil!6416) (list!2689 (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218445 (= (++!1770 (list!2689 (left!5088 (right!5418 (c!114443 v!6361)))) (list!2689 (right!5418 (right!5418 (c!114443 v!6361))))) lt!266475)))

(declare-fun b!623899 () Bool)

(assert (=> b!623899 (= e!378753 (or (not (= (list!2689 (right!5418 (right!5418 (c!114443 v!6361)))) Nil!6416)) (= lt!266475 (list!2689 (left!5088 (right!5418 (c!114443 v!6361)))))))))

(declare-fun b!623897 () Bool)

(assert (=> b!623897 (= e!378754 (Cons!6416 (h!11817 (list!2689 (left!5088 (right!5418 (c!114443 v!6361))))) (++!1770 (t!81933 (list!2689 (left!5088 (right!5418 (c!114443 v!6361))))) (list!2689 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(declare-fun b!623896 () Bool)

(assert (=> b!623896 (= e!378754 (list!2689 (right!5418 (right!5418 (c!114443 v!6361)))))))

(declare-fun b!623898 () Bool)

(declare-fun res!271228 () Bool)

(assert (=> b!623898 (=> (not res!271228) (not e!378753))))

(assert (=> b!623898 (= res!271228 (= (size!5003 lt!266475) (+ (size!5003 (list!2689 (left!5088 (right!5418 (c!114443 v!6361))))) (size!5003 (list!2689 (right!5418 (right!5418 (c!114443 v!6361))))))))))

(assert (= (and d!218445 c!114718) b!623896))

(assert (= (and d!218445 (not c!114718)) b!623897))

(assert (= (and d!218445 res!271227) b!623898))

(assert (= (and b!623898 res!271228) b!623899))

(declare-fun m!892355 () Bool)

(assert (=> d!218445 m!892355))

(assert (=> d!218445 m!891355))

(declare-fun m!892357 () Bool)

(assert (=> d!218445 m!892357))

(assert (=> d!218445 m!891357))

(declare-fun m!892359 () Bool)

(assert (=> d!218445 m!892359))

(assert (=> b!623897 m!891357))

(declare-fun m!892361 () Bool)

(assert (=> b!623897 m!892361))

(declare-fun m!892363 () Bool)

(assert (=> b!623898 m!892363))

(assert (=> b!623898 m!891355))

(assert (=> b!623898 m!892295))

(assert (=> b!623898 m!891357))

(assert (=> b!623898 m!892297))

(assert (=> b!623102 d!218445))

(declare-fun b!623900 () Bool)

(declare-fun e!378755 () List!6426)

(assert (=> b!623900 (= e!378755 Nil!6416)))

(declare-fun b!623902 () Bool)

(declare-fun e!378756 () List!6426)

(assert (=> b!623902 (= e!378756 (list!2694 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623903 () Bool)

(assert (=> b!623903 (= e!378756 (++!1770 (list!2689 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))) (list!2689 (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))))))

(declare-fun d!218447 () Bool)

(declare-fun c!114719 () Bool)

(assert (=> d!218447 (= c!114719 ((_ is Empty!2060) (left!5088 (right!5418 (c!114443 v!6361)))))))

(assert (=> d!218447 (= (list!2689 (left!5088 (right!5418 (c!114443 v!6361)))) e!378755)))

(declare-fun b!623901 () Bool)

(assert (=> b!623901 (= e!378755 e!378756)))

(declare-fun c!114720 () Bool)

(assert (=> b!623901 (= c!114720 ((_ is Leaf!3223) (left!5088 (right!5418 (c!114443 v!6361)))))))

(assert (= (and d!218447 c!114719) b!623900))

(assert (= (and d!218447 (not c!114719)) b!623901))

(assert (= (and b!623901 c!114720) b!623902))

(assert (= (and b!623901 (not c!114720)) b!623903))

(assert (=> b!623902 m!892257))

(declare-fun m!892365 () Bool)

(assert (=> b!623903 m!892365))

(declare-fun m!892367 () Bool)

(assert (=> b!623903 m!892367))

(assert (=> b!623903 m!892365))

(assert (=> b!623903 m!892367))

(declare-fun m!892369 () Bool)

(assert (=> b!623903 m!892369))

(assert (=> b!623102 d!218447))

(declare-fun b!623904 () Bool)

(declare-fun e!378757 () List!6426)

(assert (=> b!623904 (= e!378757 Nil!6416)))

(declare-fun b!623906 () Bool)

(declare-fun e!378758 () List!6426)

(assert (=> b!623906 (= e!378758 (list!2694 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623907 () Bool)

(assert (=> b!623907 (= e!378758 (++!1770 (list!2689 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))) (list!2689 (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(declare-fun d!218449 () Bool)

(declare-fun c!114721 () Bool)

(assert (=> d!218449 (= c!114721 ((_ is Empty!2060) (right!5418 (right!5418 (c!114443 v!6361)))))))

(assert (=> d!218449 (= (list!2689 (right!5418 (right!5418 (c!114443 v!6361)))) e!378757)))

(declare-fun b!623905 () Bool)

(assert (=> b!623905 (= e!378757 e!378758)))

(declare-fun c!114722 () Bool)

(assert (=> b!623905 (= c!114722 ((_ is Leaf!3223) (right!5418 (right!5418 (c!114443 v!6361)))))))

(assert (= (and d!218449 c!114721) b!623904))

(assert (= (and d!218449 (not c!114721)) b!623905))

(assert (= (and b!623905 c!114722) b!623906))

(assert (= (and b!623905 (not c!114722)) b!623907))

(assert (=> b!623906 m!892291))

(declare-fun m!892371 () Bool)

(assert (=> b!623907 m!892371))

(declare-fun m!892373 () Bool)

(assert (=> b!623907 m!892373))

(assert (=> b!623907 m!892371))

(assert (=> b!623907 m!892373))

(declare-fun m!892375 () Bool)

(assert (=> b!623907 m!892375))

(assert (=> b!623102 d!218449))

(declare-fun c!114723 () Bool)

(declare-fun d!218451 () Bool)

(assert (=> d!218451 (= c!114723 ((_ is Nil!6415) (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun e!378759 () (InoxSet C!4212))

(assert (=> d!218451 (= (content!1153 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))) e!378759)))

(declare-fun b!623908 () Bool)

(assert (=> b!623908 (= e!378759 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623909 () Bool)

(assert (=> b!623909 (= e!378759 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))) true) (content!1153 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))))))))

(assert (= (and d!218451 c!114723) b!623908))

(assert (= (and d!218451 (not c!114723)) b!623909))

(declare-fun m!892377 () Bool)

(assert (=> b!623909 m!892377))

(declare-fun m!892379 () Bool)

(assert (=> b!623909 m!892379))

(assert (=> b!623143 d!218451))

(declare-fun d!218453 () Bool)

(declare-fun lt!266476 () Int)

(assert (=> d!218453 (>= lt!266476 0)))

(declare-fun e!378760 () Int)

(assert (=> d!218453 (= lt!266476 e!378760)))

(declare-fun c!114724 () Bool)

(assert (=> d!218453 (= c!114724 ((_ is Nil!6416) (list!2694 (xs!4697 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218453 (= (size!5003 (list!2694 (xs!4697 (right!5418 (c!114443 v!6361))))) lt!266476)))

(declare-fun b!623910 () Bool)

(assert (=> b!623910 (= e!378760 0)))

(declare-fun b!623911 () Bool)

(assert (=> b!623911 (= e!378760 (+ 1 (size!5003 (t!81933 (list!2694 (xs!4697 (right!5418 (c!114443 v!6361))))))))))

(assert (= (and d!218453 c!114724) b!623910))

(assert (= (and d!218453 (not c!114724)) b!623911))

(declare-fun m!892381 () Bool)

(assert (=> b!623911 m!892381))

(assert (=> b!623108 d!218453))

(declare-fun d!218455 () Bool)

(assert (=> d!218455 (= (list!2694 (xs!4697 (right!5418 (c!114443 v!6361)))) (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))

(assert (=> b!623108 d!218455))

(assert (=> b!623061 d!218405))

(assert (=> b!623061 d!218407))

(declare-fun b!623912 () Bool)

(declare-fun e!378762 () Bool)

(assert (=> b!623912 (= e!378762 (inv!17 (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))

(declare-fun b!623914 () Bool)

(declare-fun e!378763 () Bool)

(assert (=> b!623914 (= e!378763 (inv!16 (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))

(declare-fun b!623915 () Bool)

(declare-fun e!378761 () Bool)

(assert (=> b!623915 (= e!378761 (inv!15 (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))

(declare-fun b!623916 () Bool)

(assert (=> b!623916 (= e!378763 e!378762)))

(declare-fun c!114726 () Bool)

(assert (=> b!623916 (= c!114726 ((_ is IntegerValue!4000) (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))

(declare-fun d!218457 () Bool)

(declare-fun c!114725 () Bool)

(assert (=> d!218457 (= c!114725 ((_ is IntegerValue!3999) (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))

(assert (=> d!218457 (= (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))) e!378763)))

(declare-fun b!623913 () Bool)

(declare-fun res!271229 () Bool)

(assert (=> b!623913 (=> res!271229 e!378761)))

(assert (=> b!623913 (= res!271229 (not ((_ is IntegerValue!4001) (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))))

(assert (=> b!623913 (= e!378762 e!378761)))

(assert (= (and d!218457 c!114725) b!623914))

(assert (= (and d!218457 (not c!114725)) b!623916))

(assert (= (and b!623916 c!114726) b!623912))

(assert (= (and b!623916 (not c!114726)) b!623913))

(assert (= (and b!623913 (not res!271229)) b!623915))

(declare-fun m!892383 () Bool)

(assert (=> b!623912 m!892383))

(declare-fun m!892385 () Bool)

(assert (=> b!623914 m!892385))

(declare-fun m!892387 () Bool)

(assert (=> b!623915 m!892387))

(assert (=> b!623314 d!218457))

(declare-fun d!218459 () Bool)

(declare-fun res!271230 () Bool)

(declare-fun e!378764 () Bool)

(assert (=> d!218459 (=> (not res!271230) (not e!378764))))

(assert (=> d!218459 (= res!271230 (= (csize!4350 (left!5088 (left!5088 (c!114443 v!6361)))) (+ (size!5004 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))) (size!5004 (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))))))))

(assert (=> d!218459 (= (inv!8150 (left!5088 (left!5088 (c!114443 v!6361)))) e!378764)))

(declare-fun b!623917 () Bool)

(declare-fun res!271231 () Bool)

(assert (=> b!623917 (=> (not res!271231) (not e!378764))))

(assert (=> b!623917 (= res!271231 (and (not (= (left!5088 (left!5088 (left!5088 (c!114443 v!6361)))) Empty!2060)) (not (= (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))) Empty!2060))))))

(declare-fun b!623918 () Bool)

(declare-fun res!271232 () Bool)

(assert (=> b!623918 (=> (not res!271232) (not e!378764))))

(assert (=> b!623918 (= res!271232 (= (cheight!2271 (left!5088 (left!5088 (c!114443 v!6361)))) (+ (max!0 (height!258 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))) (height!258 (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))) 1)))))

(declare-fun b!623919 () Bool)

(assert (=> b!623919 (= e!378764 (<= 0 (cheight!2271 (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (= (and d!218459 res!271230) b!623917))

(assert (= (and b!623917 res!271231) b!623918))

(assert (= (and b!623918 res!271232) b!623919))

(declare-fun m!892389 () Bool)

(assert (=> d!218459 m!892389))

(declare-fun m!892391 () Bool)

(assert (=> d!218459 m!892391))

(assert (=> b!623918 m!892079))

(assert (=> b!623918 m!892081))

(assert (=> b!623918 m!892079))

(assert (=> b!623918 m!892081))

(declare-fun m!892393 () Bool)

(assert (=> b!623918 m!892393))

(assert (=> b!623150 d!218459))

(declare-fun bs!72183 () Bool)

(declare-fun d!218461 () Bool)

(assert (= bs!72183 (and d!218461 d!217903)))

(declare-fun lambda!16348 () Int)

(assert (=> bs!72183 (= (= (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toValue!2234 (transformation!1309 (rule!2105 separatorToken!136)))) (= lambda!16348 lambda!16340))))

(assert (=> d!218461 true))

(assert (=> d!218461 (< (dynLambda!3626 order!4959 (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (dynLambda!3627 order!4961 lambda!16348))))

(assert (=> d!218461 (= (equivClasses!506 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (Forall2!242 lambda!16348))))

(declare-fun bs!72184 () Bool)

(assert (= bs!72184 d!218461))

(declare-fun m!892395 () Bool)

(assert (=> bs!72184 m!892395))

(assert (=> b!623072 d!218461))

(declare-fun lt!266477 () List!6425)

(declare-fun e!378766 () Bool)

(declare-fun b!623923 () Bool)

(assert (=> b!623923 (= e!378766 (or (not (= (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) Nil!6415)) (= lt!266477 (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(declare-fun b!623921 () Bool)

(declare-fun e!378765 () List!6425)

(assert (=> b!623921 (= e!378765 (Cons!6415 (h!11816 (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (++!1768 (t!81932 (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(declare-fun b!623922 () Bool)

(declare-fun res!271233 () Bool)

(assert (=> b!623922 (=> (not res!271233) (not e!378766))))

(assert (=> b!623922 (= res!271233 (= (size!5005 lt!266477) (+ (size!5005 (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (size!5005 (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))))

(declare-fun b!623920 () Bool)

(assert (=> b!623920 (= e!378765 (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun d!218463 () Bool)

(assert (=> d!218463 e!378766))

(declare-fun res!271234 () Bool)

(assert (=> d!218463 (=> (not res!271234) (not e!378766))))

(assert (=> d!218463 (= res!271234 (= (content!1153 lt!266477) ((_ map or) (content!1153 (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (content!1153 (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))))

(assert (=> d!218463 (= lt!266477 e!378765)))

(declare-fun c!114727 () Bool)

(assert (=> d!218463 (= c!114727 ((_ is Nil!6415) (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (=> d!218463 (= (++!1768 (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) lt!266477)))

(assert (= (and d!218463 c!114727) b!623920))

(assert (= (and d!218463 (not c!114727)) b!623921))

(assert (= (and d!218463 res!271234) b!623922))

(assert (= (and b!623922 res!271233) b!623923))

(assert (=> b!623921 m!891599))

(declare-fun m!892397 () Bool)

(assert (=> b!623921 m!892397))

(declare-fun m!892399 () Bool)

(assert (=> b!623922 m!892399))

(assert (=> b!623922 m!891597))

(declare-fun m!892401 () Bool)

(assert (=> b!623922 m!892401))

(assert (=> b!623922 m!891599))

(declare-fun m!892403 () Bool)

(assert (=> b!623922 m!892403))

(declare-fun m!892405 () Bool)

(assert (=> d!218463 m!892405))

(assert (=> d!218463 m!891597))

(declare-fun m!892407 () Bool)

(assert (=> d!218463 m!892407))

(assert (=> d!218463 m!891599))

(declare-fun m!892409 () Bool)

(assert (=> d!218463 m!892409))

(assert (=> b!623262 d!218463))

(declare-fun b!623927 () Bool)

(declare-fun e!378768 () List!6425)

(assert (=> b!623927 (= e!378768 (++!1768 (list!2688 (left!5087 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (list!2688 (right!5417 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(declare-fun b!623926 () Bool)

(assert (=> b!623926 (= e!378768 (list!2696 (xs!4696 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!623925 () Bool)

(declare-fun e!378767 () List!6425)

(assert (=> b!623925 (= e!378767 e!378768)))

(declare-fun c!114729 () Bool)

(assert (=> b!623925 (= c!114729 ((_ is Leaf!3222) (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun d!218465 () Bool)

(declare-fun c!114728 () Bool)

(assert (=> d!218465 (= c!114728 ((_ is Empty!2059) (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(assert (=> d!218465 (= (list!2688 (left!5087 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) e!378767)))

(declare-fun b!623924 () Bool)

(assert (=> b!623924 (= e!378767 Nil!6415)))

(assert (= (and d!218465 c!114728) b!623924))

(assert (= (and d!218465 (not c!114728)) b!623925))

(assert (= (and b!623925 c!114729) b!623926))

(assert (= (and b!623925 (not c!114729)) b!623927))

(declare-fun m!892411 () Bool)

(assert (=> b!623927 m!892411))

(declare-fun m!892413 () Bool)

(assert (=> b!623927 m!892413))

(assert (=> b!623927 m!892411))

(assert (=> b!623927 m!892413))

(declare-fun m!892415 () Bool)

(assert (=> b!623927 m!892415))

(declare-fun m!892417 () Bool)

(assert (=> b!623926 m!892417))

(assert (=> b!623262 d!218465))

(declare-fun b!623931 () Bool)

(declare-fun e!378770 () List!6425)

(assert (=> b!623931 (= e!378770 (++!1768 (list!2688 (left!5087 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (list!2688 (right!5417 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(declare-fun b!623930 () Bool)

(assert (=> b!623930 (= e!378770 (list!2696 (xs!4696 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!623929 () Bool)

(declare-fun e!378769 () List!6425)

(assert (=> b!623929 (= e!378769 e!378770)))

(declare-fun c!114731 () Bool)

(assert (=> b!623929 (= c!114731 ((_ is Leaf!3222) (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(declare-fun d!218467 () Bool)

(declare-fun c!114730 () Bool)

(assert (=> d!218467 (= c!114730 ((_ is Empty!2059) (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(assert (=> d!218467 (= (list!2688 (right!5417 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) e!378769)))

(declare-fun b!623928 () Bool)

(assert (=> b!623928 (= e!378769 Nil!6415)))

(assert (= (and d!218467 c!114730) b!623928))

(assert (= (and d!218467 (not c!114730)) b!623929))

(assert (= (and b!623929 c!114731) b!623930))

(assert (= (and b!623929 (not c!114731)) b!623931))

(declare-fun m!892419 () Bool)

(assert (=> b!623931 m!892419))

(declare-fun m!892421 () Bool)

(assert (=> b!623931 m!892421))

(assert (=> b!623931 m!892419))

(assert (=> b!623931 m!892421))

(declare-fun m!892423 () Bool)

(assert (=> b!623931 m!892423))

(declare-fun m!892425 () Bool)

(assert (=> b!623930 m!892425))

(assert (=> b!623262 d!218467))

(declare-fun d!218469 () Bool)

(declare-fun lt!266478 () Int)

(assert (=> d!218469 (>= lt!266478 0)))

(declare-fun e!378771 () Int)

(assert (=> d!218469 (= lt!266478 e!378771)))

(declare-fun c!114732 () Bool)

(assert (=> d!218469 (= c!114732 ((_ is Nil!6415) lt!266387))))

(assert (=> d!218469 (= (size!5005 lt!266387) lt!266478)))

(declare-fun b!623932 () Bool)

(assert (=> b!623932 (= e!378771 0)))

(declare-fun b!623933 () Bool)

(assert (=> b!623933 (= e!378771 (+ 1 (size!5005 (t!81932 lt!266387))))))

(assert (= (and d!218469 c!114732) b!623932))

(assert (= (and d!218469 (not c!114732)) b!623933))

(declare-fun m!892427 () Bool)

(assert (=> b!623933 m!892427))

(assert (=> b!623075 d!218469))

(declare-fun d!218471 () Bool)

(declare-fun lt!266479 () Int)

(assert (=> d!218471 (>= lt!266479 0)))

(declare-fun e!378772 () Int)

(assert (=> d!218471 (= lt!266479 e!378772)))

(declare-fun c!114733 () Bool)

(assert (=> d!218471 (= c!114733 ((_ is Nil!6415) (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!218471 (= (size!5005 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))) lt!266479)))

(declare-fun b!623934 () Bool)

(assert (=> b!623934 (= e!378772 0)))

(declare-fun b!623935 () Bool)

(assert (=> b!623935 (= e!378772 (+ 1 (size!5005 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))))))))

(assert (= (and d!218471 c!114733) b!623934))

(assert (= (and d!218471 (not c!114733)) b!623935))

(declare-fun m!892429 () Bool)

(assert (=> b!623935 m!892429))

(assert (=> b!623075 d!218471))

(assert (=> b!623075 d!218055))

(declare-fun d!218473 () Bool)

(assert (=> d!218473 true))

(assert (=> d!218473 true))

(declare-fun res!271237 () Bool)

(assert (=> d!218473 (= (choose!4543 lambda!16337) res!271237)))

(assert (=> d!218041 d!218473))

(declare-fun b!623939 () Bool)

(declare-fun e!378774 () List!6425)

(assert (=> b!623939 (= e!378774 (++!1768 (list!2688 (left!5087 (c!114441 lt!266363))) (list!2688 (right!5417 (c!114441 lt!266363)))))))

(declare-fun b!623938 () Bool)

(assert (=> b!623938 (= e!378774 (list!2696 (xs!4696 (c!114441 lt!266363))))))

(declare-fun b!623937 () Bool)

(declare-fun e!378773 () List!6425)

(assert (=> b!623937 (= e!378773 e!378774)))

(declare-fun c!114735 () Bool)

(assert (=> b!623937 (= c!114735 ((_ is Leaf!3222) (c!114441 lt!266363)))))

(declare-fun d!218475 () Bool)

(declare-fun c!114734 () Bool)

(assert (=> d!218475 (= c!114734 ((_ is Empty!2059) (c!114441 lt!266363)))))

(assert (=> d!218475 (= (list!2688 (c!114441 lt!266363)) e!378773)))

(declare-fun b!623936 () Bool)

(assert (=> b!623936 (= e!378773 Nil!6415)))

(assert (= (and d!218475 c!114734) b!623936))

(assert (= (and d!218475 (not c!114734)) b!623937))

(assert (= (and b!623937 c!114735) b!623938))

(assert (= (and b!623937 (not c!114735)) b!623939))

(declare-fun m!892431 () Bool)

(assert (=> b!623939 m!892431))

(declare-fun m!892433 () Bool)

(assert (=> b!623939 m!892433))

(assert (=> b!623939 m!892431))

(assert (=> b!623939 m!892433))

(declare-fun m!892435 () Bool)

(assert (=> b!623939 m!892435))

(declare-fun m!892437 () Bool)

(assert (=> b!623938 m!892437))

(assert (=> d!218101 d!218475))

(declare-fun d!218477 () Bool)

(declare-fun c!114736 () Bool)

(assert (=> d!218477 (= c!114736 ((_ is Nil!6416) (t!81933 (list!2689 (c!114443 v!6361)))))))

(declare-fun e!378775 () (InoxSet Token!2342))

(assert (=> d!218477 (= (content!1152 (t!81933 (list!2689 (c!114443 v!6361)))) e!378775)))

(declare-fun b!623940 () Bool)

(assert (=> b!623940 (= e!378775 ((as const (Array Token!2342 Bool)) false))))

(declare-fun b!623941 () Bool)

(assert (=> b!623941 (= e!378775 ((_ map or) (store ((as const (Array Token!2342 Bool)) false) (h!11817 (t!81933 (list!2689 (c!114443 v!6361)))) true) (content!1152 (t!81933 (t!81933 (list!2689 (c!114443 v!6361)))))))))

(assert (= (and d!218477 c!114736) b!623940))

(assert (= (and d!218477 (not c!114736)) b!623941))

(declare-fun m!892439 () Bool)

(assert (=> b!623941 m!892439))

(declare-fun m!892441 () Bool)

(assert (=> b!623941 m!892441))

(assert (=> b!623255 d!218477))

(declare-fun d!218479 () Bool)

(declare-fun lt!266480 () Int)

(assert (=> d!218479 (>= lt!266480 0)))

(declare-fun e!378776 () Int)

(assert (=> d!218479 (= lt!266480 e!378776)))

(declare-fun c!114737 () Bool)

(assert (=> d!218479 (= c!114737 ((_ is Nil!6416) (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218479 (= (size!5003 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))) lt!266480)))

(declare-fun b!623942 () Bool)

(assert (=> b!623942 (= e!378776 0)))

(declare-fun b!623943 () Bool)

(assert (=> b!623943 (= e!378776 (+ 1 (size!5003 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))

(assert (= (and d!218479 c!114737) b!623942))

(assert (= (and d!218479 (not c!114737)) b!623943))

(declare-fun m!892443 () Bool)

(assert (=> b!623943 m!892443))

(assert (=> d!218043 d!218479))

(assert (=> b!623180 d!218471))

(declare-fun d!218481 () Bool)

(declare-fun lt!266481 () Int)

(assert (=> d!218481 (>= lt!266481 0)))

(declare-fun e!378777 () Int)

(assert (=> d!218481 (= lt!266481 e!378777)))

(declare-fun c!114738 () Bool)

(assert (=> d!218481 (= c!114738 ((_ is Nil!6416) (list!2689 (left!5088 (c!114443 v!6361)))))))

(assert (=> d!218481 (= (size!5003 (list!2689 (left!5088 (c!114443 v!6361)))) lt!266481)))

(declare-fun b!623944 () Bool)

(assert (=> b!623944 (= e!378777 0)))

(declare-fun b!623945 () Bool)

(assert (=> b!623945 (= e!378777 (+ 1 (size!5003 (t!81933 (list!2689 (left!5088 (c!114443 v!6361)))))))))

(assert (= (and d!218481 c!114738) b!623944))

(assert (= (and d!218481 (not c!114738)) b!623945))

(assert (=> b!623945 m!892129))

(assert (=> d!217971 d!218481))

(assert (=> d!217971 d!217987))

(declare-fun d!218483 () Bool)

(declare-fun c!114739 () Bool)

(assert (=> d!218483 (= c!114739 ((_ is Nil!6415) (t!81932 lt!266359)))))

(declare-fun e!378778 () (InoxSet C!4212))

(assert (=> d!218483 (= (content!1153 (t!81932 lt!266359)) e!378778)))

(declare-fun b!623946 () Bool)

(assert (=> b!623946 (= e!378778 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!623947 () Bool)

(assert (=> b!623947 (= e!378778 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (t!81932 lt!266359)) true) (content!1153 (t!81932 (t!81932 lt!266359)))))))

(assert (= (and d!218483 c!114739) b!623946))

(assert (= (and d!218483 (not c!114739)) b!623947))

(declare-fun m!892445 () Bool)

(assert (=> b!623947 m!892445))

(declare-fun m!892447 () Bool)

(assert (=> b!623947 m!892447))

(assert (=> b!623067 d!218483))

(declare-fun b!623948 () Bool)

(declare-fun e!378779 () Bool)

(assert (=> b!623948 (= e!378779 (not (isEmpty!4574 (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(declare-fun d!218485 () Bool)

(declare-fun res!271240 () Bool)

(declare-fun e!378780 () Bool)

(assert (=> d!218485 (=> res!271240 e!378780)))

(assert (=> d!218485 (= res!271240 (not ((_ is Node!2060) (right!5418 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218485 (= (isBalanced!542 (right!5418 (right!5418 (c!114443 v!6361)))) e!378780)))

(declare-fun b!623949 () Bool)

(declare-fun res!271239 () Bool)

(assert (=> b!623949 (=> (not res!271239) (not e!378779))))

(assert (=> b!623949 (= res!271239 (not (isEmpty!4574 (left!5088 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(declare-fun b!623950 () Bool)

(declare-fun res!271243 () Bool)

(assert (=> b!623950 (=> (not res!271243) (not e!378779))))

(assert (=> b!623950 (= res!271243 (<= (- (height!258 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))) (height!258 (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))) 1))))

(declare-fun b!623951 () Bool)

(declare-fun res!271238 () Bool)

(assert (=> b!623951 (=> (not res!271238) (not e!378779))))

(assert (=> b!623951 (= res!271238 (isBalanced!542 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623952 () Bool)

(declare-fun res!271242 () Bool)

(assert (=> b!623952 (=> (not res!271242) (not e!378779))))

(assert (=> b!623952 (= res!271242 (isBalanced!542 (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623953 () Bool)

(assert (=> b!623953 (= e!378780 e!378779)))

(declare-fun res!271241 () Bool)

(assert (=> b!623953 (=> (not res!271241) (not e!378779))))

(assert (=> b!623953 (= res!271241 (<= (- 1) (- (height!258 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))) (height!258 (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))))))))

(assert (= (and d!218485 (not res!271240)) b!623953))

(assert (= (and b!623953 res!271241) b!623950))

(assert (= (and b!623950 res!271243) b!623951))

(assert (= (and b!623951 res!271238) b!623952))

(assert (= (and b!623952 res!271242) b!623949))

(assert (= (and b!623949 res!271239) b!623948))

(declare-fun m!892449 () Bool)

(assert (=> b!623951 m!892449))

(declare-fun m!892451 () Bool)

(assert (=> b!623952 m!892451))

(declare-fun m!892453 () Bool)

(assert (=> b!623949 m!892453))

(declare-fun m!892455 () Bool)

(assert (=> b!623953 m!892455))

(declare-fun m!892457 () Bool)

(assert (=> b!623953 m!892457))

(assert (=> b!623950 m!892455))

(assert (=> b!623950 m!892457))

(declare-fun m!892459 () Bool)

(assert (=> b!623948 m!892459))

(assert (=> b!623160 d!218485))

(declare-fun d!218487 () Bool)

(declare-fun res!271244 () Bool)

(declare-fun e!378781 () Bool)

(assert (=> d!218487 (=> (not res!271244) (not e!378781))))

(assert (=> d!218487 (= res!271244 (= (csize!4350 (right!5418 (left!5088 (c!114443 v!6361)))) (+ (size!5004 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))) (size!5004 (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))))))))

(assert (=> d!218487 (= (inv!8150 (right!5418 (left!5088 (c!114443 v!6361)))) e!378781)))

(declare-fun b!623954 () Bool)

(declare-fun res!271245 () Bool)

(assert (=> b!623954 (=> (not res!271245) (not e!378781))))

(assert (=> b!623954 (= res!271245 (and (not (= (left!5088 (right!5418 (left!5088 (c!114443 v!6361)))) Empty!2060)) (not (= (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))) Empty!2060))))))

(declare-fun b!623955 () Bool)

(declare-fun res!271246 () Bool)

(assert (=> b!623955 (=> (not res!271246) (not e!378781))))

(assert (=> b!623955 (= res!271246 (= (cheight!2271 (right!5418 (left!5088 (c!114443 v!6361)))) (+ (max!0 (height!258 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))) (height!258 (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))) 1)))))

(declare-fun b!623956 () Bool)

(assert (=> b!623956 (= e!378781 (<= 0 (cheight!2271 (right!5418 (left!5088 (c!114443 v!6361))))))))

(assert (= (and d!218487 res!271244) b!623954))

(assert (= (and b!623954 res!271245) b!623955))

(assert (= (and b!623955 res!271246) b!623956))

(declare-fun m!892461 () Bool)

(assert (=> d!218487 m!892461))

(declare-fun m!892463 () Bool)

(assert (=> d!218487 m!892463))

(declare-fun m!892465 () Bool)

(assert (=> b!623955 m!892465))

(declare-fun m!892467 () Bool)

(assert (=> b!623955 m!892467))

(assert (=> b!623955 m!892465))

(assert (=> b!623955 m!892467))

(declare-fun m!892469 () Bool)

(assert (=> b!623955 m!892469))

(assert (=> b!623153 d!218487))

(assert (=> d!217983 d!218367))

(assert (=> d!217983 d!218369))

(declare-fun b!623960 () Bool)

(declare-fun e!378783 () Bool)

(declare-fun lt!266482 () List!6425)

(assert (=> b!623960 (= e!378783 (or (not (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136) Nil!6415)) (= lt!266482 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))))))))

(declare-fun b!623958 () Bool)

(declare-fun e!378782 () List!6425)

(assert (=> b!623958 (= e!378782 (Cons!6415 (h!11816 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))))) (++!1768 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136))))))

(declare-fun b!623959 () Bool)

(declare-fun res!271247 () Bool)

(assert (=> b!623959 (=> (not res!271247) (not e!378783))))

(assert (=> b!623959 (= res!271247 (= (size!5005 lt!266482) (+ (size!5005 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))))) (size!5005 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))))

(declare-fun b!623957 () Bool)

(assert (=> b!623957 (= e!378782 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136))))

(declare-fun d!218489 () Bool)

(assert (=> d!218489 e!378783))

(declare-fun res!271248 () Bool)

(assert (=> d!218489 (=> (not res!271248) (not e!378783))))

(assert (=> d!218489 (= res!271248 (= (content!1153 lt!266482) ((_ map or) (content!1153 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))))) (content!1153 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)))))))

(assert (=> d!218489 (= lt!266482 e!378782)))

(declare-fun c!114740 () Bool)

(assert (=> d!218489 (= c!114740 ((_ is Nil!6415) (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!218489 (= (++!1768 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))) (list!2687 (charsOf!897 separatorToken!136)))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (dropList!260 v!6361 from!852))) separatorToken!136)) lt!266482)))

(assert (= (and d!218489 c!114740) b!623957))

(assert (= (and d!218489 (not c!114740)) b!623958))

(assert (= (and d!218489 res!271248) b!623959))

(assert (= (and b!623959 res!271247) b!623960))

(assert (=> b!623958 m!891089))

(declare-fun m!892471 () Bool)

(assert (=> b!623958 m!892471))

(declare-fun m!892473 () Bool)

(assert (=> b!623959 m!892473))

(assert (=> b!623959 m!892301))

(assert (=> b!623959 m!891089))

(assert (=> b!623959 m!891569))

(declare-fun m!892475 () Bool)

(assert (=> d!218489 m!892475))

(assert (=> d!218489 m!892237))

(assert (=> d!218489 m!891089))

(assert (=> d!218489 m!891575))

(assert (=> b!623237 d!218489))

(assert (=> b!623234 d!217891))

(assert (=> b!623234 d!217893))

(declare-fun d!218491 () Bool)

(assert (=> d!218491 (= (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2688 (c!114441 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))))))

(declare-fun bs!72185 () Bool)

(assert (= bs!72185 d!218491))

(declare-fun m!892477 () Bool)

(assert (=> bs!72185 m!892477))

(assert (=> b!623234 d!218491))

(declare-fun lt!266483 () List!6425)

(declare-fun e!378785 () Bool)

(declare-fun b!623964 () Bool)

(assert (=> b!623964 (= e!378785 (or (not (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))) separatorToken!136) Nil!6415)) (= lt!266483 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun e!378784 () List!6425)

(declare-fun b!623962 () Bool)

(assert (=> b!623962 (= e!378784 (Cons!6415 (h!11816 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136)))) (++!1768 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136)))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))) separatorToken!136))))))

(declare-fun b!623963 () Bool)

(declare-fun res!271249 () Bool)

(assert (=> b!623963 (=> (not res!271249) (not e!378785))))

(assert (=> b!623963 (= res!271249 (= (size!5005 lt!266483) (+ (size!5005 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136)))) (size!5005 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))) separatorToken!136)))))))

(declare-fun b!623961 () Bool)

(assert (=> b!623961 (= e!378784 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))) separatorToken!136))))

(declare-fun d!218493 () Bool)

(assert (=> d!218493 e!378785))

(declare-fun res!271250 () Bool)

(assert (=> d!218493 (=> (not res!271250) (not e!378785))))

(assert (=> d!218493 (= res!271250 (= (content!1153 lt!266483) ((_ map or) (content!1153 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136)))) (content!1153 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))) separatorToken!136)))))))

(assert (=> d!218493 (= lt!266483 e!378784)))

(declare-fun c!114741 () Bool)

(assert (=> d!218493 (= c!114741 ((_ is Nil!6415) (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(assert (=> d!218493 (= (++!1768 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))) separatorToken!136)) lt!266483)))

(assert (= (and d!218493 c!114741) b!623961))

(assert (= (and d!218493 (not c!114741)) b!623962))

(assert (= (and d!218493 res!271250) b!623963))

(assert (= (and b!623963 res!271249) b!623964))

(assert (=> b!623962 m!891559))

(declare-fun m!892479 () Bool)

(assert (=> b!623962 m!892479))

(declare-fun m!892481 () Bool)

(assert (=> b!623963 m!892481))

(assert (=> b!623963 m!891557))

(declare-fun m!892483 () Bool)

(assert (=> b!623963 m!892483))

(assert (=> b!623963 m!891559))

(declare-fun m!892485 () Bool)

(assert (=> b!623963 m!892485))

(declare-fun m!892487 () Bool)

(assert (=> d!218493 m!892487))

(assert (=> d!218493 m!891557))

(declare-fun m!892489 () Bool)

(assert (=> d!218493 m!892489))

(assert (=> d!218493 m!891559))

(declare-fun m!892491 () Bool)

(assert (=> d!218493 m!892491))

(assert (=> b!623234 d!218493))

(declare-fun d!218495 () Bool)

(declare-fun lt!266484 () BalanceConc!4126)

(assert (=> d!218495 (= (list!2687 lt!266484) (originalCharacters!1342 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))))

(assert (=> d!218495 (= lt!266484 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) (value!42170 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))))

(assert (=> d!218495 (= (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))) lt!266484)))

(declare-fun b_lambda!24645 () Bool)

(assert (=> (not b_lambda!24645) (not d!218495)))

(declare-fun t!82052 () Bool)

(declare-fun tb!54123 () Bool)

(assert (=> (and b!623316 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82052) tb!54123))

(declare-fun b!623965 () Bool)

(declare-fun tp!193970 () Bool)

(declare-fun e!378786 () Bool)

(assert (=> b!623965 (= e!378786 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) (value!42170 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) tp!193970))))

(declare-fun result!61134 () Bool)

(assert (=> tb!54123 (= result!61134 (and (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) (value!42170 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) e!378786))))

(assert (= tb!54123 b!623965))

(declare-fun m!892493 () Bool)

(assert (=> b!623965 m!892493))

(declare-fun m!892495 () Bool)

(assert (=> tb!54123 m!892495))

(assert (=> d!218495 t!82052))

(declare-fun b_and!61979 () Bool)

(assert (= b_and!61975 (and (=> t!82052 result!61134) b_and!61979)))

(declare-fun t!82054 () Bool)

(declare-fun tb!54125 () Bool)

(assert (=> (and b!623322 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82054) tb!54125))

(declare-fun result!61136 () Bool)

(assert (= result!61136 result!61134))

(assert (=> d!218495 t!82054))

(declare-fun b_and!61981 () Bool)

(assert (= b_and!61969 (and (=> t!82054 result!61136) b_and!61981)))

(declare-fun t!82056 () Bool)

(declare-fun tb!54127 () Bool)

(assert (=> (and b!622896 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82056) tb!54127))

(declare-fun result!61138 () Bool)

(assert (= result!61138 result!61134))

(assert (=> d!218495 t!82056))

(declare-fun b_and!61983 () Bool)

(assert (= b_and!61971 (and (=> t!82056 result!61138) b_and!61983)))

(declare-fun t!82058 () Bool)

(declare-fun tb!54129 () Bool)

(assert (=> (and b!622524 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82058) tb!54129))

(declare-fun result!61140 () Bool)

(assert (= result!61140 result!61134))

(assert (=> d!218495 t!82058))

(declare-fun b_and!61985 () Bool)

(assert (= b_and!61973 (and (=> t!82058 result!61140) b_and!61985)))

(declare-fun t!82060 () Bool)

(declare-fun tb!54131 () Bool)

(assert (=> (and b!623404 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82060) tb!54131))

(declare-fun result!61142 () Bool)

(assert (= result!61142 result!61134))

(assert (=> d!218495 t!82060))

(declare-fun b_and!61987 () Bool)

(assert (= b_and!61977 (and (=> t!82060 result!61142) b_and!61987)))

(declare-fun m!892497 () Bool)

(assert (=> d!218495 m!892497))

(declare-fun m!892499 () Bool)

(assert (=> d!218495 m!892499))

(assert (=> b!623234 d!218495))

(declare-fun d!218497 () Bool)

(declare-fun c!114742 () Bool)

(assert (=> d!218497 (= c!114742 ((_ is Cons!6416) (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))))

(declare-fun e!378787 () List!6425)

(assert (=> d!218497 (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))) separatorToken!136) e!378787)))

(declare-fun b!623966 () Bool)

(assert (=> b!623966 (= e!378787 (++!1768 (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) (list!2687 (charsOf!897 separatorToken!136))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (t!81933 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))) separatorToken!136)))))

(declare-fun b!623967 () Bool)

(assert (=> b!623967 (= e!378787 Nil!6415)))

(assert (= (and d!218497 c!114742) b!623966))

(assert (= (and d!218497 (not c!114742)) b!623967))

(declare-fun m!892501 () Bool)

(assert (=> b!623966 m!892501))

(declare-fun m!892503 () Bool)

(assert (=> b!623966 m!892503))

(declare-fun m!892505 () Bool)

(assert (=> b!623966 m!892505))

(declare-fun m!892507 () Bool)

(assert (=> b!623966 m!892507))

(declare-fun m!892509 () Bool)

(assert (=> b!623966 m!892509))

(assert (=> b!623966 m!890893))

(assert (=> b!623966 m!892503))

(assert (=> b!623966 m!890895))

(assert (=> b!623966 m!892505))

(assert (=> b!623966 m!892501))

(assert (=> b!623966 m!892507))

(assert (=> b!623966 m!890893))

(assert (=> b!623966 m!890895))

(assert (=> b!623234 d!218497))

(declare-fun lt!266485 () List!6425)

(declare-fun e!378789 () Bool)

(declare-fun b!623971 () Bool)

(assert (=> b!623971 (= e!378789 (or (not (= (list!2687 (charsOf!897 separatorToken!136)) Nil!6415)) (= lt!266485 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))))))

(declare-fun e!378788 () List!6425)

(declare-fun b!623969 () Bool)

(assert (=> b!623969 (= e!378788 (Cons!6415 (h!11816 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) (++!1768 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun b!623970 () Bool)

(declare-fun res!271251 () Bool)

(assert (=> b!623970 (=> (not res!271251) (not e!378789))))

(assert (=> b!623970 (= res!271251 (= (size!5005 lt!266485) (+ (size!5005 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) (size!5005 (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623968 () Bool)

(assert (=> b!623968 (= e!378788 (list!2687 (charsOf!897 separatorToken!136)))))

(declare-fun d!218499 () Bool)

(assert (=> d!218499 e!378789))

(declare-fun res!271252 () Bool)

(assert (=> d!218499 (=> (not res!271252) (not e!378789))))

(assert (=> d!218499 (= res!271252 (= (content!1153 lt!266485) ((_ map or) (content!1153 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))) (content!1153 (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!218499 (= lt!266485 e!378788)))

(declare-fun c!114743 () Bool)

(assert (=> d!218499 (= c!114743 ((_ is Nil!6415) (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852))))))))))

(assert (=> d!218499 (= (++!1768 (list!2687 (charsOf!897 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136))) lt!266485)))

(assert (= (and d!218499 c!114743) b!623968))

(assert (= (and d!218499 (not c!114743)) b!623969))

(assert (= (and d!218499 res!271252) b!623970))

(assert (= (and b!623970 res!271251) b!623971))

(assert (=> b!623969 m!890895))

(declare-fun m!892511 () Bool)

(assert (=> b!623969 m!892511))

(declare-fun m!892513 () Bool)

(assert (=> b!623970 m!892513))

(assert (=> b!623970 m!891555))

(declare-fun m!892515 () Bool)

(assert (=> b!623970 m!892515))

(assert (=> b!623970 m!890895))

(assert (=> b!623970 m!891069))

(declare-fun m!892517 () Bool)

(assert (=> d!218499 m!892517))

(assert (=> d!218499 m!891555))

(declare-fun m!892519 () Bool)

(assert (=> d!218499 m!892519))

(assert (=> d!218499 m!890895))

(assert (=> d!218499 m!891075))

(assert (=> b!623234 d!218499))

(assert (=> b!622868 d!218007))

(assert (=> b!622868 d!218009))

(declare-fun b!623975 () Bool)

(declare-fun lt!266486 () List!6425)

(declare-fun e!378791 () Bool)

(assert (=> b!623975 (= e!378791 (or (not (= (list!2687 (charsOf!897 separatorToken!136)) Nil!6415)) (= lt!266486 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(declare-fun b!623973 () Bool)

(declare-fun e!378790 () List!6425)

(assert (=> b!623973 (= e!378790 (Cons!6415 (h!11816 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (++!1768 (t!81932 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun b!623974 () Bool)

(declare-fun res!271253 () Bool)

(assert (=> b!623974 (=> (not res!271253) (not e!378791))))

(assert (=> b!623974 (= res!271253 (= (size!5005 lt!266486) (+ (size!5005 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (size!5005 (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623972 () Bool)

(assert (=> b!623972 (= e!378790 (list!2687 (charsOf!897 separatorToken!136)))))

(declare-fun d!218501 () Bool)

(assert (=> d!218501 e!378791))

(declare-fun res!271254 () Bool)

(assert (=> d!218501 (=> (not res!271254) (not e!378791))))

(assert (=> d!218501 (= res!271254 (= (content!1153 lt!266486) ((_ map or) (content!1153 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))) (content!1153 (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!218501 (= lt!266486 e!378790)))

(declare-fun c!114744 () Bool)

(assert (=> d!218501 (= c!114744 ((_ is Nil!6415) (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (=> d!218501 (= (++!1768 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136))) lt!266486)))

(assert (= (and d!218501 c!114744) b!623972))

(assert (= (and d!218501 (not c!114744)) b!623973))

(assert (= (and d!218501 res!271254) b!623974))

(assert (= (and b!623974 res!271253) b!623975))

(assert (=> b!623973 m!890895))

(declare-fun m!892521 () Bool)

(assert (=> b!623973 m!892521))

(declare-fun m!892523 () Bool)

(assert (=> b!623974 m!892523))

(assert (=> b!623974 m!892089))

(assert (=> b!623974 m!890895))

(assert (=> b!623974 m!891069))

(declare-fun m!892525 () Bool)

(assert (=> d!218501 m!892525))

(assert (=> d!218501 m!892057))

(assert (=> d!218501 m!890895))

(assert (=> d!218501 m!891075))

(assert (=> b!623111 d!218501))

(declare-fun d!218503 () Bool)

(declare-fun lt!266487 () Bool)

(assert (=> d!218503 (= lt!266487 (isEmpty!4575 (list!2689 (right!5418 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218503 (= lt!266487 (= (size!5004 (right!5418 (right!5418 (c!114443 v!6361)))) 0))))

(assert (=> d!218503 (= (isEmpty!4574 (right!5418 (right!5418 (c!114443 v!6361)))) lt!266487)))

(declare-fun bs!72186 () Bool)

(assert (= bs!72186 d!218503))

(assert (=> bs!72186 m!891357))

(assert (=> bs!72186 m!891357))

(declare-fun m!892527 () Bool)

(assert (=> bs!72186 m!892527))

(assert (=> bs!72186 m!891363))

(assert (=> b!623156 d!218503))

(declare-fun d!218505 () Bool)

(declare-fun res!271255 () Bool)

(declare-fun e!378792 () Bool)

(assert (=> d!218505 (=> (not res!271255) (not e!378792))))

(assert (=> d!218505 (= res!271255 (<= (size!5005 (list!2696 (xs!4696 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) 512))))

(assert (=> d!218505 (= (inv!8161 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378792)))

(declare-fun b!623976 () Bool)

(declare-fun res!271256 () Bool)

(assert (=> b!623976 (=> (not res!271256) (not e!378792))))

(assert (=> b!623976 (= res!271256 (= (csize!4349 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (size!5005 (list!2696 (xs!4696 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(declare-fun b!623977 () Bool)

(assert (=> b!623977 (= e!378792 (and (> (csize!4349 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 0) (<= (csize!4349 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 512)))))

(assert (= (and d!218505 res!271255) b!623976))

(assert (= (and b!623976 res!271256) b!623977))

(assert (=> d!218505 m!892215))

(assert (=> d!218505 m!892215))

(declare-fun m!892529 () Bool)

(assert (=> d!218505 m!892529))

(assert (=> b!623976 m!892215))

(assert (=> b!623976 m!892215))

(assert (=> b!623976 m!892529))

(assert (=> b!623119 d!218505))

(assert (=> d!217995 d!218453))

(assert (=> d!217995 d!218455))

(declare-fun d!218507 () Bool)

(declare-fun lt!266488 () Bool)

(assert (=> d!218507 (= lt!266488 (isEmpty!4575 (list!2689 (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218507 (= lt!266488 (= (size!5004 (left!5088 (left!5088 (c!114443 v!6361)))) 0))))

(assert (=> d!218507 (= (isEmpty!4574 (left!5088 (left!5088 (c!114443 v!6361)))) lt!266488)))

(declare-fun bs!72187 () Bool)

(assert (= bs!72187 d!218507))

(assert (=> bs!72187 m!891347))

(assert (=> bs!72187 m!891347))

(declare-fun m!892531 () Bool)

(assert (=> bs!72187 m!892531))

(assert (=> bs!72187 m!891589))

(assert (=> b!623057 d!218507))

(declare-fun d!218509 () Bool)

(assert (=> d!218509 (= (inv!8158 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))) (<= (size!5003 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361)))))) 2147483647))))

(declare-fun bs!72188 () Bool)

(assert (= bs!72188 d!218509))

(declare-fun m!892533 () Bool)

(assert (=> bs!72188 m!892533))

(assert (=> b!623310 d!218509))

(declare-fun b!623981 () Bool)

(declare-fun lt!266489 () List!6425)

(declare-fun e!378794 () Bool)

(assert (=> b!623981 (= e!378794 (or (not (= (list!2687 (charsOf!897 separatorToken!136)) Nil!6415)) (= lt!266489 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))))))

(declare-fun e!378793 () List!6425)

(declare-fun b!623979 () Bool)

(assert (=> b!623979 (= e!378793 (Cons!6415 (h!11816 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) (++!1768 (t!81932 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun b!623980 () Bool)

(declare-fun res!271257 () Bool)

(assert (=> b!623980 (=> (not res!271257) (not e!378794))))

(assert (=> b!623980 (= res!271257 (= (size!5005 lt!266489) (+ (size!5005 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) (size!5005 (list!2687 (charsOf!897 separatorToken!136))))))))

(declare-fun b!623978 () Bool)

(assert (=> b!623978 (= e!378793 (list!2687 (charsOf!897 separatorToken!136)))))

(declare-fun d!218511 () Bool)

(assert (=> d!218511 e!378794))

(declare-fun res!271258 () Bool)

(assert (=> d!218511 (=> (not res!271258) (not e!378794))))

(assert (=> d!218511 (= res!271258 (= (content!1153 lt!266489) ((_ map or) (content!1153 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) (content!1153 (list!2687 (charsOf!897 separatorToken!136))))))))

(assert (=> d!218511 (= lt!266489 e!378793)))

(declare-fun c!114745 () Bool)

(assert (=> d!218511 (= c!114745 ((_ is Nil!6415) (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))))))

(assert (=> d!218511 (= (++!1768 (t!81932 (list!2687 (charsOf!897 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (list!2687 (charsOf!897 separatorToken!136))) lt!266489)))

(assert (= (and d!218511 c!114745) b!623978))

(assert (= (and d!218511 (not c!114745)) b!623979))

(assert (= (and d!218511 res!271258) b!623980))

(assert (= (and b!623980 res!271257) b!623981))

(assert (=> b!623979 m!890895))

(declare-fun m!892535 () Bool)

(assert (=> b!623979 m!892535))

(declare-fun m!892537 () Bool)

(assert (=> b!623980 m!892537))

(assert (=> b!623980 m!892327))

(assert (=> b!623980 m!890895))

(assert (=> b!623980 m!891069))

(declare-fun m!892539 () Bool)

(assert (=> d!218511 m!892539))

(assert (=> d!218511 m!892275))

(assert (=> d!218511 m!890895))

(assert (=> d!218511 m!891075))

(assert (=> b!623231 d!218511))

(declare-fun d!218513 () Bool)

(assert (=> d!218513 (= (inv!8162 (xs!4696 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (<= (size!5005 (innerList!2117 (xs!4696 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) 2147483647))))

(declare-fun bs!72189 () Bool)

(assert (= bs!72189 d!218513))

(declare-fun m!892541 () Bool)

(assert (=> bs!72189 m!892541))

(assert (=> b!623386 d!218513))

(declare-fun d!218515 () Bool)

(declare-fun lt!266490 () Int)

(assert (=> d!218515 (>= lt!266490 0)))

(declare-fun e!378795 () Int)

(assert (=> d!218515 (= lt!266490 e!378795)))

(declare-fun c!114746 () Bool)

(assert (=> d!218515 (= c!114746 ((_ is Nil!6416) (t!81933 (list!2689 (c!114443 v!6361)))))))

(assert (=> d!218515 (= (size!5003 (t!81933 (list!2689 (c!114443 v!6361)))) lt!266490)))

(declare-fun b!623982 () Bool)

(assert (=> b!623982 (= e!378795 0)))

(declare-fun b!623983 () Bool)

(assert (=> b!623983 (= e!378795 (+ 1 (size!5003 (t!81933 (t!81933 (list!2689 (c!114443 v!6361)))))))))

(assert (= (and d!218515 c!114746) b!623982))

(assert (= (and d!218515 (not c!114746)) b!623983))

(declare-fun m!892543 () Bool)

(assert (=> b!623983 m!892543))

(assert (=> bm!41136 d!218515))

(declare-fun d!218517 () Bool)

(declare-fun lt!266491 () Bool)

(assert (=> d!218517 (= lt!266491 (isEmpty!4572 (list!2688 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218517 (= lt!266491 (= (size!5008 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 0))))

(assert (=> d!218517 (= (isEmpty!4576 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) lt!266491)))

(declare-fun bs!72190 () Bool)

(assert (= bs!72190 d!218517))

(assert (=> bs!72190 m!891477))

(assert (=> bs!72190 m!891477))

(declare-fun m!892545 () Bool)

(assert (=> bs!72190 m!892545))

(assert (=> bs!72190 m!891415))

(assert (=> b!623200 d!218517))

(declare-fun d!218519 () Bool)

(assert (=> d!218519 (= (inv!8162 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) (<= (size!5005 (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) 2147483647))))

(declare-fun bs!72191 () Bool)

(assert (= bs!72191 d!218519))

(declare-fun m!892547 () Bool)

(assert (=> bs!72191 m!892547))

(assert (=> b!623332 d!218519))

(assert (=> b!623107 d!218515))

(declare-fun d!218521 () Bool)

(assert (=> d!218521 (= (list!2687 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (list!2688 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))))

(declare-fun bs!72192 () Bool)

(assert (= bs!72192 d!218521))

(declare-fun m!892549 () Bool)

(assert (=> bs!72192 m!892549))

(assert (=> b!623126 d!218521))

(assert (=> b!622865 d!218033))

(assert (=> b!622865 d!218035))

(declare-fun d!218523 () Bool)

(declare-fun c!114747 () Bool)

(assert (=> d!218523 (= c!114747 ((_ is Node!2060) (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun e!378796 () Bool)

(assert (=> d!218523 (= (inv!8146 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))) e!378796)))

(declare-fun b!623984 () Bool)

(assert (=> b!623984 (= e!378796 (inv!8150 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623985 () Bool)

(declare-fun e!378797 () Bool)

(assert (=> b!623985 (= e!378796 e!378797)))

(declare-fun res!271259 () Bool)

(assert (=> b!623985 (= res!271259 (not ((_ is Leaf!3223) (left!5088 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(assert (=> b!623985 (=> res!271259 e!378797)))

(declare-fun b!623986 () Bool)

(assert (=> b!623986 (= e!378797 (inv!8151 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))))))

(assert (= (and d!218523 c!114747) b!623984))

(assert (= (and d!218523 (not c!114747)) b!623985))

(assert (= (and b!623985 (not res!271259)) b!623986))

(declare-fun m!892551 () Bool)

(assert (=> b!623984 m!892551))

(declare-fun m!892553 () Bool)

(assert (=> b!623986 m!892553))

(assert (=> b!623398 d!218523))

(declare-fun d!218525 () Bool)

(declare-fun c!114748 () Bool)

(assert (=> d!218525 (= c!114748 ((_ is Node!2060) (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun e!378798 () Bool)

(assert (=> d!218525 (= (inv!8146 (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))) e!378798)))

(declare-fun b!623987 () Bool)

(assert (=> b!623987 (= e!378798 (inv!8150 (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!623988 () Bool)

(declare-fun e!378799 () Bool)

(assert (=> b!623988 (= e!378798 e!378799)))

(declare-fun res!271260 () Bool)

(assert (=> b!623988 (= res!271260 (not ((_ is Leaf!3223) (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))))))

(assert (=> b!623988 (=> res!271260 e!378799)))

(declare-fun b!623989 () Bool)

(assert (=> b!623989 (= e!378799 (inv!8151 (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))))))

(assert (= (and d!218525 c!114748) b!623987))

(assert (= (and d!218525 (not c!114748)) b!623988))

(assert (= (and b!623988 (not res!271260)) b!623989))

(declare-fun m!892555 () Bool)

(assert (=> b!623987 m!892555))

(declare-fun m!892557 () Bool)

(assert (=> b!623989 m!892557))

(assert (=> b!623398 d!218525))

(declare-fun d!218527 () Bool)

(declare-fun res!271261 () Bool)

(declare-fun e!378800 () Bool)

(assert (=> d!218527 (=> (not res!271261) (not e!378800))))

(assert (=> d!218527 (= res!271261 (= (csize!4348 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) (+ (size!5008 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) (size!5008 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))))

(assert (=> d!218527 (= (inv!8160 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) e!378800)))

(declare-fun b!623990 () Bool)

(declare-fun res!271262 () Bool)

(assert (=> b!623990 (=> (not res!271262) (not e!378800))))

(assert (=> b!623990 (= res!271262 (and (not (= (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) Empty!2059)) (not (= (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) Empty!2059))))))

(declare-fun b!623991 () Bool)

(declare-fun res!271263 () Bool)

(assert (=> b!623991 (=> (not res!271263) (not e!378800))))

(assert (=> b!623991 (= res!271263 (= (cheight!2270 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))) (+ (max!0 (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) 1)))))

(declare-fun b!623992 () Bool)

(assert (=> b!623992 (= e!378800 (<= 0 (cheight!2270 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (= (and d!218527 res!271261) b!623990))

(assert (= (and b!623990 res!271262) b!623991))

(assert (= (and b!623991 res!271263) b!623992))

(declare-fun m!892559 () Bool)

(assert (=> d!218527 m!892559))

(declare-fun m!892561 () Bool)

(assert (=> d!218527 m!892561))

(assert (=> b!623991 m!892045))

(assert (=> b!623991 m!892047))

(assert (=> b!623991 m!892045))

(assert (=> b!623991 m!892047))

(declare-fun m!892563 () Bool)

(assert (=> b!623991 m!892563))

(assert (=> b!623183 d!218527))

(declare-fun d!218529 () Bool)

(assert (=> d!218529 (= (inv!8162 (xs!4696 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (<= (size!5005 (innerList!2117 (xs!4696 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) 2147483647))))

(declare-fun bs!72193 () Bool)

(assert (= bs!72193 d!218529))

(declare-fun m!892565 () Bool)

(assert (=> bs!72193 m!892565))

(assert (=> b!623389 d!218529))

(declare-fun b!623996 () Bool)

(declare-fun e!378802 () List!6425)

(assert (=> b!623996 (= e!378802 (++!1768 (list!2688 (left!5087 (c!114441 lt!266362))) (list!2688 (right!5417 (c!114441 lt!266362)))))))

(declare-fun b!623995 () Bool)

(assert (=> b!623995 (= e!378802 (list!2696 (xs!4696 (c!114441 lt!266362))))))

(declare-fun b!623994 () Bool)

(declare-fun e!378801 () List!6425)

(assert (=> b!623994 (= e!378801 e!378802)))

(declare-fun c!114750 () Bool)

(assert (=> b!623994 (= c!114750 ((_ is Leaf!3222) (c!114441 lt!266362)))))

(declare-fun d!218531 () Bool)

(declare-fun c!114749 () Bool)

(assert (=> d!218531 (= c!114749 ((_ is Empty!2059) (c!114441 lt!266362)))))

(assert (=> d!218531 (= (list!2688 (c!114441 lt!266362)) e!378801)))

(declare-fun b!623993 () Bool)

(assert (=> b!623993 (= e!378801 Nil!6415)))

(assert (= (and d!218531 c!114749) b!623993))

(assert (= (and d!218531 (not c!114749)) b!623994))

(assert (= (and b!623994 c!114750) b!623995))

(assert (= (and b!623994 (not c!114750)) b!623996))

(declare-fun m!892567 () Bool)

(assert (=> b!623996 m!892567))

(declare-fun m!892569 () Bool)

(assert (=> b!623996 m!892569))

(assert (=> b!623996 m!892567))

(assert (=> b!623996 m!892569))

(declare-fun m!892571 () Bool)

(assert (=> b!623996 m!892571))

(declare-fun m!892573 () Bool)

(assert (=> b!623995 m!892573))

(assert (=> d!218119 d!218531))

(assert (=> b!623101 d!218455))

(declare-fun b!623997 () Bool)

(declare-fun e!378803 () Bool)

(assert (=> b!623997 (= e!378803 (not (isEmpty!4574 (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(declare-fun d!218533 () Bool)

(declare-fun res!271266 () Bool)

(declare-fun e!378804 () Bool)

(assert (=> d!218533 (=> res!271266 e!378804)))

(assert (=> d!218533 (= res!271266 (not ((_ is Node!2060) (right!5418 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218533 (= (isBalanced!542 (right!5418 (left!5088 (c!114443 v!6361)))) e!378804)))

(declare-fun b!623998 () Bool)

(declare-fun res!271265 () Bool)

(assert (=> b!623998 (=> (not res!271265) (not e!378803))))

(assert (=> b!623998 (= res!271265 (not (isEmpty!4574 (left!5088 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(declare-fun b!623999 () Bool)

(declare-fun res!271269 () Bool)

(assert (=> b!623999 (=> (not res!271269) (not e!378803))))

(assert (=> b!623999 (= res!271269 (<= (- (height!258 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))) (height!258 (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))) 1))))

(declare-fun b!624000 () Bool)

(declare-fun res!271264 () Bool)

(assert (=> b!624000 (=> (not res!271264) (not e!378803))))

(assert (=> b!624000 (= res!271264 (isBalanced!542 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!624001 () Bool)

(declare-fun res!271268 () Bool)

(assert (=> b!624001 (=> (not res!271268) (not e!378803))))

(assert (=> b!624001 (= res!271268 (isBalanced!542 (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!624002 () Bool)

(assert (=> b!624002 (= e!378804 e!378803)))

(declare-fun res!271267 () Bool)

(assert (=> b!624002 (=> (not res!271267) (not e!378803))))

(assert (=> b!624002 (= res!271267 (<= (- 1) (- (height!258 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))) (height!258 (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))))))))

(assert (= (and d!218533 (not res!271266)) b!624002))

(assert (= (and b!624002 res!271267) b!623999))

(assert (= (and b!623999 res!271269) b!624000))

(assert (= (and b!624000 res!271264) b!624001))

(assert (= (and b!624001 res!271268) b!623998))

(assert (= (and b!623998 res!271265) b!623997))

(declare-fun m!892575 () Bool)

(assert (=> b!624000 m!892575))

(declare-fun m!892577 () Bool)

(assert (=> b!624001 m!892577))

(declare-fun m!892579 () Bool)

(assert (=> b!623998 m!892579))

(assert (=> b!624002 m!892465))

(assert (=> b!624002 m!892467))

(assert (=> b!623999 m!892465))

(assert (=> b!623999 m!892467))

(declare-fun m!892581 () Bool)

(assert (=> b!623997 m!892581))

(assert (=> b!623060 d!218533))

(declare-fun d!218535 () Bool)

(assert (=> d!218535 (= (list!2696 (xs!4696 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))) (innerList!2117 (xs!4696 (c!114441 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))))))))

(assert (=> b!623261 d!218535))

(declare-fun d!218537 () Bool)

(declare-fun res!271270 () Bool)

(declare-fun e!378805 () Bool)

(assert (=> d!218537 (=> (not res!271270) (not e!378805))))

(assert (=> d!218537 (= res!271270 (not (isEmpty!4572 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))))

(assert (=> d!218537 (= (inv!8148 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))) e!378805)))

(declare-fun b!624003 () Bool)

(declare-fun res!271271 () Bool)

(assert (=> b!624003 (=> (not res!271271) (not e!378805))))

(assert (=> b!624003 (= res!271271 (= (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))) (list!2687 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))))))

(declare-fun b!624004 () Bool)

(assert (=> b!624004 (= e!378805 (= (size!5000 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))) (size!5005 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))))

(assert (= (and d!218537 res!271270) b!624003))

(assert (= (and b!624003 res!271271) b!624004))

(declare-fun b_lambda!24647 () Bool)

(assert (=> (not b_lambda!24647) (not b!624003)))

(declare-fun t!82062 () Bool)

(declare-fun tb!54133 () Bool)

(assert (=> (and b!622524 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82062) tb!54133))

(declare-fun b!624005 () Bool)

(declare-fun e!378806 () Bool)

(declare-fun tp!193971 () Bool)

(assert (=> b!624005 (= e!378806 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) tp!193971))))

(declare-fun result!61144 () Bool)

(assert (=> tb!54133 (= result!61144 (and (inv!8157 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) e!378806))))

(assert (= tb!54133 b!624005))

(declare-fun m!892583 () Bool)

(assert (=> b!624005 m!892583))

(declare-fun m!892585 () Bool)

(assert (=> tb!54133 m!892585))

(assert (=> b!624003 t!82062))

(declare-fun b_and!61989 () Bool)

(assert (= b_and!61985 (and (=> t!82062 result!61144) b_and!61989)))

(declare-fun t!82064 () Bool)

(declare-fun tb!54135 () Bool)

(assert (=> (and b!623404 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82064) tb!54135))

(declare-fun result!61146 () Bool)

(assert (= result!61146 result!61144))

(assert (=> b!624003 t!82064))

(declare-fun b_and!61991 () Bool)

(assert (= b_and!61987 (and (=> t!82064 result!61146) b_and!61991)))

(declare-fun t!82066 () Bool)

(declare-fun tb!54137 () Bool)

(assert (=> (and b!623322 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82066) tb!54137))

(declare-fun result!61148 () Bool)

(assert (= result!61148 result!61144))

(assert (=> b!624003 t!82066))

(declare-fun b_and!61993 () Bool)

(assert (= b_and!61981 (and (=> t!82066 result!61148) b_and!61993)))

(declare-fun t!82068 () Bool)

(declare-fun tb!54139 () Bool)

(assert (=> (and b!623316 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82068) tb!54139))

(declare-fun result!61150 () Bool)

(assert (= result!61150 result!61144))

(assert (=> b!624003 t!82068))

(declare-fun b_and!61995 () Bool)

(assert (= b_and!61979 (and (=> t!82068 result!61150) b_and!61995)))

(declare-fun t!82070 () Bool)

(declare-fun tb!54141 () Bool)

(assert (=> (and b!622896 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82070) tb!54141))

(declare-fun result!61152 () Bool)

(assert (= result!61152 result!61144))

(assert (=> b!624003 t!82070))

(declare-fun b_and!61997 () Bool)

(assert (= b_and!61983 (and (=> t!82070 result!61152) b_and!61997)))

(declare-fun m!892587 () Bool)

(assert (=> d!218537 m!892587))

(declare-fun m!892589 () Bool)

(assert (=> b!624003 m!892589))

(assert (=> b!624003 m!892589))

(declare-fun m!892591 () Bool)

(assert (=> b!624003 m!892591))

(declare-fun m!892593 () Bool)

(assert (=> b!624004 m!892593))

(assert (=> b!623313 d!218537))

(declare-fun d!218539 () Bool)

(assert (=> d!218539 (= (max!0 (height!258 (left!5088 (left!5088 (c!114443 v!6361)))) (height!258 (right!5418 (left!5088 (c!114443 v!6361))))) (ite (< (height!258 (left!5088 (left!5088 (c!114443 v!6361)))) (height!258 (right!5418 (left!5088 (c!114443 v!6361))))) (height!258 (right!5418 (left!5088 (c!114443 v!6361)))) (height!258 (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (=> b!623257 d!218539))

(assert (=> b!623257 d!218405))

(assert (=> b!623257 d!218407))

(declare-fun d!218541 () Bool)

(assert (=> d!218541 (= (isEmpty!4572 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) ((_ is Nil!6415) (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))

(assert (=> d!218011 d!218541))

(declare-fun e!378808 () Bool)

(declare-fun b!624009 () Bool)

(declare-fun lt!266492 () List!6425)

(assert (=> b!624009 (= e!378808 (or (not (= (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136) Nil!6415)) (= lt!266492 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))))))))

(declare-fun e!378807 () List!6425)

(declare-fun b!624007 () Bool)

(assert (=> b!624007 (= e!378807 (Cons!6415 (h!11816 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))) (++!1768 (t!81932 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))))

(declare-fun b!624008 () Bool)

(declare-fun res!271272 () Bool)

(assert (=> b!624008 (=> (not res!271272) (not e!378808))))

(assert (=> b!624008 (= res!271272 (= (size!5005 lt!266492) (+ (size!5005 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))) (size!5005 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))))

(declare-fun b!624006 () Bool)

(assert (=> b!624006 (= e!378807 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))

(declare-fun d!218543 () Bool)

(assert (=> d!218543 e!378808))

(declare-fun res!271273 () Bool)

(assert (=> d!218543 (=> (not res!271273) (not e!378808))))

(assert (=> d!218543 (= res!271273 (= (content!1153 lt!266492) ((_ map or) (content!1153 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))) (content!1153 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)))))))

(assert (=> d!218543 (= lt!266492 e!378807)))

(declare-fun c!114751 () Bool)

(assert (=> d!218543 (= c!114751 ((_ is Nil!6415) (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136)))))))))

(assert (=> d!218543 (= (++!1768 (t!81932 (t!81932 (++!1768 (list!2687 (charsOf!897 (h!11817 (dropList!260 v!6361 from!852)))) (list!2687 (charsOf!897 separatorToken!136))))) (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136)) lt!266492)))

(assert (= (and d!218543 c!114751) b!624006))

(assert (= (and d!218543 (not c!114751)) b!624007))

(assert (= (and d!218543 res!271273) b!624008))

(assert (= (and b!624008 res!271272) b!624009))

(assert (=> b!624007 m!890889))

(declare-fun m!892595 () Bool)

(assert (=> b!624007 m!892595))

(declare-fun m!892597 () Bool)

(assert (=> b!624008 m!892597))

(assert (=> b!624008 m!892429))

(assert (=> b!624008 m!890889))

(assert (=> b!624008 m!891107))

(declare-fun m!892599 () Bool)

(assert (=> d!218543 m!892599))

(assert (=> d!218543 m!892379))

(assert (=> d!218543 m!890889))

(assert (=> d!218543 m!891113))

(assert (=> b!623074 d!218543))

(declare-fun d!218545 () Bool)

(assert (=> d!218545 true))

(assert (=> d!218545 true))

(declare-fun res!271276 () Bool)

(assert (=> d!218545 (= (choose!4544 lambda!16340) res!271276)))

(assert (=> d!218075 d!218545))

(declare-fun d!218547 () Bool)

(declare-fun res!271277 () Bool)

(declare-fun e!378809 () Bool)

(assert (=> d!218547 (=> (not res!271277) (not e!378809))))

(assert (=> d!218547 (= res!271277 (= (csize!4350 (left!5088 (right!5418 (c!114443 v!6361)))) (+ (size!5004 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))) (size!5004 (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))))))))

(assert (=> d!218547 (= (inv!8150 (left!5088 (right!5418 (c!114443 v!6361)))) e!378809)))

(declare-fun b!624010 () Bool)

(declare-fun res!271278 () Bool)

(assert (=> b!624010 (=> (not res!271278) (not e!378809))))

(assert (=> b!624010 (= res!271278 (and (not (= (left!5088 (left!5088 (right!5418 (c!114443 v!6361)))) Empty!2060)) (not (= (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))) Empty!2060))))))

(declare-fun b!624011 () Bool)

(declare-fun res!271279 () Bool)

(assert (=> b!624011 (=> (not res!271279) (not e!378809))))

(assert (=> b!624011 (= res!271279 (= (cheight!2271 (left!5088 (right!5418 (c!114443 v!6361)))) (+ (max!0 (height!258 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))) (height!258 (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))) 1)))))

(declare-fun b!624012 () Bool)

(assert (=> b!624012 (= e!378809 (<= 0 (cheight!2271 (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (= (and d!218547 res!271277) b!624010))

(assert (= (and b!624010 res!271278) b!624011))

(assert (= (and b!624011 res!271279) b!624012))

(declare-fun m!892601 () Bool)

(assert (=> d!218547 m!892601))

(declare-fun m!892603 () Bool)

(assert (=> d!218547 m!892603))

(declare-fun m!892605 () Bool)

(assert (=> b!624011 m!892605))

(declare-fun m!892607 () Bool)

(assert (=> b!624011 m!892607))

(assert (=> b!624011 m!892605))

(assert (=> b!624011 m!892607))

(declare-fun m!892609 () Bool)

(assert (=> b!624011 m!892609))

(assert (=> b!623120 d!218547))

(declare-fun d!218549 () Bool)

(declare-fun lt!266493 () Int)

(assert (=> d!218549 (>= lt!266493 0)))

(declare-fun e!378810 () Int)

(assert (=> d!218549 (= lt!266493 e!378810)))

(declare-fun c!114752 () Bool)

(assert (=> d!218549 (= c!114752 ((_ is Nil!6416) (t!81933 (list!2694 (xs!4697 (c!114443 v!6361))))))))

(assert (=> d!218549 (= (size!5003 (t!81933 (list!2694 (xs!4697 (c!114443 v!6361))))) lt!266493)))

(declare-fun b!624013 () Bool)

(assert (=> b!624013 (= e!378810 0)))

(declare-fun b!624014 () Bool)

(assert (=> b!624014 (= e!378810 (+ 1 (size!5003 (t!81933 (t!81933 (list!2694 (xs!4697 (c!114443 v!6361))))))))))

(assert (= (and d!218549 c!114752) b!624013))

(assert (= (and d!218549 (not c!114752)) b!624014))

(declare-fun m!892611 () Bool)

(assert (=> b!624014 m!892611))

(assert (=> b!623149 d!218549))

(declare-fun d!218551 () Bool)

(declare-fun res!271280 () Bool)

(declare-fun e!378811 () Bool)

(assert (=> d!218551 (=> (not res!271280) (not e!378811))))

(assert (=> d!218551 (= res!271280 (= (csize!4348 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (+ (size!5008 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (size!5008 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(assert (=> d!218551 (= (inv!8160 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378811)))

(declare-fun b!624015 () Bool)

(declare-fun res!271281 () Bool)

(assert (=> b!624015 (=> (not res!271281) (not e!378811))))

(assert (=> b!624015 (= res!271281 (and (not (= (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) Empty!2059)) (not (= (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) Empty!2059))))))

(declare-fun b!624016 () Bool)

(declare-fun res!271282 () Bool)

(assert (=> b!624016 (=> (not res!271282) (not e!378811))))

(assert (=> b!624016 (= res!271282 (= (cheight!2270 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (+ (max!0 (height!259 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (height!259 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) 1)))))

(declare-fun b!624017 () Bool)

(assert (=> b!624017 (= e!378811 (<= 0 (cheight!2270 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (= (and d!218551 res!271280) b!624015))

(assert (= (and b!624015 res!271281) b!624016))

(assert (= (and b!624016 res!271282) b!624017))

(declare-fun m!892613 () Bool)

(assert (=> d!218551 m!892613))

(declare-fun m!892615 () Bool)

(assert (=> d!218551 m!892615))

(declare-fun m!892617 () Bool)

(assert (=> b!624016 m!892617))

(declare-fun m!892619 () Bool)

(assert (=> b!624016 m!892619))

(assert (=> b!624016 m!892617))

(assert (=> b!624016 m!892619))

(declare-fun m!892621 () Bool)

(assert (=> b!624016 m!892621))

(assert (=> b!623117 d!218551))

(declare-fun d!218553 () Bool)

(assert (=> d!218553 (= (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (= (mod (str.len (value!42169 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) 2) 0))))

(assert (=> b!623321 d!218553))

(declare-fun d!218555 () Bool)

(declare-fun res!271283 () Bool)

(declare-fun e!378812 () Bool)

(assert (=> d!218555 (=> (not res!271283) (not e!378812))))

(assert (=> d!218555 (= res!271283 (semiInverseModEq!523 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))))

(assert (=> d!218555 (= (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) e!378812)))

(declare-fun b!624018 () Bool)

(assert (=> b!624018 (= e!378812 (equivClasses!506 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))))))

(assert (= (and d!218555 res!271283) b!624018))

(declare-fun m!892623 () Bool)

(assert (=> d!218555 m!892623))

(declare-fun m!892625 () Bool)

(assert (=> b!624018 m!892625))

(assert (=> b!623321 d!218555))

(assert (=> b!622805 d!218057))

(declare-fun d!218557 () Bool)

(declare-fun lt!266494 () Int)

(assert (=> d!218557 (>= lt!266494 0)))

(declare-fun e!378813 () Int)

(assert (=> d!218557 (= lt!266494 e!378813)))

(declare-fun c!114753 () Bool)

(assert (=> d!218557 (= c!114753 ((_ is Nil!6416) lt!266390))))

(assert (=> d!218557 (= (size!5003 lt!266390) lt!266494)))

(declare-fun b!624019 () Bool)

(assert (=> b!624019 (= e!378813 0)))

(declare-fun b!624020 () Bool)

(assert (=> b!624020 (= e!378813 (+ 1 (size!5003 (t!81933 lt!266390))))))

(assert (= (and d!218557 c!114753) b!624019))

(assert (= (and d!218557 (not c!114753)) b!624020))

(declare-fun m!892627 () Bool)

(assert (=> b!624020 m!892627))

(assert (=> b!623093 d!218557))

(assert (=> b!623093 d!218481))

(assert (=> b!623093 d!218397))

(declare-fun d!218559 () Bool)

(declare-fun e!378814 () Bool)

(assert (=> d!218559 e!378814))

(declare-fun res!271284 () Bool)

(assert (=> d!218559 (=> (not res!271284) (not e!378814))))

(declare-fun lt!266495 () List!6426)

(assert (=> d!218559 (= res!271284 (= (content!1152 lt!266495) ((_ map or) (content!1152 (list!2689 (left!5088 (left!5088 (c!114443 v!6361))))) (content!1152 (list!2689 (right!5418 (left!5088 (c!114443 v!6361))))))))))

(declare-fun e!378815 () List!6426)

(assert (=> d!218559 (= lt!266495 e!378815)))

(declare-fun c!114754 () Bool)

(assert (=> d!218559 (= c!114754 ((_ is Nil!6416) (list!2689 (left!5088 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218559 (= (++!1770 (list!2689 (left!5088 (left!5088 (c!114443 v!6361)))) (list!2689 (right!5418 (left!5088 (c!114443 v!6361))))) lt!266495)))

(declare-fun b!624024 () Bool)

(assert (=> b!624024 (= e!378814 (or (not (= (list!2689 (right!5418 (left!5088 (c!114443 v!6361)))) Nil!6416)) (= lt!266495 (list!2689 (left!5088 (left!5088 (c!114443 v!6361)))))))))

(declare-fun b!624022 () Bool)

(assert (=> b!624022 (= e!378815 (Cons!6416 (h!11817 (list!2689 (left!5088 (left!5088 (c!114443 v!6361))))) (++!1770 (t!81933 (list!2689 (left!5088 (left!5088 (c!114443 v!6361))))) (list!2689 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(declare-fun b!624021 () Bool)

(assert (=> b!624021 (= e!378815 (list!2689 (right!5418 (left!5088 (c!114443 v!6361)))))))

(declare-fun b!624023 () Bool)

(declare-fun res!271285 () Bool)

(assert (=> b!624023 (=> (not res!271285) (not e!378814))))

(assert (=> b!624023 (= res!271285 (= (size!5003 lt!266495) (+ (size!5003 (list!2689 (left!5088 (left!5088 (c!114443 v!6361))))) (size!5003 (list!2689 (right!5418 (left!5088 (c!114443 v!6361))))))))))

(assert (= (and d!218559 c!114754) b!624021))

(assert (= (and d!218559 (not c!114754)) b!624022))

(assert (= (and d!218559 res!271284) b!624023))

(assert (= (and b!624023 res!271285) b!624024))

(declare-fun m!892629 () Bool)

(assert (=> d!218559 m!892629))

(assert (=> d!218559 m!891347))

(declare-fun m!892631 () Bool)

(assert (=> d!218559 m!892631))

(assert (=> d!218559 m!891349))

(declare-fun m!892633 () Bool)

(assert (=> d!218559 m!892633))

(assert (=> b!624022 m!891349))

(declare-fun m!892635 () Bool)

(assert (=> b!624022 m!892635))

(declare-fun m!892637 () Bool)

(assert (=> b!624023 m!892637))

(assert (=> b!624023 m!891347))

(assert (=> b!624023 m!892337))

(assert (=> b!624023 m!891349))

(assert (=> b!624023 m!892339))

(assert (=> b!623098 d!218559))

(declare-fun b!624025 () Bool)

(declare-fun e!378816 () List!6426)

(assert (=> b!624025 (= e!378816 Nil!6416)))

(declare-fun b!624027 () Bool)

(declare-fun e!378817 () List!6426)

(assert (=> b!624027 (= e!378817 (list!2694 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!624028 () Bool)

(assert (=> b!624028 (= e!378817 (++!1770 (list!2689 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))) (list!2689 (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))))))

(declare-fun d!218561 () Bool)

(declare-fun c!114755 () Bool)

(assert (=> d!218561 (= c!114755 ((_ is Empty!2060) (left!5088 (left!5088 (c!114443 v!6361)))))))

(assert (=> d!218561 (= (list!2689 (left!5088 (left!5088 (c!114443 v!6361)))) e!378816)))

(declare-fun b!624026 () Bool)

(assert (=> b!624026 (= e!378816 e!378817)))

(declare-fun c!114756 () Bool)

(assert (=> b!624026 (= c!114756 ((_ is Leaf!3223) (left!5088 (left!5088 (c!114443 v!6361)))))))

(assert (= (and d!218561 c!114755) b!624025))

(assert (= (and d!218561 (not c!114755)) b!624026))

(assert (= (and b!624026 c!114756) b!624027))

(assert (= (and b!624026 (not c!114756)) b!624028))

(assert (=> b!624027 m!892039))

(declare-fun m!892639 () Bool)

(assert (=> b!624028 m!892639))

(declare-fun m!892641 () Bool)

(assert (=> b!624028 m!892641))

(assert (=> b!624028 m!892639))

(assert (=> b!624028 m!892641))

(declare-fun m!892643 () Bool)

(assert (=> b!624028 m!892643))

(assert (=> b!623098 d!218561))

(declare-fun b!624029 () Bool)

(declare-fun e!378818 () List!6426)

(assert (=> b!624029 (= e!378818 Nil!6416)))

(declare-fun b!624031 () Bool)

(declare-fun e!378819 () List!6426)

(assert (=> b!624031 (= e!378819 (list!2694 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!624032 () Bool)

(assert (=> b!624032 (= e!378819 (++!1770 (list!2689 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))) (list!2689 (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(declare-fun d!218563 () Bool)

(declare-fun c!114757 () Bool)

(assert (=> d!218563 (= c!114757 ((_ is Empty!2060) (right!5418 (left!5088 (c!114443 v!6361)))))))

(assert (=> d!218563 (= (list!2689 (right!5418 (left!5088 (c!114443 v!6361)))) e!378818)))

(declare-fun b!624030 () Bool)

(assert (=> b!624030 (= e!378818 e!378819)))

(declare-fun c!114758 () Bool)

(assert (=> b!624030 (= c!114758 ((_ is Leaf!3223) (right!5418 (left!5088 (c!114443 v!6361)))))))

(assert (= (and d!218563 c!114757) b!624029))

(assert (= (and d!218563 (not c!114757)) b!624030))

(assert (= (and b!624030 c!114758) b!624031))

(assert (= (and b!624030 (not c!114758)) b!624032))

(assert (=> b!624031 m!892221))

(declare-fun m!892645 () Bool)

(assert (=> b!624032 m!892645))

(declare-fun m!892647 () Bool)

(assert (=> b!624032 m!892647))

(assert (=> b!624032 m!892645))

(assert (=> b!624032 m!892647))

(declare-fun m!892649 () Bool)

(assert (=> b!624032 m!892649))

(assert (=> b!623098 d!218563))

(declare-fun b!624033 () Bool)

(declare-fun res!271291 () Bool)

(declare-fun e!378820 () Bool)

(assert (=> b!624033 (=> (not res!271291) (not e!378820))))

(assert (=> b!624033 (= res!271291 (isBalanced!544 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!624034 () Bool)

(declare-fun res!271288 () Bool)

(assert (=> b!624034 (=> (not res!271288) (not e!378820))))

(assert (=> b!624034 (= res!271288 (isBalanced!544 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun d!218565 () Bool)

(declare-fun res!271287 () Bool)

(declare-fun e!378821 () Bool)

(assert (=> d!218565 (=> res!271287 e!378821)))

(assert (=> d!218565 (= res!271287 (not ((_ is Node!2059) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> d!218565 (= (isBalanced!544 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378821)))

(declare-fun b!624035 () Bool)

(declare-fun res!271286 () Bool)

(assert (=> b!624035 (=> (not res!271286) (not e!378820))))

(assert (=> b!624035 (= res!271286 (not (isEmpty!4576 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!624036 () Bool)

(declare-fun res!271290 () Bool)

(assert (=> b!624036 (=> (not res!271290) (not e!378820))))

(assert (=> b!624036 (= res!271290 (<= (- (height!259 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (height!259 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) 1))))

(declare-fun b!624037 () Bool)

(assert (=> b!624037 (= e!378820 (not (isEmpty!4576 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(declare-fun b!624038 () Bool)

(assert (=> b!624038 (= e!378821 e!378820)))

(declare-fun res!271289 () Bool)

(assert (=> b!624038 (=> (not res!271289) (not e!378820))))

(assert (=> b!624038 (= res!271289 (<= (- 1) (- (height!259 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (height!259 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(assert (= (and d!218565 (not res!271287)) b!624038))

(assert (= (and b!624038 res!271289) b!624036))

(assert (= (and b!624036 res!271290) b!624033))

(assert (= (and b!624033 res!271291) b!624034))

(assert (= (and b!624034 res!271288) b!624035))

(assert (= (and b!624035 res!271286) b!624037))

(declare-fun m!892651 () Bool)

(assert (=> b!624035 m!892651))

(assert (=> b!624036 m!892617))

(assert (=> b!624036 m!892619))

(declare-fun m!892653 () Bool)

(assert (=> b!624033 m!892653))

(assert (=> b!624038 m!892617))

(assert (=> b!624038 m!892619))

(declare-fun m!892655 () Bool)

(assert (=> b!624037 m!892655))

(declare-fun m!892657 () Bool)

(assert (=> b!624034 m!892657))

(assert (=> b!623199 d!218565))

(declare-fun d!218567 () Bool)

(declare-fun c!114759 () Bool)

(assert (=> d!218567 (= c!114759 ((_ is Nil!6415) (t!81932 (list!2687 (charsOf!897 separatorToken!136)))))))

(declare-fun e!378822 () (InoxSet C!4212))

(assert (=> d!218567 (= (content!1153 (t!81932 (list!2687 (charsOf!897 separatorToken!136)))) e!378822)))

(declare-fun b!624039 () Bool)

(assert (=> b!624039 (= e!378822 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!624040 () Bool)

(assert (=> b!624040 (= e!378822 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (t!81932 (list!2687 (charsOf!897 separatorToken!136)))) true) (content!1153 (t!81932 (t!81932 (list!2687 (charsOf!897 separatorToken!136)))))))))

(assert (= (and d!218567 c!114759) b!624039))

(assert (= (and d!218567 (not c!114759)) b!624040))

(declare-fun m!892659 () Bool)

(assert (=> b!624040 m!892659))

(declare-fun m!892661 () Bool)

(assert (=> b!624040 m!892661))

(assert (=> b!623071 d!218567))

(declare-fun d!218569 () Bool)

(declare-fun res!271292 () Bool)

(declare-fun e!378823 () Bool)

(assert (=> d!218569 (=> (not res!271292) (not e!378823))))

(assert (=> d!218569 (= res!271292 (= (csize!4350 (right!5418 (right!5418 (c!114443 v!6361)))) (+ (size!5004 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))) (size!5004 (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))))))))

(assert (=> d!218569 (= (inv!8150 (right!5418 (right!5418 (c!114443 v!6361)))) e!378823)))

(declare-fun b!624041 () Bool)

(declare-fun res!271293 () Bool)

(assert (=> b!624041 (=> (not res!271293) (not e!378823))))

(assert (=> b!624041 (= res!271293 (and (not (= (left!5088 (right!5418 (right!5418 (c!114443 v!6361)))) Empty!2060)) (not (= (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))) Empty!2060))))))

(declare-fun b!624042 () Bool)

(declare-fun res!271294 () Bool)

(assert (=> b!624042 (=> (not res!271294) (not e!378823))))

(assert (=> b!624042 (= res!271294 (= (cheight!2271 (right!5418 (right!5418 (c!114443 v!6361)))) (+ (max!0 (height!258 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))) (height!258 (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))) 1)))))

(declare-fun b!624043 () Bool)

(assert (=> b!624043 (= e!378823 (<= 0 (cheight!2271 (right!5418 (right!5418 (c!114443 v!6361))))))))

(assert (= (and d!218569 res!271292) b!624041))

(assert (= (and b!624041 res!271293) b!624042))

(assert (= (and b!624042 res!271294) b!624043))

(declare-fun m!892663 () Bool)

(assert (=> d!218569 m!892663))

(declare-fun m!892665 () Bool)

(assert (=> d!218569 m!892665))

(assert (=> b!624042 m!892455))

(assert (=> b!624042 m!892457))

(assert (=> b!624042 m!892455))

(assert (=> b!624042 m!892457))

(declare-fun m!892667 () Bool)

(assert (=> b!624042 m!892667))

(assert (=> b!623123 d!218569))

(declare-fun d!218571 () Bool)

(declare-fun c!114760 () Bool)

(assert (=> d!218571 (= c!114760 ((_ is Nil!6415) lt!266387))))

(declare-fun e!378824 () (InoxSet C!4212))

(assert (=> d!218571 (= (content!1153 lt!266387) e!378824)))

(declare-fun b!624044 () Bool)

(assert (=> b!624044 (= e!378824 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!624045 () Bool)

(assert (=> b!624045 (= e!378824 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 lt!266387) true) (content!1153 (t!81932 lt!266387))))))

(assert (= (and d!218571 c!114760) b!624044))

(assert (= (and d!218571 (not c!114760)) b!624045))

(declare-fun m!892669 () Bool)

(assert (=> b!624045 m!892669))

(declare-fun m!892671 () Bool)

(assert (=> b!624045 m!892671))

(assert (=> d!217981 d!218571))

(assert (=> d!217981 d!218451))

(assert (=> d!217981 d!218025))

(declare-fun d!218573 () Bool)

(declare-fun c!114761 () Bool)

(assert (=> d!218573 (= c!114761 ((_ is Nil!6414) (t!81931 (text!9780 (value!42170 separatorToken!136)))))))

(declare-fun e!378825 () Int)

(assert (=> d!218573 (= (charsToBigInt!0 (t!81931 (text!9780 (value!42170 separatorToken!136))) (+ (* 0 10) (charToBigInt!0 (h!11815 (text!9780 (value!42170 separatorToken!136)))))) e!378825)))

(declare-fun b!624046 () Bool)

(assert (=> b!624046 (= e!378825 (+ (* 0 10) (charToBigInt!0 (h!11815 (text!9780 (value!42170 separatorToken!136))))))))

(declare-fun b!624047 () Bool)

(assert (=> b!624047 (= e!378825 (charsToBigInt!0 (t!81931 (t!81931 (text!9780 (value!42170 separatorToken!136)))) (+ (* (+ (* 0 10) (charToBigInt!0 (h!11815 (text!9780 (value!42170 separatorToken!136))))) 10) (charToBigInt!0 (h!11815 (t!81931 (text!9780 (value!42170 separatorToken!136))))))))))

(assert (= (and d!218573 c!114761) b!624046))

(assert (= (and d!218573 (not c!114761)) b!624047))

(declare-fun m!892673 () Bool)

(assert (=> b!624047 m!892673))

(declare-fun m!892675 () Bool)

(assert (=> b!624047 m!892675))

(assert (=> b!623224 d!218573))

(declare-fun d!218575 () Bool)

(assert (=> d!218575 (= (charToBigInt!0 (h!11815 (text!9780 (value!42170 separatorToken!136)))) (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0031) 1 (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0032) 2 (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0033) 3 (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0034) 4 (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0035) 5 (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0036) 6 (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0037) 7 (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0038) 8 (ite (= (h!11815 (text!9780 (value!42170 separatorToken!136))) #x0039) 9 0))))))))))))

(assert (=> b!623224 d!218575))

(declare-fun b!624048 () Bool)

(declare-fun e!378826 () Bool)

(assert (=> b!624048 (= e!378826 (not (isEmpty!4574 (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))))))

(declare-fun d!218577 () Bool)

(declare-fun res!271297 () Bool)

(declare-fun e!378827 () Bool)

(assert (=> d!218577 (=> res!271297 e!378827)))

(assert (=> d!218577 (= res!271297 (not ((_ is Node!2060) (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (=> d!218577 (= (isBalanced!542 (left!5088 (right!5418 (c!114443 v!6361)))) e!378827)))

(declare-fun b!624049 () Bool)

(declare-fun res!271296 () Bool)

(assert (=> b!624049 (=> (not res!271296) (not e!378826))))

(assert (=> b!624049 (= res!271296 (not (isEmpty!4574 (left!5088 (left!5088 (right!5418 (c!114443 v!6361)))))))))

(declare-fun b!624050 () Bool)

(declare-fun res!271300 () Bool)

(assert (=> b!624050 (=> (not res!271300) (not e!378826))))

(assert (=> b!624050 (= res!271300 (<= (- (height!258 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))) (height!258 (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))) 1))))

(declare-fun b!624051 () Bool)

(declare-fun res!271295 () Bool)

(assert (=> b!624051 (=> (not res!271295) (not e!378826))))

(assert (=> b!624051 (= res!271295 (isBalanced!542 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!624052 () Bool)

(declare-fun res!271299 () Bool)

(assert (=> b!624052 (=> (not res!271299) (not e!378826))))

(assert (=> b!624052 (= res!271299 (isBalanced!542 (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))))))

(declare-fun b!624053 () Bool)

(assert (=> b!624053 (= e!378827 e!378826)))

(declare-fun res!271298 () Bool)

(assert (=> b!624053 (=> (not res!271298) (not e!378826))))

(assert (=> b!624053 (= res!271298 (<= (- 1) (- (height!258 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))) (height!258 (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))))))))

(assert (= (and d!218577 (not res!271297)) b!624053))

(assert (= (and b!624053 res!271298) b!624050))

(assert (= (and b!624050 res!271300) b!624051))

(assert (= (and b!624051 res!271295) b!624052))

(assert (= (and b!624052 res!271299) b!624049))

(assert (= (and b!624049 res!271296) b!624048))

(declare-fun m!892677 () Bool)

(assert (=> b!624051 m!892677))

(declare-fun m!892679 () Bool)

(assert (=> b!624052 m!892679))

(declare-fun m!892681 () Bool)

(assert (=> b!624049 m!892681))

(assert (=> b!624053 m!892605))

(assert (=> b!624053 m!892607))

(assert (=> b!624050 m!892605))

(assert (=> b!624050 m!892607))

(declare-fun m!892683 () Bool)

(assert (=> b!624048 m!892683))

(assert (=> b!623159 d!218577))

(declare-fun d!218579 () Bool)

(declare-fun c!114763 () Bool)

(assert (=> d!218579 (= c!114763 ((_ is Nil!6415) (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))))

(declare-fun e!378828 () (InoxSet C!4212))

(assert (=> d!218579 (= (content!1153 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))) e!378828)))

(declare-fun b!624054 () Bool)

(assert (=> b!624054 (= e!378828 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!624055 () Bool)

(assert (=> b!624055 (= e!378828 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))) true) (content!1153 (t!81932 (t!81932 (printWithSeparatorTokenList!2 thiss!14007 (t!81933 (dropList!260 v!6361 from!852)) separatorToken!136))))))))

(assert (= (and d!218579 c!114763) b!624054))

(assert (= (and d!218579 (not c!114763)) b!624055))

(declare-fun m!892685 () Bool)

(assert (=> b!624055 m!892685))

(declare-fun m!892687 () Bool)

(assert (=> b!624055 m!892687))

(assert (=> b!623145 d!218579))

(declare-fun d!218581 () Bool)

(assert (=> d!218581 (= (inv!8141 (tag!1571 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (= (mod (str.len (value!42169 (tag!1571 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) 2) 0))))

(assert (=> b!623403 d!218581))

(declare-fun d!218583 () Bool)

(declare-fun res!271301 () Bool)

(declare-fun e!378829 () Bool)

(assert (=> d!218583 (=> (not res!271301) (not e!378829))))

(assert (=> d!218583 (= res!271301 (semiInverseModEq!523 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))))

(assert (=> d!218583 (= (inv!8149 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) e!378829)))

(declare-fun b!624056 () Bool)

(assert (=> b!624056 (= e!378829 (equivClasses!506 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toValue!2234 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))))

(assert (= (and d!218583 res!271301) b!624056))

(declare-fun m!892689 () Bool)

(assert (=> d!218583 m!892689))

(declare-fun m!892691 () Bool)

(assert (=> b!624056 m!892691))

(assert (=> b!623403 d!218583))

(declare-fun d!218585 () Bool)

(declare-fun c!114764 () Bool)

(assert (=> d!218585 (= c!114764 ((_ is Nil!6415) (t!81932 lt!266364)))))

(declare-fun e!378830 () (InoxSet C!4212))

(assert (=> d!218585 (= (content!1153 (t!81932 lt!266364)) e!378830)))

(declare-fun b!624057 () Bool)

(assert (=> b!624057 (= e!378830 ((as const (Array C!4212 Bool)) false))))

(declare-fun b!624058 () Bool)

(assert (=> b!624058 (= e!378830 ((_ map or) (store ((as const (Array C!4212 Bool)) false) (h!11816 (t!81932 lt!266364)) true) (content!1153 (t!81932 (t!81932 lt!266364)))))))

(assert (= (and d!218585 c!114764) b!624057))

(assert (= (and d!218585 (not c!114764)) b!624058))

(declare-fun m!892693 () Bool)

(assert (=> b!624058 m!892693))

(declare-fun m!892695 () Bool)

(assert (=> b!624058 m!892695))

(assert (=> b!623141 d!218585))

(declare-fun b!624059 () Bool)

(declare-fun e!378833 () Int)

(assert (=> b!624059 (= e!378833 0)))

(declare-fun b!624060 () Bool)

(declare-fun e!378834 () List!6426)

(assert (=> b!624060 (= e!378834 (t!81933 (t!81933 (list!2689 (c!114443 v!6361)))))))

(declare-fun b!624061 () Bool)

(declare-fun call!41142 () Int)

(assert (=> b!624061 (= e!378833 (- call!41142 (- (- from!852 1) 1)))))

(declare-fun bm!41137 () Bool)

(assert (=> bm!41137 (= call!41142 (size!5003 (t!81933 (t!81933 (list!2689 (c!114443 v!6361))))))))

(declare-fun d!218587 () Bool)

(declare-fun e!378832 () Bool)

(assert (=> d!218587 e!378832))

(declare-fun res!271302 () Bool)

(assert (=> d!218587 (=> (not res!271302) (not e!378832))))

(declare-fun lt!266496 () List!6426)

(assert (=> d!218587 (= res!271302 (= ((_ map implies) (content!1152 lt!266496) (content!1152 (t!81933 (t!81933 (list!2689 (c!114443 v!6361)))))) ((as const (InoxSet Token!2342)) true)))))

(declare-fun e!378831 () List!6426)

(assert (=> d!218587 (= lt!266496 e!378831)))

(declare-fun c!114765 () Bool)

(assert (=> d!218587 (= c!114765 ((_ is Nil!6416) (t!81933 (t!81933 (list!2689 (c!114443 v!6361))))))))

(assert (=> d!218587 (= (drop!337 (t!81933 (t!81933 (list!2689 (c!114443 v!6361)))) (- (- from!852 1) 1)) lt!266496)))

(declare-fun b!624062 () Bool)

(declare-fun e!378835 () Int)

(assert (=> b!624062 (= e!378835 e!378833)))

(declare-fun c!114767 () Bool)

(assert (=> b!624062 (= c!114767 (>= (- (- from!852 1) 1) call!41142))))

(declare-fun b!624063 () Bool)

(assert (=> b!624063 (= e!378832 (= (size!5003 lt!266496) e!378835))))

(declare-fun c!114766 () Bool)

(assert (=> b!624063 (= c!114766 (<= (- (- from!852 1) 1) 0))))

(declare-fun b!624064 () Bool)

(assert (=> b!624064 (= e!378834 (drop!337 (t!81933 (t!81933 (t!81933 (list!2689 (c!114443 v!6361))))) (- (- (- from!852 1) 1) 1)))))

(declare-fun b!624065 () Bool)

(assert (=> b!624065 (= e!378835 call!41142)))

(declare-fun b!624066 () Bool)

(assert (=> b!624066 (= e!378831 Nil!6416)))

(declare-fun b!624067 () Bool)

(assert (=> b!624067 (= e!378831 e!378834)))

(declare-fun c!114768 () Bool)

(assert (=> b!624067 (= c!114768 (<= (- (- from!852 1) 1) 0))))

(assert (= (and d!218587 c!114765) b!624066))

(assert (= (and d!218587 (not c!114765)) b!624067))

(assert (= (and b!624067 c!114768) b!624060))

(assert (= (and b!624067 (not c!114768)) b!624064))

(assert (= (and d!218587 res!271302) b!624063))

(assert (= (and b!624063 c!114766) b!624065))

(assert (= (and b!624063 (not c!114766)) b!624062))

(assert (= (and b!624062 c!114767) b!624059))

(assert (= (and b!624062 (not c!114767)) b!624061))

(assert (= (or b!624065 b!624062 b!624061) bm!41137))

(assert (=> bm!41137 m!892543))

(declare-fun m!892697 () Bool)

(assert (=> d!218587 m!892697))

(assert (=> d!218587 m!892441))

(declare-fun m!892699 () Bool)

(assert (=> b!624063 m!892699))

(declare-fun m!892701 () Bool)

(assert (=> b!624064 m!892701))

(assert (=> b!623276 d!218587))

(declare-fun d!218589 () Bool)

(assert (=> d!218589 (= (inv!17 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))) (= (charsToBigInt!1 (text!9779 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42162 (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))))

(declare-fun bs!72194 () Bool)

(assert (= bs!72194 d!218589))

(declare-fun m!892703 () Bool)

(assert (=> bs!72194 m!892703))

(assert (=> b!623166 d!218589))

(declare-fun d!218591 () Bool)

(assert (=> d!218591 (= (max!0 (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (ite (< (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) (height!259 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (height!259 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (=> b!623136 d!218591))

(assert (=> b!623136 d!218427))

(assert (=> b!623136 d!218429))

(declare-fun d!218593 () Bool)

(declare-fun lt!266497 () Int)

(assert (=> d!218593 (>= lt!266497 0)))

(declare-fun e!378836 () Int)

(assert (=> d!218593 (= lt!266497 e!378836)))

(declare-fun c!114769 () Bool)

(assert (=> d!218593 (= c!114769 ((_ is Nil!6415) (t!81932 lt!266364)))))

(assert (=> d!218593 (= (size!5005 (t!81932 lt!266364)) lt!266497)))

(declare-fun b!624068 () Bool)

(assert (=> b!624068 (= e!378836 0)))

(declare-fun b!624069 () Bool)

(assert (=> b!624069 (= e!378836 (+ 1 (size!5005 (t!81932 (t!81932 lt!266364)))))))

(assert (= (and d!218593 c!114769) b!624068))

(assert (= (and d!218593 (not c!114769)) b!624069))

(declare-fun m!892705 () Bool)

(assert (=> b!624069 m!892705))

(assert (=> b!623178 d!218593))

(declare-fun d!218595 () Bool)

(assert (=> d!218595 (= (max!0 (height!258 (left!5088 (right!5418 (c!114443 v!6361)))) (height!258 (right!5418 (right!5418 (c!114443 v!6361))))) (ite (< (height!258 (left!5088 (right!5418 (c!114443 v!6361)))) (height!258 (right!5418 (right!5418 (c!114443 v!6361))))) (height!258 (right!5418 (right!5418 (c!114443 v!6361)))) (height!258 (left!5088 (right!5418 (c!114443 v!6361))))))))

(assert (=> b!623104 d!218595))

(assert (=> b!623104 d!218307))

(assert (=> b!623104 d!218309))

(declare-fun d!218597 () Bool)

(declare-fun lt!266498 () Bool)

(assert (=> d!218597 (= lt!266498 (isEmpty!4575 (list!2689 (right!5418 (left!5088 (c!114443 v!6361))))))))

(assert (=> d!218597 (= lt!266498 (= (size!5004 (right!5418 (left!5088 (c!114443 v!6361)))) 0))))

(assert (=> d!218597 (= (isEmpty!4574 (right!5418 (left!5088 (c!114443 v!6361)))) lt!266498)))

(declare-fun bs!72195 () Bool)

(assert (= bs!72195 d!218597))

(assert (=> bs!72195 m!891349))

(assert (=> bs!72195 m!891349))

(declare-fun m!892707 () Bool)

(assert (=> bs!72195 m!892707))

(assert (=> bs!72195 m!891591))

(assert (=> b!623056 d!218597))

(declare-fun d!218599 () Bool)

(declare-fun c!114770 () Bool)

(assert (=> d!218599 (= c!114770 ((_ is Node!2060) (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun e!378837 () Bool)

(assert (=> d!218599 (= (inv!8146 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))) e!378837)))

(declare-fun b!624070 () Bool)

(assert (=> b!624070 (= e!378837 (inv!8150 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!624071 () Bool)

(declare-fun e!378838 () Bool)

(assert (=> b!624071 (= e!378837 e!378838)))

(declare-fun res!271303 () Bool)

(assert (=> b!624071 (= res!271303 (not ((_ is Leaf!3223) (left!5088 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(assert (=> b!624071 (=> res!271303 e!378838)))

(declare-fun b!624072 () Bool)

(assert (=> b!624072 (= e!378838 (inv!8151 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))))))

(assert (= (and d!218599 c!114770) b!624070))

(assert (= (and d!218599 (not c!114770)) b!624071))

(assert (= (and b!624071 (not res!271303)) b!624072))

(declare-fun m!892709 () Bool)

(assert (=> b!624070 m!892709))

(declare-fun m!892711 () Bool)

(assert (=> b!624072 m!892711))

(assert (=> b!623309 d!218599))

(declare-fun d!218601 () Bool)

(declare-fun c!114771 () Bool)

(assert (=> d!218601 (= c!114771 ((_ is Node!2060) (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun e!378839 () Bool)

(assert (=> d!218601 (= (inv!8146 (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))) e!378839)))

(declare-fun b!624073 () Bool)

(assert (=> b!624073 (= e!378839 (inv!8150 (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))))))

(declare-fun b!624074 () Bool)

(declare-fun e!378840 () Bool)

(assert (=> b!624074 (= e!378839 e!378840)))

(declare-fun res!271304 () Bool)

(assert (=> b!624074 (= res!271304 (not ((_ is Leaf!3223) (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))))))

(assert (=> b!624074 (=> res!271304 e!378840)))

(declare-fun b!624075 () Bool)

(assert (=> b!624075 (= e!378840 (inv!8151 (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))))))

(assert (= (and d!218601 c!114771) b!624073))

(assert (= (and d!218601 (not c!114771)) b!624074))

(assert (= (and b!624074 (not res!271304)) b!624075))

(declare-fun m!892713 () Bool)

(assert (=> b!624073 m!892713))

(declare-fun m!892715 () Bool)

(assert (=> b!624075 m!892715))

(assert (=> b!623309 d!218601))

(assert (=> b!623203 d!218427))

(assert (=> b!623203 d!218429))

(declare-fun d!218603 () Bool)

(declare-fun res!271305 () Bool)

(declare-fun e!378841 () Bool)

(assert (=> d!218603 (=> (not res!271305) (not e!378841))))

(assert (=> d!218603 (= res!271305 (<= (size!5005 (list!2696 (xs!4696 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) 512))))

(assert (=> d!218603 (= (inv!8161 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) e!378841)))

(declare-fun b!624076 () Bool)

(declare-fun res!271306 () Bool)

(assert (=> b!624076 (=> (not res!271306) (not e!378841))))

(assert (=> b!624076 (= res!271306 (= (csize!4349 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) (size!5005 (list!2696 (xs!4696 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))))

(declare-fun b!624077 () Bool)

(assert (=> b!624077 (= e!378841 (and (> (csize!4349 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 0) (<= (csize!4349 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))) 512)))))

(assert (= (and d!218603 res!271305) b!624076))

(assert (= (and b!624076 res!271306) b!624077))

(assert (=> d!218603 m!892207))

(assert (=> d!218603 m!892207))

(declare-fun m!892717 () Bool)

(assert (=> d!218603 m!892717))

(assert (=> b!624076 m!892207))

(assert (=> b!624076 m!892207))

(assert (=> b!624076 m!892717))

(assert (=> b!623116 d!218603))

(declare-fun d!218605 () Bool)

(declare-fun c!114772 () Bool)

(assert (=> d!218605 (= c!114772 ((_ is Node!2059) (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun e!378842 () Bool)

(assert (=> d!218605 (= (inv!8156 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!378842)))

(declare-fun b!624078 () Bool)

(assert (=> b!624078 (= e!378842 (inv!8160 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!624079 () Bool)

(declare-fun e!378843 () Bool)

(assert (=> b!624079 (= e!378842 e!378843)))

(declare-fun res!271307 () Bool)

(assert (=> b!624079 (= res!271307 (not ((_ is Leaf!3222) (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> b!624079 (=> res!271307 e!378843)))

(declare-fun b!624080 () Bool)

(assert (=> b!624080 (= e!378843 (inv!8161 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (= (and d!218605 c!114772) b!624078))

(assert (= (and d!218605 (not c!114772)) b!624079))

(assert (= (and b!624079 (not res!271307)) b!624080))

(declare-fun m!892719 () Bool)

(assert (=> b!624078 m!892719))

(declare-fun m!892721 () Bool)

(assert (=> b!624080 m!892721))

(assert (=> b!623385 d!218605))

(declare-fun d!218607 () Bool)

(declare-fun c!114773 () Bool)

(assert (=> d!218607 (= c!114773 ((_ is Node!2059) (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun e!378844 () Bool)

(assert (=> d!218607 (= (inv!8156 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!378844)))

(declare-fun b!624081 () Bool)

(assert (=> b!624081 (= e!378844 (inv!8160 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(declare-fun b!624082 () Bool)

(declare-fun e!378845 () Bool)

(assert (=> b!624082 (= e!378844 e!378845)))

(declare-fun res!271308 () Bool)

(assert (=> b!624082 (= res!271308 (not ((_ is Leaf!3222) (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))))))

(assert (=> b!624082 (=> res!271308 e!378845)))

(declare-fun b!624083 () Bool)

(assert (=> b!624083 (= e!378845 (inv!8161 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))))

(assert (= (and d!218607 c!114773) b!624081))

(assert (= (and d!218607 (not c!114773)) b!624082))

(assert (= (and b!624082 (not res!271308)) b!624083))

(declare-fun m!892723 () Bool)

(assert (=> b!624081 m!892723))

(declare-fun m!892725 () Bool)

(assert (=> b!624083 m!892725))

(assert (=> b!623385 d!218607))

(declare-fun d!218609 () Bool)

(declare-fun c!114774 () Bool)

(assert (=> d!218609 (= c!114774 ((_ is Nil!6416) lt!266390))))

(declare-fun e!378846 () (InoxSet Token!2342))

(assert (=> d!218609 (= (content!1152 lt!266390) e!378846)))

(declare-fun b!624084 () Bool)

(assert (=> b!624084 (= e!378846 ((as const (Array Token!2342 Bool)) false))))

(declare-fun b!624085 () Bool)

(assert (=> b!624085 (= e!378846 ((_ map or) (store ((as const (Array Token!2342 Bool)) false) (h!11817 lt!266390) true) (content!1152 (t!81933 lt!266390))))))

(assert (= (and d!218609 c!114774) b!624084))

(assert (= (and d!218609 (not c!114774)) b!624085))

(declare-fun m!892727 () Bool)

(assert (=> b!624085 m!892727))

(declare-fun m!892729 () Bool)

(assert (=> b!624085 m!892729))

(assert (=> d!217985 d!218609))

(declare-fun d!218611 () Bool)

(declare-fun c!114775 () Bool)

(assert (=> d!218611 (= c!114775 ((_ is Nil!6416) (list!2689 (left!5088 (c!114443 v!6361)))))))

(declare-fun e!378847 () (InoxSet Token!2342))

(assert (=> d!218611 (= (content!1152 (list!2689 (left!5088 (c!114443 v!6361)))) e!378847)))

(declare-fun b!624086 () Bool)

(assert (=> b!624086 (= e!378847 ((as const (Array Token!2342 Bool)) false))))

(declare-fun b!624087 () Bool)

(assert (=> b!624087 (= e!378847 ((_ map or) (store ((as const (Array Token!2342 Bool)) false) (h!11817 (list!2689 (left!5088 (c!114443 v!6361)))) true) (content!1152 (t!81933 (list!2689 (left!5088 (c!114443 v!6361)))))))))

(assert (= (and d!218611 c!114775) b!624086))

(assert (= (and d!218611 (not c!114775)) b!624087))

(declare-fun m!892731 () Bool)

(assert (=> b!624087 m!892731))

(assert (=> b!624087 m!892123))

(assert (=> d!217985 d!218611))

(declare-fun d!218613 () Bool)

(declare-fun c!114776 () Bool)

(assert (=> d!218613 (= c!114776 ((_ is Nil!6416) (list!2689 (right!5418 (c!114443 v!6361)))))))

(declare-fun e!378848 () (InoxSet Token!2342))

(assert (=> d!218613 (= (content!1152 (list!2689 (right!5418 (c!114443 v!6361)))) e!378848)))

(declare-fun b!624088 () Bool)

(assert (=> b!624088 (= e!378848 ((as const (Array Token!2342 Bool)) false))))

(declare-fun b!624089 () Bool)

(assert (=> b!624089 (= e!378848 ((_ map or) (store ((as const (Array Token!2342 Bool)) false) (h!11817 (list!2689 (right!5418 (c!114443 v!6361)))) true) (content!1152 (t!81933 (list!2689 (right!5418 (c!114443 v!6361)))))))))

(assert (= (and d!218613 c!114776) b!624088))

(assert (= (and d!218613 (not c!114776)) b!624089))

(declare-fun m!892733 () Bool)

(assert (=> b!624089 m!892733))

(declare-fun m!892735 () Bool)

(assert (=> b!624089 m!892735))

(assert (=> d!217985 d!218613))

(declare-fun d!218615 () Bool)

(declare-fun c!114777 () Bool)

(assert (=> d!218615 (= c!114777 ((_ is Nil!6416) lt!266415))))

(declare-fun e!378849 () (InoxSet Token!2342))

(assert (=> d!218615 (= (content!1152 lt!266415) e!378849)))

(declare-fun b!624090 () Bool)

(assert (=> b!624090 (= e!378849 ((as const (Array Token!2342 Bool)) false))))

(declare-fun b!624091 () Bool)

(assert (=> b!624091 (= e!378849 ((_ map or) (store ((as const (Array Token!2342 Bool)) false) (h!11817 lt!266415) true) (content!1152 (t!81933 lt!266415))))))

(assert (= (and d!218615 c!114777) b!624090))

(assert (= (and d!218615 (not c!114777)) b!624091))

(declare-fun m!892737 () Bool)

(assert (=> b!624091 m!892737))

(declare-fun m!892739 () Bool)

(assert (=> b!624091 m!892739))

(assert (=> d!218115 d!218615))

(assert (=> d!218115 d!218477))

(declare-fun d!218617 () Bool)

(declare-fun c!114778 () Bool)

(assert (=> d!218617 (= c!114778 ((_ is Node!2059) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun e!378850 () Bool)

(assert (=> d!218617 (= (inv!8156 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) e!378850)))

(declare-fun b!624092 () Bool)

(assert (=> b!624092 (= e!378850 (inv!8160 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!624093 () Bool)

(declare-fun e!378851 () Bool)

(assert (=> b!624093 (= e!378850 e!378851)))

(declare-fun res!271309 () Bool)

(assert (=> b!624093 (= res!271309 (not ((_ is Leaf!3222) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(assert (=> b!624093 (=> res!271309 e!378851)))

(declare-fun b!624094 () Bool)

(assert (=> b!624094 (= e!378851 (inv!8161 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (= (and d!218617 c!114778) b!624092))

(assert (= (and d!218617 (not c!114778)) b!624093))

(assert (= (and b!624093 (not res!271309)) b!624094))

(declare-fun m!892741 () Bool)

(assert (=> b!624092 m!892741))

(declare-fun m!892743 () Bool)

(assert (=> b!624094 m!892743))

(assert (=> b!623331 d!218617))

(declare-fun d!218619 () Bool)

(declare-fun c!114779 () Bool)

(assert (=> d!218619 (= c!114779 ((_ is Node!2059) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun e!378852 () Bool)

(assert (=> d!218619 (= (inv!8156 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) e!378852)))

(declare-fun b!624095 () Bool)

(assert (=> b!624095 (= e!378852 (inv!8160 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(declare-fun b!624096 () Bool)

(declare-fun e!378853 () Bool)

(assert (=> b!624096 (= e!378852 e!378853)))

(declare-fun res!271310 () Bool)

(assert (=> b!624096 (= res!271310 (not ((_ is Leaf!3222) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))))))

(assert (=> b!624096 (=> res!271310 e!378853)))

(declare-fun b!624097 () Bool)

(assert (=> b!624097 (= e!378853 (inv!8161 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))))

(assert (= (and d!218619 c!114779) b!624095))

(assert (= (and d!218619 (not c!114779)) b!624096))

(assert (= (and b!624096 (not res!271310)) b!624097))

(declare-fun m!892745 () Bool)

(assert (=> b!624095 m!892745))

(declare-fun m!892747 () Bool)

(assert (=> b!624097 m!892747))

(assert (=> b!623331 d!218619))

(declare-fun b!624100 () Bool)

(declare-fun e!378854 () Bool)

(declare-fun tp!193974 () Bool)

(assert (=> b!624100 (= e!378854 tp!193974)))

(declare-fun b!624099 () Bool)

(declare-fun tp!193973 () Bool)

(declare-fun tp!193975 () Bool)

(assert (=> b!624099 (= e!378854 (and tp!193973 tp!193975))))

(declare-fun b!624098 () Bool)

(assert (=> b!624098 (= e!378854 tp_is_empty!3613)))

(declare-fun b!624101 () Bool)

(declare-fun tp!193976 () Bool)

(declare-fun tp!193972 () Bool)

(assert (=> b!624101 (= e!378854 (and tp!193976 tp!193972))))

(assert (=> b!623369 (= tp!193711 e!378854)))

(assert (= (and b!623369 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624098))

(assert (= (and b!623369 ((_ is Concat!2977) (regOne!3798 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624099))

(assert (= (and b!623369 ((_ is Star!1643) (regOne!3798 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624100))

(assert (= (and b!623369 ((_ is Union!1643) (regOne!3798 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624101))

(declare-fun b!624104 () Bool)

(declare-fun e!378855 () Bool)

(declare-fun tp!193979 () Bool)

(assert (=> b!624104 (= e!378855 tp!193979)))

(declare-fun b!624103 () Bool)

(declare-fun tp!193978 () Bool)

(declare-fun tp!193980 () Bool)

(assert (=> b!624103 (= e!378855 (and tp!193978 tp!193980))))

(declare-fun b!624102 () Bool)

(assert (=> b!624102 (= e!378855 tp_is_empty!3613)))

(declare-fun b!624105 () Bool)

(declare-fun tp!193981 () Bool)

(declare-fun tp!193977 () Bool)

(assert (=> b!624105 (= e!378855 (and tp!193981 tp!193977))))

(assert (=> b!623369 (= tp!193713 e!378855)))

(assert (= (and b!623369 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624102))

(assert (= (and b!623369 ((_ is Concat!2977) (regTwo!3798 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624103))

(assert (= (and b!623369 ((_ is Star!1643) (regTwo!3798 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624104))

(assert (= (and b!623369 ((_ is Union!1643) (regTwo!3798 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624105))

(declare-fun b!624106 () Bool)

(declare-fun tp!193982 () Bool)

(declare-fun tp!193984 () Bool)

(declare-fun e!378856 () Bool)

(assert (=> b!624106 (= e!378856 (and (inv!8156 (left!5087 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) tp!193984 (inv!8156 (right!5417 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) tp!193982))))

(declare-fun b!624108 () Bool)

(declare-fun e!378857 () Bool)

(declare-fun tp!193983 () Bool)

(assert (=> b!624108 (= e!378857 tp!193983)))

(declare-fun b!624107 () Bool)

(assert (=> b!624107 (= e!378856 (and (inv!8162 (xs!4696 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) e!378857))))

(assert (=> b!623388 (= tp!193736 (and (inv!8156 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!378856))))

(assert (= (and b!623388 ((_ is Node!2059) (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!624106))

(assert (= b!624107 b!624108))

(assert (= (and b!623388 ((_ is Leaf!3222) (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!624107))

(declare-fun m!892749 () Bool)

(assert (=> b!624106 m!892749))

(declare-fun m!892751 () Bool)

(assert (=> b!624106 m!892751))

(declare-fun m!892753 () Bool)

(assert (=> b!624107 m!892753))

(assert (=> b!623388 m!891711))

(declare-fun tp!193985 () Bool)

(declare-fun e!378858 () Bool)

(declare-fun tp!193987 () Bool)

(declare-fun b!624109 () Bool)

(assert (=> b!624109 (= e!378858 (and (inv!8156 (left!5087 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) tp!193987 (inv!8156 (right!5417 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) tp!193985))))

(declare-fun b!624111 () Bool)

(declare-fun e!378859 () Bool)

(declare-fun tp!193986 () Bool)

(assert (=> b!624111 (= e!378859 tp!193986)))

(declare-fun b!624110 () Bool)

(assert (=> b!624110 (= e!378858 (and (inv!8162 (xs!4696 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) e!378859))))

(assert (=> b!623388 (= tp!193734 (and (inv!8156 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!378858))))

(assert (= (and b!623388 ((_ is Node!2059) (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!624109))

(assert (= b!624110 b!624111))

(assert (= (and b!623388 ((_ is Leaf!3222) (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!624110))

(declare-fun m!892755 () Bool)

(assert (=> b!624109 m!892755))

(declare-fun m!892757 () Bool)

(assert (=> b!624109 m!892757))

(declare-fun m!892759 () Bool)

(assert (=> b!624110 m!892759))

(assert (=> b!623388 m!891713))

(declare-fun b!624114 () Bool)

(declare-fun e!378860 () Bool)

(declare-fun tp!193990 () Bool)

(assert (=> b!624114 (= e!378860 tp!193990)))

(declare-fun b!624113 () Bool)

(declare-fun tp!193989 () Bool)

(declare-fun tp!193991 () Bool)

(assert (=> b!624113 (= e!378860 (and tp!193989 tp!193991))))

(declare-fun b!624112 () Bool)

(assert (=> b!624112 (= e!378860 tp_is_empty!3613)))

(declare-fun b!624115 () Bool)

(declare-fun tp!193992 () Bool)

(declare-fun tp!193988 () Bool)

(assert (=> b!624115 (= e!378860 (and tp!193992 tp!193988))))

(assert (=> b!623434 (= tp!193777 e!378860)))

(assert (= (and b!623434 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624112))

(assert (= (and b!623434 ((_ is Concat!2977) (regOne!3799 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624113))

(assert (= (and b!623434 ((_ is Star!1643) (regOne!3799 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624114))

(assert (= (and b!623434 ((_ is Union!1643) (regOne!3799 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624115))

(declare-fun b!624118 () Bool)

(declare-fun e!378861 () Bool)

(declare-fun tp!193995 () Bool)

(assert (=> b!624118 (= e!378861 tp!193995)))

(declare-fun b!624117 () Bool)

(declare-fun tp!193994 () Bool)

(declare-fun tp!193996 () Bool)

(assert (=> b!624117 (= e!378861 (and tp!193994 tp!193996))))

(declare-fun b!624116 () Bool)

(assert (=> b!624116 (= e!378861 tp_is_empty!3613)))

(declare-fun b!624119 () Bool)

(declare-fun tp!193997 () Bool)

(declare-fun tp!193993 () Bool)

(assert (=> b!624119 (= e!378861 (and tp!193997 tp!193993))))

(assert (=> b!623434 (= tp!193773 e!378861)))

(assert (= (and b!623434 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624116))

(assert (= (and b!623434 ((_ is Concat!2977) (regTwo!3799 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624117))

(assert (= (and b!623434 ((_ is Star!1643) (regTwo!3799 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624118))

(assert (= (and b!623434 ((_ is Union!1643) (regTwo!3799 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624119))

(declare-fun b!624122 () Bool)

(declare-fun e!378862 () Bool)

(declare-fun tp!194000 () Bool)

(assert (=> b!624122 (= e!378862 tp!194000)))

(declare-fun b!624121 () Bool)

(declare-fun tp!193999 () Bool)

(declare-fun tp!194001 () Bool)

(assert (=> b!624121 (= e!378862 (and tp!193999 tp!194001))))

(declare-fun b!624120 () Bool)

(assert (=> b!624120 (= e!378862 tp_is_empty!3613)))

(declare-fun b!624123 () Bool)

(declare-fun tp!194002 () Bool)

(declare-fun tp!193998 () Bool)

(assert (=> b!624123 (= e!378862 (and tp!194002 tp!193998))))

(assert (=> b!623382 (= tp!193727 e!378862)))

(assert (= (and b!623382 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624120))

(assert (= (and b!623382 ((_ is Concat!2977) (regOne!3798 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624121))

(assert (= (and b!623382 ((_ is Star!1643) (regOne!3798 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624122))

(assert (= (and b!623382 ((_ is Union!1643) (regOne!3798 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624123))

(declare-fun b!624126 () Bool)

(declare-fun e!378863 () Bool)

(declare-fun tp!194005 () Bool)

(assert (=> b!624126 (= e!378863 tp!194005)))

(declare-fun b!624125 () Bool)

(declare-fun tp!194004 () Bool)

(declare-fun tp!194006 () Bool)

(assert (=> b!624125 (= e!378863 (and tp!194004 tp!194006))))

(declare-fun b!624124 () Bool)

(assert (=> b!624124 (= e!378863 tp_is_empty!3613)))

(declare-fun b!624127 () Bool)

(declare-fun tp!194007 () Bool)

(declare-fun tp!194003 () Bool)

(assert (=> b!624127 (= e!378863 (and tp!194007 tp!194003))))

(assert (=> b!623382 (= tp!193729 e!378863)))

(assert (= (and b!623382 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624124))

(assert (= (and b!623382 ((_ is Concat!2977) (regTwo!3798 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624125))

(assert (= (and b!623382 ((_ is Star!1643) (regTwo!3798 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624126))

(assert (= (and b!623382 ((_ is Union!1643) (regTwo!3798 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624127))

(declare-fun b!624130 () Bool)

(declare-fun e!378864 () Bool)

(declare-fun tp!194010 () Bool)

(assert (=> b!624130 (= e!378864 tp!194010)))

(declare-fun b!624129 () Bool)

(declare-fun tp!194009 () Bool)

(declare-fun tp!194011 () Bool)

(assert (=> b!624129 (= e!378864 (and tp!194009 tp!194011))))

(declare-fun b!624128 () Bool)

(assert (=> b!624128 (= e!378864 tp_is_empty!3613)))

(declare-fun b!624131 () Bool)

(declare-fun tp!194012 () Bool)

(declare-fun tp!194008 () Bool)

(assert (=> b!624131 (= e!378864 (and tp!194012 tp!194008))))

(assert (=> b!623341 (= tp!193684 e!378864)))

(assert (= (and b!623341 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624128))

(assert (= (and b!623341 ((_ is Concat!2977) (regOne!3799 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624129))

(assert (= (and b!623341 ((_ is Star!1643) (regOne!3799 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624130))

(assert (= (and b!623341 ((_ is Union!1643) (regOne!3799 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624131))

(declare-fun b!624134 () Bool)

(declare-fun e!378865 () Bool)

(declare-fun tp!194015 () Bool)

(assert (=> b!624134 (= e!378865 tp!194015)))

(declare-fun b!624133 () Bool)

(declare-fun tp!194014 () Bool)

(declare-fun tp!194016 () Bool)

(assert (=> b!624133 (= e!378865 (and tp!194014 tp!194016))))

(declare-fun b!624132 () Bool)

(assert (=> b!624132 (= e!378865 tp_is_empty!3613)))

(declare-fun b!624135 () Bool)

(declare-fun tp!194017 () Bool)

(declare-fun tp!194013 () Bool)

(assert (=> b!624135 (= e!378865 (and tp!194017 tp!194013))))

(assert (=> b!623341 (= tp!193680 e!378865)))

(assert (= (and b!623341 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624132))

(assert (= (and b!623341 ((_ is Concat!2977) (regTwo!3799 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624133))

(assert (= (and b!623341 ((_ is Star!1643) (regTwo!3799 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624134))

(assert (= (and b!623341 ((_ is Union!1643) (regTwo!3799 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624135))

(declare-fun b!624138 () Bool)

(declare-fun e!378866 () Bool)

(declare-fun tp!194020 () Bool)

(assert (=> b!624138 (= e!378866 tp!194020)))

(declare-fun b!624137 () Bool)

(declare-fun tp!194019 () Bool)

(declare-fun tp!194021 () Bool)

(assert (=> b!624137 (= e!378866 (and tp!194019 tp!194021))))

(declare-fun b!624136 () Bool)

(assert (=> b!624136 (= e!378866 tp_is_empty!3613)))

(declare-fun b!624139 () Bool)

(declare-fun tp!194022 () Bool)

(declare-fun tp!194018 () Bool)

(assert (=> b!624139 (= e!378866 (and tp!194022 tp!194018))))

(assert (=> b!623293 (= tp!193634 e!378866)))

(assert (= (and b!623293 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624136))

(assert (= (and b!623293 ((_ is Concat!2977) (regOne!3798 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624137))

(assert (= (and b!623293 ((_ is Star!1643) (regOne!3798 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624138))

(assert (= (and b!623293 ((_ is Union!1643) (regOne!3798 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624139))

(declare-fun b!624142 () Bool)

(declare-fun e!378867 () Bool)

(declare-fun tp!194025 () Bool)

(assert (=> b!624142 (= e!378867 tp!194025)))

(declare-fun b!624141 () Bool)

(declare-fun tp!194024 () Bool)

(declare-fun tp!194026 () Bool)

(assert (=> b!624141 (= e!378867 (and tp!194024 tp!194026))))

(declare-fun b!624140 () Bool)

(assert (=> b!624140 (= e!378867 tp_is_empty!3613)))

(declare-fun b!624143 () Bool)

(declare-fun tp!194027 () Bool)

(declare-fun tp!194023 () Bool)

(assert (=> b!624143 (= e!378867 (and tp!194027 tp!194023))))

(assert (=> b!623293 (= tp!193636 e!378867)))

(assert (= (and b!623293 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624140))

(assert (= (and b!623293 ((_ is Concat!2977) (regTwo!3798 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624141))

(assert (= (and b!623293 ((_ is Star!1643) (regTwo!3798 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624142))

(assert (= (and b!623293 ((_ is Union!1643) (regTwo!3798 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624143))

(declare-fun b!624146 () Bool)

(declare-fun e!378868 () Bool)

(declare-fun tp!194030 () Bool)

(assert (=> b!624146 (= e!378868 tp!194030)))

(declare-fun b!624145 () Bool)

(declare-fun tp!194029 () Bool)

(declare-fun tp!194031 () Bool)

(assert (=> b!624145 (= e!378868 (and tp!194029 tp!194031))))

(declare-fun b!624144 () Bool)

(assert (=> b!624144 (= e!378868 tp_is_empty!3613)))

(declare-fun b!624147 () Bool)

(declare-fun tp!194032 () Bool)

(declare-fun tp!194028 () Bool)

(assert (=> b!624147 (= e!378868 (and tp!194032 tp!194028))))

(assert (=> b!623355 (= tp!193696 e!378868)))

(assert (= (and b!623355 ((_ is ElementMatch!1643) (regOne!3798 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624144))

(assert (= (and b!623355 ((_ is Concat!2977) (regOne!3798 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624145))

(assert (= (and b!623355 ((_ is Star!1643) (regOne!3798 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624146))

(assert (= (and b!623355 ((_ is Union!1643) (regOne!3798 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624147))

(declare-fun b!624150 () Bool)

(declare-fun e!378869 () Bool)

(declare-fun tp!194035 () Bool)

(assert (=> b!624150 (= e!378869 tp!194035)))

(declare-fun b!624149 () Bool)

(declare-fun tp!194034 () Bool)

(declare-fun tp!194036 () Bool)

(assert (=> b!624149 (= e!378869 (and tp!194034 tp!194036))))

(declare-fun b!624148 () Bool)

(assert (=> b!624148 (= e!378869 tp_is_empty!3613)))

(declare-fun b!624151 () Bool)

(declare-fun tp!194037 () Bool)

(declare-fun tp!194033 () Bool)

(assert (=> b!624151 (= e!378869 (and tp!194037 tp!194033))))

(assert (=> b!623355 (= tp!193698 e!378869)))

(assert (= (and b!623355 ((_ is ElementMatch!1643) (regTwo!3798 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624148))

(assert (= (and b!623355 ((_ is Concat!2977) (regTwo!3798 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624149))

(assert (= (and b!623355 ((_ is Star!1643) (regTwo!3798 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624150))

(assert (= (and b!623355 ((_ is Union!1643) (regTwo!3798 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624151))

(declare-fun b!624155 () Bool)

(declare-fun b_free!18273 () Bool)

(declare-fun b_next!18289 () Bool)

(assert (=> b!624155 (= b_free!18273 (not b_next!18289))))

(declare-fun tp!194041 () Bool)

(declare-fun b_and!61999 () Bool)

(assert (=> b!624155 (= tp!194041 b_and!61999)))

(declare-fun b_free!18275 () Bool)

(declare-fun b_next!18291 () Bool)

(assert (=> b!624155 (= b_free!18275 (not b_next!18291))))

(declare-fun t!82072 () Bool)

(declare-fun tb!54143 () Bool)

(assert (=> (and b!624155 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82072) tb!54143))

(declare-fun result!61154 () Bool)

(assert (= result!61154 result!61134))

(assert (=> d!218495 t!82072))

(declare-fun t!82074 () Bool)

(declare-fun tb!54145 () Bool)

(assert (=> (and b!624155 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!82074) tb!54145))

(declare-fun result!61156 () Bool)

(assert (= result!61156 result!61030))

(assert (=> d!217899 t!82074))

(declare-fun t!82076 () Bool)

(declare-fun tb!54147 () Bool)

(assert (=> (and b!624155 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!82076) tb!54147))

(declare-fun result!61158 () Bool)

(assert (= result!61158 result!61014))

(assert (=> b!622606 t!82076))

(declare-fun t!82078 () Bool)

(declare-fun tb!54149 () Bool)

(assert (=> (and b!624155 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!82078) tb!54149))

(declare-fun result!61160 () Bool)

(assert (= result!61160 result!61050))

(assert (=> b!623126 t!82078))

(declare-fun t!82080 () Bool)

(declare-fun tb!54151 () Bool)

(assert (=> (and b!624155 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82080) tb!54151))

(declare-fun result!61162 () Bool)

(assert (= result!61162 result!61114))

(assert (=> b!623764 t!82080))

(declare-fun t!82082 () Bool)

(declare-fun tb!54153 () Bool)

(assert (=> (and b!624155 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82082) tb!54153))

(declare-fun result!61164 () Bool)

(assert (= result!61164 result!61144))

(assert (=> b!624003 t!82082))

(declare-fun t!82084 () Bool)

(declare-fun tb!54155 () Bool)

(assert (=> (and b!624155 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82084) tb!54155))

(declare-fun result!61166 () Bool)

(assert (= result!61166 result!61124))

(assert (=> b!623858 t!82084))

(declare-fun t!82086 () Bool)

(declare-fun tb!54157 () Bool)

(assert (=> (and b!624155 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!82086) tb!54157))

(declare-fun result!61168 () Bool)

(assert (= result!61168 result!61054))

(assert (=> d!218079 t!82086))

(assert (=> d!217891 t!82076))

(declare-fun b_and!62001 () Bool)

(declare-fun tp!194042 () Bool)

(assert (=> b!624155 (= tp!194042 (and (=> t!82084 result!61166) (=> t!82078 result!61160) (=> t!82086 result!61168) (=> t!82072 result!61154) (=> t!82074 result!61156) (=> t!82082 result!61164) (=> t!82080 result!61162) (=> t!82076 result!61158) b_and!62001))))

(declare-fun tp!194039 () Bool)

(declare-fun b!624153 () Bool)

(declare-fun e!378871 () Bool)

(declare-fun e!378874 () Bool)

(assert (=> b!624153 (= e!378874 (and (inv!21 (value!42170 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) e!378871 tp!194039))))

(declare-fun e!378870 () Bool)

(assert (=> b!624155 (= e!378870 (and tp!194041 tp!194042))))

(declare-fun e!378875 () Bool)

(assert (=> b!623401 (= tp!193745 e!378875)))

(declare-fun b!624152 () Bool)

(declare-fun tp!194040 () Bool)

(assert (=> b!624152 (= e!378875 (and (inv!8148 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) e!378874 tp!194040))))

(declare-fun b!624154 () Bool)

(declare-fun tp!194038 () Bool)

(assert (=> b!624154 (= e!378871 (and tp!194038 (inv!8141 (tag!1571 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) e!378870))))

(assert (= b!624154 b!624155))

(assert (= b!624153 b!624154))

(assert (= b!624152 b!624153))

(assert (= (and b!623401 ((_ is Cons!6416) (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) b!624152))

(declare-fun m!892761 () Bool)

(assert (=> b!624153 m!892761))

(declare-fun m!892763 () Bool)

(assert (=> b!624152 m!892763))

(declare-fun m!892765 () Bool)

(assert (=> b!624154 m!892765))

(declare-fun m!892767 () Bool)

(assert (=> b!624154 m!892767))

(declare-fun tp!194044 () Bool)

(declare-fun e!378877 () Bool)

(declare-fun tp!194045 () Bool)

(declare-fun b!624156 () Bool)

(assert (=> b!624156 (= e!378877 (and (inv!8146 (left!5088 (left!5088 (left!5088 (right!5418 (c!114443 v!6361)))))) tp!194045 (inv!8146 (right!5418 (left!5088 (left!5088 (right!5418 (c!114443 v!6361)))))) tp!194044))))

(declare-fun b!624158 () Bool)

(declare-fun e!378876 () Bool)

(declare-fun tp!194043 () Bool)

(assert (=> b!624158 (= e!378876 tp!194043)))

(declare-fun b!624157 () Bool)

(assert (=> b!624157 (= e!378877 (and (inv!8158 (xs!4697 (left!5088 (left!5088 (right!5418 (c!114443 v!6361)))))) e!378876))))

(assert (=> b!623395 (= tp!193739 (and (inv!8146 (left!5088 (left!5088 (right!5418 (c!114443 v!6361))))) e!378877))))

(assert (= (and b!623395 ((_ is Node!2060) (left!5088 (left!5088 (right!5418 (c!114443 v!6361)))))) b!624156))

(assert (= b!624157 b!624158))

(assert (= (and b!623395 ((_ is Leaf!3223) (left!5088 (left!5088 (right!5418 (c!114443 v!6361)))))) b!624157))

(declare-fun m!892769 () Bool)

(assert (=> b!624156 m!892769))

(declare-fun m!892771 () Bool)

(assert (=> b!624156 m!892771))

(declare-fun m!892773 () Bool)

(assert (=> b!624157 m!892773))

(assert (=> b!623395 m!891717))

(declare-fun tp!194047 () Bool)

(declare-fun tp!194048 () Bool)

(declare-fun b!624159 () Bool)

(declare-fun e!378879 () Bool)

(assert (=> b!624159 (= e!378879 (and (inv!8146 (left!5088 (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))) tp!194048 (inv!8146 (right!5418 (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))) tp!194047))))

(declare-fun b!624161 () Bool)

(declare-fun e!378878 () Bool)

(declare-fun tp!194046 () Bool)

(assert (=> b!624161 (= e!378878 tp!194046)))

(declare-fun b!624160 () Bool)

(assert (=> b!624160 (= e!378879 (and (inv!8158 (xs!4697 (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))) e!378878))))

(assert (=> b!623395 (= tp!193738 (and (inv!8146 (right!5418 (left!5088 (right!5418 (c!114443 v!6361))))) e!378879))))

(assert (= (and b!623395 ((_ is Node!2060) (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))) b!624159))

(assert (= b!624160 b!624161))

(assert (= (and b!623395 ((_ is Leaf!3223) (right!5418 (left!5088 (right!5418 (c!114443 v!6361)))))) b!624160))

(declare-fun m!892775 () Bool)

(assert (=> b!624159 m!892775))

(declare-fun m!892777 () Bool)

(assert (=> b!624159 m!892777))

(declare-fun m!892779 () Bool)

(assert (=> b!624160 m!892779))

(assert (=> b!623395 m!891719))

(declare-fun b!624164 () Bool)

(declare-fun e!378880 () Bool)

(declare-fun tp!194051 () Bool)

(assert (=> b!624164 (= e!378880 tp!194051)))

(declare-fun b!624163 () Bool)

(declare-fun tp!194050 () Bool)

(declare-fun tp!194052 () Bool)

(assert (=> b!624163 (= e!378880 (and tp!194050 tp!194052))))

(declare-fun b!624162 () Bool)

(assert (=> b!624162 (= e!378880 tp_is_empty!3613)))

(declare-fun b!624165 () Bool)

(declare-fun tp!194053 () Bool)

(declare-fun tp!194049 () Bool)

(assert (=> b!624165 (= e!378880 (and tp!194053 tp!194049))))

(assert (=> b!623290 (= tp!193630 e!378880)))

(assert (= (and b!623290 ((_ is ElementMatch!1643) (reg!1972 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624162))

(assert (= (and b!623290 ((_ is Concat!2977) (reg!1972 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624163))

(assert (= (and b!623290 ((_ is Star!1643) (reg!1972 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624164))

(assert (= (and b!623290 ((_ is Union!1643) (reg!1972 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624165))

(declare-fun b!624168 () Bool)

(declare-fun e!378881 () Bool)

(declare-fun tp!194056 () Bool)

(assert (=> b!624168 (= e!378881 tp!194056)))

(declare-fun b!624167 () Bool)

(declare-fun tp!194055 () Bool)

(declare-fun tp!194057 () Bool)

(assert (=> b!624167 (= e!378881 (and tp!194055 tp!194057))))

(declare-fun b!624166 () Bool)

(assert (=> b!624166 (= e!378881 tp_is_empty!3613)))

(declare-fun b!624169 () Bool)

(declare-fun tp!194058 () Bool)

(declare-fun tp!194054 () Bool)

(assert (=> b!624169 (= e!378881 (and tp!194058 tp!194054))))

(assert (=> b!623330 (= tp!193671 e!378881)))

(assert (= (and b!623330 ((_ is ElementMatch!1643) (regOne!3799 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624166))

(assert (= (and b!623330 ((_ is Concat!2977) (regOne!3799 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624167))

(assert (= (and b!623330 ((_ is Star!1643) (regOne!3799 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624168))

(assert (= (and b!623330 ((_ is Union!1643) (regOne!3799 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624169))

(declare-fun b!624172 () Bool)

(declare-fun e!378882 () Bool)

(declare-fun tp!194061 () Bool)

(assert (=> b!624172 (= e!378882 tp!194061)))

(declare-fun b!624171 () Bool)

(declare-fun tp!194060 () Bool)

(declare-fun tp!194062 () Bool)

(assert (=> b!624171 (= e!378882 (and tp!194060 tp!194062))))

(declare-fun b!624170 () Bool)

(assert (=> b!624170 (= e!378882 tp_is_empty!3613)))

(declare-fun b!624173 () Bool)

(declare-fun tp!194063 () Bool)

(declare-fun tp!194059 () Bool)

(assert (=> b!624173 (= e!378882 (and tp!194063 tp!194059))))

(assert (=> b!623330 (= tp!193667 e!378882)))

(assert (= (and b!623330 ((_ is ElementMatch!1643) (regTwo!3799 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624170))

(assert (= (and b!623330 ((_ is Concat!2977) (regTwo!3799 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624171))

(assert (= (and b!623330 ((_ is Star!1643) (regTwo!3799 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624172))

(assert (= (and b!623330 ((_ is Union!1643) (regTwo!3799 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624173))

(declare-fun b!624176 () Bool)

(declare-fun e!378883 () Bool)

(declare-fun tp!194066 () Bool)

(assert (=> b!624176 (= e!378883 tp!194066)))

(declare-fun b!624175 () Bool)

(declare-fun tp!194065 () Bool)

(declare-fun tp!194067 () Bool)

(assert (=> b!624175 (= e!378883 (and tp!194065 tp!194067))))

(declare-fun b!624174 () Bool)

(assert (=> b!624174 (= e!378883 tp_is_empty!3613)))

(declare-fun b!624177 () Bool)

(declare-fun tp!194068 () Bool)

(declare-fun tp!194064 () Bool)

(assert (=> b!624177 (= e!378883 (and tp!194068 tp!194064))))

(assert (=> b!623413 (= tp!193755 e!378883)))

(assert (= (and b!623413 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624174))

(assert (= (and b!623413 ((_ is Concat!2977) (reg!1972 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624175))

(assert (= (and b!623413 ((_ is Star!1643) (reg!1972 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624176))

(assert (= (and b!623413 ((_ is Union!1643) (reg!1972 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624177))

(declare-fun b!624180 () Bool)

(declare-fun e!378884 () Bool)

(declare-fun tp!194071 () Bool)

(assert (=> b!624180 (= e!378884 tp!194071)))

(declare-fun b!624179 () Bool)

(declare-fun tp!194070 () Bool)

(declare-fun tp!194072 () Bool)

(assert (=> b!624179 (= e!378884 (and tp!194070 tp!194072))))

(declare-fun b!624178 () Bool)

(assert (=> b!624178 (= e!378884 tp_is_empty!3613)))

(declare-fun b!624181 () Bool)

(declare-fun tp!194073 () Bool)

(declare-fun tp!194069 () Bool)

(assert (=> b!624181 (= e!378884 (and tp!194073 tp!194069))))

(assert (=> b!623420 (= tp!193759 e!378884)))

(assert (= (and b!623420 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624178))

(assert (= (and b!623420 ((_ is Concat!2977) (regOne!3798 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624179))

(assert (= (and b!623420 ((_ is Star!1643) (regOne!3798 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624180))

(assert (= (and b!623420 ((_ is Union!1643) (regOne!3798 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624181))

(declare-fun b!624184 () Bool)

(declare-fun e!378885 () Bool)

(declare-fun tp!194076 () Bool)

(assert (=> b!624184 (= e!378885 tp!194076)))

(declare-fun b!624183 () Bool)

(declare-fun tp!194075 () Bool)

(declare-fun tp!194077 () Bool)

(assert (=> b!624183 (= e!378885 (and tp!194075 tp!194077))))

(declare-fun b!624182 () Bool)

(assert (=> b!624182 (= e!378885 tp_is_empty!3613)))

(declare-fun b!624185 () Bool)

(declare-fun tp!194078 () Bool)

(declare-fun tp!194074 () Bool)

(assert (=> b!624185 (= e!378885 (and tp!194078 tp!194074))))

(assert (=> b!623420 (= tp!193761 e!378885)))

(assert (= (and b!623420 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624182))

(assert (= (and b!623420 ((_ is Concat!2977) (regTwo!3798 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624183))

(assert (= (and b!623420 ((_ is Star!1643) (regTwo!3798 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624184))

(assert (= (and b!623420 ((_ is Union!1643) (regTwo!3798 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624185))

(declare-fun b!624188 () Bool)

(declare-fun e!378886 () Bool)

(declare-fun tp!194081 () Bool)

(assert (=> b!624188 (= e!378886 tp!194081)))

(declare-fun b!624187 () Bool)

(declare-fun tp!194080 () Bool)

(declare-fun tp!194082 () Bool)

(assert (=> b!624187 (= e!378886 (and tp!194080 tp!194082))))

(declare-fun b!624186 () Bool)

(assert (=> b!624186 (= e!378886 tp_is_empty!3613)))

(declare-fun b!624189 () Bool)

(declare-fun tp!194083 () Bool)

(declare-fun tp!194079 () Bool)

(assert (=> b!624189 (= e!378886 (and tp!194083 tp!194079))))

(assert (=> b!623350 (= tp!193692 e!378886)))

(assert (= (and b!623350 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624186))

(assert (= (and b!623350 ((_ is Concat!2977) (reg!1972 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624187))

(assert (= (and b!623350 ((_ is Star!1643) (reg!1972 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624188))

(assert (= (and b!623350 ((_ is Union!1643) (reg!1972 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624189))

(declare-fun b!624190 () Bool)

(declare-fun e!378887 () Bool)

(declare-fun tp!194084 () Bool)

(assert (=> b!624190 (= e!378887 (and tp_is_empty!3613 tp!194084))))

(assert (=> b!623312 (= tp!193654 e!378887)))

(assert (= (and b!623312 ((_ is Cons!6415) (t!81932 (t!81932 (t!81932 (originalCharacters!1342 separatorToken!136)))))) b!624190))

(declare-fun b!624193 () Bool)

(declare-fun e!378888 () Bool)

(declare-fun tp!194087 () Bool)

(assert (=> b!624193 (= e!378888 tp!194087)))

(declare-fun b!624192 () Bool)

(declare-fun tp!194086 () Bool)

(declare-fun tp!194088 () Bool)

(assert (=> b!624192 (= e!378888 (and tp!194086 tp!194088))))

(declare-fun b!624191 () Bool)

(assert (=> b!624191 (= e!378888 tp_is_empty!3613)))

(declare-fun b!624194 () Bool)

(declare-fun tp!194089 () Bool)

(declare-fun tp!194085 () Bool)

(assert (=> b!624194 (= e!378888 (and tp!194089 tp!194085))))

(assert (=> b!623429 (= tp!193770 e!378888)))

(assert (= (and b!623429 ((_ is ElementMatch!1643) (reg!1972 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624191))

(assert (= (and b!623429 ((_ is Concat!2977) (reg!1972 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624192))

(assert (= (and b!623429 ((_ is Star!1643) (reg!1972 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624193))

(assert (= (and b!623429 ((_ is Union!1643) (reg!1972 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624194))

(declare-fun b!624195 () Bool)

(declare-fun e!378889 () Bool)

(declare-fun tp!194090 () Bool)

(assert (=> b!624195 (= e!378889 (and tp_is_empty!3613 tp!194090))))

(assert (=> b!623320 (= tp!193663 e!378889)))

(assert (= (and b!623320 ((_ is Cons!6415) (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) b!624195))

(declare-fun b!624198 () Bool)

(declare-fun e!378890 () Bool)

(declare-fun tp!194093 () Bool)

(assert (=> b!624198 (= e!378890 tp!194093)))

(declare-fun b!624197 () Bool)

(declare-fun tp!194092 () Bool)

(declare-fun tp!194094 () Bool)

(assert (=> b!624197 (= e!378890 (and tp!194092 tp!194094))))

(declare-fun b!624196 () Bool)

(assert (=> b!624196 (= e!378890 tp_is_empty!3613)))

(declare-fun b!624199 () Bool)

(declare-fun tp!194095 () Bool)

(declare-fun tp!194091 () Bool)

(assert (=> b!624199 (= e!378890 (and tp!194095 tp!194091))))

(assert (=> b!623346 (= tp!193687 e!378890)))

(assert (= (and b!623346 ((_ is ElementMatch!1643) (reg!1972 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624196))

(assert (= (and b!623346 ((_ is Concat!2977) (reg!1972 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624197))

(assert (= (and b!623346 ((_ is Star!1643) (reg!1972 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624198))

(assert (= (and b!623346 ((_ is Union!1643) (reg!1972 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624199))

(declare-fun b!624202 () Bool)

(declare-fun e!378891 () Bool)

(declare-fun tp!194098 () Bool)

(assert (=> b!624202 (= e!378891 tp!194098)))

(declare-fun b!624201 () Bool)

(declare-fun tp!194097 () Bool)

(declare-fun tp!194099 () Bool)

(assert (=> b!624201 (= e!378891 (and tp!194097 tp!194099))))

(declare-fun b!624200 () Bool)

(assert (=> b!624200 (= e!378891 tp_is_empty!3613)))

(declare-fun b!624203 () Bool)

(declare-fun tp!194100 () Bool)

(declare-fun tp!194096 () Bool)

(assert (=> b!624203 (= e!378891 (and tp!194100 tp!194096))))

(assert (=> b!623442 (= tp!193787 e!378891)))

(assert (= (and b!623442 ((_ is ElementMatch!1643) (regOne!3799 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624200))

(assert (= (and b!623442 ((_ is Concat!2977) (regOne!3799 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624201))

(assert (= (and b!623442 ((_ is Star!1643) (regOne!3799 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624202))

(assert (= (and b!623442 ((_ is Union!1643) (regOne!3799 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624203))

(declare-fun b!624206 () Bool)

(declare-fun e!378892 () Bool)

(declare-fun tp!194103 () Bool)

(assert (=> b!624206 (= e!378892 tp!194103)))

(declare-fun b!624205 () Bool)

(declare-fun tp!194102 () Bool)

(declare-fun tp!194104 () Bool)

(assert (=> b!624205 (= e!378892 (and tp!194102 tp!194104))))

(declare-fun b!624204 () Bool)

(assert (=> b!624204 (= e!378892 tp_is_empty!3613)))

(declare-fun b!624207 () Bool)

(declare-fun tp!194105 () Bool)

(declare-fun tp!194101 () Bool)

(assert (=> b!624207 (= e!378892 (and tp!194105 tp!194101))))

(assert (=> b!623442 (= tp!193783 e!378892)))

(assert (= (and b!623442 ((_ is ElementMatch!1643) (regTwo!3799 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624204))

(assert (= (and b!623442 ((_ is Concat!2977) (regTwo!3799 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624205))

(assert (= (and b!623442 ((_ is Star!1643) (regTwo!3799 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624206))

(assert (= (and b!623442 ((_ is Union!1643) (regTwo!3799 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624207))

(declare-fun b!624208 () Bool)

(declare-fun e!378893 () Bool)

(declare-fun tp!194106 () Bool)

(assert (=> b!624208 (= e!378893 (and tp_is_empty!3613 tp!194106))))

(assert (=> b!623317 (= tp!193660 e!378893)))

(assert (= (and b!623317 ((_ is Cons!6415) (t!81932 (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))) b!624208))

(declare-fun b!624209 () Bool)

(declare-fun e!378894 () Bool)

(declare-fun tp!194107 () Bool)

(assert (=> b!624209 (= e!378894 (and tp_is_empty!3613 tp!194107))))

(assert (=> b!623402 (= tp!193744 e!378894)))

(assert (= (and b!623402 ((_ is Cons!6415) (originalCharacters!1342 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) b!624209))

(declare-fun b!624212 () Bool)

(declare-fun e!378895 () Bool)

(declare-fun tp!194110 () Bool)

(assert (=> b!624212 (= e!378895 tp!194110)))

(declare-fun b!624211 () Bool)

(declare-fun tp!194109 () Bool)

(declare-fun tp!194111 () Bool)

(assert (=> b!624211 (= e!378895 (and tp!194109 tp!194111))))

(declare-fun b!624210 () Bool)

(assert (=> b!624210 (= e!378895 tp_is_empty!3613)))

(declare-fun b!624213 () Bool)

(declare-fun tp!194112 () Bool)

(declare-fun tp!194108 () Bool)

(assert (=> b!624213 (= e!378895 (and tp!194112 tp!194108))))

(assert (=> b!623335 (= tp!193676 e!378895)))

(assert (= (and b!623335 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624210))

(assert (= (and b!623335 ((_ is Concat!2977) (regOne!3798 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624211))

(assert (= (and b!623335 ((_ is Star!1643) (regOne!3798 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624212))

(assert (= (and b!623335 ((_ is Union!1643) (regOne!3798 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624213))

(declare-fun b!624216 () Bool)

(declare-fun e!378896 () Bool)

(declare-fun tp!194115 () Bool)

(assert (=> b!624216 (= e!378896 tp!194115)))

(declare-fun b!624215 () Bool)

(declare-fun tp!194114 () Bool)

(declare-fun tp!194116 () Bool)

(assert (=> b!624215 (= e!378896 (and tp!194114 tp!194116))))

(declare-fun b!624214 () Bool)

(assert (=> b!624214 (= e!378896 tp_is_empty!3613)))

(declare-fun b!624217 () Bool)

(declare-fun tp!194117 () Bool)

(declare-fun tp!194113 () Bool)

(assert (=> b!624217 (= e!378896 (and tp!194117 tp!194113))))

(assert (=> b!623335 (= tp!193678 e!378896)))

(assert (= (and b!623335 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624214))

(assert (= (and b!623335 ((_ is Concat!2977) (regTwo!3798 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624215))

(assert (= (and b!623335 ((_ is Star!1643) (regTwo!3798 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624216))

(assert (= (and b!623335 ((_ is Union!1643) (regTwo!3798 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624217))

(declare-fun b!624220 () Bool)

(declare-fun e!378897 () Bool)

(declare-fun tp!194120 () Bool)

(assert (=> b!624220 (= e!378897 tp!194120)))

(declare-fun b!624219 () Bool)

(declare-fun tp!194119 () Bool)

(declare-fun tp!194121 () Bool)

(assert (=> b!624219 (= e!378897 (and tp!194119 tp!194121))))

(declare-fun b!624218 () Bool)

(assert (=> b!624218 (= e!378897 tp_is_empty!3613)))

(declare-fun b!624221 () Bool)

(declare-fun tp!194122 () Bool)

(declare-fun tp!194118 () Bool)

(assert (=> b!624221 (= e!378897 (and tp!194122 tp!194118))))

(assert (=> b!623291 (= tp!193632 e!378897)))

(assert (= (and b!623291 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624218))

(assert (= (and b!623291 ((_ is Concat!2977) (regOne!3799 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624219))

(assert (= (and b!623291 ((_ is Star!1643) (regOne!3799 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624220))

(assert (= (and b!623291 ((_ is Union!1643) (regOne!3799 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624221))

(declare-fun b!624224 () Bool)

(declare-fun e!378898 () Bool)

(declare-fun tp!194125 () Bool)

(assert (=> b!624224 (= e!378898 tp!194125)))

(declare-fun b!624223 () Bool)

(declare-fun tp!194124 () Bool)

(declare-fun tp!194126 () Bool)

(assert (=> b!624223 (= e!378898 (and tp!194124 tp!194126))))

(declare-fun b!624222 () Bool)

(assert (=> b!624222 (= e!378898 tp_is_empty!3613)))

(declare-fun b!624225 () Bool)

(declare-fun tp!194127 () Bool)

(declare-fun tp!194123 () Bool)

(assert (=> b!624225 (= e!378898 (and tp!194127 tp!194123))))

(assert (=> b!623291 (= tp!193628 e!378898)))

(assert (= (and b!623291 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624222))

(assert (= (and b!623291 ((_ is Concat!2977) (regTwo!3799 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624223))

(assert (= (and b!623291 ((_ is Star!1643) (regTwo!3799 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624224))

(assert (= (and b!623291 ((_ is Union!1643) (regTwo!3799 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624225))

(declare-fun b!624228 () Bool)

(declare-fun e!378899 () Bool)

(declare-fun tp!194130 () Bool)

(assert (=> b!624228 (= e!378899 tp!194130)))

(declare-fun b!624227 () Bool)

(declare-fun tp!194129 () Bool)

(declare-fun tp!194131 () Bool)

(assert (=> b!624227 (= e!378899 (and tp!194129 tp!194131))))

(declare-fun b!624226 () Bool)

(assert (=> b!624226 (= e!378899 tp_is_empty!3613)))

(declare-fun b!624229 () Bool)

(declare-fun tp!194132 () Bool)

(declare-fun tp!194128 () Bool)

(assert (=> b!624229 (= e!378899 (and tp!194132 tp!194128))))

(assert (=> b!623444 (= tp!193789 e!378899)))

(assert (= (and b!623444 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624226))

(assert (= (and b!623444 ((_ is Concat!2977) (regOne!3798 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624227))

(assert (= (and b!623444 ((_ is Star!1643) (regOne!3798 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624228))

(assert (= (and b!623444 ((_ is Union!1643) (regOne!3798 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624229))

(declare-fun b!624232 () Bool)

(declare-fun e!378900 () Bool)

(declare-fun tp!194135 () Bool)

(assert (=> b!624232 (= e!378900 tp!194135)))

(declare-fun b!624231 () Bool)

(declare-fun tp!194134 () Bool)

(declare-fun tp!194136 () Bool)

(assert (=> b!624231 (= e!378900 (and tp!194134 tp!194136))))

(declare-fun b!624230 () Bool)

(assert (=> b!624230 (= e!378900 tp_is_empty!3613)))

(declare-fun b!624233 () Bool)

(declare-fun tp!194137 () Bool)

(declare-fun tp!194133 () Bool)

(assert (=> b!624233 (= e!378900 (and tp!194137 tp!194133))))

(assert (=> b!623444 (= tp!193791 e!378900)))

(assert (= (and b!623444 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624230))

(assert (= (and b!623444 ((_ is Concat!2977) (regTwo!3798 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624231))

(assert (= (and b!623444 ((_ is Star!1643) (regTwo!3798 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624232))

(assert (= (and b!623444 ((_ is Union!1643) (regTwo!3798 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624233))

(declare-fun b!624236 () Bool)

(declare-fun e!378901 () Bool)

(declare-fun tp!194140 () Bool)

(assert (=> b!624236 (= e!378901 tp!194140)))

(declare-fun b!624235 () Bool)

(declare-fun tp!194139 () Bool)

(declare-fun tp!194141 () Bool)

(assert (=> b!624235 (= e!378901 (and tp!194139 tp!194141))))

(declare-fun b!624234 () Bool)

(assert (=> b!624234 (= e!378901 tp_is_empty!3613)))

(declare-fun b!624237 () Bool)

(declare-fun tp!194142 () Bool)

(declare-fun tp!194138 () Bool)

(assert (=> b!624237 (= e!378901 (and tp!194142 tp!194138))))

(assert (=> b!623409 (= tp!193750 e!378901)))

(assert (= (and b!623409 ((_ is ElementMatch!1643) (reg!1972 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624234))

(assert (= (and b!623409 ((_ is Concat!2977) (reg!1972 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624235))

(assert (= (and b!623409 ((_ is Star!1643) (reg!1972 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624236))

(assert (= (and b!623409 ((_ is Union!1643) (reg!1972 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624237))

(declare-fun tp!194143 () Bool)

(declare-fun tp!194145 () Bool)

(declare-fun b!624238 () Bool)

(declare-fun e!378902 () Bool)

(assert (=> b!624238 (= e!378902 (and (inv!8156 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) tp!194145 (inv!8156 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) tp!194143))))

(declare-fun b!624240 () Bool)

(declare-fun e!378903 () Bool)

(declare-fun tp!194144 () Bool)

(assert (=> b!624240 (= e!378903 tp!194144)))

(declare-fun b!624239 () Bool)

(assert (=> b!624239 (= e!378902 (and (inv!8162 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) e!378903))))

(assert (=> b!623128 (= tp!193626 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) e!378902))))

(assert (= (and b!623128 ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624238))

(assert (= b!624239 b!624240))

(assert (= (and b!623128 ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (value!42170 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624239))

(declare-fun m!892781 () Bool)

(assert (=> b!624238 m!892781))

(declare-fun m!892783 () Bool)

(assert (=> b!624238 m!892783))

(declare-fun m!892785 () Bool)

(assert (=> b!624239 m!892785))

(assert (=> b!623128 m!891403))

(declare-fun b!624243 () Bool)

(declare-fun e!378904 () Bool)

(declare-fun tp!194148 () Bool)

(assert (=> b!624243 (= e!378904 tp!194148)))

(declare-fun b!624242 () Bool)

(declare-fun tp!194147 () Bool)

(declare-fun tp!194149 () Bool)

(assert (=> b!624242 (= e!378904 (and tp!194147 tp!194149))))

(declare-fun b!624241 () Bool)

(assert (=> b!624241 (= e!378904 tp_is_empty!3613)))

(declare-fun b!624244 () Bool)

(declare-fun tp!194150 () Bool)

(declare-fun tp!194146 () Bool)

(assert (=> b!624244 (= e!378904 (and tp!194150 tp!194146))))

(assert (=> b!623375 (= tp!193719 e!378904)))

(assert (= (and b!623375 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624241))

(assert (= (and b!623375 ((_ is Concat!2977) (regOne!3799 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624242))

(assert (= (and b!623375 ((_ is Star!1643) (regOne!3799 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624243))

(assert (= (and b!623375 ((_ is Union!1643) (regOne!3799 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624244))

(declare-fun b!624247 () Bool)

(declare-fun e!378905 () Bool)

(declare-fun tp!194153 () Bool)

(assert (=> b!624247 (= e!378905 tp!194153)))

(declare-fun b!624246 () Bool)

(declare-fun tp!194152 () Bool)

(declare-fun tp!194154 () Bool)

(assert (=> b!624246 (= e!378905 (and tp!194152 tp!194154))))

(declare-fun b!624245 () Bool)

(assert (=> b!624245 (= e!378905 tp_is_empty!3613)))

(declare-fun b!624248 () Bool)

(declare-fun tp!194155 () Bool)

(declare-fun tp!194151 () Bool)

(assert (=> b!624248 (= e!378905 (and tp!194155 tp!194151))))

(assert (=> b!623375 (= tp!193715 e!378905)))

(assert (= (and b!623375 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624245))

(assert (= (and b!623375 ((_ is Concat!2977) (regTwo!3799 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624246))

(assert (= (and b!623375 ((_ is Star!1643) (regTwo!3799 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624247))

(assert (= (and b!623375 ((_ is Union!1643) (regTwo!3799 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624248))

(declare-fun b!624252 () Bool)

(declare-fun b_free!18277 () Bool)

(declare-fun b_next!18293 () Bool)

(assert (=> b!624252 (= b_free!18277 (not b_next!18293))))

(declare-fun tp!194159 () Bool)

(declare-fun b_and!62003 () Bool)

(assert (=> b!624252 (= tp!194159 b_and!62003)))

(declare-fun b_free!18279 () Bool)

(declare-fun b_next!18295 () Bool)

(assert (=> b!624252 (= b_free!18279 (not b_next!18295))))

(declare-fun tb!54159 () Bool)

(declare-fun t!82088 () Bool)

(assert (=> (and b!624252 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82088) tb!54159))

(declare-fun result!61170 () Bool)

(assert (= result!61170 result!61134))

(assert (=> d!218495 t!82088))

(declare-fun t!82090 () Bool)

(declare-fun tb!54161 () Bool)

(assert (=> (and b!624252 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!82090) tb!54161))

(declare-fun result!61172 () Bool)

(assert (= result!61172 result!61030))

(assert (=> d!217899 t!82090))

(declare-fun tb!54163 () Bool)

(declare-fun t!82092 () Bool)

(assert (=> (and b!624252 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!82092) tb!54163))

(declare-fun result!61174 () Bool)

(assert (= result!61174 result!61014))

(assert (=> b!622606 t!82092))

(declare-fun t!82094 () Bool)

(declare-fun tb!54165 () Bool)

(assert (=> (and b!624252 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!82094) tb!54165))

(declare-fun result!61176 () Bool)

(assert (= result!61176 result!61050))

(assert (=> b!623126 t!82094))

(declare-fun t!82096 () Bool)

(declare-fun tb!54167 () Bool)

(assert (=> (and b!624252 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82096) tb!54167))

(declare-fun result!61178 () Bool)

(assert (= result!61178 result!61114))

(assert (=> b!623764 t!82096))

(declare-fun t!82098 () Bool)

(declare-fun tb!54169 () Bool)

(assert (=> (and b!624252 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82098) tb!54169))

(declare-fun result!61180 () Bool)

(assert (= result!61180 result!61144))

(assert (=> b!624003 t!82098))

(declare-fun t!82100 () Bool)

(declare-fun tb!54171 () Bool)

(assert (=> (and b!624252 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82100) tb!54171))

(declare-fun result!61182 () Bool)

(assert (= result!61182 result!61124))

(assert (=> b!623858 t!82100))

(declare-fun t!82102 () Bool)

(declare-fun tb!54173 () Bool)

(assert (=> (and b!624252 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!82102) tb!54173))

(declare-fun result!61184 () Bool)

(assert (= result!61184 result!61054))

(assert (=> d!218079 t!82102))

(assert (=> d!217891 t!82092))

(declare-fun b_and!62005 () Bool)

(declare-fun tp!194160 () Bool)

(assert (=> b!624252 (= tp!194160 (and (=> t!82098 result!61180) (=> t!82094 result!61176) (=> t!82096 result!61178) (=> t!82088 result!61170) (=> t!82090 result!61172) (=> t!82102 result!61184) (=> t!82100 result!61182) (=> t!82092 result!61174) b_and!62005))))

(declare-fun e!378907 () Bool)

(declare-fun e!378910 () Bool)

(declare-fun tp!194157 () Bool)

(declare-fun b!624250 () Bool)

(assert (=> b!624250 (= e!378910 (and (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361)))))))) e!378907 tp!194157))))

(declare-fun e!378906 () Bool)

(assert (=> b!624252 (= e!378906 (and tp!194159 tp!194160))))

(declare-fun e!378911 () Bool)

(assert (=> b!623400 (= tp!193740 e!378911)))

(declare-fun tp!194158 () Bool)

(declare-fun b!624249 () Bool)

(assert (=> b!624249 (= e!378911 (and (inv!8148 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))) e!378910 tp!194158))))

(declare-fun tp!194156 () Bool)

(declare-fun b!624251 () Bool)

(assert (=> b!624251 (= e!378907 (and tp!194156 (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) e!378906))))

(assert (= b!624251 b!624252))

(assert (= b!624250 b!624251))

(assert (= b!624249 b!624250))

(assert (= (and b!623400 ((_ is Cons!6416) (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))) b!624249))

(declare-fun m!892787 () Bool)

(assert (=> b!624250 m!892787))

(declare-fun m!892789 () Bool)

(assert (=> b!624249 m!892789))

(declare-fun m!892791 () Bool)

(assert (=> b!624251 m!892791))

(declare-fun m!892793 () Bool)

(assert (=> b!624251 m!892793))

(declare-fun b!624255 () Bool)

(declare-fun e!378912 () Bool)

(declare-fun tp!194163 () Bool)

(assert (=> b!624255 (= e!378912 tp!194163)))

(declare-fun b!624254 () Bool)

(declare-fun tp!194162 () Bool)

(declare-fun tp!194164 () Bool)

(assert (=> b!624254 (= e!378912 (and tp!194162 tp!194164))))

(declare-fun b!624253 () Bool)

(assert (=> b!624253 (= e!378912 tp_is_empty!3613)))

(declare-fun b!624256 () Bool)

(declare-fun tp!194165 () Bool)

(declare-fun tp!194161 () Bool)

(assert (=> b!624256 (= e!378912 (and tp!194165 tp!194161))))

(assert (=> b!623315 (= tp!193655 e!378912)))

(assert (= (and b!623315 ((_ is ElementMatch!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) b!624253))

(assert (= (and b!623315 ((_ is Concat!2977) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) b!624254))

(assert (= (and b!623315 ((_ is Star!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) b!624255))

(assert (= (and b!623315 ((_ is Union!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) b!624256))

(declare-fun b!624259 () Bool)

(declare-fun e!378913 () Bool)

(declare-fun tp!194168 () Bool)

(assert (=> b!624259 (= e!378913 tp!194168)))

(declare-fun b!624258 () Bool)

(declare-fun tp!194167 () Bool)

(declare-fun tp!194169 () Bool)

(assert (=> b!624258 (= e!378913 (and tp!194167 tp!194169))))

(declare-fun b!624257 () Bool)

(assert (=> b!624257 (= e!378913 tp_is_empty!3613)))

(declare-fun b!624260 () Bool)

(declare-fun tp!194170 () Bool)

(declare-fun tp!194166 () Bool)

(assert (=> b!624260 (= e!378913 (and tp!194170 tp!194166))))

(assert (=> b!623433 (= tp!193775 e!378913)))

(assert (= (and b!623433 ((_ is ElementMatch!1643) (reg!1972 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624257))

(assert (= (and b!623433 ((_ is Concat!2977) (reg!1972 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624258))

(assert (= (and b!623433 ((_ is Star!1643) (reg!1972 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624259))

(assert (= (and b!623433 ((_ is Union!1643) (reg!1972 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624260))

(declare-fun tp!194173 () Bool)

(declare-fun e!378914 () Bool)

(declare-fun b!624261 () Bool)

(declare-fun tp!194171 () Bool)

(assert (=> b!624261 (= e!378914 (and (inv!8156 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) tp!194173 (inv!8156 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) tp!194171))))

(declare-fun b!624263 () Bool)

(declare-fun e!378915 () Bool)

(declare-fun tp!194172 () Bool)

(assert (=> b!624263 (= e!378915 tp!194172)))

(declare-fun b!624262 () Bool)

(assert (=> b!624262 (= e!378914 (and (inv!8162 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) e!378915))))

(assert (=> b!623229 (= tp!193627 (and (inv!8156 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) e!378914))))

(assert (= (and b!623229 ((_ is Node!2059) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) b!624261))

(assert (= b!624262 b!624263))

(assert (= (and b!623229 ((_ is Leaf!3222) (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))) (value!42170 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) b!624262))

(declare-fun m!892795 () Bool)

(assert (=> b!624261 m!892795))

(declare-fun m!892797 () Bool)

(assert (=> b!624261 m!892797))

(declare-fun m!892799 () Bool)

(assert (=> b!624262 m!892799))

(assert (=> b!623229 m!891533))

(declare-fun b!624266 () Bool)

(declare-fun e!378916 () Bool)

(declare-fun tp!194176 () Bool)

(assert (=> b!624266 (= e!378916 tp!194176)))

(declare-fun b!624265 () Bool)

(declare-fun tp!194175 () Bool)

(declare-fun tp!194177 () Bool)

(assert (=> b!624265 (= e!378916 (and tp!194175 tp!194177))))

(declare-fun b!624264 () Bool)

(assert (=> b!624264 (= e!378916 tp_is_empty!3613)))

(declare-fun b!624267 () Bool)

(declare-fun tp!194178 () Bool)

(declare-fun tp!194174 () Bool)

(assert (=> b!624267 (= e!378916 (and tp!194178 tp!194174))))

(assert (=> b!623340 (= tp!193682 e!378916)))

(assert (= (and b!623340 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624264))

(assert (= (and b!623340 ((_ is Concat!2977) (reg!1972 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624265))

(assert (= (and b!623340 ((_ is Star!1643) (reg!1972 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624266))

(assert (= (and b!623340 ((_ is Union!1643) (reg!1972 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624267))

(declare-fun b!624270 () Bool)

(declare-fun e!378917 () Bool)

(declare-fun tp!194181 () Bool)

(assert (=> b!624270 (= e!378917 tp!194181)))

(declare-fun b!624269 () Bool)

(declare-fun tp!194180 () Bool)

(declare-fun tp!194182 () Bool)

(assert (=> b!624269 (= e!378917 (and tp!194180 tp!194182))))

(declare-fun b!624268 () Bool)

(assert (=> b!624268 (= e!378917 tp_is_empty!3613)))

(declare-fun b!624271 () Bool)

(declare-fun tp!194183 () Bool)

(declare-fun tp!194179 () Bool)

(assert (=> b!624271 (= e!378917 (and tp!194183 tp!194179))))

(assert (=> b!623449 (= tp!193795 e!378917)))

(assert (= (and b!623449 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624268))

(assert (= (and b!623449 ((_ is Concat!2977) (reg!1972 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624269))

(assert (= (and b!623449 ((_ is Star!1643) (reg!1972 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624270))

(assert (= (and b!623449 ((_ is Union!1643) (reg!1972 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624271))

(declare-fun b!624274 () Bool)

(declare-fun e!378918 () Bool)

(declare-fun tp!194186 () Bool)

(assert (=> b!624274 (= e!378918 tp!194186)))

(declare-fun b!624273 () Bool)

(declare-fun tp!194185 () Bool)

(declare-fun tp!194187 () Bool)

(assert (=> b!624273 (= e!378918 (and tp!194185 tp!194187))))

(declare-fun b!624272 () Bool)

(assert (=> b!624272 (= e!378918 tp_is_empty!3613)))

(declare-fun b!624275 () Bool)

(declare-fun tp!194188 () Bool)

(declare-fun tp!194184 () Bool)

(assert (=> b!624275 (= e!378918 (and tp!194188 tp!194184))))

(assert (=> b!623440 (= tp!193784 e!378918)))

(assert (= (and b!623440 ((_ is ElementMatch!1643) (regOne!3798 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624272))

(assert (= (and b!623440 ((_ is Concat!2977) (regOne!3798 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624273))

(assert (= (and b!623440 ((_ is Star!1643) (regOne!3798 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624274))

(assert (= (and b!623440 ((_ is Union!1643) (regOne!3798 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624275))

(declare-fun b!624278 () Bool)

(declare-fun e!378919 () Bool)

(declare-fun tp!194191 () Bool)

(assert (=> b!624278 (= e!378919 tp!194191)))

(declare-fun b!624277 () Bool)

(declare-fun tp!194190 () Bool)

(declare-fun tp!194192 () Bool)

(assert (=> b!624277 (= e!378919 (and tp!194190 tp!194192))))

(declare-fun b!624276 () Bool)

(assert (=> b!624276 (= e!378919 tp_is_empty!3613)))

(declare-fun b!624279 () Bool)

(declare-fun tp!194193 () Bool)

(declare-fun tp!194189 () Bool)

(assert (=> b!624279 (= e!378919 (and tp!194193 tp!194189))))

(assert (=> b!623440 (= tp!193786 e!378919)))

(assert (= (and b!623440 ((_ is ElementMatch!1643) (regTwo!3798 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624276))

(assert (= (and b!623440 ((_ is Concat!2977) (regTwo!3798 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624277))

(assert (= (and b!623440 ((_ is Star!1643) (regTwo!3798 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624278))

(assert (= (and b!623440 ((_ is Union!1643) (regTwo!3798 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624279))

(declare-fun b!624282 () Bool)

(declare-fun e!378920 () Bool)

(declare-fun tp!194196 () Bool)

(assert (=> b!624282 (= e!378920 tp!194196)))

(declare-fun b!624281 () Bool)

(declare-fun tp!194195 () Bool)

(declare-fun tp!194197 () Bool)

(assert (=> b!624281 (= e!378920 (and tp!194195 tp!194197))))

(declare-fun b!624280 () Bool)

(assert (=> b!624280 (= e!378920 tp_is_empty!3613)))

(declare-fun b!624283 () Bool)

(declare-fun tp!194198 () Bool)

(declare-fun tp!194194 () Bool)

(assert (=> b!624283 (= e!378920 (and tp!194198 tp!194194))))

(assert (=> b!623289 (= tp!193629 e!378920)))

(assert (= (and b!623289 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624280))

(assert (= (and b!623289 ((_ is Concat!2977) (regOne!3798 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624281))

(assert (= (and b!623289 ((_ is Star!1643) (regOne!3798 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624282))

(assert (= (and b!623289 ((_ is Union!1643) (regOne!3798 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624283))

(declare-fun b!624286 () Bool)

(declare-fun e!378921 () Bool)

(declare-fun tp!194201 () Bool)

(assert (=> b!624286 (= e!378921 tp!194201)))

(declare-fun b!624285 () Bool)

(declare-fun tp!194200 () Bool)

(declare-fun tp!194202 () Bool)

(assert (=> b!624285 (= e!378921 (and tp!194200 tp!194202))))

(declare-fun b!624284 () Bool)

(assert (=> b!624284 (= e!378921 tp_is_empty!3613)))

(declare-fun b!624287 () Bool)

(declare-fun tp!194203 () Bool)

(declare-fun tp!194199 () Bool)

(assert (=> b!624287 (= e!378921 (and tp!194203 tp!194199))))

(assert (=> b!623289 (= tp!193631 e!378921)))

(assert (= (and b!623289 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624284))

(assert (= (and b!623289 ((_ is Concat!2977) (regTwo!3798 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624285))

(assert (= (and b!623289 ((_ is Star!1643) (regTwo!3798 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624286))

(assert (= (and b!623289 ((_ is Union!1643) (regTwo!3798 (regOne!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624287))

(declare-fun b!624290 () Bool)

(declare-fun e!378922 () Bool)

(declare-fun tp!194206 () Bool)

(assert (=> b!624290 (= e!378922 tp!194206)))

(declare-fun b!624289 () Bool)

(declare-fun tp!194205 () Bool)

(declare-fun tp!194207 () Bool)

(assert (=> b!624289 (= e!378922 (and tp!194205 tp!194207))))

(declare-fun b!624288 () Bool)

(assert (=> b!624288 (= e!378922 tp_is_empty!3613)))

(declare-fun b!624291 () Bool)

(declare-fun tp!194208 () Bool)

(declare-fun tp!194204 () Bool)

(assert (=> b!624291 (= e!378922 (and tp!194208 tp!194204))))

(assert (=> b!623349 (= tp!193691 e!378922)))

(assert (= (and b!623349 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624288))

(assert (= (and b!623349 ((_ is Concat!2977) (regOne!3798 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624289))

(assert (= (and b!623349 ((_ is Star!1643) (regOne!3798 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624290))

(assert (= (and b!623349 ((_ is Union!1643) (regOne!3798 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624291))

(declare-fun b!624294 () Bool)

(declare-fun e!378923 () Bool)

(declare-fun tp!194211 () Bool)

(assert (=> b!624294 (= e!378923 tp!194211)))

(declare-fun b!624293 () Bool)

(declare-fun tp!194210 () Bool)

(declare-fun tp!194212 () Bool)

(assert (=> b!624293 (= e!378923 (and tp!194210 tp!194212))))

(declare-fun b!624292 () Bool)

(assert (=> b!624292 (= e!378923 tp_is_empty!3613)))

(declare-fun b!624295 () Bool)

(declare-fun tp!194213 () Bool)

(declare-fun tp!194209 () Bool)

(assert (=> b!624295 (= e!378923 (and tp!194213 tp!194209))))

(assert (=> b!623349 (= tp!193693 e!378923)))

(assert (= (and b!623349 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624292))

(assert (= (and b!623349 ((_ is Concat!2977) (regTwo!3798 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624293))

(assert (= (and b!623349 ((_ is Star!1643) (regTwo!3798 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624294))

(assert (= (and b!623349 ((_ is Union!1643) (regTwo!3798 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624295))

(declare-fun b!624298 () Bool)

(declare-fun e!378924 () Bool)

(declare-fun tp!194216 () Bool)

(assert (=> b!624298 (= e!378924 tp!194216)))

(declare-fun b!624297 () Bool)

(declare-fun tp!194215 () Bool)

(declare-fun tp!194217 () Bool)

(assert (=> b!624297 (= e!378924 (and tp!194215 tp!194217))))

(declare-fun b!624296 () Bool)

(assert (=> b!624296 (= e!378924 tp_is_empty!3613)))

(declare-fun b!624299 () Bool)

(declare-fun tp!194218 () Bool)

(declare-fun tp!194214 () Bool)

(assert (=> b!624299 (= e!378924 (and tp!194218 tp!194214))))

(assert (=> b!623329 (= tp!193669 e!378924)))

(assert (= (and b!623329 ((_ is ElementMatch!1643) (reg!1972 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624296))

(assert (= (and b!623329 ((_ is Concat!2977) (reg!1972 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624297))

(assert (= (and b!623329 ((_ is Star!1643) (reg!1972 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624298))

(assert (= (and b!623329 ((_ is Union!1643) (reg!1972 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624299))

(declare-fun b!624302 () Bool)

(declare-fun e!378925 () Bool)

(declare-fun tp!194221 () Bool)

(assert (=> b!624302 (= e!378925 tp!194221)))

(declare-fun b!624301 () Bool)

(declare-fun tp!194220 () Bool)

(declare-fun tp!194222 () Bool)

(assert (=> b!624301 (= e!378925 (and tp!194220 tp!194222))))

(declare-fun b!624300 () Bool)

(assert (=> b!624300 (= e!378925 tp_is_empty!3613)))

(declare-fun b!624303 () Bool)

(declare-fun tp!194223 () Bool)

(declare-fun tp!194219 () Bool)

(assert (=> b!624303 (= e!378925 (and tp!194223 tp!194219))))

(assert (=> b!623428 (= tp!193769 e!378925)))

(assert (= (and b!623428 ((_ is ElementMatch!1643) (regOne!3798 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624300))

(assert (= (and b!623428 ((_ is Concat!2977) (regOne!3798 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624301))

(assert (= (and b!623428 ((_ is Star!1643) (regOne!3798 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624302))

(assert (= (and b!623428 ((_ is Union!1643) (regOne!3798 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624303))

(declare-fun b!624306 () Bool)

(declare-fun e!378926 () Bool)

(declare-fun tp!194226 () Bool)

(assert (=> b!624306 (= e!378926 tp!194226)))

(declare-fun b!624305 () Bool)

(declare-fun tp!194225 () Bool)

(declare-fun tp!194227 () Bool)

(assert (=> b!624305 (= e!378926 (and tp!194225 tp!194227))))

(declare-fun b!624304 () Bool)

(assert (=> b!624304 (= e!378926 tp_is_empty!3613)))

(declare-fun b!624307 () Bool)

(declare-fun tp!194228 () Bool)

(declare-fun tp!194224 () Bool)

(assert (=> b!624307 (= e!378926 (and tp!194228 tp!194224))))

(assert (=> b!623428 (= tp!193771 e!378926)))

(assert (= (and b!623428 ((_ is ElementMatch!1643) (regTwo!3798 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624304))

(assert (= (and b!623428 ((_ is Concat!2977) (regTwo!3798 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624305))

(assert (= (and b!623428 ((_ is Star!1643) (regTwo!3798 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624306))

(assert (= (and b!623428 ((_ is Union!1643) (regTwo!3798 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624307))

(declare-fun b!624310 () Bool)

(declare-fun e!378927 () Bool)

(declare-fun tp!194231 () Bool)

(assert (=> b!624310 (= e!378927 tp!194231)))

(declare-fun b!624309 () Bool)

(declare-fun tp!194230 () Bool)

(declare-fun tp!194232 () Bool)

(assert (=> b!624309 (= e!378927 (and tp!194230 tp!194232))))

(declare-fun b!624308 () Bool)

(assert (=> b!624308 (= e!378927 tp_is_empty!3613)))

(declare-fun b!624311 () Bool)

(declare-fun tp!194233 () Bool)

(declare-fun tp!194229 () Bool)

(assert (=> b!624311 (= e!378927 (and tp!194233 tp!194229))))

(assert (=> b!623412 (= tp!193754 e!378927)))

(assert (= (and b!623412 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624308))

(assert (= (and b!623412 ((_ is Concat!2977) (regOne!3798 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624309))

(assert (= (and b!623412 ((_ is Star!1643) (regOne!3798 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624310))

(assert (= (and b!623412 ((_ is Union!1643) (regOne!3798 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624311))

(declare-fun b!624314 () Bool)

(declare-fun e!378928 () Bool)

(declare-fun tp!194236 () Bool)

(assert (=> b!624314 (= e!378928 tp!194236)))

(declare-fun b!624313 () Bool)

(declare-fun tp!194235 () Bool)

(declare-fun tp!194237 () Bool)

(assert (=> b!624313 (= e!378928 (and tp!194235 tp!194237))))

(declare-fun b!624312 () Bool)

(assert (=> b!624312 (= e!378928 tp_is_empty!3613)))

(declare-fun b!624315 () Bool)

(declare-fun tp!194238 () Bool)

(declare-fun tp!194234 () Bool)

(assert (=> b!624315 (= e!378928 (and tp!194238 tp!194234))))

(assert (=> b!623412 (= tp!193756 e!378928)))

(assert (= (and b!623412 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624312))

(assert (= (and b!623412 ((_ is Concat!2977) (regTwo!3798 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624313))

(assert (= (and b!623412 ((_ is Star!1643) (regTwo!3798 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624314))

(assert (= (and b!623412 ((_ is Union!1643) (regTwo!3798 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624315))

(declare-fun b!624319 () Bool)

(declare-fun b_free!18281 () Bool)

(declare-fun b_next!18297 () Bool)

(assert (=> b!624319 (= b_free!18281 (not b_next!18297))))

(declare-fun tp!194242 () Bool)

(declare-fun b_and!62007 () Bool)

(assert (=> b!624319 (= tp!194242 b_and!62007)))

(declare-fun b_free!18283 () Bool)

(declare-fun b_next!18299 () Bool)

(assert (=> b!624319 (= b_free!18283 (not b_next!18299))))

(declare-fun tb!54175 () Bool)

(declare-fun t!82104 () Bool)

(assert (=> (and b!624319 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82104) tb!54175))

(declare-fun result!61186 () Bool)

(assert (= result!61186 result!61134))

(assert (=> d!218495 t!82104))

(declare-fun tb!54177 () Bool)

(declare-fun t!82106 () Bool)

(assert (=> (and b!624319 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!82106) tb!54177))

(declare-fun result!61188 () Bool)

(assert (= result!61188 result!61030))

(assert (=> d!217899 t!82106))

(declare-fun tb!54179 () Bool)

(declare-fun t!82108 () Bool)

(assert (=> (and b!624319 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!82108) tb!54179))

(declare-fun result!61190 () Bool)

(assert (= result!61190 result!61014))

(assert (=> b!622606 t!82108))

(declare-fun t!82110 () Bool)

(declare-fun tb!54181 () Bool)

(assert (=> (and b!624319 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!82110) tb!54181))

(declare-fun result!61192 () Bool)

(assert (= result!61192 result!61050))

(assert (=> b!623126 t!82110))

(declare-fun t!82112 () Bool)

(declare-fun tb!54183 () Bool)

(assert (=> (and b!624319 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82112) tb!54183))

(declare-fun result!61194 () Bool)

(assert (= result!61194 result!61114))

(assert (=> b!623764 t!82112))

(declare-fun t!82114 () Bool)

(declare-fun tb!54185 () Bool)

(assert (=> (and b!624319 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82114) tb!54185))

(declare-fun result!61196 () Bool)

(assert (= result!61196 result!61144))

(assert (=> b!624003 t!82114))

(declare-fun t!82116 () Bool)

(declare-fun tb!54187 () Bool)

(assert (=> (and b!624319 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82116) tb!54187))

(declare-fun result!61198 () Bool)

(assert (= result!61198 result!61124))

(assert (=> b!623858 t!82116))

(declare-fun t!82118 () Bool)

(declare-fun tb!54189 () Bool)

(assert (=> (and b!624319 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!82118) tb!54189))

(declare-fun result!61200 () Bool)

(assert (= result!61200 result!61054))

(assert (=> d!218079 t!82118))

(assert (=> d!217891 t!82108))

(declare-fun tp!194243 () Bool)

(declare-fun b_and!62009 () Bool)

(assert (=> b!624319 (= tp!194243 (and (=> t!82112 result!61194) (=> t!82116 result!61198) (=> t!82104 result!61186) (=> t!82110 result!61192) (=> t!82114 result!61196) (=> t!82108 result!61190) (=> t!82106 result!61188) (=> t!82118 result!61200) b_and!62009))))

(declare-fun e!378930 () Bool)

(declare-fun e!378933 () Bool)

(declare-fun tp!194240 () Bool)

(declare-fun b!624317 () Bool)

(assert (=> b!624317 (= e!378933 (and (inv!21 (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) e!378930 tp!194240))))

(declare-fun e!378929 () Bool)

(assert (=> b!624319 (= e!378929 (and tp!194242 tp!194243))))

(declare-fun e!378934 () Bool)

(assert (=> b!623319 (= tp!193664 e!378934)))

(declare-fun tp!194241 () Bool)

(declare-fun b!624316 () Bool)

(assert (=> b!624316 (= e!378934 (and (inv!8148 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))) e!378933 tp!194241))))

(declare-fun tp!194239 () Bool)

(declare-fun b!624318 () Bool)

(assert (=> b!624318 (= e!378930 (and tp!194239 (inv!8141 (tag!1571 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) e!378929))))

(assert (= b!624318 b!624319))

(assert (= b!624317 b!624318))

(assert (= b!624316 b!624317))

(assert (= (and b!623319 ((_ is Cons!6416) (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))) b!624316))

(declare-fun m!892801 () Bool)

(assert (=> b!624317 m!892801))

(declare-fun m!892803 () Bool)

(assert (=> b!624316 m!892803))

(declare-fun m!892805 () Bool)

(assert (=> b!624318 m!892805))

(declare-fun m!892807 () Bool)

(assert (=> b!624318 m!892807))

(declare-fun b!624320 () Bool)

(declare-fun e!378935 () Bool)

(declare-fun tp!194244 () Bool)

(assert (=> b!624320 (= e!378935 (and tp_is_empty!3613 tp!194244))))

(assert (=> b!623318 (= tp!193661 e!378935)))

(assert (= (and b!623318 ((_ is Cons!6415) (t!81932 (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) b!624320))

(declare-fun b!624323 () Bool)

(declare-fun e!378936 () Bool)

(declare-fun tp!194247 () Bool)

(assert (=> b!624323 (= e!378936 tp!194247)))

(declare-fun b!624322 () Bool)

(declare-fun tp!194246 () Bool)

(declare-fun tp!194248 () Bool)

(assert (=> b!624322 (= e!378936 (and tp!194246 tp!194248))))

(declare-fun b!624321 () Bool)

(assert (=> b!624321 (= e!378936 tp_is_empty!3613)))

(declare-fun b!624324 () Bool)

(declare-fun tp!194249 () Bool)

(declare-fun tp!194245 () Bool)

(assert (=> b!624324 (= e!378936 (and tp!194249 tp!194245))))

(assert (=> b!623345 (= tp!193686 e!378936)))

(assert (= (and b!623345 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624321))

(assert (= (and b!623345 ((_ is Concat!2977) (regOne!3798 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624322))

(assert (= (and b!623345 ((_ is Star!1643) (regOne!3798 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624323))

(assert (= (and b!623345 ((_ is Union!1643) (regOne!3798 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624324))

(declare-fun b!624327 () Bool)

(declare-fun e!378937 () Bool)

(declare-fun tp!194252 () Bool)

(assert (=> b!624327 (= e!378937 tp!194252)))

(declare-fun b!624326 () Bool)

(declare-fun tp!194251 () Bool)

(declare-fun tp!194253 () Bool)

(assert (=> b!624326 (= e!378937 (and tp!194251 tp!194253))))

(declare-fun b!624325 () Bool)

(assert (=> b!624325 (= e!378937 tp_is_empty!3613)))

(declare-fun b!624328 () Bool)

(declare-fun tp!194254 () Bool)

(declare-fun tp!194250 () Bool)

(assert (=> b!624328 (= e!378937 (and tp!194254 tp!194250))))

(assert (=> b!623345 (= tp!193688 e!378937)))

(assert (= (and b!623345 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624325))

(assert (= (and b!623345 ((_ is Concat!2977) (regTwo!3798 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624326))

(assert (= (and b!623345 ((_ is Star!1643) (regTwo!3798 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624327))

(assert (= (and b!623345 ((_ is Union!1643) (regTwo!3798 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624328))

(declare-fun b!624331 () Bool)

(declare-fun e!378938 () Bool)

(declare-fun tp!194257 () Bool)

(assert (=> b!624331 (= e!378938 tp!194257)))

(declare-fun b!624330 () Bool)

(declare-fun tp!194256 () Bool)

(declare-fun tp!194258 () Bool)

(assert (=> b!624330 (= e!378938 (and tp!194256 tp!194258))))

(declare-fun b!624329 () Bool)

(assert (=> b!624329 (= e!378938 tp_is_empty!3613)))

(declare-fun b!624332 () Bool)

(declare-fun tp!194259 () Bool)

(declare-fun tp!194255 () Bool)

(assert (=> b!624332 (= e!378938 (and tp!194259 tp!194255))))

(assert (=> b!623305 (= tp!193647 e!378938)))

(assert (= (and b!623305 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624329))

(assert (= (and b!623305 ((_ is Concat!2977) (regOne!3799 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624330))

(assert (= (and b!623305 ((_ is Star!1643) (regOne!3799 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624331))

(assert (= (and b!623305 ((_ is Union!1643) (regOne!3799 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624332))

(declare-fun b!624335 () Bool)

(declare-fun e!378939 () Bool)

(declare-fun tp!194262 () Bool)

(assert (=> b!624335 (= e!378939 tp!194262)))

(declare-fun b!624334 () Bool)

(declare-fun tp!194261 () Bool)

(declare-fun tp!194263 () Bool)

(assert (=> b!624334 (= e!378939 (and tp!194261 tp!194263))))

(declare-fun b!624333 () Bool)

(assert (=> b!624333 (= e!378939 tp_is_empty!3613)))

(declare-fun b!624336 () Bool)

(declare-fun tp!194264 () Bool)

(declare-fun tp!194260 () Bool)

(assert (=> b!624336 (= e!378939 (and tp!194264 tp!194260))))

(assert (=> b!623305 (= tp!193643 e!378939)))

(assert (= (and b!623305 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624333))

(assert (= (and b!623305 ((_ is Concat!2977) (regTwo!3799 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624334))

(assert (= (and b!623305 ((_ is Star!1643) (regTwo!3799 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624335))

(assert (= (and b!623305 ((_ is Union!1643) (regTwo!3799 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624336))

(declare-fun b!624339 () Bool)

(declare-fun e!378940 () Bool)

(declare-fun tp!194267 () Bool)

(assert (=> b!624339 (= e!378940 tp!194267)))

(declare-fun b!624338 () Bool)

(declare-fun tp!194266 () Bool)

(declare-fun tp!194268 () Bool)

(assert (=> b!624338 (= e!378940 (and tp!194266 tp!194268))))

(declare-fun b!624337 () Bool)

(assert (=> b!624337 (= e!378940 tp_is_empty!3613)))

(declare-fun b!624340 () Bool)

(declare-fun tp!194269 () Bool)

(declare-fun tp!194265 () Bool)

(assert (=> b!624340 (= e!378940 (and tp!194269 tp!194265))))

(assert (=> b!623441 (= tp!193785 e!378940)))

(assert (= (and b!623441 ((_ is ElementMatch!1643) (reg!1972 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624337))

(assert (= (and b!623441 ((_ is Concat!2977) (reg!1972 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624338))

(assert (= (and b!623441 ((_ is Star!1643) (reg!1972 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624339))

(assert (= (and b!623441 ((_ is Union!1643) (reg!1972 (reg!1972 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624340))

(declare-fun b!624343 () Bool)

(declare-fun e!378941 () Bool)

(declare-fun tp!194272 () Bool)

(assert (=> b!624343 (= e!378941 tp!194272)))

(declare-fun b!624342 () Bool)

(declare-fun tp!194271 () Bool)

(declare-fun tp!194273 () Bool)

(assert (=> b!624342 (= e!378941 (and tp!194271 tp!194273))))

(declare-fun b!624341 () Bool)

(assert (=> b!624341 (= e!378941 tp_is_empty!3613)))

(declare-fun b!624344 () Bool)

(declare-fun tp!194274 () Bool)

(declare-fun tp!194270 () Bool)

(assert (=> b!624344 (= e!378941 (and tp!194274 tp!194270))))

(assert (=> b!623450 (= tp!193797 e!378941)))

(assert (= (and b!623450 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624341))

(assert (= (and b!623450 ((_ is Concat!2977) (regOne!3799 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624342))

(assert (= (and b!623450 ((_ is Star!1643) (regOne!3799 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624343))

(assert (= (and b!623450 ((_ is Union!1643) (regOne!3799 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624344))

(declare-fun b!624347 () Bool)

(declare-fun e!378942 () Bool)

(declare-fun tp!194277 () Bool)

(assert (=> b!624347 (= e!378942 tp!194277)))

(declare-fun b!624346 () Bool)

(declare-fun tp!194276 () Bool)

(declare-fun tp!194278 () Bool)

(assert (=> b!624346 (= e!378942 (and tp!194276 tp!194278))))

(declare-fun b!624345 () Bool)

(assert (=> b!624345 (= e!378942 tp_is_empty!3613)))

(declare-fun b!624348 () Bool)

(declare-fun tp!194279 () Bool)

(declare-fun tp!194275 () Bool)

(assert (=> b!624348 (= e!378942 (and tp!194279 tp!194275))))

(assert (=> b!623450 (= tp!193793 e!378942)))

(assert (= (and b!623450 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624345))

(assert (= (and b!623450 ((_ is Concat!2977) (regTwo!3799 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624346))

(assert (= (and b!623450 ((_ is Star!1643) (regTwo!3799 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624347))

(assert (= (and b!623450 ((_ is Union!1643) (regTwo!3799 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624348))

(declare-fun b!624351 () Bool)

(declare-fun e!378943 () Bool)

(declare-fun tp!194282 () Bool)

(assert (=> b!624351 (= e!378943 tp!194282)))

(declare-fun b!624350 () Bool)

(declare-fun tp!194281 () Bool)

(declare-fun tp!194283 () Bool)

(assert (=> b!624350 (= e!378943 (and tp!194281 tp!194283))))

(declare-fun b!624349 () Bool)

(assert (=> b!624349 (= e!378943 tp_is_empty!3613)))

(declare-fun b!624352 () Bool)

(declare-fun tp!194284 () Bool)

(declare-fun tp!194280 () Bool)

(assert (=> b!624352 (= e!378943 (and tp!194284 tp!194280))))

(assert (=> b!623379 (= tp!193724 e!378943)))

(assert (= (and b!623379 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624349))

(assert (= (and b!623379 ((_ is Concat!2977) (regOne!3799 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624350))

(assert (= (and b!623379 ((_ is Star!1643) (regOne!3799 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624351))

(assert (= (and b!623379 ((_ is Union!1643) (regOne!3799 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624352))

(declare-fun b!624355 () Bool)

(declare-fun e!378944 () Bool)

(declare-fun tp!194287 () Bool)

(assert (=> b!624355 (= e!378944 tp!194287)))

(declare-fun b!624354 () Bool)

(declare-fun tp!194286 () Bool)

(declare-fun tp!194288 () Bool)

(assert (=> b!624354 (= e!378944 (and tp!194286 tp!194288))))

(declare-fun b!624353 () Bool)

(assert (=> b!624353 (= e!378944 tp_is_empty!3613)))

(declare-fun b!624356 () Bool)

(declare-fun tp!194289 () Bool)

(declare-fun tp!194285 () Bool)

(assert (=> b!624356 (= e!378944 (and tp!194289 tp!194285))))

(assert (=> b!623379 (= tp!193720 e!378944)))

(assert (= (and b!623379 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624353))

(assert (= (and b!623379 ((_ is Concat!2977) (regTwo!3799 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624354))

(assert (= (and b!623379 ((_ is Star!1643) (regTwo!3799 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624355))

(assert (= (and b!623379 ((_ is Union!1643) (regTwo!3799 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624356))

(declare-fun b!624360 () Bool)

(declare-fun b_free!18285 () Bool)

(declare-fun b_next!18301 () Bool)

(assert (=> b!624360 (= b_free!18285 (not b_next!18301))))

(declare-fun tp!194293 () Bool)

(declare-fun b_and!62011 () Bool)

(assert (=> b!624360 (= tp!194293 b_and!62011)))

(declare-fun b_free!18287 () Bool)

(declare-fun b_next!18303 () Bool)

(assert (=> b!624360 (= b_free!18287 (not b_next!18303))))

(declare-fun t!82120 () Bool)

(declare-fun tb!54191 () Bool)

(assert (=> (and b!624360 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82120) tb!54191))

(declare-fun result!61202 () Bool)

(assert (= result!61202 result!61134))

(assert (=> d!218495 t!82120))

(declare-fun t!82122 () Bool)

(declare-fun tb!54193 () Bool)

(assert (=> (and b!624360 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!82122) tb!54193))

(declare-fun result!61204 () Bool)

(assert (= result!61204 result!61030))

(assert (=> d!217899 t!82122))

(declare-fun t!82124 () Bool)

(declare-fun tb!54195 () Bool)

(assert (=> (and b!624360 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!82124) tb!54195))

(declare-fun result!61206 () Bool)

(assert (= result!61206 result!61014))

(assert (=> b!622606 t!82124))

(declare-fun t!82126 () Bool)

(declare-fun tb!54197 () Bool)

(assert (=> (and b!624360 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!82126) tb!54197))

(declare-fun result!61208 () Bool)

(assert (= result!61208 result!61050))

(assert (=> b!623126 t!82126))

(declare-fun t!82128 () Bool)

(declare-fun tb!54199 () Bool)

(assert (=> (and b!624360 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82128) tb!54199))

(declare-fun result!61210 () Bool)

(assert (= result!61210 result!61114))

(assert (=> b!623764 t!82128))

(declare-fun t!82130 () Bool)

(declare-fun tb!54201 () Bool)

(assert (=> (and b!624360 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82130) tb!54201))

(declare-fun result!61212 () Bool)

(assert (= result!61212 result!61144))

(assert (=> b!624003 t!82130))

(declare-fun t!82132 () Bool)

(declare-fun tb!54203 () Bool)

(assert (=> (and b!624360 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82132) tb!54203))

(declare-fun result!61214 () Bool)

(assert (= result!61214 result!61124))

(assert (=> b!623858 t!82132))

(declare-fun t!82134 () Bool)

(declare-fun tb!54205 () Bool)

(assert (=> (and b!624360 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!82134) tb!54205))

(declare-fun result!61216 () Bool)

(assert (= result!61216 result!61054))

(assert (=> d!218079 t!82134))

(assert (=> d!217891 t!82124))

(declare-fun tp!194294 () Bool)

(declare-fun b_and!62013 () Bool)

(assert (=> b!624360 (= tp!194294 (and (=> t!82128 result!61210) (=> t!82120 result!61202) (=> t!82126 result!61208) (=> t!82130 result!61212) (=> t!82122 result!61204) (=> t!82132 result!61214) (=> t!82134 result!61216) (=> t!82124 result!61206) b_and!62013))))

(declare-fun e!378946 () Bool)

(declare-fun e!378949 () Bool)

(declare-fun tp!194291 () Bool)

(declare-fun b!624358 () Bool)

(assert (=> b!624358 (= e!378949 (and (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361)))))))) e!378946 tp!194291))))

(declare-fun e!378945 () Bool)

(assert (=> b!624360 (= e!378945 (and tp!194293 tp!194294))))

(declare-fun e!378950 () Bool)

(assert (=> b!623311 (= tp!193651 e!378950)))

(declare-fun b!624357 () Bool)

(declare-fun tp!194292 () Bool)

(assert (=> b!624357 (= e!378950 (and (inv!8148 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))) e!378949 tp!194292))))

(declare-fun b!624359 () Bool)

(declare-fun tp!194290 () Bool)

(assert (=> b!624359 (= e!378946 (and tp!194290 (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) e!378945))))

(assert (= b!624359 b!624360))

(assert (= b!624358 b!624359))

(assert (= b!624357 b!624358))

(assert (= (and b!623311 ((_ is Cons!6416) (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))) b!624357))

(declare-fun m!892809 () Bool)

(assert (=> b!624358 m!892809))

(declare-fun m!892811 () Bool)

(assert (=> b!624357 m!892811))

(declare-fun m!892813 () Bool)

(assert (=> b!624359 m!892813))

(declare-fun m!892815 () Bool)

(assert (=> b!624359 m!892815))

(declare-fun b!624361 () Bool)

(declare-fun tp!194297 () Bool)

(declare-fun e!378952 () Bool)

(declare-fun tp!194296 () Bool)

(assert (=> b!624361 (= e!378952 (and (inv!8146 (left!5088 (left!5088 (left!5088 (left!5088 (c!114443 v!6361)))))) tp!194297 (inv!8146 (right!5418 (left!5088 (left!5088 (left!5088 (c!114443 v!6361)))))) tp!194296))))

(declare-fun b!624363 () Bool)

(declare-fun e!378951 () Bool)

(declare-fun tp!194295 () Bool)

(assert (=> b!624363 (= e!378951 tp!194295)))

(declare-fun b!624362 () Bool)

(assert (=> b!624362 (= e!378952 (and (inv!8158 (xs!4697 (left!5088 (left!5088 (left!5088 (c!114443 v!6361)))))) e!378951))))

(assert (=> b!623306 (= tp!193650 (and (inv!8146 (left!5088 (left!5088 (left!5088 (c!114443 v!6361))))) e!378952))))

(assert (= (and b!623306 ((_ is Node!2060) (left!5088 (left!5088 (left!5088 (c!114443 v!6361)))))) b!624361))

(assert (= b!624362 b!624363))

(assert (= (and b!623306 ((_ is Leaf!3223) (left!5088 (left!5088 (left!5088 (c!114443 v!6361)))))) b!624362))

(declare-fun m!892817 () Bool)

(assert (=> b!624361 m!892817))

(declare-fun m!892819 () Bool)

(assert (=> b!624361 m!892819))

(declare-fun m!892821 () Bool)

(assert (=> b!624362 m!892821))

(assert (=> b!623306 m!891649))

(declare-fun e!378954 () Bool)

(declare-fun b!624364 () Bool)

(declare-fun tp!194299 () Bool)

(declare-fun tp!194300 () Bool)

(assert (=> b!624364 (= e!378954 (and (inv!8146 (left!5088 (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))) tp!194300 (inv!8146 (right!5418 (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))) tp!194299))))

(declare-fun b!624366 () Bool)

(declare-fun e!378953 () Bool)

(declare-fun tp!194298 () Bool)

(assert (=> b!624366 (= e!378953 tp!194298)))

(declare-fun b!624365 () Bool)

(assert (=> b!624365 (= e!378954 (and (inv!8158 (xs!4697 (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))) e!378953))))

(assert (=> b!623306 (= tp!193649 (and (inv!8146 (right!5418 (left!5088 (left!5088 (c!114443 v!6361))))) e!378954))))

(assert (= (and b!623306 ((_ is Node!2060) (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))) b!624364))

(assert (= b!624365 b!624366))

(assert (= (and b!623306 ((_ is Leaf!3223) (right!5418 (left!5088 (left!5088 (c!114443 v!6361)))))) b!624365))

(declare-fun m!892823 () Bool)

(assert (=> b!624364 m!892823))

(declare-fun m!892825 () Bool)

(assert (=> b!624364 m!892825))

(declare-fun m!892827 () Bool)

(assert (=> b!624365 m!892827))

(assert (=> b!623306 m!891651))

(declare-fun b!624369 () Bool)

(declare-fun e!378955 () Bool)

(declare-fun tp!194303 () Bool)

(assert (=> b!624369 (= e!378955 tp!194303)))

(declare-fun b!624368 () Bool)

(declare-fun tp!194302 () Bool)

(declare-fun tp!194304 () Bool)

(assert (=> b!624368 (= e!378955 (and tp!194302 tp!194304))))

(declare-fun b!624367 () Bool)

(assert (=> b!624367 (= e!378955 tp_is_empty!3613)))

(declare-fun b!624370 () Bool)

(declare-fun tp!194305 () Bool)

(declare-fun tp!194301 () Bool)

(assert (=> b!624370 (= e!378955 (and tp!194305 tp!194301))))

(assert (=> b!623426 (= tp!193767 e!378955)))

(assert (= (and b!623426 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624367))

(assert (= (and b!623426 ((_ is Concat!2977) (regOne!3799 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624368))

(assert (= (and b!623426 ((_ is Star!1643) (regOne!3799 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624369))

(assert (= (and b!623426 ((_ is Union!1643) (regOne!3799 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624370))

(declare-fun b!624373 () Bool)

(declare-fun e!378956 () Bool)

(declare-fun tp!194308 () Bool)

(assert (=> b!624373 (= e!378956 tp!194308)))

(declare-fun b!624372 () Bool)

(declare-fun tp!194307 () Bool)

(declare-fun tp!194309 () Bool)

(assert (=> b!624372 (= e!378956 (and tp!194307 tp!194309))))

(declare-fun b!624371 () Bool)

(assert (=> b!624371 (= e!378956 tp_is_empty!3613)))

(declare-fun b!624374 () Bool)

(declare-fun tp!194310 () Bool)

(declare-fun tp!194306 () Bool)

(assert (=> b!624374 (= e!378956 (and tp!194310 tp!194306))))

(assert (=> b!623426 (= tp!193763 e!378956)))

(assert (= (and b!623426 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624371))

(assert (= (and b!623426 ((_ is Concat!2977) (regTwo!3799 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624372))

(assert (= (and b!623426 ((_ is Star!1643) (regTwo!3799 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624373))

(assert (= (and b!623426 ((_ is Union!1643) (regTwo!3799 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624374))

(declare-fun b!624377 () Bool)

(declare-fun e!378957 () Bool)

(declare-fun tp!194313 () Bool)

(assert (=> b!624377 (= e!378957 tp!194313)))

(declare-fun b!624376 () Bool)

(declare-fun tp!194312 () Bool)

(declare-fun tp!194314 () Bool)

(assert (=> b!624376 (= e!378957 (and tp!194312 tp!194314))))

(declare-fun b!624375 () Bool)

(assert (=> b!624375 (= e!378957 tp_is_empty!3613)))

(declare-fun b!624378 () Bool)

(declare-fun tp!194315 () Bool)

(declare-fun tp!194311 () Bool)

(assert (=> b!624378 (= e!378957 (and tp!194315 tp!194311))))

(assert (=> b!623438 (= tp!193782 e!378957)))

(assert (= (and b!623438 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624375))

(assert (= (and b!623438 ((_ is Concat!2977) (regOne!3799 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624376))

(assert (= (and b!623438 ((_ is Star!1643) (regOne!3799 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624377))

(assert (= (and b!623438 ((_ is Union!1643) (regOne!3799 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624378))

(declare-fun b!624381 () Bool)

(declare-fun e!378958 () Bool)

(declare-fun tp!194318 () Bool)

(assert (=> b!624381 (= e!378958 tp!194318)))

(declare-fun b!624380 () Bool)

(declare-fun tp!194317 () Bool)

(declare-fun tp!194319 () Bool)

(assert (=> b!624380 (= e!378958 (and tp!194317 tp!194319))))

(declare-fun b!624379 () Bool)

(assert (=> b!624379 (= e!378958 tp_is_empty!3613)))

(declare-fun b!624382 () Bool)

(declare-fun tp!194320 () Bool)

(declare-fun tp!194316 () Bool)

(assert (=> b!624382 (= e!378958 (and tp!194320 tp!194316))))

(assert (=> b!623438 (= tp!193778 e!378958)))

(assert (= (and b!623438 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624379))

(assert (= (and b!623438 ((_ is Concat!2977) (regTwo!3799 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624380))

(assert (= (and b!623438 ((_ is Star!1643) (regTwo!3799 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624381))

(assert (= (and b!623438 ((_ is Union!1643) (regTwo!3799 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624382))

(declare-fun b!624383 () Bool)

(declare-fun e!378959 () Bool)

(declare-fun tp!194321 () Bool)

(assert (=> b!624383 (= e!378959 (and tp_is_empty!3613 tp!194321))))

(assert (=> b!623387 (= tp!193732 e!378959)))

(assert (= (and b!623387 ((_ is Cons!6415) (innerList!2117 (xs!4696 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))) b!624383))

(declare-fun b!624386 () Bool)

(declare-fun e!378960 () Bool)

(declare-fun tp!194324 () Bool)

(assert (=> b!624386 (= e!378960 tp!194324)))

(declare-fun b!624385 () Bool)

(declare-fun tp!194323 () Bool)

(declare-fun tp!194325 () Bool)

(assert (=> b!624385 (= e!378960 (and tp!194323 tp!194325))))

(declare-fun b!624384 () Bool)

(assert (=> b!624384 (= e!378960 tp_is_empty!3613)))

(declare-fun b!624387 () Bool)

(declare-fun tp!194326 () Bool)

(declare-fun tp!194322 () Bool)

(assert (=> b!624387 (= e!378960 (and tp!194326 tp!194322))))

(assert (=> b!623299 (= tp!193642 e!378960)))

(assert (= (and b!623299 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624384))

(assert (= (and b!623299 ((_ is Concat!2977) (regOne!3799 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624385))

(assert (= (and b!623299 ((_ is Star!1643) (regOne!3799 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624386))

(assert (= (and b!623299 ((_ is Union!1643) (regOne!3799 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624387))

(declare-fun b!624390 () Bool)

(declare-fun e!378961 () Bool)

(declare-fun tp!194329 () Bool)

(assert (=> b!624390 (= e!378961 tp!194329)))

(declare-fun b!624389 () Bool)

(declare-fun tp!194328 () Bool)

(declare-fun tp!194330 () Bool)

(assert (=> b!624389 (= e!378961 (and tp!194328 tp!194330))))

(declare-fun b!624388 () Bool)

(assert (=> b!624388 (= e!378961 tp_is_empty!3613)))

(declare-fun b!624391 () Bool)

(declare-fun tp!194331 () Bool)

(declare-fun tp!194327 () Bool)

(assert (=> b!624391 (= e!378961 (and tp!194331 tp!194327))))

(assert (=> b!623299 (= tp!193638 e!378961)))

(assert (= (and b!623299 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624388))

(assert (= (and b!623299 ((_ is Concat!2977) (regTwo!3799 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624389))

(assert (= (and b!623299 ((_ is Star!1643) (regTwo!3799 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624390))

(assert (= (and b!623299 ((_ is Union!1643) (regTwo!3799 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624391))

(declare-fun b!624392 () Bool)

(declare-fun e!378962 () Bool)

(declare-fun tp!194332 () Bool)

(assert (=> b!624392 (= e!378962 (and tp_is_empty!3613 tp!194332))))

(assert (=> b!623333 (= tp!193673 e!378962)))

(assert (= (and b!623333 ((_ is Cons!6415) (innerList!2117 (xs!4696 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))))) b!624392))

(declare-fun b!624395 () Bool)

(declare-fun e!378963 () Bool)

(declare-fun tp!194335 () Bool)

(assert (=> b!624395 (= e!378963 tp!194335)))

(declare-fun b!624394 () Bool)

(declare-fun tp!194334 () Bool)

(declare-fun tp!194336 () Bool)

(assert (=> b!624394 (= e!378963 (and tp!194334 tp!194336))))

(declare-fun b!624393 () Bool)

(assert (=> b!624393 (= e!378963 tp_is_empty!3613)))

(declare-fun b!624396 () Bool)

(declare-fun tp!194337 () Bool)

(declare-fun tp!194333 () Bool)

(assert (=> b!624396 (= e!378963 (and tp!194337 tp!194333))))

(assert (=> b!623374 (= tp!193717 e!378963)))

(assert (= (and b!623374 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624393))

(assert (= (and b!623374 ((_ is Concat!2977) (reg!1972 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624394))

(assert (= (and b!623374 ((_ is Star!1643) (reg!1972 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624395))

(assert (= (and b!623374 ((_ is Union!1643) (reg!1972 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624396))

(declare-fun b!624399 () Bool)

(declare-fun e!378964 () Bool)

(declare-fun tp!194340 () Bool)

(assert (=> b!624399 (= e!378964 tp!194340)))

(declare-fun b!624398 () Bool)

(declare-fun tp!194339 () Bool)

(declare-fun tp!194341 () Bool)

(assert (=> b!624398 (= e!378964 (and tp!194339 tp!194341))))

(declare-fun b!624397 () Bool)

(assert (=> b!624397 (= e!378964 tp_is_empty!3613)))

(declare-fun b!624400 () Bool)

(declare-fun tp!194342 () Bool)

(declare-fun tp!194338 () Bool)

(assert (=> b!624400 (= e!378964 (and tp!194342 tp!194338))))

(assert (=> b!623408 (= tp!193749 e!378964)))

(assert (= (and b!623408 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624397))

(assert (= (and b!623408 ((_ is Concat!2977) (regOne!3798 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624398))

(assert (= (and b!623408 ((_ is Star!1643) (regOne!3798 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624399))

(assert (= (and b!623408 ((_ is Union!1643) (regOne!3798 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624400))

(declare-fun b!624403 () Bool)

(declare-fun e!378965 () Bool)

(declare-fun tp!194345 () Bool)

(assert (=> b!624403 (= e!378965 tp!194345)))

(declare-fun b!624402 () Bool)

(declare-fun tp!194344 () Bool)

(declare-fun tp!194346 () Bool)

(assert (=> b!624402 (= e!378965 (and tp!194344 tp!194346))))

(declare-fun b!624401 () Bool)

(assert (=> b!624401 (= e!378965 tp_is_empty!3613)))

(declare-fun b!624404 () Bool)

(declare-fun tp!194347 () Bool)

(declare-fun tp!194343 () Bool)

(assert (=> b!624404 (= e!378965 (and tp!194347 tp!194343))))

(assert (=> b!623408 (= tp!193751 e!378965)))

(assert (= (and b!623408 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624401))

(assert (= (and b!623408 ((_ is Concat!2977) (regTwo!3798 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624402))

(assert (= (and b!623408 ((_ is Star!1643) (regTwo!3798 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624403))

(assert (= (and b!623408 ((_ is Union!1643) (regTwo!3798 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624404))

(declare-fun b!624407 () Bool)

(declare-fun e!378966 () Bool)

(declare-fun tp!194350 () Bool)

(assert (=> b!624407 (= e!378966 tp!194350)))

(declare-fun b!624406 () Bool)

(declare-fun tp!194349 () Bool)

(declare-fun tp!194351 () Bool)

(assert (=> b!624406 (= e!378966 (and tp!194349 tp!194351))))

(declare-fun b!624405 () Bool)

(assert (=> b!624405 (= e!378966 tp_is_empty!3613)))

(declare-fun b!624408 () Bool)

(declare-fun tp!194352 () Bool)

(declare-fun tp!194348 () Bool)

(assert (=> b!624408 (= e!378966 (and tp!194352 tp!194348))))

(assert (=> b!623361 (= tp!193704 e!378966)))

(assert (= (and b!623361 ((_ is ElementMatch!1643) (regOne!3799 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624405))

(assert (= (and b!623361 ((_ is Concat!2977) (regOne!3799 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624406))

(assert (= (and b!623361 ((_ is Star!1643) (regOne!3799 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624407))

(assert (= (and b!623361 ((_ is Union!1643) (regOne!3799 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624408))

(declare-fun b!624411 () Bool)

(declare-fun e!378967 () Bool)

(declare-fun tp!194355 () Bool)

(assert (=> b!624411 (= e!378967 tp!194355)))

(declare-fun b!624410 () Bool)

(declare-fun tp!194354 () Bool)

(declare-fun tp!194356 () Bool)

(assert (=> b!624410 (= e!378967 (and tp!194354 tp!194356))))

(declare-fun b!624409 () Bool)

(assert (=> b!624409 (= e!378967 tp_is_empty!3613)))

(declare-fun b!624412 () Bool)

(declare-fun tp!194357 () Bool)

(declare-fun tp!194353 () Bool)

(assert (=> b!624412 (= e!378967 (and tp!194357 tp!194353))))

(assert (=> b!623361 (= tp!193700 e!378967)))

(assert (= (and b!623361 ((_ is ElementMatch!1643) (regTwo!3799 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624409))

(assert (= (and b!623361 ((_ is Concat!2977) (regTwo!3799 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624410))

(assert (= (and b!623361 ((_ is Star!1643) (regTwo!3799 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624411))

(assert (= (and b!623361 ((_ is Union!1643) (regTwo!3799 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624412))

(declare-fun b!624413 () Bool)

(declare-fun e!378968 () Bool)

(declare-fun tp!194358 () Bool)

(assert (=> b!624413 (= e!378968 (and tp_is_empty!3613 tp!194358))))

(assert (=> b!623390 (= tp!193735 e!378968)))

(assert (= (and b!623390 ((_ is Cons!6415) (innerList!2117 (xs!4696 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))))) b!624413))

(declare-fun b!624416 () Bool)

(declare-fun e!378969 () Bool)

(declare-fun tp!194361 () Bool)

(assert (=> b!624416 (= e!378969 tp!194361)))

(declare-fun b!624415 () Bool)

(declare-fun tp!194360 () Bool)

(declare-fun tp!194362 () Bool)

(assert (=> b!624415 (= e!378969 (and tp!194360 tp!194362))))

(declare-fun b!624414 () Bool)

(assert (=> b!624414 (= e!378969 tp_is_empty!3613)))

(declare-fun b!624417 () Bool)

(declare-fun tp!194363 () Bool)

(declare-fun tp!194359 () Bool)

(assert (=> b!624417 (= e!378969 (and tp!194363 tp!194359))))

(assert (=> b!623295 (= tp!193637 e!378969)))

(assert (= (and b!623295 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624414))

(assert (= (and b!623295 ((_ is Concat!2977) (regOne!3799 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624415))

(assert (= (and b!623295 ((_ is Star!1643) (regOne!3799 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624416))

(assert (= (and b!623295 ((_ is Union!1643) (regOne!3799 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624417))

(declare-fun b!624420 () Bool)

(declare-fun e!378970 () Bool)

(declare-fun tp!194366 () Bool)

(assert (=> b!624420 (= e!378970 tp!194366)))

(declare-fun b!624419 () Bool)

(declare-fun tp!194365 () Bool)

(declare-fun tp!194367 () Bool)

(assert (=> b!624419 (= e!378970 (and tp!194365 tp!194367))))

(declare-fun b!624418 () Bool)

(assert (=> b!624418 (= e!378970 tp_is_empty!3613)))

(declare-fun b!624421 () Bool)

(declare-fun tp!194368 () Bool)

(declare-fun tp!194364 () Bool)

(assert (=> b!624421 (= e!378970 (and tp!194368 tp!194364))))

(assert (=> b!623295 (= tp!193633 e!378970)))

(assert (= (and b!623295 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624418))

(assert (= (and b!623295 ((_ is Concat!2977) (regTwo!3799 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624419))

(assert (= (and b!623295 ((_ is Star!1643) (regTwo!3799 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624420))

(assert (= (and b!623295 ((_ is Union!1643) (regTwo!3799 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624421))

(declare-fun b!624424 () Bool)

(declare-fun e!378971 () Bool)

(declare-fun tp!194371 () Bool)

(assert (=> b!624424 (= e!378971 tp!194371)))

(declare-fun b!624423 () Bool)

(declare-fun tp!194370 () Bool)

(declare-fun tp!194372 () Bool)

(assert (=> b!624423 (= e!378971 (and tp!194370 tp!194372))))

(declare-fun b!624422 () Bool)

(assert (=> b!624422 (= e!378971 tp_is_empty!3613)))

(declare-fun b!624425 () Bool)

(declare-fun tp!194373 () Bool)

(declare-fun tp!194369 () Bool)

(assert (=> b!624425 (= e!378971 (and tp!194373 tp!194369))))

(assert (=> b!623357 (= tp!193699 e!378971)))

(assert (= (and b!623357 ((_ is ElementMatch!1643) (regOne!3799 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624422))

(assert (= (and b!623357 ((_ is Concat!2977) (regOne!3799 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624423))

(assert (= (and b!623357 ((_ is Star!1643) (regOne!3799 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624424))

(assert (= (and b!623357 ((_ is Union!1643) (regOne!3799 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624425))

(declare-fun b!624428 () Bool)

(declare-fun e!378972 () Bool)

(declare-fun tp!194376 () Bool)

(assert (=> b!624428 (= e!378972 tp!194376)))

(declare-fun b!624427 () Bool)

(declare-fun tp!194375 () Bool)

(declare-fun tp!194377 () Bool)

(assert (=> b!624427 (= e!378972 (and tp!194375 tp!194377))))

(declare-fun b!624426 () Bool)

(assert (=> b!624426 (= e!378972 tp_is_empty!3613)))

(declare-fun b!624429 () Bool)

(declare-fun tp!194378 () Bool)

(declare-fun tp!194374 () Bool)

(assert (=> b!624429 (= e!378972 (and tp!194378 tp!194374))))

(assert (=> b!623357 (= tp!193695 e!378972)))

(assert (= (and b!623357 ((_ is ElementMatch!1643) (regTwo!3799 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624426))

(assert (= (and b!623357 ((_ is Concat!2977) (regTwo!3799 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624427))

(assert (= (and b!623357 ((_ is Star!1643) (regTwo!3799 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624428))

(assert (= (and b!623357 ((_ is Union!1643) (regTwo!3799 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624429))

(declare-fun b!624430 () Bool)

(declare-fun e!378973 () Bool)

(declare-fun tp!194379 () Bool)

(assert (=> b!624430 (= e!378973 (and tp_is_empty!3613 tp!194379))))

(assert (=> b!623314 (= tp!193656 e!378973)))

(assert (= (and b!623314 ((_ is Cons!6415) (originalCharacters!1342 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) b!624430))

(declare-fun b!624433 () Bool)

(declare-fun e!378974 () Bool)

(declare-fun tp!194382 () Bool)

(assert (=> b!624433 (= e!378974 tp!194382)))

(declare-fun b!624432 () Bool)

(declare-fun tp!194381 () Bool)

(declare-fun tp!194383 () Bool)

(assert (=> b!624432 (= e!378974 (and tp!194381 tp!194383))))

(declare-fun b!624431 () Bool)

(assert (=> b!624431 (= e!378974 tp_is_empty!3613)))

(declare-fun b!624434 () Bool)

(declare-fun tp!194384 () Bool)

(declare-fun tp!194380 () Bool)

(assert (=> b!624434 (= e!378974 (and tp!194384 tp!194380))))

(assert (=> b!623432 (= tp!193774 e!378974)))

(assert (= (and b!623432 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624431))

(assert (= (and b!623432 ((_ is Concat!2977) (regOne!3798 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624432))

(assert (= (and b!623432 ((_ is Star!1643) (regOne!3798 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624433))

(assert (= (and b!623432 ((_ is Union!1643) (regOne!3798 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624434))

(declare-fun b!624437 () Bool)

(declare-fun e!378975 () Bool)

(declare-fun tp!194387 () Bool)

(assert (=> b!624437 (= e!378975 tp!194387)))

(declare-fun b!624436 () Bool)

(declare-fun tp!194386 () Bool)

(declare-fun tp!194388 () Bool)

(assert (=> b!624436 (= e!378975 (and tp!194386 tp!194388))))

(declare-fun b!624435 () Bool)

(assert (=> b!624435 (= e!378975 tp_is_empty!3613)))

(declare-fun b!624438 () Bool)

(declare-fun tp!194389 () Bool)

(declare-fun tp!194385 () Bool)

(assert (=> b!624438 (= e!378975 (and tp!194389 tp!194385))))

(assert (=> b!623432 (= tp!193776 e!378975)))

(assert (= (and b!623432 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624435))

(assert (= (and b!623432 ((_ is Concat!2977) (regTwo!3798 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624436))

(assert (= (and b!623432 ((_ is Star!1643) (regTwo!3798 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624437))

(assert (= (and b!623432 ((_ is Union!1643) (regTwo!3798 (regOne!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624438))

(declare-fun b!624441 () Bool)

(declare-fun e!378976 () Bool)

(declare-fun tp!194392 () Bool)

(assert (=> b!624441 (= e!378976 tp!194392)))

(declare-fun b!624440 () Bool)

(declare-fun tp!194391 () Bool)

(declare-fun tp!194393 () Bool)

(assert (=> b!624440 (= e!378976 (and tp!194391 tp!194393))))

(declare-fun b!624439 () Bool)

(assert (=> b!624439 (= e!378976 tp_is_empty!3613)))

(declare-fun b!624442 () Bool)

(declare-fun tp!194394 () Bool)

(declare-fun tp!194390 () Bool)

(assert (=> b!624442 (= e!378976 (and tp!194394 tp!194390))))

(assert (=> b!623446 (= tp!193792 e!378976)))

(assert (= (and b!623446 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624439))

(assert (= (and b!623446 ((_ is Concat!2977) (regOne!3799 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624440))

(assert (= (and b!623446 ((_ is Star!1643) (regOne!3799 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624441))

(assert (= (and b!623446 ((_ is Union!1643) (regOne!3799 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624442))

(declare-fun b!624445 () Bool)

(declare-fun e!378977 () Bool)

(declare-fun tp!194397 () Bool)

(assert (=> b!624445 (= e!378977 tp!194397)))

(declare-fun b!624444 () Bool)

(declare-fun tp!194396 () Bool)

(declare-fun tp!194398 () Bool)

(assert (=> b!624444 (= e!378977 (and tp!194396 tp!194398))))

(declare-fun b!624443 () Bool)

(assert (=> b!624443 (= e!378977 tp_is_empty!3613)))

(declare-fun b!624446 () Bool)

(declare-fun tp!194399 () Bool)

(declare-fun tp!194395 () Bool)

(assert (=> b!624446 (= e!378977 (and tp!194399 tp!194395))))

(assert (=> b!623446 (= tp!193788 e!378977)))

(assert (= (and b!623446 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624443))

(assert (= (and b!623446 ((_ is Concat!2977) (regTwo!3799 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624444))

(assert (= (and b!623446 ((_ is Star!1643) (regTwo!3799 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624445))

(assert (= (and b!623446 ((_ is Union!1643) (regTwo!3799 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624446))

(declare-fun b!624449 () Bool)

(declare-fun e!378978 () Bool)

(declare-fun tp!194402 () Bool)

(assert (=> b!624449 (= e!378978 tp!194402)))

(declare-fun b!624448 () Bool)

(declare-fun tp!194401 () Bool)

(declare-fun tp!194403 () Bool)

(assert (=> b!624448 (= e!378978 (and tp!194401 tp!194403))))

(declare-fun b!624447 () Bool)

(assert (=> b!624447 (= e!378978 tp_is_empty!3613)))

(declare-fun b!624450 () Bool)

(declare-fun tp!194404 () Bool)

(declare-fun tp!194400 () Bool)

(assert (=> b!624450 (= e!378978 (and tp!194404 tp!194400))))

(assert (=> b!623377 (= tp!193721 e!378978)))

(assert (= (and b!623377 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624447))

(assert (= (and b!623377 ((_ is Concat!2977) (regOne!3798 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624448))

(assert (= (and b!623377 ((_ is Star!1643) (regOne!3798 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624449))

(assert (= (and b!623377 ((_ is Union!1643) (regOne!3798 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624450))

(declare-fun b!624453 () Bool)

(declare-fun e!378979 () Bool)

(declare-fun tp!194407 () Bool)

(assert (=> b!624453 (= e!378979 tp!194407)))

(declare-fun b!624452 () Bool)

(declare-fun tp!194406 () Bool)

(declare-fun tp!194408 () Bool)

(assert (=> b!624452 (= e!378979 (and tp!194406 tp!194408))))

(declare-fun b!624451 () Bool)

(assert (=> b!624451 (= e!378979 tp_is_empty!3613)))

(declare-fun b!624454 () Bool)

(declare-fun tp!194409 () Bool)

(declare-fun tp!194405 () Bool)

(assert (=> b!624454 (= e!378979 (and tp!194409 tp!194405))))

(assert (=> b!623377 (= tp!193723 e!378979)))

(assert (= (and b!623377 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624451))

(assert (= (and b!623377 ((_ is Concat!2977) (regTwo!3798 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624452))

(assert (= (and b!623377 ((_ is Star!1643) (regTwo!3798 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624453))

(assert (= (and b!623377 ((_ is Union!1643) (regTwo!3798 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624454))

(declare-fun b!624457 () Bool)

(declare-fun e!378980 () Bool)

(declare-fun tp!194412 () Bool)

(assert (=> b!624457 (= e!378980 tp!194412)))

(declare-fun b!624456 () Bool)

(declare-fun tp!194411 () Bool)

(declare-fun tp!194413 () Bool)

(assert (=> b!624456 (= e!378980 (and tp!194411 tp!194413))))

(declare-fun b!624455 () Bool)

(assert (=> b!624455 (= e!378980 tp_is_empty!3613)))

(declare-fun b!624458 () Bool)

(declare-fun tp!194414 () Bool)

(declare-fun tp!194410 () Bool)

(assert (=> b!624458 (= e!378980 (and tp!194414 tp!194410))))

(assert (=> b!623366 (= tp!193707 e!378980)))

(assert (= (and b!623366 ((_ is ElementMatch!1643) (reg!1972 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624455))

(assert (= (and b!623366 ((_ is Concat!2977) (reg!1972 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624456))

(assert (= (and b!623366 ((_ is Star!1643) (reg!1972 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624457))

(assert (= (and b!623366 ((_ is Union!1643) (reg!1972 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624458))

(declare-fun b!624461 () Bool)

(declare-fun e!378981 () Bool)

(declare-fun tp!194417 () Bool)

(assert (=> b!624461 (= e!378981 tp!194417)))

(declare-fun b!624460 () Bool)

(declare-fun tp!194416 () Bool)

(declare-fun tp!194418 () Bool)

(assert (=> b!624460 (= e!378981 (and tp!194416 tp!194418))))

(declare-fun b!624459 () Bool)

(assert (=> b!624459 (= e!378981 tp_is_empty!3613)))

(declare-fun b!624462 () Bool)

(declare-fun tp!194419 () Bool)

(declare-fun tp!194415 () Bool)

(assert (=> b!624462 (= e!378981 (and tp!194419 tp!194415))))

(assert (=> b!623422 (= tp!193762 e!378981)))

(assert (= (and b!623422 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624459))

(assert (= (and b!623422 ((_ is Concat!2977) (regOne!3799 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624460))

(assert (= (and b!623422 ((_ is Star!1643) (regOne!3799 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624461))

(assert (= (and b!623422 ((_ is Union!1643) (regOne!3799 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624462))

(declare-fun b!624465 () Bool)

(declare-fun e!378982 () Bool)

(declare-fun tp!194422 () Bool)

(assert (=> b!624465 (= e!378982 tp!194422)))

(declare-fun b!624464 () Bool)

(declare-fun tp!194421 () Bool)

(declare-fun tp!194423 () Bool)

(assert (=> b!624464 (= e!378982 (and tp!194421 tp!194423))))

(declare-fun b!624463 () Bool)

(assert (=> b!624463 (= e!378982 tp_is_empty!3613)))

(declare-fun b!624466 () Bool)

(declare-fun tp!194424 () Bool)

(declare-fun tp!194420 () Bool)

(assert (=> b!624466 (= e!378982 (and tp!194424 tp!194420))))

(assert (=> b!623422 (= tp!193758 e!378982)))

(assert (= (and b!623422 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624463))

(assert (= (and b!623422 ((_ is Concat!2977) (regTwo!3799 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624464))

(assert (= (and b!623422 ((_ is Star!1643) (regTwo!3799 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624465))

(assert (= (and b!623422 ((_ is Union!1643) (regTwo!3799 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624466))

(declare-fun b!624469 () Bool)

(declare-fun e!378983 () Bool)

(declare-fun tp!194427 () Bool)

(assert (=> b!624469 (= e!378983 tp!194427)))

(declare-fun b!624468 () Bool)

(declare-fun tp!194426 () Bool)

(declare-fun tp!194428 () Bool)

(assert (=> b!624468 (= e!378983 (and tp!194426 tp!194428))))

(declare-fun b!624467 () Bool)

(assert (=> b!624467 (= e!378983 tp_is_empty!3613)))

(declare-fun b!624470 () Bool)

(declare-fun tp!194429 () Bool)

(declare-fun tp!194425 () Bool)

(assert (=> b!624470 (= e!378983 (and tp!194429 tp!194425))))

(assert (=> b!623328 (= tp!193668 e!378983)))

(assert (= (and b!623328 ((_ is ElementMatch!1643) (regOne!3798 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624467))

(assert (= (and b!623328 ((_ is Concat!2977) (regOne!3798 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624468))

(assert (= (and b!623328 ((_ is Star!1643) (regOne!3798 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624469))

(assert (= (and b!623328 ((_ is Union!1643) (regOne!3798 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624470))

(declare-fun b!624473 () Bool)

(declare-fun e!378984 () Bool)

(declare-fun tp!194432 () Bool)

(assert (=> b!624473 (= e!378984 tp!194432)))

(declare-fun b!624472 () Bool)

(declare-fun tp!194431 () Bool)

(declare-fun tp!194433 () Bool)

(assert (=> b!624472 (= e!378984 (and tp!194431 tp!194433))))

(declare-fun b!624471 () Bool)

(assert (=> b!624471 (= e!378984 tp_is_empty!3613)))

(declare-fun b!624474 () Bool)

(declare-fun tp!194434 () Bool)

(declare-fun tp!194430 () Bool)

(assert (=> b!624474 (= e!378984 (and tp!194434 tp!194430))))

(assert (=> b!623328 (= tp!193670 e!378984)))

(assert (= (and b!623328 ((_ is ElementMatch!1643) (regTwo!3798 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624471))

(assert (= (and b!623328 ((_ is Concat!2977) (regTwo!3798 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624472))

(assert (= (and b!623328 ((_ is Star!1643) (regTwo!3798 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624473))

(assert (= (and b!623328 ((_ is Union!1643) (regTwo!3798 (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624474))

(declare-fun b!624477 () Bool)

(declare-fun e!378985 () Bool)

(declare-fun tp!194437 () Bool)

(assert (=> b!624477 (= e!378985 tp!194437)))

(declare-fun b!624476 () Bool)

(declare-fun tp!194436 () Bool)

(declare-fun tp!194438 () Bool)

(assert (=> b!624476 (= e!378985 (and tp!194436 tp!194438))))

(declare-fun b!624475 () Bool)

(assert (=> b!624475 (= e!378985 tp_is_empty!3613)))

(declare-fun b!624478 () Bool)

(declare-fun tp!194439 () Bool)

(declare-fun tp!194435 () Bool)

(assert (=> b!624478 (= e!378985 (and tp!194439 tp!194435))))

(assert (=> b!623448 (= tp!193794 e!378985)))

(assert (= (and b!623448 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624475))

(assert (= (and b!623448 ((_ is Concat!2977) (regOne!3798 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624476))

(assert (= (and b!623448 ((_ is Star!1643) (regOne!3798 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624477))

(assert (= (and b!623448 ((_ is Union!1643) (regOne!3798 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624478))

(declare-fun b!624481 () Bool)

(declare-fun e!378986 () Bool)

(declare-fun tp!194442 () Bool)

(assert (=> b!624481 (= e!378986 tp!194442)))

(declare-fun b!624480 () Bool)

(declare-fun tp!194441 () Bool)

(declare-fun tp!194443 () Bool)

(assert (=> b!624480 (= e!378986 (and tp!194441 tp!194443))))

(declare-fun b!624479 () Bool)

(assert (=> b!624479 (= e!378986 tp_is_empty!3613)))

(declare-fun b!624482 () Bool)

(declare-fun tp!194444 () Bool)

(declare-fun tp!194440 () Bool)

(assert (=> b!624482 (= e!378986 (and tp!194444 tp!194440))))

(assert (=> b!623448 (= tp!193796 e!378986)))

(assert (= (and b!623448 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624479))

(assert (= (and b!623448 ((_ is Concat!2977) (regTwo!3798 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624480))

(assert (= (and b!623448 ((_ is Star!1643) (regTwo!3798 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624481))

(assert (= (and b!623448 ((_ is Union!1643) (regTwo!3798 (regTwo!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624482))

(declare-fun b!624485 () Bool)

(declare-fun e!378987 () Bool)

(declare-fun tp!194447 () Bool)

(assert (=> b!624485 (= e!378987 tp!194447)))

(declare-fun b!624484 () Bool)

(declare-fun tp!194446 () Bool)

(declare-fun tp!194448 () Bool)

(assert (=> b!624484 (= e!378987 (and tp!194446 tp!194448))))

(declare-fun b!624483 () Bool)

(assert (=> b!624483 (= e!378987 tp_is_empty!3613)))

(declare-fun b!624486 () Bool)

(declare-fun tp!194449 () Bool)

(declare-fun tp!194445 () Bool)

(assert (=> b!624486 (= e!378987 (and tp!194449 tp!194445))))

(assert (=> b!623384 (= tp!193730 e!378987)))

(assert (= (and b!623384 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624483))

(assert (= (and b!623384 ((_ is Concat!2977) (regOne!3799 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624484))

(assert (= (and b!623384 ((_ is Star!1643) (regOne!3799 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624485))

(assert (= (and b!623384 ((_ is Union!1643) (regOne!3799 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624486))

(declare-fun b!624489 () Bool)

(declare-fun e!378988 () Bool)

(declare-fun tp!194452 () Bool)

(assert (=> b!624489 (= e!378988 tp!194452)))

(declare-fun b!624488 () Bool)

(declare-fun tp!194451 () Bool)

(declare-fun tp!194453 () Bool)

(assert (=> b!624488 (= e!378988 (and tp!194451 tp!194453))))

(declare-fun b!624487 () Bool)

(assert (=> b!624487 (= e!378988 tp_is_empty!3613)))

(declare-fun b!624490 () Bool)

(declare-fun tp!194454 () Bool)

(declare-fun tp!194450 () Bool)

(assert (=> b!624490 (= e!378988 (and tp!194454 tp!194450))))

(assert (=> b!623384 (= tp!193726 e!378988)))

(assert (= (and b!623384 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624487))

(assert (= (and b!623384 ((_ is Concat!2977) (regTwo!3799 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624488))

(assert (= (and b!623384 ((_ is Star!1643) (regTwo!3799 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624489))

(assert (= (and b!623384 ((_ is Union!1643) (regTwo!3799 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624490))

(declare-fun b!624493 () Bool)

(declare-fun e!378989 () Bool)

(declare-fun tp!194457 () Bool)

(assert (=> b!624493 (= e!378989 tp!194457)))

(declare-fun b!624492 () Bool)

(declare-fun tp!194456 () Bool)

(declare-fun tp!194458 () Bool)

(assert (=> b!624492 (= e!378989 (and tp!194456 tp!194458))))

(declare-fun b!624491 () Bool)

(assert (=> b!624491 (= e!378989 tp_is_empty!3613)))

(declare-fun b!624494 () Bool)

(declare-fun tp!194459 () Bool)

(declare-fun tp!194455 () Bool)

(assert (=> b!624494 (= e!378989 (and tp!194459 tp!194455))))

(assert (=> b!623371 (= tp!193714 e!378989)))

(assert (= (and b!623371 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624491))

(assert (= (and b!623371 ((_ is Concat!2977) (regOne!3799 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624492))

(assert (= (and b!623371 ((_ is Star!1643) (regOne!3799 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624493))

(assert (= (and b!623371 ((_ is Union!1643) (regOne!3799 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624494))

(declare-fun b!624497 () Bool)

(declare-fun e!378990 () Bool)

(declare-fun tp!194462 () Bool)

(assert (=> b!624497 (= e!378990 tp!194462)))

(declare-fun b!624496 () Bool)

(declare-fun tp!194461 () Bool)

(declare-fun tp!194463 () Bool)

(assert (=> b!624496 (= e!378990 (and tp!194461 tp!194463))))

(declare-fun b!624495 () Bool)

(assert (=> b!624495 (= e!378990 tp_is_empty!3613)))

(declare-fun b!624498 () Bool)

(declare-fun tp!194464 () Bool)

(declare-fun tp!194460 () Bool)

(assert (=> b!624498 (= e!378990 (and tp!194464 tp!194460))))

(assert (=> b!623371 (= tp!193710 e!378990)))

(assert (= (and b!623371 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624495))

(assert (= (and b!623371 ((_ is Concat!2977) (regTwo!3799 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624496))

(assert (= (and b!623371 ((_ is Star!1643) (regTwo!3799 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624497))

(assert (= (and b!623371 ((_ is Union!1643) (regTwo!3799 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624498))

(declare-fun b!624501 () Bool)

(declare-fun e!378991 () Bool)

(declare-fun tp!194467 () Bool)

(assert (=> b!624501 (= e!378991 tp!194467)))

(declare-fun b!624500 () Bool)

(declare-fun tp!194466 () Bool)

(declare-fun tp!194468 () Bool)

(assert (=> b!624500 (= e!378991 (and tp!194466 tp!194468))))

(declare-fun b!624499 () Bool)

(assert (=> b!624499 (= e!378991 tp_is_empty!3613)))

(declare-fun b!624502 () Bool)

(declare-fun tp!194469 () Bool)

(declare-fun tp!194465 () Bool)

(assert (=> b!624502 (= e!378991 (and tp!194469 tp!194465))))

(assert (=> b!623373 (= tp!193716 e!378991)))

(assert (= (and b!623373 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624499))

(assert (= (and b!623373 ((_ is Concat!2977) (regOne!3798 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624500))

(assert (= (and b!623373 ((_ is Star!1643) (regOne!3798 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624501))

(assert (= (and b!623373 ((_ is Union!1643) (regOne!3798 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624502))

(declare-fun b!624505 () Bool)

(declare-fun e!378992 () Bool)

(declare-fun tp!194472 () Bool)

(assert (=> b!624505 (= e!378992 tp!194472)))

(declare-fun b!624504 () Bool)

(declare-fun tp!194471 () Bool)

(declare-fun tp!194473 () Bool)

(assert (=> b!624504 (= e!378992 (and tp!194471 tp!194473))))

(declare-fun b!624503 () Bool)

(assert (=> b!624503 (= e!378992 tp_is_empty!3613)))

(declare-fun b!624506 () Bool)

(declare-fun tp!194474 () Bool)

(declare-fun tp!194470 () Bool)

(assert (=> b!624506 (= e!378992 (and tp!194474 tp!194470))))

(assert (=> b!623373 (= tp!193718 e!378992)))

(assert (= (and b!623373 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624503))

(assert (= (and b!623373 ((_ is Concat!2977) (regTwo!3798 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624504))

(assert (= (and b!623373 ((_ is Star!1643) (regTwo!3798 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624505))

(assert (= (and b!623373 ((_ is Union!1643) (regTwo!3798 (regTwo!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624506))

(declare-fun b!624509 () Bool)

(declare-fun e!378993 () Bool)

(declare-fun tp!194477 () Bool)

(assert (=> b!624509 (= e!378993 tp!194477)))

(declare-fun b!624508 () Bool)

(declare-fun tp!194476 () Bool)

(declare-fun tp!194478 () Bool)

(assert (=> b!624508 (= e!378993 (and tp!194476 tp!194478))))

(declare-fun b!624507 () Bool)

(assert (=> b!624507 (= e!378993 tp_is_empty!3613)))

(declare-fun b!624510 () Bool)

(declare-fun tp!194479 () Bool)

(declare-fun tp!194475 () Bool)

(assert (=> b!624510 (= e!378993 (and tp!194479 tp!194475))))

(assert (=> b!623360 (= tp!193702 e!378993)))

(assert (= (and b!623360 ((_ is ElementMatch!1643) (reg!1972 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624507))

(assert (= (and b!623360 ((_ is Concat!2977) (reg!1972 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624508))

(assert (= (and b!623360 ((_ is Star!1643) (reg!1972 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624509))

(assert (= (and b!623360 ((_ is Union!1643) (reg!1972 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624510))

(declare-fun b!624513 () Bool)

(declare-fun e!378994 () Bool)

(declare-fun tp!194482 () Bool)

(assert (=> b!624513 (= e!378994 tp!194482)))

(declare-fun b!624512 () Bool)

(declare-fun tp!194481 () Bool)

(declare-fun tp!194483 () Bool)

(assert (=> b!624512 (= e!378994 (and tp!194481 tp!194483))))

(declare-fun b!624511 () Bool)

(assert (=> b!624511 (= e!378994 tp_is_empty!3613)))

(declare-fun b!624514 () Bool)

(declare-fun tp!194484 () Bool)

(declare-fun tp!194480 () Bool)

(assert (=> b!624514 (= e!378994 (and tp!194484 tp!194480))))

(assert (=> b!623304 (= tp!193645 e!378994)))

(assert (= (and b!623304 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624511))

(assert (= (and b!623304 ((_ is Concat!2977) (reg!1972 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624512))

(assert (= (and b!623304 ((_ is Star!1643) (reg!1972 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624513))

(assert (= (and b!623304 ((_ is Union!1643) (reg!1972 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624514))

(declare-fun b!624517 () Bool)

(declare-fun e!378995 () Bool)

(declare-fun tp!194487 () Bool)

(assert (=> b!624517 (= e!378995 tp!194487)))

(declare-fun b!624516 () Bool)

(declare-fun tp!194486 () Bool)

(declare-fun tp!194488 () Bool)

(assert (=> b!624516 (= e!378995 (and tp!194486 tp!194488))))

(declare-fun b!624515 () Bool)

(assert (=> b!624515 (= e!378995 tp_is_empty!3613)))

(declare-fun b!624518 () Bool)

(declare-fun tp!194489 () Bool)

(declare-fun tp!194485 () Bool)

(assert (=> b!624518 (= e!378995 (and tp!194489 tp!194485))))

(assert (=> b!623337 (= tp!193679 e!378995)))

(assert (= (and b!623337 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624515))

(assert (= (and b!623337 ((_ is Concat!2977) (regOne!3799 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624516))

(assert (= (and b!623337 ((_ is Star!1643) (regOne!3799 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624517))

(assert (= (and b!623337 ((_ is Union!1643) (regOne!3799 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624518))

(declare-fun b!624521 () Bool)

(declare-fun e!378996 () Bool)

(declare-fun tp!194492 () Bool)

(assert (=> b!624521 (= e!378996 tp!194492)))

(declare-fun b!624520 () Bool)

(declare-fun tp!194491 () Bool)

(declare-fun tp!194493 () Bool)

(assert (=> b!624520 (= e!378996 (and tp!194491 tp!194493))))

(declare-fun b!624519 () Bool)

(assert (=> b!624519 (= e!378996 tp_is_empty!3613)))

(declare-fun b!624522 () Bool)

(declare-fun tp!194494 () Bool)

(declare-fun tp!194490 () Bool)

(assert (=> b!624522 (= e!378996 (and tp!194494 tp!194490))))

(assert (=> b!623337 (= tp!193675 e!378996)))

(assert (= (and b!623337 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624519))

(assert (= (and b!623337 ((_ is Concat!2977) (regTwo!3799 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624520))

(assert (= (and b!623337 ((_ is Star!1643) (regTwo!3799 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624521))

(assert (= (and b!623337 ((_ is Union!1643) (regTwo!3799 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624522))

(declare-fun b!624525 () Bool)

(declare-fun e!378997 () Bool)

(declare-fun tp!194497 () Bool)

(assert (=> b!624525 (= e!378997 tp!194497)))

(declare-fun b!624524 () Bool)

(declare-fun tp!194496 () Bool)

(declare-fun tp!194498 () Bool)

(assert (=> b!624524 (= e!378997 (and tp!194496 tp!194498))))

(declare-fun b!624523 () Bool)

(assert (=> b!624523 (= e!378997 tp_is_empty!3613)))

(declare-fun b!624526 () Bool)

(declare-fun tp!194499 () Bool)

(declare-fun tp!194495 () Bool)

(assert (=> b!624526 (= e!378997 (and tp!194499 tp!194495))))

(assert (=> b!623378 (= tp!193722 e!378997)))

(assert (= (and b!623378 ((_ is ElementMatch!1643) (reg!1972 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624523))

(assert (= (and b!623378 ((_ is Concat!2977) (reg!1972 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624524))

(assert (= (and b!623378 ((_ is Star!1643) (reg!1972 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624525))

(assert (= (and b!623378 ((_ is Union!1643) (reg!1972 (regOne!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624526))

(declare-fun b!624529 () Bool)

(declare-fun e!378998 () Bool)

(declare-fun tp!194502 () Bool)

(assert (=> b!624529 (= e!378998 tp!194502)))

(declare-fun b!624528 () Bool)

(declare-fun tp!194501 () Bool)

(declare-fun tp!194503 () Bool)

(assert (=> b!624528 (= e!378998 (and tp!194501 tp!194503))))

(declare-fun b!624527 () Bool)

(assert (=> b!624527 (= e!378998 tp_is_empty!3613)))

(declare-fun b!624530 () Bool)

(declare-fun tp!194504 () Bool)

(declare-fun tp!194500 () Bool)

(assert (=> b!624530 (= e!378998 (and tp!194504 tp!194500))))

(assert (=> b!623367 (= tp!193709 e!378998)))

(assert (= (and b!623367 ((_ is ElementMatch!1643) (regOne!3799 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624527))

(assert (= (and b!623367 ((_ is Concat!2977) (regOne!3799 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624528))

(assert (= (and b!623367 ((_ is Star!1643) (regOne!3799 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624529))

(assert (= (and b!623367 ((_ is Union!1643) (regOne!3799 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624530))

(declare-fun b!624533 () Bool)

(declare-fun e!378999 () Bool)

(declare-fun tp!194507 () Bool)

(assert (=> b!624533 (= e!378999 tp!194507)))

(declare-fun b!624532 () Bool)

(declare-fun tp!194506 () Bool)

(declare-fun tp!194508 () Bool)

(assert (=> b!624532 (= e!378999 (and tp!194506 tp!194508))))

(declare-fun b!624531 () Bool)

(assert (=> b!624531 (= e!378999 tp_is_empty!3613)))

(declare-fun b!624534 () Bool)

(declare-fun tp!194509 () Bool)

(declare-fun tp!194505 () Bool)

(assert (=> b!624534 (= e!378999 (and tp!194509 tp!194505))))

(assert (=> b!623367 (= tp!193705 e!378999)))

(assert (= (and b!623367 ((_ is ElementMatch!1643) (regTwo!3799 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624531))

(assert (= (and b!623367 ((_ is Concat!2977) (regTwo!3799 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624532))

(assert (= (and b!623367 ((_ is Star!1643) (regTwo!3799 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624533))

(assert (= (and b!623367 ((_ is Union!1643) (regTwo!3799 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624534))

(declare-fun b!624537 () Bool)

(declare-fun e!379000 () Bool)

(declare-fun tp!194512 () Bool)

(assert (=> b!624537 (= e!379000 tp!194512)))

(declare-fun b!624536 () Bool)

(declare-fun tp!194511 () Bool)

(declare-fun tp!194513 () Bool)

(assert (=> b!624536 (= e!379000 (and tp!194511 tp!194513))))

(declare-fun b!624535 () Bool)

(assert (=> b!624535 (= e!379000 tp_is_empty!3613)))

(declare-fun b!624538 () Bool)

(declare-fun tp!194514 () Bool)

(declare-fun tp!194510 () Bool)

(assert (=> b!624538 (= e!379000 (and tp!194514 tp!194510))))

(assert (=> b!623339 (= tp!193681 e!379000)))

(assert (= (and b!623339 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624535))

(assert (= (and b!623339 ((_ is Concat!2977) (regOne!3798 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624536))

(assert (= (and b!623339 ((_ is Star!1643) (regOne!3798 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624537))

(assert (= (and b!623339 ((_ is Union!1643) (regOne!3798 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624538))

(declare-fun b!624541 () Bool)

(declare-fun e!379001 () Bool)

(declare-fun tp!194517 () Bool)

(assert (=> b!624541 (= e!379001 tp!194517)))

(declare-fun b!624540 () Bool)

(declare-fun tp!194516 () Bool)

(declare-fun tp!194518 () Bool)

(assert (=> b!624540 (= e!379001 (and tp!194516 tp!194518))))

(declare-fun b!624539 () Bool)

(assert (=> b!624539 (= e!379001 tp_is_empty!3613)))

(declare-fun b!624542 () Bool)

(declare-fun tp!194519 () Bool)

(declare-fun tp!194515 () Bool)

(assert (=> b!624542 (= e!379001 (and tp!194519 tp!194515))))

(assert (=> b!623339 (= tp!193683 e!379001)))

(assert (= (and b!623339 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624539))

(assert (= (and b!623339 ((_ is Concat!2977) (regTwo!3798 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624540))

(assert (= (and b!623339 ((_ is Star!1643) (regTwo!3798 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624541))

(assert (= (and b!623339 ((_ is Union!1643) (regTwo!3798 (regTwo!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624542))

(declare-fun b!624545 () Bool)

(declare-fun e!379002 () Bool)

(declare-fun tp!194522 () Bool)

(assert (=> b!624545 (= e!379002 tp!194522)))

(declare-fun b!624544 () Bool)

(declare-fun tp!194521 () Bool)

(declare-fun tp!194523 () Bool)

(assert (=> b!624544 (= e!379002 (and tp!194521 tp!194523))))

(declare-fun b!624543 () Bool)

(assert (=> b!624543 (= e!379002 tp_is_empty!3613)))

(declare-fun b!624546 () Bool)

(declare-fun tp!194524 () Bool)

(declare-fun tp!194520 () Bool)

(assert (=> b!624546 (= e!379002 (and tp!194524 tp!194520))))

(assert (=> b!623425 (= tp!193765 e!379002)))

(assert (= (and b!623425 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624543))

(assert (= (and b!623425 ((_ is Concat!2977) (reg!1972 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624544))

(assert (= (and b!623425 ((_ is Star!1643) (reg!1972 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624545))

(assert (= (and b!623425 ((_ is Union!1643) (reg!1972 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624546))

(declare-fun b!624549 () Bool)

(declare-fun e!379003 () Bool)

(declare-fun tp!194527 () Bool)

(assert (=> b!624549 (= e!379003 tp!194527)))

(declare-fun b!624548 () Bool)

(declare-fun tp!194526 () Bool)

(declare-fun tp!194528 () Bool)

(assert (=> b!624548 (= e!379003 (and tp!194526 tp!194528))))

(declare-fun b!624547 () Bool)

(assert (=> b!624547 (= e!379003 tp_is_empty!3613)))

(declare-fun b!624550 () Bool)

(declare-fun tp!194529 () Bool)

(declare-fun tp!194525 () Bool)

(assert (=> b!624550 (= e!379003 (and tp!194529 tp!194525))))

(assert (=> b!623437 (= tp!193780 e!379003)))

(assert (= (and b!623437 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624547))

(assert (= (and b!623437 ((_ is Concat!2977) (reg!1972 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624548))

(assert (= (and b!623437 ((_ is Star!1643) (reg!1972 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624549))

(assert (= (and b!623437 ((_ is Union!1643) (reg!1972 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624550))

(declare-fun b!624553 () Bool)

(declare-fun e!379004 () Bool)

(declare-fun tp!194532 () Bool)

(assert (=> b!624553 (= e!379004 tp!194532)))

(declare-fun b!624552 () Bool)

(declare-fun tp!194531 () Bool)

(declare-fun tp!194533 () Bool)

(assert (=> b!624552 (= e!379004 (and tp!194531 tp!194533))))

(declare-fun b!624551 () Bool)

(assert (=> b!624551 (= e!379004 tp_is_empty!3613)))

(declare-fun b!624554 () Bool)

(declare-fun tp!194534 () Bool)

(declare-fun tp!194530 () Bool)

(assert (=> b!624554 (= e!379004 (and tp!194534 tp!194530))))

(assert (=> b!623298 (= tp!193640 e!379004)))

(assert (= (and b!623298 ((_ is ElementMatch!1643) (reg!1972 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624551))

(assert (= (and b!623298 ((_ is Concat!2977) (reg!1972 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624552))

(assert (= (and b!623298 ((_ is Star!1643) (reg!1972 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624553))

(assert (= (and b!623298 ((_ is Union!1643) (reg!1972 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624554))

(declare-fun b!624557 () Bool)

(declare-fun e!379005 () Bool)

(declare-fun tp!194537 () Bool)

(assert (=> b!624557 (= e!379005 tp!194537)))

(declare-fun b!624556 () Bool)

(declare-fun tp!194536 () Bool)

(declare-fun tp!194538 () Bool)

(assert (=> b!624556 (= e!379005 (and tp!194536 tp!194538))))

(declare-fun b!624555 () Bool)

(assert (=> b!624555 (= e!379005 tp_is_empty!3613)))

(declare-fun b!624558 () Bool)

(declare-fun tp!194539 () Bool)

(declare-fun tp!194535 () Bool)

(assert (=> b!624558 (= e!379005 (and tp!194539 tp!194535))))

(assert (=> b!623383 (= tp!193728 e!379005)))

(assert (= (and b!623383 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624555))

(assert (= (and b!623383 ((_ is Concat!2977) (reg!1972 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624556))

(assert (= (and b!623383 ((_ is Star!1643) (reg!1972 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624557))

(assert (= (and b!623383 ((_ is Union!1643) (reg!1972 (regTwo!3799 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624558))

(declare-fun b!624561 () Bool)

(declare-fun e!379006 () Bool)

(declare-fun tp!194542 () Bool)

(assert (=> b!624561 (= e!379006 tp!194542)))

(declare-fun b!624560 () Bool)

(declare-fun tp!194541 () Bool)

(declare-fun tp!194543 () Bool)

(assert (=> b!624560 (= e!379006 (and tp!194541 tp!194543))))

(declare-fun b!624559 () Bool)

(assert (=> b!624559 (= e!379006 tp_is_empty!3613)))

(declare-fun b!624562 () Bool)

(declare-fun tp!194544 () Bool)

(declare-fun tp!194540 () Bool)

(assert (=> b!624562 (= e!379006 (and tp!194544 tp!194540))))

(assert (=> b!623370 (= tp!193712 e!379006)))

(assert (= (and b!623370 ((_ is ElementMatch!1643) (reg!1972 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624559))

(assert (= (and b!623370 ((_ is Concat!2977) (reg!1972 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624560))

(assert (= (and b!623370 ((_ is Star!1643) (reg!1972 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624561))

(assert (= (and b!623370 ((_ is Union!1643) (reg!1972 (regOne!3799 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624562))

(declare-fun tp!194547 () Bool)

(declare-fun tp!194546 () Bool)

(declare-fun e!379008 () Bool)

(declare-fun b!624563 () Bool)

(assert (=> b!624563 (= e!379008 (and (inv!8146 (left!5088 (left!5088 (right!5418 (right!5418 (c!114443 v!6361)))))) tp!194547 (inv!8146 (right!5418 (left!5088 (right!5418 (right!5418 (c!114443 v!6361)))))) tp!194546))))

(declare-fun b!624565 () Bool)

(declare-fun e!379007 () Bool)

(declare-fun tp!194545 () Bool)

(assert (=> b!624565 (= e!379007 tp!194545)))

(declare-fun b!624564 () Bool)

(assert (=> b!624564 (= e!379008 (and (inv!8158 (xs!4697 (left!5088 (right!5418 (right!5418 (c!114443 v!6361)))))) e!379007))))

(assert (=> b!623398 (= tp!193742 (and (inv!8146 (left!5088 (right!5418 (right!5418 (c!114443 v!6361))))) e!379008))))

(assert (= (and b!623398 ((_ is Node!2060) (left!5088 (right!5418 (right!5418 (c!114443 v!6361)))))) b!624563))

(assert (= b!624564 b!624565))

(assert (= (and b!623398 ((_ is Leaf!3223) (left!5088 (right!5418 (right!5418 (c!114443 v!6361)))))) b!624564))

(declare-fun m!892829 () Bool)

(assert (=> b!624563 m!892829))

(declare-fun m!892831 () Bool)

(assert (=> b!624563 m!892831))

(declare-fun m!892833 () Bool)

(assert (=> b!624564 m!892833))

(assert (=> b!623398 m!891729))

(declare-fun b!624566 () Bool)

(declare-fun e!379010 () Bool)

(declare-fun tp!194549 () Bool)

(declare-fun tp!194550 () Bool)

(assert (=> b!624566 (= e!379010 (and (inv!8146 (left!5088 (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))) tp!194550 (inv!8146 (right!5418 (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))) tp!194549))))

(declare-fun b!624568 () Bool)

(declare-fun e!379009 () Bool)

(declare-fun tp!194548 () Bool)

(assert (=> b!624568 (= e!379009 tp!194548)))

(declare-fun b!624567 () Bool)

(assert (=> b!624567 (= e!379010 (and (inv!8158 (xs!4697 (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))) e!379009))))

(assert (=> b!623398 (= tp!193741 (and (inv!8146 (right!5418 (right!5418 (right!5418 (c!114443 v!6361))))) e!379010))))

(assert (= (and b!623398 ((_ is Node!2060) (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))) b!624566))

(assert (= b!624567 b!624568))

(assert (= (and b!623398 ((_ is Leaf!3223) (right!5418 (right!5418 (right!5418 (c!114443 v!6361)))))) b!624567))

(declare-fun m!892835 () Bool)

(assert (=> b!624566 m!892835))

(declare-fun m!892837 () Bool)

(assert (=> b!624566 m!892837))

(declare-fun m!892839 () Bool)

(assert (=> b!624567 m!892839))

(assert (=> b!623398 m!891733))

(declare-fun b!624571 () Bool)

(declare-fun e!379011 () Bool)

(declare-fun tp!194553 () Bool)

(assert (=> b!624571 (= e!379011 tp!194553)))

(declare-fun b!624570 () Bool)

(declare-fun tp!194552 () Bool)

(declare-fun tp!194554 () Bool)

(assert (=> b!624570 (= e!379011 (and tp!194552 tp!194554))))

(declare-fun b!624569 () Bool)

(assert (=> b!624569 (= e!379011 tp_is_empty!3613)))

(declare-fun b!624572 () Bool)

(declare-fun tp!194555 () Bool)

(declare-fun tp!194551 () Bool)

(assert (=> b!624572 (= e!379011 (and tp!194555 tp!194551))))

(assert (=> b!623356 (= tp!193697 e!379011)))

(assert (= (and b!623356 ((_ is ElementMatch!1643) (reg!1972 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624569))

(assert (= (and b!623356 ((_ is Concat!2977) (reg!1972 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624570))

(assert (= (and b!623356 ((_ is Star!1643) (reg!1972 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624571))

(assert (= (and b!623356 ((_ is Union!1643) (reg!1972 (reg!1972 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624572))

(declare-fun b!624575 () Bool)

(declare-fun e!379012 () Bool)

(declare-fun tp!194558 () Bool)

(assert (=> b!624575 (= e!379012 tp!194558)))

(declare-fun b!624574 () Bool)

(declare-fun tp!194557 () Bool)

(declare-fun tp!194559 () Bool)

(assert (=> b!624574 (= e!379012 (and tp!194557 tp!194559))))

(declare-fun b!624573 () Bool)

(assert (=> b!624573 (= e!379012 tp_is_empty!3613)))

(declare-fun b!624576 () Bool)

(declare-fun tp!194560 () Bool)

(declare-fun tp!194556 () Bool)

(assert (=> b!624576 (= e!379012 (and tp!194560 tp!194556))))

(assert (=> b!623294 (= tp!193635 e!379012)))

(assert (= (and b!623294 ((_ is ElementMatch!1643) (reg!1972 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624573))

(assert (= (and b!623294 ((_ is Concat!2977) (reg!1972 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624574))

(assert (= (and b!623294 ((_ is Star!1643) (reg!1972 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624575))

(assert (= (and b!623294 ((_ is Union!1643) (reg!1972 (regTwo!3799 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624576))

(declare-fun b!624580 () Bool)

(declare-fun b_free!18289 () Bool)

(declare-fun b_next!18305 () Bool)

(assert (=> b!624580 (= b_free!18289 (not b_next!18305))))

(declare-fun tp!194564 () Bool)

(declare-fun b_and!62015 () Bool)

(assert (=> b!624580 (= tp!194564 b_and!62015)))

(declare-fun b_free!18291 () Bool)

(declare-fun b_next!18307 () Bool)

(assert (=> b!624580 (= b_free!18291 (not b_next!18307))))

(declare-fun t!82136 () Bool)

(declare-fun tb!54207 () Bool)

(assert (=> (and b!624580 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82136) tb!54207))

(declare-fun result!61218 () Bool)

(assert (= result!61218 result!61134))

(assert (=> d!218495 t!82136))

(declare-fun t!82138 () Bool)

(declare-fun tb!54209 () Bool)

(assert (=> (and b!624580 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!82138) tb!54209))

(declare-fun result!61220 () Bool)

(assert (= result!61220 result!61030))

(assert (=> d!217899 t!82138))

(declare-fun tb!54211 () Bool)

(declare-fun t!82140 () Bool)

(assert (=> (and b!624580 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!82140) tb!54211))

(declare-fun result!61222 () Bool)

(assert (= result!61222 result!61014))

(assert (=> b!622606 t!82140))

(declare-fun t!82142 () Bool)

(declare-fun tb!54213 () Bool)

(assert (=> (and b!624580 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!82142) tb!54213))

(declare-fun result!61224 () Bool)

(assert (= result!61224 result!61050))

(assert (=> b!623126 t!82142))

(declare-fun t!82144 () Bool)

(declare-fun tb!54215 () Bool)

(assert (=> (and b!624580 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82144) tb!54215))

(declare-fun result!61226 () Bool)

(assert (= result!61226 result!61114))

(assert (=> b!623764 t!82144))

(declare-fun t!82146 () Bool)

(declare-fun tb!54217 () Bool)

(assert (=> (and b!624580 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82146) tb!54217))

(declare-fun result!61228 () Bool)

(assert (= result!61228 result!61144))

(assert (=> b!624003 t!82146))

(declare-fun t!82148 () Bool)

(declare-fun tb!54219 () Bool)

(assert (=> (and b!624580 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82148) tb!54219))

(declare-fun result!61230 () Bool)

(assert (= result!61230 result!61124))

(assert (=> b!623858 t!82148))

(declare-fun t!82150 () Bool)

(declare-fun tb!54221 () Bool)

(assert (=> (and b!624580 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!82150) tb!54221))

(declare-fun result!61232 () Bool)

(assert (= result!61232 result!61054))

(assert (=> d!218079 t!82150))

(assert (=> d!217891 t!82140))

(declare-fun b_and!62017 () Bool)

(declare-fun tp!194565 () Bool)

(assert (=> b!624580 (= tp!194565 (and (=> t!82148 result!61230) (=> t!82150 result!61232) (=> t!82142 result!61224) (=> t!82144 result!61226) (=> t!82138 result!61220) (=> t!82146 result!61228) (=> t!82136 result!61218) (=> t!82140 result!61222) b_and!62017))))

(declare-fun b!624578 () Bool)

(declare-fun e!379014 () Bool)

(declare-fun e!379017 () Bool)

(declare-fun tp!194562 () Bool)

(assert (=> b!624578 (= e!379017 (and (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361)))))))) e!379014 tp!194562))))

(declare-fun e!379013 () Bool)

(assert (=> b!624580 (= e!379013 (and tp!194564 tp!194565))))

(declare-fun e!379018 () Bool)

(assert (=> b!623308 (= tp!193648 e!379018)))

(declare-fun b!624577 () Bool)

(declare-fun tp!194563 () Bool)

(assert (=> b!624577 (= e!379018 (and (inv!8148 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))) e!379017 tp!194563))))

(declare-fun b!624579 () Bool)

(declare-fun tp!194561 () Bool)

(assert (=> b!624579 (= e!379014 (and tp!194561 (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) e!379013))))

(assert (= b!624579 b!624580))

(assert (= b!624578 b!624579))

(assert (= b!624577 b!624578))

(assert (= (and b!623308 ((_ is Cons!6416) (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))) b!624577))

(declare-fun m!892841 () Bool)

(assert (=> b!624578 m!892841))

(declare-fun m!892843 () Bool)

(assert (=> b!624577 m!892843))

(declare-fun m!892845 () Bool)

(assert (=> b!624579 m!892845))

(declare-fun m!892847 () Bool)

(assert (=> b!624579 m!892847))

(declare-fun b!624584 () Bool)

(declare-fun b_free!18293 () Bool)

(declare-fun b_next!18309 () Bool)

(assert (=> b!624584 (= b_free!18293 (not b_next!18309))))

(declare-fun tp!194569 () Bool)

(declare-fun b_and!62019 () Bool)

(assert (=> b!624584 (= tp!194569 b_and!62019)))

(declare-fun b_free!18295 () Bool)

(declare-fun b_next!18311 () Bool)

(assert (=> b!624584 (= b_free!18295 (not b_next!18311))))

(declare-fun tb!54223 () Bool)

(declare-fun t!82152 () Bool)

(assert (=> (and b!624584 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82152) tb!54223))

(declare-fun result!61234 () Bool)

(assert (= result!61234 result!61134))

(assert (=> d!218495 t!82152))

(declare-fun t!82154 () Bool)

(declare-fun tb!54225 () Bool)

(assert (=> (and b!624584 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!82154) tb!54225))

(declare-fun result!61236 () Bool)

(assert (= result!61236 result!61030))

(assert (=> d!217899 t!82154))

(declare-fun tb!54227 () Bool)

(declare-fun t!82156 () Bool)

(assert (=> (and b!624584 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!82156) tb!54227))

(declare-fun result!61238 () Bool)

(assert (= result!61238 result!61014))

(assert (=> b!622606 t!82156))

(declare-fun t!82158 () Bool)

(declare-fun tb!54229 () Bool)

(assert (=> (and b!624584 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!82158) tb!54229))

(declare-fun result!61240 () Bool)

(assert (= result!61240 result!61050))

(assert (=> b!623126 t!82158))

(declare-fun t!82160 () Bool)

(declare-fun tb!54231 () Bool)

(assert (=> (and b!624584 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82160) tb!54231))

(declare-fun result!61242 () Bool)

(assert (= result!61242 result!61114))

(assert (=> b!623764 t!82160))

(declare-fun t!82162 () Bool)

(declare-fun tb!54233 () Bool)

(assert (=> (and b!624584 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82162) tb!54233))

(declare-fun result!61244 () Bool)

(assert (= result!61244 result!61144))

(assert (=> b!624003 t!82162))

(declare-fun t!82164 () Bool)

(declare-fun tb!54235 () Bool)

(assert (=> (and b!624584 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82164) tb!54235))

(declare-fun result!61246 () Bool)

(assert (= result!61246 result!61124))

(assert (=> b!623858 t!82164))

(declare-fun t!82166 () Bool)

(declare-fun tb!54237 () Bool)

(assert (=> (and b!624584 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!82166) tb!54237))

(declare-fun result!61248 () Bool)

(assert (= result!61248 result!61054))

(assert (=> d!218079 t!82166))

(assert (=> d!217891 t!82156))

(declare-fun tp!194570 () Bool)

(declare-fun b_and!62021 () Bool)

(assert (=> b!624584 (= tp!194570 (and (=> t!82164 result!61246) (=> t!82166 result!61248) (=> t!82162 result!61244) (=> t!82160 result!61242) (=> t!82156 result!61238) (=> t!82158 result!61240) (=> t!82154 result!61236) (=> t!82152 result!61234) b_and!62021))))

(declare-fun b!624582 () Bool)

(declare-fun e!379020 () Bool)

(declare-fun e!379023 () Bool)

(declare-fun tp!194567 () Bool)

(assert (=> b!624582 (= e!379023 (and (inv!21 (value!42170 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) e!379020 tp!194567))))

(declare-fun e!379019 () Bool)

(assert (=> b!624584 (= e!379019 (and tp!194569 tp!194570))))

(declare-fun e!379024 () Bool)

(assert (=> b!623313 (= tp!193657 e!379024)))

(declare-fun tp!194568 () Bool)

(declare-fun b!624581 () Bool)

(assert (=> b!624581 (= e!379024 (and (inv!8148 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))) e!379023 tp!194568))))

(declare-fun b!624583 () Bool)

(declare-fun tp!194566 () Bool)

(assert (=> b!624583 (= e!379020 (and tp!194566 (inv!8141 (tag!1571 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) e!379019))))

(assert (= b!624583 b!624584))

(assert (= b!624582 b!624583))

(assert (= b!624581 b!624582))

(assert (= (and b!623313 ((_ is Cons!6416) (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))) b!624581))

(declare-fun m!892849 () Bool)

(assert (=> b!624582 m!892849))

(declare-fun m!892851 () Bool)

(assert (=> b!624581 m!892851))

(declare-fun m!892853 () Bool)

(assert (=> b!624583 m!892853))

(declare-fun m!892855 () Bool)

(assert (=> b!624583 m!892855))

(declare-fun b!624587 () Bool)

(declare-fun e!379025 () Bool)

(declare-fun tp!194573 () Bool)

(assert (=> b!624587 (= e!379025 tp!194573)))

(declare-fun b!624586 () Bool)

(declare-fun tp!194572 () Bool)

(declare-fun tp!194574 () Bool)

(assert (=> b!624586 (= e!379025 (and tp!194572 tp!194574))))

(declare-fun b!624585 () Bool)

(assert (=> b!624585 (= e!379025 tp_is_empty!3613)))

(declare-fun b!624588 () Bool)

(declare-fun tp!194575 () Bool)

(declare-fun tp!194571 () Bool)

(assert (=> b!624588 (= e!379025 (and tp!194575 tp!194571))))

(assert (=> b!623414 (= tp!193757 e!379025)))

(assert (= (and b!623414 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624585))

(assert (= (and b!623414 ((_ is Concat!2977) (regOne!3799 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624586))

(assert (= (and b!623414 ((_ is Star!1643) (regOne!3799 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624587))

(assert (= (and b!623414 ((_ is Union!1643) (regOne!3799 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624588))

(declare-fun b!624591 () Bool)

(declare-fun e!379026 () Bool)

(declare-fun tp!194578 () Bool)

(assert (=> b!624591 (= e!379026 tp!194578)))

(declare-fun b!624590 () Bool)

(declare-fun tp!194577 () Bool)

(declare-fun tp!194579 () Bool)

(assert (=> b!624590 (= e!379026 (and tp!194577 tp!194579))))

(declare-fun b!624589 () Bool)

(assert (=> b!624589 (= e!379026 tp_is_empty!3613)))

(declare-fun b!624592 () Bool)

(declare-fun tp!194580 () Bool)

(declare-fun tp!194576 () Bool)

(assert (=> b!624592 (= e!379026 (and tp!194580 tp!194576))))

(assert (=> b!623414 (= tp!193753 e!379026)))

(assert (= (and b!623414 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624589))

(assert (= (and b!623414 ((_ is Concat!2977) (regTwo!3799 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624590))

(assert (= (and b!623414 ((_ is Star!1643) (regTwo!3799 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624591))

(assert (= (and b!623414 ((_ is Union!1643) (regTwo!3799 (regTwo!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624592))

(declare-fun b!624595 () Bool)

(declare-fun e!379027 () Bool)

(declare-fun tp!194583 () Bool)

(assert (=> b!624595 (= e!379027 tp!194583)))

(declare-fun b!624594 () Bool)

(declare-fun tp!194582 () Bool)

(declare-fun tp!194584 () Bool)

(assert (=> b!624594 (= e!379027 (and tp!194582 tp!194584))))

(declare-fun b!624593 () Bool)

(assert (=> b!624593 (= e!379027 tp_is_empty!3613)))

(declare-fun b!624596 () Bool)

(declare-fun tp!194585 () Bool)

(declare-fun tp!194581 () Bool)

(assert (=> b!624596 (= e!379027 (and tp!194585 tp!194581))))

(assert (=> b!623365 (= tp!193706 e!379027)))

(assert (= (and b!623365 ((_ is ElementMatch!1643) (regOne!3798 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624593))

(assert (= (and b!623365 ((_ is Concat!2977) (regOne!3798 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624594))

(assert (= (and b!623365 ((_ is Star!1643) (regOne!3798 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624595))

(assert (= (and b!623365 ((_ is Union!1643) (regOne!3798 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624596))

(declare-fun b!624599 () Bool)

(declare-fun e!379028 () Bool)

(declare-fun tp!194588 () Bool)

(assert (=> b!624599 (= e!379028 tp!194588)))

(declare-fun b!624598 () Bool)

(declare-fun tp!194587 () Bool)

(declare-fun tp!194589 () Bool)

(assert (=> b!624598 (= e!379028 (and tp!194587 tp!194589))))

(declare-fun b!624597 () Bool)

(assert (=> b!624597 (= e!379028 tp_is_empty!3613)))

(declare-fun b!624600 () Bool)

(declare-fun tp!194590 () Bool)

(declare-fun tp!194586 () Bool)

(assert (=> b!624600 (= e!379028 (and tp!194590 tp!194586))))

(assert (=> b!623365 (= tp!193708 e!379028)))

(assert (= (and b!623365 ((_ is ElementMatch!1643) (regTwo!3798 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624597))

(assert (= (and b!623365 ((_ is Concat!2977) (regTwo!3798 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624598))

(assert (= (and b!623365 ((_ is Star!1643) (regTwo!3798 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624599))

(assert (= (and b!623365 ((_ is Union!1643) (regTwo!3798 (reg!1972 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624600))

(declare-fun b!624603 () Bool)

(declare-fun e!379029 () Bool)

(declare-fun tp!194593 () Bool)

(assert (=> b!624603 (= e!379029 tp!194593)))

(declare-fun b!624602 () Bool)

(declare-fun tp!194592 () Bool)

(declare-fun tp!194594 () Bool)

(assert (=> b!624602 (= e!379029 (and tp!194592 tp!194594))))

(declare-fun b!624601 () Bool)

(assert (=> b!624601 (= e!379029 tp_is_empty!3613)))

(declare-fun b!624604 () Bool)

(declare-fun tp!194595 () Bool)

(declare-fun tp!194591 () Bool)

(assert (=> b!624604 (= e!379029 (and tp!194595 tp!194591))))

(assert (=> b!623351 (= tp!193694 e!379029)))

(assert (= (and b!623351 ((_ is ElementMatch!1643) (regOne!3799 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624601))

(assert (= (and b!623351 ((_ is Concat!2977) (regOne!3799 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624602))

(assert (= (and b!623351 ((_ is Star!1643) (regOne!3799 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624603))

(assert (= (and b!623351 ((_ is Union!1643) (regOne!3799 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624604))

(declare-fun b!624607 () Bool)

(declare-fun e!379030 () Bool)

(declare-fun tp!194598 () Bool)

(assert (=> b!624607 (= e!379030 tp!194598)))

(declare-fun b!624606 () Bool)

(declare-fun tp!194597 () Bool)

(declare-fun tp!194599 () Bool)

(assert (=> b!624606 (= e!379030 (and tp!194597 tp!194599))))

(declare-fun b!624605 () Bool)

(assert (=> b!624605 (= e!379030 tp_is_empty!3613)))

(declare-fun b!624608 () Bool)

(declare-fun tp!194600 () Bool)

(declare-fun tp!194596 () Bool)

(assert (=> b!624608 (= e!379030 (and tp!194600 tp!194596))))

(assert (=> b!623351 (= tp!193690 e!379030)))

(assert (= (and b!623351 ((_ is ElementMatch!1643) (regTwo!3799 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624605))

(assert (= (and b!623351 ((_ is Concat!2977) (regTwo!3799 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624606))

(assert (= (and b!623351 ((_ is Star!1643) (regTwo!3799 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624607))

(assert (= (and b!623351 ((_ is Union!1643) (regTwo!3799 (regTwo!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624608))

(declare-fun b!624611 () Bool)

(declare-fun e!379031 () Bool)

(declare-fun tp!194603 () Bool)

(assert (=> b!624611 (= e!379031 tp!194603)))

(declare-fun b!624610 () Bool)

(declare-fun tp!194602 () Bool)

(declare-fun tp!194604 () Bool)

(assert (=> b!624610 (= e!379031 (and tp!194602 tp!194604))))

(declare-fun b!624609 () Bool)

(assert (=> b!624609 (= e!379031 tp_is_empty!3613)))

(declare-fun b!624612 () Bool)

(declare-fun tp!194605 () Bool)

(declare-fun tp!194601 () Bool)

(assert (=> b!624612 (= e!379031 (and tp!194605 tp!194601))))

(assert (=> b!623321 (= tp!193662 e!379031)))

(assert (= (and b!623321 ((_ is ElementMatch!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) b!624609))

(assert (= (and b!623321 ((_ is Concat!2977) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) b!624610))

(assert (= (and b!623321 ((_ is Star!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) b!624611))

(assert (= (and b!623321 ((_ is Union!1643) (regex!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) b!624612))

(declare-fun b!624615 () Bool)

(declare-fun e!379032 () Bool)

(declare-fun tp!194608 () Bool)

(assert (=> b!624615 (= e!379032 tp!194608)))

(declare-fun b!624614 () Bool)

(declare-fun tp!194607 () Bool)

(declare-fun tp!194609 () Bool)

(assert (=> b!624614 (= e!379032 (and tp!194607 tp!194609))))

(declare-fun b!624613 () Bool)

(assert (=> b!624613 (= e!379032 tp_is_empty!3613)))

(declare-fun b!624616 () Bool)

(declare-fun tp!194610 () Bool)

(declare-fun tp!194606 () Bool)

(assert (=> b!624616 (= e!379032 (and tp!194610 tp!194606))))

(assert (=> b!623421 (= tp!193760 e!379032)))

(assert (= (and b!623421 ((_ is ElementMatch!1643) (reg!1972 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624613))

(assert (= (and b!623421 ((_ is Concat!2977) (reg!1972 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624614))

(assert (= (and b!623421 ((_ is Star!1643) (reg!1972 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624615))

(assert (= (and b!623421 ((_ is Union!1643) (reg!1972 (regOne!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624616))

(declare-fun b!624619 () Bool)

(declare-fun e!379033 () Bool)

(declare-fun tp!194613 () Bool)

(assert (=> b!624619 (= e!379033 tp!194613)))

(declare-fun b!624618 () Bool)

(declare-fun tp!194612 () Bool)

(declare-fun tp!194614 () Bool)

(assert (=> b!624618 (= e!379033 (and tp!194612 tp!194614))))

(declare-fun b!624617 () Bool)

(assert (=> b!624617 (= e!379033 tp_is_empty!3613)))

(declare-fun b!624620 () Bool)

(declare-fun tp!194615 () Bool)

(declare-fun tp!194611 () Bool)

(assert (=> b!624620 (= e!379033 (and tp!194615 tp!194611))))

(assert (=> b!623430 (= tp!193772 e!379033)))

(assert (= (and b!623430 ((_ is ElementMatch!1643) (regOne!3799 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624617))

(assert (= (and b!623430 ((_ is Concat!2977) (regOne!3799 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624618))

(assert (= (and b!623430 ((_ is Star!1643) (regOne!3799 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624619))

(assert (= (and b!623430 ((_ is Union!1643) (regOne!3799 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624620))

(declare-fun b!624623 () Bool)

(declare-fun e!379034 () Bool)

(declare-fun tp!194618 () Bool)

(assert (=> b!624623 (= e!379034 tp!194618)))

(declare-fun b!624622 () Bool)

(declare-fun tp!194617 () Bool)

(declare-fun tp!194619 () Bool)

(assert (=> b!624622 (= e!379034 (and tp!194617 tp!194619))))

(declare-fun b!624621 () Bool)

(assert (=> b!624621 (= e!379034 tp_is_empty!3613)))

(declare-fun b!624624 () Bool)

(declare-fun tp!194620 () Bool)

(declare-fun tp!194616 () Bool)

(assert (=> b!624624 (= e!379034 (and tp!194620 tp!194616))))

(assert (=> b!623430 (= tp!193768 e!379034)))

(assert (= (and b!623430 ((_ is ElementMatch!1643) (regTwo!3799 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624621))

(assert (= (and b!623430 ((_ is Concat!2977) (regTwo!3799 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624622))

(assert (= (and b!623430 ((_ is Star!1643) (regTwo!3799 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624623))

(assert (= (and b!623430 ((_ is Union!1643) (regTwo!3799 (reg!1972 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624624))

(declare-fun b!624627 () Bool)

(declare-fun e!379035 () Bool)

(declare-fun tp!194623 () Bool)

(assert (=> b!624627 (= e!379035 tp!194623)))

(declare-fun b!624626 () Bool)

(declare-fun tp!194622 () Bool)

(declare-fun tp!194624 () Bool)

(assert (=> b!624626 (= e!379035 (and tp!194622 tp!194624))))

(declare-fun b!624625 () Bool)

(assert (=> b!624625 (= e!379035 tp_is_empty!3613)))

(declare-fun b!624628 () Bool)

(declare-fun tp!194625 () Bool)

(declare-fun tp!194621 () Bool)

(assert (=> b!624628 (= e!379035 (and tp!194625 tp!194621))))

(assert (=> b!623297 (= tp!193639 e!379035)))

(assert (= (and b!623297 ((_ is ElementMatch!1643) (regOne!3798 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624625))

(assert (= (and b!623297 ((_ is Concat!2977) (regOne!3798 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624626))

(assert (= (and b!623297 ((_ is Star!1643) (regOne!3798 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624627))

(assert (= (and b!623297 ((_ is Union!1643) (regOne!3798 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624628))

(declare-fun b!624631 () Bool)

(declare-fun e!379036 () Bool)

(declare-fun tp!194628 () Bool)

(assert (=> b!624631 (= e!379036 tp!194628)))

(declare-fun b!624630 () Bool)

(declare-fun tp!194627 () Bool)

(declare-fun tp!194629 () Bool)

(assert (=> b!624630 (= e!379036 (and tp!194627 tp!194629))))

(declare-fun b!624629 () Bool)

(assert (=> b!624629 (= e!379036 tp_is_empty!3613)))

(declare-fun b!624632 () Bool)

(declare-fun tp!194630 () Bool)

(declare-fun tp!194626 () Bool)

(assert (=> b!624632 (= e!379036 (and tp!194630 tp!194626))))

(assert (=> b!623297 (= tp!193641 e!379036)))

(assert (= (and b!623297 ((_ is ElementMatch!1643) (regTwo!3798 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624629))

(assert (= (and b!623297 ((_ is Concat!2977) (regTwo!3798 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624630))

(assert (= (and b!623297 ((_ is Star!1643) (regTwo!3798 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624631))

(assert (= (and b!623297 ((_ is Union!1643) (regTwo!3798 (regOne!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624632))

(declare-fun b!624635 () Bool)

(declare-fun e!379037 () Bool)

(declare-fun tp!194633 () Bool)

(assert (=> b!624635 (= e!379037 tp!194633)))

(declare-fun b!624634 () Bool)

(declare-fun tp!194632 () Bool)

(declare-fun tp!194634 () Bool)

(assert (=> b!624634 (= e!379037 (and tp!194632 tp!194634))))

(declare-fun b!624633 () Bool)

(assert (=> b!624633 (= e!379037 tp_is_empty!3613)))

(declare-fun b!624636 () Bool)

(declare-fun tp!194635 () Bool)

(declare-fun tp!194631 () Bool)

(assert (=> b!624636 (= e!379037 (and tp!194635 tp!194631))))

(assert (=> b!623359 (= tp!193701 e!379037)))

(assert (= (and b!623359 ((_ is ElementMatch!1643) (regOne!3798 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624633))

(assert (= (and b!623359 ((_ is Concat!2977) (regOne!3798 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624634))

(assert (= (and b!623359 ((_ is Star!1643) (regOne!3798 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624635))

(assert (= (and b!623359 ((_ is Union!1643) (regOne!3798 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624636))

(declare-fun b!624639 () Bool)

(declare-fun e!379038 () Bool)

(declare-fun tp!194638 () Bool)

(assert (=> b!624639 (= e!379038 tp!194638)))

(declare-fun b!624638 () Bool)

(declare-fun tp!194637 () Bool)

(declare-fun tp!194639 () Bool)

(assert (=> b!624638 (= e!379038 (and tp!194637 tp!194639))))

(declare-fun b!624637 () Bool)

(assert (=> b!624637 (= e!379038 tp_is_empty!3613)))

(declare-fun b!624640 () Bool)

(declare-fun tp!194640 () Bool)

(declare-fun tp!194636 () Bool)

(assert (=> b!624640 (= e!379038 (and tp!194640 tp!194636))))

(assert (=> b!623359 (= tp!193703 e!379038)))

(assert (= (and b!623359 ((_ is ElementMatch!1643) (regTwo!3798 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624637))

(assert (= (and b!623359 ((_ is Concat!2977) (regTwo!3798 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624638))

(assert (= (and b!623359 ((_ is Star!1643) (regTwo!3798 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624639))

(assert (= (and b!623359 ((_ is Union!1643) (regTwo!3798 (reg!1972 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624640))

(declare-fun b!624643 () Bool)

(declare-fun e!379039 () Bool)

(declare-fun tp!194643 () Bool)

(assert (=> b!624643 (= e!379039 tp!194643)))

(declare-fun b!624642 () Bool)

(declare-fun tp!194642 () Bool)

(declare-fun tp!194644 () Bool)

(assert (=> b!624642 (= e!379039 (and tp!194642 tp!194644))))

(declare-fun b!624641 () Bool)

(assert (=> b!624641 (= e!379039 tp_is_empty!3613)))

(declare-fun b!624644 () Bool)

(declare-fun tp!194645 () Bool)

(declare-fun tp!194641 () Bool)

(assert (=> b!624644 (= e!379039 (and tp!194645 tp!194641))))

(assert (=> b!623347 (= tp!193689 e!379039)))

(assert (= (and b!623347 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624641))

(assert (= (and b!623347 ((_ is Concat!2977) (regOne!3799 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624642))

(assert (= (and b!623347 ((_ is Star!1643) (regOne!3799 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624643))

(assert (= (and b!623347 ((_ is Union!1643) (regOne!3799 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624644))

(declare-fun b!624647 () Bool)

(declare-fun e!379040 () Bool)

(declare-fun tp!194648 () Bool)

(assert (=> b!624647 (= e!379040 tp!194648)))

(declare-fun b!624646 () Bool)

(declare-fun tp!194647 () Bool)

(declare-fun tp!194649 () Bool)

(assert (=> b!624646 (= e!379040 (and tp!194647 tp!194649))))

(declare-fun b!624645 () Bool)

(assert (=> b!624645 (= e!379040 tp_is_empty!3613)))

(declare-fun b!624648 () Bool)

(declare-fun tp!194650 () Bool)

(declare-fun tp!194646 () Bool)

(assert (=> b!624648 (= e!379040 (and tp!194650 tp!194646))))

(assert (=> b!623347 (= tp!193685 e!379040)))

(assert (= (and b!623347 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624645))

(assert (= (and b!623347 ((_ is Concat!2977) (regTwo!3799 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624646))

(assert (= (and b!623347 ((_ is Star!1643) (regTwo!3799 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624647))

(assert (= (and b!623347 ((_ is Union!1643) (regTwo!3799 (regOne!3798 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624648))

(declare-fun b!624652 () Bool)

(declare-fun b_free!18297 () Bool)

(declare-fun b_next!18313 () Bool)

(assert (=> b!624652 (= b_free!18297 (not b_next!18313))))

(declare-fun tp!194654 () Bool)

(declare-fun b_and!62023 () Bool)

(assert (=> b!624652 (= tp!194654 b_and!62023)))

(declare-fun b_free!18299 () Bool)

(declare-fun b_next!18315 () Bool)

(assert (=> b!624652 (= b_free!18299 (not b_next!18315))))

(declare-fun tb!54239 () Bool)

(declare-fun t!82168 () Bool)

(assert (=> (and b!624652 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (dropList!260 v!6361 from!852)))))))) t!82168) tb!54239))

(declare-fun result!61250 () Bool)

(assert (= result!61250 result!61134))

(assert (=> d!218495 t!82168))

(declare-fun t!82170 () Bool)

(declare-fun tb!54241 () Bool)

(assert (=> (and b!624652 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852)))))) t!82170) tb!54241))

(declare-fun result!61252 () Bool)

(assert (= result!61252 result!61030))

(assert (=> d!217899 t!82170))

(declare-fun tb!54243 () Bool)

(declare-fun t!82172 () Bool)

(assert (=> (and b!624652 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136)))) t!82172) tb!54243))

(declare-fun result!61254 () Bool)

(assert (= result!61254 result!61014))

(assert (=> b!622606 t!82172))

(declare-fun t!82174 () Bool)

(declare-fun tb!54245 () Bool)

(assert (=> (and b!624652 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) t!82174) tb!54245))

(declare-fun result!61256 () Bool)

(assert (= result!61256 result!61050))

(assert (=> b!623126 t!82174))

(declare-fun t!82176 () Bool)

(declare-fun tb!54247 () Bool)

(assert (=> (and b!624652 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) t!82176) tb!54247))

(declare-fun result!61258 () Bool)

(assert (= result!61258 result!61114))

(assert (=> b!623764 t!82176))

(declare-fun t!82178 () Bool)

(declare-fun tb!54249 () Bool)

(assert (=> (and b!624652 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) t!82178) tb!54249))

(declare-fun result!61260 () Bool)

(assert (= result!61260 result!61144))

(assert (=> b!624003 t!82178))

(declare-fun t!82180 () Bool)

(declare-fun tb!54251 () Bool)

(assert (=> (and b!624652 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) t!82180) tb!54251))

(declare-fun result!61262 () Bool)

(assert (= result!61262 result!61124))

(assert (=> b!623858 t!82180))

(declare-fun tb!54253 () Bool)

(declare-fun t!82182 () Bool)

(assert (=> (and b!624652 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852))))))) t!82182) tb!54253))

(declare-fun result!61264 () Bool)

(assert (= result!61264 result!61054))

(assert (=> d!218079 t!82182))

(assert (=> d!217891 t!82172))

(declare-fun tp!194655 () Bool)

(declare-fun b_and!62025 () Bool)

(assert (=> b!624652 (= tp!194655 (and (=> t!82180 result!61262) (=> t!82182 result!61264) (=> t!82178 result!61260) (=> t!82174 result!61256) (=> t!82170 result!61252) (=> t!82176 result!61258) (=> t!82172 result!61254) (=> t!82168 result!61250) b_and!62025))))

(declare-fun tp!194652 () Bool)

(declare-fun e!379042 () Bool)

(declare-fun b!624650 () Bool)

(declare-fun e!379045 () Bool)

(assert (=> b!624650 (= e!379045 (and (inv!21 (value!42170 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361)))))))) e!379042 tp!194652))))

(declare-fun e!379041 () Bool)

(assert (=> b!624652 (= e!379041 (and tp!194654 tp!194655))))

(declare-fun e!379046 () Bool)

(assert (=> b!623397 (= tp!193737 e!379046)))

(declare-fun b!624649 () Bool)

(declare-fun tp!194653 () Bool)

(assert (=> b!624649 (= e!379046 (and (inv!8148 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))) e!379045 tp!194653))))

(declare-fun tp!194651 () Bool)

(declare-fun b!624651 () Bool)

(assert (=> b!624651 (= e!379042 (and tp!194651 (inv!8141 (tag!1571 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (inv!8149 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) e!379041))))

(assert (= b!624651 b!624652))

(assert (= b!624650 b!624651))

(assert (= b!624649 b!624650))

(assert (= (and b!623397 ((_ is Cons!6416) (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))) b!624649))

(declare-fun m!892857 () Bool)

(assert (=> b!624650 m!892857))

(declare-fun m!892859 () Bool)

(assert (=> b!624649 m!892859))

(declare-fun m!892861 () Bool)

(assert (=> b!624651 m!892861))

(declare-fun m!892863 () Bool)

(assert (=> b!624651 m!892863))

(declare-fun b!624655 () Bool)

(declare-fun e!379047 () Bool)

(declare-fun tp!194658 () Bool)

(assert (=> b!624655 (= e!379047 tp!194658)))

(declare-fun b!624654 () Bool)

(declare-fun tp!194657 () Bool)

(declare-fun tp!194659 () Bool)

(assert (=> b!624654 (= e!379047 (and tp!194657 tp!194659))))

(declare-fun b!624653 () Bool)

(assert (=> b!624653 (= e!379047 tp_is_empty!3613)))

(declare-fun b!624656 () Bool)

(declare-fun tp!194660 () Bool)

(declare-fun tp!194656 () Bool)

(assert (=> b!624656 (= e!379047 (and tp!194660 tp!194656))))

(assert (=> b!623403 (= tp!193743 e!379047)))

(assert (= (and b!623403 ((_ is ElementMatch!1643) (regex!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624653))

(assert (= (and b!623403 ((_ is Concat!2977) (regex!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624654))

(assert (= (and b!623403 ((_ is Star!1643) (regex!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624655))

(assert (= (and b!623403 ((_ is Union!1643) (regex!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) b!624656))

(declare-fun b!624659 () Bool)

(declare-fun e!379048 () Bool)

(declare-fun tp!194663 () Bool)

(assert (=> b!624659 (= e!379048 tp!194663)))

(declare-fun b!624658 () Bool)

(declare-fun tp!194662 () Bool)

(declare-fun tp!194664 () Bool)

(assert (=> b!624658 (= e!379048 (and tp!194662 tp!194664))))

(declare-fun b!624657 () Bool)

(assert (=> b!624657 (= e!379048 tp_is_empty!3613)))

(declare-fun b!624660 () Bool)

(declare-fun tp!194665 () Bool)

(declare-fun tp!194661 () Bool)

(assert (=> b!624660 (= e!379048 (and tp!194665 tp!194661))))

(assert (=> b!623336 (= tp!193677 e!379048)))

(assert (= (and b!623336 ((_ is ElementMatch!1643) (reg!1972 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624657))

(assert (= (and b!623336 ((_ is Concat!2977) (reg!1972 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624658))

(assert (= (and b!623336 ((_ is Star!1643) (reg!1972 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624659))

(assert (= (and b!623336 ((_ is Union!1643) (reg!1972 (regOne!3798 (regTwo!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624660))

(declare-fun b!624663 () Bool)

(declare-fun e!379049 () Bool)

(declare-fun tp!194668 () Bool)

(assert (=> b!624663 (= e!379049 tp!194668)))

(declare-fun b!624662 () Bool)

(declare-fun tp!194667 () Bool)

(declare-fun tp!194669 () Bool)

(assert (=> b!624662 (= e!379049 (and tp!194667 tp!194669))))

(declare-fun b!624661 () Bool)

(assert (=> b!624661 (= e!379049 tp_is_empty!3613)))

(declare-fun b!624664 () Bool)

(declare-fun tp!194670 () Bool)

(declare-fun tp!194666 () Bool)

(assert (=> b!624664 (= e!379049 (and tp!194670 tp!194666))))

(assert (=> b!623303 (= tp!193644 e!379049)))

(assert (= (and b!623303 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624661))

(assert (= (and b!623303 ((_ is Concat!2977) (regOne!3798 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624662))

(assert (= (and b!623303 ((_ is Star!1643) (regOne!3798 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624663))

(assert (= (and b!623303 ((_ is Union!1643) (regOne!3798 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624664))

(declare-fun b!624667 () Bool)

(declare-fun e!379050 () Bool)

(declare-fun tp!194673 () Bool)

(assert (=> b!624667 (= e!379050 tp!194673)))

(declare-fun b!624666 () Bool)

(declare-fun tp!194672 () Bool)

(declare-fun tp!194674 () Bool)

(assert (=> b!624666 (= e!379050 (and tp!194672 tp!194674))))

(declare-fun b!624665 () Bool)

(assert (=> b!624665 (= e!379050 tp_is_empty!3613)))

(declare-fun b!624668 () Bool)

(declare-fun tp!194675 () Bool)

(declare-fun tp!194671 () Bool)

(assert (=> b!624668 (= e!379050 (and tp!194675 tp!194671))))

(assert (=> b!623303 (= tp!193646 e!379050)))

(assert (= (and b!623303 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624665))

(assert (= (and b!623303 ((_ is Concat!2977) (regTwo!3798 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624666))

(assert (= (and b!623303 ((_ is Star!1643) (regTwo!3798 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624667))

(assert (= (and b!623303 ((_ is Union!1643) (regTwo!3798 (regTwo!3799 (regTwo!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624668))

(declare-fun b!624671 () Bool)

(declare-fun e!379051 () Bool)

(declare-fun tp!194678 () Bool)

(assert (=> b!624671 (= e!379051 tp!194678)))

(declare-fun b!624670 () Bool)

(declare-fun tp!194677 () Bool)

(declare-fun tp!194679 () Bool)

(assert (=> b!624670 (= e!379051 (and tp!194677 tp!194679))))

(declare-fun b!624669 () Bool)

(assert (=> b!624669 (= e!379051 tp_is_empty!3613)))

(declare-fun b!624672 () Bool)

(declare-fun tp!194680 () Bool)

(declare-fun tp!194676 () Bool)

(assert (=> b!624672 (= e!379051 (and tp!194680 tp!194676))))

(assert (=> b!623445 (= tp!193790 e!379051)))

(assert (= (and b!623445 ((_ is ElementMatch!1643) (reg!1972 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624669))

(assert (= (and b!623445 ((_ is Concat!2977) (reg!1972 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624670))

(assert (= (and b!623445 ((_ is Star!1643) (reg!1972 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624671))

(assert (= (and b!623445 ((_ is Union!1643) (reg!1972 (regOne!3799 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624672))

(declare-fun b!624675 () Bool)

(declare-fun e!379052 () Bool)

(declare-fun tp!194683 () Bool)

(assert (=> b!624675 (= e!379052 tp!194683)))

(declare-fun b!624674 () Bool)

(declare-fun tp!194682 () Bool)

(declare-fun tp!194684 () Bool)

(assert (=> b!624674 (= e!379052 (and tp!194682 tp!194684))))

(declare-fun b!624673 () Bool)

(assert (=> b!624673 (= e!379052 tp_is_empty!3613)))

(declare-fun b!624676 () Bool)

(declare-fun tp!194685 () Bool)

(declare-fun tp!194681 () Bool)

(assert (=> b!624676 (= e!379052 (and tp!194685 tp!194681))))

(assert (=> b!623410 (= tp!193752 e!379052)))

(assert (= (and b!623410 ((_ is ElementMatch!1643) (regOne!3799 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624673))

(assert (= (and b!623410 ((_ is Concat!2977) (regOne!3799 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624674))

(assert (= (and b!623410 ((_ is Star!1643) (regOne!3799 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624675))

(assert (= (and b!623410 ((_ is Union!1643) (regOne!3799 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624676))

(declare-fun b!624679 () Bool)

(declare-fun e!379053 () Bool)

(declare-fun tp!194688 () Bool)

(assert (=> b!624679 (= e!379053 tp!194688)))

(declare-fun b!624678 () Bool)

(declare-fun tp!194687 () Bool)

(declare-fun tp!194689 () Bool)

(assert (=> b!624678 (= e!379053 (and tp!194687 tp!194689))))

(declare-fun b!624677 () Bool)

(assert (=> b!624677 (= e!379053 tp_is_empty!3613)))

(declare-fun b!624680 () Bool)

(declare-fun tp!194690 () Bool)

(declare-fun tp!194686 () Bool)

(assert (=> b!624680 (= e!379053 (and tp!194690 tp!194686))))

(assert (=> b!623410 (= tp!193748 e!379053)))

(assert (= (and b!623410 ((_ is ElementMatch!1643) (regTwo!3799 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624677))

(assert (= (and b!623410 ((_ is Concat!2977) (regTwo!3799 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624678))

(assert (= (and b!623410 ((_ is Star!1643) (regTwo!3799 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624679))

(assert (= (and b!623410 ((_ is Union!1643) (regTwo!3799 (regOne!3798 (reg!1972 (regex!1309 (rule!2105 separatorToken!136))))))) b!624680))

(declare-fun tp!194693 () Bool)

(declare-fun e!379055 () Bool)

(declare-fun tp!194692 () Bool)

(declare-fun b!624681 () Bool)

(assert (=> b!624681 (= e!379055 (and (inv!8146 (left!5088 (left!5088 (right!5418 (left!5088 (c!114443 v!6361)))))) tp!194693 (inv!8146 (right!5418 (left!5088 (right!5418 (left!5088 (c!114443 v!6361)))))) tp!194692))))

(declare-fun b!624683 () Bool)

(declare-fun e!379054 () Bool)

(declare-fun tp!194691 () Bool)

(assert (=> b!624683 (= e!379054 tp!194691)))

(declare-fun b!624682 () Bool)

(assert (=> b!624682 (= e!379055 (and (inv!8158 (xs!4697 (left!5088 (right!5418 (left!5088 (c!114443 v!6361)))))) e!379054))))

(assert (=> b!623309 (= tp!193653 (and (inv!8146 (left!5088 (right!5418 (left!5088 (c!114443 v!6361))))) e!379055))))

(assert (= (and b!623309 ((_ is Node!2060) (left!5088 (right!5418 (left!5088 (c!114443 v!6361)))))) b!624681))

(assert (= b!624682 b!624683))

(assert (= (and b!623309 ((_ is Leaf!3223) (left!5088 (right!5418 (left!5088 (c!114443 v!6361)))))) b!624682))

(declare-fun m!892865 () Bool)

(assert (=> b!624681 m!892865))

(declare-fun m!892867 () Bool)

(assert (=> b!624681 m!892867))

(declare-fun m!892869 () Bool)

(assert (=> b!624682 m!892869))

(assert (=> b!623309 m!891655))

(declare-fun tp!194695 () Bool)

(declare-fun b!624684 () Bool)

(declare-fun tp!194696 () Bool)

(declare-fun e!379057 () Bool)

(assert (=> b!624684 (= e!379057 (and (inv!8146 (left!5088 (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))) tp!194696 (inv!8146 (right!5418 (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))) tp!194695))))

(declare-fun b!624686 () Bool)

(declare-fun e!379056 () Bool)

(declare-fun tp!194694 () Bool)

(assert (=> b!624686 (= e!379056 tp!194694)))

(declare-fun b!624685 () Bool)

(assert (=> b!624685 (= e!379057 (and (inv!8158 (xs!4697 (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))) e!379056))))

(assert (=> b!623309 (= tp!193652 (and (inv!8146 (right!5418 (right!5418 (left!5088 (c!114443 v!6361))))) e!379057))))

(assert (= (and b!623309 ((_ is Node!2060) (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))) b!624684))

(assert (= b!624685 b!624686))

(assert (= (and b!623309 ((_ is Leaf!3223) (right!5418 (right!5418 (left!5088 (c!114443 v!6361)))))) b!624685))

(declare-fun m!892871 () Bool)

(assert (=> b!624684 m!892871))

(declare-fun m!892873 () Bool)

(assert (=> b!624684 m!892873))

(declare-fun m!892875 () Bool)

(assert (=> b!624685 m!892875))

(assert (=> b!623309 m!891657))

(declare-fun b!624689 () Bool)

(declare-fun e!379058 () Bool)

(declare-fun tp!194699 () Bool)

(assert (=> b!624689 (= e!379058 tp!194699)))

(declare-fun b!624688 () Bool)

(declare-fun tp!194698 () Bool)

(declare-fun tp!194700 () Bool)

(assert (=> b!624688 (= e!379058 (and tp!194698 tp!194700))))

(declare-fun b!624687 () Bool)

(assert (=> b!624687 (= e!379058 tp_is_empty!3613)))

(declare-fun b!624690 () Bool)

(declare-fun tp!194701 () Bool)

(declare-fun tp!194697 () Bool)

(assert (=> b!624690 (= e!379058 (and tp!194701 tp!194697))))

(assert (=> b!623436 (= tp!193779 e!379058)))

(assert (= (and b!623436 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624687))

(assert (= (and b!623436 ((_ is Concat!2977) (regOne!3798 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624688))

(assert (= (and b!623436 ((_ is Star!1643) (regOne!3798 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624689))

(assert (= (and b!623436 ((_ is Union!1643) (regOne!3798 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624690))

(declare-fun b!624693 () Bool)

(declare-fun e!379059 () Bool)

(declare-fun tp!194704 () Bool)

(assert (=> b!624693 (= e!379059 tp!194704)))

(declare-fun b!624692 () Bool)

(declare-fun tp!194703 () Bool)

(declare-fun tp!194705 () Bool)

(assert (=> b!624692 (= e!379059 (and tp!194703 tp!194705))))

(declare-fun b!624691 () Bool)

(assert (=> b!624691 (= e!379059 tp_is_empty!3613)))

(declare-fun b!624694 () Bool)

(declare-fun tp!194706 () Bool)

(declare-fun tp!194702 () Bool)

(assert (=> b!624694 (= e!379059 (and tp!194706 tp!194702))))

(assert (=> b!623436 (= tp!193781 e!379059)))

(assert (= (and b!623436 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624691))

(assert (= (and b!623436 ((_ is Concat!2977) (regTwo!3798 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624692))

(assert (= (and b!623436 ((_ is Star!1643) (regTwo!3798 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624693))

(assert (= (and b!623436 ((_ is Union!1643) (regTwo!3798 (regTwo!3798 (regOne!3798 (regex!1309 (rule!2105 separatorToken!136))))))) b!624694))

(declare-fun tp!194709 () Bool)

(declare-fun tp!194707 () Bool)

(declare-fun e!379060 () Bool)

(declare-fun b!624695 () Bool)

(assert (=> b!624695 (= e!379060 (and (inv!8156 (left!5087 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) tp!194709 (inv!8156 (right!5417 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) tp!194707))))

(declare-fun b!624697 () Bool)

(declare-fun e!379061 () Bool)

(declare-fun tp!194708 () Bool)

(assert (=> b!624697 (= e!379061 tp!194708)))

(declare-fun b!624696 () Bool)

(assert (=> b!624696 (= e!379060 (and (inv!8162 (xs!4696 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) e!379061))))

(assert (=> b!623385 (= tp!193733 (and (inv!8156 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!379060))))

(assert (= (and b!623385 ((_ is Node!2059) (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!624695))

(assert (= b!624696 b!624697))

(assert (= (and b!623385 ((_ is Leaf!3222) (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!624696))

(declare-fun m!892877 () Bool)

(assert (=> b!624695 m!892877))

(declare-fun m!892879 () Bool)

(assert (=> b!624695 m!892879))

(declare-fun m!892881 () Bool)

(assert (=> b!624696 m!892881))

(assert (=> b!623385 m!891703))

(declare-fun tp!194710 () Bool)

(declare-fun b!624698 () Bool)

(declare-fun tp!194712 () Bool)

(declare-fun e!379062 () Bool)

(assert (=> b!624698 (= e!379062 (and (inv!8156 (left!5087 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) tp!194712 (inv!8156 (right!5417 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) tp!194710))))

(declare-fun b!624700 () Bool)

(declare-fun e!379063 () Bool)

(declare-fun tp!194711 () Bool)

(assert (=> b!624700 (= e!379063 tp!194711)))

(declare-fun b!624699 () Bool)

(assert (=> b!624699 (= e!379062 (and (inv!8162 (xs!4696 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) e!379063))))

(assert (=> b!623385 (= tp!193731 (and (inv!8156 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136)))))) e!379062))))

(assert (= (and b!623385 ((_ is Node!2059) (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!624698))

(assert (= b!624699 b!624700))

(assert (= (and b!623385 ((_ is Leaf!3222) (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (value!42170 separatorToken!136))))))) b!624699))

(declare-fun m!892883 () Bool)

(assert (=> b!624698 m!892883))

(declare-fun m!892885 () Bool)

(assert (=> b!624698 m!892885))

(declare-fun m!892887 () Bool)

(assert (=> b!624699 m!892887))

(assert (=> b!623385 m!891705))

(declare-fun b!624703 () Bool)

(declare-fun e!379064 () Bool)

(declare-fun tp!194715 () Bool)

(assert (=> b!624703 (= e!379064 tp!194715)))

(declare-fun b!624702 () Bool)

(declare-fun tp!194714 () Bool)

(declare-fun tp!194716 () Bool)

(assert (=> b!624702 (= e!379064 (and tp!194714 tp!194716))))

(declare-fun b!624701 () Bool)

(assert (=> b!624701 (= e!379064 tp_is_empty!3613)))

(declare-fun b!624704 () Bool)

(declare-fun tp!194717 () Bool)

(declare-fun tp!194713 () Bool)

(assert (=> b!624704 (= e!379064 (and tp!194717 tp!194713))))

(assert (=> b!623424 (= tp!193764 e!379064)))

(assert (= (and b!623424 ((_ is ElementMatch!1643) (regOne!3798 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624701))

(assert (= (and b!623424 ((_ is Concat!2977) (regOne!3798 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624702))

(assert (= (and b!623424 ((_ is Star!1643) (regOne!3798 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624703))

(assert (= (and b!623424 ((_ is Union!1643) (regOne!3798 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624704))

(declare-fun b!624707 () Bool)

(declare-fun e!379065 () Bool)

(declare-fun tp!194720 () Bool)

(assert (=> b!624707 (= e!379065 tp!194720)))

(declare-fun b!624706 () Bool)

(declare-fun tp!194719 () Bool)

(declare-fun tp!194721 () Bool)

(assert (=> b!624706 (= e!379065 (and tp!194719 tp!194721))))

(declare-fun b!624705 () Bool)

(assert (=> b!624705 (= e!379065 tp_is_empty!3613)))

(declare-fun b!624708 () Bool)

(declare-fun tp!194722 () Bool)

(declare-fun tp!194718 () Bool)

(assert (=> b!624708 (= e!379065 (and tp!194722 tp!194718))))

(assert (=> b!623424 (= tp!193766 e!379065)))

(assert (= (and b!623424 ((_ is ElementMatch!1643) (regTwo!3798 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624705))

(assert (= (and b!623424 ((_ is Concat!2977) (regTwo!3798 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624706))

(assert (= (and b!623424 ((_ is Star!1643) (regTwo!3798 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624707))

(assert (= (and b!623424 ((_ is Union!1643) (regTwo!3798 (regTwo!3798 (regOne!3799 (regex!1309 (rule!2105 separatorToken!136))))))) b!624708))

(declare-fun tp!194723 () Bool)

(declare-fun e!379066 () Bool)

(declare-fun tp!194725 () Bool)

(declare-fun b!624709 () Bool)

(assert (=> b!624709 (= e!379066 (and (inv!8156 (left!5087 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) tp!194725 (inv!8156 (right!5417 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) tp!194723))))

(declare-fun b!624711 () Bool)

(declare-fun e!379067 () Bool)

(declare-fun tp!194724 () Bool)

(assert (=> b!624711 (= e!379067 tp!194724)))

(declare-fun b!624710 () Bool)

(assert (=> b!624710 (= e!379066 (and (inv!8162 (xs!4696 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) e!379067))))

(assert (=> b!623331 (= tp!193674 (and (inv!8156 (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) e!379066))))

(assert (= (and b!623331 ((_ is Node!2059) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) b!624709))

(assert (= b!624710 b!624711))

(assert (= (and b!623331 ((_ is Leaf!3222) (left!5087 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) b!624710))

(declare-fun m!892889 () Bool)

(assert (=> b!624709 m!892889))

(declare-fun m!892891 () Bool)

(assert (=> b!624709 m!892891))

(declare-fun m!892893 () Bool)

(assert (=> b!624710 m!892893))

(assert (=> b!623331 m!891677))

(declare-fun tp!194728 () Bool)

(declare-fun tp!194726 () Bool)

(declare-fun e!379068 () Bool)

(declare-fun b!624712 () Bool)

(assert (=> b!624712 (= e!379068 (and (inv!8156 (left!5087 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) tp!194728 (inv!8156 (right!5417 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) tp!194726))))

(declare-fun b!624714 () Bool)

(declare-fun e!379069 () Bool)

(declare-fun tp!194727 () Bool)

(assert (=> b!624714 (= e!379069 tp!194727)))

(declare-fun b!624713 () Bool)

(assert (=> b!624713 (= e!379068 (and (inv!8162 (xs!4696 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) e!379069))))

(assert (=> b!623331 (= tp!193672 (and (inv!8156 (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852))))))) e!379068))))

(assert (= (and b!623331 ((_ is Node!2059) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) b!624712))

(assert (= b!624713 b!624714))

(assert (= (and b!623331 ((_ is Leaf!3222) (right!5417 (c!114441 (dynLambda!3623 (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (dropList!260 v!6361 from!852))))) (value!42170 (h!11817 (dropList!260 v!6361 from!852)))))))) b!624713))

(declare-fun m!892895 () Bool)

(assert (=> b!624712 m!892895))

(declare-fun m!892897 () Bool)

(assert (=> b!624712 m!892897))

(declare-fun m!892899 () Bool)

(assert (=> b!624713 m!892899))

(assert (=> b!623331 m!891679))

(declare-fun b_lambda!24649 () Bool)

(assert (= b_lambda!24643 (or (and b!623316 b_free!18251 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!624580 b_free!18291 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!623404 b_free!18259 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!624360 b_free!18287 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!624155 b_free!18275 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!624252 b_free!18279 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!624584 b_free!18295 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!622524 b_free!18239 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!623322 b_free!18255) (and b!624652 b_free!18299 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!624319 b_free!18283 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) (and b!622896 b_free!18243 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))))) b_lambda!24649)))

(declare-fun b_lambda!24651 () Bool)

(assert (= b_lambda!24641 (or (and b!623404 b_free!18259) (and b!624580 b_free!18291 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!624155 b_free!18275 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!624360 b_free!18287 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!622524 b_free!18239 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!623322 b_free!18255 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!622896 b_free!18243 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!624252 b_free!18279 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!623316 b_free!18251 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!624584 b_free!18295 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!624319 b_free!18283 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) (and b!624652 b_free!18299 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))))) b_lambda!24651)))

(declare-fun b_lambda!24653 () Bool)

(assert (= b_lambda!24623 (or (and b!622524 b_free!18239 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!624155 b_free!18275 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!624360 b_free!18287 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!624319 b_free!18283 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!623322 b_free!18255 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!624580 b_free!18291 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!624252 b_free!18279 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!624584 b_free!18295 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!623316 b_free!18251 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!622896 b_free!18243 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!623404 b_free!18259 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) (and b!624652 b_free!18299 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (dropList!260 v!6361 from!852)))))))) b_lambda!24653)))

(declare-fun b_lambda!24655 () Bool)

(assert (= b_lambda!24613 (or (and b!623322 b_free!18255 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!624252 b_free!18279 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!624580 b_free!18291 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!624360 b_free!18287 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!624584 b_free!18295 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!624319 b_free!18283 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!623316 b_free!18251 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!624652 b_free!18299 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!624155 b_free!18275 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) (and b!623404 b_free!18259 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))))) b_lambda!24655)))

(declare-fun b_lambda!24657 () Bool)

(assert (= b_lambda!24647 (or (and b!622896 b_free!18243 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (c!114443 v!6361))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!623322 b_free!18255 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!623404 b_free!18259 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361)))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!624319 b_free!18283 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!624652 b_free!18299 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!623316 b_free!18251) (and b!624584 b_free!18295 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!622524 b_free!18239 (= (toChars!2093 (transformation!1309 (rule!2105 separatorToken!136))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!624252 b_free!18279 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (right!5418 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!624580 b_free!18291 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!624155 b_free!18275 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (t!81933 (t!81933 (innerList!2118 (xs!4697 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) (and b!624360 b_free!18287 (= (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (right!5418 (left!5088 (c!114443 v!6361))))))))) (toChars!2093 (transformation!1309 (rule!2105 (h!11817 (innerList!2118 (xs!4697 (left!5088 (c!114443 v!6361)))))))))) b_lambda!24657)))

(check-sat (not b!624216) (not b!624536) (not b!624259) (not b!623915) (not b!623912) (not b!623860) (not b!624042) (not b!624031) (not d!218401) (not b!624197) (not b!624016) (not b!624271) (not d!218559) (not b!624364) (not b!624002) (not b_next!18253) b_and!61999 (not b!624530) (not b!624410) (not b_next!18307) (not b!623864) (not b!624411) (not b!623939) (not b!623922) (not d!218459) (not b!624075) (not b!623791) (not b!623749) (not b!624201) (not b!624611) (not b!624152) (not d!218529) b_and!61991 (not b!624254) (not b!624634) (not b!623746) (not b!624476) (not b!624472) (not b!623793) (not b!624153) (not b!624679) (not tb!54123) (not b!624615) (not b!623841) (not b!624244) (not b!624005) (not b!624538) (not d!218327) (not b!624420) b_and!62017 (not b_lambda!24629) (not b!624542) (not b!624139) (not b!624554) (not d!218519) (not b_next!18297) (not b!624326) (not b!623831) (not b!624457) (not d!218437) (not b!624481) (not b!624700) (not b!623950) (not b!624474) (not b!624167) (not b!623759) (not b!624161) (not b!624680) (not b!624022) (not b!623128) (not b!624299) (not b!624126) (not b!624173) (not b!624318) (not d!218501) (not b!624203) b_and!62023 (not d!218431) (not b!624063) (not b!624237) (not b!623851) (not b!624055) (not b!623757) (not b!624123) (not b!624441) (not b!623829) (not b!624378) b_and!61997 (not b!624361) (not b!623976) (not b!624322) (not b!623771) (not b_next!18309) (not b!624049) (not b_next!18315) (not b!624113) (not b!624711) (not b!624708) (not b!624588) (not d!218441) (not b!624714) (not b!624445) (not b!624433) (not b_lambda!24657) (not b!624660) (not b!624248) (not b!623833) (not b!623769) (not b!623966) (not b!624159) (not b!624526) (not b!624626) b_and!62005 (not b!623969) (not b!624274) (not d!218359) (not b!624281) (not b!624692) (not b!624092) (not b!624056) (not b!624038) (not b!624524) (not b!624101) (not b!624247) b_and!61907 (not b!624125) (not b!624142) (not b!624517) (not b!624187) (not b!624302) (not b!623886) (not b!623965) (not b!624251) (not b!624327) (not b_next!18269) (not b!624582) (not b!624359) b_and!62001 (not b!624672) (not b!624301) (not b!624395) (not b!623941) (not b!624269) (not b!623781) (not b!624564) (not b!624358) (not b!624331) (not b!624648) (not b_lambda!24645) (not b!624190) (not b!624501) (not b!624097) (not b!624627) (not b!624545) (not d!218311) (not b!624373) b_and!61989 (not b!624339) (not b!624663) (not b!624315) (not b!623766) (not b!624050) (not b!624023) (not b!623861) (not b!623880) b_and!62021 (not b!624649) (not b!624546) (not b!624313) (not b!623748) (not b!624402) (not b!624347) (not b!624135) (not b!624506) (not b!624461) (not d!218323) (not b!624608) (not b!624306) (not b!624416) (not b!624540) (not b!624320) (not b!624224) (not d!218435) (not b!624620) (not d!218361) (not b!623947) (not b!623809) (not b!624604) (not b!624486) (not b!624703) (not b!624177) (not b!624656) (not b!624240) (not b!624212) (not b!623820) (not b!624106) (not b!624522) (not b!624181) (not b!623388) (not b!624595) (not b!624270) (not b!624236) (not b!624566) (not b!624438) (not b!624664) (not b!624165) (not b!624069) (not b!624442) (not b!624473) (not b!623331) (not b!624571) (not d!218341) (not b!624188) (not b!623921) (not b!624037) (not b!623815) (not b!624154) (not b!623878) (not b!624370) (not b!624211) (not b!624579) (not b!624698) (not b!624647) (not b!624508) (not b!624412) (not b!623938) b_and!61927 (not b!624114) (not b!624498) (not b!623987) (not b!623847) (not b!624343) (not b!624033) (not b!624130) (not b!624446) (not b!624150) (not d!218461) (not b!623997) (not b!624121) (not b_next!18289) (not b!624513) (not b!623849) (not b!624616) (not d!218583) (not b!624266) (not b!624064) (not d!218495) (not b!623845) b_and!62015 (not b!624095) (not b!624493) (not b!624324) (not b!623962) (not b!624275) (not b!624355) (not b!623814) (not b!623739) (not b!624389) (not b!624570) (not b!624377) (not b!624305) (not b!624048) (not b!624335) (not b!624623) (not b!624368) (not b!624659) (not b!624156) (not b!624369) (not b!624018) (not b!624342) (not b!624110) (not d!218543) (not b!623953) (not b!624504) (not b!624032) (not b!623884) (not b_next!18275) (not b!624485) (not b!623872) (not b!624192) b_and!61995 (not b!624115) (not b!624103) (not b!624138) (not b!624533) (not d!218445) (not b_lambda!24631) (not b!623951) (not d!218301) (not b!624424) (not d!218493) (not b!624332) (not b!623958) (not b!623826) (not b!624640) (not d!218511) (not b!624697) (not b!624437) (not b!624565) (not b_next!18293) (not b!624105) (not b!624256) (not b!624260) (not b!624179) (not b!624330) (not b!624340) (not tb!54103) (not b!624091) (not b!623999) (not b!624390) (not b_lambda!24651) (not b!624432) (not b!623395) (not b!624632) (not b!624509) (not b!623812) (not b!623952) (not b!624344) (not b!624194) (not b!623930) (not b!624229) (not b!624681) (not b!624118) (not b!624591) (not b!624460) (not b!624249) (not b!624034) (not b!624317) (not b!624372) (not b!624172) (not b!624624) (not b!624699) (not b!623874) (not b!624710) (not b!623806) (not d!218537) (not b!624525) (not b!623935) (not b!624567) (not d!218487) (not b_next!18303) (not b!623857) (not b!624202) (not b!624279) (not b!624622) (not b!623837) (not b!624052) (not b!624100) (not b!624598) (not b!624000) (not b!624147) (not b!624655) (not b!624310) (not b!623398) (not b!623853) (not b!624338) (not b!624612) (not b!624303) (not b!624185) (not b!623827) (not b!624243) (not b!623907) (not b!624290) (not b!624560) (not b!624336) (not b!624577) (not b!624283) (not b!624072) (not b!624450) (not b!623751) (not d!218527) (not b!624087) (not b_next!18305) (not b!624354) (not b!624206) (not b!624232) (not b!624316) (not b!624311) (not b!623980) (not b!624285) (not b!624277) (not b!624520) (not b!624383) (not b!624568) (not b!623933) b_and!61931 (not b!624195) b_and!61895 (not b!624619) (not b!624600) (not b!624239) (not b!623755) (not d!218463) (not b!624646) (not b!623778) (not b!624282) (not b!624510) (not b!624413) (not b!623786) (not b!623979) (not b!624468) (not b!624557) (not b!624352) (not b!624004) (not b!624464) (not b!624309) (not d!218291) (not d!218351) (not b!624529) (not b!624208) (not d!218517) (not b!624599) (not b!624143) (not d!218589) (not b_lambda!24655) (not b!623998) (not b!624537) (not d!218333) (not b!624590) (not b!624396) (not b_lambda!24653) (not b!624286) (not b!624704) (not b!624227) (not b!623897) (not b!624550) (not b!623882) b_and!62025 (not b_next!18291) (not d!218491) (not d!218413) (not b!624458) (not b!623808) (not b!624205) (not b!623756) (not b!624169) (not b!623875) (not b!624129) (not b!624323) (not b!624482) (not b!623991) (not b!624631) (not b!624434) (not b!624089) (not b!623891) (not b!624596) b_and!62013 (not b!624250) (not b!624480) (not b!623761) (not b!624489) (not b!624689) (not b!624428) (not b!623895) (not b!624688) (not b!624207) (not b!624261) (not b!624484) (not tb!54133) (not b!623743) (not d!218507) (not b_next!18313) (not b!624436) (not b!624380) (not b!624553) b_and!62007 (not b!624291) (not b!624111) (not b!624528) (not b!623745) (not b!623888) (not d!218513) (not b!623824) (not b_next!18299) (not b!624267) (not b!624223) (not b!624351) (not b!624514) (not b!624636) (not b!624556) (not b!623983) (not b!624293) (not d!218489) (not b!623768) (not b!624707) (not b!624193) (not b!624053) (not d!218365) (not b!624307) (not b!624614) (not d!218509) (not b!623772) (not b!624453) (not b!623802) (not b!624518) (not b!624119) (not d!218547) (not b!624051) (not b!624449) (not b!624666) (not b!624488) (not b!623906) (not b!624235) (not b!624425) (not b!624465) (not b!624502) (not b!624572) (not b!623949) (not b!623765) (not b!624583) (not b!623740) (not b!624662) b_and!62009 (not b!624157) (not b_next!18265) b_and!62011 (not b!624045) (not b!624133) (not b!623787) (not b!623959) (not b!624141) (not b!624289) (not b!624273) (not b!623943) (not d!218415) (not d!218603) (not b!624183) (not b!624158) (not d!218339) (not b!624003) (not b!623385) (not b!624184) (not b!624035) (not b!624576) (not b!623903) (not b!623855) (not b!624694) (not d!218597) (not b!623948) (not b!624690) (not b!623835) (not b!624094) (not b!624592) (not b!624686) (not b!623785) (not b_next!18259) (not b!623986) (not b!624391) (not b!624295) (not b!623777) (not b!624682) (not b_lambda!24627) (not b_next!18295) (not b!623823) (not b!624163) (not d!218503) (not b!624421) (not d!218265) (not b!624671) (not b!624423) (not b!624552) (not b!624209) (not b!623789) (not d!218417) (not b!624706) (not b!624469) (not d!218379) (not b!623931) (not b!624213) (not b!624466) (not b!624392) (not tb!54113) (not b!623764) (not b!624176) (not b!624231) (not b!624574) (not b!624558) (not b!623754) (not b!624430) (not d!218505) (not b!624036) (not b!624696) (not b!623918) (not b!624137) (not b!624219) (not b!624008) (not b!624544) (not b!624221) (not b!624494) (not b!623926) (not b!624587) (not b!624639) (not b!624693) (not b!624078) (not b!624400) (not b!624667) (not b!624168) (not b!624109) (not b!624404) (not b!624638) (not b!623866) (not b!624668) (not b!623898) (not b!624217) (not b!624387) (not b!624607) (not b!624675) (not b!624562) (not b!624650) (not b!624028) (not b!623790) (not b!623798) (not b!624298) (not b!624058) (not b!623763) (not b!624477) (not b!624496) (not b!623306) (not b!624500) (not b!624348) (not b!624505) (not d!218383) (not b!624478) (not b_next!18273) (not d!218281) (not b!624676) (not b!624630) (not b!624294) (not b!624541) (not b!623996) b_and!61939 (not b!624083) (not b!623911) (not b!624618) (not b!624145) (not b!624107) (not b!624278) (not b!623945) (not b!624427) (not b!624561) (not b!624131) (not b!624365) (not b!624007) (not b!623970) (not b!623794) (not b!623868) (not b!624651) (not b!624076) (not b!624417) (not b!624658) (not b!623858) (not b!624149) (not b!624160) (not b!623995) (not b!624549) (not b!624381) (not b!624419) (not b!624334) (not b!624683) (not d!218433) (not b!624534) (not b!623753) (not b!624255) (not b!624610) (not b!623844) (not b!624403) (not b!623973) (not b_next!18267) (not b!624415) (not b!623877) (not b!624470) (not b!623859) (not b!624085) (not b!623788) (not b!624581) (not b!623805) (not b!624040) (not b!623741) (not b!624462) (not b!624215) (not b!624246) (not b!624575) (not b!624429) (not b!624262) (not b!624628) (not b!624362) (not b!624497) (not b!623738) (not b!624548) (not b!624134) (not b!624452) (not b!624189) (not b!624386) (not b!624586) (not b!624099) (not b!624399) (not b_next!18301) (not b_lambda!24649) (not b!624712) (not bm!41137) (not b!623927) (not b!624146) (not b!624385) (not b!624328) (not b!624265) (not b!624238) (not b!624080) (not b!624490) (not b!624258) (not b!624228) (not b!624350) (not b!624314) (not b!624382) (not b!624346) (not b!624242) (not d!218403) (not b!624644) (not b!624674) (not b!624225) b_and!61993 (not b!624594) (not b!623774) (not b!624670) (not b_next!18255) (not d!218381) (not b!624407) (not b!623309) (not b!623989) (not b!624164) (not d!218385) (not b!624654) (not b!624521) (not b!624532) (not b!624448) (not b!624684) (not b!624108) (not b!624366) (not b!624263) (not b!624363) (not b!624081) (not b!624027) (not b!624374) (not b!624440) (not b!624020) (not b!624287) (not d!218551) (not d!218499) (not b_next!18271) (not b!624151) (not b!624454) (not b!624394) (not b!624117) (not b!623734) (not b!624516) (not b!624122) (not b!624073) (not b!623737) (not b!623955) (not b!623799) (not b_next!18257) (not b!624578) (not b!623870) (not d!218555) (not b!623752) (not b!624356) (not b!624643) (not b!624220) (not b!624492) (not b!624606) (not b!623914) (not b!623819) b_and!62019 (not b!624709) (not b!623838) (not b!624047) (not b!623974) (not b!623902) (not b!624702) (not b!624376) (not b!623736) (not b!624070) (not b!624512) (not b!623843) (not b!624602) (not b!623782) (not b!624444) (not b!624014) (not b!624297) (not b!624180) b_and!62003 (not b!624171) (not b!624603) (not b!623984) (not b!624685) (not b!624678) (not d!218587) (not b!624408) (not b!624199) (not b!624175) (not b!623963) tp_is_empty!3613 (not b!623909) (not b!624713) (not b!624398) (not d!218569) (not b!624127) (not b!624001) (not b!623894) (not b!623775) (not b!624011) (not b!624406) (not b!623803) (not b!624357) (not b!624695) (not b!623229) (not d!218279) (not d!218521) (not b!624198) (not b!624456) (not b!624233) (not b!624104) (not b_next!18311) (not b!624563) (not b!624642) (not b!624635))
(check-sat (not b_next!18253) b_and!61927 (not b_next!18293) (not b_next!18303) b_and!61895 (not b_next!18299) (not b_next!18259) (not b_next!18295) (not b_next!18273) b_and!61939 (not b_next!18267) (not b_next!18301) b_and!62003 (not b_next!18311) b_and!61999 b_and!61991 (not b_next!18307) (not b_next!18297) b_and!62017 b_and!62023 b_and!61997 (not b_next!18309) (not b_next!18315) b_and!62005 b_and!61907 (not b_next!18269) b_and!62001 b_and!61989 b_and!62021 b_and!62015 (not b_next!18289) (not b_next!18275) b_and!61995 (not b_next!18305) b_and!61931 b_and!62025 (not b_next!18291) b_and!62013 (not b_next!18313) b_and!62007 b_and!62009 (not b_next!18265) b_and!62011 (not b_next!18255) b_and!61993 (not b_next!18257) (not b_next!18271) b_and!62019)
