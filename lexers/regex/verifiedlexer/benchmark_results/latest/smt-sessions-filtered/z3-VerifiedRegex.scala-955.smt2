; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48488 () Bool)

(assert start!48488)

(declare-fun b!529021 () Bool)

(declare-fun b_free!14105 () Bool)

(declare-fun b_next!14121 () Bool)

(assert (=> b!529021 (= b_free!14105 (not b_next!14121))))

(declare-fun tp!168274 () Bool)

(declare-fun b_and!51603 () Bool)

(assert (=> b!529021 (= tp!168274 b_and!51603)))

(declare-fun b_free!14107 () Bool)

(declare-fun b_next!14123 () Bool)

(assert (=> b!529021 (= b_free!14107 (not b_next!14123))))

(declare-fun tp!168273 () Bool)

(declare-fun b_and!51605 () Bool)

(assert (=> b!529021 (= tp!168273 b_and!51605)))

(declare-fun b!529020 () Bool)

(declare-fun b_free!14109 () Bool)

(declare-fun b_next!14125 () Bool)

(assert (=> b!529020 (= b_free!14109 (not b_next!14125))))

(declare-fun tp!168275 () Bool)

(declare-fun b_and!51607 () Bool)

(assert (=> b!529020 (= tp!168275 b_and!51607)))

(declare-fun b_free!14111 () Bool)

(declare-fun b_next!14127 () Bool)

(assert (=> b!529020 (= b_free!14111 (not b_next!14127))))

(declare-fun tp!168276 () Bool)

(declare-fun b_and!51609 () Bool)

(assert (=> b!529020 (= tp!168276 b_and!51609)))

(declare-fun res!223424 () Bool)

(declare-fun e!318281 () Bool)

(assert (=> start!48488 (=> (not res!223424) (not e!318281))))

(declare-datatypes ((LexerInterface!783 0))(
  ( (LexerInterfaceExt!780 (__x!3740 Int)) (Lexer!781) )
))
(declare-fun thiss!22590 () LexerInterface!783)

(get-info :version)

(assert (=> start!48488 (= res!223424 ((_ is Lexer!781) thiss!22590))))

(assert (=> start!48488 e!318281))

(declare-fun e!318279 () Bool)

(assert (=> start!48488 e!318279))

(declare-fun e!318274 () Bool)

(assert (=> start!48488 e!318274))

(declare-datatypes ((String!6348 0))(
  ( (String!6349 (value!30405 String)) )
))
(declare-datatypes ((C!3384 0))(
  ( (C!3385 (val!1918 Int)) )
))
(declare-datatypes ((Regex!1231 0))(
  ( (ElementMatch!1231 (c!101214 C!3384)) (Concat!2152 (regOne!2974 Regex!1231) (regTwo!2974 Regex!1231)) (EmptyExpr!1231) (Star!1231 (reg!1560 Regex!1231)) (EmptyLang!1231) (Union!1231 (regOne!2975 Regex!1231) (regTwo!2975 Regex!1231)) )
))
(declare-datatypes ((List!5007 0))(
  ( (Nil!4997) (Cons!4997 (h!10398 (_ BitVec 16)) (t!73628 List!5007)) )
))
(declare-datatypes ((TokenValue!921 0))(
  ( (FloatLiteralValue!1842 (text!6892 List!5007)) (TokenValueExt!920 (__x!3741 Int)) (Broken!4605 (value!30406 List!5007)) (Object!930) (End!921) (Def!921) (Underscore!921) (Match!921) (Else!921) (Error!921) (Case!921) (If!921) (Extends!921) (Abstract!921) (Class!921) (Val!921) (DelimiterValue!1842 (del!981 List!5007)) (KeywordValue!927 (value!30407 List!5007)) (CommentValue!1842 (value!30408 List!5007)) (WhitespaceValue!1842 (value!30409 List!5007)) (IndentationValue!921 (value!30410 List!5007)) (String!6350) (Int32!921) (Broken!4606 (value!30411 List!5007)) (Boolean!922) (Unit!8816) (OperatorValue!924 (op!981 List!5007)) (IdentifierValue!1842 (value!30412 List!5007)) (IdentifierValue!1843 (value!30413 List!5007)) (WhitespaceValue!1843 (value!30414 List!5007)) (True!1842) (False!1842) (Broken!4607 (value!30415 List!5007)) (Broken!4608 (value!30416 List!5007)) (True!1843) (RightBrace!921) (RightBracket!921) (Colon!921) (Null!921) (Comma!921) (LeftBracket!921) (False!1843) (LeftBrace!921) (ImaginaryLiteralValue!921 (text!6893 List!5007)) (StringLiteralValue!2763 (value!30417 List!5007)) (EOFValue!921 (value!30418 List!5007)) (IdentValue!921 (value!30419 List!5007)) (DelimiterValue!1843 (value!30420 List!5007)) (DedentValue!921 (value!30421 List!5007)) (NewLineValue!921 (value!30422 List!5007)) (IntegerValue!2763 (value!30423 (_ BitVec 32)) (text!6894 List!5007)) (IntegerValue!2764 (value!30424 Int) (text!6895 List!5007)) (Times!921) (Or!921) (Equal!921) (Minus!921) (Broken!4609 (value!30425 List!5007)) (And!921) (Div!921) (LessEqual!921) (Mod!921) (Concat!2153) (Not!921) (Plus!921) (SpaceValue!921 (value!30426 List!5007)) (IntegerValue!2765 (value!30427 Int) (text!6896 List!5007)) (StringLiteralValue!2764 (text!6897 List!5007)) (FloatLiteralValue!1843 (text!6898 List!5007)) (BytesLiteralValue!921 (value!30428 List!5007)) (CommentValue!1843 (value!30429 List!5007)) (StringLiteralValue!2765 (value!30430 List!5007)) (ErrorTokenValue!921 (msg!982 List!5007)) )
))
(declare-datatypes ((List!5008 0))(
  ( (Nil!4998) (Cons!4998 (h!10399 C!3384) (t!73629 List!5008)) )
))
(declare-datatypes ((IArray!3229 0))(
  ( (IArray!3230 (innerList!1672 List!5008)) )
))
(declare-datatypes ((Conc!1614 0))(
  ( (Node!1614 (left!4235 Conc!1614) (right!4565 Conc!1614) (csize!3458 Int) (cheight!1825 Int)) (Leaf!2570 (xs!4251 IArray!3229) (csize!3459 Int)) (Empty!1614) )
))
(declare-datatypes ((BalanceConc!3236 0))(
  ( (BalanceConc!3237 (c!101215 Conc!1614)) )
))
(declare-datatypes ((TokenValueInjection!1610 0))(
  ( (TokenValueInjection!1611 (toValue!1736 Int) (toChars!1595 Int)) )
))
(declare-datatypes ((Rule!1594 0))(
  ( (Rule!1595 (regex!897 Regex!1231) (tag!1159 String!6348) (isSeparator!897 Bool) (transformation!897 TokenValueInjection!1610)) )
))
(declare-datatypes ((Token!1530 0))(
  ( (Token!1531 (value!30431 TokenValue!921) (rule!1597 Rule!1594) (size!4075 Int) (originalCharacters!936 List!5008)) )
))
(declare-fun token!491 () Token!1530)

(declare-fun e!318273 () Bool)

(declare-fun inv!6264 (Token!1530) Bool)

(assert (=> start!48488 (and (inv!6264 token!491) e!318273)))

(assert (=> start!48488 true))

(declare-fun e!318280 () Bool)

(assert (=> start!48488 e!318280))

(declare-fun b!529011 () Bool)

(declare-fun res!223426 () Bool)

(assert (=> b!529011 (=> (not res!223426) (not e!318281))))

(declare-datatypes ((List!5009 0))(
  ( (Nil!4999) (Cons!4999 (h!10400 Rule!1594) (t!73630 List!5009)) )
))
(declare-fun rules!3103 () List!5009)

(declare-fun isEmpty!3620 (List!5009) Bool)

(assert (=> b!529011 (= res!223426 (not (isEmpty!3620 rules!3103)))))

(declare-fun b!529012 () Bool)

(declare-fun e!318277 () Bool)

(declare-fun tp!168267 () Bool)

(assert (=> b!529012 (= e!318274 (and e!318277 tp!168267))))

(declare-fun tp!168271 () Bool)

(declare-fun e!318271 () Bool)

(declare-fun b!529013 () Bool)

(declare-fun inv!21 (TokenValue!921) Bool)

(assert (=> b!529013 (= e!318273 (and (inv!21 (value!30431 token!491)) e!318271 tp!168271))))

(declare-fun b!529014 () Bool)

(declare-fun tp_is_empty!2817 () Bool)

(declare-fun tp!168270 () Bool)

(assert (=> b!529014 (= e!318280 (and tp_is_empty!2817 tp!168270))))

(declare-fun b!529015 () Bool)

(declare-fun rulesValidInductive!300 (LexerInterface!783 List!5009) Bool)

(assert (=> b!529015 (= e!318281 (not (rulesValidInductive!300 thiss!22590 rules!3103)))))

(declare-fun lt!218309 () List!5008)

(declare-fun input!2705 () List!5008)

(declare-fun suffix!1342 () List!5008)

(declare-fun ++!1385 (List!5008 List!5008) List!5008)

(assert (=> b!529015 (= lt!218309 (++!1385 input!2705 suffix!1342))))

(declare-fun b!529016 () Bool)

(declare-fun tp!168268 () Bool)

(assert (=> b!529016 (= e!318279 (and tp_is_empty!2817 tp!168268))))

(declare-fun b!529017 () Bool)

(declare-fun res!223423 () Bool)

(assert (=> b!529017 (=> (not res!223423) (not e!318281))))

(declare-fun list!2077 (BalanceConc!3236) List!5008)

(declare-fun charsOf!526 (Token!1530) BalanceConc!3236)

(assert (=> b!529017 (= res!223423 (= (list!2077 (charsOf!526 token!491)) input!2705))))

(declare-fun b!529018 () Bool)

(declare-fun res!223427 () Bool)

(assert (=> b!529018 (=> (not res!223427) (not e!318281))))

(declare-fun rulesInvariant!746 (LexerInterface!783 List!5009) Bool)

(assert (=> b!529018 (= res!223427 (rulesInvariant!746 thiss!22590 rules!3103))))

(declare-fun b!529019 () Bool)

(declare-fun tp!168269 () Bool)

(declare-fun e!318272 () Bool)

(declare-fun inv!6261 (String!6348) Bool)

(declare-fun inv!6265 (TokenValueInjection!1610) Bool)

(assert (=> b!529019 (= e!318271 (and tp!168269 (inv!6261 (tag!1159 (rule!1597 token!491))) (inv!6265 (transformation!897 (rule!1597 token!491))) e!318272))))

(declare-fun e!318276 () Bool)

(assert (=> b!529020 (= e!318276 (and tp!168275 tp!168276))))

(assert (=> b!529021 (= e!318272 (and tp!168274 tp!168273))))

(declare-fun tp!168272 () Bool)

(declare-fun b!529022 () Bool)

(assert (=> b!529022 (= e!318277 (and tp!168272 (inv!6261 (tag!1159 (h!10400 rules!3103))) (inv!6265 (transformation!897 (h!10400 rules!3103))) e!318276))))

