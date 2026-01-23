; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231412 () Bool)

(assert start!231412)

(declare-fun b!2359594 () Bool)

(declare-fun b_free!70445 () Bool)

(declare-fun b_next!71149 () Bool)

(assert (=> b!2359594 (= b_free!70445 (not b_next!71149))))

(declare-fun tp!754548 () Bool)

(declare-fun b_and!185381 () Bool)

(assert (=> b!2359594 (= tp!754548 b_and!185381)))

(declare-fun b_free!70447 () Bool)

(declare-fun b_next!71151 () Bool)

(assert (=> b!2359594 (= b_free!70447 (not b_next!71151))))

(declare-fun tp!754551 () Bool)

(declare-fun b_and!185383 () Bool)

(assert (=> b!2359594 (= tp!754551 b_and!185383)))

(declare-fun e!1507203 () Bool)

(assert (=> b!2359594 (= e!1507203 (and tp!754548 tp!754551))))

(declare-fun res!1001381 () Bool)

(declare-fun e!1507204 () Bool)

(assert (=> start!231412 (=> (not res!1001381) (not e!1507204))))

(declare-datatypes ((LexerInterface!4034 0))(
  ( (LexerInterfaceExt!4031 (__x!18501 Int)) (Lexer!4032) )
))
(declare-fun thiss!13512 () LexerInterface!4034)

(get-info :version)

(assert (=> start!231412 (= res!1001381 ((_ is Lexer!4032) thiss!13512))))

(assert (=> start!231412 e!1507204))

(assert (=> start!231412 true))

(declare-fun e!1507205 () Bool)

(assert (=> start!231412 e!1507205))

(declare-fun b!2359595 () Bool)

(declare-fun res!1001383 () Bool)

(assert (=> b!2359595 (=> (not res!1001383) (not e!1507204))))

(declare-datatypes ((List!28003 0))(
  ( (Nil!27905) (Cons!27905 (h!33306 (_ BitVec 16)) (t!207880 List!28003)) )
))
(declare-datatypes ((TokenValue!4623 0))(
  ( (FloatLiteralValue!9246 (text!32806 List!28003)) (TokenValueExt!4622 (__x!18502 Int)) (Broken!23115 (value!141307 List!28003)) (Object!4720) (End!4623) (Def!4623) (Underscore!4623) (Match!4623) (Else!4623) (Error!4623) (Case!4623) (If!4623) (Extends!4623) (Abstract!4623) (Class!4623) (Val!4623) (DelimiterValue!9246 (del!4683 List!28003)) (KeywordValue!4629 (value!141308 List!28003)) (CommentValue!9246 (value!141309 List!28003)) (WhitespaceValue!9246 (value!141310 List!28003)) (IndentationValue!4623 (value!141311 List!28003)) (String!30714) (Int32!4623) (Broken!23116 (value!141312 List!28003)) (Boolean!4624) (Unit!40830) (OperatorValue!4626 (op!4683 List!28003)) (IdentifierValue!9246 (value!141313 List!28003)) (IdentifierValue!9247 (value!141314 List!28003)) (WhitespaceValue!9247 (value!141315 List!28003)) (True!9246) (False!9246) (Broken!23117 (value!141316 List!28003)) (Broken!23118 (value!141317 List!28003)) (True!9247) (RightBrace!4623) (RightBracket!4623) (Colon!4623) (Null!4623) (Comma!4623) (LeftBracket!4623) (False!9247) (LeftBrace!4623) (ImaginaryLiteralValue!4623 (text!32807 List!28003)) (StringLiteralValue!13869 (value!141318 List!28003)) (EOFValue!4623 (value!141319 List!28003)) (IdentValue!4623 (value!141320 List!28003)) (DelimiterValue!9247 (value!141321 List!28003)) (DedentValue!4623 (value!141322 List!28003)) (NewLineValue!4623 (value!141323 List!28003)) (IntegerValue!13869 (value!141324 (_ BitVec 32)) (text!32808 List!28003)) (IntegerValue!13870 (value!141325 Int) (text!32809 List!28003)) (Times!4623) (Or!4623) (Equal!4623) (Minus!4623) (Broken!23119 (value!141326 List!28003)) (And!4623) (Div!4623) (LessEqual!4623) (Mod!4623) (Concat!11518) (Not!4623) (Plus!4623) (SpaceValue!4623 (value!141327 List!28003)) (IntegerValue!13871 (value!141328 Int) (text!32810 List!28003)) (StringLiteralValue!13870 (text!32811 List!28003)) (FloatLiteralValue!9247 (text!32812 List!28003)) (BytesLiteralValue!4623 (value!141329 List!28003)) (CommentValue!9247 (value!141330 List!28003)) (StringLiteralValue!13871 (value!141331 List!28003)) (ErrorTokenValue!4623 (msg!4684 List!28003)) )
))
(declare-datatypes ((String!30715 0))(
  ( (String!30716 (value!141332 String)) )
))
(declare-datatypes ((C!13948 0))(
  ( (C!13949 (val!8216 Int)) )
))
(declare-datatypes ((Regex!6895 0))(
  ( (ElementMatch!6895 (c!375088 C!13948)) (Concat!11519 (regOne!14302 Regex!6895) (regTwo!14302 Regex!6895)) (EmptyExpr!6895) (Star!6895 (reg!7224 Regex!6895)) (EmptyLang!6895) (Union!6895 (regOne!14303 Regex!6895) (regTwo!14303 Regex!6895)) )
))
(declare-datatypes ((List!28004 0))(
  ( (Nil!27906) (Cons!27906 (h!33307 C!13948) (t!207881 List!28004)) )
))
(declare-datatypes ((IArray!18283 0))(
  ( (IArray!18284 (innerList!9199 List!28004)) )
))
(declare-datatypes ((Conc!9139 0))(
  ( (Node!9139 (left!21218 Conc!9139) (right!21548 Conc!9139) (csize!18508 Int) (cheight!9350 Int)) (Leaf!13491 (xs!12119 IArray!18283) (csize!18509 Int)) (Empty!9139) )
))
(declare-datatypes ((BalanceConc!17890 0))(
  ( (BalanceConc!17891 (c!375089 Conc!9139)) )
))
(declare-datatypes ((TokenValueInjection!8746 0))(
  ( (TokenValueInjection!8747 (toValue!6273 Int) (toChars!6132 Int)) )
))
(declare-datatypes ((Rule!8674 0))(
  ( (Rule!8675 (regex!4437 Regex!6895) (tag!4927 String!30715) (isSeparator!4437 Bool) (transformation!4437 TokenValueInjection!8746)) )
))
(declare-datatypes ((List!28005 0))(
  ( (Nil!27907) (Cons!27907 (h!33308 Rule!8674) (t!207882 List!28005)) )
))
(declare-fun rules!1706 () List!28005)

