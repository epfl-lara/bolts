; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527034 () Bool)

(assert start!527034)

(declare-fun b!4987261 () Bool)

(declare-fun b_free!133203 () Bool)

(declare-fun b_next!133993 () Bool)

(assert (=> b!4987261 (= b_free!133203 (not b_next!133993))))

(declare-fun tp!1397688 () Bool)

(declare-fun b_and!349979 () Bool)

(assert (=> b!4987261 (= tp!1397688 b_and!349979)))

(declare-fun b_free!133205 () Bool)

(declare-fun b_next!133995 () Bool)

(assert (=> b!4987261 (= b_free!133205 (not b_next!133995))))

(declare-fun tp!1397687 () Bool)

(declare-fun b_and!349981 () Bool)

(assert (=> b!4987261 (= tp!1397687 b_and!349981)))

(declare-fun b!4987274 () Bool)

(declare-fun e!3116945 () Bool)

(assert (=> b!4987274 (= e!3116945 true)))

(declare-fun b!4987273 () Bool)

(declare-fun e!3116944 () Bool)

(assert (=> b!4987273 (= e!3116944 e!3116945)))

(declare-fun b!4987262 () Bool)

(assert (=> b!4987262 e!3116944))

(assert (= b!4987273 b!4987274))

(assert (= b!4987262 b!4987273))

(declare-fun lambda!248080 () Int)

(declare-fun order!26643 () Int)

(declare-datatypes ((C!27668 0))(
  ( (C!27669 (val!23200 Int)) )
))
(declare-datatypes ((List!57748 0))(
  ( (Nil!57624) (Cons!57624 (h!64072 C!27668) (t!370014 List!57748)) )
))
(declare-datatypes ((IArray!30517 0))(
  ( (IArray!30518 (innerList!15316 List!57748)) )
))
(declare-datatypes ((List!57749 0))(
  ( (Nil!57625) (Cons!57625 (h!64073 (_ BitVec 16)) (t!370015 List!57749)) )
))
(declare-datatypes ((Regex!13709 0))(
  ( (ElementMatch!13709 (c!851035 C!27668)) (Concat!22495 (regOne!27930 Regex!13709) (regTwo!27930 Regex!13709)) (EmptyExpr!13709) (Star!13709 (reg!14038 Regex!13709)) (EmptyLang!13709) (Union!13709 (regOne!27931 Regex!13709) (regTwo!27931 Regex!13709)) )
))
(declare-datatypes ((Conc!15228 0))(
  ( (Node!15228 (left!42160 Conc!15228) (right!42490 Conc!15228) (csize!30686 Int) (cheight!15439 Int)) (Leaf!25291 (xs!18554 IArray!30517) (csize!30687 Int)) (Empty!15228) )
))
(declare-datatypes ((BalanceConc!29886 0))(
  ( (BalanceConc!29887 (c!851036 Conc!15228)) )
))
(declare-datatypes ((TokenValue!8786 0))(
  ( (FloatLiteralValue!17572 (text!61947 List!57749)) (TokenValueExt!8785 (__x!34865 Int)) (Broken!43930 (value!270958 List!57749)) (Object!8909) (End!8786) (Def!8786) (Underscore!8786) (Match!8786) (Else!8786) (Error!8786) (Case!8786) (If!8786) (Extends!8786) (Abstract!8786) (Class!8786) (Val!8786) (DelimiterValue!17572 (del!8846 List!57749)) (KeywordValue!8792 (value!270959 List!57749)) (CommentValue!17572 (value!270960 List!57749)) (WhitespaceValue!17572 (value!270961 List!57749)) (IndentationValue!8786 (value!270962 List!57749)) (String!65803) (Int32!8786) (Broken!43931 (value!270963 List!57749)) (Boolean!8787) (Unit!148774) (OperatorValue!8789 (op!8846 List!57749)) (IdentifierValue!17572 (value!270964 List!57749)) (IdentifierValue!17573 (value!270965 List!57749)) (WhitespaceValue!17573 (value!270966 List!57749)) (True!17572) (False!17572) (Broken!43932 (value!270967 List!57749)) (Broken!43933 (value!270968 List!57749)) (True!17573) (RightBrace!8786) (RightBracket!8786) (Colon!8786) (Null!8786) (Comma!8786) (LeftBracket!8786) (False!17573) (LeftBrace!8786) (ImaginaryLiteralValue!8786 (text!61948 List!57749)) (StringLiteralValue!26358 (value!270969 List!57749)) (EOFValue!8786 (value!270970 List!57749)) (IdentValue!8786 (value!270971 List!57749)) (DelimiterValue!17573 (value!270972 List!57749)) (DedentValue!8786 (value!270973 List!57749)) (NewLineValue!8786 (value!270974 List!57749)) (IntegerValue!26358 (value!270975 (_ BitVec 32)) (text!61949 List!57749)) (IntegerValue!26359 (value!270976 Int) (text!61950 List!57749)) (Times!8786) (Or!8786) (Equal!8786) (Minus!8786) (Broken!43934 (value!270977 List!57749)) (And!8786) (Div!8786) (LessEqual!8786) (Mod!8786) (Concat!22496) (Not!8786) (Plus!8786) (SpaceValue!8786 (value!270978 List!57749)) (IntegerValue!26360 (value!270979 Int) (text!61951 List!57749)) (StringLiteralValue!26359 (text!61952 List!57749)) (FloatLiteralValue!17573 (text!61953 List!57749)) (BytesLiteralValue!8786 (value!270980 List!57749)) (CommentValue!17573 (value!270981 List!57749)) (StringLiteralValue!26360 (value!270982 List!57749)) (ErrorTokenValue!8786 (msg!8847 List!57749)) )
))
(declare-datatypes ((String!65804 0))(
  ( (String!65805 (value!270983 String)) )
))
(declare-datatypes ((TokenValueInjection!16880 0))(
  ( (TokenValueInjection!16881 (toValue!11485 Int) (toChars!11344 Int)) )
))
(declare-datatypes ((Rule!16752 0))(
  ( (Rule!16753 (regex!8476 Regex!13709) (tag!9340 String!65804) (isSeparator!8476 Bool) (transformation!8476 TokenValueInjection!16880)) )
))
(declare-fun rule!200 () Rule!16752)

(declare-fun order!26641 () Int)

(declare-fun dynLambda!23470 (Int Int) Int)

(declare-fun dynLambda!23471 (Int Int) Int)

(assert (=> b!4987274 (< (dynLambda!23470 order!26641 (toValue!11485 (transformation!8476 rule!200))) (dynLambda!23471 order!26643 lambda!248080))))

(declare-fun order!26645 () Int)

(declare-fun dynLambda!23472 (Int Int) Int)

(assert (=> b!4987274 (< (dynLambda!23472 order!26645 (toChars!11344 (transformation!8476 rule!200))) (dynLambda!23471 order!26643 lambda!248080))))

(declare-fun b!4987256 () Bool)

(declare-fun e!3116930 () Bool)

(declare-fun totalInput!520 () BalanceConc!29886)

(declare-fun tp!1397690 () Bool)

(declare-fun inv!75563 (Conc!15228) Bool)

(assert (=> b!4987256 (= e!3116930 (and (inv!75563 (c!851036 totalInput!520)) tp!1397690))))

(declare-fun b!4987257 () Bool)

(declare-fun e!3116939 () Bool)

(declare-fun input!1580 () BalanceConc!29886)

(declare-fun tp!1397689 () Bool)

(assert (=> b!4987257 (= e!3116939 (and (inv!75563 (c!851036 input!1580)) tp!1397689))))

(declare-fun b!4987258 () Bool)

(declare-fun e!3116938 () Bool)

(declare-fun e!3116932 () Bool)

(assert (=> b!4987258 (= e!3116938 e!3116932)))

(declare-fun res!2129017 () Bool)

(assert (=> b!4987258 (=> (not res!2129017) (not e!3116932))))

(declare-fun lt!2061379 () List!57748)

(declare-fun isSuffix!1275 (List!57748 List!57748) Bool)

(declare-fun list!18504 (BalanceConc!29886) List!57748)

(assert (=> b!4987258 (= res!2129017 (isSuffix!1275 lt!2061379 (list!18504 totalInput!520)))))

(assert (=> b!4987258 (= lt!2061379 (list!18504 input!1580))))

(declare-fun b!4987259 () Bool)

(declare-fun e!3116936 () Bool)

(declare-datatypes ((tuple2!62676 0))(
  ( (tuple2!62677 (_1!34641 List!57748) (_2!34641 List!57748)) )
))
(declare-fun lt!2061380 () tuple2!62676)

(declare-fun matchR!6701 (Regex!13709 List!57748) Bool)

(assert (=> b!4987259 (= e!3116936 (matchR!6701 (regex!8476 rule!200) (_1!34641 lt!2061380)))))

(declare-fun b!4987260 () Bool)

(declare-fun e!3116934 () Bool)

(declare-fun tp!1397686 () Bool)

(declare-fun e!3116931 () Bool)

(declare-fun inv!75558 (String!65804) Bool)

(declare-fun inv!75564 (TokenValueInjection!16880) Bool)

(assert (=> b!4987260 (= e!3116931 (and tp!1397686 (inv!75558 (tag!9340 rule!200)) (inv!75564 (transformation!8476 rule!200)) e!3116934))))

(assert (=> b!4987261 (= e!3116934 (and tp!1397688 tp!1397687))))

(declare-fun res!2129019 () Bool)

(declare-fun e!3116935 () Bool)

(assert (=> b!4987262 (=> res!2129019 e!3116935)))

(declare-fun Forall!1824 (Int) Bool)

(assert (=> b!4987262 (= res!2129019 (not (Forall!1824 lambda!248080)))))

(declare-fun b!4987263 () Bool)

(declare-fun e!3116933 () Bool)

(assert (=> b!4987263 (= e!3116933 (not e!3116935))))

(declare-fun res!2129015 () Bool)

(assert (=> b!4987263 (=> res!2129015 e!3116935)))

(declare-fun semiInverseModEq!3769 (Int Int) Bool)

(assert (=> b!4987263 (= res!2129015 (not (semiInverseModEq!3769 (toChars!11344 (transformation!8476 rule!200)) (toValue!11485 (transformation!8476 rule!200)))))))

(declare-datatypes ((Unit!148775 0))(
  ( (Unit!148776) )
))
(declare-fun lt!2061381 () Unit!148775)

