; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!514016 () Bool)

(assert start!514016)

(declare-fun b!4904796 () Bool)

(declare-fun b_free!131899 () Bool)

(declare-fun b_next!132689 () Bool)

(assert (=> b!4904796 (= b_free!131899 (not b_next!132689))))

(declare-fun tp!1379877 () Bool)

(declare-fun b_and!346331 () Bool)

(assert (=> b!4904796 (= tp!1379877 b_and!346331)))

(declare-fun b_free!131901 () Bool)

(declare-fun b_next!132691 () Bool)

(assert (=> b!4904796 (= b_free!131901 (not b_next!132691))))

(declare-fun tp!1379878 () Bool)

(declare-fun b_and!346333 () Bool)

(assert (=> b!4904796 (= tp!1379878 b_and!346333)))

(declare-fun b!4904805 () Bool)

(declare-fun e!3066046 () Bool)

(assert (=> b!4904805 (= e!3066046 true)))

(declare-fun b!4904804 () Bool)

(declare-fun e!3066045 () Bool)

(assert (=> b!4904804 (= e!3066045 e!3066046)))

(declare-fun b!4904797 () Bool)

(assert (=> b!4904797 e!3066045))

(assert (= b!4904804 b!4904805))

(assert (= b!4904797 b!4904804))

(declare-fun order!25747 () Int)

(declare-fun order!25745 () Int)

(declare-fun lambda!244466 () Int)

(declare-datatypes ((C!26812 0))(
  ( (C!26813 (val!22740 Int)) )
))
(declare-datatypes ((Regex!13307 0))(
  ( (ElementMatch!13307 (c!833613 C!26812)) (Concat!21849 (regOne!27126 Regex!13307) (regTwo!27126 Regex!13307)) (EmptyExpr!13307) (Star!13307 (reg!13636 Regex!13307)) (EmptyLang!13307) (Union!13307 (regOne!27127 Regex!13307) (regTwo!27127 Regex!13307)) )
))
(declare-datatypes ((String!64151 0))(
  ( (String!64152 (value!263718 String)) )
))
(declare-datatypes ((List!56662 0))(
  ( (Nil!56538) (Cons!56538 (h!62986 (_ BitVec 16)) (t!366794 List!56662)) )
))
(declare-datatypes ((TokenValue!8542 0))(
  ( (FloatLiteralValue!17084 (text!60239 List!56662)) (TokenValueExt!8541 (__x!34377 Int)) (Broken!42710 (value!263719 List!56662)) (Object!8665) (End!8542) (Def!8542) (Underscore!8542) (Match!8542) (Else!8542) (Error!8542) (Case!8542) (If!8542) (Extends!8542) (Abstract!8542) (Class!8542) (Val!8542) (DelimiterValue!17084 (del!8602 List!56662)) (KeywordValue!8548 (value!263720 List!56662)) (CommentValue!17084 (value!263721 List!56662)) (WhitespaceValue!17084 (value!263722 List!56662)) (IndentationValue!8542 (value!263723 List!56662)) (String!64153) (Int32!8542) (Broken!42711 (value!263724 List!56662)) (Boolean!8543) (Unit!146694) (OperatorValue!8545 (op!8602 List!56662)) (IdentifierValue!17084 (value!263725 List!56662)) (IdentifierValue!17085 (value!263726 List!56662)) (WhitespaceValue!17085 (value!263727 List!56662)) (True!17084) (False!17084) (Broken!42712 (value!263728 List!56662)) (Broken!42713 (value!263729 List!56662)) (True!17085) (RightBrace!8542) (RightBracket!8542) (Colon!8542) (Null!8542) (Comma!8542) (LeftBracket!8542) (False!17085) (LeftBrace!8542) (ImaginaryLiteralValue!8542 (text!60240 List!56662)) (StringLiteralValue!25626 (value!263730 List!56662)) (EOFValue!8542 (value!263731 List!56662)) (IdentValue!8542 (value!263732 List!56662)) (DelimiterValue!17085 (value!263733 List!56662)) (DedentValue!8542 (value!263734 List!56662)) (NewLineValue!8542 (value!263735 List!56662)) (IntegerValue!25626 (value!263736 (_ BitVec 32)) (text!60241 List!56662)) (IntegerValue!25627 (value!263737 Int) (text!60242 List!56662)) (Times!8542) (Or!8542) (Equal!8542) (Minus!8542) (Broken!42714 (value!263738 List!56662)) (And!8542) (Div!8542) (LessEqual!8542) (Mod!8542) (Concat!21850) (Not!8542) (Plus!8542) (SpaceValue!8542 (value!263739 List!56662)) (IntegerValue!25628 (value!263740 Int) (text!60243 List!56662)) (StringLiteralValue!25627 (text!60244 List!56662)) (FloatLiteralValue!17085 (text!60245 List!56662)) (BytesLiteralValue!8542 (value!263741 List!56662)) (CommentValue!17085 (value!263742 List!56662)) (StringLiteralValue!25628 (value!263743 List!56662)) (ErrorTokenValue!8542 (msg!8603 List!56662)) )
))
(declare-datatypes ((List!56663 0))(
  ( (Nil!56539) (Cons!56539 (h!62987 C!26812) (t!366795 List!56663)) )
))
(declare-datatypes ((IArray!29661 0))(
  ( (IArray!29662 (innerList!14888 List!56663)) )
))
(declare-datatypes ((Conc!14800 0))(
  ( (Node!14800 (left!41158 Conc!14800) (right!41488 Conc!14800) (csize!29830 Int) (cheight!15011 Int)) (Leaf!24633 (xs!18116 IArray!29661) (csize!29831 Int)) (Empty!14800) )
))
(declare-datatypes ((BalanceConc!29030 0))(
  ( (BalanceConc!29031 (c!833614 Conc!14800)) )
))
(declare-datatypes ((TokenValueInjection!16392 0))(
  ( (TokenValueInjection!16393 (toValue!11151 Int) (toChars!11010 Int)) )
))
(declare-datatypes ((Rule!16264 0))(
  ( (Rule!16265 (regex!8232 Regex!13307) (tag!9096 String!64151) (isSeparator!8232 Bool) (transformation!8232 TokenValueInjection!16392)) )
))
(declare-fun rule!164 () Rule!16264)

(declare-fun dynLambda!22812 (Int Int) Int)

(declare-fun dynLambda!22813 (Int Int) Int)

(assert (=> b!4904805 (< (dynLambda!22812 order!25745 (toValue!11151 (transformation!8232 rule!164))) (dynLambda!22813 order!25747 lambda!244466))))

(declare-fun order!25749 () Int)

(declare-fun dynLambda!22814 (Int Int) Int)

(assert (=> b!4904805 (< (dynLambda!22814 order!25749 (toChars!11010 (transformation!8232 rule!164))) (dynLambda!22813 order!25747 lambda!244466))))

(declare-fun b!4904788 () Bool)

(declare-fun e!3066039 () Bool)

(declare-datatypes ((tuple2!60788 0))(
  ( (tuple2!60789 (_1!33697 List!56663) (_2!33697 List!56663)) )
))
(declare-fun lt!2012082 () tuple2!60788)

(declare-fun matchR!6574 (Regex!13307 List!56663) Bool)

(assert (=> b!4904788 (= e!3066039 (matchR!6574 (regex!8232 rule!164) (_1!33697 lt!2012082)))))

(declare-fun b!4904789 () Bool)

(declare-fun e!3066033 () Bool)

(declare-fun e!3066038 () Bool)

(assert (=> b!4904789 (= e!3066033 e!3066038)))

(declare-fun res!2095136 () Bool)

(assert (=> b!4904789 (=> res!2095136 e!3066038)))

(declare-datatypes ((LexerInterface!7824 0))(
  ( (LexerInterfaceExt!7821 (__x!34378 Int)) (Lexer!7822) )
))
(declare-fun thiss!15943 () LexerInterface!7824)

(declare-fun lt!2012083 () Bool)

(declare-fun lt!2012081 () List!56663)

(declare-datatypes ((Token!14992 0))(
  ( (Token!14993 (value!263744 TokenValue!8542) (rule!11430 Rule!16264) (size!37270 Int) (originalCharacters!8527 List!56663)) )
))
(declare-datatypes ((tuple2!60790 0))(
  ( (tuple2!60791 (_1!33698 Token!14992) (_2!33698 List!56663)) )
))
(declare-datatypes ((Option!14101 0))(
  ( (None!14100) (Some!14100 (v!50062 tuple2!60790)) )
))
(declare-fun isDefined!11110 (Option!14101) Bool)

(declare-fun maxPrefixOneRule!3569 (LexerInterface!7824 Rule!16264 List!56663) Option!14101)

(assert (=> b!4904789 (= res!2095136 (not (= lt!2012083 (isDefined!11110 (maxPrefixOneRule!3569 thiss!15943 rule!164 lt!2012081)))))))

(declare-fun lt!2012078 () List!56663)

(declare-datatypes ((tuple2!60792 0))(
  ( (tuple2!60793 (_1!33699 BalanceConc!29030) (_2!33699 BalanceConc!29030)) )
))
(declare-fun lt!2012076 () tuple2!60792)

(declare-datatypes ((tuple2!60794 0))(
  ( (tuple2!60795 (_1!33700 Token!14992) (_2!33700 BalanceConc!29030)) )
))
(declare-datatypes ((Option!14102 0))(
  ( (None!14101) (Some!14101 (v!50063 tuple2!60794)) )
))
(declare-fun isDefined!11111 (Option!14102) Bool)

(declare-fun apply!13576 (TokenValueInjection!16392 BalanceConc!29030) TokenValue!8542)

(declare-fun size!37271 (BalanceConc!29030) Int)

(assert (=> b!4904789 (= lt!2012083 (isDefined!11111 (Some!14101 (tuple2!60795 (Token!14993 (apply!13576 (transformation!8232 rule!164) (_1!33699 lt!2012076)) rule!164 (size!37271 (_1!33699 lt!2012076)) lt!2012078) (_2!33699 lt!2012076)))))))

(declare-datatypes ((Unit!146695 0))(
  ( (Unit!146696) )
))
(declare-fun lt!2012077 () Unit!146695)

(declare-fun ForallOf!1169 (Int BalanceConc!29030) Unit!146695)

(declare-fun seqFromList!5974 (List!56663) BalanceConc!29030)

(assert (=> b!4904789 (= lt!2012077 (ForallOf!1169 lambda!244466 (seqFromList!5974 lt!2012078)))))

(declare-fun list!17810 (BalanceConc!29030) List!56663)

(assert (=> b!4904789 (= lt!2012078 (list!17810 (_1!33699 lt!2012076)))))

(declare-fun lt!2012075 () Unit!146695)

(assert (=> b!4904789 (= lt!2012075 (ForallOf!1169 lambda!244466 (_1!33699 lt!2012076)))))

(declare-fun b!4904790 () Bool)

(assert (=> b!4904790 (= e!3066038 lt!2012083)))

(declare-fun b!4904791 () Bool)

(declare-fun e!3066032 () Bool)

(declare-fun e!3066035 () Bool)

(assert (=> b!4904791 (= e!3066032 e!3066035)))

(declare-fun res!2095133 () Bool)

(assert (=> b!4904791 (=> (not res!2095133) (not e!3066035))))

(declare-fun isEmpty!30409 (BalanceConc!29030) Bool)

(assert (=> b!4904791 (= res!2095133 (not (isEmpty!30409 (_1!33699 lt!2012076))))))

(declare-fun input!1509 () BalanceConc!29030)

(declare-fun findLongestMatchWithZipperSequence!320 (Regex!13307 BalanceConc!29030) tuple2!60792)

(assert (=> b!4904791 (= lt!2012076 (findLongestMatchWithZipperSequence!320 (regex!8232 rule!164) input!1509))))

(declare-fun b!4904792 () Bool)

(declare-fun res!2095137 () Bool)

(assert (=> b!4904792 (=> (not res!2095137) (not e!3066032))))

(declare-fun ruleValid!3729 (LexerInterface!7824 Rule!16264) Bool)

(assert (=> b!4904792 (= res!2095137 (ruleValid!3729 thiss!15943 rule!164))))

(declare-fun b!4904793 () Bool)

(declare-fun e!3066036 () Bool)

(declare-fun tp!1379879 () Bool)

(declare-fun inv!72993 (Conc!14800) Bool)

(assert (=> b!4904793 (= e!3066036 (and (inv!72993 (c!833614 input!1509)) tp!1379879))))

(declare-fun b!4904794 () Bool)

(declare-fun tp!1379876 () Bool)

(declare-fun e!3066034 () Bool)

(declare-fun e!3066037 () Bool)

(declare-fun inv!72989 (String!64151) Bool)

(declare-fun inv!72994 (TokenValueInjection!16392) Bool)

(assert (=> b!4904794 (= e!3066037 (and tp!1379876 (inv!72989 (tag!9096 rule!164)) (inv!72994 (transformation!8232 rule!164)) e!3066034))))

(declare-fun b!4904795 () Bool)

(assert (=> b!4904795 (= e!3066035 (not e!3066033))))

(declare-fun res!2095134 () Bool)

(assert (=> b!4904795 (=> res!2095134 e!3066033)))

(declare-fun semiInverseModEq!3633 (Int Int) Bool)

(assert (=> b!4904795 (= res!2095134 (not (semiInverseModEq!3633 (toChars!11010 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164)))))))

(declare-fun lt!2012079 () Unit!146695)

(declare-fun lemmaInv!1278 (TokenValueInjection!16392) Unit!146695)

(assert (=> b!4904795 (= lt!2012079 (lemmaInv!1278 (transformation!8232 rule!164)))))

(assert (=> b!4904795 e!3066039))

(declare-fun res!2095135 () Bool)

(assert (=> b!4904795 (=> res!2095135 e!3066039)))

(declare-fun isEmpty!30410 (List!56663) Bool)

(assert (=> b!4904795 (= res!2095135 (isEmpty!30410 (_1!33697 lt!2012082)))))

(declare-fun findLongestMatchInner!1795 (Regex!13307 List!56663 Int List!56663 List!56663 Int) tuple2!60788)

(declare-fun size!37272 (List!56663) Int)

(assert (=> b!4904795 (= lt!2012082 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))

(declare-fun lt!2012080 () Unit!146695)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1758 (Regex!13307 List!56663) Unit!146695)

(assert (=> b!4904795 (= lt!2012080 (longestMatchIsAcceptedByMatchOrIsEmpty!1758 (regex!8232 rule!164) lt!2012081))))

(assert (=> b!4904795 (= lt!2012081 (list!17810 input!1509))))

(declare-fun res!2095138 () Bool)

(assert (=> start!514016 (=> (not res!2095138) (not e!3066032))))

(get-info :version)

(assert (=> start!514016 (= res!2095138 ((_ is Lexer!7822) thiss!15943))))

(assert (=> start!514016 e!3066032))

(assert (=> start!514016 true))

(assert (=> start!514016 e!3066037))

(declare-fun inv!72995 (BalanceConc!29030) Bool)

(assert (=> start!514016 (and (inv!72995 input!1509) e!3066036)))

(assert (=> b!4904796 (= e!3066034 (and tp!1379877 tp!1379878))))

(declare-fun res!2095132 () Bool)

(assert (=> b!4904797 (=> res!2095132 e!3066033)))

(declare-fun Forall!1729 (Int) Bool)

(assert (=> b!4904797 (= res!2095132 (not (Forall!1729 lambda!244466)))))

(assert (= (and start!514016 res!2095138) b!4904792))

(assert (= (and b!4904792 res!2095137) b!4904791))

(assert (= (and b!4904791 res!2095133) b!4904795))

(assert (= (and b!4904795 (not res!2095135)) b!4904788))

(assert (= (and b!4904795 (not res!2095134)) b!4904797))

(assert (= (and b!4904797 (not res!2095132)) b!4904789))

(assert (= (and b!4904789 (not res!2095136)) b!4904790))

(assert (= b!4904794 b!4904796))

(assert (= start!514016 b!4904794))

(assert (= start!514016 b!4904793))

(declare-fun m!5913898 () Bool)

(assert (=> b!4904791 m!5913898))

(declare-fun m!5913900 () Bool)

(assert (=> b!4904791 m!5913900))

(declare-fun m!5913902 () Bool)

(assert (=> b!4904797 m!5913902))

(declare-fun m!5913904 () Bool)

(assert (=> b!4904789 m!5913904))

(declare-fun m!5913906 () Bool)

(assert (=> b!4904789 m!5913906))

(declare-fun m!5913908 () Bool)

(assert (=> b!4904789 m!5913908))

(declare-fun m!5913910 () Bool)

(assert (=> b!4904789 m!5913910))

(declare-fun m!5913912 () Bool)

(assert (=> b!4904789 m!5913912))

(declare-fun m!5913914 () Bool)

(assert (=> b!4904789 m!5913914))

(declare-fun m!5913916 () Bool)

(assert (=> b!4904789 m!5913916))

(assert (=> b!4904789 m!5913904))

(declare-fun m!5913918 () Bool)

(assert (=> b!4904789 m!5913918))

(assert (=> b!4904789 m!5913912))

(declare-fun m!5913920 () Bool)

(assert (=> b!4904789 m!5913920))

(declare-fun m!5913922 () Bool)

(assert (=> b!4904788 m!5913922))

(declare-fun m!5913924 () Bool)

(assert (=> b!4904792 m!5913924))

(declare-fun m!5913926 () Bool)

(assert (=> start!514016 m!5913926))

(declare-fun m!5913928 () Bool)

(assert (=> b!4904795 m!5913928))

(declare-fun m!5913930 () Bool)

(assert (=> b!4904795 m!5913930))

(declare-fun m!5913932 () Bool)

(assert (=> b!4904795 m!5913932))

(assert (=> b!4904795 m!5913930))

(declare-fun m!5913934 () Bool)

(assert (=> b!4904795 m!5913934))

(declare-fun m!5913936 () Bool)

(assert (=> b!4904795 m!5913936))

(declare-fun m!5913938 () Bool)

(assert (=> b!4904795 m!5913938))

(assert (=> b!4904795 m!5913934))

(declare-fun m!5913940 () Bool)

(assert (=> b!4904795 m!5913940))

(declare-fun m!5913942 () Bool)

(assert (=> b!4904795 m!5913942))

(declare-fun m!5913944 () Bool)

(assert (=> b!4904793 m!5913944))

(declare-fun m!5913946 () Bool)

(assert (=> b!4904794 m!5913946))

(declare-fun m!5913948 () Bool)

(assert (=> b!4904794 m!5913948))

(check-sat (not b_next!132689) (not b_next!132691) (not b!4904792) (not b!4904789) (not b!4904788) b_and!346331 (not b!4904791) (not b!4904794) (not b!4904795) (not b!4904793) b_and!346333 (not start!514016) (not b!4904797))
(check-sat b_and!346333 b_and!346331 (not b_next!132691) (not b_next!132689))
(get-model)

(declare-fun b!4904879 () Bool)

(declare-fun res!2095191 () Bool)

(declare-fun e!3066087 () Bool)

(assert (=> b!4904879 (=> res!2095191 e!3066087)))

(declare-fun e!3066085 () Bool)

(assert (=> b!4904879 (= res!2095191 e!3066085)))

(declare-fun res!2095187 () Bool)

(assert (=> b!4904879 (=> (not res!2095187) (not e!3066085))))

(declare-fun lt!2012089 () Bool)

(assert (=> b!4904879 (= res!2095187 lt!2012089)))

(declare-fun b!4904880 () Bool)

(declare-fun e!3066090 () Bool)

(declare-fun nullable!4573 (Regex!13307) Bool)

(assert (=> b!4904880 (= e!3066090 (nullable!4573 (regex!8232 rule!164)))))

(declare-fun b!4904881 () Bool)

(declare-fun e!3066089 () Bool)

(declare-fun e!3066088 () Bool)

(assert (=> b!4904881 (= e!3066089 e!3066088)))

(declare-fun c!833631 () Bool)

(assert (=> b!4904881 (= c!833631 ((_ is EmptyLang!13307) (regex!8232 rule!164)))))

(declare-fun b!4904882 () Bool)

(declare-fun head!10474 (List!56663) C!26812)

(assert (=> b!4904882 (= e!3066085 (= (head!10474 (_1!33697 lt!2012082)) (c!833613 (regex!8232 rule!164))))))

(declare-fun b!4904884 () Bool)

(declare-fun e!3066091 () Bool)

(assert (=> b!4904884 (= e!3066091 (not (= (head!10474 (_1!33697 lt!2012082)) (c!833613 (regex!8232 rule!164)))))))

(declare-fun b!4904885 () Bool)

(declare-fun call!340316 () Bool)

(assert (=> b!4904885 (= e!3066089 (= lt!2012089 call!340316))))

(declare-fun b!4904886 () Bool)

(assert (=> b!4904886 (= e!3066088 (not lt!2012089))))

(declare-fun b!4904887 () Bool)

(declare-fun res!2095188 () Bool)

(assert (=> b!4904887 (=> res!2095188 e!3066087)))

(assert (=> b!4904887 (= res!2095188 (not ((_ is ElementMatch!13307) (regex!8232 rule!164))))))

(assert (=> b!4904887 (= e!3066088 e!3066087)))

(declare-fun bm!340311 () Bool)

(assert (=> bm!340311 (= call!340316 (isEmpty!30410 (_1!33697 lt!2012082)))))

(declare-fun b!4904888 () Bool)

(declare-fun res!2095192 () Bool)

(assert (=> b!4904888 (=> (not res!2095192) (not e!3066085))))

(declare-fun tail!9621 (List!56663) List!56663)

(assert (=> b!4904888 (= res!2095192 (isEmpty!30410 (tail!9621 (_1!33697 lt!2012082))))))

(declare-fun b!4904889 () Bool)

(declare-fun e!3066086 () Bool)

(assert (=> b!4904889 (= e!3066087 e!3066086)))

(declare-fun res!2095190 () Bool)

(assert (=> b!4904889 (=> (not res!2095190) (not e!3066086))))

(assert (=> b!4904889 (= res!2095190 (not lt!2012089))))

(declare-fun b!4904890 () Bool)

(declare-fun res!2095193 () Bool)

(assert (=> b!4904890 (=> res!2095193 e!3066091)))

(assert (=> b!4904890 (= res!2095193 (not (isEmpty!30410 (tail!9621 (_1!33697 lt!2012082)))))))

(declare-fun b!4904883 () Bool)

(declare-fun res!2095186 () Bool)

(assert (=> b!4904883 (=> (not res!2095186) (not e!3066085))))

(assert (=> b!4904883 (= res!2095186 (not call!340316))))

(declare-fun d!1576189 () Bool)

(assert (=> d!1576189 e!3066089))

(declare-fun c!833632 () Bool)

(assert (=> d!1576189 (= c!833632 ((_ is EmptyExpr!13307) (regex!8232 rule!164)))))

(assert (=> d!1576189 (= lt!2012089 e!3066090)))

(declare-fun c!833630 () Bool)

(assert (=> d!1576189 (= c!833630 (isEmpty!30410 (_1!33697 lt!2012082)))))

(declare-fun validRegex!5900 (Regex!13307) Bool)

(assert (=> d!1576189 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576189 (= (matchR!6574 (regex!8232 rule!164) (_1!33697 lt!2012082)) lt!2012089)))

(declare-fun b!4904891 () Bool)

(assert (=> b!4904891 (= e!3066086 e!3066091)))

(declare-fun res!2095189 () Bool)

(assert (=> b!4904891 (=> res!2095189 e!3066091)))

(assert (=> b!4904891 (= res!2095189 call!340316)))

(declare-fun b!4904892 () Bool)

(declare-fun derivativeStep!3893 (Regex!13307 C!26812) Regex!13307)

(assert (=> b!4904892 (= e!3066090 (matchR!6574 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082))) (tail!9621 (_1!33697 lt!2012082))))))

(assert (= (and d!1576189 c!833630) b!4904880))

(assert (= (and d!1576189 (not c!833630)) b!4904892))

(assert (= (and d!1576189 c!833632) b!4904885))

(assert (= (and d!1576189 (not c!833632)) b!4904881))

(assert (= (and b!4904881 c!833631) b!4904886))

(assert (= (and b!4904881 (not c!833631)) b!4904887))

(assert (= (and b!4904887 (not res!2095188)) b!4904879))

(assert (= (and b!4904879 res!2095187) b!4904883))

(assert (= (and b!4904883 res!2095186) b!4904888))

(assert (= (and b!4904888 res!2095192) b!4904882))

(assert (= (and b!4904879 (not res!2095191)) b!4904889))

(assert (= (and b!4904889 res!2095190) b!4904891))

(assert (= (and b!4904891 (not res!2095189)) b!4904890))

(assert (= (and b!4904890 (not res!2095193)) b!4904884))

(assert (= (or b!4904885 b!4904883 b!4904891) bm!340311))

(assert (=> bm!340311 m!5913932))

(declare-fun m!5913968 () Bool)

(assert (=> b!4904890 m!5913968))

(assert (=> b!4904890 m!5913968))

(declare-fun m!5913970 () Bool)

(assert (=> b!4904890 m!5913970))

(declare-fun m!5913972 () Bool)

(assert (=> b!4904892 m!5913972))

(assert (=> b!4904892 m!5913972))

(declare-fun m!5913974 () Bool)

(assert (=> b!4904892 m!5913974))

(assert (=> b!4904892 m!5913968))

(assert (=> b!4904892 m!5913974))

(assert (=> b!4904892 m!5913968))

(declare-fun m!5913976 () Bool)

(assert (=> b!4904892 m!5913976))

(assert (=> b!4904884 m!5913972))

(declare-fun m!5913978 () Bool)

(assert (=> b!4904880 m!5913978))

(assert (=> d!1576189 m!5913932))

(declare-fun m!5913980 () Bool)

(assert (=> d!1576189 m!5913980))

(assert (=> b!4904888 m!5913968))

(assert (=> b!4904888 m!5913968))

(assert (=> b!4904888 m!5913970))

(assert (=> b!4904882 m!5913972))

(assert (=> b!4904788 d!1576189))

(declare-fun d!1576193 () Bool)

(declare-fun c!833635 () Bool)

(assert (=> d!1576193 (= c!833635 ((_ is Node!14800) (c!833614 input!1509)))))

(declare-fun e!3066096 () Bool)

(assert (=> d!1576193 (= (inv!72993 (c!833614 input!1509)) e!3066096)))

(declare-fun b!4904899 () Bool)

(declare-fun inv!72999 (Conc!14800) Bool)

(assert (=> b!4904899 (= e!3066096 (inv!72999 (c!833614 input!1509)))))

(declare-fun b!4904900 () Bool)

(declare-fun e!3066097 () Bool)

(assert (=> b!4904900 (= e!3066096 e!3066097)))

(declare-fun res!2095196 () Bool)

(assert (=> b!4904900 (= res!2095196 (not ((_ is Leaf!24633) (c!833614 input!1509))))))

(assert (=> b!4904900 (=> res!2095196 e!3066097)))

(declare-fun b!4904901 () Bool)

(declare-fun inv!73000 (Conc!14800) Bool)

(assert (=> b!4904901 (= e!3066097 (inv!73000 (c!833614 input!1509)))))

(assert (= (and d!1576193 c!833635) b!4904899))

(assert (= (and d!1576193 (not c!833635)) b!4904900))

(assert (= (and b!4904900 (not res!2095196)) b!4904901))

(declare-fun m!5913982 () Bool)

(assert (=> b!4904899 m!5913982))

(declare-fun m!5913984 () Bool)

(assert (=> b!4904901 m!5913984))

(assert (=> b!4904793 d!1576193))

(declare-fun d!1576195 () Bool)

(declare-fun res!2095201 () Bool)

(declare-fun e!3066100 () Bool)

(assert (=> d!1576195 (=> (not res!2095201) (not e!3066100))))

(assert (=> d!1576195 (= res!2095201 (validRegex!5900 (regex!8232 rule!164)))))

(assert (=> d!1576195 (= (ruleValid!3729 thiss!15943 rule!164) e!3066100)))

(declare-fun b!4904906 () Bool)

(declare-fun res!2095202 () Bool)

(assert (=> b!4904906 (=> (not res!2095202) (not e!3066100))))

(assert (=> b!4904906 (= res!2095202 (not (nullable!4573 (regex!8232 rule!164))))))

(declare-fun b!4904907 () Bool)

(assert (=> b!4904907 (= e!3066100 (not (= (tag!9096 rule!164) (String!64152 ""))))))

(assert (= (and d!1576195 res!2095201) b!4904906))

(assert (= (and b!4904906 res!2095202) b!4904907))

(assert (=> d!1576195 m!5913980))

(assert (=> b!4904906 m!5913978))

(assert (=> b!4904792 d!1576195))

(declare-fun d!1576197 () Bool)

(declare-fun choose!35831 (Int) Bool)

(assert (=> d!1576197 (= (Forall!1729 lambda!244466) (choose!35831 lambda!244466))))

(declare-fun bs!1176982 () Bool)

(assert (= bs!1176982 d!1576197))

(declare-fun m!5913986 () Bool)

(assert (=> bs!1176982 m!5913986))

(assert (=> b!4904797 d!1576197))

(declare-fun d!1576199 () Bool)

(declare-fun lt!2012092 () Bool)

(assert (=> d!1576199 (= lt!2012092 (isEmpty!30410 (list!17810 (_1!33699 lt!2012076))))))

(declare-fun isEmpty!30414 (Conc!14800) Bool)

(assert (=> d!1576199 (= lt!2012092 (isEmpty!30414 (c!833614 (_1!33699 lt!2012076))))))

(assert (=> d!1576199 (= (isEmpty!30409 (_1!33699 lt!2012076)) lt!2012092)))

(declare-fun bs!1176983 () Bool)

(assert (= bs!1176983 d!1576199))

(assert (=> bs!1176983 m!5913916))

(assert (=> bs!1176983 m!5913916))

(declare-fun m!5913988 () Bool)

(assert (=> bs!1176983 m!5913988))

(declare-fun m!5913990 () Bool)

(assert (=> bs!1176983 m!5913990))

(assert (=> b!4904791 d!1576199))

(declare-fun d!1576201 () Bool)

(declare-fun lt!2012179 () tuple2!60792)

(declare-fun findLongestMatch!1663 (Regex!13307 List!56663) tuple2!60788)

(assert (=> d!1576201 (= (tuple2!60789 (list!17810 (_1!33699 lt!2012179)) (list!17810 (_2!33699 lt!2012179))) (findLongestMatch!1663 (regex!8232 rule!164) (list!17810 input!1509)))))

(declare-fun choose!35832 (Regex!13307 BalanceConc!29030) tuple2!60792)

(assert (=> d!1576201 (= lt!2012179 (choose!35832 (regex!8232 rule!164) input!1509))))

(assert (=> d!1576201 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576201 (= (findLongestMatchWithZipperSequence!320 (regex!8232 rule!164) input!1509) lt!2012179)))

(declare-fun bs!1176984 () Bool)

(assert (= bs!1176984 d!1576201))

(declare-fun m!5914016 () Bool)

(assert (=> bs!1176984 m!5914016))

(assert (=> bs!1176984 m!5913940))

(declare-fun m!5914030 () Bool)

(assert (=> bs!1176984 m!5914030))

(assert (=> bs!1176984 m!5913940))

(assert (=> bs!1176984 m!5913980))

(declare-fun m!5914038 () Bool)

(assert (=> bs!1176984 m!5914038))

(declare-fun m!5914042 () Bool)

(assert (=> bs!1176984 m!5914042))

(assert (=> b!4904791 d!1576201))

(declare-fun d!1576203 () Bool)

(declare-fun isBalanced!4032 (Conc!14800) Bool)

(assert (=> d!1576203 (= (inv!72995 input!1509) (isBalanced!4032 (c!833614 input!1509)))))

