; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391794 () Bool)

(assert start!391794)

(declare-fun b!4128593 () Bool)

(declare-fun b_free!117003 () Bool)

(declare-fun b_next!117707 () Bool)

(assert (=> b!4128593 (= b_free!117003 (not b_next!117707))))

(declare-fun tp!1258142 () Bool)

(declare-fun b_and!319825 () Bool)

(assert (=> b!4128593 (= tp!1258142 b_and!319825)))

(declare-fun b_free!117005 () Bool)

(declare-fun b_next!117709 () Bool)

(assert (=> b!4128593 (= b_free!117005 (not b_next!117709))))

(declare-fun tp!1258131 () Bool)

(declare-fun b_and!319827 () Bool)

(assert (=> b!4128593 (= tp!1258131 b_and!319827)))

(declare-fun b!4128609 () Bool)

(declare-fun b_free!117007 () Bool)

(declare-fun b_next!117711 () Bool)

(assert (=> b!4128609 (= b_free!117007 (not b_next!117711))))

(declare-fun tp!1258132 () Bool)

(declare-fun b_and!319829 () Bool)

(assert (=> b!4128609 (= tp!1258132 b_and!319829)))

(declare-fun b_free!117009 () Bool)

(declare-fun b_next!117713 () Bool)

(assert (=> b!4128609 (= b_free!117009 (not b_next!117713))))

(declare-fun tp!1258134 () Bool)

(declare-fun b_and!319831 () Bool)

(assert (=> b!4128609 (= tp!1258134 b_and!319831)))

(declare-fun b!4128596 () Bool)

(declare-fun b_free!117011 () Bool)

(declare-fun b_next!117715 () Bool)

(assert (=> b!4128596 (= b_free!117011 (not b_next!117715))))

(declare-fun tp!1258133 () Bool)

(declare-fun b_and!319833 () Bool)

(assert (=> b!4128596 (= tp!1258133 b_and!319833)))

(declare-fun b_free!117013 () Bool)

(declare-fun b_next!117717 () Bool)

(assert (=> b!4128596 (= b_free!117013 (not b_next!117717))))

(declare-fun tp!1258135 () Bool)

(declare-fun b_and!319835 () Bool)

(assert (=> b!4128596 (= tp!1258135 b_and!319835)))

(declare-fun b!4128588 () Bool)

(declare-fun res!1687602 () Bool)

(declare-fun e!2561687 () Bool)

(assert (=> b!4128588 (=> (not res!1687602) (not e!2561687))))

