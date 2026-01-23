; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!523312 () Bool)

(assert start!523312)

(declare-fun b!4962713 () Bool)

(declare-fun b_free!132695 () Bool)

(declare-fun b_next!133485 () Bool)

(assert (=> b!4962713 (= b_free!132695 (not b_next!133485))))

(declare-fun tp!1392279 () Bool)

(declare-fun b_and!347563 () Bool)

(assert (=> b!4962713 (= tp!1392279 b_and!347563)))

(declare-fun b_free!132697 () Bool)

(declare-fun b_next!133487 () Bool)

(assert (=> b!4962713 (= b_free!132697 (not b_next!133487))))

(declare-fun tp!1392280 () Bool)

(declare-fun b_and!347565 () Bool)

(assert (=> b!4962713 (= tp!1392280 b_and!347565)))

(declare-datatypes ((List!57547 0))(
  ( (Nil!57423) (Cons!57423 (h!63871 (_ BitVec 16)) (t!368137 List!57547)) )
))
(declare-datatypes ((TokenValue!8697 0))(
  ( (FloatLiteralValue!17394 (text!61324 List!57547)) (TokenValueExt!8696 (__x!34687 Int)) (Broken!43485 (value!268445 List!57547)) (Object!8820) (End!8697) (Def!8697) (Underscore!8697) (Match!8697) (Else!8697) (Error!8697) (Case!8697) (If!8697) (Extends!8697) (Abstract!8697) (Class!8697) (Val!8697) (DelimiterValue!17394 (del!8757 List!57547)) (KeywordValue!8703 (value!268446 List!57547)) (CommentValue!17394 (value!268447 List!57547)) (WhitespaceValue!17394 (value!268448 List!57547)) (IndentationValue!8697 (value!268449 List!57547)) (String!65360) (Int32!8697) (Broken!43486 (value!268450 List!57547)) (Boolean!8698) (Unit!148313) (OperatorValue!8700 (op!8757 List!57547)) (IdentifierValue!17394 (value!268451 List!57547)) (IdentifierValue!17395 (value!268452 List!57547)) (WhitespaceValue!17395 (value!268453 List!57547)) (True!17394) (False!17394) (Broken!43487 (value!268454 List!57547)) (Broken!43488 (value!268455 List!57547)) (True!17395) (RightBrace!8697) (RightBracket!8697) (Colon!8697) (Null!8697) (Comma!8697) (LeftBracket!8697) (False!17395) (LeftBrace!8697) (ImaginaryLiteralValue!8697 (text!61325 List!57547)) (StringLiteralValue!26091 (value!268456 List!57547)) (EOFValue!8697 (value!268457 List!57547)) (IdentValue!8697 (value!268458 List!57547)) (DelimiterValue!17395 (value!268459 List!57547)) (DedentValue!8697 (value!268460 List!57547)) (NewLineValue!8697 (value!268461 List!57547)) (IntegerValue!26091 (value!268462 (_ BitVec 32)) (text!61326 List!57547)) (IntegerValue!26092 (value!268463 Int) (text!61327 List!57547)) (Times!8697) (Or!8697) (Equal!8697) (Minus!8697) (Broken!43489 (value!268464 List!57547)) (And!8697) (Div!8697) (LessEqual!8697) (Mod!8697) (Concat!22317) (Not!8697) (Plus!8697) (SpaceValue!8697 (value!268465 List!57547)) (IntegerValue!26093 (value!268466 Int) (text!61328 List!57547)) (StringLiteralValue!26092 (text!61329 List!57547)) (FloatLiteralValue!17395 (text!61330 List!57547)) (BytesLiteralValue!8697 (value!268467 List!57547)) (CommentValue!17395 (value!268468 List!57547)) (StringLiteralValue!26093 (value!268469 List!57547)) (ErrorTokenValue!8697 (msg!8758 List!57547)) )
))
(declare-datatypes ((C!27490 0))(
  ( (C!27491 (val!23111 Int)) )
))
(declare-datatypes ((List!57548 0))(
  ( (Nil!57424) (Cons!57424 (h!63872 C!27490) (t!368138 List!57548)) )
))
(declare-datatypes ((IArray!30339 0))(
  ( (IArray!30340 (innerList!15227 List!57548)) )
))
(declare-datatypes ((Regex!13620 0))(
  ( (ElementMatch!13620 (c!846704 C!27490)) (Concat!22318 (regOne!27752 Regex!13620) (regTwo!27752 Regex!13620)) (EmptyExpr!13620) (Star!13620 (reg!13949 Regex!13620)) (EmptyLang!13620) (Union!13620 (regOne!27753 Regex!13620) (regTwo!27753 Regex!13620)) )
))
(declare-datatypes ((String!65361 0))(
  ( (String!65362 (value!268470 String)) )
))
(declare-datatypes ((Conc!15139 0))(
  ( (Node!15139 (left!41879 Conc!15139) (right!42209 Conc!15139) (csize!30508 Int) (cheight!15350 Int)) (Leaf!25158 (xs!18465 IArray!30339) (csize!30509 Int)) (Empty!15139) )
))
(declare-datatypes ((BalanceConc!29708 0))(
  ( (BalanceConc!29709 (c!846705 Conc!15139)) )
))
(declare-datatypes ((TokenValueInjection!16702 0))(
  ( (TokenValueInjection!16703 (toValue!11338 Int) (toChars!11197 Int)) )
))
(declare-datatypes ((Rule!16574 0))(
  ( (Rule!16575 (regex!8387 Regex!13620) (tag!9251 String!65361) (isSeparator!8387 Bool) (transformation!8387 TokenValueInjection!16702)) )
))
(declare-datatypes ((List!57549 0))(
  ( (Nil!57425) (Cons!57425 (h!63873 Rule!16574) (t!368139 List!57549)) )
))
(declare-fun rulesArg!259 () List!57549)

(declare-fun tp!1392283 () Bool)

(declare-fun b!4962701 () Bool)

(declare-fun e!3102098 () Bool)

(declare-fun e!3102094 () Bool)

(declare-fun inv!75026 (String!65361) Bool)

(declare-fun inv!75029 (TokenValueInjection!16702) Bool)

(assert (=> b!4962701 (= e!3102094 (and tp!1392283 (inv!75026 (tag!9251 (h!63873 rulesArg!259))) (inv!75029 (transformation!8387 (h!63873 rulesArg!259))) e!3102098))))

(declare-fun b!4962702 () Bool)

(declare-fun e!3102099 () Bool)

(declare-fun e!3102096 () Bool)

(assert (=> b!4962702 (= e!3102099 (not e!3102096))))

(declare-fun res!2118222 () Bool)

(assert (=> b!4962702 (=> res!2118222 e!3102096)))

(assert (=> b!4962702 (= res!2118222 (or (not (is-Cons!57425 rulesArg!259)) (not (is-Nil!57425 (t!368139 rulesArg!259)))))))

(declare-fun lt!2048901 () List!57548)

(declare-fun isPrefix!5238 (List!57548 List!57548) Bool)

(assert (=> b!4962702 (isPrefix!5238 lt!2048901 lt!2048901)))

(declare-datatypes ((Unit!148314 0))(
  ( (Unit!148315) )
))
(declare-fun lt!2048908 () Unit!148314)

(declare-fun lemmaIsPrefixRefl!3562 (List!57548 List!57548) Unit!148314)

(assert (=> b!4962702 (= lt!2048908 (lemmaIsPrefixRefl!3562 lt!2048901 lt!2048901))))

(declare-fun b!4962703 () Bool)

(declare-fun e!3102086 () Bool)

(assert (=> b!4962703 (= e!3102086 e!3102099)))

(declare-fun res!2118228 () Bool)

(assert (=> b!4962703 (=> (not res!2118228) (not e!3102099))))

(declare-fun totalInput!464 () BalanceConc!29708)

(declare-fun isSuffix!1186 (List!57548 List!57548) Bool)

(declare-fun list!18349 (BalanceConc!29708) List!57548)

(assert (=> b!4962703 (= res!2118228 (isSuffix!1186 lt!2048901 (list!18349 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29708)

(assert (=> b!4962703 (= lt!2048901 (list!18349 input!1342))))

(declare-fun b!4962704 () Bool)

(declare-fun e!3102087 () Bool)

(assert (=> b!4962704 (= e!3102096 e!3102087)))

(declare-fun res!2118229 () Bool)

(assert (=> b!4962704 (=> (not res!2118229) (not e!3102087))))

(declare-fun lt!2048910 () Bool)

(declare-datatypes ((Token!15270 0))(
  ( (Token!15271 (value!268471 TokenValue!8697) (rule!11617 Rule!16574) (size!38046 Int) (originalCharacters!8666 List!57548)) )
))
(declare-datatypes ((tuple2!62116 0))(
  ( (tuple2!62117 (_1!34361 Token!15270) (_2!34361 List!57548)) )
))
(declare-datatypes ((Option!14437 0))(
  ( (None!14436) (Some!14436 (v!50421 tuple2!62116)) )
))
(declare-fun lt!2048905 () Option!14437)

(declare-fun isDefined!11350 (Option!14437) Bool)

(assert (=> b!4962704 (= res!2118229 (= lt!2048910 (isDefined!11350 lt!2048905)))))

(declare-datatypes ((tuple2!62118 0))(
  ( (tuple2!62119 (_1!34362 Token!15270) (_2!34362 BalanceConc!29708)) )
))
(declare-datatypes ((Option!14438 0))(
  ( (None!14437) (Some!14437 (v!50422 tuple2!62118)) )
))
(declare-fun lt!2048902 () Option!14438)

(declare-fun isDefined!11351 (Option!14438) Bool)

(assert (=> b!4962704 (= lt!2048910 (isDefined!11351 lt!2048902))))

(declare-datatypes ((LexerInterface!7979 0))(
  ( (LexerInterfaceExt!7976 (__x!34688 Int)) (Lexer!7977) )
))
(declare-fun thiss!15247 () LexerInterface!7979)

(declare-fun maxPrefixZipper!782 (LexerInterface!7979 List!57549 List!57548) Option!14437)

(assert (=> b!4962704 (= lt!2048905 (maxPrefixZipper!782 thiss!15247 rulesArg!259 lt!2048901))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!355 (LexerInterface!7979 Rule!16574 BalanceConc!29708 BalanceConc!29708) Option!14438)

(assert (=> b!4962704 (= lt!2048902 (maxPrefixOneRuleZipperSequenceV2!355 thiss!15247 (h!63873 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4962705 () Bool)

(declare-fun e!3102092 () Bool)

(declare-fun tp!1392282 () Bool)

(declare-fun inv!75030 (Conc!15139) Bool)

(assert (=> b!4962705 (= e!3102092 (and (inv!75030 (c!846705 input!1342)) tp!1392282))))

(declare-fun b!4962706 () Bool)

(declare-fun res!2118226 () Bool)

(assert (=> b!4962706 (=> (not res!2118226) (not e!3102086))))

(declare-fun isEmpty!30903 (List!57549) Bool)

(assert (=> b!4962706 (= res!2118226 (not (isEmpty!30903 rulesArg!259)))))

(declare-fun b!4962707 () Bool)

(declare-fun e!3102090 () Bool)

(declare-fun lt!2048909 () tuple2!62118)

(declare-fun lt!2048903 () tuple2!62116)

(assert (=> b!4962707 (= e!3102090 (= (list!18349 (_2!34362 lt!2048909)) (_2!34361 lt!2048903)))))

(declare-fun b!4962708 () Bool)

(declare-fun e!3102095 () Bool)

(declare-fun tp!1392284 () Bool)

(assert (=> b!4962708 (= e!3102095 (and e!3102094 tp!1392284))))

(declare-fun res!2118219 () Bool)

(assert (=> start!523312 (=> (not res!2118219) (not e!3102086))))

(assert (=> start!523312 (= res!2118219 (is-Lexer!7977 thiss!15247))))

(assert (=> start!523312 e!3102086))

(assert (=> start!523312 true))

(assert (=> start!523312 e!3102095))

(declare-fun inv!75031 (BalanceConc!29708) Bool)

(assert (=> start!523312 (and (inv!75031 input!1342) e!3102092)))

(declare-fun e!3102093 () Bool)

(assert (=> start!523312 (and (inv!75031 totalInput!464) e!3102093)))

(declare-fun b!4962709 () Bool)

(declare-fun e!3102088 () Bool)

(declare-fun e!3102100 () Bool)

(assert (=> b!4962709 (= e!3102088 e!3102100)))

(declare-fun res!2118224 () Bool)

(assert (=> b!4962709 (=> res!2118224 e!3102100)))

(declare-fun lt!2048904 () Bool)

(assert (=> b!4962709 (= res!2118224 lt!2048904)))

(declare-fun b!4962710 () Bool)

(assert (=> b!4962710 (= e!3102100 e!3102090)))

(declare-fun res!2118220 () Bool)

(assert (=> b!4962710 (=> (not res!2118220) (not e!3102090))))

(assert (=> b!4962710 (= res!2118220 (= (_1!34362 lt!2048909) (_1!34361 lt!2048903)))))

(declare-fun get!19925 (Option!14437) tuple2!62116)

(declare-fun maxPrefix!4656 (LexerInterface!7979 List!57549 List!57548) Option!14437)

(assert (=> b!4962710 (= lt!2048903 (get!19925 (maxPrefix!4656 thiss!15247 rulesArg!259 lt!2048901)))))

(declare-fun get!19926 (Option!14438) tuple2!62118)

(assert (=> b!4962710 (= lt!2048909 (get!19926 lt!2048902))))

(declare-fun b!4962711 () Bool)

(declare-fun e!3102091 () Bool)

(declare-fun e!3102097 () Bool)

(assert (=> b!4962711 (= e!3102091 e!3102097)))

(declare-fun res!2118227 () Bool)

(assert (=> b!4962711 (=> (not res!2118227) (not e!3102097))))

(declare-fun lt!2048907 () tuple2!62118)

(declare-fun lt!2048906 () tuple2!62116)

(assert (=> b!4962711 (= res!2118227 (= (_1!34362 lt!2048907) (_1!34361 lt!2048906)))))

(assert (=> b!4962711 (= lt!2048906 (get!19925 lt!2048905))))

(assert (=> b!4962711 (= lt!2048907 (get!19926 lt!2048902))))

(declare-fun b!4962712 () Bool)

(declare-fun tp!1392281 () Bool)

(assert (=> b!4962712 (= e!3102093 (and (inv!75030 (c!846705 totalInput!464)) tp!1392281))))

(assert (=> b!4962713 (= e!3102098 (and tp!1392279 tp!1392280))))

(declare-fun b!4962714 () Bool)

(declare-fun res!2118223 () Bool)

(assert (=> b!4962714 (=> (not res!2118223) (not e!3102086))))

(declare-fun rulesValidInductive!3290 (LexerInterface!7979 List!57549) Bool)

(assert (=> b!4962714 (= res!2118223 (rulesValidInductive!3290 thiss!15247 rulesArg!259))))

(declare-fun b!4962715 () Bool)

(assert (=> b!4962715 (= e!3102087 e!3102088)))

(declare-fun res!2118225 () Bool)

(assert (=> b!4962715 (=> (not res!2118225) (not e!3102088))))

(assert (=> b!4962715 (= res!2118225 e!3102091)))

(declare-fun res!2118221 () Bool)

(assert (=> b!4962715 (=> res!2118221 e!3102091)))

(assert (=> b!4962715 (= res!2118221 lt!2048904)))

(assert (=> b!4962715 (= lt!2048904 (not lt!2048910))))

(declare-fun b!4962716 () Bool)

(assert (=> b!4962716 (= e!3102097 (= (list!18349 (_2!34362 lt!2048907)) (_2!34361 lt!2048906)))))

(assert (= (and start!523312 res!2118219) b!4962714))

(assert (= (and b!4962714 res!2118223) b!4962706))

(assert (= (and b!4962706 res!2118226) b!4962703))

(assert (= (and b!4962703 res!2118228) b!4962702))

(assert (= (and b!4962702 (not res!2118222)) b!4962704))

(assert (= (and b!4962704 res!2118229) b!4962715))

(assert (= (and b!4962715 (not res!2118221)) b!4962711))

(assert (= (and b!4962711 res!2118227) b!4962716))

(assert (= (and b!4962715 res!2118225) b!4962709))

(assert (= (and b!4962709 (not res!2118224)) b!4962710))

(assert (= (and b!4962710 res!2118220) b!4962707))

(assert (= b!4962701 b!4962713))

(assert (= b!4962708 b!4962701))

(assert (= (and start!523312 (is-Cons!57425 rulesArg!259)) b!4962708))

(assert (= start!523312 b!4962705))

(assert (= start!523312 b!4962712))

(declare-fun m!5987026 () Bool)

(assert (=> b!4962710 m!5987026))

(assert (=> b!4962710 m!5987026))

(declare-fun m!5987028 () Bool)

(assert (=> b!4962710 m!5987028))

(declare-fun m!5987030 () Bool)

(assert (=> b!4962710 m!5987030))

(declare-fun m!5987032 () Bool)

(assert (=> b!4962706 m!5987032))

(declare-fun m!5987034 () Bool)

(assert (=> b!4962714 m!5987034))

(declare-fun m!5987036 () Bool)

(assert (=> b!4962703 m!5987036))

(assert (=> b!4962703 m!5987036))

(declare-fun m!5987038 () Bool)

(assert (=> b!4962703 m!5987038))

(declare-fun m!5987040 () Bool)

(assert (=> b!4962703 m!5987040))

(declare-fun m!5987042 () Bool)

(assert (=> start!523312 m!5987042))

(declare-fun m!5987044 () Bool)

(assert (=> start!523312 m!5987044))

(declare-fun m!5987046 () Bool)

(assert (=> b!4962705 m!5987046))

(declare-fun m!5987048 () Bool)

(assert (=> b!4962711 m!5987048))

(assert (=> b!4962711 m!5987030))

(declare-fun m!5987050 () Bool)

(assert (=> b!4962704 m!5987050))

(declare-fun m!5987052 () Bool)

(assert (=> b!4962704 m!5987052))

(declare-fun m!5987054 () Bool)

(assert (=> b!4962704 m!5987054))

(declare-fun m!5987056 () Bool)

(assert (=> b!4962704 m!5987056))

(declare-fun m!5987058 () Bool)

(assert (=> b!4962702 m!5987058))

(declare-fun m!5987060 () Bool)

(assert (=> b!4962702 m!5987060))

(declare-fun m!5987062 () Bool)

(assert (=> b!4962707 m!5987062))

(declare-fun m!5987064 () Bool)

(assert (=> b!4962701 m!5987064))

(declare-fun m!5987066 () Bool)

(assert (=> b!4962701 m!5987066))

(declare-fun m!5987068 () Bool)

(assert (=> b!4962712 m!5987068))

(declare-fun m!5987070 () Bool)

(assert (=> b!4962716 m!5987070))

(push 1)

(assert (not b!4962701))

(assert (not b!4962705))

(assert (not b!4962703))

(assert b_and!347565)

(assert (not b!4962716))

(assert b_and!347563)

(assert (not b_next!133487))

(assert (not b!4962712))

(assert (not start!523312))

(assert (not b!4962707))

(assert (not b!4962710))

(assert (not b!4962702))

(assert (not b!4962704))

(assert (not b!4962714))

(assert (not b!4962706))

(assert (not b_next!133485))

(assert (not b!4962711))

(assert (not b!4962708))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347563)

(assert b_and!347565)

(assert (not b_next!133485))

(assert (not b_next!133487))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1596655 () Bool)

(assert (=> d!1596655 (= (get!19925 (maxPrefix!4656 thiss!15247 rulesArg!259 lt!2048901)) (v!50421 (maxPrefix!4656 thiss!15247 rulesArg!259 lt!2048901)))))

(assert (=> b!4962710 d!1596655))

(declare-fun call!346054 () Option!14437)

(declare-fun bm!346049 () Bool)

(declare-fun maxPrefixOneRule!3623 (LexerInterface!7979 Rule!16574 List!57548) Option!14437)

(assert (=> bm!346049 (= call!346054 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) lt!2048901))))

(declare-fun b!4962783 () Bool)

(declare-fun e!3102153 () Bool)

(declare-fun e!3102154 () Bool)

(assert (=> b!4962783 (= e!3102153 e!3102154)))

(declare-fun res!2118289 () Bool)

(assert (=> b!4962783 (=> (not res!2118289) (not e!3102154))))

(declare-fun lt!2048952 () Option!14437)

(assert (=> b!4962783 (= res!2118289 (isDefined!11350 lt!2048952))))

(declare-fun b!4962784 () Bool)

(declare-fun e!3102152 () Option!14437)

(declare-fun lt!2048953 () Option!14437)

(declare-fun lt!2048955 () Option!14437)

(assert (=> b!4962784 (= e!3102152 (ite (and (is-None!14436 lt!2048953) (is-None!14436 lt!2048955)) None!14436 (ite (is-None!14436 lt!2048955) lt!2048953 (ite (is-None!14436 lt!2048953) lt!2048955 (ite (>= (size!38046 (_1!34361 (v!50421 lt!2048953))) (size!38046 (_1!34361 (v!50421 lt!2048955)))) lt!2048953 lt!2048955)))))))

(assert (=> b!4962784 (= lt!2048953 call!346054)))

(assert (=> b!4962784 (= lt!2048955 (maxPrefix!4656 thiss!15247 (t!368139 rulesArg!259) lt!2048901))))

(declare-fun b!4962785 () Bool)

(assert (=> b!4962785 (= e!3102152 call!346054)))

(declare-fun b!4962786 () Bool)

(declare-fun res!2118291 () Bool)

(assert (=> b!4962786 (=> (not res!2118291) (not e!3102154))))

(declare-fun size!38048 (List!57548) Int)

(assert (=> b!4962786 (= res!2118291 (< (size!38048 (_2!34361 (get!19925 lt!2048952))) (size!38048 lt!2048901)))))

(declare-fun d!1596657 () Bool)

(assert (=> d!1596657 e!3102153))

(declare-fun res!2118290 () Bool)

(assert (=> d!1596657 (=> res!2118290 e!3102153)))

(declare-fun isEmpty!30905 (Option!14437) Bool)

(assert (=> d!1596657 (= res!2118290 (isEmpty!30905 lt!2048952))))

(assert (=> d!1596657 (= lt!2048952 e!3102152)))

(declare-fun c!846711 () Bool)

(assert (=> d!1596657 (= c!846711 (and (is-Cons!57425 rulesArg!259) (is-Nil!57425 (t!368139 rulesArg!259))))))

(declare-fun lt!2048951 () Unit!148314)

(declare-fun lt!2048954 () Unit!148314)

(assert (=> d!1596657 (= lt!2048951 lt!2048954)))

(assert (=> d!1596657 (isPrefix!5238 lt!2048901 lt!2048901)))

(assert (=> d!1596657 (= lt!2048954 (lemmaIsPrefixRefl!3562 lt!2048901 lt!2048901))))

(assert (=> d!1596657 (rulesValidInductive!3290 thiss!15247 rulesArg!259)))

(assert (=> d!1596657 (= (maxPrefix!4656 thiss!15247 rulesArg!259 lt!2048901) lt!2048952)))

(declare-fun b!4962787 () Bool)

(declare-fun contains!19534 (List!57549 Rule!16574) Bool)

(assert (=> b!4962787 (= e!3102154 (contains!19534 rulesArg!259 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))))

(declare-fun b!4962788 () Bool)

(declare-fun res!2118294 () Bool)

(assert (=> b!4962788 (=> (not res!2118294) (not e!3102154))))

(declare-fun ++!12528 (List!57548 List!57548) List!57548)

(declare-fun charsOf!5433 (Token!15270) BalanceConc!29708)

(assert (=> b!4962788 (= res!2118294 (= (++!12528 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952)))) (_2!34361 (get!19925 lt!2048952))) lt!2048901))))

(declare-fun b!4962789 () Bool)

(declare-fun res!2118292 () Bool)

(assert (=> b!4962789 (=> (not res!2118292) (not e!3102154))))

(assert (=> b!4962789 (= res!2118292 (= (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952)))) (originalCharacters!8666 (_1!34361 (get!19925 lt!2048952)))))))

(declare-fun b!4962790 () Bool)

(declare-fun res!2118293 () Bool)

(assert (=> b!4962790 (=> (not res!2118293) (not e!3102154))))

(declare-fun apply!13898 (TokenValueInjection!16702 BalanceConc!29708) TokenValue!8697)

(declare-fun seqFromList!6030 (List!57548) BalanceConc!29708)

(assert (=> b!4962790 (= res!2118293 (= (value!268471 (_1!34361 (get!19925 lt!2048952))) (apply!13898 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))) (seqFromList!6030 (originalCharacters!8666 (_1!34361 (get!19925 lt!2048952)))))))))

(declare-fun b!4962791 () Bool)

(declare-fun res!2118295 () Bool)

(assert (=> b!4962791 (=> (not res!2118295) (not e!3102154))))

(declare-fun matchR!6630 (Regex!13620 List!57548) Bool)

(assert (=> b!4962791 (= res!2118295 (matchR!6630 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))) (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))))))

(assert (= (and d!1596657 c!846711) b!4962785))

(assert (= (and d!1596657 (not c!846711)) b!4962784))

(assert (= (or b!4962785 b!4962784) bm!346049))

(assert (= (and d!1596657 (not res!2118290)) b!4962783))

(assert (= (and b!4962783 res!2118289) b!4962789))

(assert (= (and b!4962789 res!2118292) b!4962786))

(assert (= (and b!4962786 res!2118291) b!4962788))

(assert (= (and b!4962788 res!2118294) b!4962790))

(assert (= (and b!4962790 res!2118293) b!4962791))

(assert (= (and b!4962791 res!2118295) b!4962787))

(declare-fun m!5987118 () Bool)

(assert (=> d!1596657 m!5987118))

(assert (=> d!1596657 m!5987058))

(assert (=> d!1596657 m!5987060))

(assert (=> d!1596657 m!5987034))

(declare-fun m!5987120 () Bool)

(assert (=> b!4962783 m!5987120))

(declare-fun m!5987122 () Bool)

(assert (=> b!4962786 m!5987122))

(declare-fun m!5987124 () Bool)

(assert (=> b!4962786 m!5987124))

(declare-fun m!5987126 () Bool)

(assert (=> b!4962786 m!5987126))

(declare-fun m!5987128 () Bool)

(assert (=> bm!346049 m!5987128))

(assert (=> b!4962791 m!5987122))

(declare-fun m!5987130 () Bool)

(assert (=> b!4962791 m!5987130))

(assert (=> b!4962791 m!5987130))

(declare-fun m!5987132 () Bool)

(assert (=> b!4962791 m!5987132))

(assert (=> b!4962791 m!5987132))

(declare-fun m!5987134 () Bool)

(assert (=> b!4962791 m!5987134))

(assert (=> b!4962787 m!5987122))

(declare-fun m!5987136 () Bool)

(assert (=> b!4962787 m!5987136))

(assert (=> b!4962788 m!5987122))

(assert (=> b!4962788 m!5987130))

(assert (=> b!4962788 m!5987130))

(assert (=> b!4962788 m!5987132))

(assert (=> b!4962788 m!5987132))

(declare-fun m!5987138 () Bool)

(assert (=> b!4962788 m!5987138))

(assert (=> b!4962789 m!5987122))

(assert (=> b!4962789 m!5987130))

(assert (=> b!4962789 m!5987130))

(assert (=> b!4962789 m!5987132))

(assert (=> b!4962790 m!5987122))

(declare-fun m!5987140 () Bool)

(assert (=> b!4962790 m!5987140))

(assert (=> b!4962790 m!5987140))

(declare-fun m!5987142 () Bool)

(assert (=> b!4962790 m!5987142))

(declare-fun m!5987144 () Bool)

(assert (=> b!4962784 m!5987144))

(assert (=> b!4962710 d!1596657))

(declare-fun d!1596659 () Bool)

(assert (=> d!1596659 (= (get!19926 lt!2048902) (v!50422 lt!2048902))))

(assert (=> b!4962710 d!1596659))

(declare-fun d!1596661 () Bool)

(assert (=> d!1596661 (= (inv!75026 (tag!9251 (h!63873 rulesArg!259))) (= (mod (str.len (value!268470 (tag!9251 (h!63873 rulesArg!259)))) 2) 0))))

(assert (=> b!4962701 d!1596661))

(declare-fun d!1596663 () Bool)

(declare-fun res!2118298 () Bool)

(declare-fun e!3102157 () Bool)

(assert (=> d!1596663 (=> (not res!2118298) (not e!3102157))))

(declare-fun semiInverseModEq!3694 (Int Int) Bool)

(assert (=> d!1596663 (= res!2118298 (semiInverseModEq!3694 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))))))

(assert (=> d!1596663 (= (inv!75029 (transformation!8387 (h!63873 rulesArg!259))) e!3102157)))

(declare-fun b!4962794 () Bool)

(declare-fun equivClasses!3542 (Int Int) Bool)

(assert (=> b!4962794 (= e!3102157 (equivClasses!3542 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))))))

(assert (= (and d!1596663 res!2118298) b!4962794))

(declare-fun m!5987146 () Bool)

(assert (=> d!1596663 m!5987146))

(declare-fun m!5987148 () Bool)

(assert (=> b!4962794 m!5987148))

(assert (=> b!4962701 d!1596663))

(declare-fun d!1596665 () Bool)

(declare-fun isBalanced!4196 (Conc!15139) Bool)

(assert (=> d!1596665 (= (inv!75031 input!1342) (isBalanced!4196 (c!846705 input!1342)))))

(declare-fun bs!1182791 () Bool)

(assert (= bs!1182791 d!1596665))

(declare-fun m!5987150 () Bool)

(assert (=> bs!1182791 m!5987150))

(assert (=> start!523312 d!1596665))

(declare-fun d!1596667 () Bool)

(assert (=> d!1596667 (= (inv!75031 totalInput!464) (isBalanced!4196 (c!846705 totalInput!464)))))

(declare-fun bs!1182792 () Bool)

(assert (= bs!1182792 d!1596667))

(declare-fun m!5987152 () Bool)

(assert (=> bs!1182792 m!5987152))

(assert (=> start!523312 d!1596667))

(declare-fun d!1596669 () Bool)

(assert (=> d!1596669 (= (get!19925 lt!2048905) (v!50421 lt!2048905))))

(assert (=> b!4962711 d!1596669))

(assert (=> b!4962711 d!1596659))

(declare-fun d!1596671 () Bool)

(declare-fun list!18351 (Conc!15139) List!57548)

(assert (=> d!1596671 (= (list!18349 (_2!34362 lt!2048909)) (list!18351 (c!846705 (_2!34362 lt!2048909))))))

(declare-fun bs!1182793 () Bool)

