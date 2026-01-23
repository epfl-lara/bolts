; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397646 () Bool)

(assert start!397646)

(declare-fun b!4170755 () Bool)

(declare-fun b_free!120679 () Bool)

(declare-fun b_next!121383 () Bool)

(assert (=> b!4170755 (= b_free!120679 (not b_next!121383))))

(declare-fun tp!1274244 () Bool)

(declare-fun b_and!325645 () Bool)

(assert (=> b!4170755 (= tp!1274244 b_and!325645)))

(declare-fun b_free!120681 () Bool)

(declare-fun b_next!121385 () Bool)

(assert (=> b!4170755 (= b_free!120681 (not b_next!121385))))

(declare-fun tp!1274238 () Bool)

(declare-fun b_and!325647 () Bool)

(assert (=> b!4170755 (= tp!1274238 b_and!325647)))

(declare-fun b!4170766 () Bool)

(declare-fun b_free!120683 () Bool)

(declare-fun b_next!121387 () Bool)

(assert (=> b!4170766 (= b_free!120683 (not b_next!121387))))

(declare-fun tp!1274239 () Bool)

(declare-fun b_and!325649 () Bool)

(assert (=> b!4170766 (= tp!1274239 b_and!325649)))

(declare-fun b_free!120685 () Bool)

(declare-fun b_next!121389 () Bool)

(assert (=> b!4170766 (= b_free!120685 (not b_next!121389))))

(declare-fun tp!1274243 () Bool)

(declare-fun b_and!325651 () Bool)

(assert (=> b!4170766 (= tp!1274243 b_and!325651)))

(declare-fun b!4170762 () Bool)

(declare-fun b_free!120687 () Bool)

(declare-fun b_next!121391 () Bool)

(assert (=> b!4170762 (= b_free!120687 (not b_next!121391))))

(declare-fun tp!1274235 () Bool)

(declare-fun b_and!325653 () Bool)

(assert (=> b!4170762 (= tp!1274235 b_and!325653)))

(declare-fun b_free!120689 () Bool)

(declare-fun b_next!121393 () Bool)

(assert (=> b!4170762 (= b_free!120689 (not b_next!121393))))

(declare-fun tp!1274232 () Bool)

(declare-fun b_and!325655 () Bool)

(assert (=> b!4170762 (= tp!1274232 b_and!325655)))

(declare-fun b!4170746 () Bool)

(declare-fun res!1708965 () Bool)

(declare-fun e!2589278 () Bool)

(assert (=> b!4170746 (=> (not res!1708965) (not e!2589278))))

(declare-datatypes ((LexerInterface!7169 0))(
  ( (LexerInterfaceExt!7166 (__x!27833 Int)) (Lexer!7167) )
))
(declare-fun thiss!25986 () LexerInterface!7169)

