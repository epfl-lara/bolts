; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389986 () Bool)

(assert start!389986)

(declare-fun b!4115304 () Bool)

(declare-fun b_free!115963 () Bool)

(declare-fun b_next!116667 () Bool)

(assert (=> b!4115304 (= b_free!115963 (not b_next!116667))))

(declare-fun tp!1253365 () Bool)

(declare-fun b_and!317849 () Bool)

(assert (=> b!4115304 (= tp!1253365 b_and!317849)))

(declare-fun b_free!115965 () Bool)

(declare-fun b_next!116669 () Bool)

(assert (=> b!4115304 (= b_free!115965 (not b_next!116669))))

(declare-fun tp!1253369 () Bool)

(declare-fun b_and!317851 () Bool)

(assert (=> b!4115304 (= tp!1253369 b_and!317851)))

(declare-fun b!4115289 () Bool)

(declare-fun b_free!115967 () Bool)

(declare-fun b_next!116671 () Bool)

(assert (=> b!4115289 (= b_free!115967 (not b_next!116671))))

(declare-fun tp!1253367 () Bool)

(declare-fun b_and!317853 () Bool)

(assert (=> b!4115289 (= tp!1253367 b_and!317853)))

(declare-fun b_free!115969 () Bool)

(declare-fun b_next!116673 () Bool)

(assert (=> b!4115289 (= b_free!115969 (not b_next!116673))))

(declare-fun tp!1253374 () Bool)

(declare-fun b_and!317855 () Bool)

(assert (=> b!4115289 (= tp!1253374 b_and!317855)))

(declare-fun b!4115298 () Bool)

(declare-fun b_free!115971 () Bool)

(declare-fun b_next!116675 () Bool)

(assert (=> b!4115298 (= b_free!115971 (not b_next!116675))))

(declare-fun tp!1253363 () Bool)

(declare-fun b_and!317857 () Bool)

(assert (=> b!4115298 (= tp!1253363 b_and!317857)))

(declare-fun b_free!115973 () Bool)

(declare-fun b_next!116677 () Bool)

(assert (=> b!4115298 (= b_free!115973 (not b_next!116677))))

(declare-fun tp!1253370 () Bool)

(declare-fun b_and!317859 () Bool)

(assert (=> b!4115298 (= tp!1253370 b_and!317859)))

(declare-fun e!2553407 () Bool)

(assert (=> b!4115289 (= e!2553407 (and tp!1253367 tp!1253374))))

(declare-datatypes ((List!44549 0))(
  ( (Nil!44425) (Cons!44425 (h!49845 (_ BitVec 16)) (t!340300 List!44549)) )
))
(declare-datatypes ((TokenValue!7468 0))(
  ( (FloatLiteralValue!14936 (text!52721 List!44549)) (TokenValueExt!7467 (__x!27153 Int)) (Broken!37340 (value!226818 List!44549)) (Object!7591) (End!7468) (Def!7468) (Underscore!7468) (Match!7468) (Else!7468) (Error!7468) (Case!7468) (If!7468) (Extends!7468) (Abstract!7468) (Class!7468) (Val!7468) (DelimiterValue!14936 (del!7528 List!44549)) (KeywordValue!7474 (value!226819 List!44549)) (CommentValue!14936 (value!226820 List!44549)) (WhitespaceValue!14936 (value!226821 List!44549)) (IndentationValue!7468 (value!226822 List!44549)) (String!51089) (Int32!7468) (Broken!37341 (value!226823 List!44549)) (Boolean!7469) (Unit!63790) (OperatorValue!7471 (op!7528 List!44549)) (IdentifierValue!14936 (value!226824 List!44549)) (IdentifierValue!14937 (value!226825 List!44549)) (WhitespaceValue!14937 (value!226826 List!44549)) (True!14936) (False!14936) (Broken!37342 (value!226827 List!44549)) (Broken!37343 (value!226828 List!44549)) (True!14937) (RightBrace!7468) (RightBracket!7468) (Colon!7468) (Null!7468) (Comma!7468) (LeftBracket!7468) (False!14937) (LeftBrace!7468) (ImaginaryLiteralValue!7468 (text!52722 List!44549)) (StringLiteralValue!22404 (value!226829 List!44549)) (EOFValue!7468 (value!226830 List!44549)) (IdentValue!7468 (value!226831 List!44549)) (DelimiterValue!14937 (value!226832 List!44549)) (DedentValue!7468 (value!226833 List!44549)) (NewLineValue!7468 (value!226834 List!44549)) (IntegerValue!22404 (value!226835 (_ BitVec 32)) (text!52723 List!44549)) (IntegerValue!22405 (value!226836 Int) (text!52724 List!44549)) (Times!7468) (Or!7468) (Equal!7468) (Minus!7468) (Broken!37344 (value!226837 List!44549)) (And!7468) (Div!7468) (LessEqual!7468) (Mod!7468) (Concat!19611) (Not!7468) (Plus!7468) (SpaceValue!7468 (value!226838 List!44549)) (IntegerValue!22406 (value!226839 Int) (text!52725 List!44549)) (StringLiteralValue!22405 (text!52726 List!44549)) (FloatLiteralValue!14937 (text!52727 List!44549)) (BytesLiteralValue!7468 (value!226840 List!44549)) (CommentValue!14937 (value!226841 List!44549)) (StringLiteralValue!22406 (value!226842 List!44549)) (ErrorTokenValue!7468 (msg!7529 List!44549)) )
))
(declare-datatypes ((C!24472 0))(
  ( (C!24473 (val!14346 Int)) )
))
(declare-datatypes ((List!44550 0))(
  ( (Nil!44426) (Cons!44426 (h!49846 C!24472) (t!340301 List!44550)) )
))
(declare-datatypes ((IArray!26903 0))(
  ( (IArray!26904 (innerList!13509 List!44550)) )
))
(declare-datatypes ((Conc!13449 0))(
  ( (Node!13449 (left!33290 Conc!13449) (right!33620 Conc!13449) (csize!27128 Int) (cheight!13660 Int)) (Leaf!20783 (xs!16755 IArray!26903) (csize!27129 Int)) (Empty!13449) )
))
(declare-datatypes ((BalanceConc!26492 0))(
  ( (BalanceConc!26493 (c!707070 Conc!13449)) )
))
(declare-datatypes ((TokenValueInjection!14364 0))(
  ( (TokenValueInjection!14365 (toValue!9882 Int) (toChars!9741 Int)) )
))
(declare-datatypes ((Regex!12143 0))(
  ( (ElementMatch!12143 (c!707071 C!24472)) (Concat!19612 (regOne!24798 Regex!12143) (regTwo!24798 Regex!12143)) (EmptyExpr!12143) (Star!12143 (reg!12472 Regex!12143)) (EmptyLang!12143) (Union!12143 (regOne!24799 Regex!12143) (regTwo!24799 Regex!12143)) )
))
(declare-datatypes ((String!51090 0))(
  ( (String!51091 (value!226843 String)) )
))
(declare-datatypes ((Rule!14276 0))(
  ( (Rule!14277 (regex!7238 Regex!12143) (tag!8098 String!51090) (isSeparator!7238 Bool) (transformation!7238 TokenValueInjection!14364)) )
))
(declare-fun rBis!149 () Rule!14276)

(declare-fun e!2553411 () Bool)

(declare-fun e!2553404 () Bool)

(declare-fun tp!1253373 () Bool)

(declare-fun b!4115291 () Bool)

(declare-fun inv!59004 (String!51090) Bool)

(declare-fun inv!59006 (TokenValueInjection!14364) Bool)

(assert (=> b!4115291 (= e!2553411 (and tp!1253373 (inv!59004 (tag!8098 rBis!149)) (inv!59006 (transformation!7238 rBis!149)) e!2553404))))

(declare-fun b!4115292 () Bool)

(declare-fun res!1680851 () Bool)

(declare-fun e!2553410 () Bool)

(assert (=> b!4115292 (=> (not res!1680851) (not e!2553410))))

(declare-datatypes ((List!44551 0))(
  ( (Nil!44427) (Cons!44427 (h!49847 Rule!14276) (t!340302 List!44551)) )
))
(declare-fun rules!3756 () List!44551)

(declare-fun r!4008 () Rule!14276)

(declare-fun contains!8906 (List!44551 Rule!14276) Bool)

(assert (=> b!4115292 (= res!1680851 (contains!8906 rules!3756 r!4008))))

(declare-fun b!4115293 () Bool)

(declare-datatypes ((LexerInterface!6827 0))(
  ( (LexerInterfaceExt!6824 (__x!27154 Int)) (Lexer!6825) )
))
(declare-fun thiss!25645 () LexerInterface!6827)

(declare-fun rulesValidInductive!2669 (LexerInterface!6827 List!44551) Bool)

(assert (=> b!4115293 (= e!2553410 (not (rulesValidInductive!2669 thiss!25645 rules!3756)))))

(declare-datatypes ((Unit!63791 0))(
  ( (Unit!63792) )
))
(declare-fun lt!1468674 () Unit!63791)

(declare-fun p!2912 () List!44550)

(declare-fun lemmaSemiInverse!2096 (TokenValueInjection!14364 BalanceConc!26492) Unit!63791)

(declare-fun seqFromList!5355 (List!44550) BalanceConc!26492)

(assert (=> b!4115293 (= lt!1468674 (lemmaSemiInverse!2096 (transformation!7238 r!4008) (seqFromList!5355 p!2912)))))

(declare-fun b!4115294 () Bool)

(declare-fun res!1680849 () Bool)

(assert (=> b!4115294 (=> (not res!1680849) (not e!2553410))))

(assert (=> b!4115294 (= res!1680849 (contains!8906 rules!3756 rBis!149))))

(declare-fun b!4115295 () Bool)

(declare-fun res!1680848 () Bool)

(assert (=> b!4115295 (=> (not res!1680848) (not e!2553410))))

(declare-fun input!3238 () List!44550)

(declare-fun isPrefix!4173 (List!44550 List!44550) Bool)

(assert (=> b!4115295 (= res!1680848 (isPrefix!4173 p!2912 input!3238))))

(declare-fun b!4115296 () Bool)

(declare-fun res!1680847 () Bool)

(assert (=> b!4115296 (=> (not res!1680847) (not e!2553410))))

(declare-fun isEmpty!26413 (List!44551) Bool)

(assert (=> b!4115296 (= res!1680847 (not (isEmpty!26413 rules!3756)))))

(declare-fun b!4115297 () Bool)

(declare-fun e!2553412 () Bool)

(declare-fun tp_is_empty!21209 () Bool)

(declare-fun tp!1253371 () Bool)

(assert (=> b!4115297 (= e!2553412 (and tp_is_empty!21209 tp!1253371))))

(assert (=> b!4115298 (= e!2553404 (and tp!1253363 tp!1253370))))

(declare-fun b!4115299 () Bool)

(declare-fun res!1680850 () Bool)

(assert (=> b!4115299 (=> (not res!1680850) (not e!2553410))))

(declare-fun isEmpty!26414 (List!44550) Bool)

(assert (=> b!4115299 (= res!1680850 (not (isEmpty!26414 p!2912)))))

(declare-fun b!4115300 () Bool)

(declare-fun e!2553414 () Bool)

(declare-fun tp!1253364 () Bool)

(assert (=> b!4115300 (= e!2553414 (and tp_is_empty!21209 tp!1253364))))

(declare-fun b!4115301 () Bool)

(declare-fun res!1680846 () Bool)

(assert (=> b!4115301 (=> (not res!1680846) (not e!2553410))))

(declare-fun rulesInvariant!6124 (LexerInterface!6827 List!44551) Bool)

(assert (=> b!4115301 (= res!1680846 (rulesInvariant!6124 thiss!25645 rules!3756))))

(declare-fun tp!1253368 () Bool)

(declare-fun b!4115302 () Bool)

(declare-fun e!2553413 () Bool)

(assert (=> b!4115302 (= e!2553413 (and tp!1253368 (inv!59004 (tag!8098 (h!49847 rules!3756))) (inv!59006 (transformation!7238 (h!49847 rules!3756))) e!2553407))))

(declare-fun b!4115290 () Bool)

(declare-fun e!2553409 () Bool)

(declare-fun tp!1253366 () Bool)

(assert (=> b!4115290 (= e!2553409 (and e!2553413 tp!1253366))))

(declare-fun res!1680845 () Bool)

(assert (=> start!389986 (=> (not res!1680845) (not e!2553410))))

(get-info :version)

(assert (=> start!389986 (= res!1680845 ((_ is Lexer!6825) thiss!25645))))

(assert (=> start!389986 e!2553410))

(assert (=> start!389986 e!2553409))

(assert (=> start!389986 e!2553414))

(assert (=> start!389986 true))

(declare-fun e!2553415 () Bool)

(assert (=> start!389986 e!2553415))

(assert (=> start!389986 e!2553412))

(assert (=> start!389986 e!2553411))

(declare-fun tp!1253372 () Bool)

(declare-fun b!4115303 () Bool)

(declare-fun e!2553416 () Bool)

(assert (=> b!4115303 (= e!2553415 (and tp!1253372 (inv!59004 (tag!8098 r!4008)) (inv!59006 (transformation!7238 r!4008)) e!2553416))))

(assert (=> b!4115304 (= e!2553416 (and tp!1253365 tp!1253369))))

(assert (= (and start!389986 res!1680845) b!4115295))

(assert (= (and b!4115295 res!1680848) b!4115296))

(assert (= (and b!4115296 res!1680847) b!4115301))

(assert (= (and b!4115301 res!1680846) b!4115292))

(assert (= (and b!4115292 res!1680851) b!4115294))

(assert (= (and b!4115294 res!1680849) b!4115299))

(assert (= (and b!4115299 res!1680850) b!4115293))

(assert (= b!4115302 b!4115289))

(assert (= b!4115290 b!4115302))

(assert (= (and start!389986 ((_ is Cons!44427) rules!3756)) b!4115290))

(assert (= (and start!389986 ((_ is Cons!44426) p!2912)) b!4115300))

(assert (= b!4115303 b!4115304))

(assert (= start!389986 b!4115303))

(assert (= (and start!389986 ((_ is Cons!44426) input!3238)) b!4115297))

(assert (= b!4115291 b!4115298))

(assert (= start!389986 b!4115291))

(declare-fun m!4715435 () Bool)

(assert (=> b!4115294 m!4715435))

(declare-fun m!4715437 () Bool)

(assert (=> b!4115301 m!4715437))

(declare-fun m!4715439 () Bool)

(assert (=> b!4115296 m!4715439))

(declare-fun m!4715441 () Bool)

(assert (=> b!4115292 m!4715441))

(declare-fun m!4715443 () Bool)

(assert (=> b!4115303 m!4715443))

