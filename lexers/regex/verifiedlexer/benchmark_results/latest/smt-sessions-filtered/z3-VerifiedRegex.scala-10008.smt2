; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523022 () Bool)

(assert start!523022)

(declare-fun b!4960704 () Bool)

(declare-fun b_free!132543 () Bool)

(declare-fun b_next!133333 () Bool)

(assert (=> b!4960704 (= b_free!132543 (not b_next!133333))))

(declare-fun tp!1391391 () Bool)

(declare-fun b_and!347395 () Bool)

(assert (=> b!4960704 (= tp!1391391 b_and!347395)))

(declare-fun b_free!132545 () Bool)

(declare-fun b_next!133335 () Bool)

(assert (=> b!4960704 (= b_free!132545 (not b_next!133335))))

(declare-fun tp!1391390 () Bool)

(declare-fun b_and!347397 () Bool)

(assert (=> b!4960704 (= tp!1391390 b_and!347397)))

(declare-fun b!4960701 () Bool)

(declare-fun e!3100538 () Bool)

(declare-fun e!3100539 () Bool)

(declare-fun tp!1391393 () Bool)

(assert (=> b!4960701 (= e!3100538 (and e!3100539 tp!1391393))))

(declare-fun b!4960702 () Bool)

(declare-fun e!3100532 () Bool)

(declare-fun e!3100540 () Bool)

(assert (=> b!4960702 (= e!3100532 e!3100540)))

(declare-fun res!2117309 () Bool)

(assert (=> b!4960702 (=> res!2117309 e!3100540)))

