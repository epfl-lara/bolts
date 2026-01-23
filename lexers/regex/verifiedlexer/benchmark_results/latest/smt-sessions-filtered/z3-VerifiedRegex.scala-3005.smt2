; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179770 () Bool)

(assert start!179770)

(declare-fun b!1816867 () Bool)

(declare-fun b_free!50199 () Bool)

(declare-fun b_next!50903 () Bool)

(assert (=> b!1816867 (= b_free!50199 (not b_next!50903))))

(declare-fun tp!513274 () Bool)

(declare-fun b_and!140669 () Bool)

(assert (=> b!1816867 (= tp!513274 b_and!140669)))

(declare-fun b_free!50201 () Bool)

(declare-fun b_next!50905 () Bool)

(assert (=> b!1816867 (= b_free!50201 (not b_next!50905))))

(declare-fun tp!513264 () Bool)

(declare-fun b_and!140671 () Bool)

(assert (=> b!1816867 (= tp!513264 b_and!140671)))

(declare-fun b!1816874 () Bool)

(declare-fun b_free!50203 () Bool)

(declare-fun b_next!50907 () Bool)

(assert (=> b!1816874 (= b_free!50203 (not b_next!50907))))

(declare-fun tp!513263 () Bool)

(declare-fun b_and!140673 () Bool)

(assert (=> b!1816874 (= tp!513263 b_and!140673)))

(declare-fun b_free!50205 () Bool)

(declare-fun b_next!50909 () Bool)

(assert (=> b!1816874 (= b_free!50205 (not b_next!50909))))

(declare-fun tp!513271 () Bool)

(declare-fun b_and!140675 () Bool)

(assert (=> b!1816874 (= tp!513271 b_and!140675)))

(declare-fun b!1816868 () Bool)

(declare-fun b_free!50207 () Bool)

(declare-fun b_next!50911 () Bool)

(assert (=> b!1816868 (= b_free!50207 (not b_next!50911))))

(declare-fun tp!513268 () Bool)

(declare-fun b_and!140677 () Bool)

(assert (=> b!1816868 (= tp!513268 b_and!140677)))

(declare-fun b_free!50209 () Bool)

(declare-fun b_next!50913 () Bool)

(assert (=> b!1816868 (= b_free!50209 (not b_next!50913))))

(declare-fun tp!513270 () Bool)

(declare-fun b_and!140679 () Bool)

(assert (=> b!1816868 (= tp!513270 b_and!140679)))

(declare-fun b!1816862 () Bool)

(declare-fun e!1160821 () Bool)

(declare-fun tp_is_empty!8033 () Bool)

(declare-fun tp!513267 () Bool)

(assert (=> b!1816862 (= e!1160821 (and tp_is_empty!8033 tp!513267))))

(declare-fun b!1816863 () Bool)

(declare-fun e!1160826 () Bool)

(declare-fun tp!513265 () Bool)

