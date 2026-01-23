; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16966 () Bool)

(assert start!16966)

(declare-fun b!157823 () Bool)

(declare-fun b_free!5905 () Bool)

(declare-fun b_next!5905 () Bool)

(assert (=> b!157823 (= b_free!5905 (not b_next!5905))))

(declare-fun tp!80882 () Bool)

(declare-fun b_and!9593 () Bool)

(assert (=> b!157823 (= tp!80882 b_and!9593)))

(declare-fun b_free!5907 () Bool)

(declare-fun b_next!5907 () Bool)

(assert (=> b!157823 (= b_free!5907 (not b_next!5907))))

(declare-fun tp!80886 () Bool)

(declare-fun b_and!9595 () Bool)

(assert (=> b!157823 (= tp!80886 b_and!9595)))

(declare-fun b!157844 () Bool)

(declare-fun b_free!5909 () Bool)

(declare-fun b_next!5909 () Bool)

(assert (=> b!157844 (= b_free!5909 (not b_next!5909))))

(declare-fun tp!80883 () Bool)

(declare-fun b_and!9597 () Bool)

(assert (=> b!157844 (= tp!80883 b_and!9597)))

(declare-fun b_free!5911 () Bool)

(declare-fun b_next!5911 () Bool)

(assert (=> b!157844 (= b_free!5911 (not b_next!5911))))

(declare-fun tp!80890 () Bool)

(declare-fun b_and!9599 () Bool)

(assert (=> b!157844 (= tp!80890 b_and!9599)))

(declare-fun b!157830 () Bool)

(declare-fun b_free!5913 () Bool)

(declare-fun b_next!5913 () Bool)

(assert (=> b!157830 (= b_free!5913 (not b_next!5913))))

(declare-fun tp!80887 () Bool)

(declare-fun b_and!9601 () Bool)

(assert (=> b!157830 (= tp!80887 b_and!9601)))

(declare-fun b_free!5915 () Bool)

(declare-fun b_next!5915 () Bool)

(assert (=> b!157830 (= b_free!5915 (not b_next!5915))))

(declare-fun tp!80893 () Bool)

(declare-fun b_and!9603 () Bool)

(assert (=> b!157830 (= tp!80893 b_and!9603)))

(declare-fun e!94792 () Bool)

(assert (=> b!157823 (= e!94792 (and tp!80882 tp!80886))))

(declare-fun b!157824 () Bool)

(declare-fun res!71814 () Bool)

(declare-fun e!94804 () Bool)

(assert (=> b!157824 (=> (not res!71814) (not e!94804))))

(declare-datatypes ((List!2737 0))(
  ( (Nil!2727) (Cons!2727 (h!8124 (_ BitVec 16)) (t!25601 List!2737)) )
))
(declare-datatypes ((TokenValue!501 0))(
  ( (FloatLiteralValue!1002 (text!3952 List!2737)) (TokenValueExt!500 (__x!2489 Int)) (Broken!2505 (value!17941 List!2737)) (Object!510) (End!501) (Def!501) (Underscore!501) (Match!501) (Else!501) (Error!501) (Case!501) (If!501) (Extends!501) (Abstract!501) (Class!501) (Val!501) (DelimiterValue!1002 (del!561 List!2737)) (KeywordValue!507 (value!17942 List!2737)) (CommentValue!1002 (value!17943 List!2737)) (WhitespaceValue!1002 (value!17944 List!2737)) (IndentationValue!501 (value!17945 List!2737)) (String!3584) (Int32!501) (Broken!2506 (value!17946 List!2737)) (Boolean!502) (Unit!2183) (OperatorValue!504 (op!561 List!2737)) (IdentifierValue!1002 (value!17947 List!2737)) (IdentifierValue!1003 (value!17948 List!2737)) (WhitespaceValue!1003 (value!17949 List!2737)) (True!1002) (False!1002) (Broken!2507 (value!17950 List!2737)) (Broken!2508 (value!17951 List!2737)) (True!1003) (RightBrace!501) (RightBracket!501) (Colon!501) (Null!501) (Comma!501) (LeftBracket!501) (False!1003) (LeftBrace!501) (ImaginaryLiteralValue!501 (text!3953 List!2737)) (StringLiteralValue!1503 (value!17952 List!2737)) (EOFValue!501 (value!17953 List!2737)) (IdentValue!501 (value!17954 List!2737)) (DelimiterValue!1003 (value!17955 List!2737)) (DedentValue!501 (value!17956 List!2737)) (NewLineValue!501 (value!17957 List!2737)) (IntegerValue!1503 (value!17958 (_ BitVec 32)) (text!3954 List!2737)) (IntegerValue!1504 (value!17959 Int) (text!3955 List!2737)) (Times!501) (Or!501) (Equal!501) (Minus!501) (Broken!2509 (value!17960 List!2737)) (And!501) (Div!501) (LessEqual!501) (Mod!501) (Concat!1204) (Not!501) (Plus!501) (SpaceValue!501 (value!17961 List!2737)) (IntegerValue!1505 (value!17962 Int) (text!3956 List!2737)) (StringLiteralValue!1504 (text!3957 List!2737)) (FloatLiteralValue!1003 (text!3958 List!2737)) (BytesLiteralValue!501 (value!17963 List!2737)) (CommentValue!1003 (value!17964 List!2737)) (StringLiteralValue!1505 (value!17965 List!2737)) (ErrorTokenValue!501 (msg!562 List!2737)) )
))
(declare-datatypes ((C!2328 0))(
  ( (C!2329 (val!1050 Int)) )
))
(declare-datatypes ((List!2738 0))(
  ( (Nil!2728) (Cons!2728 (h!8125 C!2328) (t!25602 List!2738)) )
))
(declare-datatypes ((IArray!1561 0))(
  ( (IArray!1562 (innerList!838 List!2738)) )
))
(declare-datatypes ((Conc!780 0))(
  ( (Node!780 (left!2058 Conc!780) (right!2388 Conc!780) (csize!1790 Int) (cheight!991 Int)) (Leaf!1359 (xs!3375 IArray!1561) (csize!1791 Int)) (Empty!780) )
))
(declare-datatypes ((BalanceConc!1568 0))(
  ( (BalanceConc!1569 (c!31675 Conc!780)) )
))
(declare-datatypes ((Regex!703 0))(
  ( (ElementMatch!703 (c!31676 C!2328)) (Concat!1205 (regOne!1918 Regex!703) (regTwo!1918 Regex!703)) (EmptyExpr!703) (Star!703 (reg!1032 Regex!703)) (EmptyLang!703) (Union!703 (regOne!1919 Regex!703) (regTwo!1919 Regex!703)) )
))
(declare-datatypes ((String!3585 0))(
  ( (String!3586 (value!17966 String)) )
))
(declare-datatypes ((TokenValueInjection!774 0))(
  ( (TokenValueInjection!775 (toValue!1126 Int) (toChars!985 Int)) )
))
(declare-datatypes ((Rule!758 0))(
  ( (Rule!759 (regex!479 Regex!703) (tag!657 String!3585) (isSeparator!479 Bool) (transformation!479 TokenValueInjection!774)) )
))
(declare-datatypes ((Token!702 0))(
  ( (Token!703 (value!17967 TokenValue!501) (rule!986 Rule!758) (size!2302 Int) (originalCharacters!522 List!2738)) )
))
(declare-datatypes ((List!2739 0))(
  ( (Nil!2729) (Cons!2729 (h!8126 Token!702) (t!25603 List!2739)) )
))
(declare-fun tokens!465 () List!2739)

(declare-fun lambda!4232 () Int)

(declare-fun forall!489 (List!2739 Int) Bool)

(assert (=> b!157824 (= res!71814 (forall!489 tokens!465 lambda!4232))))

(declare-fun b!157825 () Bool)

(declare-fun tp!80884 () Bool)

(declare-fun e!94797 () Bool)

(declare-fun e!94796 () Bool)

(declare-fun inv!21 (TokenValue!501) Bool)

(assert (=> b!157825 (= e!94797 (and (inv!21 (value!17967 (h!8126 tokens!465))) e!94796 tp!80884))))

(declare-fun b!157826 () Bool)

(declare-fun e!94794 () Bool)

(assert (=> b!157826 (= e!94794 e!94804)))

(declare-fun res!71821 () Bool)

(assert (=> b!157826 (=> (not res!71821) (not e!94804))))

(declare-datatypes ((List!2740 0))(
  ( (Nil!2730) (Cons!2730 (h!8127 Rule!758) (t!25604 List!2740)) )
))
(declare-fun rules!1920 () List!2740)

(declare-datatypes ((LexerInterface!365 0))(
  ( (LexerInterfaceExt!362 (__x!2490 Int)) (Lexer!363) )
))
(declare-fun thiss!17480 () LexerInterface!365)

(declare-datatypes ((IArray!1563 0))(
  ( (IArray!1564 (innerList!839 List!2739)) )
))
(declare-datatypes ((Conc!781 0))(
  ( (Node!781 (left!2059 Conc!781) (right!2389 Conc!781) (csize!1792 Int) (cheight!992 Int)) (Leaf!1360 (xs!3376 IArray!1563) (csize!1793 Int)) (Empty!781) )
))
(declare-datatypes ((BalanceConc!1570 0))(
  ( (BalanceConc!1571 (c!31677 Conc!781)) )
))
(declare-fun lt!47053 () BalanceConc!1570)

(declare-fun rulesProduceEachTokenIndividually!157 (LexerInterface!365 List!2740 BalanceConc!1570) Bool)

(assert (=> b!157826 (= res!71821 (rulesProduceEachTokenIndividually!157 thiss!17480 rules!1920 lt!47053))))

(declare-fun seqFromList!335 (List!2739) BalanceConc!1570)

(assert (=> b!157826 (= lt!47053 (seqFromList!335 tokens!465))))

(declare-fun b!157827 () Bool)

(declare-fun res!71818 () Bool)

(assert (=> b!157827 (=> (not res!71818) (not e!94794))))

(declare-fun rulesInvariant!331 (LexerInterface!365 List!2740) Bool)

(assert (=> b!157827 (= res!71818 (rulesInvariant!331 thiss!17480 rules!1920))))

(declare-fun e!94791 () Bool)

(declare-fun tp!80881 () Bool)

(declare-fun b!157828 () Bool)

(declare-fun inv!3537 (Token!702) Bool)

(assert (=> b!157828 (= e!94791 (and (inv!3537 (h!8126 tokens!465)) e!94797 tp!80881))))

(declare-fun b!157829 () Bool)

(declare-fun lt!47052 () BalanceConc!1570)

(declare-fun e!94798 () Bool)

(assert (=> b!157829 (= e!94798 (rulesProduceEachTokenIndividually!157 thiss!17480 rules!1920 lt!47052))))

(declare-fun e!94787 () Bool)

(assert (=> b!157830 (= e!94787 (and tp!80887 tp!80893))))

(declare-fun b!157831 () Bool)

(declare-fun separatorToken!170 () Token!702)

(declare-fun e!94805 () Bool)

(declare-fun e!94789 () Bool)

(declare-fun tp!80891 () Bool)

(assert (=> b!157831 (= e!94789 (and (inv!21 (value!17967 separatorToken!170)) e!94805 tp!80891))))

(declare-fun e!94802 () Bool)

(declare-fun tp!80885 () Bool)

(declare-fun b!157832 () Bool)

(declare-fun inv!3534 (String!3585) Bool)

(declare-fun inv!3538 (TokenValueInjection!774) Bool)

(assert (=> b!157832 (= e!94802 (and tp!80885 (inv!3534 (tag!657 (h!8127 rules!1920))) (inv!3538 (transformation!479 (h!8127 rules!1920))) e!94792))))

(declare-fun b!157833 () Bool)

(declare-fun res!71816 () Bool)

(assert (=> b!157833 (=> (not res!71816) (not e!94804))))

(declare-fun rulesProduceIndividualToken!114 (LexerInterface!365 List!2740 Token!702) Bool)

(assert (=> b!157833 (= res!71816 (rulesProduceIndividualToken!114 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!157834 () Bool)

(declare-fun tp!80889 () Bool)

(assert (=> b!157834 (= e!94796 (and tp!80889 (inv!3534 (tag!657 (rule!986 (h!8126 tokens!465)))) (inv!3538 (transformation!479 (rule!986 (h!8126 tokens!465)))) e!94787))))

(declare-fun b!157835 () Bool)

(declare-fun res!71819 () Bool)

(assert (=> b!157835 (=> (not res!71819) (not e!94804))))

(get-info :version)

(assert (=> b!157835 (= res!71819 ((_ is Cons!2729) tokens!465))))

(declare-fun b!157836 () Bool)

(declare-fun e!94803 () Bool)

(assert (=> b!157836 (= e!94804 e!94803)))

(declare-fun res!71817 () Bool)

(assert (=> b!157836 (=> (not res!71817) (not e!94803))))

(declare-fun lt!47051 () List!2738)

(declare-fun lt!47056 () List!2738)

(assert (=> b!157836 (= res!71817 (= lt!47051 lt!47056))))

(declare-fun list!973 (BalanceConc!1568) List!2738)

(declare-fun printWithSeparatorTokenWhenNeededRec!48 (LexerInterface!365 List!2740 BalanceConc!1570 Token!702 Int) BalanceConc!1568)

(assert (=> b!157836 (= lt!47056 (list!973 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!58 (LexerInterface!365 List!2740 List!2739 Token!702) List!2738)

(assert (=> b!157836 (= lt!47051 (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!157837 () Bool)

(declare-fun e!94800 () Bool)

(declare-fun tp!80888 () Bool)

(assert (=> b!157837 (= e!94800 (and e!94802 tp!80888))))

(declare-fun b!157838 () Bool)

(declare-fun res!71822 () Bool)

(assert (=> b!157838 (=> (not res!71822) (not e!94804))))

(declare-fun sepAndNonSepRulesDisjointChars!68 (List!2740 List!2740) Bool)

(assert (=> b!157838 (= res!71822 (sepAndNonSepRulesDisjointChars!68 rules!1920 rules!1920))))

(declare-fun b!157839 () Bool)

(declare-fun res!71813 () Bool)

(assert (=> b!157839 (=> (not res!71813) (not e!94794))))

(declare-fun isEmpty!1094 (List!2740) Bool)

(assert (=> b!157839 (= res!71813 (not (isEmpty!1094 rules!1920)))))

(declare-fun b!157840 () Bool)

(declare-fun res!71823 () Bool)

(assert (=> b!157840 (=> (not res!71823) (not e!94804))))

(assert (=> b!157840 (= res!71823 (isSeparator!479 (rule!986 separatorToken!170)))))

(declare-fun b!157841 () Bool)

(assert (=> b!157841 (= e!94803 (not e!94798))))

(declare-fun res!71820 () Bool)

(assert (=> b!157841 (=> res!71820 e!94798)))

(declare-fun size!2303 (BalanceConc!1570) Int)

(assert (=> b!157841 (= res!71820 (> 0 (size!2303 lt!47052)))))

(assert (=> b!157841 (= lt!47052 (seqFromList!335 (t!25603 tokens!465)))))

(declare-fun lt!47058 () List!2738)

(declare-fun lt!47057 () List!2738)

(declare-fun lt!47050 () List!2738)

(declare-fun lt!47055 () List!2738)

(declare-fun ++!600 (List!2738 List!2738) List!2738)

(assert (=> b!157841 (= (++!600 (++!600 lt!47055 lt!47050) lt!47058) (++!600 lt!47055 lt!47057))))

(declare-datatypes ((Unit!2184 0))(
  ( (Unit!2185) )
))
(declare-fun lt!47054 () Unit!2184)

(declare-fun lemmaConcatAssociativity!160 (List!2738 List!2738 List!2738) Unit!2184)

(assert (=> b!157841 (= lt!47054 (lemmaConcatAssociativity!160 lt!47055 lt!47050 lt!47058))))

(declare-fun charsOf!134 (Token!702) BalanceConc!1568)

(assert (=> b!157841 (= lt!47055 (list!973 (charsOf!134 (h!8126 tokens!465))))))

(assert (=> b!157841 (= lt!47057 (++!600 lt!47050 lt!47058))))

(assert (=> b!157841 (= lt!47058 (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (t!25603 tokens!465) separatorToken!170))))

(assert (=> b!157841 (= lt!47050 (list!973 (charsOf!134 separatorToken!170)))))

(declare-fun b!157842 () Bool)

(declare-fun res!71824 () Bool)

(assert (=> b!157842 (=> (not res!71824) (not e!94803))))

(declare-fun seqFromList!336 (List!2738) BalanceConc!1568)

(assert (=> b!157842 (= res!71824 (= (list!973 (seqFromList!336 lt!47051)) lt!47056))))

(declare-fun res!71815 () Bool)

(assert (=> start!16966 (=> (not res!71815) (not e!94794))))

(assert (=> start!16966 (= res!71815 ((_ is Lexer!363) thiss!17480))))

(assert (=> start!16966 e!94794))

(assert (=> start!16966 true))

(assert (=> start!16966 e!94800))

(assert (=> start!16966 (and (inv!3537 separatorToken!170) e!94789)))

(assert (=> start!16966 e!94791))

(declare-fun b!157843 () Bool)

(declare-fun tp!80892 () Bool)

(declare-fun e!94799 () Bool)

(assert (=> b!157843 (= e!94805 (and tp!80892 (inv!3534 (tag!657 (rule!986 separatorToken!170))) (inv!3538 (transformation!479 (rule!986 separatorToken!170))) e!94799))))

(assert (=> b!157844 (= e!94799 (and tp!80883 tp!80890))))

(assert (= (and start!16966 res!71815) b!157839))

(assert (= (and b!157839 res!71813) b!157827))

(assert (= (and b!157827 res!71818) b!157826))

(assert (= (and b!157826 res!71821) b!157833))

(assert (= (and b!157833 res!71816) b!157840))

(assert (= (and b!157840 res!71823) b!157824))

(assert (= (and b!157824 res!71814) b!157838))

(assert (= (and b!157838 res!71822) b!157835))

(assert (= (and b!157835 res!71819) b!157836))

(assert (= (and b!157836 res!71817) b!157842))

(assert (= (and b!157842 res!71824) b!157841))

(assert (= (and b!157841 (not res!71820)) b!157829))

(assert (= b!157832 b!157823))

(assert (= b!157837 b!157832))

(assert (= (and start!16966 ((_ is Cons!2730) rules!1920)) b!157837))

(assert (= b!157843 b!157844))

(assert (= b!157831 b!157843))

(assert (= start!16966 b!157831))

(assert (= b!157834 b!157830))

(assert (= b!157825 b!157834))

(assert (= b!157828 b!157825))

(assert (= (and start!16966 ((_ is Cons!2729) tokens!465)) b!157828))

(declare-fun m!145241 () Bool)

(assert (=> b!157824 m!145241))

(declare-fun m!145243 () Bool)

(assert (=> b!157842 m!145243))

(assert (=> b!157842 m!145243))

(declare-fun m!145245 () Bool)

(assert (=> b!157842 m!145245))

(declare-fun m!145247 () Bool)

(assert (=> b!157827 m!145247))

(declare-fun m!145249 () Bool)

(assert (=> b!157836 m!145249))

(assert (=> b!157836 m!145249))

(declare-fun m!145251 () Bool)

(assert (=> b!157836 m!145251))

(declare-fun m!145253 () Bool)

(assert (=> b!157836 m!145253))

(declare-fun m!145255 () Bool)

(assert (=> b!157834 m!145255))

(declare-fun m!145257 () Bool)

(assert (=> b!157834 m!145257))

(declare-fun m!145259 () Bool)

(assert (=> b!157828 m!145259))

(declare-fun m!145261 () Bool)

(assert (=> b!157839 m!145261))

(declare-fun m!145263 () Bool)

(assert (=> b!157825 m!145263))

(declare-fun m!145265 () Bool)

(assert (=> b!157843 m!145265))

(declare-fun m!145267 () Bool)

(assert (=> b!157843 m!145267))

(declare-fun m!145269 () Bool)

(assert (=> b!157831 m!145269))

(declare-fun m!145271 () Bool)

(assert (=> b!157838 m!145271))

(declare-fun m!145273 () Bool)

(assert (=> b!157829 m!145273))

(declare-fun m!145275 () Bool)

(assert (=> b!157841 m!145275))

(declare-fun m!145277 () Bool)

(assert (=> b!157841 m!145277))

(declare-fun m!145279 () Bool)

(assert (=> b!157841 m!145279))

(declare-fun m!145281 () Bool)

(assert (=> b!157841 m!145281))

(declare-fun m!145283 () Bool)

(assert (=> b!157841 m!145283))

(declare-fun m!145285 () Bool)

(assert (=> b!157841 m!145285))

(declare-fun m!145287 () Bool)

(assert (=> b!157841 m!145287))

(declare-fun m!145289 () Bool)

(assert (=> b!157841 m!145289))

(declare-fun m!145291 () Bool)

(assert (=> b!157841 m!145291))

(declare-fun m!145293 () Bool)

(assert (=> b!157841 m!145293))

(assert (=> b!157841 m!145285))

(assert (=> b!157841 m!145281))

(assert (=> b!157841 m!145293))

(declare-fun m!145295 () Bool)

(assert (=> b!157841 m!145295))

(declare-fun m!145297 () Bool)

(assert (=> b!157841 m!145297))

(declare-fun m!145299 () Bool)

(assert (=> b!157826 m!145299))

(declare-fun m!145301 () Bool)

(assert (=> b!157826 m!145301))

(declare-fun m!145303 () Bool)

(assert (=> b!157832 m!145303))

(declare-fun m!145305 () Bool)

(assert (=> b!157832 m!145305))

(declare-fun m!145307 () Bool)

(assert (=> b!157833 m!145307))

(declare-fun m!145309 () Bool)

(assert (=> start!16966 m!145309))

(check-sat (not b!157832) (not b_next!5905) b_and!9593 (not b_next!5909) (not b!157839) b_and!9595 (not b!157824) b_and!9601 (not b!157833) (not b!157841) (not b_next!5913) (not b!157828) (not start!16966) (not b_next!5911) b_and!9599 (not b!157826) (not b_next!5915) (not b!157843) (not b!157831) (not b!157827) (not b!157834) b_and!9597 (not b!157836) (not b!157829) (not b!157842) (not b!157825) (not b!157838) (not b!157837) (not b_next!5907) b_and!9603)
(check-sat (not b_next!5905) (not b_next!5911) b_and!9593 (not b_next!5909) b_and!9599 (not b_next!5915) b_and!9595 b_and!9597 b_and!9601 (not b_next!5913) (not b_next!5907) b_and!9603)
(get-model)

(declare-fun d!38353 () Bool)

(declare-fun res!71849 () Bool)

(declare-fun e!94828 () Bool)

(assert (=> d!38353 (=> res!71849 e!94828)))

(assert (=> d!38353 (= res!71849 ((_ is Nil!2729) tokens!465))))

(assert (=> d!38353 (= (forall!489 tokens!465 lambda!4232) e!94828)))

(declare-fun b!157873 () Bool)

(declare-fun e!94829 () Bool)

(assert (=> b!157873 (= e!94828 e!94829)))

(declare-fun res!71850 () Bool)

(assert (=> b!157873 (=> (not res!71850) (not e!94829))))

(declare-fun dynLambda!973 (Int Token!702) Bool)

(assert (=> b!157873 (= res!71850 (dynLambda!973 lambda!4232 (h!8126 tokens!465)))))

(declare-fun b!157874 () Bool)

(assert (=> b!157874 (= e!94829 (forall!489 (t!25603 tokens!465) lambda!4232))))

(assert (= (and d!38353 (not res!71849)) b!157873))

(assert (= (and b!157873 res!71850) b!157874))

(declare-fun b_lambda!3157 () Bool)

(assert (=> (not b_lambda!3157) (not b!157873)))

(declare-fun m!145325 () Bool)

(assert (=> b!157873 m!145325))

(declare-fun m!145327 () Bool)

(assert (=> b!157874 m!145327))

(assert (=> b!157824 d!38353))

(declare-fun d!38355 () Bool)

(assert (=> d!38355 (= (inv!3534 (tag!657 (rule!986 (h!8126 tokens!465)))) (= (mod (str.len (value!17966 (tag!657 (rule!986 (h!8126 tokens!465))))) 2) 0))))

(assert (=> b!157834 d!38355))

(declare-fun d!38357 () Bool)

(declare-fun res!71853 () Bool)

(declare-fun e!94832 () Bool)

(assert (=> d!38357 (=> (not res!71853) (not e!94832))))

(declare-fun semiInverseModEq!167 (Int Int) Bool)

(assert (=> d!38357 (= res!71853 (semiInverseModEq!167 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465))))))))

(assert (=> d!38357 (= (inv!3538 (transformation!479 (rule!986 (h!8126 tokens!465)))) e!94832)))

(declare-fun b!157877 () Bool)

(declare-fun equivClasses!150 (Int Int) Bool)

(assert (=> b!157877 (= e!94832 (equivClasses!150 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465))))))))

(assert (= (and d!38357 res!71853) b!157877))

(declare-fun m!145329 () Bool)

(assert (=> d!38357 m!145329))

(declare-fun m!145331 () Bool)

(assert (=> b!157877 m!145331))

(assert (=> b!157834 d!38357))

(declare-fun d!38359 () Bool)

(declare-fun res!71858 () Bool)

(declare-fun e!94835 () Bool)

(assert (=> d!38359 (=> (not res!71858) (not e!94835))))

(declare-fun isEmpty!1097 (List!2738) Bool)

(assert (=> d!38359 (= res!71858 (not (isEmpty!1097 (originalCharacters!522 separatorToken!170))))))

(assert (=> d!38359 (= (inv!3537 separatorToken!170) e!94835)))

(declare-fun b!157882 () Bool)

(declare-fun res!71859 () Bool)

(assert (=> b!157882 (=> (not res!71859) (not e!94835))))

(declare-fun dynLambda!974 (Int TokenValue!501) BalanceConc!1568)

(assert (=> b!157882 (= res!71859 (= (originalCharacters!522 separatorToken!170) (list!973 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))))))

(declare-fun b!157883 () Bool)

(declare-fun size!2305 (List!2738) Int)

(assert (=> b!157883 (= e!94835 (= (size!2302 separatorToken!170) (size!2305 (originalCharacters!522 separatorToken!170))))))

(assert (= (and d!38359 res!71858) b!157882))

(assert (= (and b!157882 res!71859) b!157883))

(declare-fun b_lambda!3159 () Bool)

(assert (=> (not b_lambda!3159) (not b!157882)))

(declare-fun t!25606 () Bool)

(declare-fun tb!5629 () Bool)

(assert (=> (and b!157823 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) t!25606) tb!5629))

(declare-fun b!157888 () Bool)

(declare-fun e!94838 () Bool)

(declare-fun tp!80896 () Bool)

(declare-fun inv!3541 (Conc!780) Bool)

(assert (=> b!157888 (= e!94838 (and (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))) tp!80896))))

(declare-fun result!8176 () Bool)

(declare-fun inv!3542 (BalanceConc!1568) Bool)

(assert (=> tb!5629 (= result!8176 (and (inv!3542 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))) e!94838))))

(assert (= tb!5629 b!157888))

(declare-fun m!145333 () Bool)

(assert (=> b!157888 m!145333))

(declare-fun m!145335 () Bool)

(assert (=> tb!5629 m!145335))

(assert (=> b!157882 t!25606))

(declare-fun b_and!9605 () Bool)

(assert (= b_and!9595 (and (=> t!25606 result!8176) b_and!9605)))

(declare-fun t!25608 () Bool)

(declare-fun tb!5631 () Bool)

(assert (=> (and b!157844 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) t!25608) tb!5631))

(declare-fun result!8180 () Bool)

(assert (= result!8180 result!8176))

(assert (=> b!157882 t!25608))

(declare-fun b_and!9607 () Bool)

(assert (= b_and!9599 (and (=> t!25608 result!8180) b_and!9607)))

(declare-fun tb!5633 () Bool)

(declare-fun t!25610 () Bool)

(assert (=> (and b!157830 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) t!25610) tb!5633))

(declare-fun result!8182 () Bool)

(assert (= result!8182 result!8176))

(assert (=> b!157882 t!25610))

(declare-fun b_and!9609 () Bool)

(assert (= b_and!9603 (and (=> t!25610 result!8182) b_and!9609)))

(declare-fun m!145337 () Bool)

(assert (=> d!38359 m!145337))

(declare-fun m!145339 () Bool)

(assert (=> b!157882 m!145339))

(assert (=> b!157882 m!145339))

(declare-fun m!145341 () Bool)

(assert (=> b!157882 m!145341))

(declare-fun m!145343 () Bool)

(assert (=> b!157883 m!145343))

(assert (=> start!16966 d!38359))

(declare-fun d!38361 () Bool)

(declare-fun lt!47072 () Bool)

(declare-fun e!94860 () Bool)

(assert (=> d!38361 (= lt!47072 e!94860)))

(declare-fun res!71885 () Bool)

(assert (=> d!38361 (=> (not res!71885) (not e!94860))))

(declare-fun list!976 (BalanceConc!1570) List!2739)

(declare-datatypes ((tuple2!2638 0))(
  ( (tuple2!2639 (_1!1535 BalanceConc!1570) (_2!1535 BalanceConc!1568)) )
))
(declare-fun lex!177 (LexerInterface!365 List!2740 BalanceConc!1568) tuple2!2638)

(declare-fun print!102 (LexerInterface!365 BalanceConc!1570) BalanceConc!1568)

(declare-fun singletonSeq!35 (Token!702) BalanceConc!1570)

(assert (=> d!38361 (= res!71885 (= (list!976 (_1!1535 (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170))))) (list!976 (singletonSeq!35 separatorToken!170))))))

(declare-fun e!94859 () Bool)

(assert (=> d!38361 (= lt!47072 e!94859)))

(declare-fun res!71883 () Bool)

(assert (=> d!38361 (=> (not res!71883) (not e!94859))))

(declare-fun lt!47071 () tuple2!2638)

(assert (=> d!38361 (= res!71883 (= (size!2303 (_1!1535 lt!47071)) 1))))

(assert (=> d!38361 (= lt!47071 (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170))))))

(assert (=> d!38361 (not (isEmpty!1094 rules!1920))))

(assert (=> d!38361 (= (rulesProduceIndividualToken!114 thiss!17480 rules!1920 separatorToken!170) lt!47072)))

(declare-fun b!157921 () Bool)

(declare-fun res!71884 () Bool)

(assert (=> b!157921 (=> (not res!71884) (not e!94859))))

(declare-fun apply!373 (BalanceConc!1570 Int) Token!702)

(assert (=> b!157921 (= res!71884 (= (apply!373 (_1!1535 lt!47071) 0) separatorToken!170))))

(declare-fun b!157922 () Bool)

(declare-fun isEmpty!1098 (BalanceConc!1568) Bool)

(assert (=> b!157922 (= e!94859 (isEmpty!1098 (_2!1535 lt!47071)))))

(declare-fun b!157923 () Bool)

(assert (=> b!157923 (= e!94860 (isEmpty!1098 (_2!1535 (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170))))))))

(assert (= (and d!38361 res!71883) b!157921))

(assert (= (and b!157921 res!71884) b!157922))

(assert (= (and d!38361 res!71885) b!157923))

(assert (=> d!38361 m!145261))

(declare-fun m!145389 () Bool)

(assert (=> d!38361 m!145389))

(declare-fun m!145391 () Bool)

(assert (=> d!38361 m!145391))

(declare-fun m!145393 () Bool)

(assert (=> d!38361 m!145393))

(assert (=> d!38361 m!145389))

(assert (=> d!38361 m!145393))

(declare-fun m!145395 () Bool)

(assert (=> d!38361 m!145395))

(declare-fun m!145397 () Bool)

(assert (=> d!38361 m!145397))

(assert (=> d!38361 m!145393))

(declare-fun m!145399 () Bool)

(assert (=> d!38361 m!145399))

(declare-fun m!145401 () Bool)

(assert (=> b!157921 m!145401))

(declare-fun m!145403 () Bool)

(assert (=> b!157922 m!145403))

(assert (=> b!157923 m!145393))

(assert (=> b!157923 m!145393))

(assert (=> b!157923 m!145389))

(assert (=> b!157923 m!145389))

(assert (=> b!157923 m!145391))

(declare-fun m!145405 () Bool)

(assert (=> b!157923 m!145405))

(assert (=> b!157833 d!38361))

(declare-fun d!38377 () Bool)

(assert (=> d!38377 (= (inv!3534 (tag!657 (h!8127 rules!1920))) (= (mod (str.len (value!17966 (tag!657 (h!8127 rules!1920)))) 2) 0))))

(assert (=> b!157832 d!38377))

(declare-fun d!38379 () Bool)

(declare-fun res!71886 () Bool)

(declare-fun e!94861 () Bool)

(assert (=> d!38379 (=> (not res!71886) (not e!94861))))

(assert (=> d!38379 (= res!71886 (semiInverseModEq!167 (toChars!985 (transformation!479 (h!8127 rules!1920))) (toValue!1126 (transformation!479 (h!8127 rules!1920)))))))

(assert (=> d!38379 (= (inv!3538 (transformation!479 (h!8127 rules!1920))) e!94861)))

(declare-fun b!157924 () Bool)

(assert (=> b!157924 (= e!94861 (equivClasses!150 (toChars!985 (transformation!479 (h!8127 rules!1920))) (toValue!1126 (transformation!479 (h!8127 rules!1920)))))))

(assert (= (and d!38379 res!71886) b!157924))

(declare-fun m!145407 () Bool)

(assert (=> d!38379 m!145407))

(declare-fun m!145409 () Bool)

(assert (=> b!157924 m!145409))

(assert (=> b!157832 d!38379))

(declare-fun d!38381 () Bool)

(assert (=> d!38381 (= (inv!3534 (tag!657 (rule!986 separatorToken!170))) (= (mod (str.len (value!17966 (tag!657 (rule!986 separatorToken!170)))) 2) 0))))

(assert (=> b!157843 d!38381))

(declare-fun d!38383 () Bool)

(declare-fun res!71887 () Bool)

(declare-fun e!94862 () Bool)

(assert (=> d!38383 (=> (not res!71887) (not e!94862))))

(assert (=> d!38383 (= res!71887 (semiInverseModEq!167 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toValue!1126 (transformation!479 (rule!986 separatorToken!170)))))))

(assert (=> d!38383 (= (inv!3538 (transformation!479 (rule!986 separatorToken!170))) e!94862)))

(declare-fun b!157925 () Bool)

(assert (=> b!157925 (= e!94862 (equivClasses!150 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toValue!1126 (transformation!479 (rule!986 separatorToken!170)))))))

(assert (= (and d!38383 res!71887) b!157925))

(declare-fun m!145411 () Bool)

(assert (=> d!38383 m!145411))

(declare-fun m!145413 () Bool)

(assert (=> b!157925 m!145413))

(assert (=> b!157843 d!38383))

(declare-fun d!38385 () Bool)

(declare-fun list!977 (Conc!780) List!2738)

(assert (=> d!38385 (= (list!973 (seqFromList!336 lt!47051)) (list!977 (c!31675 (seqFromList!336 lt!47051))))))

(declare-fun bs!14677 () Bool)

(assert (= bs!14677 d!38385))

(declare-fun m!145415 () Bool)

(assert (=> bs!14677 m!145415))

(assert (=> b!157842 d!38385))

(declare-fun d!38387 () Bool)

(declare-fun fromListB!140 (List!2738) BalanceConc!1568)

(assert (=> d!38387 (= (seqFromList!336 lt!47051) (fromListB!140 lt!47051))))

(declare-fun bs!14678 () Bool)

(assert (= bs!14678 d!38387))

(declare-fun m!145417 () Bool)

(assert (=> bs!14678 m!145417))

(assert (=> b!157842 d!38387))

(declare-fun b!157936 () Bool)

(declare-fun res!71890 () Bool)

(declare-fun e!94871 () Bool)

(assert (=> b!157936 (=> res!71890 e!94871)))

(assert (=> b!157936 (= res!71890 (not ((_ is IntegerValue!1505) (value!17967 separatorToken!170))))))

(declare-fun e!94870 () Bool)

(assert (=> b!157936 (= e!94870 e!94871)))

(declare-fun b!157937 () Bool)

(declare-fun e!94869 () Bool)

(assert (=> b!157937 (= e!94869 e!94870)))

(declare-fun c!31690 () Bool)

(assert (=> b!157937 (= c!31690 ((_ is IntegerValue!1504) (value!17967 separatorToken!170)))))

(declare-fun b!157938 () Bool)

(declare-fun inv!16 (TokenValue!501) Bool)

(assert (=> b!157938 (= e!94869 (inv!16 (value!17967 separatorToken!170)))))

(declare-fun b!157939 () Bool)

(declare-fun inv!15 (TokenValue!501) Bool)

(assert (=> b!157939 (= e!94871 (inv!15 (value!17967 separatorToken!170)))))

(declare-fun d!38389 () Bool)

(declare-fun c!31691 () Bool)

(assert (=> d!38389 (= c!31691 ((_ is IntegerValue!1503) (value!17967 separatorToken!170)))))

(assert (=> d!38389 (= (inv!21 (value!17967 separatorToken!170)) e!94869)))

(declare-fun b!157940 () Bool)

(declare-fun inv!17 (TokenValue!501) Bool)

(assert (=> b!157940 (= e!94870 (inv!17 (value!17967 separatorToken!170)))))

(assert (= (and d!38389 c!31691) b!157938))

(assert (= (and d!38389 (not c!31691)) b!157937))

(assert (= (and b!157937 c!31690) b!157940))

(assert (= (and b!157937 (not c!31690)) b!157936))

(assert (= (and b!157936 (not res!71890)) b!157939))

(declare-fun m!145419 () Bool)

(assert (=> b!157938 m!145419))

(declare-fun m!145421 () Bool)

(assert (=> b!157939 m!145421))

(declare-fun m!145423 () Bool)

(assert (=> b!157940 m!145423))

(assert (=> b!157831 d!38389))

(declare-fun d!38391 () Bool)

(declare-fun fromListB!141 (List!2739) BalanceConc!1570)

(assert (=> d!38391 (= (seqFromList!335 (t!25603 tokens!465)) (fromListB!141 (t!25603 tokens!465)))))

(declare-fun bs!14679 () Bool)

(assert (= bs!14679 d!38391))

(declare-fun m!145425 () Bool)

(assert (=> bs!14679 m!145425))

(assert (=> b!157841 d!38391))

(declare-fun b!157951 () Bool)

(declare-fun res!71895 () Bool)

(declare-fun e!94876 () Bool)

(assert (=> b!157951 (=> (not res!71895) (not e!94876))))

(declare-fun lt!47075 () List!2738)

(assert (=> b!157951 (= res!71895 (= (size!2305 lt!47075) (+ (size!2305 (++!600 lt!47055 lt!47050)) (size!2305 lt!47058))))))

(declare-fun b!157952 () Bool)

(assert (=> b!157952 (= e!94876 (or (not (= lt!47058 Nil!2728)) (= lt!47075 (++!600 lt!47055 lt!47050))))))

(declare-fun b!157950 () Bool)

(declare-fun e!94877 () List!2738)

(assert (=> b!157950 (= e!94877 (Cons!2728 (h!8125 (++!600 lt!47055 lt!47050)) (++!600 (t!25602 (++!600 lt!47055 lt!47050)) lt!47058)))))

(declare-fun b!157949 () Bool)

(assert (=> b!157949 (= e!94877 lt!47058)))

(declare-fun d!38393 () Bool)

(assert (=> d!38393 e!94876))

(declare-fun res!71896 () Bool)

(assert (=> d!38393 (=> (not res!71896) (not e!94876))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!378 (List!2738) (InoxSet C!2328))

(assert (=> d!38393 (= res!71896 (= (content!378 lt!47075) ((_ map or) (content!378 (++!600 lt!47055 lt!47050)) (content!378 lt!47058))))))

(assert (=> d!38393 (= lt!47075 e!94877)))

(declare-fun c!31694 () Bool)

(assert (=> d!38393 (= c!31694 ((_ is Nil!2728) (++!600 lt!47055 lt!47050)))))

(assert (=> d!38393 (= (++!600 (++!600 lt!47055 lt!47050) lt!47058) lt!47075)))

(assert (= (and d!38393 c!31694) b!157949))

(assert (= (and d!38393 (not c!31694)) b!157950))

(assert (= (and d!38393 res!71896) b!157951))

(assert (= (and b!157951 res!71895) b!157952))

(declare-fun m!145427 () Bool)

(assert (=> b!157951 m!145427))

(assert (=> b!157951 m!145285))

(declare-fun m!145429 () Bool)

(assert (=> b!157951 m!145429))

(declare-fun m!145431 () Bool)

(assert (=> b!157951 m!145431))

(declare-fun m!145433 () Bool)

(assert (=> b!157950 m!145433))

(declare-fun m!145435 () Bool)

(assert (=> d!38393 m!145435))

(assert (=> d!38393 m!145285))

(declare-fun m!145437 () Bool)

(assert (=> d!38393 m!145437))

(declare-fun m!145439 () Bool)

(assert (=> d!38393 m!145439))

(assert (=> b!157841 d!38393))

(declare-fun b!157955 () Bool)

(declare-fun res!71897 () Bool)

(declare-fun e!94878 () Bool)

(assert (=> b!157955 (=> (not res!71897) (not e!94878))))

(declare-fun lt!47076 () List!2738)

(assert (=> b!157955 (= res!71897 (= (size!2305 lt!47076) (+ (size!2305 lt!47055) (size!2305 lt!47057))))))

(declare-fun b!157956 () Bool)

(assert (=> b!157956 (= e!94878 (or (not (= lt!47057 Nil!2728)) (= lt!47076 lt!47055)))))

(declare-fun b!157954 () Bool)

(declare-fun e!94879 () List!2738)

(assert (=> b!157954 (= e!94879 (Cons!2728 (h!8125 lt!47055) (++!600 (t!25602 lt!47055) lt!47057)))))

(declare-fun b!157953 () Bool)

(assert (=> b!157953 (= e!94879 lt!47057)))

(declare-fun d!38395 () Bool)

(assert (=> d!38395 e!94878))

(declare-fun res!71898 () Bool)

(assert (=> d!38395 (=> (not res!71898) (not e!94878))))

(assert (=> d!38395 (= res!71898 (= (content!378 lt!47076) ((_ map or) (content!378 lt!47055) (content!378 lt!47057))))))

(assert (=> d!38395 (= lt!47076 e!94879)))

(declare-fun c!31695 () Bool)

(assert (=> d!38395 (= c!31695 ((_ is Nil!2728) lt!47055))))

(assert (=> d!38395 (= (++!600 lt!47055 lt!47057) lt!47076)))

(assert (= (and d!38395 c!31695) b!157953))

(assert (= (and d!38395 (not c!31695)) b!157954))

(assert (= (and d!38395 res!71898) b!157955))

(assert (= (and b!157955 res!71897) b!157956))

(declare-fun m!145441 () Bool)

(assert (=> b!157955 m!145441))

(declare-fun m!145443 () Bool)

(assert (=> b!157955 m!145443))

(declare-fun m!145445 () Bool)

(assert (=> b!157955 m!145445))

(declare-fun m!145447 () Bool)

(assert (=> b!157954 m!145447))

(declare-fun m!145449 () Bool)

(assert (=> d!38395 m!145449))

(declare-fun m!145451 () Bool)

(assert (=> d!38395 m!145451))

(declare-fun m!145453 () Bool)

(assert (=> d!38395 m!145453))

(assert (=> b!157841 d!38395))

(declare-fun d!38397 () Bool)

(declare-fun lt!47079 () BalanceConc!1568)

(assert (=> d!38397 (= (list!973 lt!47079) (originalCharacters!522 separatorToken!170))))

(assert (=> d!38397 (= lt!47079 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))))

(assert (=> d!38397 (= (charsOf!134 separatorToken!170) lt!47079)))

(declare-fun b_lambda!3163 () Bool)

(assert (=> (not b_lambda!3163) (not d!38397)))

(assert (=> d!38397 t!25606))

(declare-fun b_and!9617 () Bool)

(assert (= b_and!9605 (and (=> t!25606 result!8176) b_and!9617)))

(assert (=> d!38397 t!25608))

(declare-fun b_and!9619 () Bool)

(assert (= b_and!9607 (and (=> t!25608 result!8180) b_and!9619)))

(assert (=> d!38397 t!25610))

(declare-fun b_and!9621 () Bool)

(assert (= b_and!9609 (and (=> t!25610 result!8182) b_and!9621)))

(declare-fun m!145455 () Bool)

(assert (=> d!38397 m!145455))

(assert (=> d!38397 m!145339))

(assert (=> b!157841 d!38397))

(declare-fun d!38399 () Bool)

(assert (=> d!38399 (= (list!973 (charsOf!134 separatorToken!170)) (list!977 (c!31675 (charsOf!134 separatorToken!170))))))

(declare-fun bs!14680 () Bool)

(assert (= bs!14680 d!38399))

(declare-fun m!145457 () Bool)

(assert (=> bs!14680 m!145457))

(assert (=> b!157841 d!38399))

(declare-fun b!157959 () Bool)

(declare-fun res!71899 () Bool)

(declare-fun e!94880 () Bool)

(assert (=> b!157959 (=> (not res!71899) (not e!94880))))

(declare-fun lt!47080 () List!2738)

(assert (=> b!157959 (= res!71899 (= (size!2305 lt!47080) (+ (size!2305 lt!47055) (size!2305 lt!47050))))))

(declare-fun b!157960 () Bool)

(assert (=> b!157960 (= e!94880 (or (not (= lt!47050 Nil!2728)) (= lt!47080 lt!47055)))))

(declare-fun b!157958 () Bool)

(declare-fun e!94881 () List!2738)

(assert (=> b!157958 (= e!94881 (Cons!2728 (h!8125 lt!47055) (++!600 (t!25602 lt!47055) lt!47050)))))

(declare-fun b!157957 () Bool)

(assert (=> b!157957 (= e!94881 lt!47050)))

(declare-fun d!38401 () Bool)

(assert (=> d!38401 e!94880))

(declare-fun res!71900 () Bool)

(assert (=> d!38401 (=> (not res!71900) (not e!94880))))

(assert (=> d!38401 (= res!71900 (= (content!378 lt!47080) ((_ map or) (content!378 lt!47055) (content!378 lt!47050))))))

(assert (=> d!38401 (= lt!47080 e!94881)))

(declare-fun c!31696 () Bool)

(assert (=> d!38401 (= c!31696 ((_ is Nil!2728) lt!47055))))

(assert (=> d!38401 (= (++!600 lt!47055 lt!47050) lt!47080)))

(assert (= (and d!38401 c!31696) b!157957))

(assert (= (and d!38401 (not c!31696)) b!157958))

(assert (= (and d!38401 res!71900) b!157959))

(assert (= (and b!157959 res!71899) b!157960))

(declare-fun m!145459 () Bool)

(assert (=> b!157959 m!145459))

(assert (=> b!157959 m!145443))

(declare-fun m!145461 () Bool)

(assert (=> b!157959 m!145461))

(declare-fun m!145463 () Bool)

(assert (=> b!157958 m!145463))

(declare-fun m!145465 () Bool)

(assert (=> d!38401 m!145465))

(assert (=> d!38401 m!145451))

(declare-fun m!145467 () Bool)

(assert (=> d!38401 m!145467))

(assert (=> b!157841 d!38401))

(declare-fun d!38403 () Bool)

(assert (=> d!38403 (= (++!600 (++!600 lt!47055 lt!47050) lt!47058) (++!600 lt!47055 (++!600 lt!47050 lt!47058)))))

(declare-fun lt!47083 () Unit!2184)

(declare-fun choose!1775 (List!2738 List!2738 List!2738) Unit!2184)

(assert (=> d!38403 (= lt!47083 (choose!1775 lt!47055 lt!47050 lt!47058))))

(assert (=> d!38403 (= (lemmaConcatAssociativity!160 lt!47055 lt!47050 lt!47058) lt!47083)))

(declare-fun bs!14681 () Bool)

(assert (= bs!14681 d!38403))

(assert (=> bs!14681 m!145297))

(assert (=> bs!14681 m!145297))

(declare-fun m!145469 () Bool)

(assert (=> bs!14681 m!145469))

(assert (=> bs!14681 m!145285))

(declare-fun m!145471 () Bool)

(assert (=> bs!14681 m!145471))

(assert (=> bs!14681 m!145285))

(assert (=> bs!14681 m!145287))

(assert (=> b!157841 d!38403))

(declare-fun bs!14690 () Bool)

(declare-fun b!158036 () Bool)

(assert (= bs!14690 (and b!158036 b!157824)))

(declare-fun lambda!4246 () Int)

(assert (=> bs!14690 (not (= lambda!4246 lambda!4232))))

(declare-fun b!158047 () Bool)

(declare-fun e!94938 () Bool)

(assert (=> b!158047 (= e!94938 true)))

(declare-fun b!158046 () Bool)

(declare-fun e!94937 () Bool)

(assert (=> b!158046 (= e!94937 e!94938)))

(declare-fun b!158045 () Bool)

(declare-fun e!94936 () Bool)

(assert (=> b!158045 (= e!94936 e!94937)))

(assert (=> b!158036 e!94936))

(assert (= b!158046 b!158047))

(assert (= b!158045 b!158046))

(assert (= (and b!158036 ((_ is Cons!2730) rules!1920)) b!158045))

(declare-fun order!1387 () Int)

(declare-fun order!1385 () Int)

(declare-fun dynLambda!975 (Int Int) Int)

(declare-fun dynLambda!976 (Int Int) Int)

(assert (=> b!158047 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4246))))

(declare-fun order!1389 () Int)

(declare-fun dynLambda!977 (Int Int) Int)

(assert (=> b!158047 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4246))))

(assert (=> b!158036 true))

(declare-fun b!158027 () Bool)

(declare-fun c!31717 () Bool)

(declare-datatypes ((tuple2!2640 0))(
  ( (tuple2!2641 (_1!1536 Token!702) (_2!1536 List!2738)) )
))
(declare-datatypes ((Option!264 0))(
  ( (None!263) (Some!263 (v!13662 tuple2!2640)) )
))
(declare-fun lt!47142 () Option!264)

(assert (=> b!158027 (= c!31717 (and ((_ is Some!263) lt!47142) (not (= (_1!1536 (v!13662 lt!47142)) (h!8126 (t!25603 tokens!465))))))))

(declare-fun e!94927 () List!2738)

(declare-fun e!94926 () List!2738)

(assert (=> b!158027 (= e!94927 e!94926)))

(declare-fun d!38405 () Bool)

(declare-fun c!31716 () Bool)

(assert (=> d!38405 (= c!31716 ((_ is Cons!2729) (t!25603 tokens!465)))))

(declare-fun e!94928 () List!2738)

(assert (=> d!38405 (= (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (t!25603 tokens!465) separatorToken!170) e!94928)))

(declare-fun b!158028 () Bool)

(declare-fun call!6602 () List!2738)

(assert (=> b!158028 (= e!94927 call!6602)))

(declare-fun bm!6597 () Bool)

(declare-fun c!31720 () Bool)

(declare-fun c!31718 () Bool)

(assert (=> bm!6597 (= c!31720 c!31718)))

(declare-fun lt!47141 () List!2738)

(declare-fun e!94925 () List!2738)

(declare-fun call!6604 () List!2738)

(assert (=> bm!6597 (= call!6602 (++!600 e!94925 (ite c!31718 lt!47141 call!6604)))))

(declare-fun b!158029 () Bool)

(assert (=> b!158029 (= e!94926 (++!600 call!6602 lt!47141))))

(declare-fun bm!6598 () Bool)

(declare-fun call!6603 () BalanceConc!1568)

(declare-fun call!6605 () BalanceConc!1568)

(assert (=> bm!6598 (= call!6603 call!6605)))

(declare-fun b!158030 () Bool)

(assert (=> b!158030 (= e!94926 Nil!2728)))

(declare-fun printTailRec!65 (LexerInterface!365 BalanceConc!1570 Int BalanceConc!1568) BalanceConc!1568)

(assert (=> b!158030 (= (print!102 thiss!17480 (singletonSeq!35 (h!8126 (t!25603 tokens!465)))) (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 (t!25603 tokens!465))) 0 (BalanceConc!1569 Empty!780)))))

(declare-fun lt!47144 () Unit!2184)

(declare-fun Unit!2192 () Unit!2184)

(assert (=> b!158030 (= lt!47144 Unit!2192)))

(declare-fun lt!47140 () Unit!2184)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 (LexerInterface!365 List!2740 List!2738 List!2738) Unit!2184)

(assert (=> b!158030 (= lt!47140 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 call!6604 lt!47141))))

(assert (=> b!158030 false))

(declare-fun lt!47143 () Unit!2184)

(declare-fun Unit!2193 () Unit!2184)

(assert (=> b!158030 (= lt!47143 Unit!2193)))

(declare-fun bm!6599 () Bool)

(declare-fun call!6606 () List!2738)

(assert (=> bm!6599 (= call!6604 call!6606)))

(declare-fun c!31719 () Bool)

(assert (=> bm!6599 (= c!31719 c!31717)))

(declare-fun bm!6600 () Bool)

(declare-fun e!94929 () BalanceConc!1568)

(assert (=> bm!6600 (= call!6606 (list!973 (ite c!31718 call!6605 e!94929)))))

(declare-fun bm!6601 () Bool)

(assert (=> bm!6601 (= call!6605 (charsOf!134 (h!8126 (t!25603 tokens!465))))))

(declare-fun b!158031 () Bool)

(assert (=> b!158031 (= e!94925 call!6606)))

(declare-fun b!158032 () Bool)

(assert (=> b!158032 (= e!94928 Nil!2728)))

(declare-fun b!158033 () Bool)

(assert (=> b!158033 (= e!94929 call!6603)))

(declare-fun b!158034 () Bool)

(assert (=> b!158034 (= e!94925 (list!973 call!6603))))

(declare-fun b!158035 () Bool)

(assert (=> b!158035 (= e!94929 (charsOf!134 separatorToken!170))))

(assert (=> b!158036 (= e!94928 e!94927)))

(declare-fun lt!47139 () Unit!2184)

(declare-fun forallContained!60 (List!2739 Int Token!702) Unit!2184)

(assert (=> b!158036 (= lt!47139 (forallContained!60 (t!25603 tokens!465) lambda!4246 (h!8126 (t!25603 tokens!465))))))

(assert (=> b!158036 (= lt!47141 (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (t!25603 (t!25603 tokens!465)) separatorToken!170))))

(declare-fun maxPrefix!117 (LexerInterface!365 List!2740 List!2738) Option!264)

(assert (=> b!158036 (= lt!47142 (maxPrefix!117 thiss!17480 rules!1920 (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141)))))

(assert (=> b!158036 (= c!31718 (and ((_ is Some!263) lt!47142) (= (_1!1536 (v!13662 lt!47142)) (h!8126 (t!25603 tokens!465)))))))

(assert (= (and d!38405 c!31716) b!158036))

(assert (= (and d!38405 (not c!31716)) b!158032))

(assert (= (and b!158036 c!31718) b!158028))

(assert (= (and b!158036 (not c!31718)) b!158027))

(assert (= (and b!158027 c!31717) b!158029))

(assert (= (and b!158027 (not c!31717)) b!158030))

(assert (= (or b!158029 b!158030) bm!6598))

(assert (= (or b!158029 b!158030) bm!6599))

(assert (= (and bm!6599 c!31719) b!158035))

(assert (= (and bm!6599 (not c!31719)) b!158033))

(assert (= (or b!158028 bm!6598) bm!6601))

(assert (= (or b!158028 bm!6599) bm!6600))

(assert (= (or b!158028 b!158029) bm!6597))

(assert (= (and bm!6597 c!31720) b!158031))

(assert (= (and bm!6597 (not c!31720)) b!158034))

(declare-fun m!145543 () Bool)

(assert (=> b!158030 m!145543))

(assert (=> b!158030 m!145543))

(declare-fun m!145545 () Bool)

(assert (=> b!158030 m!145545))

(assert (=> b!158030 m!145543))

(declare-fun m!145547 () Bool)

(assert (=> b!158030 m!145547))

(declare-fun m!145549 () Bool)

(assert (=> b!158030 m!145549))

(declare-fun m!145551 () Bool)

(assert (=> b!158034 m!145551))

(declare-fun m!145553 () Bool)

(assert (=> bm!6601 m!145553))

(declare-fun m!145555 () Bool)

(assert (=> bm!6597 m!145555))

(assert (=> b!158036 m!145553))

(declare-fun m!145557 () Bool)

(assert (=> b!158036 m!145557))

(declare-fun m!145559 () Bool)

(assert (=> b!158036 m!145559))

(declare-fun m!145561 () Bool)

(assert (=> b!158036 m!145561))

(declare-fun m!145563 () Bool)

(assert (=> b!158036 m!145563))

(declare-fun m!145565 () Bool)

(assert (=> b!158036 m!145565))

(assert (=> b!158036 m!145557))

(assert (=> b!158036 m!145553))

(assert (=> b!158036 m!145565))

(declare-fun m!145567 () Bool)

(assert (=> b!158029 m!145567))

(declare-fun m!145569 () Bool)

(assert (=> bm!6600 m!145569))

(assert (=> b!158035 m!145281))

(assert (=> b!157841 d!38405))

(declare-fun b!158052 () Bool)

(declare-fun res!71913 () Bool)

(declare-fun e!94939 () Bool)

(assert (=> b!158052 (=> (not res!71913) (not e!94939))))

(declare-fun lt!47145 () List!2738)

(assert (=> b!158052 (= res!71913 (= (size!2305 lt!47145) (+ (size!2305 lt!47050) (size!2305 lt!47058))))))

(declare-fun b!158053 () Bool)

(assert (=> b!158053 (= e!94939 (or (not (= lt!47058 Nil!2728)) (= lt!47145 lt!47050)))))

(declare-fun b!158051 () Bool)

(declare-fun e!94940 () List!2738)

(assert (=> b!158051 (= e!94940 (Cons!2728 (h!8125 lt!47050) (++!600 (t!25602 lt!47050) lt!47058)))))

(declare-fun b!158050 () Bool)

(assert (=> b!158050 (= e!94940 lt!47058)))

(declare-fun d!38415 () Bool)

(assert (=> d!38415 e!94939))

(declare-fun res!71914 () Bool)

(assert (=> d!38415 (=> (not res!71914) (not e!94939))))

(assert (=> d!38415 (= res!71914 (= (content!378 lt!47145) ((_ map or) (content!378 lt!47050) (content!378 lt!47058))))))

(assert (=> d!38415 (= lt!47145 e!94940)))

(declare-fun c!31721 () Bool)

(assert (=> d!38415 (= c!31721 ((_ is Nil!2728) lt!47050))))

(assert (=> d!38415 (= (++!600 lt!47050 lt!47058) lt!47145)))

(assert (= (and d!38415 c!31721) b!158050))

(assert (= (and d!38415 (not c!31721)) b!158051))

(assert (= (and d!38415 res!71914) b!158052))

(assert (= (and b!158052 res!71913) b!158053))

(declare-fun m!145571 () Bool)

(assert (=> b!158052 m!145571))

(assert (=> b!158052 m!145461))

(assert (=> b!158052 m!145431))

(declare-fun m!145573 () Bool)

(assert (=> b!158051 m!145573))

(declare-fun m!145575 () Bool)

(assert (=> d!38415 m!145575))

(assert (=> d!38415 m!145467))

(assert (=> d!38415 m!145439))

(assert (=> b!157841 d!38415))

(declare-fun d!38417 () Bool)

(assert (=> d!38417 (= (list!973 (charsOf!134 (h!8126 tokens!465))) (list!977 (c!31675 (charsOf!134 (h!8126 tokens!465)))))))

(declare-fun bs!14691 () Bool)

(assert (= bs!14691 d!38417))

(declare-fun m!145577 () Bool)

(assert (=> bs!14691 m!145577))

(assert (=> b!157841 d!38417))

(declare-fun d!38419 () Bool)

(declare-fun lt!47146 () BalanceConc!1568)

(assert (=> d!38419 (= (list!973 lt!47146) (originalCharacters!522 (h!8126 tokens!465)))))

(assert (=> d!38419 (= lt!47146 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))))

(assert (=> d!38419 (= (charsOf!134 (h!8126 tokens!465)) lt!47146)))

(declare-fun b_lambda!3165 () Bool)

(assert (=> (not b_lambda!3165) (not d!38419)))

(declare-fun t!25630 () Bool)

(declare-fun tb!5641 () Bool)

(assert (=> (and b!157823 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465))))) t!25630) tb!5641))

(declare-fun b!158054 () Bool)

(declare-fun e!94941 () Bool)

(declare-fun tp!80900 () Bool)

(assert (=> b!158054 (= e!94941 (and (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))) tp!80900))))

(declare-fun result!8192 () Bool)

(assert (=> tb!5641 (= result!8192 (and (inv!3542 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))) e!94941))))

(assert (= tb!5641 b!158054))

(declare-fun m!145579 () Bool)

(assert (=> b!158054 m!145579))

(declare-fun m!145581 () Bool)

(assert (=> tb!5641 m!145581))

(assert (=> d!38419 t!25630))

(declare-fun b_and!9623 () Bool)

(assert (= b_and!9617 (and (=> t!25630 result!8192) b_and!9623)))

(declare-fun t!25632 () Bool)

(declare-fun tb!5643 () Bool)

(assert (=> (and b!157844 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465))))) t!25632) tb!5643))

(declare-fun result!8194 () Bool)

(assert (= result!8194 result!8192))

(assert (=> d!38419 t!25632))

(declare-fun b_and!9625 () Bool)

(assert (= b_and!9619 (and (=> t!25632 result!8194) b_and!9625)))

(declare-fun t!25634 () Bool)

(declare-fun tb!5645 () Bool)

(assert (=> (and b!157830 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465))))) t!25634) tb!5645))

(declare-fun result!8196 () Bool)

(assert (= result!8196 result!8192))

(assert (=> d!38419 t!25634))

(declare-fun b_and!9627 () Bool)

(assert (= b_and!9621 (and (=> t!25634 result!8196) b_and!9627)))

(declare-fun m!145583 () Bool)

(assert (=> d!38419 m!145583))

(declare-fun m!145585 () Bool)

(assert (=> d!38419 m!145585))

(assert (=> b!157841 d!38419))

(declare-fun d!38421 () Bool)

(declare-fun lt!47149 () Int)

(declare-fun size!2308 (List!2739) Int)

(assert (=> d!38421 (= lt!47149 (size!2308 (list!976 lt!47052)))))

(declare-fun size!2309 (Conc!781) Int)

(assert (=> d!38421 (= lt!47149 (size!2309 (c!31677 lt!47052)))))

(assert (=> d!38421 (= (size!2303 lt!47052) lt!47149)))

(declare-fun bs!14692 () Bool)

(assert (= bs!14692 d!38421))

(declare-fun m!145587 () Bool)

(assert (=> bs!14692 m!145587))

(assert (=> bs!14692 m!145587))

(declare-fun m!145589 () Bool)

(assert (=> bs!14692 m!145589))

(declare-fun m!145591 () Bool)

(assert (=> bs!14692 m!145591))

(assert (=> b!157841 d!38421))

(declare-fun bs!14693 () Bool)

(declare-fun d!38423 () Bool)

(assert (= bs!14693 (and d!38423 b!157824)))

(declare-fun lambda!4253 () Int)

(assert (=> bs!14693 (not (= lambda!4253 lambda!4232))))

(declare-fun bs!14694 () Bool)

(assert (= bs!14694 (and d!38423 b!158036)))

(assert (=> bs!14694 (= lambda!4253 lambda!4246)))

(declare-fun b!158076 () Bool)

(declare-fun e!94955 () Bool)

(assert (=> b!158076 (= e!94955 true)))

(declare-fun b!158075 () Bool)

(declare-fun e!94954 () Bool)

(assert (=> b!158075 (= e!94954 e!94955)))

(declare-fun b!158074 () Bool)

(declare-fun e!94953 () Bool)

(assert (=> b!158074 (= e!94953 e!94954)))

(assert (=> d!38423 e!94953))

(assert (= b!158075 b!158076))

(assert (= b!158074 b!158075))

(assert (= (and d!38423 ((_ is Cons!2730) rules!1920)) b!158074))

(assert (=> b!158076 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4253))))

(assert (=> b!158076 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4253))))

(assert (=> d!38423 true))

(declare-fun e!94952 () Bool)

(assert (=> d!38423 e!94952))

(declare-fun res!71917 () Bool)

(assert (=> d!38423 (=> (not res!71917) (not e!94952))))

(declare-fun lt!47164 () Bool)

(assert (=> d!38423 (= res!71917 (= lt!47164 (forall!489 (list!976 lt!47052) lambda!4253)))))

(declare-fun forall!491 (BalanceConc!1570 Int) Bool)

(assert (=> d!38423 (= lt!47164 (forall!491 lt!47052 lambda!4253))))

(assert (=> d!38423 (not (isEmpty!1094 rules!1920))))

(assert (=> d!38423 (= (rulesProduceEachTokenIndividually!157 thiss!17480 rules!1920 lt!47052) lt!47164)))

(declare-fun b!158073 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!99 (LexerInterface!365 List!2740 List!2739) Bool)

(assert (=> b!158073 (= e!94952 (= lt!47164 (rulesProduceEachTokenIndividuallyList!99 thiss!17480 rules!1920 (list!976 lt!47052))))))

(assert (= (and d!38423 res!71917) b!158073))

(assert (=> d!38423 m!145587))

(assert (=> d!38423 m!145587))

(declare-fun m!145593 () Bool)

(assert (=> d!38423 m!145593))

(declare-fun m!145595 () Bool)

(assert (=> d!38423 m!145595))

(assert (=> d!38423 m!145261))

(assert (=> b!158073 m!145587))

(assert (=> b!158073 m!145587))

(declare-fun m!145597 () Bool)

(assert (=> b!158073 m!145597))

(assert (=> b!157829 d!38423))

(declare-fun d!38425 () Bool)

(declare-fun res!71918 () Bool)

(declare-fun e!94958 () Bool)

(assert (=> d!38425 (=> (not res!71918) (not e!94958))))

(assert (=> d!38425 (= res!71918 (not (isEmpty!1097 (originalCharacters!522 (h!8126 tokens!465)))))))

(assert (=> d!38425 (= (inv!3537 (h!8126 tokens!465)) e!94958)))

(declare-fun b!158081 () Bool)

(declare-fun res!71919 () Bool)

(assert (=> b!158081 (=> (not res!71919) (not e!94958))))

(assert (=> b!158081 (= res!71919 (= (originalCharacters!522 (h!8126 tokens!465)) (list!973 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))))))

(declare-fun b!158082 () Bool)

(assert (=> b!158082 (= e!94958 (= (size!2302 (h!8126 tokens!465)) (size!2305 (originalCharacters!522 (h!8126 tokens!465)))))))

(assert (= (and d!38425 res!71918) b!158081))

(assert (= (and b!158081 res!71919) b!158082))

(declare-fun b_lambda!3167 () Bool)

(assert (=> (not b_lambda!3167) (not b!158081)))

(assert (=> b!158081 t!25630))

(declare-fun b_and!9629 () Bool)

(assert (= b_and!9623 (and (=> t!25630 result!8192) b_and!9629)))

(assert (=> b!158081 t!25632))

(declare-fun b_and!9631 () Bool)

(assert (= b_and!9625 (and (=> t!25632 result!8194) b_and!9631)))

(assert (=> b!158081 t!25634))

(declare-fun b_and!9633 () Bool)

(assert (= b_and!9627 (and (=> t!25634 result!8196) b_and!9633)))

(declare-fun m!145599 () Bool)

(assert (=> d!38425 m!145599))

(assert (=> b!158081 m!145585))

(assert (=> b!158081 m!145585))

(declare-fun m!145601 () Bool)

(assert (=> b!158081 m!145601))

(declare-fun m!145603 () Bool)

(assert (=> b!158082 m!145603))

(assert (=> b!157828 d!38425))

(declare-fun d!38427 () Bool)

(assert (=> d!38427 (= (isEmpty!1094 rules!1920) ((_ is Nil!2730) rules!1920))))

(assert (=> b!157839 d!38427))

(declare-fun d!38429 () Bool)

(declare-fun res!71924 () Bool)

(declare-fun e!94963 () Bool)

(assert (=> d!38429 (=> res!71924 e!94963)))

(assert (=> d!38429 (= res!71924 (not ((_ is Cons!2730) rules!1920)))))

(assert (=> d!38429 (= (sepAndNonSepRulesDisjointChars!68 rules!1920 rules!1920) e!94963)))

(declare-fun b!158087 () Bool)

(declare-fun e!94964 () Bool)

(assert (=> b!158087 (= e!94963 e!94964)))

(declare-fun res!71925 () Bool)

(assert (=> b!158087 (=> (not res!71925) (not e!94964))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!26 (Rule!758 List!2740) Bool)

(assert (=> b!158087 (= res!71925 (ruleDisjointCharsFromAllFromOtherType!26 (h!8127 rules!1920) rules!1920))))

(declare-fun b!158088 () Bool)

(assert (=> b!158088 (= e!94964 (sepAndNonSepRulesDisjointChars!68 rules!1920 (t!25604 rules!1920)))))

(assert (= (and d!38429 (not res!71924)) b!158087))

(assert (= (and b!158087 res!71925) b!158088))

(declare-fun m!145605 () Bool)

(assert (=> b!158087 m!145605))

(declare-fun m!145607 () Bool)

(assert (=> b!158088 m!145607))

(assert (=> b!157838 d!38429))

(declare-fun d!38431 () Bool)

(declare-fun res!71928 () Bool)

(declare-fun e!94975 () Bool)

(assert (=> d!38431 (=> (not res!71928) (not e!94975))))

(declare-fun rulesValid!133 (LexerInterface!365 List!2740) Bool)

(assert (=> d!38431 (= res!71928 (rulesValid!133 thiss!17480 rules!1920))))

(assert (=> d!38431 (= (rulesInvariant!331 thiss!17480 rules!1920) e!94975)))

(declare-fun b!158104 () Bool)

(declare-datatypes ((List!2742 0))(
  ( (Nil!2732) (Cons!2732 (h!8129 String!3585) (t!25668 List!2742)) )
))
(declare-fun noDuplicateTag!133 (LexerInterface!365 List!2740 List!2742) Bool)

(assert (=> b!158104 (= e!94975 (noDuplicateTag!133 thiss!17480 rules!1920 Nil!2732))))

(assert (= (and d!38431 res!71928) b!158104))

(declare-fun m!145609 () Bool)

(assert (=> d!38431 m!145609))

(declare-fun m!145611 () Bool)

(assert (=> b!158104 m!145611))

(assert (=> b!157827 d!38431))

(declare-fun bs!14699 () Bool)

(declare-fun d!38433 () Bool)

(assert (= bs!14699 (and d!38433 b!157824)))

(declare-fun lambda!4255 () Int)

(assert (=> bs!14699 (not (= lambda!4255 lambda!4232))))

(declare-fun bs!14700 () Bool)

(assert (= bs!14700 (and d!38433 b!158036)))

(assert (=> bs!14700 (= lambda!4255 lambda!4246)))

(declare-fun bs!14701 () Bool)

(assert (= bs!14701 (and d!38433 d!38423)))

(assert (=> bs!14701 (= lambda!4255 lambda!4253)))

(declare-fun b!158108 () Bool)

(declare-fun e!94979 () Bool)

(assert (=> b!158108 (= e!94979 true)))

(declare-fun b!158107 () Bool)

(declare-fun e!94978 () Bool)

(assert (=> b!158107 (= e!94978 e!94979)))

(declare-fun b!158106 () Bool)

(declare-fun e!94977 () Bool)

(assert (=> b!158106 (= e!94977 e!94978)))

(assert (=> d!38433 e!94977))

(assert (= b!158107 b!158108))

(assert (= b!158106 b!158107))

(assert (= (and d!38433 ((_ is Cons!2730) rules!1920)) b!158106))

(assert (=> b!158108 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4255))))

(assert (=> b!158108 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4255))))

(assert (=> d!38433 true))

(declare-fun e!94976 () Bool)

(assert (=> d!38433 e!94976))

(declare-fun res!71929 () Bool)

(assert (=> d!38433 (=> (not res!71929) (not e!94976))))

(declare-fun lt!47171 () Bool)

(assert (=> d!38433 (= res!71929 (= lt!47171 (forall!489 (list!976 lt!47053) lambda!4255)))))

(assert (=> d!38433 (= lt!47171 (forall!491 lt!47053 lambda!4255))))

(assert (=> d!38433 (not (isEmpty!1094 rules!1920))))

(assert (=> d!38433 (= (rulesProduceEachTokenIndividually!157 thiss!17480 rules!1920 lt!47053) lt!47171)))

(declare-fun b!158105 () Bool)

(assert (=> b!158105 (= e!94976 (= lt!47171 (rulesProduceEachTokenIndividuallyList!99 thiss!17480 rules!1920 (list!976 lt!47053))))))

(assert (= (and d!38433 res!71929) b!158105))

(declare-fun m!145629 () Bool)

(assert (=> d!38433 m!145629))

(assert (=> d!38433 m!145629))

(declare-fun m!145631 () Bool)

(assert (=> d!38433 m!145631))

(declare-fun m!145633 () Bool)

(assert (=> d!38433 m!145633))

(assert (=> d!38433 m!145261))

(assert (=> b!158105 m!145629))

(assert (=> b!158105 m!145629))

(declare-fun m!145637 () Bool)

(assert (=> b!158105 m!145637))

(assert (=> b!157826 d!38433))

(declare-fun d!38435 () Bool)

(assert (=> d!38435 (= (seqFromList!335 tokens!465) (fromListB!141 tokens!465))))

(declare-fun bs!14702 () Bool)

(assert (= bs!14702 d!38435))

(declare-fun m!145643 () Bool)

(assert (=> bs!14702 m!145643))

(assert (=> b!157826 d!38435))

(declare-fun d!38439 () Bool)

(assert (=> d!38439 (= (list!973 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0)) (list!977 (c!31675 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0))))))

(declare-fun bs!14703 () Bool)

(assert (= bs!14703 d!38439))

(declare-fun m!145645 () Bool)

(assert (=> bs!14703 m!145645))

(assert (=> b!157836 d!38439))

(declare-fun bs!14721 () Bool)

(declare-fun d!38441 () Bool)

(assert (= bs!14721 (and d!38441 b!157824)))

(declare-fun lambda!4262 () Int)

(assert (=> bs!14721 (= lambda!4262 lambda!4232)))

(declare-fun bs!14722 () Bool)

(assert (= bs!14722 (and d!38441 b!158036)))

(assert (=> bs!14722 (not (= lambda!4262 lambda!4246))))

(declare-fun bs!14723 () Bool)

(assert (= bs!14723 (and d!38441 d!38423)))

(assert (=> bs!14723 (not (= lambda!4262 lambda!4253))))

(declare-fun bs!14724 () Bool)

(assert (= bs!14724 (and d!38441 d!38433)))

(assert (=> bs!14724 (not (= lambda!4262 lambda!4255))))

(declare-fun bs!14725 () Bool)

(declare-fun b!158244 () Bool)

(assert (= bs!14725 (and b!158244 b!157824)))

(declare-fun lambda!4263 () Int)

(assert (=> bs!14725 (not (= lambda!4263 lambda!4232))))

(declare-fun bs!14726 () Bool)

(assert (= bs!14726 (and b!158244 d!38441)))

(assert (=> bs!14726 (not (= lambda!4263 lambda!4262))))

(declare-fun bs!14727 () Bool)

(assert (= bs!14727 (and b!158244 d!38433)))

(assert (=> bs!14727 (= lambda!4263 lambda!4255)))

(declare-fun bs!14728 () Bool)

(assert (= bs!14728 (and b!158244 b!158036)))

(assert (=> bs!14728 (= lambda!4263 lambda!4246)))

(declare-fun bs!14729 () Bool)

(assert (= bs!14729 (and b!158244 d!38423)))

(assert (=> bs!14729 (= lambda!4263 lambda!4253)))

(declare-fun b!158251 () Bool)

(declare-fun e!95078 () Bool)

(assert (=> b!158251 (= e!95078 true)))

(declare-fun b!158250 () Bool)

(declare-fun e!95077 () Bool)

(assert (=> b!158250 (= e!95077 e!95078)))

(declare-fun b!158249 () Bool)

(declare-fun e!95076 () Bool)

(assert (=> b!158249 (= e!95076 e!95077)))

(assert (=> b!158244 e!95076))

(assert (= b!158250 b!158251))

(assert (= b!158249 b!158250))

(assert (= (and b!158244 ((_ is Cons!2730) rules!1920)) b!158249))

(assert (=> b!158251 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4263))))

(assert (=> b!158251 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4263))))

(assert (=> b!158244 true))

(declare-fun b!158238 () Bool)

(declare-fun e!95072 () BalanceConc!1568)

(assert (=> b!158238 (= e!95072 (BalanceConc!1569 Empty!780))))

(declare-fun b!158239 () Bool)

(declare-fun e!95074 () Bool)

(declare-datatypes ((tuple2!2642 0))(
  ( (tuple2!2643 (_1!1537 Token!702) (_2!1537 BalanceConc!1568)) )
))
(declare-datatypes ((Option!265 0))(
  ( (None!264) (Some!264 (v!13663 tuple2!2642)) )
))
(declare-fun lt!47231 () Option!265)

(assert (=> b!158239 (= e!95074 (= (_1!1537 (v!13663 lt!47231)) (apply!373 lt!47053 0)))))

(declare-fun lt!47223 () BalanceConc!1568)

(declare-fun dropList!76 (BalanceConc!1570 Int) List!2739)

(assert (=> d!38441 (= (list!973 lt!47223) (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (dropList!76 lt!47053 0) separatorToken!170))))

(assert (=> d!38441 (= lt!47223 e!95072)))

(declare-fun c!31759 () Bool)

(assert (=> d!38441 (= c!31759 (>= 0 (size!2303 lt!47053)))))

(declare-fun lt!47224 () Unit!2184)

(declare-fun lemmaContentSubsetPreservesForall!20 (List!2739 List!2739 Int) Unit!2184)

(assert (=> d!38441 (= lt!47224 (lemmaContentSubsetPreservesForall!20 (list!976 lt!47053) (dropList!76 lt!47053 0) lambda!4262))))

(declare-fun e!95070 () Bool)

(assert (=> d!38441 e!95070))

(declare-fun res!71961 () Bool)

(assert (=> d!38441 (=> (not res!71961) (not e!95070))))

(assert (=> d!38441 (= res!71961 (>= 0 0))))

(assert (=> d!38441 (= (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0) lt!47223)))

(declare-fun b!158240 () Bool)

(declare-fun e!95071 () BalanceConc!1568)

(assert (=> b!158240 (= e!95071 (BalanceConc!1569 Empty!780))))

(declare-fun call!6641 () Token!702)

(assert (=> b!158240 (= (print!102 thiss!17480 (singletonSeq!35 call!6641)) (printTailRec!65 thiss!17480 (singletonSeq!35 call!6641) 0 (BalanceConc!1569 Empty!780)))))

(declare-fun lt!47228 () Unit!2184)

(declare-fun Unit!2194 () Unit!2184)

(assert (=> b!158240 (= lt!47228 Unit!2194)))

(declare-fun lt!47233 () Unit!2184)

(declare-fun lt!47236 () BalanceConc!1568)

(declare-fun call!6638 () BalanceConc!1568)

(assert (=> b!158240 (= lt!47233 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 (list!973 call!6638) (list!973 lt!47236)))))

(assert (=> b!158240 false))

(declare-fun lt!47227 () Unit!2184)

(declare-fun Unit!2195 () Unit!2184)

(assert (=> b!158240 (= lt!47227 Unit!2195)))

(declare-fun b!158241 () Bool)

(declare-fun e!95075 () BalanceConc!1568)

(assert (=> b!158241 (= e!95075 (charsOf!134 call!6641))))

(declare-fun c!31758 () Bool)

(declare-fun call!6639 () Token!702)

(declare-fun bm!6632 () Bool)

(declare-fun call!6637 () BalanceConc!1568)

(declare-fun c!31756 () Bool)

(assert (=> bm!6632 (= call!6637 (charsOf!134 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641))))))

(declare-fun b!158242 () Bool)

(declare-fun e!95073 () Bool)

(assert (=> b!158242 (= c!31758 e!95073)))

(declare-fun res!71962 () Bool)

(assert (=> b!158242 (=> (not res!71962) (not e!95073))))

(assert (=> b!158242 (= res!71962 ((_ is Some!264) lt!47231))))

(declare-fun e!95069 () BalanceConc!1568)

(assert (=> b!158242 (= e!95069 e!95071)))

(declare-fun bm!6633 () Bool)

(assert (=> bm!6633 (= call!6641 call!6639)))

(declare-fun bm!6634 () Bool)

(assert (=> bm!6634 (= call!6638 call!6637)))

(declare-fun b!158243 () Bool)

(declare-fun call!6640 () BalanceConc!1568)

(assert (=> b!158243 (= e!95069 call!6640)))

(assert (=> b!158244 (= e!95072 e!95069)))

(declare-fun lt!47232 () List!2739)

(assert (=> b!158244 (= lt!47232 (list!976 lt!47053))))

(declare-fun lt!47226 () Unit!2184)

(declare-fun lemmaDropApply!116 (List!2739 Int) Unit!2184)

(assert (=> b!158244 (= lt!47226 (lemmaDropApply!116 lt!47232 0))))

(declare-fun head!590 (List!2739) Token!702)

(declare-fun drop!129 (List!2739 Int) List!2739)

(declare-fun apply!374 (List!2739 Int) Token!702)

(assert (=> b!158244 (= (head!590 (drop!129 lt!47232 0)) (apply!374 lt!47232 0))))

(declare-fun lt!47230 () Unit!2184)

(assert (=> b!158244 (= lt!47230 lt!47226)))

(declare-fun lt!47229 () List!2739)

(assert (=> b!158244 (= lt!47229 (list!976 lt!47053))))

(declare-fun lt!47234 () Unit!2184)

(declare-fun lemmaDropTail!108 (List!2739 Int) Unit!2184)

(assert (=> b!158244 (= lt!47234 (lemmaDropTail!108 lt!47229 0))))

(declare-fun tail!330 (List!2739) List!2739)

(assert (=> b!158244 (= (tail!330 (drop!129 lt!47229 0)) (drop!129 lt!47229 (+ 0 1)))))

(declare-fun lt!47235 () Unit!2184)

(assert (=> b!158244 (= lt!47235 lt!47234)))

(declare-fun lt!47225 () Unit!2184)

(assert (=> b!158244 (= lt!47225 (forallContained!60 (list!976 lt!47053) lambda!4263 (apply!373 lt!47053 0)))))

(assert (=> b!158244 (= lt!47236 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!76 (LexerInterface!365 List!2740 BalanceConc!1568) Option!265)

(declare-fun ++!602 (BalanceConc!1568 BalanceConc!1568) BalanceConc!1568)

(assert (=> b!158244 (= lt!47231 (maxPrefixZipperSequence!76 thiss!17480 rules!1920 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))

(declare-fun res!71963 () Bool)

(assert (=> b!158244 (= res!71963 ((_ is Some!264) lt!47231))))

(assert (=> b!158244 (=> (not res!71963) (not e!95074))))

(assert (=> b!158244 (= c!31756 e!95074)))

(declare-fun b!158245 () Bool)

(assert (=> b!158245 (= e!95070 (<= 0 (size!2303 lt!47053)))))

(declare-fun bm!6635 () Bool)

(declare-fun c!31757 () Bool)

(assert (=> bm!6635 (= c!31757 c!31756)))

(assert (=> bm!6635 (= call!6640 (++!602 e!95075 (ite c!31756 lt!47236 call!6638)))))

(declare-fun b!158246 () Bool)

(assert (=> b!158246 (= e!95073 (not (= (_1!1537 (v!13663 lt!47231)) call!6639)))))

(declare-fun b!158247 () Bool)

(assert (=> b!158247 (= e!95071 (++!602 call!6640 lt!47236))))

(declare-fun b!158248 () Bool)

(assert (=> b!158248 (= e!95075 call!6637)))

(declare-fun bm!6636 () Bool)

(assert (=> bm!6636 (= call!6639 (apply!373 lt!47053 0))))

(assert (= (and d!38441 res!71961) b!158245))

(assert (= (and d!38441 c!31759) b!158238))

(assert (= (and d!38441 (not c!31759)) b!158244))

(assert (= (and b!158244 res!71963) b!158239))

(assert (= (and b!158244 c!31756) b!158243))

(assert (= (and b!158244 (not c!31756)) b!158242))

(assert (= (and b!158242 res!71962) b!158246))

(assert (= (and b!158242 c!31758) b!158247))

(assert (= (and b!158242 (not c!31758)) b!158240))

(assert (= (or b!158247 b!158240) bm!6633))

(assert (= (or b!158247 b!158240) bm!6634))

(assert (= (or b!158243 bm!6633 b!158246) bm!6636))

(assert (= (or b!158243 bm!6634) bm!6632))

(assert (= (or b!158243 b!158247) bm!6635))

(assert (= (and bm!6635 c!31757) b!158248))

(assert (= (and bm!6635 (not c!31757)) b!158241))

(declare-fun m!145781 () Bool)

(assert (=> b!158247 m!145781))

(assert (=> d!38441 m!145629))

(assert (=> d!38441 m!145629))

(declare-fun m!145783 () Bool)

(assert (=> d!38441 m!145783))

(declare-fun m!145785 () Bool)

(assert (=> d!38441 m!145785))

(assert (=> d!38441 m!145783))

(declare-fun m!145787 () Bool)

(assert (=> d!38441 m!145787))

(assert (=> d!38441 m!145783))

(declare-fun m!145789 () Bool)

(assert (=> d!38441 m!145789))

(declare-fun m!145791 () Bool)

(assert (=> d!38441 m!145791))

(declare-fun m!145793 () Bool)

(assert (=> b!158244 m!145793))

(assert (=> b!158244 m!145629))

(declare-fun m!145795 () Bool)

(assert (=> b!158244 m!145795))

(declare-fun m!145797 () Bool)

(assert (=> b!158244 m!145797))

(assert (=> b!158244 m!145795))

(declare-fun m!145799 () Bool)

(assert (=> b!158244 m!145799))

(declare-fun m!145801 () Bool)

(assert (=> b!158244 m!145801))

(declare-fun m!145803 () Bool)

(assert (=> b!158244 m!145803))

(declare-fun m!145805 () Bool)

(assert (=> b!158244 m!145805))

(assert (=> b!158244 m!145801))

(declare-fun m!145807 () Bool)

(assert (=> b!158244 m!145807))

(declare-fun m!145809 () Bool)

(assert (=> b!158244 m!145809))

(declare-fun m!145811 () Bool)

(assert (=> b!158244 m!145811))

(assert (=> b!158244 m!145795))

(assert (=> b!158244 m!145799))

(declare-fun m!145813 () Bool)

(assert (=> b!158244 m!145813))

(assert (=> b!158244 m!145803))

(assert (=> b!158244 m!145629))

(assert (=> b!158244 m!145809))

(declare-fun m!145815 () Bool)

(assert (=> b!158244 m!145815))

(declare-fun m!145817 () Bool)

(assert (=> b!158244 m!145817))

(declare-fun m!145819 () Bool)

(assert (=> b!158244 m!145819))

(assert (=> b!158239 m!145795))

(declare-fun m!145821 () Bool)

(assert (=> bm!6632 m!145821))

(declare-fun m!145823 () Bool)

(assert (=> b!158241 m!145823))

(declare-fun m!145825 () Bool)

(assert (=> b!158240 m!145825))

(declare-fun m!145827 () Bool)

(assert (=> b!158240 m!145827))

(declare-fun m!145829 () Bool)

(assert (=> b!158240 m!145829))

(declare-fun m!145831 () Bool)

(assert (=> b!158240 m!145831))

(assert (=> b!158240 m!145827))

(assert (=> b!158240 m!145825))

(assert (=> b!158240 m!145831))

(declare-fun m!145833 () Bool)

(assert (=> b!158240 m!145833))

(assert (=> b!158240 m!145827))

(declare-fun m!145835 () Bool)

(assert (=> b!158240 m!145835))

(assert (=> bm!6636 m!145795))

(assert (=> b!158245 m!145789))

(declare-fun m!145837 () Bool)

(assert (=> bm!6635 m!145837))

(assert (=> b!157836 d!38441))

(declare-fun bs!14730 () Bool)

(declare-fun b!158261 () Bool)

(assert (= bs!14730 (and b!158261 b!157824)))

(declare-fun lambda!4264 () Int)

(assert (=> bs!14730 (not (= lambda!4264 lambda!4232))))

(declare-fun bs!14731 () Bool)

(assert (= bs!14731 (and b!158261 d!38441)))

(assert (=> bs!14731 (not (= lambda!4264 lambda!4262))))

(declare-fun bs!14732 () Bool)

(assert (= bs!14732 (and b!158261 b!158244)))

(assert (=> bs!14732 (= lambda!4264 lambda!4263)))

(declare-fun bs!14733 () Bool)

(assert (= bs!14733 (and b!158261 d!38433)))

(assert (=> bs!14733 (= lambda!4264 lambda!4255)))

(declare-fun bs!14734 () Bool)

(assert (= bs!14734 (and b!158261 b!158036)))

(assert (=> bs!14734 (= lambda!4264 lambda!4246)))

(declare-fun bs!14735 () Bool)

(assert (= bs!14735 (and b!158261 d!38423)))

(assert (=> bs!14735 (= lambda!4264 lambda!4253)))

(declare-fun b!158264 () Bool)

(declare-fun e!95086 () Bool)

(assert (=> b!158264 (= e!95086 true)))

(declare-fun b!158263 () Bool)

(declare-fun e!95085 () Bool)

(assert (=> b!158263 (= e!95085 e!95086)))

(declare-fun b!158262 () Bool)

(declare-fun e!95084 () Bool)

(assert (=> b!158262 (= e!95084 e!95085)))

(assert (=> b!158261 e!95084))

(assert (= b!158263 b!158264))

(assert (= b!158262 b!158263))

(assert (= (and b!158261 ((_ is Cons!2730) rules!1920)) b!158262))

(assert (=> b!158264 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4264))))

(assert (=> b!158264 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4264))))

(assert (=> b!158261 true))

(declare-fun b!158252 () Bool)

(declare-fun c!31761 () Bool)

(declare-fun lt!47240 () Option!264)

(assert (=> b!158252 (= c!31761 (and ((_ is Some!263) lt!47240) (not (= (_1!1536 (v!13662 lt!47240)) (h!8126 tokens!465)))))))

(declare-fun e!95081 () List!2738)

(declare-fun e!95080 () List!2738)

(assert (=> b!158252 (= e!95081 e!95080)))

(declare-fun d!38481 () Bool)

(declare-fun c!31760 () Bool)

(assert (=> d!38481 (= c!31760 ((_ is Cons!2729) tokens!465))))

(declare-fun e!95082 () List!2738)

(assert (=> d!38481 (= (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!95082)))

(declare-fun b!158253 () Bool)

(declare-fun call!6642 () List!2738)

(assert (=> b!158253 (= e!95081 call!6642)))

(declare-fun bm!6637 () Bool)

(declare-fun c!31764 () Bool)

(declare-fun c!31762 () Bool)

(assert (=> bm!6637 (= c!31764 c!31762)))

(declare-fun call!6644 () List!2738)

(declare-fun lt!47239 () List!2738)

(declare-fun e!95079 () List!2738)

(assert (=> bm!6637 (= call!6642 (++!600 e!95079 (ite c!31762 lt!47239 call!6644)))))

(declare-fun b!158254 () Bool)

(assert (=> b!158254 (= e!95080 (++!600 call!6642 lt!47239))))

(declare-fun bm!6638 () Bool)

(declare-fun call!6643 () BalanceConc!1568)

(declare-fun call!6645 () BalanceConc!1568)

(assert (=> bm!6638 (= call!6643 call!6645)))

(declare-fun b!158255 () Bool)

(assert (=> b!158255 (= e!95080 Nil!2728)))

(assert (=> b!158255 (= (print!102 thiss!17480 (singletonSeq!35 (h!8126 tokens!465))) (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 tokens!465)) 0 (BalanceConc!1569 Empty!780)))))

(declare-fun lt!47242 () Unit!2184)

(declare-fun Unit!2196 () Unit!2184)

(assert (=> b!158255 (= lt!47242 Unit!2196)))

(declare-fun lt!47238 () Unit!2184)

(assert (=> b!158255 (= lt!47238 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 call!6644 lt!47239))))

(assert (=> b!158255 false))

(declare-fun lt!47241 () Unit!2184)

(declare-fun Unit!2197 () Unit!2184)

(assert (=> b!158255 (= lt!47241 Unit!2197)))

(declare-fun bm!6639 () Bool)

(declare-fun call!6646 () List!2738)

(assert (=> bm!6639 (= call!6644 call!6646)))

(declare-fun c!31763 () Bool)

(assert (=> bm!6639 (= c!31763 c!31761)))

(declare-fun bm!6640 () Bool)

(declare-fun e!95083 () BalanceConc!1568)

(assert (=> bm!6640 (= call!6646 (list!973 (ite c!31762 call!6645 e!95083)))))

(declare-fun bm!6641 () Bool)

(assert (=> bm!6641 (= call!6645 (charsOf!134 (h!8126 tokens!465)))))

(declare-fun b!158256 () Bool)

(assert (=> b!158256 (= e!95079 call!6646)))

(declare-fun b!158257 () Bool)

(assert (=> b!158257 (= e!95082 Nil!2728)))

(declare-fun b!158258 () Bool)

(assert (=> b!158258 (= e!95083 call!6643)))

(declare-fun b!158259 () Bool)

(assert (=> b!158259 (= e!95079 (list!973 call!6643))))

(declare-fun b!158260 () Bool)

(assert (=> b!158260 (= e!95083 (charsOf!134 separatorToken!170))))

(assert (=> b!158261 (= e!95082 e!95081)))

(declare-fun lt!47237 () Unit!2184)

(assert (=> b!158261 (= lt!47237 (forallContained!60 tokens!465 lambda!4264 (h!8126 tokens!465)))))

(assert (=> b!158261 (= lt!47239 (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (t!25603 tokens!465) separatorToken!170))))

(assert (=> b!158261 (= lt!47240 (maxPrefix!117 thiss!17480 rules!1920 (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239)))))

(assert (=> b!158261 (= c!31762 (and ((_ is Some!263) lt!47240) (= (_1!1536 (v!13662 lt!47240)) (h!8126 tokens!465))))))

(assert (= (and d!38481 c!31760) b!158261))

(assert (= (and d!38481 (not c!31760)) b!158257))

(assert (= (and b!158261 c!31762) b!158253))

(assert (= (and b!158261 (not c!31762)) b!158252))

(assert (= (and b!158252 c!31761) b!158254))

(assert (= (and b!158252 (not c!31761)) b!158255))

(assert (= (or b!158254 b!158255) bm!6638))

(assert (= (or b!158254 b!158255) bm!6639))

(assert (= (and bm!6639 c!31763) b!158260))

(assert (= (and bm!6639 (not c!31763)) b!158258))

(assert (= (or b!158253 bm!6638) bm!6641))

(assert (= (or b!158253 bm!6639) bm!6640))

(assert (= (or b!158253 b!158254) bm!6637))

(assert (= (and bm!6637 c!31764) b!158256))

(assert (= (and bm!6637 (not c!31764)) b!158259))

(declare-fun m!145839 () Bool)

(assert (=> b!158255 m!145839))

(assert (=> b!158255 m!145839))

(declare-fun m!145841 () Bool)

(assert (=> b!158255 m!145841))

(assert (=> b!158255 m!145839))

(declare-fun m!145843 () Bool)

(assert (=> b!158255 m!145843))

(declare-fun m!145845 () Bool)

(assert (=> b!158255 m!145845))

(declare-fun m!145847 () Bool)

(assert (=> b!158259 m!145847))

(assert (=> bm!6641 m!145293))

(declare-fun m!145849 () Bool)

(assert (=> bm!6637 m!145849))

(assert (=> b!158261 m!145293))

(declare-fun m!145851 () Bool)

(assert (=> b!158261 m!145851))

(declare-fun m!145853 () Bool)

(assert (=> b!158261 m!145853))

(declare-fun m!145855 () Bool)

(assert (=> b!158261 m!145855))

(assert (=> b!158261 m!145279))

(assert (=> b!158261 m!145295))

(assert (=> b!158261 m!145851))

(assert (=> b!158261 m!145293))

(assert (=> b!158261 m!145295))

(declare-fun m!145857 () Bool)

(assert (=> b!158254 m!145857))

(declare-fun m!145859 () Bool)

(assert (=> bm!6640 m!145859))

(assert (=> b!158260 m!145281))

(assert (=> b!157836 d!38481))

(declare-fun b!158265 () Bool)

(declare-fun res!71964 () Bool)

(declare-fun e!95089 () Bool)

(assert (=> b!158265 (=> res!71964 e!95089)))

(assert (=> b!158265 (= res!71964 (not ((_ is IntegerValue!1505) (value!17967 (h!8126 tokens!465)))))))

(declare-fun e!95088 () Bool)

(assert (=> b!158265 (= e!95088 e!95089)))

(declare-fun b!158266 () Bool)

(declare-fun e!95087 () Bool)

(assert (=> b!158266 (= e!95087 e!95088)))

(declare-fun c!31765 () Bool)

(assert (=> b!158266 (= c!31765 ((_ is IntegerValue!1504) (value!17967 (h!8126 tokens!465))))))

(declare-fun b!158267 () Bool)

(assert (=> b!158267 (= e!95087 (inv!16 (value!17967 (h!8126 tokens!465))))))

(declare-fun b!158268 () Bool)

(assert (=> b!158268 (= e!95089 (inv!15 (value!17967 (h!8126 tokens!465))))))

(declare-fun d!38483 () Bool)

(declare-fun c!31766 () Bool)

(assert (=> d!38483 (= c!31766 ((_ is IntegerValue!1503) (value!17967 (h!8126 tokens!465))))))

(assert (=> d!38483 (= (inv!21 (value!17967 (h!8126 tokens!465))) e!95087)))

(declare-fun b!158269 () Bool)

(assert (=> b!158269 (= e!95088 (inv!17 (value!17967 (h!8126 tokens!465))))))

(assert (= (and d!38483 c!31766) b!158267))

(assert (= (and d!38483 (not c!31766)) b!158266))

(assert (= (and b!158266 c!31765) b!158269))

(assert (= (and b!158266 (not c!31765)) b!158265))

(assert (= (and b!158265 (not res!71964)) b!158268))

(declare-fun m!145861 () Bool)

(assert (=> b!158267 m!145861))

(declare-fun m!145863 () Bool)

(assert (=> b!158268 m!145863))

(declare-fun m!145865 () Bool)

(assert (=> b!158269 m!145865))

(assert (=> b!157825 d!38483))

(declare-fun b!158281 () Bool)

(declare-fun e!95092 () Bool)

(declare-fun tp!80969 () Bool)

(declare-fun tp!80972 () Bool)

(assert (=> b!158281 (= e!95092 (and tp!80969 tp!80972))))

(declare-fun b!158280 () Bool)

(declare-fun tp_is_empty!1631 () Bool)

(assert (=> b!158280 (= e!95092 tp_is_empty!1631)))

(assert (=> b!157834 (= tp!80889 e!95092)))

(declare-fun b!158283 () Bool)

(declare-fun tp!80970 () Bool)

(declare-fun tp!80968 () Bool)

(assert (=> b!158283 (= e!95092 (and tp!80970 tp!80968))))

(declare-fun b!158282 () Bool)

(declare-fun tp!80971 () Bool)

(assert (=> b!158282 (= e!95092 tp!80971)))

(assert (= (and b!157834 ((_ is ElementMatch!703) (regex!479 (rule!986 (h!8126 tokens!465))))) b!158280))

(assert (= (and b!157834 ((_ is Concat!1205) (regex!479 (rule!986 (h!8126 tokens!465))))) b!158281))

(assert (= (and b!157834 ((_ is Star!703) (regex!479 (rule!986 (h!8126 tokens!465))))) b!158282))

(assert (= (and b!157834 ((_ is Union!703) (regex!479 (rule!986 (h!8126 tokens!465))))) b!158283))

(declare-fun b!158285 () Bool)

(declare-fun e!95093 () Bool)

(declare-fun tp!80974 () Bool)

(declare-fun tp!80977 () Bool)

(assert (=> b!158285 (= e!95093 (and tp!80974 tp!80977))))

(declare-fun b!158284 () Bool)

(assert (=> b!158284 (= e!95093 tp_is_empty!1631)))

(assert (=> b!157832 (= tp!80885 e!95093)))

(declare-fun b!158287 () Bool)

(declare-fun tp!80975 () Bool)

(declare-fun tp!80973 () Bool)

(assert (=> b!158287 (= e!95093 (and tp!80975 tp!80973))))

(declare-fun b!158286 () Bool)

(declare-fun tp!80976 () Bool)

(assert (=> b!158286 (= e!95093 tp!80976)))

(assert (= (and b!157832 ((_ is ElementMatch!703) (regex!479 (h!8127 rules!1920)))) b!158284))

(assert (= (and b!157832 ((_ is Concat!1205) (regex!479 (h!8127 rules!1920)))) b!158285))

(assert (= (and b!157832 ((_ is Star!703) (regex!479 (h!8127 rules!1920)))) b!158286))

(assert (= (and b!157832 ((_ is Union!703) (regex!479 (h!8127 rules!1920)))) b!158287))

(declare-fun b!158289 () Bool)

(declare-fun e!95094 () Bool)

(declare-fun tp!80979 () Bool)

(declare-fun tp!80982 () Bool)

(assert (=> b!158289 (= e!95094 (and tp!80979 tp!80982))))

(declare-fun b!158288 () Bool)

(assert (=> b!158288 (= e!95094 tp_is_empty!1631)))

(assert (=> b!157843 (= tp!80892 e!95094)))

(declare-fun b!158291 () Bool)

(declare-fun tp!80980 () Bool)

(declare-fun tp!80978 () Bool)

(assert (=> b!158291 (= e!95094 (and tp!80980 tp!80978))))

(declare-fun b!158290 () Bool)

(declare-fun tp!80981 () Bool)

(assert (=> b!158290 (= e!95094 tp!80981)))

(assert (= (and b!157843 ((_ is ElementMatch!703) (regex!479 (rule!986 separatorToken!170)))) b!158288))

(assert (= (and b!157843 ((_ is Concat!1205) (regex!479 (rule!986 separatorToken!170)))) b!158289))

(assert (= (and b!157843 ((_ is Star!703) (regex!479 (rule!986 separatorToken!170)))) b!158290))

(assert (= (and b!157843 ((_ is Union!703) (regex!479 (rule!986 separatorToken!170)))) b!158291))

(declare-fun b!158296 () Bool)

(declare-fun e!95097 () Bool)

(declare-fun tp!80985 () Bool)

(assert (=> b!158296 (= e!95097 (and tp_is_empty!1631 tp!80985))))

(assert (=> b!157831 (= tp!80891 e!95097)))

(assert (= (and b!157831 ((_ is Cons!2728) (originalCharacters!522 separatorToken!170))) b!158296))

(declare-fun b!158310 () Bool)

(declare-fun b_free!5925 () Bool)

(declare-fun b_next!5925 () Bool)

(assert (=> b!158310 (= b_free!5925 (not b_next!5925))))

(declare-fun tp!80998 () Bool)

(declare-fun b_and!9661 () Bool)

(assert (=> b!158310 (= tp!80998 b_and!9661)))

(declare-fun b_free!5927 () Bool)

(declare-fun b_next!5927 () Bool)

(assert (=> b!158310 (= b_free!5927 (not b_next!5927))))

(declare-fun tb!5661 () Bool)

(declare-fun t!25660 () Bool)

(assert (=> (and b!158310 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) t!25660) tb!5661))

(declare-fun result!8226 () Bool)

(assert (= result!8226 result!8176))

(assert (=> b!157882 t!25660))

(assert (=> d!38397 t!25660))

(declare-fun t!25662 () Bool)

(declare-fun tb!5663 () Bool)

(assert (=> (and b!158310 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465))))) t!25662) tb!5663))

(declare-fun result!8228 () Bool)

(assert (= result!8228 result!8192))

(assert (=> d!38419 t!25662))

(assert (=> b!158081 t!25662))

(declare-fun tp!80997 () Bool)

(declare-fun b_and!9663 () Bool)

(assert (=> b!158310 (= tp!80997 (and (=> t!25660 result!8226) (=> t!25662 result!8228) b_and!9663))))

(declare-fun e!95112 () Bool)

(declare-fun tp!80999 () Bool)

(declare-fun b!158309 () Bool)

(declare-fun e!95110 () Bool)

(assert (=> b!158309 (= e!95112 (and tp!80999 (inv!3534 (tag!657 (rule!986 (h!8126 (t!25603 tokens!465))))) (inv!3538 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) e!95110))))

(declare-fun e!95115 () Bool)

(declare-fun tp!80996 () Bool)

(declare-fun b!158308 () Bool)

(assert (=> b!158308 (= e!95115 (and (inv!21 (value!17967 (h!8126 (t!25603 tokens!465)))) e!95112 tp!80996))))

(declare-fun b!158307 () Bool)

(declare-fun tp!81000 () Bool)

(declare-fun e!95113 () Bool)

(assert (=> b!158307 (= e!95113 (and (inv!3537 (h!8126 (t!25603 tokens!465))) e!95115 tp!81000))))

(assert (=> b!158310 (= e!95110 (and tp!80998 tp!80997))))

(assert (=> b!157828 (= tp!80881 e!95113)))

(assert (= b!158309 b!158310))

(assert (= b!158308 b!158309))

(assert (= b!158307 b!158308))

(assert (= (and b!157828 ((_ is Cons!2729) (t!25603 tokens!465))) b!158307))

(declare-fun m!145867 () Bool)

(assert (=> b!158309 m!145867))

(declare-fun m!145869 () Bool)

(assert (=> b!158309 m!145869))

(declare-fun m!145871 () Bool)

(assert (=> b!158308 m!145871))

(declare-fun m!145873 () Bool)

(assert (=> b!158307 m!145873))

(declare-fun b!158321 () Bool)

(declare-fun b_free!5929 () Bool)

(declare-fun b_next!5929 () Bool)

(assert (=> b!158321 (= b_free!5929 (not b_next!5929))))

(declare-fun tp!81012 () Bool)

(declare-fun b_and!9665 () Bool)

(assert (=> b!158321 (= tp!81012 b_and!9665)))

(declare-fun b_free!5931 () Bool)

(declare-fun b_next!5931 () Bool)

(assert (=> b!158321 (= b_free!5931 (not b_next!5931))))

(declare-fun t!25664 () Bool)

(declare-fun tb!5665 () Bool)

(assert (=> (and b!158321 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) t!25664) tb!5665))

(declare-fun result!8232 () Bool)

(assert (= result!8232 result!8176))

(assert (=> b!157882 t!25664))

(assert (=> d!38397 t!25664))

(declare-fun tb!5667 () Bool)

(declare-fun t!25666 () Bool)

(assert (=> (and b!158321 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465))))) t!25666) tb!5667))

(declare-fun result!8234 () Bool)

(assert (= result!8234 result!8192))

(assert (=> d!38419 t!25666))

(assert (=> b!158081 t!25666))

(declare-fun tp!81011 () Bool)

(declare-fun b_and!9667 () Bool)

(assert (=> b!158321 (= tp!81011 (and (=> t!25664 result!8232) (=> t!25666 result!8234) b_and!9667))))

(declare-fun e!95124 () Bool)

(assert (=> b!158321 (= e!95124 (and tp!81012 tp!81011))))

(declare-fun tp!81010 () Bool)

(declare-fun b!158320 () Bool)

(declare-fun e!95127 () Bool)

(assert (=> b!158320 (= e!95127 (and tp!81010 (inv!3534 (tag!657 (h!8127 (t!25604 rules!1920)))) (inv!3538 (transformation!479 (h!8127 (t!25604 rules!1920)))) e!95124))))

(declare-fun b!158319 () Bool)

(declare-fun e!95125 () Bool)

(declare-fun tp!81009 () Bool)

(assert (=> b!158319 (= e!95125 (and e!95127 tp!81009))))

(assert (=> b!157837 (= tp!80888 e!95125)))

(assert (= b!158320 b!158321))

(assert (= b!158319 b!158320))

(assert (= (and b!157837 ((_ is Cons!2730) (t!25604 rules!1920))) b!158319))

(declare-fun m!145875 () Bool)

(assert (=> b!158320 m!145875))

(declare-fun m!145877 () Bool)

(assert (=> b!158320 m!145877))

(declare-fun b!158322 () Bool)

(declare-fun e!95128 () Bool)

(declare-fun tp!81013 () Bool)

(assert (=> b!158322 (= e!95128 (and tp_is_empty!1631 tp!81013))))

(assert (=> b!157825 (= tp!80884 e!95128)))

(assert (= (and b!157825 ((_ is Cons!2728) (originalCharacters!522 (h!8126 tokens!465)))) b!158322))

(declare-fun b_lambda!3185 () Bool)

(assert (= b_lambda!3163 (or (and b!158321 b_free!5931 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 separatorToken!170))))) (and b!158310 b_free!5927 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 separatorToken!170))))) (and b!157844 b_free!5911) (and b!157823 b_free!5907 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 separatorToken!170))))) (and b!157830 b_free!5915 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 separatorToken!170))))) b_lambda!3185)))

(declare-fun b_lambda!3187 () Bool)

(assert (= b_lambda!3167 (or (and b!157830 b_free!5915) (and b!157823 b_free!5907 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))))) (and b!158321 b_free!5931 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))))) (and b!157844 b_free!5911 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))))) (and b!158310 b_free!5927 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))))) b_lambda!3187)))

(declare-fun b_lambda!3189 () Bool)

(assert (= b_lambda!3159 (or (and b!158321 b_free!5931 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 separatorToken!170))))) (and b!158310 b_free!5927 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 separatorToken!170))))) (and b!157844 b_free!5911) (and b!157823 b_free!5907 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 separatorToken!170))))) (and b!157830 b_free!5915 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 separatorToken!170))))) b_lambda!3189)))

(declare-fun b_lambda!3191 () Bool)

(assert (= b_lambda!3157 (or b!157824 b_lambda!3191)))

(declare-fun bs!14736 () Bool)

(declare-fun d!38485 () Bool)

(assert (= bs!14736 (and d!38485 b!157824)))

(assert (=> bs!14736 (= (dynLambda!973 lambda!4232 (h!8126 tokens!465)) (not (isSeparator!479 (rule!986 (h!8126 tokens!465)))))))

(assert (=> b!157873 d!38485))

(declare-fun b_lambda!3193 () Bool)

(assert (= b_lambda!3165 (or (and b!157830 b_free!5915) (and b!157823 b_free!5907 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))))) (and b!158321 b_free!5931 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))))) (and b!157844 b_free!5911 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))))) (and b!158310 b_free!5927 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))))) b_lambda!3193)))

(check-sat (not b_lambda!3191) (not d!38397) (not b!158254) (not b!158054) (not b!157939) (not b!157922) (not b!158036) (not b_next!5929) b_and!9661 (not b_next!5905) (not b!157940) (not b!157955) (not bm!6600) (not bm!6637) (not bm!6601) (not b!158087) (not b_next!5911) (not tb!5641) (not b!158286) (not b!158287) (not bm!6597) b_and!9593 (not b!158106) (not d!38395) (not b!158052) (not d!38379) (not b_lambda!3193) (not b!158289) (not b!158319) (not b_next!5909) (not d!38359) (not b!158082) (not b!158290) (not b!158051) (not bm!6635) (not d!38433) (not d!38441) (not d!38403) (not b!158308) (not d!38361) (not b!158245) (not b_next!5915) (not b!157924) (not b!158322) b_and!9665 (not tb!5629) (not d!38417) (not b!158240) (not b_next!5927) (not b!158267) b_and!9663 (not d!38423) (not b!158261) (not b!158269) (not bm!6640) (not b!158030) (not b!157951) (not b!157954) (not b!158045) (not d!38431) (not b!157958) (not b!158281) (not d!38435) (not b!157877) (not b!158282) (not bm!6641) (not b!158035) (not b!158249) b_and!9597 (not d!38415) (not b!158268) (not b!158247) (not b!157882) tp_is_empty!1631 b_and!9629 (not b!157883) (not bm!6632) (not b!158244) (not b_next!5925) (not b!158296) (not b!158074) (not b!158081) (not b!158320) (not b!158260) (not d!38393) (not d!38385) b_and!9601 (not b!158073) (not d!38399) (not b_lambda!3185) (not d!38439) (not b!157938) (not b_next!5907) (not b!158239) (not b!158029) (not d!38419) (not b_next!5931) (not d!38421) (not d!38391) (not b!158034) (not d!38425) (not b!158291) (not b!158259) (not b_lambda!3189) (not b!158309) (not b!157923) (not b!157925) (not bm!6636) (not b!157874) b_and!9631 (not b_lambda!3187) (not b!158241) (not b!158088) (not d!38357) (not b_next!5913) (not d!38383) (not b!158104) (not b!158262) (not b!157950) (not b!158307) (not b!157921) (not b!158285) b_and!9667 (not b!158105) (not b!158283) (not d!38387) (not d!38401) (not b!157888) b_and!9633 (not b!157959) (not b!158255))
(check-sat (not b_next!5905) (not b_next!5911) b_and!9593 (not b_next!5909) b_and!9597 b_and!9601 (not b_next!5907) (not b_next!5931) b_and!9631 (not b_next!5913) b_and!9667 b_and!9633 (not b_next!5929) b_and!9661 (not b_next!5915) b_and!9665 (not b_next!5927) b_and!9663 b_and!9629 (not b_next!5925))
(get-model)

(declare-fun d!38497 () Bool)

(declare-fun charsToBigInt!0 (List!2737 Int) Int)

(assert (=> d!38497 (= (inv!15 (value!17967 separatorToken!170)) (= (charsToBigInt!0 (text!3956 (value!17967 separatorToken!170)) 0) (value!17962 (value!17967 separatorToken!170))))))

(declare-fun bs!14740 () Bool)

(assert (= bs!14740 d!38497))

(declare-fun m!145903 () Bool)

(assert (=> bs!14740 m!145903))

(assert (=> b!157939 d!38497))

(declare-fun d!38501 () Bool)

(assert (=> d!38501 (= (isEmpty!1097 (originalCharacters!522 separatorToken!170)) ((_ is Nil!2728) (originalCharacters!522 separatorToken!170)))))

(assert (=> d!38359 d!38501))

(declare-fun d!38503 () Bool)

(declare-fun lt!47252 () Int)

(assert (=> d!38503 (= lt!47252 (size!2308 (list!976 lt!47053)))))

(assert (=> d!38503 (= lt!47252 (size!2309 (c!31677 lt!47053)))))

(assert (=> d!38503 (= (size!2303 lt!47053) lt!47252)))

(declare-fun bs!14741 () Bool)

(assert (= bs!14741 d!38503))

(assert (=> bs!14741 m!145629))

(assert (=> bs!14741 m!145629))

(declare-fun m!145905 () Bool)

(assert (=> bs!14741 m!145905))

(declare-fun m!145907 () Bool)

(assert (=> bs!14741 m!145907))

(assert (=> b!158245 d!38503))

(declare-fun b!158334 () Bool)

(declare-fun res!71978 () Bool)

(declare-fun e!95134 () Bool)

(assert (=> b!158334 (=> (not res!71978) (not e!95134))))

(declare-fun lt!47253 () List!2738)

(assert (=> b!158334 (= res!71978 (= (size!2305 lt!47253) (+ (size!2305 call!6642) (size!2305 lt!47239))))))

(declare-fun b!158335 () Bool)

(assert (=> b!158335 (= e!95134 (or (not (= lt!47239 Nil!2728)) (= lt!47253 call!6642)))))

(declare-fun b!158333 () Bool)

(declare-fun e!95135 () List!2738)

(assert (=> b!158333 (= e!95135 (Cons!2728 (h!8125 call!6642) (++!600 (t!25602 call!6642) lt!47239)))))

(declare-fun b!158332 () Bool)

(assert (=> b!158332 (= e!95135 lt!47239)))

(declare-fun d!38505 () Bool)

(assert (=> d!38505 e!95134))

(declare-fun res!71979 () Bool)

(assert (=> d!38505 (=> (not res!71979) (not e!95134))))

(assert (=> d!38505 (= res!71979 (= (content!378 lt!47253) ((_ map or) (content!378 call!6642) (content!378 lt!47239))))))

(assert (=> d!38505 (= lt!47253 e!95135)))

(declare-fun c!31767 () Bool)

(assert (=> d!38505 (= c!31767 ((_ is Nil!2728) call!6642))))

(assert (=> d!38505 (= (++!600 call!6642 lt!47239) lt!47253)))

(assert (= (and d!38505 c!31767) b!158332))

(assert (= (and d!38505 (not c!31767)) b!158333))

(assert (= (and d!38505 res!71979) b!158334))

(assert (= (and b!158334 res!71978) b!158335))

(declare-fun m!145909 () Bool)

(assert (=> b!158334 m!145909))

(declare-fun m!145911 () Bool)

(assert (=> b!158334 m!145911))

(declare-fun m!145913 () Bool)

(assert (=> b!158334 m!145913))

(declare-fun m!145915 () Bool)

(assert (=> b!158333 m!145915))

(declare-fun m!145917 () Bool)

(assert (=> d!38505 m!145917))

(declare-fun m!145919 () Bool)

(assert (=> d!38505 m!145919))

(declare-fun m!145921 () Bool)

(assert (=> d!38505 m!145921))

(assert (=> b!158254 d!38505))

(assert (=> b!158035 d!38397))

(declare-fun b!158336 () Bool)

(declare-fun res!71980 () Bool)

(declare-fun e!95138 () Bool)

(assert (=> b!158336 (=> res!71980 e!95138)))

(assert (=> b!158336 (= res!71980 (not ((_ is IntegerValue!1505) (value!17967 (h!8126 (t!25603 tokens!465))))))))

(declare-fun e!95137 () Bool)

(assert (=> b!158336 (= e!95137 e!95138)))

(declare-fun b!158337 () Bool)

(declare-fun e!95136 () Bool)

(assert (=> b!158337 (= e!95136 e!95137)))

(declare-fun c!31768 () Bool)

(assert (=> b!158337 (= c!31768 ((_ is IntegerValue!1504) (value!17967 (h!8126 (t!25603 tokens!465)))))))

(declare-fun b!158338 () Bool)

(assert (=> b!158338 (= e!95136 (inv!16 (value!17967 (h!8126 (t!25603 tokens!465)))))))

(declare-fun b!158339 () Bool)

(assert (=> b!158339 (= e!95138 (inv!15 (value!17967 (h!8126 (t!25603 tokens!465)))))))

(declare-fun d!38507 () Bool)

(declare-fun c!31769 () Bool)

(assert (=> d!38507 (= c!31769 ((_ is IntegerValue!1503) (value!17967 (h!8126 (t!25603 tokens!465)))))))

(assert (=> d!38507 (= (inv!21 (value!17967 (h!8126 (t!25603 tokens!465)))) e!95136)))

(declare-fun b!158340 () Bool)

(assert (=> b!158340 (= e!95137 (inv!17 (value!17967 (h!8126 (t!25603 tokens!465)))))))

(assert (= (and d!38507 c!31769) b!158338))

(assert (= (and d!38507 (not c!31769)) b!158337))

(assert (= (and b!158337 c!31768) b!158340))

(assert (= (and b!158337 (not c!31768)) b!158336))

(assert (= (and b!158336 (not res!71980)) b!158339))

(declare-fun m!145923 () Bool)

(assert (=> b!158338 m!145923))

(declare-fun m!145925 () Bool)

(assert (=> b!158339 m!145925))

(declare-fun m!145927 () Bool)

(assert (=> b!158340 m!145927))

(assert (=> b!158308 d!38507))

(declare-fun d!38509 () Bool)

(declare-fun charsToBigInt!1 (List!2737) Int)

(assert (=> d!38509 (= (inv!17 (value!17967 (h!8126 tokens!465))) (= (charsToBigInt!1 (text!3955 (value!17967 (h!8126 tokens!465)))) (value!17959 (value!17967 (h!8126 tokens!465)))))))

(declare-fun bs!14742 () Bool)

(assert (= bs!14742 d!38509))

(declare-fun m!145929 () Bool)

(assert (=> bs!14742 m!145929))

(assert (=> b!158269 d!38509))

(declare-fun d!38511 () Bool)

(declare-fun res!71985 () Bool)

(declare-fun e!95143 () Bool)

(assert (=> d!38511 (=> res!71985 e!95143)))

(assert (=> d!38511 (= res!71985 ((_ is Nil!2730) rules!1920))))

(assert (=> d!38511 (= (noDuplicateTag!133 thiss!17480 rules!1920 Nil!2732) e!95143)))

(declare-fun b!158345 () Bool)

(declare-fun e!95144 () Bool)

(assert (=> b!158345 (= e!95143 e!95144)))

(declare-fun res!71986 () Bool)

(assert (=> b!158345 (=> (not res!71986) (not e!95144))))

(declare-fun contains!433 (List!2742 String!3585) Bool)

(assert (=> b!158345 (= res!71986 (not (contains!433 Nil!2732 (tag!657 (h!8127 rules!1920)))))))

(declare-fun b!158346 () Bool)

(assert (=> b!158346 (= e!95144 (noDuplicateTag!133 thiss!17480 (t!25604 rules!1920) (Cons!2732 (tag!657 (h!8127 rules!1920)) Nil!2732)))))

(assert (= (and d!38511 (not res!71985)) b!158345))

(assert (= (and b!158345 res!71986) b!158346))

(declare-fun m!145931 () Bool)

(assert (=> b!158345 m!145931))

(declare-fun m!145933 () Bool)

(assert (=> b!158346 m!145933))

(assert (=> b!158104 d!38511))

(declare-fun d!38513 () Bool)

(declare-fun c!31772 () Bool)

(assert (=> d!38513 (= c!31772 ((_ is Nil!2728) lt!47075))))

(declare-fun e!95147 () (InoxSet C!2328))

(assert (=> d!38513 (= (content!378 lt!47075) e!95147)))

(declare-fun b!158351 () Bool)

(assert (=> b!158351 (= e!95147 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!158352 () Bool)

(assert (=> b!158352 (= e!95147 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 lt!47075) true) (content!378 (t!25602 lt!47075))))))

(assert (= (and d!38513 c!31772) b!158351))

(assert (= (and d!38513 (not c!31772)) b!158352))

(declare-fun m!145935 () Bool)

(assert (=> b!158352 m!145935))

(declare-fun m!145937 () Bool)

(assert (=> b!158352 m!145937))

(assert (=> d!38393 d!38513))

(declare-fun d!38515 () Bool)

(declare-fun c!31773 () Bool)

(assert (=> d!38515 (= c!31773 ((_ is Nil!2728) (++!600 lt!47055 lt!47050)))))

(declare-fun e!95148 () (InoxSet C!2328))

(assert (=> d!38515 (= (content!378 (++!600 lt!47055 lt!47050)) e!95148)))

(declare-fun b!158353 () Bool)

(assert (=> b!158353 (= e!95148 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!158354 () Bool)

(assert (=> b!158354 (= e!95148 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 (++!600 lt!47055 lt!47050)) true) (content!378 (t!25602 (++!600 lt!47055 lt!47050)))))))

(assert (= (and d!38515 c!31773) b!158353))

(assert (= (and d!38515 (not c!31773)) b!158354))

(declare-fun m!145939 () Bool)

(assert (=> b!158354 m!145939))

(declare-fun m!145941 () Bool)

(assert (=> b!158354 m!145941))

(assert (=> d!38393 d!38515))

(declare-fun d!38517 () Bool)

(declare-fun c!31774 () Bool)

(assert (=> d!38517 (= c!31774 ((_ is Nil!2728) lt!47058))))

(declare-fun e!95149 () (InoxSet C!2328))

(assert (=> d!38517 (= (content!378 lt!47058) e!95149)))

(declare-fun b!158355 () Bool)

(assert (=> b!158355 (= e!95149 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!158356 () Bool)

(assert (=> b!158356 (= e!95149 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 lt!47058) true) (content!378 (t!25602 lt!47058))))))

(assert (= (and d!38517 c!31774) b!158355))

(assert (= (and d!38517 (not c!31774)) b!158356))

(declare-fun m!145943 () Bool)

(assert (=> b!158356 m!145943))

(declare-fun m!145945 () Bool)

(assert (=> b!158356 m!145945))

(assert (=> d!38393 d!38517))

(declare-fun d!38519 () Bool)

(assert (=> d!38519 (= (list!973 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))) (list!977 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))))))

(declare-fun bs!14743 () Bool)

(assert (= bs!14743 d!38519))

(declare-fun m!145947 () Bool)

(assert (=> bs!14743 m!145947))

(assert (=> b!157882 d!38519))

(declare-fun b!158359 () Bool)

(declare-fun res!71987 () Bool)

(declare-fun e!95150 () Bool)

(assert (=> b!158359 (=> (not res!71987) (not e!95150))))

(declare-fun lt!47254 () List!2738)

(assert (=> b!158359 (= res!71987 (= (size!2305 lt!47254) (+ (size!2305 (t!25602 lt!47055)) (size!2305 lt!47050))))))

(declare-fun b!158360 () Bool)

(assert (=> b!158360 (= e!95150 (or (not (= lt!47050 Nil!2728)) (= lt!47254 (t!25602 lt!47055))))))

(declare-fun b!158358 () Bool)

(declare-fun e!95151 () List!2738)

(assert (=> b!158358 (= e!95151 (Cons!2728 (h!8125 (t!25602 lt!47055)) (++!600 (t!25602 (t!25602 lt!47055)) lt!47050)))))

(declare-fun b!158357 () Bool)

(assert (=> b!158357 (= e!95151 lt!47050)))

(declare-fun d!38521 () Bool)

(assert (=> d!38521 e!95150))

(declare-fun res!71988 () Bool)

(assert (=> d!38521 (=> (not res!71988) (not e!95150))))

(assert (=> d!38521 (= res!71988 (= (content!378 lt!47254) ((_ map or) (content!378 (t!25602 lt!47055)) (content!378 lt!47050))))))

(assert (=> d!38521 (= lt!47254 e!95151)))

(declare-fun c!31775 () Bool)

(assert (=> d!38521 (= c!31775 ((_ is Nil!2728) (t!25602 lt!47055)))))

(assert (=> d!38521 (= (++!600 (t!25602 lt!47055) lt!47050) lt!47254)))

(assert (= (and d!38521 c!31775) b!158357))

(assert (= (and d!38521 (not c!31775)) b!158358))

(assert (= (and d!38521 res!71988) b!158359))

(assert (= (and b!158359 res!71987) b!158360))

(declare-fun m!145949 () Bool)

(assert (=> b!158359 m!145949))

(declare-fun m!145951 () Bool)

(assert (=> b!158359 m!145951))

(assert (=> b!158359 m!145461))

(declare-fun m!145953 () Bool)

(assert (=> b!158358 m!145953))

(declare-fun m!145955 () Bool)

(assert (=> d!38521 m!145955))

(declare-fun m!145957 () Bool)

(assert (=> d!38521 m!145957))

(assert (=> d!38521 m!145467))

(assert (=> b!157958 d!38521))

(declare-fun lt!47255 () BalanceConc!1568)

(declare-fun d!38523 () Bool)

(assert (=> d!38523 (= (list!973 lt!47255) (originalCharacters!522 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641))))))

(assert (=> d!38523 (= lt!47255 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641))))) (value!17967 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))))

(assert (=> d!38523 (= (charsOf!134 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641))) lt!47255)))

(declare-fun b_lambda!3195 () Bool)

(assert (=> (not b_lambda!3195) (not d!38523)))

(declare-fun t!25671 () Bool)

(declare-fun tb!5669 () Bool)

(assert (=> (and b!157830 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))) t!25671) tb!5669))

(declare-fun e!95152 () Bool)

(declare-fun tp!81014 () Bool)

(declare-fun b!158361 () Bool)

(assert (=> b!158361 (= e!95152 (and (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641))))) (value!17967 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))) tp!81014))))

(declare-fun result!8236 () Bool)

(assert (=> tb!5669 (= result!8236 (and (inv!3542 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641))))) (value!17967 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641))))) e!95152))))

(assert (= tb!5669 b!158361))

(declare-fun m!145959 () Bool)

(assert (=> b!158361 m!145959))

(declare-fun m!145961 () Bool)

(assert (=> tb!5669 m!145961))

(assert (=> d!38523 t!25671))

(declare-fun b_and!9669 () Bool)

(assert (= b_and!9633 (and (=> t!25671 result!8236) b_and!9669)))

(declare-fun t!25673 () Bool)

(declare-fun tb!5671 () Bool)

(assert (=> (and b!158310 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))) t!25673) tb!5671))

(declare-fun result!8238 () Bool)

(assert (= result!8238 result!8236))

(assert (=> d!38523 t!25673))

(declare-fun b_and!9671 () Bool)

(assert (= b_and!9663 (and (=> t!25673 result!8238) b_and!9671)))

(declare-fun t!25675 () Bool)

(declare-fun tb!5673 () Bool)

(assert (=> (and b!157844 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))) t!25675) tb!5673))

(declare-fun result!8240 () Bool)

(assert (= result!8240 result!8236))

(assert (=> d!38523 t!25675))

(declare-fun b_and!9673 () Bool)

(assert (= b_and!9631 (and (=> t!25675 result!8240) b_and!9673)))

(declare-fun tb!5675 () Bool)

(declare-fun t!25677 () Bool)

(assert (=> (and b!158321 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))) t!25677) tb!5675))

(declare-fun result!8242 () Bool)

(assert (= result!8242 result!8236))

(assert (=> d!38523 t!25677))

(declare-fun b_and!9675 () Bool)

(assert (= b_and!9667 (and (=> t!25677 result!8242) b_and!9675)))

(declare-fun t!25679 () Bool)

(declare-fun tb!5677 () Bool)

(assert (=> (and b!157823 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))) t!25679) tb!5677))

(declare-fun result!8244 () Bool)

(assert (= result!8244 result!8236))

(assert (=> d!38523 t!25679))

(declare-fun b_and!9677 () Bool)

(assert (= b_and!9629 (and (=> t!25679 result!8244) b_and!9677)))

(declare-fun m!145963 () Bool)

(assert (=> d!38523 m!145963))

(declare-fun m!145965 () Bool)

(assert (=> d!38523 m!145965))

(assert (=> bm!6632 d!38523))

(declare-fun d!38525 () Bool)

(declare-fun lt!47258 () Int)

(assert (=> d!38525 (>= lt!47258 0)))

(declare-fun e!95155 () Int)

(assert (=> d!38525 (= lt!47258 e!95155)))

(declare-fun c!31778 () Bool)

(assert (=> d!38525 (= c!31778 ((_ is Nil!2728) (originalCharacters!522 (h!8126 tokens!465))))))

(assert (=> d!38525 (= (size!2305 (originalCharacters!522 (h!8126 tokens!465))) lt!47258)))

(declare-fun b!158366 () Bool)

(assert (=> b!158366 (= e!95155 0)))

(declare-fun b!158367 () Bool)

(assert (=> b!158367 (= e!95155 (+ 1 (size!2305 (t!25602 (originalCharacters!522 (h!8126 tokens!465))))))))

(assert (= (and d!38525 c!31778) b!158366))

(assert (= (and d!38525 (not c!31778)) b!158367))

(declare-fun m!145967 () Bool)

(assert (=> b!158367 m!145967))

(assert (=> b!158082 d!38525))

(declare-fun d!38527 () Bool)

(assert (=> d!38527 true))

(declare-fun lambda!4270 () Int)

(declare-fun order!1393 () Int)

(declare-fun dynLambda!979 (Int Int) Int)

(assert (=> d!38527 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465))))) (dynLambda!979 order!1393 lambda!4270))))

(declare-fun Forall2!103 (Int) Bool)

(assert (=> d!38527 (= (equivClasses!150 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465))))) (Forall2!103 lambda!4270))))

(declare-fun bs!14744 () Bool)

(assert (= bs!14744 d!38527))

(declare-fun m!145969 () Bool)

(assert (=> bs!14744 m!145969))

(assert (=> b!157877 d!38527))

(declare-fun bs!14745 () Bool)

(declare-fun d!38529 () Bool)

(assert (= bs!14745 (and d!38529 b!157824)))

(declare-fun lambda!4273 () Int)

(assert (=> bs!14745 (not (= lambda!4273 lambda!4232))))

(declare-fun bs!14746 () Bool)

(assert (= bs!14746 (and d!38529 b!158261)))

(assert (=> bs!14746 (= lambda!4273 lambda!4264)))

(declare-fun bs!14747 () Bool)

(assert (= bs!14747 (and d!38529 d!38441)))

(assert (=> bs!14747 (not (= lambda!4273 lambda!4262))))

(declare-fun bs!14748 () Bool)

(assert (= bs!14748 (and d!38529 b!158244)))

(assert (=> bs!14748 (= lambda!4273 lambda!4263)))

(declare-fun bs!14749 () Bool)

(assert (= bs!14749 (and d!38529 d!38433)))

(assert (=> bs!14749 (= lambda!4273 lambda!4255)))

(declare-fun bs!14750 () Bool)

(assert (= bs!14750 (and d!38529 b!158036)))

(assert (=> bs!14750 (= lambda!4273 lambda!4246)))

(declare-fun bs!14751 () Bool)

(assert (= bs!14751 (and d!38529 d!38423)))

(assert (=> bs!14751 (= lambda!4273 lambda!4253)))

(declare-fun b!158389 () Bool)

(declare-fun e!95172 () Bool)

(assert (=> b!158389 (= e!95172 true)))

(declare-fun b!158388 () Bool)

(declare-fun e!95171 () Bool)

(assert (=> b!158388 (= e!95171 e!95172)))

(declare-fun b!158387 () Bool)

(declare-fun e!95170 () Bool)

(assert (=> b!158387 (= e!95170 e!95171)))

(assert (=> d!38529 e!95170))

(assert (= b!158388 b!158389))

(assert (= b!158387 b!158388))

(assert (= (and d!38529 ((_ is Cons!2730) rules!1920)) b!158387))

(assert (=> b!158389 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4273))))

(assert (=> b!158389 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4273))))

(assert (=> d!38529 true))

(declare-fun lt!47282 () Bool)

(assert (=> d!38529 (= lt!47282 (forall!489 (list!976 lt!47052) lambda!4273))))

(declare-fun e!95168 () Bool)

(assert (=> d!38529 (= lt!47282 e!95168)))

(declare-fun res!71999 () Bool)

(assert (=> d!38529 (=> res!71999 e!95168)))

(assert (=> d!38529 (= res!71999 (not ((_ is Cons!2729) (list!976 lt!47052))))))

(assert (=> d!38529 (not (isEmpty!1094 rules!1920))))

(assert (=> d!38529 (= (rulesProduceEachTokenIndividuallyList!99 thiss!17480 rules!1920 (list!976 lt!47052)) lt!47282)))

(declare-fun b!158385 () Bool)

(declare-fun e!95169 () Bool)

(assert (=> b!158385 (= e!95168 e!95169)))

(declare-fun res!71998 () Bool)

(assert (=> b!158385 (=> (not res!71998) (not e!95169))))

(assert (=> b!158385 (= res!71998 (rulesProduceIndividualToken!114 thiss!17480 rules!1920 (h!8126 (list!976 lt!47052))))))

(declare-fun b!158386 () Bool)

(assert (=> b!158386 (= e!95169 (rulesProduceEachTokenIndividuallyList!99 thiss!17480 rules!1920 (t!25603 (list!976 lt!47052))))))

(assert (= (and d!38529 (not res!71999)) b!158385))

(assert (= (and b!158385 res!71998) b!158386))

(assert (=> d!38529 m!145587))

(declare-fun m!146005 () Bool)

(assert (=> d!38529 m!146005))

(assert (=> d!38529 m!145261))

(declare-fun m!146007 () Bool)

(assert (=> b!158385 m!146007))

(declare-fun m!146009 () Bool)

(assert (=> b!158386 m!146009))

(assert (=> b!158073 d!38529))

(declare-fun d!38533 () Bool)

(declare-fun list!978 (Conc!781) List!2739)

(assert (=> d!38533 (= (list!976 lt!47052) (list!978 (c!31677 lt!47052)))))

(declare-fun bs!14752 () Bool)

(assert (= bs!14752 d!38533))

(declare-fun m!146011 () Bool)

(assert (=> bs!14752 m!146011))

(assert (=> b!158073 d!38533))

(declare-fun d!38535 () Bool)

(assert (=> d!38535 (= (list!973 (ite c!31718 call!6605 e!94929)) (list!977 (c!31675 (ite c!31718 call!6605 e!94929))))))

(declare-fun bs!14753 () Bool)

(assert (= bs!14753 d!38535))

(declare-fun m!146013 () Bool)

(assert (=> bs!14753 m!146013))

(assert (=> bm!6600 d!38535))

(declare-fun d!38537 () Bool)

(declare-fun charsToInt!0 (List!2737) (_ BitVec 32))

(assert (=> d!38537 (= (inv!16 (value!17967 (h!8126 tokens!465))) (= (charsToInt!0 (text!3954 (value!17967 (h!8126 tokens!465)))) (value!17958 (value!17967 (h!8126 tokens!465)))))))

(declare-fun bs!14754 () Bool)

(assert (= bs!14754 d!38537))

(declare-fun m!146015 () Bool)

(assert (=> bs!14754 m!146015))

(assert (=> b!158267 d!38537))

(declare-fun d!38539 () Bool)

(assert (=> d!38539 true))

(declare-fun order!1395 () Int)

(declare-fun lambda!4276 () Int)

(declare-fun dynLambda!980 (Int Int) Int)

(assert (=> d!38539 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!980 order!1395 lambda!4276))))

(assert (=> d!38539 true))

(assert (=> d!38539 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!980 order!1395 lambda!4276))))

(declare-fun Forall!128 (Int) Bool)

(assert (=> d!38539 (= (semiInverseModEq!167 (toChars!985 (transformation!479 (h!8127 rules!1920))) (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (Forall!128 lambda!4276))))

(declare-fun bs!14755 () Bool)

(assert (= bs!14755 d!38539))

(declare-fun m!146017 () Bool)

(assert (=> bs!14755 m!146017))

(assert (=> d!38379 d!38539))

(declare-fun bm!6644 () Bool)

(declare-fun call!6649 () Bool)

(assert (=> bm!6644 (= call!6649 (ruleDisjointCharsFromAllFromOtherType!26 (h!8127 rules!1920) (t!25604 rules!1920)))))

(declare-fun b!158402 () Bool)

(declare-fun e!95179 () Bool)

(assert (=> b!158402 (= e!95179 call!6649)))

(declare-fun d!38541 () Bool)

(declare-fun c!31784 () Bool)

(assert (=> d!38541 (= c!31784 (and ((_ is Cons!2730) rules!1920) (not (= (isSeparator!479 (h!8127 rules!1920)) (isSeparator!479 (h!8127 rules!1920))))))))

(declare-fun e!95180 () Bool)

(assert (=> d!38541 (= (ruleDisjointCharsFromAllFromOtherType!26 (h!8127 rules!1920) rules!1920) e!95180)))

(declare-fun b!158403 () Bool)

(assert (=> b!158403 (= e!95180 e!95179)))

(declare-fun res!72005 () Bool)

(assert (=> b!158403 (= res!72005 (not ((_ is Cons!2730) rules!1920)))))

(assert (=> b!158403 (=> res!72005 e!95179)))

(declare-fun b!158404 () Bool)

(declare-fun e!95181 () Bool)

(assert (=> b!158404 (= e!95181 call!6649)))

(declare-fun b!158405 () Bool)

(assert (=> b!158405 (= e!95180 e!95181)))

(declare-fun res!72004 () Bool)

(declare-fun rulesUseDisjointChars!17 (Rule!758 Rule!758) Bool)

(assert (=> b!158405 (= res!72004 (rulesUseDisjointChars!17 (h!8127 rules!1920) (h!8127 rules!1920)))))

(assert (=> b!158405 (=> (not res!72004) (not e!95181))))

(assert (= (and d!38541 c!31784) b!158405))

(assert (= (and d!38541 (not c!31784)) b!158403))

(assert (= (and b!158405 res!72004) b!158404))

(assert (= (and b!158403 (not res!72005)) b!158402))

(assert (= (or b!158404 b!158402) bm!6644))

(declare-fun m!146019 () Bool)

(assert (=> bm!6644 m!146019))

(declare-fun m!146021 () Bool)

(assert (=> b!158405 m!146021))

(assert (=> b!158087 d!38541))

(declare-fun c!31789 () Bool)

(declare-fun d!38543 () Bool)

(assert (=> d!38543 (= c!31789 ((_ is Empty!780) (c!31675 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0))))))

(declare-fun e!95186 () List!2738)

(assert (=> d!38543 (= (list!977 (c!31675 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0))) e!95186)))

(declare-fun b!158415 () Bool)

(declare-fun e!95187 () List!2738)

(assert (=> b!158415 (= e!95186 e!95187)))

(declare-fun c!31790 () Bool)

(assert (=> b!158415 (= c!31790 ((_ is Leaf!1359) (c!31675 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0))))))

(declare-fun b!158416 () Bool)

(declare-fun list!980 (IArray!1561) List!2738)

(assert (=> b!158416 (= e!95187 (list!980 (xs!3375 (c!31675 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0)))))))

(declare-fun b!158417 () Bool)

(assert (=> b!158417 (= e!95187 (++!600 (list!977 (left!2058 (c!31675 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0)))) (list!977 (right!2388 (c!31675 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 0))))))))

(declare-fun b!158414 () Bool)

(assert (=> b!158414 (= e!95186 Nil!2728)))

(assert (= (and d!38543 c!31789) b!158414))

(assert (= (and d!38543 (not c!31789)) b!158415))

(assert (= (and b!158415 c!31790) b!158416))

(assert (= (and b!158415 (not c!31790)) b!158417))

(declare-fun m!146023 () Bool)

(assert (=> b!158416 m!146023))

(declare-fun m!146025 () Bool)

(assert (=> b!158417 m!146025))

(declare-fun m!146027 () Bool)

(assert (=> b!158417 m!146027))

(assert (=> b!158417 m!146025))

(assert (=> b!158417 m!146027))

(declare-fun m!146029 () Bool)

(assert (=> b!158417 m!146029))

(assert (=> d!38439 d!38543))

(declare-fun d!38545 () Bool)

(declare-fun lt!47285 () Bool)

(assert (=> d!38545 (= lt!47285 (isEmpty!1097 (list!973 (_2!1535 lt!47071))))))

(declare-fun isEmpty!1101 (Conc!780) Bool)

(assert (=> d!38545 (= lt!47285 (isEmpty!1101 (c!31675 (_2!1535 lt!47071))))))

(assert (=> d!38545 (= (isEmpty!1098 (_2!1535 lt!47071)) lt!47285)))

(declare-fun bs!14756 () Bool)

(assert (= bs!14756 d!38545))

(declare-fun m!146031 () Bool)

(assert (=> bs!14756 m!146031))

(assert (=> bs!14756 m!146031))

(declare-fun m!146033 () Bool)

(assert (=> bs!14756 m!146033))

(declare-fun m!146035 () Bool)

(assert (=> bs!14756 m!146035))

(assert (=> b!157922 d!38545))

(declare-fun d!38547 () Bool)

(declare-fun e!95190 () Bool)

(assert (=> d!38547 e!95190))

(declare-fun res!72008 () Bool)

(assert (=> d!38547 (=> (not res!72008) (not e!95190))))

(declare-fun lt!47288 () BalanceConc!1570)

(assert (=> d!38547 (= res!72008 (= (list!976 lt!47288) (Cons!2729 call!6641 Nil!2729)))))

(declare-fun singleton!25 (Token!702) BalanceConc!1570)

(assert (=> d!38547 (= lt!47288 (singleton!25 call!6641))))

(assert (=> d!38547 (= (singletonSeq!35 call!6641) lt!47288)))

(declare-fun b!158420 () Bool)

(declare-fun isBalanced!218 (Conc!781) Bool)

(assert (=> b!158420 (= e!95190 (isBalanced!218 (c!31677 lt!47288)))))

(assert (= (and d!38547 res!72008) b!158420))

(declare-fun m!146037 () Bool)

(assert (=> d!38547 m!146037))

(declare-fun m!146039 () Bool)

(assert (=> d!38547 m!146039))

(declare-fun m!146041 () Bool)

(assert (=> b!158420 m!146041))

(assert (=> b!158240 d!38547))

(declare-fun d!38549 () Bool)

(declare-fun lt!47325 () BalanceConc!1568)

(declare-fun printListTailRec!44 (LexerInterface!365 List!2739 List!2738) List!2738)

(assert (=> d!38549 (= (list!973 lt!47325) (printListTailRec!44 thiss!17480 (dropList!76 (singletonSeq!35 call!6641) 0) (list!973 (BalanceConc!1569 Empty!780))))))

(declare-fun e!95198 () BalanceConc!1568)

(assert (=> d!38549 (= lt!47325 e!95198)))

(declare-fun c!31793 () Bool)

(assert (=> d!38549 (= c!31793 (>= 0 (size!2303 (singletonSeq!35 call!6641))))))

(declare-fun e!95197 () Bool)

(assert (=> d!38549 e!95197))

(declare-fun res!72013 () Bool)

(assert (=> d!38549 (=> (not res!72013) (not e!95197))))

(assert (=> d!38549 (= res!72013 (>= 0 0))))

(assert (=> d!38549 (= (printTailRec!65 thiss!17480 (singletonSeq!35 call!6641) 0 (BalanceConc!1569 Empty!780)) lt!47325)))

(declare-fun b!158427 () Bool)

(assert (=> b!158427 (= e!95197 (<= 0 (size!2303 (singletonSeq!35 call!6641))))))

(declare-fun b!158428 () Bool)

(assert (=> b!158428 (= e!95198 (BalanceConc!1569 Empty!780))))

(declare-fun b!158429 () Bool)

(assert (=> b!158429 (= e!95198 (printTailRec!65 thiss!17480 (singletonSeq!35 call!6641) (+ 0 1) (++!602 (BalanceConc!1569 Empty!780) (charsOf!134 (apply!373 (singletonSeq!35 call!6641) 0)))))))

(declare-fun lt!47329 () List!2739)

(assert (=> b!158429 (= lt!47329 (list!976 (singletonSeq!35 call!6641)))))

(declare-fun lt!47330 () Unit!2184)

(assert (=> b!158429 (= lt!47330 (lemmaDropApply!116 lt!47329 0))))

(assert (=> b!158429 (= (head!590 (drop!129 lt!47329 0)) (apply!374 lt!47329 0))))

(declare-fun lt!47328 () Unit!2184)

(assert (=> b!158429 (= lt!47328 lt!47330)))

(declare-fun lt!47327 () List!2739)

(assert (=> b!158429 (= lt!47327 (list!976 (singletonSeq!35 call!6641)))))

(declare-fun lt!47331 () Unit!2184)

(assert (=> b!158429 (= lt!47331 (lemmaDropTail!108 lt!47327 0))))

(assert (=> b!158429 (= (tail!330 (drop!129 lt!47327 0)) (drop!129 lt!47327 (+ 0 1)))))

(declare-fun lt!47326 () Unit!2184)

(assert (=> b!158429 (= lt!47326 lt!47331)))

(assert (= (and d!38549 res!72013) b!158427))

(assert (= (and d!38549 c!31793) b!158428))

(assert (= (and d!38549 (not c!31793)) b!158429))

(declare-fun m!146043 () Bool)

(assert (=> d!38549 m!146043))

(declare-fun m!146045 () Bool)

(assert (=> d!38549 m!146045))

(declare-fun m!146047 () Bool)

(assert (=> d!38549 m!146047))

(declare-fun m!146049 () Bool)

(assert (=> d!38549 m!146049))

(assert (=> d!38549 m!145827))

(declare-fun m!146051 () Bool)

(assert (=> d!38549 m!146051))

(assert (=> d!38549 m!146045))

(assert (=> d!38549 m!145827))

(assert (=> d!38549 m!146043))

(assert (=> b!158427 m!145827))

(assert (=> b!158427 m!146051))

(declare-fun m!146053 () Bool)

(assert (=> b!158429 m!146053))

(declare-fun m!146055 () Bool)

(assert (=> b!158429 m!146055))

(declare-fun m!146057 () Bool)

(assert (=> b!158429 m!146057))

(declare-fun m!146059 () Bool)

(assert (=> b!158429 m!146059))

(declare-fun m!146061 () Bool)

(assert (=> b!158429 m!146061))

(assert (=> b!158429 m!146053))

(declare-fun m!146063 () Bool)

(assert (=> b!158429 m!146063))

(assert (=> b!158429 m!146057))

(declare-fun m!146065 () Bool)

(assert (=> b!158429 m!146065))

(declare-fun m!146067 () Bool)

(assert (=> b!158429 m!146067))

(declare-fun m!146069 () Bool)

(assert (=> b!158429 m!146069))

(assert (=> b!158429 m!145827))

(declare-fun m!146071 () Bool)

(assert (=> b!158429 m!146071))

(declare-fun m!146073 () Bool)

(assert (=> b!158429 m!146073))

(assert (=> b!158429 m!146065))

(assert (=> b!158429 m!145827))

(assert (=> b!158429 m!146061))

(declare-fun m!146075 () Bool)

(assert (=> b!158429 m!146075))

(assert (=> b!158429 m!145827))

(assert (=> b!158429 m!146055))

(declare-fun m!146077 () Bool)

(assert (=> b!158429 m!146077))

(assert (=> b!158240 d!38549))

(declare-fun d!38551 () Bool)

(assert (=> d!38551 (= (list!973 lt!47236) (list!977 (c!31675 lt!47236)))))

(declare-fun bs!14757 () Bool)

(assert (= bs!14757 d!38551))

(declare-fun m!146079 () Bool)

(assert (=> bs!14757 m!146079))

(assert (=> b!158240 d!38551))

(declare-fun lt!47432 () Token!702)

(declare-fun b!158500 () Bool)

(declare-fun e!95237 () Bool)

(declare-datatypes ((Option!267 0))(
  ( (None!266) (Some!266 (v!13669 Rule!758)) )
))
(declare-fun get!740 (Option!267) Rule!758)

(declare-fun getRuleFromTag!16 (LexerInterface!365 List!2740 String!3585) Option!267)

(assert (=> b!158500 (= e!95237 (= (rule!986 lt!47432) (get!740 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47432))))))))

(declare-fun b!158502 () Bool)

(declare-fun e!95238 () Unit!2184)

(declare-fun Unit!2200 () Unit!2184)

(assert (=> b!158502 (= e!95238 Unit!2200)))

(declare-fun b!158499 () Bool)

(declare-fun res!72033 () Bool)

(assert (=> b!158499 (=> (not res!72033) (not e!95237))))

(declare-fun matchR!73 (Regex!703 List!2738) Bool)

(assert (=> b!158499 (= res!72033 (matchR!73 (regex!479 (get!740 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47432))))) (list!973 (charsOf!134 lt!47432))))))

(declare-fun d!38553 () Bool)

(declare-fun isDefined!117 (Option!264) Bool)

(assert (=> d!38553 (isDefined!117 (maxPrefix!117 thiss!17480 rules!1920 (++!600 (list!973 call!6638) (list!973 lt!47236))))))

(declare-fun lt!47441 () Unit!2184)

(assert (=> d!38553 (= lt!47441 e!95238)))

(declare-fun c!31817 () Bool)

(declare-fun isEmpty!1102 (Option!264) Bool)

(assert (=> d!38553 (= c!31817 (isEmpty!1102 (maxPrefix!117 thiss!17480 rules!1920 (++!600 (list!973 call!6638) (list!973 lt!47236)))))))

(declare-fun lt!47429 () Unit!2184)

(declare-fun lt!47440 () Unit!2184)

(assert (=> d!38553 (= lt!47429 lt!47440)))

(assert (=> d!38553 e!95237))

(declare-fun res!72032 () Bool)

(assert (=> d!38553 (=> (not res!72032) (not e!95237))))

(declare-fun isDefined!118 (Option!267) Bool)

(assert (=> d!38553 (= res!72032 (isDefined!118 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47432)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!16 (LexerInterface!365 List!2740 List!2738 Token!702) Unit!2184)

(assert (=> d!38553 (= lt!47440 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!16 thiss!17480 rules!1920 (list!973 call!6638) lt!47432))))

(declare-fun lt!47445 () Unit!2184)

(declare-fun lt!47431 () Unit!2184)

(assert (=> d!38553 (= lt!47445 lt!47431)))

(declare-fun lt!47437 () List!2738)

(declare-fun isPrefix!217 (List!2738 List!2738) Bool)

(assert (=> d!38553 (isPrefix!217 lt!47437 (++!600 (list!973 call!6638) (list!973 lt!47236)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!16 (List!2738 List!2738 List!2738) Unit!2184)

(assert (=> d!38553 (= lt!47431 (lemmaPrefixStaysPrefixWhenAddingToSuffix!16 lt!47437 (list!973 call!6638) (list!973 lt!47236)))))

(assert (=> d!38553 (= lt!47437 (list!973 (charsOf!134 lt!47432)))))

(declare-fun lt!47439 () Unit!2184)

(declare-fun lt!47443 () Unit!2184)

(assert (=> d!38553 (= lt!47439 lt!47443)))

(declare-fun lt!47435 () List!2738)

(declare-fun lt!47434 () List!2738)

(assert (=> d!38553 (isPrefix!217 lt!47435 (++!600 lt!47435 lt!47434))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!120 (List!2738 List!2738) Unit!2184)

(assert (=> d!38553 (= lt!47443 (lemmaConcatTwoListThenFirstIsPrefix!120 lt!47435 lt!47434))))

(declare-fun get!741 (Option!264) tuple2!2640)

(assert (=> d!38553 (= lt!47434 (_2!1536 (get!741 (maxPrefix!117 thiss!17480 rules!1920 (list!973 call!6638)))))))

(assert (=> d!38553 (= lt!47435 (list!973 (charsOf!134 lt!47432)))))

(assert (=> d!38553 (= lt!47432 (head!590 (list!976 (_1!1535 (lex!177 thiss!17480 rules!1920 (seqFromList!336 (list!973 call!6638)))))))))

(assert (=> d!38553 (not (isEmpty!1094 rules!1920))))

(assert (=> d!38553 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 (list!973 call!6638) (list!973 lt!47236)) lt!47441)))

(declare-fun b!158501 () Bool)

(declare-fun Unit!2203 () Unit!2184)

(assert (=> b!158501 (= e!95238 Unit!2203)))

(declare-fun lt!47442 () List!2738)

(assert (=> b!158501 (= lt!47442 (++!600 (list!973 call!6638) (list!973 lt!47236)))))

(declare-fun lt!47436 () Unit!2184)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!16 (LexerInterface!365 Rule!758 List!2740 List!2738) Unit!2184)

(assert (=> b!158501 (= lt!47436 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!16 thiss!17480 (rule!986 lt!47432) rules!1920 lt!47442))))

(declare-fun maxPrefixOneRule!61 (LexerInterface!365 Rule!758 List!2738) Option!264)

(assert (=> b!158501 (isEmpty!1102 (maxPrefixOneRule!61 thiss!17480 (rule!986 lt!47432) lt!47442))))

(declare-fun lt!47438 () Unit!2184)

(assert (=> b!158501 (= lt!47438 lt!47436)))

(declare-fun lt!47444 () List!2738)

(assert (=> b!158501 (= lt!47444 (list!973 (charsOf!134 lt!47432)))))

(declare-fun lt!47430 () Unit!2184)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!16 (LexerInterface!365 Rule!758 List!2738 List!2738) Unit!2184)

(assert (=> b!158501 (= lt!47430 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!16 thiss!17480 (rule!986 lt!47432) lt!47444 (++!600 (list!973 call!6638) (list!973 lt!47236))))))

(assert (=> b!158501 (not (matchR!73 (regex!479 (rule!986 lt!47432)) lt!47444))))

(declare-fun lt!47433 () Unit!2184)

(assert (=> b!158501 (= lt!47433 lt!47430)))

(assert (=> b!158501 false))

(assert (= (and d!38553 res!72032) b!158499))

(assert (= (and b!158499 res!72033) b!158500))

(assert (= (and d!38553 c!31817) b!158501))

(assert (= (and d!38553 (not c!31817)) b!158502))

(declare-fun m!146273 () Bool)

(assert (=> b!158500 m!146273))

(assert (=> b!158500 m!146273))

(declare-fun m!146275 () Bool)

(assert (=> b!158500 m!146275))

(declare-fun m!146277 () Bool)

(assert (=> b!158499 m!146277))

(assert (=> b!158499 m!146277))

(declare-fun m!146279 () Bool)

(assert (=> b!158499 m!146279))

(assert (=> b!158499 m!146279))

(declare-fun m!146281 () Bool)

(assert (=> b!158499 m!146281))

(assert (=> b!158499 m!146273))

(assert (=> b!158499 m!146275))

(assert (=> b!158499 m!146273))

(assert (=> d!38553 m!146273))

(declare-fun m!146283 () Bool)

(assert (=> d!38553 m!146283))

(declare-fun m!146285 () Bool)

(assert (=> d!38553 m!146285))

(declare-fun m!146287 () Bool)

(assert (=> d!38553 m!146287))

(assert (=> d!38553 m!145825))

(declare-fun m!146289 () Bool)

(assert (=> d!38553 m!146289))

(declare-fun m!146291 () Bool)

(assert (=> d!38553 m!146291))

(declare-fun m!146293 () Bool)

(assert (=> d!38553 m!146293))

(assert (=> d!38553 m!146277))

(assert (=> d!38553 m!146279))

(assert (=> d!38553 m!145825))

(declare-fun m!146295 () Bool)

(assert (=> d!38553 m!146295))

(assert (=> d!38553 m!146291))

(declare-fun m!146297 () Bool)

(assert (=> d!38553 m!146297))

(assert (=> d!38553 m!146295))

(declare-fun m!146299 () Bool)

(assert (=> d!38553 m!146299))

(declare-fun m!146301 () Bool)

(assert (=> d!38553 m!146301))

(declare-fun m!146303 () Bool)

(assert (=> d!38553 m!146303))

(declare-fun m!146305 () Bool)

(assert (=> d!38553 m!146305))

(declare-fun m!146307 () Bool)

(assert (=> d!38553 m!146307))

(declare-fun m!146309 () Bool)

(assert (=> d!38553 m!146309))

(assert (=> d!38553 m!146291))

(assert (=> d!38553 m!146309))

(declare-fun m!146311 () Bool)

(assert (=> d!38553 m!146311))

(assert (=> d!38553 m!145825))

(assert (=> d!38553 m!145831))

(assert (=> d!38553 m!146309))

(assert (=> d!38553 m!146273))

(assert (=> d!38553 m!146277))

(assert (=> d!38553 m!146305))

(assert (=> d!38553 m!145825))

(assert (=> d!38553 m!146285))

(assert (=> d!38553 m!145261))

(assert (=> d!38553 m!146301))

(declare-fun m!146313 () Bool)

(assert (=> d!38553 m!146313))

(assert (=> d!38553 m!145825))

(assert (=> d!38553 m!145831))

(declare-fun m!146315 () Bool)

(assert (=> d!38553 m!146315))

(assert (=> b!158501 m!146277))

(declare-fun m!146317 () Bool)

(assert (=> b!158501 m!146317))

(declare-fun m!146319 () Bool)

(assert (=> b!158501 m!146319))

(assert (=> b!158501 m!146277))

(assert (=> b!158501 m!146279))

(declare-fun m!146321 () Bool)

(assert (=> b!158501 m!146321))

(assert (=> b!158501 m!146317))

(declare-fun m!146323 () Bool)

(assert (=> b!158501 m!146323))

(assert (=> b!158501 m!145825))

(assert (=> b!158501 m!145831))

(assert (=> b!158501 m!146309))

(assert (=> b!158501 m!146309))

(declare-fun m!146325 () Bool)

(assert (=> b!158501 m!146325))

(assert (=> b!158240 d!38553))

(declare-fun d!38589 () Bool)

(declare-fun lt!47454 () BalanceConc!1568)

(declare-fun printList!57 (LexerInterface!365 List!2739) List!2738)

(assert (=> d!38589 (= (list!973 lt!47454) (printList!57 thiss!17480 (list!976 (singletonSeq!35 call!6641))))))

(assert (=> d!38589 (= lt!47454 (printTailRec!65 thiss!17480 (singletonSeq!35 call!6641) 0 (BalanceConc!1569 Empty!780)))))

(assert (=> d!38589 (= (print!102 thiss!17480 (singletonSeq!35 call!6641)) lt!47454)))

(declare-fun bs!14772 () Bool)

(assert (= bs!14772 d!38589))

(declare-fun m!146351 () Bool)

(assert (=> bs!14772 m!146351))

(assert (=> bs!14772 m!145827))

(assert (=> bs!14772 m!146071))

(assert (=> bs!14772 m!146071))

(declare-fun m!146355 () Bool)

(assert (=> bs!14772 m!146355))

(assert (=> bs!14772 m!145827))

(assert (=> bs!14772 m!145829))

(assert (=> b!158240 d!38589))

(declare-fun d!38597 () Bool)

(assert (=> d!38597 (= (list!973 call!6638) (list!977 (c!31675 call!6638)))))

(declare-fun bs!14774 () Bool)

(assert (= bs!14774 d!38597))

(declare-fun m!146357 () Bool)

(assert (=> bs!14774 m!146357))

(assert (=> b!158240 d!38597))

(declare-fun d!38599 () Bool)

(declare-fun lt!47456 () Int)

(assert (=> d!38599 (>= lt!47456 0)))

(declare-fun e!95243 () Int)

(assert (=> d!38599 (= lt!47456 e!95243)))

(declare-fun c!31822 () Bool)

(assert (=> d!38599 (= c!31822 ((_ is Nil!2728) lt!47076))))

(assert (=> d!38599 (= (size!2305 lt!47076) lt!47456)))

(declare-fun b!158519 () Bool)

(assert (=> b!158519 (= e!95243 0)))

(declare-fun b!158520 () Bool)

(assert (=> b!158520 (= e!95243 (+ 1 (size!2305 (t!25602 lt!47076))))))

(assert (= (and d!38599 c!31822) b!158519))

(assert (= (and d!38599 (not c!31822)) b!158520))

(declare-fun m!146363 () Bool)

(assert (=> b!158520 m!146363))

(assert (=> b!157955 d!38599))

(declare-fun d!38605 () Bool)

(declare-fun lt!47459 () Int)

(assert (=> d!38605 (>= lt!47459 0)))

(declare-fun e!95246 () Int)

(assert (=> d!38605 (= lt!47459 e!95246)))

(declare-fun c!31825 () Bool)

(assert (=> d!38605 (= c!31825 ((_ is Nil!2728) lt!47055))))

(assert (=> d!38605 (= (size!2305 lt!47055) lt!47459)))

(declare-fun b!158525 () Bool)

(assert (=> b!158525 (= e!95246 0)))

(declare-fun b!158526 () Bool)

(assert (=> b!158526 (= e!95246 (+ 1 (size!2305 (t!25602 lt!47055))))))

(assert (= (and d!38605 c!31825) b!158525))

(assert (= (and d!38605 (not c!31825)) b!158526))

(assert (=> b!158526 m!145951))

(assert (=> b!157955 d!38605))

(declare-fun d!38609 () Bool)

(declare-fun lt!47460 () Int)

(assert (=> d!38609 (>= lt!47460 0)))

(declare-fun e!95249 () Int)

(assert (=> d!38609 (= lt!47460 e!95249)))

(declare-fun c!31826 () Bool)

(assert (=> d!38609 (= c!31826 ((_ is Nil!2728) lt!47057))))

(assert (=> d!38609 (= (size!2305 lt!47057) lt!47460)))

(declare-fun b!158529 () Bool)

(assert (=> b!158529 (= e!95249 0)))

(declare-fun b!158530 () Bool)

(assert (=> b!158530 (= e!95249 (+ 1 (size!2305 (t!25602 lt!47057))))))

(assert (= (and d!38609 c!31826) b!158529))

(assert (= (and d!38609 (not c!31826)) b!158530))

(declare-fun m!146367 () Bool)

(assert (=> b!158530 m!146367))

(assert (=> b!157955 d!38609))

(declare-fun b!158557 () Bool)

(declare-fun e!95262 () Bool)

(declare-fun lt!47480 () Option!264)

(declare-fun contains!434 (List!2740 Rule!758) Bool)

(assert (=> b!158557 (= e!95262 (contains!434 rules!1920 (rule!986 (_1!1536 (get!741 lt!47480)))))))

(declare-fun b!158558 () Bool)

(declare-fun e!95264 () Option!264)

(declare-fun lt!47482 () Option!264)

(declare-fun lt!47481 () Option!264)

(assert (=> b!158558 (= e!95264 (ite (and ((_ is None!263) lt!47482) ((_ is None!263) lt!47481)) None!263 (ite ((_ is None!263) lt!47481) lt!47482 (ite ((_ is None!263) lt!47482) lt!47481 (ite (>= (size!2302 (_1!1536 (v!13662 lt!47482))) (size!2302 (_1!1536 (v!13662 lt!47481)))) lt!47482 lt!47481)))))))

(declare-fun call!6652 () Option!264)

(assert (=> b!158558 (= lt!47482 call!6652)))

(assert (=> b!158558 (= lt!47481 (maxPrefix!117 thiss!17480 (t!25604 rules!1920) (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239)))))

(declare-fun d!38611 () Bool)

(declare-fun e!95263 () Bool)

(assert (=> d!38611 e!95263))

(declare-fun res!72069 () Bool)

(assert (=> d!38611 (=> res!72069 e!95263)))

(assert (=> d!38611 (= res!72069 (isEmpty!1102 lt!47480))))

(assert (=> d!38611 (= lt!47480 e!95264)))

(declare-fun c!31831 () Bool)

(assert (=> d!38611 (= c!31831 (and ((_ is Cons!2730) rules!1920) ((_ is Nil!2730) (t!25604 rules!1920))))))

(declare-fun lt!47483 () Unit!2184)

(declare-fun lt!47484 () Unit!2184)

(assert (=> d!38611 (= lt!47483 lt!47484)))

(assert (=> d!38611 (isPrefix!217 (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239) (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239))))

(declare-fun lemmaIsPrefixRefl!124 (List!2738 List!2738) Unit!2184)

(assert (=> d!38611 (= lt!47484 (lemmaIsPrefixRefl!124 (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239) (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239)))))

(declare-fun rulesValidInductive!101 (LexerInterface!365 List!2740) Bool)

(assert (=> d!38611 (rulesValidInductive!101 thiss!17480 rules!1920)))

(assert (=> d!38611 (= (maxPrefix!117 thiss!17480 rules!1920 (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239)) lt!47480)))

(declare-fun b!158559 () Bool)

(declare-fun res!72068 () Bool)

(assert (=> b!158559 (=> (not res!72068) (not e!95262))))

(declare-fun apply!375 (TokenValueInjection!774 BalanceConc!1568) TokenValue!501)

(assert (=> b!158559 (= res!72068 (= (value!17967 (_1!1536 (get!741 lt!47480))) (apply!375 (transformation!479 (rule!986 (_1!1536 (get!741 lt!47480)))) (seqFromList!336 (originalCharacters!522 (_1!1536 (get!741 lt!47480)))))))))

(declare-fun b!158560 () Bool)

(declare-fun res!72071 () Bool)

(assert (=> b!158560 (=> (not res!72071) (not e!95262))))

(assert (=> b!158560 (= res!72071 (matchR!73 (regex!479 (rule!986 (_1!1536 (get!741 lt!47480)))) (list!973 (charsOf!134 (_1!1536 (get!741 lt!47480))))))))

(declare-fun b!158561 () Bool)

(declare-fun res!72067 () Bool)

(assert (=> b!158561 (=> (not res!72067) (not e!95262))))

(assert (=> b!158561 (= res!72067 (= (++!600 (list!973 (charsOf!134 (_1!1536 (get!741 lt!47480)))) (_2!1536 (get!741 lt!47480))) (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239)))))

(declare-fun bm!6647 () Bool)

(assert (=> bm!6647 (= call!6652 (maxPrefixOneRule!61 thiss!17480 (h!8127 rules!1920) (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239)))))

(declare-fun b!158562 () Bool)

(declare-fun res!72072 () Bool)

(assert (=> b!158562 (=> (not res!72072) (not e!95262))))

(assert (=> b!158562 (= res!72072 (< (size!2305 (_2!1536 (get!741 lt!47480))) (size!2305 (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239))))))

(declare-fun b!158563 () Bool)

(declare-fun res!72070 () Bool)

(assert (=> b!158563 (=> (not res!72070) (not e!95262))))

(assert (=> b!158563 (= res!72070 (= (list!973 (charsOf!134 (_1!1536 (get!741 lt!47480)))) (originalCharacters!522 (_1!1536 (get!741 lt!47480)))))))

(declare-fun b!158564 () Bool)

(assert (=> b!158564 (= e!95263 e!95262)))

(declare-fun res!72066 () Bool)

(assert (=> b!158564 (=> (not res!72066) (not e!95262))))

(assert (=> b!158564 (= res!72066 (isDefined!117 lt!47480))))

(declare-fun b!158565 () Bool)

(assert (=> b!158565 (= e!95264 call!6652)))

(assert (= (and d!38611 c!31831) b!158565))

(assert (= (and d!38611 (not c!31831)) b!158558))

(assert (= (or b!158565 b!158558) bm!6647))

(assert (= (and d!38611 (not res!72069)) b!158564))

(assert (= (and b!158564 res!72066) b!158563))

(assert (= (and b!158563 res!72070) b!158562))

(assert (= (and b!158562 res!72072) b!158561))

(assert (= (and b!158561 res!72067) b!158559))

(assert (= (and b!158559 res!72068) b!158560))

(assert (= (and b!158560 res!72071) b!158557))

(declare-fun m!146413 () Bool)

(assert (=> b!158559 m!146413))

(declare-fun m!146415 () Bool)

(assert (=> b!158559 m!146415))

(assert (=> b!158559 m!146415))

(declare-fun m!146417 () Bool)

(assert (=> b!158559 m!146417))

(assert (=> b!158561 m!146413))

(declare-fun m!146419 () Bool)

(assert (=> b!158561 m!146419))

(assert (=> b!158561 m!146419))

(declare-fun m!146421 () Bool)

(assert (=> b!158561 m!146421))

(assert (=> b!158561 m!146421))

(declare-fun m!146423 () Bool)

(assert (=> b!158561 m!146423))

(assert (=> bm!6647 m!145851))

(declare-fun m!146425 () Bool)

(assert (=> bm!6647 m!146425))

(assert (=> b!158557 m!146413))

(declare-fun m!146427 () Bool)

(assert (=> b!158557 m!146427))

(assert (=> b!158558 m!145851))

(declare-fun m!146429 () Bool)

(assert (=> b!158558 m!146429))

(assert (=> b!158560 m!146413))

(assert (=> b!158560 m!146419))

(assert (=> b!158560 m!146419))

(assert (=> b!158560 m!146421))

(assert (=> b!158560 m!146421))

(declare-fun m!146431 () Bool)

(assert (=> b!158560 m!146431))

(declare-fun m!146433 () Bool)

(assert (=> b!158564 m!146433))

(assert (=> b!158562 m!146413))

(declare-fun m!146435 () Bool)

(assert (=> b!158562 m!146435))

(assert (=> b!158562 m!145851))

(declare-fun m!146437 () Bool)

(assert (=> b!158562 m!146437))

(assert (=> b!158563 m!146413))

(assert (=> b!158563 m!146419))

(assert (=> b!158563 m!146419))

(assert (=> b!158563 m!146421))

(declare-fun m!146439 () Bool)

(assert (=> d!38611 m!146439))

(assert (=> d!38611 m!145851))

(assert (=> d!38611 m!145851))

(declare-fun m!146441 () Bool)

(assert (=> d!38611 m!146441))

(assert (=> d!38611 m!145851))

(assert (=> d!38611 m!145851))

(declare-fun m!146443 () Bool)

(assert (=> d!38611 m!146443))

(declare-fun m!146445 () Bool)

(assert (=> d!38611 m!146445))

(assert (=> b!158261 d!38611))

(assert (=> b!158261 d!38405))

(assert (=> b!158261 d!38417))

(assert (=> b!158261 d!38419))

(declare-fun b!158568 () Bool)

(declare-fun res!72073 () Bool)

(declare-fun e!95265 () Bool)

(assert (=> b!158568 (=> (not res!72073) (not e!95265))))

(declare-fun lt!47485 () List!2738)

(assert (=> b!158568 (= res!72073 (= (size!2305 lt!47485) (+ (size!2305 (list!973 (charsOf!134 (h!8126 tokens!465)))) (size!2305 lt!47239))))))

(declare-fun b!158569 () Bool)

(assert (=> b!158569 (= e!95265 (or (not (= lt!47239 Nil!2728)) (= lt!47485 (list!973 (charsOf!134 (h!8126 tokens!465))))))))

(declare-fun b!158567 () Bool)

(declare-fun e!95266 () List!2738)

(assert (=> b!158567 (= e!95266 (Cons!2728 (h!8125 (list!973 (charsOf!134 (h!8126 tokens!465)))) (++!600 (t!25602 (list!973 (charsOf!134 (h!8126 tokens!465)))) lt!47239)))))

(declare-fun b!158566 () Bool)

(assert (=> b!158566 (= e!95266 lt!47239)))

(declare-fun d!38641 () Bool)

(assert (=> d!38641 e!95265))

(declare-fun res!72074 () Bool)

(assert (=> d!38641 (=> (not res!72074) (not e!95265))))

(assert (=> d!38641 (= res!72074 (= (content!378 lt!47485) ((_ map or) (content!378 (list!973 (charsOf!134 (h!8126 tokens!465)))) (content!378 lt!47239))))))

(assert (=> d!38641 (= lt!47485 e!95266)))

(declare-fun c!31832 () Bool)

(assert (=> d!38641 (= c!31832 ((_ is Nil!2728) (list!973 (charsOf!134 (h!8126 tokens!465)))))))

(assert (=> d!38641 (= (++!600 (list!973 (charsOf!134 (h!8126 tokens!465))) lt!47239) lt!47485)))

(assert (= (and d!38641 c!31832) b!158566))

(assert (= (and d!38641 (not c!31832)) b!158567))

(assert (= (and d!38641 res!72074) b!158568))

(assert (= (and b!158568 res!72073) b!158569))

(declare-fun m!146447 () Bool)

(assert (=> b!158568 m!146447))

(assert (=> b!158568 m!145295))

(declare-fun m!146449 () Bool)

(assert (=> b!158568 m!146449))

(assert (=> b!158568 m!145913))

(declare-fun m!146451 () Bool)

(assert (=> b!158567 m!146451))

(declare-fun m!146453 () Bool)

(assert (=> d!38641 m!146453))

(assert (=> d!38641 m!145295))

(declare-fun m!146455 () Bool)

(assert (=> d!38641 m!146455))

(assert (=> d!38641 m!145921))

(assert (=> b!158261 d!38641))

(declare-fun d!38643 () Bool)

(assert (=> d!38643 (dynLambda!973 lambda!4264 (h!8126 tokens!465))))

(declare-fun lt!47488 () Unit!2184)

(declare-fun choose!1777 (List!2739 Int Token!702) Unit!2184)

(assert (=> d!38643 (= lt!47488 (choose!1777 tokens!465 lambda!4264 (h!8126 tokens!465)))))

(declare-fun e!95269 () Bool)

(assert (=> d!38643 e!95269))

(declare-fun res!72077 () Bool)

(assert (=> d!38643 (=> (not res!72077) (not e!95269))))

(assert (=> d!38643 (= res!72077 (forall!489 tokens!465 lambda!4264))))

(assert (=> d!38643 (= (forallContained!60 tokens!465 lambda!4264 (h!8126 tokens!465)) lt!47488)))

(declare-fun b!158572 () Bool)

(declare-fun contains!435 (List!2739 Token!702) Bool)

(assert (=> b!158572 (= e!95269 (contains!435 tokens!465 (h!8126 tokens!465)))))

(assert (= (and d!38643 res!72077) b!158572))

(declare-fun b_lambda!3199 () Bool)

(assert (=> (not b_lambda!3199) (not d!38643)))

(declare-fun m!146457 () Bool)

(assert (=> d!38643 m!146457))

(declare-fun m!146459 () Bool)

(assert (=> d!38643 m!146459))

(declare-fun m!146461 () Bool)

(assert (=> d!38643 m!146461))

(declare-fun m!146463 () Bool)

(assert (=> b!158572 m!146463))

(assert (=> b!158261 d!38643))

(declare-fun d!38645 () Bool)

(declare-fun res!72078 () Bool)

(declare-fun e!95270 () Bool)

(assert (=> d!38645 (=> res!72078 e!95270)))

(assert (=> d!38645 (= res!72078 ((_ is Nil!2729) (t!25603 tokens!465)))))

(assert (=> d!38645 (= (forall!489 (t!25603 tokens!465) lambda!4232) e!95270)))

(declare-fun b!158573 () Bool)

(declare-fun e!95271 () Bool)

(assert (=> b!158573 (= e!95270 e!95271)))

(declare-fun res!72079 () Bool)

(assert (=> b!158573 (=> (not res!72079) (not e!95271))))

(assert (=> b!158573 (= res!72079 (dynLambda!973 lambda!4232 (h!8126 (t!25603 tokens!465))))))

(declare-fun b!158574 () Bool)

(assert (=> b!158574 (= e!95271 (forall!489 (t!25603 (t!25603 tokens!465)) lambda!4232))))

(assert (= (and d!38645 (not res!72078)) b!158573))

(assert (= (and b!158573 res!72079) b!158574))

(declare-fun b_lambda!3201 () Bool)

(assert (=> (not b_lambda!3201) (not b!158573)))

(declare-fun m!146465 () Bool)

(assert (=> b!158573 m!146465))

(declare-fun m!146467 () Bool)

(assert (=> b!158574 m!146467))

(assert (=> b!157874 d!38645))

(declare-fun d!38647 () Bool)

(declare-fun lt!47489 () BalanceConc!1568)

(assert (=> d!38647 (= (list!973 lt!47489) (printList!57 thiss!17480 (list!976 (singletonSeq!35 (h!8126 (t!25603 tokens!465))))))))

(assert (=> d!38647 (= lt!47489 (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 (t!25603 tokens!465))) 0 (BalanceConc!1569 Empty!780)))))

(assert (=> d!38647 (= (print!102 thiss!17480 (singletonSeq!35 (h!8126 (t!25603 tokens!465)))) lt!47489)))

(declare-fun bs!14783 () Bool)

(assert (= bs!14783 d!38647))

(declare-fun m!146469 () Bool)

(assert (=> bs!14783 m!146469))

(assert (=> bs!14783 m!145543))

(declare-fun m!146471 () Bool)

(assert (=> bs!14783 m!146471))

(assert (=> bs!14783 m!146471))

(declare-fun m!146473 () Bool)

(assert (=> bs!14783 m!146473))

(assert (=> bs!14783 m!145543))

(assert (=> bs!14783 m!145547))

(assert (=> b!158030 d!38647))

(declare-fun d!38649 () Bool)

(declare-fun e!95272 () Bool)

(assert (=> d!38649 e!95272))

(declare-fun res!72080 () Bool)

(assert (=> d!38649 (=> (not res!72080) (not e!95272))))

(declare-fun lt!47490 () BalanceConc!1570)

(assert (=> d!38649 (= res!72080 (= (list!976 lt!47490) (Cons!2729 (h!8126 (t!25603 tokens!465)) Nil!2729)))))

(assert (=> d!38649 (= lt!47490 (singleton!25 (h!8126 (t!25603 tokens!465))))))

(assert (=> d!38649 (= (singletonSeq!35 (h!8126 (t!25603 tokens!465))) lt!47490)))

(declare-fun b!158575 () Bool)

(assert (=> b!158575 (= e!95272 (isBalanced!218 (c!31677 lt!47490)))))

(assert (= (and d!38649 res!72080) b!158575))

(declare-fun m!146475 () Bool)

(assert (=> d!38649 m!146475))

(declare-fun m!146477 () Bool)

(assert (=> d!38649 m!146477))

(declare-fun m!146479 () Bool)

(assert (=> b!158575 m!146479))

(assert (=> b!158030 d!38649))

(declare-fun d!38651 () Bool)

(declare-fun lt!47491 () BalanceConc!1568)

(assert (=> d!38651 (= (list!973 lt!47491) (printListTailRec!44 thiss!17480 (dropList!76 (singletonSeq!35 (h!8126 (t!25603 tokens!465))) 0) (list!973 (BalanceConc!1569 Empty!780))))))

(declare-fun e!95274 () BalanceConc!1568)

(assert (=> d!38651 (= lt!47491 e!95274)))

(declare-fun c!31833 () Bool)

(assert (=> d!38651 (= c!31833 (>= 0 (size!2303 (singletonSeq!35 (h!8126 (t!25603 tokens!465))))))))

(declare-fun e!95273 () Bool)

(assert (=> d!38651 e!95273))

(declare-fun res!72081 () Bool)

(assert (=> d!38651 (=> (not res!72081) (not e!95273))))

(assert (=> d!38651 (= res!72081 (>= 0 0))))

(assert (=> d!38651 (= (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 (t!25603 tokens!465))) 0 (BalanceConc!1569 Empty!780)) lt!47491)))

(declare-fun b!158576 () Bool)

(assert (=> b!158576 (= e!95273 (<= 0 (size!2303 (singletonSeq!35 (h!8126 (t!25603 tokens!465))))))))

(declare-fun b!158577 () Bool)

(assert (=> b!158577 (= e!95274 (BalanceConc!1569 Empty!780))))

(declare-fun b!158578 () Bool)

(assert (=> b!158578 (= e!95274 (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 (t!25603 tokens!465))) (+ 0 1) (++!602 (BalanceConc!1569 Empty!780) (charsOf!134 (apply!373 (singletonSeq!35 (h!8126 (t!25603 tokens!465))) 0)))))))

(declare-fun lt!47495 () List!2739)

(assert (=> b!158578 (= lt!47495 (list!976 (singletonSeq!35 (h!8126 (t!25603 tokens!465)))))))

(declare-fun lt!47496 () Unit!2184)

(assert (=> b!158578 (= lt!47496 (lemmaDropApply!116 lt!47495 0))))

(assert (=> b!158578 (= (head!590 (drop!129 lt!47495 0)) (apply!374 lt!47495 0))))

(declare-fun lt!47494 () Unit!2184)

(assert (=> b!158578 (= lt!47494 lt!47496)))

(declare-fun lt!47493 () List!2739)

(assert (=> b!158578 (= lt!47493 (list!976 (singletonSeq!35 (h!8126 (t!25603 tokens!465)))))))

(declare-fun lt!47497 () Unit!2184)

(assert (=> b!158578 (= lt!47497 (lemmaDropTail!108 lt!47493 0))))

(assert (=> b!158578 (= (tail!330 (drop!129 lt!47493 0)) (drop!129 lt!47493 (+ 0 1)))))

(declare-fun lt!47492 () Unit!2184)

(assert (=> b!158578 (= lt!47492 lt!47497)))

(assert (= (and d!38651 res!72081) b!158576))

(assert (= (and d!38651 c!31833) b!158577))

(assert (= (and d!38651 (not c!31833)) b!158578))

(declare-fun m!146481 () Bool)

(assert (=> d!38651 m!146481))

(assert (=> d!38651 m!146045))

(declare-fun m!146483 () Bool)

(assert (=> d!38651 m!146483))

(declare-fun m!146485 () Bool)

(assert (=> d!38651 m!146485))

(assert (=> d!38651 m!145543))

(declare-fun m!146487 () Bool)

(assert (=> d!38651 m!146487))

(assert (=> d!38651 m!146045))

(assert (=> d!38651 m!145543))

(assert (=> d!38651 m!146481))

(assert (=> b!158576 m!145543))

(assert (=> b!158576 m!146487))

(declare-fun m!146489 () Bool)

(assert (=> b!158578 m!146489))

(declare-fun m!146491 () Bool)

(assert (=> b!158578 m!146491))

(declare-fun m!146493 () Bool)

(assert (=> b!158578 m!146493))

(declare-fun m!146495 () Bool)

(assert (=> b!158578 m!146495))

(declare-fun m!146497 () Bool)

(assert (=> b!158578 m!146497))

(assert (=> b!158578 m!146489))

(declare-fun m!146499 () Bool)

(assert (=> b!158578 m!146499))

(assert (=> b!158578 m!146493))

(declare-fun m!146501 () Bool)

(assert (=> b!158578 m!146501))

(declare-fun m!146503 () Bool)

(assert (=> b!158578 m!146503))

(declare-fun m!146505 () Bool)

(assert (=> b!158578 m!146505))

(assert (=> b!158578 m!145543))

(assert (=> b!158578 m!146471))

(declare-fun m!146507 () Bool)

(assert (=> b!158578 m!146507))

(assert (=> b!158578 m!146501))

(assert (=> b!158578 m!145543))

(assert (=> b!158578 m!146497))

(declare-fun m!146509 () Bool)

(assert (=> b!158578 m!146509))

(assert (=> b!158578 m!145543))

(assert (=> b!158578 m!146491))

(declare-fun m!146511 () Bool)

(assert (=> b!158578 m!146511))

(assert (=> b!158030 d!38651))

(declare-fun e!95275 () Bool)

(declare-fun b!158580 () Bool)

(declare-fun lt!47501 () Token!702)

(assert (=> b!158580 (= e!95275 (= (rule!986 lt!47501) (get!740 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47501))))))))

(declare-fun b!158582 () Bool)

(declare-fun e!95276 () Unit!2184)

(declare-fun Unit!2204 () Unit!2184)

(assert (=> b!158582 (= e!95276 Unit!2204)))

(declare-fun b!158579 () Bool)

(declare-fun res!72083 () Bool)

(assert (=> b!158579 (=> (not res!72083) (not e!95275))))

(assert (=> b!158579 (= res!72083 (matchR!73 (regex!479 (get!740 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47501))))) (list!973 (charsOf!134 lt!47501))))))

(declare-fun d!38653 () Bool)

(assert (=> d!38653 (isDefined!117 (maxPrefix!117 thiss!17480 rules!1920 (++!600 call!6604 lt!47141)))))

(declare-fun lt!47510 () Unit!2184)

(assert (=> d!38653 (= lt!47510 e!95276)))

(declare-fun c!31834 () Bool)

(assert (=> d!38653 (= c!31834 (isEmpty!1102 (maxPrefix!117 thiss!17480 rules!1920 (++!600 call!6604 lt!47141))))))

(declare-fun lt!47498 () Unit!2184)

(declare-fun lt!47509 () Unit!2184)

(assert (=> d!38653 (= lt!47498 lt!47509)))

(assert (=> d!38653 e!95275))

(declare-fun res!72082 () Bool)

(assert (=> d!38653 (=> (not res!72082) (not e!95275))))

(assert (=> d!38653 (= res!72082 (isDefined!118 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47501)))))))

(assert (=> d!38653 (= lt!47509 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!16 thiss!17480 rules!1920 call!6604 lt!47501))))

(declare-fun lt!47514 () Unit!2184)

(declare-fun lt!47500 () Unit!2184)

(assert (=> d!38653 (= lt!47514 lt!47500)))

(declare-fun lt!47506 () List!2738)

(assert (=> d!38653 (isPrefix!217 lt!47506 (++!600 call!6604 lt!47141))))

(assert (=> d!38653 (= lt!47500 (lemmaPrefixStaysPrefixWhenAddingToSuffix!16 lt!47506 call!6604 lt!47141))))

(assert (=> d!38653 (= lt!47506 (list!973 (charsOf!134 lt!47501)))))

(declare-fun lt!47508 () Unit!2184)

(declare-fun lt!47512 () Unit!2184)

(assert (=> d!38653 (= lt!47508 lt!47512)))

(declare-fun lt!47504 () List!2738)

(declare-fun lt!47503 () List!2738)

(assert (=> d!38653 (isPrefix!217 lt!47504 (++!600 lt!47504 lt!47503))))

(assert (=> d!38653 (= lt!47512 (lemmaConcatTwoListThenFirstIsPrefix!120 lt!47504 lt!47503))))

(assert (=> d!38653 (= lt!47503 (_2!1536 (get!741 (maxPrefix!117 thiss!17480 rules!1920 call!6604))))))

(assert (=> d!38653 (= lt!47504 (list!973 (charsOf!134 lt!47501)))))

(assert (=> d!38653 (= lt!47501 (head!590 (list!976 (_1!1535 (lex!177 thiss!17480 rules!1920 (seqFromList!336 call!6604))))))))

(assert (=> d!38653 (not (isEmpty!1094 rules!1920))))

(assert (=> d!38653 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 call!6604 lt!47141) lt!47510)))

(declare-fun b!158581 () Bool)

(declare-fun Unit!2205 () Unit!2184)

(assert (=> b!158581 (= e!95276 Unit!2205)))

(declare-fun lt!47511 () List!2738)

(assert (=> b!158581 (= lt!47511 (++!600 call!6604 lt!47141))))

(declare-fun lt!47505 () Unit!2184)

(assert (=> b!158581 (= lt!47505 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!16 thiss!17480 (rule!986 lt!47501) rules!1920 lt!47511))))

(assert (=> b!158581 (isEmpty!1102 (maxPrefixOneRule!61 thiss!17480 (rule!986 lt!47501) lt!47511))))

(declare-fun lt!47507 () Unit!2184)

(assert (=> b!158581 (= lt!47507 lt!47505)))

(declare-fun lt!47513 () List!2738)

(assert (=> b!158581 (= lt!47513 (list!973 (charsOf!134 lt!47501)))))

(declare-fun lt!47499 () Unit!2184)

(assert (=> b!158581 (= lt!47499 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!16 thiss!17480 (rule!986 lt!47501) lt!47513 (++!600 call!6604 lt!47141)))))

(assert (=> b!158581 (not (matchR!73 (regex!479 (rule!986 lt!47501)) lt!47513))))

(declare-fun lt!47502 () Unit!2184)

(assert (=> b!158581 (= lt!47502 lt!47499)))

(assert (=> b!158581 false))

(assert (= (and d!38653 res!72082) b!158579))

(assert (= (and b!158579 res!72083) b!158580))

(assert (= (and d!38653 c!31834) b!158581))

(assert (= (and d!38653 (not c!31834)) b!158582))

(declare-fun m!146513 () Bool)

(assert (=> b!158580 m!146513))

(assert (=> b!158580 m!146513))

(declare-fun m!146515 () Bool)

(assert (=> b!158580 m!146515))

(declare-fun m!146517 () Bool)

(assert (=> b!158579 m!146517))

(assert (=> b!158579 m!146517))

(declare-fun m!146519 () Bool)

(assert (=> b!158579 m!146519))

(assert (=> b!158579 m!146519))

(declare-fun m!146521 () Bool)

(assert (=> b!158579 m!146521))

(assert (=> b!158579 m!146513))

(assert (=> b!158579 m!146515))

(assert (=> b!158579 m!146513))

(assert (=> d!38653 m!146513))

(declare-fun m!146523 () Bool)

(assert (=> d!38653 m!146523))

(declare-fun m!146525 () Bool)

(assert (=> d!38653 m!146525))

(declare-fun m!146527 () Bool)

(assert (=> d!38653 m!146527))

(declare-fun m!146529 () Bool)

(assert (=> d!38653 m!146529))

(declare-fun m!146531 () Bool)

(assert (=> d!38653 m!146531))

(declare-fun m!146533 () Bool)

(assert (=> d!38653 m!146533))

(assert (=> d!38653 m!146517))

(assert (=> d!38653 m!146519))

(declare-fun m!146535 () Bool)

(assert (=> d!38653 m!146535))

(assert (=> d!38653 m!146531))

(declare-fun m!146537 () Bool)

(assert (=> d!38653 m!146537))

(assert (=> d!38653 m!146535))

(declare-fun m!146539 () Bool)

(assert (=> d!38653 m!146539))

(declare-fun m!146541 () Bool)

(assert (=> d!38653 m!146541))

(declare-fun m!146543 () Bool)

(assert (=> d!38653 m!146543))

(declare-fun m!146545 () Bool)

(assert (=> d!38653 m!146545))

(declare-fun m!146547 () Bool)

(assert (=> d!38653 m!146547))

(declare-fun m!146549 () Bool)

(assert (=> d!38653 m!146549))

(assert (=> d!38653 m!146531))

(assert (=> d!38653 m!146549))

(declare-fun m!146551 () Bool)

(assert (=> d!38653 m!146551))

(assert (=> d!38653 m!146549))

(assert (=> d!38653 m!146513))

(assert (=> d!38653 m!146517))

(assert (=> d!38653 m!146545))

(assert (=> d!38653 m!146525))

(assert (=> d!38653 m!145261))

(assert (=> d!38653 m!146541))

(declare-fun m!146553 () Bool)

(assert (=> d!38653 m!146553))

(declare-fun m!146555 () Bool)

(assert (=> d!38653 m!146555))

(assert (=> b!158581 m!146517))

(declare-fun m!146557 () Bool)

(assert (=> b!158581 m!146557))

(declare-fun m!146559 () Bool)

(assert (=> b!158581 m!146559))

(assert (=> b!158581 m!146517))

(assert (=> b!158581 m!146519))

(declare-fun m!146561 () Bool)

(assert (=> b!158581 m!146561))

(assert (=> b!158581 m!146557))

(declare-fun m!146563 () Bool)

(assert (=> b!158581 m!146563))

(assert (=> b!158581 m!146549))

(assert (=> b!158581 m!146549))

(declare-fun m!146565 () Bool)

(assert (=> b!158581 m!146565))

(assert (=> b!158030 d!38653))

(declare-fun d!38655 () Bool)

(assert (=> d!38655 (= (isEmpty!1097 (originalCharacters!522 (h!8126 tokens!465))) ((_ is Nil!2728) (originalCharacters!522 (h!8126 tokens!465))))))

(assert (=> d!38425 d!38655))

(declare-fun b!158585 () Bool)

(declare-fun res!72084 () Bool)

(declare-fun e!95277 () Bool)

(assert (=> b!158585 (=> (not res!72084) (not e!95277))))

(declare-fun lt!47515 () List!2738)

(assert (=> b!158585 (= res!72084 (= (size!2305 lt!47515) (+ (size!2305 (t!25602 lt!47055)) (size!2305 lt!47057))))))

(declare-fun b!158586 () Bool)

(assert (=> b!158586 (= e!95277 (or (not (= lt!47057 Nil!2728)) (= lt!47515 (t!25602 lt!47055))))))

(declare-fun b!158584 () Bool)

(declare-fun e!95278 () List!2738)

(assert (=> b!158584 (= e!95278 (Cons!2728 (h!8125 (t!25602 lt!47055)) (++!600 (t!25602 (t!25602 lt!47055)) lt!47057)))))

(declare-fun b!158583 () Bool)

(assert (=> b!158583 (= e!95278 lt!47057)))

(declare-fun d!38657 () Bool)

(assert (=> d!38657 e!95277))

(declare-fun res!72085 () Bool)

(assert (=> d!38657 (=> (not res!72085) (not e!95277))))

(assert (=> d!38657 (= res!72085 (= (content!378 lt!47515) ((_ map or) (content!378 (t!25602 lt!47055)) (content!378 lt!47057))))))

(assert (=> d!38657 (= lt!47515 e!95278)))

(declare-fun c!31835 () Bool)

(assert (=> d!38657 (= c!31835 ((_ is Nil!2728) (t!25602 lt!47055)))))

(assert (=> d!38657 (= (++!600 (t!25602 lt!47055) lt!47057) lt!47515)))

(assert (= (and d!38657 c!31835) b!158583))

(assert (= (and d!38657 (not c!31835)) b!158584))

(assert (= (and d!38657 res!72085) b!158585))

(assert (= (and b!158585 res!72084) b!158586))

(declare-fun m!146567 () Bool)

(assert (=> b!158585 m!146567))

(assert (=> b!158585 m!145951))

(assert (=> b!158585 m!145445))

(declare-fun m!146569 () Bool)

(assert (=> b!158584 m!146569))

(declare-fun m!146571 () Bool)

(assert (=> d!38657 m!146571))

(assert (=> d!38657 m!145957))

(assert (=> d!38657 m!145453))

(assert (=> b!157954 d!38657))

(assert (=> d!38403 d!38401))

(assert (=> d!38403 d!38393))

(declare-fun b!158589 () Bool)

(declare-fun res!72086 () Bool)

(declare-fun e!95279 () Bool)

(assert (=> b!158589 (=> (not res!72086) (not e!95279))))

(declare-fun lt!47516 () List!2738)

(assert (=> b!158589 (= res!72086 (= (size!2305 lt!47516) (+ (size!2305 lt!47055) (size!2305 (++!600 lt!47050 lt!47058)))))))

(declare-fun b!158590 () Bool)

(assert (=> b!158590 (= e!95279 (or (not (= (++!600 lt!47050 lt!47058) Nil!2728)) (= lt!47516 lt!47055)))))

(declare-fun e!95280 () List!2738)

(declare-fun b!158588 () Bool)

(assert (=> b!158588 (= e!95280 (Cons!2728 (h!8125 lt!47055) (++!600 (t!25602 lt!47055) (++!600 lt!47050 lt!47058))))))

(declare-fun b!158587 () Bool)

(assert (=> b!158587 (= e!95280 (++!600 lt!47050 lt!47058))))

(declare-fun d!38659 () Bool)

(assert (=> d!38659 e!95279))

(declare-fun res!72087 () Bool)

(assert (=> d!38659 (=> (not res!72087) (not e!95279))))

(assert (=> d!38659 (= res!72087 (= (content!378 lt!47516) ((_ map or) (content!378 lt!47055) (content!378 (++!600 lt!47050 lt!47058)))))))

(assert (=> d!38659 (= lt!47516 e!95280)))

(declare-fun c!31836 () Bool)

(assert (=> d!38659 (= c!31836 ((_ is Nil!2728) lt!47055))))

(assert (=> d!38659 (= (++!600 lt!47055 (++!600 lt!47050 lt!47058)) lt!47516)))

(assert (= (and d!38659 c!31836) b!158587))

(assert (= (and d!38659 (not c!31836)) b!158588))

(assert (= (and d!38659 res!72087) b!158589))

(assert (= (and b!158589 res!72086) b!158590))

(declare-fun m!146573 () Bool)

(assert (=> b!158589 m!146573))

(assert (=> b!158589 m!145443))

(assert (=> b!158589 m!145297))

(declare-fun m!146575 () Bool)

(assert (=> b!158589 m!146575))

(assert (=> b!158588 m!145297))

(declare-fun m!146577 () Bool)

(assert (=> b!158588 m!146577))

(declare-fun m!146579 () Bool)

(assert (=> d!38659 m!146579))

(assert (=> d!38659 m!145451))

(assert (=> d!38659 m!145297))

(declare-fun m!146581 () Bool)

(assert (=> d!38659 m!146581))

(assert (=> d!38403 d!38659))

(declare-fun d!38661 () Bool)

(assert (=> d!38661 (= (++!600 (++!600 lt!47055 lt!47050) lt!47058) (++!600 lt!47055 (++!600 lt!47050 lt!47058)))))

(assert (=> d!38661 true))

(declare-fun _$52!573 () Unit!2184)

(assert (=> d!38661 (= (choose!1775 lt!47055 lt!47050 lt!47058) _$52!573)))

(declare-fun bs!14784 () Bool)

(assert (= bs!14784 d!38661))

(assert (=> bs!14784 m!145285))

(assert (=> bs!14784 m!145285))

(assert (=> bs!14784 m!145287))

(assert (=> bs!14784 m!145297))

(assert (=> bs!14784 m!145297))

(assert (=> bs!14784 m!145469))

(assert (=> d!38403 d!38661))

(assert (=> d!38403 d!38415))

(assert (=> b!158260 d!38397))

(declare-fun b!158593 () Bool)

(declare-fun res!72088 () Bool)

(declare-fun e!95281 () Bool)

(assert (=> b!158593 (=> (not res!72088) (not e!95281))))

(declare-fun lt!47517 () List!2738)

(assert (=> b!158593 (= res!72088 (= (size!2305 lt!47517) (+ (size!2305 e!94925) (size!2305 (ite c!31718 lt!47141 call!6604)))))))

(declare-fun b!158594 () Bool)

(assert (=> b!158594 (= e!95281 (or (not (= (ite c!31718 lt!47141 call!6604) Nil!2728)) (= lt!47517 e!94925)))))

(declare-fun b!158592 () Bool)

(declare-fun e!95282 () List!2738)

(assert (=> b!158592 (= e!95282 (Cons!2728 (h!8125 e!94925) (++!600 (t!25602 e!94925) (ite c!31718 lt!47141 call!6604))))))

(declare-fun b!158591 () Bool)

(assert (=> b!158591 (= e!95282 (ite c!31718 lt!47141 call!6604))))

(declare-fun d!38663 () Bool)

(assert (=> d!38663 e!95281))

(declare-fun res!72089 () Bool)

(assert (=> d!38663 (=> (not res!72089) (not e!95281))))

(assert (=> d!38663 (= res!72089 (= (content!378 lt!47517) ((_ map or) (content!378 e!94925) (content!378 (ite c!31718 lt!47141 call!6604)))))))

(assert (=> d!38663 (= lt!47517 e!95282)))

(declare-fun c!31837 () Bool)

(assert (=> d!38663 (= c!31837 ((_ is Nil!2728) e!94925))))

(assert (=> d!38663 (= (++!600 e!94925 (ite c!31718 lt!47141 call!6604)) lt!47517)))

(assert (= (and d!38663 c!31837) b!158591))

(assert (= (and d!38663 (not c!31837)) b!158592))

(assert (= (and d!38663 res!72089) b!158593))

(assert (= (and b!158593 res!72088) b!158594))

(declare-fun m!146583 () Bool)

(assert (=> b!158593 m!146583))

(declare-fun m!146585 () Bool)

(assert (=> b!158593 m!146585))

(declare-fun m!146587 () Bool)

(assert (=> b!158593 m!146587))

(declare-fun m!146589 () Bool)

(assert (=> b!158592 m!146589))

(declare-fun m!146591 () Bool)

(assert (=> d!38663 m!146591))

(declare-fun m!146593 () Bool)

(assert (=> d!38663 m!146593))

(declare-fun m!146595 () Bool)

(assert (=> d!38663 m!146595))

(assert (=> bm!6597 d!38663))

(declare-fun d!38665 () Bool)

(declare-fun e!95283 () Bool)

(assert (=> d!38665 e!95283))

(declare-fun res!72090 () Bool)

(assert (=> d!38665 (=> (not res!72090) (not e!95283))))

(declare-fun lt!47518 () BalanceConc!1570)

(assert (=> d!38665 (= res!72090 (= (list!976 lt!47518) (Cons!2729 separatorToken!170 Nil!2729)))))

(assert (=> d!38665 (= lt!47518 (singleton!25 separatorToken!170))))

(assert (=> d!38665 (= (singletonSeq!35 separatorToken!170) lt!47518)))

(declare-fun b!158595 () Bool)

(assert (=> b!158595 (= e!95283 (isBalanced!218 (c!31677 lt!47518)))))

(assert (= (and d!38665 res!72090) b!158595))

(declare-fun m!146597 () Bool)

(assert (=> d!38665 m!146597))

(declare-fun m!146599 () Bool)

(assert (=> d!38665 m!146599))

(declare-fun m!146601 () Bool)

(assert (=> b!158595 m!146601))

(assert (=> d!38361 d!38665))

(declare-fun d!38667 () Bool)

(assert (=> d!38667 (= (list!976 (_1!1535 (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170))))) (list!978 (c!31677 (_1!1535 (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)))))))))

(declare-fun bs!14785 () Bool)

(assert (= bs!14785 d!38667))

(declare-fun m!146603 () Bool)

(assert (=> bs!14785 m!146603))

(assert (=> d!38361 d!38667))

(declare-fun b!158658 () Bool)

(declare-fun e!95324 () Bool)

(declare-fun e!95323 () Bool)

(assert (=> b!158658 (= e!95324 e!95323)))

(declare-fun lt!47541 () tuple2!2638)

(declare-fun res!72112 () Bool)

(declare-fun size!2311 (BalanceConc!1568) Int)

(assert (=> b!158658 (= res!72112 (< (size!2311 (_2!1535 lt!47541)) (size!2311 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)))))))

(assert (=> b!158658 (=> (not res!72112) (not e!95323))))

(declare-fun b!158659 () Bool)

(declare-fun res!72113 () Bool)

(declare-fun e!95322 () Bool)

(assert (=> b!158659 (=> (not res!72113) (not e!95322))))

(declare-datatypes ((tuple2!2646 0))(
  ( (tuple2!2647 (_1!1539 List!2739) (_2!1539 List!2738)) )
))
(declare-fun lexList!101 (LexerInterface!365 List!2740 List!2738) tuple2!2646)

(assert (=> b!158659 (= res!72113 (= (list!976 (_1!1535 lt!47541)) (_1!1539 (lexList!101 thiss!17480 rules!1920 (list!973 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)))))))))

(declare-fun b!158660 () Bool)

(assert (=> b!158660 (= e!95322 (= (list!973 (_2!1535 lt!47541)) (_2!1539 (lexList!101 thiss!17480 rules!1920 (list!973 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)))))))))

(declare-fun b!158661 () Bool)

(declare-fun isEmpty!1104 (BalanceConc!1570) Bool)

(assert (=> b!158661 (= e!95323 (not (isEmpty!1104 (_1!1535 lt!47541))))))

(declare-fun b!158662 () Bool)

(assert (=> b!158662 (= e!95324 (= (_2!1535 lt!47541) (print!102 thiss!17480 (singletonSeq!35 separatorToken!170))))))

(declare-fun d!38669 () Bool)

(assert (=> d!38669 e!95322))

(declare-fun res!72111 () Bool)

(assert (=> d!38669 (=> (not res!72111) (not e!95322))))

(assert (=> d!38669 (= res!72111 e!95324)))

(declare-fun c!31857 () Bool)

(assert (=> d!38669 (= c!31857 (> (size!2303 (_1!1535 lt!47541)) 0))))

(declare-fun lexTailRecV2!88 (LexerInterface!365 List!2740 BalanceConc!1568 BalanceConc!1568 BalanceConc!1568 BalanceConc!1570) tuple2!2638)

(assert (=> d!38669 (= lt!47541 (lexTailRecV2!88 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)) (BalanceConc!1569 Empty!780) (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)) (BalanceConc!1571 Empty!781)))))

(assert (=> d!38669 (= (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170))) lt!47541)))

(assert (= (and d!38669 c!31857) b!158658))

(assert (= (and d!38669 (not c!31857)) b!158662))

(assert (= (and b!158658 res!72112) b!158661))

(assert (= (and d!38669 res!72111) b!158659))

(assert (= (and b!158659 res!72113) b!158660))

(declare-fun m!146699 () Bool)

(assert (=> b!158661 m!146699))

(declare-fun m!146701 () Bool)

(assert (=> d!38669 m!146701))

(assert (=> d!38669 m!145389))

(assert (=> d!38669 m!145389))

(declare-fun m!146703 () Bool)

(assert (=> d!38669 m!146703))

(declare-fun m!146705 () Bool)

(assert (=> b!158659 m!146705))

(assert (=> b!158659 m!145389))

(declare-fun m!146707 () Bool)

(assert (=> b!158659 m!146707))

(assert (=> b!158659 m!146707))

(declare-fun m!146709 () Bool)

(assert (=> b!158659 m!146709))

(declare-fun m!146711 () Bool)

(assert (=> b!158660 m!146711))

(assert (=> b!158660 m!145389))

(assert (=> b!158660 m!146707))

(assert (=> b!158660 m!146707))

(assert (=> b!158660 m!146709))

(declare-fun m!146713 () Bool)

(assert (=> b!158658 m!146713))

(assert (=> b!158658 m!145389))

(declare-fun m!146715 () Bool)

(assert (=> b!158658 m!146715))

(assert (=> d!38361 d!38669))

(declare-fun d!38701 () Bool)

(assert (=> d!38701 (= (list!976 (singletonSeq!35 separatorToken!170)) (list!978 (c!31677 (singletonSeq!35 separatorToken!170))))))

(declare-fun bs!14802 () Bool)

(assert (= bs!14802 d!38701))

(declare-fun m!146717 () Bool)

(assert (=> bs!14802 m!146717))

(assert (=> d!38361 d!38701))

(declare-fun d!38703 () Bool)

(declare-fun lt!47542 () BalanceConc!1568)

(assert (=> d!38703 (= (list!973 lt!47542) (printList!57 thiss!17480 (list!976 (singletonSeq!35 separatorToken!170))))))

(assert (=> d!38703 (= lt!47542 (printTailRec!65 thiss!17480 (singletonSeq!35 separatorToken!170) 0 (BalanceConc!1569 Empty!780)))))

(assert (=> d!38703 (= (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)) lt!47542)))

(declare-fun bs!14803 () Bool)

(assert (= bs!14803 d!38703))

(declare-fun m!146719 () Bool)

(assert (=> bs!14803 m!146719))

(assert (=> bs!14803 m!145393))

(assert (=> bs!14803 m!145399))

(assert (=> bs!14803 m!145399))

(declare-fun m!146721 () Bool)

(assert (=> bs!14803 m!146721))

(assert (=> bs!14803 m!145393))

(declare-fun m!146723 () Bool)

(assert (=> bs!14803 m!146723))

(assert (=> d!38361 d!38703))

(assert (=> d!38361 d!38427))

(declare-fun d!38705 () Bool)

(declare-fun lt!47543 () Int)

(assert (=> d!38705 (= lt!47543 (size!2308 (list!976 (_1!1535 lt!47071))))))

(assert (=> d!38705 (= lt!47543 (size!2309 (c!31677 (_1!1535 lt!47071))))))

(assert (=> d!38705 (= (size!2303 (_1!1535 lt!47071)) lt!47543)))

(declare-fun bs!14804 () Bool)

(assert (= bs!14804 d!38705))

(declare-fun m!146725 () Bool)

(assert (=> bs!14804 m!146725))

(assert (=> bs!14804 m!146725))

(declare-fun m!146727 () Bool)

(assert (=> bs!14804 m!146727))

(declare-fun m!146729 () Bool)

(assert (=> bs!14804 m!146729))

(assert (=> d!38361 d!38705))

(declare-fun d!38707 () Bool)

(declare-fun lt!47544 () Int)

(assert (=> d!38707 (>= lt!47544 0)))

(declare-fun e!95325 () Int)

(assert (=> d!38707 (= lt!47544 e!95325)))

(declare-fun c!31858 () Bool)

(assert (=> d!38707 (= c!31858 ((_ is Nil!2728) lt!47075))))

(assert (=> d!38707 (= (size!2305 lt!47075) lt!47544)))

(declare-fun b!158663 () Bool)

(assert (=> b!158663 (= e!95325 0)))

(declare-fun b!158664 () Bool)

(assert (=> b!158664 (= e!95325 (+ 1 (size!2305 (t!25602 lt!47075))))))

(assert (= (and d!38707 c!31858) b!158663))

(assert (= (and d!38707 (not c!31858)) b!158664))

(declare-fun m!146731 () Bool)

(assert (=> b!158664 m!146731))

(assert (=> b!157951 d!38707))

(declare-fun d!38709 () Bool)

(declare-fun lt!47545 () Int)

(assert (=> d!38709 (>= lt!47545 0)))

(declare-fun e!95326 () Int)

(assert (=> d!38709 (= lt!47545 e!95326)))

(declare-fun c!31859 () Bool)

(assert (=> d!38709 (= c!31859 ((_ is Nil!2728) (++!600 lt!47055 lt!47050)))))

(assert (=> d!38709 (= (size!2305 (++!600 lt!47055 lt!47050)) lt!47545)))

(declare-fun b!158665 () Bool)

(assert (=> b!158665 (= e!95326 0)))

(declare-fun b!158666 () Bool)

(assert (=> b!158666 (= e!95326 (+ 1 (size!2305 (t!25602 (++!600 lt!47055 lt!47050)))))))

(assert (= (and d!38709 c!31859) b!158665))

(assert (= (and d!38709 (not c!31859)) b!158666))

(declare-fun m!146733 () Bool)

(assert (=> b!158666 m!146733))

(assert (=> b!157951 d!38709))

(declare-fun d!38711 () Bool)

(declare-fun lt!47546 () Int)

(assert (=> d!38711 (>= lt!47546 0)))

(declare-fun e!95327 () Int)

(assert (=> d!38711 (= lt!47546 e!95327)))

(declare-fun c!31860 () Bool)

(assert (=> d!38711 (= c!31860 ((_ is Nil!2728) lt!47058))))

(assert (=> d!38711 (= (size!2305 lt!47058) lt!47546)))

(declare-fun b!158667 () Bool)

(assert (=> b!158667 (= e!95327 0)))

(declare-fun b!158668 () Bool)

(assert (=> b!158668 (= e!95327 (+ 1 (size!2305 (t!25602 lt!47058))))))

(assert (= (and d!38711 c!31860) b!158667))

(assert (= (and d!38711 (not c!31860)) b!158668))

(declare-fun m!146735 () Bool)

(assert (=> b!158668 m!146735))

(assert (=> b!157951 d!38711))

(declare-fun bs!14805 () Bool)

(declare-fun d!38713 () Bool)

(assert (= bs!14805 (and d!38713 b!157824)))

(declare-fun lambda!4285 () Int)

(assert (=> bs!14805 (not (= lambda!4285 lambda!4232))))

(declare-fun bs!14806 () Bool)

(assert (= bs!14806 (and d!38713 b!158261)))

(assert (=> bs!14806 (= lambda!4285 lambda!4264)))

(declare-fun bs!14807 () Bool)

(assert (= bs!14807 (and d!38713 d!38441)))

(assert (=> bs!14807 (not (= lambda!4285 lambda!4262))))

(declare-fun bs!14808 () Bool)

(assert (= bs!14808 (and d!38713 b!158244)))

(assert (=> bs!14808 (= lambda!4285 lambda!4263)))

(declare-fun bs!14809 () Bool)

(assert (= bs!14809 (and d!38713 d!38529)))

(assert (=> bs!14809 (= lambda!4285 lambda!4273)))

(declare-fun bs!14810 () Bool)

(assert (= bs!14810 (and d!38713 d!38433)))

(assert (=> bs!14810 (= lambda!4285 lambda!4255)))

(declare-fun bs!14811 () Bool)

(assert (= bs!14811 (and d!38713 b!158036)))

(assert (=> bs!14811 (= lambda!4285 lambda!4246)))

(declare-fun bs!14812 () Bool)

(assert (= bs!14812 (and d!38713 d!38423)))

(assert (=> bs!14812 (= lambda!4285 lambda!4253)))

(declare-fun b!158673 () Bool)

(declare-fun e!95332 () Bool)

(assert (=> b!158673 (= e!95332 true)))

(declare-fun b!158672 () Bool)

(declare-fun e!95331 () Bool)

(assert (=> b!158672 (= e!95331 e!95332)))

(declare-fun b!158671 () Bool)

(declare-fun e!95330 () Bool)

(assert (=> b!158671 (= e!95330 e!95331)))

(assert (=> d!38713 e!95330))

(assert (= b!158672 b!158673))

(assert (= b!158671 b!158672))

(assert (= (and d!38713 ((_ is Cons!2730) rules!1920)) b!158671))

(assert (=> b!158673 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4285))))

(assert (=> b!158673 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4285))))

(assert (=> d!38713 true))

(declare-fun lt!47547 () Bool)

(assert (=> d!38713 (= lt!47547 (forall!489 (list!976 lt!47053) lambda!4285))))

(declare-fun e!95328 () Bool)

(assert (=> d!38713 (= lt!47547 e!95328)))

(declare-fun res!72115 () Bool)

(assert (=> d!38713 (=> res!72115 e!95328)))

(assert (=> d!38713 (= res!72115 (not ((_ is Cons!2729) (list!976 lt!47053))))))

(assert (=> d!38713 (not (isEmpty!1094 rules!1920))))

(assert (=> d!38713 (= (rulesProduceEachTokenIndividuallyList!99 thiss!17480 rules!1920 (list!976 lt!47053)) lt!47547)))

(declare-fun b!158669 () Bool)

(declare-fun e!95329 () Bool)

(assert (=> b!158669 (= e!95328 e!95329)))

(declare-fun res!72114 () Bool)

(assert (=> b!158669 (=> (not res!72114) (not e!95329))))

(assert (=> b!158669 (= res!72114 (rulesProduceIndividualToken!114 thiss!17480 rules!1920 (h!8126 (list!976 lt!47053))))))

(declare-fun b!158670 () Bool)

(assert (=> b!158670 (= e!95329 (rulesProduceEachTokenIndividuallyList!99 thiss!17480 rules!1920 (t!25603 (list!976 lt!47053))))))

(assert (= (and d!38713 (not res!72115)) b!158669))

(assert (= (and b!158669 res!72114) b!158670))

(assert (=> d!38713 m!145629))

(declare-fun m!146737 () Bool)

(assert (=> d!38713 m!146737))

(assert (=> d!38713 m!145261))

(declare-fun m!146739 () Bool)

(assert (=> b!158669 m!146739))

(declare-fun m!146741 () Bool)

(assert (=> b!158670 m!146741))

(assert (=> b!158105 d!38713))

(declare-fun d!38715 () Bool)

(assert (=> d!38715 (= (list!976 lt!47053) (list!978 (c!31677 lt!47053)))))

(declare-fun bs!14813 () Bool)

(assert (= bs!14813 d!38715))

(declare-fun m!146743 () Bool)

(assert (=> bs!14813 m!146743))

(assert (=> b!158105 d!38715))

(declare-fun d!38717 () Bool)

(declare-fun res!72116 () Bool)

(declare-fun e!95333 () Bool)

(assert (=> d!38717 (=> res!72116 e!95333)))

(assert (=> d!38717 (= res!72116 ((_ is Nil!2729) (list!976 lt!47052)))))

(assert (=> d!38717 (= (forall!489 (list!976 lt!47052) lambda!4253) e!95333)))

(declare-fun b!158674 () Bool)

(declare-fun e!95334 () Bool)

(assert (=> b!158674 (= e!95333 e!95334)))

(declare-fun res!72117 () Bool)

(assert (=> b!158674 (=> (not res!72117) (not e!95334))))

(assert (=> b!158674 (= res!72117 (dynLambda!973 lambda!4253 (h!8126 (list!976 lt!47052))))))

(declare-fun b!158675 () Bool)

(assert (=> b!158675 (= e!95334 (forall!489 (t!25603 (list!976 lt!47052)) lambda!4253))))

(assert (= (and d!38717 (not res!72116)) b!158674))

(assert (= (and b!158674 res!72117) b!158675))

(declare-fun b_lambda!3205 () Bool)

(assert (=> (not b_lambda!3205) (not b!158674)))

(declare-fun m!146745 () Bool)

(assert (=> b!158674 m!146745))

(declare-fun m!146747 () Bool)

(assert (=> b!158675 m!146747))

(assert (=> d!38423 d!38717))

(assert (=> d!38423 d!38533))

(declare-fun d!38719 () Bool)

(declare-fun lt!47560 () Bool)

(assert (=> d!38719 (= lt!47560 (forall!489 (list!976 lt!47052) lambda!4253))))

(declare-fun forall!494 (Conc!781 Int) Bool)

(assert (=> d!38719 (= lt!47560 (forall!494 (c!31677 lt!47052) lambda!4253))))

(assert (=> d!38719 (= (forall!491 lt!47052 lambda!4253) lt!47560)))

(declare-fun bs!14814 () Bool)

(assert (= bs!14814 d!38719))

(assert (=> bs!14814 m!145587))

(assert (=> bs!14814 m!145587))

(assert (=> bs!14814 m!145593))

(declare-fun m!146749 () Bool)

(assert (=> bs!14814 m!146749))

(assert (=> d!38423 d!38719))

(assert (=> d!38423 d!38427))

(declare-fun bs!14815 () Bool)

(declare-fun d!38721 () Bool)

(assert (= bs!14815 (and d!38721 d!38527)))

(declare-fun lambda!4286 () Int)

(assert (=> bs!14815 (= (= (toValue!1126 (transformation!479 (rule!986 separatorToken!170))) (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465))))) (= lambda!4286 lambda!4270))))

(assert (=> d!38721 true))

(assert (=> d!38721 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (rule!986 separatorToken!170)))) (dynLambda!979 order!1393 lambda!4286))))

(assert (=> d!38721 (= (equivClasses!150 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toValue!1126 (transformation!479 (rule!986 separatorToken!170)))) (Forall2!103 lambda!4286))))

(declare-fun bs!14816 () Bool)

(assert (= bs!14816 d!38721))

(declare-fun m!146751 () Bool)

(assert (=> bs!14816 m!146751))

(assert (=> b!157925 d!38721))

(declare-fun d!38723 () Bool)

(declare-fun e!95346 () Bool)

(assert (=> d!38723 e!95346))

(declare-fun res!72141 () Bool)

(assert (=> d!38723 (=> (not res!72141) (not e!95346))))

(declare-fun lt!47568 () BalanceConc!1570)

(assert (=> d!38723 (= res!72141 (= (list!976 lt!47568) tokens!465))))

(declare-fun fromList!92 (List!2739) Conc!781)

(assert (=> d!38723 (= lt!47568 (BalanceConc!1571 (fromList!92 tokens!465)))))

(assert (=> d!38723 (= (fromListB!141 tokens!465) lt!47568)))

(declare-fun b!158705 () Bool)

(assert (=> b!158705 (= e!95346 (isBalanced!218 (fromList!92 tokens!465)))))

(assert (= (and d!38723 res!72141) b!158705))

(declare-fun m!146753 () Bool)

(assert (=> d!38723 m!146753))

(declare-fun m!146755 () Bool)

(assert (=> d!38723 m!146755))

(assert (=> b!158705 m!146755))

(assert (=> b!158705 m!146755))

(declare-fun m!146757 () Bool)

(assert (=> b!158705 m!146757))

(assert (=> d!38435 d!38723))

(declare-fun d!38725 () Bool)

(declare-fun c!31865 () Bool)

(assert (=> d!38725 (= c!31865 ((_ is Empty!780) (c!31675 (charsOf!134 separatorToken!170))))))

(declare-fun e!95347 () List!2738)

(assert (=> d!38725 (= (list!977 (c!31675 (charsOf!134 separatorToken!170))) e!95347)))

(declare-fun b!158707 () Bool)

(declare-fun e!95348 () List!2738)

(assert (=> b!158707 (= e!95347 e!95348)))

(declare-fun c!31866 () Bool)

(assert (=> b!158707 (= c!31866 ((_ is Leaf!1359) (c!31675 (charsOf!134 separatorToken!170))))))

(declare-fun b!158708 () Bool)

(assert (=> b!158708 (= e!95348 (list!980 (xs!3375 (c!31675 (charsOf!134 separatorToken!170)))))))

(declare-fun b!158709 () Bool)

(assert (=> b!158709 (= e!95348 (++!600 (list!977 (left!2058 (c!31675 (charsOf!134 separatorToken!170)))) (list!977 (right!2388 (c!31675 (charsOf!134 separatorToken!170))))))))

(declare-fun b!158706 () Bool)

(assert (=> b!158706 (= e!95347 Nil!2728)))

(assert (= (and d!38725 c!31865) b!158706))

(assert (= (and d!38725 (not c!31865)) b!158707))

(assert (= (and b!158707 c!31866) b!158708))

(assert (= (and b!158707 (not c!31866)) b!158709))

(declare-fun m!146759 () Bool)

(assert (=> b!158708 m!146759))

(declare-fun m!146761 () Bool)

(assert (=> b!158709 m!146761))

(declare-fun m!146763 () Bool)

(assert (=> b!158709 m!146763))

(assert (=> b!158709 m!146761))

(assert (=> b!158709 m!146763))

(declare-fun m!146765 () Bool)

(assert (=> b!158709 m!146765))

(assert (=> d!38399 d!38725))

(declare-fun d!38727 () Bool)

(assert (=> d!38727 (= (list!973 (ite c!31762 call!6645 e!95083)) (list!977 (c!31675 (ite c!31762 call!6645 e!95083))))))

(declare-fun bs!14817 () Bool)

(assert (= bs!14817 d!38727))

(declare-fun m!146767 () Bool)

(assert (=> bs!14817 m!146767))

(assert (=> bm!6640 d!38727))

(declare-fun d!38729 () Bool)

(declare-fun res!72142 () Bool)

(declare-fun e!95349 () Bool)

(assert (=> d!38729 (=> res!72142 e!95349)))

(assert (=> d!38729 (= res!72142 ((_ is Nil!2729) (list!976 lt!47053)))))

(assert (=> d!38729 (= (forall!489 (list!976 lt!47053) lambda!4255) e!95349)))

(declare-fun b!158710 () Bool)

(declare-fun e!95350 () Bool)

(assert (=> b!158710 (= e!95349 e!95350)))

(declare-fun res!72143 () Bool)

(assert (=> b!158710 (=> (not res!72143) (not e!95350))))

(assert (=> b!158710 (= res!72143 (dynLambda!973 lambda!4255 (h!8126 (list!976 lt!47053))))))

(declare-fun b!158711 () Bool)

(assert (=> b!158711 (= e!95350 (forall!489 (t!25603 (list!976 lt!47053)) lambda!4255))))

(assert (= (and d!38729 (not res!72142)) b!158710))

(assert (= (and b!158710 res!72143) b!158711))

(declare-fun b_lambda!3207 () Bool)

(assert (=> (not b_lambda!3207) (not b!158710)))

(declare-fun m!146771 () Bool)

(assert (=> b!158710 m!146771))

(declare-fun m!146775 () Bool)

(assert (=> b!158711 m!146775))

(assert (=> d!38433 d!38729))

(assert (=> d!38433 d!38715))

(declare-fun d!38731 () Bool)

(declare-fun lt!47569 () Bool)

(assert (=> d!38731 (= lt!47569 (forall!489 (list!976 lt!47053) lambda!4255))))

(assert (=> d!38731 (= lt!47569 (forall!494 (c!31677 lt!47053) lambda!4255))))

(assert (=> d!38731 (= (forall!491 lt!47053 lambda!4255) lt!47569)))

(declare-fun bs!14818 () Bool)

(assert (= bs!14818 d!38731))

(assert (=> bs!14818 m!145629))

(assert (=> bs!14818 m!145629))

(assert (=> bs!14818 m!145631))

(declare-fun m!146787 () Bool)

(assert (=> bs!14818 m!146787))

(assert (=> d!38433 d!38731))

(assert (=> d!38433 d!38427))

(declare-fun d!38733 () Bool)

(declare-fun c!31867 () Bool)

(assert (=> d!38733 (= c!31867 ((_ is Nil!2728) lt!47076))))

(declare-fun e!95351 () (InoxSet C!2328))

(assert (=> d!38733 (= (content!378 lt!47076) e!95351)))

(declare-fun b!158712 () Bool)

(assert (=> b!158712 (= e!95351 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!158713 () Bool)

(assert (=> b!158713 (= e!95351 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 lt!47076) true) (content!378 (t!25602 lt!47076))))))

(assert (= (and d!38733 c!31867) b!158712))

(assert (= (and d!38733 (not c!31867)) b!158713))

(declare-fun m!146797 () Bool)

(assert (=> b!158713 m!146797))

(declare-fun m!146799 () Bool)

(assert (=> b!158713 m!146799))

(assert (=> d!38395 d!38733))

(declare-fun d!38735 () Bool)

(declare-fun c!31868 () Bool)

(assert (=> d!38735 (= c!31868 ((_ is Nil!2728) lt!47055))))

(declare-fun e!95352 () (InoxSet C!2328))

(assert (=> d!38735 (= (content!378 lt!47055) e!95352)))

(declare-fun b!158714 () Bool)

(assert (=> b!158714 (= e!95352 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!158715 () Bool)

(assert (=> b!158715 (= e!95352 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 lt!47055) true) (content!378 (t!25602 lt!47055))))))

(assert (= (and d!38735 c!31868) b!158714))

(assert (= (and d!38735 (not c!31868)) b!158715))

(declare-fun m!146807 () Bool)

(assert (=> b!158715 m!146807))

(assert (=> b!158715 m!145957))

(assert (=> d!38395 d!38735))

(declare-fun d!38737 () Bool)

(declare-fun c!31869 () Bool)

(assert (=> d!38737 (= c!31869 ((_ is Nil!2728) lt!47057))))

(declare-fun e!95353 () (InoxSet C!2328))

(assert (=> d!38737 (= (content!378 lt!47057) e!95353)))

(declare-fun b!158716 () Bool)

(assert (=> b!158716 (= e!95353 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!158717 () Bool)

(assert (=> b!158717 (= e!95353 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 lt!47057) true) (content!378 (t!25602 lt!47057))))))

(assert (= (and d!38737 c!31869) b!158716))

(assert (= (and d!38737 (not c!31869)) b!158717))

(declare-fun m!146811 () Bool)

(assert (=> b!158717 m!146811))

(declare-fun m!146813 () Bool)

(assert (=> b!158717 m!146813))

(assert (=> d!38395 d!38737))

(declare-fun d!38739 () Bool)

(declare-fun lt!47570 () BalanceConc!1568)

(assert (=> d!38739 (= (list!973 lt!47570) (printList!57 thiss!17480 (list!976 (singletonSeq!35 (h!8126 tokens!465)))))))

(assert (=> d!38739 (= lt!47570 (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 tokens!465)) 0 (BalanceConc!1569 Empty!780)))))

(assert (=> d!38739 (= (print!102 thiss!17480 (singletonSeq!35 (h!8126 tokens!465))) lt!47570)))

(declare-fun bs!14819 () Bool)

(assert (= bs!14819 d!38739))

(declare-fun m!146817 () Bool)

(assert (=> bs!14819 m!146817))

(assert (=> bs!14819 m!145839))

(declare-fun m!146819 () Bool)

(assert (=> bs!14819 m!146819))

(assert (=> bs!14819 m!146819))

(declare-fun m!146821 () Bool)

(assert (=> bs!14819 m!146821))

(assert (=> bs!14819 m!145839))

(assert (=> bs!14819 m!145843))

(assert (=> b!158255 d!38739))

(declare-fun d!38743 () Bool)

(declare-fun e!95354 () Bool)

(assert (=> d!38743 e!95354))

(declare-fun res!72144 () Bool)

(assert (=> d!38743 (=> (not res!72144) (not e!95354))))

(declare-fun lt!47571 () BalanceConc!1570)

(assert (=> d!38743 (= res!72144 (= (list!976 lt!47571) (Cons!2729 (h!8126 tokens!465) Nil!2729)))))

(assert (=> d!38743 (= lt!47571 (singleton!25 (h!8126 tokens!465)))))

(assert (=> d!38743 (= (singletonSeq!35 (h!8126 tokens!465)) lt!47571)))

(declare-fun b!158718 () Bool)

(assert (=> b!158718 (= e!95354 (isBalanced!218 (c!31677 lt!47571)))))

(assert (= (and d!38743 res!72144) b!158718))

(declare-fun m!146823 () Bool)

(assert (=> d!38743 m!146823))

(declare-fun m!146825 () Bool)

(assert (=> d!38743 m!146825))

(declare-fun m!146827 () Bool)

(assert (=> b!158718 m!146827))

(assert (=> b!158255 d!38743))

(declare-fun d!38745 () Bool)

(declare-fun lt!47572 () BalanceConc!1568)

(assert (=> d!38745 (= (list!973 lt!47572) (printListTailRec!44 thiss!17480 (dropList!76 (singletonSeq!35 (h!8126 tokens!465)) 0) (list!973 (BalanceConc!1569 Empty!780))))))

(declare-fun e!95356 () BalanceConc!1568)

(assert (=> d!38745 (= lt!47572 e!95356)))

(declare-fun c!31870 () Bool)

(assert (=> d!38745 (= c!31870 (>= 0 (size!2303 (singletonSeq!35 (h!8126 tokens!465)))))))

(declare-fun e!95355 () Bool)

(assert (=> d!38745 e!95355))

(declare-fun res!72145 () Bool)

(assert (=> d!38745 (=> (not res!72145) (not e!95355))))

(assert (=> d!38745 (= res!72145 (>= 0 0))))

(assert (=> d!38745 (= (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 tokens!465)) 0 (BalanceConc!1569 Empty!780)) lt!47572)))

(declare-fun b!158719 () Bool)

(assert (=> b!158719 (= e!95355 (<= 0 (size!2303 (singletonSeq!35 (h!8126 tokens!465)))))))

(declare-fun b!158720 () Bool)

(assert (=> b!158720 (= e!95356 (BalanceConc!1569 Empty!780))))

(declare-fun b!158721 () Bool)

(assert (=> b!158721 (= e!95356 (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 tokens!465)) (+ 0 1) (++!602 (BalanceConc!1569 Empty!780) (charsOf!134 (apply!373 (singletonSeq!35 (h!8126 tokens!465)) 0)))))))

(declare-fun lt!47576 () List!2739)

(assert (=> b!158721 (= lt!47576 (list!976 (singletonSeq!35 (h!8126 tokens!465))))))

(declare-fun lt!47577 () Unit!2184)

(assert (=> b!158721 (= lt!47577 (lemmaDropApply!116 lt!47576 0))))

(assert (=> b!158721 (= (head!590 (drop!129 lt!47576 0)) (apply!374 lt!47576 0))))

(declare-fun lt!47575 () Unit!2184)

(assert (=> b!158721 (= lt!47575 lt!47577)))

(declare-fun lt!47574 () List!2739)

(assert (=> b!158721 (= lt!47574 (list!976 (singletonSeq!35 (h!8126 tokens!465))))))

(declare-fun lt!47578 () Unit!2184)

(assert (=> b!158721 (= lt!47578 (lemmaDropTail!108 lt!47574 0))))

(assert (=> b!158721 (= (tail!330 (drop!129 lt!47574 0)) (drop!129 lt!47574 (+ 0 1)))))

(declare-fun lt!47573 () Unit!2184)

(assert (=> b!158721 (= lt!47573 lt!47578)))

(assert (= (and d!38745 res!72145) b!158719))

(assert (= (and d!38745 c!31870) b!158720))

(assert (= (and d!38745 (not c!31870)) b!158721))

(declare-fun m!146829 () Bool)

(assert (=> d!38745 m!146829))

(assert (=> d!38745 m!146045))

(declare-fun m!146831 () Bool)

(assert (=> d!38745 m!146831))

(declare-fun m!146833 () Bool)

(assert (=> d!38745 m!146833))

(assert (=> d!38745 m!145839))

(declare-fun m!146835 () Bool)

(assert (=> d!38745 m!146835))

(assert (=> d!38745 m!146045))

(assert (=> d!38745 m!145839))

(assert (=> d!38745 m!146829))

(assert (=> b!158719 m!145839))

(assert (=> b!158719 m!146835))

(declare-fun m!146837 () Bool)

(assert (=> b!158721 m!146837))

(declare-fun m!146839 () Bool)

(assert (=> b!158721 m!146839))

(declare-fun m!146841 () Bool)

(assert (=> b!158721 m!146841))

(declare-fun m!146843 () Bool)

(assert (=> b!158721 m!146843))

(declare-fun m!146845 () Bool)

(assert (=> b!158721 m!146845))

(assert (=> b!158721 m!146837))

(declare-fun m!146847 () Bool)

(assert (=> b!158721 m!146847))

(assert (=> b!158721 m!146841))

(declare-fun m!146849 () Bool)

(assert (=> b!158721 m!146849))

(declare-fun m!146851 () Bool)

(assert (=> b!158721 m!146851))

(declare-fun m!146853 () Bool)

(assert (=> b!158721 m!146853))

(assert (=> b!158721 m!145839))

(assert (=> b!158721 m!146819))

(declare-fun m!146855 () Bool)

(assert (=> b!158721 m!146855))

(assert (=> b!158721 m!146849))

(assert (=> b!158721 m!145839))

(assert (=> b!158721 m!146845))

(declare-fun m!146857 () Bool)

(assert (=> b!158721 m!146857))

(assert (=> b!158721 m!145839))

(assert (=> b!158721 m!146839))

(declare-fun m!146859 () Bool)

(assert (=> b!158721 m!146859))

(assert (=> b!158255 d!38745))

(declare-fun e!95359 () Bool)

(declare-fun lt!47584 () Token!702)

(declare-fun b!158726 () Bool)

(assert (=> b!158726 (= e!95359 (= (rule!986 lt!47584) (get!740 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47584))))))))

(declare-fun b!158728 () Bool)

(declare-fun e!95361 () Unit!2184)

(declare-fun Unit!2208 () Unit!2184)

(assert (=> b!158728 (= e!95361 Unit!2208)))

(declare-fun b!158725 () Bool)

(declare-fun res!72149 () Bool)

(assert (=> b!158725 (=> (not res!72149) (not e!95359))))

(assert (=> b!158725 (= res!72149 (matchR!73 (regex!479 (get!740 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47584))))) (list!973 (charsOf!134 lt!47584))))))

(declare-fun d!38747 () Bool)

(assert (=> d!38747 (isDefined!117 (maxPrefix!117 thiss!17480 rules!1920 (++!600 call!6644 lt!47239)))))

(declare-fun lt!47593 () Unit!2184)

(assert (=> d!38747 (= lt!47593 e!95361)))

(declare-fun c!31871 () Bool)

(assert (=> d!38747 (= c!31871 (isEmpty!1102 (maxPrefix!117 thiss!17480 rules!1920 (++!600 call!6644 lt!47239))))))

(declare-fun lt!47581 () Unit!2184)

(declare-fun lt!47592 () Unit!2184)

(assert (=> d!38747 (= lt!47581 lt!47592)))

(assert (=> d!38747 e!95359))

(declare-fun res!72148 () Bool)

(assert (=> d!38747 (=> (not res!72148) (not e!95359))))

(assert (=> d!38747 (= res!72148 (isDefined!118 (getRuleFromTag!16 thiss!17480 rules!1920 (tag!657 (rule!986 lt!47584)))))))

(assert (=> d!38747 (= lt!47592 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!16 thiss!17480 rules!1920 call!6644 lt!47584))))

(declare-fun lt!47598 () Unit!2184)

(declare-fun lt!47583 () Unit!2184)

(assert (=> d!38747 (= lt!47598 lt!47583)))

(declare-fun lt!47589 () List!2738)

(assert (=> d!38747 (isPrefix!217 lt!47589 (++!600 call!6644 lt!47239))))

(assert (=> d!38747 (= lt!47583 (lemmaPrefixStaysPrefixWhenAddingToSuffix!16 lt!47589 call!6644 lt!47239))))

(assert (=> d!38747 (= lt!47589 (list!973 (charsOf!134 lt!47584)))))

(declare-fun lt!47591 () Unit!2184)

(declare-fun lt!47596 () Unit!2184)

(assert (=> d!38747 (= lt!47591 lt!47596)))

(declare-fun lt!47587 () List!2738)

(declare-fun lt!47586 () List!2738)

(assert (=> d!38747 (isPrefix!217 lt!47587 (++!600 lt!47587 lt!47586))))

(assert (=> d!38747 (= lt!47596 (lemmaConcatTwoListThenFirstIsPrefix!120 lt!47587 lt!47586))))

(assert (=> d!38747 (= lt!47586 (_2!1536 (get!741 (maxPrefix!117 thiss!17480 rules!1920 call!6644))))))

(assert (=> d!38747 (= lt!47587 (list!973 (charsOf!134 lt!47584)))))

(assert (=> d!38747 (= lt!47584 (head!590 (list!976 (_1!1535 (lex!177 thiss!17480 rules!1920 (seqFromList!336 call!6644))))))))

(assert (=> d!38747 (not (isEmpty!1094 rules!1920))))

(assert (=> d!38747 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 call!6644 lt!47239) lt!47593)))

(declare-fun b!158727 () Bool)

(declare-fun Unit!2209 () Unit!2184)

(assert (=> b!158727 (= e!95361 Unit!2209)))

(declare-fun lt!47595 () List!2738)

(assert (=> b!158727 (= lt!47595 (++!600 call!6644 lt!47239))))

(declare-fun lt!47588 () Unit!2184)

(assert (=> b!158727 (= lt!47588 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!16 thiss!17480 (rule!986 lt!47584) rules!1920 lt!47595))))

(assert (=> b!158727 (isEmpty!1102 (maxPrefixOneRule!61 thiss!17480 (rule!986 lt!47584) lt!47595))))

(declare-fun lt!47590 () Unit!2184)

(assert (=> b!158727 (= lt!47590 lt!47588)))

(declare-fun lt!47597 () List!2738)

(assert (=> b!158727 (= lt!47597 (list!973 (charsOf!134 lt!47584)))))

(declare-fun lt!47582 () Unit!2184)

(assert (=> b!158727 (= lt!47582 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!16 thiss!17480 (rule!986 lt!47584) lt!47597 (++!600 call!6644 lt!47239)))))

(assert (=> b!158727 (not (matchR!73 (regex!479 (rule!986 lt!47584)) lt!47597))))

(declare-fun lt!47585 () Unit!2184)

(assert (=> b!158727 (= lt!47585 lt!47582)))

(assert (=> b!158727 false))

(assert (= (and d!38747 res!72148) b!158725))

(assert (= (and b!158725 res!72149) b!158726))

(assert (= (and d!38747 c!31871) b!158727))

(assert (= (and d!38747 (not c!31871)) b!158728))

(declare-fun m!146883 () Bool)

(assert (=> b!158726 m!146883))

(assert (=> b!158726 m!146883))

(declare-fun m!146885 () Bool)

(assert (=> b!158726 m!146885))

(declare-fun m!146887 () Bool)

(assert (=> b!158725 m!146887))

(assert (=> b!158725 m!146887))

(declare-fun m!146891 () Bool)

(assert (=> b!158725 m!146891))

(assert (=> b!158725 m!146891))

(declare-fun m!146893 () Bool)

(assert (=> b!158725 m!146893))

(assert (=> b!158725 m!146883))

(assert (=> b!158725 m!146885))

(assert (=> b!158725 m!146883))

(assert (=> d!38747 m!146883))

(declare-fun m!146895 () Bool)

(assert (=> d!38747 m!146895))

(declare-fun m!146897 () Bool)

(assert (=> d!38747 m!146897))

(declare-fun m!146899 () Bool)

(assert (=> d!38747 m!146899))

(declare-fun m!146901 () Bool)

(assert (=> d!38747 m!146901))

(declare-fun m!146903 () Bool)

(assert (=> d!38747 m!146903))

(declare-fun m!146905 () Bool)

(assert (=> d!38747 m!146905))

(assert (=> d!38747 m!146887))

(assert (=> d!38747 m!146891))

(declare-fun m!146907 () Bool)

(assert (=> d!38747 m!146907))

(assert (=> d!38747 m!146903))

(declare-fun m!146909 () Bool)

(assert (=> d!38747 m!146909))

(assert (=> d!38747 m!146907))

(declare-fun m!146911 () Bool)

(assert (=> d!38747 m!146911))

(declare-fun m!146913 () Bool)

(assert (=> d!38747 m!146913))

(declare-fun m!146915 () Bool)

(assert (=> d!38747 m!146915))

(declare-fun m!146917 () Bool)

(assert (=> d!38747 m!146917))

(declare-fun m!146919 () Bool)

(assert (=> d!38747 m!146919))

(declare-fun m!146921 () Bool)

(assert (=> d!38747 m!146921))

(assert (=> d!38747 m!146903))

(assert (=> d!38747 m!146921))

(declare-fun m!146923 () Bool)

(assert (=> d!38747 m!146923))

(assert (=> d!38747 m!146921))

(assert (=> d!38747 m!146883))

(assert (=> d!38747 m!146887))

(assert (=> d!38747 m!146917))

(assert (=> d!38747 m!146897))

(assert (=> d!38747 m!145261))

(assert (=> d!38747 m!146913))

(declare-fun m!146925 () Bool)

(assert (=> d!38747 m!146925))

(declare-fun m!146927 () Bool)

(assert (=> d!38747 m!146927))

(assert (=> b!158727 m!146887))

(declare-fun m!146929 () Bool)

(assert (=> b!158727 m!146929))

(declare-fun m!146931 () Bool)

(assert (=> b!158727 m!146931))

(assert (=> b!158727 m!146887))

(assert (=> b!158727 m!146891))

(declare-fun m!146933 () Bool)

(assert (=> b!158727 m!146933))

(assert (=> b!158727 m!146929))

(declare-fun m!146935 () Bool)

(assert (=> b!158727 m!146935))

(assert (=> b!158727 m!146921))

(assert (=> b!158727 m!146921))

(declare-fun m!146937 () Bool)

(assert (=> b!158727 m!146937))

(assert (=> b!158255 d!38747))

(declare-fun d!38755 () Bool)

(declare-fun isBalanced!220 (Conc!780) Bool)

(assert (=> d!38755 (= (inv!3542 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))) (isBalanced!220 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))))))

(declare-fun bs!14820 () Bool)

(assert (= bs!14820 d!38755))

(declare-fun m!146939 () Bool)

(assert (=> bs!14820 m!146939))

(assert (=> tb!5641 d!38755))

(declare-fun d!38757 () Bool)

(declare-fun lt!47603 () Int)

(assert (=> d!38757 (>= lt!47603 0)))

(declare-fun e!95367 () Int)

(assert (=> d!38757 (= lt!47603 e!95367)))

(declare-fun c!31875 () Bool)

(assert (=> d!38757 (= c!31875 ((_ is Nil!2728) lt!47145))))

(assert (=> d!38757 (= (size!2305 lt!47145) lt!47603)))

(declare-fun b!158737 () Bool)

(assert (=> b!158737 (= e!95367 0)))

(declare-fun b!158738 () Bool)

(assert (=> b!158738 (= e!95367 (+ 1 (size!2305 (t!25602 lt!47145))))))

(assert (= (and d!38757 c!31875) b!158737))

(assert (= (and d!38757 (not c!31875)) b!158738))

(declare-fun m!146941 () Bool)

(assert (=> b!158738 m!146941))

(assert (=> b!158052 d!38757))

(declare-fun d!38759 () Bool)

(declare-fun lt!47605 () Int)

(assert (=> d!38759 (>= lt!47605 0)))

(declare-fun e!95369 () Int)

(assert (=> d!38759 (= lt!47605 e!95369)))

(declare-fun c!31876 () Bool)

(assert (=> d!38759 (= c!31876 ((_ is Nil!2728) lt!47050))))

(assert (=> d!38759 (= (size!2305 lt!47050) lt!47605)))

(declare-fun b!158740 () Bool)

(assert (=> b!158740 (= e!95369 0)))

(declare-fun b!158741 () Bool)

(assert (=> b!158741 (= e!95369 (+ 1 (size!2305 (t!25602 lt!47050))))))

(assert (= (and d!38759 c!31876) b!158740))

(assert (= (and d!38759 (not c!31876)) b!158741))

(declare-fun m!146943 () Bool)

(assert (=> b!158741 m!146943))

(assert (=> b!158052 d!38759))

(assert (=> b!158052 d!38711))

(declare-fun b!158742 () Bool)

(declare-fun e!95370 () Bool)

(declare-fun lt!47606 () Option!264)

(assert (=> b!158742 (= e!95370 (contains!434 rules!1920 (rule!986 (_1!1536 (get!741 lt!47606)))))))

(declare-fun b!158743 () Bool)

(declare-fun e!95372 () Option!264)

(declare-fun lt!47608 () Option!264)

(declare-fun lt!47607 () Option!264)

(assert (=> b!158743 (= e!95372 (ite (and ((_ is None!263) lt!47608) ((_ is None!263) lt!47607)) None!263 (ite ((_ is None!263) lt!47607) lt!47608 (ite ((_ is None!263) lt!47608) lt!47607 (ite (>= (size!2302 (_1!1536 (v!13662 lt!47608))) (size!2302 (_1!1536 (v!13662 lt!47607)))) lt!47608 lt!47607)))))))

(declare-fun call!6661 () Option!264)

(assert (=> b!158743 (= lt!47608 call!6661)))

(assert (=> b!158743 (= lt!47607 (maxPrefix!117 thiss!17480 (t!25604 rules!1920) (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141)))))

(declare-fun d!38761 () Bool)

(declare-fun e!95371 () Bool)

(assert (=> d!38761 e!95371))

(declare-fun res!72159 () Bool)

(assert (=> d!38761 (=> res!72159 e!95371)))

(assert (=> d!38761 (= res!72159 (isEmpty!1102 lt!47606))))

(assert (=> d!38761 (= lt!47606 e!95372)))

(declare-fun c!31877 () Bool)

(assert (=> d!38761 (= c!31877 (and ((_ is Cons!2730) rules!1920) ((_ is Nil!2730) (t!25604 rules!1920))))))

(declare-fun lt!47609 () Unit!2184)

(declare-fun lt!47610 () Unit!2184)

(assert (=> d!38761 (= lt!47609 lt!47610)))

(assert (=> d!38761 (isPrefix!217 (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141) (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141))))

(assert (=> d!38761 (= lt!47610 (lemmaIsPrefixRefl!124 (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141) (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141)))))

(assert (=> d!38761 (rulesValidInductive!101 thiss!17480 rules!1920)))

(assert (=> d!38761 (= (maxPrefix!117 thiss!17480 rules!1920 (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141)) lt!47606)))

(declare-fun b!158744 () Bool)

(declare-fun res!72158 () Bool)

(assert (=> b!158744 (=> (not res!72158) (not e!95370))))

(assert (=> b!158744 (= res!72158 (= (value!17967 (_1!1536 (get!741 lt!47606))) (apply!375 (transformation!479 (rule!986 (_1!1536 (get!741 lt!47606)))) (seqFromList!336 (originalCharacters!522 (_1!1536 (get!741 lt!47606)))))))))

(declare-fun b!158745 () Bool)

(declare-fun res!72161 () Bool)

(assert (=> b!158745 (=> (not res!72161) (not e!95370))))

(assert (=> b!158745 (= res!72161 (matchR!73 (regex!479 (rule!986 (_1!1536 (get!741 lt!47606)))) (list!973 (charsOf!134 (_1!1536 (get!741 lt!47606))))))))

(declare-fun b!158746 () Bool)

(declare-fun res!72157 () Bool)

(assert (=> b!158746 (=> (not res!72157) (not e!95370))))

(assert (=> b!158746 (= res!72157 (= (++!600 (list!973 (charsOf!134 (_1!1536 (get!741 lt!47606)))) (_2!1536 (get!741 lt!47606))) (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141)))))

(declare-fun bm!6656 () Bool)

(assert (=> bm!6656 (= call!6661 (maxPrefixOneRule!61 thiss!17480 (h!8127 rules!1920) (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141)))))

(declare-fun b!158748 () Bool)

(declare-fun res!72162 () Bool)

(assert (=> b!158748 (=> (not res!72162) (not e!95370))))

(assert (=> b!158748 (= res!72162 (< (size!2305 (_2!1536 (get!741 lt!47606))) (size!2305 (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141))))))

(declare-fun b!158750 () Bool)

(declare-fun res!72160 () Bool)

(assert (=> b!158750 (=> (not res!72160) (not e!95370))))

(assert (=> b!158750 (= res!72160 (= (list!973 (charsOf!134 (_1!1536 (get!741 lt!47606)))) (originalCharacters!522 (_1!1536 (get!741 lt!47606)))))))

(declare-fun b!158752 () Bool)

(assert (=> b!158752 (= e!95371 e!95370)))

(declare-fun res!72156 () Bool)

(assert (=> b!158752 (=> (not res!72156) (not e!95370))))

(assert (=> b!158752 (= res!72156 (isDefined!117 lt!47606))))

(declare-fun b!158754 () Bool)

(assert (=> b!158754 (= e!95372 call!6661)))

(assert (= (and d!38761 c!31877) b!158754))

(assert (= (and d!38761 (not c!31877)) b!158743))

(assert (= (or b!158754 b!158743) bm!6656))

(assert (= (and d!38761 (not res!72159)) b!158752))

(assert (= (and b!158752 res!72156) b!158750))

(assert (= (and b!158750 res!72160) b!158748))

(assert (= (and b!158748 res!72162) b!158746))

(assert (= (and b!158746 res!72157) b!158744))

(assert (= (and b!158744 res!72158) b!158745))

(assert (= (and b!158745 res!72161) b!158742))

(declare-fun m!146957 () Bool)

(assert (=> b!158744 m!146957))

(declare-fun m!146959 () Bool)

(assert (=> b!158744 m!146959))

(assert (=> b!158744 m!146959))

(declare-fun m!146961 () Bool)

(assert (=> b!158744 m!146961))

(assert (=> b!158746 m!146957))

(declare-fun m!146963 () Bool)

(assert (=> b!158746 m!146963))

(assert (=> b!158746 m!146963))

(declare-fun m!146965 () Bool)

(assert (=> b!158746 m!146965))

(assert (=> b!158746 m!146965))

(declare-fun m!146967 () Bool)

(assert (=> b!158746 m!146967))

(assert (=> bm!6656 m!145557))

(declare-fun m!146969 () Bool)

(assert (=> bm!6656 m!146969))

(assert (=> b!158742 m!146957))

(declare-fun m!146971 () Bool)

(assert (=> b!158742 m!146971))

(assert (=> b!158743 m!145557))

(declare-fun m!146973 () Bool)

(assert (=> b!158743 m!146973))

(assert (=> b!158745 m!146957))

(assert (=> b!158745 m!146963))

(assert (=> b!158745 m!146963))

(assert (=> b!158745 m!146965))

(assert (=> b!158745 m!146965))

(declare-fun m!146979 () Bool)

(assert (=> b!158745 m!146979))

(declare-fun m!146983 () Bool)

(assert (=> b!158752 m!146983))

(assert (=> b!158748 m!146957))

(declare-fun m!146989 () Bool)

(assert (=> b!158748 m!146989))

(assert (=> b!158748 m!145557))

(declare-fun m!146991 () Bool)

(assert (=> b!158748 m!146991))

(assert (=> b!158750 m!146957))

(assert (=> b!158750 m!146963))

(assert (=> b!158750 m!146963))

(assert (=> b!158750 m!146965))

(declare-fun m!146993 () Bool)

(assert (=> d!38761 m!146993))

(assert (=> d!38761 m!145557))

(assert (=> d!38761 m!145557))

(declare-fun m!146995 () Bool)

(assert (=> d!38761 m!146995))

(assert (=> d!38761 m!145557))

(assert (=> d!38761 m!145557))

(declare-fun m!146997 () Bool)

(assert (=> d!38761 m!146997))

(assert (=> d!38761 m!146445))

(assert (=> b!158036 d!38761))

(declare-fun b!158761 () Bool)

(declare-fun res!72167 () Bool)

(declare-fun e!95377 () Bool)

(assert (=> b!158761 (=> (not res!72167) (not e!95377))))

(declare-fun lt!47613 () List!2738)

(assert (=> b!158761 (= res!72167 (= (size!2305 lt!47613) (+ (size!2305 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465))))) (size!2305 lt!47141))))))

(declare-fun b!158762 () Bool)

(assert (=> b!158762 (= e!95377 (or (not (= lt!47141 Nil!2728)) (= lt!47613 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))))))))

(declare-fun b!158760 () Bool)

(declare-fun e!95378 () List!2738)

(assert (=> b!158760 (= e!95378 (Cons!2728 (h!8125 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465))))) (++!600 (t!25602 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465))))) lt!47141)))))

(declare-fun b!158759 () Bool)

(assert (=> b!158759 (= e!95378 lt!47141)))

(declare-fun d!38771 () Bool)

(assert (=> d!38771 e!95377))

(declare-fun res!72168 () Bool)

(assert (=> d!38771 (=> (not res!72168) (not e!95377))))

(assert (=> d!38771 (= res!72168 (= (content!378 lt!47613) ((_ map or) (content!378 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465))))) (content!378 lt!47141))))))

(assert (=> d!38771 (= lt!47613 e!95378)))

(declare-fun c!31880 () Bool)

(assert (=> d!38771 (= c!31880 ((_ is Nil!2728) (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465))))))))

(assert (=> d!38771 (= (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) lt!47141) lt!47613)))

(assert (= (and d!38771 c!31880) b!158759))

(assert (= (and d!38771 (not c!31880)) b!158760))

(assert (= (and d!38771 res!72168) b!158761))

(assert (= (and b!158761 res!72167) b!158762))

(declare-fun m!146999 () Bool)

(assert (=> b!158761 m!146999))

(assert (=> b!158761 m!145565))

(declare-fun m!147001 () Bool)

(assert (=> b!158761 m!147001))

(declare-fun m!147003 () Bool)

(assert (=> b!158761 m!147003))

(declare-fun m!147005 () Bool)

(assert (=> b!158760 m!147005))

(declare-fun m!147007 () Bool)

(assert (=> d!38771 m!147007))

(assert (=> d!38771 m!145565))

(declare-fun m!147009 () Bool)

(assert (=> d!38771 m!147009))

(declare-fun m!147011 () Bool)

(assert (=> d!38771 m!147011))

(assert (=> b!158036 d!38771))

(declare-fun bs!14822 () Bool)

(declare-fun b!158772 () Bool)

(assert (= bs!14822 (and b!158772 b!157824)))

(declare-fun lambda!4287 () Int)

(assert (=> bs!14822 (not (= lambda!4287 lambda!4232))))

(declare-fun bs!14823 () Bool)

(assert (= bs!14823 (and b!158772 b!158261)))

(assert (=> bs!14823 (= lambda!4287 lambda!4264)))

(declare-fun bs!14824 () Bool)

(assert (= bs!14824 (and b!158772 d!38441)))

(assert (=> bs!14824 (not (= lambda!4287 lambda!4262))))

(declare-fun bs!14825 () Bool)

(assert (= bs!14825 (and b!158772 b!158244)))

(assert (=> bs!14825 (= lambda!4287 lambda!4263)))

(declare-fun bs!14826 () Bool)

(assert (= bs!14826 (and b!158772 d!38713)))

(assert (=> bs!14826 (= lambda!4287 lambda!4285)))

(declare-fun bs!14827 () Bool)

(assert (= bs!14827 (and b!158772 d!38529)))

(assert (=> bs!14827 (= lambda!4287 lambda!4273)))

(declare-fun bs!14828 () Bool)

(assert (= bs!14828 (and b!158772 d!38433)))

(assert (=> bs!14828 (= lambda!4287 lambda!4255)))

(declare-fun bs!14829 () Bool)

(assert (= bs!14829 (and b!158772 b!158036)))

(assert (=> bs!14829 (= lambda!4287 lambda!4246)))

(declare-fun bs!14830 () Bool)

(assert (= bs!14830 (and b!158772 d!38423)))

(assert (=> bs!14830 (= lambda!4287 lambda!4253)))

(declare-fun b!158775 () Bool)

(declare-fun e!95386 () Bool)

(assert (=> b!158775 (= e!95386 true)))

(declare-fun b!158774 () Bool)

(declare-fun e!95385 () Bool)

(assert (=> b!158774 (= e!95385 e!95386)))

(declare-fun b!158773 () Bool)

(declare-fun e!95384 () Bool)

(assert (=> b!158773 (= e!95384 e!95385)))

(assert (=> b!158772 e!95384))

(assert (= b!158774 b!158775))

(assert (= b!158773 b!158774))

(assert (= (and b!158772 ((_ is Cons!2730) rules!1920)) b!158773))

(assert (=> b!158775 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4287))))

(assert (=> b!158775 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4287))))

(assert (=> b!158772 true))

(declare-fun b!158763 () Bool)

(declare-fun c!31882 () Bool)

(declare-fun lt!47617 () Option!264)

(assert (=> b!158763 (= c!31882 (and ((_ is Some!263) lt!47617) (not (= (_1!1536 (v!13662 lt!47617)) (h!8126 (t!25603 (t!25603 tokens!465)))))))))

(declare-fun e!95381 () List!2738)

(declare-fun e!95380 () List!2738)

(assert (=> b!158763 (= e!95381 e!95380)))

(declare-fun d!38773 () Bool)

(declare-fun c!31881 () Bool)

(assert (=> d!38773 (= c!31881 ((_ is Cons!2729) (t!25603 (t!25603 tokens!465))))))

(declare-fun e!95382 () List!2738)

(assert (=> d!38773 (= (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (t!25603 (t!25603 tokens!465)) separatorToken!170) e!95382)))

(declare-fun b!158764 () Bool)

(declare-fun call!6662 () List!2738)

(assert (=> b!158764 (= e!95381 call!6662)))

(declare-fun bm!6657 () Bool)

(declare-fun c!31885 () Bool)

(declare-fun c!31883 () Bool)

(assert (=> bm!6657 (= c!31885 c!31883)))

(declare-fun lt!47616 () List!2738)

(declare-fun e!95379 () List!2738)

(declare-fun call!6664 () List!2738)

(assert (=> bm!6657 (= call!6662 (++!600 e!95379 (ite c!31883 lt!47616 call!6664)))))

(declare-fun b!158765 () Bool)

(assert (=> b!158765 (= e!95380 (++!600 call!6662 lt!47616))))

(declare-fun bm!6658 () Bool)

(declare-fun call!6663 () BalanceConc!1568)

(declare-fun call!6665 () BalanceConc!1568)

(assert (=> bm!6658 (= call!6663 call!6665)))

(declare-fun b!158766 () Bool)

(assert (=> b!158766 (= e!95380 Nil!2728)))

(assert (=> b!158766 (= (print!102 thiss!17480 (singletonSeq!35 (h!8126 (t!25603 (t!25603 tokens!465))))) (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 (t!25603 (t!25603 tokens!465)))) 0 (BalanceConc!1569 Empty!780)))))

(declare-fun lt!47619 () Unit!2184)

(declare-fun Unit!2210 () Unit!2184)

(assert (=> b!158766 (= lt!47619 Unit!2210)))

(declare-fun lt!47615 () Unit!2184)

(assert (=> b!158766 (= lt!47615 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 call!6664 lt!47616))))

(assert (=> b!158766 false))

(declare-fun lt!47618 () Unit!2184)

(declare-fun Unit!2211 () Unit!2184)

(assert (=> b!158766 (= lt!47618 Unit!2211)))

(declare-fun bm!6659 () Bool)

(declare-fun call!6666 () List!2738)

(assert (=> bm!6659 (= call!6664 call!6666)))

(declare-fun c!31884 () Bool)

(assert (=> bm!6659 (= c!31884 c!31882)))

(declare-fun e!95383 () BalanceConc!1568)

(declare-fun bm!6660 () Bool)

(assert (=> bm!6660 (= call!6666 (list!973 (ite c!31883 call!6665 e!95383)))))

(declare-fun bm!6661 () Bool)

(assert (=> bm!6661 (= call!6665 (charsOf!134 (h!8126 (t!25603 (t!25603 tokens!465)))))))

(declare-fun b!158767 () Bool)

(assert (=> b!158767 (= e!95379 call!6666)))

(declare-fun b!158768 () Bool)

(assert (=> b!158768 (= e!95382 Nil!2728)))

(declare-fun b!158769 () Bool)

(assert (=> b!158769 (= e!95383 call!6663)))

(declare-fun b!158770 () Bool)

(assert (=> b!158770 (= e!95379 (list!973 call!6663))))

(declare-fun b!158771 () Bool)

(assert (=> b!158771 (= e!95383 (charsOf!134 separatorToken!170))))

(assert (=> b!158772 (= e!95382 e!95381)))

(declare-fun lt!47614 () Unit!2184)

(assert (=> b!158772 (= lt!47614 (forallContained!60 (t!25603 (t!25603 tokens!465)) lambda!4287 (h!8126 (t!25603 (t!25603 tokens!465)))))))

(assert (=> b!158772 (= lt!47616 (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (t!25603 (t!25603 (t!25603 tokens!465))) separatorToken!170))))

(assert (=> b!158772 (= lt!47617 (maxPrefix!117 thiss!17480 rules!1920 (++!600 (list!973 (charsOf!134 (h!8126 (t!25603 (t!25603 tokens!465))))) lt!47616)))))

(assert (=> b!158772 (= c!31883 (and ((_ is Some!263) lt!47617) (= (_1!1536 (v!13662 lt!47617)) (h!8126 (t!25603 (t!25603 tokens!465))))))))

(assert (= (and d!38773 c!31881) b!158772))

(assert (= (and d!38773 (not c!31881)) b!158768))

(assert (= (and b!158772 c!31883) b!158764))

(assert (= (and b!158772 (not c!31883)) b!158763))

(assert (= (and b!158763 c!31882) b!158765))

(assert (= (and b!158763 (not c!31882)) b!158766))

(assert (= (or b!158765 b!158766) bm!6658))

(assert (= (or b!158765 b!158766) bm!6659))

(assert (= (and bm!6659 c!31884) b!158771))

(assert (= (and bm!6659 (not c!31884)) b!158769))

(assert (= (or b!158764 bm!6658) bm!6661))

(assert (= (or b!158764 bm!6659) bm!6660))

(assert (= (or b!158764 b!158765) bm!6657))

(assert (= (and bm!6657 c!31885) b!158767))

(assert (= (and bm!6657 (not c!31885)) b!158770))

(declare-fun m!147019 () Bool)

(assert (=> b!158766 m!147019))

(assert (=> b!158766 m!147019))

(declare-fun m!147021 () Bool)

(assert (=> b!158766 m!147021))

(assert (=> b!158766 m!147019))

(declare-fun m!147023 () Bool)

(assert (=> b!158766 m!147023))

(declare-fun m!147025 () Bool)

(assert (=> b!158766 m!147025))

(declare-fun m!147027 () Bool)

(assert (=> b!158770 m!147027))

(declare-fun m!147029 () Bool)

(assert (=> bm!6661 m!147029))

(declare-fun m!147031 () Bool)

(assert (=> bm!6657 m!147031))

(assert (=> b!158772 m!147029))

(declare-fun m!147035 () Bool)

(assert (=> b!158772 m!147035))

(declare-fun m!147037 () Bool)

(assert (=> b!158772 m!147037))

(declare-fun m!147039 () Bool)

(assert (=> b!158772 m!147039))

(declare-fun m!147041 () Bool)

(assert (=> b!158772 m!147041))

(declare-fun m!147043 () Bool)

(assert (=> b!158772 m!147043))

(assert (=> b!158772 m!147035))

(assert (=> b!158772 m!147029))

(assert (=> b!158772 m!147043))

(declare-fun m!147045 () Bool)

(assert (=> b!158765 m!147045))

(declare-fun m!147047 () Bool)

(assert (=> bm!6660 m!147047))

(assert (=> b!158771 m!145281))

(assert (=> b!158036 d!38773))

(declare-fun d!38779 () Bool)

(assert (=> d!38779 (dynLambda!973 lambda!4246 (h!8126 (t!25603 tokens!465)))))

(declare-fun lt!47624 () Unit!2184)

(assert (=> d!38779 (= lt!47624 (choose!1777 (t!25603 tokens!465) lambda!4246 (h!8126 (t!25603 tokens!465))))))

(declare-fun e!95392 () Bool)

(assert (=> d!38779 e!95392))

(declare-fun res!72174 () Bool)

(assert (=> d!38779 (=> (not res!72174) (not e!95392))))

(assert (=> d!38779 (= res!72174 (forall!489 (t!25603 tokens!465) lambda!4246))))

(assert (=> d!38779 (= (forallContained!60 (t!25603 tokens!465) lambda!4246 (h!8126 (t!25603 tokens!465))) lt!47624)))

(declare-fun b!158783 () Bool)

(assert (=> b!158783 (= e!95392 (contains!435 (t!25603 tokens!465) (h!8126 (t!25603 tokens!465))))))

(assert (= (and d!38779 res!72174) b!158783))

(declare-fun b_lambda!3211 () Bool)

(assert (=> (not b_lambda!3211) (not d!38779)))

(declare-fun m!147063 () Bool)

(assert (=> d!38779 m!147063))

(declare-fun m!147065 () Bool)

(assert (=> d!38779 m!147065))

(declare-fun m!147067 () Bool)

(assert (=> d!38779 m!147067))

(declare-fun m!147069 () Bool)

(assert (=> b!158783 m!147069))

(assert (=> b!158036 d!38779))

(declare-fun d!38783 () Bool)

(assert (=> d!38783 (= (list!973 (charsOf!134 (h!8126 (t!25603 tokens!465)))) (list!977 (c!31675 (charsOf!134 (h!8126 (t!25603 tokens!465))))))))

(declare-fun bs!14834 () Bool)

(assert (= bs!14834 d!38783))

(declare-fun m!147077 () Bool)

(assert (=> bs!14834 m!147077))

(assert (=> b!158036 d!38783))

(declare-fun d!38785 () Bool)

(declare-fun lt!47626 () BalanceConc!1568)

(assert (=> d!38785 (= (list!973 lt!47626) (originalCharacters!522 (h!8126 (t!25603 tokens!465))))))

(assert (=> d!38785 (= lt!47626 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (value!17967 (h!8126 (t!25603 tokens!465)))))))

(assert (=> d!38785 (= (charsOf!134 (h!8126 (t!25603 tokens!465))) lt!47626)))

(declare-fun b_lambda!3213 () Bool)

(assert (=> (not b_lambda!3213) (not d!38785)))

(declare-fun t!25699 () Bool)

(declare-fun tb!5689 () Bool)

(assert (=> (and b!157830 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) t!25699) tb!5689))

(declare-fun b!158788 () Bool)

(declare-fun e!95395 () Bool)

(declare-fun tp!81016 () Bool)

(assert (=> b!158788 (= e!95395 (and (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (value!17967 (h!8126 (t!25603 tokens!465)))))) tp!81016))))

(declare-fun result!8256 () Bool)

(assert (=> tb!5689 (= result!8256 (and (inv!3542 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (value!17967 (h!8126 (t!25603 tokens!465))))) e!95395))))

(assert (= tb!5689 b!158788))

(declare-fun m!147087 () Bool)

(assert (=> b!158788 m!147087))

(declare-fun m!147089 () Bool)

(assert (=> tb!5689 m!147089))

(assert (=> d!38785 t!25699))

(declare-fun b_and!9689 () Bool)

(assert (= b_and!9669 (and (=> t!25699 result!8256) b_and!9689)))

(declare-fun t!25701 () Bool)

(declare-fun tb!5691 () Bool)

(assert (=> (and b!158321 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) t!25701) tb!5691))

(declare-fun result!8258 () Bool)

(assert (= result!8258 result!8256))

(assert (=> d!38785 t!25701))

(declare-fun b_and!9691 () Bool)

(assert (= b_and!9675 (and (=> t!25701 result!8258) b_and!9691)))

(declare-fun tb!5693 () Bool)

(declare-fun t!25703 () Bool)

(assert (=> (and b!157844 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) t!25703) tb!5693))

(declare-fun result!8260 () Bool)

(assert (= result!8260 result!8256))

(assert (=> d!38785 t!25703))

(declare-fun b_and!9693 () Bool)

(assert (= b_and!9673 (and (=> t!25703 result!8260) b_and!9693)))

(declare-fun t!25705 () Bool)

(declare-fun tb!5695 () Bool)

(assert (=> (and b!157823 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) t!25705) tb!5695))

(declare-fun result!8262 () Bool)

(assert (= result!8262 result!8256))

(assert (=> d!38785 t!25705))

(declare-fun b_and!9695 () Bool)

(assert (= b_and!9677 (and (=> t!25705 result!8262) b_and!9695)))

(declare-fun t!25707 () Bool)

(declare-fun tb!5697 () Bool)

(assert (=> (and b!158310 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) t!25707) tb!5697))

(declare-fun result!8264 () Bool)

(assert (= result!8264 result!8256))

(assert (=> d!38785 t!25707))

(declare-fun b_and!9697 () Bool)

(assert (= b_and!9671 (and (=> t!25707 result!8264) b_and!9697)))

(declare-fun m!147093 () Bool)

(assert (=> d!38785 m!147093))

(declare-fun m!147095 () Bool)

(assert (=> d!38785 m!147095))

(assert (=> b!158036 d!38785))

(declare-fun b!158793 () Bool)

(declare-fun res!72179 () Bool)

(declare-fun e!95398 () Bool)

(assert (=> b!158793 (=> (not res!72179) (not e!95398))))

(declare-fun lt!47628 () List!2738)

(assert (=> b!158793 (= res!72179 (= (size!2305 lt!47628) (+ (size!2305 e!95079) (size!2305 (ite c!31762 lt!47239 call!6644)))))))

(declare-fun b!158794 () Bool)

(assert (=> b!158794 (= e!95398 (or (not (= (ite c!31762 lt!47239 call!6644) Nil!2728)) (= lt!47628 e!95079)))))

(declare-fun e!95399 () List!2738)

(declare-fun b!158792 () Bool)

(assert (=> b!158792 (= e!95399 (Cons!2728 (h!8125 e!95079) (++!600 (t!25602 e!95079) (ite c!31762 lt!47239 call!6644))))))

(declare-fun b!158791 () Bool)

(assert (=> b!158791 (= e!95399 (ite c!31762 lt!47239 call!6644))))

(declare-fun d!38791 () Bool)

(assert (=> d!38791 e!95398))

(declare-fun res!72180 () Bool)

(assert (=> d!38791 (=> (not res!72180) (not e!95398))))

(assert (=> d!38791 (= res!72180 (= (content!378 lt!47628) ((_ map or) (content!378 e!95079) (content!378 (ite c!31762 lt!47239 call!6644)))))))

(assert (=> d!38791 (= lt!47628 e!95399)))

(declare-fun c!31889 () Bool)

(assert (=> d!38791 (= c!31889 ((_ is Nil!2728) e!95079))))

(assert (=> d!38791 (= (++!600 e!95079 (ite c!31762 lt!47239 call!6644)) lt!47628)))

(assert (= (and d!38791 c!31889) b!158791))

(assert (= (and d!38791 (not c!31889)) b!158792))

(assert (= (and d!38791 res!72180) b!158793))

(assert (= (and b!158793 res!72179) b!158794))

(declare-fun m!147097 () Bool)

(assert (=> b!158793 m!147097))

(declare-fun m!147099 () Bool)

(assert (=> b!158793 m!147099))

(declare-fun m!147101 () Bool)

(assert (=> b!158793 m!147101))

(declare-fun m!147103 () Bool)

(assert (=> b!158792 m!147103))

(declare-fun m!147105 () Bool)

(assert (=> d!38791 m!147105))

(declare-fun m!147107 () Bool)

(assert (=> d!38791 m!147107))

(declare-fun m!147109 () Bool)

(assert (=> d!38791 m!147109))

(assert (=> bm!6637 d!38791))

(declare-fun d!38793 () Bool)

(assert (=> d!38793 true))

(declare-fun lt!47634 () Bool)

(assert (=> d!38793 (= lt!47634 (rulesValidInductive!101 thiss!17480 rules!1920))))

(declare-fun lambda!4292 () Int)

(declare-fun forall!495 (List!2740 Int) Bool)

(assert (=> d!38793 (= lt!47634 (forall!495 rules!1920 lambda!4292))))

(assert (=> d!38793 (= (rulesValid!133 thiss!17480 rules!1920) lt!47634)))

(declare-fun bs!14845 () Bool)

(assert (= bs!14845 d!38793))

(assert (=> bs!14845 m!146445))

(declare-fun m!147133 () Bool)

(assert (=> bs!14845 m!147133))

(assert (=> d!38431 d!38793))

(declare-fun b!158811 () Bool)

(declare-fun res!72186 () Bool)

(declare-fun e!95409 () Bool)

(assert (=> b!158811 (=> (not res!72186) (not e!95409))))

(declare-fun lt!47635 () List!2738)

(assert (=> b!158811 (= res!72186 (= (size!2305 lt!47635) (+ (size!2305 (t!25602 lt!47050)) (size!2305 lt!47058))))))

(declare-fun b!158812 () Bool)

(assert (=> b!158812 (= e!95409 (or (not (= lt!47058 Nil!2728)) (= lt!47635 (t!25602 lt!47050))))))

(declare-fun b!158810 () Bool)

(declare-fun e!95410 () List!2738)

(assert (=> b!158810 (= e!95410 (Cons!2728 (h!8125 (t!25602 lt!47050)) (++!600 (t!25602 (t!25602 lt!47050)) lt!47058)))))

(declare-fun b!158809 () Bool)

(assert (=> b!158809 (= e!95410 lt!47058)))

(declare-fun d!38805 () Bool)

(assert (=> d!38805 e!95409))

(declare-fun res!72187 () Bool)

(assert (=> d!38805 (=> (not res!72187) (not e!95409))))

(assert (=> d!38805 (= res!72187 (= (content!378 lt!47635) ((_ map or) (content!378 (t!25602 lt!47050)) (content!378 lt!47058))))))

(assert (=> d!38805 (= lt!47635 e!95410)))

(declare-fun c!31892 () Bool)

(assert (=> d!38805 (= c!31892 ((_ is Nil!2728) (t!25602 lt!47050)))))

(assert (=> d!38805 (= (++!600 (t!25602 lt!47050) lt!47058) lt!47635)))

(assert (= (and d!38805 c!31892) b!158809))

(assert (= (and d!38805 (not c!31892)) b!158810))

(assert (= (and d!38805 res!72187) b!158811))

(assert (= (and b!158811 res!72186) b!158812))

(declare-fun m!147135 () Bool)

(assert (=> b!158811 m!147135))

(assert (=> b!158811 m!146943))

(assert (=> b!158811 m!145431))

(declare-fun m!147137 () Bool)

(assert (=> b!158810 m!147137))

(declare-fun m!147139 () Bool)

(assert (=> d!38805 m!147139))

(declare-fun m!147141 () Bool)

(assert (=> d!38805 m!147141))

(assert (=> d!38805 m!145439))

(assert (=> b!158051 d!38805))

(declare-fun d!38807 () Bool)

(declare-fun e!95419 () Bool)

(assert (=> d!38807 e!95419))

(declare-fun res!72193 () Bool)

(assert (=> d!38807 (=> (not res!72193) (not e!95419))))

(declare-fun lt!47641 () BalanceConc!1568)

(assert (=> d!38807 (= res!72193 (= (list!973 lt!47641) lt!47051))))

(declare-fun fromList!95 (List!2738) Conc!780)

(assert (=> d!38807 (= lt!47641 (BalanceConc!1569 (fromList!95 lt!47051)))))

(assert (=> d!38807 (= (fromListB!140 lt!47051) lt!47641)))

(declare-fun b!158824 () Bool)

(assert (=> b!158824 (= e!95419 (isBalanced!220 (fromList!95 lt!47051)))))

(assert (= (and d!38807 res!72193) b!158824))

(declare-fun m!147153 () Bool)

(assert (=> d!38807 m!147153))

(declare-fun m!147155 () Bool)

(assert (=> d!38807 m!147155))

(assert (=> b!158824 m!147155))

(assert (=> b!158824 m!147155))

(declare-fun m!147157 () Bool)

(assert (=> b!158824 m!147157))

(assert (=> d!38387 d!38807))

(declare-fun d!38811 () Bool)

(assert (=> d!38811 (= (inv!16 (value!17967 separatorToken!170)) (= (charsToInt!0 (text!3954 (value!17967 separatorToken!170))) (value!17958 (value!17967 separatorToken!170))))))

(declare-fun bs!14846 () Bool)

(assert (= bs!14846 d!38811))

(declare-fun m!147159 () Bool)

(assert (=> bs!14846 m!147159))

(assert (=> b!157938 d!38811))

(declare-fun d!38813 () Bool)

(declare-fun c!31903 () Bool)

(assert (=> d!38813 (= c!31903 ((_ is Node!780) (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))))))

(declare-fun e!95428 () Bool)

(assert (=> d!38813 (= (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))) e!95428)))

(declare-fun b!158839 () Bool)

(declare-fun inv!3545 (Conc!780) Bool)

(assert (=> b!158839 (= e!95428 (inv!3545 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))))))

(declare-fun b!158840 () Bool)

(declare-fun e!95429 () Bool)

(assert (=> b!158840 (= e!95428 e!95429)))

(declare-fun res!72196 () Bool)

(assert (=> b!158840 (= res!72196 (not ((_ is Leaf!1359) (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))))))))

(assert (=> b!158840 (=> res!72196 e!95429)))

(declare-fun b!158841 () Bool)

(declare-fun inv!3546 (Conc!780) Bool)

(assert (=> b!158841 (= e!95429 (inv!3546 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))))))

(assert (= (and d!38813 c!31903) b!158839))

(assert (= (and d!38813 (not c!31903)) b!158840))

(assert (= (and b!158840 (not res!72196)) b!158841))

(declare-fun m!147161 () Bool)

(assert (=> b!158839 m!147161))

(declare-fun m!147163 () Bool)

(assert (=> b!158841 m!147163))

(assert (=> b!157888 d!38813))

(declare-fun d!38815 () Bool)

(assert (=> d!38815 (= (head!590 (drop!129 lt!47232 0)) (h!8126 (drop!129 lt!47232 0)))))

(assert (=> b!158244 d!38815))

(declare-fun d!38817 () Bool)

(assert (=> d!38817 (= (head!590 (drop!129 lt!47232 0)) (apply!374 lt!47232 0))))

(declare-fun lt!47647 () Unit!2184)

(declare-fun choose!1781 (List!2739 Int) Unit!2184)

(assert (=> d!38817 (= lt!47647 (choose!1781 lt!47232 0))))

(declare-fun e!95443 () Bool)

(assert (=> d!38817 e!95443))

(declare-fun res!72202 () Bool)

(assert (=> d!38817 (=> (not res!72202) (not e!95443))))

(assert (=> d!38817 (= res!72202 (>= 0 0))))

(assert (=> d!38817 (= (lemmaDropApply!116 lt!47232 0) lt!47647)))

(declare-fun b!158863 () Bool)

(assert (=> b!158863 (= e!95443 (< 0 (size!2308 lt!47232)))))

(assert (= (and d!38817 res!72202) b!158863))

(assert (=> d!38817 m!145803))

(assert (=> d!38817 m!145803))

(assert (=> d!38817 m!145805))

(assert (=> d!38817 m!145813))

(declare-fun m!147175 () Bool)

(assert (=> d!38817 m!147175))

(declare-fun m!147177 () Bool)

(assert (=> b!158863 m!147177))

(assert (=> b!158244 d!38817))

(declare-fun b!158905 () Bool)

(declare-fun e!95472 () List!2739)

(assert (=> b!158905 (= e!95472 lt!47229)))

(declare-fun b!158906 () Bool)

(declare-fun e!95473 () Int)

(declare-fun call!6678 () Int)

(assert (=> b!158906 (= e!95473 (- call!6678 (+ 0 1)))))

(declare-fun b!158907 () Bool)

(declare-fun e!95474 () List!2739)

(assert (=> b!158907 (= e!95474 e!95472)))

(declare-fun c!31930 () Bool)

(assert (=> b!158907 (= c!31930 (<= (+ 0 1) 0))))

(declare-fun b!158908 () Bool)

(assert (=> b!158908 (= e!95472 (drop!129 (t!25603 lt!47229) (- (+ 0 1) 1)))))

(declare-fun b!158909 () Bool)

(assert (=> b!158909 (= e!95473 0)))

(declare-fun b!158910 () Bool)

(assert (=> b!158910 (= e!95474 Nil!2729)))

(declare-fun b!158911 () Bool)

(declare-fun e!95471 () Bool)

(declare-fun lt!47670 () List!2739)

(declare-fun e!95470 () Int)

(assert (=> b!158911 (= e!95471 (= (size!2308 lt!47670) e!95470))))

(declare-fun c!31927 () Bool)

(assert (=> b!158911 (= c!31927 (<= (+ 0 1) 0))))

(declare-fun bm!6673 () Bool)

(assert (=> bm!6673 (= call!6678 (size!2308 lt!47229))))

(declare-fun d!38821 () Bool)

(assert (=> d!38821 e!95471))

(declare-fun res!72213 () Bool)

(assert (=> d!38821 (=> (not res!72213) (not e!95471))))

(declare-fun content!381 (List!2739) (InoxSet Token!702))

(assert (=> d!38821 (= res!72213 (= ((_ map implies) (content!381 lt!47670) (content!381 lt!47229)) ((as const (InoxSet Token!702)) true)))))

(assert (=> d!38821 (= lt!47670 e!95474)))

(declare-fun c!31929 () Bool)

(assert (=> d!38821 (= c!31929 ((_ is Nil!2729) lt!47229))))

(assert (=> d!38821 (= (drop!129 lt!47229 (+ 0 1)) lt!47670)))

(declare-fun b!158912 () Bool)

(assert (=> b!158912 (= e!95470 call!6678)))

(declare-fun b!158913 () Bool)

(assert (=> b!158913 (= e!95470 e!95473)))

(declare-fun c!31928 () Bool)

(assert (=> b!158913 (= c!31928 (>= (+ 0 1) call!6678))))

(assert (= (and d!38821 c!31929) b!158910))

(assert (= (and d!38821 (not c!31929)) b!158907))

(assert (= (and b!158907 c!31930) b!158905))

(assert (= (and b!158907 (not c!31930)) b!158908))

(assert (= (and d!38821 res!72213) b!158911))

(assert (= (and b!158911 c!31927) b!158912))

(assert (= (and b!158911 (not c!31927)) b!158913))

(assert (= (and b!158913 c!31928) b!158909))

(assert (= (and b!158913 (not c!31928)) b!158906))

(assert (= (or b!158912 b!158913 b!158906) bm!6673))

(declare-fun m!147203 () Bool)

(assert (=> b!158908 m!147203))

(declare-fun m!147205 () Bool)

(assert (=> b!158911 m!147205))

(declare-fun m!147207 () Bool)

(assert (=> bm!6673 m!147207))

(declare-fun m!147209 () Bool)

(assert (=> d!38821 m!147209))

(declare-fun m!147211 () Bool)

(assert (=> d!38821 m!147211))

(assert (=> b!158244 d!38821))

(declare-fun e!95485 () Bool)

(declare-fun lt!47674 () BalanceConc!1568)

(declare-fun b!158937 () Bool)

(assert (=> b!158937 (= e!95485 (= (list!973 lt!47674) (++!600 (list!973 (charsOf!134 (apply!373 lt!47053 0))) (list!973 lt!47236))))))

(declare-fun b!158935 () Bool)

(declare-fun res!72225 () Bool)

(assert (=> b!158935 (=> (not res!72225) (not e!95485))))

(declare-fun height!82 (Conc!780) Int)

(declare-fun ++!604 (Conc!780 Conc!780) Conc!780)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!158935 (= res!72225 (<= (height!82 (++!604 (c!31675 (charsOf!134 (apply!373 lt!47053 0))) (c!31675 lt!47236))) (+ (max!0 (height!82 (c!31675 (charsOf!134 (apply!373 lt!47053 0)))) (height!82 (c!31675 lt!47236))) 1)))))

(declare-fun b!158936 () Bool)

(declare-fun res!72224 () Bool)

(assert (=> b!158936 (=> (not res!72224) (not e!95485))))

(assert (=> b!158936 (= res!72224 (>= (height!82 (++!604 (c!31675 (charsOf!134 (apply!373 lt!47053 0))) (c!31675 lt!47236))) (max!0 (height!82 (c!31675 (charsOf!134 (apply!373 lt!47053 0)))) (height!82 (c!31675 lt!47236)))))))

(declare-fun d!38833 () Bool)

(assert (=> d!38833 e!95485))

(declare-fun res!72223 () Bool)

(assert (=> d!38833 (=> (not res!72223) (not e!95485))))

(declare-fun appendAssocInst!23 (Conc!780 Conc!780) Bool)

(assert (=> d!38833 (= res!72223 (appendAssocInst!23 (c!31675 (charsOf!134 (apply!373 lt!47053 0))) (c!31675 lt!47236)))))

(assert (=> d!38833 (= lt!47674 (BalanceConc!1569 (++!604 (c!31675 (charsOf!134 (apply!373 lt!47053 0))) (c!31675 lt!47236))))))

(assert (=> d!38833 (= (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236) lt!47674)))

(declare-fun b!158934 () Bool)

(declare-fun res!72226 () Bool)

(assert (=> b!158934 (=> (not res!72226) (not e!95485))))

(assert (=> b!158934 (= res!72226 (isBalanced!220 (++!604 (c!31675 (charsOf!134 (apply!373 lt!47053 0))) (c!31675 lt!47236))))))

(assert (= (and d!38833 res!72223) b!158934))

(assert (= (and b!158934 res!72226) b!158935))

(assert (= (and b!158935 res!72225) b!158936))

(assert (= (and b!158936 res!72224) b!158937))

(declare-fun m!147277 () Bool)

(assert (=> d!38833 m!147277))

(declare-fun m!147279 () Bool)

(assert (=> d!38833 m!147279))

(assert (=> b!158934 m!147279))

(assert (=> b!158934 m!147279))

(declare-fun m!147281 () Bool)

(assert (=> b!158934 m!147281))

(declare-fun m!147283 () Bool)

(assert (=> b!158937 m!147283))

(assert (=> b!158937 m!145799))

(declare-fun m!147285 () Bool)

(assert (=> b!158937 m!147285))

(assert (=> b!158937 m!145831))

(assert (=> b!158937 m!147285))

(assert (=> b!158937 m!145831))

(declare-fun m!147287 () Bool)

(assert (=> b!158937 m!147287))

(assert (=> b!158935 m!147279))

(declare-fun m!147289 () Bool)

(assert (=> b!158935 m!147289))

(declare-fun m!147291 () Bool)

(assert (=> b!158935 m!147291))

(declare-fun m!147293 () Bool)

(assert (=> b!158935 m!147293))

(declare-fun m!147295 () Bool)

(assert (=> b!158935 m!147295))

(assert (=> b!158935 m!147279))

(assert (=> b!158935 m!147293))

(assert (=> b!158935 m!147291))

(assert (=> b!158936 m!147279))

(assert (=> b!158936 m!147289))

(assert (=> b!158936 m!147291))

(assert (=> b!158936 m!147293))

(assert (=> b!158936 m!147295))

(assert (=> b!158936 m!147279))

(assert (=> b!158936 m!147293))

(assert (=> b!158936 m!147291))

(assert (=> b!158244 d!38833))

(declare-fun b!158938 () Bool)

(declare-fun e!95488 () List!2739)

(assert (=> b!158938 (= e!95488 lt!47232)))

(declare-fun b!158939 () Bool)

(declare-fun e!95489 () Int)

(declare-fun call!6680 () Int)

(assert (=> b!158939 (= e!95489 (- call!6680 0))))

(declare-fun b!158940 () Bool)

(declare-fun e!95490 () List!2739)

(assert (=> b!158940 (= e!95490 e!95488)))

(declare-fun c!31941 () Bool)

(assert (=> b!158940 (= c!31941 (<= 0 0))))

(declare-fun b!158941 () Bool)

(assert (=> b!158941 (= e!95488 (drop!129 (t!25603 lt!47232) (- 0 1)))))

(declare-fun b!158942 () Bool)

(assert (=> b!158942 (= e!95489 0)))

(declare-fun b!158943 () Bool)

(assert (=> b!158943 (= e!95490 Nil!2729)))

(declare-fun b!158944 () Bool)

(declare-fun e!95487 () Bool)

(declare-fun lt!47675 () List!2739)

(declare-fun e!95486 () Int)

(assert (=> b!158944 (= e!95487 (= (size!2308 lt!47675) e!95486))))

(declare-fun c!31938 () Bool)

(assert (=> b!158944 (= c!31938 (<= 0 0))))

(declare-fun bm!6675 () Bool)

(assert (=> bm!6675 (= call!6680 (size!2308 lt!47232))))

(declare-fun d!38839 () Bool)

(assert (=> d!38839 e!95487))

(declare-fun res!72227 () Bool)

(assert (=> d!38839 (=> (not res!72227) (not e!95487))))

(assert (=> d!38839 (= res!72227 (= ((_ map implies) (content!381 lt!47675) (content!381 lt!47232)) ((as const (InoxSet Token!702)) true)))))

(assert (=> d!38839 (= lt!47675 e!95490)))

(declare-fun c!31940 () Bool)

(assert (=> d!38839 (= c!31940 ((_ is Nil!2729) lt!47232))))

(assert (=> d!38839 (= (drop!129 lt!47232 0) lt!47675)))

(declare-fun b!158945 () Bool)

(assert (=> b!158945 (= e!95486 call!6680)))

(declare-fun b!158946 () Bool)

(assert (=> b!158946 (= e!95486 e!95489)))

(declare-fun c!31939 () Bool)

(assert (=> b!158946 (= c!31939 (>= 0 call!6680))))

(assert (= (and d!38839 c!31940) b!158943))

(assert (= (and d!38839 (not c!31940)) b!158940))

(assert (= (and b!158940 c!31941) b!158938))

(assert (= (and b!158940 (not c!31941)) b!158941))

(assert (= (and d!38839 res!72227) b!158944))

(assert (= (and b!158944 c!31938) b!158945))

(assert (= (and b!158944 (not c!31938)) b!158946))

(assert (= (and b!158946 c!31939) b!158942))

(assert (= (and b!158946 (not c!31939)) b!158939))

(assert (= (or b!158945 b!158946 b!158939) bm!6675))

(declare-fun m!147297 () Bool)

(assert (=> b!158941 m!147297))

(declare-fun m!147299 () Bool)

(assert (=> b!158944 m!147299))

(assert (=> bm!6675 m!147177))

(declare-fun m!147301 () Bool)

(assert (=> d!38839 m!147301))

(declare-fun m!147303 () Bool)

(assert (=> d!38839 m!147303))

(assert (=> b!158244 d!38839))

(declare-fun d!38841 () Bool)

(assert (=> d!38841 (= (tail!330 (drop!129 lt!47229 0)) (t!25603 (drop!129 lt!47229 0)))))

(assert (=> b!158244 d!38841))

(declare-fun bs!14868 () Bool)

(declare-fun d!38843 () Bool)

(assert (= bs!14868 (and d!38843 b!158261)))

(declare-fun lambda!4295 () Int)

(assert (=> bs!14868 (not (= lambda!4295 lambda!4264))))

(declare-fun bs!14869 () Bool)

(assert (= bs!14869 (and d!38843 d!38441)))

(assert (=> bs!14869 (= lambda!4295 lambda!4262)))

(declare-fun bs!14870 () Bool)

(assert (= bs!14870 (and d!38843 b!158244)))

(assert (=> bs!14870 (not (= lambda!4295 lambda!4263))))

(declare-fun bs!14871 () Bool)

(assert (= bs!14871 (and d!38843 d!38713)))

(assert (=> bs!14871 (not (= lambda!4295 lambda!4285))))

(declare-fun bs!14872 () Bool)

(assert (= bs!14872 (and d!38843 d!38529)))

(assert (=> bs!14872 (not (= lambda!4295 lambda!4273))))

(declare-fun bs!14873 () Bool)

(assert (= bs!14873 (and d!38843 d!38433)))

(assert (=> bs!14873 (not (= lambda!4295 lambda!4255))))

(declare-fun bs!14874 () Bool)

(assert (= bs!14874 (and d!38843 b!158772)))

(assert (=> bs!14874 (not (= lambda!4295 lambda!4287))))

(declare-fun bs!14875 () Bool)

(assert (= bs!14875 (and d!38843 b!157824)))

(assert (=> bs!14875 (= lambda!4295 lambda!4232)))

(declare-fun bs!14876 () Bool)

(assert (= bs!14876 (and d!38843 b!158036)))

(assert (=> bs!14876 (not (= lambda!4295 lambda!4246))))

(declare-fun bs!14877 () Bool)

(assert (= bs!14877 (and d!38843 d!38423)))

(assert (=> bs!14877 (not (= lambda!4295 lambda!4253))))

(declare-fun bs!14878 () Bool)

(declare-fun b!158953 () Bool)

(assert (= bs!14878 (and b!158953 b!158261)))

(declare-fun lambda!4296 () Int)

(assert (=> bs!14878 (= lambda!4296 lambda!4264)))

(declare-fun bs!14879 () Bool)

(assert (= bs!14879 (and b!158953 d!38441)))

(assert (=> bs!14879 (not (= lambda!4296 lambda!4262))))

(declare-fun bs!14880 () Bool)

(assert (= bs!14880 (and b!158953 b!158244)))

(assert (=> bs!14880 (= lambda!4296 lambda!4263)))

(declare-fun bs!14881 () Bool)

(assert (= bs!14881 (and b!158953 d!38843)))

(assert (=> bs!14881 (not (= lambda!4296 lambda!4295))))

(declare-fun bs!14882 () Bool)

(assert (= bs!14882 (and b!158953 d!38713)))

(assert (=> bs!14882 (= lambda!4296 lambda!4285)))

(declare-fun bs!14883 () Bool)

(assert (= bs!14883 (and b!158953 d!38529)))

(assert (=> bs!14883 (= lambda!4296 lambda!4273)))

(declare-fun bs!14884 () Bool)

(assert (= bs!14884 (and b!158953 d!38433)))

(assert (=> bs!14884 (= lambda!4296 lambda!4255)))

(declare-fun bs!14885 () Bool)

(assert (= bs!14885 (and b!158953 b!158772)))

(assert (=> bs!14885 (= lambda!4296 lambda!4287)))

(declare-fun bs!14886 () Bool)

(assert (= bs!14886 (and b!158953 b!157824)))

(assert (=> bs!14886 (not (= lambda!4296 lambda!4232))))

(declare-fun bs!14887 () Bool)

(assert (= bs!14887 (and b!158953 b!158036)))

(assert (=> bs!14887 (= lambda!4296 lambda!4246)))

(declare-fun bs!14888 () Bool)

(assert (= bs!14888 (and b!158953 d!38423)))

(assert (=> bs!14888 (= lambda!4296 lambda!4253)))

(declare-fun b!158960 () Bool)

(declare-fun e!95500 () Bool)

(assert (=> b!158960 (= e!95500 true)))

(declare-fun b!158959 () Bool)

(declare-fun e!95499 () Bool)

(assert (=> b!158959 (= e!95499 e!95500)))

(declare-fun b!158958 () Bool)

(declare-fun e!95498 () Bool)

(assert (=> b!158958 (= e!95498 e!95499)))

(assert (=> b!158953 e!95498))

(assert (= b!158959 b!158960))

(assert (= b!158958 b!158959))

(assert (= (and b!158953 ((_ is Cons!2730) rules!1920)) b!158958))

(assert (=> b!158960 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4296))))

(assert (=> b!158960 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4296))))

(assert (=> b!158953 true))

(declare-fun b!158947 () Bool)

(declare-fun e!95494 () BalanceConc!1568)

(assert (=> b!158947 (= e!95494 (BalanceConc!1569 Empty!780))))

(declare-fun b!158948 () Bool)

(declare-fun e!95496 () Bool)

(declare-fun lt!47684 () Option!265)

(assert (=> b!158948 (= e!95496 (= (_1!1537 (v!13663 lt!47684)) (apply!373 lt!47053 (+ 0 1))))))

(declare-fun lt!47676 () BalanceConc!1568)

(assert (=> d!38843 (= (list!973 lt!47676) (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (dropList!76 lt!47053 (+ 0 1)) separatorToken!170))))

(assert (=> d!38843 (= lt!47676 e!95494)))

(declare-fun c!31945 () Bool)

(assert (=> d!38843 (= c!31945 (>= (+ 0 1) (size!2303 lt!47053)))))

(declare-fun lt!47677 () Unit!2184)

(assert (=> d!38843 (= lt!47677 (lemmaContentSubsetPreservesForall!20 (list!976 lt!47053) (dropList!76 lt!47053 (+ 0 1)) lambda!4295))))

(declare-fun e!95492 () Bool)

(assert (=> d!38843 e!95492))

(declare-fun res!72228 () Bool)

(assert (=> d!38843 (=> (not res!72228) (not e!95492))))

(assert (=> d!38843 (= res!72228 (>= (+ 0 1) 0))))

(assert (=> d!38843 (= (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 (+ 0 1)) lt!47676)))

(declare-fun b!158949 () Bool)

(declare-fun e!95493 () BalanceConc!1568)

(assert (=> b!158949 (= e!95493 (BalanceConc!1569 Empty!780))))

(declare-fun call!6685 () Token!702)

(assert (=> b!158949 (= (print!102 thiss!17480 (singletonSeq!35 call!6685)) (printTailRec!65 thiss!17480 (singletonSeq!35 call!6685) 0 (BalanceConc!1569 Empty!780)))))

(declare-fun lt!47681 () Unit!2184)

(declare-fun Unit!2214 () Unit!2184)

(assert (=> b!158949 (= lt!47681 Unit!2214)))

(declare-fun lt!47689 () BalanceConc!1568)

(declare-fun lt!47686 () Unit!2184)

(declare-fun call!6682 () BalanceConc!1568)

(assert (=> b!158949 (= lt!47686 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 (list!973 call!6682) (list!973 lt!47689)))))

(assert (=> b!158949 false))

(declare-fun lt!47680 () Unit!2184)

(declare-fun Unit!2215 () Unit!2184)

(assert (=> b!158949 (= lt!47680 Unit!2215)))

(declare-fun b!158950 () Bool)

(declare-fun e!95497 () BalanceConc!1568)

(assert (=> b!158950 (= e!95497 (charsOf!134 call!6685))))

(declare-fun c!31942 () Bool)

(declare-fun bm!6676 () Bool)

(declare-fun c!31944 () Bool)

(declare-fun call!6683 () Token!702)

(declare-fun call!6681 () BalanceConc!1568)

(assert (=> bm!6676 (= call!6681 (charsOf!134 (ite c!31942 call!6683 (ite c!31944 separatorToken!170 call!6685))))))

(declare-fun b!158951 () Bool)

(declare-fun e!95495 () Bool)

(assert (=> b!158951 (= c!31944 e!95495)))

(declare-fun res!72229 () Bool)

(assert (=> b!158951 (=> (not res!72229) (not e!95495))))

(assert (=> b!158951 (= res!72229 ((_ is Some!264) lt!47684))))

(declare-fun e!95491 () BalanceConc!1568)

(assert (=> b!158951 (= e!95491 e!95493)))

(declare-fun bm!6677 () Bool)

(assert (=> bm!6677 (= call!6685 call!6683)))

(declare-fun bm!6678 () Bool)

(assert (=> bm!6678 (= call!6682 call!6681)))

(declare-fun b!158952 () Bool)

(declare-fun call!6684 () BalanceConc!1568)

(assert (=> b!158952 (= e!95491 call!6684)))

(assert (=> b!158953 (= e!95494 e!95491)))

(declare-fun lt!47685 () List!2739)

(assert (=> b!158953 (= lt!47685 (list!976 lt!47053))))

(declare-fun lt!47679 () Unit!2184)

(assert (=> b!158953 (= lt!47679 (lemmaDropApply!116 lt!47685 (+ 0 1)))))

(assert (=> b!158953 (= (head!590 (drop!129 lt!47685 (+ 0 1))) (apply!374 lt!47685 (+ 0 1)))))

(declare-fun lt!47683 () Unit!2184)

(assert (=> b!158953 (= lt!47683 lt!47679)))

(declare-fun lt!47682 () List!2739)

(assert (=> b!158953 (= lt!47682 (list!976 lt!47053))))

(declare-fun lt!47687 () Unit!2184)

(assert (=> b!158953 (= lt!47687 (lemmaDropTail!108 lt!47682 (+ 0 1)))))

(assert (=> b!158953 (= (tail!330 (drop!129 lt!47682 (+ 0 1))) (drop!129 lt!47682 (+ 0 1 1)))))

(declare-fun lt!47688 () Unit!2184)

(assert (=> b!158953 (= lt!47688 lt!47687)))

(declare-fun lt!47678 () Unit!2184)

(assert (=> b!158953 (= lt!47678 (forallContained!60 (list!976 lt!47053) lambda!4296 (apply!373 lt!47053 (+ 0 1))))))

(assert (=> b!158953 (= lt!47689 (printWithSeparatorTokenWhenNeededRec!48 thiss!17480 rules!1920 lt!47053 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!158953 (= lt!47684 (maxPrefixZipperSequence!76 thiss!17480 rules!1920 (++!602 (charsOf!134 (apply!373 lt!47053 (+ 0 1))) lt!47689)))))

(declare-fun res!72230 () Bool)

(assert (=> b!158953 (= res!72230 ((_ is Some!264) lt!47684))))

(assert (=> b!158953 (=> (not res!72230) (not e!95496))))

(assert (=> b!158953 (= c!31942 e!95496)))

(declare-fun b!158954 () Bool)

(assert (=> b!158954 (= e!95492 (<= (+ 0 1) (size!2303 lt!47053)))))

(declare-fun bm!6679 () Bool)

(declare-fun c!31943 () Bool)

(assert (=> bm!6679 (= c!31943 c!31942)))

(assert (=> bm!6679 (= call!6684 (++!602 e!95497 (ite c!31942 lt!47689 call!6682)))))

(declare-fun b!158955 () Bool)

(assert (=> b!158955 (= e!95495 (not (= (_1!1537 (v!13663 lt!47684)) call!6683)))))

(declare-fun b!158956 () Bool)

(assert (=> b!158956 (= e!95493 (++!602 call!6684 lt!47689))))

(declare-fun b!158957 () Bool)

(assert (=> b!158957 (= e!95497 call!6681)))

(declare-fun bm!6680 () Bool)

(assert (=> bm!6680 (= call!6683 (apply!373 lt!47053 (+ 0 1)))))

(assert (= (and d!38843 res!72228) b!158954))

(assert (= (and d!38843 c!31945) b!158947))

(assert (= (and d!38843 (not c!31945)) b!158953))

(assert (= (and b!158953 res!72230) b!158948))

(assert (= (and b!158953 c!31942) b!158952))

(assert (= (and b!158953 (not c!31942)) b!158951))

(assert (= (and b!158951 res!72229) b!158955))

(assert (= (and b!158951 c!31944) b!158956))

(assert (= (and b!158951 (not c!31944)) b!158949))

(assert (= (or b!158956 b!158949) bm!6677))

(assert (= (or b!158956 b!158949) bm!6678))

(assert (= (or b!158952 bm!6677 b!158955) bm!6680))

(assert (= (or b!158952 bm!6678) bm!6676))

(assert (= (or b!158952 b!158956) bm!6679))

(assert (= (and bm!6679 c!31943) b!158957))

(assert (= (and bm!6679 (not c!31943)) b!158950))

(declare-fun m!147305 () Bool)

(assert (=> b!158956 m!147305))

(assert (=> d!38843 m!145629))

(assert (=> d!38843 m!145629))

(declare-fun m!147307 () Bool)

(assert (=> d!38843 m!147307))

(declare-fun m!147309 () Bool)

(assert (=> d!38843 m!147309))

(assert (=> d!38843 m!147307))

(declare-fun m!147311 () Bool)

(assert (=> d!38843 m!147311))

(assert (=> d!38843 m!147307))

(assert (=> d!38843 m!145789))

(declare-fun m!147313 () Bool)

(assert (=> d!38843 m!147313))

(declare-fun m!147315 () Bool)

(assert (=> b!158953 m!147315))

(assert (=> b!158953 m!145629))

(declare-fun m!147317 () Bool)

(assert (=> b!158953 m!147317))

(declare-fun m!147319 () Bool)

(assert (=> b!158953 m!147319))

(assert (=> b!158953 m!147317))

(declare-fun m!147321 () Bool)

(assert (=> b!158953 m!147321))

(declare-fun m!147323 () Bool)

(assert (=> b!158953 m!147323))

(declare-fun m!147325 () Bool)

(assert (=> b!158953 m!147325))

(declare-fun m!147327 () Bool)

(assert (=> b!158953 m!147327))

(assert (=> b!158953 m!147323))

(declare-fun m!147329 () Bool)

(assert (=> b!158953 m!147329))

(declare-fun m!147331 () Bool)

(assert (=> b!158953 m!147331))

(declare-fun m!147333 () Bool)

(assert (=> b!158953 m!147333))

(assert (=> b!158953 m!147317))

(assert (=> b!158953 m!147321))

(declare-fun m!147335 () Bool)

(assert (=> b!158953 m!147335))

(assert (=> b!158953 m!147325))

(assert (=> b!158953 m!145629))

(assert (=> b!158953 m!147331))

(declare-fun m!147337 () Bool)

(assert (=> b!158953 m!147337))

(declare-fun m!147339 () Bool)

(assert (=> b!158953 m!147339))

(declare-fun m!147341 () Bool)

(assert (=> b!158953 m!147341))

(assert (=> b!158948 m!147317))

(declare-fun m!147343 () Bool)

(assert (=> bm!6676 m!147343))

(declare-fun m!147345 () Bool)

(assert (=> b!158950 m!147345))

(declare-fun m!147347 () Bool)

(assert (=> b!158949 m!147347))

(declare-fun m!147349 () Bool)

(assert (=> b!158949 m!147349))

(declare-fun m!147351 () Bool)

(assert (=> b!158949 m!147351))

(declare-fun m!147353 () Bool)

(assert (=> b!158949 m!147353))

(assert (=> b!158949 m!147349))

(assert (=> b!158949 m!147347))

(assert (=> b!158949 m!147353))

(declare-fun m!147355 () Bool)

(assert (=> b!158949 m!147355))

(assert (=> b!158949 m!147349))

(declare-fun m!147357 () Bool)

(assert (=> b!158949 m!147357))

(assert (=> bm!6680 m!147317))

(assert (=> b!158954 m!145789))

(declare-fun m!147359 () Bool)

(assert (=> bm!6679 m!147359))

(assert (=> b!158244 d!38843))

(declare-fun d!38845 () Bool)

(assert (=> d!38845 (dynLambda!973 lambda!4263 (apply!373 lt!47053 0))))

(declare-fun lt!47690 () Unit!2184)

(assert (=> d!38845 (= lt!47690 (choose!1777 (list!976 lt!47053) lambda!4263 (apply!373 lt!47053 0)))))

(declare-fun e!95501 () Bool)

(assert (=> d!38845 e!95501))

(declare-fun res!72231 () Bool)

(assert (=> d!38845 (=> (not res!72231) (not e!95501))))

(assert (=> d!38845 (= res!72231 (forall!489 (list!976 lt!47053) lambda!4263))))

(assert (=> d!38845 (= (forallContained!60 (list!976 lt!47053) lambda!4263 (apply!373 lt!47053 0)) lt!47690)))

(declare-fun b!158961 () Bool)

(assert (=> b!158961 (= e!95501 (contains!435 (list!976 lt!47053) (apply!373 lt!47053 0)))))

(assert (= (and d!38845 res!72231) b!158961))

(declare-fun b_lambda!3221 () Bool)

(assert (=> (not b_lambda!3221) (not d!38845)))

(assert (=> d!38845 m!145795))

(declare-fun m!147361 () Bool)

(assert (=> d!38845 m!147361))

(assert (=> d!38845 m!145629))

(assert (=> d!38845 m!145795))

(declare-fun m!147363 () Bool)

(assert (=> d!38845 m!147363))

(assert (=> d!38845 m!145629))

(declare-fun m!147365 () Bool)

(assert (=> d!38845 m!147365))

(assert (=> b!158961 m!145629))

(assert (=> b!158961 m!145795))

(declare-fun m!147367 () Bool)

(assert (=> b!158961 m!147367))

(assert (=> b!158244 d!38845))

(declare-fun b!159025 () Bool)

(declare-fun e!95547 () Option!265)

(declare-fun lt!47731 () Option!265)

(declare-fun lt!47734 () Option!265)

(assert (=> b!159025 (= e!95547 (ite (and ((_ is None!264) lt!47731) ((_ is None!264) lt!47734)) None!264 (ite ((_ is None!264) lt!47734) lt!47731 (ite ((_ is None!264) lt!47731) lt!47734 (ite (>= (size!2302 (_1!1537 (v!13663 lt!47731))) (size!2302 (_1!1537 (v!13663 lt!47734)))) lt!47731 lt!47734)))))))

(declare-fun call!6693 () Option!265)

(assert (=> b!159025 (= lt!47731 call!6693)))

(assert (=> b!159025 (= lt!47734 (maxPrefixZipperSequence!76 thiss!17480 (t!25604 rules!1920) (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))

(declare-fun b!159026 () Bool)

(declare-fun res!72278 () Bool)

(declare-fun e!95546 () Bool)

(assert (=> b!159026 (=> (not res!72278) (not e!95546))))

(declare-fun e!95548 () Bool)

(assert (=> b!159026 (= res!72278 e!95548)))

(declare-fun res!72275 () Bool)

(assert (=> b!159026 (=> res!72275 e!95548)))

(declare-fun lt!47737 () Option!265)

(declare-fun isDefined!120 (Option!265) Bool)

(assert (=> b!159026 (= res!72275 (not (isDefined!120 lt!47737)))))

(declare-fun d!38847 () Bool)

(assert (=> d!38847 e!95546))

(declare-fun res!72280 () Bool)

(assert (=> d!38847 (=> (not res!72280) (not e!95546))))

(declare-fun maxPrefixZipper!29 (LexerInterface!365 List!2740 List!2738) Option!264)

(assert (=> d!38847 (= res!72280 (= (isDefined!120 lt!47737) (isDefined!117 (maxPrefixZipper!29 thiss!17480 rules!1920 (list!973 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236))))))))

(assert (=> d!38847 (= lt!47737 e!95547)))

(declare-fun c!31956 () Bool)

(assert (=> d!38847 (= c!31956 (and ((_ is Cons!2730) rules!1920) ((_ is Nil!2730) (t!25604 rules!1920))))))

(declare-fun lt!47735 () Unit!2184)

(declare-fun lt!47733 () Unit!2184)

(assert (=> d!38847 (= lt!47735 lt!47733)))

(declare-fun lt!47736 () List!2738)

(declare-fun lt!47732 () List!2738)

(assert (=> d!38847 (isPrefix!217 lt!47736 lt!47732)))

(assert (=> d!38847 (= lt!47733 (lemmaIsPrefixRefl!124 lt!47736 lt!47732))))

(assert (=> d!38847 (= lt!47732 (list!973 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))

(assert (=> d!38847 (= lt!47736 (list!973 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))

(assert (=> d!38847 (rulesValidInductive!101 thiss!17480 rules!1920)))

(assert (=> d!38847 (= (maxPrefixZipperSequence!76 thiss!17480 rules!1920 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)) lt!47737)))

(declare-fun b!159027 () Bool)

(declare-fun e!95551 () Bool)

(declare-fun get!743 (Option!265) tuple2!2642)

(assert (=> b!159027 (= e!95551 (= (list!973 (_2!1537 (get!743 lt!47737))) (_2!1536 (get!741 (maxPrefix!117 thiss!17480 rules!1920 (list!973 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))))))

(declare-fun e!95550 () Bool)

(declare-fun b!159028 () Bool)

(assert (=> b!159028 (= e!95550 (= (list!973 (_2!1537 (get!743 lt!47737))) (_2!1536 (get!741 (maxPrefixZipper!29 thiss!17480 rules!1920 (list!973 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))))))

(declare-fun b!159029 () Bool)

(assert (=> b!159029 (= e!95547 call!6693)))

(declare-fun bm!6688 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!30 (LexerInterface!365 Rule!758 BalanceConc!1568) Option!265)

(assert (=> bm!6688 (= call!6693 (maxPrefixOneRuleZipperSequence!30 thiss!17480 (h!8127 rules!1920) (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))

(declare-fun b!159030 () Bool)

(declare-fun e!95549 () Bool)

(assert (=> b!159030 (= e!95546 e!95549)))

(declare-fun res!72279 () Bool)

(assert (=> b!159030 (=> res!72279 e!95549)))

(assert (=> b!159030 (= res!72279 (not (isDefined!120 lt!47737)))))

(declare-fun b!159031 () Bool)

(assert (=> b!159031 (= e!95548 e!95550)))

(declare-fun res!72277 () Bool)

(assert (=> b!159031 (=> (not res!72277) (not e!95550))))

(assert (=> b!159031 (= res!72277 (= (_1!1537 (get!743 lt!47737)) (_1!1536 (get!741 (maxPrefixZipper!29 thiss!17480 rules!1920 (list!973 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))))))

(declare-fun b!159032 () Bool)

(assert (=> b!159032 (= e!95549 e!95551)))

(declare-fun res!72276 () Bool)

(assert (=> b!159032 (=> (not res!72276) (not e!95551))))

(assert (=> b!159032 (= res!72276 (= (_1!1537 (get!743 lt!47737)) (_1!1536 (get!741 (maxPrefix!117 thiss!17480 rules!1920 (list!973 (++!602 (charsOf!134 (apply!373 lt!47053 0)) lt!47236)))))))))

(assert (= (and d!38847 c!31956) b!159029))

(assert (= (and d!38847 (not c!31956)) b!159025))

(assert (= (or b!159029 b!159025) bm!6688))

(assert (= (and d!38847 res!72280) b!159026))

(assert (= (and b!159026 (not res!72275)) b!159031))

(assert (= (and b!159031 res!72277) b!159028))

(assert (= (and b!159026 res!72278) b!159030))

(assert (= (and b!159030 (not res!72279)) b!159032))

(assert (= (and b!159032 res!72276) b!159027))

(assert (=> b!159025 m!145801))

(declare-fun m!147443 () Bool)

(assert (=> b!159025 m!147443))

(declare-fun m!147445 () Bool)

(assert (=> b!159032 m!147445))

(assert (=> b!159032 m!145801))

(declare-fun m!147447 () Bool)

(assert (=> b!159032 m!147447))

(assert (=> b!159032 m!147447))

(declare-fun m!147449 () Bool)

(assert (=> b!159032 m!147449))

(assert (=> b!159032 m!147449))

(declare-fun m!147451 () Bool)

(assert (=> b!159032 m!147451))

(assert (=> b!159031 m!147445))

(assert (=> b!159031 m!145801))

(assert (=> b!159031 m!147447))

(assert (=> b!159031 m!147447))

(declare-fun m!147453 () Bool)

(assert (=> b!159031 m!147453))

(assert (=> b!159031 m!147453))

(declare-fun m!147455 () Bool)

(assert (=> b!159031 m!147455))

(declare-fun m!147457 () Bool)

(assert (=> b!159030 m!147457))

(assert (=> bm!6688 m!145801))

(declare-fun m!147461 () Bool)

(assert (=> bm!6688 m!147461))

(assert (=> b!159027 m!147447))

(assert (=> b!159027 m!147449))

(assert (=> b!159027 m!145801))

(assert (=> b!159027 m!147447))

(declare-fun m!147465 () Bool)

(assert (=> b!159027 m!147465))

(assert (=> b!159027 m!147445))

(assert (=> b!159027 m!147449))

(assert (=> b!159027 m!147451))

(assert (=> b!159028 m!145801))

(assert (=> b!159028 m!147447))

(assert (=> b!159028 m!147465))

(assert (=> b!159028 m!147447))

(assert (=> b!159028 m!147453))

(assert (=> b!159028 m!147453))

(assert (=> b!159028 m!147455))

(assert (=> b!159028 m!147445))

(assert (=> b!159026 m!147457))

(assert (=> d!38847 m!145801))

(assert (=> d!38847 m!147447))

(assert (=> d!38847 m!147457))

(assert (=> d!38847 m!146445))

(declare-fun m!147471 () Bool)

(assert (=> d!38847 m!147471))

(assert (=> d!38847 m!147447))

(assert (=> d!38847 m!147453))

(assert (=> d!38847 m!147453))

(declare-fun m!147473 () Bool)

(assert (=> d!38847 m!147473))

(declare-fun m!147477 () Bool)

(assert (=> d!38847 m!147477))

(assert (=> b!158244 d!38847))

(declare-fun d!38871 () Bool)

(declare-fun lt!47744 () Token!702)

(assert (=> d!38871 (contains!435 lt!47232 lt!47744)))

(declare-fun e!95567 () Token!702)

(assert (=> d!38871 (= lt!47744 e!95567)))

(declare-fun c!31962 () Bool)

(assert (=> d!38871 (= c!31962 (= 0 0))))

(declare-fun e!95566 () Bool)

(assert (=> d!38871 e!95566))

(declare-fun res!72290 () Bool)

(assert (=> d!38871 (=> (not res!72290) (not e!95566))))

(assert (=> d!38871 (= res!72290 (<= 0 0))))

(assert (=> d!38871 (= (apply!374 lt!47232 0) lt!47744)))

(declare-fun b!159053 () Bool)

(assert (=> b!159053 (= e!95566 (< 0 (size!2308 lt!47232)))))

(declare-fun b!159054 () Bool)

(assert (=> b!159054 (= e!95567 (head!590 lt!47232))))

(declare-fun b!159055 () Bool)

(assert (=> b!159055 (= e!95567 (apply!374 (tail!330 lt!47232) (- 0 1)))))

(assert (= (and d!38871 res!72290) b!159053))

(assert (= (and d!38871 c!31962) b!159054))

(assert (= (and d!38871 (not c!31962)) b!159055))

(declare-fun m!147485 () Bool)

(assert (=> d!38871 m!147485))

(assert (=> b!159053 m!147177))

(declare-fun m!147487 () Bool)

(assert (=> b!159054 m!147487))

(declare-fun m!147489 () Bool)

(assert (=> b!159055 m!147489))

(assert (=> b!159055 m!147489))

(declare-fun m!147491 () Bool)

(assert (=> b!159055 m!147491))

(assert (=> b!158244 d!38871))

(declare-fun d!38875 () Bool)

(declare-fun lt!47748 () Token!702)

(assert (=> d!38875 (= lt!47748 (apply!374 (list!976 lt!47053) 0))))

(declare-fun apply!378 (Conc!781 Int) Token!702)

(assert (=> d!38875 (= lt!47748 (apply!378 (c!31677 lt!47053) 0))))

(declare-fun e!95575 () Bool)

(assert (=> d!38875 e!95575))

(declare-fun res!72295 () Bool)

(assert (=> d!38875 (=> (not res!72295) (not e!95575))))

(assert (=> d!38875 (= res!72295 (<= 0 0))))

(assert (=> d!38875 (= (apply!373 lt!47053 0) lt!47748)))

(declare-fun b!159068 () Bool)

(assert (=> b!159068 (= e!95575 (< 0 (size!2303 lt!47053)))))

(assert (= (and d!38875 res!72295) b!159068))

(assert (=> d!38875 m!145629))

(assert (=> d!38875 m!145629))

(declare-fun m!147519 () Bool)

(assert (=> d!38875 m!147519))

(declare-fun m!147521 () Bool)

(assert (=> d!38875 m!147521))

(assert (=> b!159068 m!145789))

(assert (=> b!158244 d!38875))

(declare-fun b!159071 () Bool)

(declare-fun e!95579 () List!2739)

(assert (=> b!159071 (= e!95579 lt!47229)))

(declare-fun b!159072 () Bool)

(declare-fun e!95580 () Int)

(declare-fun call!6695 () Int)

(assert (=> b!159072 (= e!95580 (- call!6695 0))))

(declare-fun b!159073 () Bool)

(declare-fun e!95581 () List!2739)

(assert (=> b!159073 (= e!95581 e!95579)))

(declare-fun c!31970 () Bool)

(assert (=> b!159073 (= c!31970 (<= 0 0))))

(declare-fun b!159074 () Bool)

(assert (=> b!159074 (= e!95579 (drop!129 (t!25603 lt!47229) (- 0 1)))))

(declare-fun b!159075 () Bool)

(assert (=> b!159075 (= e!95580 0)))

(declare-fun b!159076 () Bool)

(assert (=> b!159076 (= e!95581 Nil!2729)))

(declare-fun b!159077 () Bool)

(declare-fun e!95578 () Bool)

(declare-fun lt!47749 () List!2739)

(declare-fun e!95577 () Int)

(assert (=> b!159077 (= e!95578 (= (size!2308 lt!47749) e!95577))))

(declare-fun c!31967 () Bool)

(assert (=> b!159077 (= c!31967 (<= 0 0))))

(declare-fun bm!6690 () Bool)

(assert (=> bm!6690 (= call!6695 (size!2308 lt!47229))))

(declare-fun d!38897 () Bool)

(assert (=> d!38897 e!95578))

(declare-fun res!72296 () Bool)

(assert (=> d!38897 (=> (not res!72296) (not e!95578))))

(assert (=> d!38897 (= res!72296 (= ((_ map implies) (content!381 lt!47749) (content!381 lt!47229)) ((as const (InoxSet Token!702)) true)))))

(assert (=> d!38897 (= lt!47749 e!95581)))

(declare-fun c!31969 () Bool)

(assert (=> d!38897 (= c!31969 ((_ is Nil!2729) lt!47229))))

(assert (=> d!38897 (= (drop!129 lt!47229 0) lt!47749)))

(declare-fun b!159078 () Bool)

(assert (=> b!159078 (= e!95577 call!6695)))

(declare-fun b!159079 () Bool)

(assert (=> b!159079 (= e!95577 e!95580)))

(declare-fun c!31968 () Bool)

(assert (=> b!159079 (= c!31968 (>= 0 call!6695))))

(assert (= (and d!38897 c!31969) b!159076))

(assert (= (and d!38897 (not c!31969)) b!159073))

(assert (= (and b!159073 c!31970) b!159071))

(assert (= (and b!159073 (not c!31970)) b!159074))

(assert (= (and d!38897 res!72296) b!159077))

(assert (= (and b!159077 c!31967) b!159078))

(assert (= (and b!159077 (not c!31967)) b!159079))

(assert (= (and b!159079 c!31968) b!159075))

(assert (= (and b!159079 (not c!31968)) b!159072))

(assert (= (or b!159078 b!159079 b!159072) bm!6690))

(declare-fun m!147527 () Bool)

(assert (=> b!159074 m!147527))

(declare-fun m!147529 () Bool)

(assert (=> b!159077 m!147529))

(assert (=> bm!6690 m!147207))

(declare-fun m!147531 () Bool)

(assert (=> d!38897 m!147531))

(assert (=> d!38897 m!147211))

(assert (=> b!158244 d!38897))

(assert (=> b!158244 d!38715))

(declare-fun d!38901 () Bool)

(assert (=> d!38901 (= (tail!330 (drop!129 lt!47229 0)) (drop!129 lt!47229 (+ 0 1)))))

(declare-fun lt!47753 () Unit!2184)

(declare-fun choose!1783 (List!2739 Int) Unit!2184)

(assert (=> d!38901 (= lt!47753 (choose!1783 lt!47229 0))))

(declare-fun e!95587 () Bool)

(assert (=> d!38901 e!95587))

(declare-fun res!72303 () Bool)

(assert (=> d!38901 (=> (not res!72303) (not e!95587))))

(assert (=> d!38901 (= res!72303 (>= 0 0))))

(assert (=> d!38901 (= (lemmaDropTail!108 lt!47229 0) lt!47753)))

(declare-fun b!159090 () Bool)

(assert (=> b!159090 (= e!95587 (< 0 (size!2308 lt!47229)))))

(assert (= (and d!38901 res!72303) b!159090))

(assert (=> d!38901 m!145809))

(assert (=> d!38901 m!145809))

(assert (=> d!38901 m!145811))

(assert (=> d!38901 m!145793))

(declare-fun m!147565 () Bool)

(assert (=> d!38901 m!147565))

(assert (=> b!159090 m!147207))

(assert (=> b!158244 d!38901))

(declare-fun d!38911 () Bool)

(declare-fun lt!47754 () BalanceConc!1568)

(assert (=> d!38911 (= (list!973 lt!47754) (originalCharacters!522 (apply!373 lt!47053 0)))))

(assert (=> d!38911 (= lt!47754 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0)))) (value!17967 (apply!373 lt!47053 0))))))

(assert (=> d!38911 (= (charsOf!134 (apply!373 lt!47053 0)) lt!47754)))

(declare-fun b_lambda!3227 () Bool)

(assert (=> (not b_lambda!3227) (not d!38911)))

(declare-fun tb!5719 () Bool)

(declare-fun t!25729 () Bool)

(assert (=> (and b!157830 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0))))) t!25729) tb!5719))

(declare-fun b!159095 () Bool)

(declare-fun e!95592 () Bool)

(declare-fun tp!81019 () Bool)

(assert (=> b!159095 (= e!95592 (and (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0)))) (value!17967 (apply!373 lt!47053 0))))) tp!81019))))

(declare-fun result!8286 () Bool)

(assert (=> tb!5719 (= result!8286 (and (inv!3542 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0)))) (value!17967 (apply!373 lt!47053 0)))) e!95592))))

(assert (= tb!5719 b!159095))

(declare-fun m!147567 () Bool)

(assert (=> b!159095 m!147567))

(declare-fun m!147569 () Bool)

(assert (=> tb!5719 m!147569))

(assert (=> d!38911 t!25729))

(declare-fun b_and!9719 () Bool)

(assert (= b_and!9689 (and (=> t!25729 result!8286) b_and!9719)))

(declare-fun tb!5721 () Bool)

(declare-fun t!25731 () Bool)

(assert (=> (and b!157823 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0))))) t!25731) tb!5721))

(declare-fun result!8288 () Bool)

(assert (= result!8288 result!8286))

(assert (=> d!38911 t!25731))

(declare-fun b_and!9721 () Bool)

(assert (= b_and!9695 (and (=> t!25731 result!8288) b_and!9721)))

(declare-fun t!25733 () Bool)

(declare-fun tb!5723 () Bool)

(assert (=> (and b!158321 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0))))) t!25733) tb!5723))

(declare-fun result!8290 () Bool)

(assert (= result!8290 result!8286))

(assert (=> d!38911 t!25733))

(declare-fun b_and!9723 () Bool)

(assert (= b_and!9691 (and (=> t!25733 result!8290) b_and!9723)))

(declare-fun t!25735 () Bool)

(declare-fun tb!5725 () Bool)

(assert (=> (and b!157844 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0))))) t!25735) tb!5725))

(declare-fun result!8292 () Bool)

(assert (= result!8292 result!8286))

(assert (=> d!38911 t!25735))

(declare-fun b_and!9725 () Bool)

(assert (= b_and!9693 (and (=> t!25735 result!8292) b_and!9725)))

(declare-fun tb!5727 () Bool)

(declare-fun t!25737 () Bool)

(assert (=> (and b!158310 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0))))) t!25737) tb!5727))

(declare-fun result!8294 () Bool)

(assert (= result!8294 result!8286))

(assert (=> d!38911 t!25737))

(declare-fun b_and!9727 () Bool)

(assert (= b_and!9697 (and (=> t!25737 result!8294) b_and!9727)))

(declare-fun m!147575 () Bool)

(assert (=> d!38911 m!147575))

(declare-fun m!147577 () Bool)

(assert (=> d!38911 m!147577))

(assert (=> b!158244 d!38911))

(declare-fun d!38917 () Bool)

(declare-fun lt!47755 () Int)

(assert (=> d!38917 (>= lt!47755 0)))

(declare-fun e!95596 () Int)

(assert (=> d!38917 (= lt!47755 e!95596)))

(declare-fun c!31973 () Bool)

(assert (=> d!38917 (= c!31973 ((_ is Nil!2728) lt!47080))))

(assert (=> d!38917 (= (size!2305 lt!47080) lt!47755)))

(declare-fun b!159099 () Bool)

(assert (=> b!159099 (= e!95596 0)))

(declare-fun b!159100 () Bool)

(assert (=> b!159100 (= e!95596 (+ 1 (size!2305 (t!25602 lt!47080))))))

(assert (= (and d!38917 c!31973) b!159099))

(assert (= (and d!38917 (not c!31973)) b!159100))

(declare-fun m!147583 () Bool)

(assert (=> b!159100 m!147583))

(assert (=> b!157959 d!38917))

(assert (=> b!157959 d!38605))

(assert (=> b!157959 d!38759))

(declare-fun d!38921 () Bool)

(declare-fun lt!47757 () Int)

(assert (=> d!38921 (>= lt!47757 0)))

(declare-fun e!95599 () Int)

(assert (=> d!38921 (= lt!47757 e!95599)))

(declare-fun c!31975 () Bool)

(assert (=> d!38921 (= c!31975 ((_ is Nil!2728) (originalCharacters!522 separatorToken!170)))))

(assert (=> d!38921 (= (size!2305 (originalCharacters!522 separatorToken!170)) lt!47757)))

(declare-fun b!159105 () Bool)

(assert (=> b!159105 (= e!95599 0)))

(declare-fun b!159106 () Bool)

(assert (=> b!159106 (= e!95599 (+ 1 (size!2305 (t!25602 (originalCharacters!522 separatorToken!170)))))))

(assert (= (and d!38921 c!31975) b!159105))

(assert (= (and d!38921 (not c!31975)) b!159106))

(declare-fun m!147587 () Bool)

(assert (=> b!159106 m!147587))

(assert (=> b!157883 d!38921))

(declare-fun d!38923 () Bool)

(assert (=> d!38923 (= (list!973 call!6603) (list!977 (c!31675 call!6603)))))

(declare-fun bs!14897 () Bool)

(assert (= bs!14897 d!38923))

(declare-fun m!147597 () Bool)

(assert (=> bs!14897 m!147597))

(assert (=> b!158034 d!38923))

(declare-fun bs!14899 () Bool)

(declare-fun d!38927 () Bool)

(assert (= bs!14899 (and d!38927 d!38527)))

(declare-fun lambda!4301 () Int)

(assert (=> bs!14899 (= (= (toValue!1126 (transformation!479 (h!8127 rules!1920))) (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465))))) (= lambda!4301 lambda!4270))))

(declare-fun bs!14900 () Bool)

(assert (= bs!14900 (and d!38927 d!38721)))

(assert (=> bs!14900 (= (= (toValue!1126 (transformation!479 (h!8127 rules!1920))) (toValue!1126 (transformation!479 (rule!986 separatorToken!170)))) (= lambda!4301 lambda!4286))))

(assert (=> d!38927 true))

(assert (=> d!38927 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!979 order!1393 lambda!4301))))

(assert (=> d!38927 (= (equivClasses!150 (toChars!985 (transformation!479 (h!8127 rules!1920))) (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (Forall2!103 lambda!4301))))

(declare-fun bs!14902 () Bool)

(assert (= bs!14902 d!38927))

(declare-fun m!147601 () Bool)

(assert (=> bs!14902 m!147601))

(assert (=> b!157924 d!38927))

(assert (=> d!38441 d!38715))

(declare-fun d!38933 () Bool)

(assert (=> d!38933 (= (list!973 lt!47223) (list!977 (c!31675 lt!47223)))))

(declare-fun bs!14904 () Bool)

(assert (= bs!14904 d!38933))

(declare-fun m!147605 () Bool)

(assert (=> bs!14904 m!147605))

(assert (=> d!38441 d!38933))

(assert (=> d!38441 d!38503))

(declare-fun bs!14905 () Bool)

(declare-fun b!159120 () Bool)

(assert (= bs!14905 (and b!159120 b!158261)))

(declare-fun lambda!4302 () Int)

(assert (=> bs!14905 (= lambda!4302 lambda!4264)))

(declare-fun bs!14906 () Bool)

(assert (= bs!14906 (and b!159120 d!38441)))

(assert (=> bs!14906 (not (= lambda!4302 lambda!4262))))

(declare-fun bs!14907 () Bool)

(assert (= bs!14907 (and b!159120 b!158244)))

(assert (=> bs!14907 (= lambda!4302 lambda!4263)))

(declare-fun bs!14908 () Bool)

(assert (= bs!14908 (and b!159120 d!38843)))

(assert (=> bs!14908 (not (= lambda!4302 lambda!4295))))

(declare-fun bs!14909 () Bool)

(assert (= bs!14909 (and b!159120 d!38713)))

(assert (=> bs!14909 (= lambda!4302 lambda!4285)))

(declare-fun bs!14910 () Bool)

(assert (= bs!14910 (and b!159120 b!158953)))

(assert (=> bs!14910 (= lambda!4302 lambda!4296)))

(declare-fun bs!14911 () Bool)

(assert (= bs!14911 (and b!159120 d!38529)))

(assert (=> bs!14911 (= lambda!4302 lambda!4273)))

(declare-fun bs!14912 () Bool)

(assert (= bs!14912 (and b!159120 d!38433)))

(assert (=> bs!14912 (= lambda!4302 lambda!4255)))

(declare-fun bs!14913 () Bool)

(assert (= bs!14913 (and b!159120 b!158772)))

(assert (=> bs!14913 (= lambda!4302 lambda!4287)))

(declare-fun bs!14914 () Bool)

(assert (= bs!14914 (and b!159120 b!157824)))

(assert (=> bs!14914 (not (= lambda!4302 lambda!4232))))

(declare-fun bs!14915 () Bool)

(assert (= bs!14915 (and b!159120 b!158036)))

(assert (=> bs!14915 (= lambda!4302 lambda!4246)))

(declare-fun bs!14916 () Bool)

(assert (= bs!14916 (and b!159120 d!38423)))

(assert (=> bs!14916 (= lambda!4302 lambda!4253)))

(declare-fun b!159125 () Bool)

(declare-fun e!95610 () Bool)

(assert (=> b!159125 (= e!95610 true)))

(declare-fun b!159124 () Bool)

(declare-fun e!95609 () Bool)

(assert (=> b!159124 (= e!95609 e!95610)))

(declare-fun b!159123 () Bool)

(declare-fun e!95608 () Bool)

(assert (=> b!159123 (= e!95608 e!95609)))

(assert (=> b!159120 e!95608))

(assert (= b!159124 b!159125))

(assert (= b!159123 b!159124))

(assert (= (and b!159120 ((_ is Cons!2730) rules!1920)) b!159123))

(assert (=> b!159125 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4302))))

(assert (=> b!159125 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 rules!1920)))) (dynLambda!976 order!1387 lambda!4302))))

(assert (=> b!159120 true))

(declare-fun b!159111 () Bool)

(declare-fun c!31978 () Bool)

(declare-fun lt!47762 () Option!264)

(assert (=> b!159111 (= c!31978 (and ((_ is Some!263) lt!47762) (not (= (_1!1536 (v!13662 lt!47762)) (h!8126 (dropList!76 lt!47053 0))))))))

(declare-fun e!95604 () List!2738)

(declare-fun e!95603 () List!2738)

(assert (=> b!159111 (= e!95604 e!95603)))

(declare-fun d!38935 () Bool)

(declare-fun c!31977 () Bool)

(assert (=> d!38935 (= c!31977 ((_ is Cons!2729) (dropList!76 lt!47053 0)))))

(declare-fun e!95605 () List!2738)

(assert (=> d!38935 (= (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (dropList!76 lt!47053 0) separatorToken!170) e!95605)))

(declare-fun b!159112 () Bool)

(declare-fun call!6696 () List!2738)

(assert (=> b!159112 (= e!95604 call!6696)))

(declare-fun bm!6691 () Bool)

(declare-fun c!31981 () Bool)

(declare-fun c!31979 () Bool)

(assert (=> bm!6691 (= c!31981 c!31979)))

(declare-fun call!6698 () List!2738)

(declare-fun e!95602 () List!2738)

(declare-fun lt!47761 () List!2738)

(assert (=> bm!6691 (= call!6696 (++!600 e!95602 (ite c!31979 lt!47761 call!6698)))))

(declare-fun b!159113 () Bool)

(assert (=> b!159113 (= e!95603 (++!600 call!6696 lt!47761))))

(declare-fun bm!6692 () Bool)

(declare-fun call!6697 () BalanceConc!1568)

(declare-fun call!6699 () BalanceConc!1568)

(assert (=> bm!6692 (= call!6697 call!6699)))

(declare-fun b!159114 () Bool)

(assert (=> b!159114 (= e!95603 Nil!2728)))

(assert (=> b!159114 (= (print!102 thiss!17480 (singletonSeq!35 (h!8126 (dropList!76 lt!47053 0)))) (printTailRec!65 thiss!17480 (singletonSeq!35 (h!8126 (dropList!76 lt!47053 0))) 0 (BalanceConc!1569 Empty!780)))))

(declare-fun lt!47764 () Unit!2184)

(declare-fun Unit!2216 () Unit!2184)

(assert (=> b!159114 (= lt!47764 Unit!2216)))

(declare-fun lt!47760 () Unit!2184)

(assert (=> b!159114 (= lt!47760 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!24 thiss!17480 rules!1920 call!6698 lt!47761))))

(assert (=> b!159114 false))

(declare-fun lt!47763 () Unit!2184)

(declare-fun Unit!2217 () Unit!2184)

(assert (=> b!159114 (= lt!47763 Unit!2217)))

(declare-fun bm!6693 () Bool)

(declare-fun call!6700 () List!2738)

(assert (=> bm!6693 (= call!6698 call!6700)))

(declare-fun c!31980 () Bool)

(assert (=> bm!6693 (= c!31980 c!31978)))

(declare-fun e!95606 () BalanceConc!1568)

(declare-fun bm!6694 () Bool)

(assert (=> bm!6694 (= call!6700 (list!973 (ite c!31979 call!6699 e!95606)))))

(declare-fun bm!6695 () Bool)

(assert (=> bm!6695 (= call!6699 (charsOf!134 (h!8126 (dropList!76 lt!47053 0))))))

(declare-fun b!159115 () Bool)

(assert (=> b!159115 (= e!95602 call!6700)))

(declare-fun b!159116 () Bool)

(assert (=> b!159116 (= e!95605 Nil!2728)))

(declare-fun b!159117 () Bool)

(assert (=> b!159117 (= e!95606 call!6697)))

(declare-fun b!159118 () Bool)

(assert (=> b!159118 (= e!95602 (list!973 call!6697))))

(declare-fun b!159119 () Bool)

(assert (=> b!159119 (= e!95606 (charsOf!134 separatorToken!170))))

(assert (=> b!159120 (= e!95605 e!95604)))

(declare-fun lt!47759 () Unit!2184)

(assert (=> b!159120 (= lt!47759 (forallContained!60 (dropList!76 lt!47053 0) lambda!4302 (h!8126 (dropList!76 lt!47053 0))))))

(assert (=> b!159120 (= lt!47761 (printWithSeparatorTokenWhenNeededList!58 thiss!17480 rules!1920 (t!25603 (dropList!76 lt!47053 0)) separatorToken!170))))

(assert (=> b!159120 (= lt!47762 (maxPrefix!117 thiss!17480 rules!1920 (++!600 (list!973 (charsOf!134 (h!8126 (dropList!76 lt!47053 0)))) lt!47761)))))

(assert (=> b!159120 (= c!31979 (and ((_ is Some!263) lt!47762) (= (_1!1536 (v!13662 lt!47762)) (h!8126 (dropList!76 lt!47053 0)))))))

(assert (= (and d!38935 c!31977) b!159120))

(assert (= (and d!38935 (not c!31977)) b!159116))

(assert (= (and b!159120 c!31979) b!159112))

(assert (= (and b!159120 (not c!31979)) b!159111))

(assert (= (and b!159111 c!31978) b!159113))

(assert (= (and b!159111 (not c!31978)) b!159114))

(assert (= (or b!159113 b!159114) bm!6692))

(assert (= (or b!159113 b!159114) bm!6693))

(assert (= (and bm!6693 c!31980) b!159119))

(assert (= (and bm!6693 (not c!31980)) b!159117))

(assert (= (or b!159112 bm!6692) bm!6695))

(assert (= (or b!159112 bm!6693) bm!6694))

(assert (= (or b!159112 b!159113) bm!6691))

(assert (= (and bm!6691 c!31981) b!159115))

(assert (= (and bm!6691 (not c!31981)) b!159118))

(declare-fun m!147641 () Bool)

(assert (=> b!159114 m!147641))

(assert (=> b!159114 m!147641))

(declare-fun m!147643 () Bool)

(assert (=> b!159114 m!147643))

(assert (=> b!159114 m!147641))

(declare-fun m!147645 () Bool)

(assert (=> b!159114 m!147645))

(declare-fun m!147647 () Bool)

(assert (=> b!159114 m!147647))

(declare-fun m!147649 () Bool)

(assert (=> b!159118 m!147649))

(declare-fun m!147651 () Bool)

(assert (=> bm!6695 m!147651))

(declare-fun m!147653 () Bool)

(assert (=> bm!6691 m!147653))

(assert (=> b!159120 m!147651))

(declare-fun m!147655 () Bool)

(assert (=> b!159120 m!147655))

(declare-fun m!147657 () Bool)

(assert (=> b!159120 m!147657))

(assert (=> b!159120 m!145783))

(declare-fun m!147659 () Bool)

(assert (=> b!159120 m!147659))

(declare-fun m!147661 () Bool)

(assert (=> b!159120 m!147661))

(declare-fun m!147663 () Bool)

(assert (=> b!159120 m!147663))

(assert (=> b!159120 m!147655))

(assert (=> b!159120 m!147651))

(assert (=> b!159120 m!147663))

(declare-fun m!147665 () Bool)

(assert (=> b!159113 m!147665))

(declare-fun m!147667 () Bool)

(assert (=> bm!6694 m!147667))

(assert (=> b!159119 m!145281))

(assert (=> d!38441 d!38935))

(declare-fun d!38949 () Bool)

(assert (=> d!38949 (forall!489 (dropList!76 lt!47053 0) lambda!4262)))

(declare-fun lt!47779 () Unit!2184)

(declare-fun choose!1784 (List!2739 List!2739 Int) Unit!2184)

(assert (=> d!38949 (= lt!47779 (choose!1784 (list!976 lt!47053) (dropList!76 lt!47053 0) lambda!4262))))

(assert (=> d!38949 (forall!489 (list!976 lt!47053) lambda!4262)))

(assert (=> d!38949 (= (lemmaContentSubsetPreservesForall!20 (list!976 lt!47053) (dropList!76 lt!47053 0) lambda!4262) lt!47779)))

(declare-fun bs!14923 () Bool)

(assert (= bs!14923 d!38949))

(assert (=> bs!14923 m!145783))

(declare-fun m!147685 () Bool)

(assert (=> bs!14923 m!147685))

(assert (=> bs!14923 m!145629))

(assert (=> bs!14923 m!145783))

(declare-fun m!147687 () Bool)

(assert (=> bs!14923 m!147687))

(assert (=> bs!14923 m!145629))

(declare-fun m!147689 () Bool)

(assert (=> bs!14923 m!147689))

(assert (=> d!38441 d!38949))

(declare-fun d!38959 () Bool)

(assert (=> d!38959 (= (dropList!76 lt!47053 0) (drop!129 (list!978 (c!31677 lt!47053)) 0))))

(declare-fun bs!14924 () Bool)

(assert (= bs!14924 d!38959))

(assert (=> bs!14924 m!146743))

(assert (=> bs!14924 m!146743))

(declare-fun m!147723 () Bool)

(assert (=> bs!14924 m!147723))

(assert (=> d!38441 d!38959))

(declare-fun d!38963 () Bool)

(assert (=> d!38963 (= (inv!3534 (tag!657 (rule!986 (h!8126 (t!25603 tokens!465))))) (= (mod (str.len (value!17966 (tag!657 (rule!986 (h!8126 (t!25603 tokens!465)))))) 2) 0))))

(assert (=> b!158309 d!38963))

(declare-fun d!38965 () Bool)

(declare-fun res!72321 () Bool)

(declare-fun e!95619 () Bool)

(assert (=> d!38965 (=> (not res!72321) (not e!95619))))

(assert (=> d!38965 (= res!72321 (semiInverseModEq!167 (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toValue!1126 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))))))

(assert (=> d!38965 (= (inv!3538 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) e!95619)))

(declare-fun b!159139 () Bool)

(assert (=> b!159139 (= e!95619 (equivClasses!150 (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toValue!1126 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))))))

(assert (= (and d!38965 res!72321) b!159139))

(declare-fun m!147725 () Bool)

(assert (=> d!38965 m!147725))

(declare-fun m!147727 () Bool)

(assert (=> b!159139 m!147727))

(assert (=> b!158309 d!38965))

(declare-fun d!38967 () Bool)

(declare-fun res!72322 () Bool)

(declare-fun e!95620 () Bool)

(assert (=> d!38967 (=> res!72322 e!95620)))

(assert (=> d!38967 (= res!72322 (not ((_ is Cons!2730) (t!25604 rules!1920))))))

(assert (=> d!38967 (= (sepAndNonSepRulesDisjointChars!68 rules!1920 (t!25604 rules!1920)) e!95620)))

(declare-fun b!159140 () Bool)

(declare-fun e!95621 () Bool)

(assert (=> b!159140 (= e!95620 e!95621)))

(declare-fun res!72323 () Bool)

(assert (=> b!159140 (=> (not res!72323) (not e!95621))))

(assert (=> b!159140 (= res!72323 (ruleDisjointCharsFromAllFromOtherType!26 (h!8127 (t!25604 rules!1920)) rules!1920))))

(declare-fun b!159141 () Bool)

(assert (=> b!159141 (= e!95621 (sepAndNonSepRulesDisjointChars!68 rules!1920 (t!25604 (t!25604 rules!1920))))))

(assert (= (and d!38967 (not res!72322)) b!159140))

(assert (= (and b!159140 res!72323) b!159141))

(declare-fun m!147729 () Bool)

(assert (=> b!159140 m!147729))

(declare-fun m!147731 () Bool)

(assert (=> b!159141 m!147731))

(assert (=> b!158088 d!38967))

(declare-fun d!38969 () Bool)

(assert (=> d!38969 (= (list!973 lt!47146) (list!977 (c!31675 lt!47146)))))

(declare-fun bs!14925 () Bool)

(assert (= bs!14925 d!38969))

(declare-fun m!147733 () Bool)

(assert (=> bs!14925 m!147733))

(assert (=> d!38419 d!38969))

(declare-fun d!38971 () Bool)

(declare-fun res!72324 () Bool)

(declare-fun e!95622 () Bool)

(assert (=> d!38971 (=> (not res!72324) (not e!95622))))

(assert (=> d!38971 (= res!72324 (not (isEmpty!1097 (originalCharacters!522 (h!8126 (t!25603 tokens!465))))))))

(assert (=> d!38971 (= (inv!3537 (h!8126 (t!25603 tokens!465))) e!95622)))

(declare-fun b!159142 () Bool)

(declare-fun res!72325 () Bool)

(assert (=> b!159142 (=> (not res!72325) (not e!95622))))

(assert (=> b!159142 (= res!72325 (= (originalCharacters!522 (h!8126 (t!25603 tokens!465))) (list!973 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (value!17967 (h!8126 (t!25603 tokens!465)))))))))

(declare-fun b!159143 () Bool)

(assert (=> b!159143 (= e!95622 (= (size!2302 (h!8126 (t!25603 tokens!465))) (size!2305 (originalCharacters!522 (h!8126 (t!25603 tokens!465))))))))

(assert (= (and d!38971 res!72324) b!159142))

(assert (= (and b!159142 res!72325) b!159143))

(declare-fun b_lambda!3233 () Bool)

(assert (=> (not b_lambda!3233) (not b!159142)))

(assert (=> b!159142 t!25703))

(declare-fun b_and!9749 () Bool)

(assert (= b_and!9725 (and (=> t!25703 result!8260) b_and!9749)))

(assert (=> b!159142 t!25707))

(declare-fun b_and!9751 () Bool)

(assert (= b_and!9727 (and (=> t!25707 result!8264) b_and!9751)))

(assert (=> b!159142 t!25699))

(declare-fun b_and!9753 () Bool)

(assert (= b_and!9719 (and (=> t!25699 result!8256) b_and!9753)))

(assert (=> b!159142 t!25701))

(declare-fun b_and!9755 () Bool)

(assert (= b_and!9723 (and (=> t!25701 result!8258) b_and!9755)))

(assert (=> b!159142 t!25705))

(declare-fun b_and!9757 () Bool)

(assert (= b_and!9721 (and (=> t!25705 result!8262) b_and!9757)))

(declare-fun m!147771 () Bool)

(assert (=> d!38971 m!147771))

(assert (=> b!159142 m!147095))

(assert (=> b!159142 m!147095))

(declare-fun m!147777 () Bool)

(assert (=> b!159142 m!147777))

(declare-fun m!147781 () Bool)

(assert (=> b!159143 m!147781))

(assert (=> b!158307 d!38971))

(declare-fun d!38973 () Bool)

(assert (=> d!38973 (= (inv!15 (value!17967 (h!8126 tokens!465))) (= (charsToBigInt!0 (text!3956 (value!17967 (h!8126 tokens!465))) 0) (value!17962 (value!17967 (h!8126 tokens!465)))))))

(declare-fun bs!14926 () Bool)

(assert (= bs!14926 d!38973))

(declare-fun m!147785 () Bool)

(assert (=> bs!14926 m!147785))

(assert (=> b!158268 d!38973))

(declare-fun d!38975 () Bool)

(assert (=> d!38975 (= (list!973 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))) (list!977 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))))))

(declare-fun bs!14927 () Bool)

(assert (= bs!14927 d!38975))

(declare-fun m!147795 () Bool)

(assert (=> bs!14927 m!147795))

(assert (=> b!158081 d!38975))

(declare-fun d!38977 () Bool)

(declare-fun lt!47797 () BalanceConc!1568)

(assert (=> d!38977 (= (list!973 lt!47797) (originalCharacters!522 call!6641))))

(assert (=> d!38977 (= lt!47797 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 call!6641))) (value!17967 call!6641)))))

(assert (=> d!38977 (= (charsOf!134 call!6641) lt!47797)))

(declare-fun b_lambda!3235 () Bool)

(assert (=> (not b_lambda!3235) (not d!38977)))

(declare-fun t!25749 () Bool)

(declare-fun tb!5739 () Bool)

(assert (=> (and b!158321 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 call!6641)))) t!25749) tb!5739))

(declare-fun b!159148 () Bool)

(declare-fun e!95625 () Bool)

(declare-fun tp!81021 () Bool)

(assert (=> b!159148 (= e!95625 (and (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 call!6641))) (value!17967 call!6641)))) tp!81021))))

(declare-fun result!8306 () Bool)

(assert (=> tb!5739 (= result!8306 (and (inv!3542 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 call!6641))) (value!17967 call!6641))) e!95625))))

(assert (= tb!5739 b!159148))

(declare-fun m!147805 () Bool)

(assert (=> b!159148 m!147805))

(declare-fun m!147807 () Bool)

(assert (=> tb!5739 m!147807))

(assert (=> d!38977 t!25749))

(declare-fun b_and!9759 () Bool)

(assert (= b_and!9755 (and (=> t!25749 result!8306) b_and!9759)))

(declare-fun tb!5741 () Bool)

(declare-fun t!25751 () Bool)

(assert (=> (and b!157830 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 call!6641)))) t!25751) tb!5741))

(declare-fun result!8308 () Bool)

(assert (= result!8308 result!8306))

(assert (=> d!38977 t!25751))

(declare-fun b_and!9761 () Bool)

(assert (= b_and!9753 (and (=> t!25751 result!8308) b_and!9761)))

(declare-fun tb!5743 () Bool)

(declare-fun t!25753 () Bool)

(assert (=> (and b!157823 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 call!6641)))) t!25753) tb!5743))

(declare-fun result!8310 () Bool)

(assert (= result!8310 result!8306))

(assert (=> d!38977 t!25753))

(declare-fun b_and!9763 () Bool)

(assert (= b_and!9757 (and (=> t!25753 result!8310) b_and!9763)))

(declare-fun t!25755 () Bool)

(declare-fun tb!5745 () Bool)

(assert (=> (and b!158310 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))) (toChars!985 (transformation!479 (rule!986 call!6641)))) t!25755) tb!5745))

(declare-fun result!8312 () Bool)

(assert (= result!8312 result!8306))

(assert (=> d!38977 t!25755))

(declare-fun b_and!9765 () Bool)

(assert (= b_and!9751 (and (=> t!25755 result!8312) b_and!9765)))

(declare-fun tb!5747 () Bool)

(declare-fun t!25757 () Bool)

(assert (=> (and b!157844 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 call!6641)))) t!25757) tb!5747))

(declare-fun result!8314 () Bool)

(assert (= result!8314 result!8306))

(assert (=> d!38977 t!25757))

(declare-fun b_and!9767 () Bool)

(assert (= b_and!9749 (and (=> t!25757 result!8314) b_and!9767)))

(declare-fun m!147811 () Bool)

(assert (=> d!38977 m!147811))

(declare-fun m!147813 () Bool)

(assert (=> d!38977 m!147813))

(assert (=> b!158241 d!38977))

(assert (=> bm!6601 d!38785))

(declare-fun d!38983 () Bool)

(declare-fun lt!47804 () Bool)

(assert (=> d!38983 (= lt!47804 (isEmpty!1097 (list!973 (_2!1535 (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)))))))))

(assert (=> d!38983 (= lt!47804 (isEmpty!1101 (c!31675 (_2!1535 (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170)))))))))

(assert (=> d!38983 (= (isEmpty!1098 (_2!1535 (lex!177 thiss!17480 rules!1920 (print!102 thiss!17480 (singletonSeq!35 separatorToken!170))))) lt!47804)))

(declare-fun bs!14928 () Bool)

(assert (= bs!14928 d!38983))

(declare-fun m!147815 () Bool)

(assert (=> bs!14928 m!147815))

(assert (=> bs!14928 m!147815))

(declare-fun m!147817 () Bool)

(assert (=> bs!14928 m!147817))

(declare-fun m!147819 () Bool)

(assert (=> bs!14928 m!147819))

(assert (=> b!157923 d!38983))

(assert (=> b!157923 d!38669))

(assert (=> b!157923 d!38703))

(assert (=> b!157923 d!38665))

(declare-fun d!38985 () Bool)

(declare-fun lt!47807 () Int)

(assert (=> d!38985 (>= lt!47807 0)))

(declare-fun e!95636 () Int)

(assert (=> d!38985 (= lt!47807 e!95636)))

(declare-fun c!31995 () Bool)

(assert (=> d!38985 (= c!31995 ((_ is Nil!2729) (list!976 lt!47052)))))

(assert (=> d!38985 (= (size!2308 (list!976 lt!47052)) lt!47807)))

(declare-fun b!159166 () Bool)

(assert (=> b!159166 (= e!95636 0)))

(declare-fun b!159167 () Bool)

(assert (=> b!159167 (= e!95636 (+ 1 (size!2308 (t!25603 (list!976 lt!47052)))))))

(assert (= (and d!38985 c!31995) b!159166))

(assert (= (and d!38985 (not c!31995)) b!159167))

(declare-fun m!147821 () Bool)

(assert (=> b!159167 m!147821))

(assert (=> d!38421 d!38985))

(assert (=> d!38421 d!38533))

(declare-fun d!38987 () Bool)

(declare-fun lt!47811 () Int)

(assert (=> d!38987 (= lt!47811 (size!2308 (list!978 (c!31677 lt!47052))))))

(assert (=> d!38987 (= lt!47811 (ite ((_ is Empty!781) (c!31677 lt!47052)) 0 (ite ((_ is Leaf!1360) (c!31677 lt!47052)) (csize!1793 (c!31677 lt!47052)) (csize!1792 (c!31677 lt!47052)))))))

(assert (=> d!38987 (= (size!2309 (c!31677 lt!47052)) lt!47811)))

(declare-fun bs!14942 () Bool)

(assert (= bs!14942 d!38987))

(assert (=> bs!14942 m!146011))

(assert (=> bs!14942 m!146011))

(declare-fun m!147863 () Bool)

(assert (=> bs!14942 m!147863))

(assert (=> d!38421 d!38987))

(declare-fun d!38995 () Bool)

(declare-fun c!31998 () Bool)

(assert (=> d!38995 (= c!31998 ((_ is Nil!2728) lt!47145))))

(declare-fun e!95642 () (InoxSet C!2328))

(assert (=> d!38995 (= (content!378 lt!47145) e!95642)))

(declare-fun b!159181 () Bool)

(assert (=> b!159181 (= e!95642 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!159182 () Bool)

(assert (=> b!159182 (= e!95642 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 lt!47145) true) (content!378 (t!25602 lt!47145))))))

(assert (= (and d!38995 c!31998) b!159181))

(assert (= (and d!38995 (not c!31998)) b!159182))

(declare-fun m!147865 () Bool)

(assert (=> b!159182 m!147865))

(declare-fun m!147867 () Bool)

(assert (=> b!159182 m!147867))

(assert (=> d!38415 d!38995))

(declare-fun d!38997 () Bool)

(declare-fun c!31999 () Bool)

(assert (=> d!38997 (= c!31999 ((_ is Nil!2728) lt!47050))))

(declare-fun e!95643 () (InoxSet C!2328))

(assert (=> d!38997 (= (content!378 lt!47050) e!95643)))

(declare-fun b!159183 () Bool)

(assert (=> b!159183 (= e!95643 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!159184 () Bool)

(assert (=> b!159184 (= e!95643 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 lt!47050) true) (content!378 (t!25602 lt!47050))))))

(assert (= (and d!38997 c!31999) b!159183))

(assert (= (and d!38997 (not c!31999)) b!159184))

(declare-fun m!147869 () Bool)

(assert (=> b!159184 m!147869))

(assert (=> b!159184 m!147141))

(assert (=> d!38415 d!38997))

(assert (=> d!38415 d!38517))

(declare-fun d!38999 () Bool)

(declare-fun c!32000 () Bool)

(assert (=> d!38999 (= c!32000 ((_ is Empty!780) (c!31675 (seqFromList!336 lt!47051))))))

(declare-fun e!95644 () List!2738)

(assert (=> d!38999 (= (list!977 (c!31675 (seqFromList!336 lt!47051))) e!95644)))

(declare-fun b!159186 () Bool)

(declare-fun e!95645 () List!2738)

(assert (=> b!159186 (= e!95644 e!95645)))

(declare-fun c!32001 () Bool)

(assert (=> b!159186 (= c!32001 ((_ is Leaf!1359) (c!31675 (seqFromList!336 lt!47051))))))

(declare-fun b!159187 () Bool)

(assert (=> b!159187 (= e!95645 (list!980 (xs!3375 (c!31675 (seqFromList!336 lt!47051)))))))

(declare-fun b!159188 () Bool)

(assert (=> b!159188 (= e!95645 (++!600 (list!977 (left!2058 (c!31675 (seqFromList!336 lt!47051)))) (list!977 (right!2388 (c!31675 (seqFromList!336 lt!47051))))))))

(declare-fun b!159185 () Bool)

(assert (=> b!159185 (= e!95644 Nil!2728)))

(assert (= (and d!38999 c!32000) b!159185))

(assert (= (and d!38999 (not c!32000)) b!159186))

(assert (= (and b!159186 c!32001) b!159187))

(assert (= (and b!159186 (not c!32001)) b!159188))

(declare-fun m!147871 () Bool)

(assert (=> b!159187 m!147871))

(declare-fun m!147873 () Bool)

(assert (=> b!159188 m!147873))

(declare-fun m!147875 () Bool)

(assert (=> b!159188 m!147875))

(assert (=> b!159188 m!147873))

(assert (=> b!159188 m!147875))

(declare-fun m!147877 () Bool)

(assert (=> b!159188 m!147877))

(assert (=> d!38385 d!38999))

(declare-fun d!39001 () Bool)

(declare-fun lt!47817 () Token!702)

(assert (=> d!39001 (= lt!47817 (apply!374 (list!976 (_1!1535 lt!47071)) 0))))

(assert (=> d!39001 (= lt!47817 (apply!378 (c!31677 (_1!1535 lt!47071)) 0))))

(declare-fun e!95646 () Bool)

(assert (=> d!39001 e!95646))

(declare-fun res!72335 () Bool)

(assert (=> d!39001 (=> (not res!72335) (not e!95646))))

(assert (=> d!39001 (= res!72335 (<= 0 0))))

(assert (=> d!39001 (= (apply!373 (_1!1535 lt!47071) 0) lt!47817)))

(declare-fun b!159189 () Bool)

(assert (=> b!159189 (= e!95646 (< 0 (size!2303 (_1!1535 lt!47071))))))

(assert (= (and d!39001 res!72335) b!159189))

(assert (=> d!39001 m!146725))

(assert (=> d!39001 m!146725))

(declare-fun m!147879 () Bool)

(assert (=> d!39001 m!147879))

(declare-fun m!147881 () Bool)

(assert (=> d!39001 m!147881))

(assert (=> b!159189 m!145395))

(assert (=> b!157921 d!39001))

(assert (=> b!158239 d!38875))

(declare-fun d!39003 () Bool)

(declare-fun c!32002 () Bool)

(assert (=> d!39003 (= c!32002 ((_ is Empty!780) (c!31675 (charsOf!134 (h!8126 tokens!465)))))))

(declare-fun e!95647 () List!2738)

(assert (=> d!39003 (= (list!977 (c!31675 (charsOf!134 (h!8126 tokens!465)))) e!95647)))

(declare-fun b!159191 () Bool)

(declare-fun e!95648 () List!2738)

(assert (=> b!159191 (= e!95647 e!95648)))

(declare-fun c!32003 () Bool)

(assert (=> b!159191 (= c!32003 ((_ is Leaf!1359) (c!31675 (charsOf!134 (h!8126 tokens!465)))))))

(declare-fun b!159192 () Bool)

(assert (=> b!159192 (= e!95648 (list!980 (xs!3375 (c!31675 (charsOf!134 (h!8126 tokens!465))))))))

(declare-fun b!159193 () Bool)

(assert (=> b!159193 (= e!95648 (++!600 (list!977 (left!2058 (c!31675 (charsOf!134 (h!8126 tokens!465))))) (list!977 (right!2388 (c!31675 (charsOf!134 (h!8126 tokens!465)))))))))

(declare-fun b!159190 () Bool)

(assert (=> b!159190 (= e!95647 Nil!2728)))

(assert (= (and d!39003 c!32002) b!159190))

(assert (= (and d!39003 (not c!32002)) b!159191))

(assert (= (and b!159191 c!32003) b!159192))

(assert (= (and b!159191 (not c!32003)) b!159193))

(declare-fun m!147889 () Bool)

(assert (=> b!159192 m!147889))

(declare-fun m!147891 () Bool)

(assert (=> b!159193 m!147891))

(declare-fun m!147893 () Bool)

(assert (=> b!159193 m!147893))

(assert (=> b!159193 m!147891))

(assert (=> b!159193 m!147893))

(declare-fun m!147897 () Bool)

(assert (=> b!159193 m!147897))

(assert (=> d!38417 d!39003))

(declare-fun b!159196 () Bool)

(declare-fun res!72336 () Bool)

(declare-fun e!95649 () Bool)

(assert (=> b!159196 (=> (not res!72336) (not e!95649))))

(declare-fun lt!47818 () List!2738)

(assert (=> b!159196 (= res!72336 (= (size!2305 lt!47818) (+ (size!2305 call!6602) (size!2305 lt!47141))))))

(declare-fun b!159197 () Bool)

(assert (=> b!159197 (= e!95649 (or (not (= lt!47141 Nil!2728)) (= lt!47818 call!6602)))))

(declare-fun b!159195 () Bool)

(declare-fun e!95650 () List!2738)

(assert (=> b!159195 (= e!95650 (Cons!2728 (h!8125 call!6602) (++!600 (t!25602 call!6602) lt!47141)))))

(declare-fun b!159194 () Bool)

(assert (=> b!159194 (= e!95650 lt!47141)))

(declare-fun d!39005 () Bool)

(assert (=> d!39005 e!95649))

(declare-fun res!72337 () Bool)

(assert (=> d!39005 (=> (not res!72337) (not e!95649))))

(assert (=> d!39005 (= res!72337 (= (content!378 lt!47818) ((_ map or) (content!378 call!6602) (content!378 lt!47141))))))

(assert (=> d!39005 (= lt!47818 e!95650)))

(declare-fun c!32004 () Bool)

(assert (=> d!39005 (= c!32004 ((_ is Nil!2728) call!6602))))

(assert (=> d!39005 (= (++!600 call!6602 lt!47141) lt!47818)))

(assert (= (and d!39005 c!32004) b!159194))

(assert (= (and d!39005 (not c!32004)) b!159195))

(assert (= (and d!39005 res!72337) b!159196))

(assert (= (and b!159196 res!72336) b!159197))

(declare-fun m!147911 () Bool)

(assert (=> b!159196 m!147911))

(declare-fun m!147913 () Bool)

(assert (=> b!159196 m!147913))

(assert (=> b!159196 m!147003))

(declare-fun m!147917 () Bool)

(assert (=> b!159195 m!147917))

(declare-fun m!147919 () Bool)

(assert (=> d!39005 m!147919))

(declare-fun m!147921 () Bool)

(assert (=> d!39005 m!147921))

(assert (=> d!39005 m!147011))

(assert (=> b!158029 d!39005))

(declare-fun d!39007 () Bool)

(assert (=> d!39007 (= (list!973 call!6643) (list!977 (c!31675 call!6643)))))

(declare-fun bs!14943 () Bool)

(assert (= bs!14943 d!39007))

(declare-fun m!147927 () Bool)

(assert (=> bs!14943 m!147927))

(assert (=> b!158259 d!39007))

(declare-fun d!39009 () Bool)

(declare-fun e!95651 () Bool)

(assert (=> d!39009 e!95651))

(declare-fun res!72338 () Bool)

(assert (=> d!39009 (=> (not res!72338) (not e!95651))))

(declare-fun lt!47819 () BalanceConc!1570)

(assert (=> d!39009 (= res!72338 (= (list!976 lt!47819) (t!25603 tokens!465)))))

(assert (=> d!39009 (= lt!47819 (BalanceConc!1571 (fromList!92 (t!25603 tokens!465))))))

(assert (=> d!39009 (= (fromListB!141 (t!25603 tokens!465)) lt!47819)))

(declare-fun b!159198 () Bool)

(assert (=> b!159198 (= e!95651 (isBalanced!218 (fromList!92 (t!25603 tokens!465))))))

(assert (= (and d!39009 res!72338) b!159198))

(declare-fun m!147933 () Bool)

(assert (=> d!39009 m!147933))

(declare-fun m!147935 () Bool)

(assert (=> d!39009 m!147935))

(assert (=> b!159198 m!147935))

(assert (=> b!159198 m!147935))

(declare-fun m!147937 () Bool)

(assert (=> b!159198 m!147937))

(assert (=> d!38391 d!39009))

(declare-fun d!39011 () Bool)

(declare-fun c!32005 () Bool)

(assert (=> d!39011 (= c!32005 ((_ is Nil!2728) lt!47080))))

(declare-fun e!95652 () (InoxSet C!2328))

(assert (=> d!39011 (= (content!378 lt!47080) e!95652)))

(declare-fun b!159199 () Bool)

(assert (=> b!159199 (= e!95652 ((as const (Array C!2328 Bool)) false))))

(declare-fun b!159200 () Bool)

(assert (=> b!159200 (= e!95652 ((_ map or) (store ((as const (Array C!2328 Bool)) false) (h!8125 lt!47080) true) (content!378 (t!25602 lt!47080))))))

(assert (= (and d!39011 c!32005) b!159199))

(assert (= (and d!39011 (not c!32005)) b!159200))

(declare-fun m!147941 () Bool)

(assert (=> b!159200 m!147941))

(declare-fun m!147943 () Bool)

(assert (=> b!159200 m!147943))

(assert (=> d!38401 d!39011))

(assert (=> d!38401 d!38735))

(assert (=> d!38401 d!38997))

(declare-fun d!39015 () Bool)

(assert (=> d!39015 (= (list!973 lt!47079) (list!977 (c!31675 lt!47079)))))

(declare-fun bs!14944 () Bool)

(assert (= bs!14944 d!39015))

(declare-fun m!147945 () Bool)

(assert (=> bs!14944 m!147945))

(assert (=> d!38397 d!39015))

(declare-fun d!39017 () Bool)

(declare-fun c!32006 () Bool)

(assert (=> d!39017 (= c!32006 ((_ is Node!780) (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))))))

(declare-fun e!95654 () Bool)

(assert (=> d!39017 (= (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))) e!95654)))

(declare-fun b!159202 () Bool)

(assert (=> b!159202 (= e!95654 (inv!3545 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))))))

(declare-fun b!159203 () Bool)

(declare-fun e!95655 () Bool)

(assert (=> b!159203 (= e!95654 e!95655)))

(declare-fun res!72340 () Bool)

(assert (=> b!159203 (= res!72340 (not ((_ is Leaf!1359) (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))))))))

(assert (=> b!159203 (=> res!72340 e!95655)))

(declare-fun b!159204 () Bool)

(assert (=> b!159204 (= e!95655 (inv!3546 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))))))

(assert (= (and d!39017 c!32006) b!159202))

(assert (= (and d!39017 (not c!32006)) b!159203))

(assert (= (and b!159203 (not res!72340)) b!159204))

(declare-fun m!147955 () Bool)

(assert (=> b!159202 m!147955))

(declare-fun m!147957 () Bool)

(assert (=> b!159204 m!147957))

(assert (=> b!158054 d!39017))

(declare-fun b!159207 () Bool)

(declare-fun res!72341 () Bool)

(declare-fun e!95656 () Bool)

(assert (=> b!159207 (=> (not res!72341) (not e!95656))))

(declare-fun lt!47822 () List!2738)

(assert (=> b!159207 (= res!72341 (= (size!2305 lt!47822) (+ (size!2305 (t!25602 (++!600 lt!47055 lt!47050))) (size!2305 lt!47058))))))

(declare-fun b!159208 () Bool)

(assert (=> b!159208 (= e!95656 (or (not (= lt!47058 Nil!2728)) (= lt!47822 (t!25602 (++!600 lt!47055 lt!47050)))))))

(declare-fun e!95657 () List!2738)

(declare-fun b!159206 () Bool)

(assert (=> b!159206 (= e!95657 (Cons!2728 (h!8125 (t!25602 (++!600 lt!47055 lt!47050))) (++!600 (t!25602 (t!25602 (++!600 lt!47055 lt!47050))) lt!47058)))))

(declare-fun b!159205 () Bool)

(assert (=> b!159205 (= e!95657 lt!47058)))

(declare-fun d!39021 () Bool)

(assert (=> d!39021 e!95656))

(declare-fun res!72342 () Bool)

(assert (=> d!39021 (=> (not res!72342) (not e!95656))))

(assert (=> d!39021 (= res!72342 (= (content!378 lt!47822) ((_ map or) (content!378 (t!25602 (++!600 lt!47055 lt!47050))) (content!378 lt!47058))))))

(assert (=> d!39021 (= lt!47822 e!95657)))

(declare-fun c!32007 () Bool)

(assert (=> d!39021 (= c!32007 ((_ is Nil!2728) (t!25602 (++!600 lt!47055 lt!47050))))))

(assert (=> d!39021 (= (++!600 (t!25602 (++!600 lt!47055 lt!47050)) lt!47058) lt!47822)))

(assert (= (and d!39021 c!32007) b!159205))

(assert (= (and d!39021 (not c!32007)) b!159206))

(assert (= (and d!39021 res!72342) b!159207))

(assert (= (and b!159207 res!72341) b!159208))

(declare-fun m!147965 () Bool)

(assert (=> b!159207 m!147965))

(assert (=> b!159207 m!146733))

(assert (=> b!159207 m!145431))

(declare-fun m!147967 () Bool)

(assert (=> b!159206 m!147967))

(declare-fun m!147969 () Bool)

(assert (=> d!39021 m!147969))

(assert (=> d!39021 m!145941))

(assert (=> d!39021 m!145439))

(assert (=> b!157950 d!39021))

(assert (=> bm!6636 d!38875))

(assert (=> bm!6641 d!38419))

(declare-fun d!39027 () Bool)

(assert (=> d!39027 (= (inv!3534 (tag!657 (h!8127 (t!25604 rules!1920)))) (= (mod (str.len (value!17966 (tag!657 (h!8127 (t!25604 rules!1920))))) 2) 0))))

(assert (=> b!158320 d!39027))

(declare-fun d!39029 () Bool)

(declare-fun res!72344 () Bool)

(declare-fun e!95659 () Bool)

(assert (=> d!39029 (=> (not res!72344) (not e!95659))))

(assert (=> d!39029 (= res!72344 (semiInverseModEq!167 (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toValue!1126 (transformation!479 (h!8127 (t!25604 rules!1920))))))))

(assert (=> d!39029 (= (inv!3538 (transformation!479 (h!8127 (t!25604 rules!1920)))) e!95659)))

(declare-fun b!159210 () Bool)

(assert (=> b!159210 (= e!95659 (equivClasses!150 (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toValue!1126 (transformation!479 (h!8127 (t!25604 rules!1920))))))))

(assert (= (and d!39029 res!72344) b!159210))

(declare-fun m!147975 () Bool)

(assert (=> d!39029 m!147975))

(declare-fun m!147977 () Bool)

(assert (=> b!159210 m!147977))

(assert (=> b!158320 d!39029))

(declare-fun bs!14946 () Bool)

(declare-fun d!39031 () Bool)

(assert (= bs!14946 (and d!39031 d!38539)))

(declare-fun lambda!4305 () Int)

(assert (=> bs!14946 (= (and (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (h!8127 rules!1920)))) (= (toValue!1126 (transformation!479 (rule!986 separatorToken!170))) (toValue!1126 (transformation!479 (h!8127 rules!1920))))) (= lambda!4305 lambda!4276))))

(assert (=> d!39031 true))

(assert (=> d!39031 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) (dynLambda!980 order!1395 lambda!4305))))

(assert (=> d!39031 true))

(assert (=> d!39031 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (rule!986 separatorToken!170)))) (dynLambda!980 order!1395 lambda!4305))))

(assert (=> d!39031 (= (semiInverseModEq!167 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toValue!1126 (transformation!479 (rule!986 separatorToken!170)))) (Forall!128 lambda!4305))))

(declare-fun bs!14947 () Bool)

(assert (= bs!14947 d!39031))

(declare-fun m!147979 () Bool)

(assert (=> bs!14947 m!147979))

(assert (=> d!38383 d!39031))

(declare-fun bs!14948 () Bool)

(declare-fun d!39033 () Bool)

(assert (= bs!14948 (and d!39033 d!38539)))

(declare-fun lambda!4306 () Int)

(assert (=> bs!14948 (= (and (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (h!8127 rules!1920)))) (= (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toValue!1126 (transformation!479 (h!8127 rules!1920))))) (= lambda!4306 lambda!4276))))

(declare-fun bs!14949 () Bool)

(assert (= bs!14949 (and d!39033 d!39031)))

(assert (=> bs!14949 (= (and (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) (= (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toValue!1126 (transformation!479 (rule!986 separatorToken!170))))) (= lambda!4306 lambda!4305))))

(assert (=> d!39033 true))

(assert (=> d!39033 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465))))) (dynLambda!980 order!1395 lambda!4306))))

(assert (=> d!39033 true))

(assert (=> d!39033 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465))))) (dynLambda!980 order!1395 lambda!4306))))

(assert (=> d!39033 (= (semiInverseModEq!167 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toValue!1126 (transformation!479 (rule!986 (h!8126 tokens!465))))) (Forall!128 lambda!4306))))

(declare-fun bs!14950 () Bool)

(assert (= bs!14950 d!39033))

(declare-fun m!147985 () Bool)

(assert (=> bs!14950 m!147985))

(assert (=> d!38357 d!39033))

(declare-fun d!39035 () Bool)

(assert (=> d!39035 (= (inv!3542 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))) (isBalanced!220 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))))))

(declare-fun bs!14951 () Bool)

(assert (= bs!14951 d!39035))

(declare-fun m!147987 () Bool)

(assert (=> bs!14951 m!147987))

(assert (=> tb!5629 d!39035))

(declare-fun lt!47823 () BalanceConc!1568)

(declare-fun e!95667 () Bool)

(declare-fun b!159233 () Bool)

(assert (=> b!159233 (= e!95667 (= (list!973 lt!47823) (++!600 (list!973 call!6640) (list!973 lt!47236))))))

(declare-fun b!159230 () Bool)

(declare-fun res!72347 () Bool)

(assert (=> b!159230 (=> (not res!72347) (not e!95667))))

(assert (=> b!159230 (= res!72347 (<= (height!82 (++!604 (c!31675 call!6640) (c!31675 lt!47236))) (+ (max!0 (height!82 (c!31675 call!6640)) (height!82 (c!31675 lt!47236))) 1)))))

(declare-fun b!159232 () Bool)

(declare-fun res!72346 () Bool)

(assert (=> b!159232 (=> (not res!72346) (not e!95667))))

(assert (=> b!159232 (= res!72346 (>= (height!82 (++!604 (c!31675 call!6640) (c!31675 lt!47236))) (max!0 (height!82 (c!31675 call!6640)) (height!82 (c!31675 lt!47236)))))))

(declare-fun d!39037 () Bool)

(assert (=> d!39037 e!95667))

(declare-fun res!72345 () Bool)

(assert (=> d!39037 (=> (not res!72345) (not e!95667))))

(assert (=> d!39037 (= res!72345 (appendAssocInst!23 (c!31675 call!6640) (c!31675 lt!47236)))))

(assert (=> d!39037 (= lt!47823 (BalanceConc!1569 (++!604 (c!31675 call!6640) (c!31675 lt!47236))))))

(assert (=> d!39037 (= (++!602 call!6640 lt!47236) lt!47823)))

(declare-fun b!159228 () Bool)

(declare-fun res!72348 () Bool)

(assert (=> b!159228 (=> (not res!72348) (not e!95667))))

(assert (=> b!159228 (= res!72348 (isBalanced!220 (++!604 (c!31675 call!6640) (c!31675 lt!47236))))))

(assert (= (and d!39037 res!72345) b!159228))

(assert (= (and b!159228 res!72348) b!159230))

(assert (= (and b!159230 res!72347) b!159232))

(assert (= (and b!159232 res!72346) b!159233))

(declare-fun m!147989 () Bool)

(assert (=> d!39037 m!147989))

(declare-fun m!147991 () Bool)

(assert (=> d!39037 m!147991))

(assert (=> b!159228 m!147991))

(assert (=> b!159228 m!147991))

(declare-fun m!147993 () Bool)

(assert (=> b!159228 m!147993))

(declare-fun m!147995 () Bool)

(assert (=> b!159233 m!147995))

(declare-fun m!147997 () Bool)

(assert (=> b!159233 m!147997))

(assert (=> b!159233 m!145831))

(assert (=> b!159233 m!147997))

(assert (=> b!159233 m!145831))

(declare-fun m!147999 () Bool)

(assert (=> b!159233 m!147999))

(assert (=> b!159230 m!147991))

(declare-fun m!148001 () Bool)

(assert (=> b!159230 m!148001))

(declare-fun m!148003 () Bool)

(assert (=> b!159230 m!148003))

(assert (=> b!159230 m!147293))

(declare-fun m!148005 () Bool)

(assert (=> b!159230 m!148005))

(assert (=> b!159230 m!147991))

(assert (=> b!159230 m!147293))

(assert (=> b!159230 m!148003))

(assert (=> b!159232 m!147991))

(assert (=> b!159232 m!148001))

(assert (=> b!159232 m!148003))

(assert (=> b!159232 m!147293))

(assert (=> b!159232 m!148005))

(assert (=> b!159232 m!147991))

(assert (=> b!159232 m!147293))

(assert (=> b!159232 m!148003))

(assert (=> b!158247 d!39037))

(declare-fun lt!47824 () BalanceConc!1568)

(declare-fun e!95682 () Bool)

(declare-fun b!159256 () Bool)

(assert (=> b!159256 (= e!95682 (= (list!973 lt!47824) (++!600 (list!973 e!95075) (list!973 (ite c!31756 lt!47236 call!6638)))))))

(declare-fun b!159254 () Bool)

(declare-fun res!72351 () Bool)

(assert (=> b!159254 (=> (not res!72351) (not e!95682))))

(assert (=> b!159254 (= res!72351 (<= (height!82 (++!604 (c!31675 e!95075) (c!31675 (ite c!31756 lt!47236 call!6638)))) (+ (max!0 (height!82 (c!31675 e!95075)) (height!82 (c!31675 (ite c!31756 lt!47236 call!6638)))) 1)))))

(declare-fun b!159255 () Bool)

(declare-fun res!72350 () Bool)

(assert (=> b!159255 (=> (not res!72350) (not e!95682))))

(assert (=> b!159255 (= res!72350 (>= (height!82 (++!604 (c!31675 e!95075) (c!31675 (ite c!31756 lt!47236 call!6638)))) (max!0 (height!82 (c!31675 e!95075)) (height!82 (c!31675 (ite c!31756 lt!47236 call!6638))))))))

(declare-fun d!39039 () Bool)

(assert (=> d!39039 e!95682))

(declare-fun res!72349 () Bool)

(assert (=> d!39039 (=> (not res!72349) (not e!95682))))

(assert (=> d!39039 (= res!72349 (appendAssocInst!23 (c!31675 e!95075) (c!31675 (ite c!31756 lt!47236 call!6638))))))

(assert (=> d!39039 (= lt!47824 (BalanceConc!1569 (++!604 (c!31675 e!95075) (c!31675 (ite c!31756 lt!47236 call!6638)))))))

(assert (=> d!39039 (= (++!602 e!95075 (ite c!31756 lt!47236 call!6638)) lt!47824)))

(declare-fun b!159253 () Bool)

(declare-fun res!72352 () Bool)

(assert (=> b!159253 (=> (not res!72352) (not e!95682))))

(assert (=> b!159253 (= res!72352 (isBalanced!220 (++!604 (c!31675 e!95075) (c!31675 (ite c!31756 lt!47236 call!6638)))))))

(assert (= (and d!39039 res!72349) b!159253))

(assert (= (and b!159253 res!72352) b!159254))

(assert (= (and b!159254 res!72351) b!159255))

(assert (= (and b!159255 res!72350) b!159256))

(declare-fun m!148007 () Bool)

(assert (=> d!39039 m!148007))

(declare-fun m!148009 () Bool)

(assert (=> d!39039 m!148009))

(assert (=> b!159253 m!148009))

(assert (=> b!159253 m!148009))

(declare-fun m!148011 () Bool)

(assert (=> b!159253 m!148011))

(declare-fun m!148013 () Bool)

(assert (=> b!159256 m!148013))

(declare-fun m!148015 () Bool)

(assert (=> b!159256 m!148015))

(declare-fun m!148017 () Bool)

(assert (=> b!159256 m!148017))

(assert (=> b!159256 m!148015))

(assert (=> b!159256 m!148017))

(declare-fun m!148019 () Bool)

(assert (=> b!159256 m!148019))

(assert (=> b!159254 m!148009))

(declare-fun m!148021 () Bool)

(assert (=> b!159254 m!148021))

(declare-fun m!148023 () Bool)

(assert (=> b!159254 m!148023))

(declare-fun m!148025 () Bool)

(assert (=> b!159254 m!148025))

(declare-fun m!148027 () Bool)

(assert (=> b!159254 m!148027))

(assert (=> b!159254 m!148009))

(assert (=> b!159254 m!148025))

(assert (=> b!159254 m!148023))

(assert (=> b!159255 m!148009))

(assert (=> b!159255 m!148021))

(assert (=> b!159255 m!148023))

(assert (=> b!159255 m!148025))

(assert (=> b!159255 m!148027))

(assert (=> b!159255 m!148009))

(assert (=> b!159255 m!148025))

(assert (=> b!159255 m!148023))

(assert (=> bm!6635 d!39039))

(declare-fun d!39041 () Bool)

(assert (=> d!39041 (= (inv!17 (value!17967 separatorToken!170)) (= (charsToBigInt!1 (text!3955 (value!17967 separatorToken!170))) (value!17959 (value!17967 separatorToken!170))))))

(declare-fun bs!14952 () Bool)

(assert (= bs!14952 d!39041))

(declare-fun m!148029 () Bool)

(assert (=> bs!14952 m!148029))

(assert (=> b!157940 d!39041))

(declare-fun b!159275 () Bool)

(declare-fun e!95691 () Bool)

(assert (=> b!159275 (= e!95691 true)))

(declare-fun b!159274 () Bool)

(declare-fun e!95690 () Bool)

(assert (=> b!159274 (= e!95690 e!95691)))

(declare-fun b!159273 () Bool)

(declare-fun e!95689 () Bool)

(assert (=> b!159273 (= e!95689 e!95690)))

(assert (=> b!158074 e!95689))

(assert (= b!159274 b!159275))

(assert (= b!159273 b!159274))

(assert (= (and b!158074 ((_ is Cons!2730) (t!25604 rules!1920))) b!159273))

(assert (=> b!159275 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4253))))

(assert (=> b!159275 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4253))))

(declare-fun e!95712 () Bool)

(declare-fun b!159302 () Bool)

(declare-fun tp!81099 () Bool)

(declare-fun tp!81097 () Bool)

(assert (=> b!159302 (= e!95712 (and (inv!3541 (left!2058 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))))) tp!81097 (inv!3541 (right!2388 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))))) tp!81099))))

(declare-fun b!159304 () Bool)

(declare-fun e!95711 () Bool)

(declare-fun tp!81098 () Bool)

(assert (=> b!159304 (= e!95711 tp!81098)))

(declare-fun b!159303 () Bool)

(declare-fun inv!3547 (IArray!1561) Bool)

(assert (=> b!159303 (= e!95712 (and (inv!3547 (xs!3375 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))))) e!95711))))

(assert (=> b!157888 (= tp!80896 (and (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170)))) e!95712))))

(assert (= (and b!157888 ((_ is Node!780) (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))))) b!159302))

(assert (= b!159303 b!159304))

(assert (= (and b!157888 ((_ is Leaf!1359) (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (value!17967 separatorToken!170))))) b!159303))

(declare-fun m!148043 () Bool)

(assert (=> b!159302 m!148043))

(declare-fun m!148045 () Bool)

(assert (=> b!159302 m!148045))

(declare-fun m!148047 () Bool)

(assert (=> b!159303 m!148047))

(assert (=> b!157888 m!145333))

(declare-fun b!159306 () Bool)

(declare-fun e!95713 () Bool)

(declare-fun tp!81101 () Bool)

(declare-fun tp!81104 () Bool)

(assert (=> b!159306 (= e!95713 (and tp!81101 tp!81104))))

(declare-fun b!159305 () Bool)

(assert (=> b!159305 (= e!95713 tp_is_empty!1631)))

(assert (=> b!158283 (= tp!80970 e!95713)))

(declare-fun b!159308 () Bool)

(declare-fun tp!81102 () Bool)

(declare-fun tp!81100 () Bool)

(assert (=> b!159308 (= e!95713 (and tp!81102 tp!81100))))

(declare-fun b!159307 () Bool)

(declare-fun tp!81103 () Bool)

(assert (=> b!159307 (= e!95713 tp!81103)))

(assert (= (and b!158283 ((_ is ElementMatch!703) (regOne!1919 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159305))

(assert (= (and b!158283 ((_ is Concat!1205) (regOne!1919 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159306))

(assert (= (and b!158283 ((_ is Star!703) (regOne!1919 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159307))

(assert (= (and b!158283 ((_ is Union!703) (regOne!1919 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159308))

(declare-fun b!159310 () Bool)

(declare-fun e!95714 () Bool)

(declare-fun tp!81106 () Bool)

(declare-fun tp!81109 () Bool)

(assert (=> b!159310 (= e!95714 (and tp!81106 tp!81109))))

(declare-fun b!159309 () Bool)

(assert (=> b!159309 (= e!95714 tp_is_empty!1631)))

(assert (=> b!158283 (= tp!80968 e!95714)))

(declare-fun b!159312 () Bool)

(declare-fun tp!81107 () Bool)

(declare-fun tp!81105 () Bool)

(assert (=> b!159312 (= e!95714 (and tp!81107 tp!81105))))

(declare-fun b!159311 () Bool)

(declare-fun tp!81108 () Bool)

(assert (=> b!159311 (= e!95714 tp!81108)))

(assert (= (and b!158283 ((_ is ElementMatch!703) (regTwo!1919 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159309))

(assert (= (and b!158283 ((_ is Concat!1205) (regTwo!1919 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159310))

(assert (= (and b!158283 ((_ is Star!703) (regTwo!1919 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159311))

(assert (= (and b!158283 ((_ is Union!703) (regTwo!1919 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159312))

(declare-fun b!159314 () Bool)

(declare-fun e!95715 () Bool)

(declare-fun tp!81111 () Bool)

(declare-fun tp!81114 () Bool)

(assert (=> b!159314 (= e!95715 (and tp!81111 tp!81114))))

(declare-fun b!159313 () Bool)

(assert (=> b!159313 (= e!95715 tp_is_empty!1631)))

(assert (=> b!158291 (= tp!80980 e!95715)))

(declare-fun b!159316 () Bool)

(declare-fun tp!81112 () Bool)

(declare-fun tp!81110 () Bool)

(assert (=> b!159316 (= e!95715 (and tp!81112 tp!81110))))

(declare-fun b!159315 () Bool)

(declare-fun tp!81113 () Bool)

(assert (=> b!159315 (= e!95715 tp!81113)))

(assert (= (and b!158291 ((_ is ElementMatch!703) (regOne!1919 (regex!479 (rule!986 separatorToken!170))))) b!159313))

(assert (= (and b!158291 ((_ is Concat!1205) (regOne!1919 (regex!479 (rule!986 separatorToken!170))))) b!159314))

(assert (= (and b!158291 ((_ is Star!703) (regOne!1919 (regex!479 (rule!986 separatorToken!170))))) b!159315))

(assert (= (and b!158291 ((_ is Union!703) (regOne!1919 (regex!479 (rule!986 separatorToken!170))))) b!159316))

(declare-fun b!159322 () Bool)

(declare-fun e!95717 () Bool)

(declare-fun tp!81121 () Bool)

(declare-fun tp!81124 () Bool)

(assert (=> b!159322 (= e!95717 (and tp!81121 tp!81124))))

(declare-fun b!159321 () Bool)

(assert (=> b!159321 (= e!95717 tp_is_empty!1631)))

(assert (=> b!158291 (= tp!80978 e!95717)))

(declare-fun b!159324 () Bool)

(declare-fun tp!81122 () Bool)

(declare-fun tp!81120 () Bool)

(assert (=> b!159324 (= e!95717 (and tp!81122 tp!81120))))

(declare-fun b!159323 () Bool)

(declare-fun tp!81123 () Bool)

(assert (=> b!159323 (= e!95717 tp!81123)))

(assert (= (and b!158291 ((_ is ElementMatch!703) (regTwo!1919 (regex!479 (rule!986 separatorToken!170))))) b!159321))

(assert (= (and b!158291 ((_ is Concat!1205) (regTwo!1919 (regex!479 (rule!986 separatorToken!170))))) b!159322))

(assert (= (and b!158291 ((_ is Star!703) (regTwo!1919 (regex!479 (rule!986 separatorToken!170))))) b!159323))

(assert (= (and b!158291 ((_ is Union!703) (regTwo!1919 (regex!479 (rule!986 separatorToken!170))))) b!159324))

(declare-fun b!159329 () Bool)

(declare-fun e!95719 () Bool)

(declare-fun tp!81130 () Bool)

(assert (=> b!159329 (= e!95719 (and tp_is_empty!1631 tp!81130))))

(assert (=> b!158308 (= tp!80996 e!95719)))

(assert (= (and b!158308 ((_ is Cons!2728) (originalCharacters!522 (h!8126 (t!25603 tokens!465))))) b!159329))

(declare-fun b!159331 () Bool)

(declare-fun e!95720 () Bool)

(declare-fun tp!81132 () Bool)

(declare-fun tp!81135 () Bool)

(assert (=> b!159331 (= e!95720 (and tp!81132 tp!81135))))

(declare-fun b!159330 () Bool)

(assert (=> b!159330 (= e!95720 tp_is_empty!1631)))

(assert (=> b!158282 (= tp!80971 e!95720)))

(declare-fun b!159333 () Bool)

(declare-fun tp!81133 () Bool)

(declare-fun tp!81131 () Bool)

(assert (=> b!159333 (= e!95720 (and tp!81133 tp!81131))))

(declare-fun b!159332 () Bool)

(declare-fun tp!81134 () Bool)

(assert (=> b!159332 (= e!95720 tp!81134)))

(assert (= (and b!158282 ((_ is ElementMatch!703) (reg!1032 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159330))

(assert (= (and b!158282 ((_ is Concat!1205) (reg!1032 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159331))

(assert (= (and b!158282 ((_ is Star!703) (reg!1032 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159332))

(assert (= (and b!158282 ((_ is Union!703) (reg!1032 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159333))

(declare-fun b!159340 () Bool)

(declare-fun e!95724 () Bool)

(assert (=> b!159340 (= e!95724 true)))

(declare-fun b!159339 () Bool)

(declare-fun e!95723 () Bool)

(assert (=> b!159339 (= e!95723 e!95724)))

(declare-fun b!159338 () Bool)

(declare-fun e!95722 () Bool)

(assert (=> b!159338 (= e!95722 e!95723)))

(assert (=> b!158045 e!95722))

(assert (= b!159339 b!159340))

(assert (= b!159338 b!159339))

(assert (= (and b!158045 ((_ is Cons!2730) (t!25604 rules!1920))) b!159338))

(assert (=> b!159340 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4246))))

(assert (=> b!159340 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4246))))

(declare-fun b!159347 () Bool)

(declare-fun e!95726 () Bool)

(declare-fun tp!81148 () Bool)

(declare-fun tp!81154 () Bool)

(assert (=> b!159347 (= e!95726 (and tp!81148 tp!81154))))

(declare-fun b!159345 () Bool)

(assert (=> b!159345 (= e!95726 tp_is_empty!1631)))

(assert (=> b!158309 (= tp!80999 e!95726)))

(declare-fun b!159351 () Bool)

(declare-fun tp!81150 () Bool)

(declare-fun tp!81146 () Bool)

(assert (=> b!159351 (= e!95726 (and tp!81150 tp!81146))))

(declare-fun b!159349 () Bool)

(declare-fun tp!81152 () Bool)

(assert (=> b!159349 (= e!95726 tp!81152)))

(assert (= (and b!158309 ((_ is ElementMatch!703) (regex!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) b!159345))

(assert (= (and b!158309 ((_ is Concat!1205) (regex!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) b!159347))

(assert (= (and b!158309 ((_ is Star!703) (regex!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) b!159349))

(assert (= (and b!158309 ((_ is Union!703) (regex!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) b!159351))

(declare-fun b!159358 () Bool)

(declare-fun e!95729 () Bool)

(declare-fun tp!81162 () Bool)

(declare-fun tp!81165 () Bool)

(assert (=> b!159358 (= e!95729 (and tp!81162 tp!81165))))

(declare-fun b!159357 () Bool)

(assert (=> b!159357 (= e!95729 tp_is_empty!1631)))

(assert (=> b!158290 (= tp!80981 e!95729)))

(declare-fun b!159360 () Bool)

(declare-fun tp!81163 () Bool)

(declare-fun tp!81161 () Bool)

(assert (=> b!159360 (= e!95729 (and tp!81163 tp!81161))))

(declare-fun b!159359 () Bool)

(declare-fun tp!81164 () Bool)

(assert (=> b!159359 (= e!95729 tp!81164)))

(assert (= (and b!158290 ((_ is ElementMatch!703) (reg!1032 (regex!479 (rule!986 separatorToken!170))))) b!159357))

(assert (= (and b!158290 ((_ is Concat!1205) (reg!1032 (regex!479 (rule!986 separatorToken!170))))) b!159358))

(assert (= (and b!158290 ((_ is Star!703) (reg!1032 (regex!479 (rule!986 separatorToken!170))))) b!159359))

(assert (= (and b!158290 ((_ is Union!703) (reg!1032 (regex!479 (rule!986 separatorToken!170))))) b!159360))

(declare-fun b!159368 () Bool)

(declare-fun b_free!5941 () Bool)

(declare-fun b_next!5941 () Bool)

(assert (=> b!159368 (= b_free!5941 (not b_next!5941))))

(declare-fun tp!81173 () Bool)

(declare-fun b_and!9777 () Bool)

(assert (=> b!159368 (= tp!81173 b_and!9777)))

(declare-fun b_free!5943 () Bool)

(declare-fun b_next!5943 () Bool)

(assert (=> b!159368 (= b_free!5943 (not b_next!5943))))

(declare-fun t!25784 () Bool)

(declare-fun tb!5773 () Bool)

(assert (=> (and b!159368 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) t!25784) tb!5773))

(declare-fun result!8344 () Bool)

(assert (= result!8344 result!8256))

(assert (=> b!159142 t!25784))

(declare-fun t!25786 () Bool)

(declare-fun tb!5775 () Bool)

(assert (=> (and b!159368 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (toChars!985 (transformation!479 (rule!986 call!6641)))) t!25786) tb!5775))

(declare-fun result!8346 () Bool)

(assert (= result!8346 result!8306))

(assert (=> d!38977 t!25786))

(declare-fun tb!5777 () Bool)

(declare-fun t!25788 () Bool)

(assert (=> (and b!159368 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))) t!25788) tb!5777))

(declare-fun result!8348 () Bool)

(assert (= result!8348 result!8236))

(assert (=> d!38523 t!25788))

(assert (=> d!38785 t!25784))

(declare-fun t!25790 () Bool)

(declare-fun tb!5779 () Bool)

(assert (=> (and b!159368 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465))))) t!25790) tb!5779))

(declare-fun result!8350 () Bool)

(assert (= result!8350 result!8192))

(assert (=> b!158081 t!25790))

(assert (=> d!38419 t!25790))

(declare-fun tb!5781 () Bool)

(declare-fun t!25792 () Bool)

(assert (=> (and b!159368 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) t!25792) tb!5781))

(declare-fun result!8352 () Bool)

(assert (= result!8352 result!8176))

(assert (=> b!157882 t!25792))

(declare-fun t!25794 () Bool)

(declare-fun tb!5783 () Bool)

(assert (=> (and b!159368 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0))))) t!25794) tb!5783))

(declare-fun result!8354 () Bool)

(assert (= result!8354 result!8286))

(assert (=> d!38911 t!25794))

(assert (=> d!38397 t!25792))

(declare-fun b_and!9779 () Bool)

(declare-fun tp!81172 () Bool)

(assert (=> b!159368 (= tp!81172 (and (=> t!25786 result!8346) (=> t!25790 result!8350) (=> t!25792 result!8352) (=> t!25788 result!8348) (=> t!25794 result!8354) (=> t!25784 result!8344) b_and!9779))))

(declare-fun e!95731 () Bool)

(declare-fun b!159367 () Bool)

(declare-fun e!95733 () Bool)

(declare-fun tp!81174 () Bool)

(assert (=> b!159367 (= e!95733 (and tp!81174 (inv!3534 (tag!657 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (inv!3538 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) e!95731))))

(declare-fun e!95736 () Bool)

(declare-fun tp!81171 () Bool)

(declare-fun b!159366 () Bool)

(assert (=> b!159366 (= e!95736 (and (inv!21 (value!17967 (h!8126 (t!25603 (t!25603 tokens!465))))) e!95733 tp!81171))))

(declare-fun e!95734 () Bool)

(declare-fun tp!81175 () Bool)

(declare-fun b!159365 () Bool)

(assert (=> b!159365 (= e!95734 (and (inv!3537 (h!8126 (t!25603 (t!25603 tokens!465)))) e!95736 tp!81175))))

(assert (=> b!159368 (= e!95731 (and tp!81173 tp!81172))))

(assert (=> b!158307 (= tp!81000 e!95734)))

(assert (= b!159367 b!159368))

(assert (= b!159366 b!159367))

(assert (= b!159365 b!159366))

(assert (= (and b!158307 ((_ is Cons!2729) (t!25603 (t!25603 tokens!465)))) b!159365))

(declare-fun m!148059 () Bool)

(assert (=> b!159367 m!148059))

(declare-fun m!148061 () Bool)

(assert (=> b!159367 m!148061))

(declare-fun m!148063 () Bool)

(assert (=> b!159366 m!148063))

(declare-fun m!148065 () Bool)

(assert (=> b!159365 m!148065))

(declare-fun b!159377 () Bool)

(declare-fun e!95741 () Bool)

(declare-fun tp!81182 () Bool)

(declare-fun tp!81185 () Bool)

(assert (=> b!159377 (= e!95741 (and tp!81182 tp!81185))))

(declare-fun b!159376 () Bool)

(assert (=> b!159376 (= e!95741 tp_is_empty!1631)))

(assert (=> b!158281 (= tp!80969 e!95741)))

(declare-fun b!159379 () Bool)

(declare-fun tp!81183 () Bool)

(declare-fun tp!81181 () Bool)

(assert (=> b!159379 (= e!95741 (and tp!81183 tp!81181))))

(declare-fun b!159378 () Bool)

(declare-fun tp!81184 () Bool)

(assert (=> b!159378 (= e!95741 tp!81184)))

(assert (= (and b!158281 ((_ is ElementMatch!703) (regOne!1918 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159376))

(assert (= (and b!158281 ((_ is Concat!1205) (regOne!1918 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159377))

(assert (= (and b!158281 ((_ is Star!703) (regOne!1918 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159378))

(assert (= (and b!158281 ((_ is Union!703) (regOne!1918 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159379))

(declare-fun b!159381 () Bool)

(declare-fun e!95742 () Bool)

(declare-fun tp!81187 () Bool)

(declare-fun tp!81190 () Bool)

(assert (=> b!159381 (= e!95742 (and tp!81187 tp!81190))))

(declare-fun b!159380 () Bool)

(assert (=> b!159380 (= e!95742 tp_is_empty!1631)))

(assert (=> b!158281 (= tp!80972 e!95742)))

(declare-fun b!159383 () Bool)

(declare-fun tp!81188 () Bool)

(declare-fun tp!81186 () Bool)

(assert (=> b!159383 (= e!95742 (and tp!81188 tp!81186))))

(declare-fun b!159382 () Bool)

(declare-fun tp!81189 () Bool)

(assert (=> b!159382 (= e!95742 tp!81189)))

(assert (= (and b!158281 ((_ is ElementMatch!703) (regTwo!1918 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159380))

(assert (= (and b!158281 ((_ is Concat!1205) (regTwo!1918 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159381))

(assert (= (and b!158281 ((_ is Star!703) (regTwo!1918 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159382))

(assert (= (and b!158281 ((_ is Union!703) (regTwo!1918 (regex!479 (rule!986 (h!8126 tokens!465)))))) b!159383))

(declare-fun b!159386 () Bool)

(declare-fun e!95745 () Bool)

(assert (=> b!159386 (= e!95745 true)))

(declare-fun b!159385 () Bool)

(declare-fun e!95744 () Bool)

(assert (=> b!159385 (= e!95744 e!95745)))

(declare-fun b!159384 () Bool)

(declare-fun e!95743 () Bool)

(assert (=> b!159384 (= e!95743 e!95744)))

(assert (=> b!158262 e!95743))

(assert (= b!159385 b!159386))

(assert (= b!159384 b!159385))

(assert (= (and b!158262 ((_ is Cons!2730) (t!25604 rules!1920))) b!159384))

(assert (=> b!159386 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4264))))

(assert (=> b!159386 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4264))))

(declare-fun b!159387 () Bool)

(declare-fun e!95746 () Bool)

(declare-fun tp!81191 () Bool)

(assert (=> b!159387 (= e!95746 (and tp_is_empty!1631 tp!81191))))

(assert (=> b!158322 (= tp!81013 e!95746)))

(assert (= (and b!158322 ((_ is Cons!2728) (t!25602 (originalCharacters!522 (h!8126 tokens!465))))) b!159387))

(declare-fun b!159389 () Bool)

(declare-fun e!95747 () Bool)

(declare-fun tp!81193 () Bool)

(declare-fun tp!81196 () Bool)

(assert (=> b!159389 (= e!95747 (and tp!81193 tp!81196))))

(declare-fun b!159388 () Bool)

(assert (=> b!159388 (= e!95747 tp_is_empty!1631)))

(assert (=> b!158289 (= tp!80979 e!95747)))

(declare-fun b!159391 () Bool)

(declare-fun tp!81194 () Bool)

(declare-fun tp!81192 () Bool)

(assert (=> b!159391 (= e!95747 (and tp!81194 tp!81192))))

(declare-fun b!159390 () Bool)

(declare-fun tp!81195 () Bool)

(assert (=> b!159390 (= e!95747 tp!81195)))

(assert (= (and b!158289 ((_ is ElementMatch!703) (regOne!1918 (regex!479 (rule!986 separatorToken!170))))) b!159388))

(assert (= (and b!158289 ((_ is Concat!1205) (regOne!1918 (regex!479 (rule!986 separatorToken!170))))) b!159389))

(assert (= (and b!158289 ((_ is Star!703) (regOne!1918 (regex!479 (rule!986 separatorToken!170))))) b!159390))

(assert (= (and b!158289 ((_ is Union!703) (regOne!1918 (regex!479 (rule!986 separatorToken!170))))) b!159391))

(declare-fun b!159393 () Bool)

(declare-fun e!95748 () Bool)

(declare-fun tp!81198 () Bool)

(declare-fun tp!81201 () Bool)

(assert (=> b!159393 (= e!95748 (and tp!81198 tp!81201))))

(declare-fun b!159392 () Bool)

(assert (=> b!159392 (= e!95748 tp_is_empty!1631)))

(assert (=> b!158289 (= tp!80982 e!95748)))

(declare-fun b!159395 () Bool)

(declare-fun tp!81199 () Bool)

(declare-fun tp!81197 () Bool)

(assert (=> b!159395 (= e!95748 (and tp!81199 tp!81197))))

(declare-fun b!159394 () Bool)

(declare-fun tp!81200 () Bool)

(assert (=> b!159394 (= e!95748 tp!81200)))

(assert (= (and b!158289 ((_ is ElementMatch!703) (regTwo!1918 (regex!479 (rule!986 separatorToken!170))))) b!159392))

(assert (= (and b!158289 ((_ is Concat!1205) (regTwo!1918 (regex!479 (rule!986 separatorToken!170))))) b!159393))

(assert (= (and b!158289 ((_ is Star!703) (regTwo!1918 (regex!479 (rule!986 separatorToken!170))))) b!159394))

(assert (= (and b!158289 ((_ is Union!703) (regTwo!1918 (regex!479 (rule!986 separatorToken!170))))) b!159395))

(declare-fun b!159398 () Bool)

(declare-fun e!95751 () Bool)

(assert (=> b!159398 (= e!95751 true)))

(declare-fun b!159397 () Bool)

(declare-fun e!95750 () Bool)

(assert (=> b!159397 (= e!95750 e!95751)))

(declare-fun b!159396 () Bool)

(declare-fun e!95749 () Bool)

(assert (=> b!159396 (= e!95749 e!95750)))

(assert (=> b!158249 e!95749))

(assert (= b!159397 b!159398))

(assert (= b!159396 b!159397))

(assert (= (and b!158249 ((_ is Cons!2730) (t!25604 rules!1920))) b!159396))

(assert (=> b!159398 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4263))))

(assert (=> b!159398 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4263))))

(declare-fun b!159401 () Bool)

(declare-fun e!95754 () Bool)

(assert (=> b!159401 (= e!95754 true)))

(declare-fun b!159400 () Bool)

(declare-fun e!95753 () Bool)

(assert (=> b!159400 (= e!95753 e!95754)))

(declare-fun b!159399 () Bool)

(declare-fun e!95752 () Bool)

(assert (=> b!159399 (= e!95752 e!95753)))

(assert (=> b!158106 e!95752))

(assert (= b!159400 b!159401))

(assert (= b!159399 b!159400))

(assert (= (and b!158106 ((_ is Cons!2730) (t!25604 rules!1920))) b!159399))

(assert (=> b!159401 (< (dynLambda!975 order!1385 (toValue!1126 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4255))))

(assert (=> b!159401 (< (dynLambda!977 order!1389 (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920))))) (dynLambda!976 order!1387 lambda!4255))))

(declare-fun b!159402 () Bool)

(declare-fun e!95755 () Bool)

(declare-fun tp!81202 () Bool)

(assert (=> b!159402 (= e!95755 (and tp_is_empty!1631 tp!81202))))

(assert (=> b!158296 (= tp!80985 e!95755)))

(assert (= (and b!158296 ((_ is Cons!2728) (t!25602 (originalCharacters!522 separatorToken!170)))) b!159402))

(declare-fun e!95757 () Bool)

(declare-fun tp!81203 () Bool)

(declare-fun b!159403 () Bool)

(declare-fun tp!81205 () Bool)

(assert (=> b!159403 (= e!95757 (and (inv!3541 (left!2058 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))))) tp!81203 (inv!3541 (right!2388 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))))) tp!81205))))

(declare-fun b!159405 () Bool)

(declare-fun e!95756 () Bool)

(declare-fun tp!81204 () Bool)

(assert (=> b!159405 (= e!95756 tp!81204)))

(declare-fun b!159404 () Bool)

(assert (=> b!159404 (= e!95757 (and (inv!3547 (xs!3375 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))))) e!95756))))

(assert (=> b!158054 (= tp!80900 (and (inv!3541 (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465))))) e!95757))))

(assert (= (and b!158054 ((_ is Node!780) (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))))) b!159403))

(assert (= b!159404 b!159405))

(assert (= (and b!158054 ((_ is Leaf!1359) (c!31675 (dynLambda!974 (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (value!17967 (h!8126 tokens!465)))))) b!159404))

(declare-fun m!148071 () Bool)

(assert (=> b!159403 m!148071))

(declare-fun m!148073 () Bool)

(assert (=> b!159403 m!148073))

(declare-fun m!148075 () Bool)

(assert (=> b!159404 m!148075))

(assert (=> b!158054 m!145579))

(declare-fun b!159407 () Bool)

(declare-fun e!95758 () Bool)

(declare-fun tp!81207 () Bool)

(declare-fun tp!81210 () Bool)

(assert (=> b!159407 (= e!95758 (and tp!81207 tp!81210))))

(declare-fun b!159406 () Bool)

(assert (=> b!159406 (= e!95758 tp_is_empty!1631)))

(assert (=> b!158287 (= tp!80975 e!95758)))

(declare-fun b!159409 () Bool)

(declare-fun tp!81208 () Bool)

(declare-fun tp!81206 () Bool)

(assert (=> b!159409 (= e!95758 (and tp!81208 tp!81206))))

(declare-fun b!159408 () Bool)

(declare-fun tp!81209 () Bool)

(assert (=> b!159408 (= e!95758 tp!81209)))

(assert (= (and b!158287 ((_ is ElementMatch!703) (regOne!1919 (regex!479 (h!8127 rules!1920))))) b!159406))

(assert (= (and b!158287 ((_ is Concat!1205) (regOne!1919 (regex!479 (h!8127 rules!1920))))) b!159407))

(assert (= (and b!158287 ((_ is Star!703) (regOne!1919 (regex!479 (h!8127 rules!1920))))) b!159408))

(assert (= (and b!158287 ((_ is Union!703) (regOne!1919 (regex!479 (h!8127 rules!1920))))) b!159409))

(declare-fun b!159411 () Bool)

(declare-fun e!95759 () Bool)

(declare-fun tp!81212 () Bool)

(declare-fun tp!81215 () Bool)

(assert (=> b!159411 (= e!95759 (and tp!81212 tp!81215))))

(declare-fun b!159410 () Bool)

(assert (=> b!159410 (= e!95759 tp_is_empty!1631)))

(assert (=> b!158287 (= tp!80973 e!95759)))

(declare-fun b!159413 () Bool)

(declare-fun tp!81213 () Bool)

(declare-fun tp!81211 () Bool)

(assert (=> b!159413 (= e!95759 (and tp!81213 tp!81211))))

(declare-fun b!159412 () Bool)

(declare-fun tp!81214 () Bool)

(assert (=> b!159412 (= e!95759 tp!81214)))

(assert (= (and b!158287 ((_ is ElementMatch!703) (regTwo!1919 (regex!479 (h!8127 rules!1920))))) b!159410))

(assert (= (and b!158287 ((_ is Concat!1205) (regTwo!1919 (regex!479 (h!8127 rules!1920))))) b!159411))

(assert (= (and b!158287 ((_ is Star!703) (regTwo!1919 (regex!479 (h!8127 rules!1920))))) b!159412))

(assert (= (and b!158287 ((_ is Union!703) (regTwo!1919 (regex!479 (h!8127 rules!1920))))) b!159413))

(declare-fun b!159415 () Bool)

(declare-fun e!95760 () Bool)

(declare-fun tp!81217 () Bool)

(declare-fun tp!81220 () Bool)

(assert (=> b!159415 (= e!95760 (and tp!81217 tp!81220))))

(declare-fun b!159414 () Bool)

(assert (=> b!159414 (= e!95760 tp_is_empty!1631)))

(assert (=> b!158285 (= tp!80974 e!95760)))

(declare-fun b!159417 () Bool)

(declare-fun tp!81218 () Bool)

(declare-fun tp!81216 () Bool)

(assert (=> b!159417 (= e!95760 (and tp!81218 tp!81216))))

(declare-fun b!159416 () Bool)

(declare-fun tp!81219 () Bool)

(assert (=> b!159416 (= e!95760 tp!81219)))

(assert (= (and b!158285 ((_ is ElementMatch!703) (regOne!1918 (regex!479 (h!8127 rules!1920))))) b!159414))

(assert (= (and b!158285 ((_ is Concat!1205) (regOne!1918 (regex!479 (h!8127 rules!1920))))) b!159415))

(assert (= (and b!158285 ((_ is Star!703) (regOne!1918 (regex!479 (h!8127 rules!1920))))) b!159416))

(assert (= (and b!158285 ((_ is Union!703) (regOne!1918 (regex!479 (h!8127 rules!1920))))) b!159417))

(declare-fun b!159419 () Bool)

(declare-fun e!95761 () Bool)

(declare-fun tp!81222 () Bool)

(declare-fun tp!81225 () Bool)

(assert (=> b!159419 (= e!95761 (and tp!81222 tp!81225))))

(declare-fun b!159418 () Bool)

(assert (=> b!159418 (= e!95761 tp_is_empty!1631)))

(assert (=> b!158285 (= tp!80977 e!95761)))

(declare-fun b!159421 () Bool)

(declare-fun tp!81223 () Bool)

(declare-fun tp!81221 () Bool)

(assert (=> b!159421 (= e!95761 (and tp!81223 tp!81221))))

(declare-fun b!159420 () Bool)

(declare-fun tp!81224 () Bool)

(assert (=> b!159420 (= e!95761 tp!81224)))

(assert (= (and b!158285 ((_ is ElementMatch!703) (regTwo!1918 (regex!479 (h!8127 rules!1920))))) b!159418))

(assert (= (and b!158285 ((_ is Concat!1205) (regTwo!1918 (regex!479 (h!8127 rules!1920))))) b!159419))

(assert (= (and b!158285 ((_ is Star!703) (regTwo!1918 (regex!479 (h!8127 rules!1920))))) b!159420))

(assert (= (and b!158285 ((_ is Union!703) (regTwo!1918 (regex!479 (h!8127 rules!1920))))) b!159421))

(declare-fun b!159423 () Bool)

(declare-fun e!95762 () Bool)

(declare-fun tp!81227 () Bool)

(declare-fun tp!81230 () Bool)

(assert (=> b!159423 (= e!95762 (and tp!81227 tp!81230))))

(declare-fun b!159422 () Bool)

(assert (=> b!159422 (= e!95762 tp_is_empty!1631)))

(assert (=> b!158286 (= tp!80976 e!95762)))

(declare-fun b!159425 () Bool)

(declare-fun tp!81228 () Bool)

(declare-fun tp!81226 () Bool)

(assert (=> b!159425 (= e!95762 (and tp!81228 tp!81226))))

(declare-fun b!159424 () Bool)

(declare-fun tp!81229 () Bool)

(assert (=> b!159424 (= e!95762 tp!81229)))

(assert (= (and b!158286 ((_ is ElementMatch!703) (reg!1032 (regex!479 (h!8127 rules!1920))))) b!159422))

(assert (= (and b!158286 ((_ is Concat!1205) (reg!1032 (regex!479 (h!8127 rules!1920))))) b!159423))

(assert (= (and b!158286 ((_ is Star!703) (reg!1032 (regex!479 (h!8127 rules!1920))))) b!159424))

(assert (= (and b!158286 ((_ is Union!703) (reg!1032 (regex!479 (h!8127 rules!1920))))) b!159425))

(declare-fun b!159427 () Bool)

(declare-fun e!95763 () Bool)

(declare-fun tp!81232 () Bool)

(declare-fun tp!81235 () Bool)

(assert (=> b!159427 (= e!95763 (and tp!81232 tp!81235))))

(declare-fun b!159426 () Bool)

(assert (=> b!159426 (= e!95763 tp_is_empty!1631)))

(assert (=> b!158320 (= tp!81010 e!95763)))

(declare-fun b!159429 () Bool)

(declare-fun tp!81233 () Bool)

(declare-fun tp!81231 () Bool)

(assert (=> b!159429 (= e!95763 (and tp!81233 tp!81231))))

(declare-fun b!159428 () Bool)

(declare-fun tp!81234 () Bool)

(assert (=> b!159428 (= e!95763 tp!81234)))

(assert (= (and b!158320 ((_ is ElementMatch!703) (regex!479 (h!8127 (t!25604 rules!1920))))) b!159426))

(assert (= (and b!158320 ((_ is Concat!1205) (regex!479 (h!8127 (t!25604 rules!1920))))) b!159427))

(assert (= (and b!158320 ((_ is Star!703) (regex!479 (h!8127 (t!25604 rules!1920))))) b!159428))

(assert (= (and b!158320 ((_ is Union!703) (regex!479 (h!8127 (t!25604 rules!1920))))) b!159429))

(declare-fun b!159432 () Bool)

(declare-fun b_free!5945 () Bool)

(declare-fun b_next!5945 () Bool)

(assert (=> b!159432 (= b_free!5945 (not b_next!5945))))

(declare-fun tp!81239 () Bool)

(declare-fun b_and!9781 () Bool)

(assert (=> b!159432 (= tp!81239 b_and!9781)))

(declare-fun b_free!5947 () Bool)

(declare-fun b_next!5947 () Bool)

(assert (=> b!159432 (= b_free!5947 (not b_next!5947))))

(declare-fun t!25796 () Bool)

(declare-fun tb!5785 () Bool)

(assert (=> (and b!159432 (= (toChars!985 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465)))))) t!25796) tb!5785))

(declare-fun result!8356 () Bool)

(assert (= result!8356 result!8256))

(assert (=> b!159142 t!25796))

(declare-fun t!25798 () Bool)

(declare-fun tb!5787 () Bool)

(assert (=> (and b!159432 (= (toChars!985 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) (toChars!985 (transformation!479 (rule!986 call!6641)))) t!25798) tb!5787))

(declare-fun result!8358 () Bool)

(assert (= result!8358 result!8306))

(assert (=> d!38977 t!25798))

(declare-fun tb!5789 () Bool)

(declare-fun t!25800 () Bool)

(assert (=> (and b!159432 (= (toChars!985 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) (toChars!985 (transformation!479 (rule!986 (ite c!31756 call!6639 (ite c!31758 separatorToken!170 call!6641)))))) t!25800) tb!5789))

(declare-fun result!8360 () Bool)

(assert (= result!8360 result!8236))

(assert (=> d!38523 t!25800))

(assert (=> d!38785 t!25796))

(declare-fun t!25802 () Bool)

(declare-fun tb!5791 () Bool)

(assert (=> (and b!159432 (= (toChars!985 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465))))) t!25802) tb!5791))

(declare-fun result!8362 () Bool)

(assert (= result!8362 result!8192))

(assert (=> b!158081 t!25802))

(assert (=> d!38419 t!25802))

(declare-fun tb!5793 () Bool)

(declare-fun t!25804 () Bool)

(assert (=> (and b!159432 (= (toChars!985 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) (toChars!985 (transformation!479 (rule!986 separatorToken!170)))) t!25804) tb!5793))

(declare-fun result!8364 () Bool)

(assert (= result!8364 result!8176))

(assert (=> b!157882 t!25804))

(declare-fun t!25806 () Bool)

(declare-fun tb!5795 () Bool)

(assert (=> (and b!159432 (= (toChars!985 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) (toChars!985 (transformation!479 (rule!986 (apply!373 lt!47053 0))))) t!25806) tb!5795))

(declare-fun result!8366 () Bool)

(assert (= result!8366 result!8286))

(assert (=> d!38911 t!25806))

(assert (=> d!38397 t!25804))

(declare-fun b_and!9783 () Bool)

(declare-fun tp!81238 () Bool)

(assert (=> b!159432 (= tp!81238 (and (=> t!25800 result!8360) (=> t!25806 result!8366) (=> t!25798 result!8358) (=> t!25804 result!8364) (=> t!25796 result!8356) (=> t!25802 result!8362) b_and!9783))))

(declare-fun e!95764 () Bool)

(assert (=> b!159432 (= e!95764 (and tp!81239 tp!81238))))

(declare-fun tp!81237 () Bool)

(declare-fun e!95767 () Bool)

(declare-fun b!159431 () Bool)

(assert (=> b!159431 (= e!95767 (and tp!81237 (inv!3534 (tag!657 (h!8127 (t!25604 (t!25604 rules!1920))))) (inv!3538 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) e!95764))))

(declare-fun b!159430 () Bool)

(declare-fun e!95765 () Bool)

(declare-fun tp!81236 () Bool)

(assert (=> b!159430 (= e!95765 (and e!95767 tp!81236))))

(assert (=> b!158319 (= tp!81009 e!95765)))

(assert (= b!159431 b!159432))

(assert (= b!159430 b!159431))

(assert (= (and b!158319 ((_ is Cons!2730) (t!25604 (t!25604 rules!1920)))) b!159430))

(declare-fun m!148077 () Bool)

(assert (=> b!159431 m!148077))

(declare-fun m!148079 () Bool)

(assert (=> b!159431 m!148079))

(declare-fun b_lambda!3255 () Bool)

(assert (= b_lambda!3221 (or b!158244 b_lambda!3255)))

(declare-fun bs!14959 () Bool)

(declare-fun d!39055 () Bool)

(assert (= bs!14959 (and d!39055 b!158244)))

(assert (=> bs!14959 (= (dynLambda!973 lambda!4263 (apply!373 lt!47053 0)) (rulesProduceIndividualToken!114 thiss!17480 rules!1920 (apply!373 lt!47053 0)))))

(assert (=> bs!14959 m!145795))

(declare-fun m!148081 () Bool)

(assert (=> bs!14959 m!148081))

(assert (=> d!38845 d!39055))

(declare-fun b_lambda!3257 () Bool)

(assert (= b_lambda!3211 (or b!158036 b_lambda!3257)))

(declare-fun bs!14960 () Bool)

(declare-fun d!39057 () Bool)

(assert (= bs!14960 (and d!39057 b!158036)))

(assert (=> bs!14960 (= (dynLambda!973 lambda!4246 (h!8126 (t!25603 tokens!465))) (rulesProduceIndividualToken!114 thiss!17480 rules!1920 (h!8126 (t!25603 tokens!465))))))

(declare-fun m!148083 () Bool)

(assert (=> bs!14960 m!148083))

(assert (=> d!38779 d!39057))

(declare-fun b_lambda!3259 () Bool)

(assert (= b_lambda!3233 (or (and b!157844 b_free!5911 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!157830 b_free!5915 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!158310 b_free!5927) (and b!157823 b_free!5907 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!158321 b_free!5931 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!159368 b_free!5943 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!159432 b_free!5947 (= (toChars!985 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) b_lambda!3259)))

(declare-fun b_lambda!3261 () Bool)

(assert (= b_lambda!3201 (or b!157824 b_lambda!3261)))

(declare-fun bs!14961 () Bool)

(declare-fun d!39059 () Bool)

(assert (= bs!14961 (and d!39059 b!157824)))

(assert (=> bs!14961 (= (dynLambda!973 lambda!4232 (h!8126 (t!25603 tokens!465))) (not (isSeparator!479 (rule!986 (h!8126 (t!25603 tokens!465))))))))

(assert (=> b!158573 d!39059))

(declare-fun b_lambda!3263 () Bool)

(assert (= b_lambda!3207 (or d!38433 b_lambda!3263)))

(declare-fun bs!14962 () Bool)

(declare-fun d!39061 () Bool)

(assert (= bs!14962 (and d!39061 d!38433)))

(assert (=> bs!14962 (= (dynLambda!973 lambda!4255 (h!8126 (list!976 lt!47053))) (rulesProduceIndividualToken!114 thiss!17480 rules!1920 (h!8126 (list!976 lt!47053))))))

(assert (=> bs!14962 m!146739))

(assert (=> b!158710 d!39061))

(declare-fun b_lambda!3265 () Bool)

(assert (= b_lambda!3199 (or b!158261 b_lambda!3265)))

(declare-fun bs!14963 () Bool)

(declare-fun d!39063 () Bool)

(assert (= bs!14963 (and d!39063 b!158261)))

(assert (=> bs!14963 (= (dynLambda!973 lambda!4264 (h!8126 tokens!465)) (rulesProduceIndividualToken!114 thiss!17480 rules!1920 (h!8126 tokens!465)))))

(declare-fun m!148085 () Bool)

(assert (=> bs!14963 m!148085))

(assert (=> d!38643 d!39063))

(declare-fun b_lambda!3267 () Bool)

(assert (= b_lambda!3213 (or (and b!157844 b_free!5911 (= (toChars!985 (transformation!479 (rule!986 separatorToken!170))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!157830 b_free!5915 (= (toChars!985 (transformation!479 (rule!986 (h!8126 tokens!465)))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!158310 b_free!5927) (and b!157823 b_free!5907 (= (toChars!985 (transformation!479 (h!8127 rules!1920))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!158321 b_free!5931 (= (toChars!985 (transformation!479 (h!8127 (t!25604 rules!1920)))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!159368 b_free!5943 (= (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 (t!25603 tokens!465)))))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) (and b!159432 b_free!5947 (= (toChars!985 (transformation!479 (h!8127 (t!25604 (t!25604 rules!1920))))) (toChars!985 (transformation!479 (rule!986 (h!8126 (t!25603 tokens!465))))))) b_lambda!3267)))

(declare-fun b_lambda!3269 () Bool)

(assert (= b_lambda!3205 (or d!38423 b_lambda!3269)))

(declare-fun bs!14964 () Bool)

(declare-fun d!39065 () Bool)

(assert (= bs!14964 (and d!39065 d!38423)))

(assert (=> bs!14964 (= (dynLambda!973 lambda!4253 (h!8126 (list!976 lt!47052))) (rulesProduceIndividualToken!114 thiss!17480 rules!1920 (h!8126 (list!976 lt!47052))))))

(assert (=> bs!14964 m!146007))

(assert (=> b!158674 d!39065))

(check-sat (not b!158578) (not b!158956) (not b!159338) (not d!38779) (not b!158575) (not d!38833) b_and!9783 (not d!39035) (not b!158054) (not bs!14960) (not b!159331) (not b!158592) (not b!159358) (not b!159405) (not b!158560) (not b!159378) (not b!158792) (not b!159074) (not bs!14959) (not b_next!5929) b_and!9661 (not b!159316) (not d!38643) (not b!158670) (not b!159118) (not b!158936) (not b!158954) (not b!159416) (not b!159413) (not d!39021) (not bs!14962) (not b_next!5905) (not d!38521) (not b!158961) b_and!9767 (not d!38703) (not b_next!5911) (not d!38529) (not b!158746) (not b!158944) (not d!38545) (not d!38785) (not b!159409) (not b!159195) (not b!158352) (not b!159068) b_and!9763 (not b!159312) (not b!159322) (not b!159391) (not bm!6676) (not b!158567) (not b!159193) (not b!159384) (not b!159198) (not b!158908) b_and!9593 (not b!158416) (not b!158580) (not d!38539) (not b!159113) (not b!159420) (not b_lambda!3193) (not b!159382) (not b!158760) (not b!159332) (not b_next!5909) (not bm!6661) (not b!158526) (not b!159311) (not b!158783) (not d!39033) (not b!158765) (not d!38975) b_and!9779 (not d!38497) (not d!38723) (not b_lambda!3267) (not b!159419) (not b!159302) (not b!158752) (not b!158725) (not d!38761) (not d!38659) (not b!158958) (not b!159182) (not b!159411) (not b!158748) (not b!159210) (not bm!6695) (not tb!5689) (not d!39001) (not d!38745) (not b!158705) (not b!159030) (not d!39039) (not d!38897) (not b_next!5915) (not b!159387) (not d!38713) (not b!159323) (not b!158948) (not b!159077) (not b!158721) (not b!158420) (not b!159383) (not d!38653) (not d!38719) (not d!38721) (not b_next!5943) b_and!9665 (not b!158661) (not b!158568) (not d!38651) (not bm!6688) (not tb!5719) (not d!38793) (not b!159204) (not d!39005) (not b!158334) (not b!158937) (not bm!6644) (not b!158359) (not b!159425) (not d!38505) (not b!158666) (not b!158738) (not b!159090) (not b!158745) (not b_next!5927) (not b!159366) (not b!159032) (not b!158417) (not b!158675) (not b!159428) (not d!38667) (not b!159189) (not b!158709) (not d!38701) (not b!158564) (not b!158743) (not d!38901) (not b!158387) (not b!159381) (not b!159143) (not b!159403) (not b!158593) (not b!158501) (not d!38743) (not b!158664) (not b!158824) (not d!38839) (not d!38973) (not b!158339) (not b!158386) (not d!38949) (not b!158953) (not d!38727) (not b!158950) (not b_next!5945) (not d!38657) (not b!158559) (not d!38551) (not d!38661) (not b!158358) (not b!159379) (not b!158810) (not b_lambda!3261) (not d!38547) (not b!159114) (not b!159347) (not b!159139) (not b!159054) (not d!38875) (not b_lambda!3269) (not b!159360) (not b!158520) (not b!159055) (not b!159187) (not b!158718) (not b!158727) (not b_lambda!3255) (not b!158742) (not bm!6690) (not b_lambda!3259) (not b!158340) (not b!158935) (not b!158361) (not d!38509) (not d!38649) (not b!159333) (not b!159417) (not d!38847) (not bm!6675) b_and!9597 (not b!159429) (not b!158934) (not b!159273) (not b!159404) (not b!159200) (not d!38927) (not b!159407) (not b!158563) (not b!158941) b_and!9761 (not b!158589) (not d!38519) (not b!159026) (not b!158562) (not d!38771) (not b!159202) (not b!158741) (not b!158354) (not b!158863) (not b_next!5941) (not b!159230) (not b!158788) (not b!159306) b_and!9781 (not tb!5739) (not b_lambda!3235) tp_is_empty!1631 (not d!38923) (not d!38871) (not b!159120) (not d!38755) (not b!159228) (not b_lambda!3191) (not b!158561) (not b!158708) (not b!159303) (not b!158770) (not b_lambda!3265) (not b!159415) (not b!158911) (not b!158574) (not b!159141) (not b!159119) (not d!38553) (not b!159192) (not b!158405) (not b!159314) (not bm!6647) (not b!158346) (not b!159412) (not b!158713) (not d!38977) (not b_next!5925) (not d!38589) (not d!38663) (not b!158771) (not bs!14964) (not b!159123) (not b!159430) (not b!159367) (not d!39037) (not d!38933) (not b!159421) (not b!159254) (not b!159027) (not d!39009) (not d!38669) (not d!38911) (not b!158367) (not b!159315) (not b!159188) b_and!9601 (not b!158744) (not b!158581) (not b!159142) (not b!159390) (not d!38731) (not b!158579) (not bs!14963) (not d!38811) (not b_next!5907) (not d!38807) (not d!38641) (not b!158584) (not b!159167) (not d!39031) (not b!158557) (not b_lambda!3185) (not b!159095) (not b_next!5947) (not bm!6679) (not b!158668) (not b!159184) (not b!158949) (not d!38533) (not b_next!5931) (not b!159389) (not b!158572) (not b!158427) (not b!158671) (not b!158793) (not b!159233) (not d!38503) (not b!159140) (not b!158772) (not d!38535) (not b!158658) (not b!158588) (not b!158669) (not b!159396) (not b_lambda!3189) (not bm!6656) (not d!38549) (not b!158558) (not b_lambda!3263) (not b_lambda!3227) (not b!159423) (not bm!6660) (not b!158530) (not d!38537) (not d!38611) (not d!38647) (not b!158338) (not b!159207) (not b_lambda!3195) (not d!38959) (not b!158595) (not b!158333) (not b!159255) (not d!38527) (not b!158773) (not b!159349) (not b!159028) (not b!158750) (not b_lambda!3187) (not b!158839) (not b!158711) (not d!38705) (not b!159329) (not b!159106) (not b!159399) (not bm!6694) (not d!38821) (not b!158345) (not b!158717) (not d!38969) (not d!38715) (not b!159365) (not b!159025) (not d!38845) (not b!159359) (not b!159304) (not b_next!5913) (not b!159206) (not d!38665) (not d!39007) (not bm!6680) (not b!159427) (not d!39041) (not b!158841) (not b!159431) (not d!38597) (not bm!6691) (not b!159324) (not d!38739) (not b!158715) (not b!158811) (not b!159196) (not b!159308) (not b!158356) b_and!9759 (not bm!6673) (not d!39029) (not d!38987) (not d!38817) (not b!159408) (not b!158500) (not b!159148) (not d!38983) (not b!159031) (not d!38523) (not b!158499) (not b!159424) (not b!159053) (not tb!5669) (not b!159351) (not b!158660) (not b_lambda!3257) (not b!159256) (not b!158385) (not b!159310) (not b!158766) (not d!38791) (not b!159253) (not b!158659) (not b!159307) (not b!159394) (not bm!6657) (not d!38747) (not b!158719) (not b!158761) (not b!157888) (not b!159393) b_and!9765 (not d!38965) (not b!158576) (not b!159232) (not b!158726) (not b!159100) (not b!158585) b_and!9777 (not b!158429) (not b!159377) (not d!38805) (not d!39015) (not b!159395) (not d!38843) (not d!38971) (not b!159402) (not d!38783))
(check-sat b_and!9783 (not b_next!5911) (not b_next!5909) b_and!9779 (not b_next!5927) (not b_next!5945) b_and!9597 b_and!9781 (not b_next!5925) b_and!9601 (not b_next!5931) (not b_next!5913) b_and!9759 b_and!9765 b_and!9777 (not b_next!5929) b_and!9661 (not b_next!5905) b_and!9767 b_and!9593 b_and!9763 (not b_next!5915) b_and!9665 (not b_next!5943) b_and!9761 (not b_next!5941) (not b_next!5947) (not b_next!5907))