(declare-datatypes ((List!44807 0))(
  ( (Nil!44683) (Cons!44683 (h!50103 (_ BitVec 16)) (t!341384 List!44807)) )
))
(declare-datatypes ((TokenValue!7542 0))(
  ( (FloatLiteralValue!15084 (text!53239 List!44807)) (TokenValueExt!7541 (__x!27301 Int)) (Broken!37710 (value!228920 List!44807)) (Object!7665) (End!7542) (Def!7542) (Underscore!7542) (Match!7542) (Else!7542) (Error!7542) (Case!7542) (If!7542) (Extends!7542) (Abstract!7542) (Class!7542) (Val!7542) (DelimiterValue!15084 (del!7602 List!44807)) (KeywordValue!7548 (value!228921 List!44807)) (CommentValue!15084 (value!228922 List!44807)) (WhitespaceValue!15084 (value!228923 List!44807)) (IndentationValue!7542 (value!228924 List!44807)) (String!51459) (Int32!7542) (Broken!37711 (value!228925 List!44807)) (Boolean!7543) (Unit!64018) (OperatorValue!7545 (op!7602 List!44807)) (IdentifierValue!15084 (value!228926 List!44807)) (IdentifierValue!15085 (value!228927 List!44807)) (WhitespaceValue!15085 (value!228928 List!44807)) (True!15084) (False!15084) (Broken!37712 (value!228929 List!44807)) (Broken!37713 (value!228930 List!44807)) (True!15085) (RightBrace!7542) (RightBracket!7542) (Colon!7542) (Null!7542) (Comma!7542) (LeftBracket!7542) (False!15085) (LeftBrace!7542) (ImaginaryLiteralValue!7542 (text!53240 List!44807)) (StringLiteralValue!22626 (value!228931 List!44807)) (EOFValue!7542 (value!228932 List!44807)) (IdentValue!7542 (value!228933 List!44807)) (DelimiterValue!15085 (value!228934 List!44807)) (DedentValue!7542 (value!228935 List!44807)) (NewLineValue!7542 (value!228936 List!44807)) (IntegerValue!22626 (value!228937 (_ BitVec 32)) (text!53241 List!44807)) (IntegerValue!22627 (value!228938 Int) (text!53242 List!44807)) (Times!7542) (Or!7542) (Equal!7542) (Minus!7542) (Broken!37714 (value!228939 List!44807)) (And!7542) (Div!7542) (LessEqual!7542) (Mod!7542) (Concat!19759) (Not!7542) (Plus!7542) (SpaceValue!7542 (value!228940 List!44807)) (IntegerValue!22628 (value!228941 Int) (text!53243 List!44807)) (StringLiteralValue!22627 (text!53244 List!44807)) (FloatLiteralValue!15085 (text!53245 List!44807)) (BytesLiteralValue!7542 (value!228942 List!44807)) (CommentValue!15085 (value!228943 List!44807)) (StringLiteralValue!22628 (value!228944 List!44807)) (ErrorTokenValue!7542 (msg!7603 List!44807)) )
))
(declare-datatypes ((C!24620 0))(
  ( (C!24621 (val!14420 Int)) )
))
(declare-datatypes ((List!44808 0))(
  ( (Nil!44684) (Cons!44684 (h!50104 C!24620) (t!341385 List!44808)) )
))
(declare-datatypes ((IArray!27051 0))(
  ( (IArray!27052 (innerList!13583 List!44808)) )
))
(declare-datatypes ((Conc!13523 0))(
  ( (Node!13523 (left!33461 Conc!13523) (right!33791 Conc!13523) (csize!27276 Int) (cheight!13734 Int)) (Leaf!20894 (xs!16829 IArray!27051) (csize!27277 Int)) (Empty!13523) )
))
(declare-datatypes ((BalanceConc!26640 0))(
  ( (BalanceConc!26641 (c!708534 Conc!13523)) )
))
(declare-datatypes ((String!51460 0))(
  ( (String!51461 (value!228945 String)) )
))
(declare-datatypes ((Regex!12217 0))(
  ( (ElementMatch!12217 (c!708535 C!24620)) (Concat!19760 (regOne!24946 Regex!12217) (regTwo!24946 Regex!12217)) (EmptyExpr!12217) (Star!12217 (reg!12546 Regex!12217)) (EmptyLang!12217) (Union!12217 (regOne!24947 Regex!12217) (regTwo!24947 Regex!12217)) )
))
(declare-datatypes ((TokenValueInjection!14512 0))(
  ( (TokenValueInjection!14513 (toValue!9972 Int) (toChars!9831 Int)) )
))
(declare-datatypes ((Rule!14424 0))(
  ( (Rule!14425 (regex!7312 Regex!12217) (tag!8172 String!51460) (isSeparator!7312 Bool) (transformation!7312 TokenValueInjection!14512)) )
))
(declare-datatypes ((List!44809 0))(
  ( (Nil!44685) (Cons!44685 (h!50105 Rule!14424) (t!341386 List!44809)) )
))
(declare-fun rules!3756 () List!44809)

(declare-fun isEmpty!26601 (List!44809) Bool)

(assert (=> b!4128588 (= res!1687602 (not (isEmpty!26601 rules!3756)))))

(declare-fun res!1687609 () Bool)

(assert (=> start!391794 (=> (not res!1687609) (not e!2561687))))

(declare-datatypes ((LexerInterface!6901 0))(
  ( (LexerInterfaceExt!6898 (__x!27302 Int)) (Lexer!6899) )
))
(declare-fun thiss!25645 () LexerInterface!6901)

(get-info :version)

(assert (=> start!391794 (= res!1687609 ((_ is Lexer!6899) thiss!25645))))

(assert (=> start!391794 e!2561687))

(declare-fun e!2561684 () Bool)

(assert (=> start!391794 e!2561684))

(declare-fun e!2561681 () Bool)

(assert (=> start!391794 e!2561681))

(assert (=> start!391794 true))

(declare-fun e!2561691 () Bool)

(assert (=> start!391794 e!2561691))

(declare-fun e!2561696 () Bool)

(assert (=> start!391794 e!2561696))

(declare-fun e!2561683 () Bool)

(assert (=> start!391794 e!2561683))