(declare-fun bs!1176986 () Bool)

(assert (= bs!1176986 d!1576203))

(declare-fun m!5914054 () Bool)

(assert (=> bs!1176986 m!5914054))

(assert (=> start!514016 d!1576203))

(declare-fun d!1576209 () Bool)

(declare-fun list!17812 (Conc!14800) List!56663)

(assert (=> d!1576209 (= (list!17810 input!1509) (list!17812 (c!833614 input!1509)))))

(declare-fun bs!1176987 () Bool)

(assert (= bs!1176987 d!1576209))

(declare-fun m!5914056 () Bool)

(assert (=> bs!1176987 m!5914056))

(assert (=> b!4904795 d!1576209))

(declare-fun d!1576213 () Bool)

(declare-fun e!3066146 () Bool)

(assert (=> d!1576213 e!3066146))

(declare-fun res!2095226 () Bool)

(assert (=> d!1576213 (=> res!2095226 e!3066146)))

(assert (=> d!1576213 (= res!2095226 (isEmpty!30410 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(declare-fun lt!2012189 () Unit!146695)

(declare-fun choose!35833 (Regex!13307 List!56663) Unit!146695)

(assert (=> d!1576213 (= lt!2012189 (choose!35833 (regex!8232 rule!164) lt!2012081))))

(assert (=> d!1576213 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576213 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1758 (regex!8232 rule!164) lt!2012081) lt!2012189)))

(declare-fun b!4904985 () Bool)

(assert (=> b!4904985 (= e!3066146 (matchR!6574 (regex!8232 rule!164) (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(assert (= (and d!1576213 (not res!2095226)) b!4904985))

(assert (=> d!1576213 m!5913930))

(assert (=> d!1576213 m!5913934))

(assert (=> d!1576213 m!5913930))

(assert (=> d!1576213 m!5913934))

(assert (=> d!1576213 m!5913936))

(declare-fun m!5914080 () Bool)

(assert (=> d!1576213 m!5914080))

(declare-fun m!5914082 () Bool)

(assert (=> d!1576213 m!5914082))

(assert (=> d!1576213 m!5913980))

(assert (=> b!4904985 m!5913930))

(assert (=> b!4904985 m!5913934))

(assert (=> b!4904985 m!5913930))

(assert (=> b!4904985 m!5913934))

(assert (=> b!4904985 m!5913936))

(declare-fun m!5914084 () Bool)

(assert (=> b!4904985 m!5914084))

(assert (=> b!4904795 d!1576213))

(declare-fun d!1576235 () Bool)

(declare-fun e!3066149 () Bool)

(assert (=> d!1576235 e!3066149))

(declare-fun res!2095229 () Bool)

(assert (=> d!1576235 (=> (not res!2095229) (not e!3066149))))

(assert (=> d!1576235 (= res!2095229 (semiInverseModEq!3633 (toChars!11010 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))))))

(declare-fun Unit!146701 () Unit!146695)

(assert (=> d!1576235 (= (lemmaInv!1278 (transformation!8232 rule!164)) Unit!146701)))

(declare-fun b!4904988 () Bool)

(declare-fun equivClasses!3486 (Int Int) Bool)

(assert (=> b!4904988 (= e!3066149 (equivClasses!3486 (toChars!11010 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))))))

(assert (= (and d!1576235 res!2095229) b!4904988))

(assert (=> d!1576235 m!5913928))

(declare-fun m!5914086 () Bool)

(assert (=> b!4904988 m!5914086))

(assert (=> b!4904795 d!1576235))

(declare-fun d!1576237 () Bool)

(declare-fun lt!2012192 () Int)

(assert (=> d!1576237 (>= lt!2012192 0)))

(declare-fun e!3066152 () Int)

(assert (=> d!1576237 (= lt!2012192 e!3066152)))

(declare-fun c!833663 () Bool)

(assert (=> d!1576237 (= c!833663 ((_ is Nil!56539) lt!2012081))))

(assert (=> d!1576237 (= (size!37272 lt!2012081) lt!2012192)))

(declare-fun b!4904993 () Bool)

(assert (=> b!4904993 (= e!3066152 0)))

(declare-fun b!4904994 () Bool)

(assert (=> b!4904994 (= e!3066152 (+ 1 (size!37272 (t!366795 lt!2012081))))))

(assert (= (and d!1576237 c!833663) b!4904993))

(assert (= (and d!1576237 (not c!833663)) b!4904994))

(declare-fun m!5914088 () Bool)

(assert (=> b!4904994 m!5914088))

(assert (=> b!4904795 d!1576237))

(declare-fun d!1576239 () Bool)

(declare-fun lt!2012193 () Int)

(assert (=> d!1576239 (>= lt!2012193 0)))

(declare-fun e!3066153 () Int)

(assert (=> d!1576239 (= lt!2012193 e!3066153)))

(declare-fun c!833664 () Bool)

(assert (=> d!1576239 (= c!833664 ((_ is Nil!56539) Nil!56539))))

(assert (=> d!1576239 (= (size!37272 Nil!56539) lt!2012193)))

(declare-fun b!4904995 () Bool)

(assert (=> b!4904995 (= e!3066153 0)))

(declare-fun b!4904996 () Bool)

(assert (=> b!4904996 (= e!3066153 (+ 1 (size!37272 (t!366795 Nil!56539))))))

(assert (= (and d!1576239 c!833664) b!4904995))

(assert (= (and d!1576239 (not c!833664)) b!4904996))

(declare-fun m!5914090 () Bool)

(assert (=> b!4904996 m!5914090))

(assert (=> b!4904795 d!1576239))

(declare-fun d!1576241 () Bool)

(assert (=> d!1576241 (= (isEmpty!30410 (_1!33697 lt!2012082)) ((_ is Nil!56539) (_1!33697 lt!2012082)))))

(assert (=> b!4904795 d!1576241))

(declare-fun bs!1176993 () Bool)

(declare-fun d!1576243 () Bool)

(assert (= bs!1176993 (and d!1576243 b!4904797)))

(declare-fun lambda!244472 () Int)

(assert (=> bs!1176993 (= lambda!244472 lambda!244466)))

(assert (=> d!1576243 true))

(assert (=> d!1576243 (< (dynLambda!22814 order!25749 (toChars!11010 (transformation!8232 rule!164))) (dynLambda!22813 order!25747 lambda!244472))))

(assert (=> d!1576243 true))

(assert (=> d!1576243 (< (dynLambda!22812 order!25745 (toValue!11151 (transformation!8232 rule!164))) (dynLambda!22813 order!25747 lambda!244472))))

(assert (=> d!1576243 (= (semiInverseModEq!3633 (toChars!11010 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))) (Forall!1729 lambda!244472))))

(declare-fun bs!1176994 () Bool)

(assert (= bs!1176994 d!1576243))

(declare-fun m!5914092 () Bool)

(assert (=> bs!1176994 m!5914092))

(assert (=> b!4904795 d!1576243))

(declare-fun b!4905089 () Bool)

(declare-fun e!3066200 () Bool)

(declare-fun e!3066202 () Bool)

(assert (=> b!4905089 (= e!3066200 e!3066202)))

(declare-fun res!2095256 () Bool)

(assert (=> b!4905089 (=> res!2095256 e!3066202)))

(declare-fun lt!2012296 () tuple2!60788)

(assert (=> b!4905089 (= res!2095256 (isEmpty!30410 (_1!33697 lt!2012296)))))

(declare-fun bm!340352 () Bool)

(declare-fun call!340359 () C!26812)

(assert (=> bm!340352 (= call!340359 (head!10474 lt!2012081))))

(declare-fun bm!340353 () Bool)

(declare-fun call!340360 () Unit!146695)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1073 (List!56663 List!56663 List!56663) Unit!146695)

(assert (=> bm!340353 (= call!340360 (lemmaIsPrefixSameLengthThenSameList!1073 lt!2012081 Nil!56539 lt!2012081))))

(declare-fun b!4905090 () Bool)

(declare-fun c!833685 () Bool)

(declare-fun call!340358 () Bool)

(assert (=> b!4905090 (= c!833685 call!340358)))

(declare-fun lt!2012292 () Unit!146695)

(declare-fun lt!2012285 () Unit!146695)

(assert (=> b!4905090 (= lt!2012292 lt!2012285)))

(declare-fun lt!2012299 () C!26812)

(declare-fun lt!2012305 () List!56663)

(declare-fun ++!12261 (List!56663 List!56663) List!56663)

(assert (=> b!4905090 (= (++!12261 (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539)) lt!2012305) lt!2012081)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1345 (List!56663 C!26812 List!56663 List!56663) Unit!146695)

(assert (=> b!4905090 (= lt!2012285 (lemmaMoveElementToOtherListKeepsConcatEq!1345 Nil!56539 lt!2012299 lt!2012305 lt!2012081))))

(assert (=> b!4905090 (= lt!2012305 (tail!9621 lt!2012081))))

(assert (=> b!4905090 (= lt!2012299 (head!10474 lt!2012081))))

(declare-fun lt!2012301 () Unit!146695)

(declare-fun lt!2012278 () Unit!146695)

(assert (=> b!4905090 (= lt!2012301 lt!2012278)))

(declare-fun isPrefix!4914 (List!56663 List!56663) Bool)

(declare-fun getSuffix!2902 (List!56663 List!56663) List!56663)

(assert (=> b!4905090 (isPrefix!4914 (++!12261 Nil!56539 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539)) lt!2012081)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!727 (List!56663 List!56663) Unit!146695)

(assert (=> b!4905090 (= lt!2012278 (lemmaAddHeadSuffixToPrefixStillPrefix!727 Nil!56539 lt!2012081))))

(declare-fun lt!2012280 () Unit!146695)

(declare-fun lt!2012282 () Unit!146695)

(assert (=> b!4905090 (= lt!2012280 lt!2012282)))

(assert (=> b!4905090 (= lt!2012282 (lemmaAddHeadSuffixToPrefixStillPrefix!727 Nil!56539 lt!2012081))))

(declare-fun lt!2012303 () List!56663)

(assert (=> b!4905090 (= lt!2012303 (++!12261 Nil!56539 (Cons!56539 (head!10474 lt!2012081) Nil!56539)))))

(declare-fun lt!2012288 () Unit!146695)

(declare-fun e!3066206 () Unit!146695)

(assert (=> b!4905090 (= lt!2012288 e!3066206)))

(declare-fun c!833681 () Bool)

(assert (=> b!4905090 (= c!833681 (= (size!37272 Nil!56539) (size!37272 lt!2012081)))))

(declare-fun lt!2012279 () Unit!146695)

(declare-fun lt!2012298 () Unit!146695)

(assert (=> b!4905090 (= lt!2012279 lt!2012298)))

(assert (=> b!4905090 (<= (size!37272 Nil!56539) (size!37272 lt!2012081))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!639 (List!56663 List!56663) Unit!146695)

(assert (=> b!4905090 (= lt!2012298 (lemmaIsPrefixThenSmallerEqSize!639 Nil!56539 lt!2012081))))

(declare-fun e!3066203 () tuple2!60788)

(declare-fun e!3066204 () tuple2!60788)

(assert (=> b!4905090 (= e!3066203 e!3066204)))

(declare-fun d!1576245 () Bool)

(assert (=> d!1576245 e!3066200))

(declare-fun res!2095255 () Bool)

(assert (=> d!1576245 (=> (not res!2095255) (not e!3066200))))

(assert (=> d!1576245 (= res!2095255 (= (++!12261 (_1!33697 lt!2012296) (_2!33697 lt!2012296)) lt!2012081))))

(declare-fun e!3066205 () tuple2!60788)

(assert (=> d!1576245 (= lt!2012296 e!3066205)))

(declare-fun c!833680 () Bool)

(declare-fun lostCause!1101 (Regex!13307) Bool)

(assert (=> d!1576245 (= c!833680 (lostCause!1101 (regex!8232 rule!164)))))

(declare-fun lt!2012295 () Unit!146695)

(declare-fun Unit!146702 () Unit!146695)

(assert (=> d!1576245 (= lt!2012295 Unit!146702)))

(assert (=> d!1576245 (= (getSuffix!2902 lt!2012081 Nil!56539) lt!2012081)))

(declare-fun lt!2012286 () Unit!146695)

(declare-fun lt!2012290 () Unit!146695)

(assert (=> d!1576245 (= lt!2012286 lt!2012290)))

(declare-fun lt!2012293 () List!56663)

(assert (=> d!1576245 (= lt!2012081 lt!2012293)))

(declare-fun lemmaSamePrefixThenSameSuffix!2318 (List!56663 List!56663 List!56663 List!56663 List!56663) Unit!146695)

(assert (=> d!1576245 (= lt!2012290 (lemmaSamePrefixThenSameSuffix!2318 Nil!56539 lt!2012081 Nil!56539 lt!2012293 lt!2012081))))

(assert (=> d!1576245 (= lt!2012293 (getSuffix!2902 lt!2012081 Nil!56539))))

(declare-fun lt!2012287 () Unit!146695)

(declare-fun lt!2012300 () Unit!146695)

(assert (=> d!1576245 (= lt!2012287 lt!2012300)))

(assert (=> d!1576245 (isPrefix!4914 Nil!56539 (++!12261 Nil!56539 lt!2012081))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3138 (List!56663 List!56663) Unit!146695)

(assert (=> d!1576245 (= lt!2012300 (lemmaConcatTwoListThenFirstIsPrefix!3138 Nil!56539 lt!2012081))))

(assert (=> d!1576245 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576245 (= (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)) lt!2012296)))

(declare-fun b!4905091 () Bool)

(assert (=> b!4905091 (= e!3066202 (>= (size!37272 (_1!33697 lt!2012296)) (size!37272 Nil!56539)))))

(declare-fun b!4905092 () Bool)

(declare-fun e!3066201 () tuple2!60788)

(assert (=> b!4905092 (= e!3066201 (tuple2!60789 Nil!56539 lt!2012081))))

(declare-fun b!4905093 () Bool)

(assert (=> b!4905093 (= e!3066205 (tuple2!60789 Nil!56539 lt!2012081))))

(declare-fun bm!340354 () Bool)

(assert (=> bm!340354 (= call!340358 (nullable!4573 (regex!8232 rule!164)))))

(declare-fun bm!340355 () Bool)

(declare-fun call!340364 () Regex!13307)

(assert (=> bm!340355 (= call!340364 (derivativeStep!3893 (regex!8232 rule!164) call!340359))))

(declare-fun b!4905094 () Bool)

(declare-fun Unit!146703 () Unit!146695)

(assert (=> b!4905094 (= e!3066206 Unit!146703)))

(declare-fun lt!2012302 () Unit!146695)

(declare-fun call!340357 () Unit!146695)

(assert (=> b!4905094 (= lt!2012302 call!340357)))

(declare-fun call!340363 () Bool)

(assert (=> b!4905094 call!340363))

(declare-fun lt!2012291 () Unit!146695)

(assert (=> b!4905094 (= lt!2012291 lt!2012302)))

(declare-fun lt!2012297 () Unit!146695)

(assert (=> b!4905094 (= lt!2012297 call!340360)))

(assert (=> b!4905094 (= lt!2012081 Nil!56539)))

(declare-fun lt!2012281 () Unit!146695)

(assert (=> b!4905094 (= lt!2012281 lt!2012297)))

(assert (=> b!4905094 false))

(declare-fun bm!340356 () Bool)

(assert (=> bm!340356 (= call!340363 (isPrefix!4914 lt!2012081 lt!2012081))))

(declare-fun b!4905095 () Bool)

(declare-fun e!3066199 () tuple2!60788)

(declare-fun lt!2012284 () tuple2!60788)

(assert (=> b!4905095 (= e!3066199 lt!2012284)))

(declare-fun b!4905096 () Bool)

(declare-fun call!340362 () tuple2!60788)

(assert (=> b!4905096 (= e!3066204 call!340362)))

(declare-fun bm!340357 () Bool)

(declare-fun lemmaIsPrefixRefl!3311 (List!56663 List!56663) Unit!146695)

(assert (=> bm!340357 (= call!340357 (lemmaIsPrefixRefl!3311 lt!2012081 lt!2012081))))

(declare-fun b!4905097 () Bool)

(declare-fun c!833683 () Bool)

(assert (=> b!4905097 (= c!833683 call!340358)))

(declare-fun lt!2012289 () Unit!146695)

(declare-fun lt!2012304 () Unit!146695)

(assert (=> b!4905097 (= lt!2012289 lt!2012304)))

(assert (=> b!4905097 (= lt!2012081 Nil!56539)))

(assert (=> b!4905097 (= lt!2012304 call!340360)))

(declare-fun lt!2012283 () Unit!146695)

(declare-fun lt!2012294 () Unit!146695)

(assert (=> b!4905097 (= lt!2012283 lt!2012294)))

(assert (=> b!4905097 call!340363))

(assert (=> b!4905097 (= lt!2012294 call!340357)))

(assert (=> b!4905097 (= e!3066203 e!3066201)))

(declare-fun call!340361 () List!56663)

(declare-fun bm!340358 () Bool)

(assert (=> bm!340358 (= call!340362 (findLongestMatchInner!1795 call!340364 lt!2012303 (+ (size!37272 Nil!56539) 1) call!340361 lt!2012081 (size!37272 lt!2012081)))))

(declare-fun b!4905098 () Bool)

(assert (=> b!4905098 (= e!3066205 e!3066203)))

(declare-fun c!833682 () Bool)

(assert (=> b!4905098 (= c!833682 (= (size!37272 Nil!56539) (size!37272 lt!2012081)))))

(declare-fun b!4905099 () Bool)

(assert (=> b!4905099 (= e!3066204 e!3066199)))

(assert (=> b!4905099 (= lt!2012284 call!340362)))

(declare-fun c!833684 () Bool)

(assert (=> b!4905099 (= c!833684 (isEmpty!30410 (_1!33697 lt!2012284)))))

(declare-fun bm!340359 () Bool)

(assert (=> bm!340359 (= call!340361 (tail!9621 lt!2012081))))

(declare-fun b!4905100 () Bool)

(assert (=> b!4905100 (= e!3066201 (tuple2!60789 Nil!56539 Nil!56539))))

(declare-fun b!4905101 () Bool)

(declare-fun Unit!146704 () Unit!146695)

(assert (=> b!4905101 (= e!3066206 Unit!146704)))

(declare-fun b!4905102 () Bool)

(assert (=> b!4905102 (= e!3066199 (tuple2!60789 Nil!56539 lt!2012081))))

(assert (= (and d!1576245 c!833680) b!4905093))

(assert (= (and d!1576245 (not c!833680)) b!4905098))

(assert (= (and b!4905098 c!833682) b!4905097))

(assert (= (and b!4905098 (not c!833682)) b!4905090))

(assert (= (and b!4905097 c!833683) b!4905100))

(assert (= (and b!4905097 (not c!833683)) b!4905092))

(assert (= (and b!4905090 c!833681) b!4905094))

(assert (= (and b!4905090 (not c!833681)) b!4905101))

(assert (= (and b!4905090 c!833685) b!4905099))

(assert (= (and b!4905090 (not c!833685)) b!4905096))

(assert (= (and b!4905099 c!833684) b!4905102))

(assert (= (and b!4905099 (not c!833684)) b!4905095))

(assert (= (or b!4905099 b!4905096) bm!340352))

(assert (= (or b!4905099 b!4905096) bm!340359))

(assert (= (or b!4905099 b!4905096) bm!340355))

(assert (= (or b!4905099 b!4905096) bm!340358))

(assert (= (or b!4905097 b!4905094) bm!340356))

(assert (= (or b!4905097 b!4905094) bm!340357))

(assert (= (or b!4905097 b!4905094) bm!340353))

(assert (= (or b!4905097 b!4905090) bm!340354))

(assert (= (and d!1576245 res!2095255) b!4905089))

(assert (= (and b!4905089 (not res!2095256)) b!4905091))

(declare-fun m!5914186 () Bool)

(assert (=> bm!340357 m!5914186))

(declare-fun m!5914188 () Bool)

(assert (=> bm!340356 m!5914188))

(declare-fun m!5914190 () Bool)

(assert (=> b!4905099 m!5914190))

(declare-fun m!5914192 () Bool)

(assert (=> bm!340359 m!5914192))

(assert (=> bm!340358 m!5913934))

(declare-fun m!5914194 () Bool)

(assert (=> bm!340358 m!5914194))

(declare-fun m!5914196 () Bool)

(assert (=> bm!340353 m!5914196))

(declare-fun m!5914198 () Bool)

(assert (=> bm!340352 m!5914198))

(assert (=> bm!340354 m!5913978))

(declare-fun m!5914200 () Bool)

(assert (=> bm!340355 m!5914200))

(declare-fun m!5914202 () Bool)

(assert (=> b!4905091 m!5914202))

(assert (=> b!4905091 m!5913930))

(declare-fun m!5914204 () Bool)

(assert (=> d!1576245 m!5914204))

(declare-fun m!5914206 () Bool)

(assert (=> d!1576245 m!5914206))

(assert (=> d!1576245 m!5913980))

(declare-fun m!5914208 () Bool)

(assert (=> d!1576245 m!5914208))

(assert (=> d!1576245 m!5914208))

(declare-fun m!5914210 () Bool)

(assert (=> d!1576245 m!5914210))

(declare-fun m!5914212 () Bool)

(assert (=> d!1576245 m!5914212))

(declare-fun m!5914214 () Bool)

(assert (=> d!1576245 m!5914214))

(declare-fun m!5914216 () Bool)

(assert (=> d!1576245 m!5914216))

(declare-fun m!5914218 () Bool)

(assert (=> b!4905090 m!5914218))

(declare-fun m!5914220 () Bool)

(assert (=> b!4905090 m!5914220))

(declare-fun m!5914222 () Bool)

(assert (=> b!4905090 m!5914222))

(declare-fun m!5914224 () Bool)

(assert (=> b!4905090 m!5914224))

(declare-fun m!5914226 () Bool)

(assert (=> b!4905090 m!5914226))

(assert (=> b!4905090 m!5914224))

(assert (=> b!4905090 m!5914212))

(declare-fun m!5914228 () Bool)

(assert (=> b!4905090 m!5914228))

(declare-fun m!5914230 () Bool)

(assert (=> b!4905090 m!5914230))

(declare-fun m!5914232 () Bool)

(assert (=> b!4905090 m!5914232))

(declare-fun m!5914234 () Bool)

(assert (=> b!4905090 m!5914234))

(assert (=> b!4905090 m!5914192))

(assert (=> b!4905090 m!5913934))

(assert (=> b!4905090 m!5913930))

(assert (=> b!4905090 m!5914212))

(assert (=> b!4905090 m!5914218))

(assert (=> b!4905090 m!5914198))

(declare-fun m!5914236 () Bool)

(assert (=> b!4905089 m!5914236))

(assert (=> b!4904795 d!1576245))

(declare-fun d!1576267 () Bool)

(assert (=> d!1576267 (= (inv!72989 (tag!9096 rule!164)) (= (mod (str.len (value!263718 (tag!9096 rule!164))) 2) 0))))

(assert (=> b!4904794 d!1576267))

(declare-fun d!1576269 () Bool)

(declare-fun res!2095259 () Bool)

(declare-fun e!3066209 () Bool)

(assert (=> d!1576269 (=> (not res!2095259) (not e!3066209))))

(assert (=> d!1576269 (= res!2095259 (semiInverseModEq!3633 (toChars!11010 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))))))

(assert (=> d!1576269 (= (inv!72994 (transformation!8232 rule!164)) e!3066209)))

(declare-fun b!4905105 () Bool)

(assert (=> b!4905105 (= e!3066209 (equivClasses!3486 (toChars!11010 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))))))

(assert (= (and d!1576269 res!2095259) b!4905105))

(assert (=> d!1576269 m!5913928))

(assert (=> b!4905105 m!5914086))

(assert (=> b!4904794 d!1576269))

(declare-fun d!1576271 () Bool)

(declare-fun fromListB!2703 (List!56663) BalanceConc!29030)

(assert (=> d!1576271 (= (seqFromList!5974 lt!2012078) (fromListB!2703 lt!2012078))))

(declare-fun bs!1177004 () Bool)

(assert (= bs!1177004 d!1576271))

(declare-fun m!5914238 () Bool)

(assert (=> bs!1177004 m!5914238))

(assert (=> b!4904789 d!1576271))

(declare-fun d!1576273 () Bool)

(declare-fun e!3066220 () Bool)

(assert (=> d!1576273 e!3066220))

(declare-fun res!2095276 () Bool)

(assert (=> d!1576273 (=> res!2095276 e!3066220)))

(declare-fun lt!2012317 () Option!14101)

(declare-fun isEmpty!30415 (Option!14101) Bool)

(assert (=> d!1576273 (= res!2095276 (isEmpty!30415 lt!2012317))))

(declare-fun e!3066221 () Option!14101)

(assert (=> d!1576273 (= lt!2012317 e!3066221)))

(declare-fun c!833688 () Bool)

(declare-fun lt!2012316 () tuple2!60788)

(assert (=> d!1576273 (= c!833688 (isEmpty!30410 (_1!33697 lt!2012316)))))

(assert (=> d!1576273 (= lt!2012316 (findLongestMatch!1663 (regex!8232 rule!164) lt!2012081))))

(assert (=> d!1576273 (ruleValid!3729 thiss!15943 rule!164)))

(assert (=> d!1576273 (= (maxPrefixOneRule!3569 thiss!15943 rule!164 lt!2012081) lt!2012317)))

(declare-fun b!4905124 () Bool)

(declare-fun res!2095277 () Bool)

(declare-fun e!3066218 () Bool)

(assert (=> b!4905124 (=> (not res!2095277) (not e!3066218))))

(declare-fun get!19554 (Option!14101) tuple2!60790)

(assert (=> b!4905124 (= res!2095277 (= (value!263744 (_1!33698 (get!19554 lt!2012317))) (apply!13576 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317)))) (seqFromList!5974 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317)))))))))

(declare-fun b!4905125 () Bool)

(assert (=> b!4905125 (= e!3066221 (Some!14100 (tuple2!60791 (Token!14993 (apply!13576 (transformation!8232 rule!164) (seqFromList!5974 (_1!33697 lt!2012316))) rule!164 (size!37271 (seqFromList!5974 (_1!33697 lt!2012316))) (_1!33697 lt!2012316)) (_2!33697 lt!2012316))))))

(declare-fun lt!2012320 () Unit!146695)

(assert (=> b!4905125 (= lt!2012320 (longestMatchIsAcceptedByMatchOrIsEmpty!1758 (regex!8232 rule!164) lt!2012081))))

(declare-fun res!2095275 () Bool)