(assert (= bs!1182793 d!1596671))

(declare-fun m!5987154 () Bool)

(assert (=> bs!1182793 m!5987154))

(assert (=> b!4962707 d!1596671))

(declare-fun d!1596673 () Bool)

(declare-fun c!846714 () Bool)

(assert (=> d!1596673 (= c!846714 (is-Node!15139 (c!846705 input!1342)))))

(declare-fun e!3102162 () Bool)

(assert (=> d!1596673 (= (inv!75030 (c!846705 input!1342)) e!3102162)))

(declare-fun b!4962801 () Bool)

(declare-fun inv!75035 (Conc!15139) Bool)

(assert (=> b!4962801 (= e!3102162 (inv!75035 (c!846705 input!1342)))))

(declare-fun b!4962802 () Bool)

(declare-fun e!3102163 () Bool)

(assert (=> b!4962802 (= e!3102162 e!3102163)))

(declare-fun res!2118301 () Bool)

(assert (=> b!4962802 (= res!2118301 (not (is-Leaf!25158 (c!846705 input!1342))))))

(assert (=> b!4962802 (=> res!2118301 e!3102163)))

(declare-fun b!4962803 () Bool)

(declare-fun inv!75036 (Conc!15139) Bool)

(assert (=> b!4962803 (= e!3102163 (inv!75036 (c!846705 input!1342)))))

(assert (= (and d!1596673 c!846714) b!4962801))

(assert (= (and d!1596673 (not c!846714)) b!4962802))

(assert (= (and b!4962802 (not res!2118301)) b!4962803))

(declare-fun m!5987156 () Bool)

(assert (=> b!4962801 m!5987156))

(declare-fun m!5987158 () Bool)

(assert (=> b!4962803 m!5987158))

(assert (=> b!4962705 d!1596673))

(declare-fun d!1596675 () Bool)

(assert (=> d!1596675 (= (isDefined!11350 lt!2048905) (not (isEmpty!30905 lt!2048905)))))

(declare-fun bs!1182794 () Bool)

(assert (= bs!1182794 d!1596675))

(declare-fun m!5987160 () Bool)

(assert (=> bs!1182794 m!5987160))

(assert (=> b!4962704 d!1596675))

(declare-fun d!1596677 () Bool)

(declare-fun isEmpty!30906 (Option!14438) Bool)

(assert (=> d!1596677 (= (isDefined!11351 lt!2048902) (not (isEmpty!30906 lt!2048902)))))

(declare-fun bs!1182795 () Bool)

(assert (= bs!1182795 d!1596677))

(declare-fun m!5987162 () Bool)

(assert (=> bs!1182795 m!5987162))

(assert (=> b!4962704 d!1596677))

(declare-fun lt!2048978 () Option!14437)

(declare-fun d!1596679 () Bool)

(assert (=> d!1596679 (= lt!2048978 (maxPrefix!4656 thiss!15247 rulesArg!259 lt!2048901))))

(declare-fun e!3102179 () Option!14437)

(assert (=> d!1596679 (= lt!2048978 e!3102179)))

(declare-fun c!846717 () Bool)

(assert (=> d!1596679 (= c!846717 (and (is-Cons!57425 rulesArg!259) (is-Nil!57425 (t!368139 rulesArg!259))))))

(declare-fun lt!2048975 () Unit!148314)

(declare-fun lt!2048976 () Unit!148314)

(assert (=> d!1596679 (= lt!2048975 lt!2048976)))

(assert (=> d!1596679 (isPrefix!5238 lt!2048901 lt!2048901)))

(assert (=> d!1596679 (= lt!2048976 (lemmaIsPrefixRefl!3562 lt!2048901 lt!2048901))))

(assert (=> d!1596679 (rulesValidInductive!3290 thiss!15247 rulesArg!259)))

(assert (=> d!1596679 (= (maxPrefixZipper!782 thiss!15247 rulesArg!259 lt!2048901) lt!2048978)))

(declare-fun bm!346052 () Bool)

(declare-fun call!346057 () Option!14437)

(declare-fun maxPrefixOneRuleZipper!292 (LexerInterface!7979 Rule!16574 List!57548) Option!14437)

(assert (=> bm!346052 (= call!346057 (maxPrefixOneRuleZipper!292 thiss!15247 (h!63873 rulesArg!259) lt!2048901))))

(declare-fun b!4962824 () Bool)

(assert (=> b!4962824 (= e!3102179 call!346057)))

(declare-fun b!4962825 () Bool)

(declare-fun lt!2048974 () Option!14437)

(declare-fun lt!2048977 () Option!14437)

(assert (=> b!4962825 (= e!3102179 (ite (and (is-None!14436 lt!2048974) (is-None!14436 lt!2048977)) None!14436 (ite (is-None!14436 lt!2048977) lt!2048974 (ite (is-None!14436 lt!2048974) lt!2048977 (ite (>= (size!38046 (_1!34361 (v!50421 lt!2048974))) (size!38046 (_1!34361 (v!50421 lt!2048977)))) lt!2048974 lt!2048977)))))))

(assert (=> b!4962825 (= lt!2048974 call!346057)))

(assert (=> b!4962825 (= lt!2048977 (maxPrefixZipper!782 thiss!15247 (t!368139 rulesArg!259) lt!2048901))))

(assert (= (and d!1596679 c!846717) b!4962824))

(assert (= (and d!1596679 (not c!846717)) b!4962825))

(assert (= (or b!4962824 b!4962825) bm!346052))

(assert (=> d!1596679 m!5987026))

(assert (=> d!1596679 m!5987058))

(assert (=> d!1596679 m!5987060))

(assert (=> d!1596679 m!5987034))

(declare-fun m!5987178 () Bool)

(assert (=> bm!346052 m!5987178))

(declare-fun m!5987180 () Bool)

(assert (=> b!4962825 m!5987180))

(assert (=> b!4962704 d!1596679))

(declare-fun b!4962855 () Bool)

(declare-fun e!3102202 () Bool)

(assert (=> b!4962855 (= e!3102202 true)))

(declare-fun b!4962854 () Bool)

(declare-fun e!3102201 () Bool)

(assert (=> b!4962854 (= e!3102201 e!3102202)))

(declare-fun b!4962842 () Bool)

(assert (=> b!4962842 e!3102201))

(assert (= b!4962854 b!4962855))

(assert (= b!4962842 b!4962854))

(declare-fun order!26159 () Int)

(declare-fun order!26161 () Int)

(declare-fun lambda!247254 () Int)

(declare-fun dynLambda!23121 (Int Int) Int)

(declare-fun dynLambda!23122 (Int Int) Int)

(assert (=> b!4962855 (< (dynLambda!23121 order!26159 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) (dynLambda!23122 order!26161 lambda!247254))))

(declare-fun order!26163 () Int)

(declare-fun dynLambda!23123 (Int Int) Int)

(assert (=> b!4962855 (< (dynLambda!23123 order!26163 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) (dynLambda!23122 order!26161 lambda!247254))))

(declare-fun e!3102195 () Option!14438)

(declare-datatypes ((tuple2!62124 0))(
  ( (tuple2!62125 (_1!34365 BalanceConc!29708) (_2!34365 BalanceConc!29708)) )
))
(declare-fun lt!2049008 () tuple2!62124)

(declare-fun size!38049 (BalanceConc!29708) Int)

(assert (=> b!4962842 (= e!3102195 (Some!14437 (tuple2!62119 (Token!15271 (apply!13898 (transformation!8387 (h!63873 rulesArg!259)) (_1!34365 lt!2049008)) (h!63873 rulesArg!259) (size!38049 (_1!34365 lt!2049008)) (list!18349 (_1!34365 lt!2049008))) (_2!34365 lt!2049008))))))

(declare-fun lt!2049009 () List!57548)

(assert (=> b!4962842 (= lt!2049009 (list!18349 input!1342))))

(declare-fun lt!2049004 () Unit!148314)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1810 (Regex!13620 List!57548) Unit!148314)

(assert (=> b!4962842 (= lt!2049004 (longestMatchIsAcceptedByMatchOrIsEmpty!1810 (regex!8387 (h!63873 rulesArg!259)) lt!2049009))))

(declare-fun res!2118331 () Bool)

(declare-fun isEmpty!30907 (List!57548) Bool)

(declare-datatypes ((tuple2!62126 0))(
  ( (tuple2!62127 (_1!34366 List!57548) (_2!34366 List!57548)) )
))
(declare-fun findLongestMatchInner!1849 (Regex!13620 List!57548 Int List!57548 List!57548 Int) tuple2!62126)

(assert (=> b!4962842 (= res!2118331 (isEmpty!30907 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))))))

(declare-fun e!3102196 () Bool)

(assert (=> b!4962842 (=> res!2118331 e!3102196)))

(assert (=> b!4962842 e!3102196))

(declare-fun lt!2049005 () Unit!148314)

(assert (=> b!4962842 (= lt!2049005 lt!2049004)))

(declare-fun lt!2049001 () Unit!148314)

(declare-fun lemmaInv!1328 (TokenValueInjection!16702) Unit!148314)

(assert (=> b!4962842 (= lt!2049001 (lemmaInv!1328 (transformation!8387 (h!63873 rulesArg!259))))))

(declare-fun lt!2049007 () Unit!148314)

(declare-fun ForallOf!1221 (Int BalanceConc!29708) Unit!148314)

(assert (=> b!4962842 (= lt!2049007 (ForallOf!1221 lambda!247254 (_1!34365 lt!2049008)))))

(declare-fun lt!2049000 () Unit!148314)

(assert (=> b!4962842 (= lt!2049000 (ForallOf!1221 lambda!247254 (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))))))

(declare-fun lt!2049006 () Option!14438)

(assert (=> b!4962842 (= lt!2049006 (Some!14437 (tuple2!62119 (Token!15271 (apply!13898 (transformation!8387 (h!63873 rulesArg!259)) (_1!34365 lt!2049008)) (h!63873 rulesArg!259) (size!38049 (_1!34365 lt!2049008)) (list!18349 (_1!34365 lt!2049008))) (_2!34365 lt!2049008))))))

(declare-fun lt!2049003 () Unit!148314)

(declare-fun lemmaEqSameImage!1162 (TokenValueInjection!16702 BalanceConc!29708 BalanceConc!29708) Unit!148314)

(assert (=> b!4962842 (= lt!2049003 (lemmaEqSameImage!1162 (transformation!8387 (h!63873 rulesArg!259)) (_1!34365 lt!2049008) (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))))))

(declare-fun b!4962843 () Bool)

(assert (=> b!4962843 (= e!3102196 (matchR!6630 (regex!8387 (h!63873 rulesArg!259)) (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))))))

(declare-fun d!1596693 () Bool)

(declare-fun e!3102193 () Bool)

(assert (=> d!1596693 e!3102193))

(declare-fun res!2118330 () Bool)

(assert (=> d!1596693 (=> (not res!2118330) (not e!3102193))))

(declare-fun lt!2049002 () Option!14438)

(assert (=> d!1596693 (= res!2118330 (= (isDefined!11351 lt!2049002) (isDefined!11350 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) (list!18349 input!1342)))))))

(assert (=> d!1596693 (= lt!2049002 e!3102195)))

(declare-fun c!846720 () Bool)

(declare-fun isEmpty!30908 (BalanceConc!29708) Bool)

(assert (=> d!1596693 (= c!846720 (isEmpty!30908 (_1!34365 lt!2049008)))))

(declare-fun findLongestMatchWithZipperSequenceV2!158 (Regex!13620 BalanceConc!29708 BalanceConc!29708) tuple2!62124)

(assert (=> d!1596693 (= lt!2049008 (findLongestMatchWithZipperSequenceV2!158 (regex!8387 (h!63873 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun ruleValid!3796 (LexerInterface!7979 Rule!16574) Bool)

(assert (=> d!1596693 (ruleValid!3796 thiss!15247 (h!63873 rulesArg!259))))

(assert (=> d!1596693 (= (maxPrefixOneRuleZipperSequenceV2!355 thiss!15247 (h!63873 rulesArg!259) input!1342 totalInput!464) lt!2049002)))

(declare-fun b!4962844 () Bool)

(assert (=> b!4962844 (= e!3102195 None!14437)))

(declare-fun b!4962845 () Bool)

(declare-fun e!3102192 () Bool)

(declare-fun e!3102194 () Bool)

(assert (=> b!4962845 (= e!3102192 e!3102194)))

(declare-fun res!2118328 () Bool)

(assert (=> b!4962845 (=> (not res!2118328) (not e!3102194))))

(assert (=> b!4962845 (= res!2118328 (= (_1!34362 (get!19926 lt!2049002)) (_1!34361 (get!19925 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) (list!18349 input!1342))))))))

(declare-fun b!4962846 () Bool)

(assert (=> b!4962846 (= e!3102194 (= (list!18349 (_2!34362 (get!19926 lt!2049002))) (_2!34361 (get!19925 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) (list!18349 input!1342))))))))

(declare-fun b!4962847 () Bool)

(assert (=> b!4962847 (= e!3102193 e!3102192)))

(declare-fun res!2118329 () Bool)

(assert (=> b!4962847 (=> res!2118329 e!3102192)))

(assert (=> b!4962847 (= res!2118329 (not (isDefined!11351 lt!2049002)))))

(assert (= (and d!1596693 c!846720) b!4962844))

(assert (= (and d!1596693 (not c!846720)) b!4962842))

(assert (= (and b!4962842 (not res!2118331)) b!4962843))

(assert (= (and d!1596693 res!2118330) b!4962847))

(assert (= (and b!4962847 (not res!2118329)) b!4962845))

(assert (= (and b!4962845 res!2118328) b!4962846))

(assert (=> d!1596693 m!5987040))

(declare-fun m!5987188 () Bool)

(assert (=> d!1596693 m!5987188))

(assert (=> d!1596693 m!5987040))

(declare-fun m!5987190 () Bool)

(assert (=> d!1596693 m!5987190))

(declare-fun m!5987192 () Bool)

(assert (=> d!1596693 m!5987192))

(assert (=> d!1596693 m!5987188))

(declare-fun m!5987194 () Bool)

(assert (=> d!1596693 m!5987194))

(declare-fun m!5987196 () Bool)

(assert (=> d!1596693 m!5987196))

(declare-fun m!5987198 () Bool)

(assert (=> d!1596693 m!5987198))

(declare-fun m!5987200 () Bool)

(assert (=> b!4962845 m!5987200))

(assert (=> b!4962845 m!5987040))

(assert (=> b!4962845 m!5987040))

(assert (=> b!4962845 m!5987188))

(assert (=> b!4962845 m!5987188))

(declare-fun m!5987202 () Bool)

(assert (=> b!4962845 m!5987202))

(declare-fun m!5987204 () Bool)

(assert (=> b!4962842 m!5987204))

(declare-fun m!5987206 () Bool)

(assert (=> b!4962842 m!5987206))

(assert (=> b!4962842 m!5987040))

(declare-fun m!5987208 () Bool)

(assert (=> b!4962842 m!5987208))

(assert (=> b!4962842 m!5987204))

(declare-fun m!5987210 () Bool)

(assert (=> b!4962842 m!5987210))

(declare-fun m!5987212 () Bool)

(assert (=> b!4962842 m!5987212))

(assert (=> b!4962842 m!5987210))

(declare-fun m!5987214 () Bool)

(assert (=> b!4962842 m!5987214))

(assert (=> b!4962842 m!5987208))

(declare-fun m!5987216 () Bool)

(assert (=> b!4962842 m!5987216))

(declare-fun m!5987218 () Bool)

(assert (=> b!4962842 m!5987218))

(assert (=> b!4962842 m!5987210))

(declare-fun m!5987220 () Bool)

(assert (=> b!4962842 m!5987220))

(declare-fun m!5987222 () Bool)

(assert (=> b!4962842 m!5987222))

(assert (=> b!4962842 m!5987216))

(declare-fun m!5987224 () Bool)

(assert (=> b!4962842 m!5987224))

(declare-fun m!5987226 () Bool)

(assert (=> b!4962842 m!5987226))

(declare-fun m!5987228 () Bool)

(assert (=> b!4962842 m!5987228))

(assert (=> b!4962843 m!5987208))

(assert (=> b!4962843 m!5987216))

(assert (=> b!4962843 m!5987208))

(assert (=> b!4962843 m!5987216))

(assert (=> b!4962843 m!5987218))

(declare-fun m!5987230 () Bool)

(assert (=> b!4962843 m!5987230))

(assert (=> b!4962846 m!5987040))

(assert (=> b!4962846 m!5987188))

(assert (=> b!4962846 m!5987202))

(assert (=> b!4962846 m!5987200))

(declare-fun m!5987232 () Bool)

(assert (=> b!4962846 m!5987232))

(assert (=> b!4962846 m!5987040))

(assert (=> b!4962846 m!5987188))

(assert (=> b!4962847 m!5987196))

(assert (=> b!4962704 d!1596693))

(declare-fun d!1596699 () Bool)

(assert (=> d!1596699 (= (isEmpty!30903 rulesArg!259) (is-Nil!57425 rulesArg!259))))

(assert (=> b!4962706 d!1596699))

(declare-fun d!1596701 () Bool)

(assert (=> d!1596701 (= (list!18349 (_2!34362 lt!2048907)) (list!18351 (c!846705 (_2!34362 lt!2048907))))))

(declare-fun bs!1182799 () Bool)

(assert (= bs!1182799 d!1596701))

(declare-fun m!5987234 () Bool)

(assert (=> bs!1182799 m!5987234))

(assert (=> b!4962716 d!1596701))

(declare-fun b!4962866 () Bool)

(declare-fun e!3102211 () Bool)

(declare-fun tail!9795 (List!57548) List!57548)

(assert (=> b!4962866 (= e!3102211 (isPrefix!5238 (tail!9795 lt!2048901) (tail!9795 lt!2048901)))))

(declare-fun b!4962865 () Bool)

(declare-fun res!2118342 () Bool)

(assert (=> b!4962865 (=> (not res!2118342) (not e!3102211))))

(declare-fun head!10662 (List!57548) C!27490)

(assert (=> b!4962865 (= res!2118342 (= (head!10662 lt!2048901) (head!10662 lt!2048901)))))

(declare-fun b!4962867 () Bool)

(declare-fun e!3102209 () Bool)

(assert (=> b!4962867 (= e!3102209 (>= (size!38048 lt!2048901) (size!38048 lt!2048901)))))

(declare-fun d!1596703 () Bool)

(assert (=> d!1596703 e!3102209))

(declare-fun res!2118343 () Bool)

(assert (=> d!1596703 (=> res!2118343 e!3102209)))

(declare-fun lt!2049012 () Bool)

(assert (=> d!1596703 (= res!2118343 (not lt!2049012))))

(declare-fun e!3102210 () Bool)

(assert (=> d!1596703 (= lt!2049012 e!3102210)))

(declare-fun res!2118340 () Bool)

(assert (=> d!1596703 (=> res!2118340 e!3102210)))

(assert (=> d!1596703 (= res!2118340 (is-Nil!57424 lt!2048901))))

(assert (=> d!1596703 (= (isPrefix!5238 lt!2048901 lt!2048901) lt!2049012)))

(declare-fun b!4962864 () Bool)

(assert (=> b!4962864 (= e!3102210 e!3102211)))

(declare-fun res!2118341 () Bool)

(assert (=> b!4962864 (=> (not res!2118341) (not e!3102211))))

(assert (=> b!4962864 (= res!2118341 (not (is-Nil!57424 lt!2048901)))))

(assert (= (and d!1596703 (not res!2118340)) b!4962864))

(assert (= (and b!4962864 res!2118341) b!4962865))

(assert (= (and b!4962865 res!2118342) b!4962866))

(assert (= (and d!1596703 (not res!2118343)) b!4962867))

(declare-fun m!5987236 () Bool)

(assert (=> b!4962866 m!5987236))

(assert (=> b!4962866 m!5987236))

(assert (=> b!4962866 m!5987236))

(assert (=> b!4962866 m!5987236))

(declare-fun m!5987238 () Bool)

(assert (=> b!4962866 m!5987238))

(declare-fun m!5987240 () Bool)

(assert (=> b!4962865 m!5987240))

(assert (=> b!4962865 m!5987240))

(assert (=> b!4962867 m!5987126))

(assert (=> b!4962867 m!5987126))

(assert (=> b!4962702 d!1596703))

(declare-fun d!1596705 () Bool)

(assert (=> d!1596705 (isPrefix!5238 lt!2048901 lt!2048901)))

(declare-fun lt!2049015 () Unit!148314)

(declare-fun choose!36642 (List!57548 List!57548) Unit!148314)

(assert (=> d!1596705 (= lt!2049015 (choose!36642 lt!2048901 lt!2048901))))

(assert (=> d!1596705 (= (lemmaIsPrefixRefl!3562 lt!2048901 lt!2048901) lt!2049015)))

(declare-fun bs!1182800 () Bool)

(assert (= bs!1182800 d!1596705))

(assert (=> bs!1182800 m!5987058))

(declare-fun m!5987242 () Bool)

(assert (=> bs!1182800 m!5987242))

(assert (=> b!4962702 d!1596705))

(declare-fun d!1596707 () Bool)

(declare-fun c!846721 () Bool)

(assert (=> d!1596707 (= c!846721 (is-Node!15139 (c!846705 totalInput!464)))))

(declare-fun e!3102212 () Bool)

(assert (=> d!1596707 (= (inv!75030 (c!846705 totalInput!464)) e!3102212)))

(declare-fun b!4962868 () Bool)

(assert (=> b!4962868 (= e!3102212 (inv!75035 (c!846705 totalInput!464)))))

(declare-fun b!4962869 () Bool)

(declare-fun e!3102213 () Bool)

(assert (=> b!4962869 (= e!3102212 e!3102213)))

(declare-fun res!2118344 () Bool)

(assert (=> b!4962869 (= res!2118344 (not (is-Leaf!25158 (c!846705 totalInput!464))))))

(assert (=> b!4962869 (=> res!2118344 e!3102213)))

(declare-fun b!4962870 () Bool)

(assert (=> b!4962870 (= e!3102213 (inv!75036 (c!846705 totalInput!464)))))

(assert (= (and d!1596707 c!846721) b!4962868))

(assert (= (and d!1596707 (not c!846721)) b!4962869))

(assert (= (and b!4962869 (not res!2118344)) b!4962870))

(declare-fun m!5987244 () Bool)

(assert (=> b!4962868 m!5987244))

(declare-fun m!5987246 () Bool)

(assert (=> b!4962870 m!5987246))

(assert (=> b!4962712 d!1596707))

(declare-fun d!1596709 () Bool)

(assert (=> d!1596709 true))

(declare-fun lt!2049018 () Bool)

(declare-fun lambda!247257 () Int)

(declare-fun forall!13322 (List!57549 Int) Bool)

(assert (=> d!1596709 (= lt!2049018 (forall!13322 rulesArg!259 lambda!247257))))

(declare-fun e!3102219 () Bool)

(assert (=> d!1596709 (= lt!2049018 e!3102219)))

(declare-fun res!2118350 () Bool)

(assert (=> d!1596709 (=> res!2118350 e!3102219)))

(assert (=> d!1596709 (= res!2118350 (not (is-Cons!57425 rulesArg!259)))))

(assert (=> d!1596709 (= (rulesValidInductive!3290 thiss!15247 rulesArg!259) lt!2049018)))

(declare-fun b!4962875 () Bool)

(declare-fun e!3102218 () Bool)

(assert (=> b!4962875 (= e!3102219 e!3102218)))

(declare-fun res!2118349 () Bool)

(assert (=> b!4962875 (=> (not res!2118349) (not e!3102218))))

(assert (=> b!4962875 (= res!2118349 (ruleValid!3796 thiss!15247 (h!63873 rulesArg!259)))))

(declare-fun b!4962876 () Bool)

(assert (=> b!4962876 (= e!3102218 (rulesValidInductive!3290 thiss!15247 (t!368139 rulesArg!259)))))

(assert (= (and d!1596709 (not res!2118350)) b!4962875))

(assert (= (and b!4962875 res!2118349) b!4962876))

(declare-fun m!5987248 () Bool)

(assert (=> d!1596709 m!5987248))

(assert (=> b!4962875 m!5987198))

(declare-fun m!5987250 () Bool)

(assert (=> b!4962876 m!5987250))

(assert (=> b!4962714 d!1596709))

(declare-fun d!1596711 () Bool)

(declare-fun e!3102224 () Bool)

(assert (=> d!1596711 e!3102224))

(declare-fun res!2118353 () Bool)

(assert (=> d!1596711 (=> res!2118353 e!3102224)))

(declare-fun lt!2049031 () Bool)

(assert (=> d!1596711 (= res!2118353 (not lt!2049031))))

(declare-fun drop!2343 (List!57548 Int) List!57548)

(assert (=> d!1596711 (= lt!2049031 (= lt!2048901 (drop!2343 (list!18349 totalInput!464) (- (size!38048 (list!18349 totalInput!464)) (size!38048 lt!2048901)))))))

(assert (=> d!1596711 (= (isSuffix!1186 lt!2048901 (list!18349 totalInput!464)) lt!2049031)))

(declare-fun b!4962885 () Bool)

(assert (=> b!4962885 (= e!3102224 (>= (size!38048 (list!18349 totalInput!464)) (size!38048 lt!2048901)))))

(assert (= (and d!1596711 (not res!2118353)) b!4962885))

(assert (=> d!1596711 m!5987036))

(declare-fun m!5987252 () Bool)

(assert (=> d!1596711 m!5987252))

(assert (=> d!1596711 m!5987126))

(assert (=> d!1596711 m!5987036))

(declare-fun m!5987254 () Bool)

(assert (=> d!1596711 m!5987254))

(assert (=> b!4962885 m!5987036))

(assert (=> b!4962885 m!5987252))

(assert (=> b!4962885 m!5987126))

(assert (=> b!4962703 d!1596711))

(declare-fun d!1596713 () Bool)

(assert (=> d!1596713 (= (list!18349 totalInput!464) (list!18351 (c!846705 totalInput!464)))))

(declare-fun bs!1182801 () Bool)

(assert (= bs!1182801 d!1596713))

(declare-fun m!5987256 () Bool)

(assert (=> bs!1182801 m!5987256))

(assert (=> b!4962703 d!1596713))

(declare-fun d!1596715 () Bool)

(assert (=> d!1596715 (= (list!18349 input!1342) (list!18351 (c!846705 input!1342)))))

(declare-fun bs!1182802 () Bool)

(assert (= bs!1182802 d!1596715))

(declare-fun m!5987258 () Bool)

(assert (=> bs!1182802 m!5987258))

(assert (=> b!4962703 d!1596715))

(declare-fun b!4962908 () Bool)

(declare-fun tp!1392311 () Bool)

(declare-fun tp!1392310 () Bool)

(declare-fun e!3102233 () Bool)

(assert (=> b!4962908 (= e!3102233 (and (inv!75030 (left!41879 (c!846705 input!1342))) tp!1392311 (inv!75030 (right!42209 (c!846705 input!1342))) tp!1392310))))

(declare-fun b!4962910 () Bool)

(declare-fun e!3102234 () Bool)

(declare-fun tp!1392309 () Bool)

(assert (=> b!4962910 (= e!3102234 tp!1392309)))

(declare-fun b!4962909 () Bool)

(declare-fun inv!75037 (IArray!30339) Bool)

(assert (=> b!4962909 (= e!3102233 (and (inv!75037 (xs!18465 (c!846705 input!1342))) e!3102234))))

(assert (=> b!4962705 (= tp!1392282 (and (inv!75030 (c!846705 input!1342)) e!3102233))))

(assert (= (and b!4962705 (is-Node!15139 (c!846705 input!1342))) b!4962908))

(assert (= b!4962909 b!4962910))

(assert (= (and b!4962705 (is-Leaf!25158 (c!846705 input!1342))) b!4962909))

(declare-fun m!5987260 () Bool)

(assert (=> b!4962908 m!5987260))

(declare-fun m!5987262 () Bool)

(assert (=> b!4962908 m!5987262))

(declare-fun m!5987264 () Bool)

(assert (=> b!4962909 m!5987264))

(assert (=> b!4962705 m!5987046))

(declare-fun b!4962921 () Bool)

(declare-fun e!3102237 () Bool)

(declare-fun tp_is_empty!36321 () Bool)

(assert (=> b!4962921 (= e!3102237 tp_is_empty!36321)))

(assert (=> b!4962701 (= tp!1392283 e!3102237)))

(declare-fun b!4962923 () Bool)

(declare-fun tp!1392323 () Bool)

(assert (=> b!4962923 (= e!3102237 tp!1392323)))

(declare-fun b!4962922 () Bool)

(declare-fun tp!1392326 () Bool)

(declare-fun tp!1392324 () Bool)

(assert (=> b!4962922 (= e!3102237 (and tp!1392326 tp!1392324))))

(declare-fun b!4962924 () Bool)

(declare-fun tp!1392325 () Bool)

(declare-fun tp!1392322 () Bool)

(assert (=> b!4962924 (= e!3102237 (and tp!1392325 tp!1392322))))

(assert (= (and b!4962701 (is-ElementMatch!13620 (regex!8387 (h!63873 rulesArg!259)))) b!4962921))

(assert (= (and b!4962701 (is-Concat!22318 (regex!8387 (h!63873 rulesArg!259)))) b!4962922))

(assert (= (and b!4962701 (is-Star!13620 (regex!8387 (h!63873 rulesArg!259)))) b!4962923))

(assert (= (and b!4962701 (is-Union!13620 (regex!8387 (h!63873 rulesArg!259)))) b!4962924))

(declare-fun tp!1392328 () Bool)

(declare-fun e!3102238 () Bool)

(declare-fun tp!1392329 () Bool)

(declare-fun b!4962925 () Bool)

(assert (=> b!4962925 (= e!3102238 (and (inv!75030 (left!41879 (c!846705 totalInput!464))) tp!1392329 (inv!75030 (right!42209 (c!846705 totalInput!464))) tp!1392328))))

(declare-fun b!4962927 () Bool)

(declare-fun e!3102239 () Bool)

(declare-fun tp!1392327 () Bool)

(assert (=> b!4962927 (= e!3102239 tp!1392327)))

(declare-fun b!4962926 () Bool)

(assert (=> b!4962926 (= e!3102238 (and (inv!75037 (xs!18465 (c!846705 totalInput!464))) e!3102239))))

(assert (=> b!4962712 (= tp!1392281 (and (inv!75030 (c!846705 totalInput!464)) e!3102238))))

(assert (= (and b!4962712 (is-Node!15139 (c!846705 totalInput!464))) b!4962925))

(assert (= b!4962926 b!4962927))

(assert (= (and b!4962712 (is-Leaf!25158 (c!846705 totalInput!464))) b!4962926))

(declare-fun m!5987266 () Bool)

(assert (=> b!4962925 m!5987266))

(declare-fun m!5987268 () Bool)

(assert (=> b!4962925 m!5987268))

(declare-fun m!5987270 () Bool)

(assert (=> b!4962926 m!5987270))

(assert (=> b!4962712 m!5987068))

(declare-fun b!4962947 () Bool)

(declare-fun b_free!132703 () Bool)

(declare-fun b_next!133493 () Bool)

(assert (=> b!4962947 (= b_free!132703 (not b_next!133493))))

(declare-fun tp!1392340 () Bool)

(declare-fun b_and!347571 () Bool)

(assert (=> b!4962947 (= tp!1392340 b_and!347571)))

(declare-fun b_free!132705 () Bool)

(declare-fun b_next!133495 () Bool)

(assert (=> b!4962947 (= b_free!132705 (not b_next!133495))))

(declare-fun tp!1392338 () Bool)

(declare-fun b_and!347573 () Bool)

(assert (=> b!4962947 (= tp!1392338 b_and!347573)))

(declare-fun e!3102251 () Bool)

(assert (=> b!4962947 (= e!3102251 (and tp!1392340 tp!1392338))))

(declare-fun e!3102253 () Bool)

(declare-fun b!4962946 () Bool)

(declare-fun tp!1392339 () Bool)

(assert (=> b!4962946 (= e!3102253 (and tp!1392339 (inv!75026 (tag!9251 (h!63873 (t!368139 rulesArg!259)))) (inv!75029 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) e!3102251))))

(declare-fun b!4962945 () Bool)

(declare-fun e!3102252 () Bool)

(declare-fun tp!1392341 () Bool)

(assert (=> b!4962945 (= e!3102252 (and e!3102253 tp!1392341))))

(assert (=> b!4962708 (= tp!1392284 e!3102252)))

(assert (= b!4962946 b!4962947))

(assert (= b!4962945 b!4962946))

(assert (= (and b!4962708 (is-Cons!57425 (t!368139 rulesArg!259))) b!4962945))

(declare-fun m!5987272 () Bool)

(assert (=> b!4962946 m!5987272))

(declare-fun m!5987274 () Bool)

(assert (=> b!4962946 m!5987274))

(push 1)

(assert (not b!4962945))

(assert (not b!4962865))

(assert (not b!4962846))

(assert (not d!1596709))

(assert (not b!4962868))

(assert (not b!4962787))

(assert (not b!4962885))

(assert (not b!4962842))

(assert (not b_next!133495))

(assert b_and!347565)

(assert (not b!4962803))

(assert (not b!4962786))

(assert (not d!1596663))

(assert (not d!1596693))

(assert b_and!347563)

(assert (not b!4962794))

(assert (not b_next!133487))

(assert (not b!4962712))

(assert (not b!4962876))

(assert (not bm!346049))

(assert (not bm!346052))

(assert (not d!1596705))

(assert (not b!4962845))

(assert tp_is_empty!36321)

(assert (not b!4962801))

(assert (not b!4962908))

(assert (not d!1596677))

(assert b_and!347571)

(assert (not b!4962843))

(assert (not b!4962866))

(assert (not b!4962867))

(assert (not d!1596675))

(assert (not b!4962825))

(assert (not b!4962870))

(assert (not b!4962788))

(assert (not b!4962784))

(assert (not b!4962705))

(assert (not b_next!133493))

(assert (not d!1596679))

(assert (not d!1596671))

(assert (not b!4962922))

(assert (not d!1596657))

(assert (not b!4962946))

(assert (not d!1596713))

(assert (not b!4962924))

(assert (not b!4962927))

(assert (not b!4962923))

(assert (not b!4962847))

(assert (not d!1596701))

(assert (not b!4962875))

(assert (not d!1596715))

(assert (not b!4962910))

(assert (not d!1596667))

(assert (not b!4962926))

(assert (not b!4962783))

(assert (not b!4962925))

(assert (not b!4962790))

(assert (not d!1596711))

(assert (not b_next!133485))

(assert (not b!4962789))

(assert (not b!4962909))

(assert (not d!1596665))

(assert b_and!347573)

(assert (not b!4962791))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133495))