(declare-fun isEmpty!15855 (List!28005) Bool)

(assert (=> b!2359595 (= res!1001383 (not (isEmpty!15855 rules!1706)))))

(declare-fun b!2359596 () Bool)

(declare-fun res!1001382 () Bool)

(assert (=> b!2359596 (=> (not res!1001382) (not e!1507204))))

(declare-fun rulesInvariant!3534 (LexerInterface!4034 List!28005) Bool)

(assert (=> b!2359596 (= res!1001382 (rulesInvariant!3534 thiss!13512 rules!1706))))

(declare-fun e!1507202 () Bool)

(declare-fun b!2359597 () Bool)

(declare-fun tp!754549 () Bool)

(declare-fun inv!38128 (String!30715) Bool)

(declare-fun inv!38130 (TokenValueInjection!8746) Bool)

(assert (=> b!2359597 (= e!1507202 (and tp!754549 (inv!38128 (tag!4927 (h!33308 rules!1706))) (inv!38130 (transformation!4437 (h!33308 rules!1706))) e!1507203))))

(declare-fun b!2359598 () Bool)

(declare-fun tp!754550 () Bool)

(assert (=> b!2359598 (= e!1507205 (and e!1507202 tp!754550))))

(declare-fun b!2359599 () Bool)

(declare-fun rulesValidInductive!1569 (LexerInterface!4034 List!28005) Bool)

(assert (=> b!2359599 (= e!1507204 (not (rulesValidInductive!1569 thiss!13512 rules!1706)))))

(assert (= (and start!231412 res!1001381) b!2359595))

(assert (= (and b!2359595 res!1001383) b!2359596))

(assert (= (and b!2359596 res!1001382) b!2359599))

(assert (= b!2359597 b!2359594))

(assert (= b!2359598 b!2359597))

(assert (= (and start!231412 ((_ is Cons!27907) rules!1706)) b!2359598))

(declare-fun m!2772143 () Bool)

(assert (=> b!2359595 m!2772143))

(declare-fun m!2772145 () Bool)

(assert (=> b!2359596 m!2772145))

(declare-fun m!2772147 () Bool)

(assert (=> b!2359597 m!2772147))

(declare-fun m!2772149 () Bool)

(assert (=> b!2359597 m!2772149))

(declare-fun m!2772151 () Bool)

(assert (=> b!2359599 m!2772151))

(check-sat b_and!185383 (not b!2359598) (not b!2359596) (not b!2359597) (not b!2359599) (not b_next!71151) (not b_next!71149) b_and!185381 (not b!2359595))
(check-sat b_and!185383 b_and!185381 (not b_next!71149) (not b_next!71151))
(get-model)

(declare-fun d!693600 () Bool)

(assert (=> d!693600 (= (isEmpty!15855 rules!1706) ((_ is Nil!27907) rules!1706))))

(assert (=> b!2359595 d!693600))

(declare-fun d!693602 () Bool)

(declare-fun res!1001386 () Bool)

(declare-fun e!1507208 () Bool)

(assert (=> d!693602 (=> (not res!1001386) (not e!1507208))))

(declare-fun rulesValid!1646 (LexerInterface!4034 List!28005) Bool)

(assert (=> d!693602 (= res!1001386 (rulesValid!1646 thiss!13512 rules!1706))))

(assert (=> d!693602 (= (rulesInvariant!3534 thiss!13512 rules!1706) e!1507208)))

(declare-fun b!2359602 () Bool)

(declare-datatypes ((List!28006 0))(
  ( (Nil!27908) (Cons!27908 (h!33309 String!30715) (t!207883 List!28006)) )
))
(declare-fun noDuplicateTag!1644 (LexerInterface!4034 List!28005 List!28006) Bool)

(assert (=> b!2359602 (= e!1507208 (noDuplicateTag!1644 thiss!13512 rules!1706 Nil!27908))))

