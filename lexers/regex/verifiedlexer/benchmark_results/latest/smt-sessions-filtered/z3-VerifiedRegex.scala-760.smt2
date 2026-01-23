; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42422 () Bool)

(assert start!42422)

(declare-fun b!449152 () Bool)

(declare-fun b_free!12433 () Bool)

(declare-fun b_next!12433 () Bool)

(assert (=> b!449152 (= b_free!12433 (not b_next!12433))))

(declare-fun tp!125337 () Bool)

(declare-fun b_and!48377 () Bool)

(assert (=> b!449152 (= tp!125337 b_and!48377)))

(declare-fun b_free!12435 () Bool)

(declare-fun b_next!12435 () Bool)

(assert (=> b!449152 (= b_free!12435 (not b_next!12435))))

(declare-fun tp!125325 () Bool)

(declare-fun b_and!48379 () Bool)

(assert (=> b!449152 (= tp!125325 b_and!48379)))

(declare-fun b!449169 () Bool)

(declare-fun b_free!12437 () Bool)

(declare-fun b_next!12437 () Bool)

(assert (=> b!449169 (= b_free!12437 (not b_next!12437))))

(declare-fun tp!125336 () Bool)

(declare-fun b_and!48381 () Bool)

(assert (=> b!449169 (= tp!125336 b_and!48381)))

(declare-fun b_free!12439 () Bool)

(declare-fun b_next!12439 () Bool)

(assert (=> b!449169 (= b_free!12439 (not b_next!12439))))

(declare-fun tp!125330 () Bool)

(declare-fun b_and!48383 () Bool)

(assert (=> b!449169 (= tp!125330 b_and!48383)))

(declare-fun b!449145 () Bool)

(declare-fun b_free!12441 () Bool)

(declare-fun b_next!12441 () Bool)

(assert (=> b!449145 (= b_free!12441 (not b_next!12441))))

(declare-fun tp!125328 () Bool)

(declare-fun b_and!48385 () Bool)

(assert (=> b!449145 (= tp!125328 b_and!48385)))

(declare-fun b_free!12443 () Bool)

(declare-fun b_next!12443 () Bool)

(assert (=> b!449145 (= b_free!12443 (not b_next!12443))))

(declare-fun tp!125331 () Bool)

(declare-fun b_and!48387 () Bool)

(assert (=> b!449145 (= tp!125331 b_and!48387)))

(declare-fun bs!55670 () Bool)

(declare-fun b!449141 () Bool)

(declare-fun b!449150 () Bool)

(assert (= bs!55670 (and b!449141 b!449150)))

(declare-fun lambda!13022 () Int)

(declare-fun lambda!13021 () Int)

(assert (=> bs!55670 (not (= lambda!13022 lambda!13021))))

(declare-fun b!449182 () Bool)

(declare-fun e!274462 () Bool)

(assert (=> b!449182 (= e!274462 true)))

(declare-fun b!449181 () Bool)

(declare-fun e!274461 () Bool)

(assert (=> b!449181 (= e!274461 e!274462)))

(declare-fun b!449180 () Bool)

(declare-fun e!274460 () Bool)

(assert (=> b!449180 (= e!274460 e!274461)))

(assert (=> b!449141 e!274460))

(assert (= b!449181 b!449182))

(assert (= b!449180 b!449181))

(declare-datatypes ((List!4360 0))(
  ( (Nil!4350) (Cons!4350 (h!9747 (_ BitVec 16)) (t!70776 List!4360)) )
))
(declare-datatypes ((TokenValue!865 0))(
  ( (FloatLiteralValue!1730 (text!6500 List!4360)) (TokenValueExt!864 (__x!3217 Int)) (Broken!4325 (value!28315 List!4360)) (Object!874) (End!865) (Def!865) (Underscore!865) (Match!865) (Else!865) (Error!865) (Case!865) (If!865) (Extends!865) (Abstract!865) (Class!865) (Val!865) (DelimiterValue!1730 (del!925 List!4360)) (KeywordValue!871 (value!28316 List!4360)) (CommentValue!1730 (value!28317 List!4360)) (WhitespaceValue!1730 (value!28318 List!4360)) (IndentationValue!865 (value!28319 List!4360)) (String!5404) (Int32!865) (Broken!4326 (value!28320 List!4360)) (Boolean!866) (Unit!7822) (OperatorValue!868 (op!925 List!4360)) (IdentifierValue!1730 (value!28321 List!4360)) (IdentifierValue!1731 (value!28322 List!4360)) (WhitespaceValue!1731 (value!28323 List!4360)) (True!1730) (False!1730) (Broken!4327 (value!28324 List!4360)) (Broken!4328 (value!28325 List!4360)) (True!1731) (RightBrace!865) (RightBracket!865) (Colon!865) (Null!865) (Comma!865) (LeftBracket!865) (False!1731) (LeftBrace!865) (ImaginaryLiteralValue!865 (text!6501 List!4360)) (StringLiteralValue!2595 (value!28326 List!4360)) (EOFValue!865 (value!28327 List!4360)) (IdentValue!865 (value!28328 List!4360)) (DelimiterValue!1731 (value!28329 List!4360)) (DedentValue!865 (value!28330 List!4360)) (NewLineValue!865 (value!28331 List!4360)) (IntegerValue!2595 (value!28332 (_ BitVec 32)) (text!6502 List!4360)) (IntegerValue!2596 (value!28333 Int) (text!6503 List!4360)) (Times!865) (Or!865) (Equal!865) (Minus!865) (Broken!4329 (value!28334 List!4360)) (And!865) (Div!865) (LessEqual!865) (Mod!865) (Concat!1932) (Not!865) (Plus!865) (SpaceValue!865 (value!28335 List!4360)) (IntegerValue!2597 (value!28336 Int) (text!6504 List!4360)) (StringLiteralValue!2596 (text!6505 List!4360)) (FloatLiteralValue!1731 (text!6506 List!4360)) (BytesLiteralValue!865 (value!28337 List!4360)) (CommentValue!1731 (value!28338 List!4360)) (StringLiteralValue!2597 (value!28339 List!4360)) (ErrorTokenValue!865 (msg!926 List!4360)) )
))
(declare-datatypes ((C!3056 0))(
  ( (C!3057 (val!1414 Int)) )
))
(declare-datatypes ((List!4361 0))(
  ( (Nil!4351) (Cons!4351 (h!9748 C!3056) (t!70777 List!4361)) )
))
(declare-datatypes ((IArray!3017 0))(
  ( (IArray!3018 (innerList!1566 List!4361)) )
))
(declare-datatypes ((Conc!1508 0))(
  ( (Node!1508 (left!3656 Conc!1508) (right!3986 Conc!1508) (csize!3246 Int) (cheight!1719 Int)) (Leaf!2269 (xs!4139 IArray!3017) (csize!3247 Int)) (Empty!1508) )
))
(declare-datatypes ((BalanceConc!3024 0))(
  ( (BalanceConc!3025 (c!91036 Conc!1508)) )
))
(declare-datatypes ((TokenValueInjection!1502 0))(
  ( (TokenValueInjection!1503 (toValue!1658 Int) (toChars!1517 Int)) )
))
(declare-datatypes ((Regex!1067 0))(
  ( (ElementMatch!1067 (c!91037 C!3056)) (Concat!1933 (regOne!2646 Regex!1067) (regTwo!2646 Regex!1067)) (EmptyExpr!1067) (Star!1067 (reg!1396 Regex!1067)) (EmptyLang!1067) (Union!1067 (regOne!2647 Regex!1067) (regTwo!2647 Regex!1067)) )
))
(declare-datatypes ((String!5405 0))(
  ( (String!5406 (value!28340 String)) )
))
(declare-datatypes ((Rule!1486 0))(
  ( (Rule!1487 (regex!843 Regex!1067) (tag!1099 String!5405) (isSeparator!843 Bool) (transformation!843 TokenValueInjection!1502)) )
))
(declare-datatypes ((List!4362 0))(
  ( (Nil!4352) (Cons!4352 (h!9749 Rule!1486) (t!70778 List!4362)) )
))
(declare-fun rules!1920 () List!4362)

