; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386304 () Bool)

(assert start!386304)

(declare-fun b!4085383 () Bool)

(declare-fun b_free!114145 () Bool)

(declare-fun b_next!114849 () Bool)

(assert (=> b!4085383 (= b_free!114145 (not b_next!114849))))

(declare-fun tp!1237007 () Bool)

(declare-fun b_and!314503 () Bool)

(assert (=> b!4085383 (= tp!1237007 b_and!314503)))

(declare-fun b_free!114147 () Bool)

(declare-fun b_next!114851 () Bool)

(assert (=> b!4085383 (= b_free!114147 (not b_next!114851))))

(declare-fun tp!1237014 () Bool)

(declare-fun b_and!314505 () Bool)

(assert (=> b!4085383 (= tp!1237014 b_and!314505)))

(declare-fun b!4085381 () Bool)

(declare-fun b_free!114149 () Bool)

(declare-fun b_next!114853 () Bool)

(assert (=> b!4085381 (= b_free!114149 (not b_next!114853))))

(declare-fun tp!1237013 () Bool)

(declare-fun b_and!314507 () Bool)

(assert (=> b!4085381 (= tp!1237013 b_and!314507)))

(declare-fun b_free!114151 () Bool)

(declare-fun b_next!114855 () Bool)

(assert (=> b!4085381 (= b_free!114151 (not b_next!114855))))

(declare-fun tp!1237015 () Bool)

(declare-fun b_and!314509 () Bool)

(assert (=> b!4085381 (= tp!1237015 b_and!314509)))

(declare-fun b!4085380 () Bool)

(declare-fun e!2535589 () Bool)

(declare-fun tp_is_empty!20965 () Bool)

(declare-fun tp!1237008 () Bool)

(assert (=> b!4085380 (= e!2535589 (and tp_is_empty!20965 tp!1237008))))

(declare-fun e!2535593 () Bool)

(assert (=> b!4085381 (= e!2535593 (and tp!1237013 tp!1237015))))

(declare-fun b!4085382 () Bool)

(declare-fun e!2535591 () Bool)

(declare-fun tp!1237012 () Bool)

(assert (=> b!4085382 (= e!2535591 (and tp_is_empty!20965 tp!1237012))))

(declare-fun e!2535588 () Bool)

(assert (=> b!4085383 (= e!2535588 (and tp!1237007 tp!1237014))))

(declare-fun b!4085384 () Bool)

(declare-fun e!2535594 () Bool)

(declare-fun tp!1237009 () Bool)

(assert (=> b!4085384 (= e!2535594 (and tp_is_empty!20965 tp!1237009))))

(declare-fun e!2535585 () Bool)

(declare-fun tp!1237016 () Bool)

(declare-datatypes ((List!43921 0))(
  ( (Nil!43797) (Cons!43797 (h!49217 (_ BitVec 16)) (t!338080 List!43921)) )
))
(declare-datatypes ((TokenValue!7306 0))(
  ( (FloatLiteralValue!14612 (text!51587 List!43921)) (TokenValueExt!7305 (__x!26829 Int)) (Broken!36530 (value!222292 List!43921)) (Object!7429) (End!7306) (Def!7306) (Underscore!7306) (Match!7306) (Else!7306) (Error!7306) (Case!7306) (If!7306) (Extends!7306) (Abstract!7306) (Class!7306) (Val!7306) (DelimiterValue!14612 (del!7366 List!43921)) (KeywordValue!7312 (value!222293 List!43921)) (CommentValue!14612 (value!222294 List!43921)) (WhitespaceValue!14612 (value!222295 List!43921)) (IndentationValue!7306 (value!222296 List!43921)) (String!50279) (Int32!7306) (Broken!36531 (value!222297 List!43921)) (Boolean!7307) (Unit!63318) (OperatorValue!7309 (op!7366 List!43921)) (IdentifierValue!14612 (value!222298 List!43921)) (IdentifierValue!14613 (value!222299 List!43921)) (WhitespaceValue!14613 (value!222300 List!43921)) (True!14612) (False!14612) (Broken!36532 (value!222301 List!43921)) (Broken!36533 (value!222302 List!43921)) (True!14613) (RightBrace!7306) (RightBracket!7306) (Colon!7306) (Null!7306) (Comma!7306) (LeftBracket!7306) (False!14613) (LeftBrace!7306) (ImaginaryLiteralValue!7306 (text!51588 List!43921)) (StringLiteralValue!21918 (value!222303 List!43921)) (EOFValue!7306 (value!222304 List!43921)) (IdentValue!7306 (value!222305 List!43921)) (DelimiterValue!14613 (value!222306 List!43921)) (DedentValue!7306 (value!222307 List!43921)) (NewLineValue!7306 (value!222308 List!43921)) (IntegerValue!21918 (value!222309 (_ BitVec 32)) (text!51589 List!43921)) (IntegerValue!21919 (value!222310 Int) (text!51590 List!43921)) (Times!7306) (Or!7306) (Equal!7306) (Minus!7306) (Broken!36534 (value!222311 List!43921)) (And!7306) (Div!7306) (LessEqual!7306) (Mod!7306) (Concat!19287) (Not!7306) (Plus!7306) (SpaceValue!7306 (value!222312 List!43921)) (IntegerValue!21920 (value!222313 Int) (text!51591 List!43921)) (StringLiteralValue!21919 (text!51592 List!43921)) (FloatLiteralValue!14613 (text!51593 List!43921)) (BytesLiteralValue!7306 (value!222314 List!43921)) (CommentValue!14613 (value!222315 List!43921)) (StringLiteralValue!21920 (value!222316 List!43921)) (ErrorTokenValue!7306 (msg!7367 List!43921)) )
))
(declare-datatypes ((C!24148 0))(
  ( (C!24149 (val!14184 Int)) )
))
(declare-datatypes ((Regex!11981 0))(
  ( (ElementMatch!11981 (c!704278 C!24148)) (Concat!19288 (regOne!24474 Regex!11981) (regTwo!24474 Regex!11981)) (EmptyExpr!11981) (Star!11981 (reg!12310 Regex!11981)) (EmptyLang!11981) (Union!11981 (regOne!24475 Regex!11981) (regTwo!24475 Regex!11981)) )
))
(declare-datatypes ((String!50280 0))(
  ( (String!50281 (value!222317 String)) )
))
(declare-datatypes ((List!43922 0))(
  ( (Nil!43798) (Cons!43798 (h!49218 C!24148) (t!338081 List!43922)) )
))
(declare-datatypes ((IArray!26579 0))(
  ( (IArray!26580 (innerList!13347 List!43922)) )
))
(declare-datatypes ((Conc!13287 0))(
  ( (Node!13287 (left!32919 Conc!13287) (right!33249 Conc!13287) (csize!26804 Int) (cheight!13498 Int)) (Leaf!20540 (xs!16593 IArray!26579) (csize!26805 Int)) (Empty!13287) )
))
(declare-datatypes ((BalanceConc!26168 0))(
  ( (BalanceConc!26169 (c!704279 Conc!13287)) )
))
(declare-datatypes ((TokenValueInjection!14040 0))(
  ( (TokenValueInjection!14041 (toValue!9656 Int) (toChars!9515 Int)) )
))
(declare-datatypes ((Rule!13952 0))(
  ( (Rule!13953 (regex!7076 Regex!11981) (tag!7936 String!50280) (isSeparator!7076 Bool) (transformation!7076 TokenValueInjection!14040)) )
))
(declare-fun r!4213 () Rule!13952)

(declare-fun b!4085385 () Bool)

(declare-fun inv!58477 (String!50280) Bool)

(declare-fun inv!58480 (TokenValueInjection!14040) Bool)

(assert (=> b!4085385 (= e!2535585 (and tp!1237016 (inv!58477 (tag!7936 r!4213)) (inv!58480 (transformation!7076 r!4213)) e!2535588))))

(declare-fun b!4085386 () Bool)

(declare-fun res!1669313 () Bool)

(declare-fun e!2535595 () Bool)

(assert (=> b!4085386 (=> (not res!1669313) (not e!2535595))))

(declare-datatypes ((LexerInterface!6665 0))(
  ( (LexerInterfaceExt!6662 (__x!26830 Int)) (Lexer!6663) )
))
(declare-fun thiss!26199 () LexerInterface!6665)

(declare-datatypes ((List!43923 0))(
  ( (Nil!43799) (Cons!43799 (h!49219 Rule!13952) (t!338082 List!43923)) )
))
(declare-fun rules!3870 () List!43923)

(declare-fun rulesInvariant!6008 (LexerInterface!6665 List!43923) Bool)

(assert (=> b!4085386 (= res!1669313 (rulesInvariant!6008 thiss!26199 rules!3870))))

(declare-fun b!4085387 () Bool)

(declare-fun res!1669309 () Bool)

(assert (=> b!4085387 (=> (not res!1669309) (not e!2535595))))

(declare-fun p!2988 () List!43922)

(declare-fun isEmpty!26184 (List!43922) Bool)

(assert (=> b!4085387 (= res!1669309 (not (isEmpty!26184 p!2988)))))

(declare-fun b!4085388 () Bool)

(declare-fun e!2535583 () Bool)

(declare-fun e!2535584 () Bool)

(assert (=> b!4085388 (= e!2535583 e!2535584)))

(declare-fun res!1669314 () Bool)

(assert (=> b!4085388 (=> res!1669314 e!2535584)))

(declare-fun isEmpty!26185 (List!43923) Bool)

(assert (=> b!4085388 (= res!1669314 (not (isEmpty!26185 (t!338082 rules!3870))))))

(assert (=> b!4085388 (rulesInvariant!6008 thiss!26199 (t!338082 rules!3870))))

(declare-datatypes ((Unit!63319 0))(
  ( (Unit!63320) )
))
(declare-fun lt!1461229 () Unit!63319)

(declare-fun lemmaInvariantOnRulesThenOnTail!780 (LexerInterface!6665 Rule!13952 List!43923) Unit!63319)

(assert (=> b!4085388 (= lt!1461229 (lemmaInvariantOnRulesThenOnTail!780 thiss!26199 (h!49219 rules!3870) (t!338082 rules!3870)))))

(declare-fun res!1669308 () Bool)

(assert (=> start!386304 (=> (not res!1669308) (not e!2535595))))

(get-info :version)

(assert (=> start!386304 (= res!1669308 ((_ is Lexer!6663) thiss!26199))))

(assert (=> start!386304 e!2535595))

(assert (=> start!386304 true))

(assert (=> start!386304 e!2535591))

(declare-fun e!2535590 () Bool)

(assert (=> start!386304 e!2535590))

(assert (=> start!386304 e!2535594))

(assert (=> start!386304 e!2535589))

(assert (=> start!386304 e!2535585))

(declare-fun b!4085389 () Bool)

(declare-datatypes ((Token!13278 0))(
  ( (Token!13279 (value!222318 TokenValue!7306) (rule!10204 Rule!13952) (size!32710 Int) (originalCharacters!7670 List!43922)) )
))
(declare-fun lt!1461225 () Token!13278)

(declare-fun inv!58481 (Token!13278) Bool)

(assert (=> b!4085389 (= e!2535584 (inv!58481 lt!1461225))))

(declare-fun b!4085390 () Bool)

(declare-fun e!2535587 () Bool)

(declare-fun tp!1237011 () Bool)

(assert (=> b!4085390 (= e!2535590 (and e!2535587 tp!1237011))))

(declare-fun b!4085391 () Bool)

(declare-fun res!1669306 () Bool)

(assert (=> b!4085391 (=> (not res!1669306) (not e!2535595))))

(assert (=> b!4085391 (= res!1669306 (not (isEmpty!26185 rules!3870)))))

(declare-fun b!4085392 () Bool)

(declare-fun res!1669311 () Bool)

(assert (=> b!4085392 (=> res!1669311 e!2535584)))

(declare-fun input!3411 () List!43922)

(declare-datatypes ((tuple2!42736 0))(
  ( (tuple2!42737 (_1!24502 Token!13278) (_2!24502 List!43922)) )
))
(declare-datatypes ((Option!9482 0))(
  ( (None!9481) (Some!9481 (v!39955 tuple2!42736)) )
))
(declare-fun lt!1461227 () Option!9482)

(declare-fun maxPrefixOneRule!2941 (LexerInterface!6665 Rule!13952 List!43922) Option!9482)

(assert (=> b!4085392 (= res!1669311 (not (= (maxPrefixOneRule!2941 thiss!26199 r!4213 input!3411) lt!1461227)))))

(declare-fun b!4085393 () Bool)

(declare-fun e!2535596 () Bool)

(assert (=> b!4085393 (= e!2535595 e!2535596)))

(declare-fun res!1669310 () Bool)

(assert (=> b!4085393 (=> (not res!1669310) (not e!2535596))))

(declare-fun maxPrefix!3955 (LexerInterface!6665 List!43923 List!43922) Option!9482)

(assert (=> b!4085393 (= res!1669310 (= (maxPrefix!3955 thiss!26199 rules!3870 input!3411) lt!1461227))))

(declare-fun suffix!1518 () List!43922)

(assert (=> b!4085393 (= lt!1461227 (Some!9481 (tuple2!42737 lt!1461225 suffix!1518)))))

(declare-fun lt!1461226 () BalanceConc!26168)

(declare-fun apply!10259 (TokenValueInjection!14040 BalanceConc!26168) TokenValue!7306)

(declare-fun size!32711 (List!43922) Int)

(assert (=> b!4085393 (= lt!1461225 (Token!13279 (apply!10259 (transformation!7076 r!4213) lt!1461226) r!4213 (size!32711 p!2988) p!2988))))

(declare-fun lt!1461228 () Unit!63319)

(declare-fun lemmaSemiInverse!2043 (TokenValueInjection!14040 BalanceConc!26168) Unit!63319)

(assert (=> b!4085393 (= lt!1461228 (lemmaSemiInverse!2043 (transformation!7076 r!4213) lt!1461226))))

(declare-fun seqFromList!5293 (List!43922) BalanceConc!26168)

(assert (=> b!4085393 (= lt!1461226 (seqFromList!5293 p!2988))))

(declare-fun b!4085394 () Bool)

(declare-fun tp!1237010 () Bool)

(assert (=> b!4085394 (= e!2535587 (and tp!1237010 (inv!58477 (tag!7936 (h!49219 rules!3870))) (inv!58480 (transformation!7076 (h!49219 rules!3870))) e!2535593))))

(declare-fun b!4085395 () Bool)

(declare-fun res!1669312 () Bool)

(assert (=> b!4085395 (=> (not res!1669312) (not e!2535595))))

(declare-fun ++!11482 (List!43922 List!43922) List!43922)

(assert (=> b!4085395 (= res!1669312 (= input!3411 (++!11482 p!2988 suffix!1518)))))

(declare-fun b!4085396 () Bool)

(assert (=> b!4085396 (= e!2535596 (not e!2535583))))

(declare-fun res!1669305 () Bool)

(assert (=> b!4085396 (=> res!1669305 e!2535583)))

(declare-fun matchR!5922 (Regex!11981 List!43922) Bool)

(assert (=> b!4085396 (= res!1669305 (not (matchR!5922 (regex!7076 r!4213) p!2988)))))

(declare-fun ruleValid!2996 (LexerInterface!6665 Rule!13952) Bool)

(assert (=> b!4085396 (ruleValid!2996 thiss!26199 r!4213)))

(declare-fun lt!1461224 () Unit!63319)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2062 (LexerInterface!6665 Rule!13952 List!43923) Unit!63319)

(assert (=> b!4085396 (= lt!1461224 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2062 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4085397 () Bool)

(declare-fun res!1669304 () Bool)

(assert (=> b!4085397 (=> res!1669304 e!2535583)))

(assert (=> b!4085397 (= res!1669304 (or (not ((_ is Cons!43799) rules!3870)) (not (= (h!49219 rules!3870) r!4213))))))

(declare-fun b!4085398 () Bool)

(declare-fun res!1669307 () Bool)

(assert (=> b!4085398 (=> (not res!1669307) (not e!2535595))))

(declare-fun contains!8751 (List!43923 Rule!13952) Bool)

(assert (=> b!4085398 (= res!1669307 (contains!8751 rules!3870 r!4213))))

(assert (= (and start!386304 res!1669308) b!4085391))

(assert (= (and b!4085391 res!1669306) b!4085386))

(assert (= (and b!4085386 res!1669313) b!4085398))

(assert (= (and b!4085398 res!1669307) b!4085395))

(assert (= (and b!4085395 res!1669312) b!4085387))

(assert (= (and b!4085387 res!1669309) b!4085393))

(assert (= (and b!4085393 res!1669310) b!4085396))

(assert (= (and b!4085396 (not res!1669305)) b!4085397))

(assert (= (and b!4085397 (not res!1669304)) b!4085388))

(assert (= (and b!4085388 (not res!1669314)) b!4085392))

(assert (= (and b!4085392 (not res!1669311)) b!4085389))

(assert (= (and start!386304 ((_ is Cons!43798) suffix!1518)) b!4085382))

(assert (= b!4085394 b!4085381))

(assert (= b!4085390 b!4085394))

(assert (= (and start!386304 ((_ is Cons!43799) rules!3870)) b!4085390))

(assert (= (and start!386304 ((_ is Cons!43798) p!2988)) b!4085384))

(assert (= (and start!386304 ((_ is Cons!43798) input!3411)) b!4085380))

(assert (= b!4085385 b!4085383))

(assert (= start!386304 b!4085385))

(declare-fun m!4692209 () Bool)

(assert (=> b!4085386 m!4692209))

(declare-fun m!4692211 () Bool)

(assert (=> b!4085398 m!4692211))

(declare-fun m!4692213 () Bool)

(assert (=> b!4085385 m!4692213))

(declare-fun m!4692215 () Bool)

(assert (=> b!4085385 m!4692215))

(declare-fun m!4692217 () Bool)

(assert (=> b!4085387 m!4692217))

(declare-fun m!4692219 () Bool)

(assert (=> b!4085392 m!4692219))

(declare-fun m!4692221 () Bool)

(assert (=> b!4085395 m!4692221))

(declare-fun m!4692223 () Bool)

(assert (=> b!4085389 m!4692223))

(declare-fun m!4692225 () Bool)

(assert (=> b!4085396 m!4692225))

(declare-fun m!4692227 () Bool)

(assert (=> b!4085396 m!4692227))

(declare-fun m!4692229 () Bool)

(assert (=> b!4085396 m!4692229))

(declare-fun m!4692231 () Bool)

(assert (=> b!4085393 m!4692231))

(declare-fun m!4692233 () Bool)

(assert (=> b!4085393 m!4692233))

(declare-fun m!4692235 () Bool)

(assert (=> b!4085393 m!4692235))

(declare-fun m!4692237 () Bool)

(assert (=> b!4085393 m!4692237))

(declare-fun m!4692239 () Bool)

(assert (=> b!4085393 m!4692239))

(declare-fun m!4692241 () Bool)

(assert (=> b!4085388 m!4692241))

(declare-fun m!4692243 () Bool)

(assert (=> b!4085388 m!4692243))

(declare-fun m!4692245 () Bool)

(assert (=> b!4085388 m!4692245))

(declare-fun m!4692247 () Bool)

(assert (=> b!4085391 m!4692247))

(declare-fun m!4692249 () Bool)

(assert (=> b!4085394 m!4692249))

(declare-fun m!4692251 () Bool)

(assert (=> b!4085394 m!4692251))

(check-sat (not b!4085392) (not b!4085385) (not b!4085391) (not b!4085386) (not b!4085389) (not b!4085380) b_and!314503 b_and!314509 b_and!314507 (not b!4085398) (not b_next!114849) (not b!4085395) (not b_next!114855) (not b!4085388) (not b!4085382) (not b_next!114851) (not b!4085384) tp_is_empty!20965 b_and!314505 (not b!4085393) (not b!4085396) (not b!4085394) (not b!4085387) (not b_next!114853) (not b!4085390))
(check-sat (not b_next!114849) (not b_next!114855) (not b_next!114851) b_and!314505 b_and!314503 b_and!314509 b_and!314507 (not b_next!114853))
(get-model)

(declare-fun d!1213071 () Bool)

(declare-fun dynLambda!18698 (Int BalanceConc!26168) TokenValue!7306)

(assert (=> d!1213071 (= (apply!10259 (transformation!7076 r!4213) lt!1461226) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))))

(declare-fun b_lambda!119575 () Bool)

(assert (=> (not b_lambda!119575) (not d!1213071)))

(declare-fun t!338084 () Bool)

(declare-fun tb!245385 () Bool)

(assert (=> (and b!4085383 (= (toValue!9656 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 r!4213))) t!338084) tb!245385))

(declare-fun result!297726 () Bool)

(declare-fun inv!21 (TokenValue!7306) Bool)

(assert (=> tb!245385 (= result!297726 (inv!21 (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))

(declare-fun m!4692257 () Bool)

(assert (=> tb!245385 m!4692257))

(assert (=> d!1213071 t!338084))

(declare-fun b_and!314511 () Bool)

(assert (= b_and!314503 (and (=> t!338084 result!297726) b_and!314511)))

(declare-fun tb!245387 () Bool)

(declare-fun t!338086 () Bool)

(assert (=> (and b!4085381 (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213))) t!338086) tb!245387))

(declare-fun result!297730 () Bool)

(assert (= result!297730 result!297726))

(assert (=> d!1213071 t!338086))

(declare-fun b_and!314513 () Bool)

(assert (= b_and!314507 (and (=> t!338086 result!297730) b_and!314513)))

(declare-fun m!4692259 () Bool)

(assert (=> d!1213071 m!4692259))

(assert (=> b!4085393 d!1213071))

(declare-fun b!4085494 () Bool)

(declare-fun res!1669388 () Bool)

(declare-fun e!2535647 () Bool)

(assert (=> b!4085494 (=> (not res!1669388) (not e!2535647))))

(declare-fun lt!1461263 () Option!9482)

(declare-fun get!14364 (Option!9482) tuple2!42736)

(assert (=> b!4085494 (= res!1669388 (< (size!32711 (_2!24502 (get!14364 lt!1461263))) (size!32711 input!3411)))))

(declare-fun b!4085495 () Bool)

(declare-fun res!1669390 () Bool)

(assert (=> b!4085495 (=> (not res!1669390) (not e!2535647))))

(declare-fun list!16266 (BalanceConc!26168) List!43922)

(declare-fun charsOf!4842 (Token!13278) BalanceConc!26168)

(assert (=> b!4085495 (= res!1669390 (= (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263)))) (originalCharacters!7670 (_1!24502 (get!14364 lt!1461263)))))))

(declare-fun b!4085496 () Bool)

(declare-fun e!2535646 () Bool)

(assert (=> b!4085496 (= e!2535646 e!2535647)))

(declare-fun res!1669392 () Bool)

(assert (=> b!4085496 (=> (not res!1669392) (not e!2535647))))

(declare-fun isDefined!7178 (Option!9482) Bool)

(assert (=> b!4085496 (= res!1669392 (isDefined!7178 lt!1461263))))

(declare-fun b!4085497 () Bool)

(declare-fun res!1669391 () Bool)

(assert (=> b!4085497 (=> (not res!1669391) (not e!2535647))))

(assert (=> b!4085497 (= res!1669391 (= (++!11482 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263)))) (_2!24502 (get!14364 lt!1461263))) input!3411))))

(declare-fun b!4085498 () Bool)

(declare-fun res!1669389 () Bool)

(assert (=> b!4085498 (=> (not res!1669389) (not e!2535647))))

(assert (=> b!4085498 (= res!1669389 (= (value!222318 (_1!24502 (get!14364 lt!1461263))) (apply!10259 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461263)))))))))

(declare-fun b!4085499 () Bool)

(declare-fun e!2535645 () Option!9482)

(declare-fun lt!1461261 () Option!9482)

(declare-fun lt!1461259 () Option!9482)

(assert (=> b!4085499 (= e!2535645 (ite (and ((_ is None!9481) lt!1461261) ((_ is None!9481) lt!1461259)) None!9481 (ite ((_ is None!9481) lt!1461259) lt!1461261 (ite ((_ is None!9481) lt!1461261) lt!1461259 (ite (>= (size!32710 (_1!24502 (v!39955 lt!1461261))) (size!32710 (_1!24502 (v!39955 lt!1461259)))) lt!1461261 lt!1461259)))))))

(declare-fun call!288808 () Option!9482)

(assert (=> b!4085499 (= lt!1461261 call!288808)))

(assert (=> b!4085499 (= lt!1461259 (maxPrefix!3955 thiss!26199 (t!338082 rules!3870) input!3411))))

(declare-fun b!4085500 () Bool)

(assert (=> b!4085500 (= e!2535647 (contains!8751 rules!3870 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))))

(declare-fun bm!288803 () Bool)

(assert (=> bm!288803 (= call!288808 (maxPrefixOneRule!2941 thiss!26199 (h!49219 rules!3870) input!3411))))

(declare-fun b!4085502 () Bool)

(assert (=> b!4085502 (= e!2535645 call!288808)))

(declare-fun d!1213075 () Bool)

(assert (=> d!1213075 e!2535646))

(declare-fun res!1669387 () Bool)

(assert (=> d!1213075 (=> res!1669387 e!2535646)))

(declare-fun isEmpty!26187 (Option!9482) Bool)

(assert (=> d!1213075 (= res!1669387 (isEmpty!26187 lt!1461263))))

(assert (=> d!1213075 (= lt!1461263 e!2535645)))

(declare-fun c!704293 () Bool)

(assert (=> d!1213075 (= c!704293 (and ((_ is Cons!43799) rules!3870) ((_ is Nil!43799) (t!338082 rules!3870))))))

(declare-fun lt!1461262 () Unit!63319)

(declare-fun lt!1461260 () Unit!63319)

(assert (=> d!1213075 (= lt!1461262 lt!1461260)))

(declare-fun isPrefix!4129 (List!43922 List!43922) Bool)

(assert (=> d!1213075 (isPrefix!4129 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2680 (List!43922 List!43922) Unit!63319)

(assert (=> d!1213075 (= lt!1461260 (lemmaIsPrefixRefl!2680 input!3411 input!3411))))

(declare-fun rulesValidInductive!2611 (LexerInterface!6665 List!43923) Bool)

(assert (=> d!1213075 (rulesValidInductive!2611 thiss!26199 rules!3870)))

(assert (=> d!1213075 (= (maxPrefix!3955 thiss!26199 rules!3870 input!3411) lt!1461263)))

(declare-fun b!4085501 () Bool)

(declare-fun res!1669386 () Bool)

(assert (=> b!4085501 (=> (not res!1669386) (not e!2535647))))

(assert (=> b!4085501 (= res!1669386 (matchR!5922 (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))) (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))))))

(assert (= (and d!1213075 c!704293) b!4085502))

(assert (= (and d!1213075 (not c!704293)) b!4085499))

(assert (= (or b!4085502 b!4085499) bm!288803))

(assert (= (and d!1213075 (not res!1669387)) b!4085496))

(assert (= (and b!4085496 res!1669392) b!4085495))

(assert (= (and b!4085495 res!1669390) b!4085494))

(assert (= (and b!4085494 res!1669388) b!4085497))

(assert (= (and b!4085497 res!1669391) b!4085498))

(assert (= (and b!4085498 res!1669389) b!4085501))

(assert (= (and b!4085501 res!1669386) b!4085500))

(declare-fun m!4692317 () Bool)

(assert (=> b!4085501 m!4692317))

(declare-fun m!4692319 () Bool)

(assert (=> b!4085501 m!4692319))

(assert (=> b!4085501 m!4692319))

(declare-fun m!4692321 () Bool)

(assert (=> b!4085501 m!4692321))

(assert (=> b!4085501 m!4692321))

(declare-fun m!4692323 () Bool)

(assert (=> b!4085501 m!4692323))

(assert (=> b!4085498 m!4692317))

(declare-fun m!4692325 () Bool)

(assert (=> b!4085498 m!4692325))

(assert (=> b!4085498 m!4692325))

(declare-fun m!4692327 () Bool)

(assert (=> b!4085498 m!4692327))

(declare-fun m!4692329 () Bool)

(assert (=> b!4085496 m!4692329))

(declare-fun m!4692331 () Bool)

(assert (=> d!1213075 m!4692331))

(declare-fun m!4692335 () Bool)

(assert (=> d!1213075 m!4692335))

(declare-fun m!4692337 () Bool)

(assert (=> d!1213075 m!4692337))

(declare-fun m!4692339 () Bool)

(assert (=> d!1213075 m!4692339))

(assert (=> b!4085500 m!4692317))

(declare-fun m!4692341 () Bool)

(assert (=> b!4085500 m!4692341))

(assert (=> b!4085495 m!4692317))

(assert (=> b!4085495 m!4692319))

(assert (=> b!4085495 m!4692319))

(assert (=> b!4085495 m!4692321))

(declare-fun m!4692343 () Bool)

(assert (=> bm!288803 m!4692343))

(declare-fun m!4692345 () Bool)

(assert (=> b!4085499 m!4692345))

(assert (=> b!4085494 m!4692317))

(declare-fun m!4692347 () Bool)

(assert (=> b!4085494 m!4692347))

(declare-fun m!4692349 () Bool)

(assert (=> b!4085494 m!4692349))

(assert (=> b!4085497 m!4692317))

(assert (=> b!4085497 m!4692319))

(assert (=> b!4085497 m!4692319))

(assert (=> b!4085497 m!4692321))

(assert (=> b!4085497 m!4692321))

(declare-fun m!4692351 () Bool)

(assert (=> b!4085497 m!4692351))

(assert (=> b!4085393 d!1213075))

(declare-fun d!1213089 () Bool)

(declare-fun lt!1461276 () Int)

(assert (=> d!1213089 (>= lt!1461276 0)))

(declare-fun e!2535659 () Int)

(assert (=> d!1213089 (= lt!1461276 e!2535659)))

(declare-fun c!704301 () Bool)

(assert (=> d!1213089 (= c!704301 ((_ is Nil!43798) p!2988))))

(assert (=> d!1213089 (= (size!32711 p!2988) lt!1461276)))

(declare-fun b!4085524 () Bool)

(assert (=> b!4085524 (= e!2535659 0)))

(declare-fun b!4085525 () Bool)

(assert (=> b!4085525 (= e!2535659 (+ 1 (size!32711 (t!338081 p!2988))))))

(assert (= (and d!1213089 c!704301) b!4085524))

(assert (= (and d!1213089 (not c!704301)) b!4085525))

(declare-fun m!4692359 () Bool)

(assert (=> b!4085525 m!4692359))

(assert (=> b!4085393 d!1213089))

(declare-fun d!1213095 () Bool)

(declare-fun fromListB!2422 (List!43922) BalanceConc!26168)

(assert (=> d!1213095 (= (seqFromList!5293 p!2988) (fromListB!2422 p!2988))))

(declare-fun bs!593049 () Bool)

(assert (= bs!593049 d!1213095))

(declare-fun m!4692361 () Bool)

(assert (=> bs!593049 m!4692361))

(assert (=> b!4085393 d!1213095))

(declare-fun b!4085563 () Bool)

(declare-fun e!2535682 () Bool)

(assert (=> b!4085563 (= e!2535682 true)))

(declare-fun d!1213097 () Bool)

(assert (=> d!1213097 e!2535682))

(assert (= d!1213097 b!4085563))

(declare-fun order!22987 () Int)

(declare-fun lambda!127893 () Int)

(declare-fun order!22985 () Int)

(declare-fun dynLambda!18699 (Int Int) Int)

(declare-fun dynLambda!18700 (Int Int) Int)

(assert (=> b!4085563 (< (dynLambda!18699 order!22985 (toValue!9656 (transformation!7076 r!4213))) (dynLambda!18700 order!22987 lambda!127893))))

(declare-fun order!22989 () Int)

(declare-fun dynLambda!18701 (Int Int) Int)

(assert (=> b!4085563 (< (dynLambda!18701 order!22989 (toChars!9515 (transformation!7076 r!4213))) (dynLambda!18700 order!22987 lambda!127893))))

(declare-fun dynLambda!18702 (Int TokenValue!7306) BalanceConc!26168)

(assert (=> d!1213097 (= (list!16266 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))) (list!16266 lt!1461226))))

(declare-fun lt!1461286 () Unit!63319)

(declare-fun ForallOf!875 (Int BalanceConc!26168) Unit!63319)

(assert (=> d!1213097 (= lt!1461286 (ForallOf!875 lambda!127893 lt!1461226))))

(assert (=> d!1213097 (= (lemmaSemiInverse!2043 (transformation!7076 r!4213) lt!1461226) lt!1461286)))

(declare-fun b_lambda!119585 () Bool)

(assert (=> (not b_lambda!119585) (not d!1213097)))

(declare-fun t!338100 () Bool)

(declare-fun tb!245401 () Bool)

(assert (=> (and b!4085383 (= (toChars!9515 (transformation!7076 r!4213)) (toChars!9515 (transformation!7076 r!4213))) t!338100) tb!245401))