(declare-fun b!529023 () Bool)

(declare-fun res!223425 () Bool)

(assert (=> b!529023 (=> (not res!223425) (not e!318281))))

(declare-fun isEmpty!3621 (List!5008) Bool)

(assert (=> b!529023 (= res!223425 (not (isEmpty!3621 input!2705)))))

(assert (= (and start!48488 res!223424) b!529011))

(assert (= (and b!529011 res!223426) b!529018))

(assert (= (and b!529018 res!223427) b!529023))

(assert (= (and b!529023 res!223425) b!529017))

(assert (= (and b!529017 res!223423) b!529015))

(assert (= (and start!48488 ((_ is Cons!4998) suffix!1342)) b!529016))

(assert (= b!529022 b!529020))

(assert (= b!529012 b!529022))

(assert (= (and start!48488 ((_ is Cons!4999) rules!3103)) b!529012))

(assert (= b!529019 b!529021))

(assert (= b!529013 b!529019))

(assert (= start!48488 b!529013))

(assert (= (and start!48488 ((_ is Cons!4998) input!2705)) b!529014))

(declare-fun m!774677 () Bool)

(assert (=> b!529019 m!774677))

(declare-fun m!774679 () Bool)

(assert (=> b!529019 m!774679))

(declare-fun m!774681 () Bool)

(assert (=> b!529017 m!774681))

(assert (=> b!529017 m!774681))

(declare-fun m!774683 () Bool)

(assert (=> b!529017 m!774683))

(declare-fun m!774685 () Bool)

(assert (=> b!529022 m!774685))

(declare-fun m!774687 () Bool)

(assert (=> b!529022 m!774687))

(declare-fun m!774689 () Bool)

(assert (=> b!529013 m!774689))

(declare-fun m!774691 () Bool)

(assert (=> b!529011 m!774691))

(declare-fun m!774693 () Bool)

(assert (=> b!529015 m!774693))

(declare-fun m!774695 () Bool)

(assert (=> b!529015 m!774695))

(declare-fun m!774697 () Bool)

(assert (=> start!48488 m!774697))

(declare-fun m!774699 () Bool)

(assert (=> b!529023 m!774699))

(declare-fun m!774701 () Bool)

(assert (=> b!529018 m!774701))

(check-sat tp_is_empty!2817 (not b!529022) (not b!529023) (not b!529013) b_and!51607 (not b!529018) (not b_next!14127) (not b!529011) (not b_next!14121) b_and!51609 (not b!529019) (not b_next!14123) (not b_next!14125) (not b!529015) (not start!48488) (not b!529017) (not b!529012) b_and!51603 b_and!51605 (not b!529014) (not b!529016))
(check-sat (not b_next!14121) b_and!51609 b_and!51607 (not b_next!14127) (not b_next!14123) (not b_next!14125) b_and!51603 b_and!51605)
(get-model)

(declare-fun d!187970 () Bool)

(assert (=> d!187970 (= (inv!6261 (tag!1159 (rule!1597 token!491))) (= (mod (str.len (value!30405 (tag!1159 (rule!1597 token!491)))) 2) 0))))

(assert (=> b!529019 d!187970))

(declare-fun d!187972 () Bool)

(declare-fun res!223437 () Bool)

(declare-fun e!318294 () Bool)

(assert (=> d!187972 (=> (not res!223437) (not e!318294))))

(declare-fun semiInverseModEq!359 (Int Int) Bool)

(assert (=> d!187972 (= res!223437 (semiInverseModEq!359 (toChars!1595 (transformation!897 (rule!1597 token!491))) (toValue!1736 (transformation!897 (rule!1597 token!491)))))))

(assert (=> d!187972 (= (inv!6265 (transformation!897 (rule!1597 token!491))) e!318294)))

(declare-fun b!529041 () Bool)

(declare-fun equivClasses!342 (Int Int) Bool)

(assert (=> b!529041 (= e!318294 (equivClasses!342 (toChars!1595 (transformation!897 (rule!1597 token!491))) (toValue!1736 (transformation!897 (rule!1597 token!491)))))))

(assert (= (and d!187972 res!223437) b!529041))

(declare-fun m!774709 () Bool)

(assert (=> d!187972 m!774709))

(declare-fun m!774711 () Bool)

(assert (=> b!529041 m!774711))

(assert (=> b!529019 d!187972))

(declare-fun d!187978 () Bool)

(assert (=> d!187978 true))

(declare-fun lt!218321 () Bool)

(declare-fun lambda!15357 () Int)

(declare-fun forall!1504 (List!5009 Int) Bool)

(assert (=> d!187978 (= lt!218321 (forall!1504 rules!3103 lambda!15357))))

(declare-fun e!318345 () Bool)

(assert (=> d!187978 (= lt!218321 e!318345)))

(declare-fun res!223468 () Bool)

(assert (=> d!187978 (=> res!223468 e!318345)))

(assert (=> d!187978 (= res!223468 (not ((_ is Cons!4999) rules!3103)))))

(assert (=> d!187978 (= (rulesValidInductive!300 thiss!22590 rules!3103) lt!218321)))

(declare-fun b!529120 () Bool)

(declare-fun e!318346 () Bool)

(assert (=> b!529120 (= e!318345 e!318346)))

(declare-fun res!223467 () Bool)

(assert (=> b!529120 (=> (not res!223467) (not e!318346))))

(declare-fun ruleValid!141 (LexerInterface!783 Rule!1594) Bool)

(assert (=> b!529120 (= res!223467 (ruleValid!141 thiss!22590 (h!10400 rules!3103)))))

(declare-fun b!529121 () Bool)

(assert (=> b!529121 (= e!318346 (rulesValidInductive!300 thiss!22590 (t!73630 rules!3103)))))

(assert (= (and d!187978 (not res!223468)) b!529120))

(assert (= (and b!529120 res!223467) b!529121))

(declare-fun m!774765 () Bool)

(assert (=> d!187978 m!774765))

(declare-fun m!774767 () Bool)

(assert (=> b!529120 m!774767))

(declare-fun m!774769 () Bool)

(assert (=> b!529121 m!774769))

(assert (=> b!529015 d!187978))

(declare-fun e!318352 () Bool)

(declare-fun lt!218324 () List!5008)

(declare-fun b!529135 () Bool)

(assert (=> b!529135 (= e!318352 (or (not (= suffix!1342 Nil!4998)) (= lt!218324 input!2705)))))

(declare-fun b!529134 () Bool)

(declare-fun res!223473 () Bool)

(assert (=> b!529134 (=> (not res!223473) (not e!318352))))

(declare-fun size!4077 (List!5008) Int)

(assert (=> b!529134 (= res!223473 (= (size!4077 lt!218324) (+ (size!4077 input!2705) (size!4077 suffix!1342))))))

(declare-fun b!529133 () Bool)

(declare-fun e!318351 () List!5008)

(assert (=> b!529133 (= e!318351 (Cons!4998 (h!10399 input!2705) (++!1385 (t!73629 input!2705) suffix!1342)))))

(declare-fun d!188000 () Bool)

(assert (=> d!188000 e!318352))

(declare-fun res!223474 () Bool)

(assert (=> d!188000 (=> (not res!223474) (not e!318352))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!892 (List!5008) (InoxSet C!3384))

(assert (=> d!188000 (= res!223474 (= (content!892 lt!218324) ((_ map or) (content!892 input!2705) (content!892 suffix!1342))))))

(assert (=> d!188000 (= lt!218324 e!318351)))

(declare-fun c!101227 () Bool)

(assert (=> d!188000 (= c!101227 ((_ is Nil!4998) input!2705))))

(assert (=> d!188000 (= (++!1385 input!2705 suffix!1342) lt!218324)))

(declare-fun b!529132 () Bool)

(assert (=> b!529132 (= e!318351 suffix!1342)))

(assert (= (and d!188000 c!101227) b!529132))

(assert (= (and d!188000 (not c!101227)) b!529133))

(assert (= (and d!188000 res!223474) b!529134))

(assert (= (and b!529134 res!223473) b!529135))

(declare-fun m!774771 () Bool)

(assert (=> b!529134 m!774771))

(declare-fun m!774773 () Bool)

(assert (=> b!529134 m!774773))

(declare-fun m!774775 () Bool)

(assert (=> b!529134 m!774775))

(declare-fun m!774777 () Bool)

(assert (=> b!529133 m!774777))

(declare-fun m!774779 () Bool)

(assert (=> d!188000 m!774779))

(declare-fun m!774781 () Bool)

(assert (=> d!188000 m!774781))

(declare-fun m!774783 () Bool)

(assert (=> d!188000 m!774783))

(assert (=> b!529015 d!188000))

(declare-fun d!188002 () Bool)

(declare-fun res!223479 () Bool)

(declare-fun e!318355 () Bool)

(assert (=> d!188002 (=> (not res!223479) (not e!318355))))

(assert (=> d!188002 (= res!223479 (not (isEmpty!3621 (originalCharacters!936 token!491))))))

(assert (=> d!188002 (= (inv!6264 token!491) e!318355)))

(declare-fun b!529140 () Bool)

(declare-fun res!223480 () Bool)

(assert (=> b!529140 (=> (not res!223480) (not e!318355))))

(declare-fun dynLambda!3043 (Int TokenValue!921) BalanceConc!3236)

(assert (=> b!529140 (= res!223480 (= (originalCharacters!936 token!491) (list!2077 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))))))

(declare-fun b!529141 () Bool)

(assert (=> b!529141 (= e!318355 (= (size!4075 token!491) (size!4077 (originalCharacters!936 token!491))))))

(assert (= (and d!188002 res!223479) b!529140))

(assert (= (and b!529140 res!223480) b!529141))

(declare-fun b_lambda!20479 () Bool)

(assert (=> (not b_lambda!20479) (not b!529140)))

(declare-fun t!73638 () Bool)

(declare-fun tb!47201 () Bool)

(assert (=> (and b!529021 (= (toChars!1595 (transformation!897 (rule!1597 token!491))) (toChars!1595 (transformation!897 (rule!1597 token!491)))) t!73638) tb!47201))

(declare-fun b!529146 () Bool)

(declare-fun e!318358 () Bool)

(declare-fun tp!168319 () Bool)

(declare-fun inv!6268 (Conc!1614) Bool)

(assert (=> b!529146 (= e!318358 (and (inv!6268 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))) tp!168319))))

(declare-fun result!52556 () Bool)

(declare-fun inv!6269 (BalanceConc!3236) Bool)

(assert (=> tb!47201 (= result!52556 (and (inv!6269 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))) e!318358))))

(assert (= tb!47201 b!529146))

(declare-fun m!774785 () Bool)

(assert (=> b!529146 m!774785))

(declare-fun m!774787 () Bool)

(assert (=> tb!47201 m!774787))

(assert (=> b!529140 t!73638))

(declare-fun b_and!51623 () Bool)

(assert (= b_and!51605 (and (=> t!73638 result!52556) b_and!51623)))

(declare-fun tb!47203 () Bool)

(declare-fun t!73640 () Bool)

(assert (=> (and b!529020 (= (toChars!1595 (transformation!897 (h!10400 rules!3103))) (toChars!1595 (transformation!897 (rule!1597 token!491)))) t!73640) tb!47203))

(declare-fun result!52560 () Bool)

(assert (= result!52560 result!52556))

