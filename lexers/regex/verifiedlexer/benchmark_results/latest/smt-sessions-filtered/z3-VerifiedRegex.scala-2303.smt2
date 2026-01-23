; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112866 () Bool)

(assert start!112866)

(declare-fun b!1288428 () Bool)

(declare-fun b_free!30387 () Bool)

(declare-fun b_next!31091 () Bool)

(assert (=> b!1288428 (= b_free!30387 (not b_next!31091))))

(declare-fun tp!375450 () Bool)

(declare-fun b_and!85711 () Bool)

(assert (=> b!1288428 (= tp!375450 b_and!85711)))

(declare-fun b_free!30389 () Bool)

(declare-fun b_next!31093 () Bool)

(assert (=> b!1288428 (= b_free!30389 (not b_next!31093))))

(declare-fun tp!375451 () Bool)

(declare-fun b_and!85713 () Bool)

(assert (=> b!1288428 (= tp!375451 b_and!85713)))

(declare-fun b!1288420 () Bool)

(declare-fun b_free!30391 () Bool)

(declare-fun b_next!31095 () Bool)

(assert (=> b!1288420 (= b_free!30391 (not b_next!31095))))

(declare-fun tp!375459 () Bool)

(declare-fun b_and!85715 () Bool)

(assert (=> b!1288420 (= tp!375459 b_and!85715)))

(declare-fun b_free!30393 () Bool)

(declare-fun b_next!31097 () Bool)

(assert (=> b!1288420 (= b_free!30393 (not b_next!31097))))

(declare-fun tp!375458 () Bool)

(declare-fun b_and!85717 () Bool)

(assert (=> b!1288420 (= tp!375458 b_and!85717)))

(declare-fun b!1288418 () Bool)

(declare-fun b_free!30395 () Bool)

(declare-fun b_next!31099 () Bool)

(assert (=> b!1288418 (= b_free!30395 (not b_next!31099))))

(declare-fun tp!375456 () Bool)

(declare-fun b_and!85719 () Bool)

(assert (=> b!1288418 (= tp!375456 b_and!85719)))

(declare-fun b_free!30397 () Bool)

(declare-fun b_next!31101 () Bool)

(assert (=> b!1288418 (= b_free!30397 (not b_next!31101))))

(declare-fun tp!375454 () Bool)

(declare-fun b_and!85721 () Bool)

(assert (=> b!1288418 (= tp!375454 b_and!85721)))

(declare-fun b!1288419 () Bool)

(assert (=> b!1288419 true))

(assert (=> b!1288419 true))

(declare-fun res!577572 () Bool)

(declare-fun e!826312 () Bool)

(assert (=> start!112866 (=> (not res!577572) (not e!826312))))

(declare-datatypes ((LexerInterface!1910 0))(
  ( (LexerInterfaceExt!1907 (__x!8439 Int)) (Lexer!1908) )
))
(declare-fun thiss!19762 () LexerInterface!1910)

(get-info :version)

(assert (=> start!112866 (= res!577572 ((_ is Lexer!1908) thiss!19762))))

(assert (=> start!112866 e!826312))

(assert (=> start!112866 true))

(declare-fun e!826309 () Bool)

(assert (=> start!112866 e!826309))

(declare-datatypes ((List!12923 0))(
  ( (Nil!12857) (Cons!12857 (h!18258 (_ BitVec 16)) (t!116974 List!12923)) )
))
(declare-datatypes ((TokenValue!2305 0))(
  ( (FloatLiteralValue!4610 (text!16580 List!12923)) (TokenValueExt!2304 (__x!8440 Int)) (Broken!11525 (value!72734 List!12923)) (Object!2370) (End!2305) (Def!2305) (Underscore!2305) (Match!2305) (Else!2305) (Error!2305) (Case!2305) (If!2305) (Extends!2305) (Abstract!2305) (Class!2305) (Val!2305) (DelimiterValue!4610 (del!2365 List!12923)) (KeywordValue!2311 (value!72735 List!12923)) (CommentValue!4610 (value!72736 List!12923)) (WhitespaceValue!4610 (value!72737 List!12923)) (IndentationValue!2305 (value!72738 List!12923)) (String!15760) (Int32!2305) (Broken!11526 (value!72739 List!12923)) (Boolean!2306) (Unit!19031) (OperatorValue!2308 (op!2365 List!12923)) (IdentifierValue!4610 (value!72740 List!12923)) (IdentifierValue!4611 (value!72741 List!12923)) (WhitespaceValue!4611 (value!72742 List!12923)) (True!4610) (False!4610) (Broken!11527 (value!72743 List!12923)) (Broken!11528 (value!72744 List!12923)) (True!4611) (RightBrace!2305) (RightBracket!2305) (Colon!2305) (Null!2305) (Comma!2305) (LeftBracket!2305) (False!4611) (LeftBrace!2305) (ImaginaryLiteralValue!2305 (text!16581 List!12923)) (StringLiteralValue!6915 (value!72745 List!12923)) (EOFValue!2305 (value!72746 List!12923)) (IdentValue!2305 (value!72747 List!12923)) (DelimiterValue!4611 (value!72748 List!12923)) (DedentValue!2305 (value!72749 List!12923)) (NewLineValue!2305 (value!72750 List!12923)) (IntegerValue!6915 (value!72751 (_ BitVec 32)) (text!16582 List!12923)) (IntegerValue!6916 (value!72752 Int) (text!16583 List!12923)) (Times!2305) (Or!2305) (Equal!2305) (Minus!2305) (Broken!11529 (value!72753 List!12923)) (And!2305) (Div!2305) (LessEqual!2305) (Mod!2305) (Concat!5834) (Not!2305) (Plus!2305) (SpaceValue!2305 (value!72754 List!12923)) (IntegerValue!6917 (value!72755 Int) (text!16584 List!12923)) (StringLiteralValue!6916 (text!16585 List!12923)) (FloatLiteralValue!4611 (text!16586 List!12923)) (BytesLiteralValue!2305 (value!72756 List!12923)) (CommentValue!4611 (value!72757 List!12923)) (StringLiteralValue!6917 (value!72758 List!12923)) (ErrorTokenValue!2305 (msg!2366 List!12923)) )
))
(declare-datatypes ((C!7348 0))(
  ( (C!7349 (val!4234 Int)) )
))
(declare-datatypes ((List!12924 0))(
  ( (Nil!12858) (Cons!12858 (h!18259 C!7348) (t!116975 List!12924)) )
))
(declare-datatypes ((IArray!8455 0))(
  ( (IArray!8456 (innerList!4285 List!12924)) )
))
(declare-datatypes ((Conc!4225 0))(
  ( (Node!4225 (left!11070 Conc!4225) (right!11400 Conc!4225) (csize!8680 Int) (cheight!4436 Int)) (Leaf!6529 (xs!6936 IArray!8455) (csize!8681 Int)) (Empty!4225) )
))
(declare-datatypes ((BalanceConc!8390 0))(
  ( (BalanceConc!8391 (c!212057 Conc!4225)) )
))
(declare-datatypes ((Regex!3529 0))(
  ( (ElementMatch!3529 (c!212058 C!7348)) (Concat!5835 (regOne!7570 Regex!3529) (regTwo!7570 Regex!3529)) (EmptyExpr!3529) (Star!3529 (reg!3858 Regex!3529)) (EmptyLang!3529) (Union!3529 (regOne!7571 Regex!3529) (regTwo!7571 Regex!3529)) )
))
(declare-datatypes ((String!15761 0))(
  ( (String!15762 (value!72759 String)) )
))
(declare-datatypes ((TokenValueInjection!4270 0))(
  ( (TokenValueInjection!4271 (toValue!3406 Int) (toChars!3265 Int)) )
))
(declare-datatypes ((Rule!4230 0))(
  ( (Rule!4231 (regex!2215 Regex!3529) (tag!2477 String!15761) (isSeparator!2215 Bool) (transformation!2215 TokenValueInjection!4270)) )
))
(declare-datatypes ((Token!4092 0))(
  ( (Token!4093 (value!72760 TokenValue!2305) (rule!3954 Rule!4230) (size!10483 Int) (originalCharacters!3077 List!12924)) )
))
(declare-fun t1!34 () Token!4092)

(declare-fun e!826303 () Bool)

(declare-fun inv!17276 (Token!4092) Bool)

(assert (=> start!112866 (and (inv!17276 t1!34) e!826303)))

(declare-fun t2!34 () Token!4092)

(declare-fun e!826306 () Bool)

(assert (=> start!112866 (and (inv!17276 t2!34) e!826306)))

(declare-fun b!1288411 () Bool)

(declare-fun res!577569 () Bool)

(assert (=> b!1288411 (=> (not res!577569) (not e!826312))))

(declare-datatypes ((List!12925 0))(
  ( (Nil!12859) (Cons!12859 (h!18260 Rule!4230) (t!116976 List!12925)) )
))
(declare-fun rules!2550 () List!12925)

(declare-fun rulesInvariant!1780 (LexerInterface!1910 List!12925) Bool)

(assert (=> b!1288411 (= res!577569 (rulesInvariant!1780 thiss!19762 rules!2550))))

(declare-fun b!1288412 () Bool)

(declare-fun res!577571 () Bool)

(assert (=> b!1288412 (=> (not res!577571) (not e!826312))))

(declare-fun isEmpty!7628 (List!12925) Bool)

(assert (=> b!1288412 (= res!577571 (not (isEmpty!7628 rules!2550)))))

(declare-fun e!826314 () Bool)

(declare-fun b!1288413 () Bool)

(declare-fun tp!375457 () Bool)

(declare-fun inv!21 (TokenValue!2305) Bool)

(assert (=> b!1288413 (= e!826306 (and (inv!21 (value!72760 t2!34)) e!826314 tp!375457))))

(declare-fun b!1288414 () Bool)

(declare-fun e!826304 () Bool)

(declare-fun e!826311 () Bool)

(assert (=> b!1288414 (= e!826304 e!826311)))

(declare-fun res!577570 () Bool)

(assert (=> b!1288414 (=> (not res!577570) (not e!826311))))

(declare-fun lt!424406 () Regex!3529)

(declare-fun lt!424407 () List!12924)

(declare-fun prefixMatch!42 (Regex!3529 List!12924) Bool)

(assert (=> b!1288414 (= res!577570 (prefixMatch!42 lt!424406 lt!424407))))

(declare-fun rulesRegex!100 (LexerInterface!1910 List!12925) Regex!3529)

(assert (=> b!1288414 (= lt!424406 (rulesRegex!100 thiss!19762 rules!2550))))

(declare-fun lt!424405 () BalanceConc!8390)

(declare-fun ++!3251 (List!12924 List!12924) List!12924)

(declare-fun list!4787 (BalanceConc!8390) List!12924)

(declare-fun charsOf!1187 (Token!4092) BalanceConc!8390)

(declare-fun apply!2777 (BalanceConc!8390 Int) C!7348)

(assert (=> b!1288414 (= lt!424407 (++!3251 (list!4787 (charsOf!1187 t1!34)) (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))

(declare-fun b!1288415 () Bool)

(declare-fun res!577564 () Bool)

(assert (=> b!1288415 (=> (not res!577564) (not e!826312))))

(declare-fun rulesProduceIndividualToken!879 (LexerInterface!1910 List!12925 Token!4092) Bool)

(assert (=> b!1288415 (= res!577564 (rulesProduceIndividualToken!879 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1288416 () Bool)

(declare-fun res!577565 () Bool)

(assert (=> b!1288416 (=> (not res!577565) (not e!826304))))

(declare-fun separableTokensPredicate!193 (LexerInterface!1910 Token!4092 Token!4092 List!12925) Bool)

(assert (=> b!1288416 (= res!577565 (not (separableTokensPredicate!193 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1288417 () Bool)

(declare-fun res!577568 () Bool)

(assert (=> b!1288417 (=> (not res!577568) (not e!826312))))

(assert (=> b!1288417 (= res!577568 (not (= (isSeparator!2215 (rule!3954 t1!34)) (isSeparator!2215 (rule!3954 t2!34)))))))

(declare-fun e!826298 () Bool)

(assert (=> b!1288418 (= e!826298 (and tp!375456 tp!375454))))

(declare-fun rulesValidInductive!700 (LexerInterface!1910 List!12925) Bool)

(assert (=> b!1288419 (= e!826311 (not (rulesValidInductive!700 thiss!19762 rules!2550)))))

(declare-fun lambda!50533 () Int)

(declare-fun Exists!687 (Int) Bool)

(assert (=> b!1288419 (Exists!687 lambda!50533)))

(declare-datatypes ((Unit!19032 0))(
  ( (Unit!19033) )
))
(declare-fun lt!424408 () Unit!19032)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!5 (Regex!3529 List!12924) Unit!19032)

(assert (=> b!1288419 (= lt!424408 (lemmaPrefixMatchThenExistsStringThatMatches!5 lt!424406 lt!424407))))

(declare-fun e!826307 () Bool)

(assert (=> b!1288420 (= e!826307 (and tp!375459 tp!375458))))

(declare-fun b!1288421 () Bool)

(declare-fun e!826305 () Bool)

(declare-fun tp!375449 () Bool)

(declare-fun e!826302 () Bool)

(declare-fun inv!17273 (String!15761) Bool)

(declare-fun inv!17277 (TokenValueInjection!4270) Bool)

(assert (=> b!1288421 (= e!826302 (and tp!375449 (inv!17273 (tag!2477 (h!18260 rules!2550))) (inv!17277 (transformation!2215 (h!18260 rules!2550))) e!826305))))

(declare-fun b!1288422 () Bool)

(declare-fun e!826313 () Bool)

(declare-fun tp!375455 () Bool)

(assert (=> b!1288422 (= e!826303 (and (inv!21 (value!72760 t1!34)) e!826313 tp!375455))))

(declare-fun b!1288423 () Bool)

(assert (=> b!1288423 (= e!826312 e!826304)))

(declare-fun res!577566 () Bool)

(assert (=> b!1288423 (=> (not res!577566) (not e!826304))))

(declare-fun size!10484 (BalanceConc!8390) Int)

(assert (=> b!1288423 (= res!577566 (> (size!10484 lt!424405) 0))))

(assert (=> b!1288423 (= lt!424405 (charsOf!1187 t2!34))))

(declare-fun b!1288424 () Bool)

(declare-fun res!577563 () Bool)

(assert (=> b!1288424 (=> (not res!577563) (not e!826304))))

(declare-fun sepAndNonSepRulesDisjointChars!588 (List!12925 List!12925) Bool)

(assert (=> b!1288424 (= res!577563 (sepAndNonSepRulesDisjointChars!588 rules!2550 rules!2550))))

(declare-fun tp!375460 () Bool)

(declare-fun b!1288425 () Bool)

(assert (=> b!1288425 (= e!826314 (and tp!375460 (inv!17273 (tag!2477 (rule!3954 t2!34))) (inv!17277 (transformation!2215 (rule!3954 t2!34))) e!826298))))

(declare-fun b!1288426 () Bool)

(declare-fun tp!375452 () Bool)

(assert (=> b!1288426 (= e!826309 (and e!826302 tp!375452))))

(declare-fun b!1288427 () Bool)

(declare-fun res!577567 () Bool)

(assert (=> b!1288427 (=> (not res!577567) (not e!826312))))

(assert (=> b!1288427 (= res!577567 (rulesProduceIndividualToken!879 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1288428 (= e!826305 (and tp!375450 tp!375451))))

(declare-fun tp!375453 () Bool)

(declare-fun b!1288429 () Bool)

(assert (=> b!1288429 (= e!826313 (and tp!375453 (inv!17273 (tag!2477 (rule!3954 t1!34))) (inv!17277 (transformation!2215 (rule!3954 t1!34))) e!826307))))

(assert (= (and start!112866 res!577572) b!1288412))

(assert (= (and b!1288412 res!577571) b!1288411))

(assert (= (and b!1288411 res!577569) b!1288427))

(assert (= (and b!1288427 res!577567) b!1288415))

(assert (= (and b!1288415 res!577564) b!1288417))

(assert (= (and b!1288417 res!577568) b!1288423))

(assert (= (and b!1288423 res!577566) b!1288424))

(assert (= (and b!1288424 res!577563) b!1288416))

(assert (= (and b!1288416 res!577565) b!1288414))

(assert (= (and b!1288414 res!577570) b!1288419))

(assert (= b!1288421 b!1288428))

(assert (= b!1288426 b!1288421))

(assert (= (and start!112866 ((_ is Cons!12859) rules!2550)) b!1288426))

(assert (= b!1288429 b!1288420))

(assert (= b!1288422 b!1288429))

(assert (= start!112866 b!1288422))

(assert (= b!1288425 b!1288418))

(assert (= b!1288413 b!1288425))

(assert (= start!112866 b!1288413))

(declare-fun m!1438905 () Bool)

(assert (=> b!1288419 m!1438905))

(declare-fun m!1438907 () Bool)

(assert (=> b!1288419 m!1438907))

(declare-fun m!1438909 () Bool)

(assert (=> b!1288419 m!1438909))

(declare-fun m!1438911 () Bool)

(assert (=> b!1288423 m!1438911))

(declare-fun m!1438913 () Bool)

(assert (=> b!1288423 m!1438913))

(declare-fun m!1438915 () Bool)

(assert (=> b!1288427 m!1438915))

(declare-fun m!1438917 () Bool)

(assert (=> b!1288415 m!1438917))

(declare-fun m!1438919 () Bool)

(assert (=> b!1288425 m!1438919))

(declare-fun m!1438921 () Bool)

(assert (=> b!1288425 m!1438921))

(declare-fun m!1438923 () Bool)

(assert (=> b!1288422 m!1438923))

(declare-fun m!1438925 () Bool)

(assert (=> b!1288411 m!1438925))

(declare-fun m!1438927 () Bool)

(assert (=> b!1288413 m!1438927))

(declare-fun m!1438929 () Bool)

(assert (=> b!1288424 m!1438929))

(declare-fun m!1438931 () Bool)

(assert (=> b!1288414 m!1438931))

(declare-fun m!1438933 () Bool)

(assert (=> b!1288414 m!1438933))

(assert (=> b!1288414 m!1438933))

(declare-fun m!1438935 () Bool)

(assert (=> b!1288414 m!1438935))

(declare-fun m!1438937 () Bool)

(assert (=> b!1288414 m!1438937))

(declare-fun m!1438939 () Bool)

(assert (=> b!1288414 m!1438939))

(assert (=> b!1288414 m!1438935))

(declare-fun m!1438941 () Bool)

(assert (=> b!1288414 m!1438941))

(declare-fun m!1438943 () Bool)

(assert (=> b!1288421 m!1438943))

(declare-fun m!1438945 () Bool)

(assert (=> b!1288421 m!1438945))

(declare-fun m!1438947 () Bool)

(assert (=> b!1288412 m!1438947))

(declare-fun m!1438949 () Bool)

(assert (=> b!1288429 m!1438949))

(declare-fun m!1438951 () Bool)

(assert (=> b!1288429 m!1438951))

(declare-fun m!1438953 () Bool)

(assert (=> start!112866 m!1438953))

(declare-fun m!1438955 () Bool)

(assert (=> start!112866 m!1438955))

(declare-fun m!1438957 () Bool)

(assert (=> b!1288416 m!1438957))

(check-sat (not b_next!31093) (not b_next!31095) b_and!85717 (not b!1288421) b_and!85721 (not b!1288427) (not start!112866) b_and!85713 (not b_next!31101) (not b!1288414) (not b!1288415) b_and!85715 (not b!1288425) b_and!85711 (not b!1288411) (not b!1288422) (not b!1288429) (not b!1288424) (not b!1288419) (not b_next!31099) (not b!1288423) (not b_next!31097) (not b!1288412) (not b!1288426) (not b!1288416) b_and!85719 (not b!1288413) (not b_next!31091))
(check-sat (not b_next!31093) (not b_next!31095) b_and!85717 b_and!85715 b_and!85711 b_and!85721 (not b_next!31099) (not b_next!31097) b_and!85713 (not b_next!31101) b_and!85719 (not b_next!31091))
(get-model)

(declare-fun d!362996 () Bool)

(declare-fun lt!424411 () Int)

(declare-fun size!10485 (List!12924) Int)

(assert (=> d!362996 (= lt!424411 (size!10485 (list!4787 lt!424405)))))

(declare-fun size!10486 (Conc!4225) Int)

(assert (=> d!362996 (= lt!424411 (size!10486 (c!212057 lt!424405)))))

(assert (=> d!362996 (= (size!10484 lt!424405) lt!424411)))

(declare-fun bs!328303 () Bool)

(assert (= bs!328303 d!362996))

(declare-fun m!1438959 () Bool)

(assert (=> bs!328303 m!1438959))

(assert (=> bs!328303 m!1438959))

(declare-fun m!1438961 () Bool)

(assert (=> bs!328303 m!1438961))

(declare-fun m!1438963 () Bool)

(assert (=> bs!328303 m!1438963))

(assert (=> b!1288423 d!362996))

(declare-fun d!362998 () Bool)

(declare-fun lt!424414 () BalanceConc!8390)

(assert (=> d!362998 (= (list!4787 lt!424414) (originalCharacters!3077 t2!34))))

(declare-fun dynLambda!5605 (Int TokenValue!2305) BalanceConc!8390)

(assert (=> d!362998 (= lt!424414 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))))

(assert (=> d!362998 (= (charsOf!1187 t2!34) lt!424414)))

(declare-fun b_lambda!36735 () Bool)

(assert (=> (not b_lambda!36735) (not d!362998)))

(declare-fun t!116978 () Bool)

(declare-fun tb!69209 () Bool)

(assert (=> (and b!1288428 (= (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toChars!3265 (transformation!2215 (rule!3954 t2!34)))) t!116978) tb!69209))

(declare-fun b!1288438 () Bool)

(declare-fun e!826317 () Bool)

(declare-fun tp!375463 () Bool)

(declare-fun inv!17278 (Conc!4225) Bool)

(assert (=> b!1288438 (= e!826317 (and (inv!17278 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))) tp!375463))))

(declare-fun result!83834 () Bool)

(declare-fun inv!17279 (BalanceConc!8390) Bool)

(assert (=> tb!69209 (= result!83834 (and (inv!17279 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))) e!826317))))

(assert (= tb!69209 b!1288438))

(declare-fun m!1438965 () Bool)

(assert (=> b!1288438 m!1438965))

(declare-fun m!1438967 () Bool)

(assert (=> tb!69209 m!1438967))

(assert (=> d!362998 t!116978))

(declare-fun b_and!85723 () Bool)

(assert (= b_and!85713 (and (=> t!116978 result!83834) b_and!85723)))

(declare-fun tb!69211 () Bool)

(declare-fun t!116980 () Bool)

(assert (=> (and b!1288420 (= (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toChars!3265 (transformation!2215 (rule!3954 t2!34)))) t!116980) tb!69211))

(declare-fun result!83838 () Bool)

(assert (= result!83838 result!83834))

(assert (=> d!362998 t!116980))

(declare-fun b_and!85725 () Bool)

(assert (= b_and!85717 (and (=> t!116980 result!83838) b_and!85725)))

(declare-fun t!116982 () Bool)

(declare-fun tb!69213 () Bool)

(assert (=> (and b!1288418 (= (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (toChars!3265 (transformation!2215 (rule!3954 t2!34)))) t!116982) tb!69213))

(declare-fun result!83840 () Bool)

(assert (= result!83840 result!83834))

(assert (=> d!362998 t!116982))

(declare-fun b_and!85727 () Bool)

(assert (= b_and!85721 (and (=> t!116982 result!83840) b_and!85727)))

(declare-fun m!1438969 () Bool)

(assert (=> d!362998 m!1438969))

(declare-fun m!1438971 () Bool)

(assert (=> d!362998 m!1438971))

(assert (=> b!1288423 d!362998))

(declare-fun d!363000 () Bool)

(assert (=> d!363000 (= (isEmpty!7628 rules!2550) ((_ is Nil!12859) rules!2550))))

(assert (=> b!1288412 d!363000))

(declare-fun b!1288449 () Bool)

(declare-fun e!826325 () Bool)

(declare-fun e!826326 () Bool)

(assert (=> b!1288449 (= e!826325 e!826326)))

(declare-fun c!212063 () Bool)

(assert (=> b!1288449 (= c!212063 ((_ is IntegerValue!6916) (value!72760 t2!34)))))

(declare-fun b!1288451 () Bool)

(declare-fun inv!17 (TokenValue!2305) Bool)

(assert (=> b!1288451 (= e!826326 (inv!17 (value!72760 t2!34)))))

(declare-fun b!1288452 () Bool)

(declare-fun inv!16 (TokenValue!2305) Bool)

(assert (=> b!1288452 (= e!826325 (inv!16 (value!72760 t2!34)))))

(declare-fun b!1288453 () Bool)

(declare-fun e!826324 () Bool)

(declare-fun inv!15 (TokenValue!2305) Bool)

(assert (=> b!1288453 (= e!826324 (inv!15 (value!72760 t2!34)))))

(declare-fun b!1288450 () Bool)

(declare-fun res!577579 () Bool)

(assert (=> b!1288450 (=> res!577579 e!826324)))

(assert (=> b!1288450 (= res!577579 (not ((_ is IntegerValue!6917) (value!72760 t2!34))))))

(assert (=> b!1288450 (= e!826326 e!826324)))

(declare-fun d!363002 () Bool)

(declare-fun c!212064 () Bool)

(assert (=> d!363002 (= c!212064 ((_ is IntegerValue!6915) (value!72760 t2!34)))))

(assert (=> d!363002 (= (inv!21 (value!72760 t2!34)) e!826325)))

(assert (= (and d!363002 c!212064) b!1288452))

(assert (= (and d!363002 (not c!212064)) b!1288449))

(assert (= (and b!1288449 c!212063) b!1288451))

(assert (= (and b!1288449 (not c!212063)) b!1288450))

(assert (= (and b!1288450 (not res!577579)) b!1288453))

(declare-fun m!1438973 () Bool)

(assert (=> b!1288451 m!1438973))

(declare-fun m!1438975 () Bool)

(assert (=> b!1288452 m!1438975))

(declare-fun m!1438977 () Bool)

(assert (=> b!1288453 m!1438977))

(assert (=> b!1288413 d!363002))

(declare-fun d!363004 () Bool)

(declare-fun res!577582 () Bool)

(declare-fun e!826329 () Bool)

(assert (=> d!363004 (=> (not res!577582) (not e!826329))))

(declare-fun rulesValid!805 (LexerInterface!1910 List!12925) Bool)

(assert (=> d!363004 (= res!577582 (rulesValid!805 thiss!19762 rules!2550))))

(assert (=> d!363004 (= (rulesInvariant!1780 thiss!19762 rules!2550) e!826329)))

(declare-fun b!1288456 () Bool)

(declare-datatypes ((List!12926 0))(
  ( (Nil!12860) (Cons!12860 (h!18261 String!15761) (t!117007 List!12926)) )
))
(declare-fun noDuplicateTag!805 (LexerInterface!1910 List!12925 List!12926) Bool)

(assert (=> b!1288456 (= e!826329 (noDuplicateTag!805 thiss!19762 rules!2550 Nil!12860))))

(assert (= (and d!363004 res!577582) b!1288456))

(declare-fun m!1438979 () Bool)

(assert (=> d!363004 m!1438979))

(declare-fun m!1438981 () Bool)

(assert (=> b!1288456 m!1438981))

(assert (=> b!1288411 d!363004))

(declare-fun b!1288457 () Bool)

(declare-fun e!826331 () Bool)

(declare-fun e!826332 () Bool)

(assert (=> b!1288457 (= e!826331 e!826332)))

(declare-fun c!212065 () Bool)

(assert (=> b!1288457 (= c!212065 ((_ is IntegerValue!6916) (value!72760 t1!34)))))

(declare-fun b!1288459 () Bool)

(assert (=> b!1288459 (= e!826332 (inv!17 (value!72760 t1!34)))))

(declare-fun b!1288460 () Bool)

(assert (=> b!1288460 (= e!826331 (inv!16 (value!72760 t1!34)))))

(declare-fun b!1288461 () Bool)

(declare-fun e!826330 () Bool)

(assert (=> b!1288461 (= e!826330 (inv!15 (value!72760 t1!34)))))

(declare-fun b!1288458 () Bool)

(declare-fun res!577583 () Bool)

(assert (=> b!1288458 (=> res!577583 e!826330)))

(assert (=> b!1288458 (= res!577583 (not ((_ is IntegerValue!6917) (value!72760 t1!34))))))

(assert (=> b!1288458 (= e!826332 e!826330)))

(declare-fun d!363006 () Bool)

(declare-fun c!212066 () Bool)

(assert (=> d!363006 (= c!212066 ((_ is IntegerValue!6915) (value!72760 t1!34)))))

(assert (=> d!363006 (= (inv!21 (value!72760 t1!34)) e!826331)))

(assert (= (and d!363006 c!212066) b!1288460))

(assert (= (and d!363006 (not c!212066)) b!1288457))

(assert (= (and b!1288457 c!212065) b!1288459))

(assert (= (and b!1288457 (not c!212065)) b!1288458))

(assert (= (and b!1288458 (not res!577583)) b!1288461))

(declare-fun m!1438983 () Bool)

(assert (=> b!1288459 m!1438983))

(declare-fun m!1438985 () Bool)

(assert (=> b!1288460 m!1438985))

(declare-fun m!1438987 () Bool)

(assert (=> b!1288461 m!1438987))

(assert (=> b!1288422 d!363006))

(declare-fun d!363008 () Bool)

(declare-fun lt!424431 () Bool)

(declare-fun e!826379 () Bool)

(assert (=> d!363008 (= lt!424431 e!826379)))

(declare-fun res!577625 () Bool)

(assert (=> d!363008 (=> (not res!577625) (not e!826379))))

(declare-datatypes ((List!12927 0))(
  ( (Nil!12861) (Cons!12861 (h!18262 Token!4092) (t!117008 List!12927)) )
))
(declare-datatypes ((IArray!8457 0))(
  ( (IArray!8458 (innerList!4286 List!12927)) )
))
(declare-datatypes ((Conc!4226 0))(
  ( (Node!4226 (left!11071 Conc!4226) (right!11401 Conc!4226) (csize!8682 Int) (cheight!4437 Int)) (Leaf!6530 (xs!6937 IArray!8457) (csize!8683 Int)) (Empty!4226) )
))
(declare-datatypes ((BalanceConc!8392 0))(
  ( (BalanceConc!8393 (c!212087 Conc!4226)) )
))
(declare-fun list!4788 (BalanceConc!8392) List!12927)

(declare-datatypes ((tuple2!12644 0))(
  ( (tuple2!12645 (_1!7208 BalanceConc!8392) (_2!7208 BalanceConc!8390)) )
))
(declare-fun lex!774 (LexerInterface!1910 List!12925 BalanceConc!8390) tuple2!12644)

(declare-fun print!711 (LexerInterface!1910 BalanceConc!8392) BalanceConc!8390)

(declare-fun singletonSeq!788 (Token!4092) BalanceConc!8392)

(assert (=> d!363008 (= res!577625 (= (list!4788 (_1!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34))))) (list!4788 (singletonSeq!788 t2!34))))))

(declare-fun e!826380 () Bool)

(assert (=> d!363008 (= lt!424431 e!826380)))

(declare-fun res!577627 () Bool)

(assert (=> d!363008 (=> (not res!577627) (not e!826380))))

(declare-fun lt!424432 () tuple2!12644)

(declare-fun size!10487 (BalanceConc!8392) Int)

(assert (=> d!363008 (= res!577627 (= (size!10487 (_1!7208 lt!424432)) 1))))

(assert (=> d!363008 (= lt!424432 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34))))))

(assert (=> d!363008 (not (isEmpty!7628 rules!2550))))

(assert (=> d!363008 (= (rulesProduceIndividualToken!879 thiss!19762 rules!2550 t2!34) lt!424431)))

(declare-fun b!1288533 () Bool)

(declare-fun res!577626 () Bool)

(assert (=> b!1288533 (=> (not res!577626) (not e!826380))))

(declare-fun apply!2778 (BalanceConc!8392 Int) Token!4092)

(assert (=> b!1288533 (= res!577626 (= (apply!2778 (_1!7208 lt!424432) 0) t2!34))))

(declare-fun b!1288534 () Bool)

(declare-fun isEmpty!7629 (BalanceConc!8390) Bool)

(assert (=> b!1288534 (= e!826380 (isEmpty!7629 (_2!7208 lt!424432)))))

(declare-fun b!1288535 () Bool)

(assert (=> b!1288535 (= e!826379 (isEmpty!7629 (_2!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34))))))))

