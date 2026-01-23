; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115034 () Bool)

(assert start!115034)

(declare-fun b!1302715 () Bool)

(declare-fun b_free!31083 () Bool)

(declare-fun b_next!31787 () Bool)

(assert (=> b!1302715 (= b_free!31083 (not b_next!31787))))

(declare-fun tp!380209 () Bool)

(declare-fun b_and!86935 () Bool)

(assert (=> b!1302715 (= tp!380209 b_and!86935)))

(declare-fun b_free!31085 () Bool)

(declare-fun b_next!31789 () Bool)

(assert (=> b!1302715 (= b_free!31085 (not b_next!31789))))

(declare-fun tp!380216 () Bool)

(declare-fun b_and!86937 () Bool)

(assert (=> b!1302715 (= tp!380216 b_and!86937)))

(declare-fun b!1302717 () Bool)

(declare-fun b_free!31087 () Bool)

(declare-fun b_next!31791 () Bool)

(assert (=> b!1302717 (= b_free!31087 (not b_next!31791))))

(declare-fun tp!380212 () Bool)

(declare-fun b_and!86939 () Bool)

(assert (=> b!1302717 (= tp!380212 b_and!86939)))

(declare-fun b_free!31089 () Bool)

(declare-fun b_next!31793 () Bool)

(assert (=> b!1302717 (= b_free!31089 (not b_next!31793))))

(declare-fun tp!380210 () Bool)

(declare-fun b_and!86941 () Bool)

(assert (=> b!1302717 (= tp!380210 b_and!86941)))

(declare-fun b!1302730 () Bool)

(declare-fun b_free!31091 () Bool)

(declare-fun b_next!31795 () Bool)

(assert (=> b!1302730 (= b_free!31091 (not b_next!31795))))

(declare-fun tp!380207 () Bool)

(declare-fun b_and!86943 () Bool)

(assert (=> b!1302730 (= tp!380207 b_and!86943)))

(declare-fun b_free!31093 () Bool)

(declare-fun b_next!31797 () Bool)

(assert (=> b!1302730 (= b_free!31093 (not b_next!31797))))

(declare-fun tp!380213 () Bool)

(declare-fun b_and!86945 () Bool)

(assert (=> b!1302730 (= tp!380213 b_and!86945)))

(declare-fun b!1302716 () Bool)

(assert (=> b!1302716 true))

(assert (=> b!1302716 true))

(declare-fun b!1302703 () Bool)

(assert (=> b!1302703 true))

(declare-fun b!1302722 () Bool)

(assert (=> b!1302722 true))

(declare-fun e!835326 () Bool)

(declare-fun e!835322 () Bool)

(assert (=> b!1302703 (= e!835326 e!835322)))

(declare-fun res!583682 () Bool)

(assert (=> b!1302703 (=> res!583682 e!835322)))

(declare-fun lambda!51559 () Int)

