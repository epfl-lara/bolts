; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16626 () Bool)

(assert start!16626)

(declare-fun b!155018 () Bool)

(declare-fun b_free!5713 () Bool)

(declare-fun b_next!5713 () Bool)

(assert (=> b!155018 (= b_free!5713 (not b_next!5713))))

(declare-fun tp!79954 () Bool)

(declare-fun b_and!9205 () Bool)

(assert (=> b!155018 (= tp!79954 b_and!9205)))

(declare-fun b_free!5715 () Bool)

(declare-fun b_next!5715 () Bool)

(assert (=> b!155018 (= b_free!5715 (not b_next!5715))))

(declare-fun tp!79952 () Bool)

(declare-fun b_and!9207 () Bool)

(assert (=> b!155018 (= tp!79952 b_and!9207)))

(declare-fun b!155020 () Bool)

(declare-fun b_free!5717 () Bool)

(declare-fun b_next!5717 () Bool)

(assert (=> b!155020 (= b_free!5717 (not b_next!5717))))

(declare-fun tp!79957 () Bool)

(declare-fun b_and!9209 () Bool)

(assert (=> b!155020 (= tp!79957 b_and!9209)))

(declare-fun b_free!5719 () Bool)

(declare-fun b_next!5719 () Bool)

(assert (=> b!155020 (= b_free!5719 (not b_next!5719))))

(declare-fun tp!79949 () Bool)

(declare-fun b_and!9211 () Bool)

(assert (=> b!155020 (= tp!79949 b_and!9211)))

(declare-fun b!155014 () Bool)

(declare-fun b_free!5721 () Bool)

(declare-fun b_next!5721 () Bool)

(assert (=> b!155014 (= b_free!5721 (not b_next!5721))))

(declare-fun tp!79948 () Bool)

(declare-fun b_and!9213 () Bool)

(assert (=> b!155014 (= tp!79948 b_and!9213)))

(declare-fun b_free!5723 () Bool)

(declare-fun b_next!5723 () Bool)

(assert (=> b!155014 (= b_free!5723 (not b_next!5723))))

(declare-fun tp!79958 () Bool)

(declare-fun b_and!9215 () Bool)

(assert (=> b!155014 (= tp!79958 b_and!9215)))

(declare-fun b!155012 () Bool)

(declare-fun res!70730 () Bool)

(declare-fun e!92863 () Bool)

(assert (=> b!155012 (=> (not res!70730) (not e!92863))))