(declare-fun m!4715445 () Bool)

(assert (=> b!4115303 m!4715445))

(declare-fun m!4715447 () Bool)

(assert (=> b!4115299 m!4715447))

(declare-fun m!4715449 () Bool)

(assert (=> b!4115295 m!4715449))

(declare-fun m!4715451 () Bool)

(assert (=> b!4115291 m!4715451))

(declare-fun m!4715453 () Bool)

(assert (=> b!4115291 m!4715453))

(declare-fun m!4715455 () Bool)

(assert (=> b!4115302 m!4715455))

(declare-fun m!4715457 () Bool)

(assert (=> b!4115302 m!4715457))

(declare-fun m!4715459 () Bool)

(assert (=> b!4115293 m!4715459))

(declare-fun m!4715461 () Bool)

(assert (=> b!4115293 m!4715461))

(assert (=> b!4115293 m!4715461))

(declare-fun m!4715463 () Bool)

(assert (=> b!4115293 m!4715463))

(check-sat b_and!317851 tp_is_empty!21209 (not b!4115303) b_and!317859 (not b!4115302) (not b!4115293) (not b!4115297) b_and!317855 b_and!317853 (not b_next!116671) (not b_next!116669) (not b_next!116667) (not b!4115291) (not b!4115292) (not b!4115294) (not b_next!116673) (not b!4115300) (not b!4115299) (not b!4115301) b_and!317857 (not b!4115295) (not b_next!116675) (not b_next!116677) (not b!4115290) b_and!317849 (not b!4115296))
(check-sat b_and!317851 (not b_next!116673) b_and!317857 (not b_next!116675) b_and!317859 (not b_next!116677) b_and!317849 b_and!317855 b_and!317853 (not b_next!116671) (not b_next!116669) (not b_next!116667))
(get-model)

(declare-fun d!1220612 () Bool)

(declare-fun lt!1468680 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6854 (List!44551) (InoxSet Rule!14276))

(assert (=> d!1220612 (= lt!1468680 (select (content!6854 rules!3756) rBis!149))))

(declare-fun e!2553428 () Bool)

(assert (=> d!1220612 (= lt!1468680 e!2553428)))

(declare-fun res!1680871 () Bool)

(assert (=> d!1220612 (=> (not res!1680871) (not e!2553428))))

(assert (=> d!1220612 (= res!1680871 ((_ is Cons!44427) rules!3756))))

(assert (=> d!1220612 (= (contains!8906 rules!3756 rBis!149) lt!1468680)))

(declare-fun b!4115315 () Bool)

(declare-fun e!2553427 () Bool)

(assert (=> b!4115315 (= e!2553428 e!2553427)))

(declare-fun res!1680870 () Bool)

(assert (=> b!4115315 (=> res!1680870 e!2553427)))

(assert (=> b!4115315 (= res!1680870 (= (h!49847 rules!3756) rBis!149))))

(declare-fun b!4115316 () Bool)

(assert (=> b!4115316 (= e!2553427 (contains!8906 (t!340302 rules!3756) rBis!149))))

(assert (= (and d!1220612 res!1680871) b!4115315))

(assert (= (and b!4115315 (not res!1680870)) b!4115316))

(declare-fun m!4715471 () Bool)

(assert (=> d!1220612 m!4715471))

(declare-fun m!4715473 () Bool)

(assert (=> d!1220612 m!4715473))

(declare-fun m!4715475 () Bool)

(assert (=> b!4115316 m!4715475))

(assert (=> b!4115294 d!1220612))

(declare-fun d!1220618 () Bool)

(assert (=> d!1220618 (= (isEmpty!26414 p!2912) ((_ is Nil!44426) p!2912))))

(assert (=> b!4115299 d!1220618))

(declare-fun d!1220620 () Bool)

(assert (=> d!1220620 true))

(declare-fun lt!1468693 () Bool)

(declare-fun lambda!128574 () Int)

(declare-fun forall!8444 (List!44551 Int) Bool)

(assert (=> d!1220620 (= lt!1468693 (forall!8444 rules!3756 lambda!128574))))

(declare-fun e!2553488 () Bool)

(assert (=> d!1220620 (= lt!1468693 e!2553488)))

(declare-fun res!1680905 () Bool)

(assert (=> d!1220620 (=> res!1680905 e!2553488)))

(assert (=> d!1220620 (= res!1680905 (not ((_ is Cons!44427) rules!3756)))))

(assert (=> d!1220620 (= (rulesValidInductive!2669 thiss!25645 rules!3756) lt!1468693)))

(declare-fun b!4115402 () Bool)

(declare-fun e!2553489 () Bool)

(assert (=> b!4115402 (= e!2553488 e!2553489)))

(declare-fun res!1680904 () Bool)

(assert (=> b!4115402 (=> (not res!1680904) (not e!2553489))))

(declare-fun ruleValid!3056 (LexerInterface!6827 Rule!14276) Bool)

(assert (=> b!4115402 (= res!1680904 (ruleValid!3056 thiss!25645 (h!49847 rules!3756)))))

(declare-fun b!4115403 () Bool)

(assert (=> b!4115403 (= e!2553489 (rulesValidInductive!2669 thiss!25645 (t!340302 rules!3756)))))

(assert (= (and d!1220620 (not res!1680905)) b!4115402))

(assert (= (and b!4115402 res!1680904) b!4115403))

(declare-fun m!4715539 () Bool)

(assert (=> d!1220620 m!4715539))

(declare-fun m!4715541 () Bool)

(assert (=> b!4115402 m!4715541))

(declare-fun m!4715543 () Bool)

(assert (=> b!4115403 m!4715543))

(assert (=> b!4115293 d!1220620))

(declare-fun b!4115410 () Bool)

(declare-fun e!2553492 () Bool)

(assert (=> b!4115410 (= e!2553492 true)))

(declare-fun d!1220646 () Bool)

(assert (=> d!1220646 e!2553492))

(assert (= d!1220646 b!4115410))

(declare-fun order!23349 () Int)

(declare-fun order!23351 () Int)

(declare-fun lambda!128577 () Int)

(declare-fun dynLambda!18963 (Int Int) Int)

(declare-fun dynLambda!18964 (Int Int) Int)

(assert (=> b!4115410 (< (dynLambda!18963 order!23349 (toValue!9882 (transformation!7238 r!4008))) (dynLambda!18964 order!23351 lambda!128577))))

(declare-fun order!23353 () Int)

(declare-fun dynLambda!18965 (Int Int) Int)

(assert (=> b!4115410 (< (dynLambda!18965 order!23353 (toChars!9741 (transformation!7238 r!4008))) (dynLambda!18964 order!23351 lambda!128577))))

(declare-fun list!16329 (BalanceConc!26492) List!44550)

(declare-fun dynLambda!18966 (Int TokenValue!7468) BalanceConc!26492)

(declare-fun dynLambda!18967 (Int BalanceConc!26492) TokenValue!7468)

(assert (=> d!1220646 (= (list!16329 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))) (list!16329 (seqFromList!5355 p!2912)))))

(declare-fun lt!1468696 () Unit!63791)

(declare-fun ForallOf!905 (Int BalanceConc!26492) Unit!63791)

(assert (=> d!1220646 (= lt!1468696 (ForallOf!905 lambda!128577 (seqFromList!5355 p!2912)))))

(assert (=> d!1220646 (= (lemmaSemiInverse!2096 (transformation!7238 r!4008) (seqFromList!5355 p!2912)) lt!1468696)))

(declare-fun b_lambda!120719 () Bool)

(assert (=> (not b_lambda!120719) (not d!1220646)))

(declare-fun t!340320 () Bool)

(declare-fun tb!246991 () Bool)

(assert (=> (and b!4115304 (= (toChars!9741 (transformation!7238 r!4008)) (toChars!9741 (transformation!7238 r!4008))) t!340320) tb!246991))

(declare-fun b!4115415 () Bool)

(declare-fun tp!1253421 () Bool)

(declare-fun e!2553495 () Bool)

(declare-fun inv!59009 (Conc!13449) Bool)

(assert (=> b!4115415 (= e!2553495 (and (inv!59009 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))) tp!1253421))))

(declare-fun result!299998 () Bool)

(declare-fun inv!59010 (BalanceConc!26492) Bool)

(assert (=> tb!246991 (= result!299998 (and (inv!59010 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))) e!2553495))))

(assert (= tb!246991 b!4115415))

(declare-fun m!4715545 () Bool)

(assert (=> b!4115415 m!4715545))

(declare-fun m!4715547 () Bool)

(assert (=> tb!246991 m!4715547))

(assert (=> d!1220646 t!340320))

(declare-fun b_and!317877 () Bool)

(assert (= b_and!317851 (and (=> t!340320 result!299998) b_and!317877)))

(declare-fun t!340322 () Bool)

(declare-fun tb!246993 () Bool)

(assert (=> (and b!4115289 (= (toChars!9741 (transformation!7238 (h!49847 rules!3756))) (toChars!9741 (transformation!7238 r!4008))) t!340322) tb!246993))

(declare-fun result!300002 () Bool)

(assert (= result!300002 result!299998))

(assert (=> d!1220646 t!340322))

(declare-fun b_and!317879 () Bool)

(assert (= b_and!317855 (and (=> t!340322 result!300002) b_and!317879)))

(declare-fun t!340324 () Bool)

(declare-fun tb!246995 () Bool)

(assert (=> (and b!4115298 (= (toChars!9741 (transformation!7238 rBis!149)) (toChars!9741 (transformation!7238 r!4008))) t!340324) tb!246995))

(declare-fun result!300004 () Bool)

(assert (= result!300004 result!299998))

(assert (=> d!1220646 t!340324))

(declare-fun b_and!317881 () Bool)

(assert (= b_and!317859 (and (=> t!340324 result!300004) b_and!317881)))

(declare-fun b_lambda!120721 () Bool)

(assert (=> (not b_lambda!120721) (not d!1220646)))

(declare-fun t!340326 () Bool)

(declare-fun tb!246997 () Bool)

(assert (=> (and b!4115304 (= (toValue!9882 (transformation!7238 r!4008)) (toValue!9882 (transformation!7238 r!4008))) t!340326) tb!246997))

(declare-fun result!300006 () Bool)

(declare-fun inv!21 (TokenValue!7468) Bool)

(assert (=> tb!246997 (= result!300006 (inv!21 (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))

(declare-fun m!4715549 () Bool)

(assert (=> tb!246997 m!4715549))

(assert (=> d!1220646 t!340326))

(declare-fun b_and!317883 () Bool)

(assert (= b_and!317849 (and (=> t!340326 result!300006) b_and!317883)))

(declare-fun tb!246999 () Bool)

(declare-fun t!340328 () Bool)

(assert (=> (and b!4115289 (= (toValue!9882 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 r!4008))) t!340328) tb!246999))

(declare-fun result!300010 () Bool)

(assert (= result!300010 result!300006))

(assert (=> d!1220646 t!340328))

(declare-fun b_and!317885 () Bool)

(assert (= b_and!317853 (and (=> t!340328 result!300010) b_and!317885)))

(declare-fun tb!247001 () Bool)

(declare-fun t!340330 () Bool)

(assert (=> (and b!4115298 (= (toValue!9882 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 r!4008))) t!340330) tb!247001))

(declare-fun result!300012 () Bool)

(assert (= result!300012 result!300006))

(assert (=> d!1220646 t!340330))

(declare-fun b_and!317887 () Bool)

(assert (= b_and!317857 (and (=> t!340330 result!300012) b_and!317887)))

(assert (=> d!1220646 m!4715461))

(declare-fun m!4715551 () Bool)

(assert (=> d!1220646 m!4715551))

(declare-fun m!4715553 () Bool)

(assert (=> d!1220646 m!4715553))

(declare-fun m!4715555 () Bool)

(assert (=> d!1220646 m!4715555))

(assert (=> d!1220646 m!4715461))

(declare-fun m!4715557 () Bool)

(assert (=> d!1220646 m!4715557))

(assert (=> d!1220646 m!4715461))

(declare-fun m!4715559 () Bool)

(assert (=> d!1220646 m!4715559))

(assert (=> d!1220646 m!4715551))

(assert (=> d!1220646 m!4715553))

(assert (=> b!4115293 d!1220646))

(declare-fun d!1220648 () Bool)

(declare-fun fromListB!2455 (List!44550) BalanceConc!26492)

(assert (=> d!1220648 (= (seqFromList!5355 p!2912) (fromListB!2455 p!2912))))

(declare-fun bs!594505 () Bool)

(assert (= bs!594505 d!1220648))

(declare-fun m!4715561 () Bool)

(assert (=> bs!594505 m!4715561))

(assert (=> b!4115293 d!1220648))

(declare-fun b!4115428 () Bool)

(declare-fun e!2553506 () Bool)

(declare-fun tail!6403 (List!44550) List!44550)

(assert (=> b!4115428 (= e!2553506 (isPrefix!4173 (tail!6403 p!2912) (tail!6403 input!3238)))))

(declare-fun b!4115427 () Bool)

(declare-fun res!1680916 () Bool)

(assert (=> b!4115427 (=> (not res!1680916) (not e!2553506))))

(declare-fun head!8669 (List!44550) C!24472)

(assert (=> b!4115427 (= res!1680916 (= (head!8669 p!2912) (head!8669 input!3238)))))

(declare-fun b!4115429 () Bool)

(declare-fun e!2553505 () Bool)

(declare-fun size!32892 (List!44550) Int)

(assert (=> b!4115429 (= e!2553505 (>= (size!32892 input!3238) (size!32892 p!2912)))))

(declare-fun d!1220650 () Bool)

(assert (=> d!1220650 e!2553505))

(declare-fun res!1680917 () Bool)

(assert (=> d!1220650 (=> res!1680917 e!2553505)))

(declare-fun lt!1468699 () Bool)

(assert (=> d!1220650 (= res!1680917 (not lt!1468699))))

(declare-fun e!2553507 () Bool)

(assert (=> d!1220650 (= lt!1468699 e!2553507)))

(declare-fun res!1680915 () Bool)

(assert (=> d!1220650 (=> res!1680915 e!2553507)))

(assert (=> d!1220650 (= res!1680915 ((_ is Nil!44426) p!2912))))

(assert (=> d!1220650 (= (isPrefix!4173 p!2912 input!3238) lt!1468699)))

(declare-fun b!4115426 () Bool)

(assert (=> b!4115426 (= e!2553507 e!2553506)))

(declare-fun res!1680914 () Bool)

(assert (=> b!4115426 (=> (not res!1680914) (not e!2553506))))

(assert (=> b!4115426 (= res!1680914 (not ((_ is Nil!44426) input!3238)))))

(assert (= (and d!1220650 (not res!1680915)) b!4115426))

(assert (= (and b!4115426 res!1680914) b!4115427))

(assert (= (and b!4115427 res!1680916) b!4115428))

(assert (= (and d!1220650 (not res!1680917)) b!4115429))

(declare-fun m!4715563 () Bool)

(assert (=> b!4115428 m!4715563))

(declare-fun m!4715565 () Bool)

(assert (=> b!4115428 m!4715565))

(assert (=> b!4115428 m!4715563))

(assert (=> b!4115428 m!4715565))

(declare-fun m!4715567 () Bool)

(assert (=> b!4115428 m!4715567))

(declare-fun m!4715569 () Bool)

(assert (=> b!4115427 m!4715569))

(declare-fun m!4715571 () Bool)

(assert (=> b!4115427 m!4715571))

(declare-fun m!4715573 () Bool)

(assert (=> b!4115429 m!4715573))

(declare-fun m!4715575 () Bool)

(assert (=> b!4115429 m!4715575))

(assert (=> b!4115295 d!1220650))

(declare-fun d!1220652 () Bool)

(assert (=> d!1220652 (= (inv!59004 (tag!8098 (h!49847 rules!3756))) (= (mod (str.len (value!226843 (tag!8098 (h!49847 rules!3756)))) 2) 0))))

(assert (=> b!4115302 d!1220652))

(declare-fun d!1220654 () Bool)

(declare-fun res!1680920 () Bool)

(declare-fun e!2553510 () Bool)

(assert (=> d!1220654 (=> (not res!1680920) (not e!2553510))))

(declare-fun semiInverseModEq!3122 (Int Int) Bool)

(assert (=> d!1220654 (= res!1680920 (semiInverseModEq!3122 (toChars!9741 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 (h!49847 rules!3756)))))))