(declare-datatypes ((List!57490 0))(
  ( (Nil!57366) (Cons!57366 (h!63814 (_ BitVec 16)) (t!368056 List!57490)) )
))
(declare-datatypes ((TokenValue!8678 0))(
  ( (FloatLiteralValue!17356 (text!61191 List!57490)) (TokenValueExt!8677 (__x!34649 Int)) (Broken!43390 (value!267904 List!57490)) (Object!8801) (End!8678) (Def!8678) (Underscore!8678) (Match!8678) (Else!8678) (Error!8678) (Case!8678) (If!8678) (Extends!8678) (Abstract!8678) (Class!8678) (Val!8678) (DelimiterValue!17356 (del!8738 List!57490)) (KeywordValue!8684 (value!267905 List!57490)) (CommentValue!17356 (value!267906 List!57490)) (WhitespaceValue!17356 (value!267907 List!57490)) (IndentationValue!8678 (value!267908 List!57490)) (String!65263) (Int32!8678) (Broken!43391 (value!267909 List!57490)) (Boolean!8679) (Unit!148260) (OperatorValue!8681 (op!8738 List!57490)) (IdentifierValue!17356 (value!267910 List!57490)) (IdentifierValue!17357 (value!267911 List!57490)) (WhitespaceValue!17357 (value!267912 List!57490)) (True!17356) (False!17356) (Broken!43392 (value!267913 List!57490)) (Broken!43393 (value!267914 List!57490)) (True!17357) (RightBrace!8678) (RightBracket!8678) (Colon!8678) (Null!8678) (Comma!8678) (LeftBracket!8678) (False!17357) (LeftBrace!8678) (ImaginaryLiteralValue!8678 (text!61192 List!57490)) (StringLiteralValue!26034 (value!267915 List!57490)) (EOFValue!8678 (value!267916 List!57490)) (IdentValue!8678 (value!267917 List!57490)) (DelimiterValue!17357 (value!267918 List!57490)) (DedentValue!8678 (value!267919 List!57490)) (NewLineValue!8678 (value!267920 List!57490)) (IntegerValue!26034 (value!267921 (_ BitVec 32)) (text!61193 List!57490)) (IntegerValue!26035 (value!267922 Int) (text!61194 List!57490)) (Times!8678) (Or!8678) (Equal!8678) (Minus!8678) (Broken!43394 (value!267923 List!57490)) (And!8678) (Div!8678) (LessEqual!8678) (Mod!8678) (Concat!22279) (Not!8678) (Plus!8678) (SpaceValue!8678 (value!267924 List!57490)) (IntegerValue!26036 (value!267925 Int) (text!61195 List!57490)) (StringLiteralValue!26035 (text!61196 List!57490)) (FloatLiteralValue!17357 (text!61197 List!57490)) (BytesLiteralValue!8678 (value!267926 List!57490)) (CommentValue!17357 (value!267927 List!57490)) (StringLiteralValue!26036 (value!267928 List!57490)) (ErrorTokenValue!8678 (msg!8739 List!57490)) )
))
(declare-datatypes ((C!27452 0))(
  ( (C!27453 (val!23092 Int)) )
))
(declare-datatypes ((Regex!13601 0))(
  ( (ElementMatch!13601 (c!846535 C!27452)) (Concat!22280 (regOne!27714 Regex!13601) (regTwo!27714 Regex!13601)) (EmptyExpr!13601) (Star!13601 (reg!13930 Regex!13601)) (EmptyLang!13601) (Union!13601 (regOne!27715 Regex!13601) (regTwo!27715 Regex!13601)) )
))
(declare-datatypes ((String!65264 0))(
  ( (String!65265 (value!267929 String)) )
))
(declare-datatypes ((List!57491 0))(
  ( (Nil!57367) (Cons!57367 (h!63815 C!27452) (t!368057 List!57491)) )
))
(declare-datatypes ((IArray!30301 0))(
  ( (IArray!30302 (innerList!15208 List!57491)) )
))
(declare-datatypes ((Conc!15120 0))(
  ( (Node!15120 (left!41834 Conc!15120) (right!42164 Conc!15120) (csize!30470 Int) (cheight!15331 Int)) (Leaf!25129 (xs!18446 IArray!30301) (csize!30471 Int)) (Empty!15120) )
))
(declare-datatypes ((BalanceConc!29670 0))(
  ( (BalanceConc!29671 (c!846536 Conc!15120)) )
))
(declare-datatypes ((TokenValueInjection!16664 0))(
  ( (TokenValueInjection!16665 (toValue!11319 Int) (toChars!11178 Int)) )
))
(declare-datatypes ((Rule!16536 0))(
  ( (Rule!16537 (regex!8368 Regex!13601) (tag!9232 String!65264) (isSeparator!8368 Bool) (transformation!8368 TokenValueInjection!16664)) )
))
(declare-datatypes ((Token!15236 0))(
  ( (Token!15237 (value!267930 TokenValue!8678) (rule!11598 Rule!16536) (size!38018 Int) (originalCharacters!8649 List!57491)) )
))
(declare-datatypes ((tuple2!62044 0))(
  ( (tuple2!62045 (_1!34325 Token!15236) (_2!34325 BalanceConc!29670)) )
))
(declare-fun lt!2048157 () tuple2!62044)

(declare-datatypes ((tuple2!62046 0))(
  ( (tuple2!62047 (_1!34326 Token!15236) (_2!34326 List!57491)) )
))
(declare-fun lt!2048161 () tuple2!62046)

(assert (=> b!4960702 (= res!2117309 (not (= (_1!34325 lt!2048157) (_1!34326 lt!2048161))))))

(declare-datatypes ((Option!14405 0))(
  ( (None!14404) (Some!14404 (v!50389 tuple2!62046)) )
))
(declare-fun lt!2048159 () Option!14405)

(declare-fun get!19889 (Option!14405) tuple2!62046)

(assert (=> b!4960702 (= lt!2048161 (get!19889 lt!2048159))))

(declare-datatypes ((Option!14406 0))(
  ( (None!14405) (Some!14405 (v!50390 tuple2!62044)) )
))
(declare-fun lt!2048165 () Option!14406)

(declare-fun get!19890 (Option!14406) tuple2!62044)

(assert (=> b!4960702 (= lt!2048157 (get!19890 lt!2048165))))

(declare-fun b!4960703 () Bool)

(declare-fun e!3100533 () Bool)

(declare-fun e!3100529 () Bool)

(assert (=> b!4960703 (= e!3100533 e!3100529)))