(declare-fun b!4128589 () Bool)

(declare-fun res!1687597 () Bool)

(declare-fun e!2561689 () Bool)

(assert (=> b!4128589 (=> res!1687597 e!2561689)))

(declare-fun rBis!149 () Rule!14424)

(declare-fun contains!8988 (List!44809 Rule!14424) Bool)

(assert (=> b!4128589 (= res!1687597 (not (contains!8988 (t!341386 rules!3756) rBis!149)))))

(declare-fun b!4128590 () Bool)

(declare-fun e!2561682 () Bool)

(declare-fun tp!1258139 () Bool)

(assert (=> b!4128590 (= e!2561684 (and e!2561682 tp!1258139))))

(declare-fun b!4128591 () Bool)

(declare-fun res!1687598 () Bool)

(assert (=> b!4128591 (=> res!1687598 e!2561689)))

(declare-fun r!4008 () Rule!14424)

(assert (=> b!4128591 (= res!1687598 (not (contains!8988 (t!341386 rules!3756) r!4008)))))

(declare-fun b!4128592 () Bool)

(declare-fun res!1687604 () Bool)

(assert (=> b!4128592 (=> (not res!1687604) (not e!2561687))))

(assert (=> b!4128592 (= res!1687604 (contains!8988 rules!3756 r!4008))))

(declare-fun e!2561690 () Bool)

(assert (=> b!4128593 (= e!2561690 (and tp!1258142 tp!1258131))))

(declare-fun tp!1258140 () Bool)

(declare-fun b!4128594 () Bool)

(declare-fun e!2561686 () Bool)

(declare-fun inv!59273 (String!51460) Bool)

(declare-fun inv!59275 (TokenValueInjection!14512) Bool)

(assert (=> b!4128594 (= e!2561691 (and tp!1258140 (inv!59273 (tag!8172 r!4008)) (inv!59275 (transformation!7312 r!4008)) e!2561686))))

(declare-fun b!4128595 () Bool)

(declare-fun e!2561695 () Bool)

(assert (=> b!4128595 (= e!2561695 (not e!2561689))))

(declare-fun res!1687610 () Bool)

(assert (=> b!4128595 (=> res!1687610 e!2561689)))