(assert (=> b!4905125 (= res!2095275 (isEmpty!30410 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(declare-fun e!3066219 () Bool)

(assert (=> b!4905125 (=> res!2095275 e!3066219)))

(assert (=> b!4905125 e!3066219))

(declare-fun lt!2012319 () Unit!146695)

(assert (=> b!4905125 (= lt!2012319 lt!2012320)))

(declare-fun lt!2012318 () Unit!146695)

(declare-fun lemmaSemiInverse!2576 (TokenValueInjection!16392 BalanceConc!29030) Unit!146695)

(assert (=> b!4905125 (= lt!2012318 (lemmaSemiInverse!2576 (transformation!8232 rule!164) (seqFromList!5974 (_1!33697 lt!2012316))))))

(declare-fun b!4905126 () Bool)

(assert (=> b!4905126 (= e!3066219 (matchR!6574 (regex!8232 rule!164) (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(declare-fun b!4905127 () Bool)

(assert (=> b!4905127 (= e!3066221 None!14100)))

(declare-fun b!4905128 () Bool)

(assert (=> b!4905128 (= e!3066220 e!3066218)))

(declare-fun res!2095274 () Bool)

(assert (=> b!4905128 (=> (not res!2095274) (not e!3066218))))

(declare-fun charsOf!5388 (Token!14992) BalanceConc!29030)

(assert (=> b!4905128 (= res!2095274 (matchR!6574 (regex!8232 rule!164) (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))))))

(declare-fun b!4905129 () Bool)

(declare-fun res!2095278 () Bool)

(assert (=> b!4905129 (=> (not res!2095278) (not e!3066218))))

(assert (=> b!4905129 (= res!2095278 (= (++!12261 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317)))) (_2!33698 (get!19554 lt!2012317))) lt!2012081))))

(declare-fun b!4905130 () Bool)

(declare-fun res!2095280 () Bool)

(assert (=> b!4905130 (=> (not res!2095280) (not e!3066218))))

(assert (=> b!4905130 (= res!2095280 (= (rule!11430 (_1!33698 (get!19554 lt!2012317))) rule!164))))

(declare-fun b!4905131 () Bool)

(declare-fun res!2095279 () Bool)

(assert (=> b!4905131 (=> (not res!2095279) (not e!3066218))))

(assert (=> b!4905131 (= res!2095279 (< (size!37272 (_2!33698 (get!19554 lt!2012317))) (size!37272 lt!2012081)))))

(declare-fun b!4905132 () Bool)

(assert (=> b!4905132 (= e!3066218 (= (size!37270 (_1!33698 (get!19554 lt!2012317))) (size!37272 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317))))))))

(assert (= (and d!1576273 c!833688) b!4905127))

(assert (= (and d!1576273 (not c!833688)) b!4905125))

(assert (= (and b!4905125 (not res!2095275)) b!4905126))

(assert (= (and d!1576273 (not res!2095276)) b!4905128))

(assert (= (and b!4905128 res!2095274) b!4905129))

(assert (= (and b!4905129 res!2095278) b!4905131))

(assert (= (and b!4905131 res!2095279) b!4905130))

(assert (= (and b!4905130 res!2095280) b!4905124))

(assert (= (and b!4905124 res!2095277) b!4905132))

(declare-fun m!5914240 () Bool)

(assert (=> d!1576273 m!5914240))

(declare-fun m!5914242 () Bool)

(assert (=> d!1576273 m!5914242))

(declare-fun m!5914244 () Bool)

(assert (=> d!1576273 m!5914244))

(assert (=> d!1576273 m!5913924))

(declare-fun m!5914246 () Bool)

(assert (=> b!4905132 m!5914246))

(declare-fun m!5914248 () Bool)

(assert (=> b!4905132 m!5914248))

(assert (=> b!4905128 m!5914246))

(declare-fun m!5914250 () Bool)

(assert (=> b!4905128 m!5914250))

(assert (=> b!4905128 m!5914250))

(declare-fun m!5914252 () Bool)

(assert (=> b!4905128 m!5914252))

(assert (=> b!4905128 m!5914252))

(declare-fun m!5914254 () Bool)

(assert (=> b!4905128 m!5914254))

(assert (=> b!4905126 m!5913930))

(assert (=> b!4905126 m!5913934))

(assert (=> b!4905126 m!5913930))

(assert (=> b!4905126 m!5913934))

(assert (=> b!4905126 m!5913936))

(assert (=> b!4905126 m!5914084))

(assert (=> b!4905125 m!5913930))

(assert (=> b!4905125 m!5913938))

(assert (=> b!4905125 m!5913930))

(assert (=> b!4905125 m!5913934))

(assert (=> b!4905125 m!5913936))

(declare-fun m!5914256 () Bool)

(assert (=> b!4905125 m!5914256))

(declare-fun m!5914258 () Bool)

(assert (=> b!4905125 m!5914258))

(assert (=> b!4905125 m!5914256))

(declare-fun m!5914260 () Bool)

(assert (=> b!4905125 m!5914260))

(assert (=> b!4905125 m!5914256))

(declare-fun m!5914262 () Bool)

(assert (=> b!4905125 m!5914262))

(assert (=> b!4905125 m!5914080))

(assert (=> b!4905125 m!5913934))

(assert (=> b!4905125 m!5914256))

(assert (=> b!4905131 m!5914246))

(declare-fun m!5914264 () Bool)

(assert (=> b!4905131 m!5914264))

(assert (=> b!4905131 m!5913934))

(assert (=> b!4905129 m!5914246))

(assert (=> b!4905129 m!5914250))

(assert (=> b!4905129 m!5914250))

(assert (=> b!4905129 m!5914252))

(assert (=> b!4905129 m!5914252))

(declare-fun m!5914266 () Bool)

(assert (=> b!4905129 m!5914266))

(assert (=> b!4905124 m!5914246))

(declare-fun m!5914268 () Bool)

(assert (=> b!4905124 m!5914268))

(assert (=> b!4905124 m!5914268))

(declare-fun m!5914270 () Bool)

(assert (=> b!4905124 m!5914270))

(assert (=> b!4905130 m!5914246))

(assert (=> b!4904789 d!1576273))

(declare-fun d!1576275 () Bool)

(declare-fun dynLambda!22818 (Int BalanceConc!29030) Bool)

(assert (=> d!1576275 (dynLambda!22818 lambda!244466 (_1!33699 lt!2012076))))

(declare-fun lt!2012323 () Unit!146695)

(declare-fun choose!35834 (Int BalanceConc!29030) Unit!146695)

(assert (=> d!1576275 (= lt!2012323 (choose!35834 lambda!244466 (_1!33699 lt!2012076)))))

(assert (=> d!1576275 (Forall!1729 lambda!244466)))

(assert (=> d!1576275 (= (ForallOf!1169 lambda!244466 (_1!33699 lt!2012076)) lt!2012323)))

(declare-fun b_lambda!195301 () Bool)

(assert (=> (not b_lambda!195301) (not d!1576275)))

(declare-fun bs!1177005 () Bool)

(assert (= bs!1177005 d!1576275))

(declare-fun m!5914272 () Bool)

(assert (=> bs!1177005 m!5914272))

(declare-fun m!5914274 () Bool)

(assert (=> bs!1177005 m!5914274))

(assert (=> bs!1177005 m!5913902))

(assert (=> b!4904789 d!1576275))

(declare-fun d!1576277 () Bool)

(assert (=> d!1576277 (= (list!17810 (_1!33699 lt!2012076)) (list!17812 (c!833614 (_1!33699 lt!2012076))))))

(declare-fun bs!1177006 () Bool)

(assert (= bs!1177006 d!1576277))

(declare-fun m!5914276 () Bool)

(assert (=> bs!1177006 m!5914276))

(assert (=> b!4904789 d!1576277))

(declare-fun d!1576279 () Bool)

(assert (=> d!1576279 (= (isDefined!11110 (maxPrefixOneRule!3569 thiss!15943 rule!164 lt!2012081)) (not (isEmpty!30415 (maxPrefixOneRule!3569 thiss!15943 rule!164 lt!2012081))))))

(declare-fun bs!1177007 () Bool)

(assert (= bs!1177007 d!1576279))

(assert (=> bs!1177007 m!5913912))

(declare-fun m!5914278 () Bool)

(assert (=> bs!1177007 m!5914278))

(assert (=> b!4904789 d!1576279))

(declare-fun d!1576281 () Bool)

(declare-fun isEmpty!30416 (Option!14102) Bool)

(assert (=> d!1576281 (= (isDefined!11111 (Some!14101 (tuple2!60795 (Token!14993 (apply!13576 (transformation!8232 rule!164) (_1!33699 lt!2012076)) rule!164 (size!37271 (_1!33699 lt!2012076)) lt!2012078) (_2!33699 lt!2012076)))) (not (isEmpty!30416 (Some!14101 (tuple2!60795 (Token!14993 (apply!13576 (transformation!8232 rule!164) (_1!33699 lt!2012076)) rule!164 (size!37271 (_1!33699 lt!2012076)) lt!2012078) (_2!33699 lt!2012076))))))))

(declare-fun bs!1177008 () Bool)

(assert (= bs!1177008 d!1576281))

(declare-fun m!5914280 () Bool)

(assert (=> bs!1177008 m!5914280))

(assert (=> b!4904789 d!1576281))

(declare-fun d!1576283 () Bool)

(assert (=> d!1576283 (dynLambda!22818 lambda!244466 (seqFromList!5974 lt!2012078))))

(declare-fun lt!2012324 () Unit!146695)

(assert (=> d!1576283 (= lt!2012324 (choose!35834 lambda!244466 (seqFromList!5974 lt!2012078)))))

(assert (=> d!1576283 (Forall!1729 lambda!244466)))

(assert (=> d!1576283 (= (ForallOf!1169 lambda!244466 (seqFromList!5974 lt!2012078)) lt!2012324)))

(declare-fun b_lambda!195303 () Bool)

(assert (=> (not b_lambda!195303) (not d!1576283)))

(declare-fun bs!1177009 () Bool)

(assert (= bs!1177009 d!1576283))

(assert (=> bs!1177009 m!5913904))

(declare-fun m!5914282 () Bool)

(assert (=> bs!1177009 m!5914282))

(assert (=> bs!1177009 m!5913904))

(declare-fun m!5914284 () Bool)

(assert (=> bs!1177009 m!5914284))

(assert (=> bs!1177009 m!5913902))

(assert (=> b!4904789 d!1576283))

(declare-fun d!1576285 () Bool)

(declare-fun lt!2012327 () Int)

(assert (=> d!1576285 (= lt!2012327 (size!37272 (list!17810 (_1!33699 lt!2012076))))))

(declare-fun size!37274 (Conc!14800) Int)

(assert (=> d!1576285 (= lt!2012327 (size!37274 (c!833614 (_1!33699 lt!2012076))))))

(assert (=> d!1576285 (= (size!37271 (_1!33699 lt!2012076)) lt!2012327)))

(declare-fun bs!1177010 () Bool)

(assert (= bs!1177010 d!1576285))

(assert (=> bs!1177010 m!5913916))

(assert (=> bs!1177010 m!5913916))

(declare-fun m!5914286 () Bool)

(assert (=> bs!1177010 m!5914286))

(declare-fun m!5914288 () Bool)

(assert (=> bs!1177010 m!5914288))

(assert (=> b!4904789 d!1576285))

(declare-fun d!1576287 () Bool)

(declare-fun dynLambda!22819 (Int BalanceConc!29030) TokenValue!8542)

(assert (=> d!1576287 (= (apply!13576 (transformation!8232 rule!164) (_1!33699 lt!2012076)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))))

(declare-fun b_lambda!195305 () Bool)

(assert (=> (not b_lambda!195305) (not d!1576287)))

(declare-fun t!366805 () Bool)

(declare-fun tb!259887 () Bool)

(assert (=> (and b!4904796 (= (toValue!11151 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))) t!366805) tb!259887))

(declare-fun result!323626 () Bool)

(declare-fun inv!21 (TokenValue!8542) Bool)

(assert (=> tb!259887 (= result!323626 (inv!21 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))

(declare-fun m!5914290 () Bool)

(assert (=> tb!259887 m!5914290))

(assert (=> d!1576287 t!366805))

(declare-fun b_and!346345 () Bool)

(assert (= b_and!346331 (and (=> t!366805 result!323626) b_and!346345)))

(declare-fun m!5914292 () Bool)

(assert (=> d!1576287 m!5914292))

(assert (=> b!4904789 d!1576287))

(declare-fun tp!1379914 () Bool)

(declare-fun e!3066230 () Bool)

(declare-fun b!4905143 () Bool)

(declare-fun tp!1379916 () Bool)

(assert (=> b!4905143 (= e!3066230 (and (inv!72993 (left!41158 (c!833614 input!1509))) tp!1379914 (inv!72993 (right!41488 (c!833614 input!1509))) tp!1379916))))

(declare-fun b!4905145 () Bool)

(declare-fun e!3066229 () Bool)

(declare-fun tp!1379915 () Bool)

(assert (=> b!4905145 (= e!3066229 tp!1379915)))

(declare-fun b!4905144 () Bool)

(declare-fun inv!73001 (IArray!29661) Bool)

(assert (=> b!4905144 (= e!3066230 (and (inv!73001 (xs!18116 (c!833614 input!1509))) e!3066229))))

(assert (=> b!4904793 (= tp!1379879 (and (inv!72993 (c!833614 input!1509)) e!3066230))))

(assert (= (and b!4904793 ((_ is Node!14800) (c!833614 input!1509))) b!4905143))

(assert (= b!4905144 b!4905145))

(assert (= (and b!4904793 ((_ is Leaf!24633) (c!833614 input!1509))) b!4905144))

(declare-fun m!5914294 () Bool)

(assert (=> b!4905143 m!5914294))

(declare-fun m!5914296 () Bool)

(assert (=> b!4905143 m!5914296))

(declare-fun m!5914298 () Bool)

(assert (=> b!4905144 m!5914298))

(assert (=> b!4904793 m!5913944))

(declare-fun b!4905156 () Bool)

(declare-fun e!3066233 () Bool)

(declare-fun tp_is_empty!35823 () Bool)

(assert (=> b!4905156 (= e!3066233 tp_is_empty!35823)))

(declare-fun b!4905158 () Bool)

(declare-fun tp!1379928 () Bool)

(assert (=> b!4905158 (= e!3066233 tp!1379928)))

(declare-fun b!4905157 () Bool)

(declare-fun tp!1379927 () Bool)

(declare-fun tp!1379929 () Bool)

(assert (=> b!4905157 (= e!3066233 (and tp!1379927 tp!1379929))))

(assert (=> b!4904794 (= tp!1379876 e!3066233)))

(declare-fun b!4905159 () Bool)

(declare-fun tp!1379931 () Bool)

(declare-fun tp!1379930 () Bool)

(assert (=> b!4905159 (= e!3066233 (and tp!1379931 tp!1379930))))

(assert (= (and b!4904794 ((_ is ElementMatch!13307) (regex!8232 rule!164))) b!4905156))

(assert (= (and b!4904794 ((_ is Concat!21849) (regex!8232 rule!164))) b!4905157))

(assert (= (and b!4904794 ((_ is Star!13307) (regex!8232 rule!164))) b!4905158))

(assert (= (and b!4904794 ((_ is Union!13307) (regex!8232 rule!164))) b!4905159))

(declare-fun b_lambda!195307 () Bool)

(assert (= b_lambda!195301 (or b!4904797 b_lambda!195307)))

(declare-fun bs!1177011 () Bool)

(declare-fun d!1576289 () Bool)

(assert (= bs!1177011 (and d!1576289 b!4904797)))

(declare-fun dynLambda!22820 (Int TokenValue!8542) BalanceConc!29030)

(assert (=> bs!1177011 (= (dynLambda!22818 lambda!244466 (_1!33699 lt!2012076)) (= (list!17810 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))) (list!17810 (_1!33699 lt!2012076))))))

(declare-fun b_lambda!195313 () Bool)

(assert (=> (not b_lambda!195313) (not bs!1177011)))

(declare-fun t!366807 () Bool)

(declare-fun tb!259889 () Bool)

(assert (=> (and b!4904796 (= (toChars!11010 (transformation!8232 rule!164)) (toChars!11010 (transformation!8232 rule!164))) t!366807) tb!259889))

(declare-fun b!4905164 () Bool)

(declare-fun tp!1379934 () Bool)

(declare-fun e!3066236 () Bool)

(assert (=> b!4905164 (= e!3066236 (and (inv!72993 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))) tp!1379934))))

(declare-fun result!323634 () Bool)

(assert (=> tb!259889 (= result!323634 (and (inv!72995 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))) e!3066236))))

(assert (= tb!259889 b!4905164))

(declare-fun m!5914300 () Bool)

(assert (=> b!4905164 m!5914300))

(declare-fun m!5914302 () Bool)

(assert (=> tb!259889 m!5914302))

(assert (=> bs!1177011 t!366807))

(declare-fun b_and!346347 () Bool)

(assert (= b_and!346333 (and (=> t!366807 result!323634) b_and!346347)))

(declare-fun b_lambda!195315 () Bool)

(assert (=> (not b_lambda!195315) (not bs!1177011)))

(assert (=> bs!1177011 t!366805))

(declare-fun b_and!346349 () Bool)

(assert (= b_and!346345 (and (=> t!366805 result!323626) b_and!346349)))

(declare-fun m!5914304 () Bool)

(assert (=> bs!1177011 m!5914304))

(declare-fun m!5914306 () Bool)

(assert (=> bs!1177011 m!5914306))

(assert (=> bs!1177011 m!5914292))

(assert (=> bs!1177011 m!5913916))

(assert (=> bs!1177011 m!5914292))

(assert (=> bs!1177011 m!5914304))

(assert (=> d!1576275 d!1576289))

(declare-fun b_lambda!195309 () Bool)

(assert (= b_lambda!195303 (or b!4904797 b_lambda!195309)))

(declare-fun bs!1177012 () Bool)

(declare-fun d!1576291 () Bool)

(assert (= bs!1177012 (and d!1576291 b!4904797)))

(assert (=> bs!1177012 (= (dynLambda!22818 lambda!244466 (seqFromList!5974 lt!2012078)) (= (list!17810 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))) (list!17810 (seqFromList!5974 lt!2012078))))))

(declare-fun b_lambda!195317 () Bool)

(assert (=> (not b_lambda!195317) (not bs!1177012)))

(declare-fun t!366809 () Bool)

(declare-fun tb!259891 () Bool)

(assert (=> (and b!4904796 (= (toChars!11010 (transformation!8232 rule!164)) (toChars!11010 (transformation!8232 rule!164))) t!366809) tb!259891))

(declare-fun e!3066237 () Bool)

(declare-fun tp!1379935 () Bool)

(declare-fun b!4905165 () Bool)

(assert (=> b!4905165 (= e!3066237 (and (inv!72993 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))) tp!1379935))))

(declare-fun result!323638 () Bool)

(assert (=> tb!259891 (= result!323638 (and (inv!72995 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))) e!3066237))))

(assert (= tb!259891 b!4905165))

(declare-fun m!5914308 () Bool)

(assert (=> b!4905165 m!5914308))

(declare-fun m!5914310 () Bool)

(assert (=> tb!259891 m!5914310))

(assert (=> bs!1177012 t!366809))

(declare-fun b_and!346351 () Bool)

(assert (= b_and!346347 (and (=> t!366809 result!323638) b_and!346351)))

(declare-fun b_lambda!195319 () Bool)

(assert (=> (not b_lambda!195319) (not bs!1177012)))

(declare-fun t!366811 () Bool)

(declare-fun tb!259893 () Bool)

(assert (=> (and b!4904796 (= (toValue!11151 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))) t!366811) tb!259893))

(declare-fun result!323640 () Bool)

(assert (=> tb!259893 (= result!323640 (inv!21 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))

(declare-fun m!5914312 () Bool)

(assert (=> tb!259893 m!5914312))

(assert (=> bs!1177012 t!366811))

(declare-fun b_and!346353 () Bool)

(assert (= b_and!346349 (and (=> t!366811 result!323640) b_and!346353)))

(declare-fun m!5914314 () Bool)

(assert (=> bs!1177012 m!5914314))

(declare-fun m!5914316 () Bool)

(assert (=> bs!1177012 m!5914316))

(assert (=> bs!1177012 m!5913904))

(declare-fun m!5914318 () Bool)

(assert (=> bs!1177012 m!5914318))

(assert (=> bs!1177012 m!5913904))

(declare-fun m!5914320 () Bool)

(assert (=> bs!1177012 m!5914320))

(assert (=> bs!1177012 m!5914318))

(assert (=> bs!1177012 m!5914314))

(assert (=> d!1576283 d!1576291))

(declare-fun b_lambda!195311 () Bool)

(assert (= b_lambda!195305 (or (and b!4904796 b_free!131899) b_lambda!195311)))

(check-sat (not b_next!132691) (not d!1576269) (not d!1576203) (not d!1576245) (not b_lambda!195315) (not b!4905159) (not b_next!132689) (not b!4905143) (not b!4904994) (not d!1576243) (not b!4904884) (not d!1576199) (not d!1576189) (not bm!340355) (not b!4904988) (not b!4905129) (not d!1576201) (not bm!340352) (not d!1576273) (not b!4905157) (not tb!259889) (not b!4905125) (not d!1576235) (not d!1576277) (not b!4905131) (not b!4904882) (not b!4904899) (not b!4905126) (not b!4904880) (not b!4905145) (not b_lambda!195307) (not b!4905099) (not b!4904890) (not d!1576213) (not b!4904901) (not b!4905132) (not b!4905089) (not tb!259893) tp_is_empty!35823 (not tb!259891) (not b!4905090) (not b_lambda!195311) (not b!4905105) (not d!1576195) (not bm!340356) (not bm!340357) b_and!346351 (not d!1576281) (not b!4905124) (not d!1576271) (not b!4905128) (not b_lambda!195309) (not d!1576285) (not tb!259887) (not bm!340354) (not d!1576209) (not bm!340359) (not b!4905164) (not d!1576197) (not b_lambda!195313) (not bs!1177012) (not b!4904996) (not b!4905158) b_and!346353 (not d!1576275) (not bm!340353) (not b!4904888) (not b!4905165) (not b_lambda!195317) (not d!1576283) (not b!4904985) (not bm!340311) (not b!4904793) (not b!4904906) (not b!4905130) (not bs!1177011) (not d!1576279) (not b!4905144) (not b_lambda!195319) (not b!4905091) (not bm!340358) (not b!4904892))
(check-sat b_and!346351 b_and!346353 (not b_next!132691) (not b_next!132689))
(get-model)

(declare-fun b_lambda!195321 () Bool)

(assert (= b_lambda!195319 (or (and b!4904796 b_free!131899) b_lambda!195321)))

(declare-fun b_lambda!195323 () Bool)

(assert (= b_lambda!195313 (or (and b!4904796 b_free!131901) b_lambda!195323)))

(declare-fun b_lambda!195325 () Bool)

(assert (= b_lambda!195315 (or (and b!4904796 b_free!131899) b_lambda!195325)))

(declare-fun b_lambda!195327 () Bool)

(assert (= b_lambda!195317 (or (and b!4904796 b_free!131901) b_lambda!195327)))

(check-sat (not b_next!132691) (not d!1576203) (not d!1576283) (not d!1576245) (not b!4905159) (not b_next!132689) (not b!4905143) (not b!4904994) (not d!1576243) (not d!1576199) (not d!1576189) (not b_lambda!195327) (not b!4904884) (not bm!340355) (not b!4904988) (not b!4905129) (not d!1576201) (not bm!340352) (not d!1576273) (not b!4905157) (not tb!259889) (not b!4905125) (not d!1576235) (not d!1576277) (not b!4905131) (not b!4904882) (not b_lambda!195321) (not b!4904899) (not b!4905126) (not b!4904880) (not b!4905145) (not b_lambda!195307) (not b!4905099) (not b!4904890) (not d!1576213) (not b!4904901) (not b!4905132) (not b!4905089) (not tb!259893) tp_is_empty!35823 (not tb!259891) (not b!4905090) (not b_lambda!195311) (not b!4905105) (not d!1576195) (not bm!340356) (not bm!340357) b_and!346351 (not d!1576281) (not b!4905124) (not d!1576271) (not b!4905128) (not b_lambda!195309) (not d!1576285) (not b_lambda!195325) (not b_lambda!195323) (not d!1576269) (not tb!259887) (not bm!340354) (not d!1576209) (not bm!340359) (not b!4905164) (not d!1576197) (not bs!1177012) (not b!4904996) (not b!4905158) b_and!346353 (not d!1576275) (not bm!340353) (not b!4904888) (not b!4905165) (not b!4904985) (not bm!340311) (not b!4904793) (not b!4904906) (not b!4905130) (not bs!1177011) (not b!4905091) (not d!1576279) (not b!4905144) (not bm!340358) (not b!4904892))
(check-sat b_and!346351 b_and!346353 (not b_next!132691) (not b_next!132689))
(get-model)

(declare-fun d!1576293 () Bool)

(assert (=> d!1576293 (= (head!10474 (_1!33697 lt!2012082)) (h!62987 (_1!33697 lt!2012082)))))

(assert (=> b!4904884 d!1576293))

(declare-fun d!1576295 () Bool)

(assert (=> d!1576295 (= (isEmpty!30410 (list!17810 (_1!33699 lt!2012076))) ((_ is Nil!56539) (list!17810 (_1!33699 lt!2012076))))))

(assert (=> d!1576199 d!1576295))

(assert (=> d!1576199 d!1576277))

(declare-fun d!1576297 () Bool)

(declare-fun lt!2012330 () Bool)

(assert (=> d!1576297 (= lt!2012330 (isEmpty!30410 (list!17812 (c!833614 (_1!33699 lt!2012076)))))))

(assert (=> d!1576297 (= lt!2012330 (= (size!37274 (c!833614 (_1!33699 lt!2012076))) 0))))

(assert (=> d!1576297 (= (isEmpty!30414 (c!833614 (_1!33699 lt!2012076))) lt!2012330)))

(declare-fun bs!1177013 () Bool)

(assert (= bs!1177013 d!1576297))

(assert (=> bs!1177013 m!5914276))

(assert (=> bs!1177013 m!5914276))

(declare-fun m!5914322 () Bool)

(assert (=> bs!1177013 m!5914322))

(assert (=> bs!1177013 m!5914288))

(assert (=> d!1576199 d!1576297))

(declare-fun d!1576299 () Bool)

(assert (=> d!1576299 (dynLambda!22818 lambda!244466 (seqFromList!5974 lt!2012078))))

(assert (=> d!1576299 true))

(declare-fun _$1!11213 () Unit!146695)

(assert (=> d!1576299 (= (choose!35834 lambda!244466 (seqFromList!5974 lt!2012078)) _$1!11213)))

(declare-fun b_lambda!195337 () Bool)

(assert (=> (not b_lambda!195337) (not d!1576299)))

(declare-fun bs!1177014 () Bool)

(assert (= bs!1177014 d!1576299))

(assert (=> bs!1177014 m!5913904))

(assert (=> bs!1177014 m!5914282))

(assert (=> d!1576283 d!1576299))

(assert (=> d!1576283 d!1576197))

(declare-fun d!1576301 () Bool)

(declare-fun c!833693 () Bool)

(assert (=> d!1576301 (= c!833693 ((_ is Empty!14800) (c!833614 (_1!33699 lt!2012076))))))

(declare-fun e!3066243 () List!56663)

(assert (=> d!1576301 (= (list!17812 (c!833614 (_1!33699 lt!2012076))) e!3066243)))

(declare-fun b!4905175 () Bool)

(declare-fun e!3066244 () List!56663)

(assert (=> b!4905175 (= e!3066243 e!3066244)))

(declare-fun c!833694 () Bool)

(assert (=> b!4905175 (= c!833694 ((_ is Leaf!24633) (c!833614 (_1!33699 lt!2012076))))))

(declare-fun b!4905176 () Bool)

(declare-fun list!17813 (IArray!29661) List!56663)

(assert (=> b!4905176 (= e!3066244 (list!17813 (xs!18116 (c!833614 (_1!33699 lt!2012076)))))))

(declare-fun b!4905177 () Bool)

(assert (=> b!4905177 (= e!3066244 (++!12261 (list!17812 (left!41158 (c!833614 (_1!33699 lt!2012076)))) (list!17812 (right!41488 (c!833614 (_1!33699 lt!2012076))))))))

(declare-fun b!4905174 () Bool)

(assert (=> b!4905174 (= e!3066243 Nil!56539)))

(assert (= (and d!1576301 c!833693) b!4905174))

(assert (= (and d!1576301 (not c!833693)) b!4905175))

(assert (= (and b!4905175 c!833694) b!4905176))

(assert (= (and b!4905175 (not c!833694)) b!4905177))

(declare-fun m!5914324 () Bool)

(assert (=> b!4905176 m!5914324))

(declare-fun m!5914326 () Bool)

(assert (=> b!4905177 m!5914326))

(declare-fun m!5914328 () Bool)

(assert (=> b!4905177 m!5914328))

(assert (=> b!4905177 m!5914326))

(assert (=> b!4905177 m!5914328))

(declare-fun m!5914330 () Bool)

(assert (=> b!4905177 m!5914330))

(assert (=> d!1576277 d!1576301))

(assert (=> b!4904882 d!1576293))

(declare-fun d!1576303 () Bool)

(declare-fun nullableFct!1245 (Regex!13307) Bool)

(assert (=> d!1576303 (= (nullable!4573 (regex!8232 rule!164)) (nullableFct!1245 (regex!8232 rule!164)))))

(declare-fun bs!1177015 () Bool)

(assert (= bs!1177015 d!1576303))

(declare-fun m!5914332 () Bool)

(assert (=> bs!1177015 m!5914332))

(assert (=> b!4904880 d!1576303))

(declare-fun b!4905187 () Bool)

(declare-fun res!2095292 () Bool)

(declare-fun e!3066252 () Bool)

(assert (=> b!4905187 (=> (not res!2095292) (not e!3066252))))

(assert (=> b!4905187 (= res!2095292 (= (head!10474 lt!2012081) (head!10474 lt!2012081)))))

(declare-fun d!1576305 () Bool)

(declare-fun e!3066251 () Bool)

(assert (=> d!1576305 e!3066251))

(declare-fun res!2095289 () Bool)

(assert (=> d!1576305 (=> res!2095289 e!3066251)))

(declare-fun lt!2012333 () Bool)

(assert (=> d!1576305 (= res!2095289 (not lt!2012333))))

(declare-fun e!3066253 () Bool)

(assert (=> d!1576305 (= lt!2012333 e!3066253)))

(declare-fun res!2095290 () Bool)

(assert (=> d!1576305 (=> res!2095290 e!3066253)))

(assert (=> d!1576305 (= res!2095290 ((_ is Nil!56539) lt!2012081))))

(assert (=> d!1576305 (= (isPrefix!4914 lt!2012081 lt!2012081) lt!2012333)))

(declare-fun b!4905189 () Bool)

(assert (=> b!4905189 (= e!3066251 (>= (size!37272 lt!2012081) (size!37272 lt!2012081)))))

(declare-fun b!4905186 () Bool)

(assert (=> b!4905186 (= e!3066253 e!3066252)))

(declare-fun res!2095291 () Bool)

(assert (=> b!4905186 (=> (not res!2095291) (not e!3066252))))

(assert (=> b!4905186 (= res!2095291 (not ((_ is Nil!56539) lt!2012081)))))

(declare-fun b!4905188 () Bool)

(assert (=> b!4905188 (= e!3066252 (isPrefix!4914 (tail!9621 lt!2012081) (tail!9621 lt!2012081)))))

(assert (= (and d!1576305 (not res!2095290)) b!4905186))

(assert (= (and b!4905186 res!2095291) b!4905187))

(assert (= (and b!4905187 res!2095292) b!4905188))

(assert (= (and d!1576305 (not res!2095289)) b!4905189))

(assert (=> b!4905187 m!5914198))

(assert (=> b!4905187 m!5914198))

(assert (=> b!4905189 m!5913934))

(assert (=> b!4905189 m!5913934))

(assert (=> b!4905188 m!5914192))

(assert (=> b!4905188 m!5914192))

(assert (=> b!4905188 m!5914192))

(assert (=> b!4905188 m!5914192))

(declare-fun m!5914334 () Bool)

(assert (=> b!4905188 m!5914334))

(assert (=> bm!340356 d!1576305))

(declare-fun d!1576307 () Bool)

(assert (=> d!1576307 true))

(declare-fun lambda!244475 () Int)

(declare-fun order!25751 () Int)

(declare-fun dynLambda!22821 (Int Int) Int)

(assert (=> d!1576307 (< (dynLambda!22812 order!25745 (toValue!11151 (transformation!8232 rule!164))) (dynLambda!22821 order!25751 lambda!244475))))

(declare-fun Forall2!1278 (Int) Bool)

(assert (=> d!1576307 (= (equivClasses!3486 (toChars!11010 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))) (Forall2!1278 lambda!244475))))

(declare-fun bs!1177016 () Bool)

(assert (= bs!1177016 d!1576307))

(declare-fun m!5914336 () Bool)

(assert (=> bs!1177016 m!5914336))

(assert (=> b!4904988 d!1576307))

(declare-fun d!1576309 () Bool)

(declare-fun e!3066258 () Bool)

(assert (=> d!1576309 e!3066258))

(declare-fun res!2095297 () Bool)

(assert (=> d!1576309 (=> (not res!2095297) (not e!3066258))))

(declare-fun lt!2012336 () BalanceConc!29030)

(assert (=> d!1576309 (= res!2095297 (= (list!17810 lt!2012336) lt!2012078))))

(declare-fun fromList!939 (List!56663) Conc!14800)

(assert (=> d!1576309 (= lt!2012336 (BalanceConc!29031 (fromList!939 lt!2012078)))))

(assert (=> d!1576309 (= (fromListB!2703 lt!2012078) lt!2012336)))

(declare-fun b!4905196 () Bool)

(assert (=> b!4905196 (= e!3066258 (isBalanced!4032 (fromList!939 lt!2012078)))))

(assert (= (and d!1576309 res!2095297) b!4905196))

(declare-fun m!5914338 () Bool)

(assert (=> d!1576309 m!5914338))

(declare-fun m!5914340 () Bool)

(assert (=> d!1576309 m!5914340))

(assert (=> b!4905196 m!5914340))

(assert (=> b!4905196 m!5914340))

(declare-fun m!5914342 () Bool)

(assert (=> b!4905196 m!5914342))

(assert (=> d!1576271 d!1576309))

(declare-fun d!1576311 () Bool)

(declare-fun c!833696 () Bool)

(assert (=> d!1576311 (= c!833696 ((_ is Node!14800) (left!41158 (c!833614 input!1509))))))

(declare-fun e!3066259 () Bool)

(assert (=> d!1576311 (= (inv!72993 (left!41158 (c!833614 input!1509))) e!3066259)))

(declare-fun b!4905197 () Bool)

(assert (=> b!4905197 (= e!3066259 (inv!72999 (left!41158 (c!833614 input!1509))))))

(declare-fun b!4905198 () Bool)

(declare-fun e!3066260 () Bool)

(assert (=> b!4905198 (= e!3066259 e!3066260)))

(declare-fun res!2095298 () Bool)

(assert (=> b!4905198 (= res!2095298 (not ((_ is Leaf!24633) (left!41158 (c!833614 input!1509)))))))

(assert (=> b!4905198 (=> res!2095298 e!3066260)))

(declare-fun b!4905199 () Bool)

(assert (=> b!4905199 (= e!3066260 (inv!73000 (left!41158 (c!833614 input!1509))))))

(assert (= (and d!1576311 c!833696) b!4905197))

(assert (= (and d!1576311 (not c!833696)) b!4905198))

(assert (= (and b!4905198 (not res!2095298)) b!4905199))

(declare-fun m!5914344 () Bool)

(assert (=> b!4905197 m!5914344))

(declare-fun m!5914346 () Bool)

(assert (=> b!4905199 m!5914346))

(assert (=> b!4905143 d!1576311))

(declare-fun d!1576313 () Bool)

(declare-fun c!833697 () Bool)

(assert (=> d!1576313 (= c!833697 ((_ is Node!14800) (right!41488 (c!833614 input!1509))))))

(declare-fun e!3066261 () Bool)

(assert (=> d!1576313 (= (inv!72993 (right!41488 (c!833614 input!1509))) e!3066261)))

(declare-fun b!4905200 () Bool)

(assert (=> b!4905200 (= e!3066261 (inv!72999 (right!41488 (c!833614 input!1509))))))

(declare-fun b!4905201 () Bool)

(declare-fun e!3066262 () Bool)

(assert (=> b!4905201 (= e!3066261 e!3066262)))

(declare-fun res!2095299 () Bool)

(assert (=> b!4905201 (= res!2095299 (not ((_ is Leaf!24633) (right!41488 (c!833614 input!1509)))))))

(assert (=> b!4905201 (=> res!2095299 e!3066262)))

(declare-fun b!4905202 () Bool)

(assert (=> b!4905202 (= e!3066262 (inv!73000 (right!41488 (c!833614 input!1509))))))

(assert (= (and d!1576313 c!833697) b!4905200))

(assert (= (and d!1576313 (not c!833697)) b!4905201))

(assert (= (and b!4905201 (not res!2095299)) b!4905202))

(declare-fun m!5914348 () Bool)

(assert (=> b!4905200 m!5914348))

(declare-fun m!5914350 () Bool)

(assert (=> b!4905202 m!5914350))

(assert (=> b!4905143 d!1576313))

(assert (=> b!4905105 d!1576307))

(declare-fun d!1576315 () Bool)

(assert (=> d!1576315 true))

(assert (=> d!1576315 true))

(declare-fun res!2095302 () Bool)

(assert (=> d!1576315 (= (choose!35831 lambda!244466) res!2095302)))

(assert (=> d!1576197 d!1576315))

(assert (=> d!1576201 d!1576209))

(declare-fun d!1576317 () Bool)

(assert (=> d!1576317 (= (list!17810 (_1!33699 lt!2012179)) (list!17812 (c!833614 (_1!33699 lt!2012179))))))

(declare-fun bs!1177017 () Bool)

(assert (= bs!1177017 d!1576317))

(declare-fun m!5914352 () Bool)

(assert (=> bs!1177017 m!5914352))

(assert (=> d!1576201 d!1576317))

(declare-fun b!4905239 () Bool)

(declare-fun e!3066293 () Bool)

(declare-fun call!340377 () Bool)

(assert (=> b!4905239 (= e!3066293 call!340377)))

(declare-fun c!833707 () Bool)

(declare-fun call!340376 () Bool)

(declare-fun bm!340370 () Bool)

(declare-fun c!833706 () Bool)

(assert (=> bm!340370 (= call!340376 (validRegex!5900 (ite c!833707 (reg!13636 (regex!8232 rule!164)) (ite c!833706 (regOne!27127 (regex!8232 rule!164)) (regTwo!27126 (regex!8232 rule!164))))))))

(declare-fun b!4905240 () Bool)

(declare-fun res!2095323 () Bool)

(declare-fun e!3066297 () Bool)

(assert (=> b!4905240 (=> res!2095323 e!3066297)))

(assert (=> b!4905240 (= res!2095323 (not ((_ is Concat!21849) (regex!8232 rule!164))))))

(declare-fun e!3066296 () Bool)

(assert (=> b!4905240 (= e!3066296 e!3066297)))

(declare-fun b!4905241 () Bool)

(declare-fun e!3066294 () Bool)

(declare-fun e!3066295 () Bool)

(assert (=> b!4905241 (= e!3066294 e!3066295)))

(assert (=> b!4905241 (= c!833707 ((_ is Star!13307) (regex!8232 rule!164)))))

(declare-fun b!4905242 () Bool)

(declare-fun e!3066291 () Bool)

(declare-fun call!340375 () Bool)

(assert (=> b!4905242 (= e!3066291 call!340375)))

(declare-fun b!4905243 () Bool)

(assert (=> b!4905243 (= e!3066297 e!3066293)))

(declare-fun res!2095324 () Bool)

(assert (=> b!4905243 (=> (not res!2095324) (not e!3066293))))

(assert (=> b!4905243 (= res!2095324 call!340375)))

(declare-fun b!4905244 () Bool)

(declare-fun e!3066292 () Bool)

(assert (=> b!4905244 (= e!3066292 call!340376)))

(declare-fun d!1576319 () Bool)

(declare-fun res!2095325 () Bool)

(assert (=> d!1576319 (=> res!2095325 e!3066294)))

(assert (=> d!1576319 (= res!2095325 ((_ is ElementMatch!13307) (regex!8232 rule!164)))))

(assert (=> d!1576319 (= (validRegex!5900 (regex!8232 rule!164)) e!3066294)))

(declare-fun bm!340371 () Bool)

(assert (=> bm!340371 (= call!340377 call!340376)))

(declare-fun b!4905245 () Bool)

(declare-fun res!2095327 () Bool)

(assert (=> b!4905245 (=> (not res!2095327) (not e!3066291))))

(assert (=> b!4905245 (= res!2095327 call!340377)))

(assert (=> b!4905245 (= e!3066296 e!3066291)))

(declare-fun b!4905246 () Bool)

(assert (=> b!4905246 (= e!3066295 e!3066296)))

(assert (=> b!4905246 (= c!833706 ((_ is Union!13307) (regex!8232 rule!164)))))

(declare-fun bm!340372 () Bool)

(assert (=> bm!340372 (= call!340375 (validRegex!5900 (ite c!833706 (regTwo!27127 (regex!8232 rule!164)) (regOne!27126 (regex!8232 rule!164)))))))

(declare-fun b!4905247 () Bool)

(assert (=> b!4905247 (= e!3066295 e!3066292)))

(declare-fun res!2095326 () Bool)

(assert (=> b!4905247 (= res!2095326 (not (nullable!4573 (reg!13636 (regex!8232 rule!164)))))))

(assert (=> b!4905247 (=> (not res!2095326) (not e!3066292))))

(assert (= (and d!1576319 (not res!2095325)) b!4905241))

(assert (= (and b!4905241 c!833707) b!4905247))

(assert (= (and b!4905241 (not c!833707)) b!4905246))

(assert (= (and b!4905247 res!2095326) b!4905244))

(assert (= (and b!4905246 c!833706) b!4905245))

(assert (= (and b!4905246 (not c!833706)) b!4905240))

(assert (= (and b!4905245 res!2095327) b!4905242))

(assert (= (and b!4905240 (not res!2095323)) b!4905243))

(assert (= (and b!4905243 res!2095324) b!4905239))

(assert (= (or b!4905242 b!4905243) bm!340372))

(assert (= (or b!4905245 b!4905239) bm!340371))

(assert (= (or b!4905244 bm!340371) bm!340370))

(declare-fun m!5914356 () Bool)

(assert (=> bm!340370 m!5914356))

(declare-fun m!5914358 () Bool)

(assert (=> bm!340372 m!5914358))

(declare-fun m!5914360 () Bool)

(assert (=> b!4905247 m!5914360))

(assert (=> d!1576201 d!1576319))

(declare-fun d!1576325 () Bool)

(assert (=> d!1576325 (= (list!17810 (_2!33699 lt!2012179)) (list!17812 (c!833614 (_2!33699 lt!2012179))))))

(declare-fun bs!1177019 () Bool)

(assert (= bs!1177019 d!1576325))

(declare-fun m!5914362 () Bool)

(assert (=> bs!1177019 m!5914362))

(assert (=> d!1576201 d!1576325))

(declare-fun d!1576327 () Bool)

(declare-fun lt!2012356 () tuple2!60788)

(assert (=> d!1576327 (= (++!12261 (_1!33697 lt!2012356) (_2!33697 lt!2012356)) (list!17810 input!1509))))

(declare-fun sizeTr!347 (List!56663 Int) Int)

(assert (=> d!1576327 (= lt!2012356 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 0 (list!17810 input!1509) (list!17810 input!1509) (sizeTr!347 (list!17810 input!1509) 0)))))