(assert (= (and d!363008 res!577627) b!1288533))

(assert (= (and b!1288533 res!577626) b!1288534))

(assert (= (and d!363008 res!577625) b!1288535))

(declare-fun m!1439087 () Bool)

(assert (=> d!363008 m!1439087))

(assert (=> d!363008 m!1439087))

(declare-fun m!1439089 () Bool)

(assert (=> d!363008 m!1439089))

(assert (=> d!363008 m!1439089))

(declare-fun m!1439091 () Bool)

(assert (=> d!363008 m!1439091))

(declare-fun m!1439093 () Bool)

(assert (=> d!363008 m!1439093))

(declare-fun m!1439095 () Bool)

(assert (=> d!363008 m!1439095))

(assert (=> d!363008 m!1438947))

(assert (=> d!363008 m!1439087))

(declare-fun m!1439097 () Bool)

(assert (=> d!363008 m!1439097))

(declare-fun m!1439099 () Bool)

(assert (=> b!1288533 m!1439099))

(declare-fun m!1439101 () Bool)

(assert (=> b!1288534 m!1439101))

(assert (=> b!1288535 m!1439087))

(assert (=> b!1288535 m!1439087))

(assert (=> b!1288535 m!1439089))

(assert (=> b!1288535 m!1439089))

(assert (=> b!1288535 m!1439091))

(declare-fun m!1439103 () Bool)

(assert (=> b!1288535 m!1439103))

(assert (=> b!1288415 d!363008))

(declare-fun d!363044 () Bool)

(declare-fun res!577632 () Bool)

(declare-fun e!826385 () Bool)

(assert (=> d!363044 (=> res!577632 e!826385)))

(assert (=> d!363044 (= res!577632 (not ((_ is Cons!12859) rules!2550)))))

(assert (=> d!363044 (= (sepAndNonSepRulesDisjointChars!588 rules!2550 rules!2550) e!826385)))

(declare-fun b!1288540 () Bool)

(declare-fun e!826386 () Bool)

(assert (=> b!1288540 (= e!826385 e!826386)))

(declare-fun res!577633 () Bool)

(assert (=> b!1288540 (=> (not res!577633) (not e!826386))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!279 (Rule!4230 List!12925) Bool)

(assert (=> b!1288540 (= res!577633 (ruleDisjointCharsFromAllFromOtherType!279 (h!18260 rules!2550) rules!2550))))

(declare-fun b!1288541 () Bool)

(assert (=> b!1288541 (= e!826386 (sepAndNonSepRulesDisjointChars!588 rules!2550 (t!116976 rules!2550)))))

(assert (= (and d!363044 (not res!577632)) b!1288540))

(assert (= (and b!1288540 res!577633) b!1288541))

(declare-fun m!1439105 () Bool)

(assert (=> b!1288540 m!1439105))

(declare-fun m!1439107 () Bool)

(assert (=> b!1288541 m!1439107))

(assert (=> b!1288424 d!363044))

(declare-fun d!363046 () Bool)

(assert (=> d!363046 (= (inv!17273 (tag!2477 (rule!3954 t2!34))) (= (mod (str.len (value!72759 (tag!2477 (rule!3954 t2!34)))) 2) 0))))

(assert (=> b!1288425 d!363046))

(declare-fun d!363048 () Bool)

(declare-fun res!577636 () Bool)

(declare-fun e!826389 () Bool)

(assert (=> d!363048 (=> (not res!577636) (not e!826389))))

(declare-fun semiInverseModEq!836 (Int Int) Bool)

(assert (=> d!363048 (= res!577636 (semiInverseModEq!836 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (toValue!3406 (transformation!2215 (rule!3954 t2!34)))))))

(assert (=> d!363048 (= (inv!17277 (transformation!2215 (rule!3954 t2!34))) e!826389)))

(declare-fun b!1288544 () Bool)

(declare-fun equivClasses!795 (Int Int) Bool)

(assert (=> b!1288544 (= e!826389 (equivClasses!795 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (toValue!3406 (transformation!2215 (rule!3954 t2!34)))))))

(assert (= (and d!363048 res!577636) b!1288544))

(declare-fun m!1439109 () Bool)

(assert (=> d!363048 m!1439109))

(declare-fun m!1439111 () Bool)

(assert (=> b!1288544 m!1439111))

(assert (=> b!1288425 d!363048))

(declare-fun d!363050 () Bool)

(declare-fun c!212083 () Bool)

(declare-fun isEmpty!7631 (List!12924) Bool)

(assert (=> d!363050 (= c!212083 (isEmpty!7631 lt!424407))))

(declare-fun e!826392 () Bool)

(assert (=> d!363050 (= (prefixMatch!42 lt!424406 lt!424407) e!826392)))

(declare-fun b!1288549 () Bool)

(declare-fun lostCause!243 (Regex!3529) Bool)

(assert (=> b!1288549 (= e!826392 (not (lostCause!243 lt!424406)))))

(declare-fun b!1288550 () Bool)

(declare-fun derivativeStep!866 (Regex!3529 C!7348) Regex!3529)

(declare-fun head!2202 (List!12924) C!7348)

(declare-fun tail!1830 (List!12924) List!12924)

(assert (=> b!1288550 (= e!826392 (prefixMatch!42 (derivativeStep!866 lt!424406 (head!2202 lt!424407)) (tail!1830 lt!424407)))))

(assert (= (and d!363050 c!212083) b!1288549))

(assert (= (and d!363050 (not c!212083)) b!1288550))

(declare-fun m!1439113 () Bool)

(assert (=> d!363050 m!1439113))

(declare-fun m!1439115 () Bool)

(assert (=> b!1288549 m!1439115))

(declare-fun m!1439117 () Bool)

(assert (=> b!1288550 m!1439117))

(assert (=> b!1288550 m!1439117))

(declare-fun m!1439119 () Bool)

(assert (=> b!1288550 m!1439119))

(declare-fun m!1439121 () Bool)

(assert (=> b!1288550 m!1439121))

(assert (=> b!1288550 m!1439119))

(assert (=> b!1288550 m!1439121))

(declare-fun m!1439123 () Bool)

(assert (=> b!1288550 m!1439123))

(assert (=> b!1288414 d!363050))

(declare-fun d!363052 () Bool)

(declare-fun lt!424435 () C!7348)

(declare-fun apply!2779 (List!12924 Int) C!7348)

(assert (=> d!363052 (= lt!424435 (apply!2779 (list!4787 lt!424405) 0))))

(declare-fun apply!2780 (Conc!4225 Int) C!7348)

(assert (=> d!363052 (= lt!424435 (apply!2780 (c!212057 lt!424405) 0))))

(declare-fun e!826395 () Bool)

(assert (=> d!363052 e!826395))

(declare-fun res!577639 () Bool)

(assert (=> d!363052 (=> (not res!577639) (not e!826395))))

(assert (=> d!363052 (= res!577639 (<= 0 0))))

(assert (=> d!363052 (= (apply!2777 lt!424405 0) lt!424435)))

(declare-fun b!1288553 () Bool)

(assert (=> b!1288553 (= e!826395 (< 0 (size!10484 lt!424405)))))

(assert (= (and d!363052 res!577639) b!1288553))

(assert (=> d!363052 m!1438959))

(assert (=> d!363052 m!1438959))

(declare-fun m!1439125 () Bool)

(assert (=> d!363052 m!1439125))

(declare-fun m!1439127 () Bool)

(assert (=> d!363052 m!1439127))

(assert (=> b!1288553 m!1438911))

(assert (=> b!1288414 d!363052))

(declare-fun d!363054 () Bool)

(declare-fun list!4789 (Conc!4225) List!12924)

(assert (=> d!363054 (= (list!4787 (charsOf!1187 t1!34)) (list!4789 (c!212057 (charsOf!1187 t1!34))))))

(declare-fun bs!328307 () Bool)

(assert (= bs!328307 d!363054))

(declare-fun m!1439129 () Bool)

(assert (=> bs!328307 m!1439129))

(assert (=> b!1288414 d!363054))

(declare-fun d!363056 () Bool)

(declare-fun lt!424436 () BalanceConc!8390)

(assert (=> d!363056 (= (list!4787 lt!424436) (originalCharacters!3077 t1!34))))

(assert (=> d!363056 (= lt!424436 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))))

(assert (=> d!363056 (= (charsOf!1187 t1!34) lt!424436)))

(declare-fun b_lambda!36743 () Bool)

(assert (=> (not b_lambda!36743) (not d!363056)))

(declare-fun tb!69227 () Bool)

(declare-fun t!116997 () Bool)

(assert (=> (and b!1288428 (= (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toChars!3265 (transformation!2215 (rule!3954 t1!34)))) t!116997) tb!69227))

(declare-fun b!1288554 () Bool)

(declare-fun e!826396 () Bool)

(declare-fun tp!375468 () Bool)

(assert (=> b!1288554 (= e!826396 (and (inv!17278 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))) tp!375468))))

(declare-fun result!83856 () Bool)

(assert (=> tb!69227 (= result!83856 (and (inv!17279 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))) e!826396))))

(assert (= tb!69227 b!1288554))

(declare-fun m!1439131 () Bool)

(assert (=> b!1288554 m!1439131))

(declare-fun m!1439133 () Bool)

(assert (=> tb!69227 m!1439133))

(assert (=> d!363056 t!116997))

(declare-fun b_and!85747 () Bool)

(assert (= b_and!85723 (and (=> t!116997 result!83856) b_and!85747)))

(declare-fun t!116999 () Bool)

(declare-fun tb!69229 () Bool)

(assert (=> (and b!1288420 (= (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toChars!3265 (transformation!2215 (rule!3954 t1!34)))) t!116999) tb!69229))

(declare-fun result!83858 () Bool)

(assert (= result!83858 result!83856))

(assert (=> d!363056 t!116999))

(declare-fun b_and!85749 () Bool)

(assert (= b_and!85725 (and (=> t!116999 result!83858) b_and!85749)))

(declare-fun tb!69231 () Bool)

(declare-fun t!117001 () Bool)

(assert (=> (and b!1288418 (= (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (toChars!3265 (transformation!2215 (rule!3954 t1!34)))) t!117001) tb!69231))

(declare-fun result!83860 () Bool)

(assert (= result!83860 result!83856))

(assert (=> d!363056 t!117001))

(declare-fun b_and!85751 () Bool)

(assert (= b_and!85727 (and (=> t!117001 result!83860) b_and!85751)))

(declare-fun m!1439135 () Bool)

(assert (=> d!363056 m!1439135))

(declare-fun m!1439137 () Bool)

(assert (=> d!363056 m!1439137))

(assert (=> b!1288414 d!363056))

(declare-fun b!1288563 () Bool)

(declare-fun e!826402 () List!12924)

(assert (=> b!1288563 (= e!826402 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858))))

(declare-fun lt!424439 () List!12924)

(declare-fun e!826401 () Bool)

(declare-fun b!1288566 () Bool)

(assert (=> b!1288566 (= e!826401 (or (not (= (Cons!12858 (apply!2777 lt!424405 0) Nil!12858) Nil!12858)) (= lt!424439 (list!4787 (charsOf!1187 t1!34)))))))

(declare-fun d!363058 () Bool)

(assert (=> d!363058 e!826401))

(declare-fun res!577645 () Bool)

(assert (=> d!363058 (=> (not res!577645) (not e!826401))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1816 (List!12924) (InoxSet C!7348))

(assert (=> d!363058 (= res!577645 (= (content!1816 lt!424439) ((_ map or) (content!1816 (list!4787 (charsOf!1187 t1!34))) (content!1816 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))))

(assert (=> d!363058 (= lt!424439 e!826402)))

(declare-fun c!212086 () Bool)

(assert (=> d!363058 (= c!212086 ((_ is Nil!12858) (list!4787 (charsOf!1187 t1!34))))))

(assert (=> d!363058 (= (++!3251 (list!4787 (charsOf!1187 t1!34)) (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)) lt!424439)))

(declare-fun b!1288565 () Bool)

(declare-fun res!577644 () Bool)

(assert (=> b!1288565 (=> (not res!577644) (not e!826401))))

(assert (=> b!1288565 (= res!577644 (= (size!10485 lt!424439) (+ (size!10485 (list!4787 (charsOf!1187 t1!34))) (size!10485 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))))

(declare-fun b!1288564 () Bool)

(assert (=> b!1288564 (= e!826402 (Cons!12858 (h!18259 (list!4787 (charsOf!1187 t1!34))) (++!3251 (t!116975 (list!4787 (charsOf!1187 t1!34))) (Cons!12858 (apply!2777 lt!424405 0) Nil!12858))))))

(assert (= (and d!363058 c!212086) b!1288563))

(assert (= (and d!363058 (not c!212086)) b!1288564))

(assert (= (and d!363058 res!577645) b!1288565))

(assert (= (and b!1288565 res!577644) b!1288566))

(declare-fun m!1439139 () Bool)

(assert (=> d!363058 m!1439139))

(assert (=> d!363058 m!1438935))

(declare-fun m!1439141 () Bool)

(assert (=> d!363058 m!1439141))

(declare-fun m!1439143 () Bool)

(assert (=> d!363058 m!1439143))

(declare-fun m!1439145 () Bool)

(assert (=> b!1288565 m!1439145))

(assert (=> b!1288565 m!1438935))

(declare-fun m!1439147 () Bool)

(assert (=> b!1288565 m!1439147))

(declare-fun m!1439149 () Bool)

(assert (=> b!1288565 m!1439149))

(declare-fun m!1439151 () Bool)

(assert (=> b!1288564 m!1439151))

(assert (=> b!1288414 d!363058))

(declare-fun d!363060 () Bool)

(declare-fun lt!424442 () Unit!19032)

(declare-fun lemma!37 (List!12925 LexerInterface!1910 List!12925) Unit!19032)

(assert (=> d!363060 (= lt!424442 (lemma!37 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50539 () Int)

(declare-datatypes ((List!12928 0))(
  ( (Nil!12862) (Cons!12862 (h!18263 Regex!3529) (t!117013 List!12928)) )
))
(declare-fun generalisedUnion!41 (List!12928) Regex!3529)

(declare-fun map!2798 (List!12925 Int) List!12928)

(assert (=> d!363060 (= (rulesRegex!100 thiss!19762 rules!2550) (generalisedUnion!41 (map!2798 rules!2550 lambda!50539)))))

(declare-fun bs!328308 () Bool)

(assert (= bs!328308 d!363060))

(declare-fun m!1439153 () Bool)

(assert (=> bs!328308 m!1439153))

(declare-fun m!1439155 () Bool)

(assert (=> bs!328308 m!1439155))

(assert (=> bs!328308 m!1439155))

(declare-fun m!1439157 () Bool)

(assert (=> bs!328308 m!1439157))

(assert (=> b!1288414 d!363060))

(declare-fun d!363062 () Bool)

(assert (=> d!363062 (= (inv!17273 (tag!2477 (rule!3954 t1!34))) (= (mod (str.len (value!72759 (tag!2477 (rule!3954 t1!34)))) 2) 0))))

(assert (=> b!1288429 d!363062))

(declare-fun d!363064 () Bool)

(declare-fun res!577646 () Bool)

(declare-fun e!826403 () Bool)

(assert (=> d!363064 (=> (not res!577646) (not e!826403))))

(assert (=> d!363064 (= res!577646 (semiInverseModEq!836 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toValue!3406 (transformation!2215 (rule!3954 t1!34)))))))

(assert (=> d!363064 (= (inv!17277 (transformation!2215 (rule!3954 t1!34))) e!826403)))

(declare-fun b!1288567 () Bool)

(assert (=> b!1288567 (= e!826403 (equivClasses!795 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toValue!3406 (transformation!2215 (rule!3954 t1!34)))))))

(assert (= (and d!363064 res!577646) b!1288567))

(declare-fun m!1439159 () Bool)

(assert (=> d!363064 m!1439159))

(declare-fun m!1439161 () Bool)

(assert (=> b!1288567 m!1439161))

(assert (=> b!1288429 d!363064))

(declare-fun d!363066 () Bool)

(declare-fun lt!424443 () Bool)

(declare-fun e!826404 () Bool)

(assert (=> d!363066 (= lt!424443 e!826404)))

(declare-fun res!577647 () Bool)

(assert (=> d!363066 (=> (not res!577647) (not e!826404))))

(assert (=> d!363066 (= res!577647 (= (list!4788 (_1!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34))))) (list!4788 (singletonSeq!788 t1!34))))))

(declare-fun e!826405 () Bool)

(assert (=> d!363066 (= lt!424443 e!826405)))

(declare-fun res!577649 () Bool)

(assert (=> d!363066 (=> (not res!577649) (not e!826405))))

(declare-fun lt!424444 () tuple2!12644)

(assert (=> d!363066 (= res!577649 (= (size!10487 (_1!7208 lt!424444)) 1))))

(assert (=> d!363066 (= lt!424444 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34))))))

(assert (=> d!363066 (not (isEmpty!7628 rules!2550))))

(assert (=> d!363066 (= (rulesProduceIndividualToken!879 thiss!19762 rules!2550 t1!34) lt!424443)))

(declare-fun b!1288568 () Bool)

(declare-fun res!577648 () Bool)

(assert (=> b!1288568 (=> (not res!577648) (not e!826405))))

(assert (=> b!1288568 (= res!577648 (= (apply!2778 (_1!7208 lt!424444) 0) t1!34))))

(declare-fun b!1288569 () Bool)

(assert (=> b!1288569 (= e!826405 (isEmpty!7629 (_2!7208 lt!424444)))))

(declare-fun b!1288570 () Bool)

(assert (=> b!1288570 (= e!826404 (isEmpty!7629 (_2!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34))))))))

(assert (= (and d!363066 res!577649) b!1288568))

(assert (= (and b!1288568 res!577648) b!1288569))

(assert (= (and d!363066 res!577647) b!1288570))

(declare-fun m!1439163 () Bool)

(assert (=> d!363066 m!1439163))

(assert (=> d!363066 m!1439163))

(declare-fun m!1439165 () Bool)

(assert (=> d!363066 m!1439165))

(assert (=> d!363066 m!1439165))

(declare-fun m!1439167 () Bool)

(assert (=> d!363066 m!1439167))

(declare-fun m!1439169 () Bool)

(assert (=> d!363066 m!1439169))

(declare-fun m!1439171 () Bool)

(assert (=> d!363066 m!1439171))

(assert (=> d!363066 m!1438947))

(assert (=> d!363066 m!1439163))

(declare-fun m!1439173 () Bool)

(assert (=> d!363066 m!1439173))

(declare-fun m!1439175 () Bool)

(assert (=> b!1288568 m!1439175))

(declare-fun m!1439177 () Bool)

(assert (=> b!1288569 m!1439177))

(assert (=> b!1288570 m!1439163))

(assert (=> b!1288570 m!1439163))

(assert (=> b!1288570 m!1439165))

(assert (=> b!1288570 m!1439165))

(assert (=> b!1288570 m!1439167))

(declare-fun m!1439179 () Bool)

(assert (=> b!1288570 m!1439179))

(assert (=> b!1288427 d!363066))

(declare-fun d!363068 () Bool)

(declare-fun prefixMatchZipperSequence!129 (Regex!3529 BalanceConc!8390) Bool)

(declare-fun ++!3253 (BalanceConc!8390 BalanceConc!8390) BalanceConc!8390)

(declare-fun singletonSeq!790 (C!7348) BalanceConc!8390)

(assert (=> d!363068 (= (separableTokensPredicate!193 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!129 (rulesRegex!100 thiss!19762 rules!2550) (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))))))))

(declare-fun bs!328309 () Bool)

(assert (= bs!328309 d!363068))

(assert (=> bs!328309 m!1438937))

(declare-fun m!1439181 () Bool)

(assert (=> bs!328309 m!1439181))

(declare-fun m!1439183 () Bool)

(assert (=> bs!328309 m!1439183))

(assert (=> bs!328309 m!1438913))

(assert (=> bs!328309 m!1438913))

(declare-fun m!1439185 () Bool)

(assert (=> bs!328309 m!1439185))

(assert (=> bs!328309 m!1438933))

(declare-fun m!1439187 () Bool)

(assert (=> bs!328309 m!1439187))

(assert (=> bs!328309 m!1439181))

(assert (=> bs!328309 m!1438933))

(assert (=> bs!328309 m!1438937))

(assert (=> bs!328309 m!1439185))

(assert (=> bs!328309 m!1439187))

(assert (=> b!1288416 d!363068))

(declare-fun d!363070 () Bool)

(assert (=> d!363070 (= (inv!17273 (tag!2477 (h!18260 rules!2550))) (= (mod (str.len (value!72759 (tag!2477 (h!18260 rules!2550)))) 2) 0))))

(assert (=> b!1288421 d!363070))

(declare-fun d!363072 () Bool)

(declare-fun res!577650 () Bool)

(declare-fun e!826406 () Bool)

(assert (=> d!363072 (=> (not res!577650) (not e!826406))))

(assert (=> d!363072 (= res!577650 (semiInverseModEq!836 (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toValue!3406 (transformation!2215 (h!18260 rules!2550)))))))

(assert (=> d!363072 (= (inv!17277 (transformation!2215 (h!18260 rules!2550))) e!826406)))

(declare-fun b!1288571 () Bool)

(assert (=> b!1288571 (= e!826406 (equivClasses!795 (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toValue!3406 (transformation!2215 (h!18260 rules!2550)))))))

(assert (= (and d!363072 res!577650) b!1288571))

(declare-fun m!1439189 () Bool)

(assert (=> d!363072 m!1439189))

(declare-fun m!1439191 () Bool)

(assert (=> b!1288571 m!1439191))

(assert (=> b!1288421 d!363072))

(declare-fun d!363074 () Bool)

(declare-fun res!577655 () Bool)

(declare-fun e!826409 () Bool)

(assert (=> d!363074 (=> (not res!577655) (not e!826409))))

(assert (=> d!363074 (= res!577655 (not (isEmpty!7631 (originalCharacters!3077 t1!34))))))

(assert (=> d!363074 (= (inv!17276 t1!34) e!826409)))

(declare-fun b!1288576 () Bool)

(declare-fun res!577656 () Bool)

(assert (=> b!1288576 (=> (not res!577656) (not e!826409))))

(assert (=> b!1288576 (= res!577656 (= (originalCharacters!3077 t1!34) (list!4787 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))))))

(declare-fun b!1288577 () Bool)