(declare-fun lemmaInv!1395 (TokenValueInjection!16880) Unit!148775)

(assert (=> b!4987263 (= lt!2061381 (lemmaInv!1395 (transformation!8476 rule!200)))))

(assert (=> b!4987263 e!3116936))

(declare-fun res!2129021 () Bool)

(assert (=> b!4987263 (=> res!2129021 e!3116936)))

(declare-fun isEmpty!31180 (List!57748) Bool)

(assert (=> b!4987263 (= res!2129021 (isEmpty!31180 (_1!34641 lt!2061380)))))

(declare-fun findLongestMatchInner!1918 (Regex!13709 List!57748 Int List!57748 List!57748 Int) tuple2!62676)

(declare-fun size!38283 (List!57748) Int)

(assert (=> b!4987263 (= lt!2061380 (findLongestMatchInner!1918 (regex!8476 rule!200) Nil!57624 (size!38283 Nil!57624) lt!2061379 lt!2061379 (size!38283 lt!2061379)))))

(declare-fun lt!2061384 () Unit!148775)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1879 (Regex!13709 List!57748) Unit!148775)

(assert (=> b!4987263 (= lt!2061384 (longestMatchIsAcceptedByMatchOrIsEmpty!1879 (regex!8476 rule!200) lt!2061379))))

(declare-fun res!2129020 () Bool)

(assert (=> start!527034 (=> (not res!2129020) (not e!3116938))))

(declare-datatypes ((LexerInterface!8068 0))(
  ( (LexerInterfaceExt!8065 (__x!34866 Int)) (Lexer!8066) )
))
(declare-fun thiss!16165 () LexerInterface!8068)

(get-info :version)

(assert (=> start!527034 (= res!2129020 ((_ is Lexer!8066) thiss!16165))))

(assert (=> start!527034 e!3116938))

(assert (=> start!527034 true))

(assert (=> start!527034 e!3116931))

(declare-fun inv!75565 (BalanceConc!29886) Bool)

(assert (=> start!527034 (and (inv!75565 input!1580) e!3116939)))

(assert (=> start!527034 (and (inv!75565 totalInput!520) e!3116930)))

(declare-fun b!4987264 () Bool)

(declare-fun res!2129016 () Bool)

(assert (=> b!4987264 (=> (not res!2129016) (not e!3116938))))

(declare-fun ruleValid!3884 (LexerInterface!8068 Rule!16752) Bool)

(assert (=> b!4987264 (= res!2129016 (ruleValid!3884 thiss!16165 rule!200))))

(declare-fun b!4987265 () Bool)

(declare-datatypes ((tuple2!62678 0))(
  ( (tuple2!62679 (_1!34642 BalanceConc!29886) (_2!34642 BalanceConc!29886)) )
))
(declare-fun lt!2061386 () tuple2!62678)

(declare-fun lt!2061382 () List!57748)

(declare-datatypes ((Token!15404 0))(
  ( (Token!15405 (value!270984 TokenValue!8786) (rule!11744 Rule!16752) (size!38284 Int) (originalCharacters!8733 List!57748)) )
))
(declare-fun inv!75566 (Token!15404) Bool)

(declare-fun apply!13961 (TokenValueInjection!16880 BalanceConc!29886) TokenValue!8786)

(declare-fun size!38285 (BalanceConc!29886) Int)

(assert (=> b!4987265 (= e!3116935 (inv!75566 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)))))

(declare-fun lt!2061385 () Unit!148775)

(declare-fun ForallOf!1283 (Int BalanceConc!29886) Unit!148775)

(declare-fun seqFromList!6095 (List!57748) BalanceConc!29886)

(assert (=> b!4987265 (= lt!2061385 (ForallOf!1283 lambda!248080 (seqFromList!6095 lt!2061382)))))

(assert (=> b!4987265 (= lt!2061382 (list!18504 (_1!34642 lt!2061386)))))

(declare-fun lt!2061383 () Unit!148775)

(assert (=> b!4987265 (= lt!2061383 (ForallOf!1283 lambda!248080 (_1!34642 lt!2061386)))))

(declare-fun b!4987266 () Bool)

(assert (=> b!4987266 (= e!3116932 e!3116933)))

(declare-fun res!2129018 () Bool)

(assert (=> b!4987266 (=> (not res!2129018) (not e!3116933))))

(declare-fun isEmpty!31181 (BalanceConc!29886) Bool)

(assert (=> b!4987266 (= res!2129018 (not (isEmpty!31181 (_1!34642 lt!2061386))))))

(declare-fun findLongestMatchWithZipperSequenceV2!239 (Regex!13709 BalanceConc!29886 BalanceConc!29886) tuple2!62678)

(assert (=> b!4987266 (= lt!2061386 (findLongestMatchWithZipperSequenceV2!239 (regex!8476 rule!200) input!1580 totalInput!520))))

(assert (= (and start!527034 res!2129020) b!4987264))

(assert (= (and b!4987264 res!2129016) b!4987258))

(assert (= (and b!4987258 res!2129017) b!4987266))

(assert (= (and b!4987266 res!2129018) b!4987263))

(assert (= (and b!4987263 (not res!2129021)) b!4987259))

(assert (= (and b!4987263 (not res!2129015)) b!4987262))

(assert (= (and b!4987262 (not res!2129019)) b!4987265))

(assert (= b!4987260 b!4987261))

(assert (= start!527034 b!4987260))

(assert (= start!527034 b!4987257))

(assert (= start!527034 b!4987256))

(declare-fun m!6019046 () Bool)

(assert (=> b!4987259 m!6019046))

(declare-fun m!6019048 () Bool)

(assert (=> b!4987263 m!6019048))

(declare-fun m!6019050 () Bool)

(assert (=> b!4987263 m!6019050))

(declare-fun m!6019052 () Bool)

(assert (=> b!4987263 m!6019052))

(declare-fun m!6019054 () Bool)

(assert (=> b!4987263 m!6019054))

(declare-fun m!6019056 () Bool)

(assert (=> b!4987263 m!6019056))

(declare-fun m!6019058 () Bool)

(assert (=> b!4987263 m!6019058))

(declare-fun m!6019060 () Bool)

(assert (=> b!4987263 m!6019060))

(assert (=> b!4987263 m!6019056))

(assert (=> b!4987263 m!6019054))

(declare-fun m!6019062 () Bool)

(assert (=> b!4987258 m!6019062))

(assert (=> b!4987258 m!6019062))

(declare-fun m!6019064 () Bool)

(assert (=> b!4987258 m!6019064))

(declare-fun m!6019066 () Bool)

(assert (=> b!4987258 m!6019066))

(declare-fun m!6019068 () Bool)

(assert (=> b!4987260 m!6019068))

(declare-fun m!6019070 () Bool)

(assert (=> b!4987260 m!6019070))

(declare-fun m!6019072 () Bool)

(assert (=> b!4987264 m!6019072))

(declare-fun m!6019074 () Bool)

(assert (=> start!527034 m!6019074))

(declare-fun m!6019076 () Bool)

(assert (=> start!527034 m!6019076))

(declare-fun m!6019078 () Bool)

(assert (=> b!4987265 m!6019078))

(declare-fun m!6019080 () Bool)

(assert (=> b!4987265 m!6019080))

(declare-fun m!6019082 () Bool)

(assert (=> b!4987265 m!6019082))

(declare-fun m!6019084 () Bool)

(assert (=> b!4987265 m!6019084))

(declare-fun m!6019086 () Bool)

(assert (=> b!4987265 m!6019086))

(declare-fun m!6019088 () Bool)

(assert (=> b!4987265 m!6019088))

(assert (=> b!4987265 m!6019080))

(declare-fun m!6019090 () Bool)

(assert (=> b!4987265 m!6019090))

(declare-fun m!6019092 () Bool)

(assert (=> b!4987257 m!6019092))

(declare-fun m!6019094 () Bool)

(assert (=> b!4987266 m!6019094))

(declare-fun m!6019096 () Bool)

(assert (=> b!4987266 m!6019096))

(declare-fun m!6019098 () Bool)

(assert (=> b!4987262 m!6019098))

(declare-fun m!6019100 () Bool)

(assert (=> b!4987256 m!6019100))

(check-sat (not b!4987264) (not b!4987258) (not b_next!133995) (not b!4987266) (not b!4987259) (not b!4987256) b_and!349979 (not b!4987263) (not b!4987265) b_and!349981 (not b!4987260) (not b!4987262) (not b!4987257) (not b_next!133993) (not start!527034))
(check-sat b_and!349981 b_and!349979 (not b_next!133995) (not b_next!133993))
(get-model)

(declare-fun d!1605991 () Bool)

(declare-fun choose!36869 (Int) Bool)

(assert (=> d!1605991 (= (Forall!1824 lambda!248080) (choose!36869 lambda!248080))))

(declare-fun bs!1184713 () Bool)

(assert (= bs!1184713 d!1605991))

(declare-fun m!6019102 () Bool)

(assert (=> bs!1184713 m!6019102))

(assert (=> b!4987262 d!1605991))

(declare-fun d!1605993 () Bool)

(declare-fun c!851039 () Bool)

(assert (=> d!1605993 (= c!851039 ((_ is Node!15228) (c!851036 totalInput!520)))))

(declare-fun e!3116950 () Bool)

(assert (=> d!1605993 (= (inv!75563 (c!851036 totalInput!520)) e!3116950)))

(declare-fun b!4987281 () Bool)

(declare-fun inv!75569 (Conc!15228) Bool)

(assert (=> b!4987281 (= e!3116950 (inv!75569 (c!851036 totalInput!520)))))

(declare-fun b!4987282 () Bool)

(declare-fun e!3116951 () Bool)

(assert (=> b!4987282 (= e!3116950 e!3116951)))

(declare-fun res!2129028 () Bool)

(assert (=> b!4987282 (= res!2129028 (not ((_ is Leaf!25291) (c!851036 totalInput!520))))))

(assert (=> b!4987282 (=> res!2129028 e!3116951)))

(declare-fun b!4987283 () Bool)

(declare-fun inv!75570 (Conc!15228) Bool)

(assert (=> b!4987283 (= e!3116951 (inv!75570 (c!851036 totalInput!520)))))

(assert (= (and d!1605993 c!851039) b!4987281))

(assert (= (and d!1605993 (not c!851039)) b!4987282))

(assert (= (and b!4987282 (not res!2129028)) b!4987283))

(declare-fun m!6019108 () Bool)

