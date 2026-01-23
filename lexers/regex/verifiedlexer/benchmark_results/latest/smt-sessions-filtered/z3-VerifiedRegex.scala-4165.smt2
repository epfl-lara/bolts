; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!224636 () Bool)

(assert start!224636)

(declare-fun b!2289430 () Bool)

(declare-fun b_free!68749 () Bool)

(declare-fun b_next!69453 () Bool)

(assert (=> b!2289430 (= b_free!68749 (not b_next!69453))))

(declare-fun tp!725901 () Bool)

(declare-fun b_and!181585 () Bool)

(assert (=> b!2289430 (= tp!725901 b_and!181585)))

(declare-fun b_free!68751 () Bool)

(declare-fun b_next!69455 () Bool)

(assert (=> b!2289430 (= b_free!68751 (not b_next!69455))))

(declare-fun tp!725900 () Bool)

(declare-fun b_and!181587 () Bool)

(assert (=> b!2289430 (= tp!725900 b_and!181587)))

(declare-fun b!2289410 () Bool)

(declare-fun b_free!68753 () Bool)

(declare-fun b_next!69457 () Bool)

(assert (=> b!2289410 (= b_free!68753 (not b_next!69457))))

(declare-fun tp!725904 () Bool)

(declare-fun b_and!181589 () Bool)

(assert (=> b!2289410 (= tp!725904 b_and!181589)))

(declare-fun b_free!68755 () Bool)

(declare-fun b_next!69459 () Bool)

(assert (=> b!2289410 (= b_free!68755 (not b_next!69459))))

(declare-fun tp!725903 () Bool)

(declare-fun b_and!181591 () Bool)

(assert (=> b!2289410 (= tp!725903 b_and!181591)))

(declare-fun b!2289428 () Bool)

(declare-fun b_free!68757 () Bool)

(declare-fun b_next!69461 () Bool)

(assert (=> b!2289428 (= b_free!68757 (not b_next!69461))))

(declare-fun tp!725896 () Bool)

(declare-fun b_and!181593 () Bool)

(assert (=> b!2289428 (= tp!725896 b_and!181593)))

(declare-fun b_free!68759 () Bool)

(declare-fun b_next!69463 () Bool)

(assert (=> b!2289428 (= b_free!68759 (not b_next!69463))))

(declare-fun tp!725895 () Bool)

(declare-fun b_and!181595 () Bool)

(assert (=> b!2289428 (= tp!725895 b_and!181595)))

(declare-fun b!2289434 () Bool)

(declare-fun b_free!68761 () Bool)

(declare-fun b_next!69465 () Bool)

(assert (=> b!2289434 (= b_free!68761 (not b_next!69465))))

(declare-fun tp!725898 () Bool)

(declare-fun b_and!181597 () Bool)

(assert (=> b!2289434 (= tp!725898 b_and!181597)))

(declare-fun b_free!68763 () Bool)

(declare-fun b_next!69467 () Bool)

(assert (=> b!2289434 (= b_free!68763 (not b_next!69467))))

(declare-fun tp!725894 () Bool)

(declare-fun b_and!181599 () Bool)

(assert (=> b!2289434 (= tp!725894 b_and!181599)))

(declare-fun e!1466957 () Bool)

(assert (=> b!2289410 (= e!1466957 (and tp!725904 tp!725903))))

(declare-fun b!2289411 () Bool)

(declare-fun res!978872 () Bool)

(declare-fun e!1466951 () Bool)

(assert (=> b!2289411 (=> (not res!978872) (not e!1466951))))

(declare-datatypes ((List!27351 0))(
  ( (Nil!27257) (Cons!27257 (h!32658 (_ BitVec 16)) (t!204475 List!27351)) )
))
(declare-datatypes ((TokenValue!4523 0))(
  ( (FloatLiteralValue!9046 (text!32106 List!27351)) (TokenValueExt!4522 (__x!18106 Int)) (Broken!22615 (value!138082 List!27351)) (Object!4616) (End!4523) (Def!4523) (Underscore!4523) (Match!4523) (Else!4523) (Error!4523) (Case!4523) (If!4523) (Extends!4523) (Abstract!4523) (Class!4523) (Val!4523) (DelimiterValue!9046 (del!4583 List!27351)) (KeywordValue!4529 (value!138083 List!27351)) (CommentValue!9046 (value!138084 List!27351)) (WhitespaceValue!9046 (value!138085 List!27351)) (IndentationValue!4523 (value!138086 List!27351)) (String!29718) (Int32!4523) (Broken!22616 (value!138087 List!27351)) (Boolean!4524) (Unit!40145) (OperatorValue!4526 (op!4583 List!27351)) (IdentifierValue!9046 (value!138088 List!27351)) (IdentifierValue!9047 (value!138089 List!27351)) (WhitespaceValue!9047 (value!138090 List!27351)) (True!9046) (False!9046) (Broken!22617 (value!138091 List!27351)) (Broken!22618 (value!138092 List!27351)) (True!9047) (RightBrace!4523) (RightBracket!4523) (Colon!4523) (Null!4523) (Comma!4523) (LeftBracket!4523) (False!9047) (LeftBrace!4523) (ImaginaryLiteralValue!4523 (text!32107 List!27351)) (StringLiteralValue!13569 (value!138093 List!27351)) (EOFValue!4523 (value!138094 List!27351)) (IdentValue!4523 (value!138095 List!27351)) (DelimiterValue!9047 (value!138096 List!27351)) (DedentValue!4523 (value!138097 List!27351)) (NewLineValue!4523 (value!138098 List!27351)) (IntegerValue!13569 (value!138099 (_ BitVec 32)) (text!32108 List!27351)) (IntegerValue!13570 (value!138100 Int) (text!32109 List!27351)) (Times!4523) (Or!4523) (Equal!4523) (Minus!4523) (Broken!22619 (value!138101 List!27351)) (And!4523) (Div!4523) (LessEqual!4523) (Mod!4523) (Concat!11232) (Not!4523) (Plus!4523) (SpaceValue!4523 (value!138102 List!27351)) (IntegerValue!13571 (value!138103 Int) (text!32110 List!27351)) (StringLiteralValue!13570 (text!32111 List!27351)) (FloatLiteralValue!9047 (text!32112 List!27351)) (BytesLiteralValue!4523 (value!138104 List!27351)) (CommentValue!9047 (value!138105 List!27351)) (StringLiteralValue!13571 (value!138106 List!27351)) (ErrorTokenValue!4523 (msg!4584 List!27351)) )
))
(declare-datatypes ((C!13564 0))(
  ( (C!13565 (val!7830 Int)) )
))
(declare-datatypes ((List!27352 0))(
  ( (Nil!27258) (Cons!27258 (h!32659 C!13564) (t!204476 List!27352)) )
))
(declare-datatypes ((IArray!17745 0))(
  ( (IArray!17746 (innerList!8930 List!27352)) )
))
(declare-datatypes ((Conc!8870 0))(
  ( (Node!8870 (left!20663 Conc!8870) (right!20993 Conc!8870) (csize!17970 Int) (cheight!9081 Int)) (Leaf!13036 (xs!11812 IArray!17745) (csize!17971 Int)) (Empty!8870) )
))
(declare-datatypes ((BalanceConc!17468 0))(
  ( (BalanceConc!17469 (c!363056 Conc!8870)) )
))
(declare-datatypes ((Regex!6709 0))(
  ( (ElementMatch!6709 (c!363057 C!13564)) (Concat!11233 (regOne!13930 Regex!6709) (regTwo!13930 Regex!6709)) (EmptyExpr!6709) (Star!6709 (reg!7038 Regex!6709)) (EmptyLang!6709) (Union!6709 (regOne!13931 Regex!6709) (regTwo!13931 Regex!6709)) )
))
(declare-datatypes ((String!29719 0))(
  ( (String!29720 (value!138107 String)) )
))
(declare-datatypes ((TokenValueInjection!8586 0))(
  ( (TokenValueInjection!8587 (toValue!6151 Int) (toChars!6010 Int)) )
))
(declare-datatypes ((Rule!8522 0))(
  ( (Rule!8523 (regex!4361 Regex!6709) (tag!4851 String!29719) (isSeparator!4361 Bool) (transformation!4361 TokenValueInjection!8586)) )
))
(declare-datatypes ((List!27353 0))(
  ( (Nil!27259) (Cons!27259 (h!32660 Rule!8522) (t!204477 List!27353)) )
))
(declare-fun rules!1750 () List!27353)

(declare-fun otherR!12 () Rule!8522)

(declare-fun contains!4737 (List!27353 Rule!8522) Bool)

(assert (=> b!2289411 (= res!978872 (contains!4737 rules!1750 otherR!12))))

(declare-fun res!978885 () Bool)

(assert (=> start!224636 (=> (not res!978885) (not e!1466951))))

(declare-datatypes ((LexerInterface!3958 0))(
  ( (LexerInterfaceExt!3955 (__x!18107 Int)) (Lexer!3956) )
))
(declare-fun thiss!16613 () LexerInterface!3958)

(get-info :version)

(assert (=> start!224636 (= res!978885 ((_ is Lexer!3956) thiss!16613))))

(assert (=> start!224636 e!1466951))

(assert (=> start!224636 true))

(declare-fun e!1466963 () Bool)

(assert (=> start!224636 e!1466963))

(declare-fun e!1466946 () Bool)

(assert (=> start!224636 e!1466946))

(declare-fun e!1466944 () Bool)

(assert (=> start!224636 e!1466944))

(declare-fun e!1466968 () Bool)

(assert (=> start!224636 e!1466968))

(declare-fun e!1466959 () Bool)

(assert (=> start!224636 e!1466959))

(declare-fun e!1466954 () Bool)

(assert (=> start!224636 e!1466954))

(declare-fun e!1466967 () Bool)

(assert (=> start!224636 e!1466967))

(declare-fun b!2289412 () Bool)

(declare-fun e!1466961 () Bool)

(declare-fun r!2363 () Rule!8522)

(declare-fun lt!849414 () List!27352)

(declare-fun matchR!2966 (Regex!6709 List!27352) Bool)

(assert (=> b!2289412 (= e!1466961 (matchR!2966 (regex!4361 r!2363) lt!849414))))

(declare-fun b!2289413 () Bool)

(declare-fun res!978877 () Bool)

(declare-fun e!1466943 () Bool)

(assert (=> b!2289413 (=> (not res!978877) (not e!1466943))))

(assert (=> b!2289413 (= res!978877 (not (= r!2363 otherR!12)))))

(declare-fun b!2289414 () Bool)

(declare-fun res!978884 () Bool)

(assert (=> b!2289414 (=> (not res!978884) (not e!1466943))))

(declare-fun e!1466947 () Bool)

(assert (=> b!2289414 (= res!978884 e!1466947)))

(declare-fun res!978882 () Bool)

(assert (=> b!2289414 (=> res!978882 e!1466947)))

(declare-fun lt!849412 () Bool)

(assert (=> b!2289414 (= res!978882 lt!849412)))

(declare-fun e!1466960 () Bool)

(declare-fun b!2289415 () Bool)

(declare-fun tp!725893 () Bool)

(declare-fun inv!36853 (String!29719) Bool)

(declare-fun inv!36856 (TokenValueInjection!8586) Bool)

(assert (=> b!2289415 (= e!1466960 (and tp!725893 (inv!36853 (tag!4851 (h!32660 rules!1750))) (inv!36856 (transformation!4361 (h!32660 rules!1750))) e!1466957))))

(declare-fun tp!725892 () Bool)

(declare-fun e!1466964 () Bool)

(declare-fun b!2289416 () Bool)

(assert (=> b!2289416 (= e!1466946 (and tp!725892 (inv!36853 (tag!4851 otherR!12)) (inv!36856 (transformation!4361 otherR!12)) e!1466964))))

(declare-fun b!2289417 () Bool)

(declare-fun e!1466952 () Bool)

(declare-fun e!1466950 () Bool)

(assert (=> b!2289417 (= e!1466952 e!1466950)))

(declare-fun res!978873 () Bool)

(assert (=> b!2289417 (=> res!978873 e!1466950)))

(declare-datatypes ((Token!8200 0))(
  ( (Token!8201 (value!138108 TokenValue!4523) (rule!6693 Rule!8522) (size!21454 Int) (originalCharacters!5131 List!27352)) )
))
(declare-datatypes ((List!27354 0))(
  ( (Nil!27260) (Cons!27260 (h!32661 Token!8200) (t!204478 List!27354)) )
))
(declare-fun tokens!456 () List!27354)

(declare-datatypes ((tuple2!27058 0))(
  ( (tuple2!27059 (_1!16039 Token!8200) (_2!16039 List!27352)) )
))
(declare-fun lt!849411 () tuple2!27058)

(assert (=> b!2289417 (= res!978873 (not (= (h!32661 tokens!456) (_1!16039 lt!849411))))))

(declare-fun input!1722 () List!27352)

(declare-datatypes ((Option!5351 0))(
  ( (None!5350) (Some!5350 (v!30428 tuple2!27058)) )
))
(declare-fun get!8221 (Option!5351) tuple2!27058)

(declare-fun maxPrefix!2222 (LexerInterface!3958 List!27353 List!27352) Option!5351)