(assert (=> b!1288577 (= e!826409 (= (size!10483 t1!34) (size!10485 (originalCharacters!3077 t1!34))))))

(assert (= (and d!363074 res!577655) b!1288576))

(assert (= (and b!1288576 res!577656) b!1288577))

(declare-fun b_lambda!36745 () Bool)

(assert (=> (not b_lambda!36745) (not b!1288576)))

(assert (=> b!1288576 t!116997))

(declare-fun b_and!85753 () Bool)

(assert (= b_and!85747 (and (=> t!116997 result!83856) b_and!85753)))

(assert (=> b!1288576 t!116999))

(declare-fun b_and!85755 () Bool)

(assert (= b_and!85749 (and (=> t!116999 result!83858) b_and!85755)))

(assert (=> b!1288576 t!117001))

(declare-fun b_and!85757 () Bool)

(assert (= b_and!85751 (and (=> t!117001 result!83860) b_and!85757)))

(declare-fun m!1439193 () Bool)

(assert (=> d!363074 m!1439193))

(assert (=> b!1288576 m!1439137))

(assert (=> b!1288576 m!1439137))

(declare-fun m!1439195 () Bool)

(assert (=> b!1288576 m!1439195))

(declare-fun m!1439197 () Bool)

(assert (=> b!1288577 m!1439197))

(assert (=> start!112866 d!363074))

(declare-fun d!363076 () Bool)

(declare-fun res!577657 () Bool)

(declare-fun e!826410 () Bool)

(assert (=> d!363076 (=> (not res!577657) (not e!826410))))

(assert (=> d!363076 (= res!577657 (not (isEmpty!7631 (originalCharacters!3077 t2!34))))))

(assert (=> d!363076 (= (inv!17276 t2!34) e!826410)))

(declare-fun b!1288578 () Bool)

(declare-fun res!577658 () Bool)

(assert (=> b!1288578 (=> (not res!577658) (not e!826410))))

(assert (=> b!1288578 (= res!577658 (= (originalCharacters!3077 t2!34) (list!4787 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))))))

(declare-fun b!1288579 () Bool)

(assert (=> b!1288579 (= e!826410 (= (size!10483 t2!34) (size!10485 (originalCharacters!3077 t2!34))))))

(assert (= (and d!363076 res!577657) b!1288578))

(assert (= (and b!1288578 res!577658) b!1288579))

(declare-fun b_lambda!36747 () Bool)

(assert (=> (not b_lambda!36747) (not b!1288578)))

(assert (=> b!1288578 t!116978))

(declare-fun b_and!85759 () Bool)

(assert (= b_and!85753 (and (=> t!116978 result!83834) b_and!85759)))

(assert (=> b!1288578 t!116980))

(declare-fun b_and!85761 () Bool)

(assert (= b_and!85755 (and (=> t!116980 result!83838) b_and!85761)))

(assert (=> b!1288578 t!116982))

(declare-fun b_and!85763 () Bool)

(assert (= b_and!85757 (and (=> t!116982 result!83840) b_and!85763)))

(declare-fun m!1439199 () Bool)

(assert (=> d!363076 m!1439199))

(assert (=> b!1288578 m!1438971))

(assert (=> b!1288578 m!1438971))

(declare-fun m!1439201 () Bool)

(assert (=> b!1288578 m!1439201))

(declare-fun m!1439203 () Bool)

(assert (=> b!1288579 m!1439203))

(assert (=> start!112866 d!363076))

(declare-fun d!363078 () Bool)

(assert (=> d!363078 true))

(declare-fun lt!424447 () Bool)

(declare-fun lambda!50542 () Int)

(declare-fun forall!3242 (List!12925 Int) Bool)

(assert (=> d!363078 (= lt!424447 (forall!3242 rules!2550 lambda!50542))))

(declare-fun e!826416 () Bool)

(assert (=> d!363078 (= lt!424447 e!826416)))

(declare-fun res!577663 () Bool)

(assert (=> d!363078 (=> res!577663 e!826416)))

(assert (=> d!363078 (= res!577663 (not ((_ is Cons!12859) rules!2550)))))

(assert (=> d!363078 (= (rulesValidInductive!700 thiss!19762 rules!2550) lt!424447)))

(declare-fun b!1288584 () Bool)

(declare-fun e!826415 () Bool)

(assert (=> b!1288584 (= e!826416 e!826415)))

(declare-fun res!577664 () Bool)

(assert (=> b!1288584 (=> (not res!577664) (not e!826415))))

(declare-fun ruleValid!542 (LexerInterface!1910 Rule!4230) Bool)

(assert (=> b!1288584 (= res!577664 (ruleValid!542 thiss!19762 (h!18260 rules!2550)))))

(declare-fun b!1288585 () Bool)

(assert (=> b!1288585 (= e!826415 (rulesValidInductive!700 thiss!19762 (t!116976 rules!2550)))))

(assert (= (and d!363078 (not res!577663)) b!1288584))

(assert (= (and b!1288584 res!577664) b!1288585))

(declare-fun m!1439205 () Bool)

(assert (=> d!363078 m!1439205))

(declare-fun m!1439207 () Bool)

(assert (=> b!1288584 m!1439207))

(declare-fun m!1439209 () Bool)

(assert (=> b!1288585 m!1439209))

(assert (=> b!1288419 d!363078))

(declare-fun d!363080 () Bool)

(declare-fun choose!7909 (Int) Bool)

(assert (=> d!363080 (= (Exists!687 lambda!50533) (choose!7909 lambda!50533))))

(declare-fun bs!328310 () Bool)

(assert (= bs!328310 d!363080))

(declare-fun m!1439211 () Bool)

(assert (=> bs!328310 m!1439211))

(assert (=> b!1288419 d!363080))

(declare-fun bs!328311 () Bool)

(declare-fun d!363082 () Bool)

(assert (= bs!328311 (and d!363082 b!1288419)))

(declare-fun lambda!50545 () Int)

(assert (=> bs!328311 (= lambda!50545 lambda!50533)))

(assert (=> d!363082 true))

(assert (=> d!363082 true))

(assert (=> d!363082 (Exists!687 lambda!50545)))

(declare-fun lt!424450 () Unit!19032)

(declare-fun choose!7910 (Regex!3529 List!12924) Unit!19032)

(assert (=> d!363082 (= lt!424450 (choose!7910 lt!424406 lt!424407))))

(declare-fun validRegex!1516 (Regex!3529) Bool)

(assert (=> d!363082 (validRegex!1516 lt!424406)))

(assert (=> d!363082 (= (lemmaPrefixMatchThenExistsStringThatMatches!5 lt!424406 lt!424407) lt!424450)))

(declare-fun bs!328312 () Bool)

(assert (= bs!328312 d!363082))

(declare-fun m!1439213 () Bool)

(assert (=> bs!328312 m!1439213))

(declare-fun m!1439215 () Bool)

(assert (=> bs!328312 m!1439215))

(declare-fun m!1439217 () Bool)

(assert (=> bs!328312 m!1439217))

(assert (=> b!1288419 d!363082))

(declare-fun b!1288594 () Bool)

(declare-fun e!826421 () Bool)

(declare-fun tp_is_empty!6553 () Bool)

(declare-fun tp!375471 () Bool)

(assert (=> b!1288594 (= e!826421 (and tp_is_empty!6553 tp!375471))))

(assert (=> b!1288413 (= tp!375457 e!826421)))

(assert (= (and b!1288413 ((_ is Cons!12858) (originalCharacters!3077 t2!34))) b!1288594))

(declare-fun b!1288605 () Bool)

(declare-fun e!826424 () Bool)

(assert (=> b!1288605 (= e!826424 tp_is_empty!6553)))

(declare-fun b!1288607 () Bool)

(declare-fun tp!375484 () Bool)

(assert (=> b!1288607 (= e!826424 tp!375484)))

(assert (=> b!1288429 (= tp!375453 e!826424)))

(declare-fun b!1288606 () Bool)

(declare-fun tp!375485 () Bool)

(declare-fun tp!375486 () Bool)

(assert (=> b!1288606 (= e!826424 (and tp!375485 tp!375486))))

(declare-fun b!1288608 () Bool)

(declare-fun tp!375482 () Bool)

(declare-fun tp!375483 () Bool)

(assert (=> b!1288608 (= e!826424 (and tp!375482 tp!375483))))

(assert (= (and b!1288429 ((_ is ElementMatch!3529) (regex!2215 (rule!3954 t1!34)))) b!1288605))

(assert (= (and b!1288429 ((_ is Concat!5835) (regex!2215 (rule!3954 t1!34)))) b!1288606))

(assert (= (and b!1288429 ((_ is Star!3529) (regex!2215 (rule!3954 t1!34)))) b!1288607))

(assert (= (and b!1288429 ((_ is Union!3529) (regex!2215 (rule!3954 t1!34)))) b!1288608))

(declare-fun b!1288609 () Bool)

(declare-fun e!826425 () Bool)

(declare-fun tp!375487 () Bool)

(assert (=> b!1288609 (= e!826425 (and tp_is_empty!6553 tp!375487))))

(assert (=> b!1288422 (= tp!375455 e!826425)))

(assert (= (and b!1288422 ((_ is Cons!12858) (originalCharacters!3077 t1!34))) b!1288609))

(declare-fun b!1288610 () Bool)

(declare-fun e!826426 () Bool)

(assert (=> b!1288610 (= e!826426 tp_is_empty!6553)))

(declare-fun b!1288612 () Bool)

(declare-fun tp!375490 () Bool)

(assert (=> b!1288612 (= e!826426 tp!375490)))

(assert (=> b!1288421 (= tp!375449 e!826426)))

(declare-fun b!1288611 () Bool)

(declare-fun tp!375491 () Bool)

(declare-fun tp!375492 () Bool)

(assert (=> b!1288611 (= e!826426 (and tp!375491 tp!375492))))

(declare-fun b!1288613 () Bool)

(declare-fun tp!375488 () Bool)

(declare-fun tp!375489 () Bool)

(assert (=> b!1288613 (= e!826426 (and tp!375488 tp!375489))))

(assert (= (and b!1288421 ((_ is ElementMatch!3529) (regex!2215 (h!18260 rules!2550)))) b!1288610))

(assert (= (and b!1288421 ((_ is Concat!5835) (regex!2215 (h!18260 rules!2550)))) b!1288611))

(assert (= (and b!1288421 ((_ is Star!3529) (regex!2215 (h!18260 rules!2550)))) b!1288612))

(assert (= (and b!1288421 ((_ is Union!3529) (regex!2215 (h!18260 rules!2550)))) b!1288613))

(declare-fun b!1288624 () Bool)

(declare-fun b_free!30399 () Bool)

(declare-fun b_next!31103 () Bool)

(assert (=> b!1288624 (= b_free!30399 (not b_next!31103))))

(declare-fun tp!375502 () Bool)

(declare-fun b_and!85765 () Bool)

(assert (=> b!1288624 (= tp!375502 b_and!85765)))

(declare-fun b_free!30401 () Bool)

(declare-fun b_next!31105 () Bool)

(assert (=> b!1288624 (= b_free!30401 (not b_next!31105))))

(declare-fun tb!69233 () Bool)

(declare-fun t!117003 () Bool)

(assert (=> (and b!1288624 (= (toChars!3265 (transformation!2215 (h!18260 (t!116976 rules!2550)))) (toChars!3265 (transformation!2215 (rule!3954 t2!34)))) t!117003) tb!69233))

(declare-fun result!83868 () Bool)

(assert (= result!83868 result!83834))

(assert (=> d!362998 t!117003))

(declare-fun tb!69235 () Bool)

(declare-fun t!117005 () Bool)

(assert (=> (and b!1288624 (= (toChars!3265 (transformation!2215 (h!18260 (t!116976 rules!2550)))) (toChars!3265 (transformation!2215 (rule!3954 t1!34)))) t!117005) tb!69235))

(declare-fun result!83870 () Bool)

(assert (= result!83870 result!83856))

(assert (=> d!363056 t!117005))

(assert (=> b!1288576 t!117005))

(assert (=> b!1288578 t!117003))

(declare-fun tp!375501 () Bool)

(declare-fun b_and!85767 () Bool)

(assert (=> b!1288624 (= tp!375501 (and (=> t!117003 result!83868) (=> t!117005 result!83870) b_and!85767))))

(declare-fun e!826436 () Bool)

(assert (=> b!1288624 (= e!826436 (and tp!375502 tp!375501))))

(declare-fun b!1288623 () Bool)

(declare-fun tp!375503 () Bool)

(declare-fun e!826437 () Bool)

(assert (=> b!1288623 (= e!826437 (and tp!375503 (inv!17273 (tag!2477 (h!18260 (t!116976 rules!2550)))) (inv!17277 (transformation!2215 (h!18260 (t!116976 rules!2550)))) e!826436))))

(declare-fun b!1288622 () Bool)

(declare-fun e!826435 () Bool)

(declare-fun tp!375504 () Bool)

(assert (=> b!1288622 (= e!826435 (and e!826437 tp!375504))))

(assert (=> b!1288426 (= tp!375452 e!826435)))

(assert (= b!1288623 b!1288624))

(assert (= b!1288622 b!1288623))

(assert (= (and b!1288426 ((_ is Cons!12859) (t!116976 rules!2550))) b!1288622))

(declare-fun m!1439219 () Bool)

(assert (=> b!1288623 m!1439219))

(declare-fun m!1439221 () Bool)

(assert (=> b!1288623 m!1439221))

(declare-fun b!1288625 () Bool)

(declare-fun e!826439 () Bool)

(assert (=> b!1288625 (= e!826439 tp_is_empty!6553)))

(declare-fun b!1288627 () Bool)

(declare-fun tp!375507 () Bool)

(assert (=> b!1288627 (= e!826439 tp!375507)))

(assert (=> b!1288425 (= tp!375460 e!826439)))

(declare-fun b!1288626 () Bool)

(declare-fun tp!375508 () Bool)

(declare-fun tp!375509 () Bool)

(assert (=> b!1288626 (= e!826439 (and tp!375508 tp!375509))))

(declare-fun b!1288628 () Bool)

(declare-fun tp!375505 () Bool)

(declare-fun tp!375506 () Bool)

(assert (=> b!1288628 (= e!826439 (and tp!375505 tp!375506))))

(assert (= (and b!1288425 ((_ is ElementMatch!3529) (regex!2215 (rule!3954 t2!34)))) b!1288625))

(assert (= (and b!1288425 ((_ is Concat!5835) (regex!2215 (rule!3954 t2!34)))) b!1288626))

(assert (= (and b!1288425 ((_ is Star!3529) (regex!2215 (rule!3954 t2!34)))) b!1288627))

(assert (= (and b!1288425 ((_ is Union!3529) (regex!2215 (rule!3954 t2!34)))) b!1288628))

(declare-fun b_lambda!36749 () Bool)

(assert (= b_lambda!36745 (or (and b!1288428 b_free!30389 (= (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toChars!3265 (transformation!2215 (rule!3954 t1!34))))) (and b!1288420 b_free!30393) (and b!1288418 b_free!30397 (= (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (toChars!3265 (transformation!2215 (rule!3954 t1!34))))) (and b!1288624 b_free!30401 (= (toChars!3265 (transformation!2215 (h!18260 (t!116976 rules!2550)))) (toChars!3265 (transformation!2215 (rule!3954 t1!34))))) b_lambda!36749)))

(declare-fun b_lambda!36751 () Bool)

(assert (= b_lambda!36735 (or (and b!1288428 b_free!30389 (= (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toChars!3265 (transformation!2215 (rule!3954 t2!34))))) (and b!1288420 b_free!30393 (= (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toChars!3265 (transformation!2215 (rule!3954 t2!34))))) (and b!1288418 b_free!30397) (and b!1288624 b_free!30401 (= (toChars!3265 (transformation!2215 (h!18260 (t!116976 rules!2550)))) (toChars!3265 (transformation!2215 (rule!3954 t2!34))))) b_lambda!36751)))

(declare-fun b_lambda!36753 () Bool)

(assert (= b_lambda!36747 (or (and b!1288428 b_free!30389 (= (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toChars!3265 (transformation!2215 (rule!3954 t2!34))))) (and b!1288420 b_free!30393 (= (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toChars!3265 (transformation!2215 (rule!3954 t2!34))))) (and b!1288418 b_free!30397) (and b!1288624 b_free!30401 (= (toChars!3265 (transformation!2215 (h!18260 (t!116976 rules!2550)))) (toChars!3265 (transformation!2215 (rule!3954 t2!34))))) b_lambda!36753)))

(declare-fun b_lambda!36755 () Bool)

(assert (= b_lambda!36743 (or (and b!1288428 b_free!30389 (= (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toChars!3265 (transformation!2215 (rule!3954 t1!34))))) (and b!1288420 b_free!30393) (and b!1288418 b_free!30397 (= (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (toChars!3265 (transformation!2215 (rule!3954 t1!34))))) (and b!1288624 b_free!30401 (= (toChars!3265 (transformation!2215 (h!18260 (t!116976 rules!2550)))) (toChars!3265 (transformation!2215 (rule!3954 t1!34))))) b_lambda!36755)))

(check-sat (not b!1288622) (not b!1288609) (not d!363050) (not d!362998) (not b_next!31101) (not b_next!31093) (not b!1288549) b_and!85767 (not b_next!31095) (not d!362996) b_and!85763 (not b!1288627) (not b!1288554) (not b!1288569) (not d!363008) (not b!1288623) (not d!363004) b_and!85715 (not b_next!31103) (not b!1288576) (not b!1288453) (not b!1288607) (not b!1288540) (not d!363064) (not d!363076) (not d!363054) b_and!85759 (not b!1288544) (not d!363074) (not b!1288535) b_and!85711 (not d!363060) (not b!1288567) (not b!1288585) (not b!1288565) (not b!1288452) (not b!1288456) (not b!1288626) (not d!363052) (not d!363082) (not b!1288628) b_and!85761 (not b_lambda!36751) (not b!1288606) (not b!1288541) (not b!1288451) tp_is_empty!6553 (not b!1288611) (not d!363058) (not b!1288608) (not d!363056) (not b!1288594) (not b!1288460) (not b!1288459) (not b_lambda!36753) (not b!1288534) (not b!1288578) (not tb!69227) (not d!363068) (not b!1288579) (not b!1288613) (not b!1288564) (not tb!69209) (not d!363072) (not b!1288570) (not b!1288612) (not d!363078) (not b_next!31099) (not b_lambda!36755) (not b!1288568) (not b!1288571) (not b_next!31097) (not b_lambda!36749) b_and!85765 (not b_next!31105) (not b!1288550) (not d!363048) (not b!1288533) (not b!1288438) (not b!1288553) (not b!1288461) (not b!1288577) b_and!85719 (not b!1288584) (not d!363066) (not d!363080) (not b_next!31091))
(check-sat (not b_next!31093) b_and!85763 b_and!85759 b_and!85711 b_and!85761 (not b_next!31099) (not b_next!31097) (not b_next!31101) b_and!85719 (not b_next!31091) b_and!85767 (not b_next!31095) b_and!85715 (not b_next!31103) b_and!85765 (not b_next!31105))
(get-model)

(declare-fun d!363104 () Bool)

(assert (=> d!363104 true))

(declare-fun order!7829 () Int)

(declare-fun lambda!50554 () Int)

(declare-fun order!7827 () Int)

(declare-fun dynLambda!5607 (Int Int) Int)

(declare-fun dynLambda!5608 (Int Int) Int)

(assert (=> d!363104 (< (dynLambda!5607 order!7827 (toChars!3265 (transformation!2215 (rule!3954 t2!34)))) (dynLambda!5608 order!7829 lambda!50554))))

(assert (=> d!363104 true))

(declare-fun order!7831 () Int)

(declare-fun dynLambda!5609 (Int Int) Int)

(assert (=> d!363104 (< (dynLambda!5609 order!7831 (toValue!3406 (transformation!2215 (rule!3954 t2!34)))) (dynLambda!5608 order!7829 lambda!50554))))

(declare-fun Forall!500 (Int) Bool)

(assert (=> d!363104 (= (semiInverseModEq!836 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (toValue!3406 (transformation!2215 (rule!3954 t2!34)))) (Forall!500 lambda!50554))))

(declare-fun bs!328317 () Bool)

(assert (= bs!328317 d!363104))

(declare-fun m!1439291 () Bool)

(assert (=> bs!328317 m!1439291))

(assert (=> d!363048 d!363104))

(declare-fun d!363106 () Bool)

(assert (=> d!363106 true))

(declare-fun lambda!50557 () Int)

(declare-fun order!7833 () Int)

(declare-fun dynLambda!5610 (Int Int) Int)

(assert (=> d!363106 (< (dynLambda!5609 order!7831 (toValue!3406 (transformation!2215 (h!18260 rules!2550)))) (dynLambda!5610 order!7833 lambda!50557))))

(declare-fun Forall2!402 (Int) Bool)

(assert (=> d!363106 (= (equivClasses!795 (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toValue!3406 (transformation!2215 (h!18260 rules!2550)))) (Forall2!402 lambda!50557))))

(declare-fun bs!328318 () Bool)

(assert (= bs!328318 d!363106))

(declare-fun m!1439293 () Bool)

(assert (=> bs!328318 m!1439293))

(assert (=> b!1288571 d!363106))

(declare-fun lt!424471 () Bool)

(declare-fun d!363108 () Bool)

(assert (=> d!363108 (= lt!424471 (isEmpty!7631 (list!4787 (_2!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34)))))))))

(declare-fun isEmpty!7633 (Conc!4225) Bool)

(assert (=> d!363108 (= lt!424471 (isEmpty!7633 (c!212057 (_2!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34)))))))))

(assert (=> d!363108 (= (isEmpty!7629 (_2!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34))))) lt!424471)))

(declare-fun bs!328319 () Bool)

(assert (= bs!328319 d!363108))

(declare-fun m!1439295 () Bool)

(assert (=> bs!328319 m!1439295))

(assert (=> bs!328319 m!1439295))

(declare-fun m!1439297 () Bool)

(assert (=> bs!328319 m!1439297))

(declare-fun m!1439299 () Bool)

(assert (=> bs!328319 m!1439299))

(assert (=> b!1288570 d!363108))

(declare-fun b!1288712 () Bool)

(declare-fun e!826489 () Bool)

(declare-fun e!826490 () Bool)

(assert (=> b!1288712 (= e!826489 e!826490)))

(declare-fun lt!424474 () tuple2!12644)

(declare-fun res!577704 () Bool)

(assert (=> b!1288712 (= res!577704 (< (size!10484 (_2!7208 lt!424474)) (size!10484 (print!711 thiss!19762 (singletonSeq!788 t1!34)))))))

(assert (=> b!1288712 (=> (not res!577704) (not e!826490))))

(declare-fun b!1288713 () Bool)

(assert (=> b!1288713 (= e!826489 (= (_2!7208 lt!424474) (print!711 thiss!19762 (singletonSeq!788 t1!34))))))

(declare-fun b!1288714 () Bool)

(declare-fun isEmpty!7634 (BalanceConc!8392) Bool)

(assert (=> b!1288714 (= e!826490 (not (isEmpty!7634 (_1!7208 lt!424474))))))

(declare-fun d!363110 () Bool)

(declare-fun e!826491 () Bool)

(assert (=> d!363110 e!826491))

(declare-fun res!577705 () Bool)

(assert (=> d!363110 (=> (not res!577705) (not e!826491))))

(assert (=> d!363110 (= res!577705 e!826489)))

(declare-fun c!212092 () Bool)

(assert (=> d!363110 (= c!212092 (> (size!10487 (_1!7208 lt!424474)) 0))))

(declare-fun lexTailRecV2!342 (LexerInterface!1910 List!12925 BalanceConc!8390 BalanceConc!8390 BalanceConc!8390 BalanceConc!8392) tuple2!12644)

(assert (=> d!363110 (= lt!424474 (lexTailRecV2!342 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34)) (BalanceConc!8391 Empty!4225) (print!711 thiss!19762 (singletonSeq!788 t1!34)) (BalanceConc!8393 Empty!4226)))))

(assert (=> d!363110 (= (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34))) lt!424474)))

(declare-fun b!1288715 () Bool)

(declare-datatypes ((tuple2!12648 0))(
  ( (tuple2!12649 (_1!7210 List!12927) (_2!7210 List!12924)) )
))
(declare-fun lexList!493 (LexerInterface!1910 List!12925 List!12924) tuple2!12648)

(assert (=> b!1288715 (= e!826491 (= (list!4787 (_2!7208 lt!424474)) (_2!7210 (lexList!493 thiss!19762 rules!2550 (list!4787 (print!711 thiss!19762 (singletonSeq!788 t1!34)))))))))

(declare-fun b!1288716 () Bool)

(declare-fun res!577703 () Bool)

(assert (=> b!1288716 (=> (not res!577703) (not e!826491))))

(assert (=> b!1288716 (= res!577703 (= (list!4788 (_1!7208 lt!424474)) (_1!7210 (lexList!493 thiss!19762 rules!2550 (list!4787 (print!711 thiss!19762 (singletonSeq!788 t1!34)))))))))

(assert (= (and d!363110 c!212092) b!1288712))

(assert (= (and d!363110 (not c!212092)) b!1288713))

(assert (= (and b!1288712 res!577704) b!1288714))

(assert (= (and d!363110 res!577705) b!1288716))

(assert (= (and b!1288716 res!577703) b!1288715))

(declare-fun m!1439301 () Bool)

(assert (=> b!1288712 m!1439301))

(assert (=> b!1288712 m!1439165))

(declare-fun m!1439303 () Bool)

(assert (=> b!1288712 m!1439303))

(declare-fun m!1439305 () Bool)

(assert (=> b!1288716 m!1439305))

(assert (=> b!1288716 m!1439165))

(declare-fun m!1439307 () Bool)

(assert (=> b!1288716 m!1439307))

(assert (=> b!1288716 m!1439307))

(declare-fun m!1439309 () Bool)

(assert (=> b!1288716 m!1439309))

(declare-fun m!1439311 () Bool)

(assert (=> b!1288715 m!1439311))

(assert (=> b!1288715 m!1439165))

(assert (=> b!1288715 m!1439307))

(assert (=> b!1288715 m!1439307))

(assert (=> b!1288715 m!1439309))

(declare-fun m!1439313 () Bool)

(assert (=> b!1288714 m!1439313))

(declare-fun m!1439315 () Bool)

(assert (=> d!363110 m!1439315))

(assert (=> d!363110 m!1439165))

(assert (=> d!363110 m!1439165))

(declare-fun m!1439317 () Bool)

(assert (=> d!363110 m!1439317))

(assert (=> b!1288570 d!363110))

(declare-fun d!363112 () Bool)

(declare-fun lt!424477 () BalanceConc!8390)

(declare-fun printList!537 (LexerInterface!1910 List!12927) List!12924)

(assert (=> d!363112 (= (list!4787 lt!424477) (printList!537 thiss!19762 (list!4788 (singletonSeq!788 t1!34))))))

(declare-fun printTailRec!519 (LexerInterface!1910 BalanceConc!8392 Int BalanceConc!8390) BalanceConc!8390)

(assert (=> d!363112 (= lt!424477 (printTailRec!519 thiss!19762 (singletonSeq!788 t1!34) 0 (BalanceConc!8391 Empty!4225)))))

(assert (=> d!363112 (= (print!711 thiss!19762 (singletonSeq!788 t1!34)) lt!424477)))

(declare-fun bs!328320 () Bool)

(assert (= bs!328320 d!363112))

