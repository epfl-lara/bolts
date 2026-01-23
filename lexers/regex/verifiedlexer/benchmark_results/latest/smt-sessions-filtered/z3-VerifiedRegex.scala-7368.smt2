; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391786 () Bool)

(assert start!391786)

(declare-fun b!4128301 () Bool)

(declare-fun b_free!116955 () Bool)

(declare-fun b_next!117659 () Bool)

(assert (=> b!4128301 (= b_free!116955 (not b_next!117659))))

(declare-fun tp!1257989 () Bool)

(declare-fun b_and!319777 () Bool)

(assert (=> b!4128301 (= tp!1257989 b_and!319777)))

(declare-fun b_free!116957 () Bool)

(declare-fun b_next!117661 () Bool)

(assert (=> b!4128301 (= b_free!116957 (not b_next!117661))))

(declare-fun tp!1257990 () Bool)

(declare-fun b_and!319779 () Bool)

(assert (=> b!4128301 (= tp!1257990 b_and!319779)))

(declare-fun b!4128306 () Bool)

(declare-fun b_free!116959 () Bool)

(declare-fun b_next!117663 () Bool)

(assert (=> b!4128306 (= b_free!116959 (not b_next!117663))))

(declare-fun tp!1257994 () Bool)

(declare-fun b_and!319781 () Bool)

(assert (=> b!4128306 (= tp!1257994 b_and!319781)))

(declare-fun b_free!116961 () Bool)

(declare-fun b_next!117665 () Bool)

(assert (=> b!4128306 (= b_free!116961 (not b_next!117665))))

(declare-fun tp!1257998 () Bool)

(declare-fun b_and!319783 () Bool)

(assert (=> b!4128306 (= tp!1257998 b_and!319783)))

(declare-fun b!4128304 () Bool)

(declare-fun b_free!116963 () Bool)

(declare-fun b_next!117667 () Bool)

(assert (=> b!4128304 (= b_free!116963 (not b_next!117667))))

(declare-fun tp!1257996 () Bool)

(declare-fun b_and!319785 () Bool)

(assert (=> b!4128304 (= tp!1257996 b_and!319785)))

(declare-fun b_free!116965 () Bool)

(declare-fun b_next!117669 () Bool)

(assert (=> b!4128304 (= b_free!116965 (not b_next!117669))))

(declare-fun tp!1257993 () Bool)

(declare-fun b_and!319787 () Bool)

(assert (=> b!4128304 (= tp!1257993 b_and!319787)))

(declare-fun b!4128290 () Bool)

(declare-fun res!1687407 () Bool)

(declare-fun e!2561502 () Bool)

(assert (=> b!4128290 (=> (not res!1687407) (not e!2561502))))