(assert b_and!347565)

(assert b_and!347571)

(assert (not b_next!133493))

(assert (not b_next!133485))

(assert b_and!347573)

(assert b_and!347563)

(assert (not b_next!133487))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4963046 () Bool)

(declare-fun e!3102320 () List!57548)

(declare-fun e!3102321 () List!57548)

(assert (=> b!4963046 (= e!3102320 e!3102321)))

(declare-fun c!846740 () Bool)

(assert (=> b!4963046 (= c!846740 (is-Leaf!25158 (c!846705 (_2!34362 lt!2048907))))))

(declare-fun b!4963048 () Bool)

(assert (=> b!4963048 (= e!3102321 (++!12528 (list!18351 (left!41879 (c!846705 (_2!34362 lt!2048907)))) (list!18351 (right!42209 (c!846705 (_2!34362 lt!2048907))))))))

(declare-fun d!1596747 () Bool)

(declare-fun c!846739 () Bool)

(assert (=> d!1596747 (= c!846739 (is-Empty!15139 (c!846705 (_2!34362 lt!2048907))))))

(assert (=> d!1596747 (= (list!18351 (c!846705 (_2!34362 lt!2048907))) e!3102320)))

(declare-fun b!4963047 () Bool)

(declare-fun list!18353 (IArray!30339) List!57548)

(assert (=> b!4963047 (= e!3102321 (list!18353 (xs!18465 (c!846705 (_2!34362 lt!2048907)))))))

(declare-fun b!4963045 () Bool)

(assert (=> b!4963045 (= e!3102320 Nil!57424)))

(assert (= (and d!1596747 c!846739) b!4963045))

(assert (= (and d!1596747 (not c!846739)) b!4963046))

(assert (= (and b!4963046 c!846740) b!4963047))

(assert (= (and b!4963046 (not c!846740)) b!4963048))

(declare-fun m!5987394 () Bool)

(assert (=> b!4963048 m!5987394))

(declare-fun m!5987396 () Bool)

(assert (=> b!4963048 m!5987396))

(assert (=> b!4963048 m!5987394))

(assert (=> b!4963048 m!5987396))

(declare-fun m!5987398 () Bool)

(assert (=> b!4963048 m!5987398))

(declare-fun m!5987400 () Bool)

(assert (=> b!4963047 m!5987400))

(assert (=> d!1596701 d!1596747))

(declare-fun d!1596749 () Bool)

(assert (=> d!1596749 (= (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952)))) (list!18351 (c!846705 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))))))

(declare-fun bs!1182809 () Bool)

(assert (= bs!1182809 d!1596749))

(declare-fun m!5987402 () Bool)

(assert (=> bs!1182809 m!5987402))

(assert (=> b!4962789 d!1596749))

(declare-fun d!1596751 () Bool)

(declare-fun lt!2049087 () BalanceConc!29708)

(assert (=> d!1596751 (= (list!18349 lt!2049087) (originalCharacters!8666 (_1!34361 (get!19925 lt!2048952))))))

(declare-fun dynLambda!23127 (Int TokenValue!8697) BalanceConc!29708)

(assert (=> d!1596751 (= lt!2049087 (dynLambda!23127 (toChars!11197 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))) (value!268471 (_1!34361 (get!19925 lt!2048952)))))))

(assert (=> d!1596751 (= (charsOf!5433 (_1!34361 (get!19925 lt!2048952))) lt!2049087)))

(declare-fun b_lambda!196461 () Bool)

(assert (=> (not b_lambda!196461) (not d!1596751)))

(declare-fun tb!260155 () Bool)

(declare-fun t!368145 () Bool)

(assert (=> (and b!4962713 (= (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toChars!11197 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))) t!368145) tb!260155))

(declare-fun b!4963053 () Bool)

(declare-fun e!3102324 () Bool)

(declare-fun tp!1392383 () Bool)

(assert (=> b!4963053 (= e!3102324 (and (inv!75030 (c!846705 (dynLambda!23127 (toChars!11197 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))) (value!268471 (_1!34361 (get!19925 lt!2048952)))))) tp!1392383))))

(declare-fun result!325202 () Bool)

(assert (=> tb!260155 (= result!325202 (and (inv!75031 (dynLambda!23127 (toChars!11197 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))) (value!268471 (_1!34361 (get!19925 lt!2048952))))) e!3102324))))

(assert (= tb!260155 b!4963053))

(declare-fun m!5987404 () Bool)

(assert (=> b!4963053 m!5987404))

(declare-fun m!5987406 () Bool)

(assert (=> tb!260155 m!5987406))

(assert (=> d!1596751 t!368145))

(declare-fun b_and!347579 () Bool)

(assert (= b_and!347565 (and (=> t!368145 result!325202) b_and!347579)))

(declare-fun tb!260157 () Bool)

(declare-fun t!368147 () Bool)

(assert (=> (and b!4962947 (= (toChars!11197 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toChars!11197 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))) t!368147) tb!260157))

(declare-fun result!325206 () Bool)

(assert (= result!325206 result!325202))

(assert (=> d!1596751 t!368147))

(declare-fun b_and!347581 () Bool)

(assert (= b_and!347573 (and (=> t!368147 result!325206) b_and!347581)))

(declare-fun m!5987408 () Bool)

(assert (=> d!1596751 m!5987408))

(declare-fun m!5987410 () Bool)

(assert (=> d!1596751 m!5987410))

(assert (=> b!4962789 d!1596751))

(declare-fun d!1596753 () Bool)

(assert (=> d!1596753 (= (get!19925 lt!2048952) (v!50421 lt!2048952))))

(assert (=> b!4962789 d!1596753))

(declare-fun b!4963056 () Bool)

(declare-fun e!3102327 () Bool)

(assert (=> b!4963056 (= e!3102327 (isPrefix!5238 (tail!9795 (tail!9795 lt!2048901)) (tail!9795 (tail!9795 lt!2048901))))))

(declare-fun b!4963055 () Bool)

(declare-fun res!2118402 () Bool)

(assert (=> b!4963055 (=> (not res!2118402) (not e!3102327))))

(assert (=> b!4963055 (= res!2118402 (= (head!10662 (tail!9795 lt!2048901)) (head!10662 (tail!9795 lt!2048901))))))

(declare-fun b!4963057 () Bool)

(declare-fun e!3102325 () Bool)

(assert (=> b!4963057 (= e!3102325 (>= (size!38048 (tail!9795 lt!2048901)) (size!38048 (tail!9795 lt!2048901))))))

(declare-fun d!1596755 () Bool)

(assert (=> d!1596755 e!3102325))

(declare-fun res!2118403 () Bool)

(assert (=> d!1596755 (=> res!2118403 e!3102325)))

(declare-fun lt!2049088 () Bool)

(assert (=> d!1596755 (= res!2118403 (not lt!2049088))))

(declare-fun e!3102326 () Bool)

(assert (=> d!1596755 (= lt!2049088 e!3102326)))

(declare-fun res!2118400 () Bool)

(assert (=> d!1596755 (=> res!2118400 e!3102326)))

(assert (=> d!1596755 (= res!2118400 (is-Nil!57424 (tail!9795 lt!2048901)))))

(assert (=> d!1596755 (= (isPrefix!5238 (tail!9795 lt!2048901) (tail!9795 lt!2048901)) lt!2049088)))

(declare-fun b!4963054 () Bool)

(assert (=> b!4963054 (= e!3102326 e!3102327)))

(declare-fun res!2118401 () Bool)

(assert (=> b!4963054 (=> (not res!2118401) (not e!3102327))))

(assert (=> b!4963054 (= res!2118401 (not (is-Nil!57424 (tail!9795 lt!2048901))))))

(assert (= (and d!1596755 (not res!2118400)) b!4963054))

(assert (= (and b!4963054 res!2118401) b!4963055))

(assert (= (and b!4963055 res!2118402) b!4963056))

(assert (= (and d!1596755 (not res!2118403)) b!4963057))

(assert (=> b!4963056 m!5987236))

(declare-fun m!5987412 () Bool)

(assert (=> b!4963056 m!5987412))

(assert (=> b!4963056 m!5987236))

(assert (=> b!4963056 m!5987412))

(assert (=> b!4963056 m!5987412))

(assert (=> b!4963056 m!5987412))

(declare-fun m!5987414 () Bool)

(assert (=> b!4963056 m!5987414))

(assert (=> b!4963055 m!5987236))

(declare-fun m!5987416 () Bool)

(assert (=> b!4963055 m!5987416))

(assert (=> b!4963055 m!5987236))

(assert (=> b!4963055 m!5987416))

(assert (=> b!4963057 m!5987236))

(declare-fun m!5987418 () Bool)

(assert (=> b!4963057 m!5987418))

(assert (=> b!4963057 m!5987236))

(assert (=> b!4963057 m!5987418))

(assert (=> b!4962866 d!1596755))

(declare-fun d!1596757 () Bool)

(assert (=> d!1596757 (= (tail!9795 lt!2048901) (t!368138 lt!2048901))))

(assert (=> b!4962866 d!1596757))

(declare-fun lt!2049093 () Option!14437)

(declare-fun d!1596759 () Bool)

(assert (=> d!1596759 (= lt!2049093 (maxPrefix!4656 thiss!15247 (t!368139 rulesArg!259) lt!2048901))))

(declare-fun e!3102328 () Option!14437)

(assert (=> d!1596759 (= lt!2049093 e!3102328)))

(declare-fun c!846741 () Bool)

(assert (=> d!1596759 (= c!846741 (and (is-Cons!57425 (t!368139 rulesArg!259)) (is-Nil!57425 (t!368139 (t!368139 rulesArg!259)))))))

(declare-fun lt!2049090 () Unit!148314)

(declare-fun lt!2049091 () Unit!148314)

(assert (=> d!1596759 (= lt!2049090 lt!2049091)))

(assert (=> d!1596759 (isPrefix!5238 lt!2048901 lt!2048901)))

(assert (=> d!1596759 (= lt!2049091 (lemmaIsPrefixRefl!3562 lt!2048901 lt!2048901))))

(assert (=> d!1596759 (rulesValidInductive!3290 thiss!15247 (t!368139 rulesArg!259))))

(assert (=> d!1596759 (= (maxPrefixZipper!782 thiss!15247 (t!368139 rulesArg!259) lt!2048901) lt!2049093)))

(declare-fun bm!346059 () Bool)

(declare-fun call!346064 () Option!14437)

(assert (=> bm!346059 (= call!346064 (maxPrefixOneRuleZipper!292 thiss!15247 (h!63873 (t!368139 rulesArg!259)) lt!2048901))))

(declare-fun b!4963058 () Bool)

(assert (=> b!4963058 (= e!3102328 call!346064)))

(declare-fun b!4963059 () Bool)

(declare-fun lt!2049089 () Option!14437)

(declare-fun lt!2049092 () Option!14437)

(assert (=> b!4963059 (= e!3102328 (ite (and (is-None!14436 lt!2049089) (is-None!14436 lt!2049092)) None!14436 (ite (is-None!14436 lt!2049092) lt!2049089 (ite (is-None!14436 lt!2049089) lt!2049092 (ite (>= (size!38046 (_1!34361 (v!50421 lt!2049089))) (size!38046 (_1!34361 (v!50421 lt!2049092)))) lt!2049089 lt!2049092)))))))

(assert (=> b!4963059 (= lt!2049089 call!346064)))

(assert (=> b!4963059 (= lt!2049092 (maxPrefixZipper!782 thiss!15247 (t!368139 (t!368139 rulesArg!259)) lt!2048901))))

(assert (= (and d!1596759 c!846741) b!4963058))

(assert (= (and d!1596759 (not c!846741)) b!4963059))

(assert (= (or b!4963058 b!4963059) bm!346059))

(assert (=> d!1596759 m!5987144))

(assert (=> d!1596759 m!5987058))

(assert (=> d!1596759 m!5987060))

(assert (=> d!1596759 m!5987250))

(declare-fun m!5987420 () Bool)

(assert (=> bm!346059 m!5987420))

(declare-fun m!5987422 () Bool)

(assert (=> b!4963059 m!5987422))

(assert (=> b!4962825 d!1596759))

(declare-fun d!1596761 () Bool)

(assert (=> d!1596761 (= (isDefined!11351 lt!2049002) (not (isEmpty!30906 lt!2049002)))))

(declare-fun bs!1182810 () Bool)

(assert (= bs!1182810 d!1596761))

(declare-fun m!5987424 () Bool)

(assert (=> bs!1182810 m!5987424))

(assert (=> b!4962847 d!1596761))

(declare-fun d!1596763 () Bool)

(declare-fun lt!2049096 () Int)

(assert (=> d!1596763 (>= lt!2049096 0)))

(declare-fun e!3102331 () Int)

(assert (=> d!1596763 (= lt!2049096 e!3102331)))

(declare-fun c!846744 () Bool)

(assert (=> d!1596763 (= c!846744 (is-Nil!57424 (list!18349 totalInput!464)))))

(assert (=> d!1596763 (= (size!38048 (list!18349 totalInput!464)) lt!2049096)))

(declare-fun b!4963064 () Bool)

(assert (=> b!4963064 (= e!3102331 0)))

(declare-fun b!4963065 () Bool)

(assert (=> b!4963065 (= e!3102331 (+ 1 (size!38048 (t!368138 (list!18349 totalInput!464)))))))

(assert (= (and d!1596763 c!846744) b!4963064))

(assert (= (and d!1596763 (not c!846744)) b!4963065))

(declare-fun m!5987426 () Bool)

(assert (=> b!4963065 m!5987426))

(assert (=> b!4962885 d!1596763))

(declare-fun d!1596765 () Bool)

(declare-fun lt!2049097 () Int)

(assert (=> d!1596765 (>= lt!2049097 0)))

(declare-fun e!3102332 () Int)

(assert (=> d!1596765 (= lt!2049097 e!3102332)))

(declare-fun c!846745 () Bool)

(assert (=> d!1596765 (= c!846745 (is-Nil!57424 lt!2048901))))

(assert (=> d!1596765 (= (size!38048 lt!2048901) lt!2049097)))

(declare-fun b!4963066 () Bool)

(assert (=> b!4963066 (= e!3102332 0)))

(declare-fun b!4963067 () Bool)

(assert (=> b!4963067 (= e!3102332 (+ 1 (size!38048 (t!368138 lt!2048901))))))

(assert (= (and d!1596765 c!846745) b!4963066))

(assert (= (and d!1596765 (not c!846745)) b!4963067))

(declare-fun m!5987428 () Bool)

(assert (=> b!4963067 m!5987428))

(assert (=> b!4962885 d!1596765))

(declare-fun d!1596767 () Bool)

(declare-fun lt!2049100 () Bool)

(declare-fun content!10176 (List!57549) (Set Rule!16574))

(assert (=> d!1596767 (= lt!2049100 (set.member (rule!11617 (_1!34361 (get!19925 lt!2048952))) (content!10176 rulesArg!259)))))

(declare-fun e!3102337 () Bool)

(assert (=> d!1596767 (= lt!2049100 e!3102337)))

(declare-fun res!2118408 () Bool)

(assert (=> d!1596767 (=> (not res!2118408) (not e!3102337))))

(assert (=> d!1596767 (= res!2118408 (is-Cons!57425 rulesArg!259))))

(assert (=> d!1596767 (= (contains!19534 rulesArg!259 (rule!11617 (_1!34361 (get!19925 lt!2048952)))) lt!2049100)))

(declare-fun b!4963072 () Bool)

(declare-fun e!3102338 () Bool)

(assert (=> b!4963072 (= e!3102337 e!3102338)))

(declare-fun res!2118409 () Bool)

(assert (=> b!4963072 (=> res!2118409 e!3102338)))

(assert (=> b!4963072 (= res!2118409 (= (h!63873 rulesArg!259) (rule!11617 (_1!34361 (get!19925 lt!2048952)))))))

(declare-fun b!4963073 () Bool)

(assert (=> b!4963073 (= e!3102338 (contains!19534 (t!368139 rulesArg!259) (rule!11617 (_1!34361 (get!19925 lt!2048952)))))))

(assert (= (and d!1596767 res!2118408) b!4963072))

(assert (= (and b!4963072 (not res!2118409)) b!4963073))

(declare-fun m!5987430 () Bool)

(assert (=> d!1596767 m!5987430))

(declare-fun m!5987432 () Bool)

(assert (=> d!1596767 m!5987432))

(declare-fun m!5987434 () Bool)

(assert (=> b!4963073 m!5987434))

(assert (=> b!4962787 d!1596767))

(assert (=> b!4962787 d!1596753))

(declare-fun bs!1182811 () Bool)

(declare-fun d!1596769 () Bool)

(assert (= bs!1182811 (and d!1596769 b!4962842)))

(declare-fun lambda!247265 () Int)

(assert (=> bs!1182811 (= lambda!247265 lambda!247254)))

(assert (=> d!1596769 true))

(assert (=> d!1596769 (< (dynLambda!23123 order!26163 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) (dynLambda!23122 order!26161 lambda!247265))))

(assert (=> d!1596769 true))

(assert (=> d!1596769 (< (dynLambda!23121 order!26159 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) (dynLambda!23122 order!26161 lambda!247265))))

(declare-fun Forall!1758 (Int) Bool)

(assert (=> d!1596769 (= (semiInverseModEq!3694 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) (Forall!1758 lambda!247265))))

(declare-fun bs!1182812 () Bool)

(assert (= bs!1182812 d!1596769))

(declare-fun m!5987436 () Bool)

(assert (=> bs!1182812 m!5987436))

(assert (=> d!1596663 d!1596769))

(declare-fun b!4963106 () Bool)

(declare-fun e!3102354 () Bool)

(declare-fun e!3102359 () Bool)

(assert (=> b!4963106 (= e!3102354 e!3102359)))

(declare-fun res!2118426 () Bool)

(assert (=> b!4963106 (=> (not res!2118426) (not e!3102359))))

(declare-fun lt!2049103 () Bool)

(assert (=> b!4963106 (= res!2118426 (not lt!2049103))))

(declare-fun b!4963107 () Bool)

(declare-fun e!3102357 () Bool)

(assert (=> b!4963107 (= e!3102357 (not (= (head!10662 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))) (c!846704 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))))))))

(declare-fun d!1596771 () Bool)

(declare-fun e!3102355 () Bool)

(assert (=> d!1596771 e!3102355))

(declare-fun c!846753 () Bool)

(assert (=> d!1596771 (= c!846753 (is-EmptyExpr!13620 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))))))

(declare-fun e!3102356 () Bool)

(assert (=> d!1596771 (= lt!2049103 e!3102356)))

(declare-fun c!846752 () Bool)

(assert (=> d!1596771 (= c!846752 (isEmpty!30907 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))))))

(declare-fun validRegex!5965 (Regex!13620) Bool)

(assert (=> d!1596771 (validRegex!5965 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))))

(assert (=> d!1596771 (= (matchR!6630 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))) (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))) lt!2049103)))

(declare-fun b!4963108 () Bool)

(declare-fun e!3102358 () Bool)

(assert (=> b!4963108 (= e!3102358 (= (head!10662 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))) (c!846704 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))))))

(declare-fun b!4963109 () Bool)

(declare-fun e!3102353 () Bool)

(assert (=> b!4963109 (= e!3102353 (not lt!2049103))))

(declare-fun b!4963110 () Bool)

(assert (=> b!4963110 (= e!3102355 e!3102353)))

(declare-fun c!846754 () Bool)

(assert (=> b!4963110 (= c!846754 (is-EmptyLang!13620 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))))))

(declare-fun b!4963111 () Bool)

(declare-fun res!2118431 () Bool)

(assert (=> b!4963111 (=> res!2118431 e!3102354)))

(assert (=> b!4963111 (= res!2118431 (not (is-ElementMatch!13620 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))))))

(assert (=> b!4963111 (= e!3102353 e!3102354)))

(declare-fun b!4963112 () Bool)

(assert (=> b!4963112 (= e!3102359 e!3102357)))

(declare-fun res!2118432 () Bool)

(assert (=> b!4963112 (=> res!2118432 e!3102357)))

(declare-fun call!346067 () Bool)

(assert (=> b!4963112 (= res!2118432 call!346067)))

(declare-fun b!4963113 () Bool)

(declare-fun derivativeStep!3918 (Regex!13620 C!27490) Regex!13620)

(assert (=> b!4963113 (= e!3102356 (matchR!6630 (derivativeStep!3918 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))) (head!10662 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952)))))) (tail!9795 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952)))))))))

(declare-fun b!4963114 () Bool)

(declare-fun res!2118429 () Bool)

(assert (=> b!4963114 (=> (not res!2118429) (not e!3102358))))

(assert (=> b!4963114 (= res!2118429 (not call!346067))))

(declare-fun bm!346062 () Bool)

(assert (=> bm!346062 (= call!346067 (isEmpty!30907 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))))))

(declare-fun b!4963115 () Bool)

(declare-fun res!2118430 () Bool)

(assert (=> b!4963115 (=> res!2118430 e!3102357)))

(assert (=> b!4963115 (= res!2118430 (not (isEmpty!30907 (tail!9795 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))))))))

(declare-fun b!4963116 () Bool)

(declare-fun res!2118427 () Bool)

(assert (=> b!4963116 (=> (not res!2118427) (not e!3102358))))

(assert (=> b!4963116 (= res!2118427 (isEmpty!30907 (tail!9795 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952)))))))))

(declare-fun b!4963117 () Bool)

(declare-fun res!2118428 () Bool)

(assert (=> b!4963117 (=> res!2118428 e!3102354)))

(assert (=> b!4963117 (= res!2118428 e!3102358)))

(declare-fun res!2118433 () Bool)

(assert (=> b!4963117 (=> (not res!2118433) (not e!3102358))))

(assert (=> b!4963117 (= res!2118433 lt!2049103)))

(declare-fun b!4963118 () Bool)

(assert (=> b!4963118 (= e!3102355 (= lt!2049103 call!346067))))

(declare-fun b!4963119 () Bool)

(declare-fun nullable!4616 (Regex!13620) Bool)

(assert (=> b!4963119 (= e!3102356 (nullable!4616 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))))))

(assert (= (and d!1596771 c!846752) b!4963119))

(assert (= (and d!1596771 (not c!846752)) b!4963113))

(assert (= (and d!1596771 c!846753) b!4963118))

(assert (= (and d!1596771 (not c!846753)) b!4963110))

(assert (= (and b!4963110 c!846754) b!4963109))

(assert (= (and b!4963110 (not c!846754)) b!4963111))

(assert (= (and b!4963111 (not res!2118431)) b!4963117))

(assert (= (and b!4963117 res!2118433) b!4963114))

(assert (= (and b!4963114 res!2118429) b!4963116))

(assert (= (and b!4963116 res!2118427) b!4963108))

(assert (= (and b!4963117 (not res!2118428)) b!4963106))

(assert (= (and b!4963106 res!2118426) b!4963112))

(assert (= (and b!4963112 (not res!2118432)) b!4963115))

(assert (= (and b!4963115 (not res!2118430)) b!4963107))

(assert (= (or b!4963118 b!4963112 b!4963114) bm!346062))

(assert (=> bm!346062 m!5987132))

(declare-fun m!5987438 () Bool)

(assert (=> bm!346062 m!5987438))

(assert (=> b!4963108 m!5987132))

(declare-fun m!5987440 () Bool)

(assert (=> b!4963108 m!5987440))

(assert (=> d!1596771 m!5987132))

(assert (=> d!1596771 m!5987438))

(declare-fun m!5987442 () Bool)

(assert (=> d!1596771 m!5987442))

(assert (=> b!4963115 m!5987132))

(declare-fun m!5987444 () Bool)

(assert (=> b!4963115 m!5987444))

(assert (=> b!4963115 m!5987444))

(declare-fun m!5987446 () Bool)

(assert (=> b!4963115 m!5987446))

(assert (=> b!4963116 m!5987132))

(assert (=> b!4963116 m!5987444))

(assert (=> b!4963116 m!5987444))

(assert (=> b!4963116 m!5987446))

(declare-fun m!5987448 () Bool)

(assert (=> b!4963119 m!5987448))

(assert (=> b!4963107 m!5987132))

(assert (=> b!4963107 m!5987440))

(assert (=> b!4963113 m!5987132))

(assert (=> b!4963113 m!5987440))

(assert (=> b!4963113 m!5987440))

(declare-fun m!5987450 () Bool)

(assert (=> b!4963113 m!5987450))

(assert (=> b!4963113 m!5987132))

(assert (=> b!4963113 m!5987444))

(assert (=> b!4963113 m!5987450))

(assert (=> b!4963113 m!5987444))

(declare-fun m!5987452 () Bool)

(assert (=> b!4963113 m!5987452))

(assert (=> b!4962791 d!1596771))

(assert (=> b!4962791 d!1596753))

(assert (=> b!4962791 d!1596749))

(assert (=> b!4962791 d!1596751))

(assert (=> b!4962712 d!1596707))

(assert (=> d!1596679 d!1596657))

(assert (=> d!1596679 d!1596703))

(assert (=> d!1596679 d!1596705))

(assert (=> d!1596679 d!1596709))

(declare-fun d!1596773 () Bool)

(assert (=> d!1596773 (= (inv!75026 (tag!9251 (h!63873 (t!368139 rulesArg!259)))) (= (mod (str.len (value!268470 (tag!9251 (h!63873 (t!368139 rulesArg!259))))) 2) 0))))

(assert (=> b!4962946 d!1596773))

(declare-fun d!1596775 () Bool)

(declare-fun res!2118434 () Bool)

(declare-fun e!3102360 () Bool)

(assert (=> d!1596775 (=> (not res!2118434) (not e!3102360))))

(assert (=> d!1596775 (= res!2118434 (semiInverseModEq!3694 (toChars!11197 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toValue!11338 (transformation!8387 (h!63873 (t!368139 rulesArg!259))))))))

(assert (=> d!1596775 (= (inv!75029 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) e!3102360)))

(declare-fun b!4963120 () Bool)

(assert (=> b!4963120 (= e!3102360 (equivClasses!3542 (toChars!11197 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toValue!11338 (transformation!8387 (h!63873 (t!368139 rulesArg!259))))))))

(assert (= (and d!1596775 res!2118434) b!4963120))

(declare-fun m!5987454 () Bool)

(assert (=> d!1596775 m!5987454))

(declare-fun m!5987456 () Bool)

(assert (=> b!4963120 m!5987456))

(assert (=> b!4962946 d!1596775))

(declare-fun d!1596777 () Bool)

(declare-fun res!2118439 () Bool)

(declare-fun e!3102363 () Bool)

(assert (=> d!1596777 (=> (not res!2118439) (not e!3102363))))

