; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403434 () Bool)

(assert start!403434)

(declare-fun b!4220835 () Bool)

(declare-fun b_free!124003 () Bool)

(declare-fun b_next!124707 () Bool)

(assert (=> b!4220835 (= b_free!124003 (not b_next!124707))))

(declare-fun tp!1291534 () Bool)

(declare-fun b_and!333021 () Bool)

(assert (=> b!4220835 (= tp!1291534 b_and!333021)))

(declare-fun b_free!124005 () Bool)

(declare-fun b_next!124709 () Bool)

(assert (=> b!4220835 (= b_free!124005 (not b_next!124709))))

(declare-fun tp!1291536 () Bool)

(declare-fun b_and!333023 () Bool)

(assert (=> b!4220835 (= tp!1291536 b_and!333023)))

(declare-fun b!4220827 () Bool)

(declare-fun b_free!124007 () Bool)

(declare-fun b_next!124711 () Bool)

(assert (=> b!4220827 (= b_free!124007 (not b_next!124711))))

(declare-fun tp!1291540 () Bool)

(declare-fun b_and!333025 () Bool)

(assert (=> b!4220827 (= tp!1291540 b_and!333025)))

(declare-fun b_free!124009 () Bool)

(declare-fun b_next!124713 () Bool)

(assert (=> b!4220827 (= b_free!124009 (not b_next!124713))))

(declare-fun tp!1291530 () Bool)

(declare-fun b_and!333027 () Bool)

(assert (=> b!4220827 (= tp!1291530 b_and!333027)))

(declare-fun b!4220816 () Bool)

(declare-fun b_free!124011 () Bool)

(declare-fun b_next!124715 () Bool)

(assert (=> b!4220816 (= b_free!124011 (not b_next!124715))))

(declare-fun tp!1291535 () Bool)

(declare-fun b_and!333029 () Bool)

(assert (=> b!4220816 (= tp!1291535 b_and!333029)))

(declare-fun b_free!124013 () Bool)

(declare-fun b_next!124717 () Bool)

(assert (=> b!4220816 (= b_free!124013 (not b_next!124717))))

(declare-fun tp!1291544 () Bool)

(declare-fun b_and!333031 () Bool)

(assert (=> b!4220816 (= tp!1291544 b_and!333031)))

(declare-fun b!4220824 () Bool)

(declare-fun b_free!124015 () Bool)

(declare-fun b_next!124719 () Bool)

(assert (=> b!4220824 (= b_free!124015 (not b_next!124719))))

(declare-fun tp!1291532 () Bool)

(declare-fun b_and!333033 () Bool)

(assert (=> b!4220824 (= tp!1291532 b_and!333033)))

(declare-fun b_free!124017 () Bool)

(declare-fun b_next!124721 () Bool)

(assert (=> b!4220824 (= b_free!124017 (not b_next!124721))))

(declare-fun tp!1291539 () Bool)

(declare-fun b_and!333035 () Bool)

(assert (=> b!4220824 (= tp!1291539 b_and!333035)))

(declare-fun b!4220806 () Bool)

(declare-fun res!1734838 () Bool)

(declare-fun e!2620487 () Bool)

(assert (=> b!4220806 (=> res!1734838 e!2620487)))

(declare-datatypes ((C!25584 0))(
  ( (C!25585 (val!14954 Int)) )
))
(declare-datatypes ((List!46565 0))(
  ( (Nil!46441) (Cons!46441 (h!51861 C!25584) (t!348990 List!46565)) )
))
(declare-fun input!3517 () List!46565)

(declare-fun pBis!121 () List!46565)

(declare-fun suffixBis!41 () List!46565)

(declare-fun ++!11864 (List!46565 List!46565) List!46565)