(assert (= (and d!693602 res!1001386) b!2359602))

(declare-fun m!2772153 () Bool)

(assert (=> d!693602 m!2772153))

(declare-fun m!2772155 () Bool)

(assert (=> b!2359602 m!2772155))

(assert (=> b!2359596 d!693602))

(declare-fun d!693606 () Bool)

(assert (=> d!693606 (= (inv!38128 (tag!4927 (h!33308 rules!1706))) (= (mod (str.len (value!141332 (tag!4927 (h!33308 rules!1706)))) 2) 0))))

(assert (=> b!2359597 d!693606))

(declare-fun d!693610 () Bool)

(declare-fun res!1001392 () Bool)

(declare-fun e!1507214 () Bool)

(assert (=> d!693610 (=> (not res!1001392) (not e!1507214))))

(declare-fun semiInverseModEq!1821 (Int Int) Bool)

(assert (=> d!693610 (= res!1001392 (semiInverseModEq!1821 (toChars!6132 (transformation!4437 (h!33308 rules!1706))) (toValue!6273 (transformation!4437 (h!33308 rules!1706)))))))

(assert (=> d!693610 (= (inv!38130 (transformation!4437 (h!33308 rules!1706))) e!1507214)))

(declare-fun b!2359608 () Bool)

(declare-fun equivClasses!1732 (Int Int) Bool)

(assert (=> b!2359608 (= e!1507214 (equivClasses!1732 (toChars!6132 (transformation!4437 (h!33308 rules!1706))) (toValue!6273 (transformation!4437 (h!33308 rules!1706)))))))

(assert (= (and d!693610 res!1001392) b!2359608))

(declare-fun m!2772161 () Bool)

(assert (=> d!693610 m!2772161))

(declare-fun m!2772163 () Bool)

(assert (=> b!2359608 m!2772163))

(assert (=> b!2359597 d!693610))

(declare-fun d!693614 () Bool)

(assert (=> d!693614 true))

(declare-fun lt!864065 () Bool)

(declare-fun lambda!86784 () Int)

(declare-fun forall!5534 (List!28005 Int) Bool)

(assert (=> d!693614 (= lt!864065 (forall!5534 rules!1706 lambda!86784))))

(declare-fun e!1507226 () Bool)

(assert (=> d!693614 (= lt!864065 e!1507226)))

(declare-fun res!1001404 () Bool)

(assert (=> d!693614 (=> res!1001404 e!1507226)))

(assert (=> d!693614 (= res!1001404 (not ((_ is Cons!27907) rules!1706)))))

(assert (=> d!693614 (= (rulesValidInductive!1569 thiss!13512 rules!1706) lt!864065)))

(declare-fun b!2359620 () Bool)

(declare-fun e!1507227 () Bool)

(assert (=> b!2359620 (= e!1507226 e!1507227)))

(declare-fun res!1001405 () Bool)

(assert (=> b!2359620 (=> (not res!1001405) (not e!1507227))))

(declare-fun ruleValid!1504 (LexerInterface!4034 Rule!8674) Bool)

(assert (=> b!2359620 (= res!1001405 (ruleValid!1504 thiss!13512 (h!33308 rules!1706)))))

(declare-fun b!2359621 () Bool)

(assert (=> b!2359621 (= e!1507227 (rulesValidInductive!1569 thiss!13512 (t!207882 rules!1706)))))

(assert (= (and d!693614 (not res!1001404)) b!2359620))

(assert (= (and b!2359620 res!1001405) b!2359621))

(declare-fun m!2772169 () Bool)

(assert (=> d!693614 m!2772169))

(declare-fun m!2772171 () Bool)

(assert (=> b!2359620 m!2772171))

(declare-fun m!2772173 () Bool)

(assert (=> b!2359621 m!2772173))

(assert (=> b!2359599 d!693614))

(declare-fun b!2359636 () Bool)

(declare-fun e!1507230 () Bool)

(declare-fun tp!754566 () Bool)

(assert (=> b!2359636 (= e!1507230 tp!754566)))

(declare-fun b!2359635 () Bool)

(declare-fun tp!754565 () Bool)

(declare-fun tp!754562 () Bool)

(assert (=> b!2359635 (= e!1507230 (and tp!754565 tp!754562))))

(declare-fun b!2359634 () Bool)

(declare-fun tp_is_empty!11209 () Bool)

(assert (=> b!2359634 (= e!1507230 tp_is_empty!11209)))

(declare-fun b!2359637 () Bool)

(declare-fun tp!754563 () Bool)

(declare-fun tp!754564 () Bool)

(assert (=> b!2359637 (= e!1507230 (and tp!754563 tp!754564))))

(assert (=> b!2359597 (= tp!754549 e!1507230)))

(assert (= (and b!2359597 ((_ is ElementMatch!6895) (regex!4437 (h!33308 rules!1706)))) b!2359634))

(assert (= (and b!2359597 ((_ is Concat!11519) (regex!4437 (h!33308 rules!1706)))) b!2359635))

(assert (= (and b!2359597 ((_ is Star!6895) (regex!4437 (h!33308 rules!1706)))) b!2359636))

(assert (= (and b!2359597 ((_ is Union!6895) (regex!4437 (h!33308 rules!1706)))) b!2359637))

(declare-fun b!2359652 () Bool)

(declare-fun b_free!70449 () Bool)