(declare-datatypes ((List!2685 0))(
  ( (Nil!2675) (Cons!2675 (h!8072 (_ BitVec 16)) (t!25283 List!2685)) )
))
(declare-datatypes ((TokenValue!489 0))(
  ( (FloatLiteralValue!978 (text!3868 List!2685)) (TokenValueExt!488 (__x!2465 Int)) (Broken!2445 (value!17599 List!2685)) (Object!498) (End!489) (Def!489) (Underscore!489) (Match!489) (Else!489) (Error!489) (Case!489) (If!489) (Extends!489) (Abstract!489) (Class!489) (Val!489) (DelimiterValue!978 (del!549 List!2685)) (KeywordValue!495 (value!17600 List!2685)) (CommentValue!978 (value!17601 List!2685)) (WhitespaceValue!978 (value!17602 List!2685)) (IndentationValue!489 (value!17603 List!2685)) (String!3524) (Int32!489) (Broken!2446 (value!17604 List!2685)) (Boolean!490) (Unit!2099) (OperatorValue!492 (op!549 List!2685)) (IdentifierValue!978 (value!17605 List!2685)) (IdentifierValue!979 (value!17606 List!2685)) (WhitespaceValue!979 (value!17607 List!2685)) (True!978) (False!978) (Broken!2447 (value!17608 List!2685)) (Broken!2448 (value!17609 List!2685)) (True!979) (RightBrace!489) (RightBracket!489) (Colon!489) (Null!489) (Comma!489) (LeftBracket!489) (False!979) (LeftBrace!489) (ImaginaryLiteralValue!489 (text!3869 List!2685)) (StringLiteralValue!1467 (value!17610 List!2685)) (EOFValue!489 (value!17611 List!2685)) (IdentValue!489 (value!17612 List!2685)) (DelimiterValue!979 (value!17613 List!2685)) (DedentValue!489 (value!17614 List!2685)) (NewLineValue!489 (value!17615 List!2685)) (IntegerValue!1467 (value!17616 (_ BitVec 32)) (text!3870 List!2685)) (IntegerValue!1468 (value!17617 Int) (text!3871 List!2685)) (Times!489) (Or!489) (Equal!489) (Minus!489) (Broken!2449 (value!17618 List!2685)) (And!489) (Div!489) (LessEqual!489) (Mod!489) (Concat!1180) (Not!489) (Plus!489) (SpaceValue!489 (value!17619 List!2685)) (IntegerValue!1469 (value!17620 Int) (text!3872 List!2685)) (StringLiteralValue!1468 (text!3873 List!2685)) (FloatLiteralValue!979 (text!3874 List!2685)) (BytesLiteralValue!489 (value!17621 List!2685)) (CommentValue!979 (value!17622 List!2685)) (StringLiteralValue!1469 (value!17623 List!2685)) (ErrorTokenValue!489 (msg!550 List!2685)) )
))
(declare-datatypes ((C!2304 0))(
  ( (C!2305 (val!1038 Int)) )
))
(declare-datatypes ((List!2686 0))(
  ( (Nil!2676) (Cons!2676 (h!8073 C!2304) (t!25284 List!2686)) )
))
(declare-datatypes ((IArray!1513 0))(
  ( (IArray!1514 (innerList!814 List!2686)) )
))
(declare-datatypes ((Conc!756 0))(
  ( (Node!756 (left!2020 Conc!756) (right!2350 Conc!756) (csize!1742 Int) (cheight!967 Int)) (Leaf!1329 (xs!3351 IArray!1513) (csize!1743 Int)) (Empty!756) )
))
(declare-datatypes ((BalanceConc!1520 0))(
  ( (BalanceConc!1521 (c!31215 Conc!756)) )
))
(declare-datatypes ((TokenValueInjection!750 0))(
  ( (TokenValueInjection!751 (toValue!1110 Int) (toChars!969 Int)) )
))
(declare-datatypes ((String!3525 0))(
  ( (String!3526 (value!17624 String)) )
))
(declare-datatypes ((Regex!691 0))(
  ( (ElementMatch!691 (c!31216 C!2304)) (Concat!1181 (regOne!1894 Regex!691) (regTwo!1894 Regex!691)) (EmptyExpr!691) (Star!691 (reg!1020 Regex!691)) (EmptyLang!691) (Union!691 (regOne!1895 Regex!691) (regTwo!1895 Regex!691)) )
))
(declare-datatypes ((Rule!734 0))(
  ( (Rule!735 (regex!467 Regex!691) (tag!645 String!3525) (isSeparator!467 Bool) (transformation!467 TokenValueInjection!750)) )
))
(declare-datatypes ((Token!678 0))(
  ( (Token!679 (value!17625 TokenValue!489) (rule!974 Rule!734) (size!2273 Int) (originalCharacters!510 List!2686)) )
))
(declare-fun separatorToken!170 () Token!678)

(assert (=> b!155012 (= res!70730 (isSeparator!467 (rule!974 separatorToken!170)))))

(declare-fun e!92859 () Bool)

(declare-fun e!92868 () Bool)

(declare-datatypes ((List!2687 0))(
  ( (Nil!2677) (Cons!2677 (h!8074 Rule!734) (t!25285 List!2687)) )
))
(declare-fun rules!1920 () List!2687)

(declare-fun tp!79959 () Bool)

(declare-fun b!155013 () Bool)

(declare-fun inv!3478 (String!3525) Bool)

(declare-fun inv!3481 (TokenValueInjection!750) Bool)

(assert (=> b!155013 (= e!92868 (and tp!79959 (inv!3478 (tag!645 (h!8074 rules!1920))) (inv!3481 (transformation!467 (h!8074 rules!1920))) e!92859))))

(declare-fun e!92869 () Bool)

(assert (=> b!155014 (= e!92869 (and tp!79948 tp!79958))))

(declare-fun b!155015 () Bool)

(declare-fun e!92871 () Bool)

(assert (=> b!155015 (= e!92871 (not true))))

(declare-fun lt!45804 () Bool)

(declare-datatypes ((LexerInterface!353 0))(
  ( (LexerInterfaceExt!350 (__x!2466 Int)) (Lexer!351) )
))
(declare-fun thiss!17480 () LexerInterface!353)

(declare-datatypes ((List!2688 0))(
  ( (Nil!2678) (Cons!2678 (h!8075 Token!678) (t!25286 List!2688)) )
))
(declare-fun tokens!465 () List!2688)

(declare-fun rulesProduceEachTokenIndividuallyList!91 (LexerInterface!353 List!2687 List!2688) Bool)

(assert (=> b!155015 (= lt!45804 (rulesProduceEachTokenIndividuallyList!91 thiss!17480 rules!1920 (t!25286 tokens!465)))))