(assert (=> b!2289417 (= lt!849411 (get!8221 (maxPrefix!2222 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2289418 () Bool)

(declare-fun e!1466966 () Bool)

(assert (=> b!2289418 (= e!1466950 e!1466966)))

(declare-fun res!978879 () Bool)

(assert (=> b!2289418 (=> res!978879 e!1466966)))

(declare-fun lt!849409 () Int)

(declare-fun lt!849413 () Int)

(assert (=> b!2289418 (= res!978879 (= lt!849409 lt!849413))))

(declare-fun size!21455 (List!27352) Int)

(assert (=> b!2289418 (= lt!849413 (size!21455 lt!849414))))

(declare-fun otherP!12 () List!27352)

(assert (=> b!2289418 (= lt!849409 (size!21455 otherP!12))))

(declare-fun lt!849418 () List!27352)

(assert (=> b!2289418 (= (_2!16039 lt!849411) lt!849418)))

(declare-datatypes ((Unit!40146 0))(
  ( (Unit!40147) )
))
(declare-fun lt!849415 () Unit!40146)

(declare-fun lemmaSamePrefixThenSameSuffix!1052 (List!27352 List!27352 List!27352 List!27352 List!27352) Unit!40146)

(assert (=> b!2289418 (= lt!849415 (lemmaSamePrefixThenSameSuffix!1052 lt!849414 (_2!16039 lt!849411) lt!849414 lt!849418 input!1722))))

(declare-fun getSuffix!1142 (List!27352 List!27352) List!27352)

(assert (=> b!2289418 (= lt!849418 (getSuffix!1142 input!1722 lt!849414))))

(declare-fun isPrefix!2351 (List!27352 List!27352) Bool)

(declare-fun ++!6661 (List!27352 List!27352) List!27352)

(assert (=> b!2289418 (isPrefix!2351 lt!849414 (++!6661 lt!849414 (_2!16039 lt!849411)))))

(declare-fun lt!849419 () Unit!40146)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1556 (List!27352 List!27352) Unit!40146)

(assert (=> b!2289418 (= lt!849419 (lemmaConcatTwoListThenFirstIsPrefix!1556 lt!849414 (_2!16039 lt!849411)))))

(declare-fun list!10668 (BalanceConc!17468) List!27352)

(declare-fun charsOf!2749 (Token!8200) BalanceConc!17468)

(assert (=> b!2289418 (= lt!849414 (list!10668 (charsOf!2749 (h!32661 tokens!456))))))

(declare-fun b!2289419 () Bool)

(declare-fun e!1466953 () Bool)

(assert (=> b!2289419 (= e!1466943 (not e!1466953))))

(declare-fun res!978875 () Bool)

(assert (=> b!2289419 (=> res!978875 e!1466953)))

(declare-fun e!1466969 () Bool)

(assert (=> b!2289419 (= res!978875 e!1466969)))

(declare-fun res!978890 () Bool)

(assert (=> b!2289419 (=> (not res!978890) (not e!1466969))))

(assert (=> b!2289419 (= res!978890 (not lt!849412))))

(declare-fun ruleValid!1451 (LexerInterface!3958 Rule!8522) Bool)

(assert (=> b!2289419 (ruleValid!1451 thiss!16613 r!2363)))

(declare-fun lt!849410 () Unit!40146)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!856 (LexerInterface!3958 Rule!8522 List!27353) Unit!40146)

(assert (=> b!2289419 (= lt!849410 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!856 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2289420 () Bool)

(declare-fun tp_is_empty!10639 () Bool)

(declare-fun tp!725907 () Bool)

(assert (=> b!2289420 (= e!1466968 (and tp_is_empty!10639 tp!725907))))

(declare-fun b!2289421 () Bool)

(declare-fun res!978876 () Bool)

(assert (=> b!2289421 (=> res!978876 e!1466952)))

(assert (=> b!2289421 (= res!978876 ((_ is Nil!27260) tokens!456))))

(declare-fun b!2289422 () Bool)

(declare-fun tp!725891 () Bool)

(assert (=> b!2289422 (= e!1466959 (and e!1466960 tp!725891))))

(declare-fun b!2289423 () Bool)

(declare-fun e!1466949 () Bool)

(declare-fun e!1466945 () Bool)

(declare-fun tp!725890 () Bool)

(declare-fun inv!21 (TokenValue!4523) Bool)

(assert (=> b!2289423 (= e!1466945 (and (inv!21 (value!138108 (h!32661 tokens!456))) e!1466949 tp!725890))))

(declare-fun b!2289424 () Bool)

(declare-fun tp!725906 () Bool)

(assert (=> b!2289424 (= e!1466963 (and tp_is_empty!10639 tp!725906))))

(declare-fun b!2289425 () Bool)

(assert (=> b!2289425 (= e!1466966 e!1466961)))

(declare-fun res!978880 () Bool)

(assert (=> b!2289425 (=> res!978880 e!1466961)))

(assert (=> b!2289425 (= res!978880 (not (isPrefix!2351 lt!849414 input!1722)))))

(declare-fun maxPrefixOneRule!1392 (LexerInterface!3958 Rule!8522 List!27352) Option!5351)

(declare-fun apply!6633 (TokenValueInjection!8586 BalanceConc!17468) TokenValue!4523)

(declare-fun seqFromList!3065 (List!27352) BalanceConc!17468)

(assert (=> b!2289425 (= (maxPrefixOneRule!1392 thiss!16613 r!2363 input!1722) (Some!5350 (tuple2!27059 (Token!8201 (apply!6633 (transformation!4361 r!2363) (seqFromList!3065 lt!849414)) r!2363 lt!849413 lt!849414) (_2!16039 lt!849411))))))

(declare-fun lt!849416 () Unit!40146)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!585 (LexerInterface!3958 List!27353 List!27352 List!27352 List!27352 Rule!8522) Unit!40146)

(assert (=> b!2289425 (= lt!849416 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!585 thiss!16613 rules!1750 lt!849414 input!1722 (_2!16039 lt!849411) r!2363))))

(declare-fun b!2289426 () Bool)

(declare-fun e!1466948 () Bool)

(assert (=> b!2289426 (= e!1466948 e!1466943)))

(declare-fun res!978888 () Bool)

(assert (=> b!2289426 (=> (not res!978888) (not e!1466943))))

(declare-fun e!1466955 () Bool)

(assert (=> b!2289426 (= res!978888 e!1466955)))

(declare-fun res!978889 () Bool)

(assert (=> b!2289426 (=> res!978889 e!1466955)))

(assert (=> b!2289426 (= res!978889 lt!849412)))

(declare-fun isEmpty!15515 (List!27354) Bool)

(assert (=> b!2289426 (= lt!849412 (isEmpty!15515 tokens!456))))

(declare-fun b!2289427 () Bool)

(assert (=> b!2289427 (= e!1466953 e!1466952)))

(declare-fun res!978886 () Bool)

(assert (=> b!2289427 (=> res!978886 e!1466952)))

(declare-fun getIndex!374 (List!27353 Rule!8522) Int)

(assert (=> b!2289427 (= res!978886 (<= (getIndex!374 rules!1750 r!2363) (getIndex!374 rules!1750 otherR!12)))))

(assert (=> b!2289427 (ruleValid!1451 thiss!16613 otherR!12)))

(declare-fun lt!849417 () Unit!40146)

(assert (=> b!2289427 (= lt!849417 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!856 thiss!16613 otherR!12 rules!1750))))

(declare-fun e!1466962 () Bool)

(assert (=> b!2289428 (= e!1466962 (and tp!725896 tp!725895))))

(declare-fun b!2289429 () Bool)

(declare-fun res!978881 () Bool)

(assert (=> b!2289429 (=> (not res!978881) (not e!1466943))))

(assert (=> b!2289429 (= res!978881 (isPrefix!2351 otherP!12 input!1722))))

(assert (=> b!2289430 (= e!1466964 (and tp!725901 tp!725900))))

(declare-fun b!2289431 () Bool)

(declare-fun head!4986 (List!27354) Token!8200)

(assert (=> b!2289431 (= e!1466947 (= (rule!6693 (head!4986 tokens!456)) r!2363))))

(declare-fun b!2289432 () Bool)

(assert (=> b!2289432 (= e!1466951 e!1466948)))

(declare-fun res!978878 () Bool)

(assert (=> b!2289432 (=> (not res!978878) (not e!1466948))))

(declare-fun suffix!886 () List!27352)

(declare-datatypes ((IArray!17747 0))(
  ( (IArray!17748 (innerList!8931 List!27354)) )
))
(declare-datatypes ((Conc!8871 0))(
  ( (Node!8871 (left!20664 Conc!8871) (right!20994 Conc!8871) (csize!17972 Int) (cheight!9082 Int)) (Leaf!13037 (xs!11813 IArray!17747) (csize!17973 Int)) (Empty!8871) )
))
(declare-datatypes ((BalanceConc!17470 0))(
  ( (BalanceConc!17471 (c!363058 Conc!8871)) )
))
(declare-datatypes ((tuple2!27060 0))(
  ( (tuple2!27061 (_1!16040 BalanceConc!17470) (_2!16040 BalanceConc!17468)) )
))
(declare-fun lt!849420 () tuple2!27060)

(declare-datatypes ((tuple2!27062 0))(
  ( (tuple2!27063 (_1!16041 List!27354) (_2!16041 List!27352)) )
))
(declare-fun list!10669 (BalanceConc!17470) List!27354)

(assert (=> b!2289432 (= res!978878 (= (tuple2!27063 (list!10669 (_1!16040 lt!849420)) (list!10668 (_2!16040 lt!849420))) (tuple2!27063 tokens!456 suffix!886)))))

(declare-fun lex!1797 (LexerInterface!3958 List!27353 BalanceConc!17468) tuple2!27060)

(assert (=> b!2289432 (= lt!849420 (lex!1797 thiss!16613 rules!1750 (seqFromList!3065 input!1722)))))

(declare-fun b!2289433 () Bool)

(declare-fun res!978874 () Bool)

(assert (=> b!2289433 (=> (not res!978874) (not e!1466951))))

(declare-fun isEmpty!15516 (List!27353) Bool)

(assert (=> b!2289433 (= res!978874 (not (isEmpty!15516 rules!1750)))))

(declare-fun e!1466958 () Bool)

(assert (=> b!2289434 (= e!1466958 (and tp!725898 tp!725894))))

(declare-fun tp!725905 () Bool)

(declare-fun b!2289435 () Bool)

(assert (=> b!2289435 (= e!1466954 (and tp!725905 (inv!36853 (tag!4851 r!2363)) (inv!36856 (transformation!4361 r!2363)) e!1466962))))

(declare-fun b!2289436 () Bool)

(declare-fun tp!725899 () Bool)

(assert (=> b!2289436 (= e!1466944 (and tp_is_empty!10639 tp!725899))))

(declare-fun b!2289437 () Bool)

(declare-fun size!21456 (BalanceConc!17468) Int)

(assert (=> b!2289437 (= e!1466955 (<= (size!21456 (charsOf!2749 (head!4986 tokens!456))) (size!21455 otherP!12)))))

(declare-fun tp!725897 () Bool)

(declare-fun b!2289438 () Bool)

(assert (=> b!2289438 (= e!1466949 (and tp!725897 (inv!36853 (tag!4851 (rule!6693 (h!32661 tokens!456)))) (inv!36856 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) e!1466958))))

(declare-fun tp!725902 () Bool)

(declare-fun b!2289439 () Bool)

(declare-fun inv!36857 (Token!8200) Bool)

(assert (=> b!2289439 (= e!1466967 (and (inv!36857 (h!32661 tokens!456)) e!1466945 tp!725902))))

(declare-fun b!2289440 () Bool)

(declare-fun res!978887 () Bool)

(assert (=> b!2289440 (=> (not res!978887) (not e!1466951))))

(declare-fun rulesInvariant!3460 (LexerInterface!3958 List!27353) Bool)

(assert (=> b!2289440 (= res!978887 (rulesInvariant!3460 thiss!16613 rules!1750))))

(declare-fun b!2289441 () Bool)

(assert (=> b!2289441 (= e!1466969 (not (matchR!2966 (regex!4361 r!2363) (list!10668 (charsOf!2749 (head!4986 tokens!456))))))))

(declare-fun b!2289442 () Bool)

(declare-fun res!978883 () Bool)

(assert (=> b!2289442 (=> (not res!978883) (not e!1466951))))

(assert (=> b!2289442 (= res!978883 (contains!4737 rules!1750 r!2363))))

(assert (= (and start!224636 res!978885) b!2289433))

(assert (= (and b!2289433 res!978874) b!2289440))

(assert (= (and b!2289440 res!978887) b!2289442))

(assert (= (and b!2289442 res!978883) b!2289411))

(assert (= (and b!2289411 res!978872) b!2289432))

(assert (= (and b!2289432 res!978878) b!2289426))

(assert (= (and b!2289426 (not res!978889)) b!2289437))

(assert (= (and b!2289426 res!978888) b!2289414))

(assert (= (and b!2289414 (not res!978882)) b!2289431))

(assert (= (and b!2289414 res!978884) b!2289429))

(assert (= (and b!2289429 res!978881) b!2289413))

(assert (= (and b!2289413 res!978877) b!2289419))

(assert (= (and b!2289419 res!978890) b!2289441))

(assert (= (and b!2289419 (not res!978875)) b!2289427))

(assert (= (and b!2289427 (not res!978886)) b!2289421))

(assert (= (and b!2289421 (not res!978876)) b!2289417))

(assert (= (and b!2289417 (not res!978873)) b!2289418))

(assert (= (and b!2289418 (not res!978879)) b!2289425))

(assert (= (and b!2289425 (not res!978880)) b!2289412))

(assert (= (and start!224636 ((_ is Cons!27258) input!1722)) b!2289424))

(assert (= b!2289416 b!2289430))

(assert (= start!224636 b!2289416))

(assert (= (and start!224636 ((_ is Cons!27258) suffix!886)) b!2289436))

(assert (= (and start!224636 ((_ is Cons!27258) otherP!12)) b!2289420))

(assert (= b!2289415 b!2289410))

(assert (= b!2289422 b!2289415))

(assert (= (and start!224636 ((_ is Cons!27259) rules!1750)) b!2289422))

(assert (= b!2289435 b!2289428))

(assert (= start!224636 b!2289435))

(assert (= b!2289438 b!2289434))

(assert (= b!2289423 b!2289438))

(assert (= b!2289439 b!2289423))

(assert (= (and start!224636 ((_ is Cons!27260) tokens!456)) b!2289439))

(declare-fun m!2717091 () Bool)

(assert (=> b!2289438 m!2717091))

(declare-fun m!2717093 () Bool)

(assert (=> b!2289438 m!2717093))

(declare-fun m!2717095 () Bool)

(assert (=> b!2289423 m!2717095))

(declare-fun m!2717097 () Bool)

(assert (=> b!2289426 m!2717097))

(declare-fun m!2717099 () Bool)

(assert (=> b!2289440 m!2717099))

(declare-fun m!2717101 () Bool)

(assert (=> b!2289441 m!2717101))

(assert (=> b!2289441 m!2717101))

(declare-fun m!2717103 () Bool)

(assert (=> b!2289441 m!2717103))

(assert (=> b!2289441 m!2717103))

(declare-fun m!2717105 () Bool)

(assert (=> b!2289441 m!2717105))

(assert (=> b!2289441 m!2717105))

(declare-fun m!2717107 () Bool)

(assert (=> b!2289441 m!2717107))

(declare-fun m!2717109 () Bool)

(assert (=> b!2289415 m!2717109))

(declare-fun m!2717111 () Bool)

(assert (=> b!2289415 m!2717111))

(assert (=> b!2289431 m!2717101))

(assert (=> b!2289437 m!2717101))

(assert (=> b!2289437 m!2717101))

(assert (=> b!2289437 m!2717103))

(assert (=> b!2289437 m!2717103))

(declare-fun m!2717113 () Bool)

(assert (=> b!2289437 m!2717113))

(declare-fun m!2717115 () Bool)

(assert (=> b!2289437 m!2717115))

(declare-fun m!2717117 () Bool)

(assert (=> b!2289432 m!2717117))

(declare-fun m!2717119 () Bool)

(assert (=> b!2289432 m!2717119))

(declare-fun m!2717121 () Bool)

(assert (=> b!2289432 m!2717121))

(assert (=> b!2289432 m!2717121))

(declare-fun m!2717123 () Bool)

(assert (=> b!2289432 m!2717123))

(declare-fun m!2717125 () Bool)

(assert (=> b!2289411 m!2717125))

(declare-fun m!2717127 () Bool)

(assert (=> b!2289412 m!2717127))

(declare-fun m!2717129 () Bool)

(assert (=> b!2289433 m!2717129))

(declare-fun m!2717131 () Bool)

(assert (=> b!2289418 m!2717131))

(declare-fun m!2717133 () Bool)

(assert (=> b!2289418 m!2717133))

(declare-fun m!2717135 () Bool)

(assert (=> b!2289418 m!2717135))

(declare-fun m!2717137 () Bool)

(assert (=> b!2289418 m!2717137))

(assert (=> b!2289418 m!2717115))

(declare-fun m!2717139 () Bool)

(assert (=> b!2289418 m!2717139))

(declare-fun m!2717141 () Bool)

(assert (=> b!2289418 m!2717141))

(declare-fun m!2717143 () Bool)

(assert (=> b!2289418 m!2717143))

(declare-fun m!2717145 () Bool)

(assert (=> b!2289418 m!2717145))

(assert (=> b!2289418 m!2717143))

(assert (=> b!2289418 m!2717135))

(declare-fun m!2717147 () Bool)

(assert (=> b!2289427 m!2717147))

(declare-fun m!2717149 () Bool)

(assert (=> b!2289427 m!2717149))

(declare-fun m!2717151 () Bool)

(assert (=> b!2289427 m!2717151))

(declare-fun m!2717153 () Bool)

(assert (=> b!2289427 m!2717153))

(declare-fun m!2717155 () Bool)

(assert (=> b!2289416 m!2717155))

(declare-fun m!2717157 () Bool)

(assert (=> b!2289416 m!2717157))

(declare-fun m!2717159 () Bool)

(assert (=> b!2289419 m!2717159))

(declare-fun m!2717161 () Bool)

(assert (=> b!2289419 m!2717161))

(declare-fun m!2717163 () Bool)

(assert (=> b!2289439 m!2717163))

(declare-fun m!2717165 () Bool)

(assert (=> b!2289435 m!2717165))

(declare-fun m!2717167 () Bool)

(assert (=> b!2289435 m!2717167))

(declare-fun m!2717169 () Bool)

(assert (=> b!2289442 m!2717169))

(declare-fun m!2717171 () Bool)

(assert (=> b!2289425 m!2717171))

(declare-fun m!2717173 () Bool)

(assert (=> b!2289425 m!2717173))

(declare-fun m!2717175 () Bool)

(assert (=> b!2289425 m!2717175))

(assert (=> b!2289425 m!2717171))

(declare-fun m!2717177 () Bool)

(assert (=> b!2289425 m!2717177))

(declare-fun m!2717179 () Bool)

(assert (=> b!2289425 m!2717179))

(declare-fun m!2717181 () Bool)

(assert (=> b!2289429 m!2717181))

(declare-fun m!2717183 () Bool)

(assert (=> b!2289417 m!2717183))

(assert (=> b!2289417 m!2717183))

(declare-fun m!2717185 () Bool)

(assert (=> b!2289417 m!2717185))

(check-sat (not b!2289419) (not b_next!69455) b_and!181599 (not b!2289441) (not b!2289432) (not b!2289424) (not b!2289439) (not b!2289440) (not b_next!69461) (not b!2289433) (not b!2289425) (not b_next!69463) b_and!181591 (not b!2289423) (not b!2289417) b_and!181595 (not b_next!69465) (not b!2289416) (not b!2289429) (not b!2289436) (not b!2289427) (not b!2289412) (not b_next!69459) (not b!2289438) (not b!2289442) (not b_next!69467) (not b!2289431) (not b_next!69453) (not b!2289422) b_and!181593 b_and!181597 (not b!2289420) (not b!2289418) b_and!181587 (not b!2289426) (not b!2289435) (not b!2289411) (not b_next!69457) b_and!181589 (not b!2289437) (not b!2289415) b_and!181585 tp_is_empty!10639)
(check-sat (not b_next!69455) b_and!181599 (not b_next!69459) b_and!181587 (not b_next!69457) b_and!181589 (not b_next!69461) b_and!181585 (not b_next!69463) b_and!181591 b_and!181595 (not b_next!69465) (not b_next!69467) (not b_next!69453) b_and!181593 b_and!181597)
(get-model)

(declare-fun d!677258 () Bool)

(declare-fun res!978901 () Bool)

(declare-fun e!1466972 () Bool)

(assert (=> d!677258 (=> (not res!978901) (not e!1466972))))

(declare-fun validRegex!2526 (Regex!6709) Bool)

(assert (=> d!677258 (= res!978901 (validRegex!2526 (regex!4361 r!2363)))))

(assert (=> d!677258 (= (ruleValid!1451 thiss!16613 r!2363) e!1466972)))

(declare-fun b!2289447 () Bool)

(declare-fun res!978902 () Bool)

(assert (=> b!2289447 (=> (not res!978902) (not e!1466972))))

(declare-fun nullable!1864 (Regex!6709) Bool)

(assert (=> b!2289447 (= res!978902 (not (nullable!1864 (regex!4361 r!2363))))))

(declare-fun b!2289448 () Bool)

(assert (=> b!2289448 (= e!1466972 (not (= (tag!4851 r!2363) (String!29720 ""))))))

(assert (= (and d!677258 res!978901) b!2289447))

(assert (= (and b!2289447 res!978902) b!2289448))

(declare-fun m!2717187 () Bool)

(assert (=> d!677258 m!2717187))

(declare-fun m!2717189 () Bool)

(assert (=> b!2289447 m!2717189))

(assert (=> b!2289419 d!677258))

(declare-fun d!677260 () Bool)

(assert (=> d!677260 (ruleValid!1451 thiss!16613 r!2363)))

(declare-fun lt!849423 () Unit!40146)

(declare-fun choose!13363 (LexerInterface!3958 Rule!8522 List!27353) Unit!40146)

(assert (=> d!677260 (= lt!849423 (choose!13363 thiss!16613 r!2363 rules!1750))))

(assert (=> d!677260 (contains!4737 rules!1750 r!2363)))

(assert (=> d!677260 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!856 thiss!16613 r!2363 rules!1750) lt!849423)))

(declare-fun bs!456986 () Bool)

(assert (= bs!456986 d!677260))

(assert (=> bs!456986 m!2717159))

(declare-fun m!2717191 () Bool)

(assert (=> bs!456986 m!2717191))

(assert (=> bs!456986 m!2717169))

(assert (=> b!2289419 d!677260))

(declare-fun b!2289505 () Bool)

(declare-fun e!1467007 () Bool)

(declare-fun head!4988 (List!27352) C!13564)

(assert (=> b!2289505 (= e!1467007 (= (head!4988 (list!10668 (charsOf!2749 (head!4986 tokens!456)))) (c!363057 (regex!4361 r!2363))))))

