; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511032 () Bool)

(assert start!511032)

(declare-fun b!4883878 () Bool)

(declare-fun b_free!131107 () Bool)

(declare-fun b_next!131897 () Bool)

(assert (=> b!4883878 (= b_free!131107 (not b_next!131897))))

(declare-fun tp!1374351 () Bool)

(declare-fun b_and!343939 () Bool)

(assert (=> b!4883878 (= tp!1374351 b_and!343939)))

(declare-fun b_free!131109 () Bool)

(declare-fun b_next!131899 () Bool)

(assert (=> b!4883878 (= b_free!131109 (not b_next!131899))))

(declare-fun tp!1374349 () Bool)

(declare-fun b_and!343941 () Bool)

(assert (=> b!4883878 (= tp!1374349 b_and!343941)))

(declare-fun b!4883871 () Bool)

(declare-fun res!2085052 () Bool)

(declare-fun e!3052611 () Bool)

(assert (=> b!4883871 (=> (not res!2085052) (not e!3052611))))

(declare-datatypes ((C!26556 0))(
  ( (C!26557 (val!22612 Int)) )
))
(declare-datatypes ((List!56317 0))(
  ( (Nil!56193) (Cons!56193 (h!62641 C!26556) (t!364963 List!56317)) )
))
(declare-datatypes ((IArray!29405 0))(
  ( (IArray!29406 (innerList!14760 List!56317)) )
))
(declare-datatypes ((Conc!14672 0))(
  ( (Node!14672 (left!40818 Conc!14672) (right!41148 Conc!14672) (csize!29574 Int) (cheight!14883 Int)) (Leaf!24441 (xs!17988 IArray!29405) (csize!29575 Int)) (Empty!14672) )
))
(declare-datatypes ((BalanceConc!28774 0))(
  ( (BalanceConc!28775 (c!830493 Conc!14672)) )
))
(declare-datatypes ((List!56318 0))(
  ( (Nil!56194) (Cons!56194 (h!62642 (_ BitVec 16)) (t!364964 List!56318)) )
))
(declare-datatypes ((TokenValue!8414 0))(
  ( (FloatLiteralValue!16828 (text!59343 List!56318)) (TokenValueExt!8413 (__x!34121 Int)) (Broken!42070 (value!260090 List!56318)) (Object!8537) (End!8414) (Def!8414) (Underscore!8414) (Match!8414) (Else!8414) (Error!8414) (Case!8414) (If!8414) (Extends!8414) (Abstract!8414) (Class!8414) (Val!8414) (DelimiterValue!16828 (del!8474 List!56318)) (KeywordValue!8420 (value!260091 List!56318)) (CommentValue!16828 (value!260092 List!56318)) (WhitespaceValue!16828 (value!260093 List!56318)) (IndentationValue!8414 (value!260094 List!56318)) (String!63511) (Int32!8414) (Broken!42071 (value!260095 List!56318)) (Boolean!8415) (Unit!146183) (OperatorValue!8417 (op!8474 List!56318)) (IdentifierValue!16828 (value!260096 List!56318)) (IdentifierValue!16829 (value!260097 List!56318)) (WhitespaceValue!16829 (value!260098 List!56318)) (True!16828) (False!16828) (Broken!42072 (value!260099 List!56318)) (Broken!42073 (value!260100 List!56318)) (True!16829) (RightBrace!8414) (RightBracket!8414) (Colon!8414) (Null!8414) (Comma!8414) (LeftBracket!8414) (False!16829) (LeftBrace!8414) (ImaginaryLiteralValue!8414 (text!59344 List!56318)) (StringLiteralValue!25242 (value!260101 List!56318)) (EOFValue!8414 (value!260102 List!56318)) (IdentValue!8414 (value!260103 List!56318)) (DelimiterValue!16829 (value!260104 List!56318)) (DedentValue!8414 (value!260105 List!56318)) (NewLineValue!8414 (value!260106 List!56318)) (IntegerValue!25242 (value!260107 (_ BitVec 32)) (text!59345 List!56318)) (IntegerValue!25243 (value!260108 Int) (text!59346 List!56318)) (Times!8414) (Or!8414) (Equal!8414) (Minus!8414) (Broken!42074 (value!260109 List!56318)) (And!8414) (Div!8414) (LessEqual!8414) (Mod!8414) (Concat!21593) (Not!8414) (Plus!8414) (SpaceValue!8414 (value!260110 List!56318)) (IntegerValue!25244 (value!260111 Int) (text!59347 List!56318)) (StringLiteralValue!25243 (text!59348 List!56318)) (FloatLiteralValue!16829 (text!59349 List!56318)) (BytesLiteralValue!8414 (value!260112 List!56318)) (CommentValue!16829 (value!260113 List!56318)) (StringLiteralValue!25244 (value!260114 List!56318)) (ErrorTokenValue!8414 (msg!8475 List!56318)) )
))
(declare-datatypes ((Regex!13179 0))(
  ( (ElementMatch!13179 (c!830494 C!26556)) (Concat!21594 (regOne!26870 Regex!13179) (regTwo!26870 Regex!13179)) (EmptyExpr!13179) (Star!13179 (reg!13508 Regex!13179)) (EmptyLang!13179) (Union!13179 (regOne!26871 Regex!13179) (regTwo!26871 Regex!13179)) )
))
(declare-datatypes ((String!63512 0))(
  ( (String!63513 (value!260115 String)) )
))
(declare-datatypes ((TokenValueInjection!16136 0))(
  ( (TokenValueInjection!16137 (toValue!10991 Int) (toChars!10850 Int)) )
))
(declare-datatypes ((Rule!16008 0))(
  ( (Rule!16009 (regex!8104 Regex!13179) (tag!8968 String!63512) (isSeparator!8104 Bool) (transformation!8104 TokenValueInjection!16136)) )
))
(declare-datatypes ((List!56319 0))(
  ( (Nil!56195) (Cons!56195 (h!62643 Rule!16008) (t!364965 List!56319)) )
))
(declare-fun rulesArg!165 () List!56319)

