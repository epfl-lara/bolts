; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!384498 () Bool)

(assert start!384498)

(declare-fun b!4073455 () Bool)

(declare-fun b_free!113433 () Bool)

(declare-fun b_next!114137 () Bool)

(assert (=> b!4073455 (= b_free!113433 (not b_next!114137))))

(declare-fun tp!1232967 () Bool)

(declare-fun b_and!313083 () Bool)

(assert (=> b!4073455 (= tp!1232967 b_and!313083)))

(declare-fun b_free!113435 () Bool)

(declare-fun b_next!114139 () Bool)

(assert (=> b!4073455 (= b_free!113435 (not b_next!114139))))

(declare-fun tp!1232969 () Bool)

(declare-fun b_and!313085 () Bool)

(assert (=> b!4073455 (= tp!1232969 b_and!313085)))

(declare-fun b!4073462 () Bool)

(declare-fun b_free!113437 () Bool)

(declare-fun b_next!114141 () Bool)

(assert (=> b!4073462 (= b_free!113437 (not b_next!114141))))

(declare-fun tp!1232968 () Bool)

(declare-fun b_and!313087 () Bool)

(assert (=> b!4073462 (= tp!1232968 b_and!313087)))

(declare-fun b_free!113439 () Bool)

(declare-fun b_next!114143 () Bool)

(assert (=> b!4073462 (= b_free!113439 (not b_next!114143))))

(declare-fun tp!1232970 () Bool)

(declare-fun b_and!313089 () Bool)

(assert (=> b!4073462 (= tp!1232970 b_and!313089)))

(declare-fun b!4073453 () Bool)

(declare-fun e!2528223 () Bool)

(declare-fun e!2528225 () Bool)

(declare-fun tp!1232965 () Bool)

(assert (=> b!4073453 (= e!2528223 (and e!2528225 tp!1232965))))

(declare-fun tp!1232964 () Bool)

(declare-fun e!2528231 () Bool)

(declare-datatypes ((List!43684 0))(
  ( (Nil!43560) (Cons!43560 (h!48980 (_ BitVec 16)) (t!337187 List!43684)) )
))
(declare-datatypes ((TokenValue!7239 0))(
  ( (FloatLiteralValue!14478 (text!51118 List!43684)) (TokenValueExt!7238 (__x!26695 Int)) (Broken!36195 (value!220384 List!43684)) (Object!7362) (End!7239) (Def!7239) (Underscore!7239) (Match!7239) (Else!7239) (Error!7239) (Case!7239) (If!7239) (Extends!7239) (Abstract!7239) (Class!7239) (Val!7239) (DelimiterValue!14478 (del!7299 List!43684)) (KeywordValue!7245 (value!220385 List!43684)) (CommentValue!14478 (value!220386 List!43684)) (WhitespaceValue!14478 (value!220387 List!43684)) (IndentationValue!7239 (value!220388 List!43684)) (String!49946) (Int32!7239) (Broken!36196 (value!220389 List!43684)) (Boolean!7240) (Unit!63111) (OperatorValue!7242 (op!7299 List!43684)) (IdentifierValue!14478 (value!220390 List!43684)) (IdentifierValue!14479 (value!220391 List!43684)) (WhitespaceValue!14479 (value!220392 List!43684)) (True!14478) (False!14478) (Broken!36197 (value!220393 List!43684)) (Broken!36198 (value!220394 List!43684)) (True!14479) (RightBrace!7239) (RightBracket!7239) (Colon!7239) (Null!7239) (Comma!7239) (LeftBracket!7239) (False!14479) (LeftBrace!7239) (ImaginaryLiteralValue!7239 (text!51119 List!43684)) (StringLiteralValue!21717 (value!220395 List!43684)) (EOFValue!7239 (value!220396 List!43684)) (IdentValue!7239 (value!220397 List!43684)) (DelimiterValue!14479 (value!220398 List!43684)) (DedentValue!7239 (value!220399 List!43684)) (NewLineValue!7239 (value!220400 List!43684)) (IntegerValue!21717 (value!220401 (_ BitVec 32)) (text!51120 List!43684)) (IntegerValue!21718 (value!220402 Int) (text!51121 List!43684)) (Times!7239) (Or!7239) (Equal!7239) (Minus!7239) (Broken!36199 (value!220403 List!43684)) (And!7239) (Div!7239) (LessEqual!7239) (Mod!7239) (Concat!19153) (Not!7239) (Plus!7239) (SpaceValue!7239 (value!220404 List!43684)) (IntegerValue!21719 (value!220405 Int) (text!51122 List!43684)) (StringLiteralValue!21718 (text!51123 List!43684)) (FloatLiteralValue!14479 (text!51124 List!43684)) (BytesLiteralValue!7239 (value!220406 List!43684)) (CommentValue!14479 (value!220407 List!43684)) (StringLiteralValue!21719 (value!220408 List!43684)) (ErrorTokenValue!7239 (msg!7300 List!43684)) )
))
(declare-datatypes ((C!24014 0))(
  ( (C!24015 (val!14117 Int)) )
))
(declare-datatypes ((Regex!11914 0))(
  ( (ElementMatch!11914 (c!702919 C!24014)) (Concat!19154 (regOne!24340 Regex!11914) (regTwo!24340 Regex!11914)) (EmptyExpr!11914) (Star!11914 (reg!12243 Regex!11914)) (EmptyLang!11914) (Union!11914 (regOne!24341 Regex!11914) (regTwo!24341 Regex!11914)) )
))
(declare-datatypes ((String!49947 0))(
  ( (String!49948 (value!220409 String)) )
))
(declare-datatypes ((List!43685 0))(
  ( (Nil!43561) (Cons!43561 (h!48981 C!24014) (t!337188 List!43685)) )
))
(declare-datatypes ((IArray!26445 0))(
  ( (IArray!26446 (innerList!13280 List!43685)) )
))
(declare-datatypes ((Conc!13220 0))(
  ( (Node!13220 (left!32747 Conc!13220) (right!33077 Conc!13220) (csize!26670 Int) (cheight!13431 Int)) (Leaf!20440 (xs!16526 IArray!26445) (csize!26671 Int)) (Empty!13220) )
))
(declare-datatypes ((BalanceConc!26034 0))(
  ( (BalanceConc!26035 (c!702920 Conc!13220)) )
))
(declare-datatypes ((TokenValueInjection!13906 0))(
  ( (TokenValueInjection!13907 (toValue!9573 Int) (toChars!9432 Int)) )
))
(declare-datatypes ((Rule!13818 0))(
  ( (Rule!13819 (regex!7009 Regex!11914) (tag!7869 String!49947) (isSeparator!7009 Bool) (transformation!7009 TokenValueInjection!13906)) )
))
(declare-datatypes ((List!43686 0))(
  ( (Nil!43562) (Cons!43562 (h!48982 Rule!13818) (t!337189 List!43686)) )
))
(declare-fun rules!3870 () List!43686)

(declare-fun b!4073454 () Bool)

(declare-fun inv!58211 (String!49947) Bool)

(declare-fun inv!58214 (TokenValueInjection!13906) Bool)

(assert (=> b!4073454 (= e!2528225 (and tp!1232964 (inv!58211 (tag!7869 (h!48982 rules!3870))) (inv!58214 (transformation!7009 (h!48982 rules!3870))) e!2528231))))

(declare-fun e!2528224 () Bool)

(assert (=> b!4073455 (= e!2528224 (and tp!1232967 tp!1232969))))

(declare-fun b!4073456 () Bool)

(declare-fun e!2528230 () Bool)

(declare-fun e!2528219 () Bool)

(assert (=> b!4073456 (= e!2528230 e!2528219)))

(declare-fun res!1663435 () Bool)

(assert (=> b!4073456 (=> res!1663435 e!2528219)))

(declare-fun isEmpty!25998 (List!43686) Bool)

(assert (=> b!4073456 (= res!1663435 (isEmpty!25998 (t!337189 rules!3870)))))

(declare-datatypes ((LexerInterface!6598 0))(
  ( (LexerInterfaceExt!6595 (__x!26696 Int)) (Lexer!6596) )
))
(declare-fun thiss!26199 () LexerInterface!6598)

(declare-fun rulesInvariant!5941 (LexerInterface!6598 List!43686) Bool)

(assert (=> b!4073456 (rulesInvariant!5941 thiss!26199 (t!337189 rules!3870))))

(declare-datatypes ((Unit!63112 0))(
  ( (Unit!63113) )
))
(declare-fun lt!1457900 () Unit!63112)

(declare-fun lemmaInvariantOnRulesThenOnTail!729 (LexerInterface!6598 Rule!13818 List!43686) Unit!63112)

(assert (=> b!4073456 (= lt!1457900 (lemmaInvariantOnRulesThenOnTail!729 thiss!26199 (h!48982 rules!3870) (t!337189 rules!3870)))))

(declare-fun res!1663436 () Bool)

(declare-fun e!2528228 () Bool)

(assert (=> start!384498 (=> (not res!1663436) (not e!2528228))))

(assert (=> start!384498 (= res!1663436 (is-Lexer!6596 thiss!26199))))

(assert (=> start!384498 e!2528228))

(assert (=> start!384498 true))

(declare-fun e!2528220 () Bool)

(assert (=> start!384498 e!2528220))

(assert (=> start!384498 e!2528223))

(declare-fun e!2528229 () Bool)

(assert (=> start!384498 e!2528229))

(declare-fun e!2528227 () Bool)

(assert (=> start!384498 e!2528227))

(declare-fun e!2528222 () Bool)

(assert (=> start!384498 e!2528222))

(declare-fun b!4073457 () Bool)

(declare-fun tp_is_empty!20831 () Bool)

(declare-fun tp!1232966 () Bool)

(assert (=> b!4073457 (= e!2528227 (and tp_is_empty!20831 tp!1232966))))

(declare-fun b!4073458 () Bool)

(declare-fun e!2528233 () Bool)

(assert (=> b!4073458 (= e!2528233 (not e!2528230))))

(declare-fun res!1663444 () Bool)

(assert (=> b!4073458 (=> res!1663444 e!2528230)))

(declare-fun r!4213 () Rule!13818)

(declare-fun p!2988 () List!43685)

(declare-fun matchR!5859 (Regex!11914 List!43685) Bool)