(declare-fun b!2289506 () Bool)

(declare-fun res!978940 () Bool)

(declare-fun e!1467005 () Bool)

(assert (=> b!2289506 (=> res!978940 e!1467005)))

(declare-fun isEmpty!15519 (List!27352) Bool)

(declare-fun tail!3307 (List!27352) List!27352)

(assert (=> b!2289506 (= res!978940 (not (isEmpty!15519 (tail!3307 (list!10668 (charsOf!2749 (head!4986 tokens!456)))))))))

(declare-fun b!2289507 () Bool)

(declare-fun e!1467004 () Bool)

(declare-fun derivativeStep!1524 (Regex!6709 C!13564) Regex!6709)

(assert (=> b!2289507 (= e!1467004 (matchR!2966 (derivativeStep!1524 (regex!4361 r!2363) (head!4988 (list!10668 (charsOf!2749 (head!4986 tokens!456))))) (tail!3307 (list!10668 (charsOf!2749 (head!4986 tokens!456))))))))

(declare-fun b!2289508 () Bool)

(declare-fun res!978943 () Bool)

(assert (=> b!2289508 (=> (not res!978943) (not e!1467007))))

(assert (=> b!2289508 (= res!978943 (isEmpty!15519 (tail!3307 (list!10668 (charsOf!2749 (head!4986 tokens!456))))))))

(declare-fun b!2289509 () Bool)

(declare-fun res!978947 () Bool)

(declare-fun e!1467001 () Bool)

(assert (=> b!2289509 (=> res!978947 e!1467001)))

(assert (=> b!2289509 (= res!978947 e!1467007)))

(declare-fun res!978941 () Bool)

(assert (=> b!2289509 (=> (not res!978941) (not e!1467007))))

(declare-fun lt!849428 () Bool)

(assert (=> b!2289509 (= res!978941 lt!849428)))

(declare-fun b!2289510 () Bool)

(declare-fun e!1467003 () Bool)

(declare-fun call!136625 () Bool)

(assert (=> b!2289510 (= e!1467003 (= lt!849428 call!136625))))

(declare-fun b!2289511 () Bool)

(declare-fun res!978946 () Bool)

(assert (=> b!2289511 (=> res!978946 e!1467001)))

(assert (=> b!2289511 (= res!978946 (not ((_ is ElementMatch!6709) (regex!4361 r!2363))))))

(declare-fun e!1467002 () Bool)

(assert (=> b!2289511 (= e!1467002 e!1467001)))

(declare-fun b!2289513 () Bool)

(declare-fun e!1467006 () Bool)

(assert (=> b!2289513 (= e!1467001 e!1467006)))

(declare-fun res!978944 () Bool)

(assert (=> b!2289513 (=> (not res!978944) (not e!1467006))))

(assert (=> b!2289513 (= res!978944 (not lt!849428))))

(declare-fun b!2289514 () Bool)

(assert (=> b!2289514 (= e!1467006 e!1467005)))

(declare-fun res!978942 () Bool)

(assert (=> b!2289514 (=> res!978942 e!1467005)))

(assert (=> b!2289514 (= res!978942 call!136625)))

(declare-fun b!2289515 () Bool)

(assert (=> b!2289515 (= e!1467004 (nullable!1864 (regex!4361 r!2363)))))

(declare-fun b!2289516 () Bool)

(assert (=> b!2289516 (= e!1467005 (not (= (head!4988 (list!10668 (charsOf!2749 (head!4986 tokens!456)))) (c!363057 (regex!4361 r!2363)))))))

(declare-fun b!2289517 () Bool)

(declare-fun res!978945 () Bool)

(assert (=> b!2289517 (=> (not res!978945) (not e!1467007))))

(assert (=> b!2289517 (= res!978945 (not call!136625))))

(declare-fun d!677262 () Bool)

(assert (=> d!677262 e!1467003))

(declare-fun c!363072 () Bool)

(assert (=> d!677262 (= c!363072 ((_ is EmptyExpr!6709) (regex!4361 r!2363)))))

(assert (=> d!677262 (= lt!849428 e!1467004)))

(declare-fun c!363073 () Bool)

(assert (=> d!677262 (= c!363073 (isEmpty!15519 (list!10668 (charsOf!2749 (head!4986 tokens!456)))))))

(assert (=> d!677262 (validRegex!2526 (regex!4361 r!2363))))

(assert (=> d!677262 (= (matchR!2966 (regex!4361 r!2363) (list!10668 (charsOf!2749 (head!4986 tokens!456)))) lt!849428)))

(declare-fun b!2289512 () Bool)

(assert (=> b!2289512 (= e!1467002 (not lt!849428))))

(declare-fun bm!136620 () Bool)

(assert (=> bm!136620 (= call!136625 (isEmpty!15519 (list!10668 (charsOf!2749 (head!4986 tokens!456)))))))

(declare-fun b!2289518 () Bool)

(assert (=> b!2289518 (= e!1467003 e!1467002)))

(declare-fun c!363071 () Bool)

(assert (=> b!2289518 (= c!363071 ((_ is EmptyLang!6709) (regex!4361 r!2363)))))

(assert (= (and d!677262 c!363073) b!2289515))

(assert (= (and d!677262 (not c!363073)) b!2289507))

(assert (= (and d!677262 c!363072) b!2289510))

(assert (= (and d!677262 (not c!363072)) b!2289518))

(assert (= (and b!2289518 c!363071) b!2289512))

(assert (= (and b!2289518 (not c!363071)) b!2289511))

(assert (= (and b!2289511 (not res!978946)) b!2289509))

(assert (= (and b!2289509 res!978941) b!2289517))

(assert (= (and b!2289517 res!978945) b!2289508))

(assert (= (and b!2289508 res!978943) b!2289505))

(assert (= (and b!2289509 (not res!978947)) b!2289513))

(assert (= (and b!2289513 res!978944) b!2289514))

(assert (= (and b!2289514 (not res!978942)) b!2289506))

(assert (= (and b!2289506 (not res!978940)) b!2289516))

(assert (= (or b!2289510 b!2289514 b!2289517) bm!136620))

(assert (=> bm!136620 m!2717105))

(declare-fun m!2717193 () Bool)

(assert (=> bm!136620 m!2717193))

(assert (=> b!2289506 m!2717105))

(declare-fun m!2717195 () Bool)

(assert (=> b!2289506 m!2717195))

(assert (=> b!2289506 m!2717195))

(declare-fun m!2717197 () Bool)

(assert (=> b!2289506 m!2717197))

(assert (=> b!2289508 m!2717105))

(assert (=> b!2289508 m!2717195))

(assert (=> b!2289508 m!2717195))

(assert (=> b!2289508 m!2717197))

(assert (=> b!2289505 m!2717105))

(declare-fun m!2717199 () Bool)

(assert (=> b!2289505 m!2717199))

(assert (=> b!2289515 m!2717189))

(assert (=> b!2289507 m!2717105))

(assert (=> b!2289507 m!2717199))

(assert (=> b!2289507 m!2717199))

(declare-fun m!2717213 () Bool)

(assert (=> b!2289507 m!2717213))

(assert (=> b!2289507 m!2717105))

(assert (=> b!2289507 m!2717195))

(assert (=> b!2289507 m!2717213))

(assert (=> b!2289507 m!2717195))

(declare-fun m!2717219 () Bool)

(assert (=> b!2289507 m!2717219))

(assert (=> d!677262 m!2717105))

(assert (=> d!677262 m!2717193))

(assert (=> d!677262 m!2717187))

(assert (=> b!2289516 m!2717105))

(assert (=> b!2289516 m!2717199))

(assert (=> b!2289441 d!677262))

(declare-fun d!677268 () Bool)

(declare-fun list!10672 (Conc!8870) List!27352)

(assert (=> d!677268 (= (list!10668 (charsOf!2749 (head!4986 tokens!456))) (list!10672 (c!363056 (charsOf!2749 (head!4986 tokens!456)))))))

(declare-fun bs!456987 () Bool)

(assert (= bs!456987 d!677268))

(declare-fun m!2717221 () Bool)

(assert (=> bs!456987 m!2717221))

(assert (=> b!2289441 d!677268))

(declare-fun d!677272 () Bool)

(declare-fun lt!849432 () BalanceConc!17468)

(assert (=> d!677272 (= (list!10668 lt!849432) (originalCharacters!5131 (head!4986 tokens!456)))))

(declare-fun dynLambda!11829 (Int TokenValue!4523) BalanceConc!17468)

(assert (=> d!677272 (= lt!849432 (dynLambda!11829 (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456)))) (value!138108 (head!4986 tokens!456))))))

(assert (=> d!677272 (= (charsOf!2749 (head!4986 tokens!456)) lt!849432)))

(declare-fun b_lambda!72919 () Bool)

(assert (=> (not b_lambda!72919) (not d!677272)))

(declare-fun t!204488 () Bool)

(declare-fun tb!136383 () Bool)

(assert (=> (and b!2289430 (= (toChars!6010 (transformation!4361 otherR!12)) (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456))))) t!204488) tb!136383))

(declare-fun b!2289554 () Bool)

(declare-fun e!1467026 () Bool)

(declare-fun tp!725913 () Bool)

(declare-fun inv!36860 (Conc!8870) Bool)

(assert (=> b!2289554 (= e!1467026 (and (inv!36860 (c!363056 (dynLambda!11829 (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456)))) (value!138108 (head!4986 tokens!456))))) tp!725913))))

(declare-fun result!166296 () Bool)

(declare-fun inv!36861 (BalanceConc!17468) Bool)

(assert (=> tb!136383 (= result!166296 (and (inv!36861 (dynLambda!11829 (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456)))) (value!138108 (head!4986 tokens!456)))) e!1467026))))

(assert (= tb!136383 b!2289554))

(declare-fun m!2717237 () Bool)

(assert (=> b!2289554 m!2717237))

(declare-fun m!2717239 () Bool)

(assert (=> tb!136383 m!2717239))

(assert (=> d!677272 t!204488))

(declare-fun b_and!181609 () Bool)

(assert (= b_and!181587 (and (=> t!204488 result!166296) b_and!181609)))

(declare-fun t!204490 () Bool)

(declare-fun tb!136385 () Bool)

(assert (=> (and b!2289410 (= (toChars!6010 (transformation!4361 (h!32660 rules!1750))) (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456))))) t!204490) tb!136385))

(declare-fun result!166300 () Bool)

(assert (= result!166300 result!166296))

(assert (=> d!677272 t!204490))

(declare-fun b_and!181611 () Bool)

(assert (= b_and!181591 (and (=> t!204490 result!166300) b_and!181611)))

(declare-fun t!204492 () Bool)

(declare-fun tb!136387 () Bool)

(assert (=> (and b!2289428 (= (toChars!6010 (transformation!4361 r!2363)) (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456))))) t!204492) tb!136387))

(declare-fun result!166302 () Bool)

(assert (= result!166302 result!166296))

(assert (=> d!677272 t!204492))

(declare-fun b_and!181613 () Bool)

(assert (= b_and!181595 (and (=> t!204492 result!166302) b_and!181613)))

(declare-fun t!204494 () Bool)

(declare-fun tb!136389 () Bool)

(assert (=> (and b!2289434 (= (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456))))) t!204494) tb!136389))

(declare-fun result!166304 () Bool)

(assert (= result!166304 result!166296))

(assert (=> d!677272 t!204494))

(declare-fun b_and!181615 () Bool)

(assert (= b_and!181599 (and (=> t!204494 result!166304) b_and!181615)))

(declare-fun m!2717241 () Bool)

(assert (=> d!677272 m!2717241))

(declare-fun m!2717243 () Bool)

(assert (=> d!677272 m!2717243))

(assert (=> b!2289441 d!677272))

(declare-fun d!677282 () Bool)

(assert (=> d!677282 (= (head!4986 tokens!456) (h!32661 tokens!456))))

(assert (=> b!2289441 d!677282))

(declare-fun d!677284 () Bool)

(declare-fun lt!849441 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3657 (List!27353) (InoxSet Rule!8522))

(assert (=> d!677284 (= lt!849441 (select (content!3657 rules!1750) r!2363))))

(declare-fun e!1467043 () Bool)

(assert (=> d!677284 (= lt!849441 e!1467043)))

(declare-fun res!978983 () Bool)

(assert (=> d!677284 (=> (not res!978983) (not e!1467043))))

(assert (=> d!677284 (= res!978983 ((_ is Cons!27259) rules!1750))))

(assert (=> d!677284 (= (contains!4737 rules!1750 r!2363) lt!849441)))

(declare-fun b!2289570 () Bool)

(declare-fun e!1467042 () Bool)

(assert (=> b!2289570 (= e!1467043 e!1467042)))

(declare-fun res!978984 () Bool)

(assert (=> b!2289570 (=> res!978984 e!1467042)))

(assert (=> b!2289570 (= res!978984 (= (h!32660 rules!1750) r!2363))))

(declare-fun b!2289571 () Bool)

(assert (=> b!2289571 (= e!1467042 (contains!4737 (t!204477 rules!1750) r!2363))))

(assert (= (and d!677284 res!978983) b!2289570))

(assert (= (and b!2289570 (not res!978984)) b!2289571))

(declare-fun m!2717255 () Bool)

(assert (=> d!677284 m!2717255))

(declare-fun m!2717257 () Bool)

(assert (=> d!677284 m!2717257))

(declare-fun m!2717259 () Bool)

(assert (=> b!2289571 m!2717259))

(assert (=> b!2289442 d!677284))

(assert (=> b!2289431 d!677282))

(declare-fun d!677292 () Bool)

(declare-fun list!10673 (Conc!8871) List!27354)

(assert (=> d!677292 (= (list!10669 (_1!16040 lt!849420)) (list!10673 (c!363058 (_1!16040 lt!849420))))))

(declare-fun bs!456990 () Bool)

(assert (= bs!456990 d!677292))

(declare-fun m!2717271 () Bool)

(assert (=> bs!456990 m!2717271))

(assert (=> b!2289432 d!677292))

(declare-fun d!677302 () Bool)

(assert (=> d!677302 (= (list!10668 (_2!16040 lt!849420)) (list!10672 (c!363056 (_2!16040 lt!849420))))))

(declare-fun bs!456992 () Bool)

(assert (= bs!456992 d!677302))

(declare-fun m!2717275 () Bool)

(assert (=> bs!456992 m!2717275))

(assert (=> b!2289432 d!677302))

(declare-fun b!2289659 () Bool)

(declare-fun res!979038 () Bool)

(declare-fun e!1467095 () Bool)

(assert (=> b!2289659 (=> (not res!979038) (not e!1467095))))

(declare-fun lt!849470 () tuple2!27060)

(declare-fun lexList!1110 (LexerInterface!3958 List!27353 List!27352) tuple2!27062)

(assert (=> b!2289659 (= res!979038 (= (list!10669 (_1!16040 lt!849470)) (_1!16041 (lexList!1110 thiss!16613 rules!1750 (list!10668 (seqFromList!3065 input!1722))))))))

(declare-fun b!2289660 () Bool)

(assert (=> b!2289660 (= e!1467095 (= (list!10668 (_2!16040 lt!849470)) (_2!16041 (lexList!1110 thiss!16613 rules!1750 (list!10668 (seqFromList!3065 input!1722))))))))

(declare-fun b!2289661 () Bool)

(declare-fun e!1467094 () Bool)

(assert (=> b!2289661 (= e!1467094 (= (_2!16040 lt!849470) (seqFromList!3065 input!1722)))))

(declare-fun d!677306 () Bool)

(assert (=> d!677306 e!1467095))

(declare-fun res!979039 () Bool)

(assert (=> d!677306 (=> (not res!979039) (not e!1467095))))

(assert (=> d!677306 (= res!979039 e!1467094)))

(declare-fun c!363093 () Bool)

(declare-fun size!21458 (BalanceConc!17470) Int)

(assert (=> d!677306 (= c!363093 (> (size!21458 (_1!16040 lt!849470)) 0))))

(declare-fun lexTailRecV2!785 (LexerInterface!3958 List!27353 BalanceConc!17468 BalanceConc!17468 BalanceConc!17468 BalanceConc!17470) tuple2!27060)

(assert (=> d!677306 (= lt!849470 (lexTailRecV2!785 thiss!16613 rules!1750 (seqFromList!3065 input!1722) (BalanceConc!17469 Empty!8870) (seqFromList!3065 input!1722) (BalanceConc!17471 Empty!8871)))))

(assert (=> d!677306 (= (lex!1797 thiss!16613 rules!1750 (seqFromList!3065 input!1722)) lt!849470)))

(declare-fun b!2289662 () Bool)

(declare-fun e!1467093 () Bool)

(declare-fun isEmpty!15521 (BalanceConc!17470) Bool)

(assert (=> b!2289662 (= e!1467093 (not (isEmpty!15521 (_1!16040 lt!849470))))))

(declare-fun b!2289663 () Bool)

(assert (=> b!2289663 (= e!1467094 e!1467093)))

(declare-fun res!979040 () Bool)

(assert (=> b!2289663 (= res!979040 (< (size!21456 (_2!16040 lt!849470)) (size!21456 (seqFromList!3065 input!1722))))))

(assert (=> b!2289663 (=> (not res!979040) (not e!1467093))))

(assert (= (and d!677306 c!363093) b!2289663))

(assert (= (and d!677306 (not c!363093)) b!2289661))

(assert (= (and b!2289663 res!979040) b!2289662))

(assert (= (and d!677306 res!979039) b!2289659))

(assert (= (and b!2289659 res!979038) b!2289660))

(declare-fun m!2717355 () Bool)

(assert (=> b!2289659 m!2717355))

(assert (=> b!2289659 m!2717121))

(declare-fun m!2717357 () Bool)

(assert (=> b!2289659 m!2717357))

(assert (=> b!2289659 m!2717357))

(declare-fun m!2717359 () Bool)

(assert (=> b!2289659 m!2717359))

(declare-fun m!2717361 () Bool)

(assert (=> b!2289660 m!2717361))

(assert (=> b!2289660 m!2717121))

(assert (=> b!2289660 m!2717357))

