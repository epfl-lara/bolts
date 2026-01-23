; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392290 () Bool)

(assert start!392290)

(declare-fun b!4132258 () Bool)

(declare-fun b_free!117275 () Bool)

(declare-fun b_next!117979 () Bool)

(assert (=> b!4132258 (= b_free!117275 (not b_next!117979))))

(declare-fun tp!1259506 () Bool)

(declare-fun b_and!320365 () Bool)

(assert (=> b!4132258 (= tp!1259506 b_and!320365)))

(declare-fun b_free!117277 () Bool)

(declare-fun b_next!117981 () Bool)

(assert (=> b!4132258 (= b_free!117277 (not b_next!117981))))

(declare-fun tp!1259516 () Bool)

(declare-fun b_and!320367 () Bool)

(assert (=> b!4132258 (= tp!1259516 b_and!320367)))

(declare-fun b!4132251 () Bool)

(declare-fun b_free!117279 () Bool)

(declare-fun b_next!117983 () Bool)

(assert (=> b!4132251 (= b_free!117279 (not b_next!117983))))

(declare-fun tp!1259512 () Bool)

(declare-fun b_and!320369 () Bool)

(assert (=> b!4132251 (= tp!1259512 b_and!320369)))

(declare-fun b_free!117281 () Bool)

(declare-fun b_next!117985 () Bool)

(assert (=> b!4132251 (= b_free!117281 (not b_next!117985))))

(declare-fun tp!1259507 () Bool)

(declare-fun b_and!320371 () Bool)

(assert (=> b!4132251 (= tp!1259507 b_and!320371)))

(declare-fun b!4132246 () Bool)

(declare-fun b_free!117283 () Bool)

(declare-fun b_next!117987 () Bool)

(assert (=> b!4132246 (= b_free!117283 (not b_next!117987))))

(declare-fun tp!1259514 () Bool)

(declare-fun b_and!320373 () Bool)

(assert (=> b!4132246 (= tp!1259514 b_and!320373)))

(declare-fun b_free!117285 () Bool)

(declare-fun b_next!117989 () Bool)

(assert (=> b!4132246 (= b_free!117285 (not b_next!117989))))

(declare-fun tp!1259510 () Bool)

(declare-fun b_and!320375 () Bool)

(assert (=> b!4132246 (= tp!1259510 b_and!320375)))

(declare-fun b!4132245 () Bool)

(declare-fun res!1689354 () Bool)

(declare-fun e!2563905 () Bool)

(assert (=> b!4132245 (=> (not res!1689354) (not e!2563905))))

(declare-datatypes ((List!44873 0))(
  ( (Nil!44749) (Cons!44749 (h!50169 (_ BitVec 16)) (t!341670 List!44873)) )
))
(declare-datatypes ((TokenValue!7560 0))(
  ( (FloatLiteralValue!15120 (text!53365 List!44873)) (TokenValueExt!7559 (__x!27337 Int)) (Broken!37800 (value!229433 List!44873)) (Object!7683) (End!7560) (Def!7560) (Underscore!7560) (Match!7560) (Else!7560) (Error!7560) (Case!7560) (If!7560) (Extends!7560) (Abstract!7560) (Class!7560) (Val!7560) (DelimiterValue!15120 (del!7620 List!44873)) (KeywordValue!7566 (value!229434 List!44873)) (CommentValue!15120 (value!229435 List!44873)) (WhitespaceValue!15120 (value!229436 List!44873)) (IndentationValue!7560 (value!229437 List!44873)) (String!51549) (Int32!7560) (Broken!37801 (value!229438 List!44873)) (Boolean!7561) (Unit!64072) (OperatorValue!7563 (op!7620 List!44873)) (IdentifierValue!15120 (value!229439 List!44873)) (IdentifierValue!15121 (value!229440 List!44873)) (WhitespaceValue!15121 (value!229441 List!44873)) (True!15120) (False!15120) (Broken!37802 (value!229442 List!44873)) (Broken!37803 (value!229443 List!44873)) (True!15121) (RightBrace!7560) (RightBracket!7560) (Colon!7560) (Null!7560) (Comma!7560) (LeftBracket!7560) (False!15121) (LeftBrace!7560) (ImaginaryLiteralValue!7560 (text!53366 List!44873)) (StringLiteralValue!22680 (value!229444 List!44873)) (EOFValue!7560 (value!229445 List!44873)) (IdentValue!7560 (value!229446 List!44873)) (DelimiterValue!15121 (value!229447 List!44873)) (DedentValue!7560 (value!229448 List!44873)) (NewLineValue!7560 (value!229449 List!44873)) (IntegerValue!22680 (value!229450 (_ BitVec 32)) (text!53367 List!44873)) (IntegerValue!22681 (value!229451 Int) (text!53368 List!44873)) (Times!7560) (Or!7560) (Equal!7560) (Minus!7560) (Broken!37804 (value!229452 List!44873)) (And!7560) (Div!7560) (LessEqual!7560) (Mod!7560) (Concat!19795) (Not!7560) (Plus!7560) (SpaceValue!7560 (value!229453 List!44873)) (IntegerValue!22682 (value!229454 Int) (text!53369 List!44873)) (StringLiteralValue!22681 (text!53370 List!44873)) (FloatLiteralValue!15121 (text!53371 List!44873)) (BytesLiteralValue!7560 (value!229455 List!44873)) (CommentValue!15121 (value!229456 List!44873)) (StringLiteralValue!22682 (value!229457 List!44873)) (ErrorTokenValue!7560 (msg!7621 List!44873)) )
))
(declare-datatypes ((C!24656 0))(
  ( (C!24657 (val!14438 Int)) )
))
(declare-datatypes ((List!44874 0))(
  ( (Nil!44750) (Cons!44750 (h!50170 C!24656) (t!341671 List!44874)) )
))
(declare-datatypes ((IArray!27087 0))(
  ( (IArray!27088 (innerList!13601 List!44874)) )
))
(declare-datatypes ((Conc!13541 0))(
  ( (Node!13541 (left!33512 Conc!13541) (right!33842 Conc!13541) (csize!27312 Int) (cheight!13752 Int)) (Leaf!20921 (xs!16847 IArray!27087) (csize!27313 Int)) (Empty!13541) )
))
(declare-datatypes ((BalanceConc!26676 0))(
  ( (BalanceConc!26677 (c!708940 Conc!13541)) )
))
(declare-datatypes ((Regex!12235 0))(
  ( (ElementMatch!12235 (c!708941 C!24656)) (Concat!19796 (regOne!24982 Regex!12235) (regTwo!24982 Regex!12235)) (EmptyExpr!12235) (Star!12235 (reg!12564 Regex!12235)) (EmptyLang!12235) (Union!12235 (regOne!24983 Regex!12235) (regTwo!24983 Regex!12235)) )
))
(declare-datatypes ((String!51550 0))(
  ( (String!51551 (value!229458 String)) )
))
(declare-datatypes ((TokenValueInjection!14548 0))(
  ( (TokenValueInjection!14549 (toValue!9994 Int) (toChars!9853 Int)) )
))
(declare-datatypes ((Rule!14460 0))(
  ( (Rule!14461 (regex!7330 Regex!12235) (tag!8190 String!51550) (isSeparator!7330 Bool) (transformation!7330 TokenValueInjection!14548)) )
))
(declare-datatypes ((List!44875 0))(
  ( (Nil!44751) (Cons!44751 (h!50171 Rule!14460) (t!341672 List!44875)) )
))
(declare-fun rules!3756 () List!44875)

(declare-fun rBis!149 () Rule!14460)

(declare-fun r!4008 () Rule!14460)

(declare-fun getIndex!676 (List!44875 Rule!14460) Int)

(assert (=> b!4132245 (= res!1689354 (< (getIndex!676 rules!3756 rBis!149) (getIndex!676 rules!3756 r!4008)))))

(declare-fun e!2563903 () Bool)

(assert (=> b!4132246 (= e!2563903 (and tp!1259514 tp!1259510))))

(declare-fun b!4132247 () Bool)

(declare-fun tp!1259508 () Bool)

(declare-fun e!2563901 () Bool)

(declare-fun e!2563909 () Bool)

(declare-fun inv!59350 (String!51550) Bool)

(declare-fun inv!59352 (TokenValueInjection!14548) Bool)

(assert (=> b!4132247 (= e!2563901 (and tp!1259508 (inv!59350 (tag!8190 (h!50171 rules!3756))) (inv!59352 (transformation!7330 (h!50171 rules!3756))) e!2563909))))

(declare-fun b!4132248 () Bool)

(declare-fun res!1689348 () Bool)

(declare-fun e!2563911 () Bool)

(assert (=> b!4132248 (=> (not res!1689348) (not e!2563911))))

(declare-datatypes ((LexerInterface!6919 0))(
  ( (LexerInterfaceExt!6916 (__x!27338 Int)) (Lexer!6917) )
))
(declare-fun thiss!25645 () LexerInterface!6919)

(declare-fun rulesInvariant!6216 (LexerInterface!6919 List!44875) Bool)

(assert (=> b!4132248 (= res!1689348 (rulesInvariant!6216 thiss!25645 rules!3756))))

(declare-fun b!4132249 () Bool)

(declare-fun res!1689346 () Bool)

(assert (=> b!4132249 (=> (not res!1689346) (not e!2563911))))

(declare-fun p!2912 () List!44874)

(declare-fun input!3238 () List!44874)

(declare-fun isPrefix!4265 (List!44874 List!44874) Bool)

(assert (=> b!4132249 (= res!1689346 (isPrefix!4265 p!2912 input!3238))))

(declare-fun b!4132250 () Bool)

(declare-fun e!2563907 () Bool)

(declare-fun tp_is_empty!21393 () Bool)

(declare-fun tp!1259513 () Bool)

(assert (=> b!4132250 (= e!2563907 (and tp_is_empty!21393 tp!1259513))))

(assert (=> b!4132251 (= e!2563909 (and tp!1259512 tp!1259507))))

(declare-fun b!4132252 () Bool)

(declare-fun res!1689356 () Bool)