(assert (=> b!4987281 m!6019108))

(declare-fun m!6019110 () Bool)

(assert (=> b!4987283 m!6019110))

(assert (=> b!4987256 d!1605993))

(declare-fun d!1605999 () Bool)

(declare-fun lt!2061392 () Bool)

(assert (=> d!1605999 (= lt!2061392 (isEmpty!31180 (list!18504 (_1!34642 lt!2061386))))))

(declare-fun isEmpty!31183 (Conc!15228) Bool)

(assert (=> d!1605999 (= lt!2061392 (isEmpty!31183 (c!851036 (_1!34642 lt!2061386))))))

(assert (=> d!1605999 (= (isEmpty!31181 (_1!34642 lt!2061386)) lt!2061392)))

(declare-fun bs!1184715 () Bool)

(assert (= bs!1184715 d!1605999))

(assert (=> bs!1184715 m!6019086))

(assert (=> bs!1184715 m!6019086))

(declare-fun m!6019112 () Bool)

(assert (=> bs!1184715 m!6019112))

(declare-fun m!6019114 () Bool)

(assert (=> bs!1184715 m!6019114))

(assert (=> b!4987266 d!1605999))

(declare-fun d!1606001 () Bool)

(declare-fun lt!2061405 () tuple2!62678)

(declare-fun findLongestMatch!1734 (Regex!13709 List!57748) tuple2!62676)

(assert (=> d!1606001 (= (tuple2!62677 (list!18504 (_1!34642 lt!2061405)) (list!18504 (_2!34642 lt!2061405))) (findLongestMatch!1734 (regex!8476 rule!200) (list!18504 input!1580)))))

(declare-fun choose!36870 (Regex!13709 BalanceConc!29886 BalanceConc!29886) tuple2!62678)

(assert (=> d!1606001 (= lt!2061405 (choose!36870 (regex!8476 rule!200) input!1580 totalInput!520))))

(declare-fun validRegex!6008 (Regex!13709) Bool)

(assert (=> d!1606001 (validRegex!6008 (regex!8476 rule!200))))

(assert (=> d!1606001 (= (findLongestMatchWithZipperSequenceV2!239 (regex!8476 rule!200) input!1580 totalInput!520) lt!2061405)))

(declare-fun bs!1184722 () Bool)

(assert (= bs!1184722 d!1606001))

(declare-fun m!6019154 () Bool)

(assert (=> bs!1184722 m!6019154))

(assert (=> bs!1184722 m!6019066))

(declare-fun m!6019162 () Bool)

(assert (=> bs!1184722 m!6019162))

(declare-fun m!6019164 () Bool)

(assert (=> bs!1184722 m!6019164))

(assert (=> bs!1184722 m!6019066))

(declare-fun m!6019168 () Bool)

(assert (=> bs!1184722 m!6019168))

(declare-fun m!6019170 () Bool)

(assert (=> bs!1184722 m!6019170))

(assert (=> b!4987266 d!1606001))

(declare-fun d!1606025 () Bool)

(declare-fun lt!2061408 () Int)

(assert (=> d!1606025 (= lt!2061408 (size!38283 (list!18504 (_1!34642 lt!2061386))))))

(declare-fun size!38287 (Conc!15228) Int)

(assert (=> d!1606025 (= lt!2061408 (size!38287 (c!851036 (_1!34642 lt!2061386))))))

(assert (=> d!1606025 (= (size!38285 (_1!34642 lt!2061386)) lt!2061408)))

(declare-fun bs!1184723 () Bool)

(assert (= bs!1184723 d!1606025))

(assert (=> bs!1184723 m!6019086))

(assert (=> bs!1184723 m!6019086))

(declare-fun m!6019176 () Bool)

(assert (=> bs!1184723 m!6019176))

(declare-fun m!6019178 () Bool)

(assert (=> bs!1184723 m!6019178))

(assert (=> b!4987265 d!1606025))

(declare-fun d!1606029 () Bool)

(declare-fun dynLambda!23476 (Int BalanceConc!29886) Bool)

(assert (=> d!1606029 (dynLambda!23476 lambda!248080 (seqFromList!6095 lt!2061382))))

(declare-fun lt!2061411 () Unit!148775)

(declare-fun choose!36871 (Int BalanceConc!29886) Unit!148775)

(assert (=> d!1606029 (= lt!2061411 (choose!36871 lambda!248080 (seqFromList!6095 lt!2061382)))))

(assert (=> d!1606029 (Forall!1824 lambda!248080)))

(assert (=> d!1606029 (= (ForallOf!1283 lambda!248080 (seqFromList!6095 lt!2061382)) lt!2061411)))

(declare-fun b_lambda!198397 () Bool)

(assert (=> (not b_lambda!198397) (not d!1606029)))

(declare-fun bs!1184724 () Bool)

(assert (= bs!1184724 d!1606029))

(assert (=> bs!1184724 m!6019080))

(declare-fun m!6019180 () Bool)

(assert (=> bs!1184724 m!6019180))

(assert (=> bs!1184724 m!6019080))

(declare-fun m!6019182 () Bool)

(assert (=> bs!1184724 m!6019182))

(assert (=> bs!1184724 m!6019098))

(assert (=> b!4987265 d!1606029))

(declare-fun d!1606031 () Bool)

(declare-fun res!2129051 () Bool)

(declare-fun e!3116975 () Bool)

(assert (=> d!1606031 (=> (not res!2129051) (not e!3116975))))

(assert (=> d!1606031 (= res!2129051 (not (isEmpty!31180 (originalCharacters!8733 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)))))))

(assert (=> d!1606031 (= (inv!75566 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)) e!3116975)))

(declare-fun b!4987319 () Bool)

(declare-fun res!2129052 () Bool)

(assert (=> b!4987319 (=> (not res!2129052) (not e!3116975))))

(declare-fun dynLambda!23477 (Int TokenValue!8786) BalanceConc!29886)

(assert (=> b!4987319 (= res!2129052 (= (originalCharacters!8733 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)) (list!18504 (dynLambda!23477 (toChars!11344 (transformation!8476 (rule!11744 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)))) (value!270984 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382))))))))

(declare-fun b!4987320 () Bool)

(assert (=> b!4987320 (= e!3116975 (= (size!38284 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)) (size!38283 (originalCharacters!8733 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)))))))

(assert (= (and d!1606031 res!2129051) b!4987319))

(assert (= (and b!4987319 res!2129052) b!4987320))

(declare-fun b_lambda!198399 () Bool)

(assert (=> (not b_lambda!198399) (not b!4987319)))

(declare-fun tb!261763 () Bool)

(declare-fun t!370021 () Bool)

(assert (=> (and b!4987261 (= (toChars!11344 (transformation!8476 rule!200)) (toChars!11344 (transformation!8476 (rule!11744 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382))))) t!370021) tb!261763))

(declare-fun tp!1397696 () Bool)

(declare-fun b!4987325 () Bool)

(declare-fun e!3116978 () Bool)

(assert (=> b!4987325 (= e!3116978 (and (inv!75563 (c!851036 (dynLambda!23477 (toChars!11344 (transformation!8476 (rule!11744 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)))) (value!270984 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382))))) tp!1397696))))

(declare-fun result!327214 () Bool)

(assert (=> tb!261763 (= result!327214 (and (inv!75565 (dynLambda!23477 (toChars!11344 (transformation!8476 (rule!11744 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)))) (value!270984 (Token!15405 (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) rule!200 (size!38285 (_1!34642 lt!2061386)) lt!2061382)))) e!3116978))))

(assert (= tb!261763 b!4987325))

(declare-fun m!6019184 () Bool)

(assert (=> b!4987325 m!6019184))

(declare-fun m!6019186 () Bool)

(assert (=> tb!261763 m!6019186))

(assert (=> b!4987319 t!370021))

(declare-fun b_and!349987 () Bool)

(assert (= b_and!349981 (and (=> t!370021 result!327214) b_and!349987)))

(declare-fun m!6019188 () Bool)

(assert (=> d!1606031 m!6019188))

(declare-fun m!6019190 () Bool)

(assert (=> b!4987319 m!6019190))

(assert (=> b!4987319 m!6019190))

(declare-fun m!6019192 () Bool)

(assert (=> b!4987319 m!6019192))

(declare-fun m!6019194 () Bool)

(assert (=> b!4987320 m!6019194))

(assert (=> b!4987265 d!1606031))

(declare-fun d!1606033 () Bool)

(assert (=> d!1606033 (dynLambda!23476 lambda!248080 (_1!34642 lt!2061386))))

(declare-fun lt!2061412 () Unit!148775)

(assert (=> d!1606033 (= lt!2061412 (choose!36871 lambda!248080 (_1!34642 lt!2061386)))))

(assert (=> d!1606033 (Forall!1824 lambda!248080)))

(assert (=> d!1606033 (= (ForallOf!1283 lambda!248080 (_1!34642 lt!2061386)) lt!2061412)))

(declare-fun b_lambda!198401 () Bool)

(assert (=> (not b_lambda!198401) (not d!1606033)))

(declare-fun bs!1184725 () Bool)

(assert (= bs!1184725 d!1606033))

(declare-fun m!6019196 () Bool)

(assert (=> bs!1184725 m!6019196))

(declare-fun m!6019198 () Bool)

(assert (=> bs!1184725 m!6019198))

(assert (=> bs!1184725 m!6019098))

(assert (=> b!4987265 d!1606033))

(declare-fun d!1606035 () Bool)

(declare-fun fromListB!2760 (List!57748) BalanceConc!29886)

(assert (=> d!1606035 (= (seqFromList!6095 lt!2061382) (fromListB!2760 lt!2061382))))

(declare-fun bs!1184726 () Bool)

(assert (= bs!1184726 d!1606035))

(declare-fun m!6019200 () Bool)

(assert (=> bs!1184726 m!6019200))

(assert (=> b!4987265 d!1606035))

(declare-fun d!1606037 () Bool)

(declare-fun list!18506 (Conc!15228) List!57748)

(assert (=> d!1606037 (= (list!18504 (_1!34642 lt!2061386)) (list!18506 (c!851036 (_1!34642 lt!2061386))))))

(declare-fun bs!1184727 () Bool)

(assert (= bs!1184727 d!1606037))

(declare-fun m!6019202 () Bool)

(assert (=> bs!1184727 m!6019202))

(assert (=> b!4987265 d!1606037))

(declare-fun d!1606039 () Bool)

