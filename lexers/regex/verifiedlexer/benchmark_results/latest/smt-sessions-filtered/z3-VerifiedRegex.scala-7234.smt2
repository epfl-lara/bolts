; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385208 () Bool)

(assert start!385208)

(declare-fun b!4078254 () Bool)

(declare-fun b_free!113745 () Bool)

(declare-fun b_next!114449 () Bool)

(assert (=> b!4078254 (= b_free!113745 (not b_next!114449))))

(declare-fun tp!1234605 () Bool)

(declare-fun b_and!313619 () Bool)

(assert (=> b!4078254 (= tp!1234605 b_and!313619)))

(declare-fun b_free!113747 () Bool)

(declare-fun b_next!114451 () Bool)

(assert (=> b!4078254 (= b_free!113747 (not b_next!114451))))

(declare-fun tp!1234603 () Bool)

(declare-fun b_and!313621 () Bool)

(assert (=> b!4078254 (= tp!1234603 b_and!313621)))

(declare-fun b!4078263 () Bool)

(declare-fun b_free!113749 () Bool)

(declare-fun b_next!114453 () Bool)

(assert (=> b!4078263 (= b_free!113749 (not b_next!114453))))

(declare-fun tp!1234606 () Bool)

(declare-fun b_and!313623 () Bool)

(assert (=> b!4078263 (= tp!1234606 b_and!313623)))

(declare-fun b_free!113751 () Bool)

(declare-fun b_next!114455 () Bool)

(assert (=> b!4078263 (= b_free!113751 (not b_next!114455))))

(declare-fun tp!1234599 () Bool)

(declare-fun b_and!313625 () Bool)

(assert (=> b!4078263 (= tp!1234599 b_and!313625)))

(declare-fun tp!1234604 () Bool)

(declare-fun e!2531238 () Bool)

(declare-fun e!2531241 () Bool)

(declare-datatypes ((List!43791 0))(
  ( (Nil!43667) (Cons!43667 (h!49087 (_ BitVec 16)) (t!337502 List!43791)) )
))
(declare-datatypes ((TokenValue!7270 0))(
  ( (FloatLiteralValue!14540 (text!51335 List!43791)) (TokenValueExt!7269 (__x!26757 Int)) (Broken!36350 (value!221266 List!43791)) (Object!7393) (End!7270) (Def!7270) (Underscore!7270) (Match!7270) (Else!7270) (Error!7270) (Case!7270) (If!7270) (Extends!7270) (Abstract!7270) (Class!7270) (Val!7270) (DelimiterValue!14540 (del!7330 List!43791)) (KeywordValue!7276 (value!221267 List!43791)) (CommentValue!14540 (value!221268 List!43791)) (WhitespaceValue!14540 (value!221269 List!43791)) (IndentationValue!7270 (value!221270 List!43791)) (String!50099) (Int32!7270) (Broken!36351 (value!221271 List!43791)) (Boolean!7271) (Unit!63204) (OperatorValue!7273 (op!7330 List!43791)) (IdentifierValue!14540 (value!221272 List!43791)) (IdentifierValue!14541 (value!221273 List!43791)) (WhitespaceValue!14541 (value!221274 List!43791)) (True!14540) (False!14540) (Broken!36352 (value!221275 List!43791)) (Broken!36353 (value!221276 List!43791)) (True!14541) (RightBrace!7270) (RightBracket!7270) (Colon!7270) (Null!7270) (Comma!7270) (LeftBracket!7270) (False!14541) (LeftBrace!7270) (ImaginaryLiteralValue!7270 (text!51336 List!43791)) (StringLiteralValue!21810 (value!221277 List!43791)) (EOFValue!7270 (value!221278 List!43791)) (IdentValue!7270 (value!221279 List!43791)) (DelimiterValue!14541 (value!221280 List!43791)) (DedentValue!7270 (value!221281 List!43791)) (NewLineValue!7270 (value!221282 List!43791)) (IntegerValue!21810 (value!221283 (_ BitVec 32)) (text!51337 List!43791)) (IntegerValue!21811 (value!221284 Int) (text!51338 List!43791)) (Times!7270) (Or!7270) (Equal!7270) (Minus!7270) (Broken!36354 (value!221285 List!43791)) (And!7270) (Div!7270) (LessEqual!7270) (Mod!7270) (Concat!19215) (Not!7270) (Plus!7270) (SpaceValue!7270 (value!221286 List!43791)) (IntegerValue!21812 (value!221287 Int) (text!51339 List!43791)) (StringLiteralValue!21811 (text!51340 List!43791)) (FloatLiteralValue!14541 (text!51341 List!43791)) (BytesLiteralValue!7270 (value!221288 List!43791)) (CommentValue!14541 (value!221289 List!43791)) (StringLiteralValue!21812 (value!221290 List!43791)) (ErrorTokenValue!7270 (msg!7331 List!43791)) )
))
(declare-datatypes ((C!24076 0))(
  ( (C!24077 (val!14148 Int)) )
))
(declare-datatypes ((Regex!11945 0))(
  ( (ElementMatch!11945 (c!703418 C!24076)) (Concat!19216 (regOne!24402 Regex!11945) (regTwo!24402 Regex!11945)) (EmptyExpr!11945) (Star!11945 (reg!12274 Regex!11945)) (EmptyLang!11945) (Union!11945 (regOne!24403 Regex!11945) (regTwo!24403 Regex!11945)) )
))
(declare-datatypes ((String!50100 0))(
  ( (String!50101 (value!221291 String)) )
))
(declare-datatypes ((List!43792 0))(
  ( (Nil!43668) (Cons!43668 (h!49088 C!24076) (t!337503 List!43792)) )
))
(declare-datatypes ((IArray!26507 0))(
  ( (IArray!26508 (innerList!13311 List!43792)) )
))
(declare-datatypes ((Conc!13251 0))(
  ( (Node!13251 (left!32821 Conc!13251) (right!33151 Conc!13251) (csize!26732 Int) (cheight!13462 Int)) (Leaf!20486 (xs!16557 IArray!26507) (csize!26733 Int)) (Empty!13251) )
))
(declare-datatypes ((BalanceConc!26096 0))(
  ( (BalanceConc!26097 (c!703419 Conc!13251)) )
))
(declare-datatypes ((TokenValueInjection!13968 0))(
  ( (TokenValueInjection!13969 (toValue!9608 Int) (toChars!9467 Int)) )
))
(declare-datatypes ((Rule!13880 0))(
  ( (Rule!13881 (regex!7040 Regex!11945) (tag!7900 String!50100) (isSeparator!7040 Bool) (transformation!7040 TokenValueInjection!13968)) )
))
(declare-datatypes ((List!43793 0))(
  ( (Nil!43669) (Cons!43669 (h!49089 Rule!13880) (t!337504 List!43793)) )
))
(declare-fun rules!3870 () List!43793)

(declare-fun b!4078250 () Bool)

(declare-fun inv!58322 (String!50100) Bool)

(declare-fun inv!58324 (TokenValueInjection!13968) Bool)

(assert (=> b!4078250 (= e!2531238 (and tp!1234604 (inv!58322 (tag!7900 (h!49089 rules!3870))) (inv!58324 (transformation!7040 (h!49089 rules!3870))) e!2531241))))

(declare-fun b!4078251 () Bool)

(declare-fun e!2531251 () Bool)

(declare-fun tp_is_empty!20893 () Bool)

(declare-fun tp!1234602 () Bool)

(assert (=> b!4078251 (= e!2531251 (and tp_is_empty!20893 tp!1234602))))

(declare-fun b!4078252 () Bool)

(declare-fun e!2531247 () Bool)

(declare-fun e!2531242 () Bool)

(assert (=> b!4078252 (= e!2531247 e!2531242)))

(declare-fun res!1665934 () Bool)

(assert (=> b!4078252 (=> res!1665934 e!2531242)))

(declare-datatypes ((Token!13206 0))(
  ( (Token!13207 (value!221292 TokenValue!7270) (rule!10152 Rule!13880) (size!32619 Int) (originalCharacters!7634 List!43792)) )
))
(declare-datatypes ((tuple2!42638 0))(
  ( (tuple2!42639 (_1!24453 Token!13206) (_2!24453 List!43792)) )
))
(declare-fun lt!1459219 () tuple2!42638)

(declare-fun r!4213 () Rule!13880)

(assert (=> b!4078252 (= res!1665934 (or (not (= (rule!10152 (_1!24453 lt!1459219)) (h!49089 rules!3870))) (= (rule!10152 (_1!24453 lt!1459219)) r!4213)))))

(declare-datatypes ((Option!9448 0))(
  ( (None!9447) (Some!9447 (v!39899 tuple2!42638)) )
))
(declare-fun lt!1459218 () Option!9448)

(declare-fun get!14318 (Option!9448) tuple2!42638)

(assert (=> b!4078252 (= lt!1459219 (get!14318 lt!1459218))))

(declare-fun b!4078253 () Bool)

(declare-fun res!1665936 () Bool)

(declare-fun e!2531249 () Bool)

(assert (=> b!4078253 (=> (not res!1665936) (not e!2531249))))

(declare-fun input!3411 () List!43792)

(declare-fun suffix!1518 () List!43792)

(declare-fun p!2988 () List!43792)

(declare-fun ++!11446 (List!43792 List!43792) List!43792)

(assert (=> b!4078253 (= res!1665936 (= input!3411 (++!11446 p!2988 suffix!1518)))))

(declare-fun b!4078255 () Bool)

(declare-fun res!1665933 () Bool)

(assert (=> b!4078255 (=> (not res!1665933) (not e!2531249))))

(declare-datatypes ((LexerInterface!6629 0))(
  ( (LexerInterfaceExt!6626 (__x!26758 Int)) (Lexer!6627) )
))
(declare-fun thiss!26199 () LexerInterface!6629)

(declare-fun rulesInvariant!5972 (LexerInterface!6629 List!43793) Bool)

(assert (=> b!4078255 (= res!1665933 (rulesInvariant!5972 thiss!26199 rules!3870))))