(declare-fun e!2535685 () Bool)

(declare-fun b!4085568 () Bool)

(declare-fun tp!1237023 () Bool)

(declare-fun inv!58484 (Conc!13287) Bool)

(assert (=> b!4085568 (= e!2535685 (and (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))) tp!1237023))))

(declare-fun result!297748 () Bool)

(declare-fun inv!58485 (BalanceConc!26168) Bool)

(assert (=> tb!245401 (= result!297748 (and (inv!58485 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))) e!2535685))))

(assert (= tb!245401 b!4085568))

(declare-fun m!4692411 () Bool)

(assert (=> b!4085568 m!4692411))

(declare-fun m!4692413 () Bool)

(assert (=> tb!245401 m!4692413))

(assert (=> d!1213097 t!338100))

(declare-fun b_and!314531 () Bool)

(assert (= b_and!314505 (and (=> t!338100 result!297748) b_and!314531)))

(declare-fun tb!245403 () Bool)

(declare-fun t!338102 () Bool)

(assert (=> (and b!4085381 (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 r!4213))) t!338102) tb!245403))

(declare-fun result!297752 () Bool)

(assert (= result!297752 result!297748))

(assert (=> d!1213097 t!338102))

(declare-fun b_and!314533 () Bool)

(assert (= b_and!314509 (and (=> t!338102 result!297752) b_and!314533)))

(declare-fun b_lambda!119587 () Bool)

(assert (=> (not b_lambda!119587) (not d!1213097)))

(assert (=> d!1213097 t!338084))

(declare-fun b_and!314535 () Bool)

(assert (= b_and!314511 (and (=> t!338084 result!297726) b_and!314535)))

(assert (=> d!1213097 t!338086))

(declare-fun b_and!314537 () Bool)

(assert (= b_and!314513 (and (=> t!338086 result!297730) b_and!314537)))

(assert (=> d!1213097 m!4692259))

(declare-fun m!4692415 () Bool)

(assert (=> d!1213097 m!4692415))

(assert (=> d!1213097 m!4692259))

(declare-fun m!4692417 () Bool)

(assert (=> d!1213097 m!4692417))

(declare-fun m!4692419 () Bool)

(assert (=> d!1213097 m!4692419))

(assert (=> d!1213097 m!4692415))

(declare-fun m!4692421 () Bool)

(assert (=> d!1213097 m!4692421))

(assert (=> b!4085393 d!1213097))

(declare-fun b!4085651 () Bool)

(declare-fun res!1669458 () Bool)

(declare-fun e!2535728 () Bool)

(assert (=> b!4085651 (=> (not res!1669458) (not e!2535728))))

(declare-fun lt!1461315 () Option!9482)

(assert (=> b!4085651 (= res!1669458 (= (value!222318 (_1!24502 (get!14364 lt!1461315))) (apply!10259 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315)))))))))

(declare-fun b!4085652 () Bool)

(declare-fun res!1669453 () Bool)

(assert (=> b!4085652 (=> (not res!1669453) (not e!2535728))))

(assert (=> b!4085652 (= res!1669453 (< (size!32711 (_2!24502 (get!14364 lt!1461315))) (size!32711 input!3411)))))

(declare-fun b!4085653 () Bool)

(declare-fun e!2535731 () Bool)

(declare-datatypes ((tuple2!42740 0))(
  ( (tuple2!42741 (_1!24504 List!43922) (_2!24504 List!43922)) )
))
(declare-fun findLongestMatchInner!1448 (Regex!11981 List!43922 Int List!43922 List!43922 Int) tuple2!42740)

(assert (=> b!4085653 (= e!2535731 (matchR!5922 (regex!7076 r!4213) (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(declare-fun b!4085654 () Bool)

(declare-fun e!2535730 () Option!9482)

(assert (=> b!4085654 (= e!2535730 None!9481)))

(declare-fun d!1213115 () Bool)

(declare-fun e!2535729 () Bool)

(assert (=> d!1213115 e!2535729))

(declare-fun res!1669455 () Bool)

(assert (=> d!1213115 (=> res!1669455 e!2535729)))

(assert (=> d!1213115 (= res!1669455 (isEmpty!26187 lt!1461315))))

(assert (=> d!1213115 (= lt!1461315 e!2535730)))

(declare-fun c!704311 () Bool)

(declare-fun lt!1461313 () tuple2!42740)

(assert (=> d!1213115 (= c!704311 (isEmpty!26184 (_1!24504 lt!1461313)))))

(declare-fun findLongestMatch!1361 (Regex!11981 List!43922) tuple2!42740)

(assert (=> d!1213115 (= lt!1461313 (findLongestMatch!1361 (regex!7076 r!4213) input!3411))))

(assert (=> d!1213115 (ruleValid!2996 thiss!26199 r!4213)))

(assert (=> d!1213115 (= (maxPrefixOneRule!2941 thiss!26199 r!4213 input!3411) lt!1461315)))

(declare-fun b!4085655 () Bool)

(assert (=> b!4085655 (= e!2535729 e!2535728)))

(declare-fun res!1669452 () Bool)

(assert (=> b!4085655 (=> (not res!1669452) (not e!2535728))))

(assert (=> b!4085655 (= res!1669452 (matchR!5922 (regex!7076 r!4213) (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))))))

(declare-fun b!4085656 () Bool)

(declare-fun size!32713 (BalanceConc!26168) Int)

(assert (=> b!4085656 (= e!2535730 (Some!9481 (tuple2!42737 (Token!13279 (apply!10259 (transformation!7076 r!4213) (seqFromList!5293 (_1!24504 lt!1461313))) r!4213 (size!32713 (seqFromList!5293 (_1!24504 lt!1461313))) (_1!24504 lt!1461313)) (_2!24504 lt!1461313))))))

(declare-fun lt!1461316 () Unit!63319)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1421 (Regex!11981 List!43922) Unit!63319)

(assert (=> b!4085656 (= lt!1461316 (longestMatchIsAcceptedByMatchOrIsEmpty!1421 (regex!7076 r!4213) input!3411))))

(declare-fun res!1669457 () Bool)

(assert (=> b!4085656 (= res!1669457 (isEmpty!26184 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(assert (=> b!4085656 (=> res!1669457 e!2535731)))

(assert (=> b!4085656 e!2535731))

(declare-fun lt!1461312 () Unit!63319)

(assert (=> b!4085656 (= lt!1461312 lt!1461316)))

(declare-fun lt!1461314 () Unit!63319)

(assert (=> b!4085656 (= lt!1461314 (lemmaSemiInverse!2043 (transformation!7076 r!4213) (seqFromList!5293 (_1!24504 lt!1461313))))))

(declare-fun b!4085657 () Bool)

(assert (=> b!4085657 (= e!2535728 (= (size!32710 (_1!24502 (get!14364 lt!1461315))) (size!32711 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315))))))))

(declare-fun b!4085658 () Bool)

(declare-fun res!1669456 () Bool)

(assert (=> b!4085658 (=> (not res!1669456) (not e!2535728))))

(assert (=> b!4085658 (= res!1669456 (= (rule!10204 (_1!24502 (get!14364 lt!1461315))) r!4213))))

(declare-fun b!4085659 () Bool)

(declare-fun res!1669454 () Bool)

(assert (=> b!4085659 (=> (not res!1669454) (not e!2535728))))

(assert (=> b!4085659 (= res!1669454 (= (++!11482 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315)))) (_2!24502 (get!14364 lt!1461315))) input!3411))))

(assert (= (and d!1213115 c!704311) b!4085654))

(assert (= (and d!1213115 (not c!704311)) b!4085656))

(assert (= (and b!4085656 (not res!1669457)) b!4085653))

(assert (= (and d!1213115 (not res!1669455)) b!4085655))

(assert (= (and b!4085655 res!1669452) b!4085659))

(assert (= (and b!4085659 res!1669454) b!4085652))

(assert (= (and b!4085652 res!1669453) b!4085658))

(assert (= (and b!4085658 res!1669456) b!4085651))

(assert (= (and b!4085651 res!1669458) b!4085657))

(declare-fun m!4692473 () Bool)

(assert (=> b!4085656 m!4692473))

(declare-fun m!4692475 () Bool)

(assert (=> b!4085656 m!4692475))

(assert (=> b!4085656 m!4692473))

(declare-fun m!4692477 () Bool)

(assert (=> b!4085656 m!4692477))

(declare-fun m!4692479 () Bool)

(assert (=> b!4085656 m!4692479))

(declare-fun m!4692481 () Bool)

(assert (=> b!4085656 m!4692481))

(assert (=> b!4085656 m!4692349))

(declare-fun m!4692483 () Bool)

(assert (=> b!4085656 m!4692483))

(assert (=> b!4085656 m!4692481))

(assert (=> b!4085656 m!4692349))

(declare-fun m!4692485 () Bool)

(assert (=> b!4085656 m!4692485))

(assert (=> b!4085656 m!4692473))

(assert (=> b!4085656 m!4692473))

(declare-fun m!4692487 () Bool)

(assert (=> b!4085656 m!4692487))

(declare-fun m!4692489 () Bool)

(assert (=> b!4085652 m!4692489))

(declare-fun m!4692491 () Bool)

(assert (=> b!4085652 m!4692491))

(assert (=> b!4085652 m!4692349))

(assert (=> b!4085651 m!4692489))

(declare-fun m!4692493 () Bool)

(assert (=> b!4085651 m!4692493))

(assert (=> b!4085651 m!4692493))

(declare-fun m!4692495 () Bool)

(assert (=> b!4085651 m!4692495))

(assert (=> b!4085659 m!4692489))

(declare-fun m!4692497 () Bool)

(assert (=> b!4085659 m!4692497))

(assert (=> b!4085659 m!4692497))

(declare-fun m!4692499 () Bool)

(assert (=> b!4085659 m!4692499))

(assert (=> b!4085659 m!4692499))

(declare-fun m!4692501 () Bool)

(assert (=> b!4085659 m!4692501))

(assert (=> b!4085657 m!4692489))

(declare-fun m!4692503 () Bool)

(assert (=> b!4085657 m!4692503))

(assert (=> b!4085653 m!4692481))

(assert (=> b!4085653 m!4692349))

(assert (=> b!4085653 m!4692481))

(assert (=> b!4085653 m!4692349))

(assert (=> b!4085653 m!4692485))

(declare-fun m!4692505 () Bool)

(assert (=> b!4085653 m!4692505))

(declare-fun m!4692507 () Bool)

(assert (=> d!1213115 m!4692507))

(declare-fun m!4692509 () Bool)

(assert (=> d!1213115 m!4692509))

(declare-fun m!4692511 () Bool)

(assert (=> d!1213115 m!4692511))

(assert (=> d!1213115 m!4692227))

(assert (=> b!4085658 m!4692489))

(assert (=> b!4085655 m!4692489))

(assert (=> b!4085655 m!4692497))

(assert (=> b!4085655 m!4692497))

(assert (=> b!4085655 m!4692499))

(assert (=> b!4085655 m!4692499))

(declare-fun m!4692513 () Bool)

(assert (=> b!4085655 m!4692513))

(assert (=> b!4085392 d!1213115))

(declare-fun d!1213125 () Bool)

(assert (=> d!1213125 (= (isEmpty!26185 rules!3870) ((_ is Nil!43799) rules!3870))))

(assert (=> b!4085391 d!1213125))

(declare-fun d!1213127 () Bool)

(declare-fun res!1669463 () Bool)

(declare-fun e!2535734 () Bool)

(assert (=> d!1213127 (=> (not res!1669463) (not e!2535734))))

(assert (=> d!1213127 (= res!1669463 (not (isEmpty!26184 (originalCharacters!7670 lt!1461225))))))

(assert (=> d!1213127 (= (inv!58481 lt!1461225) e!2535734)))

(declare-fun b!4085664 () Bool)

(declare-fun res!1669464 () Bool)

(assert (=> b!4085664 (=> (not res!1669464) (not e!2535734))))

(assert (=> b!4085664 (= res!1669464 (= (originalCharacters!7670 lt!1461225) (list!16266 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))))))

(declare-fun b!4085665 () Bool)

(assert (=> b!4085665 (= e!2535734 (= (size!32710 lt!1461225) (size!32711 (originalCharacters!7670 lt!1461225))))))

(assert (= (and d!1213127 res!1669463) b!4085664))

(assert (= (and b!4085664 res!1669464) b!4085665))

(declare-fun b_lambda!119595 () Bool)

(assert (=> (not b_lambda!119595) (not b!4085664)))

(declare-fun tb!245411 () Bool)

(declare-fun t!338111 () Bool)

(assert (=> (and b!4085383 (= (toChars!9515 (transformation!7076 r!4213)) (toChars!9515 (transformation!7076 (rule!10204 lt!1461225)))) t!338111) tb!245411))

(declare-fun b!4085666 () Bool)

(declare-fun e!2535735 () Bool)

(declare-fun tp!1237061 () Bool)

(assert (=> b!4085666 (= e!2535735 (and (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))) tp!1237061))))

(declare-fun result!297766 () Bool)

(assert (=> tb!245411 (= result!297766 (and (inv!58485 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))) e!2535735))))

(assert (= tb!245411 b!4085666))

(declare-fun m!4692515 () Bool)

(assert (=> b!4085666 m!4692515))

(declare-fun m!4692517 () Bool)

(assert (=> tb!245411 m!4692517))

(assert (=> b!4085664 t!338111))

(declare-fun b_and!314543 () Bool)

(assert (= b_and!314531 (and (=> t!338111 result!297766) b_and!314543)))

(declare-fun tb!245413 () Bool)

(declare-fun t!338113 () Bool)

(assert (=> (and b!4085381 (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 (rule!10204 lt!1461225)))) t!338113) tb!245413))

(declare-fun result!297768 () Bool)

(assert (= result!297768 result!297766))

(assert (=> b!4085664 t!338113))

(declare-fun b_and!314545 () Bool)

(assert (= b_and!314533 (and (=> t!338113 result!297768) b_and!314545)))

(declare-fun m!4692519 () Bool)

(assert (=> d!1213127 m!4692519))

(declare-fun m!4692521 () Bool)

(assert (=> b!4085664 m!4692521))

(assert (=> b!4085664 m!4692521))

(declare-fun m!4692523 () Bool)

(assert (=> b!4085664 m!4692523))

(declare-fun m!4692525 () Bool)

(assert (=> b!4085665 m!4692525))

(assert (=> b!4085389 d!1213127))

(declare-fun d!1213129 () Bool)

(assert (=> d!1213129 (= (isEmpty!26185 (t!338082 rules!3870)) ((_ is Nil!43799) (t!338082 rules!3870)))))

(assert (=> b!4085388 d!1213129))

(declare-fun d!1213131 () Bool)

(declare-fun res!1669467 () Bool)

(declare-fun e!2535738 () Bool)

(assert (=> d!1213131 (=> (not res!1669467) (not e!2535738))))

(declare-fun rulesValid!2770 (LexerInterface!6665 List!43923) Bool)

(assert (=> d!1213131 (= res!1669467 (rulesValid!2770 thiss!26199 (t!338082 rules!3870)))))

(assert (=> d!1213131 (= (rulesInvariant!6008 thiss!26199 (t!338082 rules!3870)) e!2535738)))

(declare-fun b!4085669 () Bool)

(declare-datatypes ((List!43925 0))(
  ( (Nil!43801) (Cons!43801 (h!49221 String!50280) (t!338120 List!43925)) )
))
(declare-fun noDuplicateTag!2771 (LexerInterface!6665 List!43923 List!43925) Bool)

(assert (=> b!4085669 (= e!2535738 (noDuplicateTag!2771 thiss!26199 (t!338082 rules!3870) Nil!43801))))

(assert (= (and d!1213131 res!1669467) b!4085669))

(declare-fun m!4692527 () Bool)

(assert (=> d!1213131 m!4692527))

(declare-fun m!4692529 () Bool)

(assert (=> b!4085669 m!4692529))

(assert (=> b!4085388 d!1213131))

(declare-fun d!1213133 () Bool)

(assert (=> d!1213133 (rulesInvariant!6008 thiss!26199 (t!338082 rules!3870))))

(declare-fun lt!1461319 () Unit!63319)

(declare-fun choose!24942 (LexerInterface!6665 Rule!13952 List!43923) Unit!63319)

(assert (=> d!1213133 (= lt!1461319 (choose!24942 thiss!26199 (h!49219 rules!3870) (t!338082 rules!3870)))))

(assert (=> d!1213133 (rulesInvariant!6008 thiss!26199 (Cons!43799 (h!49219 rules!3870) (t!338082 rules!3870)))))

(assert (=> d!1213133 (= (lemmaInvariantOnRulesThenOnTail!780 thiss!26199 (h!49219 rules!3870) (t!338082 rules!3870)) lt!1461319)))

(declare-fun bs!593051 () Bool)

(assert (= bs!593051 d!1213133))

(assert (=> bs!593051 m!4692243))

(declare-fun m!4692531 () Bool)

(assert (=> bs!593051 m!4692531))

(declare-fun m!4692533 () Bool)

(assert (=> bs!593051 m!4692533))

(assert (=> b!4085388 d!1213133))

(declare-fun d!1213135 () Bool)

(declare-fun lt!1461322 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6734 (List!43923) (InoxSet Rule!13952))

(assert (=> d!1213135 (= lt!1461322 (select (content!6734 rules!3870) r!4213))))

(declare-fun e!2535743 () Bool)

(assert (=> d!1213135 (= lt!1461322 e!2535743)))

(declare-fun res!1669472 () Bool)

(assert (=> d!1213135 (=> (not res!1669472) (not e!2535743))))

(assert (=> d!1213135 (= res!1669472 ((_ is Cons!43799) rules!3870))))

(assert (=> d!1213135 (= (contains!8751 rules!3870 r!4213) lt!1461322)))

(declare-fun b!4085674 () Bool)

(declare-fun e!2535744 () Bool)

(assert (=> b!4085674 (= e!2535743 e!2535744)))

(declare-fun res!1669473 () Bool)

(assert (=> b!4085674 (=> res!1669473 e!2535744)))

(assert (=> b!4085674 (= res!1669473 (= (h!49219 rules!3870) r!4213))))

(declare-fun b!4085675 () Bool)

(assert (=> b!4085675 (= e!2535744 (contains!8751 (t!338082 rules!3870) r!4213))))

(assert (= (and d!1213135 res!1669472) b!4085674))

(assert (= (and b!4085674 (not res!1669473)) b!4085675))

(declare-fun m!4692535 () Bool)

(assert (=> d!1213135 m!4692535))

(declare-fun m!4692537 () Bool)

(assert (=> d!1213135 m!4692537))

(declare-fun m!4692539 () Bool)

(assert (=> b!4085675 m!4692539))

(assert (=> b!4085398 d!1213135))

(declare-fun d!1213137 () Bool)

(assert (=> d!1213137 (= (isEmpty!26184 p!2988) ((_ is Nil!43798) p!2988))))

(assert (=> b!4085387 d!1213137))

(declare-fun d!1213139 () Bool)

(declare-fun res!1669474 () Bool)

(declare-fun e!2535745 () Bool)

(assert (=> d!1213139 (=> (not res!1669474) (not e!2535745))))

(assert (=> d!1213139 (= res!1669474 (rulesValid!2770 thiss!26199 rules!3870))))

(assert (=> d!1213139 (= (rulesInvariant!6008 thiss!26199 rules!3870) e!2535745)))

(declare-fun b!4085676 () Bool)

(assert (=> b!4085676 (= e!2535745 (noDuplicateTag!2771 thiss!26199 rules!3870 Nil!43801))))

(assert (= (and d!1213139 res!1669474) b!4085676))

(declare-fun m!4692541 () Bool)

(assert (=> d!1213139 m!4692541))

(declare-fun m!4692543 () Bool)

(assert (=> b!4085676 m!4692543))

(assert (=> b!4085386 d!1213139))

(declare-fun b!4085705 () Bool)

(declare-fun e!2535763 () Bool)

(declare-fun e!2535764 () Bool)

(assert (=> b!4085705 (= e!2535763 e!2535764)))

(declare-fun c!704320 () Bool)

(assert (=> b!4085705 (= c!704320 ((_ is EmptyLang!11981) (regex!7076 r!4213)))))

(declare-fun b!4085706 () Bool)

(declare-fun res!1669498 () Bool)

(declare-fun e!2535762 () Bool)

(assert (=> b!4085706 (=> res!1669498 e!2535762)))

(declare-fun tail!6369 (List!43922) List!43922)

(assert (=> b!4085706 (= res!1669498 (not (isEmpty!26184 (tail!6369 p!2988))))))

(declare-fun b!4085707 () Bool)

(declare-fun e!2535766 () Bool)

(declare-fun head!8635 (List!43922) C!24148)

(assert (=> b!4085707 (= e!2535766 (= (head!8635 p!2988) (c!704278 (regex!7076 r!4213))))))

(declare-fun d!1213141 () Bool)

(assert (=> d!1213141 e!2535763))

(declare-fun c!704318 () Bool)

(assert (=> d!1213141 (= c!704318 ((_ is EmptyExpr!11981) (regex!7076 r!4213)))))

(declare-fun lt!1461325 () Bool)

(declare-fun e!2535761 () Bool)

(assert (=> d!1213141 (= lt!1461325 e!2535761)))

(declare-fun c!704319 () Bool)

(assert (=> d!1213141 (= c!704319 (isEmpty!26184 p!2988))))

(declare-fun validRegex!5424 (Regex!11981) Bool)

(assert (=> d!1213141 (validRegex!5424 (regex!7076 r!4213))))

(assert (=> d!1213141 (= (matchR!5922 (regex!7076 r!4213) p!2988) lt!1461325)))

(declare-fun b!4085708 () Bool)

(declare-fun res!1669494 () Bool)

(assert (=> b!4085708 (=> (not res!1669494) (not e!2535766))))

(assert (=> b!4085708 (= res!1669494 (isEmpty!26184 (tail!6369 p!2988)))))

(declare-fun b!4085709 () Bool)

(assert (=> b!4085709 (= e!2535764 (not lt!1461325))))

(declare-fun b!4085710 () Bool)

(assert (=> b!4085710 (= e!2535762 (not (= (head!8635 p!2988) (c!704278 (regex!7076 r!4213)))))))

(declare-fun b!4085711 () Bool)

(declare-fun e!2535765 () Bool)

(declare-fun e!2535760 () Bool)

(assert (=> b!4085711 (= e!2535765 e!2535760)))

(declare-fun res!1669493 () Bool)

(assert (=> b!4085711 (=> (not res!1669493) (not e!2535760))))

(assert (=> b!4085711 (= res!1669493 (not lt!1461325))))

(declare-fun b!4085712 () Bool)

(declare-fun nullable!4224 (Regex!11981) Bool)

(assert (=> b!4085712 (= e!2535761 (nullable!4224 (regex!7076 r!4213)))))

(declare-fun b!4085713 () Bool)

(declare-fun res!1669497 () Bool)

(assert (=> b!4085713 (=> (not res!1669497) (not e!2535766))))

(declare-fun call!288812 () Bool)

(assert (=> b!4085713 (= res!1669497 (not call!288812))))

(declare-fun b!4085714 () Bool)

(assert (=> b!4085714 (= e!2535760 e!2535762)))

(declare-fun res!1669495 () Bool)

(assert (=> b!4085714 (=> res!1669495 e!2535762)))

(assert (=> b!4085714 (= res!1669495 call!288812)))

(declare-fun b!4085715 () Bool)

(declare-fun res!1669496 () Bool)

(assert (=> b!4085715 (=> res!1669496 e!2535765)))

(assert (=> b!4085715 (= res!1669496 (not ((_ is ElementMatch!11981) (regex!7076 r!4213))))))

(assert (=> b!4085715 (= e!2535764 e!2535765)))

(declare-fun b!4085716 () Bool)

(assert (=> b!4085716 (= e!2535763 (= lt!1461325 call!288812))))

(declare-fun b!4085717 () Bool)

(declare-fun res!1669491 () Bool)

(assert (=> b!4085717 (=> res!1669491 e!2535765)))

(assert (=> b!4085717 (= res!1669491 e!2535766)))

(declare-fun res!1669492 () Bool)

(assert (=> b!4085717 (=> (not res!1669492) (not e!2535766))))

(assert (=> b!4085717 (= res!1669492 lt!1461325)))

(declare-fun bm!288807 () Bool)

(assert (=> bm!288807 (= call!288812 (isEmpty!26184 p!2988))))

(declare-fun b!4085718 () Bool)

(declare-fun derivativeStep!3625 (Regex!11981 C!24148) Regex!11981)

(assert (=> b!4085718 (= e!2535761 (matchR!5922 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988)) (tail!6369 p!2988)))))

(assert (= (and d!1213141 c!704319) b!4085712))

(assert (= (and d!1213141 (not c!704319)) b!4085718))

(assert (= (and d!1213141 c!704318) b!4085716))

(assert (= (and d!1213141 (not c!704318)) b!4085705))

(assert (= (and b!4085705 c!704320) b!4085709))

(assert (= (and b!4085705 (not c!704320)) b!4085715))

(assert (= (and b!4085715 (not res!1669496)) b!4085717))

(assert (= (and b!4085717 res!1669492) b!4085713))

(assert (= (and b!4085713 res!1669497) b!4085708))

(assert (= (and b!4085708 res!1669494) b!4085707))

(assert (= (and b!4085717 (not res!1669491)) b!4085711))

(assert (= (and b!4085711 res!1669493) b!4085714))

(assert (= (and b!4085714 (not res!1669495)) b!4085706))

(assert (= (and b!4085706 (not res!1669498)) b!4085710))

(assert (= (or b!4085716 b!4085713 b!4085714) bm!288807))

(declare-fun m!4692545 () Bool)

(assert (=> b!4085712 m!4692545))

(declare-fun m!4692547 () Bool)

(assert (=> b!4085718 m!4692547))

(assert (=> b!4085718 m!4692547))

(declare-fun m!4692549 () Bool)

(assert (=> b!4085718 m!4692549))

(declare-fun m!4692551 () Bool)

(assert (=> b!4085718 m!4692551))

(assert (=> b!4085718 m!4692549))

(assert (=> b!4085718 m!4692551))

(declare-fun m!4692553 () Bool)

(assert (=> b!4085718 m!4692553))

(assert (=> b!4085706 m!4692551))

(assert (=> b!4085706 m!4692551))

(declare-fun m!4692555 () Bool)

(assert (=> b!4085706 m!4692555))

(assert (=> b!4085708 m!4692551))

(assert (=> b!4085708 m!4692551))

(assert (=> b!4085708 m!4692555))

(assert (=> b!4085707 m!4692547))

(assert (=> bm!288807 m!4692217))

(assert (=> d!1213141 m!4692217))

(declare-fun m!4692557 () Bool)

(assert (=> d!1213141 m!4692557))

(assert (=> b!4085710 m!4692547))

(assert (=> b!4085396 d!1213141))

(declare-fun d!1213143 () Bool)

(declare-fun res!1669503 () Bool)

(declare-fun e!2535769 () Bool)

(assert (=> d!1213143 (=> (not res!1669503) (not e!2535769))))

(assert (=> d!1213143 (= res!1669503 (validRegex!5424 (regex!7076 r!4213)))))

(assert (=> d!1213143 (= (ruleValid!2996 thiss!26199 r!4213) e!2535769)))

(declare-fun b!4085723 () Bool)

(declare-fun res!1669504 () Bool)

(assert (=> b!4085723 (=> (not res!1669504) (not e!2535769))))

(assert (=> b!4085723 (= res!1669504 (not (nullable!4224 (regex!7076 r!4213))))))

(declare-fun b!4085724 () Bool)

(assert (=> b!4085724 (= e!2535769 (not (= (tag!7936 r!4213) (String!50281 ""))))))

(assert (= (and d!1213143 res!1669503) b!4085723))

(assert (= (and b!4085723 res!1669504) b!4085724))

(assert (=> d!1213143 m!4692557))

(assert (=> b!4085723 m!4692545))

(assert (=> b!4085396 d!1213143))

(declare-fun d!1213145 () Bool)

(assert (=> d!1213145 (ruleValid!2996 thiss!26199 r!4213)))

(declare-fun lt!1461328 () Unit!63319)

(declare-fun choose!24943 (LexerInterface!6665 Rule!13952 List!43923) Unit!63319)

(assert (=> d!1213145 (= lt!1461328 (choose!24943 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1213145 (contains!8751 rules!3870 r!4213)))

(assert (=> d!1213145 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2062 thiss!26199 r!4213 rules!3870) lt!1461328)))

(declare-fun bs!593052 () Bool)

(assert (= bs!593052 d!1213145))

(assert (=> bs!593052 m!4692227))

(declare-fun m!4692559 () Bool)

(assert (=> bs!593052 m!4692559))

(assert (=> bs!593052 m!4692211))

(assert (=> b!4085396 d!1213145))

(declare-fun d!1213147 () Bool)

(assert (=> d!1213147 (= (inv!58477 (tag!7936 r!4213)) (= (mod (str.len (value!222317 (tag!7936 r!4213))) 2) 0))))

(assert (=> b!4085385 d!1213147))

(declare-fun d!1213149 () Bool)

(declare-fun res!1669507 () Bool)

(declare-fun e!2535772 () Bool)

(assert (=> d!1213149 (=> (not res!1669507) (not e!2535772))))

(declare-fun semiInverseModEq!3036 (Int Int) Bool)

(assert (=> d!1213149 (= res!1669507 (semiInverseModEq!3036 (toChars!9515 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 r!4213))))))

(assert (=> d!1213149 (= (inv!58480 (transformation!7076 r!4213)) e!2535772)))

(declare-fun b!4085727 () Bool)

(declare-fun equivClasses!2935 (Int Int) Bool)

(assert (=> b!4085727 (= e!2535772 (equivClasses!2935 (toChars!9515 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 r!4213))))))

(assert (= (and d!1213149 res!1669507) b!4085727))

(declare-fun m!4692561 () Bool)

(assert (=> d!1213149 m!4692561))

(declare-fun m!4692563 () Bool)

(assert (=> b!4085727 m!4692563))

(assert (=> b!4085385 d!1213149))

(declare-fun d!1213151 () Bool)

(declare-fun e!2535778 () Bool)

(assert (=> d!1213151 e!2535778))

(declare-fun res!1669512 () Bool)

(assert (=> d!1213151 (=> (not res!1669512) (not e!2535778))))

(declare-fun lt!1461331 () List!43922)

(declare-fun content!6735 (List!43922) (InoxSet C!24148))

(assert (=> d!1213151 (= res!1669512 (= (content!6735 lt!1461331) ((_ map or) (content!6735 p!2988) (content!6735 suffix!1518))))))

(declare-fun e!2535777 () List!43922)

(assert (=> d!1213151 (= lt!1461331 e!2535777)))

(declare-fun c!704323 () Bool)

(assert (=> d!1213151 (= c!704323 ((_ is Nil!43798) p!2988))))

(assert (=> d!1213151 (= (++!11482 p!2988 suffix!1518) lt!1461331)))

(declare-fun b!4085739 () Bool)

(assert (=> b!4085739 (= e!2535778 (or (not (= suffix!1518 Nil!43798)) (= lt!1461331 p!2988)))))

(declare-fun b!4085736 () Bool)

(assert (=> b!4085736 (= e!2535777 suffix!1518)))

(declare-fun b!4085737 () Bool)

(assert (=> b!4085737 (= e!2535777 (Cons!43798 (h!49218 p!2988) (++!11482 (t!338081 p!2988) suffix!1518)))))

(declare-fun b!4085738 () Bool)

(declare-fun res!1669513 () Bool)

(assert (=> b!4085738 (=> (not res!1669513) (not e!2535778))))

(assert (=> b!4085738 (= res!1669513 (= (size!32711 lt!1461331) (+ (size!32711 p!2988) (size!32711 suffix!1518))))))

(assert (= (and d!1213151 c!704323) b!4085736))

(assert (= (and d!1213151 (not c!704323)) b!4085737))

(assert (= (and d!1213151 res!1669512) b!4085738))

(assert (= (and b!4085738 res!1669513) b!4085739))

(declare-fun m!4692565 () Bool)

(assert (=> d!1213151 m!4692565))

(declare-fun m!4692567 () Bool)

(assert (=> d!1213151 m!4692567))

(declare-fun m!4692569 () Bool)

(assert (=> d!1213151 m!4692569))

(declare-fun m!4692571 () Bool)

(assert (=> b!4085737 m!4692571))

(declare-fun m!4692573 () Bool)

(assert (=> b!4085738 m!4692573))

(assert (=> b!4085738 m!4692239))

(declare-fun m!4692575 () Bool)

(assert (=> b!4085738 m!4692575))

(assert (=> b!4085395 d!1213151))

(declare-fun d!1213153 () Bool)

(assert (=> d!1213153 (= (inv!58477 (tag!7936 (h!49219 rules!3870))) (= (mod (str.len (value!222317 (tag!7936 (h!49219 rules!3870)))) 2) 0))))