(declare-fun lt!2012354 () Unit!146695)

(declare-fun lt!2012360 () Unit!146695)

(assert (=> d!1576327 (= lt!2012354 lt!2012360)))

(declare-fun lt!2012355 () List!56663)

(declare-fun lt!2012358 () Int)

(assert (=> d!1576327 (= (sizeTr!347 lt!2012355 lt!2012358) (+ (size!37272 lt!2012355) lt!2012358))))

(declare-fun lemmaSizeTrEqualsSize!346 (List!56663 Int) Unit!146695)

(assert (=> d!1576327 (= lt!2012360 (lemmaSizeTrEqualsSize!346 lt!2012355 lt!2012358))))

(assert (=> d!1576327 (= lt!2012358 0)))

(assert (=> d!1576327 (= lt!2012355 Nil!56539)))

(declare-fun lt!2012359 () Unit!146695)

(declare-fun lt!2012353 () Unit!146695)

(assert (=> d!1576327 (= lt!2012359 lt!2012353)))

(declare-fun lt!2012357 () Int)

(assert (=> d!1576327 (= (sizeTr!347 (list!17810 input!1509) lt!2012357) (+ (size!37272 (list!17810 input!1509)) lt!2012357))))

(assert (=> d!1576327 (= lt!2012353 (lemmaSizeTrEqualsSize!346 (list!17810 input!1509) lt!2012357))))

(assert (=> d!1576327 (= lt!2012357 0)))

(assert (=> d!1576327 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576327 (= (findLongestMatch!1663 (regex!8232 rule!164) (list!17810 input!1509)) lt!2012356)))

(declare-fun bs!1177021 () Bool)

(assert (= bs!1177021 d!1576327))

(assert (=> bs!1177021 m!5913940))

(declare-fun m!5914372 () Bool)

(assert (=> bs!1177021 m!5914372))

(assert (=> bs!1177021 m!5913940))

(assert (=> bs!1177021 m!5913940))

(declare-fun m!5914374 () Bool)

(assert (=> bs!1177021 m!5914374))

(declare-fun m!5914376 () Bool)

(assert (=> bs!1177021 m!5914376))

(declare-fun m!5914378 () Bool)

(assert (=> bs!1177021 m!5914378))

(assert (=> bs!1177021 m!5913940))

(declare-fun m!5914380 () Bool)

(assert (=> bs!1177021 m!5914380))

(assert (=> bs!1177021 m!5913980))

(declare-fun m!5914382 () Bool)

(assert (=> bs!1177021 m!5914382))

(declare-fun m!5914384 () Bool)

(assert (=> bs!1177021 m!5914384))

(assert (=> bs!1177021 m!5913940))

(assert (=> bs!1177021 m!5914374))

(assert (=> bs!1177021 m!5913940))

(declare-fun m!5914386 () Bool)

(assert (=> bs!1177021 m!5914386))

(declare-fun m!5914388 () Bool)

(assert (=> bs!1177021 m!5914388))

(assert (=> d!1576201 d!1576327))

(declare-fun d!1576333 () Bool)

(declare-fun res!2095335 () tuple2!60792)

(assert (=> d!1576333 (= (tuple2!60789 (list!17810 (_1!33699 res!2095335)) (list!17810 (_2!33699 res!2095335))) (findLongestMatch!1663 (regex!8232 rule!164) (list!17810 input!1509)))))

(declare-fun e!3066310 () Bool)

(declare-fun e!3066309 () Bool)

(assert (=> d!1576333 (and (inv!72995 (_1!33699 res!2095335)) e!3066310 (inv!72995 (_2!33699 res!2095335)) e!3066309)))

(assert (=> d!1576333 (= (choose!35832 (regex!8232 rule!164) input!1509) res!2095335)))

(declare-fun b!4905261 () Bool)

(declare-fun tp!1379941 () Bool)

(assert (=> b!4905261 (= e!3066310 (and (inv!72993 (c!833614 (_1!33699 res!2095335))) tp!1379941))))

(declare-fun b!4905262 () Bool)

(declare-fun tp!1379940 () Bool)

(assert (=> b!4905262 (= e!3066309 (and (inv!72993 (c!833614 (_2!33699 res!2095335))) tp!1379940))))

(assert (= d!1576333 b!4905261))

(assert (= d!1576333 b!4905262))

(assert (=> d!1576333 m!5913940))

(declare-fun m!5914408 () Bool)

(assert (=> d!1576333 m!5914408))

(declare-fun m!5914410 () Bool)

(assert (=> d!1576333 m!5914410))

(declare-fun m!5914412 () Bool)

(assert (=> d!1576333 m!5914412))

(declare-fun m!5914414 () Bool)

(assert (=> d!1576333 m!5914414))

(assert (=> d!1576333 m!5913940))

(assert (=> d!1576333 m!5914030))

(declare-fun m!5914416 () Bool)

(assert (=> b!4905261 m!5914416))

(declare-fun m!5914418 () Bool)

(assert (=> b!4905262 m!5914418))

(assert (=> d!1576201 d!1576333))

(declare-fun d!1576337 () Bool)

(assert (=> d!1576337 (= (Forall!1729 lambda!244472) (choose!35831 lambda!244472))))

(declare-fun bs!1177023 () Bool)

(assert (= bs!1177023 d!1576337))

(declare-fun m!5914420 () Bool)

(assert (=> bs!1177023 m!5914420))

(assert (=> d!1576243 d!1576337))

(declare-fun b!4905306 () Bool)

(declare-fun c!833728 () Bool)

(assert (=> b!4905306 (= c!833728 (nullable!4573 (regOne!27126 (regex!8232 rule!164))))))

(declare-fun e!3066339 () Regex!13307)

(declare-fun e!3066337 () Regex!13307)

(assert (=> b!4905306 (= e!3066339 e!3066337)))

(declare-fun call!340391 () Regex!13307)

(declare-fun bm!340386 () Bool)

(declare-fun c!833727 () Bool)

(assert (=> bm!340386 (= call!340391 (derivativeStep!3893 (ite c!833727 (regTwo!27127 (regex!8232 rule!164)) (regTwo!27126 (regex!8232 rule!164))) call!340359))))

(declare-fun b!4905307 () Bool)

(declare-fun e!3066340 () Regex!13307)

(assert (=> b!4905307 (= e!3066340 e!3066339)))

(declare-fun c!833729 () Bool)

(assert (=> b!4905307 (= c!833729 ((_ is Star!13307) (regex!8232 rule!164)))))

(declare-fun call!340394 () Regex!13307)

(declare-fun bm!340387 () Bool)

(assert (=> bm!340387 (= call!340394 (derivativeStep!3893 (ite c!833727 (regOne!27127 (regex!8232 rule!164)) (ite c!833729 (reg!13636 (regex!8232 rule!164)) (regOne!27126 (regex!8232 rule!164)))) call!340359))))

(declare-fun bm!340388 () Bool)

(declare-fun call!340392 () Regex!13307)

(assert (=> bm!340388 (= call!340392 call!340394)))

(declare-fun b!4905308 () Bool)

(assert (=> b!4905308 (= c!833727 ((_ is Union!13307) (regex!8232 rule!164)))))

(declare-fun e!3066338 () Regex!13307)

(assert (=> b!4905308 (= e!3066338 e!3066340)))

(declare-fun b!4905309 () Bool)

(declare-fun e!3066341 () Regex!13307)

(assert (=> b!4905309 (= e!3066341 e!3066338)))

(declare-fun c!833731 () Bool)

(assert (=> b!4905309 (= c!833731 ((_ is ElementMatch!13307) (regex!8232 rule!164)))))

(declare-fun b!4905310 () Bool)

(declare-fun call!340393 () Regex!13307)

(assert (=> b!4905310 (= e!3066337 (Union!13307 (Concat!21849 call!340393 (regTwo!27126 (regex!8232 rule!164))) EmptyLang!13307))))

(declare-fun b!4905311 () Bool)

(assert (=> b!4905311 (= e!3066340 (Union!13307 call!340394 call!340391))))

(declare-fun b!4905312 () Bool)

(assert (=> b!4905312 (= e!3066337 (Union!13307 (Concat!21849 call!340393 (regTwo!27126 (regex!8232 rule!164))) call!340391))))

(declare-fun d!1576339 () Bool)

(declare-fun lt!2012391 () Regex!13307)

(assert (=> d!1576339 (validRegex!5900 lt!2012391)))

(assert (=> d!1576339 (= lt!2012391 e!3066341)))

(declare-fun c!833730 () Bool)

(assert (=> d!1576339 (= c!833730 (or ((_ is EmptyExpr!13307) (regex!8232 rule!164)) ((_ is EmptyLang!13307) (regex!8232 rule!164))))))

(assert (=> d!1576339 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576339 (= (derivativeStep!3893 (regex!8232 rule!164) call!340359) lt!2012391)))

(declare-fun bm!340389 () Bool)

(assert (=> bm!340389 (= call!340393 call!340392)))

(declare-fun b!4905313 () Bool)

(assert (=> b!4905313 (= e!3066338 (ite (= call!340359 (c!833613 (regex!8232 rule!164))) EmptyExpr!13307 EmptyLang!13307))))

(declare-fun b!4905314 () Bool)

(assert (=> b!4905314 (= e!3066339 (Concat!21849 call!340392 (regex!8232 rule!164)))))

(declare-fun b!4905315 () Bool)

(assert (=> b!4905315 (= e!3066341 EmptyLang!13307)))

(assert (= (and d!1576339 c!833730) b!4905315))

(assert (= (and d!1576339 (not c!833730)) b!4905309))

(assert (= (and b!4905309 c!833731) b!4905313))

(assert (= (and b!4905309 (not c!833731)) b!4905308))

(assert (= (and b!4905308 c!833727) b!4905311))

(assert (= (and b!4905308 (not c!833727)) b!4905307))

(assert (= (and b!4905307 c!833729) b!4905314))

(assert (= (and b!4905307 (not c!833729)) b!4905306))

(assert (= (and b!4905306 c!833728) b!4905312))

(assert (= (and b!4905306 (not c!833728)) b!4905310))

(assert (= (or b!4905312 b!4905310) bm!340389))

(assert (= (or b!4905314 bm!340389) bm!340388))

(assert (= (or b!4905311 bm!340388) bm!340387))

(assert (= (or b!4905311 b!4905312) bm!340386))

(declare-fun m!5914446 () Bool)

(assert (=> b!4905306 m!5914446))

(declare-fun m!5914450 () Bool)

(assert (=> bm!340386 m!5914450))

(declare-fun m!5914452 () Bool)

(assert (=> bm!340387 m!5914452))

(declare-fun m!5914454 () Bool)

(assert (=> d!1576339 m!5914454))

(assert (=> d!1576339 m!5913980))

(assert (=> bm!340355 d!1576339))

(assert (=> d!1576195 d!1576319))

(assert (=> b!4904793 d!1576193))

(assert (=> bm!340354 d!1576303))

(assert (=> b!4904906 d!1576303))

(declare-fun d!1576353 () Bool)

(assert (=> d!1576353 (= (isEmpty!30410 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))) ((_ is Nil!56539) (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(assert (=> d!1576213 d!1576353))

(assert (=> d!1576213 d!1576319))

(declare-fun d!1576355 () Bool)

(declare-fun e!3066355 () Bool)

(assert (=> d!1576355 e!3066355))

(declare-fun res!2095349 () Bool)

(assert (=> d!1576355 (=> res!2095349 e!3066355)))

(assert (=> d!1576355 (= res!2095349 (isEmpty!30410 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(assert (=> d!1576355 true))

(declare-fun _$92!506 () Unit!146695)

(assert (=> d!1576355 (= (choose!35833 (regex!8232 rule!164) lt!2012081) _$92!506)))

(declare-fun b!4905337 () Bool)

(assert (=> b!4905337 (= e!3066355 (matchR!6574 (regex!8232 rule!164) (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(assert (= (and d!1576355 (not res!2095349)) b!4905337))

(assert (=> d!1576355 m!5913930))

(assert (=> d!1576355 m!5913934))

(assert (=> d!1576355 m!5913930))

(assert (=> d!1576355 m!5913934))

(assert (=> d!1576355 m!5913936))

(assert (=> d!1576355 m!5914080))

(assert (=> b!4905337 m!5913930))

(assert (=> b!4905337 m!5913934))

(assert (=> b!4905337 m!5913930))

(assert (=> b!4905337 m!5913934))

(assert (=> b!4905337 m!5913936))

(assert (=> b!4905337 m!5914084))

(assert (=> d!1576213 d!1576355))

(assert (=> d!1576213 d!1576237))

(assert (=> d!1576213 d!1576239))

(assert (=> d!1576213 d!1576245))

(declare-fun d!1576377 () Bool)

(declare-fun lt!2012398 () Int)

(assert (=> d!1576377 (>= lt!2012398 0)))

(declare-fun e!3066356 () Int)

(assert (=> d!1576377 (= lt!2012398 e!3066356)))

(declare-fun c!833738 () Bool)

(assert (=> d!1576377 (= c!833738 ((_ is Nil!56539) (_2!33698 (get!19554 lt!2012317))))))

(assert (=> d!1576377 (= (size!37272 (_2!33698 (get!19554 lt!2012317))) lt!2012398)))

(declare-fun b!4905338 () Bool)

(assert (=> b!4905338 (= e!3066356 0)))

(declare-fun b!4905339 () Bool)

(assert (=> b!4905339 (= e!3066356 (+ 1 (size!37272 (t!366795 (_2!33698 (get!19554 lt!2012317))))))))

(assert (= (and d!1576377 c!833738) b!4905338))

(assert (= (and d!1576377 (not c!833738)) b!4905339))

(declare-fun m!5914478 () Bool)

(assert (=> b!4905339 m!5914478))

(assert (=> b!4905131 d!1576377))

(declare-fun d!1576379 () Bool)

(assert (=> d!1576379 (= (get!19554 lt!2012317) (v!50062 lt!2012317))))

(assert (=> b!4905131 d!1576379))

(assert (=> b!4905131 d!1576237))

(declare-fun b!4905361 () Bool)

(declare-fun e!3066368 () List!56663)

(assert (=> b!4905361 (= e!3066368 (Cons!56539 (h!62987 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))) (++!12261 (t!366795 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))) (_2!33698 (get!19554 lt!2012317)))))))

(declare-fun b!4905363 () Bool)

(declare-fun e!3066367 () Bool)

(declare-fun lt!2012404 () List!56663)

(assert (=> b!4905363 (= e!3066367 (or (not (= (_2!33698 (get!19554 lt!2012317)) Nil!56539)) (= lt!2012404 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317)))))))))

(declare-fun b!4905360 () Bool)

(assert (=> b!4905360 (= e!3066368 (_2!33698 (get!19554 lt!2012317)))))

(declare-fun b!4905362 () Bool)

(declare-fun res!2095354 () Bool)

(assert (=> b!4905362 (=> (not res!2095354) (not e!3066367))))

(assert (=> b!4905362 (= res!2095354 (= (size!37272 lt!2012404) (+ (size!37272 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))) (size!37272 (_2!33698 (get!19554 lt!2012317))))))))

(declare-fun d!1576381 () Bool)

(assert (=> d!1576381 e!3066367))

(declare-fun res!2095355 () Bool)

(assert (=> d!1576381 (=> (not res!2095355) (not e!3066367))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10037 (List!56663) (InoxSet C!26812))

(assert (=> d!1576381 (= res!2095355 (= (content!10037 lt!2012404) ((_ map or) (content!10037 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))) (content!10037 (_2!33698 (get!19554 lt!2012317))))))))

(assert (=> d!1576381 (= lt!2012404 e!3066368)))

(declare-fun c!833748 () Bool)

(assert (=> d!1576381 (= c!833748 ((_ is Nil!56539) (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))))))

(assert (=> d!1576381 (= (++!12261 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317)))) (_2!33698 (get!19554 lt!2012317))) lt!2012404)))

(assert (= (and d!1576381 c!833748) b!4905360))

(assert (= (and d!1576381 (not c!833748)) b!4905361))

(assert (= (and d!1576381 res!2095355) b!4905362))

(assert (= (and b!4905362 res!2095354) b!4905363))

(declare-fun m!5914494 () Bool)

(assert (=> b!4905361 m!5914494))

(declare-fun m!5914496 () Bool)

(assert (=> b!4905362 m!5914496))

(assert (=> b!4905362 m!5914252))

(declare-fun m!5914498 () Bool)

(assert (=> b!4905362 m!5914498))

(assert (=> b!4905362 m!5914264))

(declare-fun m!5914500 () Bool)

(assert (=> d!1576381 m!5914500))

(assert (=> d!1576381 m!5914252))

(declare-fun m!5914502 () Bool)

(assert (=> d!1576381 m!5914502))

(declare-fun m!5914504 () Bool)

(assert (=> d!1576381 m!5914504))

(assert (=> b!4905129 d!1576381))

(declare-fun d!1576387 () Bool)

(assert (=> d!1576387 (= (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317)))) (list!17812 (c!833614 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))))))

(declare-fun bs!1177031 () Bool)

(assert (= bs!1177031 d!1576387))

(declare-fun m!5914506 () Bool)

(assert (=> bs!1177031 m!5914506))

(assert (=> b!4905129 d!1576387))

(declare-fun d!1576389 () Bool)

(declare-fun lt!2012408 () BalanceConc!29030)

(assert (=> d!1576389 (= (list!17810 lt!2012408) (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317))))))

(assert (=> d!1576389 (= lt!2012408 (dynLambda!22820 (toChars!11010 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317))))) (value!263744 (_1!33698 (get!19554 lt!2012317)))))))

(assert (=> d!1576389 (= (charsOf!5388 (_1!33698 (get!19554 lt!2012317))) lt!2012408)))

(declare-fun b_lambda!195341 () Bool)

(assert (=> (not b_lambda!195341) (not d!1576389)))

(declare-fun t!366817 () Bool)

(declare-fun tb!259895 () Bool)

(assert (=> (and b!4904796 (= (toChars!11010 (transformation!8232 rule!164)) (toChars!11010 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317)))))) t!366817) tb!259895))

(declare-fun b!4905366 () Bool)

(declare-fun e!3066369 () Bool)

(declare-fun tp!1379948 () Bool)

(assert (=> b!4905366 (= e!3066369 (and (inv!72993 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317))))) (value!263744 (_1!33698 (get!19554 lt!2012317)))))) tp!1379948))))

(declare-fun result!323642 () Bool)

(assert (=> tb!259895 (= result!323642 (and (inv!72995 (dynLambda!22820 (toChars!11010 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317))))) (value!263744 (_1!33698 (get!19554 lt!2012317))))) e!3066369))))

(assert (= tb!259895 b!4905366))

(declare-fun m!5914508 () Bool)

(assert (=> b!4905366 m!5914508))

(declare-fun m!5914510 () Bool)

(assert (=> tb!259895 m!5914510))

(assert (=> d!1576389 t!366817))

(declare-fun b_and!346355 () Bool)

(assert (= b_and!346351 (and (=> t!366817 result!323642) b_and!346355)))

(declare-fun m!5914512 () Bool)

(assert (=> d!1576389 m!5914512))

(declare-fun m!5914514 () Bool)

(assert (=> d!1576389 m!5914514))

(assert (=> b!4905129 d!1576389))

(assert (=> b!4905129 d!1576379))

(declare-fun d!1576391 () Bool)

(declare-fun lt!2012409 () Int)

(assert (=> d!1576391 (>= lt!2012409 0)))

(declare-fun e!3066372 () Int)

(assert (=> d!1576391 (= lt!2012409 e!3066372)))

(declare-fun c!833749 () Bool)

(assert (=> d!1576391 (= c!833749 ((_ is Nil!56539) (list!17810 (_1!33699 lt!2012076))))))

(assert (=> d!1576391 (= (size!37272 (list!17810 (_1!33699 lt!2012076))) lt!2012409)))

(declare-fun b!4905369 () Bool)

(assert (=> b!4905369 (= e!3066372 0)))

(declare-fun b!4905370 () Bool)

(assert (=> b!4905370 (= e!3066372 (+ 1 (size!37272 (t!366795 (list!17810 (_1!33699 lt!2012076))))))))

(assert (= (and d!1576391 c!833749) b!4905369))

(assert (= (and d!1576391 (not c!833749)) b!4905370))

(declare-fun m!5914516 () Bool)

(assert (=> b!4905370 m!5914516))

(assert (=> d!1576285 d!1576391))

(assert (=> d!1576285 d!1576277))

(declare-fun d!1576393 () Bool)

(declare-fun lt!2012412 () Int)

(assert (=> d!1576393 (= lt!2012412 (size!37272 (list!17812 (c!833614 (_1!33699 lt!2012076)))))))

(assert (=> d!1576393 (= lt!2012412 (ite ((_ is Empty!14800) (c!833614 (_1!33699 lt!2012076))) 0 (ite ((_ is Leaf!24633) (c!833614 (_1!33699 lt!2012076))) (csize!29831 (c!833614 (_1!33699 lt!2012076))) (csize!29830 (c!833614 (_1!33699 lt!2012076))))))))

(assert (=> d!1576393 (= (size!37274 (c!833614 (_1!33699 lt!2012076))) lt!2012412)))

(declare-fun bs!1177035 () Bool)

(assert (= bs!1177035 d!1576393))

(assert (=> bs!1177035 m!5914276))

(assert (=> bs!1177035 m!5914276))

(declare-fun m!5914534 () Bool)

(assert (=> bs!1177035 m!5914534))

(assert (=> d!1576285 d!1576393))

(declare-fun b!4905374 () Bool)

(declare-fun e!3066377 () List!56663)

(assert (=> b!4905374 (= e!3066377 (Cons!56539 (h!62987 Nil!56539) (++!12261 (t!366795 Nil!56539) (Cons!56539 lt!2012299 Nil!56539))))))

(declare-fun b!4905376 () Bool)

(declare-fun e!3066376 () Bool)

(declare-fun lt!2012413 () List!56663)

(assert (=> b!4905376 (= e!3066376 (or (not (= (Cons!56539 lt!2012299 Nil!56539) Nil!56539)) (= lt!2012413 Nil!56539)))))

(declare-fun b!4905373 () Bool)

(assert (=> b!4905373 (= e!3066377 (Cons!56539 lt!2012299 Nil!56539))))

(declare-fun b!4905375 () Bool)

(declare-fun res!2095356 () Bool)

(assert (=> b!4905375 (=> (not res!2095356) (not e!3066376))))

(assert (=> b!4905375 (= res!2095356 (= (size!37272 lt!2012413) (+ (size!37272 Nil!56539) (size!37272 (Cons!56539 lt!2012299 Nil!56539)))))))

(declare-fun d!1576403 () Bool)

(assert (=> d!1576403 e!3066376))

(declare-fun res!2095357 () Bool)

(assert (=> d!1576403 (=> (not res!2095357) (not e!3066376))))

(assert (=> d!1576403 (= res!2095357 (= (content!10037 lt!2012413) ((_ map or) (content!10037 Nil!56539) (content!10037 (Cons!56539 lt!2012299 Nil!56539)))))))

(assert (=> d!1576403 (= lt!2012413 e!3066377)))

(declare-fun c!833750 () Bool)

(assert (=> d!1576403 (= c!833750 ((_ is Nil!56539) Nil!56539))))

(assert (=> d!1576403 (= (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539)) lt!2012413)))

(assert (= (and d!1576403 c!833750) b!4905373))

(assert (= (and d!1576403 (not c!833750)) b!4905374))

(assert (= (and d!1576403 res!2095357) b!4905375))

(assert (= (and b!4905375 res!2095356) b!4905376))

(declare-fun m!5914538 () Bool)

(assert (=> b!4905374 m!5914538))

(declare-fun m!5914540 () Bool)

(assert (=> b!4905375 m!5914540))

(assert (=> b!4905375 m!5913930))

(declare-fun m!5914542 () Bool)

(assert (=> b!4905375 m!5914542))

(declare-fun m!5914544 () Bool)

(assert (=> d!1576403 m!5914544))

(declare-fun m!5914546 () Bool)

(assert (=> d!1576403 m!5914546))

(declare-fun m!5914548 () Bool)

(assert (=> d!1576403 m!5914548))

(assert (=> b!4905090 d!1576403))

(declare-fun d!1576409 () Bool)

(assert (=> d!1576409 (isPrefix!4914 (++!12261 Nil!56539 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539)) lt!2012081)))

(declare-fun lt!2012416 () Unit!146695)

(declare-fun choose!35836 (List!56663 List!56663) Unit!146695)

(assert (=> d!1576409 (= lt!2012416 (choose!35836 Nil!56539 lt!2012081))))

(assert (=> d!1576409 (isPrefix!4914 Nil!56539 lt!2012081)))