(assert (=> d!1220654 (= (inv!59006 (transformation!7238 (h!49847 rules!3756))) e!2553510)))

(declare-fun b!4115432 () Bool)

(declare-fun equivClasses!3021 (Int Int) Bool)

(assert (=> b!4115432 (= e!2553510 (equivClasses!3021 (toChars!9741 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 (h!49847 rules!3756)))))))

(assert (= (and d!1220654 res!1680920) b!4115432))

(declare-fun m!4715577 () Bool)

(assert (=> d!1220654 m!4715577))

(declare-fun m!4715579 () Bool)

(assert (=> b!4115432 m!4715579))

(assert (=> b!4115302 d!1220654))

(declare-fun d!1220656 () Bool)

(assert (=> d!1220656 (= (inv!59004 (tag!8098 rBis!149)) (= (mod (str.len (value!226843 (tag!8098 rBis!149))) 2) 0))))

(assert (=> b!4115291 d!1220656))

(declare-fun d!1220658 () Bool)

(declare-fun res!1680921 () Bool)

(declare-fun e!2553511 () Bool)

(assert (=> d!1220658 (=> (not res!1680921) (not e!2553511))))

(assert (=> d!1220658 (= res!1680921 (semiInverseModEq!3122 (toChars!9741 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 rBis!149))))))

(assert (=> d!1220658 (= (inv!59006 (transformation!7238 rBis!149)) e!2553511)))

(declare-fun b!4115433 () Bool)

(assert (=> b!4115433 (= e!2553511 (equivClasses!3021 (toChars!9741 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 rBis!149))))))

(assert (= (and d!1220658 res!1680921) b!4115433))

(declare-fun m!4715581 () Bool)

(assert (=> d!1220658 m!4715581))

(declare-fun m!4715583 () Bool)

(assert (=> b!4115433 m!4715583))

(assert (=> b!4115291 d!1220658))

(declare-fun d!1220660 () Bool)

(assert (=> d!1220660 (= (isEmpty!26413 rules!3756) ((_ is Nil!44427) rules!3756))))

(assert (=> b!4115296 d!1220660))

(declare-fun d!1220662 () Bool)

(declare-fun res!1680924 () Bool)

(declare-fun e!2553514 () Bool)

(assert (=> d!1220662 (=> (not res!1680924) (not e!2553514))))

(declare-fun rulesValid!2836 (LexerInterface!6827 List!44551) Bool)

(assert (=> d!1220662 (= res!1680924 (rulesValid!2836 thiss!25645 rules!3756))))

(assert (=> d!1220662 (= (rulesInvariant!6124 thiss!25645 rules!3756) e!2553514)))

(declare-fun b!4115436 () Bool)

(declare-datatypes ((List!44553 0))(
  ( (Nil!44429) (Cons!44429 (h!49849 String!51090) (t!340336 List!44553)) )
))
(declare-fun noDuplicateTag!2913 (LexerInterface!6827 List!44551 List!44553) Bool)

(assert (=> b!4115436 (= e!2553514 (noDuplicateTag!2913 thiss!25645 rules!3756 Nil!44429))))

(assert (= (and d!1220662 res!1680924) b!4115436))

(declare-fun m!4715585 () Bool)

(assert (=> d!1220662 m!4715585))

(declare-fun m!4715587 () Bool)

(assert (=> b!4115436 m!4715587))

(assert (=> b!4115301 d!1220662))

(declare-fun d!1220664 () Bool)

(assert (=> d!1220664 (= (inv!59004 (tag!8098 r!4008)) (= (mod (str.len (value!226843 (tag!8098 r!4008))) 2) 0))))

(assert (=> b!4115303 d!1220664))

(declare-fun d!1220666 () Bool)

(declare-fun res!1680925 () Bool)

(declare-fun e!2553515 () Bool)

(assert (=> d!1220666 (=> (not res!1680925) (not e!2553515))))

(assert (=> d!1220666 (= res!1680925 (semiInverseModEq!3122 (toChars!9741 (transformation!7238 r!4008)) (toValue!9882 (transformation!7238 r!4008))))))

(assert (=> d!1220666 (= (inv!59006 (transformation!7238 r!4008)) e!2553515)))

(declare-fun b!4115437 () Bool)

(assert (=> b!4115437 (= e!2553515 (equivClasses!3021 (toChars!9741 (transformation!7238 r!4008)) (toValue!9882 (transformation!7238 r!4008))))))

(assert (= (and d!1220666 res!1680925) b!4115437))

(declare-fun m!4715589 () Bool)

(assert (=> d!1220666 m!4715589))

(declare-fun m!4715591 () Bool)

(assert (=> b!4115437 m!4715591))

(assert (=> b!4115303 d!1220666))

(declare-fun d!1220668 () Bool)

(declare-fun lt!1468700 () Bool)

(assert (=> d!1220668 (= lt!1468700 (select (content!6854 rules!3756) r!4008))))

(declare-fun e!2553517 () Bool)

(assert (=> d!1220668 (= lt!1468700 e!2553517)))

(declare-fun res!1680927 () Bool)

(assert (=> d!1220668 (=> (not res!1680927) (not e!2553517))))

(assert (=> d!1220668 (= res!1680927 ((_ is Cons!44427) rules!3756))))

(assert (=> d!1220668 (= (contains!8906 rules!3756 r!4008) lt!1468700)))

(declare-fun b!4115438 () Bool)

(declare-fun e!2553516 () Bool)

(assert (=> b!4115438 (= e!2553517 e!2553516)))

(declare-fun res!1680926 () Bool)

(assert (=> b!4115438 (=> res!1680926 e!2553516)))

(assert (=> b!4115438 (= res!1680926 (= (h!49847 rules!3756) r!4008))))

(declare-fun b!4115439 () Bool)

(assert (=> b!4115439 (= e!2553516 (contains!8906 (t!340302 rules!3756) r!4008))))

(assert (= (and d!1220668 res!1680927) b!4115438))

(assert (= (and b!4115438 (not res!1680926)) b!4115439))

(assert (=> d!1220668 m!4715471))

(declare-fun m!4715593 () Bool)

(assert (=> d!1220668 m!4715593))

(declare-fun m!4715595 () Bool)

(assert (=> b!4115439 m!4715595))

(assert (=> b!4115292 d!1220668))

(declare-fun b!4115450 () Bool)

(declare-fun b_free!115979 () Bool)

(declare-fun b_next!116683 () Bool)

(assert (=> b!4115450 (= b_free!115979 (not b_next!116683))))

(declare-fun tb!247003 () Bool)

(declare-fun t!340332 () Bool)

(assert (=> (and b!4115450 (= (toValue!9882 (transformation!7238 (h!49847 (t!340302 rules!3756)))) (toValue!9882 (transformation!7238 r!4008))) t!340332) tb!247003))

(declare-fun result!300016 () Bool)

(assert (= result!300016 result!300006))

(assert (=> d!1220646 t!340332))

(declare-fun tp!1253431 () Bool)

(declare-fun b_and!317889 () Bool)

(assert (=> b!4115450 (= tp!1253431 (and (=> t!340332 result!300016) b_and!317889))))

(declare-fun b_free!115981 () Bool)

(declare-fun b_next!116685 () Bool)

(assert (=> b!4115450 (= b_free!115981 (not b_next!116685))))

(declare-fun tb!247005 () Bool)

(declare-fun t!340334 () Bool)

(assert (=> (and b!4115450 (= (toChars!9741 (transformation!7238 (h!49847 (t!340302 rules!3756)))) (toChars!9741 (transformation!7238 r!4008))) t!340334) tb!247005))

(declare-fun result!300018 () Bool)

(assert (= result!300018 result!299998))

(assert (=> d!1220646 t!340334))

(declare-fun tp!1253430 () Bool)

(declare-fun b_and!317891 () Bool)

(assert (=> b!4115450 (= tp!1253430 (and (=> t!340334 result!300018) b_and!317891))))

(declare-fun e!2553527 () Bool)

(assert (=> b!4115450 (= e!2553527 (and tp!1253431 tp!1253430))))

(declare-fun e!2553528 () Bool)

(declare-fun tp!1253433 () Bool)

(declare-fun b!4115449 () Bool)

(assert (=> b!4115449 (= e!2553528 (and tp!1253433 (inv!59004 (tag!8098 (h!49847 (t!340302 rules!3756)))) (inv!59006 (transformation!7238 (h!49847 (t!340302 rules!3756)))) e!2553527))))

(declare-fun b!4115448 () Bool)

(declare-fun e!2553529 () Bool)

(declare-fun tp!1253432 () Bool)

(assert (=> b!4115448 (= e!2553529 (and e!2553528 tp!1253432))))

(assert (=> b!4115290 (= tp!1253366 e!2553529)))

(assert (= b!4115449 b!4115450))

(assert (= b!4115448 b!4115449))

(assert (= (and b!4115290 ((_ is Cons!44427) (t!340302 rules!3756))) b!4115448))

(declare-fun m!4715597 () Bool)

(assert (=> b!4115449 m!4715597))

(declare-fun m!4715599 () Bool)

(assert (=> b!4115449 m!4715599))

(declare-fun b!4115455 () Bool)

(declare-fun e!2553532 () Bool)

(declare-fun tp!1253436 () Bool)

(assert (=> b!4115455 (= e!2553532 (and tp_is_empty!21209 tp!1253436))))

(assert (=> b!4115300 (= tp!1253364 e!2553532)))

(assert (= (and b!4115300 ((_ is Cons!44426) (t!340301 p!2912))) b!4115455))

(declare-fun b!4115466 () Bool)

(declare-fun e!2553535 () Bool)

(assert (=> b!4115466 (= e!2553535 tp_is_empty!21209)))

(declare-fun b!4115467 () Bool)

(declare-fun tp!1253447 () Bool)

(declare-fun tp!1253449 () Bool)

(assert (=> b!4115467 (= e!2553535 (and tp!1253447 tp!1253449))))

(declare-fun b!4115469 () Bool)

(declare-fun tp!1253450 () Bool)

(declare-fun tp!1253451 () Bool)

(assert (=> b!4115469 (= e!2553535 (and tp!1253450 tp!1253451))))

(assert (=> b!4115302 (= tp!1253368 e!2553535)))

(declare-fun b!4115468 () Bool)

(declare-fun tp!1253448 () Bool)

(assert (=> b!4115468 (= e!2553535 tp!1253448)))

(assert (= (and b!4115302 ((_ is ElementMatch!12143) (regex!7238 (h!49847 rules!3756)))) b!4115466))

(assert (= (and b!4115302 ((_ is Concat!19612) (regex!7238 (h!49847 rules!3756)))) b!4115467))

(assert (= (and b!4115302 ((_ is Star!12143) (regex!7238 (h!49847 rules!3756)))) b!4115468))

(assert (= (and b!4115302 ((_ is Union!12143) (regex!7238 (h!49847 rules!3756)))) b!4115469))

(declare-fun b!4115470 () Bool)

(declare-fun e!2553536 () Bool)

(assert (=> b!4115470 (= e!2553536 tp_is_empty!21209)))

(declare-fun b!4115471 () Bool)

(declare-fun tp!1253452 () Bool)

(declare-fun tp!1253454 () Bool)

(assert (=> b!4115471 (= e!2553536 (and tp!1253452 tp!1253454))))

(declare-fun b!4115473 () Bool)

(declare-fun tp!1253455 () Bool)

(declare-fun tp!1253456 () Bool)

(assert (=> b!4115473 (= e!2553536 (and tp!1253455 tp!1253456))))

(assert (=> b!4115291 (= tp!1253373 e!2553536)))

(declare-fun b!4115472 () Bool)

(declare-fun tp!1253453 () Bool)

(assert (=> b!4115472 (= e!2553536 tp!1253453)))

(assert (= (and b!4115291 ((_ is ElementMatch!12143) (regex!7238 rBis!149))) b!4115470))

(assert (= (and b!4115291 ((_ is Concat!19612) (regex!7238 rBis!149))) b!4115471))

(assert (= (and b!4115291 ((_ is Star!12143) (regex!7238 rBis!149))) b!4115472))

(assert (= (and b!4115291 ((_ is Union!12143) (regex!7238 rBis!149))) b!4115473))

(declare-fun b!4115474 () Bool)

(declare-fun e!2553537 () Bool)

(assert (=> b!4115474 (= e!2553537 tp_is_empty!21209)))

(declare-fun b!4115475 () Bool)

(declare-fun tp!1253457 () Bool)

(declare-fun tp!1253459 () Bool)

(assert (=> b!4115475 (= e!2553537 (and tp!1253457 tp!1253459))))

(declare-fun b!4115477 () Bool)

(declare-fun tp!1253460 () Bool)

(declare-fun tp!1253461 () Bool)

(assert (=> b!4115477 (= e!2553537 (and tp!1253460 tp!1253461))))

(assert (=> b!4115303 (= tp!1253372 e!2553537)))

(declare-fun b!4115476 () Bool)

(declare-fun tp!1253458 () Bool)

(assert (=> b!4115476 (= e!2553537 tp!1253458)))

(assert (= (and b!4115303 ((_ is ElementMatch!12143) (regex!7238 r!4008))) b!4115474))