(assert (=> b!4085394 d!1213153))

(declare-fun d!1213155 () Bool)

(declare-fun res!1669514 () Bool)

(declare-fun e!2535779 () Bool)

(assert (=> d!1213155 (=> (not res!1669514) (not e!2535779))))

(assert (=> d!1213155 (= res!1669514 (semiInverseModEq!3036 (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 (h!49219 rules!3870)))))))

(assert (=> d!1213155 (= (inv!58480 (transformation!7076 (h!49219 rules!3870))) e!2535779)))

(declare-fun b!4085740 () Bool)

(assert (=> b!4085740 (= e!2535779 (equivClasses!2935 (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 (h!49219 rules!3870)))))))

(assert (= (and d!1213155 res!1669514) b!4085740))

(declare-fun m!4692577 () Bool)

(assert (=> d!1213155 m!4692577))

(declare-fun m!4692579 () Bool)

(assert (=> b!4085740 m!4692579))

(assert (=> b!4085394 d!1213155))

(declare-fun b!4085745 () Bool)

(declare-fun e!2535782 () Bool)

(declare-fun tp!1237064 () Bool)

(assert (=> b!4085745 (= e!2535782 (and tp_is_empty!20965 tp!1237064))))

(assert (=> b!4085382 (= tp!1237012 e!2535782)))

(assert (= (and b!4085382 ((_ is Cons!43798) (t!338081 suffix!1518))) b!4085745))

(declare-fun b!4085746 () Bool)

(declare-fun e!2535783 () Bool)

(declare-fun tp!1237065 () Bool)

(assert (=> b!4085746 (= e!2535783 (and tp_is_empty!20965 tp!1237065))))

(assert (=> b!4085380 (= tp!1237008 e!2535783)))

(assert (= (and b!4085380 ((_ is Cons!43798) (t!338081 input!3411))) b!4085746))

(declare-fun b!4085757 () Bool)

(declare-fun b_free!114157 () Bool)

(declare-fun b_next!114861 () Bool)

(assert (=> b!4085757 (= b_free!114157 (not b_next!114861))))

(declare-fun tb!245415 () Bool)

(declare-fun t!338115 () Bool)

(assert (=> (and b!4085757 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 r!4213))) t!338115) tb!245415))

(declare-fun result!297774 () Bool)

(assert (= result!297774 result!297726))

(assert (=> d!1213071 t!338115))

(assert (=> d!1213097 t!338115))

(declare-fun tp!1237077 () Bool)

(declare-fun b_and!314547 () Bool)

(assert (=> b!4085757 (= tp!1237077 (and (=> t!338115 result!297774) b_and!314547))))

(declare-fun b_free!114159 () Bool)

(declare-fun b_next!114863 () Bool)

(assert (=> b!4085757 (= b_free!114159 (not b_next!114863))))

(declare-fun tb!245417 () Bool)

(declare-fun t!338117 () Bool)

(assert (=> (and b!4085757 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toChars!9515 (transformation!7076 r!4213))) t!338117) tb!245417))

(declare-fun result!297776 () Bool)

(assert (= result!297776 result!297748))

(assert (=> d!1213097 t!338117))

(declare-fun tb!245419 () Bool)

(declare-fun t!338119 () Bool)

(assert (=> (and b!4085757 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toChars!9515 (transformation!7076 (rule!10204 lt!1461225)))) t!338119) tb!245419))

(declare-fun result!297778 () Bool)

(assert (= result!297778 result!297766))

(assert (=> b!4085664 t!338119))

(declare-fun tp!1237076 () Bool)

(declare-fun b_and!314549 () Bool)

(assert (=> b!4085757 (= tp!1237076 (and (=> t!338117 result!297776) (=> t!338119 result!297778) b_and!314549))))

(declare-fun e!2535795 () Bool)

(assert (=> b!4085757 (= e!2535795 (and tp!1237077 tp!1237076))))

(declare-fun tp!1237074 () Bool)

(declare-fun e!2535792 () Bool)

(declare-fun b!4085756 () Bool)

(assert (=> b!4085756 (= e!2535792 (and tp!1237074 (inv!58477 (tag!7936 (h!49219 (t!338082 rules!3870)))) (inv!58480 (transformation!7076 (h!49219 (t!338082 rules!3870)))) e!2535795))))

(declare-fun b!4085755 () Bool)

(declare-fun e!2535794 () Bool)

(declare-fun tp!1237075 () Bool)

(assert (=> b!4085755 (= e!2535794 (and e!2535792 tp!1237075))))

(assert (=> b!4085390 (= tp!1237011 e!2535794)))

(assert (= b!4085756 b!4085757))

(assert (= b!4085755 b!4085756))

(assert (= (and b!4085390 ((_ is Cons!43799) (t!338082 rules!3870))) b!4085755))

(declare-fun m!4692581 () Bool)

(assert (=> b!4085756 m!4692581))

(declare-fun m!4692583 () Bool)

(assert (=> b!4085756 m!4692583))

(declare-fun b!4085770 () Bool)

(declare-fun e!2535798 () Bool)

(declare-fun tp!1237091 () Bool)

(assert (=> b!4085770 (= e!2535798 tp!1237091)))

(declare-fun b!4085769 () Bool)

(declare-fun tp!1237090 () Bool)

(declare-fun tp!1237089 () Bool)

(assert (=> b!4085769 (= e!2535798 (and tp!1237090 tp!1237089))))

(declare-fun b!4085771 () Bool)

(declare-fun tp!1237088 () Bool)

(declare-fun tp!1237092 () Bool)

(assert (=> b!4085771 (= e!2535798 (and tp!1237088 tp!1237092))))

(assert (=> b!4085385 (= tp!1237016 e!2535798)))

(declare-fun b!4085768 () Bool)

(assert (=> b!4085768 (= e!2535798 tp_is_empty!20965)))

(assert (= (and b!4085385 ((_ is ElementMatch!11981) (regex!7076 r!4213))) b!4085768))

(assert (= (and b!4085385 ((_ is Concat!19288) (regex!7076 r!4213))) b!4085769))

(assert (= (and b!4085385 ((_ is Star!11981) (regex!7076 r!4213))) b!4085770))

(assert (= (and b!4085385 ((_ is Union!11981) (regex!7076 r!4213))) b!4085771))

(declare-fun b!4085772 () Bool)

(declare-fun e!2535799 () Bool)

(declare-fun tp!1237093 () Bool)

(assert (=> b!4085772 (= e!2535799 (and tp_is_empty!20965 tp!1237093))))

(assert (=> b!4085384 (= tp!1237009 e!2535799)))

(assert (= (and b!4085384 ((_ is Cons!43798) (t!338081 p!2988))) b!4085772))

(declare-fun b!4085775 () Bool)

(declare-fun e!2535800 () Bool)

(declare-fun tp!1237097 () Bool)

(assert (=> b!4085775 (= e!2535800 tp!1237097)))

(declare-fun b!4085774 () Bool)

(declare-fun tp!1237096 () Bool)

(declare-fun tp!1237095 () Bool)

(assert (=> b!4085774 (= e!2535800 (and tp!1237096 tp!1237095))))

(declare-fun b!4085776 () Bool)

(declare-fun tp!1237094 () Bool)

(declare-fun tp!1237098 () Bool)

(assert (=> b!4085776 (= e!2535800 (and tp!1237094 tp!1237098))))

(assert (=> b!4085394 (= tp!1237010 e!2535800)))

(declare-fun b!4085773 () Bool)

(assert (=> b!4085773 (= e!2535800 tp_is_empty!20965)))

(assert (= (and b!4085394 ((_ is ElementMatch!11981) (regex!7076 (h!49219 rules!3870)))) b!4085773))

(assert (= (and b!4085394 ((_ is Concat!19288) (regex!7076 (h!49219 rules!3870)))) b!4085774))

(assert (= (and b!4085394 ((_ is Star!11981) (regex!7076 (h!49219 rules!3870)))) b!4085775))

(assert (= (and b!4085394 ((_ is Union!11981) (regex!7076 (h!49219 rules!3870)))) b!4085776))

(declare-fun b_lambda!119597 () Bool)

(assert (= b_lambda!119587 (or (and b!4085383 b_free!114145) (and b!4085381 b_free!114149 (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213)))) (and b!4085757 b_free!114157 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 r!4213)))) b_lambda!119597)))

(declare-fun b_lambda!119599 () Bool)

(assert (= b_lambda!119575 (or (and b!4085383 b_free!114145) (and b!4085381 b_free!114149 (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213)))) (and b!4085757 b_free!114157 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 r!4213)))) b_lambda!119599)))

(declare-fun b_lambda!119601 () Bool)

(assert (= b_lambda!119585 (or (and b!4085383 b_free!114147) (and b!4085381 b_free!114151 (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 r!4213)))) (and b!4085757 b_free!114159 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toChars!9515 (transformation!7076 r!4213)))) b_lambda!119601)))

(check-sat (not b!4085723) (not b!4085501) (not b_next!114855) (not b!4085676) (not d!1213139) (not b!4085710) (not b!4085745) (not b!4085658) (not b!4085770) (not b!4085756) (not b_lambda!119597) (not d!1213151) (not b!4085769) (not b!4085708) (not d!1213075) (not tb!245401) (not b!4085568) (not b!4085737) (not b!4085498) (not b!4085740) (not b_lambda!119601) (not b!4085771) (not bm!288807) (not b!4085656) b_and!314543 (not b!4085772) (not b_next!114861) (not b_next!114849) (not b!4085775) (not b!4085525) (not d!1213133) (not b!4085659) (not b!4085738) (not b!4085707) b_and!314549 (not b!4085675) (not b!4085500) (not b!4085657) (not b_next!114863) (not b!4085776) (not b_lambda!119595) (not b!4085727) (not b!4085712) (not d!1213135) (not b!4085666) (not b!4085774) (not b!4085495) b_and!314535 (not d!1213155) (not b_next!114851) (not b!4085653) tp_is_empty!20965 (not d!1213143) (not b_lambda!119599) (not d!1213145) (not d!1213127) (not b!4085652) b_and!314537 (not tb!245385) (not b!4085669) (not b!4085665) (not tb!245411) (not b!4085499) (not b!4085718) (not b!4085706) (not b!4085655) (not b!4085755) (not d!1213131) (not b!4085651) (not b!4085494) (not d!1213097) b_and!314547 b_and!314545 (not d!1213095) (not b!4085664) (not b!4085497) (not d!1213115) (not b!4085746) (not b!4085496) (not d!1213149) (not bm!288803) (not b_next!114853) (not d!1213141))
(check-sat b_and!314543 b_and!314549 (not b_next!114855) (not b_next!114863) b_and!314537 (not b_next!114853) (not b_next!114861) (not b_next!114849) (not b_next!114851) b_and!314535 b_and!314547 b_and!314545)
(get-model)

(declare-fun d!1213191 () Bool)

(declare-fun e!2535828 () Bool)

(assert (=> d!1213191 e!2535828))

(declare-fun res!1669532 () Bool)

(assert (=> d!1213191 (=> (not res!1669532) (not e!2535828))))

(declare-fun lt!1461365 () List!43922)

(assert (=> d!1213191 (= res!1669532 (= (content!6735 lt!1461365) ((_ map or) (content!6735 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))) (content!6735 (_2!24502 (get!14364 lt!1461315))))))))

(declare-fun e!2535827 () List!43922)

(assert (=> d!1213191 (= lt!1461365 e!2535827)))

(declare-fun c!704338 () Bool)

(assert (=> d!1213191 (= c!704338 ((_ is Nil!43798) (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))))))

(assert (=> d!1213191 (= (++!11482 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315)))) (_2!24502 (get!14364 lt!1461315))) lt!1461365)))

(declare-fun b!4085825 () Bool)

(assert (=> b!4085825 (= e!2535828 (or (not (= (_2!24502 (get!14364 lt!1461315)) Nil!43798)) (= lt!1461365 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315)))))))))

(declare-fun b!4085822 () Bool)

(assert (=> b!4085822 (= e!2535827 (_2!24502 (get!14364 lt!1461315)))))

(declare-fun b!4085823 () Bool)

(assert (=> b!4085823 (= e!2535827 (Cons!43798 (h!49218 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))) (++!11482 (t!338081 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))) (_2!24502 (get!14364 lt!1461315)))))))

(declare-fun b!4085824 () Bool)

(declare-fun res!1669533 () Bool)

(assert (=> b!4085824 (=> (not res!1669533) (not e!2535828))))

(assert (=> b!4085824 (= res!1669533 (= (size!32711 lt!1461365) (+ (size!32711 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))) (size!32711 (_2!24502 (get!14364 lt!1461315))))))))

(assert (= (and d!1213191 c!704338) b!4085822))

(assert (= (and d!1213191 (not c!704338)) b!4085823))

(assert (= (and d!1213191 res!1669532) b!4085824))

(assert (= (and b!4085824 res!1669533) b!4085825))

(declare-fun m!4692655 () Bool)

(assert (=> d!1213191 m!4692655))

(assert (=> d!1213191 m!4692499))

(declare-fun m!4692657 () Bool)

(assert (=> d!1213191 m!4692657))

(declare-fun m!4692659 () Bool)

(assert (=> d!1213191 m!4692659))

(declare-fun m!4692661 () Bool)

(assert (=> b!4085823 m!4692661))

(declare-fun m!4692665 () Bool)

(assert (=> b!4085824 m!4692665))

(assert (=> b!4085824 m!4692499))

(declare-fun m!4692667 () Bool)

(assert (=> b!4085824 m!4692667))

(assert (=> b!4085824 m!4692491))

(assert (=> b!4085659 d!1213191))

(declare-fun d!1213195 () Bool)

(declare-fun list!16268 (Conc!13287) List!43922)

(assert (=> d!1213195 (= (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315)))) (list!16268 (c!704279 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))))))

(declare-fun bs!593056 () Bool)

(assert (= bs!593056 d!1213195))

(declare-fun m!4692669 () Bool)

(assert (=> bs!593056 m!4692669))

(assert (=> b!4085659 d!1213195))

(declare-fun d!1213197 () Bool)

(declare-fun lt!1461371 () BalanceConc!26168)

(assert (=> d!1213197 (= (list!16266 lt!1461371) (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315))))))

(assert (=> d!1213197 (= lt!1461371 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315))))) (value!222318 (_1!24502 (get!14364 lt!1461315)))))))

(assert (=> d!1213197 (= (charsOf!4842 (_1!24502 (get!14364 lt!1461315))) lt!1461371)))

(declare-fun b_lambda!119603 () Bool)

(assert (=> (not b_lambda!119603) (not d!1213197)))

(declare-fun t!338122 () Bool)

(declare-fun tb!245421 () Bool)

(assert (=> (and b!4085383 (= (toChars!9515 (transformation!7076 r!4213)) (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))))) t!338122) tb!245421))

(declare-fun b!4085828 () Bool)

(declare-fun e!2535829 () Bool)

(declare-fun tp!1237099 () Bool)

(assert (=> b!4085828 (= e!2535829 (and (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315))))) (value!222318 (_1!24502 (get!14364 lt!1461315)))))) tp!1237099))))

(declare-fun result!297782 () Bool)

(assert (=> tb!245421 (= result!297782 (and (inv!58485 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315))))) (value!222318 (_1!24502 (get!14364 lt!1461315))))) e!2535829))))

(assert (= tb!245421 b!4085828))

(declare-fun m!4692673 () Bool)

(assert (=> b!4085828 m!4692673))

(declare-fun m!4692675 () Bool)

(assert (=> tb!245421 m!4692675))

(assert (=> d!1213197 t!338122))

(declare-fun b_and!314551 () Bool)

(assert (= b_and!314543 (and (=> t!338122 result!297782) b_and!314551)))

(declare-fun tb!245423 () Bool)

(declare-fun t!338124 () Bool)

(assert (=> (and b!4085381 (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))))) t!338124) tb!245423))

(declare-fun result!297784 () Bool)

(assert (= result!297784 result!297782))

(assert (=> d!1213197 t!338124))

(declare-fun b_and!314553 () Bool)

(assert (= b_and!314545 (and (=> t!338124 result!297784) b_and!314553)))

(declare-fun t!338126 () Bool)

(declare-fun tb!245425 () Bool)

(assert (=> (and b!4085757 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))))) t!338126) tb!245425))

(declare-fun result!297786 () Bool)

(assert (= result!297786 result!297782))

(assert (=> d!1213197 t!338126))

(declare-fun b_and!314555 () Bool)

(assert (= b_and!314549 (and (=> t!338126 result!297786) b_and!314555)))

(declare-fun m!4692677 () Bool)

(assert (=> d!1213197 m!4692677))

(declare-fun m!4692679 () Bool)

(assert (=> d!1213197 m!4692679))

(assert (=> b!4085659 d!1213197))

(declare-fun d!1213203 () Bool)

(assert (=> d!1213203 (= (get!14364 lt!1461315) (v!39955 lt!1461315))))

(assert (=> b!4085659 d!1213203))

(declare-fun d!1213205 () Bool)

(declare-fun e!2535831 () Bool)

(assert (=> d!1213205 e!2535831))

(declare-fun res!1669534 () Bool)

(assert (=> d!1213205 (=> (not res!1669534) (not e!2535831))))

(declare-fun lt!1461372 () List!43922)

(assert (=> d!1213205 (= res!1669534 (= (content!6735 lt!1461372) ((_ map or) (content!6735 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))) (content!6735 (_2!24502 (get!14364 lt!1461263))))))))

(declare-fun e!2535830 () List!43922)

(assert (=> d!1213205 (= lt!1461372 e!2535830)))

(declare-fun c!704339 () Bool)

(assert (=> d!1213205 (= c!704339 ((_ is Nil!43798) (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))))))

(assert (=> d!1213205 (= (++!11482 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263)))) (_2!24502 (get!14364 lt!1461263))) lt!1461372)))

(declare-fun b!4085832 () Bool)

(assert (=> b!4085832 (= e!2535831 (or (not (= (_2!24502 (get!14364 lt!1461263)) Nil!43798)) (= lt!1461372 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263)))))))))

(declare-fun b!4085829 () Bool)

(assert (=> b!4085829 (= e!2535830 (_2!24502 (get!14364 lt!1461263)))))

(declare-fun b!4085830 () Bool)

(assert (=> b!4085830 (= e!2535830 (Cons!43798 (h!49218 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))) (++!11482 (t!338081 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))) (_2!24502 (get!14364 lt!1461263)))))))

(declare-fun b!4085831 () Bool)

(declare-fun res!1669535 () Bool)

(assert (=> b!4085831 (=> (not res!1669535) (not e!2535831))))

(assert (=> b!4085831 (= res!1669535 (= (size!32711 lt!1461372) (+ (size!32711 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))) (size!32711 (_2!24502 (get!14364 lt!1461263))))))))

(assert (= (and d!1213205 c!704339) b!4085829))

(assert (= (and d!1213205 (not c!704339)) b!4085830))

(assert (= (and d!1213205 res!1669534) b!4085831))

(assert (= (and b!4085831 res!1669535) b!4085832))

(declare-fun m!4692681 () Bool)

(assert (=> d!1213205 m!4692681))

(assert (=> d!1213205 m!4692321))

(declare-fun m!4692683 () Bool)

(assert (=> d!1213205 m!4692683))

(declare-fun m!4692685 () Bool)

(assert (=> d!1213205 m!4692685))

(declare-fun m!4692687 () Bool)

(assert (=> b!4085830 m!4692687))

(declare-fun m!4692689 () Bool)

(assert (=> b!4085831 m!4692689))

(assert (=> b!4085831 m!4692321))

(declare-fun m!4692691 () Bool)

(assert (=> b!4085831 m!4692691))

(assert (=> b!4085831 m!4692347))

(assert (=> b!4085497 d!1213205))

(declare-fun d!1213207 () Bool)

(assert (=> d!1213207 (= (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263)))) (list!16268 (c!704279 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))))))

(declare-fun bs!593058 () Bool)

(assert (= bs!593058 d!1213207))

(declare-fun m!4692693 () Bool)

(assert (=> bs!593058 m!4692693))

(assert (=> b!4085497 d!1213207))

(declare-fun d!1213209 () Bool)

(declare-fun lt!1461375 () BalanceConc!26168)

(assert (=> d!1213209 (= (list!16266 lt!1461375) (originalCharacters!7670 (_1!24502 (get!14364 lt!1461263))))))

(assert (=> d!1213209 (= lt!1461375 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))) (value!222318 (_1!24502 (get!14364 lt!1461263)))))))

(assert (=> d!1213209 (= (charsOf!4842 (_1!24502 (get!14364 lt!1461263))) lt!1461375)))

(declare-fun b_lambda!119605 () Bool)

(assert (=> (not b_lambda!119605) (not d!1213209)))

(declare-fun tb!245427 () Bool)

(declare-fun t!338128 () Bool)

(assert (=> (and b!4085383 (= (toChars!9515 (transformation!7076 r!4213)) (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))) t!338128) tb!245427))

(declare-fun b!4085841 () Bool)

(declare-fun e!2535838 () Bool)

(declare-fun tp!1237100 () Bool)

(assert (=> b!4085841 (= e!2535838 (and (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))) (value!222318 (_1!24502 (get!14364 lt!1461263)))))) tp!1237100))))

(declare-fun result!297788 () Bool)

(assert (=> tb!245427 (= result!297788 (and (inv!58485 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))) (value!222318 (_1!24502 (get!14364 lt!1461263))))) e!2535838))))

(assert (= tb!245427 b!4085841))

(declare-fun m!4692695 () Bool)

(assert (=> b!4085841 m!4692695))

(declare-fun m!4692697 () Bool)

(assert (=> tb!245427 m!4692697))

(assert (=> d!1213209 t!338128))

(declare-fun b_and!314557 () Bool)

(assert (= b_and!314551 (and (=> t!338128 result!297788) b_and!314557)))

(declare-fun t!338130 () Bool)

(declare-fun tb!245429 () Bool)

(assert (=> (and b!4085381 (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))) t!338130) tb!245429))

(declare-fun result!297790 () Bool)

(assert (= result!297790 result!297788))

(assert (=> d!1213209 t!338130))

(declare-fun b_and!314559 () Bool)

(assert (= b_and!314553 (and (=> t!338130 result!297790) b_and!314559)))

(declare-fun tb!245431 () Bool)

(declare-fun t!338132 () Bool)

(assert (=> (and b!4085757 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))) t!338132) tb!245431))

(declare-fun result!297792 () Bool)

(assert (= result!297792 result!297788))

(assert (=> d!1213209 t!338132))

(declare-fun b_and!314561 () Bool)

(assert (= b_and!314555 (and (=> t!338132 result!297792) b_and!314561)))

(declare-fun m!4692699 () Bool)

(assert (=> d!1213209 m!4692699))

(declare-fun m!4692701 () Bool)

(assert (=> d!1213209 m!4692701))

(assert (=> b!4085497 d!1213209))

(declare-fun d!1213211 () Bool)

(assert (=> d!1213211 (= (get!14364 lt!1461263) (v!39955 lt!1461263))))

(assert (=> b!4085497 d!1213211))

(assert (=> d!1213145 d!1213143))

(declare-fun d!1213213 () Bool)

(assert (=> d!1213213 (ruleValid!2996 thiss!26199 r!4213)))

(assert (=> d!1213213 true))

(declare-fun _$65!1561 () Unit!63319)

(assert (=> d!1213213 (= (choose!24943 thiss!26199 r!4213 rules!3870) _$65!1561)))

(declare-fun bs!593059 () Bool)

(assert (= bs!593059 d!1213213))

(assert (=> bs!593059 m!4692227))

(assert (=> d!1213145 d!1213213))

(assert (=> d!1213145 d!1213135))

(assert (=> b!4085495 d!1213207))

(assert (=> b!4085495 d!1213209))

(assert (=> b!4085495 d!1213211))

(declare-fun d!1213217 () Bool)

(declare-fun nullableFct!1181 (Regex!11981) Bool)

(assert (=> d!1213217 (= (nullable!4224 (regex!7076 r!4213)) (nullableFct!1181 (regex!7076 r!4213)))))

(declare-fun bs!593060 () Bool)

(assert (= bs!593060 d!1213217))

(declare-fun m!4692709 () Bool)

(assert (=> bs!593060 m!4692709))

(assert (=> b!4085712 d!1213217))

(declare-fun d!1213219 () Bool)

(assert (=> d!1213219 (= (list!16266 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))) (list!16268 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))))

(declare-fun bs!593062 () Bool)

(assert (= bs!593062 d!1213219))

(declare-fun m!4692711 () Bool)

(assert (=> bs!593062 m!4692711))

(assert (=> d!1213097 d!1213219))

(declare-fun d!1213221 () Bool)

(assert (=> d!1213221 (= (list!16266 lt!1461226) (list!16268 (c!704279 lt!1461226)))))

(declare-fun bs!593063 () Bool)

(assert (= bs!593063 d!1213221))

(declare-fun m!4692715 () Bool)

(assert (=> bs!593063 m!4692715))

(assert (=> d!1213097 d!1213221))

(declare-fun d!1213225 () Bool)

(declare-fun dynLambda!18703 (Int BalanceConc!26168) Bool)

(assert (=> d!1213225 (dynLambda!18703 lambda!127893 lt!1461226)))

(declare-fun lt!1461382 () Unit!63319)

(declare-fun choose!24944 (Int BalanceConc!26168) Unit!63319)

(assert (=> d!1213225 (= lt!1461382 (choose!24944 lambda!127893 lt!1461226))))

(declare-fun Forall!1510 (Int) Bool)

(assert (=> d!1213225 (Forall!1510 lambda!127893)))

(assert (=> d!1213225 (= (ForallOf!875 lambda!127893 lt!1461226) lt!1461382)))

(declare-fun b_lambda!119607 () Bool)

(assert (=> (not b_lambda!119607) (not d!1213225)))

(declare-fun bs!593064 () Bool)

(assert (= bs!593064 d!1213225))

(declare-fun m!4692717 () Bool)

(assert (=> bs!593064 m!4692717))

(declare-fun m!4692719 () Bool)

(assert (=> bs!593064 m!4692719))

(declare-fun m!4692721 () Bool)

(assert (=> bs!593064 m!4692721))

(assert (=> d!1213097 d!1213225))

(declare-fun d!1213227 () Bool)

(assert (=> d!1213227 (= (head!8635 p!2988) (h!49218 p!2988))))

(assert (=> b!4085710 d!1213227))

(assert (=> b!4085657 d!1213203))

(declare-fun d!1213229 () Bool)

(declare-fun lt!1461385 () Int)

(assert (=> d!1213229 (>= lt!1461385 0)))

(declare-fun e!2535846 () Int)

(assert (=> d!1213229 (= lt!1461385 e!2535846)))

(declare-fun c!704340 () Bool)

(assert (=> d!1213229 (= c!704340 ((_ is Nil!43798) (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315)))))))

(assert (=> d!1213229 (= (size!32711 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315)))) lt!1461385)))

(declare-fun b!4085850 () Bool)

(assert (=> b!4085850 (= e!2535846 0)))

(declare-fun b!4085851 () Bool)

(assert (=> b!4085851 (= e!2535846 (+ 1 (size!32711 (t!338081 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315)))))))))

(assert (= (and d!1213229 c!704340) b!4085850))

(assert (= (and d!1213229 (not c!704340)) b!4085851))

(declare-fun m!4692723 () Bool)

(assert (=> b!4085851 m!4692723))

(assert (=> b!4085657 d!1213229))

(declare-fun b!4085852 () Bool)

(declare-fun e!2535850 () Bool)

(declare-fun e!2535851 () Bool)

(assert (=> b!4085852 (= e!2535850 e!2535851)))

(declare-fun c!704343 () Bool)

(assert (=> b!4085852 (= c!704343 ((_ is EmptyLang!11981) (regex!7076 r!4213)))))

(declare-fun b!4085853 () Bool)

(declare-fun res!1669559 () Bool)

(declare-fun e!2535849 () Bool)

(assert (=> b!4085853 (=> res!1669559 e!2535849)))

(assert (=> b!4085853 (= res!1669559 (not (isEmpty!26184 (tail!6369 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))))))))

(declare-fun b!4085854 () Bool)

(declare-fun e!2535853 () Bool)

(assert (=> b!4085854 (= e!2535853 (= (head!8635 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))) (c!704278 (regex!7076 r!4213))))))

(declare-fun d!1213231 () Bool)

(assert (=> d!1213231 e!2535850))

(declare-fun c!704341 () Bool)

(assert (=> d!1213231 (= c!704341 ((_ is EmptyExpr!11981) (regex!7076 r!4213)))))

(declare-fun lt!1461386 () Bool)

(declare-fun e!2535848 () Bool)

(assert (=> d!1213231 (= lt!1461386 e!2535848)))

(declare-fun c!704342 () Bool)

(assert (=> d!1213231 (= c!704342 (isEmpty!26184 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))))))

(assert (=> d!1213231 (validRegex!5424 (regex!7076 r!4213))))

(assert (=> d!1213231 (= (matchR!5922 (regex!7076 r!4213) (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))) lt!1461386)))

(declare-fun b!4085855 () Bool)

(declare-fun res!1669555 () Bool)

(assert (=> b!4085855 (=> (not res!1669555) (not e!2535853))))

(assert (=> b!4085855 (= res!1669555 (isEmpty!26184 (tail!6369 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315)))))))))

(declare-fun b!4085856 () Bool)

(assert (=> b!4085856 (= e!2535851 (not lt!1461386))))

(declare-fun b!4085857 () Bool)

(assert (=> b!4085857 (= e!2535849 (not (= (head!8635 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))) (c!704278 (regex!7076 r!4213)))))))

(declare-fun b!4085858 () Bool)

(declare-fun e!2535852 () Bool)

(declare-fun e!2535847 () Bool)

(assert (=> b!4085858 (= e!2535852 e!2535847)))

(declare-fun res!1669554 () Bool)

(assert (=> b!4085858 (=> (not res!1669554) (not e!2535847))))

(assert (=> b!4085858 (= res!1669554 (not lt!1461386))))

(declare-fun b!4085859 () Bool)

(assert (=> b!4085859 (= e!2535848 (nullable!4224 (regex!7076 r!4213)))))

(declare-fun b!4085860 () Bool)

(declare-fun res!1669558 () Bool)

(assert (=> b!4085860 (=> (not res!1669558) (not e!2535853))))

(declare-fun call!288814 () Bool)

(assert (=> b!4085860 (= res!1669558 (not call!288814))))

(declare-fun b!4085861 () Bool)

(assert (=> b!4085861 (= e!2535847 e!2535849)))

(declare-fun res!1669556 () Bool)

(assert (=> b!4085861 (=> res!1669556 e!2535849)))

(assert (=> b!4085861 (= res!1669556 call!288814)))

(declare-fun b!4085862 () Bool)

(declare-fun res!1669557 () Bool)

(assert (=> b!4085862 (=> res!1669557 e!2535852)))

(assert (=> b!4085862 (= res!1669557 (not ((_ is ElementMatch!11981) (regex!7076 r!4213))))))

(assert (=> b!4085862 (= e!2535851 e!2535852)))

(declare-fun b!4085863 () Bool)

(assert (=> b!4085863 (= e!2535850 (= lt!1461386 call!288814))))

(declare-fun b!4085864 () Bool)

(declare-fun res!1669552 () Bool)

(assert (=> b!4085864 (=> res!1669552 e!2535852)))

(assert (=> b!4085864 (= res!1669552 e!2535853)))

(declare-fun res!1669553 () Bool)

(assert (=> b!4085864 (=> (not res!1669553) (not e!2535853))))

(assert (=> b!4085864 (= res!1669553 lt!1461386)))

(declare-fun bm!288809 () Bool)

(assert (=> bm!288809 (= call!288814 (isEmpty!26184 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315))))))))

(declare-fun b!4085865 () Bool)

(assert (=> b!4085865 (= e!2535848 (matchR!5922 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315)))))) (tail!6369 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461315)))))))))

(assert (= (and d!1213231 c!704342) b!4085859))

(assert (= (and d!1213231 (not c!704342)) b!4085865))

(assert (= (and d!1213231 c!704341) b!4085863))

(assert (= (and d!1213231 (not c!704341)) b!4085852))

(assert (= (and b!4085852 c!704343) b!4085856))

(assert (= (and b!4085852 (not c!704343)) b!4085862))

(assert (= (and b!4085862 (not res!1669557)) b!4085864))

(assert (= (and b!4085864 res!1669553) b!4085860))

(assert (= (and b!4085860 res!1669558) b!4085855))

(assert (= (and b!4085855 res!1669555) b!4085854))

(assert (= (and b!4085864 (not res!1669552)) b!4085858))

(assert (= (and b!4085858 res!1669554) b!4085861))

(assert (= (and b!4085861 (not res!1669556)) b!4085853))

(assert (= (and b!4085853 (not res!1669559)) b!4085857))