(declare-datatypes ((List!13153 0))(
  ( (Nil!13087) (Cons!13087 (h!18488 (_ BitVec 16)) (t!117714 List!13153)) )
))
(declare-datatypes ((TokenValue!2351 0))(
  ( (FloatLiteralValue!4702 (text!16902 List!13153)) (TokenValueExt!2350 (__x!8531 Int)) (Broken!11755 (value!74045 List!13153)) (Object!2416) (End!2351) (Def!2351) (Underscore!2351) (Match!2351) (Else!2351) (Error!2351) (Case!2351) (If!2351) (Extends!2351) (Abstract!2351) (Class!2351) (Val!2351) (DelimiterValue!4702 (del!2411 List!13153)) (KeywordValue!2357 (value!74046 List!13153)) (CommentValue!4702 (value!74047 List!13153)) (WhitespaceValue!4702 (value!74048 List!13153)) (IndentationValue!2351 (value!74049 List!13153)) (String!15990) (Int32!2351) (Broken!11756 (value!74050 List!13153)) (Boolean!2352) (Unit!19203) (OperatorValue!2354 (op!2411 List!13153)) (IdentifierValue!4702 (value!74051 List!13153)) (IdentifierValue!4703 (value!74052 List!13153)) (WhitespaceValue!4703 (value!74053 List!13153)) (True!4702) (False!4702) (Broken!11757 (value!74054 List!13153)) (Broken!11758 (value!74055 List!13153)) (True!4703) (RightBrace!2351) (RightBracket!2351) (Colon!2351) (Null!2351) (Comma!2351) (LeftBracket!2351) (False!4703) (LeftBrace!2351) (ImaginaryLiteralValue!2351 (text!16903 List!13153)) (StringLiteralValue!7053 (value!74056 List!13153)) (EOFValue!2351 (value!74057 List!13153)) (IdentValue!2351 (value!74058 List!13153)) (DelimiterValue!4703 (value!74059 List!13153)) (DedentValue!2351 (value!74060 List!13153)) (NewLineValue!2351 (value!74061 List!13153)) (IntegerValue!7053 (value!74062 (_ BitVec 32)) (text!16904 List!13153)) (IntegerValue!7054 (value!74063 Int) (text!16905 List!13153)) (Times!2351) (Or!2351) (Equal!2351) (Minus!2351) (Broken!11759 (value!74064 List!13153)) (And!2351) (Div!2351) (LessEqual!2351) (Mod!2351) (Concat!5926) (Not!2351) (Plus!2351) (SpaceValue!2351 (value!74065 List!13153)) (IntegerValue!7055 (value!74066 Int) (text!16906 List!13153)) (StringLiteralValue!7054 (text!16907 List!13153)) (FloatLiteralValue!4703 (text!16908 List!13153)) (BytesLiteralValue!2351 (value!74067 List!13153)) (CommentValue!4703 (value!74068 List!13153)) (StringLiteralValue!7055 (value!74069 List!13153)) (ErrorTokenValue!2351 (msg!2412 List!13153)) )
))
(declare-datatypes ((C!7440 0))(
  ( (C!7441 (val!4280 Int)) )
))
(declare-datatypes ((List!13154 0))(
  ( (Nil!13088) (Cons!13088 (h!18489 C!7440) (t!117715 List!13154)) )
))
(declare-datatypes ((IArray!8591 0))(
  ( (IArray!8592 (innerList!4353 List!13154)) )
))
(declare-datatypes ((Conc!4293 0))(
  ( (Node!4293 (left!11253 Conc!4293) (right!11583 Conc!4293) (csize!8816 Int) (cheight!4504 Int)) (Leaf!6620 (xs!7008 IArray!8591) (csize!8817 Int)) (Empty!4293) )
))
(declare-datatypes ((BalanceConc!8526 0))(
  ( (BalanceConc!8527 (c!214247 Conc!4293)) )
))
(declare-datatypes ((Regex!3575 0))(
  ( (ElementMatch!3575 (c!214248 C!7440)) (Concat!5927 (regOne!7662 Regex!3575) (regTwo!7662 Regex!3575)) (EmptyExpr!3575) (Star!3575 (reg!3904 Regex!3575)) (EmptyLang!3575) (Union!3575 (regOne!7663 Regex!3575) (regTwo!7663 Regex!3575)) )
))
(declare-datatypes ((String!15991 0))(
  ( (String!15992 (value!74070 String)) )
))
(declare-datatypes ((TokenValueInjection!4362 0))(
  ( (TokenValueInjection!4363 (toValue!3476 Int) (toChars!3335 Int)) )
))
(declare-datatypes ((Rule!4322 0))(
  ( (Rule!4323 (regex!2261 Regex!3575) (tag!2523 String!15991) (isSeparator!2261 Bool) (transformation!2261 TokenValueInjection!4362)) )
))
(declare-datatypes ((List!13155 0))(
  ( (Nil!13089) (Cons!13089 (h!18490 Rule!4322) (t!117716 List!13155)) )
))
(declare-fun rules!2550 () List!13155)

(declare-fun lambda!51560 () Int)

(declare-datatypes ((List!13156 0))(
  ( (Nil!13090) (Cons!13090 (h!18491 Regex!3575) (t!117717 List!13156)) )
))
(declare-fun exists!224 (List!13156 Int) Bool)

(declare-fun map!2858 (List!13155 Int) List!13156)

(assert (=> b!1302703 (= res!583682 (not (exists!224 (map!2858 rules!2550 lambda!51559) lambda!51560)))))

(declare-fun lt!428342 () List!13156)