(declare-datatypes ((List!44793 0))(
  ( (Nil!44669) (Cons!44669 (h!50089 (_ BitVec 16)) (t!341370 List!44793)) )
))
(declare-datatypes ((TokenValue!7538 0))(
  ( (FloatLiteralValue!15076 (text!53211 List!44793)) (TokenValueExt!7537 (__x!27293 Int)) (Broken!37690 (value!228806 List!44793)) (Object!7661) (End!7538) (Def!7538) (Underscore!7538) (Match!7538) (Else!7538) (Error!7538) (Case!7538) (If!7538) (Extends!7538) (Abstract!7538) (Class!7538) (Val!7538) (DelimiterValue!15076 (del!7598 List!44793)) (KeywordValue!7544 (value!228807 List!44793)) (CommentValue!15076 (value!228808 List!44793)) (WhitespaceValue!15076 (value!228809 List!44793)) (IndentationValue!7538 (value!228810 List!44793)) (String!51439) (Int32!7538) (Broken!37691 (value!228811 List!44793)) (Boolean!7539) (Unit!64006) (OperatorValue!7541 (op!7598 List!44793)) (IdentifierValue!15076 (value!228812 List!44793)) (IdentifierValue!15077 (value!228813 List!44793)) (WhitespaceValue!15077 (value!228814 List!44793)) (True!15076) (False!15076) (Broken!37692 (value!228815 List!44793)) (Broken!37693 (value!228816 List!44793)) (True!15077) (RightBrace!7538) (RightBracket!7538) (Colon!7538) (Null!7538) (Comma!7538) (LeftBracket!7538) (False!15077) (LeftBrace!7538) (ImaginaryLiteralValue!7538 (text!53212 List!44793)) (StringLiteralValue!22614 (value!228817 List!44793)) (EOFValue!7538 (value!228818 List!44793)) (IdentValue!7538 (value!228819 List!44793)) (DelimiterValue!15077 (value!228820 List!44793)) (DedentValue!7538 (value!228821 List!44793)) (NewLineValue!7538 (value!228822 List!44793)) (IntegerValue!22614 (value!228823 (_ BitVec 32)) (text!53213 List!44793)) (IntegerValue!22615 (value!228824 Int) (text!53214 List!44793)) (Times!7538) (Or!7538) (Equal!7538) (Minus!7538) (Broken!37694 (value!228825 List!44793)) (And!7538) (Div!7538) (LessEqual!7538) (Mod!7538) (Concat!19751) (Not!7538) (Plus!7538) (SpaceValue!7538 (value!228826 List!44793)) (IntegerValue!22616 (value!228827 Int) (text!53215 List!44793)) (StringLiteralValue!22615 (text!53216 List!44793)) (FloatLiteralValue!15077 (text!53217 List!44793)) (BytesLiteralValue!7538 (value!228828 List!44793)) (CommentValue!15077 (value!228829 List!44793)) (StringLiteralValue!22616 (value!228830 List!44793)) (ErrorTokenValue!7538 (msg!7599 List!44793)) )
))
(declare-datatypes ((C!24612 0))(
  ( (C!24613 (val!14416 Int)) )
))
(declare-datatypes ((List!44794 0))(
  ( (Nil!44670) (Cons!44670 (h!50090 C!24612) (t!341371 List!44794)) )
))
(declare-datatypes ((IArray!27043 0))(
  ( (IArray!27044 (innerList!13579 List!44794)) )
))
(declare-datatypes ((Conc!13519 0))(
  ( (Node!13519 (left!33455 Conc!13519) (right!33785 Conc!13519) (csize!27268 Int) (cheight!13730 Int)) (Leaf!20888 (xs!16825 IArray!27043) (csize!27269 Int)) (Empty!13519) )
))
(declare-datatypes ((BalanceConc!26632 0))(
  ( (BalanceConc!26633 (c!708522 Conc!13519)) )
))
(declare-datatypes ((Regex!12213 0))(
  ( (ElementMatch!12213 (c!708523 C!24612)) (Concat!19752 (regOne!24938 Regex!12213) (regTwo!24938 Regex!12213)) (EmptyExpr!12213) (Star!12213 (reg!12542 Regex!12213)) (EmptyLang!12213) (Union!12213 (regOne!24939 Regex!12213) (regTwo!24939 Regex!12213)) )
))
(declare-datatypes ((String!51440 0))(
  ( (String!51441 (value!228831 String)) )
))
(declare-datatypes ((TokenValueInjection!14504 0))(
  ( (TokenValueInjection!14505 (toValue!9968 Int) (toChars!9827 Int)) )
))
(declare-datatypes ((Rule!14416 0))(
  ( (Rule!14417 (regex!7308 Regex!12213) (tag!8168 String!51440) (isSeparator!7308 Bool) (transformation!7308 TokenValueInjection!14504)) )
))
(declare-datatypes ((List!44795 0))(
  ( (Nil!44671) (Cons!44671 (h!50091 Rule!14416) (t!341372 List!44795)) )
))
(declare-fun rules!3756 () List!44795)

(declare-fun isEmpty!26593 (List!44795) Bool)

(assert (=> b!4128290 (= res!1687407 (not (isEmpty!26593 rules!3756)))))

(declare-fun b!4128291 () Bool)