(declare-fun b_next!71153 () Bool)

(assert (=> b!2359652 (= b_free!70449 (not b_next!71153))))

(declare-fun tp!754576 () Bool)

(declare-fun b_and!185385 () Bool)

(assert (=> b!2359652 (= tp!754576 b_and!185385)))

(declare-fun b_free!70451 () Bool)

(declare-fun b_next!71155 () Bool)

(assert (=> b!2359652 (= b_free!70451 (not b_next!71155))))

(declare-fun tp!754577 () Bool)

(declare-fun b_and!185387 () Bool)

(assert (=> b!2359652 (= tp!754577 b_and!185387)))

(declare-fun e!1507241 () Bool)

(assert (=> b!2359652 (= e!1507241 (and tp!754576 tp!754577))))

(declare-fun tp!754578 () Bool)

(declare-fun b!2359651 () Bool)

(declare-fun e!1507243 () Bool)

(assert (=> b!2359651 (= e!1507243 (and tp!754578 (inv!38128 (tag!4927 (h!33308 (t!207882 rules!1706)))) (inv!38130 (transformation!4437 (h!33308 (t!207882 rules!1706)))) e!1507241))))

(declare-fun b!2359650 () Bool)

(declare-fun e!1507242 () Bool)

(declare-fun tp!754575 () Bool)

(assert (=> b!2359650 (= e!1507242 (and e!1507243 tp!754575))))

(assert (=> b!2359598 (= tp!754550 e!1507242)))

(assert (= b!2359651 b!2359652))

(assert (= b!2359650 b!2359651))

(assert (= (and b!2359598 ((_ is Cons!27907) (t!207882 rules!1706))) b!2359650))

(declare-fun m!2772181 () Bool)

(assert (=> b!2359651 m!2772181))

(declare-fun m!2772183 () Bool)

(assert (=> b!2359651 m!2772183))

(check-sat (not b!2359651) (not b_next!71155) b_and!185381 tp_is_empty!11209 (not b!2359621) (not b_next!71151) (not b_next!71149) (not d!693614) (not b!2359636) b_and!185383 (not b!2359608) b_and!185385 (not d!693610) (not b!2359635) (not b!2359650) (not d!693602) b_and!185387 (not b!2359620) (not b_next!71153) (not b!2359602) (not b!2359637))
(check-sat b_and!185383 b_and!185385 (not b_next!71155) b_and!185381 (not b_next!71151) (not b_next!71149) b_and!185387 (not b_next!71153))
(get-model)

(declare-fun d!693620 () Bool)

(assert (=> d!693620 true))

(declare-fun order!15435 () Int)

(declare-fun lambda!86790 () Int)

(declare-fun order!15433 () Int)

(declare-fun dynLambda!12011 (Int Int) Int)

(declare-fun dynLambda!12012 (Int Int) Int)

(assert (=> d!693620 (< (dynLambda!12011 order!15433 (toValue!6273 (transformation!4437 (h!33308 rules!1706)))) (dynLambda!12012 order!15435 lambda!86790))))

(declare-fun Forall2!735 (Int) Bool)

(assert (=> d!693620 (= (equivClasses!1732 (toChars!6132 (transformation!4437 (h!33308 rules!1706))) (toValue!6273 (transformation!4437 (h!33308 rules!1706)))) (Forall2!735 lambda!86790))))

(declare-fun bs!460487 () Bool)

(assert (= bs!460487 d!693620))

(declare-fun m!2772189 () Bool)

(assert (=> bs!460487 m!2772189))

(assert (=> b!2359608 d!693620))

(declare-fun d!693622 () Bool)

(declare-fun res!1001416 () Bool)

(declare-fun e!1507266 () Bool)

(assert (=> d!693622 (=> res!1001416 e!1507266)))

(assert (=> d!693622 (= res!1001416 ((_ is Nil!27907) rules!1706))))

(assert (=> d!693622 (= (noDuplicateTag!1644 thiss!13512 rules!1706 Nil!27908) e!1507266)))

(declare-fun b!2359686 () Bool)

(declare-fun e!1507267 () Bool)

(assert (=> b!2359686 (= e!1507266 e!1507267)))

(declare-fun res!1001417 () Bool)

(assert (=> b!2359686 (=> (not res!1001417) (not e!1507267))))

(declare-fun contains!4874 (List!28006 String!30715) Bool)

(assert (=> b!2359686 (= res!1001417 (not (contains!4874 Nil!27908 (tag!4927 (h!33308 rules!1706)))))))

(declare-fun b!2359687 () Bool)

(assert (=> b!2359687 (= e!1507267 (noDuplicateTag!1644 thiss!13512 (t!207882 rules!1706) (Cons!27908 (tag!4927 (h!33308 rules!1706)) Nil!27908)))))

(assert (= (and d!693622 (not res!1001416)) b!2359686))

(assert (= (and b!2359686 res!1001417) b!2359687))

(declare-fun m!2772191 () Bool)

(assert (=> b!2359686 m!2772191))

(declare-fun m!2772193 () Bool)

(assert (=> b!2359687 m!2772193))

(assert (=> b!2359602 d!693622))

(declare-fun d!693624 () Bool)

(assert (=> d!693624 true))

(declare-fun order!15439 () Int)

(declare-fun lambda!86793 () Int)

(declare-fun order!15437 () Int)