(declare-fun b!4078256 () Bool)

(declare-fun ruleValid!2964 (LexerInterface!6629 Rule!13880) Bool)

(assert (=> b!4078256 (= e!2531242 (ruleValid!2964 thiss!26199 (h!49089 rules!3870)))))

(declare-fun tp!1234600 () Bool)

(declare-fun e!2531243 () Bool)

(declare-fun e!2531252 () Bool)

(declare-fun b!4078257 () Bool)

(assert (=> b!4078257 (= e!2531243 (and tp!1234600 (inv!58322 (tag!7900 r!4213)) (inv!58324 (transformation!7040 r!4213)) e!2531252))))

(declare-fun b!4078258 () Bool)

(declare-fun e!2531239 () Bool)

(declare-fun e!2531248 () Bool)

(assert (=> b!4078258 (= e!2531239 (not e!2531248))))

(declare-fun res!1665929 () Bool)

(assert (=> b!4078258 (=> res!1665929 e!2531248)))

(declare-fun matchR!5890 (Regex!11945 List!43792) Bool)

(assert (=> b!4078258 (= res!1665929 (not (matchR!5890 (regex!7040 r!4213) p!2988)))))

(assert (=> b!4078258 (ruleValid!2964 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63205 0))(
  ( (Unit!63206) )
))
(declare-fun lt!1459223 () Unit!63205)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2032 (LexerInterface!6629 Rule!13880 List!43793) Unit!63205)