(assert (=> b!4073458 (= res!1663444 (not (matchR!5859 (regex!7009 r!4213) p!2988)))))

(declare-fun ruleValid!2933 (LexerInterface!6598 Rule!13818) Bool)

(assert (=> b!4073458 (ruleValid!2933 thiss!26199 r!4213)))

(declare-fun lt!1457905 () Unit!63112)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2001 (LexerInterface!6598 Rule!13818 List!43686) Unit!63112)

(assert (=> b!4073458 (= lt!1457905 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2001 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4073459 () Bool)

(declare-fun rulesValidInductive!2570 (LexerInterface!6598 List!43686) Bool)

(assert (=> b!4073459 (= e!2528219 (rulesValidInductive!2570 thiss!26199 (t!337189 rules!3870)))))

(declare-fun e!2528226 () Bool)

(assert (=> b!4073459 e!2528226))

(declare-fun res!1663438 () Bool)

(assert (=> b!4073459 (=> res!1663438 e!2528226)))

(declare-datatypes ((Token!13144 0))(
  ( (Token!13145 (value!220410 TokenValue!7239) (rule!10113 Rule!13818) (size!32549 Int) (originalCharacters!7603 List!43685)) )
))
(declare-datatypes ((tuple2!42560 0))(
  ( (tuple2!42561 (_1!24414 Token!13144) (_2!24414 List!43685)) )
))
(declare-datatypes ((Option!9417 0))(
  ( (None!9416) (Some!9416 (v!39854 tuple2!42560)) )
))
(declare-fun lt!1457902 () Option!9417)

(declare-fun isEmpty!25999 (Option!9417) Bool)

(assert (=> b!4073459 (= res!1663438 (isEmpty!25999 lt!1457902))))

(declare-fun input!3411 () List!43685)

(declare-fun maxPrefix!3890 (LexerInterface!6598 List!43686 List!43685) Option!9417)

(assert (=> b!4073459 (= lt!1457902 (maxPrefix!3890 thiss!26199 (t!337189 rules!3870) input!3411))))

(declare-fun lt!1457903 () Unit!63112)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!3 (LexerInterface!6598 Rule!13818 List!43686 List!43685) Unit!63112)

(assert (=> b!4073459 (= lt!1457903 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!3 thiss!26199 (h!48982 rules!3870) (t!337189 rules!3870) input!3411))))

(declare-fun b!4073460 () Bool)

(declare-fun res!1663437 () Bool)

(assert (=> b!4073460 (=> (not res!1663437) (not e!2528228))))

(declare-fun contains!8676 (List!43686 Rule!13818) Bool)

(assert (=> b!4073460 (= res!1663437 (contains!8676 rules!3870 r!4213))))

(declare-fun b!4073461 () Bool)

(declare-fun res!1663442 () Bool)

(assert (=> b!4073461 (=> (not res!1663442) (not e!2528228))))

(assert (=> b!4073461 (= res!1663442 (not (isEmpty!25998 rules!3870)))))

(assert (=> b!4073462 (= e!2528231 (and tp!1232968 tp!1232970))))

(declare-fun b!4073463 () Bool)

(declare-fun tp!1232971 () Bool)

(assert (=> b!4073463 (= e!2528229 (and tp_is_empty!20831 tp!1232971))))

(declare-fun b!4073464 () Bool)

(declare-fun res!1663445 () Bool)

(assert (=> b!4073464 (=> res!1663445 e!2528230)))

(assert (=> b!4073464 (= res!1663445 (or (not (is-Cons!43562 rules!3870)) (not (= (h!48982 rules!3870) r!4213))))))

(declare-fun b!4073465 () Bool)

(declare-fun res!1663439 () Bool)

(assert (=> b!4073465 (=> (not res!1663439) (not e!2528228))))

(assert (=> b!4073465 (= res!1663439 (rulesInvariant!5941 thiss!26199 rules!3870))))

(declare-fun b!4073466 () Bool)

(declare-fun get!14282 (Option!9417) tuple2!42560)

(assert (=> b!4073466 (= e!2528226 (not (= (rule!10113 (_1!24414 (get!14282 lt!1457902))) (h!48982 rules!3870))))))

(declare-fun b!4073467 () Bool)

(declare-fun tp!1232972 () Bool)

(assert (=> b!4073467 (= e!2528220 (and tp_is_empty!20831 tp!1232972))))

(declare-fun b!4073468 () Bool)

(declare-fun res!1663441 () Bool)

(assert (=> b!4073468 (=> (not res!1663441) (not e!2528228))))

(declare-fun isEmpty!26000 (List!43685) Bool)

(assert (=> b!4073468 (= res!1663441 (not (isEmpty!26000 p!2988)))))

(declare-fun tp!1232963 () Bool)

(declare-fun b!4073469 () Bool)

(assert (=> b!4073469 (= e!2528222 (and tp!1232963 (inv!58211 (tag!7869 r!4213)) (inv!58214 (transformation!7009 r!4213)) e!2528224))))

(declare-fun b!4073470 () Bool)

(declare-fun res!1663440 () Bool)

(assert (=> b!4073470 (=> (not res!1663440) (not e!2528228))))

(declare-fun suffix!1518 () List!43685)

(declare-fun ++!11415 (List!43685 List!43685) List!43685)

(assert (=> b!4073470 (= res!1663440 (= input!3411 (++!11415 p!2988 suffix!1518)))))

(declare-fun b!4073471 () Bool)

(assert (=> b!4073471 (= e!2528228 e!2528233)))

(declare-fun res!1663443 () Bool)

(assert (=> b!4073471 (=> (not res!1663443) (not e!2528233))))

(declare-fun lt!1457904 () BalanceConc!26034)

(declare-fun apply!10192 (TokenValueInjection!13906 BalanceConc!26034) TokenValue!7239)

(declare-fun size!32550 (List!43685) Int)