(declare-fun dynLambda!23478 (Int BalanceConc!29886) TokenValue!8786)

(assert (=> d!1606039 (= (apply!13961 (transformation!8476 rule!200) (_1!34642 lt!2061386)) (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (_1!34642 lt!2061386)))))

(declare-fun b_lambda!198403 () Bool)

(assert (=> (not b_lambda!198403) (not d!1606039)))

(declare-fun t!370023 () Bool)

(declare-fun tb!261765 () Bool)

(assert (=> (and b!4987261 (= (toValue!11485 (transformation!8476 rule!200)) (toValue!11485 (transformation!8476 rule!200))) t!370023) tb!261765))

(declare-fun result!327218 () Bool)

(declare-fun inv!21 (TokenValue!8786) Bool)

(assert (=> tb!261765 (= result!327218 (inv!21 (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (_1!34642 lt!2061386))))))

(declare-fun m!6019204 () Bool)

(assert (=> tb!261765 m!6019204))

(assert (=> d!1606039 t!370023))

(declare-fun b_and!349989 () Bool)

(assert (= b_and!349979 (and (=> t!370023 result!327218) b_and!349989)))

(declare-fun m!6019206 () Bool)

(assert (=> d!1606039 m!6019206))

(assert (=> b!4987265 d!1606039))

(declare-fun d!1606041 () Bool)

(assert (=> d!1606041 (= (inv!75558 (tag!9340 rule!200)) (= (mod (str.len (value!270983 (tag!9340 rule!200))) 2) 0))))

(assert (=> b!4987260 d!1606041))

(declare-fun d!1606043 () Bool)

(declare-fun res!2129055 () Bool)

(declare-fun e!3116984 () Bool)

(assert (=> d!1606043 (=> (not res!2129055) (not e!3116984))))

(assert (=> d!1606043 (= res!2129055 (semiInverseModEq!3769 (toChars!11344 (transformation!8476 rule!200)) (toValue!11485 (transformation!8476 rule!200))))))

(assert (=> d!1606043 (= (inv!75564 (transformation!8476 rule!200)) e!3116984)))

(declare-fun b!4987330 () Bool)

(declare-fun equivClasses!3588 (Int Int) Bool)

(assert (=> b!4987330 (= e!3116984 (equivClasses!3588 (toChars!11344 (transformation!8476 rule!200)) (toValue!11485 (transformation!8476 rule!200))))))

(assert (= (and d!1606043 res!2129055) b!4987330))

(assert (=> d!1606043 m!6019060))

(declare-fun m!6019208 () Bool)

(assert (=> b!4987330 m!6019208))

(assert (=> b!4987260 d!1606043))

(declare-fun b!4987383 () Bool)

(declare-fun res!2129075 () Bool)

(declare-fun e!3117015 () Bool)

(assert (=> b!4987383 (=> res!2129075 e!3117015)))

(assert (=> b!4987383 (= res!2129075 (not ((_ is ElementMatch!13709) (regex!8476 rule!200))))))

(declare-fun e!3117014 () Bool)

(assert (=> b!4987383 (= e!3117014 e!3117015)))

(declare-fun b!4987384 () Bool)

(declare-fun e!3117012 () Bool)

(declare-fun head!10706 (List!57748) C!27668)

(assert (=> b!4987384 (= e!3117012 (not (= (head!10706 (_1!34641 lt!2061380)) (c!851035 (regex!8476 rule!200)))))))

(declare-fun bm!348069 () Bool)

(declare-fun call!348074 () Bool)

(assert (=> bm!348069 (= call!348074 (isEmpty!31180 (_1!34641 lt!2061380)))))

(declare-fun b!4987385 () Bool)

(declare-fun lt!2061471 () Bool)

(assert (=> b!4987385 (= e!3117014 (not lt!2061471))))

(declare-fun d!1606045 () Bool)

(declare-fun e!3117011 () Bool)

(assert (=> d!1606045 e!3117011))

(declare-fun c!851062 () Bool)

(assert (=> d!1606045 (= c!851062 ((_ is EmptyExpr!13709) (regex!8476 rule!200)))))

(declare-fun e!3117013 () Bool)

(assert (=> d!1606045 (= lt!2061471 e!3117013)))

(declare-fun c!851063 () Bool)

(assert (=> d!1606045 (= c!851063 (isEmpty!31180 (_1!34641 lt!2061380)))))

(assert (=> d!1606045 (validRegex!6008 (regex!8476 rule!200))))

(assert (=> d!1606045 (= (matchR!6701 (regex!8476 rule!200) (_1!34641 lt!2061380)) lt!2061471)))

(declare-fun b!4987386 () Bool)

(declare-fun derivativeStep!3957 (Regex!13709 C!27668) Regex!13709)

(declare-fun tail!9839 (List!57748) List!57748)

(assert (=> b!4987386 (= e!3117013 (matchR!6701 (derivativeStep!3957 (regex!8476 rule!200) (head!10706 (_1!34641 lt!2061380))) (tail!9839 (_1!34641 lt!2061380))))))

(declare-fun b!4987387 () Bool)

(declare-fun e!3117016 () Bool)

(assert (=> b!4987387 (= e!3117015 e!3117016)))

(declare-fun res!2129078 () Bool)

(assert (=> b!4987387 (=> (not res!2129078) (not e!3117016))))

(assert (=> b!4987387 (= res!2129078 (not lt!2061471))))

(declare-fun b!4987388 () Bool)

(declare-fun nullable!4659 (Regex!13709) Bool)

(assert (=> b!4987388 (= e!3117013 (nullable!4659 (regex!8476 rule!200)))))

(declare-fun b!4987389 () Bool)

(declare-fun res!2129076 () Bool)

(assert (=> b!4987389 (=> res!2129076 e!3117015)))

(declare-fun e!3117017 () Bool)

(assert (=> b!4987389 (= res!2129076 e!3117017)))

(declare-fun res!2129074 () Bool)

(assert (=> b!4987389 (=> (not res!2129074) (not e!3117017))))

(assert (=> b!4987389 (= res!2129074 lt!2061471)))

(declare-fun b!4987390 () Bool)

(declare-fun res!2129079 () Bool)

(assert (=> b!4987390 (=> (not res!2129079) (not e!3117017))))

(assert (=> b!4987390 (= res!2129079 (not call!348074))))

(declare-fun b!4987391 () Bool)

(assert (=> b!4987391 (= e!3117011 e!3117014)))

(declare-fun c!851061 () Bool)

(assert (=> b!4987391 (= c!851061 ((_ is EmptyLang!13709) (regex!8476 rule!200)))))

(declare-fun b!4987392 () Bool)

(declare-fun res!2129073 () Bool)

(assert (=> b!4987392 (=> res!2129073 e!3117012)))

(assert (=> b!4987392 (= res!2129073 (not (isEmpty!31180 (tail!9839 (_1!34641 lt!2061380)))))))

(declare-fun b!4987393 () Bool)

(assert (=> b!4987393 (= e!3117011 (= lt!2061471 call!348074))))

(declare-fun b!4987394 () Bool)

(assert (=> b!4987394 (= e!3117016 e!3117012)))

(declare-fun res!2129072 () Bool)

(assert (=> b!4987394 (=> res!2129072 e!3117012)))

(assert (=> b!4987394 (= res!2129072 call!348074)))

(declare-fun b!4987395 () Bool)

(declare-fun res!2129077 () Bool)

(assert (=> b!4987395 (=> (not res!2129077) (not e!3117017))))

(assert (=> b!4987395 (= res!2129077 (isEmpty!31180 (tail!9839 (_1!34641 lt!2061380))))))

(declare-fun b!4987396 () Bool)

(assert (=> b!4987396 (= e!3117017 (= (head!10706 (_1!34641 lt!2061380)) (c!851035 (regex!8476 rule!200))))))

(assert (= (and d!1606045 c!851063) b!4987388))

(assert (= (and d!1606045 (not c!851063)) b!4987386))

(assert (= (and d!1606045 c!851062) b!4987393))

(assert (= (and d!1606045 (not c!851062)) b!4987391))

(assert (= (and b!4987391 c!851061) b!4987385))

(assert (= (and b!4987391 (not c!851061)) b!4987383))

(assert (= (and b!4987383 (not res!2129075)) b!4987389))

(assert (= (and b!4987389 res!2129074) b!4987390))

(assert (= (and b!4987390 res!2129079) b!4987395))

(assert (= (and b!4987395 res!2129077) b!4987396))

(assert (= (and b!4987389 (not res!2129076)) b!4987387))

(assert (= (and b!4987387 res!2129078) b!4987394))

(assert (= (and b!4987394 (not res!2129072)) b!4987392))

(assert (= (and b!4987392 (not res!2129073)) b!4987384))

(assert (= (or b!4987393 b!4987390 b!4987394) bm!348069))

(declare-fun m!6019210 () Bool)

(assert (=> b!4987396 m!6019210))

(assert (=> bm!348069 m!6019048))

(assert (=> b!4987384 m!6019210))

(declare-fun m!6019212 () Bool)

(assert (=> b!4987392 m!6019212))

(assert (=> b!4987392 m!6019212))

(declare-fun m!6019214 () Bool)

(assert (=> b!4987392 m!6019214))

(assert (=> d!1606045 m!6019048))

(assert (=> d!1606045 m!6019154))

(declare-fun m!6019216 () Bool)

(assert (=> b!4987388 m!6019216))

(assert (=> b!4987386 m!6019210))

(assert (=> b!4987386 m!6019210))

(declare-fun m!6019218 () Bool)

(assert (=> b!4987386 m!6019218))

(assert (=> b!4987386 m!6019212))

(assert (=> b!4987386 m!6019218))

(assert (=> b!4987386 m!6019212))

(declare-fun m!6019220 () Bool)

(assert (=> b!4987386 m!6019220))

(assert (=> b!4987395 m!6019212))

(assert (=> b!4987395 m!6019212))

(assert (=> b!4987395 m!6019214))

(assert (=> b!4987259 d!1606045))

(declare-fun d!1606047 () Bool)

(declare-fun res!2129088 () Bool)

(declare-fun e!3117024 () Bool)

(assert (=> d!1606047 (=> (not res!2129088) (not e!3117024))))

(assert (=> d!1606047 (= res!2129088 (validRegex!6008 (regex!8476 rule!200)))))

(assert (=> d!1606047 (= (ruleValid!3884 thiss!16165 rule!200) e!3117024)))

(declare-fun b!4987405 () Bool)