(assert (=> b!4220806 (= res!1734838 (not (= (++!11864 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4220807 () Bool)

(declare-fun e!2620472 () Bool)

(declare-fun tp_is_empty!22357 () Bool)

(declare-fun tp!1291529 () Bool)

(assert (=> b!4220807 (= e!2620472 (and tp_is_empty!22357 tp!1291529))))

(declare-fun b!4220808 () Bool)

(declare-fun e!2620495 () Bool)

(declare-fun e!2620488 () Bool)

(assert (=> b!4220808 (= e!2620495 e!2620488)))

(declare-fun res!1734835 () Bool)

(assert (=> b!4220808 (=> (not res!1734835) (not e!2620488))))

(declare-datatypes ((LexerInterface!7385 0))(
  ( (LexerInterfaceExt!7382 (__x!28263 Int)) (Lexer!7383) )
))
(declare-fun thiss!26544 () LexerInterface!7385)

(declare-datatypes ((List!46566 0))(
  ( (Nil!46442) (Cons!46442 (h!51862 (_ BitVec 16)) (t!348991 List!46566)) )
))
(declare-datatypes ((TokenValue!8020 0))(
  ( (FloatLiteralValue!16040 (text!56585 List!46566)) (TokenValueExt!8019 (__x!28264 Int)) (Broken!40100 (value!242518 List!46566)) (Object!8143) (End!8020) (Def!8020) (Underscore!8020) (Match!8020) (Else!8020) (Error!8020) (Case!8020) (If!8020) (Extends!8020) (Abstract!8020) (Class!8020) (Val!8020) (DelimiterValue!16040 (del!8080 List!46566)) (KeywordValue!8026 (value!242519 List!46566)) (CommentValue!16040 (value!242520 List!46566)) (WhitespaceValue!16040 (value!242521 List!46566)) (IndentationValue!8020 (value!242522 List!46566)) (String!53969) (Int32!8020) (Broken!40101 (value!242523 List!46566)) (Boolean!8021) (Unit!65616) (OperatorValue!8023 (op!8080 List!46566)) (IdentifierValue!16040 (value!242524 List!46566)) (IdentifierValue!16041 (value!242525 List!46566)) (WhitespaceValue!16041 (value!242526 List!46566)) (True!16040) (False!16040) (Broken!40102 (value!242527 List!46566)) (Broken!40103 (value!242528 List!46566)) (True!16041) (RightBrace!8020) (RightBracket!8020) (Colon!8020) (Null!8020) (Comma!8020) (LeftBracket!8020) (False!16041) (LeftBrace!8020) (ImaginaryLiteralValue!8020 (text!56586 List!46566)) (StringLiteralValue!24060 (value!242529 List!46566)) (EOFValue!8020 (value!242530 List!46566)) (IdentValue!8020 (value!242531 List!46566)) (DelimiterValue!16041 (value!242532 List!46566)) (DedentValue!8020 (value!242533 List!46566)) (NewLineValue!8020 (value!242534 List!46566)) (IntegerValue!24060 (value!242535 (_ BitVec 32)) (text!56587 List!46566)) (IntegerValue!24061 (value!242536 Int) (text!56588 List!46566)) (Times!8020) (Or!8020) (Equal!8020) (Minus!8020) (Broken!40104 (value!242537 List!46566)) (And!8020) (Div!8020) (LessEqual!8020) (Mod!8020) (Concat!20715) (Not!8020) (Plus!8020) (SpaceValue!8020 (value!242538 List!46566)) (IntegerValue!24062 (value!242539 Int) (text!56589 List!46566)) (StringLiteralValue!24061 (text!56590 List!46566)) (FloatLiteralValue!16041 (text!56591 List!46566)) (BytesLiteralValue!8020 (value!242540 List!46566)) (CommentValue!16041 (value!242541 List!46566)) (StringLiteralValue!24062 (value!242542 List!46566)) (ErrorTokenValue!8020 (msg!8081 List!46566)) )
))
(declare-datatypes ((IArray!28007 0))(
  ( (IArray!28008 (innerList!14061 List!46565)) )
))
(declare-datatypes ((Regex!12695 0))(
  ( (ElementMatch!12695 (c!718262 C!25584)) (Concat!20716 (regOne!25902 Regex!12695) (regTwo!25902 Regex!12695)) (EmptyExpr!12695) (Star!12695 (reg!13024 Regex!12695)) (EmptyLang!12695) (Union!12695 (regOne!25903 Regex!12695) (regTwo!25903 Regex!12695)) )
))
(declare-datatypes ((String!53970 0))(
  ( (String!53971 (value!242543 String)) )
))
(declare-datatypes ((Conc!14001 0))(
  ( (Node!14001 (left!34539 Conc!14001) (right!34869 Conc!14001) (csize!28232 Int) (cheight!14212 Int)) (Leaf!21640 (xs!17307 IArray!28007) (csize!28233 Int)) (Empty!14001) )
))
(declare-datatypes ((BalanceConc!27596 0))(
  ( (BalanceConc!27597 (c!718263 Conc!14001)) )
))
(declare-datatypes ((TokenValueInjection!15468 0))(
  ( (TokenValueInjection!15469 (toValue!10514 Int) (toChars!10373 Int)) )
))
(declare-datatypes ((Rule!15380 0))(
  ( (Rule!15381 (regex!7790 Regex!12695) (tag!8654 String!53970) (isSeparator!7790 Bool) (transformation!7790 TokenValueInjection!15468)) )
))
(declare-datatypes ((List!46567 0))(
  ( (Nil!46443) (Cons!46443 (h!51863 Rule!15380) (t!348992 List!46567)) )
))
(declare-fun rules!3967 () List!46567)

(declare-datatypes ((Token!14282 0))(
  ( (Token!14283 (value!242544 TokenValue!8020) (rule!10924 Rule!15380) (size!34099 Int) (originalCharacters!8172 List!46565)) )
))
(declare-datatypes ((tuple2!44162 0))(
  ( (tuple2!44163 (_1!25215 Token!14282) (_2!25215 List!46565)) )
))
(declare-datatypes ((Option!9978 0))(
  ( (None!9977) (Some!9977 (v!40867 tuple2!44162)) )
))
(declare-fun lt!1501960 () Option!9978)

(declare-fun maxPrefix!4425 (LexerInterface!7385 List!46567 List!46565) Option!9978)

(assert (=> b!4220808 (= res!1734835 (= (maxPrefix!4425 thiss!26544 rules!3967 input!3517) lt!1501960))))

(declare-fun t!8364 () Token!14282)

(declare-fun suffix!1557 () List!46565)

(assert (=> b!4220808 (= lt!1501960 (Some!9977 (tuple2!44163 t!8364 suffix!1557)))))

(declare-fun tp!1291528 () Bool)

(declare-fun b!4220809 () Bool)

(declare-fun e!2620477 () Bool)

(declare-fun e!2620473 () Bool)

(declare-fun inv!61101 (String!53970) Bool)

(declare-fun inv!61104 (TokenValueInjection!15468) Bool)

(assert (=> b!4220809 (= e!2620477 (and tp!1291528 (inv!61101 (tag!8654 (rule!10924 t!8364))) (inv!61104 (transformation!7790 (rule!10924 t!8364))) e!2620473))))

(declare-fun b!4220810 () Bool)

(declare-fun res!1734831 () Bool)

(assert (=> b!4220810 (=> res!1734831 e!2620487)))

(declare-fun rBis!178 () Rule!15380)

(get-info :version)

(assert (=> b!4220810 (= res!1734831 (or (and ((_ is Cons!46443) rules!3967) ((_ is Nil!46443) (t!348992 rules!3967))) (not ((_ is Cons!46443) rules!3967)) (= (h!51863 rules!3967) rBis!178)))))

(declare-fun b!4220811 () Bool)

(declare-fun res!1734842 () Bool)

(assert (=> b!4220811 (=> (not res!1734842) (not e!2620495))))

(declare-fun p!3001 () List!46565)

(assert (=> b!4220811 (= res!1734842 (= (++!11864 p!3001 suffix!1557) input!3517))))

(declare-fun b!4220812 () Bool)

(declare-fun e!2620481 () Bool)

(declare-fun tp!1291538 () Bool)

(assert (=> b!4220812 (= e!2620481 (and tp_is_empty!22357 tp!1291538))))

(declare-fun b!4220813 () Bool)

(declare-fun res!1734839 () Bool)

(assert (=> b!4220813 (=> res!1734839 e!2620487)))

(declare-fun tBis!41 () Token!14282)

(assert (=> b!4220813 (= res!1734839 (not (= (rule!10924 tBis!41) rBis!178)))))

(declare-fun b!4220814 () Bool)

(declare-fun res!1734836 () Bool)

(assert (=> b!4220814 (=> res!1734836 e!2620487)))

(declare-fun maxPrefixOneRule!3380 (LexerInterface!7385 Rule!15380 List!46565) Option!9978)

(assert (=> b!4220814 (= res!1734836 (= (maxPrefixOneRule!3380 thiss!26544 (h!51863 rules!3967) input!3517) lt!1501960))))

(declare-fun b!4220815 () Bool)

(declare-fun res!1734841 () Bool)

(assert (=> b!4220815 (=> (not res!1734841) (not e!2620495))))

(declare-fun isPrefix!4649 (List!46565 List!46565) Bool)

(assert (=> b!4220815 (= res!1734841 (isPrefix!4649 p!3001 input!3517))))

(declare-fun e!2620482 () Bool)

(assert (=> b!4220816 (= e!2620482 (and tp!1291535 tp!1291544))))

(declare-fun tp!1291533 () Bool)

(declare-fun b!4220817 () Bool)

(declare-fun e!2620476 () Bool)

(declare-fun inv!21 (TokenValue!8020) Bool)

(assert (=> b!4220817 (= e!2620476 (and (inv!21 (value!242544 t!8364)) e!2620477 tp!1291533))))

(declare-fun b!4220818 () Bool)

(declare-fun e!2620474 () Bool)

(assert (=> b!4220818 (= e!2620487 e!2620474)))

(declare-fun res!1734832 () Bool)

(assert (=> b!4220818 (=> res!1734832 e!2620474)))

(declare-fun isEmpty!27513 (List!46567) Bool)

(assert (=> b!4220818 (= res!1734832 (isEmpty!27513 (t!348992 rules!3967)))))

(declare-fun rulesInvariant!6596 (LexerInterface!7385 List!46567) Bool)

(assert (=> b!4220818 (rulesInvariant!6596 thiss!26544 (t!348992 rules!3967))))

(declare-datatypes ((Unit!65617 0))(
  ( (Unit!65618) )
))
(declare-fun lt!1501962 () Unit!65617)

(declare-fun lemmaInvariantOnRulesThenOnTail!878 (LexerInterface!7385 Rule!15380 List!46567) Unit!65617)

(assert (=> b!4220818 (= lt!1501962 (lemmaInvariantOnRulesThenOnTail!878 thiss!26544 (h!51863 rules!3967) (t!348992 rules!3967)))))

(declare-fun b!4220819 () Bool)

(assert (=> b!4220819 (= e!2620488 (not e!2620487))))

(declare-fun res!1734837 () Bool)

(assert (=> b!4220819 (=> res!1734837 e!2620487)))

(assert (=> b!4220819 (= res!1734837 (not (= (maxPrefixOneRule!3380 thiss!26544 rBis!178 input!3517) (Some!9977 (tuple2!44163 tBis!41 suffixBis!41)))))))

(assert (=> b!4220819 (isPrefix!4649 input!3517 input!3517)))

(declare-fun lt!1501961 () Unit!65617)

(declare-fun lemmaIsPrefixRefl!3066 (List!46565 List!46565) Unit!65617)

(assert (=> b!4220819 (= lt!1501961 (lemmaIsPrefixRefl!3066 input!3517 input!3517))))

(declare-fun b!4220820 () Bool)

(declare-fun res!1734840 () Bool)

(assert (=> b!4220820 (=> res!1734840 e!2620487)))

(declare-fun list!16805 (BalanceConc!27596) List!46565)

(declare-fun charsOf!5213 (Token!14282) BalanceConc!27596)

(assert (=> b!4220820 (= res!1734840 (not (= (list!16805 (charsOf!5213 tBis!41)) pBis!121)))))

(declare-fun b!4220821 () Bool)

(declare-fun e!2620493 () Bool)

(declare-fun e!2620480 () Bool)

(declare-fun tp!1291531 () Bool)

(assert (=> b!4220821 (= e!2620493 (and e!2620480 tp!1291531))))

(declare-fun res!1734833 () Bool)

(assert (=> start!403434 (=> (not res!1734833) (not e!2620495))))

(assert (=> start!403434 (= res!1734833 ((_ is Lexer!7383) thiss!26544))))

(assert (=> start!403434 e!2620495))

(declare-fun e!2620494 () Bool)

(declare-fun inv!61105 (Token!14282) Bool)

(assert (=> start!403434 (and (inv!61105 tBis!41) e!2620494)))

(assert (=> start!403434 true))

(declare-fun e!2620483 () Bool)

(assert (=> start!403434 e!2620483))

(declare-fun e!2620490 () Bool)

(assert (=> start!403434 e!2620490))

(assert (=> start!403434 e!2620493))

(assert (=> start!403434 e!2620481))

(assert (=> start!403434 (and (inv!61105 t!8364) e!2620476)))

(declare-fun e!2620475 () Bool)

(assert (=> start!403434 e!2620475))

(assert (=> start!403434 e!2620472))

(declare-fun e!2620478 () Bool)

(assert (=> start!403434 e!2620478))

(declare-fun b!4220805 () Bool)

(declare-fun res!1734846 () Bool)

(assert (=> b!4220805 (=> (not res!1734846) (not e!2620495))))

(assert (=> b!4220805 (= res!1734846 (rulesInvariant!6596 thiss!26544 rules!3967))))

(declare-fun e!2620486 () Bool)

(declare-fun tp!1291526 () Bool)

(declare-fun b!4220822 () Bool)

(assert (=> b!4220822 (= e!2620494 (and (inv!21 (value!242544 tBis!41)) e!2620486 tp!1291526))))

(declare-fun tp!1291542 () Bool)

(declare-fun b!4220823 () Bool)

(assert (=> b!4220823 (= e!2620480 (and tp!1291542 (inv!61101 (tag!8654 (h!51863 rules!3967))) (inv!61104 (transformation!7790 (h!51863 rules!3967))) e!2620482))))

(declare-fun e!2620492 () Bool)

(assert (=> b!4220824 (= e!2620492 (and tp!1291532 tp!1291539))))

(declare-fun b!4220825 () Bool)

(declare-fun res!1734834 () Bool)

(assert (=> b!4220825 (=> (not res!1734834) (not e!2620495))))

(assert (=> b!4220825 (= res!1734834 (isPrefix!4649 pBis!121 input!3517))))

(declare-fun e!2620489 () Bool)

(declare-fun tp!1291537 () Bool)

(declare-fun b!4220826 () Bool)

(assert (=> b!4220826 (= e!2620486 (and tp!1291537 (inv!61101 (tag!8654 (rule!10924 tBis!41))) (inv!61104 (transformation!7790 (rule!10924 tBis!41))) e!2620489))))

(assert (=> b!4220827 (= e!2620473 (and tp!1291540 tp!1291530))))

(declare-fun b!4220828 () Bool)

(declare-fun res!1734845 () Bool)

(assert (=> b!4220828 (=> (not res!1734845) (not e!2620495))))

(declare-fun contains!9613 (List!46567 Rule!15380) Bool)

(assert (=> b!4220828 (= res!1734845 (contains!9613 rules!3967 rBis!178))))

(declare-fun b!4220829 () Bool)

(declare-fun tp!1291527 () Bool)

(assert (=> b!4220829 (= e!2620478 (and tp_is_empty!22357 tp!1291527))))

(declare-fun b!4220830 () Bool)

(declare-fun res!1734843 () Bool)

(assert (=> b!4220830 (=> (not res!1734843) (not e!2620495))))

(assert (=> b!4220830 (= res!1734843 (not (isEmpty!27513 rules!3967)))))

(declare-fun b!4220831 () Bool)

(declare-fun tp!1291541 () Bool)

(assert (=> b!4220831 (= e!2620490 (and tp_is_empty!22357 tp!1291541))))

(declare-fun b!4220832 () Bool)

(declare-fun tp!1291525 () Bool)

(assert (=> b!4220832 (= e!2620483 (and tp!1291525 (inv!61101 (tag!8654 rBis!178)) (inv!61104 (transformation!7790 rBis!178)) e!2620492))))

(declare-fun b!4220833 () Bool)

(assert (=> b!4220833 (= e!2620474 (contains!9613 (t!348992 rules!3967) rBis!178))))

(declare-fun b!4220834 () Bool)

(declare-fun tp!1291543 () Bool)

(assert (=> b!4220834 (= e!2620475 (and tp_is_empty!22357 tp!1291543))))

(assert (=> b!4220835 (= e!2620489 (and tp!1291534 tp!1291536))))

(declare-fun b!4220836 () Bool)

(declare-fun res!1734844 () Bool)

(assert (=> b!4220836 (=> (not res!1734844) (not e!2620488))))

(declare-fun ruleValid!3502 (LexerInterface!7385 Rule!15380) Bool)

(assert (=> b!4220836 (= res!1734844 (ruleValid!3502 thiss!26544 rBis!178))))

(assert (= (and start!403434 res!1734833) b!4220811))

(assert (= (and b!4220811 res!1734842) b!4220815))

(assert (= (and b!4220815 res!1734841) b!4220825))

(assert (= (and b!4220825 res!1734834) b!4220830))

(assert (= (and b!4220830 res!1734843) b!4220805))

(assert (= (and b!4220805 res!1734846) b!4220828))

(assert (= (and b!4220828 res!1734845) b!4220808))

(assert (= (and b!4220808 res!1734835) b!4220836))

(assert (= (and b!4220836 res!1734844) b!4220819))

(assert (= (and b!4220819 (not res!1734837)) b!4220813))

(assert (= (and b!4220813 (not res!1734839)) b!4220820))

(assert (= (and b!4220820 (not res!1734840)) b!4220806))

(assert (= (and b!4220806 (not res!1734838)) b!4220810))

(assert (= (and b!4220810 (not res!1734831)) b!4220814))

(assert (= (and b!4220814 (not res!1734836)) b!4220818))

(assert (= (and b!4220818 (not res!1734832)) b!4220833))

(assert (= b!4220826 b!4220835))

(assert (= b!4220822 b!4220826))

(assert (= start!403434 b!4220822))

(assert (= b!4220832 b!4220824))

(assert (= start!403434 b!4220832))

(assert (= (and start!403434 ((_ is Cons!46441) p!3001)) b!4220831))

(assert (= b!4220823 b!4220816))

(assert (= b!4220821 b!4220823))

(assert (= (and start!403434 ((_ is Cons!46443) rules!3967)) b!4220821))

(assert (= (and start!403434 ((_ is Cons!46441) input!3517)) b!4220812))

(assert (= b!4220809 b!4220827))

(assert (= b!4220817 b!4220809))

(assert (= start!403434 b!4220817))

(assert (= (and start!403434 ((_ is Cons!46441) pBis!121)) b!4220834))

(assert (= (and start!403434 ((_ is Cons!46441) suffix!1557)) b!4220807))

(assert (= (and start!403434 ((_ is Cons!46441) suffixBis!41)) b!4220829))

(declare-fun m!4809369 () Bool)

(assert (=> b!4220836 m!4809369))

(declare-fun m!4809371 () Bool)

(assert (=> b!4220811 m!4809371))

(declare-fun m!4809373 () Bool)

(assert (=> b!4220826 m!4809373))

(declare-fun m!4809375 () Bool)

(assert (=> b!4220826 m!4809375))

(declare-fun m!4809377 () Bool)

(assert (=> b!4220822 m!4809377))

(declare-fun m!4809379 () Bool)

(assert (=> b!4220828 m!4809379))

(declare-fun m!4809381 () Bool)

(assert (=> b!4220815 m!4809381))

(declare-fun m!4809383 () Bool)

(assert (=> b!4220823 m!4809383))

(declare-fun m!4809385 () Bool)

(assert (=> b!4220823 m!4809385))

(declare-fun m!4809387 () Bool)

(assert (=> b!4220805 m!4809387))

(declare-fun m!4809389 () Bool)

(assert (=> start!403434 m!4809389))

(declare-fun m!4809391 () Bool)

(assert (=> start!403434 m!4809391))

(declare-fun m!4809393 () Bool)

(assert (=> b!4220808 m!4809393))

(declare-fun m!4809395 () Bool)

(assert (=> b!4220832 m!4809395))

(declare-fun m!4809397 () Bool)

(assert (=> b!4220832 m!4809397))

(declare-fun m!4809399 () Bool)

(assert (=> b!4220830 m!4809399))

(declare-fun m!4809401 () Bool)

(assert (=> b!4220825 m!4809401))

(declare-fun m!4809403 () Bool)

(assert (=> b!4220820 m!4809403))

(assert (=> b!4220820 m!4809403))

(declare-fun m!4809405 () Bool)

(assert (=> b!4220820 m!4809405))

(declare-fun m!4809407 () Bool)

(assert (=> b!4220809 m!4809407))

(declare-fun m!4809409 () Bool)

(assert (=> b!4220809 m!4809409))

(declare-fun m!4809411 () Bool)

(assert (=> b!4220818 m!4809411))

(declare-fun m!4809413 () Bool)

(assert (=> b!4220818 m!4809413))

(declare-fun m!4809415 () Bool)

(assert (=> b!4220818 m!4809415))

(declare-fun m!4809417 () Bool)

(assert (=> b!4220819 m!4809417))

(declare-fun m!4809419 () Bool)

(assert (=> b!4220819 m!4809419))

(declare-fun m!4809421 () Bool)

(assert (=> b!4220819 m!4809421))

(declare-fun m!4809423 () Bool)

(assert (=> b!4220806 m!4809423))

(declare-fun m!4809425 () Bool)

(assert (=> b!4220833 m!4809425))

(declare-fun m!4809427 () Bool)

(assert (=> b!4220817 m!4809427))

(declare-fun m!4809429 () Bool)

(assert (=> b!4220814 m!4809429))

(check-sat (not b!4220817) (not b_next!124711) b_and!333031 (not b!4220820) (not b!4220819) (not b!4220825) (not b!4220815) (not b!4220823) b_and!333027 (not b!4220836) b_and!333033 (not b!4220812) (not start!403434) (not b!4220833) b_and!333035 (not b_next!124715) (not b!4220830) (not b!4220826) (not b_next!124719) (not b!4220805) (not b!4220808) b_and!333021 (not b!4220809) (not b!4220811) (not b!4220818) b_and!333023 (not b!4220834) (not b_next!124709) (not b!4220821) b_and!333025 (not b!4220807) (not b_next!124713) (not b!4220814) (not b!4220806) (not b_next!124717) (not b_next!124721) tp_is_empty!22357 (not b!4220832) (not b!4220831) (not b!4220828) (not b!4220822) (not b!4220829) (not b_next!124707) b_and!333029)
(check-sat (not b_next!124719) b_and!333021 (not b_next!124711) b_and!333023 (not b_next!124709) b_and!333031 (not b_next!124721) b_and!333027 b_and!333033 (not b_next!124715) b_and!333035 b_and!333025 (not b_next!124713) (not b_next!124717) (not b_next!124707) b_and!333029)
(get-model)

(declare-fun d!1243279 () Bool)

(assert (=> d!1243279 (= (inv!61101 (tag!8654 (rule!10924 tBis!41))) (= (mod (str.len (value!242543 (tag!8654 (rule!10924 tBis!41)))) 2) 0))))

(assert (=> b!4220826 d!1243279))

(declare-fun d!1243281 () Bool)

(declare-fun res!1734864 () Bool)

(declare-fun e!2620502 () Bool)

(assert (=> d!1243281 (=> (not res!1734864) (not e!2620502))))

(declare-fun semiInverseModEq!3385 (Int Int) Bool)

(assert (=> d!1243281 (= res!1734864 (semiInverseModEq!3385 (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (toValue!10514 (transformation!7790 (rule!10924 tBis!41)))))))

(assert (=> d!1243281 (= (inv!61104 (transformation!7790 (rule!10924 tBis!41))) e!2620502)))

(declare-fun b!4220842 () Bool)

(declare-fun equivClasses!3284 (Int Int) Bool)

(assert (=> b!4220842 (= e!2620502 (equivClasses!3284 (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (toValue!10514 (transformation!7790 (rule!10924 tBis!41)))))))

(assert (= (and d!1243281 res!1734864) b!4220842))

(declare-fun m!4809435 () Bool)

(assert (=> d!1243281 m!4809435))

(declare-fun m!4809437 () Bool)

(assert (=> b!4220842 m!4809437))

(assert (=> b!4220826 d!1243281))

(declare-fun d!1243283 () Bool)

(declare-fun res!1734867 () Bool)

(declare-fun e!2620505 () Bool)

(assert (=> d!1243283 (=> (not res!1734867) (not e!2620505))))

(declare-fun rulesValid!3054 (LexerInterface!7385 List!46567) Bool)

(assert (=> d!1243283 (= res!1734867 (rulesValid!3054 thiss!26544 rules!3967))))

(assert (=> d!1243283 (= (rulesInvariant!6596 thiss!26544 rules!3967) e!2620505)))

(declare-fun b!4220845 () Bool)

(declare-datatypes ((List!46569 0))(
  ( (Nil!46445) (Cons!46445 (h!51865 String!53970) (t!349034 List!46569)) )
))
(declare-fun noDuplicateTag!3215 (LexerInterface!7385 List!46567 List!46569) Bool)

(assert (=> b!4220845 (= e!2620505 (noDuplicateTag!3215 thiss!26544 rules!3967 Nil!46445))))

(assert (= (and d!1243283 res!1734867) b!4220845))

(declare-fun m!4809439 () Bool)

(assert (=> d!1243283 m!4809439))

(declare-fun m!4809441 () Bool)

(assert (=> b!4220845 m!4809441))

(assert (=> b!4220805 d!1243283))

(declare-fun b!4220855 () Bool)

(declare-fun e!2620511 () List!46565)

(assert (=> b!4220855 (= e!2620511 (Cons!46441 (h!51861 pBis!121) (++!11864 (t!348990 pBis!121) suffixBis!41)))))

(declare-fun b!4220854 () Bool)

(assert (=> b!4220854 (= e!2620511 suffixBis!41)))

(declare-fun d!1243285 () Bool)

(declare-fun e!2620510 () Bool)

(assert (=> d!1243285 e!2620510))

(declare-fun res!1734872 () Bool)

(assert (=> d!1243285 (=> (not res!1734872) (not e!2620510))))

(declare-fun lt!1501965 () List!46565)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7288 (List!46565) (InoxSet C!25584))

(assert (=> d!1243285 (= res!1734872 (= (content!7288 lt!1501965) ((_ map or) (content!7288 pBis!121) (content!7288 suffixBis!41))))))

(assert (=> d!1243285 (= lt!1501965 e!2620511)))

(declare-fun c!718266 () Bool)

(assert (=> d!1243285 (= c!718266 ((_ is Nil!46441) pBis!121))))

(assert (=> d!1243285 (= (++!11864 pBis!121 suffixBis!41) lt!1501965)))

(declare-fun b!4220857 () Bool)

(assert (=> b!4220857 (= e!2620510 (or (not (= suffixBis!41 Nil!46441)) (= lt!1501965 pBis!121)))))

(declare-fun b!4220856 () Bool)

(declare-fun res!1734873 () Bool)

(assert (=> b!4220856 (=> (not res!1734873) (not e!2620510))))

(declare-fun size!34102 (List!46565) Int)

(assert (=> b!4220856 (= res!1734873 (= (size!34102 lt!1501965) (+ (size!34102 pBis!121) (size!34102 suffixBis!41))))))

(assert (= (and d!1243285 c!718266) b!4220854))

(assert (= (and d!1243285 (not c!718266)) b!4220855))

(assert (= (and d!1243285 res!1734872) b!4220856))

(assert (= (and b!4220856 res!1734873) b!4220857))

(declare-fun m!4809443 () Bool)

(assert (=> b!4220855 m!4809443))

(declare-fun m!4809445 () Bool)

(assert (=> d!1243285 m!4809445))

(declare-fun m!4809447 () Bool)

(assert (=> d!1243285 m!4809447))

(declare-fun m!4809449 () Bool)

(assert (=> d!1243285 m!4809449))

(declare-fun m!4809451 () Bool)

(assert (=> b!4220856 m!4809451))

(declare-fun m!4809453 () Bool)

(assert (=> b!4220856 m!4809453))

(declare-fun m!4809455 () Bool)

(assert (=> b!4220856 m!4809455))

(assert (=> b!4220806 d!1243285))

(declare-fun b!4220868 () Bool)

(declare-fun e!2620518 () Bool)

(declare-fun e!2620520 () Bool)

(assert (=> b!4220868 (= e!2620518 e!2620520)))

(declare-fun c!718271 () Bool)

(assert (=> b!4220868 (= c!718271 ((_ is IntegerValue!24061) (value!242544 t!8364)))))

(declare-fun d!1243287 () Bool)

(declare-fun c!718272 () Bool)

(assert (=> d!1243287 (= c!718272 ((_ is IntegerValue!24060) (value!242544 t!8364)))))

(assert (=> d!1243287 (= (inv!21 (value!242544 t!8364)) e!2620518)))

(declare-fun b!4220869 () Bool)

(declare-fun e!2620519 () Bool)

(declare-fun inv!15 (TokenValue!8020) Bool)

(assert (=> b!4220869 (= e!2620519 (inv!15 (value!242544 t!8364)))))

(declare-fun b!4220870 () Bool)

(declare-fun inv!17 (TokenValue!8020) Bool)

(assert (=> b!4220870 (= e!2620520 (inv!17 (value!242544 t!8364)))))

(declare-fun b!4220871 () Bool)

(declare-fun res!1734876 () Bool)

(assert (=> b!4220871 (=> res!1734876 e!2620519)))

(assert (=> b!4220871 (= res!1734876 (not ((_ is IntegerValue!24062) (value!242544 t!8364))))))

(assert (=> b!4220871 (= e!2620520 e!2620519)))

(declare-fun b!4220872 () Bool)

(declare-fun inv!16 (TokenValue!8020) Bool)

(assert (=> b!4220872 (= e!2620518 (inv!16 (value!242544 t!8364)))))

(assert (= (and d!1243287 c!718272) b!4220872))

(assert (= (and d!1243287 (not c!718272)) b!4220868))

(assert (= (and b!4220868 c!718271) b!4220870))

(assert (= (and b!4220868 (not c!718271)) b!4220871))

(assert (= (and b!4220871 (not res!1734876)) b!4220869))

(declare-fun m!4809457 () Bool)

(assert (=> b!4220869 m!4809457))

(declare-fun m!4809459 () Bool)

(assert (=> b!4220870 m!4809459))

(declare-fun m!4809461 () Bool)

(assert (=> b!4220872 m!4809461))

(assert (=> b!4220817 d!1243287))

(declare-fun d!1243289 () Bool)

(declare-fun lt!1501968 () Bool)

(declare-fun content!7289 (List!46567) (InoxSet Rule!15380))

(assert (=> d!1243289 (= lt!1501968 (select (content!7289 rules!3967) rBis!178))))

(declare-fun e!2620525 () Bool)

(assert (=> d!1243289 (= lt!1501968 e!2620525)))

(declare-fun res!1734881 () Bool)

(assert (=> d!1243289 (=> (not res!1734881) (not e!2620525))))

(assert (=> d!1243289 (= res!1734881 ((_ is Cons!46443) rules!3967))))

(assert (=> d!1243289 (= (contains!9613 rules!3967 rBis!178) lt!1501968)))

(declare-fun b!4220877 () Bool)

(declare-fun e!2620526 () Bool)

(assert (=> b!4220877 (= e!2620525 e!2620526)))

(declare-fun res!1734882 () Bool)

(assert (=> b!4220877 (=> res!1734882 e!2620526)))

(assert (=> b!4220877 (= res!1734882 (= (h!51863 rules!3967) rBis!178))))

(declare-fun b!4220878 () Bool)

(assert (=> b!4220878 (= e!2620526 (contains!9613 (t!348992 rules!3967) rBis!178))))

(assert (= (and d!1243289 res!1734881) b!4220877))

(assert (= (and b!4220877 (not res!1734882)) b!4220878))

(declare-fun m!4809463 () Bool)

(assert (=> d!1243289 m!4809463))

(declare-fun m!4809465 () Bool)

(assert (=> d!1243289 m!4809465))

(assert (=> b!4220878 m!4809425))

(assert (=> b!4220828 d!1243289))

(declare-fun b!4221099 () Bool)

(declare-fun res!1735011 () Bool)

(declare-fun e!2620648 () Bool)

(assert (=> b!4221099 (=> (not res!1735011) (not e!2620648))))

(declare-fun lt!1502039 () Option!9978)

(declare-fun get!15115 (Option!9978) tuple2!44162)

(assert (=> b!4221099 (= res!1735011 (= (++!11864 (list!16805 (charsOf!5213 (_1!25215 (get!15115 lt!1502039)))) (_2!25215 (get!15115 lt!1502039))) input!3517))))

(declare-fun b!4221100 () Bool)

(declare-fun e!2620650 () Option!9978)

(assert (=> b!4221100 (= e!2620650 None!9977)))

(declare-fun b!4221101 () Bool)

(declare-fun res!1735008 () Bool)

(assert (=> b!4221101 (=> (not res!1735008) (not e!2620648))))

(assert (=> b!4221101 (= res!1735008 (= (rule!10924 (_1!25215 (get!15115 lt!1502039))) (h!51863 rules!3967)))))

(declare-fun d!1243291 () Bool)

(declare-fun e!2620649 () Bool)

(assert (=> d!1243291 e!2620649))

(declare-fun res!1735010 () Bool)

(assert (=> d!1243291 (=> res!1735010 e!2620649)))

(declare-fun isEmpty!27516 (Option!9978) Bool)

(assert (=> d!1243291 (= res!1735010 (isEmpty!27516 lt!1502039))))

(assert (=> d!1243291 (= lt!1502039 e!2620650)))

(declare-fun c!718294 () Bool)

(declare-datatypes ((tuple2!44166 0))(
  ( (tuple2!44167 (_1!25217 List!46565) (_2!25217 List!46565)) )
))
(declare-fun lt!1502036 () tuple2!44166)

(declare-fun isEmpty!27517 (List!46565) Bool)

(assert (=> d!1243291 (= c!718294 (isEmpty!27517 (_1!25217 lt!1502036)))))

(declare-fun findLongestMatch!1578 (Regex!12695 List!46565) tuple2!44166)

(assert (=> d!1243291 (= lt!1502036 (findLongestMatch!1578 (regex!7790 (h!51863 rules!3967)) input!3517))))

(assert (=> d!1243291 (ruleValid!3502 thiss!26544 (h!51863 rules!3967))))

(assert (=> d!1243291 (= (maxPrefixOneRule!3380 thiss!26544 (h!51863 rules!3967) input!3517) lt!1502039)))

(declare-fun b!4221102 () Bool)

(declare-fun res!1735009 () Bool)

(assert (=> b!4221102 (=> (not res!1735009) (not e!2620648))))

(assert (=> b!4221102 (= res!1735009 (< (size!34102 (_2!25215 (get!15115 lt!1502039))) (size!34102 input!3517)))))

(declare-fun b!4221103 () Bool)

(assert (=> b!4221103 (= e!2620649 e!2620648)))

(declare-fun res!1735012 () Bool)

(assert (=> b!4221103 (=> (not res!1735012) (not e!2620648))))

(declare-fun matchR!6384 (Regex!12695 List!46565) Bool)

(assert (=> b!4221103 (= res!1735012 (matchR!6384 (regex!7790 (h!51863 rules!3967)) (list!16805 (charsOf!5213 (_1!25215 (get!15115 lt!1502039))))))))

(declare-fun b!4221104 () Bool)

(assert (=> b!4221104 (= e!2620648 (= (size!34099 (_1!25215 (get!15115 lt!1502039))) (size!34102 (originalCharacters!8172 (_1!25215 (get!15115 lt!1502039))))))))

(declare-fun b!4221105 () Bool)

(declare-fun res!1735007 () Bool)

(assert (=> b!4221105 (=> (not res!1735007) (not e!2620648))))

(declare-fun apply!10705 (TokenValueInjection!15468 BalanceConc!27596) TokenValue!8020)

(declare-fun seqFromList!5765 (List!46565) BalanceConc!27596)

(assert (=> b!4221105 (= res!1735007 (= (value!242544 (_1!25215 (get!15115 lt!1502039))) (apply!10705 (transformation!7790 (rule!10924 (_1!25215 (get!15115 lt!1502039)))) (seqFromList!5765 (originalCharacters!8172 (_1!25215 (get!15115 lt!1502039)))))))))

(declare-fun b!4221106 () Bool)

(declare-fun e!2620651 () Bool)

(declare-fun findLongestMatchInner!1665 (Regex!12695 List!46565 Int List!46565 List!46565 Int) tuple2!44166)

(assert (=> b!4221106 (= e!2620651 (matchR!6384 (regex!7790 (h!51863 rules!3967)) (_1!25217 (findLongestMatchInner!1665 (regex!7790 (h!51863 rules!3967)) Nil!46441 (size!34102 Nil!46441) input!3517 input!3517 (size!34102 input!3517)))))))

(declare-fun b!4221107 () Bool)

(declare-fun size!34103 (BalanceConc!27596) Int)

(assert (=> b!4221107 (= e!2620650 (Some!9977 (tuple2!44163 (Token!14283 (apply!10705 (transformation!7790 (h!51863 rules!3967)) (seqFromList!5765 (_1!25217 lt!1502036))) (h!51863 rules!3967) (size!34103 (seqFromList!5765 (_1!25217 lt!1502036))) (_1!25217 lt!1502036)) (_2!25217 lt!1502036))))))

(declare-fun lt!1502038 () Unit!65617)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1638 (Regex!12695 List!46565) Unit!65617)

(assert (=> b!4221107 (= lt!1502038 (longestMatchIsAcceptedByMatchOrIsEmpty!1638 (regex!7790 (h!51863 rules!3967)) input!3517))))

(declare-fun res!1735013 () Bool)

(assert (=> b!4221107 (= res!1735013 (isEmpty!27517 (_1!25217 (findLongestMatchInner!1665 (regex!7790 (h!51863 rules!3967)) Nil!46441 (size!34102 Nil!46441) input!3517 input!3517 (size!34102 input!3517)))))))

(assert (=> b!4221107 (=> res!1735013 e!2620651)))

(assert (=> b!4221107 e!2620651))

(declare-fun lt!1502040 () Unit!65617)

(assert (=> b!4221107 (= lt!1502040 lt!1502038)))

(declare-fun lt!1502037 () Unit!65617)

(declare-fun lemmaSemiInverse!2506 (TokenValueInjection!15468 BalanceConc!27596) Unit!65617)

(assert (=> b!4221107 (= lt!1502037 (lemmaSemiInverse!2506 (transformation!7790 (h!51863 rules!3967)) (seqFromList!5765 (_1!25217 lt!1502036))))))

(assert (= (and d!1243291 c!718294) b!4221100))

(assert (= (and d!1243291 (not c!718294)) b!4221107))

(assert (= (and b!4221107 (not res!1735013)) b!4221106))

(assert (= (and d!1243291 (not res!1735010)) b!4221103))

(assert (= (and b!4221103 res!1735012) b!4221099))

(assert (= (and b!4221099 res!1735011) b!4221102))

(assert (= (and b!4221102 res!1735009) b!4221101))

(assert (= (and b!4221101 res!1735008) b!4221105))

(assert (= (and b!4221105 res!1735007) b!4221104))

(declare-fun m!4809709 () Bool)

(assert (=> b!4221102 m!4809709))

(declare-fun m!4809711 () Bool)

(assert (=> b!4221102 m!4809711))

(declare-fun m!4809713 () Bool)

(assert (=> b!4221102 m!4809713))

(assert (=> b!4221099 m!4809709))

(declare-fun m!4809715 () Bool)

(assert (=> b!4221099 m!4809715))

(assert (=> b!4221099 m!4809715))

(declare-fun m!4809717 () Bool)

(assert (=> b!4221099 m!4809717))

(assert (=> b!4221099 m!4809717))

(declare-fun m!4809719 () Bool)

(assert (=> b!4221099 m!4809719))

(assert (=> b!4221104 m!4809709))

(declare-fun m!4809721 () Bool)

(assert (=> b!4221104 m!4809721))

(declare-fun m!4809723 () Bool)

(assert (=> d!1243291 m!4809723))

(declare-fun m!4809725 () Bool)

(assert (=> d!1243291 m!4809725))

(declare-fun m!4809727 () Bool)

(assert (=> d!1243291 m!4809727))

(declare-fun m!4809729 () Bool)

(assert (=> d!1243291 m!4809729))

(assert (=> b!4221103 m!4809709))

(assert (=> b!4221103 m!4809715))

(assert (=> b!4221103 m!4809715))

(assert (=> b!4221103 m!4809717))

(assert (=> b!4221103 m!4809717))

(declare-fun m!4809731 () Bool)

(assert (=> b!4221103 m!4809731))

(declare-fun m!4809733 () Bool)

(assert (=> b!4221106 m!4809733))

(assert (=> b!4221106 m!4809713))

(assert (=> b!4221106 m!4809733))

(assert (=> b!4221106 m!4809713))

(declare-fun m!4809735 () Bool)

(assert (=> b!4221106 m!4809735))

(declare-fun m!4809737 () Bool)

(assert (=> b!4221106 m!4809737))

(assert (=> b!4221101 m!4809709))

(declare-fun m!4809739 () Bool)

(assert (=> b!4221107 m!4809739))

(assert (=> b!4221107 m!4809713))

(assert (=> b!4221107 m!4809733))

(assert (=> b!4221107 m!4809713))

(assert (=> b!4221107 m!4809735))

(declare-fun m!4809741 () Bool)

(assert (=> b!4221107 m!4809741))

(declare-fun m!4809743 () Bool)

(assert (=> b!4221107 m!4809743))

(assert (=> b!4221107 m!4809741))

(declare-fun m!4809745 () Bool)

(assert (=> b!4221107 m!4809745))

(assert (=> b!4221107 m!4809741))

(declare-fun m!4809747 () Bool)

(assert (=> b!4221107 m!4809747))

(assert (=> b!4221107 m!4809741))

(assert (=> b!4221107 m!4809733))

(declare-fun m!4809749 () Bool)

(assert (=> b!4221107 m!4809749))

(assert (=> b!4221105 m!4809709))

(declare-fun m!4809751 () Bool)

(assert (=> b!4221105 m!4809751))

(assert (=> b!4221105 m!4809751))

(declare-fun m!4809753 () Bool)

(assert (=> b!4221105 m!4809753))

(assert (=> b!4220814 d!1243291))

(declare-fun b!4221117 () Bool)

(declare-fun res!1735022 () Bool)

(declare-fun e!2620658 () Bool)

(assert (=> b!4221117 (=> (not res!1735022) (not e!2620658))))

(declare-fun head!8954 (List!46565) C!25584)

(assert (=> b!4221117 (= res!1735022 (= (head!8954 pBis!121) (head!8954 input!3517)))))

(declare-fun b!4221116 () Bool)

(declare-fun e!2620660 () Bool)

(assert (=> b!4221116 (= e!2620660 e!2620658)))

(declare-fun res!1735023 () Bool)

(assert (=> b!4221116 (=> (not res!1735023) (not e!2620658))))

(assert (=> b!4221116 (= res!1735023 (not ((_ is Nil!46441) input!3517)))))

(declare-fun d!1243351 () Bool)

(declare-fun e!2620659 () Bool)

(assert (=> d!1243351 e!2620659))

(declare-fun res!1735025 () Bool)

(assert (=> d!1243351 (=> res!1735025 e!2620659)))

(declare-fun lt!1502043 () Bool)

(assert (=> d!1243351 (= res!1735025 (not lt!1502043))))

(assert (=> d!1243351 (= lt!1502043 e!2620660)))

(declare-fun res!1735024 () Bool)

(assert (=> d!1243351 (=> res!1735024 e!2620660)))

(assert (=> d!1243351 (= res!1735024 ((_ is Nil!46441) pBis!121))))

(assert (=> d!1243351 (= (isPrefix!4649 pBis!121 input!3517) lt!1502043)))

(declare-fun b!4221118 () Bool)

(declare-fun tail!6801 (List!46565) List!46565)

(assert (=> b!4221118 (= e!2620658 (isPrefix!4649 (tail!6801 pBis!121) (tail!6801 input!3517)))))

(declare-fun b!4221119 () Bool)

(assert (=> b!4221119 (= e!2620659 (>= (size!34102 input!3517) (size!34102 pBis!121)))))

(assert (= (and d!1243351 (not res!1735024)) b!4221116))

(assert (= (and b!4221116 res!1735023) b!4221117))

(assert (= (and b!4221117 res!1735022) b!4221118))

(assert (= (and d!1243351 (not res!1735025)) b!4221119))

(declare-fun m!4809755 () Bool)

(assert (=> b!4221117 m!4809755))

(declare-fun m!4809757 () Bool)

(assert (=> b!4221117 m!4809757))

(declare-fun m!4809759 () Bool)

(assert (=> b!4221118 m!4809759))

(declare-fun m!4809761 () Bool)

(assert (=> b!4221118 m!4809761))

(assert (=> b!4221118 m!4809759))

(assert (=> b!4221118 m!4809761))

(declare-fun m!4809763 () Bool)

(assert (=> b!4221118 m!4809763))

(assert (=> b!4221119 m!4809713))

(assert (=> b!4221119 m!4809453))

(assert (=> b!4220825 d!1243351))

(declare-fun d!1243353 () Bool)

(declare-fun res!1735030 () Bool)

(declare-fun e!2620663 () Bool)

(assert (=> d!1243353 (=> (not res!1735030) (not e!2620663))))

(declare-fun validRegex!5762 (Regex!12695) Bool)

(assert (=> d!1243353 (= res!1735030 (validRegex!5762 (regex!7790 rBis!178)))))

(assert (=> d!1243353 (= (ruleValid!3502 thiss!26544 rBis!178) e!2620663)))

(declare-fun b!4221124 () Bool)

(declare-fun res!1735031 () Bool)

(assert (=> b!4221124 (=> (not res!1735031) (not e!2620663))))

(declare-fun nullable!4475 (Regex!12695) Bool)

(assert (=> b!4221124 (= res!1735031 (not (nullable!4475 (regex!7790 rBis!178))))))

(declare-fun b!4221125 () Bool)

(assert (=> b!4221125 (= e!2620663 (not (= (tag!8654 rBis!178) (String!53971 ""))))))

(assert (= (and d!1243353 res!1735030) b!4221124))

(assert (= (and b!4221124 res!1735031) b!4221125))

(declare-fun m!4809765 () Bool)

(assert (=> d!1243353 m!4809765))

(declare-fun m!4809767 () Bool)

(assert (=> b!4221124 m!4809767))

(assert (=> b!4220836 d!1243353))

(declare-fun b!4221127 () Bool)

(declare-fun res!1735032 () Bool)

(declare-fun e!2620664 () Bool)

(assert (=> b!4221127 (=> (not res!1735032) (not e!2620664))))

(assert (=> b!4221127 (= res!1735032 (= (head!8954 p!3001) (head!8954 input!3517)))))

(declare-fun b!4221126 () Bool)

(declare-fun e!2620666 () Bool)

(assert (=> b!4221126 (= e!2620666 e!2620664)))

(declare-fun res!1735033 () Bool)

(assert (=> b!4221126 (=> (not res!1735033) (not e!2620664))))

(assert (=> b!4221126 (= res!1735033 (not ((_ is Nil!46441) input!3517)))))

(declare-fun d!1243355 () Bool)

(declare-fun e!2620665 () Bool)

(assert (=> d!1243355 e!2620665))

(declare-fun res!1735035 () Bool)

(assert (=> d!1243355 (=> res!1735035 e!2620665)))

(declare-fun lt!1502044 () Bool)

(assert (=> d!1243355 (= res!1735035 (not lt!1502044))))

(assert (=> d!1243355 (= lt!1502044 e!2620666)))

(declare-fun res!1735034 () Bool)

(assert (=> d!1243355 (=> res!1735034 e!2620666)))

(assert (=> d!1243355 (= res!1735034 ((_ is Nil!46441) p!3001))))

(assert (=> d!1243355 (= (isPrefix!4649 p!3001 input!3517) lt!1502044)))

(declare-fun b!4221128 () Bool)

(assert (=> b!4221128 (= e!2620664 (isPrefix!4649 (tail!6801 p!3001) (tail!6801 input!3517)))))

(declare-fun b!4221129 () Bool)

(assert (=> b!4221129 (= e!2620665 (>= (size!34102 input!3517) (size!34102 p!3001)))))

(assert (= (and d!1243355 (not res!1735034)) b!4221126))

(assert (= (and b!4221126 res!1735033) b!4221127))

(assert (= (and b!4221127 res!1735032) b!4221128))

(assert (= (and d!1243355 (not res!1735035)) b!4221129))

(declare-fun m!4809769 () Bool)

(assert (=> b!4221127 m!4809769))

(assert (=> b!4221127 m!4809757))

(declare-fun m!4809771 () Bool)

(assert (=> b!4221128 m!4809771))

(assert (=> b!4221128 m!4809761))

(assert (=> b!4221128 m!4809771))

(assert (=> b!4221128 m!4809761))

(declare-fun m!4809773 () Bool)

(assert (=> b!4221128 m!4809773))

(assert (=> b!4221129 m!4809713))

(declare-fun m!4809775 () Bool)

(assert (=> b!4221129 m!4809775))

(assert (=> b!4220815 d!1243355))

(declare-fun d!1243357 () Bool)

(assert (=> d!1243357 (= (inv!61101 (tag!8654 rBis!178)) (= (mod (str.len (value!242543 (tag!8654 rBis!178))) 2) 0))))

(assert (=> b!4220832 d!1243357))

(declare-fun d!1243359 () Bool)

(declare-fun res!1735036 () Bool)

(declare-fun e!2620667 () Bool)

(assert (=> d!1243359 (=> (not res!1735036) (not e!2620667))))

(assert (=> d!1243359 (= res!1735036 (semiInverseModEq!3385 (toChars!10373 (transformation!7790 rBis!178)) (toValue!10514 (transformation!7790 rBis!178))))))

(assert (=> d!1243359 (= (inv!61104 (transformation!7790 rBis!178)) e!2620667)))

(declare-fun b!4221130 () Bool)

(assert (=> b!4221130 (= e!2620667 (equivClasses!3284 (toChars!10373 (transformation!7790 rBis!178)) (toValue!10514 (transformation!7790 rBis!178))))))

(assert (= (and d!1243359 res!1735036) b!4221130))

(declare-fun m!4809777 () Bool)

(assert (=> d!1243359 m!4809777))

(declare-fun m!4809779 () Bool)

(assert (=> b!4221130 m!4809779))

(assert (=> b!4220832 d!1243359))

(declare-fun b!4221132 () Bool)

(declare-fun e!2620669 () List!46565)

(assert (=> b!4221132 (= e!2620669 (Cons!46441 (h!51861 p!3001) (++!11864 (t!348990 p!3001) suffix!1557)))))

(declare-fun b!4221131 () Bool)

(assert (=> b!4221131 (= e!2620669 suffix!1557)))

(declare-fun d!1243361 () Bool)

(declare-fun e!2620668 () Bool)

(assert (=> d!1243361 e!2620668))

(declare-fun res!1735037 () Bool)

(assert (=> d!1243361 (=> (not res!1735037) (not e!2620668))))

(declare-fun lt!1502045 () List!46565)

(assert (=> d!1243361 (= res!1735037 (= (content!7288 lt!1502045) ((_ map or) (content!7288 p!3001) (content!7288 suffix!1557))))))

(assert (=> d!1243361 (= lt!1502045 e!2620669)))

(declare-fun c!718295 () Bool)

(assert (=> d!1243361 (= c!718295 ((_ is Nil!46441) p!3001))))

(assert (=> d!1243361 (= (++!11864 p!3001 suffix!1557) lt!1502045)))

(declare-fun b!4221134 () Bool)

(assert (=> b!4221134 (= e!2620668 (or (not (= suffix!1557 Nil!46441)) (= lt!1502045 p!3001)))))

(declare-fun b!4221133 () Bool)

(declare-fun res!1735038 () Bool)

(assert (=> b!4221133 (=> (not res!1735038) (not e!2620668))))

(assert (=> b!4221133 (= res!1735038 (= (size!34102 lt!1502045) (+ (size!34102 p!3001) (size!34102 suffix!1557))))))

(assert (= (and d!1243361 c!718295) b!4221131))

(assert (= (and d!1243361 (not c!718295)) b!4221132))

(assert (= (and d!1243361 res!1735037) b!4221133))

(assert (= (and b!4221133 res!1735038) b!4221134))

(declare-fun m!4809781 () Bool)

(assert (=> b!4221132 m!4809781))

(declare-fun m!4809783 () Bool)

(assert (=> d!1243361 m!4809783))

(declare-fun m!4809785 () Bool)

(assert (=> d!1243361 m!4809785))

(declare-fun m!4809787 () Bool)

(assert (=> d!1243361 m!4809787))

(declare-fun m!4809789 () Bool)

(assert (=> b!4221133 m!4809789))

(assert (=> b!4221133 m!4809775))

(declare-fun m!4809791 () Bool)

(assert (=> b!4221133 m!4809791))

(assert (=> b!4220811 d!1243361))

(declare-fun b!4221135 () Bool)

(declare-fun e!2620670 () Bool)

(declare-fun e!2620672 () Bool)

(assert (=> b!4221135 (= e!2620670 e!2620672)))

(declare-fun c!718296 () Bool)

(assert (=> b!4221135 (= c!718296 ((_ is IntegerValue!24061) (value!242544 tBis!41)))))

(declare-fun d!1243363 () Bool)

(declare-fun c!718297 () Bool)

(assert (=> d!1243363 (= c!718297 ((_ is IntegerValue!24060) (value!242544 tBis!41)))))

(assert (=> d!1243363 (= (inv!21 (value!242544 tBis!41)) e!2620670)))

(declare-fun b!4221136 () Bool)

(declare-fun e!2620671 () Bool)

(assert (=> b!4221136 (= e!2620671 (inv!15 (value!242544 tBis!41)))))

(declare-fun b!4221137 () Bool)

(assert (=> b!4221137 (= e!2620672 (inv!17 (value!242544 tBis!41)))))

(declare-fun b!4221138 () Bool)

(declare-fun res!1735039 () Bool)

(assert (=> b!4221138 (=> res!1735039 e!2620671)))

(assert (=> b!4221138 (= res!1735039 (not ((_ is IntegerValue!24062) (value!242544 tBis!41))))))

(assert (=> b!4221138 (= e!2620672 e!2620671)))

(declare-fun b!4221139 () Bool)

(assert (=> b!4221139 (= e!2620670 (inv!16 (value!242544 tBis!41)))))

(assert (= (and d!1243363 c!718297) b!4221139))

(assert (= (and d!1243363 (not c!718297)) b!4221135))

(assert (= (and b!4221135 c!718296) b!4221137))

(assert (= (and b!4221135 (not c!718296)) b!4221138))

(assert (= (and b!4221138 (not res!1735039)) b!4221136))

(declare-fun m!4809793 () Bool)

(assert (=> b!4221136 m!4809793))

(declare-fun m!4809795 () Bool)

(assert (=> b!4221137 m!4809795))

(declare-fun m!4809797 () Bool)

(assert (=> b!4221139 m!4809797))

(assert (=> b!4220822 d!1243363))

(declare-fun d!1243365 () Bool)

(declare-fun lt!1502046 () Bool)

(assert (=> d!1243365 (= lt!1502046 (select (content!7289 (t!348992 rules!3967)) rBis!178))))

(declare-fun e!2620673 () Bool)

(assert (=> d!1243365 (= lt!1502046 e!2620673)))

(declare-fun res!1735040 () Bool)

(assert (=> d!1243365 (=> (not res!1735040) (not e!2620673))))

(assert (=> d!1243365 (= res!1735040 ((_ is Cons!46443) (t!348992 rules!3967)))))

(assert (=> d!1243365 (= (contains!9613 (t!348992 rules!3967) rBis!178) lt!1502046)))

(declare-fun b!4221140 () Bool)

(declare-fun e!2620674 () Bool)

(assert (=> b!4221140 (= e!2620673 e!2620674)))

(declare-fun res!1735041 () Bool)

(assert (=> b!4221140 (=> res!1735041 e!2620674)))

(assert (=> b!4221140 (= res!1735041 (= (h!51863 (t!348992 rules!3967)) rBis!178))))

(declare-fun b!4221141 () Bool)

(assert (=> b!4221141 (= e!2620674 (contains!9613 (t!348992 (t!348992 rules!3967)) rBis!178))))

(assert (= (and d!1243365 res!1735040) b!4221140))

(assert (= (and b!4221140 (not res!1735041)) b!4221141))

(declare-fun m!4809799 () Bool)

(assert (=> d!1243365 m!4809799))

(declare-fun m!4809801 () Bool)

(assert (=> d!1243365 m!4809801))

(declare-fun m!4809803 () Bool)

(assert (=> b!4221141 m!4809803))

(assert (=> b!4220833 d!1243365))

(declare-fun d!1243367 () Bool)

(assert (=> d!1243367 (= (inv!61101 (tag!8654 (h!51863 rules!3967))) (= (mod (str.len (value!242543 (tag!8654 (h!51863 rules!3967)))) 2) 0))))

(assert (=> b!4220823 d!1243367))

(declare-fun d!1243369 () Bool)

(declare-fun res!1735042 () Bool)

(declare-fun e!2620675 () Bool)

(assert (=> d!1243369 (=> (not res!1735042) (not e!2620675))))

(assert (=> d!1243369 (= res!1735042 (semiInverseModEq!3385 (toChars!10373 (transformation!7790 (h!51863 rules!3967))) (toValue!10514 (transformation!7790 (h!51863 rules!3967)))))))

(assert (=> d!1243369 (= (inv!61104 (transformation!7790 (h!51863 rules!3967))) e!2620675)))

(declare-fun b!4221142 () Bool)

(assert (=> b!4221142 (= e!2620675 (equivClasses!3284 (toChars!10373 (transformation!7790 (h!51863 rules!3967))) (toValue!10514 (transformation!7790 (h!51863 rules!3967)))))))

(assert (= (and d!1243369 res!1735042) b!4221142))

(declare-fun m!4809805 () Bool)

(assert (=> d!1243369 m!4809805))

(declare-fun m!4809807 () Bool)

(assert (=> b!4221142 m!4809807))

(assert (=> b!4220823 d!1243369))

(declare-fun d!1243371 () Bool)

(assert (=> d!1243371 (= (isEmpty!27513 (t!348992 rules!3967)) ((_ is Nil!46443) (t!348992 rules!3967)))))

(assert (=> b!4220818 d!1243371))

(declare-fun d!1243373 () Bool)

(declare-fun res!1735043 () Bool)

(declare-fun e!2620676 () Bool)

(assert (=> d!1243373 (=> (not res!1735043) (not e!2620676))))

(assert (=> d!1243373 (= res!1735043 (rulesValid!3054 thiss!26544 (t!348992 rules!3967)))))

(assert (=> d!1243373 (= (rulesInvariant!6596 thiss!26544 (t!348992 rules!3967)) e!2620676)))

(declare-fun b!4221143 () Bool)

(assert (=> b!4221143 (= e!2620676 (noDuplicateTag!3215 thiss!26544 (t!348992 rules!3967) Nil!46445))))

(assert (= (and d!1243373 res!1735043) b!4221143))

(declare-fun m!4809809 () Bool)

(assert (=> d!1243373 m!4809809))

(declare-fun m!4809811 () Bool)

(assert (=> b!4221143 m!4809811))

(assert (=> b!4220818 d!1243373))

(declare-fun d!1243375 () Bool)

(assert (=> d!1243375 (rulesInvariant!6596 thiss!26544 (t!348992 rules!3967))))

(declare-fun lt!1502049 () Unit!65617)

(declare-fun choose!25864 (LexerInterface!7385 Rule!15380 List!46567) Unit!65617)

(assert (=> d!1243375 (= lt!1502049 (choose!25864 thiss!26544 (h!51863 rules!3967) (t!348992 rules!3967)))))

(assert (=> d!1243375 (rulesInvariant!6596 thiss!26544 (Cons!46443 (h!51863 rules!3967) (t!348992 rules!3967)))))

(assert (=> d!1243375 (= (lemmaInvariantOnRulesThenOnTail!878 thiss!26544 (h!51863 rules!3967) (t!348992 rules!3967)) lt!1502049)))

(declare-fun bs!597737 () Bool)

(assert (= bs!597737 d!1243375))

(assert (=> bs!597737 m!4809413))

(declare-fun m!4809813 () Bool)

(assert (=> bs!597737 m!4809813))

(declare-fun m!4809815 () Bool)

(assert (=> bs!597737 m!4809815))

(assert (=> b!4220818 d!1243375))

(declare-fun b!4221162 () Bool)

(declare-fun e!2620685 () Option!9978)

(declare-fun lt!1502062 () Option!9978)

(declare-fun lt!1502064 () Option!9978)

(assert (=> b!4221162 (= e!2620685 (ite (and ((_ is None!9977) lt!1502062) ((_ is None!9977) lt!1502064)) None!9977 (ite ((_ is None!9977) lt!1502064) lt!1502062 (ite ((_ is None!9977) lt!1502062) lt!1502064 (ite (>= (size!34099 (_1!25215 (v!40867 lt!1502062))) (size!34099 (_1!25215 (v!40867 lt!1502064)))) lt!1502062 lt!1502064)))))))

(declare-fun call!293150 () Option!9978)

(assert (=> b!4221162 (= lt!1502062 call!293150)))

(assert (=> b!4221162 (= lt!1502064 (maxPrefix!4425 thiss!26544 (t!348992 rules!3967) input!3517))))

(declare-fun b!4221163 () Bool)

(declare-fun res!1735059 () Bool)

(declare-fun e!2620684 () Bool)

(assert (=> b!4221163 (=> (not res!1735059) (not e!2620684))))

(declare-fun lt!1502063 () Option!9978)

(assert (=> b!4221163 (= res!1735059 (= (value!242544 (_1!25215 (get!15115 lt!1502063))) (apply!10705 (transformation!7790 (rule!10924 (_1!25215 (get!15115 lt!1502063)))) (seqFromList!5765 (originalCharacters!8172 (_1!25215 (get!15115 lt!1502063)))))))))

(declare-fun b!4221164 () Bool)

(declare-fun res!1735061 () Bool)

(assert (=> b!4221164 (=> (not res!1735061) (not e!2620684))))

(assert (=> b!4221164 (= res!1735061 (< (size!34102 (_2!25215 (get!15115 lt!1502063))) (size!34102 input!3517)))))

(declare-fun b!4221165 () Bool)

(declare-fun res!1735058 () Bool)

(assert (=> b!4221165 (=> (not res!1735058) (not e!2620684))))

(assert (=> b!4221165 (= res!1735058 (= (list!16805 (charsOf!5213 (_1!25215 (get!15115 lt!1502063)))) (originalCharacters!8172 (_1!25215 (get!15115 lt!1502063)))))))

(declare-fun b!4221166 () Bool)

(assert (=> b!4221166 (= e!2620685 call!293150)))

(declare-fun b!4221167 () Bool)

(declare-fun res!1735062 () Bool)

(assert (=> b!4221167 (=> (not res!1735062) (not e!2620684))))

(assert (=> b!4221167 (= res!1735062 (= (++!11864 (list!16805 (charsOf!5213 (_1!25215 (get!15115 lt!1502063)))) (_2!25215 (get!15115 lt!1502063))) input!3517))))

(declare-fun d!1243377 () Bool)

(declare-fun e!2620683 () Bool)

(assert (=> d!1243377 e!2620683))

(declare-fun res!1735064 () Bool)

(assert (=> d!1243377 (=> res!1735064 e!2620683)))

(assert (=> d!1243377 (= res!1735064 (isEmpty!27516 lt!1502063))))

(assert (=> d!1243377 (= lt!1502063 e!2620685)))

(declare-fun c!718300 () Bool)

(assert (=> d!1243377 (= c!718300 (and ((_ is Cons!46443) rules!3967) ((_ is Nil!46443) (t!348992 rules!3967))))))

(declare-fun lt!1502060 () Unit!65617)

(declare-fun lt!1502061 () Unit!65617)

(assert (=> d!1243377 (= lt!1502060 lt!1502061)))

(assert (=> d!1243377 (isPrefix!4649 input!3517 input!3517)))

(assert (=> d!1243377 (= lt!1502061 (lemmaIsPrefixRefl!3066 input!3517 input!3517))))

(declare-fun rulesValidInductive!2896 (LexerInterface!7385 List!46567) Bool)

(assert (=> d!1243377 (rulesValidInductive!2896 thiss!26544 rules!3967)))

(assert (=> d!1243377 (= (maxPrefix!4425 thiss!26544 rules!3967 input!3517) lt!1502063)))

(declare-fun bm!293145 () Bool)

(assert (=> bm!293145 (= call!293150 (maxPrefixOneRule!3380 thiss!26544 (h!51863 rules!3967) input!3517))))

(declare-fun b!4221168 () Bool)

(assert (=> b!4221168 (= e!2620684 (contains!9613 rules!3967 (rule!10924 (_1!25215 (get!15115 lt!1502063)))))))

(declare-fun b!4221169 () Bool)

(assert (=> b!4221169 (= e!2620683 e!2620684)))

(declare-fun res!1735063 () Bool)

(assert (=> b!4221169 (=> (not res!1735063) (not e!2620684))))

(declare-fun isDefined!7406 (Option!9978) Bool)

(assert (=> b!4221169 (= res!1735063 (isDefined!7406 lt!1502063))))

(declare-fun b!4221170 () Bool)

(declare-fun res!1735060 () Bool)

(assert (=> b!4221170 (=> (not res!1735060) (not e!2620684))))

(assert (=> b!4221170 (= res!1735060 (matchR!6384 (regex!7790 (rule!10924 (_1!25215 (get!15115 lt!1502063)))) (list!16805 (charsOf!5213 (_1!25215 (get!15115 lt!1502063))))))))

(assert (= (and d!1243377 c!718300) b!4221166))

(assert (= (and d!1243377 (not c!718300)) b!4221162))

(assert (= (or b!4221166 b!4221162) bm!293145))

(assert (= (and d!1243377 (not res!1735064)) b!4221169))

(assert (= (and b!4221169 res!1735063) b!4221165))

(assert (= (and b!4221165 res!1735058) b!4221164))

(assert (= (and b!4221164 res!1735061) b!4221167))

(assert (= (and b!4221167 res!1735062) b!4221163))

(assert (= (and b!4221163 res!1735059) b!4221170))

(assert (= (and b!4221170 res!1735060) b!4221168))

(assert (=> bm!293145 m!4809429))

(declare-fun m!4809817 () Bool)

(assert (=> b!4221168 m!4809817))

(declare-fun m!4809819 () Bool)

(assert (=> b!4221168 m!4809819))

(assert (=> b!4221170 m!4809817))

(declare-fun m!4809821 () Bool)

(assert (=> b!4221170 m!4809821))

(assert (=> b!4221170 m!4809821))

(declare-fun m!4809823 () Bool)

(assert (=> b!4221170 m!4809823))

(assert (=> b!4221170 m!4809823))

(declare-fun m!4809825 () Bool)

(assert (=> b!4221170 m!4809825))

(assert (=> b!4221163 m!4809817))

(declare-fun m!4809827 () Bool)

(assert (=> b!4221163 m!4809827))

(assert (=> b!4221163 m!4809827))

(declare-fun m!4809829 () Bool)

(assert (=> b!4221163 m!4809829))

(declare-fun m!4809831 () Bool)

(assert (=> b!4221169 m!4809831))

(declare-fun m!4809833 () Bool)

(assert (=> b!4221162 m!4809833))

(assert (=> b!4221167 m!4809817))

(assert (=> b!4221167 m!4809821))

(assert (=> b!4221167 m!4809821))

(assert (=> b!4221167 m!4809823))

(assert (=> b!4221167 m!4809823))

(declare-fun m!4809835 () Bool)

(assert (=> b!4221167 m!4809835))

(assert (=> b!4221164 m!4809817))

(declare-fun m!4809837 () Bool)

(assert (=> b!4221164 m!4809837))

(assert (=> b!4221164 m!4809713))

(assert (=> b!4221165 m!4809817))

(assert (=> b!4221165 m!4809821))

(assert (=> b!4221165 m!4809821))

(assert (=> b!4221165 m!4809823))

(declare-fun m!4809839 () Bool)

(assert (=> d!1243377 m!4809839))

(assert (=> d!1243377 m!4809419))

(assert (=> d!1243377 m!4809421))

(declare-fun m!4809841 () Bool)

(assert (=> d!1243377 m!4809841))

(assert (=> b!4220808 d!1243377))

(declare-fun b!4221171 () Bool)

(declare-fun res!1735069 () Bool)

(declare-fun e!2620686 () Bool)

(assert (=> b!4221171 (=> (not res!1735069) (not e!2620686))))

(declare-fun lt!1502068 () Option!9978)

(assert (=> b!4221171 (= res!1735069 (= (++!11864 (list!16805 (charsOf!5213 (_1!25215 (get!15115 lt!1502068)))) (_2!25215 (get!15115 lt!1502068))) input!3517))))

(declare-fun b!4221172 () Bool)

(declare-fun e!2620688 () Option!9978)

(assert (=> b!4221172 (= e!2620688 None!9977)))

(declare-fun b!4221173 () Bool)

(declare-fun res!1735066 () Bool)

(assert (=> b!4221173 (=> (not res!1735066) (not e!2620686))))

(assert (=> b!4221173 (= res!1735066 (= (rule!10924 (_1!25215 (get!15115 lt!1502068))) rBis!178))))

(declare-fun d!1243379 () Bool)

(declare-fun e!2620687 () Bool)

(assert (=> d!1243379 e!2620687))

(declare-fun res!1735068 () Bool)

(assert (=> d!1243379 (=> res!1735068 e!2620687)))

(assert (=> d!1243379 (= res!1735068 (isEmpty!27516 lt!1502068))))

(assert (=> d!1243379 (= lt!1502068 e!2620688)))

(declare-fun c!718301 () Bool)

(declare-fun lt!1502065 () tuple2!44166)

(assert (=> d!1243379 (= c!718301 (isEmpty!27517 (_1!25217 lt!1502065)))))

(assert (=> d!1243379 (= lt!1502065 (findLongestMatch!1578 (regex!7790 rBis!178) input!3517))))

(assert (=> d!1243379 (ruleValid!3502 thiss!26544 rBis!178)))

(assert (=> d!1243379 (= (maxPrefixOneRule!3380 thiss!26544 rBis!178 input!3517) lt!1502068)))

(declare-fun b!4221174 () Bool)

(declare-fun res!1735067 () Bool)

(assert (=> b!4221174 (=> (not res!1735067) (not e!2620686))))

(assert (=> b!4221174 (= res!1735067 (< (size!34102 (_2!25215 (get!15115 lt!1502068))) (size!34102 input!3517)))))

(declare-fun b!4221175 () Bool)

(assert (=> b!4221175 (= e!2620687 e!2620686)))

(declare-fun res!1735070 () Bool)

(assert (=> b!4221175 (=> (not res!1735070) (not e!2620686))))

(assert (=> b!4221175 (= res!1735070 (matchR!6384 (regex!7790 rBis!178) (list!16805 (charsOf!5213 (_1!25215 (get!15115 lt!1502068))))))))

(declare-fun b!4221176 () Bool)

(assert (=> b!4221176 (= e!2620686 (= (size!34099 (_1!25215 (get!15115 lt!1502068))) (size!34102 (originalCharacters!8172 (_1!25215 (get!15115 lt!1502068))))))))

(declare-fun b!4221177 () Bool)

(declare-fun res!1735065 () Bool)

(assert (=> b!4221177 (=> (not res!1735065) (not e!2620686))))

(assert (=> b!4221177 (= res!1735065 (= (value!242544 (_1!25215 (get!15115 lt!1502068))) (apply!10705 (transformation!7790 (rule!10924 (_1!25215 (get!15115 lt!1502068)))) (seqFromList!5765 (originalCharacters!8172 (_1!25215 (get!15115 lt!1502068)))))))))

(declare-fun b!4221178 () Bool)

(declare-fun e!2620689 () Bool)

(assert (=> b!4221178 (= e!2620689 (matchR!6384 (regex!7790 rBis!178) (_1!25217 (findLongestMatchInner!1665 (regex!7790 rBis!178) Nil!46441 (size!34102 Nil!46441) input!3517 input!3517 (size!34102 input!3517)))))))

(declare-fun b!4221179 () Bool)

(assert (=> b!4221179 (= e!2620688 (Some!9977 (tuple2!44163 (Token!14283 (apply!10705 (transformation!7790 rBis!178) (seqFromList!5765 (_1!25217 lt!1502065))) rBis!178 (size!34103 (seqFromList!5765 (_1!25217 lt!1502065))) (_1!25217 lt!1502065)) (_2!25217 lt!1502065))))))

(declare-fun lt!1502067 () Unit!65617)

(assert (=> b!4221179 (= lt!1502067 (longestMatchIsAcceptedByMatchOrIsEmpty!1638 (regex!7790 rBis!178) input!3517))))

(declare-fun res!1735071 () Bool)

(assert (=> b!4221179 (= res!1735071 (isEmpty!27517 (_1!25217 (findLongestMatchInner!1665 (regex!7790 rBis!178) Nil!46441 (size!34102 Nil!46441) input!3517 input!3517 (size!34102 input!3517)))))))

(assert (=> b!4221179 (=> res!1735071 e!2620689)))

(assert (=> b!4221179 e!2620689))

(declare-fun lt!1502069 () Unit!65617)

(assert (=> b!4221179 (= lt!1502069 lt!1502067)))

(declare-fun lt!1502066 () Unit!65617)

(assert (=> b!4221179 (= lt!1502066 (lemmaSemiInverse!2506 (transformation!7790 rBis!178) (seqFromList!5765 (_1!25217 lt!1502065))))))

(assert (= (and d!1243379 c!718301) b!4221172))

(assert (= (and d!1243379 (not c!718301)) b!4221179))

(assert (= (and b!4221179 (not res!1735071)) b!4221178))

(assert (= (and d!1243379 (not res!1735068)) b!4221175))

(assert (= (and b!4221175 res!1735070) b!4221171))

(assert (= (and b!4221171 res!1735069) b!4221174))

(assert (= (and b!4221174 res!1735067) b!4221173))

(assert (= (and b!4221173 res!1735066) b!4221177))

(assert (= (and b!4221177 res!1735065) b!4221176))

(declare-fun m!4809843 () Bool)

(assert (=> b!4221174 m!4809843))

(declare-fun m!4809845 () Bool)

(assert (=> b!4221174 m!4809845))

(assert (=> b!4221174 m!4809713))

(assert (=> b!4221171 m!4809843))

(declare-fun m!4809847 () Bool)

(assert (=> b!4221171 m!4809847))

(assert (=> b!4221171 m!4809847))

(declare-fun m!4809849 () Bool)

(assert (=> b!4221171 m!4809849))

(assert (=> b!4221171 m!4809849))

(declare-fun m!4809851 () Bool)

(assert (=> b!4221171 m!4809851))

(assert (=> b!4221176 m!4809843))

(declare-fun m!4809853 () Bool)

(assert (=> b!4221176 m!4809853))

(declare-fun m!4809855 () Bool)

(assert (=> d!1243379 m!4809855))

(declare-fun m!4809857 () Bool)

(assert (=> d!1243379 m!4809857))

(declare-fun m!4809859 () Bool)

(assert (=> d!1243379 m!4809859))

(assert (=> d!1243379 m!4809369))

(assert (=> b!4221175 m!4809843))

(assert (=> b!4221175 m!4809847))

(assert (=> b!4221175 m!4809847))

(assert (=> b!4221175 m!4809849))

(assert (=> b!4221175 m!4809849))

(declare-fun m!4809861 () Bool)

(assert (=> b!4221175 m!4809861))

(assert (=> b!4221178 m!4809733))

(assert (=> b!4221178 m!4809713))

(assert (=> b!4221178 m!4809733))

(assert (=> b!4221178 m!4809713))

(declare-fun m!4809863 () Bool)

(assert (=> b!4221178 m!4809863))

(declare-fun m!4809865 () Bool)

(assert (=> b!4221178 m!4809865))

(assert (=> b!4221173 m!4809843))

(declare-fun m!4809867 () Bool)

(assert (=> b!4221179 m!4809867))

(assert (=> b!4221179 m!4809713))

(assert (=> b!4221179 m!4809733))

(assert (=> b!4221179 m!4809713))

(assert (=> b!4221179 m!4809863))

(declare-fun m!4809869 () Bool)

(assert (=> b!4221179 m!4809869))

(declare-fun m!4809871 () Bool)

(assert (=> b!4221179 m!4809871))

(assert (=> b!4221179 m!4809869))

(declare-fun m!4809873 () Bool)

(assert (=> b!4221179 m!4809873))

(assert (=> b!4221179 m!4809869))

(declare-fun m!4809875 () Bool)

(assert (=> b!4221179 m!4809875))

(assert (=> b!4221179 m!4809869))

(assert (=> b!4221179 m!4809733))

(declare-fun m!4809877 () Bool)

(assert (=> b!4221179 m!4809877))

(assert (=> b!4221177 m!4809843))

(declare-fun m!4809879 () Bool)

(assert (=> b!4221177 m!4809879))

(assert (=> b!4221177 m!4809879))

(declare-fun m!4809881 () Bool)

(assert (=> b!4221177 m!4809881))

(assert (=> b!4220819 d!1243379))

(declare-fun b!4221181 () Bool)

(declare-fun res!1735072 () Bool)

(declare-fun e!2620690 () Bool)

(assert (=> b!4221181 (=> (not res!1735072) (not e!2620690))))

(assert (=> b!4221181 (= res!1735072 (= (head!8954 input!3517) (head!8954 input!3517)))))

(declare-fun b!4221180 () Bool)

(declare-fun e!2620692 () Bool)

(assert (=> b!4221180 (= e!2620692 e!2620690)))

(declare-fun res!1735073 () Bool)

(assert (=> b!4221180 (=> (not res!1735073) (not e!2620690))))

(assert (=> b!4221180 (= res!1735073 (not ((_ is Nil!46441) input!3517)))))

(declare-fun d!1243381 () Bool)

(declare-fun e!2620691 () Bool)

(assert (=> d!1243381 e!2620691))

(declare-fun res!1735075 () Bool)

(assert (=> d!1243381 (=> res!1735075 e!2620691)))

(declare-fun lt!1502070 () Bool)

(assert (=> d!1243381 (= res!1735075 (not lt!1502070))))

(assert (=> d!1243381 (= lt!1502070 e!2620692)))

(declare-fun res!1735074 () Bool)

(assert (=> d!1243381 (=> res!1735074 e!2620692)))

(assert (=> d!1243381 (= res!1735074 ((_ is Nil!46441) input!3517))))

(assert (=> d!1243381 (= (isPrefix!4649 input!3517 input!3517) lt!1502070)))

(declare-fun b!4221182 () Bool)

(assert (=> b!4221182 (= e!2620690 (isPrefix!4649 (tail!6801 input!3517) (tail!6801 input!3517)))))

(declare-fun b!4221183 () Bool)

(assert (=> b!4221183 (= e!2620691 (>= (size!34102 input!3517) (size!34102 input!3517)))))

(assert (= (and d!1243381 (not res!1735074)) b!4221180))

(assert (= (and b!4221180 res!1735073) b!4221181))

(assert (= (and b!4221181 res!1735072) b!4221182))

(assert (= (and d!1243381 (not res!1735075)) b!4221183))

(assert (=> b!4221181 m!4809757))

(assert (=> b!4221181 m!4809757))

(assert (=> b!4221182 m!4809761))

(assert (=> b!4221182 m!4809761))

(assert (=> b!4221182 m!4809761))

(assert (=> b!4221182 m!4809761))

(declare-fun m!4809883 () Bool)

(assert (=> b!4221182 m!4809883))

(assert (=> b!4221183 m!4809713))

(assert (=> b!4221183 m!4809713))

(assert (=> b!4220819 d!1243381))

(declare-fun d!1243383 () Bool)

(assert (=> d!1243383 (isPrefix!4649 input!3517 input!3517)))

(declare-fun lt!1502073 () Unit!65617)

(declare-fun choose!25865 (List!46565 List!46565) Unit!65617)

(assert (=> d!1243383 (= lt!1502073 (choose!25865 input!3517 input!3517))))

(assert (=> d!1243383 (= (lemmaIsPrefixRefl!3066 input!3517 input!3517) lt!1502073)))

(declare-fun bs!597738 () Bool)

(assert (= bs!597738 d!1243383))

(assert (=> bs!597738 m!4809419))

(declare-fun m!4809885 () Bool)

(assert (=> bs!597738 m!4809885))

(assert (=> b!4220819 d!1243383))

(declare-fun d!1243385 () Bool)

(assert (=> d!1243385 (= (isEmpty!27513 rules!3967) ((_ is Nil!46443) rules!3967))))

(assert (=> b!4220830 d!1243385))

(declare-fun d!1243387 () Bool)

(declare-fun res!1735080 () Bool)

(declare-fun e!2620695 () Bool)

(assert (=> d!1243387 (=> (not res!1735080) (not e!2620695))))

(assert (=> d!1243387 (= res!1735080 (not (isEmpty!27517 (originalCharacters!8172 tBis!41))))))

(assert (=> d!1243387 (= (inv!61105 tBis!41) e!2620695)))

(declare-fun b!4221188 () Bool)

(declare-fun res!1735081 () Bool)

(assert (=> b!4221188 (=> (not res!1735081) (not e!2620695))))

(declare-fun dynLambda!20000 (Int TokenValue!8020) BalanceConc!27596)

(assert (=> b!4221188 (= res!1735081 (= (originalCharacters!8172 tBis!41) (list!16805 (dynLambda!20000 (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (value!242544 tBis!41)))))))

(declare-fun b!4221189 () Bool)

(assert (=> b!4221189 (= e!2620695 (= (size!34099 tBis!41) (size!34102 (originalCharacters!8172 tBis!41))))))

(assert (= (and d!1243387 res!1735080) b!4221188))

(assert (= (and b!4221188 res!1735081) b!4221189))

(declare-fun b_lambda!124407 () Bool)

(assert (=> (not b_lambda!124407) (not b!4221188)))

(declare-fun t!349015 () Bool)

(declare-fun tb!253639 () Bool)

(assert (=> (and b!4220835 (= (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41)))) t!349015) tb!253639))

(declare-fun b!4221194 () Bool)

(declare-fun e!2620698 () Bool)

(declare-fun tp!1291602 () Bool)

(declare-fun inv!61108 (Conc!14001) Bool)

(assert (=> b!4221194 (= e!2620698 (and (inv!61108 (c!718263 (dynLambda!20000 (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (value!242544 tBis!41)))) tp!1291602))))

(declare-fun result!309112 () Bool)

(declare-fun inv!61109 (BalanceConc!27596) Bool)

(assert (=> tb!253639 (= result!309112 (and (inv!61109 (dynLambda!20000 (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (value!242544 tBis!41))) e!2620698))))

(assert (= tb!253639 b!4221194))

(declare-fun m!4809887 () Bool)

(assert (=> b!4221194 m!4809887))

(declare-fun m!4809889 () Bool)

(assert (=> tb!253639 m!4809889))

(assert (=> b!4221188 t!349015))

(declare-fun b_and!333065 () Bool)

(assert (= b_and!333023 (and (=> t!349015 result!309112) b_and!333065)))

(declare-fun t!349017 () Bool)

(declare-fun tb!253641 () Bool)

(assert (=> (and b!4220827 (= (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41)))) t!349017) tb!253641))

(declare-fun result!309116 () Bool)

(assert (= result!309116 result!309112))

(assert (=> b!4221188 t!349017))

(declare-fun b_and!333067 () Bool)

(assert (= b_and!333027 (and (=> t!349017 result!309116) b_and!333067)))

(declare-fun tb!253643 () Bool)

(declare-fun t!349019 () Bool)

(assert (=> (and b!4220816 (= (toChars!10373 (transformation!7790 (h!51863 rules!3967))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41)))) t!349019) tb!253643))

(declare-fun result!309118 () Bool)

(assert (= result!309118 result!309112))

(assert (=> b!4221188 t!349019))

(declare-fun b_and!333069 () Bool)

(assert (= b_and!333031 (and (=> t!349019 result!309118) b_and!333069)))

(declare-fun tb!253645 () Bool)

(declare-fun t!349021 () Bool)

(assert (=> (and b!4220824 (= (toChars!10373 (transformation!7790 rBis!178)) (toChars!10373 (transformation!7790 (rule!10924 tBis!41)))) t!349021) tb!253645))

(declare-fun result!309120 () Bool)

(assert (= result!309120 result!309112))

(assert (=> b!4221188 t!349021))

(declare-fun b_and!333071 () Bool)

(assert (= b_and!333035 (and (=> t!349021 result!309120) b_and!333071)))

(declare-fun m!4809891 () Bool)

(assert (=> d!1243387 m!4809891))

(declare-fun m!4809893 () Bool)

(assert (=> b!4221188 m!4809893))

(assert (=> b!4221188 m!4809893))

(declare-fun m!4809895 () Bool)

(assert (=> b!4221188 m!4809895))

(declare-fun m!4809897 () Bool)

(assert (=> b!4221189 m!4809897))

(assert (=> start!403434 d!1243387))

(declare-fun d!1243389 () Bool)

(declare-fun res!1735082 () Bool)

(declare-fun e!2620699 () Bool)

(assert (=> d!1243389 (=> (not res!1735082) (not e!2620699))))

(assert (=> d!1243389 (= res!1735082 (not (isEmpty!27517 (originalCharacters!8172 t!8364))))))

(assert (=> d!1243389 (= (inv!61105 t!8364) e!2620699)))

(declare-fun b!4221195 () Bool)

(declare-fun res!1735083 () Bool)

(assert (=> b!4221195 (=> (not res!1735083) (not e!2620699))))

(assert (=> b!4221195 (= res!1735083 (= (originalCharacters!8172 t!8364) (list!16805 (dynLambda!20000 (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (value!242544 t!8364)))))))

(declare-fun b!4221196 () Bool)

(assert (=> b!4221196 (= e!2620699 (= (size!34099 t!8364) (size!34102 (originalCharacters!8172 t!8364))))))

(assert (= (and d!1243389 res!1735082) b!4221195))

(assert (= (and b!4221195 res!1735083) b!4221196))

(declare-fun b_lambda!124409 () Bool)

(assert (=> (not b_lambda!124409) (not b!4221195)))

(declare-fun t!349023 () Bool)

(declare-fun tb!253647 () Bool)

(assert (=> (and b!4220835 (= (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (toChars!10373 (transformation!7790 (rule!10924 t!8364)))) t!349023) tb!253647))

(declare-fun b!4221197 () Bool)

(declare-fun e!2620700 () Bool)

(declare-fun tp!1291603 () Bool)

(assert (=> b!4221197 (= e!2620700 (and (inv!61108 (c!718263 (dynLambda!20000 (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (value!242544 t!8364)))) tp!1291603))))

(declare-fun result!309122 () Bool)

(assert (=> tb!253647 (= result!309122 (and (inv!61109 (dynLambda!20000 (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (value!242544 t!8364))) e!2620700))))

(assert (= tb!253647 b!4221197))

(declare-fun m!4809899 () Bool)

(assert (=> b!4221197 m!4809899))

(declare-fun m!4809901 () Bool)

(assert (=> tb!253647 m!4809901))

(assert (=> b!4221195 t!349023))

(declare-fun b_and!333073 () Bool)

(assert (= b_and!333065 (and (=> t!349023 result!309122) b_and!333073)))

(declare-fun t!349025 () Bool)

(declare-fun tb!253649 () Bool)

(assert (=> (and b!4220827 (= (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (toChars!10373 (transformation!7790 (rule!10924 t!8364)))) t!349025) tb!253649))

(declare-fun result!309124 () Bool)

(assert (= result!309124 result!309122))

(assert (=> b!4221195 t!349025))

(declare-fun b_and!333075 () Bool)

(assert (= b_and!333067 (and (=> t!349025 result!309124) b_and!333075)))

(declare-fun tb!253651 () Bool)

(declare-fun t!349027 () Bool)

(assert (=> (and b!4220816 (= (toChars!10373 (transformation!7790 (h!51863 rules!3967))) (toChars!10373 (transformation!7790 (rule!10924 t!8364)))) t!349027) tb!253651))

(declare-fun result!309126 () Bool)

(assert (= result!309126 result!309122))

(assert (=> b!4221195 t!349027))

(declare-fun b_and!333077 () Bool)

(assert (= b_and!333069 (and (=> t!349027 result!309126) b_and!333077)))

(declare-fun tb!253653 () Bool)

(declare-fun t!349029 () Bool)

(assert (=> (and b!4220824 (= (toChars!10373 (transformation!7790 rBis!178)) (toChars!10373 (transformation!7790 (rule!10924 t!8364)))) t!349029) tb!253653))

(declare-fun result!309128 () Bool)

(assert (= result!309128 result!309122))

(assert (=> b!4221195 t!349029))

(declare-fun b_and!333079 () Bool)

(assert (= b_and!333071 (and (=> t!349029 result!309128) b_and!333079)))

(declare-fun m!4809903 () Bool)

(assert (=> d!1243389 m!4809903))

(declare-fun m!4809905 () Bool)

(assert (=> b!4221195 m!4809905))

(assert (=> b!4221195 m!4809905))

(declare-fun m!4809907 () Bool)

(assert (=> b!4221195 m!4809907))

(declare-fun m!4809909 () Bool)

(assert (=> b!4221196 m!4809909))

(assert (=> start!403434 d!1243389))

(declare-fun d!1243391 () Bool)

(assert (=> d!1243391 (= (inv!61101 (tag!8654 (rule!10924 t!8364))) (= (mod (str.len (value!242543 (tag!8654 (rule!10924 t!8364)))) 2) 0))))

(assert (=> b!4220809 d!1243391))

(declare-fun d!1243393 () Bool)

(declare-fun res!1735084 () Bool)

(declare-fun e!2620701 () Bool)

(assert (=> d!1243393 (=> (not res!1735084) (not e!2620701))))

(assert (=> d!1243393 (= res!1735084 (semiInverseModEq!3385 (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (toValue!10514 (transformation!7790 (rule!10924 t!8364)))))))

(assert (=> d!1243393 (= (inv!61104 (transformation!7790 (rule!10924 t!8364))) e!2620701)))

(declare-fun b!4221198 () Bool)

(assert (=> b!4221198 (= e!2620701 (equivClasses!3284 (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (toValue!10514 (transformation!7790 (rule!10924 t!8364)))))))

(assert (= (and d!1243393 res!1735084) b!4221198))

(declare-fun m!4809911 () Bool)

(assert (=> d!1243393 m!4809911))

(declare-fun m!4809913 () Bool)

(assert (=> b!4221198 m!4809913))

(assert (=> b!4220809 d!1243393))

(declare-fun d!1243395 () Bool)

(declare-fun list!16807 (Conc!14001) List!46565)

(assert (=> d!1243395 (= (list!16805 (charsOf!5213 tBis!41)) (list!16807 (c!718263 (charsOf!5213 tBis!41))))))

(declare-fun bs!597739 () Bool)

(assert (= bs!597739 d!1243395))

(declare-fun m!4809915 () Bool)

(assert (=> bs!597739 m!4809915))

(assert (=> b!4220820 d!1243395))

(declare-fun d!1243397 () Bool)

(declare-fun lt!1502076 () BalanceConc!27596)

(assert (=> d!1243397 (= (list!16805 lt!1502076) (originalCharacters!8172 tBis!41))))

(assert (=> d!1243397 (= lt!1502076 (dynLambda!20000 (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (value!242544 tBis!41)))))

(assert (=> d!1243397 (= (charsOf!5213 tBis!41) lt!1502076)))

(declare-fun b_lambda!124411 () Bool)

(assert (=> (not b_lambda!124411) (not d!1243397)))

(assert (=> d!1243397 t!349015))

(declare-fun b_and!333081 () Bool)

(assert (= b_and!333073 (and (=> t!349015 result!309112) b_and!333081)))

(assert (=> d!1243397 t!349017))

(declare-fun b_and!333083 () Bool)

(assert (= b_and!333075 (and (=> t!349017 result!309116) b_and!333083)))

(assert (=> d!1243397 t!349019))

(declare-fun b_and!333085 () Bool)

(assert (= b_and!333077 (and (=> t!349019 result!309118) b_and!333085)))

(assert (=> d!1243397 t!349021))

(declare-fun b_and!333087 () Bool)

(assert (= b_and!333079 (and (=> t!349021 result!309120) b_and!333087)))

(declare-fun m!4809917 () Bool)

(assert (=> d!1243397 m!4809917))

(assert (=> d!1243397 m!4809893))

(assert (=> b!4220820 d!1243397))

(declare-fun e!2620704 () Bool)

(assert (=> b!4220826 (= tp!1291537 e!2620704)))

(declare-fun b!4221209 () Bool)

(assert (=> b!4221209 (= e!2620704 tp_is_empty!22357)))

(declare-fun b!4221212 () Bool)

(declare-fun tp!1291615 () Bool)

(declare-fun tp!1291618 () Bool)

(assert (=> b!4221212 (= e!2620704 (and tp!1291615 tp!1291618))))

(declare-fun b!4221210 () Bool)

(declare-fun tp!1291614 () Bool)

(declare-fun tp!1291616 () Bool)

(assert (=> b!4221210 (= e!2620704 (and tp!1291614 tp!1291616))))

(declare-fun b!4221211 () Bool)

(declare-fun tp!1291617 () Bool)

(assert (=> b!4221211 (= e!2620704 tp!1291617)))

(assert (= (and b!4220826 ((_ is ElementMatch!12695) (regex!7790 (rule!10924 tBis!41)))) b!4221209))

(assert (= (and b!4220826 ((_ is Concat!20716) (regex!7790 (rule!10924 tBis!41)))) b!4221210))

(assert (= (and b!4220826 ((_ is Star!12695) (regex!7790 (rule!10924 tBis!41)))) b!4221211))

(assert (= (and b!4220826 ((_ is Union!12695) (regex!7790 (rule!10924 tBis!41)))) b!4221212))

(declare-fun b!4221217 () Bool)

(declare-fun e!2620707 () Bool)

(declare-fun tp!1291621 () Bool)

(assert (=> b!4221217 (= e!2620707 (and tp_is_empty!22357 tp!1291621))))

(assert (=> b!4220817 (= tp!1291533 e!2620707)))

(assert (= (and b!4220817 ((_ is Cons!46441) (originalCharacters!8172 t!8364))) b!4221217))

(declare-fun b!4221218 () Bool)

(declare-fun e!2620708 () Bool)

(declare-fun tp!1291622 () Bool)

(assert (=> b!4221218 (= e!2620708 (and tp_is_empty!22357 tp!1291622))))

(assert (=> b!4220807 (= tp!1291529 e!2620708)))

(assert (= (and b!4220807 ((_ is Cons!46441) (t!348990 suffix!1557))) b!4221218))

(declare-fun b!4221219 () Bool)

(declare-fun e!2620709 () Bool)

(declare-fun tp!1291623 () Bool)

(assert (=> b!4221219 (= e!2620709 (and tp_is_empty!22357 tp!1291623))))

(assert (=> b!4220834 (= tp!1291543 e!2620709)))

(assert (= (and b!4220834 ((_ is Cons!46441) (t!348990 pBis!121))) b!4221219))

(declare-fun b!4221230 () Bool)

(declare-fun b_free!124023 () Bool)

(declare-fun b_next!124727 () Bool)

(assert (=> b!4221230 (= b_free!124023 (not b_next!124727))))

(declare-fun tp!1291632 () Bool)

(declare-fun b_and!333089 () Bool)

(assert (=> b!4221230 (= tp!1291632 b_and!333089)))

(declare-fun b_free!124025 () Bool)

(declare-fun b_next!124729 () Bool)

(assert (=> b!4221230 (= b_free!124025 (not b_next!124729))))

(declare-fun tb!253655 () Bool)

(declare-fun t!349031 () Bool)

(assert (=> (and b!4221230 (= (toChars!10373 (transformation!7790 (h!51863 (t!348992 rules!3967)))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41)))) t!349031) tb!253655))

(declare-fun result!309136 () Bool)

(assert (= result!309136 result!309112))

(assert (=> b!4221188 t!349031))

(declare-fun tb!253657 () Bool)

(declare-fun t!349033 () Bool)

(assert (=> (and b!4221230 (= (toChars!10373 (transformation!7790 (h!51863 (t!348992 rules!3967)))) (toChars!10373 (transformation!7790 (rule!10924 t!8364)))) t!349033) tb!253657))

(declare-fun result!309138 () Bool)

(assert (= result!309138 result!309122))

(assert (=> b!4221195 t!349033))

(assert (=> d!1243397 t!349031))

(declare-fun tp!1291633 () Bool)

(declare-fun b_and!333091 () Bool)

(assert (=> b!4221230 (= tp!1291633 (and (=> t!349031 result!309136) (=> t!349033 result!309138) b_and!333091))))

(declare-fun e!2620721 () Bool)

(assert (=> b!4221230 (= e!2620721 (and tp!1291632 tp!1291633))))

(declare-fun tp!1291635 () Bool)

(declare-fun e!2620720 () Bool)

(declare-fun b!4221229 () Bool)

(assert (=> b!4221229 (= e!2620720 (and tp!1291635 (inv!61101 (tag!8654 (h!51863 (t!348992 rules!3967)))) (inv!61104 (transformation!7790 (h!51863 (t!348992 rules!3967)))) e!2620721))))

(declare-fun b!4221228 () Bool)

(declare-fun e!2620719 () Bool)

(declare-fun tp!1291634 () Bool)

(assert (=> b!4221228 (= e!2620719 (and e!2620720 tp!1291634))))

(assert (=> b!4220821 (= tp!1291531 e!2620719)))

(assert (= b!4221229 b!4221230))

(assert (= b!4221228 b!4221229))

(assert (= (and b!4220821 ((_ is Cons!46443) (t!348992 rules!3967))) b!4221228))

(declare-fun m!4809919 () Bool)

(assert (=> b!4221229 m!4809919))

(declare-fun m!4809921 () Bool)

(assert (=> b!4221229 m!4809921))

(declare-fun e!2620722 () Bool)

(assert (=> b!4220832 (= tp!1291525 e!2620722)))

(declare-fun b!4221231 () Bool)

(assert (=> b!4221231 (= e!2620722 tp_is_empty!22357)))

(declare-fun b!4221234 () Bool)

(declare-fun tp!1291637 () Bool)

(declare-fun tp!1291640 () Bool)

(assert (=> b!4221234 (= e!2620722 (and tp!1291637 tp!1291640))))

(declare-fun b!4221232 () Bool)

(declare-fun tp!1291636 () Bool)

(declare-fun tp!1291638 () Bool)

(assert (=> b!4221232 (= e!2620722 (and tp!1291636 tp!1291638))))

(declare-fun b!4221233 () Bool)

(declare-fun tp!1291639 () Bool)

(assert (=> b!4221233 (= e!2620722 tp!1291639)))

(assert (= (and b!4220832 ((_ is ElementMatch!12695) (regex!7790 rBis!178))) b!4221231))

(assert (= (and b!4220832 ((_ is Concat!20716) (regex!7790 rBis!178))) b!4221232))

(assert (= (and b!4220832 ((_ is Star!12695) (regex!7790 rBis!178))) b!4221233))

(assert (= (and b!4220832 ((_ is Union!12695) (regex!7790 rBis!178))) b!4221234))

(declare-fun b!4221235 () Bool)

(declare-fun e!2620723 () Bool)

(declare-fun tp!1291641 () Bool)

(assert (=> b!4221235 (= e!2620723 (and tp_is_empty!22357 tp!1291641))))

(assert (=> b!4220822 (= tp!1291526 e!2620723)))

(assert (= (and b!4220822 ((_ is Cons!46441) (originalCharacters!8172 tBis!41))) b!4221235))

(declare-fun b!4221236 () Bool)

(declare-fun e!2620724 () Bool)

(declare-fun tp!1291642 () Bool)

(assert (=> b!4221236 (= e!2620724 (and tp_is_empty!22357 tp!1291642))))

(assert (=> b!4220812 (= tp!1291538 e!2620724)))

(assert (= (and b!4220812 ((_ is Cons!46441) (t!348990 input!3517))) b!4221236))

(declare-fun e!2620725 () Bool)

(assert (=> b!4220823 (= tp!1291542 e!2620725)))

(declare-fun b!4221237 () Bool)

(assert (=> b!4221237 (= e!2620725 tp_is_empty!22357)))

(declare-fun b!4221240 () Bool)

(declare-fun tp!1291644 () Bool)

(declare-fun tp!1291647 () Bool)

(assert (=> b!4221240 (= e!2620725 (and tp!1291644 tp!1291647))))

(declare-fun b!4221238 () Bool)

(declare-fun tp!1291643 () Bool)

(declare-fun tp!1291645 () Bool)

(assert (=> b!4221238 (= e!2620725 (and tp!1291643 tp!1291645))))

(declare-fun b!4221239 () Bool)

(declare-fun tp!1291646 () Bool)

(assert (=> b!4221239 (= e!2620725 tp!1291646)))

(assert (= (and b!4220823 ((_ is ElementMatch!12695) (regex!7790 (h!51863 rules!3967)))) b!4221237))

(assert (= (and b!4220823 ((_ is Concat!20716) (regex!7790 (h!51863 rules!3967)))) b!4221238))

(assert (= (and b!4220823 ((_ is Star!12695) (regex!7790 (h!51863 rules!3967)))) b!4221239))

(assert (= (and b!4220823 ((_ is Union!12695) (regex!7790 (h!51863 rules!3967)))) b!4221240))

(declare-fun b!4221241 () Bool)

(declare-fun e!2620726 () Bool)

(declare-fun tp!1291648 () Bool)

(assert (=> b!4221241 (= e!2620726 (and tp_is_empty!22357 tp!1291648))))

(assert (=> b!4220829 (= tp!1291527 e!2620726)))

(assert (= (and b!4220829 ((_ is Cons!46441) (t!348990 suffixBis!41))) b!4221241))

(declare-fun e!2620727 () Bool)

(assert (=> b!4220809 (= tp!1291528 e!2620727)))

(declare-fun b!4221242 () Bool)

(assert (=> b!4221242 (= e!2620727 tp_is_empty!22357)))

(declare-fun b!4221245 () Bool)

(declare-fun tp!1291650 () Bool)

(declare-fun tp!1291653 () Bool)

(assert (=> b!4221245 (= e!2620727 (and tp!1291650 tp!1291653))))

(declare-fun b!4221243 () Bool)

(declare-fun tp!1291649 () Bool)

(declare-fun tp!1291651 () Bool)

(assert (=> b!4221243 (= e!2620727 (and tp!1291649 tp!1291651))))

(declare-fun b!4221244 () Bool)

(declare-fun tp!1291652 () Bool)

(assert (=> b!4221244 (= e!2620727 tp!1291652)))

(assert (= (and b!4220809 ((_ is ElementMatch!12695) (regex!7790 (rule!10924 t!8364)))) b!4221242))

(assert (= (and b!4220809 ((_ is Concat!20716) (regex!7790 (rule!10924 t!8364)))) b!4221243))

(assert (= (and b!4220809 ((_ is Star!12695) (regex!7790 (rule!10924 t!8364)))) b!4221244))

(assert (= (and b!4220809 ((_ is Union!12695) (regex!7790 (rule!10924 t!8364)))) b!4221245))

(declare-fun b!4221246 () Bool)

(declare-fun e!2620728 () Bool)

(declare-fun tp!1291654 () Bool)

(assert (=> b!4221246 (= e!2620728 (and tp_is_empty!22357 tp!1291654))))

(assert (=> b!4220831 (= tp!1291541 e!2620728)))

(assert (= (and b!4220831 ((_ is Cons!46441) (t!348990 p!3001))) b!4221246))

(declare-fun b_lambda!124413 () Bool)

(assert (= b_lambda!124407 (or (and b!4220816 b_free!124013 (= (toChars!10373 (transformation!7790 (h!51863 rules!3967))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41))))) (and b!4220835 b_free!124005) (and b!4220827 b_free!124009 (= (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41))))) (and b!4220824 b_free!124017 (= (toChars!10373 (transformation!7790 rBis!178)) (toChars!10373 (transformation!7790 (rule!10924 tBis!41))))) (and b!4221230 b_free!124025 (= (toChars!10373 (transformation!7790 (h!51863 (t!348992 rules!3967)))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41))))) b_lambda!124413)))

(declare-fun b_lambda!124415 () Bool)

(assert (= b_lambda!124409 (or (and b!4220835 b_free!124005 (= (toChars!10373 (transformation!7790 (rule!10924 tBis!41))) (toChars!10373 (transformation!7790 (rule!10924 t!8364))))) (and b!4220816 b_free!124013 (= (toChars!10373 (transformation!7790 (h!51863 rules!3967))) (toChars!10373 (transformation!7790 (rule!10924 t!8364))))) (and b!4220824 b_free!124017 (= (toChars!10373 (transformation!7790 rBis!178)) (toChars!10373 (transformation!7790 (rule!10924 t!8364))))) (and b!4221230 b_free!124025 (= (toChars!10373 (transformation!7790 (h!51863 (t!348992 rules!3967)))) (toChars!10373 (transformation!7790 (rule!10924 t!8364))))) (and b!4220827 b_free!124009) b_lambda!124415)))

(declare-fun b_lambda!124417 () Bool)

(assert (= b_lambda!124411 (or (and b!4220816 b_free!124013 (= (toChars!10373 (transformation!7790 (h!51863 rules!3967))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41))))) (and b!4220835 b_free!124005) (and b!4220827 b_free!124009 (= (toChars!10373 (transformation!7790 (rule!10924 t!8364))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41))))) (and b!4220824 b_free!124017 (= (toChars!10373 (transformation!7790 rBis!178)) (toChars!10373 (transformation!7790 (rule!10924 tBis!41))))) (and b!4221230 b_free!124025 (= (toChars!10373 (transformation!7790 (h!51863 (t!348992 rules!3967)))) (toChars!10373 (transformation!7790 (rule!10924 tBis!41))))) b_lambda!124417)))