(declare-datatypes ((List!45823 0))(
  ( (Nil!45699) (Cons!45699 (h!51119 (_ BitVec 16)) (t!344366 List!45823)) )
))
(declare-datatypes ((TokenValue!7806 0))(
  ( (FloatLiteralValue!15612 (text!55087 List!45823)) (TokenValueExt!7805 (__x!27834 Int)) (Broken!39030 (value!236422 List!45823)) (Object!7929) (End!7806) (Def!7806) (Underscore!7806) (Match!7806) (Else!7806) (Error!7806) (Case!7806) (If!7806) (Extends!7806) (Abstract!7806) (Class!7806) (Val!7806) (DelimiterValue!15612 (del!7866 List!45823)) (KeywordValue!7812 (value!236423 List!45823)) (CommentValue!15612 (value!236424 List!45823)) (WhitespaceValue!15612 (value!236425 List!45823)) (IndentationValue!7806 (value!236426 List!45823)) (String!52895) (Int32!7806) (Broken!39031 (value!236427 List!45823)) (Boolean!7807) (Unit!64766) (OperatorValue!7809 (op!7866 List!45823)) (IdentifierValue!15612 (value!236428 List!45823)) (IdentifierValue!15613 (value!236429 List!45823)) (WhitespaceValue!15613 (value!236430 List!45823)) (True!15612) (False!15612) (Broken!39032 (value!236431 List!45823)) (Broken!39033 (value!236432 List!45823)) (True!15613) (RightBrace!7806) (RightBracket!7806) (Colon!7806) (Null!7806) (Comma!7806) (LeftBracket!7806) (False!15613) (LeftBrace!7806) (ImaginaryLiteralValue!7806 (text!55088 List!45823)) (StringLiteralValue!23418 (value!236433 List!45823)) (EOFValue!7806 (value!236434 List!45823)) (IdentValue!7806 (value!236435 List!45823)) (DelimiterValue!15613 (value!236436 List!45823)) (DedentValue!7806 (value!236437 List!45823)) (NewLineValue!7806 (value!236438 List!45823)) (IntegerValue!23418 (value!236439 (_ BitVec 32)) (text!55089 List!45823)) (IntegerValue!23419 (value!236440 Int) (text!55090 List!45823)) (Times!7806) (Or!7806) (Equal!7806) (Minus!7806) (Broken!39034 (value!236441 List!45823)) (And!7806) (Div!7806) (LessEqual!7806) (Mod!7806) (Concat!20287) (Not!7806) (Plus!7806) (SpaceValue!7806 (value!236442 List!45823)) (IntegerValue!23420 (value!236443 Int) (text!55091 List!45823)) (StringLiteralValue!23419 (text!55092 List!45823)) (FloatLiteralValue!15613 (text!55093 List!45823)) (BytesLiteralValue!7806 (value!236444 List!45823)) (CommentValue!15613 (value!236445 List!45823)) (StringLiteralValue!23420 (value!236446 List!45823)) (ErrorTokenValue!7806 (msg!7867 List!45823)) )
))
(declare-datatypes ((String!52896 0))(
  ( (String!52897 (value!236447 String)) )
))
(declare-datatypes ((C!25152 0))(
  ( (C!25153 (val!14738 Int)) )
))
(declare-datatypes ((List!45824 0))(
  ( (Nil!45700) (Cons!45700 (h!51120 C!25152) (t!344367 List!45824)) )
))
(declare-datatypes ((IArray!27579 0))(
  ( (IArray!27580 (innerList!13847 List!45824)) )
))
(declare-datatypes ((Conc!13787 0))(
  ( (Node!13787 (left!34065 Conc!13787) (right!34395 Conc!13787) (csize!27804 Int) (cheight!13998 Int)) (Leaf!21318 (xs!17093 IArray!27579) (csize!27805 Int)) (Empty!13787) )
))
(declare-datatypes ((BalanceConc!27168 0))(
  ( (BalanceConc!27169 (c!712896 Conc!13787)) )
))
(declare-datatypes ((Regex!12481 0))(
  ( (ElementMatch!12481 (c!712897 C!25152)) (Concat!20288 (regOne!25474 Regex!12481) (regTwo!25474 Regex!12481)) (EmptyExpr!12481) (Star!12481 (reg!12810 Regex!12481)) (EmptyLang!12481) (Union!12481 (regOne!25475 Regex!12481) (regTwo!25475 Regex!12481)) )
))
(declare-datatypes ((TokenValueInjection!15040 0))(
  ( (TokenValueInjection!15041 (toValue!10256 Int) (toChars!10115 Int)) )
))
(declare-datatypes ((Rule!14952 0))(
  ( (Rule!14953 (regex!7576 Regex!12481) (tag!8440 String!52896) (isSeparator!7576 Bool) (transformation!7576 TokenValueInjection!15040)) )
))
(declare-fun r!4142 () Rule!14952)

(declare-fun ruleValid!3294 (LexerInterface!7169 Rule!14952) Bool)

(assert (=> b!4170746 (= res!1708965 (ruleValid!3294 thiss!25986 r!4142))))

(declare-fun b!4170747 () Bool)

(declare-fun res!1708961 () Bool)

(assert (=> b!4170747 (=> (not res!1708961) (not e!2589278))))

(declare-datatypes ((List!45825 0))(
  ( (Nil!45701) (Cons!45701 (h!51121 Rule!14952) (t!344368 List!45825)) )
))
(declare-fun rules!3843 () List!45825)

(declare-fun rulesInvariant!6382 (LexerInterface!7169 List!45825) Bool)

(assert (=> b!4170747 (= res!1708961 (rulesInvariant!6382 thiss!25986 rules!3843))))

(declare-fun b!4170748 () Bool)

(declare-fun e!2589281 () Bool)

(declare-fun tp_is_empty!21925 () Bool)