(declare-fun res!2117308 () Bool)

(assert (=> b!4960703 (=> res!2117308 e!3100529)))

(assert (=> b!4960703 (= res!2117308 e!3100532)))

(declare-fun res!2117306 () Bool)

(assert (=> b!4960703 (=> (not res!2117306) (not e!3100532))))

(declare-fun lt!2048163 () Bool)

(assert (=> b!4960703 (= res!2117306 (not lt!2048163))))

(declare-fun lt!2048158 () Bool)

(assert (=> b!4960703 (= lt!2048163 (not lt!2048158))))

(declare-fun e!3100534 () Bool)

(assert (=> b!4960704 (= e!3100534 (and tp!1391391 tp!1391390))))

(declare-fun b!4960705 () Bool)

(declare-fun res!2117302 () Bool)

(declare-fun e!3100535 () Bool)

(assert (=> b!4960705 (=> (not res!2117302) (not e!3100535))))

(declare-datatypes ((LexerInterface!7960 0))(
  ( (LexerInterfaceExt!7957 (__x!34650 Int)) (Lexer!7958) )
))
(declare-fun thiss!15247 () LexerInterface!7960)

(declare-datatypes ((List!57492 0))(
  ( (Nil!57368) (Cons!57368 (h!63816 Rule!16536) (t!368058 List!57492)) )
))
(declare-fun rulesArg!259 () List!57492)

(declare-fun rulesValidInductive!3271 (LexerInterface!7960 List!57492) Bool)

(assert (=> b!4960705 (= res!2117302 (rulesValidInductive!3271 thiss!15247 rulesArg!259))))

(declare-fun b!4960706 () Bool)

(declare-fun e!3100528 () Bool)

(assert (=> b!4960706 (= e!3100535 e!3100528)))

(declare-fun res!2117301 () Bool)

(assert (=> b!4960706 (=> (not res!2117301) (not e!3100528))))

(declare-fun lt!2048164 () List!57491)

(declare-fun totalInput!464 () BalanceConc!29670)

(declare-fun isSuffix!1167 (List!57491 List!57491) Bool)

(declare-fun list!18323 (BalanceConc!29670) List!57491)