(assert (=> b!4132252 (=> (not res!1689356) (not e!2563905))))

(declare-fun matchR!6064 (Regex!12235 List!44874) Bool)

(assert (=> b!4132252 (= res!1689356 (matchR!6064 (regex!7330 r!4008) p!2912))))

(declare-fun b!4132253 () Bool)

(declare-fun res!1689352 () Bool)

(assert (=> b!4132253 (=> (not res!1689352) (not e!2563911))))

(declare-fun isEmpty!26646 (List!44875) Bool)

(assert (=> b!4132253 (= res!1689352 (not (isEmpty!26646 rules!3756)))))

(declare-fun b!4132255 () Bool)

(declare-fun res!1689351 () Bool)

(assert (=> b!4132255 (=> (not res!1689351) (not e!2563911))))

(declare-fun contains!9008 (List!44875 Rule!14460) Bool)

(assert (=> b!4132255 (= res!1689351 (contains!9008 rules!3756 r!4008))))

(declare-fun b!4132256 () Bool)

(declare-fun rulesValidInductive!2714 (LexerInterface!6919 List!44875) Bool)

(assert (=> b!4132256 (= e!2563905 (not (rulesValidInductive!2714 thiss!25645 rules!3756)))))

(declare-fun ruleValid!3136 (LexerInterface!6919 Rule!14460) Bool)

(assert (=> b!4132256 (ruleValid!3136 thiss!25645 rBis!149)))

(declare-datatypes ((Unit!64073 0))(
  ( (Unit!64074) )
))
(declare-fun lt!1473501 () Unit!64073)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2176 (LexerInterface!6919 Rule!14460 List!44875) Unit!64073)

(assert (=> b!4132256 (= lt!1473501 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2176 thiss!25645 rBis!149 rules!3756))))

(declare-fun tp!1259511 () Bool)

(declare-fun b!4132257 () Bool)

(declare-fun e!2563908 () Bool)

(assert (=> b!4132257 (= e!2563908 (and tp!1259511 (inv!59350 (tag!8190 r!4008)) (inv!59352 (transformation!7330 r!4008)) e!2563903))))

(declare-fun e!2563906 () Bool)

(assert (=> b!4132258 (= e!2563906 (and tp!1259506 tp!1259516))))

(declare-fun b!4132259 () Bool)

(declare-fun res!1689353 () Bool)

(assert (=> b!4132259 (=> (not res!1689353) (not e!2563911))))

(assert (=> b!4132259 (= res!1689353 (contains!9008 rules!3756 rBis!149))))

(declare-fun b!4132260 () Bool)

(declare-fun e!2563912 () Bool)

(declare-fun tp!1259505 () Bool)

(assert (=> b!4132260 (= e!2563912 (and e!2563901 tp!1259505))))

(declare-fun b!4132261 () Bool)

(assert (=> b!4132261 (= e!2563911 e!2563905)))

(declare-fun res!1689349 () Bool)

(assert (=> b!4132261 (=> (not res!1689349) (not e!2563905))))

(declare-fun lt!1473500 () BalanceConc!26676)

(declare-datatypes ((Token!13590 0))(
  ( (Token!13591 (value!229459 TokenValue!7560) (rule!10422 Rule!14460) (size!33125 Int) (originalCharacters!7826 List!44874)) )
))
(declare-datatypes ((tuple2!43166 0))(
  ( (tuple2!43167 (_1!24717 Token!13590) (_2!24717 List!44874)) )
))
(declare-datatypes ((Option!9636 0))(
  ( (None!9635) (Some!9635 (v!40249 tuple2!43166)) )
))
(declare-fun maxPrefix!4109 (LexerInterface!6919 List!44875 List!44874) Option!9636)

(declare-fun apply!10403 (TokenValueInjection!14548 BalanceConc!26676) TokenValue!7560)

(declare-fun size!33126 (List!44874) Int)

(declare-fun getSuffix!2592 (List!44874 List!44874) List!44874)

(assert (=> b!4132261 (= res!1689349 (= (maxPrefix!4109 thiss!25645 rules!3756 input!3238) (Some!9635 (tuple2!43167 (Token!13591 (apply!10403 (transformation!7330 r!4008) lt!1473500) r!4008 (size!33126 p!2912) p!2912) (getSuffix!2592 input!3238 p!2912)))))))

(declare-fun lt!1473502 () Unit!64073)

(declare-fun lemmaSemiInverse!2188 (TokenValueInjection!14548 BalanceConc!26676) Unit!64073)

(assert (=> b!4132261 (= lt!1473502 (lemmaSemiInverse!2188 (transformation!7330 r!4008) lt!1473500))))

(declare-fun seqFromList!5447 (List!44874) BalanceConc!26676)

(assert (=> b!4132261 (= lt!1473500 (seqFromList!5447 p!2912))))

(declare-fun b!4132262 () Bool)

(declare-fun e!2563913 () Bool)

(declare-fun tp!1259515 () Bool)

(assert (=> b!4132262 (= e!2563913 (and tp_is_empty!21393 tp!1259515))))

(declare-fun b!4132263 () Bool)

(declare-fun res!1689355 () Bool)

(assert (=> b!4132263 (=> (not res!1689355) (not e!2563911))))

(declare-fun isEmpty!26647 (List!44874) Bool)

(assert (=> b!4132263 (= res!1689355 (not (isEmpty!26647 p!2912)))))

(declare-fun b!4132264 () Bool)

(declare-fun res!1689350 () Bool)

(assert (=> b!4132264 (=> (not res!1689350) (not e!2563905))))

(assert (=> b!4132264 (= res!1689350 (ruleValid!3136 thiss!25645 r!4008))))

(declare-fun res!1689347 () Bool)

(assert (=> start!392290 (=> (not res!1689347) (not e!2563911))))

(get-info :version)

(assert (=> start!392290 (= res!1689347 ((_ is Lexer!6917) thiss!25645))))

(assert (=> start!392290 e!2563911))

(assert (=> start!392290 e!2563912))

(assert (=> start!392290 e!2563913))

(assert (=> start!392290 true))

(assert (=> start!392290 e!2563908))

(assert (=> start!392290 e!2563907))

(declare-fun e!2563910 () Bool)

(assert (=> start!392290 e!2563910))

(declare-fun tp!1259509 () Bool)

(declare-fun b!4132254 () Bool)

(assert (=> b!4132254 (= e!2563910 (and tp!1259509 (inv!59350 (tag!8190 rBis!149)) (inv!59352 (transformation!7330 rBis!149)) e!2563906))))

(assert (= (and start!392290 res!1689347) b!4132249))

(assert (= (and b!4132249 res!1689346) b!4132253))

(assert (= (and b!4132253 res!1689352) b!4132248))

(assert (= (and b!4132248 res!1689348) b!4132255))

(assert (= (and b!4132255 res!1689351) b!4132259))

(assert (= (and b!4132259 res!1689353) b!4132263))

(assert (= (and b!4132263 res!1689355) b!4132261))

(assert (= (and b!4132261 res!1689349) b!4132252))

(assert (= (and b!4132252 res!1689356) b!4132245))

(assert (= (and b!4132245 res!1689354) b!4132264))

(assert (= (and b!4132264 res!1689350) b!4132256))

(assert (= b!4132247 b!4132251))

(assert (= b!4132260 b!4132247))

(assert (= (and start!392290 ((_ is Cons!44751) rules!3756)) b!4132260))

(assert (= (and start!392290 ((_ is Cons!44750) p!2912)) b!4132262))

(assert (= b!4132257 b!4132246))

(assert (= start!392290 b!4132257))

(assert (= (and start!392290 ((_ is Cons!44750) input!3238)) b!4132250))

(assert (= b!4132254 b!4132258))

(assert (= start!392290 b!4132254))

(declare-fun m!4729507 () Bool)

(assert (=> b!4132247 m!4729507))

(declare-fun m!4729509 () Bool)

(assert (=> b!4132247 m!4729509))

(declare-fun m!4729511 () Bool)

(assert (=> b!4132264 m!4729511))

(declare-fun m!4729513 () Bool)

(assert (=> b!4132253 m!4729513))

(declare-fun m!4729515 () Bool)

(assert (=> b!4132248 m!4729515))

(declare-fun m!4729517 () Bool)

(assert (=> b!4132254 m!4729517))

(declare-fun m!4729519 () Bool)

(assert (=> b!4132254 m!4729519))

(declare-fun m!4729521 () Bool)

(assert (=> b!4132256 m!4729521))

(declare-fun m!4729523 () Bool)

(assert (=> b!4132256 m!4729523))

(declare-fun m!4729525 () Bool)

(assert (=> b!4132256 m!4729525))

(declare-fun m!4729527 () Bool)

(assert (=> b!4132255 m!4729527))

(declare-fun m!4729529 () Bool)

(assert (=> b!4132249 m!4729529))

(declare-fun m!4729531 () Bool)

(assert (=> b!4132257 m!4729531))

(declare-fun m!4729533 () Bool)

(assert (=> b!4132257 m!4729533))

(declare-fun m!4729535 () Bool)

(assert (=> b!4132245 m!4729535))

(declare-fun m!4729537 () Bool)

(assert (=> b!4132245 m!4729537))

(declare-fun m!4729539 () Bool)

(assert (=> b!4132261 m!4729539))

(declare-fun m!4729541 () Bool)

(assert (=> b!4132261 m!4729541))

(declare-fun m!4729543 () Bool)

(assert (=> b!4132261 m!4729543))

(declare-fun m!4729545 () Bool)

(assert (=> b!4132261 m!4729545))

(declare-fun m!4729547 () Bool)

(assert (=> b!4132261 m!4729547))

(declare-fun m!4729549 () Bool)

(assert (=> b!4132261 m!4729549))

(declare-fun m!4729551 () Bool)

(assert (=> b!4132263 m!4729551))

(declare-fun m!4729553 () Bool)

(assert (=> b!4132259 m!4729553))

(declare-fun m!4729555 () Bool)

(assert (=> b!4132252 m!4729555))