(declare-fun m!1439319 () Bool)

(assert (=> bs!328320 m!1439319))

(assert (=> bs!328320 m!1439163))

(assert (=> bs!328320 m!1439173))

(assert (=> bs!328320 m!1439173))

(declare-fun m!1439321 () Bool)

(assert (=> bs!328320 m!1439321))

(assert (=> bs!328320 m!1439163))

(declare-fun m!1439323 () Bool)

(assert (=> bs!328320 m!1439323))

(assert (=> b!1288570 d!363112))

(declare-fun d!363114 () Bool)

(declare-fun e!826494 () Bool)

(assert (=> d!363114 e!826494))

(declare-fun res!577708 () Bool)

(assert (=> d!363114 (=> (not res!577708) (not e!826494))))

(declare-fun lt!424480 () BalanceConc!8392)

(assert (=> d!363114 (= res!577708 (= (list!4788 lt!424480) (Cons!12861 t1!34 Nil!12861)))))

(declare-fun singleton!343 (Token!4092) BalanceConc!8392)

(assert (=> d!363114 (= lt!424480 (singleton!343 t1!34))))

(assert (=> d!363114 (= (singletonSeq!788 t1!34) lt!424480)))

(declare-fun b!1288719 () Bool)

(declare-fun isBalanced!1237 (Conc!4226) Bool)

(assert (=> b!1288719 (= e!826494 (isBalanced!1237 (c!212087 lt!424480)))))

(assert (= (and d!363114 res!577708) b!1288719))

(declare-fun m!1439325 () Bool)

(assert (=> d!363114 m!1439325))

(declare-fun m!1439327 () Bool)

(assert (=> d!363114 m!1439327))

(declare-fun m!1439329 () Bool)

(assert (=> b!1288719 m!1439329))

(assert (=> b!1288570 d!363114))

(declare-fun d!363116 () Bool)

(declare-fun lt!424483 () Token!4092)

(declare-fun apply!2784 (List!12927 Int) Token!4092)

(assert (=> d!363116 (= lt!424483 (apply!2784 (list!4788 (_1!7208 lt!424444)) 0))))

(declare-fun apply!2785 (Conc!4226 Int) Token!4092)

(assert (=> d!363116 (= lt!424483 (apply!2785 (c!212087 (_1!7208 lt!424444)) 0))))

(declare-fun e!826497 () Bool)

(assert (=> d!363116 e!826497))

(declare-fun res!577711 () Bool)

(assert (=> d!363116 (=> (not res!577711) (not e!826497))))

(assert (=> d!363116 (= res!577711 (<= 0 0))))

(assert (=> d!363116 (= (apply!2778 (_1!7208 lt!424444) 0) lt!424483)))

(declare-fun b!1288722 () Bool)

(assert (=> b!1288722 (= e!826497 (< 0 (size!10487 (_1!7208 lt!424444))))))

(assert (= (and d!363116 res!577711) b!1288722))

(declare-fun m!1439331 () Bool)

(assert (=> d!363116 m!1439331))

(assert (=> d!363116 m!1439331))

(declare-fun m!1439333 () Bool)

(assert (=> d!363116 m!1439333))

(declare-fun m!1439335 () Bool)

(assert (=> d!363116 m!1439335))

(assert (=> b!1288722 m!1439169))

(assert (=> b!1288568 d!363116))

(declare-fun d!363118 () Bool)

(assert (=> d!363118 (= (list!4787 lt!424414) (list!4789 (c!212057 lt!424414)))))

(declare-fun bs!328321 () Bool)

(assert (= bs!328321 d!363118))

(declare-fun m!1439337 () Bool)

(assert (=> bs!328321 m!1439337))

(assert (=> d!362998 d!363118))

(declare-fun bs!328322 () Bool)

(declare-fun d!363120 () Bool)

(assert (= bs!328322 (and d!363120 d!363104)))

(declare-fun lambda!50558 () Int)

(assert (=> bs!328322 (= (and (= (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toChars!3265 (transformation!2215 (rule!3954 t2!34)))) (= (toValue!3406 (transformation!2215 (rule!3954 t1!34))) (toValue!3406 (transformation!2215 (rule!3954 t2!34))))) (= lambda!50558 lambda!50554))))

(assert (=> d!363120 true))

(assert (=> d!363120 (< (dynLambda!5607 order!7827 (toChars!3265 (transformation!2215 (rule!3954 t1!34)))) (dynLambda!5608 order!7829 lambda!50558))))

(assert (=> d!363120 true))

(assert (=> d!363120 (< (dynLambda!5609 order!7831 (toValue!3406 (transformation!2215 (rule!3954 t1!34)))) (dynLambda!5608 order!7829 lambda!50558))))

(assert (=> d!363120 (= (semiInverseModEq!836 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toValue!3406 (transformation!2215 (rule!3954 t1!34)))) (Forall!500 lambda!50558))))

(declare-fun bs!328323 () Bool)

(assert (= bs!328323 d!363120))

(declare-fun m!1439339 () Bool)

(assert (=> bs!328323 m!1439339))

(assert (=> d!363064 d!363120))

(declare-fun d!363122 () Bool)

(assert (=> d!363122 (= (list!4787 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))) (list!4789 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))))))

(declare-fun bs!328324 () Bool)

(assert (= bs!328324 d!363122))

(declare-fun m!1439341 () Bool)

(assert (=> bs!328324 m!1439341))

(assert (=> b!1288578 d!363122))

(declare-fun d!363124 () Bool)

(declare-fun lt!424486 () Int)

(assert (=> d!363124 (>= lt!424486 0)))

(declare-fun e!826500 () Int)

(assert (=> d!363124 (= lt!424486 e!826500)))

(declare-fun c!212095 () Bool)

(assert (=> d!363124 (= c!212095 ((_ is Nil!12858) lt!424439))))

(assert (=> d!363124 (= (size!10485 lt!424439) lt!424486)))

(declare-fun b!1288727 () Bool)

(assert (=> b!1288727 (= e!826500 0)))

(declare-fun b!1288728 () Bool)

(assert (=> b!1288728 (= e!826500 (+ 1 (size!10485 (t!116975 lt!424439))))))

(assert (= (and d!363124 c!212095) b!1288727))

(assert (= (and d!363124 (not c!212095)) b!1288728))

(declare-fun m!1439343 () Bool)

(assert (=> b!1288728 m!1439343))

(assert (=> b!1288565 d!363124))

(declare-fun d!363126 () Bool)

(declare-fun lt!424487 () Int)

(assert (=> d!363126 (>= lt!424487 0)))

(declare-fun e!826501 () Int)

(assert (=> d!363126 (= lt!424487 e!826501)))

(declare-fun c!212096 () Bool)

(assert (=> d!363126 (= c!212096 ((_ is Nil!12858) (list!4787 (charsOf!1187 t1!34))))))

(assert (=> d!363126 (= (size!10485 (list!4787 (charsOf!1187 t1!34))) lt!424487)))

(declare-fun b!1288729 () Bool)

(assert (=> b!1288729 (= e!826501 0)))

(declare-fun b!1288730 () Bool)

(assert (=> b!1288730 (= e!826501 (+ 1 (size!10485 (t!116975 (list!4787 (charsOf!1187 t1!34))))))))

(assert (= (and d!363126 c!212096) b!1288729))

(assert (= (and d!363126 (not c!212096)) b!1288730))

(declare-fun m!1439345 () Bool)

(assert (=> b!1288730 m!1439345))

(assert (=> b!1288565 d!363126))

(declare-fun d!363128 () Bool)

(declare-fun lt!424488 () Int)

(assert (=> d!363128 (>= lt!424488 0)))

(declare-fun e!826502 () Int)

(assert (=> d!363128 (= lt!424488 e!826502)))

(declare-fun c!212097 () Bool)

(assert (=> d!363128 (= c!212097 ((_ is Nil!12858) (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))

(assert (=> d!363128 (= (size!10485 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)) lt!424488)))

(declare-fun b!1288731 () Bool)

(assert (=> b!1288731 (= e!826502 0)))

(declare-fun b!1288732 () Bool)

(assert (=> b!1288732 (= e!826502 (+ 1 (size!10485 (t!116975 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))))

(assert (= (and d!363128 c!212097) b!1288731))

(assert (= (and d!363128 (not c!212097)) b!1288732))

(declare-fun m!1439347 () Bool)

(assert (=> b!1288732 m!1439347))

(assert (=> b!1288565 d!363128))

(declare-fun d!363130 () Bool)

(assert (=> d!363130 (= (list!4787 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))) (list!4789 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))))))

(declare-fun bs!328325 () Bool)

(assert (= bs!328325 d!363130))

(declare-fun m!1439349 () Bool)

(assert (=> bs!328325 m!1439349))

(assert (=> b!1288576 d!363130))

(declare-fun d!363132 () Bool)

(declare-fun lt!424491 () C!7348)

(declare-fun contains!2148 (List!12924 C!7348) Bool)

(assert (=> d!363132 (contains!2148 (list!4787 lt!424405) lt!424491)))

(declare-fun e!826507 () C!7348)

(assert (=> d!363132 (= lt!424491 e!826507)))

(declare-fun c!212100 () Bool)

(assert (=> d!363132 (= c!212100 (= 0 0))))

(declare-fun e!826508 () Bool)

(assert (=> d!363132 e!826508))

(declare-fun res!577715 () Bool)

(assert (=> d!363132 (=> (not res!577715) (not e!826508))))

(assert (=> d!363132 (= res!577715 (<= 0 0))))

(assert (=> d!363132 (= (apply!2779 (list!4787 lt!424405) 0) lt!424491)))

(declare-fun b!1288739 () Bool)

(assert (=> b!1288739 (= e!826508 (< 0 (size!10485 (list!4787 lt!424405))))))

(declare-fun b!1288740 () Bool)

(assert (=> b!1288740 (= e!826507 (head!2202 (list!4787 lt!424405)))))

(declare-fun b!1288741 () Bool)

(assert (=> b!1288741 (= e!826507 (apply!2779 (tail!1830 (list!4787 lt!424405)) (- 0 1)))))

(assert (= (and d!363132 res!577715) b!1288739))

(assert (= (and d!363132 c!212100) b!1288740))

(assert (= (and d!363132 (not c!212100)) b!1288741))

(assert (=> d!363132 m!1438959))

(declare-fun m!1439351 () Bool)

(assert (=> d!363132 m!1439351))

(assert (=> b!1288739 m!1438959))

(assert (=> b!1288739 m!1438961))

(assert (=> b!1288740 m!1438959))

(declare-fun m!1439353 () Bool)

(assert (=> b!1288740 m!1439353))

(assert (=> b!1288741 m!1438959))

(declare-fun m!1439355 () Bool)

(assert (=> b!1288741 m!1439355))

(assert (=> b!1288741 m!1439355))

(declare-fun m!1439357 () Bool)

(assert (=> b!1288741 m!1439357))

(assert (=> d!363052 d!363132))

(declare-fun d!363134 () Bool)

(assert (=> d!363134 (= (list!4787 lt!424405) (list!4789 (c!212057 lt!424405)))))

(declare-fun bs!328326 () Bool)

(assert (= bs!328326 d!363134))

(declare-fun m!1439359 () Bool)

(assert (=> bs!328326 m!1439359))

(assert (=> d!363052 d!363134))

(declare-fun b!1288757 () Bool)

(declare-fun e!826518 () Bool)

(assert (=> b!1288757 (= e!826518 (< 0 (size!10486 (c!212057 lt!424405))))))

(declare-fun b!1288758 () Bool)

(declare-fun e!826517 () Int)

(assert (=> b!1288758 (= e!826517 0)))

(declare-fun b!1288759 () Bool)

(declare-fun e!826520 () C!7348)

(declare-fun e!826519 () C!7348)

(assert (=> b!1288759 (= e!826520 e!826519)))

(declare-fun lt!424496 () Bool)

(declare-fun appendIndex!122 (List!12924 List!12924 Int) Bool)

(assert (=> b!1288759 (= lt!424496 (appendIndex!122 (list!4789 (left!11070 (c!212057 lt!424405))) (list!4789 (right!11400 (c!212057 lt!424405))) 0))))

(declare-fun c!212107 () Bool)

(assert (=> b!1288759 (= c!212107 (< 0 (size!10486 (left!11070 (c!212057 lt!424405)))))))

(declare-fun b!1288760 () Bool)

(declare-fun apply!2786 (IArray!8455 Int) C!7348)

(assert (=> b!1288760 (= e!826520 (apply!2786 (xs!6936 (c!212057 lt!424405)) 0))))

(declare-fun b!1288761 () Bool)

(declare-fun call!88526 () C!7348)

(assert (=> b!1288761 (= e!826519 call!88526)))

(declare-fun b!1288762 () Bool)

(assert (=> b!1288762 (= e!826519 call!88526)))

(declare-fun bm!88521 () Bool)

(declare-fun c!212109 () Bool)

(assert (=> bm!88521 (= c!212109 c!212107)))

(assert (=> bm!88521 (= call!88526 (apply!2780 (ite c!212107 (left!11070 (c!212057 lt!424405)) (right!11400 (c!212057 lt!424405))) e!826517))))

(declare-fun b!1288756 () Bool)

(assert (=> b!1288756 (= e!826517 (- 0 (size!10486 (left!11070 (c!212057 lt!424405)))))))

(declare-fun d!363136 () Bool)

(declare-fun lt!424497 () C!7348)

(assert (=> d!363136 (= lt!424497 (apply!2779 (list!4789 (c!212057 lt!424405)) 0))))

(assert (=> d!363136 (= lt!424497 e!826520)))

(declare-fun c!212108 () Bool)

(assert (=> d!363136 (= c!212108 ((_ is Leaf!6529) (c!212057 lt!424405)))))

(assert (=> d!363136 e!826518))

(declare-fun res!577718 () Bool)

(assert (=> d!363136 (=> (not res!577718) (not e!826518))))

(assert (=> d!363136 (= res!577718 (<= 0 0))))

(assert (=> d!363136 (= (apply!2780 (c!212057 lt!424405) 0) lt!424497)))

(assert (= (and d!363136 res!577718) b!1288757))

(assert (= (and d!363136 c!212108) b!1288760))

(assert (= (and d!363136 (not c!212108)) b!1288759))

(assert (= (and b!1288759 c!212107) b!1288762))

(assert (= (and b!1288759 (not c!212107)) b!1288761))

(assert (= (or b!1288762 b!1288761) bm!88521))

(assert (= (and bm!88521 c!212109) b!1288758))

(assert (= (and bm!88521 (not c!212109)) b!1288756))

(declare-fun m!1439361 () Bool)

(assert (=> b!1288759 m!1439361))

(declare-fun m!1439363 () Bool)

(assert (=> b!1288759 m!1439363))

(assert (=> b!1288759 m!1439361))

(assert (=> b!1288759 m!1439363))

(declare-fun m!1439365 () Bool)

(assert (=> b!1288759 m!1439365))

(declare-fun m!1439367 () Bool)

(assert (=> b!1288759 m!1439367))

(assert (=> d!363136 m!1439359))

(assert (=> d!363136 m!1439359))

(declare-fun m!1439369 () Bool)

(assert (=> d!363136 m!1439369))

(assert (=> b!1288757 m!1438963))

(declare-fun m!1439371 () Bool)

(assert (=> bm!88521 m!1439371))

(assert (=> b!1288756 m!1439367))

(declare-fun m!1439373 () Bool)

(assert (=> b!1288760 m!1439373))

(assert (=> d!363052 d!363136))

(declare-fun d!363140 () Bool)

(assert (=> d!363140 (= (isEmpty!7631 (originalCharacters!3077 t1!34)) ((_ is Nil!12858) (originalCharacters!3077 t1!34)))))

(assert (=> d!363074 d!363140))

(declare-fun d!363142 () Bool)

(declare-fun c!212115 () Bool)

(assert (=> d!363142 (= c!212115 ((_ is Node!4225) (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))))))

(declare-fun e!826530 () Bool)

(assert (=> d!363142 (= (inv!17278 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))) e!826530)))

(declare-fun b!1288777 () Bool)

(declare-fun inv!17282 (Conc!4225) Bool)

(assert (=> b!1288777 (= e!826530 (inv!17282 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))))))

(declare-fun b!1288778 () Bool)

(declare-fun e!826531 () Bool)

(assert (=> b!1288778 (= e!826530 e!826531)))

(declare-fun res!577723 () Bool)

(assert (=> b!1288778 (= res!577723 (not ((_ is Leaf!6529) (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))))))))

(assert (=> b!1288778 (=> res!577723 e!826531)))

(declare-fun b!1288779 () Bool)

(declare-fun inv!17283 (Conc!4225) Bool)

(assert (=> b!1288779 (= e!826531 (inv!17283 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))))))

(assert (= (and d!363142 c!212115) b!1288777))

(assert (= (and d!363142 (not c!212115)) b!1288778))

(assert (= (and b!1288778 (not res!577723)) b!1288779))

(declare-fun m!1439383 () Bool)

(assert (=> b!1288777 m!1439383))

(declare-fun m!1439385 () Bool)

(assert (=> b!1288779 m!1439385))

(assert (=> b!1288554 d!363142))

(declare-fun d!363152 () Bool)

(declare-fun charsToBigInt!1 (List!12923) Int)

(assert (=> d!363152 (= (inv!17 (value!72760 t1!34)) (= (charsToBigInt!1 (text!16583 (value!72760 t1!34))) (value!72752 (value!72760 t1!34))))))

(declare-fun bs!328328 () Bool)

(assert (= bs!328328 d!363152))

(declare-fun m!1439387 () Bool)

(assert (=> bs!328328 m!1439387))

(assert (=> b!1288459 d!363152))

(declare-fun d!363154 () Bool)

(declare-fun res!577730 () Bool)

(declare-fun e!826539 () Bool)

(assert (=> d!363154 (=> (not res!577730) (not e!826539))))

(assert (=> d!363154 (= res!577730 (validRegex!1516 (regex!2215 (h!18260 rules!2550))))))

(assert (=> d!363154 (= (ruleValid!542 thiss!19762 (h!18260 rules!2550)) e!826539)))

(declare-fun b!1288794 () Bool)

(declare-fun res!577731 () Bool)

(assert (=> b!1288794 (=> (not res!577731) (not e!826539))))

(declare-fun nullable!1118 (Regex!3529) Bool)

(assert (=> b!1288794 (= res!577731 (not (nullable!1118 (regex!2215 (h!18260 rules!2550)))))))

(declare-fun b!1288795 () Bool)

(assert (=> b!1288795 (= e!826539 (not (= (tag!2477 (h!18260 rules!2550)) (String!15762 ""))))))

(assert (= (and d!363154 res!577730) b!1288794))

(assert (= (and b!1288794 res!577731) b!1288795))

(declare-fun m!1439397 () Bool)

(assert (=> d!363154 m!1439397))

(declare-fun m!1439399 () Bool)

(assert (=> b!1288794 m!1439399))

(assert (=> b!1288584 d!363154))

(declare-fun d!363164 () Bool)

(declare-fun charsToBigInt!0 (List!12923 Int) Int)

(assert (=> d!363164 (= (inv!15 (value!72760 t1!34)) (= (charsToBigInt!0 (text!16584 (value!72760 t1!34)) 0) (value!72755 (value!72760 t1!34))))))

(declare-fun bs!328330 () Bool)

(assert (= bs!328330 d!363164))

(declare-fun m!1439401 () Bool)

(assert (=> bs!328330 m!1439401))

(assert (=> b!1288461 d!363164))

(declare-fun d!363166 () Bool)

(declare-fun res!577732 () Bool)

(declare-fun e!826540 () Bool)

(assert (=> d!363166 (=> res!577732 e!826540)))

(assert (=> d!363166 (= res!577732 (not ((_ is Cons!12859) (t!116976 rules!2550))))))

(assert (=> d!363166 (= (sepAndNonSepRulesDisjointChars!588 rules!2550 (t!116976 rules!2550)) e!826540)))

(declare-fun b!1288796 () Bool)

(declare-fun e!826541 () Bool)

(assert (=> b!1288796 (= e!826540 e!826541)))

(declare-fun res!577733 () Bool)

(assert (=> b!1288796 (=> (not res!577733) (not e!826541))))

(assert (=> b!1288796 (= res!577733 (ruleDisjointCharsFromAllFromOtherType!279 (h!18260 (t!116976 rules!2550)) rules!2550))))

(declare-fun b!1288797 () Bool)

(assert (=> b!1288797 (= e!826541 (sepAndNonSepRulesDisjointChars!588 rules!2550 (t!116976 (t!116976 rules!2550))))))

(assert (= (and d!363166 (not res!577732)) b!1288796))

(assert (= (and b!1288796 res!577733) b!1288797))

(declare-fun m!1439405 () Bool)

(assert (=> b!1288796 m!1439405))

(declare-fun m!1439407 () Bool)

(assert (=> b!1288797 m!1439407))

(assert (=> b!1288541 d!363166))

(declare-fun d!363170 () Bool)

(declare-fun c!212119 () Bool)

(assert (=> d!363170 (= c!212119 ((_ is Node!4225) (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))))))

(declare-fun e!826542 () Bool)

(assert (=> d!363170 (= (inv!17278 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))) e!826542)))

(declare-fun b!1288798 () Bool)

(assert (=> b!1288798 (= e!826542 (inv!17282 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))))))

(declare-fun b!1288799 () Bool)

(declare-fun e!826543 () Bool)

(assert (=> b!1288799 (= e!826542 e!826543)))

(declare-fun res!577734 () Bool)

(assert (=> b!1288799 (= res!577734 (not ((_ is Leaf!6529) (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))))))))

(assert (=> b!1288799 (=> res!577734 e!826543)))

(declare-fun b!1288800 () Bool)

(assert (=> b!1288800 (= e!826543 (inv!17283 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))))))

(assert (= (and d!363170 c!212119) b!1288798))

(assert (= (and d!363170 (not c!212119)) b!1288799))

(assert (= (and b!1288799 (not res!577734)) b!1288800))

(declare-fun m!1439409 () Bool)

(assert (=> b!1288798 m!1439409))

(declare-fun m!1439411 () Bool)

(assert (=> b!1288800 m!1439411))

(assert (=> b!1288438 d!363170))

(declare-fun lt!424507 () Bool)

(declare-fun d!363172 () Bool)

(assert (=> d!363172 (= lt!424507 (isEmpty!7631 (list!4787 (_2!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34)))))))))

(assert (=> d!363172 (= lt!424507 (isEmpty!7633 (c!212057 (_2!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34)))))))))

(assert (=> d!363172 (= (isEmpty!7629 (_2!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34))))) lt!424507)))

(declare-fun bs!328333 () Bool)

(assert (= bs!328333 d!363172))

(declare-fun m!1439413 () Bool)

(assert (=> bs!328333 m!1439413))

(assert (=> bs!328333 m!1439413))

(declare-fun m!1439415 () Bool)

(assert (=> bs!328333 m!1439415))

(declare-fun m!1439417 () Bool)

(assert (=> bs!328333 m!1439417))

(assert (=> b!1288535 d!363172))

(declare-fun b!1288801 () Bool)

(declare-fun e!826544 () Bool)

(declare-fun e!826545 () Bool)

(assert (=> b!1288801 (= e!826544 e!826545)))

(declare-fun lt!424508 () tuple2!12644)

(declare-fun res!577736 () Bool)

(assert (=> b!1288801 (= res!577736 (< (size!10484 (_2!7208 lt!424508)) (size!10484 (print!711 thiss!19762 (singletonSeq!788 t2!34)))))))

(assert (=> b!1288801 (=> (not res!577736) (not e!826545))))

(declare-fun b!1288802 () Bool)

(assert (=> b!1288802 (= e!826544 (= (_2!7208 lt!424508) (print!711 thiss!19762 (singletonSeq!788 t2!34))))))

(declare-fun b!1288803 () Bool)

(assert (=> b!1288803 (= e!826545 (not (isEmpty!7634 (_1!7208 lt!424508))))))

(declare-fun d!363174 () Bool)

(declare-fun e!826546 () Bool)

(assert (=> d!363174 e!826546))

(declare-fun res!577737 () Bool)

(assert (=> d!363174 (=> (not res!577737) (not e!826546))))

(assert (=> d!363174 (= res!577737 e!826544)))

(declare-fun c!212120 () Bool)

(assert (=> d!363174 (= c!212120 (> (size!10487 (_1!7208 lt!424508)) 0))))

(assert (=> d!363174 (= lt!424508 (lexTailRecV2!342 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34)) (BalanceConc!8391 Empty!4225) (print!711 thiss!19762 (singletonSeq!788 t2!34)) (BalanceConc!8393 Empty!4226)))))

(assert (=> d!363174 (= (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34))) lt!424508)))

(declare-fun b!1288804 () Bool)

(assert (=> b!1288804 (= e!826546 (= (list!4787 (_2!7208 lt!424508)) (_2!7210 (lexList!493 thiss!19762 rules!2550 (list!4787 (print!711 thiss!19762 (singletonSeq!788 t2!34)))))))))

(declare-fun b!1288805 () Bool)

(declare-fun res!577735 () Bool)

(assert (=> b!1288805 (=> (not res!577735) (not e!826546))))

(assert (=> b!1288805 (= res!577735 (= (list!4788 (_1!7208 lt!424508)) (_1!7210 (lexList!493 thiss!19762 rules!2550 (list!4787 (print!711 thiss!19762 (singletonSeq!788 t2!34)))))))))

(assert (= (and d!363174 c!212120) b!1288801))

(assert (= (and d!363174 (not c!212120)) b!1288802))

(assert (= (and b!1288801 res!577736) b!1288803))

(assert (= (and d!363174 res!577737) b!1288805))

(assert (= (and b!1288805 res!577735) b!1288804))

(declare-fun m!1439421 () Bool)

(assert (=> b!1288801 m!1439421))

(assert (=> b!1288801 m!1439089))

(declare-fun m!1439423 () Bool)

(assert (=> b!1288801 m!1439423))

(declare-fun m!1439425 () Bool)

(assert (=> b!1288805 m!1439425))

(assert (=> b!1288805 m!1439089))

(declare-fun m!1439427 () Bool)

(assert (=> b!1288805 m!1439427))

(assert (=> b!1288805 m!1439427))

(declare-fun m!1439429 () Bool)

(assert (=> b!1288805 m!1439429))

(declare-fun m!1439431 () Bool)

(assert (=> b!1288804 m!1439431))

(assert (=> b!1288804 m!1439089))

(assert (=> b!1288804 m!1439427))

(assert (=> b!1288804 m!1439427))

(assert (=> b!1288804 m!1439429))

(declare-fun m!1439433 () Bool)

(assert (=> b!1288803 m!1439433))

(declare-fun m!1439435 () Bool)

(assert (=> d!363174 m!1439435))

(assert (=> d!363174 m!1439089))

(assert (=> d!363174 m!1439089))

(declare-fun m!1439437 () Bool)

(assert (=> d!363174 m!1439437))

(assert (=> b!1288535 d!363174))

(declare-fun d!363180 () Bool)

(declare-fun lt!424509 () BalanceConc!8390)

(assert (=> d!363180 (= (list!4787 lt!424509) (printList!537 thiss!19762 (list!4788 (singletonSeq!788 t2!34))))))

(assert (=> d!363180 (= lt!424509 (printTailRec!519 thiss!19762 (singletonSeq!788 t2!34) 0 (BalanceConc!8391 Empty!4225)))))

(assert (=> d!363180 (= (print!711 thiss!19762 (singletonSeq!788 t2!34)) lt!424509)))