(assert (=> b!529140 t!73640))

(declare-fun b_and!51625 () Bool)

(assert (= b_and!51609 (and (=> t!73640 result!52560) b_and!51625)))

(declare-fun m!774789 () Bool)

(assert (=> d!188002 m!774789))

(declare-fun m!774791 () Bool)

(assert (=> b!529140 m!774791))

(assert (=> b!529140 m!774791))

(declare-fun m!774793 () Bool)

(assert (=> b!529140 m!774793))

(declare-fun m!774795 () Bool)

(assert (=> b!529141 m!774795))

(assert (=> start!48488 d!188002))

(declare-fun d!188004 () Bool)

(assert (=> d!188004 (= (isEmpty!3620 rules!3103) ((_ is Nil!4999) rules!3103))))

(assert (=> b!529011 d!188004))

(declare-fun d!188006 () Bool)

(declare-fun list!2079 (Conc!1614) List!5008)

(assert (=> d!188006 (= (list!2077 (charsOf!526 token!491)) (list!2079 (c!101215 (charsOf!526 token!491))))))

(declare-fun bs!67065 () Bool)

(assert (= bs!67065 d!188006))

(declare-fun m!774797 () Bool)

(assert (=> bs!67065 m!774797))

(assert (=> b!529017 d!188006))

(declare-fun d!188008 () Bool)

(declare-fun lt!218327 () BalanceConc!3236)

(assert (=> d!188008 (= (list!2077 lt!218327) (originalCharacters!936 token!491))))

(assert (=> d!188008 (= lt!218327 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))))

(assert (=> d!188008 (= (charsOf!526 token!491) lt!218327)))

(declare-fun b_lambda!20481 () Bool)

(assert (=> (not b_lambda!20481) (not d!188008)))

(assert (=> d!188008 t!73638))

(declare-fun b_and!51627 () Bool)

(assert (= b_and!51623 (and (=> t!73638 result!52556) b_and!51627)))

(assert (=> d!188008 t!73640))

(declare-fun b_and!51629 () Bool)

(assert (= b_and!51625 (and (=> t!73640 result!52560) b_and!51629)))

(declare-fun m!774799 () Bool)

(assert (=> d!188008 m!774799))

(assert (=> d!188008 m!774791))

(assert (=> b!529017 d!188008))

(declare-fun d!188010 () Bool)

(assert (=> d!188010 (= (inv!6261 (tag!1159 (h!10400 rules!3103))) (= (mod (str.len (value!30405 (tag!1159 (h!10400 rules!3103)))) 2) 0))))

(assert (=> b!529022 d!188010))

(declare-fun d!188012 () Bool)

(declare-fun res!223481 () Bool)

(declare-fun e!318359 () Bool)

(assert (=> d!188012 (=> (not res!223481) (not e!318359))))

(assert (=> d!188012 (= res!223481 (semiInverseModEq!359 (toChars!1595 (transformation!897 (h!10400 rules!3103))) (toValue!1736 (transformation!897 (h!10400 rules!3103)))))))

(assert (=> d!188012 (= (inv!6265 (transformation!897 (h!10400 rules!3103))) e!318359)))

(declare-fun b!529147 () Bool)

(assert (=> b!529147 (= e!318359 (equivClasses!342 (toChars!1595 (transformation!897 (h!10400 rules!3103))) (toValue!1736 (transformation!897 (h!10400 rules!3103)))))))

(assert (= (and d!188012 res!223481) b!529147))

(declare-fun m!774801 () Bool)

(assert (=> d!188012 m!774801))

(declare-fun m!774803 () Bool)

(assert (=> b!529147 m!774803))

(assert (=> b!529022 d!188012))

(declare-fun d!188014 () Bool)

(assert (=> d!188014 (= (isEmpty!3621 input!2705) ((_ is Nil!4998) input!2705))))

(assert (=> b!529023 d!188014))

(declare-fun b!529158 () Bool)

(declare-fun e!318366 () Bool)

(declare-fun inv!17 (TokenValue!921) Bool)

(assert (=> b!529158 (= e!318366 (inv!17 (value!30431 token!491)))))

(declare-fun b!529159 () Bool)

(declare-fun e!318368 () Bool)

(declare-fun inv!15 (TokenValue!921) Bool)

(assert (=> b!529159 (= e!318368 (inv!15 (value!30431 token!491)))))

(declare-fun d!188016 () Bool)

(declare-fun c!101233 () Bool)

(assert (=> d!188016 (= c!101233 ((_ is IntegerValue!2763) (value!30431 token!491)))))

(declare-fun e!318367 () Bool)

(assert (=> d!188016 (= (inv!21 (value!30431 token!491)) e!318367)))

(declare-fun b!529160 () Bool)

(assert (=> b!529160 (= e!318367 e!318366)))

(declare-fun c!101232 () Bool)

(assert (=> b!529160 (= c!101232 ((_ is IntegerValue!2764) (value!30431 token!491)))))

(declare-fun b!529161 () Bool)

(declare-fun inv!16 (TokenValue!921) Bool)

(assert (=> b!529161 (= e!318367 (inv!16 (value!30431 token!491)))))

(declare-fun b!529162 () Bool)

(declare-fun res!223484 () Bool)

(assert (=> b!529162 (=> res!223484 e!318368)))

(assert (=> b!529162 (= res!223484 (not ((_ is IntegerValue!2765) (value!30431 token!491))))))

(assert (=> b!529162 (= e!318366 e!318368)))

(assert (= (and d!188016 c!101233) b!529161))

(assert (= (and d!188016 (not c!101233)) b!529160))

(assert (= (and b!529160 c!101232) b!529158))

(assert (= (and b!529160 (not c!101232)) b!529162))

(assert (= (and b!529162 (not res!223484)) b!529159))

(declare-fun m!774805 () Bool)

(assert (=> b!529158 m!774805))

(declare-fun m!774807 () Bool)

(assert (=> b!529159 m!774807))

(declare-fun m!774809 () Bool)

(assert (=> b!529161 m!774809))

(assert (=> b!529013 d!188016))

(declare-fun d!188018 () Bool)

(declare-fun res!223487 () Bool)

(declare-fun e!318371 () Bool)

(assert (=> d!188018 (=> (not res!223487) (not e!318371))))

(declare-fun rulesValid!324 (LexerInterface!783 List!5009) Bool)

(assert (=> d!188018 (= res!223487 (rulesValid!324 thiss!22590 rules!3103))))

(assert (=> d!188018 (= (rulesInvariant!746 thiss!22590 rules!3103) e!318371)))

(declare-fun b!529165 () Bool)

(declare-datatypes ((List!5011 0))(
  ( (Nil!5001) (Cons!5001 (h!10402 String!6348) (t!73644 List!5011)) )
))
(declare-fun noDuplicateTag!324 (LexerInterface!783 List!5009 List!5011) Bool)

(assert (=> b!529165 (= e!318371 (noDuplicateTag!324 thiss!22590 rules!3103 Nil!5001))))

(assert (= (and d!188018 res!223487) b!529165))

(declare-fun m!774811 () Bool)

(assert (=> d!188018 m!774811))

(declare-fun m!774813 () Bool)

(assert (=> b!529165 m!774813))

(assert (=> b!529018 d!188018))

(declare-fun b!529176 () Bool)

(declare-fun e!318374 () Bool)

(assert (=> b!529176 (= e!318374 tp_is_empty!2817)))

(declare-fun b!529178 () Bool)

(declare-fun tp!168330 () Bool)

(assert (=> b!529178 (= e!318374 tp!168330)))

(declare-fun b!529177 () Bool)

(declare-fun tp!168332 () Bool)

(declare-fun tp!168334 () Bool)

(assert (=> b!529177 (= e!318374 (and tp!168332 tp!168334))))

(assert (=> b!529019 (= tp!168269 e!318374)))

(declare-fun b!529179 () Bool)

(declare-fun tp!168331 () Bool)

(declare-fun tp!168333 () Bool)

(assert (=> b!529179 (= e!318374 (and tp!168331 tp!168333))))

(assert (= (and b!529019 ((_ is ElementMatch!1231) (regex!897 (rule!1597 token!491)))) b!529176))

(assert (= (and b!529019 ((_ is Concat!2152) (regex!897 (rule!1597 token!491)))) b!529177))

(assert (= (and b!529019 ((_ is Star!1231) (regex!897 (rule!1597 token!491)))) b!529178))

(assert (= (and b!529019 ((_ is Union!1231) (regex!897 (rule!1597 token!491)))) b!529179))

(declare-fun b!529184 () Bool)

(declare-fun e!318377 () Bool)

(declare-fun tp!168337 () Bool)

(assert (=> b!529184 (= e!318377 (and tp_is_empty!2817 tp!168337))))

(assert (=> b!529014 (= tp!168270 e!318377)))

(assert (= (and b!529014 ((_ is Cons!4998) (t!73629 input!2705))) b!529184))

(declare-fun b!529185 () Bool)

(declare-fun e!318378 () Bool)

(declare-fun tp!168338 () Bool)

(assert (=> b!529185 (= e!318378 (and tp_is_empty!2817 tp!168338))))

(assert (=> b!529016 (= tp!168268 e!318378)))

(assert (= (and b!529016 ((_ is Cons!4998) (t!73629 suffix!1342))) b!529185))

(declare-fun b!529186 () Bool)

(declare-fun e!318379 () Bool)

(assert (=> b!529186 (= e!318379 tp_is_empty!2817)))

(declare-fun b!529188 () Bool)

(declare-fun tp!168339 () Bool)

(assert (=> b!529188 (= e!318379 tp!168339)))

(declare-fun b!529187 () Bool)

(declare-fun tp!168341 () Bool)

(declare-fun tp!168343 () Bool)

(assert (=> b!529187 (= e!318379 (and tp!168341 tp!168343))))

(assert (=> b!529022 (= tp!168272 e!318379)))

(declare-fun b!529189 () Bool)

(declare-fun tp!168340 () Bool)

(declare-fun tp!168342 () Bool)

(assert (=> b!529189 (= e!318379 (and tp!168340 tp!168342))))

(assert (= (and b!529022 ((_ is ElementMatch!1231) (regex!897 (h!10400 rules!3103)))) b!529186))

(assert (= (and b!529022 ((_ is Concat!2152) (regex!897 (h!10400 rules!3103)))) b!529187))

(assert (= (and b!529022 ((_ is Star!1231) (regex!897 (h!10400 rules!3103)))) b!529188))

(assert (= (and b!529022 ((_ is Union!1231) (regex!897 (h!10400 rules!3103)))) b!529189))

(declare-fun b!529200 () Bool)

(declare-fun b_free!14117 () Bool)

(declare-fun b_next!14133 () Bool)

(assert (=> b!529200 (= b_free!14117 (not b_next!14133))))

(declare-fun tp!168352 () Bool)

(declare-fun b_and!51631 () Bool)

(assert (=> b!529200 (= tp!168352 b_and!51631)))

(declare-fun b_free!14119 () Bool)

(declare-fun b_next!14135 () Bool)

(assert (=> b!529200 (= b_free!14119 (not b_next!14135))))

(declare-fun tb!47205 () Bool)

(declare-fun t!73643 () Bool)