(assert (=> b!4960706 (= res!2117301 (isSuffix!1167 lt!2048164 (list!18323 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29670)

(assert (=> b!4960706 (= lt!2048164 (list!18323 input!1342))))

(declare-fun b!4960707 () Bool)

(declare-fun e!3100537 () Bool)

(declare-fun tp!1391394 () Bool)

(declare-fun inv!74909 (Conc!15120) Bool)

(assert (=> b!4960707 (= e!3100537 (and (inv!74909 (c!846536 input!1342)) tp!1391394))))

(declare-fun b!4960708 () Bool)

(declare-fun e!3100530 () Bool)

(declare-fun e!3100541 () Bool)

(assert (=> b!4960708 (= e!3100530 e!3100541)))

(declare-fun res!2117300 () Bool)

(assert (=> b!4960708 (=> res!2117300 e!3100541)))

(declare-fun lt!2048166 () Option!14406)

(get-info :version)

(assert (=> b!4960708 (= res!2117300 (or (and ((_ is None!14405) lt!2048166) ((_ is None!14405) lt!2048165)) ((_ is None!14405) lt!2048165) ((_ is None!14405) lt!2048166) (>= (size!38018 (_1!34325 (v!50390 lt!2048166))) (size!38018 (_1!34325 (v!50390 lt!2048165))))))))

(declare-fun maxPrefixZipperSequenceV2!699 (LexerInterface!7960 List!57492 BalanceConc!29670 BalanceConc!29670) Option!14406)

(assert (=> b!4960708 (= lt!2048165 (maxPrefixZipperSequenceV2!699 thiss!15247 (t!368058 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!352 (LexerInterface!7960 Rule!16536 BalanceConc!29670 BalanceConc!29670) Option!14406)

(assert (=> b!4960708 (= lt!2048166 (maxPrefixOneRuleZipperSequenceV2!352 thiss!15247 (h!63816 rulesArg!259) input!1342 totalInput!464))))

(declare-fun res!2117304 () Bool)

(assert (=> start!523022 (=> (not res!2117304) (not e!3100535))))

(assert (=> start!523022 (= res!2117304 ((_ is Lexer!7958) thiss!15247))))

(assert (=> start!523022 e!3100535))

(assert (=> start!523022 true))

(assert (=> start!523022 e!3100538))

(declare-fun inv!74910 (BalanceConc!29670) Bool)

(assert (=> start!523022 (and (inv!74910 input!1342) e!3100537)))

(declare-fun e!3100531 () Bool)

(assert (=> start!523022 (and (inv!74910 totalInput!464) e!3100531)))

(declare-fun b!4960709 () Bool)

(assert (=> b!4960709 (= e!3100529 true)))

(declare-fun lt!2048162 () Option!14405)

(declare-fun maxPrefix!4647 (LexerInterface!7960 List!57492 List!57491) Option!14405)

(assert (=> b!4960709 (= lt!2048162 (maxPrefix!4647 thiss!15247 rulesArg!259 lt!2048164))))

(declare-fun b!4960710 () Bool)

(assert (=> b!4960710 (= e!3100540 (not (= (list!18323 (_2!34325 lt!2048157)) (_2!34326 lt!2048161))))))

(declare-fun b!4960711 () Bool)

(declare-fun tp!1391392 () Bool)

(assert (=> b!4960711 (= e!3100531 (and (inv!74909 (c!846536 totalInput!464)) tp!1391392))))

(declare-fun b!4960712 () Bool)

(declare-fun res!2117307 () Bool)

(assert (=> b!4960712 (=> (not res!2117307) (not e!3100535))))

(declare-fun isEmpty!30864 (List!57492) Bool)

(assert (=> b!4960712 (= res!2117307 (not (isEmpty!30864 rulesArg!259)))))

(declare-fun b!4960713 () Bool)

(assert (=> b!4960713 (= e!3100528 (not e!3100530))))

(declare-fun res!2117303 () Bool)

(assert (=> b!4960713 (=> res!2117303 e!3100530)))

(assert (=> b!4960713 (= res!2117303 (or (and ((_ is Cons!57368) rulesArg!259) ((_ is Nil!57368) (t!368058 rulesArg!259))) (not ((_ is Cons!57368) rulesArg!259))))))

(declare-fun isPrefix!5221 (List!57491 List!57491) Bool)

(assert (=> b!4960713 (isPrefix!5221 lt!2048164 lt!2048164)))

(declare-datatypes ((Unit!148261 0))(
  ( (Unit!148262) )
))
(declare-fun lt!2048160 () Unit!148261)

(declare-fun lemmaIsPrefixRefl!3545 (List!57491 List!57491) Unit!148261)

(assert (=> b!4960713 (= lt!2048160 (lemmaIsPrefixRefl!3545 lt!2048164 lt!2048164))))

(declare-fun b!4960714 () Bool)

(declare-fun tp!1391389 () Bool)

(declare-fun inv!74905 (String!65264) Bool)

(declare-fun inv!74911 (TokenValueInjection!16664) Bool)

(assert (=> b!4960714 (= e!3100539 (and tp!1391389 (inv!74905 (tag!9232 (h!63816 rulesArg!259))) (inv!74911 (transformation!8368 (h!63816 rulesArg!259))) e!3100534))))

(declare-fun b!4960715 () Bool)

(assert (=> b!4960715 (= e!3100541 e!3100533)))

(declare-fun res!2117305 () Bool)

(assert (=> b!4960715 (=> res!2117305 e!3100533)))

(declare-fun isDefined!11320 (Option!14405) Bool)

(assert (=> b!4960715 (= res!2117305 (not (= lt!2048158 (isDefined!11320 lt!2048159))))))

(declare-fun isDefined!11321 (Option!14406) Bool)

(assert (=> b!4960715 (= lt!2048158 (isDefined!11321 lt!2048165))))

(declare-fun maxPrefixZipper!765 (LexerInterface!7960 List!57492 List!57491) Option!14405)

(assert (=> b!4960715 (= lt!2048159 (maxPrefixZipper!765 thiss!15247 rulesArg!259 lt!2048164))))

(declare-fun b!4960716 () Bool)

(declare-fun res!2117310 () Bool)

(assert (=> b!4960716 (=> res!2117310 e!3100529)))

(assert (=> b!4960716 (= res!2117310 lt!2048163)))

(assert (= (and start!523022 res!2117304) b!4960705))

(assert (= (and b!4960705 res!2117302) b!4960712))

(assert (= (and b!4960712 res!2117307) b!4960706))

(assert (= (and b!4960706 res!2117301) b!4960713))

(assert (= (and b!4960713 (not res!2117303)) b!4960708))

(assert (= (and b!4960708 (not res!2117300)) b!4960715))

(assert (= (and b!4960715 (not res!2117305)) b!4960703))

(assert (= (and b!4960703 res!2117306) b!4960702))

(assert (= (and b!4960702 (not res!2117309)) b!4960710))

(assert (= (and b!4960703 (not res!2117308)) b!4960716))

(assert (= (and b!4960716 (not res!2117310)) b!4960709))

(assert (= b!4960714 b!4960704))

(assert (= b!4960701 b!4960714))

(assert (= (and start!523022 ((_ is Cons!57368) rulesArg!259)) b!4960701))

(assert (= start!523022 b!4960707))

(assert (= start!523022 b!4960711))

(declare-fun m!5985260 () Bool)

(assert (=> b!4960702 m!5985260))

(declare-fun m!5985262 () Bool)

(assert (=> b!4960702 m!5985262))

(declare-fun m!5985264 () Bool)

(assert (=> b!4960712 m!5985264))

(declare-fun m!5985266 () Bool)

(assert (=> b!4960706 m!5985266))

(assert (=> b!4960706 m!5985266))

(declare-fun m!5985268 () Bool)

(assert (=> b!4960706 m!5985268))

(declare-fun m!5985270 () Bool)

(assert (=> b!4960706 m!5985270))

(declare-fun m!5985272 () Bool)

(assert (=> b!4960710 m!5985272))

(declare-fun m!5985274 () Bool)

(assert (=> b!4960709 m!5985274))

(declare-fun m!5985276 () Bool)

(assert (=> b!4960705 m!5985276))

(declare-fun m!5985278 () Bool)

(assert (=> b!4960708 m!5985278))

(declare-fun m!5985280 () Bool)

(assert (=> b!4960708 m!5985280))

(declare-fun m!5985282 () Bool)

(assert (=> b!4960715 m!5985282))

(declare-fun m!5985284 () Bool)

(assert (=> b!4960715 m!5985284))

(declare-fun m!5985286 () Bool)

(assert (=> b!4960715 m!5985286))

(declare-fun m!5985288 () Bool)

(assert (=> b!4960713 m!5985288))

(declare-fun m!5985290 () Bool)

(assert (=> b!4960713 m!5985290))

(declare-fun m!5985292 () Bool)

(assert (=> b!4960714 m!5985292))

(declare-fun m!5985294 () Bool)

(assert (=> b!4960714 m!5985294))

(declare-fun m!5985296 () Bool)

(assert (=> b!4960711 m!5985296))

(declare-fun m!5985298 () Bool)

(assert (=> b!4960707 m!5985298))

(declare-fun m!5985300 () Bool)

(assert (=> start!523022 m!5985300))

(declare-fun m!5985302 () Bool)

(assert (=> start!523022 m!5985302))

(check-sat (not b!4960705) (not b!4960708) (not b!4960714) (not b!4960715) (not b!4960702) b_and!347397 (not b!4960712) (not b!4960709) (not b_next!133335) (not b!4960707) (not b!4960706) (not b!4960713) (not start!523022) (not b!4960711) (not b!4960701) b_and!347395 (not b!4960710) (not b_next!133333))
(check-sat b_and!347395 b_and!347397 (not b_next!133333) (not b_next!133335))