(declare-fun tp!1274236 () Bool)

(assert (=> b!4170748 (= e!2589281 (and tp_is_empty!21925 tp!1274236))))

(declare-fun b!4170749 () Bool)

(declare-fun e!2589285 () Bool)

(assert (=> b!4170749 (= e!2589278 (not e!2589285))))

(declare-fun res!1708966 () Bool)

(assert (=> b!4170749 (=> res!1708966 e!2589285)))

(declare-fun input!3342 () List!45824)

(declare-fun p!2959 () List!45824)

(declare-fun lt!1485229 () BalanceConc!27168)

(declare-datatypes ((Token!13866 0))(
  ( (Token!13867 (value!236448 TokenValue!7806) (rule!10622 Rule!14952) (size!33545 Int) (originalCharacters!7964 List!45824)) )
))
(declare-datatypes ((tuple2!43562 0))(
  ( (tuple2!43563 (_1!24915 Token!13866) (_2!24915 List!45824)) )
))
(declare-datatypes ((Option!9772 0))(
  ( (None!9771) (Some!9771 (v!40563 tuple2!43562)) )
))
(declare-fun maxPrefixOneRule!3180 (LexerInterface!7169 Rule!14952 List!45824) Option!9772)

(declare-fun apply!10541 (TokenValueInjection!15040 BalanceConc!27168) TokenValue!7806)

(declare-fun size!33546 (List!45824) Int)

(declare-fun getSuffix!2728 (List!45824 List!45824) List!45824)

(assert (=> b!4170749 (= res!1708966 (not (= (maxPrefixOneRule!3180 thiss!25986 r!4142 input!3342) (Some!9771 (tuple2!43563 (Token!13867 (apply!10541 (transformation!7576 r!4142) lt!1485229) r!4142 (size!33546 p!2959) p!2959) (getSuffix!2728 input!3342 p!2959))))))))

(declare-fun isPrefix!4433 (List!45824 List!45824) Bool)

(assert (=> b!4170749 (isPrefix!4433 input!3342 input!3342)))

(declare-datatypes ((Unit!64767 0))(
  ( (Unit!64768) )
))
(declare-fun lt!1485230 () Unit!64767)

(declare-fun lemmaIsPrefixRefl!2862 (List!45824 List!45824) Unit!64767)

(assert (=> b!4170749 (= lt!1485230 (lemmaIsPrefixRefl!2862 input!3342 input!3342))))

(declare-fun lt!1485231 () Unit!64767)

(declare-fun lemmaSemiInverse!2342 (TokenValueInjection!15040 BalanceConc!27168) Unit!64767)

(assert (=> b!4170749 (= lt!1485231 (lemmaSemiInverse!2342 (transformation!7576 r!4142) lt!1485229))))

(declare-fun seqFromList!5601 (List!45824) BalanceConc!27168)

(assert (=> b!4170749 (= lt!1485229 (seqFromList!5601 p!2959))))

(declare-fun b!4170750 () Bool)

(declare-fun res!1708968 () Bool)

(assert (=> b!4170750 (=> (not res!1708968) (not e!2589278))))

(assert (=> b!4170750 (= res!1708968 (isPrefix!4433 p!2959 input!3342))))

(declare-fun b!4170751 () Bool)

(declare-fun res!1708958 () Bool)

(assert (=> b!4170751 (=> (not res!1708958) (not e!2589278))))

(declare-fun contains!9377 (List!45825 Rule!14952) Bool)

(assert (=> b!4170751 (= res!1708958 (contains!9377 rules!3843 r!4142))))

(declare-fun b!4170752 () Bool)

(declare-fun res!1708963 () Bool)

(assert (=> b!4170752 (=> (not res!1708963) (not e!2589278))))

(declare-fun validRegex!5598 (Regex!12481) Bool)

(assert (=> b!4170752 (= res!1708963 (validRegex!5598 (regex!7576 r!4142)))))

(declare-fun b!4170753 () Bool)

(assert (=> b!4170753 (= e!2589285 true)))

(declare-fun lt!1485232 () Int)

(declare-fun pBis!107 () List!45824)

(assert (=> b!4170753 (= lt!1485232 (size!33546 pBis!107))))

(declare-fun e!2589286 () Bool)

(declare-fun e!2589284 () Bool)

(declare-fun b!4170754 () Bool)