(assert (=> b!2289660 m!2717357))

(assert (=> b!2289660 m!2717359))

(declare-fun m!2717363 () Bool)

(assert (=> b!2289663 m!2717363))

(assert (=> b!2289663 m!2717121))

(declare-fun m!2717365 () Bool)

(assert (=> b!2289663 m!2717365))

(declare-fun m!2717367 () Bool)

(assert (=> d!677306 m!2717367))

(assert (=> d!677306 m!2717121))

(assert (=> d!677306 m!2717121))

(declare-fun m!2717369 () Bool)

(assert (=> d!677306 m!2717369))

(declare-fun m!2717371 () Bool)

(assert (=> b!2289662 m!2717371))

(assert (=> b!2289432 d!677306))

(declare-fun d!677332 () Bool)

(declare-fun fromListB!1376 (List!27352) BalanceConc!17468)

(assert (=> d!677332 (= (seqFromList!3065 input!1722) (fromListB!1376 input!1722))))

(declare-fun bs!456995 () Bool)

(assert (= bs!456995 d!677332))

(declare-fun m!2717373 () Bool)

(assert (=> bs!456995 m!2717373))

(assert (=> b!2289432 d!677332))

(declare-fun d!677334 () Bool)

(assert (=> d!677334 (= (inv!36853 (tag!4851 (rule!6693 (h!32661 tokens!456)))) (= (mod (str.len (value!138107 (tag!4851 (rule!6693 (h!32661 tokens!456))))) 2) 0))))

(assert (=> b!2289438 d!677334))

(declare-fun d!677336 () Bool)

(declare-fun res!979043 () Bool)

(declare-fun e!1467098 () Bool)

(assert (=> d!677336 (=> (not res!979043) (not e!1467098))))

(declare-fun semiInverseModEq!1766 (Int Int) Bool)

(assert (=> d!677336 (= res!979043 (semiInverseModEq!1766 (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (toValue!6151 (transformation!4361 (rule!6693 (h!32661 tokens!456))))))))

(assert (=> d!677336 (= (inv!36856 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) e!1467098)))

(declare-fun b!2289666 () Bool)

(declare-fun equivClasses!1685 (Int Int) Bool)

(assert (=> b!2289666 (= e!1467098 (equivClasses!1685 (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (toValue!6151 (transformation!4361 (rule!6693 (h!32661 tokens!456))))))))

(assert (= (and d!677336 res!979043) b!2289666))

(declare-fun m!2717379 () Bool)

(assert (=> d!677336 m!2717379))

(declare-fun m!2717381 () Bool)

(assert (=> b!2289666 m!2717381))

(assert (=> b!2289438 d!677336))

(declare-fun b!2289675 () Bool)

(declare-fun e!1467104 () Int)

(assert (=> b!2289675 (= e!1467104 0)))

(declare-fun b!2289676 () Bool)

(declare-fun e!1467105 () Int)

(assert (=> b!2289676 (= e!1467104 e!1467105)))

(declare-fun c!363099 () Bool)

(assert (=> b!2289676 (= c!363099 (and ((_ is Cons!27259) rules!1750) (not (= (h!32660 rules!1750) r!2363))))))

(declare-fun b!2289677 () Bool)

(assert (=> b!2289677 (= e!1467105 (+ 1 (getIndex!374 (t!204477 rules!1750) r!2363)))))

(declare-fun b!2289678 () Bool)

(assert (=> b!2289678 (= e!1467105 (- 1))))

(declare-fun d!677342 () Bool)

(declare-fun lt!849476 () Int)

(assert (=> d!677342 (>= lt!849476 0)))

(assert (=> d!677342 (= lt!849476 e!1467104)))

(declare-fun c!363098 () Bool)

(assert (=> d!677342 (= c!363098 (and ((_ is Cons!27259) rules!1750) (= (h!32660 rules!1750) r!2363)))))

(assert (=> d!677342 (contains!4737 rules!1750 r!2363)))

(assert (=> d!677342 (= (getIndex!374 rules!1750 r!2363) lt!849476)))

(assert (= (and d!677342 c!363098) b!2289675))

(assert (= (and d!677342 (not c!363098)) b!2289676))

(assert (= (and b!2289676 c!363099) b!2289677))

(assert (= (and b!2289676 (not c!363099)) b!2289678))

(declare-fun m!2717383 () Bool)

(assert (=> b!2289677 m!2717383))

(assert (=> d!677342 m!2717169))

(assert (=> b!2289427 d!677342))

(declare-fun b!2289679 () Bool)

(declare-fun e!1467106 () Int)

(assert (=> b!2289679 (= e!1467106 0)))

(declare-fun b!2289680 () Bool)

(declare-fun e!1467107 () Int)

(assert (=> b!2289680 (= e!1467106 e!1467107)))

(declare-fun c!363101 () Bool)

(assert (=> b!2289680 (= c!363101 (and ((_ is Cons!27259) rules!1750) (not (= (h!32660 rules!1750) otherR!12))))))

(declare-fun b!2289681 () Bool)

(assert (=> b!2289681 (= e!1467107 (+ 1 (getIndex!374 (t!204477 rules!1750) otherR!12)))))

(declare-fun b!2289682 () Bool)

(assert (=> b!2289682 (= e!1467107 (- 1))))

(declare-fun d!677344 () Bool)

(declare-fun lt!849477 () Int)

(assert (=> d!677344 (>= lt!849477 0)))

(assert (=> d!677344 (= lt!849477 e!1467106)))

(declare-fun c!363100 () Bool)

(assert (=> d!677344 (= c!363100 (and ((_ is Cons!27259) rules!1750) (= (h!32660 rules!1750) otherR!12)))))

(assert (=> d!677344 (contains!4737 rules!1750 otherR!12)))

(assert (=> d!677344 (= (getIndex!374 rules!1750 otherR!12) lt!849477)))

(assert (= (and d!677344 c!363100) b!2289679))

(assert (= (and d!677344 (not c!363100)) b!2289680))

(assert (= (and b!2289680 c!363101) b!2289681))

(assert (= (and b!2289680 (not c!363101)) b!2289682))

(declare-fun m!2717385 () Bool)

(assert (=> b!2289681 m!2717385))

(assert (=> d!677344 m!2717125))

(assert (=> b!2289427 d!677344))

(declare-fun d!677346 () Bool)

(declare-fun res!979044 () Bool)

(declare-fun e!1467108 () Bool)

(assert (=> d!677346 (=> (not res!979044) (not e!1467108))))

(assert (=> d!677346 (= res!979044 (validRegex!2526 (regex!4361 otherR!12)))))

(assert (=> d!677346 (= (ruleValid!1451 thiss!16613 otherR!12) e!1467108)))

(declare-fun b!2289683 () Bool)

(declare-fun res!979045 () Bool)

(assert (=> b!2289683 (=> (not res!979045) (not e!1467108))))

(assert (=> b!2289683 (= res!979045 (not (nullable!1864 (regex!4361 otherR!12))))))

(declare-fun b!2289684 () Bool)

(assert (=> b!2289684 (= e!1467108 (not (= (tag!4851 otherR!12) (String!29720 ""))))))

(assert (= (and d!677346 res!979044) b!2289683))

(assert (= (and b!2289683 res!979045) b!2289684))

(declare-fun m!2717387 () Bool)

(assert (=> d!677346 m!2717387))

(declare-fun m!2717389 () Bool)

(assert (=> b!2289683 m!2717389))

(assert (=> b!2289427 d!677346))

(declare-fun d!677348 () Bool)

(assert (=> d!677348 (ruleValid!1451 thiss!16613 otherR!12)))

(declare-fun lt!849478 () Unit!40146)

(assert (=> d!677348 (= lt!849478 (choose!13363 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!677348 (contains!4737 rules!1750 otherR!12)))

(assert (=> d!677348 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!856 thiss!16613 otherR!12 rules!1750) lt!849478)))

(declare-fun bs!456998 () Bool)

(assert (= bs!456998 d!677348))

(assert (=> bs!456998 m!2717151))

(declare-fun m!2717391 () Bool)

(assert (=> bs!456998 m!2717391))

(assert (=> bs!456998 m!2717125))

(assert (=> b!2289427 d!677348))

(declare-fun d!677350 () Bool)

(assert (=> d!677350 (= (get!8221 (maxPrefix!2222 thiss!16613 rules!1750 input!1722)) (v!30428 (maxPrefix!2222 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2289417 d!677350))

(declare-fun d!677352 () Bool)

(declare-fun e!1467117 () Bool)

(assert (=> d!677352 e!1467117))

(declare-fun res!979066 () Bool)

(assert (=> d!677352 (=> res!979066 e!1467117)))

(declare-fun lt!849490 () Option!5351)

(declare-fun isEmpty!15522 (Option!5351) Bool)

(assert (=> d!677352 (= res!979066 (isEmpty!15522 lt!849490))))

(declare-fun e!1467115 () Option!5351)

(assert (=> d!677352 (= lt!849490 e!1467115)))

(declare-fun c!363104 () Bool)

(assert (=> d!677352 (= c!363104 (and ((_ is Cons!27259) rules!1750) ((_ is Nil!27259) (t!204477 rules!1750))))))

(declare-fun lt!849489 () Unit!40146)

(declare-fun lt!849491 () Unit!40146)

(assert (=> d!677352 (= lt!849489 lt!849491)))

(assert (=> d!677352 (isPrefix!2351 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1493 (List!27352 List!27352) Unit!40146)

(assert (=> d!677352 (= lt!849491 (lemmaIsPrefixRefl!1493 input!1722 input!1722))))

(declare-fun rulesValidInductive!1535 (LexerInterface!3958 List!27353) Bool)

(assert (=> d!677352 (rulesValidInductive!1535 thiss!16613 rules!1750)))

(assert (=> d!677352 (= (maxPrefix!2222 thiss!16613 rules!1750 input!1722) lt!849490)))

(declare-fun b!2289703 () Bool)

(declare-fun res!979064 () Bool)

(declare-fun e!1467116 () Bool)

(assert (=> b!2289703 (=> (not res!979064) (not e!1467116))))

(assert (=> b!2289703 (= res!979064 (matchR!2966 (regex!4361 (rule!6693 (_1!16039 (get!8221 lt!849490)))) (list!10668 (charsOf!2749 (_1!16039 (get!8221 lt!849490))))))))

(declare-fun b!2289704 () Bool)

(declare-fun res!979062 () Bool)

(assert (=> b!2289704 (=> (not res!979062) (not e!1467116))))

(assert (=> b!2289704 (= res!979062 (= (++!6661 (list!10668 (charsOf!2749 (_1!16039 (get!8221 lt!849490)))) (_2!16039 (get!8221 lt!849490))) input!1722))))

(declare-fun bm!136627 () Bool)

(declare-fun call!136632 () Option!5351)

(assert (=> bm!136627 (= call!136632 (maxPrefixOneRule!1392 thiss!16613 (h!32660 rules!1750) input!1722))))

(declare-fun b!2289705 () Bool)

(declare-fun lt!849492 () Option!5351)

(declare-fun lt!849493 () Option!5351)

(assert (=> b!2289705 (= e!1467115 (ite (and ((_ is None!5350) lt!849492) ((_ is None!5350) lt!849493)) None!5350 (ite ((_ is None!5350) lt!849493) lt!849492 (ite ((_ is None!5350) lt!849492) lt!849493 (ite (>= (size!21454 (_1!16039 (v!30428 lt!849492))) (size!21454 (_1!16039 (v!30428 lt!849493)))) lt!849492 lt!849493)))))))

(assert (=> b!2289705 (= lt!849492 call!136632)))

(assert (=> b!2289705 (= lt!849493 (maxPrefix!2222 thiss!16613 (t!204477 rules!1750) input!1722))))

(declare-fun b!2289706 () Bool)

(declare-fun res!979061 () Bool)

(assert (=> b!2289706 (=> (not res!979061) (not e!1467116))))

(assert (=> b!2289706 (= res!979061 (< (size!21455 (_2!16039 (get!8221 lt!849490))) (size!21455 input!1722)))))

(declare-fun b!2289707 () Bool)

(assert (=> b!2289707 (= e!1467115 call!136632)))

(declare-fun b!2289708 () Bool)

(assert (=> b!2289708 (= e!1467116 (contains!4737 rules!1750 (rule!6693 (_1!16039 (get!8221 lt!849490)))))))

(declare-fun b!2289709 () Bool)

(declare-fun res!979063 () Bool)

(assert (=> b!2289709 (=> (not res!979063) (not e!1467116))))

(assert (=> b!2289709 (= res!979063 (= (value!138108 (_1!16039 (get!8221 lt!849490))) (apply!6633 (transformation!4361 (rule!6693 (_1!16039 (get!8221 lt!849490)))) (seqFromList!3065 (originalCharacters!5131 (_1!16039 (get!8221 lt!849490)))))))))

(declare-fun b!2289710 () Bool)

(declare-fun res!979065 () Bool)

(assert (=> b!2289710 (=> (not res!979065) (not e!1467116))))

(assert (=> b!2289710 (= res!979065 (= (list!10668 (charsOf!2749 (_1!16039 (get!8221 lt!849490)))) (originalCharacters!5131 (_1!16039 (get!8221 lt!849490)))))))

(declare-fun b!2289711 () Bool)

(assert (=> b!2289711 (= e!1467117 e!1467116)))

(declare-fun res!979060 () Bool)

(assert (=> b!2289711 (=> (not res!979060) (not e!1467116))))

(declare-fun isDefined!4230 (Option!5351) Bool)

(assert (=> b!2289711 (= res!979060 (isDefined!4230 lt!849490))))

(assert (= (and d!677352 c!363104) b!2289707))

(assert (= (and d!677352 (not c!363104)) b!2289705))

(assert (= (or b!2289707 b!2289705) bm!136627))

(assert (= (and d!677352 (not res!979066)) b!2289711))

(assert (= (and b!2289711 res!979060) b!2289710))

(assert (= (and b!2289710 res!979065) b!2289706))

(assert (= (and b!2289706 res!979061) b!2289704))

(assert (= (and b!2289704 res!979062) b!2289709))

(assert (= (and b!2289709 res!979063) b!2289703))

(assert (= (and b!2289703 res!979064) b!2289708))

(declare-fun m!2717393 () Bool)

(assert (=> b!2289710 m!2717393))

(declare-fun m!2717395 () Bool)

(assert (=> b!2289710 m!2717395))

(assert (=> b!2289710 m!2717395))

(declare-fun m!2717397 () Bool)

(assert (=> b!2289710 m!2717397))

(assert (=> b!2289706 m!2717393))

(declare-fun m!2717399 () Bool)

(assert (=> b!2289706 m!2717399))

(declare-fun m!2717401 () Bool)

(assert (=> b!2289706 m!2717401))

(assert (=> b!2289708 m!2717393))

(declare-fun m!2717403 () Bool)

(assert (=> b!2289708 m!2717403))

(declare-fun m!2717405 () Bool)

(assert (=> b!2289711 m!2717405))

(assert (=> b!2289709 m!2717393))

(declare-fun m!2717407 () Bool)

(assert (=> b!2289709 m!2717407))

(assert (=> b!2289709 m!2717407))

(declare-fun m!2717409 () Bool)

(assert (=> b!2289709 m!2717409))

(assert (=> b!2289704 m!2717393))

(assert (=> b!2289704 m!2717395))

(assert (=> b!2289704 m!2717395))

(assert (=> b!2289704 m!2717397))

(assert (=> b!2289704 m!2717397))

(declare-fun m!2717411 () Bool)

(assert (=> b!2289704 m!2717411))

(declare-fun m!2717413 () Bool)

(assert (=> bm!136627 m!2717413))

(assert (=> b!2289703 m!2717393))

(assert (=> b!2289703 m!2717395))

(assert (=> b!2289703 m!2717395))

(assert (=> b!2289703 m!2717397))

(assert (=> b!2289703 m!2717397))

(declare-fun m!2717415 () Bool)

(assert (=> b!2289703 m!2717415))

(declare-fun m!2717417 () Bool)

(assert (=> b!2289705 m!2717417))

(declare-fun m!2717419 () Bool)

(assert (=> d!677352 m!2717419))

(declare-fun m!2717421 () Bool)

(assert (=> d!677352 m!2717421))

(declare-fun m!2717423 () Bool)

(assert (=> d!677352 m!2717423))

(declare-fun m!2717425 () Bool)

(assert (=> d!677352 m!2717425))

(assert (=> b!2289417 d!677352))

(declare-fun d!677354 () Bool)

(declare-fun e!1467133 () Bool)

(assert (=> d!677354 e!1467133))

(declare-fun res!979089 () Bool)

(assert (=> d!677354 (=> res!979089 e!1467133)))

(declare-fun lt!849506 () Bool)

(assert (=> d!677354 (= res!979089 (not lt!849506))))

(declare-fun e!1467132 () Bool)

(assert (=> d!677354 (= lt!849506 e!1467132)))

(declare-fun res!979091 () Bool)

(assert (=> d!677354 (=> res!979091 e!1467132)))

(assert (=> d!677354 (= res!979091 ((_ is Nil!27258) lt!849414))))

(assert (=> d!677354 (= (isPrefix!2351 lt!849414 (++!6661 lt!849414 (_2!16039 lt!849411))) lt!849506)))

(declare-fun b!2289738 () Bool)

(declare-fun e!1467134 () Bool)

(assert (=> b!2289738 (= e!1467132 e!1467134)))

(declare-fun res!979090 () Bool)

(assert (=> b!2289738 (=> (not res!979090) (not e!1467134))))

(assert (=> b!2289738 (= res!979090 (not ((_ is Nil!27258) (++!6661 lt!849414 (_2!16039 lt!849411)))))))

(declare-fun b!2289741 () Bool)

(assert (=> b!2289741 (= e!1467133 (>= (size!21455 (++!6661 lt!849414 (_2!16039 lt!849411))) (size!21455 lt!849414)))))

(declare-fun b!2289739 () Bool)

(declare-fun res!979092 () Bool)

(assert (=> b!2289739 (=> (not res!979092) (not e!1467134))))

(assert (=> b!2289739 (= res!979092 (= (head!4988 lt!849414) (head!4988 (++!6661 lt!849414 (_2!16039 lt!849411)))))))

(declare-fun b!2289740 () Bool)

(assert (=> b!2289740 (= e!1467134 (isPrefix!2351 (tail!3307 lt!849414) (tail!3307 (++!6661 lt!849414 (_2!16039 lt!849411)))))))

(assert (= (and d!677354 (not res!979091)) b!2289738))

(assert (= (and b!2289738 res!979090) b!2289739))

(assert (= (and b!2289739 res!979092) b!2289740))

(assert (= (and d!677354 (not res!979089)) b!2289741))

(assert (=> b!2289741 m!2717135))

(declare-fun m!2717427 () Bool)

(assert (=> b!2289741 m!2717427))

(assert (=> b!2289741 m!2717139))

(declare-fun m!2717429 () Bool)

(assert (=> b!2289739 m!2717429))

(assert (=> b!2289739 m!2717135))

(declare-fun m!2717431 () Bool)

(assert (=> b!2289739 m!2717431))

(declare-fun m!2717433 () Bool)

(assert (=> b!2289740 m!2717433))

(assert (=> b!2289740 m!2717135))

(declare-fun m!2717435 () Bool)

(assert (=> b!2289740 m!2717435))

(assert (=> b!2289740 m!2717433))

(assert (=> b!2289740 m!2717435))

(declare-fun m!2717437 () Bool)

(assert (=> b!2289740 m!2717437))

(assert (=> b!2289418 d!677354))

(declare-fun d!677356 () Bool)

(assert (=> d!677356 (isPrefix!2351 lt!849414 (++!6661 lt!849414 (_2!16039 lt!849411)))))

(declare-fun lt!849509 () Unit!40146)

(declare-fun choose!13365 (List!27352 List!27352) Unit!40146)

(assert (=> d!677356 (= lt!849509 (choose!13365 lt!849414 (_2!16039 lt!849411)))))

(assert (=> d!677356 (= (lemmaConcatTwoListThenFirstIsPrefix!1556 lt!849414 (_2!16039 lt!849411)) lt!849509)))

(declare-fun bs!456999 () Bool)

(assert (= bs!456999 d!677356))

(assert (=> bs!456999 m!2717135))

(assert (=> bs!456999 m!2717135))

(assert (=> bs!456999 m!2717137))

(declare-fun m!2717439 () Bool)

(assert (=> bs!456999 m!2717439))

(assert (=> b!2289418 d!677356))

(declare-fun d!677358 () Bool)

(declare-fun lt!849512 () Int)

(assert (=> d!677358 (>= lt!849512 0)))

(declare-fun e!1467137 () Int)

(assert (=> d!677358 (= lt!849512 e!1467137)))

(declare-fun c!363109 () Bool)

(assert (=> d!677358 (= c!363109 ((_ is Nil!27258) otherP!12))))

(assert (=> d!677358 (= (size!21455 otherP!12) lt!849512)))

(declare-fun b!2289746 () Bool)

(assert (=> b!2289746 (= e!1467137 0)))

(declare-fun b!2289747 () Bool)

(assert (=> b!2289747 (= e!1467137 (+ 1 (size!21455 (t!204476 otherP!12))))))

(assert (= (and d!677358 c!363109) b!2289746))

(assert (= (and d!677358 (not c!363109)) b!2289747))

(declare-fun m!2717441 () Bool)

(assert (=> b!2289747 m!2717441))

(assert (=> b!2289418 d!677358))

(declare-fun d!677360 () Bool)

(declare-fun e!1467146 () Bool)

(assert (=> d!677360 e!1467146))

(declare-fun res!979105 () Bool)

(assert (=> d!677360 (=> (not res!979105) (not e!1467146))))

(declare-fun lt!849520 () List!27352)

(declare-fun content!3658 (List!27352) (InoxSet C!13564))

(assert (=> d!677360 (= res!979105 (= (content!3658 lt!849520) ((_ map or) (content!3658 lt!849414) (content!3658 (_2!16039 lt!849411)))))))

(declare-fun e!1467147 () List!27352)

(assert (=> d!677360 (= lt!849520 e!1467147)))

(declare-fun c!363113 () Bool)

(assert (=> d!677360 (= c!363113 ((_ is Nil!27258) lt!849414))))

(assert (=> d!677360 (= (++!6661 lt!849414 (_2!16039 lt!849411)) lt!849520)))

(declare-fun b!2289767 () Bool)

(declare-fun res!979104 () Bool)

(assert (=> b!2289767 (=> (not res!979104) (not e!1467146))))

(assert (=> b!2289767 (= res!979104 (= (size!21455 lt!849520) (+ (size!21455 lt!849414) (size!21455 (_2!16039 lt!849411)))))))

(declare-fun b!2289766 () Bool)

(assert (=> b!2289766 (= e!1467147 (Cons!27258 (h!32659 lt!849414) (++!6661 (t!204476 lt!849414) (_2!16039 lt!849411))))))

(declare-fun b!2289768 () Bool)

(assert (=> b!2289768 (= e!1467146 (or (not (= (_2!16039 lt!849411) Nil!27258)) (= lt!849520 lt!849414)))))

(declare-fun b!2289765 () Bool)

(assert (=> b!2289765 (= e!1467147 (_2!16039 lt!849411))))

(assert (= (and d!677360 c!363113) b!2289765))

(assert (= (and d!677360 (not c!363113)) b!2289766))

(assert (= (and d!677360 res!979105) b!2289767))

(assert (= (and b!2289767 res!979104) b!2289768))

(declare-fun m!2717475 () Bool)

(assert (=> d!677360 m!2717475))

(declare-fun m!2717477 () Bool)

(assert (=> d!677360 m!2717477))

(declare-fun m!2717481 () Bool)

(assert (=> d!677360 m!2717481))

(declare-fun m!2717483 () Bool)

(assert (=> b!2289767 m!2717483))

(assert (=> b!2289767 m!2717139))

(declare-fun m!2717487 () Bool)

(assert (=> b!2289767 m!2717487))

(declare-fun m!2717489 () Bool)

(assert (=> b!2289766 m!2717489))

(assert (=> b!2289418 d!677360))

(declare-fun d!677362 () Bool)

(assert (=> d!677362 (= (_2!16039 lt!849411) lt!849418)))

(declare-fun lt!849525 () Unit!40146)

(declare-fun choose!13366 (List!27352 List!27352 List!27352 List!27352 List!27352) Unit!40146)

(assert (=> d!677362 (= lt!849525 (choose!13366 lt!849414 (_2!16039 lt!849411) lt!849414 lt!849418 input!1722))))

(assert (=> d!677362 (isPrefix!2351 lt!849414 input!1722)))

(assert (=> d!677362 (= (lemmaSamePrefixThenSameSuffix!1052 lt!849414 (_2!16039 lt!849411) lt!849414 lt!849418 input!1722) lt!849525)))

(declare-fun bs!457000 () Bool)

(assert (= bs!457000 d!677362))

(declare-fun m!2717507 () Bool)

(assert (=> bs!457000 m!2717507))

(assert (=> bs!457000 m!2717179))

(assert (=> b!2289418 d!677362))

(declare-fun d!677370 () Bool)

(declare-fun lt!849526 () BalanceConc!17468)

(assert (=> d!677370 (= (list!10668 lt!849526) (originalCharacters!5131 (h!32661 tokens!456)))))

(assert (=> d!677370 (= lt!849526 (dynLambda!11829 (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (value!138108 (h!32661 tokens!456))))))

(assert (=> d!677370 (= (charsOf!2749 (h!32661 tokens!456)) lt!849526)))

(declare-fun b_lambda!72923 () Bool)

(assert (=> (not b_lambda!72923) (not d!677370)))

(declare-fun t!204504 () Bool)

(declare-fun tb!136399 () Bool)

(assert (=> (and b!2289430 (= (toChars!6010 (transformation!4361 otherR!12)) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456))))) t!204504) tb!136399))

(declare-fun b!2289775 () Bool)

(declare-fun e!1467153 () Bool)

(declare-fun tp!725914 () Bool)

(assert (=> b!2289775 (= e!1467153 (and (inv!36860 (c!363056 (dynLambda!11829 (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (value!138108 (h!32661 tokens!456))))) tp!725914))))

(declare-fun result!166316 () Bool)

(assert (=> tb!136399 (= result!166316 (and (inv!36861 (dynLambda!11829 (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (value!138108 (h!32661 tokens!456)))) e!1467153))))

(assert (= tb!136399 b!2289775))

(declare-fun m!2717509 () Bool)

(assert (=> b!2289775 m!2717509))

(declare-fun m!2717511 () Bool)

(assert (=> tb!136399 m!2717511))

(assert (=> d!677370 t!204504))

(declare-fun b_and!181625 () Bool)

(assert (= b_and!181609 (and (=> t!204504 result!166316) b_and!181625)))

(declare-fun t!204506 () Bool)

(declare-fun tb!136401 () Bool)

(assert (=> (and b!2289410 (= (toChars!6010 (transformation!4361 (h!32660 rules!1750))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456))))) t!204506) tb!136401))

(declare-fun result!166318 () Bool)

(assert (= result!166318 result!166316))

(assert (=> d!677370 t!204506))

(declare-fun b_and!181627 () Bool)

(assert (= b_and!181611 (and (=> t!204506 result!166318) b_and!181627)))

(declare-fun tb!136403 () Bool)

(declare-fun t!204508 () Bool)

(assert (=> (and b!2289428 (= (toChars!6010 (transformation!4361 r!2363)) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456))))) t!204508) tb!136403))

