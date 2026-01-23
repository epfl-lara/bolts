; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393446 () Bool)

(assert start!393446)

(declare-fun b!4139731 () Bool)

(declare-fun b_free!117819 () Bool)

(declare-fun b_next!118523 () Bool)

(assert (=> b!4139731 (= b_free!117819 (not b_next!118523))))

(declare-fun tp!1261860 () Bool)

(declare-fun b_and!321401 () Bool)

(assert (=> b!4139731 (= tp!1261860 b_and!321401)))

(declare-fun b_free!117821 () Bool)

(declare-fun b_next!118525 () Bool)

(assert (=> b!4139731 (= b_free!117821 (not b_next!118525))))

(declare-fun tp!1261862 () Bool)

(declare-fun b_and!321403 () Bool)

(assert (=> b!4139731 (= tp!1261862 b_and!321403)))

(declare-fun b!4139725 () Bool)

(declare-fun b_free!117823 () Bool)

(declare-fun b_next!118527 () Bool)

(assert (=> b!4139725 (= b_free!117823 (not b_next!118527))))

(declare-fun tp!1261863 () Bool)

(declare-fun b_and!321405 () Bool)

(assert (=> b!4139725 (= tp!1261863 b_and!321405)))

(declare-fun b_free!117825 () Bool)

(declare-fun b_next!118529 () Bool)

(assert (=> b!4139725 (= b_free!117825 (not b_next!118529))))

(declare-fun tp!1261861 () Bool)

(declare-fun b_and!321407 () Bool)

(assert (=> b!4139725 (= tp!1261861 b_and!321407)))

(declare-fun b!4139724 () Bool)

(declare-fun b_free!117827 () Bool)

(declare-fun b_next!118531 () Bool)

(assert (=> b!4139724 (= b_free!117827 (not b_next!118531))))

(declare-fun tp!1261859 () Bool)

(declare-fun b_and!321409 () Bool)

(assert (=> b!4139724 (= tp!1261859 b_and!321409)))

(declare-fun b_free!117829 () Bool)

(declare-fun b_next!118533 () Bool)

(assert (=> b!4139724 (= b_free!117829 (not b_next!118533))))

(declare-fun tp!1261865 () Bool)

(declare-fun b_and!321411 () Bool)

(assert (=> b!4139724 (= tp!1261865 b_and!321411)))

(declare-fun tp!1261868 () Bool)

(declare-fun e!2568561 () Bool)

(declare-fun b!4139719 () Bool)