(assert (=> b!4078258 (= lt!1459223 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2032 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4078259 () Bool)

(declare-fun res!1665937 () Bool)

(assert (=> b!4078259 (=> (not res!1665937) (not e!2531249))))

(declare-fun isEmpty!26085 (List!43792) Bool)

(assert (=> b!4078259 (= res!1665937 (not (isEmpty!26085 p!2988)))))

(declare-fun b!4078260 () Bool)

(assert (=> b!4078260 (= e!2531248 e!2531247)))

(declare-fun res!1665932 () Bool)

(assert (=> b!4078260 (=> res!1665932 e!2531247)))

(declare-fun isEmpty!26086 (Option!9448) Bool)

(assert (=> b!4078260 (= res!1665932 (isEmpty!26086 lt!1459218))))

(declare-fun maxPrefixOneRule!2915 (LexerInterface!6629 Rule!13880 List!43792) Option!9448)

(assert (=> b!4078260 (= lt!1459218 (maxPrefixOneRule!2915 thiss!26199 (h!49089 rules!3870) input!3411))))

(assert (=> b!4078260 (rulesInvariant!5972 thiss!26199 (t!337504 rules!3870))))

(declare-fun lt!1459220 () Unit!63205)

(declare-fun lemmaInvariantOnRulesThenOnTail!758 (LexerInterface!6629 Rule!13880 List!43793) Unit!63205)

(assert (=> b!4078260 (= lt!1459220 (lemmaInvariantOnRulesThenOnTail!758 thiss!26199 (h!49089 rules!3870) (t!337504 rules!3870)))))

(declare-fun b!4078261 () Bool)

(declare-fun res!1665928 () Bool)

(assert (=> b!4078261 (=> res!1665928 e!2531248)))

(get-info :version)

(assert (=> b!4078261 (= res!1665928 (or (and ((_ is Cons!43669) rules!3870) (= (h!49089 rules!3870) r!4213)) (not ((_ is Cons!43669) rules!3870)) (= (h!49089 rules!3870) r!4213)))))

(declare-fun b!4078262 () Bool)

(declare-fun e!2531246 () Bool)

(declare-fun tp!1234597 () Bool)

(assert (=> b!4078262 (= e!2531246 (and e!2531238 tp!1234597))))

(assert (=> b!4078263 (= e!2531241 (and tp!1234606 tp!1234599))))

(declare-fun b!4078264 () Bool)

(declare-fun e!2531250 () Bool)

(declare-fun tp!1234598 () Bool)

(assert (=> b!4078264 (= e!2531250 (and tp_is_empty!20893 tp!1234598))))

(declare-fun b!4078265 () Bool)

(declare-fun e!2531245 () Bool)

(declare-fun tp!1234601 () Bool)

(assert (=> b!4078265 (= e!2531245 (and tp_is_empty!20893 tp!1234601))))

(declare-fun b!4078266 () Bool)

(declare-fun res!1665930 () Bool)

(assert (=> b!4078266 (=> (not res!1665930) (not e!2531249))))

(declare-fun isEmpty!26087 (List!43793) Bool)

(assert (=> b!4078266 (= res!1665930 (not (isEmpty!26087 rules!3870)))))

(declare-fun res!1665935 () Bool)

(assert (=> start!385208 (=> (not res!1665935) (not e!2531249))))

(assert (=> start!385208 (= res!1665935 ((_ is Lexer!6627) thiss!26199))))

(assert (=> start!385208 e!2531249))

(assert (=> start!385208 true))

(assert (=> start!385208 e!2531250))

(assert (=> start!385208 e!2531246))

(assert (=> start!385208 e!2531245))

(assert (=> start!385208 e!2531251))

(assert (=> start!385208 e!2531243))

(assert (=> b!4078254 (= e!2531252 (and tp!1234605 tp!1234603))))

(declare-fun b!4078267 () Bool)

(declare-fun res!1665931 () Bool)

(assert (=> b!4078267 (=> (not res!1665931) (not e!2531249))))

(declare-fun contains!8709 (List!43793 Rule!13880) Bool)

(assert (=> b!4078267 (= res!1665931 (contains!8709 rules!3870 r!4213))))

(declare-fun b!4078268 () Bool)

(assert (=> b!4078268 (= e!2531249 e!2531239)))

(declare-fun res!1665938 () Bool)

(assert (=> b!4078268 (=> (not res!1665938) (not e!2531239))))

(declare-fun lt!1459222 () BalanceConc!26096)

(declare-fun maxPrefix!3921 (LexerInterface!6629 List!43793 List!43792) Option!9448)

(declare-fun apply!10223 (TokenValueInjection!13968 BalanceConc!26096) TokenValue!7270)

(declare-fun size!32620 (List!43792) Int)

(assert (=> b!4078268 (= res!1665938 (= (maxPrefix!3921 thiss!26199 rules!3870 input!3411) (Some!9447 (tuple2!42639 (Token!13207 (apply!10223 (transformation!7040 r!4213) lt!1459222) r!4213 (size!32620 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1459221 () Unit!63205)

(declare-fun lemmaSemiInverse!2007 (TokenValueInjection!13968 BalanceConc!26096) Unit!63205)

(assert (=> b!4078268 (= lt!1459221 (lemmaSemiInverse!2007 (transformation!7040 r!4213) lt!1459222))))

(declare-fun seqFromList!5257 (List!43792) BalanceConc!26096)

(assert (=> b!4078268 (= lt!1459222 (seqFromList!5257 p!2988))))

(assert (= (and start!385208 res!1665935) b!4078266))

(assert (= (and b!4078266 res!1665930) b!4078255))

(assert (= (and b!4078255 res!1665933) b!4078267))

(assert (= (and b!4078267 res!1665931) b!4078253))

(assert (= (and b!4078253 res!1665936) b!4078259))

(assert (= (and b!4078259 res!1665937) b!4078268))

(assert (= (and b!4078268 res!1665938) b!4078258))

(assert (= (and b!4078258 (not res!1665929)) b!4078261))

(assert (= (and b!4078261 (not res!1665928)) b!4078260))

(assert (= (and b!4078260 (not res!1665932)) b!4078252))

(assert (= (and b!4078252 (not res!1665934)) b!4078256))

(assert (= (and start!385208 ((_ is Cons!43668) suffix!1518)) b!4078264))

(assert (= b!4078250 b!4078263))

(assert (= b!4078262 b!4078250))

(assert (= (and start!385208 ((_ is Cons!43669) rules!3870)) b!4078262))

(assert (= (and start!385208 ((_ is Cons!43668) p!2988)) b!4078265))

(assert (= (and start!385208 ((_ is Cons!43668) input!3411)) b!4078251))

(assert (= b!4078257 b!4078254))

(assert (= start!385208 b!4078257))

(declare-fun m!4686231 () Bool)

(assert (=> b!4078253 m!4686231))

(declare-fun m!4686233 () Bool)

(assert (=> b!4078268 m!4686233))

(declare-fun m!4686235 () Bool)

(assert (=> b!4078268 m!4686235))

(declare-fun m!4686237 () Bool)

(assert (=> b!4078268 m!4686237))

(declare-fun m!4686239 () Bool)

(assert (=> b!4078268 m!4686239))

(declare-fun m!4686241 () Bool)

(assert (=> b!4078268 m!4686241))

(declare-fun m!4686243 () Bool)

(assert (=> b!4078250 m!4686243))

(declare-fun m!4686245 () Bool)

(assert (=> b!4078250 m!4686245))

(declare-fun m!4686247 () Bool)

(assert (=> b!4078256 m!4686247))

(declare-fun m!4686249 () Bool)

(assert (=> b!4078258 m!4686249))

(declare-fun m!4686251 () Bool)

(assert (=> b!4078258 m!4686251))

(declare-fun m!4686253 () Bool)

(assert (=> b!4078258 m!4686253))

(declare-fun m!4686255 () Bool)

(assert (=> b!4078255 m!4686255))

(declare-fun m!4686257 () Bool)

(assert (=> b!4078257 m!4686257))

(declare-fun m!4686259 () Bool)

(assert (=> b!4078257 m!4686259))

(declare-fun m!4686261 () Bool)

(assert (=> b!4078252 m!4686261))

(declare-fun m!4686263 () Bool)

(assert (=> b!4078267 m!4686263))

(declare-fun m!4686265 () Bool)

(assert (=> b!4078260 m!4686265))

(declare-fun m!4686267 () Bool)

(assert (=> b!4078260 m!4686267))

(declare-fun m!4686269 () Bool)

(assert (=> b!4078260 m!4686269))

(declare-fun m!4686271 () Bool)

(assert (=> b!4078260 m!4686271))

(declare-fun m!4686273 () Bool)

(assert (=> b!4078266 m!4686273))

(declare-fun m!4686275 () Bool)

(assert (=> b!4078259 m!4686275))

(check-sat (not b!4078255) (not b_next!114451) (not b!4078264) (not b!4078258) (not b!4078265) b_and!313619 (not b!4078268) (not b!4078257) (not b!4078260) (not b!4078252) (not b!4078266) (not b_next!114455) (not b!4078256) (not b!4078267) (not b_next!114453) (not b!4078262) tp_is_empty!20893 (not b!4078253) (not b!4078251) (not b!4078250) b_and!313625 b_and!313621 b_and!313623 (not b_next!114449) (not b!4078259))
(check-sat (not b_next!114455) (not b_next!114451) (not b_next!114453) b_and!313619 (not b_next!114449) b_and!313625 b_and!313621 b_and!313623)
(get-model)

(declare-fun d!1211503 () Bool)

(declare-fun res!1665948 () Bool)

(declare-fun e!2531255 () Bool)

(assert (=> d!1211503 (=> (not res!1665948) (not e!2531255))))

(declare-fun rulesValid!2748 (LexerInterface!6629 List!43793) Bool)

(assert (=> d!1211503 (= res!1665948 (rulesValid!2748 thiss!26199 rules!3870))))

(assert (=> d!1211503 (= (rulesInvariant!5972 thiss!26199 rules!3870) e!2531255)))

(declare-fun b!4078271 () Bool)

(declare-datatypes ((List!43795 0))(
  ( (Nil!43671) (Cons!43671 (h!49091 String!50100) (t!337530 List!43795)) )
))
(declare-fun noDuplicateTag!2749 (LexerInterface!6629 List!43793 List!43795) Bool)

(assert (=> b!4078271 (= e!2531255 (noDuplicateTag!2749 thiss!26199 rules!3870 Nil!43671))))

(assert (= (and d!1211503 res!1665948) b!4078271))

(declare-fun m!4686277 () Bool)

(assert (=> d!1211503 m!4686277))

(declare-fun m!4686279 () Bool)

(assert (=> b!4078271 m!4686279))

(assert (=> b!4078255 d!1211503))

(declare-fun d!1211513 () Bool)

(assert (=> d!1211513 (= (isEmpty!26087 rules!3870) ((_ is Nil!43669) rules!3870))))

(assert (=> b!4078266 d!1211513))

(declare-fun d!1211515 () Bool)

(declare-fun lt!1459226 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6690 (List!43793) (InoxSet Rule!13880))

(assert (=> d!1211515 (= lt!1459226 (select (content!6690 rules!3870) r!4213))))

(declare-fun e!2531263 () Bool)

(assert (=> d!1211515 (= lt!1459226 e!2531263)))

(declare-fun res!1665956 () Bool)

(assert (=> d!1211515 (=> (not res!1665956) (not e!2531263))))

(assert (=> d!1211515 (= res!1665956 ((_ is Cons!43669) rules!3870))))

(assert (=> d!1211515 (= (contains!8709 rules!3870 r!4213) lt!1459226)))

(declare-fun b!4078279 () Bool)

(declare-fun e!2531264 () Bool)

(assert (=> b!4078279 (= e!2531263 e!2531264)))

(declare-fun res!1665957 () Bool)

(assert (=> b!4078279 (=> res!1665957 e!2531264)))

(assert (=> b!4078279 (= res!1665957 (= (h!49089 rules!3870) r!4213))))

(declare-fun b!4078280 () Bool)

(assert (=> b!4078280 (= e!2531264 (contains!8709 (t!337504 rules!3870) r!4213))))

(assert (= (and d!1211515 res!1665956) b!4078279))

(assert (= (and b!4078279 (not res!1665957)) b!4078280))

(declare-fun m!4686285 () Bool)

(assert (=> d!1211515 m!4686285))

(declare-fun m!4686287 () Bool)

(assert (=> d!1211515 m!4686287))

(declare-fun m!4686289 () Bool)

(assert (=> b!4078280 m!4686289))

(assert (=> b!4078267 d!1211515))

(declare-fun d!1211521 () Bool)

(declare-fun res!1665962 () Bool)

(declare-fun e!2531267 () Bool)

(assert (=> d!1211521 (=> (not res!1665962) (not e!2531267))))

(declare-fun validRegex!5406 (Regex!11945) Bool)

(assert (=> d!1211521 (= res!1665962 (validRegex!5406 (regex!7040 (h!49089 rules!3870))))))

(assert (=> d!1211521 (= (ruleValid!2964 thiss!26199 (h!49089 rules!3870)) e!2531267)))

(declare-fun b!4078285 () Bool)

(declare-fun res!1665963 () Bool)

(assert (=> b!4078285 (=> (not res!1665963) (not e!2531267))))

(declare-fun nullable!4206 (Regex!11945) Bool)

(assert (=> b!4078285 (= res!1665963 (not (nullable!4206 (regex!7040 (h!49089 rules!3870)))))))

(declare-fun b!4078286 () Bool)

(assert (=> b!4078286 (= e!2531267 (not (= (tag!7900 (h!49089 rules!3870)) (String!50101 ""))))))

(assert (= (and d!1211521 res!1665962) b!4078285))

(assert (= (and b!4078285 res!1665963) b!4078286))

(declare-fun m!4686291 () Bool)

(assert (=> d!1211521 m!4686291))

(declare-fun m!4686293 () Bool)

(assert (=> b!4078285 m!4686293))

(assert (=> b!4078256 d!1211521))

(declare-fun d!1211523 () Bool)

(assert (=> d!1211523 (= (get!14318 lt!1459218) (v!39899 lt!1459218))))

(assert (=> b!4078252 d!1211523))

(declare-fun b!4078297 () Bool)

(declare-fun res!1665968 () Bool)

(declare-fun e!2531272 () Bool)

(assert (=> b!4078297 (=> (not res!1665968) (not e!2531272))))

(declare-fun lt!1459229 () List!43792)

(assert (=> b!4078297 (= res!1665968 (= (size!32620 lt!1459229) (+ (size!32620 p!2988) (size!32620 suffix!1518))))))

(declare-fun b!4078298 () Bool)

(assert (=> b!4078298 (= e!2531272 (or (not (= suffix!1518 Nil!43668)) (= lt!1459229 p!2988)))))

(declare-fun b!4078295 () Bool)

(declare-fun e!2531273 () List!43792)

(assert (=> b!4078295 (= e!2531273 suffix!1518)))

(declare-fun d!1211525 () Bool)

(assert (=> d!1211525 e!2531272))

(declare-fun res!1665969 () Bool)

(assert (=> d!1211525 (=> (not res!1665969) (not e!2531272))))

(declare-fun content!6691 (List!43792) (InoxSet C!24076))

(assert (=> d!1211525 (= res!1665969 (= (content!6691 lt!1459229) ((_ map or) (content!6691 p!2988) (content!6691 suffix!1518))))))

(assert (=> d!1211525 (= lt!1459229 e!2531273)))

(declare-fun c!703422 () Bool)

(assert (=> d!1211525 (= c!703422 ((_ is Nil!43668) p!2988))))

(assert (=> d!1211525 (= (++!11446 p!2988 suffix!1518) lt!1459229)))

(declare-fun b!4078296 () Bool)

(assert (=> b!4078296 (= e!2531273 (Cons!43668 (h!49088 p!2988) (++!11446 (t!337503 p!2988) suffix!1518)))))

(assert (= (and d!1211525 c!703422) b!4078295))

(assert (= (and d!1211525 (not c!703422)) b!4078296))

(assert (= (and d!1211525 res!1665969) b!4078297))

(assert (= (and b!4078297 res!1665968) b!4078298))

(declare-fun m!4686295 () Bool)

(assert (=> b!4078297 m!4686295))

(assert (=> b!4078297 m!4686241))

(declare-fun m!4686297 () Bool)

(assert (=> b!4078297 m!4686297))

(declare-fun m!4686299 () Bool)

(assert (=> d!1211525 m!4686299))

(declare-fun m!4686301 () Bool)

(assert (=> d!1211525 m!4686301))

(declare-fun m!4686303 () Bool)

(assert (=> d!1211525 m!4686303))

(declare-fun m!4686305 () Bool)

(assert (=> b!4078296 m!4686305))

(assert (=> b!4078253 d!1211525))

(declare-fun d!1211527 () Bool)

(assert (=> d!1211527 (= (isEmpty!26086 lt!1459218) (not ((_ is Some!9447) lt!1459218)))))

(assert (=> b!4078260 d!1211527))

(declare-fun b!4078414 () Bool)

(declare-fun res!1666051 () Bool)

(declare-fun e!2531337 () Bool)

(assert (=> b!4078414 (=> (not res!1666051) (not e!2531337))))

(declare-fun lt!1459272 () Option!9448)

(assert (=> b!4078414 (= res!1666051 (= (value!221292 (_1!24453 (get!14318 lt!1459272))) (apply!10223 (transformation!7040 (rule!10152 (_1!24453 (get!14318 lt!1459272)))) (seqFromList!5257 (originalCharacters!7634 (_1!24453 (get!14318 lt!1459272)))))))))

(declare-fun b!4078415 () Bool)

(assert (=> b!4078415 (= e!2531337 (= (size!32619 (_1!24453 (get!14318 lt!1459272))) (size!32620 (originalCharacters!7634 (_1!24453 (get!14318 lt!1459272))))))))

(declare-fun b!4078416 () Bool)

(declare-fun res!1666057 () Bool)

(assert (=> b!4078416 (=> (not res!1666057) (not e!2531337))))

(assert (=> b!4078416 (= res!1666057 (= (rule!10152 (_1!24453 (get!14318 lt!1459272))) (h!49089 rules!3870)))))

(declare-fun d!1211529 () Bool)

(declare-fun e!2531334 () Bool)

(assert (=> d!1211529 e!2531334))

(declare-fun res!1666052 () Bool)

(assert (=> d!1211529 (=> res!1666052 e!2531334)))

(assert (=> d!1211529 (= res!1666052 (isEmpty!26086 lt!1459272))))

(declare-fun e!2531336 () Option!9448)

(assert (=> d!1211529 (= lt!1459272 e!2531336)))

(declare-fun c!703440 () Bool)

(declare-datatypes ((tuple2!42642 0))(
  ( (tuple2!42643 (_1!24455 List!43792) (_2!24455 List!43792)) )
))
(declare-fun lt!1459270 () tuple2!42642)

(assert (=> d!1211529 (= c!703440 (isEmpty!26085 (_1!24455 lt!1459270)))))

(declare-fun findLongestMatch!1346 (Regex!11945 List!43792) tuple2!42642)

(assert (=> d!1211529 (= lt!1459270 (findLongestMatch!1346 (regex!7040 (h!49089 rules!3870)) input!3411))))

(assert (=> d!1211529 (ruleValid!2964 thiss!26199 (h!49089 rules!3870))))

(assert (=> d!1211529 (= (maxPrefixOneRule!2915 thiss!26199 (h!49089 rules!3870) input!3411) lt!1459272)))

(declare-fun b!4078417 () Bool)

(assert (=> b!4078417 (= e!2531334 e!2531337)))

(declare-fun res!1666055 () Bool)

(assert (=> b!4078417 (=> (not res!1666055) (not e!2531337))))

(declare-fun list!16238 (BalanceConc!26096) List!43792)

(declare-fun charsOf!4822 (Token!13206) BalanceConc!26096)

(assert (=> b!4078417 (= res!1666055 (matchR!5890 (regex!7040 (h!49089 rules!3870)) (list!16238 (charsOf!4822 (_1!24453 (get!14318 lt!1459272))))))))

(declare-fun b!4078418 () Bool)

(declare-fun size!32622 (BalanceConc!26096) Int)

(assert (=> b!4078418 (= e!2531336 (Some!9447 (tuple2!42639 (Token!13207 (apply!10223 (transformation!7040 (h!49089 rules!3870)) (seqFromList!5257 (_1!24455 lt!1459270))) (h!49089 rules!3870) (size!32622 (seqFromList!5257 (_1!24455 lt!1459270))) (_1!24455 lt!1459270)) (_2!24455 lt!1459270))))))

(declare-fun lt!1459273 () Unit!63205)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1406 (Regex!11945 List!43792) Unit!63205)

(assert (=> b!4078418 (= lt!1459273 (longestMatchIsAcceptedByMatchOrIsEmpty!1406 (regex!7040 (h!49089 rules!3870)) input!3411))))

(declare-fun res!1666053 () Bool)

(declare-fun findLongestMatchInner!1433 (Regex!11945 List!43792 Int List!43792 List!43792 Int) tuple2!42642)

(assert (=> b!4078418 (= res!1666053 (isEmpty!26085 (_1!24455 (findLongestMatchInner!1433 (regex!7040 (h!49089 rules!3870)) Nil!43668 (size!32620 Nil!43668) input!3411 input!3411 (size!32620 input!3411)))))))

(declare-fun e!2531335 () Bool)

(assert (=> b!4078418 (=> res!1666053 e!2531335)))

(assert (=> b!4078418 e!2531335))

(declare-fun lt!1459274 () Unit!63205)

(assert (=> b!4078418 (= lt!1459274 lt!1459273)))

(declare-fun lt!1459271 () Unit!63205)

(assert (=> b!4078418 (= lt!1459271 (lemmaSemiInverse!2007 (transformation!7040 (h!49089 rules!3870)) (seqFromList!5257 (_1!24455 lt!1459270))))))

(declare-fun b!4078419 () Bool)

(assert (=> b!4078419 (= e!2531335 (matchR!5890 (regex!7040 (h!49089 rules!3870)) (_1!24455 (findLongestMatchInner!1433 (regex!7040 (h!49089 rules!3870)) Nil!43668 (size!32620 Nil!43668) input!3411 input!3411 (size!32620 input!3411)))))))

(declare-fun b!4078420 () Bool)

(declare-fun res!1666054 () Bool)

(assert (=> b!4078420 (=> (not res!1666054) (not e!2531337))))

(assert (=> b!4078420 (= res!1666054 (= (++!11446 (list!16238 (charsOf!4822 (_1!24453 (get!14318 lt!1459272)))) (_2!24453 (get!14318 lt!1459272))) input!3411))))

(declare-fun b!4078421 () Bool)

(assert (=> b!4078421 (= e!2531336 None!9447)))

(declare-fun b!4078422 () Bool)

(declare-fun res!1666056 () Bool)

(assert (=> b!4078422 (=> (not res!1666056) (not e!2531337))))

(assert (=> b!4078422 (= res!1666056 (< (size!32620 (_2!24453 (get!14318 lt!1459272))) (size!32620 input!3411)))))

(assert (= (and d!1211529 c!703440) b!4078421))

(assert (= (and d!1211529 (not c!703440)) b!4078418))

(assert (= (and b!4078418 (not res!1666053)) b!4078419))

(assert (= (and d!1211529 (not res!1666052)) b!4078417))

(assert (= (and b!4078417 res!1666055) b!4078420))

(assert (= (and b!4078420 res!1666054) b!4078422))

(assert (= (and b!4078422 res!1666056) b!4078416))

(assert (= (and b!4078416 res!1666057) b!4078414))

(assert (= (and b!4078414 res!1666051) b!4078415))

(declare-fun m!4686397 () Bool)

(assert (=> b!4078422 m!4686397))

(declare-fun m!4686399 () Bool)

(assert (=> b!4078422 m!4686399))

(declare-fun m!4686401 () Bool)

(assert (=> b!4078422 m!4686401))

(assert (=> b!4078416 m!4686397))

(declare-fun m!4686403 () Bool)

(assert (=> b!4078419 m!4686403))

(assert (=> b!4078419 m!4686401))

(assert (=> b!4078419 m!4686403))

(assert (=> b!4078419 m!4686401))

(declare-fun m!4686405 () Bool)

(assert (=> b!4078419 m!4686405))

(declare-fun m!4686407 () Bool)

(assert (=> b!4078419 m!4686407))

(assert (=> b!4078420 m!4686397))

(declare-fun m!4686409 () Bool)

(assert (=> b!4078420 m!4686409))

(assert (=> b!4078420 m!4686409))

(declare-fun m!4686411 () Bool)

(assert (=> b!4078420 m!4686411))

(assert (=> b!4078420 m!4686411))

(declare-fun m!4686413 () Bool)

(assert (=> b!4078420 m!4686413))

(assert (=> b!4078417 m!4686397))

(assert (=> b!4078417 m!4686409))

(assert (=> b!4078417 m!4686409))

(assert (=> b!4078417 m!4686411))

(assert (=> b!4078417 m!4686411))

(declare-fun m!4686415 () Bool)

(assert (=> b!4078417 m!4686415))

(declare-fun m!4686417 () Bool)

(assert (=> d!1211529 m!4686417))

(declare-fun m!4686419 () Bool)

(assert (=> d!1211529 m!4686419))

(declare-fun m!4686421 () Bool)

(assert (=> d!1211529 m!4686421))

(assert (=> d!1211529 m!4686247))

(assert (=> b!4078414 m!4686397))

(declare-fun m!4686423 () Bool)

(assert (=> b!4078414 m!4686423))

(assert (=> b!4078414 m!4686423))

(declare-fun m!4686425 () Bool)

(assert (=> b!4078414 m!4686425))

(assert (=> b!4078415 m!4686397))

(declare-fun m!4686427 () Bool)

(assert (=> b!4078415 m!4686427))

(assert (=> b!4078418 m!4686401))

(assert (=> b!4078418 m!4686403))

(assert (=> b!4078418 m!4686401))

(assert (=> b!4078418 m!4686405))

(assert (=> b!4078418 m!4686403))

(declare-fun m!4686429 () Bool)

(assert (=> b!4078418 m!4686429))

(declare-fun m!4686431 () Bool)

(assert (=> b!4078418 m!4686431))

(declare-fun m!4686433 () Bool)

(assert (=> b!4078418 m!4686433))

(declare-fun m!4686435 () Bool)

(assert (=> b!4078418 m!4686435))

(assert (=> b!4078418 m!4686429))

(declare-fun m!4686437 () Bool)

(assert (=> b!4078418 m!4686437))

(assert (=> b!4078418 m!4686429))

(declare-fun m!4686439 () Bool)

(assert (=> b!4078418 m!4686439))

(assert (=> b!4078418 m!4686429))

(assert (=> b!4078260 d!1211529))

(declare-fun d!1211549 () Bool)

(declare-fun res!1666072 () Bool)

(declare-fun e!2531344 () Bool)

(assert (=> d!1211549 (=> (not res!1666072) (not e!2531344))))

(assert (=> d!1211549 (= res!1666072 (rulesValid!2748 thiss!26199 (t!337504 rules!3870)))))

(assert (=> d!1211549 (= (rulesInvariant!5972 thiss!26199 (t!337504 rules!3870)) e!2531344)))

(declare-fun b!4078441 () Bool)

(assert (=> b!4078441 (= e!2531344 (noDuplicateTag!2749 thiss!26199 (t!337504 rules!3870) Nil!43671))))

(assert (= (and d!1211549 res!1666072) b!4078441))

(declare-fun m!4686441 () Bool)

(assert (=> d!1211549 m!4686441))

(declare-fun m!4686443 () Bool)

(assert (=> b!4078441 m!4686443))

(assert (=> b!4078260 d!1211549))

(declare-fun d!1211551 () Bool)

(assert (=> d!1211551 (rulesInvariant!5972 thiss!26199 (t!337504 rules!3870))))

(declare-fun lt!1459294 () Unit!63205)

(declare-fun choose!24899 (LexerInterface!6629 Rule!13880 List!43793) Unit!63205)

(assert (=> d!1211551 (= lt!1459294 (choose!24899 thiss!26199 (h!49089 rules!3870) (t!337504 rules!3870)))))

(assert (=> d!1211551 (rulesInvariant!5972 thiss!26199 (Cons!43669 (h!49089 rules!3870) (t!337504 rules!3870)))))

(assert (=> d!1211551 (= (lemmaInvariantOnRulesThenOnTail!758 thiss!26199 (h!49089 rules!3870) (t!337504 rules!3870)) lt!1459294)))

(declare-fun bs!592799 () Bool)

(assert (= bs!592799 d!1211551))

(assert (=> bs!592799 m!4686269))

(declare-fun m!4686477 () Bool)

(assert (=> bs!592799 m!4686477))

(declare-fun m!4686479 () Bool)

(assert (=> bs!592799 m!4686479))

(assert (=> b!4078260 d!1211551))

(declare-fun d!1211557 () Bool)

(assert (=> d!1211557 (= (inv!58322 (tag!7900 (h!49089 rules!3870))) (= (mod (str.len (value!221291 (tag!7900 (h!49089 rules!3870)))) 2) 0))))

(assert (=> b!4078250 d!1211557))

(declare-fun d!1211559 () Bool)

(declare-fun res!1666082 () Bool)

(declare-fun e!2531356 () Bool)

(assert (=> d!1211559 (=> (not res!1666082) (not e!2531356))))

(declare-fun semiInverseModEq!3014 (Int Int) Bool)

(assert (=> d!1211559 (= res!1666082 (semiInverseModEq!3014 (toChars!9467 (transformation!7040 (h!49089 rules!3870))) (toValue!9608 (transformation!7040 (h!49089 rules!3870)))))))

(assert (=> d!1211559 (= (inv!58324 (transformation!7040 (h!49089 rules!3870))) e!2531356)))

(declare-fun b!4078461 () Bool)

(declare-fun equivClasses!2913 (Int Int) Bool)

(assert (=> b!4078461 (= e!2531356 (equivClasses!2913 (toChars!9467 (transformation!7040 (h!49089 rules!3870))) (toValue!9608 (transformation!7040 (h!49089 rules!3870)))))))

(assert (= (and d!1211559 res!1666082) b!4078461))

(declare-fun m!4686487 () Bool)

(assert (=> d!1211559 m!4686487))

(declare-fun m!4686489 () Bool)

(assert (=> b!4078461 m!4686489))

(assert (=> b!4078250 d!1211559))

(declare-fun d!1211565 () Bool)

(assert (=> d!1211565 (= (inv!58322 (tag!7900 r!4213)) (= (mod (str.len (value!221291 (tag!7900 r!4213))) 2) 0))))

(assert (=> b!4078257 d!1211565))

(declare-fun d!1211567 () Bool)

(declare-fun res!1666083 () Bool)

(declare-fun e!2531357 () Bool)

(assert (=> d!1211567 (=> (not res!1666083) (not e!2531357))))

(assert (=> d!1211567 (= res!1666083 (semiInverseModEq!3014 (toChars!9467 (transformation!7040 r!4213)) (toValue!9608 (transformation!7040 r!4213))))))

(assert (=> d!1211567 (= (inv!58324 (transformation!7040 r!4213)) e!2531357)))

(declare-fun b!4078462 () Bool)

(assert (=> b!4078462 (= e!2531357 (equivClasses!2913 (toChars!9467 (transformation!7040 r!4213)) (toValue!9608 (transformation!7040 r!4213))))))

(assert (= (and d!1211567 res!1666083) b!4078462))

(declare-fun m!4686491 () Bool)

(assert (=> d!1211567 m!4686491))

(declare-fun m!4686493 () Bool)

(assert (=> b!4078462 m!4686493))

(assert (=> b!4078257 d!1211567))

(declare-fun b!4078481 () Bool)

(declare-fun res!1666102 () Bool)

(declare-fun e!2531366 () Bool)

(assert (=> b!4078481 (=> (not res!1666102) (not e!2531366))))

(declare-fun lt!1459310 () Option!9448)

(assert (=> b!4078481 (= res!1666102 (= (list!16238 (charsOf!4822 (_1!24453 (get!14318 lt!1459310)))) (originalCharacters!7634 (_1!24453 (get!14318 lt!1459310)))))))

(declare-fun b!4078482 () Bool)

(declare-fun res!1666103 () Bool)

(assert (=> b!4078482 (=> (not res!1666103) (not e!2531366))))

(assert (=> b!4078482 (= res!1666103 (matchR!5890 (regex!7040 (rule!10152 (_1!24453 (get!14318 lt!1459310)))) (list!16238 (charsOf!4822 (_1!24453 (get!14318 lt!1459310))))))))

(declare-fun b!4078483 () Bool)

(declare-fun e!2531365 () Option!9448)

(declare-fun lt!1459311 () Option!9448)

(declare-fun lt!1459308 () Option!9448)

(assert (=> b!4078483 (= e!2531365 (ite (and ((_ is None!9447) lt!1459311) ((_ is None!9447) lt!1459308)) None!9447 (ite ((_ is None!9447) lt!1459308) lt!1459311 (ite ((_ is None!9447) lt!1459311) lt!1459308 (ite (>= (size!32619 (_1!24453 (v!39899 lt!1459311))) (size!32619 (_1!24453 (v!39899 lt!1459308)))) lt!1459311 lt!1459308)))))))

(declare-fun call!288545 () Option!9448)

(assert (=> b!4078483 (= lt!1459311 call!288545)))

(assert (=> b!4078483 (= lt!1459308 (maxPrefix!3921 thiss!26199 (t!337504 rules!3870) input!3411))))

(declare-fun d!1211569 () Bool)

(declare-fun e!2531364 () Bool)

(assert (=> d!1211569 e!2531364))

(declare-fun res!1666101 () Bool)

(assert (=> d!1211569 (=> res!1666101 e!2531364)))

(assert (=> d!1211569 (= res!1666101 (isEmpty!26086 lt!1459310))))

(assert (=> d!1211569 (= lt!1459310 e!2531365)))

(declare-fun c!703450 () Bool)

(assert (=> d!1211569 (= c!703450 (and ((_ is Cons!43669) rules!3870) ((_ is Nil!43669) (t!337504 rules!3870))))))

(declare-fun lt!1459312 () Unit!63205)

(declare-fun lt!1459309 () Unit!63205)

(assert (=> d!1211569 (= lt!1459312 lt!1459309)))

(declare-fun isPrefix!4109 (List!43792 List!43792) Bool)

(assert (=> d!1211569 (isPrefix!4109 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2660 (List!43792 List!43792) Unit!63205)

(assert (=> d!1211569 (= lt!1459309 (lemmaIsPrefixRefl!2660 input!3411 input!3411))))

(declare-fun rulesValidInductive!2589 (LexerInterface!6629 List!43793) Bool)

(assert (=> d!1211569 (rulesValidInductive!2589 thiss!26199 rules!3870)))

(assert (=> d!1211569 (= (maxPrefix!3921 thiss!26199 rules!3870 input!3411) lt!1459310)))

(declare-fun bm!288540 () Bool)

(assert (=> bm!288540 (= call!288545 (maxPrefixOneRule!2915 thiss!26199 (h!49089 rules!3870) input!3411))))

(declare-fun b!4078484 () Bool)

(declare-fun res!1666104 () Bool)

(assert (=> b!4078484 (=> (not res!1666104) (not e!2531366))))

(assert (=> b!4078484 (= res!1666104 (= (++!11446 (list!16238 (charsOf!4822 (_1!24453 (get!14318 lt!1459310)))) (_2!24453 (get!14318 lt!1459310))) input!3411))))

(declare-fun b!4078485 () Bool)

(assert (=> b!4078485 (= e!2531366 (contains!8709 rules!3870 (rule!10152 (_1!24453 (get!14318 lt!1459310)))))))

(declare-fun b!4078486 () Bool)

(declare-fun res!1666098 () Bool)

(assert (=> b!4078486 (=> (not res!1666098) (not e!2531366))))

(assert (=> b!4078486 (= res!1666098 (= (value!221292 (_1!24453 (get!14318 lt!1459310))) (apply!10223 (transformation!7040 (rule!10152 (_1!24453 (get!14318 lt!1459310)))) (seqFromList!5257 (originalCharacters!7634 (_1!24453 (get!14318 lt!1459310)))))))))

(declare-fun b!4078487 () Bool)

(assert (=> b!4078487 (= e!2531364 e!2531366)))

(declare-fun res!1666100 () Bool)

(assert (=> b!4078487 (=> (not res!1666100) (not e!2531366))))

(declare-fun isDefined!7158 (Option!9448) Bool)

(assert (=> b!4078487 (= res!1666100 (isDefined!7158 lt!1459310))))

(declare-fun b!4078488 () Bool)

(declare-fun res!1666099 () Bool)

(assert (=> b!4078488 (=> (not res!1666099) (not e!2531366))))

(assert (=> b!4078488 (= res!1666099 (< (size!32620 (_2!24453 (get!14318 lt!1459310))) (size!32620 input!3411)))))

(declare-fun b!4078489 () Bool)

(assert (=> b!4078489 (= e!2531365 call!288545)))

(assert (= (and d!1211569 c!703450) b!4078489))

(assert (= (and d!1211569 (not c!703450)) b!4078483))

(assert (= (or b!4078489 b!4078483) bm!288540))

(assert (= (and d!1211569 (not res!1666101)) b!4078487))

(assert (= (and b!4078487 res!1666100) b!4078481))

(assert (= (and b!4078481 res!1666102) b!4078488))

(assert (= (and b!4078488 res!1666099) b!4078484))

(assert (= (and b!4078484 res!1666104) b!4078486))

(assert (= (and b!4078486 res!1666098) b!4078482))

(assert (= (and b!4078482 res!1666103) b!4078485))

(declare-fun m!4686495 () Bool)

(assert (=> b!4078482 m!4686495))

(declare-fun m!4686497 () Bool)

(assert (=> b!4078482 m!4686497))

(assert (=> b!4078482 m!4686497))

(declare-fun m!4686499 () Bool)

(assert (=> b!4078482 m!4686499))

(assert (=> b!4078482 m!4686499))

(declare-fun m!4686501 () Bool)

(assert (=> b!4078482 m!4686501))

(declare-fun m!4686503 () Bool)

(assert (=> d!1211569 m!4686503))

(declare-fun m!4686505 () Bool)

(assert (=> d!1211569 m!4686505))

(declare-fun m!4686507 () Bool)

(assert (=> d!1211569 m!4686507))

(declare-fun m!4686509 () Bool)

(assert (=> d!1211569 m!4686509))

(assert (=> b!4078486 m!4686495))

(declare-fun m!4686511 () Bool)

(assert (=> b!4078486 m!4686511))

(assert (=> b!4078486 m!4686511))

(declare-fun m!4686513 () Bool)

(assert (=> b!4078486 m!4686513))

(assert (=> b!4078485 m!4686495))

(declare-fun m!4686515 () Bool)

(assert (=> b!4078485 m!4686515))

(assert (=> b!4078488 m!4686495))

(declare-fun m!4686517 () Bool)

(assert (=> b!4078488 m!4686517))

(assert (=> b!4078488 m!4686401))

(assert (=> bm!288540 m!4686267))

(declare-fun m!4686519 () Bool)

(assert (=> b!4078483 m!4686519))

(declare-fun m!4686521 () Bool)

(assert (=> b!4078487 m!4686521))

(assert (=> b!4078484 m!4686495))

(assert (=> b!4078484 m!4686497))

(assert (=> b!4078484 m!4686497))

(assert (=> b!4078484 m!4686499))

(assert (=> b!4078484 m!4686499))

(declare-fun m!4686523 () Bool)

(assert (=> b!4078484 m!4686523))

(assert (=> b!4078481 m!4686495))

(assert (=> b!4078481 m!4686497))

(assert (=> b!4078481 m!4686497))

(assert (=> b!4078481 m!4686499))

(assert (=> b!4078268 d!1211569))

(declare-fun b!4078543 () Bool)

(declare-fun e!2531398 () Bool)

(assert (=> b!4078543 (= e!2531398 true)))

(declare-fun d!1211571 () Bool)

(assert (=> d!1211571 e!2531398))

(assert (= d!1211571 b!4078543))

(declare-fun order!22843 () Int)

(declare-fun order!22841 () Int)

(declare-fun lambda!127729 () Int)

(declare-fun dynLambda!18576 (Int Int) Int)

(declare-fun dynLambda!18577 (Int Int) Int)

(assert (=> b!4078543 (< (dynLambda!18576 order!22841 (toValue!9608 (transformation!7040 r!4213))) (dynLambda!18577 order!22843 lambda!127729))))

(declare-fun order!22845 () Int)

(declare-fun dynLambda!18578 (Int Int) Int)

(assert (=> b!4078543 (< (dynLambda!18578 order!22845 (toChars!9467 (transformation!7040 r!4213))) (dynLambda!18577 order!22843 lambda!127729))))

(declare-fun dynLambda!18579 (Int TokenValue!7270) BalanceConc!26096)

(declare-fun dynLambda!18580 (Int BalanceConc!26096) TokenValue!7270)

(assert (=> d!1211571 (= (list!16238 (dynLambda!18579 (toChars!9467 (transformation!7040 r!4213)) (dynLambda!18580 (toValue!9608 (transformation!7040 r!4213)) lt!1459222))) (list!16238 lt!1459222))))

(declare-fun lt!1459316 () Unit!63205)

(declare-fun ForallOf!853 (Int BalanceConc!26096) Unit!63205)

(assert (=> d!1211571 (= lt!1459316 (ForallOf!853 lambda!127729 lt!1459222))))

(assert (=> d!1211571 (= (lemmaSemiInverse!2007 (transformation!7040 r!4213) lt!1459222) lt!1459316)))

(declare-fun b_lambda!119203 () Bool)

(assert (=> (not b_lambda!119203) (not d!1211571)))

(declare-fun t!337519 () Bool)

(declare-fun tb!244949 () Bool)

(assert (=> (and b!4078254 (= (toChars!9467 (transformation!7040 r!4213)) (toChars!9467 (transformation!7040 r!4213))) t!337519) tb!244949))

(declare-fun e!2531401 () Bool)

(declare-fun b!4078548 () Bool)

(declare-fun tp!1234649 () Bool)

(declare-fun inv!58327 (Conc!13251) Bool)

(assert (=> b!4078548 (= e!2531401 (and (inv!58327 (c!703419 (dynLambda!18579 (toChars!9467 (transformation!7040 r!4213)) (dynLambda!18580 (toValue!9608 (transformation!7040 r!4213)) lt!1459222)))) tp!1234649))))

(declare-fun result!297068 () Bool)

(declare-fun inv!58328 (BalanceConc!26096) Bool)

(assert (=> tb!244949 (= result!297068 (and (inv!58328 (dynLambda!18579 (toChars!9467 (transformation!7040 r!4213)) (dynLambda!18580 (toValue!9608 (transformation!7040 r!4213)) lt!1459222))) e!2531401))))

(assert (= tb!244949 b!4078548))

(declare-fun m!4686549 () Bool)

(assert (=> b!4078548 m!4686549))

(declare-fun m!4686551 () Bool)

(assert (=> tb!244949 m!4686551))

(assert (=> d!1211571 t!337519))

(declare-fun b_and!313643 () Bool)

(assert (= b_and!313621 (and (=> t!337519 result!297068) b_and!313643)))

(declare-fun t!337521 () Bool)

(declare-fun tb!244951 () Bool)

(assert (=> (and b!4078263 (= (toChars!9467 (transformation!7040 (h!49089 rules!3870))) (toChars!9467 (transformation!7040 r!4213))) t!337521) tb!244951))

(declare-fun result!297072 () Bool)

(assert (= result!297072 result!297068))

(assert (=> d!1211571 t!337521))

(declare-fun b_and!313645 () Bool)

(assert (= b_and!313625 (and (=> t!337521 result!297072) b_and!313645)))

(declare-fun b_lambda!119205 () Bool)

(assert (=> (not b_lambda!119205) (not d!1211571)))

(declare-fun t!337523 () Bool)

(declare-fun tb!244953 () Bool)

(assert (=> (and b!4078254 (= (toValue!9608 (transformation!7040 r!4213)) (toValue!9608 (transformation!7040 r!4213))) t!337523) tb!244953))

(declare-fun result!297074 () Bool)

(declare-fun inv!21 (TokenValue!7270) Bool)

(assert (=> tb!244953 (= result!297074 (inv!21 (dynLambda!18580 (toValue!9608 (transformation!7040 r!4213)) lt!1459222)))))

(declare-fun m!4686553 () Bool)

(assert (=> tb!244953 m!4686553))

(assert (=> d!1211571 t!337523))

(declare-fun b_and!313647 () Bool)

(assert (= b_and!313619 (and (=> t!337523 result!297074) b_and!313647)))

(declare-fun t!337525 () Bool)

(declare-fun tb!244955 () Bool)

(assert (=> (and b!4078263 (= (toValue!9608 (transformation!7040 (h!49089 rules!3870))) (toValue!9608 (transformation!7040 r!4213))) t!337525) tb!244955))

(declare-fun result!297078 () Bool)

(assert (= result!297078 result!297074))

(assert (=> d!1211571 t!337525))

(declare-fun b_and!313649 () Bool)

(assert (= b_and!313623 (and (=> t!337525 result!297078) b_and!313649)))

(declare-fun m!4686555 () Bool)

(assert (=> d!1211571 m!4686555))

(assert (=> d!1211571 m!4686555))

(declare-fun m!4686557 () Bool)

(assert (=> d!1211571 m!4686557))

(assert (=> d!1211571 m!4686557))

(declare-fun m!4686559 () Bool)

(assert (=> d!1211571 m!4686559))

(declare-fun m!4686561 () Bool)

(assert (=> d!1211571 m!4686561))

(declare-fun m!4686563 () Bool)

(assert (=> d!1211571 m!4686563))

(assert (=> b!4078268 d!1211571))

(declare-fun d!1211581 () Bool)

(declare-fun lt!1459319 () Int)

(assert (=> d!1211581 (>= lt!1459319 0)))

(declare-fun e!2531407 () Int)

(assert (=> d!1211581 (= lt!1459319 e!2531407)))

(declare-fun c!703454 () Bool)

(assert (=> d!1211581 (= c!703454 ((_ is Nil!43668) p!2988))))

(assert (=> d!1211581 (= (size!32620 p!2988) lt!1459319)))

(declare-fun b!4078555 () Bool)

(assert (=> b!4078555 (= e!2531407 0)))

(declare-fun b!4078556 () Bool)

(assert (=> b!4078556 (= e!2531407 (+ 1 (size!32620 (t!337503 p!2988))))))

(assert (= (and d!1211581 c!703454) b!4078555))

(assert (= (and d!1211581 (not c!703454)) b!4078556))

(declare-fun m!4686565 () Bool)

(assert (=> b!4078556 m!4686565))

(assert (=> b!4078268 d!1211581))

(declare-fun d!1211583 () Bool)

(declare-fun fromListB!2400 (List!43792) BalanceConc!26096)

(assert (=> d!1211583 (= (seqFromList!5257 p!2988) (fromListB!2400 p!2988))))

(declare-fun bs!592801 () Bool)

(assert (= bs!592801 d!1211583))

(declare-fun m!4686567 () Bool)

(assert (=> bs!592801 m!4686567))

(assert (=> b!4078268 d!1211583))

(declare-fun d!1211585 () Bool)

(assert (=> d!1211585 (= (apply!10223 (transformation!7040 r!4213) lt!1459222) (dynLambda!18580 (toValue!9608 (transformation!7040 r!4213)) lt!1459222))))

(declare-fun b_lambda!119207 () Bool)

(assert (=> (not b_lambda!119207) (not d!1211585)))

(assert (=> d!1211585 t!337523))

(declare-fun b_and!313651 () Bool)

(assert (= b_and!313647 (and (=> t!337523 result!297074) b_and!313651)))

(assert (=> d!1211585 t!337525))

(declare-fun b_and!313653 () Bool)

(assert (= b_and!313649 (and (=> t!337525 result!297078) b_and!313653)))

(assert (=> d!1211585 m!4686555))

(assert (=> b!4078268 d!1211585))

(declare-fun b!4078585 () Bool)

(declare-fun e!2531424 () Bool)

(declare-fun derivativeStep!3607 (Regex!11945 C!24076) Regex!11945)

(declare-fun head!8617 (List!43792) C!24076)

(declare-fun tail!6351 (List!43792) List!43792)

(assert (=> b!4078585 (= e!2531424 (matchR!5890 (derivativeStep!3607 (regex!7040 r!4213) (head!8617 p!2988)) (tail!6351 p!2988)))))

(declare-fun b!4078586 () Bool)

(declare-fun e!2531423 () Bool)

(declare-fun e!2531425 () Bool)

(assert (=> b!4078586 (= e!2531423 e!2531425)))

(declare-fun c!703463 () Bool)

(assert (=> b!4078586 (= c!703463 ((_ is EmptyLang!11945) (regex!7040 r!4213)))))

(declare-fun b!4078587 () Bool)

(assert (=> b!4078587 (= e!2531424 (nullable!4206 (regex!7040 r!4213)))))

(declare-fun b!4078588 () Bool)

(declare-fun e!2531428 () Bool)

(declare-fun e!2531427 () Bool)

(assert (=> b!4078588 (= e!2531428 e!2531427)))

(declare-fun res!1666127 () Bool)

(assert (=> b!4078588 (=> (not res!1666127) (not e!2531427))))

(declare-fun lt!1459322 () Bool)

(assert (=> b!4078588 (= res!1666127 (not lt!1459322))))

(declare-fun bm!288543 () Bool)

(declare-fun call!288548 () Bool)

(assert (=> bm!288543 (= call!288548 (isEmpty!26085 p!2988))))

(declare-fun b!4078589 () Bool)

(declare-fun res!1666129 () Bool)

(declare-fun e!2531422 () Bool)

(assert (=> b!4078589 (=> res!1666129 e!2531422)))

(assert (=> b!4078589 (= res!1666129 (not (isEmpty!26085 (tail!6351 p!2988))))))

(declare-fun b!4078590 () Bool)

(assert (=> b!4078590 (= e!2531422 (not (= (head!8617 p!2988) (c!703418 (regex!7040 r!4213)))))))

(declare-fun b!4078591 () Bool)

(declare-fun res!1666130 () Bool)

(declare-fun e!2531426 () Bool)

(assert (=> b!4078591 (=> (not res!1666130) (not e!2531426))))

(assert (=> b!4078591 (= res!1666130 (not call!288548))))

(declare-fun b!4078592 () Bool)

(assert (=> b!4078592 (= e!2531427 e!2531422)))

(declare-fun res!1666124 () Bool)

(assert (=> b!4078592 (=> res!1666124 e!2531422)))

(assert (=> b!4078592 (= res!1666124 call!288548)))

(declare-fun b!4078593 () Bool)

(assert (=> b!4078593 (= e!2531423 (= lt!1459322 call!288548))))

(declare-fun d!1211587 () Bool)

(assert (=> d!1211587 e!2531423))

(declare-fun c!703462 () Bool)

(assert (=> d!1211587 (= c!703462 ((_ is EmptyExpr!11945) (regex!7040 r!4213)))))

(assert (=> d!1211587 (= lt!1459322 e!2531424)))

(declare-fun c!703461 () Bool)

(assert (=> d!1211587 (= c!703461 (isEmpty!26085 p!2988))))

(assert (=> d!1211587 (validRegex!5406 (regex!7040 r!4213))))

(assert (=> d!1211587 (= (matchR!5890 (regex!7040 r!4213) p!2988) lt!1459322)))

(declare-fun b!4078594 () Bool)

(declare-fun res!1666131 () Bool)

(assert (=> b!4078594 (=> res!1666131 e!2531428)))

(assert (=> b!4078594 (= res!1666131 e!2531426)))

(declare-fun res!1666126 () Bool)

(assert (=> b!4078594 (=> (not res!1666126) (not e!2531426))))

(assert (=> b!4078594 (= res!1666126 lt!1459322)))

(declare-fun b!4078595 () Bool)

(declare-fun res!1666128 () Bool)

(assert (=> b!4078595 (=> res!1666128 e!2531428)))

(assert (=> b!4078595 (= res!1666128 (not ((_ is ElementMatch!11945) (regex!7040 r!4213))))))

(assert (=> b!4078595 (= e!2531425 e!2531428)))

(declare-fun b!4078596 () Bool)

(declare-fun res!1666125 () Bool)

(assert (=> b!4078596 (=> (not res!1666125) (not e!2531426))))

(assert (=> b!4078596 (= res!1666125 (isEmpty!26085 (tail!6351 p!2988)))))

(declare-fun b!4078597 () Bool)

(assert (=> b!4078597 (= e!2531425 (not lt!1459322))))

(declare-fun b!4078598 () Bool)

(assert (=> b!4078598 (= e!2531426 (= (head!8617 p!2988) (c!703418 (regex!7040 r!4213))))))

(assert (= (and d!1211587 c!703461) b!4078587))

(assert (= (and d!1211587 (not c!703461)) b!4078585))

(assert (= (and d!1211587 c!703462) b!4078593))

(assert (= (and d!1211587 (not c!703462)) b!4078586))

(assert (= (and b!4078586 c!703463) b!4078597))

(assert (= (and b!4078586 (not c!703463)) b!4078595))

(assert (= (and b!4078595 (not res!1666128)) b!4078594))

(assert (= (and b!4078594 res!1666126) b!4078591))

(assert (= (and b!4078591 res!1666130) b!4078596))

(assert (= (and b!4078596 res!1666125) b!4078598))

(assert (= (and b!4078594 (not res!1666131)) b!4078588))

(assert (= (and b!4078588 res!1666127) b!4078592))

(assert (= (and b!4078592 (not res!1666124)) b!4078589))

(assert (= (and b!4078589 (not res!1666129)) b!4078590))

(assert (= (or b!4078593 b!4078591 b!4078592) bm!288543))

(assert (=> bm!288543 m!4686275))

(assert (=> d!1211587 m!4686275))

(declare-fun m!4686569 () Bool)

(assert (=> d!1211587 m!4686569))

(declare-fun m!4686571 () Bool)

(assert (=> b!4078587 m!4686571))

(declare-fun m!4686573 () Bool)

(assert (=> b!4078589 m!4686573))

(assert (=> b!4078589 m!4686573))

(declare-fun m!4686575 () Bool)

(assert (=> b!4078589 m!4686575))

(declare-fun m!4686577 () Bool)

(assert (=> b!4078590 m!4686577))

(assert (=> b!4078598 m!4686577))

(assert (=> b!4078596 m!4686573))

(assert (=> b!4078596 m!4686573))

(assert (=> b!4078596 m!4686575))

(assert (=> b!4078585 m!4686577))

(assert (=> b!4078585 m!4686577))

(declare-fun m!4686579 () Bool)

(assert (=> b!4078585 m!4686579))

(assert (=> b!4078585 m!4686573))

(assert (=> b!4078585 m!4686579))

(assert (=> b!4078585 m!4686573))

(declare-fun m!4686581 () Bool)

(assert (=> b!4078585 m!4686581))

(assert (=> b!4078258 d!1211587))

(declare-fun d!1211589 () Bool)

(declare-fun res!1666132 () Bool)

(declare-fun e!2531429 () Bool)

(assert (=> d!1211589 (=> (not res!1666132) (not e!2531429))))

(assert (=> d!1211589 (= res!1666132 (validRegex!5406 (regex!7040 r!4213)))))

(assert (=> d!1211589 (= (ruleValid!2964 thiss!26199 r!4213) e!2531429)))

(declare-fun b!4078599 () Bool)

(declare-fun res!1666133 () Bool)

(assert (=> b!4078599 (=> (not res!1666133) (not e!2531429))))

(assert (=> b!4078599 (= res!1666133 (not (nullable!4206 (regex!7040 r!4213))))))

(declare-fun b!4078600 () Bool)

(assert (=> b!4078600 (= e!2531429 (not (= (tag!7900 r!4213) (String!50101 ""))))))

(assert (= (and d!1211589 res!1666132) b!4078599))

(assert (= (and b!4078599 res!1666133) b!4078600))

(assert (=> d!1211589 m!4686569))

(assert (=> b!4078599 m!4686571))

(assert (=> b!4078258 d!1211589))

(declare-fun d!1211591 () Bool)

(assert (=> d!1211591 (ruleValid!2964 thiss!26199 r!4213)))

(declare-fun lt!1459325 () Unit!63205)

(declare-fun choose!24900 (LexerInterface!6629 Rule!13880 List!43793) Unit!63205)

(assert (=> d!1211591 (= lt!1459325 (choose!24900 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1211591 (contains!8709 rules!3870 r!4213)))

(assert (=> d!1211591 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2032 thiss!26199 r!4213 rules!3870) lt!1459325)))

(declare-fun bs!592802 () Bool)

(assert (= bs!592802 d!1211591))

(assert (=> bs!592802 m!4686251))

(declare-fun m!4686583 () Bool)

(assert (=> bs!592802 m!4686583))

(assert (=> bs!592802 m!4686263))

(assert (=> b!4078258 d!1211591))

(declare-fun d!1211593 () Bool)

(assert (=> d!1211593 (= (isEmpty!26085 p!2988) ((_ is Nil!43668) p!2988))))

(assert (=> b!4078259 d!1211593))

(declare-fun b!4078605 () Bool)

(declare-fun e!2531432 () Bool)

(declare-fun tp!1234652 () Bool)

(assert (=> b!4078605 (= e!2531432 (and tp_is_empty!20893 tp!1234652))))

(assert (=> b!4078265 (= tp!1234601 e!2531432)))

(assert (= (and b!4078265 ((_ is Cons!43668) (t!337503 p!2988))) b!4078605))

(declare-fun b!4078619 () Bool)

(declare-fun e!2531435 () Bool)

(declare-fun tp!1234666 () Bool)

(declare-fun tp!1234667 () Bool)

(assert (=> b!4078619 (= e!2531435 (and tp!1234666 tp!1234667))))

(assert (=> b!4078250 (= tp!1234604 e!2531435)))

(declare-fun b!4078617 () Bool)

(declare-fun tp!1234665 () Bool)

(declare-fun tp!1234664 () Bool)

(assert (=> b!4078617 (= e!2531435 (and tp!1234665 tp!1234664))))

(declare-fun b!4078616 () Bool)

(assert (=> b!4078616 (= e!2531435 tp_is_empty!20893)))

(declare-fun b!4078618 () Bool)

(declare-fun tp!1234663 () Bool)

(assert (=> b!4078618 (= e!2531435 tp!1234663)))

(assert (= (and b!4078250 ((_ is ElementMatch!11945) (regex!7040 (h!49089 rules!3870)))) b!4078616))

(assert (= (and b!4078250 ((_ is Concat!19216) (regex!7040 (h!49089 rules!3870)))) b!4078617))

(assert (= (and b!4078250 ((_ is Star!11945) (regex!7040 (h!49089 rules!3870)))) b!4078618))

(assert (= (and b!4078250 ((_ is Union!11945) (regex!7040 (h!49089 rules!3870)))) b!4078619))

(declare-fun b!4078620 () Bool)

(declare-fun e!2531436 () Bool)

(declare-fun tp!1234668 () Bool)

(assert (=> b!4078620 (= e!2531436 (and tp_is_empty!20893 tp!1234668))))

(assert (=> b!4078251 (= tp!1234602 e!2531436)))

(assert (= (and b!4078251 ((_ is Cons!43668) (t!337503 input!3411))) b!4078620))

(declare-fun b!4078624 () Bool)

(declare-fun e!2531437 () Bool)

(declare-fun tp!1234672 () Bool)

(declare-fun tp!1234673 () Bool)

(assert (=> b!4078624 (= e!2531437 (and tp!1234672 tp!1234673))))

(assert (=> b!4078257 (= tp!1234600 e!2531437)))

(declare-fun b!4078622 () Bool)

(declare-fun tp!1234671 () Bool)

(declare-fun tp!1234670 () Bool)

(assert (=> b!4078622 (= e!2531437 (and tp!1234671 tp!1234670))))

(declare-fun b!4078621 () Bool)

(assert (=> b!4078621 (= e!2531437 tp_is_empty!20893)))

(declare-fun b!4078623 () Bool)

(declare-fun tp!1234669 () Bool)

(assert (=> b!4078623 (= e!2531437 tp!1234669)))

(assert (= (and b!4078257 ((_ is ElementMatch!11945) (regex!7040 r!4213))) b!4078621))

(assert (= (and b!4078257 ((_ is Concat!19216) (regex!7040 r!4213))) b!4078622))

(assert (= (and b!4078257 ((_ is Star!11945) (regex!7040 r!4213))) b!4078623))

(assert (= (and b!4078257 ((_ is Union!11945) (regex!7040 r!4213))) b!4078624))

(declare-fun b!4078635 () Bool)

(declare-fun b_free!113757 () Bool)

(declare-fun b_next!114461 () Bool)

(assert (=> b!4078635 (= b_free!113757 (not b_next!114461))))

(declare-fun tb!244957 () Bool)

(declare-fun t!337527 () Bool)

(assert (=> (and b!4078635 (= (toValue!9608 (transformation!7040 (h!49089 (t!337504 rules!3870)))) (toValue!9608 (transformation!7040 r!4213))) t!337527) tb!244957))

(declare-fun result!297086 () Bool)

(assert (= result!297086 result!297074))

(assert (=> d!1211571 t!337527))

(assert (=> d!1211585 t!337527))

(declare-fun tp!1234685 () Bool)

(declare-fun b_and!313655 () Bool)

(assert (=> b!4078635 (= tp!1234685 (and (=> t!337527 result!297086) b_and!313655))))

(declare-fun b_free!113759 () Bool)

(declare-fun b_next!114463 () Bool)

(assert (=> b!4078635 (= b_free!113759 (not b_next!114463))))

(declare-fun t!337529 () Bool)

(declare-fun tb!244959 () Bool)

(assert (=> (and b!4078635 (= (toChars!9467 (transformation!7040 (h!49089 (t!337504 rules!3870)))) (toChars!9467 (transformation!7040 r!4213))) t!337529) tb!244959))

(declare-fun result!297088 () Bool)

(assert (= result!297088 result!297068))

(assert (=> d!1211571 t!337529))

(declare-fun b_and!313657 () Bool)

(declare-fun tp!1234682 () Bool)

(assert (=> b!4078635 (= tp!1234682 (and (=> t!337529 result!297088) b_and!313657))))

(declare-fun e!2531447 () Bool)

(assert (=> b!4078635 (= e!2531447 (and tp!1234685 tp!1234682))))

(declare-fun e!2531449 () Bool)

(declare-fun b!4078634 () Bool)

(declare-fun tp!1234684 () Bool)

(assert (=> b!4078634 (= e!2531449 (and tp!1234684 (inv!58322 (tag!7900 (h!49089 (t!337504 rules!3870)))) (inv!58324 (transformation!7040 (h!49089 (t!337504 rules!3870)))) e!2531447))))

(declare-fun b!4078633 () Bool)

(declare-fun e!2531448 () Bool)

(declare-fun tp!1234683 () Bool)

(assert (=> b!4078633 (= e!2531448 (and e!2531449 tp!1234683))))

(assert (=> b!4078262 (= tp!1234597 e!2531448)))

(assert (= b!4078634 b!4078635))

(assert (= b!4078633 b!4078634))

(assert (= (and b!4078262 ((_ is Cons!43669) (t!337504 rules!3870))) b!4078633))

(declare-fun m!4686585 () Bool)

(assert (=> b!4078634 m!4686585))

(declare-fun m!4686587 () Bool)

(assert (=> b!4078634 m!4686587))

(declare-fun b!4078636 () Bool)

(declare-fun e!2531450 () Bool)

(declare-fun tp!1234686 () Bool)

(assert (=> b!4078636 (= e!2531450 (and tp_is_empty!20893 tp!1234686))))

(assert (=> b!4078264 (= tp!1234598 e!2531450)))

(assert (= (and b!4078264 ((_ is Cons!43668) (t!337503 suffix!1518))) b!4078636))

(declare-fun b_lambda!119209 () Bool)

(assert (= b_lambda!119207 (or (and b!4078254 b_free!113745) (and b!4078263 b_free!113749 (= (toValue!9608 (transformation!7040 (h!49089 rules!3870))) (toValue!9608 (transformation!7040 r!4213)))) (and b!4078635 b_free!113757 (= (toValue!9608 (transformation!7040 (h!49089 (t!337504 rules!3870)))) (toValue!9608 (transformation!7040 r!4213)))) b_lambda!119209)))

(declare-fun b_lambda!119211 () Bool)

(assert (= b_lambda!119205 (or (and b!4078254 b_free!113745) (and b!4078263 b_free!113749 (= (toValue!9608 (transformation!7040 (h!49089 rules!3870))) (toValue!9608 (transformation!7040 r!4213)))) (and b!4078635 b_free!113757 (= (toValue!9608 (transformation!7040 (h!49089 (t!337504 rules!3870)))) (toValue!9608 (transformation!7040 r!4213)))) b_lambda!119211)))

(declare-fun b_lambda!119213 () Bool)

(assert (= b_lambda!119203 (or (and b!4078254 b_free!113747) (and b!4078263 b_free!113751 (= (toChars!9467 (transformation!7040 (h!49089 rules!3870))) (toChars!9467 (transformation!7040 r!4213)))) (and b!4078635 b_free!113759 (= (toChars!9467 (transformation!7040 (h!49089 (t!337504 rules!3870)))) (toChars!9467 (transformation!7040 r!4213)))) b_lambda!119213)))

(check-sat (not b!4078488) (not b!4078461) (not b!4078636) (not d!1211549) (not b!4078617) (not b!4078462) (not b!4078414) (not b!4078297) (not b!4078585) (not d!1211591) (not b!4078271) (not b!4078620) (not b!4078415) b_and!313653 (not b!4078486) (not b!4078484) (not b!4078605) (not b_next!114455) (not d!1211529) b_and!313651 (not bm!288540) (not b_next!114461) b_and!313657 (not b!4078618) (not b!4078634) b_and!313645 (not d!1211587) (not d!1211571) (not b_next!114451) (not b!4078596) (not b!4078418) b_and!313643 (not d!1211583) (not b_lambda!119211) (not b_next!114463) (not b!4078598) (not b!4078548) (not d!1211515) (not b!4078623) (not b!4078487) (not b!4078485) (not b_next!114453) (not b!4078481) (not d!1211503) (not b!4078441) (not b_lambda!119209) b_and!313655 (not b!4078422) (not tb!244953) (not d!1211551) (not d!1211559) (not b!4078599) (not tb!244949) (not b!4078619) (not d!1211521) tp_is_empty!20893 (not b!4078285) (not b!4078589) (not b!4078296) (not b!4078482) (not b!4078416) (not d!1211569) (not b!4078420) (not b!4078556) (not b!4078622) (not d!1211589) (not b!4078417) (not b!4078624) (not b!4078280) (not b!4078633) (not b_next!114449) (not b!4078483) (not b!4078587) (not b!4078590) (not d!1211567) (not bm!288543) (not b!4078419) (not d!1211525) (not b_lambda!119213))
(check-sat (not b_next!114455) b_and!313651 b_and!313645 (not b_next!114463) (not b_next!114453) b_and!313655 b_and!313653 (not b_next!114449) (not b_next!114461) b_and!313657 (not b_next!114451) b_and!313643)