(check-sat (not b_next!117989) b_and!320371 (not b!4132248) (not b!4132262) (not b_next!117987) (not b!4132250) (not b_next!117983) (not b!4132260) (not b!4132254) b_and!320373 (not b!4132245) (not b!4132252) (not b!4132257) (not b!4132255) (not b_next!117979) (not b_next!117981) b_and!320367 (not b!4132264) (not b!4132249) (not b!4132247) (not b!4132259) (not b!4132263) tp_is_empty!21393 (not b_next!117985) b_and!320365 b_and!320369 (not b!4132256) (not b!4132253) (not b!4132261) b_and!320375)
(check-sat (not b_next!117989) b_and!320371 (not b_next!117979) (not b_next!117987) (not b_next!117983) b_and!320373 b_and!320375 (not b_next!117981) b_and!320367 (not b_next!117985) b_and!320365 b_and!320369)
(get-model)

(declare-fun d!1224160 () Bool)

(assert (=> d!1224160 (= (inv!59350 (tag!8190 r!4008)) (= (mod (str.len (value!229458 (tag!8190 r!4008))) 2) 0))))

(assert (=> b!4132257 d!1224160))

(declare-fun d!1224162 () Bool)

(declare-fun res!1689378 () Bool)

(declare-fun e!2563928 () Bool)

(assert (=> d!1224162 (=> (not res!1689378) (not e!2563928))))

(declare-fun semiInverseModEq!3163 (Int Int) Bool)

(assert (=> d!1224162 (= res!1689378 (semiInverseModEq!3163 (toChars!9853 (transformation!7330 r!4008)) (toValue!9994 (transformation!7330 r!4008))))))

(assert (=> d!1224162 (= (inv!59352 (transformation!7330 r!4008)) e!2563928)))

(declare-fun b!4132278 () Bool)

(declare-fun equivClasses!3062 (Int Int) Bool)

(assert (=> b!4132278 (= e!2563928 (equivClasses!3062 (toChars!9853 (transformation!7330 r!4008)) (toValue!9994 (transformation!7330 r!4008))))))

(assert (= (and d!1224162 res!1689378) b!4132278))

(declare-fun m!4729571 () Bool)

(assert (=> d!1224162 m!4729571))

(declare-fun m!4729573 () Bool)

(assert (=> b!4132278 m!4729573))

(assert (=> b!4132257 d!1224162))

(declare-fun d!1224168 () Bool)

(declare-fun lt!1473511 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6904 (List!44875) (InoxSet Rule!14460))

(assert (=> d!1224168 (= lt!1473511 (select (content!6904 rules!3756) r!4008))))

(declare-fun e!2563937 () Bool)

(assert (=> d!1224168 (= lt!1473511 e!2563937)))

(declare-fun res!1689387 () Bool)

(assert (=> d!1224168 (=> (not res!1689387) (not e!2563937))))

(assert (=> d!1224168 (= res!1689387 ((_ is Cons!44751) rules!3756))))

(assert (=> d!1224168 (= (contains!9008 rules!3756 r!4008) lt!1473511)))

(declare-fun b!4132287 () Bool)

(declare-fun e!2563938 () Bool)

(assert (=> b!4132287 (= e!2563937 e!2563938)))

(declare-fun res!1689388 () Bool)

(assert (=> b!4132287 (=> res!1689388 e!2563938)))

(assert (=> b!4132287 (= res!1689388 (= (h!50171 rules!3756) r!4008))))

(declare-fun b!4132288 () Bool)

(assert (=> b!4132288 (= e!2563938 (contains!9008 (t!341672 rules!3756) r!4008))))

(assert (= (and d!1224168 res!1689387) b!4132287))

(assert (= (and b!4132287 (not res!1689388)) b!4132288))

(declare-fun m!4729575 () Bool)

(assert (=> d!1224168 m!4729575))

(declare-fun m!4729577 () Bool)

(assert (=> d!1224168 m!4729577))

(declare-fun m!4729579 () Bool)

(assert (=> b!4132288 m!4729579))

(assert (=> b!4132255 d!1224168))

(declare-fun b!4132300 () Bool)

(declare-fun e!2563944 () Int)

(assert (=> b!4132300 (= e!2563944 (- 1))))

(declare-fun b!4132299 () Bool)

(assert (=> b!4132299 (= e!2563944 (+ 1 (getIndex!676 (t!341672 rules!3756) rBis!149)))))

(declare-fun b!4132297 () Bool)

(declare-fun e!2563945 () Int)

(assert (=> b!4132297 (= e!2563945 0)))

(declare-fun d!1224170 () Bool)

(declare-fun lt!1473514 () Int)

(assert (=> d!1224170 (>= lt!1473514 0)))

(assert (=> d!1224170 (= lt!1473514 e!2563945)))

(declare-fun c!708946 () Bool)

(assert (=> d!1224170 (= c!708946 (and ((_ is Cons!44751) rules!3756) (= (h!50171 rules!3756) rBis!149)))))

(assert (=> d!1224170 (contains!9008 rules!3756 rBis!149)))

(assert (=> d!1224170 (= (getIndex!676 rules!3756 rBis!149) lt!1473514)))

(declare-fun b!4132298 () Bool)

(assert (=> b!4132298 (= e!2563945 e!2563944)))

(declare-fun c!708947 () Bool)

(assert (=> b!4132298 (= c!708947 (and ((_ is Cons!44751) rules!3756) (not (= (h!50171 rules!3756) rBis!149))))))

(assert (= (and d!1224170 c!708946) b!4132297))

(assert (= (and d!1224170 (not c!708946)) b!4132298))

(assert (= (and b!4132298 c!708947) b!4132299))

(assert (= (and b!4132298 (not c!708947)) b!4132300))

(declare-fun m!4729581 () Bool)

(assert (=> b!4132299 m!4729581))

(assert (=> d!1224170 m!4729553))

(assert (=> b!4132245 d!1224170))

(declare-fun b!4132304 () Bool)

(declare-fun e!2563946 () Int)

(assert (=> b!4132304 (= e!2563946 (- 1))))

(declare-fun b!4132303 () Bool)

(assert (=> b!4132303 (= e!2563946 (+ 1 (getIndex!676 (t!341672 rules!3756) r!4008)))))

(declare-fun b!4132301 () Bool)

(declare-fun e!2563947 () Int)

(assert (=> b!4132301 (= e!2563947 0)))

(declare-fun d!1224172 () Bool)

(declare-fun lt!1473515 () Int)

(assert (=> d!1224172 (>= lt!1473515 0)))

(assert (=> d!1224172 (= lt!1473515 e!2563947)))

(declare-fun c!708948 () Bool)

(assert (=> d!1224172 (= c!708948 (and ((_ is Cons!44751) rules!3756) (= (h!50171 rules!3756) r!4008)))))

(assert (=> d!1224172 (contains!9008 rules!3756 r!4008)))

(assert (=> d!1224172 (= (getIndex!676 rules!3756 r!4008) lt!1473515)))

(declare-fun b!4132302 () Bool)

(assert (=> b!4132302 (= e!2563947 e!2563946)))

(declare-fun c!708949 () Bool)

(assert (=> b!4132302 (= c!708949 (and ((_ is Cons!44751) rules!3756) (not (= (h!50171 rules!3756) r!4008))))))

(assert (= (and d!1224172 c!708948) b!4132301))

(assert (= (and d!1224172 (not c!708948)) b!4132302))

(assert (= (and b!4132302 c!708949) b!4132303))

(assert (= (and b!4132302 (not c!708949)) b!4132304))

(declare-fun m!4729583 () Bool)

(assert (=> b!4132303 m!4729583))

(assert (=> d!1224172 m!4729527))

(assert (=> b!4132245 d!1224172))

(declare-fun d!1224174 () Bool)

(assert (=> d!1224174 true))

(declare-fun lt!1473550 () Bool)

(declare-fun lambda!128874 () Int)

(declare-fun forall!8458 (List!44875 Int) Bool)

(assert (=> d!1224174 (= lt!1473550 (forall!8458 rules!3756 lambda!128874))))

(declare-fun e!2563996 () Bool)

(assert (=> d!1224174 (= lt!1473550 e!2563996)))

(declare-fun res!1689436 () Bool)

(assert (=> d!1224174 (=> res!1689436 e!2563996)))

(assert (=> d!1224174 (= res!1689436 (not ((_ is Cons!44751) rules!3756)))))

(assert (=> d!1224174 (= (rulesValidInductive!2714 thiss!25645 rules!3756) lt!1473550)))

(declare-fun b!4132393 () Bool)

(declare-fun e!2563997 () Bool)

(assert (=> b!4132393 (= e!2563996 e!2563997)))

(declare-fun res!1689437 () Bool)

(assert (=> b!4132393 (=> (not res!1689437) (not e!2563997))))

(assert (=> b!4132393 (= res!1689437 (ruleValid!3136 thiss!25645 (h!50171 rules!3756)))))

(declare-fun b!4132394 () Bool)

(assert (=> b!4132394 (= e!2563997 (rulesValidInductive!2714 thiss!25645 (t!341672 rules!3756)))))

(assert (= (and d!1224174 (not res!1689436)) b!4132393))

(assert (= (and b!4132393 res!1689437) b!4132394))

(declare-fun m!4729667 () Bool)

(assert (=> d!1224174 m!4729667))

(declare-fun m!4729669 () Bool)

(assert (=> b!4132393 m!4729669))

(declare-fun m!4729673 () Bool)

(assert (=> b!4132394 m!4729673))

(assert (=> b!4132256 d!1224174))

(declare-fun d!1224200 () Bool)

(declare-fun res!1689443 () Bool)

(declare-fun e!2564005 () Bool)

(assert (=> d!1224200 (=> (not res!1689443) (not e!2564005))))

(declare-fun validRegex!5508 (Regex!12235) Bool)

(assert (=> d!1224200 (= res!1689443 (validRegex!5508 (regex!7330 rBis!149)))))

(assert (=> d!1224200 (= (ruleValid!3136 thiss!25645 rBis!149) e!2564005)))

(declare-fun b!4132409 () Bool)

(declare-fun res!1689444 () Bool)

(assert (=> b!4132409 (=> (not res!1689444) (not e!2564005))))