(declare-datatypes ((List!19921 0))(
  ( (Nil!19851) (Cons!19851 (h!25252 (_ BitVec 16)) (t!169606 List!19921)) )
))
(declare-datatypes ((TokenValue!3661 0))(
  ( (FloatLiteralValue!7322 (text!26072 List!19921)) (TokenValueExt!3660 (__x!12624 Int)) (Broken!18305 (value!111414 List!19921)) (Object!3730) (End!3661) (Def!3661) (Underscore!3661) (Match!3661) (Else!3661) (Error!3661) (Case!3661) (If!3661) (Extends!3661) (Abstract!3661) (Class!3661) (Val!3661) (DelimiterValue!7322 (del!3721 List!19921)) (KeywordValue!3667 (value!111415 List!19921)) (CommentValue!7322 (value!111416 List!19921)) (WhitespaceValue!7322 (value!111417 List!19921)) (IndentationValue!3661 (value!111418 List!19921)) (String!22636) (Int32!3661) (Broken!18306 (value!111419 List!19921)) (Boolean!3662) (Unit!34538) (OperatorValue!3664 (op!3721 List!19921)) (IdentifierValue!7322 (value!111420 List!19921)) (IdentifierValue!7323 (value!111421 List!19921)) (WhitespaceValue!7323 (value!111422 List!19921)) (True!7322) (False!7322) (Broken!18307 (value!111423 List!19921)) (Broken!18308 (value!111424 List!19921)) (True!7323) (RightBrace!3661) (RightBracket!3661) (Colon!3661) (Null!3661) (Comma!3661) (LeftBracket!3661) (False!7323) (LeftBrace!3661) (ImaginaryLiteralValue!3661 (text!26073 List!19921)) (StringLiteralValue!10983 (value!111425 List!19921)) (EOFValue!3661 (value!111426 List!19921)) (IdentValue!3661 (value!111427 List!19921)) (DelimiterValue!7323 (value!111428 List!19921)) (DedentValue!3661 (value!111429 List!19921)) (NewLineValue!3661 (value!111430 List!19921)) (IntegerValue!10983 (value!111431 (_ BitVec 32)) (text!26074 List!19921)) (IntegerValue!10984 (value!111432 Int) (text!26075 List!19921)) (Times!3661) (Or!3661) (Equal!3661) (Minus!3661) (Broken!18309 (value!111433 List!19921)) (And!3661) (Div!3661) (LessEqual!3661) (Mod!3661) (Concat!8560) (Not!3661) (Plus!3661) (SpaceValue!3661 (value!111434 List!19921)) (IntegerValue!10985 (value!111435 Int) (text!26076 List!19921)) (StringLiteralValue!10984 (text!26077 List!19921)) (FloatLiteralValue!7323 (text!26078 List!19921)) (BytesLiteralValue!3661 (value!111436 List!19921)) (CommentValue!7323 (value!111437 List!19921)) (StringLiteralValue!10985 (value!111438 List!19921)) (ErrorTokenValue!3661 (msg!3722 List!19921)) )
))
(declare-datatypes ((String!22637 0))(
  ( (String!22638 (value!111439 String)) )
))
(declare-datatypes ((C!9972 0))(
  ( (C!9973 (val!5582 Int)) )
))
(declare-datatypes ((List!19922 0))(
  ( (Nil!19852) (Cons!19852 (h!25253 C!9972) (t!169607 List!19922)) )
))
(declare-datatypes ((IArray!13211 0))(
  ( (IArray!13212 (innerList!6663 List!19922)) )
))
(declare-datatypes ((Conc!6603 0))(
  ( (Node!6603 (left!15922 Conc!6603) (right!16252 Conc!6603) (csize!13436 Int) (cheight!6814 Int)) (Leaf!9609 (xs!9479 IArray!13211) (csize!13437 Int)) (Empty!6603) )
))
(declare-datatypes ((BalanceConc!13150 0))(
  ( (BalanceConc!13151 (c!296668 Conc!6603)) )
))
(declare-datatypes ((TokenValueInjection!6982 0))(
  ( (TokenValueInjection!6983 (toValue!5106 Int) (toChars!4965 Int)) )
))
(declare-datatypes ((Regex!4899 0))(
  ( (ElementMatch!4899 (c!296669 C!9972)) (Concat!8561 (regOne!10310 Regex!4899) (regTwo!10310 Regex!4899)) (EmptyExpr!4899) (Star!4899 (reg!5228 Regex!4899)) (EmptyLang!4899) (Union!4899 (regOne!10311 Regex!4899) (regTwo!10311 Regex!4899)) )
))
(declare-datatypes ((Rule!6942 0))(
  ( (Rule!6943 (regex!3571 Regex!4899) (tag!3985 String!22637) (isSeparator!3571 Bool) (transformation!3571 TokenValueInjection!6982)) )
))
(declare-datatypes ((Token!6696 0))(
  ( (Token!6697 (value!111440 TokenValue!3661) (rule!5679 Rule!6942) (size!15761 Int) (originalCharacters!4379 List!19922)) )
))
(declare-fun token!556 () Token!6696)

(declare-fun e!1160814 () Bool)

(declare-fun inv!21 (TokenValue!3661) Bool)

(assert (=> b!1816863 (= e!1160826 (and (inv!21 (value!111440 token!556)) e!1160814 tp!513265))))

(declare-fun b!1816864 () Bool)

(declare-fun res!816879 () Bool)

(declare-fun e!1160815 () Bool)