(assert (=> b!4128595 (= res!1687610 (or (and ((_ is Cons!44685) rules!3756) (= (h!50105 rules!3756) rBis!149)) (not ((_ is Cons!44685) rules!3756)) (= (h!50105 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!64019 0))(
  ( (Unit!64020) )
))
(declare-fun lt!1472746 () Unit!64019)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2164 (LexerInterface!6901 Rule!14424 List!44809) Unit!64019)

(assert (=> b!4128595 (= lt!1472746 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2164 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3120 (LexerInterface!6901 Rule!14424) Bool)

(assert (=> b!4128595 (ruleValid!3120 thiss!25645 rBis!149)))

(declare-fun lt!1472750 () Unit!64019)

(assert (=> b!4128595 (= lt!1472750 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2164 thiss!25645 rBis!149 rules!3756))))

(assert (=> b!4128596 (= e!2561686 (and tp!1258133 tp!1258135))))

(declare-fun b!4128597 () Bool)

(declare-fun res!1687607 () Bool)

(assert (=> b!4128597 (=> (not res!1687607) (not e!2561687))))

(assert (=> b!4128597 (= res!1687607 (contains!8988 rules!3756 rBis!149))))

(declare-fun b!4128598 () Bool)

(declare-fun e!2561694 () Bool)

(assert (=> b!4128598 (= e!2561689 e!2561694)))

(declare-fun res!1687612 () Bool)

(assert (=> b!4128598 (=> res!1687612 e!2561694)))

(assert (=> b!4128598 (= res!1687612 (isEmpty!26601 (t!341386 rules!3756)))))

(assert (=> b!4128598 (not (= (tag!8172 (h!50105 rules!3756)) (tag!8172 r!4008)))))

(declare-fun lt!1472743 () Unit!64019)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!56 (LexerInterface!6901 List!44809 Rule!14424 Rule!14424) Unit!64019)

(assert (=> b!4128598 (= lt!1472743 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!56 thiss!25645 rules!3756 (h!50105 rules!3756) r!4008))))

(declare-fun rulesInvariant!6198 (LexerInterface!6901 List!44809) Bool)

(assert (=> b!4128598 (rulesInvariant!6198 thiss!25645 (t!341386 rules!3756))))

(declare-fun lt!1472744 () Unit!64019)

(declare-fun lemmaInvariantOnRulesThenOnTail!818 (LexerInterface!6901 Rule!14424 List!44809) Unit!64019)

(assert (=> b!4128598 (= lt!1472744 (lemmaInvariantOnRulesThenOnTail!818 thiss!25645 (h!50105 rules!3756) (t!341386 rules!3756)))))

(declare-fun input!3238 () List!44808)

(declare-datatypes ((Token!13554 0))(
  ( (Token!13555 (value!228946 TokenValue!7542) (rule!10402 Rule!14424) (size!33087 Int) (originalCharacters!7808 List!44808)) )
))
(declare-datatypes ((tuple2!43130 0))(
  ( (tuple2!43131 (_1!24699 Token!13554) (_2!24699 List!44808)) )
))
(declare-datatypes ((Option!9620 0))(
  ( (None!9619) (Some!9619 (v!40221 tuple2!43130)) )
))
(declare-fun lt!1472752 () Option!9620)

(declare-fun maxPrefix!4093 (LexerInterface!6901 List!44809 List!44808) Option!9620)

(assert (=> b!4128598 (= lt!1472752 (maxPrefix!4093 thiss!25645 (t!341386 rules!3756) input!3238))))

(declare-fun lt!1472751 () Option!9620)

(declare-fun maxPrefixOneRule!3041 (LexerInterface!6901 Rule!14424 List!44808) Option!9620)

(assert (=> b!4128598 (= lt!1472751 (maxPrefixOneRule!3041 thiss!25645 (h!50105 rules!3756) input!3238))))

(declare-fun tp!1258137 () Bool)

(declare-fun b!4128599 () Bool)

(assert (=> b!4128599 (= e!2561683 (and tp!1258137 (inv!59273 (tag!8172 rBis!149)) (inv!59275 (transformation!7312 rBis!149)) e!2561690))))

(declare-fun b!4128600 () Bool)

(declare-fun tp_is_empty!21357 () Bool)

(declare-fun tp!1258136 () Bool)

(assert (=> b!4128600 (= e!2561696 (and tp_is_empty!21357 tp!1258136))))

(declare-fun b!4128601 () Bool)

(declare-fun res!1687606 () Bool)

(assert (=> b!4128601 (=> (not res!1687606) (not e!2561687))))

(assert (=> b!4128601 (= res!1687606 (rulesInvariant!6198 thiss!25645 rules!3756))))

(declare-fun b!4128602 () Bool)

(assert (=> b!4128602 (= e!2561694 true)))

(declare-fun lt!1472748 () Int)

(declare-fun getIndex!660 (List!44809 Rule!14424) Int)

(assert (=> b!4128602 (= lt!1472748 (getIndex!660 (t!341386 rules!3756) r!4008))))

(declare-fun lt!1472742 () Int)

(assert (=> b!4128602 (= lt!1472742 (getIndex!660 (t!341386 rules!3756) rBis!149))))

(declare-fun b!4128603 () Bool)

(declare-fun res!1687611 () Bool)

(assert (=> b!4128603 (=> (not res!1687611) (not e!2561687))))

(declare-fun p!2912 () List!44808)

(declare-fun isPrefix!4247 (List!44808 List!44808) Bool)

(assert (=> b!4128603 (= res!1687611 (isPrefix!4247 p!2912 input!3238))))

(declare-fun b!4128604 () Bool)

(declare-fun res!1687599 () Bool)

(assert (=> b!4128604 (=> (not res!1687599) (not e!2561695))))

(declare-fun matchR!6048 (Regex!12217 List!44808) Bool)

(assert (=> b!4128604 (= res!1687599 (matchR!6048 (regex!7312 r!4008) p!2912))))

(declare-fun b!4128605 () Bool)

(declare-fun tp!1258138 () Bool)

(assert (=> b!4128605 (= e!2561681 (and tp_is_empty!21357 tp!1258138))))

(declare-fun b!4128606 () Bool)

(declare-fun res!1687603 () Bool)

(assert (=> b!4128606 (=> (not res!1687603) (not e!2561687))))

(declare-fun isEmpty!26602 (List!44808) Bool)

(assert (=> b!4128606 (= res!1687603 (not (isEmpty!26602 p!2912)))))

(declare-fun b!4128607 () Bool)

(assert (=> b!4128607 (= e!2561687 e!2561695)))

(declare-fun res!1687601 () Bool)

(assert (=> b!4128607 (=> (not res!1687601) (not e!2561695))))

(declare-fun lt!1472749 () Option!9620)

(assert (=> b!4128607 (= res!1687601 (= (maxPrefix!4093 thiss!25645 rules!3756 input!3238) lt!1472749))))

(declare-fun lt!1472747 () BalanceConc!26640)

(declare-fun apply!10385 (TokenValueInjection!14512 BalanceConc!26640) TokenValue!7542)

(declare-fun size!33088 (List!44808) Int)

(declare-fun getSuffix!2576 (List!44808 List!44808) List!44808)

(assert (=> b!4128607 (= lt!1472749 (Some!9619 (tuple2!43131 (Token!13555 (apply!10385 (transformation!7312 r!4008) lt!1472747) r!4008 (size!33088 p!2912) p!2912) (getSuffix!2576 input!3238 p!2912))))))

(declare-fun lt!1472745 () Unit!64019)

(declare-fun lemmaSemiInverse!2170 (TokenValueInjection!14512 BalanceConc!26640) Unit!64019)

(assert (=> b!4128607 (= lt!1472745 (lemmaSemiInverse!2170 (transformation!7312 r!4008) lt!1472747))))

(declare-fun seqFromList!5429 (List!44808) BalanceConc!26640)

(assert (=> b!4128607 (= lt!1472747 (seqFromList!5429 p!2912))))

(declare-fun e!2561688 () Bool)

(declare-fun tp!1258141 () Bool)

(declare-fun b!4128608 () Bool)

(assert (=> b!4128608 (= e!2561682 (and tp!1258141 (inv!59273 (tag!8172 (h!50105 rules!3756))) (inv!59275 (transformation!7312 (h!50105 rules!3756))) e!2561688))))

(assert (=> b!4128609 (= e!2561688 (and tp!1258132 tp!1258134))))

(declare-fun b!4128610 () Bool)

(declare-fun res!1687600 () Bool)

(assert (=> b!4128610 (=> res!1687600 e!2561694)))

(assert (=> b!4128610 (= res!1687600 (not (= lt!1472752 lt!1472749)))))

(declare-fun b!4128611 () Bool)

(declare-fun res!1687605 () Bool)

(assert (=> b!4128611 (=> (not res!1687605) (not e!2561695))))

(assert (=> b!4128611 (= res!1687605 (< (getIndex!660 rules!3756 rBis!149) (getIndex!660 rules!3756 r!4008)))))

(declare-fun b!4128612 () Bool)

(declare-fun res!1687608 () Bool)

(assert (=> b!4128612 (=> (not res!1687608) (not e!2561695))))

(assert (=> b!4128612 (= res!1687608 (ruleValid!3120 thiss!25645 r!4008))))

(assert (= (and start!391794 res!1687609) b!4128603))

(assert (= (and b!4128603 res!1687611) b!4128588))

(assert (= (and b!4128588 res!1687602) b!4128601))

(assert (= (and b!4128601 res!1687606) b!4128592))

(assert (= (and b!4128592 res!1687604) b!4128597))

(assert (= (and b!4128597 res!1687607) b!4128606))

(assert (= (and b!4128606 res!1687603) b!4128607))

(assert (= (and b!4128607 res!1687601) b!4128604))

(assert (= (and b!4128604 res!1687599) b!4128611))

(assert (= (and b!4128611 res!1687605) b!4128612))

(assert (= (and b!4128612 res!1687608) b!4128595))

(assert (= (and b!4128595 (not res!1687610)) b!4128591))

(assert (= (and b!4128591 (not res!1687598)) b!4128589))

(assert (= (and b!4128589 (not res!1687597)) b!4128598))

(assert (= (and b!4128598 (not res!1687612)) b!4128610))

(assert (= (and b!4128610 (not res!1687600)) b!4128602))

(assert (= b!4128608 b!4128609))

(assert (= b!4128590 b!4128608))

(assert (= (and start!391794 ((_ is Cons!44685) rules!3756)) b!4128590))

(assert (= (and start!391794 ((_ is Cons!44684) p!2912)) b!4128605))

(assert (= b!4128594 b!4128596))

(assert (= start!391794 b!4128594))

(assert (= (and start!391794 ((_ is Cons!44684) input!3238)) b!4128600))

(assert (= b!4128599 b!4128593))

(assert (= start!391794 b!4128599))

(declare-fun m!4726815 () Bool)

(assert (=> b!4128591 m!4726815))

(declare-fun m!4726817 () Bool)

(assert (=> b!4128589 m!4726817))

(declare-fun m!4726819 () Bool)

(assert (=> b!4128595 m!4726819))

(declare-fun m!4726821 () Bool)

(assert (=> b!4128595 m!4726821))

(declare-fun m!4726823 () Bool)

(assert (=> b!4128595 m!4726823))

(declare-fun m!4726825 () Bool)

(assert (=> b!4128588 m!4726825))

(declare-fun m!4726827 () Bool)

(assert (=> b!4128602 m!4726827))

(declare-fun m!4726829 () Bool)

(assert (=> b!4128602 m!4726829))

(declare-fun m!4726831 () Bool)

(assert (=> b!4128611 m!4726831))

(declare-fun m!4726833 () Bool)

(assert (=> b!4128611 m!4726833))

(declare-fun m!4726835 () Bool)

(assert (=> b!4128594 m!4726835))

(declare-fun m!4726837 () Bool)

(assert (=> b!4128594 m!4726837))

(declare-fun m!4726839 () Bool)

(assert (=> b!4128597 m!4726839))

(declare-fun m!4726841 () Bool)

(assert (=> b!4128607 m!4726841))

(declare-fun m!4726843 () Bool)

(assert (=> b!4128607 m!4726843))

(declare-fun m!4726845 () Bool)

(assert (=> b!4128607 m!4726845))

(declare-fun m!4726847 () Bool)

(assert (=> b!4128607 m!4726847))

(declare-fun m!4726849 () Bool)

(assert (=> b!4128607 m!4726849))

(declare-fun m!4726851 () Bool)

(assert (=> b!4128607 m!4726851))

(declare-fun m!4726853 () Bool)

(assert (=> b!4128603 m!4726853))

(declare-fun m!4726855 () Bool)

(assert (=> b!4128601 m!4726855))

(declare-fun m!4726857 () Bool)

(assert (=> b!4128612 m!4726857))

(declare-fun m!4726859 () Bool)

(assert (=> b!4128599 m!4726859))

(declare-fun m!4726861 () Bool)

(assert (=> b!4128599 m!4726861))

(declare-fun m!4726863 () Bool)

(assert (=> b!4128592 m!4726863))

(declare-fun m!4726865 () Bool)

(assert (=> b!4128604 m!4726865))

(declare-fun m!4726867 () Bool)

(assert (=> b!4128606 m!4726867))

(declare-fun m!4726869 () Bool)

(assert (=> b!4128598 m!4726869))

(declare-fun m!4726871 () Bool)

(assert (=> b!4128598 m!4726871))

(declare-fun m!4726873 () Bool)

(assert (=> b!4128598 m!4726873))

(declare-fun m!4726875 () Bool)

(assert (=> b!4128598 m!4726875))

(declare-fun m!4726877 () Bool)

(assert (=> b!4128598 m!4726877))

(declare-fun m!4726879 () Bool)

(assert (=> b!4128598 m!4726879))

(declare-fun m!4726881 () Bool)

(assert (=> b!4128608 m!4726881))

(declare-fun m!4726883 () Bool)

(assert (=> b!4128608 m!4726883))

(check-sat (not b_next!117713) b_and!319831 (not b!4128588) (not b!4128608) (not b!4128607) (not b!4128604) b_and!319833 (not b!4128601) (not b_next!117709) (not b!4128592) (not b!4128594) (not b_next!117717) (not b!4128590) (not b!4128612) (not b!4128602) (not b!4128603) (not b_next!117715) b_and!319825 (not b!4128591) (not b!4128589) b_and!319829 (not b!4128600) (not b_next!117711) (not b!4128599) tp_is_empty!21357 (not b!4128611) (not b!4128605) (not b!4128597) (not b!4128595) (not b!4128598) b_and!319827 b_and!319835 (not b!4128606) (not b_next!117707))
(check-sat (not b_next!117715) b_and!319825 b_and!319829 (not b_next!117713) b_and!319831 (not b_next!117711) b_and!319833 (not b_next!117709) (not b_next!117707) (not b_next!117717) b_and!319827 b_and!319835)