(assert (=> d!1596777 (= res!2118439 (validRegex!5965 (regex!8387 (h!63873 rulesArg!259))))))

(assert (=> d!1596777 (= (ruleValid!3796 thiss!15247 (h!63873 rulesArg!259)) e!3102363)))

(declare-fun b!4963125 () Bool)

(declare-fun res!2118440 () Bool)

(assert (=> b!4963125 (=> (not res!2118440) (not e!3102363))))

(assert (=> b!4963125 (= res!2118440 (not (nullable!4616 (regex!8387 (h!63873 rulesArg!259)))))))

(declare-fun b!4963126 () Bool)

(assert (=> b!4963126 (= e!3102363 (not (= (tag!9251 (h!63873 rulesArg!259)) (String!65362 ""))))))

(assert (= (and d!1596777 res!2118439) b!4963125))

(assert (= (and b!4963125 res!2118440) b!4963126))

(declare-fun m!5987458 () Bool)

(assert (=> d!1596777 m!5987458))

(declare-fun m!5987460 () Bool)

(assert (=> b!4963125 m!5987460))

(assert (=> b!4962875 d!1596777))

(assert (=> d!1596705 d!1596703))

(declare-fun d!1596779 () Bool)

(assert (=> d!1596779 (isPrefix!5238 lt!2048901 lt!2048901)))

(assert (=> d!1596779 true))

(declare-fun _$45!2260 () Unit!148314)

(assert (=> d!1596779 (= (choose!36642 lt!2048901 lt!2048901) _$45!2260)))

(declare-fun bs!1182813 () Bool)

(assert (= bs!1182813 d!1596779))

(assert (=> bs!1182813 m!5987058))

(assert (=> d!1596705 d!1596779))

(declare-fun d!1596781 () Bool)

(declare-fun res!2118445 () Bool)

(declare-fun e!3102366 () Bool)

(assert (=> d!1596781 (=> (not res!2118445) (not e!3102366))))

(assert (=> d!1596781 (= res!2118445 (<= (size!38048 (list!18353 (xs!18465 (c!846705 totalInput!464)))) 512))))

(assert (=> d!1596781 (= (inv!75036 (c!846705 totalInput!464)) e!3102366)))

(declare-fun b!4963131 () Bool)

(declare-fun res!2118446 () Bool)

(assert (=> b!4963131 (=> (not res!2118446) (not e!3102366))))

(assert (=> b!4963131 (= res!2118446 (= (csize!30509 (c!846705 totalInput!464)) (size!38048 (list!18353 (xs!18465 (c!846705 totalInput!464))))))))

(declare-fun b!4963132 () Bool)

(assert (=> b!4963132 (= e!3102366 (and (> (csize!30509 (c!846705 totalInput!464)) 0) (<= (csize!30509 (c!846705 totalInput!464)) 512)))))

(assert (= (and d!1596781 res!2118445) b!4963131))

(assert (= (and b!4963131 res!2118446) b!4963132))

(declare-fun m!5987462 () Bool)

(assert (=> d!1596781 m!5987462))

(assert (=> d!1596781 m!5987462))

(declare-fun m!5987464 () Bool)

(assert (=> d!1596781 m!5987464))

(assert (=> b!4963131 m!5987462))

(assert (=> b!4963131 m!5987462))

(assert (=> b!4963131 m!5987464))

(assert (=> b!4962870 d!1596781))

(declare-fun d!1596783 () Bool)

(assert (=> d!1596783 (= (isDefined!11350 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) (list!18349 input!1342))) (not (isEmpty!30905 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) (list!18349 input!1342)))))))

(declare-fun bs!1182814 () Bool)

(assert (= bs!1182814 d!1596783))

(assert (=> bs!1182814 m!5987188))

(declare-fun m!5987466 () Bool)

(assert (=> bs!1182814 m!5987466))

(assert (=> d!1596693 d!1596783))

(assert (=> d!1596693 d!1596761))

(assert (=> d!1596693 d!1596715))

(assert (=> d!1596693 d!1596777))

(declare-fun b!4963151 () Bool)

(declare-fun res!2118462 () Bool)

(declare-fun e!3102378 () Bool)

(assert (=> b!4963151 (=> (not res!2118462) (not e!3102378))))

(declare-fun lt!2049115 () Option!14437)

(assert (=> b!4963151 (= res!2118462 (= (value!268471 (_1!34361 (get!19925 lt!2049115))) (apply!13898 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2049115)))) (seqFromList!6030 (originalCharacters!8666 (_1!34361 (get!19925 lt!2049115)))))))))

(declare-fun b!4963152 () Bool)

(declare-fun res!2118463 () Bool)

(assert (=> b!4963152 (=> (not res!2118463) (not e!3102378))))

(assert (=> b!4963152 (= res!2118463 (= (rule!11617 (_1!34361 (get!19925 lt!2049115))) (h!63873 rulesArg!259)))))

(declare-fun b!4963153 () Bool)

(declare-fun res!2118467 () Bool)

(assert (=> b!4963153 (=> (not res!2118467) (not e!3102378))))

(assert (=> b!4963153 (= res!2118467 (< (size!38048 (_2!34361 (get!19925 lt!2049115))) (size!38048 (list!18349 input!1342))))))

(declare-fun d!1596785 () Bool)

(declare-fun e!3102376 () Bool)

(assert (=> d!1596785 e!3102376))

(declare-fun res!2118461 () Bool)

(assert (=> d!1596785 (=> res!2118461 e!3102376)))

(assert (=> d!1596785 (= res!2118461 (isEmpty!30905 lt!2049115))))

(declare-fun e!3102377 () Option!14437)

(assert (=> d!1596785 (= lt!2049115 e!3102377)))

(declare-fun c!846757 () Bool)

(declare-fun lt!2049116 () tuple2!62126)

(assert (=> d!1596785 (= c!846757 (isEmpty!30907 (_1!34366 lt!2049116)))))

(declare-fun findLongestMatch!1693 (Regex!13620 List!57548) tuple2!62126)

(assert (=> d!1596785 (= lt!2049116 (findLongestMatch!1693 (regex!8387 (h!63873 rulesArg!259)) (list!18349 input!1342)))))

(assert (=> d!1596785 (ruleValid!3796 thiss!15247 (h!63873 rulesArg!259))))

(assert (=> d!1596785 (= (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) (list!18349 input!1342)) lt!2049115)))

(declare-fun b!4963154 () Bool)

(assert (=> b!4963154 (= e!3102376 e!3102378)))

(declare-fun res!2118465 () Bool)

(assert (=> b!4963154 (=> (not res!2118465) (not e!3102378))))

(assert (=> b!4963154 (= res!2118465 (matchR!6630 (regex!8387 (h!63873 rulesArg!259)) (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2049115))))))))

(declare-fun b!4963155 () Bool)

(assert (=> b!4963155 (= e!3102377 None!14436)))

(declare-fun b!4963156 () Bool)

(declare-fun res!2118464 () Bool)

(assert (=> b!4963156 (=> (not res!2118464) (not e!3102378))))

(assert (=> b!4963156 (= res!2118464 (= (++!12528 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2049115)))) (_2!34361 (get!19925 lt!2049115))) (list!18349 input!1342)))))

(declare-fun b!4963157 () Bool)

(assert (=> b!4963157 (= e!3102378 (= (size!38046 (_1!34361 (get!19925 lt!2049115))) (size!38048 (originalCharacters!8666 (_1!34361 (get!19925 lt!2049115))))))))

(declare-fun b!4963158 () Bool)

(declare-fun e!3102375 () Bool)

(assert (=> b!4963158 (= e!3102375 (matchR!6630 (regex!8387 (h!63873 rulesArg!259)) (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) (list!18349 input!1342) (list!18349 input!1342) (size!38048 (list!18349 input!1342))))))))

(declare-fun b!4963159 () Bool)

(assert (=> b!4963159 (= e!3102377 (Some!14436 (tuple2!62117 (Token!15271 (apply!13898 (transformation!8387 (h!63873 rulesArg!259)) (seqFromList!6030 (_1!34366 lt!2049116))) (h!63873 rulesArg!259) (size!38049 (seqFromList!6030 (_1!34366 lt!2049116))) (_1!34366 lt!2049116)) (_2!34366 lt!2049116))))))

(declare-fun lt!2049117 () Unit!148314)

(assert (=> b!4963159 (= lt!2049117 (longestMatchIsAcceptedByMatchOrIsEmpty!1810 (regex!8387 (h!63873 rulesArg!259)) (list!18349 input!1342)))))

(declare-fun res!2118466 () Bool)

(assert (=> b!4963159 (= res!2118466 (isEmpty!30907 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) (list!18349 input!1342) (list!18349 input!1342) (size!38048 (list!18349 input!1342))))))))

(assert (=> b!4963159 (=> res!2118466 e!3102375)))

(assert (=> b!4963159 e!3102375))

(declare-fun lt!2049114 () Unit!148314)

(assert (=> b!4963159 (= lt!2049114 lt!2049117)))

(declare-fun lt!2049118 () Unit!148314)

(declare-fun lemmaSemiInverse!2598 (TokenValueInjection!16702 BalanceConc!29708) Unit!148314)

(assert (=> b!4963159 (= lt!2049118 (lemmaSemiInverse!2598 (transformation!8387 (h!63873 rulesArg!259)) (seqFromList!6030 (_1!34366 lt!2049116))))))

(assert (= (and d!1596785 c!846757) b!4963155))

(assert (= (and d!1596785 (not c!846757)) b!4963159))

(assert (= (and b!4963159 (not res!2118466)) b!4963158))

(assert (= (and d!1596785 (not res!2118461)) b!4963154))

(assert (= (and b!4963154 res!2118465) b!4963156))

(assert (= (and b!4963156 res!2118464) b!4963153))

(assert (= (and b!4963153 res!2118467) b!4963152))

(assert (= (and b!4963152 res!2118463) b!4963151))

(assert (= (and b!4963151 res!2118462) b!4963157))

(declare-fun m!5987468 () Bool)

(assert (=> b!4963153 m!5987468))

(declare-fun m!5987470 () Bool)

(assert (=> b!4963153 m!5987470))

(assert (=> b!4963153 m!5987040))

(declare-fun m!5987472 () Bool)

(assert (=> b!4963153 m!5987472))

(assert (=> b!4963154 m!5987468))

(declare-fun m!5987474 () Bool)

(assert (=> b!4963154 m!5987474))

(assert (=> b!4963154 m!5987474))

(declare-fun m!5987476 () Bool)

(assert (=> b!4963154 m!5987476))

(assert (=> b!4963154 m!5987476))

(declare-fun m!5987478 () Bool)

(assert (=> b!4963154 m!5987478))

(assert (=> b!4963156 m!5987468))

(assert (=> b!4963156 m!5987474))

(assert (=> b!4963156 m!5987474))

(assert (=> b!4963156 m!5987476))

(assert (=> b!4963156 m!5987476))

(declare-fun m!5987480 () Bool)

(assert (=> b!4963156 m!5987480))

(assert (=> b!4963157 m!5987468))

(declare-fun m!5987482 () Bool)

(assert (=> b!4963157 m!5987482))

(assert (=> b!4963158 m!5987208))

(assert (=> b!4963158 m!5987040))

(assert (=> b!4963158 m!5987472))

(assert (=> b!4963158 m!5987208))

(assert (=> b!4963158 m!5987040))

(assert (=> b!4963158 m!5987040))

(assert (=> b!4963158 m!5987472))

(declare-fun m!5987484 () Bool)

(assert (=> b!4963158 m!5987484))

(declare-fun m!5987486 () Bool)

(assert (=> b!4963158 m!5987486))

(assert (=> b!4963152 m!5987468))

(declare-fun m!5987488 () Bool)

(assert (=> b!4963159 m!5987488))

(declare-fun m!5987490 () Bool)

(assert (=> b!4963159 m!5987490))

(assert (=> b!4963159 m!5987208))

(declare-fun m!5987492 () Bool)

(assert (=> b!4963159 m!5987492))

(assert (=> b!4963159 m!5987208))

(assert (=> b!4963159 m!5987040))

(assert (=> b!4963159 m!5987040))

(assert (=> b!4963159 m!5987472))

(assert (=> b!4963159 m!5987484))

(assert (=> b!4963159 m!5987488))

(declare-fun m!5987494 () Bool)

(assert (=> b!4963159 m!5987494))

(assert (=> b!4963159 m!5987040))

(assert (=> b!4963159 m!5987472))

(assert (=> b!4963159 m!5987488))

(assert (=> b!4963159 m!5987488))

(declare-fun m!5987496 () Bool)

(assert (=> b!4963159 m!5987496))

(assert (=> b!4963159 m!5987040))

(declare-fun m!5987498 () Bool)

(assert (=> b!4963159 m!5987498))

(assert (=> b!4963151 m!5987468))

(declare-fun m!5987500 () Bool)

(assert (=> b!4963151 m!5987500))

(assert (=> b!4963151 m!5987500))

(declare-fun m!5987502 () Bool)

(assert (=> b!4963151 m!5987502))

(declare-fun m!5987504 () Bool)

(assert (=> d!1596785 m!5987504))

(declare-fun m!5987506 () Bool)

(assert (=> d!1596785 m!5987506))

(assert (=> d!1596785 m!5987040))

(declare-fun m!5987508 () Bool)

(assert (=> d!1596785 m!5987508))

(assert (=> d!1596785 m!5987198))

(assert (=> d!1596693 d!1596785))

(declare-fun d!1596787 () Bool)

(declare-fun lt!2049121 () tuple2!62124)

(assert (=> d!1596787 (= (tuple2!62127 (list!18349 (_1!34365 lt!2049121)) (list!18349 (_2!34365 lt!2049121))) (findLongestMatch!1693 (regex!8387 (h!63873 rulesArg!259)) (list!18349 input!1342)))))

(declare-fun choose!36644 (Regex!13620 BalanceConc!29708 BalanceConc!29708) tuple2!62124)

(assert (=> d!1596787 (= lt!2049121 (choose!36644 (regex!8387 (h!63873 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1596787 (validRegex!5965 (regex!8387 (h!63873 rulesArg!259)))))

(assert (=> d!1596787 (= (findLongestMatchWithZipperSequenceV2!158 (regex!8387 (h!63873 rulesArg!259)) input!1342 totalInput!464) lt!2049121)))

(declare-fun bs!1182815 () Bool)

(assert (= bs!1182815 d!1596787))

(assert (=> bs!1182815 m!5987040))

(declare-fun m!5987510 () Bool)

(assert (=> bs!1182815 m!5987510))

(assert (=> bs!1182815 m!5987040))

(assert (=> bs!1182815 m!5987508))

(declare-fun m!5987512 () Bool)

(assert (=> bs!1182815 m!5987512))

(assert (=> bs!1182815 m!5987458))

(declare-fun m!5987514 () Bool)

(assert (=> bs!1182815 m!5987514))

(assert (=> d!1596693 d!1596787))

(declare-fun d!1596789 () Bool)

(declare-fun lt!2049124 () Bool)

(assert (=> d!1596789 (= lt!2049124 (isEmpty!30907 (list!18349 (_1!34365 lt!2049008))))))

(declare-fun isEmpty!30913 (Conc!15139) Bool)

(assert (=> d!1596789 (= lt!2049124 (isEmpty!30913 (c!846705 (_1!34365 lt!2049008))))))

(assert (=> d!1596789 (= (isEmpty!30908 (_1!34365 lt!2049008)) lt!2049124)))

(declare-fun bs!1182816 () Bool)

(assert (= bs!1182816 d!1596789))

(assert (=> bs!1182816 m!5987204))

(assert (=> bs!1182816 m!5987204))

(declare-fun m!5987516 () Bool)

(assert (=> bs!1182816 m!5987516))

(declare-fun m!5987518 () Bool)

(assert (=> bs!1182816 m!5987518))

(assert (=> d!1596693 d!1596789))

(declare-fun d!1596791 () Bool)

(assert (=> d!1596791 (= (isDefined!11350 lt!2048952) (not (isEmpty!30905 lt!2048952)))))

(declare-fun bs!1182817 () Bool)

(assert (= bs!1182817 d!1596791))

(assert (=> bs!1182817 m!5987118))

(assert (=> b!4962783 d!1596791))

(declare-fun d!1596793 () Bool)

(assert (=> d!1596793 (= (get!19926 lt!2049002) (v!50422 lt!2049002))))

(assert (=> b!4962845 d!1596793))

(declare-fun d!1596795 () Bool)

(assert (=> d!1596795 (= (get!19925 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) (list!18349 input!1342))) (v!50421 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) (list!18349 input!1342))))))

(assert (=> b!4962845 d!1596795))

(assert (=> b!4962845 d!1596785))

(assert (=> b!4962845 d!1596715))

(declare-fun b!4963172 () Bool)

(declare-fun e!3102383 () Bool)

(assert (=> b!4963172 (= e!3102383 (not (isEmpty!30913 (right!42209 (c!846705 totalInput!464)))))))

(declare-fun d!1596797 () Bool)

(declare-fun res!2118484 () Bool)

(declare-fun e!3102384 () Bool)

(assert (=> d!1596797 (=> res!2118484 e!3102384)))

(assert (=> d!1596797 (= res!2118484 (not (is-Node!15139 (c!846705 totalInput!464))))))

(assert (=> d!1596797 (= (isBalanced!4196 (c!846705 totalInput!464)) e!3102384)))

(declare-fun b!4963173 () Bool)

(declare-fun res!2118481 () Bool)

(assert (=> b!4963173 (=> (not res!2118481) (not e!3102383))))

(assert (=> b!4963173 (= res!2118481 (not (isEmpty!30913 (left!41879 (c!846705 totalInput!464)))))))

(declare-fun b!4963174 () Bool)

(assert (=> b!4963174 (= e!3102384 e!3102383)))

(declare-fun res!2118482 () Bool)

(assert (=> b!4963174 (=> (not res!2118482) (not e!3102383))))

(declare-fun height!2009 (Conc!15139) Int)

(assert (=> b!4963174 (= res!2118482 (<= (- 1) (- (height!2009 (left!41879 (c!846705 totalInput!464))) (height!2009 (right!42209 (c!846705 totalInput!464))))))))

(declare-fun b!4963175 () Bool)

(declare-fun res!2118485 () Bool)

(assert (=> b!4963175 (=> (not res!2118485) (not e!3102383))))

(assert (=> b!4963175 (= res!2118485 (<= (- (height!2009 (left!41879 (c!846705 totalInput!464))) (height!2009 (right!42209 (c!846705 totalInput!464)))) 1))))

(declare-fun b!4963176 () Bool)

(declare-fun res!2118483 () Bool)

(assert (=> b!4963176 (=> (not res!2118483) (not e!3102383))))

(assert (=> b!4963176 (= res!2118483 (isBalanced!4196 (left!41879 (c!846705 totalInput!464))))))

(declare-fun b!4963177 () Bool)

(declare-fun res!2118480 () Bool)

(assert (=> b!4963177 (=> (not res!2118480) (not e!3102383))))

(assert (=> b!4963177 (= res!2118480 (isBalanced!4196 (right!42209 (c!846705 totalInput!464))))))

(assert (= (and d!1596797 (not res!2118484)) b!4963174))

(assert (= (and b!4963174 res!2118482) b!4963175))

(assert (= (and b!4963175 res!2118485) b!4963176))

(assert (= (and b!4963176 res!2118483) b!4963177))

(assert (= (and b!4963177 res!2118480) b!4963173))

(assert (= (and b!4963173 res!2118481) b!4963172))

(declare-fun m!5987520 () Bool)

(assert (=> b!4963176 m!5987520))

(declare-fun m!5987522 () Bool)

(assert (=> b!4963175 m!5987522))

(declare-fun m!5987524 () Bool)

(assert (=> b!4963175 m!5987524))

(declare-fun m!5987526 () Bool)

(assert (=> b!4963172 m!5987526))

(assert (=> b!4963174 m!5987522))

(assert (=> b!4963174 m!5987524))

(declare-fun m!5987528 () Bool)

(assert (=> b!4963173 m!5987528))

(declare-fun m!5987530 () Bool)

(assert (=> b!4963177 m!5987530))

(assert (=> d!1596667 d!1596797))

(declare-fun d!1596799 () Bool)

(declare-fun c!846758 () Bool)

(assert (=> d!1596799 (= c!846758 (is-Node!15139 (left!41879 (c!846705 totalInput!464))))))

(declare-fun e!3102385 () Bool)

(assert (=> d!1596799 (= (inv!75030 (left!41879 (c!846705 totalInput!464))) e!3102385)))

(declare-fun b!4963178 () Bool)

(assert (=> b!4963178 (= e!3102385 (inv!75035 (left!41879 (c!846705 totalInput!464))))))

(declare-fun b!4963179 () Bool)

(declare-fun e!3102386 () Bool)

(assert (=> b!4963179 (= e!3102385 e!3102386)))

(declare-fun res!2118486 () Bool)

(assert (=> b!4963179 (= res!2118486 (not (is-Leaf!25158 (left!41879 (c!846705 totalInput!464)))))))

(assert (=> b!4963179 (=> res!2118486 e!3102386)))

(declare-fun b!4963180 () Bool)

(assert (=> b!4963180 (= e!3102386 (inv!75036 (left!41879 (c!846705 totalInput!464))))))

(assert (= (and d!1596799 c!846758) b!4963178))

(assert (= (and d!1596799 (not c!846758)) b!4963179))

(assert (= (and b!4963179 (not res!2118486)) b!4963180))

(declare-fun m!5987532 () Bool)

(assert (=> b!4963178 m!5987532))

(declare-fun m!5987534 () Bool)

(assert (=> b!4963180 m!5987534))

(assert (=> b!4962925 d!1596799))

(declare-fun d!1596801 () Bool)

(declare-fun c!846759 () Bool)

(assert (=> d!1596801 (= c!846759 (is-Node!15139 (right!42209 (c!846705 totalInput!464))))))

(declare-fun e!3102387 () Bool)

(assert (=> d!1596801 (= (inv!75030 (right!42209 (c!846705 totalInput!464))) e!3102387)))

(declare-fun b!4963181 () Bool)

(assert (=> b!4963181 (= e!3102387 (inv!75035 (right!42209 (c!846705 totalInput!464))))))

(declare-fun b!4963182 () Bool)

(declare-fun e!3102388 () Bool)

(assert (=> b!4963182 (= e!3102387 e!3102388)))

(declare-fun res!2118487 () Bool)

(assert (=> b!4963182 (= res!2118487 (not (is-Leaf!25158 (right!42209 (c!846705 totalInput!464)))))))

(assert (=> b!4963182 (=> res!2118487 e!3102388)))

(declare-fun b!4963183 () Bool)

(assert (=> b!4963183 (= e!3102388 (inv!75036 (right!42209 (c!846705 totalInput!464))))))

(assert (= (and d!1596801 c!846759) b!4963181))

(assert (= (and d!1596801 (not c!846759)) b!4963182))

(assert (= (and b!4963182 (not res!2118487)) b!4963183))

(declare-fun m!5987536 () Bool)

(assert (=> b!4963181 m!5987536))

(declare-fun m!5987538 () Bool)

(assert (=> b!4963183 m!5987538))

(assert (=> b!4962925 d!1596801))

(declare-fun d!1596803 () Bool)

(declare-fun res!2118492 () Bool)

(declare-fun e!3102393 () Bool)

(assert (=> d!1596803 (=> res!2118492 e!3102393)))

(assert (=> d!1596803 (= res!2118492 (is-Nil!57425 rulesArg!259))))

(assert (=> d!1596803 (= (forall!13322 rulesArg!259 lambda!247257) e!3102393)))

(declare-fun b!4963188 () Bool)

(declare-fun e!3102394 () Bool)

(assert (=> b!4963188 (= e!3102393 e!3102394)))

(declare-fun res!2118493 () Bool)

(assert (=> b!4963188 (=> (not res!2118493) (not e!3102394))))

(declare-fun dynLambda!23128 (Int Rule!16574) Bool)

(assert (=> b!4963188 (= res!2118493 (dynLambda!23128 lambda!247257 (h!63873 rulesArg!259)))))

(declare-fun b!4963189 () Bool)

(assert (=> b!4963189 (= e!3102394 (forall!13322 (t!368139 rulesArg!259) lambda!247257))))

(assert (= (and d!1596803 (not res!2118492)) b!4963188))

(assert (= (and b!4963188 res!2118493) b!4963189))

(declare-fun b_lambda!196463 () Bool)

(assert (=> (not b_lambda!196463) (not b!4963188)))

(declare-fun m!5987540 () Bool)

(assert (=> b!4963188 m!5987540))

(declare-fun m!5987542 () Bool)

(assert (=> b!4963189 m!5987542))

(assert (=> d!1596709 d!1596803))

(declare-fun b!4963190 () Bool)

(declare-fun e!3102396 () Bool)

(declare-fun e!3102401 () Bool)

(assert (=> b!4963190 (= e!3102396 e!3102401)))

(declare-fun res!2118494 () Bool)

(assert (=> b!4963190 (=> (not res!2118494) (not e!3102401))))

(declare-fun lt!2049125 () Bool)

(assert (=> b!4963190 (= res!2118494 (not lt!2049125))))

(declare-fun b!4963191 () Bool)

(declare-fun e!3102399 () Bool)

(assert (=> b!4963191 (= e!3102399 (not (= (head!10662 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))) (c!846704 (regex!8387 (h!63873 rulesArg!259))))))))

(declare-fun d!1596805 () Bool)

(declare-fun e!3102397 () Bool)

(assert (=> d!1596805 e!3102397))

(declare-fun c!846761 () Bool)

(assert (=> d!1596805 (= c!846761 (is-EmptyExpr!13620 (regex!8387 (h!63873 rulesArg!259))))))

(declare-fun e!3102398 () Bool)

(assert (=> d!1596805 (= lt!2049125 e!3102398)))

(declare-fun c!846760 () Bool)

(assert (=> d!1596805 (= c!846760 (isEmpty!30907 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))))))

(assert (=> d!1596805 (validRegex!5965 (regex!8387 (h!63873 rulesArg!259)))))

(assert (=> d!1596805 (= (matchR!6630 (regex!8387 (h!63873 rulesArg!259)) (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))) lt!2049125)))

(declare-fun b!4963192 () Bool)

(declare-fun e!3102400 () Bool)

(assert (=> b!4963192 (= e!3102400 (= (head!10662 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))) (c!846704 (regex!8387 (h!63873 rulesArg!259)))))))

(declare-fun b!4963193 () Bool)

(declare-fun e!3102395 () Bool)

(assert (=> b!4963193 (= e!3102395 (not lt!2049125))))

(declare-fun b!4963194 () Bool)

(assert (=> b!4963194 (= e!3102397 e!3102395)))

(declare-fun c!846762 () Bool)

(assert (=> b!4963194 (= c!846762 (is-EmptyLang!13620 (regex!8387 (h!63873 rulesArg!259))))))

(declare-fun b!4963195 () Bool)

(declare-fun res!2118499 () Bool)

(assert (=> b!4963195 (=> res!2118499 e!3102396)))

(assert (=> b!4963195 (= res!2118499 (not (is-ElementMatch!13620 (regex!8387 (h!63873 rulesArg!259)))))))

(assert (=> b!4963195 (= e!3102395 e!3102396)))

(declare-fun b!4963196 () Bool)

(assert (=> b!4963196 (= e!3102401 e!3102399)))

(declare-fun res!2118500 () Bool)

(assert (=> b!4963196 (=> res!2118500 e!3102399)))

(declare-fun call!346068 () Bool)

(assert (=> b!4963196 (= res!2118500 call!346068)))

(declare-fun b!4963197 () Bool)

(assert (=> b!4963197 (= e!3102398 (matchR!6630 (derivativeStep!3918 (regex!8387 (h!63873 rulesArg!259)) (head!10662 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009))))) (tail!9795 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009))))))))

(declare-fun b!4963198 () Bool)

(declare-fun res!2118497 () Bool)

(assert (=> b!4963198 (=> (not res!2118497) (not e!3102400))))

(assert (=> b!4963198 (= res!2118497 (not call!346068))))

(declare-fun bm!346063 () Bool)

(assert (=> bm!346063 (= call!346068 (isEmpty!30907 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))))))

(declare-fun b!4963199 () Bool)

(declare-fun res!2118498 () Bool)

(assert (=> b!4963199 (=> res!2118498 e!3102399)))

(assert (=> b!4963199 (= res!2118498 (not (isEmpty!30907 (tail!9795 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))))))))

(declare-fun b!4963200 () Bool)

(declare-fun res!2118495 () Bool)

(assert (=> b!4963200 (=> (not res!2118495) (not e!3102400))))

(assert (=> b!4963200 (= res!2118495 (isEmpty!30907 (tail!9795 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009))))))))

(declare-fun b!4963201 () Bool)

(declare-fun res!2118496 () Bool)

(assert (=> b!4963201 (=> res!2118496 e!3102396)))

(assert (=> b!4963201 (= res!2118496 e!3102400)))

(declare-fun res!2118501 () Bool)

(assert (=> b!4963201 (=> (not res!2118501) (not e!3102400))))

(assert (=> b!4963201 (= res!2118501 lt!2049125)))

(declare-fun b!4963202 () Bool)

(assert (=> b!4963202 (= e!3102397 (= lt!2049125 call!346068))))

(declare-fun b!4963203 () Bool)

(assert (=> b!4963203 (= e!3102398 (nullable!4616 (regex!8387 (h!63873 rulesArg!259))))))

(assert (= (and d!1596805 c!846760) b!4963203))

(assert (= (and d!1596805 (not c!846760)) b!4963197))

(assert (= (and d!1596805 c!846761) b!4963202))

(assert (= (and d!1596805 (not c!846761)) b!4963194))

(assert (= (and b!4963194 c!846762) b!4963193))

(assert (= (and b!4963194 (not c!846762)) b!4963195))

(assert (= (and b!4963195 (not res!2118499)) b!4963201))

(assert (= (and b!4963201 res!2118501) b!4963198))

(assert (= (and b!4963198 res!2118497) b!4963200))

(assert (= (and b!4963200 res!2118495) b!4963192))

(assert (= (and b!4963201 (not res!2118496)) b!4963190))

(assert (= (and b!4963190 res!2118494) b!4963196))

(assert (= (and b!4963196 (not res!2118500)) b!4963199))

(assert (= (and b!4963199 (not res!2118498)) b!4963191))

(assert (= (or b!4963202 b!4963196 b!4963198) bm!346063))

(assert (=> bm!346063 m!5987228))

(declare-fun m!5987544 () Bool)

(assert (=> b!4963192 m!5987544))

(assert (=> d!1596805 m!5987228))

(assert (=> d!1596805 m!5987458))

(declare-fun m!5987546 () Bool)

(assert (=> b!4963199 m!5987546))