(assert (=> b!1816864 (=> (not res!816879) (not e!1160815))))

(declare-datatypes ((List!19923 0))(
  ( (Nil!19853) (Cons!19853 (h!25254 Rule!6942) (t!169608 List!19923)) )
))
(declare-fun rules!4538 () List!19923)

(declare-fun rule!559 () Rule!6942)

(declare-fun contains!3607 (List!19923 Rule!6942) Bool)

(assert (=> b!1816864 (= res!816879 (contains!3607 rules!4538 rule!559))))

(declare-fun b!1816865 () Bool)

(declare-fun res!816880 () Bool)

(assert (=> b!1816865 (=> (not res!816880) (not e!1160815))))

(declare-datatypes ((LexerInterface!3200 0))(
  ( (LexerInterfaceExt!3197 (__x!12625 Int)) (Lexer!3198) )
))
(declare-fun thiss!28068 () LexerInterface!3200)

(declare-fun rulesInvariant!2869 (LexerInterface!3200 List!19923) Bool)

(assert (=> b!1816865 (= res!816880 (rulesInvariant!2869 thiss!28068 rules!4538))))

(declare-fun b!1816866 () Bool)

(declare-fun res!816882 () Bool)

(assert (=> b!1816866 (=> (not res!816882) (not e!1160815))))

(assert (=> b!1816866 (= res!816882 (= (rule!5679 token!556) rule!559))))

(declare-fun e!1160825 () Bool)

(assert (=> b!1816867 (= e!1160825 (and tp!513274 tp!513264))))

(declare-fun e!1160819 () Bool)

(assert (=> b!1816868 (= e!1160819 (and tp!513268 tp!513270))))

(declare-fun res!816883 () Bool)

(assert (=> start!179770 (=> (not res!816883) (not e!1160815))))

(get-info :version)

(assert (=> start!179770 (= res!816883 ((_ is Lexer!3198) thiss!28068))))

(assert (=> start!179770 e!1160815))

(assert (=> start!179770 e!1160821))

(assert (=> start!179770 true))

(declare-fun e!1160817 () Bool)

(assert (=> start!179770 e!1160817))

(declare-fun inv!25878 (Token!6696) Bool)

(assert (=> start!179770 (and (inv!25878 token!556) e!1160826)))

(declare-fun e!1160823 () Bool)

(assert (=> start!179770 e!1160823))

(declare-fun e!1160827 () Bool)

(assert (=> start!179770 e!1160827))

(declare-fun b!1816869 () Bool)

(declare-fun tp!513272 () Bool)

(declare-fun inv!25875 (String!22637) Bool)

(declare-fun inv!25879 (TokenValueInjection!6982) Bool)

(assert (=> b!1816869 (= e!1160823 (and tp!513272 (inv!25875 (tag!3985 rule!559)) (inv!25879 (transformation!3571 rule!559)) e!1160819))))

(declare-fun b!1816870 () Bool)

(declare-fun e!1160829 () Bool)

(declare-fun tp!513262 () Bool)

(declare-fun e!1160818 () Bool)

(assert (=> b!1816870 (= e!1160829 (and tp!513262 (inv!25875 (tag!3985 (h!25254 rules!4538))) (inv!25879 (transformation!3571 (h!25254 rules!4538))) e!1160818))))

(declare-fun b!1816871 () Bool)

(declare-fun e!1160820 () Bool)

(declare-fun e!1160828 () Bool)

(assert (=> b!1816871 (= e!1160820 (not e!1160828))))

(declare-fun res!816885 () Bool)

(assert (=> b!1816871 (=> res!816885 e!1160828)))

(declare-fun lt!706087 () List!19922)

(declare-fun matchR!2364 (Regex!4899 List!19922) Bool)

(assert (=> b!1816871 (= res!816885 (not (matchR!2364 (regex!3571 rule!559) lt!706087)))))

(declare-fun ruleValid!1063 (LexerInterface!3200 Rule!6942) Bool)

(assert (=> b!1816871 (ruleValid!1063 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34539 0))(
  ( (Unit!34540) )
))
(declare-fun lt!706090 () Unit!34539)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!584 (LexerInterface!3200 Rule!6942 List!19923) Unit!34539)