(declare-fun bs!328335 () Bool)

(assert (= bs!328335 d!363180))

(declare-fun m!1439439 () Bool)

(assert (=> bs!328335 m!1439439))

(assert (=> bs!328335 m!1439087))

(assert (=> bs!328335 m!1439097))

(assert (=> bs!328335 m!1439097))

(declare-fun m!1439441 () Bool)

(assert (=> bs!328335 m!1439441))

(assert (=> bs!328335 m!1439087))

(declare-fun m!1439443 () Bool)

(assert (=> bs!328335 m!1439443))

(assert (=> b!1288535 d!363180))

(declare-fun d!363182 () Bool)

(declare-fun e!826547 () Bool)

(assert (=> d!363182 e!826547))

(declare-fun res!577738 () Bool)

(assert (=> d!363182 (=> (not res!577738) (not e!826547))))

(declare-fun lt!424510 () BalanceConc!8392)

(assert (=> d!363182 (= res!577738 (= (list!4788 lt!424510) (Cons!12861 t2!34 Nil!12861)))))

(assert (=> d!363182 (= lt!424510 (singleton!343 t2!34))))

(assert (=> d!363182 (= (singletonSeq!788 t2!34) lt!424510)))

(declare-fun b!1288806 () Bool)

(assert (=> b!1288806 (= e!826547 (isBalanced!1237 (c!212087 lt!424510)))))

(assert (= (and d!363182 res!577738) b!1288806))

(declare-fun m!1439445 () Bool)

(assert (=> d!363182 m!1439445))

(declare-fun m!1439447 () Bool)

(assert (=> d!363182 m!1439447))

(declare-fun m!1439449 () Bool)

(assert (=> b!1288806 m!1439449))

(assert (=> b!1288535 d!363182))

(declare-fun d!363184 () Bool)

(declare-fun lt!424513 () Token!4092)

(assert (=> d!363184 (= lt!424513 (apply!2784 (list!4788 (_1!7208 lt!424432)) 0))))

(assert (=> d!363184 (= lt!424513 (apply!2785 (c!212087 (_1!7208 lt!424432)) 0))))

(declare-fun e!826548 () Bool)

(assert (=> d!363184 e!826548))

(declare-fun res!577739 () Bool)

(assert (=> d!363184 (=> (not res!577739) (not e!826548))))

(assert (=> d!363184 (= res!577739 (<= 0 0))))

(assert (=> d!363184 (= (apply!2778 (_1!7208 lt!424432) 0) lt!424513)))

(declare-fun b!1288807 () Bool)

(assert (=> b!1288807 (= e!826548 (< 0 (size!10487 (_1!7208 lt!424432))))))

(assert (= (and d!363184 res!577739) b!1288807))

(declare-fun m!1439451 () Bool)

(assert (=> d!363184 m!1439451))

(assert (=> d!363184 m!1439451))

(declare-fun m!1439453 () Bool)

(assert (=> d!363184 m!1439453))

(declare-fun m!1439455 () Bool)

(assert (=> d!363184 m!1439455))

(assert (=> b!1288807 m!1439093))

(assert (=> b!1288533 d!363184))

(declare-fun d!363186 () Bool)

(declare-fun lt!424514 () Int)

(assert (=> d!363186 (>= lt!424514 0)))

(declare-fun e!826549 () Int)

(assert (=> d!363186 (= lt!424514 e!826549)))

(declare-fun c!212121 () Bool)

(assert (=> d!363186 (= c!212121 ((_ is Nil!12858) (list!4787 lt!424405)))))

(assert (=> d!363186 (= (size!10485 (list!4787 lt!424405)) lt!424514)))

(declare-fun b!1288808 () Bool)

(assert (=> b!1288808 (= e!826549 0)))

(declare-fun b!1288809 () Bool)

(assert (=> b!1288809 (= e!826549 (+ 1 (size!10485 (t!116975 (list!4787 lt!424405)))))))

(assert (= (and d!363186 c!212121) b!1288808))

(assert (= (and d!363186 (not c!212121)) b!1288809))

(declare-fun m!1439457 () Bool)

(assert (=> b!1288809 m!1439457))

(assert (=> d!362996 d!363186))

(assert (=> d!362996 d!363134))

(declare-fun d!363188 () Bool)

(declare-fun lt!424518 () Int)

(assert (=> d!363188 (= lt!424518 (size!10485 (list!4789 (c!212057 lt!424405))))))

(assert (=> d!363188 (= lt!424518 (ite ((_ is Empty!4225) (c!212057 lt!424405)) 0 (ite ((_ is Leaf!6529) (c!212057 lt!424405)) (csize!8681 (c!212057 lt!424405)) (csize!8680 (c!212057 lt!424405)))))))

(assert (=> d!363188 (= (size!10486 (c!212057 lt!424405)) lt!424518)))

(declare-fun bs!328337 () Bool)

(assert (= bs!328337 d!363188))

(assert (=> bs!328337 m!1439359))

(assert (=> bs!328337 m!1439359))

(declare-fun m!1439465 () Bool)

(assert (=> bs!328337 m!1439465))

(assert (=> d!362996 d!363188))

(declare-fun d!363192 () Bool)

(assert (=> d!363192 (= (inv!17 (value!72760 t2!34)) (= (charsToBigInt!1 (text!16583 (value!72760 t2!34))) (value!72752 (value!72760 t2!34))))))

(declare-fun bs!328338 () Bool)

(assert (= bs!328338 d!363192))

(declare-fun m!1439467 () Bool)

(assert (=> bs!328338 m!1439467))

(assert (=> b!1288451 d!363192))

(declare-fun d!363194 () Bool)

(declare-fun lostCauseFct!96 (Regex!3529) Bool)

(assert (=> d!363194 (= (lostCause!243 lt!424406) (lostCauseFct!96 lt!424406))))

(declare-fun bs!328339 () Bool)

(assert (= bs!328339 d!363194))

(declare-fun m!1439469 () Bool)

(assert (=> bs!328339 m!1439469))

(assert (=> b!1288549 d!363194))

(declare-fun bs!328340 () Bool)

(declare-fun d!363196 () Bool)

(assert (= bs!328340 (and d!363196 d!363106)))

(declare-fun lambda!50565 () Int)

(assert (=> bs!328340 (= (= (toValue!3406 (transformation!2215 (rule!3954 t2!34))) (toValue!3406 (transformation!2215 (h!18260 rules!2550)))) (= lambda!50565 lambda!50557))))

(assert (=> d!363196 true))

(assert (=> d!363196 (< (dynLambda!5609 order!7831 (toValue!3406 (transformation!2215 (rule!3954 t2!34)))) (dynLambda!5610 order!7833 lambda!50565))))

(assert (=> d!363196 (= (equivClasses!795 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (toValue!3406 (transformation!2215 (rule!3954 t2!34)))) (Forall2!402 lambda!50565))))

(declare-fun bs!328341 () Bool)

(assert (= bs!328341 d!363196))

(declare-fun m!1439471 () Bool)

(assert (=> bs!328341 m!1439471))

(assert (=> b!1288544 d!363196))

(declare-fun d!363198 () Bool)

(declare-fun isBalanced!1238 (Conc!4225) Bool)

(assert (=> d!363198 (= (inv!17279 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))) (isBalanced!1238 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))))))

(declare-fun bs!328342 () Bool)

(assert (= bs!328342 d!363198))

(declare-fun m!1439473 () Bool)

(assert (=> bs!328342 m!1439473))

(assert (=> tb!69209 d!363198))

(declare-fun d!363200 () Bool)

(assert (=> d!363200 (= (inv!15 (value!72760 t2!34)) (= (charsToBigInt!0 (text!16584 (value!72760 t2!34)) 0) (value!72755 (value!72760 t2!34))))))

(declare-fun bs!328343 () Bool)

(assert (= bs!328343 d!363200))

(declare-fun m!1439475 () Bool)

(assert (=> bs!328343 m!1439475))

(assert (=> b!1288453 d!363200))

(declare-fun d!363202 () Bool)

(declare-fun res!577752 () Bool)

(declare-fun e!826556 () Bool)

(assert (=> d!363202 (=> res!577752 e!826556)))

(assert (=> d!363202 (= res!577752 ((_ is Nil!12859) rules!2550))))

(assert (=> d!363202 (= (noDuplicateTag!805 thiss!19762 rules!2550 Nil!12860) e!826556)))

(declare-fun b!1288822 () Bool)

(declare-fun e!826557 () Bool)

(assert (=> b!1288822 (= e!826556 e!826557)))

(declare-fun res!577753 () Bool)

(assert (=> b!1288822 (=> (not res!577753) (not e!826557))))

(declare-fun contains!2149 (List!12926 String!15761) Bool)

(assert (=> b!1288822 (= res!577753 (not (contains!2149 Nil!12860 (tag!2477 (h!18260 rules!2550)))))))

(declare-fun b!1288823 () Bool)

(assert (=> b!1288823 (= e!826557 (noDuplicateTag!805 thiss!19762 (t!116976 rules!2550) (Cons!12860 (tag!2477 (h!18260 rules!2550)) Nil!12860)))))

(assert (= (and d!363202 (not res!577752)) b!1288822))

(assert (= (and b!1288822 res!577753) b!1288823))

(declare-fun m!1439477 () Bool)

(assert (=> b!1288822 m!1439477))

(declare-fun m!1439479 () Bool)

(assert (=> b!1288823 m!1439479))

(assert (=> b!1288456 d!363202))

(declare-fun d!363204 () Bool)

(declare-fun lt!424524 () Int)

(declare-fun size!10491 (List!12927) Int)

(assert (=> d!363204 (= lt!424524 (size!10491 (list!4788 (_1!7208 lt!424432))))))

(declare-fun size!10492 (Conc!4226) Int)

(assert (=> d!363204 (= lt!424524 (size!10492 (c!212087 (_1!7208 lt!424432))))))

(assert (=> d!363204 (= (size!10487 (_1!7208 lt!424432)) lt!424524)))

(declare-fun bs!328344 () Bool)

(assert (= bs!328344 d!363204))

(assert (=> bs!328344 m!1439451))

(assert (=> bs!328344 m!1439451))

(declare-fun m!1439481 () Bool)

(assert (=> bs!328344 m!1439481))

(declare-fun m!1439483 () Bool)

(assert (=> bs!328344 m!1439483))

(assert (=> d!363008 d!363204))

(declare-fun d!363206 () Bool)

(declare-fun list!4792 (Conc!4226) List!12927)

(assert (=> d!363206 (= (list!4788 (_1!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34))))) (list!4792 (c!212087 (_1!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t2!34)))))))))

(declare-fun bs!328345 () Bool)

(assert (= bs!328345 d!363206))

(declare-fun m!1439505 () Bool)

(assert (=> bs!328345 m!1439505))

(assert (=> d!363008 d!363206))

(assert (=> d!363008 d!363180))

(assert (=> d!363008 d!363182))

(assert (=> d!363008 d!363000))

(assert (=> d!363008 d!363174))

(declare-fun d!363208 () Bool)

(assert (=> d!363208 (= (list!4788 (singletonSeq!788 t2!34)) (list!4792 (c!212087 (singletonSeq!788 t2!34))))))

(declare-fun bs!328346 () Bool)

(assert (= bs!328346 d!363208))

(declare-fun m!1439507 () Bool)

(assert (=> bs!328346 m!1439507))

(assert (=> d!363008 d!363208))

(declare-fun bs!328347 () Bool)

(declare-fun d!363212 () Bool)

(assert (= bs!328347 (and d!363212 d!363104)))

(declare-fun lambda!50566 () Int)

(assert (=> bs!328347 (= (and (= (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toChars!3265 (transformation!2215 (rule!3954 t2!34)))) (= (toValue!3406 (transformation!2215 (h!18260 rules!2550))) (toValue!3406 (transformation!2215 (rule!3954 t2!34))))) (= lambda!50566 lambda!50554))))

(declare-fun bs!328348 () Bool)

(assert (= bs!328348 (and d!363212 d!363120)))

(assert (=> bs!328348 (= (and (= (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toChars!3265 (transformation!2215 (rule!3954 t1!34)))) (= (toValue!3406 (transformation!2215 (h!18260 rules!2550))) (toValue!3406 (transformation!2215 (rule!3954 t1!34))))) (= lambda!50566 lambda!50558))))

(assert (=> d!363212 true))

(assert (=> d!363212 (< (dynLambda!5607 order!7827 (toChars!3265 (transformation!2215 (h!18260 rules!2550)))) (dynLambda!5608 order!7829 lambda!50566))))

(assert (=> d!363212 true))

(assert (=> d!363212 (< (dynLambda!5609 order!7831 (toValue!3406 (transformation!2215 (h!18260 rules!2550)))) (dynLambda!5608 order!7829 lambda!50566))))

(assert (=> d!363212 (= (semiInverseModEq!836 (toChars!3265 (transformation!2215 (h!18260 rules!2550))) (toValue!3406 (transformation!2215 (h!18260 rules!2550)))) (Forall!500 lambda!50566))))

(declare-fun bs!328349 () Bool)

(assert (= bs!328349 d!363212))

(declare-fun m!1439509 () Bool)

(assert (=> bs!328349 m!1439509))

(assert (=> d!363072 d!363212))

(declare-fun d!363214 () Bool)

(assert (=> d!363214 (= (isEmpty!7631 lt!424407) ((_ is Nil!12858) lt!424407))))

(assert (=> d!363050 d!363214))

(declare-fun d!363216 () Bool)

(assert (=> d!363216 (= (inv!17279 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))) (isBalanced!1238 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))))))

(declare-fun bs!328350 () Bool)

(assert (= bs!328350 d!363216))

(declare-fun m!1439511 () Bool)

(assert (=> bs!328350 m!1439511))

(assert (=> tb!69227 d!363216))

(declare-fun d!363218 () Bool)

(declare-fun lt!424525 () Bool)

(assert (=> d!363218 (= lt!424525 (isEmpty!7631 (list!4787 (_2!7208 lt!424444))))))

(assert (=> d!363218 (= lt!424525 (isEmpty!7633 (c!212057 (_2!7208 lt!424444))))))

(assert (=> d!363218 (= (isEmpty!7629 (_2!7208 lt!424444)) lt!424525)))

(declare-fun bs!328351 () Bool)

(assert (= bs!328351 d!363218))

(declare-fun m!1439513 () Bool)

(assert (=> bs!328351 m!1439513))

(assert (=> bs!328351 m!1439513))

(declare-fun m!1439515 () Bool)

(assert (=> bs!328351 m!1439515))

(declare-fun m!1439517 () Bool)

(assert (=> bs!328351 m!1439517))

(assert (=> b!1288569 d!363218))

(assert (=> b!1288553 d!362996))

(declare-fun b!1288828 () Bool)

(declare-fun e!826560 () List!12924)

(assert (=> b!1288828 (= e!826560 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858))))

(declare-fun e!826559 () Bool)

(declare-fun b!1288831 () Bool)

(declare-fun lt!424526 () List!12924)

(assert (=> b!1288831 (= e!826559 (or (not (= (Cons!12858 (apply!2777 lt!424405 0) Nil!12858) Nil!12858)) (= lt!424526 (t!116975 (list!4787 (charsOf!1187 t1!34))))))))

(declare-fun d!363220 () Bool)

(assert (=> d!363220 e!826559))

(declare-fun res!577759 () Bool)

(assert (=> d!363220 (=> (not res!577759) (not e!826559))))

(assert (=> d!363220 (= res!577759 (= (content!1816 lt!424526) ((_ map or) (content!1816 (t!116975 (list!4787 (charsOf!1187 t1!34)))) (content!1816 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))))

(assert (=> d!363220 (= lt!424526 e!826560)))

(declare-fun c!212125 () Bool)

(assert (=> d!363220 (= c!212125 ((_ is Nil!12858) (t!116975 (list!4787 (charsOf!1187 t1!34)))))))

(assert (=> d!363220 (= (++!3251 (t!116975 (list!4787 (charsOf!1187 t1!34))) (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)) lt!424526)))

(declare-fun b!1288830 () Bool)

(declare-fun res!577758 () Bool)

(assert (=> b!1288830 (=> (not res!577758) (not e!826559))))

(assert (=> b!1288830 (= res!577758 (= (size!10485 lt!424526) (+ (size!10485 (t!116975 (list!4787 (charsOf!1187 t1!34)))) (size!10485 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))))

(declare-fun b!1288829 () Bool)

(assert (=> b!1288829 (= e!826560 (Cons!12858 (h!18259 (t!116975 (list!4787 (charsOf!1187 t1!34)))) (++!3251 (t!116975 (t!116975 (list!4787 (charsOf!1187 t1!34)))) (Cons!12858 (apply!2777 lt!424405 0) Nil!12858))))))

(assert (= (and d!363220 c!212125) b!1288828))

(assert (= (and d!363220 (not c!212125)) b!1288829))

(assert (= (and d!363220 res!577759) b!1288830))

(assert (= (and b!1288830 res!577758) b!1288831))

(declare-fun m!1439519 () Bool)

(assert (=> d!363220 m!1439519))

(declare-fun m!1439521 () Bool)

(assert (=> d!363220 m!1439521))

(assert (=> d!363220 m!1439143))

(declare-fun m!1439523 () Bool)

(assert (=> b!1288830 m!1439523))

(assert (=> b!1288830 m!1439345))

(assert (=> b!1288830 m!1439149))

(declare-fun m!1439525 () Bool)

(assert (=> b!1288829 m!1439525))

(assert (=> b!1288564 d!363220))

(declare-fun b!1288841 () Bool)

(declare-fun res!577768 () Bool)

(declare-fun e!826563 () Bool)

(assert (=> b!1288841 (=> (not res!577768) (not e!826563))))

(declare-fun height!602 (Conc!4225) Int)

(declare-fun ++!3254 (Conc!4225 Conc!4225) Conc!4225)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1288841 (= res!577768 (<= (height!602 (++!3254 (c!212057 (charsOf!1187 t1!34)) (c!212057 (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))))) (+ (max!0 (height!602 (c!212057 (charsOf!1187 t1!34))) (height!602 (c!212057 (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))))) 1)))))

(declare-fun b!1288840 () Bool)

(declare-fun res!577769 () Bool)

(assert (=> b!1288840 (=> (not res!577769) (not e!826563))))

(assert (=> b!1288840 (= res!577769 (isBalanced!1238 (++!3254 (c!212057 (charsOf!1187 t1!34)) (c!212057 (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))))))))

(declare-fun lt!424529 () BalanceConc!8390)

(declare-fun b!1288843 () Bool)

(assert (=> b!1288843 (= e!826563 (= (list!4787 lt!424529) (++!3251 (list!4787 (charsOf!1187 t1!34)) (list!4787 (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))))))))

(declare-fun b!1288842 () Bool)

(declare-fun res!577771 () Bool)

(assert (=> b!1288842 (=> (not res!577771) (not e!826563))))

(assert (=> b!1288842 (= res!577771 (>= (height!602 (++!3254 (c!212057 (charsOf!1187 t1!34)) (c!212057 (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))))) (max!0 (height!602 (c!212057 (charsOf!1187 t1!34))) (height!602 (c!212057 (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0)))))))))

(declare-fun d!363222 () Bool)

(assert (=> d!363222 e!826563))

(declare-fun res!577770 () Bool)

(assert (=> d!363222 (=> (not res!577770) (not e!826563))))

(declare-fun appendAssocInst!242 (Conc!4225 Conc!4225) Bool)

(assert (=> d!363222 (= res!577770 (appendAssocInst!242 (c!212057 (charsOf!1187 t1!34)) (c!212057 (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0)))))))

(assert (=> d!363222 (= lt!424529 (BalanceConc!8391 (++!3254 (c!212057 (charsOf!1187 t1!34)) (c!212057 (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))))))))

(assert (=> d!363222 (= (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))) lt!424529)))

(assert (= (and d!363222 res!577770) b!1288840))

(assert (= (and b!1288840 res!577769) b!1288841))

(assert (= (and b!1288841 res!577768) b!1288842))

(assert (= (and b!1288842 res!577771) b!1288843))

(declare-fun m!1439527 () Bool)

(assert (=> b!1288843 m!1439527))

(assert (=> b!1288843 m!1438933))

(assert (=> b!1288843 m!1438935))

(assert (=> b!1288843 m!1439187))

(declare-fun m!1439529 () Bool)

(assert (=> b!1288843 m!1439529))

(assert (=> b!1288843 m!1438935))

(assert (=> b!1288843 m!1439529))

(declare-fun m!1439531 () Bool)

(assert (=> b!1288843 m!1439531))

(declare-fun m!1439533 () Bool)

(assert (=> b!1288842 m!1439533))

(declare-fun m!1439535 () Bool)

(assert (=> b!1288842 m!1439535))

(declare-fun m!1439537 () Bool)

(assert (=> b!1288842 m!1439537))

(declare-fun m!1439539 () Bool)

(assert (=> b!1288842 m!1439539))

(assert (=> b!1288842 m!1439535))

(assert (=> b!1288842 m!1439539))

(assert (=> b!1288842 m!1439533))

(declare-fun m!1439541 () Bool)

(assert (=> b!1288842 m!1439541))

(declare-fun m!1439543 () Bool)

(assert (=> d!363222 m!1439543))

(assert (=> d!363222 m!1439535))

(assert (=> b!1288840 m!1439535))

(assert (=> b!1288840 m!1439535))

(declare-fun m!1439545 () Bool)

(assert (=> b!1288840 m!1439545))

(assert (=> b!1288841 m!1439533))

(assert (=> b!1288841 m!1439535))

(assert (=> b!1288841 m!1439537))

(assert (=> b!1288841 m!1439539))

(assert (=> b!1288841 m!1439535))

(assert (=> b!1288841 m!1439539))

(assert (=> b!1288841 m!1439533))

(assert (=> b!1288841 m!1439541))

(assert (=> d!363068 d!363222))

(declare-fun lt!424584 () Bool)

(declare-fun d!363224 () Bool)

(assert (=> d!363224 (= lt!424584 (prefixMatch!42 (rulesRegex!100 thiss!19762 rules!2550) (list!4787 (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))))))))

(declare-datatypes ((Context!1128 0))(
  ( (Context!1129 (exprs!1064 List!12928)) )
))
(declare-fun prefixMatchZipperSequence!130 ((InoxSet Context!1128) BalanceConc!8390 Int) Bool)

(declare-fun focus!55 (Regex!3529) (InoxSet Context!1128))

(assert (=> d!363224 (= lt!424584 (prefixMatchZipperSequence!130 (focus!55 (rulesRegex!100 thiss!19762 rules!2550)) (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))) 0))))

(declare-fun lt!424586 () Unit!19032)

(declare-fun lt!424588 () Unit!19032)

(assert (=> d!363224 (= lt!424586 lt!424588)))

(declare-fun lt!424585 () (InoxSet Context!1128))

(declare-fun lt!424591 () List!12924)

(declare-fun prefixMatchZipper!35 ((InoxSet Context!1128) List!12924) Bool)

(assert (=> d!363224 (= (prefixMatch!42 (rulesRegex!100 thiss!19762 rules!2550) lt!424591) (prefixMatchZipper!35 lt!424585 lt!424591))))

(declare-datatypes ((List!12932 0))(
  ( (Nil!12866) (Cons!12866 (h!18267 Context!1128) (t!117035 List!12932)) )
))
(declare-fun lt!424590 () List!12932)

(declare-fun prefixMatchZipperRegexEquiv!35 ((InoxSet Context!1128) List!12932 Regex!3529 List!12924) Unit!19032)

(assert (=> d!363224 (= lt!424588 (prefixMatchZipperRegexEquiv!35 lt!424585 lt!424590 (rulesRegex!100 thiss!19762 rules!2550) lt!424591))))

(assert (=> d!363224 (= lt!424591 (list!4787 (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0)))))))

(declare-fun toList!719 ((InoxSet Context!1128)) List!12932)

(assert (=> d!363224 (= lt!424590 (toList!719 (focus!55 (rulesRegex!100 thiss!19762 rules!2550))))))

(assert (=> d!363224 (= lt!424585 (focus!55 (rulesRegex!100 thiss!19762 rules!2550)))))

(declare-fun lt!424592 () Unit!19032)

(declare-fun lt!424587 () Unit!19032)

(assert (=> d!363224 (= lt!424592 lt!424587)))

(declare-fun lt!424593 () (InoxSet Context!1128))

(declare-fun lt!424589 () Int)

(declare-fun dropList!345 (BalanceConc!8390 Int) List!12924)

(assert (=> d!363224 (= (prefixMatchZipper!35 lt!424593 (dropList!345 (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))) lt!424589)) (prefixMatchZipperSequence!130 lt!424593 (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))) lt!424589))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!35 ((InoxSet Context!1128) BalanceConc!8390 Int) Unit!19032)

(assert (=> d!363224 (= lt!424587 (lemmaprefixMatchZipperSequenceEquivalent!35 lt!424593 (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0))) lt!424589))))

(assert (=> d!363224 (= lt!424589 0)))

(assert (=> d!363224 (= lt!424593 (focus!55 (rulesRegex!100 thiss!19762 rules!2550)))))

(assert (=> d!363224 (validRegex!1516 (rulesRegex!100 thiss!19762 rules!2550))))

(assert (=> d!363224 (= (prefixMatchZipperSequence!129 (rulesRegex!100 thiss!19762 rules!2550) (++!3253 (charsOf!1187 t1!34) (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0)))) lt!424584)))

(declare-fun bs!328354 () Bool)

(assert (= bs!328354 d!363224))

(assert (=> bs!328354 m!1439181))

(declare-fun m!1439589 () Bool)

(assert (=> bs!328354 m!1439589))

(declare-fun m!1439591 () Bool)

(assert (=> bs!328354 m!1439591))

(assert (=> bs!328354 m!1439181))

(declare-fun m!1439593 () Bool)

(assert (=> bs!328354 m!1439593))

(assert (=> bs!328354 m!1439181))

(declare-fun m!1439595 () Bool)

(assert (=> bs!328354 m!1439595))

(assert (=> bs!328354 m!1439593))

(declare-fun m!1439597 () Bool)

(assert (=> bs!328354 m!1439597))

(assert (=> bs!328354 m!1438937))

(declare-fun m!1439599 () Bool)

(assert (=> bs!328354 m!1439599))

(assert (=> bs!328354 m!1438937))

(assert (=> bs!328354 m!1439589))

(declare-fun m!1439601 () Bool)

(assert (=> bs!328354 m!1439601))

(assert (=> bs!328354 m!1438937))

(declare-fun m!1439603 () Bool)

(assert (=> bs!328354 m!1439603))

(declare-fun m!1439605 () Bool)

(assert (=> bs!328354 m!1439605))

(assert (=> bs!328354 m!1439181))

(declare-fun m!1439607 () Bool)

(assert (=> bs!328354 m!1439607))

(assert (=> bs!328354 m!1438937))

(assert (=> bs!328354 m!1439605))

(assert (=> bs!328354 m!1438937))

(declare-fun m!1439609 () Bool)

(assert (=> bs!328354 m!1439609))

(assert (=> bs!328354 m!1439605))

(declare-fun m!1439611 () Bool)

(assert (=> bs!328354 m!1439611))

(assert (=> bs!328354 m!1439181))

(declare-fun m!1439613 () Bool)

(assert (=> bs!328354 m!1439613))

(assert (=> d!363068 d!363224))

(declare-fun d!363234 () Bool)

(declare-fun e!826570 () Bool)

(assert (=> d!363234 e!826570))

(declare-fun res!577778 () Bool)