(declare-fun result!166320 () Bool)

(assert (= result!166320 result!166316))

(assert (=> d!677370 t!204508))

(declare-fun b_and!181629 () Bool)

(assert (= b_and!181613 (and (=> t!204508 result!166320) b_and!181629)))

(declare-fun t!204510 () Bool)

(declare-fun tb!136405 () Bool)

(assert (=> (and b!2289434 (= (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456))))) t!204510) tb!136405))

(declare-fun result!166322 () Bool)

(assert (= result!166322 result!166316))

(assert (=> d!677370 t!204510))

(declare-fun b_and!181631 () Bool)

(assert (= b_and!181615 (and (=> t!204510 result!166322) b_and!181631)))

(declare-fun m!2717513 () Bool)

(assert (=> d!677370 m!2717513))

(declare-fun m!2717515 () Bool)

(assert (=> d!677370 m!2717515))

(assert (=> b!2289418 d!677370))

(declare-fun d!677372 () Bool)

(declare-fun lt!849530 () Int)

(assert (=> d!677372 (>= lt!849530 0)))

(declare-fun e!1467154 () Int)

(assert (=> d!677372 (= lt!849530 e!1467154)))

(declare-fun c!363114 () Bool)

(assert (=> d!677372 (= c!363114 ((_ is Nil!27258) lt!849414))))

(assert (=> d!677372 (= (size!21455 lt!849414) lt!849530)))

(declare-fun b!2289776 () Bool)

(assert (=> b!2289776 (= e!1467154 0)))

(declare-fun b!2289777 () Bool)

(assert (=> b!2289777 (= e!1467154 (+ 1 (size!21455 (t!204476 lt!849414))))))

(assert (= (and d!677372 c!363114) b!2289776))

(assert (= (and d!677372 (not c!363114)) b!2289777))

(declare-fun m!2717521 () Bool)

(assert (=> b!2289777 m!2717521))

(assert (=> b!2289418 d!677372))

(declare-fun d!677376 () Bool)

(declare-fun lt!849536 () List!27352)

(assert (=> d!677376 (= (++!6661 lt!849414 lt!849536) input!1722)))

(declare-fun e!1467158 () List!27352)

(assert (=> d!677376 (= lt!849536 e!1467158)))

(declare-fun c!363117 () Bool)

(assert (=> d!677376 (= c!363117 ((_ is Cons!27258) lt!849414))))

(assert (=> d!677376 (>= (size!21455 input!1722) (size!21455 lt!849414))))

(assert (=> d!677376 (= (getSuffix!1142 input!1722 lt!849414) lt!849536)))

(declare-fun b!2289783 () Bool)

(assert (=> b!2289783 (= e!1467158 (getSuffix!1142 (tail!3307 input!1722) (t!204476 lt!849414)))))

(declare-fun b!2289784 () Bool)

(assert (=> b!2289784 (= e!1467158 input!1722)))

(assert (= (and d!677376 c!363117) b!2289783))

(assert (= (and d!677376 (not c!363117)) b!2289784))

(declare-fun m!2717531 () Bool)

(assert (=> d!677376 m!2717531))

(assert (=> d!677376 m!2717401))

(assert (=> d!677376 m!2717139))

(declare-fun m!2717533 () Bool)

(assert (=> b!2289783 m!2717533))

(assert (=> b!2289783 m!2717533))

(declare-fun m!2717535 () Bool)

(assert (=> b!2289783 m!2717535))

(assert (=> b!2289418 d!677376))

(declare-fun d!677380 () Bool)

(assert (=> d!677380 (= (list!10668 (charsOf!2749 (h!32661 tokens!456))) (list!10672 (c!363056 (charsOf!2749 (h!32661 tokens!456)))))))

(declare-fun bs!457002 () Bool)

(assert (= bs!457002 d!677380))

(declare-fun m!2717537 () Bool)

(assert (=> bs!457002 m!2717537))

(assert (=> b!2289418 d!677380))

(declare-fun d!677382 () Bool)

(declare-fun res!979116 () Bool)

(declare-fun e!1467164 () Bool)

(assert (=> d!677382 (=> (not res!979116) (not e!1467164))))

(assert (=> d!677382 (= res!979116 (not (isEmpty!15519 (originalCharacters!5131 (h!32661 tokens!456)))))))

(assert (=> d!677382 (= (inv!36857 (h!32661 tokens!456)) e!1467164)))

(declare-fun b!2289795 () Bool)

(declare-fun res!979117 () Bool)

(assert (=> b!2289795 (=> (not res!979117) (not e!1467164))))