(assert (= (or b!4085863 b!4085860 b!4085861) bm!288809))

(assert (=> b!4085859 m!4692545))

(assert (=> b!4085865 m!4692499))

(declare-fun m!4692725 () Bool)

(assert (=> b!4085865 m!4692725))

(assert (=> b!4085865 m!4692725))

(declare-fun m!4692727 () Bool)

(assert (=> b!4085865 m!4692727))

(assert (=> b!4085865 m!4692499))

(declare-fun m!4692731 () Bool)

(assert (=> b!4085865 m!4692731))

(assert (=> b!4085865 m!4692727))

(assert (=> b!4085865 m!4692731))

(declare-fun m!4692735 () Bool)

(assert (=> b!4085865 m!4692735))

(assert (=> b!4085853 m!4692499))

(assert (=> b!4085853 m!4692731))

(assert (=> b!4085853 m!4692731))

(declare-fun m!4692737 () Bool)

(assert (=> b!4085853 m!4692737))

(assert (=> b!4085855 m!4692499))

(assert (=> b!4085855 m!4692731))

(assert (=> b!4085855 m!4692731))

(assert (=> b!4085855 m!4692737))

(assert (=> b!4085854 m!4692499))

(assert (=> b!4085854 m!4692725))

(assert (=> bm!288809 m!4692499))

(declare-fun m!4692739 () Bool)

(assert (=> bm!288809 m!4692739))

(assert (=> d!1213231 m!4692499))

(assert (=> d!1213231 m!4692739))

(assert (=> d!1213231 m!4692557))

(assert (=> b!4085857 m!4692499))

(assert (=> b!4085857 m!4692725))

(assert (=> b!4085655 d!1213231))

(assert (=> b!4085655 d!1213195))

(assert (=> b!4085655 d!1213197))

(assert (=> b!4085655 d!1213203))

(declare-fun d!1213235 () Bool)

(declare-fun c!704349 () Bool)

(assert (=> d!1213235 (= c!704349 ((_ is Node!13287) (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))))))

(declare-fun e!2535867 () Bool)

(assert (=> d!1213235 (= (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))) e!2535867)))

(declare-fun b!4085888 () Bool)

(declare-fun inv!58486 (Conc!13287) Bool)

(assert (=> b!4085888 (= e!2535867 (inv!58486 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))))))

(declare-fun b!4085889 () Bool)

(declare-fun e!2535868 () Bool)

(assert (=> b!4085889 (= e!2535867 e!2535868)))

(declare-fun res!1669572 () Bool)

(assert (=> b!4085889 (= res!1669572 (not ((_ is Leaf!20540) (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))))))))

(assert (=> b!4085889 (=> res!1669572 e!2535868)))

(declare-fun b!4085890 () Bool)

(declare-fun inv!58487 (Conc!13287) Bool)

(assert (=> b!4085890 (= e!2535868 (inv!58487 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))))))

(assert (= (and d!1213235 c!704349) b!4085888))

(assert (= (and d!1213235 (not c!704349)) b!4085889))

(assert (= (and b!4085889 (not res!1669572)) b!4085890))

(declare-fun m!4692755 () Bool)

(assert (=> b!4085888 m!4692755))

(declare-fun m!4692757 () Bool)

(assert (=> b!4085890 m!4692757))

(assert (=> b!4085666 d!1213235))

(declare-fun d!1213241 () Bool)

(declare-fun isBalanced!3699 (Conc!13287) Bool)

(assert (=> d!1213241 (= (inv!58485 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))) (isBalanced!3699 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))))

(declare-fun bs!593067 () Bool)

(assert (= bs!593067 d!1213241))

(declare-fun m!4692767 () Bool)

(assert (=> bs!593067 m!4692767))

(assert (=> tb!245401 d!1213241))

(declare-fun d!1213245 () Bool)

(assert (=> d!1213245 (= (isEmpty!26184 (tail!6369 p!2988)) ((_ is Nil!43798) (tail!6369 p!2988)))))

(assert (=> b!4085708 d!1213245))

(declare-fun d!1213247 () Bool)

(assert (=> d!1213247 (= (tail!6369 p!2988) (t!338081 p!2988))))

(assert (=> b!4085708 d!1213247))

(declare-fun d!1213249 () Bool)

(assert (=> d!1213249 true))

(declare-fun lt!1461394 () Bool)

(assert (=> d!1213249 (= lt!1461394 (rulesValidInductive!2611 thiss!26199 rules!3870))))

(declare-fun lambda!127904 () Int)

(declare-fun forall!8408 (List!43923 Int) Bool)

(assert (=> d!1213249 (= lt!1461394 (forall!8408 rules!3870 lambda!127904))))

(assert (=> d!1213249 (= (rulesValid!2770 thiss!26199 rules!3870) lt!1461394)))

(declare-fun bs!593068 () Bool)

(assert (= bs!593068 d!1213249))

(assert (=> bs!593068 m!4692339))

(declare-fun m!4692769 () Bool)

(assert (=> bs!593068 m!4692769))

(assert (=> d!1213139 d!1213249))

(assert (=> b!4085706 d!1213245))

(assert (=> b!4085706 d!1213247))

(declare-fun b!4085896 () Bool)

(declare-fun e!2535875 () Bool)

(declare-fun e!2535876 () Bool)

(assert (=> b!4085896 (= e!2535875 e!2535876)))

(declare-fun c!704352 () Bool)

(assert (=> b!4085896 (= c!704352 ((_ is EmptyLang!11981) (regex!7076 r!4213)))))

(declare-fun b!4085897 () Bool)

(declare-fun res!1669582 () Bool)

(declare-fun e!2535874 () Bool)

(assert (=> b!4085897 (=> res!1669582 e!2535874)))

(assert (=> b!4085897 (= res!1669582 (not (isEmpty!26184 (tail!6369 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))))

(declare-fun b!4085900 () Bool)

(declare-fun e!2535878 () Bool)

(assert (=> b!4085900 (= e!2535878 (= (head!8635 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))) (c!704278 (regex!7076 r!4213))))))

(declare-fun d!1213251 () Bool)

(assert (=> d!1213251 e!2535875))

(declare-fun c!704350 () Bool)

(assert (=> d!1213251 (= c!704350 ((_ is EmptyExpr!11981) (regex!7076 r!4213)))))

(declare-fun lt!1461395 () Bool)

(declare-fun e!2535873 () Bool)

(assert (=> d!1213251 (= lt!1461395 e!2535873)))

(declare-fun c!704351 () Bool)

(assert (=> d!1213251 (= c!704351 (isEmpty!26184 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(assert (=> d!1213251 (validRegex!5424 (regex!7076 r!4213))))

(assert (=> d!1213251 (= (matchR!5922 (regex!7076 r!4213) (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))) lt!1461395)))

(declare-fun b!4085901 () Bool)

(declare-fun res!1669578 () Bool)

(assert (=> b!4085901 (=> (not res!1669578) (not e!2535878))))

(assert (=> b!4085901 (= res!1669578 (isEmpty!26184 (tail!6369 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411))))))))

(declare-fun b!4085902 () Bool)

(assert (=> b!4085902 (= e!2535876 (not lt!1461395))))

(declare-fun b!4085903 () Bool)

(assert (=> b!4085903 (= e!2535874 (not (= (head!8635 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))) (c!704278 (regex!7076 r!4213)))))))

(declare-fun b!4085904 () Bool)

(declare-fun e!2535877 () Bool)

(declare-fun e!2535872 () Bool)

(assert (=> b!4085904 (= e!2535877 e!2535872)))

(declare-fun res!1669577 () Bool)

(assert (=> b!4085904 (=> (not res!1669577) (not e!2535872))))

(assert (=> b!4085904 (= res!1669577 (not lt!1461395))))

(declare-fun b!4085905 () Bool)

(assert (=> b!4085905 (= e!2535873 (nullable!4224 (regex!7076 r!4213)))))

(declare-fun b!4085906 () Bool)

(declare-fun res!1669581 () Bool)

(assert (=> b!4085906 (=> (not res!1669581) (not e!2535878))))

(declare-fun call!288816 () Bool)

(assert (=> b!4085906 (= res!1669581 (not call!288816))))

(declare-fun b!4085907 () Bool)

(assert (=> b!4085907 (= e!2535872 e!2535874)))

(declare-fun res!1669579 () Bool)

(assert (=> b!4085907 (=> res!1669579 e!2535874)))

(assert (=> b!4085907 (= res!1669579 call!288816)))

(declare-fun b!4085908 () Bool)

(declare-fun res!1669580 () Bool)

(assert (=> b!4085908 (=> res!1669580 e!2535877)))

(assert (=> b!4085908 (= res!1669580 (not ((_ is ElementMatch!11981) (regex!7076 r!4213))))))

(assert (=> b!4085908 (= e!2535876 e!2535877)))

(declare-fun b!4085909 () Bool)

(assert (=> b!4085909 (= e!2535875 (= lt!1461395 call!288816))))

(declare-fun b!4085910 () Bool)

(declare-fun res!1669575 () Bool)

(assert (=> b!4085910 (=> res!1669575 e!2535877)))

(assert (=> b!4085910 (= res!1669575 e!2535878)))

(declare-fun res!1669576 () Bool)

(assert (=> b!4085910 (=> (not res!1669576) (not e!2535878))))

(assert (=> b!4085910 (= res!1669576 lt!1461395)))

(declare-fun bm!288811 () Bool)

(assert (=> bm!288811 (= call!288816 (isEmpty!26184 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(declare-fun b!4085911 () Bool)

(assert (=> b!4085911 (= e!2535873 (matchR!5922 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411))))) (tail!6369 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411))))))))

(assert (= (and d!1213251 c!704351) b!4085905))

(assert (= (and d!1213251 (not c!704351)) b!4085911))

(assert (= (and d!1213251 c!704350) b!4085909))

(assert (= (and d!1213251 (not c!704350)) b!4085896))

(assert (= (and b!4085896 c!704352) b!4085902))

(assert (= (and b!4085896 (not c!704352)) b!4085908))

(assert (= (and b!4085908 (not res!1669580)) b!4085910))

(assert (= (and b!4085910 res!1669576) b!4085906))

(assert (= (and b!4085906 res!1669581) b!4085901))

(assert (= (and b!4085901 res!1669578) b!4085900))

(assert (= (and b!4085910 (not res!1669575)) b!4085904))

(assert (= (and b!4085904 res!1669577) b!4085907))

(assert (= (and b!4085907 (not res!1669579)) b!4085897))

(assert (= (and b!4085897 (not res!1669582)) b!4085903))

(assert (= (or b!4085909 b!4085906 b!4085907) bm!288811))

(assert (=> b!4085905 m!4692545))

(declare-fun m!4692773 () Bool)

(assert (=> b!4085911 m!4692773))

(assert (=> b!4085911 m!4692773))

(declare-fun m!4692775 () Bool)

(assert (=> b!4085911 m!4692775))

(declare-fun m!4692777 () Bool)

(assert (=> b!4085911 m!4692777))

(assert (=> b!4085911 m!4692775))

(assert (=> b!4085911 m!4692777))

(declare-fun m!4692779 () Bool)

(assert (=> b!4085911 m!4692779))

(assert (=> b!4085897 m!4692777))

(assert (=> b!4085897 m!4692777))

(declare-fun m!4692781 () Bool)

(assert (=> b!4085897 m!4692781))

(assert (=> b!4085901 m!4692777))

(assert (=> b!4085901 m!4692777))

(assert (=> b!4085901 m!4692781))

(assert (=> b!4085900 m!4692773))

(assert (=> bm!288811 m!4692479))

(assert (=> d!1213251 m!4692479))

(assert (=> d!1213251 m!4692557))

(assert (=> b!4085903 m!4692773))

(assert (=> b!4085653 d!1213251))

(declare-fun bm!288838 () Bool)

(declare-fun call!288843 () Unit!63319)

(declare-fun lemmaIsPrefixSameLengthThenSameList!960 (List!43922 List!43922 List!43922) Unit!63319)

(assert (=> bm!288838 (= call!288843 (lemmaIsPrefixSameLengthThenSameList!960 input!3411 Nil!43798 input!3411))))

(declare-fun b!4086012 () Bool)

(declare-fun e!2535952 () tuple2!42740)

(assert (=> b!4086012 (= e!2535952 (tuple2!42741 Nil!43798 input!3411))))

(declare-fun bm!288839 () Bool)

(declare-fun call!288848 () List!43922)

(assert (=> bm!288839 (= call!288848 (tail!6369 input!3411))))

(declare-fun b!4086013 () Bool)

(declare-fun e!2535947 () tuple2!42740)

(assert (=> b!4086013 (= e!2535947 (tuple2!42741 Nil!43798 Nil!43798))))

(declare-fun bm!288840 () Bool)

(declare-fun call!288844 () Regex!11981)

(declare-fun call!288845 () C!24148)

(assert (=> bm!288840 (= call!288844 (derivativeStep!3625 (regex!7076 r!4213) call!288845))))

(declare-fun b!4086014 () Bool)

(declare-fun e!2535951 () tuple2!42740)

(assert (=> b!4086014 (= e!2535951 e!2535952)))

(declare-fun lt!1461483 () tuple2!42740)

(declare-fun call!288846 () tuple2!42740)

(assert (=> b!4086014 (= lt!1461483 call!288846)))

(declare-fun c!704385 () Bool)

(assert (=> b!4086014 (= c!704385 (isEmpty!26184 (_1!24504 lt!1461483)))))

(declare-fun b!4086015 () Bool)

(declare-fun c!704388 () Bool)

(declare-fun call!288849 () Bool)

(assert (=> b!4086015 (= c!704388 call!288849)))

(declare-fun lt!1461489 () Unit!63319)

(declare-fun lt!1461496 () Unit!63319)

(assert (=> b!4086015 (= lt!1461489 lt!1461496)))

(assert (=> b!4086015 (= input!3411 Nil!43798)))

(assert (=> b!4086015 (= lt!1461496 call!288843)))

(declare-fun lt!1461472 () Unit!63319)

(declare-fun lt!1461492 () Unit!63319)

(assert (=> b!4086015 (= lt!1461472 lt!1461492)))

(declare-fun call!288850 () Bool)

(assert (=> b!4086015 call!288850))

(declare-fun call!288847 () Unit!63319)

(assert (=> b!4086015 (= lt!1461492 call!288847)))

(declare-fun e!2535953 () tuple2!42740)

(assert (=> b!4086015 (= e!2535953 e!2535947)))

(declare-fun bm!288841 () Bool)

(assert (=> bm!288841 (= call!288850 (isPrefix!4129 input!3411 input!3411))))

(declare-fun b!4086016 () Bool)

(declare-fun e!2535950 () Unit!63319)

(declare-fun Unit!63321 () Unit!63319)

(assert (=> b!4086016 (= e!2535950 Unit!63321)))

(declare-fun bm!288842 () Bool)

(assert (=> bm!288842 (= call!288847 (lemmaIsPrefixRefl!2680 input!3411 input!3411))))

(declare-fun b!4086017 () Bool)

(declare-fun e!2535948 () tuple2!42740)

(assert (=> b!4086017 (= e!2535948 e!2535953)))

(declare-fun c!704383 () Bool)

(assert (=> b!4086017 (= c!704383 (= (size!32711 Nil!43798) (size!32711 input!3411)))))

(declare-fun b!4086018 () Bool)

(declare-fun Unit!63322 () Unit!63319)

(assert (=> b!4086018 (= e!2535950 Unit!63322)))

(declare-fun lt!1461495 () Unit!63319)

(assert (=> b!4086018 (= lt!1461495 call!288847)))

(assert (=> b!4086018 call!288850))

(declare-fun lt!1461491 () Unit!63319)

(assert (=> b!4086018 (= lt!1461491 lt!1461495)))

(declare-fun lt!1461479 () Unit!63319)

(assert (=> b!4086018 (= lt!1461479 call!288843)))

(assert (=> b!4086018 (= input!3411 Nil!43798)))

(declare-fun lt!1461488 () Unit!63319)

(assert (=> b!4086018 (= lt!1461488 lt!1461479)))

(assert (=> b!4086018 false))

(declare-fun b!4086020 () Bool)

(declare-fun e!2535946 () Bool)

(declare-fun e!2535949 () Bool)

(assert (=> b!4086020 (= e!2535946 e!2535949)))

(declare-fun res!1669623 () Bool)

(assert (=> b!4086020 (=> res!1669623 e!2535949)))

(declare-fun lt!1461486 () tuple2!42740)

(assert (=> b!4086020 (= res!1669623 (isEmpty!26184 (_1!24504 lt!1461486)))))

(declare-fun b!4086021 () Bool)

(assert (=> b!4086021 (= e!2535951 call!288846)))

(declare-fun bm!288843 () Bool)

(assert (=> bm!288843 (= call!288845 (head!8635 input!3411))))

(declare-fun b!4086022 () Bool)

(assert (=> b!4086022 (= e!2535949 (>= (size!32711 (_1!24504 lt!1461486)) (size!32711 Nil!43798)))))

(declare-fun b!4086023 () Bool)

(assert (=> b!4086023 (= e!2535948 (tuple2!42741 Nil!43798 input!3411))))

(declare-fun b!4086024 () Bool)

(declare-fun c!704386 () Bool)

(assert (=> b!4086024 (= c!704386 call!288849)))

(declare-fun lt!1461469 () Unit!63319)

(declare-fun lt!1461471 () Unit!63319)

(assert (=> b!4086024 (= lt!1461469 lt!1461471)))

(declare-fun lt!1461481 () C!24148)

(declare-fun lt!1461475 () List!43922)

(assert (=> b!4086024 (= (++!11482 (++!11482 Nil!43798 (Cons!43798 lt!1461481 Nil!43798)) lt!1461475) input!3411)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1266 (List!43922 C!24148 List!43922 List!43922) Unit!63319)

(assert (=> b!4086024 (= lt!1461471 (lemmaMoveElementToOtherListKeepsConcatEq!1266 Nil!43798 lt!1461481 lt!1461475 input!3411))))

(assert (=> b!4086024 (= lt!1461475 (tail!6369 input!3411))))

(assert (=> b!4086024 (= lt!1461481 (head!8635 input!3411))))

(declare-fun lt!1461480 () Unit!63319)

(declare-fun lt!1461473 () Unit!63319)

(assert (=> b!4086024 (= lt!1461480 lt!1461473)))

(declare-fun getSuffix!2495 (List!43922 List!43922) List!43922)

(assert (=> b!4086024 (isPrefix!4129 (++!11482 Nil!43798 (Cons!43798 (head!8635 (getSuffix!2495 input!3411 Nil!43798)) Nil!43798)) input!3411)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!648 (List!43922 List!43922) Unit!63319)

(assert (=> b!4086024 (= lt!1461473 (lemmaAddHeadSuffixToPrefixStillPrefix!648 Nil!43798 input!3411))))

(declare-fun lt!1461490 () Unit!63319)

(declare-fun lt!1461485 () Unit!63319)

(assert (=> b!4086024 (= lt!1461490 lt!1461485)))

(assert (=> b!4086024 (= lt!1461485 (lemmaAddHeadSuffixToPrefixStillPrefix!648 Nil!43798 input!3411))))

(declare-fun lt!1461476 () List!43922)

(assert (=> b!4086024 (= lt!1461476 (++!11482 Nil!43798 (Cons!43798 (head!8635 input!3411) Nil!43798)))))

(declare-fun lt!1461484 () Unit!63319)

(assert (=> b!4086024 (= lt!1461484 e!2535950)))

(declare-fun c!704384 () Bool)

(assert (=> b!4086024 (= c!704384 (= (size!32711 Nil!43798) (size!32711 input!3411)))))

(declare-fun lt!1461477 () Unit!63319)

(declare-fun lt!1461482 () Unit!63319)

(assert (=> b!4086024 (= lt!1461477 lt!1461482)))

(assert (=> b!4086024 (<= (size!32711 Nil!43798) (size!32711 input!3411))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!456 (List!43922 List!43922) Unit!63319)

(assert (=> b!4086024 (= lt!1461482 (lemmaIsPrefixThenSmallerEqSize!456 Nil!43798 input!3411))))

(assert (=> b!4086024 (= e!2535953 e!2535951)))

(declare-fun b!4086019 () Bool)

(assert (=> b!4086019 (= e!2535952 lt!1461483)))

(declare-fun d!1213255 () Bool)

(assert (=> d!1213255 e!2535946))

(declare-fun res!1669622 () Bool)

(assert (=> d!1213255 (=> (not res!1669622) (not e!2535946))))

(assert (=> d!1213255 (= res!1669622 (= (++!11482 (_1!24504 lt!1461486) (_2!24504 lt!1461486)) input!3411))))

(assert (=> d!1213255 (= lt!1461486 e!2535948)))

(declare-fun c!704387 () Bool)

(declare-fun lostCause!1022 (Regex!11981) Bool)

(assert (=> d!1213255 (= c!704387 (lostCause!1022 (regex!7076 r!4213)))))

(declare-fun lt!1461474 () Unit!63319)

(declare-fun Unit!63323 () Unit!63319)

(assert (=> d!1213255 (= lt!1461474 Unit!63323)))

(assert (=> d!1213255 (= (getSuffix!2495 input!3411 Nil!43798) input!3411)))

(declare-fun lt!1461487 () Unit!63319)

(declare-fun lt!1461470 () Unit!63319)

(assert (=> d!1213255 (= lt!1461487 lt!1461470)))

(declare-fun lt!1461493 () List!43922)

(assert (=> d!1213255 (= input!3411 lt!1461493)))

(declare-fun lemmaSamePrefixThenSameSuffix!2239 (List!43922 List!43922 List!43922 List!43922 List!43922) Unit!63319)

(assert (=> d!1213255 (= lt!1461470 (lemmaSamePrefixThenSameSuffix!2239 Nil!43798 input!3411 Nil!43798 lt!1461493 input!3411))))

(assert (=> d!1213255 (= lt!1461493 (getSuffix!2495 input!3411 Nil!43798))))

(declare-fun lt!1461478 () Unit!63319)

(declare-fun lt!1461494 () Unit!63319)

(assert (=> d!1213255 (= lt!1461478 lt!1461494)))

(assert (=> d!1213255 (isPrefix!4129 Nil!43798 (++!11482 Nil!43798 input!3411))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2913 (List!43922 List!43922) Unit!63319)

(assert (=> d!1213255 (= lt!1461494 (lemmaConcatTwoListThenFirstIsPrefix!2913 Nil!43798 input!3411))))

(assert (=> d!1213255 (validRegex!5424 (regex!7076 r!4213))))

(assert (=> d!1213255 (= (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)) lt!1461486)))

(declare-fun bm!288844 () Bool)

(assert (=> bm!288844 (= call!288846 (findLongestMatchInner!1448 call!288844 lt!1461476 (+ (size!32711 Nil!43798) 1) call!288848 input!3411 (size!32711 input!3411)))))

(declare-fun b!4086025 () Bool)

(assert (=> b!4086025 (= e!2535947 (tuple2!42741 Nil!43798 input!3411))))

(declare-fun bm!288845 () Bool)

(assert (=> bm!288845 (= call!288849 (nullable!4224 (regex!7076 r!4213)))))

(assert (= (and d!1213255 c!704387) b!4086023))

(assert (= (and d!1213255 (not c!704387)) b!4086017))

(assert (= (and b!4086017 c!704383) b!4086015))

(assert (= (and b!4086017 (not c!704383)) b!4086024))

(assert (= (and b!4086015 c!704388) b!4086013))

(assert (= (and b!4086015 (not c!704388)) b!4086025))

(assert (= (and b!4086024 c!704384) b!4086018))

(assert (= (and b!4086024 (not c!704384)) b!4086016))

(assert (= (and b!4086024 c!704386) b!4086014))

(assert (= (and b!4086024 (not c!704386)) b!4086021))

(assert (= (and b!4086014 c!704385) b!4086012))

(assert (= (and b!4086014 (not c!704385)) b!4086019))

(assert (= (or b!4086014 b!4086021) bm!288843))

(assert (= (or b!4086014 b!4086021) bm!288839))

(assert (= (or b!4086014 b!4086021) bm!288840))

(assert (= (or b!4086014 b!4086021) bm!288844))

(assert (= (or b!4086015 b!4086018) bm!288841))

(assert (= (or b!4086015 b!4086018) bm!288842))

(assert (= (or b!4086015 b!4086024) bm!288845))

(assert (= (or b!4086015 b!4086018) bm!288838))

(assert (= (and d!1213255 res!1669622) b!4086020))

(assert (= (and b!4086020 (not res!1669623)) b!4086022))

(declare-fun m!4692885 () Bool)

(assert (=> bm!288838 m!4692885))

(declare-fun m!4692887 () Bool)

(assert (=> b!4086014 m!4692887))

(declare-fun m!4692889 () Bool)

(assert (=> b!4086020 m!4692889))

(declare-fun m!4692891 () Bool)

(assert (=> bm!288843 m!4692891))

(declare-fun m!4692893 () Bool)

(assert (=> b!4086024 m!4692893))

(assert (=> b!4086024 m!4692893))

(declare-fun m!4692895 () Bool)

(assert (=> b!4086024 m!4692895))

(declare-fun m!4692897 () Bool)

(assert (=> b!4086024 m!4692897))

(assert (=> b!4086024 m!4692481))

(declare-fun m!4692899 () Bool)

(assert (=> b!4086024 m!4692899))

(declare-fun m!4692901 () Bool)

(assert (=> b!4086024 m!4692901))

(assert (=> b!4086024 m!4692891))

(declare-fun m!4692903 () Bool)

(assert (=> b!4086024 m!4692903))

(assert (=> b!4086024 m!4692349))

(declare-fun m!4692905 () Bool)

(assert (=> b!4086024 m!4692905))

(declare-fun m!4692907 () Bool)

(assert (=> b!4086024 m!4692907))

(assert (=> b!4086024 m!4692903))

(declare-fun m!4692909 () Bool)

(assert (=> b!4086024 m!4692909))

(assert (=> b!4086024 m!4692897))

(declare-fun m!4692911 () Bool)

(assert (=> b!4086024 m!4692911))

(declare-fun m!4692913 () Bool)

(assert (=> b!4086024 m!4692913))

(assert (=> bm!288841 m!4692335))

(assert (=> bm!288845 m!4692545))

(assert (=> bm!288839 m!4692913))

(assert (=> d!1213255 m!4692557))

(assert (=> d!1213255 m!4692897))

(declare-fun m!4692915 () Bool)

(assert (=> d!1213255 m!4692915))

(declare-fun m!4692917 () Bool)

(assert (=> d!1213255 m!4692917))

(assert (=> d!1213255 m!4692915))

(declare-fun m!4692919 () Bool)

(assert (=> d!1213255 m!4692919))

(declare-fun m!4692921 () Bool)

(assert (=> d!1213255 m!4692921))

(declare-fun m!4692923 () Bool)

(assert (=> d!1213255 m!4692923))

(declare-fun m!4692925 () Bool)

(assert (=> d!1213255 m!4692925))

(declare-fun m!4692927 () Bool)

(assert (=> b!4086022 m!4692927))

(assert (=> b!4086022 m!4692481))

(assert (=> bm!288844 m!4692349))

(declare-fun m!4692929 () Bool)

(assert (=> bm!288844 m!4692929))

(assert (=> bm!288842 m!4692337))

(declare-fun m!4692931 () Bool)

(assert (=> bm!288840 m!4692931))

(assert (=> b!4085653 d!1213255))

(declare-fun d!1213309 () Bool)

(declare-fun lt!1461497 () Int)

(assert (=> d!1213309 (>= lt!1461497 0)))

(declare-fun e!2535954 () Int)

(assert (=> d!1213309 (= lt!1461497 e!2535954)))

(declare-fun c!704389 () Bool)

(assert (=> d!1213309 (= c!704389 ((_ is Nil!43798) Nil!43798))))

(assert (=> d!1213309 (= (size!32711 Nil!43798) lt!1461497)))

(declare-fun b!4086026 () Bool)

(assert (=> b!4086026 (= e!2535954 0)))

(declare-fun b!4086027 () Bool)

(assert (=> b!4086027 (= e!2535954 (+ 1 (size!32711 (t!338081 Nil!43798))))))

(assert (= (and d!1213309 c!704389) b!4086026))

(assert (= (and d!1213309 (not c!704389)) b!4086027))

(declare-fun m!4692933 () Bool)

(assert (=> b!4086027 m!4692933))

(assert (=> b!4085653 d!1213309))

(declare-fun d!1213311 () Bool)

(declare-fun lt!1461498 () Int)

(assert (=> d!1213311 (>= lt!1461498 0)))

(declare-fun e!2535955 () Int)

(assert (=> d!1213311 (= lt!1461498 e!2535955)))

(declare-fun c!704390 () Bool)

(assert (=> d!1213311 (= c!704390 ((_ is Nil!43798) input!3411))))

(assert (=> d!1213311 (= (size!32711 input!3411) lt!1461498)))

(declare-fun b!4086028 () Bool)

(assert (=> b!4086028 (= e!2535955 0)))

(declare-fun b!4086029 () Bool)

(assert (=> b!4086029 (= e!2535955 (+ 1 (size!32711 (t!338081 input!3411))))))

(assert (= (and d!1213311 c!704390) b!4086028))

(assert (= (and d!1213311 (not c!704390)) b!4086029))

(declare-fun m!4692935 () Bool)

(assert (=> b!4086029 m!4692935))

(assert (=> b!4085653 d!1213311))

(declare-fun d!1213313 () Bool)

(assert (=> d!1213313 true))

(declare-fun order!22993 () Int)

(declare-fun lambda!127909 () Int)

(declare-fun dynLambda!18705 (Int Int) Int)

(assert (=> d!1213313 (< (dynLambda!18699 order!22985 (toValue!9656 (transformation!7076 r!4213))) (dynLambda!18705 order!22993 lambda!127909))))

(declare-fun Forall2!1110 (Int) Bool)

(assert (=> d!1213313 (= (equivClasses!2935 (toChars!9515 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 r!4213))) (Forall2!1110 lambda!127909))))

(declare-fun bs!593079 () Bool)

(assert (= bs!593079 d!1213313))

(declare-fun m!4692937 () Bool)

(assert (=> bs!593079 m!4692937))

(assert (=> b!4085727 d!1213313))

(assert (=> b!4085651 d!1213203))

(declare-fun d!1213315 () Bool)

(assert (=> d!1213315 (= (apply!10259 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315))))) (dynLambda!18698 (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315))))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315))))))))

(declare-fun b_lambda!119621 () Bool)

(assert (=> (not b_lambda!119621) (not d!1213315)))

(declare-fun tb!245457 () Bool)

(declare-fun t!338158 () Bool)

(assert (=> (and b!4085383 (= (toValue!9656 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))))) t!338158) tb!245457))

(declare-fun result!297818 () Bool)

(assert (=> tb!245457 (= result!297818 (inv!21 (dynLambda!18698 (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315))))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315)))))))))

(declare-fun m!4692939 () Bool)

(assert (=> tb!245457 m!4692939))

(assert (=> d!1213315 t!338158))

(declare-fun b_and!314593 () Bool)

(assert (= b_and!314535 (and (=> t!338158 result!297818) b_and!314593)))

(declare-fun t!338160 () Bool)

(declare-fun tb!245459 () Bool)

(assert (=> (and b!4085381 (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))))) t!338160) tb!245459))

(declare-fun result!297820 () Bool)

(assert (= result!297820 result!297818))

(assert (=> d!1213315 t!338160))

(declare-fun b_and!314595 () Bool)

(assert (= b_and!314537 (and (=> t!338160 result!297820) b_and!314595)))

(declare-fun tb!245461 () Bool)

(declare-fun t!338162 () Bool)

(assert (=> (and b!4085757 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))))) t!338162) tb!245461))

(declare-fun result!297822 () Bool)

(assert (= result!297822 result!297818))

(assert (=> d!1213315 t!338162))

(declare-fun b_and!314597 () Bool)

(assert (= b_and!314547 (and (=> t!338162 result!297822) b_and!314597)))

(assert (=> d!1213315 m!4692493))

(declare-fun m!4692941 () Bool)

(assert (=> d!1213315 m!4692941))

(assert (=> b!4085651 d!1213315))

(declare-fun d!1213317 () Bool)

(assert (=> d!1213317 (= (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315)))) (fromListB!2422 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461315)))))))

(declare-fun bs!593080 () Bool)

(assert (= bs!593080 d!1213317))

(declare-fun m!4692943 () Bool)

(assert (=> bs!593080 m!4692943))

(assert (=> b!4085651 d!1213317))

(declare-fun d!1213319 () Bool)

(declare-fun c!704391 () Bool)

(assert (=> d!1213319 (= c!704391 ((_ is Node!13287) (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))))

(declare-fun e!2535959 () Bool)

(assert (=> d!1213319 (= (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))) e!2535959)))

(declare-fun b!4086034 () Bool)

(assert (=> b!4086034 (= e!2535959 (inv!58486 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))))