(assert (=> d!363234 (=> (not res!577778) (not e!826570))))

(declare-fun lt!424596 () BalanceConc!8390)

(assert (=> d!363234 (= res!577778 (= (list!4787 lt!424596) (Cons!12858 (apply!2777 (charsOf!1187 t2!34) 0) Nil!12858)))))

(declare-fun singleton!344 (C!7348) BalanceConc!8390)

(assert (=> d!363234 (= lt!424596 (singleton!344 (apply!2777 (charsOf!1187 t2!34) 0)))))

(assert (=> d!363234 (= (singletonSeq!790 (apply!2777 (charsOf!1187 t2!34) 0)) lt!424596)))

(declare-fun b!1288854 () Bool)

(assert (=> b!1288854 (= e!826570 (isBalanced!1238 (c!212057 lt!424596)))))

(assert (= (and d!363234 res!577778) b!1288854))

(declare-fun m!1439617 () Bool)

(assert (=> d!363234 m!1439617))

(assert (=> d!363234 m!1439185))

(declare-fun m!1439619 () Bool)

(assert (=> d!363234 m!1439619))

(declare-fun m!1439621 () Bool)

(assert (=> b!1288854 m!1439621))

(assert (=> d!363068 d!363234))

(assert (=> d!363068 d!363060))

(declare-fun d!363238 () Bool)

(declare-fun lt!424597 () C!7348)

(assert (=> d!363238 (= lt!424597 (apply!2779 (list!4787 (charsOf!1187 t2!34)) 0))))

(assert (=> d!363238 (= lt!424597 (apply!2780 (c!212057 (charsOf!1187 t2!34)) 0))))

(declare-fun e!826571 () Bool)

(assert (=> d!363238 e!826571))

(declare-fun res!577779 () Bool)

(assert (=> d!363238 (=> (not res!577779) (not e!826571))))

(assert (=> d!363238 (= res!577779 (<= 0 0))))

(assert (=> d!363238 (= (apply!2777 (charsOf!1187 t2!34) 0) lt!424597)))

(declare-fun b!1288855 () Bool)

(assert (=> b!1288855 (= e!826571 (< 0 (size!10484 (charsOf!1187 t2!34))))))

(assert (= (and d!363238 res!577779) b!1288855))

(assert (=> d!363238 m!1438913))

(declare-fun m!1439623 () Bool)

(assert (=> d!363238 m!1439623))

(assert (=> d!363238 m!1439623))

(declare-fun m!1439625 () Bool)

(assert (=> d!363238 m!1439625))

(declare-fun m!1439627 () Bool)

(assert (=> d!363238 m!1439627))

(assert (=> b!1288855 m!1438913))

(declare-fun m!1439629 () Bool)

(assert (=> b!1288855 m!1439629))

(assert (=> d!363068 d!363238))

(assert (=> d!363068 d!363056))

(assert (=> d!363068 d!362998))

(declare-fun d!363240 () Bool)

(declare-fun lt!424598 () Int)

(assert (=> d!363240 (>= lt!424598 0)))

(declare-fun e!826572 () Int)

(assert (=> d!363240 (= lt!424598 e!826572)))

(declare-fun c!212129 () Bool)

(assert (=> d!363240 (= c!212129 ((_ is Nil!12858) (originalCharacters!3077 t2!34)))))

(assert (=> d!363240 (= (size!10485 (originalCharacters!3077 t2!34)) lt!424598)))

(declare-fun b!1288856 () Bool)

(assert (=> b!1288856 (= e!826572 0)))

(declare-fun b!1288857 () Bool)

(assert (=> b!1288857 (= e!826572 (+ 1 (size!10485 (t!116975 (originalCharacters!3077 t2!34)))))))

(assert (= (and d!363240 c!212129) b!1288856))

(assert (= (and d!363240 (not c!212129)) b!1288857))

(declare-fun m!1439633 () Bool)

(assert (=> b!1288857 m!1439633))

(assert (=> b!1288579 d!363240))

(declare-fun d!363244 () Bool)

(declare-fun lt!424599 () Int)

(assert (=> d!363244 (>= lt!424599 0)))

(declare-fun e!826573 () Int)

(assert (=> d!363244 (= lt!424599 e!826573)))

(declare-fun c!212130 () Bool)

(assert (=> d!363244 (= c!212130 ((_ is Nil!12858) (originalCharacters!3077 t1!34)))))

(assert (=> d!363244 (= (size!10485 (originalCharacters!3077 t1!34)) lt!424599)))

(declare-fun b!1288858 () Bool)

(assert (=> b!1288858 (= e!826573 0)))

(declare-fun b!1288859 () Bool)

(assert (=> b!1288859 (= e!826573 (+ 1 (size!10485 (t!116975 (originalCharacters!3077 t1!34)))))))

(assert (= (and d!363244 c!212130) b!1288858))

(assert (= (and d!363244 (not c!212130)) b!1288859))

(declare-fun m!1439635 () Bool)

(assert (=> b!1288859 m!1439635))

(assert (=> b!1288577 d!363244))

(declare-fun d!363246 () Bool)

(assert (=> d!363246 true))

(assert (=> d!363246 true))

(declare-fun res!577782 () Bool)

(assert (=> d!363246 (= (choose!7909 lambda!50533) res!577782)))

(assert (=> d!363080 d!363246))

(declare-fun bs!328357 () Bool)

(declare-fun d!363248 () Bool)

(assert (= bs!328357 (and d!363248 d!363078)))

(declare-fun lambda!50572 () Int)

(assert (=> bs!328357 (= lambda!50572 lambda!50542)))

(assert (=> d!363248 true))

(declare-fun lt!424602 () Bool)

(assert (=> d!363248 (= lt!424602 (rulesValidInductive!700 thiss!19762 rules!2550))))

(assert (=> d!363248 (= lt!424602 (forall!3242 rules!2550 lambda!50572))))

(assert (=> d!363248 (= (rulesValid!805 thiss!19762 rules!2550) lt!424602)))

(declare-fun bs!328358 () Bool)

(assert (= bs!328358 d!363248))

(assert (=> bs!328358 m!1438905))

(declare-fun m!1439641 () Bool)

(assert (=> bs!328358 m!1439641))

(assert (=> d!363004 d!363248))

(declare-fun b!1288874 () Bool)

(declare-fun e!826581 () List!12924)

(assert (=> b!1288874 (= e!826581 Nil!12858)))

(declare-fun b!1288876 () Bool)

(declare-fun e!826582 () List!12924)

(declare-fun list!4793 (IArray!8455) List!12924)

(assert (=> b!1288876 (= e!826582 (list!4793 (xs!6936 (c!212057 (charsOf!1187 t1!34)))))))

(declare-fun d!363252 () Bool)

(declare-fun c!212135 () Bool)

(assert (=> d!363252 (= c!212135 ((_ is Empty!4225) (c!212057 (charsOf!1187 t1!34))))))

(assert (=> d!363252 (= (list!4789 (c!212057 (charsOf!1187 t1!34))) e!826581)))

(declare-fun b!1288875 () Bool)

(assert (=> b!1288875 (= e!826581 e!826582)))

(declare-fun c!212136 () Bool)

(assert (=> b!1288875 (= c!212136 ((_ is Leaf!6529) (c!212057 (charsOf!1187 t1!34))))))

(declare-fun b!1288877 () Bool)

(assert (=> b!1288877 (= e!826582 (++!3251 (list!4789 (left!11070 (c!212057 (charsOf!1187 t1!34)))) (list!4789 (right!11400 (c!212057 (charsOf!1187 t1!34))))))))

(assert (= (and d!363252 c!212135) b!1288874))

(assert (= (and d!363252 (not c!212135)) b!1288875))

(assert (= (and b!1288875 c!212136) b!1288876))

(assert (= (and b!1288875 (not c!212136)) b!1288877))

(declare-fun m!1439647 () Bool)

(assert (=> b!1288876 m!1439647))

(declare-fun m!1439649 () Bool)

(assert (=> b!1288877 m!1439649))

(declare-fun m!1439651 () Bool)

(assert (=> b!1288877 m!1439651))

(assert (=> b!1288877 m!1439649))

(assert (=> b!1288877 m!1439651))

(declare-fun m!1439653 () Bool)

(assert (=> b!1288877 m!1439653))

(assert (=> d!363054 d!363252))

(declare-fun bs!328362 () Bool)

(declare-fun d!363258 () Bool)

(assert (= bs!328362 (and d!363258 d!363106)))

(declare-fun lambda!50574 () Int)

(assert (=> bs!328362 (= (= (toValue!3406 (transformation!2215 (rule!3954 t1!34))) (toValue!3406 (transformation!2215 (h!18260 rules!2550)))) (= lambda!50574 lambda!50557))))

(declare-fun bs!328363 () Bool)

(assert (= bs!328363 (and d!363258 d!363196)))

(assert (=> bs!328363 (= (= (toValue!3406 (transformation!2215 (rule!3954 t1!34))) (toValue!3406 (transformation!2215 (rule!3954 t2!34)))) (= lambda!50574 lambda!50565))))

(assert (=> d!363258 true))

(assert (=> d!363258 (< (dynLambda!5609 order!7831 (toValue!3406 (transformation!2215 (rule!3954 t1!34)))) (dynLambda!5610 order!7833 lambda!50574))))

(assert (=> d!363258 (= (equivClasses!795 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (toValue!3406 (transformation!2215 (rule!3954 t1!34)))) (Forall2!402 lambda!50574))))

(declare-fun bs!328364 () Bool)

(assert (= bs!328364 d!363258))

(declare-fun m!1439655 () Bool)

(assert (=> bs!328364 m!1439655))

(assert (=> b!1288567 d!363258))

(declare-fun d!363260 () Bool)

(declare-fun c!212145 () Bool)

(assert (=> d!363260 (= c!212145 ((_ is Nil!12858) lt!424439))))

(declare-fun e!826591 () (InoxSet C!7348))

(assert (=> d!363260 (= (content!1816 lt!424439) e!826591)))

(declare-fun b!1288894 () Bool)

(assert (=> b!1288894 (= e!826591 ((as const (Array C!7348 Bool)) false))))

(declare-fun b!1288895 () Bool)

(assert (=> b!1288895 (= e!826591 ((_ map or) (store ((as const (Array C!7348 Bool)) false) (h!18259 lt!424439) true) (content!1816 (t!116975 lt!424439))))))

(assert (= (and d!363260 c!212145) b!1288894))

(assert (= (and d!363260 (not c!212145)) b!1288895))

(declare-fun m!1439665 () Bool)

(assert (=> b!1288895 m!1439665))

(declare-fun m!1439667 () Bool)

(assert (=> b!1288895 m!1439667))

(assert (=> d!363058 d!363260))

(declare-fun d!363266 () Bool)

(declare-fun c!212146 () Bool)

(assert (=> d!363266 (= c!212146 ((_ is Nil!12858) (list!4787 (charsOf!1187 t1!34))))))

(declare-fun e!826592 () (InoxSet C!7348))

(assert (=> d!363266 (= (content!1816 (list!4787 (charsOf!1187 t1!34))) e!826592)))

(declare-fun b!1288896 () Bool)

(assert (=> b!1288896 (= e!826592 ((as const (Array C!7348 Bool)) false))))

(declare-fun b!1288897 () Bool)

(assert (=> b!1288897 (= e!826592 ((_ map or) (store ((as const (Array C!7348 Bool)) false) (h!18259 (list!4787 (charsOf!1187 t1!34))) true) (content!1816 (t!116975 (list!4787 (charsOf!1187 t1!34))))))))

(assert (= (and d!363266 c!212146) b!1288896))

(assert (= (and d!363266 (not c!212146)) b!1288897))

(declare-fun m!1439669 () Bool)

(assert (=> b!1288897 m!1439669))

(assert (=> b!1288897 m!1439521))

(assert (=> d!363058 d!363266))

(declare-fun d!363268 () Bool)

(declare-fun c!212147 () Bool)

(assert (=> d!363268 (= c!212147 ((_ is Nil!12858) (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))

(declare-fun e!826593 () (InoxSet C!7348))

(assert (=> d!363268 (= (content!1816 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)) e!826593)))

(declare-fun b!1288898 () Bool)

(assert (=> b!1288898 (= e!826593 ((as const (Array C!7348 Bool)) false))))

(declare-fun b!1288899 () Bool)

(assert (=> b!1288899 (= e!826593 ((_ map or) (store ((as const (Array C!7348 Bool)) false) (h!18259 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)) true) (content!1816 (t!116975 (Cons!12858 (apply!2777 lt!424405 0) Nil!12858)))))))

(assert (= (and d!363268 c!212147) b!1288898))

(assert (= (and d!363268 (not c!212147)) b!1288899))

(declare-fun m!1439671 () Bool)

(assert (=> b!1288899 m!1439671))

(declare-fun m!1439673 () Bool)

(assert (=> b!1288899 m!1439673))

(assert (=> d!363058 d!363268))

(declare-fun d!363270 () Bool)

(assert (=> d!363270 (= (Exists!687 lambda!50545) (choose!7909 lambda!50545))))

(declare-fun bs!328365 () Bool)

(assert (= bs!328365 d!363270))

(declare-fun m!1439675 () Bool)

(assert (=> bs!328365 m!1439675))

(assert (=> d!363082 d!363270))

(declare-fun bs!328366 () Bool)

(declare-fun d!363272 () Bool)

(assert (= bs!328366 (and d!363272 b!1288419)))

(declare-fun lambda!50577 () Int)

(assert (=> bs!328366 (= lambda!50577 lambda!50533)))

(declare-fun bs!328367 () Bool)

(assert (= bs!328367 (and d!363272 d!363082)))

(assert (=> bs!328367 (= lambda!50577 lambda!50545)))

(assert (=> d!363272 true))

(assert (=> d!363272 true))

(assert (=> d!363272 (Exists!687 lambda!50577)))

(assert (=> d!363272 true))

(declare-fun _$103!26 () Unit!19032)

(assert (=> d!363272 (= (choose!7910 lt!424406 lt!424407) _$103!26)))

(declare-fun bs!328368 () Bool)

(assert (= bs!328368 d!363272))

(declare-fun m!1439677 () Bool)

(assert (=> bs!328368 m!1439677))

(assert (=> d!363082 d!363272))

(declare-fun b!1288925 () Bool)

(declare-fun e!826620 () Bool)

(declare-fun e!826619 () Bool)

(assert (=> b!1288925 (= e!826620 e!826619)))

(declare-fun c!212153 () Bool)

(assert (=> b!1288925 (= c!212153 ((_ is Star!3529) lt!424406))))

(declare-fun bm!88528 () Bool)

(declare-fun call!88533 () Bool)

(declare-fun call!88535 () Bool)

(assert (=> bm!88528 (= call!88533 call!88535)))

(declare-fun b!1288926 () Bool)

(declare-fun e!826621 () Bool)

(assert (=> b!1288926 (= e!826619 e!826621)))

(declare-fun res!577807 () Bool)

(assert (=> b!1288926 (= res!577807 (not (nullable!1118 (reg!3858 lt!424406))))))

(assert (=> b!1288926 (=> (not res!577807) (not e!826621))))

(declare-fun b!1288927 () Bool)

(declare-fun e!826615 () Bool)

(declare-fun e!826618 () Bool)

(assert (=> b!1288927 (= e!826615 e!826618)))

(declare-fun res!577809 () Bool)

(assert (=> b!1288927 (=> (not res!577809) (not e!826618))))

(declare-fun call!88534 () Bool)

(assert (=> b!1288927 (= res!577809 call!88534)))

(declare-fun d!363274 () Bool)

(declare-fun res!577810 () Bool)

(assert (=> d!363274 (=> res!577810 e!826620)))

(assert (=> d!363274 (= res!577810 ((_ is ElementMatch!3529) lt!424406))))

(assert (=> d!363274 (= (validRegex!1516 lt!424406) e!826620)))

(declare-fun bm!88529 () Bool)

(declare-fun c!212152 () Bool)

(assert (=> bm!88529 (= call!88535 (validRegex!1516 (ite c!212153 (reg!3858 lt!424406) (ite c!212152 (regTwo!7571 lt!424406) (regTwo!7570 lt!424406)))))))

(declare-fun b!1288928 () Bool)

(declare-fun e!826617 () Bool)

(assert (=> b!1288928 (= e!826619 e!826617)))

(assert (=> b!1288928 (= c!212152 ((_ is Union!3529) lt!424406))))

(declare-fun b!1288929 () Bool)

(declare-fun e!826616 () Bool)

(assert (=> b!1288929 (= e!826616 call!88533)))

(declare-fun b!1288930 () Bool)

(assert (=> b!1288930 (= e!826618 call!88533)))

(declare-fun b!1288931 () Bool)

(assert (=> b!1288931 (= e!826621 call!88535)))

(declare-fun b!1288932 () Bool)

(declare-fun res!577808 () Bool)

(assert (=> b!1288932 (=> (not res!577808) (not e!826616))))

(assert (=> b!1288932 (= res!577808 call!88534)))

(assert (=> b!1288932 (= e!826617 e!826616)))

(declare-fun b!1288933 () Bool)

(declare-fun res!577806 () Bool)

(assert (=> b!1288933 (=> res!577806 e!826615)))

(assert (=> b!1288933 (= res!577806 (not ((_ is Concat!5835) lt!424406)))))

(assert (=> b!1288933 (= e!826617 e!826615)))

(declare-fun bm!88530 () Bool)

(assert (=> bm!88530 (= call!88534 (validRegex!1516 (ite c!212152 (regOne!7571 lt!424406) (regOne!7570 lt!424406))))))

(assert (= (and d!363274 (not res!577810)) b!1288925))

(assert (= (and b!1288925 c!212153) b!1288926))

(assert (= (and b!1288925 (not c!212153)) b!1288928))

(assert (= (and b!1288926 res!577807) b!1288931))

(assert (= (and b!1288928 c!212152) b!1288932))

(assert (= (and b!1288928 (not c!212152)) b!1288933))

(assert (= (and b!1288932 res!577808) b!1288929))

(assert (= (and b!1288933 (not res!577806)) b!1288927))

(assert (= (and b!1288927 res!577809) b!1288930))

(assert (= (or b!1288932 b!1288927) bm!88530))

(assert (= (or b!1288929 b!1288930) bm!88528))

(assert (= (or b!1288931 bm!88528) bm!88529))

(declare-fun m!1439689 () Bool)

(assert (=> b!1288926 m!1439689))

(declare-fun m!1439691 () Bool)

(assert (=> bm!88529 m!1439691))

(declare-fun m!1439693 () Bool)

(assert (=> bm!88530 m!1439693))

(assert (=> d!363082 d!363274))

(declare-fun b!1288969 () Bool)

(declare-fun e!826650 () Bool)

(declare-fun e!826649 () Bool)

(assert (=> b!1288969 (= e!826650 e!826649)))

(declare-fun res!577830 () Bool)

(assert (=> b!1288969 (= res!577830 (not ((_ is Cons!12859) rules!2550)))))

(assert (=> b!1288969 (=> res!577830 e!826649)))

(declare-fun b!1288970 () Bool)

(declare-fun e!826651 () Bool)

(assert (=> b!1288970 (= e!826650 e!826651)))

(declare-fun res!577831 () Bool)

(declare-fun rulesUseDisjointChars!143 (Rule!4230 Rule!4230) Bool)

(assert (=> b!1288970 (= res!577831 (rulesUseDisjointChars!143 (h!18260 rules!2550) (h!18260 rules!2550)))))

(assert (=> b!1288970 (=> (not res!577831) (not e!826651))))

(declare-fun bm!88542 () Bool)

(declare-fun call!88547 () Bool)

(assert (=> bm!88542 (= call!88547 (ruleDisjointCharsFromAllFromOtherType!279 (h!18260 rules!2550) (t!116976 rules!2550)))))

(declare-fun d!363282 () Bool)

(declare-fun c!212162 () Bool)

(assert (=> d!363282 (= c!212162 (and ((_ is Cons!12859) rules!2550) (not (= (isSeparator!2215 (h!18260 rules!2550)) (isSeparator!2215 (h!18260 rules!2550))))))))

(assert (=> d!363282 (= (ruleDisjointCharsFromAllFromOtherType!279 (h!18260 rules!2550) rules!2550) e!826650)))

(declare-fun b!1288971 () Bool)

(assert (=> b!1288971 (= e!826649 call!88547)))

(declare-fun b!1288972 () Bool)

(assert (=> b!1288972 (= e!826651 call!88547)))

(assert (= (and d!363282 c!212162) b!1288970))

(assert (= (and d!363282 (not c!212162)) b!1288969))

(assert (= (and b!1288970 res!577831) b!1288972))

(assert (= (and b!1288969 (not res!577830)) b!1288971))

(assert (= (or b!1288972 b!1288971) bm!88542))

(declare-fun m!1439707 () Bool)

(assert (=> b!1288970 m!1439707))

(declare-fun m!1439709 () Bool)

(assert (=> bm!88542 m!1439709))

(assert (=> b!1288540 d!363282))

(declare-fun bs!328374 () Bool)

(declare-fun d!363288 () Bool)

(assert (= bs!328374 (and d!363288 d!363078)))

(declare-fun lambda!50581 () Int)

(assert (=> bs!328374 (= lambda!50581 lambda!50542)))

(declare-fun bs!328375 () Bool)

(assert (= bs!328375 (and d!363288 d!363248)))

(assert (=> bs!328375 (= lambda!50581 lambda!50572)))

(assert (=> d!363288 true))

(declare-fun lt!424607 () Bool)

(assert (=> d!363288 (= lt!424607 (forall!3242 (t!116976 rules!2550) lambda!50581))))

(declare-fun e!826653 () Bool)

(assert (=> d!363288 (= lt!424607 e!826653)))

(declare-fun res!577832 () Bool)

(assert (=> d!363288 (=> res!577832 e!826653)))

(assert (=> d!363288 (= res!577832 (not ((_ is Cons!12859) (t!116976 rules!2550))))))

(assert (=> d!363288 (= (rulesValidInductive!700 thiss!19762 (t!116976 rules!2550)) lt!424607)))

(declare-fun b!1288973 () Bool)

(declare-fun e!826652 () Bool)

(assert (=> b!1288973 (= e!826653 e!826652)))

(declare-fun res!577833 () Bool)

(assert (=> b!1288973 (=> (not res!577833) (not e!826652))))

(assert (=> b!1288973 (= res!577833 (ruleValid!542 thiss!19762 (h!18260 (t!116976 rules!2550))))))

(declare-fun b!1288974 () Bool)

(assert (=> b!1288974 (= e!826652 (rulesValidInductive!700 thiss!19762 (t!116976 (t!116976 rules!2550))))))

(assert (= (and d!363288 (not res!577832)) b!1288973))

(assert (= (and b!1288973 res!577833) b!1288974))

(declare-fun m!1439711 () Bool)

(assert (=> d!363288 m!1439711))

(declare-fun m!1439713 () Bool)

(assert (=> b!1288973 m!1439713))

(declare-fun m!1439715 () Bool)

(assert (=> b!1288974 m!1439715))

(assert (=> b!1288585 d!363288))

(declare-fun d!363290 () Bool)

(declare-fun charsToInt!0 (List!12923) (_ BitVec 32))

(assert (=> d!363290 (= (inv!16 (value!72760 t1!34)) (= (charsToInt!0 (text!16582 (value!72760 t1!34))) (value!72751 (value!72760 t1!34))))))

(declare-fun bs!328376 () Bool)

(assert (= bs!328376 d!363290))

(declare-fun m!1439717 () Bool)

(assert (=> bs!328376 m!1439717))

(assert (=> b!1288460 d!363290))

(declare-fun d!363292 () Bool)

(declare-fun lt!424608 () Bool)

(assert (=> d!363292 (= lt!424608 (isEmpty!7631 (list!4787 (_2!7208 lt!424432))))))

(assert (=> d!363292 (= lt!424608 (isEmpty!7633 (c!212057 (_2!7208 lt!424432))))))

(assert (=> d!363292 (= (isEmpty!7629 (_2!7208 lt!424432)) lt!424608)))

(declare-fun bs!328377 () Bool)

(assert (= bs!328377 d!363292))

(declare-fun m!1439719 () Bool)

(assert (=> bs!328377 m!1439719))

(assert (=> bs!328377 m!1439719))

(declare-fun m!1439721 () Bool)

(assert (=> bs!328377 m!1439721))

(declare-fun m!1439723 () Bool)

(assert (=> bs!328377 m!1439723))

(assert (=> b!1288534 d!363292))

(declare-fun d!363294 () Bool)

(assert (=> d!363294 (= (list!4787 lt!424436) (list!4789 (c!212057 lt!424436)))))

(declare-fun bs!328378 () Bool)

(assert (= bs!328378 d!363294))

(declare-fun m!1439725 () Bool)

(assert (=> bs!328378 m!1439725))

(assert (=> d!363056 d!363294))

(assert (=> d!363066 d!363110))

(assert (=> d!363066 d!363112))

(declare-fun d!363296 () Bool)

(declare-fun lt!424609 () Int)

(assert (=> d!363296 (= lt!424609 (size!10491 (list!4788 (_1!7208 lt!424444))))))

(assert (=> d!363296 (= lt!424609 (size!10492 (c!212087 (_1!7208 lt!424444))))))

(assert (=> d!363296 (= (size!10487 (_1!7208 lt!424444)) lt!424609)))

(declare-fun bs!328379 () Bool)

(assert (= bs!328379 d!363296))

(assert (=> bs!328379 m!1439331))

(assert (=> bs!328379 m!1439331))

(declare-fun m!1439727 () Bool)

(assert (=> bs!328379 m!1439727))

(declare-fun m!1439729 () Bool)

(assert (=> bs!328379 m!1439729))

(assert (=> d!363066 d!363296))

(assert (=> d!363066 d!363114))

(declare-fun d!363298 () Bool)

(assert (=> d!363298 (= (list!4788 (_1!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34))))) (list!4792 (c!212087 (_1!7208 (lex!774 thiss!19762 rules!2550 (print!711 thiss!19762 (singletonSeq!788 t1!34)))))))))

(declare-fun bs!328380 () Bool)

(assert (= bs!328380 d!363298))

(declare-fun m!1439731 () Bool)

(assert (=> bs!328380 m!1439731))

(assert (=> d!363066 d!363298))

(declare-fun d!363300 () Bool)

(assert (=> d!363300 (= (list!4788 (singletonSeq!788 t1!34)) (list!4792 (c!212087 (singletonSeq!788 t1!34))))))

(declare-fun bs!328381 () Bool)

(assert (= bs!328381 d!363300))

(declare-fun m!1439733 () Bool)

(assert (=> bs!328381 m!1439733))

(assert (=> d!363066 d!363300))

(assert (=> d!363066 d!363000))

(declare-fun d!363302 () Bool)

(declare-fun c!212163 () Bool)

(assert (=> d!363302 (= c!212163 (isEmpty!7631 (tail!1830 lt!424407)))))

(declare-fun e!826654 () Bool)

(assert (=> d!363302 (= (prefixMatch!42 (derivativeStep!866 lt!424406 (head!2202 lt!424407)) (tail!1830 lt!424407)) e!826654)))

(declare-fun b!1288975 () Bool)

(assert (=> b!1288975 (= e!826654 (not (lostCause!243 (derivativeStep!866 lt!424406 (head!2202 lt!424407)))))))

(declare-fun b!1288976 () Bool)