(declare-datatypes ((List!45008 0))(
  ( (Nil!44884) (Cons!44884 (h!50304 (_ BitVec 16)) (t!342287 List!45008)) )
))
(declare-datatypes ((TokenValue!7598 0))(
  ( (FloatLiteralValue!15196 (text!53631 List!45008)) (TokenValueExt!7597 (__x!27413 Int)) (Broken!37990 (value!230516 List!45008)) (Object!7721) (End!7598) (Def!7598) (Underscore!7598) (Match!7598) (Else!7598) (Error!7598) (Case!7598) (If!7598) (Extends!7598) (Abstract!7598) (Class!7598) (Val!7598) (DelimiterValue!15196 (del!7658 List!45008)) (KeywordValue!7604 (value!230517 List!45008)) (CommentValue!15196 (value!230518 List!45008)) (WhitespaceValue!15196 (value!230519 List!45008)) (IndentationValue!7598 (value!230520 List!45008)) (String!51739) (Int32!7598) (Broken!37991 (value!230521 List!45008)) (Boolean!7599) (Unit!64186) (OperatorValue!7601 (op!7658 List!45008)) (IdentifierValue!15196 (value!230522 List!45008)) (IdentifierValue!15197 (value!230523 List!45008)) (WhitespaceValue!15197 (value!230524 List!45008)) (True!15196) (False!15196) (Broken!37992 (value!230525 List!45008)) (Broken!37993 (value!230526 List!45008)) (True!15197) (RightBrace!7598) (RightBracket!7598) (Colon!7598) (Null!7598) (Comma!7598) (LeftBracket!7598) (False!15197) (LeftBrace!7598) (ImaginaryLiteralValue!7598 (text!53632 List!45008)) (StringLiteralValue!22794 (value!230527 List!45008)) (EOFValue!7598 (value!230528 List!45008)) (IdentValue!7598 (value!230529 List!45008)) (DelimiterValue!15197 (value!230530 List!45008)) (DedentValue!7598 (value!230531 List!45008)) (NewLineValue!7598 (value!230532 List!45008)) (IntegerValue!22794 (value!230533 (_ BitVec 32)) (text!53633 List!45008)) (IntegerValue!22795 (value!230534 Int) (text!53634 List!45008)) (Times!7598) (Or!7598) (Equal!7598) (Minus!7598) (Broken!37994 (value!230535 List!45008)) (And!7598) (Div!7598) (LessEqual!7598) (Mod!7598) (Concat!19871) (Not!7598) (Plus!7598) (SpaceValue!7598 (value!230536 List!45008)) (IntegerValue!22796 (value!230537 Int) (text!53635 List!45008)) (StringLiteralValue!22795 (text!53636 List!45008)) (FloatLiteralValue!15197 (text!53637 List!45008)) (BytesLiteralValue!7598 (value!230538 List!45008)) (CommentValue!15197 (value!230539 List!45008)) (StringLiteralValue!22796 (value!230540 List!45008)) (ErrorTokenValue!7598 (msg!7659 List!45008)) )
))
(declare-datatypes ((C!24732 0))(
  ( (C!24733 (val!14476 Int)) )
))
(declare-datatypes ((List!45009 0))(
  ( (Nil!44885) (Cons!44885 (h!50305 C!24732) (t!342288 List!45009)) )
))
(declare-datatypes ((IArray!27163 0))(
  ( (IArray!27164 (innerList!13639 List!45009)) )
))
(declare-datatypes ((Conc!13579 0))(
  ( (Node!13579 (left!33613 Conc!13579) (right!33943 Conc!13579) (csize!27388 Int) (cheight!13790 Int)) (Leaf!20978 (xs!16885 IArray!27163) (csize!27389 Int)) (Empty!13579) )
))
(declare-datatypes ((BalanceConc!26752 0))(
  ( (BalanceConc!26753 (c!709742 Conc!13579)) )
))
(declare-datatypes ((Regex!12273 0))(
  ( (ElementMatch!12273 (c!709743 C!24732)) (Concat!19872 (regOne!25058 Regex!12273) (regTwo!25058 Regex!12273)) (EmptyExpr!12273) (Star!12273 (reg!12602 Regex!12273)) (EmptyLang!12273) (Union!12273 (regOne!25059 Regex!12273) (regTwo!25059 Regex!12273)) )
))
(declare-datatypes ((String!51740 0))(
  ( (String!51741 (value!230541 String)) )
))
(declare-datatypes ((TokenValueInjection!14624 0))(
  ( (TokenValueInjection!14625 (toValue!10032 Int) (toChars!9891 Int)) )
))
(declare-datatypes ((Rule!14536 0))(
  ( (Rule!14537 (regex!7368 Regex!12273) (tag!8228 String!51740) (isSeparator!7368 Bool) (transformation!7368 TokenValueInjection!14624)) )
))
(declare-fun r!4008 () Rule!14536)

(declare-fun e!2568555 () Bool)

(declare-fun inv!59491 (String!51740) Bool)

(declare-fun inv!59493 (TokenValueInjection!14624) Bool)

(assert (=> b!4139719 (= e!2568555 (and tp!1261868 (inv!59491 (tag!8228 r!4008)) (inv!59493 (transformation!7368 r!4008)) e!2568561))))

(declare-fun b!4139720 () Bool)

(declare-fun e!2568566 () Bool)

(assert (=> b!4139720 (= e!2568566 false)))