(assert (=> d!1576409 (= (lemmaAddHeadSuffixToPrefixStillPrefix!727 Nil!56539 lt!2012081) lt!2012416)))

(declare-fun bs!1177037 () Bool)

(assert (= bs!1177037 d!1576409))

(assert (=> bs!1177037 m!5914218))

(assert (=> bs!1177037 m!5914220))

(declare-fun m!5914564 () Bool)

(assert (=> bs!1177037 m!5914564))

(assert (=> bs!1177037 m!5914212))

(declare-fun m!5914566 () Bool)

(assert (=> bs!1177037 m!5914566))

(assert (=> bs!1177037 m!5914218))

(assert (=> bs!1177037 m!5914212))

(assert (=> bs!1177037 m!5914228))

(assert (=> b!4905090 d!1576409))

(declare-fun b!4905387 () Bool)

(declare-fun e!3066384 () List!56663)

(assert (=> b!4905387 (= e!3066384 (Cons!56539 (h!62987 (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539))) (++!12261 (t!366795 (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539))) lt!2012305)))))

(declare-fun lt!2012419 () List!56663)

(declare-fun b!4905389 () Bool)

(declare-fun e!3066383 () Bool)

(assert (=> b!4905389 (= e!3066383 (or (not (= lt!2012305 Nil!56539)) (= lt!2012419 (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539)))))))

(declare-fun b!4905386 () Bool)

(assert (=> b!4905386 (= e!3066384 lt!2012305)))

(declare-fun b!4905388 () Bool)

(declare-fun res!2095359 () Bool)

(assert (=> b!4905388 (=> (not res!2095359) (not e!3066383))))

(assert (=> b!4905388 (= res!2095359 (= (size!37272 lt!2012419) (+ (size!37272 (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539))) (size!37272 lt!2012305))))))

(declare-fun d!1576417 () Bool)

(assert (=> d!1576417 e!3066383))

(declare-fun res!2095360 () Bool)

(assert (=> d!1576417 (=> (not res!2095360) (not e!3066383))))

(assert (=> d!1576417 (= res!2095360 (= (content!10037 lt!2012419) ((_ map or) (content!10037 (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539))) (content!10037 lt!2012305))))))

(assert (=> d!1576417 (= lt!2012419 e!3066384)))

(declare-fun c!833755 () Bool)

(assert (=> d!1576417 (= c!833755 ((_ is Nil!56539) (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539))))))

(assert (=> d!1576417 (= (++!12261 (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539)) lt!2012305) lt!2012419)))

(assert (= (and d!1576417 c!833755) b!4905386))

(assert (= (and d!1576417 (not c!833755)) b!4905387))

(assert (= (and d!1576417 res!2095360) b!4905388))

(assert (= (and b!4905388 res!2095359) b!4905389))

(declare-fun m!5914568 () Bool)

(assert (=> b!4905387 m!5914568))

(declare-fun m!5914570 () Bool)

(assert (=> b!4905388 m!5914570))

(assert (=> b!4905388 m!5914224))

(declare-fun m!5914572 () Bool)

(assert (=> b!4905388 m!5914572))

(declare-fun m!5914574 () Bool)

(assert (=> b!4905388 m!5914574))

(declare-fun m!5914576 () Bool)

(assert (=> d!1576417 m!5914576))

(assert (=> d!1576417 m!5914224))

(declare-fun m!5914578 () Bool)

(assert (=> d!1576417 m!5914578))

(declare-fun m!5914580 () Bool)

(assert (=> d!1576417 m!5914580))

(assert (=> b!4905090 d!1576417))

(declare-fun d!1576419 () Bool)

(declare-fun lt!2012423 () List!56663)

(assert (=> d!1576419 (= (++!12261 Nil!56539 lt!2012423) lt!2012081)))

(declare-fun e!3066387 () List!56663)

(assert (=> d!1576419 (= lt!2012423 e!3066387)))

(declare-fun c!833758 () Bool)

(assert (=> d!1576419 (= c!833758 ((_ is Cons!56539) Nil!56539))))

(assert (=> d!1576419 (>= (size!37272 lt!2012081) (size!37272 Nil!56539))))

(assert (=> d!1576419 (= (getSuffix!2902 lt!2012081 Nil!56539) lt!2012423)))

(declare-fun b!4905394 () Bool)

(assert (=> b!4905394 (= e!3066387 (getSuffix!2902 (tail!9621 lt!2012081) (t!366795 Nil!56539)))))

(declare-fun b!4905395 () Bool)

(assert (=> b!4905395 (= e!3066387 lt!2012081)))

(assert (= (and d!1576419 c!833758) b!4905394))

(assert (= (and d!1576419 (not c!833758)) b!4905395))

(declare-fun m!5914586 () Bool)

(assert (=> d!1576419 m!5914586))

(assert (=> d!1576419 m!5913934))

(assert (=> d!1576419 m!5913930))

(assert (=> b!4905394 m!5914192))

(assert (=> b!4905394 m!5914192))

(declare-fun m!5914588 () Bool)

(assert (=> b!4905394 m!5914588))

(assert (=> b!4905090 d!1576419))

(declare-fun d!1576423 () Bool)

(assert (=> d!1576423 (= (tail!9621 lt!2012081) (t!366795 lt!2012081))))

(assert (=> b!4905090 d!1576423))

(declare-fun b!4905397 () Bool)

(declare-fun e!3066389 () List!56663)

(assert (=> b!4905397 (= e!3066389 (Cons!56539 (h!62987 Nil!56539) (++!12261 (t!366795 Nil!56539) (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539))))))

(declare-fun b!4905399 () Bool)

(declare-fun e!3066388 () Bool)

(declare-fun lt!2012424 () List!56663)

(assert (=> b!4905399 (= e!3066388 (or (not (= (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539) Nil!56539)) (= lt!2012424 Nil!56539)))))

(declare-fun b!4905396 () Bool)

(assert (=> b!4905396 (= e!3066389 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539))))

(declare-fun b!4905398 () Bool)

(declare-fun res!2095361 () Bool)

(assert (=> b!4905398 (=> (not res!2095361) (not e!3066388))))

(assert (=> b!4905398 (= res!2095361 (= (size!37272 lt!2012424) (+ (size!37272 Nil!56539) (size!37272 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539)))))))

(declare-fun d!1576425 () Bool)

(assert (=> d!1576425 e!3066388))

(declare-fun res!2095362 () Bool)

(assert (=> d!1576425 (=> (not res!2095362) (not e!3066388))))

(assert (=> d!1576425 (= res!2095362 (= (content!10037 lt!2012424) ((_ map or) (content!10037 Nil!56539) (content!10037 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539)))))))

(assert (=> d!1576425 (= lt!2012424 e!3066389)))

(declare-fun c!833759 () Bool)

(assert (=> d!1576425 (= c!833759 ((_ is Nil!56539) Nil!56539))))

(assert (=> d!1576425 (= (++!12261 Nil!56539 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539)) lt!2012424)))

(assert (= (and d!1576425 c!833759) b!4905396))

(assert (= (and d!1576425 (not c!833759)) b!4905397))

(assert (= (and d!1576425 res!2095362) b!4905398))

(assert (= (and b!4905398 res!2095361) b!4905399))

(declare-fun m!5914590 () Bool)

(assert (=> b!4905397 m!5914590))

(declare-fun m!5914592 () Bool)

(assert (=> b!4905398 m!5914592))

(assert (=> b!4905398 m!5913930))

(declare-fun m!5914594 () Bool)

(assert (=> b!4905398 m!5914594))

(declare-fun m!5914596 () Bool)

(assert (=> d!1576425 m!5914596))

(assert (=> d!1576425 m!5914546))

(declare-fun m!5914598 () Bool)

(assert (=> d!1576425 m!5914598))

(assert (=> b!4905090 d!1576425))

(declare-fun b!4905405 () Bool)

(declare-fun res!2095366 () Bool)

(declare-fun e!3066393 () Bool)

(assert (=> b!4905405 (=> (not res!2095366) (not e!3066393))))

(assert (=> b!4905405 (= res!2095366 (= (head!10474 (++!12261 Nil!56539 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539))) (head!10474 lt!2012081)))))

(declare-fun d!1576427 () Bool)

(declare-fun e!3066392 () Bool)

(assert (=> d!1576427 e!3066392))

(declare-fun res!2095363 () Bool)

(assert (=> d!1576427 (=> res!2095363 e!3066392)))

(declare-fun lt!2012427 () Bool)

(assert (=> d!1576427 (= res!2095363 (not lt!2012427))))

(declare-fun e!3066394 () Bool)

(assert (=> d!1576427 (= lt!2012427 e!3066394)))

(declare-fun res!2095364 () Bool)

(assert (=> d!1576427 (=> res!2095364 e!3066394)))

(assert (=> d!1576427 (= res!2095364 ((_ is Nil!56539) (++!12261 Nil!56539 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539))))))

(assert (=> d!1576427 (= (isPrefix!4914 (++!12261 Nil!56539 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539)) lt!2012081) lt!2012427)))

(declare-fun b!4905407 () Bool)

(assert (=> b!4905407 (= e!3066392 (>= (size!37272 lt!2012081) (size!37272 (++!12261 Nil!56539 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539)))))))

(declare-fun b!4905404 () Bool)

(assert (=> b!4905404 (= e!3066394 e!3066393)))

(declare-fun res!2095365 () Bool)

(assert (=> b!4905404 (=> (not res!2095365) (not e!3066393))))

(assert (=> b!4905404 (= res!2095365 (not ((_ is Nil!56539) lt!2012081)))))

(declare-fun b!4905406 () Bool)

(assert (=> b!4905406 (= e!3066393 (isPrefix!4914 (tail!9621 (++!12261 Nil!56539 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) Nil!56539))) (tail!9621 lt!2012081)))))

(assert (= (and d!1576427 (not res!2095364)) b!4905404))

(assert (= (and b!4905404 res!2095365) b!4905405))

(assert (= (and b!4905405 res!2095366) b!4905406))

(assert (= (and d!1576427 (not res!2095363)) b!4905407))

(assert (=> b!4905405 m!5914218))

(declare-fun m!5914600 () Bool)

(assert (=> b!4905405 m!5914600))

(assert (=> b!4905405 m!5914198))

(assert (=> b!4905407 m!5913934))

(assert (=> b!4905407 m!5914218))

(declare-fun m!5914602 () Bool)

(assert (=> b!4905407 m!5914602))

(assert (=> b!4905406 m!5914218))

(declare-fun m!5914604 () Bool)

(assert (=> b!4905406 m!5914604))

(assert (=> b!4905406 m!5914192))

(assert (=> b!4905406 m!5914604))

(assert (=> b!4905406 m!5914192))

(declare-fun m!5914606 () Bool)

(assert (=> b!4905406 m!5914606))

(assert (=> b!4905090 d!1576427))

(declare-fun d!1576429 () Bool)

(assert (=> d!1576429 (<= (size!37272 Nil!56539) (size!37272 lt!2012081))))

(declare-fun lt!2012431 () Unit!146695)

(declare-fun choose!35837 (List!56663 List!56663) Unit!146695)

(assert (=> d!1576429 (= lt!2012431 (choose!35837 Nil!56539 lt!2012081))))

(assert (=> d!1576429 (isPrefix!4914 Nil!56539 lt!2012081)))

(assert (=> d!1576429 (= (lemmaIsPrefixThenSmallerEqSize!639 Nil!56539 lt!2012081) lt!2012431)))

(declare-fun bs!1177039 () Bool)

(assert (= bs!1177039 d!1576429))

(assert (=> bs!1177039 m!5913930))

(assert (=> bs!1177039 m!5913934))

(declare-fun m!5914608 () Bool)

(assert (=> bs!1177039 m!5914608))

(assert (=> bs!1177039 m!5914564))

(assert (=> b!4905090 d!1576429))

(assert (=> b!4905090 d!1576237))

(assert (=> b!4905090 d!1576239))

(declare-fun d!1576431 () Bool)

(assert (=> d!1576431 (= (head!10474 (getSuffix!2902 lt!2012081 Nil!56539)) (h!62987 (getSuffix!2902 lt!2012081 Nil!56539)))))

(assert (=> b!4905090 d!1576431))

(declare-fun d!1576433 () Bool)

(assert (=> d!1576433 (= (++!12261 (++!12261 Nil!56539 (Cons!56539 lt!2012299 Nil!56539)) lt!2012305) lt!2012081)))

(declare-fun lt!2012436 () Unit!146695)

(declare-fun choose!35838 (List!56663 C!26812 List!56663 List!56663) Unit!146695)

(assert (=> d!1576433 (= lt!2012436 (choose!35838 Nil!56539 lt!2012299 lt!2012305 lt!2012081))))

(assert (=> d!1576433 (= (++!12261 Nil!56539 (Cons!56539 lt!2012299 lt!2012305)) lt!2012081)))

(assert (=> d!1576433 (= (lemmaMoveElementToOtherListKeepsConcatEq!1345 Nil!56539 lt!2012299 lt!2012305 lt!2012081) lt!2012436)))

(declare-fun bs!1177040 () Bool)

(assert (= bs!1177040 d!1576433))

(assert (=> bs!1177040 m!5914224))

(assert (=> bs!1177040 m!5914224))

(assert (=> bs!1177040 m!5914226))

(declare-fun m!5914622 () Bool)

(assert (=> bs!1177040 m!5914622))

(declare-fun m!5914624 () Bool)

(assert (=> bs!1177040 m!5914624))

(assert (=> b!4905090 d!1576433))

(declare-fun b!4905421 () Bool)

(declare-fun e!3066402 () List!56663)

(assert (=> b!4905421 (= e!3066402 (Cons!56539 (h!62987 Nil!56539) (++!12261 (t!366795 Nil!56539) (Cons!56539 (head!10474 lt!2012081) Nil!56539))))))

(declare-fun b!4905423 () Bool)

(declare-fun e!3066401 () Bool)

(declare-fun lt!2012437 () List!56663)

(assert (=> b!4905423 (= e!3066401 (or (not (= (Cons!56539 (head!10474 lt!2012081) Nil!56539) Nil!56539)) (= lt!2012437 Nil!56539)))))

(declare-fun b!4905420 () Bool)

(assert (=> b!4905420 (= e!3066402 (Cons!56539 (head!10474 lt!2012081) Nil!56539))))

(declare-fun b!4905422 () Bool)

(declare-fun res!2095373 () Bool)

(assert (=> b!4905422 (=> (not res!2095373) (not e!3066401))))

(assert (=> b!4905422 (= res!2095373 (= (size!37272 lt!2012437) (+ (size!37272 Nil!56539) (size!37272 (Cons!56539 (head!10474 lt!2012081) Nil!56539)))))))

(declare-fun d!1576437 () Bool)

(assert (=> d!1576437 e!3066401))

(declare-fun res!2095374 () Bool)

(assert (=> d!1576437 (=> (not res!2095374) (not e!3066401))))

(assert (=> d!1576437 (= res!2095374 (= (content!10037 lt!2012437) ((_ map or) (content!10037 Nil!56539) (content!10037 (Cons!56539 (head!10474 lt!2012081) Nil!56539)))))))

(assert (=> d!1576437 (= lt!2012437 e!3066402)))

(declare-fun c!833765 () Bool)

(assert (=> d!1576437 (= c!833765 ((_ is Nil!56539) Nil!56539))))

(assert (=> d!1576437 (= (++!12261 Nil!56539 (Cons!56539 (head!10474 lt!2012081) Nil!56539)) lt!2012437)))

(assert (= (and d!1576437 c!833765) b!4905420))

(assert (= (and d!1576437 (not c!833765)) b!4905421))

(assert (= (and d!1576437 res!2095374) b!4905422))

(assert (= (and b!4905422 res!2095373) b!4905423))

(declare-fun m!5914626 () Bool)

(assert (=> b!4905421 m!5914626))

(declare-fun m!5914628 () Bool)

(assert (=> b!4905422 m!5914628))

(assert (=> b!4905422 m!5913930))

(declare-fun m!5914630 () Bool)

(assert (=> b!4905422 m!5914630))

(declare-fun m!5914632 () Bool)

(assert (=> d!1576437 m!5914632))

(assert (=> d!1576437 m!5914546))

(declare-fun m!5914634 () Bool)

(assert (=> d!1576437 m!5914634))

(assert (=> b!4905090 d!1576437))

(declare-fun d!1576439 () Bool)

(assert (=> d!1576439 (= (head!10474 lt!2012081) (h!62987 lt!2012081))))

(assert (=> b!4905090 d!1576439))

(assert (=> bm!340352 d!1576439))

(assert (=> bm!340311 d!1576241))

(declare-fun d!1576441 () Bool)

(assert (not d!1576441))

(assert (=> b!4904996 d!1576441))

(assert (=> b!4905125 d!1576213))

(assert (=> b!4905125 d!1576353))

(declare-fun d!1576443 () Bool)

(declare-fun lt!2012439 () Int)

(assert (=> d!1576443 (= lt!2012439 (size!37272 (list!17810 (seqFromList!5974 (_1!33697 lt!2012316)))))))

(assert (=> d!1576443 (= lt!2012439 (size!37274 (c!833614 (seqFromList!5974 (_1!33697 lt!2012316)))))))

(assert (=> d!1576443 (= (size!37271 (seqFromList!5974 (_1!33697 lt!2012316))) lt!2012439)))

(declare-fun bs!1177041 () Bool)

(assert (= bs!1177041 d!1576443))

(assert (=> bs!1177041 m!5914256))

(declare-fun m!5914640 () Bool)

(assert (=> bs!1177041 m!5914640))

(assert (=> bs!1177041 m!5914640))

(declare-fun m!5914642 () Bool)

(assert (=> bs!1177041 m!5914642))

(declare-fun m!5914644 () Bool)

(assert (=> bs!1177041 m!5914644))

(assert (=> b!4905125 d!1576443))

(declare-fun bs!1177043 () Bool)

(declare-fun d!1576447 () Bool)

(assert (= bs!1177043 (and d!1576447 b!4904797)))

(declare-fun lambda!244484 () Int)

(assert (=> bs!1177043 (= lambda!244484 lambda!244466)))

(declare-fun bs!1177044 () Bool)

(assert (= bs!1177044 (and d!1576447 d!1576243)))

(assert (=> bs!1177044 (= lambda!244484 lambda!244472)))

(declare-fun b!4905438 () Bool)

(declare-fun e!3066410 () Bool)

(assert (=> b!4905438 (= e!3066410 true)))

(assert (=> d!1576447 e!3066410))

(assert (= d!1576447 b!4905438))

(assert (=> b!4905438 (< (dynLambda!22812 order!25745 (toValue!11151 (transformation!8232 rule!164))) (dynLambda!22813 order!25747 lambda!244484))))

(assert (=> b!4905438 (< (dynLambda!22814 order!25749 (toChars!11010 (transformation!8232 rule!164))) (dynLambda!22813 order!25747 lambda!244484))))

(assert (=> d!1576447 (= (list!17810 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 (_1!33697 lt!2012316))))) (list!17810 (seqFromList!5974 (_1!33697 lt!2012316))))))

(declare-fun lt!2012447 () Unit!146695)

(assert (=> d!1576447 (= lt!2012447 (ForallOf!1169 lambda!244484 (seqFromList!5974 (_1!33697 lt!2012316))))))

(assert (=> d!1576447 (= (lemmaSemiInverse!2576 (transformation!8232 rule!164) (seqFromList!5974 (_1!33697 lt!2012316))) lt!2012447)))

(declare-fun b_lambda!195349 () Bool)

(assert (=> (not b_lambda!195349) (not d!1576447)))

(declare-fun t!366824 () Bool)

(declare-fun tb!259901 () Bool)

(assert (=> (and b!4904796 (= (toChars!11010 (transformation!8232 rule!164)) (toChars!11010 (transformation!8232 rule!164))) t!366824) tb!259901))

(declare-fun tp!1379950 () Bool)

(declare-fun e!3066411 () Bool)

(declare-fun b!4905439 () Bool)

(assert (=> b!4905439 (= e!3066411 (and (inv!72993 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 (_1!33697 lt!2012316)))))) tp!1379950))))

(declare-fun result!323648 () Bool)

(assert (=> tb!259901 (= result!323648 (and (inv!72995 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 (_1!33697 lt!2012316))))) e!3066411))))

(assert (= tb!259901 b!4905439))

(declare-fun m!5914674 () Bool)

(assert (=> b!4905439 m!5914674))

(declare-fun m!5914676 () Bool)

(assert (=> tb!259901 m!5914676))

(assert (=> d!1576447 t!366824))

(declare-fun b_and!346363 () Bool)

(assert (= b_and!346355 (and (=> t!366824 result!323648) b_and!346363)))

(declare-fun b_lambda!195351 () Bool)

(assert (=> (not b_lambda!195351) (not d!1576447)))

(declare-fun t!366826 () Bool)

(declare-fun tb!259903 () Bool)

(assert (=> (and b!4904796 (= (toValue!11151 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 rule!164))) t!366826) tb!259903))

(declare-fun result!323650 () Bool)

(assert (=> tb!259903 (= result!323650 (inv!21 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 (_1!33697 lt!2012316)))))))

(declare-fun m!5914678 () Bool)

(assert (=> tb!259903 m!5914678))

(assert (=> d!1576447 t!366826))

(declare-fun b_and!346365 () Bool)

(assert (= b_and!346353 (and (=> t!366826 result!323650) b_and!346365)))

(assert (=> d!1576447 m!5914256))

(declare-fun m!5914680 () Bool)

(assert (=> d!1576447 m!5914680))

(declare-fun m!5914682 () Bool)

(assert (=> d!1576447 m!5914682))

(declare-fun m!5914684 () Bool)

(assert (=> d!1576447 m!5914684))

(declare-fun m!5914686 () Bool)

(assert (=> d!1576447 m!5914686))

(assert (=> d!1576447 m!5914682))

(assert (=> d!1576447 m!5914256))

(assert (=> d!1576447 m!5914686))

(assert (=> d!1576447 m!5914256))

(assert (=> d!1576447 m!5914640))

(assert (=> b!4905125 d!1576447))

(assert (=> b!4905125 d!1576237))

(assert (=> b!4905125 d!1576239))

(assert (=> b!4905125 d!1576245))

(declare-fun d!1576455 () Bool)

(assert (=> d!1576455 (= (seqFromList!5974 (_1!33697 lt!2012316)) (fromListB!2703 (_1!33697 lt!2012316)))))

(declare-fun bs!1177045 () Bool)

(assert (= bs!1177045 d!1576455))

(declare-fun m!5914688 () Bool)

(assert (=> bs!1177045 m!5914688))

(assert (=> b!4905125 d!1576455))

(declare-fun d!1576457 () Bool)

(assert (=> d!1576457 (= (apply!13576 (transformation!8232 rule!164) (seqFromList!5974 (_1!33697 lt!2012316))) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 (_1!33697 lt!2012316))))))

(declare-fun b_lambda!195353 () Bool)

(assert (=> (not b_lambda!195353) (not d!1576457)))

(assert (=> d!1576457 t!366826))

(declare-fun b_and!346367 () Bool)

(assert (= b_and!346365 (and (=> t!366826 result!323650) b_and!346367)))

(assert (=> d!1576457 m!5914256))

(assert (=> d!1576457 m!5914686))

(assert (=> b!4905125 d!1576457))

(assert (=> bm!340359 d!1576423))

(declare-fun d!1576459 () Bool)

(assert (=> d!1576459 (dynLambda!22818 lambda!244466 (_1!33699 lt!2012076))))

(assert (=> d!1576459 true))

(declare-fun _$1!11217 () Unit!146695)

(assert (=> d!1576459 (= (choose!35834 lambda!244466 (_1!33699 lt!2012076)) _$1!11217)))

(declare-fun b_lambda!195355 () Bool)

(assert (=> (not b_lambda!195355) (not d!1576459)))

(declare-fun bs!1177046 () Bool)

(assert (= bs!1177046 d!1576459))

(assert (=> bs!1177046 m!5914272))

(assert (=> d!1576275 d!1576459))

(assert (=> d!1576275 d!1576197))

(declare-fun d!1576461 () Bool)

(assert (=> d!1576461 (= (isEmpty!30410 (_1!33697 lt!2012284)) ((_ is Nil!56539) (_1!33697 lt!2012284)))))

(assert (=> b!4905099 d!1576461))

(declare-fun d!1576463 () Bool)

(declare-fun c!833770 () Bool)

(assert (=> d!1576463 (= c!833770 ((_ is Empty!14800) (c!833614 input!1509)))))

(declare-fun e!3066419 () List!56663)

(assert (=> d!1576463 (= (list!17812 (c!833614 input!1509)) e!3066419)))

(declare-fun b!4905449 () Bool)

(declare-fun e!3066420 () List!56663)

(assert (=> b!4905449 (= e!3066419 e!3066420)))

(declare-fun c!833771 () Bool)

(assert (=> b!4905449 (= c!833771 ((_ is Leaf!24633) (c!833614 input!1509)))))

(declare-fun b!4905450 () Bool)

(assert (=> b!4905450 (= e!3066420 (list!17813 (xs!18116 (c!833614 input!1509))))))

(declare-fun b!4905451 () Bool)

(assert (=> b!4905451 (= e!3066420 (++!12261 (list!17812 (left!41158 (c!833614 input!1509))) (list!17812 (right!41488 (c!833614 input!1509)))))))

(declare-fun b!4905448 () Bool)

(assert (=> b!4905448 (= e!3066419 Nil!56539)))

(assert (= (and d!1576463 c!833770) b!4905448))

(assert (= (and d!1576463 (not c!833770)) b!4905449))

(assert (= (and b!4905449 c!833771) b!4905450))

(assert (= (and b!4905449 (not c!833771)) b!4905451))

(declare-fun m!5914690 () Bool)

(assert (=> b!4905450 m!5914690))

(declare-fun m!5914692 () Bool)

(assert (=> b!4905451 m!5914692))

(declare-fun m!5914694 () Bool)

(assert (=> b!4905451 m!5914694))

(assert (=> b!4905451 m!5914692))

(assert (=> b!4905451 m!5914694))

(declare-fun m!5914696 () Bool)

(assert (=> b!4905451 m!5914696))

(assert (=> d!1576209 d!1576463))

(assert (=> d!1576269 d!1576243))

(declare-fun b!4905452 () Bool)

(declare-fun e!3066422 () Bool)

(declare-fun e!3066424 () Bool)

(assert (=> b!4905452 (= e!3066422 e!3066424)))

(declare-fun res!2095388 () Bool)

(assert (=> b!4905452 (=> res!2095388 e!3066424)))

(declare-fun lt!2012468 () tuple2!60788)

(assert (=> b!4905452 (= res!2095388 (isEmpty!30410 (_1!33697 lt!2012468)))))

(declare-fun bm!340390 () Bool)

(declare-fun call!340397 () C!26812)

(assert (=> bm!340390 (= call!340397 (head!10474 call!340361))))

(declare-fun bm!340391 () Bool)

(declare-fun call!340398 () Unit!146695)

(assert (=> bm!340391 (= call!340398 (lemmaIsPrefixSameLengthThenSameList!1073 lt!2012081 lt!2012303 lt!2012081))))

(declare-fun b!4905453 () Bool)

(declare-fun c!833777 () Bool)

(declare-fun call!340396 () Bool)

(assert (=> b!4905453 (= c!833777 call!340396)))

(declare-fun lt!2012464 () Unit!146695)

(declare-fun lt!2012457 () Unit!146695)

(assert (=> b!4905453 (= lt!2012464 lt!2012457)))

(declare-fun lt!2012477 () List!56663)

(declare-fun lt!2012471 () C!26812)

(assert (=> b!4905453 (= (++!12261 (++!12261 lt!2012303 (Cons!56539 lt!2012471 Nil!56539)) lt!2012477) lt!2012081)))

(assert (=> b!4905453 (= lt!2012457 (lemmaMoveElementToOtherListKeepsConcatEq!1345 lt!2012303 lt!2012471 lt!2012477 lt!2012081))))

(assert (=> b!4905453 (= lt!2012477 (tail!9621 call!340361))))

(assert (=> b!4905453 (= lt!2012471 (head!10474 call!340361))))

(declare-fun lt!2012473 () Unit!146695)

(declare-fun lt!2012450 () Unit!146695)

(assert (=> b!4905453 (= lt!2012473 lt!2012450)))

(assert (=> b!4905453 (isPrefix!4914 (++!12261 lt!2012303 (Cons!56539 (head!10474 (getSuffix!2902 lt!2012081 lt!2012303)) Nil!56539)) lt!2012081)))

(assert (=> b!4905453 (= lt!2012450 (lemmaAddHeadSuffixToPrefixStillPrefix!727 lt!2012303 lt!2012081))))

(declare-fun lt!2012452 () Unit!146695)

(declare-fun lt!2012454 () Unit!146695)

(assert (=> b!4905453 (= lt!2012452 lt!2012454)))

(assert (=> b!4905453 (= lt!2012454 (lemmaAddHeadSuffixToPrefixStillPrefix!727 lt!2012303 lt!2012081))))

(declare-fun lt!2012475 () List!56663)

(assert (=> b!4905453 (= lt!2012475 (++!12261 lt!2012303 (Cons!56539 (head!10474 call!340361) Nil!56539)))))

(declare-fun lt!2012460 () Unit!146695)

(declare-fun e!3066428 () Unit!146695)

(assert (=> b!4905453 (= lt!2012460 e!3066428)))

(declare-fun c!833773 () Bool)

(assert (=> b!4905453 (= c!833773 (= (size!37272 lt!2012303) (size!37272 lt!2012081)))))

(declare-fun lt!2012451 () Unit!146695)

(declare-fun lt!2012470 () Unit!146695)

(assert (=> b!4905453 (= lt!2012451 lt!2012470)))

(assert (=> b!4905453 (<= (size!37272 lt!2012303) (size!37272 lt!2012081))))

(assert (=> b!4905453 (= lt!2012470 (lemmaIsPrefixThenSmallerEqSize!639 lt!2012303 lt!2012081))))

(declare-fun e!3066425 () tuple2!60788)

(declare-fun e!3066426 () tuple2!60788)

(assert (=> b!4905453 (= e!3066425 e!3066426)))

(declare-fun d!1576465 () Bool)

(assert (=> d!1576465 e!3066422))

(declare-fun res!2095387 () Bool)

(assert (=> d!1576465 (=> (not res!2095387) (not e!3066422))))

(assert (=> d!1576465 (= res!2095387 (= (++!12261 (_1!33697 lt!2012468) (_2!33697 lt!2012468)) lt!2012081))))

(declare-fun e!3066427 () tuple2!60788)

(assert (=> d!1576465 (= lt!2012468 e!3066427)))

(declare-fun c!833772 () Bool)

(assert (=> d!1576465 (= c!833772 (lostCause!1101 call!340364))))

(declare-fun lt!2012467 () Unit!146695)

(declare-fun Unit!146705 () Unit!146695)

(assert (=> d!1576465 (= lt!2012467 Unit!146705)))

(assert (=> d!1576465 (= (getSuffix!2902 lt!2012081 lt!2012303) call!340361)))

(declare-fun lt!2012458 () Unit!146695)

(declare-fun lt!2012462 () Unit!146695)

(assert (=> d!1576465 (= lt!2012458 lt!2012462)))

(declare-fun lt!2012465 () List!56663)

(assert (=> d!1576465 (= call!340361 lt!2012465)))

(assert (=> d!1576465 (= lt!2012462 (lemmaSamePrefixThenSameSuffix!2318 lt!2012303 call!340361 lt!2012303 lt!2012465 lt!2012081))))

(assert (=> d!1576465 (= lt!2012465 (getSuffix!2902 lt!2012081 lt!2012303))))

(declare-fun lt!2012459 () Unit!146695)

(declare-fun lt!2012472 () Unit!146695)

(assert (=> d!1576465 (= lt!2012459 lt!2012472)))