(assert (= (and b!4115303 ((_ is Concat!19612) (regex!7238 r!4008))) b!4115475))

(assert (= (and b!4115303 ((_ is Star!12143) (regex!7238 r!4008))) b!4115476))

(assert (= (and b!4115303 ((_ is Union!12143) (regex!7238 r!4008))) b!4115477))

(declare-fun b!4115478 () Bool)

(declare-fun e!2553538 () Bool)

(declare-fun tp!1253462 () Bool)

(assert (=> b!4115478 (= e!2553538 (and tp_is_empty!21209 tp!1253462))))

(assert (=> b!4115297 (= tp!1253371 e!2553538)))

(assert (= (and b!4115297 ((_ is Cons!44426) (t!340301 input!3238))) b!4115478))

(declare-fun b_lambda!120723 () Bool)

(assert (= b_lambda!120721 (or (and b!4115304 b_free!115963) (and b!4115289 b_free!115967 (= (toValue!9882 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 r!4008)))) (and b!4115298 b_free!115971 (= (toValue!9882 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 r!4008)))) (and b!4115450 b_free!115979 (= (toValue!9882 (transformation!7238 (h!49847 (t!340302 rules!3756)))) (toValue!9882 (transformation!7238 r!4008)))) b_lambda!120723)))

(declare-fun b_lambda!120725 () Bool)

(assert (= b_lambda!120719 (or (and b!4115304 b_free!115965) (and b!4115289 b_free!115969 (= (toChars!9741 (transformation!7238 (h!49847 rules!3756))) (toChars!9741 (transformation!7238 r!4008)))) (and b!4115298 b_free!115973 (= (toChars!9741 (transformation!7238 rBis!149)) (toChars!9741 (transformation!7238 r!4008)))) (and b!4115450 b_free!115981 (= (toChars!9741 (transformation!7238 (h!49847 (t!340302 rules!3756)))) (toChars!9741 (transformation!7238 r!4008)))) b_lambda!120725)))

(check-sat (not tb!246997) (not b!4115477) (not b!4115316) (not b_next!116673) (not b_next!116685) (not b!4115437) (not b!4115403) b_and!317877 (not b!4115472) (not b_next!116669) (not b_lambda!120725) (not b!4115432) (not d!1220646) b_and!317883 (not b_next!116667) (not b!4115439) b_and!317885 (not b!4115402) (not b!4115415) (not b!4115427) tp_is_empty!21209 (not d!1220662) b_and!317881 (not b!4115469) (not b!4115476) (not b!4115473) (not b!4115467) (not d!1220648) (not b!4115448) (not b!4115436) (not b!4115471) (not d!1220668) (not b_next!116675) (not d!1220612) (not b!4115433) (not b!4115449) (not d!1220654) (not b!4115478) (not b!4115429) (not b_next!116677) (not d!1220620) (not b_lambda!120723) (not d!1220658) (not b_next!116683) (not b!4115428) b_and!317891 (not b!4115455) b_and!317887 b_and!317879 (not d!1220666) (not tb!246991) (not b!4115468) (not b!4115475) (not b_next!116671) b_and!317889)
(check-sat b_and!317877 b_and!317885 (not b_next!116673) b_and!317881 (not b_next!116685) (not b_next!116675) (not b_next!116677) (not b_next!116683) b_and!317891 (not b_next!116669) b_and!317883 (not b_next!116667) b_and!317887 b_and!317879 (not b_next!116671) b_and!317889)
(get-model)

(declare-fun bs!594512 () Bool)

(declare-fun d!1220682 () Bool)

(assert (= bs!594512 (and d!1220682 d!1220646)))

(declare-fun lambda!128587 () Int)

(assert (=> bs!594512 (= (and (= (toChars!9741 (transformation!7238 (h!49847 rules!3756))) (toChars!9741 (transformation!7238 r!4008))) (= (toValue!9882 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 r!4008)))) (= lambda!128587 lambda!128577))))

(assert (=> d!1220682 true))

(assert (=> d!1220682 (< (dynLambda!18965 order!23353 (toChars!9741 (transformation!7238 (h!49847 rules!3756)))) (dynLambda!18964 order!23351 lambda!128587))))

(assert (=> d!1220682 true))

(assert (=> d!1220682 (< (dynLambda!18963 order!23349 (toValue!9882 (transformation!7238 (h!49847 rules!3756)))) (dynLambda!18964 order!23351 lambda!128587))))

(declare-fun Forall!1542 (Int) Bool)

(assert (=> d!1220682 (= (semiInverseModEq!3122 (toChars!9741 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 (h!49847 rules!3756)))) (Forall!1542 lambda!128587))))

(declare-fun bs!594513 () Bool)

(assert (= bs!594513 d!1220682))

(declare-fun m!4715623 () Bool)

(assert (=> bs!594513 m!4715623))

(assert (=> d!1220654 d!1220682))

(declare-fun d!1220688 () Bool)

(declare-fun list!16330 (Conc!13449) List!44550)

(assert (=> d!1220688 (= (list!16329 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))) (list!16330 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))))

(declare-fun bs!594515 () Bool)

(assert (= bs!594515 d!1220688))

(declare-fun m!4715631 () Bool)

(assert (=> bs!594515 m!4715631))

(assert (=> d!1220646 d!1220688))

(declare-fun d!1220692 () Bool)

(assert (=> d!1220692 (= (list!16329 (seqFromList!5355 p!2912)) (list!16330 (c!707070 (seqFromList!5355 p!2912))))))

(declare-fun bs!594516 () Bool)

(assert (= bs!594516 d!1220692))

(declare-fun m!4715633 () Bool)

(assert (=> bs!594516 m!4715633))

(assert (=> d!1220646 d!1220692))

(declare-fun d!1220694 () Bool)

(declare-fun dynLambda!18969 (Int BalanceConc!26492) Bool)

(assert (=> d!1220694 (dynLambda!18969 lambda!128577 (seqFromList!5355 p!2912))))

(declare-fun lt!1468705 () Unit!63791)

(declare-fun choose!25154 (Int BalanceConc!26492) Unit!63791)

(assert (=> d!1220694 (= lt!1468705 (choose!25154 lambda!128577 (seqFromList!5355 p!2912)))))

(assert (=> d!1220694 (Forall!1542 lambda!128577)))

(assert (=> d!1220694 (= (ForallOf!905 lambda!128577 (seqFromList!5355 p!2912)) lt!1468705)))

(declare-fun b_lambda!120727 () Bool)

(assert (=> (not b_lambda!120727) (not d!1220694)))

(declare-fun bs!594521 () Bool)

(assert (= bs!594521 d!1220694))

(assert (=> bs!594521 m!4715461))

(declare-fun m!4715641 () Bool)

(assert (=> bs!594521 m!4715641))

(assert (=> bs!594521 m!4715461))

(declare-fun m!4715643 () Bool)

(assert (=> bs!594521 m!4715643))

(declare-fun m!4715645 () Bool)

(assert (=> bs!594521 m!4715645))

(assert (=> d!1220646 d!1220694))

(declare-fun d!1220700 () Bool)

(assert (=> d!1220700 true))

(declare-fun lambda!128593 () Int)

(declare-fun order!23357 () Int)

(declare-fun dynLambda!18970 (Int Int) Int)

(assert (=> d!1220700 (< (dynLambda!18963 order!23349 (toValue!9882 (transformation!7238 r!4008))) (dynLambda!18970 order!23357 lambda!128593))))

(declare-fun Forall2!1141 (Int) Bool)

(assert (=> d!1220700 (= (equivClasses!3021 (toChars!9741 (transformation!7238 r!4008)) (toValue!9882 (transformation!7238 r!4008))) (Forall2!1141 lambda!128593))))

(declare-fun bs!594527 () Bool)

(assert (= bs!594527 d!1220700))

(declare-fun m!4715659 () Bool)

(assert (=> bs!594527 m!4715659))

(assert (=> b!4115437 d!1220700))

(declare-fun d!1220710 () Bool)

(declare-fun res!1680960 () Bool)

(declare-fun e!2553574 () Bool)

(assert (=> d!1220710 (=> (not res!1680960) (not e!2553574))))

(declare-fun validRegex!5462 (Regex!12143) Bool)

(assert (=> d!1220710 (= res!1680960 (validRegex!5462 (regex!7238 (h!49847 rules!3756))))))

(assert (=> d!1220710 (= (ruleValid!3056 thiss!25645 (h!49847 rules!3756)) e!2553574)))

(declare-fun b!4115539 () Bool)

(declare-fun res!1680961 () Bool)

(assert (=> b!4115539 (=> (not res!1680961) (not e!2553574))))

(declare-fun nullable!4262 (Regex!12143) Bool)

(assert (=> b!4115539 (= res!1680961 (not (nullable!4262 (regex!7238 (h!49847 rules!3756)))))))

(declare-fun b!4115540 () Bool)

(assert (=> b!4115540 (= e!2553574 (not (= (tag!8098 (h!49847 rules!3756)) (String!51091 ""))))))

(assert (= (and d!1220710 res!1680960) b!4115539))

(assert (= (and b!4115539 res!1680961) b!4115540))

(declare-fun m!4715671 () Bool)

(assert (=> d!1220710 m!4715671))

(declare-fun m!4715673 () Bool)

(assert (=> b!4115539 m!4715673))

(assert (=> b!4115402 d!1220710))

(declare-fun d!1220716 () Bool)

(declare-fun lt!1468715 () Int)

(assert (=> d!1220716 (>= lt!1468715 0)))

(declare-fun e!2553584 () Int)

(assert (=> d!1220716 (= lt!1468715 e!2553584)))

(declare-fun c!707089 () Bool)

(assert (=> d!1220716 (= c!707089 ((_ is Nil!44426) input!3238))))

(assert (=> d!1220716 (= (size!32892 input!3238) lt!1468715)))

(declare-fun b!4115556 () Bool)

(assert (=> b!4115556 (= e!2553584 0)))

(declare-fun b!4115557 () Bool)

(assert (=> b!4115557 (= e!2553584 (+ 1 (size!32892 (t!340301 input!3238))))))

(assert (= (and d!1220716 c!707089) b!4115556))

(assert (= (and d!1220716 (not c!707089)) b!4115557))

(declare-fun m!4715681 () Bool)

(assert (=> b!4115557 m!4715681))

(assert (=> b!4115429 d!1220716))

(declare-fun d!1220720 () Bool)

(declare-fun lt!1468716 () Int)

(assert (=> d!1220720 (>= lt!1468716 0)))

(declare-fun e!2553585 () Int)

(assert (=> d!1220720 (= lt!1468716 e!2553585)))

(declare-fun c!707090 () Bool)

(assert (=> d!1220720 (= c!707090 ((_ is Nil!44426) p!2912))))

(assert (=> d!1220720 (= (size!32892 p!2912) lt!1468716)))

(declare-fun b!4115558 () Bool)

(assert (=> b!4115558 (= e!2553585 0)))

(declare-fun b!4115559 () Bool)

(assert (=> b!4115559 (= e!2553585 (+ 1 (size!32892 (t!340301 p!2912))))))

(assert (= (and d!1220720 c!707090) b!4115558))

(assert (= (and d!1220720 (not c!707090)) b!4115559))

(declare-fun m!4715683 () Bool)

(assert (=> b!4115559 m!4715683))

(assert (=> b!4115429 d!1220720))

(declare-fun bs!594532 () Bool)

(declare-fun d!1220722 () Bool)

(assert (= bs!594532 (and d!1220722 d!1220620)))

(declare-fun lambda!128597 () Int)

(assert (=> bs!594532 (= lambda!128597 lambda!128574)))

(assert (=> d!1220722 true))

(declare-fun lt!1468719 () Bool)

(assert (=> d!1220722 (= lt!1468719 (rulesValidInductive!2669 thiss!25645 rules!3756))))

(assert (=> d!1220722 (= lt!1468719 (forall!8444 rules!3756 lambda!128597))))

(assert (=> d!1220722 (= (rulesValid!2836 thiss!25645 rules!3756) lt!1468719)))

(declare-fun bs!594533 () Bool)

(assert (= bs!594533 d!1220722))

(assert (=> bs!594533 m!4715459))

(declare-fun m!4715693 () Bool)

(assert (=> bs!594533 m!4715693))

(assert (=> d!1220662 d!1220722))

(declare-fun d!1220732 () Bool)

(declare-fun res!1680970 () Bool)

(declare-fun e!2553595 () Bool)

(assert (=> d!1220732 (=> res!1680970 e!2553595)))

(assert (=> d!1220732 (= res!1680970 ((_ is Nil!44427) rules!3756))))

(assert (=> d!1220732 (= (forall!8444 rules!3756 lambda!128574) e!2553595)))

(declare-fun b!4115573 () Bool)

(declare-fun e!2553596 () Bool)

(assert (=> b!4115573 (= e!2553595 e!2553596)))

(declare-fun res!1680971 () Bool)

(assert (=> b!4115573 (=> (not res!1680971) (not e!2553596))))

(declare-fun dynLambda!18972 (Int Rule!14276) Bool)

(assert (=> b!4115573 (= res!1680971 (dynLambda!18972 lambda!128574 (h!49847 rules!3756)))))

(declare-fun b!4115574 () Bool)

(assert (=> b!4115574 (= e!2553596 (forall!8444 (t!340302 rules!3756) lambda!128574))))

(assert (= (and d!1220732 (not res!1680970)) b!4115573))

(assert (= (and b!4115573 res!1680971) b!4115574))

(declare-fun b_lambda!120731 () Bool)

(assert (=> (not b_lambda!120731) (not b!4115573)))

(declare-fun m!4715699 () Bool)

(assert (=> b!4115573 m!4715699))

(declare-fun m!4715701 () Bool)

(assert (=> b!4115574 m!4715701))

(assert (=> d!1220620 d!1220732))

(declare-fun d!1220738 () Bool)

(declare-fun c!707097 () Bool)

(assert (=> d!1220738 (= c!707097 ((_ is Nil!44427) rules!3756))))

(declare-fun e!2553605 () (InoxSet Rule!14276))

(assert (=> d!1220738 (= (content!6854 rules!3756) e!2553605)))

(declare-fun b!4115585 () Bool)

(assert (=> b!4115585 (= e!2553605 ((as const (Array Rule!14276 Bool)) false))))

(declare-fun b!4115586 () Bool)

(assert (=> b!4115586 (= e!2553605 ((_ map or) (store ((as const (Array Rule!14276 Bool)) false) (h!49847 rules!3756) true) (content!6854 (t!340302 rules!3756))))))

(assert (= (and d!1220738 c!707097) b!4115585))

(assert (= (and d!1220738 (not c!707097)) b!4115586))

(declare-fun m!4715707 () Bool)