(declare-fun b!4086035 () Bool)

(declare-fun e!2535960 () Bool)

(assert (=> b!4086035 (= e!2535959 e!2535960)))

(declare-fun res!1669626 () Bool)

(assert (=> b!4086035 (= res!1669626 (not ((_ is Leaf!20540) (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))))))))

(assert (=> b!4086035 (=> res!1669626 e!2535960)))

(declare-fun b!4086036 () Bool)

(assert (=> b!4086036 (= e!2535960 (inv!58487 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))))

(assert (= (and d!1213319 c!704391) b!4086034))

(assert (= (and d!1213319 (not c!704391)) b!4086035))

(assert (= (and b!4086035 (not res!1669626)) b!4086036))

(declare-fun m!4692945 () Bool)

(assert (=> b!4086034 m!4692945))

(declare-fun m!4692947 () Bool)

(assert (=> b!4086036 m!4692947))

(assert (=> b!4085568 d!1213319))

(declare-fun d!1213321 () Bool)

(declare-fun lt!1461499 () Int)

(assert (=> d!1213321 (>= lt!1461499 0)))

(declare-fun e!2535961 () Int)

(assert (=> d!1213321 (= lt!1461499 e!2535961)))

(declare-fun c!704392 () Bool)

(assert (=> d!1213321 (= c!704392 ((_ is Nil!43798) lt!1461331))))

(assert (=> d!1213321 (= (size!32711 lt!1461331) lt!1461499)))

(declare-fun b!4086037 () Bool)

(assert (=> b!4086037 (= e!2535961 0)))

(declare-fun b!4086038 () Bool)

(assert (=> b!4086038 (= e!2535961 (+ 1 (size!32711 (t!338081 lt!1461331))))))

(assert (= (and d!1213321 c!704392) b!4086037))

(assert (= (and d!1213321 (not c!704392)) b!4086038))

(declare-fun m!4692949 () Bool)

(assert (=> b!4086038 m!4692949))

(assert (=> b!4085738 d!1213321))

(assert (=> b!4085738 d!1213089))

(declare-fun d!1213323 () Bool)

(declare-fun lt!1461500 () Int)

(assert (=> d!1213323 (>= lt!1461500 0)))

(declare-fun e!2535962 () Int)

(assert (=> d!1213323 (= lt!1461500 e!2535962)))

(declare-fun c!704393 () Bool)

(assert (=> d!1213323 (= c!704393 ((_ is Nil!43798) suffix!1518))))

(assert (=> d!1213323 (= (size!32711 suffix!1518) lt!1461500)))

(declare-fun b!4086039 () Bool)

(assert (=> b!4086039 (= e!2535962 0)))

(declare-fun b!4086040 () Bool)

(assert (=> b!4086040 (= e!2535962 (+ 1 (size!32711 (t!338081 suffix!1518))))))

(assert (= (and d!1213323 c!704393) b!4086039))

(assert (= (and d!1213323 (not c!704393)) b!4086040))

(declare-fun m!4692951 () Bool)

(assert (=> b!4086040 m!4692951))

(assert (=> b!4085738 d!1213323))

(declare-fun bs!593081 () Bool)

(declare-fun d!1213325 () Bool)

(assert (= bs!593081 (and d!1213325 d!1213313)))

(declare-fun lambda!127910 () Int)

(assert (=> bs!593081 (= (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213))) (= lambda!127910 lambda!127909))))

(assert (=> d!1213325 true))

(assert (=> d!1213325 (< (dynLambda!18699 order!22985 (toValue!9656 (transformation!7076 (h!49219 rules!3870)))) (dynLambda!18705 order!22993 lambda!127910))))

(assert (=> d!1213325 (= (equivClasses!2935 (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 (h!49219 rules!3870)))) (Forall2!1110 lambda!127910))))

(declare-fun bs!593082 () Bool)

(assert (= bs!593082 d!1213325))

(declare-fun m!4692953 () Bool)

(assert (=> bs!593082 m!4692953))

(assert (=> b!4085740 d!1213325))

(declare-fun d!1213327 () Bool)

(assert (=> d!1213327 (= (inv!58477 (tag!7936 (h!49219 (t!338082 rules!3870)))) (= (mod (str.len (value!222317 (tag!7936 (h!49219 (t!338082 rules!3870))))) 2) 0))))

(assert (=> b!4085756 d!1213327))

(declare-fun d!1213329 () Bool)

(declare-fun res!1669627 () Bool)

(declare-fun e!2535963 () Bool)

(assert (=> d!1213329 (=> (not res!1669627) (not e!2535963))))

(assert (=> d!1213329 (= res!1669627 (semiInverseModEq!3036 (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870))))))))

(assert (=> d!1213329 (= (inv!58480 (transformation!7076 (h!49219 (t!338082 rules!3870)))) e!2535963)))

(declare-fun b!4086041 () Bool)

(assert (=> b!4086041 (= e!2535963 (equivClasses!2935 (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870))))))))

(assert (= (and d!1213329 res!1669627) b!4086041))

(declare-fun m!4692955 () Bool)

(assert (=> d!1213329 m!4692955))

(declare-fun m!4692957 () Bool)

(assert (=> b!4086041 m!4692957))

(assert (=> b!4085756 d!1213329))

(declare-fun d!1213331 () Bool)

(declare-fun lt!1461515 () Int)

(assert (=> d!1213331 (>= lt!1461515 0)))

(declare-fun e!2535964 () Int)

(assert (=> d!1213331 (= lt!1461515 e!2535964)))

(declare-fun c!704394 () Bool)

(assert (=> d!1213331 (= c!704394 ((_ is Nil!43798) (originalCharacters!7670 lt!1461225)))))

(assert (=> d!1213331 (= (size!32711 (originalCharacters!7670 lt!1461225)) lt!1461515)))

(declare-fun b!4086044 () Bool)

(assert (=> b!4086044 (= e!2535964 0)))

(declare-fun b!4086045 () Bool)

(assert (=> b!4086045 (= e!2535964 (+ 1 (size!32711 (t!338081 (originalCharacters!7670 lt!1461225)))))))

(assert (= (and d!1213331 c!704394) b!4086044))

(assert (= (and d!1213331 (not c!704394)) b!4086045))

(declare-fun m!4692959 () Bool)

(assert (=> b!4086045 m!4692959))

(assert (=> b!4085665 d!1213331))

(declare-fun d!1213333 () Bool)

(assert (=> d!1213333 (= (isEmpty!26184 (originalCharacters!7670 lt!1461225)) ((_ is Nil!43798) (originalCharacters!7670 lt!1461225)))))

(assert (=> d!1213127 d!1213333))

(assert (=> bm!288807 d!1213137))

(declare-fun b!4086052 () Bool)

(declare-fun e!2535972 () Bool)

(declare-fun e!2535973 () Bool)

(assert (=> b!4086052 (= e!2535972 e!2535973)))

(declare-fun c!704401 () Bool)

(assert (=> b!4086052 (= c!704401 ((_ is EmptyLang!11981) (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))))))

(declare-fun b!4086053 () Bool)

(declare-fun res!1669635 () Bool)

(declare-fun e!2535971 () Bool)

(assert (=> b!4086053 (=> res!1669635 e!2535971)))

(assert (=> b!4086053 (= res!1669635 (not (isEmpty!26184 (tail!6369 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))))))))

(declare-fun b!4086054 () Bool)

(declare-fun e!2535975 () Bool)

(assert (=> b!4086054 (= e!2535975 (= (head!8635 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))) (c!704278 (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))))))

(declare-fun d!1213335 () Bool)

(assert (=> d!1213335 e!2535972))

(declare-fun c!704399 () Bool)

(assert (=> d!1213335 (= c!704399 ((_ is EmptyExpr!11981) (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))))))

(declare-fun lt!1461520 () Bool)

(declare-fun e!2535970 () Bool)

(assert (=> d!1213335 (= lt!1461520 e!2535970)))

(declare-fun c!704400 () Bool)

(assert (=> d!1213335 (= c!704400 (isEmpty!26184 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))))))

(assert (=> d!1213335 (validRegex!5424 (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))))

(assert (=> d!1213335 (= (matchR!5922 (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))) (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))) lt!1461520)))

(declare-fun b!4086055 () Bool)

(declare-fun res!1669631 () Bool)

(assert (=> b!4086055 (=> (not res!1669631) (not e!2535975))))

(assert (=> b!4086055 (= res!1669631 (isEmpty!26184 (tail!6369 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263)))))))))

(declare-fun b!4086056 () Bool)

(assert (=> b!4086056 (= e!2535973 (not lt!1461520))))

(declare-fun b!4086057 () Bool)

(assert (=> b!4086057 (= e!2535971 (not (= (head!8635 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))) (c!704278 (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))))))))

(declare-fun b!4086058 () Bool)

(declare-fun e!2535974 () Bool)

(declare-fun e!2535968 () Bool)

(assert (=> b!4086058 (= e!2535974 e!2535968)))

(declare-fun res!1669630 () Bool)

(assert (=> b!4086058 (=> (not res!1669630) (not e!2535968))))

(assert (=> b!4086058 (= res!1669630 (not lt!1461520))))

(declare-fun b!4086059 () Bool)

(assert (=> b!4086059 (= e!2535970 (nullable!4224 (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))))))

(declare-fun b!4086060 () Bool)

(declare-fun res!1669634 () Bool)

(assert (=> b!4086060 (=> (not res!1669634) (not e!2535975))))

(declare-fun call!288851 () Bool)

(assert (=> b!4086060 (= res!1669634 (not call!288851))))

(declare-fun b!4086061 () Bool)

(assert (=> b!4086061 (= e!2535968 e!2535971)))

(declare-fun res!1669632 () Bool)

(assert (=> b!4086061 (=> res!1669632 e!2535971)))

(assert (=> b!4086061 (= res!1669632 call!288851)))

(declare-fun b!4086062 () Bool)

(declare-fun res!1669633 () Bool)

(assert (=> b!4086062 (=> res!1669633 e!2535974)))

(assert (=> b!4086062 (= res!1669633 (not ((_ is ElementMatch!11981) (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))))))

(assert (=> b!4086062 (= e!2535973 e!2535974)))

(declare-fun b!4086063 () Bool)

(assert (=> b!4086063 (= e!2535972 (= lt!1461520 call!288851))))

(declare-fun b!4086064 () Bool)

(declare-fun res!1669628 () Bool)

(assert (=> b!4086064 (=> res!1669628 e!2535974)))

(assert (=> b!4086064 (= res!1669628 e!2535975)))

(declare-fun res!1669629 () Bool)

(assert (=> b!4086064 (=> (not res!1669629) (not e!2535975))))

(assert (=> b!4086064 (= res!1669629 lt!1461520)))

(declare-fun bm!288846 () Bool)

(assert (=> bm!288846 (= call!288851 (isEmpty!26184 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263))))))))

(declare-fun b!4086065 () Bool)

(assert (=> b!4086065 (= e!2535970 (matchR!5922 (derivativeStep!3625 (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))) (head!8635 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263)))))) (tail!6369 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461263)))))))))

(assert (= (and d!1213335 c!704400) b!4086059))

(assert (= (and d!1213335 (not c!704400)) b!4086065))

(assert (= (and d!1213335 c!704399) b!4086063))

(assert (= (and d!1213335 (not c!704399)) b!4086052))

(assert (= (and b!4086052 c!704401) b!4086056))

(assert (= (and b!4086052 (not c!704401)) b!4086062))

(assert (= (and b!4086062 (not res!1669633)) b!4086064))

(assert (= (and b!4086064 res!1669629) b!4086060))

(assert (= (and b!4086060 res!1669634) b!4086055))

(assert (= (and b!4086055 res!1669631) b!4086054))

(assert (= (and b!4086064 (not res!1669628)) b!4086058))

(assert (= (and b!4086058 res!1669630) b!4086061))

(assert (= (and b!4086061 (not res!1669632)) b!4086053))

(assert (= (and b!4086053 (not res!1669635)) b!4086057))

(assert (= (or b!4086063 b!4086060 b!4086061) bm!288846))

(declare-fun m!4692961 () Bool)

(assert (=> b!4086059 m!4692961))

(assert (=> b!4086065 m!4692321))

(declare-fun m!4692963 () Bool)

(assert (=> b!4086065 m!4692963))

(assert (=> b!4086065 m!4692963))

(declare-fun m!4692965 () Bool)

(assert (=> b!4086065 m!4692965))

(assert (=> b!4086065 m!4692321))

(declare-fun m!4692967 () Bool)

(assert (=> b!4086065 m!4692967))

(assert (=> b!4086065 m!4692965))

(assert (=> b!4086065 m!4692967))

(declare-fun m!4692969 () Bool)

(assert (=> b!4086065 m!4692969))

(assert (=> b!4086053 m!4692321))

(assert (=> b!4086053 m!4692967))

(assert (=> b!4086053 m!4692967))

(declare-fun m!4692971 () Bool)

(assert (=> b!4086053 m!4692971))

(assert (=> b!4086055 m!4692321))

(assert (=> b!4086055 m!4692967))

(assert (=> b!4086055 m!4692967))

(assert (=> b!4086055 m!4692971))

(assert (=> b!4086054 m!4692321))

(assert (=> b!4086054 m!4692963))

(assert (=> bm!288846 m!4692321))

(declare-fun m!4692973 () Bool)

(assert (=> bm!288846 m!4692973))

(assert (=> d!1213335 m!4692321))

(assert (=> d!1213335 m!4692973))

(declare-fun m!4692975 () Bool)

(assert (=> d!1213335 m!4692975))

(assert (=> b!4086057 m!4692321))

(assert (=> b!4086057 m!4692963))

(assert (=> b!4085501 d!1213335))

(assert (=> b!4085501 d!1213211))

(assert (=> b!4085501 d!1213207))

(assert (=> b!4085501 d!1213209))

(declare-fun b!4086082 () Bool)

(declare-fun res!1669638 () Bool)

(declare-fun e!2535986 () Bool)

(assert (=> b!4086082 (=> (not res!1669638) (not e!2535986))))

(declare-fun lt!1461563 () Option!9482)

(assert (=> b!4086082 (= res!1669638 (< (size!32711 (_2!24502 (get!14364 lt!1461563))) (size!32711 input!3411)))))

(declare-fun b!4086083 () Bool)

(declare-fun res!1669640 () Bool)

(assert (=> b!4086083 (=> (not res!1669640) (not e!2535986))))

(assert (=> b!4086083 (= res!1669640 (= (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461563)))) (originalCharacters!7670 (_1!24502 (get!14364 lt!1461563)))))))

(declare-fun b!4086084 () Bool)

(declare-fun e!2535985 () Bool)

(assert (=> b!4086084 (= e!2535985 e!2535986)))

(declare-fun res!1669642 () Bool)

(assert (=> b!4086084 (=> (not res!1669642) (not e!2535986))))

(assert (=> b!4086084 (= res!1669642 (isDefined!7178 lt!1461563))))

(declare-fun b!4086085 () Bool)

(declare-fun res!1669641 () Bool)

(assert (=> b!4086085 (=> (not res!1669641) (not e!2535986))))

(assert (=> b!4086085 (= res!1669641 (= (++!11482 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461563)))) (_2!24502 (get!14364 lt!1461563))) input!3411))))

(declare-fun b!4086086 () Bool)

(declare-fun res!1669639 () Bool)

(assert (=> b!4086086 (=> (not res!1669639) (not e!2535986))))

(assert (=> b!4086086 (= res!1669639 (= (value!222318 (_1!24502 (get!14364 lt!1461563))) (apply!10259 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461563)))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461563)))))))))

(declare-fun b!4086087 () Bool)

(declare-fun e!2535984 () Option!9482)

(declare-fun lt!1461561 () Option!9482)

(declare-fun lt!1461559 () Option!9482)

(assert (=> b!4086087 (= e!2535984 (ite (and ((_ is None!9481) lt!1461561) ((_ is None!9481) lt!1461559)) None!9481 (ite ((_ is None!9481) lt!1461559) lt!1461561 (ite ((_ is None!9481) lt!1461561) lt!1461559 (ite (>= (size!32710 (_1!24502 (v!39955 lt!1461561))) (size!32710 (_1!24502 (v!39955 lt!1461559)))) lt!1461561 lt!1461559)))))))

(declare-fun call!288852 () Option!9482)

(assert (=> b!4086087 (= lt!1461561 call!288852)))

(assert (=> b!4086087 (= lt!1461559 (maxPrefix!3955 thiss!26199 (t!338082 (t!338082 rules!3870)) input!3411))))

(declare-fun b!4086088 () Bool)

(assert (=> b!4086088 (= e!2535986 (contains!8751 (t!338082 rules!3870) (rule!10204 (_1!24502 (get!14364 lt!1461563)))))))

(declare-fun bm!288847 () Bool)

(assert (=> bm!288847 (= call!288852 (maxPrefixOneRule!2941 thiss!26199 (h!49219 (t!338082 rules!3870)) input!3411))))

(declare-fun b!4086090 () Bool)

(assert (=> b!4086090 (= e!2535984 call!288852)))

(declare-fun d!1213337 () Bool)

(assert (=> d!1213337 e!2535985))

(declare-fun res!1669637 () Bool)

(assert (=> d!1213337 (=> res!1669637 e!2535985)))

(assert (=> d!1213337 (= res!1669637 (isEmpty!26187 lt!1461563))))

(assert (=> d!1213337 (= lt!1461563 e!2535984)))

(declare-fun c!704410 () Bool)

(assert (=> d!1213337 (= c!704410 (and ((_ is Cons!43799) (t!338082 rules!3870)) ((_ is Nil!43799) (t!338082 (t!338082 rules!3870)))))))

(declare-fun lt!1461562 () Unit!63319)

(declare-fun lt!1461560 () Unit!63319)

(assert (=> d!1213337 (= lt!1461562 lt!1461560)))

(assert (=> d!1213337 (isPrefix!4129 input!3411 input!3411)))

(assert (=> d!1213337 (= lt!1461560 (lemmaIsPrefixRefl!2680 input!3411 input!3411))))

(assert (=> d!1213337 (rulesValidInductive!2611 thiss!26199 (t!338082 rules!3870))))

(assert (=> d!1213337 (= (maxPrefix!3955 thiss!26199 (t!338082 rules!3870) input!3411) lt!1461563)))

(declare-fun b!4086089 () Bool)

(declare-fun res!1669636 () Bool)

(assert (=> b!4086089 (=> (not res!1669636) (not e!2535986))))

(assert (=> b!4086089 (= res!1669636 (matchR!5922 (regex!7076 (rule!10204 (_1!24502 (get!14364 lt!1461563)))) (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461563))))))))

(assert (= (and d!1213337 c!704410) b!4086090))

(assert (= (and d!1213337 (not c!704410)) b!4086087))

(assert (= (or b!4086090 b!4086087) bm!288847))

(assert (= (and d!1213337 (not res!1669637)) b!4086084))

(assert (= (and b!4086084 res!1669642) b!4086083))

(assert (= (and b!4086083 res!1669640) b!4086082))

(assert (= (and b!4086082 res!1669638) b!4086085))

(assert (= (and b!4086085 res!1669641) b!4086086))

(assert (= (and b!4086086 res!1669639) b!4086089))

(assert (= (and b!4086089 res!1669636) b!4086088))

(declare-fun m!4692977 () Bool)

(assert (=> b!4086089 m!4692977))

(declare-fun m!4692979 () Bool)

(assert (=> b!4086089 m!4692979))

(assert (=> b!4086089 m!4692979))

(declare-fun m!4692981 () Bool)

(assert (=> b!4086089 m!4692981))

(assert (=> b!4086089 m!4692981))

(declare-fun m!4692983 () Bool)

(assert (=> b!4086089 m!4692983))

(assert (=> b!4086086 m!4692977))

(declare-fun m!4692985 () Bool)

(assert (=> b!4086086 m!4692985))

(assert (=> b!4086086 m!4692985))

(declare-fun m!4692987 () Bool)

(assert (=> b!4086086 m!4692987))

(declare-fun m!4692989 () Bool)

(assert (=> b!4086084 m!4692989))

(declare-fun m!4692991 () Bool)

(assert (=> d!1213337 m!4692991))

(assert (=> d!1213337 m!4692335))

(assert (=> d!1213337 m!4692337))

(declare-fun m!4692993 () Bool)

(assert (=> d!1213337 m!4692993))

(assert (=> b!4086088 m!4692977))

(declare-fun m!4692995 () Bool)

(assert (=> b!4086088 m!4692995))

(assert (=> b!4086083 m!4692977))

(assert (=> b!4086083 m!4692979))

(assert (=> b!4086083 m!4692979))

(assert (=> b!4086083 m!4692981))

(declare-fun m!4692997 () Bool)

(assert (=> bm!288847 m!4692997))

(declare-fun m!4692999 () Bool)

(assert (=> b!4086087 m!4692999))

(assert (=> b!4086082 m!4692977))

(declare-fun m!4693001 () Bool)

(assert (=> b!4086082 m!4693001))

(assert (=> b!4086082 m!4692349))

(assert (=> b!4086085 m!4692977))

(assert (=> b!4086085 m!4692979))

(assert (=> b!4086085 m!4692979))

(assert (=> b!4086085 m!4692981))

(assert (=> b!4086085 m!4692981))

(declare-fun m!4693003 () Bool)

(assert (=> b!4086085 m!4693003))

(assert (=> b!4085499 d!1213337))

(declare-fun bs!593083 () Bool)

(declare-fun d!1213339 () Bool)

(assert (= bs!593083 (and d!1213339 d!1213249)))

(declare-fun lambda!127911 () Int)

(assert (=> bs!593083 (= lambda!127911 lambda!127904)))

(assert (=> d!1213339 true))

(declare-fun lt!1461564 () Bool)

(assert (=> d!1213339 (= lt!1461564 (rulesValidInductive!2611 thiss!26199 (t!338082 rules!3870)))))

(assert (=> d!1213339 (= lt!1461564 (forall!8408 (t!338082 rules!3870) lambda!127911))))

(assert (=> d!1213339 (= (rulesValid!2770 thiss!26199 (t!338082 rules!3870)) lt!1461564)))

(declare-fun bs!593084 () Bool)

(assert (= bs!593084 d!1213339))

(assert (=> bs!593084 m!4692993))

(declare-fun m!4693005 () Bool)

(assert (=> bs!593084 m!4693005))

(assert (=> d!1213131 d!1213339))

(declare-fun b!4086113 () Bool)

(declare-fun e!2536006 () Bool)

(declare-fun e!2536008 () Bool)

(assert (=> b!4086113 (= e!2536006 e!2536008)))

(declare-fun c!704415 () Bool)

(assert (=> b!4086113 (= c!704415 ((_ is Union!11981) (regex!7076 r!4213)))))

(declare-fun call!288875 () Bool)

(declare-fun c!704416 () Bool)

(declare-fun bm!288870 () Bool)

(assert (=> bm!288870 (= call!288875 (validRegex!5424 (ite c!704416 (reg!12310 (regex!7076 r!4213)) (ite c!704415 (regTwo!24475 (regex!7076 r!4213)) (regTwo!24474 (regex!7076 r!4213))))))))

(declare-fun b!4086114 () Bool)

(declare-fun res!1669659 () Bool)

(declare-fun e!2536010 () Bool)

(assert (=> b!4086114 (=> (not res!1669659) (not e!2536010))))

(declare-fun call!288876 () Bool)

(assert (=> b!4086114 (= res!1669659 call!288876)))

(assert (=> b!4086114 (= e!2536008 e!2536010)))

(declare-fun b!4086115 () Bool)

(declare-fun call!288877 () Bool)

(assert (=> b!4086115 (= e!2536010 call!288877)))

(declare-fun d!1213341 () Bool)

(declare-fun res!1669661 () Bool)

(declare-fun e!2536007 () Bool)

(assert (=> d!1213341 (=> res!1669661 e!2536007)))

(assert (=> d!1213341 (= res!1669661 ((_ is ElementMatch!11981) (regex!7076 r!4213)))))

(assert (=> d!1213341 (= (validRegex!5424 (regex!7076 r!4213)) e!2536007)))

(declare-fun b!4086116 () Bool)

(declare-fun e!2536011 () Bool)

(assert (=> b!4086116 (= e!2536011 call!288877)))

(declare-fun bm!288871 () Bool)

(assert (=> bm!288871 (= call!288877 call!288875)))

(declare-fun b!4086117 () Bool)

(declare-fun res!1669658 () Bool)

(declare-fun e!2536009 () Bool)

(assert (=> b!4086117 (=> res!1669658 e!2536009)))

(assert (=> b!4086117 (= res!1669658 (not ((_ is Concat!19288) (regex!7076 r!4213))))))

(assert (=> b!4086117 (= e!2536008 e!2536009)))

(declare-fun b!4086118 () Bool)

(declare-fun e!2536005 () Bool)

(assert (=> b!4086118 (= e!2536005 call!288875)))

(declare-fun bm!288872 () Bool)

(assert (=> bm!288872 (= call!288876 (validRegex!5424 (ite c!704415 (regOne!24475 (regex!7076 r!4213)) (regOne!24474 (regex!7076 r!4213)))))))

(declare-fun b!4086119 () Bool)

(assert (=> b!4086119 (= e!2536009 e!2536011)))

(declare-fun res!1669660 () Bool)

(assert (=> b!4086119 (=> (not res!1669660) (not e!2536011))))

(assert (=> b!4086119 (= res!1669660 call!288876)))

(declare-fun b!4086120 () Bool)

(assert (=> b!4086120 (= e!2536006 e!2536005)))

(declare-fun res!1669657 () Bool)

(assert (=> b!4086120 (= res!1669657 (not (nullable!4224 (reg!12310 (regex!7076 r!4213)))))))

(assert (=> b!4086120 (=> (not res!1669657) (not e!2536005))))

(declare-fun b!4086121 () Bool)

(assert (=> b!4086121 (= e!2536007 e!2536006)))

(assert (=> b!4086121 (= c!704416 ((_ is Star!11981) (regex!7076 r!4213)))))

(assert (= (and d!1213341 (not res!1669661)) b!4086121))

(assert (= (and b!4086121 c!704416) b!4086120))

(assert (= (and b!4086121 (not c!704416)) b!4086113))

(assert (= (and b!4086120 res!1669657) b!4086118))

(assert (= (and b!4086113 c!704415) b!4086114))

(assert (= (and b!4086113 (not c!704415)) b!4086117))

(assert (= (and b!4086114 res!1669659) b!4086115))

(assert (= (and b!4086117 (not res!1669658)) b!4086119))

(assert (= (and b!4086119 res!1669660) b!4086116))

(assert (= (or b!4086115 b!4086116) bm!288871))

(assert (= (or b!4086114 b!4086119) bm!288872))

(assert (= (or b!4086118 bm!288871) bm!288870))

(declare-fun m!4693007 () Bool)

(assert (=> bm!288870 m!4693007))

(declare-fun m!4693009 () Bool)

(assert (=> bm!288872 m!4693009))

(declare-fun m!4693011 () Bool)

(assert (=> b!4086120 m!4693011))

(assert (=> d!1213143 d!1213341))

(declare-fun d!1213343 () Bool)

(declare-fun lt!1461565 () Bool)

(assert (=> d!1213343 (= lt!1461565 (select (content!6734 (t!338082 rules!3870)) r!4213))))

(declare-fun e!2536012 () Bool)

(assert (=> d!1213343 (= lt!1461565 e!2536012)))

(declare-fun res!1669662 () Bool)

(assert (=> d!1213343 (=> (not res!1669662) (not e!2536012))))

(assert (=> d!1213343 (= res!1669662 ((_ is Cons!43799) (t!338082 rules!3870)))))

(assert (=> d!1213343 (= (contains!8751 (t!338082 rules!3870) r!4213) lt!1461565)))

(declare-fun b!4086122 () Bool)

(declare-fun e!2536013 () Bool)

(assert (=> b!4086122 (= e!2536012 e!2536013)))

(declare-fun res!1669663 () Bool)

(assert (=> b!4086122 (=> res!1669663 e!2536013)))

(assert (=> b!4086122 (= res!1669663 (= (h!49219 (t!338082 rules!3870)) r!4213))))

(declare-fun b!4086123 () Bool)

(assert (=> b!4086123 (= e!2536013 (contains!8751 (t!338082 (t!338082 rules!3870)) r!4213))))

(assert (= (and d!1213343 res!1669662) b!4086122))

(assert (= (and b!4086122 (not res!1669663)) b!4086123))

(declare-fun m!4693013 () Bool)

(assert (=> d!1213343 m!4693013))

(declare-fun m!4693015 () Bool)

(assert (=> d!1213343 m!4693015))

(declare-fun m!4693017 () Bool)

(assert (=> b!4086123 m!4693017))

(assert (=> b!4085675 d!1213343))

(declare-fun d!1213345 () Bool)

(assert (=> d!1213345 (= (isDefined!7178 lt!1461263) (not (isEmpty!26187 lt!1461263)))))

(declare-fun bs!593085 () Bool)

(assert (= bs!593085 d!1213345))

(assert (=> bs!593085 m!4692331))

(assert (=> b!4085496 d!1213345))

(assert (=> b!4085658 d!1213203))

(declare-fun d!1213347 () Bool)

(assert (=> d!1213347 (= (isEmpty!26187 lt!1461315) (not ((_ is Some!9481) lt!1461315)))))

(assert (=> d!1213115 d!1213347))

(declare-fun d!1213349 () Bool)

(assert (=> d!1213349 (= (isEmpty!26184 (_1!24504 lt!1461313)) ((_ is Nil!43798) (_1!24504 lt!1461313)))))

(assert (=> d!1213115 d!1213349))

(declare-fun d!1213351 () Bool)

(declare-fun lt!1461616 () tuple2!42740)

(assert (=> d!1213351 (= (++!11482 (_1!24504 lt!1461616) (_2!24504 lt!1461616)) input!3411)))

(declare-fun sizeTr!286 (List!43922 Int) Int)

(assert (=> d!1213351 (= lt!1461616 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 0 input!3411 input!3411 (sizeTr!286 input!3411 0)))))

(declare-fun lt!1461612 () Unit!63319)

(declare-fun lt!1461611 () Unit!63319)

(assert (=> d!1213351 (= lt!1461612 lt!1461611)))

(declare-fun lt!1461618 () List!43922)

(declare-fun lt!1461613 () Int)

(assert (=> d!1213351 (= (sizeTr!286 lt!1461618 lt!1461613) (+ (size!32711 lt!1461618) lt!1461613))))

(declare-fun lemmaSizeTrEqualsSize!285 (List!43922 Int) Unit!63319)

(assert (=> d!1213351 (= lt!1461611 (lemmaSizeTrEqualsSize!285 lt!1461618 lt!1461613))))

(assert (=> d!1213351 (= lt!1461613 0)))

(assert (=> d!1213351 (= lt!1461618 Nil!43798)))

(declare-fun lt!1461614 () Unit!63319)

(declare-fun lt!1461615 () Unit!63319)

(assert (=> d!1213351 (= lt!1461614 lt!1461615)))

(declare-fun lt!1461617 () Int)

(assert (=> d!1213351 (= (sizeTr!286 input!3411 lt!1461617) (+ (size!32711 input!3411) lt!1461617))))

(assert (=> d!1213351 (= lt!1461615 (lemmaSizeTrEqualsSize!285 input!3411 lt!1461617))))

(assert (=> d!1213351 (= lt!1461617 0)))

(assert (=> d!1213351 (validRegex!5424 (regex!7076 r!4213))))

(assert (=> d!1213351 (= (findLongestMatch!1361 (regex!7076 r!4213) input!3411) lt!1461616)))

(declare-fun bs!593087 () Bool)

(assert (= bs!593087 d!1213351))

(assert (=> bs!593087 m!4692349))

(declare-fun m!4693067 () Bool)

(assert (=> bs!593087 m!4693067))

(assert (=> bs!593087 m!4692557))

(declare-fun m!4693069 () Bool)

(assert (=> bs!593087 m!4693069))

(declare-fun m!4693071 () Bool)

(assert (=> bs!593087 m!4693071))

(declare-fun m!4693073 () Bool)

(assert (=> bs!593087 m!4693073))

(declare-fun m!4693075 () Bool)

(assert (=> bs!593087 m!4693075))

(declare-fun m!4693077 () Bool)

(assert (=> bs!593087 m!4693077))

(declare-fun m!4693079 () Bool)

(assert (=> bs!593087 m!4693079))

(declare-fun m!4693081 () Bool)

(assert (=> bs!593087 m!4693081))

(assert (=> bs!593087 m!4693075))

(assert (=> d!1213115 d!1213351))

(assert (=> d!1213115 d!1213143))

(declare-fun d!1213361 () Bool)

(declare-fun res!1669673 () Bool)

(declare-fun e!2536030 () Bool)

(assert (=> d!1213361 (=> res!1669673 e!2536030)))

(assert (=> d!1213361 (= res!1669673 ((_ is Nil!43799) (t!338082 rules!3870)))))