(declare-fun nullable!4300 (Regex!12235) Bool)

(assert (=> b!4132409 (= res!1689444 (not (nullable!4300 (regex!7330 rBis!149))))))

(declare-fun b!4132410 () Bool)

(assert (=> b!4132410 (= e!2564005 (not (= (tag!8190 rBis!149) (String!51551 ""))))))

(assert (= (and d!1224200 res!1689443) b!4132409))

(assert (= (and b!4132409 res!1689444) b!4132410))

(declare-fun m!4729681 () Bool)

(assert (=> d!1224200 m!4729681))

(declare-fun m!4729683 () Bool)

(assert (=> b!4132409 m!4729683))

(assert (=> b!4132256 d!1224200))

(declare-fun d!1224208 () Bool)

(assert (=> d!1224208 (ruleValid!3136 thiss!25645 rBis!149)))

(declare-fun lt!1473556 () Unit!64073)

(declare-fun choose!25255 (LexerInterface!6919 Rule!14460 List!44875) Unit!64073)

(assert (=> d!1224208 (= lt!1473556 (choose!25255 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1224208 (contains!9008 rules!3756 rBis!149)))

(assert (=> d!1224208 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2176 thiss!25645 rBis!149 rules!3756) lt!1473556)))

(declare-fun bs!595060 () Bool)

(assert (= bs!595060 d!1224208))

(assert (=> bs!595060 m!4729523))

(declare-fun m!4729685 () Bool)

(assert (=> bs!595060 m!4729685))

(assert (=> bs!595060 m!4729553))

(assert (=> b!4132256 d!1224208))

(declare-fun d!1224210 () Bool)

(declare-fun lt!1473557 () Bool)

(assert (=> d!1224210 (= lt!1473557 (select (content!6904 rules!3756) rBis!149))))

(declare-fun e!2564006 () Bool)

(assert (=> d!1224210 (= lt!1473557 e!2564006)))

(declare-fun res!1689445 () Bool)

(assert (=> d!1224210 (=> (not res!1689445) (not e!2564006))))

(assert (=> d!1224210 (= res!1689445 ((_ is Cons!44751) rules!3756))))

(assert (=> d!1224210 (= (contains!9008 rules!3756 rBis!149) lt!1473557)))

(declare-fun b!4132411 () Bool)

(declare-fun e!2564007 () Bool)

(assert (=> b!4132411 (= e!2564006 e!2564007)))

(declare-fun res!1689446 () Bool)

(assert (=> b!4132411 (=> res!1689446 e!2564007)))

(assert (=> b!4132411 (= res!1689446 (= (h!50171 rules!3756) rBis!149))))

(declare-fun b!4132412 () Bool)

(assert (=> b!4132412 (= e!2564007 (contains!9008 (t!341672 rules!3756) rBis!149))))

(assert (= (and d!1224210 res!1689445) b!4132411))

(assert (= (and b!4132411 (not res!1689446)) b!4132412))

(assert (=> d!1224210 m!4729575))

(declare-fun m!4729687 () Bool)

(assert (=> d!1224210 m!4729687))

(declare-fun m!4729689 () Bool)

(assert (=> b!4132412 m!4729689))

(assert (=> b!4132259 d!1224210))

(declare-fun b!4132451 () Bool)

(declare-fun e!2564029 () Bool)

(declare-fun tail!6483 (List!44874) List!44874)

(assert (=> b!4132451 (= e!2564029 (isPrefix!4265 (tail!6483 p!2912) (tail!6483 input!3238)))))

(declare-fun b!4132450 () Bool)

(declare-fun res!1689473 () Bool)

(assert (=> b!4132450 (=> (not res!1689473) (not e!2564029))))

(declare-fun head!8710 (List!44874) C!24656)

(assert (=> b!4132450 (= res!1689473 (= (head!8710 p!2912) (head!8710 input!3238)))))

(declare-fun b!4132452 () Bool)

(declare-fun e!2564030 () Bool)

(assert (=> b!4132452 (= e!2564030 (>= (size!33126 input!3238) (size!33126 p!2912)))))

(declare-fun b!4132449 () Bool)

(declare-fun e!2564028 () Bool)

(assert (=> b!4132449 (= e!2564028 e!2564029)))

(declare-fun res!1689471 () Bool)

(assert (=> b!4132449 (=> (not res!1689471) (not e!2564029))))

(assert (=> b!4132449 (= res!1689471 (not ((_ is Nil!44750) input!3238)))))

(declare-fun d!1224212 () Bool)

(assert (=> d!1224212 e!2564030))

(declare-fun res!1689474 () Bool)

(assert (=> d!1224212 (=> res!1689474 e!2564030)))

(declare-fun lt!1473562 () Bool)

(assert (=> d!1224212 (= res!1689474 (not lt!1473562))))

(assert (=> d!1224212 (= lt!1473562 e!2564028)))

(declare-fun res!1689472 () Bool)

(assert (=> d!1224212 (=> res!1689472 e!2564028)))

(assert (=> d!1224212 (= res!1689472 ((_ is Nil!44750) p!2912))))

(assert (=> d!1224212 (= (isPrefix!4265 p!2912 input!3238) lt!1473562)))

(assert (= (and d!1224212 (not res!1689472)) b!4132449))

(assert (= (and b!4132449 res!1689471) b!4132450))

(assert (= (and b!4132450 res!1689473) b!4132451))

(assert (= (and d!1224212 (not res!1689474)) b!4132452))

(declare-fun m!4729691 () Bool)

(assert (=> b!4132451 m!4729691))

(declare-fun m!4729693 () Bool)

(assert (=> b!4132451 m!4729693))

(assert (=> b!4132451 m!4729691))

(assert (=> b!4132451 m!4729693))

(declare-fun m!4729695 () Bool)

(assert (=> b!4132451 m!4729695))

(declare-fun m!4729697 () Bool)

(assert (=> b!4132450 m!4729697))

(declare-fun m!4729699 () Bool)

(assert (=> b!4132450 m!4729699))

(declare-fun m!4729701 () Bool)

(assert (=> b!4132452 m!4729701))

(assert (=> b!4132452 m!4729539))

(assert (=> b!4132249 d!1224212))

(declare-fun d!1224214 () Bool)

(assert (=> d!1224214 (= (inv!59350 (tag!8190 (h!50171 rules!3756))) (= (mod (str.len (value!229458 (tag!8190 (h!50171 rules!3756)))) 2) 0))))

(assert (=> b!4132247 d!1224214))

(declare-fun d!1224216 () Bool)

(declare-fun res!1689475 () Bool)

(declare-fun e!2564031 () Bool)

(assert (=> d!1224216 (=> (not res!1689475) (not e!2564031))))

(assert (=> d!1224216 (= res!1689475 (semiInverseModEq!3163 (toChars!9853 (transformation!7330 (h!50171 rules!3756))) (toValue!9994 (transformation!7330 (h!50171 rules!3756)))))))

(assert (=> d!1224216 (= (inv!59352 (transformation!7330 (h!50171 rules!3756))) e!2564031)))

(declare-fun b!4132453 () Bool)

(assert (=> b!4132453 (= e!2564031 (equivClasses!3062 (toChars!9853 (transformation!7330 (h!50171 rules!3756))) (toValue!9994 (transformation!7330 (h!50171 rules!3756)))))))

(assert (= (and d!1224216 res!1689475) b!4132453))

(declare-fun m!4729703 () Bool)

(assert (=> d!1224216 m!4729703))

(declare-fun m!4729705 () Bool)

(assert (=> b!4132453 m!4729705))

(assert (=> b!4132247 d!1224216))

(declare-fun d!1224218 () Bool)

(declare-fun res!1689486 () Bool)

(declare-fun e!2564041 () Bool)

(assert (=> d!1224218 (=> (not res!1689486) (not e!2564041))))

(declare-fun rulesValid!2877 (LexerInterface!6919 List!44875) Bool)

(assert (=> d!1224218 (= res!1689486 (rulesValid!2877 thiss!25645 rules!3756))))

(assert (=> d!1224218 (= (rulesInvariant!6216 thiss!25645 rules!3756) e!2564041)))

(declare-fun b!4132470 () Bool)

(declare-datatypes ((List!44876 0))(
  ( (Nil!44752) (Cons!44752 (h!50172 String!51550) (t!341705 List!44876)) )
))
(declare-fun noDuplicateTag!2960 (LexerInterface!6919 List!44875 List!44876) Bool)

(assert (=> b!4132470 (= e!2564041 (noDuplicateTag!2960 thiss!25645 rules!3756 Nil!44752))))

(assert (= (and d!1224218 res!1689486) b!4132470))

(declare-fun m!4729707 () Bool)

(assert (=> d!1224218 m!4729707))

(declare-fun m!4729709 () Bool)

(assert (=> b!4132470 m!4729709))

(assert (=> b!4132248 d!1224218))

(declare-fun bm!290360 () Bool)

(declare-fun call!290365 () Bool)

(assert (=> bm!290360 (= call!290365 (isEmpty!26647 p!2912))))

(declare-fun b!4132542 () Bool)

(declare-fun e!2564087 () Bool)

(declare-fun e!2564086 () Bool)

(assert (=> b!4132542 (= e!2564087 e!2564086)))

(declare-fun c!708985 () Bool)

(assert (=> b!4132542 (= c!708985 ((_ is EmptyLang!12235) (regex!7330 r!4008)))))

(declare-fun b!4132543 () Bool)

(declare-fun res!1689508 () Bool)

(declare-fun e!2564082 () Bool)

(assert (=> b!4132543 (=> res!1689508 e!2564082)))

(assert (=> b!4132543 (= res!1689508 (not (isEmpty!26647 (tail!6483 p!2912))))))

(declare-fun d!1224220 () Bool)

(assert (=> d!1224220 e!2564087))

(declare-fun c!708983 () Bool)

(assert (=> d!1224220 (= c!708983 ((_ is EmptyExpr!12235) (regex!7330 r!4008)))))

(declare-fun lt!1473566 () Bool)

(declare-fun e!2564083 () Bool)