(assert (=> b!4115586 m!4715707))

(declare-fun m!4715709 () Bool)

(assert (=> b!4115586 m!4715709))

(assert (=> d!1220668 d!1220738))

(declare-fun d!1220746 () Bool)

(declare-fun isBalanced!3714 (Conc!13449) Bool)

(assert (=> d!1220746 (= (inv!59010 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))) (isBalanced!3714 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))))

(declare-fun bs!594534 () Bool)

(assert (= bs!594534 d!1220746))

(declare-fun m!4715711 () Bool)

(assert (=> bs!594534 m!4715711))

(assert (=> tb!246991 d!1220746))

(declare-fun bs!594535 () Bool)

(declare-fun d!1220748 () Bool)

(assert (= bs!594535 (and d!1220748 d!1220700)))

(declare-fun lambda!128600 () Int)

(assert (=> bs!594535 (= (= (toValue!9882 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 r!4008))) (= lambda!128600 lambda!128593))))

(assert (=> d!1220748 true))

(assert (=> d!1220748 (< (dynLambda!18963 order!23349 (toValue!9882 (transformation!7238 rBis!149))) (dynLambda!18970 order!23357 lambda!128600))))

(assert (=> d!1220748 (= (equivClasses!3021 (toChars!9741 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 rBis!149))) (Forall2!1141 lambda!128600))))

(declare-fun bs!594536 () Bool)

(assert (= bs!594536 d!1220748))

(declare-fun m!4715713 () Bool)

(assert (=> bs!594536 m!4715713))

(assert (=> b!4115433 d!1220748))

(declare-fun bs!594540 () Bool)

(declare-fun d!1220750 () Bool)

(assert (= bs!594540 (and d!1220750 d!1220646)))

(declare-fun lambda!128602 () Int)

(assert (=> bs!594540 (= (and (= (toChars!9741 (transformation!7238 rBis!149)) (toChars!9741 (transformation!7238 r!4008))) (= (toValue!9882 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 r!4008)))) (= lambda!128602 lambda!128577))))

(declare-fun bs!594541 () Bool)

(assert (= bs!594541 (and d!1220750 d!1220682)))

(assert (=> bs!594541 (= (and (= (toChars!9741 (transformation!7238 rBis!149)) (toChars!9741 (transformation!7238 (h!49847 rules!3756)))) (= (toValue!9882 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 (h!49847 rules!3756))))) (= lambda!128602 lambda!128587))))

(assert (=> d!1220750 true))

(assert (=> d!1220750 (< (dynLambda!18965 order!23353 (toChars!9741 (transformation!7238 rBis!149))) (dynLambda!18964 order!23351 lambda!128602))))

(assert (=> d!1220750 true))

(assert (=> d!1220750 (< (dynLambda!18963 order!23349 (toValue!9882 (transformation!7238 rBis!149))) (dynLambda!18964 order!23351 lambda!128602))))

(assert (=> d!1220750 (= (semiInverseModEq!3122 (toChars!9741 (transformation!7238 rBis!149)) (toValue!9882 (transformation!7238 rBis!149))) (Forall!1542 lambda!128602))))

(declare-fun bs!594542 () Bool)

(assert (= bs!594542 d!1220750))

(declare-fun m!4715717 () Bool)

(assert (=> bs!594542 m!4715717))

(assert (=> d!1220658 d!1220750))

(declare-fun bs!594543 () Bool)

(declare-fun d!1220754 () Bool)

(assert (= bs!594543 (and d!1220754 d!1220620)))

(declare-fun lambda!128603 () Int)

(assert (=> bs!594543 (= lambda!128603 lambda!128574)))

(declare-fun bs!594544 () Bool)

(assert (= bs!594544 (and d!1220754 d!1220722)))

(assert (=> bs!594544 (= lambda!128603 lambda!128597)))

(assert (=> d!1220754 true))

(declare-fun lt!1468728 () Bool)

(assert (=> d!1220754 (= lt!1468728 (forall!8444 (t!340302 rules!3756) lambda!128603))))

(declare-fun e!2553609 () Bool)

(assert (=> d!1220754 (= lt!1468728 e!2553609)))

(declare-fun res!1680983 () Bool)

(assert (=> d!1220754 (=> res!1680983 e!2553609)))

(assert (=> d!1220754 (= res!1680983 (not ((_ is Cons!44427) (t!340302 rules!3756))))))

(assert (=> d!1220754 (= (rulesValidInductive!2669 thiss!25645 (t!340302 rules!3756)) lt!1468728)))

(declare-fun b!4115591 () Bool)

(declare-fun e!2553610 () Bool)

(assert (=> b!4115591 (= e!2553609 e!2553610)))

(declare-fun res!1680982 () Bool)

(assert (=> b!4115591 (=> (not res!1680982) (not e!2553610))))

(assert (=> b!4115591 (= res!1680982 (ruleValid!3056 thiss!25645 (h!49847 (t!340302 rules!3756))))))

(declare-fun b!4115592 () Bool)

(assert (=> b!4115592 (= e!2553610 (rulesValidInductive!2669 thiss!25645 (t!340302 (t!340302 rules!3756))))))

(assert (= (and d!1220754 (not res!1680983)) b!4115591))

(assert (= (and b!4115591 res!1680982) b!4115592))

(declare-fun m!4715733 () Bool)

(assert (=> d!1220754 m!4715733))

(declare-fun m!4715735 () Bool)

(assert (=> b!4115591 m!4715735))

(declare-fun m!4715737 () Bool)

(assert (=> b!4115592 m!4715737))

(assert (=> b!4115403 d!1220754))

(declare-fun d!1220760 () Bool)

(declare-fun c!707100 () Bool)

(assert (=> d!1220760 (= c!707100 ((_ is Node!13449) (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))))

(declare-fun e!2553629 () Bool)

(assert (=> d!1220760 (= (inv!59009 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))) e!2553629)))

(declare-fun b!4115631 () Bool)

(declare-fun inv!59013 (Conc!13449) Bool)

(assert (=> b!4115631 (= e!2553629 (inv!59013 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))))

(declare-fun b!4115632 () Bool)

(declare-fun e!2553630 () Bool)

(assert (=> b!4115632 (= e!2553629 e!2553630)))

(declare-fun res!1680986 () Bool)

(assert (=> b!4115632 (= res!1680986 (not ((_ is Leaf!20783) (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))))))))

(assert (=> b!4115632 (=> res!1680986 e!2553630)))

(declare-fun b!4115633 () Bool)

(declare-fun inv!59014 (Conc!13449) Bool)

(assert (=> b!4115633 (= e!2553630 (inv!59014 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))))

(assert (= (and d!1220760 c!707100) b!4115631))

(assert (= (and d!1220760 (not c!707100)) b!4115632))

(assert (= (and b!4115632 (not res!1680986)) b!4115633))

(declare-fun m!4715743 () Bool)

(assert (=> b!4115631 m!4715743))

(declare-fun m!4715745 () Bool)

(assert (=> b!4115633 m!4715745))

(assert (=> b!4115415 d!1220760))

(declare-fun d!1220762 () Bool)

(declare-fun e!2553647 () Bool)

(assert (=> d!1220762 e!2553647))

(declare-fun res!1680989 () Bool)

(assert (=> d!1220762 (=> (not res!1680989) (not e!2553647))))

(declare-fun lt!1468731 () BalanceConc!26492)

(assert (=> d!1220762 (= res!1680989 (= (list!16329 lt!1468731) p!2912))))

(declare-fun fromList!893 (List!44550) Conc!13449)

(assert (=> d!1220762 (= lt!1468731 (BalanceConc!26493 (fromList!893 p!2912)))))

(assert (=> d!1220762 (= (fromListB!2455 p!2912) lt!1468731)))

(declare-fun b!4115684 () Bool)

(assert (=> b!4115684 (= e!2553647 (isBalanced!3714 (fromList!893 p!2912)))))

(assert (= (and d!1220762 res!1680989) b!4115684))

(declare-fun m!4715753 () Bool)

(assert (=> d!1220762 m!4715753))

(declare-fun m!4715755 () Bool)

(assert (=> d!1220762 m!4715755))

(assert (=> b!4115684 m!4715755))

(assert (=> b!4115684 m!4715755))

(declare-fun m!4715757 () Bool)

(assert (=> b!4115684 m!4715757))

(assert (=> d!1220648 d!1220762))

(declare-fun d!1220768 () Bool)

(declare-fun c!707106 () Bool)