(check-sat (not b!4221175) (not b!4221139) (not d!1243393) (not b!4221245) (not b!4221217) (not b!4221170) (not b!4221165) (not b!4220878) (not b!4221124) (not b_next!124729) (not b!4221212) (not d!1243353) (not b!4221211) (not b!4221188) (not b!4220872) (not b!4221169) (not tb!253639) (not b!4221219) (not b!4221183) b_and!333087 (not b_next!124715) (not b!4221229) (not d!1243373) (not b!4221246) (not b!4221137) (not b!4221099) (not d!1243285) (not d!1243377) (not b_next!124719) (not b!4221236) (not d!1243291) (not d!1243395) (not b!4221198) (not b!4221239) (not b!4221196) (not b!4221101) (not b!4221238) (not b!4221102) (not b!4221142) (not b!4221168) (not b!4221132) (not b!4221241) (not b!4220856) (not b!4221143) b_and!333021 (not b!4221232) (not b!4221234) (not d!1243359) (not b!4221177) (not b!4221235) (not b!4220842) (not b_next!124711) (not b_lambda!124417) (not d!1243375) (not b!4221171) (not b_lambda!124413) (not b_next!124709) (not d!1243383) (not b!4220845) (not d!1243281) (not b!4221141) (not d!1243369) b_and!333025 (not tb!253647) (not b!4221178) (not b_next!124717) (not b!4221240) (not b_next!124713) b_and!333081 (not b!4221105) b_and!333089 b_and!333085 (not b!4221118) (not b!4221182) (not d!1243397) (not b!4221130) (not b!4220869) (not b!4221167) (not d!1243361) (not b!4221133) (not b_next!124721) tp_is_empty!22357 (not d!1243283) (not b!4221189) (not b!4221228) b_and!333091 (not b!4220870) (not b!4221127) (not b!4221129) (not b!4221173) (not b!4221194) (not b!4221243) (not b!4221162) (not b!4221119) (not b!4221164) (not d!1243365) (not d!1243387) (not bm!293145) (not d!1243379) (not b!4221176) (not b!4221104) (not b!4221244) (not b!4221210) (not b!4221106) (not b!4221218) (not b!4221197) (not b_lambda!124415) (not b!4221117) (not b_next!124727) (not b!4221107) (not d!1243289) b_and!333033 (not b!4221163) (not b!4221181) (not b!4221233) (not b!4221179) (not b_next!124707) b_and!333029 (not b!4221174) (not b!4221128) (not b!4221103) b_and!333083 (not b!4220855) (not b!4221136) (not d!1243389) (not b!4221195))
(check-sat (not b_next!124729) (not b_next!124719) b_and!333021 (not b_next!124711) (not b_next!124709) (not b_next!124721) b_and!333091 b_and!333083 b_and!333087 (not b_next!124715) b_and!333025 (not b_next!124713) b_and!333081 (not b_next!124717) b_and!333089 b_and!333085 (not b_next!124727) b_and!333033 (not b_next!124707) b_and!333029)