(assert (=> b!2289795 (= res!979117 (= (originalCharacters!5131 (h!32661 tokens!456)) (list!10668 (dynLambda!11829 (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (value!138108 (h!32661 tokens!456))))))))

(declare-fun b!2289796 () Bool)

(assert (=> b!2289796 (= e!1467164 (= (size!21454 (h!32661 tokens!456)) (size!21455 (originalCharacters!5131 (h!32661 tokens!456)))))))

(assert (= (and d!677382 res!979116) b!2289795))

(assert (= (and b!2289795 res!979117) b!2289796))

(declare-fun b_lambda!72927 () Bool)

(assert (=> (not b_lambda!72927) (not b!2289795)))

(assert (=> b!2289795 t!204504))

(declare-fun b_and!181641 () Bool)

(assert (= b_and!181625 (and (=> t!204504 result!166316) b_and!181641)))

(assert (=> b!2289795 t!204506))

(declare-fun b_and!181643 () Bool)

(assert (= b_and!181627 (and (=> t!204506 result!166318) b_and!181643)))

(assert (=> b!2289795 t!204508))

(declare-fun b_and!181645 () Bool)

(assert (= b_and!181629 (and (=> t!204508 result!166320) b_and!181645)))

(assert (=> b!2289795 t!204510))

(declare-fun b_and!181647 () Bool)

(assert (= b_and!181631 (and (=> t!204510 result!166322) b_and!181647)))

(declare-fun m!2717541 () Bool)

(assert (=> d!677382 m!2717541))

(assert (=> b!2289795 m!2717515))

(assert (=> b!2289795 m!2717515))

(declare-fun m!2717543 () Bool)

(assert (=> b!2289795 m!2717543))

(declare-fun m!2717545 () Bool)

(assert (=> b!2289796 m!2717545))

(assert (=> b!2289439 d!677382))

(declare-fun d!677386 () Bool)

(declare-fun res!979128 () Bool)

(declare-fun e!1467180 () Bool)

(assert (=> d!677386 (=> (not res!979128) (not e!1467180))))

(declare-fun rulesValid!1610 (LexerInterface!3958 List!27353) Bool)

(assert (=> d!677386 (= res!979128 (rulesValid!1610 thiss!16613 rules!1750))))

(assert (=> d!677386 (= (rulesInvariant!3460 thiss!16613 rules!1750) e!1467180)))

(declare-fun b!2289819 () Bool)

(declare-datatypes ((List!27356 0))(
  ( (Nil!27262) (Cons!27262 (h!32663 String!29719) (t!204552 List!27356)) )
))
(declare-fun noDuplicateTag!1608 (LexerInterface!3958 List!27353 List!27356) Bool)

(assert (=> b!2289819 (= e!1467180 (noDuplicateTag!1608 thiss!16613 rules!1750 Nil!27262))))

(assert (= (and d!677386 res!979128) b!2289819))

(declare-fun m!2717563 () Bool)

(assert (=> d!677386 m!2717563))

(declare-fun m!2717565 () Bool)

(assert (=> b!2289819 m!2717565))

(assert (=> b!2289440 d!677386))

(declare-fun d!677394 () Bool)

(declare-fun e!1467182 () Bool)

(assert (=> d!677394 e!1467182))

(declare-fun res!979129 () Bool)

(assert (=> d!677394 (=> res!979129 e!1467182)))

(declare-fun lt!849541 () Bool)

(assert (=> d!677394 (= res!979129 (not lt!849541))))

(declare-fun e!1467181 () Bool)

(assert (=> d!677394 (= lt!849541 e!1467181)))

(declare-fun res!979131 () Bool)

(assert (=> d!677394 (=> res!979131 e!1467181)))

(assert (=> d!677394 (= res!979131 ((_ is Nil!27258) otherP!12))))

(assert (=> d!677394 (= (isPrefix!2351 otherP!12 input!1722) lt!849541)))

(declare-fun b!2289820 () Bool)

(declare-fun e!1467183 () Bool)

(assert (=> b!2289820 (= e!1467181 e!1467183)))

(declare-fun res!979130 () Bool)

(assert (=> b!2289820 (=> (not res!979130) (not e!1467183))))

(assert (=> b!2289820 (= res!979130 (not ((_ is Nil!27258) input!1722)))))

(declare-fun b!2289823 () Bool)

(assert (=> b!2289823 (= e!1467182 (>= (size!21455 input!1722) (size!21455 otherP!12)))))

(declare-fun b!2289821 () Bool)

(declare-fun res!979132 () Bool)

(assert (=> b!2289821 (=> (not res!979132) (not e!1467183))))

(assert (=> b!2289821 (= res!979132 (= (head!4988 otherP!12) (head!4988 input!1722)))))

(declare-fun b!2289822 () Bool)

(assert (=> b!2289822 (= e!1467183 (isPrefix!2351 (tail!3307 otherP!12) (tail!3307 input!1722)))))

(assert (= (and d!677394 (not res!979131)) b!2289820))

(assert (= (and b!2289820 res!979130) b!2289821))

(assert (= (and b!2289821 res!979132) b!2289822))

(assert (= (and d!677394 (not res!979129)) b!2289823))

(assert (=> b!2289823 m!2717401))

(assert (=> b!2289823 m!2717115))

(declare-fun m!2717571 () Bool)

(assert (=> b!2289821 m!2717571))

(declare-fun m!2717573 () Bool)

(assert (=> b!2289821 m!2717573))

(declare-fun m!2717575 () Bool)

(assert (=> b!2289822 m!2717575))

(assert (=> b!2289822 m!2717533))

(assert (=> b!2289822 m!2717575))

(assert (=> b!2289822 m!2717533))

(declare-fun m!2717579 () Bool)

(assert (=> b!2289822 m!2717579))

(assert (=> b!2289429 d!677394))

(declare-fun d!677400 () Bool)

(assert (=> d!677400 (= (inv!36853 (tag!4851 r!2363)) (= (mod (str.len (value!138107 (tag!4851 r!2363))) 2) 0))))

(assert (=> b!2289435 d!677400))

(declare-fun d!677404 () Bool)

(declare-fun res!979133 () Bool)

(declare-fun e!1467184 () Bool)

(assert (=> d!677404 (=> (not res!979133) (not e!1467184))))

(assert (=> d!677404 (= res!979133 (semiInverseModEq!1766 (toChars!6010 (transformation!4361 r!2363)) (toValue!6151 (transformation!4361 r!2363))))))

(assert (=> d!677404 (= (inv!36856 (transformation!4361 r!2363)) e!1467184)))

(declare-fun b!2289824 () Bool)

(assert (=> b!2289824 (= e!1467184 (equivClasses!1685 (toChars!6010 (transformation!4361 r!2363)) (toValue!6151 (transformation!4361 r!2363))))))

(assert (= (and d!677404 res!979133) b!2289824))

(declare-fun m!2717581 () Bool)

(assert (=> d!677404 m!2717581))

(declare-fun m!2717583 () Bool)

(assert (=> b!2289824 m!2717583))

(assert (=> b!2289435 d!677404))

(declare-fun d!677406 () Bool)

(declare-fun dynLambda!11831 (Int BalanceConc!17468) TokenValue!4523)

(assert (=> d!677406 (= (apply!6633 (transformation!4361 r!2363) (seqFromList!3065 lt!849414)) (dynLambda!11831 (toValue!6151 (transformation!4361 r!2363)) (seqFromList!3065 lt!849414)))))

(declare-fun b_lambda!72931 () Bool)

(assert (=> (not b_lambda!72931) (not d!677406)))

(declare-fun t!204520 () Bool)

(declare-fun tb!136415 () Bool)

(assert (=> (and b!2289430 (= (toValue!6151 (transformation!4361 otherR!12)) (toValue!6151 (transformation!4361 r!2363))) t!204520) tb!136415))

(declare-fun result!166332 () Bool)

(assert (=> tb!136415 (= result!166332 (inv!21 (dynLambda!11831 (toValue!6151 (transformation!4361 r!2363)) (seqFromList!3065 lt!849414))))))

(declare-fun m!2717585 () Bool)

(assert (=> tb!136415 m!2717585))

(assert (=> d!677406 t!204520))

(declare-fun b_and!181657 () Bool)

(assert (= b_and!181585 (and (=> t!204520 result!166332) b_and!181657)))

(declare-fun tb!136417 () Bool)

(declare-fun t!204522 () Bool)

(assert (=> (and b!2289410 (= (toValue!6151 (transformation!4361 (h!32660 rules!1750))) (toValue!6151 (transformation!4361 r!2363))) t!204522) tb!136417))

(declare-fun result!166336 () Bool)

(assert (= result!166336 result!166332))

(assert (=> d!677406 t!204522))

(declare-fun b_and!181659 () Bool)

(assert (= b_and!181589 (and (=> t!204522 result!166336) b_and!181659)))

(declare-fun t!204524 () Bool)

(declare-fun tb!136419 () Bool)

(assert (=> (and b!2289428 (= (toValue!6151 (transformation!4361 r!2363)) (toValue!6151 (transformation!4361 r!2363))) t!204524) tb!136419))

(declare-fun result!166338 () Bool)

(assert (= result!166338 result!166332))

(assert (=> d!677406 t!204524))

(declare-fun b_and!181661 () Bool)

(assert (= b_and!181593 (and (=> t!204524 result!166338) b_and!181661)))

(declare-fun t!204526 () Bool)

(declare-fun tb!136421 () Bool)

(assert (=> (and b!2289434 (= (toValue!6151 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (toValue!6151 (transformation!4361 r!2363))) t!204526) tb!136421))

(declare-fun result!166340 () Bool)

(assert (= result!166340 result!166332))

(assert (=> d!677406 t!204526))

(declare-fun b_and!181663 () Bool)

(assert (= b_and!181597 (and (=> t!204526 result!166340) b_and!181663)))

(assert (=> d!677406 m!2717171))

(declare-fun m!2717589 () Bool)

(assert (=> d!677406 m!2717589))

(assert (=> b!2289425 d!677406))

(declare-fun d!677410 () Bool)

(assert (=> d!677410 (= (maxPrefixOneRule!1392 thiss!16613 r!2363 input!1722) (Some!5350 (tuple2!27059 (Token!8201 (apply!6633 (transformation!4361 r!2363) (seqFromList!3065 lt!849414)) r!2363 (size!21455 lt!849414) lt!849414) (_2!16039 lt!849411))))))

(declare-fun lt!849559 () Unit!40146)

(declare-fun choose!13369 (LexerInterface!3958 List!27353 List!27352 List!27352 List!27352 Rule!8522) Unit!40146)

(assert (=> d!677410 (= lt!849559 (choose!13369 thiss!16613 rules!1750 lt!849414 input!1722 (_2!16039 lt!849411) r!2363))))

(assert (=> d!677410 (not (isEmpty!15516 rules!1750))))

(assert (=> d!677410 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!585 thiss!16613 rules!1750 lt!849414 input!1722 (_2!16039 lt!849411) r!2363) lt!849559)))

(declare-fun bs!457007 () Bool)

(assert (= bs!457007 d!677410))

(assert (=> bs!457007 m!2717171))

(assert (=> bs!457007 m!2717175))

(assert (=> bs!457007 m!2717139))

(assert (=> bs!457007 m!2717129))

(assert (=> bs!457007 m!2717171))

(assert (=> bs!457007 m!2717173))

(declare-fun m!2717625 () Bool)

(assert (=> bs!457007 m!2717625))

(assert (=> b!2289425 d!677410))

(declare-fun d!677424 () Bool)

(assert (=> d!677424 (= (seqFromList!3065 lt!849414) (fromListB!1376 lt!849414))))

(declare-fun bs!457008 () Bool)

(assert (= bs!457008 d!677424))

(declare-fun m!2717627 () Bool)

(assert (=> bs!457008 m!2717627))

(assert (=> b!2289425 d!677424))

(declare-fun d!677426 () Bool)

(declare-fun e!1467208 () Bool)

(assert (=> d!677426 e!1467208))

(declare-fun res!979148 () Bool)

(assert (=> d!677426 (=> res!979148 e!1467208)))

(declare-fun lt!849560 () Bool)

(assert (=> d!677426 (= res!979148 (not lt!849560))))

(declare-fun e!1467207 () Bool)

(assert (=> d!677426 (= lt!849560 e!1467207)))

(declare-fun res!979150 () Bool)

(assert (=> d!677426 (=> res!979150 e!1467207)))

(assert (=> d!677426 (= res!979150 ((_ is Nil!27258) lt!849414))))

(assert (=> d!677426 (= (isPrefix!2351 lt!849414 input!1722) lt!849560)))

(declare-fun b!2289865 () Bool)

(declare-fun e!1467209 () Bool)

(assert (=> b!2289865 (= e!1467207 e!1467209)))

(declare-fun res!979149 () Bool)

(assert (=> b!2289865 (=> (not res!979149) (not e!1467209))))

(assert (=> b!2289865 (= res!979149 (not ((_ is Nil!27258) input!1722)))))

(declare-fun b!2289868 () Bool)

(assert (=> b!2289868 (= e!1467208 (>= (size!21455 input!1722) (size!21455 lt!849414)))))

(declare-fun b!2289866 () Bool)

(declare-fun res!979151 () Bool)

(assert (=> b!2289866 (=> (not res!979151) (not e!1467209))))

(assert (=> b!2289866 (= res!979151 (= (head!4988 lt!849414) (head!4988 input!1722)))))

(declare-fun b!2289867 () Bool)

(assert (=> b!2289867 (= e!1467209 (isPrefix!2351 (tail!3307 lt!849414) (tail!3307 input!1722)))))

(assert (= (and d!677426 (not res!979150)) b!2289865))

(assert (= (and b!2289865 res!979149) b!2289866))

(assert (= (and b!2289866 res!979151) b!2289867))

(assert (= (and d!677426 (not res!979148)) b!2289868))

(assert (=> b!2289868 m!2717401))

(assert (=> b!2289868 m!2717139))

(assert (=> b!2289866 m!2717429))

(assert (=> b!2289866 m!2717573))

(assert (=> b!2289867 m!2717433))

(assert (=> b!2289867 m!2717533))

(assert (=> b!2289867 m!2717433))

(assert (=> b!2289867 m!2717533))

(declare-fun m!2717629 () Bool)

(assert (=> b!2289867 m!2717629))

(assert (=> b!2289425 d!677426))

(declare-fun b!2289942 () Bool)

(declare-fun e!1467260 () Option!5351)

(declare-datatypes ((tuple2!27066 0))(
  ( (tuple2!27067 (_1!16043 List!27352) (_2!16043 List!27352)) )
))
(declare-fun lt!849572 () tuple2!27066)

(assert (=> b!2289942 (= e!1467260 (Some!5350 (tuple2!27059 (Token!8201 (apply!6633 (transformation!4361 r!2363) (seqFromList!3065 (_1!16043 lt!849572))) r!2363 (size!21456 (seqFromList!3065 (_1!16043 lt!849572))) (_1!16043 lt!849572)) (_2!16043 lt!849572))))))

(declare-fun lt!849575 () Unit!40146)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!692 (Regex!6709 List!27352) Unit!40146)

(assert (=> b!2289942 (= lt!849575 (longestMatchIsAcceptedByMatchOrIsEmpty!692 (regex!4361 r!2363) input!1722))))

(declare-fun res!979167 () Bool)

(declare-fun findLongestMatchInner!719 (Regex!6709 List!27352 Int List!27352 List!27352 Int) tuple2!27066)

(assert (=> b!2289942 (= res!979167 (isEmpty!15519 (_1!16043 (findLongestMatchInner!719 (regex!4361 r!2363) Nil!27258 (size!21455 Nil!27258) input!1722 input!1722 (size!21455 input!1722)))))))

(declare-fun e!1467258 () Bool)

(assert (=> b!2289942 (=> res!979167 e!1467258)))

(assert (=> b!2289942 e!1467258))

(declare-fun lt!849571 () Unit!40146)

(assert (=> b!2289942 (= lt!849571 lt!849575)))

(declare-fun lt!849574 () Unit!40146)

(declare-fun lemmaSemiInverse!1060 (TokenValueInjection!8586 BalanceConc!17468) Unit!40146)

(assert (=> b!2289942 (= lt!849574 (lemmaSemiInverse!1060 (transformation!4361 r!2363) (seqFromList!3065 (_1!16043 lt!849572))))))

(declare-fun d!677428 () Bool)

(declare-fun e!1467259 () Bool)

(assert (=> d!677428 e!1467259))

(declare-fun res!979170 () Bool)

(assert (=> d!677428 (=> res!979170 e!1467259)))

(declare-fun lt!849573 () Option!5351)

(assert (=> d!677428 (= res!979170 (isEmpty!15522 lt!849573))))

(assert (=> d!677428 (= lt!849573 e!1467260)))

(declare-fun c!363139 () Bool)

(assert (=> d!677428 (= c!363139 (isEmpty!15519 (_1!16043 lt!849572)))))

(declare-fun findLongestMatch!648 (Regex!6709 List!27352) tuple2!27066)

(assert (=> d!677428 (= lt!849572 (findLongestMatch!648 (regex!4361 r!2363) input!1722))))

(assert (=> d!677428 (ruleValid!1451 thiss!16613 r!2363)))

(assert (=> d!677428 (= (maxPrefixOneRule!1392 thiss!16613 r!2363 input!1722) lt!849573)))

(declare-fun b!2289943 () Bool)

(assert (=> b!2289943 (= e!1467258 (matchR!2966 (regex!4361 r!2363) (_1!16043 (findLongestMatchInner!719 (regex!4361 r!2363) Nil!27258 (size!21455 Nil!27258) input!1722 input!1722 (size!21455 input!1722)))))))

(declare-fun b!2289944 () Bool)

(declare-fun e!1467261 () Bool)

(assert (=> b!2289944 (= e!1467259 e!1467261)))

(declare-fun res!979168 () Bool)

(assert (=> b!2289944 (=> (not res!979168) (not e!1467261))))

(assert (=> b!2289944 (= res!979168 (matchR!2966 (regex!4361 r!2363) (list!10668 (charsOf!2749 (_1!16039 (get!8221 lt!849573))))))))

(declare-fun b!2289945 () Bool)

(assert (=> b!2289945 (= e!1467261 (= (size!21454 (_1!16039 (get!8221 lt!849573))) (size!21455 (originalCharacters!5131 (_1!16039 (get!8221 lt!849573))))))))

(declare-fun b!2289946 () Bool)

(assert (=> b!2289946 (= e!1467260 None!5350)))

(declare-fun b!2289947 () Bool)

(declare-fun res!979172 () Bool)

(assert (=> b!2289947 (=> (not res!979172) (not e!1467261))))

(assert (=> b!2289947 (= res!979172 (= (rule!6693 (_1!16039 (get!8221 lt!849573))) r!2363))))

(declare-fun b!2289948 () Bool)

(declare-fun res!979169 () Bool)

(assert (=> b!2289948 (=> (not res!979169) (not e!1467261))))

(assert (=> b!2289948 (= res!979169 (= (++!6661 (list!10668 (charsOf!2749 (_1!16039 (get!8221 lt!849573)))) (_2!16039 (get!8221 lt!849573))) input!1722))))

(declare-fun b!2289949 () Bool)

(declare-fun res!979166 () Bool)

(assert (=> b!2289949 (=> (not res!979166) (not e!1467261))))

(assert (=> b!2289949 (= res!979166 (= (value!138108 (_1!16039 (get!8221 lt!849573))) (apply!6633 (transformation!4361 (rule!6693 (_1!16039 (get!8221 lt!849573)))) (seqFromList!3065 (originalCharacters!5131 (_1!16039 (get!8221 lt!849573)))))))))

(declare-fun b!2289950 () Bool)

(declare-fun res!979171 () Bool)

(assert (=> b!2289950 (=> (not res!979171) (not e!1467261))))

(assert (=> b!2289950 (= res!979171 (< (size!21455 (_2!16039 (get!8221 lt!849573))) (size!21455 input!1722)))))

(assert (= (and d!677428 c!363139) b!2289946))

(assert (= (and d!677428 (not c!363139)) b!2289942))

(assert (= (and b!2289942 (not res!979167)) b!2289943))

(assert (= (and d!677428 (not res!979170)) b!2289944))

(assert (= (and b!2289944 res!979168) b!2289948))

(assert (= (and b!2289948 res!979169) b!2289950))

(assert (= (and b!2289950 res!979171) b!2289947))

(assert (= (and b!2289947 res!979172) b!2289949))

(assert (= (and b!2289949 res!979166) b!2289945))

(declare-fun m!2717643 () Bool)

(assert (=> b!2289948 m!2717643))

(declare-fun m!2717645 () Bool)

(assert (=> b!2289948 m!2717645))

(assert (=> b!2289948 m!2717645))

(declare-fun m!2717647 () Bool)

(assert (=> b!2289948 m!2717647))

(assert (=> b!2289948 m!2717647))

(declare-fun m!2717649 () Bool)

(assert (=> b!2289948 m!2717649))

(assert (=> b!2289949 m!2717643))

(declare-fun m!2717651 () Bool)

(assert (=> b!2289949 m!2717651))

(assert (=> b!2289949 m!2717651))

(declare-fun m!2717653 () Bool)

(assert (=> b!2289949 m!2717653))

(declare-fun m!2717655 () Bool)

(assert (=> b!2289943 m!2717655))

(assert (=> b!2289943 m!2717401))

(assert (=> b!2289943 m!2717655))

(assert (=> b!2289943 m!2717401))

(declare-fun m!2717657 () Bool)

(assert (=> b!2289943 m!2717657))

(declare-fun m!2717659 () Bool)

(assert (=> b!2289943 m!2717659))

(declare-fun m!2717661 () Bool)

(assert (=> d!677428 m!2717661))

(declare-fun m!2717663 () Bool)

(assert (=> d!677428 m!2717663))

(declare-fun m!2717665 () Bool)

(assert (=> d!677428 m!2717665))

(assert (=> d!677428 m!2717159))

(assert (=> b!2289947 m!2717643))

(assert (=> b!2289945 m!2717643))

(declare-fun m!2717667 () Bool)

(assert (=> b!2289945 m!2717667))

(assert (=> b!2289950 m!2717643))

(declare-fun m!2717669 () Bool)

(assert (=> b!2289950 m!2717669))

(assert (=> b!2289950 m!2717401))

(assert (=> b!2289944 m!2717643))