(assert (=> d!1224220 (= lt!1473566 e!2564083)))

(declare-fun c!708984 () Bool)

(assert (=> d!1224220 (= c!708984 (isEmpty!26647 p!2912))))

(assert (=> d!1224220 (validRegex!5508 (regex!7330 r!4008))))

(assert (=> d!1224220 (= (matchR!6064 (regex!7330 r!4008) p!2912) lt!1473566)))

(declare-fun b!4132544 () Bool)

(declare-fun res!1689510 () Bool)

(declare-fun e!2564084 () Bool)

(assert (=> b!4132544 (=> res!1689510 e!2564084)))

(declare-fun e!2564081 () Bool)

(assert (=> b!4132544 (= res!1689510 e!2564081)))

(declare-fun res!1689512 () Bool)

(assert (=> b!4132544 (=> (not res!1689512) (not e!2564081))))

(assert (=> b!4132544 (= res!1689512 lt!1473566)))

(declare-fun b!4132545 () Bool)

(declare-fun derivativeStep!3694 (Regex!12235 C!24656) Regex!12235)

(assert (=> b!4132545 (= e!2564083 (matchR!6064 (derivativeStep!3694 (regex!7330 r!4008) (head!8710 p!2912)) (tail!6483 p!2912)))))

(declare-fun b!4132546 () Bool)

(assert (=> b!4132546 (= e!2564087 (= lt!1473566 call!290365))))

(declare-fun b!4132547 () Bool)

(assert (=> b!4132547 (= e!2564083 (nullable!4300 (regex!7330 r!4008)))))

(declare-fun b!4132548 () Bool)

(assert (=> b!4132548 (= e!2564081 (= (head!8710 p!2912) (c!708941 (regex!7330 r!4008))))))

(declare-fun b!4132549 () Bool)

(assert (=> b!4132549 (= e!2564082 (not (= (head!8710 p!2912) (c!708941 (regex!7330 r!4008)))))))

(declare-fun b!4132550 () Bool)

(declare-fun res!1689511 () Bool)

(assert (=> b!4132550 (=> res!1689511 e!2564084)))

(assert (=> b!4132550 (= res!1689511 (not ((_ is ElementMatch!12235) (regex!7330 r!4008))))))

(assert (=> b!4132550 (= e!2564086 e!2564084)))

(declare-fun b!4132551 () Bool)

(declare-fun res!1689514 () Bool)

(assert (=> b!4132551 (=> (not res!1689514) (not e!2564081))))

(assert (=> b!4132551 (= res!1689514 (isEmpty!26647 (tail!6483 p!2912)))))

(declare-fun b!4132552 () Bool)

(declare-fun res!1689507 () Bool)

(assert (=> b!4132552 (=> (not res!1689507) (not e!2564081))))

(assert (=> b!4132552 (= res!1689507 (not call!290365))))

(declare-fun b!4132553 () Bool)

(declare-fun e!2564085 () Bool)

(assert (=> b!4132553 (= e!2564084 e!2564085)))

(declare-fun res!1689509 () Bool)

(assert (=> b!4132553 (=> (not res!1689509) (not e!2564085))))

(assert (=> b!4132553 (= res!1689509 (not lt!1473566))))

(declare-fun b!4132554 () Bool)

(assert (=> b!4132554 (= e!2564085 e!2564082)))

(declare-fun res!1689513 () Bool)

(assert (=> b!4132554 (=> res!1689513 e!2564082)))

(assert (=> b!4132554 (= res!1689513 call!290365)))

(declare-fun b!4132555 () Bool)

(assert (=> b!4132555 (= e!2564086 (not lt!1473566))))

(assert (= (and d!1224220 c!708984) b!4132547))

(assert (= (and d!1224220 (not c!708984)) b!4132545))

(assert (= (and d!1224220 c!708983) b!4132546))

(assert (= (and d!1224220 (not c!708983)) b!4132542))

(assert (= (and b!4132542 c!708985) b!4132555))

(assert (= (and b!4132542 (not c!708985)) b!4132550))

(assert (= (and b!4132550 (not res!1689511)) b!4132544))

(assert (= (and b!4132544 res!1689512) b!4132552))

(assert (= (and b!4132552 res!1689507) b!4132551))

(assert (= (and b!4132551 res!1689514) b!4132548))

(assert (= (and b!4132544 (not res!1689510)) b!4132553))

(assert (= (and b!4132553 res!1689509) b!4132554))

(assert (= (and b!4132554 (not res!1689513)) b!4132543))

(assert (= (and b!4132543 (not res!1689508)) b!4132549))

(assert (= (or b!4132546 b!4132552 b!4132554) bm!290360))

(assert (=> d!1224220 m!4729551))

(declare-fun m!4729729 () Bool)

(assert (=> d!1224220 m!4729729))

(assert (=> b!4132549 m!4729697))

(assert (=> b!4132545 m!4729697))

(assert (=> b!4132545 m!4729697))

(declare-fun m!4729731 () Bool)

(assert (=> b!4132545 m!4729731))

(assert (=> b!4132545 m!4729691))

(assert (=> b!4132545 m!4729731))

(assert (=> b!4132545 m!4729691))

(declare-fun m!4729733 () Bool)

(assert (=> b!4132545 m!4729733))

(declare-fun m!4729735 () Bool)

(assert (=> b!4132547 m!4729735))

(assert (=> b!4132548 m!4729697))

(assert (=> b!4132551 m!4729691))

(assert (=> b!4132551 m!4729691))

(declare-fun m!4729737 () Bool)

(assert (=> b!4132551 m!4729737))

(assert (=> b!4132543 m!4729691))

(assert (=> b!4132543 m!4729691))

(assert (=> b!4132543 m!4729737))

(assert (=> bm!290360 m!4729551))

(assert (=> b!4132252 d!1224220))

(declare-fun b!4132560 () Bool)

(declare-fun e!2564090 () Bool)

(assert (=> b!4132560 (= e!2564090 true)))

(declare-fun d!1224230 () Bool)

(assert (=> d!1224230 e!2564090))

(assert (= d!1224230 b!4132560))

(declare-fun lambda!128877 () Int)

(declare-fun order!23623 () Int)

(declare-fun order!23621 () Int)

(declare-fun dynLambda!19193 (Int Int) Int)

(declare-fun dynLambda!19194 (Int Int) Int)

(assert (=> b!4132560 (< (dynLambda!19193 order!23621 (toValue!9994 (transformation!7330 r!4008))) (dynLambda!19194 order!23623 lambda!128877))))

(declare-fun order!23625 () Int)

(declare-fun dynLambda!19195 (Int Int) Int)

(assert (=> b!4132560 (< (dynLambda!19195 order!23625 (toChars!9853 (transformation!7330 r!4008))) (dynLambda!19194 order!23623 lambda!128877))))

(declare-fun list!16395 (BalanceConc!26676) List!44874)

(declare-fun dynLambda!19196 (Int TokenValue!7560) BalanceConc!26676)

(declare-fun dynLambda!19197 (Int BalanceConc!26676) TokenValue!7560)

(assert (=> d!1224230 (= (list!16395 (dynLambda!19196 (toChars!9853 (transformation!7330 r!4008)) (dynLambda!19197 (toValue!9994 (transformation!7330 r!4008)) lt!1473500))) (list!16395 lt!1473500))))

(declare-fun lt!1473569 () Unit!64073)

(declare-fun ForallOf!946 (Int BalanceConc!26676) Unit!64073)

(assert (=> d!1224230 (= lt!1473569 (ForallOf!946 lambda!128877 lt!1473500))))

(assert (=> d!1224230 (= (lemmaSemiInverse!2188 (transformation!7330 r!4008) lt!1473500) lt!1473569)))

(declare-fun b_lambda!121399 () Bool)

(assert (=> (not b_lambda!121399) (not d!1224230)))

(declare-fun t!341690 () Bool)

(declare-fun tb!248035 () Bool)

(assert (=> (and b!4132258 (= (toChars!9853 (transformation!7330 rBis!149)) (toChars!9853 (transformation!7330 r!4008))) t!341690) tb!248035))

(declare-fun e!2564093 () Bool)

(declare-fun tp!1259563 () Bool)

(declare-fun b!4132565 () Bool)

(declare-fun inv!59355 (Conc!13541) Bool)

(assert (=> b!4132565 (= e!2564093 (and (inv!59355 (c!708940 (dynLambda!19196 (toChars!9853 (transformation!7330 r!4008)) (dynLambda!19197 (toValue!9994 (transformation!7330 r!4008)) lt!1473500)))) tp!1259563))))

(declare-fun result!301482 () Bool)

(declare-fun inv!59356 (BalanceConc!26676) Bool)

(assert (=> tb!248035 (= result!301482 (and (inv!59356 (dynLambda!19196 (toChars!9853 (transformation!7330 r!4008)) (dynLambda!19197 (toValue!9994 (transformation!7330 r!4008)) lt!1473500))) e!2564093))))

(assert (= tb!248035 b!4132565))

(declare-fun m!4729739 () Bool)

(assert (=> b!4132565 m!4729739))

(declare-fun m!4729741 () Bool)

(assert (=> tb!248035 m!4729741))

(assert (=> d!1224230 t!341690))

(declare-fun b_and!320399 () Bool)

(assert (= b_and!320367 (and (=> t!341690 result!301482) b_and!320399)))

(declare-fun tb!248037 () Bool)

(declare-fun t!341692 () Bool)

(assert (=> (and b!4132251 (= (toChars!9853 (transformation!7330 (h!50171 rules!3756))) (toChars!9853 (transformation!7330 r!4008))) t!341692) tb!248037))

(declare-fun result!301486 () Bool)

(assert (= result!301486 result!301482))

(assert (=> d!1224230 t!341692))

(declare-fun b_and!320401 () Bool)

(assert (= b_and!320371 (and (=> t!341692 result!301486) b_and!320401)))

(declare-fun t!341694 () Bool)

(declare-fun tb!248039 () Bool)

(assert (=> (and b!4132246 (= (toChars!9853 (transformation!7330 r!4008)) (toChars!9853 (transformation!7330 r!4008))) t!341694) tb!248039))