(declare-fun dynLambda!12013 (Int Int) Int)

(declare-fun dynLambda!12014 (Int Int) Int)

(assert (=> d!693624 (< (dynLambda!12013 order!15437 (toChars!6132 (transformation!4437 (h!33308 rules!1706)))) (dynLambda!12014 order!15439 lambda!86793))))

(assert (=> d!693624 true))

(assert (=> d!693624 (< (dynLambda!12011 order!15433 (toValue!6273 (transformation!4437 (h!33308 rules!1706)))) (dynLambda!12014 order!15439 lambda!86793))))

(declare-fun Forall!1126 (Int) Bool)

(assert (=> d!693624 (= (semiInverseModEq!1821 (toChars!6132 (transformation!4437 (h!33308 rules!1706))) (toValue!6273 (transformation!4437 (h!33308 rules!1706)))) (Forall!1126 lambda!86793))))

(declare-fun bs!460488 () Bool)

(assert (= bs!460488 d!693624))

(declare-fun m!2772195 () Bool)

(assert (=> bs!460488 m!2772195))

(assert (=> d!693610 d!693624))

(declare-fun d!693626 () Bool)

(declare-fun res!1001422 () Bool)

(declare-fun e!1507270 () Bool)

(assert (=> d!693626 (=> (not res!1001422) (not e!1507270))))

(declare-fun validRegex!2639 (Regex!6895) Bool)

(assert (=> d!693626 (= res!1001422 (validRegex!2639 (regex!4437 (h!33308 rules!1706))))))

(assert (=> d!693626 (= (ruleValid!1504 thiss!13512 (h!33308 rules!1706)) e!1507270)))

(declare-fun b!2359696 () Bool)

(declare-fun res!1001423 () Bool)

(assert (=> b!2359696 (=> (not res!1001423) (not e!1507270))))

(declare-fun nullable!1973 (Regex!6895) Bool)

(assert (=> b!2359696 (= res!1001423 (not (nullable!1973 (regex!4437 (h!33308 rules!1706)))))))

(declare-fun b!2359697 () Bool)

(assert (=> b!2359697 (= e!1507270 (not (= (tag!4927 (h!33308 rules!1706)) (String!30716 ""))))))

(assert (= (and d!693626 res!1001422) b!2359696))

(assert (= (and b!2359696 res!1001423) b!2359697))

(declare-fun m!2772197 () Bool)

(assert (=> d!693626 m!2772197))

(declare-fun m!2772199 () Bool)

(assert (=> b!2359696 m!2772199))

(assert (=> b!2359620 d!693626))

(declare-fun bs!460489 () Bool)

(declare-fun d!693628 () Bool)

(assert (= bs!460489 (and d!693628 d!693614)))

(declare-fun lambda!86796 () Int)

(assert (=> bs!460489 (= lambda!86796 lambda!86784)))

(assert (=> d!693628 true))

(declare-fun lt!864069 () Bool)

(assert (=> d!693628 (= lt!864069 (rulesValidInductive!1569 thiss!13512 rules!1706))))

(assert (=> d!693628 (= lt!864069 (forall!5534 rules!1706 lambda!86796))))

(assert (=> d!693628 (= (rulesValid!1646 thiss!13512 rules!1706) lt!864069)))

(declare-fun bs!460490 () Bool)

(assert (= bs!460490 d!693628))

(assert (=> bs!460490 m!2772151))

(declare-fun m!2772201 () Bool)

(assert (=> bs!460490 m!2772201))

(assert (=> d!693602 d!693628))

(declare-fun bs!460491 () Bool)

(declare-fun d!693630 () Bool)

(assert (= bs!460491 (and d!693630 d!693614)))

(declare-fun lambda!86797 () Int)

(assert (=> bs!460491 (= lambda!86797 lambda!86784)))

(declare-fun bs!460492 () Bool)

(assert (= bs!460492 (and d!693630 d!693628)))

(assert (=> bs!460492 (= lambda!86797 lambda!86796)))

(assert (=> d!693630 true))

(declare-fun lt!864070 () Bool)

(assert (=> d!693630 (= lt!864070 (forall!5534 (t!207882 rules!1706) lambda!86797))))

(declare-fun e!1507271 () Bool)

(assert (=> d!693630 (= lt!864070 e!1507271)))

(declare-fun res!1001424 () Bool)

(assert (=> d!693630 (=> res!1001424 e!1507271)))

(assert (=> d!693630 (= res!1001424 (not ((_ is Cons!27907) (t!207882 rules!1706))))))

(assert (=> d!693630 (= (rulesValidInductive!1569 thiss!13512 (t!207882 rules!1706)) lt!864070)))

(declare-fun b!2359698 () Bool)

(declare-fun e!1507272 () Bool)

(assert (=> b!2359698 (= e!1507271 e!1507272)))

(declare-fun res!1001425 () Bool)

(assert (=> b!2359698 (=> (not res!1001425) (not e!1507272))))

(assert (=> b!2359698 (= res!1001425 (ruleValid!1504 thiss!13512 (h!33308 (t!207882 rules!1706))))))

(declare-fun b!2359699 () Bool)

(assert (=> b!2359699 (= e!1507272 (rulesValidInductive!1569 thiss!13512 (t!207882 (t!207882 rules!1706))))))

(assert (= (and d!693630 (not res!1001424)) b!2359698))

(assert (= (and b!2359698 res!1001425) b!2359699))