(assert (=> b!2289944 m!2717645))

(assert (=> b!2289944 m!2717645))

(assert (=> b!2289944 m!2717647))

(assert (=> b!2289944 m!2717647))

(declare-fun m!2717671 () Bool)

(assert (=> b!2289944 m!2717671))

(assert (=> b!2289942 m!2717655))

(declare-fun m!2717673 () Bool)

(assert (=> b!2289942 m!2717673))

(declare-fun m!2717675 () Bool)

(assert (=> b!2289942 m!2717675))

(declare-fun m!2717677 () Bool)

(assert (=> b!2289942 m!2717677))

(declare-fun m!2717679 () Bool)

(assert (=> b!2289942 m!2717679))

(assert (=> b!2289942 m!2717673))

(declare-fun m!2717681 () Bool)

(assert (=> b!2289942 m!2717681))

(assert (=> b!2289942 m!2717401))

(assert (=> b!2289942 m!2717673))

(declare-fun m!2717683 () Bool)

(assert (=> b!2289942 m!2717683))

(assert (=> b!2289942 m!2717655))

(assert (=> b!2289942 m!2717401))

(assert (=> b!2289942 m!2717657))

(assert (=> b!2289942 m!2717673))

(assert (=> b!2289425 d!677428))

(declare-fun d!677430 () Bool)

(assert (=> d!677430 (= (isEmpty!15515 tokens!456) ((_ is Nil!27260) tokens!456))))

(assert (=> b!2289426 d!677430))

(declare-fun d!677432 () Bool)

(assert (=> d!677432 (= (inv!36853 (tag!4851 (h!32660 rules!1750))) (= (mod (str.len (value!138107 (tag!4851 (h!32660 rules!1750)))) 2) 0))))

(assert (=> b!2289415 d!677432))

(declare-fun d!677434 () Bool)

(declare-fun res!979173 () Bool)

(declare-fun e!1467262 () Bool)

(assert (=> d!677434 (=> (not res!979173) (not e!1467262))))

(assert (=> d!677434 (= res!979173 (semiInverseModEq!1766 (toChars!6010 (transformation!4361 (h!32660 rules!1750))) (toValue!6151 (transformation!4361 (h!32660 rules!1750)))))))

(assert (=> d!677434 (= (inv!36856 (transformation!4361 (h!32660 rules!1750))) e!1467262)))

(declare-fun b!2289951 () Bool)

(assert (=> b!2289951 (= e!1467262 (equivClasses!1685 (toChars!6010 (transformation!4361 (h!32660 rules!1750))) (toValue!6151 (transformation!4361 (h!32660 rules!1750)))))))

(assert (= (and d!677434 res!979173) b!2289951))

(declare-fun m!2717685 () Bool)

(assert (=> d!677434 m!2717685))

(declare-fun m!2717687 () Bool)

(assert (=> b!2289951 m!2717687))

(assert (=> b!2289415 d!677434))

(declare-fun d!677436 () Bool)

(assert (=> d!677436 (= (inv!36853 (tag!4851 otherR!12)) (= (mod (str.len (value!138107 (tag!4851 otherR!12))) 2) 0))))

(assert (=> b!2289416 d!677436))

(declare-fun d!677438 () Bool)

(declare-fun res!979174 () Bool)

(declare-fun e!1467263 () Bool)

(assert (=> d!677438 (=> (not res!979174) (not e!1467263))))

(assert (=> d!677438 (= res!979174 (semiInverseModEq!1766 (toChars!6010 (transformation!4361 otherR!12)) (toValue!6151 (transformation!4361 otherR!12))))))

(assert (=> d!677438 (= (inv!36856 (transformation!4361 otherR!12)) e!1467263)))

(declare-fun b!2289952 () Bool)

(assert (=> b!2289952 (= e!1467263 (equivClasses!1685 (toChars!6010 (transformation!4361 otherR!12)) (toValue!6151 (transformation!4361 otherR!12))))))

(assert (= (and d!677438 res!979174) b!2289952))

(declare-fun m!2717689 () Bool)

(assert (=> d!677438 m!2717689))

(declare-fun m!2717691 () Bool)

(assert (=> b!2289952 m!2717691))

(assert (=> b!2289416 d!677438))

(declare-fun d!677440 () Bool)

(declare-fun lt!849578 () Int)

(assert (=> d!677440 (= lt!849578 (size!21455 (list!10668 (charsOf!2749 (head!4986 tokens!456)))))))

(declare-fun size!21460 (Conc!8870) Int)

(assert (=> d!677440 (= lt!849578 (size!21460 (c!363056 (charsOf!2749 (head!4986 tokens!456)))))))

(assert (=> d!677440 (= (size!21456 (charsOf!2749 (head!4986 tokens!456))) lt!849578)))

(declare-fun bs!457009 () Bool)

(assert (= bs!457009 d!677440))

(assert (=> bs!457009 m!2717103))

(assert (=> bs!457009 m!2717105))

(assert (=> bs!457009 m!2717105))

(declare-fun m!2717693 () Bool)

(assert (=> bs!457009 m!2717693))

(declare-fun m!2717695 () Bool)

(assert (=> bs!457009 m!2717695))

(assert (=> b!2289437 d!677440))

(assert (=> b!2289437 d!677272))

(assert (=> b!2289437 d!677282))

(assert (=> b!2289437 d!677358))

(declare-fun d!677442 () Bool)

(declare-fun lt!849579 () Bool)

(assert (=> d!677442 (= lt!849579 (select (content!3657 rules!1750) otherR!12))))

(declare-fun e!1467265 () Bool)

(assert (=> d!677442 (= lt!849579 e!1467265)))

(declare-fun res!979175 () Bool)

(assert (=> d!677442 (=> (not res!979175) (not e!1467265))))

(assert (=> d!677442 (= res!979175 ((_ is Cons!27259) rules!1750))))

(assert (=> d!677442 (= (contains!4737 rules!1750 otherR!12) lt!849579)))

(declare-fun b!2289953 () Bool)

(declare-fun e!1467264 () Bool)

(assert (=> b!2289953 (= e!1467265 e!1467264)))

(declare-fun res!979176 () Bool)

(assert (=> b!2289953 (=> res!979176 e!1467264)))

(assert (=> b!2289953 (= res!979176 (= (h!32660 rules!1750) otherR!12))))

(declare-fun b!2289954 () Bool)

(assert (=> b!2289954 (= e!1467264 (contains!4737 (t!204477 rules!1750) otherR!12))))

(assert (= (and d!677442 res!979175) b!2289953))

(assert (= (and b!2289953 (not res!979176)) b!2289954))

(assert (=> d!677442 m!2717255))

(declare-fun m!2717697 () Bool)

(assert (=> d!677442 m!2717697))

(declare-fun m!2717699 () Bool)

(assert (=> b!2289954 m!2717699))

(assert (=> b!2289411 d!677442))

(declare-fun b!2289955 () Bool)

(declare-fun e!1467272 () Bool)

(assert (=> b!2289955 (= e!1467272 (= (head!4988 lt!849414) (c!363057 (regex!4361 r!2363))))))

(declare-fun b!2289956 () Bool)

(declare-fun res!979177 () Bool)

(declare-fun e!1467270 () Bool)

(assert (=> b!2289956 (=> res!979177 e!1467270)))

(assert (=> b!2289956 (= res!979177 (not (isEmpty!15519 (tail!3307 lt!849414))))))

(declare-fun b!2289957 () Bool)

(declare-fun e!1467269 () Bool)

(assert (=> b!2289957 (= e!1467269 (matchR!2966 (derivativeStep!1524 (regex!4361 r!2363) (head!4988 lt!849414)) (tail!3307 lt!849414)))))

(declare-fun b!2289958 () Bool)

(declare-fun res!979180 () Bool)

(assert (=> b!2289958 (=> (not res!979180) (not e!1467272))))

(assert (=> b!2289958 (= res!979180 (isEmpty!15519 (tail!3307 lt!849414)))))

(declare-fun b!2289959 () Bool)

(declare-fun res!979184 () Bool)

(declare-fun e!1467266 () Bool)

(assert (=> b!2289959 (=> res!979184 e!1467266)))

(assert (=> b!2289959 (= res!979184 e!1467272)))

(declare-fun res!979178 () Bool)

(assert (=> b!2289959 (=> (not res!979178) (not e!1467272))))

(declare-fun lt!849580 () Bool)

(assert (=> b!2289959 (= res!979178 lt!849580)))

(declare-fun b!2289960 () Bool)

(declare-fun e!1467268 () Bool)

(declare-fun call!136634 () Bool)

(assert (=> b!2289960 (= e!1467268 (= lt!849580 call!136634))))

(declare-fun b!2289961 () Bool)

(declare-fun res!979183 () Bool)

(assert (=> b!2289961 (=> res!979183 e!1467266)))

(assert (=> b!2289961 (= res!979183 (not ((_ is ElementMatch!6709) (regex!4361 r!2363))))))

(declare-fun e!1467267 () Bool)

(assert (=> b!2289961 (= e!1467267 e!1467266)))

(declare-fun b!2289963 () Bool)

(declare-fun e!1467271 () Bool)

(assert (=> b!2289963 (= e!1467266 e!1467271)))

(declare-fun res!979181 () Bool)

(assert (=> b!2289963 (=> (not res!979181) (not e!1467271))))

(assert (=> b!2289963 (= res!979181 (not lt!849580))))

(declare-fun b!2289964 () Bool)

(assert (=> b!2289964 (= e!1467271 e!1467270)))

(declare-fun res!979179 () Bool)

(assert (=> b!2289964 (=> res!979179 e!1467270)))

(assert (=> b!2289964 (= res!979179 call!136634)))

(declare-fun b!2289965 () Bool)

(assert (=> b!2289965 (= e!1467269 (nullable!1864 (regex!4361 r!2363)))))

(declare-fun b!2289966 () Bool)

(assert (=> b!2289966 (= e!1467270 (not (= (head!4988 lt!849414) (c!363057 (regex!4361 r!2363)))))))

(declare-fun b!2289967 () Bool)

(declare-fun res!979182 () Bool)

(assert (=> b!2289967 (=> (not res!979182) (not e!1467272))))

(assert (=> b!2289967 (= res!979182 (not call!136634))))

(declare-fun d!677444 () Bool)

(assert (=> d!677444 e!1467268))

(declare-fun c!363141 () Bool)

(assert (=> d!677444 (= c!363141 ((_ is EmptyExpr!6709) (regex!4361 r!2363)))))

(assert (=> d!677444 (= lt!849580 e!1467269)))

(declare-fun c!363142 () Bool)

(assert (=> d!677444 (= c!363142 (isEmpty!15519 lt!849414))))

(assert (=> d!677444 (validRegex!2526 (regex!4361 r!2363))))

(assert (=> d!677444 (= (matchR!2966 (regex!4361 r!2363) lt!849414) lt!849580)))

(declare-fun b!2289962 () Bool)

(assert (=> b!2289962 (= e!1467267 (not lt!849580))))

(declare-fun bm!136629 () Bool)

(assert (=> bm!136629 (= call!136634 (isEmpty!15519 lt!849414))))

(declare-fun b!2289968 () Bool)

(assert (=> b!2289968 (= e!1467268 e!1467267)))

(declare-fun c!363140 () Bool)

(assert (=> b!2289968 (= c!363140 ((_ is EmptyLang!6709) (regex!4361 r!2363)))))

(assert (= (and d!677444 c!363142) b!2289965))

(assert (= (and d!677444 (not c!363142)) b!2289957))

(assert (= (and d!677444 c!363141) b!2289960))

(assert (= (and d!677444 (not c!363141)) b!2289968))

(assert (= (and b!2289968 c!363140) b!2289962))

(assert (= (and b!2289968 (not c!363140)) b!2289961))

(assert (= (and b!2289961 (not res!979183)) b!2289959))

(assert (= (and b!2289959 res!979178) b!2289967))

(assert (= (and b!2289967 res!979182) b!2289958))

(assert (= (and b!2289958 res!979180) b!2289955))

(assert (= (and b!2289959 (not res!979184)) b!2289963))

(assert (= (and b!2289963 res!979181) b!2289964))

(assert (= (and b!2289964 (not res!979179)) b!2289956))

(assert (= (and b!2289956 (not res!979177)) b!2289966))

(assert (= (or b!2289960 b!2289964 b!2289967) bm!136629))

(declare-fun m!2717701 () Bool)

(assert (=> bm!136629 m!2717701))

(assert (=> b!2289956 m!2717433))

(assert (=> b!2289956 m!2717433))

(declare-fun m!2717703 () Bool)

(assert (=> b!2289956 m!2717703))

(assert (=> b!2289958 m!2717433))

(assert (=> b!2289958 m!2717433))

(assert (=> b!2289958 m!2717703))

(assert (=> b!2289955 m!2717429))

(assert (=> b!2289965 m!2717189))

(assert (=> b!2289957 m!2717429))

(assert (=> b!2289957 m!2717429))

(declare-fun m!2717705 () Bool)

(assert (=> b!2289957 m!2717705))

(assert (=> b!2289957 m!2717433))

(assert (=> b!2289957 m!2717705))

(assert (=> b!2289957 m!2717433))

(declare-fun m!2717707 () Bool)

(assert (=> b!2289957 m!2717707))

(assert (=> d!677444 m!2717701))

(assert (=> d!677444 m!2717187))

(assert (=> b!2289966 m!2717429))

(assert (=> b!2289412 d!677444))

(declare-fun d!677446 () Bool)

(assert (=> d!677446 (= (isEmpty!15516 rules!1750) ((_ is Nil!27259) rules!1750))))

(assert (=> b!2289433 d!677446))

(declare-fun b!2289979 () Bool)

(declare-fun e!1467280 () Bool)

(declare-fun inv!17 (TokenValue!4523) Bool)

(assert (=> b!2289979 (= e!1467280 (inv!17 (value!138108 (h!32661 tokens!456))))))

(declare-fun b!2289980 () Bool)

(declare-fun res!979187 () Bool)

(declare-fun e!1467279 () Bool)

(assert (=> b!2289980 (=> res!979187 e!1467279)))

(assert (=> b!2289980 (= res!979187 (not ((_ is IntegerValue!13571) (value!138108 (h!32661 tokens!456)))))))

(assert (=> b!2289980 (= e!1467280 e!1467279)))

(declare-fun b!2289981 () Bool)

(declare-fun e!1467281 () Bool)

(assert (=> b!2289981 (= e!1467281 e!1467280)))

(declare-fun c!363147 () Bool)

(assert (=> b!2289981 (= c!363147 ((_ is IntegerValue!13570) (value!138108 (h!32661 tokens!456))))))

(declare-fun d!677448 () Bool)

(declare-fun c!363148 () Bool)

(assert (=> d!677448 (= c!363148 ((_ is IntegerValue!13569) (value!138108 (h!32661 tokens!456))))))

(assert (=> d!677448 (= (inv!21 (value!138108 (h!32661 tokens!456))) e!1467281)))

(declare-fun b!2289982 () Bool)

(declare-fun inv!15 (TokenValue!4523) Bool)

(assert (=> b!2289982 (= e!1467279 (inv!15 (value!138108 (h!32661 tokens!456))))))

(declare-fun b!2289983 () Bool)

(declare-fun inv!16 (TokenValue!4523) Bool)

(assert (=> b!2289983 (= e!1467281 (inv!16 (value!138108 (h!32661 tokens!456))))))

(assert (= (and d!677448 c!363148) b!2289983))

(assert (= (and d!677448 (not c!363148)) b!2289981))

(assert (= (and b!2289981 c!363147) b!2289979))

(assert (= (and b!2289981 (not c!363147)) b!2289980))

(assert (= (and b!2289980 (not res!979187)) b!2289982))

(declare-fun m!2717709 () Bool)

(assert (=> b!2289979 m!2717709))

(declare-fun m!2717711 () Bool)

(assert (=> b!2289982 m!2717711))

(declare-fun m!2717713 () Bool)

(assert (=> b!2289983 m!2717713))

(assert (=> b!2289423 d!677448))

(declare-fun b!2289988 () Bool)

(declare-fun e!1467284 () Bool)

(declare-fun tp!725981 () Bool)

(assert (=> b!2289988 (= e!1467284 (and tp_is_empty!10639 tp!725981))))

(assert (=> b!2289420 (= tp!725907 e!1467284)))

(assert (= (and b!2289420 ((_ is Cons!27258) (t!204476 otherP!12))) b!2289988))

(declare-fun b!2290000 () Bool)

(declare-fun e!1467287 () Bool)

(declare-fun tp!725996 () Bool)

(declare-fun tp!725992 () Bool)

(assert (=> b!2290000 (= e!1467287 (and tp!725996 tp!725992))))

(assert (=> b!2289438 (= tp!725897 e!1467287)))

(declare-fun b!2290001 () Bool)

(declare-fun tp!725995 () Bool)

(assert (=> b!2290001 (= e!1467287 tp!725995)))

(declare-fun b!2289999 () Bool)

(assert (=> b!2289999 (= e!1467287 tp_is_empty!10639)))

(declare-fun b!2290002 () Bool)

(declare-fun tp!725993 () Bool)

(declare-fun tp!725994 () Bool)

(assert (=> b!2290002 (= e!1467287 (and tp!725993 tp!725994))))

(assert (= (and b!2289438 ((_ is ElementMatch!6709) (regex!4361 (rule!6693 (h!32661 tokens!456))))) b!2289999))

(assert (= (and b!2289438 ((_ is Concat!11233) (regex!4361 (rule!6693 (h!32661 tokens!456))))) b!2290000))

(assert (= (and b!2289438 ((_ is Star!6709) (regex!4361 (rule!6693 (h!32661 tokens!456))))) b!2290001))

(assert (= (and b!2289438 ((_ is Union!6709) (regex!4361 (rule!6693 (h!32661 tokens!456))))) b!2290002))

(declare-fun b!2290016 () Bool)

(declare-fun b_free!68773 () Bool)

(declare-fun b_next!69477 () Bool)

(assert (=> b!2290016 (= b_free!68773 (not b_next!69477))))

(declare-fun tb!136435 () Bool)

(declare-fun t!204541 () Bool)