(assert (=> (and b!529200 (= (toChars!1595 (transformation!897 (h!10400 (t!73630 rules!3103)))) (toChars!1595 (transformation!897 (rule!1597 token!491)))) t!73643) tb!47205))

(declare-fun result!52568 () Bool)

(assert (= result!52568 result!52556))

(assert (=> b!529140 t!73643))

(assert (=> d!188008 t!73643))

(declare-fun tp!168354 () Bool)

(declare-fun b_and!51633 () Bool)

(assert (=> b!529200 (= tp!168354 (and (=> t!73643 result!52568) b_and!51633))))

(declare-fun e!318391 () Bool)

(assert (=> b!529200 (= e!318391 (and tp!168352 tp!168354))))

(declare-fun b!529199 () Bool)

(declare-fun tp!168353 () Bool)

(declare-fun e!318389 () Bool)

(assert (=> b!529199 (= e!318389 (and tp!168353 (inv!6261 (tag!1159 (h!10400 (t!73630 rules!3103)))) (inv!6265 (transformation!897 (h!10400 (t!73630 rules!3103)))) e!318391))))

(declare-fun b!529198 () Bool)

(declare-fun e!318390 () Bool)

(declare-fun tp!168355 () Bool)

(assert (=> b!529198 (= e!318390 (and e!318389 tp!168355))))

(assert (=> b!529012 (= tp!168267 e!318390)))

(assert (= b!529199 b!529200))

(assert (= b!529198 b!529199))

(assert (= (and b!529012 ((_ is Cons!4999) (t!73630 rules!3103))) b!529198))

(declare-fun m!774815 () Bool)

(assert (=> b!529199 m!774815))

(declare-fun m!774817 () Bool)

(assert (=> b!529199 m!774817))

(declare-fun b!529201 () Bool)

(declare-fun e!318392 () Bool)

(declare-fun tp!168356 () Bool)

(assert (=> b!529201 (= e!318392 (and tp_is_empty!2817 tp!168356))))

(assert (=> b!529013 (= tp!168271 e!318392)))

(assert (= (and b!529013 ((_ is Cons!4998) (originalCharacters!936 token!491))) b!529201))

(declare-fun b_lambda!20483 () Bool)

(assert (= b_lambda!20479 (or (and b!529021 b_free!14107) (and b!529020 b_free!14111 (= (toChars!1595 (transformation!897 (h!10400 rules!3103))) (toChars!1595 (transformation!897 (rule!1597 token!491))))) (and b!529200 b_free!14119 (= (toChars!1595 (transformation!897 (h!10400 (t!73630 rules!3103)))) (toChars!1595 (transformation!897 (rule!1597 token!491))))) b_lambda!20483)))

(declare-fun b_lambda!20485 () Bool)

(assert (= b_lambda!20481 (or (and b!529021 b_free!14107) (and b!529020 b_free!14111 (= (toChars!1595 (transformation!897 (h!10400 rules!3103))) (toChars!1595 (transformation!897 (rule!1597 token!491))))) (and b!529200 b_free!14119 (= (toChars!1595 (transformation!897 (h!10400 (t!73630 rules!3103)))) (toChars!1595 (transformation!897 (rule!1597 token!491))))) b_lambda!20485)))

(check-sat (not d!188012) (not d!187972) (not b!529041) (not b!529140) (not b!529201) (not b!529133) (not b!529179) (not b!529161) (not b_lambda!20483) (not d!188008) (not b!529185) (not b!529134) (not b!529198) tp_is_empty!2817 (not b_next!14121) b_and!51627 (not d!187978) (not b!529146) (not b!529188) (not b!529147) (not d!188002) b_and!51629 (not b!529189) (not b!529121) (not b!529158) (not b!529159) (not b_next!14135) (not tb!47201) (not d!188000) (not b!529141) (not b_next!14123) (not b_next!14125) (not d!188018) (not b_lambda!20485) b_and!51603 (not b!529199) (not b!529165) b_and!51631 (not b!529120) (not b_next!14133) b_and!51607 (not b!529178) (not d!188006) (not b_next!14127) (not b!529184) (not b!529177) b_and!51633 (not b!529187))
(check-sat b_and!51629 (not b_next!14135) b_and!51603 b_and!51607 (not b_next!14127) b_and!51633 (not b_next!14121) b_and!51627 (not b_next!14123) (not b_next!14125) b_and!51631 (not b_next!14133))
(get-model)

(declare-fun d!188020 () Bool)

(assert (=> d!188020 (= (list!2077 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))) (list!2079 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))))))

(declare-fun bs!67066 () Bool)

(assert (= bs!67066 d!188020))

(declare-fun m!774819 () Bool)

(assert (=> bs!67066 m!774819))

(assert (=> b!529140 d!188020))

(declare-fun d!188022 () Bool)

(assert (=> d!188022 true))

(declare-fun order!4397 () Int)

(declare-fun lambda!15360 () Int)

(declare-fun order!4395 () Int)

(declare-fun dynLambda!3044 (Int Int) Int)

(declare-fun dynLambda!3045 (Int Int) Int)

(assert (=> d!188022 (< (dynLambda!3044 order!4395 (toChars!1595 (transformation!897 (h!10400 rules!3103)))) (dynLambda!3045 order!4397 lambda!15360))))

(assert (=> d!188022 true))

(declare-fun order!4399 () Int)

(declare-fun dynLambda!3046 (Int Int) Int)

(assert (=> d!188022 (< (dynLambda!3046 order!4399 (toValue!1736 (transformation!897 (h!10400 rules!3103)))) (dynLambda!3045 order!4397 lambda!15360))))

(declare-fun Forall!273 (Int) Bool)

(assert (=> d!188022 (= (semiInverseModEq!359 (toChars!1595 (transformation!897 (h!10400 rules!3103))) (toValue!1736 (transformation!897 (h!10400 rules!3103)))) (Forall!273 lambda!15360))))

(declare-fun bs!67067 () Bool)

(assert (= bs!67067 d!188022))

(declare-fun m!774821 () Bool)

(assert (=> bs!67067 m!774821))

(assert (=> d!188012 d!188022))

(declare-fun d!188024 () Bool)

(declare-fun lt!218330 () Int)

(assert (=> d!188024 (>= lt!218330 0)))

(declare-fun e!318395 () Int)

(assert (=> d!188024 (= lt!218330 e!318395)))

(declare-fun c!101236 () Bool)

(assert (=> d!188024 (= c!101236 ((_ is Nil!4998) (originalCharacters!936 token!491)))))

(assert (=> d!188024 (= (size!4077 (originalCharacters!936 token!491)) lt!218330)))

(declare-fun b!529210 () Bool)

(assert (=> b!529210 (= e!318395 0)))

(declare-fun b!529211 () Bool)

(assert (=> b!529211 (= e!318395 (+ 1 (size!4077 (t!73629 (originalCharacters!936 token!491)))))))

(assert (= (and d!188024 c!101236) b!529210))

(assert (= (and d!188024 (not c!101236)) b!529211))

(declare-fun m!774823 () Bool)

(assert (=> b!529211 m!774823))

(assert (=> b!529141 d!188024))

(declare-fun d!188026 () Bool)

(declare-fun res!223495 () Bool)

(declare-fun e!318400 () Bool)

(assert (=> d!188026 (=> res!223495 e!318400)))

(assert (=> d!188026 (= res!223495 ((_ is Nil!4999) rules!3103))))

(assert (=> d!188026 (= (forall!1504 rules!3103 lambda!15357) e!318400)))

(declare-fun b!529216 () Bool)

(declare-fun e!318401 () Bool)

(assert (=> b!529216 (= e!318400 e!318401)))

(declare-fun res!223496 () Bool)

(assert (=> b!529216 (=> (not res!223496) (not e!318401))))

(declare-fun dynLambda!3047 (Int Rule!1594) Bool)

(assert (=> b!529216 (= res!223496 (dynLambda!3047 lambda!15357 (h!10400 rules!3103)))))

(declare-fun b!529217 () Bool)

(assert (=> b!529217 (= e!318401 (forall!1504 (t!73630 rules!3103) lambda!15357))))

(assert (= (and d!188026 (not res!223495)) b!529216))

(assert (= (and b!529216 res!223496) b!529217))

(declare-fun b_lambda!20487 () Bool)

(assert (=> (not b_lambda!20487) (not b!529216)))

(declare-fun m!774825 () Bool)

(assert (=> b!529216 m!774825))

(declare-fun m!774827 () Bool)

(assert (=> b!529217 m!774827))

(assert (=> d!187978 d!188026))

(declare-fun d!188028 () Bool)

(assert (=> d!188028 (= (isEmpty!3621 (originalCharacters!936 token!491)) ((_ is Nil!4998) (originalCharacters!936 token!491)))))

(assert (=> d!188002 d!188028))

(declare-fun d!188030 () Bool)

(declare-fun c!101239 () Bool)

(assert (=> d!188030 (= c!101239 ((_ is Node!1614) (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))))))

(declare-fun e!318406 () Bool)

(assert (=> d!188030 (= (inv!6268 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))) e!318406)))

(declare-fun b!529224 () Bool)

(declare-fun inv!6270 (Conc!1614) Bool)

(assert (=> b!529224 (= e!318406 (inv!6270 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))))))

(declare-fun b!529225 () Bool)

(declare-fun e!318407 () Bool)

(assert (=> b!529225 (= e!318406 e!318407)))

(declare-fun res!223499 () Bool)

(assert (=> b!529225 (= res!223499 (not ((_ is Leaf!2570) (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))))))))

(assert (=> b!529225 (=> res!223499 e!318407)))

(declare-fun b!529226 () Bool)

(declare-fun inv!6271 (Conc!1614) Bool)

(assert (=> b!529226 (= e!318407 (inv!6271 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))))))

(assert (= (and d!188030 c!101239) b!529224))

(assert (= (and d!188030 (not c!101239)) b!529225))

(assert (= (and b!529225 (not res!223499)) b!529226))

(declare-fun m!774829 () Bool)

(assert (=> b!529224 m!774829))

(declare-fun m!774831 () Bool)

(assert (=> b!529226 m!774831))

(assert (=> b!529146 d!188030))

(declare-fun d!188032 () Bool)

(declare-fun c!101242 () Bool)

(assert (=> d!188032 (= c!101242 ((_ is Nil!4998) lt!218324))))

(declare-fun e!318410 () (InoxSet C!3384))

(assert (=> d!188032 (= (content!892 lt!218324) e!318410)))

(declare-fun b!529231 () Bool)

(assert (=> b!529231 (= e!318410 ((as const (Array C!3384 Bool)) false))))

(declare-fun b!529232 () Bool)

(assert (=> b!529232 (= e!318410 ((_ map or) (store ((as const (Array C!3384 Bool)) false) (h!10399 lt!218324) true) (content!892 (t!73629 lt!218324))))))

(assert (= (and d!188032 c!101242) b!529231))

(assert (= (and d!188032 (not c!101242)) b!529232))

(declare-fun m!774833 () Bool)

(assert (=> b!529232 m!774833))

(declare-fun m!774835 () Bool)

(assert (=> b!529232 m!774835))

(assert (=> d!188000 d!188032))

(declare-fun d!188034 () Bool)

(declare-fun c!101243 () Bool)

(assert (=> d!188034 (= c!101243 ((_ is Nil!4998) input!2705))))

(declare-fun e!318411 () (InoxSet C!3384))