(declare-fun m!2772203 () Bool)

(assert (=> d!693630 m!2772203))

(declare-fun m!2772205 () Bool)

(assert (=> b!2359698 m!2772205))

(declare-fun m!2772207 () Bool)

(assert (=> b!2359699 m!2772207))

(assert (=> b!2359621 d!693630))

(declare-fun d!693632 () Bool)

(assert (=> d!693632 (= (inv!38128 (tag!4927 (h!33308 (t!207882 rules!1706)))) (= (mod (str.len (value!141332 (tag!4927 (h!33308 (t!207882 rules!1706))))) 2) 0))))

(assert (=> b!2359651 d!693632))

(declare-fun d!693634 () Bool)

(declare-fun res!1001426 () Bool)

(declare-fun e!1507273 () Bool)

(assert (=> d!693634 (=> (not res!1001426) (not e!1507273))))

(assert (=> d!693634 (= res!1001426 (semiInverseModEq!1821 (toChars!6132 (transformation!4437 (h!33308 (t!207882 rules!1706)))) (toValue!6273 (transformation!4437 (h!33308 (t!207882 rules!1706))))))))

(assert (=> d!693634 (= (inv!38130 (transformation!4437 (h!33308 (t!207882 rules!1706)))) e!1507273)))

(declare-fun b!2359700 () Bool)

(assert (=> b!2359700 (= e!1507273 (equivClasses!1732 (toChars!6132 (transformation!4437 (h!33308 (t!207882 rules!1706)))) (toValue!6273 (transformation!4437 (h!33308 (t!207882 rules!1706))))))))

(assert (= (and d!693634 res!1001426) b!2359700))

(declare-fun m!2772209 () Bool)

(assert (=> d!693634 m!2772209))

(declare-fun m!2772211 () Bool)

(assert (=> b!2359700 m!2772211))

(assert (=> b!2359651 d!693634))

(declare-fun d!693636 () Bool)

(declare-fun res!1001431 () Bool)

(declare-fun e!1507278 () Bool)

(assert (=> d!693636 (=> res!1001431 e!1507278)))

(assert (=> d!693636 (= res!1001431 ((_ is Nil!27907) rules!1706))))

(assert (=> d!693636 (= (forall!5534 rules!1706 lambda!86784) e!1507278)))

(declare-fun b!2359705 () Bool)

(declare-fun e!1507279 () Bool)

(assert (=> b!2359705 (= e!1507278 e!1507279)))

(declare-fun res!1001432 () Bool)

(assert (=> b!2359705 (=> (not res!1001432) (not e!1507279))))

(declare-fun dynLambda!12015 (Int Rule!8674) Bool)

(assert (=> b!2359705 (= res!1001432 (dynLambda!12015 lambda!86784 (h!33308 rules!1706)))))

(declare-fun b!2359706 () Bool)

(assert (=> b!2359706 (= e!1507279 (forall!5534 (t!207882 rules!1706) lambda!86784))))

(assert (= (and d!693636 (not res!1001431)) b!2359705))

(assert (= (and b!2359705 res!1001432) b!2359706))

(declare-fun b_lambda!73755 () Bool)

(assert (=> (not b_lambda!73755) (not b!2359705)))

(declare-fun m!2772213 () Bool)

(assert (=> b!2359705 m!2772213))

(declare-fun m!2772215 () Bool)

(assert (=> b!2359706 m!2772215))

(assert (=> d!693614 d!693636))

(declare-fun b!2359709 () Bool)

(declare-fun e!1507280 () Bool)

(declare-fun tp!754610 () Bool)

(assert (=> b!2359709 (= e!1507280 tp!754610)))

(declare-fun b!2359708 () Bool)

(declare-fun tp!754609 () Bool)

(declare-fun tp!754606 () Bool)

(assert (=> b!2359708 (= e!1507280 (and tp!754609 tp!754606))))

(declare-fun b!2359707 () Bool)

(assert (=> b!2359707 (= e!1507280 tp_is_empty!11209)))

(declare-fun b!2359710 () Bool)

(declare-fun tp!754607 () Bool)

(declare-fun tp!754608 () Bool)

(assert (=> b!2359710 (= e!1507280 (and tp!754607 tp!754608))))

(assert (=> b!2359636 (= tp!754566 e!1507280)))

(assert (= (and b!2359636 ((_ is ElementMatch!6895) (reg!7224 (regex!4437 (h!33308 rules!1706))))) b!2359707))

(assert (= (and b!2359636 ((_ is Concat!11519) (reg!7224 (regex!4437 (h!33308 rules!1706))))) b!2359708))

(assert (= (and b!2359636 ((_ is Star!6895) (reg!7224 (regex!4437 (h!33308 rules!1706))))) b!2359709))

(assert (= (and b!2359636 ((_ is Union!6895) (reg!7224 (regex!4437 (h!33308 rules!1706))))) b!2359710))

(declare-fun b!2359713 () Bool)

(declare-fun e!1507281 () Bool)

(declare-fun tp!754615 () Bool)

(assert (=> b!2359713 (= e!1507281 tp!754615)))

(declare-fun b!2359712 () Bool)

(declare-fun tp!754614 () Bool)

(declare-fun tp!754611 () Bool)

(assert (=> b!2359712 (= e!1507281 (and tp!754614 tp!754611))))