(declare-fun result!301488 () Bool)

(assert (= result!301488 result!301482))

(assert (=> d!1224230 t!341694))

(declare-fun b_and!320403 () Bool)

(assert (= b_and!320375 (and (=> t!341694 result!301488) b_and!320403)))

(declare-fun b_lambda!121401 () Bool)

(assert (=> (not b_lambda!121401) (not d!1224230)))

(declare-fun t!341696 () Bool)

(declare-fun tb!248041 () Bool)

(assert (=> (and b!4132258 (= (toValue!9994 (transformation!7330 rBis!149)) (toValue!9994 (transformation!7330 r!4008))) t!341696) tb!248041))

(declare-fun result!301490 () Bool)

(declare-fun inv!21 (TokenValue!7560) Bool)

(assert (=> tb!248041 (= result!301490 (inv!21 (dynLambda!19197 (toValue!9994 (transformation!7330 r!4008)) lt!1473500)))))

(declare-fun m!4729743 () Bool)

(assert (=> tb!248041 m!4729743))

(assert (=> d!1224230 t!341696))

(declare-fun b_and!320405 () Bool)

(assert (= b_and!320365 (and (=> t!341696 result!301490) b_and!320405)))

(declare-fun tb!248043 () Bool)

(declare-fun t!341698 () Bool)

(assert (=> (and b!4132251 (= (toValue!9994 (transformation!7330 (h!50171 rules!3756))) (toValue!9994 (transformation!7330 r!4008))) t!341698) tb!248043))

(declare-fun result!301494 () Bool)

(assert (= result!301494 result!301490))

(assert (=> d!1224230 t!341698))

(declare-fun b_and!320407 () Bool)

(assert (= b_and!320369 (and (=> t!341698 result!301494) b_and!320407)))

(declare-fun t!341700 () Bool)

(declare-fun tb!248045 () Bool)

(assert (=> (and b!4132246 (= (toValue!9994 (transformation!7330 r!4008)) (toValue!9994 (transformation!7330 r!4008))) t!341700) tb!248045))

(declare-fun result!301496 () Bool)

(assert (= result!301496 result!301490))

(assert (=> d!1224230 t!341700))

(declare-fun b_and!320409 () Bool)

(assert (= b_and!320373 (and (=> t!341700 result!301496) b_and!320409)))

(declare-fun m!4729745 () Bool)

(assert (=> d!1224230 m!4729745))

(declare-fun m!4729747 () Bool)

(assert (=> d!1224230 m!4729747))

(declare-fun m!4729749 () Bool)

(assert (=> d!1224230 m!4729749))

(declare-fun m!4729751 () Bool)

(assert (=> d!1224230 m!4729751))

(assert (=> d!1224230 m!4729749))

(assert (=> d!1224230 m!4729751))

(declare-fun m!4729753 () Bool)

(assert (=> d!1224230 m!4729753))

(assert (=> b!4132261 d!1224230))

(declare-fun d!1224232 () Bool)

(assert (=> d!1224232 (= (apply!10403 (transformation!7330 r!4008) lt!1473500) (dynLambda!19197 (toValue!9994 (transformation!7330 r!4008)) lt!1473500))))

(declare-fun b_lambda!121403 () Bool)

(assert (=> (not b_lambda!121403) (not d!1224232)))

(assert (=> d!1224232 t!341696))

(declare-fun b_and!320411 () Bool)

(assert (= b_and!320405 (and (=> t!341696 result!301490) b_and!320411)))

(assert (=> d!1224232 t!341698))

(declare-fun b_and!320413 () Bool)

(assert (= b_and!320407 (and (=> t!341698 result!301494) b_and!320413)))

(assert (=> d!1224232 t!341700))

(declare-fun b_and!320415 () Bool)

(assert (= b_and!320409 (and (=> t!341700 result!301496) b_and!320415)))

(assert (=> d!1224232 m!4729749))

(assert (=> b!4132261 d!1224232))

(declare-fun d!1224234 () Bool)

(declare-fun lt!1473572 () List!44874)

(declare-fun ++!11582 (List!44874 List!44874) List!44874)

(assert (=> d!1224234 (= (++!11582 p!2912 lt!1473572) input!3238)))

(declare-fun e!2564099 () List!44874)

(assert (=> d!1224234 (= lt!1473572 e!2564099)))

(declare-fun c!708989 () Bool)

(assert (=> d!1224234 (= c!708989 ((_ is Cons!44750) p!2912))))

(assert (=> d!1224234 (>= (size!33126 input!3238) (size!33126 p!2912))))

(assert (=> d!1224234 (= (getSuffix!2592 input!3238 p!2912) lt!1473572)))

(declare-fun b!4132572 () Bool)

(assert (=> b!4132572 (= e!2564099 (getSuffix!2592 (tail!6483 input!3238) (t!341671 p!2912)))))

(declare-fun b!4132573 () Bool)

(assert (=> b!4132573 (= e!2564099 input!3238)))

(assert (= (and d!1224234 c!708989) b!4132572))

(assert (= (and d!1224234 (not c!708989)) b!4132573))

(declare-fun m!4729755 () Bool)

(assert (=> d!1224234 m!4729755))

(assert (=> d!1224234 m!4729701))

(assert (=> d!1224234 m!4729539))

(assert (=> b!4132572 m!4729693))

(assert (=> b!4132572 m!4729693))

(declare-fun m!4729757 () Bool)

(assert (=> b!4132572 m!4729757))

(assert (=> b!4132261 d!1224234))

(declare-fun b!4132592 () Bool)

(declare-fun res!1689532 () Bool)

(declare-fun e!2564106 () Bool)

(assert (=> b!4132592 (=> (not res!1689532) (not e!2564106))))

(declare-fun lt!1473586 () Option!9636)

(declare-fun get!14596 (Option!9636) tuple2!43166)

(declare-fun charsOf!4935 (Token!13590) BalanceConc!26676)

(assert (=> b!4132592 (= res!1689532 (matchR!6064 (regex!7330 (rule!10422 (_1!24717 (get!14596 lt!1473586)))) (list!16395 (charsOf!4935 (_1!24717 (get!14596 lt!1473586))))))))

(declare-fun b!4132593 () Bool)

(declare-fun res!1689535 () Bool)

(assert (=> b!4132593 (=> (not res!1689535) (not e!2564106))))

(assert (=> b!4132593 (= res!1689535 (= (++!11582 (list!16395 (charsOf!4935 (_1!24717 (get!14596 lt!1473586)))) (_2!24717 (get!14596 lt!1473586))) input!3238))))

(declare-fun b!4132594 () Bool)

(declare-fun e!2564108 () Option!9636)

(declare-fun lt!1473585 () Option!9636)

(declare-fun lt!1473584 () Option!9636)

(assert (=> b!4132594 (= e!2564108 (ite (and ((_ is None!9635) lt!1473585) ((_ is None!9635) lt!1473584)) None!9635 (ite ((_ is None!9635) lt!1473584) lt!1473585 (ite ((_ is None!9635) lt!1473585) lt!1473584 (ite (>= (size!33125 (_1!24717 (v!40249 lt!1473585))) (size!33125 (_1!24717 (v!40249 lt!1473584)))) lt!1473585 lt!1473584)))))))

(declare-fun call!290368 () Option!9636)

(assert (=> b!4132594 (= lt!1473585 call!290368)))

(assert (=> b!4132594 (= lt!1473584 (maxPrefix!4109 thiss!25645 (t!341672 rules!3756) input!3238))))

(declare-fun b!4132595 () Bool)

(declare-fun res!1689533 () Bool)

(assert (=> b!4132595 (=> (not res!1689533) (not e!2564106))))

(assert (=> b!4132595 (= res!1689533 (= (value!229459 (_1!24717 (get!14596 lt!1473586))) (apply!10403 (transformation!7330 (rule!10422 (_1!24717 (get!14596 lt!1473586)))) (seqFromList!5447 (originalCharacters!7826 (_1!24717 (get!14596 lt!1473586)))))))))

(declare-fun b!4132596 () Bool)

(assert (=> b!4132596 (= e!2564108 call!290368)))

(declare-fun b!4132597 () Bool)

(declare-fun res!1689529 () Bool)

(assert (=> b!4132597 (=> (not res!1689529) (not e!2564106))))

(assert (=> b!4132597 (= res!1689529 (< (size!33126 (_2!24717 (get!14596 lt!1473586))) (size!33126 input!3238)))))

(declare-fun b!4132598 () Bool)

(declare-fun res!1689530 () Bool)

(assert (=> b!4132598 (=> (not res!1689530) (not e!2564106))))

(assert (=> b!4132598 (= res!1689530 (= (list!16395 (charsOf!4935 (_1!24717 (get!14596 lt!1473586)))) (originalCharacters!7826 (_1!24717 (get!14596 lt!1473586)))))))

(declare-fun d!1224236 () Bool)

(declare-fun e!2564107 () Bool)

(assert (=> d!1224236 e!2564107))

(declare-fun res!1689534 () Bool)

(assert (=> d!1224236 (=> res!1689534 e!2564107)))

(declare-fun isEmpty!26649 (Option!9636) Bool)

(assert (=> d!1224236 (= res!1689534 (isEmpty!26649 lt!1473586))))

(assert (=> d!1224236 (= lt!1473586 e!2564108)))

(declare-fun c!708992 () Bool)

(assert (=> d!1224236 (= c!708992 (and ((_ is Cons!44751) rules!3756) ((_ is Nil!44751) (t!341672 rules!3756))))))

(declare-fun lt!1473587 () Unit!64073)

(declare-fun lt!1473583 () Unit!64073)

(assert (=> d!1224236 (= lt!1473587 lt!1473583)))