(assert (=> (and b!2290016 (= (toValue!6151 (transformation!4361 (rule!6693 (h!32661 (t!204478 tokens!456))))) (toValue!6151 (transformation!4361 r!2363))) t!204541) tb!136435))

(declare-fun result!166368 () Bool)

(assert (= result!166368 result!166332))

(assert (=> d!677406 t!204541))

(declare-fun tp!726008 () Bool)

(declare-fun b_and!181673 () Bool)

(assert (=> b!2290016 (= tp!726008 (and (=> t!204541 result!166368) b_and!181673))))

(declare-fun b_free!68775 () Bool)

(declare-fun b_next!69479 () Bool)

(assert (=> b!2290016 (= b_free!68775 (not b_next!69479))))

(declare-fun t!204543 () Bool)

(declare-fun tb!136437 () Bool)

(assert (=> (and b!2290016 (= (toChars!6010 (transformation!4361 (rule!6693 (h!32661 (t!204478 tokens!456))))) (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456))))) t!204543) tb!136437))

(declare-fun result!166370 () Bool)

(assert (= result!166370 result!166296))

(assert (=> d!677272 t!204543))

(declare-fun t!204545 () Bool)

(declare-fun tb!136439 () Bool)

(assert (=> (and b!2290016 (= (toChars!6010 (transformation!4361 (rule!6693 (h!32661 (t!204478 tokens!456))))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456))))) t!204545) tb!136439))

(declare-fun result!166372 () Bool)

(assert (= result!166372 result!166316))

(assert (=> d!677370 t!204545))

(assert (=> b!2289795 t!204545))

(declare-fun b_and!181675 () Bool)

(declare-fun tp!726010 () Bool)

(assert (=> b!2290016 (= tp!726010 (and (=> t!204543 result!166370) (=> t!204545 result!166372) b_and!181675))))

(declare-fun b!2290013 () Bool)

(declare-fun tp!726011 () Bool)

(declare-fun e!1467302 () Bool)

(declare-fun e!1467300 () Bool)

(assert (=> b!2290013 (= e!1467300 (and (inv!36857 (h!32661 (t!204478 tokens!456))) e!1467302 tp!726011))))

(declare-fun tp!726007 () Bool)

(declare-fun b!2290014 () Bool)

(declare-fun e!1467303 () Bool)

(assert (=> b!2290014 (= e!1467302 (and (inv!21 (value!138108 (h!32661 (t!204478 tokens!456)))) e!1467303 tp!726007))))

(assert (=> b!2289439 (= tp!725902 e!1467300)))

(declare-fun b!2290015 () Bool)

(declare-fun e!1467305 () Bool)

(declare-fun tp!726009 () Bool)

(assert (=> b!2290015 (= e!1467303 (and tp!726009 (inv!36853 (tag!4851 (rule!6693 (h!32661 (t!204478 tokens!456))))) (inv!36856 (transformation!4361 (rule!6693 (h!32661 (t!204478 tokens!456))))) e!1467305))))

(assert (=> b!2290016 (= e!1467305 (and tp!726008 tp!726010))))

(assert (= b!2290015 b!2290016))

(assert (= b!2290014 b!2290015))

(assert (= b!2290013 b!2290014))

(assert (= (and b!2289439 ((_ is Cons!27260) (t!204478 tokens!456))) b!2290013))

(declare-fun m!2717715 () Bool)

(assert (=> b!2290013 m!2717715))

(declare-fun m!2717717 () Bool)

(assert (=> b!2290014 m!2717717))

(declare-fun m!2717719 () Bool)

(assert (=> b!2290015 m!2717719))

(declare-fun m!2717721 () Bool)

(assert (=> b!2290015 m!2717721))

(declare-fun b!2290018 () Bool)

(declare-fun e!1467306 () Bool)

(declare-fun tp!726016 () Bool)

(declare-fun tp!726012 () Bool)

(assert (=> b!2290018 (= e!1467306 (and tp!726016 tp!726012))))

(assert (=> b!2289435 (= tp!725905 e!1467306)))

(declare-fun b!2290019 () Bool)

(declare-fun tp!726015 () Bool)

(assert (=> b!2290019 (= e!1467306 tp!726015)))

(declare-fun b!2290017 () Bool)

(assert (=> b!2290017 (= e!1467306 tp_is_empty!10639)))

(declare-fun b!2290020 () Bool)

(declare-fun tp!726013 () Bool)

(declare-fun tp!726014 () Bool)

(assert (=> b!2290020 (= e!1467306 (and tp!726013 tp!726014))))

(assert (= (and b!2289435 ((_ is ElementMatch!6709) (regex!4361 r!2363))) b!2290017))

(assert (= (and b!2289435 ((_ is Concat!11233) (regex!4361 r!2363))) b!2290018))

(assert (= (and b!2289435 ((_ is Star!6709) (regex!4361 r!2363))) b!2290019))

(assert (= (and b!2289435 ((_ is Union!6709) (regex!4361 r!2363))) b!2290020))

(declare-fun b!2290021 () Bool)

(declare-fun e!1467307 () Bool)

(declare-fun tp!726017 () Bool)

(assert (=> b!2290021 (= e!1467307 (and tp_is_empty!10639 tp!726017))))

(assert (=> b!2289436 (= tp!725899 e!1467307)))

(assert (= (and b!2289436 ((_ is Cons!27258) (t!204476 suffix!886))) b!2290021))

(declare-fun b!2290023 () Bool)

(declare-fun e!1467308 () Bool)

(declare-fun tp!726022 () Bool)

(declare-fun tp!726018 () Bool)

(assert (=> b!2290023 (= e!1467308 (and tp!726022 tp!726018))))

(assert (=> b!2289415 (= tp!725893 e!1467308)))

(declare-fun b!2290024 () Bool)

(declare-fun tp!726021 () Bool)

(assert (=> b!2290024 (= e!1467308 tp!726021)))

(declare-fun b!2290022 () Bool)

(assert (=> b!2290022 (= e!1467308 tp_is_empty!10639)))

(declare-fun b!2290025 () Bool)

(declare-fun tp!726019 () Bool)

(declare-fun tp!726020 () Bool)

(assert (=> b!2290025 (= e!1467308 (and tp!726019 tp!726020))))

(assert (= (and b!2289415 ((_ is ElementMatch!6709) (regex!4361 (h!32660 rules!1750)))) b!2290022))

(assert (= (and b!2289415 ((_ is Concat!11233) (regex!4361 (h!32660 rules!1750)))) b!2290023))

(assert (= (and b!2289415 ((_ is Star!6709) (regex!4361 (h!32660 rules!1750)))) b!2290024))

(assert (= (and b!2289415 ((_ is Union!6709) (regex!4361 (h!32660 rules!1750)))) b!2290025))

(declare-fun b!2290027 () Bool)

(declare-fun e!1467309 () Bool)

(declare-fun tp!726027 () Bool)

(declare-fun tp!726023 () Bool)

(assert (=> b!2290027 (= e!1467309 (and tp!726027 tp!726023))))

(assert (=> b!2289416 (= tp!725892 e!1467309)))

(declare-fun b!2290028 () Bool)

(declare-fun tp!726026 () Bool)

(assert (=> b!2290028 (= e!1467309 tp!726026)))

(declare-fun b!2290026 () Bool)

(assert (=> b!2290026 (= e!1467309 tp_is_empty!10639)))

(declare-fun b!2290029 () Bool)

(declare-fun tp!726024 () Bool)

(declare-fun tp!726025 () Bool)

(assert (=> b!2290029 (= e!1467309 (and tp!726024 tp!726025))))

(assert (= (and b!2289416 ((_ is ElementMatch!6709) (regex!4361 otherR!12))) b!2290026))

(assert (= (and b!2289416 ((_ is Concat!11233) (regex!4361 otherR!12))) b!2290027))

(assert (= (and b!2289416 ((_ is Star!6709) (regex!4361 otherR!12))) b!2290028))

(assert (= (and b!2289416 ((_ is Union!6709) (regex!4361 otherR!12))) b!2290029))

(declare-fun b!2290040 () Bool)

(declare-fun b_free!68777 () Bool)

(declare-fun b_next!69481 () Bool)

(assert (=> b!2290040 (= b_free!68777 (not b_next!69481))))

(declare-fun t!204547 () Bool)

(declare-fun tb!136441 () Bool)

(assert (=> (and b!2290040 (= (toValue!6151 (transformation!4361 (h!32660 (t!204477 rules!1750)))) (toValue!6151 (transformation!4361 r!2363))) t!204547) tb!136441))

(declare-fun result!166376 () Bool)

(assert (= result!166376 result!166332))

(assert (=> d!677406 t!204547))

(declare-fun b_and!181677 () Bool)

(declare-fun tp!726037 () Bool)

(assert (=> b!2290040 (= tp!726037 (and (=> t!204547 result!166376) b_and!181677))))

(declare-fun b_free!68779 () Bool)

(declare-fun b_next!69483 () Bool)

(assert (=> b!2290040 (= b_free!68779 (not b_next!69483))))

(declare-fun t!204549 () Bool)

(declare-fun tb!136443 () Bool)

(assert (=> (and b!2290040 (= (toChars!6010 (transformation!4361 (h!32660 (t!204477 rules!1750)))) (toChars!6010 (transformation!4361 (rule!6693 (head!4986 tokens!456))))) t!204549) tb!136443))

(declare-fun result!166378 () Bool)

(assert (= result!166378 result!166296))

(assert (=> d!677272 t!204549))

(declare-fun t!204551 () Bool)

(declare-fun tb!136445 () Bool)

(assert (=> (and b!2290040 (= (toChars!6010 (transformation!4361 (h!32660 (t!204477 rules!1750)))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456))))) t!204551) tb!136445))

(declare-fun result!166380 () Bool)

(assert (= result!166380 result!166316))

(assert (=> d!677370 t!204551))

(assert (=> b!2289795 t!204551))

(declare-fun tp!726039 () Bool)

(declare-fun b_and!181679 () Bool)

(assert (=> b!2290040 (= tp!726039 (and (=> t!204549 result!166378) (=> t!204551 result!166380) b_and!181679))))

(declare-fun e!1467321 () Bool)

(assert (=> b!2290040 (= e!1467321 (and tp!726037 tp!726039))))

(declare-fun b!2290039 () Bool)

(declare-fun tp!726038 () Bool)

(declare-fun e!1467318 () Bool)

(assert (=> b!2290039 (= e!1467318 (and tp!726038 (inv!36853 (tag!4851 (h!32660 (t!204477 rules!1750)))) (inv!36856 (transformation!4361 (h!32660 (t!204477 rules!1750)))) e!1467321))))

(declare-fun b!2290038 () Bool)

(declare-fun e!1467319 () Bool)

(declare-fun tp!726036 () Bool)

(assert (=> b!2290038 (= e!1467319 (and e!1467318 tp!726036))))

(assert (=> b!2289422 (= tp!725891 e!1467319)))

(assert (= b!2290039 b!2290040))

(assert (= b!2290038 b!2290039))

(assert (= (and b!2289422 ((_ is Cons!27259) (t!204477 rules!1750))) b!2290038))

(declare-fun m!2717723 () Bool)

(assert (=> b!2290039 m!2717723))

(declare-fun m!2717725 () Bool)

(assert (=> b!2290039 m!2717725))

(declare-fun b!2290041 () Bool)

(declare-fun e!1467322 () Bool)

(declare-fun tp!726040 () Bool)

(assert (=> b!2290041 (= e!1467322 (and tp_is_empty!10639 tp!726040))))

(assert (=> b!2289423 (= tp!725890 e!1467322)))

(assert (= (and b!2289423 ((_ is Cons!27258) (originalCharacters!5131 (h!32661 tokens!456)))) b!2290041))

(declare-fun b!2290042 () Bool)

(declare-fun e!1467323 () Bool)

(declare-fun tp!726041 () Bool)

(assert (=> b!2290042 (= e!1467323 (and tp_is_empty!10639 tp!726041))))

(assert (=> b!2289424 (= tp!725906 e!1467323)))

(assert (= (and b!2289424 ((_ is Cons!27258) (t!204476 input!1722))) b!2290042))

(declare-fun b_lambda!72939 () Bool)

(assert (= b_lambda!72931 (or (and b!2289430 b_free!68749 (= (toValue!6151 (transformation!4361 otherR!12)) (toValue!6151 (transformation!4361 r!2363)))) (and b!2290040 b_free!68777 (= (toValue!6151 (transformation!4361 (h!32660 (t!204477 rules!1750)))) (toValue!6151 (transformation!4361 r!2363)))) (and b!2290016 b_free!68773 (= (toValue!6151 (transformation!4361 (rule!6693 (h!32661 (t!204478 tokens!456))))) (toValue!6151 (transformation!4361 r!2363)))) (and b!2289434 b_free!68761 (= (toValue!6151 (transformation!4361 (rule!6693 (h!32661 tokens!456)))) (toValue!6151 (transformation!4361 r!2363)))) (and b!2289410 b_free!68753 (= (toValue!6151 (transformation!4361 (h!32660 rules!1750))) (toValue!6151 (transformation!4361 r!2363)))) (and b!2289428 b_free!68757) b_lambda!72939)))

(declare-fun b_lambda!72941 () Bool)

(assert (= b_lambda!72923 (or (and b!2289434 b_free!68763) (and b!2290016 b_free!68775 (= (toChars!6010 (transformation!4361 (rule!6693 (h!32661 (t!204478 tokens!456))))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) (and b!2290040 b_free!68779 (= (toChars!6010 (transformation!4361 (h!32660 (t!204477 rules!1750)))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) (and b!2289428 b_free!68759 (= (toChars!6010 (transformation!4361 r!2363)) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) (and b!2289430 b_free!68751 (= (toChars!6010 (transformation!4361 otherR!12)) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) (and b!2289410 b_free!68755 (= (toChars!6010 (transformation!4361 (h!32660 rules!1750))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) b_lambda!72941)))

(declare-fun b_lambda!72943 () Bool)

(assert (= b_lambda!72927 (or (and b!2289434 b_free!68763) (and b!2290016 b_free!68775 (= (toChars!6010 (transformation!4361 (rule!6693 (h!32661 (t!204478 tokens!456))))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) (and b!2290040 b_free!68779 (= (toChars!6010 (transformation!4361 (h!32660 (t!204477 rules!1750)))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) (and b!2289428 b_free!68759 (= (toChars!6010 (transformation!4361 r!2363)) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) (and b!2289430 b_free!68751 (= (toChars!6010 (transformation!4361 otherR!12)) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) (and b!2289410 b_free!68755 (= (toChars!6010 (transformation!4361 (h!32660 rules!1750))) (toChars!6010 (transformation!4361 (rule!6693 (h!32661 tokens!456)))))) b_lambda!72943)))

(check-sat (not b!2289950) (not b!2289741) b_and!181645 (not b!2290015) (not b_next!69463) (not b!2289666) b_and!181661 (not b!2289515) (not b_next!69479) (not d!677292) b_and!181673 (not b!2289949) (not b!2289571) (not b!2289867) (not b!2289660) (not b!2290019) (not b!2289823) b_and!181675 (not b!2289507) (not d!677440) (not d!677376) (not b!2290039) (not tb!136415) (not d!677386) (not b!2289822) (not b_next!69455) b_and!181659 (not b!2289740) (not b!2289506) b_and!181663 (not d!677352) (not b!2290023) (not b!2289705) (not b!2290001) (not b!2289659) (not b_next!69465) (not b!2289783) (not b!2290027) b_and!181677 (not b!2290029) (not b!2289951) (not b!2290002) (not b!2290038) (not d!677434) (not d!677348) (not b_lambda!72939) (not b!2289819) (not b!2290024) b_and!181643 (not b!2289982) (not b_next!69483) b_and!181657 (not b!2290025) (not b!2289709) (not b!2289663) (not d!677428) (not b_next!69459) (not d!677332) (not b!2290018) (not b!2289505) (not b!2289942) (not b_next!69467) (not b!2289821) (not b_next!69453) (not b!2289662) (not d!677272) (not b!2289775) (not b!2289683) (not d!677306) (not b!2289554) (not b!2289943) (not b!2289954) (not d!677346) (not b!2290013) (not b!2290042) (not b!2289447) (not d!677302) (not d!677262) (not d!677284) b_and!181679 (not b!2290021) (not b_next!69481) (not b!2289958) (not b!2289703) (not b!2289708) (not b!2289796) (not b_lambda!72919) (not bm!136629) (not d!677382) (not b!2289739) (not b!2289516) (not d!677258) (not d!677444) (not d!677342) (not b!2290014) (not b!2289706) (not d!677438) (not d!677410) (not b!2290000) (not b!2289767) (not b!2289824) (not b!2289944) (not b!2289956) (not bm!136627) (not b!2289957) (not b!2289868) (not d!677370) b_and!181647 (not b!2290041) (not b!2290020) (not b!2289681) (not d!677260) (not b!2289965) (not b!2289952) (not d!677362) (not b!2289710) (not d!677380) (not d!677356) (not b!2289948) b_and!181641 (not b!2289945) (not d!677424) (not d!677344) (not b!2289747) (not b!2289677) (not b_lambda!72943) (not d!677268) (not b!2289979) (not b!2289508) (not b!2289955) (not d!677360) (not b!2289947) (not b_next!69477) (not b!2289988) (not bm!136620) (not b!2290028) (not b!2289966) (not b_lambda!72941) (not b_next!69457) (not d!677404) (not d!677336) (not b!2289866) (not b!2289983) (not tb!136383) (not b!2289766) (not b_next!69461) (not d!677442) (not b!2289704) (not b!2289795) (not b!2289711) (not tb!136399) tp_is_empty!10639 (not b!2289777))
(check-sat b_and!181645 b_and!181675 b_and!181663 (not b_next!69465) b_and!181677 (not b_next!69459) b_and!181647 b_and!181641 (not b_next!69477) (not b_next!69457) (not b_next!69461) (not b_next!69463) b_and!181661 (not b_next!69479) b_and!181673 (not b_next!69455) b_and!181659 b_and!181657 b_and!181643 (not b_next!69483) (not b_next!69467) (not b_next!69453) b_and!181679 (not b_next!69481))