(assert (=> d!188034 (= (content!892 input!2705) e!318411)))

(declare-fun b!529233 () Bool)

(assert (=> b!529233 (= e!318411 ((as const (Array C!3384 Bool)) false))))

(declare-fun b!529234 () Bool)

(assert (=> b!529234 (= e!318411 ((_ map or) (store ((as const (Array C!3384 Bool)) false) (h!10399 input!2705) true) (content!892 (t!73629 input!2705))))))

(assert (= (and d!188034 c!101243) b!529233))

(assert (= (and d!188034 (not c!101243)) b!529234))

(declare-fun m!774837 () Bool)

(assert (=> b!529234 m!774837))

(declare-fun m!774839 () Bool)

(assert (=> b!529234 m!774839))

(assert (=> d!188000 d!188034))

(declare-fun d!188036 () Bool)

(declare-fun c!101244 () Bool)

(assert (=> d!188036 (= c!101244 ((_ is Nil!4998) suffix!1342))))

(declare-fun e!318412 () (InoxSet C!3384))

(assert (=> d!188036 (= (content!892 suffix!1342) e!318412)))

(declare-fun b!529235 () Bool)

(assert (=> b!529235 (= e!318412 ((as const (Array C!3384 Bool)) false))))

(declare-fun b!529236 () Bool)

(assert (=> b!529236 (= e!318412 ((_ map or) (store ((as const (Array C!3384 Bool)) false) (h!10399 suffix!1342) true) (content!892 (t!73629 suffix!1342))))))

(assert (= (and d!188036 c!101244) b!529235))

(assert (= (and d!188036 (not c!101244)) b!529236))

(declare-fun m!774841 () Bool)

(assert (=> b!529236 m!774841))

(declare-fun m!774843 () Bool)

(assert (=> b!529236 m!774843))

(assert (=> d!188000 d!188036))

(declare-fun d!188038 () Bool)

(declare-fun res!223504 () Bool)

(declare-fun e!318415 () Bool)

(assert (=> d!188038 (=> (not res!223504) (not e!318415))))

(declare-fun validRegex!423 (Regex!1231) Bool)

(assert (=> d!188038 (= res!223504 (validRegex!423 (regex!897 (h!10400 rules!3103))))))

(assert (=> d!188038 (= (ruleValid!141 thiss!22590 (h!10400 rules!3103)) e!318415)))

(declare-fun b!529241 () Bool)

(declare-fun res!223505 () Bool)

(assert (=> b!529241 (=> (not res!223505) (not e!318415))))

(declare-fun nullable!328 (Regex!1231) Bool)

(assert (=> b!529241 (= res!223505 (not (nullable!328 (regex!897 (h!10400 rules!3103)))))))

(declare-fun b!529242 () Bool)

(assert (=> b!529242 (= e!318415 (not (= (tag!1159 (h!10400 rules!3103)) (String!6349 ""))))))

(assert (= (and d!188038 res!223504) b!529241))

(assert (= (and b!529241 res!223505) b!529242))

(declare-fun m!774845 () Bool)

(assert (=> d!188038 m!774845))

(declare-fun m!774847 () Bool)

(assert (=> b!529241 m!774847))

(assert (=> b!529120 d!188038))

(declare-fun bs!67068 () Bool)

(declare-fun d!188040 () Bool)

(assert (= bs!67068 (and d!188040 d!187978)))

(declare-fun lambda!15361 () Int)

(assert (=> bs!67068 (= lambda!15361 lambda!15357)))

(assert (=> d!188040 true))

(declare-fun lt!218331 () Bool)

(assert (=> d!188040 (= lt!218331 (forall!1504 (t!73630 rules!3103) lambda!15361))))

(declare-fun e!318416 () Bool)

(assert (=> d!188040 (= lt!218331 e!318416)))

(declare-fun res!223507 () Bool)

(assert (=> d!188040 (=> res!223507 e!318416)))

(assert (=> d!188040 (= res!223507 (not ((_ is Cons!4999) (t!73630 rules!3103))))))

(assert (=> d!188040 (= (rulesValidInductive!300 thiss!22590 (t!73630 rules!3103)) lt!218331)))

(declare-fun b!529243 () Bool)

(declare-fun e!318417 () Bool)

(assert (=> b!529243 (= e!318416 e!318417)))

(declare-fun res!223506 () Bool)

(assert (=> b!529243 (=> (not res!223506) (not e!318417))))

(assert (=> b!529243 (= res!223506 (ruleValid!141 thiss!22590 (h!10400 (t!73630 rules!3103))))))

(declare-fun b!529244 () Bool)

(assert (=> b!529244 (= e!318417 (rulesValidInductive!300 thiss!22590 (t!73630 (t!73630 rules!3103))))))

(assert (= (and d!188040 (not res!223507)) b!529243))

(assert (= (and b!529243 res!223506) b!529244))

(declare-fun m!774849 () Bool)

(assert (=> d!188040 m!774849))

(declare-fun m!774851 () Bool)

(assert (=> b!529243 m!774851))

(declare-fun m!774853 () Bool)

(assert (=> b!529244 m!774853))

(assert (=> b!529121 d!188040))

(declare-fun bs!67069 () Bool)

(declare-fun d!188042 () Bool)

(assert (= bs!67069 (and d!188042 d!187978)))

(declare-fun lambda!15364 () Int)

(assert (=> bs!67069 (= lambda!15364 lambda!15357)))

(declare-fun bs!67070 () Bool)

(assert (= bs!67070 (and d!188042 d!188040)))

(assert (=> bs!67070 (= lambda!15364 lambda!15361)))

(assert (=> d!188042 true))

(declare-fun lt!218334 () Bool)

(assert (=> d!188042 (= lt!218334 (rulesValidInductive!300 thiss!22590 rules!3103))))

(assert (=> d!188042 (= lt!218334 (forall!1504 rules!3103 lambda!15364))))

(assert (=> d!188042 (= (rulesValid!324 thiss!22590 rules!3103) lt!218334)))

(declare-fun bs!67071 () Bool)

(assert (= bs!67071 d!188042))

(assert (=> bs!67071 m!774693))

(declare-fun m!774855 () Bool)

(assert (=> bs!67071 m!774855))

(assert (=> d!188018 d!188042))

(declare-fun d!188044 () Bool)

(assert (=> d!188044 true))

(declare-fun order!4401 () Int)

(declare-fun lambda!15367 () Int)

(declare-fun dynLambda!3048 (Int Int) Int)

(assert (=> d!188044 (< (dynLambda!3046 order!4399 (toValue!1736 (transformation!897 (rule!1597 token!491)))) (dynLambda!3048 order!4401 lambda!15367))))

(declare-fun Forall2!199 (Int) Bool)

(assert (=> d!188044 (= (equivClasses!342 (toChars!1595 (transformation!897 (rule!1597 token!491))) (toValue!1736 (transformation!897 (rule!1597 token!491)))) (Forall2!199 lambda!15367))))

(declare-fun bs!67072 () Bool)

(assert (= bs!67072 d!188044))

(declare-fun m!774857 () Bool)

(assert (=> bs!67072 m!774857))

(assert (=> b!529041 d!188044))

(declare-fun bs!67073 () Bool)

(declare-fun d!188046 () Bool)

(assert (= bs!67073 (and d!188046 d!188022)))

(declare-fun lambda!15368 () Int)

(assert (=> bs!67073 (= (and (= (toChars!1595 (transformation!897 (rule!1597 token!491))) (toChars!1595 (transformation!897 (h!10400 rules!3103)))) (= (toValue!1736 (transformation!897 (rule!1597 token!491))) (toValue!1736 (transformation!897 (h!10400 rules!3103))))) (= lambda!15368 lambda!15360))))

(assert (=> d!188046 true))

(assert (=> d!188046 (< (dynLambda!3044 order!4395 (toChars!1595 (transformation!897 (rule!1597 token!491)))) (dynLambda!3045 order!4397 lambda!15368))))

(assert (=> d!188046 true))

(assert (=> d!188046 (< (dynLambda!3046 order!4399 (toValue!1736 (transformation!897 (rule!1597 token!491)))) (dynLambda!3045 order!4397 lambda!15368))))

(assert (=> d!188046 (= (semiInverseModEq!359 (toChars!1595 (transformation!897 (rule!1597 token!491))) (toValue!1736 (transformation!897 (rule!1597 token!491)))) (Forall!273 lambda!15368))))

(declare-fun bs!67074 () Bool)

(assert (= bs!67074 d!188046))

(declare-fun m!774859 () Bool)

(assert (=> bs!67074 m!774859))

(assert (=> d!187972 d!188046))

(declare-fun d!188050 () Bool)

(assert (=> d!188050 (= (list!2077 lt!218327) (list!2079 (c!101215 lt!218327)))))

(declare-fun bs!67075 () Bool)

(assert (= bs!67075 d!188050))

(declare-fun m!774861 () Bool)

(assert (=> bs!67075 m!774861))

(assert (=> d!188008 d!188050))

(declare-fun b!529263 () Bool)

(declare-fun e!318427 () List!5008)

(declare-fun e!318428 () List!5008)

(assert (=> b!529263 (= e!318427 e!318428)))

(declare-fun c!101251 () Bool)

(assert (=> b!529263 (= c!101251 ((_ is Leaf!2570) (c!101215 (charsOf!526 token!491))))))

(declare-fun b!529265 () Bool)

(assert (=> b!529265 (= e!318428 (++!1385 (list!2079 (left!4235 (c!101215 (charsOf!526 token!491)))) (list!2079 (right!4565 (c!101215 (charsOf!526 token!491))))))))

(declare-fun b!529264 () Bool)

(declare-fun list!2080 (IArray!3229) List!5008)

(assert (=> b!529264 (= e!318428 (list!2080 (xs!4251 (c!101215 (charsOf!526 token!491)))))))

(declare-fun d!188052 () Bool)

(declare-fun c!101250 () Bool)

(assert (=> d!188052 (= c!101250 ((_ is Empty!1614) (c!101215 (charsOf!526 token!491))))))

(assert (=> d!188052 (= (list!2079 (c!101215 (charsOf!526 token!491))) e!318427)))

(declare-fun b!529262 () Bool)

(assert (=> b!529262 (= e!318427 Nil!4998)))

(assert (= (and d!188052 c!101250) b!529262))

(assert (= (and d!188052 (not c!101250)) b!529263))

(assert (= (and b!529263 c!101251) b!529264))

(assert (= (and b!529263 (not c!101251)) b!529265))

(declare-fun m!774879 () Bool)

(assert (=> b!529265 m!774879))

(declare-fun m!774881 () Bool)

(assert (=> b!529265 m!774881))

(assert (=> b!529265 m!774879))

(assert (=> b!529265 m!774881))

(declare-fun m!774883 () Bool)

(assert (=> b!529265 m!774883))

(declare-fun m!774885 () Bool)

(assert (=> b!529264 m!774885))

(assert (=> d!188006 d!188052))

(declare-fun bs!67077 () Bool)

(declare-fun d!188062 () Bool)

(assert (= bs!67077 (and d!188062 d!188044)))

(declare-fun lambda!15369 () Int)

(assert (=> bs!67077 (= (= (toValue!1736 (transformation!897 (h!10400 rules!3103))) (toValue!1736 (transformation!897 (rule!1597 token!491)))) (= lambda!15369 lambda!15367))))