(declare-fun lt!45807 () List!2686)

(declare-fun lt!45806 () List!2686)

(declare-fun lt!45803 () List!2686)

(declare-fun lt!45802 () List!2686)

(declare-fun ++!582 (List!2686 List!2686) List!2686)

(assert (=> b!155015 (= (++!582 (++!582 lt!45806 lt!45802) lt!45803) (++!582 lt!45806 lt!45807))))

(declare-datatypes ((Unit!2100 0))(
  ( (Unit!2101) )
))
(declare-fun lt!45808 () Unit!2100)

(declare-fun lemmaConcatAssociativity!148 (List!2686 List!2686 List!2686) Unit!2100)

(assert (=> b!155015 (= lt!45808 (lemmaConcatAssociativity!148 lt!45806 lt!45802 lt!45803))))

(declare-fun list!949 (BalanceConc!1520) List!2686)

(declare-fun charsOf!122 (Token!678) BalanceConc!1520)

(assert (=> b!155015 (= lt!45806 (list!949 (charsOf!122 (h!8075 tokens!465))))))

(assert (=> b!155015 (= lt!45807 (++!582 lt!45802 lt!45803))))

(declare-fun printWithSeparatorTokenWhenNeededList!46 (LexerInterface!353 List!2687 List!2688 Token!678) List!2686)

(assert (=> b!155015 (= lt!45803 (printWithSeparatorTokenWhenNeededList!46 thiss!17480 rules!1920 (t!25286 tokens!465) separatorToken!170))))

(assert (=> b!155015 (= lt!45802 (list!949 (charsOf!122 separatorToken!170)))))

(declare-fun b!155016 () Bool)

(declare-fun res!70735 () Bool)

(declare-fun e!92858 () Bool)

(assert (=> b!155016 (=> (not res!70735) (not e!92858))))

(declare-fun rulesInvariant!319 (LexerInterface!353 List!2687) Bool)

(assert (=> b!155016 (= res!70735 (rulesInvariant!319 thiss!17480 rules!1920))))

(declare-fun b!155017 () Bool)

(declare-fun res!70734 () Bool)

(assert (=> b!155017 (=> (not res!70734) (not e!92863))))

(declare-fun rulesProduceIndividualToken!102 (LexerInterface!353 List!2687 Token!678) Bool)