(declare-fun tp!1274241 () Bool)

(declare-fun inv!60227 (String!52896) Bool)

(declare-fun inv!60229 (TokenValueInjection!15040) Bool)

(assert (=> b!4170754 (= e!2589284 (and tp!1274241 (inv!60227 (tag!8440 r!4142)) (inv!60229 (transformation!7576 r!4142)) e!2589286))))

(declare-fun e!2589283 () Bool)

(assert (=> b!4170755 (= e!2589283 (and tp!1274244 tp!1274238))))

(declare-fun b!4170756 () Bool)

(declare-fun res!1708967 () Bool)

(assert (=> b!4170756 (=> (not res!1708967) (not e!2589278))))

(assert (=> b!4170756 (= res!1708967 (isPrefix!4433 pBis!107 input!3342))))

(declare-fun b!4170757 () Bool)

(declare-fun res!1708964 () Bool)

(assert (=> b!4170757 (=> (not res!1708964) (not e!2589278))))

(declare-fun rBis!167 () Rule!14952)

(assert (=> b!4170757 (= res!1708964 (contains!9377 rules!3843 rBis!167))))

(declare-fun res!1708960 () Bool)

(assert (=> start!397646 (=> (not res!1708960) (not e!2589278))))

(get-info :version)

(assert (=> start!397646 (= res!1708960 ((_ is Lexer!7167) thiss!25986))))

(assert (=> start!397646 e!2589278))

(assert (=> start!397646 true))

(declare-fun e!2589277 () Bool)

(assert (=> start!397646 e!2589277))

(assert (=> start!397646 e!2589284))

(declare-fun e!2589280 () Bool)

(assert (=> start!397646 e!2589280))

(declare-fun e!2589276 () Bool)

(assert (=> start!397646 e!2589276))

(assert (=> start!397646 e!2589281))

(declare-fun e!2589287 () Bool)

(assert (=> start!397646 e!2589287))

(declare-fun b!4170758 () Bool)

(declare-fun e!2589275 () Bool)

(declare-fun tp!1274242 () Bool)

(assert (=> b!4170758 (= e!2589280 (and e!2589275 tp!1274242))))

(declare-fun b!4170759 () Bool)

(declare-fun tp!1274233 () Bool)

(assert (=> b!4170759 (= e!2589287 (and tp_is_empty!21925 tp!1274233))))

(declare-fun tp!1274237 () Bool)

(declare-fun e!2589274 () Bool)

(declare-fun b!4170760 () Bool)

(assert (=> b!4170760 (= e!2589277 (and tp!1274237 (inv!60227 (tag!8440 rBis!167)) (inv!60229 (transformation!7576 rBis!167)) e!2589274))))

(declare-fun b!4170761 () Bool)

(declare-fun res!1708962 () Bool)

(assert (=> b!4170761 (=> (not res!1708962) (not e!2589278))))

(declare-fun isEmpty!27037 (List!45825) Bool)

(assert (=> b!4170761 (= res!1708962 (not (isEmpty!27037 rules!3843)))))

(assert (=> b!4170762 (= e!2589274 (and tp!1274235 tp!1274232))))

(declare-fun b!4170763 () Bool)

(declare-fun tp!1274240 () Bool)

(assert (=> b!4170763 (= e!2589275 (and tp!1274240 (inv!60227 (tag!8440 (h!51121 rules!3843))) (inv!60229 (transformation!7576 (h!51121 rules!3843))) e!2589283))))

(declare-fun b!4170764 () Bool)

(declare-fun res!1708959 () Bool)

(assert (=> b!4170764 (=> (not res!1708959) (not e!2589278))))

(declare-fun matchR!6220 (Regex!12481 List!45824) Bool)

(assert (=> b!4170764 (= res!1708959 (matchR!6220 (regex!7576 r!4142) p!2959))))

(declare-fun b!4170765 () Bool)

(declare-fun tp!1274234 () Bool)

(assert (=> b!4170765 (= e!2589276 (and tp_is_empty!21925 tp!1274234))))

(assert (=> b!4170766 (= e!2589286 (and tp!1274239 tp!1274243))))

(assert (= (and start!397646 res!1708960) b!4170750))

(assert (= (and b!4170750 res!1708968) b!4170756))

(assert (= (and b!4170756 res!1708967) b!4170761))