(assert (=> d!1220768 (= c!707106 ((_ is IntegerValue!22404) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))

(declare-fun e!2553655 () Bool)

(assert (=> d!1220768 (= (inv!21 (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))) e!2553655)))

(declare-fun b!4115695 () Bool)

(declare-fun inv!16 (TokenValue!7468) Bool)

(assert (=> b!4115695 (= e!2553655 (inv!16 (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))

(declare-fun b!4115696 () Bool)

(declare-fun res!1680992 () Bool)

(declare-fun e!2553656 () Bool)

(assert (=> b!4115696 (=> res!1680992 e!2553656)))

(assert (=> b!4115696 (= res!1680992 (not ((_ is IntegerValue!22406) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))))))

(declare-fun e!2553654 () Bool)

(assert (=> b!4115696 (= e!2553654 e!2553656)))

(declare-fun b!4115697 () Bool)

(declare-fun inv!17 (TokenValue!7468) Bool)

(assert (=> b!4115697 (= e!2553654 (inv!17 (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))

(declare-fun b!4115698 () Bool)

(assert (=> b!4115698 (= e!2553655 e!2553654)))

(declare-fun c!707107 () Bool)

(assert (=> b!4115698 (= c!707107 ((_ is IntegerValue!22405) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))

(declare-fun b!4115699 () Bool)

(declare-fun inv!15 (TokenValue!7468) Bool)

(assert (=> b!4115699 (= e!2553656 (inv!15 (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))))

(assert (= (and d!1220768 c!707106) b!4115695))

(assert (= (and d!1220768 (not c!707106)) b!4115698))

(assert (= (and b!4115698 c!707107) b!4115697))

(assert (= (and b!4115698 (not c!707107)) b!4115696))

(assert (= (and b!4115696 (not res!1680992)) b!4115699))

(declare-fun m!4715759 () Bool)

(assert (=> b!4115695 m!4715759))

(declare-fun m!4715761 () Bool)

(assert (=> b!4115697 m!4715761))

(declare-fun m!4715763 () Bool)

(assert (=> b!4115699 m!4715763))

(assert (=> tb!246997 d!1220768))

(declare-fun d!1220770 () Bool)

(declare-fun lt!1468732 () Bool)

(assert (=> d!1220770 (= lt!1468732 (select (content!6854 (t!340302 rules!3756)) r!4008))))

(declare-fun e!2553658 () Bool)

(assert (=> d!1220770 (= lt!1468732 e!2553658)))

(declare-fun res!1680994 () Bool)

(assert (=> d!1220770 (=> (not res!1680994) (not e!2553658))))

(assert (=> d!1220770 (= res!1680994 ((_ is Cons!44427) (t!340302 rules!3756)))))

(assert (=> d!1220770 (= (contains!8906 (t!340302 rules!3756) r!4008) lt!1468732)))

(declare-fun b!4115700 () Bool)

(declare-fun e!2553657 () Bool)

(assert (=> b!4115700 (= e!2553658 e!2553657)))

(declare-fun res!1680993 () Bool)

(assert (=> b!4115700 (=> res!1680993 e!2553657)))

(assert (=> b!4115700 (= res!1680993 (= (h!49847 (t!340302 rules!3756)) r!4008))))

(declare-fun b!4115701 () Bool)

(assert (=> b!4115701 (= e!2553657 (contains!8906 (t!340302 (t!340302 rules!3756)) r!4008))))

(assert (= (and d!1220770 res!1680994) b!4115700))

(assert (= (and b!4115700 (not res!1680993)) b!4115701))

(assert (=> d!1220770 m!4715709))

(declare-fun m!4715765 () Bool)

(assert (=> d!1220770 m!4715765))

(declare-fun m!4715767 () Bool)

(assert (=> b!4115701 m!4715767))

(assert (=> b!4115439 d!1220770))

(declare-fun d!1220772 () Bool)

(assert (=> d!1220772 (= (inv!59004 (tag!8098 (h!49847 (t!340302 rules!3756)))) (= (mod (str.len (value!226843 (tag!8098 (h!49847 (t!340302 rules!3756))))) 2) 0))))

(assert (=> b!4115449 d!1220772))

(declare-fun d!1220774 () Bool)

(declare-fun res!1680995 () Bool)

(declare-fun e!2553659 () Bool)

(assert (=> d!1220774 (=> (not res!1680995) (not e!2553659))))

(assert (=> d!1220774 (= res!1680995 (semiInverseModEq!3122 (toChars!9741 (transformation!7238 (h!49847 (t!340302 rules!3756)))) (toValue!9882 (transformation!7238 (h!49847 (t!340302 rules!3756))))))))

(assert (=> d!1220774 (= (inv!59006 (transformation!7238 (h!49847 (t!340302 rules!3756)))) e!2553659)))

(declare-fun b!4115702 () Bool)

(assert (=> b!4115702 (= e!2553659 (equivClasses!3021 (toChars!9741 (transformation!7238 (h!49847 (t!340302 rules!3756)))) (toValue!9882 (transformation!7238 (h!49847 (t!340302 rules!3756))))))))

(assert (= (and d!1220774 res!1680995) b!4115702))

(declare-fun m!4715769 () Bool)

(assert (=> d!1220774 m!4715769))

(declare-fun m!4715771 () Bool)

(assert (=> b!4115702 m!4715771))

(assert (=> b!4115449 d!1220774))

(assert (=> d!1220612 d!1220738))

(declare-fun d!1220776 () Bool)

(declare-fun lt!1468733 () Bool)

(assert (=> d!1220776 (= lt!1468733 (select (content!6854 (t!340302 rules!3756)) rBis!149))))

(declare-fun e!2553661 () Bool)

(assert (=> d!1220776 (= lt!1468733 e!2553661)))

(declare-fun res!1680997 () Bool)

(assert (=> d!1220776 (=> (not res!1680997) (not e!2553661))))

(assert (=> d!1220776 (= res!1680997 ((_ is Cons!44427) (t!340302 rules!3756)))))

(assert (=> d!1220776 (= (contains!8906 (t!340302 rules!3756) rBis!149) lt!1468733)))

(declare-fun b!4115703 () Bool)

(declare-fun e!2553660 () Bool)

(assert (=> b!4115703 (= e!2553661 e!2553660)))

(declare-fun res!1680996 () Bool)

(assert (=> b!4115703 (=> res!1680996 e!2553660)))

(assert (=> b!4115703 (= res!1680996 (= (h!49847 (t!340302 rules!3756)) rBis!149))))

(declare-fun b!4115704 () Bool)

(assert (=> b!4115704 (= e!2553660 (contains!8906 (t!340302 (t!340302 rules!3756)) rBis!149))))

(assert (= (and d!1220776 res!1680997) b!4115703))

(assert (= (and b!4115703 (not res!1680996)) b!4115704))

(assert (=> d!1220776 m!4715709))

(declare-fun m!4715773 () Bool)

(assert (=> d!1220776 m!4715773))

(declare-fun m!4715775 () Bool)

(assert (=> b!4115704 m!4715775))

(assert (=> b!4115316 d!1220776))

(declare-fun d!1220778 () Bool)

(declare-fun res!1681002 () Bool)

(declare-fun e!2553666 () Bool)

(assert (=> d!1220778 (=> res!1681002 e!2553666)))

(assert (=> d!1220778 (= res!1681002 ((_ is Nil!44427) rules!3756))))

(assert (=> d!1220778 (= (noDuplicateTag!2913 thiss!25645 rules!3756 Nil!44429) e!2553666)))

(declare-fun b!4115709 () Bool)

(declare-fun e!2553667 () Bool)

(assert (=> b!4115709 (= e!2553666 e!2553667)))

(declare-fun res!1681003 () Bool)

(assert (=> b!4115709 (=> (not res!1681003) (not e!2553667))))

(declare-fun contains!8908 (List!44553 String!51090) Bool)

(assert (=> b!4115709 (= res!1681003 (not (contains!8908 Nil!44429 (tag!8098 (h!49847 rules!3756)))))))

(declare-fun b!4115710 () Bool)

(assert (=> b!4115710 (= e!2553667 (noDuplicateTag!2913 thiss!25645 (t!340302 rules!3756) (Cons!44429 (tag!8098 (h!49847 rules!3756)) Nil!44429)))))

(assert (= (and d!1220778 (not res!1681002)) b!4115709))

(assert (= (and b!4115709 res!1681003) b!4115710))

(declare-fun m!4715777 () Bool)

(assert (=> b!4115709 m!4715777))

(declare-fun m!4715779 () Bool)

(assert (=> b!4115710 m!4715779))

(assert (=> b!4115436 d!1220778))

(declare-fun d!1220780 () Bool)

(assert (=> d!1220780 (= (head!8669 p!2912) (h!49846 p!2912))))

(assert (=> b!4115427 d!1220780))

(declare-fun d!1220782 () Bool)

(assert (=> d!1220782 (= (head!8669 input!3238) (h!49846 input!3238))))

(assert (=> b!4115427 d!1220782))

(declare-fun bs!594547 () Bool)

(declare-fun d!1220784 () Bool)

(assert (= bs!594547 (and d!1220784 d!1220700)))

(declare-fun lambda!128604 () Int)

(assert (=> bs!594547 (= (= (toValue!9882 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 r!4008))) (= lambda!128604 lambda!128593))))

(declare-fun bs!594548 () Bool)

(assert (= bs!594548 (and d!1220784 d!1220748)))

(assert (=> bs!594548 (= (= (toValue!9882 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 rBis!149))) (= lambda!128604 lambda!128600))))

(assert (=> d!1220784 true))

(assert (=> d!1220784 (< (dynLambda!18963 order!23349 (toValue!9882 (transformation!7238 (h!49847 rules!3756)))) (dynLambda!18970 order!23357 lambda!128604))))

(assert (=> d!1220784 (= (equivClasses!3021 (toChars!9741 (transformation!7238 (h!49847 rules!3756))) (toValue!9882 (transformation!7238 (h!49847 rules!3756)))) (Forall2!1141 lambda!128604))))

(declare-fun bs!594549 () Bool)

(assert (= bs!594549 d!1220784))

(declare-fun m!4715781 () Bool)

(assert (=> bs!594549 m!4715781))

(assert (=> b!4115432 d!1220784))

(declare-fun bs!594550 () Bool)

(declare-fun d!1220786 () Bool)

(assert (= bs!594550 (and d!1220786 d!1220646)))

(declare-fun lambda!128605 () Int)

(assert (=> bs!594550 (= lambda!128605 lambda!128577)))

(declare-fun bs!594551 () Bool)

(assert (= bs!594551 (and d!1220786 d!1220682)))

(assert (=> bs!594551 (= (and (= (toChars!9741 (transformation!7238 r!4008)) (toChars!9741 (transformation!7238 (h!49847 rules!3756)))) (= (toValue!9882 (transformation!7238 r!4008)) (toValue!9882 (transformation!7238 (h!49847 rules!3756))))) (= lambda!128605 lambda!128587))))

(declare-fun bs!594552 () Bool)

(assert (= bs!594552 (and d!1220786 d!1220750)))

(assert (=> bs!594552 (= (and (= (toChars!9741 (transformation!7238 r!4008)) (toChars!9741 (transformation!7238 rBis!149))) (= (toValue!9882 (transformation!7238 r!4008)) (toValue!9882 (transformation!7238 rBis!149)))) (= lambda!128605 lambda!128602))))

(assert (=> d!1220786 true))

(assert (=> d!1220786 (< (dynLambda!18965 order!23353 (toChars!9741 (transformation!7238 r!4008))) (dynLambda!18964 order!23351 lambda!128605))))

(assert (=> d!1220786 true))

(assert (=> d!1220786 (< (dynLambda!18963 order!23349 (toValue!9882 (transformation!7238 r!4008))) (dynLambda!18964 order!23351 lambda!128605))))

(assert (=> d!1220786 (= (semiInverseModEq!3122 (toChars!9741 (transformation!7238 r!4008)) (toValue!9882 (transformation!7238 r!4008))) (Forall!1542 lambda!128605))))

(declare-fun bs!594553 () Bool)

(assert (= bs!594553 d!1220786))

(declare-fun m!4715783 () Bool)

(assert (=> bs!594553 m!4715783))

(assert (=> d!1220666 d!1220786))

(declare-fun b!4115713 () Bool)

(declare-fun e!2553669 () Bool)

(assert (=> b!4115713 (= e!2553669 (isPrefix!4173 (tail!6403 (tail!6403 p!2912)) (tail!6403 (tail!6403 input!3238))))))

(declare-fun b!4115712 () Bool)

(declare-fun res!1681006 () Bool)

(assert (=> b!4115712 (=> (not res!1681006) (not e!2553669))))

(assert (=> b!4115712 (= res!1681006 (= (head!8669 (tail!6403 p!2912)) (head!8669 (tail!6403 input!3238))))))

(declare-fun b!4115714 () Bool)

(declare-fun e!2553668 () Bool)

(assert (=> b!4115714 (= e!2553668 (>= (size!32892 (tail!6403 input!3238)) (size!32892 (tail!6403 p!2912))))))

(declare-fun d!1220788 () Bool)

(assert (=> d!1220788 e!2553668))

(declare-fun res!1681007 () Bool)

(assert (=> d!1220788 (=> res!1681007 e!2553668)))

(declare-fun lt!1468734 () Bool)

(assert (=> d!1220788 (= res!1681007 (not lt!1468734))))

(declare-fun e!2553670 () Bool)

(assert (=> d!1220788 (= lt!1468734 e!2553670)))

(declare-fun res!1681005 () Bool)

(assert (=> d!1220788 (=> res!1681005 e!2553670)))

(assert (=> d!1220788 (= res!1681005 ((_ is Nil!44426) (tail!6403 p!2912)))))

(assert (=> d!1220788 (= (isPrefix!4173 (tail!6403 p!2912) (tail!6403 input!3238)) lt!1468734)))

(declare-fun b!4115711 () Bool)

(assert (=> b!4115711 (= e!2553670 e!2553669)))

(declare-fun res!1681004 () Bool)

(assert (=> b!4115711 (=> (not res!1681004) (not e!2553669))))

(assert (=> b!4115711 (= res!1681004 (not ((_ is Nil!44426) (tail!6403 input!3238))))))

(assert (= (and d!1220788 (not res!1681005)) b!4115711))

(assert (= (and b!4115711 res!1681004) b!4115712))

(assert (= (and b!4115712 res!1681006) b!4115713))

(assert (= (and d!1220788 (not res!1681007)) b!4115714))

(assert (=> b!4115713 m!4715563))

(declare-fun m!4715785 () Bool)

(assert (=> b!4115713 m!4715785))

(assert (=> b!4115713 m!4715565))

(declare-fun m!4715787 () Bool)

(assert (=> b!4115713 m!4715787))

(assert (=> b!4115713 m!4715785))

(assert (=> b!4115713 m!4715787))

(declare-fun m!4715789 () Bool)

(assert (=> b!4115713 m!4715789))

(assert (=> b!4115712 m!4715563))

(declare-fun m!4715791 () Bool)

(assert (=> b!4115712 m!4715791))

(assert (=> b!4115712 m!4715565))

(declare-fun m!4715793 () Bool)

(assert (=> b!4115712 m!4715793))

(assert (=> b!4115714 m!4715565))

(declare-fun m!4715795 () Bool)

(assert (=> b!4115714 m!4715795))

(assert (=> b!4115714 m!4715563))

(declare-fun m!4715797 () Bool)

(assert (=> b!4115714 m!4715797))

(assert (=> b!4115428 d!1220788))

(declare-fun d!1220790 () Bool)

(assert (=> d!1220790 (= (tail!6403 p!2912) (t!340301 p!2912))))

(assert (=> b!4115428 d!1220790))

(declare-fun d!1220792 () Bool)

(assert (=> d!1220792 (= (tail!6403 input!3238) (t!340301 input!3238))))

(assert (=> b!4115428 d!1220792))

(declare-fun b!4115717 () Bool)

(declare-fun b_free!115987 () Bool)

(declare-fun b_next!116691 () Bool)

(assert (=> b!4115717 (= b_free!115987 (not b_next!116691))))

(declare-fun tb!247011 () Bool)

(declare-fun t!340342 () Bool)

(assert (=> (and b!4115717 (= (toValue!9882 (transformation!7238 (h!49847 (t!340302 (t!340302 rules!3756))))) (toValue!9882 (transformation!7238 r!4008))) t!340342) tb!247011))

(declare-fun result!300030 () Bool)

(assert (= result!300030 result!300006))

(assert (=> d!1220646 t!340342))

(declare-fun tp!1253559 () Bool)

(declare-fun b_and!317917 () Bool)

(assert (=> b!4115717 (= tp!1253559 (and (=> t!340342 result!300030) b_and!317917))))

(declare-fun b_free!115989 () Bool)

(declare-fun b_next!116693 () Bool)

(assert (=> b!4115717 (= b_free!115989 (not b_next!116693))))

(declare-fun t!340344 () Bool)

(declare-fun tb!247013 () Bool)

(assert (=> (and b!4115717 (= (toChars!9741 (transformation!7238 (h!49847 (t!340302 (t!340302 rules!3756))))) (toChars!9741 (transformation!7238 r!4008))) t!340344) tb!247013))

(declare-fun result!300032 () Bool)

(assert (= result!300032 result!299998))

(assert (=> d!1220646 t!340344))

(declare-fun tp!1253558 () Bool)

(declare-fun b_and!317919 () Bool)

(assert (=> b!4115717 (= tp!1253558 (and (=> t!340344 result!300032) b_and!317919))))

(declare-fun e!2553672 () Bool)

(assert (=> b!4115717 (= e!2553672 (and tp!1253559 tp!1253558))))

(declare-fun tp!1253561 () Bool)

(declare-fun b!4115716 () Bool)

(declare-fun e!2553673 () Bool)

(assert (=> b!4115716 (= e!2553673 (and tp!1253561 (inv!59004 (tag!8098 (h!49847 (t!340302 (t!340302 rules!3756))))) (inv!59006 (transformation!7238 (h!49847 (t!340302 (t!340302 rules!3756))))) e!2553672))))

(declare-fun b!4115715 () Bool)

(declare-fun e!2553674 () Bool)

(declare-fun tp!1253560 () Bool)

(assert (=> b!4115715 (= e!2553674 (and e!2553673 tp!1253560))))

(assert (=> b!4115448 (= tp!1253432 e!2553674)))

(assert (= b!4115716 b!4115717))

(assert (= b!4115715 b!4115716))

(assert (= (and b!4115448 ((_ is Cons!44427) (t!340302 (t!340302 rules!3756)))) b!4115715))

(declare-fun m!4715799 () Bool)

(assert (=> b!4115716 m!4715799))

(declare-fun m!4715801 () Bool)

(assert (=> b!4115716 m!4715801))

(declare-fun b!4115718 () Bool)

(declare-fun e!2553675 () Bool)

(assert (=> b!4115718 (= e!2553675 tp_is_empty!21209)))

(declare-fun b!4115719 () Bool)

(declare-fun tp!1253562 () Bool)

(declare-fun tp!1253564 () Bool)

(assert (=> b!4115719 (= e!2553675 (and tp!1253562 tp!1253564))))

(declare-fun b!4115721 () Bool)

(declare-fun tp!1253565 () Bool)

(declare-fun tp!1253566 () Bool)

(assert (=> b!4115721 (= e!2553675 (and tp!1253565 tp!1253566))))

(assert (=> b!4115449 (= tp!1253433 e!2553675)))

(declare-fun b!4115720 () Bool)

(declare-fun tp!1253563 () Bool)

(assert (=> b!4115720 (= e!2553675 tp!1253563)))

(assert (= (and b!4115449 ((_ is ElementMatch!12143) (regex!7238 (h!49847 (t!340302 rules!3756))))) b!4115718))

(assert (= (and b!4115449 ((_ is Concat!19612) (regex!7238 (h!49847 (t!340302 rules!3756))))) b!4115719))

(assert (= (and b!4115449 ((_ is Star!12143) (regex!7238 (h!49847 (t!340302 rules!3756))))) b!4115720))

(assert (= (and b!4115449 ((_ is Union!12143) (regex!7238 (h!49847 (t!340302 rules!3756))))) b!4115721))

(declare-fun b!4115722 () Bool)

(declare-fun e!2553676 () Bool)

(declare-fun tp!1253567 () Bool)

(assert (=> b!4115722 (= e!2553676 (and tp_is_empty!21209 tp!1253567))))

(assert (=> b!4115478 (= tp!1253462 e!2553676)))

(assert (= (and b!4115478 ((_ is Cons!44426) (t!340301 (t!340301 input!3238)))) b!4115722))

(declare-fun b!4115723 () Bool)

(declare-fun e!2553677 () Bool)

(assert (=> b!4115723 (= e!2553677 tp_is_empty!21209)))

(declare-fun b!4115724 () Bool)

(declare-fun tp!1253568 () Bool)

(declare-fun tp!1253570 () Bool)

(assert (=> b!4115724 (= e!2553677 (and tp!1253568 tp!1253570))))

(declare-fun b!4115726 () Bool)

(declare-fun tp!1253571 () Bool)

(declare-fun tp!1253572 () Bool)

(assert (=> b!4115726 (= e!2553677 (and tp!1253571 tp!1253572))))

(assert (=> b!4115468 (= tp!1253448 e!2553677)))

(declare-fun b!4115725 () Bool)

(declare-fun tp!1253569 () Bool)

(assert (=> b!4115725 (= e!2553677 tp!1253569)))

(assert (= (and b!4115468 ((_ is ElementMatch!12143) (reg!12472 (regex!7238 (h!49847 rules!3756))))) b!4115723))

(assert (= (and b!4115468 ((_ is Concat!19612) (reg!12472 (regex!7238 (h!49847 rules!3756))))) b!4115724))

(assert (= (and b!4115468 ((_ is Star!12143) (reg!12472 (regex!7238 (h!49847 rules!3756))))) b!4115725))

(assert (= (and b!4115468 ((_ is Union!12143) (reg!12472 (regex!7238 (h!49847 rules!3756))))) b!4115726))

(declare-fun b!4115727 () Bool)

(declare-fun e!2553678 () Bool)

(assert (=> b!4115727 (= e!2553678 tp_is_empty!21209)))

(declare-fun b!4115728 () Bool)

(declare-fun tp!1253573 () Bool)

(declare-fun tp!1253575 () Bool)

(assert (=> b!4115728 (= e!2553678 (and tp!1253573 tp!1253575))))

(declare-fun b!4115730 () Bool)

(declare-fun tp!1253576 () Bool)

(declare-fun tp!1253577 () Bool)

(assert (=> b!4115730 (= e!2553678 (and tp!1253576 tp!1253577))))

(assert (=> b!4115473 (= tp!1253455 e!2553678)))

(declare-fun b!4115729 () Bool)

(declare-fun tp!1253574 () Bool)

(assert (=> b!4115729 (= e!2553678 tp!1253574)))

(assert (= (and b!4115473 ((_ is ElementMatch!12143) (regOne!24799 (regex!7238 rBis!149)))) b!4115727))

(assert (= (and b!4115473 ((_ is Concat!19612) (regOne!24799 (regex!7238 rBis!149)))) b!4115728))

(assert (= (and b!4115473 ((_ is Star!12143) (regOne!24799 (regex!7238 rBis!149)))) b!4115729))

(assert (= (and b!4115473 ((_ is Union!12143) (regOne!24799 (regex!7238 rBis!149)))) b!4115730))

(declare-fun b!4115731 () Bool)

(declare-fun e!2553679 () Bool)

(assert (=> b!4115731 (= e!2553679 tp_is_empty!21209)))

(declare-fun b!4115732 () Bool)

(declare-fun tp!1253578 () Bool)

(declare-fun tp!1253580 () Bool)

(assert (=> b!4115732 (= e!2553679 (and tp!1253578 tp!1253580))))

(declare-fun b!4115734 () Bool)

(declare-fun tp!1253581 () Bool)

(declare-fun tp!1253582 () Bool)

(assert (=> b!4115734 (= e!2553679 (and tp!1253581 tp!1253582))))

(assert (=> b!4115473 (= tp!1253456 e!2553679)))

(declare-fun b!4115733 () Bool)

(declare-fun tp!1253579 () Bool)

(assert (=> b!4115733 (= e!2553679 tp!1253579)))

(assert (= (and b!4115473 ((_ is ElementMatch!12143) (regTwo!24799 (regex!7238 rBis!149)))) b!4115731))

(assert (= (and b!4115473 ((_ is Concat!19612) (regTwo!24799 (regex!7238 rBis!149)))) b!4115732))

(assert (= (and b!4115473 ((_ is Star!12143) (regTwo!24799 (regex!7238 rBis!149)))) b!4115733))

(assert (= (and b!4115473 ((_ is Union!12143) (regTwo!24799 (regex!7238 rBis!149)))) b!4115734))

(declare-fun b!4115735 () Bool)

(declare-fun e!2553680 () Bool)

(assert (=> b!4115735 (= e!2553680 tp_is_empty!21209)))

(declare-fun b!4115736 () Bool)

(declare-fun tp!1253583 () Bool)

(declare-fun tp!1253585 () Bool)

(assert (=> b!4115736 (= e!2553680 (and tp!1253583 tp!1253585))))

(declare-fun b!4115738 () Bool)

(declare-fun tp!1253586 () Bool)

(declare-fun tp!1253587 () Bool)

(assert (=> b!4115738 (= e!2553680 (and tp!1253586 tp!1253587))))

(assert (=> b!4115472 (= tp!1253453 e!2553680)))

(declare-fun b!4115737 () Bool)

(declare-fun tp!1253584 () Bool)

(assert (=> b!4115737 (= e!2553680 tp!1253584)))

(assert (= (and b!4115472 ((_ is ElementMatch!12143) (reg!12472 (regex!7238 rBis!149)))) b!4115735))

(assert (= (and b!4115472 ((_ is Concat!19612) (reg!12472 (regex!7238 rBis!149)))) b!4115736))

(assert (= (and b!4115472 ((_ is Star!12143) (reg!12472 (regex!7238 rBis!149)))) b!4115737))

(assert (= (and b!4115472 ((_ is Union!12143) (reg!12472 (regex!7238 rBis!149)))) b!4115738))

(declare-fun b!4115739 () Bool)

(declare-fun e!2553681 () Bool)

(assert (=> b!4115739 (= e!2553681 tp_is_empty!21209)))

(declare-fun b!4115740 () Bool)

(declare-fun tp!1253588 () Bool)

(declare-fun tp!1253590 () Bool)

(assert (=> b!4115740 (= e!2553681 (and tp!1253588 tp!1253590))))

(declare-fun b!4115742 () Bool)

(declare-fun tp!1253591 () Bool)

(declare-fun tp!1253592 () Bool)

(assert (=> b!4115742 (= e!2553681 (and tp!1253591 tp!1253592))))

(assert (=> b!4115477 (= tp!1253460 e!2553681)))

(declare-fun b!4115741 () Bool)

(declare-fun tp!1253589 () Bool)

(assert (=> b!4115741 (= e!2553681 tp!1253589)))

(assert (= (and b!4115477 ((_ is ElementMatch!12143) (regOne!24799 (regex!7238 r!4008)))) b!4115739))

(assert (= (and b!4115477 ((_ is Concat!19612) (regOne!24799 (regex!7238 r!4008)))) b!4115740))

(assert (= (and b!4115477 ((_ is Star!12143) (regOne!24799 (regex!7238 r!4008)))) b!4115741))

(assert (= (and b!4115477 ((_ is Union!12143) (regOne!24799 (regex!7238 r!4008)))) b!4115742))

(declare-fun b!4115743 () Bool)

(declare-fun e!2553682 () Bool)

(assert (=> b!4115743 (= e!2553682 tp_is_empty!21209)))

(declare-fun b!4115744 () Bool)

(declare-fun tp!1253593 () Bool)

(declare-fun tp!1253595 () Bool)

(assert (=> b!4115744 (= e!2553682 (and tp!1253593 tp!1253595))))

(declare-fun b!4115746 () Bool)

(declare-fun tp!1253596 () Bool)

(declare-fun tp!1253597 () Bool)

(assert (=> b!4115746 (= e!2553682 (and tp!1253596 tp!1253597))))

(assert (=> b!4115477 (= tp!1253461 e!2553682)))

(declare-fun b!4115745 () Bool)

(declare-fun tp!1253594 () Bool)

(assert (=> b!4115745 (= e!2553682 tp!1253594)))

(assert (= (and b!4115477 ((_ is ElementMatch!12143) (regTwo!24799 (regex!7238 r!4008)))) b!4115743))

(assert (= (and b!4115477 ((_ is Concat!19612) (regTwo!24799 (regex!7238 r!4008)))) b!4115744))

(assert (= (and b!4115477 ((_ is Star!12143) (regTwo!24799 (regex!7238 r!4008)))) b!4115745))

(assert (= (and b!4115477 ((_ is Union!12143) (regTwo!24799 (regex!7238 r!4008)))) b!4115746))

(declare-fun b!4115747 () Bool)

(declare-fun e!2553683 () Bool)

(assert (=> b!4115747 (= e!2553683 tp_is_empty!21209)))

(declare-fun b!4115748 () Bool)

(declare-fun tp!1253598 () Bool)

(declare-fun tp!1253600 () Bool)

(assert (=> b!4115748 (= e!2553683 (and tp!1253598 tp!1253600))))

(declare-fun b!4115750 () Bool)

(declare-fun tp!1253601 () Bool)

(declare-fun tp!1253602 () Bool)

(assert (=> b!4115750 (= e!2553683 (and tp!1253601 tp!1253602))))

(assert (=> b!4115469 (= tp!1253450 e!2553683)))

(declare-fun b!4115749 () Bool)

(declare-fun tp!1253599 () Bool)

(assert (=> b!4115749 (= e!2553683 tp!1253599)))

(assert (= (and b!4115469 ((_ is ElementMatch!12143) (regOne!24799 (regex!7238 (h!49847 rules!3756))))) b!4115747))

(assert (= (and b!4115469 ((_ is Concat!19612) (regOne!24799 (regex!7238 (h!49847 rules!3756))))) b!4115748))

(assert (= (and b!4115469 ((_ is Star!12143) (regOne!24799 (regex!7238 (h!49847 rules!3756))))) b!4115749))

(assert (= (and b!4115469 ((_ is Union!12143) (regOne!24799 (regex!7238 (h!49847 rules!3756))))) b!4115750))

(declare-fun b!4115751 () Bool)

(declare-fun e!2553684 () Bool)

(assert (=> b!4115751 (= e!2553684 tp_is_empty!21209)))

(declare-fun b!4115752 () Bool)

(declare-fun tp!1253603 () Bool)

(declare-fun tp!1253605 () Bool)

(assert (=> b!4115752 (= e!2553684 (and tp!1253603 tp!1253605))))

(declare-fun b!4115754 () Bool)

(declare-fun tp!1253606 () Bool)

(declare-fun tp!1253607 () Bool)

(assert (=> b!4115754 (= e!2553684 (and tp!1253606 tp!1253607))))

(assert (=> b!4115469 (= tp!1253451 e!2553684)))

(declare-fun b!4115753 () Bool)

(declare-fun tp!1253604 () Bool)

(assert (=> b!4115753 (= e!2553684 tp!1253604)))

(assert (= (and b!4115469 ((_ is ElementMatch!12143) (regTwo!24799 (regex!7238 (h!49847 rules!3756))))) b!4115751))

(assert (= (and b!4115469 ((_ is Concat!19612) (regTwo!24799 (regex!7238 (h!49847 rules!3756))))) b!4115752))

(assert (= (and b!4115469 ((_ is Star!12143) (regTwo!24799 (regex!7238 (h!49847 rules!3756))))) b!4115753))

(assert (= (and b!4115469 ((_ is Union!12143) (regTwo!24799 (regex!7238 (h!49847 rules!3756))))) b!4115754))

(declare-fun b!4115755 () Bool)

(declare-fun e!2553685 () Bool)

(assert (=> b!4115755 (= e!2553685 tp_is_empty!21209)))

(declare-fun b!4115756 () Bool)

(declare-fun tp!1253608 () Bool)

(declare-fun tp!1253610 () Bool)

(assert (=> b!4115756 (= e!2553685 (and tp!1253608 tp!1253610))))

(declare-fun b!4115758 () Bool)

(declare-fun tp!1253611 () Bool)

(declare-fun tp!1253612 () Bool)

(assert (=> b!4115758 (= e!2553685 (and tp!1253611 tp!1253612))))

(assert (=> b!4115475 (= tp!1253457 e!2553685)))

(declare-fun b!4115757 () Bool)

(declare-fun tp!1253609 () Bool)

(assert (=> b!4115757 (= e!2553685 tp!1253609)))

(assert (= (and b!4115475 ((_ is ElementMatch!12143) (regOne!24798 (regex!7238 r!4008)))) b!4115755))

(assert (= (and b!4115475 ((_ is Concat!19612) (regOne!24798 (regex!7238 r!4008)))) b!4115756))

(assert (= (and b!4115475 ((_ is Star!12143) (regOne!24798 (regex!7238 r!4008)))) b!4115757))

(assert (= (and b!4115475 ((_ is Union!12143) (regOne!24798 (regex!7238 r!4008)))) b!4115758))

(declare-fun b!4115759 () Bool)

(declare-fun e!2553686 () Bool)

(assert (=> b!4115759 (= e!2553686 tp_is_empty!21209)))

(declare-fun b!4115760 () Bool)

(declare-fun tp!1253613 () Bool)

(declare-fun tp!1253615 () Bool)

(assert (=> b!4115760 (= e!2553686 (and tp!1253613 tp!1253615))))

(declare-fun b!4115762 () Bool)

(declare-fun tp!1253616 () Bool)

(declare-fun tp!1253617 () Bool)

(assert (=> b!4115762 (= e!2553686 (and tp!1253616 tp!1253617))))

(assert (=> b!4115475 (= tp!1253459 e!2553686)))

(declare-fun b!4115761 () Bool)

(declare-fun tp!1253614 () Bool)

(assert (=> b!4115761 (= e!2553686 tp!1253614)))

(assert (= (and b!4115475 ((_ is ElementMatch!12143) (regTwo!24798 (regex!7238 r!4008)))) b!4115759))

(assert (= (and b!4115475 ((_ is Concat!19612) (regTwo!24798 (regex!7238 r!4008)))) b!4115760))

(assert (= (and b!4115475 ((_ is Star!12143) (regTwo!24798 (regex!7238 r!4008)))) b!4115761))

(assert (= (and b!4115475 ((_ is Union!12143) (regTwo!24798 (regex!7238 r!4008)))) b!4115762))

(declare-fun b!4115763 () Bool)

(declare-fun e!2553687 () Bool)

(declare-fun tp!1253618 () Bool)

(assert (=> b!4115763 (= e!2553687 (and tp_is_empty!21209 tp!1253618))))

(assert (=> b!4115455 (= tp!1253436 e!2553687)))

(assert (= (and b!4115455 ((_ is Cons!44426) (t!340301 (t!340301 p!2912)))) b!4115763))

(declare-fun b!4115764 () Bool)

(declare-fun e!2553688 () Bool)

(assert (=> b!4115764 (= e!2553688 tp_is_empty!21209)))

(declare-fun b!4115765 () Bool)

(declare-fun tp!1253619 () Bool)

(declare-fun tp!1253621 () Bool)

(assert (=> b!4115765 (= e!2553688 (and tp!1253619 tp!1253621))))

(declare-fun b!4115767 () Bool)

(declare-fun tp!1253622 () Bool)

(declare-fun tp!1253623 () Bool)

(assert (=> b!4115767 (= e!2553688 (and tp!1253622 tp!1253623))))

(assert (=> b!4115476 (= tp!1253458 e!2553688)))

(declare-fun b!4115766 () Bool)

(declare-fun tp!1253620 () Bool)

(assert (=> b!4115766 (= e!2553688 tp!1253620)))

(assert (= (and b!4115476 ((_ is ElementMatch!12143) (reg!12472 (regex!7238 r!4008)))) b!4115764))

(assert (= (and b!4115476 ((_ is Concat!19612) (reg!12472 (regex!7238 r!4008)))) b!4115765))

(assert (= (and b!4115476 ((_ is Star!12143) (reg!12472 (regex!7238 r!4008)))) b!4115766))

(assert (= (and b!4115476 ((_ is Union!12143) (reg!12472 (regex!7238 r!4008)))) b!4115767))

(declare-fun b!4115768 () Bool)

(declare-fun e!2553689 () Bool)

(assert (=> b!4115768 (= e!2553689 tp_is_empty!21209)))

(declare-fun b!4115769 () Bool)

(declare-fun tp!1253624 () Bool)

(declare-fun tp!1253626 () Bool)

(assert (=> b!4115769 (= e!2553689 (and tp!1253624 tp!1253626))))

(declare-fun b!4115771 () Bool)

(declare-fun tp!1253627 () Bool)

(declare-fun tp!1253628 () Bool)

(assert (=> b!4115771 (= e!2553689 (and tp!1253627 tp!1253628))))

(assert (=> b!4115467 (= tp!1253447 e!2553689)))

(declare-fun b!4115770 () Bool)

(declare-fun tp!1253625 () Bool)

(assert (=> b!4115770 (= e!2553689 tp!1253625)))

(assert (= (and b!4115467 ((_ is ElementMatch!12143) (regOne!24798 (regex!7238 (h!49847 rules!3756))))) b!4115768))

(assert (= (and b!4115467 ((_ is Concat!19612) (regOne!24798 (regex!7238 (h!49847 rules!3756))))) b!4115769))

(assert (= (and b!4115467 ((_ is Star!12143) (regOne!24798 (regex!7238 (h!49847 rules!3756))))) b!4115770))

(assert (= (and b!4115467 ((_ is Union!12143) (regOne!24798 (regex!7238 (h!49847 rules!3756))))) b!4115771))

(declare-fun b!4115772 () Bool)

(declare-fun e!2553690 () Bool)

(assert (=> b!4115772 (= e!2553690 tp_is_empty!21209)))

(declare-fun b!4115773 () Bool)

(declare-fun tp!1253629 () Bool)

(declare-fun tp!1253631 () Bool)

(assert (=> b!4115773 (= e!2553690 (and tp!1253629 tp!1253631))))

(declare-fun b!4115775 () Bool)

(declare-fun tp!1253632 () Bool)

(declare-fun tp!1253633 () Bool)

(assert (=> b!4115775 (= e!2553690 (and tp!1253632 tp!1253633))))

(assert (=> b!4115467 (= tp!1253449 e!2553690)))

(declare-fun b!4115774 () Bool)

(declare-fun tp!1253630 () Bool)

(assert (=> b!4115774 (= e!2553690 tp!1253630)))

(assert (= (and b!4115467 ((_ is ElementMatch!12143) (regTwo!24798 (regex!7238 (h!49847 rules!3756))))) b!4115772))

(assert (= (and b!4115467 ((_ is Concat!19612) (regTwo!24798 (regex!7238 (h!49847 rules!3756))))) b!4115773))

(assert (= (and b!4115467 ((_ is Star!12143) (regTwo!24798 (regex!7238 (h!49847 rules!3756))))) b!4115774))

(assert (= (and b!4115467 ((_ is Union!12143) (regTwo!24798 (regex!7238 (h!49847 rules!3756))))) b!4115775))

(declare-fun b!4115776 () Bool)

(declare-fun e!2553691 () Bool)

(assert (=> b!4115776 (= e!2553691 tp_is_empty!21209)))

(declare-fun b!4115777 () Bool)

(declare-fun tp!1253634 () Bool)

(declare-fun tp!1253636 () Bool)

(assert (=> b!4115777 (= e!2553691 (and tp!1253634 tp!1253636))))

(declare-fun b!4115779 () Bool)

(declare-fun tp!1253637 () Bool)

(declare-fun tp!1253638 () Bool)

(assert (=> b!4115779 (= e!2553691 (and tp!1253637 tp!1253638))))

(assert (=> b!4115471 (= tp!1253452 e!2553691)))

(declare-fun b!4115778 () Bool)

(declare-fun tp!1253635 () Bool)

(assert (=> b!4115778 (= e!2553691 tp!1253635)))

(assert (= (and b!4115471 ((_ is ElementMatch!12143) (regOne!24798 (regex!7238 rBis!149)))) b!4115776))

(assert (= (and b!4115471 ((_ is Concat!19612) (regOne!24798 (regex!7238 rBis!149)))) b!4115777))

(assert (= (and b!4115471 ((_ is Star!12143) (regOne!24798 (regex!7238 rBis!149)))) b!4115778))

(assert (= (and b!4115471 ((_ is Union!12143) (regOne!24798 (regex!7238 rBis!149)))) b!4115779))

(declare-fun b!4115780 () Bool)

(declare-fun e!2553692 () Bool)

(assert (=> b!4115780 (= e!2553692 tp_is_empty!21209)))

(declare-fun b!4115781 () Bool)

(declare-fun tp!1253639 () Bool)

(declare-fun tp!1253641 () Bool)

(assert (=> b!4115781 (= e!2553692 (and tp!1253639 tp!1253641))))

(declare-fun b!4115783 () Bool)

(declare-fun tp!1253642 () Bool)

(declare-fun tp!1253643 () Bool)

(assert (=> b!4115783 (= e!2553692 (and tp!1253642 tp!1253643))))

(assert (=> b!4115471 (= tp!1253454 e!2553692)))

(declare-fun b!4115782 () Bool)

(declare-fun tp!1253640 () Bool)

(assert (=> b!4115782 (= e!2553692 tp!1253640)))

(assert (= (and b!4115471 ((_ is ElementMatch!12143) (regTwo!24798 (regex!7238 rBis!149)))) b!4115780))

(assert (= (and b!4115471 ((_ is Concat!19612) (regTwo!24798 (regex!7238 rBis!149)))) b!4115781))

(assert (= (and b!4115471 ((_ is Star!12143) (regTwo!24798 (regex!7238 rBis!149)))) b!4115782))

(assert (= (and b!4115471 ((_ is Union!12143) (regTwo!24798 (regex!7238 rBis!149)))) b!4115783))

(declare-fun e!2553698 () Bool)

(declare-fun tp!1253651 () Bool)

(declare-fun tp!1253652 () Bool)

(declare-fun b!4115792 () Bool)

(assert (=> b!4115792 (= e!2553698 (and (inv!59009 (left!33290 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))))) tp!1253652 (inv!59009 (right!33620 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))))) tp!1253651))))

(declare-fun b!4115794 () Bool)

(declare-fun e!2553697 () Bool)

(declare-fun tp!1253650 () Bool)

(assert (=> b!4115794 (= e!2553697 tp!1253650)))

(declare-fun b!4115793 () Bool)

(declare-fun inv!59016 (IArray!26903) Bool)

(assert (=> b!4115793 (= e!2553698 (and (inv!59016 (xs!16755 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))))) e!2553697))))