(assert (=> b!4963199 m!5987546))

(declare-fun m!5987548 () Bool)

(assert (=> b!4963199 m!5987548))

(assert (=> b!4963200 m!5987546))

(assert (=> b!4963200 m!5987546))

(assert (=> b!4963200 m!5987548))

(assert (=> b!4963203 m!5987460))

(assert (=> b!4963191 m!5987544))

(assert (=> b!4963197 m!5987544))

(assert (=> b!4963197 m!5987544))

(declare-fun m!5987550 () Bool)

(assert (=> b!4963197 m!5987550))

(assert (=> b!4963197 m!5987546))

(assert (=> b!4963197 m!5987550))

(assert (=> b!4963197 m!5987546))

(declare-fun m!5987552 () Bool)

(assert (=> b!4963197 m!5987552))

(assert (=> b!4962843 d!1596805))

(declare-fun bm!346080 () Bool)

(declare-fun call!346087 () List!57548)

(assert (=> bm!346080 (= call!346087 (tail!9795 lt!2049009))))

(declare-fun bm!346081 () Bool)

(declare-fun call!346090 () Bool)

(assert (=> bm!346081 (= call!346090 (nullable!4616 (regex!8387 (h!63873 rulesArg!259))))))

(declare-fun bm!346082 () Bool)

(declare-fun call!346091 () Bool)

(assert (=> bm!346082 (= call!346091 (isPrefix!5238 lt!2049009 lt!2049009))))

(declare-fun bm!346083 () Bool)

(declare-fun call!346086 () Regex!13620)

(declare-fun call!346092 () C!27490)

(assert (=> bm!346083 (= call!346086 (derivativeStep!3918 (regex!8387 (h!63873 rulesArg!259)) call!346092))))

(declare-fun b!4963232 () Bool)

(declare-fun e!3102424 () Unit!148314)

(declare-fun Unit!148319 () Unit!148314)

(assert (=> b!4963232 (= e!3102424 Unit!148319)))

(declare-fun b!4963233 () Bool)

(declare-fun e!3102423 () tuple2!62126)

(assert (=> b!4963233 (= e!3102423 (tuple2!62127 Nil!57424 lt!2049009))))

(declare-fun bm!346084 () Bool)

(assert (=> bm!346084 (= call!346092 (head!10662 lt!2049009))))

(declare-fun b!4963234 () Bool)

(declare-fun e!3102420 () tuple2!62126)

(assert (=> b!4963234 (= e!3102420 (tuple2!62127 Nil!57424 lt!2049009))))

(declare-fun b!4963235 () Bool)

(declare-fun e!3102422 () tuple2!62126)

(assert (=> b!4963235 (= e!3102422 (tuple2!62127 Nil!57424 lt!2049009))))

(declare-fun b!4963236 () Bool)

(declare-fun c!846775 () Bool)

(assert (=> b!4963236 (= c!846775 call!346090)))

(declare-fun lt!2049208 () Unit!148314)

(declare-fun lt!2049185 () Unit!148314)

(assert (=> b!4963236 (= lt!2049208 lt!2049185)))

(assert (=> b!4963236 (= lt!2049009 Nil!57424)))

(declare-fun call!346089 () Unit!148314)

(assert (=> b!4963236 (= lt!2049185 call!346089)))

(declare-fun lt!2049207 () Unit!148314)

(declare-fun lt!2049205 () Unit!148314)

(assert (=> b!4963236 (= lt!2049207 lt!2049205)))

(assert (=> b!4963236 call!346091))

(declare-fun call!346088 () Unit!148314)

(assert (=> b!4963236 (= lt!2049205 call!346088)))

(declare-fun e!3102421 () tuple2!62126)

(assert (=> b!4963236 (= e!3102421 e!3102420)))

(declare-fun bm!346085 () Bool)

(assert (=> bm!346085 (= call!346088 (lemmaIsPrefixRefl!3562 lt!2049009 lt!2049009))))

(declare-fun b!4963237 () Bool)

(declare-fun Unit!148320 () Unit!148314)

(assert (=> b!4963237 (= e!3102424 Unit!148320)))

(declare-fun lt!2049187 () Unit!148314)

(assert (=> b!4963237 (= lt!2049187 call!346088)))

(assert (=> b!4963237 call!346091))

(declare-fun lt!2049199 () Unit!148314)

(assert (=> b!4963237 (= lt!2049199 lt!2049187)))

(declare-fun lt!2049204 () Unit!148314)

(assert (=> b!4963237 (= lt!2049204 call!346089)))

(assert (=> b!4963237 (= lt!2049009 Nil!57424)))

(declare-fun lt!2049191 () Unit!148314)

(assert (=> b!4963237 (= lt!2049191 lt!2049204)))

(assert (=> b!4963237 false))

(declare-fun b!4963239 () Bool)

(declare-fun c!846776 () Bool)

(assert (=> b!4963239 (= c!846776 call!346090)))

(declare-fun lt!2049183 () Unit!148314)

(declare-fun lt!2049186 () Unit!148314)

(assert (=> b!4963239 (= lt!2049183 lt!2049186)))

(declare-fun lt!2049190 () C!27490)

(declare-fun lt!2049182 () List!57548)

(assert (=> b!4963239 (= (++!12528 (++!12528 Nil!57424 (Cons!57424 lt!2049190 Nil!57424)) lt!2049182) lt!2049009)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1441 (List!57548 C!27490 List!57548 List!57548) Unit!148314)

(assert (=> b!4963239 (= lt!2049186 (lemmaMoveElementToOtherListKeepsConcatEq!1441 Nil!57424 lt!2049190 lt!2049182 lt!2049009))))

(assert (=> b!4963239 (= lt!2049182 (tail!9795 lt!2049009))))

(assert (=> b!4963239 (= lt!2049190 (head!10662 lt!2049009))))

(declare-fun lt!2049193 () Unit!148314)

(declare-fun lt!2049194 () Unit!148314)

(assert (=> b!4963239 (= lt!2049193 lt!2049194)))

(declare-fun getSuffix!3084 (List!57548 List!57548) List!57548)

(assert (=> b!4963239 (isPrefix!5238 (++!12528 Nil!57424 (Cons!57424 (head!10662 (getSuffix!3084 lt!2049009 Nil!57424)) Nil!57424)) lt!2049009)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!831 (List!57548 List!57548) Unit!148314)

(assert (=> b!4963239 (= lt!2049194 (lemmaAddHeadSuffixToPrefixStillPrefix!831 Nil!57424 lt!2049009))))

(declare-fun lt!2049203 () Unit!148314)

(declare-fun lt!2049188 () Unit!148314)

(assert (=> b!4963239 (= lt!2049203 lt!2049188)))

(assert (=> b!4963239 (= lt!2049188 (lemmaAddHeadSuffixToPrefixStillPrefix!831 Nil!57424 lt!2049009))))

(declare-fun lt!2049202 () List!57548)

(assert (=> b!4963239 (= lt!2049202 (++!12528 Nil!57424 (Cons!57424 (head!10662 lt!2049009) Nil!57424)))))

(declare-fun lt!2049206 () Unit!148314)

(assert (=> b!4963239 (= lt!2049206 e!3102424)))

(declare-fun c!846777 () Bool)

(assert (=> b!4963239 (= c!846777 (= (size!38048 Nil!57424) (size!38048 lt!2049009)))))

(declare-fun lt!2049195 () Unit!148314)

(declare-fun lt!2049184 () Unit!148314)

(assert (=> b!4963239 (= lt!2049195 lt!2049184)))

(assert (=> b!4963239 (<= (size!38048 Nil!57424) (size!38048 lt!2049009))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!757 (List!57548 List!57548) Unit!148314)

(assert (=> b!4963239 (= lt!2049184 (lemmaIsPrefixThenSmallerEqSize!757 Nil!57424 lt!2049009))))

(declare-fun e!3102419 () tuple2!62126)

(assert (=> b!4963239 (= e!3102421 e!3102419)))

(declare-fun b!4963240 () Bool)

(declare-fun call!346085 () tuple2!62126)

(assert (=> b!4963240 (= e!3102419 call!346085)))

(declare-fun b!4963241 () Bool)

(assert (=> b!4963241 (= e!3102423 e!3102421)))

(declare-fun c!846779 () Bool)

(assert (=> b!4963241 (= c!846779 (= (size!38048 Nil!57424) (size!38048 lt!2049009)))))

(declare-fun b!4963242 () Bool)

(assert (=> b!4963242 (= e!3102420 (tuple2!62127 Nil!57424 Nil!57424))))

(declare-fun b!4963243 () Bool)

(declare-fun lt!2049197 () tuple2!62126)

(assert (=> b!4963243 (= e!3102422 lt!2049197)))

(declare-fun bm!346086 () Bool)

(assert (=> bm!346086 (= call!346085 (findLongestMatchInner!1849 call!346086 lt!2049202 (+ (size!38048 Nil!57424) 1) call!346087 lt!2049009 (size!38048 lt!2049009)))))

(declare-fun bm!346087 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1204 (List!57548 List!57548 List!57548) Unit!148314)

(assert (=> bm!346087 (= call!346089 (lemmaIsPrefixSameLengthThenSameList!1204 lt!2049009 Nil!57424 lt!2049009))))

(declare-fun b!4963244 () Bool)

(declare-fun e!3102418 () Bool)

(declare-fun lt!2049201 () tuple2!62126)

(assert (=> b!4963244 (= e!3102418 (>= (size!38048 (_1!34366 lt!2049201)) (size!38048 Nil!57424)))))

(declare-fun b!4963245 () Bool)

(assert (=> b!4963245 (= e!3102419 e!3102422)))

(assert (=> b!4963245 (= lt!2049197 call!346085)))

(declare-fun c!846778 () Bool)

(assert (=> b!4963245 (= c!846778 (isEmpty!30907 (_1!34366 lt!2049197)))))

(declare-fun d!1596807 () Bool)

(declare-fun e!3102425 () Bool)

(assert (=> d!1596807 e!3102425))

(declare-fun res!2118518 () Bool)

(assert (=> d!1596807 (=> (not res!2118518) (not e!3102425))))

(assert (=> d!1596807 (= res!2118518 (= (++!12528 (_1!34366 lt!2049201) (_2!34366 lt!2049201)) lt!2049009))))

(assert (=> d!1596807 (= lt!2049201 e!3102423)))

(declare-fun c!846780 () Bool)

(declare-fun lostCause!1128 (Regex!13620) Bool)

(assert (=> d!1596807 (= c!846780 (lostCause!1128 (regex!8387 (h!63873 rulesArg!259))))))

(declare-fun lt!2049198 () Unit!148314)

(declare-fun Unit!148321 () Unit!148314)

(assert (=> d!1596807 (= lt!2049198 Unit!148321)))

(assert (=> d!1596807 (= (getSuffix!3084 lt!2049009 Nil!57424) lt!2049009)))

(declare-fun lt!2049200 () Unit!148314)

(declare-fun lt!2049189 () Unit!148314)

(assert (=> d!1596807 (= lt!2049200 lt!2049189)))

(declare-fun lt!2049209 () List!57548)

(assert (=> d!1596807 (= lt!2049009 lt!2049209)))

(declare-fun lemmaSamePrefixThenSameSuffix!2496 (List!57548 List!57548 List!57548 List!57548 List!57548) Unit!148314)

(assert (=> d!1596807 (= lt!2049189 (lemmaSamePrefixThenSameSuffix!2496 Nil!57424 lt!2049009 Nil!57424 lt!2049209 lt!2049009))))

(assert (=> d!1596807 (= lt!2049209 (getSuffix!3084 lt!2049009 Nil!57424))))

(declare-fun lt!2049192 () Unit!148314)

(declare-fun lt!2049196 () Unit!148314)

(assert (=> d!1596807 (= lt!2049192 lt!2049196)))

(assert (=> d!1596807 (isPrefix!5238 Nil!57424 (++!12528 Nil!57424 lt!2049009))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3342 (List!57548 List!57548) Unit!148314)

(assert (=> d!1596807 (= lt!2049196 (lemmaConcatTwoListThenFirstIsPrefix!3342 Nil!57424 lt!2049009))))

(assert (=> d!1596807 (validRegex!5965 (regex!8387 (h!63873 rulesArg!259)))))

(assert (=> d!1596807 (= (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)) lt!2049201)))

(declare-fun b!4963238 () Bool)

(assert (=> b!4963238 (= e!3102425 e!3102418)))

(declare-fun res!2118519 () Bool)

(assert (=> b!4963238 (=> res!2118519 e!3102418)))

(assert (=> b!4963238 (= res!2118519 (isEmpty!30907 (_1!34366 lt!2049201)))))

(assert (= (and d!1596807 c!846780) b!4963233))

(assert (= (and d!1596807 (not c!846780)) b!4963241))

(assert (= (and b!4963241 c!846779) b!4963236))

(assert (= (and b!4963241 (not c!846779)) b!4963239))

(assert (= (and b!4963236 c!846775) b!4963242))

(assert (= (and b!4963236 (not c!846775)) b!4963234))

(assert (= (and b!4963239 c!846777) b!4963237))

(assert (= (and b!4963239 (not c!846777)) b!4963232))

(assert (= (and b!4963239 c!846776) b!4963245))

(assert (= (and b!4963239 (not c!846776)) b!4963240))

(assert (= (and b!4963245 c!846778) b!4963235))

(assert (= (and b!4963245 (not c!846778)) b!4963243))

(assert (= (or b!4963245 b!4963240) bm!346084))

(assert (= (or b!4963245 b!4963240) bm!346080))

(assert (= (or b!4963245 b!4963240) bm!346083))

(assert (= (or b!4963245 b!4963240) bm!346086))

(assert (= (or b!4963236 b!4963237) bm!346085))

(assert (= (or b!4963236 b!4963237) bm!346087))

(assert (= (or b!4963236 b!4963239) bm!346081))

(assert (= (or b!4963236 b!4963237) bm!346082))

(assert (= (and d!1596807 res!2118518) b!4963238))

(assert (= (and b!4963238 (not res!2118519)) b!4963244))

(declare-fun m!5987554 () Bool)

(assert (=> b!4963244 m!5987554))

(assert (=> b!4963244 m!5987208))

(declare-fun m!5987556 () Bool)

(assert (=> bm!346085 m!5987556))

(declare-fun m!5987558 () Bool)

(assert (=> bm!346084 m!5987558))

(assert (=> bm!346086 m!5987216))

(declare-fun m!5987560 () Bool)

(assert (=> bm!346086 m!5987560))

(declare-fun m!5987562 () Bool)

(assert (=> b!4963238 m!5987562))

(declare-fun m!5987564 () Bool)

(assert (=> bm!346080 m!5987564))

(declare-fun m!5987566 () Bool)

(assert (=> bm!346087 m!5987566))

(declare-fun m!5987568 () Bool)

(assert (=> b!4963245 m!5987568))

(assert (=> b!4963239 m!5987564))

(declare-fun m!5987570 () Bool)

(assert (=> b!4963239 m!5987570))

(assert (=> b!4963239 m!5987558))

(assert (=> b!4963239 m!5987208))

(declare-fun m!5987572 () Bool)

(assert (=> b!4963239 m!5987572))

(assert (=> b!4963239 m!5987572))

(declare-fun m!5987574 () Bool)

(assert (=> b!4963239 m!5987574))

(declare-fun m!5987576 () Bool)

(assert (=> b!4963239 m!5987576))

(declare-fun m!5987578 () Bool)

(assert (=> b!4963239 m!5987578))

(declare-fun m!5987580 () Bool)

(assert (=> b!4963239 m!5987580))

(declare-fun m!5987582 () Bool)

(assert (=> b!4963239 m!5987582))

(declare-fun m!5987584 () Bool)

(assert (=> b!4963239 m!5987584))

(assert (=> b!4963239 m!5987576))

(assert (=> b!4963239 m!5987216))

(declare-fun m!5987586 () Bool)

(assert (=> b!4963239 m!5987586))

(declare-fun m!5987588 () Bool)

(assert (=> b!4963239 m!5987588))

(assert (=> b!4963239 m!5987586))

(assert (=> bm!346081 m!5987460))

(declare-fun m!5987590 () Bool)

(assert (=> bm!346082 m!5987590))

(declare-fun m!5987592 () Bool)

(assert (=> bm!346083 m!5987592))

(declare-fun m!5987594 () Bool)

(assert (=> d!1596807 m!5987594))

(declare-fun m!5987596 () Bool)

(assert (=> d!1596807 m!5987596))

(declare-fun m!5987598 () Bool)

(assert (=> d!1596807 m!5987598))

(declare-fun m!5987600 () Bool)

(assert (=> d!1596807 m!5987600))

(declare-fun m!5987602 () Bool)

(assert (=> d!1596807 m!5987602))

(assert (=> d!1596807 m!5987600))

(declare-fun m!5987604 () Bool)

(assert (=> d!1596807 m!5987604))

(assert (=> d!1596807 m!5987458))

(assert (=> d!1596807 m!5987572))

(assert (=> b!4962843 d!1596807))

(declare-fun d!1596809 () Bool)

(declare-fun lt!2049210 () Int)

(assert (=> d!1596809 (>= lt!2049210 0)))

(declare-fun e!3102426 () Int)

(assert (=> d!1596809 (= lt!2049210 e!3102426)))

(declare-fun c!846781 () Bool)

(assert (=> d!1596809 (= c!846781 (is-Nil!57424 Nil!57424))))

(assert (=> d!1596809 (= (size!38048 Nil!57424) lt!2049210)))

(declare-fun b!4963246 () Bool)

(assert (=> b!4963246 (= e!3102426 0)))

(declare-fun b!4963247 () Bool)

(assert (=> b!4963247 (= e!3102426 (+ 1 (size!38048 (t!368138 Nil!57424))))))

(assert (= (and d!1596809 c!846781) b!4963246))

(assert (= (and d!1596809 (not c!846781)) b!4963247))

(declare-fun m!5987606 () Bool)

(assert (=> b!4963247 m!5987606))

(assert (=> b!4962843 d!1596809))

(declare-fun d!1596811 () Bool)

(declare-fun lt!2049211 () Int)

(assert (=> d!1596811 (>= lt!2049211 0)))

(declare-fun e!3102427 () Int)

(assert (=> d!1596811 (= lt!2049211 e!3102427)))

(declare-fun c!846782 () Bool)

(assert (=> d!1596811 (= c!846782 (is-Nil!57424 lt!2049009))))

(assert (=> d!1596811 (= (size!38048 lt!2049009) lt!2049211)))

(declare-fun b!4963248 () Bool)

(assert (=> b!4963248 (= e!3102427 0)))

(declare-fun b!4963249 () Bool)

(assert (=> b!4963249 (= e!3102427 (+ 1 (size!38048 (t!368138 lt!2049009))))))

(assert (= (and d!1596811 c!846782) b!4963248))

(assert (= (and d!1596811 (not c!846782)) b!4963249))

(declare-fun m!5987608 () Bool)

(assert (=> b!4963249 m!5987608))

(assert (=> b!4962843 d!1596811))

(declare-fun d!1596813 () Bool)

(assert (=> d!1596813 (= (isEmpty!30906 lt!2048902) (not (is-Some!14437 lt!2048902)))))

(assert (=> d!1596677 d!1596813))

(declare-fun d!1596815 () Bool)

(assert (=> d!1596815 (= (head!10662 lt!2048901) (h!63872 lt!2048901))))

(assert (=> b!4962865 d!1596815))

(declare-fun d!1596817 () Bool)

(assert (=> d!1596817 true))

(declare-fun order!26171 () Int)

(declare-fun lambda!247268 () Int)

(declare-fun dynLambda!23129 (Int Int) Int)

(assert (=> d!1596817 (< (dynLambda!23121 order!26159 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) (dynLambda!23129 order!26171 lambda!247268))))

(declare-fun Forall2!1283 (Int) Bool)

(assert (=> d!1596817 (= (equivClasses!3542 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) (Forall2!1283 lambda!247268))))

(declare-fun bs!1182818 () Bool)

(assert (= bs!1182818 d!1596817))

(declare-fun m!5987610 () Bool)

(assert (=> bs!1182818 m!5987610))

(assert (=> b!4962794 d!1596817))

(assert (=> b!4962790 d!1596753))

(declare-fun d!1596819 () Bool)

(declare-fun dynLambda!23130 (Int BalanceConc!29708) TokenValue!8697)

(assert (=> d!1596819 (= (apply!13898 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))) (seqFromList!6030 (originalCharacters!8666 (_1!34361 (get!19925 lt!2048952))))) (dynLambda!23130 (toValue!11338 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))) (seqFromList!6030 (originalCharacters!8666 (_1!34361 (get!19925 lt!2048952))))))))

(declare-fun b_lambda!196465 () Bool)

(assert (=> (not b_lambda!196465) (not d!1596819)))

(declare-fun tb!260159 () Bool)

(declare-fun t!368150 () Bool)

(assert (=> (and b!4962713 (= (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))) t!368150) tb!260159))

(declare-fun result!325208 () Bool)

(declare-fun inv!21 (TokenValue!8697) Bool)

(assert (=> tb!260159 (= result!325208 (inv!21 (dynLambda!23130 (toValue!11338 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952))))) (seqFromList!6030 (originalCharacters!8666 (_1!34361 (get!19925 lt!2048952)))))))))

(declare-fun m!5987612 () Bool)

(assert (=> tb!260159 m!5987612))

(assert (=> d!1596819 t!368150))

(declare-fun b_and!347583 () Bool)

(assert (= b_and!347563 (and (=> t!368150 result!325208) b_and!347583)))

(declare-fun tb!260161 () Bool)

(declare-fun t!368152 () Bool)

(assert (=> (and b!4962947 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toValue!11338 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))) t!368152) tb!260161))

(declare-fun result!325212 () Bool)

(assert (= result!325212 result!325208))

(assert (=> d!1596819 t!368152))

(declare-fun b_and!347585 () Bool)

(assert (= b_and!347571 (and (=> t!368152 result!325212) b_and!347585)))

(assert (=> d!1596819 m!5987140))

(declare-fun m!5987614 () Bool)

(assert (=> d!1596819 m!5987614))

(assert (=> b!4962790 d!1596819))

(declare-fun d!1596821 () Bool)

(declare-fun fromListB!2727 (List!57548) BalanceConc!29708)

(assert (=> d!1596821 (= (seqFromList!6030 (originalCharacters!8666 (_1!34361 (get!19925 lt!2048952)))) (fromListB!2727 (originalCharacters!8666 (_1!34361 (get!19925 lt!2048952)))))))

(declare-fun bs!1182819 () Bool)

(assert (= bs!1182819 d!1596821))

(declare-fun m!5987616 () Bool)

(assert (=> bs!1182819 m!5987616))

(assert (=> b!4962790 d!1596821))

(declare-fun b!4963257 () Bool)

(declare-fun e!3102433 () List!57548)

(declare-fun e!3102434 () List!57548)

(assert (=> b!4963257 (= e!3102433 e!3102434)))

(declare-fun c!846784 () Bool)

(assert (=> b!4963257 (= c!846784 (is-Leaf!25158 (c!846705 (_2!34362 lt!2048909))))))

(declare-fun b!4963259 () Bool)

(assert (=> b!4963259 (= e!3102434 (++!12528 (list!18351 (left!41879 (c!846705 (_2!34362 lt!2048909)))) (list!18351 (right!42209 (c!846705 (_2!34362 lt!2048909))))))))

(declare-fun d!1596823 () Bool)

(declare-fun c!846783 () Bool)

(assert (=> d!1596823 (= c!846783 (is-Empty!15139 (c!846705 (_2!34362 lt!2048909))))))

(assert (=> d!1596823 (= (list!18351 (c!846705 (_2!34362 lt!2048909))) e!3102433)))

(declare-fun b!4963258 () Bool)

(assert (=> b!4963258 (= e!3102434 (list!18353 (xs!18465 (c!846705 (_2!34362 lt!2048909)))))))

(declare-fun b!4963256 () Bool)

(assert (=> b!4963256 (= e!3102433 Nil!57424)))

(assert (= (and d!1596823 c!846783) b!4963256))

(assert (= (and d!1596823 (not c!846783)) b!4963257))

(assert (= (and b!4963257 c!846784) b!4963258))

(assert (= (and b!4963257 (not c!846784)) b!4963259))

(declare-fun m!5987618 () Bool)

(assert (=> b!4963259 m!5987618))

(declare-fun m!5987620 () Bool)

(assert (=> b!4963259 m!5987620))

(assert (=> b!4963259 m!5987618))

(assert (=> b!4963259 m!5987620))

(declare-fun m!5987622 () Bool)

(assert (=> b!4963259 m!5987622))

(declare-fun m!5987624 () Bool)

(assert (=> b!4963258 m!5987624))

(assert (=> d!1596671 d!1596823))

(declare-fun d!1596825 () Bool)

(declare-fun res!2118534 () Bool)

(declare-fun e!3102437 () Bool)

(assert (=> d!1596825 (=> (not res!2118534) (not e!3102437))))

(declare-fun size!38052 (Conc!15139) Int)

(assert (=> d!1596825 (= res!2118534 (= (csize!30508 (c!846705 input!1342)) (+ (size!38052 (left!41879 (c!846705 input!1342))) (size!38052 (right!42209 (c!846705 input!1342))))))))

(assert (=> d!1596825 (= (inv!75035 (c!846705 input!1342)) e!3102437)))

(declare-fun b!4963266 () Bool)

(declare-fun res!2118535 () Bool)

(assert (=> b!4963266 (=> (not res!2118535) (not e!3102437))))

(assert (=> b!4963266 (= res!2118535 (and (not (= (left!41879 (c!846705 input!1342)) Empty!15139)) (not (= (right!42209 (c!846705 input!1342)) Empty!15139))))))

(declare-fun b!4963267 () Bool)

(declare-fun res!2118536 () Bool)

(assert (=> b!4963267 (=> (not res!2118536) (not e!3102437))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4963267 (= res!2118536 (= (cheight!15350 (c!846705 input!1342)) (+ (max!0 (height!2009 (left!41879 (c!846705 input!1342))) (height!2009 (right!42209 (c!846705 input!1342)))) 1)))))

(declare-fun b!4963268 () Bool)

(assert (=> b!4963268 (= e!3102437 (<= 0 (cheight!15350 (c!846705 input!1342))))))

(assert (= (and d!1596825 res!2118534) b!4963266))

(assert (= (and b!4963266 res!2118535) b!4963267))

(assert (= (and b!4963267 res!2118536) b!4963268))

(declare-fun m!5987626 () Bool)

(assert (=> d!1596825 m!5987626))

(declare-fun m!5987628 () Bool)

(assert (=> d!1596825 m!5987628))

(declare-fun m!5987630 () Bool)

(assert (=> b!4963267 m!5987630))

(declare-fun m!5987632 () Bool)

(assert (=> b!4963267 m!5987632))

(assert (=> b!4963267 m!5987630))

(assert (=> b!4963267 m!5987632))

(declare-fun m!5987634 () Bool)

(assert (=> b!4963267 m!5987634))

(assert (=> b!4962801 d!1596825))

(declare-fun d!1596827 () Bool)

(declare-fun lt!2049212 () Int)

(assert (=> d!1596827 (>= lt!2049212 0)))

(declare-fun e!3102438 () Int)

(assert (=> d!1596827 (= lt!2049212 e!3102438)))

(declare-fun c!846785 () Bool)

(assert (=> d!1596827 (= c!846785 (is-Nil!57424 (_2!34361 (get!19925 lt!2048952))))))

(assert (=> d!1596827 (= (size!38048 (_2!34361 (get!19925 lt!2048952))) lt!2049212)))

(declare-fun b!4963269 () Bool)

(assert (=> b!4963269 (= e!3102438 0)))

(declare-fun b!4963270 () Bool)

(assert (=> b!4963270 (= e!3102438 (+ 1 (size!38048 (t!368138 (_2!34361 (get!19925 lt!2048952))))))))

(assert (= (and d!1596827 c!846785) b!4963269))

(assert (= (and d!1596827 (not c!846785)) b!4963270))

(declare-fun m!5987636 () Bool)

(assert (=> b!4963270 m!5987636))

(assert (=> b!4962786 d!1596827))

(assert (=> b!4962786 d!1596753))

(assert (=> b!4962786 d!1596765))

(declare-fun b!4963289 () Bool)

(declare-fun e!3102451 () List!57548)

(declare-fun e!3102453 () List!57548)

(assert (=> b!4963289 (= e!3102451 e!3102453)))

(declare-fun c!846796 () Bool)

(assert (=> b!4963289 (= c!846796 (<= (- (size!38048 (list!18349 totalInput!464)) (size!38048 lt!2048901)) 0))))

(declare-fun b!4963290 () Bool)

(declare-fun e!3102450 () Int)

(declare-fun e!3102449 () Int)

(assert (=> b!4963290 (= e!3102450 e!3102449)))

(declare-fun call!346095 () Int)

(declare-fun c!846794 () Bool)

(assert (=> b!4963290 (= c!846794 (>= (- (size!38048 (list!18349 totalInput!464)) (size!38048 lt!2048901)) call!346095))))

(declare-fun b!4963291 () Bool)

(declare-fun e!3102452 () Bool)

(declare-fun lt!2049215 () List!57548)

(assert (=> b!4963291 (= e!3102452 (= (size!38048 lt!2049215) e!3102450))))

(declare-fun c!846795 () Bool)

(assert (=> b!4963291 (= c!846795 (<= (- (size!38048 (list!18349 totalInput!464)) (size!38048 lt!2048901)) 0))))

(declare-fun b!4963292 () Bool)

(assert (=> b!4963292 (= e!3102453 (list!18349 totalInput!464))))

(declare-fun b!4963293 () Bool)

(assert (=> b!4963293 (= e!3102449 0)))

(declare-fun b!4963294 () Bool)

(assert (=> b!4963294 (= e!3102450 call!346095)))

(declare-fun d!1596829 () Bool)

(assert (=> d!1596829 e!3102452))

(declare-fun res!2118539 () Bool)

(assert (=> d!1596829 (=> (not res!2118539) (not e!3102452))))

(declare-fun content!10177 (List!57548) (Set C!27490))

(assert (=> d!1596829 (= res!2118539 (set.subset (content!10177 lt!2049215) (content!10177 (list!18349 totalInput!464))))))

(assert (=> d!1596829 (= lt!2049215 e!3102451)))

(declare-fun c!846797 () Bool)

(assert (=> d!1596829 (= c!846797 (is-Nil!57424 (list!18349 totalInput!464)))))

(assert (=> d!1596829 (= (drop!2343 (list!18349 totalInput!464) (- (size!38048 (list!18349 totalInput!464)) (size!38048 lt!2048901))) lt!2049215)))

(declare-fun b!4963295 () Bool)