(assert (=> b!1288976 (= e!826654 (prefixMatch!42 (derivativeStep!866 (derivativeStep!866 lt!424406 (head!2202 lt!424407)) (head!2202 (tail!1830 lt!424407))) (tail!1830 (tail!1830 lt!424407))))))

(assert (= (and d!363302 c!212163) b!1288975))

(assert (= (and d!363302 (not c!212163)) b!1288976))

(assert (=> d!363302 m!1439121))

(declare-fun m!1439735 () Bool)

(assert (=> d!363302 m!1439735))

(assert (=> b!1288975 m!1439119))

(declare-fun m!1439737 () Bool)

(assert (=> b!1288975 m!1439737))

(assert (=> b!1288976 m!1439121))

(declare-fun m!1439739 () Bool)

(assert (=> b!1288976 m!1439739))

(assert (=> b!1288976 m!1439119))

(assert (=> b!1288976 m!1439739))

(declare-fun m!1439741 () Bool)

(assert (=> b!1288976 m!1439741))

(assert (=> b!1288976 m!1439121))

(declare-fun m!1439743 () Bool)

(assert (=> b!1288976 m!1439743))

(assert (=> b!1288976 m!1439741))

(assert (=> b!1288976 m!1439743))

(declare-fun m!1439745 () Bool)

(assert (=> b!1288976 m!1439745))

(assert (=> b!1288550 d!363302))

(declare-fun bm!88551 () Bool)

(declare-fun call!88556 () Regex!3529)

(declare-fun call!88558 () Regex!3529)

(assert (=> bm!88551 (= call!88556 call!88558)))

(declare-fun d!363304 () Bool)

(declare-fun lt!424612 () Regex!3529)

(assert (=> d!363304 (validRegex!1516 lt!424612)))

(declare-fun e!826665 () Regex!3529)

(assert (=> d!363304 (= lt!424612 e!826665)))

(declare-fun c!212177 () Bool)

(assert (=> d!363304 (= c!212177 (or ((_ is EmptyExpr!3529) lt!424406) ((_ is EmptyLang!3529) lt!424406)))))

(assert (=> d!363304 (validRegex!1516 lt!424406)))

(assert (=> d!363304 (= (derivativeStep!866 lt!424406 (head!2202 lt!424407)) lt!424612)))

(declare-fun b!1288997 () Bool)

(declare-fun e!826669 () Regex!3529)

(declare-fun e!826668 () Regex!3529)

(assert (=> b!1288997 (= e!826669 e!826668)))

(declare-fun c!212175 () Bool)

(assert (=> b!1288997 (= c!212175 ((_ is Star!3529) lt!424406))))

(declare-fun b!1288998 () Bool)

(declare-fun c!212174 () Bool)

(assert (=> b!1288998 (= c!212174 (nullable!1118 (regOne!7570 lt!424406)))))

(declare-fun e!826666 () Regex!3529)

(assert (=> b!1288998 (= e!826668 e!826666)))

(declare-fun b!1288999 () Bool)

(assert (=> b!1288999 (= e!826665 EmptyLang!3529)))

(declare-fun bm!88552 () Bool)

(declare-fun call!88557 () Regex!3529)

(declare-fun call!88559 () Regex!3529)

(assert (=> bm!88552 (= call!88557 call!88559)))

(declare-fun b!1289000 () Bool)

(declare-fun e!826667 () Regex!3529)

(assert (=> b!1289000 (= e!826665 e!826667)))

(declare-fun c!212178 () Bool)

(assert (=> b!1289000 (= c!212178 ((_ is ElementMatch!3529) lt!424406))))

(declare-fun b!1289001 () Bool)

(assert (=> b!1289001 (= e!826666 (Union!3529 (Concat!5835 call!88556 (regTwo!7570 lt!424406)) call!88557))))

(declare-fun b!1289002 () Bool)

(assert (=> b!1289002 (= e!826668 (Concat!5835 call!88556 lt!424406))))

(declare-fun b!1289003 () Bool)

(assert (=> b!1289003 (= e!826667 (ite (= (head!2202 lt!424407) (c!212058 lt!424406)) EmptyExpr!3529 EmptyLang!3529))))

(declare-fun bm!88553 () Bool)

(declare-fun c!212176 () Bool)

(assert (=> bm!88553 (= call!88559 (derivativeStep!866 (ite c!212176 (regTwo!7571 lt!424406) (ite c!212174 (regTwo!7570 lt!424406) (regOne!7570 lt!424406))) (head!2202 lt!424407)))))

(declare-fun bm!88554 () Bool)

(assert (=> bm!88554 (= call!88558 (derivativeStep!866 (ite c!212176 (regOne!7571 lt!424406) (ite c!212175 (reg!3858 lt!424406) (regOne!7570 lt!424406))) (head!2202 lt!424407)))))

(declare-fun b!1289004 () Bool)

(assert (=> b!1289004 (= e!826666 (Union!3529 (Concat!5835 call!88557 (regTwo!7570 lt!424406)) EmptyLang!3529))))

(declare-fun b!1289005 () Bool)

(assert (=> b!1289005 (= c!212176 ((_ is Union!3529) lt!424406))))

(assert (=> b!1289005 (= e!826667 e!826669)))

(declare-fun b!1289006 () Bool)

(assert (=> b!1289006 (= e!826669 (Union!3529 call!88558 call!88559))))

(assert (= (and d!363304 c!212177) b!1288999))

(assert (= (and d!363304 (not c!212177)) b!1289000))

(assert (= (and b!1289000 c!212178) b!1289003))

(assert (= (and b!1289000 (not c!212178)) b!1289005))

(assert (= (and b!1289005 c!212176) b!1289006))

(assert (= (and b!1289005 (not c!212176)) b!1288997))

(assert (= (and b!1288997 c!212175) b!1289002))

(assert (= (and b!1288997 (not c!212175)) b!1288998))

(assert (= (and b!1288998 c!212174) b!1289001))

(assert (= (and b!1288998 (not c!212174)) b!1289004))

(assert (= (or b!1289001 b!1289004) bm!88552))

(assert (= (or b!1289002 b!1289001) bm!88551))

(assert (= (or b!1289006 bm!88551) bm!88554))

(assert (= (or b!1289006 bm!88552) bm!88553))

(declare-fun m!1439747 () Bool)

(assert (=> d!363304 m!1439747))

(assert (=> d!363304 m!1439217))

(declare-fun m!1439749 () Bool)

(assert (=> b!1288998 m!1439749))

(assert (=> bm!88553 m!1439117))

(declare-fun m!1439751 () Bool)

(assert (=> bm!88553 m!1439751))

(assert (=> bm!88554 m!1439117))

(declare-fun m!1439753 () Bool)

(assert (=> bm!88554 m!1439753))

(assert (=> b!1288550 d!363304))

(declare-fun d!363306 () Bool)

(assert (=> d!363306 (= (head!2202 lt!424407) (h!18259 lt!424407))))

(assert (=> b!1288550 d!363306))

(declare-fun d!363308 () Bool)

(assert (=> d!363308 (= (tail!1830 lt!424407) (t!116975 lt!424407))))

(assert (=> b!1288550 d!363308))

(declare-fun d!363310 () Bool)

(assert (=> d!363310 (= (inv!16 (value!72760 t2!34)) (= (charsToInt!0 (text!16582 (value!72760 t2!34))) (value!72751 (value!72760 t2!34))))))

(declare-fun bs!328382 () Bool)

(assert (= bs!328382 d!363310))

(declare-fun m!1439755 () Bool)

(assert (=> bs!328382 m!1439755))

(assert (=> b!1288452 d!363310))

(declare-fun d!363312 () Bool)

(assert (=> d!363312 (= (inv!17273 (tag!2477 (h!18260 (t!116976 rules!2550)))) (= (mod (str.len (value!72759 (tag!2477 (h!18260 (t!116976 rules!2550))))) 2) 0))))

(assert (=> b!1288623 d!363312))

(declare-fun d!363314 () Bool)

(declare-fun res!577834 () Bool)

(declare-fun e!826670 () Bool)

(assert (=> d!363314 (=> (not res!577834) (not e!826670))))

(assert (=> d!363314 (= res!577834 (semiInverseModEq!836 (toChars!3265 (transformation!2215 (h!18260 (t!116976 rules!2550)))) (toValue!3406 (transformation!2215 (h!18260 (t!116976 rules!2550))))))))

(assert (=> d!363314 (= (inv!17277 (transformation!2215 (h!18260 (t!116976 rules!2550)))) e!826670)))

(declare-fun b!1289007 () Bool)

(assert (=> b!1289007 (= e!826670 (equivClasses!795 (toChars!3265 (transformation!2215 (h!18260 (t!116976 rules!2550)))) (toValue!3406 (transformation!2215 (h!18260 (t!116976 rules!2550))))))))

(assert (= (and d!363314 res!577834) b!1289007))

(declare-fun m!1439757 () Bool)

(assert (=> d!363314 m!1439757))

(declare-fun m!1439759 () Bool)

(assert (=> b!1289007 m!1439759))

(assert (=> b!1288623 d!363314))

(declare-fun d!363316 () Bool)

(declare-fun res!577839 () Bool)

(declare-fun e!826675 () Bool)

(assert (=> d!363316 (=> res!577839 e!826675)))

(assert (=> d!363316 (= res!577839 ((_ is Nil!12859) rules!2550))))

(assert (=> d!363316 (= (forall!3242 rules!2550 lambda!50542) e!826675)))

(declare-fun b!1289012 () Bool)

(declare-fun e!826676 () Bool)

(assert (=> b!1289012 (= e!826675 e!826676)))

(declare-fun res!577840 () Bool)

(assert (=> b!1289012 (=> (not res!577840) (not e!826676))))

(declare-fun dynLambda!5615 (Int Rule!4230) Bool)

(assert (=> b!1289012 (= res!577840 (dynLambda!5615 lambda!50542 (h!18260 rules!2550)))))

(declare-fun b!1289013 () Bool)

(assert (=> b!1289013 (= e!826676 (forall!3242 (t!116976 rules!2550) lambda!50542))))

(assert (= (and d!363316 (not res!577839)) b!1289012))

(assert (= (and b!1289012 res!577840) b!1289013))

(declare-fun b_lambda!36767 () Bool)

(assert (=> (not b_lambda!36767) (not b!1289012)))

(declare-fun m!1439761 () Bool)

(assert (=> b!1289012 m!1439761))

(declare-fun m!1439763 () Bool)

(assert (=> b!1289013 m!1439763))

(assert (=> d!363078 d!363316))

(declare-fun bs!328383 () Bool)

(declare-fun d!363318 () Bool)

(assert (= bs!328383 (and d!363318 d!363060)))

(declare-fun lambda!50586 () Int)

(assert (=> bs!328383 (= lambda!50586 lambda!50539)))

(declare-fun lambda!50587 () Int)

(declare-fun forall!3244 (List!12928 Int) Bool)

(assert (=> d!363318 (forall!3244 (map!2798 rules!2550 lambda!50586) lambda!50587)))

(declare-fun lt!424617 () Unit!19032)

(declare-fun e!826679 () Unit!19032)

(assert (=> d!363318 (= lt!424617 e!826679)))

(declare-fun c!212181 () Bool)

(assert (=> d!363318 (= c!212181 ((_ is Nil!12859) rules!2550))))

(assert (=> d!363318 (rulesValidInductive!700 thiss!19762 rules!2550)))

(assert (=> d!363318 (= (lemma!37 rules!2550 thiss!19762 rules!2550) lt!424617)))

(declare-fun b!1289018 () Bool)

(declare-fun Unit!19034 () Unit!19032)

(assert (=> b!1289018 (= e!826679 Unit!19034)))

(declare-fun b!1289019 () Bool)

(declare-fun Unit!19035 () Unit!19032)

(assert (=> b!1289019 (= e!826679 Unit!19035)))

(declare-fun lt!424618 () Unit!19032)

(assert (=> b!1289019 (= lt!424618 (lemma!37 rules!2550 thiss!19762 (t!116976 rules!2550)))))

(assert (= (and d!363318 c!212181) b!1289018))

(assert (= (and d!363318 (not c!212181)) b!1289019))

(declare-fun m!1439765 () Bool)

(assert (=> d!363318 m!1439765))

(assert (=> d!363318 m!1439765))

(declare-fun m!1439767 () Bool)

(assert (=> d!363318 m!1439767))

(assert (=> d!363318 m!1438905))

(declare-fun m!1439769 () Bool)

(assert (=> b!1289019 m!1439769))

(assert (=> d!363060 d!363318))

(declare-fun bs!328384 () Bool)

(declare-fun d!363320 () Bool)

(assert (= bs!328384 (and d!363320 d!363318)))

(declare-fun lambda!50590 () Int)

(assert (=> bs!328384 (= lambda!50590 lambda!50587)))

(declare-fun b!1289040 () Bool)

(declare-fun e!826696 () Bool)

(declare-fun e!826692 () Bool)

(assert (=> b!1289040 (= e!826696 e!826692)))

(declare-fun c!212192 () Bool)

(declare-fun isEmpty!7636 (List!12928) Bool)

(declare-fun tail!1832 (List!12928) List!12928)

(assert (=> b!1289040 (= c!212192 (isEmpty!7636 (tail!1832 (map!2798 rules!2550 lambda!50539))))))

(declare-fun b!1289041 () Bool)

(declare-fun e!826693 () Bool)

(assert (=> b!1289041 (= e!826693 (isEmpty!7636 (t!117013 (map!2798 rules!2550 lambda!50539))))))

(declare-fun b!1289042 () Bool)

(declare-fun e!826695 () Regex!3529)

(declare-fun e!826697 () Regex!3529)

(assert (=> b!1289042 (= e!826695 e!826697)))

(declare-fun c!212190 () Bool)

(assert (=> b!1289042 (= c!212190 ((_ is Cons!12862) (map!2798 rules!2550 lambda!50539)))))

(declare-fun b!1289043 () Bool)

(declare-fun lt!424621 () Regex!3529)

(declare-fun isUnion!7 (Regex!3529) Bool)

(assert (=> b!1289043 (= e!826692 (isUnion!7 lt!424621))))

(declare-fun b!1289044 () Bool)

(declare-fun e!826694 () Bool)

(assert (=> b!1289044 (= e!826694 e!826696)))

(declare-fun c!212191 () Bool)

(assert (=> b!1289044 (= c!212191 (isEmpty!7636 (map!2798 rules!2550 lambda!50539)))))

(declare-fun b!1289045 () Bool)

(declare-fun head!2204 (List!12928) Regex!3529)

(assert (=> b!1289045 (= e!826692 (= lt!424621 (head!2204 (map!2798 rules!2550 lambda!50539))))))

(declare-fun b!1289046 () Bool)

(assert (=> b!1289046 (= e!826697 (Union!3529 (h!18263 (map!2798 rules!2550 lambda!50539)) (generalisedUnion!41 (t!117013 (map!2798 rules!2550 lambda!50539)))))))

(declare-fun b!1289048 () Bool)

(assert (=> b!1289048 (= e!826697 EmptyLang!3529)))

(declare-fun b!1289049 () Bool)

(assert (=> b!1289049 (= e!826695 (h!18263 (map!2798 rules!2550 lambda!50539)))))

(declare-fun b!1289047 () Bool)

(declare-fun isEmptyLang!7 (Regex!3529) Bool)

(assert (=> b!1289047 (= e!826696 (isEmptyLang!7 lt!424621))))

(assert (=> d!363320 e!826694))

(declare-fun res!577846 () Bool)

(assert (=> d!363320 (=> (not res!577846) (not e!826694))))

(assert (=> d!363320 (= res!577846 (validRegex!1516 lt!424621))))

(assert (=> d!363320 (= lt!424621 e!826695)))

(declare-fun c!212193 () Bool)

(assert (=> d!363320 (= c!212193 e!826693)))

(declare-fun res!577845 () Bool)

(assert (=> d!363320 (=> (not res!577845) (not e!826693))))

(assert (=> d!363320 (= res!577845 ((_ is Cons!12862) (map!2798 rules!2550 lambda!50539)))))

(assert (=> d!363320 (forall!3244 (map!2798 rules!2550 lambda!50539) lambda!50590)))

(assert (=> d!363320 (= (generalisedUnion!41 (map!2798 rules!2550 lambda!50539)) lt!424621)))

(assert (= (and d!363320 res!577845) b!1289041))

(assert (= (and d!363320 c!212193) b!1289049))

(assert (= (and d!363320 (not c!212193)) b!1289042))

(assert (= (and b!1289042 c!212190) b!1289046))

(assert (= (and b!1289042 (not c!212190)) b!1289048))

(assert (= (and d!363320 res!577846) b!1289044))

(assert (= (and b!1289044 c!212191) b!1289047))

(assert (= (and b!1289044 (not c!212191)) b!1289040))

(assert (= (and b!1289040 c!212192) b!1289045))

(assert (= (and b!1289040 (not c!212192)) b!1289043))

(declare-fun m!1439771 () Bool)

(assert (=> d!363320 m!1439771))

(assert (=> d!363320 m!1439155))

(declare-fun m!1439773 () Bool)

(assert (=> d!363320 m!1439773))

(assert (=> b!1289040 m!1439155))

(declare-fun m!1439775 () Bool)

(assert (=> b!1289040 m!1439775))

(assert (=> b!1289040 m!1439775))

(declare-fun m!1439777 () Bool)

(assert (=> b!1289040 m!1439777))

(declare-fun m!1439779 () Bool)

(assert (=> b!1289041 m!1439779))

(assert (=> b!1289044 m!1439155))

(declare-fun m!1439781 () Bool)

(assert (=> b!1289044 m!1439781))

(declare-fun m!1439783 () Bool)

(assert (=> b!1289046 m!1439783))

(declare-fun m!1439785 () Bool)

(assert (=> b!1289043 m!1439785))

(declare-fun m!1439787 () Bool)

(assert (=> b!1289047 m!1439787))

(assert (=> b!1289045 m!1439155))

(declare-fun m!1439789 () Bool)

(assert (=> b!1289045 m!1439789))

(assert (=> d!363060 d!363320))

(declare-fun d!363322 () Bool)

(declare-fun lt!424624 () List!12928)

(declare-fun size!10493 (List!12928) Int)

(declare-fun size!10494 (List!12925) Int)

(assert (=> d!363322 (= (size!10493 lt!424624) (size!10494 rules!2550))))

(declare-fun e!826700 () List!12928)

(assert (=> d!363322 (= lt!424624 e!826700)))

(declare-fun c!212196 () Bool)

(assert (=> d!363322 (= c!212196 ((_ is Nil!12859) rules!2550))))

(assert (=> d!363322 (= (map!2798 rules!2550 lambda!50539) lt!424624)))

(declare-fun b!1289054 () Bool)

(assert (=> b!1289054 (= e!826700 Nil!12862)))

(declare-fun b!1289055 () Bool)

(declare-fun $colon$colon!129 (List!12928 Regex!3529) List!12928)

(declare-fun dynLambda!5616 (Int Rule!4230) Regex!3529)

(assert (=> b!1289055 (= e!826700 ($colon$colon!129 (map!2798 (t!116976 rules!2550) lambda!50539) (dynLambda!5616 lambda!50539 (h!18260 rules!2550))))))

(assert (= (and d!363322 c!212196) b!1289054))

(assert (= (and d!363322 (not c!212196)) b!1289055))

(declare-fun b_lambda!36769 () Bool)

(assert (=> (not b_lambda!36769) (not b!1289055)))

(declare-fun m!1439791 () Bool)

(assert (=> d!363322 m!1439791))

(declare-fun m!1439793 () Bool)

(assert (=> d!363322 m!1439793))

(declare-fun m!1439795 () Bool)

(assert (=> b!1289055 m!1439795))

(declare-fun m!1439797 () Bool)

(assert (=> b!1289055 m!1439797))

(assert (=> b!1289055 m!1439795))

(assert (=> b!1289055 m!1439797))

(declare-fun m!1439799 () Bool)

(assert (=> b!1289055 m!1439799))

(assert (=> d!363060 d!363322))

(declare-fun d!363324 () Bool)

(assert (=> d!363324 (= (isEmpty!7631 (originalCharacters!3077 t2!34)) ((_ is Nil!12858) (originalCharacters!3077 t2!34)))))

(assert (=> d!363076 d!363324))

(declare-fun b!1289064 () Bool)

(declare-fun e!826706 () Bool)

(declare-fun tp!375559 () Bool)

(declare-fun tp!375558 () Bool)

(assert (=> b!1289064 (= e!826706 (and (inv!17278 (left!11070 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))))) tp!375558 (inv!17278 (right!11400 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))))) tp!375559))))

(declare-fun b!1289066 () Bool)

(declare-fun e!826705 () Bool)

(declare-fun tp!375557 () Bool)

(assert (=> b!1289066 (= e!826705 tp!375557)))

(declare-fun b!1289065 () Bool)

(declare-fun inv!17284 (IArray!8455) Bool)

(assert (=> b!1289065 (= e!826706 (and (inv!17284 (xs!6936 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))))) e!826705))))

(assert (=> b!1288438 (= tp!375463 (and (inv!17278 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34)))) e!826706))))

(assert (= (and b!1288438 ((_ is Node!4225) (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))))) b!1289064))

(assert (= b!1289065 b!1289066))

(assert (= (and b!1288438 ((_ is Leaf!6529) (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t2!34))) (value!72760 t2!34))))) b!1289065))

(declare-fun m!1439801 () Bool)

(assert (=> b!1289064 m!1439801))

(declare-fun m!1439803 () Bool)

(assert (=> b!1289064 m!1439803))

(declare-fun m!1439805 () Bool)

(assert (=> b!1289065 m!1439805))

(assert (=> b!1288438 m!1438965))

(declare-fun b!1289067 () Bool)

(declare-fun e!826707 () Bool)

(assert (=> b!1289067 (= e!826707 tp_is_empty!6553)))

(declare-fun b!1289069 () Bool)

(declare-fun tp!375562 () Bool)

(assert (=> b!1289069 (= e!826707 tp!375562)))

(assert (=> b!1288627 (= tp!375507 e!826707)))

(declare-fun b!1289068 () Bool)

(declare-fun tp!375563 () Bool)

(declare-fun tp!375564 () Bool)

(assert (=> b!1289068 (= e!826707 (and tp!375563 tp!375564))))

(declare-fun b!1289070 () Bool)

(declare-fun tp!375560 () Bool)

(declare-fun tp!375561 () Bool)

(assert (=> b!1289070 (= e!826707 (and tp!375560 tp!375561))))

(assert (= (and b!1288627 ((_ is ElementMatch!3529) (reg!3858 (regex!2215 (rule!3954 t2!34))))) b!1289067))

(assert (= (and b!1288627 ((_ is Concat!5835) (reg!3858 (regex!2215 (rule!3954 t2!34))))) b!1289068))

(assert (= (and b!1288627 ((_ is Star!3529) (reg!3858 (regex!2215 (rule!3954 t2!34))))) b!1289069))

(assert (= (and b!1288627 ((_ is Union!3529) (reg!3858 (regex!2215 (rule!3954 t2!34))))) b!1289070))

(declare-fun b!1289071 () Bool)

(declare-fun e!826708 () Bool)

(assert (=> b!1289071 (= e!826708 tp_is_empty!6553)))

(declare-fun b!1289073 () Bool)

(declare-fun tp!375567 () Bool)

(assert (=> b!1289073 (= e!826708 tp!375567)))

(assert (=> b!1288613 (= tp!375488 e!826708)))

(declare-fun b!1289072 () Bool)

(declare-fun tp!375568 () Bool)

(declare-fun tp!375569 () Bool)

(assert (=> b!1289072 (= e!826708 (and tp!375568 tp!375569))))

(declare-fun b!1289074 () Bool)

(declare-fun tp!375565 () Bool)

(declare-fun tp!375566 () Bool)

(assert (=> b!1289074 (= e!826708 (and tp!375565 tp!375566))))

(assert (= (and b!1288613 ((_ is ElementMatch!3529) (regOne!7571 (regex!2215 (h!18260 rules!2550))))) b!1289071))

(assert (= (and b!1288613 ((_ is Concat!5835) (regOne!7571 (regex!2215 (h!18260 rules!2550))))) b!1289072))

(assert (= (and b!1288613 ((_ is Star!3529) (regOne!7571 (regex!2215 (h!18260 rules!2550))))) b!1289073))

(assert (= (and b!1288613 ((_ is Union!3529) (regOne!7571 (regex!2215 (h!18260 rules!2550))))) b!1289074))

(declare-fun b!1289075 () Bool)

(declare-fun e!826709 () Bool)

(assert (=> b!1289075 (= e!826709 tp_is_empty!6553)))

(declare-fun b!1289077 () Bool)

(declare-fun tp!375572 () Bool)

(assert (=> b!1289077 (= e!826709 tp!375572)))

(assert (=> b!1288613 (= tp!375489 e!826709)))

(declare-fun b!1289076 () Bool)

(declare-fun tp!375573 () Bool)

(declare-fun tp!375574 () Bool)

(assert (=> b!1289076 (= e!826709 (and tp!375573 tp!375574))))

(declare-fun b!1289078 () Bool)

(declare-fun tp!375570 () Bool)

(declare-fun tp!375571 () Bool)

(assert (=> b!1289078 (= e!826709 (and tp!375570 tp!375571))))

(assert (= (and b!1288613 ((_ is ElementMatch!3529) (regTwo!7571 (regex!2215 (h!18260 rules!2550))))) b!1289075))

(assert (= (and b!1288613 ((_ is Concat!5835) (regTwo!7571 (regex!2215 (h!18260 rules!2550))))) b!1289076))

(assert (= (and b!1288613 ((_ is Star!3529) (regTwo!7571 (regex!2215 (h!18260 rules!2550))))) b!1289077))

(assert (= (and b!1288613 ((_ is Union!3529) (regTwo!7571 (regex!2215 (h!18260 rules!2550))))) b!1289078))

(declare-fun b!1289079 () Bool)

(declare-fun e!826710 () Bool)

(assert (=> b!1289079 (= e!826710 tp_is_empty!6553)))

(declare-fun b!1289081 () Bool)

(declare-fun tp!375577 () Bool)

(assert (=> b!1289081 (= e!826710 tp!375577)))

(assert (=> b!1288626 (= tp!375508 e!826710)))

(declare-fun b!1289080 () Bool)

(declare-fun tp!375578 () Bool)

(declare-fun tp!375579 () Bool)

(assert (=> b!1289080 (= e!826710 (and tp!375578 tp!375579))))

(declare-fun b!1289082 () Bool)

(declare-fun tp!375575 () Bool)

(declare-fun tp!375576 () Bool)

(assert (=> b!1289082 (= e!826710 (and tp!375575 tp!375576))))

(assert (= (and b!1288626 ((_ is ElementMatch!3529) (regOne!7570 (regex!2215 (rule!3954 t2!34))))) b!1289079))

(assert (= (and b!1288626 ((_ is Concat!5835) (regOne!7570 (regex!2215 (rule!3954 t2!34))))) b!1289080))

(assert (= (and b!1288626 ((_ is Star!3529) (regOne!7570 (regex!2215 (rule!3954 t2!34))))) b!1289081))

(assert (= (and b!1288626 ((_ is Union!3529) (regOne!7570 (regex!2215 (rule!3954 t2!34))))) b!1289082))

(declare-fun b!1289083 () Bool)

(declare-fun e!826711 () Bool)

(assert (=> b!1289083 (= e!826711 tp_is_empty!6553)))

(declare-fun b!1289085 () Bool)

(declare-fun tp!375582 () Bool)

(assert (=> b!1289085 (= e!826711 tp!375582)))