(get-info :version)

(assert (= (and b!449141 ((_ is Cons!4352) rules!1920)) b!449180))

(declare-fun order!3811 () Int)

(declare-fun order!3809 () Int)

(declare-fun dynLambda!2614 (Int Int) Int)

(declare-fun dynLambda!2615 (Int Int) Int)

(assert (=> b!449182 (< (dynLambda!2614 order!3809 (toValue!1658 (transformation!843 (h!9749 rules!1920)))) (dynLambda!2615 order!3811 lambda!13022))))

(declare-fun order!3813 () Int)

(declare-fun dynLambda!2616 (Int Int) Int)

(assert (=> b!449182 (< (dynLambda!2616 order!3813 (toChars!1517 (transformation!843 (h!9749 rules!1920)))) (dynLambda!2615 order!3811 lambda!13022))))

(assert (=> b!449141 true))

(declare-fun e!274419 () Bool)

(declare-fun tp!125334 () Bool)

(declare-datatypes ((Token!1430 0))(
  ( (Token!1431 (value!28341 TokenValue!865) (rule!1530 Rule!1486) (size!3574 Int) (originalCharacters!886 List!4361)) )
))
(declare-datatypes ((List!4363 0))(
  ( (Nil!4353) (Cons!4353 (h!9750 Token!1430) (t!70779 List!4363)) )
))
(declare-fun tokens!465 () List!4363)

(declare-fun e!274430 () Bool)

(declare-fun b!449124 () Bool)

(declare-fun inv!5427 (Token!1430) Bool)

(assert (=> b!449124 (= e!274419 (and (inv!5427 (h!9750 tokens!465)) e!274430 tp!125334))))

(declare-fun b!449125 () Bool)

(declare-fun res!199286 () Bool)

(declare-fun e!274450 () Bool)

(assert (=> b!449125 (=> (not res!199286) (not e!274450))))

(declare-fun separatorToken!170 () Token!1430)

(assert (=> b!449125 (= res!199286 (isSeparator!843 (rule!1530 separatorToken!170)))))

(declare-fun b!449126 () Bool)

(declare-fun res!199297 () Bool)

(declare-fun e!274422 () Bool)

(assert (=> b!449126 (=> (not res!199297) (not e!274422))))

(declare-datatypes ((tuple2!5258 0))(
  ( (tuple2!5259 (_1!2845 Token!1430) (_2!2845 List!4361)) )
))
(declare-fun lt!199044 () tuple2!5258)

(declare-fun isEmpty!3289 (List!4361) Bool)

(assert (=> b!449126 (= res!199297 (isEmpty!3289 (_2!2845 lt!199044)))))

(declare-fun b!449127 () Bool)

(declare-fun e!274441 () Bool)

(declare-fun e!274433 () Bool)

(declare-fun tp!125333 () Bool)

(declare-fun inv!5424 (String!5405) Bool)

(declare-fun inv!5428 (TokenValueInjection!1502) Bool)

(assert (=> b!449127 (= e!274433 (and tp!125333 (inv!5424 (tag!1099 (h!9749 rules!1920))) (inv!5428 (transformation!843 (h!9749 rules!1920))) e!274441))))

(declare-fun e!274446 () Bool)

(declare-fun lt!199056 () List!4361)

(declare-fun lt!199063 () List!4361)

(declare-fun b!449128 () Bool)

(declare-fun lt!199043 () List!4361)

(declare-fun ++!1262 (List!4361 List!4361) List!4361)

(assert (=> b!449128 (= e!274446 (not (= lt!199043 (++!1262 lt!199056 lt!199063))))))

(declare-fun b!449129 () Bool)

(declare-fun e!274442 () Bool)

(declare-fun e!274440 () Bool)

(assert (=> b!449129 (= e!274442 e!274440)))

(declare-fun res!199287 () Bool)

(assert (=> b!449129 (=> res!199287 e!274440)))

(declare-fun lt!199080 () Bool)

(assert (=> b!449129 (= res!199287 (not lt!199080))))

(assert (=> b!449129 e!274422))

(declare-fun res!199283 () Bool)

(assert (=> b!449129 (=> (not res!199283) (not e!274422))))

(assert (=> b!449129 (= res!199283 (= (_1!2845 lt!199044) (h!9750 tokens!465)))))

(declare-datatypes ((Option!1111 0))(
  ( (None!1110) (Some!1110 (v!15409 tuple2!5258)) )
))
(declare-fun lt!199042 () Option!1111)

(declare-fun get!1581 (Option!1111) tuple2!5258)

(assert (=> b!449129 (= lt!199044 (get!1581 lt!199042))))

(declare-fun isDefined!950 (Option!1111) Bool)

(assert (=> b!449129 (isDefined!950 lt!199042)))

(declare-datatypes ((LexerInterface!729 0))(
  ( (LexerInterfaceExt!726 (__x!3218 Int)) (Lexer!727) )
))
(declare-fun thiss!17480 () LexerInterface!729)

(declare-fun maxPrefix!445 (LexerInterface!729 List!4362 List!4361) Option!1111)

(assert (=> b!449129 (= lt!199042 (maxPrefix!445 thiss!17480 rules!1920 lt!199056))))

(declare-fun b!449130 () Bool)

(declare-fun e!274444 () Bool)

(declare-fun e!274443 () Bool)

(assert (=> b!449130 (= e!274444 e!274443)))

(declare-fun res!199279 () Bool)

(assert (=> b!449130 (=> (not res!199279) (not e!274443))))

(declare-fun lt!199052 () Option!1111)

(assert (=> b!449130 (= res!199279 (isDefined!950 lt!199052))))