(assert (=> b!155017 (= res!70734 (rulesProduceIndividualToken!102 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!92866 () Bool)

(assert (=> b!155018 (= e!92866 (and tp!79954 tp!79952))))

(declare-fun b!155019 () Bool)

(declare-fun res!70736 () Bool)

(assert (=> b!155019 (=> (not res!70736) (not e!92871))))

(declare-fun lt!45805 () List!2686)

(declare-fun lt!45810 () List!2686)

(declare-fun seqFromList!311 (List!2686) BalanceConc!1520)

(assert (=> b!155019 (= res!70736 (= (list!949 (seqFromList!311 lt!45805)) lt!45810))))

(assert (=> b!155020 (= e!92859 (and tp!79957 tp!79949))))

(declare-fun b!155021 () Bool)

(assert (=> b!155021 (= e!92863 e!92871)))

(declare-fun res!70733 () Bool)

(assert (=> b!155021 (=> (not res!70733) (not e!92871))))

(assert (=> b!155021 (= res!70733 (= lt!45805 lt!45810))))

(declare-datatypes ((IArray!1515 0))(
  ( (IArray!1516 (innerList!815 List!2688)) )
))
(declare-datatypes ((Conc!757 0))(
  ( (Node!757 (left!2021 Conc!757) (right!2351 Conc!757) (csize!1744 Int) (cheight!968 Int)) (Leaf!1330 (xs!3352 IArray!1515) (csize!1745 Int)) (Empty!757) )
))
(declare-datatypes ((BalanceConc!1522 0))(
  ( (BalanceConc!1523 (c!31217 Conc!757)) )
))
(declare-fun lt!45809 () BalanceConc!1522)

(declare-fun printWithSeparatorTokenWhenNeededRec!36 (LexerInterface!353 List!2687 BalanceConc!1522 Token!678 Int) BalanceConc!1520)

(assert (=> b!155021 (= lt!45810 (list!949 (printWithSeparatorTokenWhenNeededRec!36 thiss!17480 rules!1920 lt!45809 separatorToken!170 0)))))

(assert (=> b!155021 (= lt!45805 (printWithSeparatorTokenWhenNeededList!46 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!79955 () Bool)

(declare-fun b!155022 () Bool)

(declare-fun e!92872 () Bool)

(assert (=> b!155022 (= e!92872 (and tp!79955 (inv!3478 (tag!645 (rule!974 separatorToken!170))) (inv!3481 (transformation!467 (rule!974 separatorToken!170))) e!92866))))

(declare-fun b!155023 () Bool)

(declare-fun e!92874 () Bool)

(declare-fun tp!79956 () Bool)

(declare-fun e!92861 () Bool)

(declare-fun inv!21 (TokenValue!489) Bool)

(assert (=> b!155023 (= e!92861 (and (inv!21 (value!17625 (h!8075 tokens!465))) e!92874 tp!79956))))

(declare-fun b!155024 () Bool)

(declare-fun res!70737 () Bool)

(assert (=> b!155024 (=> (not res!70737) (not e!92858))))

(declare-fun isEmpty!1068 (List!2687) Bool)

(assert (=> b!155024 (= res!70737 (not (isEmpty!1068 rules!1920)))))

(declare-fun b!155025 () Bool)

(declare-fun res!70739 () Bool)

(assert (=> b!155025 (=> (not res!70739) (not e!92863))))

(get-info :version)

(assert (=> b!155025 (= res!70739 ((_ is Cons!2678) tokens!465))))

(declare-fun tp!79947 () Bool)

(declare-fun b!155026 () Bool)

(assert (=> b!155026 (= e!92874 (and tp!79947 (inv!3478 (tag!645 (rule!974 (h!8075 tokens!465)))) (inv!3481 (transformation!467 (rule!974 (h!8075 tokens!465)))) e!92869))))

(declare-fun b!155027 () Bool)

(assert (=> b!155027 (= e!92858 e!92863)))

(declare-fun res!70732 () Bool)

(assert (=> b!155027 (=> (not res!70732) (not e!92863))))

(declare-fun rulesProduceEachTokenIndividually!145 (LexerInterface!353 List!2687 BalanceConc!1522) Bool)

(assert (=> b!155027 (= res!70732 (rulesProduceEachTokenIndividually!145 thiss!17480 rules!1920 lt!45809))))

(declare-fun seqFromList!312 (List!2688) BalanceConc!1522)

(assert (=> b!155027 (= lt!45809 (seqFromList!312 tokens!465))))

(declare-fun b!155029 () Bool)

(declare-fun e!92860 () Bool)

(declare-fun tp!79951 () Bool)

(declare-fun inv!3482 (Token!678) Bool)

(assert (=> b!155029 (= e!92860 (and (inv!3482 (h!8075 tokens!465)) e!92861 tp!79951))))

(declare-fun b!155030 () Bool)

(declare-fun res!70729 () Bool)

(assert (=> b!155030 (=> (not res!70729) (not e!92863))))

(declare-fun sepAndNonSepRulesDisjointChars!56 (List!2687 List!2687) Bool)

(assert (=> b!155030 (= res!70729 (sepAndNonSepRulesDisjointChars!56 rules!1920 rules!1920))))

(declare-fun tp!79953 () Bool)

(declare-fun e!92870 () Bool)

(declare-fun b!155031 () Bool)

(assert (=> b!155031 (= e!92870 (and (inv!21 (value!17625 separatorToken!170)) e!92872 tp!79953))))

(declare-fun b!155032 () Bool)

(declare-fun e!92865 () Bool)

(declare-fun tp!79950 () Bool)

(assert (=> b!155032 (= e!92865 (and e!92868 tp!79950))))

(declare-fun b!155028 () Bool)

(declare-fun res!70738 () Bool)

(assert (=> b!155028 (=> (not res!70738) (not e!92863))))

(declare-fun lambda!4086 () Int)

(declare-fun forall!469 (List!2688 Int) Bool)

(assert (=> b!155028 (= res!70738 (forall!469 tokens!465 lambda!4086))))

(declare-fun res!70731 () Bool)

(assert (=> start!16626 (=> (not res!70731) (not e!92858))))

(assert (=> start!16626 (= res!70731 ((_ is Lexer!351) thiss!17480))))

(assert (=> start!16626 e!92858))

(assert (=> start!16626 true))

(assert (=> start!16626 e!92865))

(assert (=> start!16626 (and (inv!3482 separatorToken!170) e!92870)))

(assert (=> start!16626 e!92860))

(assert (= (and start!16626 res!70731) b!155024))

(assert (= (and b!155024 res!70737) b!155016))

(assert (= (and b!155016 res!70735) b!155027))

(assert (= (and b!155027 res!70732) b!155017))

(assert (= (and b!155017 res!70734) b!155012))

(assert (= (and b!155012 res!70730) b!155028))

(assert (= (and b!155028 res!70738) b!155030))

(assert (= (and b!155030 res!70729) b!155025))

(assert (= (and b!155025 res!70739) b!155021))

(assert (= (and b!155021 res!70733) b!155019))

(assert (= (and b!155019 res!70736) b!155015))

(assert (= b!155013 b!155020))

(assert (= b!155032 b!155013))

(assert (= (and start!16626 ((_ is Cons!2677) rules!1920)) b!155032))

(assert (= b!155022 b!155018))

(assert (= b!155031 b!155022))

(assert (= start!16626 b!155031))

(assert (= b!155026 b!155014))

(assert (= b!155023 b!155026))

(assert (= b!155029 b!155023))

(assert (= (and start!16626 ((_ is Cons!2678) tokens!465)) b!155029))

(declare-fun m!141137 () Bool)

(assert (=> b!155013 m!141137))

(declare-fun m!141139 () Bool)

(assert (=> b!155013 m!141139))

(declare-fun m!141141 () Bool)

(assert (=> b!155016 m!141141))

(declare-fun m!141143 () Bool)

(assert (=> b!155017 m!141143))

(declare-fun m!141145 () Bool)

(assert (=> b!155015 m!141145))

(declare-fun m!141147 () Bool)

(assert (=> b!155015 m!141147))

(declare-fun m!141149 () Bool)

(assert (=> b!155015 m!141149))

(declare-fun m!141151 () Bool)

(assert (=> b!155015 m!141151))

(declare-fun m!141153 () Bool)

(assert (=> b!155015 m!141153))

(declare-fun m!141155 () Bool)

(assert (=> b!155015 m!141155))

(declare-fun m!141157 () Bool)

(assert (=> b!155015 m!141157))

(declare-fun m!141159 () Bool)

(assert (=> b!155015 m!141159))

(assert (=> b!155015 m!141157))

(assert (=> b!155015 m!141147))

(declare-fun m!141161 () Bool)

(assert (=> b!155015 m!141161))

(declare-fun m!141163 () Bool)

(assert (=> b!155015 m!141163))

(declare-fun m!141165 () Bool)

(assert (=> b!155015 m!141165))

(assert (=> b!155015 m!141151))

(declare-fun m!141167 () Bool)

(assert (=> b!155029 m!141167))

(declare-fun m!141169 () Bool)

(assert (=> b!155031 m!141169))

(declare-fun m!141171 () Bool)

(assert (=> b!155024 m!141171))

(declare-fun m!141173 () Bool)

(assert (=> b!155023 m!141173))

(declare-fun m!141175 () Bool)

(assert (=> b!155027 m!141175))

(declare-fun m!141177 () Bool)

(assert (=> b!155027 m!141177))

(declare-fun m!141179 () Bool)

(assert (=> b!155030 m!141179))

(declare-fun m!141181 () Bool)

(assert (=> b!155021 m!141181))

(assert (=> b!155021 m!141181))

(declare-fun m!141183 () Bool)

(assert (=> b!155021 m!141183))

(declare-fun m!141185 () Bool)

(assert (=> b!155021 m!141185))

(declare-fun m!141187 () Bool)

(assert (=> b!155022 m!141187))

(declare-fun m!141189 () Bool)

(assert (=> b!155022 m!141189))

(declare-fun m!141191 () Bool)

(assert (=> b!155019 m!141191))

(assert (=> b!155019 m!141191))

(declare-fun m!141193 () Bool)

(assert (=> b!155019 m!141193))

(declare-fun m!141195 () Bool)

(assert (=> b!155028 m!141195))

(declare-fun m!141197 () Bool)

(assert (=> start!16626 m!141197))

(declare-fun m!141199 () Bool)

(assert (=> b!155026 m!141199))

(declare-fun m!141201 () Bool)

(assert (=> b!155026 m!141201))

(check-sat (not b_next!5715) (not b!155015) b_and!9211 (not b!155026) (not b!155029) (not b!155016) b_and!9209 (not b!155021) (not b!155022) b_and!9207 (not b_next!5717) (not b_next!5713) b_and!9215 (not b!155019) (not b_next!5721) (not b_next!5723) (not b!155017) (not b_next!5719) (not b!155024) b_and!9213 (not b!155031) (not b!155027) (not b!155013) (not b!155032) b_and!9205 (not b!155028) (not start!16626) (not b!155030) (not b!155023))
(check-sat b_and!9215 (not b_next!5715) (not b_next!5719) b_and!9213 b_and!9211 b_and!9209 b_and!9205 b_and!9207 (not b_next!5717) (not b_next!5713) (not b_next!5721) (not b_next!5723))