(assert (=> b!1288626 (= tp!375509 e!826711)))

(declare-fun b!1289084 () Bool)

(declare-fun tp!375583 () Bool)

(declare-fun tp!375584 () Bool)

(assert (=> b!1289084 (= e!826711 (and tp!375583 tp!375584))))

(declare-fun b!1289086 () Bool)

(declare-fun tp!375580 () Bool)

(declare-fun tp!375581 () Bool)

(assert (=> b!1289086 (= e!826711 (and tp!375580 tp!375581))))

(assert (= (and b!1288626 ((_ is ElementMatch!3529) (regTwo!7570 (regex!2215 (rule!3954 t2!34))))) b!1289083))

(assert (= (and b!1288626 ((_ is Concat!5835) (regTwo!7570 (regex!2215 (rule!3954 t2!34))))) b!1289084))

(assert (= (and b!1288626 ((_ is Star!3529) (regTwo!7570 (regex!2215 (rule!3954 t2!34))))) b!1289085))

(assert (= (and b!1288626 ((_ is Union!3529) (regTwo!7570 (regex!2215 (rule!3954 t2!34))))) b!1289086))

(declare-fun b!1289087 () Bool)

(declare-fun e!826712 () Bool)

(declare-fun tp!375585 () Bool)

(assert (=> b!1289087 (= e!826712 (and tp_is_empty!6553 tp!375585))))

(assert (=> b!1288609 (= tp!375487 e!826712)))

(assert (= (and b!1288609 ((_ is Cons!12858) (t!116975 (originalCharacters!3077 t1!34)))) b!1289087))

(declare-fun b!1289088 () Bool)

(declare-fun e!826713 () Bool)

(declare-fun tp!375586 () Bool)

(assert (=> b!1289088 (= e!826713 (and tp_is_empty!6553 tp!375586))))

(assert (=> b!1288594 (= tp!375471 e!826713)))

(assert (= (and b!1288594 ((_ is Cons!12858) (t!116975 (originalCharacters!3077 t2!34)))) b!1289088))

(declare-fun b!1289089 () Bool)

(declare-fun e!826714 () Bool)

(assert (=> b!1289089 (= e!826714 tp_is_empty!6553)))

(declare-fun b!1289091 () Bool)

(declare-fun tp!375589 () Bool)

(assert (=> b!1289091 (= e!826714 tp!375589)))

(assert (=> b!1288628 (= tp!375505 e!826714)))

(declare-fun b!1289090 () Bool)

(declare-fun tp!375590 () Bool)

(declare-fun tp!375591 () Bool)

(assert (=> b!1289090 (= e!826714 (and tp!375590 tp!375591))))

(declare-fun b!1289092 () Bool)

(declare-fun tp!375587 () Bool)

(declare-fun tp!375588 () Bool)

(assert (=> b!1289092 (= e!826714 (and tp!375587 tp!375588))))

(assert (= (and b!1288628 ((_ is ElementMatch!3529) (regOne!7571 (regex!2215 (rule!3954 t2!34))))) b!1289089))

(assert (= (and b!1288628 ((_ is Concat!5835) (regOne!7571 (regex!2215 (rule!3954 t2!34))))) b!1289090))

(assert (= (and b!1288628 ((_ is Star!3529) (regOne!7571 (regex!2215 (rule!3954 t2!34))))) b!1289091))

(assert (= (and b!1288628 ((_ is Union!3529) (regOne!7571 (regex!2215 (rule!3954 t2!34))))) b!1289092))

(declare-fun b!1289093 () Bool)

(declare-fun e!826715 () Bool)

(assert (=> b!1289093 (= e!826715 tp_is_empty!6553)))

(declare-fun b!1289095 () Bool)

(declare-fun tp!375594 () Bool)

(assert (=> b!1289095 (= e!826715 tp!375594)))

(assert (=> b!1288628 (= tp!375506 e!826715)))

(declare-fun b!1289094 () Bool)

(declare-fun tp!375595 () Bool)

(declare-fun tp!375596 () Bool)

(assert (=> b!1289094 (= e!826715 (and tp!375595 tp!375596))))

(declare-fun b!1289096 () Bool)

(declare-fun tp!375592 () Bool)

(declare-fun tp!375593 () Bool)

(assert (=> b!1289096 (= e!826715 (and tp!375592 tp!375593))))

(assert (= (and b!1288628 ((_ is ElementMatch!3529) (regTwo!7571 (regex!2215 (rule!3954 t2!34))))) b!1289093))

(assert (= (and b!1288628 ((_ is Concat!5835) (regTwo!7571 (regex!2215 (rule!3954 t2!34))))) b!1289094))

(assert (= (and b!1288628 ((_ is Star!3529) (regTwo!7571 (regex!2215 (rule!3954 t2!34))))) b!1289095))

(assert (= (and b!1288628 ((_ is Union!3529) (regTwo!7571 (regex!2215 (rule!3954 t2!34))))) b!1289096))

(declare-fun b!1289097 () Bool)

(declare-fun e!826716 () Bool)

(assert (=> b!1289097 (= e!826716 tp_is_empty!6553)))

(declare-fun b!1289099 () Bool)

(declare-fun tp!375599 () Bool)

(assert (=> b!1289099 (= e!826716 tp!375599)))

(assert (=> b!1288606 (= tp!375485 e!826716)))

(declare-fun b!1289098 () Bool)

(declare-fun tp!375600 () Bool)

(declare-fun tp!375601 () Bool)

(assert (=> b!1289098 (= e!826716 (and tp!375600 tp!375601))))

(declare-fun b!1289100 () Bool)

(declare-fun tp!375597 () Bool)

(declare-fun tp!375598 () Bool)

(assert (=> b!1289100 (= e!826716 (and tp!375597 tp!375598))))

(assert (= (and b!1288606 ((_ is ElementMatch!3529) (regOne!7570 (regex!2215 (rule!3954 t1!34))))) b!1289097))

(assert (= (and b!1288606 ((_ is Concat!5835) (regOne!7570 (regex!2215 (rule!3954 t1!34))))) b!1289098))

(assert (= (and b!1288606 ((_ is Star!3529) (regOne!7570 (regex!2215 (rule!3954 t1!34))))) b!1289099))

(assert (= (and b!1288606 ((_ is Union!3529) (regOne!7570 (regex!2215 (rule!3954 t1!34))))) b!1289100))

(declare-fun b!1289101 () Bool)

(declare-fun e!826717 () Bool)

(assert (=> b!1289101 (= e!826717 tp_is_empty!6553)))

(declare-fun b!1289103 () Bool)

(declare-fun tp!375604 () Bool)

(assert (=> b!1289103 (= e!826717 tp!375604)))

(assert (=> b!1288606 (= tp!375486 e!826717)))

(declare-fun b!1289102 () Bool)

(declare-fun tp!375605 () Bool)

(declare-fun tp!375606 () Bool)

(assert (=> b!1289102 (= e!826717 (and tp!375605 tp!375606))))

(declare-fun b!1289104 () Bool)

(declare-fun tp!375602 () Bool)

(declare-fun tp!375603 () Bool)

(assert (=> b!1289104 (= e!826717 (and tp!375602 tp!375603))))

(assert (= (and b!1288606 ((_ is ElementMatch!3529) (regTwo!7570 (regex!2215 (rule!3954 t1!34))))) b!1289101))

(assert (= (and b!1288606 ((_ is Concat!5835) (regTwo!7570 (regex!2215 (rule!3954 t1!34))))) b!1289102))

(assert (= (and b!1288606 ((_ is Star!3529) (regTwo!7570 (regex!2215 (rule!3954 t1!34))))) b!1289103))

(assert (= (and b!1288606 ((_ is Union!3529) (regTwo!7570 (regex!2215 (rule!3954 t1!34))))) b!1289104))

(declare-fun b!1289105 () Bool)

(declare-fun e!826718 () Bool)

(assert (=> b!1289105 (= e!826718 tp_is_empty!6553)))

(declare-fun b!1289107 () Bool)

(declare-fun tp!375609 () Bool)

(assert (=> b!1289107 (= e!826718 tp!375609)))

(assert (=> b!1288607 (= tp!375484 e!826718)))

(declare-fun b!1289106 () Bool)

(declare-fun tp!375610 () Bool)

(declare-fun tp!375611 () Bool)

(assert (=> b!1289106 (= e!826718 (and tp!375610 tp!375611))))

(declare-fun b!1289108 () Bool)

(declare-fun tp!375607 () Bool)

(declare-fun tp!375608 () Bool)

(assert (=> b!1289108 (= e!826718 (and tp!375607 tp!375608))))

(assert (= (and b!1288607 ((_ is ElementMatch!3529) (reg!3858 (regex!2215 (rule!3954 t1!34))))) b!1289105))

(assert (= (and b!1288607 ((_ is Concat!5835) (reg!3858 (regex!2215 (rule!3954 t1!34))))) b!1289106))

(assert (= (and b!1288607 ((_ is Star!3529) (reg!3858 (regex!2215 (rule!3954 t1!34))))) b!1289107))

(assert (= (and b!1288607 ((_ is Union!3529) (reg!3858 (regex!2215 (rule!3954 t1!34))))) b!1289108))

(declare-fun b!1289111 () Bool)

(declare-fun b_free!30407 () Bool)

(declare-fun b_next!31111 () Bool)

(assert (=> b!1289111 (= b_free!30407 (not b_next!31111))))

(declare-fun tp!375613 () Bool)

(declare-fun b_and!85779 () Bool)

(assert (=> b!1289111 (= tp!375613 b_and!85779)))

(declare-fun b_free!30409 () Bool)

(declare-fun b_next!31113 () Bool)

(assert (=> b!1289111 (= b_free!30409 (not b_next!31113))))

(declare-fun t!117025 () Bool)

(declare-fun tb!69241 () Bool)

(assert (=> (and b!1289111 (= (toChars!3265 (transformation!2215 (h!18260 (t!116976 (t!116976 rules!2550))))) (toChars!3265 (transformation!2215 (rule!3954 t2!34)))) t!117025) tb!69241))

(declare-fun result!83884 () Bool)

(assert (= result!83884 result!83834))

(assert (=> d!362998 t!117025))

(declare-fun t!117027 () Bool)

(declare-fun tb!69243 () Bool)

(assert (=> (and b!1289111 (= (toChars!3265 (transformation!2215 (h!18260 (t!116976 (t!116976 rules!2550))))) (toChars!3265 (transformation!2215 (rule!3954 t1!34)))) t!117027) tb!69243))

(declare-fun result!83886 () Bool)

(assert (= result!83886 result!83856))

(assert (=> d!363056 t!117027))

(assert (=> b!1288576 t!117027))

(assert (=> b!1288578 t!117025))

(declare-fun b_and!85781 () Bool)

(declare-fun tp!375612 () Bool)

(assert (=> b!1289111 (= tp!375612 (and (=> t!117025 result!83884) (=> t!117027 result!83886) b_and!85781))))

(declare-fun e!826720 () Bool)

(assert (=> b!1289111 (= e!826720 (and tp!375613 tp!375612))))

(declare-fun tp!375614 () Bool)

(declare-fun b!1289110 () Bool)

(declare-fun e!826721 () Bool)

(assert (=> b!1289110 (= e!826721 (and tp!375614 (inv!17273 (tag!2477 (h!18260 (t!116976 (t!116976 rules!2550))))) (inv!17277 (transformation!2215 (h!18260 (t!116976 (t!116976 rules!2550))))) e!826720))))

(declare-fun b!1289109 () Bool)

(declare-fun e!826719 () Bool)

(declare-fun tp!375615 () Bool)

(assert (=> b!1289109 (= e!826719 (and e!826721 tp!375615))))

(assert (=> b!1288622 (= tp!375504 e!826719)))

(assert (= b!1289110 b!1289111))

(assert (= b!1289109 b!1289110))

(assert (= (and b!1288622 ((_ is Cons!12859) (t!116976 (t!116976 rules!2550)))) b!1289109))

(declare-fun m!1439807 () Bool)

(assert (=> b!1289110 m!1439807))

(declare-fun m!1439809 () Bool)

(assert (=> b!1289110 m!1439809))

(declare-fun tp!375618 () Bool)

(declare-fun tp!375617 () Bool)

(declare-fun e!826724 () Bool)

(declare-fun b!1289112 () Bool)

(assert (=> b!1289112 (= e!826724 (and (inv!17278 (left!11070 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))))) tp!375617 (inv!17278 (right!11400 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))))) tp!375618))))

(declare-fun b!1289114 () Bool)

(declare-fun e!826723 () Bool)

(declare-fun tp!375616 () Bool)

(assert (=> b!1289114 (= e!826723 tp!375616)))

(declare-fun b!1289113 () Bool)

(assert (=> b!1289113 (= e!826724 (and (inv!17284 (xs!6936 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))))) e!826723))))

(assert (=> b!1288554 (= tp!375468 (and (inv!17278 (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34)))) e!826724))))

(assert (= (and b!1288554 ((_ is Node!4225) (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))))) b!1289112))

(assert (= b!1289113 b!1289114))

(assert (= (and b!1288554 ((_ is Leaf!6529) (c!212057 (dynLambda!5605 (toChars!3265 (transformation!2215 (rule!3954 t1!34))) (value!72760 t1!34))))) b!1289113))

(declare-fun m!1439811 () Bool)

(assert (=> b!1289112 m!1439811))

(declare-fun m!1439813 () Bool)

(assert (=> b!1289112 m!1439813))

(declare-fun m!1439815 () Bool)

(assert (=> b!1289113 m!1439815))

(assert (=> b!1288554 m!1439131))

(declare-fun b!1289115 () Bool)

(declare-fun e!826725 () Bool)

(assert (=> b!1289115 (= e!826725 tp_is_empty!6553)))

(declare-fun b!1289117 () Bool)

(declare-fun tp!375621 () Bool)

(assert (=> b!1289117 (= e!826725 tp!375621)))

(assert (=> b!1288623 (= tp!375503 e!826725)))

(declare-fun b!1289116 () Bool)

(declare-fun tp!375622 () Bool)

(declare-fun tp!375623 () Bool)

(assert (=> b!1289116 (= e!826725 (and tp!375622 tp!375623))))

(declare-fun b!1289118 () Bool)

(declare-fun tp!375619 () Bool)

(declare-fun tp!375620 () Bool)

(assert (=> b!1289118 (= e!826725 (and tp!375619 tp!375620))))

(assert (= (and b!1288623 ((_ is ElementMatch!3529) (regex!2215 (h!18260 (t!116976 rules!2550))))) b!1289115))

(assert (= (and b!1288623 ((_ is Concat!5835) (regex!2215 (h!18260 (t!116976 rules!2550))))) b!1289116))

(assert (= (and b!1288623 ((_ is Star!3529) (regex!2215 (h!18260 (t!116976 rules!2550))))) b!1289117))

(assert (= (and b!1288623 ((_ is Union!3529) (regex!2215 (h!18260 (t!116976 rules!2550))))) b!1289118))

(declare-fun b!1289119 () Bool)

(declare-fun e!826726 () Bool)

(assert (=> b!1289119 (= e!826726 tp_is_empty!6553)))

(declare-fun b!1289121 () Bool)

(declare-fun tp!375626 () Bool)

(assert (=> b!1289121 (= e!826726 tp!375626)))

(assert (=> b!1288612 (= tp!375490 e!826726)))

(declare-fun b!1289120 () Bool)

(declare-fun tp!375627 () Bool)

(declare-fun tp!375628 () Bool)

(assert (=> b!1289120 (= e!826726 (and tp!375627 tp!375628))))

(declare-fun b!1289122 () Bool)

(declare-fun tp!375624 () Bool)

(declare-fun tp!375625 () Bool)

(assert (=> b!1289122 (= e!826726 (and tp!375624 tp!375625))))

(assert (= (and b!1288612 ((_ is ElementMatch!3529) (reg!3858 (regex!2215 (h!18260 rules!2550))))) b!1289119))

(assert (= (and b!1288612 ((_ is Concat!5835) (reg!3858 (regex!2215 (h!18260 rules!2550))))) b!1289120))

(assert (= (and b!1288612 ((_ is Star!3529) (reg!3858 (regex!2215 (h!18260 rules!2550))))) b!1289121))

(assert (= (and b!1288612 ((_ is Union!3529) (reg!3858 (regex!2215 (h!18260 rules!2550))))) b!1289122))

(declare-fun b!1289123 () Bool)

(declare-fun e!826727 () Bool)

(assert (=> b!1289123 (= e!826727 tp_is_empty!6553)))

(declare-fun b!1289125 () Bool)

(declare-fun tp!375631 () Bool)

(assert (=> b!1289125 (= e!826727 tp!375631)))

(assert (=> b!1288608 (= tp!375482 e!826727)))

(declare-fun b!1289124 () Bool)

(declare-fun tp!375632 () Bool)

(declare-fun tp!375633 () Bool)

(assert (=> b!1289124 (= e!826727 (and tp!375632 tp!375633))))

(declare-fun b!1289126 () Bool)

(declare-fun tp!375629 () Bool)

(declare-fun tp!375630 () Bool)

(assert (=> b!1289126 (= e!826727 (and tp!375629 tp!375630))))

(assert (= (and b!1288608 ((_ is ElementMatch!3529) (regOne!7571 (regex!2215 (rule!3954 t1!34))))) b!1289123))

(assert (= (and b!1288608 ((_ is Concat!5835) (regOne!7571 (regex!2215 (rule!3954 t1!34))))) b!1289124))

(assert (= (and b!1288608 ((_ is Star!3529) (regOne!7571 (regex!2215 (rule!3954 t1!34))))) b!1289125))

(assert (= (and b!1288608 ((_ is Union!3529) (regOne!7571 (regex!2215 (rule!3954 t1!34))))) b!1289126))

(declare-fun b!1289127 () Bool)

(declare-fun e!826728 () Bool)

(assert (=> b!1289127 (= e!826728 tp_is_empty!6553)))

(declare-fun b!1289129 () Bool)

(declare-fun tp!375636 () Bool)

(assert (=> b!1289129 (= e!826728 tp!375636)))

(assert (=> b!1288608 (= tp!375483 e!826728)))

(declare-fun b!1289128 () Bool)

(declare-fun tp!375637 () Bool)

(declare-fun tp!375638 () Bool)

(assert (=> b!1289128 (= e!826728 (and tp!375637 tp!375638))))

(declare-fun b!1289130 () Bool)

(declare-fun tp!375634 () Bool)

(declare-fun tp!375635 () Bool)

(assert (=> b!1289130 (= e!826728 (and tp!375634 tp!375635))))

(assert (= (and b!1288608 ((_ is ElementMatch!3529) (regTwo!7571 (regex!2215 (rule!3954 t1!34))))) b!1289127))

(assert (= (and b!1288608 ((_ is Concat!5835) (regTwo!7571 (regex!2215 (rule!3954 t1!34))))) b!1289128))

(assert (= (and b!1288608 ((_ is Star!3529) (regTwo!7571 (regex!2215 (rule!3954 t1!34))))) b!1289129))

(assert (= (and b!1288608 ((_ is Union!3529) (regTwo!7571 (regex!2215 (rule!3954 t1!34))))) b!1289130))

(declare-fun b!1289131 () Bool)

(declare-fun e!826729 () Bool)

(assert (=> b!1289131 (= e!826729 tp_is_empty!6553)))

(declare-fun b!1289133 () Bool)

(declare-fun tp!375641 () Bool)

(assert (=> b!1289133 (= e!826729 tp!375641)))

(assert (=> b!1288611 (= tp!375491 e!826729)))

(declare-fun b!1289132 () Bool)

(declare-fun tp!375642 () Bool)

(declare-fun tp!375643 () Bool)

(assert (=> b!1289132 (= e!826729 (and tp!375642 tp!375643))))

(declare-fun b!1289134 () Bool)

(declare-fun tp!375639 () Bool)

(declare-fun tp!375640 () Bool)

(assert (=> b!1289134 (= e!826729 (and tp!375639 tp!375640))))

(assert (= (and b!1288611 ((_ is ElementMatch!3529) (regOne!7570 (regex!2215 (h!18260 rules!2550))))) b!1289131))

(assert (= (and b!1288611 ((_ is Concat!5835) (regOne!7570 (regex!2215 (h!18260 rules!2550))))) b!1289132))

(assert (= (and b!1288611 ((_ is Star!3529) (regOne!7570 (regex!2215 (h!18260 rules!2550))))) b!1289133))

(assert (= (and b!1288611 ((_ is Union!3529) (regOne!7570 (regex!2215 (h!18260 rules!2550))))) b!1289134))

(declare-fun b!1289135 () Bool)

(declare-fun e!826730 () Bool)

(assert (=> b!1289135 (= e!826730 tp_is_empty!6553)))

(declare-fun b!1289137 () Bool)

(declare-fun tp!375646 () Bool)

(assert (=> b!1289137 (= e!826730 tp!375646)))

(assert (=> b!1288611 (= tp!375492 e!826730)))

(declare-fun b!1289136 () Bool)

(declare-fun tp!375647 () Bool)

(declare-fun tp!375648 () Bool)

(assert (=> b!1289136 (= e!826730 (and tp!375647 tp!375648))))

(declare-fun b!1289138 () Bool)

(declare-fun tp!375644 () Bool)

(declare-fun tp!375645 () Bool)

(assert (=> b!1289138 (= e!826730 (and tp!375644 tp!375645))))

(assert (= (and b!1288611 ((_ is ElementMatch!3529) (regTwo!7570 (regex!2215 (h!18260 rules!2550))))) b!1289135))

(assert (= (and b!1288611 ((_ is Concat!5835) (regTwo!7570 (regex!2215 (h!18260 rules!2550))))) b!1289136))

(assert (= (and b!1288611 ((_ is Star!3529) (regTwo!7570 (regex!2215 (h!18260 rules!2550))))) b!1289137))

(assert (= (and b!1288611 ((_ is Union!3529) (regTwo!7570 (regex!2215 (h!18260 rules!2550))))) b!1289138))

(declare-fun b_lambda!36771 () Bool)

(assert (= b_lambda!36767 (or d!363078 b_lambda!36771)))

(declare-fun bs!328385 () Bool)

(declare-fun d!363326 () Bool)

(assert (= bs!328385 (and d!363326 d!363078)))

(assert (=> bs!328385 (= (dynLambda!5615 lambda!50542 (h!18260 rules!2550)) (ruleValid!542 thiss!19762 (h!18260 rules!2550)))))

(assert (=> bs!328385 m!1439207))

(assert (=> b!1289012 d!363326))

(declare-fun b_lambda!36773 () Bool)

(assert (= b_lambda!36769 (or d!363060 b_lambda!36773)))

(declare-fun bs!328386 () Bool)

(declare-fun d!363328 () Bool)

(assert (= bs!328386 (and d!363328 d!363060)))

(assert (=> bs!328386 (= (dynLambda!5616 lambda!50539 (h!18260 rules!2550)) (regex!2215 (h!18260 rules!2550)))))

(assert (=> b!1289055 d!363328))

(check-sat (not b!1289130) (not b_next!31093) (not b!1288842) (not b!1289064) (not b!1288728) (not b!1289044) (not b!1289125) (not d!363120) (not d!363174) (not b!1288779) (not b!1289095) (not b!1289091) b_and!85767 (not b_next!31095) (not b!1289040) (not b!1288757) (not b!1288805) (not d!363220) (not b!1289121) (not d!363112) b_and!85763 (not b!1288897) (not bm!88554) (not b!1289138) (not b!1288970) (not b!1289046) (not b!1288554) (not b!1289100) (not d!363272) b_and!85781 (not b!1288876) (not d!363152) (not b!1289088) (not b!1289092) (not b!1289087) (not b!1289108) (not bm!88521) (not b!1289084) (not d!363108) (not b_lambda!36771) (not b!1289047) b_and!85715 (not d!363122) (not b!1289132) (not b!1289065) (not b_next!31103) (not b!1288854) (not b!1289126) (not b!1289094) (not b!1288841) (not b!1289081) (not b!1289086) (not d!363318) (not b!1289007) (not b!1288859) (not b!1288712) (not b!1288974) (not d!363188) (not b!1289133) (not bm!88530) (not b!1289112) (not bm!88553) b_and!85759 (not d!363288) (not d!363192) (not bm!88529) (not bm!88542) (not b!1288976) (not bs!328385) (not b!1288714) (not d!363194) (not d!363224) (not b!1289098) (not b!1288829) b_and!85711 (not b!1289076) (not d!363180) (not d!363116) (not d!363196) (not b!1289068) (not b!1288716) (not b!1288732) (not b!1288975) (not d!363172) b_and!85779 (not b!1288806) (not b!1289090) (not d!363212) (not b_lambda!36773) (not b!1289077) (not b!1288741) (not b!1288823) (not d!363304) (not b!1288895) (not b!1289043) (not b!1289129) (not b!1288796) (not b!1288804) (not b!1288715) b_and!85761 (not b!1289120) (not d!363154) (not b!1289116) (not b!1288759) (not b_lambda!36751) (not b!1288830) (not d!363298) (not b!1288756) (not b!1289069) tp_is_empty!6553 (not b_next!31113) (not d!363106) (not d!363132) (not b!1288877) (not d!363130) (not b!1288801) (not d!363296) (not b!1288857) (not b_lambda!36753) (not b!1288803) (not b!1288739) (not b!1288760) (not b!1288719) (not b!1288800) (not b!1289013) (not d!363248) (not d!363110) (not d!363184) (not b!1289113) (not b!1288798) (not b!1288797) (not d!363208) (not b!1288722) (not d!363136) (not b!1288794) (not b!1288807) (not b!1289124) (not d!363216) (not b!1289106) (not d!363204) (not b!1288926) (not b!1289085) (not d!363182) (not b!1288843) (not b!1289099) (not d!363164) (not d!363104) (not d!363218) (not b!1288998) (not b!1289080) (not b!1289082) (not b!1289070) (not d!363134) (not b!1289045) (not b!1289066) (not d!363290) (not d!363118) (not d!363270) (not b!1288973) (not b!1289055) (not b_next!31099) (not b_lambda!36755) (not d!363200) (not b!1289104) (not d!363302) (not b!1289107) (not b!1288840) (not b!1289102) (not b!1289078) (not d!363238) (not b_next!31097) (not d!363258) (not b!1289019) (not b_lambda!36749) (not b!1288777) (not d!363198) (not b!1289110) (not b!1288822) (not d!363234) (not b!1289128) (not d!363320) (not b!1289137) (not b!1288899) (not b!1289096) (not b!1289103) (not d!363314) (not b!1289041) (not b!1289074) (not b_next!31101) b_and!85765 (not b_next!31105) (not b!1289073) (not d!363222) (not b_next!31111) (not b!1288438) (not d!363322) (not b!1288730) (not d!363114) (not b!1289114) (not b!1288740) (not b!1289072) b_and!85719 (not b!1288855) (not b!1288809) (not d!363300) (not b!1289118) (not d!363310) (not b!1289134) (not d!363206) (not b!1289122) (not b!1289136) (not b!1289117) (not d!363294) (not d!363292) (not b!1289109) (not b_next!31091))
(check-sat (not b_next!31093) b_and!85763 b_and!85781 b_and!85759 b_and!85711 b_and!85779 b_and!85761 (not b_next!31113) (not b_next!31099) (not b_next!31097) (not b_next!31101) b_and!85719 (not b_next!31091) b_and!85767 (not b_next!31095) b_and!85715 (not b_next!31103) b_and!85765 (not b_next!31105) (not b_next!31111))