(declare-fun b!4139721 () Bool)

(declare-fun e!2568565 () Bool)

(declare-fun e!2568558 () Bool)

(assert (=> b!4139721 (= e!2568565 e!2568558)))

(declare-fun res!1693411 () Bool)

(assert (=> b!4139721 (=> res!1693411 e!2568558)))

(declare-datatypes ((Token!13666 0))(
  ( (Token!13667 (value!230542 TokenValue!7598) (rule!10476 Rule!14536) (size!33242 Int) (originalCharacters!7864 List!45009)) )
))
(declare-datatypes ((tuple2!43274 0))(
  ( (tuple2!43275 (_1!24771 Token!13666) (_2!24771 List!45009)) )
))
(declare-datatypes ((Option!9674 0))(
  ( (None!9673) (Some!9673 (v!40309 tuple2!43274)) )
))
(declare-fun lt!1476224 () Option!9674)

(declare-fun isEmpty!26757 (Option!9674) Bool)

(assert (=> b!4139721 (= res!1693411 (isEmpty!26757 lt!1476224))))

(declare-datatypes ((LexerInterface!6957 0))(
  ( (LexerInterfaceExt!6954 (__x!27414 Int)) (Lexer!6955) )
))
(declare-fun thiss!25645 () LexerInterface!6957)

(declare-fun input!3238 () List!45009)

(declare-fun rBis!149 () Rule!14536)

(declare-fun maxPrefixOneRule!3086 (LexerInterface!6957 Rule!14536 List!45009) Option!9674)