(assert (=> b!4115415 (= tp!1253421 (and (inv!59009 (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912))))) e!2553698))))

(assert (= (and b!4115415 ((_ is Node!13449) (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))))) b!4115792))

(assert (= b!4115793 b!4115794))

(assert (= (and b!4115415 ((_ is Leaf!20783) (c!707070 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))))) b!4115793))

(declare-fun m!4715803 () Bool)

(assert (=> b!4115792 m!4715803))

(declare-fun m!4715805 () Bool)

(assert (=> b!4115792 m!4715805))

(declare-fun m!4715807 () Bool)

(assert (=> b!4115793 m!4715807))

(assert (=> b!4115415 m!4715545))

(declare-fun b_lambda!120743 () Bool)

(assert (= b_lambda!120727 (or d!1220646 b_lambda!120743)))

(declare-fun bs!594554 () Bool)

(declare-fun d!1220794 () Bool)

(assert (= bs!594554 (and d!1220794 d!1220646)))

(assert (=> bs!594554 (= (dynLambda!18969 lambda!128577 (seqFromList!5355 p!2912)) (= (list!16329 (dynLambda!18966 (toChars!9741 (transformation!7238 r!4008)) (dynLambda!18967 (toValue!9882 (transformation!7238 r!4008)) (seqFromList!5355 p!2912)))) (list!16329 (seqFromList!5355 p!2912))))))