(declare-fun isEmpty!30105 (List!56319) Bool)

(assert (=> b!4883871 (= res!2085052 (not (isEmpty!30105 rulesArg!165)))))

(declare-fun b!4883872 () Bool)

(declare-fun e!3052608 () Bool)

(declare-fun input!1236 () BalanceConc!28774)

(declare-fun tp!1374350 () Bool)

(declare-fun inv!72292 (Conc!14672) Bool)

(assert (=> b!4883872 (= e!3052608 (and (inv!72292 (c!830493 input!1236)) tp!1374350))))

(declare-fun tp!1374347 () Bool)

(declare-fun e!3052614 () Bool)

(declare-fun e!3052616 () Bool)

(declare-fun b!4883873 () Bool)

(declare-fun inv!72288 (String!63512) Bool)

(declare-fun inv!72293 (TokenValueInjection!16136) Bool)

(assert (=> b!4883873 (= e!3052614 (and tp!1374347 (inv!72288 (tag!8968 (h!62643 rulesArg!165))) (inv!72293 (transformation!8104 (h!62643 rulesArg!165))) e!3052616))))

(declare-fun b!4883874 () Bool)

(declare-fun e!3052618 () Bool)

(declare-datatypes ((Token!14776 0))(
  ( (Token!14777 (value!260116 TokenValue!8414) (rule!11266 Rule!16008) (size!37023 Int) (originalCharacters!8419 List!56317)) )
))
(declare-datatypes ((tuple2!60112 0))(
  ( (tuple2!60113 (_1!33359 Token!14776) (_2!33359 BalanceConc!28774)) )
))
(declare-fun lt!2000761 () tuple2!60112)

(declare-datatypes ((tuple2!60114 0))(
  ( (tuple2!60115 (_1!33360 Token!14776) (_2!33360 List!56317)) )
))
(declare-fun lt!2000760 () tuple2!60114)

(declare-fun list!17629 (BalanceConc!28774) List!56317)

(assert (=> b!4883874 (= e!3052618 (= (list!17629 (_2!33359 lt!2000761)) (_2!33360 lt!2000760)))))

(declare-fun res!2085051 () Bool)

(assert (=> start!511032 (=> (not res!2085051) (not e!3052611))))

(declare-datatypes ((LexerInterface!7696 0))(
  ( (LexerInterfaceExt!7693 (__x!34122 Int)) (Lexer!7694) )
))
(declare-fun thiss!14805 () LexerInterface!7696)

(get-info :version)

(assert (=> start!511032 (= res!2085051 ((_ is Lexer!7694) thiss!14805))))