(assert (=> d!1224236 (isPrefix!4265 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2760 (List!44874 List!44874) Unit!64073)

(assert (=> d!1224236 (= lt!1473583 (lemmaIsPrefixRefl!2760 input!3238 input!3238))))

(assert (=> d!1224236 (rulesValidInductive!2714 thiss!25645 rules!3756)))

(assert (=> d!1224236 (= (maxPrefix!4109 thiss!25645 rules!3756 input!3238) lt!1473586)))

(declare-fun bm!290363 () Bool)

(declare-fun maxPrefixOneRule!3052 (LexerInterface!6919 Rule!14460 List!44874) Option!9636)

(assert (=> bm!290363 (= call!290368 (maxPrefixOneRule!3052 thiss!25645 (h!50171 rules!3756) input!3238))))

(declare-fun b!4132599 () Bool)

(assert (=> b!4132599 (= e!2564106 (contains!9008 rules!3756 (rule!10422 (_1!24717 (get!14596 lt!1473586)))))))

(declare-fun b!4132600 () Bool)

(assert (=> b!4132600 (= e!2564107 e!2564106)))

(declare-fun res!1689531 () Bool)

(assert (=> b!4132600 (=> (not res!1689531) (not e!2564106))))

(declare-fun isDefined!7254 (Option!9636) Bool)

(assert (=> b!4132600 (= res!1689531 (isDefined!7254 lt!1473586))))

(assert (= (and d!1224236 c!708992) b!4132596))

(assert (= (and d!1224236 (not c!708992)) b!4132594))

(assert (= (or b!4132596 b!4132594) bm!290363))

(assert (= (and d!1224236 (not res!1689534)) b!4132600))

(assert (= (and b!4132600 res!1689531) b!4132598))

(assert (= (and b!4132598 res!1689530) b!4132597))

(assert (= (and b!4132597 res!1689529) b!4132593))

(assert (= (and b!4132593 res!1689535) b!4132595))

(assert (= (and b!4132595 res!1689533) b!4132592))

(assert (= (and b!4132592 res!1689532) b!4132599))

(declare-fun m!4729759 () Bool)

(assert (=> b!4132598 m!4729759))

(declare-fun m!4729761 () Bool)

(assert (=> b!4132598 m!4729761))

(assert (=> b!4132598 m!4729761))

(declare-fun m!4729763 () Bool)

(assert (=> b!4132598 m!4729763))

(declare-fun m!4729765 () Bool)

(assert (=> b!4132600 m!4729765))

(assert (=> b!4132592 m!4729759))

(assert (=> b!4132592 m!4729761))

(assert (=> b!4132592 m!4729761))

(assert (=> b!4132592 m!4729763))

(assert (=> b!4132592 m!4729763))

(declare-fun m!4729767 () Bool)

(assert (=> b!4132592 m!4729767))

(assert (=> b!4132599 m!4729759))

(declare-fun m!4729769 () Bool)

(assert (=> b!4132599 m!4729769))

(declare-fun m!4729771 () Bool)

(assert (=> b!4132594 m!4729771))

(assert (=> b!4132597 m!4729759))

(declare-fun m!4729773 () Bool)

(assert (=> b!4132597 m!4729773))

(assert (=> b!4132597 m!4729701))

(assert (=> b!4132593 m!4729759))

(assert (=> b!4132593 m!4729761))

(assert (=> b!4132593 m!4729761))

(assert (=> b!4132593 m!4729763))

(assert (=> b!4132593 m!4729763))

(declare-fun m!4729775 () Bool)

(assert (=> b!4132593 m!4729775))

(declare-fun m!4729777 () Bool)

(assert (=> bm!290363 m!4729777))

(declare-fun m!4729779 () Bool)

(assert (=> d!1224236 m!4729779))

(declare-fun m!4729781 () Bool)

(assert (=> d!1224236 m!4729781))

(declare-fun m!4729783 () Bool)

(assert (=> d!1224236 m!4729783))

(assert (=> d!1224236 m!4729521))

(assert (=> b!4132595 m!4729759))

(declare-fun m!4729785 () Bool)

(assert (=> b!4132595 m!4729785))

(assert (=> b!4132595 m!4729785))

(declare-fun m!4729787 () Bool)

(assert (=> b!4132595 m!4729787))

(assert (=> b!4132261 d!1224236))

(declare-fun d!1224238 () Bool)

(declare-fun fromListB!2495 (List!44874) BalanceConc!26676)

(assert (=> d!1224238 (= (seqFromList!5447 p!2912) (fromListB!2495 p!2912))))

(declare-fun bs!595061 () Bool)

(assert (= bs!595061 d!1224238))

(declare-fun m!4729789 () Bool)

(assert (=> bs!595061 m!4729789))

(assert (=> b!4132261 d!1224238))

(declare-fun d!1224240 () Bool)

(declare-fun lt!1473590 () Int)

(assert (=> d!1224240 (>= lt!1473590 0)))

(declare-fun e!2564111 () Int)

(assert (=> d!1224240 (= lt!1473590 e!2564111)))

(declare-fun c!708995 () Bool)

(assert (=> d!1224240 (= c!708995 ((_ is Nil!44750) p!2912))))

(assert (=> d!1224240 (= (size!33126 p!2912) lt!1473590)))

(declare-fun b!4132605 () Bool)

(assert (=> b!4132605 (= e!2564111 0)))

(declare-fun b!4132606 () Bool)

(assert (=> b!4132606 (= e!2564111 (+ 1 (size!33126 (t!341671 p!2912))))))

(assert (= (and d!1224240 c!708995) b!4132605))

(assert (= (and d!1224240 (not c!708995)) b!4132606))

(declare-fun m!4729791 () Bool)

(assert (=> b!4132606 m!4729791))

(assert (=> b!4132261 d!1224240))

(declare-fun d!1224242 () Bool)

(assert (=> d!1224242 (= (inv!59350 (tag!8190 rBis!149)) (= (mod (str.len (value!229458 (tag!8190 rBis!149))) 2) 0))))

(assert (=> b!4132254 d!1224242))

(declare-fun d!1224244 () Bool)

(declare-fun res!1689536 () Bool)

(declare-fun e!2564112 () Bool)

(assert (=> d!1224244 (=> (not res!1689536) (not e!2564112))))

(assert (=> d!1224244 (= res!1689536 (semiInverseModEq!3163 (toChars!9853 (transformation!7330 rBis!149)) (toValue!9994 (transformation!7330 rBis!149))))))

(assert (=> d!1224244 (= (inv!59352 (transformation!7330 rBis!149)) e!2564112)))

(declare-fun b!4132607 () Bool)

(assert (=> b!4132607 (= e!2564112 (equivClasses!3062 (toChars!9853 (transformation!7330 rBis!149)) (toValue!9994 (transformation!7330 rBis!149))))))

(assert (= (and d!1224244 res!1689536) b!4132607))

(declare-fun m!4729793 () Bool)

(assert (=> d!1224244 m!4729793))

(declare-fun m!4729795 () Bool)

(assert (=> b!4132607 m!4729795))

(assert (=> b!4132254 d!1224244))

(declare-fun d!1224246 () Bool)

(assert (=> d!1224246 (= (isEmpty!26647 p!2912) ((_ is Nil!44750) p!2912))))

(assert (=> b!4132263 d!1224246))

(declare-fun d!1224248 () Bool)

(assert (=> d!1224248 (= (isEmpty!26646 rules!3756) ((_ is Nil!44751) rules!3756))))

(assert (=> b!4132253 d!1224248))

(declare-fun d!1224250 () Bool)

(declare-fun res!1689537 () Bool)

(declare-fun e!2564113 () Bool)

(assert (=> d!1224250 (=> (not res!1689537) (not e!2564113))))

(assert (=> d!1224250 (= res!1689537 (validRegex!5508 (regex!7330 r!4008)))))

(assert (=> d!1224250 (= (ruleValid!3136 thiss!25645 r!4008) e!2564113)))

(declare-fun b!4132608 () Bool)

(declare-fun res!1689538 () Bool)

(assert (=> b!4132608 (=> (not res!1689538) (not e!2564113))))

(assert (=> b!4132608 (= res!1689538 (not (nullable!4300 (regex!7330 r!4008))))))

(declare-fun b!4132609 () Bool)

(assert (=> b!4132609 (= e!2564113 (not (= (tag!8190 r!4008) (String!51551 ""))))))

(assert (= (and d!1224250 res!1689537) b!4132608))

(assert (= (and b!4132608 res!1689538) b!4132609))

(assert (=> d!1224250 m!4729729))

(assert (=> b!4132608 m!4729735))

(assert (=> b!4132264 d!1224250))

(declare-fun b!4132614 () Bool)

(declare-fun e!2564116 () Bool)

(declare-fun tp!1259566 () Bool)

(assert (=> b!4132614 (= e!2564116 (and tp_is_empty!21393 tp!1259566))))

(assert (=> b!4132262 (= tp!1259515 e!2564116)))

(assert (= (and b!4132262 ((_ is Cons!44750) (t!341671 p!2912))) b!4132614))

(declare-fun b!4132627 () Bool)

(declare-fun e!2564119 () Bool)

(declare-fun tp!1259580 () Bool)

(assert (=> b!4132627 (= e!2564119 tp!1259580)))

(assert (=> b!4132257 (= tp!1259511 e!2564119)))

(declare-fun b!4132626 () Bool)

(declare-fun tp!1259577 () Bool)

(declare-fun tp!1259579 () Bool)

(assert (=> b!4132626 (= e!2564119 (and tp!1259577 tp!1259579))))

(declare-fun b!4132628 () Bool)

(declare-fun tp!1259581 () Bool)

(declare-fun tp!1259578 () Bool)

(assert (=> b!4132628 (= e!2564119 (and tp!1259581 tp!1259578))))

(declare-fun b!4132625 () Bool)

(assert (=> b!4132625 (= e!2564119 tp_is_empty!21393)))

(assert (= (and b!4132257 ((_ is ElementMatch!12235) (regex!7330 r!4008))) b!4132625))

(assert (= (and b!4132257 ((_ is Concat!19796) (regex!7330 r!4008))) b!4132626))

(assert (= (and b!4132257 ((_ is Star!12235) (regex!7330 r!4008))) b!4132627))

(assert (= (and b!4132257 ((_ is Union!12235) (regex!7330 r!4008))) b!4132628))

(declare-fun b!4132629 () Bool)

(declare-fun e!2564120 () Bool)

(declare-fun tp!1259582 () Bool)

(assert (=> b!4132629 (= e!2564120 (and tp_is_empty!21393 tp!1259582))))

(assert (=> b!4132250 (= tp!1259513 e!2564120)))

(assert (= (and b!4132250 ((_ is Cons!44750) (t!341671 input!3238))) b!4132629))

(declare-fun b!4132632 () Bool)

(declare-fun e!2564121 () Bool)

(declare-fun tp!1259586 () Bool)

(assert (=> b!4132632 (= e!2564121 tp!1259586)))

(assert (=> b!4132254 (= tp!1259509 e!2564121)))

(declare-fun b!4132631 () Bool)

(declare-fun tp!1259583 () Bool)

(declare-fun tp!1259585 () Bool)

(assert (=> b!4132631 (= e!2564121 (and tp!1259583 tp!1259585))))

(declare-fun b!4132633 () Bool)

(declare-fun tp!1259587 () Bool)

(declare-fun tp!1259584 () Bool)

(assert (=> b!4132633 (= e!2564121 (and tp!1259587 tp!1259584))))

(declare-fun b!4132630 () Bool)

(assert (=> b!4132630 (= e!2564121 tp_is_empty!21393)))

(assert (= (and b!4132254 ((_ is ElementMatch!12235) (regex!7330 rBis!149))) b!4132630))

(assert (= (and b!4132254 ((_ is Concat!19796) (regex!7330 rBis!149))) b!4132631))

(assert (= (and b!4132254 ((_ is Star!12235) (regex!7330 rBis!149))) b!4132632))

(assert (= (and b!4132254 ((_ is Union!12235) (regex!7330 rBis!149))) b!4132633))

(declare-fun b!4132644 () Bool)

(declare-fun b_free!117291 () Bool)

(declare-fun b_next!117995 () Bool)

(assert (=> b!4132644 (= b_free!117291 (not b_next!117995))))

(declare-fun tb!248047 () Bool)

(declare-fun t!341702 () Bool)

(assert (=> (and b!4132644 (= (toValue!9994 (transformation!7330 (h!50171 (t!341672 rules!3756)))) (toValue!9994 (transformation!7330 r!4008))) t!341702) tb!248047))

(declare-fun result!301504 () Bool)

(assert (= result!301504 result!301490))

(assert (=> d!1224230 t!341702))

(assert (=> d!1224232 t!341702))

(declare-fun tp!1259599 () Bool)

(declare-fun b_and!320417 () Bool)

(assert (=> b!4132644 (= tp!1259599 (and (=> t!341702 result!301504) b_and!320417))))

(declare-fun b_free!117293 () Bool)

(declare-fun b_next!117997 () Bool)

(assert (=> b!4132644 (= b_free!117293 (not b_next!117997))))

(declare-fun t!341704 () Bool)

(declare-fun tb!248049 () Bool)

(assert (=> (and b!4132644 (= (toChars!9853 (transformation!7330 (h!50171 (t!341672 rules!3756)))) (toChars!9853 (transformation!7330 r!4008))) t!341704) tb!248049))

(declare-fun result!301506 () Bool)

(assert (= result!301506 result!301482))

(assert (=> d!1224230 t!341704))

(declare-fun tp!1259596 () Bool)

(declare-fun b_and!320419 () Bool)

(assert (=> b!4132644 (= tp!1259596 (and (=> t!341704 result!301506) b_and!320419))))

(declare-fun e!2564130 () Bool)

(assert (=> b!4132644 (= e!2564130 (and tp!1259599 tp!1259596))))

(declare-fun tp!1259598 () Bool)

(declare-fun b!4132643 () Bool)

(declare-fun e!2564131 () Bool)

(assert (=> b!4132643 (= e!2564131 (and tp!1259598 (inv!59350 (tag!8190 (h!50171 (t!341672 rules!3756)))) (inv!59352 (transformation!7330 (h!50171 (t!341672 rules!3756)))) e!2564130))))

(declare-fun b!4132642 () Bool)

(declare-fun e!2564133 () Bool)

(declare-fun tp!1259597 () Bool)

(assert (=> b!4132642 (= e!2564133 (and e!2564131 tp!1259597))))

(assert (=> b!4132260 (= tp!1259505 e!2564133)))

(assert (= b!4132643 b!4132644))

(assert (= b!4132642 b!4132643))

(assert (= (and b!4132260 ((_ is Cons!44751) (t!341672 rules!3756))) b!4132642))

(declare-fun m!4729797 () Bool)

(assert (=> b!4132643 m!4729797))

(declare-fun m!4729799 () Bool)

(assert (=> b!4132643 m!4729799))

(declare-fun b!4132647 () Bool)

(declare-fun e!2564134 () Bool)

(declare-fun tp!1259603 () Bool)

(assert (=> b!4132647 (= e!2564134 tp!1259603)))

(assert (=> b!4132247 (= tp!1259508 e!2564134)))

(declare-fun b!4132646 () Bool)

(declare-fun tp!1259600 () Bool)

(declare-fun tp!1259602 () Bool)

(assert (=> b!4132646 (= e!2564134 (and tp!1259600 tp!1259602))))

(declare-fun b!4132648 () Bool)

(declare-fun tp!1259604 () Bool)

(declare-fun tp!1259601 () Bool)

(assert (=> b!4132648 (= e!2564134 (and tp!1259604 tp!1259601))))

(declare-fun b!4132645 () Bool)

(assert (=> b!4132645 (= e!2564134 tp_is_empty!21393)))

(assert (= (and b!4132247 ((_ is ElementMatch!12235) (regex!7330 (h!50171 rules!3756)))) b!4132645))

(assert (= (and b!4132247 ((_ is Concat!19796) (regex!7330 (h!50171 rules!3756)))) b!4132646))

(assert (= (and b!4132247 ((_ is Star!12235) (regex!7330 (h!50171 rules!3756)))) b!4132647))

(assert (= (and b!4132247 ((_ is Union!12235) (regex!7330 (h!50171 rules!3756)))) b!4132648))

(declare-fun b_lambda!121405 () Bool)

(assert (= b_lambda!121399 (or (and b!4132258 b_free!117277 (= (toChars!9853 (transformation!7330 rBis!149)) (toChars!9853 (transformation!7330 r!4008)))) (and b!4132251 b_free!117281 (= (toChars!9853 (transformation!7330 (h!50171 rules!3756))) (toChars!9853 (transformation!7330 r!4008)))) (and b!4132246 b_free!117285) (and b!4132644 b_free!117293 (= (toChars!9853 (transformation!7330 (h!50171 (t!341672 rules!3756)))) (toChars!9853 (transformation!7330 r!4008)))) b_lambda!121405)))

(declare-fun b_lambda!121407 () Bool)

(assert (= b_lambda!121401 (or (and b!4132258 b_free!117275 (= (toValue!9994 (transformation!7330 rBis!149)) (toValue!9994 (transformation!7330 r!4008)))) (and b!4132251 b_free!117279 (= (toValue!9994 (transformation!7330 (h!50171 rules!3756))) (toValue!9994 (transformation!7330 r!4008)))) (and b!4132246 b_free!117283) (and b!4132644 b_free!117291 (= (toValue!9994 (transformation!7330 (h!50171 (t!341672 rules!3756)))) (toValue!9994 (transformation!7330 r!4008)))) b_lambda!121407)))

(declare-fun b_lambda!121409 () Bool)

(assert (= b_lambda!121403 (or (and b!4132258 b_free!117275 (= (toValue!9994 (transformation!7330 rBis!149)) (toValue!9994 (transformation!7330 r!4008)))) (and b!4132251 b_free!117279 (= (toValue!9994 (transformation!7330 (h!50171 rules!3756))) (toValue!9994 (transformation!7330 r!4008)))) (and b!4132246 b_free!117283) (and b!4132644 b_free!117291 (= (toValue!9994 (transformation!7330 (h!50171 (t!341672 rules!3756)))) (toValue!9994 (transformation!7330 r!4008)))) b_lambda!121409)))

(check-sat (not b_next!117989) (not b!4132598) (not d!1224234) (not b_lambda!121407) (not b!4132278) b_and!320413 b_and!320415 (not b!4132628) (not b!4132606) (not b!4132409) (not d!1224244) (not d!1224162) (not b!4132450) (not b_next!117979) (not b!4132543) b_and!320399 (not b_next!117981) (not b!4132614) (not b!4132631) b_and!320403 b_and!320401 (not d!1224216) (not b_next!117997) (not b!4132627) (not b!4132593) tp_is_empty!21393 (not b!4132607) b_and!320411 (not b!4132632) (not b!4132299) (not d!1224236) (not b_next!117987) (not b!4132595) (not tb!248041) (not b_next!117985) (not d!1224250) (not b!4132597) (not b!4132599) (not d!1224210) (not b!4132288) (not d!1224174) (not b!4132572) (not b!4132647) (not b_next!117983) (not bm!290360) (not b!4132393) (not d!1224170) (not b_lambda!121409) (not b!4132608) (not b!4132646) b_and!320417 (not b!4132303) (not b!4132565) (not b!4132594) (not b!4132545) (not b!4132451) (not b!4132600) (not b!4132452) (not b!4132648) (not d!1224230) (not b!4132548) (not d!1224172) b_and!320419 (not d!1224168) (not d!1224238) (not b_next!117995) (not b!4132453) (not b!4132629) (not b_lambda!121405) (not d!1224220) (not b!4132412) (not b!4132394) (not d!1224208) (not b!4132592) (not bm!290363) (not b!4132470) (not b!4132549) (not b!4132643) (not d!1224200) (not tb!248035) (not b!4132547) (not d!1224218) (not b!4132626) (not b!4132642) (not b!4132633) (not b!4132551))
(check-sat (not b_next!117989) b_and!320415 (not b_next!117979) b_and!320399 b_and!320411 (not b_next!117987) (not b_next!117985) (not b_next!117983) b_and!320417 b_and!320413 (not b_next!117981) b_and!320403 b_and!320401 (not b_next!117997) b_and!320419 (not b_next!117995))