(assert (=> d!1576465 (isPrefix!4914 lt!2012303 (++!12261 lt!2012303 call!340361))))

(assert (=> d!1576465 (= lt!2012472 (lemmaConcatTwoListThenFirstIsPrefix!3138 lt!2012303 call!340361))))

(assert (=> d!1576465 (validRegex!5900 call!340364)))

(assert (=> d!1576465 (= (findLongestMatchInner!1795 call!340364 lt!2012303 (+ (size!37272 Nil!56539) 1) call!340361 lt!2012081 (size!37272 lt!2012081)) lt!2012468)))

(declare-fun b!4905454 () Bool)

(assert (=> b!4905454 (= e!3066424 (>= (size!37272 (_1!33697 lt!2012468)) (size!37272 lt!2012303)))))

(declare-fun b!4905455 () Bool)

(declare-fun e!3066423 () tuple2!60788)

(assert (=> b!4905455 (= e!3066423 (tuple2!60789 Nil!56539 lt!2012081))))

(declare-fun b!4905456 () Bool)

(assert (=> b!4905456 (= e!3066427 (tuple2!60789 Nil!56539 lt!2012081))))

(declare-fun bm!340392 () Bool)

(assert (=> bm!340392 (= call!340396 (nullable!4573 call!340364))))

(declare-fun bm!340393 () Bool)

(declare-fun call!340402 () Regex!13307)

(assert (=> bm!340393 (= call!340402 (derivativeStep!3893 call!340364 call!340397))))

(declare-fun b!4905457 () Bool)

(declare-fun Unit!146706 () Unit!146695)

(assert (=> b!4905457 (= e!3066428 Unit!146706)))

(declare-fun lt!2012474 () Unit!146695)

(declare-fun call!340395 () Unit!146695)

(assert (=> b!4905457 (= lt!2012474 call!340395)))

(declare-fun call!340401 () Bool)

(assert (=> b!4905457 call!340401))

(declare-fun lt!2012463 () Unit!146695)

(assert (=> b!4905457 (= lt!2012463 lt!2012474)))

(declare-fun lt!2012469 () Unit!146695)

(assert (=> b!4905457 (= lt!2012469 call!340398)))

(assert (=> b!4905457 (= lt!2012081 lt!2012303)))

(declare-fun lt!2012453 () Unit!146695)

(assert (=> b!4905457 (= lt!2012453 lt!2012469)))

(assert (=> b!4905457 false))

(declare-fun bm!340394 () Bool)

(assert (=> bm!340394 (= call!340401 (isPrefix!4914 lt!2012081 lt!2012081))))

(declare-fun b!4905462 () Bool)

(declare-fun e!3066421 () tuple2!60788)

(declare-fun lt!2012456 () tuple2!60788)

(assert (=> b!4905462 (= e!3066421 lt!2012456)))

(declare-fun b!4905463 () Bool)

(declare-fun call!340400 () tuple2!60788)

(assert (=> b!4905463 (= e!3066426 call!340400)))

(declare-fun bm!340395 () Bool)

(assert (=> bm!340395 (= call!340395 (lemmaIsPrefixRefl!3311 lt!2012081 lt!2012081))))

(declare-fun b!4905464 () Bool)

(declare-fun c!833775 () Bool)

(assert (=> b!4905464 (= c!833775 call!340396)))

(declare-fun lt!2012461 () Unit!146695)

(declare-fun lt!2012476 () Unit!146695)

(assert (=> b!4905464 (= lt!2012461 lt!2012476)))

(assert (=> b!4905464 (= lt!2012081 lt!2012303)))

(assert (=> b!4905464 (= lt!2012476 call!340398)))

(declare-fun lt!2012455 () Unit!146695)

(declare-fun lt!2012466 () Unit!146695)

(assert (=> b!4905464 (= lt!2012455 lt!2012466)))

(assert (=> b!4905464 call!340401))

(assert (=> b!4905464 (= lt!2012466 call!340395)))

(assert (=> b!4905464 (= e!3066425 e!3066423)))

(declare-fun call!340399 () List!56663)

(declare-fun bm!340396 () Bool)

(assert (=> bm!340396 (= call!340400 (findLongestMatchInner!1795 call!340402 lt!2012475 (+ (size!37272 Nil!56539) 1 1) call!340399 lt!2012081 (size!37272 lt!2012081)))))

(declare-fun b!4905465 () Bool)

(assert (=> b!4905465 (= e!3066427 e!3066425)))

(declare-fun c!833774 () Bool)

(assert (=> b!4905465 (= c!833774 (= (+ (size!37272 Nil!56539) 1) (size!37272 lt!2012081)))))

(declare-fun b!4905466 () Bool)

(assert (=> b!4905466 (= e!3066426 e!3066421)))

(assert (=> b!4905466 (= lt!2012456 call!340400)))

(declare-fun c!833776 () Bool)

(assert (=> b!4905466 (= c!833776 (isEmpty!30410 (_1!33697 lt!2012456)))))

(declare-fun bm!340397 () Bool)

(assert (=> bm!340397 (= call!340399 (tail!9621 call!340361))))

(declare-fun b!4905467 () Bool)

(assert (=> b!4905467 (= e!3066423 (tuple2!60789 lt!2012303 Nil!56539))))

(declare-fun b!4905468 () Bool)

(declare-fun Unit!146707 () Unit!146695)

(assert (=> b!4905468 (= e!3066428 Unit!146707)))

(declare-fun b!4905469 () Bool)

(assert (=> b!4905469 (= e!3066421 (tuple2!60789 lt!2012303 call!340361))))

(assert (= (and d!1576465 c!833772) b!4905456))

(assert (= (and d!1576465 (not c!833772)) b!4905465))

(assert (= (and b!4905465 c!833774) b!4905464))

(assert (= (and b!4905465 (not c!833774)) b!4905453))

(assert (= (and b!4905464 c!833775) b!4905467))

(assert (= (and b!4905464 (not c!833775)) b!4905455))

(assert (= (and b!4905453 c!833773) b!4905457))

(assert (= (and b!4905453 (not c!833773)) b!4905468))

(assert (= (and b!4905453 c!833777) b!4905466))

(assert (= (and b!4905453 (not c!833777)) b!4905463))

(assert (= (and b!4905466 c!833776) b!4905469))

(assert (= (and b!4905466 (not c!833776)) b!4905462))

(assert (= (or b!4905466 b!4905463) bm!340390))

(assert (= (or b!4905466 b!4905463) bm!340397))

(assert (= (or b!4905466 b!4905463) bm!340393))

(assert (= (or b!4905466 b!4905463) bm!340396))

(assert (= (or b!4905464 b!4905457) bm!340394))

(assert (= (or b!4905464 b!4905457) bm!340395))

(assert (= (or b!4905464 b!4905457) bm!340391))

(assert (= (or b!4905464 b!4905453) bm!340392))

(assert (= (and d!1576465 res!2095387) b!4905452))

(assert (= (and b!4905452 (not res!2095388)) b!4905454))

(assert (=> bm!340395 m!5914186))

(assert (=> bm!340394 m!5914188))

(declare-fun m!5914706 () Bool)

(assert (=> b!4905466 m!5914706))

(declare-fun m!5914708 () Bool)

(assert (=> bm!340397 m!5914708))

(assert (=> bm!340396 m!5913934))

(declare-fun m!5914710 () Bool)

(assert (=> bm!340396 m!5914710))

(declare-fun m!5914712 () Bool)

(assert (=> bm!340391 m!5914712))

(declare-fun m!5914714 () Bool)

(assert (=> bm!340390 m!5914714))

(declare-fun m!5914716 () Bool)

(assert (=> bm!340392 m!5914716))

(declare-fun m!5914718 () Bool)

(assert (=> bm!340393 m!5914718))

(declare-fun m!5914720 () Bool)

(assert (=> b!4905454 m!5914720))

(declare-fun m!5914722 () Bool)

(assert (=> b!4905454 m!5914722))

(declare-fun m!5914724 () Bool)

(assert (=> d!1576465 m!5914724))

(declare-fun m!5914726 () Bool)

(assert (=> d!1576465 m!5914726))

(declare-fun m!5914728 () Bool)

(assert (=> d!1576465 m!5914728))

(declare-fun m!5914730 () Bool)

(assert (=> d!1576465 m!5914730))

(assert (=> d!1576465 m!5914730))

(declare-fun m!5914732 () Bool)

(assert (=> d!1576465 m!5914732))

(declare-fun m!5914734 () Bool)

(assert (=> d!1576465 m!5914734))

(declare-fun m!5914736 () Bool)

(assert (=> d!1576465 m!5914736))

(declare-fun m!5914738 () Bool)

(assert (=> d!1576465 m!5914738))

(declare-fun m!5914740 () Bool)

(assert (=> b!4905453 m!5914740))

(declare-fun m!5914742 () Bool)

(assert (=> b!4905453 m!5914742))

(declare-fun m!5914744 () Bool)

(assert (=> b!4905453 m!5914744))

(declare-fun m!5914746 () Bool)

(assert (=> b!4905453 m!5914746))

(declare-fun m!5914748 () Bool)

(assert (=> b!4905453 m!5914748))

(assert (=> b!4905453 m!5914746))

(assert (=> b!4905453 m!5914734))

(declare-fun m!5914750 () Bool)

(assert (=> b!4905453 m!5914750))

(declare-fun m!5914752 () Bool)

(assert (=> b!4905453 m!5914752))

(declare-fun m!5914754 () Bool)

(assert (=> b!4905453 m!5914754))

(declare-fun m!5914756 () Bool)

(assert (=> b!4905453 m!5914756))

(assert (=> b!4905453 m!5914708))

(assert (=> b!4905453 m!5913934))

(assert (=> b!4905453 m!5914722))

(assert (=> b!4905453 m!5914734))

(assert (=> b!4905453 m!5914740))

(assert (=> b!4905453 m!5914714))

(declare-fun m!5914758 () Bool)

(assert (=> b!4905452 m!5914758))

(assert (=> bm!340358 d!1576465))

(declare-fun d!1576471 () Bool)

(assert (=> d!1576471 (isPrefix!4914 lt!2012081 lt!2012081)))

(declare-fun lt!2012485 () Unit!146695)

(declare-fun choose!35842 (List!56663 List!56663) Unit!146695)

(assert (=> d!1576471 (= lt!2012485 (choose!35842 lt!2012081 lt!2012081))))

(assert (=> d!1576471 (= (lemmaIsPrefixRefl!3311 lt!2012081 lt!2012081) lt!2012485)))

(declare-fun bs!1177049 () Bool)

(assert (= bs!1177049 d!1576471))

(assert (=> bs!1177049 m!5914188))

(declare-fun m!5914774 () Bool)

(assert (=> bs!1177049 m!5914774))

(assert (=> bm!340357 d!1576471))

(declare-fun d!1576483 () Bool)

(declare-fun lt!2012487 () Int)

(assert (=> d!1576483 (>= lt!2012487 0)))

(declare-fun e!3066437 () Int)

(assert (=> d!1576483 (= lt!2012487 e!3066437)))

(declare-fun c!833779 () Bool)

(assert (=> d!1576483 (= c!833779 ((_ is Nil!56539) (t!366795 lt!2012081)))))

(assert (=> d!1576483 (= (size!37272 (t!366795 lt!2012081)) lt!2012487)))

(declare-fun b!4905478 () Bool)

(assert (=> b!4905478 (= e!3066437 0)))

(declare-fun b!4905479 () Bool)

(assert (=> b!4905479 (= e!3066437 (+ 1 (size!37272 (t!366795 (t!366795 lt!2012081)))))))

(assert (= (and d!1576483 c!833779) b!4905478))

(assert (= (and d!1576483 (not c!833779)) b!4905479))

(declare-fun m!5914776 () Bool)

(assert (=> b!4905479 m!5914776))

(assert (=> b!4904994 d!1576483))

(declare-fun d!1576485 () Bool)

(assert (=> d!1576485 (= (inv!73001 (xs!18116 (c!833614 input!1509))) (<= (size!37272 (innerList!14888 (xs!18116 (c!833614 input!1509)))) 2147483647))))

(declare-fun bs!1177050 () Bool)

(assert (= bs!1177050 d!1576485))

(declare-fun m!5914782 () Bool)

(assert (=> bs!1177050 m!5914782))

(assert (=> b!4905144 d!1576485))

(assert (=> d!1576189 d!1576241))

(assert (=> d!1576189 d!1576319))

(declare-fun d!1576493 () Bool)

(declare-fun c!833781 () Bool)

(assert (=> d!1576493 (= c!833781 ((_ is Node!14800) (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))))

(declare-fun e!3066439 () Bool)

(assert (=> d!1576493 (= (inv!72993 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))) e!3066439)))

(declare-fun b!4905482 () Bool)

(assert (=> b!4905482 (= e!3066439 (inv!72999 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))))

(declare-fun b!4905483 () Bool)

(declare-fun e!3066440 () Bool)

(assert (=> b!4905483 (= e!3066439 e!3066440)))

(declare-fun res!2095399 () Bool)

(assert (=> b!4905483 (= res!2095399 (not ((_ is Leaf!24633) (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))))))))

(assert (=> b!4905483 (=> res!2095399 e!3066440)))

(declare-fun b!4905484 () Bool)

(assert (=> b!4905484 (= e!3066440 (inv!73000 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))))

(assert (= (and d!1576493 c!833781) b!4905482))

(assert (= (and d!1576493 (not c!833781)) b!4905483))

(assert (= (and b!4905483 (not res!2095399)) b!4905484))

(declare-fun m!5914784 () Bool)

(assert (=> b!4905482 m!5914784))

(declare-fun m!5914786 () Bool)

(assert (=> b!4905484 m!5914786))

(assert (=> b!4905165 d!1576493))

(declare-fun d!1576495 () Bool)

(assert (=> d!1576495 (= (isEmpty!30416 (Some!14101 (tuple2!60795 (Token!14993 (apply!13576 (transformation!8232 rule!164) (_1!33699 lt!2012076)) rule!164 (size!37271 (_1!33699 lt!2012076)) lt!2012078) (_2!33699 lt!2012076)))) (not ((_ is Some!14101) (Some!14101 (tuple2!60795 (Token!14993 (apply!13576 (transformation!8232 rule!164) (_1!33699 lt!2012076)) rule!164 (size!37271 (_1!33699 lt!2012076)) lt!2012078) (_2!33699 lt!2012076))))))))

(assert (=> d!1576281 d!1576495))

(declare-fun d!1576497 () Bool)

(declare-fun res!2095420 () Bool)

(declare-fun e!3066452 () Bool)

(assert (=> d!1576497 (=> res!2095420 e!3066452)))

(assert (=> d!1576497 (= res!2095420 (not ((_ is Node!14800) (c!833614 input!1509))))))

(assert (=> d!1576497 (= (isBalanced!4032 (c!833614 input!1509)) e!3066452)))

(declare-fun b!4905511 () Bool)

(declare-fun e!3066453 () Bool)

(assert (=> b!4905511 (= e!3066453 (not (isEmpty!30414 (right!41488 (c!833614 input!1509)))))))

(declare-fun b!4905512 () Bool)

(declare-fun res!2095425 () Bool)

(assert (=> b!4905512 (=> (not res!2095425) (not e!3066453))))

(assert (=> b!4905512 (= res!2095425 (not (isEmpty!30414 (left!41158 (c!833614 input!1509)))))))

(declare-fun b!4905513 () Bool)

(declare-fun res!2095424 () Bool)

(assert (=> b!4905513 (=> (not res!2095424) (not e!3066453))))

(assert (=> b!4905513 (= res!2095424 (isBalanced!4032 (left!41158 (c!833614 input!1509))))))

(declare-fun b!4905514 () Bool)

(declare-fun res!2095423 () Bool)

(assert (=> b!4905514 (=> (not res!2095423) (not e!3066453))))

(declare-fun height!1966 (Conc!14800) Int)

(assert (=> b!4905514 (= res!2095423 (<= (- (height!1966 (left!41158 (c!833614 input!1509))) (height!1966 (right!41488 (c!833614 input!1509)))) 1))))

(declare-fun b!4905515 () Bool)

(declare-fun res!2095422 () Bool)

(assert (=> b!4905515 (=> (not res!2095422) (not e!3066453))))

(assert (=> b!4905515 (= res!2095422 (isBalanced!4032 (right!41488 (c!833614 input!1509))))))

(declare-fun b!4905516 () Bool)

(assert (=> b!4905516 (= e!3066452 e!3066453)))

(declare-fun res!2095421 () Bool)

(assert (=> b!4905516 (=> (not res!2095421) (not e!3066453))))

(assert (=> b!4905516 (= res!2095421 (<= (- 1) (- (height!1966 (left!41158 (c!833614 input!1509))) (height!1966 (right!41488 (c!833614 input!1509))))))))

(assert (= (and d!1576497 (not res!2095420)) b!4905516))

(assert (= (and b!4905516 res!2095421) b!4905514))

(assert (= (and b!4905514 res!2095423) b!4905513))

(assert (= (and b!4905513 res!2095424) b!4905515))

(assert (= (and b!4905515 res!2095422) b!4905512))

(assert (= (and b!4905512 res!2095425) b!4905511))

(declare-fun m!5914804 () Bool)

(assert (=> b!4905515 m!5914804))

(declare-fun m!5914806 () Bool)

(assert (=> b!4905511 m!5914806))

(declare-fun m!5914808 () Bool)

(assert (=> b!4905512 m!5914808))

(declare-fun m!5914810 () Bool)

(assert (=> b!4905513 m!5914810))

(declare-fun m!5914812 () Bool)

(assert (=> b!4905514 m!5914812))

(declare-fun m!5914814 () Bool)

(assert (=> b!4905514 m!5914814))

(assert (=> b!4905516 m!5914812))

(assert (=> b!4905516 m!5914814))

(assert (=> d!1576203 d!1576497))

(declare-fun b!4905517 () Bool)

(declare-fun res!2095431 () Bool)

(declare-fun e!3066456 () Bool)

(assert (=> b!4905517 (=> res!2095431 e!3066456)))

(declare-fun e!3066454 () Bool)

(assert (=> b!4905517 (= res!2095431 e!3066454)))

(declare-fun res!2095427 () Bool)

(assert (=> b!4905517 (=> (not res!2095427) (not e!3066454))))

(declare-fun lt!2012493 () Bool)

(assert (=> b!4905517 (= res!2095427 lt!2012493)))

(declare-fun b!4905518 () Bool)

(declare-fun e!3066459 () Bool)

(assert (=> b!4905518 (= e!3066459 (nullable!4573 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082)))))))

(declare-fun b!4905519 () Bool)

(declare-fun e!3066458 () Bool)

(declare-fun e!3066457 () Bool)

(assert (=> b!4905519 (= e!3066458 e!3066457)))

(declare-fun c!833786 () Bool)

(assert (=> b!4905519 (= c!833786 ((_ is EmptyLang!13307) (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082)))))))

(declare-fun b!4905520 () Bool)

(assert (=> b!4905520 (= e!3066454 (= (head!10474 (tail!9621 (_1!33697 lt!2012082))) (c!833613 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082))))))))

(declare-fun b!4905522 () Bool)

(declare-fun e!3066460 () Bool)

(assert (=> b!4905522 (= e!3066460 (not (= (head!10474 (tail!9621 (_1!33697 lt!2012082))) (c!833613 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082)))))))))

(declare-fun b!4905523 () Bool)

(declare-fun call!340404 () Bool)

(assert (=> b!4905523 (= e!3066458 (= lt!2012493 call!340404))))

(declare-fun b!4905524 () Bool)

(assert (=> b!4905524 (= e!3066457 (not lt!2012493))))

(declare-fun b!4905525 () Bool)

(declare-fun res!2095428 () Bool)

(assert (=> b!4905525 (=> res!2095428 e!3066456)))

(assert (=> b!4905525 (= res!2095428 (not ((_ is ElementMatch!13307) (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082))))))))

(assert (=> b!4905525 (= e!3066457 e!3066456)))

(declare-fun bm!340399 () Bool)

(assert (=> bm!340399 (= call!340404 (isEmpty!30410 (tail!9621 (_1!33697 lt!2012082))))))

(declare-fun b!4905526 () Bool)

(declare-fun res!2095432 () Bool)

(assert (=> b!4905526 (=> (not res!2095432) (not e!3066454))))

(assert (=> b!4905526 (= res!2095432 (isEmpty!30410 (tail!9621 (tail!9621 (_1!33697 lt!2012082)))))))

(declare-fun b!4905527 () Bool)

(declare-fun e!3066455 () Bool)

(assert (=> b!4905527 (= e!3066456 e!3066455)))

(declare-fun res!2095430 () Bool)

(assert (=> b!4905527 (=> (not res!2095430) (not e!3066455))))

(assert (=> b!4905527 (= res!2095430 (not lt!2012493))))

(declare-fun b!4905528 () Bool)

(declare-fun res!2095433 () Bool)

(assert (=> b!4905528 (=> res!2095433 e!3066460)))

(assert (=> b!4905528 (= res!2095433 (not (isEmpty!30410 (tail!9621 (tail!9621 (_1!33697 lt!2012082))))))))

(declare-fun b!4905521 () Bool)

(declare-fun res!2095426 () Bool)

(assert (=> b!4905521 (=> (not res!2095426) (not e!3066454))))

(assert (=> b!4905521 (= res!2095426 (not call!340404))))

(declare-fun d!1576503 () Bool)

(assert (=> d!1576503 e!3066458))

(declare-fun c!833787 () Bool)

(assert (=> d!1576503 (= c!833787 ((_ is EmptyExpr!13307) (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082)))))))

(assert (=> d!1576503 (= lt!2012493 e!3066459)))

(declare-fun c!833785 () Bool)

(assert (=> d!1576503 (= c!833785 (isEmpty!30410 (tail!9621 (_1!33697 lt!2012082))))))

(assert (=> d!1576503 (validRegex!5900 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082))))))

(assert (=> d!1576503 (= (matchR!6574 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082))) (tail!9621 (_1!33697 lt!2012082))) lt!2012493)))

(declare-fun b!4905529 () Bool)

(assert (=> b!4905529 (= e!3066455 e!3066460)))

(declare-fun res!2095429 () Bool)

(assert (=> b!4905529 (=> res!2095429 e!3066460)))

(assert (=> b!4905529 (= res!2095429 call!340404)))

(declare-fun b!4905530 () Bool)

(assert (=> b!4905530 (= e!3066459 (matchR!6574 (derivativeStep!3893 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082))) (head!10474 (tail!9621 (_1!33697 lt!2012082)))) (tail!9621 (tail!9621 (_1!33697 lt!2012082)))))))

(assert (= (and d!1576503 c!833785) b!4905518))

(assert (= (and d!1576503 (not c!833785)) b!4905530))

(assert (= (and d!1576503 c!833787) b!4905523))

(assert (= (and d!1576503 (not c!833787)) b!4905519))

(assert (= (and b!4905519 c!833786) b!4905524))

(assert (= (and b!4905519 (not c!833786)) b!4905525))

(assert (= (and b!4905525 (not res!2095428)) b!4905517))

(assert (= (and b!4905517 res!2095427) b!4905521))

(assert (= (and b!4905521 res!2095426) b!4905526))

(assert (= (and b!4905526 res!2095432) b!4905520))

(assert (= (and b!4905517 (not res!2095431)) b!4905527))

(assert (= (and b!4905527 res!2095430) b!4905529))

(assert (= (and b!4905529 (not res!2095429)) b!4905528))

(assert (= (and b!4905528 (not res!2095433)) b!4905522))

(assert (= (or b!4905523 b!4905521 b!4905529) bm!340399))

(assert (=> bm!340399 m!5913968))

(assert (=> bm!340399 m!5913970))

(assert (=> b!4905528 m!5913968))

(declare-fun m!5914816 () Bool)

(assert (=> b!4905528 m!5914816))

(assert (=> b!4905528 m!5914816))

(declare-fun m!5914818 () Bool)

(assert (=> b!4905528 m!5914818))

(assert (=> b!4905530 m!5913968))

(declare-fun m!5914820 () Bool)

(assert (=> b!4905530 m!5914820))

(assert (=> b!4905530 m!5913974))

(assert (=> b!4905530 m!5914820))

(declare-fun m!5914822 () Bool)

(assert (=> b!4905530 m!5914822))

(assert (=> b!4905530 m!5913968))

(assert (=> b!4905530 m!5914816))

(assert (=> b!4905530 m!5914822))

(assert (=> b!4905530 m!5914816))

(declare-fun m!5914824 () Bool)

(assert (=> b!4905530 m!5914824))

(assert (=> b!4905522 m!5913968))

(assert (=> b!4905522 m!5914820))

(assert (=> b!4905518 m!5913974))

(declare-fun m!5914826 () Bool)

(assert (=> b!4905518 m!5914826))

(assert (=> d!1576503 m!5913968))

(assert (=> d!1576503 m!5913970))

(assert (=> d!1576503 m!5913974))

(declare-fun m!5914828 () Bool)

(assert (=> d!1576503 m!5914828))

(assert (=> b!4905526 m!5913968))

(assert (=> b!4905526 m!5914816))

(assert (=> b!4905526 m!5914816))

(assert (=> b!4905526 m!5914818))

(assert (=> b!4905520 m!5913968))

(assert (=> b!4905520 m!5914820))

(assert (=> b!4904892 d!1576503))

(declare-fun b!4905551 () Bool)

(declare-fun c!833799 () Bool)

(assert (=> b!4905551 (= c!833799 (nullable!4573 (regOne!27126 (regex!8232 rule!164))))))

(declare-fun e!3066473 () Regex!13307)

(declare-fun e!3066471 () Regex!13307)

(assert (=> b!4905551 (= e!3066473 e!3066471)))

(declare-fun call!340407 () Regex!13307)

(declare-fun c!833798 () Bool)

(declare-fun bm!340402 () Bool)

(assert (=> bm!340402 (= call!340407 (derivativeStep!3893 (ite c!833798 (regTwo!27127 (regex!8232 rule!164)) (regTwo!27126 (regex!8232 rule!164))) (head!10474 (_1!33697 lt!2012082))))))

(declare-fun b!4905552 () Bool)

(declare-fun e!3066474 () Regex!13307)

(assert (=> b!4905552 (= e!3066474 e!3066473)))

(declare-fun c!833800 () Bool)

(assert (=> b!4905552 (= c!833800 ((_ is Star!13307) (regex!8232 rule!164)))))

(declare-fun call!340410 () Regex!13307)

(declare-fun bm!340403 () Bool)

(assert (=> bm!340403 (= call!340410 (derivativeStep!3893 (ite c!833798 (regOne!27127 (regex!8232 rule!164)) (ite c!833800 (reg!13636 (regex!8232 rule!164)) (regOne!27126 (regex!8232 rule!164)))) (head!10474 (_1!33697 lt!2012082))))))

(declare-fun bm!340404 () Bool)

(declare-fun call!340408 () Regex!13307)

(assert (=> bm!340404 (= call!340408 call!340410)))

(declare-fun b!4905553 () Bool)

(assert (=> b!4905553 (= c!833798 ((_ is Union!13307) (regex!8232 rule!164)))))

(declare-fun e!3066472 () Regex!13307)

(assert (=> b!4905553 (= e!3066472 e!3066474)))

(declare-fun b!4905554 () Bool)

(declare-fun e!3066475 () Regex!13307)

(assert (=> b!4905554 (= e!3066475 e!3066472)))

(declare-fun c!833802 () Bool)

(assert (=> b!4905554 (= c!833802 ((_ is ElementMatch!13307) (regex!8232 rule!164)))))

(declare-fun b!4905555 () Bool)

(declare-fun call!340409 () Regex!13307)

(assert (=> b!4905555 (= e!3066471 (Union!13307 (Concat!21849 call!340409 (regTwo!27126 (regex!8232 rule!164))) EmptyLang!13307))))

(declare-fun b!4905556 () Bool)

(assert (=> b!4905556 (= e!3066474 (Union!13307 call!340410 call!340407))))

(declare-fun b!4905557 () Bool)

(assert (=> b!4905557 (= e!3066471 (Union!13307 (Concat!21849 call!340409 (regTwo!27126 (regex!8232 rule!164))) call!340407))))

(declare-fun d!1576505 () Bool)

(declare-fun lt!2012496 () Regex!13307)

(assert (=> d!1576505 (validRegex!5900 lt!2012496)))

(assert (=> d!1576505 (= lt!2012496 e!3066475)))

(declare-fun c!833801 () Bool)

(assert (=> d!1576505 (= c!833801 (or ((_ is EmptyExpr!13307) (regex!8232 rule!164)) ((_ is EmptyLang!13307) (regex!8232 rule!164))))))

(assert (=> d!1576505 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576505 (= (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 lt!2012082))) lt!2012496)))

(declare-fun bm!340405 () Bool)

(assert (=> bm!340405 (= call!340409 call!340408)))

(declare-fun b!4905558 () Bool)

(assert (=> b!4905558 (= e!3066472 (ite (= (head!10474 (_1!33697 lt!2012082)) (c!833613 (regex!8232 rule!164))) EmptyExpr!13307 EmptyLang!13307))))

(declare-fun b!4905559 () Bool)

(assert (=> b!4905559 (= e!3066473 (Concat!21849 call!340408 (regex!8232 rule!164)))))

(declare-fun b!4905560 () Bool)

(assert (=> b!4905560 (= e!3066475 EmptyLang!13307)))

(assert (= (and d!1576505 c!833801) b!4905560))

(assert (= (and d!1576505 (not c!833801)) b!4905554))

(assert (= (and b!4905554 c!833802) b!4905558))

(assert (= (and b!4905554 (not c!833802)) b!4905553))

(assert (= (and b!4905553 c!833798) b!4905556))

(assert (= (and b!4905553 (not c!833798)) b!4905552))

(assert (= (and b!4905552 c!833800) b!4905559))

(assert (= (and b!4905552 (not c!833800)) b!4905551))

(assert (= (and b!4905551 c!833799) b!4905557))

(assert (= (and b!4905551 (not c!833799)) b!4905555))

(assert (= (or b!4905557 b!4905555) bm!340405))

(assert (= (or b!4905559 bm!340405) bm!340404))

(assert (= (or b!4905556 bm!340404) bm!340403))

(assert (= (or b!4905556 b!4905557) bm!340402))

(assert (=> b!4905551 m!5914446))

(assert (=> bm!340402 m!5913972))

(declare-fun m!5914830 () Bool)

(assert (=> bm!340402 m!5914830))

(assert (=> bm!340403 m!5913972))

(declare-fun m!5914832 () Bool)

(assert (=> bm!340403 m!5914832))

(declare-fun m!5914834 () Bool)

(assert (=> d!1576505 m!5914834))

(assert (=> d!1576505 m!5913980))

(assert (=> b!4904892 d!1576505))

(assert (=> b!4904892 d!1576293))

(declare-fun d!1576507 () Bool)

(assert (=> d!1576507 (= (tail!9621 (_1!33697 lt!2012082)) (t!366795 (_1!33697 lt!2012082)))))

(assert (=> b!4904892 d!1576507))

(assert (=> b!4905132 d!1576379))

(declare-fun d!1576509 () Bool)

(declare-fun lt!2012497 () Int)

(assert (=> d!1576509 (>= lt!2012497 0)))

(declare-fun e!3066476 () Int)

(assert (=> d!1576509 (= lt!2012497 e!3066476)))

(declare-fun c!833803 () Bool)

(assert (=> d!1576509 (= c!833803 ((_ is Nil!56539) (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317)))))))

(assert (=> d!1576509 (= (size!37272 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317)))) lt!2012497)))

(declare-fun b!4905561 () Bool)

(assert (=> b!4905561 (= e!3066476 0)))

(declare-fun b!4905562 () Bool)

(assert (=> b!4905562 (= e!3066476 (+ 1 (size!37272 (t!366795 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317)))))))))