(declare-fun b!2359711 () Bool)

(assert (=> b!2359711 (= e!1507281 tp_is_empty!11209)))

(declare-fun b!2359714 () Bool)

(declare-fun tp!754612 () Bool)

(declare-fun tp!754613 () Bool)

(assert (=> b!2359714 (= e!1507281 (and tp!754612 tp!754613))))

(assert (=> b!2359637 (= tp!754563 e!1507281)))

(assert (= (and b!2359637 ((_ is ElementMatch!6895) (regOne!14303 (regex!4437 (h!33308 rules!1706))))) b!2359711))

(assert (= (and b!2359637 ((_ is Concat!11519) (regOne!14303 (regex!4437 (h!33308 rules!1706))))) b!2359712))

(assert (= (and b!2359637 ((_ is Star!6895) (regOne!14303 (regex!4437 (h!33308 rules!1706))))) b!2359713))

(assert (= (and b!2359637 ((_ is Union!6895) (regOne!14303 (regex!4437 (h!33308 rules!1706))))) b!2359714))

(declare-fun b!2359717 () Bool)

(declare-fun e!1507282 () Bool)

(declare-fun tp!754620 () Bool)

(assert (=> b!2359717 (= e!1507282 tp!754620)))

(declare-fun b!2359716 () Bool)

(declare-fun tp!754619 () Bool)

(declare-fun tp!754616 () Bool)

(assert (=> b!2359716 (= e!1507282 (and tp!754619 tp!754616))))

(declare-fun b!2359715 () Bool)

(assert (=> b!2359715 (= e!1507282 tp_is_empty!11209)))

(declare-fun b!2359718 () Bool)

(declare-fun tp!754617 () Bool)

(declare-fun tp!754618 () Bool)

(assert (=> b!2359718 (= e!1507282 (and tp!754617 tp!754618))))

(assert (=> b!2359637 (= tp!754564 e!1507282)))

(assert (= (and b!2359637 ((_ is ElementMatch!6895) (regTwo!14303 (regex!4437 (h!33308 rules!1706))))) b!2359715))

(assert (= (and b!2359637 ((_ is Concat!11519) (regTwo!14303 (regex!4437 (h!33308 rules!1706))))) b!2359716))

(assert (= (and b!2359637 ((_ is Star!6895) (regTwo!14303 (regex!4437 (h!33308 rules!1706))))) b!2359717))

(assert (= (and b!2359637 ((_ is Union!6895) (regTwo!14303 (regex!4437 (h!33308 rules!1706))))) b!2359718))

(declare-fun b!2359721 () Bool)

(declare-fun b_free!70457 () Bool)

(declare-fun b_next!71161 () Bool)

(assert (=> b!2359721 (= b_free!70457 (not b_next!71161))))

(declare-fun tp!754622 () Bool)

(declare-fun b_and!185393 () Bool)

(assert (=> b!2359721 (= tp!754622 b_and!185393)))

(declare-fun b_free!70459 () Bool)

(declare-fun b_next!71163 () Bool)

(assert (=> b!2359721 (= b_free!70459 (not b_next!71163))))

(declare-fun tp!754623 () Bool)

(declare-fun b_and!185395 () Bool)

(assert (=> b!2359721 (= tp!754623 b_and!185395)))

(declare-fun e!1507283 () Bool)

(assert (=> b!2359721 (= e!1507283 (and tp!754622 tp!754623))))

(declare-fun e!1507285 () Bool)

(declare-fun tp!754624 () Bool)

(declare-fun b!2359720 () Bool)

(assert (=> b!2359720 (= e!1507285 (and tp!754624 (inv!38128 (tag!4927 (h!33308 (t!207882 (t!207882 rules!1706))))) (inv!38130 (transformation!4437 (h!33308 (t!207882 (t!207882 rules!1706))))) e!1507283))))

(declare-fun b!2359719 () Bool)

(declare-fun e!1507284 () Bool)

(declare-fun tp!754621 () Bool)

(assert (=> b!2359719 (= e!1507284 (and e!1507285 tp!754621))))

(assert (=> b!2359650 (= tp!754575 e!1507284)))

(assert (= b!2359720 b!2359721))

(assert (= b!2359719 b!2359720))

(assert (= (and b!2359650 ((_ is Cons!27907) (t!207882 (t!207882 rules!1706)))) b!2359719))

(declare-fun m!2772217 () Bool)

(assert (=> b!2359720 m!2772217))

(declare-fun m!2772219 () Bool)

(assert (=> b!2359720 m!2772219))

(declare-fun b!2359724 () Bool)

(declare-fun e!1507287 () Bool)

(declare-fun tp!754629 () Bool)

(assert (=> b!2359724 (= e!1507287 tp!754629)))

(declare-fun b!2359723 () Bool)

(declare-fun tp!754628 () Bool)

(declare-fun tp!754625 () Bool)

(assert (=> b!2359723 (= e!1507287 (and tp!754628 tp!754625))))

(declare-fun b!2359722 () Bool)

(assert (=> b!2359722 (= e!1507287 tp_is_empty!11209)))

(declare-fun b!2359725 () Bool)

(declare-fun tp!754626 () Bool)

(declare-fun tp!754627 () Bool)

(assert (=> b!2359725 (= e!1507287 (and tp!754626 tp!754627))))

(assert (=> b!2359651 (= tp!754578 e!1507287)))