(assert (=> b!4963295 (= e!3102451 Nil!57424)))

(declare-fun bm!346090 () Bool)

(assert (=> bm!346090 (= call!346095 (size!38048 (list!18349 totalInput!464)))))

(declare-fun b!4963296 () Bool)

(assert (=> b!4963296 (= e!3102449 (- call!346095 (- (size!38048 (list!18349 totalInput!464)) (size!38048 lt!2048901))))))

(declare-fun b!4963297 () Bool)

(assert (=> b!4963297 (= e!3102453 (drop!2343 (t!368138 (list!18349 totalInput!464)) (- (- (size!38048 (list!18349 totalInput!464)) (size!38048 lt!2048901)) 1)))))

(assert (= (and d!1596829 c!846797) b!4963295))

(assert (= (and d!1596829 (not c!846797)) b!4963289))

(assert (= (and b!4963289 c!846796) b!4963292))

(assert (= (and b!4963289 (not c!846796)) b!4963297))

(assert (= (and d!1596829 res!2118539) b!4963291))

(assert (= (and b!4963291 c!846795) b!4963294))

(assert (= (and b!4963291 (not c!846795)) b!4963290))

(assert (= (and b!4963290 c!846794) b!4963293))

(assert (= (and b!4963290 (not c!846794)) b!4963296))

(assert (= (or b!4963294 b!4963290 b!4963296) bm!346090))

(declare-fun m!5987638 () Bool)

(assert (=> b!4963291 m!5987638))

(declare-fun m!5987640 () Bool)

(assert (=> d!1596829 m!5987640))

(assert (=> d!1596829 m!5987036))

(declare-fun m!5987642 () Bool)

(assert (=> d!1596829 m!5987642))

(assert (=> bm!346090 m!5987036))

(assert (=> bm!346090 m!5987252))

(declare-fun m!5987644 () Bool)

(assert (=> b!4963297 m!5987644))

(assert (=> d!1596711 d!1596829))

(assert (=> d!1596711 d!1596763))

(assert (=> d!1596711 d!1596765))

(declare-fun d!1596831 () Bool)

(assert (=> d!1596831 (= (isEmpty!30905 lt!2048952) (not (is-Some!14436 lt!2048952)))))

(assert (=> d!1596657 d!1596831))

(assert (=> d!1596657 d!1596703))

(assert (=> d!1596657 d!1596705))

(assert (=> d!1596657 d!1596709))

(declare-fun d!1596833 () Bool)

(declare-fun res!2118540 () Bool)

(declare-fun e!3102454 () Bool)

(assert (=> d!1596833 (=> (not res!2118540) (not e!3102454))))

(assert (=> d!1596833 (= res!2118540 (<= (size!38048 (list!18353 (xs!18465 (c!846705 input!1342)))) 512))))

(assert (=> d!1596833 (= (inv!75036 (c!846705 input!1342)) e!3102454)))

(declare-fun b!4963298 () Bool)

(declare-fun res!2118541 () Bool)

(assert (=> b!4963298 (=> (not res!2118541) (not e!3102454))))

(assert (=> b!4963298 (= res!2118541 (= (csize!30509 (c!846705 input!1342)) (size!38048 (list!18353 (xs!18465 (c!846705 input!1342))))))))

(declare-fun b!4963299 () Bool)

(assert (=> b!4963299 (= e!3102454 (and (> (csize!30509 (c!846705 input!1342)) 0) (<= (csize!30509 (c!846705 input!1342)) 512)))))

(assert (= (and d!1596833 res!2118540) b!4963298))

(assert (= (and b!4963298 res!2118541) b!4963299))

(declare-fun m!5987646 () Bool)

(assert (=> d!1596833 m!5987646))

(assert (=> d!1596833 m!5987646))

(declare-fun m!5987648 () Bool)

(assert (=> d!1596833 m!5987648))

(assert (=> b!4963298 m!5987646))

(assert (=> b!4963298 m!5987646))

(assert (=> b!4963298 m!5987648))

(assert (=> b!4962803 d!1596833))

(declare-fun b!4963310 () Bool)

(declare-fun res!2118546 () Bool)

(declare-fun e!3102459 () Bool)

(assert (=> b!4963310 (=> (not res!2118546) (not e!3102459))))

(declare-fun lt!2049218 () List!57548)

(assert (=> b!4963310 (= res!2118546 (= (size!38048 lt!2049218) (+ (size!38048 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))) (size!38048 (_2!34361 (get!19925 lt!2048952))))))))

(declare-fun b!4963309 () Bool)

(declare-fun e!3102460 () List!57548)

(assert (=> b!4963309 (= e!3102460 (Cons!57424 (h!63872 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))) (++!12528 (t!368138 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))) (_2!34361 (get!19925 lt!2048952)))))))

(declare-fun b!4963308 () Bool)

(assert (=> b!4963308 (= e!3102460 (_2!34361 (get!19925 lt!2048952)))))

(declare-fun d!1596835 () Bool)

(assert (=> d!1596835 e!3102459))

(declare-fun res!2118547 () Bool)

(assert (=> d!1596835 (=> (not res!2118547) (not e!3102459))))

(assert (=> d!1596835 (= res!2118547 (= (content!10177 lt!2049218) (set.union (content!10177 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))) (content!10177 (_2!34361 (get!19925 lt!2048952))))))))

(assert (=> d!1596835 (= lt!2049218 e!3102460)))

(declare-fun c!846800 () Bool)

(assert (=> d!1596835 (= c!846800 (is-Nil!57424 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952))))))))

(assert (=> d!1596835 (= (++!12528 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952)))) (_2!34361 (get!19925 lt!2048952))) lt!2049218)))

(declare-fun b!4963311 () Bool)

(assert (=> b!4963311 (= e!3102459 (or (not (= (_2!34361 (get!19925 lt!2048952)) Nil!57424)) (= lt!2049218 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2048952)))))))))

(assert (= (and d!1596835 c!846800) b!4963308))

(assert (= (and d!1596835 (not c!846800)) b!4963309))

(assert (= (and d!1596835 res!2118547) b!4963310))

(assert (= (and b!4963310 res!2118546) b!4963311))

(declare-fun m!5987650 () Bool)

(assert (=> b!4963310 m!5987650))

(assert (=> b!4963310 m!5987132))

(declare-fun m!5987652 () Bool)

(assert (=> b!4963310 m!5987652))

(assert (=> b!4963310 m!5987124))

(declare-fun m!5987654 () Bool)

(assert (=> b!4963309 m!5987654))

(declare-fun m!5987656 () Bool)

(assert (=> d!1596835 m!5987656))

(assert (=> d!1596835 m!5987132))

(declare-fun m!5987658 () Bool)

(assert (=> d!1596835 m!5987658))

(declare-fun m!5987660 () Bool)

(assert (=> d!1596835 m!5987660))

(assert (=> b!4962788 d!1596835))

(assert (=> b!4962788 d!1596749))

(assert (=> b!4962788 d!1596751))

(assert (=> b!4962788 d!1596753))

(declare-fun d!1596837 () Bool)

(assert (=> d!1596837 (= (isEmpty!30905 lt!2048905) (not (is-Some!14436 lt!2048905)))))

(assert (=> d!1596675 d!1596837))

(declare-fun bs!1182820 () Bool)

(declare-fun d!1596839 () Bool)

(assert (= bs!1182820 (and d!1596839 d!1596709)))

(declare-fun lambda!247269 () Int)

(assert (=> bs!1182820 (= lambda!247269 lambda!247257)))

(assert (=> d!1596839 true))

(declare-fun lt!2049219 () Bool)

(assert (=> d!1596839 (= lt!2049219 (forall!13322 (t!368139 rulesArg!259) lambda!247269))))

(declare-fun e!3102462 () Bool)

(assert (=> d!1596839 (= lt!2049219 e!3102462)))

(declare-fun res!2118549 () Bool)

(assert (=> d!1596839 (=> res!2118549 e!3102462)))

(assert (=> d!1596839 (= res!2118549 (not (is-Cons!57425 (t!368139 rulesArg!259))))))

(assert (=> d!1596839 (= (rulesValidInductive!3290 thiss!15247 (t!368139 rulesArg!259)) lt!2049219)))

(declare-fun b!4963312 () Bool)

(declare-fun e!3102461 () Bool)

(assert (=> b!4963312 (= e!3102462 e!3102461)))

(declare-fun res!2118548 () Bool)

(assert (=> b!4963312 (=> (not res!2118548) (not e!3102461))))

(assert (=> b!4963312 (= res!2118548 (ruleValid!3796 thiss!15247 (h!63873 (t!368139 rulesArg!259))))))

(declare-fun b!4963313 () Bool)

(assert (=> b!4963313 (= e!3102461 (rulesValidInductive!3290 thiss!15247 (t!368139 (t!368139 rulesArg!259))))))

(assert (= (and d!1596839 (not res!2118549)) b!4963312))

(assert (= (and b!4963312 res!2118548) b!4963313))

(declare-fun m!5987662 () Bool)

(assert (=> d!1596839 m!5987662))

(declare-fun m!5987664 () Bool)

(assert (=> b!4963312 m!5987664))

(declare-fun m!5987666 () Bool)

(assert (=> b!4963313 m!5987666))

(assert (=> b!4962876 d!1596839))

(declare-fun d!1596841 () Bool)

(declare-fun res!2118550 () Bool)

(declare-fun e!3102463 () Bool)

(assert (=> d!1596841 (=> (not res!2118550) (not e!3102463))))

(assert (=> d!1596841 (= res!2118550 (= (csize!30508 (c!846705 totalInput!464)) (+ (size!38052 (left!41879 (c!846705 totalInput!464))) (size!38052 (right!42209 (c!846705 totalInput!464))))))))

(assert (=> d!1596841 (= (inv!75035 (c!846705 totalInput!464)) e!3102463)))

(declare-fun b!4963314 () Bool)

(declare-fun res!2118551 () Bool)

(assert (=> b!4963314 (=> (not res!2118551) (not e!3102463))))

(assert (=> b!4963314 (= res!2118551 (and (not (= (left!41879 (c!846705 totalInput!464)) Empty!15139)) (not (= (right!42209 (c!846705 totalInput!464)) Empty!15139))))))

(declare-fun b!4963315 () Bool)

(declare-fun res!2118552 () Bool)

(assert (=> b!4963315 (=> (not res!2118552) (not e!3102463))))

(assert (=> b!4963315 (= res!2118552 (= (cheight!15350 (c!846705 totalInput!464)) (+ (max!0 (height!2009 (left!41879 (c!846705 totalInput!464))) (height!2009 (right!42209 (c!846705 totalInput!464)))) 1)))))

(declare-fun b!4963316 () Bool)

(assert (=> b!4963316 (= e!3102463 (<= 0 (cheight!15350 (c!846705 totalInput!464))))))

(assert (= (and d!1596841 res!2118550) b!4963314))

(assert (= (and b!4963314 res!2118551) b!4963315))

(assert (= (and b!4963315 res!2118552) b!4963316))

(declare-fun m!5987668 () Bool)

(assert (=> d!1596841 m!5987668))

(declare-fun m!5987670 () Bool)

(assert (=> d!1596841 m!5987670))

(assert (=> b!4963315 m!5987522))

(assert (=> b!4963315 m!5987524))

(assert (=> b!4963315 m!5987522))

(assert (=> b!4963315 m!5987524))

(declare-fun m!5987672 () Bool)

(assert (=> b!4963315 m!5987672))

(assert (=> b!4962868 d!1596841))

(declare-fun b!4963317 () Bool)

(declare-fun e!3102464 () Bool)

(assert (=> b!4963317 (= e!3102464 (not (isEmpty!30913 (right!42209 (c!846705 input!1342)))))))

(declare-fun d!1596843 () Bool)

(declare-fun res!2118557 () Bool)

(declare-fun e!3102465 () Bool)

(assert (=> d!1596843 (=> res!2118557 e!3102465)))

(assert (=> d!1596843 (= res!2118557 (not (is-Node!15139 (c!846705 input!1342))))))

(assert (=> d!1596843 (= (isBalanced!4196 (c!846705 input!1342)) e!3102465)))

(declare-fun b!4963318 () Bool)

(declare-fun res!2118554 () Bool)

(assert (=> b!4963318 (=> (not res!2118554) (not e!3102464))))

(assert (=> b!4963318 (= res!2118554 (not (isEmpty!30913 (left!41879 (c!846705 input!1342)))))))

(declare-fun b!4963319 () Bool)

(assert (=> b!4963319 (= e!3102465 e!3102464)))

(declare-fun res!2118555 () Bool)

(assert (=> b!4963319 (=> (not res!2118555) (not e!3102464))))

(assert (=> b!4963319 (= res!2118555 (<= (- 1) (- (height!2009 (left!41879 (c!846705 input!1342))) (height!2009 (right!42209 (c!846705 input!1342))))))))

(declare-fun b!4963320 () Bool)

(declare-fun res!2118558 () Bool)

(assert (=> b!4963320 (=> (not res!2118558) (not e!3102464))))

(assert (=> b!4963320 (= res!2118558 (<= (- (height!2009 (left!41879 (c!846705 input!1342))) (height!2009 (right!42209 (c!846705 input!1342)))) 1))))

(declare-fun b!4963321 () Bool)

(declare-fun res!2118556 () Bool)

(assert (=> b!4963321 (=> (not res!2118556) (not e!3102464))))

(assert (=> b!4963321 (= res!2118556 (isBalanced!4196 (left!41879 (c!846705 input!1342))))))

(declare-fun b!4963322 () Bool)

(declare-fun res!2118553 () Bool)

(assert (=> b!4963322 (=> (not res!2118553) (not e!3102464))))

(assert (=> b!4963322 (= res!2118553 (isBalanced!4196 (right!42209 (c!846705 input!1342))))))

(assert (= (and d!1596843 (not res!2118557)) b!4963319))

(assert (= (and b!4963319 res!2118555) b!4963320))

(assert (= (and b!4963320 res!2118558) b!4963321))

(assert (= (and b!4963321 res!2118556) b!4963322))

(assert (= (and b!4963322 res!2118553) b!4963318))

(assert (= (and b!4963318 res!2118554) b!4963317))

(declare-fun m!5987674 () Bool)

(assert (=> b!4963321 m!5987674))

(assert (=> b!4963320 m!5987630))

(assert (=> b!4963320 m!5987632))

(declare-fun m!5987676 () Bool)

(assert (=> b!4963317 m!5987676))

(assert (=> b!4963319 m!5987630))

(assert (=> b!4963319 m!5987632))

(declare-fun m!5987678 () Bool)

(assert (=> b!4963318 m!5987678))

(declare-fun m!5987680 () Bool)

(assert (=> b!4963322 m!5987680))

(assert (=> d!1596665 d!1596843))

(declare-fun d!1596845 () Bool)

(declare-fun c!846801 () Bool)

(assert (=> d!1596845 (= c!846801 (is-Node!15139 (left!41879 (c!846705 input!1342))))))

(declare-fun e!3102466 () Bool)

(assert (=> d!1596845 (= (inv!75030 (left!41879 (c!846705 input!1342))) e!3102466)))

(declare-fun b!4963323 () Bool)

(assert (=> b!4963323 (= e!3102466 (inv!75035 (left!41879 (c!846705 input!1342))))))

(declare-fun b!4963324 () Bool)

(declare-fun e!3102467 () Bool)

(assert (=> b!4963324 (= e!3102466 e!3102467)))

(declare-fun res!2118559 () Bool)

(assert (=> b!4963324 (= res!2118559 (not (is-Leaf!25158 (left!41879 (c!846705 input!1342)))))))

(assert (=> b!4963324 (=> res!2118559 e!3102467)))

(declare-fun b!4963325 () Bool)

(assert (=> b!4963325 (= e!3102467 (inv!75036 (left!41879 (c!846705 input!1342))))))

(assert (= (and d!1596845 c!846801) b!4963323))

(assert (= (and d!1596845 (not c!846801)) b!4963324))

(assert (= (and b!4963324 (not res!2118559)) b!4963325))

(declare-fun m!5987682 () Bool)

(assert (=> b!4963323 m!5987682))

(declare-fun m!5987684 () Bool)

(assert (=> b!4963325 m!5987684))

(assert (=> b!4962908 d!1596845))

(declare-fun d!1596847 () Bool)

(declare-fun c!846802 () Bool)

(assert (=> d!1596847 (= c!846802 (is-Node!15139 (right!42209 (c!846705 input!1342))))))

(declare-fun e!3102468 () Bool)

(assert (=> d!1596847 (= (inv!75030 (right!42209 (c!846705 input!1342))) e!3102468)))

(declare-fun b!4963326 () Bool)

(assert (=> b!4963326 (= e!3102468 (inv!75035 (right!42209 (c!846705 input!1342))))))

(declare-fun b!4963327 () Bool)

(declare-fun e!3102469 () Bool)

(assert (=> b!4963327 (= e!3102468 e!3102469)))

(declare-fun res!2118560 () Bool)

(assert (=> b!4963327 (= res!2118560 (not (is-Leaf!25158 (right!42209 (c!846705 input!1342)))))))

(assert (=> b!4963327 (=> res!2118560 e!3102469)))

(declare-fun b!4963328 () Bool)

(assert (=> b!4963328 (= e!3102469 (inv!75036 (right!42209 (c!846705 input!1342))))))

(assert (= (and d!1596847 c!846802) b!4963326))

(assert (= (and d!1596847 (not c!846802)) b!4963327))

(assert (= (and b!4963327 (not res!2118560)) b!4963328))

(declare-fun m!5987686 () Bool)

(assert (=> b!4963326 m!5987686))

(declare-fun m!5987688 () Bool)

(assert (=> b!4963328 m!5987688))

(assert (=> b!4962908 d!1596847))

(declare-fun lt!2049251 () Option!14437)

(declare-fun d!1596849 () Bool)

(assert (=> d!1596849 (= lt!2049251 (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) lt!2048901))))

(declare-fun e!3102486 () Option!14437)

(assert (=> d!1596849 (= lt!2049251 e!3102486)))

(declare-fun c!846808 () Bool)

(declare-fun lt!2049248 () tuple2!62126)

(assert (=> d!1596849 (= c!846808 (isEmpty!30907 (_1!34366 lt!2049248)))))

(declare-fun findLongestMatchWithZipper!91 (Regex!13620 List!57548) tuple2!62126)

(assert (=> d!1596849 (= lt!2049248 (findLongestMatchWithZipper!91 (regex!8387 (h!63873 rulesArg!259)) lt!2048901))))

(assert (=> d!1596849 (ruleValid!3796 thiss!15247 (h!63873 rulesArg!259))))

(assert (=> d!1596849 (= (maxPrefixOneRuleZipper!292 thiss!15247 (h!63873 rulesArg!259) lt!2048901) lt!2049251)))

(declare-fun b!4963362 () Bool)

(assert (=> b!4963362 (= e!3102486 None!14436)))

(declare-fun b!4963363 () Bool)

(assert (=> b!4963363 (= e!3102486 (Some!14436 (tuple2!62117 (Token!15271 (apply!13898 (transformation!8387 (h!63873 rulesArg!259)) (seqFromList!6030 (_1!34366 lt!2049248))) (h!63873 rulesArg!259) (size!38048 (_1!34366 lt!2049248)) (_1!34366 lt!2049248)) (_2!34366 lt!2049248))))))

(declare-fun lt!2049247 () Unit!148314)

(assert (=> b!4963363 (= lt!2049247 (longestMatchIsAcceptedByMatchOrIsEmpty!1810 (regex!8387 (h!63873 rulesArg!259)) lt!2048901))))

(declare-fun res!2118584 () Bool)

(assert (=> b!4963363 (= res!2118584 (isEmpty!30907 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2048901 lt!2048901 (size!38048 lt!2048901)))))))

(declare-fun e!3102487 () Bool)

(assert (=> b!4963363 (=> res!2118584 e!3102487)))

(assert (=> b!4963363 e!3102487))

(declare-fun lt!2049249 () Unit!148314)

(assert (=> b!4963363 (= lt!2049249 lt!2049247)))

(declare-fun lt!2049252 () Unit!148314)

(assert (=> b!4963363 (= lt!2049252 (lemmaInv!1328 (transformation!8387 (h!63873 rulesArg!259))))))

(declare-fun lt!2049250 () Unit!148314)

(assert (=> b!4963363 (= lt!2049250 (lemmaSemiInverse!2598 (transformation!8387 (h!63873 rulesArg!259)) (seqFromList!6030 (_1!34366 lt!2049248))))))

(declare-fun b!4963364 () Bool)

(assert (=> b!4963364 (= e!3102487 (matchR!6630 (regex!8387 (h!63873 rulesArg!259)) (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2048901 lt!2048901 (size!38048 lt!2048901)))))))

(assert (= (and d!1596849 c!846808) b!4963362))

(assert (= (and d!1596849 (not c!846808)) b!4963363))

(assert (= (and b!4963363 (not res!2118584)) b!4963364))

(assert (=> d!1596849 m!5987128))

(declare-fun m!5987734 () Bool)

(assert (=> d!1596849 m!5987734))

(declare-fun m!5987736 () Bool)

(assert (=> d!1596849 m!5987736))

(assert (=> d!1596849 m!5987198))

(declare-fun m!5987738 () Bool)

(assert (=> b!4963363 m!5987738))

(declare-fun m!5987740 () Bool)

(assert (=> b!4963363 m!5987740))

(assert (=> b!4963363 m!5987738))

(declare-fun m!5987742 () Bool)

(assert (=> b!4963363 m!5987742))

(assert (=> b!4963363 m!5987126))

(assert (=> b!4963363 m!5987208))

(assert (=> b!4963363 m!5987738))

(declare-fun m!5987744 () Bool)

(assert (=> b!4963363 m!5987744))

(declare-fun m!5987746 () Bool)

(assert (=> b!4963363 m!5987746))

(assert (=> b!4963363 m!5987212))

(declare-fun m!5987748 () Bool)

(assert (=> b!4963363 m!5987748))

(assert (=> b!4963363 m!5987208))

(assert (=> b!4963363 m!5987126))

(declare-fun m!5987750 () Bool)

(assert (=> b!4963363 m!5987750))

(assert (=> b!4963364 m!5987208))

(assert (=> b!4963364 m!5987126))

(assert (=> b!4963364 m!5987208))

(assert (=> b!4963364 m!5987126))

(assert (=> b!4963364 m!5987750))

(declare-fun m!5987752 () Bool)

(assert (=> b!4963364 m!5987752))

(assert (=> bm!346052 d!1596849))

(assert (=> b!4962867 d!1596765))

(declare-fun b!4963366 () Bool)

(declare-fun e!3102488 () List!57548)

(declare-fun e!3102489 () List!57548)

(assert (=> b!4963366 (= e!3102488 e!3102489)))

(declare-fun c!846810 () Bool)

(assert (=> b!4963366 (= c!846810 (is-Leaf!25158 (c!846705 totalInput!464)))))

(declare-fun b!4963368 () Bool)

(assert (=> b!4963368 (= e!3102489 (++!12528 (list!18351 (left!41879 (c!846705 totalInput!464))) (list!18351 (right!42209 (c!846705 totalInput!464)))))))

(declare-fun d!1596861 () Bool)

(declare-fun c!846809 () Bool)

(assert (=> d!1596861 (= c!846809 (is-Empty!15139 (c!846705 totalInput!464)))))

(assert (=> d!1596861 (= (list!18351 (c!846705 totalInput!464)) e!3102488)))

(declare-fun b!4963367 () Bool)

(assert (=> b!4963367 (= e!3102489 (list!18353 (xs!18465 (c!846705 totalInput!464))))))

(declare-fun b!4963365 () Bool)

(assert (=> b!4963365 (= e!3102488 Nil!57424)))

(assert (= (and d!1596861 c!846809) b!4963365))

(assert (= (and d!1596861 (not c!846809)) b!4963366))

(assert (= (and b!4963366 c!846810) b!4963367))

(assert (= (and b!4963366 (not c!846810)) b!4963368))

(declare-fun m!5987754 () Bool)

(assert (=> b!4963368 m!5987754))

(declare-fun m!5987756 () Bool)

(assert (=> b!4963368 m!5987756))

(assert (=> b!4963368 m!5987754))

(assert (=> b!4963368 m!5987756))

(declare-fun m!5987758 () Bool)

(assert (=> b!4963368 m!5987758))

(assert (=> b!4963367 m!5987462))

(assert (=> d!1596713 d!1596861))

(declare-fun d!1596863 () Bool)

(assert (=> d!1596863 (= (inv!75037 (xs!18465 (c!846705 input!1342))) (<= (size!38048 (innerList!15227 (xs!18465 (c!846705 input!1342)))) 2147483647))))

(declare-fun bs!1182822 () Bool)

(assert (= bs!1182822 d!1596863))

(declare-fun m!5987760 () Bool)

(assert (=> bs!1182822 m!5987760))

(assert (=> b!4962909 d!1596863))

(assert (=> b!4962705 d!1596673))

(declare-fun call!346096 () Option!14437)

(declare-fun bm!346091 () Bool)

(assert (=> bm!346091 (= call!346096 (maxPrefixOneRule!3623 thiss!15247 (h!63873 (t!368139 rulesArg!259)) lt!2048901))))

(declare-fun b!4963371 () Bool)

(declare-fun e!3102493 () Bool)

(declare-fun e!3102494 () Bool)

(assert (=> b!4963371 (= e!3102493 e!3102494)))

(declare-fun res!2118587 () Bool)

(assert (=> b!4963371 (=> (not res!2118587) (not e!3102494))))

(declare-fun lt!2049256 () Option!14437)

(assert (=> b!4963371 (= res!2118587 (isDefined!11350 lt!2049256))))

(declare-fun b!4963372 () Bool)

(declare-fun e!3102492 () Option!14437)

(declare-fun lt!2049257 () Option!14437)

(declare-fun lt!2049259 () Option!14437)

(assert (=> b!4963372 (= e!3102492 (ite (and (is-None!14436 lt!2049257) (is-None!14436 lt!2049259)) None!14436 (ite (is-None!14436 lt!2049259) lt!2049257 (ite (is-None!14436 lt!2049257) lt!2049259 (ite (>= (size!38046 (_1!34361 (v!50421 lt!2049257))) (size!38046 (_1!34361 (v!50421 lt!2049259)))) lt!2049257 lt!2049259)))))))

(assert (=> b!4963372 (= lt!2049257 call!346096)))

(assert (=> b!4963372 (= lt!2049259 (maxPrefix!4656 thiss!15247 (t!368139 (t!368139 rulesArg!259)) lt!2048901))))

(declare-fun b!4963373 () Bool)

(assert (=> b!4963373 (= e!3102492 call!346096)))

(declare-fun b!4963374 () Bool)

(declare-fun res!2118589 () Bool)

(assert (=> b!4963374 (=> (not res!2118589) (not e!3102494))))

(assert (=> b!4963374 (= res!2118589 (< (size!38048 (_2!34361 (get!19925 lt!2049256))) (size!38048 lt!2048901)))))

(declare-fun d!1596865 () Bool)

(assert (=> d!1596865 e!3102493))

(declare-fun res!2118588 () Bool)

(assert (=> d!1596865 (=> res!2118588 e!3102493)))

(assert (=> d!1596865 (= res!2118588 (isEmpty!30905 lt!2049256))))

(assert (=> d!1596865 (= lt!2049256 e!3102492)))

(declare-fun c!846811 () Bool)

(assert (=> d!1596865 (= c!846811 (and (is-Cons!57425 (t!368139 rulesArg!259)) (is-Nil!57425 (t!368139 (t!368139 rulesArg!259)))))))

(declare-fun lt!2049255 () Unit!148314)

(declare-fun lt!2049258 () Unit!148314)

(assert (=> d!1596865 (= lt!2049255 lt!2049258)))

(assert (=> d!1596865 (isPrefix!5238 lt!2048901 lt!2048901)))

(assert (=> d!1596865 (= lt!2049258 (lemmaIsPrefixRefl!3562 lt!2048901 lt!2048901))))

(assert (=> d!1596865 (rulesValidInductive!3290 thiss!15247 (t!368139 rulesArg!259))))

(assert (=> d!1596865 (= (maxPrefix!4656 thiss!15247 (t!368139 rulesArg!259) lt!2048901) lt!2049256)))

(declare-fun b!4963375 () Bool)

(assert (=> b!4963375 (= e!3102494 (contains!19534 (t!368139 rulesArg!259) (rule!11617 (_1!34361 (get!19925 lt!2049256)))))))

(declare-fun b!4963376 () Bool)

(declare-fun res!2118592 () Bool)

(assert (=> b!4963376 (=> (not res!2118592) (not e!3102494))))

(assert (=> b!4963376 (= res!2118592 (= (++!12528 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2049256)))) (_2!34361 (get!19925 lt!2049256))) lt!2048901))))

(declare-fun b!4963377 () Bool)

(declare-fun res!2118590 () Bool)

(assert (=> b!4963377 (=> (not res!2118590) (not e!3102494))))

(assert (=> b!4963377 (= res!2118590 (= (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2049256)))) (originalCharacters!8666 (_1!34361 (get!19925 lt!2049256)))))))

(declare-fun b!4963378 () Bool)

(declare-fun res!2118591 () Bool)

(assert (=> b!4963378 (=> (not res!2118591) (not e!3102494))))

(assert (=> b!4963378 (= res!2118591 (= (value!268471 (_1!34361 (get!19925 lt!2049256))) (apply!13898 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2049256)))) (seqFromList!6030 (originalCharacters!8666 (_1!34361 (get!19925 lt!2049256)))))))))

(declare-fun b!4963379 () Bool)

(declare-fun res!2118593 () Bool)

(assert (=> b!4963379 (=> (not res!2118593) (not e!3102494))))

(assert (=> b!4963379 (= res!2118593 (matchR!6630 (regex!8387 (rule!11617 (_1!34361 (get!19925 lt!2049256)))) (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2049256))))))))

(assert (= (and d!1596865 c!846811) b!4963373))

(assert (= (and d!1596865 (not c!846811)) b!4963372))

(assert (= (or b!4963373 b!4963372) bm!346091))

(assert (= (and d!1596865 (not res!2118588)) b!4963371))

(assert (= (and b!4963371 res!2118587) b!4963377))

(assert (= (and b!4963377 res!2118590) b!4963374))

(assert (= (and b!4963374 res!2118589) b!4963376))

(assert (= (and b!4963376 res!2118592) b!4963378))

(assert (= (and b!4963378 res!2118591) b!4963379))

(assert (= (and b!4963379 res!2118593) b!4963375))

(declare-fun m!5987762 () Bool)

(assert (=> d!1596865 m!5987762))

(assert (=> d!1596865 m!5987058))

(assert (=> d!1596865 m!5987060))