(assert (=> b!1302703 (exists!224 lt!428342 lambda!51560)))

(declare-fun lt!428349 () Regex!3575)

(declare-fun lt!428346 () List!13154)

(declare-datatypes ((Unit!19204 0))(
  ( (Unit!19205) )
))
(declare-fun lt!428340 () Unit!19204)

(declare-fun matchRGenUnionSpec!12 (Regex!3575 List!13156 List!13154) Unit!19204)

(assert (=> b!1302703 (= lt!428340 (matchRGenUnionSpec!12 lt!428349 lt!428342 lt!428346))))

(assert (=> b!1302703 (= lt!428342 (map!2858 rules!2550 lambda!51559))))

(declare-fun e!835312 () Bool)

(declare-fun tp!380217 () Bool)

(declare-fun e!835317 () Bool)

(declare-fun b!1302704 () Bool)

(declare-datatypes ((Token!4184 0))(
  ( (Token!4185 (value!74071 TokenValue!2351) (rule!4000 Rule!4322) (size!10688 Int) (originalCharacters!3123 List!13154)) )
))
(declare-fun t2!34 () Token!4184)

(declare-fun inv!17511 (String!15991) Bool)

(declare-fun inv!17514 (TokenValueInjection!4362) Bool)

(assert (=> b!1302704 (= e!835317 (and tp!380217 (inv!17511 (tag!2523 (rule!4000 t2!34))) (inv!17514 (transformation!2261 (rule!4000 t2!34))) e!835312))))

(declare-fun b!1302705 () Bool)

(declare-fun e!835308 () Bool)

(assert (=> b!1302705 (= e!835308 true)))

(declare-fun lt!428345 () Rule!4322)

(declare-fun lambda!51561 () Int)

(declare-fun getWitness!116 (List!13155 Int) Rule!4322)

(assert (=> b!1302705 (= lt!428345 (getWitness!116 rules!2550 lambda!51561))))

(declare-fun b!1302706 () Bool)

(declare-fun e!835311 () Bool)

(assert (=> b!1302706 (= e!835311 e!835326)))

(declare-fun res!583700 () Bool)

(assert (=> b!1302706 (=> res!583700 e!835326)))

(declare-fun lt!428339 () List!13154)

(declare-fun lt!428338 () C!7440)

(declare-fun contains!2206 (List!13154 C!7440) Bool)

(assert (=> b!1302706 (= res!583700 (not (contains!2206 lt!428339 lt!428338)))))

(declare-fun lt!428344 () BalanceConc!8526)

(declare-fun apply!2927 (BalanceConc!8526 Int) C!7440)

(assert (=> b!1302706 (= lt!428338 (apply!2927 lt!428344 0))))

(declare-fun b!1302707 () Bool)

(declare-fun res!583690 () Bool)

(assert (=> b!1302707 (=> res!583690 e!835326)))

(assert (=> b!1302707 (= res!583690 (not (contains!2206 lt!428346 lt!428338)))))

(declare-fun e!835313 () Bool)

(declare-fun b!1302708 () Bool)

(declare-fun t1!34 () Token!4184)

(declare-fun tp!380214 () Bool)

(declare-fun e!835310 () Bool)

(declare-fun inv!21 (TokenValue!2351) Bool)

(assert (=> b!1302708 (= e!835310 (and (inv!21 (value!74071 t1!34)) e!835313 tp!380214))))

(declare-fun b!1302709 () Bool)

(declare-fun res!583688 () Bool)

(declare-fun e!835314 () Bool)

(assert (=> b!1302709 (=> (not res!583688) (not e!835314))))

(declare-datatypes ((LexerInterface!1956 0))(
  ( (LexerInterfaceExt!1953 (__x!8532 Int)) (Lexer!1954) )
))
(declare-fun thiss!19762 () LexerInterface!1956)

(declare-fun rulesProduceIndividualToken!925 (LexerInterface!1956 List!13155 Token!4184) Bool)