(declare-fun res!2129089 () Bool)

(assert (=> b!4987405 (=> (not res!2129089) (not e!3117024))))

(assert (=> b!4987405 (= res!2129089 (not (nullable!4659 (regex!8476 rule!200))))))

(declare-fun b!4987406 () Bool)

(assert (=> b!4987406 (= e!3117024 (not (= (tag!9340 rule!200) (String!65805 ""))))))

(assert (= (and d!1606047 res!2129088) b!4987405))

(assert (= (and b!4987405 res!2129089) b!4987406))

(assert (=> d!1606047 m!6019154))

(assert (=> b!4987405 m!6019216))

(assert (=> b!4987264 d!1606047))

(declare-fun d!1606049 () Bool)

(declare-fun isBalanced!4242 (Conc!15228) Bool)

(assert (=> d!1606049 (= (inv!75565 input!1580) (isBalanced!4242 (c!851036 input!1580)))))

(declare-fun bs!1184728 () Bool)

(assert (= bs!1184728 d!1606049))

(declare-fun m!6019222 () Bool)

(assert (=> bs!1184728 m!6019222))

(assert (=> start!527034 d!1606049))

(declare-fun d!1606051 () Bool)

(assert (=> d!1606051 (= (inv!75565 totalInput!520) (isBalanced!4242 (c!851036 totalInput!520)))))

(declare-fun bs!1184729 () Bool)

(assert (= bs!1184729 d!1606051))

(declare-fun m!6019224 () Bool)

(assert (=> bs!1184729 m!6019224))

(assert (=> start!527034 d!1606051))

(declare-fun d!1606053 () Bool)

(assert (=> d!1606053 (= (isEmpty!31180 (_1!34641 lt!2061380)) ((_ is Nil!57624) (_1!34641 lt!2061380)))))

(assert (=> b!4987263 d!1606053))

(declare-fun d!1606055 () Bool)

(declare-fun e!3117041 () Bool)

(assert (=> d!1606055 e!3117041))

(declare-fun res!2129097 () Bool)

(assert (=> d!1606055 (=> res!2129097 e!3117041)))

(assert (=> d!1606055 (= res!2129097 (isEmpty!31180 (_1!34641 (findLongestMatchInner!1918 (regex!8476 rule!200) Nil!57624 (size!38283 Nil!57624) lt!2061379 lt!2061379 (size!38283 lt!2061379)))))))

(declare-fun lt!2061508 () Unit!148775)

(declare-fun choose!36873 (Regex!13709 List!57748) Unit!148775)

(assert (=> d!1606055 (= lt!2061508 (choose!36873 (regex!8476 rule!200) lt!2061379))))

(assert (=> d!1606055 (validRegex!6008 (regex!8476 rule!200))))

(assert (=> d!1606055 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1879 (regex!8476 rule!200) lt!2061379) lt!2061508)))

(declare-fun b!4987432 () Bool)

(assert (=> b!4987432 (= e!3117041 (matchR!6701 (regex!8476 rule!200) (_1!34641 (findLongestMatchInner!1918 (regex!8476 rule!200) Nil!57624 (size!38283 Nil!57624) lt!2061379 lt!2061379 (size!38283 lt!2061379)))))))

(assert (= (and d!1606055 (not res!2129097)) b!4987432))

(declare-fun m!6019286 () Bool)

(assert (=> d!1606055 m!6019286))

(declare-fun m!6019288 () Bool)

(assert (=> d!1606055 m!6019288))

(assert (=> d!1606055 m!6019154))

(assert (=> d!1606055 m!6019054))

(assert (=> d!1606055 m!6019056))

(assert (=> d!1606055 m!6019054))

(assert (=> d!1606055 m!6019056))

(assert (=> d!1606055 m!6019058))

(assert (=> b!4987432 m!6019054))

(assert (=> b!4987432 m!6019056))

(assert (=> b!4987432 m!6019054))

(assert (=> b!4987432 m!6019056))

(assert (=> b!4987432 m!6019058))

(declare-fun m!6019290 () Bool)

(assert (=> b!4987432 m!6019290))

(assert (=> b!4987263 d!1606055))

(declare-fun d!1606063 () Bool)

(declare-fun lt!2061512 () Int)

(assert (=> d!1606063 (>= lt!2061512 0)))

(declare-fun e!3117048 () Int)

(assert (=> d!1606063 (= lt!2061512 e!3117048)))

(declare-fun c!851076 () Bool)

(assert (=> d!1606063 (= c!851076 ((_ is Nil!57624) Nil!57624))))

(assert (=> d!1606063 (= (size!38283 Nil!57624) lt!2061512)))

(declare-fun b!4987442 () Bool)

(assert (=> b!4987442 (= e!3117048 0)))

(declare-fun b!4987443 () Bool)

(assert (=> b!4987443 (= e!3117048 (+ 1 (size!38283 (t!370014 Nil!57624))))))

(assert (= (and d!1606063 c!851076) b!4987442))

(assert (= (and d!1606063 (not c!851076)) b!4987443))

(declare-fun m!6019294 () Bool)

(assert (=> b!4987443 m!6019294))

(assert (=> b!4987263 d!1606063))

(declare-fun d!1606071 () Bool)

(declare-fun e!3117054 () Bool)

(assert (=> d!1606071 e!3117054))

(declare-fun res!2129106 () Bool)

(assert (=> d!1606071 (=> (not res!2129106) (not e!3117054))))

(assert (=> d!1606071 (= res!2129106 (semiInverseModEq!3769 (toChars!11344 (transformation!8476 rule!200)) (toValue!11485 (transformation!8476 rule!200))))))

(declare-fun Unit!148781 () Unit!148775)

(assert (=> d!1606071 (= (lemmaInv!1395 (transformation!8476 rule!200)) Unit!148781)))

(declare-fun b!4987453 () Bool)

(assert (=> b!4987453 (= e!3117054 (equivClasses!3588 (toChars!11344 (transformation!8476 rule!200)) (toValue!11485 (transformation!8476 rule!200))))))

(assert (= (and d!1606071 res!2129106) b!4987453))

(assert (=> d!1606071 m!6019060))

(assert (=> b!4987453 m!6019208))

(assert (=> b!4987263 d!1606071))

(declare-fun b!4987557 () Bool)

(declare-fun c!851099 () Bool)

(declare-fun call!348115 () Bool)

(assert (=> b!4987557 (= c!851099 call!348115)))

(declare-fun lt!2061602 () Unit!148775)

(declare-fun lt!2061593 () Unit!148775)

(assert (=> b!4987557 (= lt!2061602 lt!2061593)))

(declare-fun lt!2061576 () C!27668)

(declare-fun lt!2061600 () List!57748)

(declare-fun ++!12569 (List!57748 List!57748) List!57748)