(assert (=> d!1213361 (= (noDuplicateTag!2771 thiss!26199 (t!338082 rules!3870) Nil!43801) e!2536030)))

(declare-fun b!4086147 () Bool)

(declare-fun e!2536031 () Bool)

(assert (=> b!4086147 (= e!2536030 e!2536031)))

(declare-fun res!1669674 () Bool)

(assert (=> b!4086147 (=> (not res!1669674) (not e!2536031))))

(declare-fun contains!8753 (List!43925 String!50280) Bool)

(assert (=> b!4086147 (= res!1669674 (not (contains!8753 Nil!43801 (tag!7936 (h!49219 (t!338082 rules!3870))))))))

(declare-fun b!4086148 () Bool)

(assert (=> b!4086148 (= e!2536031 (noDuplicateTag!2771 thiss!26199 (t!338082 (t!338082 rules!3870)) (Cons!43801 (tag!7936 (h!49219 (t!338082 rules!3870))) Nil!43801)))))

(assert (= (and d!1213361 (not res!1669673)) b!4086147))

(assert (= (and b!4086147 res!1669674) b!4086148))

(declare-fun m!4693085 () Bool)

(assert (=> b!4086147 m!4693085))

(declare-fun m!4693087 () Bool)

(assert (=> b!4086148 m!4693087))

(assert (=> b!4085669 d!1213361))

(declare-fun d!1213365 () Bool)

(declare-fun lt!1461624 () Int)

(assert (=> d!1213365 (= lt!1461624 (size!32711 (list!16266 (seqFromList!5293 (_1!24504 lt!1461313)))))))

(declare-fun size!32715 (Conc!13287) Int)

(assert (=> d!1213365 (= lt!1461624 (size!32715 (c!704279 (seqFromList!5293 (_1!24504 lt!1461313)))))))

(assert (=> d!1213365 (= (size!32713 (seqFromList!5293 (_1!24504 lt!1461313))) lt!1461624)))

(declare-fun bs!593088 () Bool)

(assert (= bs!593088 d!1213365))

(assert (=> bs!593088 m!4692473))

(declare-fun m!4693089 () Bool)

(assert (=> bs!593088 m!4693089))

(assert (=> bs!593088 m!4693089))

(declare-fun m!4693091 () Bool)

(assert (=> bs!593088 m!4693091))

(declare-fun m!4693093 () Bool)

(assert (=> bs!593088 m!4693093))

(assert (=> b!4085656 d!1213365))

(declare-fun d!1213367 () Bool)

(assert (=> d!1213367 (= (apply!10259 (transformation!7076 r!4213) (seqFromList!5293 (_1!24504 lt!1461313))) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) (seqFromList!5293 (_1!24504 lt!1461313))))))

(declare-fun b_lambda!119623 () Bool)

(assert (=> (not b_lambda!119623) (not d!1213367)))

(declare-fun t!338164 () Bool)

(declare-fun tb!245463 () Bool)

(assert (=> (and b!4085383 (= (toValue!9656 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 r!4213))) t!338164) tb!245463))

(declare-fun result!297824 () Bool)

(assert (=> tb!245463 (= result!297824 (inv!21 (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) (seqFromList!5293 (_1!24504 lt!1461313)))))))

(declare-fun m!4693095 () Bool)

(assert (=> tb!245463 m!4693095))

(assert (=> d!1213367 t!338164))

(declare-fun b_and!314599 () Bool)

(assert (= b_and!314593 (and (=> t!338164 result!297824) b_and!314599)))

(declare-fun t!338166 () Bool)

(declare-fun tb!245465 () Bool)

(assert (=> (and b!4085381 (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213))) t!338166) tb!245465))

(declare-fun result!297826 () Bool)

(assert (= result!297826 result!297824))

(assert (=> d!1213367 t!338166))

(declare-fun b_and!314601 () Bool)

(assert (= b_and!314595 (and (=> t!338166 result!297826) b_and!314601)))

(declare-fun tb!245467 () Bool)

(declare-fun t!338168 () Bool)

(assert (=> (and b!4085757 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 r!4213))) t!338168) tb!245467))

(declare-fun result!297828 () Bool)

(assert (= result!297828 result!297824))

(assert (=> d!1213367 t!338168))

(declare-fun b_and!314603 () Bool)

(assert (= b_and!314597 (and (=> t!338168 result!297828) b_and!314603)))

(assert (=> d!1213367 m!4692473))

(declare-fun m!4693097 () Bool)

(assert (=> d!1213367 m!4693097))

(assert (=> b!4085656 d!1213367))

(declare-fun d!1213369 () Bool)

(assert (=> d!1213369 (= (isEmpty!26184 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))) ((_ is Nil!43798) (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(assert (=> b!4085656 d!1213369))

(assert (=> b!4085656 d!1213311))

(assert (=> b!4085656 d!1213309))

(declare-fun d!1213371 () Bool)

(declare-fun e!2536050 () Bool)

(assert (=> d!1213371 e!2536050))

(declare-fun res!1669691 () Bool)

(assert (=> d!1213371 (=> res!1669691 e!2536050)))

(assert (=> d!1213371 (= res!1669691 (isEmpty!26184 (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(declare-fun lt!1461632 () Unit!63319)

(declare-fun choose!24947 (Regex!11981 List!43922) Unit!63319)

(assert (=> d!1213371 (= lt!1461632 (choose!24947 (regex!7076 r!4213) input!3411))))

(assert (=> d!1213371 (validRegex!5424 (regex!7076 r!4213))))

(assert (=> d!1213371 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1421 (regex!7076 r!4213) input!3411) lt!1461632)))

(declare-fun b!4086179 () Bool)

(assert (=> b!4086179 (= e!2536050 (matchR!5922 (regex!7076 r!4213) (_1!24504 (findLongestMatchInner!1448 (regex!7076 r!4213) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(assert (= (and d!1213371 (not res!1669691)) b!4086179))

(assert (=> d!1213371 m!4692481))

(assert (=> d!1213371 m!4692479))

(assert (=> d!1213371 m!4692481))

(assert (=> d!1213371 m!4692349))

(assert (=> d!1213371 m!4692485))

(assert (=> d!1213371 m!4692349))

(assert (=> d!1213371 m!4692557))

(declare-fun m!4693145 () Bool)

(assert (=> d!1213371 m!4693145))

(assert (=> b!4086179 m!4692481))

(assert (=> b!4086179 m!4692349))

(assert (=> b!4086179 m!4692481))

(assert (=> b!4086179 m!4692349))

(assert (=> b!4086179 m!4692485))

(assert (=> b!4086179 m!4692505))

(assert (=> b!4085656 d!1213371))

(declare-fun d!1213393 () Bool)

(assert (=> d!1213393 (= (seqFromList!5293 (_1!24504 lt!1461313)) (fromListB!2422 (_1!24504 lt!1461313)))))

(declare-fun bs!593097 () Bool)

(assert (= bs!593097 d!1213393))

(declare-fun m!4693147 () Bool)

(assert (=> bs!593097 m!4693147))

(assert (=> b!4085656 d!1213393))

(assert (=> b!4085656 d!1213255))

(declare-fun bs!593098 () Bool)

(declare-fun d!1213395 () Bool)

(assert (= bs!593098 (and d!1213395 d!1213097)))

(declare-fun lambda!127916 () Int)

(assert (=> bs!593098 (= lambda!127916 lambda!127893)))

(declare-fun b!4086180 () Bool)

(declare-fun e!2536051 () Bool)

(assert (=> b!4086180 (= e!2536051 true)))

(assert (=> d!1213395 e!2536051))

(assert (= d!1213395 b!4086180))

(assert (=> b!4086180 (< (dynLambda!18699 order!22985 (toValue!9656 (transformation!7076 r!4213))) (dynLambda!18700 order!22987 lambda!127916))))

(assert (=> b!4086180 (< (dynLambda!18701 order!22989 (toChars!9515 (transformation!7076 r!4213))) (dynLambda!18700 order!22987 lambda!127916))))

(assert (=> d!1213395 (= (list!16266 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) (seqFromList!5293 (_1!24504 lt!1461313))))) (list!16266 (seqFromList!5293 (_1!24504 lt!1461313))))))

(declare-fun lt!1461633 () Unit!63319)

(assert (=> d!1213395 (= lt!1461633 (ForallOf!875 lambda!127916 (seqFromList!5293 (_1!24504 lt!1461313))))))

(assert (=> d!1213395 (= (lemmaSemiInverse!2043 (transformation!7076 r!4213) (seqFromList!5293 (_1!24504 lt!1461313))) lt!1461633)))

(declare-fun b_lambda!119627 () Bool)

(assert (=> (not b_lambda!119627) (not d!1213395)))

(declare-fun t!338176 () Bool)

(declare-fun tb!245475 () Bool)

(assert (=> (and b!4085383 (= (toChars!9515 (transformation!7076 r!4213)) (toChars!9515 (transformation!7076 r!4213))) t!338176) tb!245475))

(declare-fun e!2536052 () Bool)

(declare-fun b!4086181 () Bool)

(declare-fun tp!1237104 () Bool)

(assert (=> b!4086181 (= e!2536052 (and (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) (seqFromList!5293 (_1!24504 lt!1461313)))))) tp!1237104))))

(declare-fun result!297836 () Bool)

(assert (=> tb!245475 (= result!297836 (and (inv!58485 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) (seqFromList!5293 (_1!24504 lt!1461313))))) e!2536052))))

(assert (= tb!245475 b!4086181))

(declare-fun m!4693149 () Bool)

(assert (=> b!4086181 m!4693149))

(declare-fun m!4693151 () Bool)

(assert (=> tb!245475 m!4693151))

(assert (=> d!1213395 t!338176))

(declare-fun b_and!314611 () Bool)

(assert (= b_and!314557 (and (=> t!338176 result!297836) b_and!314611)))

(declare-fun tb!245477 () Bool)

(declare-fun t!338178 () Bool)

(assert (=> (and b!4085381 (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 r!4213))) t!338178) tb!245477))

(declare-fun result!297838 () Bool)

(assert (= result!297838 result!297836))

(assert (=> d!1213395 t!338178))

(declare-fun b_and!314613 () Bool)

(assert (= b_and!314559 (and (=> t!338178 result!297838) b_and!314613)))

(declare-fun t!338180 () Bool)

(declare-fun tb!245479 () Bool)

(assert (=> (and b!4085757 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toChars!9515 (transformation!7076 r!4213))) t!338180) tb!245479))

(declare-fun result!297840 () Bool)

(assert (= result!297840 result!297836))

(assert (=> d!1213395 t!338180))

(declare-fun b_and!314615 () Bool)

(assert (= b_and!314561 (and (=> t!338180 result!297840) b_and!314615)))

(declare-fun b_lambda!119629 () Bool)

(assert (=> (not b_lambda!119629) (not d!1213395)))

(assert (=> d!1213395 t!338164))

(declare-fun b_and!314617 () Bool)

(assert (= b_and!314599 (and (=> t!338164 result!297824) b_and!314617)))

(assert (=> d!1213395 t!338166))

(declare-fun b_and!314619 () Bool)

(assert (= b_and!314601 (and (=> t!338166 result!297826) b_and!314619)))

(assert (=> d!1213395 t!338168))

(declare-fun b_and!314621 () Bool)

(assert (= b_and!314603 (and (=> t!338168 result!297828) b_and!314621)))

(assert (=> d!1213395 m!4693097))

(declare-fun m!4693153 () Bool)

(assert (=> d!1213395 m!4693153))

(assert (=> d!1213395 m!4692473))

(assert (=> d!1213395 m!4693097))

(assert (=> d!1213395 m!4692473))

(assert (=> d!1213395 m!4693089))

(assert (=> d!1213395 m!4692473))

(declare-fun m!4693155 () Bool)

(assert (=> d!1213395 m!4693155))

(assert (=> d!1213395 m!4693153))

(declare-fun m!4693157 () Bool)

(assert (=> d!1213395 m!4693157))

(assert (=> b!4085656 d!1213395))

(assert (=> b!4085723 d!1213217))

(declare-fun d!1213397 () Bool)

(declare-fun lt!1461636 () Int)

(assert (=> d!1213397 (>= lt!1461636 0)))

(declare-fun e!2536055 () Int)

(assert (=> d!1213397 (= lt!1461636 e!2536055)))

(declare-fun c!704431 () Bool)

(assert (=> d!1213397 (= c!704431 ((_ is Nil!43798) (_2!24502 (get!14364 lt!1461263))))))

(assert (=> d!1213397 (= (size!32711 (_2!24502 (get!14364 lt!1461263))) lt!1461636)))

(declare-fun b!4086186 () Bool)

(assert (=> b!4086186 (= e!2536055 0)))

(declare-fun b!4086187 () Bool)

(assert (=> b!4086187 (= e!2536055 (+ 1 (size!32711 (t!338081 (_2!24502 (get!14364 lt!1461263))))))))

(assert (= (and d!1213397 c!704431) b!4086186))

(assert (= (and d!1213397 (not c!704431)) b!4086187))

(declare-fun m!4693159 () Bool)

(assert (=> b!4086187 m!4693159))

(assert (=> b!4085494 d!1213397))

(assert (=> b!4085494 d!1213211))

(assert (=> b!4085494 d!1213311))

(declare-fun d!1213399 () Bool)

(declare-fun res!1669692 () Bool)

(declare-fun e!2536064 () Bool)

(assert (=> d!1213399 (=> res!1669692 e!2536064)))

(assert (=> d!1213399 (= res!1669692 ((_ is Nil!43799) rules!3870))))

(assert (=> d!1213399 (= (noDuplicateTag!2771 thiss!26199 rules!3870 Nil!43801) e!2536064)))

(declare-fun b!4086204 () Bool)

(declare-fun e!2536065 () Bool)

(assert (=> b!4086204 (= e!2536064 e!2536065)))

(declare-fun res!1669693 () Bool)

(assert (=> b!4086204 (=> (not res!1669693) (not e!2536065))))

(assert (=> b!4086204 (= res!1669693 (not (contains!8753 Nil!43801 (tag!7936 (h!49219 rules!3870)))))))

(declare-fun b!4086205 () Bool)

(assert (=> b!4086205 (= e!2536065 (noDuplicateTag!2771 thiss!26199 (t!338082 rules!3870) (Cons!43801 (tag!7936 (h!49219 rules!3870)) Nil!43801)))))

(assert (= (and d!1213399 (not res!1669692)) b!4086204))

(assert (= (and b!4086204 res!1669693) b!4086205))

(declare-fun m!4693161 () Bool)

(assert (=> b!4086204 m!4693161))

(declare-fun m!4693163 () Bool)

(assert (=> b!4086205 m!4693163))

(assert (=> b!4085676 d!1213399))

(declare-fun d!1213401 () Bool)

(declare-fun c!704442 () Bool)

(assert (=> d!1213401 (= c!704442 ((_ is Nil!43799) rules!3870))))

(declare-fun e!2536068 () (InoxSet Rule!13952))

(assert (=> d!1213401 (= (content!6734 rules!3870) e!2536068)))

(declare-fun b!4086210 () Bool)

(assert (=> b!4086210 (= e!2536068 ((as const (Array Rule!13952 Bool)) false))))

(declare-fun b!4086211 () Bool)

(assert (=> b!4086211 (= e!2536068 ((_ map or) (store ((as const (Array Rule!13952 Bool)) false) (h!49219 rules!3870) true) (content!6734 (t!338082 rules!3870))))))

(assert (= (and d!1213401 c!704442) b!4086210))

(assert (= (and d!1213401 (not c!704442)) b!4086211))

(declare-fun m!4693165 () Bool)

(assert (=> b!4086211 m!4693165))

(assert (=> b!4086211 m!4693013))

(assert (=> d!1213135 d!1213401))

(assert (=> b!4085707 d!1213227))

(declare-fun d!1213403 () Bool)

(declare-fun lt!1461637 () Int)

(assert (=> d!1213403 (>= lt!1461637 0)))

(declare-fun e!2536069 () Int)

(assert (=> d!1213403 (= lt!1461637 e!2536069)))

(declare-fun c!704443 () Bool)

(assert (=> d!1213403 (= c!704443 ((_ is Nil!43798) (_2!24502 (get!14364 lt!1461315))))))

(assert (=> d!1213403 (= (size!32711 (_2!24502 (get!14364 lt!1461315))) lt!1461637)))

(declare-fun b!4086212 () Bool)

(assert (=> b!4086212 (= e!2536069 0)))

(declare-fun b!4086213 () Bool)

(assert (=> b!4086213 (= e!2536069 (+ 1 (size!32711 (t!338081 (_2!24502 (get!14364 lt!1461315))))))))

(assert (= (and d!1213403 c!704443) b!4086212))

(assert (= (and d!1213403 (not c!704443)) b!4086213))

(declare-fun m!4693167 () Bool)

(assert (=> b!4086213 m!4693167))

(assert (=> b!4085652 d!1213403))

(assert (=> b!4085652 d!1213203))

(assert (=> b!4085652 d!1213311))

(declare-fun d!1213405 () Bool)

(assert (=> d!1213405 (= (inv!58485 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))) (isBalanced!3699 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))))))

(declare-fun bs!593099 () Bool)

(assert (= bs!593099 d!1213405))

(declare-fun m!4693169 () Bool)

(assert (=> bs!593099 m!4693169))

(assert (=> tb!245411 d!1213405))

(declare-fun d!1213407 () Bool)

(declare-fun e!2536071 () Bool)

(assert (=> d!1213407 e!2536071))

(declare-fun res!1669694 () Bool)

(assert (=> d!1213407 (=> (not res!1669694) (not e!2536071))))

(declare-fun lt!1461638 () List!43922)

(assert (=> d!1213407 (= res!1669694 (= (content!6735 lt!1461638) ((_ map or) (content!6735 (t!338081 p!2988)) (content!6735 suffix!1518))))))

(declare-fun e!2536070 () List!43922)

(assert (=> d!1213407 (= lt!1461638 e!2536070)))

(declare-fun c!704444 () Bool)

(assert (=> d!1213407 (= c!704444 ((_ is Nil!43798) (t!338081 p!2988)))))

(assert (=> d!1213407 (= (++!11482 (t!338081 p!2988) suffix!1518) lt!1461638)))

(declare-fun b!4086217 () Bool)

(assert (=> b!4086217 (= e!2536071 (or (not (= suffix!1518 Nil!43798)) (= lt!1461638 (t!338081 p!2988))))))

(declare-fun b!4086214 () Bool)

(assert (=> b!4086214 (= e!2536070 suffix!1518)))

(declare-fun b!4086215 () Bool)

(assert (=> b!4086215 (= e!2536070 (Cons!43798 (h!49218 (t!338081 p!2988)) (++!11482 (t!338081 (t!338081 p!2988)) suffix!1518)))))

(declare-fun b!4086216 () Bool)

(declare-fun res!1669695 () Bool)

(assert (=> b!4086216 (=> (not res!1669695) (not e!2536071))))

(assert (=> b!4086216 (= res!1669695 (= (size!32711 lt!1461638) (+ (size!32711 (t!338081 p!2988)) (size!32711 suffix!1518))))))

(assert (= (and d!1213407 c!704444) b!4086214))

(assert (= (and d!1213407 (not c!704444)) b!4086215))

(assert (= (and d!1213407 res!1669694) b!4086216))

(assert (= (and b!4086216 res!1669695) b!4086217))

(declare-fun m!4693171 () Bool)

(assert (=> d!1213407 m!4693171))

(declare-fun m!4693173 () Bool)

(assert (=> d!1213407 m!4693173))

(assert (=> d!1213407 m!4692569))

(declare-fun m!4693175 () Bool)

(assert (=> b!4086215 m!4693175))

(declare-fun m!4693177 () Bool)

(assert (=> b!4086216 m!4693177))

(assert (=> b!4086216 m!4692359))

(assert (=> b!4086216 m!4692575))

(assert (=> b!4085737 d!1213407))

(declare-fun d!1213409 () Bool)

(declare-fun e!2536079 () Bool)

(assert (=> d!1213409 e!2536079))

(declare-fun res!1669698 () Bool)

(assert (=> d!1213409 (=> (not res!1669698) (not e!2536079))))

(declare-fun lt!1461642 () BalanceConc!26168)

(assert (=> d!1213409 (= res!1669698 (= (list!16266 lt!1461642) p!2988))))

(declare-fun fromList!879 (List!43922) Conc!13287)

(assert (=> d!1213409 (= lt!1461642 (BalanceConc!26169 (fromList!879 p!2988)))))

(assert (=> d!1213409 (= (fromListB!2422 p!2988) lt!1461642)))

(declare-fun b!4086230 () Bool)

(assert (=> b!4086230 (= e!2536079 (isBalanced!3699 (fromList!879 p!2988)))))

(assert (= (and d!1213409 res!1669698) b!4086230))

(declare-fun m!4693187 () Bool)

(assert (=> d!1213409 m!4693187))

(declare-fun m!4693189 () Bool)

(assert (=> d!1213409 m!4693189))

(assert (=> b!4086230 m!4693189))

(assert (=> b!4086230 m!4693189))

(declare-fun m!4693191 () Bool)

(assert (=> b!4086230 m!4693191))

(assert (=> d!1213095 d!1213409))

(declare-fun d!1213413 () Bool)

(assert (=> d!1213413 (= (isEmpty!26187 lt!1461263) (not ((_ is Some!9481) lt!1461263)))))

(assert (=> d!1213075 d!1213413))

(declare-fun b!4086268 () Bool)

(declare-fun res!1669719 () Bool)

(declare-fun e!2536100 () Bool)

(assert (=> b!4086268 (=> (not res!1669719) (not e!2536100))))

(assert (=> b!4086268 (= res!1669719 (= (head!8635 input!3411) (head!8635 input!3411)))))

(declare-fun b!4086270 () Bool)

(declare-fun e!2536101 () Bool)

(assert (=> b!4086270 (= e!2536101 (>= (size!32711 input!3411) (size!32711 input!3411)))))

(declare-fun b!4086267 () Bool)

(declare-fun e!2536102 () Bool)

(assert (=> b!4086267 (= e!2536102 e!2536100)))

(declare-fun res!1669717 () Bool)

(assert (=> b!4086267 (=> (not res!1669717) (not e!2536100))))

(assert (=> b!4086267 (= res!1669717 (not ((_ is Nil!43798) input!3411)))))

(declare-fun d!1213415 () Bool)

(assert (=> d!1213415 e!2536101))

(declare-fun res!1669718 () Bool)

(assert (=> d!1213415 (=> res!1669718 e!2536101)))

(declare-fun lt!1461647 () Bool)

(assert (=> d!1213415 (= res!1669718 (not lt!1461647))))

(assert (=> d!1213415 (= lt!1461647 e!2536102)))

(declare-fun res!1669720 () Bool)

(assert (=> d!1213415 (=> res!1669720 e!2536102)))

(assert (=> d!1213415 (= res!1669720 ((_ is Nil!43798) input!3411))))

(assert (=> d!1213415 (= (isPrefix!4129 input!3411 input!3411) lt!1461647)))

(declare-fun b!4086269 () Bool)

(assert (=> b!4086269 (= e!2536100 (isPrefix!4129 (tail!6369 input!3411) (tail!6369 input!3411)))))

(assert (= (and d!1213415 (not res!1669720)) b!4086267))

(assert (= (and b!4086267 res!1669717) b!4086268))

(assert (= (and b!4086268 res!1669719) b!4086269))

(assert (= (and d!1213415 (not res!1669718)) b!4086270))

(assert (=> b!4086268 m!4692891))

(assert (=> b!4086268 m!4692891))

(assert (=> b!4086270 m!4692349))

(assert (=> b!4086270 m!4692349))

(assert (=> b!4086269 m!4692913))

(assert (=> b!4086269 m!4692913))

(assert (=> b!4086269 m!4692913))

(assert (=> b!4086269 m!4692913))

(declare-fun m!4693217 () Bool)

(assert (=> b!4086269 m!4693217))

(assert (=> d!1213075 d!1213415))

(declare-fun d!1213427 () Bool)

(assert (=> d!1213427 (isPrefix!4129 input!3411 input!3411)))

(declare-fun lt!1461650 () Unit!63319)

(declare-fun choose!24949 (List!43922 List!43922) Unit!63319)

(assert (=> d!1213427 (= lt!1461650 (choose!24949 input!3411 input!3411))))

(assert (=> d!1213427 (= (lemmaIsPrefixRefl!2680 input!3411 input!3411) lt!1461650)))

(declare-fun bs!593103 () Bool)

(assert (= bs!593103 d!1213427))

(assert (=> bs!593103 m!4692335))

(declare-fun m!4693231 () Bool)

(assert (=> bs!593103 m!4693231))

(assert (=> d!1213075 d!1213427))

(declare-fun bs!593104 () Bool)

(declare-fun d!1213433 () Bool)

(assert (= bs!593104 (and d!1213433 d!1213249)))

(declare-fun lambda!127920 () Int)

(assert (=> bs!593104 (= lambda!127920 lambda!127904)))

(declare-fun bs!593105 () Bool)

(assert (= bs!593105 (and d!1213433 d!1213339)))

(assert (=> bs!593105 (= lambda!127920 lambda!127911)))

(assert (=> d!1213433 true))

(declare-fun lt!1461658 () Bool)

(assert (=> d!1213433 (= lt!1461658 (forall!8408 rules!3870 lambda!127920))))

(declare-fun e!2536111 () Bool)

(assert (=> d!1213433 (= lt!1461658 e!2536111)))

(declare-fun res!1669733 () Bool)

(assert (=> d!1213433 (=> res!1669733 e!2536111)))

(assert (=> d!1213433 (= res!1669733 (not ((_ is Cons!43799) rules!3870)))))

(assert (=> d!1213433 (= (rulesValidInductive!2611 thiss!26199 rules!3870) lt!1461658)))

(declare-fun b!4086284 () Bool)

(declare-fun e!2536112 () Bool)

(assert (=> b!4086284 (= e!2536111 e!2536112)))

(declare-fun res!1669732 () Bool)

(assert (=> b!4086284 (=> (not res!1669732) (not e!2536112))))

(assert (=> b!4086284 (= res!1669732 (ruleValid!2996 thiss!26199 (h!49219 rules!3870)))))

(declare-fun b!4086285 () Bool)

(assert (=> b!4086285 (= e!2536112 (rulesValidInductive!2611 thiss!26199 (t!338082 rules!3870)))))

(assert (= (and d!1213433 (not res!1669733)) b!4086284))

(assert (= (and b!4086284 res!1669732) b!4086285))

(declare-fun m!4693273 () Bool)

(assert (=> d!1213433 m!4693273))

(declare-fun m!4693275 () Bool)

(assert (=> b!4086284 m!4693275))

(assert (=> b!4086285 m!4692993))

(assert (=> d!1213075 d!1213433))

(declare-fun bs!593111 () Bool)

(declare-fun d!1213437 () Bool)

(assert (= bs!593111 (and d!1213437 d!1213097)))

(declare-fun lambda!127924 () Int)

(assert (=> bs!593111 (= (and (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 r!4213))) (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213)))) (= lambda!127924 lambda!127893))))

(declare-fun bs!593112 () Bool)

(assert (= bs!593112 (and d!1213437 d!1213395)))

(assert (=> bs!593112 (= (and (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 r!4213))) (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213)))) (= lambda!127924 lambda!127916))))

(assert (=> d!1213437 true))

(assert (=> d!1213437 (< (dynLambda!18701 order!22989 (toChars!9515 (transformation!7076 (h!49219 rules!3870)))) (dynLambda!18700 order!22987 lambda!127924))))

(assert (=> d!1213437 true))

(assert (=> d!1213437 (< (dynLambda!18699 order!22985 (toValue!9656 (transformation!7076 (h!49219 rules!3870)))) (dynLambda!18700 order!22987 lambda!127924))))

(assert (=> d!1213437 (= (semiInverseModEq!3036 (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 (h!49219 rules!3870)))) (Forall!1510 lambda!127924))))

(declare-fun bs!593113 () Bool)

(assert (= bs!593113 d!1213437))

(declare-fun m!4693285 () Bool)

(assert (=> bs!593113 m!4693285))

(assert (=> d!1213155 d!1213437))

(declare-fun d!1213443 () Bool)

(declare-fun lt!1461659 () Int)

(assert (=> d!1213443 (>= lt!1461659 0)))

(declare-fun e!2536126 () Int)

(assert (=> d!1213443 (= lt!1461659 e!2536126)))

(declare-fun c!704461 () Bool)

(assert (=> d!1213443 (= c!704461 ((_ is Nil!43798) (t!338081 p!2988)))))

(assert (=> d!1213443 (= (size!32711 (t!338081 p!2988)) lt!1461659)))

(declare-fun b!4086328 () Bool)

(assert (=> b!4086328 (= e!2536126 0)))

(declare-fun b!4086329 () Bool)

(assert (=> b!4086329 (= e!2536126 (+ 1 (size!32711 (t!338081 (t!338081 p!2988)))))))

(assert (= (and d!1213443 c!704461) b!4086328))

(assert (= (and d!1213443 (not c!704461)) b!4086329))

(declare-fun m!4693287 () Bool)

(assert (=> b!4086329 m!4693287))

(assert (=> b!4085525 d!1213443))

(declare-fun b!4086334 () Bool)

(declare-fun e!2536132 () Bool)

(declare-fun e!2536133 () Bool)

(assert (=> b!4086334 (= e!2536132 e!2536133)))

(declare-fun c!704464 () Bool)

(assert (=> b!4086334 (= c!704464 ((_ is EmptyLang!11981) (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988))))))

(declare-fun b!4086335 () Bool)

(declare-fun res!1669741 () Bool)

(declare-fun e!2536131 () Bool)

(assert (=> b!4086335 (=> res!1669741 e!2536131)))

(assert (=> b!4086335 (= res!1669741 (not (isEmpty!26184 (tail!6369 (tail!6369 p!2988)))))))

(declare-fun b!4086336 () Bool)

(declare-fun e!2536135 () Bool)

(assert (=> b!4086336 (= e!2536135 (= (head!8635 (tail!6369 p!2988)) (c!704278 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988)))))))

(declare-fun d!1213445 () Bool)

(assert (=> d!1213445 e!2536132))

(declare-fun c!704462 () Bool)

(assert (=> d!1213445 (= c!704462 ((_ is EmptyExpr!11981) (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988))))))

(declare-fun lt!1461660 () Bool)

(declare-fun e!2536130 () Bool)

(assert (=> d!1213445 (= lt!1461660 e!2536130)))

(declare-fun c!704463 () Bool)

(assert (=> d!1213445 (= c!704463 (isEmpty!26184 (tail!6369 p!2988)))))

(assert (=> d!1213445 (validRegex!5424 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988)))))

(assert (=> d!1213445 (= (matchR!5922 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988)) (tail!6369 p!2988)) lt!1461660)))

(declare-fun b!4086337 () Bool)

(declare-fun res!1669737 () Bool)

(assert (=> b!4086337 (=> (not res!1669737) (not e!2536135))))

(assert (=> b!4086337 (= res!1669737 (isEmpty!26184 (tail!6369 (tail!6369 p!2988))))))

(declare-fun b!4086338 () Bool)

(assert (=> b!4086338 (= e!2536133 (not lt!1461660))))

(declare-fun b!4086339 () Bool)

(assert (=> b!4086339 (= e!2536131 (not (= (head!8635 (tail!6369 p!2988)) (c!704278 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988))))))))

(declare-fun b!4086340 () Bool)

(declare-fun e!2536134 () Bool)

(declare-fun e!2536129 () Bool)

(assert (=> b!4086340 (= e!2536134 e!2536129)))

(declare-fun res!1669736 () Bool)

(assert (=> b!4086340 (=> (not res!1669736) (not e!2536129))))

(assert (=> b!4086340 (= res!1669736 (not lt!1461660))))

(declare-fun b!4086341 () Bool)

(assert (=> b!4086341 (= e!2536130 (nullable!4224 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988))))))

(declare-fun b!4086342 () Bool)

(declare-fun res!1669740 () Bool)

(assert (=> b!4086342 (=> (not res!1669740) (not e!2536135))))

(declare-fun call!288900 () Bool)

(assert (=> b!4086342 (= res!1669740 (not call!288900))))

(declare-fun b!4086343 () Bool)

(assert (=> b!4086343 (= e!2536129 e!2536131)))

(declare-fun res!1669738 () Bool)

(assert (=> b!4086343 (=> res!1669738 e!2536131)))

(assert (=> b!4086343 (= res!1669738 call!288900)))

(declare-fun b!4086344 () Bool)

(declare-fun res!1669739 () Bool)

(assert (=> b!4086344 (=> res!1669739 e!2536134)))

(assert (=> b!4086344 (= res!1669739 (not ((_ is ElementMatch!11981) (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988)))))))

(assert (=> b!4086344 (= e!2536133 e!2536134)))

(declare-fun b!4086345 () Bool)