(assert (=> b!449130 (= lt!199052 (maxPrefix!445 thiss!17480 rules!1920 lt!199043))))

(declare-fun b!449131 () Bool)

(declare-fun res!199295 () Bool)

(declare-fun e!274420 () Bool)

(assert (=> b!449131 (=> res!199295 e!274420)))

(declare-datatypes ((IArray!3019 0))(
  ( (IArray!3020 (innerList!1567 List!4363)) )
))
(declare-datatypes ((Conc!1509 0))(
  ( (Node!1509 (left!3657 Conc!1509) (right!3987 Conc!1509) (csize!3248 Int) (cheight!1720 Int)) (Leaf!2270 (xs!4140 IArray!3019) (csize!3249 Int)) (Empty!1509) )
))
(declare-datatypes ((BalanceConc!3026 0))(
  ( (BalanceConc!3027 (c!91038 Conc!1509)) )
))
(declare-fun isEmpty!3290 (BalanceConc!3026) Bool)

(declare-datatypes ((tuple2!5260 0))(
  ( (tuple2!5261 (_1!2846 BalanceConc!3026) (_2!2846 BalanceConc!3024)) )
))
(declare-fun lex!521 (LexerInterface!729 List!4362 BalanceConc!3024) tuple2!5260)

(declare-fun seqFromList!1051 (List!4361) BalanceConc!3024)

(assert (=> b!449131 (= res!199295 (isEmpty!3290 (_1!2846 (lex!521 thiss!17480 rules!1920 (seqFromList!1051 lt!199056)))))))

(declare-fun b!449132 () Bool)

(declare-fun res!199285 () Bool)

(assert (=> b!449132 (=> (not res!199285) (not e!274450))))

(declare-fun sepAndNonSepRulesDisjointChars!432 (List!4362 List!4362) Bool)

(assert (=> b!449132 (= res!199285 (sepAndNonSepRulesDisjointChars!432 rules!1920 rules!1920))))

(declare-fun b!449133 () Bool)

(declare-fun e!274438 () Bool)

(declare-fun lt!199062 () Rule!1486)

(assert (=> b!449133 (= e!274438 (= (rule!1530 separatorToken!170) lt!199062))))

(declare-fun b!449134 () Bool)

(declare-fun res!199292 () Bool)

(assert (=> b!449134 (=> (not res!199292) (not e!274450))))

(assert (=> b!449134 (= res!199292 ((_ is Cons!4353) tokens!465))))

(declare-fun b!449135 () Bool)

(declare-fun res!199304 () Bool)

(assert (=> b!449135 (=> res!199304 e!274420)))

(declare-fun rulesProduceIndividualToken!478 (LexerInterface!729 List!4362 Token!1430) Bool)

(assert (=> b!449135 (= res!199304 (not (rulesProduceIndividualToken!478 thiss!17480 rules!1920 (h!9750 tokens!465))))))

(declare-fun b!449136 () Bool)

(declare-fun res!199293 () Bool)

(declare-fun e!274453 () Bool)

(assert (=> b!449136 (=> (not res!199293) (not e!274453))))

(declare-fun lt!199051 () tuple2!5260)

(declare-fun lt!199053 () Token!1430)

(declare-fun apply!1102 (BalanceConc!3026 Int) Token!1430)

(assert (=> b!449136 (= res!199293 (= (apply!1102 (_1!2846 lt!199051) 0) lt!199053))))

(declare-fun b!449137 () Bool)

(declare-datatypes ((Unit!7823 0))(
  ( (Unit!7824) )
))
(declare-fun e!274427 () Unit!7823)

(declare-fun Unit!7825 () Unit!7823)

(assert (=> b!449137 (= e!274427 Unit!7825)))

(declare-fun lt!199050 () C!3056)

(declare-fun lt!199065 () List!4361)

(declare-fun lt!199072 () Unit!7823)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!122 (Regex!1067 List!4361 C!3056) Unit!7823)

(assert (=> b!449137 (= lt!199072 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!122 (regex!843 (rule!1530 lt!199053)) lt!199065 lt!199050))))

(declare-fun res!199277 () Bool)

(declare-fun matchR!385 (Regex!1067 List!4361) Bool)

(assert (=> b!449137 (= res!199277 (not (matchR!385 (regex!843 (rule!1530 lt!199053)) lt!199065)))))

(declare-fun e!274425 () Bool)

(assert (=> b!449137 (=> (not res!199277) (not e!274425))))

(assert (=> b!449137 e!274425))

(declare-fun e!274434 () Bool)

(declare-fun e!274449 () Bool)

(declare-fun b!449138 () Bool)

(declare-fun tp!125335 () Bool)

(assert (=> b!449138 (= e!274434 (and tp!125335 (inv!5424 (tag!1099 (rule!1530 separatorToken!170))) (inv!5428 (transformation!843 (rule!1530 separatorToken!170))) e!274449))))

(declare-fun b!449139 () Bool)

(declare-fun head!1087 (List!4363) Token!1430)

(assert (=> b!449139 (= e!274443 (= (_1!2845 (get!1581 lt!199052)) (head!1087 tokens!465)))))

(declare-fun b!449140 () Bool)

(declare-fun res!199298 () Bool)

(assert (=> b!449140 (=> (not res!199298) (not e!274450))))