(assert (=> d!1596865 m!5987250))

(declare-fun m!5987764 () Bool)

(assert (=> b!4963371 m!5987764))

(declare-fun m!5987766 () Bool)

(assert (=> b!4963374 m!5987766))

(declare-fun m!5987768 () Bool)

(assert (=> b!4963374 m!5987768))

(assert (=> b!4963374 m!5987126))

(declare-fun m!5987770 () Bool)

(assert (=> bm!346091 m!5987770))

(assert (=> b!4963379 m!5987766))

(declare-fun m!5987772 () Bool)

(assert (=> b!4963379 m!5987772))

(assert (=> b!4963379 m!5987772))

(declare-fun m!5987774 () Bool)

(assert (=> b!4963379 m!5987774))

(assert (=> b!4963379 m!5987774))

(declare-fun m!5987776 () Bool)

(assert (=> b!4963379 m!5987776))

(assert (=> b!4963375 m!5987766))

(declare-fun m!5987778 () Bool)

(assert (=> b!4963375 m!5987778))

(assert (=> b!4963376 m!5987766))

(assert (=> b!4963376 m!5987772))

(assert (=> b!4963376 m!5987772))

(assert (=> b!4963376 m!5987774))

(assert (=> b!4963376 m!5987774))

(declare-fun m!5987780 () Bool)

(assert (=> b!4963376 m!5987780))

(assert (=> b!4963377 m!5987766))

(assert (=> b!4963377 m!5987772))

(assert (=> b!4963377 m!5987772))

(assert (=> b!4963377 m!5987774))

(assert (=> b!4963378 m!5987766))

(declare-fun m!5987782 () Bool)

(assert (=> b!4963378 m!5987782))

(assert (=> b!4963378 m!5987782))

(declare-fun m!5987784 () Bool)

(assert (=> b!4963378 m!5987784))

(declare-fun m!5987786 () Bool)

(assert (=> b!4963372 m!5987786))

(assert (=> b!4962784 d!1596865))

(declare-fun d!1596867 () Bool)

(assert (=> d!1596867 (= (inv!75037 (xs!18465 (c!846705 totalInput!464))) (<= (size!38048 (innerList!15227 (xs!18465 (c!846705 totalInput!464)))) 2147483647))))

(declare-fun bs!1182823 () Bool)

(assert (= bs!1182823 d!1596867))

(declare-fun m!5987790 () Bool)

(assert (=> bs!1182823 m!5987790))

(assert (=> b!4962926 d!1596867))

(assert (=> b!4962846 d!1596715))

(assert (=> b!4962846 d!1596785))

(assert (=> b!4962846 d!1596793))

(assert (=> b!4962846 d!1596795))

(declare-fun d!1596869 () Bool)

(assert (=> d!1596869 (= (list!18349 (_2!34362 (get!19926 lt!2049002))) (list!18351 (c!846705 (_2!34362 (get!19926 lt!2049002)))))))

(declare-fun bs!1182824 () Bool)

(assert (= bs!1182824 d!1596869))

(declare-fun m!5987792 () Bool)

(assert (=> bs!1182824 m!5987792))

(assert (=> b!4962846 d!1596869))

(declare-fun d!1596871 () Bool)

(declare-fun e!3102510 () Bool)

(assert (=> d!1596871 e!3102510))

(declare-fun res!2118599 () Bool)

(assert (=> d!1596871 (=> res!2118599 e!3102510)))

(assert (=> d!1596871 (= res!2118599 (isEmpty!30907 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))))))

(declare-fun lt!2049268 () Unit!148314)

(declare-fun choose!36645 (Regex!13620 List!57548) Unit!148314)

(assert (=> d!1596871 (= lt!2049268 (choose!36645 (regex!8387 (h!63873 rulesArg!259)) lt!2049009))))

(assert (=> d!1596871 (validRegex!5965 (regex!8387 (h!63873 rulesArg!259)))))

(assert (=> d!1596871 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1810 (regex!8387 (h!63873 rulesArg!259)) lt!2049009) lt!2049268)))

(declare-fun b!4963398 () Bool)

(assert (=> b!4963398 (= e!3102510 (matchR!6630 (regex!8387 (h!63873 rulesArg!259)) (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))))))

(assert (= (and d!1596871 (not res!2118599)) b!4963398))

(assert (=> d!1596871 m!5987216))

(assert (=> d!1596871 m!5987208))

(assert (=> d!1596871 m!5987216))

(assert (=> d!1596871 m!5987218))

(assert (=> d!1596871 m!5987208))

(assert (=> d!1596871 m!5987228))

(assert (=> d!1596871 m!5987458))

(declare-fun m!5987814 () Bool)

(assert (=> d!1596871 m!5987814))

(assert (=> b!4963398 m!5987208))

(assert (=> b!4963398 m!5987216))

(assert (=> b!4963398 m!5987208))

(assert (=> b!4963398 m!5987216))

(assert (=> b!4963398 m!5987218))

(assert (=> b!4963398 m!5987230))

(assert (=> b!4962842 d!1596871))

(declare-fun d!1596887 () Bool)

(assert (=> d!1596887 (= (isEmpty!30907 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))) (is-Nil!57424 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2049009 lt!2049009 (size!38048 lt!2049009)))))))

(assert (=> b!4962842 d!1596887))

(declare-fun bs!1182828 () Bool)

(declare-fun d!1596889 () Bool)

(assert (= bs!1182828 (and d!1596889 d!1596817)))

(declare-fun lambda!247275 () Int)

(assert (=> bs!1182828 (= lambda!247275 lambda!247268)))

(declare-fun b!4963405 () Bool)

(declare-fun e!3102515 () Bool)

(assert (=> b!4963405 (= e!3102515 true)))

(assert (=> d!1596889 e!3102515))

(assert (= d!1596889 b!4963405))

(assert (=> b!4963405 (< (dynLambda!23121 order!26159 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) (dynLambda!23129 order!26171 lambda!247275))))

(assert (=> b!4963405 (< (dynLambda!23123 order!26163 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) (dynLambda!23129 order!26171 lambda!247275))))

(assert (=> d!1596889 (= (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (_1!34365 lt!2049008)) (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))))))

(declare-fun lt!2049275 () Unit!148314)

(declare-fun Forall2of!473 (Int BalanceConc!29708 BalanceConc!29708) Unit!148314)

(assert (=> d!1596889 (= lt!2049275 (Forall2of!473 lambda!247275 (_1!34365 lt!2049008) (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))))))

(assert (=> d!1596889 (= (list!18349 (_1!34365 lt!2049008)) (list!18349 (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))))))

(assert (=> d!1596889 (= (lemmaEqSameImage!1162 (transformation!8387 (h!63873 rulesArg!259)) (_1!34365 lt!2049008) (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))) lt!2049275)))

(declare-fun b_lambda!196475 () Bool)

(assert (=> (not b_lambda!196475) (not d!1596889)))

(declare-fun t!368162 () Bool)

(declare-fun tb!260171 () Bool)

(assert (=> (and b!4962713 (= (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) t!368162) tb!260171))

(declare-fun result!325224 () Bool)

(assert (=> tb!260171 (= result!325224 (inv!21 (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (_1!34365 lt!2049008))))))

(declare-fun m!5987820 () Bool)

(assert (=> tb!260171 m!5987820))

(assert (=> d!1596889 t!368162))

(declare-fun b_and!347599 () Bool)

(assert (= b_and!347583 (and (=> t!368162 result!325224) b_and!347599)))

(declare-fun t!368164 () Bool)

(declare-fun tb!260173 () Bool)

(assert (=> (and b!4962947 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) t!368164) tb!260173))

(declare-fun result!325226 () Bool)

(assert (= result!325226 result!325224))

(assert (=> d!1596889 t!368164))

(declare-fun b_and!347601 () Bool)

(assert (= b_and!347585 (and (=> t!368164 result!325226) b_and!347601)))

(declare-fun b_lambda!196477 () Bool)

(assert (=> (not b_lambda!196477) (not d!1596889)))

(declare-fun t!368166 () Bool)

(declare-fun tb!260175 () Bool)

(assert (=> (and b!4962713 (= (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) t!368166) tb!260175))

(declare-fun result!325228 () Bool)

(assert (=> tb!260175 (= result!325228 (inv!21 (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (seqFromList!6030 (list!18349 (_1!34365 lt!2049008))))))))

(declare-fun m!5987822 () Bool)

(assert (=> tb!260175 m!5987822))

(assert (=> d!1596889 t!368166))

(declare-fun b_and!347603 () Bool)

(assert (= b_and!347599 (and (=> t!368166 result!325228) b_and!347603)))

(declare-fun t!368168 () Bool)

(declare-fun tb!260177 () Bool)

(assert (=> (and b!4962947 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) t!368168) tb!260177))

(declare-fun result!325230 () Bool)

(assert (= result!325230 result!325228))

(assert (=> d!1596889 t!368168))

(declare-fun b_and!347605 () Bool)

(assert (= b_and!347601 (and (=> t!368168 result!325230) b_and!347605)))

(assert (=> d!1596889 m!5987204))

(assert (=> d!1596889 m!5987210))

(declare-fun m!5987824 () Bool)

(assert (=> d!1596889 m!5987824))

(assert (=> d!1596889 m!5987210))

(declare-fun m!5987826 () Bool)

(assert (=> d!1596889 m!5987826))

(assert (=> d!1596889 m!5987210))

(declare-fun m!5987828 () Bool)

(assert (=> d!1596889 m!5987828))

(declare-fun m!5987830 () Bool)

(assert (=> d!1596889 m!5987830))

(assert (=> b!4962842 d!1596889))

(assert (=> b!4962842 d!1596715))

(declare-fun d!1596893 () Bool)

(assert (=> d!1596893 (= (apply!13898 (transformation!8387 (h!63873 rulesArg!259)) (_1!34365 lt!2049008)) (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (_1!34365 lt!2049008)))))

(declare-fun b_lambda!196479 () Bool)

(assert (=> (not b_lambda!196479) (not d!1596893)))

(assert (=> d!1596893 t!368162))

(declare-fun b_and!347607 () Bool)

(assert (= b_and!347603 (and (=> t!368162 result!325224) b_and!347607)))

(assert (=> d!1596893 t!368164))

(declare-fun b_and!347609 () Bool)

(assert (= b_and!347605 (and (=> t!368164 result!325226) b_and!347609)))

(assert (=> d!1596893 m!5987830))

(assert (=> b!4962842 d!1596893))

(declare-fun d!1596895 () Bool)

(declare-fun dynLambda!23131 (Int BalanceConc!29708) Bool)

(assert (=> d!1596895 (dynLambda!23131 lambda!247254 (seqFromList!6030 (list!18349 (_1!34365 lt!2049008))))))

(declare-fun lt!2049283 () Unit!148314)

(declare-fun choose!36646 (Int BalanceConc!29708) Unit!148314)

(assert (=> d!1596895 (= lt!2049283 (choose!36646 lambda!247254 (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))))))

(assert (=> d!1596895 (Forall!1758 lambda!247254)))

(assert (=> d!1596895 (= (ForallOf!1221 lambda!247254 (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))) lt!2049283)))

(declare-fun b_lambda!196483 () Bool)

(assert (=> (not b_lambda!196483) (not d!1596895)))

(declare-fun bs!1182830 () Bool)

(assert (= bs!1182830 d!1596895))

(assert (=> bs!1182830 m!5987210))

(declare-fun m!5987842 () Bool)

(assert (=> bs!1182830 m!5987842))

(assert (=> bs!1182830 m!5987210))

(declare-fun m!5987844 () Bool)

(assert (=> bs!1182830 m!5987844))

(declare-fun m!5987846 () Bool)

(assert (=> bs!1182830 m!5987846))

(assert (=> b!4962842 d!1596895))

(assert (=> b!4962842 d!1596809))

(assert (=> b!4962842 d!1596807))

(declare-fun d!1596903 () Bool)

(declare-fun e!3102524 () Bool)

(assert (=> d!1596903 e!3102524))

(declare-fun res!2118607 () Bool)

(assert (=> d!1596903 (=> (not res!2118607) (not e!3102524))))

(assert (=> d!1596903 (= res!2118607 (semiInverseModEq!3694 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))))))

(declare-fun Unit!148322 () Unit!148314)

(assert (=> d!1596903 (= (lemmaInv!1328 (transformation!8387 (h!63873 rulesArg!259))) Unit!148322)))

(declare-fun b!4963413 () Bool)

(assert (=> b!4963413 (= e!3102524 (equivClasses!3542 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))))))

(assert (= (and d!1596903 res!2118607) b!4963413))

(assert (=> d!1596903 m!5987146))

(assert (=> b!4963413 m!5987148))

(assert (=> b!4962842 d!1596903))

(assert (=> b!4962842 d!1596811))

(declare-fun d!1596905 () Bool)

(declare-fun lt!2049286 () Int)

(assert (=> d!1596905 (= lt!2049286 (size!38048 (list!18349 (_1!34365 lt!2049008))))))

(assert (=> d!1596905 (= lt!2049286 (size!38052 (c!846705 (_1!34365 lt!2049008))))))

(assert (=> d!1596905 (= (size!38049 (_1!34365 lt!2049008)) lt!2049286)))

(declare-fun bs!1182831 () Bool)

(assert (= bs!1182831 d!1596905))

(assert (=> bs!1182831 m!5987204))

(assert (=> bs!1182831 m!5987204))

(declare-fun m!5987848 () Bool)

(assert (=> bs!1182831 m!5987848))

(declare-fun m!5987850 () Bool)

(assert (=> bs!1182831 m!5987850))

(assert (=> b!4962842 d!1596905))

(declare-fun d!1596907 () Bool)

(assert (=> d!1596907 (= (list!18349 (_1!34365 lt!2049008)) (list!18351 (c!846705 (_1!34365 lt!2049008))))))

(declare-fun bs!1182832 () Bool)

(assert (= bs!1182832 d!1596907))

(declare-fun m!5987852 () Bool)

(assert (=> bs!1182832 m!5987852))

(assert (=> b!4962842 d!1596907))

(declare-fun d!1596909 () Bool)

(assert (=> d!1596909 (dynLambda!23131 lambda!247254 (_1!34365 lt!2049008))))

(declare-fun lt!2049287 () Unit!148314)

(assert (=> d!1596909 (= lt!2049287 (choose!36646 lambda!247254 (_1!34365 lt!2049008)))))

(assert (=> d!1596909 (Forall!1758 lambda!247254)))

(assert (=> d!1596909 (= (ForallOf!1221 lambda!247254 (_1!34365 lt!2049008)) lt!2049287)))

(declare-fun b_lambda!196485 () Bool)

(assert (=> (not b_lambda!196485) (not d!1596909)))

(declare-fun bs!1182833 () Bool)

(assert (= bs!1182833 d!1596909))

(declare-fun m!5987854 () Bool)

(assert (=> bs!1182833 m!5987854))

(declare-fun m!5987856 () Bool)

(assert (=> bs!1182833 m!5987856))

(assert (=> bs!1182833 m!5987846))

(assert (=> b!4962842 d!1596909))

(declare-fun d!1596911 () Bool)

(assert (=> d!1596911 (= (seqFromList!6030 (list!18349 (_1!34365 lt!2049008))) (fromListB!2727 (list!18349 (_1!34365 lt!2049008))))))

(declare-fun bs!1182834 () Bool)

(assert (= bs!1182834 d!1596911))

(assert (=> bs!1182834 m!5987204))

(declare-fun m!5987858 () Bool)

(assert (=> bs!1182834 m!5987858))

(assert (=> b!4962842 d!1596911))

(declare-fun b!4963414 () Bool)

(declare-fun res!2118609 () Bool)

(declare-fun e!3102528 () Bool)

(assert (=> b!4963414 (=> (not res!2118609) (not e!3102528))))

(declare-fun lt!2049289 () Option!14437)

(assert (=> b!4963414 (= res!2118609 (= (value!268471 (_1!34361 (get!19925 lt!2049289))) (apply!13898 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2049289)))) (seqFromList!6030 (originalCharacters!8666 (_1!34361 (get!19925 lt!2049289)))))))))

(declare-fun b!4963415 () Bool)

(declare-fun res!2118610 () Bool)

(assert (=> b!4963415 (=> (not res!2118610) (not e!3102528))))

(assert (=> b!4963415 (= res!2118610 (= (rule!11617 (_1!34361 (get!19925 lt!2049289))) (h!63873 rulesArg!259)))))

(declare-fun b!4963416 () Bool)

(declare-fun res!2118614 () Bool)

(assert (=> b!4963416 (=> (not res!2118614) (not e!3102528))))

(assert (=> b!4963416 (= res!2118614 (< (size!38048 (_2!34361 (get!19925 lt!2049289))) (size!38048 lt!2048901)))))

(declare-fun d!1596913 () Bool)

(declare-fun e!3102526 () Bool)

(assert (=> d!1596913 e!3102526))

(declare-fun res!2118608 () Bool)

(assert (=> d!1596913 (=> res!2118608 e!3102526)))

(assert (=> d!1596913 (= res!2118608 (isEmpty!30905 lt!2049289))))

(declare-fun e!3102527 () Option!14437)

(assert (=> d!1596913 (= lt!2049289 e!3102527)))

(declare-fun c!846816 () Bool)

(declare-fun lt!2049290 () tuple2!62126)

(assert (=> d!1596913 (= c!846816 (isEmpty!30907 (_1!34366 lt!2049290)))))

(assert (=> d!1596913 (= lt!2049290 (findLongestMatch!1693 (regex!8387 (h!63873 rulesArg!259)) lt!2048901))))

(assert (=> d!1596913 (ruleValid!3796 thiss!15247 (h!63873 rulesArg!259))))

(assert (=> d!1596913 (= (maxPrefixOneRule!3623 thiss!15247 (h!63873 rulesArg!259) lt!2048901) lt!2049289)))

(declare-fun b!4963417 () Bool)

(assert (=> b!4963417 (= e!3102526 e!3102528)))

(declare-fun res!2118612 () Bool)

(assert (=> b!4963417 (=> (not res!2118612) (not e!3102528))))

(assert (=> b!4963417 (= res!2118612 (matchR!6630 (regex!8387 (h!63873 rulesArg!259)) (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2049289))))))))

(declare-fun b!4963418 () Bool)

(assert (=> b!4963418 (= e!3102527 None!14436)))

(declare-fun b!4963419 () Bool)

(declare-fun res!2118611 () Bool)

(assert (=> b!4963419 (=> (not res!2118611) (not e!3102528))))

(assert (=> b!4963419 (= res!2118611 (= (++!12528 (list!18349 (charsOf!5433 (_1!34361 (get!19925 lt!2049289)))) (_2!34361 (get!19925 lt!2049289))) lt!2048901))))

(declare-fun b!4963420 () Bool)

(assert (=> b!4963420 (= e!3102528 (= (size!38046 (_1!34361 (get!19925 lt!2049289))) (size!38048 (originalCharacters!8666 (_1!34361 (get!19925 lt!2049289))))))))

(declare-fun b!4963421 () Bool)

(declare-fun e!3102525 () Bool)

(assert (=> b!4963421 (= e!3102525 (matchR!6630 (regex!8387 (h!63873 rulesArg!259)) (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2048901 lt!2048901 (size!38048 lt!2048901)))))))

(declare-fun b!4963422 () Bool)

(assert (=> b!4963422 (= e!3102527 (Some!14436 (tuple2!62117 (Token!15271 (apply!13898 (transformation!8387 (h!63873 rulesArg!259)) (seqFromList!6030 (_1!34366 lt!2049290))) (h!63873 rulesArg!259) (size!38049 (seqFromList!6030 (_1!34366 lt!2049290))) (_1!34366 lt!2049290)) (_2!34366 lt!2049290))))))

(declare-fun lt!2049291 () Unit!148314)

(assert (=> b!4963422 (= lt!2049291 (longestMatchIsAcceptedByMatchOrIsEmpty!1810 (regex!8387 (h!63873 rulesArg!259)) lt!2048901))))

(declare-fun res!2118613 () Bool)

(assert (=> b!4963422 (= res!2118613 (isEmpty!30907 (_1!34366 (findLongestMatchInner!1849 (regex!8387 (h!63873 rulesArg!259)) Nil!57424 (size!38048 Nil!57424) lt!2048901 lt!2048901 (size!38048 lt!2048901)))))))

(assert (=> b!4963422 (=> res!2118613 e!3102525)))

(assert (=> b!4963422 e!3102525))

(declare-fun lt!2049288 () Unit!148314)

(assert (=> b!4963422 (= lt!2049288 lt!2049291)))

(declare-fun lt!2049292 () Unit!148314)

(assert (=> b!4963422 (= lt!2049292 (lemmaSemiInverse!2598 (transformation!8387 (h!63873 rulesArg!259)) (seqFromList!6030 (_1!34366 lt!2049290))))))

(assert (= (and d!1596913 c!846816) b!4963418))

(assert (= (and d!1596913 (not c!846816)) b!4963422))

(assert (= (and b!4963422 (not res!2118613)) b!4963421))

(assert (= (and d!1596913 (not res!2118608)) b!4963417))

(assert (= (and b!4963417 res!2118612) b!4963419))

(assert (= (and b!4963419 res!2118611) b!4963416))

(assert (= (and b!4963416 res!2118614) b!4963415))

(assert (= (and b!4963415 res!2118610) b!4963414))

(assert (= (and b!4963414 res!2118609) b!4963420))

(declare-fun m!5987860 () Bool)

(assert (=> b!4963416 m!5987860))

(declare-fun m!5987862 () Bool)

(assert (=> b!4963416 m!5987862))

(assert (=> b!4963416 m!5987126))

(assert (=> b!4963417 m!5987860))

(declare-fun m!5987864 () Bool)

(assert (=> b!4963417 m!5987864))

(assert (=> b!4963417 m!5987864))

(declare-fun m!5987866 () Bool)

(assert (=> b!4963417 m!5987866))

(assert (=> b!4963417 m!5987866))

(declare-fun m!5987868 () Bool)

(assert (=> b!4963417 m!5987868))

(assert (=> b!4963419 m!5987860))

(assert (=> b!4963419 m!5987864))

(assert (=> b!4963419 m!5987864))

(assert (=> b!4963419 m!5987866))

(assert (=> b!4963419 m!5987866))

(declare-fun m!5987870 () Bool)

(assert (=> b!4963419 m!5987870))

(assert (=> b!4963420 m!5987860))

(declare-fun m!5987872 () Bool)

(assert (=> b!4963420 m!5987872))

(assert (=> b!4963421 m!5987208))

(assert (=> b!4963421 m!5987126))

(assert (=> b!4963421 m!5987208))

(assert (=> b!4963421 m!5987126))

(assert (=> b!4963421 m!5987750))

(assert (=> b!4963421 m!5987752))

(assert (=> b!4963415 m!5987860))

(declare-fun m!5987874 () Bool)

(assert (=> b!4963422 m!5987874))

(declare-fun m!5987876 () Bool)

(assert (=> b!4963422 m!5987876))

(assert (=> b!4963422 m!5987208))

(assert (=> b!4963422 m!5987744))

(assert (=> b!4963422 m!5987208))

(assert (=> b!4963422 m!5987126))

(assert (=> b!4963422 m!5987750))

(assert (=> b!4963422 m!5987874))

(declare-fun m!5987878 () Bool)

(assert (=> b!4963422 m!5987878))

(assert (=> b!4963422 m!5987126))

(assert (=> b!4963422 m!5987874))

(assert (=> b!4963422 m!5987874))

(declare-fun m!5987880 () Bool)

(assert (=> b!4963422 m!5987880))

(assert (=> b!4963422 m!5987748))

(assert (=> b!4963414 m!5987860))

(declare-fun m!5987882 () Bool)

(assert (=> b!4963414 m!5987882))

(assert (=> b!4963414 m!5987882))

(declare-fun m!5987884 () Bool)

(assert (=> b!4963414 m!5987884))

(declare-fun m!5987886 () Bool)

(assert (=> d!1596913 m!5987886))

(declare-fun m!5987888 () Bool)

(assert (=> d!1596913 m!5987888))

(declare-fun m!5987890 () Bool)

(assert (=> d!1596913 m!5987890))

(assert (=> d!1596913 m!5987198))

(assert (=> bm!346049 d!1596913))

(declare-fun b!4963424 () Bool)

(declare-fun e!3102529 () List!57548)

(declare-fun e!3102530 () List!57548)

(assert (=> b!4963424 (= e!3102529 e!3102530)))

(declare-fun c!846818 () Bool)

(assert (=> b!4963424 (= c!846818 (is-Leaf!25158 (c!846705 input!1342)))))

(declare-fun b!4963426 () Bool)

(assert (=> b!4963426 (= e!3102530 (++!12528 (list!18351 (left!41879 (c!846705 input!1342))) (list!18351 (right!42209 (c!846705 input!1342)))))))

(declare-fun d!1596915 () Bool)

(declare-fun c!846817 () Bool)

(assert (=> d!1596915 (= c!846817 (is-Empty!15139 (c!846705 input!1342)))))

(assert (=> d!1596915 (= (list!18351 (c!846705 input!1342)) e!3102529)))

(declare-fun b!4963425 () Bool)

(assert (=> b!4963425 (= e!3102530 (list!18353 (xs!18465 (c!846705 input!1342))))))

(declare-fun b!4963423 () Bool)

(assert (=> b!4963423 (= e!3102529 Nil!57424)))

(assert (= (and d!1596915 c!846817) b!4963423))

(assert (= (and d!1596915 (not c!846817)) b!4963424))

(assert (= (and b!4963424 c!846818) b!4963425))

(assert (= (and b!4963424 (not c!846818)) b!4963426))

(declare-fun m!5987892 () Bool)

(assert (=> b!4963426 m!5987892))

(declare-fun m!5987894 () Bool)

(assert (=> b!4963426 m!5987894))

(assert (=> b!4963426 m!5987892))

(assert (=> b!4963426 m!5987894))

(declare-fun m!5987896 () Bool)

(assert (=> b!4963426 m!5987896))

(assert (=> b!4963425 m!5987646))

(assert (=> d!1596715 d!1596915))

(declare-fun b!4963427 () Bool)

(declare-fun e!3102531 () Bool)

(assert (=> b!4963427 (= e!3102531 tp_is_empty!36321)))

(assert (=> b!4962924 (= tp!1392325 e!3102531)))

(declare-fun b!4963429 () Bool)

(declare-fun tp!1392385 () Bool)

(assert (=> b!4963429 (= e!3102531 tp!1392385)))

(declare-fun b!4963428 () Bool)

(declare-fun tp!1392388 () Bool)

(declare-fun tp!1392386 () Bool)

(assert (=> b!4963428 (= e!3102531 (and tp!1392388 tp!1392386))))

(declare-fun b!4963430 () Bool)

(declare-fun tp!1392387 () Bool)

(declare-fun tp!1392384 () Bool)

(assert (=> b!4963430 (= e!3102531 (and tp!1392387 tp!1392384))))

(assert (= (and b!4962924 (is-ElementMatch!13620 (regOne!27753 (regex!8387 (h!63873 rulesArg!259))))) b!4963427))

(assert (= (and b!4962924 (is-Concat!22318 (regOne!27753 (regex!8387 (h!63873 rulesArg!259))))) b!4963428))

(assert (= (and b!4962924 (is-Star!13620 (regOne!27753 (regex!8387 (h!63873 rulesArg!259))))) b!4963429))

(assert (= (and b!4962924 (is-Union!13620 (regOne!27753 (regex!8387 (h!63873 rulesArg!259))))) b!4963430))

(declare-fun b!4963431 () Bool)

(declare-fun e!3102532 () Bool)

(assert (=> b!4963431 (= e!3102532 tp_is_empty!36321)))

(assert (=> b!4962924 (= tp!1392322 e!3102532)))

(declare-fun b!4963433 () Bool)

(declare-fun tp!1392390 () Bool)

(assert (=> b!4963433 (= e!3102532 tp!1392390)))

(declare-fun b!4963432 () Bool)

(declare-fun tp!1392393 () Bool)

(declare-fun tp!1392391 () Bool)

(assert (=> b!4963432 (= e!3102532 (and tp!1392393 tp!1392391))))

(declare-fun b!4963434 () Bool)

(declare-fun tp!1392392 () Bool)

(declare-fun tp!1392389 () Bool)

(assert (=> b!4963434 (= e!3102532 (and tp!1392392 tp!1392389))))

(assert (= (and b!4962924 (is-ElementMatch!13620 (regTwo!27753 (regex!8387 (h!63873 rulesArg!259))))) b!4963431))

(assert (= (and b!4962924 (is-Concat!22318 (regTwo!27753 (regex!8387 (h!63873 rulesArg!259))))) b!4963432))

(assert (= (and b!4962924 (is-Star!13620 (regTwo!27753 (regex!8387 (h!63873 rulesArg!259))))) b!4963433))

(assert (= (and b!4962924 (is-Union!13620 (regTwo!27753 (regex!8387 (h!63873 rulesArg!259))))) b!4963434))

(declare-fun b!4963435 () Bool)

(declare-fun tp!1392395 () Bool)

(declare-fun tp!1392396 () Bool)

(declare-fun e!3102533 () Bool)

(assert (=> b!4963435 (= e!3102533 (and (inv!75030 (left!41879 (left!41879 (c!846705 totalInput!464)))) tp!1392396 (inv!75030 (right!42209 (left!41879 (c!846705 totalInput!464)))) tp!1392395))))

(declare-fun b!4963437 () Bool)

(declare-fun e!3102534 () Bool)

(declare-fun tp!1392394 () Bool)

(assert (=> b!4963437 (= e!3102534 tp!1392394)))

(declare-fun b!4963436 () Bool)

(assert (=> b!4963436 (= e!3102533 (and (inv!75037 (xs!18465 (left!41879 (c!846705 totalInput!464)))) e!3102534))))

(assert (=> b!4962925 (= tp!1392329 (and (inv!75030 (left!41879 (c!846705 totalInput!464))) e!3102533))))

(assert (= (and b!4962925 (is-Node!15139 (left!41879 (c!846705 totalInput!464)))) b!4963435))

(assert (= b!4963436 b!4963437))

(assert (= (and b!4962925 (is-Leaf!25158 (left!41879 (c!846705 totalInput!464)))) b!4963436))

(declare-fun m!5987898 () Bool)

(assert (=> b!4963435 m!5987898))

(declare-fun m!5987900 () Bool)

(assert (=> b!4963435 m!5987900))

(declare-fun m!5987902 () Bool)

(assert (=> b!4963436 m!5987902))

(assert (=> b!4962925 m!5987266))

(declare-fun tp!1392398 () Bool)

(declare-fun tp!1392399 () Bool)

(declare-fun e!3102535 () Bool)