(declare-fun res!1687420 () Bool)

(assert (=> b!4128291 (=> (not res!1687420) (not e!2561502))))

(declare-datatypes ((LexerInterface!6897 0))(
  ( (LexerInterfaceExt!6894 (__x!27294 Int)) (Lexer!6895) )
))
(declare-fun thiss!25645 () LexerInterface!6897)

(declare-fun rulesInvariant!6194 (LexerInterface!6897 List!44795) Bool)

(assert (=> b!4128291 (= res!1687420 (rulesInvariant!6194 thiss!25645 rules!3756))))

(declare-fun b!4128292 () Bool)

(declare-fun e!2561498 () Bool)

(declare-fun tp_is_empty!21349 () Bool)

(declare-fun tp!1257987 () Bool)

(assert (=> b!4128292 (= e!2561498 (and tp_is_empty!21349 tp!1257987))))

(declare-fun b!4128293 () Bool)

(declare-fun res!1687410 () Bool)

(assert (=> b!4128293 (=> (not res!1687410) (not e!2561502))))

(declare-fun p!2912 () List!44794)

(declare-fun isEmpty!26594 (List!44794) Bool)

(assert (=> b!4128293 (= res!1687410 (not (isEmpty!26594 p!2912)))))

(declare-fun tp!1257992 () Bool)

(declare-fun e!2561499 () Bool)

(declare-fun b!4128294 () Bool)

(declare-fun e!2561503 () Bool)

(declare-fun inv!59263 (String!51440) Bool)

(declare-fun inv!59265 (TokenValueInjection!14504) Bool)

(assert (=> b!4128294 (= e!2561503 (and tp!1257992 (inv!59263 (tag!8168 (h!50091 rules!3756))) (inv!59265 (transformation!7308 (h!50091 rules!3756))) e!2561499))))

(declare-fun b!4128295 () Bool)

(declare-fun e!2561494 () Bool)

(declare-fun tp!1257988 () Bool)

(assert (=> b!4128295 (= e!2561494 (and e!2561503 tp!1257988))))

(declare-fun rBis!149 () Rule!14416)

(declare-fun e!2561496 () Bool)

(declare-fun tp!1257997 () Bool)

(declare-fun e!2561497 () Bool)

(declare-fun b!4128296 () Bool)

(assert (=> b!4128296 (= e!2561496 (and tp!1257997 (inv!59263 (tag!8168 rBis!149)) (inv!59265 (transformation!7308 rBis!149)) e!2561497))))

(declare-fun b!4128298 () Bool)

(declare-fun res!1687411 () Bool)

(declare-fun e!2561493 () Bool)

(assert (=> b!4128298 (=> (not res!1687411) (not e!2561493))))

(declare-fun r!4008 () Rule!14416)

(declare-fun ruleValid!3116 (LexerInterface!6897 Rule!14416) Bool)

(assert (=> b!4128298 (= res!1687411 (ruleValid!3116 thiss!25645 r!4008))))

(declare-fun b!4128299 () Bool)

(declare-fun e!2561492 () Bool)

(assert (=> b!4128299 (= e!2561493 (not e!2561492))))

(declare-fun res!1687413 () Bool)

(assert (=> b!4128299 (=> res!1687413 e!2561492)))

(get-info :version)