(assert (= (and d!1576509 c!833803) b!4905561))

(assert (= (and d!1576509 (not c!833803)) b!4905562))

(declare-fun m!5914836 () Bool)

(assert (=> b!4905562 m!5914836))

(assert (=> b!4905132 d!1576509))

(declare-fun b!4905573 () Bool)

(declare-fun e!3066484 () Bool)

(declare-fun e!3066483 () Bool)

(assert (=> b!4905573 (= e!3066484 e!3066483)))

(declare-fun c!833809 () Bool)

(assert (=> b!4905573 (= c!833809 ((_ is IntegerValue!25627) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))

(declare-fun b!4905574 () Bool)

(declare-fun inv!16 (TokenValue!8542) Bool)

(assert (=> b!4905574 (= e!3066484 (inv!16 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))

(declare-fun b!4905575 () Bool)

(declare-fun res!2095436 () Bool)

(declare-fun e!3066485 () Bool)

(assert (=> b!4905575 (=> res!2095436 e!3066485)))

(assert (=> b!4905575 (= res!2095436 (not ((_ is IntegerValue!25628) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))))))

(assert (=> b!4905575 (= e!3066483 e!3066485)))

(declare-fun d!1576511 () Bool)

(declare-fun c!833808 () Bool)

(assert (=> d!1576511 (= c!833808 ((_ is IntegerValue!25626) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))

(assert (=> d!1576511 (= (inv!21 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))) e!3066484)))

(declare-fun b!4905576 () Bool)

(declare-fun inv!17 (TokenValue!8542) Bool)

(assert (=> b!4905576 (= e!3066483 (inv!17 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))

(declare-fun b!4905577 () Bool)

(declare-fun inv!15 (TokenValue!8542) Bool)

(assert (=> b!4905577 (= e!3066485 (inv!15 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))

(assert (= (and d!1576511 c!833808) b!4905574))

(assert (= (and d!1576511 (not c!833808)) b!4905573))

(assert (= (and b!4905573 c!833809) b!4905576))

(assert (= (and b!4905573 (not c!833809)) b!4905575))

(assert (= (and b!4905575 (not res!2095436)) b!4905577))

(declare-fun m!5914838 () Bool)

(assert (=> b!4905574 m!5914838))

(declare-fun m!5914840 () Bool)

(assert (=> b!4905576 m!5914840))

(declare-fun m!5914842 () Bool)

(assert (=> b!4905577 m!5914842))

(assert (=> tb!259887 d!1576511))

(declare-fun d!1576513 () Bool)

(assert (=> d!1576513 (= (inv!72995 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))) (isBalanced!4032 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))))

(declare-fun bs!1177052 () Bool)

(assert (= bs!1177052 d!1576513))

(declare-fun m!5914844 () Bool)

(assert (=> bs!1177052 m!5914844))

(assert (=> tb!259889 d!1576513))

(declare-fun d!1576515 () Bool)

(declare-fun lt!2012498 () Int)

(assert (=> d!1576515 (>= lt!2012498 0)))

(declare-fun e!3066486 () Int)

(assert (=> d!1576515 (= lt!2012498 e!3066486)))

(declare-fun c!833810 () Bool)

(assert (=> d!1576515 (= c!833810 ((_ is Nil!56539) (_1!33697 lt!2012296)))))

(assert (=> d!1576515 (= (size!37272 (_1!33697 lt!2012296)) lt!2012498)))

(declare-fun b!4905578 () Bool)

(assert (=> b!4905578 (= e!3066486 0)))

(declare-fun b!4905579 () Bool)

(assert (=> b!4905579 (= e!3066486 (+ 1 (size!37272 (t!366795 (_1!33697 lt!2012296)))))))

(assert (= (and d!1576515 c!833810) b!4905578))

(assert (= (and d!1576515 (not c!833810)) b!4905579))

(declare-fun m!5914846 () Bool)

(assert (=> b!4905579 m!5914846))

(assert (=> b!4905091 d!1576515))

(assert (=> b!4905091 d!1576239))

(declare-fun d!1576517 () Bool)

(assert (=> d!1576517 (= lt!2012081 Nil!56539)))

(declare-fun lt!2012502 () Unit!146695)

(declare-fun choose!35844 (List!56663 List!56663 List!56663) Unit!146695)

(assert (=> d!1576517 (= lt!2012502 (choose!35844 lt!2012081 Nil!56539 lt!2012081))))

(assert (=> d!1576517 (isPrefix!4914 lt!2012081 lt!2012081)))

(assert (=> d!1576517 (= (lemmaIsPrefixSameLengthThenSameList!1073 lt!2012081 Nil!56539 lt!2012081) lt!2012502)))

(declare-fun bs!1177053 () Bool)

(assert (= bs!1177053 d!1576517))

(declare-fun m!5914856 () Bool)

(assert (=> bs!1177053 m!5914856))

(assert (=> bs!1177053 m!5914188))

(assert (=> bm!340353 d!1576517))

(declare-fun d!1576523 () Bool)

(declare-fun res!2095441 () Bool)

(declare-fun e!3066494 () Bool)

(assert (=> d!1576523 (=> (not res!2095441) (not e!3066494))))

(assert (=> d!1576523 (= res!2095441 (<= (size!37272 (list!17813 (xs!18116 (c!833614 input!1509)))) 512))))

(assert (=> d!1576523 (= (inv!73000 (c!833614 input!1509)) e!3066494)))

(declare-fun b!4905594 () Bool)

(declare-fun res!2095442 () Bool)

(assert (=> b!4905594 (=> (not res!2095442) (not e!3066494))))

(assert (=> b!4905594 (= res!2095442 (= (csize!29831 (c!833614 input!1509)) (size!37272 (list!17813 (xs!18116 (c!833614 input!1509))))))))

(declare-fun b!4905595 () Bool)

(assert (=> b!4905595 (= e!3066494 (and (> (csize!29831 (c!833614 input!1509)) 0) (<= (csize!29831 (c!833614 input!1509)) 512)))))

(assert (= (and d!1576523 res!2095441) b!4905594))

(assert (= (and b!4905594 res!2095442) b!4905595))

(assert (=> d!1576523 m!5914690))

(assert (=> d!1576523 m!5914690))

(declare-fun m!5914858 () Bool)

(assert (=> d!1576523 m!5914858))

(assert (=> b!4905594 m!5914690))

(assert (=> b!4905594 m!5914690))

(assert (=> b!4905594 m!5914858))

(assert (=> b!4904901 d!1576523))

(declare-fun d!1576525 () Bool)

(assert (=> d!1576525 (= (isEmpty!30410 (tail!9621 (_1!33697 lt!2012082))) ((_ is Nil!56539) (tail!9621 (_1!33697 lt!2012082))))))

(assert (=> b!4904890 d!1576525))

(assert (=> b!4904890 d!1576507))

(declare-fun d!1576527 () Bool)

(assert (=> d!1576527 (= (inv!72995 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))) (isBalanced!4032 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))))

(declare-fun bs!1177054 () Bool)

(assert (= bs!1177054 d!1576527))

(declare-fun m!5914860 () Bool)

(assert (=> bs!1177054 m!5914860))

(assert (=> tb!259891 d!1576527))

(assert (=> b!4905130 d!1576379))

(assert (=> b!4904888 d!1576525))

(assert (=> b!4904888 d!1576507))

(declare-fun b!4905596 () Bool)

(declare-fun res!2095448 () Bool)

(declare-fun e!3066497 () Bool)

(assert (=> b!4905596 (=> res!2095448 e!3066497)))

(declare-fun e!3066495 () Bool)

(assert (=> b!4905596 (= res!2095448 e!3066495)))

(declare-fun res!2095444 () Bool)

(assert (=> b!4905596 (=> (not res!2095444) (not e!3066495))))

(declare-fun lt!2012503 () Bool)

(assert (=> b!4905596 (= res!2095444 lt!2012503)))

(declare-fun b!4905597 () Bool)

(declare-fun e!3066500 () Bool)

(assert (=> b!4905597 (= e!3066500 (nullable!4573 (regex!8232 rule!164)))))

(declare-fun b!4905598 () Bool)

(declare-fun e!3066499 () Bool)

(declare-fun e!3066498 () Bool)

(assert (=> b!4905598 (= e!3066499 e!3066498)))

(declare-fun c!833817 () Bool)

(assert (=> b!4905598 (= c!833817 ((_ is EmptyLang!13307) (regex!8232 rule!164)))))

(declare-fun b!4905599 () Bool)

(assert (=> b!4905599 (= e!3066495 (= (head!10474 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))) (c!833613 (regex!8232 rule!164))))))

(declare-fun b!4905601 () Bool)

(declare-fun e!3066501 () Bool)

(assert (=> b!4905601 (= e!3066501 (not (= (head!10474 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))) (c!833613 (regex!8232 rule!164)))))))

(declare-fun b!4905602 () Bool)

(declare-fun call!340421 () Bool)

(assert (=> b!4905602 (= e!3066499 (= lt!2012503 call!340421))))

(declare-fun b!4905603 () Bool)

(assert (=> b!4905603 (= e!3066498 (not lt!2012503))))

(declare-fun b!4905604 () Bool)

(declare-fun res!2095445 () Bool)

(assert (=> b!4905604 (=> res!2095445 e!3066497)))

(assert (=> b!4905604 (= res!2095445 (not ((_ is ElementMatch!13307) (regex!8232 rule!164))))))

(assert (=> b!4905604 (= e!3066498 e!3066497)))

(declare-fun bm!340416 () Bool)

(assert (=> bm!340416 (= call!340421 (isEmpty!30410 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))))))

(declare-fun b!4905605 () Bool)

(declare-fun res!2095449 () Bool)

(assert (=> b!4905605 (=> (not res!2095449) (not e!3066495))))

(assert (=> b!4905605 (= res!2095449 (isEmpty!30410 (tail!9621 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317)))))))))

(declare-fun b!4905606 () Bool)

(declare-fun e!3066496 () Bool)

(assert (=> b!4905606 (= e!3066497 e!3066496)))

(declare-fun res!2095447 () Bool)

(assert (=> b!4905606 (=> (not res!2095447) (not e!3066496))))

(assert (=> b!4905606 (= res!2095447 (not lt!2012503))))

(declare-fun b!4905607 () Bool)

(declare-fun res!2095450 () Bool)

(assert (=> b!4905607 (=> res!2095450 e!3066501)))

(assert (=> b!4905607 (= res!2095450 (not (isEmpty!30410 (tail!9621 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))))))))

(declare-fun b!4905600 () Bool)

(declare-fun res!2095443 () Bool)

(assert (=> b!4905600 (=> (not res!2095443) (not e!3066495))))

(assert (=> b!4905600 (= res!2095443 (not call!340421))))

(declare-fun d!1576529 () Bool)

(assert (=> d!1576529 e!3066499))

(declare-fun c!833818 () Bool)

(assert (=> d!1576529 (= c!833818 ((_ is EmptyExpr!13307) (regex!8232 rule!164)))))

(assert (=> d!1576529 (= lt!2012503 e!3066500)))

(declare-fun c!833816 () Bool)

(assert (=> d!1576529 (= c!833816 (isEmpty!30410 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))))))

(assert (=> d!1576529 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576529 (= (matchR!6574 (regex!8232 rule!164) (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317))))) lt!2012503)))

(declare-fun b!4905608 () Bool)

(assert (=> b!4905608 (= e!3066496 e!3066501)))

(declare-fun res!2095446 () Bool)

(assert (=> b!4905608 (=> res!2095446 e!3066501)))

(assert (=> b!4905608 (= res!2095446 call!340421)))

(declare-fun b!4905609 () Bool)

(assert (=> b!4905609 (= e!3066500 (matchR!6574 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317)))))) (tail!9621 (list!17810 (charsOf!5388 (_1!33698 (get!19554 lt!2012317)))))))))

(assert (= (and d!1576529 c!833816) b!4905597))

(assert (= (and d!1576529 (not c!833816)) b!4905609))

(assert (= (and d!1576529 c!833818) b!4905602))

(assert (= (and d!1576529 (not c!833818)) b!4905598))

(assert (= (and b!4905598 c!833817) b!4905603))

(assert (= (and b!4905598 (not c!833817)) b!4905604))

(assert (= (and b!4905604 (not res!2095445)) b!4905596))

(assert (= (and b!4905596 res!2095444) b!4905600))

(assert (= (and b!4905600 res!2095443) b!4905605))

(assert (= (and b!4905605 res!2095449) b!4905599))

(assert (= (and b!4905596 (not res!2095448)) b!4905606))

(assert (= (and b!4905606 res!2095447) b!4905608))

(assert (= (and b!4905608 (not res!2095446)) b!4905607))

(assert (= (and b!4905607 (not res!2095450)) b!4905601))

(assert (= (or b!4905602 b!4905600 b!4905608) bm!340416))

(assert (=> bm!340416 m!5914252))

(declare-fun m!5914862 () Bool)

(assert (=> bm!340416 m!5914862))

(assert (=> b!4905607 m!5914252))

(declare-fun m!5914864 () Bool)

(assert (=> b!4905607 m!5914864))

(assert (=> b!4905607 m!5914864))

(declare-fun m!5914866 () Bool)

(assert (=> b!4905607 m!5914866))

(assert (=> b!4905609 m!5914252))

(declare-fun m!5914868 () Bool)

(assert (=> b!4905609 m!5914868))

(assert (=> b!4905609 m!5914868))

(declare-fun m!5914870 () Bool)

(assert (=> b!4905609 m!5914870))

(assert (=> b!4905609 m!5914252))

(assert (=> b!4905609 m!5914864))

(assert (=> b!4905609 m!5914870))

(assert (=> b!4905609 m!5914864))

(declare-fun m!5914872 () Bool)

(assert (=> b!4905609 m!5914872))

(assert (=> b!4905601 m!5914252))

(assert (=> b!4905601 m!5914868))

(assert (=> b!4905597 m!5913978))

(assert (=> d!1576529 m!5914252))

(assert (=> d!1576529 m!5914862))

(assert (=> d!1576529 m!5913980))

(assert (=> b!4905605 m!5914252))

(assert (=> b!4905605 m!5914864))

(assert (=> b!4905605 m!5914864))

(assert (=> b!4905605 m!5914866))

(assert (=> b!4905599 m!5914252))

(assert (=> b!4905599 m!5914868))

(assert (=> b!4905128 d!1576529))

(assert (=> b!4905128 d!1576387))

(assert (=> b!4905128 d!1576389))

(assert (=> b!4905128 d!1576379))

(declare-fun d!1576531 () Bool)

(declare-fun c!833819 () Bool)

(assert (=> d!1576531 (= c!833819 ((_ is Node!14800) (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))))

(declare-fun e!3066504 () Bool)

(assert (=> d!1576531 (= (inv!72993 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))) e!3066504)))

(declare-fun b!4905612 () Bool)

(assert (=> b!4905612 (= e!3066504 (inv!72999 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))))

(declare-fun b!4905613 () Bool)

(declare-fun e!3066505 () Bool)

(assert (=> b!4905613 (= e!3066504 e!3066505)))

(declare-fun res!2095453 () Bool)

(assert (=> b!4905613 (= res!2095453 (not ((_ is Leaf!24633) (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))))))))

(assert (=> b!4905613 (=> res!2095453 e!3066505)))

(declare-fun b!4905614 () Bool)

(assert (=> b!4905614 (= e!3066505 (inv!73000 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))))

(assert (= (and d!1576531 c!833819) b!4905612))

(assert (= (and d!1576531 (not c!833819)) b!4905613))

(assert (= (and b!4905613 (not res!2095453)) b!4905614))

(declare-fun m!5914874 () Bool)

(assert (=> b!4905612 m!5914874))

(declare-fun m!5914876 () Bool)

(assert (=> b!4905614 m!5914876))

(assert (=> b!4905164 d!1576531))

(declare-fun b!4905615 () Bool)

(declare-fun res!2095459 () Bool)

(declare-fun e!3066508 () Bool)

(assert (=> b!4905615 (=> res!2095459 e!3066508)))

(declare-fun e!3066506 () Bool)

(assert (=> b!4905615 (= res!2095459 e!3066506)))

(declare-fun res!2095455 () Bool)

(assert (=> b!4905615 (=> (not res!2095455) (not e!3066506))))

(declare-fun lt!2012504 () Bool)

(assert (=> b!4905615 (= res!2095455 lt!2012504)))

(declare-fun b!4905616 () Bool)

(declare-fun e!3066511 () Bool)

(assert (=> b!4905616 (= e!3066511 (nullable!4573 (regex!8232 rule!164)))))

(declare-fun b!4905617 () Bool)

(declare-fun e!3066510 () Bool)

(declare-fun e!3066509 () Bool)

(assert (=> b!4905617 (= e!3066510 e!3066509)))

(declare-fun c!833821 () Bool)

(assert (=> b!4905617 (= c!833821 ((_ is EmptyLang!13307) (regex!8232 rule!164)))))

(declare-fun b!4905618 () Bool)

(assert (=> b!4905618 (= e!3066506 (= (head!10474 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))) (c!833613 (regex!8232 rule!164))))))

(declare-fun b!4905620 () Bool)

(declare-fun e!3066512 () Bool)

(assert (=> b!4905620 (= e!3066512 (not (= (head!10474 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))) (c!833613 (regex!8232 rule!164)))))))

(declare-fun b!4905621 () Bool)

(declare-fun call!340422 () Bool)

(assert (=> b!4905621 (= e!3066510 (= lt!2012504 call!340422))))

(declare-fun b!4905622 () Bool)

(assert (=> b!4905622 (= e!3066509 (not lt!2012504))))

(declare-fun b!4905623 () Bool)

(declare-fun res!2095456 () Bool)

(assert (=> b!4905623 (=> res!2095456 e!3066508)))

(assert (=> b!4905623 (= res!2095456 (not ((_ is ElementMatch!13307) (regex!8232 rule!164))))))

(assert (=> b!4905623 (= e!3066509 e!3066508)))

(declare-fun bm!340417 () Bool)

(assert (=> bm!340417 (= call!340422 (isEmpty!30410 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(declare-fun b!4905624 () Bool)

(declare-fun res!2095460 () Bool)

(assert (=> b!4905624 (=> (not res!2095460) (not e!3066506))))

(assert (=> b!4905624 (= res!2095460 (isEmpty!30410 (tail!9621 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081))))))))

(declare-fun b!4905625 () Bool)

(declare-fun e!3066507 () Bool)

(assert (=> b!4905625 (= e!3066508 e!3066507)))

(declare-fun res!2095458 () Bool)

(assert (=> b!4905625 (=> (not res!2095458) (not e!3066507))))

(assert (=> b!4905625 (= res!2095458 (not lt!2012504))))

(declare-fun b!4905626 () Bool)

(declare-fun res!2095461 () Bool)

(assert (=> b!4905626 (=> res!2095461 e!3066512)))

(assert (=> b!4905626 (= res!2095461 (not (isEmpty!30410 (tail!9621 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))))

(declare-fun b!4905619 () Bool)

(declare-fun res!2095454 () Bool)

(assert (=> b!4905619 (=> (not res!2095454) (not e!3066506))))

(assert (=> b!4905619 (= res!2095454 (not call!340422))))

(declare-fun d!1576533 () Bool)

(assert (=> d!1576533 e!3066510))

(declare-fun c!833822 () Bool)

(assert (=> d!1576533 (= c!833822 ((_ is EmptyExpr!13307) (regex!8232 rule!164)))))

(assert (=> d!1576533 (= lt!2012504 e!3066511)))

(declare-fun c!833820 () Bool)

(assert (=> d!1576533 (= c!833820 (isEmpty!30410 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))))))

(assert (=> d!1576533 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576533 (= (matchR!6574 (regex!8232 rule!164) (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081)))) lt!2012504)))

(declare-fun b!4905627 () Bool)

(assert (=> b!4905627 (= e!3066507 e!3066512)))

(declare-fun res!2095457 () Bool)

(assert (=> b!4905627 (=> res!2095457 e!3066512)))

(assert (=> b!4905627 (= res!2095457 call!340422)))

(declare-fun b!4905628 () Bool)

(assert (=> b!4905628 (= e!3066511 (matchR!6574 (derivativeStep!3893 (regex!8232 rule!164) (head!10474 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081))))) (tail!9621 (_1!33697 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 (size!37272 Nil!56539) lt!2012081 lt!2012081 (size!37272 lt!2012081))))))))

(assert (= (and d!1576533 c!833820) b!4905616))

(assert (= (and d!1576533 (not c!833820)) b!4905628))

(assert (= (and d!1576533 c!833822) b!4905621))

(assert (= (and d!1576533 (not c!833822)) b!4905617))

(assert (= (and b!4905617 c!833821) b!4905622))

(assert (= (and b!4905617 (not c!833821)) b!4905623))

(assert (= (and b!4905623 (not res!2095456)) b!4905615))

(assert (= (and b!4905615 res!2095455) b!4905619))

(assert (= (and b!4905619 res!2095454) b!4905624))

(assert (= (and b!4905624 res!2095460) b!4905618))

(assert (= (and b!4905615 (not res!2095459)) b!4905625))

(assert (= (and b!4905625 res!2095458) b!4905627))

(assert (= (and b!4905627 (not res!2095457)) b!4905626))

(assert (= (and b!4905626 (not res!2095461)) b!4905620))

(assert (= (or b!4905621 b!4905619 b!4905627) bm!340417))

(assert (=> bm!340417 m!5914080))

(declare-fun m!5914878 () Bool)

(assert (=> b!4905626 m!5914878))

(assert (=> b!4905626 m!5914878))

(declare-fun m!5914880 () Bool)

(assert (=> b!4905626 m!5914880))

(declare-fun m!5914882 () Bool)

(assert (=> b!4905628 m!5914882))

(assert (=> b!4905628 m!5914882))

(declare-fun m!5914884 () Bool)

(assert (=> b!4905628 m!5914884))

(assert (=> b!4905628 m!5914878))

(assert (=> b!4905628 m!5914884))

(assert (=> b!4905628 m!5914878))

(declare-fun m!5914886 () Bool)

(assert (=> b!4905628 m!5914886))

(assert (=> b!4905620 m!5914882))

(assert (=> b!4905616 m!5913978))

(assert (=> d!1576533 m!5914080))

(assert (=> d!1576533 m!5913980))

(assert (=> b!4905624 m!5914878))

(assert (=> b!4905624 m!5914878))

(assert (=> b!4905624 m!5914880))

(assert (=> b!4905618 m!5914882))

(assert (=> b!4904985 d!1576533))

(assert (=> b!4904985 d!1576245))

(assert (=> b!4904985 d!1576239))

(assert (=> b!4904985 d!1576237))

(declare-fun d!1576535 () Bool)

(assert (=> d!1576535 (= (list!17810 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))) (list!17812 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))))))

(declare-fun bs!1177055 () Bool)

(assert (= bs!1177055 d!1576535))

(declare-fun m!5914888 () Bool)

(assert (=> bs!1177055 m!5914888))

(assert (=> bs!1177011 d!1576535))

(assert (=> bs!1177011 d!1576277))

(declare-fun d!1576537 () Bool)

(assert (=> d!1576537 (= (isEmpty!30410 (_1!33697 lt!2012296)) ((_ is Nil!56539) (_1!33697 lt!2012296)))))

(assert (=> b!4905089 d!1576537))

(declare-fun d!1576539 () Bool)

(declare-fun res!2095469 () Bool)

(declare-fun e!3066521 () Bool)

(assert (=> d!1576539 (=> (not res!2095469) (not e!3066521))))

(assert (=> d!1576539 (= res!2095469 (= (csize!29830 (c!833614 input!1509)) (+ (size!37274 (left!41158 (c!833614 input!1509))) (size!37274 (right!41488 (c!833614 input!1509))))))))

(assert (=> d!1576539 (= (inv!72999 (c!833614 input!1509)) e!3066521)))

(declare-fun b!4905646 () Bool)

(declare-fun res!2095470 () Bool)

(assert (=> b!4905646 (=> (not res!2095470) (not e!3066521))))

(assert (=> b!4905646 (= res!2095470 (and (not (= (left!41158 (c!833614 input!1509)) Empty!14800)) (not (= (right!41488 (c!833614 input!1509)) Empty!14800))))))

(declare-fun b!4905647 () Bool)

(declare-fun res!2095471 () Bool)

(assert (=> b!4905647 (=> (not res!2095471) (not e!3066521))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4905647 (= res!2095471 (= (cheight!15011 (c!833614 input!1509)) (+ (max!0 (height!1966 (left!41158 (c!833614 input!1509))) (height!1966 (right!41488 (c!833614 input!1509)))) 1)))))

(declare-fun b!4905648 () Bool)

(assert (=> b!4905648 (= e!3066521 (<= 0 (cheight!15011 (c!833614 input!1509))))))

(assert (= (and d!1576539 res!2095469) b!4905646))

(assert (= (and b!4905646 res!2095470) b!4905647))

(assert (= (and b!4905647 res!2095471) b!4905648))

(declare-fun m!5914898 () Bool)

(assert (=> d!1576539 m!5914898))

(declare-fun m!5914900 () Bool)

(assert (=> d!1576539 m!5914900))

(assert (=> b!4905647 m!5914812))

(assert (=> b!4905647 m!5914814))

(assert (=> b!4905647 m!5914812))

(assert (=> b!4905647 m!5914814))

(declare-fun m!5914902 () Bool)

(assert (=> b!4905647 m!5914902))

(assert (=> b!4904899 d!1576539))

(declare-fun d!1576549 () Bool)

(assert (=> d!1576549 (= (isEmpty!30415 (maxPrefixOneRule!3569 thiss!15943 rule!164 lt!2012081)) (not ((_ is Some!14100) (maxPrefixOneRule!3569 thiss!15943 rule!164 lt!2012081))))))

(assert (=> d!1576279 d!1576549))

(declare-fun d!1576553 () Bool)

(assert (=> d!1576553 (= (isEmpty!30415 lt!2012317) (not ((_ is Some!14100) lt!2012317)))))

(assert (=> d!1576273 d!1576553))

(declare-fun d!1576555 () Bool)

(assert (=> d!1576555 (= (isEmpty!30410 (_1!33697 lt!2012316)) ((_ is Nil!56539) (_1!33697 lt!2012316)))))

(assert (=> d!1576273 d!1576555))

(declare-fun d!1576557 () Bool)

(declare-fun lt!2012512 () tuple2!60788)

(assert (=> d!1576557 (= (++!12261 (_1!33697 lt!2012512) (_2!33697 lt!2012512)) lt!2012081)))

(assert (=> d!1576557 (= lt!2012512 (findLongestMatchInner!1795 (regex!8232 rule!164) Nil!56539 0 lt!2012081 lt!2012081 (sizeTr!347 lt!2012081 0)))))

(declare-fun lt!2012510 () Unit!146695)

(declare-fun lt!2012516 () Unit!146695)

(assert (=> d!1576557 (= lt!2012510 lt!2012516)))

(declare-fun lt!2012511 () List!56663)

(declare-fun lt!2012514 () Int)

(assert (=> d!1576557 (= (sizeTr!347 lt!2012511 lt!2012514) (+ (size!37272 lt!2012511) lt!2012514))))

(assert (=> d!1576557 (= lt!2012516 (lemmaSizeTrEqualsSize!346 lt!2012511 lt!2012514))))

(assert (=> d!1576557 (= lt!2012514 0)))

(assert (=> d!1576557 (= lt!2012511 Nil!56539)))

(declare-fun lt!2012515 () Unit!146695)

(declare-fun lt!2012509 () Unit!146695)

(assert (=> d!1576557 (= lt!2012515 lt!2012509)))

(declare-fun lt!2012513 () Int)

(assert (=> d!1576557 (= (sizeTr!347 lt!2012081 lt!2012513) (+ (size!37272 lt!2012081) lt!2012513))))

(assert (=> d!1576557 (= lt!2012509 (lemmaSizeTrEqualsSize!346 lt!2012081 lt!2012513))))

(assert (=> d!1576557 (= lt!2012513 0)))

(assert (=> d!1576557 (validRegex!5900 (regex!8232 rule!164))))

(assert (=> d!1576557 (= (findLongestMatch!1663 (regex!8232 rule!164) lt!2012081) lt!2012512)))

(declare-fun bs!1177058 () Bool)

(assert (= bs!1177058 d!1576557))

(declare-fun m!5914910 () Bool)

(assert (=> bs!1177058 m!5914910))

(declare-fun m!5914912 () Bool)

(assert (=> bs!1177058 m!5914912))

(declare-fun m!5914914 () Bool)

(assert (=> bs!1177058 m!5914914))

(declare-fun m!5914916 () Bool)

(assert (=> bs!1177058 m!5914916))

(assert (=> bs!1177058 m!5913934))

(assert (=> bs!1177058 m!5913980))

(declare-fun m!5914918 () Bool)

(assert (=> bs!1177058 m!5914918))

(declare-fun m!5914920 () Bool)

(assert (=> bs!1177058 m!5914920))

(assert (=> bs!1177058 m!5914912))

(declare-fun m!5914922 () Bool)

(assert (=> bs!1177058 m!5914922))

(declare-fun m!5914924 () Bool)

(assert (=> bs!1177058 m!5914924))

(assert (=> d!1576273 d!1576557))

(assert (=> d!1576273 d!1576195))

(assert (=> d!1576235 d!1576243))

(declare-fun b!4905666 () Bool)

(declare-fun e!3066532 () Bool)

(declare-fun e!3066531 () Bool)

(assert (=> b!4905666 (= e!3066532 e!3066531)))

(declare-fun c!833833 () Bool)