(assert (=> d!188062 true))

(assert (=> d!188062 (< (dynLambda!3046 order!4399 (toValue!1736 (transformation!897 (h!10400 rules!3103)))) (dynLambda!3048 order!4401 lambda!15369))))

(assert (=> d!188062 (= (equivClasses!342 (toChars!1595 (transformation!897 (h!10400 rules!3103))) (toValue!1736 (transformation!897 (h!10400 rules!3103)))) (Forall2!199 lambda!15369))))

(declare-fun bs!67078 () Bool)

(assert (= bs!67078 d!188062))

(declare-fun m!774887 () Bool)

(assert (=> bs!67078 m!774887))

(assert (=> b!529147 d!188062))

(declare-fun d!188064 () Bool)

(declare-fun charsToBigInt!1 (List!5007) Int)

(assert (=> d!188064 (= (inv!17 (value!30431 token!491)) (= (charsToBigInt!1 (text!6895 (value!30431 token!491))) (value!30424 (value!30431 token!491))))))

(declare-fun bs!67079 () Bool)

(assert (= bs!67079 d!188064))

(declare-fun m!774893 () Bool)

(assert (=> bs!67079 m!774893))

(assert (=> b!529158 d!188064))

(declare-fun d!188068 () Bool)

(declare-fun charsToBigInt!0 (List!5007 Int) Int)

(assert (=> d!188068 (= (inv!15 (value!30431 token!491)) (= (charsToBigInt!0 (text!6896 (value!30431 token!491)) 0) (value!30427 (value!30431 token!491))))))

(declare-fun bs!67080 () Bool)

(assert (= bs!67080 d!188068))

(declare-fun m!774899 () Bool)

(assert (=> bs!67080 m!774899))

(assert (=> b!529159 d!188068))

(declare-fun e!318441 () Bool)

(declare-fun b!529285 () Bool)

(declare-fun lt!218341 () List!5008)

(assert (=> b!529285 (= e!318441 (or (not (= suffix!1342 Nil!4998)) (= lt!218341 (t!73629 input!2705))))))

(declare-fun b!529284 () Bool)

(declare-fun res!223520 () Bool)

(assert (=> b!529284 (=> (not res!223520) (not e!318441))))

(assert (=> b!529284 (= res!223520 (= (size!4077 lt!218341) (+ (size!4077 (t!73629 input!2705)) (size!4077 suffix!1342))))))

(declare-fun b!529283 () Bool)

(declare-fun e!318440 () List!5008)

(assert (=> b!529283 (= e!318440 (Cons!4998 (h!10399 (t!73629 input!2705)) (++!1385 (t!73629 (t!73629 input!2705)) suffix!1342)))))

(declare-fun d!188076 () Bool)

(assert (=> d!188076 e!318441))

(declare-fun res!223521 () Bool)

(assert (=> d!188076 (=> (not res!223521) (not e!318441))))

(assert (=> d!188076 (= res!223521 (= (content!892 lt!218341) ((_ map or) (content!892 (t!73629 input!2705)) (content!892 suffix!1342))))))

(assert (=> d!188076 (= lt!218341 e!318440)))

(declare-fun c!101257 () Bool)

(assert (=> d!188076 (= c!101257 ((_ is Nil!4998) (t!73629 input!2705)))))

(assert (=> d!188076 (= (++!1385 (t!73629 input!2705) suffix!1342) lt!218341)))

(declare-fun b!529282 () Bool)

(assert (=> b!529282 (= e!318440 suffix!1342)))

(assert (= (and d!188076 c!101257) b!529282))

(assert (= (and d!188076 (not c!101257)) b!529283))

(assert (= (and d!188076 res!223521) b!529284))

(assert (= (and b!529284 res!223520) b!529285))

(declare-fun m!774901 () Bool)

(assert (=> b!529284 m!774901))

(declare-fun m!774903 () Bool)

(assert (=> b!529284 m!774903))

(assert (=> b!529284 m!774775))

(declare-fun m!774905 () Bool)

(assert (=> b!529283 m!774905))

(declare-fun m!774907 () Bool)

(assert (=> d!188076 m!774907))

(assert (=> d!188076 m!774839))

(assert (=> d!188076 m!774783))

(assert (=> b!529133 d!188076))

(declare-fun d!188078 () Bool)

(declare-fun lt!218342 () Int)

(assert (=> d!188078 (>= lt!218342 0)))

(declare-fun e!318442 () Int)

(assert (=> d!188078 (= lt!218342 e!318442)))

(declare-fun c!101258 () Bool)

(assert (=> d!188078 (= c!101258 ((_ is Nil!4998) lt!218324))))

(assert (=> d!188078 (= (size!4077 lt!218324) lt!218342)))

(declare-fun b!529286 () Bool)

(assert (=> b!529286 (= e!318442 0)))

(declare-fun b!529287 () Bool)

(assert (=> b!529287 (= e!318442 (+ 1 (size!4077 (t!73629 lt!218324))))))

(assert (= (and d!188078 c!101258) b!529286))

(assert (= (and d!188078 (not c!101258)) b!529287))

(declare-fun m!774909 () Bool)

(assert (=> b!529287 m!774909))

(assert (=> b!529134 d!188078))

(declare-fun d!188080 () Bool)

(declare-fun lt!218343 () Int)

(assert (=> d!188080 (>= lt!218343 0)))

(declare-fun e!318443 () Int)

(assert (=> d!188080 (= lt!218343 e!318443)))

(declare-fun c!101259 () Bool)

(assert (=> d!188080 (= c!101259 ((_ is Nil!4998) input!2705))))

(assert (=> d!188080 (= (size!4077 input!2705) lt!218343)))

(declare-fun b!529288 () Bool)

(assert (=> b!529288 (= e!318443 0)))

(declare-fun b!529289 () Bool)

(assert (=> b!529289 (= e!318443 (+ 1 (size!4077 (t!73629 input!2705))))))

(assert (= (and d!188080 c!101259) b!529288))

(assert (= (and d!188080 (not c!101259)) b!529289))

(assert (=> b!529289 m!774903))

(assert (=> b!529134 d!188080))

(declare-fun d!188082 () Bool)

(declare-fun lt!218344 () Int)

(assert (=> d!188082 (>= lt!218344 0)))

(declare-fun e!318444 () Int)

(assert (=> d!188082 (= lt!218344 e!318444)))

(declare-fun c!101260 () Bool)

(assert (=> d!188082 (= c!101260 ((_ is Nil!4998) suffix!1342))))

(assert (=> d!188082 (= (size!4077 suffix!1342) lt!218344)))

(declare-fun b!529290 () Bool)

(assert (=> b!529290 (= e!318444 0)))

(declare-fun b!529291 () Bool)

(assert (=> b!529291 (= e!318444 (+ 1 (size!4077 (t!73629 suffix!1342))))))

(assert (= (and d!188082 c!101260) b!529290))

(assert (= (and d!188082 (not c!101260)) b!529291))

(declare-fun m!774911 () Bool)

(assert (=> b!529291 m!774911))

(assert (=> b!529134 d!188082))

(declare-fun d!188084 () Bool)

(assert (=> d!188084 (= (inv!6261 (tag!1159 (h!10400 (t!73630 rules!3103)))) (= (mod (str.len (value!30405 (tag!1159 (h!10400 (t!73630 rules!3103))))) 2) 0))))

(assert (=> b!529199 d!188084))

(declare-fun d!188086 () Bool)

(declare-fun res!223522 () Bool)

(declare-fun e!318445 () Bool)

(assert (=> d!188086 (=> (not res!223522) (not e!318445))))

(assert (=> d!188086 (= res!223522 (semiInverseModEq!359 (toChars!1595 (transformation!897 (h!10400 (t!73630 rules!3103)))) (toValue!1736 (transformation!897 (h!10400 (t!73630 rules!3103))))))))

(assert (=> d!188086 (= (inv!6265 (transformation!897 (h!10400 (t!73630 rules!3103)))) e!318445)))

(declare-fun b!529292 () Bool)

(assert (=> b!529292 (= e!318445 (equivClasses!342 (toChars!1595 (transformation!897 (h!10400 (t!73630 rules!3103)))) (toValue!1736 (transformation!897 (h!10400 (t!73630 rules!3103))))))))

(assert (= (and d!188086 res!223522) b!529292))

(declare-fun m!774913 () Bool)

(assert (=> d!188086 m!774913))

(declare-fun m!774915 () Bool)

(assert (=> b!529292 m!774915))

(assert (=> b!529199 d!188086))

(declare-fun d!188088 () Bool)

(declare-fun charsToInt!0 (List!5007) (_ BitVec 32))

(assert (=> d!188088 (= (inv!16 (value!30431 token!491)) (= (charsToInt!0 (text!6894 (value!30431 token!491))) (value!30423 (value!30431 token!491))))))

(declare-fun bs!67081 () Bool)

(assert (= bs!67081 d!188088))

(declare-fun m!774917 () Bool)

(assert (=> bs!67081 m!774917))

(assert (=> b!529161 d!188088))

(declare-fun d!188090 () Bool)

(declare-fun isBalanced!500 (Conc!1614) Bool)

(assert (=> d!188090 (= (inv!6269 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))) (isBalanced!500 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))))))

(declare-fun bs!67084 () Bool)

(assert (= bs!67084 d!188090))

(declare-fun m!774927 () Bool)

(assert (=> bs!67084 m!774927))

(assert (=> tb!47201 d!188090))

(declare-fun d!188098 () Bool)

(declare-fun res!223529 () Bool)

(declare-fun e!318452 () Bool)

(assert (=> d!188098 (=> res!223529 e!318452)))

(assert (=> d!188098 (= res!223529 ((_ is Nil!4999) rules!3103))))

(assert (=> d!188098 (= (noDuplicateTag!324 thiss!22590 rules!3103 Nil!5001) e!318452)))

(declare-fun b!529303 () Bool)

(declare-fun e!318453 () Bool)

(assert (=> b!529303 (= e!318452 e!318453)))

(declare-fun res!223530 () Bool)

(assert (=> b!529303 (=> (not res!223530) (not e!318453))))

(declare-fun contains!1176 (List!5011 String!6348) Bool)

(assert (=> b!529303 (= res!223530 (not (contains!1176 Nil!5001 (tag!1159 (h!10400 rules!3103)))))))

(declare-fun b!529304 () Bool)

(assert (=> b!529304 (= e!318453 (noDuplicateTag!324 thiss!22590 (t!73630 rules!3103) (Cons!5001 (tag!1159 (h!10400 rules!3103)) Nil!5001)))))

(assert (= (and d!188098 (not res!223529)) b!529303))

(assert (= (and b!529303 res!223530) b!529304))

(declare-fun m!774929 () Bool)

(assert (=> b!529303 m!774929))

(declare-fun m!774931 () Bool)

(assert (=> b!529304 m!774931))

(assert (=> b!529165 d!188098))

(declare-fun b!529305 () Bool)

(declare-fun e!318454 () Bool)

(declare-fun tp!168357 () Bool)

(assert (=> b!529305 (= e!318454 (and tp_is_empty!2817 tp!168357))))

(assert (=> b!529184 (= tp!168337 e!318454)))