(assert (=> b!4139721 (= lt!1476224 (maxPrefixOneRule!3086 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4139721 (not (= rBis!149 r!4008))))

(declare-datatypes ((List!45010 0))(
  ( (Nil!44886) (Cons!44886 (h!50306 Rule!14536) (t!342289 List!45010)) )
))
(declare-fun rules!3756 () List!45010)

(declare-datatypes ((Unit!64187 0))(
  ( (Unit!64188) )
))
(declare-fun lt!1476210 () Unit!64187)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!66 (LexerInterface!6957 List!45010 Rule!14536 Rule!14536) Unit!64187)

(assert (=> b!4139721 (= lt!1476210 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!66 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9048 (List!45010 Rule!14536) Bool)

(declare-fun tail!6537 (List!45010) List!45010)

(assert (=> b!4139721 (contains!9048 (tail!6537 rules!3756) r!4008)))

(declare-fun lt!1476223 () Unit!64187)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!72 (List!45010 Rule!14536 Rule!14536) Unit!64187)

(assert (=> b!4139721 (= lt!1476223 (lemmaGetIndexBiggerAndHeadEqThenTailContains!72 rules!3756 rBis!149 r!4008))))

(declare-fun b!4139722 () Bool)

(declare-fun e!2568554 () Bool)

(assert (=> b!4139722 (= e!2568554 (not e!2568565))))

(declare-fun res!1693409 () Bool)

(assert (=> b!4139722 (=> res!1693409 e!2568565)))

(get-info :version)

(assert (=> b!4139722 (= res!1693409 (or (not ((_ is Cons!44886) rules!3756)) (not (= (h!50306 rules!3756) rBis!149))))))

(declare-fun lt!1476215 () Unit!64187)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2214 (LexerInterface!6957 Rule!14536 List!45010) Unit!64187)

(assert (=> b!4139722 (= lt!1476215 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2214 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3174 (LexerInterface!6957 Rule!14536) Bool)

(assert (=> b!4139722 (ruleValid!3174 thiss!25645 rBis!149)))

(declare-fun lt!1476209 () Unit!64187)

(assert (=> b!4139722 (= lt!1476209 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2214 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4139723 () Bool)

(declare-fun e!2568557 () Bool)

(assert (=> b!4139723 (= e!2568557 true)))

(declare-fun lt!1476214 () Bool)

(declare-fun p!2912 () List!45009)

(declare-fun matchR!6102 (Regex!12273 List!45009) Bool)

(assert (=> b!4139723 (= lt!1476214 (matchR!6102 (regex!7368 rBis!149) p!2912))))

(assert (=> b!4139723 e!2568566))

(declare-fun res!1693413 () Bool)

(assert (=> b!4139723 (=> (not res!1693413) (not e!2568566))))

(declare-fun lt!1476220 () List!45009)

(declare-fun lt!1476219 () Int)

(declare-fun size!33243 (List!45009) Int)

(assert (=> b!4139723 (= res!1693413 (<= (size!33243 lt!1476220) lt!1476219))))

(declare-fun lt!1476221 () tuple2!43274)

(declare-fun lt!1476222 () Token!13666)

(declare-fun lt!1476211 () List!45009)

(declare-fun lt!1476217 () Unit!64187)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!10 (LexerInterface!6957 List!45010 List!45009 Token!13666 List!45009 List!45009 List!45009 List!45009 Rule!14536 Token!13666) Unit!64187)

(declare-fun getSuffix!2630 (List!45009 List!45009) List!45009)

(assert (=> b!4139723 (= lt!1476217 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!10 thiss!25645 rules!3756 p!2912 lt!1476222 input!3238 lt!1476211 lt!1476220 (getSuffix!2630 input!3238 lt!1476220) rBis!149 (_1!24771 lt!1476221)))))

(declare-fun lt!1476212 () BalanceConc!26752)

(declare-fun list!16439 (BalanceConc!26752) List!45009)

(assert (=> b!4139723 (= lt!1476220 (list!16439 lt!1476212))))

(declare-fun e!2568569 () Bool)

(assert (=> b!4139724 (= e!2568569 (and tp!1261859 tp!1261865))))

(assert (=> b!4139725 (= e!2568561 (and tp!1261863 tp!1261861))))

(declare-fun b!4139726 () Bool)

(declare-fun res!1693417 () Bool)

(assert (=> b!4139726 (=> (not res!1693417) (not e!2568554))))

(assert (=> b!4139726 (= res!1693417 (matchR!6102 (regex!7368 r!4008) p!2912))))

(declare-fun b!4139727 () Bool)

(declare-fun e!2568553 () Bool)

(assert (=> b!4139727 (= e!2568553 e!2568554)))

(declare-fun res!1693407 () Bool)

(assert (=> b!4139727 (=> (not res!1693407) (not e!2568554))))

(declare-fun maxPrefix!4147 (LexerInterface!6957 List!45010 List!45009) Option!9674)

(assert (=> b!4139727 (= res!1693407 (= (maxPrefix!4147 thiss!25645 rules!3756 input!3238) (Some!9673 (tuple2!43275 lt!1476222 lt!1476211))))))

(assert (=> b!4139727 (= lt!1476211 (getSuffix!2630 input!3238 p!2912))))

(declare-fun lt!1476216 () TokenValue!7598)

(assert (=> b!4139727 (= lt!1476222 (Token!13667 lt!1476216 r!4008 lt!1476219 p!2912))))

(assert (=> b!4139727 (= lt!1476219 (size!33243 p!2912))))

(declare-fun lt!1476218 () BalanceConc!26752)

(declare-fun apply!10441 (TokenValueInjection!14624 BalanceConc!26752) TokenValue!7598)

(assert (=> b!4139727 (= lt!1476216 (apply!10441 (transformation!7368 r!4008) lt!1476218))))

(declare-fun lt!1476213 () Unit!64187)

(declare-fun lemmaSemiInverse!2226 (TokenValueInjection!14624 BalanceConc!26752) Unit!64187)

(assert (=> b!4139727 (= lt!1476213 (lemmaSemiInverse!2226 (transformation!7368 r!4008) lt!1476218))))

(declare-fun seqFromList!5485 (List!45009) BalanceConc!26752)

(assert (=> b!4139727 (= lt!1476218 (seqFromList!5485 p!2912))))

(declare-fun b!4139728 () Bool)

(declare-fun res!1693414 () Bool)

(assert (=> b!4139728 (=> (not res!1693414) (not e!2568553))))

(declare-fun isEmpty!26758 (List!45010) Bool)

(assert (=> b!4139728 (= res!1693414 (not (isEmpty!26758 rules!3756)))))

(declare-fun b!4139729 () Bool)

(assert (=> b!4139729 (= e!2568558 e!2568557)))

(declare-fun res!1693416 () Bool)

(assert (=> b!4139729 (=> res!1693416 e!2568557)))

(declare-fun size!33244 (BalanceConc!26752) Int)

(assert (=> b!4139729 (= res!1693416 (<= (size!33244 lt!1476212) lt!1476219))))

(declare-fun charsOf!4967 (Token!13666) BalanceConc!26752)

(assert (=> b!4139729 (= lt!1476212 (charsOf!4967 (_1!24771 lt!1476221)))))

(declare-fun get!14647 (Option!9674) tuple2!43274)

(assert (=> b!4139729 (= lt!1476221 (get!14647 lt!1476224))))

(declare-fun b!4139730 () Bool)

(declare-fun res!1693410 () Bool)

(assert (=> b!4139730 (=> (not res!1693410) (not e!2568553))))

(assert (=> b!4139730 (= res!1693410 (contains!9048 rules!3756 rBis!149))))

(declare-fun e!2568562 () Bool)

(assert (=> b!4139731 (= e!2568562 (and tp!1261860 tp!1261862))))

(declare-fun b!4139732 () Bool)

(declare-fun res!1693408 () Bool)

(assert (=> b!4139732 (=> (not res!1693408) (not e!2568553))))

(declare-fun rulesInvariant!6254 (LexerInterface!6957 List!45010) Bool)

(assert (=> b!4139732 (= res!1693408 (rulesInvariant!6254 thiss!25645 rules!3756))))

(declare-fun b!4139733 () Bool)

(declare-fun tp!1261866 () Bool)

(declare-fun e!2568568 () Bool)

(assert (=> b!4139733 (= e!2568568 (and tp!1261866 (inv!59491 (tag!8228 (h!50306 rules!3756))) (inv!59493 (transformation!7368 (h!50306 rules!3756))) e!2568569))))

(declare-fun b!4139734 () Bool)

(declare-fun e!2568559 () Bool)

(declare-fun tp!1261867 () Bool)

(assert (=> b!4139734 (= e!2568559 (and e!2568568 tp!1261867))))

(declare-fun e!2568560 () Bool)

(declare-fun b!4139735 () Bool)

(declare-fun tp!1261857 () Bool)

(assert (=> b!4139735 (= e!2568560 (and tp!1261857 (inv!59491 (tag!8228 rBis!149)) (inv!59493 (transformation!7368 rBis!149)) e!2568562))))

(declare-fun b!4139736 () Bool)

(declare-fun res!1693412 () Bool)

(assert (=> b!4139736 (=> (not res!1693412) (not e!2568554))))

(assert (=> b!4139736 (= res!1693412 (ruleValid!3174 thiss!25645 r!4008))))

(declare-fun b!4139737 () Bool)

(declare-fun e!2568564 () Bool)

(declare-fun tp_is_empty!21469 () Bool)

(declare-fun tp!1261858 () Bool)

(assert (=> b!4139737 (= e!2568564 (and tp_is_empty!21469 tp!1261858))))

(declare-fun b!4139738 () Bool)

(declare-fun e!2568570 () Bool)

(declare-fun tp!1261864 () Bool)

(assert (=> b!4139738 (= e!2568570 (and tp_is_empty!21469 tp!1261864))))

(declare-fun b!4139739 () Bool)

(declare-fun res!1693405 () Bool)

(assert (=> b!4139739 (=> (not res!1693405) (not e!2568553))))

(declare-fun isEmpty!26759 (List!45009) Bool)

(assert (=> b!4139739 (= res!1693405 (not (isEmpty!26759 p!2912)))))

(declare-fun b!4139740 () Bool)

(declare-fun res!1693404 () Bool)

(assert (=> b!4139740 (=> (not res!1693404) (not e!2568554))))

(declare-fun getIndex!714 (List!45010 Rule!14536) Int)

(assert (=> b!4139740 (= res!1693404 (< (getIndex!714 rules!3756 rBis!149) (getIndex!714 rules!3756 r!4008)))))

(declare-fun b!4139741 () Bool)

(declare-fun res!1693415 () Bool)

(assert (=> b!4139741 (=> (not res!1693415) (not e!2568553))))

(declare-fun isPrefix!4303 (List!45009 List!45009) Bool)

(assert (=> b!4139741 (= res!1693415 (isPrefix!4303 p!2912 input!3238))))

(declare-fun res!1693418 () Bool)

(assert (=> start!393446 (=> (not res!1693418) (not e!2568553))))

(assert (=> start!393446 (= res!1693418 ((_ is Lexer!6955) thiss!25645))))

(assert (=> start!393446 e!2568553))

(assert (=> start!393446 e!2568559))

(assert (=> start!393446 e!2568570))

(assert (=> start!393446 true))

(assert (=> start!393446 e!2568555))

(assert (=> start!393446 e!2568564))

(assert (=> start!393446 e!2568560))

(declare-fun b!4139742 () Bool)

(declare-fun res!1693406 () Bool)

(assert (=> b!4139742 (=> (not res!1693406) (not e!2568553))))

(assert (=> b!4139742 (= res!1693406 (contains!9048 rules!3756 r!4008))))

(assert (= (and start!393446 res!1693418) b!4139741))

(assert (= (and b!4139741 res!1693415) b!4139728))

(assert (= (and b!4139728 res!1693414) b!4139732))

(assert (= (and b!4139732 res!1693408) b!4139742))

(assert (= (and b!4139742 res!1693406) b!4139730))

(assert (= (and b!4139730 res!1693410) b!4139739))

(assert (= (and b!4139739 res!1693405) b!4139727))

(assert (= (and b!4139727 res!1693407) b!4139726))

(assert (= (and b!4139726 res!1693417) b!4139740))

(assert (= (and b!4139740 res!1693404) b!4139736))

(assert (= (and b!4139736 res!1693412) b!4139722))

(assert (= (and b!4139722 (not res!1693409)) b!4139721))

(assert (= (and b!4139721 (not res!1693411)) b!4139729))

(assert (= (and b!4139729 (not res!1693416)) b!4139723))

(assert (= (and b!4139723 res!1693413) b!4139720))

(assert (= b!4139733 b!4139724))

(assert (= b!4139734 b!4139733))

(assert (= (and start!393446 ((_ is Cons!44886) rules!3756)) b!4139734))

(assert (= (and start!393446 ((_ is Cons!44885) p!2912)) b!4139738))

(assert (= b!4139719 b!4139725))

(assert (= start!393446 b!4139719))

(assert (= (and start!393446 ((_ is Cons!44885) input!3238)) b!4139737))

(assert (= b!4139735 b!4139731))

(assert (= start!393446 b!4139735))

(declare-fun m!4736147 () Bool)

(assert (=> b!4139727 m!4736147))

(declare-fun m!4736149 () Bool)

(assert (=> b!4139727 m!4736149))

(declare-fun m!4736151 () Bool)

(assert (=> b!4139727 m!4736151))

(declare-fun m!4736153 () Bool)

(assert (=> b!4139727 m!4736153))

(declare-fun m!4736155 () Bool)

(assert (=> b!4139727 m!4736155))

(declare-fun m!4736157 () Bool)

(assert (=> b!4139727 m!4736157))

(declare-fun m!4736159 () Bool)

(assert (=> b!4139742 m!4736159))

(declare-fun m!4736161 () Bool)

(assert (=> b!4139736 m!4736161))

(declare-fun m!4736163 () Bool)

(assert (=> b!4139735 m!4736163))

(declare-fun m!4736165 () Bool)

(assert (=> b!4139735 m!4736165))

(declare-fun m!4736167 () Bool)

(assert (=> b!4139723 m!4736167))

(declare-fun m!4736169 () Bool)

(assert (=> b!4139723 m!4736169))

(declare-fun m!4736171 () Bool)

(assert (=> b!4139723 m!4736171))

(assert (=> b!4139723 m!4736169))

(declare-fun m!4736173 () Bool)

(assert (=> b!4139723 m!4736173))

(declare-fun m!4736175 () Bool)

(assert (=> b!4139723 m!4736175))

(declare-fun m!4736177 () Bool)

(assert (=> b!4139722 m!4736177))

(declare-fun m!4736179 () Bool)

(assert (=> b!4139722 m!4736179))

(declare-fun m!4736181 () Bool)

(assert (=> b!4139722 m!4736181))

(declare-fun m!4736183 () Bool)

(assert (=> b!4139729 m!4736183))

(declare-fun m!4736185 () Bool)

(assert (=> b!4139729 m!4736185))

(declare-fun m!4736187 () Bool)

(assert (=> b!4139729 m!4736187))

(declare-fun m!4736189 () Bool)

(assert (=> b!4139721 m!4736189))

(declare-fun m!4736191 () Bool)

(assert (=> b!4139721 m!4736191))

(declare-fun m!4736193 () Bool)

(assert (=> b!4139721 m!4736193))

(assert (=> b!4139721 m!4736189))

(declare-fun m!4736195 () Bool)

(assert (=> b!4139721 m!4736195))

(declare-fun m!4736197 () Bool)

(assert (=> b!4139721 m!4736197))

(declare-fun m!4736199 () Bool)

(assert (=> b!4139721 m!4736199))

(declare-fun m!4736201 () Bool)

(assert (=> b!4139739 m!4736201))

(declare-fun m!4736203 () Bool)

(assert (=> b!4139728 m!4736203))

(declare-fun m!4736205 () Bool)

(assert (=> b!4139732 m!4736205))

(declare-fun m!4736207 () Bool)

(assert (=> b!4139740 m!4736207))

(declare-fun m!4736209 () Bool)

(assert (=> b!4139740 m!4736209))

(declare-fun m!4736211 () Bool)

(assert (=> b!4139719 m!4736211))

(declare-fun m!4736213 () Bool)

(assert (=> b!4139719 m!4736213))

(declare-fun m!4736215 () Bool)

(assert (=> b!4139730 m!4736215))

(declare-fun m!4736217 () Bool)

(assert (=> b!4139733 m!4736217))

(declare-fun m!4736219 () Bool)

(assert (=> b!4139733 m!4736219))

(declare-fun m!4736221 () Bool)

(assert (=> b!4139741 m!4736221))

(declare-fun m!4736223 () Bool)

(assert (=> b!4139726 m!4736223))

(check-sat (not b!4139735) (not b!4139736) (not b!4139737) (not b_next!118527) (not b!4139734) b_and!321411 b_and!321401 (not b_next!118523) (not b!4139728) (not b!4139740) (not b_next!118533) b_and!321407 (not b!4139721) (not b!4139741) tp_is_empty!21469 (not b!4139732) (not b!4139742) (not b!4139726) (not b!4139739) (not b!4139733) (not b_next!118525) (not b!4139723) b_and!321405 (not b!4139719) b_and!321409 (not b!4139729) (not b_next!118529) (not b!4139727) b_and!321403 (not b_next!118531) (not b!4139722) (not b!4139730) (not b!4139738))
(check-sat (not b_next!118527) b_and!321409 (not b_next!118529) b_and!321411 b_and!321401 (not b_next!118523) (not b_next!118533) b_and!321407 (not b_next!118525) b_and!321405 b_and!321403 (not b_next!118531))