(assert (=> b!4987557 (= (++!12569 (++!12569 Nil!57624 (Cons!57624 lt!2061576 Nil!57624)) lt!2061600) lt!2061379)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1479 (List!57748 C!27668 List!57748 List!57748) Unit!148775)

(assert (=> b!4987557 (= lt!2061593 (lemmaMoveElementToOtherListKeepsConcatEq!1479 Nil!57624 lt!2061576 lt!2061600 lt!2061379))))

(assert (=> b!4987557 (= lt!2061600 (tail!9839 lt!2061379))))

(assert (=> b!4987557 (= lt!2061576 (head!10706 lt!2061379))))

(declare-fun lt!2061586 () Unit!148775)

(declare-fun lt!2061590 () Unit!148775)

(assert (=> b!4987557 (= lt!2061586 lt!2061590)))

(declare-fun isPrefix!5282 (List!57748 List!57748) Bool)

(declare-fun getSuffix!3122 (List!57748 List!57748) List!57748)

(assert (=> b!4987557 (isPrefix!5282 (++!12569 Nil!57624 (Cons!57624 (head!10706 (getSuffix!3122 lt!2061379 Nil!57624)) Nil!57624)) lt!2061379)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!868 (List!57748 List!57748) Unit!148775)

(assert (=> b!4987557 (= lt!2061590 (lemmaAddHeadSuffixToPrefixStillPrefix!868 Nil!57624 lt!2061379))))

(declare-fun lt!2061584 () Unit!148775)

(declare-fun lt!2061599 () Unit!148775)

(assert (=> b!4987557 (= lt!2061584 lt!2061599)))

(assert (=> b!4987557 (= lt!2061599 (lemmaAddHeadSuffixToPrefixStillPrefix!868 Nil!57624 lt!2061379))))

(declare-fun lt!2061597 () List!57748)

(assert (=> b!4987557 (= lt!2061597 (++!12569 Nil!57624 (Cons!57624 (head!10706 lt!2061379) Nil!57624)))))

(declare-fun lt!2061592 () Unit!148775)

(declare-fun e!3117110 () Unit!148775)

(assert (=> b!4987557 (= lt!2061592 e!3117110)))

(declare-fun c!851102 () Bool)

(assert (=> b!4987557 (= c!851102 (= (size!38283 Nil!57624) (size!38283 lt!2061379)))))

(declare-fun lt!2061598 () Unit!148775)

(declare-fun lt!2061582 () Unit!148775)

(assert (=> b!4987557 (= lt!2061598 lt!2061582)))

(assert (=> b!4987557 (<= (size!38283 Nil!57624) (size!38283 lt!2061379))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!794 (List!57748 List!57748) Unit!148775)

(assert (=> b!4987557 (= lt!2061582 (lemmaIsPrefixThenSmallerEqSize!794 Nil!57624 lt!2061379))))

(declare-fun e!3117108 () tuple2!62676)

(declare-fun e!3117114 () tuple2!62676)

(assert (=> b!4987557 (= e!3117108 e!3117114)))

(declare-fun bm!348105 () Bool)

(declare-fun call!348116 () Bool)

(assert (=> bm!348105 (= call!348116 (isPrefix!5282 lt!2061379 lt!2061379))))

(declare-fun b!4987558 () Bool)

(declare-fun Unit!148782 () Unit!148775)

(assert (=> b!4987558 (= e!3117110 Unit!148782)))

(declare-fun lt!2061577 () Unit!148775)

(declare-fun call!348113 () Unit!148775)

(assert (=> b!4987558 (= lt!2061577 call!348113)))

(assert (=> b!4987558 call!348116))

(declare-fun lt!2061585 () Unit!148775)

(assert (=> b!4987558 (= lt!2061585 lt!2061577)))

(declare-fun lt!2061601 () Unit!148775)

(declare-fun call!348112 () Unit!148775)

(assert (=> b!4987558 (= lt!2061601 call!348112)))

(assert (=> b!4987558 (= lt!2061379 Nil!57624)))

(declare-fun lt!2061575 () Unit!148775)

(assert (=> b!4987558 (= lt!2061575 lt!2061601)))

(assert (=> b!4987558 false))

(declare-fun d!1606081 () Bool)

(declare-fun e!3117112 () Bool)

(assert (=> d!1606081 e!3117112))

(declare-fun res!2129137 () Bool)

(assert (=> d!1606081 (=> (not res!2129137) (not e!3117112))))

(declare-fun lt!2061583 () tuple2!62676)

(assert (=> d!1606081 (= res!2129137 (= (++!12569 (_1!34641 lt!2061583) (_2!34641 lt!2061583)) lt!2061379))))

(declare-fun e!3117113 () tuple2!62676)

(assert (=> d!1606081 (= lt!2061583 e!3117113)))

(declare-fun c!851103 () Bool)

(declare-fun lostCause!1166 (Regex!13709) Bool)

(assert (=> d!1606081 (= c!851103 (lostCause!1166 (regex!8476 rule!200)))))

(declare-fun lt!2061589 () Unit!148775)

(declare-fun Unit!148783 () Unit!148775)

(assert (=> d!1606081 (= lt!2061589 Unit!148783)))

(assert (=> d!1606081 (= (getSuffix!3122 lt!2061379 Nil!57624) lt!2061379)))

(declare-fun lt!2061578 () Unit!148775)

(declare-fun lt!2061580 () Unit!148775)

(assert (=> d!1606081 (= lt!2061578 lt!2061580)))

(declare-fun lt!2061594 () List!57748)

(assert (=> d!1606081 (= lt!2061379 lt!2061594)))

(declare-fun lemmaSamePrefixThenSameSuffix!2534 (List!57748 List!57748 List!57748 List!57748 List!57748) Unit!148775)

(assert (=> d!1606081 (= lt!2061580 (lemmaSamePrefixThenSameSuffix!2534 Nil!57624 lt!2061379 Nil!57624 lt!2061594 lt!2061379))))

(assert (=> d!1606081 (= lt!2061594 (getSuffix!3122 lt!2061379 Nil!57624))))

(declare-fun lt!2061595 () Unit!148775)

(declare-fun lt!2061588 () Unit!148775)

(assert (=> d!1606081 (= lt!2061595 lt!2061588)))

(assert (=> d!1606081 (isPrefix!5282 Nil!57624 (++!12569 Nil!57624 lt!2061379))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3380 (List!57748 List!57748) Unit!148775)

(assert (=> d!1606081 (= lt!2061588 (lemmaConcatTwoListThenFirstIsPrefix!3380 Nil!57624 lt!2061379))))

(assert (=> d!1606081 (validRegex!6008 (regex!8476 rule!200))))

(assert (=> d!1606081 (= (findLongestMatchInner!1918 (regex!8476 rule!200) Nil!57624 (size!38283 Nil!57624) lt!2061379 lt!2061379 (size!38283 lt!2061379)) lt!2061583)))

(declare-fun bm!348106 () Bool)

(declare-fun call!348110 () Regex!13709)

(declare-fun call!348111 () C!27668)

(assert (=> bm!348106 (= call!348110 (derivativeStep!3957 (regex!8476 rule!200) call!348111))))

(declare-fun b!4987559 () Bool)

(declare-fun e!3117111 () tuple2!62676)

(assert (=> b!4987559 (= e!3117111 (tuple2!62677 Nil!57624 lt!2061379))))

(declare-fun b!4987560 () Bool)

(assert (=> b!4987560 (= e!3117114 e!3117111)))

(declare-fun lt!2061581 () tuple2!62676)

(declare-fun call!348117 () tuple2!62676)

(assert (=> b!4987560 (= lt!2061581 call!348117)))

(declare-fun c!851104 () Bool)

(assert (=> b!4987560 (= c!851104 (isEmpty!31180 (_1!34641 lt!2061581)))))

(declare-fun call!348114 () List!57748)

(declare-fun bm!348107 () Bool)

(assert (=> bm!348107 (= call!348117 (findLongestMatchInner!1918 call!348110 lt!2061597 (+ (size!38283 Nil!57624) 1) call!348114 lt!2061379 (size!38283 lt!2061379)))))

(declare-fun bm!348108 () Bool)

(declare-fun lemmaIsPrefixRefl!3605 (List!57748 List!57748) Unit!148775)

(assert (=> bm!348108 (= call!348113 (lemmaIsPrefixRefl!3605 lt!2061379 lt!2061379))))

(declare-fun bm!348109 () Bool)

(assert (=> bm!348109 (= call!348114 (tail!9839 lt!2061379))))

(declare-fun b!4987561 () Bool)

(assert (=> b!4987561 (= e!3117113 e!3117108)))

(declare-fun c!851100 () Bool)

(assert (=> b!4987561 (= c!851100 (= (size!38283 Nil!57624) (size!38283 lt!2061379)))))

(declare-fun b!4987562 () Bool)

(assert (=> b!4987562 (= e!3117113 (tuple2!62677 Nil!57624 lt!2061379))))

(declare-fun b!4987563 () Bool)

(declare-fun e!3117109 () Bool)

(assert (=> b!4987563 (= e!3117109 (>= (size!38283 (_1!34641 lt!2061583)) (size!38283 Nil!57624)))))

(declare-fun b!4987564 () Bool)

(declare-fun e!3117115 () tuple2!62676)

(assert (=> b!4987564 (= e!3117115 (tuple2!62677 Nil!57624 Nil!57624))))

(declare-fun b!4987565 () Bool)

(declare-fun Unit!148784 () Unit!148775)

(assert (=> b!4987565 (= e!3117110 Unit!148784)))

(declare-fun bm!348110 () Bool)

(assert (=> bm!348110 (= call!348111 (head!10706 lt!2061379))))

(declare-fun b!4987566 () Bool)

(assert (=> b!4987566 (= e!3117111 lt!2061581)))

(declare-fun bm!348111 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1242 (List!57748 List!57748 List!57748) Unit!148775)

(assert (=> bm!348111 (= call!348112 (lemmaIsPrefixSameLengthThenSameList!1242 lt!2061379 Nil!57624 lt!2061379))))

(declare-fun b!4987567 () Bool)

(declare-fun c!851101 () Bool)

(assert (=> b!4987567 (= c!851101 call!348115)))

(declare-fun lt!2061596 () Unit!148775)

(declare-fun lt!2061579 () Unit!148775)

(assert (=> b!4987567 (= lt!2061596 lt!2061579)))

(assert (=> b!4987567 (= lt!2061379 Nil!57624)))

(assert (=> b!4987567 (= lt!2061579 call!348112)))

(declare-fun lt!2061591 () Unit!148775)

(declare-fun lt!2061587 () Unit!148775)

(assert (=> b!4987567 (= lt!2061591 lt!2061587)))

(assert (=> b!4987567 call!348116))

(assert (=> b!4987567 (= lt!2061587 call!348113)))

(assert (=> b!4987567 (= e!3117108 e!3117115)))

(declare-fun b!4987568 () Bool)

(assert (=> b!4987568 (= e!3117114 call!348117)))

(declare-fun b!4987569 () Bool)

(assert (=> b!4987569 (= e!3117112 e!3117109)))

(declare-fun res!2129136 () Bool)

(assert (=> b!4987569 (=> res!2129136 e!3117109)))

(assert (=> b!4987569 (= res!2129136 (isEmpty!31180 (_1!34641 lt!2061583)))))

(declare-fun bm!348112 () Bool)

(assert (=> bm!348112 (= call!348115 (nullable!4659 (regex!8476 rule!200)))))

(declare-fun b!4987570 () Bool)

(assert (=> b!4987570 (= e!3117115 (tuple2!62677 Nil!57624 lt!2061379))))

(assert (= (and d!1606081 c!851103) b!4987562))

(assert (= (and d!1606081 (not c!851103)) b!4987561))

(assert (= (and b!4987561 c!851100) b!4987567))

(assert (= (and b!4987561 (not c!851100)) b!4987557))

(assert (= (and b!4987567 c!851101) b!4987564))

(assert (= (and b!4987567 (not c!851101)) b!4987570))

(assert (= (and b!4987557 c!851102) b!4987558))

(assert (= (and b!4987557 (not c!851102)) b!4987565))

(assert (= (and b!4987557 c!851099) b!4987560))

(assert (= (and b!4987557 (not c!851099)) b!4987568))

(assert (= (and b!4987560 c!851104) b!4987559))

(assert (= (and b!4987560 (not c!851104)) b!4987566))

(assert (= (or b!4987560 b!4987568) bm!348110))

(assert (= (or b!4987560 b!4987568) bm!348109))

(assert (= (or b!4987560 b!4987568) bm!348106))

(assert (= (or b!4987560 b!4987568) bm!348107))

(assert (= (or b!4987567 b!4987558) bm!348105))

(assert (= (or b!4987567 b!4987558) bm!348111))

(assert (= (or b!4987567 b!4987558) bm!348108))

(assert (= (or b!4987567 b!4987557) bm!348112))

(assert (= (and d!1606081 res!2129137) b!4987569))

(assert (= (and b!4987569 (not res!2129136)) b!4987563))

(declare-fun m!6019360 () Bool)

(assert (=> bm!348111 m!6019360))

(declare-fun m!6019362 () Bool)

(assert (=> b!4987569 m!6019362))

(declare-fun m!6019364 () Bool)

(assert (=> bm!348110 m!6019364))

(declare-fun m!6019366 () Bool)

(assert (=> b!4987560 m!6019366))

(declare-fun m!6019368 () Bool)

(assert (=> b!4987563 m!6019368))

(assert (=> b!4987563 m!6019054))

(declare-fun m!6019370 () Bool)

(assert (=> bm!348109 m!6019370))

(assert (=> b!4987557 m!6019054))

(assert (=> b!4987557 m!6019370))

(assert (=> b!4987557 m!6019056))

(declare-fun m!6019372 () Bool)

(assert (=> b!4987557 m!6019372))

(declare-fun m!6019374 () Bool)

(assert (=> b!4987557 m!6019374))

(declare-fun m!6019376 () Bool)

(assert (=> b!4987557 m!6019376))

(assert (=> b!4987557 m!6019374))

(declare-fun m!6019378 () Bool)

(assert (=> b!4987557 m!6019378))

(declare-fun m!6019380 () Bool)

(assert (=> b!4987557 m!6019380))

(declare-fun m!6019382 () Bool)

(assert (=> b!4987557 m!6019382))

(declare-fun m!6019384 () Bool)

(assert (=> b!4987557 m!6019384))

(declare-fun m!6019386 () Bool)

(assert (=> b!4987557 m!6019386))

(assert (=> b!4987557 m!6019380))

(assert (=> b!4987557 m!6019364))

(declare-fun m!6019388 () Bool)

(assert (=> b!4987557 m!6019388))

(assert (=> b!4987557 m!6019384))

(declare-fun m!6019390 () Bool)

(assert (=> b!4987557 m!6019390))

(assert (=> bm!348112 m!6019216))

(declare-fun m!6019392 () Bool)

(assert (=> bm!348105 m!6019392))

(declare-fun m!6019394 () Bool)

(assert (=> bm!348106 m!6019394))

(declare-fun m!6019396 () Bool)

(assert (=> d!1606081 m!6019396))

(declare-fun m!6019398 () Bool)

(assert (=> d!1606081 m!6019398))

(declare-fun m!6019400 () Bool)

(assert (=> d!1606081 m!6019400))

(declare-fun m!6019402 () Bool)

(assert (=> d!1606081 m!6019402))

(declare-fun m!6019404 () Bool)

(assert (=> d!1606081 m!6019404))

(assert (=> d!1606081 m!6019384))

(assert (=> d!1606081 m!6019154))

(assert (=> d!1606081 m!6019404))

(declare-fun m!6019406 () Bool)

(assert (=> d!1606081 m!6019406))

(declare-fun m!6019408 () Bool)

(assert (=> bm!348108 m!6019408))

(assert (=> bm!348107 m!6019056))

(declare-fun m!6019410 () Bool)

(assert (=> bm!348107 m!6019410))

(assert (=> b!4987263 d!1606081))

(declare-fun d!1606095 () Bool)

(declare-fun lt!2061603 () Int)

(assert (=> d!1606095 (>= lt!2061603 0)))

(declare-fun e!3117116 () Int)

(assert (=> d!1606095 (= lt!2061603 e!3117116)))

(declare-fun c!851105 () Bool)

(assert (=> d!1606095 (= c!851105 ((_ is Nil!57624) lt!2061379))))

(assert (=> d!1606095 (= (size!38283 lt!2061379) lt!2061603)))

(declare-fun b!4987571 () Bool)

(assert (=> b!4987571 (= e!3117116 0)))

(declare-fun b!4987572 () Bool)

(assert (=> b!4987572 (= e!3117116 (+ 1 (size!38283 (t!370014 lt!2061379))))))

(assert (= (and d!1606095 c!851105) b!4987571))

(assert (= (and d!1606095 (not c!851105)) b!4987572))

(declare-fun m!6019412 () Bool)

(assert (=> b!4987572 m!6019412))

(assert (=> b!4987263 d!1606095))

(declare-fun bs!1184739 () Bool)

(declare-fun d!1606097 () Bool)

(assert (= bs!1184739 (and d!1606097 b!4987262)))

(declare-fun lambda!248086 () Int)

(assert (=> bs!1184739 (= lambda!248086 lambda!248080)))

(assert (=> d!1606097 true))

(assert (=> d!1606097 (< (dynLambda!23472 order!26645 (toChars!11344 (transformation!8476 rule!200))) (dynLambda!23471 order!26643 lambda!248086))))

(assert (=> d!1606097 true))

(assert (=> d!1606097 (< (dynLambda!23470 order!26641 (toValue!11485 (transformation!8476 rule!200))) (dynLambda!23471 order!26643 lambda!248086))))

(assert (=> d!1606097 (= (semiInverseModEq!3769 (toChars!11344 (transformation!8476 rule!200)) (toValue!11485 (transformation!8476 rule!200))) (Forall!1824 lambda!248086))))

(declare-fun bs!1184740 () Bool)

(assert (= bs!1184740 d!1606097))

(declare-fun m!6019414 () Bool)

(assert (=> bs!1184740 m!6019414))

(assert (=> b!4987263 d!1606097))

(declare-fun d!1606099 () Bool)

(declare-fun e!3117119 () Bool)

(assert (=> d!1606099 e!3117119))

(declare-fun res!2129140 () Bool)

(assert (=> d!1606099 (=> res!2129140 e!3117119)))

(declare-fun lt!2061606 () Bool)

(assert (=> d!1606099 (= res!2129140 (not lt!2061606))))

(declare-fun drop!2390 (List!57748 Int) List!57748)

(assert (=> d!1606099 (= lt!2061606 (= lt!2061379 (drop!2390 (list!18504 totalInput!520) (- (size!38283 (list!18504 totalInput!520)) (size!38283 lt!2061379)))))))

(assert (=> d!1606099 (= (isSuffix!1275 lt!2061379 (list!18504 totalInput!520)) lt!2061606)))

(declare-fun b!4987579 () Bool)

(assert (=> b!4987579 (= e!3117119 (>= (size!38283 (list!18504 totalInput!520)) (size!38283 lt!2061379)))))

(assert (= (and d!1606099 (not res!2129140)) b!4987579))

(assert (=> d!1606099 m!6019062))

(declare-fun m!6019416 () Bool)

(assert (=> d!1606099 m!6019416))

(assert (=> d!1606099 m!6019056))

(assert (=> d!1606099 m!6019062))

(declare-fun m!6019418 () Bool)

(assert (=> d!1606099 m!6019418))

(assert (=> b!4987579 m!6019062))

(assert (=> b!4987579 m!6019416))

(assert (=> b!4987579 m!6019056))

(assert (=> b!4987258 d!1606099))

(declare-fun d!1606101 () Bool)

(assert (=> d!1606101 (= (list!18504 totalInput!520) (list!18506 (c!851036 totalInput!520)))))

(declare-fun bs!1184741 () Bool)

(assert (= bs!1184741 d!1606101))

(declare-fun m!6019420 () Bool)

(assert (=> bs!1184741 m!6019420))

(assert (=> b!4987258 d!1606101))

(declare-fun d!1606103 () Bool)

(assert (=> d!1606103 (= (list!18504 input!1580) (list!18506 (c!851036 input!1580)))))

(declare-fun bs!1184742 () Bool)

(assert (= bs!1184742 d!1606103))

(declare-fun m!6019422 () Bool)

(assert (=> bs!1184742 m!6019422))

(assert (=> b!4987258 d!1606103))

(declare-fun d!1606105 () Bool)

(declare-fun c!851106 () Bool)

(assert (=> d!1606105 (= c!851106 ((_ is Node!15228) (c!851036 input!1580)))))

(declare-fun e!3117120 () Bool)

(assert (=> d!1606105 (= (inv!75563 (c!851036 input!1580)) e!3117120)))

(declare-fun b!4987580 () Bool)

(assert (=> b!4987580 (= e!3117120 (inv!75569 (c!851036 input!1580)))))

(declare-fun b!4987581 () Bool)

(declare-fun e!3117121 () Bool)

(assert (=> b!4987581 (= e!3117120 e!3117121)))

(declare-fun res!2129141 () Bool)

(assert (=> b!4987581 (= res!2129141 (not ((_ is Leaf!25291) (c!851036 input!1580))))))

(assert (=> b!4987581 (=> res!2129141 e!3117121)))

(declare-fun b!4987582 () Bool)

(assert (=> b!4987582 (= e!3117121 (inv!75570 (c!851036 input!1580)))))

(assert (= (and d!1606105 c!851106) b!4987580))

(assert (= (and d!1606105 (not c!851106)) b!4987581))

(assert (= (and b!4987581 (not res!2129141)) b!4987582))

(declare-fun m!6019424 () Bool)

(assert (=> b!4987580 m!6019424))

(declare-fun m!6019426 () Bool)

(assert (=> b!4987582 m!6019426))

(assert (=> b!4987257 d!1606105))

(declare-fun tp!1397733 () Bool)

(declare-fun b!4987591 () Bool)

(declare-fun tp!1397734 () Bool)

(declare-fun e!3117127 () Bool)

(assert (=> b!4987591 (= e!3117127 (and (inv!75563 (left!42160 (c!851036 totalInput!520))) tp!1397733 (inv!75563 (right!42490 (c!851036 totalInput!520))) tp!1397734))))

(declare-fun b!4987593 () Bool)

(declare-fun e!3117126 () Bool)

(declare-fun tp!1397732 () Bool)

(assert (=> b!4987593 (= e!3117126 tp!1397732)))

(declare-fun b!4987592 () Bool)

(declare-fun inv!75572 (IArray!30517) Bool)

(assert (=> b!4987592 (= e!3117127 (and (inv!75572 (xs!18554 (c!851036 totalInput!520))) e!3117126))))

(assert (=> b!4987256 (= tp!1397690 (and (inv!75563 (c!851036 totalInput!520)) e!3117127))))

(assert (= (and b!4987256 ((_ is Node!15228) (c!851036 totalInput!520))) b!4987591))

(assert (= b!4987592 b!4987593))

(assert (= (and b!4987256 ((_ is Leaf!25291) (c!851036 totalInput!520))) b!4987592))

(declare-fun m!6019428 () Bool)

(assert (=> b!4987591 m!6019428))

(declare-fun m!6019430 () Bool)

(assert (=> b!4987591 m!6019430))

(declare-fun m!6019432 () Bool)

(assert (=> b!4987592 m!6019432))

(assert (=> b!4987256 m!6019100))

(declare-fun b!4987607 () Bool)

(declare-fun e!3117130 () Bool)

(declare-fun tp!1397749 () Bool)

(declare-fun tp!1397748 () Bool)

(assert (=> b!4987607 (= e!3117130 (and tp!1397749 tp!1397748))))

(assert (=> b!4987260 (= tp!1397686 e!3117130)))

(declare-fun b!4987604 () Bool)

(declare-fun tp_is_empty!36419 () Bool)

(assert (=> b!4987604 (= e!3117130 tp_is_empty!36419)))

(declare-fun b!4987605 () Bool)

(declare-fun tp!1397746 () Bool)

(declare-fun tp!1397747 () Bool)

(assert (=> b!4987605 (= e!3117130 (and tp!1397746 tp!1397747))))

(declare-fun b!4987606 () Bool)

(declare-fun tp!1397745 () Bool)

(assert (=> b!4987606 (= e!3117130 tp!1397745)))

(assert (= (and b!4987260 ((_ is ElementMatch!13709) (regex!8476 rule!200))) b!4987604))

(assert (= (and b!4987260 ((_ is Concat!22495) (regex!8476 rule!200))) b!4987605))

(assert (= (and b!4987260 ((_ is Star!13709) (regex!8476 rule!200))) b!4987606))

(assert (= (and b!4987260 ((_ is Union!13709) (regex!8476 rule!200))) b!4987607))

(declare-fun b!4987608 () Bool)

(declare-fun tp!1397752 () Bool)

(declare-fun e!3117132 () Bool)

(declare-fun tp!1397751 () Bool)

(assert (=> b!4987608 (= e!3117132 (and (inv!75563 (left!42160 (c!851036 input!1580))) tp!1397751 (inv!75563 (right!42490 (c!851036 input!1580))) tp!1397752))))

(declare-fun b!4987610 () Bool)

(declare-fun e!3117131 () Bool)

(declare-fun tp!1397750 () Bool)

(assert (=> b!4987610 (= e!3117131 tp!1397750)))

(declare-fun b!4987609 () Bool)

(assert (=> b!4987609 (= e!3117132 (and (inv!75572 (xs!18554 (c!851036 input!1580))) e!3117131))))

(assert (=> b!4987257 (= tp!1397689 (and (inv!75563 (c!851036 input!1580)) e!3117132))))

(assert (= (and b!4987257 ((_ is Node!15228) (c!851036 input!1580))) b!4987608))

(assert (= b!4987609 b!4987610))

(assert (= (and b!4987257 ((_ is Leaf!25291) (c!851036 input!1580))) b!4987609))

(declare-fun m!6019434 () Bool)

(assert (=> b!4987608 m!6019434))

(declare-fun m!6019436 () Bool)

(assert (=> b!4987608 m!6019436))

(declare-fun m!6019438 () Bool)

(assert (=> b!4987609 m!6019438))

(assert (=> b!4987257 m!6019092))

(declare-fun b_lambda!198419 () Bool)

(assert (= b_lambda!198403 (or (and b!4987261 b_free!133203) b_lambda!198419)))

(declare-fun b_lambda!198421 () Bool)

(assert (= b_lambda!198401 (or b!4987262 b_lambda!198421)))

(declare-fun bs!1184743 () Bool)

(declare-fun d!1606107 () Bool)

(assert (= bs!1184743 (and d!1606107 b!4987262)))

(assert (=> bs!1184743 (= (dynLambda!23476 lambda!248080 (_1!34642 lt!2061386)) (= (list!18504 (dynLambda!23477 (toChars!11344 (transformation!8476 rule!200)) (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (_1!34642 lt!2061386)))) (list!18504 (_1!34642 lt!2061386))))))

(declare-fun b_lambda!198425 () Bool)

(assert (=> (not b_lambda!198425) (not bs!1184743)))

(declare-fun t!370031 () Bool)

(declare-fun tb!261773 () Bool)

(assert (=> (and b!4987261 (= (toChars!11344 (transformation!8476 rule!200)) (toChars!11344 (transformation!8476 rule!200))) t!370031) tb!261773))

(declare-fun tp!1397753 () Bool)

(declare-fun e!3117133 () Bool)

(declare-fun b!4987611 () Bool)

(assert (=> b!4987611 (= e!3117133 (and (inv!75563 (c!851036 (dynLambda!23477 (toChars!11344 (transformation!8476 rule!200)) (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (_1!34642 lt!2061386))))) tp!1397753))))

(declare-fun result!327236 () Bool)

(assert (=> tb!261773 (= result!327236 (and (inv!75565 (dynLambda!23477 (toChars!11344 (transformation!8476 rule!200)) (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (_1!34642 lt!2061386)))) e!3117133))))

(assert (= tb!261773 b!4987611))

(declare-fun m!6019440 () Bool)

(assert (=> b!4987611 m!6019440))

(declare-fun m!6019442 () Bool)

(assert (=> tb!261773 m!6019442))

(assert (=> bs!1184743 t!370031))

(declare-fun b_and!349999 () Bool)

(assert (= b_and!349987 (and (=> t!370031 result!327236) b_and!349999)))

(declare-fun b_lambda!198427 () Bool)

(assert (=> (not b_lambda!198427) (not bs!1184743)))

(assert (=> bs!1184743 t!370023))

(declare-fun b_and!350001 () Bool)

(assert (= b_and!349989 (and (=> t!370023 result!327218) b_and!350001)))

(assert (=> bs!1184743 m!6019206))

(assert (=> bs!1184743 m!6019086))

(declare-fun m!6019444 () Bool)

(assert (=> bs!1184743 m!6019444))

(declare-fun m!6019446 () Bool)

(assert (=> bs!1184743 m!6019446))

(assert (=> bs!1184743 m!6019206))

(assert (=> bs!1184743 m!6019444))

(assert (=> d!1606033 d!1606107))

(declare-fun b_lambda!198423 () Bool)

(assert (= b_lambda!198397 (or b!4987262 b_lambda!198423)))

(declare-fun bs!1184744 () Bool)

(declare-fun d!1606109 () Bool)

(assert (= bs!1184744 (and d!1606109 b!4987262)))

(assert (=> bs!1184744 (= (dynLambda!23476 lambda!248080 (seqFromList!6095 lt!2061382)) (= (list!18504 (dynLambda!23477 (toChars!11344 (transformation!8476 rule!200)) (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (seqFromList!6095 lt!2061382)))) (list!18504 (seqFromList!6095 lt!2061382))))))

(declare-fun b_lambda!198429 () Bool)

(assert (=> (not b_lambda!198429) (not bs!1184744)))

(declare-fun t!370033 () Bool)

(declare-fun tb!261775 () Bool)

(assert (=> (and b!4987261 (= (toChars!11344 (transformation!8476 rule!200)) (toChars!11344 (transformation!8476 rule!200))) t!370033) tb!261775))

(declare-fun tp!1397754 () Bool)

(declare-fun e!3117134 () Bool)

(declare-fun b!4987612 () Bool)

(assert (=> b!4987612 (= e!3117134 (and (inv!75563 (c!851036 (dynLambda!23477 (toChars!11344 (transformation!8476 rule!200)) (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (seqFromList!6095 lt!2061382))))) tp!1397754))))

(declare-fun result!327238 () Bool)

(assert (=> tb!261775 (= result!327238 (and (inv!75565 (dynLambda!23477 (toChars!11344 (transformation!8476 rule!200)) (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (seqFromList!6095 lt!2061382)))) e!3117134))))

(assert (= tb!261775 b!4987612))

(declare-fun m!6019448 () Bool)

(assert (=> b!4987612 m!6019448))

(declare-fun m!6019450 () Bool)

(assert (=> tb!261775 m!6019450))

(assert (=> bs!1184744 t!370033))

(declare-fun b_and!350003 () Bool)

(assert (= b_and!349999 (and (=> t!370033 result!327238) b_and!350003)))

(declare-fun b_lambda!198431 () Bool)

(assert (=> (not b_lambda!198431) (not bs!1184744)))

(declare-fun t!370035 () Bool)

(declare-fun tb!261777 () Bool)

(assert (=> (and b!4987261 (= (toValue!11485 (transformation!8476 rule!200)) (toValue!11485 (transformation!8476 rule!200))) t!370035) tb!261777))

(declare-fun result!327240 () Bool)

(assert (=> tb!261777 (= result!327240 (inv!21 (dynLambda!23478 (toValue!11485 (transformation!8476 rule!200)) (seqFromList!6095 lt!2061382))))))

(declare-fun m!6019452 () Bool)

(assert (=> tb!261777 m!6019452))

(assert (=> bs!1184744 t!370035))

(declare-fun b_and!350005 () Bool)

(assert (= b_and!350001 (and (=> t!370035 result!327240) b_and!350005)))

(assert (=> bs!1184744 m!6019080))

(declare-fun m!6019454 () Bool)

(assert (=> bs!1184744 m!6019454))

(assert (=> bs!1184744 m!6019080))

(declare-fun m!6019456 () Bool)

(assert (=> bs!1184744 m!6019456))

(declare-fun m!6019458 () Bool)

(assert (=> bs!1184744 m!6019458))

(declare-fun m!6019460 () Bool)

(assert (=> bs!1184744 m!6019460))

(assert (=> bs!1184744 m!6019454))

(assert (=> bs!1184744 m!6019458))

(assert (=> d!1606029 d!1606109))

(check-sat (not bm!348106) (not d!1606043) (not b!4987611) (not b_lambda!198419) (not b!4987563) (not b_lambda!198429) (not d!1606071) (not b!4987569) (not bm!348112) (not b!4987281) (not b_next!133995) (not d!1606081) (not b_lambda!198421) (not b!4987283) (not b!4987560) (not b!4987607) (not b!4987592) (not d!1606051) (not bs!1184744) (not b!4987572) (not b_lambda!198423) (not d!1606001) (not tb!261775) (not d!1606037) (not b!4987320) (not d!1606025) (not tb!261765) (not tb!261777) (not b!4987392) (not b!4987319) (not d!1606103) (not bs!1184743) (not bm!348111) (not d!1606049) (not b_next!133993) (not tb!261773) (not d!1606099) (not b_lambda!198425) (not b!4987388) (not b!4987325) (not b!4987582) (not b!4987557) (not b!4987256) (not d!1606055) (not b!4987593) b_and!350005 (not b!4987605) (not d!1606031) (not b!4987610) (not b!4987395) (not b!4987384) (not b!4987453) (not d!1606101) (not b_lambda!198399) (not b!4987396) (not b!4987330) (not b!4987612) (not bm!348108) (not d!1605999) (not b!4987386) (not b_lambda!198427) (not d!1606045) (not d!1606047) (not b!4987580) (not b!4987405) (not bm!348110) (not b!4987606) (not tb!261763) (not d!1606035) (not d!1606029) (not b!4987579) tp_is_empty!36419 (not d!1606097) (not b!4987591) (not b_lambda!198431) (not bm!348109) (not b!4987257) (not bm!348107) (not b!4987608) (not b!4987443) b_and!350003 (not b!4987432) (not bm!348105) (not bm!348069) (not d!1605991) (not b!4987609) (not d!1606033))
(check-sat b_and!350003 b_and!350005 (not b_next!133995) (not b_next!133993))