(assert (=> b!4073471 (= res!1663443 (= (maxPrefix!3890 thiss!26199 rules!3870 input!3411) (Some!9416 (tuple2!42561 (Token!13145 (apply!10192 (transformation!7009 r!4213) lt!1457904) r!4213 (size!32550 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1457901 () Unit!63112)

(declare-fun lemmaSemiInverse!1976 (TokenValueInjection!13906 BalanceConc!26034) Unit!63112)

(assert (=> b!4073471 (= lt!1457901 (lemmaSemiInverse!1976 (transformation!7009 r!4213) lt!1457904))))

(declare-fun seqFromList!5226 (List!43685) BalanceConc!26034)

(assert (=> b!4073471 (= lt!1457904 (seqFromList!5226 p!2988))))

(assert (= (and start!384498 res!1663436) b!4073461))

(assert (= (and b!4073461 res!1663442) b!4073465))

(assert (= (and b!4073465 res!1663439) b!4073460))

(assert (= (and b!4073460 res!1663437) b!4073470))

(assert (= (and b!4073470 res!1663440) b!4073468))

(assert (= (and b!4073468 res!1663441) b!4073471))

(assert (= (and b!4073471 res!1663443) b!4073458))

(assert (= (and b!4073458 (not res!1663444)) b!4073464))

(assert (= (and b!4073464 (not res!1663445)) b!4073456))

(assert (= (and b!4073456 (not res!1663435)) b!4073459))

(assert (= (and b!4073459 (not res!1663438)) b!4073466))

(assert (= (and start!384498 (is-Cons!43561 suffix!1518)) b!4073467))

(assert (= b!4073454 b!4073462))

(assert (= b!4073453 b!4073454))

(assert (= (and start!384498 (is-Cons!43562 rules!3870)) b!4073453))

(assert (= (and start!384498 (is-Cons!43561 p!2988)) b!4073463))

(assert (= (and start!384498 (is-Cons!43561 input!3411)) b!4073457))

(assert (= b!4073469 b!4073455))

(assert (= start!384498 b!4073469))

(declare-fun m!4682225 () Bool)

(assert (=> b!4073469 m!4682225))

(declare-fun m!4682227 () Bool)

(assert (=> b!4073469 m!4682227))

(declare-fun m!4682229 () Bool)

(assert (=> b!4073461 m!4682229))

(declare-fun m!4682231 () Bool)

(assert (=> b!4073456 m!4682231))

(declare-fun m!4682233 () Bool)

(assert (=> b!4073456 m!4682233))

(declare-fun m!4682235 () Bool)

(assert (=> b!4073456 m!4682235))

(declare-fun m!4682237 () Bool)

(assert (=> b!4073459 m!4682237))

(declare-fun m!4682239 () Bool)

(assert (=> b!4073459 m!4682239))

(declare-fun m!4682241 () Bool)

(assert (=> b!4073459 m!4682241))

(declare-fun m!4682243 () Bool)

(assert (=> b!4073459 m!4682243))

(declare-fun m!4682245 () Bool)

(assert (=> b!4073465 m!4682245))

(declare-fun m!4682247 () Bool)

(assert (=> b!4073466 m!4682247))

(declare-fun m!4682249 () Bool)

(assert (=> b!4073471 m!4682249))

(declare-fun m!4682251 () Bool)

(assert (=> b!4073471 m!4682251))

(declare-fun m!4682253 () Bool)

(assert (=> b!4073471 m!4682253))

(declare-fun m!4682255 () Bool)

(assert (=> b!4073471 m!4682255))

(declare-fun m!4682257 () Bool)

(assert (=> b!4073471 m!4682257))

(declare-fun m!4682259 () Bool)

(assert (=> b!4073470 m!4682259))

(declare-fun m!4682261 () Bool)

(assert (=> b!4073460 m!4682261))

(declare-fun m!4682263 () Bool)

(assert (=> b!4073468 m!4682263))

(declare-fun m!4682265 () Bool)

(assert (=> b!4073458 m!4682265))

(declare-fun m!4682267 () Bool)

(assert (=> b!4073458 m!4682267))

(declare-fun m!4682269 () Bool)

(assert (=> b!4073458 m!4682269))

(declare-fun m!4682271 () Bool)

(assert (=> b!4073454 m!4682271))

(declare-fun m!4682273 () Bool)

(assert (=> b!4073454 m!4682273))

(push 1)

(assert (not b!4073463))

(assert b_and!313089)

(assert (not b!4073465))

(assert (not b_next!114143))

(assert b_and!313087)

(assert (not b_next!114141))

(assert (not b_next!114139))

(assert (not b_next!114137))

(assert (not b!4073468))

(assert (not b!4073471))

(assert (not b!4073466))

(assert (not b!4073460))

(assert (not b!4073457))

(assert (not b!4073469))

(assert b_and!313083)

(assert (not b!4073458))

(assert tp_is_empty!20831)

(assert (not b!4073453))

(assert (not b!4073454))

(assert (not b!4073470))

(assert b_and!313085)

(assert (not b!4073456))

(assert (not b!4073459))

(assert (not b!4073461))

(assert (not b!4073467))

(check-sat)

(pop 1)

(push 1)

(assert b_and!313089)

(assert (not b_next!114143))

(assert b_and!313087)

(assert (not b_next!114141))

(assert b_and!313083)

(assert (not b_next!114139))

(assert (not b_next!114137))

(assert b_and!313085)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1210612 () Bool)

(assert (=> d!1210612 (= (isEmpty!25998 rules!3870) (is-Nil!43562 rules!3870))))

(assert (=> b!4073461 d!1210612))

(declare-fun b!4073610 () Bool)

(declare-fun e!2528328 () Bool)

(assert (=> b!4073610 (= e!2528328 true)))

(declare-fun d!1210614 () Bool)

(assert (=> d!1210614 e!2528328))

(assert (= d!1210614 b!4073610))

(declare-fun order!22749 () Int)

(declare-fun order!22747 () Int)

(declare-fun lambda!127642 () Int)

(declare-fun dynLambda!18497 (Int Int) Int)

(declare-fun dynLambda!18498 (Int Int) Int)

(assert (=> b!4073610 (< (dynLambda!18497 order!22747 (toValue!9573 (transformation!7009 r!4213))) (dynLambda!18498 order!22749 lambda!127642))))

(declare-fun order!22751 () Int)

(declare-fun dynLambda!18499 (Int Int) Int)

(assert (=> b!4073610 (< (dynLambda!18499 order!22751 (toChars!9432 (transformation!7009 r!4213))) (dynLambda!18498 order!22749 lambda!127642))))

(declare-fun list!16221 (BalanceConc!26034) List!43685)

(declare-fun dynLambda!18500 (Int TokenValue!7239) BalanceConc!26034)

(declare-fun dynLambda!18501 (Int BalanceConc!26034) TokenValue!7239)

(assert (=> d!1210614 (= (list!16221 (dynLambda!18500 (toChars!9432 (transformation!7009 r!4213)) (dynLambda!18501 (toValue!9573 (transformation!7009 r!4213)) lt!1457904))) (list!16221 lt!1457904))))

(declare-fun lt!1457940 () Unit!63112)

(declare-fun ForallOf!838 (Int BalanceConc!26034) Unit!63112)

(assert (=> d!1210614 (= lt!1457940 (ForallOf!838 lambda!127642 lt!1457904))))

(assert (=> d!1210614 (= (lemmaSemiInverse!1976 (transformation!7009 r!4213) lt!1457904) lt!1457940)))

(declare-fun b_lambda!118999 () Bool)

(assert (=> (not b_lambda!118999) (not d!1210614)))

(declare-fun t!337194 () Bool)

(declare-fun tb!244729 () Bool)

(assert (=> (and b!4073455 (= (toChars!9432 (transformation!7009 r!4213)) (toChars!9432 (transformation!7009 r!4213))) t!337194) tb!244729))

(declare-fun e!2528331 () Bool)

(declare-fun tp!1233005 () Bool)

(declare-fun b!4073615 () Bool)

(declare-fun inv!58216 (Conc!13220) Bool)

(assert (=> b!4073615 (= e!2528331 (and (inv!58216 (c!702920 (dynLambda!18500 (toChars!9432 (transformation!7009 r!4213)) (dynLambda!18501 (toValue!9573 (transformation!7009 r!4213)) lt!1457904)))) tp!1233005))))

(declare-fun result!296694 () Bool)

(declare-fun inv!58217 (BalanceConc!26034) Bool)

(assert (=> tb!244729 (= result!296694 (and (inv!58217 (dynLambda!18500 (toChars!9432 (transformation!7009 r!4213)) (dynLambda!18501 (toValue!9573 (transformation!7009 r!4213)) lt!1457904))) e!2528331))))

(assert (= tb!244729 b!4073615))

(declare-fun m!4682371 () Bool)

(assert (=> b!4073615 m!4682371))

(declare-fun m!4682373 () Bool)

(assert (=> tb!244729 m!4682373))

(assert (=> d!1210614 t!337194))

(declare-fun b_and!313099 () Bool)

(assert (= b_and!313085 (and (=> t!337194 result!296694) b_and!313099)))

(declare-fun t!337196 () Bool)

(declare-fun tb!244731 () Bool)

(assert (=> (and b!4073462 (= (toChars!9432 (transformation!7009 (h!48982 rules!3870))) (toChars!9432 (transformation!7009 r!4213))) t!337196) tb!244731))

(declare-fun result!296698 () Bool)

(assert (= result!296698 result!296694))

(assert (=> d!1210614 t!337196))

(declare-fun b_and!313101 () Bool)

(assert (= b_and!313089 (and (=> t!337196 result!296698) b_and!313101)))

(declare-fun b_lambda!119001 () Bool)

(assert (=> (not b_lambda!119001) (not d!1210614)))

(declare-fun t!337198 () Bool)

(declare-fun tb!244733 () Bool)

(assert (=> (and b!4073455 (= (toValue!9573 (transformation!7009 r!4213)) (toValue!9573 (transformation!7009 r!4213))) t!337198) tb!244733))

(declare-fun result!296700 () Bool)

(declare-fun inv!21 (TokenValue!7239) Bool)

(assert (=> tb!244733 (= result!296700 (inv!21 (dynLambda!18501 (toValue!9573 (transformation!7009 r!4213)) lt!1457904)))))

(declare-fun m!4682375 () Bool)

(assert (=> tb!244733 m!4682375))

(assert (=> d!1210614 t!337198))

(declare-fun b_and!313103 () Bool)

(assert (= b_and!313083 (and (=> t!337198 result!296700) b_and!313103)))

(declare-fun tb!244735 () Bool)

(declare-fun t!337200 () Bool)

(assert (=> (and b!4073462 (= (toValue!9573 (transformation!7009 (h!48982 rules!3870))) (toValue!9573 (transformation!7009 r!4213))) t!337200) tb!244735))

(declare-fun result!296704 () Bool)

(assert (= result!296704 result!296700))

(assert (=> d!1210614 t!337200))

(declare-fun b_and!313105 () Bool)

(assert (= b_and!313087 (and (=> t!337200 result!296704) b_and!313105)))

(declare-fun m!4682377 () Bool)

(assert (=> d!1210614 m!4682377))

(declare-fun m!4682379 () Bool)

(assert (=> d!1210614 m!4682379))

(declare-fun m!4682381 () Bool)

(assert (=> d!1210614 m!4682381))

(assert (=> d!1210614 m!4682381))

(declare-fun m!4682383 () Bool)

(assert (=> d!1210614 m!4682383))

(declare-fun m!4682385 () Bool)

(assert (=> d!1210614 m!4682385))

(assert (=> d!1210614 m!4682379))

(assert (=> b!4073471 d!1210614))

(declare-fun b!4073636 () Bool)

(declare-fun e!2528341 () Bool)

(declare-fun lt!1457954 () Option!9417)

(assert (=> b!4073636 (= e!2528341 (contains!8676 rules!3870 (rule!10113 (_1!24414 (get!14282 lt!1457954)))))))

(declare-fun b!4073637 () Bool)

(declare-fun res!1663551 () Bool)

(assert (=> b!4073637 (=> (not res!1663551) (not e!2528341))))

(assert (=> b!4073637 (= res!1663551 (< (size!32550 (_2!24414 (get!14282 lt!1457954))) (size!32550 input!3411)))))

(declare-fun b!4073639 () Bool)

(declare-fun res!1663550 () Bool)

(assert (=> b!4073639 (=> (not res!1663550) (not e!2528341))))

(assert (=> b!4073639 (= res!1663550 (= (value!220410 (_1!24414 (get!14282 lt!1457954))) (apply!10192 (transformation!7009 (rule!10113 (_1!24414 (get!14282 lt!1457954)))) (seqFromList!5226 (originalCharacters!7603 (_1!24414 (get!14282 lt!1457954)))))))))

(declare-fun b!4073640 () Bool)

(declare-fun e!2528343 () Option!9417)

(declare-fun lt!1457952 () Option!9417)

(declare-fun lt!1457955 () Option!9417)

(assert (=> b!4073640 (= e!2528343 (ite (and (is-None!9416 lt!1457952) (is-None!9416 lt!1457955)) None!9416 (ite (is-None!9416 lt!1457955) lt!1457952 (ite (is-None!9416 lt!1457952) lt!1457955 (ite (>= (size!32549 (_1!24414 (v!39854 lt!1457952))) (size!32549 (_1!24414 (v!39854 lt!1457955)))) lt!1457952 lt!1457955)))))))

(declare-fun call!288398 () Option!9417)

(assert (=> b!4073640 (= lt!1457952 call!288398)))

(assert (=> b!4073640 (= lt!1457955 (maxPrefix!3890 thiss!26199 (t!337189 rules!3870) input!3411))))

(declare-fun b!4073641 () Bool)

(assert (=> b!4073641 (= e!2528343 call!288398)))

(declare-fun b!4073642 () Bool)

(declare-fun res!1663552 () Bool)

(assert (=> b!4073642 (=> (not res!1663552) (not e!2528341))))

(declare-fun charsOf!4807 (Token!13144) BalanceConc!26034)

(assert (=> b!4073642 (= res!1663552 (= (++!11415 (list!16221 (charsOf!4807 (_1!24414 (get!14282 lt!1457954)))) (_2!24414 (get!14282 lt!1457954))) input!3411))))

(declare-fun bm!288393 () Bool)

(declare-fun maxPrefixOneRule!2892 (LexerInterface!6598 Rule!13818 List!43685) Option!9417)

(assert (=> bm!288393 (= call!288398 (maxPrefixOneRule!2892 thiss!26199 (h!48982 rules!3870) input!3411))))

(declare-fun b!4073643 () Bool)

(declare-fun res!1663554 () Bool)

(assert (=> b!4073643 (=> (not res!1663554) (not e!2528341))))

(assert (=> b!4073643 (= res!1663554 (matchR!5859 (regex!7009 (rule!10113 (_1!24414 (get!14282 lt!1457954)))) (list!16221 (charsOf!4807 (_1!24414 (get!14282 lt!1457954))))))))

(declare-fun b!4073644 () Bool)

(declare-fun e!2528342 () Bool)

(assert (=> b!4073644 (= e!2528342 e!2528341)))

(declare-fun res!1663555 () Bool)

(assert (=> b!4073644 (=> (not res!1663555) (not e!2528341))))

(declare-fun isDefined!7143 (Option!9417) Bool)

(assert (=> b!4073644 (= res!1663555 (isDefined!7143 lt!1457954))))

(declare-fun d!1210644 () Bool)

(assert (=> d!1210644 e!2528342))

(declare-fun res!1663556 () Bool)

(assert (=> d!1210644 (=> res!1663556 e!2528342)))

(assert (=> d!1210644 (= res!1663556 (isEmpty!25999 lt!1457954))))

(assert (=> d!1210644 (= lt!1457954 e!2528343)))

(declare-fun c!702939 () Bool)

(assert (=> d!1210644 (= c!702939 (and (is-Cons!43562 rules!3870) (is-Nil!43562 (t!337189 rules!3870))))))

(declare-fun lt!1457951 () Unit!63112)

(declare-fun lt!1457953 () Unit!63112)

(assert (=> d!1210644 (= lt!1457951 lt!1457953)))

(declare-fun isPrefix!4094 (List!43685 List!43685) Bool)

(assert (=> d!1210644 (isPrefix!4094 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2645 (List!43685 List!43685) Unit!63112)

(assert (=> d!1210644 (= lt!1457953 (lemmaIsPrefixRefl!2645 input!3411 input!3411))))

(assert (=> d!1210644 (rulesValidInductive!2570 thiss!26199 rules!3870)))

(assert (=> d!1210644 (= (maxPrefix!3890 thiss!26199 rules!3870 input!3411) lt!1457954)))

(declare-fun b!4073638 () Bool)

(declare-fun res!1663553 () Bool)

(assert (=> b!4073638 (=> (not res!1663553) (not e!2528341))))

(assert (=> b!4073638 (= res!1663553 (= (list!16221 (charsOf!4807 (_1!24414 (get!14282 lt!1457954)))) (originalCharacters!7603 (_1!24414 (get!14282 lt!1457954)))))))

(assert (= (and d!1210644 c!702939) b!4073641))

(assert (= (and d!1210644 (not c!702939)) b!4073640))

(assert (= (or b!4073641 b!4073640) bm!288393))

(assert (= (and d!1210644 (not res!1663556)) b!4073644))

(assert (= (and b!4073644 res!1663555) b!4073638))

(assert (= (and b!4073638 res!1663553) b!4073637))

(assert (= (and b!4073637 res!1663551) b!4073642))

(assert (= (and b!4073642 res!1663552) b!4073639))

(assert (= (and b!4073639 res!1663550) b!4073643))

(assert (= (and b!4073643 res!1663554) b!4073636))

(assert (=> b!4073640 m!4682241))

(declare-fun m!4682387 () Bool)

(assert (=> b!4073636 m!4682387))

(declare-fun m!4682389 () Bool)

(assert (=> b!4073636 m!4682389))

(assert (=> b!4073639 m!4682387))

(declare-fun m!4682391 () Bool)

(assert (=> b!4073639 m!4682391))

(assert (=> b!4073639 m!4682391))

(declare-fun m!4682393 () Bool)

(assert (=> b!4073639 m!4682393))

(assert (=> b!4073637 m!4682387))

(declare-fun m!4682395 () Bool)

(assert (=> b!4073637 m!4682395))

(declare-fun m!4682397 () Bool)

(assert (=> b!4073637 m!4682397))

(declare-fun m!4682399 () Bool)

(assert (=> d!1210644 m!4682399))

(declare-fun m!4682401 () Bool)

(assert (=> d!1210644 m!4682401))

(declare-fun m!4682403 () Bool)

(assert (=> d!1210644 m!4682403))

(declare-fun m!4682405 () Bool)

(assert (=> d!1210644 m!4682405))

(assert (=> b!4073643 m!4682387))

(declare-fun m!4682407 () Bool)

(assert (=> b!4073643 m!4682407))

(assert (=> b!4073643 m!4682407))

(declare-fun m!4682409 () Bool)

(assert (=> b!4073643 m!4682409))

(assert (=> b!4073643 m!4682409))

(declare-fun m!4682411 () Bool)

(assert (=> b!4073643 m!4682411))

(declare-fun m!4682413 () Bool)

(assert (=> b!4073644 m!4682413))

(assert (=> b!4073642 m!4682387))

(assert (=> b!4073642 m!4682407))

(assert (=> b!4073642 m!4682407))

(assert (=> b!4073642 m!4682409))

(assert (=> b!4073642 m!4682409))

(declare-fun m!4682415 () Bool)

(assert (=> b!4073642 m!4682415))

(declare-fun m!4682417 () Bool)

(assert (=> bm!288393 m!4682417))

(assert (=> b!4073638 m!4682387))

(assert (=> b!4073638 m!4682407))

(assert (=> b!4073638 m!4682407))

(assert (=> b!4073638 m!4682409))

(assert (=> b!4073471 d!1210644))

(declare-fun d!1210646 () Bool)

(declare-fun lt!1457958 () Int)

(assert (=> d!1210646 (>= lt!1457958 0)))

(declare-fun e!2528346 () Int)

(assert (=> d!1210646 (= lt!1457958 e!2528346)))

(declare-fun c!702942 () Bool)

(assert (=> d!1210646 (= c!702942 (is-Nil!43561 p!2988))))

(assert (=> d!1210646 (= (size!32550 p!2988) lt!1457958)))

(declare-fun b!4073649 () Bool)

(assert (=> b!4073649 (= e!2528346 0)))

(declare-fun b!4073650 () Bool)

(assert (=> b!4073650 (= e!2528346 (+ 1 (size!32550 (t!337188 p!2988))))))

(assert (= (and d!1210646 c!702942) b!4073649))

(assert (= (and d!1210646 (not c!702942)) b!4073650))

(declare-fun m!4682419 () Bool)

(assert (=> b!4073650 m!4682419))

(assert (=> b!4073471 d!1210646))

(declare-fun d!1210648 () Bool)

(declare-fun fromListB!2385 (List!43685) BalanceConc!26034)

(assert (=> d!1210648 (= (seqFromList!5226 p!2988) (fromListB!2385 p!2988))))

(declare-fun bs!592666 () Bool)

(assert (= bs!592666 d!1210648))

(declare-fun m!4682421 () Bool)

(assert (=> bs!592666 m!4682421))

(assert (=> b!4073471 d!1210648))

(declare-fun d!1210650 () Bool)

(assert (=> d!1210650 (= (apply!10192 (transformation!7009 r!4213) lt!1457904) (dynLambda!18501 (toValue!9573 (transformation!7009 r!4213)) lt!1457904))))

(declare-fun b_lambda!119003 () Bool)

(assert (=> (not b_lambda!119003) (not d!1210650)))

(assert (=> d!1210650 t!337198))

(declare-fun b_and!313107 () Bool)

(assert (= b_and!313103 (and (=> t!337198 result!296700) b_and!313107)))

(assert (=> d!1210650 t!337200))

(declare-fun b_and!313109 () Bool)

(assert (= b_and!313105 (and (=> t!337200 result!296704) b_and!313109)))

(assert (=> d!1210650 m!4682379))

(assert (=> b!4073471 d!1210650))

(declare-fun d!1210652 () Bool)

(declare-fun lt!1457961 () Bool)

(declare-fun content!6660 (List!43686) (Set Rule!13818))

(assert (=> d!1210652 (= lt!1457961 (set.member r!4213 (content!6660 rules!3870)))))

(declare-fun e!2528351 () Bool)

(assert (=> d!1210652 (= lt!1457961 e!2528351)))

(declare-fun res!1663562 () Bool)

(assert (=> d!1210652 (=> (not res!1663562) (not e!2528351))))

(assert (=> d!1210652 (= res!1663562 (is-Cons!43562 rules!3870))))

(assert (=> d!1210652 (= (contains!8676 rules!3870 r!4213) lt!1457961)))

(declare-fun b!4073655 () Bool)

(declare-fun e!2528352 () Bool)

(assert (=> b!4073655 (= e!2528351 e!2528352)))

(declare-fun res!1663561 () Bool)

(assert (=> b!4073655 (=> res!1663561 e!2528352)))

(assert (=> b!4073655 (= res!1663561 (= (h!48982 rules!3870) r!4213))))

(declare-fun b!4073656 () Bool)

(assert (=> b!4073656 (= e!2528352 (contains!8676 (t!337189 rules!3870) r!4213))))

(assert (= (and d!1210652 res!1663562) b!4073655))

(assert (= (and b!4073655 (not res!1663561)) b!4073656))

(declare-fun m!4682423 () Bool)

(assert (=> d!1210652 m!4682423))

(declare-fun m!4682425 () Bool)

(assert (=> d!1210652 m!4682425))

(declare-fun m!4682427 () Bool)

(assert (=> b!4073656 m!4682427))

(assert (=> b!4073460 d!1210652))

(declare-fun b!4073665 () Bool)

(declare-fun e!2528357 () List!43685)

(assert (=> b!4073665 (= e!2528357 suffix!1518)))

(declare-fun e!2528358 () Bool)

(declare-fun lt!1457964 () List!43685)

(declare-fun b!4073668 () Bool)

(assert (=> b!4073668 (= e!2528358 (or (not (= suffix!1518 Nil!43561)) (= lt!1457964 p!2988)))))

(declare-fun b!4073666 () Bool)

(assert (=> b!4073666 (= e!2528357 (Cons!43561 (h!48981 p!2988) (++!11415 (t!337188 p!2988) suffix!1518)))))

(declare-fun d!1210654 () Bool)

(assert (=> d!1210654 e!2528358))

(declare-fun res!1663567 () Bool)

(assert (=> d!1210654 (=> (not res!1663567) (not e!2528358))))

(declare-fun content!6661 (List!43685) (Set C!24014))

(assert (=> d!1210654 (= res!1663567 (= (content!6661 lt!1457964) (set.union (content!6661 p!2988) (content!6661 suffix!1518))))))

(assert (=> d!1210654 (= lt!1457964 e!2528357)))

(declare-fun c!702945 () Bool)

(assert (=> d!1210654 (= c!702945 (is-Nil!43561 p!2988))))

(assert (=> d!1210654 (= (++!11415 p!2988 suffix!1518) lt!1457964)))

(declare-fun b!4073667 () Bool)

(declare-fun res!1663568 () Bool)

(assert (=> b!4073667 (=> (not res!1663568) (not e!2528358))))

(assert (=> b!4073667 (= res!1663568 (= (size!32550 lt!1457964) (+ (size!32550 p!2988) (size!32550 suffix!1518))))))

(assert (= (and d!1210654 c!702945) b!4073665))

(assert (= (and d!1210654 (not c!702945)) b!4073666))

(assert (= (and d!1210654 res!1663567) b!4073667))

(assert (= (and b!4073667 res!1663568) b!4073668))

(declare-fun m!4682429 () Bool)

(assert (=> b!4073666 m!4682429))

(declare-fun m!4682431 () Bool)

(assert (=> d!1210654 m!4682431))

(declare-fun m!4682433 () Bool)

(assert (=> d!1210654 m!4682433))

(declare-fun m!4682435 () Bool)

(assert (=> d!1210654 m!4682435))

(declare-fun m!4682437 () Bool)

(assert (=> b!4073667 m!4682437))

(assert (=> b!4073667 m!4682251))

(declare-fun m!4682439 () Bool)

(assert (=> b!4073667 m!4682439))

(assert (=> b!4073470 d!1210654))

(declare-fun d!1210656 () Bool)

(assert (=> d!1210656 true))

(declare-fun lt!1457967 () Bool)

(declare-fun lambda!127645 () Int)

(declare-fun forall!8391 (List!43686 Int) Bool)

(assert (=> d!1210656 (= lt!1457967 (forall!8391 (t!337189 rules!3870) lambda!127645))))

(declare-fun e!2528364 () Bool)

(assert (=> d!1210656 (= lt!1457967 e!2528364)))

(declare-fun res!1663574 () Bool)

(assert (=> d!1210656 (=> res!1663574 e!2528364)))

(assert (=> d!1210656 (= res!1663574 (not (is-Cons!43562 (t!337189 rules!3870))))))

(assert (=> d!1210656 (= (rulesValidInductive!2570 thiss!26199 (t!337189 rules!3870)) lt!1457967)))

(declare-fun b!4073673 () Bool)

(declare-fun e!2528363 () Bool)

(assert (=> b!4073673 (= e!2528364 e!2528363)))

(declare-fun res!1663573 () Bool)

(assert (=> b!4073673 (=> (not res!1663573) (not e!2528363))))

(assert (=> b!4073673 (= res!1663573 (ruleValid!2933 thiss!26199 (h!48982 (t!337189 rules!3870))))))

(declare-fun b!4073674 () Bool)

(assert (=> b!4073674 (= e!2528363 (rulesValidInductive!2570 thiss!26199 (t!337189 (t!337189 rules!3870))))))

(assert (= (and d!1210656 (not res!1663574)) b!4073673))

(assert (= (and b!4073673 res!1663573) b!4073674))

(declare-fun m!4682441 () Bool)

(assert (=> d!1210656 m!4682441))

(declare-fun m!4682443 () Bool)

(assert (=> b!4073673 m!4682443))

(declare-fun m!4682445 () Bool)

(assert (=> b!4073674 m!4682445))

(assert (=> b!4073459 d!1210656))

(declare-fun d!1210658 () Bool)

(assert (=> d!1210658 (= (isEmpty!25999 lt!1457902) (not (is-Some!9416 lt!1457902)))))

(assert (=> b!4073459 d!1210658))

(declare-fun b!4073677 () Bool)

(declare-fun e!2528365 () Bool)

(declare-fun lt!1457971 () Option!9417)

(assert (=> b!4073677 (= e!2528365 (contains!8676 (t!337189 rules!3870) (rule!10113 (_1!24414 (get!14282 lt!1457971)))))))

(declare-fun b!4073678 () Bool)

(declare-fun res!1663576 () Bool)

(assert (=> b!4073678 (=> (not res!1663576) (not e!2528365))))

(assert (=> b!4073678 (= res!1663576 (< (size!32550 (_2!24414 (get!14282 lt!1457971))) (size!32550 input!3411)))))

(declare-fun b!4073680 () Bool)

(declare-fun res!1663575 () Bool)

(assert (=> b!4073680 (=> (not res!1663575) (not e!2528365))))

(assert (=> b!4073680 (= res!1663575 (= (value!220410 (_1!24414 (get!14282 lt!1457971))) (apply!10192 (transformation!7009 (rule!10113 (_1!24414 (get!14282 lt!1457971)))) (seqFromList!5226 (originalCharacters!7603 (_1!24414 (get!14282 lt!1457971)))))))))

(declare-fun b!4073681 () Bool)

(declare-fun e!2528367 () Option!9417)

(declare-fun lt!1457969 () Option!9417)

(declare-fun lt!1457972 () Option!9417)

(assert (=> b!4073681 (= e!2528367 (ite (and (is-None!9416 lt!1457969) (is-None!9416 lt!1457972)) None!9416 (ite (is-None!9416 lt!1457972) lt!1457969 (ite (is-None!9416 lt!1457969) lt!1457972 (ite (>= (size!32549 (_1!24414 (v!39854 lt!1457969))) (size!32549 (_1!24414 (v!39854 lt!1457972)))) lt!1457969 lt!1457972)))))))

(declare-fun call!288399 () Option!9417)

(assert (=> b!4073681 (= lt!1457969 call!288399)))

(assert (=> b!4073681 (= lt!1457972 (maxPrefix!3890 thiss!26199 (t!337189 (t!337189 rules!3870)) input!3411))))

(declare-fun b!4073682 () Bool)

(assert (=> b!4073682 (= e!2528367 call!288399)))

(declare-fun b!4073683 () Bool)

(declare-fun res!1663577 () Bool)

(assert (=> b!4073683 (=> (not res!1663577) (not e!2528365))))

(assert (=> b!4073683 (= res!1663577 (= (++!11415 (list!16221 (charsOf!4807 (_1!24414 (get!14282 lt!1457971)))) (_2!24414 (get!14282 lt!1457971))) input!3411))))

(declare-fun bm!288394 () Bool)

(assert (=> bm!288394 (= call!288399 (maxPrefixOneRule!2892 thiss!26199 (h!48982 (t!337189 rules!3870)) input!3411))))

(declare-fun b!4073684 () Bool)

(declare-fun res!1663579 () Bool)

(assert (=> b!4073684 (=> (not res!1663579) (not e!2528365))))

(assert (=> b!4073684 (= res!1663579 (matchR!5859 (regex!7009 (rule!10113 (_1!24414 (get!14282 lt!1457971)))) (list!16221 (charsOf!4807 (_1!24414 (get!14282 lt!1457971))))))))

(declare-fun b!4073685 () Bool)

(declare-fun e!2528366 () Bool)

(assert (=> b!4073685 (= e!2528366 e!2528365)))

(declare-fun res!1663580 () Bool)

(assert (=> b!4073685 (=> (not res!1663580) (not e!2528365))))

(assert (=> b!4073685 (= res!1663580 (isDefined!7143 lt!1457971))))

(declare-fun d!1210660 () Bool)

(assert (=> d!1210660 e!2528366))

(declare-fun res!1663581 () Bool)

(assert (=> d!1210660 (=> res!1663581 e!2528366)))

(assert (=> d!1210660 (= res!1663581 (isEmpty!25999 lt!1457971))))

(assert (=> d!1210660 (= lt!1457971 e!2528367)))

(declare-fun c!702946 () Bool)

(assert (=> d!1210660 (= c!702946 (and (is-Cons!43562 (t!337189 rules!3870)) (is-Nil!43562 (t!337189 (t!337189 rules!3870)))))))

(declare-fun lt!1457968 () Unit!63112)

(declare-fun lt!1457970 () Unit!63112)

(assert (=> d!1210660 (= lt!1457968 lt!1457970)))

(assert (=> d!1210660 (isPrefix!4094 input!3411 input!3411)))

(assert (=> d!1210660 (= lt!1457970 (lemmaIsPrefixRefl!2645 input!3411 input!3411))))

(assert (=> d!1210660 (rulesValidInductive!2570 thiss!26199 (t!337189 rules!3870))))

(assert (=> d!1210660 (= (maxPrefix!3890 thiss!26199 (t!337189 rules!3870) input!3411) lt!1457971)))

(declare-fun b!4073679 () Bool)

(declare-fun res!1663578 () Bool)

(assert (=> b!4073679 (=> (not res!1663578) (not e!2528365))))

(assert (=> b!4073679 (= res!1663578 (= (list!16221 (charsOf!4807 (_1!24414 (get!14282 lt!1457971)))) (originalCharacters!7603 (_1!24414 (get!14282 lt!1457971)))))))

(assert (= (and d!1210660 c!702946) b!4073682))

(assert (= (and d!1210660 (not c!702946)) b!4073681))

(assert (= (or b!4073682 b!4073681) bm!288394))

(assert (= (and d!1210660 (not res!1663581)) b!4073685))

(assert (= (and b!4073685 res!1663580) b!4073679))

(assert (= (and b!4073679 res!1663578) b!4073678))

(assert (= (and b!4073678 res!1663576) b!4073683))

(assert (= (and b!4073683 res!1663577) b!4073680))

(assert (= (and b!4073680 res!1663575) b!4073684))

(assert (= (and b!4073684 res!1663579) b!4073677))

(declare-fun m!4682447 () Bool)

(assert (=> b!4073681 m!4682447))

(declare-fun m!4682449 () Bool)

(assert (=> b!4073677 m!4682449))

(declare-fun m!4682451 () Bool)

(assert (=> b!4073677 m!4682451))

(assert (=> b!4073680 m!4682449))

(declare-fun m!4682453 () Bool)

(assert (=> b!4073680 m!4682453))

(assert (=> b!4073680 m!4682453))

(declare-fun m!4682455 () Bool)

(assert (=> b!4073680 m!4682455))

(assert (=> b!4073678 m!4682449))

(declare-fun m!4682457 () Bool)

(assert (=> b!4073678 m!4682457))

(assert (=> b!4073678 m!4682397))

(declare-fun m!4682459 () Bool)

(assert (=> d!1210660 m!4682459))

(assert (=> d!1210660 m!4682401))

(assert (=> d!1210660 m!4682403))

(assert (=> d!1210660 m!4682237))

(assert (=> b!4073684 m!4682449))

(declare-fun m!4682461 () Bool)

(assert (=> b!4073684 m!4682461))

(assert (=> b!4073684 m!4682461))

(declare-fun m!4682463 () Bool)

(assert (=> b!4073684 m!4682463))

(assert (=> b!4073684 m!4682463))

(declare-fun m!4682465 () Bool)

(assert (=> b!4073684 m!4682465))

(declare-fun m!4682467 () Bool)

(assert (=> b!4073685 m!4682467))

(assert (=> b!4073683 m!4682449))

(assert (=> b!4073683 m!4682461))

(assert (=> b!4073683 m!4682461))

(assert (=> b!4073683 m!4682463))

(assert (=> b!4073683 m!4682463))

(declare-fun m!4682469 () Bool)

(assert (=> b!4073683 m!4682469))

(declare-fun m!4682471 () Bool)

(assert (=> bm!288394 m!4682471))

(assert (=> b!4073679 m!4682449))

(assert (=> b!4073679 m!4682461))

(assert (=> b!4073679 m!4682461))

(assert (=> b!4073679 m!4682463))

(assert (=> b!4073459 d!1210660))

(declare-fun d!1210662 () Bool)

(declare-fun e!2528370 () Bool)

(assert (=> d!1210662 e!2528370))

(declare-fun res!1663584 () Bool)

(assert (=> d!1210662 (=> res!1663584 e!2528370)))

(assert (=> d!1210662 (= res!1663584 (isEmpty!25999 (maxPrefix!3890 thiss!26199 (t!337189 rules!3870) input!3411)))))

(declare-fun lt!1457975 () Unit!63112)

(declare-fun choose!24859 (LexerInterface!6598 Rule!13818 List!43686 List!43685) Unit!63112)

(assert (=> d!1210662 (= lt!1457975 (choose!24859 thiss!26199 (h!48982 rules!3870) (t!337189 rules!3870) input!3411))))

(assert (=> d!1210662 (not (isEmpty!25998 (t!337189 rules!3870)))))

(assert (=> d!1210662 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!3 thiss!26199 (h!48982 rules!3870) (t!337189 rules!3870) input!3411) lt!1457975)))

(declare-fun b!4073688 () Bool)

(assert (=> b!4073688 (= e!2528370 (not (= (rule!10113 (_1!24414 (get!14282 (maxPrefix!3890 thiss!26199 (t!337189 rules!3870) input!3411)))) (h!48982 rules!3870))))))

(assert (= (and d!1210662 (not res!1663584)) b!4073688))

(assert (=> d!1210662 m!4682241))

(assert (=> d!1210662 m!4682241))

(declare-fun m!4682473 () Bool)

(assert (=> d!1210662 m!4682473))

(declare-fun m!4682475 () Bool)

(assert (=> d!1210662 m!4682475))

(assert (=> d!1210662 m!4682231))

(assert (=> b!4073688 m!4682241))

(assert (=> b!4073688 m!4682241))

(declare-fun m!4682477 () Bool)

(assert (=> b!4073688 m!4682477))

(assert (=> b!4073459 d!1210662))

(declare-fun d!1210664 () Bool)

(assert (=> d!1210664 (= (isEmpty!25998 (t!337189 rules!3870)) (is-Nil!43562 (t!337189 rules!3870)))))

(assert (=> b!4073456 d!1210664))

(declare-fun d!1210666 () Bool)

(declare-fun res!1663587 () Bool)

(declare-fun e!2528373 () Bool)

(assert (=> d!1210666 (=> (not res!1663587) (not e!2528373))))

(declare-fun rulesValid!2733 (LexerInterface!6598 List!43686) Bool)

(assert (=> d!1210666 (= res!1663587 (rulesValid!2733 thiss!26199 (t!337189 rules!3870)))))

(assert (=> d!1210666 (= (rulesInvariant!5941 thiss!26199 (t!337189 rules!3870)) e!2528373)))

(declare-fun b!4073691 () Bool)

(declare-datatypes ((List!43690 0))(
  ( (Nil!43566) (Cons!43566 (h!48986 String!49947) (t!337205 List!43690)) )
))
(declare-fun noDuplicateTag!2734 (LexerInterface!6598 List!43686 List!43690) Bool)

(assert (=> b!4073691 (= e!2528373 (noDuplicateTag!2734 thiss!26199 (t!337189 rules!3870) Nil!43566))))

(assert (= (and d!1210666 res!1663587) b!4073691))

(declare-fun m!4682479 () Bool)

(assert (=> d!1210666 m!4682479))

(declare-fun m!4682481 () Bool)

(assert (=> b!4073691 m!4682481))

(assert (=> b!4073456 d!1210666))

(declare-fun d!1210668 () Bool)

(assert (=> d!1210668 (rulesInvariant!5941 thiss!26199 (t!337189 rules!3870))))

(declare-fun lt!1457978 () Unit!63112)

(declare-fun choose!24860 (LexerInterface!6598 Rule!13818 List!43686) Unit!63112)

(assert (=> d!1210668 (= lt!1457978 (choose!24860 thiss!26199 (h!48982 rules!3870) (t!337189 rules!3870)))))

(assert (=> d!1210668 (rulesInvariant!5941 thiss!26199 (Cons!43562 (h!48982 rules!3870) (t!337189 rules!3870)))))

(assert (=> d!1210668 (= (lemmaInvariantOnRulesThenOnTail!729 thiss!26199 (h!48982 rules!3870) (t!337189 rules!3870)) lt!1457978)))

(declare-fun bs!592667 () Bool)

(assert (= bs!592667 d!1210668))

(assert (=> bs!592667 m!4682233))

(declare-fun m!4682483 () Bool)

(assert (=> bs!592667 m!4682483))

(declare-fun m!4682485 () Bool)

(assert (=> bs!592667 m!4682485))

(assert (=> b!4073456 d!1210668))

(declare-fun d!1210670 () Bool)

(assert (=> d!1210670 (= (get!14282 lt!1457902) (v!39854 lt!1457902))))

(assert (=> b!4073466 d!1210670))

(declare-fun d!1210672 () Bool)

(declare-fun res!1663588 () Bool)

(declare-fun e!2528374 () Bool)

(assert (=> d!1210672 (=> (not res!1663588) (not e!2528374))))

(assert (=> d!1210672 (= res!1663588 (rulesValid!2733 thiss!26199 rules!3870))))

(assert (=> d!1210672 (= (rulesInvariant!5941 thiss!26199 rules!3870) e!2528374)))

(declare-fun b!4073692 () Bool)

(assert (=> b!4073692 (= e!2528374 (noDuplicateTag!2734 thiss!26199 rules!3870 Nil!43566))))

(assert (= (and d!1210672 res!1663588) b!4073692))

(declare-fun m!4682487 () Bool)

(assert (=> d!1210672 m!4682487))

(declare-fun m!4682489 () Bool)

(assert (=> b!4073692 m!4682489))

(assert (=> b!4073465 d!1210672))

(declare-fun d!1210674 () Bool)

(assert (=> d!1210674 (= (inv!58211 (tag!7869 (h!48982 rules!3870))) (= (mod (str.len (value!220409 (tag!7869 (h!48982 rules!3870)))) 2) 0))))

(assert (=> b!4073454 d!1210674))

(declare-fun d!1210676 () Bool)

(declare-fun res!1663591 () Bool)

(declare-fun e!2528377 () Bool)

(assert (=> d!1210676 (=> (not res!1663591) (not e!2528377))))

(declare-fun semiInverseModEq!2999 (Int Int) Bool)

(assert (=> d!1210676 (= res!1663591 (semiInverseModEq!2999 (toChars!9432 (transformation!7009 (h!48982 rules!3870))) (toValue!9573 (transformation!7009 (h!48982 rules!3870)))))))

(assert (=> d!1210676 (= (inv!58214 (transformation!7009 (h!48982 rules!3870))) e!2528377)))

(declare-fun b!4073695 () Bool)

(declare-fun equivClasses!2898 (Int Int) Bool)

(assert (=> b!4073695 (= e!2528377 (equivClasses!2898 (toChars!9432 (transformation!7009 (h!48982 rules!3870))) (toValue!9573 (transformation!7009 (h!48982 rules!3870)))))))

(assert (= (and d!1210676 res!1663591) b!4073695))

(declare-fun m!4682491 () Bool)

(assert (=> d!1210676 m!4682491))

(declare-fun m!4682493 () Bool)

(assert (=> b!4073695 m!4682493))

(assert (=> b!4073454 d!1210676))

(declare-fun d!1210678 () Bool)

(assert (=> d!1210678 (= (inv!58211 (tag!7869 r!4213)) (= (mod (str.len (value!220409 (tag!7869 r!4213))) 2) 0))))

(assert (=> b!4073469 d!1210678))

(declare-fun d!1210680 () Bool)

(declare-fun res!1663592 () Bool)

(declare-fun e!2528378 () Bool)

(assert (=> d!1210680 (=> (not res!1663592) (not e!2528378))))

(assert (=> d!1210680 (= res!1663592 (semiInverseModEq!2999 (toChars!9432 (transformation!7009 r!4213)) (toValue!9573 (transformation!7009 r!4213))))))

(assert (=> d!1210680 (= (inv!58214 (transformation!7009 r!4213)) e!2528378)))

(declare-fun b!4073696 () Bool)

(assert (=> b!4073696 (= e!2528378 (equivClasses!2898 (toChars!9432 (transformation!7009 r!4213)) (toValue!9573 (transformation!7009 r!4213))))))

(assert (= (and d!1210680 res!1663592) b!4073696))

(declare-fun m!4682495 () Bool)

(assert (=> d!1210680 m!4682495))

(declare-fun m!4682497 () Bool)

(assert (=> b!4073696 m!4682497))

(assert (=> b!4073469 d!1210680))

(declare-fun b!4073725 () Bool)

(declare-fun e!2528395 () Bool)

(declare-fun e!2528394 () Bool)

(assert (=> b!4073725 (= e!2528395 e!2528394)))

(declare-fun c!702954 () Bool)

(assert (=> b!4073725 (= c!702954 (is-EmptyLang!11914 (regex!7009 r!4213)))))

(declare-fun b!4073726 () Bool)

(declare-fun e!2528399 () Bool)

(declare-fun derivativeStep!3592 (Regex!11914 C!24014) Regex!11914)

(declare-fun head!8602 (List!43685) C!24014)

(declare-fun tail!6336 (List!43685) List!43685)

(assert (=> b!4073726 (= e!2528399 (matchR!5859 (derivativeStep!3592 (regex!7009 r!4213) (head!8602 p!2988)) (tail!6336 p!2988)))))

(declare-fun b!4073727 () Bool)

(declare-fun res!1663611 () Bool)

(declare-fun e!2528398 () Bool)

(assert (=> b!4073727 (=> res!1663611 e!2528398)))

(declare-fun e!2528393 () Bool)

(assert (=> b!4073727 (= res!1663611 e!2528393)))

(declare-fun res!1663610 () Bool)

(assert (=> b!4073727 (=> (not res!1663610) (not e!2528393))))

(declare-fun lt!1457981 () Bool)

(assert (=> b!4073727 (= res!1663610 lt!1457981)))

(declare-fun b!4073728 () Bool)

(declare-fun nullable!4191 (Regex!11914) Bool)

(assert (=> b!4073728 (= e!2528399 (nullable!4191 (regex!7009 r!4213)))))

(declare-fun b!4073729 () Bool)

(declare-fun e!2528396 () Bool)

(assert (=> b!4073729 (= e!2528398 e!2528396)))

(declare-fun res!1663616 () Bool)

(assert (=> b!4073729 (=> (not res!1663616) (not e!2528396))))

(assert (=> b!4073729 (= res!1663616 (not lt!1457981))))

(declare-fun b!4073730 () Bool)

(assert (=> b!4073730 (= e!2528393 (= (head!8602 p!2988) (c!702919 (regex!7009 r!4213))))))

(declare-fun b!4073731 () Bool)

(declare-fun res!1663609 () Bool)

(assert (=> b!4073731 (=> (not res!1663609) (not e!2528393))))

(declare-fun call!288402 () Bool)

(assert (=> b!4073731 (= res!1663609 (not call!288402))))

(declare-fun b!4073733 () Bool)

(declare-fun res!1663612 () Bool)

(declare-fun e!2528397 () Bool)

(assert (=> b!4073733 (=> res!1663612 e!2528397)))

(assert (=> b!4073733 (= res!1663612 (not (isEmpty!26000 (tail!6336 p!2988))))))

(declare-fun b!4073734 () Bool)

(declare-fun res!1663615 () Bool)

(assert (=> b!4073734 (=> res!1663615 e!2528398)))

(assert (=> b!4073734 (= res!1663615 (not (is-ElementMatch!11914 (regex!7009 r!4213))))))

(assert (=> b!4073734 (= e!2528394 e!2528398)))

(declare-fun b!4073735 () Bool)

(assert (=> b!4073735 (= e!2528396 e!2528397)))

(declare-fun res!1663614 () Bool)

(assert (=> b!4073735 (=> res!1663614 e!2528397)))

(assert (=> b!4073735 (= res!1663614 call!288402)))

(declare-fun bm!288397 () Bool)

(assert (=> bm!288397 (= call!288402 (isEmpty!26000 p!2988))))

(declare-fun b!4073736 () Bool)

(assert (=> b!4073736 (= e!2528397 (not (= (head!8602 p!2988) (c!702919 (regex!7009 r!4213)))))))

(declare-fun b!4073737 () Bool)

(assert (=> b!4073737 (= e!2528394 (not lt!1457981))))

(declare-fun b!4073738 () Bool)

(declare-fun res!1663613 () Bool)

(assert (=> b!4073738 (=> (not res!1663613) (not e!2528393))))

(assert (=> b!4073738 (= res!1663613 (isEmpty!26000 (tail!6336 p!2988)))))

(declare-fun b!4073732 () Bool)

(assert (=> b!4073732 (= e!2528395 (= lt!1457981 call!288402))))

(declare-fun d!1210682 () Bool)

(assert (=> d!1210682 e!2528395))

(declare-fun c!702955 () Bool)

(assert (=> d!1210682 (= c!702955 (is-EmptyExpr!11914 (regex!7009 r!4213)))))

(assert (=> d!1210682 (= lt!1457981 e!2528399)))

(declare-fun c!702953 () Bool)

(assert (=> d!1210682 (= c!702953 (isEmpty!26000 p!2988))))

(declare-fun validRegex!5391 (Regex!11914) Bool)

(assert (=> d!1210682 (validRegex!5391 (regex!7009 r!4213))))

(assert (=> d!1210682 (= (matchR!5859 (regex!7009 r!4213) p!2988) lt!1457981)))

(assert (= (and d!1210682 c!702953) b!4073728))

(assert (= (and d!1210682 (not c!702953)) b!4073726))

(assert (= (and d!1210682 c!702955) b!4073732))

(assert (= (and d!1210682 (not c!702955)) b!4073725))

(assert (= (and b!4073725 c!702954) b!4073737))

(assert (= (and b!4073725 (not c!702954)) b!4073734))

(assert (= (and b!4073734 (not res!1663615)) b!4073727))

(assert (= (and b!4073727 res!1663610) b!4073731))

(assert (= (and b!4073731 res!1663609) b!4073738))

(assert (= (and b!4073738 res!1663613) b!4073730))

(assert (= (and b!4073727 (not res!1663611)) b!4073729))

(assert (= (and b!4073729 res!1663616) b!4073735))

(assert (= (and b!4073735 (not res!1663614)) b!4073733))

(assert (= (and b!4073733 (not res!1663612)) b!4073736))

(assert (= (or b!4073732 b!4073731 b!4073735) bm!288397))

(declare-fun m!4682499 () Bool)

(assert (=> b!4073728 m!4682499))

(declare-fun m!4682501 () Bool)

(assert (=> b!4073736 m!4682501))

(assert (=> bm!288397 m!4682263))

(assert (=> b!4073730 m!4682501))

(assert (=> d!1210682 m!4682263))

(declare-fun m!4682503 () Bool)

(assert (=> d!1210682 m!4682503))

(declare-fun m!4682505 () Bool)

(assert (=> b!4073738 m!4682505))

(assert (=> b!4073738 m!4682505))

(declare-fun m!4682507 () Bool)

(assert (=> b!4073738 m!4682507))

(assert (=> b!4073733 m!4682505))

(assert (=> b!4073733 m!4682505))

(assert (=> b!4073733 m!4682507))

(assert (=> b!4073726 m!4682501))

(assert (=> b!4073726 m!4682501))

(declare-fun m!4682509 () Bool)

(assert (=> b!4073726 m!4682509))

(assert (=> b!4073726 m!4682505))

(assert (=> b!4073726 m!4682509))

(assert (=> b!4073726 m!4682505))

(declare-fun m!4682511 () Bool)

(assert (=> b!4073726 m!4682511))

(assert (=> b!4073458 d!1210682))

(declare-fun d!1210684 () Bool)

(declare-fun res!1663621 () Bool)

(declare-fun e!2528402 () Bool)

(assert (=> d!1210684 (=> (not res!1663621) (not e!2528402))))

(assert (=> d!1210684 (= res!1663621 (validRegex!5391 (regex!7009 r!4213)))))

(assert (=> d!1210684 (= (ruleValid!2933 thiss!26199 r!4213) e!2528402)))

(declare-fun b!4073743 () Bool)

(declare-fun res!1663622 () Bool)

(assert (=> b!4073743 (=> (not res!1663622) (not e!2528402))))

(assert (=> b!4073743 (= res!1663622 (not (nullable!4191 (regex!7009 r!4213))))))

(declare-fun b!4073744 () Bool)

(assert (=> b!4073744 (= e!2528402 (not (= (tag!7869 r!4213) (String!49948 ""))))))

(assert (= (and d!1210684 res!1663621) b!4073743))

(assert (= (and b!4073743 res!1663622) b!4073744))

(assert (=> d!1210684 m!4682503))

(assert (=> b!4073743 m!4682499))

(assert (=> b!4073458 d!1210684))

(declare-fun d!1210686 () Bool)

(assert (=> d!1210686 (ruleValid!2933 thiss!26199 r!4213)))

(declare-fun lt!1457984 () Unit!63112)

(declare-fun choose!24861 (LexerInterface!6598 Rule!13818 List!43686) Unit!63112)

(assert (=> d!1210686 (= lt!1457984 (choose!24861 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1210686 (contains!8676 rules!3870 r!4213)))

(assert (=> d!1210686 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2001 thiss!26199 r!4213 rules!3870) lt!1457984)))

(declare-fun bs!592668 () Bool)

(assert (= bs!592668 d!1210686))

(assert (=> bs!592668 m!4682267))

(declare-fun m!4682513 () Bool)

(assert (=> bs!592668 m!4682513))

(assert (=> bs!592668 m!4682261))

(assert (=> b!4073458 d!1210686))

(declare-fun d!1210688 () Bool)

(assert (=> d!1210688 (= (isEmpty!26000 p!2988) (is-Nil!43561 p!2988))))

(assert (=> b!4073468 d!1210688))

(declare-fun b!4073755 () Bool)

(declare-fun e!2528405 () Bool)

(assert (=> b!4073755 (= e!2528405 tp_is_empty!20831)))

(declare-fun b!4073756 () Bool)

(declare-fun tp!1233017 () Bool)

(declare-fun tp!1233016 () Bool)

(assert (=> b!4073756 (= e!2528405 (and tp!1233017 tp!1233016))))

(declare-fun b!4073757 () Bool)

(declare-fun tp!1233019 () Bool)

(assert (=> b!4073757 (= e!2528405 tp!1233019)))

(assert (=> b!4073454 (= tp!1232964 e!2528405)))

(declare-fun b!4073758 () Bool)

(declare-fun tp!1233020 () Bool)

(declare-fun tp!1233018 () Bool)

(assert (=> b!4073758 (= e!2528405 (and tp!1233020 tp!1233018))))

(assert (= (and b!4073454 (is-ElementMatch!11914 (regex!7009 (h!48982 rules!3870)))) b!4073755))

(assert (= (and b!4073454 (is-Concat!19154 (regex!7009 (h!48982 rules!3870)))) b!4073756))

(assert (= (and b!4073454 (is-Star!11914 (regex!7009 (h!48982 rules!3870)))) b!4073757))

(assert (= (and b!4073454 (is-Union!11914 (regex!7009 (h!48982 rules!3870)))) b!4073758))

(declare-fun b!4073769 () Bool)

(declare-fun b_free!113449 () Bool)

(declare-fun b_next!114153 () Bool)

(assert (=> b!4073769 (= b_free!113449 (not b_next!114153))))

(declare-fun t!337202 () Bool)

(declare-fun tb!244737 () Bool)

(assert (=> (and b!4073769 (= (toValue!9573 (transformation!7009 (h!48982 (t!337189 rules!3870)))) (toValue!9573 (transformation!7009 r!4213))) t!337202) tb!244737))

(declare-fun result!296710 () Bool)

(assert (= result!296710 result!296700))

(assert (=> d!1210614 t!337202))

(assert (=> d!1210650 t!337202))

(declare-fun tp!1233030 () Bool)

(declare-fun b_and!313111 () Bool)

(assert (=> b!4073769 (= tp!1233030 (and (=> t!337202 result!296710) b_and!313111))))

(declare-fun b_free!113451 () Bool)

(declare-fun b_next!114155 () Bool)

(assert (=> b!4073769 (= b_free!113451 (not b_next!114155))))

(declare-fun t!337204 () Bool)

(declare-fun tb!244739 () Bool)

(assert (=> (and b!4073769 (= (toChars!9432 (transformation!7009 (h!48982 (t!337189 rules!3870)))) (toChars!9432 (transformation!7009 r!4213))) t!337204) tb!244739))

(declare-fun result!296712 () Bool)

(assert (= result!296712 result!296694))

(assert (=> d!1210614 t!337204))

(declare-fun tp!1233031 () Bool)

(declare-fun b_and!313113 () Bool)

(assert (=> b!4073769 (= tp!1233031 (and (=> t!337204 result!296712) b_and!313113))))

(declare-fun e!2528414 () Bool)

(assert (=> b!4073769 (= e!2528414 (and tp!1233030 tp!1233031))))

(declare-fun e!2528416 () Bool)

(declare-fun tp!1233029 () Bool)

(declare-fun b!4073768 () Bool)

(assert (=> b!4073768 (= e!2528416 (and tp!1233029 (inv!58211 (tag!7869 (h!48982 (t!337189 rules!3870)))) (inv!58214 (transformation!7009 (h!48982 (t!337189 rules!3870)))) e!2528414))))

(declare-fun b!4073767 () Bool)

(declare-fun e!2528415 () Bool)

(declare-fun tp!1233032 () Bool)

(assert (=> b!4073767 (= e!2528415 (and e!2528416 tp!1233032))))

(assert (=> b!4073453 (= tp!1232965 e!2528415)))

(assert (= b!4073768 b!4073769))

(assert (= b!4073767 b!4073768))

(assert (= (and b!4073453 (is-Cons!43562 (t!337189 rules!3870))) b!4073767))

(declare-fun m!4682515 () Bool)

(assert (=> b!4073768 m!4682515))

(declare-fun m!4682517 () Bool)

(assert (=> b!4073768 m!4682517))

(declare-fun b!4073770 () Bool)

(declare-fun e!2528418 () Bool)

(assert (=> b!4073770 (= e!2528418 tp_is_empty!20831)))

(declare-fun b!4073771 () Bool)

(declare-fun tp!1233034 () Bool)

(declare-fun tp!1233033 () Bool)

(assert (=> b!4073771 (= e!2528418 (and tp!1233034 tp!1233033))))

(declare-fun b!4073772 () Bool)

(declare-fun tp!1233036 () Bool)

(assert (=> b!4073772 (= e!2528418 tp!1233036)))

(assert (=> b!4073469 (= tp!1232963 e!2528418)))

(declare-fun b!4073773 () Bool)

(declare-fun tp!1233037 () Bool)

(declare-fun tp!1233035 () Bool)

(assert (=> b!4073773 (= e!2528418 (and tp!1233037 tp!1233035))))

(assert (= (and b!4073469 (is-ElementMatch!11914 (regex!7009 r!4213))) b!4073770))

(assert (= (and b!4073469 (is-Concat!19154 (regex!7009 r!4213))) b!4073771))

(assert (= (and b!4073469 (is-Star!11914 (regex!7009 r!4213))) b!4073772))

(assert (= (and b!4073469 (is-Union!11914 (regex!7009 r!4213))) b!4073773))

(declare-fun b!4073778 () Bool)

(declare-fun e!2528421 () Bool)

(declare-fun tp!1233040 () Bool)

(assert (=> b!4073778 (= e!2528421 (and tp_is_empty!20831 tp!1233040))))

(assert (=> b!4073463 (= tp!1232971 e!2528421)))

(assert (= (and b!4073463 (is-Cons!43561 (t!337188 p!2988))) b!4073778))

(declare-fun b!4073779 () Bool)

(declare-fun e!2528422 () Bool)

(declare-fun tp!1233041 () Bool)

(assert (=> b!4073779 (= e!2528422 (and tp_is_empty!20831 tp!1233041))))

(assert (=> b!4073457 (= tp!1232966 e!2528422)))

(assert (= (and b!4073457 (is-Cons!43561 (t!337188 input!3411))) b!4073779))

(declare-fun b!4073780 () Bool)

(declare-fun e!2528423 () Bool)

(declare-fun tp!1233042 () Bool)

(assert (=> b!4073780 (= e!2528423 (and tp_is_empty!20831 tp!1233042))))

(assert (=> b!4073467 (= tp!1232972 e!2528423)))

(assert (= (and b!4073467 (is-Cons!43561 (t!337188 suffix!1518))) b!4073780))

(declare-fun b_lambda!119005 () Bool)

(assert (= b_lambda!119003 (or (and b!4073455 b_free!113433) (and b!4073462 b_free!113437 (= (toValue!9573 (transformation!7009 (h!48982 rules!3870))) (toValue!9573 (transformation!7009 r!4213)))) (and b!4073769 b_free!113449 (= (toValue!9573 (transformation!7009 (h!48982 (t!337189 rules!3870)))) (toValue!9573 (transformation!7009 r!4213)))) b_lambda!119005)))

(declare-fun b_lambda!119007 () Bool)

(assert (= b_lambda!118999 (or (and b!4073455 b_free!113435) (and b!4073462 b_free!113439 (= (toChars!9432 (transformation!7009 (h!48982 rules!3870))) (toChars!9432 (transformation!7009 r!4213)))) (and b!4073769 b_free!113451 (= (toChars!9432 (transformation!7009 (h!48982 (t!337189 rules!3870)))) (toChars!9432 (transformation!7009 r!4213)))) b_lambda!119007)))

(declare-fun b_lambda!119009 () Bool)

(assert (= b_lambda!119001 (or (and b!4073455 b_free!113433) (and b!4073462 b_free!113437 (= (toValue!9573 (transformation!7009 (h!48982 rules!3870))) (toValue!9573 (transformation!7009 r!4213)))) (and b!4073769 b_free!113449 (= (toValue!9573 (transformation!7009 (h!48982 (t!337189 rules!3870)))) (toValue!9573 (transformation!7009 r!4213)))) b_lambda!119009)))

(push 1)

(assert (not b!4073644))

(assert (not b!4073679))

(assert (not b!4073673))

(assert (not b!4073642))

(assert (not b!4073636))

(assert (not b!4073678))

(assert (not d!1210666))

(assert (not b!4073726))

(assert (not tb!244733))

(assert b_and!313107)

(assert (not bm!288394))

(assert (not b!4073650))

(assert (not b!4073643))

(assert (not b!4073780))

(assert (not b!4073615))

(assert (not b_next!114143))

(assert (not b!4073757))

(assert b_and!313109)

(assert (not d!1210668))

(assert (not b!4073681))

(assert b_and!313101)

(assert (not b_next!114141))

(assert (not d!1210680))

(assert (not b_lambda!119005))

(assert (not b!4073768))

(assert (not b!4073758))

(assert (not b!4073688))

(assert (not bm!288397))

(assert (not b!4073736))

(assert (not b!4073728))

(assert b_and!313099)

(assert (not b_next!114139))

(assert (not b_next!114155))

(assert (not b!4073674))

(assert (not b!4073692))

(assert (not b!4073640))

(assert b_and!313111)

(assert (not b_next!114137))

(assert (not b!4073733))

(assert (not b!4073779))

(assert (not b!4073778))

(assert (not d!1210654))

(assert (not b!4073677))

(assert (not b!4073695))

(assert (not b!4073767))

(assert (not bm!288393))

(assert (not b!4073743))

(assert (not b!4073666))

(assert tp_is_empty!20831)

(assert (not b!4073637))

(assert (not b!4073730))

(assert (not b_lambda!119007))

(assert (not b!4073680))

(assert (not b!4073667))

(assert (not b!4073773))

(assert (not d!1210614))

(assert b_and!313113)

(assert (not d!1210660))

(assert (not d!1210684))

(assert (not b!4073756))

(assert (not b!4073684))

(assert (not d!1210682))

(assert (not b!4073771))

(assert (not b!4073656))

(assert (not b!4073685))

(assert (not b!4073639))

(assert (not d!1210648))

(assert (not b!4073638))

(assert (not b_lambda!119009))

(assert (not d!1210672))

(assert (not d!1210652))

(assert (not b!4073696))

(assert (not d!1210644))

(assert (not b!4073772))

(assert (not d!1210686))

(assert (not b!4073691))

(assert (not b_next!114153))

(assert (not d!1210662))

(assert (not b!4073738))

(assert (not d!1210676))

(assert (not d!1210656))

(assert (not tb!244729))

(assert (not b!4073683))

(check-sat)

(pop 1)

(push 1)

(assert b_and!313107)

(assert (not b_next!114143))

(assert b_and!313109)

(assert b_and!313113)

(assert (not b_next!114153))

(assert b_and!313101)

(assert (not b_next!114141))

(assert b_and!313099)

(assert (not b_next!114139))

(assert (not b_next!114155))

(assert b_and!313111)

(assert (not b_next!114137))

(check-sat)

(pop 1)