(assert (=> start!511032 e!3052611))

(assert (=> start!511032 true))

(declare-fun e!3052615 () Bool)

(assert (=> start!511032 e!3052615))

(declare-fun inv!72294 (BalanceConc!28774) Bool)

(assert (=> start!511032 (and (inv!72294 input!1236) e!3052608)))

(declare-fun b!4883875 () Bool)

(declare-fun res!2085055 () Bool)

(assert (=> b!4883875 (=> (not res!2085055) (not e!3052611))))

(declare-fun rulesValidInductive!3083 (LexerInterface!7696 List!56319) Bool)

(assert (=> b!4883875 (= res!2085055 (rulesValidInductive!3083 thiss!14805 rulesArg!165))))

(declare-fun b!4883876 () Bool)

(declare-fun e!3052609 () Bool)

(declare-fun e!3052610 () Bool)

(assert (=> b!4883876 (= e!3052609 e!3052610)))

(declare-fun res!2085053 () Bool)

(assert (=> b!4883876 (=> res!2085053 e!3052610)))

(declare-datatypes ((Option!13891 0))(
  ( (None!13890) (Some!13890 (v!49840 tuple2!60112)) )
))
(declare-fun lt!2000763 () Option!13891)

(declare-fun lt!2000762 () Option!13891)

(assert (=> b!4883876 (= res!2085053 (or (and ((_ is None!13890) lt!2000763) ((_ is None!13890) lt!2000762)) (not ((_ is None!13890) lt!2000762))))))

(declare-fun maxPrefixZipperSequence!1265 (LexerInterface!7696 List!56319 BalanceConc!28774) Option!13891)