(assert (=> b!4086345 (= e!2536132 (= lt!1461660 call!288900))))

(declare-fun b!4086346 () Bool)

(declare-fun res!1669734 () Bool)

(assert (=> b!4086346 (=> res!1669734 e!2536134)))

(assert (=> b!4086346 (= res!1669734 e!2536135)))

(declare-fun res!1669735 () Bool)

(assert (=> b!4086346 (=> (not res!1669735) (not e!2536135))))

(assert (=> b!4086346 (= res!1669735 lt!1461660)))

(declare-fun bm!288895 () Bool)

(assert (=> bm!288895 (= call!288900 (isEmpty!26184 (tail!6369 p!2988)))))

(declare-fun b!4086347 () Bool)

(assert (=> b!4086347 (= e!2536130 (matchR!5922 (derivativeStep!3625 (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988)) (head!8635 (tail!6369 p!2988))) (tail!6369 (tail!6369 p!2988))))))

(assert (= (and d!1213445 c!704463) b!4086341))

(assert (= (and d!1213445 (not c!704463)) b!4086347))

(assert (= (and d!1213445 c!704462) b!4086345))

(assert (= (and d!1213445 (not c!704462)) b!4086334))

(assert (= (and b!4086334 c!704464) b!4086338))

(assert (= (and b!4086334 (not c!704464)) b!4086344))

(assert (= (and b!4086344 (not res!1669739)) b!4086346))

(assert (= (and b!4086346 res!1669735) b!4086342))

(assert (= (and b!4086342 res!1669740) b!4086337))

(assert (= (and b!4086337 res!1669737) b!4086336))

(assert (= (and b!4086346 (not res!1669734)) b!4086340))

(assert (= (and b!4086340 res!1669736) b!4086343))

(assert (= (and b!4086343 (not res!1669738)) b!4086335))

(assert (= (and b!4086335 (not res!1669741)) b!4086339))

(assert (= (or b!4086345 b!4086342 b!4086343) bm!288895))

(assert (=> b!4086341 m!4692549))

(declare-fun m!4693289 () Bool)

(assert (=> b!4086341 m!4693289))

(assert (=> b!4086347 m!4692551))

(declare-fun m!4693291 () Bool)

(assert (=> b!4086347 m!4693291))

(assert (=> b!4086347 m!4692549))

(assert (=> b!4086347 m!4693291))

(declare-fun m!4693293 () Bool)

(assert (=> b!4086347 m!4693293))

(assert (=> b!4086347 m!4692551))

(declare-fun m!4693295 () Bool)

(assert (=> b!4086347 m!4693295))

(assert (=> b!4086347 m!4693293))

(assert (=> b!4086347 m!4693295))

(declare-fun m!4693297 () Bool)

(assert (=> b!4086347 m!4693297))

(assert (=> b!4086335 m!4692551))

(assert (=> b!4086335 m!4693295))

(assert (=> b!4086335 m!4693295))

(declare-fun m!4693299 () Bool)

(assert (=> b!4086335 m!4693299))

(assert (=> b!4086337 m!4692551))

(assert (=> b!4086337 m!4693295))

(assert (=> b!4086337 m!4693295))

(assert (=> b!4086337 m!4693299))

(assert (=> b!4086336 m!4692551))

(assert (=> b!4086336 m!4693291))

(assert (=> bm!288895 m!4692551))

(assert (=> bm!288895 m!4692555))

(assert (=> d!1213445 m!4692551))

(assert (=> d!1213445 m!4692555))

(assert (=> d!1213445 m!4692549))

(declare-fun m!4693307 () Bool)

(assert (=> d!1213445 m!4693307))

(assert (=> b!4086339 m!4692551))

(assert (=> b!4086339 m!4693291))

(assert (=> b!4085718 d!1213445))

(declare-fun call!288912 () Regex!11981)

(declare-fun call!288911 () Regex!11981)

(declare-fun b!4086390 () Bool)

(declare-fun e!2536161 () Regex!11981)

(assert (=> b!4086390 (= e!2536161 (Union!11981 (Concat!19288 call!288911 (regTwo!24474 (regex!7076 r!4213))) call!288912))))

(declare-fun b!4086391 () Bool)

(declare-fun e!2536162 () Regex!11981)

(declare-fun e!2536159 () Regex!11981)

(assert (=> b!4086391 (= e!2536162 e!2536159)))

(declare-fun c!704478 () Bool)

(assert (=> b!4086391 (= c!704478 ((_ is ElementMatch!11981) (regex!7076 r!4213)))))

(declare-fun b!4086392 () Bool)

(declare-fun e!2536158 () Regex!11981)

(declare-fun call!288909 () Regex!11981)

(assert (=> b!4086392 (= e!2536158 (Union!11981 call!288909 call!288912))))

(declare-fun b!4086393 () Bool)

(assert (=> b!4086393 (= e!2536161 (Union!11981 (Concat!19288 call!288911 (regTwo!24474 (regex!7076 r!4213))) EmptyLang!11981))))

(declare-fun bm!288904 () Bool)

(declare-fun call!288910 () Regex!11981)

(assert (=> bm!288904 (= call!288911 call!288910)))

(declare-fun b!4086394 () Bool)

(declare-fun c!704475 () Bool)

(assert (=> b!4086394 (= c!704475 (nullable!4224 (regOne!24474 (regex!7076 r!4213))))))

(declare-fun e!2536160 () Regex!11981)

(assert (=> b!4086394 (= e!2536160 e!2536161)))

(declare-fun d!1213447 () Bool)

(declare-fun lt!1461663 () Regex!11981)

(assert (=> d!1213447 (validRegex!5424 lt!1461663)))

(assert (=> d!1213447 (= lt!1461663 e!2536162)))

(declare-fun c!704479 () Bool)

(assert (=> d!1213447 (= c!704479 (or ((_ is EmptyExpr!11981) (regex!7076 r!4213)) ((_ is EmptyLang!11981) (regex!7076 r!4213))))))

(assert (=> d!1213447 (validRegex!5424 (regex!7076 r!4213))))

(assert (=> d!1213447 (= (derivativeStep!3625 (regex!7076 r!4213) (head!8635 p!2988)) lt!1461663)))

(declare-fun b!4086395 () Bool)

(assert (=> b!4086395 (= e!2536162 EmptyLang!11981)))

(declare-fun bm!288905 () Bool)

(assert (=> bm!288905 (= call!288910 call!288909)))

(declare-fun b!4086396 () Bool)

(assert (=> b!4086396 (= e!2536159 (ite (= (head!8635 p!2988) (c!704278 (regex!7076 r!4213))) EmptyExpr!11981 EmptyLang!11981))))

(declare-fun b!4086397 () Bool)

(assert (=> b!4086397 (= e!2536158 e!2536160)))

(declare-fun c!704476 () Bool)

(assert (=> b!4086397 (= c!704476 ((_ is Star!11981) (regex!7076 r!4213)))))

(declare-fun b!4086398 () Bool)

(declare-fun c!704477 () Bool)

(assert (=> b!4086398 (= c!704477 ((_ is Union!11981) (regex!7076 r!4213)))))

(assert (=> b!4086398 (= e!2536159 e!2536158)))

(declare-fun bm!288906 () Bool)

(assert (=> bm!288906 (= call!288909 (derivativeStep!3625 (ite c!704477 (regOne!24475 (regex!7076 r!4213)) (ite c!704476 (reg!12310 (regex!7076 r!4213)) (regOne!24474 (regex!7076 r!4213)))) (head!8635 p!2988)))))

(declare-fun bm!288907 () Bool)

(assert (=> bm!288907 (= call!288912 (derivativeStep!3625 (ite c!704477 (regTwo!24475 (regex!7076 r!4213)) (regTwo!24474 (regex!7076 r!4213))) (head!8635 p!2988)))))

(declare-fun b!4086399 () Bool)

(assert (=> b!4086399 (= e!2536160 (Concat!19288 call!288910 (regex!7076 r!4213)))))

(assert (= (and d!1213447 c!704479) b!4086395))

(assert (= (and d!1213447 (not c!704479)) b!4086391))

(assert (= (and b!4086391 c!704478) b!4086396))

(assert (= (and b!4086391 (not c!704478)) b!4086398))

(assert (= (and b!4086398 c!704477) b!4086392))

(assert (= (and b!4086398 (not c!704477)) b!4086397))

(assert (= (and b!4086397 c!704476) b!4086399))

(assert (= (and b!4086397 (not c!704476)) b!4086394))

(assert (= (and b!4086394 c!704475) b!4086390))

(assert (= (and b!4086394 (not c!704475)) b!4086393))

(assert (= (or b!4086390 b!4086393) bm!288904))

(assert (= (or b!4086399 bm!288904) bm!288905))

(assert (= (or b!4086392 bm!288905) bm!288906))

(assert (= (or b!4086392 b!4086390) bm!288907))

(declare-fun m!4693319 () Bool)

(assert (=> b!4086394 m!4693319))

(declare-fun m!4693321 () Bool)

(assert (=> d!1213447 m!4693321))

(assert (=> d!1213447 m!4692557))

(assert (=> bm!288906 m!4692547))

(declare-fun m!4693323 () Bool)

(assert (=> bm!288906 m!4693323))

(assert (=> bm!288907 m!4692547))

(declare-fun m!4693325 () Bool)

(assert (=> bm!288907 m!4693325))

(assert (=> b!4085718 d!1213447))

(assert (=> b!4085718 d!1213227))

(assert (=> b!4085718 d!1213247))

(declare-fun b!4086410 () Bool)

(declare-fun e!2536169 () Bool)

(declare-fun inv!15 (TokenValue!7306) Bool)

(assert (=> b!4086410 (= e!2536169 (inv!15 (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))

(declare-fun b!4086411 () Bool)

(declare-fun e!2536170 () Bool)

(declare-fun inv!16 (TokenValue!7306) Bool)

(assert (=> b!4086411 (= e!2536170 (inv!16 (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))

(declare-fun b!4086412 () Bool)

(declare-fun e!2536171 () Bool)

(assert (=> b!4086412 (= e!2536170 e!2536171)))

(declare-fun c!704485 () Bool)

(assert (=> b!4086412 (= c!704485 ((_ is IntegerValue!21919) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))

(declare-fun b!4086413 () Bool)

(declare-fun res!1669744 () Bool)

(assert (=> b!4086413 (=> res!1669744 e!2536169)))

(assert (=> b!4086413 (= res!1669744 (not ((_ is IntegerValue!21920) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))))))

(assert (=> b!4086413 (= e!2536171 e!2536169)))

(declare-fun b!4086414 () Bool)

(declare-fun inv!17 (TokenValue!7306) Bool)

(assert (=> b!4086414 (= e!2536171 (inv!17 (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))

(declare-fun d!1213451 () Bool)

(declare-fun c!704484 () Bool)

(assert (=> d!1213451 (= c!704484 ((_ is IntegerValue!21918) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))))

(assert (=> d!1213451 (= (inv!21 (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)) e!2536170)))

(assert (= (and d!1213451 c!704484) b!4086411))

(assert (= (and d!1213451 (not c!704484)) b!4086412))

(assert (= (and b!4086412 c!704485) b!4086414))

(assert (= (and b!4086412 (not c!704485)) b!4086413))

(assert (= (and b!4086413 (not res!1669744)) b!4086410))

(declare-fun m!4693327 () Bool)

(assert (=> b!4086410 m!4693327))

(declare-fun m!4693329 () Bool)

(assert (=> b!4086411 m!4693329))

(declare-fun m!4693331 () Bool)

(assert (=> b!4086414 m!4693331))

(assert (=> tb!245385 d!1213451))

(declare-fun b!4086415 () Bool)

(declare-fun res!1669751 () Bool)

(declare-fun e!2536172 () Bool)

(assert (=> b!4086415 (=> (not res!1669751) (not e!2536172))))

(declare-fun lt!1461667 () Option!9482)

(assert (=> b!4086415 (= res!1669751 (= (value!222318 (_1!24502 (get!14364 lt!1461667))) (apply!10259 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461667)))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461667)))))))))

(declare-fun b!4086416 () Bool)

(declare-fun res!1669746 () Bool)

(assert (=> b!4086416 (=> (not res!1669746) (not e!2536172))))

(assert (=> b!4086416 (= res!1669746 (< (size!32711 (_2!24502 (get!14364 lt!1461667))) (size!32711 input!3411)))))

(declare-fun b!4086417 () Bool)

(declare-fun e!2536175 () Bool)

(assert (=> b!4086417 (= e!2536175 (matchR!5922 (regex!7076 (h!49219 rules!3870)) (_1!24504 (findLongestMatchInner!1448 (regex!7076 (h!49219 rules!3870)) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(declare-fun b!4086418 () Bool)

(declare-fun e!2536174 () Option!9482)

(assert (=> b!4086418 (= e!2536174 None!9481)))

(declare-fun d!1213453 () Bool)

(declare-fun e!2536173 () Bool)

(assert (=> d!1213453 e!2536173))

(declare-fun res!1669748 () Bool)

(assert (=> d!1213453 (=> res!1669748 e!2536173)))

(assert (=> d!1213453 (= res!1669748 (isEmpty!26187 lt!1461667))))

(assert (=> d!1213453 (= lt!1461667 e!2536174)))

(declare-fun c!704486 () Bool)

(declare-fun lt!1461665 () tuple2!42740)

(assert (=> d!1213453 (= c!704486 (isEmpty!26184 (_1!24504 lt!1461665)))))

(assert (=> d!1213453 (= lt!1461665 (findLongestMatch!1361 (regex!7076 (h!49219 rules!3870)) input!3411))))

(assert (=> d!1213453 (ruleValid!2996 thiss!26199 (h!49219 rules!3870))))

(assert (=> d!1213453 (= (maxPrefixOneRule!2941 thiss!26199 (h!49219 rules!3870) input!3411) lt!1461667)))

(declare-fun b!4086419 () Bool)

(assert (=> b!4086419 (= e!2536173 e!2536172)))

(declare-fun res!1669745 () Bool)

(assert (=> b!4086419 (=> (not res!1669745) (not e!2536172))))

(assert (=> b!4086419 (= res!1669745 (matchR!5922 (regex!7076 (h!49219 rules!3870)) (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461667))))))))

(declare-fun b!4086420 () Bool)

(assert (=> b!4086420 (= e!2536174 (Some!9481 (tuple2!42737 (Token!13279 (apply!10259 (transformation!7076 (h!49219 rules!3870)) (seqFromList!5293 (_1!24504 lt!1461665))) (h!49219 rules!3870) (size!32713 (seqFromList!5293 (_1!24504 lt!1461665))) (_1!24504 lt!1461665)) (_2!24504 lt!1461665))))))

(declare-fun lt!1461668 () Unit!63319)

(assert (=> b!4086420 (= lt!1461668 (longestMatchIsAcceptedByMatchOrIsEmpty!1421 (regex!7076 (h!49219 rules!3870)) input!3411))))

(declare-fun res!1669750 () Bool)

(assert (=> b!4086420 (= res!1669750 (isEmpty!26184 (_1!24504 (findLongestMatchInner!1448 (regex!7076 (h!49219 rules!3870)) Nil!43798 (size!32711 Nil!43798) input!3411 input!3411 (size!32711 input!3411)))))))

(assert (=> b!4086420 (=> res!1669750 e!2536175)))

(assert (=> b!4086420 e!2536175))

(declare-fun lt!1461664 () Unit!63319)

(assert (=> b!4086420 (= lt!1461664 lt!1461668)))

(declare-fun lt!1461666 () Unit!63319)

(assert (=> b!4086420 (= lt!1461666 (lemmaSemiInverse!2043 (transformation!7076 (h!49219 rules!3870)) (seqFromList!5293 (_1!24504 lt!1461665))))))

(declare-fun b!4086421 () Bool)

(assert (=> b!4086421 (= e!2536172 (= (size!32710 (_1!24502 (get!14364 lt!1461667))) (size!32711 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461667))))))))

(declare-fun b!4086422 () Bool)

(declare-fun res!1669749 () Bool)

(assert (=> b!4086422 (=> (not res!1669749) (not e!2536172))))

(assert (=> b!4086422 (= res!1669749 (= (rule!10204 (_1!24502 (get!14364 lt!1461667))) (h!49219 rules!3870)))))

(declare-fun b!4086423 () Bool)

(declare-fun res!1669747 () Bool)

(assert (=> b!4086423 (=> (not res!1669747) (not e!2536172))))

(assert (=> b!4086423 (= res!1669747 (= (++!11482 (list!16266 (charsOf!4842 (_1!24502 (get!14364 lt!1461667)))) (_2!24502 (get!14364 lt!1461667))) input!3411))))

(assert (= (and d!1213453 c!704486) b!4086418))

(assert (= (and d!1213453 (not c!704486)) b!4086420))

(assert (= (and b!4086420 (not res!1669750)) b!4086417))

(assert (= (and d!1213453 (not res!1669748)) b!4086419))

(assert (= (and b!4086419 res!1669745) b!4086423))

(assert (= (and b!4086423 res!1669747) b!4086416))

(assert (= (and b!4086416 res!1669746) b!4086422))

(assert (= (and b!4086422 res!1669749) b!4086415))

(assert (= (and b!4086415 res!1669751) b!4086421))

(declare-fun m!4693333 () Bool)

(assert (=> b!4086420 m!4693333))

(declare-fun m!4693335 () Bool)

(assert (=> b!4086420 m!4693335))

(assert (=> b!4086420 m!4693333))

(declare-fun m!4693337 () Bool)

(assert (=> b!4086420 m!4693337))

(declare-fun m!4693339 () Bool)

(assert (=> b!4086420 m!4693339))

(assert (=> b!4086420 m!4692481))

(assert (=> b!4086420 m!4692349))

(declare-fun m!4693341 () Bool)

(assert (=> b!4086420 m!4693341))

(assert (=> b!4086420 m!4692481))

(assert (=> b!4086420 m!4692349))

(declare-fun m!4693343 () Bool)

(assert (=> b!4086420 m!4693343))

(assert (=> b!4086420 m!4693333))

(assert (=> b!4086420 m!4693333))

(declare-fun m!4693345 () Bool)

(assert (=> b!4086420 m!4693345))

(declare-fun m!4693347 () Bool)

(assert (=> b!4086416 m!4693347))

(declare-fun m!4693349 () Bool)

(assert (=> b!4086416 m!4693349))

(assert (=> b!4086416 m!4692349))

(assert (=> b!4086415 m!4693347))

(declare-fun m!4693351 () Bool)

(assert (=> b!4086415 m!4693351))

(assert (=> b!4086415 m!4693351))

(declare-fun m!4693353 () Bool)

(assert (=> b!4086415 m!4693353))

(assert (=> b!4086423 m!4693347))

(declare-fun m!4693355 () Bool)

(assert (=> b!4086423 m!4693355))

(assert (=> b!4086423 m!4693355))

(declare-fun m!4693357 () Bool)

(assert (=> b!4086423 m!4693357))

(assert (=> b!4086423 m!4693357))

(declare-fun m!4693359 () Bool)

(assert (=> b!4086423 m!4693359))

(assert (=> b!4086421 m!4693347))

(declare-fun m!4693361 () Bool)

(assert (=> b!4086421 m!4693361))

(assert (=> b!4086417 m!4692481))

(assert (=> b!4086417 m!4692349))

(assert (=> b!4086417 m!4692481))

(assert (=> b!4086417 m!4692349))

(assert (=> b!4086417 m!4693343))

(declare-fun m!4693363 () Bool)

(assert (=> b!4086417 m!4693363))

(declare-fun m!4693365 () Bool)

(assert (=> d!1213453 m!4693365))

(declare-fun m!4693367 () Bool)

(assert (=> d!1213453 m!4693367))

(declare-fun m!4693369 () Bool)

(assert (=> d!1213453 m!4693369))

(assert (=> d!1213453 m!4693275))

(assert (=> b!4086422 m!4693347))

(assert (=> b!4086419 m!4693347))

(assert (=> b!4086419 m!4693355))

(assert (=> b!4086419 m!4693355))

(assert (=> b!4086419 m!4693357))

(assert (=> b!4086419 m!4693357))

(declare-fun m!4693371 () Bool)

(assert (=> b!4086419 m!4693371))

(assert (=> bm!288803 d!1213453))

(declare-fun d!1213455 () Bool)

(assert (=> d!1213455 (= (list!16266 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))) (list!16268 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))))))

(declare-fun bs!593115 () Bool)

(assert (= bs!593115 d!1213455))

(declare-fun m!4693373 () Bool)

(assert (=> bs!593115 m!4693373))

(assert (=> b!4085664 d!1213455))

(declare-fun d!1213457 () Bool)

(declare-fun lt!1461669 () Bool)

(assert (=> d!1213457 (= lt!1461669 (select (content!6734 rules!3870) (rule!10204 (_1!24502 (get!14364 lt!1461263)))))))

(declare-fun e!2536176 () Bool)

(assert (=> d!1213457 (= lt!1461669 e!2536176)))

(declare-fun res!1669752 () Bool)

(assert (=> d!1213457 (=> (not res!1669752) (not e!2536176))))

(assert (=> d!1213457 (= res!1669752 ((_ is Cons!43799) rules!3870))))

(assert (=> d!1213457 (= (contains!8751 rules!3870 (rule!10204 (_1!24502 (get!14364 lt!1461263)))) lt!1461669)))

(declare-fun b!4086424 () Bool)

(declare-fun e!2536177 () Bool)

(assert (=> b!4086424 (= e!2536176 e!2536177)))

(declare-fun res!1669753 () Bool)

(assert (=> b!4086424 (=> res!1669753 e!2536177)))

(assert (=> b!4086424 (= res!1669753 (= (h!49219 rules!3870) (rule!10204 (_1!24502 (get!14364 lt!1461263)))))))

(declare-fun b!4086425 () Bool)

(assert (=> b!4086425 (= e!2536177 (contains!8751 (t!338082 rules!3870) (rule!10204 (_1!24502 (get!14364 lt!1461263)))))))

(assert (= (and d!1213457 res!1669752) b!4086424))

(assert (= (and b!4086424 (not res!1669753)) b!4086425))

(assert (=> d!1213457 m!4692535))

(declare-fun m!4693375 () Bool)

(assert (=> d!1213457 m!4693375))

(declare-fun m!4693377 () Bool)

(assert (=> b!4086425 m!4693377))

(assert (=> b!4085500 d!1213457))

(assert (=> b!4085500 d!1213211))

(assert (=> d!1213133 d!1213131))

(declare-fun d!1213459 () Bool)

(assert (=> d!1213459 (rulesInvariant!6008 thiss!26199 (t!338082 rules!3870))))

(assert (=> d!1213459 true))

(declare-fun _$66!578 () Unit!63319)

(assert (=> d!1213459 (= (choose!24942 thiss!26199 (h!49219 rules!3870) (t!338082 rules!3870)) _$66!578)))

(declare-fun bs!593116 () Bool)

(assert (= bs!593116 d!1213459))

(assert (=> bs!593116 m!4692243))

(assert (=> d!1213133 d!1213459))

(declare-fun d!1213461 () Bool)

(declare-fun res!1669754 () Bool)

(declare-fun e!2536178 () Bool)

(assert (=> d!1213461 (=> (not res!1669754) (not e!2536178))))

(assert (=> d!1213461 (= res!1669754 (rulesValid!2770 thiss!26199 (Cons!43799 (h!49219 rules!3870) (t!338082 rules!3870))))))

(assert (=> d!1213461 (= (rulesInvariant!6008 thiss!26199 (Cons!43799 (h!49219 rules!3870) (t!338082 rules!3870))) e!2536178)))

(declare-fun b!4086426 () Bool)

(assert (=> b!4086426 (= e!2536178 (noDuplicateTag!2771 thiss!26199 (Cons!43799 (h!49219 rules!3870) (t!338082 rules!3870)) Nil!43801))))

(assert (= (and d!1213461 res!1669754) b!4086426))

(declare-fun m!4693379 () Bool)

(assert (=> d!1213461 m!4693379))

(declare-fun m!4693381 () Bool)

(assert (=> b!4086426 m!4693381))

(assert (=> d!1213133 d!1213461))

(declare-fun d!1213463 () Bool)

(declare-fun c!704489 () Bool)

(assert (=> d!1213463 (= c!704489 ((_ is Nil!43798) lt!1461331))))

(declare-fun e!2536181 () (InoxSet C!24148))

(assert (=> d!1213463 (= (content!6735 lt!1461331) e!2536181)))

(declare-fun b!4086431 () Bool)

(assert (=> b!4086431 (= e!2536181 ((as const (Array C!24148 Bool)) false))))

(declare-fun b!4086432 () Bool)

(assert (=> b!4086432 (= e!2536181 ((_ map or) (store ((as const (Array C!24148 Bool)) false) (h!49218 lt!1461331) true) (content!6735 (t!338081 lt!1461331))))))

(assert (= (and d!1213463 c!704489) b!4086431))

(assert (= (and d!1213463 (not c!704489)) b!4086432))

(declare-fun m!4693383 () Bool)

(assert (=> b!4086432 m!4693383))

(declare-fun m!4693385 () Bool)

(assert (=> b!4086432 m!4693385))

(assert (=> d!1213151 d!1213463))

(declare-fun d!1213465 () Bool)

(declare-fun c!704490 () Bool)

(assert (=> d!1213465 (= c!704490 ((_ is Nil!43798) p!2988))))

(declare-fun e!2536182 () (InoxSet C!24148))

(assert (=> d!1213465 (= (content!6735 p!2988) e!2536182)))

(declare-fun b!4086433 () Bool)

(assert (=> b!4086433 (= e!2536182 ((as const (Array C!24148 Bool)) false))))

(declare-fun b!4086434 () Bool)

(assert (=> b!4086434 (= e!2536182 ((_ map or) (store ((as const (Array C!24148 Bool)) false) (h!49218 p!2988) true) (content!6735 (t!338081 p!2988))))))

(assert (= (and d!1213465 c!704490) b!4086433))

(assert (= (and d!1213465 (not c!704490)) b!4086434))

(declare-fun m!4693387 () Bool)

(assert (=> b!4086434 m!4693387))

(assert (=> b!4086434 m!4693173))

(assert (=> d!1213151 d!1213465))

(declare-fun d!1213467 () Bool)

(declare-fun c!704491 () Bool)

(assert (=> d!1213467 (= c!704491 ((_ is Nil!43798) suffix!1518))))

(declare-fun e!2536183 () (InoxSet C!24148))

(assert (=> d!1213467 (= (content!6735 suffix!1518) e!2536183)))

(declare-fun b!4086435 () Bool)

(assert (=> b!4086435 (= e!2536183 ((as const (Array C!24148 Bool)) false))))

(declare-fun b!4086436 () Bool)

(assert (=> b!4086436 (= e!2536183 ((_ map or) (store ((as const (Array C!24148 Bool)) false) (h!49218 suffix!1518) true) (content!6735 (t!338081 suffix!1518))))))

(assert (= (and d!1213467 c!704491) b!4086435))

(assert (= (and d!1213467 (not c!704491)) b!4086436))

(declare-fun m!4693389 () Bool)

(assert (=> b!4086436 m!4693389))

(declare-fun m!4693391 () Bool)

(assert (=> b!4086436 m!4693391))

(assert (=> d!1213151 d!1213467))

(declare-fun bs!593117 () Bool)

(declare-fun d!1213469 () Bool)

(assert (= bs!593117 (and d!1213469 d!1213097)))

(declare-fun lambda!127925 () Int)

(assert (=> bs!593117 (= lambda!127925 lambda!127893)))

(declare-fun bs!593118 () Bool)

(assert (= bs!593118 (and d!1213469 d!1213395)))

(assert (=> bs!593118 (= lambda!127925 lambda!127916)))

(declare-fun bs!593119 () Bool)

(assert (= bs!593119 (and d!1213469 d!1213437)))

(assert (=> bs!593119 (= (and (= (toChars!9515 (transformation!7076 r!4213)) (toChars!9515 (transformation!7076 (h!49219 rules!3870)))) (= (toValue!9656 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 (h!49219 rules!3870))))) (= lambda!127925 lambda!127924))))

(assert (=> d!1213469 true))

(assert (=> d!1213469 (< (dynLambda!18701 order!22989 (toChars!9515 (transformation!7076 r!4213))) (dynLambda!18700 order!22987 lambda!127925))))

(assert (=> d!1213469 true))

(assert (=> d!1213469 (< (dynLambda!18699 order!22985 (toValue!9656 (transformation!7076 r!4213))) (dynLambda!18700 order!22987 lambda!127925))))

(assert (=> d!1213469 (= (semiInverseModEq!3036 (toChars!9515 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 r!4213))) (Forall!1510 lambda!127925))))

(declare-fun bs!593120 () Bool)

(assert (= bs!593120 d!1213469))

(declare-fun m!4693393 () Bool)

(assert (=> bs!593120 m!4693393))

(assert (=> d!1213149 d!1213469))

(assert (=> b!4085498 d!1213211))

(declare-fun d!1213471 () Bool)

(assert (=> d!1213471 (= (apply!10259 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461263))))) (dynLambda!18698 (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461263))))))))

(declare-fun b_lambda!119647 () Bool)

(assert (=> (not b_lambda!119647) (not d!1213471)))

(declare-fun t!338206 () Bool)

(declare-fun tb!245505 () Bool)

(assert (=> (and b!4085383 (= (toValue!9656 (transformation!7076 r!4213)) (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))) t!338206) tb!245505))

(declare-fun result!297868 () Bool)

(assert (=> tb!245505 (= result!297868 (inv!21 (dynLambda!18698 (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263))))) (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461263)))))))))

(declare-fun m!4693395 () Bool)

(assert (=> tb!245505 m!4693395))

(assert (=> d!1213471 t!338206))

(declare-fun b_and!314649 () Bool)

(assert (= b_and!314617 (and (=> t!338206 result!297868) b_and!314649)))

(declare-fun tb!245507 () Bool)

(declare-fun t!338208 () Bool)

(assert (=> (and b!4085381 (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))) t!338208) tb!245507))

(declare-fun result!297870 () Bool)

(assert (= result!297870 result!297868))

(assert (=> d!1213471 t!338208))

(declare-fun b_and!314651 () Bool)

(assert (= b_and!314619 (and (=> t!338208 result!297870) b_and!314651)))

(declare-fun tb!245509 () Bool)

(declare-fun t!338210 () Bool)

(assert (=> (and b!4085757 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))) t!338210) tb!245509))

(declare-fun result!297872 () Bool)

(assert (= result!297872 result!297868))

(assert (=> d!1213471 t!338210))

(declare-fun b_and!314653 () Bool)

(assert (= b_and!314621 (and (=> t!338210 result!297872) b_and!314653)))

(assert (=> d!1213471 m!4692325))

(declare-fun m!4693397 () Bool)

(assert (=> d!1213471 m!4693397))

(assert (=> b!4085498 d!1213471))

(declare-fun d!1213473 () Bool)

(assert (=> d!1213473 (= (seqFromList!5293 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461263)))) (fromListB!2422 (originalCharacters!7670 (_1!24502 (get!14364 lt!1461263)))))))

(declare-fun bs!593121 () Bool)

(assert (= bs!593121 d!1213473))

(declare-fun m!4693399 () Bool)

(assert (=> bs!593121 m!4693399))

(assert (=> b!4085498 d!1213473))

(assert (=> d!1213141 d!1213137))

(assert (=> d!1213141 d!1213341))

(declare-fun b!4086437 () Bool)

(declare-fun e!2536185 () Bool)

(declare-fun tp!1237179 () Bool)

(assert (=> b!4086437 (= e!2536185 (and tp_is_empty!20965 tp!1237179))))

(assert (=> b!4085745 (= tp!1237064 e!2536185)))

(assert (= (and b!4085745 ((_ is Cons!43798) (t!338081 (t!338081 suffix!1518)))) b!4086437))

(declare-fun b!4086438 () Bool)

(declare-fun e!2536186 () Bool)

(declare-fun tp!1237180 () Bool)

(assert (=> b!4086438 (= e!2536186 (and tp_is_empty!20965 tp!1237180))))

(assert (=> b!4085772 (= tp!1237093 e!2536186)))

(assert (= (and b!4085772 ((_ is Cons!43798) (t!338081 (t!338081 p!2988)))) b!4086438))

(declare-fun b!4086441 () Bool)

(declare-fun e!2536187 () Bool)

(declare-fun tp!1237184 () Bool)

(assert (=> b!4086441 (= e!2536187 tp!1237184)))

(declare-fun b!4086440 () Bool)

(declare-fun tp!1237183 () Bool)

(declare-fun tp!1237182 () Bool)

(assert (=> b!4086440 (= e!2536187 (and tp!1237183 tp!1237182))))

(declare-fun b!4086442 () Bool)

(declare-fun tp!1237181 () Bool)

(declare-fun tp!1237185 () Bool)

(assert (=> b!4086442 (= e!2536187 (and tp!1237181 tp!1237185))))