(assert (=> b!449140 (= res!199298 (rulesProduceIndividualToken!478 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!449141 (= e!274420 e!274442)))

(declare-fun res!199275 () Bool)

(assert (=> b!449141 (=> res!199275 e!274442)))

(declare-datatypes ((tuple2!5262 0))(
  ( (tuple2!5263 (_1!2847 Token!1430) (_2!2847 BalanceConc!3024)) )
))
(declare-datatypes ((Option!1112 0))(
  ( (None!1111) (Some!1111 (v!15410 tuple2!5262)) )
))
(declare-fun isDefined!951 (Option!1112) Bool)

(declare-fun maxPrefixZipperSequence!408 (LexerInterface!729 List!4362 BalanceConc!3024) Option!1112)

(assert (=> b!449141 (= res!199275 (not (isDefined!951 (maxPrefixZipperSequence!408 thiss!17480 rules!1920 (seqFromList!1051 (originalCharacters!886 (h!9750 tokens!465)))))))))

(declare-fun lt!199060 () Unit!7823)

(declare-fun forallContained!396 (List!4363 Int Token!1430) Unit!7823)

(assert (=> b!449141 (= lt!199060 (forallContained!396 tokens!465 lambda!13022 (h!9750 tokens!465)))))

(assert (=> b!449141 (= lt!199056 (originalCharacters!886 (h!9750 tokens!465)))))

(declare-fun b!449142 () Bool)

(declare-fun res!199289 () Bool)

(declare-fun e!274417 () Bool)

(assert (=> b!449142 (=> (not res!199289) (not e!274417))))

(declare-fun lt!199067 () List!4361)

(declare-fun list!1929 (BalanceConc!3024) List!4361)

(assert (=> b!449142 (= res!199289 (= (list!1929 (seqFromList!1051 lt!199043)) lt!199067))))

(declare-fun b!449143 () Bool)

(declare-fun e!274439 () Bool)

(assert (=> b!449143 (= e!274439 e!274420)))

(declare-fun res!199299 () Bool)

(assert (=> b!449143 (=> res!199299 e!274420)))

(declare-fun lt!199031 () List!4361)

(declare-fun lt!199035 () List!4361)

(assert (=> b!449143 (= res!199299 (or (not (= lt!199031 lt!199035)) (not (= lt!199035 lt!199056)) (not (= lt!199031 lt!199056))))))

(declare-fun printList!403 (LexerInterface!729 List!4363) List!4361)

(assert (=> b!449143 (= lt!199035 (printList!403 thiss!17480 (Cons!4353 (h!9750 tokens!465) Nil!4353)))))

(declare-fun lt!199061 () BalanceConc!3024)

(assert (=> b!449143 (= lt!199031 (list!1929 lt!199061))))

(declare-fun lt!199040 () BalanceConc!3026)

(declare-fun printTailRec!415 (LexerInterface!729 BalanceConc!3026 Int BalanceConc!3024) BalanceConc!3024)

(assert (=> b!449143 (= lt!199061 (printTailRec!415 thiss!17480 lt!199040 0 (BalanceConc!3025 Empty!1508)))))

(declare-fun print!454 (LexerInterface!729 BalanceConc!3026) BalanceConc!3024)

(assert (=> b!449143 (= lt!199061 (print!454 thiss!17480 lt!199040))))

(declare-fun singletonSeq!389 (Token!1430) BalanceConc!3026)

(assert (=> b!449143 (= lt!199040 (singletonSeq!389 (h!9750 tokens!465)))))

(declare-fun b!449144 () Bool)

(declare-fun e!274428 () Bool)

(declare-fun e!274429 () Bool)

(assert (=> b!449144 (= e!274428 e!274429)))

(declare-fun res!199294 () Bool)

(assert (=> b!449144 (=> (not res!199294) (not e!274429))))

(declare-fun lt!199075 () Rule!1486)

(assert (=> b!449144 (= res!199294 (matchR!385 (regex!843 lt!199075) lt!199065))))

(declare-datatypes ((Option!1113 0))(
  ( (None!1112) (Some!1112 (v!15411 Rule!1486)) )
))
(declare-fun lt!199071 () Option!1113)

(declare-fun get!1582 (Option!1113) Rule!1486)

(assert (=> b!449144 (= lt!199075 (get!1582 lt!199071))))

(assert (=> b!449145 (= e!274441 (and tp!125328 tp!125331))))

(declare-fun b!449146 () Bool)

(declare-fun e!274426 () Bool)

(declare-fun lt!199074 () tuple2!5260)

(declare-fun isEmpty!3291 (BalanceConc!3024) Bool)

(assert (=> b!449146 (= e!274426 (isEmpty!3291 (_2!2846 lt!199074)))))

(declare-fun b!449147 () Bool)

(declare-fun e!274445 () Unit!7823)

(declare-fun Unit!7826 () Unit!7823)

(assert (=> b!449147 (= e!274445 Unit!7826)))

(declare-fun b!449148 () Bool)

(assert (=> b!449148 (= e!274422 (matchR!385 (regex!843 (rule!1530 (h!9750 tokens!465))) lt!199056))))

(declare-fun res!199288 () Bool)

(declare-fun e!274452 () Bool)

(assert (=> start!42422 (=> (not res!199288) (not e!274452))))

(assert (=> start!42422 (= res!199288 ((_ is Lexer!727) thiss!17480))))

(assert (=> start!42422 e!274452))

(assert (=> start!42422 true))

(declare-fun e!274423 () Bool)

(assert (=> start!42422 e!274423))

(declare-fun e!274418 () Bool)

(assert (=> start!42422 (and (inv!5427 separatorToken!170) e!274418)))

(assert (=> start!42422 e!274419))

(declare-fun b!449149 () Bool)

(declare-fun e!274431 () Bool)

(assert (=> b!449149 (= e!274431 e!274439)))

(declare-fun res!199300 () Bool)

(assert (=> b!449149 (=> res!199300 e!274439)))

(assert (=> b!449149 (= res!199300 e!274446)))

(declare-fun res!199290 () Bool)

(assert (=> b!449149 (=> (not res!199290) (not e!274446))))

(assert (=> b!449149 (= res!199290 (not lt!199080))))

(declare-fun lt!199033 () List!4361)

(assert (=> b!449149 (= lt!199080 (= lt!199043 lt!199033))))

(declare-fun res!199291 () Bool)

(assert (=> b!449150 (=> (not res!199291) (not e!274450))))

(declare-fun forall!1258 (List!4363 Int) Bool)

(assert (=> b!449150 (= res!199291 (forall!1258 tokens!465 lambda!13021))))

(declare-fun b!449151 () Bool)

(declare-fun e!274421 () Bool)

(assert (=> b!449151 (= e!274421 e!274438)))

(declare-fun res!199302 () Bool)

(assert (=> b!449151 (=> (not res!199302) (not e!274438))))

(declare-fun lt!199036 () List!4361)

(assert (=> b!449151 (= res!199302 (matchR!385 (regex!843 lt!199062) lt!199036))))

(declare-fun lt!199055 () Option!1113)

(assert (=> b!449151 (= lt!199062 (get!1582 lt!199055))))

(assert (=> b!449152 (= e!274449 (and tp!125337 tp!125325))))

(declare-fun b!449153 () Bool)

(declare-fun res!199281 () Bool)

(assert (=> b!449153 (=> (not res!199281) (not e!274452))))

(declare-fun rulesInvariant!695 (LexerInterface!729 List!4362) Bool)

(assert (=> b!449153 (= res!199281 (rulesInvariant!695 thiss!17480 rules!1920))))

(declare-fun b!449154 () Bool)

(assert (=> b!449154 (= e!274425 false)))

(declare-fun b!449155 () Bool)

(declare-fun res!199306 () Bool)

(assert (=> b!449155 (=> (not res!199306) (not e!274452))))

(declare-fun isEmpty!3292 (List!4362) Bool)

(assert (=> b!449155 (= res!199306 (not (isEmpty!3292 rules!1920)))))

(declare-fun b!449156 () Bool)

(declare-fun Unit!7827 () Unit!7823)

(assert (=> b!449156 (= e!274427 Unit!7827)))

(declare-fun b!449157 () Bool)

(assert (=> b!449157 (= e!274453 (isEmpty!3291 (_2!2846 lt!199051)))))

(declare-fun b!449158 () Bool)

(declare-fun e!274435 () Unit!7823)

(declare-fun Unit!7828 () Unit!7823)

(assert (=> b!449158 (= e!274435 Unit!7828)))

(declare-fun e!274437 () Bool)

(declare-fun tp!125326 () Bool)

(declare-fun b!449159 () Bool)

(declare-fun inv!21 (TokenValue!865) Bool)

(assert (=> b!449159 (= e!274430 (and (inv!21 (value!28341 (h!9750 tokens!465))) e!274437 tp!125326))))

(declare-fun b!449160 () Bool)

(declare-fun tp!125327 () Bool)

(assert (=> b!449160 (= e!274418 (and (inv!21 (value!28341 separatorToken!170)) e!274434 tp!125327))))

(declare-fun b!449161 () Bool)

(declare-fun Unit!7829 () Unit!7823)

(assert (=> b!449161 (= e!274445 Unit!7829)))

(declare-fun lt!199078 () C!3056)

(declare-fun lt!199047 () Unit!7823)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!102 (LexerInterface!729 List!4362 List!4362 Rule!1486 Rule!1486 C!3056) Unit!7823)

(assert (=> b!449161 (= lt!199047 (lemmaSepRuleNotContainsCharContainedInANonSepRule!102 thiss!17480 rules!1920 rules!1920 (rule!1530 lt!199053) (rule!1530 separatorToken!170) lt!199078))))

(assert (=> b!449161 false))

(declare-fun b!449162 () Bool)

(assert (=> b!449162 (= e!274440 true)))

(declare-fun lt!199057 () BalanceConc!3026)

(declare-fun lt!199038 () Bool)

(declare-fun rulesProduceEachTokenIndividually!521 (LexerInterface!729 List!4362 BalanceConc!3026) Bool)

(assert (=> b!449162 (= lt!199038 (rulesProduceEachTokenIndividually!521 thiss!17480 rules!1920 lt!199057))))

(declare-fun lt!199077 () Option!1111)

(assert (=> b!449162 (= lt!199077 (Some!1110 (tuple2!5259 separatorToken!170 lt!199063)))))

(declare-fun lt!199032 () Unit!7823)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!74 (LexerInterface!729 List!4362 Token!1430 Rule!1486 List!4361 Rule!1486) Unit!7823)