(assert (=> b!4883876 (= lt!2000762 (maxPrefixZipperSequence!1265 thiss!14805 (t!364965 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!630 (LexerInterface!7696 Rule!16008 BalanceConc!28774) Option!13891)

(assert (=> b!4883876 (= lt!2000763 (maxPrefixOneRuleZipperSequence!630 thiss!14805 (h!62643 rulesArg!165) input!1236))))

(declare-fun b!4883877 () Bool)

(assert (=> b!4883877 (= e!3052611 (not e!3052609))))

(declare-fun res!2085050 () Bool)

(assert (=> b!4883877 (=> res!2085050 e!3052609)))

(assert (=> b!4883877 (= res!2085050 (or (and ((_ is Cons!56195) rulesArg!165) ((_ is Nil!56195) (t!364965 rulesArg!165))) (not ((_ is Cons!56195) rulesArg!165))))))

(declare-fun lt!2000758 () List!56317)

(declare-fun isPrefix!4826 (List!56317 List!56317) Bool)

(assert (=> b!4883877 (isPrefix!4826 lt!2000758 lt!2000758)))

(declare-datatypes ((Unit!146184 0))(
  ( (Unit!146185) )
))
(declare-fun lt!2000756 () Unit!146184)

(declare-fun lemmaIsPrefixRefl!3223 (List!56317 List!56317) Unit!146184)

(assert (=> b!4883877 (= lt!2000756 (lemmaIsPrefixRefl!3223 lt!2000758 lt!2000758))))

(assert (=> b!4883877 (= lt!2000758 (list!17629 input!1236))))

(assert (=> b!4883878 (= e!3052616 (and tp!1374351 tp!1374349))))

(declare-fun b!4883879 () Bool)

(declare-fun e!3052612 () Bool)

(assert (=> b!4883879 (= e!3052612 true)))

(declare-fun lt!2000759 () Bool)

(declare-fun e!3052617 () Bool)

(assert (=> b!4883879 (= lt!2000759 e!3052617)))

(declare-fun res!2085054 () Bool)

(assert (=> b!4883879 (=> res!2085054 e!3052617)))

(declare-fun lt!2000757 () Bool)

(assert (=> b!4883879 (= res!2085054 (not lt!2000757))))

(declare-fun b!4883880 () Bool)

(assert (=> b!4883880 (= e!3052610 e!3052612)))

(declare-fun res!2085049 () Bool)

(assert (=> b!4883880 (=> res!2085049 e!3052612)))

(declare-datatypes ((Option!13892 0))(
  ( (None!13891) (Some!13891 (v!49841 tuple2!60114)) )
))
(declare-fun lt!2000764 () Option!13892)

(declare-fun isDefined!10918 (Option!13892) Bool)

(assert (=> b!4883880 (= res!2085049 (not (= lt!2000757 (isDefined!10918 lt!2000764))))))

(declare-fun isDefined!10919 (Option!13891) Bool)

(assert (=> b!4883880 (= lt!2000757 (isDefined!10919 lt!2000763))))

(declare-fun maxPrefixZipper!607 (LexerInterface!7696 List!56319 List!56317) Option!13892)

(assert (=> b!4883880 (= lt!2000764 (maxPrefixZipper!607 thiss!14805 rulesArg!165 lt!2000758))))

(declare-fun b!4883881 () Bool)

(assert (=> b!4883881 (= e!3052617 e!3052618)))

(declare-fun res!2085048 () Bool)

(assert (=> b!4883881 (=> (not res!2085048) (not e!3052618))))

(assert (=> b!4883881 (= res!2085048 (= (_1!33359 lt!2000761) (_1!33360 lt!2000760)))))

(declare-fun get!19339 (Option!13892) tuple2!60114)

(assert (=> b!4883881 (= lt!2000760 (get!19339 lt!2000764))))

(declare-fun get!19340 (Option!13891) tuple2!60112)

(assert (=> b!4883881 (= lt!2000761 (get!19340 lt!2000763))))

(declare-fun b!4883882 () Bool)

(declare-fun tp!1374348 () Bool)

(assert (=> b!4883882 (= e!3052615 (and e!3052614 tp!1374348))))

(assert (= (and start!511032 res!2085051) b!4883875))

(assert (= (and b!4883875 res!2085055) b!4883871))

(assert (= (and b!4883871 res!2085052) b!4883877))

(assert (= (and b!4883877 (not res!2085050)) b!4883876))

(assert (= (and b!4883876 (not res!2085053)) b!4883880))

(assert (= (and b!4883880 (not res!2085049)) b!4883879))

(assert (= (and b!4883879 (not res!2085054)) b!4883881))

(assert (= (and b!4883881 res!2085048) b!4883874))

(assert (= b!4883873 b!4883878))

(assert (= b!4883882 b!4883873))

(assert (= (and start!511032 ((_ is Cons!56195) rulesArg!165)) b!4883882))

(assert (= start!511032 b!4883872))

(declare-fun m!5887822 () Bool)

(assert (=> start!511032 m!5887822))

(declare-fun m!5887824 () Bool)

(assert (=> b!4883881 m!5887824))

(declare-fun m!5887826 () Bool)

(assert (=> b!4883881 m!5887826))

(declare-fun m!5887828 () Bool)

(assert (=> b!4883874 m!5887828))

(declare-fun m!5887830 () Bool)

(assert (=> b!4883872 m!5887830))

(declare-fun m!5887832 () Bool)

(assert (=> b!4883876 m!5887832))

(declare-fun m!5887834 () Bool)

(assert (=> b!4883876 m!5887834))

(declare-fun m!5887836 () Bool)

(assert (=> b!4883877 m!5887836))

(declare-fun m!5887838 () Bool)

(assert (=> b!4883877 m!5887838))

(declare-fun m!5887840 () Bool)

(assert (=> b!4883877 m!5887840))

(declare-fun m!5887842 () Bool)

(assert (=> b!4883873 m!5887842))

(declare-fun m!5887844 () Bool)

(assert (=> b!4883873 m!5887844))

(declare-fun m!5887846 () Bool)

(assert (=> b!4883871 m!5887846))

(declare-fun m!5887848 () Bool)

(assert (=> b!4883875 m!5887848))

(declare-fun m!5887850 () Bool)

(assert (=> b!4883880 m!5887850))

(declare-fun m!5887852 () Bool)

(assert (=> b!4883880 m!5887852))

(declare-fun m!5887854 () Bool)

(assert (=> b!4883880 m!5887854))

(check-sat (not b_next!131897) (not b!4883872) (not b_next!131899) (not b!4883880) (not b!4883877) (not b!4883874) (not b!4883873) (not b!4883881) (not b!4883875) b_and!343941 b_and!343939 (not b!4883882) (not start!511032) (not b!4883876) (not b!4883871))
(check-sat b_and!343941 b_and!343939 (not b_next!131897) (not b_next!131899))