(declare-fun b_lambda!120747 () Bool)

(assert (=> (not b_lambda!120747) (not bs!594554)))

(assert (=> bs!594554 t!340320))

(declare-fun b_and!317921 () Bool)

(assert (= b_and!317877 (and (=> t!340320 result!299998) b_and!317921)))

(assert (=> bs!594554 t!340334))

(declare-fun b_and!317923 () Bool)

(assert (= b_and!317891 (and (=> t!340334 result!300018) b_and!317923)))

(assert (=> bs!594554 t!340324))

(declare-fun b_and!317925 () Bool)

(assert (= b_and!317881 (and (=> t!340324 result!300004) b_and!317925)))

(assert (=> bs!594554 t!340344))

(declare-fun b_and!317927 () Bool)

(assert (= b_and!317919 (and (=> t!340344 result!300032) b_and!317927)))

(assert (=> bs!594554 t!340322))

(declare-fun b_and!317929 () Bool)

(assert (= b_and!317879 (and (=> t!340322 result!300002) b_and!317929)))

(declare-fun b_lambda!120749 () Bool)

(assert (=> (not b_lambda!120749) (not bs!594554)))

(assert (=> bs!594554 t!340330))

(declare-fun b_and!317931 () Bool)

(assert (= b_and!317887 (and (=> t!340330 result!300012) b_and!317931)))

(assert (=> bs!594554 t!340328))

(declare-fun b_and!317933 () Bool)

(assert (= b_and!317885 (and (=> t!340328 result!300010) b_and!317933)))

(assert (=> bs!594554 t!340326))

(declare-fun b_and!317935 () Bool)

(assert (= b_and!317883 (and (=> t!340326 result!300006) b_and!317935)))

(assert (=> bs!594554 t!340342))

(declare-fun b_and!317937 () Bool)

(assert (= b_and!317917 (and (=> t!340342 result!300030) b_and!317937)))

(assert (=> bs!594554 t!340332))

(declare-fun b_and!317939 () Bool)

(assert (= b_and!317889 (and (=> t!340332 result!300016) b_and!317939)))

(assert (=> bs!594554 m!4715461))

(assert (=> bs!594554 m!4715551))

(assert (=> bs!594554 m!4715551))

(assert (=> bs!594554 m!4715553))

(assert (=> bs!594554 m!4715553))

(assert (=> bs!594554 m!4715555))

(assert (=> bs!594554 m!4715461))

(assert (=> bs!594554 m!4715557))

(assert (=> d!1220694 d!1220794))

(declare-fun b_lambda!120745 () Bool)

(assert (= b_lambda!120731 (or d!1220620 b_lambda!120745)))

(declare-fun bs!594555 () Bool)

(declare-fun d!1220796 () Bool)

(assert (= bs!594555 (and d!1220796 d!1220620)))

(assert (=> bs!594555 (= (dynLambda!18972 lambda!128574 (h!49847 rules!3756)) (ruleValid!3056 thiss!25645 (h!49847 rules!3756)))))

(assert (=> bs!594555 m!4715541))

(assert (=> b!4115573 d!1220796))

(check-sat (not b!4115699) (not b!4115539) (not b!4115559) (not bs!594555) (not b!4115752) (not b!4115728) (not d!1220682) b_and!317925 (not b!4115733) (not d!1220784) (not b!4115592) (not b!4115704) b_and!317927 (not b_next!116669) (not b_lambda!120725) b_and!317929 (not b_next!116667) (not d!1220722) (not b!4115744) (not b_lambda!120743) (not b!4115702) (not b!4115701) (not b!4115792) (not b!4115415) (not b!4115724) (not b!4115710) (not b!4115712) b_and!317935 (not b!4115715) (not d!1220692) (not b!4115684) tp_is_empty!21209 (not b_next!116673) (not b!4115586) (not b!4115770) (not b!4115719) (not d!1220770) (not b!4115761) (not b_next!116685) (not b_lambda!120745) (not bs!594554) (not b!4115753) (not b!4115742) (not b!4115738) (not b!4115631) (not b!4115574) (not b!4115748) (not b!4115793) (not d!1220762) (not b!4115762) b_and!317923 (not b!4115766) (not b!4115773) (not b!4115771) (not b!4115783) (not b!4115769) (not b!4115765) (not b!4115779) b_and!317933 (not b_next!116675) (not b!4115777) (not b!4115591) (not b!4115775) (not b!4115695) (not b!4115750) (not d!1220776) (not b!4115713) (not d!1220746) (not b!4115697) (not b!4115557) (not b!4115730) (not d!1220750) (not b_lambda!120747) (not d!1220688) (not b_lambda!120723) (not b_next!116677) (not b!4115757) (not d!1220786) (not b_lambda!120749) (not b!4115781) (not b!4115709) (not b!4115633) (not b!4115736) (not b!4115760) (not d!1220710) (not b!4115754) (not d!1220748) b_and!317931 (not b!4115729) (not b!4115725) (not b!4115763) b_and!317937 (not d!1220754) (not b_next!116683) (not b!4115741) (not b!4115720) (not b!4115767) (not b!4115782) (not b!4115778) (not b!4115740) (not b!4115758) (not b!4115726) (not b!4115734) (not b!4115774) (not d!1220694) (not b!4115737) (not b!4115794) (not b!4115756) (not b!4115716) (not b!4115732) (not d!1220700) (not b!4115721) b_and!317921 (not b!4115714) (not d!1220774) b_and!317939 (not b!4115749) (not b!4115745) (not b!4115746) (not b_next!116691) (not b_next!116671) (not b!4115722) (not b_next!116693))
(check-sat b_and!317935 (not b_next!116673) (not b_next!116685) b_and!317923 (not b_next!116677) b_and!317931 (not b_next!116691) b_and!317927 b_and!317925 (not b_next!116669) b_and!317929 (not b_next!116667) b_and!317933 (not b_next!116675) b_and!317937 (not b_next!116683) b_and!317921 b_and!317939 (not b_next!116671) (not b_next!116693))