(assert (=> b!449162 (= lt!199032 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!74 thiss!17480 rules!1920 separatorToken!170 (rule!1530 separatorToken!170) lt!199063 (rule!1530 lt!199053)))))

(declare-fun lt!199070 () Unit!7823)

(assert (=> b!449162 (= lt!199070 e!274445)))

(declare-fun c!91034 () Bool)

(declare-fun contains!969 (List!4361 C!3056) Bool)

(declare-fun usedCharacters!144 (Regex!1067) List!4361)

(assert (=> b!449162 (= c!91034 (contains!969 (usedCharacters!144 (regex!843 (rule!1530 separatorToken!170))) lt!199078))))

(declare-fun head!1088 (List!4361) C!3056)

(assert (=> b!449162 (= lt!199078 (head!1088 lt!199063))))

(declare-fun lt!199041 () Unit!7823)

(assert (=> b!449162 (= lt!199041 e!274427)))

(declare-fun c!91033 () Bool)

(assert (=> b!449162 (= c!91033 (not (contains!969 (usedCharacters!144 (regex!843 (rule!1530 lt!199053))) lt!199050)))))

(assert (=> b!449162 (= lt!199050 (head!1088 lt!199065))))

(assert (=> b!449162 e!274428))

(declare-fun res!199301 () Bool)

(assert (=> b!449162 (=> (not res!199301) (not e!274428))))

(declare-fun isDefined!952 (Option!1113) Bool)

(assert (=> b!449162 (= res!199301 (isDefined!952 lt!199071))))

(declare-fun getRuleFromTag!202 (LexerInterface!729 List!4362 String!5405) Option!1113)

(assert (=> b!449162 (= lt!199071 (getRuleFromTag!202 thiss!17480 rules!1920 (tag!1099 (rule!1530 lt!199053))))))

(declare-fun lt!199069 () Unit!7823)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!202 (LexerInterface!729 List!4362 List!4361 Token!1430) Unit!7823)

(assert (=> b!449162 (= lt!199069 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!202 thiss!17480 rules!1920 lt!199065 lt!199053))))

(declare-fun charsOf!486 (Token!1430) BalanceConc!3024)

(assert (=> b!449162 (= lt!199065 (list!1929 (charsOf!486 lt!199053)))))

(declare-fun lt!199045 () Unit!7823)

(assert (=> b!449162 (= lt!199045 (forallContained!396 tokens!465 lambda!13022 lt!199053))))

(assert (=> b!449162 e!274453))

(declare-fun res!199296 () Bool)

(assert (=> b!449162 (=> (not res!199296) (not e!274453))))

(declare-fun size!3575 (BalanceConc!3026) Int)

(assert (=> b!449162 (= res!199296 (= (size!3575 (_1!2846 lt!199051)) 1))))

(declare-fun lt!199073 () BalanceConc!3024)

(assert (=> b!449162 (= lt!199051 (lex!521 thiss!17480 rules!1920 lt!199073))))

(declare-fun lt!199064 () BalanceConc!3026)

(assert (=> b!449162 (= lt!199073 (printTailRec!415 thiss!17480 lt!199064 0 (BalanceConc!3025 Empty!1508)))))

(assert (=> b!449162 (= lt!199073 (print!454 thiss!17480 lt!199064))))

(assert (=> b!449162 (= lt!199064 (singletonSeq!389 lt!199053))))

(assert (=> b!449162 e!274421))

(declare-fun res!199305 () Bool)

(assert (=> b!449162 (=> (not res!199305) (not e!274421))))

(assert (=> b!449162 (= res!199305 (isDefined!952 lt!199055))))

(assert (=> b!449162 (= lt!199055 (getRuleFromTag!202 thiss!17480 rules!1920 (tag!1099 (rule!1530 separatorToken!170))))))

(declare-fun lt!199054 () Unit!7823)

(assert (=> b!449162 (= lt!199054 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!202 thiss!17480 rules!1920 lt!199036 separatorToken!170))))

(assert (=> b!449162 e!274426))

(declare-fun res!199276 () Bool)

(assert (=> b!449162 (=> (not res!199276) (not e!274426))))

(assert (=> b!449162 (= res!199276 (= (size!3575 (_1!2846 lt!199074)) 1))))

(declare-fun lt!199048 () BalanceConc!3024)

(assert (=> b!449162 (= lt!199074 (lex!521 thiss!17480 rules!1920 lt!199048))))

(declare-fun lt!199066 () BalanceConc!3026)

(assert (=> b!449162 (= lt!199048 (printTailRec!415 thiss!17480 lt!199066 0 (BalanceConc!3025 Empty!1508)))))

(assert (=> b!449162 (= lt!199048 (print!454 thiss!17480 lt!199066))))

(assert (=> b!449162 (= lt!199066 (singletonSeq!389 separatorToken!170))))