(assert (= (and b!529184 ((_ is Cons!4998) (t!73629 (t!73629 input!2705)))) b!529305))

(declare-fun b!529306 () Bool)

(declare-fun e!318455 () Bool)

(assert (=> b!529306 (= e!318455 tp_is_empty!2817)))

(declare-fun b!529308 () Bool)

(declare-fun tp!168358 () Bool)

(assert (=> b!529308 (= e!318455 tp!168358)))

(declare-fun b!529307 () Bool)

(declare-fun tp!168360 () Bool)

(declare-fun tp!168362 () Bool)

(assert (=> b!529307 (= e!318455 (and tp!168360 tp!168362))))

(assert (=> b!529187 (= tp!168341 e!318455)))

(declare-fun b!529309 () Bool)

(declare-fun tp!168359 () Bool)

(declare-fun tp!168361 () Bool)

(assert (=> b!529309 (= e!318455 (and tp!168359 tp!168361))))

(assert (= (and b!529187 ((_ is ElementMatch!1231) (regOne!2974 (regex!897 (h!10400 rules!3103))))) b!529306))

(assert (= (and b!529187 ((_ is Concat!2152) (regOne!2974 (regex!897 (h!10400 rules!3103))))) b!529307))

(assert (= (and b!529187 ((_ is Star!1231) (regOne!2974 (regex!897 (h!10400 rules!3103))))) b!529308))

(assert (= (and b!529187 ((_ is Union!1231) (regOne!2974 (regex!897 (h!10400 rules!3103))))) b!529309))

(declare-fun b!529310 () Bool)

(declare-fun e!318456 () Bool)

(assert (=> b!529310 (= e!318456 tp_is_empty!2817)))

(declare-fun b!529312 () Bool)

(declare-fun tp!168363 () Bool)

(assert (=> b!529312 (= e!318456 tp!168363)))

(declare-fun b!529311 () Bool)

(declare-fun tp!168365 () Bool)

(declare-fun tp!168367 () Bool)

(assert (=> b!529311 (= e!318456 (and tp!168365 tp!168367))))

(assert (=> b!529187 (= tp!168343 e!318456)))

(declare-fun b!529313 () Bool)

(declare-fun tp!168364 () Bool)

(declare-fun tp!168366 () Bool)

(assert (=> b!529313 (= e!318456 (and tp!168364 tp!168366))))

(assert (= (and b!529187 ((_ is ElementMatch!1231) (regTwo!2974 (regex!897 (h!10400 rules!3103))))) b!529310))

(assert (= (and b!529187 ((_ is Concat!2152) (regTwo!2974 (regex!897 (h!10400 rules!3103))))) b!529311))

(assert (= (and b!529187 ((_ is Star!1231) (regTwo!2974 (regex!897 (h!10400 rules!3103))))) b!529312))

(assert (= (and b!529187 ((_ is Union!1231) (regTwo!2974 (regex!897 (h!10400 rules!3103))))) b!529313))

(declare-fun b!529314 () Bool)

(declare-fun e!318457 () Bool)

(assert (=> b!529314 (= e!318457 tp_is_empty!2817)))

(declare-fun b!529316 () Bool)

(declare-fun tp!168368 () Bool)

(assert (=> b!529316 (= e!318457 tp!168368)))

(declare-fun b!529315 () Bool)

(declare-fun tp!168370 () Bool)

(declare-fun tp!168372 () Bool)

(assert (=> b!529315 (= e!318457 (and tp!168370 tp!168372))))

(assert (=> b!529188 (= tp!168339 e!318457)))

(declare-fun b!529317 () Bool)

(declare-fun tp!168369 () Bool)

(declare-fun tp!168371 () Bool)

(assert (=> b!529317 (= e!318457 (and tp!168369 tp!168371))))

(assert (= (and b!529188 ((_ is ElementMatch!1231) (reg!1560 (regex!897 (h!10400 rules!3103))))) b!529314))

(assert (= (and b!529188 ((_ is Concat!2152) (reg!1560 (regex!897 (h!10400 rules!3103))))) b!529315))

(assert (= (and b!529188 ((_ is Star!1231) (reg!1560 (regex!897 (h!10400 rules!3103))))) b!529316))

(assert (= (and b!529188 ((_ is Union!1231) (reg!1560 (regex!897 (h!10400 rules!3103))))) b!529317))

(declare-fun b!529318 () Bool)

(declare-fun e!318458 () Bool)

(declare-fun tp!168373 () Bool)

(assert (=> b!529318 (= e!318458 (and tp_is_empty!2817 tp!168373))))

(assert (=> b!529201 (= tp!168356 e!318458)))

(assert (= (and b!529201 ((_ is Cons!4998) (t!73629 (originalCharacters!936 token!491)))) b!529318))

(declare-fun b!529319 () Bool)

(declare-fun e!318459 () Bool)

(assert (=> b!529319 (= e!318459 tp_is_empty!2817)))

(declare-fun b!529321 () Bool)

(declare-fun tp!168374 () Bool)

(assert (=> b!529321 (= e!318459 tp!168374)))

(declare-fun b!529320 () Bool)

(declare-fun tp!168376 () Bool)

(declare-fun tp!168378 () Bool)

(assert (=> b!529320 (= e!318459 (and tp!168376 tp!168378))))

(assert (=> b!529189 (= tp!168340 e!318459)))

(declare-fun b!529322 () Bool)

(declare-fun tp!168375 () Bool)

(declare-fun tp!168377 () Bool)

(assert (=> b!529322 (= e!318459 (and tp!168375 tp!168377))))

(assert (= (and b!529189 ((_ is ElementMatch!1231) (regOne!2975 (regex!897 (h!10400 rules!3103))))) b!529319))

(assert (= (and b!529189 ((_ is Concat!2152) (regOne!2975 (regex!897 (h!10400 rules!3103))))) b!529320))

(assert (= (and b!529189 ((_ is Star!1231) (regOne!2975 (regex!897 (h!10400 rules!3103))))) b!529321))

(assert (= (and b!529189 ((_ is Union!1231) (regOne!2975 (regex!897 (h!10400 rules!3103))))) b!529322))

(declare-fun b!529323 () Bool)

(declare-fun e!318460 () Bool)

(assert (=> b!529323 (= e!318460 tp_is_empty!2817)))

(declare-fun b!529325 () Bool)

(declare-fun tp!168379 () Bool)

(assert (=> b!529325 (= e!318460 tp!168379)))

(declare-fun b!529324 () Bool)

(declare-fun tp!168381 () Bool)

(declare-fun tp!168383 () Bool)

(assert (=> b!529324 (= e!318460 (and tp!168381 tp!168383))))

(assert (=> b!529189 (= tp!168342 e!318460)))

(declare-fun b!529326 () Bool)

(declare-fun tp!168380 () Bool)

(declare-fun tp!168382 () Bool)

(assert (=> b!529326 (= e!318460 (and tp!168380 tp!168382))))

(assert (= (and b!529189 ((_ is ElementMatch!1231) (regTwo!2975 (regex!897 (h!10400 rules!3103))))) b!529323))

(assert (= (and b!529189 ((_ is Concat!2152) (regTwo!2975 (regex!897 (h!10400 rules!3103))))) b!529324))

(assert (= (and b!529189 ((_ is Star!1231) (regTwo!2975 (regex!897 (h!10400 rules!3103))))) b!529325))

(assert (= (and b!529189 ((_ is Union!1231) (regTwo!2975 (regex!897 (h!10400 rules!3103))))) b!529326))

(declare-fun b!529327 () Bool)

(declare-fun e!318461 () Bool)

(declare-fun tp!168384 () Bool)

(assert (=> b!529327 (= e!318461 (and tp_is_empty!2817 tp!168384))))

(assert (=> b!529185 (= tp!168338 e!318461)))

(assert (= (and b!529185 ((_ is Cons!4998) (t!73629 (t!73629 suffix!1342)))) b!529327))

(declare-fun tp!168392 () Bool)

(declare-fun e!318471 () Bool)

(declare-fun tp!168391 () Bool)

(declare-fun b!529342 () Bool)

(assert (=> b!529342 (= e!318471 (and (inv!6268 (left!4235 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))))) tp!168391 (inv!6268 (right!4565 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))))) tp!168392))))

(declare-fun b!529344 () Bool)

(declare-fun e!318470 () Bool)

(declare-fun tp!168393 () Bool)

(assert (=> b!529344 (= e!318470 tp!168393)))

(declare-fun b!529343 () Bool)

(declare-fun inv!6274 (IArray!3229) Bool)

(assert (=> b!529343 (= e!318471 (and (inv!6274 (xs!4251 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))))) e!318470))))

(assert (=> b!529146 (= tp!168319 (and (inv!6268 (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491)))) e!318471))))

(assert (= (and b!529146 ((_ is Node!1614) (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))))) b!529342))

(assert (= b!529343 b!529344))

(assert (= (and b!529146 ((_ is Leaf!2570) (c!101215 (dynLambda!3043 (toChars!1595 (transformation!897 (rule!1597 token!491))) (value!30431 token!491))))) b!529343))

(declare-fun m!774935 () Bool)

(assert (=> b!529342 m!774935))

(declare-fun m!774937 () Bool)

(assert (=> b!529342 m!774937))

(declare-fun m!774939 () Bool)

(assert (=> b!529343 m!774939))

(assert (=> b!529146 m!774785))

(declare-fun b!529348 () Bool)

(declare-fun e!318474 () Bool)

(assert (=> b!529348 (= e!318474 tp_is_empty!2817)))

(declare-fun b!529350 () Bool)

(declare-fun tp!168394 () Bool)

(assert (=> b!529350 (= e!318474 tp!168394)))

(declare-fun b!529349 () Bool)

(declare-fun tp!168396 () Bool)

(declare-fun tp!168398 () Bool)

(assert (=> b!529349 (= e!318474 (and tp!168396 tp!168398))))

(assert (=> b!529177 (= tp!168332 e!318474)))

(declare-fun b!529351 () Bool)

(declare-fun tp!168395 () Bool)

(declare-fun tp!168397 () Bool)

(assert (=> b!529351 (= e!318474 (and tp!168395 tp!168397))))

(assert (= (and b!529177 ((_ is ElementMatch!1231) (regOne!2974 (regex!897 (rule!1597 token!491))))) b!529348))

(assert (= (and b!529177 ((_ is Concat!2152) (regOne!2974 (regex!897 (rule!1597 token!491))))) b!529349))

(assert (= (and b!529177 ((_ is Star!1231) (regOne!2974 (regex!897 (rule!1597 token!491))))) b!529350))

(assert (= (and b!529177 ((_ is Union!1231) (regOne!2974 (regex!897 (rule!1597 token!491))))) b!529351))

(declare-fun b!529352 () Bool)

(declare-fun e!318475 () Bool)

(assert (=> b!529352 (= e!318475 tp_is_empty!2817)))

(declare-fun b!529354 () Bool)

(declare-fun tp!168399 () Bool)

(assert (=> b!529354 (= e!318475 tp!168399)))

(declare-fun b!529353 () Bool)

(declare-fun tp!168401 () Bool)

(declare-fun tp!168403 () Bool)

(assert (=> b!529353 (= e!318475 (and tp!168401 tp!168403))))

(assert (=> b!529177 (= tp!168334 e!318475)))

(declare-fun b!529355 () Bool)