(assert (=> b!4905666 (= c!833833 ((_ is IntegerValue!25627) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))

(declare-fun b!4905667 () Bool)

(assert (=> b!4905667 (= e!3066532 (inv!16 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))

(declare-fun b!4905668 () Bool)

(declare-fun res!2095481 () Bool)

(declare-fun e!3066533 () Bool)

(assert (=> b!4905668 (=> res!2095481 e!3066533)))

(assert (=> b!4905668 (= res!2095481 (not ((_ is IntegerValue!25628) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))))))

(assert (=> b!4905668 (= e!3066531 e!3066533)))

(declare-fun d!1576561 () Bool)

(declare-fun c!833832 () Bool)

(assert (=> d!1576561 (= c!833832 ((_ is IntegerValue!25626) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))

(assert (=> d!1576561 (= (inv!21 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))) e!3066532)))

(declare-fun b!4905669 () Bool)

(assert (=> b!4905669 (= e!3066531 (inv!17 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))

(declare-fun b!4905670 () Bool)

(assert (=> b!4905670 (= e!3066533 (inv!15 (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))

(assert (= (and d!1576561 c!833832) b!4905667))

(assert (= (and d!1576561 (not c!833832)) b!4905666))

(assert (= (and b!4905666 c!833833) b!4905669))

(assert (= (and b!4905666 (not c!833833)) b!4905668))

(assert (= (and b!4905668 (not res!2095481)) b!4905670))

(declare-fun m!5914926 () Bool)

(assert (=> b!4905667 m!5914926))

(declare-fun m!5914928 () Bool)

(assert (=> b!4905669 m!5914928))

(declare-fun m!5914930 () Bool)

(assert (=> b!4905670 m!5914930))

(assert (=> tb!259893 d!1576561))

(assert (=> b!4905126 d!1576533))

(assert (=> b!4905126 d!1576245))

(assert (=> b!4905126 d!1576239))

(assert (=> b!4905126 d!1576237))

(declare-fun b!4905672 () Bool)

(declare-fun e!3066535 () List!56663)

(assert (=> b!4905672 (= e!3066535 (Cons!56539 (h!62987 (_1!33697 lt!2012296)) (++!12261 (t!366795 (_1!33697 lt!2012296)) (_2!33697 lt!2012296))))))

(declare-fun b!4905674 () Bool)

(declare-fun e!3066534 () Bool)

(declare-fun lt!2012518 () List!56663)

(assert (=> b!4905674 (= e!3066534 (or (not (= (_2!33697 lt!2012296) Nil!56539)) (= lt!2012518 (_1!33697 lt!2012296))))))

(declare-fun b!4905671 () Bool)

(assert (=> b!4905671 (= e!3066535 (_2!33697 lt!2012296))))

(declare-fun b!4905673 () Bool)

(declare-fun res!2095482 () Bool)

(assert (=> b!4905673 (=> (not res!2095482) (not e!3066534))))

(assert (=> b!4905673 (= res!2095482 (= (size!37272 lt!2012518) (+ (size!37272 (_1!33697 lt!2012296)) (size!37272 (_2!33697 lt!2012296)))))))

(declare-fun d!1576563 () Bool)

(assert (=> d!1576563 e!3066534))

(declare-fun res!2095483 () Bool)

(assert (=> d!1576563 (=> (not res!2095483) (not e!3066534))))

(assert (=> d!1576563 (= res!2095483 (= (content!10037 lt!2012518) ((_ map or) (content!10037 (_1!33697 lt!2012296)) (content!10037 (_2!33697 lt!2012296)))))))

(assert (=> d!1576563 (= lt!2012518 e!3066535)))

(declare-fun c!833834 () Bool)

(assert (=> d!1576563 (= c!833834 ((_ is Nil!56539) (_1!33697 lt!2012296)))))

(assert (=> d!1576563 (= (++!12261 (_1!33697 lt!2012296) (_2!33697 lt!2012296)) lt!2012518)))

(assert (= (and d!1576563 c!833834) b!4905671))

(assert (= (and d!1576563 (not c!833834)) b!4905672))

(assert (= (and d!1576563 res!2095483) b!4905673))

(assert (= (and b!4905673 res!2095482) b!4905674))

(declare-fun m!5914942 () Bool)

(assert (=> b!4905672 m!5914942))

(declare-fun m!5914944 () Bool)

(assert (=> b!4905673 m!5914944))

(assert (=> b!4905673 m!5914202))

(declare-fun m!5914946 () Bool)

(assert (=> b!4905673 m!5914946))

(declare-fun m!5914948 () Bool)

(assert (=> d!1576563 m!5914948))

(declare-fun m!5914950 () Bool)

(assert (=> d!1576563 m!5914950))

(declare-fun m!5914952 () Bool)

(assert (=> d!1576563 m!5914952))

(assert (=> d!1576245 d!1576563))

(assert (=> d!1576245 d!1576319))

(declare-fun d!1576567 () Bool)

(assert (=> d!1576567 (= lt!2012081 lt!2012293)))

(declare-fun lt!2012521 () Unit!146695)

(declare-fun choose!35845 (List!56663 List!56663 List!56663 List!56663 List!56663) Unit!146695)

(assert (=> d!1576567 (= lt!2012521 (choose!35845 Nil!56539 lt!2012081 Nil!56539 lt!2012293 lt!2012081))))

(assert (=> d!1576567 (isPrefix!4914 Nil!56539 lt!2012081)))

(assert (=> d!1576567 (= (lemmaSamePrefixThenSameSuffix!2318 Nil!56539 lt!2012081 Nil!56539 lt!2012293 lt!2012081) lt!2012521)))

(declare-fun bs!1177060 () Bool)

(assert (= bs!1177060 d!1576567))

(declare-fun m!5914956 () Bool)

(assert (=> bs!1177060 m!5914956))

(assert (=> bs!1177060 m!5914564))

(assert (=> d!1576245 d!1576567))

(declare-fun d!1576571 () Bool)

(declare-fun lostCauseFct!279 (Regex!13307) Bool)

(assert (=> d!1576571 (= (lostCause!1101 (regex!8232 rule!164)) (lostCauseFct!279 (regex!8232 rule!164)))))

(declare-fun bs!1177061 () Bool)

(assert (= bs!1177061 d!1576571))

(declare-fun m!5914958 () Bool)

(assert (=> bs!1177061 m!5914958))

(assert (=> d!1576245 d!1576571))

(declare-fun b!4905688 () Bool)

(declare-fun res!2095499 () Bool)

(declare-fun e!3066541 () Bool)

(assert (=> b!4905688 (=> (not res!2095499) (not e!3066541))))

(assert (=> b!4905688 (= res!2095499 (= (head!10474 Nil!56539) (head!10474 (++!12261 Nil!56539 lt!2012081))))))

(declare-fun d!1576573 () Bool)

(declare-fun e!3066540 () Bool)

(assert (=> d!1576573 e!3066540))

(declare-fun res!2095496 () Bool)

(assert (=> d!1576573 (=> res!2095496 e!3066540)))

(declare-fun lt!2012522 () Bool)

(assert (=> d!1576573 (= res!2095496 (not lt!2012522))))

(declare-fun e!3066542 () Bool)

(assert (=> d!1576573 (= lt!2012522 e!3066542)))

(declare-fun res!2095497 () Bool)

(assert (=> d!1576573 (=> res!2095497 e!3066542)))

(assert (=> d!1576573 (= res!2095497 ((_ is Nil!56539) Nil!56539))))

(assert (=> d!1576573 (= (isPrefix!4914 Nil!56539 (++!12261 Nil!56539 lt!2012081)) lt!2012522)))

(declare-fun b!4905690 () Bool)

(assert (=> b!4905690 (= e!3066540 (>= (size!37272 (++!12261 Nil!56539 lt!2012081)) (size!37272 Nil!56539)))))

(declare-fun b!4905687 () Bool)

(assert (=> b!4905687 (= e!3066542 e!3066541)))

(declare-fun res!2095498 () Bool)

(assert (=> b!4905687 (=> (not res!2095498) (not e!3066541))))

(assert (=> b!4905687 (= res!2095498 (not ((_ is Nil!56539) (++!12261 Nil!56539 lt!2012081))))))

(declare-fun b!4905689 () Bool)

(assert (=> b!4905689 (= e!3066541 (isPrefix!4914 (tail!9621 Nil!56539) (tail!9621 (++!12261 Nil!56539 lt!2012081))))))

(assert (= (and d!1576573 (not res!2095497)) b!4905687))

(assert (= (and b!4905687 res!2095498) b!4905688))

(assert (= (and b!4905688 res!2095499) b!4905689))

(assert (= (and d!1576573 (not res!2095496)) b!4905690))

(declare-fun m!5914960 () Bool)

(assert (=> b!4905688 m!5914960))

(assert (=> b!4905688 m!5914208))

(declare-fun m!5914962 () Bool)

(assert (=> b!4905688 m!5914962))

(assert (=> b!4905690 m!5914208))

(declare-fun m!5914964 () Bool)

(assert (=> b!4905690 m!5914964))

(assert (=> b!4905690 m!5913930))

(declare-fun m!5914966 () Bool)

(assert (=> b!4905689 m!5914966))

(assert (=> b!4905689 m!5914208))

(declare-fun m!5914968 () Bool)

(assert (=> b!4905689 m!5914968))

(assert (=> b!4905689 m!5914966))

(assert (=> b!4905689 m!5914968))

(declare-fun m!5914970 () Bool)

(assert (=> b!4905689 m!5914970))

(assert (=> d!1576245 d!1576573))

(declare-fun b!4905692 () Bool)

(declare-fun e!3066544 () List!56663)

(assert (=> b!4905692 (= e!3066544 (Cons!56539 (h!62987 Nil!56539) (++!12261 (t!366795 Nil!56539) lt!2012081)))))

(declare-fun b!4905694 () Bool)

(declare-fun e!3066543 () Bool)

(declare-fun lt!2012523 () List!56663)

(assert (=> b!4905694 (= e!3066543 (or (not (= lt!2012081 Nil!56539)) (= lt!2012523 Nil!56539)))))

(declare-fun b!4905691 () Bool)

(assert (=> b!4905691 (= e!3066544 lt!2012081)))

(declare-fun b!4905693 () Bool)

(declare-fun res!2095500 () Bool)

(assert (=> b!4905693 (=> (not res!2095500) (not e!3066543))))

(assert (=> b!4905693 (= res!2095500 (= (size!37272 lt!2012523) (+ (size!37272 Nil!56539) (size!37272 lt!2012081))))))

(declare-fun d!1576575 () Bool)

(assert (=> d!1576575 e!3066543))

(declare-fun res!2095501 () Bool)

(assert (=> d!1576575 (=> (not res!2095501) (not e!3066543))))

(assert (=> d!1576575 (= res!2095501 (= (content!10037 lt!2012523) ((_ map or) (content!10037 Nil!56539) (content!10037 lt!2012081))))))

(assert (=> d!1576575 (= lt!2012523 e!3066544)))

(declare-fun c!833835 () Bool)

(assert (=> d!1576575 (= c!833835 ((_ is Nil!56539) Nil!56539))))

(assert (=> d!1576575 (= (++!12261 Nil!56539 lt!2012081) lt!2012523)))

(assert (= (and d!1576575 c!833835) b!4905691))

(assert (= (and d!1576575 (not c!833835)) b!4905692))

(assert (= (and d!1576575 res!2095501) b!4905693))

(assert (= (and b!4905693 res!2095500) b!4905694))

(declare-fun m!5914972 () Bool)

(assert (=> b!4905692 m!5914972))

(declare-fun m!5914974 () Bool)

(assert (=> b!4905693 m!5914974))

(assert (=> b!4905693 m!5913930))

(assert (=> b!4905693 m!5913934))

(declare-fun m!5914976 () Bool)

(assert (=> d!1576575 m!5914976))

(assert (=> d!1576575 m!5914546))

(declare-fun m!5914978 () Bool)

(assert (=> d!1576575 m!5914978))

(assert (=> d!1576245 d!1576575))

(declare-fun d!1576577 () Bool)

(assert (=> d!1576577 (isPrefix!4914 Nil!56539 (++!12261 Nil!56539 lt!2012081))))

(declare-fun lt!2012526 () Unit!146695)

(declare-fun choose!35846 (List!56663 List!56663) Unit!146695)

(assert (=> d!1576577 (= lt!2012526 (choose!35846 Nil!56539 lt!2012081))))

(assert (=> d!1576577 (= (lemmaConcatTwoListThenFirstIsPrefix!3138 Nil!56539 lt!2012081) lt!2012526)))

(declare-fun bs!1177062 () Bool)

(assert (= bs!1177062 d!1576577))

(assert (=> bs!1177062 m!5914208))

(assert (=> bs!1177062 m!5914208))

(assert (=> bs!1177062 m!5914210))

(declare-fun m!5914980 () Bool)

(assert (=> bs!1177062 m!5914980))

(assert (=> d!1576245 d!1576577))

(assert (=> d!1576245 d!1576419))

(declare-fun d!1576579 () Bool)

(assert (=> d!1576579 (= (list!17810 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))) (list!17812 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))))))

(declare-fun bs!1177063 () Bool)

(assert (= bs!1177063 d!1576579))

(declare-fun m!5914988 () Bool)

(assert (=> bs!1177063 m!5914988))

(assert (=> bs!1177012 d!1576579))

(declare-fun d!1576581 () Bool)

(assert (=> d!1576581 (= (list!17810 (seqFromList!5974 lt!2012078)) (list!17812 (c!833614 (seqFromList!5974 lt!2012078))))))

(declare-fun bs!1177064 () Bool)

(assert (= bs!1177064 d!1576581))

(declare-fun m!5914996 () Bool)

(assert (=> bs!1177064 m!5914996))

(assert (=> bs!1177012 d!1576581))

(assert (=> b!4905124 d!1576379))

(declare-fun d!1576585 () Bool)

(assert (=> d!1576585 (= (apply!13576 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317)))) (seqFromList!5974 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317))))) (dynLambda!22819 (toValue!11151 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317))))) (seqFromList!5974 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317))))))))

(declare-fun b_lambda!195357 () Bool)

(assert (=> (not b_lambda!195357) (not d!1576585)))

(declare-fun t!366831 () Bool)

(declare-fun tb!259905 () Bool)

(assert (=> (and b!4904796 (= (toValue!11151 (transformation!8232 rule!164)) (toValue!11151 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317)))))) t!366831) tb!259905))

(declare-fun result!323652 () Bool)

(assert (=> tb!259905 (= result!323652 (inv!21 (dynLambda!22819 (toValue!11151 (transformation!8232 (rule!11430 (_1!33698 (get!19554 lt!2012317))))) (seqFromList!5974 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317)))))))))

(declare-fun m!5914998 () Bool)

(assert (=> tb!259905 m!5914998))

(assert (=> d!1576585 t!366831))

(declare-fun b_and!346369 () Bool)

(assert (= b_and!346367 (and (=> t!366831 result!323652) b_and!346369)))

(assert (=> d!1576585 m!5914268))

(declare-fun m!5915000 () Bool)

(assert (=> d!1576585 m!5915000))

(assert (=> b!4905124 d!1576585))

(declare-fun d!1576587 () Bool)

(assert (=> d!1576587 (= (seqFromList!5974 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317)))) (fromListB!2703 (originalCharacters!8527 (_1!33698 (get!19554 lt!2012317)))))))

(declare-fun bs!1177065 () Bool)

(assert (= bs!1177065 d!1576587))

(declare-fun m!5915002 () Bool)

(assert (=> bs!1177065 m!5915002))

(assert (=> b!4905124 d!1576587))

(declare-fun b!4905701 () Bool)

(declare-fun e!3066548 () Bool)

(assert (=> b!4905701 (= e!3066548 tp_is_empty!35823)))

(declare-fun b!4905703 () Bool)

(declare-fun tp!1379952 () Bool)

(assert (=> b!4905703 (= e!3066548 tp!1379952)))

(declare-fun b!4905702 () Bool)

(declare-fun tp!1379951 () Bool)

(declare-fun tp!1379953 () Bool)

(assert (=> b!4905702 (= e!3066548 (and tp!1379951 tp!1379953))))

(assert (=> b!4905159 (= tp!1379931 e!3066548)))

(declare-fun b!4905704 () Bool)

(declare-fun tp!1379955 () Bool)

(declare-fun tp!1379954 () Bool)

(assert (=> b!4905704 (= e!3066548 (and tp!1379955 tp!1379954))))

(assert (= (and b!4905159 ((_ is ElementMatch!13307) (regOne!27127 (regex!8232 rule!164)))) b!4905701))

(assert (= (and b!4905159 ((_ is Concat!21849) (regOne!27127 (regex!8232 rule!164)))) b!4905702))

(assert (= (and b!4905159 ((_ is Star!13307) (regOne!27127 (regex!8232 rule!164)))) b!4905703))

(assert (= (and b!4905159 ((_ is Union!13307) (regOne!27127 (regex!8232 rule!164)))) b!4905704))

(declare-fun b!4905705 () Bool)

(declare-fun e!3066549 () Bool)

(assert (=> b!4905705 (= e!3066549 tp_is_empty!35823)))

(declare-fun b!4905707 () Bool)

(declare-fun tp!1379957 () Bool)

(assert (=> b!4905707 (= e!3066549 tp!1379957)))

(declare-fun b!4905706 () Bool)

(declare-fun tp!1379956 () Bool)

(declare-fun tp!1379958 () Bool)

(assert (=> b!4905706 (= e!3066549 (and tp!1379956 tp!1379958))))

(assert (=> b!4905159 (= tp!1379930 e!3066549)))

(declare-fun b!4905708 () Bool)

(declare-fun tp!1379960 () Bool)

(declare-fun tp!1379959 () Bool)

(assert (=> b!4905708 (= e!3066549 (and tp!1379960 tp!1379959))))

(assert (= (and b!4905159 ((_ is ElementMatch!13307) (regTwo!27127 (regex!8232 rule!164)))) b!4905705))

(assert (= (and b!4905159 ((_ is Concat!21849) (regTwo!27127 (regex!8232 rule!164)))) b!4905706))

(assert (= (and b!4905159 ((_ is Star!13307) (regTwo!27127 (regex!8232 rule!164)))) b!4905707))

(assert (= (and b!4905159 ((_ is Union!13307) (regTwo!27127 (regex!8232 rule!164)))) b!4905708))

(declare-fun tp!1379961 () Bool)

(declare-fun e!3066551 () Bool)

(declare-fun tp!1379963 () Bool)

(declare-fun b!4905709 () Bool)

(assert (=> b!4905709 (= e!3066551 (and (inv!72993 (left!41158 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))))) tp!1379961 (inv!72993 (right!41488 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))))) tp!1379963))))

(declare-fun b!4905711 () Bool)

(declare-fun e!3066550 () Bool)

(declare-fun tp!1379962 () Bool)

(assert (=> b!4905711 (= e!3066550 tp!1379962)))

(declare-fun b!4905710 () Bool)

(assert (=> b!4905710 (= e!3066551 (and (inv!73001 (xs!18116 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))))) e!3066550))))

(assert (=> b!4905164 (= tp!1379934 (and (inv!72993 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076))))) e!3066551))))

(assert (= (and b!4905164 ((_ is Node!14800) (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))))) b!4905709))

(assert (= b!4905710 b!4905711))

(assert (= (and b!4905164 ((_ is Leaf!24633) (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (_1!33699 lt!2012076)))))) b!4905710))

(declare-fun m!5915004 () Bool)

(assert (=> b!4905709 m!5915004))

(declare-fun m!5915006 () Bool)

(assert (=> b!4905709 m!5915006))

(declare-fun m!5915008 () Bool)

(assert (=> b!4905710 m!5915008))

(assert (=> b!4905164 m!5914300))

(declare-fun b!4905712 () Bool)

(declare-fun e!3066552 () Bool)

(assert (=> b!4905712 (= e!3066552 tp_is_empty!35823)))

(declare-fun b!4905714 () Bool)

(declare-fun tp!1379965 () Bool)

(assert (=> b!4905714 (= e!3066552 tp!1379965)))

(declare-fun b!4905713 () Bool)

(declare-fun tp!1379964 () Bool)

(declare-fun tp!1379966 () Bool)

(assert (=> b!4905713 (= e!3066552 (and tp!1379964 tp!1379966))))

(assert (=> b!4905157 (= tp!1379927 e!3066552)))

(declare-fun b!4905715 () Bool)

(declare-fun tp!1379968 () Bool)

(declare-fun tp!1379967 () Bool)

(assert (=> b!4905715 (= e!3066552 (and tp!1379968 tp!1379967))))

(assert (= (and b!4905157 ((_ is ElementMatch!13307) (regOne!27126 (regex!8232 rule!164)))) b!4905712))

(assert (= (and b!4905157 ((_ is Concat!21849) (regOne!27126 (regex!8232 rule!164)))) b!4905713))

(assert (= (and b!4905157 ((_ is Star!13307) (regOne!27126 (regex!8232 rule!164)))) b!4905714))

(assert (= (and b!4905157 ((_ is Union!13307) (regOne!27126 (regex!8232 rule!164)))) b!4905715))

(declare-fun b!4905718 () Bool)

(declare-fun e!3066555 () Bool)

(assert (=> b!4905718 (= e!3066555 tp_is_empty!35823)))

(declare-fun b!4905720 () Bool)

(declare-fun tp!1379970 () Bool)

(assert (=> b!4905720 (= e!3066555 tp!1379970)))

(declare-fun b!4905719 () Bool)

(declare-fun tp!1379969 () Bool)

(declare-fun tp!1379971 () Bool)

(assert (=> b!4905719 (= e!3066555 (and tp!1379969 tp!1379971))))

(assert (=> b!4905157 (= tp!1379929 e!3066555)))

(declare-fun b!4905721 () Bool)

(declare-fun tp!1379973 () Bool)

(declare-fun tp!1379972 () Bool)

(assert (=> b!4905721 (= e!3066555 (and tp!1379973 tp!1379972))))

(assert (= (and b!4905157 ((_ is ElementMatch!13307) (regTwo!27126 (regex!8232 rule!164)))) b!4905718))

(assert (= (and b!4905157 ((_ is Concat!21849) (regTwo!27126 (regex!8232 rule!164)))) b!4905719))

(assert (= (and b!4905157 ((_ is Star!13307) (regTwo!27126 (regex!8232 rule!164)))) b!4905720))

(assert (= (and b!4905157 ((_ is Union!13307) (regTwo!27126 (regex!8232 rule!164)))) b!4905721))

(declare-fun b!4905727 () Bool)

(declare-fun e!3066559 () Bool)

(declare-fun tp!1379976 () Bool)

(assert (=> b!4905727 (= e!3066559 (and tp_is_empty!35823 tp!1379976))))

(assert (=> b!4905145 (= tp!1379915 e!3066559)))

(assert (= (and b!4905145 ((_ is Cons!56539) (innerList!14888 (xs!18116 (c!833614 input!1509))))) b!4905727))

(declare-fun b!4905728 () Bool)

(declare-fun e!3066560 () Bool)

(assert (=> b!4905728 (= e!3066560 tp_is_empty!35823)))

(declare-fun b!4905730 () Bool)

(declare-fun tp!1379978 () Bool)

(assert (=> b!4905730 (= e!3066560 tp!1379978)))

(declare-fun b!4905729 () Bool)

(declare-fun tp!1379977 () Bool)

(declare-fun tp!1379979 () Bool)

(assert (=> b!4905729 (= e!3066560 (and tp!1379977 tp!1379979))))

(assert (=> b!4905158 (= tp!1379928 e!3066560)))

(declare-fun b!4905731 () Bool)

(declare-fun tp!1379981 () Bool)

(declare-fun tp!1379980 () Bool)

(assert (=> b!4905731 (= e!3066560 (and tp!1379981 tp!1379980))))

(assert (= (and b!4905158 ((_ is ElementMatch!13307) (reg!13636 (regex!8232 rule!164)))) b!4905728))

(assert (= (and b!4905158 ((_ is Concat!21849) (reg!13636 (regex!8232 rule!164)))) b!4905729))

(assert (= (and b!4905158 ((_ is Star!13307) (reg!13636 (regex!8232 rule!164)))) b!4905730))

(assert (= (and b!4905158 ((_ is Union!13307) (reg!13636 (regex!8232 rule!164)))) b!4905731))

(declare-fun b!4905736 () Bool)

(declare-fun tp!1379984 () Bool)

(declare-fun tp!1379982 () Bool)

(declare-fun e!3066564 () Bool)

(assert (=> b!4905736 (= e!3066564 (and (inv!72993 (left!41158 (left!41158 (c!833614 input!1509)))) tp!1379982 (inv!72993 (right!41488 (left!41158 (c!833614 input!1509)))) tp!1379984))))

(declare-fun b!4905738 () Bool)

(declare-fun e!3066563 () Bool)

(declare-fun tp!1379983 () Bool)

(assert (=> b!4905738 (= e!3066563 tp!1379983)))

(declare-fun b!4905737 () Bool)

(assert (=> b!4905737 (= e!3066564 (and (inv!73001 (xs!18116 (left!41158 (c!833614 input!1509)))) e!3066563))))

(assert (=> b!4905143 (= tp!1379914 (and (inv!72993 (left!41158 (c!833614 input!1509))) e!3066564))))

(assert (= (and b!4905143 ((_ is Node!14800) (left!41158 (c!833614 input!1509)))) b!4905736))

(assert (= b!4905737 b!4905738))

(assert (= (and b!4905143 ((_ is Leaf!24633) (left!41158 (c!833614 input!1509)))) b!4905737))

(declare-fun m!5915022 () Bool)

(assert (=> b!4905736 m!5915022))

(declare-fun m!5915026 () Bool)

(assert (=> b!4905736 m!5915026))

(declare-fun m!5915028 () Bool)

(assert (=> b!4905737 m!5915028))

(assert (=> b!4905143 m!5914294))

(declare-fun b!4905739 () Bool)

(declare-fun tp!1379987 () Bool)

(declare-fun tp!1379985 () Bool)

(declare-fun e!3066566 () Bool)

(assert (=> b!4905739 (= e!3066566 (and (inv!72993 (left!41158 (right!41488 (c!833614 input!1509)))) tp!1379985 (inv!72993 (right!41488 (right!41488 (c!833614 input!1509)))) tp!1379987))))

(declare-fun b!4905741 () Bool)

(declare-fun e!3066565 () Bool)

(declare-fun tp!1379986 () Bool)

(assert (=> b!4905741 (= e!3066565 tp!1379986)))

(declare-fun b!4905740 () Bool)

(assert (=> b!4905740 (= e!3066566 (and (inv!73001 (xs!18116 (right!41488 (c!833614 input!1509)))) e!3066565))))

(assert (=> b!4905143 (= tp!1379916 (and (inv!72993 (right!41488 (c!833614 input!1509))) e!3066566))))

(assert (= (and b!4905143 ((_ is Node!14800) (right!41488 (c!833614 input!1509)))) b!4905739))

(assert (= b!4905740 b!4905741))

(assert (= (and b!4905143 ((_ is Leaf!24633) (right!41488 (c!833614 input!1509)))) b!4905740))

(declare-fun m!5915036 () Bool)

(assert (=> b!4905739 m!5915036))

(declare-fun m!5915038 () Bool)

(assert (=> b!4905739 m!5915038))

(declare-fun m!5915040 () Bool)

(assert (=> b!4905740 m!5915040))

(assert (=> b!4905143 m!5914296))

(declare-fun tp!1379990 () Bool)

(declare-fun b!4905742 () Bool)

(declare-fun tp!1379988 () Bool)

(declare-fun e!3066568 () Bool)

(assert (=> b!4905742 (= e!3066568 (and (inv!72993 (left!41158 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))))) tp!1379988 (inv!72993 (right!41488 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))))) tp!1379990))))

(declare-fun b!4905744 () Bool)

(declare-fun e!3066567 () Bool)

(declare-fun tp!1379989 () Bool)

(assert (=> b!4905744 (= e!3066567 tp!1379989)))

(declare-fun b!4905743 () Bool)

(assert (=> b!4905743 (= e!3066568 (and (inv!73001 (xs!18116 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))))) e!3066567))))

(assert (=> b!4905165 (= tp!1379935 (and (inv!72993 (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078))))) e!3066568))))

(assert (= (and b!4905165 ((_ is Node!14800) (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))))) b!4905742))

(assert (= b!4905743 b!4905744))

(assert (= (and b!4905165 ((_ is Leaf!24633) (c!833614 (dynLambda!22820 (toChars!11010 (transformation!8232 rule!164)) (dynLambda!22819 (toValue!11151 (transformation!8232 rule!164)) (seqFromList!5974 lt!2012078)))))) b!4905743))

(declare-fun m!5915042 () Bool)

(assert (=> b!4905742 m!5915042))

(declare-fun m!5915044 () Bool)

(assert (=> b!4905742 m!5915044))

(declare-fun m!5915046 () Bool)

(assert (=> b!4905743 m!5915046))

(assert (=> b!4905165 m!5914308))

(declare-fun b_lambda!195359 () Bool)

(assert (= b_lambda!195349 (or (and b!4904796 b_free!131901) b_lambda!195359)))

(declare-fun b_lambda!195361 () Bool)

(assert (= b_lambda!195353 (or (and b!4904796 b_free!131899) b_lambda!195361)))

(declare-fun b_lambda!195363 () Bool)

(assert (= b_lambda!195337 (or b!4904797 b_lambda!195363)))

(assert (=> d!1576299 d!1576291))

(declare-fun b_lambda!195365 () Bool)

(assert (= b_lambda!195355 (or b!4904797 b_lambda!195365)))

(assert (=> d!1576459 d!1576289))

(declare-fun b_lambda!195367 () Bool)

(assert (= b_lambda!195351 (or (and b!4904796 b_free!131899) b_lambda!195367)))

(check-sat (not b!4905744) (not b!4905454) (not b_next!132689) (not d!1576581) (not b!4905247) (not b!4905740) (not b!4905647) (not b!4905711) (not bm!340395) (not tb!259903) (not b!4905522) (not d!1576471) (not b!4905739) (not b_next!132691) (not b!4905628) (not b!4905143) (not b!4905199) (not d!1576381) b_and!346363 (not d!1576409) (not b!4905721) (not d!1576529) (not b!4905704) (not b_lambda!195327) (not bm!340396) (not d!1576513) (not d!1576527) (not b!4905526) (not b!4905200) (not b!4905187) (not b!4905618) (not b!4905362) (not b!4905484) (not b!4905669) (not b!4905688) (not bm!340397) (not b!4905670) (not d!1576425) (not bm!340394) (not bm!340372) (not b!4905719) (not b!4905727) (not d!1576307) (not d!1576389) (not b!4905692) (not bm!340391) (not d!1576455) (not d!1576575) (not b_lambda!195321) (not d!1576309) (not b!4905511) (not b!4905516) (not d!1576317) (not b!4905197) (not b!4905620) (not d!1576571) (not bm!340399) (not b!4905394) (not b!4905261) (not b!4905730) (not b_lambda!195341) (not bm!340387) (not b!4905693) (not b!4905729) (not b_lambda!195307) (not bm!340386) (not d!1576465) (not b!4905370) (not b!4905579) (not d!1576533) (not b!4905515) (not b!4905574) (not b!4905388) (not d!1576433) (not d!1576485) (not b!4905375) (not d!1576403) (not d!1576337) (not b!4905614) (not b!4905337) (not bm!340370) (not b!4905479) (not b!4905188) (not tb!259905) tp_is_empty!35823 (not b!4905708) (not b!4905702) (not b!4905612) (not b!4905710) (not b!4905609) (not b!4905605) (not b!4905306) (not b_lambda!195311) (not b!4905514) (not b!4905599) (not d!1576567) (not d!1576393) (not b!4905361) (not b!4905576) (not bm!340403) (not bm!340392) (not d!1576339) (not b!4905713) (not b!4905189) (not b!4905530) (not b!4905450) (not b!4905405) (not b!4905715) (not b!4905520) (not b!4905451) (not b!4905513) (not d!1576443) (not d!1576417) (not bm!340390) (not d!1576327) (not d!1576587) (not b!4905703) (not b_lambda!195309) (not bm!340402) (not b!4905528) (not b!4905512) (not b_lambda!195325) (not d!1576355) (not b!4905738) (not b!4905366) (not b!4905607) (not b!4905597) (not b_lambda!195323) (not d!1576517) (not b!4905164) (not d!1576303) (not b!4905387) (not b!4905398) (not d!1576539) (not b!4905626) (not b!4905196) (not d!1576563) (not b!4905562) (not b!4905262) (not b!4905482) (not b!4905743) (not b!4905407) (not b!4905374) (not d!1576579) (not b_lambda!195359) (not b!4905176) (not b!4905689) (not b!4905406) (not b!4905624) (not b!4905551) (not b!4905742) (not b!4905165) (not b!4905616) (not b!4905709) (not b!4905741) (not b!4905202) (not d!1576535) (not tb!259901) (not b!4905673) (not b!4905601) (not b!4905466) (not b!4905439) (not d!1576557) (not b!4905453) (not d!1576577) (not b_lambda!195361) (not d!1576419) (not bm!340416) (not b!4905672) (not b!4905737) (not tb!259895) (not b!4905421) (not b!4905720) (not d!1576437) (not b!4905736) (not d!1576503) (not d!1576387) (not b!4905594) (not bm!340393) (not b!4905731) (not d!1576333) (not b!4905707) (not b!4905397) (not b!4905690) (not bm!340417) (not d!1576505) (not b!4905518) (not b!4905714) (not b_lambda!195367) (not d!1576447) (not b!4905339) (not b!4905667) (not b!4905177) (not d!1576429) (not b!4905706) (not b_lambda!195357) (not b_lambda!195363) b_and!346369 (not b!4905452) (not d!1576325) (not b!4905577) (not d!1576297) (not d!1576523) (not b!4905422) (not b_lambda!195365))
(check-sat b_and!346363 b_and!346369 (not b_next!132691) (not b_next!132689))