(assert (=> b!449162 (rulesProduceIndividualToken!478 thiss!17480 rules!1920 lt!199053)))

(declare-fun lt!199068 () Unit!7823)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!192 (LexerInterface!729 List!4362 List!4363 Token!1430) Unit!7823)

(assert (=> b!449162 (= lt!199068 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!192 thiss!17480 rules!1920 tokens!465 lt!199053))))

(assert (=> b!449162 (= lt!199053 (head!1087 (t!70779 tokens!465)))))

(declare-fun lt!199039 () Unit!7823)

(assert (=> b!449162 (= lt!199039 e!274435)))

(declare-fun c!91035 () Bool)

(declare-fun isEmpty!3293 (List!4363) Bool)

(assert (=> b!449162 (= c!91035 (isEmpty!3293 (t!70779 tokens!465)))))

(declare-fun lt!199079 () List!4361)

(assert (=> b!449162 (= lt!199077 (maxPrefix!445 thiss!17480 rules!1920 lt!199079))))

(declare-fun lt!199037 () tuple2!5258)

(assert (=> b!449162 (= lt!199079 (_2!2845 lt!199037))))

(declare-fun lt!199058 () Unit!7823)

(declare-fun lemmaSamePrefixThenSameSuffix!288 (List!4361 List!4361 List!4361 List!4361 List!4361) Unit!7823)

(assert (=> b!449162 (= lt!199058 (lemmaSamePrefixThenSameSuffix!288 lt!199056 lt!199079 lt!199056 (_2!2845 lt!199037) lt!199043))))

(assert (=> b!449162 (= lt!199037 (get!1581 (maxPrefix!445 thiss!17480 rules!1920 lt!199043)))))

(declare-fun isPrefix!503 (List!4361 List!4361) Bool)

(assert (=> b!449162 (isPrefix!503 lt!199056 lt!199033)))

(declare-fun lt!199049 () Unit!7823)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!394 (List!4361 List!4361) Unit!7823)

(assert (=> b!449162 (= lt!199049 (lemmaConcatTwoListThenFirstIsPrefix!394 lt!199056 lt!199079))))

(assert (=> b!449162 e!274444))

(declare-fun res!199280 () Bool)

(assert (=> b!449162 (=> res!199280 e!274444)))

(assert (=> b!449162 (= res!199280 (isEmpty!3293 tokens!465))))

(declare-fun lt!199034 () Unit!7823)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!250 (LexerInterface!729 List!4362 List!4363 Token!1430) Unit!7823)