(assert (=> b!1302709 (= res!583688 (rulesProduceIndividualToken!925 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1302710 () Bool)

(declare-fun e!835320 () Bool)

(declare-fun e!835307 () Bool)

(declare-fun tp!380211 () Bool)

(assert (=> b!1302710 (= e!835320 (and e!835307 tp!380211))))

(declare-fun b!1302711 () Bool)

(declare-fun res!583687 () Bool)

(assert (=> b!1302711 (=> res!583687 e!835326)))

(declare-fun lt!428347 () C!7440)

(assert (=> b!1302711 (= res!583687 (not (contains!2206 lt!428346 lt!428347)))))

(declare-fun b!1302712 () Bool)

(declare-fun res!583694 () Bool)

(assert (=> b!1302712 (=> (not res!583694) (not e!835314))))

(assert (=> b!1302712 (= res!583694 (rulesProduceIndividualToken!925 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1302713 () Bool)

(declare-fun e!835323 () Bool)

(declare-fun e!835325 () Bool)

(assert (=> b!1302713 (= e!835323 e!835325)))

(declare-fun res!583699 () Bool)

(assert (=> b!1302713 (=> (not res!583699) (not e!835325))))

(declare-fun prefixMatch!88 (Regex!3575 List!13154) Bool)

(assert (=> b!1302713 (= res!583699 (prefixMatch!88 lt!428349 lt!428339))))

(declare-fun rulesRegex!146 (LexerInterface!1956 List!13155) Regex!3575)

(assert (=> b!1302713 (= lt!428349 (rulesRegex!146 thiss!19762 rules!2550))))

(declare-fun lt!428348 () List!13154)

(declare-fun ++!3332 (List!13154 List!13154) List!13154)

(assert (=> b!1302713 (= lt!428339 (++!3332 lt!428348 (Cons!13088 lt!428347 Nil!13088)))))

(declare-fun lt!428343 () BalanceConc!8526)

(assert (=> b!1302713 (= lt!428347 (apply!2927 lt!428343 0))))

(declare-fun list!4903 (BalanceConc!8526) List!13154)

(assert (=> b!1302713 (= lt!428348 (list!4903 lt!428344))))

(declare-fun charsOf!1233 (Token!4184) BalanceConc!8526)

(assert (=> b!1302713 (= lt!428344 (charsOf!1233 t1!34))))

(declare-fun e!835306 () Bool)

(assert (=> b!1302715 (= e!835306 (and tp!380209 tp!380216))))

(declare-fun e!835305 () Bool)

(assert (=> b!1302716 (= e!835325 (not e!835305))))

(declare-fun res!583693 () Bool)

(assert (=> b!1302716 (=> res!583693 e!835305)))

(declare-fun lambda!51558 () Int)

(declare-fun Exists!733 (Int) Bool)

(assert (=> b!1302716 (= res!583693 (not (Exists!733 lambda!51558)))))

(assert (=> b!1302716 (Exists!733 lambda!51558)))

(declare-fun lt!428337 () Unit!19204)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!51 (Regex!3575 List!13154) Unit!19204)

(assert (=> b!1302716 (= lt!428337 (lemmaPrefixMatchThenExistsStringThatMatches!51 lt!428349 lt!428339))))

(declare-fun e!835309 () Bool)

(assert (=> b!1302717 (= e!835309 (and tp!380212 tp!380210))))

(declare-fun b!1302718 () Bool)

(declare-fun tp!380218 () Bool)

(assert (=> b!1302718 (= e!835313 (and tp!380218 (inv!17511 (tag!2523 (rule!4000 t1!34))) (inv!17514 (transformation!2261 (rule!4000 t1!34))) e!835306))))

(declare-fun b!1302719 () Bool)

(declare-fun res!583691 () Bool)

(assert (=> b!1302719 (=> (not res!583691) (not e!835314))))

(declare-fun isEmpty!7759 (List!13155) Bool)

(assert (=> b!1302719 (= res!583691 (not (isEmpty!7759 rules!2550)))))

(declare-fun b!1302720 () Bool)

(declare-fun res!583684 () Bool)

(assert (=> b!1302720 (=> (not res!583684) (not e!835314))))

(assert (=> b!1302720 (= res!583684 (not (= (isSeparator!2261 (rule!4000 t1!34)) (isSeparator!2261 (rule!4000 t2!34)))))))

(declare-fun b!1302721 () Bool)

(declare-fun res!583698 () Bool)

(assert (=> b!1302721 (=> res!583698 e!835326)))

(declare-fun matchR!1577 (Regex!3575 List!13154) Bool)

(assert (=> b!1302721 (= res!583698 (not (matchR!1577 lt!428349 lt!428346)))))

(declare-fun e!835324 () Bool)

(assert (=> b!1302722 (= e!835324 e!835308)))

(declare-fun res!583686 () Bool)

(assert (=> b!1302722 (=> res!583686 e!835308)))

(declare-fun exists!225 (List!13155 Int) Bool)

(assert (=> b!1302722 (= res!583686 (not (exists!225 rules!2550 lambda!51561)))))

(assert (=> b!1302722 (exists!225 rules!2550 lambda!51561)))

(declare-fun lt!428350 () Regex!3575)

(declare-fun lt!428341 () Unit!19204)

(declare-fun lemmaMapContains!4 (List!13155 Int Regex!3575) Unit!19204)

(assert (=> b!1302722 (= lt!428341 (lemmaMapContains!4 rules!2550 lambda!51559 lt!428350))))

(declare-fun b!1302723 () Bool)

(declare-fun tp!380215 () Bool)

(declare-fun e!835304 () Bool)

(assert (=> b!1302723 (= e!835304 (and (inv!21 (value!74071 t2!34)) e!835317 tp!380215))))

(declare-fun res!583695 () Bool)

(assert (=> start!115034 (=> (not res!583695) (not e!835314))))

(get-info :version)

(assert (=> start!115034 (= res!583695 ((_ is Lexer!1954) thiss!19762))))

(assert (=> start!115034 e!835314))

(assert (=> start!115034 true))

(assert (=> start!115034 e!835320))

(declare-fun inv!17515 (Token!4184) Bool)

(assert (=> start!115034 (and (inv!17515 t1!34) e!835310)))

(assert (=> start!115034 (and (inv!17515 t2!34) e!835304)))

(declare-fun b!1302714 () Bool)

(assert (=> b!1302714 (= e!835314 e!835323)))

(declare-fun res!583689 () Bool)

(assert (=> b!1302714 (=> (not res!583689) (not e!835323))))

(declare-fun size!10689 (BalanceConc!8526) Int)

(assert (=> b!1302714 (= res!583689 (> (size!10689 lt!428343) 0))))

(assert (=> b!1302714 (= lt!428343 (charsOf!1233 t2!34))))

(declare-fun b!1302724 () Bool)

(declare-fun res!583683 () Bool)

(assert (=> b!1302724 (=> (not res!583683) (not e!835323))))

(declare-fun sepAndNonSepRulesDisjointChars!634 (List!13155 List!13155) Bool)

(assert (=> b!1302724 (= res!583683 (sepAndNonSepRulesDisjointChars!634 rules!2550 rules!2550))))

(declare-fun b!1302725 () Bool)

(declare-fun res!583685 () Bool)

(assert (=> b!1302725 (=> (not res!583685) (not e!835323))))

(declare-fun separableTokensPredicate!239 (LexerInterface!1956 Token!4184 Token!4184 List!13155) Bool)

(assert (=> b!1302725 (= res!583685 (not (separableTokensPredicate!239 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1302726 () Bool)

(assert (=> b!1302726 (= e!835322 e!835324)))

(declare-fun res!583697 () Bool)

(assert (=> b!1302726 (=> res!583697 e!835324)))

(declare-fun contains!2207 (List!13156 Regex!3575) Bool)

(assert (=> b!1302726 (= res!583697 (not (contains!2207 (map!2858 rules!2550 lambda!51559) lt!428350)))))

(declare-fun getWitness!117 (List!13156 Int) Regex!3575)

(assert (=> b!1302726 (= lt!428350 (getWitness!117 (map!2858 rules!2550 lambda!51559) lambda!51560))))

(declare-fun b!1302727 () Bool)

(declare-fun tp!380208 () Bool)

(assert (=> b!1302727 (= e!835307 (and tp!380208 (inv!17511 (tag!2523 (h!18490 rules!2550))) (inv!17514 (transformation!2261 (h!18490 rules!2550))) e!835309))))

(declare-fun b!1302728 () Bool)

(declare-fun res!583692 () Bool)

(assert (=> b!1302728 (=> res!583692 e!835326)))

(assert (=> b!1302728 (= res!583692 (not (contains!2206 lt!428339 lt!428347)))))

(declare-fun b!1302729 () Bool)

(declare-fun res!583681 () Bool)

(assert (=> b!1302729 (=> (not res!583681) (not e!835314))))

(declare-fun rulesInvariant!1826 (LexerInterface!1956 List!13155) Bool)

(assert (=> b!1302729 (= res!583681 (rulesInvariant!1826 thiss!19762 rules!2550))))

(assert (=> b!1302730 (= e!835312 (and tp!380207 tp!380213))))

(declare-fun b!1302731 () Bool)

(assert (=> b!1302731 (= e!835305 e!835311)))

(declare-fun res!583696 () Bool)

(assert (=> b!1302731 (=> res!583696 e!835311)))

(declare-fun getSuffix!431 (List!13154 List!13154) List!13154)

(assert (=> b!1302731 (= res!583696 (not (= lt!428346 (++!3332 lt!428339 (getSuffix!431 lt!428346 lt!428339)))))))

(declare-fun pickWitness!38 (Int) List!13154)

(assert (=> b!1302731 (= lt!428346 (pickWitness!38 lambda!51558))))

(assert (= (and start!115034 res!583695) b!1302719))

(assert (= (and b!1302719 res!583691) b!1302729))

(assert (= (and b!1302729 res!583681) b!1302712))

(assert (= (and b!1302712 res!583694) b!1302709))

(assert (= (and b!1302709 res!583688) b!1302720))

(assert (= (and b!1302720 res!583684) b!1302714))

(assert (= (and b!1302714 res!583689) b!1302724))

(assert (= (and b!1302724 res!583683) b!1302725))

(assert (= (and b!1302725 res!583685) b!1302713))

(assert (= (and b!1302713 res!583699) b!1302716))

(assert (= (and b!1302716 (not res!583693)) b!1302731))

(assert (= (and b!1302731 (not res!583696)) b!1302706))

(assert (= (and b!1302706 (not res!583700)) b!1302707))

(assert (= (and b!1302707 (not res!583690)) b!1302728))

(assert (= (and b!1302728 (not res!583692)) b!1302711))

(assert (= (and b!1302711 (not res!583687)) b!1302721))

(assert (= (and b!1302721 (not res!583698)) b!1302703))

(assert (= (and b!1302703 (not res!583682)) b!1302726))

(assert (= (and b!1302726 (not res!583697)) b!1302722))

(assert (= (and b!1302722 (not res!583686)) b!1302705))

(assert (= b!1302727 b!1302717))

(assert (= b!1302710 b!1302727))

(assert (= (and start!115034 ((_ is Cons!13089) rules!2550)) b!1302710))

(assert (= b!1302718 b!1302715))

(assert (= b!1302708 b!1302718))

(assert (= start!115034 b!1302708))

(assert (= b!1302704 b!1302730))

(assert (= b!1302723 b!1302704))

(assert (= start!115034 b!1302723))

(declare-fun m!1454135 () Bool)

(assert (=> b!1302725 m!1454135))

(declare-fun m!1454137 () Bool)

(assert (=> b!1302723 m!1454137))

(declare-fun m!1454139 () Bool)

(assert (=> b!1302707 m!1454139))

(declare-fun m!1454141 () Bool)

(assert (=> b!1302722 m!1454141))

(assert (=> b!1302722 m!1454141))

(declare-fun m!1454143 () Bool)

(assert (=> b!1302722 m!1454143))

(declare-fun m!1454145 () Bool)

(assert (=> b!1302718 m!1454145))

(declare-fun m!1454147 () Bool)

(assert (=> b!1302718 m!1454147))

(declare-fun m!1454149 () Bool)

(assert (=> b!1302719 m!1454149))

(declare-fun m!1454151 () Bool)

(assert (=> b!1302716 m!1454151))

(assert (=> b!1302716 m!1454151))

(declare-fun m!1454153 () Bool)

(assert (=> b!1302716 m!1454153))

(declare-fun m!1454155 () Bool)

(assert (=> b!1302713 m!1454155))

(declare-fun m!1454157 () Bool)

(assert (=> b!1302713 m!1454157))

(declare-fun m!1454159 () Bool)

(assert (=> b!1302713 m!1454159))

(declare-fun m!1454161 () Bool)

(assert (=> b!1302713 m!1454161))

(declare-fun m!1454163 () Bool)

(assert (=> b!1302713 m!1454163))

(declare-fun m!1454165 () Bool)

(assert (=> b!1302713 m!1454165))

(declare-fun m!1454167 () Bool)

(assert (=> b!1302705 m!1454167))

(declare-fun m!1454169 () Bool)

(assert (=> b!1302728 m!1454169))

(declare-fun m!1454171 () Bool)

(assert (=> b!1302711 m!1454171))

(declare-fun m!1454173 () Bool)

(assert (=> b!1302726 m!1454173))

(assert (=> b!1302726 m!1454173))

(declare-fun m!1454175 () Bool)

(assert (=> b!1302726 m!1454175))

(assert (=> b!1302726 m!1454173))

(assert (=> b!1302726 m!1454173))

(declare-fun m!1454177 () Bool)

(assert (=> b!1302726 m!1454177))

(declare-fun m!1454179 () Bool)

(assert (=> b!1302704 m!1454179))

(declare-fun m!1454181 () Bool)

(assert (=> b!1302704 m!1454181))

(declare-fun m!1454183 () Bool)

(assert (=> b!1302709 m!1454183))

(declare-fun m!1454185 () Bool)

(assert (=> b!1302727 m!1454185))

(declare-fun m!1454187 () Bool)

(assert (=> b!1302727 m!1454187))

(declare-fun m!1454189 () Bool)

(assert (=> b!1302703 m!1454189))

(assert (=> b!1302703 m!1454173))

(declare-fun m!1454191 () Bool)

(assert (=> b!1302703 m!1454191))

(assert (=> b!1302703 m!1454173))

(declare-fun m!1454193 () Bool)

(assert (=> b!1302703 m!1454193))

(assert (=> b!1302703 m!1454173))

(declare-fun m!1454195 () Bool)

(assert (=> b!1302721 m!1454195))

(declare-fun m!1454197 () Bool)

(assert (=> b!1302708 m!1454197))

(declare-fun m!1454199 () Bool)

(assert (=> b!1302724 m!1454199))

(declare-fun m!1454201 () Bool)

(assert (=> b!1302714 m!1454201))

(declare-fun m!1454203 () Bool)

(assert (=> b!1302714 m!1454203))

(declare-fun m!1454205 () Bool)

(assert (=> b!1302706 m!1454205))

(declare-fun m!1454207 () Bool)

(assert (=> b!1302706 m!1454207))

(declare-fun m!1454209 () Bool)

(assert (=> start!115034 m!1454209))

(declare-fun m!1454211 () Bool)

(assert (=> start!115034 m!1454211))

(declare-fun m!1454213 () Bool)

(assert (=> b!1302712 m!1454213))

(declare-fun m!1454215 () Bool)

(assert (=> b!1302731 m!1454215))

(assert (=> b!1302731 m!1454215))

(declare-fun m!1454217 () Bool)

(assert (=> b!1302731 m!1454217))

(declare-fun m!1454219 () Bool)

(assert (=> b!1302731 m!1454219))

(declare-fun m!1454221 () Bool)

(assert (=> b!1302729 m!1454221))

(check-sat (not b!1302728) (not b!1302716) (not b!1302724) (not b!1302721) b_and!86937 b_and!86943 (not b!1302705) (not b!1302709) (not b_next!31793) (not b!1302714) (not b!1302726) (not b!1302725) (not b!1302722) (not b!1302718) (not b!1302731) (not b_next!31787) b_and!86935 (not b_next!31797) (not b_next!31791) b_and!86939 (not b!1302708) (not b!1302703) (not b!1302711) (not b!1302707) (not b!1302713) b_and!86941 (not b_next!31789) (not b!1302727) (not b!1302712) (not b!1302719) (not b!1302704) (not b!1302723) (not b!1302729) (not b!1302706) b_and!86945 (not b!1302710) (not start!115034) (not b_next!31795))
(check-sat (not b_next!31787) b_and!86937 b_and!86943 (not b_next!31793) b_and!86941 (not b_next!31789) b_and!86945 (not b_next!31795) b_and!86935 (not b_next!31797) (not b_next!31791) b_and!86939)