(assert (=> b!1816871 (= lt!706090 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!584 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1816872 () Bool)

(declare-fun tp!513273 () Bool)

(assert (=> b!1816872 (= e!1160827 (and tp_is_empty!8033 tp!513273))))

(declare-fun b!1816873 () Bool)

(declare-fun res!816884 () Bool)

(assert (=> b!1816873 (=> res!816884 e!1160828)))

(declare-fun isEmpty!12556 (List!19922) Bool)

(assert (=> b!1816873 (= res!816884 (isEmpty!12556 lt!706087))))

(assert (=> b!1816874 (= e!1160818 (and tp!513263 tp!513271))))

(declare-fun b!1816875 () Bool)

(declare-fun res!816878 () Bool)

(assert (=> b!1816875 (=> (not res!816878) (not e!1160815))))

(declare-fun isEmpty!12557 (List!19923) Bool)

(assert (=> b!1816875 (= res!816878 (not (isEmpty!12557 rules!4538)))))

(declare-fun b!1816876 () Bool)

(assert (=> b!1816876 (= e!1160828 true)))

(declare-fun lt!706086 () Int)

(declare-fun size!15762 (List!19922) Int)

(assert (=> b!1816876 (= lt!706086 (size!15762 lt!706087))))

(declare-fun lt!706085 () TokenValue!3661)

(declare-fun lt!706088 () BalanceConc!13150)

(declare-fun apply!5363 (TokenValueInjection!6982 BalanceConc!13150) TokenValue!3661)

(assert (=> b!1816876 (= lt!706085 (apply!5363 (transformation!3571 rule!559) lt!706088))))

(declare-fun lt!706089 () Unit!34539)

(declare-fun lemmaSemiInverse!699 (TokenValueInjection!6982 BalanceConc!13150) Unit!34539)

(assert (=> b!1816876 (= lt!706089 (lemmaSemiInverse!699 (transformation!3571 rule!559) lt!706088))))

(declare-fun seqFromList!2532 (List!19922) BalanceConc!13150)

(assert (=> b!1816876 (= lt!706088 (seqFromList!2532 lt!706087))))

(declare-fun b!1816877 () Bool)

(declare-fun tp!513266 () Bool)

(assert (=> b!1816877 (= e!1160814 (and tp!513266 (inv!25875 (tag!3985 (rule!5679 token!556))) (inv!25879 (transformation!3571 (rule!5679 token!556))) e!1160825))))

(declare-fun b!1816878 () Bool)

(declare-fun tp!513269 () Bool)

(assert (=> b!1816878 (= e!1160817 (and e!1160829 tp!513269))))

(declare-fun b!1816879 () Bool)

(assert (=> b!1816879 (= e!1160815 e!1160820)))

(declare-fun res!816881 () Bool)

(assert (=> b!1816879 (=> (not res!816881) (not e!1160820))))

(declare-fun suffix!1667 () List!19922)

(declare-fun input!3612 () List!19922)

(declare-fun ++!5395 (List!19922 List!19922) List!19922)

(assert (=> b!1816879 (= res!816881 (= input!3612 (++!5395 lt!706087 suffix!1667)))))

(declare-fun list!8075 (BalanceConc!13150) List!19922)

(declare-fun charsOf!2214 (Token!6696) BalanceConc!13150)

(assert (=> b!1816879 (= lt!706087 (list!8075 (charsOf!2214 token!556)))))

(declare-fun b!1816880 () Bool)

(declare-fun res!816886 () Bool)

(assert (=> b!1816880 (=> (not res!816886) (not e!1160815))))

(declare-datatypes ((tuple2!19402 0))(
  ( (tuple2!19403 (_1!11103 Token!6696) (_2!11103 List!19922)) )
))
(declare-datatypes ((Option!4151 0))(
  ( (None!4150) (Some!4150 (v!25677 tuple2!19402)) )
))
(declare-fun maxPrefix!1748 (LexerInterface!3200 List!19923 List!19922) Option!4151)

(assert (=> b!1816880 (= res!816886 (= (maxPrefix!1748 thiss!28068 rules!4538 input!3612) (Some!4150 (tuple2!19403 token!556 suffix!1667))))))

(assert (= (and start!179770 res!816883) b!1816875))

(assert (= (and b!1816875 res!816878) b!1816865))

(assert (= (and b!1816865 res!816880) b!1816864))

(assert (= (and b!1816864 res!816879) b!1816880))

(assert (= (and b!1816880 res!816886) b!1816866))

(assert (= (and b!1816866 res!816882) b!1816879))

(assert (= (and b!1816879 res!816881) b!1816871))

(assert (= (and b!1816871 (not res!816885)) b!1816873))

(assert (= (and b!1816873 (not res!816884)) b!1816876))

(assert (= (and start!179770 ((_ is Cons!19852) suffix!1667)) b!1816862))

(assert (= b!1816870 b!1816874))

(assert (= b!1816878 b!1816870))

(assert (= (and start!179770 ((_ is Cons!19853) rules!4538)) b!1816878))

(assert (= b!1816877 b!1816867))

(assert (= b!1816863 b!1816877))

(assert (= start!179770 b!1816863))

(assert (= b!1816869 b!1816868))

(assert (= start!179770 b!1816869))

(assert (= (and start!179770 ((_ is Cons!19852) input!3612)) b!1816872))

(declare-fun m!2246315 () Bool)

(assert (=> b!1816870 m!2246315))

(declare-fun m!2246317 () Bool)

(assert (=> b!1816870 m!2246317))

(declare-fun m!2246319 () Bool)

(assert (=> b!1816873 m!2246319))

(declare-fun m!2246321 () Bool)

(assert (=> b!1816869 m!2246321))

(declare-fun m!2246323 () Bool)

(assert (=> b!1816869 m!2246323))

(declare-fun m!2246325 () Bool)

(assert (=> b!1816877 m!2246325))

(declare-fun m!2246327 () Bool)

(assert (=> b!1816877 m!2246327))

(declare-fun m!2246329 () Bool)

(assert (=> b!1816863 m!2246329))

(declare-fun m!2246331 () Bool)

(assert (=> b!1816875 m!2246331))

(declare-fun m!2246333 () Bool)

(assert (=> b!1816876 m!2246333))

(declare-fun m!2246335 () Bool)

(assert (=> b!1816876 m!2246335))

(declare-fun m!2246337 () Bool)

(assert (=> b!1816876 m!2246337))

(declare-fun m!2246339 () Bool)

(assert (=> b!1816876 m!2246339))

(declare-fun m!2246341 () Bool)

(assert (=> start!179770 m!2246341))

(declare-fun m!2246343 () Bool)

(assert (=> b!1816865 m!2246343))

(declare-fun m!2246345 () Bool)

(assert (=> b!1816880 m!2246345))

(declare-fun m!2246347 () Bool)

(assert (=> b!1816871 m!2246347))

(declare-fun m!2246349 () Bool)

(assert (=> b!1816871 m!2246349))

(declare-fun m!2246351 () Bool)

(assert (=> b!1816871 m!2246351))

(declare-fun m!2246353 () Bool)

(assert (=> b!1816879 m!2246353))

(declare-fun m!2246355 () Bool)

(assert (=> b!1816879 m!2246355))

(assert (=> b!1816879 m!2246355))

(declare-fun m!2246357 () Bool)

(assert (=> b!1816879 m!2246357))

(declare-fun m!2246359 () Bool)

(assert (=> b!1816864 m!2246359))

(check-sat (not b!1816875) b_and!140673 (not b_next!50903) (not b!1816878) (not b_next!50907) b_and!140679 (not b_next!50909) (not b!1816870) (not b!1816871) b_and!140677 tp_is_empty!8033 b_and!140669 (not start!179770) (not b!1816864) (not b_next!50913) b_and!140671 (not b!1816877) (not b!1816876) (not b!1816872) (not b!1816879) (not b!1816862) (not b!1816869) (not b!1816865) (not b_next!50911) (not b!1816873) b_and!140675 (not b_next!50905) (not b!1816880) (not b!1816863))
(check-sat b_and!140671 (not b_next!50911) b_and!140673 (not b_next!50903) (not b_next!50907) b_and!140679 (not b_next!50909) b_and!140677 b_and!140669 (not b_next!50913) b_and!140675 (not b_next!50905))