(assert (=> b!449162 (= lt!199034 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!250 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!449163 () Bool)

(declare-fun tp!125332 () Bool)

(declare-fun e!274436 () Bool)

(assert (=> b!449163 (= e!274437 (and tp!125332 (inv!5424 (tag!1099 (rule!1530 (h!9750 tokens!465)))) (inv!5428 (transformation!843 (rule!1530 (h!9750 tokens!465)))) e!274436))))

(declare-fun b!449164 () Bool)

(declare-fun tp!125329 () Bool)

(assert (=> b!449164 (= e!274423 (and e!274433 tp!125329))))

(declare-fun b!449165 () Bool)

(assert (=> b!449165 (= e!274417 (not e!274431))))

(declare-fun res!199303 () Bool)

(assert (=> b!449165 (=> res!199303 e!274431)))

(declare-fun printWithSeparatorTokenWhenNeededRec!402 (LexerInterface!729 List!4362 BalanceConc!3026 Token!1430 Int) BalanceConc!3024)

(assert (=> b!449165 (= res!199303 (not (= lt!199063 (list!1929 (printWithSeparatorTokenWhenNeededRec!402 thiss!17480 rules!1920 lt!199057 separatorToken!170 0)))))))

(declare-fun seqFromList!1052 (List!4363) BalanceConc!3026)

(assert (=> b!449165 (= lt!199057 (seqFromList!1052 (t!70779 tokens!465)))))

(declare-fun lt!199076 () List!4361)

(assert (=> b!449165 (= lt!199076 lt!199033)))

(assert (=> b!449165 (= lt!199033 (++!1262 lt!199056 lt!199079))))

(assert (=> b!449165 (= lt!199076 (++!1262 (++!1262 lt!199056 lt!199036) lt!199063))))

(declare-fun lt!199059 () Unit!7823)

(declare-fun lemmaConcatAssociativity!578 (List!4361 List!4361 List!4361) Unit!7823)

(assert (=> b!449165 (= lt!199059 (lemmaConcatAssociativity!578 lt!199056 lt!199036 lt!199063))))

(assert (=> b!449165 (= lt!199056 (list!1929 (charsOf!486 (h!9750 tokens!465))))))

(assert (=> b!449165 (= lt!199079 (++!1262 lt!199036 lt!199063))))

(declare-fun printWithSeparatorTokenWhenNeededList!410 (LexerInterface!729 List!4362 List!4363 Token!1430) List!4361)

(assert (=> b!449165 (= lt!199063 (printWithSeparatorTokenWhenNeededList!410 thiss!17480 rules!1920 (t!70779 tokens!465) separatorToken!170))))

(assert (=> b!449165 (= lt!199036 (list!1929 (charsOf!486 separatorToken!170)))))

(declare-fun b!449166 () Bool)

(declare-fun Unit!7830 () Unit!7823)

(assert (=> b!449166 (= e!274435 Unit!7830)))

(assert (=> b!449166 false))

(declare-fun b!449167 () Bool)

(assert (=> b!449167 (= e!274452 e!274450)))

(declare-fun res!199278 () Bool)

(assert (=> b!449167 (=> (not res!199278) (not e!274450))))

(declare-fun lt!199046 () BalanceConc!3026)

(assert (=> b!449167 (= res!199278 (rulesProduceEachTokenIndividually!521 thiss!17480 rules!1920 lt!199046))))

(assert (=> b!449167 (= lt!199046 (seqFromList!1052 tokens!465))))

(declare-fun b!449168 () Bool)

(declare-fun res!199282 () Bool)

(assert (=> b!449168 (=> (not res!199282) (not e!274426))))

(assert (=> b!449168 (= res!199282 (= (apply!1102 (_1!2846 lt!199074) 0) separatorToken!170))))

(assert (=> b!449169 (= e!274436 (and tp!125336 tp!125330))))

(declare-fun b!449170 () Bool)

(assert (=> b!449170 (= e!274450 e!274417)))

(declare-fun res!199284 () Bool)

(assert (=> b!449170 (=> (not res!199284) (not e!274417))))

(assert (=> b!449170 (= res!199284 (= lt!199043 lt!199067))))

(assert (=> b!449170 (= lt!199067 (list!1929 (printWithSeparatorTokenWhenNeededRec!402 thiss!17480 rules!1920 lt!199046 separatorToken!170 0)))))

(assert (=> b!449170 (= lt!199043 (printWithSeparatorTokenWhenNeededList!410 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!449171 () Bool)

(assert (=> b!449171 (= e!274429 (= (rule!1530 lt!199053) lt!199075))))

(assert (= (and start!42422 res!199288) b!449155))

(assert (= (and b!449155 res!199306) b!449153))

(assert (= (and b!449153 res!199281) b!449167))

(assert (= (and b!449167 res!199278) b!449140))

(assert (= (and b!449140 res!199298) b!449125))

(assert (= (and b!449125 res!199286) b!449150))

(assert (= (and b!449150 res!199291) b!449132))

(assert (= (and b!449132 res!199285) b!449134))

(assert (= (and b!449134 res!199292) b!449170))

(assert (= (and b!449170 res!199284) b!449142))

(assert (= (and b!449142 res!199289) b!449165))

(assert (= (and b!449165 (not res!199303)) b!449149))

(assert (= (and b!449149 res!199290) b!449128))

(assert (= (and b!449149 (not res!199300)) b!449143))

(assert (= (and b!449143 (not res!199299)) b!449135))

(assert (= (and b!449135 (not res!199304)) b!449131))

(assert (= (and b!449131 (not res!199295)) b!449141))

(assert (= (and b!449141 (not res!199275)) b!449129))

(assert (= (and b!449129 res!199283) b!449126))

(assert (= (and b!449126 res!199297) b!449148))

(assert (= (and b!449129 (not res!199287)) b!449162))

(assert (= (and b!449162 (not res!199280)) b!449130))

(assert (= (and b!449130 res!199279) b!449139))

(assert (= (and b!449162 c!91035) b!449166))

(assert (= (and b!449162 (not c!91035)) b!449158))

(assert (= (and b!449162 res!199276) b!449168))

(assert (= (and b!449168 res!199282) b!449146))

(assert (= (and b!449162 res!199305) b!449151))

(assert (= (and b!449151 res!199302) b!449133))

(assert (= (and b!449162 res!199296) b!449136))

(assert (= (and b!449136 res!199293) b!449157))

(assert (= (and b!449162 res!199301) b!449144))

(assert (= (and b!449144 res!199294) b!449171))

(assert (= (and b!449162 c!91033) b!449137))

(assert (= (and b!449162 (not c!91033)) b!449156))

(assert (= (and b!449137 res!199277) b!449154))

(assert (= (and b!449162 c!91034) b!449161))

(assert (= (and b!449162 (not c!91034)) b!449147))

(assert (= b!449127 b!449145))

(assert (= b!449164 b!449127))

(assert (= (and start!42422 ((_ is Cons!4352) rules!1920)) b!449164))

(assert (= b!449138 b!449152))

(assert (= b!449160 b!449138))

(assert (= start!42422 b!449160))

(assert (= b!449163 b!449169))

(assert (= b!449159 b!449163))

(assert (= b!449124 b!449159))

(assert (= (and start!42422 ((_ is Cons!4353) tokens!465)) b!449124))

(declare-fun m!711109 () Bool)

(assert (=> b!449159 m!711109))

(declare-fun m!711111 () Bool)

(assert (=> b!449135 m!711111))

(declare-fun m!711113 () Bool)

(assert (=> b!449141 m!711113))

(assert (=> b!449141 m!711113))

(declare-fun m!711115 () Bool)

(assert (=> b!449141 m!711115))

(assert (=> b!449141 m!711115))

(declare-fun m!711117 () Bool)

(assert (=> b!449141 m!711117))

(declare-fun m!711119 () Bool)

(assert (=> b!449141 m!711119))

(declare-fun m!711121 () Bool)

(assert (=> b!449153 m!711121))

(declare-fun m!711123 () Bool)

(assert (=> b!449167 m!711123))

(declare-fun m!711125 () Bool)

(assert (=> b!449167 m!711125))

(declare-fun m!711127 () Bool)

(assert (=> b!449168 m!711127))

(declare-fun m!711129 () Bool)

(assert (=> b!449162 m!711129))

(declare-fun m!711131 () Bool)

(assert (=> b!449162 m!711131))

(declare-fun m!711133 () Bool)

(assert (=> b!449162 m!711133))

(declare-fun m!711135 () Bool)

(assert (=> b!449162 m!711135))

(declare-fun m!711137 () Bool)

(assert (=> b!449162 m!711137))

(declare-fun m!711139 () Bool)

(assert (=> b!449162 m!711139))

(assert (=> b!449162 m!711129))

(declare-fun m!711141 () Bool)

(assert (=> b!449162 m!711141))

(declare-fun m!711143 () Bool)

(assert (=> b!449162 m!711143))

(declare-fun m!711145 () Bool)

(assert (=> b!449162 m!711145))

(declare-fun m!711147 () Bool)

(assert (=> b!449162 m!711147))

(declare-fun m!711149 () Bool)

(assert (=> b!449162 m!711149))

(declare-fun m!711151 () Bool)

(assert (=> b!449162 m!711151))

(declare-fun m!711153 () Bool)

(assert (=> b!449162 m!711153))

(declare-fun m!711155 () Bool)

(assert (=> b!449162 m!711155))

(declare-fun m!711157 () Bool)

(assert (=> b!449162 m!711157))

(declare-fun m!711159 () Bool)

(assert (=> b!449162 m!711159))

(declare-fun m!711161 () Bool)

(assert (=> b!449162 m!711161))

(declare-fun m!711163 () Bool)

(assert (=> b!449162 m!711163))

(declare-fun m!711165 () Bool)

(assert (=> b!449162 m!711165))

(declare-fun m!711167 () Bool)

(assert (=> b!449162 m!711167))

(assert (=> b!449162 m!711161))

(declare-fun m!711169 () Bool)

(assert (=> b!449162 m!711169))

(declare-fun m!711171 () Bool)

(assert (=> b!449162 m!711171))

(declare-fun m!711173 () Bool)

(assert (=> b!449162 m!711173))

(declare-fun m!711175 () Bool)

(assert (=> b!449162 m!711175))

(declare-fun m!711177 () Bool)

(assert (=> b!449162 m!711177))

(declare-fun m!711179 () Bool)

(assert (=> b!449162 m!711179))

(declare-fun m!711181 () Bool)

(assert (=> b!449162 m!711181))

(declare-fun m!711183 () Bool)

(assert (=> b!449162 m!711183))

(declare-fun m!711185 () Bool)

(assert (=> b!449162 m!711185))

(declare-fun m!711187 () Bool)

(assert (=> b!449162 m!711187))

(declare-fun m!711189 () Bool)

(assert (=> b!449162 m!711189))

(declare-fun m!711191 () Bool)

(assert (=> b!449162 m!711191))

(declare-fun m!711193 () Bool)

(assert (=> b!449162 m!711193))

(assert (=> b!449162 m!711193))

(declare-fun m!711195 () Bool)

(assert (=> b!449162 m!711195))

(declare-fun m!711197 () Bool)

(assert (=> b!449162 m!711197))

(declare-fun m!711199 () Bool)

(assert (=> b!449162 m!711199))

(declare-fun m!711201 () Bool)

(assert (=> b!449162 m!711201))

(assert (=> b!449162 m!711173))

(declare-fun m!711203 () Bool)

(assert (=> b!449162 m!711203))

(declare-fun m!711205 () Bool)

(assert (=> b!449162 m!711205))

(declare-fun m!711207 () Bool)

(assert (=> b!449146 m!711207))

(declare-fun m!711209 () Bool)

(assert (=> b!449142 m!711209))

(assert (=> b!449142 m!711209))

(declare-fun m!711211 () Bool)

(assert (=> b!449142 m!711211))

(declare-fun m!711213 () Bool)

(assert (=> b!449144 m!711213))

(declare-fun m!711215 () Bool)

(assert (=> b!449144 m!711215))

(declare-fun m!711217 () Bool)

(assert (=> b!449151 m!711217))

(declare-fun m!711219 () Bool)

(assert (=> b!449151 m!711219))

(declare-fun m!711221 () Bool)

(assert (=> b!449163 m!711221))

(declare-fun m!711223 () Bool)

(assert (=> b!449163 m!711223))

(declare-fun m!711225 () Bool)

(assert (=> b!449165 m!711225))

(declare-fun m!711227 () Bool)

(assert (=> b!449165 m!711227))

(declare-fun m!711229 () Bool)

(assert (=> b!449165 m!711229))

(declare-fun m!711231 () Bool)

(assert (=> b!449165 m!711231))

(assert (=> b!449165 m!711225))

(declare-fun m!711233 () Bool)

(assert (=> b!449165 m!711233))

(declare-fun m!711235 () Bool)

(assert (=> b!449165 m!711235))

(declare-fun m!711237 () Bool)

(assert (=> b!449165 m!711237))

(declare-fun m!711239 () Bool)

(assert (=> b!449165 m!711239))

(declare-fun m!711241 () Bool)

(assert (=> b!449165 m!711241))

(declare-fun m!711243 () Bool)

(assert (=> b!449165 m!711243))

(declare-fun m!711245 () Bool)

(assert (=> b!449165 m!711245))

(assert (=> b!449165 m!711245))

(declare-fun m!711247 () Bool)

(assert (=> b!449165 m!711247))

(assert (=> b!449165 m!711233))

(declare-fun m!711249 () Bool)

(assert (=> b!449165 m!711249))

(assert (=> b!449165 m!711239))

(declare-fun m!711251 () Bool)

(assert (=> b!449128 m!711251))

(declare-fun m!711253 () Bool)

(assert (=> b!449170 m!711253))

(assert (=> b!449170 m!711253))

(declare-fun m!711255 () Bool)

(assert (=> b!449170 m!711255))

(declare-fun m!711257 () Bool)

(assert (=> b!449170 m!711257))

(declare-fun m!711259 () Bool)

(assert (=> b!449137 m!711259))

(declare-fun m!711261 () Bool)

(assert (=> b!449137 m!711261))

(declare-fun m!711263 () Bool)

(assert (=> b!449161 m!711263))

(declare-fun m!711265 () Bool)

(assert (=> b!449143 m!711265))

(declare-fun m!711267 () Bool)

(assert (=> b!449143 m!711267))

(declare-fun m!711269 () Bool)

(assert (=> b!449143 m!711269))

(declare-fun m!711271 () Bool)

(assert (=> b!449143 m!711271))

(declare-fun m!711273 () Bool)

(assert (=> b!449143 m!711273))

(declare-fun m!711275 () Bool)

(assert (=> b!449155 m!711275))

(declare-fun m!711277 () Bool)

(assert (=> b!449126 m!711277))

(declare-fun m!711279 () Bool)

(assert (=> b!449136 m!711279))

(declare-fun m!711281 () Bool)

(assert (=> b!449148 m!711281))

(declare-fun m!711283 () Bool)

(assert (=> b!449160 m!711283))

(declare-fun m!711285 () Bool)

(assert (=> start!42422 m!711285))

(declare-fun m!711287 () Bool)

(assert (=> b!449130 m!711287))

(assert (=> b!449130 m!711161))

(declare-fun m!711289 () Bool)

(assert (=> b!449132 m!711289))

(declare-fun m!711291 () Bool)

(assert (=> b!449138 m!711291))

(declare-fun m!711293 () Bool)

(assert (=> b!449138 m!711293))

(declare-fun m!711295 () Bool)

(assert (=> b!449127 m!711295))

(declare-fun m!711297 () Bool)

(assert (=> b!449127 m!711297))

(declare-fun m!711299 () Bool)

(assert (=> b!449124 m!711299))

(declare-fun m!711301 () Bool)

(assert (=> b!449157 m!711301))

(declare-fun m!711303 () Bool)

(assert (=> b!449129 m!711303))

(declare-fun m!711305 () Bool)

(assert (=> b!449129 m!711305))

(declare-fun m!711307 () Bool)

(assert (=> b!449129 m!711307))

(declare-fun m!711309 () Bool)

(assert (=> b!449140 m!711309))

(declare-fun m!711311 () Bool)

(assert (=> b!449150 m!711311))

(declare-fun m!711313 () Bool)

(assert (=> b!449139 m!711313))

(declare-fun m!711315 () Bool)

(assert (=> b!449139 m!711315))

(declare-fun m!711317 () Bool)

(assert (=> b!449131 m!711317))

(assert (=> b!449131 m!711317))

(declare-fun m!711319 () Bool)

(assert (=> b!449131 m!711319))

(declare-fun m!711321 () Bool)

(assert (=> b!449131 m!711321))

(check-sat (not b_next!12437) (not b!449136) (not b!449153) (not b!449138) b_and!48385 (not b!449160) (not b!449132) (not b!449130) (not start!42422) (not b!449141) (not b!449139) (not b!449146) b_and!48383 (not b!449170) (not b!449129) (not b!449157) (not b_next!12439) (not b!449127) b_and!48379 (not b!449144) (not b!449140) (not b!449165) (not b!449131) (not b!449126) (not b!449128) (not b!449151) (not b_next!12443) (not b!449168) b_and!48381 (not b_next!12433) (not b!449142) b_and!48377 (not b_next!12441) (not b!449163) (not b!449155) (not b!449148) (not b!449150) (not b!449180) (not b!449161) (not b!449162) (not b!449124) (not b!449137) (not b!449159) (not b!449135) (not b!449164) b_and!48387 (not b!449167) (not b_next!12435) (not b!449143))
(check-sat (not b_next!12437) b_and!48385 b_and!48383 (not b_next!12439) b_and!48379 (not b_next!12443) b_and!48381 (not b_next!12433) b_and!48387 (not b_next!12435) b_and!48377 (not b_next!12441))