(declare-fun b!4963438 () Bool)

(assert (=> b!4963438 (= e!3102535 (and (inv!75030 (left!41879 (right!42209 (c!846705 totalInput!464)))) tp!1392399 (inv!75030 (right!42209 (right!42209 (c!846705 totalInput!464)))) tp!1392398))))

(declare-fun b!4963440 () Bool)

(declare-fun e!3102536 () Bool)

(declare-fun tp!1392397 () Bool)

(assert (=> b!4963440 (= e!3102536 tp!1392397)))

(declare-fun b!4963439 () Bool)

(assert (=> b!4963439 (= e!3102535 (and (inv!75037 (xs!18465 (right!42209 (c!846705 totalInput!464)))) e!3102536))))

(assert (=> b!4962925 (= tp!1392328 (and (inv!75030 (right!42209 (c!846705 totalInput!464))) e!3102535))))

(assert (= (and b!4962925 (is-Node!15139 (right!42209 (c!846705 totalInput!464)))) b!4963438))

(assert (= b!4963439 b!4963440))

(assert (= (and b!4962925 (is-Leaf!25158 (right!42209 (c!846705 totalInput!464)))) b!4963439))

(declare-fun m!5987904 () Bool)

(assert (=> b!4963438 m!5987904))

(declare-fun m!5987906 () Bool)

(assert (=> b!4963438 m!5987906))

(declare-fun m!5987908 () Bool)

(assert (=> b!4963439 m!5987908))

(assert (=> b!4962925 m!5987268))

(declare-fun tp!1392402 () Bool)

(declare-fun tp!1392401 () Bool)

(declare-fun b!4963441 () Bool)

(declare-fun e!3102537 () Bool)

(assert (=> b!4963441 (= e!3102537 (and (inv!75030 (left!41879 (left!41879 (c!846705 input!1342)))) tp!1392402 (inv!75030 (right!42209 (left!41879 (c!846705 input!1342)))) tp!1392401))))

(declare-fun b!4963443 () Bool)

(declare-fun e!3102538 () Bool)

(declare-fun tp!1392400 () Bool)

(assert (=> b!4963443 (= e!3102538 tp!1392400)))

(declare-fun b!4963442 () Bool)

(assert (=> b!4963442 (= e!3102537 (and (inv!75037 (xs!18465 (left!41879 (c!846705 input!1342)))) e!3102538))))

(assert (=> b!4962908 (= tp!1392311 (and (inv!75030 (left!41879 (c!846705 input!1342))) e!3102537))))

(assert (= (and b!4962908 (is-Node!15139 (left!41879 (c!846705 input!1342)))) b!4963441))

(assert (= b!4963442 b!4963443))

(assert (= (and b!4962908 (is-Leaf!25158 (left!41879 (c!846705 input!1342)))) b!4963442))

(declare-fun m!5987910 () Bool)

(assert (=> b!4963441 m!5987910))

(declare-fun m!5987912 () Bool)

(assert (=> b!4963441 m!5987912))

(declare-fun m!5987914 () Bool)

(assert (=> b!4963442 m!5987914))

(assert (=> b!4962908 m!5987260))

(declare-fun tp!1392405 () Bool)

(declare-fun e!3102539 () Bool)

(declare-fun b!4963444 () Bool)

(declare-fun tp!1392404 () Bool)

(assert (=> b!4963444 (= e!3102539 (and (inv!75030 (left!41879 (right!42209 (c!846705 input!1342)))) tp!1392405 (inv!75030 (right!42209 (right!42209 (c!846705 input!1342)))) tp!1392404))))

(declare-fun b!4963446 () Bool)

(declare-fun e!3102540 () Bool)

(declare-fun tp!1392403 () Bool)

(assert (=> b!4963446 (= e!3102540 tp!1392403)))

(declare-fun b!4963445 () Bool)

(assert (=> b!4963445 (= e!3102539 (and (inv!75037 (xs!18465 (right!42209 (c!846705 input!1342)))) e!3102540))))

(assert (=> b!4962908 (= tp!1392310 (and (inv!75030 (right!42209 (c!846705 input!1342))) e!3102539))))

(assert (= (and b!4962908 (is-Node!15139 (right!42209 (c!846705 input!1342)))) b!4963444))

(assert (= b!4963445 b!4963446))

(assert (= (and b!4962908 (is-Leaf!25158 (right!42209 (c!846705 input!1342)))) b!4963445))

(declare-fun m!5987916 () Bool)

(assert (=> b!4963444 m!5987916))

(declare-fun m!5987918 () Bool)

(assert (=> b!4963444 m!5987918))

(declare-fun m!5987920 () Bool)

(assert (=> b!4963445 m!5987920))

(assert (=> b!4962908 m!5987262))

(declare-fun b!4963451 () Bool)

(declare-fun e!3102543 () Bool)

(declare-fun tp!1392408 () Bool)

(assert (=> b!4963451 (= e!3102543 (and tp_is_empty!36321 tp!1392408))))

(assert (=> b!4962927 (= tp!1392327 e!3102543)))

(assert (= (and b!4962927 (is-Cons!57424 (innerList!15227 (xs!18465 (c!846705 totalInput!464))))) b!4963451))

(declare-fun b!4963452 () Bool)

(declare-fun e!3102544 () Bool)

(assert (=> b!4963452 (= e!3102544 tp_is_empty!36321)))

(assert (=> b!4962922 (= tp!1392326 e!3102544)))

(declare-fun b!4963454 () Bool)

(declare-fun tp!1392410 () Bool)

(assert (=> b!4963454 (= e!3102544 tp!1392410)))

(declare-fun b!4963453 () Bool)

(declare-fun tp!1392413 () Bool)

(declare-fun tp!1392411 () Bool)

(assert (=> b!4963453 (= e!3102544 (and tp!1392413 tp!1392411))))

(declare-fun b!4963455 () Bool)

(declare-fun tp!1392412 () Bool)

(declare-fun tp!1392409 () Bool)

(assert (=> b!4963455 (= e!3102544 (and tp!1392412 tp!1392409))))

(assert (= (and b!4962922 (is-ElementMatch!13620 (regOne!27752 (regex!8387 (h!63873 rulesArg!259))))) b!4963452))

(assert (= (and b!4962922 (is-Concat!22318 (regOne!27752 (regex!8387 (h!63873 rulesArg!259))))) b!4963453))

(assert (= (and b!4962922 (is-Star!13620 (regOne!27752 (regex!8387 (h!63873 rulesArg!259))))) b!4963454))

(assert (= (and b!4962922 (is-Union!13620 (regOne!27752 (regex!8387 (h!63873 rulesArg!259))))) b!4963455))

(declare-fun b!4963456 () Bool)

(declare-fun e!3102545 () Bool)

(assert (=> b!4963456 (= e!3102545 tp_is_empty!36321)))

(assert (=> b!4962922 (= tp!1392324 e!3102545)))

(declare-fun b!4963458 () Bool)

(declare-fun tp!1392415 () Bool)

(assert (=> b!4963458 (= e!3102545 tp!1392415)))

(declare-fun b!4963457 () Bool)

(declare-fun tp!1392418 () Bool)

(declare-fun tp!1392416 () Bool)

(assert (=> b!4963457 (= e!3102545 (and tp!1392418 tp!1392416))))

(declare-fun b!4963459 () Bool)

(declare-fun tp!1392417 () Bool)

(declare-fun tp!1392414 () Bool)

(assert (=> b!4963459 (= e!3102545 (and tp!1392417 tp!1392414))))

(assert (= (and b!4962922 (is-ElementMatch!13620 (regTwo!27752 (regex!8387 (h!63873 rulesArg!259))))) b!4963456))

(assert (= (and b!4962922 (is-Concat!22318 (regTwo!27752 (regex!8387 (h!63873 rulesArg!259))))) b!4963457))

(assert (= (and b!4962922 (is-Star!13620 (regTwo!27752 (regex!8387 (h!63873 rulesArg!259))))) b!4963458))

(assert (= (and b!4962922 (is-Union!13620 (regTwo!27752 (regex!8387 (h!63873 rulesArg!259))))) b!4963459))

(declare-fun b!4963462 () Bool)

(declare-fun b_free!132711 () Bool)

(declare-fun b_next!133501 () Bool)

(assert (=> b!4963462 (= b_free!132711 (not b_next!133501))))

(declare-fun tb!260179 () Bool)

(declare-fun t!368170 () Bool)

(assert (=> (and b!4963462 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toValue!11338 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))) t!368170) tb!260179))

(declare-fun result!325234 () Bool)

(assert (= result!325234 result!325208))

(assert (=> d!1596819 t!368170))

(declare-fun t!368172 () Bool)

(declare-fun tb!260181 () Bool)

(assert (=> (and b!4963462 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) t!368172) tb!260181))

(declare-fun result!325236 () Bool)

(assert (= result!325236 result!325224))

(assert (=> d!1596889 t!368172))

(declare-fun t!368174 () Bool)

(declare-fun tb!260183 () Bool)

(assert (=> (and b!4963462 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259)))) t!368174) tb!260183))

(declare-fun result!325238 () Bool)

(assert (= result!325238 result!325228))

(assert (=> d!1596889 t!368174))

(assert (=> d!1596893 t!368172))

(declare-fun tp!1392421 () Bool)

(declare-fun b_and!347611 () Bool)

(assert (=> b!4963462 (= tp!1392421 (and (=> t!368170 result!325234) (=> t!368172 result!325236) (=> t!368174 result!325238) b_and!347611))))

(declare-fun b_free!132713 () Bool)

(declare-fun b_next!133503 () Bool)

(assert (=> b!4963462 (= b_free!132713 (not b_next!133503))))

(declare-fun t!368176 () Bool)

(declare-fun tb!260185 () Bool)

(assert (=> (and b!4963462 (= (toChars!11197 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toChars!11197 (transformation!8387 (rule!11617 (_1!34361 (get!19925 lt!2048952)))))) t!368176) tb!260185))

(declare-fun result!325240 () Bool)

(assert (= result!325240 result!325202))

(assert (=> d!1596751 t!368176))

(declare-fun b_and!347613 () Bool)

(declare-fun tp!1392419 () Bool)

(assert (=> b!4963462 (= tp!1392419 (and (=> t!368176 result!325240) b_and!347613))))

(declare-fun e!3102546 () Bool)

(assert (=> b!4963462 (= e!3102546 (and tp!1392421 tp!1392419))))

(declare-fun b!4963461 () Bool)

(declare-fun e!3102548 () Bool)

(declare-fun tp!1392420 () Bool)

(assert (=> b!4963461 (= e!3102548 (and tp!1392420 (inv!75026 (tag!9251 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (inv!75029 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) e!3102546))))

(declare-fun b!4963460 () Bool)

(declare-fun e!3102547 () Bool)

(declare-fun tp!1392422 () Bool)

(assert (=> b!4963460 (= e!3102547 (and e!3102548 tp!1392422))))

(assert (=> b!4962945 (= tp!1392341 e!3102547)))

(assert (= b!4963461 b!4963462))

(assert (= b!4963460 b!4963461))

(assert (= (and b!4962945 (is-Cons!57425 (t!368139 (t!368139 rulesArg!259)))) b!4963460))

(declare-fun m!5987922 () Bool)

(assert (=> b!4963461 m!5987922))

(declare-fun m!5987924 () Bool)

(assert (=> b!4963461 m!5987924))

(declare-fun b!4963463 () Bool)

(declare-fun e!3102550 () Bool)

(declare-fun tp!1392423 () Bool)

(assert (=> b!4963463 (= e!3102550 (and tp_is_empty!36321 tp!1392423))))

(assert (=> b!4962910 (= tp!1392309 e!3102550)))

(assert (= (and b!4962910 (is-Cons!57424 (innerList!15227 (xs!18465 (c!846705 input!1342))))) b!4963463))

(declare-fun b!4963464 () Bool)

(declare-fun e!3102551 () Bool)

(assert (=> b!4963464 (= e!3102551 tp_is_empty!36321)))

(assert (=> b!4962923 (= tp!1392323 e!3102551)))

(declare-fun b!4963466 () Bool)

(declare-fun tp!1392425 () Bool)

(assert (=> b!4963466 (= e!3102551 tp!1392425)))

(declare-fun b!4963465 () Bool)

(declare-fun tp!1392428 () Bool)

(declare-fun tp!1392426 () Bool)

(assert (=> b!4963465 (= e!3102551 (and tp!1392428 tp!1392426))))

(declare-fun b!4963467 () Bool)

(declare-fun tp!1392427 () Bool)

(declare-fun tp!1392424 () Bool)

(assert (=> b!4963467 (= e!3102551 (and tp!1392427 tp!1392424))))

(assert (= (and b!4962923 (is-ElementMatch!13620 (reg!13949 (regex!8387 (h!63873 rulesArg!259))))) b!4963464))

(assert (= (and b!4962923 (is-Concat!22318 (reg!13949 (regex!8387 (h!63873 rulesArg!259))))) b!4963465))

(assert (= (and b!4962923 (is-Star!13620 (reg!13949 (regex!8387 (h!63873 rulesArg!259))))) b!4963466))

(assert (= (and b!4962923 (is-Union!13620 (reg!13949 (regex!8387 (h!63873 rulesArg!259))))) b!4963467))

(declare-fun b!4963468 () Bool)

(declare-fun e!3102552 () Bool)

(assert (=> b!4963468 (= e!3102552 tp_is_empty!36321)))

(assert (=> b!4962946 (= tp!1392339 e!3102552)))

(declare-fun b!4963470 () Bool)

(declare-fun tp!1392430 () Bool)

(assert (=> b!4963470 (= e!3102552 tp!1392430)))

(declare-fun b!4963469 () Bool)

(declare-fun tp!1392433 () Bool)

(declare-fun tp!1392431 () Bool)

(assert (=> b!4963469 (= e!3102552 (and tp!1392433 tp!1392431))))

(declare-fun b!4963471 () Bool)

(declare-fun tp!1392432 () Bool)

(declare-fun tp!1392429 () Bool)

(assert (=> b!4963471 (= e!3102552 (and tp!1392432 tp!1392429))))

(assert (= (and b!4962946 (is-ElementMatch!13620 (regex!8387 (h!63873 (t!368139 rulesArg!259))))) b!4963468))

(assert (= (and b!4962946 (is-Concat!22318 (regex!8387 (h!63873 (t!368139 rulesArg!259))))) b!4963469))

(assert (= (and b!4962946 (is-Star!13620 (regex!8387 (h!63873 (t!368139 rulesArg!259))))) b!4963470))

(assert (= (and b!4962946 (is-Union!13620 (regex!8387 (h!63873 (t!368139 rulesArg!259))))) b!4963471))

(declare-fun b_lambda!196487 () Bool)

(assert (= b_lambda!196485 (or b!4962842 b_lambda!196487)))

(declare-fun bs!1182835 () Bool)

(declare-fun d!1596917 () Bool)

(assert (= bs!1182835 (and d!1596917 b!4962842)))

(assert (=> bs!1182835 (= (dynLambda!23131 lambda!247254 (_1!34365 lt!2049008)) (= (list!18349 (dynLambda!23127 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (_1!34365 lt!2049008)))) (list!18349 (_1!34365 lt!2049008))))))

(declare-fun b_lambda!196499 () Bool)

(assert (=> (not b_lambda!196499) (not bs!1182835)))

(declare-fun t!368178 () Bool)

(declare-fun tb!260187 () Bool)

(assert (=> (and b!4962713 (= (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) t!368178) tb!260187))

(declare-fun e!3102553 () Bool)

(declare-fun b!4963472 () Bool)

(declare-fun tp!1392434 () Bool)

(assert (=> b!4963472 (= e!3102553 (and (inv!75030 (c!846705 (dynLambda!23127 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (_1!34365 lt!2049008))))) tp!1392434))))

(declare-fun result!325242 () Bool)

(assert (=> tb!260187 (= result!325242 (and (inv!75031 (dynLambda!23127 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (_1!34365 lt!2049008)))) e!3102553))))

(assert (= tb!260187 b!4963472))

(declare-fun m!5987926 () Bool)

(assert (=> b!4963472 m!5987926))

(declare-fun m!5987928 () Bool)

(assert (=> tb!260187 m!5987928))

(assert (=> bs!1182835 t!368178))

(declare-fun b_and!347615 () Bool)

(assert (= b_and!347579 (and (=> t!368178 result!325242) b_and!347615)))

(declare-fun t!368180 () Bool)

(declare-fun tb!260189 () Bool)

(assert (=> (and b!4962947 (= (toChars!11197 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) t!368180) tb!260189))

(declare-fun result!325244 () Bool)

(assert (= result!325244 result!325242))

(assert (=> bs!1182835 t!368180))

(declare-fun b_and!347617 () Bool)

(assert (= b_and!347581 (and (=> t!368180 result!325244) b_and!347617)))

(declare-fun t!368182 () Bool)

(declare-fun tb!260191 () Bool)

(assert (=> (and b!4963462 (= (toChars!11197 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) t!368182) tb!260191))

(declare-fun result!325246 () Bool)

(assert (= result!325246 result!325242))

(assert (=> bs!1182835 t!368182))

(declare-fun b_and!347619 () Bool)

(assert (= b_and!347613 (and (=> t!368182 result!325246) b_and!347619)))

(declare-fun b_lambda!196501 () Bool)

(assert (=> (not b_lambda!196501) (not bs!1182835)))

(assert (=> bs!1182835 t!368162))

(declare-fun b_and!347621 () Bool)

(assert (= b_and!347607 (and (=> t!368162 result!325224) b_and!347621)))

(assert (=> bs!1182835 t!368164))

(declare-fun b_and!347623 () Bool)

(assert (= b_and!347609 (and (=> t!368164 result!325226) b_and!347623)))

(assert (=> bs!1182835 t!368172))

(declare-fun b_and!347625 () Bool)

(assert (= b_and!347611 (and (=> t!368172 result!325236) b_and!347625)))

(declare-fun m!5987930 () Bool)

(assert (=> bs!1182835 m!5987930))

(declare-fun m!5987932 () Bool)

(assert (=> bs!1182835 m!5987932))

(assert (=> bs!1182835 m!5987830))

(assert (=> bs!1182835 m!5987830))

(assert (=> bs!1182835 m!5987930))

(assert (=> bs!1182835 m!5987204))

(assert (=> d!1596909 d!1596917))

(declare-fun b_lambda!196489 () Bool)

(assert (= b_lambda!196483 (or b!4962842 b_lambda!196489)))

(declare-fun bs!1182836 () Bool)

(declare-fun d!1596919 () Bool)

(assert (= bs!1182836 (and d!1596919 b!4962842)))

(assert (=> bs!1182836 (= (dynLambda!23131 lambda!247254 (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))) (= (list!18349 (dynLambda!23127 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))))) (list!18349 (seqFromList!6030 (list!18349 (_1!34365 lt!2049008))))))))

(declare-fun b_lambda!196503 () Bool)

(assert (=> (not b_lambda!196503) (not bs!1182836)))

(declare-fun t!368184 () Bool)

(declare-fun tb!260193 () Bool)

(assert (=> (and b!4962713 (= (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) t!368184) tb!260193))

(declare-fun e!3102554 () Bool)

(declare-fun tp!1392435 () Bool)

(declare-fun b!4963473 () Bool)

(assert (=> b!4963473 (= e!3102554 (and (inv!75030 (c!846705 (dynLambda!23127 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (seqFromList!6030 (list!18349 (_1!34365 lt!2049008))))))) tp!1392435))))

(declare-fun result!325248 () Bool)

(assert (=> tb!260193 (= result!325248 (and (inv!75031 (dynLambda!23127 (toChars!11197 (transformation!8387 (h!63873 rulesArg!259))) (dynLambda!23130 (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))) (seqFromList!6030 (list!18349 (_1!34365 lt!2049008)))))) e!3102554))))

(assert (= tb!260193 b!4963473))

(declare-fun m!5987934 () Bool)

(assert (=> b!4963473 m!5987934))

(declare-fun m!5987936 () Bool)

(assert (=> tb!260193 m!5987936))

(assert (=> bs!1182836 t!368184))

(declare-fun b_and!347627 () Bool)

(assert (= b_and!347615 (and (=> t!368184 result!325248) b_and!347627)))

(declare-fun t!368186 () Bool)

(declare-fun tb!260195 () Bool)

(assert (=> (and b!4962947 (= (toChars!11197 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) t!368186) tb!260195))

(declare-fun result!325250 () Bool)

(assert (= result!325250 result!325248))

(assert (=> bs!1182836 t!368186))

(declare-fun b_and!347629 () Bool)

(assert (= b_and!347617 (and (=> t!368186 result!325250) b_and!347629)))

(declare-fun t!368188 () Bool)

(declare-fun tb!260197 () Bool)

(assert (=> (and b!4963462 (= (toChars!11197 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toChars!11197 (transformation!8387 (h!63873 rulesArg!259)))) t!368188) tb!260197))

(declare-fun result!325252 () Bool)

(assert (= result!325252 result!325248))

(assert (=> bs!1182836 t!368188))

(declare-fun b_and!347631 () Bool)

(assert (= b_and!347619 (and (=> t!368188 result!325252) b_and!347631)))

(declare-fun b_lambda!196505 () Bool)

(assert (=> (not b_lambda!196505) (not bs!1182836)))

(assert (=> bs!1182836 t!368166))

(declare-fun b_and!347633 () Bool)

(assert (= b_and!347621 (and (=> t!368166 result!325228) b_and!347633)))

(assert (=> bs!1182836 t!368168))

(declare-fun b_and!347635 () Bool)

(assert (= b_and!347623 (and (=> t!368168 result!325230) b_and!347635)))

(assert (=> bs!1182836 t!368174))

(declare-fun b_and!347637 () Bool)

(assert (= b_and!347625 (and (=> t!368174 result!325238) b_and!347637)))

(declare-fun m!5987938 () Bool)

(assert (=> bs!1182836 m!5987938))

(declare-fun m!5987940 () Bool)

(assert (=> bs!1182836 m!5987940))

(assert (=> bs!1182836 m!5987210))

(assert (=> bs!1182836 m!5987828))

(assert (=> bs!1182836 m!5987828))

(assert (=> bs!1182836 m!5987938))

(assert (=> bs!1182836 m!5987210))

(assert (=> bs!1182836 m!5987824))

(assert (=> d!1596895 d!1596919))

(declare-fun b_lambda!196491 () Bool)

(assert (= b_lambda!196477 (or (and b!4962713 b_free!132695) (and b!4962947 b_free!132703 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))))) (and b!4963462 b_free!132711 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))))) b_lambda!196491)))

(declare-fun b_lambda!196493 () Bool)

(assert (= b_lambda!196479 (or (and b!4962713 b_free!132695) (and b!4962947 b_free!132703 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))))) (and b!4963462 b_free!132711 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))))) b_lambda!196493)))

(declare-fun b_lambda!196495 () Bool)

(assert (= b_lambda!196463 (or d!1596709 b_lambda!196495)))

(declare-fun bs!1182837 () Bool)

(declare-fun d!1596921 () Bool)

(assert (= bs!1182837 (and d!1596921 d!1596709)))

(assert (=> bs!1182837 (= (dynLambda!23128 lambda!247257 (h!63873 rulesArg!259)) (ruleValid!3796 thiss!15247 (h!63873 rulesArg!259)))))

(assert (=> bs!1182837 m!5987198))

(assert (=> b!4963188 d!1596921))

(declare-fun b_lambda!196497 () Bool)

(assert (= b_lambda!196475 (or (and b!4962713 b_free!132695) (and b!4962947 b_free!132703 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 rulesArg!259)))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))))) (and b!4963462 b_free!132711 (= (toValue!11338 (transformation!8387 (h!63873 (t!368139 (t!368139 rulesArg!259))))) (toValue!11338 (transformation!8387 (h!63873 rulesArg!259))))) b_lambda!196497)))

(push 1)

(assert (not b!4963455))

(assert (not bs!1182837))

(assert (not d!1596865))

(assert (not d!1596911))

(assert (not d!1596889))

(assert (not b!4963430))

(assert (not b_lambda!196505))

(assert (not b!4963191))

(assert (not b!4963125))

(assert (not b_lambda!196489))

(assert (not b!4963259))

(assert (not b_next!133495))

(assert (not b!4963413))

(assert (not b!4963428))

(assert (not b_lambda!196503))

(assert (not bm!346059))

(assert (not d!1596769))

(assert (not bm!346084))

(assert (not bm!346063))

(assert (not bm!346087))

(assert (not b!4963419))

(assert (not d!1596907))

(assert (not b!4963298))

(assert (not b!4963454))

(assert (not d!1596791))

(assert (not b!4963420))

(assert (not b!4963422))

(assert (not bm!346090))

(assert (not b_lambda!196461))

(assert (not b!4963053))

(assert (not b_lambda!196499))

(assert (not bm!346086))

(assert (not b!4963367))

(assert (not b!4963416))

(assert (not b!4963189))

(assert (not b!4963177))

(assert (not bm!346083))

(assert (not d!1596871))

(assert (not b!4963323))

(assert (not b!4963437))

(assert (not b_next!133487))

(assert (not b!4963312))

(assert (not b_lambda!196493))

(assert (not b!4963238))

(assert (not b!4963473))

(assert (not b!4963379))

(assert (not b!4963442))

(assert (not b!4963398))

(assert (not b!4963446))

(assert (not b!4963157))

(assert (not tb!260155))

(assert (not b_lambda!196491))

(assert (not b!4963320))

(assert (not d!1596817))

(assert (not b!4963376))

(assert (not b!4963048))

(assert (not b!4963183))

(assert (not b!4963436))

(assert (not tb!260193))

(assert (not d!1596767))

(assert (not b!4963244))

(assert (not d!1596759))

(assert (not b!4963471))

(assert (not bm!346082))

(assert (not tb!260187))

(assert (not d!1596869))

(assert (not b!4963153))

(assert (not b_lambda!196501))

(assert (not d!1596775))

(assert (not d!1596777))

(assert (not b!4963313))

(assert (not b!4963067))

(assert (not b!4963368))

(assert (not b!4963440))

(assert (not d!1596909))

(assert (not b!4963318))

(assert (not tb!260171))

(assert (not b!4963154))

(assert (not b!4963055))

(assert (not b!4963417))

(assert (not b!4963469))

(assert tp_is_empty!36321)

(assert (not d!1596821))

(assert (not b!4963199))

(assert (not b!4963200))

(assert (not b!4962908))

(assert (not d!1596787))

(assert (not b!4963326))

(assert (not b!4963065))

(assert (not b!4963119))

(assert b_and!347631)

(assert (not d!1596779))

(assert (not b!4963466))

(assert (not d!1596905))

(assert (not b!4963056))

(assert (not b!4963131))

(assert b_and!347635)

(assert (not b!4963178))

(assert (not b_next!133501))

(assert (not d!1596825))

(assert (not d!1596805))

(assert (not b!4963159))

(assert (not b!4963057))

(assert (not b!4963363))

(assert (not b!4963371))

(assert (not b!4963433))

(assert (not d!1596829))

(assert (not d!1596807))

(assert (not b!4963444))

(assert (not b!4963158))

(assert (not d!1596863))

(assert (not b!4963441))

(assert (not b_next!133503))

(assert (not b!4963108))

(assert (not b!4963425))

(assert (not d!1596839))

(assert (not tb!260175))

(assert (not d!1596781))

(assert (not b!4963372))

(assert (not b!4963317))

(assert (not d!1596835))

(assert (not bm!346062))

(assert (not b!4963434))

(assert (not d!1596771))

(assert (not b_next!133493))

(assert b_and!347637)

(assert (not bm!346080))

(assert (not bm!346085))

(assert (not b!4963175))

(assert (not b!4963107))

(assert (not b!4963461))

(assert (not d!1596783))

(assert (not b!4963472))

(assert (not bm!346081))

(assert (not b_lambda!196495))

(assert (not b!4963375))

(assert (not b!4963309))

(assert (not b!4963156))

(assert (not bs!1182836))

(assert (not b!4963432))

(assert b_and!347629)

(assert (not b!4963120))

(assert (not b!4963115))

(assert (not b!4963421))

(assert (not d!1596867))

(assert (not d!1596789))

(assert (not b!4963414))

(assert (not b!4963465))

(assert (not d!1596785))

(assert (not b!4963176))

(assert (not b!4963073))

(assert (not b!4963258))

(assert (not b_lambda!196487))

(assert (not b!4963458))

(assert (not b!4963247))

(assert (not b!4963291))

(assert (not b!4963152))

(assert (not b!4963270))

(assert (not b!4963438))

(assert (not b!4963172))

(assert b_and!347627)

(assert (not b!4963245))

(assert (not b!4963297))

(assert (not b!4963467))

(assert b_and!347633)

(assert (not b!4963203))

(assert (not b!4963113))

(assert (not b!4963239))

(assert (not b!4963459))

(assert (not b!4963415))

(assert (not b!4963151))

(assert (not b!4963325))

(assert (not b!4963197))

(assert (not d!1596751))

(assert (not b!4963378))

(assert (not d!1596749))

(assert (not b!4963310))

(assert (not tb!260159))

(assert (not b_lambda!196465))

(assert (not d!1596913))

(assert (not b!4963463))

(assert (not b!4963451))

(assert (not b!4963328))

(assert (not b!4963374))

(assert (not b!4962925))

(assert (not b!4963364))

(assert (not b!4963457))

(assert (not b!4963445))

(assert (not b!4963426))

(assert (not b_next!133485))

(assert (not b!4963453))

(assert (not b!4963322))

(assert (not b!4963047))

(assert (not b!4963443))

(assert (not b!4963315))

(assert (not d!1596895))

(assert (not bs!1182835))

(assert (not d!1596841))

(assert (not d!1596761))

(assert (not b!4963267))

(assert (not b!4963377))

(assert (not b!4963116))

(assert (not d!1596903))

(assert (not b!4963321))

(assert (not bm!346091))

(assert (not b_lambda!196497))

(assert (not b!4963470))

(assert (not d!1596849))

(assert (not b!4963460))

(assert (not b!4963059))

(assert (not b!4963181))

(assert (not b!4963192))

(assert (not b!4963174))

(assert (not b!4963173))

(assert (not d!1596833))

(assert (not b!4963180))

(assert (not b!4963319))

(assert (not b!4963249))

(assert (not b!4963439))

(assert (not b!4963435))

(assert (not b!4963429))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133495))

(assert (not b_next!133487))

(assert b_and!347631)

(assert (not b_next!133503))

(assert b_and!347629)

(assert b_and!347627)

(assert b_and!347633)

(assert (not b_next!133485))

(assert b_and!347635)

(assert (not b_next!133501))

(assert (not b_next!133493))

(assert b_and!347637)

(check-sat)

(pop 1)