(assert (=> b!4085756 (= tp!1237074 e!2536187)))

(declare-fun b!4086439 () Bool)

(assert (=> b!4086439 (= e!2536187 tp_is_empty!20965)))

(assert (= (and b!4085756 ((_ is ElementMatch!11981) (regex!7076 (h!49219 (t!338082 rules!3870))))) b!4086439))

(assert (= (and b!4085756 ((_ is Concat!19288) (regex!7076 (h!49219 (t!338082 rules!3870))))) b!4086440))

(assert (= (and b!4085756 ((_ is Star!11981) (regex!7076 (h!49219 (t!338082 rules!3870))))) b!4086441))

(assert (= (and b!4085756 ((_ is Union!11981) (regex!7076 (h!49219 (t!338082 rules!3870))))) b!4086442))

(declare-fun b!4086445 () Bool)

(declare-fun e!2536188 () Bool)

(declare-fun tp!1237189 () Bool)

(assert (=> b!4086445 (= e!2536188 tp!1237189)))

(declare-fun b!4086444 () Bool)

(declare-fun tp!1237188 () Bool)

(declare-fun tp!1237187 () Bool)

(assert (=> b!4086444 (= e!2536188 (and tp!1237188 tp!1237187))))

(declare-fun b!4086446 () Bool)

(declare-fun tp!1237186 () Bool)

(declare-fun tp!1237190 () Bool)

(assert (=> b!4086446 (= e!2536188 (and tp!1237186 tp!1237190))))

(assert (=> b!4085776 (= tp!1237094 e!2536188)))

(declare-fun b!4086443 () Bool)

(assert (=> b!4086443 (= e!2536188 tp_is_empty!20965)))

(assert (= (and b!4085776 ((_ is ElementMatch!11981) (regOne!24475 (regex!7076 (h!49219 rules!3870))))) b!4086443))

(assert (= (and b!4085776 ((_ is Concat!19288) (regOne!24475 (regex!7076 (h!49219 rules!3870))))) b!4086444))

(assert (= (and b!4085776 ((_ is Star!11981) (regOne!24475 (regex!7076 (h!49219 rules!3870))))) b!4086445))

(assert (= (and b!4085776 ((_ is Union!11981) (regOne!24475 (regex!7076 (h!49219 rules!3870))))) b!4086446))

(declare-fun b!4086449 () Bool)

(declare-fun e!2536189 () Bool)

(declare-fun tp!1237194 () Bool)

(assert (=> b!4086449 (= e!2536189 tp!1237194)))

(declare-fun b!4086448 () Bool)

(declare-fun tp!1237193 () Bool)

(declare-fun tp!1237192 () Bool)

(assert (=> b!4086448 (= e!2536189 (and tp!1237193 tp!1237192))))

(declare-fun b!4086450 () Bool)

(declare-fun tp!1237191 () Bool)

(declare-fun tp!1237195 () Bool)

(assert (=> b!4086450 (= e!2536189 (and tp!1237191 tp!1237195))))

(assert (=> b!4085776 (= tp!1237098 e!2536189)))

(declare-fun b!4086447 () Bool)

(assert (=> b!4086447 (= e!2536189 tp_is_empty!20965)))

(assert (= (and b!4085776 ((_ is ElementMatch!11981) (regTwo!24475 (regex!7076 (h!49219 rules!3870))))) b!4086447))

(assert (= (and b!4085776 ((_ is Concat!19288) (regTwo!24475 (regex!7076 (h!49219 rules!3870))))) b!4086448))

(assert (= (and b!4085776 ((_ is Star!11981) (regTwo!24475 (regex!7076 (h!49219 rules!3870))))) b!4086449))

(assert (= (and b!4085776 ((_ is Union!11981) (regTwo!24475 (regex!7076 (h!49219 rules!3870))))) b!4086450))

(declare-fun tp!1237202 () Bool)

(declare-fun tp!1237203 () Bool)

(declare-fun e!2536195 () Bool)

(declare-fun b!4086459 () Bool)

(assert (=> b!4086459 (= e!2536195 (and (inv!58484 (left!32919 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))))) tp!1237202 (inv!58484 (right!33249 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))))) tp!1237203))))

(declare-fun b!4086461 () Bool)

(declare-fun e!2536194 () Bool)

(declare-fun tp!1237204 () Bool)

(assert (=> b!4086461 (= e!2536194 tp!1237204)))

(declare-fun b!4086460 () Bool)

(declare-fun inv!58490 (IArray!26579) Bool)

(assert (=> b!4086460 (= e!2536195 (and (inv!58490 (xs!16593 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))))) e!2536194))))

(assert (=> b!4085666 (= tp!1237061 (and (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225)))) e!2536195))))

(assert (= (and b!4085666 ((_ is Node!13287) (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))))) b!4086459))

(assert (= b!4086460 b!4086461))

(assert (= (and b!4085666 ((_ is Leaf!20540) (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))) (value!222318 lt!1461225))))) b!4086460))

(declare-fun m!4693401 () Bool)

(assert (=> b!4086459 m!4693401))

(declare-fun m!4693403 () Bool)

(assert (=> b!4086459 m!4693403))

(declare-fun m!4693405 () Bool)

(assert (=> b!4086460 m!4693405))

(assert (=> b!4085666 m!4692515))

(declare-fun b!4086464 () Bool)

(declare-fun b_free!114165 () Bool)

(declare-fun b_next!114869 () Bool)

(assert (=> b!4086464 (= b_free!114165 (not b_next!114869))))

(declare-fun t!338212 () Bool)

(declare-fun tb!245511 () Bool)

(assert (=> (and b!4086464 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toValue!9656 (transformation!7076 r!4213))) t!338212) tb!245511))

(declare-fun result!297876 () Bool)

(assert (= result!297876 result!297726))

(assert (=> d!1213097 t!338212))

(declare-fun t!338214 () Bool)

(declare-fun tb!245513 () Bool)

(assert (=> (and b!4086464 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toValue!9656 (transformation!7076 r!4213))) t!338214) tb!245513))

(declare-fun result!297878 () Bool)

(assert (= result!297878 result!297824))

(assert (=> d!1213395 t!338214))

(declare-fun t!338216 () Bool)

(declare-fun tb!245515 () Bool)

(assert (=> (and b!4086464 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))) t!338216) tb!245515))

(declare-fun result!297880 () Bool)

(assert (= result!297880 result!297868))

(assert (=> d!1213471 t!338216))

(declare-fun t!338218 () Bool)

(declare-fun tb!245517 () Bool)

(assert (=> (and b!4086464 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toValue!9656 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))))) t!338218) tb!245517))

(declare-fun result!297882 () Bool)

(assert (= result!297882 result!297818))

(assert (=> d!1213315 t!338218))

(assert (=> d!1213071 t!338212))

(assert (=> d!1213367 t!338214))

(declare-fun tp!1237208 () Bool)

(declare-fun b_and!314655 () Bool)

(assert (=> b!4086464 (= tp!1237208 (and (=> t!338212 result!297876) (=> t!338218 result!297882) (=> t!338214 result!297878) (=> t!338216 result!297880) b_and!314655))))

(declare-fun b_free!114167 () Bool)

(declare-fun b_next!114871 () Bool)

(assert (=> b!4086464 (= b_free!114167 (not b_next!114871))))

(declare-fun tb!245519 () Bool)

(declare-fun t!338220 () Bool)

(assert (=> (and b!4086464 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461263)))))) t!338220) tb!245519))

(declare-fun result!297884 () Bool)

(assert (= result!297884 result!297788))

(assert (=> d!1213209 t!338220))

(declare-fun t!338222 () Bool)

(declare-fun tb!245521 () Bool)

(assert (=> (and b!4086464 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toChars!9515 (transformation!7076 (rule!10204 (_1!24502 (get!14364 lt!1461315)))))) t!338222) tb!245521))

(declare-fun result!297886 () Bool)

(assert (= result!297886 result!297782))

(assert (=> d!1213197 t!338222))

(declare-fun t!338224 () Bool)

(declare-fun tb!245523 () Bool)

(assert (=> (and b!4086464 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toChars!9515 (transformation!7076 r!4213))) t!338224) tb!245523))

(declare-fun result!297888 () Bool)

(assert (= result!297888 result!297748))

(assert (=> d!1213097 t!338224))

(declare-fun t!338226 () Bool)

(declare-fun tb!245525 () Bool)

(assert (=> (and b!4086464 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toChars!9515 (transformation!7076 (rule!10204 lt!1461225)))) t!338226) tb!245525))

(declare-fun result!297890 () Bool)

(assert (= result!297890 result!297766))

(assert (=> b!4085664 t!338226))

(declare-fun tb!245527 () Bool)

(declare-fun t!338228 () Bool)

(assert (=> (and b!4086464 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toChars!9515 (transformation!7076 r!4213))) t!338228) tb!245527))

(declare-fun result!297892 () Bool)

(assert (= result!297892 result!297836))

(assert (=> d!1213395 t!338228))

(declare-fun b_and!314657 () Bool)

(declare-fun tp!1237207 () Bool)

(assert (=> b!4086464 (= tp!1237207 (and (=> t!338222 result!297886) (=> t!338226 result!297890) (=> t!338228 result!297892) (=> t!338224 result!297888) (=> t!338220 result!297884) b_and!314657))))

(declare-fun e!2536199 () Bool)

(assert (=> b!4086464 (= e!2536199 (and tp!1237208 tp!1237207))))

(declare-fun b!4086463 () Bool)

(declare-fun tp!1237205 () Bool)

(declare-fun e!2536196 () Bool)

(assert (=> b!4086463 (= e!2536196 (and tp!1237205 (inv!58477 (tag!7936 (h!49219 (t!338082 (t!338082 rules!3870))))) (inv!58480 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) e!2536199))))

(declare-fun b!4086462 () Bool)

(declare-fun e!2536198 () Bool)

(declare-fun tp!1237206 () Bool)

(assert (=> b!4086462 (= e!2536198 (and e!2536196 tp!1237206))))

(assert (=> b!4085755 (= tp!1237075 e!2536198)))

(assert (= b!4086463 b!4086464))

(assert (= b!4086462 b!4086463))

(assert (= (and b!4085755 ((_ is Cons!43799) (t!338082 (t!338082 rules!3870)))) b!4086462))

(declare-fun m!4693407 () Bool)

(assert (=> b!4086463 m!4693407))

(declare-fun m!4693409 () Bool)

(assert (=> b!4086463 m!4693409))

(declare-fun b!4086467 () Bool)

(declare-fun e!2536200 () Bool)

(declare-fun tp!1237212 () Bool)

(assert (=> b!4086467 (= e!2536200 tp!1237212)))

(declare-fun b!4086466 () Bool)

(declare-fun tp!1237211 () Bool)

(declare-fun tp!1237210 () Bool)

(assert (=> b!4086466 (= e!2536200 (and tp!1237211 tp!1237210))))

(declare-fun b!4086468 () Bool)

(declare-fun tp!1237209 () Bool)

(declare-fun tp!1237213 () Bool)

(assert (=> b!4086468 (= e!2536200 (and tp!1237209 tp!1237213))))

(assert (=> b!4085774 (= tp!1237096 e!2536200)))

(declare-fun b!4086465 () Bool)

(assert (=> b!4086465 (= e!2536200 tp_is_empty!20965)))

(assert (= (and b!4085774 ((_ is ElementMatch!11981) (regOne!24474 (regex!7076 (h!49219 rules!3870))))) b!4086465))

(assert (= (and b!4085774 ((_ is Concat!19288) (regOne!24474 (regex!7076 (h!49219 rules!3870))))) b!4086466))

(assert (= (and b!4085774 ((_ is Star!11981) (regOne!24474 (regex!7076 (h!49219 rules!3870))))) b!4086467))

(assert (= (and b!4085774 ((_ is Union!11981) (regOne!24474 (regex!7076 (h!49219 rules!3870))))) b!4086468))

(declare-fun b!4086471 () Bool)

(declare-fun e!2536201 () Bool)

(declare-fun tp!1237217 () Bool)

(assert (=> b!4086471 (= e!2536201 tp!1237217)))

(declare-fun b!4086470 () Bool)

(declare-fun tp!1237216 () Bool)

(declare-fun tp!1237215 () Bool)

(assert (=> b!4086470 (= e!2536201 (and tp!1237216 tp!1237215))))

(declare-fun b!4086472 () Bool)

(declare-fun tp!1237214 () Bool)

(declare-fun tp!1237218 () Bool)

(assert (=> b!4086472 (= e!2536201 (and tp!1237214 tp!1237218))))

(assert (=> b!4085774 (= tp!1237095 e!2536201)))

(declare-fun b!4086469 () Bool)

(assert (=> b!4086469 (= e!2536201 tp_is_empty!20965)))

(assert (= (and b!4085774 ((_ is ElementMatch!11981) (regTwo!24474 (regex!7076 (h!49219 rules!3870))))) b!4086469))

(assert (= (and b!4085774 ((_ is Concat!19288) (regTwo!24474 (regex!7076 (h!49219 rules!3870))))) b!4086470))

(assert (= (and b!4085774 ((_ is Star!11981) (regTwo!24474 (regex!7076 (h!49219 rules!3870))))) b!4086471))

(assert (= (and b!4085774 ((_ is Union!11981) (regTwo!24474 (regex!7076 (h!49219 rules!3870))))) b!4086472))

(declare-fun b!4086475 () Bool)

(declare-fun e!2536202 () Bool)

(declare-fun tp!1237222 () Bool)

(assert (=> b!4086475 (= e!2536202 tp!1237222)))

(declare-fun b!4086474 () Bool)

(declare-fun tp!1237221 () Bool)

(declare-fun tp!1237220 () Bool)

(assert (=> b!4086474 (= e!2536202 (and tp!1237221 tp!1237220))))

(declare-fun b!4086476 () Bool)

(declare-fun tp!1237219 () Bool)

(declare-fun tp!1237223 () Bool)

(assert (=> b!4086476 (= e!2536202 (and tp!1237219 tp!1237223))))

(assert (=> b!4085775 (= tp!1237097 e!2536202)))

(declare-fun b!4086473 () Bool)

(assert (=> b!4086473 (= e!2536202 tp_is_empty!20965)))

(assert (= (and b!4085775 ((_ is ElementMatch!11981) (reg!12310 (regex!7076 (h!49219 rules!3870))))) b!4086473))

(assert (= (and b!4085775 ((_ is Concat!19288) (reg!12310 (regex!7076 (h!49219 rules!3870))))) b!4086474))

(assert (= (and b!4085775 ((_ is Star!11981) (reg!12310 (regex!7076 (h!49219 rules!3870))))) b!4086475))

(assert (= (and b!4085775 ((_ is Union!11981) (reg!12310 (regex!7076 (h!49219 rules!3870))))) b!4086476))

(declare-fun b!4086479 () Bool)

(declare-fun e!2536203 () Bool)

(declare-fun tp!1237227 () Bool)

(assert (=> b!4086479 (= e!2536203 tp!1237227)))

(declare-fun b!4086478 () Bool)

(declare-fun tp!1237226 () Bool)

(declare-fun tp!1237225 () Bool)

(assert (=> b!4086478 (= e!2536203 (and tp!1237226 tp!1237225))))

(declare-fun b!4086480 () Bool)

(declare-fun tp!1237224 () Bool)

(declare-fun tp!1237228 () Bool)

(assert (=> b!4086480 (= e!2536203 (and tp!1237224 tp!1237228))))

(assert (=> b!4085770 (= tp!1237091 e!2536203)))

(declare-fun b!4086477 () Bool)

(assert (=> b!4086477 (= e!2536203 tp_is_empty!20965)))

(assert (= (and b!4085770 ((_ is ElementMatch!11981) (reg!12310 (regex!7076 r!4213)))) b!4086477))

(assert (= (and b!4085770 ((_ is Concat!19288) (reg!12310 (regex!7076 r!4213)))) b!4086478))

(assert (= (and b!4085770 ((_ is Star!11981) (reg!12310 (regex!7076 r!4213)))) b!4086479))

(assert (= (and b!4085770 ((_ is Union!11981) (reg!12310 (regex!7076 r!4213)))) b!4086480))

(declare-fun b!4086483 () Bool)

(declare-fun e!2536204 () Bool)

(declare-fun tp!1237232 () Bool)

(assert (=> b!4086483 (= e!2536204 tp!1237232)))

(declare-fun b!4086482 () Bool)

(declare-fun tp!1237231 () Bool)

(declare-fun tp!1237230 () Bool)

(assert (=> b!4086482 (= e!2536204 (and tp!1237231 tp!1237230))))

(declare-fun b!4086484 () Bool)

(declare-fun tp!1237229 () Bool)

(declare-fun tp!1237233 () Bool)

(assert (=> b!4086484 (= e!2536204 (and tp!1237229 tp!1237233))))

(assert (=> b!4085771 (= tp!1237088 e!2536204)))

(declare-fun b!4086481 () Bool)

(assert (=> b!4086481 (= e!2536204 tp_is_empty!20965)))

(assert (= (and b!4085771 ((_ is ElementMatch!11981) (regOne!24475 (regex!7076 r!4213)))) b!4086481))

(assert (= (and b!4085771 ((_ is Concat!19288) (regOne!24475 (regex!7076 r!4213)))) b!4086482))

(assert (= (and b!4085771 ((_ is Star!11981) (regOne!24475 (regex!7076 r!4213)))) b!4086483))

(assert (= (and b!4085771 ((_ is Union!11981) (regOne!24475 (regex!7076 r!4213)))) b!4086484))

(declare-fun b!4086487 () Bool)

(declare-fun e!2536205 () Bool)

(declare-fun tp!1237237 () Bool)

(assert (=> b!4086487 (= e!2536205 tp!1237237)))

(declare-fun b!4086486 () Bool)

(declare-fun tp!1237236 () Bool)

(declare-fun tp!1237235 () Bool)

(assert (=> b!4086486 (= e!2536205 (and tp!1237236 tp!1237235))))

(declare-fun b!4086488 () Bool)

(declare-fun tp!1237234 () Bool)

(declare-fun tp!1237238 () Bool)

(assert (=> b!4086488 (= e!2536205 (and tp!1237234 tp!1237238))))

(assert (=> b!4085771 (= tp!1237092 e!2536205)))

(declare-fun b!4086485 () Bool)

(assert (=> b!4086485 (= e!2536205 tp_is_empty!20965)))

(assert (= (and b!4085771 ((_ is ElementMatch!11981) (regTwo!24475 (regex!7076 r!4213)))) b!4086485))

(assert (= (and b!4085771 ((_ is Concat!19288) (regTwo!24475 (regex!7076 r!4213)))) b!4086486))

(assert (= (and b!4085771 ((_ is Star!11981) (regTwo!24475 (regex!7076 r!4213)))) b!4086487))

(assert (= (and b!4085771 ((_ is Union!11981) (regTwo!24475 (regex!7076 r!4213)))) b!4086488))

(declare-fun b!4086491 () Bool)

(declare-fun e!2536206 () Bool)

(declare-fun tp!1237242 () Bool)

(assert (=> b!4086491 (= e!2536206 tp!1237242)))

(declare-fun b!4086490 () Bool)

(declare-fun tp!1237241 () Bool)

(declare-fun tp!1237240 () Bool)

(assert (=> b!4086490 (= e!2536206 (and tp!1237241 tp!1237240))))

(declare-fun b!4086492 () Bool)

(declare-fun tp!1237239 () Bool)

(declare-fun tp!1237243 () Bool)

(assert (=> b!4086492 (= e!2536206 (and tp!1237239 tp!1237243))))

(assert (=> b!4085769 (= tp!1237090 e!2536206)))

(declare-fun b!4086489 () Bool)

(assert (=> b!4086489 (= e!2536206 tp_is_empty!20965)))

(assert (= (and b!4085769 ((_ is ElementMatch!11981) (regOne!24474 (regex!7076 r!4213)))) b!4086489))

(assert (= (and b!4085769 ((_ is Concat!19288) (regOne!24474 (regex!7076 r!4213)))) b!4086490))

(assert (= (and b!4085769 ((_ is Star!11981) (regOne!24474 (regex!7076 r!4213)))) b!4086491))

(assert (= (and b!4085769 ((_ is Union!11981) (regOne!24474 (regex!7076 r!4213)))) b!4086492))

(declare-fun b!4086495 () Bool)

(declare-fun e!2536207 () Bool)

(declare-fun tp!1237247 () Bool)

(assert (=> b!4086495 (= e!2536207 tp!1237247)))

(declare-fun b!4086494 () Bool)

(declare-fun tp!1237246 () Bool)

(declare-fun tp!1237245 () Bool)

(assert (=> b!4086494 (= e!2536207 (and tp!1237246 tp!1237245))))

(declare-fun b!4086496 () Bool)

(declare-fun tp!1237244 () Bool)

(declare-fun tp!1237248 () Bool)

(assert (=> b!4086496 (= e!2536207 (and tp!1237244 tp!1237248))))

(assert (=> b!4085769 (= tp!1237089 e!2536207)))

(declare-fun b!4086493 () Bool)

(assert (=> b!4086493 (= e!2536207 tp_is_empty!20965)))

(assert (= (and b!4085769 ((_ is ElementMatch!11981) (regTwo!24474 (regex!7076 r!4213)))) b!4086493))

(assert (= (and b!4085769 ((_ is Concat!19288) (regTwo!24474 (regex!7076 r!4213)))) b!4086494))

(assert (= (and b!4085769 ((_ is Star!11981) (regTwo!24474 (regex!7076 r!4213)))) b!4086495))

(assert (= (and b!4085769 ((_ is Union!11981) (regTwo!24474 (regex!7076 r!4213)))) b!4086496))

(declare-fun e!2536209 () Bool)

(declare-fun tp!1237250 () Bool)

(declare-fun b!4086497 () Bool)

(declare-fun tp!1237249 () Bool)

(assert (=> b!4086497 (= e!2536209 (and (inv!58484 (left!32919 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))))) tp!1237249 (inv!58484 (right!33249 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))))) tp!1237250))))

(declare-fun b!4086499 () Bool)

(declare-fun e!2536208 () Bool)

(declare-fun tp!1237251 () Bool)

(assert (=> b!4086499 (= e!2536208 tp!1237251)))

(declare-fun b!4086498 () Bool)

(assert (=> b!4086498 (= e!2536209 (and (inv!58490 (xs!16593 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))))) e!2536208))))

(assert (=> b!4085568 (= tp!1237023 (and (inv!58484 (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226)))) e!2536209))))

(assert (= (and b!4085568 ((_ is Node!13287) (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))))) b!4086497))

(assert (= b!4086498 b!4086499))

(assert (= (and b!4085568 ((_ is Leaf!20540) (c!704279 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))))) b!4086498))

(declare-fun m!4693411 () Bool)

(assert (=> b!4086497 m!4693411))

(declare-fun m!4693413 () Bool)

(assert (=> b!4086497 m!4693413))

(declare-fun m!4693415 () Bool)

(assert (=> b!4086498 m!4693415))

(assert (=> b!4085568 m!4692411))

(declare-fun b!4086500 () Bool)

(declare-fun e!2536210 () Bool)

(declare-fun tp!1237252 () Bool)

(assert (=> b!4086500 (= e!2536210 (and tp_is_empty!20965 tp!1237252))))

(assert (=> b!4085746 (= tp!1237065 e!2536210)))

(assert (= (and b!4085746 ((_ is Cons!43798) (t!338081 (t!338081 input!3411)))) b!4086500))

(declare-fun b_lambda!119649 () Bool)

(assert (= b_lambda!119607 (or d!1213097 b_lambda!119649)))

(declare-fun bs!593122 () Bool)

(declare-fun d!1213475 () Bool)

(assert (= bs!593122 (and d!1213475 d!1213097)))

(assert (=> bs!593122 (= (dynLambda!18703 lambda!127893 lt!1461226) (= (list!16266 (dynLambda!18702 (toChars!9515 (transformation!7076 r!4213)) (dynLambda!18698 (toValue!9656 (transformation!7076 r!4213)) lt!1461226))) (list!16266 lt!1461226)))))

(declare-fun b_lambda!119659 () Bool)

(assert (=> (not b_lambda!119659) (not bs!593122)))

(assert (=> bs!593122 t!338100))

(declare-fun b_and!314659 () Bool)

(assert (= b_and!314611 (and (=> t!338100 result!297748) b_and!314659)))

(assert (=> bs!593122 t!338102))

(declare-fun b_and!314661 () Bool)

(assert (= b_and!314613 (and (=> t!338102 result!297752) b_and!314661)))

(assert (=> bs!593122 t!338117))

(declare-fun b_and!314663 () Bool)

(assert (= b_and!314615 (and (=> t!338117 result!297776) b_and!314663)))

(assert (=> bs!593122 t!338224))

(declare-fun b_and!314665 () Bool)

(assert (= b_and!314657 (and (=> t!338224 result!297888) b_and!314665)))

(declare-fun b_lambda!119661 () Bool)

(assert (=> (not b_lambda!119661) (not bs!593122)))

(assert (=> bs!593122 t!338084))

(declare-fun b_and!314667 () Bool)

(assert (= b_and!314649 (and (=> t!338084 result!297726) b_and!314667)))

(assert (=> bs!593122 t!338086))

(declare-fun b_and!314669 () Bool)

(assert (= b_and!314651 (and (=> t!338086 result!297730) b_and!314669)))

(assert (=> bs!593122 t!338115))

(declare-fun b_and!314671 () Bool)

(assert (= b_and!314653 (and (=> t!338115 result!297774) b_and!314671)))

(assert (=> bs!593122 t!338212))

(declare-fun b_and!314673 () Bool)

(assert (= b_and!314655 (and (=> t!338212 result!297876) b_and!314673)))

(assert (=> bs!593122 m!4692259))

(assert (=> bs!593122 m!4692415))

(assert (=> bs!593122 m!4692259))

(assert (=> bs!593122 m!4692415))

(assert (=> bs!593122 m!4692421))

(assert (=> bs!593122 m!4692417))

(assert (=> d!1213225 d!1213475))

(declare-fun b_lambda!119651 () Bool)

(assert (= b_lambda!119623 (or (and b!4085383 b_free!114145) (and b!4085381 b_free!114149 (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213)))) (and b!4085757 b_free!114157 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 r!4213)))) (and b!4086464 b_free!114165 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toValue!9656 (transformation!7076 r!4213)))) b_lambda!119651)))

(declare-fun b_lambda!119653 () Bool)

(assert (= b_lambda!119627 (or (and b!4085383 b_free!114147) (and b!4085381 b_free!114151 (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 r!4213)))) (and b!4085757 b_free!114159 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toChars!9515 (transformation!7076 r!4213)))) (and b!4086464 b_free!114167 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toChars!9515 (transformation!7076 r!4213)))) b_lambda!119653)))

(declare-fun b_lambda!119655 () Bool)

(assert (= b_lambda!119595 (or (and b!4085383 b_free!114147 (= (toChars!9515 (transformation!7076 r!4213)) (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))))) (and b!4085381 b_free!114151 (= (toChars!9515 (transformation!7076 (h!49219 rules!3870))) (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))))) (and b!4085757 b_free!114159 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))))) (and b!4086464 b_free!114167 (= (toChars!9515 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toChars!9515 (transformation!7076 (rule!10204 lt!1461225))))) b_lambda!119655)))

(declare-fun b_lambda!119657 () Bool)

(assert (= b_lambda!119629 (or (and b!4085383 b_free!114145) (and b!4085381 b_free!114149 (= (toValue!9656 (transformation!7076 (h!49219 rules!3870))) (toValue!9656 (transformation!7076 r!4213)))) (and b!4085757 b_free!114157 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 rules!3870)))) (toValue!9656 (transformation!7076 r!4213)))) (and b!4086464 b_free!114165 (= (toValue!9656 (transformation!7076 (h!49219 (t!338082 (t!338082 rules!3870))))) (toValue!9656 (transformation!7076 r!4213)))) b_lambda!119657)))

(check-sat (not b!4086442) (not bm!288838) (not b!4086215) (not b!4086471) (not b!4086500) (not b_lambda!119597) (not b!4086082) (not b!4086339) (not d!1213221) b_and!314661 (not tb!245457) (not b!4085857) (not b!4086024) (not b!4086472) (not b!4085859) (not b!4086053) (not d!1213393) (not b!4086480) b_and!314665 (not b!4085568) (not b!4086086) (not b!4086034) (not b!4086475) (not b!4085897) (not b!4086284) (not b!4086181) b_and!314667 (not b!4086486) (not b_lambda!119657) (not b!4086444) (not d!1213217) (not d!1213395) (not b!4086499) (not b!4086059) b_and!314659 b_and!314673 (not b!4086410) (not tb!245427) (not d!1213455) (not bm!288907) (not b!4086335) (not b!4086065) (not b!4085888) (not b!4086420) (not b!4086450) (not bm!288840) (not b!4085890) (not b!4086490) (not b!4085823) (not b!4086084) (not b!4086468) (not b_lambda!119659) (not b!4086341) (not b_lambda!119601) (not b!4086441) (not b!4086476) (not d!1213447) (not b!4086269) (not b_lambda!119651) (not b!4086230) (not b!4086425) (not b!4086466) (not b!4086204) (not b!4086488) (not b!4086461) (not tb!245421) (not b_next!114861) (not b!4086459) (not b_next!114849) (not b!4086415) (not b_next!114869) (not b!4086038) (not d!1213407) (not b!4086478) (not bm!288811) (not b!4086483) (not b!4086462) (not d!1213445) (not bm!288872) (not d!1213255) (not b!4086482) (not d!1213427) (not b!4086123) (not b!4085824) (not bm!288846) (not b!4086285) (not d!1213469) (not bm!288843) (not b!4086496) (not b!4085901) (not b_next!114871) (not b!4086347) (not b!4086440) (not d!1213249) (not b_lambda!119649) (not b!4086487) (not b_lambda!119647) (not b!4086492) (not d!1213195) (not b!4086497) (not d!1213207) (not b_next!114855) (not b!4086120) (not b!4086411) (not b!4086205) (not d!1213409) (not b_lambda!119655) (not b!4086484) (not bm!288839) (not bm!288809) (not b_next!114863) (not b!4086437) (not d!1213219) (not bm!288895) (not bm!288842) (not d!1213325) (not b!4086083) (not d!1213345) (not b!4086020) (not b!4085666) (not b_lambda!119605) (not b!4086434) (not bm!288841) (not b!4086445) (not b_next!114851) (not b!4086337) (not d!1213337) (not tb!245475) (not b!4086426) (not b!4086040) tp_is_empty!20965 (not b!4085853) (not d!1213191) (not d!1213335) (not b!4086088) (not d!1213209) (not b!4086211) (not b!4086491) (not b!4086495) (not b!4086474) (not b!4085905) (not b!4086057) (not b!4086216) (not b!4086448) (not b_lambda!119599) (not b!4086045) (not d!1213365) (not bm!288847) (not b!4085854) (not b!4086446) (not d!1213457) (not b!4085830) (not b!4086014) (not b!4086422) (not b!4086270) (not b!4086041) (not d!1213433) (not b!4086419) (not b!4086423) (not tb!245463) (not b!4086268) (not b!4086036) (not b!4086085) b_and!314663 (not b!4086055) (not b!4086467) (not bm!288906) (not b!4086449) (not d!1213317) (not d!1213461) (not b!4085903) (not b!4086498) b_and!314669 (not d!1213453) (not d!1213405) (not b!4086421) (not d!1213231) (not b!4086394) (not b!4086022) (not b!4086089) (not b!4085828) (not b!4085865) (not d!1213371) (not b!4086479) (not d!1213473) (not b!4086147) (not b!4085841) (not bs!593122) (not b!4085851) (not bm!288845) (not d!1213437) (not d!1213329) (not b!4086329) (not b!4086416) (not b!4086436) (not bm!288844) (not b_lambda!119603) (not b!4086417) (not d!1213351) (not d!1213213) (not b!4086336) (not b!4086054) (not b!4086087) (not d!1213313) (not b!4085831) (not d!1213197) (not b_lambda!119621) (not b!4085855) (not b!4086414) (not b!4086463) (not d!1213459) (not b!4086187) (not d!1213339) (not b!4086494) (not b!4086432) (not b!4086470) (not d!1213225) (not bm!288870) (not b_lambda!119653) (not d!1213205) b_and!314671 (not b_lambda!119661) (not b!4086027) (not d!1213251) (not b!4085911) (not b!4086460) (not b!4085900) (not d!1213343) (not b!4086179) (not b!4086213) (not b_next!114853) (not b!4086148) (not b!4086438) (not d!1213241) (not b!4086029) (not tb!245505))
(check-sat b_and!314661 b_and!314665 b_and!314667 (not b_next!114869) (not b_next!114871) (not b_next!114855) (not b_next!114863) (not b_next!114851) b_and!314663 b_and!314669 b_and!314671 (not b_next!114853) b_and!314659 b_and!314673 (not b_next!114861) (not b_next!114849))