(declare-fun tp!168400 () Bool)

(declare-fun tp!168402 () Bool)

(assert (=> b!529355 (= e!318475 (and tp!168400 tp!168402))))

(assert (= (and b!529177 ((_ is ElementMatch!1231) (regTwo!2974 (regex!897 (rule!1597 token!491))))) b!529352))

(assert (= (and b!529177 ((_ is Concat!2152) (regTwo!2974 (regex!897 (rule!1597 token!491))))) b!529353))

(assert (= (and b!529177 ((_ is Star!1231) (regTwo!2974 (regex!897 (rule!1597 token!491))))) b!529354))

(assert (= (and b!529177 ((_ is Union!1231) (regTwo!2974 (regex!897 (rule!1597 token!491))))) b!529355))

(declare-fun b!529356 () Bool)

(declare-fun e!318476 () Bool)

(assert (=> b!529356 (= e!318476 tp_is_empty!2817)))

(declare-fun b!529358 () Bool)

(declare-fun tp!168404 () Bool)

(assert (=> b!529358 (= e!318476 tp!168404)))

(declare-fun b!529357 () Bool)

(declare-fun tp!168406 () Bool)

(declare-fun tp!168408 () Bool)

(assert (=> b!529357 (= e!318476 (and tp!168406 tp!168408))))

(assert (=> b!529178 (= tp!168330 e!318476)))

(declare-fun b!529359 () Bool)

(declare-fun tp!168405 () Bool)

(declare-fun tp!168407 () Bool)

(assert (=> b!529359 (= e!318476 (and tp!168405 tp!168407))))

(assert (= (and b!529178 ((_ is ElementMatch!1231) (reg!1560 (regex!897 (rule!1597 token!491))))) b!529356))

(assert (= (and b!529178 ((_ is Concat!2152) (reg!1560 (regex!897 (rule!1597 token!491))))) b!529357))

(assert (= (and b!529178 ((_ is Star!1231) (reg!1560 (regex!897 (rule!1597 token!491))))) b!529358))

(assert (= (and b!529178 ((_ is Union!1231) (reg!1560 (regex!897 (rule!1597 token!491))))) b!529359))

(declare-fun b!529360 () Bool)

(declare-fun e!318477 () Bool)

(assert (=> b!529360 (= e!318477 tp_is_empty!2817)))

(declare-fun b!529362 () Bool)

(declare-fun tp!168409 () Bool)

(assert (=> b!529362 (= e!318477 tp!168409)))

(declare-fun b!529361 () Bool)

(declare-fun tp!168411 () Bool)

(declare-fun tp!168413 () Bool)

(assert (=> b!529361 (= e!318477 (and tp!168411 tp!168413))))

(assert (=> b!529179 (= tp!168331 e!318477)))

(declare-fun b!529363 () Bool)

(declare-fun tp!168410 () Bool)

(declare-fun tp!168412 () Bool)

(assert (=> b!529363 (= e!318477 (and tp!168410 tp!168412))))

(assert (= (and b!529179 ((_ is ElementMatch!1231) (regOne!2975 (regex!897 (rule!1597 token!491))))) b!529360))

(assert (= (and b!529179 ((_ is Concat!2152) (regOne!2975 (regex!897 (rule!1597 token!491))))) b!529361))

(assert (= (and b!529179 ((_ is Star!1231) (regOne!2975 (regex!897 (rule!1597 token!491))))) b!529362))

(assert (= (and b!529179 ((_ is Union!1231) (regOne!2975 (regex!897 (rule!1597 token!491))))) b!529363))

(declare-fun b!529364 () Bool)

(declare-fun e!318478 () Bool)

(assert (=> b!529364 (= e!318478 tp_is_empty!2817)))

(declare-fun b!529366 () Bool)

(declare-fun tp!168414 () Bool)

(assert (=> b!529366 (= e!318478 tp!168414)))

(declare-fun b!529365 () Bool)

(declare-fun tp!168416 () Bool)

(declare-fun tp!168418 () Bool)

(assert (=> b!529365 (= e!318478 (and tp!168416 tp!168418))))

(assert (=> b!529179 (= tp!168333 e!318478)))

(declare-fun b!529367 () Bool)

(declare-fun tp!168415 () Bool)

(declare-fun tp!168417 () Bool)

(assert (=> b!529367 (= e!318478 (and tp!168415 tp!168417))))

(assert (= (and b!529179 ((_ is ElementMatch!1231) (regTwo!2975 (regex!897 (rule!1597 token!491))))) b!529364))

(assert (= (and b!529179 ((_ is Concat!2152) (regTwo!2975 (regex!897 (rule!1597 token!491))))) b!529365))

(assert (= (and b!529179 ((_ is Star!1231) (regTwo!2975 (regex!897 (rule!1597 token!491))))) b!529366))

(assert (= (and b!529179 ((_ is Union!1231) (regTwo!2975 (regex!897 (rule!1597 token!491))))) b!529367))

(declare-fun b!529370 () Bool)

(declare-fun b_free!14121 () Bool)

(declare-fun b_next!14137 () Bool)

(assert (=> b!529370 (= b_free!14121 (not b_next!14137))))

(declare-fun tp!168419 () Bool)

(declare-fun b_and!51635 () Bool)

(assert (=> b!529370 (= tp!168419 b_and!51635)))

(declare-fun b_free!14123 () Bool)

(declare-fun b_next!14139 () Bool)

(assert (=> b!529370 (= b_free!14123 (not b_next!14139))))

(declare-fun tb!47207 () Bool)

(declare-fun t!73647 () Bool)

(assert (=> (and b!529370 (= (toChars!1595 (transformation!897 (h!10400 (t!73630 (t!73630 rules!3103))))) (toChars!1595 (transformation!897 (rule!1597 token!491)))) t!73647) tb!47207))

(declare-fun result!52572 () Bool)

(assert (= result!52572 result!52556))

(assert (=> b!529140 t!73647))

(assert (=> d!188008 t!73647))

(declare-fun b_and!51637 () Bool)

(declare-fun tp!168421 () Bool)

(assert (=> b!529370 (= tp!168421 (and (=> t!73647 result!52572) b_and!51637))))

(declare-fun e!318482 () Bool)

(assert (=> b!529370 (= e!318482 (and tp!168419 tp!168421))))

(declare-fun e!318480 () Bool)

(declare-fun tp!168420 () Bool)

(declare-fun b!529369 () Bool)

(assert (=> b!529369 (= e!318480 (and tp!168420 (inv!6261 (tag!1159 (h!10400 (t!73630 (t!73630 rules!3103))))) (inv!6265 (transformation!897 (h!10400 (t!73630 (t!73630 rules!3103))))) e!318482))))

(declare-fun b!529368 () Bool)

(declare-fun e!318481 () Bool)

(declare-fun tp!168422 () Bool)

(assert (=> b!529368 (= e!318481 (and e!318480 tp!168422))))

(assert (=> b!529198 (= tp!168355 e!318481)))

(assert (= b!529369 b!529370))

(assert (= b!529368 b!529369))

(assert (= (and b!529198 ((_ is Cons!4999) (t!73630 (t!73630 rules!3103)))) b!529368))

(declare-fun m!774945 () Bool)

(assert (=> b!529369 m!774945))

(declare-fun m!774947 () Bool)

(assert (=> b!529369 m!774947))

(declare-fun b!529371 () Bool)

(declare-fun e!318483 () Bool)

(assert (=> b!529371 (= e!318483 tp_is_empty!2817)))

(declare-fun b!529373 () Bool)

(declare-fun tp!168423 () Bool)

(assert (=> b!529373 (= e!318483 tp!168423)))

(declare-fun b!529372 () Bool)

(declare-fun tp!168425 () Bool)

(declare-fun tp!168427 () Bool)

(assert (=> b!529372 (= e!318483 (and tp!168425 tp!168427))))

(assert (=> b!529199 (= tp!168353 e!318483)))

(declare-fun b!529374 () Bool)

(declare-fun tp!168424 () Bool)

(declare-fun tp!168426 () Bool)

(assert (=> b!529374 (= e!318483 (and tp!168424 tp!168426))))

(assert (= (and b!529199 ((_ is ElementMatch!1231) (regex!897 (h!10400 (t!73630 rules!3103))))) b!529371))

(assert (= (and b!529199 ((_ is Concat!2152) (regex!897 (h!10400 (t!73630 rules!3103))))) b!529372))

(assert (= (and b!529199 ((_ is Star!1231) (regex!897 (h!10400 (t!73630 rules!3103))))) b!529373))

(assert (= (and b!529199 ((_ is Union!1231) (regex!897 (h!10400 (t!73630 rules!3103))))) b!529374))

(declare-fun b_lambda!20491 () Bool)

(assert (= b_lambda!20487 (or d!187978 b_lambda!20491)))

(declare-fun bs!67088 () Bool)

(declare-fun d!188104 () Bool)

(assert (= bs!67088 (and d!188104 d!187978)))

(assert (=> bs!67088 (= (dynLambda!3047 lambda!15357 (h!10400 rules!3103)) (ruleValid!141 thiss!22590 (h!10400 rules!3103)))))

(assert (=> bs!67088 m!774767))

(assert (=> b!529216 d!188104))

(check-sat b_and!51629 (not b!529236) (not b!529357) (not d!188090) (not b!529241) (not b!529363) tp_is_empty!2817 (not d!188046) (not b!529232) (not d!188040) (not b_next!14121) (not b!529264) b_and!51627 (not b_next!14139) (not b!529321) (not b!529146) (not b!529358) (not d!188038) (not d!188062) (not b!529226) (not b!529373) (not b!529287) (not d!188042) (not d!188086) (not b!529361) (not b!529349) (not b!529303) (not b_lambda!20491) (not b!529372) (not b!529292) (not b!529324) (not b!529367) (not b!529313) (not d!188076) (not b!529309) (not b!529374) b_and!51637 (not b!529365) (not b!529327) (not b!529312) (not b!529343) (not b!529350) (not bs!67088) (not b!529211) (not b!529305) (not b!529315) (not b!529344) (not b!529234) (not b!529316) (not b!529322) (not b!529289) (not b_next!14135) (not b!529244) (not b!529369) (not b!529304) (not d!188064) (not b_next!14123) (not b_next!14125) (not b!529342) (not b!529366) (not b_lambda!20483) (not d!188050) (not b!529320) (not b!529325) (not d!188020) (not d!188068) (not b!529368) (not b!529353) (not b_lambda!20485) (not d!188044) (not b!529265) (not b!529355) b_and!51603 b_and!51635 (not b!529224) (not b!529359) (not b!529318) (not b!529291) (not b!529351) (not b!529354) b_and!51631 (not b_next!14133) (not b!529326) b_and!51607 (not b!529311) (not b!529243) (not b!529362) (not d!188088) (not b!529283) (not b!529307) (not b_next!14137) (not b_next!14127) (not b!529308) (not d!188022) b_and!51633 (not b!529317) (not b!529217) (not b!529284))
(check-sat (not b_next!14139) b_and!51629 b_and!51637 (not b_next!14135) b_and!51607 b_and!51633 (not b_next!14121) b_and!51627 (not b_next!14123) (not b_next!14125) b_and!51603 b_and!51635 b_and!51631 (not b_next!14133) (not b_next!14137) (not b_next!14127))