(assert (= (and b!4170761 res!1708962) b!4170747))

(assert (= (and b!4170747 res!1708961) b!4170751))

(assert (= (and b!4170751 res!1708958) b!4170757))

(assert (= (and b!4170757 res!1708964) b!4170752))

(assert (= (and b!4170752 res!1708963) b!4170764))

(assert (= (and b!4170764 res!1708959) b!4170746))

(assert (= (and b!4170746 res!1708965) b!4170749))

(assert (= (and b!4170749 (not res!1708966)) b!4170753))

(assert (= b!4170760 b!4170762))

(assert (= start!397646 b!4170760))

(assert (= b!4170754 b!4170766))

(assert (= start!397646 b!4170754))

(assert (= b!4170763 b!4170755))

(assert (= b!4170758 b!4170763))

(assert (= (and start!397646 ((_ is Cons!45701) rules!3843)) b!4170758))

(assert (= (and start!397646 ((_ is Cons!45700) input!3342)) b!4170765))

(assert (= (and start!397646 ((_ is Cons!45700) pBis!107)) b!4170748))

(assert (= (and start!397646 ((_ is Cons!45700) p!2959)) b!4170759))

(declare-fun m!4761283 () Bool)

(assert (=> b!4170763 m!4761283))

(declare-fun m!4761285 () Bool)

(assert (=> b!4170763 m!4761285))

(declare-fun m!4761287 () Bool)

(assert (=> b!4170746 m!4761287))

(declare-fun m!4761289 () Bool)

(assert (=> b!4170760 m!4761289))

(declare-fun m!4761291 () Bool)

(assert (=> b!4170760 m!4761291))

(declare-fun m!4761293 () Bool)

(assert (=> b!4170747 m!4761293))

(declare-fun m!4761295 () Bool)

(assert (=> b!4170750 m!4761295))

(declare-fun m!4761297 () Bool)

(assert (=> b!4170764 m!4761297))

(declare-fun m!4761299 () Bool)

(assert (=> b!4170749 m!4761299))

(declare-fun m!4761301 () Bool)

(assert (=> b!4170749 m!4761301))

(declare-fun m!4761303 () Bool)

(assert (=> b!4170749 m!4761303))

(declare-fun m!4761305 () Bool)

(assert (=> b!4170749 m!4761305))

(declare-fun m!4761307 () Bool)

(assert (=> b!4170749 m!4761307))

(declare-fun m!4761309 () Bool)

(assert (=> b!4170749 m!4761309))

(declare-fun m!4761311 () Bool)

(assert (=> b!4170749 m!4761311))

(declare-fun m!4761313 () Bool)

(assert (=> b!4170749 m!4761313))

(declare-fun m!4761315 () Bool)

(assert (=> b!4170757 m!4761315))

(declare-fun m!4761317 () Bool)

(assert (=> b!4170756 m!4761317))

(declare-fun m!4761319 () Bool)

(assert (=> b!4170751 m!4761319))

(declare-fun m!4761321 () Bool)

(assert (=> b!4170761 m!4761321))

(declare-fun m!4761323 () Bool)

(assert (=> b!4170753 m!4761323))

(declare-fun m!4761325 () Bool)

(assert (=> b!4170754 m!4761325))

(declare-fun m!4761327 () Bool)

(assert (=> b!4170754 m!4761327))

(declare-fun m!4761329 () Bool)

(assert (=> b!4170752 m!4761329))

(check-sat (not b!4170748) b_and!325653 (not b_next!121391) tp_is_empty!21925 (not b!4170746) (not b!4170761) (not b!4170750) (not b!4170756) (not b!4170749) (not b!4170759) b_and!325655 (not b_next!121385) (not b_next!121389) (not b!4170751) (not b_next!121383) (not b!4170763) b_and!325647 b_and!325651 (not b!4170764) (not b!4170747) (not b_next!121387) (not b!4170753) b_and!325645 (not b!4170758) (not b!4170765) (not b!4170760) b_and!325649 (not b!4170752) (not b_next!121393) (not b!4170757) (not b!4170754))
(check-sat b_and!325653 (not b_next!121391) (not b_next!121389) b_and!325651 (not b_next!121387) b_and!325645 b_and!325649 (not b_next!121393) b_and!325655 (not b_next!121385) (not b_next!121383) b_and!325647)