(assert (= (and b!2359651 ((_ is ElementMatch!6895) (regex!4437 (h!33308 (t!207882 rules!1706))))) b!2359722))

(assert (= (and b!2359651 ((_ is Concat!11519) (regex!4437 (h!33308 (t!207882 rules!1706))))) b!2359723))

(assert (= (and b!2359651 ((_ is Star!6895) (regex!4437 (h!33308 (t!207882 rules!1706))))) b!2359724))

(assert (= (and b!2359651 ((_ is Union!6895) (regex!4437 (h!33308 (t!207882 rules!1706))))) b!2359725))

(declare-fun b!2359728 () Bool)

(declare-fun e!1507288 () Bool)

(declare-fun tp!754634 () Bool)

(assert (=> b!2359728 (= e!1507288 tp!754634)))

(declare-fun b!2359727 () Bool)

(declare-fun tp!754633 () Bool)

(declare-fun tp!754630 () Bool)

(assert (=> b!2359727 (= e!1507288 (and tp!754633 tp!754630))))

(declare-fun b!2359726 () Bool)

(assert (=> b!2359726 (= e!1507288 tp_is_empty!11209)))

(declare-fun b!2359729 () Bool)

(declare-fun tp!754631 () Bool)

(declare-fun tp!754632 () Bool)

(assert (=> b!2359729 (= e!1507288 (and tp!754631 tp!754632))))

(assert (=> b!2359635 (= tp!754565 e!1507288)))

(assert (= (and b!2359635 ((_ is ElementMatch!6895) (regOne!14302 (regex!4437 (h!33308 rules!1706))))) b!2359726))

(assert (= (and b!2359635 ((_ is Concat!11519) (regOne!14302 (regex!4437 (h!33308 rules!1706))))) b!2359727))

(assert (= (and b!2359635 ((_ is Star!6895) (regOne!14302 (regex!4437 (h!33308 rules!1706))))) b!2359728))

(assert (= (and b!2359635 ((_ is Union!6895) (regOne!14302 (regex!4437 (h!33308 rules!1706))))) b!2359729))

(declare-fun b!2359732 () Bool)

(declare-fun e!1507289 () Bool)

(declare-fun tp!754639 () Bool)

(assert (=> b!2359732 (= e!1507289 tp!754639)))

(declare-fun b!2359731 () Bool)

(declare-fun tp!754638 () Bool)

(declare-fun tp!754635 () Bool)

(assert (=> b!2359731 (= e!1507289 (and tp!754638 tp!754635))))

(declare-fun b!2359730 () Bool)

(assert (=> b!2359730 (= e!1507289 tp_is_empty!11209)))

(declare-fun b!2359733 () Bool)

(declare-fun tp!754636 () Bool)

(declare-fun tp!754637 () Bool)

(assert (=> b!2359733 (= e!1507289 (and tp!754636 tp!754637))))

(assert (=> b!2359635 (= tp!754562 e!1507289)))

(assert (= (and b!2359635 ((_ is ElementMatch!6895) (regTwo!14302 (regex!4437 (h!33308 rules!1706))))) b!2359730))

(assert (= (and b!2359635 ((_ is Concat!11519) (regTwo!14302 (regex!4437 (h!33308 rules!1706))))) b!2359731))

(assert (= (and b!2359635 ((_ is Star!6895) (regTwo!14302 (regex!4437 (h!33308 rules!1706))))) b!2359732))

(assert (= (and b!2359635 ((_ is Union!6895) (regTwo!14302 (regex!4437 (h!33308 rules!1706))))) b!2359733))

(declare-fun b_lambda!73757 () Bool)

(assert (= b_lambda!73755 (or d!693614 b_lambda!73757)))

(declare-fun bs!460493 () Bool)

(declare-fun d!693638 () Bool)

(assert (= bs!460493 (and d!693638 d!693614)))

(assert (=> bs!460493 (= (dynLambda!12015 lambda!86784 (h!33308 rules!1706)) (ruleValid!1504 thiss!13512 (h!33308 rules!1706)))))

(assert (=> bs!460493 m!2772171))

(assert (=> b!2359705 d!693638))

(check-sat (not b!2359698) (not b!2359731) (not bs!460493) (not b!2359713) (not b!2359716) (not b!2359712) (not b!2359696) (not d!693624) (not b_next!71151) (not b!2359727) (not b!2359687) b_and!185383 b_and!185385 (not b_next!71163) (not b!2359729) (not b_next!71155) (not b!2359724) (not b!2359714) b_and!185381 tp_is_empty!11209 (not d!693626) (not b!2359719) (not b!2359717) (not b!2359700) (not b!2359706) (not b!2359708) (not b!2359732) (not b!2359709) (not d!693620) (not b_lambda!73757) b_and!185387 (not b!2359725) (not b_next!71153) (not b!2359723) (not d!693634) (not b!2359718) (not b_next!71149) (not b!2359686) (not b!2359733) b_and!185393 (not b!2359728) (not b!2359720) (not b!2359699) (not d!693628) (not b!2359710) b_and!185395 (not b_next!71161) (not d!693630))
(check-sat b_and!185383 (not b_next!71155) b_and!185381 (not b_next!71151) (not b_next!71149) b_and!185393 b_and!185385 (not b_next!71163) b_and!185387 (not b_next!71153) b_and!185395 (not b_next!71161))