(assert (=> b!4128299 (= res!1687413 (or (and ((_ is Cons!44671) rules!3756) (= (h!50091 rules!3756) rBis!149)) (not ((_ is Cons!44671) rules!3756)) (= (h!50091 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!64007 0))(
  ( (Unit!64008) )
))
(declare-fun lt!1472634 () Unit!64007)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2160 (LexerInterface!6897 Rule!14416 List!44795) Unit!64007)

(assert (=> b!4128299 (= lt!1472634 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2160 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4128299 (ruleValid!3116 thiss!25645 rBis!149)))

(declare-fun lt!1472638 () Unit!64007)

(assert (=> b!4128299 (= lt!1472638 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2160 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4128300 () Bool)

(declare-fun res!1687416 () Bool)

(assert (=> b!4128300 (=> res!1687416 e!2561492)))

(declare-fun contains!8984 (List!44795 Rule!14416) Bool)

(assert (=> b!4128300 (= res!1687416 (not (contains!8984 (t!341372 rules!3756) r!4008)))))

(assert (=> b!4128301 (= e!2561499 (and tp!1257989 tp!1257990))))

(declare-fun b!4128302 () Bool)

(declare-fun res!1687409 () Bool)

(assert (=> b!4128302 (=> (not res!1687409) (not e!2561502))))

(assert (=> b!4128302 (= res!1687409 (contains!8984 rules!3756 r!4008))))

(declare-fun b!4128303 () Bool)

(declare-fun res!1687417 () Bool)

(assert (=> b!4128303 (=> (not res!1687417) (not e!2561493))))

(declare-fun matchR!6044 (Regex!12213 List!44794) Bool)

(assert (=> b!4128303 (= res!1687417 (matchR!6044 (regex!7308 r!4008) p!2912))))

(declare-fun e!2561501 () Bool)

(assert (=> b!4128304 (= e!2561501 (and tp!1257996 tp!1257993))))

(declare-fun b!4128305 () Bool)

(assert (=> b!4128305 (= e!2561492 true)))

(declare-fun lt!1472636 () Bool)

(assert (=> b!4128305 (= lt!1472636 (rulesInvariant!6194 thiss!25645 (Cons!44671 (h!50091 rules!3756) (t!341372 rules!3756))))))

(declare-fun input!3238 () List!44794)

(declare-datatypes ((Token!13546 0))(
  ( (Token!13547 (value!228832 TokenValue!7538) (rule!10398 Rule!14416) (size!33079 Int) (originalCharacters!7804 List!44794)) )
))
(declare-datatypes ((tuple2!43122 0))(
  ( (tuple2!43123 (_1!24695 Token!13546) (_2!24695 List!44794)) )
))
(declare-datatypes ((Option!9616 0))(
  ( (None!9615) (Some!9615 (v!40217 tuple2!43122)) )
))
(declare-fun lt!1472633 () Option!9616)

(declare-fun maxPrefix!4089 (LexerInterface!6897 List!44795 List!44794) Option!9616)

(assert (=> b!4128305 (= lt!1472633 (maxPrefix!4089 thiss!25645 (t!341372 rules!3756) input!3238))))

(declare-fun lt!1472637 () Option!9616)

(declare-fun maxPrefixOneRule!3037 (LexerInterface!6897 Rule!14416 List!44794) Option!9616)

(assert (=> b!4128305 (= lt!1472637 (maxPrefixOneRule!3037 thiss!25645 (h!50091 rules!3756) input!3238))))

(assert (=> b!4128306 (= e!2561497 (and tp!1257994 tp!1257998))))

(declare-fun e!2561504 () Bool)

(declare-fun tp!1257995 () Bool)

(declare-fun b!4128307 () Bool)

(assert (=> b!4128307 (= e!2561504 (and tp!1257995 (inv!59263 (tag!8168 r!4008)) (inv!59265 (transformation!7308 r!4008)) e!2561501))))

(declare-fun b!4128308 () Bool)

(declare-fun res!1687414 () Bool)

(assert (=> b!4128308 (=> (not res!1687414) (not e!2561493))))

(declare-fun getIndex!656 (List!44795 Rule!14416) Int)

(assert (=> b!4128308 (= res!1687414 (< (getIndex!656 rules!3756 rBis!149) (getIndex!656 rules!3756 r!4008)))))

(declare-fun b!4128309 () Bool)

(declare-fun res!1687415 () Bool)

(assert (=> b!4128309 (=> (not res!1687415) (not e!2561502))))

(declare-fun isPrefix!4243 (List!44794 List!44794) Bool)

(assert (=> b!4128309 (= res!1687415 (isPrefix!4243 p!2912 input!3238))))

(declare-fun b!4128310 () Bool)

(declare-fun res!1687418 () Bool)

(assert (=> b!4128310 (=> res!1687418 e!2561492)))

(assert (=> b!4128310 (= res!1687418 (not (contains!8984 (t!341372 rules!3756) rBis!149)))))

(declare-fun b!4128297 () Bool)

(declare-fun e!2561490 () Bool)

(declare-fun tp!1257991 () Bool)

(assert (=> b!4128297 (= e!2561490 (and tp_is_empty!21349 tp!1257991))))

(declare-fun res!1687408 () Bool)

(assert (=> start!391786 (=> (not res!1687408) (not e!2561502))))

(assert (=> start!391786 (= res!1687408 ((_ is Lexer!6895) thiss!25645))))

(assert (=> start!391786 e!2561502))

(assert (=> start!391786 e!2561494))

(assert (=> start!391786 e!2561498))

(assert (=> start!391786 true))

(assert (=> start!391786 e!2561504))

(assert (=> start!391786 e!2561490))

(assert (=> start!391786 e!2561496))

(declare-fun b!4128311 () Bool)

(declare-fun res!1687412 () Bool)

(assert (=> b!4128311 (=> (not res!1687412) (not e!2561502))))

(assert (=> b!4128311 (= res!1687412 (contains!8984 rules!3756 rBis!149))))

(declare-fun b!4128312 () Bool)

(assert (=> b!4128312 (= e!2561502 e!2561493)))

(declare-fun res!1687419 () Bool)

(assert (=> b!4128312 (=> (not res!1687419) (not e!2561493))))

(declare-fun lt!1472635 () BalanceConc!26632)

(declare-fun apply!10381 (TokenValueInjection!14504 BalanceConc!26632) TokenValue!7538)

(declare-fun size!33080 (List!44794) Int)

(declare-fun getSuffix!2572 (List!44794 List!44794) List!44794)

(assert (=> b!4128312 (= res!1687419 (= (maxPrefix!4089 thiss!25645 rules!3756 input!3238) (Some!9615 (tuple2!43123 (Token!13547 (apply!10381 (transformation!7308 r!4008) lt!1472635) r!4008 (size!33080 p!2912) p!2912) (getSuffix!2572 input!3238 p!2912)))))))

(declare-fun lt!1472632 () Unit!64007)

(declare-fun lemmaSemiInverse!2166 (TokenValueInjection!14504 BalanceConc!26632) Unit!64007)

(assert (=> b!4128312 (= lt!1472632 (lemmaSemiInverse!2166 (transformation!7308 r!4008) lt!1472635))))

(declare-fun seqFromList!5425 (List!44794) BalanceConc!26632)

(assert (=> b!4128312 (= lt!1472635 (seqFromList!5425 p!2912))))

(assert (= (and start!391786 res!1687408) b!4128309))

(assert (= (and b!4128309 res!1687415) b!4128290))

(assert (= (and b!4128290 res!1687407) b!4128291))

(assert (= (and b!4128291 res!1687420) b!4128302))

(assert (= (and b!4128302 res!1687409) b!4128311))

(assert (= (and b!4128311 res!1687412) b!4128293))

(assert (= (and b!4128293 res!1687410) b!4128312))

(assert (= (and b!4128312 res!1687419) b!4128303))

(assert (= (and b!4128303 res!1687417) b!4128308))

(assert (= (and b!4128308 res!1687414) b!4128298))

(assert (= (and b!4128298 res!1687411) b!4128299))

(assert (= (and b!4128299 (not res!1687413)) b!4128300))

(assert (= (and b!4128300 (not res!1687416)) b!4128310))

(assert (= (and b!4128310 (not res!1687418)) b!4128305))

(assert (= b!4128294 b!4128301))

(assert (= b!4128295 b!4128294))

(assert (= (and start!391786 ((_ is Cons!44671) rules!3756)) b!4128295))

(assert (= (and start!391786 ((_ is Cons!44670) p!2912)) b!4128292))

(assert (= b!4128307 b!4128304))

(assert (= start!391786 b!4128307))

(assert (= (and start!391786 ((_ is Cons!44670) input!3238)) b!4128297))

(assert (= b!4128296 b!4128306))

(assert (= start!391786 b!4128296))

(declare-fun m!4726545 () Bool)

(assert (=> b!4128303 m!4726545))

(declare-fun m!4726547 () Bool)

(assert (=> b!4128294 m!4726547))

(declare-fun m!4726549 () Bool)

(assert (=> b!4128294 m!4726549))

(declare-fun m!4726551 () Bool)

(assert (=> b!4128291 m!4726551))

(declare-fun m!4726553 () Bool)

(assert (=> b!4128307 m!4726553))

(declare-fun m!4726555 () Bool)

(assert (=> b!4128307 m!4726555))

(declare-fun m!4726557 () Bool)

(assert (=> b!4128298 m!4726557))

(declare-fun m!4726559 () Bool)

(assert (=> b!4128308 m!4726559))

(declare-fun m!4726561 () Bool)

(assert (=> b!4128308 m!4726561))

(declare-fun m!4726563 () Bool)

(assert (=> b!4128311 m!4726563))

(declare-fun m!4726565 () Bool)

(assert (=> b!4128310 m!4726565))

(declare-fun m!4726567 () Bool)

(assert (=> b!4128312 m!4726567))

(declare-fun m!4726569 () Bool)

(assert (=> b!4128312 m!4726569))

(declare-fun m!4726571 () Bool)

(assert (=> b!4128312 m!4726571))

(declare-fun m!4726573 () Bool)

(assert (=> b!4128312 m!4726573))

(declare-fun m!4726575 () Bool)

(assert (=> b!4128312 m!4726575))

(declare-fun m!4726577 () Bool)

(assert (=> b!4128312 m!4726577))

(declare-fun m!4726579 () Bool)

(assert (=> b!4128290 m!4726579))

(declare-fun m!4726581 () Bool)

(assert (=> b!4128305 m!4726581))

(declare-fun m!4726583 () Bool)

(assert (=> b!4128305 m!4726583))

(declare-fun m!4726585 () Bool)

(assert (=> b!4128305 m!4726585))

(declare-fun m!4726587 () Bool)

(assert (=> b!4128300 m!4726587))

(declare-fun m!4726589 () Bool)

(assert (=> b!4128309 m!4726589))

(declare-fun m!4726591 () Bool)

(assert (=> b!4128299 m!4726591))

(declare-fun m!4726593 () Bool)

(assert (=> b!4128299 m!4726593))

(declare-fun m!4726595 () Bool)

(assert (=> b!4128299 m!4726595))

(declare-fun m!4726597 () Bool)

(assert (=> b!4128302 m!4726597))

(declare-fun m!4726599 () Bool)

(assert (=> b!4128293 m!4726599))

(declare-fun m!4726601 () Bool)

(assert (=> b!4128296 m!4726601))

(declare-fun m!4726603 () Bool)

(assert (=> b!4128296 m!4726603))

(check-sat b_and!319779 (not b!4128298) (not b!4128297) (not b!4128308) (not b_next!117663) (not b!4128310) (not b!4128296) b_and!319787 (not b_next!117667) (not b!4128290) (not b!4128291) (not b_next!117659) (not b!4128295) (not b!4128309) (not b!4128307) (not b!4128302) (not b!4128311) (not b!4128300) (not b_next!117665) (not b!4128293) b_and!319777 b_and!319781 (not b!4128312) b_and!319783 b_and!319785 (not b!4128292) (not b!4128299) (not b_next!117669) (not b_next!117661) (not b!4128294) tp_is_empty!21349 (not b!4128303) (not b!4128305))
(check-sat b_and!319779 b_and!319781 (not b_next!117663) b_and!319787 (not b_next!117667) (not b_next!117659) (not b_next!117665) b_and!319777 b_and!319783 b_and!319785 (not b_next!117669) (not b_next!117661))
