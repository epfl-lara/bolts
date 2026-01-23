; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103110 () Bool)

(assert start!103110)

(declare-fun b!1171119 () Bool)

(declare-fun e!751027 () Bool)

(assert (=> b!1171119 (= e!751027 true)))

(declare-fun b!1171118 () Bool)

(declare-fun e!751026 () Bool)

(assert (=> b!1171118 (= e!751026 e!751027)))

(declare-fun b!1171109 () Bool)

(assert (=> b!1171109 e!751026))

(assert (= b!1171118 b!1171119))

(assert (= b!1171109 b!1171118))

(declare-fun e!751009 () Bool)

(declare-datatypes ((List!11612 0))(
  ( (Nil!11588) (Cons!11588 (h!16989 (_ BitVec 16)) (t!110756 List!11612)) )
))
(declare-datatypes ((TokenValue!2087 0))(
  ( (FloatLiteralValue!4174 (text!15054 List!11612)) (TokenValueExt!2086 (__x!7885 Int)) (Broken!10435 (value!65569 List!11612)) (Object!2110) (End!2087) (Def!2087) (Underscore!2087) (Match!2087) (Else!2087) (Error!2087) (Case!2087) (If!2087) (Extends!2087) (Abstract!2087) (Class!2087) (Val!2087) (DelimiterValue!4174 (del!2147 List!11612)) (KeywordValue!2093 (value!65570 List!11612)) (CommentValue!4174 (value!65571 List!11612)) (WhitespaceValue!4174 (value!65572 List!11612)) (IndentationValue!2087 (value!65573 List!11612)) (String!14022) (Int32!2087) (Broken!10436 (value!65574 List!11612)) (Boolean!2088) (Unit!17787) (OperatorValue!2090 (op!2147 List!11612)) (IdentifierValue!4174 (value!65575 List!11612)) (IdentifierValue!4175 (value!65576 List!11612)) (WhitespaceValue!4175 (value!65577 List!11612)) (True!4174) (False!4174) (Broken!10437 (value!65578 List!11612)) (Broken!10438 (value!65579 List!11612)) (True!4175) (RightBrace!2087) (RightBracket!2087) (Colon!2087) (Null!2087) (Comma!2087) (LeftBracket!2087) (False!4175) (LeftBrace!2087) (ImaginaryLiteralValue!2087 (text!15055 List!11612)) (StringLiteralValue!6261 (value!65580 List!11612)) (EOFValue!2087 (value!65581 List!11612)) (IdentValue!2087 (value!65582 List!11612)) (DelimiterValue!4175 (value!65583 List!11612)) (DedentValue!2087 (value!65584 List!11612)) (NewLineValue!2087 (value!65585 List!11612)) (IntegerValue!6261 (value!65586 (_ BitVec 32)) (text!15056 List!11612)) (IntegerValue!6262 (value!65587 Int) (text!15057 List!11612)) (Times!2087) (Or!2087) (Equal!2087) (Minus!2087) (Broken!10439 (value!65588 List!11612)) (And!2087) (Div!2087) (LessEqual!2087) (Mod!2087) (Concat!5378) (Not!2087) (Plus!2087) (SpaceValue!2087 (value!65589 List!11612)) (IntegerValue!6263 (value!65590 Int) (text!15058 List!11612)) (StringLiteralValue!6262 (text!15059 List!11612)) (FloatLiteralValue!4175 (text!15060 List!11612)) (BytesLiteralValue!2087 (value!65591 List!11612)) (CommentValue!4175 (value!65592 List!11612)) (StringLiteralValue!6263 (value!65593 List!11612)) (ErrorTokenValue!2087 (msg!2148 List!11612)) )
))
(declare-datatypes ((C!6900 0))(
  ( (C!6901 (val!3706 Int)) )
))
(declare-datatypes ((Regex!3291 0))(
  ( (ElementMatch!3291 (c!195325 C!6900)) (Concat!5379 (regOne!7094 Regex!3291) (regTwo!7094 Regex!3291)) (EmptyExpr!3291) (Star!3291 (reg!3620 Regex!3291)) (EmptyLang!3291) (Union!3291 (regOne!7095 Regex!3291) (regTwo!7095 Regex!3291)) )
))
(declare-datatypes ((String!14023 0))(
  ( (String!14024 (value!65594 String)) )
))
(declare-datatypes ((List!11613 0))(
  ( (Nil!11589) (Cons!11589 (h!16990 C!6900) (t!110757 List!11613)) )
))
(declare-datatypes ((IArray!7613 0))(
  ( (IArray!7614 (innerList!3864 List!11613)) )
))
(declare-datatypes ((Conc!3804 0))(
  ( (Node!3804 (left!10136 Conc!3804) (right!10466 Conc!3804) (csize!7838 Int) (cheight!4015 Int)) (Leaf!5825 (xs!6509 IArray!7613) (csize!7839 Int)) (Empty!3804) )
))
(declare-datatypes ((BalanceConc!7630 0))(
  ( (BalanceConc!7631 (c!195326 Conc!3804)) )
))
(declare-datatypes ((TokenValueInjection!3874 0))(
  ( (TokenValueInjection!3875 (toValue!3122 Int) (toChars!2981 Int)) )
))
(declare-datatypes ((Rule!3842 0))(
  ( (Rule!3843 (regex!2021 Regex!3291) (tag!2283 String!14023) (isSeparator!2021 Bool) (transformation!2021 TokenValueInjection!3874)) )
))
(declare-datatypes ((Token!3704 0))(
  ( (Token!3705 (value!65595 TokenValue!2087) (rule!3442 Rule!3842) (size!9135 Int) (originalCharacters!2575 List!11613)) )
))
(declare-datatypes ((List!11614 0))(
  ( (Nil!11590) (Cons!11590 (h!16991 Token!3704) (t!110758 List!11614)) )
))
(declare-datatypes ((List!11615 0))(
  ( (Nil!11591) (Cons!11591 (h!16992 Rule!3842) (t!110759 List!11615)) )
))
(declare-datatypes ((IArray!7615 0))(
  ( (IArray!7616 (innerList!3865 List!11614)) )
))
(declare-datatypes ((Conc!3805 0))(
  ( (Node!3805 (left!10137 Conc!3805) (right!10467 Conc!3805) (csize!7840 Int) (cheight!4016 Int)) (Leaf!5826 (xs!6510 IArray!7615) (csize!7841 Int)) (Empty!3805) )
))
(declare-datatypes ((BalanceConc!7632 0))(
  ( (BalanceConc!7633 (c!195327 Conc!3805)) )
))
(declare-datatypes ((PrintableTokens!728 0))(
  ( (PrintableTokens!729 (rules!9642 List!11615) (tokens!1654 BalanceConc!7632)) )
))
(declare-fun thiss!10527 () PrintableTokens!728)

(declare-fun lt!401773 () List!11614)

(declare-fun e!751010 () Bool)

(declare-fun b!1171092 () Bool)

(declare-datatypes ((LexerInterface!1716 0))(
  ( (LexerInterfaceExt!1713 (__x!7886 Int)) (Lexer!1714) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!582 (LexerInterface!1716 List!11615 List!11614) Bool)

(assert (=> b!1171092 (= e!751010 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401773) e!751009))))

(declare-fun res!529058 () Bool)

(assert (=> b!1171092 (=> res!529058 e!751009)))

(get-info :version)

(assert (=> b!1171092 (= res!529058 (not ((_ is Cons!11590) lt!401773)))))

(declare-fun b!1171093 () Bool)

(declare-fun e!751005 () Bool)

(assert (=> b!1171093 (= e!751009 e!751005)))

(declare-fun res!529068 () Bool)

(assert (=> b!1171093 (=> (not res!529068) (not e!751005))))

(declare-fun rulesProduceIndividualToken!751 (LexerInterface!1716 List!11615 Token!3704) Bool)

(assert (=> b!1171093 (= res!529068 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401773)))))

(declare-fun b!1171094 () Bool)

(declare-fun res!529065 () Bool)

(declare-fun e!751011 () Bool)

(assert (=> b!1171094 (=> res!529065 e!751011)))

(declare-fun lt!401766 () Bool)

(assert (=> b!1171094 (= res!529065 (not lt!401766))))

(declare-fun res!529074 () Bool)

(declare-fun e!751019 () Bool)

(assert (=> start!103110 (=> (not res!529074) (not e!751019))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!103110 (= res!529074 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!103110 e!751019))

(assert (=> start!103110 true))

(declare-fun e!751017 () Bool)

(declare-fun inv!15286 (PrintableTokens!728) Bool)

(assert (=> start!103110 (and (inv!15286 thiss!10527) e!751017)))

(declare-fun tp!334688 () Bool)

(declare-fun b!1171095 () Bool)

(declare-fun e!751012 () Bool)

(declare-fun inv!15287 (BalanceConc!7632) Bool)

(assert (=> b!1171095 (= e!751017 (and tp!334688 (inv!15287 (tokens!1654 thiss!10527)) e!751012))))

(declare-fun b!1171096 () Bool)

(declare-fun e!751021 () Bool)

(declare-fun lt!401774 () List!11614)

(assert (=> b!1171096 (= e!751021 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!401774)))))

(declare-fun b!1171097 () Bool)

(declare-fun e!751007 () Bool)

(declare-fun e!751015 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!77 (LexerInterface!1716 BalanceConc!7632 Int List!11615) Bool)

(assert (=> b!1171097 (= e!751007 (= (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) 0 (rules!9642 thiss!10527)) e!751015))))

(declare-fun res!529070 () Bool)

(assert (=> b!1171097 (=> res!529070 e!751015)))

(declare-fun lt!401776 () Int)

(assert (=> b!1171097 (= res!529070 (>= 0 (- lt!401776 1)))))

(declare-fun b!1171098 () Bool)

(declare-fun e!751013 () Bool)

(assert (=> b!1171098 (= e!751013 (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) 1 (rules!9642 thiss!10527)))))

(declare-fun b!1171099 () Bool)

(declare-fun tp!334687 () Bool)

(declare-fun inv!15288 (Conc!3805) Bool)

(assert (=> b!1171099 (= e!751012 (and (inv!15288 (c!195327 (tokens!1654 thiss!10527))) tp!334687))))

(declare-fun b!1171100 () Bool)

(declare-fun res!529071 () Bool)

(assert (=> b!1171100 (=> (not res!529071) (not e!751010))))

(declare-fun lambda!48203 () Int)

(declare-fun lt!401775 () BalanceConc!7632)

(declare-fun rulesProduceEachTokenIndividually!754 (LexerInterface!1716 List!11615 BalanceConc!7632) Bool)

(declare-fun forall!3065 (BalanceConc!7632 Int) Bool)

(assert (=> b!1171100 (= res!529071 (= (rulesProduceEachTokenIndividually!754 Lexer!1714 (rules!9642 thiss!10527) lt!401775) (forall!3065 lt!401775 lambda!48203)))))

(declare-fun b!1171101 () Bool)

(declare-fun e!751014 () Bool)

(declare-fun e!751018 () Bool)

(assert (=> b!1171101 (= e!751014 e!751018)))

(declare-fun res!529073 () Bool)

(assert (=> b!1171101 (=> (not res!529073) (not e!751018))))

(declare-fun rulesInvariant!1590 (LexerInterface!1716 List!11615) Bool)

(assert (=> b!1171101 (= res!529073 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(declare-datatypes ((Unit!17788 0))(
  ( (Unit!17789) )
))
(declare-fun lt!401759 () Unit!17788)

(declare-fun lemmaInvariant!208 (PrintableTokens!728) Unit!17788)

(assert (=> b!1171101 (= lt!401759 (lemmaInvariant!208 thiss!10527))))

(declare-fun b!1171102 () Bool)

(declare-fun e!751008 () Bool)

(declare-fun lt!401769 () Token!3704)

(declare-fun size!9136 (BalanceConc!7630) Int)

(declare-fun charsOf!1076 (Token!3704) BalanceConc!7630)

(assert (=> b!1171102 (= e!751008 (> (size!9136 (charsOf!1076 lt!401769)) 0))))

(declare-fun b!1171103 () Bool)

(assert (=> b!1171103 (= e!751015 e!751013)))

(declare-fun res!529075 () Bool)

(assert (=> b!1171103 (=> (not res!529075) (not e!751013))))

(declare-fun lt!401764 () Token!3704)

(declare-fun separableTokensPredicate!138 (LexerInterface!1716 Token!3704 Token!3704 List!11615) Bool)

(assert (=> b!1171103 (= res!529075 (separableTokensPredicate!138 Lexer!1714 lt!401764 lt!401769 (rules!9642 thiss!10527)))))

(assert (=> b!1171103 e!751008))

(declare-fun res!529064 () Bool)

(assert (=> b!1171103 (=> (not res!529064) (not e!751008))))

(assert (=> b!1171103 (= res!529064 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401769))))

(declare-fun lt!401763 () Unit!17788)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 (LexerInterface!1716 List!11615 List!11614 Token!3704) Unit!17788)

(assert (=> b!1171103 (= lt!401763 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401774 lt!401769))))

(declare-fun apply!2517 (BalanceConc!7632 Int) Token!3704)

(assert (=> b!1171103 (= lt!401769 (apply!2517 (tokens!1654 thiss!10527) 1))))

(assert (=> b!1171103 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401764)))

(declare-fun lt!401767 () Unit!17788)

(assert (=> b!1171103 (= lt!401767 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401774 lt!401764))))

(assert (=> b!1171103 (= lt!401764 (apply!2517 (tokens!1654 thiss!10527) 0))))

(declare-fun lt!401771 () List!11614)

(declare-fun tail!1694 (List!11614) List!11614)

(declare-fun drop!493 (List!11614 Int) List!11614)

(assert (=> b!1171103 (= (tail!1694 lt!401771) (drop!493 lt!401774 2))))

(declare-fun lt!401762 () Unit!17788)

(declare-fun lemmaDropTail!367 (List!11614 Int) Unit!17788)

(assert (=> b!1171103 (= lt!401762 (lemmaDropTail!367 lt!401774 1))))

(declare-fun lt!401761 () List!11614)

(assert (=> b!1171103 (= (tail!1694 lt!401761) lt!401771)))

(declare-fun lt!401765 () Unit!17788)

(assert (=> b!1171103 (= lt!401765 (lemmaDropTail!367 lt!401774 0))))

(declare-fun head!2110 (List!11614) Token!3704)

(declare-fun apply!2518 (List!11614 Int) Token!3704)

(assert (=> b!1171103 (= (head!2110 lt!401771) (apply!2518 lt!401774 1))))

(assert (=> b!1171103 (= lt!401771 (drop!493 lt!401774 1))))

(declare-fun lt!401770 () Unit!17788)

(declare-fun lemmaDropApply!379 (List!11614 Int) Unit!17788)

(assert (=> b!1171103 (= lt!401770 (lemmaDropApply!379 lt!401774 1))))

(assert (=> b!1171103 (= (head!2110 lt!401761) (apply!2518 lt!401774 0))))

(assert (=> b!1171103 (= lt!401761 (drop!493 lt!401774 0))))

(declare-fun lt!401760 () Unit!17788)

(assert (=> b!1171103 (= lt!401760 (lemmaDropApply!379 lt!401774 0))))

(declare-fun b!1171104 () Bool)

(declare-fun res!529067 () Bool)

(declare-fun e!751016 () Bool)

(assert (=> b!1171104 (=> res!529067 e!751016)))

(assert (=> b!1171104 (= res!529067 (not (forall!3065 lt!401775 lambda!48203)))))

(declare-fun b!1171105 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!112 (LexerInterface!1716 List!11614 List!11615) Bool)

(assert (=> b!1171105 (= e!751011 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 lt!401774 (rules!9642 thiss!10527)))))

(declare-fun b!1171106 () Bool)

(declare-fun e!751006 () Bool)

(assert (=> b!1171106 (= e!751006 e!751016)))

(declare-fun res!529061 () Bool)

(assert (=> b!1171106 (=> res!529061 e!751016)))

(declare-fun forall!3066 (List!11614 Int) Bool)

(assert (=> b!1171106 (= res!529061 (not (forall!3066 lt!401773 lambda!48203)))))

(assert (=> b!1171106 e!751010))

(declare-fun res!529062 () Bool)

(assert (=> b!1171106 (=> (not res!529062) (not e!751010))))

(assert (=> b!1171106 (= res!529062 (forall!3066 lt!401773 lambda!48203))))

(declare-fun lt!401772 () Unit!17788)

(declare-fun lemmaForallSubseq!159 (List!11614 List!11614 Int) Unit!17788)

(assert (=> b!1171106 (= lt!401772 (lemmaForallSubseq!159 lt!401773 lt!401774 lambda!48203))))

(declare-fun list!4274 (BalanceConc!7632) List!11614)

(assert (=> b!1171106 (= lt!401773 (list!4274 lt!401775))))

(declare-fun slice!348 (BalanceConc!7632 Int Int) BalanceConc!7632)

(assert (=> b!1171106 (= lt!401775 (slice!348 (tokens!1654 thiss!10527) from!787 to!267))))

(declare-fun subseq!271 (List!11614 List!11614) Bool)

(declare-fun slice!349 (List!11614 Int Int) List!11614)

(assert (=> b!1171106 (subseq!271 (slice!349 lt!401774 from!787 to!267) lt!401774)))

(declare-fun lt!401768 () Unit!17788)

(declare-fun lemmaSliceSubseq!112 (List!11614 Int Int) Unit!17788)

(assert (=> b!1171106 (= lt!401768 (lemmaSliceSubseq!112 lt!401774 from!787 to!267))))

(declare-fun b!1171107 () Bool)

(assert (=> b!1171107 (= e!751016 e!751011)))

(declare-fun res!529063 () Bool)

(assert (=> b!1171107 (=> res!529063 e!751011)))

(declare-fun isEmpty!7032 (List!11615) Bool)

(assert (=> b!1171107 (= res!529063 (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> b!1171107 e!751007))

(declare-fun res!529059 () Bool)

(assert (=> b!1171107 (=> (not res!529059) (not e!751007))))

(declare-fun separableTokens!152 (LexerInterface!1716 BalanceConc!7632 List!11615) Bool)

(assert (=> b!1171107 (= res!529059 (= (separableTokens!152 Lexer!1714 lt!401775 (rules!9642 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 lt!401775 0 (rules!9642 thiss!10527))))))

(declare-fun b!1171108 () Bool)

(assert (=> b!1171108 (= e!751005 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!401773)))))

(assert (=> b!1171109 (= e!751018 (not e!751006))))

(declare-fun res!529072 () Bool)

(assert (=> b!1171109 (=> res!529072 e!751006)))

(assert (=> b!1171109 (= res!529072 (not (forall!3065 (tokens!1654 thiss!10527) lambda!48203)))))

(declare-fun e!751020 () Bool)

(assert (=> b!1171109 (= lt!401766 e!751020)))

(declare-fun res!529066 () Bool)

(assert (=> b!1171109 (=> res!529066 e!751020)))

(assert (=> b!1171109 (= res!529066 (not ((_ is Cons!11590) lt!401774)))))

(assert (=> b!1171109 (= lt!401766 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401774))))

(assert (=> b!1171109 (= lt!401774 (list!4274 (tokens!1654 thiss!10527)))))

(assert (=> b!1171109 (= (rulesProduceEachTokenIndividually!754 Lexer!1714 (rules!9642 thiss!10527) (tokens!1654 thiss!10527)) (forall!3065 (tokens!1654 thiss!10527) lambda!48203))))

(declare-fun b!1171110 () Bool)

(assert (=> b!1171110 (= e!751019 e!751014)))

(declare-fun res!529069 () Bool)

(assert (=> b!1171110 (=> (not res!529069) (not e!751014))))

(assert (=> b!1171110 (= res!529069 (<= to!267 lt!401776))))

(declare-fun size!9137 (BalanceConc!7632) Int)

(assert (=> b!1171110 (= lt!401776 (size!9137 (tokens!1654 thiss!10527)))))

(declare-fun b!1171111 () Bool)

(assert (=> b!1171111 (= e!751020 e!751021)))

(declare-fun res!529060 () Bool)

(assert (=> b!1171111 (=> (not res!529060) (not e!751021))))

(assert (=> b!1171111 (= res!529060 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401774)))))

(assert (= (and start!103110 res!529074) b!1171110))

(assert (= (and b!1171110 res!529069) b!1171101))

(assert (= (and b!1171101 res!529073) b!1171109))

(assert (= (and b!1171109 (not res!529066)) b!1171111))

(assert (= (and b!1171111 res!529060) b!1171096))

(assert (= (and b!1171109 (not res!529072)) b!1171106))

(assert (= (and b!1171106 res!529062) b!1171100))

(assert (= (and b!1171100 res!529071) b!1171092))

(assert (= (and b!1171092 (not res!529058)) b!1171093))

(assert (= (and b!1171093 res!529068) b!1171108))

(assert (= (and b!1171106 (not res!529061)) b!1171104))

(assert (= (and b!1171104 (not res!529067)) b!1171107))

(assert (= (and b!1171107 res!529059) b!1171097))

(assert (= (and b!1171097 (not res!529070)) b!1171103))

(assert (= (and b!1171103 res!529064) b!1171102))

(assert (= (and b!1171103 res!529075) b!1171098))

(assert (= (and b!1171107 (not res!529063)) b!1171094))

(assert (= (and b!1171094 (not res!529065)) b!1171105))

(assert (= b!1171095 b!1171099))

(assert (= start!103110 b!1171095))

(declare-fun m!1344167 () Bool)

(assert (=> b!1171101 m!1344167))

(declare-fun m!1344169 () Bool)

(assert (=> b!1171101 m!1344169))

(declare-fun m!1344171 () Bool)

(assert (=> b!1171097 m!1344171))

(declare-fun m!1344173 () Bool)

(assert (=> b!1171098 m!1344173))

(declare-fun m!1344175 () Bool)

(assert (=> b!1171103 m!1344175))

(declare-fun m!1344177 () Bool)

(assert (=> b!1171103 m!1344177))

(declare-fun m!1344179 () Bool)

(assert (=> b!1171103 m!1344179))

(declare-fun m!1344181 () Bool)

(assert (=> b!1171103 m!1344181))

(declare-fun m!1344183 () Bool)

(assert (=> b!1171103 m!1344183))

(declare-fun m!1344185 () Bool)

(assert (=> b!1171103 m!1344185))

(declare-fun m!1344187 () Bool)

(assert (=> b!1171103 m!1344187))

(declare-fun m!1344189 () Bool)

(assert (=> b!1171103 m!1344189))

(declare-fun m!1344191 () Bool)

(assert (=> b!1171103 m!1344191))

(declare-fun m!1344193 () Bool)

(assert (=> b!1171103 m!1344193))

(declare-fun m!1344195 () Bool)

(assert (=> b!1171103 m!1344195))

(declare-fun m!1344197 () Bool)

(assert (=> b!1171103 m!1344197))

(declare-fun m!1344199 () Bool)

(assert (=> b!1171103 m!1344199))

(declare-fun m!1344201 () Bool)

(assert (=> b!1171103 m!1344201))

(declare-fun m!1344203 () Bool)

(assert (=> b!1171103 m!1344203))

(declare-fun m!1344205 () Bool)

(assert (=> b!1171103 m!1344205))

(declare-fun m!1344207 () Bool)

(assert (=> b!1171103 m!1344207))

(declare-fun m!1344209 () Bool)

(assert (=> b!1171103 m!1344209))

(declare-fun m!1344211 () Bool)

(assert (=> b!1171103 m!1344211))

(declare-fun m!1344213 () Bool)

(assert (=> b!1171103 m!1344213))

(declare-fun m!1344215 () Bool)

(assert (=> b!1171107 m!1344215))

(declare-fun m!1344217 () Bool)

(assert (=> b!1171107 m!1344217))

(declare-fun m!1344219 () Bool)

(assert (=> b!1171107 m!1344219))

(declare-fun m!1344221 () Bool)

(assert (=> b!1171108 m!1344221))

(declare-fun m!1344223 () Bool)

(assert (=> b!1171100 m!1344223))

(declare-fun m!1344225 () Bool)

(assert (=> b!1171100 m!1344225))

(declare-fun m!1344227 () Bool)

(assert (=> b!1171106 m!1344227))

(declare-fun m!1344229 () Bool)

(assert (=> b!1171106 m!1344229))

(declare-fun m!1344231 () Bool)

(assert (=> b!1171106 m!1344231))

(assert (=> b!1171106 m!1344227))

(declare-fun m!1344233 () Bool)

(assert (=> b!1171106 m!1344233))

(declare-fun m!1344235 () Bool)

(assert (=> b!1171106 m!1344235))

(declare-fun m!1344237 () Bool)

(assert (=> b!1171106 m!1344237))

(declare-fun m!1344239 () Bool)

(assert (=> b!1171106 m!1344239))

(assert (=> b!1171106 m!1344235))

(declare-fun m!1344241 () Bool)

(assert (=> b!1171111 m!1344241))

(declare-fun m!1344243 () Bool)

(assert (=> b!1171102 m!1344243))

(assert (=> b!1171102 m!1344243))

(declare-fun m!1344245 () Bool)

(assert (=> b!1171102 m!1344245))

(declare-fun m!1344247 () Bool)

(assert (=> b!1171109 m!1344247))

(declare-fun m!1344249 () Bool)

(assert (=> b!1171109 m!1344249))

(declare-fun m!1344251 () Bool)

(assert (=> b!1171109 m!1344251))

(assert (=> b!1171109 m!1344247))

(declare-fun m!1344253 () Bool)

(assert (=> b!1171109 m!1344253))

(declare-fun m!1344255 () Bool)

(assert (=> b!1171099 m!1344255))

(declare-fun m!1344257 () Bool)

(assert (=> b!1171092 m!1344257))

(declare-fun m!1344259 () Bool)

(assert (=> start!103110 m!1344259))

(declare-fun m!1344261 () Bool)

(assert (=> b!1171110 m!1344261))

(declare-fun m!1344263 () Bool)

(assert (=> b!1171093 m!1344263))

(declare-fun m!1344265 () Bool)

(assert (=> b!1171105 m!1344265))

(declare-fun m!1344267 () Bool)

(assert (=> b!1171095 m!1344267))

(assert (=> b!1171104 m!1344225))

(declare-fun m!1344269 () Bool)

(assert (=> b!1171096 m!1344269))

(check-sat (not b!1171110) (not b!1171099) (not b!1171107) (not b!1171104) (not b!1171097) (not b!1171100) (not b!1171101) (not b!1171105) (not b!1171109) (not b!1171098) (not b!1171108) (not b!1171106) (not b!1171119) (not b!1171096) (not b!1171092) (not b!1171111) (not start!103110) (not b!1171093) (not b!1171103) (not b!1171118) (not b!1171102) (not b!1171095))
(check-sat)
(get-model)

(declare-fun d!334887 () Bool)

(assert (=> d!334887 (= (isEmpty!7032 (rules!9642 thiss!10527)) ((_ is Nil!11591) (rules!9642 thiss!10527)))))

(assert (=> b!1171107 d!334887))

(declare-fun d!334889 () Bool)

(assert (=> d!334889 (= (separableTokens!152 Lexer!1714 lt!401775 (rules!9642 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 lt!401775 0 (rules!9642 thiss!10527)))))

(declare-fun bs!285668 () Bool)

(assert (= bs!285668 d!334889))

(assert (=> bs!285668 m!1344219))

(assert (=> b!1171107 d!334889))

(declare-fun b!1171212 () Bool)

(declare-fun e!751110 () Bool)

(declare-fun e!751111 () Bool)

(assert (=> b!1171212 (= e!751110 e!751111)))

(declare-fun res!529149 () Bool)

(assert (=> b!1171212 (=> (not res!529149) (not e!751111))))

(assert (=> b!1171212 (= res!529149 (separableTokensPredicate!138 Lexer!1714 (apply!2517 lt!401775 0) (apply!2517 lt!401775 (+ 0 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!401895 () Unit!17788)

(declare-fun Unit!17793 () Unit!17788)

(assert (=> b!1171212 (= lt!401895 Unit!17793)))

(assert (=> b!1171212 (> (size!9136 (charsOf!1076 (apply!2517 lt!401775 (+ 0 1)))) 0)))

(declare-fun lt!401924 () Unit!17788)

(declare-fun Unit!17795 () Unit!17788)

(assert (=> b!1171212 (= lt!401924 Unit!17795)))

(assert (=> b!1171212 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 lt!401775 (+ 0 1)))))

(declare-fun lt!401909 () Unit!17788)

(declare-fun Unit!17797 () Unit!17788)

(assert (=> b!1171212 (= lt!401909 Unit!17797)))

(assert (=> b!1171212 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 lt!401775 0))))

(declare-fun lt!401907 () Unit!17788)

(declare-fun lt!401910 () Unit!17788)

(assert (=> b!1171212 (= lt!401907 lt!401910)))

(declare-fun lt!401904 () Token!3704)

(assert (=> b!1171212 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401904)))

(declare-fun lt!401917 () List!11614)

(assert (=> b!1171212 (= lt!401910 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401917 lt!401904))))

(assert (=> b!1171212 (= lt!401904 (apply!2517 lt!401775 (+ 0 1)))))

(assert (=> b!1171212 (= lt!401917 (list!4274 lt!401775))))

(declare-fun lt!401916 () Unit!17788)

(declare-fun lt!401906 () Unit!17788)

(assert (=> b!1171212 (= lt!401916 lt!401906)))

(declare-fun lt!401913 () Token!3704)

(assert (=> b!1171212 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401913)))

(declare-fun lt!401903 () List!11614)

(assert (=> b!1171212 (= lt!401906 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401903 lt!401913))))

(assert (=> b!1171212 (= lt!401913 (apply!2517 lt!401775 0))))

(assert (=> b!1171212 (= lt!401903 (list!4274 lt!401775))))

(declare-fun lt!401900 () Unit!17788)

(declare-fun lt!401920 () Unit!17788)

(assert (=> b!1171212 (= lt!401900 lt!401920)))

(declare-fun lt!401912 () List!11614)

(declare-fun lt!401922 () Int)

(assert (=> b!1171212 (= (tail!1694 (drop!493 lt!401912 lt!401922)) (drop!493 lt!401912 (+ lt!401922 1)))))

(assert (=> b!1171212 (= lt!401920 (lemmaDropTail!367 lt!401912 lt!401922))))

(assert (=> b!1171212 (= lt!401922 (+ 0 1))))

(assert (=> b!1171212 (= lt!401912 (list!4274 lt!401775))))

(declare-fun lt!401923 () Unit!17788)

(declare-fun lt!401926 () Unit!17788)

(assert (=> b!1171212 (= lt!401923 lt!401926)))

(declare-fun lt!401911 () List!11614)

(assert (=> b!1171212 (= (tail!1694 (drop!493 lt!401911 0)) (drop!493 lt!401911 (+ 0 1)))))

(assert (=> b!1171212 (= lt!401926 (lemmaDropTail!367 lt!401911 0))))

(assert (=> b!1171212 (= lt!401911 (list!4274 lt!401775))))

(declare-fun lt!401902 () Unit!17788)

(declare-fun lt!401908 () Unit!17788)

(assert (=> b!1171212 (= lt!401902 lt!401908)))

(declare-fun lt!401915 () List!11614)

(declare-fun lt!401905 () Int)

(assert (=> b!1171212 (= (head!2110 (drop!493 lt!401915 lt!401905)) (apply!2518 lt!401915 lt!401905))))

(assert (=> b!1171212 (= lt!401908 (lemmaDropApply!379 lt!401915 lt!401905))))

(assert (=> b!1171212 (= lt!401905 (+ 0 1))))

(assert (=> b!1171212 (= lt!401915 (list!4274 lt!401775))))

(declare-fun lt!401919 () Unit!17788)

(declare-fun lt!401899 () Unit!17788)

(assert (=> b!1171212 (= lt!401919 lt!401899)))

(declare-fun lt!401896 () List!11614)

(assert (=> b!1171212 (= (head!2110 (drop!493 lt!401896 0)) (apply!2518 lt!401896 0))))

(assert (=> b!1171212 (= lt!401899 (lemmaDropApply!379 lt!401896 0))))

(assert (=> b!1171212 (= lt!401896 (list!4274 lt!401775))))

(declare-fun b!1171213 () Bool)

(declare-fun e!751108 () Bool)

(declare-fun lt!401921 () List!11614)

(declare-fun size!9142 (List!11614) Int)

(assert (=> b!1171213 (= e!751108 (<= 0 (size!9142 lt!401921)))))

(declare-fun d!334903 () Bool)

(declare-fun lt!401894 () Bool)

(declare-fun dropList!325 (BalanceConc!7632 Int) List!11614)

(assert (=> d!334903 (= lt!401894 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 lt!401775 0) (rules!9642 thiss!10527)))))

(declare-fun lt!401914 () Unit!17788)

(declare-fun lt!401898 () Unit!17788)

(assert (=> d!334903 (= lt!401914 lt!401898)))

(declare-fun lt!401925 () List!11614)

(assert (=> d!334903 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401925)))

(declare-fun lt!401918 () List!11614)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 (LexerInterface!1716 List!11615 List!11614 List!11614) Unit!17788)

(assert (=> d!334903 (= lt!401898 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!401918 lt!401925))))

(declare-fun e!751109 () Bool)

(assert (=> d!334903 e!751109))

(declare-fun res!529153 () Bool)

(assert (=> d!334903 (=> (not res!529153) (not e!751109))))

(assert (=> d!334903 (= res!529153 ((_ is Lexer!1714) Lexer!1714))))

(assert (=> d!334903 (= lt!401925 (dropList!325 lt!401775 0))))

(assert (=> d!334903 (= lt!401918 (list!4274 lt!401775))))

(declare-fun lt!401897 () Unit!17788)

(declare-fun lt!401901 () Unit!17788)

(assert (=> d!334903 (= lt!401897 lt!401901)))

(assert (=> d!334903 (subseq!271 (drop!493 lt!401921 0) lt!401921)))

(declare-fun lemmaDropSubSeq!33 (List!11614 Int) Unit!17788)

(assert (=> d!334903 (= lt!401901 (lemmaDropSubSeq!33 lt!401921 0))))

(assert (=> d!334903 e!751108))

(declare-fun res!529152 () Bool)

(assert (=> d!334903 (=> (not res!529152) (not e!751108))))

(assert (=> d!334903 (= res!529152 (>= 0 0))))

(assert (=> d!334903 (= lt!401921 (list!4274 lt!401775))))

(assert (=> d!334903 (= lt!401894 e!751110)))

(declare-fun res!529151 () Bool)

(assert (=> d!334903 (=> res!529151 e!751110)))

(assert (=> d!334903 (= res!529151 (not (< 0 (- (size!9137 lt!401775) 1))))))

(declare-fun e!751107 () Bool)

(assert (=> d!334903 e!751107))

(declare-fun res!529148 () Bool)

(assert (=> d!334903 (=> (not res!529148) (not e!751107))))

(assert (=> d!334903 (= res!529148 (>= 0 0))))

(assert (=> d!334903 (= (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 lt!401775 0 (rules!9642 thiss!10527)) lt!401894)))

(declare-fun b!1171214 () Bool)

(assert (=> b!1171214 (= e!751107 (<= 0 (size!9137 lt!401775)))))

(declare-fun b!1171215 () Bool)

(declare-fun res!529150 () Bool)

(assert (=> b!1171215 (=> (not res!529150) (not e!751109))))

(assert (=> b!1171215 (= res!529150 (not (isEmpty!7032 (rules!9642 thiss!10527))))))

(declare-fun b!1171216 () Bool)

(declare-fun res!529154 () Bool)

(assert (=> b!1171216 (=> (not res!529154) (not e!751109))))

(assert (=> b!1171216 (= res!529154 (subseq!271 lt!401925 lt!401918))))

(declare-fun b!1171217 () Bool)

(assert (=> b!1171217 (= e!751109 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401918))))

(declare-fun b!1171218 () Bool)

(assert (=> b!1171218 (= e!751111 (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 lt!401775 (+ 0 1) (rules!9642 thiss!10527)))))

(declare-fun b!1171219 () Bool)

(declare-fun res!529147 () Bool)

(assert (=> b!1171219 (=> (not res!529147) (not e!751109))))

(assert (=> b!1171219 (= res!529147 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(assert (= (and d!334903 res!529148) b!1171214))

(assert (= (and d!334903 (not res!529151)) b!1171212))

(assert (= (and b!1171212 res!529149) b!1171218))

(assert (= (and d!334903 res!529152) b!1171213))

(assert (= (and d!334903 res!529153) b!1171215))

(assert (= (and b!1171215 res!529150) b!1171219))

(assert (= (and b!1171219 res!529147) b!1171216))

(assert (= (and b!1171216 res!529154) b!1171217))

(declare-fun m!1344357 () Bool)

(assert (=> b!1171212 m!1344357))

(declare-fun m!1344359 () Bool)

(assert (=> b!1171212 m!1344359))

(declare-fun m!1344361 () Bool)

(assert (=> b!1171212 m!1344361))

(declare-fun m!1344363 () Bool)

(assert (=> b!1171212 m!1344363))

(declare-fun m!1344365 () Bool)

(assert (=> b!1171212 m!1344365))

(declare-fun m!1344367 () Bool)

(assert (=> b!1171212 m!1344367))

(declare-fun m!1344369 () Bool)

(assert (=> b!1171212 m!1344369))

(declare-fun m!1344371 () Bool)

(assert (=> b!1171212 m!1344371))

(assert (=> b!1171212 m!1344367))

(declare-fun m!1344373 () Bool)

(assert (=> b!1171212 m!1344373))

(declare-fun m!1344375 () Bool)

(assert (=> b!1171212 m!1344375))

(declare-fun m!1344377 () Bool)

(assert (=> b!1171212 m!1344377))

(declare-fun m!1344379 () Bool)

(assert (=> b!1171212 m!1344379))

(declare-fun m!1344381 () Bool)

(assert (=> b!1171212 m!1344381))

(declare-fun m!1344383 () Bool)

(assert (=> b!1171212 m!1344383))

(declare-fun m!1344385 () Bool)

(assert (=> b!1171212 m!1344385))

(assert (=> b!1171212 m!1344373))

(declare-fun m!1344387 () Bool)

(assert (=> b!1171212 m!1344387))

(assert (=> b!1171212 m!1344231))

(declare-fun m!1344389 () Bool)

(assert (=> b!1171212 m!1344389))

(declare-fun m!1344391 () Bool)

(assert (=> b!1171212 m!1344391))

(declare-fun m!1344393 () Bool)

(assert (=> b!1171212 m!1344393))

(assert (=> b!1171212 m!1344377))

(assert (=> b!1171212 m!1344357))

(declare-fun m!1344395 () Bool)

(assert (=> b!1171212 m!1344395))

(assert (=> b!1171212 m!1344369))

(declare-fun m!1344397 () Bool)

(assert (=> b!1171212 m!1344397))

(declare-fun m!1344399 () Bool)

(assert (=> b!1171212 m!1344399))

(assert (=> b!1171212 m!1344361))

(declare-fun m!1344401 () Bool)

(assert (=> b!1171212 m!1344401))

(assert (=> b!1171212 m!1344377))

(assert (=> b!1171212 m!1344367))

(declare-fun m!1344403 () Bool)

(assert (=> b!1171212 m!1344403))

(assert (=> b!1171212 m!1344367))

(declare-fun m!1344405 () Bool)

(assert (=> b!1171212 m!1344405))

(assert (=> b!1171212 m!1344365))

(declare-fun m!1344407 () Bool)

(assert (=> b!1171212 m!1344407))

(declare-fun m!1344409 () Bool)

(assert (=> b!1171212 m!1344409))

(declare-fun m!1344411 () Bool)

(assert (=> b!1171216 m!1344411))

(assert (=> b!1171219 m!1344167))

(declare-fun m!1344413 () Bool)

(assert (=> b!1171218 m!1344413))

(assert (=> b!1171215 m!1344215))

(declare-fun m!1344415 () Bool)

(assert (=> b!1171217 m!1344415))

(declare-fun m!1344417 () Bool)

(assert (=> b!1171214 m!1344417))

(declare-fun m!1344419 () Bool)

(assert (=> d!334903 m!1344419))

(assert (=> d!334903 m!1344417))

(declare-fun m!1344421 () Bool)

(assert (=> d!334903 m!1344421))

(declare-fun m!1344423 () Bool)

(assert (=> d!334903 m!1344423))

(assert (=> d!334903 m!1344421))

(declare-fun m!1344425 () Bool)

(assert (=> d!334903 m!1344425))

(declare-fun m!1344427 () Bool)

(assert (=> d!334903 m!1344427))

(declare-fun m!1344429 () Bool)

(assert (=> d!334903 m!1344429))

(assert (=> d!334903 m!1344425))

(declare-fun m!1344431 () Bool)

(assert (=> d!334903 m!1344431))

(assert (=> d!334903 m!1344231))

(declare-fun m!1344433 () Bool)

(assert (=> b!1171213 m!1344433))

(assert (=> b!1171107 d!334903))

(declare-fun bs!285685 () Bool)

(declare-fun d!334933 () Bool)

(assert (= bs!285685 (and d!334933 b!1171109)))

(declare-fun lambda!48217 () Int)

(assert (=> bs!285685 (= lambda!48217 lambda!48203)))

(declare-fun b!1171236 () Bool)

(declare-fun e!751126 () Bool)

(assert (=> b!1171236 (= e!751126 true)))

(declare-fun b!1171235 () Bool)

(declare-fun e!751125 () Bool)

(assert (=> b!1171235 (= e!751125 e!751126)))

(declare-fun b!1171234 () Bool)

(declare-fun e!751124 () Bool)

(assert (=> b!1171234 (= e!751124 e!751125)))

(assert (=> d!334933 e!751124))

(assert (= b!1171235 b!1171236))

(assert (= b!1171234 b!1171235))

(assert (= (and d!334933 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1171234))

(declare-fun order!7127 () Int)

(declare-fun order!7125 () Int)

(declare-fun dynLambda!5122 (Int Int) Int)

(declare-fun dynLambda!5123 (Int Int) Int)

(assert (=> b!1171236 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48217))))

(declare-fun order!7129 () Int)

(declare-fun dynLambda!5124 (Int Int) Int)

(assert (=> b!1171236 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48217))))

(assert (=> d!334933 true))

(declare-fun lt!401929 () Bool)

(assert (=> d!334933 (= lt!401929 (forall!3066 (t!110758 lt!401774) lambda!48217))))

(declare-fun e!751116 () Bool)

(assert (=> d!334933 (= lt!401929 e!751116)))

(declare-fun res!529159 () Bool)

(assert (=> d!334933 (=> res!529159 e!751116)))

(assert (=> d!334933 (= res!529159 (not ((_ is Cons!11590) (t!110758 lt!401774))))))

(assert (=> d!334933 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!334933 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!401774)) lt!401929)))

(declare-fun b!1171224 () Bool)

(declare-fun e!751117 () Bool)

(assert (=> b!1171224 (= e!751116 e!751117)))

(declare-fun res!529160 () Bool)

(assert (=> b!1171224 (=> (not res!529160) (not e!751117))))

(assert (=> b!1171224 (= res!529160 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401774))))))

(declare-fun b!1171225 () Bool)

(assert (=> b!1171225 (= e!751117 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 (t!110758 lt!401774))))))

(assert (= (and d!334933 (not res!529159)) b!1171224))

(assert (= (and b!1171224 res!529160) b!1171225))

(declare-fun m!1344435 () Bool)

(assert (=> d!334933 m!1344435))

(assert (=> d!334933 m!1344215))

(declare-fun m!1344437 () Bool)

(assert (=> b!1171224 m!1344437))

(declare-fun m!1344439 () Bool)

(assert (=> b!1171225 m!1344439))

(assert (=> b!1171096 d!334933))

(declare-fun d!334937 () Bool)

(declare-fun isBalanced!1073 (Conc!3805) Bool)

(assert (=> d!334937 (= (inv!15287 (tokens!1654 thiss!10527)) (isBalanced!1073 (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun bs!285686 () Bool)

(assert (= bs!285686 d!334937))

(declare-fun m!1344441 () Bool)

(assert (=> bs!285686 m!1344441))

(assert (=> b!1171095 d!334937))

(declare-fun d!334939 () Bool)

(declare-fun list!4277 (Conc!3805) List!11614)

(assert (=> d!334939 (= (list!4274 lt!401775) (list!4277 (c!195327 lt!401775)))))

(declare-fun bs!285687 () Bool)

(assert (= bs!285687 d!334939))

(declare-fun m!1344443 () Bool)

(assert (=> bs!285687 m!1344443))

(assert (=> b!1171106 d!334939))

(declare-fun d!334941 () Bool)

(declare-fun e!751132 () Bool)

(assert (=> d!334941 e!751132))

(declare-fun res!529167 () Bool)

(assert (=> d!334941 (=> (not res!529167) (not e!751132))))

(declare-fun slice!351 (Conc!3805 Int Int) Conc!3805)

(assert (=> d!334941 (= res!529167 (isBalanced!1073 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267)))))

(declare-fun lt!401932 () BalanceConc!7632)

(assert (=> d!334941 (= lt!401932 (BalanceConc!7633 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267)))))

(declare-fun e!751131 () Bool)

(assert (=> d!334941 e!751131))

(declare-fun res!529168 () Bool)

(assert (=> d!334941 (=> (not res!529168) (not e!751131))))

(assert (=> d!334941 (= res!529168 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!334941 (= (slice!348 (tokens!1654 thiss!10527) from!787 to!267) lt!401932)))

(declare-fun b!1171245 () Bool)

(declare-fun res!529169 () Bool)

(assert (=> b!1171245 (=> (not res!529169) (not e!751131))))

(assert (=> b!1171245 (= res!529169 (<= to!267 (size!9137 (tokens!1654 thiss!10527))))))

(declare-fun b!1171246 () Bool)

(assert (=> b!1171246 (= e!751131 (isBalanced!1073 (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun b!1171247 () Bool)

(assert (=> b!1171247 (= e!751132 (= (list!4274 lt!401932) (slice!349 (list!4274 (tokens!1654 thiss!10527)) from!787 to!267)))))

(assert (= (and d!334941 res!529168) b!1171245))

(assert (= (and b!1171245 res!529169) b!1171246))

(assert (= (and d!334941 res!529167) b!1171247))

(declare-fun m!1344445 () Bool)

(assert (=> d!334941 m!1344445))

(assert (=> d!334941 m!1344445))

(declare-fun m!1344447 () Bool)

(assert (=> d!334941 m!1344447))

(assert (=> b!1171245 m!1344261))

(assert (=> b!1171246 m!1344441))

(declare-fun m!1344449 () Bool)

(assert (=> b!1171247 m!1344449))

(assert (=> b!1171247 m!1344251))

(assert (=> b!1171247 m!1344251))

(declare-fun m!1344451 () Bool)

(assert (=> b!1171247 m!1344451))

(assert (=> b!1171106 d!334941))

(declare-fun d!334943 () Bool)

(declare-fun res!529174 () Bool)

(declare-fun e!751137 () Bool)

(assert (=> d!334943 (=> res!529174 e!751137)))

(assert (=> d!334943 (= res!529174 ((_ is Nil!11590) lt!401773))))

(assert (=> d!334943 (= (forall!3066 lt!401773 lambda!48203) e!751137)))

(declare-fun b!1171252 () Bool)

(declare-fun e!751138 () Bool)

(assert (=> b!1171252 (= e!751137 e!751138)))

(declare-fun res!529175 () Bool)

(assert (=> b!1171252 (=> (not res!529175) (not e!751138))))

(declare-fun dynLambda!5125 (Int Token!3704) Bool)

(assert (=> b!1171252 (= res!529175 (dynLambda!5125 lambda!48203 (h!16991 lt!401773)))))

(declare-fun b!1171253 () Bool)

(assert (=> b!1171253 (= e!751138 (forall!3066 (t!110758 lt!401773) lambda!48203))))

(assert (= (and d!334943 (not res!529174)) b!1171252))

(assert (= (and b!1171252 res!529175) b!1171253))

(declare-fun b_lambda!34987 () Bool)

(assert (=> (not b_lambda!34987) (not b!1171252)))

(declare-fun m!1344453 () Bool)

(assert (=> b!1171252 m!1344453))

(declare-fun m!1344455 () Bool)

(assert (=> b!1171253 m!1344455))

(assert (=> b!1171106 d!334943))

(declare-fun d!334945 () Bool)

(assert (=> d!334945 (forall!3066 lt!401773 lambda!48203)))

(declare-fun lt!401935 () Unit!17788)

(declare-fun choose!7562 (List!11614 List!11614 Int) Unit!17788)

(assert (=> d!334945 (= lt!401935 (choose!7562 lt!401773 lt!401774 lambda!48203))))

(assert (=> d!334945 (forall!3066 lt!401774 lambda!48203)))

(assert (=> d!334945 (= (lemmaForallSubseq!159 lt!401773 lt!401774 lambda!48203) lt!401935)))

(declare-fun bs!285688 () Bool)

(assert (= bs!285688 d!334945))

(assert (=> bs!285688 m!1344227))

(declare-fun m!1344457 () Bool)

(assert (=> bs!285688 m!1344457))

(declare-fun m!1344459 () Bool)

(assert (=> bs!285688 m!1344459))

(assert (=> b!1171106 d!334945))

(declare-fun d!334947 () Bool)

(assert (=> d!334947 (subseq!271 (slice!349 lt!401774 from!787 to!267) lt!401774)))

(declare-fun lt!401938 () Unit!17788)

(declare-fun choose!7563 (List!11614 Int Int) Unit!17788)

(assert (=> d!334947 (= lt!401938 (choose!7563 lt!401774 from!787 to!267))))

(declare-fun e!751141 () Bool)

(assert (=> d!334947 e!751141))

(declare-fun res!529178 () Bool)

(assert (=> d!334947 (=> (not res!529178) (not e!751141))))

(assert (=> d!334947 (= res!529178 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!334947 (= (lemmaSliceSubseq!112 lt!401774 from!787 to!267) lt!401938)))

(declare-fun b!1171256 () Bool)

(assert (=> b!1171256 (= e!751141 (<= to!267 (size!9142 lt!401774)))))

(assert (= (and d!334947 res!529178) b!1171256))

(assert (=> d!334947 m!1344235))

(assert (=> d!334947 m!1344235))

(assert (=> d!334947 m!1344237))

(declare-fun m!1344461 () Bool)

(assert (=> d!334947 m!1344461))

(declare-fun m!1344463 () Bool)

(assert (=> b!1171256 m!1344463))

(assert (=> b!1171106 d!334947))

(declare-fun d!334949 () Bool)

(declare-fun take!81 (List!11614 Int) List!11614)

(assert (=> d!334949 (= (slice!349 lt!401774 from!787 to!267) (take!81 (drop!493 lt!401774 from!787) (- to!267 from!787)))))

(declare-fun bs!285689 () Bool)

(assert (= bs!285689 d!334949))

(declare-fun m!1344465 () Bool)

(assert (=> bs!285689 m!1344465))

(assert (=> bs!285689 m!1344465))

(declare-fun m!1344467 () Bool)

(assert (=> bs!285689 m!1344467))

(assert (=> b!1171106 d!334949))

(declare-fun d!334951 () Bool)

(declare-fun res!529188 () Bool)

(declare-fun e!751153 () Bool)

(assert (=> d!334951 (=> res!529188 e!751153)))

(assert (=> d!334951 (= res!529188 ((_ is Nil!11590) (slice!349 lt!401774 from!787 to!267)))))

(assert (=> d!334951 (= (subseq!271 (slice!349 lt!401774 from!787 to!267) lt!401774) e!751153)))

(declare-fun b!1171267 () Bool)

(declare-fun e!751152 () Bool)

(assert (=> b!1171267 (= e!751152 (subseq!271 (t!110758 (slice!349 lt!401774 from!787 to!267)) (t!110758 lt!401774)))))

(declare-fun b!1171265 () Bool)

(declare-fun e!751150 () Bool)

(assert (=> b!1171265 (= e!751153 e!751150)))

(declare-fun res!529187 () Bool)

(assert (=> b!1171265 (=> (not res!529187) (not e!751150))))

(assert (=> b!1171265 (= res!529187 ((_ is Cons!11590) lt!401774))))

(declare-fun b!1171266 () Bool)

(declare-fun e!751151 () Bool)

(assert (=> b!1171266 (= e!751150 e!751151)))

(declare-fun res!529189 () Bool)

(assert (=> b!1171266 (=> res!529189 e!751151)))

(assert (=> b!1171266 (= res!529189 e!751152)))

(declare-fun res!529190 () Bool)

(assert (=> b!1171266 (=> (not res!529190) (not e!751152))))

(assert (=> b!1171266 (= res!529190 (= (h!16991 (slice!349 lt!401774 from!787 to!267)) (h!16991 lt!401774)))))

(declare-fun b!1171268 () Bool)

(assert (=> b!1171268 (= e!751151 (subseq!271 (slice!349 lt!401774 from!787 to!267) (t!110758 lt!401774)))))

(assert (= (and d!334951 (not res!529188)) b!1171265))

(assert (= (and b!1171265 res!529187) b!1171266))

(assert (= (and b!1171266 res!529190) b!1171267))

(assert (= (and b!1171266 (not res!529189)) b!1171268))

(declare-fun m!1344469 () Bool)

(assert (=> b!1171267 m!1344469))

(assert (=> b!1171268 m!1344235))

(declare-fun m!1344471 () Bool)

(assert (=> b!1171268 m!1344471))

(assert (=> b!1171106 d!334951))

(declare-fun d!334953 () Bool)

(declare-fun res!529220 () Bool)

(declare-fun e!751173 () Bool)

(assert (=> d!334953 (=> res!529220 e!751173)))

(assert (=> d!334953 (= res!529220 (or (not ((_ is Cons!11590) lt!401774)) (not ((_ is Cons!11590) (t!110758 lt!401774)))))))

(assert (=> d!334953 (= (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 lt!401774 (rules!9642 thiss!10527)) e!751173)))

(declare-fun b!1171297 () Bool)

(declare-fun e!751174 () Bool)

(assert (=> b!1171297 (= e!751173 e!751174)))

(declare-fun res!529219 () Bool)

(assert (=> b!1171297 (=> (not res!529219) (not e!751174))))

(assert (=> b!1171297 (= res!529219 (separableTokensPredicate!138 Lexer!1714 (h!16991 lt!401774) (h!16991 (t!110758 lt!401774)) (rules!9642 thiss!10527)))))

(declare-fun lt!402055 () Unit!17788)

(declare-fun Unit!17802 () Unit!17788)

(assert (=> b!1171297 (= lt!402055 Unit!17802)))

(assert (=> b!1171297 (> (size!9136 (charsOf!1076 (h!16991 (t!110758 lt!401774)))) 0)))

(declare-fun lt!402057 () Unit!17788)

(declare-fun Unit!17803 () Unit!17788)

(assert (=> b!1171297 (= lt!402057 Unit!17803)))

(assert (=> b!1171297 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401774)))))

(declare-fun lt!402053 () Unit!17788)

(declare-fun Unit!17804 () Unit!17788)

(assert (=> b!1171297 (= lt!402053 Unit!17804)))

(assert (=> b!1171297 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401774))))

(declare-fun lt!402058 () Unit!17788)

(declare-fun lt!402056 () Unit!17788)

(assert (=> b!1171297 (= lt!402058 lt!402056)))

(assert (=> b!1171297 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401774)))))

(assert (=> b!1171297 (= lt!402056 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401774 (h!16991 (t!110758 lt!401774))))))

(declare-fun lt!402054 () Unit!17788)

(declare-fun lt!402052 () Unit!17788)

(assert (=> b!1171297 (= lt!402054 lt!402052)))

(assert (=> b!1171297 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401774))))

(assert (=> b!1171297 (= lt!402052 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401774 (h!16991 lt!401774)))))

(declare-fun b!1171298 () Bool)

(assert (=> b!1171298 (= e!751174 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))) (rules!9642 thiss!10527)))))

(assert (= (and d!334953 (not res!529220)) b!1171297))

(assert (= (and b!1171297 res!529219) b!1171298))

(declare-fun m!1344517 () Bool)

(assert (=> b!1171297 m!1344517))

(declare-fun m!1344521 () Bool)

(assert (=> b!1171297 m!1344521))

(declare-fun m!1344525 () Bool)

(assert (=> b!1171297 m!1344525))

(declare-fun m!1344529 () Bool)

(assert (=> b!1171297 m!1344529))

(assert (=> b!1171297 m!1344241))

(assert (=> b!1171297 m!1344521))

(assert (=> b!1171297 m!1344437))

(declare-fun m!1344541 () Bool)

(assert (=> b!1171297 m!1344541))

(declare-fun m!1344547 () Bool)

(assert (=> b!1171298 m!1344547))

(assert (=> b!1171105 d!334953))

(declare-fun d!334955 () Bool)

(declare-fun c!195332 () Bool)

(assert (=> d!334955 (= c!195332 ((_ is Node!3805) (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun e!751179 () Bool)

(assert (=> d!334955 (= (inv!15288 (c!195327 (tokens!1654 thiss!10527))) e!751179)))

(declare-fun b!1171305 () Bool)

(declare-fun inv!15289 (Conc!3805) Bool)

(assert (=> b!1171305 (= e!751179 (inv!15289 (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun b!1171306 () Bool)

(declare-fun e!751180 () Bool)

(assert (=> b!1171306 (= e!751179 e!751180)))

(declare-fun res!529223 () Bool)

(assert (=> b!1171306 (= res!529223 (not ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527)))))))

(assert (=> b!1171306 (=> res!529223 e!751180)))

(declare-fun b!1171307 () Bool)

(declare-fun inv!15290 (Conc!3805) Bool)

(assert (=> b!1171307 (= e!751180 (inv!15290 (c!195327 (tokens!1654 thiss!10527))))))

(assert (= (and d!334955 c!195332) b!1171305))

(assert (= (and d!334955 (not c!195332)) b!1171306))

(assert (= (and b!1171306 (not res!529223)) b!1171307))

(declare-fun m!1344563 () Bool)

(assert (=> b!1171305 m!1344563))

(declare-fun m!1344565 () Bool)

(assert (=> b!1171307 m!1344565))

(assert (=> b!1171099 d!334955))

(declare-fun d!334959 () Bool)

(declare-fun lt!402061 () Int)

(assert (=> d!334959 (= lt!402061 (size!9142 (list!4274 (tokens!1654 thiss!10527))))))

(declare-fun size!9143 (Conc!3805) Int)

(assert (=> d!334959 (= lt!402061 (size!9143 (c!195327 (tokens!1654 thiss!10527))))))

(assert (=> d!334959 (= (size!9137 (tokens!1654 thiss!10527)) lt!402061)))

(declare-fun bs!285690 () Bool)

(assert (= bs!285690 d!334959))

(assert (=> bs!285690 m!1344251))

(assert (=> bs!285690 m!1344251))

(declare-fun m!1344567 () Bool)

(assert (=> bs!285690 m!1344567))

(declare-fun m!1344569 () Bool)

(assert (=> bs!285690 m!1344569))

(assert (=> b!1171110 d!334959))

(declare-fun bs!285691 () Bool)

(declare-fun d!334961 () Bool)

(assert (= bs!285691 (and d!334961 b!1171109)))

(declare-fun lambda!48222 () Int)

(assert (=> bs!285691 (= lambda!48222 lambda!48203)))

(declare-fun bs!285692 () Bool)

(assert (= bs!285692 (and d!334961 d!334933)))

(assert (=> bs!285692 (= lambda!48222 lambda!48217)))

(declare-fun b!1171333 () Bool)

(declare-fun e!751200 () Bool)

(assert (=> b!1171333 (= e!751200 true)))

(declare-fun b!1171332 () Bool)

(declare-fun e!751199 () Bool)

(assert (=> b!1171332 (= e!751199 e!751200)))

(declare-fun b!1171331 () Bool)

(declare-fun e!751198 () Bool)

(assert (=> b!1171331 (= e!751198 e!751199)))

(assert (=> d!334961 e!751198))

(assert (= b!1171332 b!1171333))

(assert (= b!1171331 b!1171332))

(assert (= (and d!334961 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1171331))

(assert (=> b!1171333 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48222))))

(assert (=> b!1171333 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48222))))

(assert (=> d!334961 true))

(declare-fun e!751197 () Bool)

(assert (=> d!334961 e!751197))

(declare-fun res!529246 () Bool)

(assert (=> d!334961 (=> (not res!529246) (not e!751197))))

(declare-fun lt!402103 () Bool)

(assert (=> d!334961 (= res!529246 (= lt!402103 (forall!3066 (list!4274 (tokens!1654 thiss!10527)) lambda!48222)))))

(assert (=> d!334961 (= lt!402103 (forall!3065 (tokens!1654 thiss!10527) lambda!48222))))

(assert (=> d!334961 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!334961 (= (rulesProduceEachTokenIndividually!754 Lexer!1714 (rules!9642 thiss!10527) (tokens!1654 thiss!10527)) lt!402103)))

(declare-fun b!1171330 () Bool)

(assert (=> b!1171330 (= e!751197 (= lt!402103 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (list!4274 (tokens!1654 thiss!10527)))))))

(assert (= (and d!334961 res!529246) b!1171330))

(assert (=> d!334961 m!1344251))

(assert (=> d!334961 m!1344251))

(declare-fun m!1344667 () Bool)

(assert (=> d!334961 m!1344667))

(declare-fun m!1344669 () Bool)

(assert (=> d!334961 m!1344669))

(assert (=> d!334961 m!1344215))

(assert (=> b!1171330 m!1344251))

(assert (=> b!1171330 m!1344251))

(declare-fun m!1344671 () Bool)

(assert (=> b!1171330 m!1344671))

(assert (=> b!1171109 d!334961))

(declare-fun d!334969 () Bool)

(assert (=> d!334969 (= (list!4274 (tokens!1654 thiss!10527)) (list!4277 (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun bs!285693 () Bool)

(assert (= bs!285693 d!334969))

(declare-fun m!1344673 () Bool)

(assert (=> bs!285693 m!1344673))

(assert (=> b!1171109 d!334969))

(declare-fun d!334971 () Bool)

(declare-fun lt!402106 () Bool)

(assert (=> d!334971 (= lt!402106 (forall!3066 (list!4274 (tokens!1654 thiss!10527)) lambda!48203))))

(declare-fun forall!3068 (Conc!3805 Int) Bool)

(assert (=> d!334971 (= lt!402106 (forall!3068 (c!195327 (tokens!1654 thiss!10527)) lambda!48203))))

(assert (=> d!334971 (= (forall!3065 (tokens!1654 thiss!10527) lambda!48203) lt!402106)))

(declare-fun bs!285694 () Bool)

(assert (= bs!285694 d!334971))

(assert (=> bs!285694 m!1344251))

(assert (=> bs!285694 m!1344251))

(declare-fun m!1344675 () Bool)

(assert (=> bs!285694 m!1344675))

(declare-fun m!1344677 () Bool)

(assert (=> bs!285694 m!1344677))

(assert (=> b!1171109 d!334971))

(declare-fun bs!285695 () Bool)

(declare-fun d!334973 () Bool)

(assert (= bs!285695 (and d!334973 b!1171109)))

(declare-fun lambda!48223 () Int)

(assert (=> bs!285695 (= lambda!48223 lambda!48203)))

(declare-fun bs!285696 () Bool)

(assert (= bs!285696 (and d!334973 d!334933)))

(assert (=> bs!285696 (= lambda!48223 lambda!48217)))

(declare-fun bs!285697 () Bool)

(assert (= bs!285697 (and d!334973 d!334961)))

(assert (=> bs!285697 (= lambda!48223 lambda!48222)))

(declare-fun b!1171338 () Bool)

(declare-fun e!751205 () Bool)

(assert (=> b!1171338 (= e!751205 true)))

(declare-fun b!1171337 () Bool)

(declare-fun e!751204 () Bool)

(assert (=> b!1171337 (= e!751204 e!751205)))

(declare-fun b!1171336 () Bool)

(declare-fun e!751203 () Bool)

(assert (=> b!1171336 (= e!751203 e!751204)))

(assert (=> d!334973 e!751203))

(assert (= b!1171337 b!1171338))

(assert (= b!1171336 b!1171337))

(assert (= (and d!334973 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1171336))

(assert (=> b!1171338 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48223))))

(assert (=> b!1171338 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48223))))

(assert (=> d!334973 true))

(declare-fun lt!402107 () Bool)

(assert (=> d!334973 (= lt!402107 (forall!3066 lt!401774 lambda!48223))))

(declare-fun e!751201 () Bool)

(assert (=> d!334973 (= lt!402107 e!751201)))

(declare-fun res!529247 () Bool)

(assert (=> d!334973 (=> res!529247 e!751201)))

(assert (=> d!334973 (= res!529247 (not ((_ is Cons!11590) lt!401774)))))

(assert (=> d!334973 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!334973 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401774) lt!402107)))

(declare-fun b!1171334 () Bool)

(declare-fun e!751202 () Bool)

(assert (=> b!1171334 (= e!751201 e!751202)))

(declare-fun res!529248 () Bool)

(assert (=> b!1171334 (=> (not res!529248) (not e!751202))))

(assert (=> b!1171334 (= res!529248 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401774)))))

(declare-fun b!1171335 () Bool)

(assert (=> b!1171335 (= e!751202 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!401774)))))

(assert (= (and d!334973 (not res!529247)) b!1171334))

(assert (= (and b!1171334 res!529248) b!1171335))

(declare-fun m!1344679 () Bool)

(assert (=> d!334973 m!1344679))

(assert (=> d!334973 m!1344215))

(assert (=> b!1171334 m!1344241))

(assert (=> b!1171335 m!1344269))

(assert (=> b!1171109 d!334973))

(declare-fun b!1171339 () Bool)

(declare-fun e!751209 () Bool)

(declare-fun e!751210 () Bool)

(assert (=> b!1171339 (= e!751209 e!751210)))

(declare-fun res!529251 () Bool)

(assert (=> b!1171339 (=> (not res!529251) (not e!751210))))

(assert (=> b!1171339 (= res!529251 (separableTokensPredicate!138 Lexer!1714 (apply!2517 (tokens!1654 thiss!10527) 1) (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!402109 () Unit!17788)

(declare-fun Unit!17809 () Unit!17788)

(assert (=> b!1171339 (= lt!402109 Unit!17809)))

(assert (=> b!1171339 (> (size!9136 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!402138 () Unit!17788)

(declare-fun Unit!17810 () Unit!17788)

(assert (=> b!1171339 (= lt!402138 Unit!17810)))

(assert (=> b!1171339 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))

(declare-fun lt!402123 () Unit!17788)

(declare-fun Unit!17811 () Unit!17788)

(assert (=> b!1171339 (= lt!402123 Unit!17811)))

(assert (=> b!1171339 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) 1))))

(declare-fun lt!402121 () Unit!17788)

(declare-fun lt!402124 () Unit!17788)

(assert (=> b!1171339 (= lt!402121 lt!402124)))

(declare-fun lt!402118 () Token!3704)

(assert (=> b!1171339 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402118)))

(declare-fun lt!402131 () List!11614)

(assert (=> b!1171339 (= lt!402124 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402131 lt!402118))))

(assert (=> b!1171339 (= lt!402118 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))

(assert (=> b!1171339 (= lt!402131 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402130 () Unit!17788)

(declare-fun lt!402120 () Unit!17788)

(assert (=> b!1171339 (= lt!402130 lt!402120)))

(declare-fun lt!402127 () Token!3704)

(assert (=> b!1171339 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402127)))

(declare-fun lt!402117 () List!11614)

(assert (=> b!1171339 (= lt!402120 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402117 lt!402127))))

(assert (=> b!1171339 (= lt!402127 (apply!2517 (tokens!1654 thiss!10527) 1))))

(assert (=> b!1171339 (= lt!402117 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402114 () Unit!17788)

(declare-fun lt!402134 () Unit!17788)

(assert (=> b!1171339 (= lt!402114 lt!402134)))

(declare-fun lt!402126 () List!11614)

(declare-fun lt!402136 () Int)

(assert (=> b!1171339 (= (tail!1694 (drop!493 lt!402126 lt!402136)) (drop!493 lt!402126 (+ lt!402136 1)))))

(assert (=> b!1171339 (= lt!402134 (lemmaDropTail!367 lt!402126 lt!402136))))

(assert (=> b!1171339 (= lt!402136 (+ 1 1))))

(assert (=> b!1171339 (= lt!402126 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402137 () Unit!17788)

(declare-fun lt!402140 () Unit!17788)

(assert (=> b!1171339 (= lt!402137 lt!402140)))

(declare-fun lt!402125 () List!11614)

(assert (=> b!1171339 (= (tail!1694 (drop!493 lt!402125 1)) (drop!493 lt!402125 (+ 1 1)))))

(assert (=> b!1171339 (= lt!402140 (lemmaDropTail!367 lt!402125 1))))

(assert (=> b!1171339 (= lt!402125 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402116 () Unit!17788)

(declare-fun lt!402122 () Unit!17788)

(assert (=> b!1171339 (= lt!402116 lt!402122)))

(declare-fun lt!402129 () List!11614)

(declare-fun lt!402119 () Int)

(assert (=> b!1171339 (= (head!2110 (drop!493 lt!402129 lt!402119)) (apply!2518 lt!402129 lt!402119))))

(assert (=> b!1171339 (= lt!402122 (lemmaDropApply!379 lt!402129 lt!402119))))

(assert (=> b!1171339 (= lt!402119 (+ 1 1))))

(assert (=> b!1171339 (= lt!402129 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402133 () Unit!17788)

(declare-fun lt!402113 () Unit!17788)

(assert (=> b!1171339 (= lt!402133 lt!402113)))

(declare-fun lt!402110 () List!11614)

(assert (=> b!1171339 (= (head!2110 (drop!493 lt!402110 1)) (apply!2518 lt!402110 1))))

(assert (=> b!1171339 (= lt!402113 (lemmaDropApply!379 lt!402110 1))))

(assert (=> b!1171339 (= lt!402110 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun b!1171340 () Bool)

(declare-fun e!751207 () Bool)

(declare-fun lt!402135 () List!11614)

(assert (=> b!1171340 (= e!751207 (<= 1 (size!9142 lt!402135)))))

(declare-fun d!334975 () Bool)

(declare-fun lt!402108 () Bool)

(assert (=> d!334975 (= lt!402108 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 (tokens!1654 thiss!10527) 1) (rules!9642 thiss!10527)))))

(declare-fun lt!402128 () Unit!17788)

(declare-fun lt!402112 () Unit!17788)

(assert (=> d!334975 (= lt!402128 lt!402112)))

(declare-fun lt!402139 () List!11614)

(assert (=> d!334975 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402139)))

(declare-fun lt!402132 () List!11614)

(assert (=> d!334975 (= lt!402112 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!402132 lt!402139))))

(declare-fun e!751208 () Bool)

(assert (=> d!334975 e!751208))

(declare-fun res!529255 () Bool)

(assert (=> d!334975 (=> (not res!529255) (not e!751208))))

(assert (=> d!334975 (= res!529255 ((_ is Lexer!1714) Lexer!1714))))

(assert (=> d!334975 (= lt!402139 (dropList!325 (tokens!1654 thiss!10527) 1))))

(assert (=> d!334975 (= lt!402132 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402111 () Unit!17788)

(declare-fun lt!402115 () Unit!17788)

(assert (=> d!334975 (= lt!402111 lt!402115)))

(assert (=> d!334975 (subseq!271 (drop!493 lt!402135 1) lt!402135)))

(assert (=> d!334975 (= lt!402115 (lemmaDropSubSeq!33 lt!402135 1))))

(assert (=> d!334975 e!751207))

(declare-fun res!529254 () Bool)

(assert (=> d!334975 (=> (not res!529254) (not e!751207))))

(assert (=> d!334975 (= res!529254 (>= 1 0))))

(assert (=> d!334975 (= lt!402135 (list!4274 (tokens!1654 thiss!10527)))))

(assert (=> d!334975 (= lt!402108 e!751209)))

(declare-fun res!529253 () Bool)

(assert (=> d!334975 (=> res!529253 e!751209)))

(assert (=> d!334975 (= res!529253 (not (< 1 (- (size!9137 (tokens!1654 thiss!10527)) 1))))))

(declare-fun e!751206 () Bool)

(assert (=> d!334975 e!751206))

(declare-fun res!529250 () Bool)

(assert (=> d!334975 (=> (not res!529250) (not e!751206))))

(assert (=> d!334975 (= res!529250 (>= 1 0))))

(assert (=> d!334975 (= (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) 1 (rules!9642 thiss!10527)) lt!402108)))

(declare-fun b!1171341 () Bool)

(assert (=> b!1171341 (= e!751206 (<= 1 (size!9137 (tokens!1654 thiss!10527))))))

(declare-fun b!1171342 () Bool)

(declare-fun res!529252 () Bool)

(assert (=> b!1171342 (=> (not res!529252) (not e!751208))))

(assert (=> b!1171342 (= res!529252 (not (isEmpty!7032 (rules!9642 thiss!10527))))))

(declare-fun b!1171343 () Bool)

(declare-fun res!529256 () Bool)

(assert (=> b!1171343 (=> (not res!529256) (not e!751208))))

(assert (=> b!1171343 (= res!529256 (subseq!271 lt!402139 lt!402132))))

(declare-fun b!1171344 () Bool)

(assert (=> b!1171344 (= e!751208 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402132))))

(declare-fun b!1171345 () Bool)

(assert (=> b!1171345 (= e!751210 (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) (+ 1 1) (rules!9642 thiss!10527)))))

(declare-fun b!1171346 () Bool)

(declare-fun res!529249 () Bool)

(assert (=> b!1171346 (=> (not res!529249) (not e!751208))))

(assert (=> b!1171346 (= res!529249 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(assert (= (and d!334975 res!529250) b!1171341))

(assert (= (and d!334975 (not res!529253)) b!1171339))

(assert (= (and b!1171339 res!529251) b!1171345))

(assert (= (and d!334975 res!529254) b!1171340))

(assert (= (and d!334975 res!529255) b!1171342))

(assert (= (and b!1171342 res!529252) b!1171346))

(assert (= (and b!1171346 res!529249) b!1171343))

(assert (= (and b!1171343 res!529256) b!1171344))

(declare-fun m!1344681 () Bool)

(assert (=> b!1171339 m!1344681))

(declare-fun m!1344683 () Bool)

(assert (=> b!1171339 m!1344683))

(declare-fun m!1344685 () Bool)

(assert (=> b!1171339 m!1344685))

(declare-fun m!1344687 () Bool)

(assert (=> b!1171339 m!1344687))

(declare-fun m!1344689 () Bool)

(assert (=> b!1171339 m!1344689))

(declare-fun m!1344691 () Bool)

(assert (=> b!1171339 m!1344691))

(declare-fun m!1344693 () Bool)

(assert (=> b!1171339 m!1344693))

(declare-fun m!1344695 () Bool)

(assert (=> b!1171339 m!1344695))

(assert (=> b!1171339 m!1344691))

(declare-fun m!1344697 () Bool)

(assert (=> b!1171339 m!1344697))

(declare-fun m!1344699 () Bool)

(assert (=> b!1171339 m!1344699))

(assert (=> b!1171339 m!1344207))

(declare-fun m!1344701 () Bool)

(assert (=> b!1171339 m!1344701))

(declare-fun m!1344703 () Bool)

(assert (=> b!1171339 m!1344703))

(declare-fun m!1344705 () Bool)

(assert (=> b!1171339 m!1344705))

(declare-fun m!1344707 () Bool)

(assert (=> b!1171339 m!1344707))

(assert (=> b!1171339 m!1344697))

(declare-fun m!1344709 () Bool)

(assert (=> b!1171339 m!1344709))

(assert (=> b!1171339 m!1344251))

(declare-fun m!1344711 () Bool)

(assert (=> b!1171339 m!1344711))

(declare-fun m!1344713 () Bool)

(assert (=> b!1171339 m!1344713))

(declare-fun m!1344715 () Bool)

(assert (=> b!1171339 m!1344715))

(assert (=> b!1171339 m!1344207))

(assert (=> b!1171339 m!1344681))

(declare-fun m!1344717 () Bool)

(assert (=> b!1171339 m!1344717))

(assert (=> b!1171339 m!1344693))

(declare-fun m!1344719 () Bool)

(assert (=> b!1171339 m!1344719))

(declare-fun m!1344721 () Bool)

(assert (=> b!1171339 m!1344721))

(assert (=> b!1171339 m!1344685))

(declare-fun m!1344723 () Bool)

(assert (=> b!1171339 m!1344723))

(assert (=> b!1171339 m!1344207))

(assert (=> b!1171339 m!1344691))

(declare-fun m!1344725 () Bool)

(assert (=> b!1171339 m!1344725))

(assert (=> b!1171339 m!1344691))

(declare-fun m!1344727 () Bool)

(assert (=> b!1171339 m!1344727))

(assert (=> b!1171339 m!1344689))

(declare-fun m!1344729 () Bool)

(assert (=> b!1171339 m!1344729))

(declare-fun m!1344731 () Bool)

(assert (=> b!1171339 m!1344731))

(declare-fun m!1344733 () Bool)

(assert (=> b!1171343 m!1344733))

(assert (=> b!1171346 m!1344167))

(declare-fun m!1344735 () Bool)

(assert (=> b!1171345 m!1344735))

(assert (=> b!1171342 m!1344215))

(declare-fun m!1344737 () Bool)

(assert (=> b!1171344 m!1344737))

(assert (=> b!1171341 m!1344261))

(declare-fun m!1344739 () Bool)

(assert (=> d!334975 m!1344739))

(assert (=> d!334975 m!1344261))

(declare-fun m!1344741 () Bool)

(assert (=> d!334975 m!1344741))

(declare-fun m!1344743 () Bool)

(assert (=> d!334975 m!1344743))

(assert (=> d!334975 m!1344741))

(declare-fun m!1344745 () Bool)

(assert (=> d!334975 m!1344745))

(declare-fun m!1344747 () Bool)

(assert (=> d!334975 m!1344747))

(declare-fun m!1344749 () Bool)

(assert (=> d!334975 m!1344749))

(assert (=> d!334975 m!1344745))

(declare-fun m!1344751 () Bool)

(assert (=> d!334975 m!1344751))

(assert (=> d!334975 m!1344251))

(declare-fun m!1344753 () Bool)

(assert (=> b!1171340 m!1344753))

(assert (=> b!1171098 d!334975))

(declare-fun b!1171347 () Bool)

(declare-fun e!751214 () Bool)

(declare-fun e!751215 () Bool)

(assert (=> b!1171347 (= e!751214 e!751215)))

(declare-fun res!529259 () Bool)

(assert (=> b!1171347 (=> (not res!529259) (not e!751215))))

(assert (=> b!1171347 (= res!529259 (separableTokensPredicate!138 Lexer!1714 (apply!2517 (tokens!1654 thiss!10527) 0) (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!402142 () Unit!17788)

(declare-fun Unit!17812 () Unit!17788)

(assert (=> b!1171347 (= lt!402142 Unit!17812)))

(assert (=> b!1171347 (> (size!9136 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!402171 () Unit!17788)

(declare-fun Unit!17813 () Unit!17788)

(assert (=> b!1171347 (= lt!402171 Unit!17813)))

(assert (=> b!1171347 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))

(declare-fun lt!402156 () Unit!17788)

(declare-fun Unit!17814 () Unit!17788)

(assert (=> b!1171347 (= lt!402156 Unit!17814)))

(assert (=> b!1171347 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) 0))))

(declare-fun lt!402154 () Unit!17788)

(declare-fun lt!402157 () Unit!17788)

(assert (=> b!1171347 (= lt!402154 lt!402157)))

(declare-fun lt!402151 () Token!3704)

(assert (=> b!1171347 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402151)))

(declare-fun lt!402164 () List!11614)

(assert (=> b!1171347 (= lt!402157 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402164 lt!402151))))

(assert (=> b!1171347 (= lt!402151 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))

(assert (=> b!1171347 (= lt!402164 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402163 () Unit!17788)

(declare-fun lt!402153 () Unit!17788)

(assert (=> b!1171347 (= lt!402163 lt!402153)))

(declare-fun lt!402160 () Token!3704)

(assert (=> b!1171347 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402160)))

(declare-fun lt!402150 () List!11614)

(assert (=> b!1171347 (= lt!402153 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402150 lt!402160))))

(assert (=> b!1171347 (= lt!402160 (apply!2517 (tokens!1654 thiss!10527) 0))))

(assert (=> b!1171347 (= lt!402150 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402147 () Unit!17788)

(declare-fun lt!402167 () Unit!17788)

(assert (=> b!1171347 (= lt!402147 lt!402167)))

(declare-fun lt!402159 () List!11614)

(declare-fun lt!402169 () Int)

(assert (=> b!1171347 (= (tail!1694 (drop!493 lt!402159 lt!402169)) (drop!493 lt!402159 (+ lt!402169 1)))))

(assert (=> b!1171347 (= lt!402167 (lemmaDropTail!367 lt!402159 lt!402169))))

(assert (=> b!1171347 (= lt!402169 (+ 0 1))))

(assert (=> b!1171347 (= lt!402159 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402170 () Unit!17788)

(declare-fun lt!402173 () Unit!17788)

(assert (=> b!1171347 (= lt!402170 lt!402173)))

(declare-fun lt!402158 () List!11614)

(assert (=> b!1171347 (= (tail!1694 (drop!493 lt!402158 0)) (drop!493 lt!402158 (+ 0 1)))))

(assert (=> b!1171347 (= lt!402173 (lemmaDropTail!367 lt!402158 0))))

(assert (=> b!1171347 (= lt!402158 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402149 () Unit!17788)

(declare-fun lt!402155 () Unit!17788)

(assert (=> b!1171347 (= lt!402149 lt!402155)))

(declare-fun lt!402162 () List!11614)

(declare-fun lt!402152 () Int)

(assert (=> b!1171347 (= (head!2110 (drop!493 lt!402162 lt!402152)) (apply!2518 lt!402162 lt!402152))))

(assert (=> b!1171347 (= lt!402155 (lemmaDropApply!379 lt!402162 lt!402152))))

(assert (=> b!1171347 (= lt!402152 (+ 0 1))))

(assert (=> b!1171347 (= lt!402162 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402166 () Unit!17788)

(declare-fun lt!402146 () Unit!17788)

(assert (=> b!1171347 (= lt!402166 lt!402146)))

(declare-fun lt!402143 () List!11614)

(assert (=> b!1171347 (= (head!2110 (drop!493 lt!402143 0)) (apply!2518 lt!402143 0))))

(assert (=> b!1171347 (= lt!402146 (lemmaDropApply!379 lt!402143 0))))

(assert (=> b!1171347 (= lt!402143 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun b!1171348 () Bool)

(declare-fun e!751212 () Bool)

(declare-fun lt!402168 () List!11614)

(assert (=> b!1171348 (= e!751212 (<= 0 (size!9142 lt!402168)))))

(declare-fun d!334977 () Bool)

(declare-fun lt!402141 () Bool)

(assert (=> d!334977 (= lt!402141 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 (tokens!1654 thiss!10527) 0) (rules!9642 thiss!10527)))))

(declare-fun lt!402161 () Unit!17788)

(declare-fun lt!402145 () Unit!17788)

(assert (=> d!334977 (= lt!402161 lt!402145)))

(declare-fun lt!402172 () List!11614)

(assert (=> d!334977 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402172)))

(declare-fun lt!402165 () List!11614)

(assert (=> d!334977 (= lt!402145 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!402165 lt!402172))))

(declare-fun e!751213 () Bool)

(assert (=> d!334977 e!751213))

(declare-fun res!529263 () Bool)

(assert (=> d!334977 (=> (not res!529263) (not e!751213))))

(assert (=> d!334977 (= res!529263 ((_ is Lexer!1714) Lexer!1714))))

(assert (=> d!334977 (= lt!402172 (dropList!325 (tokens!1654 thiss!10527) 0))))

(assert (=> d!334977 (= lt!402165 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402144 () Unit!17788)

(declare-fun lt!402148 () Unit!17788)

(assert (=> d!334977 (= lt!402144 lt!402148)))

(assert (=> d!334977 (subseq!271 (drop!493 lt!402168 0) lt!402168)))

(assert (=> d!334977 (= lt!402148 (lemmaDropSubSeq!33 lt!402168 0))))

(assert (=> d!334977 e!751212))

(declare-fun res!529262 () Bool)

(assert (=> d!334977 (=> (not res!529262) (not e!751212))))

(assert (=> d!334977 (= res!529262 (>= 0 0))))

(assert (=> d!334977 (= lt!402168 (list!4274 (tokens!1654 thiss!10527)))))

(assert (=> d!334977 (= lt!402141 e!751214)))

(declare-fun res!529261 () Bool)

(assert (=> d!334977 (=> res!529261 e!751214)))

(assert (=> d!334977 (= res!529261 (not (< 0 (- (size!9137 (tokens!1654 thiss!10527)) 1))))))

(declare-fun e!751211 () Bool)

(assert (=> d!334977 e!751211))

(declare-fun res!529258 () Bool)

(assert (=> d!334977 (=> (not res!529258) (not e!751211))))

(assert (=> d!334977 (= res!529258 (>= 0 0))))

(assert (=> d!334977 (= (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) 0 (rules!9642 thiss!10527)) lt!402141)))

(declare-fun b!1171349 () Bool)

(assert (=> b!1171349 (= e!751211 (<= 0 (size!9137 (tokens!1654 thiss!10527))))))

(declare-fun b!1171350 () Bool)

(declare-fun res!529260 () Bool)

(assert (=> b!1171350 (=> (not res!529260) (not e!751213))))

(assert (=> b!1171350 (= res!529260 (not (isEmpty!7032 (rules!9642 thiss!10527))))))

(declare-fun b!1171351 () Bool)

(declare-fun res!529264 () Bool)

(assert (=> b!1171351 (=> (not res!529264) (not e!751213))))

(assert (=> b!1171351 (= res!529264 (subseq!271 lt!402172 lt!402165))))

(declare-fun b!1171352 () Bool)

(assert (=> b!1171352 (= e!751213 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402165))))

(declare-fun b!1171353 () Bool)

(assert (=> b!1171353 (= e!751215 (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) (+ 0 1) (rules!9642 thiss!10527)))))

(declare-fun b!1171354 () Bool)

(declare-fun res!529257 () Bool)

(assert (=> b!1171354 (=> (not res!529257) (not e!751213))))

(assert (=> b!1171354 (= res!529257 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(assert (= (and d!334977 res!529258) b!1171349))

(assert (= (and d!334977 (not res!529261)) b!1171347))

(assert (= (and b!1171347 res!529259) b!1171353))

(assert (= (and d!334977 res!529262) b!1171348))

(assert (= (and d!334977 res!529263) b!1171350))

(assert (= (and b!1171350 res!529260) b!1171354))

(assert (= (and b!1171354 res!529257) b!1171351))

(assert (= (and b!1171351 res!529264) b!1171352))

(declare-fun m!1344755 () Bool)

(assert (=> b!1171347 m!1344755))

(declare-fun m!1344757 () Bool)

(assert (=> b!1171347 m!1344757))

(declare-fun m!1344759 () Bool)

(assert (=> b!1171347 m!1344759))

(declare-fun m!1344761 () Bool)

(assert (=> b!1171347 m!1344761))

(declare-fun m!1344763 () Bool)

(assert (=> b!1171347 m!1344763))

(declare-fun m!1344765 () Bool)

(assert (=> b!1171347 m!1344765))

(declare-fun m!1344767 () Bool)

(assert (=> b!1171347 m!1344767))

(declare-fun m!1344769 () Bool)

(assert (=> b!1171347 m!1344769))

(assert (=> b!1171347 m!1344765))

(declare-fun m!1344771 () Bool)

(assert (=> b!1171347 m!1344771))

(declare-fun m!1344773 () Bool)

(assert (=> b!1171347 m!1344773))

(assert (=> b!1171347 m!1344197))

(declare-fun m!1344775 () Bool)

(assert (=> b!1171347 m!1344775))

(declare-fun m!1344777 () Bool)

(assert (=> b!1171347 m!1344777))

(declare-fun m!1344779 () Bool)

(assert (=> b!1171347 m!1344779))

(declare-fun m!1344781 () Bool)

(assert (=> b!1171347 m!1344781))

(assert (=> b!1171347 m!1344771))

(declare-fun m!1344783 () Bool)

(assert (=> b!1171347 m!1344783))

(assert (=> b!1171347 m!1344251))

(declare-fun m!1344785 () Bool)

(assert (=> b!1171347 m!1344785))

(declare-fun m!1344787 () Bool)

(assert (=> b!1171347 m!1344787))

(declare-fun m!1344789 () Bool)

(assert (=> b!1171347 m!1344789))

(assert (=> b!1171347 m!1344197))

(assert (=> b!1171347 m!1344755))

(declare-fun m!1344791 () Bool)

(assert (=> b!1171347 m!1344791))

(assert (=> b!1171347 m!1344767))

(declare-fun m!1344793 () Bool)

(assert (=> b!1171347 m!1344793))

(declare-fun m!1344795 () Bool)

(assert (=> b!1171347 m!1344795))

(assert (=> b!1171347 m!1344759))

(declare-fun m!1344797 () Bool)

(assert (=> b!1171347 m!1344797))

(assert (=> b!1171347 m!1344197))

(assert (=> b!1171347 m!1344765))

(declare-fun m!1344799 () Bool)

(assert (=> b!1171347 m!1344799))

(assert (=> b!1171347 m!1344765))

(declare-fun m!1344801 () Bool)

(assert (=> b!1171347 m!1344801))

(assert (=> b!1171347 m!1344763))

(declare-fun m!1344803 () Bool)

(assert (=> b!1171347 m!1344803))

(declare-fun m!1344805 () Bool)

(assert (=> b!1171347 m!1344805))

(declare-fun m!1344807 () Bool)

(assert (=> b!1171351 m!1344807))

(assert (=> b!1171354 m!1344167))

(declare-fun m!1344809 () Bool)

(assert (=> b!1171353 m!1344809))

(assert (=> b!1171350 m!1344215))

(declare-fun m!1344811 () Bool)

(assert (=> b!1171352 m!1344811))

(assert (=> b!1171349 m!1344261))

(declare-fun m!1344813 () Bool)

(assert (=> d!334977 m!1344813))

(assert (=> d!334977 m!1344261))

(declare-fun m!1344815 () Bool)

(assert (=> d!334977 m!1344815))

(declare-fun m!1344817 () Bool)

(assert (=> d!334977 m!1344817))

(assert (=> d!334977 m!1344815))

(declare-fun m!1344819 () Bool)

(assert (=> d!334977 m!1344819))

(declare-fun m!1344821 () Bool)

(assert (=> d!334977 m!1344821))

(declare-fun m!1344823 () Bool)

(assert (=> d!334977 m!1344823))

(assert (=> d!334977 m!1344819))

(declare-fun m!1344825 () Bool)

(assert (=> d!334977 m!1344825))

(assert (=> d!334977 m!1344251))

(declare-fun m!1344827 () Bool)

(assert (=> b!1171348 m!1344827))

(assert (=> b!1171097 d!334977))

(declare-fun bs!285698 () Bool)

(declare-fun d!334979 () Bool)

(assert (= bs!285698 (and d!334979 b!1171109)))

(declare-fun lambda!48224 () Int)

(assert (=> bs!285698 (= lambda!48224 lambda!48203)))

(declare-fun bs!285699 () Bool)

(assert (= bs!285699 (and d!334979 d!334933)))

(assert (=> bs!285699 (= lambda!48224 lambda!48217)))

(declare-fun bs!285700 () Bool)

(assert (= bs!285700 (and d!334979 d!334961)))

(assert (=> bs!285700 (= lambda!48224 lambda!48222)))

(declare-fun bs!285701 () Bool)

(assert (= bs!285701 (and d!334979 d!334973)))

(assert (=> bs!285701 (= lambda!48224 lambda!48223)))

(declare-fun b!1171359 () Bool)

(declare-fun e!751220 () Bool)

(assert (=> b!1171359 (= e!751220 true)))

(declare-fun b!1171358 () Bool)

(declare-fun e!751219 () Bool)

(assert (=> b!1171358 (= e!751219 e!751220)))

(declare-fun b!1171357 () Bool)

(declare-fun e!751218 () Bool)

(assert (=> b!1171357 (= e!751218 e!751219)))

(assert (=> d!334979 e!751218))

(assert (= b!1171358 b!1171359))

(assert (= b!1171357 b!1171358))

(assert (= (and d!334979 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1171357))

(assert (=> b!1171359 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48224))))

(assert (=> b!1171359 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48224))))

(assert (=> d!334979 true))

(declare-fun lt!402174 () Bool)

(assert (=> d!334979 (= lt!402174 (forall!3066 (t!110758 lt!401773) lambda!48224))))

(declare-fun e!751216 () Bool)

(assert (=> d!334979 (= lt!402174 e!751216)))

(declare-fun res!529265 () Bool)

(assert (=> d!334979 (=> res!529265 e!751216)))

(assert (=> d!334979 (= res!529265 (not ((_ is Cons!11590) (t!110758 lt!401773))))))

(assert (=> d!334979 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!334979 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!401773)) lt!402174)))

(declare-fun b!1171355 () Bool)

(declare-fun e!751217 () Bool)

(assert (=> b!1171355 (= e!751216 e!751217)))

(declare-fun res!529266 () Bool)

(assert (=> b!1171355 (=> (not res!529266) (not e!751217))))

(assert (=> b!1171355 (= res!529266 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401773))))))

(declare-fun b!1171356 () Bool)

(assert (=> b!1171356 (= e!751217 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 (t!110758 lt!401773))))))

(assert (= (and d!334979 (not res!529265)) b!1171355))

(assert (= (and b!1171355 res!529266) b!1171356))

(declare-fun m!1344829 () Bool)

(assert (=> d!334979 m!1344829))

(assert (=> d!334979 m!1344215))

(declare-fun m!1344831 () Bool)

(assert (=> b!1171355 m!1344831))

(declare-fun m!1344833 () Bool)

(assert (=> b!1171356 m!1344833))

(assert (=> b!1171108 d!334979))

(declare-fun d!334981 () Bool)

(declare-fun lt!402177 () Int)

(declare-fun size!9144 (List!11613) Int)

(declare-fun list!4278 (BalanceConc!7630) List!11613)

(assert (=> d!334981 (= lt!402177 (size!9144 (list!4278 (charsOf!1076 lt!401769))))))

(declare-fun size!9145 (Conc!3804) Int)

(assert (=> d!334981 (= lt!402177 (size!9145 (c!195326 (charsOf!1076 lt!401769))))))

(assert (=> d!334981 (= (size!9136 (charsOf!1076 lt!401769)) lt!402177)))

(declare-fun bs!285702 () Bool)

(assert (= bs!285702 d!334981))

(assert (=> bs!285702 m!1344243))

(declare-fun m!1344835 () Bool)

(assert (=> bs!285702 m!1344835))

(assert (=> bs!285702 m!1344835))

(declare-fun m!1344837 () Bool)

(assert (=> bs!285702 m!1344837))

(declare-fun m!1344839 () Bool)

(assert (=> bs!285702 m!1344839))

(assert (=> b!1171102 d!334981))

(declare-fun d!334983 () Bool)

(declare-fun lt!402180 () BalanceConc!7630)

(assert (=> d!334983 (= (list!4278 lt!402180) (originalCharacters!2575 lt!401769))))

(declare-fun dynLambda!5126 (Int TokenValue!2087) BalanceConc!7630)

(assert (=> d!334983 (= lt!402180 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769)))))

(assert (=> d!334983 (= (charsOf!1076 lt!401769) lt!402180)))

(declare-fun b_lambda!34989 () Bool)

(assert (=> (not b_lambda!34989) (not d!334983)))

(declare-fun bs!285703 () Bool)

(assert (= bs!285703 d!334983))

(declare-fun m!1344841 () Bool)

(assert (=> bs!285703 m!1344841))

(declare-fun m!1344843 () Bool)

(assert (=> bs!285703 m!1344843))

(assert (=> b!1171102 d!334983))

(declare-fun d!334985 () Bool)

(declare-fun res!529269 () Bool)

(declare-fun e!751223 () Bool)

(assert (=> d!334985 (=> (not res!529269) (not e!751223))))

(declare-fun rulesValid!713 (LexerInterface!1716 List!11615) Bool)

(assert (=> d!334985 (= res!529269 (rulesValid!713 Lexer!1714 (rules!9642 thiss!10527)))))

(assert (=> d!334985 (= (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)) e!751223)))

(declare-fun b!1171362 () Bool)

(declare-datatypes ((List!11617 0))(
  ( (Nil!11593) (Cons!11593 (h!16994 String!14023) (t!110781 List!11617)) )
))
(declare-fun noDuplicateTag!713 (LexerInterface!1716 List!11615 List!11617) Bool)

(assert (=> b!1171362 (= e!751223 (noDuplicateTag!713 Lexer!1714 (rules!9642 thiss!10527) Nil!11593))))

(assert (= (and d!334985 res!529269) b!1171362))

(declare-fun m!1344845 () Bool)

(assert (=> d!334985 m!1344845))

(declare-fun m!1344847 () Bool)

(assert (=> b!1171362 m!1344847))

(assert (=> b!1171101 d!334985))

(declare-fun d!334987 () Bool)

(declare-fun e!751238 () Bool)

(assert (=> d!334987 e!751238))

(declare-fun res!529289 () Bool)

(assert (=> d!334987 (=> (not res!529289) (not e!751238))))

(assert (=> d!334987 (= res!529289 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(declare-fun Unit!17815 () Unit!17788)

(assert (=> d!334987 (= (lemmaInvariant!208 thiss!10527) Unit!17815)))

(declare-fun b!1171385 () Bool)

(declare-fun res!529290 () Bool)

(assert (=> b!1171385 (=> (not res!529290) (not e!751238))))

(assert (=> b!1171385 (= res!529290 (rulesProduceEachTokenIndividually!754 Lexer!1714 (rules!9642 thiss!10527) (tokens!1654 thiss!10527)))))

(declare-fun b!1171386 () Bool)

(assert (=> b!1171386 (= e!751238 (separableTokens!152 Lexer!1714 (tokens!1654 thiss!10527) (rules!9642 thiss!10527)))))

(assert (= (and d!334987 res!529289) b!1171385))

(assert (= (and b!1171385 res!529290) b!1171386))

(assert (=> d!334987 m!1344167))

(assert (=> b!1171385 m!1344253))

(declare-fun m!1344935 () Bool)

(assert (=> b!1171386 m!1344935))

(assert (=> b!1171101 d!334987))

(declare-fun d!334999 () Bool)

(declare-fun lt!402236 () Bool)

(declare-fun e!751276 () Bool)

(assert (=> d!334999 (= lt!402236 e!751276)))

(declare-fun res!529314 () Bool)

(assert (=> d!334999 (=> (not res!529314) (not e!751276))))

(declare-datatypes ((tuple2!12048 0))(
  ( (tuple2!12049 (_1!6871 BalanceConc!7632) (_2!6871 BalanceConc!7630)) )
))
(declare-fun lex!714 (LexerInterface!1716 List!11615 BalanceConc!7630) tuple2!12048)

(declare-fun print!651 (LexerInterface!1716 BalanceConc!7632) BalanceConc!7630)

(declare-fun singletonSeq!684 (Token!3704) BalanceConc!7632)

(assert (=> d!334999 (= res!529314 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774)))))) (list!4274 (singletonSeq!684 (h!16991 lt!401774)))))))

(declare-fun e!751275 () Bool)

(assert (=> d!334999 (= lt!402236 e!751275)))

(declare-fun res!529315 () Bool)

(assert (=> d!334999 (=> (not res!529315) (not e!751275))))

(declare-fun lt!402237 () tuple2!12048)

(assert (=> d!334999 (= res!529315 (= (size!9137 (_1!6871 lt!402237)) 1))))

(assert (=> d!334999 (= lt!402237 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774)))))))

(assert (=> d!334999 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!334999 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401774)) lt!402236)))

(declare-fun b!1171442 () Bool)

(declare-fun res!529316 () Bool)

(assert (=> b!1171442 (=> (not res!529316) (not e!751275))))

(assert (=> b!1171442 (= res!529316 (= (apply!2517 (_1!6871 lt!402237) 0) (h!16991 lt!401774)))))

(declare-fun b!1171443 () Bool)

(declare-fun isEmpty!7034 (BalanceConc!7630) Bool)

(assert (=> b!1171443 (= e!751275 (isEmpty!7034 (_2!6871 lt!402237)))))

(declare-fun b!1171444 () Bool)

(assert (=> b!1171444 (= e!751276 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774)))))))))

(assert (= (and d!334999 res!529315) b!1171442))

(assert (= (and b!1171442 res!529316) b!1171443))

(assert (= (and d!334999 res!529314) b!1171444))

(declare-fun m!1345001 () Bool)

(assert (=> d!334999 m!1345001))

(declare-fun m!1345003 () Bool)

(assert (=> d!334999 m!1345003))

(assert (=> d!334999 m!1344215))

(declare-fun m!1345005 () Bool)

(assert (=> d!334999 m!1345005))

(declare-fun m!1345007 () Bool)

(assert (=> d!334999 m!1345007))

(declare-fun m!1345009 () Bool)

(assert (=> d!334999 m!1345009))

(assert (=> d!334999 m!1345001))

(assert (=> d!334999 m!1345007))

(declare-fun m!1345011 () Bool)

(assert (=> d!334999 m!1345011))

(assert (=> d!334999 m!1345001))

(declare-fun m!1345013 () Bool)

(assert (=> b!1171442 m!1345013))

(declare-fun m!1345015 () Bool)

(assert (=> b!1171443 m!1345015))

(assert (=> b!1171444 m!1345001))

(assert (=> b!1171444 m!1345001))

(assert (=> b!1171444 m!1345007))

(assert (=> b!1171444 m!1345007))

(assert (=> b!1171444 m!1345009))

(declare-fun m!1345017 () Bool)

(assert (=> b!1171444 m!1345017))

(assert (=> b!1171111 d!334999))

(declare-fun d!335021 () Bool)

(declare-fun res!529333 () Bool)

(declare-fun e!751296 () Bool)

(assert (=> d!335021 (=> (not res!529333) (not e!751296))))

(assert (=> d!335021 (= res!529333 (not (isEmpty!7032 (rules!9642 thiss!10527))))))

(assert (=> d!335021 (= (inv!15286 thiss!10527) e!751296)))

(declare-fun b!1171477 () Bool)

(declare-fun res!529334 () Bool)

(assert (=> b!1171477 (=> (not res!529334) (not e!751296))))

(assert (=> b!1171477 (= res!529334 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(declare-fun b!1171478 () Bool)

(declare-fun res!529335 () Bool)

(assert (=> b!1171478 (=> (not res!529335) (not e!751296))))

(assert (=> b!1171478 (= res!529335 (rulesProduceEachTokenIndividually!754 Lexer!1714 (rules!9642 thiss!10527) (tokens!1654 thiss!10527)))))

(declare-fun b!1171479 () Bool)

(assert (=> b!1171479 (= e!751296 (separableTokens!152 Lexer!1714 (tokens!1654 thiss!10527) (rules!9642 thiss!10527)))))

(assert (= (and d!335021 res!529333) b!1171477))

(assert (= (and b!1171477 res!529334) b!1171478))

(assert (= (and b!1171478 res!529335) b!1171479))

(assert (=> d!335021 m!1344215))

(assert (=> b!1171477 m!1344167))

(assert (=> b!1171478 m!1344253))

(assert (=> b!1171479 m!1344935))

(assert (=> start!103110 d!335021))

(declare-fun bs!285715 () Bool)

(declare-fun d!335043 () Bool)

(assert (= bs!285715 (and d!335043 d!334979)))

(declare-fun lambda!48226 () Int)

(assert (=> bs!285715 (= lambda!48226 lambda!48224)))

(declare-fun bs!285716 () Bool)

(assert (= bs!285716 (and d!335043 d!334973)))

(assert (=> bs!285716 (= lambda!48226 lambda!48223)))

(declare-fun bs!285717 () Bool)

(assert (= bs!285717 (and d!335043 d!334961)))

(assert (=> bs!285717 (= lambda!48226 lambda!48222)))

(declare-fun bs!285718 () Bool)

(assert (= bs!285718 (and d!335043 b!1171109)))

(assert (=> bs!285718 (= lambda!48226 lambda!48203)))

(declare-fun bs!285719 () Bool)

(assert (= bs!285719 (and d!335043 d!334933)))

(assert (=> bs!285719 (= lambda!48226 lambda!48217)))

(declare-fun b!1171483 () Bool)

(declare-fun e!751300 () Bool)

(assert (=> b!1171483 (= e!751300 true)))

(declare-fun b!1171482 () Bool)

(declare-fun e!751299 () Bool)

(assert (=> b!1171482 (= e!751299 e!751300)))

(declare-fun b!1171481 () Bool)

(declare-fun e!751298 () Bool)

(assert (=> b!1171481 (= e!751298 e!751299)))

(assert (=> d!335043 e!751298))

(assert (= b!1171482 b!1171483))

(assert (= b!1171481 b!1171482))

(assert (= (and d!335043 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1171481))

(assert (=> b!1171483 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48226))))

(assert (=> b!1171483 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48226))))

(assert (=> d!335043 true))

(declare-fun e!751297 () Bool)

(assert (=> d!335043 e!751297))

(declare-fun res!529336 () Bool)

(assert (=> d!335043 (=> (not res!529336) (not e!751297))))

(declare-fun lt!402251 () Bool)

(assert (=> d!335043 (= res!529336 (= lt!402251 (forall!3066 (list!4274 lt!401775) lambda!48226)))))

(assert (=> d!335043 (= lt!402251 (forall!3065 lt!401775 lambda!48226))))

(assert (=> d!335043 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335043 (= (rulesProduceEachTokenIndividually!754 Lexer!1714 (rules!9642 thiss!10527) lt!401775) lt!402251)))

(declare-fun b!1171480 () Bool)

(assert (=> b!1171480 (= e!751297 (= lt!402251 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (list!4274 lt!401775))))))

(assert (= (and d!335043 res!529336) b!1171480))

(assert (=> d!335043 m!1344231))

(assert (=> d!335043 m!1344231))

(declare-fun m!1345067 () Bool)

(assert (=> d!335043 m!1345067))

(declare-fun m!1345069 () Bool)

(assert (=> d!335043 m!1345069))

(assert (=> d!335043 m!1344215))

(assert (=> b!1171480 m!1344231))

(assert (=> b!1171480 m!1344231))

(declare-fun m!1345071 () Bool)

(assert (=> b!1171480 m!1345071))

(assert (=> b!1171100 d!335043))

(declare-fun d!335045 () Bool)

(declare-fun lt!402252 () Bool)

(assert (=> d!335045 (= lt!402252 (forall!3066 (list!4274 lt!401775) lambda!48203))))

(assert (=> d!335045 (= lt!402252 (forall!3068 (c!195327 lt!401775) lambda!48203))))

(assert (=> d!335045 (= (forall!3065 lt!401775 lambda!48203) lt!402252)))

(declare-fun bs!285720 () Bool)

(assert (= bs!285720 d!335045))

(assert (=> bs!285720 m!1344231))

(assert (=> bs!285720 m!1344231))

(declare-fun m!1345073 () Bool)

(assert (=> bs!285720 m!1345073))

(declare-fun m!1345075 () Bool)

(assert (=> bs!285720 m!1345075))

(assert (=> b!1171100 d!335045))

(declare-fun d!335047 () Bool)

(declare-fun lt!402253 () Bool)

(declare-fun e!751302 () Bool)

(assert (=> d!335047 (= lt!402253 e!751302)))

(declare-fun res!529337 () Bool)

(assert (=> d!335047 (=> (not res!529337) (not e!751302))))

(assert (=> d!335047 (= res!529337 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773)))))) (list!4274 (singletonSeq!684 (h!16991 lt!401773)))))))

(declare-fun e!751301 () Bool)

(assert (=> d!335047 (= lt!402253 e!751301)))

(declare-fun res!529338 () Bool)

(assert (=> d!335047 (=> (not res!529338) (not e!751301))))

(declare-fun lt!402254 () tuple2!12048)

(assert (=> d!335047 (= res!529338 (= (size!9137 (_1!6871 lt!402254)) 1))))

(assert (=> d!335047 (= lt!402254 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773)))))))

(assert (=> d!335047 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335047 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401773)) lt!402253)))

(declare-fun b!1171484 () Bool)

(declare-fun res!529339 () Bool)

(assert (=> b!1171484 (=> (not res!529339) (not e!751301))))

(assert (=> b!1171484 (= res!529339 (= (apply!2517 (_1!6871 lt!402254) 0) (h!16991 lt!401773)))))

(declare-fun b!1171485 () Bool)

(assert (=> b!1171485 (= e!751301 (isEmpty!7034 (_2!6871 lt!402254)))))

(declare-fun b!1171486 () Bool)

(assert (=> b!1171486 (= e!751302 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773)))))))))

(assert (= (and d!335047 res!529338) b!1171484))

(assert (= (and b!1171484 res!529339) b!1171485))

(assert (= (and d!335047 res!529337) b!1171486))

(declare-fun m!1345077 () Bool)

(assert (=> d!335047 m!1345077))

(declare-fun m!1345079 () Bool)

(assert (=> d!335047 m!1345079))

(assert (=> d!335047 m!1344215))

(declare-fun m!1345081 () Bool)

(assert (=> d!335047 m!1345081))

(declare-fun m!1345083 () Bool)

(assert (=> d!335047 m!1345083))

(declare-fun m!1345085 () Bool)

(assert (=> d!335047 m!1345085))

(assert (=> d!335047 m!1345077))

(assert (=> d!335047 m!1345083))

(declare-fun m!1345087 () Bool)

(assert (=> d!335047 m!1345087))

(assert (=> d!335047 m!1345077))

(declare-fun m!1345089 () Bool)

(assert (=> b!1171484 m!1345089))

(declare-fun m!1345091 () Bool)

(assert (=> b!1171485 m!1345091))

(assert (=> b!1171486 m!1345077))

(assert (=> b!1171486 m!1345077))

(assert (=> b!1171486 m!1345083))

(assert (=> b!1171486 m!1345083))

(assert (=> b!1171486 m!1345085))

(declare-fun m!1345093 () Bool)

(assert (=> b!1171486 m!1345093))

(assert (=> b!1171093 d!335047))

(assert (=> b!1171104 d!335045))

(declare-fun d!335049 () Bool)

(declare-fun lt!402255 () Bool)

(declare-fun e!751304 () Bool)

(assert (=> d!335049 (= lt!402255 e!751304)))

(declare-fun res!529340 () Bool)

(assert (=> d!335049 (=> (not res!529340) (not e!751304))))

(assert (=> d!335049 (= res!529340 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764))))) (list!4274 (singletonSeq!684 lt!401764))))))

(declare-fun e!751303 () Bool)

(assert (=> d!335049 (= lt!402255 e!751303)))

(declare-fun res!529341 () Bool)

(assert (=> d!335049 (=> (not res!529341) (not e!751303))))

(declare-fun lt!402256 () tuple2!12048)

(assert (=> d!335049 (= res!529341 (= (size!9137 (_1!6871 lt!402256)) 1))))

(assert (=> d!335049 (= lt!402256 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764))))))

(assert (=> d!335049 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335049 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401764) lt!402255)))

(declare-fun b!1171487 () Bool)

(declare-fun res!529342 () Bool)

(assert (=> b!1171487 (=> (not res!529342) (not e!751303))))

(assert (=> b!1171487 (= res!529342 (= (apply!2517 (_1!6871 lt!402256) 0) lt!401764))))

(declare-fun b!1171488 () Bool)

(assert (=> b!1171488 (= e!751303 (isEmpty!7034 (_2!6871 lt!402256)))))

(declare-fun b!1171489 () Bool)

(assert (=> b!1171489 (= e!751304 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764))))))))

(assert (= (and d!335049 res!529341) b!1171487))

(assert (= (and b!1171487 res!529342) b!1171488))

(assert (= (and d!335049 res!529340) b!1171489))

(declare-fun m!1345095 () Bool)

(assert (=> d!335049 m!1345095))

(declare-fun m!1345097 () Bool)

(assert (=> d!335049 m!1345097))

(assert (=> d!335049 m!1344215))

(declare-fun m!1345099 () Bool)

(assert (=> d!335049 m!1345099))

(declare-fun m!1345101 () Bool)

(assert (=> d!335049 m!1345101))

(declare-fun m!1345103 () Bool)

(assert (=> d!335049 m!1345103))

(assert (=> d!335049 m!1345095))

(assert (=> d!335049 m!1345101))

(declare-fun m!1345105 () Bool)

(assert (=> d!335049 m!1345105))

(assert (=> d!335049 m!1345095))

(declare-fun m!1345107 () Bool)

(assert (=> b!1171487 m!1345107))

(declare-fun m!1345109 () Bool)

(assert (=> b!1171488 m!1345109))

(assert (=> b!1171489 m!1345095))

(assert (=> b!1171489 m!1345095))

(assert (=> b!1171489 m!1345101))

(assert (=> b!1171489 m!1345101))

(assert (=> b!1171489 m!1345103))

(declare-fun m!1345111 () Bool)

(assert (=> b!1171489 m!1345111))

(assert (=> b!1171103 d!335049))

(declare-fun d!335051 () Bool)

(declare-fun lt!402257 () Bool)

(declare-fun e!751306 () Bool)

(assert (=> d!335051 (= lt!402257 e!751306)))

(declare-fun res!529343 () Bool)

(assert (=> d!335051 (=> (not res!529343) (not e!751306))))

(assert (=> d!335051 (= res!529343 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769))))) (list!4274 (singletonSeq!684 lt!401769))))))

(declare-fun e!751305 () Bool)

(assert (=> d!335051 (= lt!402257 e!751305)))

(declare-fun res!529344 () Bool)

(assert (=> d!335051 (=> (not res!529344) (not e!751305))))

(declare-fun lt!402258 () tuple2!12048)

(assert (=> d!335051 (= res!529344 (= (size!9137 (_1!6871 lt!402258)) 1))))

(assert (=> d!335051 (= lt!402258 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769))))))

(assert (=> d!335051 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335051 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401769) lt!402257)))

(declare-fun b!1171490 () Bool)

(declare-fun res!529345 () Bool)

(assert (=> b!1171490 (=> (not res!529345) (not e!751305))))

(assert (=> b!1171490 (= res!529345 (= (apply!2517 (_1!6871 lt!402258) 0) lt!401769))))

(declare-fun b!1171491 () Bool)

(assert (=> b!1171491 (= e!751305 (isEmpty!7034 (_2!6871 lt!402258)))))

(declare-fun b!1171492 () Bool)

(assert (=> b!1171492 (= e!751306 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769))))))))

(assert (= (and d!335051 res!529344) b!1171490))

(assert (= (and b!1171490 res!529345) b!1171491))

(assert (= (and d!335051 res!529343) b!1171492))

(declare-fun m!1345113 () Bool)

(assert (=> d!335051 m!1345113))

(declare-fun m!1345115 () Bool)

(assert (=> d!335051 m!1345115))

(assert (=> d!335051 m!1344215))

(declare-fun m!1345117 () Bool)

(assert (=> d!335051 m!1345117))

(declare-fun m!1345119 () Bool)

(assert (=> d!335051 m!1345119))

(declare-fun m!1345121 () Bool)

(assert (=> d!335051 m!1345121))

(assert (=> d!335051 m!1345113))

(assert (=> d!335051 m!1345119))

(declare-fun m!1345123 () Bool)

(assert (=> d!335051 m!1345123))

(assert (=> d!335051 m!1345113))

(declare-fun m!1345125 () Bool)

(assert (=> b!1171490 m!1345125))

(declare-fun m!1345127 () Bool)

(assert (=> b!1171491 m!1345127))

(assert (=> b!1171492 m!1345113))

(assert (=> b!1171492 m!1345113))

(assert (=> b!1171492 m!1345119))

(assert (=> b!1171492 m!1345119))

(assert (=> b!1171492 m!1345121))

(declare-fun m!1345129 () Bool)

(assert (=> b!1171492 m!1345129))

(assert (=> b!1171103 d!335051))

(declare-fun d!335053 () Bool)

(assert (=> d!335053 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401764)))

(declare-fun lt!402263 () Unit!17788)

(declare-fun choose!7567 (LexerInterface!1716 List!11615 List!11614 Token!3704) Unit!17788)

(assert (=> d!335053 (= lt!402263 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!401774 lt!401764))))

(assert (=> d!335053 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335053 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401774 lt!401764) lt!402263)))

(declare-fun bs!285722 () Bool)

(assert (= bs!285722 d!335053))

(assert (=> bs!285722 m!1344195))

(declare-fun m!1345167 () Bool)

(assert (=> bs!285722 m!1345167))

(assert (=> bs!285722 m!1344215))

(assert (=> b!1171103 d!335053))

(declare-fun d!335061 () Bool)

(assert (=> d!335061 (= (tail!1694 lt!401771) (t!110758 lt!401771))))

(assert (=> b!1171103 d!335061))

(declare-fun d!335063 () Bool)

(declare-fun lt!402266 () Token!3704)

(assert (=> d!335063 (= lt!402266 (apply!2518 (list!4274 (tokens!1654 thiss!10527)) 1))))

(declare-fun apply!2521 (Conc!3805 Int) Token!3704)

(assert (=> d!335063 (= lt!402266 (apply!2521 (c!195327 (tokens!1654 thiss!10527)) 1))))

(declare-fun e!751350 () Bool)

(assert (=> d!335063 e!751350))

(declare-fun res!529363 () Bool)

(assert (=> d!335063 (=> (not res!529363) (not e!751350))))

(assert (=> d!335063 (= res!529363 (<= 0 1))))

(assert (=> d!335063 (= (apply!2517 (tokens!1654 thiss!10527) 1) lt!402266)))

(declare-fun b!1171557 () Bool)

(assert (=> b!1171557 (= e!751350 (< 1 (size!9137 (tokens!1654 thiss!10527))))))

(assert (= (and d!335063 res!529363) b!1171557))

(assert (=> d!335063 m!1344251))

(assert (=> d!335063 m!1344251))

(declare-fun m!1345169 () Bool)

(assert (=> d!335063 m!1345169))

(declare-fun m!1345171 () Bool)

(assert (=> d!335063 m!1345171))

(assert (=> b!1171557 m!1344261))

(assert (=> b!1171103 d!335063))

(declare-fun d!335065 () Bool)

(assert (=> d!335065 (= (head!2110 lt!401761) (h!16991 lt!401761))))

(assert (=> b!1171103 d!335065))

(declare-fun d!335067 () Bool)

(assert (=> d!335067 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401769)))

(declare-fun lt!402267 () Unit!17788)

(assert (=> d!335067 (= lt!402267 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!401774 lt!401769))))

(assert (=> d!335067 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335067 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401774 lt!401769) lt!402267)))

(declare-fun bs!285723 () Bool)

(assert (= bs!285723 d!335067))

(assert (=> bs!285723 m!1344177))

(declare-fun m!1345173 () Bool)

(assert (=> bs!285723 m!1345173))

(assert (=> bs!285723 m!1344215))

(assert (=> b!1171103 d!335067))

(declare-fun d!335069 () Bool)

(assert (=> d!335069 (= (head!2110 (drop!493 lt!401774 0)) (apply!2518 lt!401774 0))))

(declare-fun lt!402270 () Unit!17788)

(declare-fun choose!7568 (List!11614 Int) Unit!17788)

(assert (=> d!335069 (= lt!402270 (choose!7568 lt!401774 0))))

(declare-fun e!751353 () Bool)

(assert (=> d!335069 e!751353))

(declare-fun res!529366 () Bool)

(assert (=> d!335069 (=> (not res!529366) (not e!751353))))

(assert (=> d!335069 (= res!529366 (>= 0 0))))

(assert (=> d!335069 (= (lemmaDropApply!379 lt!401774 0) lt!402270)))

(declare-fun b!1171560 () Bool)

(assert (=> b!1171560 (= e!751353 (< 0 (size!9142 lt!401774)))))

(assert (= (and d!335069 res!529366) b!1171560))

(assert (=> d!335069 m!1344187))

(assert (=> d!335069 m!1344187))

(declare-fun m!1345175 () Bool)

(assert (=> d!335069 m!1345175))

(assert (=> d!335069 m!1344213))

(declare-fun m!1345177 () Bool)

(assert (=> d!335069 m!1345177))

(assert (=> b!1171560 m!1344463))

(assert (=> b!1171103 d!335069))

(declare-fun d!335071 () Bool)

(declare-fun lt!402273 () Token!3704)

(declare-fun contains!2002 (List!11614 Token!3704) Bool)

(assert (=> d!335071 (contains!2002 lt!401774 lt!402273)))

(declare-fun e!751359 () Token!3704)

(assert (=> d!335071 (= lt!402273 e!751359)))

(declare-fun c!195362 () Bool)

(assert (=> d!335071 (= c!195362 (= 0 0))))

(declare-fun e!751358 () Bool)

(assert (=> d!335071 e!751358))

(declare-fun res!529369 () Bool)

(assert (=> d!335071 (=> (not res!529369) (not e!751358))))

(assert (=> d!335071 (= res!529369 (<= 0 0))))

(assert (=> d!335071 (= (apply!2518 lt!401774 0) lt!402273)))

(declare-fun b!1171567 () Bool)

(assert (=> b!1171567 (= e!751358 (< 0 (size!9142 lt!401774)))))

(declare-fun b!1171568 () Bool)

(assert (=> b!1171568 (= e!751359 (head!2110 lt!401774))))

(declare-fun b!1171569 () Bool)

(assert (=> b!1171569 (= e!751359 (apply!2518 (tail!1694 lt!401774) (- 0 1)))))

(assert (= (and d!335071 res!529369) b!1171567))

(assert (= (and d!335071 c!195362) b!1171568))

(assert (= (and d!335071 (not c!195362)) b!1171569))

(declare-fun m!1345179 () Bool)

(assert (=> d!335071 m!1345179))

(assert (=> b!1171567 m!1344463))

(declare-fun m!1345181 () Bool)

(assert (=> b!1171568 m!1345181))

(declare-fun m!1345183 () Bool)

(assert (=> b!1171569 m!1345183))

(assert (=> b!1171569 m!1345183))

(declare-fun m!1345185 () Bool)

(assert (=> b!1171569 m!1345185))

(assert (=> b!1171103 d!335071))

(declare-fun d!335073 () Bool)

(declare-fun lt!402274 () Token!3704)

(assert (=> d!335073 (contains!2002 lt!401774 lt!402274)))

(declare-fun e!751361 () Token!3704)

(assert (=> d!335073 (= lt!402274 e!751361)))

(declare-fun c!195363 () Bool)

(assert (=> d!335073 (= c!195363 (= 1 0))))

(declare-fun e!751360 () Bool)

(assert (=> d!335073 e!751360))

(declare-fun res!529370 () Bool)

(assert (=> d!335073 (=> (not res!529370) (not e!751360))))

(assert (=> d!335073 (= res!529370 (<= 0 1))))

(assert (=> d!335073 (= (apply!2518 lt!401774 1) lt!402274)))

(declare-fun b!1171570 () Bool)

(assert (=> b!1171570 (= e!751360 (< 1 (size!9142 lt!401774)))))

(declare-fun b!1171571 () Bool)

(assert (=> b!1171571 (= e!751361 (head!2110 lt!401774))))

(declare-fun b!1171572 () Bool)

(assert (=> b!1171572 (= e!751361 (apply!2518 (tail!1694 lt!401774) (- 1 1)))))

(assert (= (and d!335073 res!529370) b!1171570))

(assert (= (and d!335073 c!195363) b!1171571))

(assert (= (and d!335073 (not c!195363)) b!1171572))

(declare-fun m!1345187 () Bool)

(assert (=> d!335073 m!1345187))

(assert (=> b!1171570 m!1344463))

(assert (=> b!1171571 m!1345181))

(assert (=> b!1171572 m!1345183))

(assert (=> b!1171572 m!1345183))

(declare-fun m!1345189 () Bool)

(assert (=> b!1171572 m!1345189))

(assert (=> b!1171103 d!335073))

(declare-fun d!335075 () Bool)

(assert (=> d!335075 (= (head!2110 lt!401771) (h!16991 lt!401771))))

(assert (=> b!1171103 d!335075))

(declare-fun d!335077 () Bool)

(assert (=> d!335077 (= (tail!1694 (drop!493 lt!401774 0)) (drop!493 lt!401774 (+ 0 1)))))

(declare-fun lt!402277 () Unit!17788)

(declare-fun choose!7569 (List!11614 Int) Unit!17788)

(assert (=> d!335077 (= lt!402277 (choose!7569 lt!401774 0))))

(declare-fun e!751364 () Bool)

(assert (=> d!335077 e!751364))

(declare-fun res!529373 () Bool)

(assert (=> d!335077 (=> (not res!529373) (not e!751364))))

(assert (=> d!335077 (= res!529373 (>= 0 0))))

(assert (=> d!335077 (= (lemmaDropTail!367 lt!401774 0) lt!402277)))

(declare-fun b!1171575 () Bool)

(assert (=> b!1171575 (= e!751364 (< 0 (size!9142 lt!401774)))))

(assert (= (and d!335077 res!529373) b!1171575))

(assert (=> d!335077 m!1344187))

(assert (=> d!335077 m!1344187))

(declare-fun m!1345191 () Bool)

(assert (=> d!335077 m!1345191))

(declare-fun m!1345193 () Bool)

(assert (=> d!335077 m!1345193))

(declare-fun m!1345195 () Bool)

(assert (=> d!335077 m!1345195))

(assert (=> b!1171575 m!1344463))

(assert (=> b!1171103 d!335077))

(declare-fun b!1171594 () Bool)

(declare-fun e!751377 () Int)

(declare-fun call!82292 () Int)

(assert (=> b!1171594 (= e!751377 (- call!82292 1))))

(declare-fun b!1171596 () Bool)

(declare-fun e!751375 () Bool)

(declare-fun lt!402280 () List!11614)

(declare-fun e!751379 () Int)

(assert (=> b!1171596 (= e!751375 (= (size!9142 lt!402280) e!751379))))

(declare-fun c!195372 () Bool)

(assert (=> b!1171596 (= c!195372 (<= 1 0))))

(declare-fun b!1171597 () Bool)

(declare-fun e!751378 () List!11614)

(assert (=> b!1171597 (= e!751378 (drop!493 (t!110758 lt!401774) (- 1 1)))))

(declare-fun b!1171598 () Bool)

(assert (=> b!1171598 (= e!751379 call!82292)))

(declare-fun b!1171599 () Bool)

(assert (=> b!1171599 (= e!751377 0)))

(declare-fun b!1171600 () Bool)

(assert (=> b!1171600 (= e!751379 e!751377)))

(declare-fun c!195373 () Bool)

(assert (=> b!1171600 (= c!195373 (>= 1 call!82292))))

(declare-fun bm!82287 () Bool)

(assert (=> bm!82287 (= call!82292 (size!9142 lt!401774))))

(declare-fun b!1171601 () Bool)

(declare-fun e!751376 () List!11614)

(assert (=> b!1171601 (= e!751376 Nil!11590)))

(declare-fun b!1171602 () Bool)

(assert (=> b!1171602 (= e!751378 lt!401774)))

(declare-fun b!1171595 () Bool)

(assert (=> b!1171595 (= e!751376 e!751378)))

(declare-fun c!195375 () Bool)

(assert (=> b!1171595 (= c!195375 (<= 1 0))))

(declare-fun d!335079 () Bool)

(assert (=> d!335079 e!751375))

(declare-fun res!529376 () Bool)

(assert (=> d!335079 (=> (not res!529376) (not e!751375))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1614 (List!11614) (InoxSet Token!3704))

(assert (=> d!335079 (= res!529376 (= ((_ map implies) (content!1614 lt!402280) (content!1614 lt!401774)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335079 (= lt!402280 e!751376)))

(declare-fun c!195374 () Bool)

(assert (=> d!335079 (= c!195374 ((_ is Nil!11590) lt!401774))))

(assert (=> d!335079 (= (drop!493 lt!401774 1) lt!402280)))

(assert (= (and d!335079 c!195374) b!1171601))

(assert (= (and d!335079 (not c!195374)) b!1171595))

(assert (= (and b!1171595 c!195375) b!1171602))

(assert (= (and b!1171595 (not c!195375)) b!1171597))

(assert (= (and d!335079 res!529376) b!1171596))

(assert (= (and b!1171596 c!195372) b!1171598))

(assert (= (and b!1171596 (not c!195372)) b!1171600))

(assert (= (and b!1171600 c!195373) b!1171599))

(assert (= (and b!1171600 (not c!195373)) b!1171594))

(assert (= (or b!1171598 b!1171600 b!1171594) bm!82287))

(declare-fun m!1345197 () Bool)

(assert (=> b!1171596 m!1345197))

(declare-fun m!1345199 () Bool)

(assert (=> b!1171597 m!1345199))

(assert (=> bm!82287 m!1344463))

(declare-fun m!1345201 () Bool)

(assert (=> d!335079 m!1345201))

(declare-fun m!1345203 () Bool)

(assert (=> d!335079 m!1345203))

(assert (=> b!1171103 d!335079))

(declare-fun d!335081 () Bool)

(assert (=> d!335081 (= (tail!1694 lt!401761) (t!110758 lt!401761))))

(assert (=> b!1171103 d!335081))

(declare-fun d!335083 () Bool)

(assert (=> d!335083 (= (tail!1694 (drop!493 lt!401774 1)) (drop!493 lt!401774 (+ 1 1)))))

(declare-fun lt!402281 () Unit!17788)

(assert (=> d!335083 (= lt!402281 (choose!7569 lt!401774 1))))

(declare-fun e!751380 () Bool)

(assert (=> d!335083 e!751380))

(declare-fun res!529377 () Bool)

(assert (=> d!335083 (=> (not res!529377) (not e!751380))))

(assert (=> d!335083 (= res!529377 (>= 1 0))))

(assert (=> d!335083 (= (lemmaDropTail!367 lt!401774 1) lt!402281)))

(declare-fun b!1171603 () Bool)

(assert (=> b!1171603 (= e!751380 (< 1 (size!9142 lt!401774)))))

(assert (= (and d!335083 res!529377) b!1171603))

(assert (=> d!335083 m!1344199))

(assert (=> d!335083 m!1344199))

(declare-fun m!1345205 () Bool)

(assert (=> d!335083 m!1345205))

(declare-fun m!1345207 () Bool)

(assert (=> d!335083 m!1345207))

(declare-fun m!1345209 () Bool)

(assert (=> d!335083 m!1345209))

(assert (=> b!1171603 m!1344463))

(assert (=> b!1171103 d!335083))

(declare-fun b!1171604 () Bool)

(declare-fun e!751383 () Int)

(declare-fun call!82293 () Int)

(assert (=> b!1171604 (= e!751383 (- call!82293 0))))

(declare-fun b!1171606 () Bool)

(declare-fun e!751381 () Bool)

(declare-fun lt!402282 () List!11614)

(declare-fun e!751385 () Int)

(assert (=> b!1171606 (= e!751381 (= (size!9142 lt!402282) e!751385))))

(declare-fun c!195376 () Bool)

(assert (=> b!1171606 (= c!195376 (<= 0 0))))

(declare-fun b!1171607 () Bool)

(declare-fun e!751384 () List!11614)

(assert (=> b!1171607 (= e!751384 (drop!493 (t!110758 lt!401774) (- 0 1)))))

(declare-fun b!1171608 () Bool)

(assert (=> b!1171608 (= e!751385 call!82293)))

(declare-fun b!1171609 () Bool)

(assert (=> b!1171609 (= e!751383 0)))

(declare-fun b!1171610 () Bool)

(assert (=> b!1171610 (= e!751385 e!751383)))

(declare-fun c!195377 () Bool)

(assert (=> b!1171610 (= c!195377 (>= 0 call!82293))))

(declare-fun bm!82288 () Bool)

(assert (=> bm!82288 (= call!82293 (size!9142 lt!401774))))

(declare-fun b!1171611 () Bool)

(declare-fun e!751382 () List!11614)

(assert (=> b!1171611 (= e!751382 Nil!11590)))

(declare-fun b!1171612 () Bool)

(assert (=> b!1171612 (= e!751384 lt!401774)))

(declare-fun b!1171605 () Bool)

(assert (=> b!1171605 (= e!751382 e!751384)))

(declare-fun c!195379 () Bool)

(assert (=> b!1171605 (= c!195379 (<= 0 0))))

(declare-fun d!335085 () Bool)

(assert (=> d!335085 e!751381))

(declare-fun res!529378 () Bool)

(assert (=> d!335085 (=> (not res!529378) (not e!751381))))

(assert (=> d!335085 (= res!529378 (= ((_ map implies) (content!1614 lt!402282) (content!1614 lt!401774)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335085 (= lt!402282 e!751382)))

(declare-fun c!195378 () Bool)

(assert (=> d!335085 (= c!195378 ((_ is Nil!11590) lt!401774))))

(assert (=> d!335085 (= (drop!493 lt!401774 0) lt!402282)))

(assert (= (and d!335085 c!195378) b!1171611))

(assert (= (and d!335085 (not c!195378)) b!1171605))

(assert (= (and b!1171605 c!195379) b!1171612))

(assert (= (and b!1171605 (not c!195379)) b!1171607))

(assert (= (and d!335085 res!529378) b!1171606))

(assert (= (and b!1171606 c!195376) b!1171608))

(assert (= (and b!1171606 (not c!195376)) b!1171610))

(assert (= (and b!1171610 c!195377) b!1171609))

(assert (= (and b!1171610 (not c!195377)) b!1171604))

(assert (= (or b!1171608 b!1171610 b!1171604) bm!82288))

(declare-fun m!1345211 () Bool)

(assert (=> b!1171606 m!1345211))

(declare-fun m!1345213 () Bool)

(assert (=> b!1171607 m!1345213))

(assert (=> bm!82288 m!1344463))

(declare-fun m!1345215 () Bool)

(assert (=> d!335085 m!1345215))

(assert (=> d!335085 m!1345203))

(assert (=> b!1171103 d!335085))

(declare-fun d!335087 () Bool)

(assert (=> d!335087 (= (head!2110 (drop!493 lt!401774 1)) (apply!2518 lt!401774 1))))

(declare-fun lt!402283 () Unit!17788)

(assert (=> d!335087 (= lt!402283 (choose!7568 lt!401774 1))))

(declare-fun e!751386 () Bool)

(assert (=> d!335087 e!751386))

(declare-fun res!529379 () Bool)

(assert (=> d!335087 (=> (not res!529379) (not e!751386))))

(assert (=> d!335087 (= res!529379 (>= 1 0))))

(assert (=> d!335087 (= (lemmaDropApply!379 lt!401774 1) lt!402283)))

(declare-fun b!1171613 () Bool)

(assert (=> b!1171613 (= e!751386 (< 1 (size!9142 lt!401774)))))

(assert (= (and d!335087 res!529379) b!1171613))

(assert (=> d!335087 m!1344199))

(assert (=> d!335087 m!1344199))

(declare-fun m!1345217 () Bool)

(assert (=> d!335087 m!1345217))

(assert (=> d!335087 m!1344209))

(declare-fun m!1345219 () Bool)

(assert (=> d!335087 m!1345219))

(assert (=> b!1171613 m!1344463))

(assert (=> b!1171103 d!335087))

(declare-fun b!1171614 () Bool)

(declare-fun e!751389 () Int)

(declare-fun call!82294 () Int)

(assert (=> b!1171614 (= e!751389 (- call!82294 2))))

(declare-fun b!1171616 () Bool)

(declare-fun e!751387 () Bool)

(declare-fun lt!402284 () List!11614)

(declare-fun e!751391 () Int)

(assert (=> b!1171616 (= e!751387 (= (size!9142 lt!402284) e!751391))))

(declare-fun c!195380 () Bool)

(assert (=> b!1171616 (= c!195380 (<= 2 0))))

(declare-fun b!1171617 () Bool)

(declare-fun e!751390 () List!11614)

(assert (=> b!1171617 (= e!751390 (drop!493 (t!110758 lt!401774) (- 2 1)))))

(declare-fun b!1171618 () Bool)

(assert (=> b!1171618 (= e!751391 call!82294)))

(declare-fun b!1171619 () Bool)

(assert (=> b!1171619 (= e!751389 0)))

(declare-fun b!1171620 () Bool)

(assert (=> b!1171620 (= e!751391 e!751389)))

(declare-fun c!195381 () Bool)

(assert (=> b!1171620 (= c!195381 (>= 2 call!82294))))

(declare-fun bm!82289 () Bool)

(assert (=> bm!82289 (= call!82294 (size!9142 lt!401774))))

(declare-fun b!1171621 () Bool)

(declare-fun e!751388 () List!11614)

(assert (=> b!1171621 (= e!751388 Nil!11590)))

(declare-fun b!1171622 () Bool)

(assert (=> b!1171622 (= e!751390 lt!401774)))

(declare-fun b!1171615 () Bool)

(assert (=> b!1171615 (= e!751388 e!751390)))

(declare-fun c!195383 () Bool)

(assert (=> b!1171615 (= c!195383 (<= 2 0))))

(declare-fun d!335089 () Bool)

(assert (=> d!335089 e!751387))

(declare-fun res!529380 () Bool)

(assert (=> d!335089 (=> (not res!529380) (not e!751387))))

(assert (=> d!335089 (= res!529380 (= ((_ map implies) (content!1614 lt!402284) (content!1614 lt!401774)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335089 (= lt!402284 e!751388)))

(declare-fun c!195382 () Bool)

(assert (=> d!335089 (= c!195382 ((_ is Nil!11590) lt!401774))))

(assert (=> d!335089 (= (drop!493 lt!401774 2) lt!402284)))

(assert (= (and d!335089 c!195382) b!1171621))

(assert (= (and d!335089 (not c!195382)) b!1171615))

(assert (= (and b!1171615 c!195383) b!1171622))

(assert (= (and b!1171615 (not c!195383)) b!1171617))

(assert (= (and d!335089 res!529380) b!1171616))

(assert (= (and b!1171616 c!195380) b!1171618))

(assert (= (and b!1171616 (not c!195380)) b!1171620))

(assert (= (and b!1171620 c!195381) b!1171619))

(assert (= (and b!1171620 (not c!195381)) b!1171614))

(assert (= (or b!1171618 b!1171620 b!1171614) bm!82289))

(declare-fun m!1345221 () Bool)

(assert (=> b!1171616 m!1345221))

(declare-fun m!1345223 () Bool)

(assert (=> b!1171617 m!1345223))

(assert (=> bm!82289 m!1344463))

(declare-fun m!1345225 () Bool)

(assert (=> d!335089 m!1345225))

(assert (=> d!335089 m!1345203))

(assert (=> b!1171103 d!335089))

(declare-fun d!335091 () Bool)

(declare-fun lt!402285 () Token!3704)

(assert (=> d!335091 (= lt!402285 (apply!2518 (list!4274 (tokens!1654 thiss!10527)) 0))))

(assert (=> d!335091 (= lt!402285 (apply!2521 (c!195327 (tokens!1654 thiss!10527)) 0))))

(declare-fun e!751392 () Bool)

(assert (=> d!335091 e!751392))

(declare-fun res!529381 () Bool)

(assert (=> d!335091 (=> (not res!529381) (not e!751392))))

(assert (=> d!335091 (= res!529381 (<= 0 0))))

(assert (=> d!335091 (= (apply!2517 (tokens!1654 thiss!10527) 0) lt!402285)))

(declare-fun b!1171623 () Bool)

(assert (=> b!1171623 (= e!751392 (< 0 (size!9137 (tokens!1654 thiss!10527))))))

(assert (= (and d!335091 res!529381) b!1171623))

(assert (=> d!335091 m!1344251))

(assert (=> d!335091 m!1344251))

(declare-fun m!1345227 () Bool)

(assert (=> d!335091 m!1345227))

(declare-fun m!1345229 () Bool)

(assert (=> d!335091 m!1345229))

(assert (=> b!1171623 m!1344261))

(assert (=> b!1171103 d!335091))

(declare-fun d!335093 () Bool)

(declare-fun prefixMatchZipperSequence!99 (Regex!3291 BalanceConc!7630) Bool)

(declare-fun rulesRegex!72 (LexerInterface!1716 List!11615) Regex!3291)

(declare-fun ++!2994 (BalanceConc!7630 BalanceConc!7630) BalanceConc!7630)

(declare-fun singletonSeq!685 (C!6900) BalanceConc!7630)

(declare-fun apply!2522 (BalanceConc!7630 Int) C!6900)

(assert (=> d!335093 (= (separableTokensPredicate!138 Lexer!1714 lt!401764 lt!401769 (rules!9642 thiss!10527)) (not (prefixMatchZipperSequence!99 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))))))))

(declare-fun bs!285724 () Bool)

(assert (= bs!285724 d!335093))

(declare-fun m!1345231 () Bool)

(assert (=> bs!285724 m!1345231))

(declare-fun m!1345233 () Bool)

(assert (=> bs!285724 m!1345233))

(declare-fun m!1345235 () Bool)

(assert (=> bs!285724 m!1345235))

(assert (=> bs!285724 m!1344243))

(declare-fun m!1345237 () Bool)

(assert (=> bs!285724 m!1345237))

(declare-fun m!1345239 () Bool)

(assert (=> bs!285724 m!1345239))

(assert (=> bs!285724 m!1345231))

(assert (=> bs!285724 m!1344243))

(assert (=> bs!285724 m!1345239))

(declare-fun m!1345241 () Bool)

(assert (=> bs!285724 m!1345241))

(assert (=> bs!285724 m!1345233))

(assert (=> bs!285724 m!1345237))

(assert (=> bs!285724 m!1345241))

(assert (=> b!1171103 d!335093))

(declare-fun bs!285725 () Bool)

(declare-fun d!335095 () Bool)

(assert (= bs!285725 (and d!335095 d!334979)))

(declare-fun lambda!48227 () Int)

(assert (=> bs!285725 (= lambda!48227 lambda!48224)))

(declare-fun bs!285726 () Bool)

(assert (= bs!285726 (and d!335095 d!335043)))

(assert (=> bs!285726 (= lambda!48227 lambda!48226)))

(declare-fun bs!285727 () Bool)

(assert (= bs!285727 (and d!335095 d!334973)))

(assert (=> bs!285727 (= lambda!48227 lambda!48223)))

(declare-fun bs!285728 () Bool)

(assert (= bs!285728 (and d!335095 d!334961)))

(assert (=> bs!285728 (= lambda!48227 lambda!48222)))

(declare-fun bs!285729 () Bool)

(assert (= bs!285729 (and d!335095 b!1171109)))

(assert (=> bs!285729 (= lambda!48227 lambda!48203)))

(declare-fun bs!285730 () Bool)

(assert (= bs!285730 (and d!335095 d!334933)))

(assert (=> bs!285730 (= lambda!48227 lambda!48217)))

(declare-fun b!1171628 () Bool)

(declare-fun e!751397 () Bool)

(assert (=> b!1171628 (= e!751397 true)))

(declare-fun b!1171627 () Bool)

(declare-fun e!751396 () Bool)

(assert (=> b!1171627 (= e!751396 e!751397)))

(declare-fun b!1171626 () Bool)

(declare-fun e!751395 () Bool)

(assert (=> b!1171626 (= e!751395 e!751396)))

(assert (=> d!335095 e!751395))

(assert (= b!1171627 b!1171628))

(assert (= b!1171626 b!1171627))

(assert (= (and d!335095 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1171626))

(assert (=> b!1171628 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48227))))

(assert (=> b!1171628 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48227))))

(assert (=> d!335095 true))

(declare-fun lt!402286 () Bool)

(assert (=> d!335095 (= lt!402286 (forall!3066 lt!401773 lambda!48227))))

(declare-fun e!751393 () Bool)

(assert (=> d!335095 (= lt!402286 e!751393)))

(declare-fun res!529382 () Bool)

(assert (=> d!335095 (=> res!529382 e!751393)))

(assert (=> d!335095 (= res!529382 (not ((_ is Cons!11590) lt!401773)))))

(assert (=> d!335095 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335095 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401773) lt!402286)))

(declare-fun b!1171624 () Bool)

(declare-fun e!751394 () Bool)

(assert (=> b!1171624 (= e!751393 e!751394)))

(declare-fun res!529383 () Bool)

(assert (=> b!1171624 (=> (not res!529383) (not e!751394))))

(assert (=> b!1171624 (= res!529383 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401773)))))

(declare-fun b!1171625 () Bool)

(assert (=> b!1171625 (= e!751394 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!401773)))))

(assert (= (and d!335095 (not res!529382)) b!1171624))

(assert (= (and b!1171624 res!529383) b!1171625))

(declare-fun m!1345243 () Bool)

(assert (=> d!335095 m!1345243))

(assert (=> d!335095 m!1344215))

(assert (=> b!1171624 m!1344263))

(assert (=> b!1171625 m!1344221))

(assert (=> b!1171092 d!335095))

(declare-fun b!1171637 () Bool)

(declare-fun e!751402 () Bool)

(assert (=> b!1171637 (= e!751402 true)))

(declare-fun b!1171639 () Bool)

(declare-fun e!751403 () Bool)

(assert (=> b!1171639 (= e!751403 true)))

(declare-fun b!1171638 () Bool)

(assert (=> b!1171638 (= e!751402 e!751403)))

(assert (=> b!1171119 e!751402))

(assert (= (and b!1171119 ((_ is Node!3805) (c!195327 (tokens!1654 thiss!10527)))) b!1171637))

(assert (= b!1171638 b!1171639))

(assert (= (and b!1171119 ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527)))) b!1171638))

(declare-fun b!1171642 () Bool)

(declare-fun e!751406 () Bool)

(assert (=> b!1171642 (= e!751406 true)))

(declare-fun b!1171641 () Bool)

(declare-fun e!751405 () Bool)

(assert (=> b!1171641 (= e!751405 e!751406)))

(declare-fun b!1171640 () Bool)

(declare-fun e!751404 () Bool)

(assert (=> b!1171640 (= e!751404 e!751405)))

(assert (=> b!1171118 e!751404))

(assert (= b!1171641 b!1171642))

(assert (= b!1171640 b!1171641))

(assert (= (and b!1171118 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1171640))

(assert (=> b!1171642 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48203))))

(assert (=> b!1171642 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48203))))

(declare-fun b!1171653 () Bool)

(declare-fun b_free!27857 () Bool)

(declare-fun b_next!28561 () Bool)

(assert (=> b!1171653 (= b_free!27857 (not b_next!28561))))

(declare-fun tp!334721 () Bool)

(declare-fun b_and!80757 () Bool)

(assert (=> b!1171653 (= tp!334721 b_and!80757)))

(declare-fun b_free!27859 () Bool)

(declare-fun b_next!28563 () Bool)

(assert (=> b!1171653 (= b_free!27859 (not b_next!28563))))

(declare-fun tb!65943 () Bool)

(declare-fun t!110779 () Bool)

(assert (=> (and b!1171653 (= (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toChars!2981 (transformation!2021 (rule!3442 lt!401769)))) t!110779) tb!65943))

(declare-fun b!1171658 () Bool)

(declare-fun e!751421 () Bool)

(declare-fun tp!334727 () Bool)

(declare-fun inv!15297 (Conc!3804) Bool)

(assert (=> b!1171658 (= e!751421 (and (inv!15297 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769)))) tp!334727))))

(declare-fun result!78976 () Bool)

(declare-fun inv!15298 (BalanceConc!7630) Bool)

(assert (=> tb!65943 (= result!78976 (and (inv!15298 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769))) e!751421))))

(assert (= tb!65943 b!1171658))

(declare-fun m!1345245 () Bool)

(assert (=> b!1171658 m!1345245))

(declare-fun m!1345247 () Bool)

(assert (=> tb!65943 m!1345247))

(assert (=> d!334983 t!110779))

(declare-fun b_and!80759 () Bool)

(declare-fun tp!334722 () Bool)

(assert (=> b!1171653 (= tp!334722 (and (=> t!110779 result!78976) b_and!80759))))

(declare-fun e!751415 () Bool)

(assert (=> b!1171653 (= e!751415 (and tp!334721 tp!334722))))

(declare-fun b!1171652 () Bool)

(declare-fun tp!334724 () Bool)

(declare-fun e!751418 () Bool)

(declare-fun inv!15282 (String!14023) Bool)

(declare-fun inv!15299 (TokenValueInjection!3874) Bool)

(assert (=> b!1171652 (= e!751418 (and tp!334724 (inv!15282 (tag!2283 (h!16992 (rules!9642 thiss!10527)))) (inv!15299 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) e!751415))))

(declare-fun b!1171651 () Bool)

(declare-fun e!751416 () Bool)

(declare-fun tp!334723 () Bool)

(assert (=> b!1171651 (= e!751416 (and e!751418 tp!334723))))

(assert (=> b!1171095 (= tp!334688 e!751416)))

(assert (= b!1171652 b!1171653))

(assert (= b!1171651 b!1171652))

(assert (= (and b!1171095 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1171651))

(declare-fun m!1345249 () Bool)

(assert (=> b!1171652 m!1345249))

(declare-fun m!1345251 () Bool)

(assert (=> b!1171652 m!1345251))

(declare-fun tp!334734 () Bool)

(declare-fun tp!334736 () Bool)

(declare-fun b!1171667 () Bool)

(declare-fun e!751427 () Bool)

(assert (=> b!1171667 (= e!751427 (and (inv!15288 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) tp!334736 (inv!15288 (right!10467 (c!195327 (tokens!1654 thiss!10527)))) tp!334734))))

(declare-fun b!1171669 () Bool)

(declare-fun e!751426 () Bool)

(declare-fun tp!334735 () Bool)

(assert (=> b!1171669 (= e!751426 tp!334735)))

(declare-fun b!1171668 () Bool)

(declare-fun inv!15300 (IArray!7615) Bool)

(assert (=> b!1171668 (= e!751427 (and (inv!15300 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))) e!751426))))

(assert (=> b!1171099 (= tp!334687 (and (inv!15288 (c!195327 (tokens!1654 thiss!10527))) e!751427))))

(assert (= (and b!1171099 ((_ is Node!3805) (c!195327 (tokens!1654 thiss!10527)))) b!1171667))

(assert (= b!1171668 b!1171669))

(assert (= (and b!1171099 ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527)))) b!1171668))

(declare-fun m!1345253 () Bool)

(assert (=> b!1171667 m!1345253))

(declare-fun m!1345255 () Bool)

(assert (=> b!1171667 m!1345255))

(declare-fun m!1345257 () Bool)

(assert (=> b!1171668 m!1345257))

(assert (=> b!1171099 m!1344255))

(declare-fun b_lambda!34993 () Bool)

(assert (= b_lambda!34987 (or b!1171109 b_lambda!34993)))

(declare-fun bs!285731 () Bool)

(declare-fun d!335097 () Bool)

(assert (= bs!285731 (and d!335097 b!1171109)))

(assert (=> bs!285731 (= (dynLambda!5125 lambda!48203 (h!16991 lt!401773)) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401773)))))

(assert (=> bs!285731 m!1344263))

(assert (=> b!1171252 d!335097))

(check-sat (not b!1171575) (not b!1171219) (not b!1171617) (not d!334987) (not b!1171442) (not b!1171253) (not d!334947) (not b!1171491) (not b!1171355) (not b!1171478) (not d!335093) (not d!335047) (not b!1171348) (not b!1171099) (not b!1171218) (not b!1171569) (not d!334959) (not b!1171443) (not b!1171354) (not b!1171486) (not b!1171336) (not b!1171352) (not b!1171606) (not b!1171626) (not d!335053) (not d!335051) (not b!1171444) (not b!1171489) (not d!335091) (not b!1171298) (not d!335089) (not b!1171217) (not b!1171484) (not b_lambda!34993) (not b!1171246) (not b!1171351) (not d!334939) (not d!335079) (not b!1171571) (not d!334941) (not bs!285731) (not b!1171669) (not d!335067) (not tb!65943) (not b!1171256) (not b!1171305) (not b!1171212) (not b!1171268) (not d!334979) (not b!1171386) (not b!1171357) (not d!335049) (not b!1171245) b_and!80757 (not d!334975) (not d!335085) (not b!1171342) (not b!1171557) (not b!1171213) (not bm!82289) (not b!1171567) (not b!1171362) (not b!1171341) (not d!335043) (not bm!82287) (not b!1171613) (not b!1171637) (not d!334889) b_and!80759 (not b!1171667) (not b!1171479) (not d!335063) (not d!334949) (not b_lambda!34989) (not b!1171215) (not b!1171234) (not b!1171343) (not d!334961) (not bm!82288) (not d!335073) (not b!1171331) (not d!334971) (not b!1171572) (not b!1171596) (not b!1171639) (not b!1171339) (not d!335077) (not b!1171267) (not b!1171492) (not b!1171385) (not d!334973) (not d!335069) (not b!1171616) (not b!1171335) (not b!1171340) (not b!1171651) (not b!1171330) (not b!1171560) (not b!1171624) (not d!334999) (not d!334977) (not d!335087) (not d!334945) (not b!1171216) (not b!1171640) (not b!1171658) (not b!1171568) (not b!1171297) (not b!1171652) (not d!335095) (not b!1171346) (not b!1171350) (not b!1171625) (not b!1171214) (not b!1171485) (not d!334933) (not b!1171570) (not b!1171668) (not b!1171603) (not d!335071) (not b!1171490) (not b!1171480) (not d!334937) (not b!1171224) (not b!1171623) (not b!1171225) (not b_next!28563) (not d!335045) (not b!1171607) (not b!1171353) (not b!1171307) (not d!335021) (not b!1171356) (not b!1171345) (not b!1171487) (not d!335083) (not d!334903) (not b!1171477) (not b!1171488) (not b!1171334) (not b!1171349) (not d!334981) (not b!1171597) (not d!334969) (not b!1171347) (not b!1171481) (not b!1171247) (not b_next!28561) (not d!334983) (not d!334985) (not b!1171344))
(check-sat b_and!80757 b_and!80759 (not b_next!28561) (not b_next!28563))
(get-model)

(assert (=> d!334987 d!334985))

(declare-fun d!335177 () Bool)

(assert (=> d!335177 (= (list!4274 (singletonSeq!684 (h!16991 lt!401774))) (list!4277 (c!195327 (singletonSeq!684 (h!16991 lt!401774)))))))

(declare-fun bs!285755 () Bool)

(assert (= bs!285755 d!335177))

(declare-fun m!1345479 () Bool)

(assert (=> bs!285755 m!1345479))

(assert (=> d!334999 d!335177))

(assert (=> d!334999 d!334887))

(declare-fun d!335179 () Bool)

(declare-fun lt!402338 () BalanceConc!7630)

(declare-fun printList!516 (LexerInterface!1716 List!11614) List!11613)

(assert (=> d!335179 (= (list!4278 lt!402338) (printList!516 Lexer!1714 (list!4274 (singletonSeq!684 (h!16991 lt!401774)))))))

(declare-fun printTailRec!498 (LexerInterface!1716 BalanceConc!7632 Int BalanceConc!7630) BalanceConc!7630)

(assert (=> d!335179 (= lt!402338 (printTailRec!498 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774)) 0 (BalanceConc!7631 Empty!3804)))))

(assert (=> d!335179 (= (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))) lt!402338)))

(declare-fun bs!285756 () Bool)

(assert (= bs!285756 d!335179))

(declare-fun m!1345481 () Bool)

(assert (=> bs!285756 m!1345481))

(assert (=> bs!285756 m!1345001))

(assert (=> bs!285756 m!1345003))

(assert (=> bs!285756 m!1345003))

(declare-fun m!1345483 () Bool)

(assert (=> bs!285756 m!1345483))

(assert (=> bs!285756 m!1345001))

(declare-fun m!1345485 () Bool)

(assert (=> bs!285756 m!1345485))

(assert (=> d!334999 d!335179))

(declare-fun d!335181 () Bool)

(assert (=> d!335181 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774)))))) (list!4277 (c!195327 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))))))))))

(declare-fun bs!285757 () Bool)

(assert (= bs!285757 d!335181))

(declare-fun m!1345487 () Bool)

(assert (=> bs!285757 m!1345487))

(assert (=> d!334999 d!335181))

(declare-fun d!335183 () Bool)

(declare-fun e!751500 () Bool)

(assert (=> d!335183 e!751500))

(declare-fun res!529461 () Bool)

(assert (=> d!335183 (=> (not res!529461) (not e!751500))))

(declare-fun lt!402341 () BalanceConc!7632)

(assert (=> d!335183 (= res!529461 (= (list!4274 lt!402341) (Cons!11590 (h!16991 lt!401774) Nil!11590)))))

(declare-fun singleton!304 (Token!3704) BalanceConc!7632)

(assert (=> d!335183 (= lt!402341 (singleton!304 (h!16991 lt!401774)))))

(assert (=> d!335183 (= (singletonSeq!684 (h!16991 lt!401774)) lt!402341)))

(declare-fun b!1171787 () Bool)

(assert (=> b!1171787 (= e!751500 (isBalanced!1073 (c!195327 lt!402341)))))

(assert (= (and d!335183 res!529461) b!1171787))

(declare-fun m!1345489 () Bool)

(assert (=> d!335183 m!1345489))

(declare-fun m!1345491 () Bool)

(assert (=> d!335183 m!1345491))

(declare-fun m!1345493 () Bool)

(assert (=> b!1171787 m!1345493))

(assert (=> d!334999 d!335183))

(declare-fun b!1171974 () Bool)

(declare-fun e!751621 () Bool)

(declare-fun lt!402389 () tuple2!12048)

(assert (=> b!1171974 (= e!751621 (= (_2!6871 lt!402389) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774)))))))

(declare-fun b!1171975 () Bool)

(declare-fun res!529526 () Bool)

(declare-fun e!751623 () Bool)

(assert (=> b!1171975 (=> (not res!529526) (not e!751623))))

(declare-datatypes ((tuple2!12052 0))(
  ( (tuple2!12053 (_1!6873 List!11614) (_2!6873 List!11613)) )
))
(declare-fun lexList!416 (LexerInterface!1716 List!11615 List!11613) tuple2!12052)

(assert (=> b!1171975 (= res!529526 (= (list!4274 (_1!6871 lt!402389)) (_1!6873 (lexList!416 Lexer!1714 (rules!9642 thiss!10527) (list!4278 (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))))))))))

(declare-fun b!1171976 () Bool)

(declare-fun e!751622 () Bool)

(assert (=> b!1171976 (= e!751621 e!751622)))

(declare-fun res!529528 () Bool)

(assert (=> b!1171976 (= res!529528 (< (size!9136 (_2!6871 lt!402389)) (size!9136 (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))))))))

(assert (=> b!1171976 (=> (not res!529528) (not e!751622))))

(declare-fun b!1171977 () Bool)

(assert (=> b!1171977 (= e!751623 (= (list!4278 (_2!6871 lt!402389)) (_2!6873 (lexList!416 Lexer!1714 (rules!9642 thiss!10527) (list!4278 (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))))))))))

(declare-fun d!335185 () Bool)

(assert (=> d!335185 e!751623))

(declare-fun res!529527 () Bool)

(assert (=> d!335185 (=> (not res!529527) (not e!751623))))

(assert (=> d!335185 (= res!529527 e!751621)))

(declare-fun c!195467 () Bool)

(assert (=> d!335185 (= c!195467 (> (size!9137 (_1!6871 lt!402389)) 0))))

(declare-fun lexTailRecV2!323 (LexerInterface!1716 List!11615 BalanceConc!7630 BalanceConc!7630 BalanceConc!7630 BalanceConc!7632) tuple2!12048)

(assert (=> d!335185 (= lt!402389 (lexTailRecV2!323 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))) (BalanceConc!7631 Empty!3804) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))) (BalanceConc!7633 Empty!3805)))))

(assert (=> d!335185 (= (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774)))) lt!402389)))

(declare-fun b!1171978 () Bool)

(declare-fun isEmpty!7039 (BalanceConc!7632) Bool)

(assert (=> b!1171978 (= e!751622 (not (isEmpty!7039 (_1!6871 lt!402389))))))

(assert (= (and d!335185 c!195467) b!1171976))

(assert (= (and d!335185 (not c!195467)) b!1171974))

(assert (= (and b!1171976 res!529528) b!1171978))

(assert (= (and d!335185 res!529527) b!1171975))

(assert (= (and b!1171975 res!529526) b!1171977))

(declare-fun m!1345805 () Bool)

(assert (=> b!1171978 m!1345805))

(declare-fun m!1345807 () Bool)

(assert (=> b!1171976 m!1345807))

(assert (=> b!1171976 m!1345007))

(declare-fun m!1345809 () Bool)

(assert (=> b!1171976 m!1345809))

(declare-fun m!1345811 () Bool)

(assert (=> d!335185 m!1345811))

(assert (=> d!335185 m!1345007))

(assert (=> d!335185 m!1345007))

(declare-fun m!1345813 () Bool)

(assert (=> d!335185 m!1345813))

(declare-fun m!1345817 () Bool)

(assert (=> b!1171977 m!1345817))

(assert (=> b!1171977 m!1345007))

(declare-fun m!1345821 () Bool)

(assert (=> b!1171977 m!1345821))

(assert (=> b!1171977 m!1345821))

(declare-fun m!1345827 () Bool)

(assert (=> b!1171977 m!1345827))

(declare-fun m!1345829 () Bool)

(assert (=> b!1171975 m!1345829))

(assert (=> b!1171975 m!1345007))

(assert (=> b!1171975 m!1345821))

(assert (=> b!1171975 m!1345821))

(assert (=> b!1171975 m!1345827))

(assert (=> d!334999 d!335185))

(declare-fun d!335295 () Bool)

(declare-fun lt!402391 () Int)

(assert (=> d!335295 (= lt!402391 (size!9142 (list!4274 (_1!6871 lt!402237))))))

(assert (=> d!335295 (= lt!402391 (size!9143 (c!195327 (_1!6871 lt!402237))))))

(assert (=> d!335295 (= (size!9137 (_1!6871 lt!402237)) lt!402391)))

(declare-fun bs!285778 () Bool)

(assert (= bs!285778 d!335295))

(declare-fun m!1345831 () Bool)

(assert (=> bs!285778 m!1345831))

(assert (=> bs!285778 m!1345831))

(declare-fun m!1345833 () Bool)

(assert (=> bs!285778 m!1345833))

(declare-fun m!1345835 () Bool)

(assert (=> bs!285778 m!1345835))

(assert (=> d!334999 d!335295))

(declare-fun d!335297 () Bool)

(declare-fun res!529529 () Bool)

(declare-fun e!751625 () Bool)

(assert (=> d!335297 (=> res!529529 e!751625)))

(assert (=> d!335297 (= res!529529 ((_ is Nil!11590) (list!4274 lt!401775)))))

(assert (=> d!335297 (= (forall!3066 (list!4274 lt!401775) lambda!48203) e!751625)))

(declare-fun b!1171980 () Bool)

(declare-fun e!751626 () Bool)

(assert (=> b!1171980 (= e!751625 e!751626)))

(declare-fun res!529530 () Bool)

(assert (=> b!1171980 (=> (not res!529530) (not e!751626))))

(assert (=> b!1171980 (= res!529530 (dynLambda!5125 lambda!48203 (h!16991 (list!4274 lt!401775))))))

(declare-fun b!1171981 () Bool)

(assert (=> b!1171981 (= e!751626 (forall!3066 (t!110758 (list!4274 lt!401775)) lambda!48203))))

(assert (= (and d!335297 (not res!529529)) b!1171980))

(assert (= (and b!1171980 res!529530) b!1171981))

(declare-fun b_lambda!35009 () Bool)

(assert (=> (not b_lambda!35009) (not b!1171980)))

(declare-fun m!1345837 () Bool)

(assert (=> b!1171980 m!1345837))

(declare-fun m!1345839 () Bool)

(assert (=> b!1171981 m!1345839))

(assert (=> d!335045 d!335297))

(assert (=> d!335045 d!334939))

(declare-fun b!1171993 () Bool)

(declare-fun e!751637 () Bool)

(declare-fun e!751636 () Bool)

(assert (=> b!1171993 (= e!751637 e!751636)))

(declare-fun c!195470 () Bool)

(assert (=> b!1171993 (= c!195470 ((_ is Leaf!5826) (c!195327 lt!401775)))))

(declare-fun b!1171994 () Bool)

(declare-fun forall!3070 (IArray!7615 Int) Bool)

(assert (=> b!1171994 (= e!751636 (forall!3070 (xs!6510 (c!195327 lt!401775)) lambda!48203))))

(declare-fun b!1171995 () Bool)

(declare-fun e!751638 () Bool)

(assert (=> b!1171995 (= e!751636 e!751638)))

(declare-fun lt!402402 () Unit!17788)

(declare-fun lemmaForallConcat!119 (List!11614 List!11614 Int) Unit!17788)

(assert (=> b!1171995 (= lt!402402 (lemmaForallConcat!119 (list!4277 (left!10137 (c!195327 lt!401775))) (list!4277 (right!10467 (c!195327 lt!401775))) lambda!48203))))

(declare-fun res!529538 () Bool)

(assert (=> b!1171995 (= res!529538 (forall!3068 (left!10137 (c!195327 lt!401775)) lambda!48203))))

(assert (=> b!1171995 (=> (not res!529538) (not e!751638))))

(declare-fun b!1171996 () Bool)

(assert (=> b!1171996 (= e!751638 (forall!3068 (right!10467 (c!195327 lt!401775)) lambda!48203))))

(declare-fun d!335299 () Bool)

(declare-fun lt!402401 () Bool)

(assert (=> d!335299 (= lt!402401 (forall!3066 (list!4277 (c!195327 lt!401775)) lambda!48203))))

(assert (=> d!335299 (= lt!402401 e!751637)))

(declare-fun res!529539 () Bool)

(assert (=> d!335299 (=> res!529539 e!751637)))

(assert (=> d!335299 (= res!529539 ((_ is Empty!3805) (c!195327 lt!401775)))))

(assert (=> d!335299 (= (forall!3068 (c!195327 lt!401775) lambda!48203) lt!402401)))

(assert (= (and d!335299 (not res!529539)) b!1171993))

(assert (= (and b!1171993 c!195470) b!1171994))

(assert (= (and b!1171993 (not c!195470)) b!1171995))

(assert (= (and b!1171995 res!529538) b!1171996))

(declare-fun m!1345845 () Bool)

(assert (=> b!1171994 m!1345845))

(declare-fun m!1345847 () Bool)

(assert (=> b!1171995 m!1345847))

(declare-fun m!1345849 () Bool)

(assert (=> b!1171995 m!1345849))

(assert (=> b!1171995 m!1345847))

(assert (=> b!1171995 m!1345849))

(declare-fun m!1345851 () Bool)

(assert (=> b!1171995 m!1345851))

(declare-fun m!1345853 () Bool)

(assert (=> b!1171995 m!1345853))

(declare-fun m!1345855 () Bool)

(assert (=> b!1171996 m!1345855))

(assert (=> d!335299 m!1344443))

(assert (=> d!335299 m!1344443))

(declare-fun m!1345857 () Bool)

(assert (=> d!335299 m!1345857))

(assert (=> d!335045 d!335299))

(declare-fun d!335303 () Bool)

(declare-fun res!529541 () Bool)

(declare-fun e!751642 () Bool)

(assert (=> d!335303 (=> res!529541 e!751642)))

(assert (=> d!335303 (= res!529541 ((_ is Nil!11590) (t!110758 (slice!349 lt!401774 from!787 to!267))))))

(assert (=> d!335303 (= (subseq!271 (t!110758 (slice!349 lt!401774 from!787 to!267)) (t!110758 lt!401774)) e!751642)))

(declare-fun e!751641 () Bool)

(declare-fun b!1171999 () Bool)

(assert (=> b!1171999 (= e!751641 (subseq!271 (t!110758 (t!110758 (slice!349 lt!401774 from!787 to!267))) (t!110758 (t!110758 lt!401774))))))

(declare-fun b!1171997 () Bool)

(declare-fun e!751639 () Bool)

(assert (=> b!1171997 (= e!751642 e!751639)))

(declare-fun res!529540 () Bool)

(assert (=> b!1171997 (=> (not res!529540) (not e!751639))))

(assert (=> b!1171997 (= res!529540 ((_ is Cons!11590) (t!110758 lt!401774)))))

(declare-fun b!1171998 () Bool)

(declare-fun e!751640 () Bool)

(assert (=> b!1171998 (= e!751639 e!751640)))

(declare-fun res!529542 () Bool)

(assert (=> b!1171998 (=> res!529542 e!751640)))

(assert (=> b!1171998 (= res!529542 e!751641)))

(declare-fun res!529543 () Bool)

(assert (=> b!1171998 (=> (not res!529543) (not e!751641))))

(assert (=> b!1171998 (= res!529543 (= (h!16991 (t!110758 (slice!349 lt!401774 from!787 to!267))) (h!16991 (t!110758 lt!401774))))))

(declare-fun b!1172000 () Bool)

(assert (=> b!1172000 (= e!751640 (subseq!271 (t!110758 (slice!349 lt!401774 from!787 to!267)) (t!110758 (t!110758 lt!401774))))))

(assert (= (and d!335303 (not res!529541)) b!1171997))

(assert (= (and b!1171997 res!529540) b!1171998))

(assert (= (and b!1171998 res!529543) b!1171999))

(assert (= (and b!1171998 (not res!529542)) b!1172000))

(declare-fun m!1345863 () Bool)

(assert (=> b!1171999 m!1345863))

(declare-fun m!1345867 () Bool)

(assert (=> b!1172000 m!1345867))

(assert (=> b!1171267 d!335303))

(declare-fun d!335305 () Bool)

(declare-fun lt!402404 () Bool)

(declare-fun e!751644 () Bool)

(assert (=> d!335305 (= lt!402404 e!751644)))

(declare-fun res!529544 () Bool)

(assert (=> d!335305 (=> (not res!529544) (not e!751644))))

(assert (=> d!335305 (= res!529544 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 (t!110758 lt!401774))))))) (list!4274 (singletonSeq!684 (h!16991 (t!110758 lt!401774))))))))

(declare-fun e!751643 () Bool)

(assert (=> d!335305 (= lt!402404 e!751643)))

(declare-fun res!529545 () Bool)

(assert (=> d!335305 (=> (not res!529545) (not e!751643))))

(declare-fun lt!402405 () tuple2!12048)

(assert (=> d!335305 (= res!529545 (= (size!9137 (_1!6871 lt!402405)) 1))))

(assert (=> d!335305 (= lt!402405 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 (t!110758 lt!401774))))))))

(assert (=> d!335305 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335305 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401774))) lt!402404)))

(declare-fun b!1172001 () Bool)

(declare-fun res!529546 () Bool)

(assert (=> b!1172001 (=> (not res!529546) (not e!751643))))

(assert (=> b!1172001 (= res!529546 (= (apply!2517 (_1!6871 lt!402405) 0) (h!16991 (t!110758 lt!401774))))))

(declare-fun b!1172002 () Bool)

(assert (=> b!1172002 (= e!751643 (isEmpty!7034 (_2!6871 lt!402405)))))

(declare-fun b!1172003 () Bool)

(assert (=> b!1172003 (= e!751644 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 (t!110758 lt!401774))))))))))

(assert (= (and d!335305 res!529545) b!1172001))

(assert (= (and b!1172001 res!529546) b!1172002))

(assert (= (and d!335305 res!529544) b!1172003))

(declare-fun m!1345869 () Bool)

(assert (=> d!335305 m!1345869))

(declare-fun m!1345871 () Bool)

(assert (=> d!335305 m!1345871))

(assert (=> d!335305 m!1344215))

(declare-fun m!1345873 () Bool)

(assert (=> d!335305 m!1345873))

(declare-fun m!1345875 () Bool)

(assert (=> d!335305 m!1345875))

(declare-fun m!1345877 () Bool)

(assert (=> d!335305 m!1345877))

(assert (=> d!335305 m!1345869))

(assert (=> d!335305 m!1345875))

(declare-fun m!1345879 () Bool)

(assert (=> d!335305 m!1345879))

(assert (=> d!335305 m!1345869))

(declare-fun m!1345881 () Bool)

(assert (=> b!1172001 m!1345881))

(declare-fun m!1345883 () Bool)

(assert (=> b!1172002 m!1345883))

(assert (=> b!1172003 m!1345869))

(assert (=> b!1172003 m!1345869))

(assert (=> b!1172003 m!1345875))

(assert (=> b!1172003 m!1345875))

(assert (=> b!1172003 m!1345877))

(declare-fun m!1345885 () Bool)

(assert (=> b!1172003 m!1345885))

(assert (=> b!1171224 d!335305))

(assert (=> b!1171623 d!334959))

(declare-fun d!335309 () Bool)

(declare-fun lt!402406 () Token!3704)

(assert (=> d!335309 (= lt!402406 (apply!2518 (list!4274 (_1!6871 lt!402256)) 0))))

(assert (=> d!335309 (= lt!402406 (apply!2521 (c!195327 (_1!6871 lt!402256)) 0))))

(declare-fun e!751645 () Bool)

(assert (=> d!335309 e!751645))

(declare-fun res!529547 () Bool)

(assert (=> d!335309 (=> (not res!529547) (not e!751645))))

(assert (=> d!335309 (= res!529547 (<= 0 0))))

(assert (=> d!335309 (= (apply!2517 (_1!6871 lt!402256) 0) lt!402406)))

(declare-fun b!1172004 () Bool)

(assert (=> b!1172004 (= e!751645 (< 0 (size!9137 (_1!6871 lt!402256))))))

(assert (= (and d!335309 res!529547) b!1172004))

(declare-fun m!1345887 () Bool)

(assert (=> d!335309 m!1345887))

(assert (=> d!335309 m!1345887))

(declare-fun m!1345889 () Bool)

(assert (=> d!335309 m!1345889))

(declare-fun m!1345891 () Bool)

(assert (=> d!335309 m!1345891))

(assert (=> b!1172004 m!1345105))

(assert (=> b!1171487 d!335309))

(declare-fun d!335311 () Bool)

(declare-fun lt!402407 () Token!3704)

(assert (=> d!335311 (contains!2002 lt!401915 lt!402407)))

(declare-fun e!751647 () Token!3704)

(assert (=> d!335311 (= lt!402407 e!751647)))

(declare-fun c!195471 () Bool)

(assert (=> d!335311 (= c!195471 (= lt!401905 0))))

(declare-fun e!751646 () Bool)

(assert (=> d!335311 e!751646))

(declare-fun res!529548 () Bool)

(assert (=> d!335311 (=> (not res!529548) (not e!751646))))

(assert (=> d!335311 (= res!529548 (<= 0 lt!401905))))

(assert (=> d!335311 (= (apply!2518 lt!401915 lt!401905) lt!402407)))

(declare-fun b!1172005 () Bool)

(assert (=> b!1172005 (= e!751646 (< lt!401905 (size!9142 lt!401915)))))

(declare-fun b!1172006 () Bool)

(assert (=> b!1172006 (= e!751647 (head!2110 lt!401915))))

(declare-fun b!1172007 () Bool)

(assert (=> b!1172007 (= e!751647 (apply!2518 (tail!1694 lt!401915) (- lt!401905 1)))))

(assert (= (and d!335311 res!529548) b!1172005))

(assert (= (and d!335311 c!195471) b!1172006))

(assert (= (and d!335311 (not c!195471)) b!1172007))

(declare-fun m!1345893 () Bool)

(assert (=> d!335311 m!1345893))

(declare-fun m!1345895 () Bool)

(assert (=> b!1172005 m!1345895))

(declare-fun m!1345897 () Bool)

(assert (=> b!1172006 m!1345897))

(declare-fun m!1345899 () Bool)

(assert (=> b!1172007 m!1345899))

(assert (=> b!1172007 m!1345899))

(declare-fun m!1345901 () Bool)

(assert (=> b!1172007 m!1345901))

(assert (=> b!1171212 d!335311))

(declare-fun d!335313 () Bool)

(assert (=> d!335313 (= (head!2110 (drop!493 lt!401896 0)) (apply!2518 lt!401896 0))))

(declare-fun lt!402408 () Unit!17788)

(assert (=> d!335313 (= lt!402408 (choose!7568 lt!401896 0))))

(declare-fun e!751648 () Bool)

(assert (=> d!335313 e!751648))

(declare-fun res!529549 () Bool)

(assert (=> d!335313 (=> (not res!529549) (not e!751648))))

(assert (=> d!335313 (= res!529549 (>= 0 0))))

(assert (=> d!335313 (= (lemmaDropApply!379 lt!401896 0) lt!402408)))

(declare-fun b!1172008 () Bool)

(assert (=> b!1172008 (= e!751648 (< 0 (size!9142 lt!401896)))))

(assert (= (and d!335313 res!529549) b!1172008))

(assert (=> d!335313 m!1344365))

(assert (=> d!335313 m!1344365))

(assert (=> d!335313 m!1344407))

(assert (=> d!335313 m!1344359))

(declare-fun m!1345903 () Bool)

(assert (=> d!335313 m!1345903))

(declare-fun m!1345905 () Bool)

(assert (=> b!1172008 m!1345905))

(assert (=> b!1171212 d!335313))

(declare-fun d!335315 () Bool)

(declare-fun lt!402409 () Bool)

(declare-fun e!751650 () Bool)

(assert (=> d!335315 (= lt!402409 e!751650)))

(declare-fun res!529550 () Bool)

(assert (=> d!335315 (=> (not res!529550) (not e!751650))))

(assert (=> d!335315 (= res!529550 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401913))))) (list!4274 (singletonSeq!684 lt!401913))))))

(declare-fun e!751649 () Bool)

(assert (=> d!335315 (= lt!402409 e!751649)))

(declare-fun res!529551 () Bool)

(assert (=> d!335315 (=> (not res!529551) (not e!751649))))

(declare-fun lt!402410 () tuple2!12048)

(assert (=> d!335315 (= res!529551 (= (size!9137 (_1!6871 lt!402410)) 1))))

(assert (=> d!335315 (= lt!402410 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401913))))))

(assert (=> d!335315 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335315 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401913) lt!402409)))

(declare-fun b!1172009 () Bool)

(declare-fun res!529552 () Bool)

(assert (=> b!1172009 (=> (not res!529552) (not e!751649))))

(assert (=> b!1172009 (= res!529552 (= (apply!2517 (_1!6871 lt!402410) 0) lt!401913))))

(declare-fun b!1172010 () Bool)

(assert (=> b!1172010 (= e!751649 (isEmpty!7034 (_2!6871 lt!402410)))))

(declare-fun b!1172011 () Bool)

(assert (=> b!1172011 (= e!751650 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401913))))))))

(assert (= (and d!335315 res!529551) b!1172009))

(assert (= (and b!1172009 res!529552) b!1172010))

(assert (= (and d!335315 res!529550) b!1172011))

(declare-fun m!1345907 () Bool)

(assert (=> d!335315 m!1345907))

(declare-fun m!1345909 () Bool)

(assert (=> d!335315 m!1345909))

(assert (=> d!335315 m!1344215))

(declare-fun m!1345911 () Bool)

(assert (=> d!335315 m!1345911))

(declare-fun m!1345913 () Bool)

(assert (=> d!335315 m!1345913))

(declare-fun m!1345915 () Bool)

(assert (=> d!335315 m!1345915))

(assert (=> d!335315 m!1345907))

(assert (=> d!335315 m!1345913))

(declare-fun m!1345917 () Bool)

(assert (=> d!335315 m!1345917))

(assert (=> d!335315 m!1345907))

(declare-fun m!1345919 () Bool)

(assert (=> b!1172009 m!1345919))

(declare-fun m!1345921 () Bool)

(assert (=> b!1172010 m!1345921))

(assert (=> b!1172011 m!1345907))

(assert (=> b!1172011 m!1345907))

(assert (=> b!1172011 m!1345913))

(assert (=> b!1172011 m!1345913))

(assert (=> b!1172011 m!1345915))

(declare-fun m!1345923 () Bool)

(assert (=> b!1172011 m!1345923))

(assert (=> b!1171212 d!335315))

(declare-fun b!1172012 () Bool)

(declare-fun e!751653 () Int)

(declare-fun call!82306 () Int)

(assert (=> b!1172012 (= e!751653 (- call!82306 0))))

(declare-fun b!1172014 () Bool)

(declare-fun e!751651 () Bool)

(declare-fun lt!402411 () List!11614)

(declare-fun e!751655 () Int)

(assert (=> b!1172014 (= e!751651 (= (size!9142 lt!402411) e!751655))))

(declare-fun c!195472 () Bool)

(assert (=> b!1172014 (= c!195472 (<= 0 0))))

(declare-fun b!1172015 () Bool)

(declare-fun e!751654 () List!11614)

(assert (=> b!1172015 (= e!751654 (drop!493 (t!110758 lt!401911) (- 0 1)))))

(declare-fun b!1172016 () Bool)

(assert (=> b!1172016 (= e!751655 call!82306)))

(declare-fun b!1172017 () Bool)

(assert (=> b!1172017 (= e!751653 0)))

(declare-fun b!1172018 () Bool)

(assert (=> b!1172018 (= e!751655 e!751653)))

(declare-fun c!195473 () Bool)

(assert (=> b!1172018 (= c!195473 (>= 0 call!82306))))

(declare-fun bm!82301 () Bool)

(assert (=> bm!82301 (= call!82306 (size!9142 lt!401911))))

(declare-fun b!1172019 () Bool)

(declare-fun e!751652 () List!11614)

(assert (=> b!1172019 (= e!751652 Nil!11590)))

(declare-fun b!1172020 () Bool)

(assert (=> b!1172020 (= e!751654 lt!401911)))

(declare-fun b!1172013 () Bool)

(assert (=> b!1172013 (= e!751652 e!751654)))

(declare-fun c!195475 () Bool)

(assert (=> b!1172013 (= c!195475 (<= 0 0))))

(declare-fun d!335317 () Bool)

(assert (=> d!335317 e!751651))

(declare-fun res!529553 () Bool)

(assert (=> d!335317 (=> (not res!529553) (not e!751651))))

(assert (=> d!335317 (= res!529553 (= ((_ map implies) (content!1614 lt!402411) (content!1614 lt!401911)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335317 (= lt!402411 e!751652)))

(declare-fun c!195474 () Bool)

(assert (=> d!335317 (= c!195474 ((_ is Nil!11590) lt!401911))))

(assert (=> d!335317 (= (drop!493 lt!401911 0) lt!402411)))

(assert (= (and d!335317 c!195474) b!1172019))

(assert (= (and d!335317 (not c!195474)) b!1172013))

(assert (= (and b!1172013 c!195475) b!1172020))

(assert (= (and b!1172013 (not c!195475)) b!1172015))

(assert (= (and d!335317 res!529553) b!1172014))

(assert (= (and b!1172014 c!195472) b!1172016))

(assert (= (and b!1172014 (not c!195472)) b!1172018))

(assert (= (and b!1172018 c!195473) b!1172017))

(assert (= (and b!1172018 (not c!195473)) b!1172012))

(assert (= (or b!1172016 b!1172018 b!1172012) bm!82301))

(declare-fun m!1345925 () Bool)

(assert (=> b!1172014 m!1345925))

(declare-fun m!1345927 () Bool)

(assert (=> b!1172015 m!1345927))

(declare-fun m!1345929 () Bool)

(assert (=> bm!82301 m!1345929))

(declare-fun m!1345931 () Bool)

(assert (=> d!335317 m!1345931))

(declare-fun m!1345933 () Bool)

(assert (=> d!335317 m!1345933))

(assert (=> b!1171212 d!335317))

(declare-fun d!335319 () Bool)

(assert (=> d!335319 (= (head!2110 (drop!493 lt!401915 lt!401905)) (h!16991 (drop!493 lt!401915 lt!401905)))))

(assert (=> b!1171212 d!335319))

(declare-fun d!335321 () Bool)

(declare-fun lt!402412 () Int)

(assert (=> d!335321 (= lt!402412 (size!9144 (list!4278 (charsOf!1076 (apply!2517 lt!401775 (+ 0 1))))))))

(assert (=> d!335321 (= lt!402412 (size!9145 (c!195326 (charsOf!1076 (apply!2517 lt!401775 (+ 0 1))))))))

(assert (=> d!335321 (= (size!9136 (charsOf!1076 (apply!2517 lt!401775 (+ 0 1)))) lt!402412)))

(declare-fun bs!285780 () Bool)

(assert (= bs!285780 d!335321))

(assert (=> bs!285780 m!1344373))

(declare-fun m!1345935 () Bool)

(assert (=> bs!285780 m!1345935))

(assert (=> bs!285780 m!1345935))

(declare-fun m!1345937 () Bool)

(assert (=> bs!285780 m!1345937))

(declare-fun m!1345939 () Bool)

(assert (=> bs!285780 m!1345939))

(assert (=> b!1171212 d!335321))

(declare-fun d!335323 () Bool)

(assert (=> d!335323 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401913)))

(declare-fun lt!402413 () Unit!17788)

(assert (=> d!335323 (= lt!402413 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!401903 lt!401913))))

(assert (=> d!335323 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335323 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401903 lt!401913) lt!402413)))

(declare-fun bs!285781 () Bool)

(assert (= bs!285781 d!335323))

(assert (=> bs!285781 m!1344383))

(declare-fun m!1345941 () Bool)

(assert (=> bs!285781 m!1345941))

(assert (=> bs!285781 m!1344215))

(assert (=> b!1171212 d!335323))

(declare-fun b!1172021 () Bool)

(declare-fun e!751658 () Int)

(declare-fun call!82307 () Int)

(assert (=> b!1172021 (= e!751658 (- call!82307 0))))

(declare-fun b!1172023 () Bool)

(declare-fun e!751656 () Bool)

(declare-fun lt!402414 () List!11614)

(declare-fun e!751660 () Int)

(assert (=> b!1172023 (= e!751656 (= (size!9142 lt!402414) e!751660))))

(declare-fun c!195476 () Bool)

(assert (=> b!1172023 (= c!195476 (<= 0 0))))

(declare-fun b!1172024 () Bool)

(declare-fun e!751659 () List!11614)

(assert (=> b!1172024 (= e!751659 (drop!493 (t!110758 lt!401896) (- 0 1)))))

(declare-fun b!1172025 () Bool)

(assert (=> b!1172025 (= e!751660 call!82307)))

(declare-fun b!1172026 () Bool)

(assert (=> b!1172026 (= e!751658 0)))

(declare-fun b!1172027 () Bool)

(assert (=> b!1172027 (= e!751660 e!751658)))

(declare-fun c!195477 () Bool)

(assert (=> b!1172027 (= c!195477 (>= 0 call!82307))))

(declare-fun bm!82302 () Bool)

(assert (=> bm!82302 (= call!82307 (size!9142 lt!401896))))

(declare-fun b!1172028 () Bool)

(declare-fun e!751657 () List!11614)

(assert (=> b!1172028 (= e!751657 Nil!11590)))

(declare-fun b!1172029 () Bool)

(assert (=> b!1172029 (= e!751659 lt!401896)))

(declare-fun b!1172022 () Bool)

(assert (=> b!1172022 (= e!751657 e!751659)))

(declare-fun c!195479 () Bool)

(assert (=> b!1172022 (= c!195479 (<= 0 0))))

(declare-fun d!335325 () Bool)

(assert (=> d!335325 e!751656))

(declare-fun res!529554 () Bool)

(assert (=> d!335325 (=> (not res!529554) (not e!751656))))

(assert (=> d!335325 (= res!529554 (= ((_ map implies) (content!1614 lt!402414) (content!1614 lt!401896)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335325 (= lt!402414 e!751657)))

(declare-fun c!195478 () Bool)

(assert (=> d!335325 (= c!195478 ((_ is Nil!11590) lt!401896))))

(assert (=> d!335325 (= (drop!493 lt!401896 0) lt!402414)))

(assert (= (and d!335325 c!195478) b!1172028))

(assert (= (and d!335325 (not c!195478)) b!1172022))

(assert (= (and b!1172022 c!195479) b!1172029))

(assert (= (and b!1172022 (not c!195479)) b!1172024))

(assert (= (and d!335325 res!529554) b!1172023))

(assert (= (and b!1172023 c!195476) b!1172025))

(assert (= (and b!1172023 (not c!195476)) b!1172027))

(assert (= (and b!1172027 c!195477) b!1172026))

(assert (= (and b!1172027 (not c!195477)) b!1172021))

(assert (= (or b!1172025 b!1172027 b!1172021) bm!82302))

(declare-fun m!1345943 () Bool)

(assert (=> b!1172023 m!1345943))

(declare-fun m!1345945 () Bool)

(assert (=> b!1172024 m!1345945))

(assert (=> bm!82302 m!1345905))

(declare-fun m!1345947 () Bool)

(assert (=> d!335325 m!1345947))

(declare-fun m!1345949 () Bool)

(assert (=> d!335325 m!1345949))

(assert (=> b!1171212 d!335325))

(declare-fun d!335327 () Bool)

(assert (=> d!335327 (= (head!2110 (drop!493 lt!401896 0)) (h!16991 (drop!493 lt!401896 0)))))

(assert (=> b!1171212 d!335327))

(declare-fun d!335329 () Bool)

(declare-fun lt!402415 () Token!3704)

(assert (=> d!335329 (= lt!402415 (apply!2518 (list!4274 lt!401775) 0))))

(assert (=> d!335329 (= lt!402415 (apply!2521 (c!195327 lt!401775) 0))))

(declare-fun e!751661 () Bool)

(assert (=> d!335329 e!751661))

(declare-fun res!529555 () Bool)

(assert (=> d!335329 (=> (not res!529555) (not e!751661))))

(assert (=> d!335329 (= res!529555 (<= 0 0))))

(assert (=> d!335329 (= (apply!2517 lt!401775 0) lt!402415)))

(declare-fun b!1172030 () Bool)

(assert (=> b!1172030 (= e!751661 (< 0 (size!9137 lt!401775)))))

(assert (= (and d!335329 res!529555) b!1172030))

(assert (=> d!335329 m!1344231))

(assert (=> d!335329 m!1344231))

(declare-fun m!1345951 () Bool)

(assert (=> d!335329 m!1345951))

(declare-fun m!1345953 () Bool)

(assert (=> d!335329 m!1345953))

(assert (=> b!1172030 m!1344417))

(assert (=> b!1171212 d!335329))

(declare-fun b!1172031 () Bool)

(declare-fun e!751664 () Int)

(declare-fun call!82308 () Int)

(assert (=> b!1172031 (= e!751664 (- call!82308 (+ lt!401922 1)))))

(declare-fun b!1172033 () Bool)

(declare-fun e!751662 () Bool)

(declare-fun lt!402416 () List!11614)

(declare-fun e!751666 () Int)

(assert (=> b!1172033 (= e!751662 (= (size!9142 lt!402416) e!751666))))

(declare-fun c!195480 () Bool)

(assert (=> b!1172033 (= c!195480 (<= (+ lt!401922 1) 0))))

(declare-fun b!1172034 () Bool)

(declare-fun e!751665 () List!11614)

(assert (=> b!1172034 (= e!751665 (drop!493 (t!110758 lt!401912) (- (+ lt!401922 1) 1)))))

(declare-fun b!1172035 () Bool)

(assert (=> b!1172035 (= e!751666 call!82308)))

(declare-fun b!1172036 () Bool)

(assert (=> b!1172036 (= e!751664 0)))

(declare-fun b!1172037 () Bool)

(assert (=> b!1172037 (= e!751666 e!751664)))

(declare-fun c!195481 () Bool)

(assert (=> b!1172037 (= c!195481 (>= (+ lt!401922 1) call!82308))))

(declare-fun bm!82303 () Bool)

(assert (=> bm!82303 (= call!82308 (size!9142 lt!401912))))

(declare-fun b!1172038 () Bool)

(declare-fun e!751663 () List!11614)

(assert (=> b!1172038 (= e!751663 Nil!11590)))

(declare-fun b!1172039 () Bool)

(assert (=> b!1172039 (= e!751665 lt!401912)))

(declare-fun b!1172032 () Bool)

(assert (=> b!1172032 (= e!751663 e!751665)))

(declare-fun c!195483 () Bool)

(assert (=> b!1172032 (= c!195483 (<= (+ lt!401922 1) 0))))

(declare-fun d!335331 () Bool)

(assert (=> d!335331 e!751662))

(declare-fun res!529556 () Bool)

(assert (=> d!335331 (=> (not res!529556) (not e!751662))))

(assert (=> d!335331 (= res!529556 (= ((_ map implies) (content!1614 lt!402416) (content!1614 lt!401912)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335331 (= lt!402416 e!751663)))

(declare-fun c!195482 () Bool)

(assert (=> d!335331 (= c!195482 ((_ is Nil!11590) lt!401912))))

(assert (=> d!335331 (= (drop!493 lt!401912 (+ lt!401922 1)) lt!402416)))

(assert (= (and d!335331 c!195482) b!1172038))

(assert (= (and d!335331 (not c!195482)) b!1172032))

(assert (= (and b!1172032 c!195483) b!1172039))

(assert (= (and b!1172032 (not c!195483)) b!1172034))

(assert (= (and d!335331 res!529556) b!1172033))

(assert (= (and b!1172033 c!195480) b!1172035))

(assert (= (and b!1172033 (not c!195480)) b!1172037))

(assert (= (and b!1172037 c!195481) b!1172036))

(assert (= (and b!1172037 (not c!195481)) b!1172031))

(assert (= (or b!1172035 b!1172037 b!1172031) bm!82303))

(declare-fun m!1345955 () Bool)

(assert (=> b!1172033 m!1345955))

(declare-fun m!1345957 () Bool)

(assert (=> b!1172034 m!1345957))

(declare-fun m!1345959 () Bool)

(assert (=> bm!82303 m!1345959))

(declare-fun m!1345961 () Bool)

(assert (=> d!335331 m!1345961))

(declare-fun m!1345963 () Bool)

(assert (=> d!335331 m!1345963))

(assert (=> b!1171212 d!335331))

(declare-fun d!335333 () Bool)

(declare-fun lt!402417 () Bool)

(declare-fun e!751668 () Bool)

(assert (=> d!335333 (= lt!402417 e!751668)))

(declare-fun res!529557 () Bool)

(assert (=> d!335333 (=> (not res!529557) (not e!751668))))

(assert (=> d!335333 (= res!529557 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 lt!401775 (+ 0 1))))))) (list!4274 (singletonSeq!684 (apply!2517 lt!401775 (+ 0 1))))))))

(declare-fun e!751667 () Bool)

(assert (=> d!335333 (= lt!402417 e!751667)))

(declare-fun res!529558 () Bool)

(assert (=> d!335333 (=> (not res!529558) (not e!751667))))

(declare-fun lt!402418 () tuple2!12048)

(assert (=> d!335333 (= res!529558 (= (size!9137 (_1!6871 lt!402418)) 1))))

(assert (=> d!335333 (= lt!402418 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 lt!401775 (+ 0 1))))))))

(assert (=> d!335333 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335333 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 lt!401775 (+ 0 1))) lt!402417)))

(declare-fun b!1172040 () Bool)

(declare-fun res!529559 () Bool)

(assert (=> b!1172040 (=> (not res!529559) (not e!751667))))

(assert (=> b!1172040 (= res!529559 (= (apply!2517 (_1!6871 lt!402418) 0) (apply!2517 lt!401775 (+ 0 1))))))

(declare-fun b!1172041 () Bool)

(assert (=> b!1172041 (= e!751667 (isEmpty!7034 (_2!6871 lt!402418)))))

(declare-fun b!1172042 () Bool)

(assert (=> b!1172042 (= e!751668 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 lt!401775 (+ 0 1))))))))))

(assert (= (and d!335333 res!529558) b!1172040))

(assert (= (and b!1172040 res!529559) b!1172041))

(assert (= (and d!335333 res!529557) b!1172042))

(declare-fun m!1345965 () Bool)

(assert (=> d!335333 m!1345965))

(declare-fun m!1345967 () Bool)

(assert (=> d!335333 m!1345967))

(assert (=> d!335333 m!1344215))

(declare-fun m!1345969 () Bool)

(assert (=> d!335333 m!1345969))

(declare-fun m!1345971 () Bool)

(assert (=> d!335333 m!1345971))

(declare-fun m!1345973 () Bool)

(assert (=> d!335333 m!1345973))

(assert (=> d!335333 m!1345965))

(assert (=> d!335333 m!1345971))

(declare-fun m!1345975 () Bool)

(assert (=> d!335333 m!1345975))

(assert (=> d!335333 m!1344367))

(assert (=> d!335333 m!1345965))

(declare-fun m!1345977 () Bool)

(assert (=> b!1172040 m!1345977))

(declare-fun m!1345979 () Bool)

(assert (=> b!1172041 m!1345979))

(assert (=> b!1172042 m!1344367))

(assert (=> b!1172042 m!1345965))

(assert (=> b!1172042 m!1345965))

(assert (=> b!1172042 m!1345971))

(assert (=> b!1172042 m!1345971))

(assert (=> b!1172042 m!1345973))

(declare-fun m!1345981 () Bool)

(assert (=> b!1172042 m!1345981))

(assert (=> b!1171212 d!335333))

(declare-fun b!1172043 () Bool)

(declare-fun e!751671 () Int)

(declare-fun call!82309 () Int)

(assert (=> b!1172043 (= e!751671 (- call!82309 lt!401905))))

(declare-fun b!1172045 () Bool)

(declare-fun e!751669 () Bool)

(declare-fun lt!402419 () List!11614)

(declare-fun e!751673 () Int)

(assert (=> b!1172045 (= e!751669 (= (size!9142 lt!402419) e!751673))))

(declare-fun c!195484 () Bool)

(assert (=> b!1172045 (= c!195484 (<= lt!401905 0))))

(declare-fun b!1172046 () Bool)

(declare-fun e!751672 () List!11614)

(assert (=> b!1172046 (= e!751672 (drop!493 (t!110758 lt!401915) (- lt!401905 1)))))

(declare-fun b!1172047 () Bool)

(assert (=> b!1172047 (= e!751673 call!82309)))

(declare-fun b!1172048 () Bool)

(assert (=> b!1172048 (= e!751671 0)))

(declare-fun b!1172049 () Bool)

(assert (=> b!1172049 (= e!751673 e!751671)))

(declare-fun c!195485 () Bool)

(assert (=> b!1172049 (= c!195485 (>= lt!401905 call!82309))))

(declare-fun bm!82304 () Bool)

(assert (=> bm!82304 (= call!82309 (size!9142 lt!401915))))

(declare-fun b!1172050 () Bool)

(declare-fun e!751670 () List!11614)

(assert (=> b!1172050 (= e!751670 Nil!11590)))

(declare-fun b!1172051 () Bool)

(assert (=> b!1172051 (= e!751672 lt!401915)))

(declare-fun b!1172044 () Bool)

(assert (=> b!1172044 (= e!751670 e!751672)))

(declare-fun c!195487 () Bool)

(assert (=> b!1172044 (= c!195487 (<= lt!401905 0))))

(declare-fun d!335335 () Bool)

(assert (=> d!335335 e!751669))

(declare-fun res!529560 () Bool)

(assert (=> d!335335 (=> (not res!529560) (not e!751669))))

(assert (=> d!335335 (= res!529560 (= ((_ map implies) (content!1614 lt!402419) (content!1614 lt!401915)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335335 (= lt!402419 e!751670)))

(declare-fun c!195486 () Bool)

(assert (=> d!335335 (= c!195486 ((_ is Nil!11590) lt!401915))))

(assert (=> d!335335 (= (drop!493 lt!401915 lt!401905) lt!402419)))

(assert (= (and d!335335 c!195486) b!1172050))

(assert (= (and d!335335 (not c!195486)) b!1172044))

(assert (= (and b!1172044 c!195487) b!1172051))

(assert (= (and b!1172044 (not c!195487)) b!1172046))

(assert (= (and d!335335 res!529560) b!1172045))

(assert (= (and b!1172045 c!195484) b!1172047))

(assert (= (and b!1172045 (not c!195484)) b!1172049))

(assert (= (and b!1172049 c!195485) b!1172048))

(assert (= (and b!1172049 (not c!195485)) b!1172043))

(assert (= (or b!1172047 b!1172049 b!1172043) bm!82304))

(declare-fun m!1345983 () Bool)

(assert (=> b!1172045 m!1345983))

(declare-fun m!1345985 () Bool)

(assert (=> b!1172046 m!1345985))

(assert (=> bm!82304 m!1345895))

(declare-fun m!1345987 () Bool)

(assert (=> d!335335 m!1345987))

(declare-fun m!1345989 () Bool)

(assert (=> d!335335 m!1345989))

(assert (=> b!1171212 d!335335))

(declare-fun d!335337 () Bool)

(declare-fun lt!402420 () Token!3704)

(assert (=> d!335337 (contains!2002 lt!401896 lt!402420)))

(declare-fun e!751675 () Token!3704)

(assert (=> d!335337 (= lt!402420 e!751675)))

(declare-fun c!195488 () Bool)

(assert (=> d!335337 (= c!195488 (= 0 0))))

(declare-fun e!751674 () Bool)

(assert (=> d!335337 e!751674))

(declare-fun res!529561 () Bool)

(assert (=> d!335337 (=> (not res!529561) (not e!751674))))

(assert (=> d!335337 (= res!529561 (<= 0 0))))

(assert (=> d!335337 (= (apply!2518 lt!401896 0) lt!402420)))

(declare-fun b!1172052 () Bool)

(assert (=> b!1172052 (= e!751674 (< 0 (size!9142 lt!401896)))))

(declare-fun b!1172053 () Bool)

(assert (=> b!1172053 (= e!751675 (head!2110 lt!401896))))

(declare-fun b!1172054 () Bool)

(assert (=> b!1172054 (= e!751675 (apply!2518 (tail!1694 lt!401896) (- 0 1)))))

(assert (= (and d!335337 res!529561) b!1172052))

(assert (= (and d!335337 c!195488) b!1172053))

(assert (= (and d!335337 (not c!195488)) b!1172054))

(declare-fun m!1345991 () Bool)

(assert (=> d!335337 m!1345991))

(assert (=> b!1172052 m!1345905))

(declare-fun m!1345993 () Bool)

(assert (=> b!1172053 m!1345993))

(declare-fun m!1345995 () Bool)

(assert (=> b!1172054 m!1345995))

(assert (=> b!1172054 m!1345995))

(declare-fun m!1345997 () Bool)

(assert (=> b!1172054 m!1345997))

(assert (=> b!1171212 d!335337))

(declare-fun d!335339 () Bool)

(assert (=> d!335339 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401904)))

(declare-fun lt!402421 () Unit!17788)

(assert (=> d!335339 (= lt!402421 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!401917 lt!401904))))

(assert (=> d!335339 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335339 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401917 lt!401904) lt!402421)))

(declare-fun bs!285782 () Bool)

(assert (= bs!285782 d!335339))

(assert (=> bs!285782 m!1344393))

(declare-fun m!1345999 () Bool)

(assert (=> bs!285782 m!1345999))

(assert (=> bs!285782 m!1344215))

(assert (=> b!1171212 d!335339))

(assert (=> b!1171212 d!334939))

(declare-fun d!335341 () Bool)

(declare-fun lt!402422 () Bool)

(declare-fun e!751677 () Bool)

(assert (=> d!335341 (= lt!402422 e!751677)))

(declare-fun res!529562 () Bool)

(assert (=> d!335341 (=> (not res!529562) (not e!751677))))

(assert (=> d!335341 (= res!529562 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401904))))) (list!4274 (singletonSeq!684 lt!401904))))))

(declare-fun e!751676 () Bool)

(assert (=> d!335341 (= lt!402422 e!751676)))

(declare-fun res!529563 () Bool)

(assert (=> d!335341 (=> (not res!529563) (not e!751676))))

(declare-fun lt!402423 () tuple2!12048)

(assert (=> d!335341 (= res!529563 (= (size!9137 (_1!6871 lt!402423)) 1))))

(assert (=> d!335341 (= lt!402423 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401904))))))

(assert (=> d!335341 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335341 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401904) lt!402422)))

(declare-fun b!1172055 () Bool)

(declare-fun res!529564 () Bool)

(assert (=> b!1172055 (=> (not res!529564) (not e!751676))))

(assert (=> b!1172055 (= res!529564 (= (apply!2517 (_1!6871 lt!402423) 0) lt!401904))))

(declare-fun b!1172056 () Bool)

(assert (=> b!1172056 (= e!751676 (isEmpty!7034 (_2!6871 lt!402423)))))

(declare-fun b!1172057 () Bool)

(assert (=> b!1172057 (= e!751677 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401904))))))))

(assert (= (and d!335341 res!529563) b!1172055))

(assert (= (and b!1172055 res!529564) b!1172056))

(assert (= (and d!335341 res!529562) b!1172057))

(declare-fun m!1346001 () Bool)

(assert (=> d!335341 m!1346001))

(declare-fun m!1346003 () Bool)

(assert (=> d!335341 m!1346003))

(assert (=> d!335341 m!1344215))

(declare-fun m!1346005 () Bool)

(assert (=> d!335341 m!1346005))

(declare-fun m!1346007 () Bool)

(assert (=> d!335341 m!1346007))

(declare-fun m!1346009 () Bool)

(assert (=> d!335341 m!1346009))

(assert (=> d!335341 m!1346001))

(assert (=> d!335341 m!1346007))

(declare-fun m!1346011 () Bool)

(assert (=> d!335341 m!1346011))

(assert (=> d!335341 m!1346001))

(declare-fun m!1346013 () Bool)

(assert (=> b!1172055 m!1346013))

(declare-fun m!1346015 () Bool)

(assert (=> b!1172056 m!1346015))

(assert (=> b!1172057 m!1346001))

(assert (=> b!1172057 m!1346001))

(assert (=> b!1172057 m!1346007))

(assert (=> b!1172057 m!1346007))

(assert (=> b!1172057 m!1346009))

(declare-fun m!1346017 () Bool)

(assert (=> b!1172057 m!1346017))

(assert (=> b!1171212 d!335341))

(declare-fun b!1172058 () Bool)

(declare-fun e!751680 () Int)

(declare-fun call!82310 () Int)

(assert (=> b!1172058 (= e!751680 (- call!82310 lt!401922))))

(declare-fun b!1172060 () Bool)

(declare-fun e!751678 () Bool)

(declare-fun lt!402424 () List!11614)

(declare-fun e!751682 () Int)

(assert (=> b!1172060 (= e!751678 (= (size!9142 lt!402424) e!751682))))

(declare-fun c!195489 () Bool)

(assert (=> b!1172060 (= c!195489 (<= lt!401922 0))))

(declare-fun b!1172061 () Bool)

(declare-fun e!751681 () List!11614)

(assert (=> b!1172061 (= e!751681 (drop!493 (t!110758 lt!401912) (- lt!401922 1)))))

(declare-fun b!1172062 () Bool)

(assert (=> b!1172062 (= e!751682 call!82310)))

(declare-fun b!1172063 () Bool)

(assert (=> b!1172063 (= e!751680 0)))

(declare-fun b!1172064 () Bool)

(assert (=> b!1172064 (= e!751682 e!751680)))

(declare-fun c!195490 () Bool)

(assert (=> b!1172064 (= c!195490 (>= lt!401922 call!82310))))

(declare-fun bm!82305 () Bool)

(assert (=> bm!82305 (= call!82310 (size!9142 lt!401912))))

(declare-fun b!1172065 () Bool)

(declare-fun e!751679 () List!11614)

(assert (=> b!1172065 (= e!751679 Nil!11590)))

(declare-fun b!1172066 () Bool)

(assert (=> b!1172066 (= e!751681 lt!401912)))

(declare-fun b!1172059 () Bool)

(assert (=> b!1172059 (= e!751679 e!751681)))

(declare-fun c!195492 () Bool)

(assert (=> b!1172059 (= c!195492 (<= lt!401922 0))))

(declare-fun d!335343 () Bool)

(assert (=> d!335343 e!751678))

(declare-fun res!529565 () Bool)

(assert (=> d!335343 (=> (not res!529565) (not e!751678))))

(assert (=> d!335343 (= res!529565 (= ((_ map implies) (content!1614 lt!402424) (content!1614 lt!401912)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335343 (= lt!402424 e!751679)))

(declare-fun c!195491 () Bool)

(assert (=> d!335343 (= c!195491 ((_ is Nil!11590) lt!401912))))

(assert (=> d!335343 (= (drop!493 lt!401912 lt!401922) lt!402424)))

(assert (= (and d!335343 c!195491) b!1172065))

(assert (= (and d!335343 (not c!195491)) b!1172059))

(assert (= (and b!1172059 c!195492) b!1172066))

(assert (= (and b!1172059 (not c!195492)) b!1172061))

(assert (= (and d!335343 res!529565) b!1172060))

(assert (= (and b!1172060 c!195489) b!1172062))

(assert (= (and b!1172060 (not c!195489)) b!1172064))

(assert (= (and b!1172064 c!195490) b!1172063))

(assert (= (and b!1172064 (not c!195490)) b!1172058))

(assert (= (or b!1172062 b!1172064 b!1172058) bm!82305))

(declare-fun m!1346019 () Bool)

(assert (=> b!1172060 m!1346019))

(declare-fun m!1346021 () Bool)

(assert (=> b!1172061 m!1346021))

(assert (=> bm!82305 m!1345959))

(declare-fun m!1346023 () Bool)

(assert (=> d!335343 m!1346023))

(assert (=> d!335343 m!1345963))

(assert (=> b!1171212 d!335343))

(declare-fun d!335345 () Bool)

(assert (=> d!335345 (= (tail!1694 (drop!493 lt!401912 lt!401922)) (drop!493 lt!401912 (+ lt!401922 1)))))

(declare-fun lt!402425 () Unit!17788)

(assert (=> d!335345 (= lt!402425 (choose!7569 lt!401912 lt!401922))))

(declare-fun e!751683 () Bool)

(assert (=> d!335345 e!751683))

(declare-fun res!529566 () Bool)

(assert (=> d!335345 (=> (not res!529566) (not e!751683))))

(assert (=> d!335345 (= res!529566 (>= lt!401922 0))))

(assert (=> d!335345 (= (lemmaDropTail!367 lt!401912 lt!401922) lt!402425)))

(declare-fun b!1172067 () Bool)

(assert (=> b!1172067 (= e!751683 (< lt!401922 (size!9142 lt!401912)))))

(assert (= (and d!335345 res!529566) b!1172067))

(assert (=> d!335345 m!1344369))

(assert (=> d!335345 m!1344369))

(assert (=> d!335345 m!1344397))

(assert (=> d!335345 m!1344381))

(declare-fun m!1346025 () Bool)

(assert (=> d!335345 m!1346025))

(assert (=> b!1172067 m!1345959))

(assert (=> b!1171212 d!335345))

(declare-fun d!335347 () Bool)

(declare-fun lt!402426 () BalanceConc!7630)

(assert (=> d!335347 (= (list!4278 lt!402426) (originalCharacters!2575 (apply!2517 lt!401775 (+ 0 1))))))

(assert (=> d!335347 (= lt!402426 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 lt!401775 (+ 0 1))))) (value!65595 (apply!2517 lt!401775 (+ 0 1)))))))

(assert (=> d!335347 (= (charsOf!1076 (apply!2517 lt!401775 (+ 0 1))) lt!402426)))

(declare-fun b_lambda!35011 () Bool)

(assert (=> (not b_lambda!35011) (not d!335347)))

(declare-fun t!110796 () Bool)

(declare-fun tb!65951 () Bool)

(assert (=> (and b!1171653 (= (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 lt!401775 (+ 0 1)))))) t!110796) tb!65951))

(declare-fun b!1172068 () Bool)

(declare-fun e!751684 () Bool)

(declare-fun tp!334740 () Bool)

(assert (=> b!1172068 (= e!751684 (and (inv!15297 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 lt!401775 (+ 0 1))))) (value!65595 (apply!2517 lt!401775 (+ 0 1)))))) tp!334740))))

(declare-fun result!78988 () Bool)

(assert (=> tb!65951 (= result!78988 (and (inv!15298 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 lt!401775 (+ 0 1))))) (value!65595 (apply!2517 lt!401775 (+ 0 1))))) e!751684))))

(assert (= tb!65951 b!1172068))

(declare-fun m!1346027 () Bool)

(assert (=> b!1172068 m!1346027))

(declare-fun m!1346029 () Bool)

(assert (=> tb!65951 m!1346029))

(assert (=> d!335347 t!110796))

(declare-fun b_and!80767 () Bool)

(assert (= b_and!80759 (and (=> t!110796 result!78988) b_and!80767)))

(declare-fun m!1346031 () Bool)

(assert (=> d!335347 m!1346031))

(declare-fun m!1346033 () Bool)

(assert (=> d!335347 m!1346033))

(assert (=> b!1171212 d!335347))

(declare-fun d!335349 () Bool)

(assert (=> d!335349 (= (tail!1694 (drop!493 lt!401911 0)) (t!110758 (drop!493 lt!401911 0)))))

(assert (=> b!1171212 d!335349))

(declare-fun d!335351 () Bool)

(assert (=> d!335351 (= (separableTokensPredicate!138 Lexer!1714 (apply!2517 lt!401775 0) (apply!2517 lt!401775 (+ 0 1)) (rules!9642 thiss!10527)) (not (prefixMatchZipperSequence!99 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) (++!2994 (charsOf!1076 (apply!2517 lt!401775 0)) (singletonSeq!685 (apply!2522 (charsOf!1076 (apply!2517 lt!401775 (+ 0 1))) 0))))))))

(declare-fun bs!285783 () Bool)

(assert (= bs!285783 d!335351))

(assert (=> bs!285783 m!1345231))

(declare-fun m!1346035 () Bool)

(assert (=> bs!285783 m!1346035))

(declare-fun m!1346037 () Bool)

(assert (=> bs!285783 m!1346037))

(assert (=> bs!285783 m!1344373))

(declare-fun m!1346039 () Bool)

(assert (=> bs!285783 m!1346039))

(assert (=> bs!285783 m!1344377))

(declare-fun m!1346041 () Bool)

(assert (=> bs!285783 m!1346041))

(assert (=> bs!285783 m!1345231))

(assert (=> bs!285783 m!1344367))

(assert (=> bs!285783 m!1344373))

(assert (=> bs!285783 m!1346041))

(declare-fun m!1346043 () Bool)

(assert (=> bs!285783 m!1346043))

(assert (=> bs!285783 m!1346035))

(assert (=> bs!285783 m!1346039))

(assert (=> bs!285783 m!1346043))

(assert (=> b!1171212 d!335351))

(declare-fun d!335353 () Bool)

(assert (=> d!335353 (= (tail!1694 (drop!493 lt!401911 0)) (drop!493 lt!401911 (+ 0 1)))))

(declare-fun lt!402427 () Unit!17788)

(assert (=> d!335353 (= lt!402427 (choose!7569 lt!401911 0))))

(declare-fun e!751685 () Bool)

(assert (=> d!335353 e!751685))

(declare-fun res!529567 () Bool)

(assert (=> d!335353 (=> (not res!529567) (not e!751685))))

(assert (=> d!335353 (= res!529567 (>= 0 0))))

(assert (=> d!335353 (= (lemmaDropTail!367 lt!401911 0) lt!402427)))

(declare-fun b!1172069 () Bool)

(assert (=> b!1172069 (= e!751685 (< 0 (size!9142 lt!401911)))))

(assert (= (and d!335353 res!529567) b!1172069))

(assert (=> d!335353 m!1344361))

(assert (=> d!335353 m!1344361))

(assert (=> d!335353 m!1344363))

(assert (=> d!335353 m!1344409))

(declare-fun m!1346045 () Bool)

(assert (=> d!335353 m!1346045))

(assert (=> b!1172069 m!1345929))

(assert (=> b!1171212 d!335353))

(declare-fun d!335355 () Bool)

(declare-fun lt!402428 () Bool)

(declare-fun e!751687 () Bool)

(assert (=> d!335355 (= lt!402428 e!751687)))

(declare-fun res!529568 () Bool)

(assert (=> d!335355 (=> (not res!529568) (not e!751687))))

(assert (=> d!335355 (= res!529568 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 lt!401775 0)))))) (list!4274 (singletonSeq!684 (apply!2517 lt!401775 0)))))))

(declare-fun e!751686 () Bool)

(assert (=> d!335355 (= lt!402428 e!751686)))

(declare-fun res!529569 () Bool)

(assert (=> d!335355 (=> (not res!529569) (not e!751686))))

(declare-fun lt!402429 () tuple2!12048)

(assert (=> d!335355 (= res!529569 (= (size!9137 (_1!6871 lt!402429)) 1))))

(assert (=> d!335355 (= lt!402429 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 lt!401775 0)))))))

(assert (=> d!335355 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335355 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 lt!401775 0)) lt!402428)))

(declare-fun b!1172070 () Bool)

(declare-fun res!529570 () Bool)

(assert (=> b!1172070 (=> (not res!529570) (not e!751686))))

(assert (=> b!1172070 (= res!529570 (= (apply!2517 (_1!6871 lt!402429) 0) (apply!2517 lt!401775 0)))))

(declare-fun b!1172071 () Bool)

(assert (=> b!1172071 (= e!751686 (isEmpty!7034 (_2!6871 lt!402429)))))

(declare-fun b!1172072 () Bool)

(assert (=> b!1172072 (= e!751687 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 lt!401775 0)))))))))

(assert (= (and d!335355 res!529569) b!1172070))

(assert (= (and b!1172070 res!529570) b!1172071))

(assert (= (and d!335355 res!529568) b!1172072))

(declare-fun m!1346047 () Bool)

(assert (=> d!335355 m!1346047))

(declare-fun m!1346049 () Bool)

(assert (=> d!335355 m!1346049))

(assert (=> d!335355 m!1344215))

(declare-fun m!1346051 () Bool)

(assert (=> d!335355 m!1346051))

(declare-fun m!1346053 () Bool)

(assert (=> d!335355 m!1346053))

(declare-fun m!1346055 () Bool)

(assert (=> d!335355 m!1346055))

(assert (=> d!335355 m!1346047))

(assert (=> d!335355 m!1346053))

(declare-fun m!1346057 () Bool)

(assert (=> d!335355 m!1346057))

(assert (=> d!335355 m!1344377))

(assert (=> d!335355 m!1346047))

(declare-fun m!1346059 () Bool)

(assert (=> b!1172070 m!1346059))

(declare-fun m!1346061 () Bool)

(assert (=> b!1172071 m!1346061))

(assert (=> b!1172072 m!1344377))

(assert (=> b!1172072 m!1346047))

(assert (=> b!1172072 m!1346047))

(assert (=> b!1172072 m!1346053))

(assert (=> b!1172072 m!1346053))

(assert (=> b!1172072 m!1346055))

(declare-fun m!1346063 () Bool)

(assert (=> b!1172072 m!1346063))

(assert (=> b!1171212 d!335355))

(declare-fun d!335357 () Bool)

(assert (=> d!335357 (= (tail!1694 (drop!493 lt!401912 lt!401922)) (t!110758 (drop!493 lt!401912 lt!401922)))))

(assert (=> b!1171212 d!335357))

(declare-fun d!335359 () Bool)

(assert (=> d!335359 (= (head!2110 (drop!493 lt!401915 lt!401905)) (apply!2518 lt!401915 lt!401905))))

(declare-fun lt!402430 () Unit!17788)

(assert (=> d!335359 (= lt!402430 (choose!7568 lt!401915 lt!401905))))

(declare-fun e!751688 () Bool)

(assert (=> d!335359 e!751688))

(declare-fun res!529571 () Bool)

(assert (=> d!335359 (=> (not res!529571) (not e!751688))))

(assert (=> d!335359 (= res!529571 (>= lt!401905 0))))

(assert (=> d!335359 (= (lemmaDropApply!379 lt!401915 lt!401905) lt!402430)))

(declare-fun b!1172073 () Bool)

(assert (=> b!1172073 (= e!751688 (< lt!401905 (size!9142 lt!401915)))))

(assert (= (and d!335359 res!529571) b!1172073))

(assert (=> d!335359 m!1344357))

(assert (=> d!335359 m!1344357))

(assert (=> d!335359 m!1344395))

(assert (=> d!335359 m!1344389))

(declare-fun m!1346065 () Bool)

(assert (=> d!335359 m!1346065))

(assert (=> b!1172073 m!1345895))

(assert (=> b!1171212 d!335359))

(declare-fun d!335361 () Bool)

(declare-fun lt!402431 () Token!3704)

(assert (=> d!335361 (= lt!402431 (apply!2518 (list!4274 lt!401775) (+ 0 1)))))

(assert (=> d!335361 (= lt!402431 (apply!2521 (c!195327 lt!401775) (+ 0 1)))))

(declare-fun e!751689 () Bool)

(assert (=> d!335361 e!751689))

(declare-fun res!529572 () Bool)

(assert (=> d!335361 (=> (not res!529572) (not e!751689))))

(assert (=> d!335361 (= res!529572 (<= 0 (+ 0 1)))))

(assert (=> d!335361 (= (apply!2517 lt!401775 (+ 0 1)) lt!402431)))

(declare-fun b!1172074 () Bool)

(assert (=> b!1172074 (= e!751689 (< (+ 0 1) (size!9137 lt!401775)))))

(assert (= (and d!335361 res!529572) b!1172074))

(assert (=> d!335361 m!1344231))

(assert (=> d!335361 m!1344231))

(declare-fun m!1346067 () Bool)

(assert (=> d!335361 m!1346067))

(declare-fun m!1346069 () Bool)

(assert (=> d!335361 m!1346069))

(assert (=> b!1172074 m!1344417))

(assert (=> b!1171212 d!335361))

(declare-fun b!1172075 () Bool)

(declare-fun e!751692 () Int)

(declare-fun call!82311 () Int)

(assert (=> b!1172075 (= e!751692 (- call!82311 (+ 0 1)))))

(declare-fun b!1172077 () Bool)

(declare-fun e!751690 () Bool)

(declare-fun lt!402432 () List!11614)

(declare-fun e!751694 () Int)

(assert (=> b!1172077 (= e!751690 (= (size!9142 lt!402432) e!751694))))

(declare-fun c!195493 () Bool)

(assert (=> b!1172077 (= c!195493 (<= (+ 0 1) 0))))

(declare-fun b!1172078 () Bool)

(declare-fun e!751693 () List!11614)

(assert (=> b!1172078 (= e!751693 (drop!493 (t!110758 lt!401911) (- (+ 0 1) 1)))))

(declare-fun b!1172079 () Bool)

(assert (=> b!1172079 (= e!751694 call!82311)))

(declare-fun b!1172080 () Bool)

(assert (=> b!1172080 (= e!751692 0)))

(declare-fun b!1172081 () Bool)

(assert (=> b!1172081 (= e!751694 e!751692)))

(declare-fun c!195494 () Bool)

(assert (=> b!1172081 (= c!195494 (>= (+ 0 1) call!82311))))

(declare-fun bm!82306 () Bool)

(assert (=> bm!82306 (= call!82311 (size!9142 lt!401911))))

(declare-fun b!1172082 () Bool)

(declare-fun e!751691 () List!11614)

(assert (=> b!1172082 (= e!751691 Nil!11590)))

(declare-fun b!1172083 () Bool)

(assert (=> b!1172083 (= e!751693 lt!401911)))

(declare-fun b!1172076 () Bool)

(assert (=> b!1172076 (= e!751691 e!751693)))

(declare-fun c!195496 () Bool)

(assert (=> b!1172076 (= c!195496 (<= (+ 0 1) 0))))

(declare-fun d!335363 () Bool)

(assert (=> d!335363 e!751690))

(declare-fun res!529573 () Bool)

(assert (=> d!335363 (=> (not res!529573) (not e!751690))))

(assert (=> d!335363 (= res!529573 (= ((_ map implies) (content!1614 lt!402432) (content!1614 lt!401911)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335363 (= lt!402432 e!751691)))

(declare-fun c!195495 () Bool)

(assert (=> d!335363 (= c!195495 ((_ is Nil!11590) lt!401911))))

(assert (=> d!335363 (= (drop!493 lt!401911 (+ 0 1)) lt!402432)))

(assert (= (and d!335363 c!195495) b!1172082))

(assert (= (and d!335363 (not c!195495)) b!1172076))

(assert (= (and b!1172076 c!195496) b!1172083))

(assert (= (and b!1172076 (not c!195496)) b!1172078))

(assert (= (and d!335363 res!529573) b!1172077))

(assert (= (and b!1172077 c!195493) b!1172079))

(assert (= (and b!1172077 (not c!195493)) b!1172081))

(assert (= (and b!1172081 c!195494) b!1172080))

(assert (= (and b!1172081 (not c!195494)) b!1172075))

(assert (= (or b!1172079 b!1172081 b!1172075) bm!82306))

(declare-fun m!1346071 () Bool)

(assert (=> b!1172077 m!1346071))

(declare-fun m!1346073 () Bool)

(assert (=> b!1172078 m!1346073))

(assert (=> bm!82306 m!1345929))

(declare-fun m!1346075 () Bool)

(assert (=> d!335363 m!1346075))

(assert (=> d!335363 m!1345933))

(assert (=> b!1171212 d!335363))

(declare-fun b!1172084 () Bool)

(declare-fun e!751697 () Int)

(declare-fun call!82312 () Int)

(assert (=> b!1172084 (= e!751697 (- call!82312 (- 0 1)))))

(declare-fun b!1172086 () Bool)

(declare-fun e!751695 () Bool)

(declare-fun lt!402433 () List!11614)

(declare-fun e!751699 () Int)

(assert (=> b!1172086 (= e!751695 (= (size!9142 lt!402433) e!751699))))

(declare-fun c!195497 () Bool)

(assert (=> b!1172086 (= c!195497 (<= (- 0 1) 0))))

(declare-fun b!1172087 () Bool)

(declare-fun e!751698 () List!11614)

(assert (=> b!1172087 (= e!751698 (drop!493 (t!110758 (t!110758 lt!401774)) (- (- 0 1) 1)))))

(declare-fun b!1172088 () Bool)

(assert (=> b!1172088 (= e!751699 call!82312)))

(declare-fun b!1172089 () Bool)

(assert (=> b!1172089 (= e!751697 0)))

(declare-fun b!1172090 () Bool)

(assert (=> b!1172090 (= e!751699 e!751697)))

(declare-fun c!195498 () Bool)

(assert (=> b!1172090 (= c!195498 (>= (- 0 1) call!82312))))

(declare-fun bm!82307 () Bool)

(assert (=> bm!82307 (= call!82312 (size!9142 (t!110758 lt!401774)))))

(declare-fun b!1172091 () Bool)

(declare-fun e!751696 () List!11614)

(assert (=> b!1172091 (= e!751696 Nil!11590)))

(declare-fun b!1172092 () Bool)

(assert (=> b!1172092 (= e!751698 (t!110758 lt!401774))))

(declare-fun b!1172085 () Bool)

(assert (=> b!1172085 (= e!751696 e!751698)))

(declare-fun c!195500 () Bool)

(assert (=> b!1172085 (= c!195500 (<= (- 0 1) 0))))

(declare-fun d!335365 () Bool)

(assert (=> d!335365 e!751695))

(declare-fun res!529574 () Bool)

(assert (=> d!335365 (=> (not res!529574) (not e!751695))))

(assert (=> d!335365 (= res!529574 (= ((_ map implies) (content!1614 lt!402433) (content!1614 (t!110758 lt!401774))) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335365 (= lt!402433 e!751696)))

(declare-fun c!195499 () Bool)

(assert (=> d!335365 (= c!195499 ((_ is Nil!11590) (t!110758 lt!401774)))))

(assert (=> d!335365 (= (drop!493 (t!110758 lt!401774) (- 0 1)) lt!402433)))

(assert (= (and d!335365 c!195499) b!1172091))

(assert (= (and d!335365 (not c!195499)) b!1172085))

(assert (= (and b!1172085 c!195500) b!1172092))

(assert (= (and b!1172085 (not c!195500)) b!1172087))

(assert (= (and d!335365 res!529574) b!1172086))

(assert (= (and b!1172086 c!195497) b!1172088))

(assert (= (and b!1172086 (not c!195497)) b!1172090))

(assert (= (and b!1172090 c!195498) b!1172089))

(assert (= (and b!1172090 (not c!195498)) b!1172084))

(assert (= (or b!1172088 b!1172090 b!1172084) bm!82307))

(declare-fun m!1346077 () Bool)

(assert (=> b!1172086 m!1346077))

(declare-fun m!1346079 () Bool)

(assert (=> b!1172087 m!1346079))

(declare-fun m!1346081 () Bool)

(assert (=> bm!82307 m!1346081))

(declare-fun m!1346083 () Bool)

(assert (=> d!335365 m!1346083))

(declare-fun m!1346085 () Bool)

(assert (=> d!335365 m!1346085))

(assert (=> b!1171607 d!335365))

(declare-fun d!335367 () Bool)

(declare-fun res!529576 () Bool)

(declare-fun e!751703 () Bool)

(assert (=> d!335367 (=> res!529576 e!751703)))

(assert (=> d!335367 (= res!529576 ((_ is Nil!11590) lt!401925))))

(assert (=> d!335367 (= (subseq!271 lt!401925 lt!401918) e!751703)))

(declare-fun b!1172095 () Bool)

(declare-fun e!751702 () Bool)

(assert (=> b!1172095 (= e!751702 (subseq!271 (t!110758 lt!401925) (t!110758 lt!401918)))))

(declare-fun b!1172093 () Bool)

(declare-fun e!751700 () Bool)

(assert (=> b!1172093 (= e!751703 e!751700)))

(declare-fun res!529575 () Bool)

(assert (=> b!1172093 (=> (not res!529575) (not e!751700))))

(assert (=> b!1172093 (= res!529575 ((_ is Cons!11590) lt!401918))))

(declare-fun b!1172094 () Bool)

(declare-fun e!751701 () Bool)

(assert (=> b!1172094 (= e!751700 e!751701)))

(declare-fun res!529577 () Bool)

(assert (=> b!1172094 (=> res!529577 e!751701)))

(assert (=> b!1172094 (= res!529577 e!751702)))

(declare-fun res!529578 () Bool)

(assert (=> b!1172094 (=> (not res!529578) (not e!751702))))

(assert (=> b!1172094 (= res!529578 (= (h!16991 lt!401925) (h!16991 lt!401918)))))

(declare-fun b!1172096 () Bool)

(assert (=> b!1172096 (= e!751701 (subseq!271 lt!401925 (t!110758 lt!401918)))))

(assert (= (and d!335367 (not res!529576)) b!1172093))

(assert (= (and b!1172093 res!529575) b!1172094))

(assert (= (and b!1172094 res!529578) b!1172095))

(assert (= (and b!1172094 (not res!529577)) b!1172096))

(declare-fun m!1346087 () Bool)

(assert (=> b!1172095 m!1346087))

(declare-fun m!1346089 () Bool)

(assert (=> b!1172096 m!1346089))

(assert (=> b!1171216 d!335367))

(declare-fun d!335369 () Bool)

(declare-fun res!529579 () Bool)

(declare-fun e!751704 () Bool)

(assert (=> d!335369 (=> res!529579 e!751704)))

(assert (=> d!335369 (= res!529579 ((_ is Nil!11590) (t!110758 lt!401773)))))

(assert (=> d!335369 (= (forall!3066 (t!110758 lt!401773) lambda!48203) e!751704)))

(declare-fun b!1172097 () Bool)

(declare-fun e!751705 () Bool)

(assert (=> b!1172097 (= e!751704 e!751705)))

(declare-fun res!529580 () Bool)

(assert (=> b!1172097 (=> (not res!529580) (not e!751705))))

(assert (=> b!1172097 (= res!529580 (dynLambda!5125 lambda!48203 (h!16991 (t!110758 lt!401773))))))

(declare-fun b!1172098 () Bool)

(assert (=> b!1172098 (= e!751705 (forall!3066 (t!110758 (t!110758 lt!401773)) lambda!48203))))

(assert (= (and d!335369 (not res!529579)) b!1172097))

(assert (= (and b!1172097 res!529580) b!1172098))

(declare-fun b_lambda!35013 () Bool)

(assert (=> (not b_lambda!35013) (not b!1172097)))

(declare-fun m!1346091 () Bool)

(assert (=> b!1172097 m!1346091))

(declare-fun m!1346093 () Bool)

(assert (=> b!1172098 m!1346093))

(assert (=> b!1171253 d!335369))

(declare-fun d!335371 () Bool)

(declare-fun list!4281 (Conc!3804) List!11613)

(assert (=> d!335371 (= (list!4278 lt!402180) (list!4281 (c!195326 lt!402180)))))

(declare-fun bs!285784 () Bool)

(assert (= bs!285784 d!335371))

(declare-fun m!1346095 () Bool)

(assert (=> bs!285784 m!1346095))

(assert (=> d!334983 d!335371))

(declare-fun d!335373 () Bool)

(assert (=> d!335373 (= (head!2110 (drop!493 lt!401774 0)) (h!16991 (drop!493 lt!401774 0)))))

(assert (=> d!335069 d!335373))

(assert (=> d!335069 d!335085))

(assert (=> d!335069 d!335071))

(declare-fun d!335375 () Bool)

(assert (=> d!335375 (= (head!2110 (drop!493 lt!401774 0)) (apply!2518 lt!401774 0))))

(assert (=> d!335375 true))

(declare-fun _$27!664 () Unit!17788)

(assert (=> d!335375 (= (choose!7568 lt!401774 0) _$27!664)))

(declare-fun bs!285785 () Bool)

(assert (= bs!285785 d!335375))

(assert (=> bs!285785 m!1344187))

(assert (=> bs!285785 m!1344187))

(assert (=> bs!285785 m!1345175))

(assert (=> bs!285785 m!1344213))

(assert (=> d!335069 d!335375))

(assert (=> d!335047 d!334887))

(declare-fun d!335377 () Bool)

(assert (=> d!335377 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773)))))) (list!4277 (c!195327 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))))))))))

(declare-fun bs!285786 () Bool)

(assert (= bs!285786 d!335377))

(declare-fun m!1346097 () Bool)

(assert (=> bs!285786 m!1346097))

(assert (=> d!335047 d!335377))

(declare-fun d!335379 () Bool)

(declare-fun lt!402434 () Int)

(assert (=> d!335379 (= lt!402434 (size!9142 (list!4274 (_1!6871 lt!402254))))))

(assert (=> d!335379 (= lt!402434 (size!9143 (c!195327 (_1!6871 lt!402254))))))

(assert (=> d!335379 (= (size!9137 (_1!6871 lt!402254)) lt!402434)))

(declare-fun bs!285787 () Bool)

(assert (= bs!285787 d!335379))

(declare-fun m!1346099 () Bool)

(assert (=> bs!285787 m!1346099))

(assert (=> bs!285787 m!1346099))

(declare-fun m!1346101 () Bool)

(assert (=> bs!285787 m!1346101))

(declare-fun m!1346103 () Bool)

(assert (=> bs!285787 m!1346103))

(assert (=> d!335047 d!335379))

(declare-fun d!335381 () Bool)

(declare-fun e!751706 () Bool)

(assert (=> d!335381 e!751706))

(declare-fun res!529581 () Bool)

(assert (=> d!335381 (=> (not res!529581) (not e!751706))))

(declare-fun lt!402435 () BalanceConc!7632)

(assert (=> d!335381 (= res!529581 (= (list!4274 lt!402435) (Cons!11590 (h!16991 lt!401773) Nil!11590)))))

(assert (=> d!335381 (= lt!402435 (singleton!304 (h!16991 lt!401773)))))

(assert (=> d!335381 (= (singletonSeq!684 (h!16991 lt!401773)) lt!402435)))

(declare-fun b!1172099 () Bool)

(assert (=> b!1172099 (= e!751706 (isBalanced!1073 (c!195327 lt!402435)))))

(assert (= (and d!335381 res!529581) b!1172099))

(declare-fun m!1346105 () Bool)

(assert (=> d!335381 m!1346105))

(declare-fun m!1346107 () Bool)

(assert (=> d!335381 m!1346107))

(declare-fun m!1346109 () Bool)

(assert (=> b!1172099 m!1346109))

(assert (=> d!335047 d!335381))

(declare-fun d!335383 () Bool)

(declare-fun lt!402436 () BalanceConc!7630)

(assert (=> d!335383 (= (list!4278 lt!402436) (printList!516 Lexer!1714 (list!4274 (singletonSeq!684 (h!16991 lt!401773)))))))

(assert (=> d!335383 (= lt!402436 (printTailRec!498 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773)) 0 (BalanceConc!7631 Empty!3804)))))

(assert (=> d!335383 (= (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))) lt!402436)))

(declare-fun bs!285788 () Bool)

(assert (= bs!285788 d!335383))

(declare-fun m!1346111 () Bool)

(assert (=> bs!285788 m!1346111))

(assert (=> bs!285788 m!1345077))

(assert (=> bs!285788 m!1345079))

(assert (=> bs!285788 m!1345079))

(declare-fun m!1346113 () Bool)

(assert (=> bs!285788 m!1346113))

(assert (=> bs!285788 m!1345077))

(declare-fun m!1346115 () Bool)

(assert (=> bs!285788 m!1346115))

(assert (=> d!335047 d!335383))

(declare-fun b!1172100 () Bool)

(declare-fun e!751707 () Bool)

(declare-fun lt!402437 () tuple2!12048)

(assert (=> b!1172100 (= e!751707 (= (_2!6871 lt!402437) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773)))))))

(declare-fun b!1172101 () Bool)

(declare-fun res!529582 () Bool)

(declare-fun e!751709 () Bool)

(assert (=> b!1172101 (=> (not res!529582) (not e!751709))))

(assert (=> b!1172101 (= res!529582 (= (list!4274 (_1!6871 lt!402437)) (_1!6873 (lexList!416 Lexer!1714 (rules!9642 thiss!10527) (list!4278 (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))))))))))

(declare-fun b!1172102 () Bool)

(declare-fun e!751708 () Bool)

(assert (=> b!1172102 (= e!751707 e!751708)))

(declare-fun res!529584 () Bool)

(assert (=> b!1172102 (= res!529584 (< (size!9136 (_2!6871 lt!402437)) (size!9136 (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))))))))

(assert (=> b!1172102 (=> (not res!529584) (not e!751708))))

(declare-fun b!1172103 () Bool)

(assert (=> b!1172103 (= e!751709 (= (list!4278 (_2!6871 lt!402437)) (_2!6873 (lexList!416 Lexer!1714 (rules!9642 thiss!10527) (list!4278 (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))))))))))

(declare-fun d!335385 () Bool)

(assert (=> d!335385 e!751709))

(declare-fun res!529583 () Bool)

(assert (=> d!335385 (=> (not res!529583) (not e!751709))))

(assert (=> d!335385 (= res!529583 e!751707)))

(declare-fun c!195501 () Bool)

(assert (=> d!335385 (= c!195501 (> (size!9137 (_1!6871 lt!402437)) 0))))

(assert (=> d!335385 (= lt!402437 (lexTailRecV2!323 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))) (BalanceConc!7631 Empty!3804) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))) (BalanceConc!7633 Empty!3805)))))

(assert (=> d!335385 (= (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773)))) lt!402437)))

(declare-fun b!1172104 () Bool)

(assert (=> b!1172104 (= e!751708 (not (isEmpty!7039 (_1!6871 lt!402437))))))

(assert (= (and d!335385 c!195501) b!1172102))

(assert (= (and d!335385 (not c!195501)) b!1172100))

(assert (= (and b!1172102 res!529584) b!1172104))

(assert (= (and d!335385 res!529583) b!1172101))

(assert (= (and b!1172101 res!529582) b!1172103))

(declare-fun m!1346117 () Bool)

(assert (=> b!1172104 m!1346117))

(declare-fun m!1346119 () Bool)

(assert (=> b!1172102 m!1346119))

(assert (=> b!1172102 m!1345083))

(declare-fun m!1346121 () Bool)

(assert (=> b!1172102 m!1346121))

(declare-fun m!1346123 () Bool)

(assert (=> d!335385 m!1346123))

(assert (=> d!335385 m!1345083))

(assert (=> d!335385 m!1345083))

(declare-fun m!1346125 () Bool)

(assert (=> d!335385 m!1346125))

(declare-fun m!1346127 () Bool)

(assert (=> b!1172103 m!1346127))

(assert (=> b!1172103 m!1345083))

(declare-fun m!1346129 () Bool)

(assert (=> b!1172103 m!1346129))

(assert (=> b!1172103 m!1346129))

(declare-fun m!1346131 () Bool)

(assert (=> b!1172103 m!1346131))

(declare-fun m!1346133 () Bool)

(assert (=> b!1172101 m!1346133))

(assert (=> b!1172101 m!1345083))

(assert (=> b!1172101 m!1346129))

(assert (=> b!1172101 m!1346129))

(assert (=> b!1172101 m!1346131))

(assert (=> d!335047 d!335385))

(declare-fun d!335387 () Bool)

(assert (=> d!335387 (= (list!4274 (singletonSeq!684 (h!16991 lt!401773))) (list!4277 (c!195327 (singletonSeq!684 (h!16991 lt!401773)))))))

(declare-fun bs!285789 () Bool)

(assert (= bs!285789 d!335387))

(declare-fun m!1346135 () Bool)

(assert (=> bs!285789 m!1346135))

(assert (=> d!335047 d!335387))

(declare-fun d!335389 () Bool)

(declare-fun c!195504 () Bool)

(assert (=> d!335389 (= c!195504 ((_ is Node!3804) (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769)))))))

(declare-fun e!751714 () Bool)

(assert (=> d!335389 (= (inv!15297 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769)))) e!751714)))

(declare-fun b!1172111 () Bool)

(declare-fun inv!15301 (Conc!3804) Bool)

(assert (=> b!1172111 (= e!751714 (inv!15301 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769)))))))

(declare-fun b!1172112 () Bool)

(declare-fun e!751715 () Bool)

(assert (=> b!1172112 (= e!751714 e!751715)))

(declare-fun res!529587 () Bool)

(assert (=> b!1172112 (= res!529587 (not ((_ is Leaf!5825) (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769))))))))

(assert (=> b!1172112 (=> res!529587 e!751715)))

(declare-fun b!1172113 () Bool)

(declare-fun inv!15302 (Conc!3804) Bool)

(assert (=> b!1172113 (= e!751715 (inv!15302 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769)))))))

(assert (= (and d!335389 c!195504) b!1172111))

(assert (= (and d!335389 (not c!195504)) b!1172112))

(assert (= (and b!1172112 (not res!529587)) b!1172113))

(declare-fun m!1346137 () Bool)

(assert (=> b!1172111 m!1346137))

(declare-fun m!1346139 () Bool)

(assert (=> b!1172113 m!1346139))

(assert (=> b!1171658 d!335389))

(declare-fun d!335391 () Bool)

(assert (=> d!335391 (= (head!2110 lt!401774) (h!16991 lt!401774))))

(assert (=> b!1171571 d!335391))

(declare-fun d!335393 () Bool)

(declare-fun lt!402460 () Int)

(assert (=> d!335393 (>= lt!402460 0)))

(declare-fun e!751718 () Int)

(assert (=> d!335393 (= lt!402460 e!751718)))

(declare-fun c!195507 () Bool)

(assert (=> d!335393 (= c!195507 ((_ is Nil!11590) lt!401774))))

(assert (=> d!335393 (= (size!9142 lt!401774) lt!402460)))

(declare-fun b!1172118 () Bool)

(assert (=> b!1172118 (= e!751718 0)))

(declare-fun b!1172119 () Bool)

(assert (=> b!1172119 (= e!751718 (+ 1 (size!9142 (t!110758 lt!401774))))))

(assert (= (and d!335393 c!195507) b!1172118))

(assert (= (and d!335393 (not c!195507)) b!1172119))

(assert (=> b!1172119 m!1346081))

(assert (=> bm!82288 d!335393))

(declare-fun d!335395 () Bool)

(declare-fun c!195510 () Bool)

(assert (=> d!335395 (= c!195510 ((_ is Nil!11590) lt!402284))))

(declare-fun e!751721 () (InoxSet Token!3704))

(assert (=> d!335395 (= (content!1614 lt!402284) e!751721)))

(declare-fun b!1172124 () Bool)

(assert (=> b!1172124 (= e!751721 ((as const (Array Token!3704 Bool)) false))))

(declare-fun b!1172125 () Bool)

(assert (=> b!1172125 (= e!751721 ((_ map or) (store ((as const (Array Token!3704 Bool)) false) (h!16991 lt!402284) true) (content!1614 (t!110758 lt!402284))))))

(assert (= (and d!335395 c!195510) b!1172124))

(assert (= (and d!335395 (not c!195510)) b!1172125))

(declare-fun m!1346153 () Bool)

(assert (=> b!1172125 m!1346153))

(declare-fun m!1346157 () Bool)

(assert (=> b!1172125 m!1346157))

(assert (=> d!335089 d!335395))

(declare-fun d!335397 () Bool)

(declare-fun c!195511 () Bool)

(assert (=> d!335397 (= c!195511 ((_ is Nil!11590) lt!401774))))

(declare-fun e!751722 () (InoxSet Token!3704))

(assert (=> d!335397 (= (content!1614 lt!401774) e!751722)))

(declare-fun b!1172126 () Bool)

(assert (=> b!1172126 (= e!751722 ((as const (Array Token!3704 Bool)) false))))

(declare-fun b!1172127 () Bool)

(assert (=> b!1172127 (= e!751722 ((_ map or) (store ((as const (Array Token!3704 Bool)) false) (h!16991 lt!401774) true) (content!1614 (t!110758 lt!401774))))))

(assert (= (and d!335397 c!195511) b!1172126))

(assert (= (and d!335397 (not c!195511)) b!1172127))

(declare-fun m!1346165 () Bool)

(assert (=> b!1172127 m!1346165))

(assert (=> b!1172127 m!1346085))

(assert (=> d!335089 d!335397))

(assert (=> b!1171335 d!334933))

(declare-fun d!335399 () Bool)

(declare-fun res!529597 () Bool)

(declare-fun e!751728 () Bool)

(assert (=> d!335399 (=> (not res!529597) (not e!751728))))

(assert (=> d!335399 (= res!529597 (= (csize!7840 (c!195327 (tokens!1654 thiss!10527))) (+ (size!9143 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (size!9143 (right!10467 (c!195327 (tokens!1654 thiss!10527)))))))))

(assert (=> d!335399 (= (inv!15289 (c!195327 (tokens!1654 thiss!10527))) e!751728)))

(declare-fun b!1172137 () Bool)

(declare-fun res!529598 () Bool)

(assert (=> b!1172137 (=> (not res!529598) (not e!751728))))

(assert (=> b!1172137 (= res!529598 (and (not (= (left!10137 (c!195327 (tokens!1654 thiss!10527))) Empty!3805)) (not (= (right!10467 (c!195327 (tokens!1654 thiss!10527))) Empty!3805))))))

(declare-fun b!1172138 () Bool)

(declare-fun res!529599 () Bool)

(assert (=> b!1172138 (=> (not res!529599) (not e!751728))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!517 (Conc!3805) Int)

(assert (=> b!1172138 (= res!529599 (= (cheight!4016 (c!195327 (tokens!1654 thiss!10527))) (+ (max!0 (height!517 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (height!517 (right!10467 (c!195327 (tokens!1654 thiss!10527))))) 1)))))

(declare-fun b!1172139 () Bool)

(assert (=> b!1172139 (= e!751728 (<= 0 (cheight!4016 (c!195327 (tokens!1654 thiss!10527)))))))

(assert (= (and d!335399 res!529597) b!1172137))

(assert (= (and b!1172137 res!529598) b!1172138))

(assert (= (and b!1172138 res!529599) b!1172139))

(declare-fun m!1346179 () Bool)

(assert (=> d!335399 m!1346179))

(declare-fun m!1346181 () Bool)

(assert (=> d!335399 m!1346181))

(declare-fun m!1346183 () Bool)

(assert (=> b!1172138 m!1346183))

(declare-fun m!1346185 () Bool)

(assert (=> b!1172138 m!1346185))

(assert (=> b!1172138 m!1346183))

(assert (=> b!1172138 m!1346185))

(declare-fun m!1346187 () Bool)

(assert (=> b!1172138 m!1346187))

(assert (=> b!1171305 d!335399))

(declare-fun d!335405 () Bool)

(declare-fun res!529600 () Bool)

(declare-fun e!751729 () Bool)

(assert (=> d!335405 (=> res!529600 e!751729)))

(assert (=> d!335405 (= res!529600 ((_ is Nil!11590) (list!4274 (tokens!1654 thiss!10527))))))

(assert (=> d!335405 (= (forall!3066 (list!4274 (tokens!1654 thiss!10527)) lambda!48203) e!751729)))

(declare-fun b!1172140 () Bool)

(declare-fun e!751730 () Bool)

(assert (=> b!1172140 (= e!751729 e!751730)))

(declare-fun res!529601 () Bool)

(assert (=> b!1172140 (=> (not res!529601) (not e!751730))))

(assert (=> b!1172140 (= res!529601 (dynLambda!5125 lambda!48203 (h!16991 (list!4274 (tokens!1654 thiss!10527)))))))

(declare-fun b!1172141 () Bool)

(assert (=> b!1172141 (= e!751730 (forall!3066 (t!110758 (list!4274 (tokens!1654 thiss!10527))) lambda!48203))))

(assert (= (and d!335405 (not res!529600)) b!1172140))

(assert (= (and b!1172140 res!529601) b!1172141))

(declare-fun b_lambda!35015 () Bool)

(assert (=> (not b_lambda!35015) (not b!1172140)))

(declare-fun m!1346189 () Bool)

(assert (=> b!1172140 m!1346189))

(declare-fun m!1346191 () Bool)

(assert (=> b!1172141 m!1346191))

(assert (=> d!334971 d!335405))

(assert (=> d!334971 d!334969))

(declare-fun b!1172142 () Bool)

(declare-fun e!751732 () Bool)

(declare-fun e!751731 () Bool)

(assert (=> b!1172142 (= e!751732 e!751731)))

(declare-fun c!195512 () Bool)

(assert (=> b!1172142 (= c!195512 ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun b!1172143 () Bool)

(assert (=> b!1172143 (= e!751731 (forall!3070 (xs!6510 (c!195327 (tokens!1654 thiss!10527))) lambda!48203))))

(declare-fun b!1172144 () Bool)

(declare-fun e!751733 () Bool)

(assert (=> b!1172144 (= e!751731 e!751733)))

(declare-fun lt!402475 () Unit!17788)

(assert (=> b!1172144 (= lt!402475 (lemmaForallConcat!119 (list!4277 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (list!4277 (right!10467 (c!195327 (tokens!1654 thiss!10527)))) lambda!48203))))

(declare-fun res!529602 () Bool)

(assert (=> b!1172144 (= res!529602 (forall!3068 (left!10137 (c!195327 (tokens!1654 thiss!10527))) lambda!48203))))

(assert (=> b!1172144 (=> (not res!529602) (not e!751733))))

(declare-fun b!1172145 () Bool)

(assert (=> b!1172145 (= e!751733 (forall!3068 (right!10467 (c!195327 (tokens!1654 thiss!10527))) lambda!48203))))

(declare-fun d!335407 () Bool)

(declare-fun lt!402474 () Bool)

(assert (=> d!335407 (= lt!402474 (forall!3066 (list!4277 (c!195327 (tokens!1654 thiss!10527))) lambda!48203))))

(assert (=> d!335407 (= lt!402474 e!751732)))

(declare-fun res!529603 () Bool)

(assert (=> d!335407 (=> res!529603 e!751732)))

(assert (=> d!335407 (= res!529603 ((_ is Empty!3805) (c!195327 (tokens!1654 thiss!10527))))))

(assert (=> d!335407 (= (forall!3068 (c!195327 (tokens!1654 thiss!10527)) lambda!48203) lt!402474)))

(assert (= (and d!335407 (not res!529603)) b!1172142))

(assert (= (and b!1172142 c!195512) b!1172143))

(assert (= (and b!1172142 (not c!195512)) b!1172144))

(assert (= (and b!1172144 res!529602) b!1172145))

(declare-fun m!1346193 () Bool)

(assert (=> b!1172143 m!1346193))

(declare-fun m!1346195 () Bool)

(assert (=> b!1172144 m!1346195))

(declare-fun m!1346197 () Bool)

(assert (=> b!1172144 m!1346197))

(assert (=> b!1172144 m!1346195))

(assert (=> b!1172144 m!1346197))

(declare-fun m!1346199 () Bool)

(assert (=> b!1172144 m!1346199))

(declare-fun m!1346201 () Bool)

(assert (=> b!1172144 m!1346201))

(declare-fun m!1346203 () Bool)

(assert (=> b!1172145 m!1346203))

(assert (=> d!335407 m!1344673))

(assert (=> d!335407 m!1344673))

(declare-fun m!1346205 () Bool)

(assert (=> d!335407 m!1346205))

(assert (=> d!334971 d!335407))

(declare-fun d!335409 () Bool)

(declare-fun isBalanced!1075 (Conc!3804) Bool)

(assert (=> d!335409 (= (inv!15298 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769))) (isBalanced!1075 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769)))))))

(declare-fun bs!285791 () Bool)

(assert (= bs!285791 d!335409))

(declare-fun m!1346207 () Bool)

(assert (=> bs!285791 m!1346207))

(assert (=> tb!65943 d!335409))

(declare-fun d!335411 () Bool)

(declare-fun res!529604 () Bool)

(declare-fun e!751734 () Bool)

(assert (=> d!335411 (=> res!529604 e!751734)))

(assert (=> d!335411 (= res!529604 ((_ is Nil!11590) (list!4274 (tokens!1654 thiss!10527))))))

(assert (=> d!335411 (= (forall!3066 (list!4274 (tokens!1654 thiss!10527)) lambda!48222) e!751734)))

(declare-fun b!1172146 () Bool)

(declare-fun e!751735 () Bool)

(assert (=> b!1172146 (= e!751734 e!751735)))

(declare-fun res!529605 () Bool)

(assert (=> b!1172146 (=> (not res!529605) (not e!751735))))

(assert (=> b!1172146 (= res!529605 (dynLambda!5125 lambda!48222 (h!16991 (list!4274 (tokens!1654 thiss!10527)))))))

(declare-fun b!1172147 () Bool)

(assert (=> b!1172147 (= e!751735 (forall!3066 (t!110758 (list!4274 (tokens!1654 thiss!10527))) lambda!48222))))

(assert (= (and d!335411 (not res!529604)) b!1172146))

(assert (= (and b!1172146 res!529605) b!1172147))

(declare-fun b_lambda!35017 () Bool)

(assert (=> (not b_lambda!35017) (not b!1172146)))

(declare-fun m!1346209 () Bool)

(assert (=> b!1172146 m!1346209))

(declare-fun m!1346211 () Bool)

(assert (=> b!1172147 m!1346211))

(assert (=> d!334961 d!335411))

(assert (=> d!334961 d!334969))

(declare-fun d!335413 () Bool)

(declare-fun lt!402476 () Bool)

(assert (=> d!335413 (= lt!402476 (forall!3066 (list!4274 (tokens!1654 thiss!10527)) lambda!48222))))

(assert (=> d!335413 (= lt!402476 (forall!3068 (c!195327 (tokens!1654 thiss!10527)) lambda!48222))))

(assert (=> d!335413 (= (forall!3065 (tokens!1654 thiss!10527) lambda!48222) lt!402476)))

(declare-fun bs!285792 () Bool)

(assert (= bs!285792 d!335413))

(assert (=> bs!285792 m!1344251))

(assert (=> bs!285792 m!1344251))

(assert (=> bs!285792 m!1344667))

(declare-fun m!1346213 () Bool)

(assert (=> bs!285792 m!1346213))

(assert (=> d!334961 d!335413))

(assert (=> d!334961 d!334887))

(declare-fun b!1172174 () Bool)

(declare-fun e!751747 () Bool)

(declare-fun lt!402482 () List!11614)

(declare-fun e!751748 () Int)

(assert (=> b!1172174 (= e!751747 (= (size!9142 lt!402482) e!751748))))

(declare-fun c!195523 () Bool)

(assert (=> b!1172174 (= c!195523 (<= (- to!267 from!787) 0))))

(declare-fun b!1172175 () Bool)

(declare-fun e!751749 () List!11614)

(assert (=> b!1172175 (= e!751749 Nil!11590)))

(declare-fun b!1172176 () Bool)

(declare-fun e!751750 () Int)

(assert (=> b!1172176 (= e!751750 (- to!267 from!787))))

(declare-fun b!1172177 () Bool)

(assert (=> b!1172177 (= e!751748 0)))

(declare-fun b!1172179 () Bool)

(assert (=> b!1172179 (= e!751748 e!751750)))

(declare-fun c!195522 () Bool)

(assert (=> b!1172179 (= c!195522 (>= (- to!267 from!787) (size!9142 (drop!493 lt!401774 from!787))))))

(declare-fun b!1172180 () Bool)

(assert (=> b!1172180 (= e!751749 (Cons!11590 (h!16991 (drop!493 lt!401774 from!787)) (take!81 (t!110758 (drop!493 lt!401774 from!787)) (- (- to!267 from!787) 1))))))

(declare-fun d!335415 () Bool)

(assert (=> d!335415 e!751747))

(declare-fun res!529620 () Bool)

(assert (=> d!335415 (=> (not res!529620) (not e!751747))))

(assert (=> d!335415 (= res!529620 (= ((_ map implies) (content!1614 lt!402482) (content!1614 (drop!493 lt!401774 from!787))) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335415 (= lt!402482 e!751749)))

(declare-fun c!195524 () Bool)

(assert (=> d!335415 (= c!195524 (or ((_ is Nil!11590) (drop!493 lt!401774 from!787)) (<= (- to!267 from!787) 0)))))

(assert (=> d!335415 (= (take!81 (drop!493 lt!401774 from!787) (- to!267 from!787)) lt!402482)))

(declare-fun b!1172178 () Bool)

(assert (=> b!1172178 (= e!751750 (size!9142 (drop!493 lt!401774 from!787)))))

(assert (= (and d!335415 c!195524) b!1172175))

(assert (= (and d!335415 (not c!195524)) b!1172180))

(assert (= (and d!335415 res!529620) b!1172174))

(assert (= (and b!1172174 c!195523) b!1172177))

(assert (= (and b!1172174 (not c!195523)) b!1172179))

(assert (= (and b!1172179 c!195522) b!1172178))

(assert (= (and b!1172179 (not c!195522)) b!1172176))

(assert (=> b!1172179 m!1344465))

(declare-fun m!1346225 () Bool)

(assert (=> b!1172179 m!1346225))

(declare-fun m!1346229 () Bool)

(assert (=> b!1172174 m!1346229))

(declare-fun m!1346231 () Bool)

(assert (=> b!1172180 m!1346231))

(declare-fun m!1346233 () Bool)

(assert (=> d!335415 m!1346233))

(assert (=> d!335415 m!1344465))

(declare-fun m!1346235 () Bool)

(assert (=> d!335415 m!1346235))

(assert (=> b!1172178 m!1344465))

(assert (=> b!1172178 m!1346225))

(assert (=> d!334949 d!335415))

(declare-fun b!1172181 () Bool)

(declare-fun e!751753 () Int)

(declare-fun call!82313 () Int)

(assert (=> b!1172181 (= e!751753 (- call!82313 from!787))))

(declare-fun b!1172183 () Bool)

(declare-fun e!751751 () Bool)

(declare-fun lt!402483 () List!11614)

(declare-fun e!751755 () Int)

(assert (=> b!1172183 (= e!751751 (= (size!9142 lt!402483) e!751755))))

(declare-fun c!195525 () Bool)

(assert (=> b!1172183 (= c!195525 (<= from!787 0))))

(declare-fun b!1172184 () Bool)

(declare-fun e!751754 () List!11614)

(assert (=> b!1172184 (= e!751754 (drop!493 (t!110758 lt!401774) (- from!787 1)))))

(declare-fun b!1172185 () Bool)

(assert (=> b!1172185 (= e!751755 call!82313)))

(declare-fun b!1172186 () Bool)

(assert (=> b!1172186 (= e!751753 0)))

(declare-fun b!1172187 () Bool)

(assert (=> b!1172187 (= e!751755 e!751753)))

(declare-fun c!195526 () Bool)

(assert (=> b!1172187 (= c!195526 (>= from!787 call!82313))))

(declare-fun bm!82308 () Bool)

(assert (=> bm!82308 (= call!82313 (size!9142 lt!401774))))

(declare-fun b!1172188 () Bool)

(declare-fun e!751752 () List!11614)

(assert (=> b!1172188 (= e!751752 Nil!11590)))

(declare-fun b!1172189 () Bool)

(assert (=> b!1172189 (= e!751754 lt!401774)))

(declare-fun b!1172182 () Bool)

(assert (=> b!1172182 (= e!751752 e!751754)))

(declare-fun c!195528 () Bool)

(assert (=> b!1172182 (= c!195528 (<= from!787 0))))

(declare-fun d!335417 () Bool)

(assert (=> d!335417 e!751751))

(declare-fun res!529621 () Bool)

(assert (=> d!335417 (=> (not res!529621) (not e!751751))))

(assert (=> d!335417 (= res!529621 (= ((_ map implies) (content!1614 lt!402483) (content!1614 lt!401774)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335417 (= lt!402483 e!751752)))

(declare-fun c!195527 () Bool)

(assert (=> d!335417 (= c!195527 ((_ is Nil!11590) lt!401774))))

(assert (=> d!335417 (= (drop!493 lt!401774 from!787) lt!402483)))

(assert (= (and d!335417 c!195527) b!1172188))

(assert (= (and d!335417 (not c!195527)) b!1172182))

(assert (= (and b!1172182 c!195528) b!1172189))

(assert (= (and b!1172182 (not c!195528)) b!1172184))

(assert (= (and d!335417 res!529621) b!1172183))

(assert (= (and b!1172183 c!195525) b!1172185))

(assert (= (and b!1172183 (not c!195525)) b!1172187))

(assert (= (and b!1172187 c!195526) b!1172186))

(assert (= (and b!1172187 (not c!195526)) b!1172181))

(assert (= (or b!1172185 b!1172187 b!1172181) bm!82308))

(declare-fun m!1346247 () Bool)

(assert (=> b!1172183 m!1346247))

(declare-fun m!1346249 () Bool)

(assert (=> b!1172184 m!1346249))

(assert (=> bm!82308 m!1344463))

(declare-fun m!1346251 () Bool)

(assert (=> d!335417 m!1346251))

(assert (=> d!335417 m!1345203))

(assert (=> d!334949 d!335417))

(assert (=> b!1171297 d!335305))

(declare-fun d!335421 () Bool)

(assert (=> d!335421 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401774))))

(declare-fun lt!402485 () Unit!17788)

(assert (=> d!335421 (= lt!402485 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!401774 (h!16991 lt!401774)))))

(assert (=> d!335421 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335421 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401774 (h!16991 lt!401774)) lt!402485)))

(declare-fun bs!285793 () Bool)

(assert (= bs!285793 d!335421))

(assert (=> bs!285793 m!1344241))

(declare-fun m!1346253 () Bool)

(assert (=> bs!285793 m!1346253))

(assert (=> bs!285793 m!1344215))

(assert (=> b!1171297 d!335421))

(assert (=> b!1171297 d!334999))

(declare-fun d!335423 () Bool)

(declare-fun lt!402486 () Int)

(assert (=> d!335423 (= lt!402486 (size!9144 (list!4278 (charsOf!1076 (h!16991 (t!110758 lt!401774))))))))

(assert (=> d!335423 (= lt!402486 (size!9145 (c!195326 (charsOf!1076 (h!16991 (t!110758 lt!401774))))))))

(assert (=> d!335423 (= (size!9136 (charsOf!1076 (h!16991 (t!110758 lt!401774)))) lt!402486)))

(declare-fun bs!285796 () Bool)

(assert (= bs!285796 d!335423))

(assert (=> bs!285796 m!1344521))

(declare-fun m!1346255 () Bool)

(assert (=> bs!285796 m!1346255))

(assert (=> bs!285796 m!1346255))

(declare-fun m!1346257 () Bool)

(assert (=> bs!285796 m!1346257))

(declare-fun m!1346259 () Bool)

(assert (=> bs!285796 m!1346259))

(assert (=> b!1171297 d!335423))

(declare-fun d!335425 () Bool)

(assert (=> d!335425 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401774)))))

(declare-fun lt!402487 () Unit!17788)

(assert (=> d!335425 (= lt!402487 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!401774 (h!16991 (t!110758 lt!401774))))))

(assert (=> d!335425 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335425 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!401774 (h!16991 (t!110758 lt!401774))) lt!402487)))

(declare-fun bs!285801 () Bool)

(assert (= bs!285801 d!335425))

(assert (=> bs!285801 m!1344437))

(declare-fun m!1346261 () Bool)

(assert (=> bs!285801 m!1346261))

(assert (=> bs!285801 m!1344215))

(assert (=> b!1171297 d!335425))

(declare-fun d!335427 () Bool)

(assert (=> d!335427 (= (separableTokensPredicate!138 Lexer!1714 (h!16991 lt!401774) (h!16991 (t!110758 lt!401774)) (rules!9642 thiss!10527)) (not (prefixMatchZipperSequence!99 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) (++!2994 (charsOf!1076 (h!16991 lt!401774)) (singletonSeq!685 (apply!2522 (charsOf!1076 (h!16991 (t!110758 lt!401774))) 0))))))))

(declare-fun bs!285805 () Bool)

(assert (= bs!285805 d!335427))

(assert (=> bs!285805 m!1345231))

(declare-fun m!1346263 () Bool)

(assert (=> bs!285805 m!1346263))

(declare-fun m!1346265 () Bool)

(assert (=> bs!285805 m!1346265))

(assert (=> bs!285805 m!1344521))

(declare-fun m!1346269 () Bool)

(assert (=> bs!285805 m!1346269))

(declare-fun m!1346271 () Bool)

(assert (=> bs!285805 m!1346271))

(assert (=> bs!285805 m!1345231))

(assert (=> bs!285805 m!1344521))

(assert (=> bs!285805 m!1346271))

(declare-fun m!1346277 () Bool)

(assert (=> bs!285805 m!1346277))

(assert (=> bs!285805 m!1346263))

(assert (=> bs!285805 m!1346269))

(assert (=> bs!285805 m!1346277))

(assert (=> b!1171297 d!335427))

(declare-fun d!335431 () Bool)

(declare-fun lt!402488 () BalanceConc!7630)

(assert (=> d!335431 (= (list!4278 lt!402488) (originalCharacters!2575 (h!16991 (t!110758 lt!401774))))))

(assert (=> d!335431 (= lt!402488 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (t!110758 lt!401774))))) (value!65595 (h!16991 (t!110758 lt!401774)))))))

(assert (=> d!335431 (= (charsOf!1076 (h!16991 (t!110758 lt!401774))) lt!402488)))

(declare-fun b_lambda!35019 () Bool)

(assert (=> (not b_lambda!35019) (not d!335431)))

(declare-fun t!110799 () Bool)

(declare-fun tb!65953 () Bool)

(assert (=> (and b!1171653 (= (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (t!110758 lt!401774)))))) t!110799) tb!65953))

(declare-fun b!1172195 () Bool)

(declare-fun e!751761 () Bool)

(declare-fun tp!334741 () Bool)

(assert (=> b!1172195 (= e!751761 (and (inv!15297 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (t!110758 lt!401774))))) (value!65595 (h!16991 (t!110758 lt!401774)))))) tp!334741))))

(declare-fun result!78990 () Bool)

(assert (=> tb!65953 (= result!78990 (and (inv!15298 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (t!110758 lt!401774))))) (value!65595 (h!16991 (t!110758 lt!401774))))) e!751761))))

(assert (= tb!65953 b!1172195))

(declare-fun m!1346279 () Bool)

(assert (=> b!1172195 m!1346279))

(declare-fun m!1346281 () Bool)

(assert (=> tb!65953 m!1346281))

(assert (=> d!335431 t!110799))

(declare-fun b_and!80769 () Bool)

(assert (= b_and!80767 (and (=> t!110799 result!78990) b_and!80769)))

(declare-fun m!1346283 () Bool)

(assert (=> d!335431 m!1346283))

(declare-fun m!1346285 () Bool)

(assert (=> d!335431 m!1346285))

(assert (=> b!1171297 d!335431))

(declare-fun d!335433 () Bool)

(declare-fun lt!402489 () Token!3704)

(assert (=> d!335433 (contains!2002 (tail!1694 lt!401774) lt!402489)))

(declare-fun e!751763 () Token!3704)

(assert (=> d!335433 (= lt!402489 e!751763)))

(declare-fun c!195529 () Bool)

(assert (=> d!335433 (= c!195529 (= (- 0 1) 0))))

(declare-fun e!751762 () Bool)

(assert (=> d!335433 e!751762))

(declare-fun res!529624 () Bool)

(assert (=> d!335433 (=> (not res!529624) (not e!751762))))

(assert (=> d!335433 (= res!529624 (<= 0 (- 0 1)))))

(assert (=> d!335433 (= (apply!2518 (tail!1694 lt!401774) (- 0 1)) lt!402489)))

(declare-fun b!1172196 () Bool)

(assert (=> b!1172196 (= e!751762 (< (- 0 1) (size!9142 (tail!1694 lt!401774))))))

(declare-fun b!1172197 () Bool)

(assert (=> b!1172197 (= e!751763 (head!2110 (tail!1694 lt!401774)))))

(declare-fun b!1172198 () Bool)

(assert (=> b!1172198 (= e!751763 (apply!2518 (tail!1694 (tail!1694 lt!401774)) (- (- 0 1) 1)))))

(assert (= (and d!335433 res!529624) b!1172196))

(assert (= (and d!335433 c!195529) b!1172197))

(assert (= (and d!335433 (not c!195529)) b!1172198))

(assert (=> d!335433 m!1345183))

(declare-fun m!1346293 () Bool)

(assert (=> d!335433 m!1346293))

(assert (=> b!1172196 m!1345183))

(declare-fun m!1346295 () Bool)

(assert (=> b!1172196 m!1346295))

(assert (=> b!1172197 m!1345183))

(declare-fun m!1346297 () Bool)

(assert (=> b!1172197 m!1346297))

(assert (=> b!1172198 m!1345183))

(declare-fun m!1346299 () Bool)

(assert (=> b!1172198 m!1346299))

(assert (=> b!1172198 m!1346299))

(declare-fun m!1346301 () Bool)

(assert (=> b!1172198 m!1346301))

(assert (=> b!1171569 d!335433))

(declare-fun d!335439 () Bool)

(assert (=> d!335439 (= (tail!1694 lt!401774) (t!110758 lt!401774))))

(assert (=> b!1171569 d!335439))

(assert (=> b!1171341 d!334959))

(assert (=> b!1171575 d!335393))

(assert (=> d!334945 d!334943))

(declare-fun d!335441 () Bool)

(assert (=> d!335441 (forall!3066 lt!401773 lambda!48203)))

(assert (=> d!335441 true))

(declare-fun _$37!319 () Unit!17788)

(assert (=> d!335441 (= (choose!7562 lt!401773 lt!401774 lambda!48203) _$37!319)))

(declare-fun bs!285814 () Bool)

(assert (= bs!285814 d!335441))

(assert (=> bs!285814 m!1344227))

(assert (=> d!334945 d!335441))

(declare-fun d!335443 () Bool)

(declare-fun res!529627 () Bool)

(declare-fun e!751770 () Bool)

(assert (=> d!335443 (=> res!529627 e!751770)))

(assert (=> d!335443 (= res!529627 ((_ is Nil!11590) lt!401774))))

(assert (=> d!335443 (= (forall!3066 lt!401774 lambda!48203) e!751770)))

(declare-fun b!1172206 () Bool)

(declare-fun e!751771 () Bool)

(assert (=> b!1172206 (= e!751770 e!751771)))

(declare-fun res!529628 () Bool)

(assert (=> b!1172206 (=> (not res!529628) (not e!751771))))

(assert (=> b!1172206 (= res!529628 (dynLambda!5125 lambda!48203 (h!16991 lt!401774)))))

(declare-fun b!1172207 () Bool)

(assert (=> b!1172207 (= e!751771 (forall!3066 (t!110758 lt!401774) lambda!48203))))

(assert (= (and d!335443 (not res!529627)) b!1172206))

(assert (= (and b!1172206 res!529628) b!1172207))

(declare-fun b_lambda!35021 () Bool)

(assert (=> (not b_lambda!35021) (not b!1172206)))

(declare-fun m!1346303 () Bool)

(assert (=> b!1172206 m!1346303))

(declare-fun m!1346305 () Bool)

(assert (=> b!1172207 m!1346305))

(assert (=> d!334945 d!335443))

(declare-fun b!1172208 () Bool)

(declare-fun e!751775 () Bool)

(declare-fun e!751776 () Bool)

(assert (=> b!1172208 (= e!751775 e!751776)))

(declare-fun res!529631 () Bool)

(assert (=> b!1172208 (=> (not res!529631) (not e!751776))))

(assert (=> b!1172208 (= res!529631 (separableTokensPredicate!138 Lexer!1714 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)) (apply!2517 (tokens!1654 thiss!10527) (+ 1 1 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!402492 () Unit!17788)

(declare-fun Unit!17819 () Unit!17788)

(assert (=> b!1172208 (= lt!402492 Unit!17819)))

(assert (=> b!1172208 (> (size!9136 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1 1)))) 0)))

(declare-fun lt!402521 () Unit!17788)

(declare-fun Unit!17820 () Unit!17788)

(assert (=> b!1172208 (= lt!402521 Unit!17820)))

(assert (=> b!1172208 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) (+ 1 1 1)))))

(declare-fun lt!402506 () Unit!17788)

(declare-fun Unit!17821 () Unit!17788)

(assert (=> b!1172208 (= lt!402506 Unit!17821)))

(assert (=> b!1172208 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))

(declare-fun lt!402504 () Unit!17788)

(declare-fun lt!402507 () Unit!17788)

(assert (=> b!1172208 (= lt!402504 lt!402507)))

(declare-fun lt!402501 () Token!3704)

(assert (=> b!1172208 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402501)))

(declare-fun lt!402514 () List!11614)

(assert (=> b!1172208 (= lt!402507 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402514 lt!402501))))

(assert (=> b!1172208 (= lt!402501 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1 1)))))

(assert (=> b!1172208 (= lt!402514 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402513 () Unit!17788)

(declare-fun lt!402503 () Unit!17788)

(assert (=> b!1172208 (= lt!402513 lt!402503)))

(declare-fun lt!402510 () Token!3704)

(assert (=> b!1172208 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402510)))

(declare-fun lt!402500 () List!11614)

(assert (=> b!1172208 (= lt!402503 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402500 lt!402510))))

(assert (=> b!1172208 (= lt!402510 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))

(assert (=> b!1172208 (= lt!402500 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402497 () Unit!17788)

(declare-fun lt!402517 () Unit!17788)

(assert (=> b!1172208 (= lt!402497 lt!402517)))

(declare-fun lt!402509 () List!11614)

(declare-fun lt!402519 () Int)

(assert (=> b!1172208 (= (tail!1694 (drop!493 lt!402509 lt!402519)) (drop!493 lt!402509 (+ lt!402519 1)))))

(assert (=> b!1172208 (= lt!402517 (lemmaDropTail!367 lt!402509 lt!402519))))

(assert (=> b!1172208 (= lt!402519 (+ 1 1 1))))

(assert (=> b!1172208 (= lt!402509 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402520 () Unit!17788)

(declare-fun lt!402523 () Unit!17788)

(assert (=> b!1172208 (= lt!402520 lt!402523)))

(declare-fun lt!402508 () List!11614)

(assert (=> b!1172208 (= (tail!1694 (drop!493 lt!402508 (+ 1 1))) (drop!493 lt!402508 (+ 1 1 1)))))

(assert (=> b!1172208 (= lt!402523 (lemmaDropTail!367 lt!402508 (+ 1 1)))))

(assert (=> b!1172208 (= lt!402508 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402499 () Unit!17788)

(declare-fun lt!402505 () Unit!17788)

(assert (=> b!1172208 (= lt!402499 lt!402505)))

(declare-fun lt!402512 () List!11614)

(declare-fun lt!402502 () Int)

(assert (=> b!1172208 (= (head!2110 (drop!493 lt!402512 lt!402502)) (apply!2518 lt!402512 lt!402502))))

(assert (=> b!1172208 (= lt!402505 (lemmaDropApply!379 lt!402512 lt!402502))))

(assert (=> b!1172208 (= lt!402502 (+ 1 1 1))))

(assert (=> b!1172208 (= lt!402512 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402516 () Unit!17788)

(declare-fun lt!402496 () Unit!17788)

(assert (=> b!1172208 (= lt!402516 lt!402496)))

(declare-fun lt!402493 () List!11614)

(assert (=> b!1172208 (= (head!2110 (drop!493 lt!402493 (+ 1 1))) (apply!2518 lt!402493 (+ 1 1)))))

(assert (=> b!1172208 (= lt!402496 (lemmaDropApply!379 lt!402493 (+ 1 1)))))

(assert (=> b!1172208 (= lt!402493 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun b!1172209 () Bool)

(declare-fun e!751773 () Bool)

(declare-fun lt!402518 () List!11614)

(assert (=> b!1172209 (= e!751773 (<= (+ 1 1) (size!9142 lt!402518)))))

(declare-fun d!335445 () Bool)

(declare-fun lt!402491 () Bool)

(assert (=> d!335445 (= lt!402491 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 (tokens!1654 thiss!10527) (+ 1 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!402511 () Unit!17788)

(declare-fun lt!402495 () Unit!17788)

(assert (=> d!335445 (= lt!402511 lt!402495)))

(declare-fun lt!402522 () List!11614)

(assert (=> d!335445 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402522)))

(declare-fun lt!402515 () List!11614)

(assert (=> d!335445 (= lt!402495 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!402515 lt!402522))))

(declare-fun e!751774 () Bool)

(assert (=> d!335445 e!751774))

(declare-fun res!529635 () Bool)

(assert (=> d!335445 (=> (not res!529635) (not e!751774))))

(assert (=> d!335445 (= res!529635 ((_ is Lexer!1714) Lexer!1714))))

(assert (=> d!335445 (= lt!402522 (dropList!325 (tokens!1654 thiss!10527) (+ 1 1)))))

(assert (=> d!335445 (= lt!402515 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402494 () Unit!17788)

(declare-fun lt!402498 () Unit!17788)

(assert (=> d!335445 (= lt!402494 lt!402498)))

(assert (=> d!335445 (subseq!271 (drop!493 lt!402518 (+ 1 1)) lt!402518)))

(assert (=> d!335445 (= lt!402498 (lemmaDropSubSeq!33 lt!402518 (+ 1 1)))))

(assert (=> d!335445 e!751773))

(declare-fun res!529634 () Bool)

(assert (=> d!335445 (=> (not res!529634) (not e!751773))))

(assert (=> d!335445 (= res!529634 (>= (+ 1 1) 0))))

(assert (=> d!335445 (= lt!402518 (list!4274 (tokens!1654 thiss!10527)))))

(assert (=> d!335445 (= lt!402491 e!751775)))

(declare-fun res!529633 () Bool)

(assert (=> d!335445 (=> res!529633 e!751775)))

(assert (=> d!335445 (= res!529633 (not (< (+ 1 1) (- (size!9137 (tokens!1654 thiss!10527)) 1))))))

(declare-fun e!751772 () Bool)

(assert (=> d!335445 e!751772))

(declare-fun res!529630 () Bool)

(assert (=> d!335445 (=> (not res!529630) (not e!751772))))

(assert (=> d!335445 (= res!529630 (>= (+ 1 1) 0))))

(assert (=> d!335445 (= (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) (+ 1 1) (rules!9642 thiss!10527)) lt!402491)))

(declare-fun b!1172210 () Bool)

(assert (=> b!1172210 (= e!751772 (<= (+ 1 1) (size!9137 (tokens!1654 thiss!10527))))))

(declare-fun b!1172211 () Bool)

(declare-fun res!529632 () Bool)

(assert (=> b!1172211 (=> (not res!529632) (not e!751774))))

(assert (=> b!1172211 (= res!529632 (not (isEmpty!7032 (rules!9642 thiss!10527))))))

(declare-fun b!1172212 () Bool)

(declare-fun res!529636 () Bool)

(assert (=> b!1172212 (=> (not res!529636) (not e!751774))))

(assert (=> b!1172212 (= res!529636 (subseq!271 lt!402522 lt!402515))))

(declare-fun b!1172213 () Bool)

(assert (=> b!1172213 (= e!751774 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402515))))

(declare-fun b!1172214 () Bool)

(assert (=> b!1172214 (= e!751776 (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) (+ 1 1 1) (rules!9642 thiss!10527)))))

(declare-fun b!1172215 () Bool)

(declare-fun res!529629 () Bool)

(assert (=> b!1172215 (=> (not res!529629) (not e!751774))))

(assert (=> b!1172215 (= res!529629 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(assert (= (and d!335445 res!529630) b!1172210))

(assert (= (and d!335445 (not res!529633)) b!1172208))

(assert (= (and b!1172208 res!529631) b!1172214))

(assert (= (and d!335445 res!529634) b!1172209))

(assert (= (and d!335445 res!529635) b!1172211))

(assert (= (and b!1172211 res!529632) b!1172215))

(assert (= (and b!1172215 res!529629) b!1172212))

(assert (= (and b!1172212 res!529636) b!1172213))

(declare-fun m!1346319 () Bool)

(assert (=> b!1172208 m!1346319))

(declare-fun m!1346321 () Bool)

(assert (=> b!1172208 m!1346321))

(declare-fun m!1346323 () Bool)

(assert (=> b!1172208 m!1346323))

(declare-fun m!1346325 () Bool)

(assert (=> b!1172208 m!1346325))

(declare-fun m!1346327 () Bool)

(assert (=> b!1172208 m!1346327))

(declare-fun m!1346329 () Bool)

(assert (=> b!1172208 m!1346329))

(declare-fun m!1346331 () Bool)

(assert (=> b!1172208 m!1346331))

(declare-fun m!1346333 () Bool)

(assert (=> b!1172208 m!1346333))

(assert (=> b!1172208 m!1346329))

(declare-fun m!1346335 () Bool)

(assert (=> b!1172208 m!1346335))

(declare-fun m!1346337 () Bool)

(assert (=> b!1172208 m!1346337))

(assert (=> b!1172208 m!1344691))

(assert (=> b!1172208 m!1344727))

(declare-fun m!1346339 () Bool)

(assert (=> b!1172208 m!1346339))

(declare-fun m!1346341 () Bool)

(assert (=> b!1172208 m!1346341))

(declare-fun m!1346343 () Bool)

(assert (=> b!1172208 m!1346343))

(assert (=> b!1172208 m!1346335))

(declare-fun m!1346345 () Bool)

(assert (=> b!1172208 m!1346345))

(assert (=> b!1172208 m!1344251))

(declare-fun m!1346347 () Bool)

(assert (=> b!1172208 m!1346347))

(declare-fun m!1346349 () Bool)

(assert (=> b!1172208 m!1346349))

(declare-fun m!1346351 () Bool)

(assert (=> b!1172208 m!1346351))

(assert (=> b!1172208 m!1344691))

(assert (=> b!1172208 m!1346319))

(declare-fun m!1346355 () Bool)

(assert (=> b!1172208 m!1346355))

(assert (=> b!1172208 m!1346331))

(declare-fun m!1346359 () Bool)

(assert (=> b!1172208 m!1346359))

(declare-fun m!1346363 () Bool)

(assert (=> b!1172208 m!1346363))

(assert (=> b!1172208 m!1346323))

(declare-fun m!1346365 () Bool)

(assert (=> b!1172208 m!1346365))

(assert (=> b!1172208 m!1344691))

(assert (=> b!1172208 m!1346329))

(declare-fun m!1346367 () Bool)

(assert (=> b!1172208 m!1346367))

(assert (=> b!1172208 m!1346329))

(declare-fun m!1346369 () Bool)

(assert (=> b!1172208 m!1346369))

(assert (=> b!1172208 m!1346327))

(declare-fun m!1346371 () Bool)

(assert (=> b!1172208 m!1346371))

(declare-fun m!1346373 () Bool)

(assert (=> b!1172208 m!1346373))

(declare-fun m!1346375 () Bool)

(assert (=> b!1172212 m!1346375))

(assert (=> b!1172215 m!1344167))

(declare-fun m!1346377 () Bool)

(assert (=> b!1172214 m!1346377))

(assert (=> b!1172211 m!1344215))

(declare-fun m!1346379 () Bool)

(assert (=> b!1172213 m!1346379))

(assert (=> b!1172210 m!1344261))

(declare-fun m!1346381 () Bool)

(assert (=> d!335445 m!1346381))

(assert (=> d!335445 m!1344261))

(declare-fun m!1346383 () Bool)

(assert (=> d!335445 m!1346383))

(declare-fun m!1346385 () Bool)

(assert (=> d!335445 m!1346385))

(assert (=> d!335445 m!1346383))

(declare-fun m!1346387 () Bool)

(assert (=> d!335445 m!1346387))

(declare-fun m!1346389 () Bool)

(assert (=> d!335445 m!1346389))

(declare-fun m!1346391 () Bool)

(assert (=> d!335445 m!1346391))

(assert (=> d!335445 m!1346387))

(declare-fun m!1346393 () Bool)

(assert (=> d!335445 m!1346393))

(assert (=> d!335445 m!1344251))

(declare-fun m!1346395 () Bool)

(assert (=> b!1172209 m!1346395))

(assert (=> b!1171345 d!335445))

(assert (=> b!1171385 d!334961))

(assert (=> b!1171349 d!334959))

(declare-fun d!335453 () Bool)

(declare-fun lt!402526 () Token!3704)

(assert (=> d!335453 (= lt!402526 (apply!2518 (list!4274 (_1!6871 lt!402254)) 0))))

(assert (=> d!335453 (= lt!402526 (apply!2521 (c!195327 (_1!6871 lt!402254)) 0))))

(declare-fun e!751787 () Bool)

(assert (=> d!335453 e!751787))

(declare-fun res!529640 () Bool)

(assert (=> d!335453 (=> (not res!529640) (not e!751787))))

(assert (=> d!335453 (= res!529640 (<= 0 0))))

(assert (=> d!335453 (= (apply!2517 (_1!6871 lt!402254) 0) lt!402526)))

(declare-fun b!1172230 () Bool)

(assert (=> b!1172230 (= e!751787 (< 0 (size!9137 (_1!6871 lt!402254))))))

(assert (= (and d!335453 res!529640) b!1172230))

(assert (=> d!335453 m!1346099))

(assert (=> d!335453 m!1346099))

(declare-fun m!1346397 () Bool)

(assert (=> d!335453 m!1346397))

(declare-fun m!1346399 () Bool)

(assert (=> d!335453 m!1346399))

(assert (=> b!1172230 m!1345087))

(assert (=> b!1171484 d!335453))

(declare-fun d!335457 () Bool)

(assert (=> d!335457 (= (inv!15282 (tag!2283 (h!16992 (rules!9642 thiss!10527)))) (= (mod (str.len (value!65594 (tag!2283 (h!16992 (rules!9642 thiss!10527))))) 2) 0))))

(assert (=> b!1171652 d!335457))

(declare-fun d!335465 () Bool)

(declare-fun res!529648 () Bool)

(declare-fun e!751796 () Bool)

(assert (=> d!335465 (=> (not res!529648) (not e!751796))))

(declare-fun semiInverseModEq!732 (Int Int) Bool)

(assert (=> d!335465 (= res!529648 (semiInverseModEq!732 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))))))

(assert (=> d!335465 (= (inv!15299 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) e!751796)))

(declare-fun b!1172240 () Bool)

(declare-fun equivClasses!699 (Int Int) Bool)

(assert (=> b!1172240 (= e!751796 (equivClasses!699 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))))))

(assert (= (and d!335465 res!529648) b!1172240))

(declare-fun m!1346423 () Bool)

(assert (=> d!335465 m!1346423))

(declare-fun m!1346425 () Bool)

(assert (=> b!1172240 m!1346425))

(assert (=> b!1171652 d!335465))

(declare-fun b!1172241 () Bool)

(declare-fun e!751800 () Bool)

(declare-fun e!751801 () Bool)

(assert (=> b!1172241 (= e!751800 e!751801)))

(declare-fun res!529651 () Bool)

(assert (=> b!1172241 (=> (not res!529651) (not e!751801))))

(assert (=> b!1172241 (= res!529651 (separableTokensPredicate!138 Lexer!1714 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)) (apply!2517 (tokens!1654 thiss!10527) (+ 0 1 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!402531 () Unit!17788)

(declare-fun Unit!17822 () Unit!17788)

(assert (=> b!1172241 (= lt!402531 Unit!17822)))

(assert (=> b!1172241 (> (size!9136 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1 1)))) 0)))

(declare-fun lt!402560 () Unit!17788)

(declare-fun Unit!17823 () Unit!17788)

(assert (=> b!1172241 (= lt!402560 Unit!17823)))

(assert (=> b!1172241 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) (+ 0 1 1)))))

(declare-fun lt!402545 () Unit!17788)

(declare-fun Unit!17824 () Unit!17788)

(assert (=> b!1172241 (= lt!402545 Unit!17824)))

(assert (=> b!1172241 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))

(declare-fun lt!402543 () Unit!17788)

(declare-fun lt!402546 () Unit!17788)

(assert (=> b!1172241 (= lt!402543 lt!402546)))

(declare-fun lt!402540 () Token!3704)

(assert (=> b!1172241 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402540)))

(declare-fun lt!402553 () List!11614)

(assert (=> b!1172241 (= lt!402546 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402553 lt!402540))))

(assert (=> b!1172241 (= lt!402540 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1 1)))))

(assert (=> b!1172241 (= lt!402553 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402552 () Unit!17788)

(declare-fun lt!402542 () Unit!17788)

(assert (=> b!1172241 (= lt!402552 lt!402542)))

(declare-fun lt!402549 () Token!3704)

(assert (=> b!1172241 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402549)))

(declare-fun lt!402539 () List!11614)

(assert (=> b!1172241 (= lt!402542 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402539 lt!402549))))

(assert (=> b!1172241 (= lt!402549 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))

(assert (=> b!1172241 (= lt!402539 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402536 () Unit!17788)

(declare-fun lt!402556 () Unit!17788)

(assert (=> b!1172241 (= lt!402536 lt!402556)))

(declare-fun lt!402548 () List!11614)

(declare-fun lt!402558 () Int)

(assert (=> b!1172241 (= (tail!1694 (drop!493 lt!402548 lt!402558)) (drop!493 lt!402548 (+ lt!402558 1)))))

(assert (=> b!1172241 (= lt!402556 (lemmaDropTail!367 lt!402548 lt!402558))))

(assert (=> b!1172241 (= lt!402558 (+ 0 1 1))))

(assert (=> b!1172241 (= lt!402548 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402559 () Unit!17788)

(declare-fun lt!402562 () Unit!17788)

(assert (=> b!1172241 (= lt!402559 lt!402562)))

(declare-fun lt!402547 () List!11614)

(assert (=> b!1172241 (= (tail!1694 (drop!493 lt!402547 (+ 0 1))) (drop!493 lt!402547 (+ 0 1 1)))))

(assert (=> b!1172241 (= lt!402562 (lemmaDropTail!367 lt!402547 (+ 0 1)))))

(assert (=> b!1172241 (= lt!402547 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402538 () Unit!17788)

(declare-fun lt!402544 () Unit!17788)

(assert (=> b!1172241 (= lt!402538 lt!402544)))

(declare-fun lt!402551 () List!11614)

(declare-fun lt!402541 () Int)

(assert (=> b!1172241 (= (head!2110 (drop!493 lt!402551 lt!402541)) (apply!2518 lt!402551 lt!402541))))

(assert (=> b!1172241 (= lt!402544 (lemmaDropApply!379 lt!402551 lt!402541))))

(assert (=> b!1172241 (= lt!402541 (+ 0 1 1))))

(assert (=> b!1172241 (= lt!402551 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402555 () Unit!17788)

(declare-fun lt!402535 () Unit!17788)

(assert (=> b!1172241 (= lt!402555 lt!402535)))

(declare-fun lt!402532 () List!11614)

(assert (=> b!1172241 (= (head!2110 (drop!493 lt!402532 (+ 0 1))) (apply!2518 lt!402532 (+ 0 1)))))

(assert (=> b!1172241 (= lt!402535 (lemmaDropApply!379 lt!402532 (+ 0 1)))))

(assert (=> b!1172241 (= lt!402532 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun b!1172242 () Bool)

(declare-fun e!751798 () Bool)

(declare-fun lt!402557 () List!11614)

(assert (=> b!1172242 (= e!751798 (<= (+ 0 1) (size!9142 lt!402557)))))

(declare-fun d!335469 () Bool)

(declare-fun lt!402530 () Bool)

(assert (=> d!335469 (= lt!402530 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 (tokens!1654 thiss!10527) (+ 0 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!402550 () Unit!17788)

(declare-fun lt!402534 () Unit!17788)

(assert (=> d!335469 (= lt!402550 lt!402534)))

(declare-fun lt!402561 () List!11614)

(assert (=> d!335469 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402561)))

(declare-fun lt!402554 () List!11614)

(assert (=> d!335469 (= lt!402534 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!402554 lt!402561))))

(declare-fun e!751799 () Bool)

(assert (=> d!335469 e!751799))

(declare-fun res!529655 () Bool)

(assert (=> d!335469 (=> (not res!529655) (not e!751799))))

(assert (=> d!335469 (= res!529655 ((_ is Lexer!1714) Lexer!1714))))

(assert (=> d!335469 (= lt!402561 (dropList!325 (tokens!1654 thiss!10527) (+ 0 1)))))

(assert (=> d!335469 (= lt!402554 (list!4274 (tokens!1654 thiss!10527)))))

(declare-fun lt!402533 () Unit!17788)

(declare-fun lt!402537 () Unit!17788)

(assert (=> d!335469 (= lt!402533 lt!402537)))

(assert (=> d!335469 (subseq!271 (drop!493 lt!402557 (+ 0 1)) lt!402557)))

(assert (=> d!335469 (= lt!402537 (lemmaDropSubSeq!33 lt!402557 (+ 0 1)))))

(assert (=> d!335469 e!751798))

(declare-fun res!529654 () Bool)

(assert (=> d!335469 (=> (not res!529654) (not e!751798))))

(assert (=> d!335469 (= res!529654 (>= (+ 0 1) 0))))

(assert (=> d!335469 (= lt!402557 (list!4274 (tokens!1654 thiss!10527)))))

(assert (=> d!335469 (= lt!402530 e!751800)))

(declare-fun res!529653 () Bool)

(assert (=> d!335469 (=> res!529653 e!751800)))

(assert (=> d!335469 (= res!529653 (not (< (+ 0 1) (- (size!9137 (tokens!1654 thiss!10527)) 1))))))

(declare-fun e!751797 () Bool)

(assert (=> d!335469 e!751797))

(declare-fun res!529650 () Bool)

(assert (=> d!335469 (=> (not res!529650) (not e!751797))))

(assert (=> d!335469 (= res!529650 (>= (+ 0 1) 0))))

(assert (=> d!335469 (= (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) (+ 0 1) (rules!9642 thiss!10527)) lt!402530)))

(declare-fun b!1172243 () Bool)

(assert (=> b!1172243 (= e!751797 (<= (+ 0 1) (size!9137 (tokens!1654 thiss!10527))))))

(declare-fun b!1172244 () Bool)

(declare-fun res!529652 () Bool)

(assert (=> b!1172244 (=> (not res!529652) (not e!751799))))

(assert (=> b!1172244 (= res!529652 (not (isEmpty!7032 (rules!9642 thiss!10527))))))

(declare-fun b!1172245 () Bool)

(declare-fun res!529656 () Bool)

(assert (=> b!1172245 (=> (not res!529656) (not e!751799))))

(assert (=> b!1172245 (= res!529656 (subseq!271 lt!402561 lt!402554))))

(declare-fun b!1172246 () Bool)

(assert (=> b!1172246 (= e!751799 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402554))))

(declare-fun b!1172247 () Bool)

(assert (=> b!1172247 (= e!751801 (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) (+ 0 1 1) (rules!9642 thiss!10527)))))

(declare-fun b!1172248 () Bool)

(declare-fun res!529649 () Bool)

(assert (=> b!1172248 (=> (not res!529649) (not e!751799))))

(assert (=> b!1172248 (= res!529649 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(assert (= (and d!335469 res!529650) b!1172243))

(assert (= (and d!335469 (not res!529653)) b!1172241))

(assert (= (and b!1172241 res!529651) b!1172247))

(assert (= (and d!335469 res!529654) b!1172242))

(assert (= (and d!335469 res!529655) b!1172244))

(assert (= (and b!1172244 res!529652) b!1172248))

(assert (= (and b!1172248 res!529649) b!1172245))

(assert (= (and b!1172245 res!529656) b!1172246))

(declare-fun m!1346427 () Bool)

(assert (=> b!1172241 m!1346427))

(declare-fun m!1346429 () Bool)

(assert (=> b!1172241 m!1346429))

(declare-fun m!1346431 () Bool)

(assert (=> b!1172241 m!1346431))

(declare-fun m!1346433 () Bool)

(assert (=> b!1172241 m!1346433))

(declare-fun m!1346435 () Bool)

(assert (=> b!1172241 m!1346435))

(declare-fun m!1346437 () Bool)

(assert (=> b!1172241 m!1346437))

(declare-fun m!1346439 () Bool)

(assert (=> b!1172241 m!1346439))

(declare-fun m!1346441 () Bool)

(assert (=> b!1172241 m!1346441))

(assert (=> b!1172241 m!1346437))

(declare-fun m!1346443 () Bool)

(assert (=> b!1172241 m!1346443))

(declare-fun m!1346445 () Bool)

(assert (=> b!1172241 m!1346445))

(assert (=> b!1172241 m!1344765))

(assert (=> b!1172241 m!1344801))

(declare-fun m!1346447 () Bool)

(assert (=> b!1172241 m!1346447))

(declare-fun m!1346449 () Bool)

(assert (=> b!1172241 m!1346449))

(declare-fun m!1346451 () Bool)

(assert (=> b!1172241 m!1346451))

(assert (=> b!1172241 m!1346443))

(declare-fun m!1346453 () Bool)

(assert (=> b!1172241 m!1346453))

(assert (=> b!1172241 m!1344251))

(declare-fun m!1346455 () Bool)

(assert (=> b!1172241 m!1346455))

(declare-fun m!1346457 () Bool)

(assert (=> b!1172241 m!1346457))

(declare-fun m!1346459 () Bool)

(assert (=> b!1172241 m!1346459))

(assert (=> b!1172241 m!1344765))

(assert (=> b!1172241 m!1346427))

(declare-fun m!1346461 () Bool)

(assert (=> b!1172241 m!1346461))

(assert (=> b!1172241 m!1346439))

(declare-fun m!1346463 () Bool)

(assert (=> b!1172241 m!1346463))

(declare-fun m!1346465 () Bool)

(assert (=> b!1172241 m!1346465))

(assert (=> b!1172241 m!1346431))

(declare-fun m!1346467 () Bool)

(assert (=> b!1172241 m!1346467))

(assert (=> b!1172241 m!1344765))

(assert (=> b!1172241 m!1346437))

(declare-fun m!1346469 () Bool)

(assert (=> b!1172241 m!1346469))

(assert (=> b!1172241 m!1346437))

(declare-fun m!1346471 () Bool)

(assert (=> b!1172241 m!1346471))

(assert (=> b!1172241 m!1346435))

(declare-fun m!1346473 () Bool)

(assert (=> b!1172241 m!1346473))

(declare-fun m!1346475 () Bool)

(assert (=> b!1172241 m!1346475))

(declare-fun m!1346477 () Bool)

(assert (=> b!1172245 m!1346477))

(assert (=> b!1172248 m!1344167))

(declare-fun m!1346479 () Bool)

(assert (=> b!1172247 m!1346479))

(assert (=> b!1172244 m!1344215))

(declare-fun m!1346481 () Bool)

(assert (=> b!1172246 m!1346481))

(assert (=> b!1172243 m!1344261))

(declare-fun m!1346483 () Bool)

(assert (=> d!335469 m!1346483))

(assert (=> d!335469 m!1344261))

(declare-fun m!1346485 () Bool)

(assert (=> d!335469 m!1346485))

(declare-fun m!1346487 () Bool)

(assert (=> d!335469 m!1346487))

(assert (=> d!335469 m!1346485))

(declare-fun m!1346489 () Bool)

(assert (=> d!335469 m!1346489))

(declare-fun m!1346491 () Bool)

(assert (=> d!335469 m!1346491))

(declare-fun m!1346493 () Bool)

(assert (=> d!335469 m!1346493))

(assert (=> d!335469 m!1346489))

(declare-fun m!1346495 () Bool)

(assert (=> d!335469 m!1346495))

(assert (=> d!335469 m!1344251))

(declare-fun m!1346497 () Bool)

(assert (=> b!1172242 m!1346497))

(assert (=> b!1171353 d!335469))

(declare-fun d!335471 () Bool)

(assert (=> d!335471 (= (separableTokens!152 Lexer!1714 (tokens!1654 thiss!10527) (rules!9642 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 (tokens!1654 thiss!10527) 0 (rules!9642 thiss!10527)))))

(declare-fun bs!285830 () Bool)

(assert (= bs!285830 d!335471))

(assert (=> bs!285830 m!1344171))

(assert (=> b!1171479 d!335471))

(assert (=> b!1171245 d!334959))

(declare-fun bs!285831 () Bool)

(declare-fun d!335473 () Bool)

(assert (= bs!285831 (and d!335473 d!334979)))

(declare-fun lambda!48236 () Int)

(assert (=> bs!285831 (= lambda!48236 lambda!48224)))

(declare-fun bs!285832 () Bool)

(assert (= bs!285832 (and d!335473 d!334973)))

(assert (=> bs!285832 (= lambda!48236 lambda!48223)))

(declare-fun bs!285833 () Bool)

(assert (= bs!285833 (and d!335473 d!334961)))

(assert (=> bs!285833 (= lambda!48236 lambda!48222)))

(declare-fun bs!285834 () Bool)

(assert (= bs!285834 (and d!335473 d!335043)))

(assert (=> bs!285834 (= lambda!48236 lambda!48226)))

(declare-fun bs!285835 () Bool)

(assert (= bs!285835 (and d!335473 d!335095)))

(assert (=> bs!285835 (= lambda!48236 lambda!48227)))

(declare-fun bs!285836 () Bool)

(assert (= bs!285836 (and d!335473 b!1171109)))

(assert (=> bs!285836 (= lambda!48236 lambda!48203)))

(declare-fun bs!285837 () Bool)

(assert (= bs!285837 (and d!335473 d!334933)))

(assert (=> bs!285837 (= lambda!48236 lambda!48217)))

(declare-fun b!1172253 () Bool)

(declare-fun e!751806 () Bool)

(assert (=> b!1172253 (= e!751806 true)))

(declare-fun b!1172252 () Bool)

(declare-fun e!751805 () Bool)

(assert (=> b!1172252 (= e!751805 e!751806)))

(declare-fun b!1172251 () Bool)

(declare-fun e!751804 () Bool)

(assert (=> b!1172251 (= e!751804 e!751805)))

(assert (=> d!335473 e!751804))

(assert (= b!1172252 b!1172253))

(assert (= b!1172251 b!1172252))

(assert (= (and d!335473 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1172251))

(assert (=> b!1172253 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48236))))

(assert (=> b!1172253 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48236))))

(assert (=> d!335473 true))

(declare-fun lt!402563 () Bool)

(assert (=> d!335473 (= lt!402563 (forall!3066 (t!110758 (t!110758 lt!401773)) lambda!48236))))

(declare-fun e!751802 () Bool)

(assert (=> d!335473 (= lt!402563 e!751802)))

(declare-fun res!529657 () Bool)

(assert (=> d!335473 (=> res!529657 e!751802)))

(assert (=> d!335473 (= res!529657 (not ((_ is Cons!11590) (t!110758 (t!110758 lt!401773)))))))

(assert (=> d!335473 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335473 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 (t!110758 lt!401773))) lt!402563)))

(declare-fun b!1172249 () Bool)

(declare-fun e!751803 () Bool)

(assert (=> b!1172249 (= e!751802 e!751803)))

(declare-fun res!529658 () Bool)

(assert (=> b!1172249 (=> (not res!529658) (not e!751803))))

(assert (=> b!1172249 (= res!529658 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (t!110758 lt!401773)))))))

(declare-fun b!1172250 () Bool)

(assert (=> b!1172250 (= e!751803 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 (t!110758 (t!110758 lt!401773)))))))

(assert (= (and d!335473 (not res!529657)) b!1172249))

(assert (= (and b!1172249 res!529658) b!1172250))

(declare-fun m!1346499 () Bool)

(assert (=> d!335473 m!1346499))

(assert (=> d!335473 m!1344215))

(declare-fun m!1346501 () Bool)

(assert (=> b!1172249 m!1346501))

(declare-fun m!1346503 () Bool)

(assert (=> b!1172250 m!1346503))

(assert (=> b!1171356 d!335473))

(declare-fun d!335475 () Bool)

(declare-fun lt!402568 () Int)

(assert (=> d!335475 (>= lt!402568 0)))

(declare-fun e!751815 () Int)

(assert (=> d!335475 (= lt!402568 e!751815)))

(declare-fun c!195542 () Bool)

(assert (=> d!335475 (= c!195542 ((_ is Nil!11590) (list!4274 (tokens!1654 thiss!10527))))))

(assert (=> d!335475 (= (size!9142 (list!4274 (tokens!1654 thiss!10527))) lt!402568)))

(declare-fun b!1172268 () Bool)

(assert (=> b!1172268 (= e!751815 0)))

(declare-fun b!1172269 () Bool)

(assert (=> b!1172269 (= e!751815 (+ 1 (size!9142 (t!110758 (list!4274 (tokens!1654 thiss!10527))))))))

(assert (= (and d!335475 c!195542) b!1172268))

(assert (= (and d!335475 (not c!195542)) b!1172269))

(declare-fun m!1346505 () Bool)

(assert (=> b!1172269 m!1346505))

(assert (=> d!334959 d!335475))

(assert (=> d!334959 d!334969))

(declare-fun d!335477 () Bool)

(declare-fun lt!402571 () Int)

(assert (=> d!335477 (= lt!402571 (size!9142 (list!4277 (c!195327 (tokens!1654 thiss!10527)))))))

(assert (=> d!335477 (= lt!402571 (ite ((_ is Empty!3805) (c!195327 (tokens!1654 thiss!10527))) 0 (ite ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527))) (csize!7841 (c!195327 (tokens!1654 thiss!10527))) (csize!7840 (c!195327 (tokens!1654 thiss!10527))))))))

(assert (=> d!335477 (= (size!9143 (c!195327 (tokens!1654 thiss!10527))) lt!402571)))

(declare-fun bs!285838 () Bool)

(assert (= bs!285838 d!335477))

(assert (=> bs!285838 m!1344673))

(assert (=> bs!285838 m!1344673))

(declare-fun m!1346507 () Bool)

(assert (=> bs!285838 m!1346507))

(assert (=> d!334959 d!335477))

(declare-fun d!335479 () Bool)

(assert (=> d!335479 (= (dropList!325 lt!401775 0) (drop!493 (list!4277 (c!195327 lt!401775)) 0))))

(declare-fun bs!285840 () Bool)

(assert (= bs!285840 d!335479))

(assert (=> bs!285840 m!1344443))

(assert (=> bs!285840 m!1344443))

(declare-fun m!1346521 () Bool)

(assert (=> bs!285840 m!1346521))

(assert (=> d!334903 d!335479))

(declare-fun d!335483 () Bool)

(declare-fun res!529663 () Bool)

(declare-fun e!751823 () Bool)

(assert (=> d!335483 (=> res!529663 e!751823)))

(assert (=> d!335483 (= res!529663 ((_ is Nil!11590) (drop!493 lt!401921 0)))))

(assert (=> d!335483 (= (subseq!271 (drop!493 lt!401921 0) lt!401921) e!751823)))

(declare-fun b!1172279 () Bool)

(declare-fun e!751822 () Bool)

(assert (=> b!1172279 (= e!751822 (subseq!271 (t!110758 (drop!493 lt!401921 0)) (t!110758 lt!401921)))))

(declare-fun b!1172277 () Bool)

(declare-fun e!751820 () Bool)

(assert (=> b!1172277 (= e!751823 e!751820)))

(declare-fun res!529662 () Bool)

(assert (=> b!1172277 (=> (not res!529662) (not e!751820))))

(assert (=> b!1172277 (= res!529662 ((_ is Cons!11590) lt!401921))))

(declare-fun b!1172278 () Bool)

(declare-fun e!751821 () Bool)

(assert (=> b!1172278 (= e!751820 e!751821)))

(declare-fun res!529664 () Bool)

(assert (=> b!1172278 (=> res!529664 e!751821)))

(assert (=> b!1172278 (= res!529664 e!751822)))

(declare-fun res!529665 () Bool)

(assert (=> b!1172278 (=> (not res!529665) (not e!751822))))

(assert (=> b!1172278 (= res!529665 (= (h!16991 (drop!493 lt!401921 0)) (h!16991 lt!401921)))))

(declare-fun b!1172280 () Bool)

(assert (=> b!1172280 (= e!751821 (subseq!271 (drop!493 lt!401921 0) (t!110758 lt!401921)))))

(assert (= (and d!335483 (not res!529663)) b!1172277))

(assert (= (and b!1172277 res!529662) b!1172278))

(assert (= (and b!1172278 res!529665) b!1172279))

(assert (= (and b!1172278 (not res!529664)) b!1172280))

(declare-fun m!1346531 () Bool)

(assert (=> b!1172279 m!1346531))

(assert (=> b!1172280 m!1344425))

(declare-fun m!1346533 () Bool)

(assert (=> b!1172280 m!1346533))

(assert (=> d!334903 d!335483))

(declare-fun bs!285842 () Bool)

(declare-fun d!335489 () Bool)

(assert (= bs!285842 (and d!335489 d!334979)))

(declare-fun lambda!48237 () Int)

(assert (=> bs!285842 (= lambda!48237 lambda!48224)))

(declare-fun bs!285843 () Bool)

(assert (= bs!285843 (and d!335489 d!334973)))

(assert (=> bs!285843 (= lambda!48237 lambda!48223)))

(declare-fun bs!285844 () Bool)

(assert (= bs!285844 (and d!335489 d!335473)))

(assert (=> bs!285844 (= lambda!48237 lambda!48236)))

(declare-fun bs!285845 () Bool)

(assert (= bs!285845 (and d!335489 d!334961)))

(assert (=> bs!285845 (= lambda!48237 lambda!48222)))

(declare-fun bs!285846 () Bool)

(assert (= bs!285846 (and d!335489 d!335043)))

(assert (=> bs!285846 (= lambda!48237 lambda!48226)))

(declare-fun bs!285847 () Bool)

(assert (= bs!285847 (and d!335489 d!335095)))

(assert (=> bs!285847 (= lambda!48237 lambda!48227)))

(declare-fun bs!285848 () Bool)

(assert (= bs!285848 (and d!335489 b!1171109)))

(assert (=> bs!285848 (= lambda!48237 lambda!48203)))

(declare-fun bs!285849 () Bool)

(assert (= bs!285849 (and d!335489 d!334933)))

(assert (=> bs!285849 (= lambda!48237 lambda!48217)))

(declare-fun b!1172288 () Bool)

(declare-fun e!751830 () Bool)

(assert (=> b!1172288 (= e!751830 true)))

(declare-fun b!1172287 () Bool)

(declare-fun e!751829 () Bool)

(assert (=> b!1172287 (= e!751829 e!751830)))

(declare-fun b!1172286 () Bool)

(declare-fun e!751828 () Bool)

(assert (=> b!1172286 (= e!751828 e!751829)))

(assert (=> d!335489 e!751828))

(assert (= b!1172287 b!1172288))

(assert (= b!1172286 b!1172287))

(assert (= (and d!335489 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1172286))

(assert (=> b!1172288 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48237))))

(assert (=> b!1172288 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48237))))

(assert (=> d!335489 true))

(declare-fun lt!402577 () Bool)

(assert (=> d!335489 (= lt!402577 (forall!3066 lt!401925 lambda!48237))))

(declare-fun e!751826 () Bool)

(assert (=> d!335489 (= lt!402577 e!751826)))

(declare-fun res!529667 () Bool)

(assert (=> d!335489 (=> res!529667 e!751826)))

(assert (=> d!335489 (= res!529667 (not ((_ is Cons!11590) lt!401925)))))

(assert (=> d!335489 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335489 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401925) lt!402577)))

(declare-fun b!1172284 () Bool)

(declare-fun e!751827 () Bool)

(assert (=> b!1172284 (= e!751826 e!751827)))

(declare-fun res!529668 () Bool)

(assert (=> b!1172284 (=> (not res!529668) (not e!751827))))

(assert (=> b!1172284 (= res!529668 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401925)))))

(declare-fun b!1172285 () Bool)

(assert (=> b!1172285 (= e!751827 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!401925)))))

(assert (= (and d!335489 (not res!529667)) b!1172284))

(assert (= (and b!1172284 res!529668) b!1172285))

(declare-fun m!1346551 () Bool)

(assert (=> d!335489 m!1346551))

(assert (=> d!335489 m!1344215))

(declare-fun m!1346553 () Bool)

(assert (=> b!1172284 m!1346553))

(declare-fun m!1346555 () Bool)

(assert (=> b!1172285 m!1346555))

(assert (=> d!334903 d!335489))

(declare-fun d!335499 () Bool)

(declare-fun lt!402581 () Int)

(assert (=> d!335499 (= lt!402581 (size!9142 (list!4274 lt!401775)))))

(assert (=> d!335499 (= lt!402581 (size!9143 (c!195327 lt!401775)))))

(assert (=> d!335499 (= (size!9137 lt!401775) lt!402581)))

(declare-fun bs!285850 () Bool)

(assert (= bs!285850 d!335499))

(assert (=> bs!285850 m!1344231))

(assert (=> bs!285850 m!1344231))

(declare-fun m!1346559 () Bool)

(assert (=> bs!285850 m!1346559))

(declare-fun m!1346563 () Bool)

(assert (=> bs!285850 m!1346563))

(assert (=> d!334903 d!335499))

(declare-fun d!335501 () Bool)

(assert (=> d!335501 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401925)))

(declare-fun lt!402676 () Unit!17788)

(declare-fun choose!7572 (LexerInterface!1716 List!11615 List!11614 List!11614) Unit!17788)

(assert (=> d!335501 (= lt!402676 (choose!7572 Lexer!1714 (rules!9642 thiss!10527) lt!401918 lt!401925))))

(assert (=> d!335501 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335501 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!401918 lt!401925) lt!402676)))

(declare-fun bs!285910 () Bool)

(assert (= bs!285910 d!335501))

(assert (=> bs!285910 m!1344427))

(declare-fun m!1347049 () Bool)

(assert (=> bs!285910 m!1347049))

(assert (=> bs!285910 m!1344215))

(assert (=> d!334903 d!335501))

(declare-fun d!335651 () Bool)

(declare-fun res!529778 () Bool)

(declare-fun e!751976 () Bool)

(assert (=> d!335651 (=> res!529778 e!751976)))

(assert (=> d!335651 (= res!529778 (or (not ((_ is Cons!11590) (dropList!325 lt!401775 0))) (not ((_ is Cons!11590) (t!110758 (dropList!325 lt!401775 0))))))))

(assert (=> d!335651 (= (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 lt!401775 0) (rules!9642 thiss!10527)) e!751976)))

(declare-fun b!1172493 () Bool)

(declare-fun e!751977 () Bool)

(assert (=> b!1172493 (= e!751976 e!751977)))

(declare-fun res!529777 () Bool)

(assert (=> b!1172493 (=> (not res!529777) (not e!751977))))

(assert (=> b!1172493 (= res!529777 (separableTokensPredicate!138 Lexer!1714 (h!16991 (dropList!325 lt!401775 0)) (h!16991 (t!110758 (dropList!325 lt!401775 0))) (rules!9642 thiss!10527)))))

(declare-fun lt!402680 () Unit!17788)

(declare-fun Unit!17828 () Unit!17788)

(assert (=> b!1172493 (= lt!402680 Unit!17828)))

(assert (=> b!1172493 (> (size!9136 (charsOf!1076 (h!16991 (t!110758 (dropList!325 lt!401775 0))))) 0)))

(declare-fun lt!402682 () Unit!17788)

(declare-fun Unit!17829 () Unit!17788)

(assert (=> b!1172493 (= lt!402682 Unit!17829)))

(assert (=> b!1172493 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (dropList!325 lt!401775 0))))))

(declare-fun lt!402678 () Unit!17788)

(declare-fun Unit!17830 () Unit!17788)

(assert (=> b!1172493 (= lt!402678 Unit!17830)))

(assert (=> b!1172493 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (dropList!325 lt!401775 0)))))

(declare-fun lt!402683 () Unit!17788)

(declare-fun lt!402681 () Unit!17788)

(assert (=> b!1172493 (= lt!402683 lt!402681)))

(assert (=> b!1172493 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (dropList!325 lt!401775 0))))))

(assert (=> b!1172493 (= lt!402681 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) (dropList!325 lt!401775 0) (h!16991 (t!110758 (dropList!325 lt!401775 0)))))))

(declare-fun lt!402679 () Unit!17788)

(declare-fun lt!402677 () Unit!17788)

(assert (=> b!1172493 (= lt!402679 lt!402677)))

(assert (=> b!1172493 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (dropList!325 lt!401775 0)))))

(assert (=> b!1172493 (= lt!402677 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) (dropList!325 lt!401775 0) (h!16991 (dropList!325 lt!401775 0))))))

(declare-fun b!1172494 () Bool)

(assert (=> b!1172494 (= e!751977 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (Cons!11590 (h!16991 (t!110758 (dropList!325 lt!401775 0))) (t!110758 (t!110758 (dropList!325 lt!401775 0)))) (rules!9642 thiss!10527)))))

(assert (= (and d!335651 (not res!529778)) b!1172493))

(assert (= (and b!1172493 res!529777) b!1172494))

(declare-fun m!1347051 () Bool)

(assert (=> b!1172493 m!1347051))

(declare-fun m!1347053 () Bool)

(assert (=> b!1172493 m!1347053))

(declare-fun m!1347055 () Bool)

(assert (=> b!1172493 m!1347055))

(assert (=> b!1172493 m!1344421))

(declare-fun m!1347057 () Bool)

(assert (=> b!1172493 m!1347057))

(declare-fun m!1347059 () Bool)

(assert (=> b!1172493 m!1347059))

(assert (=> b!1172493 m!1347053))

(declare-fun m!1347061 () Bool)

(assert (=> b!1172493 m!1347061))

(assert (=> b!1172493 m!1344421))

(declare-fun m!1347063 () Bool)

(assert (=> b!1172493 m!1347063))

(declare-fun m!1347065 () Bool)

(assert (=> b!1172494 m!1347065))

(assert (=> d!334903 d!335651))

(assert (=> d!334903 d!334939))

(declare-fun d!335653 () Bool)

(assert (=> d!335653 (subseq!271 (drop!493 lt!401921 0) lt!401921)))

(declare-fun lt!402696 () Unit!17788)

(declare-fun choose!7573 (List!11614 Int) Unit!17788)

(assert (=> d!335653 (= lt!402696 (choose!7573 lt!401921 0))))

(declare-fun e!751988 () Bool)

(assert (=> d!335653 e!751988))

(declare-fun res!529785 () Bool)

(assert (=> d!335653 (=> (not res!529785) (not e!751988))))

(assert (=> d!335653 (= res!529785 (>= 0 0))))

(assert (=> d!335653 (= (lemmaDropSubSeq!33 lt!401921 0) lt!402696)))

(declare-fun b!1172513 () Bool)

(assert (=> b!1172513 (= e!751988 (<= 0 (size!9142 lt!401921)))))

(assert (= (and d!335653 res!529785) b!1172513))

(assert (=> d!335653 m!1344425))

(assert (=> d!335653 m!1344425))

(assert (=> d!335653 m!1344431))

(declare-fun m!1347067 () Bool)

(assert (=> d!335653 m!1347067))

(assert (=> b!1172513 m!1344433))

(assert (=> d!334903 d!335653))

(declare-fun b!1172522 () Bool)

(declare-fun e!751995 () Int)

(declare-fun call!82328 () Int)

(assert (=> b!1172522 (= e!751995 (- call!82328 0))))

(declare-fun b!1172526 () Bool)

(declare-fun e!751993 () Bool)

(declare-fun lt!402697 () List!11614)

(declare-fun e!751997 () Int)

(assert (=> b!1172526 (= e!751993 (= (size!9142 lt!402697) e!751997))))

(declare-fun c!195600 () Bool)

(assert (=> b!1172526 (= c!195600 (<= 0 0))))

(declare-fun b!1172527 () Bool)

(declare-fun e!751996 () List!11614)

(assert (=> b!1172527 (= e!751996 (drop!493 (t!110758 lt!401921) (- 0 1)))))

(declare-fun b!1172528 () Bool)

(assert (=> b!1172528 (= e!751997 call!82328)))

(declare-fun b!1172529 () Bool)

(assert (=> b!1172529 (= e!751995 0)))

(declare-fun b!1172530 () Bool)

(assert (=> b!1172530 (= e!751997 e!751995)))

(declare-fun c!195601 () Bool)

(assert (=> b!1172530 (= c!195601 (>= 0 call!82328))))

(declare-fun bm!82323 () Bool)

(assert (=> bm!82323 (= call!82328 (size!9142 lt!401921))))

(declare-fun b!1172533 () Bool)

(declare-fun e!751994 () List!11614)

(assert (=> b!1172533 (= e!751994 Nil!11590)))

(declare-fun b!1172534 () Bool)

(assert (=> b!1172534 (= e!751996 lt!401921)))

(declare-fun b!1172523 () Bool)

(assert (=> b!1172523 (= e!751994 e!751996)))

(declare-fun c!195603 () Bool)

(assert (=> b!1172523 (= c!195603 (<= 0 0))))

(declare-fun d!335655 () Bool)

(assert (=> d!335655 e!751993))

(declare-fun res!529786 () Bool)

(assert (=> d!335655 (=> (not res!529786) (not e!751993))))

(assert (=> d!335655 (= res!529786 (= ((_ map implies) (content!1614 lt!402697) (content!1614 lt!401921)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335655 (= lt!402697 e!751994)))

(declare-fun c!195602 () Bool)

(assert (=> d!335655 (= c!195602 ((_ is Nil!11590) lt!401921))))

(assert (=> d!335655 (= (drop!493 lt!401921 0) lt!402697)))

(assert (= (and d!335655 c!195602) b!1172533))

(assert (= (and d!335655 (not c!195602)) b!1172523))

(assert (= (and b!1172523 c!195603) b!1172534))

(assert (= (and b!1172523 (not c!195603)) b!1172527))

(assert (= (and d!335655 res!529786) b!1172526))

(assert (= (and b!1172526 c!195600) b!1172528))

(assert (= (and b!1172526 (not c!195600)) b!1172530))

(assert (= (and b!1172530 c!195601) b!1172529))

(assert (= (and b!1172530 (not c!195601)) b!1172522))

(assert (= (or b!1172528 b!1172530 b!1172522) bm!82323))

(declare-fun m!1347069 () Bool)

(assert (=> b!1172526 m!1347069))

(declare-fun m!1347071 () Bool)

(assert (=> b!1172527 m!1347071))

(assert (=> bm!82323 m!1344433))

(declare-fun m!1347073 () Bool)

(assert (=> d!335655 m!1347073))

(declare-fun m!1347075 () Bool)

(assert (=> d!335655 m!1347075))

(assert (=> d!334903 d!335655))

(assert (=> b!1171625 d!334979))

(declare-fun d!335657 () Bool)

(declare-fun c!195606 () Bool)

(assert (=> d!335657 (= c!195606 ((_ is Nil!11590) lt!402280))))

(declare-fun e!752000 () (InoxSet Token!3704))

(assert (=> d!335657 (= (content!1614 lt!402280) e!752000)))

(declare-fun b!1172535 () Bool)

(assert (=> b!1172535 (= e!752000 ((as const (Array Token!3704 Bool)) false))))

(declare-fun b!1172536 () Bool)

(assert (=> b!1172536 (= e!752000 ((_ map or) (store ((as const (Array Token!3704 Bool)) false) (h!16991 lt!402280) true) (content!1614 (t!110758 lt!402280))))))

(assert (= (and d!335657 c!195606) b!1172535))

(assert (= (and d!335657 (not c!195606)) b!1172536))

(declare-fun m!1347077 () Bool)

(assert (=> b!1172536 m!1347077))

(declare-fun m!1347079 () Bool)

(assert (=> b!1172536 m!1347079))

(assert (=> d!335079 d!335657))

(assert (=> d!335079 d!335397))

(declare-fun d!335659 () Bool)

(assert (=> d!335659 (= (inv!15300 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))) (<= (size!9142 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527))))) 2147483647))))

(declare-fun bs!285911 () Bool)

(assert (= bs!285911 d!335659))

(declare-fun m!1347081 () Bool)

(assert (=> bs!285911 m!1347081))

(assert (=> b!1171668 d!335659))

(assert (=> b!1171560 d!335393))

(declare-fun b!1172549 () Bool)

(declare-fun e!752009 () Int)

(declare-fun call!82335 () Int)

(assert (=> b!1172549 (= e!752009 (- call!82335 (- 1 1)))))

(declare-fun b!1172551 () Bool)

(declare-fun e!752007 () Bool)

(declare-fun lt!402698 () List!11614)

(declare-fun e!752011 () Int)

(assert (=> b!1172551 (= e!752007 (= (size!9142 lt!402698) e!752011))))

(declare-fun c!195613 () Bool)

(assert (=> b!1172551 (= c!195613 (<= (- 1 1) 0))))

(declare-fun b!1172552 () Bool)

(declare-fun e!752010 () List!11614)

(assert (=> b!1172552 (= e!752010 (drop!493 (t!110758 (t!110758 lt!401774)) (- (- 1 1) 1)))))

(declare-fun b!1172553 () Bool)

(assert (=> b!1172553 (= e!752011 call!82335)))

(declare-fun b!1172554 () Bool)

(assert (=> b!1172554 (= e!752009 0)))

(declare-fun b!1172555 () Bool)

(assert (=> b!1172555 (= e!752011 e!752009)))

(declare-fun c!195614 () Bool)

(assert (=> b!1172555 (= c!195614 (>= (- 1 1) call!82335))))

(declare-fun bm!82330 () Bool)

(assert (=> bm!82330 (= call!82335 (size!9142 (t!110758 lt!401774)))))

(declare-fun b!1172556 () Bool)

(declare-fun e!752008 () List!11614)

(assert (=> b!1172556 (= e!752008 Nil!11590)))

(declare-fun b!1172557 () Bool)

(assert (=> b!1172557 (= e!752010 (t!110758 lt!401774))))

(declare-fun b!1172550 () Bool)

(assert (=> b!1172550 (= e!752008 e!752010)))

(declare-fun c!195616 () Bool)

(assert (=> b!1172550 (= c!195616 (<= (- 1 1) 0))))

(declare-fun d!335661 () Bool)

(assert (=> d!335661 e!752007))

(declare-fun res!529787 () Bool)

(assert (=> d!335661 (=> (not res!529787) (not e!752007))))

(assert (=> d!335661 (= res!529787 (= ((_ map implies) (content!1614 lt!402698) (content!1614 (t!110758 lt!401774))) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335661 (= lt!402698 e!752008)))

(declare-fun c!195615 () Bool)

(assert (=> d!335661 (= c!195615 ((_ is Nil!11590) (t!110758 lt!401774)))))

(assert (=> d!335661 (= (drop!493 (t!110758 lt!401774) (- 1 1)) lt!402698)))

(assert (= (and d!335661 c!195615) b!1172556))

(assert (= (and d!335661 (not c!195615)) b!1172550))

(assert (= (and b!1172550 c!195616) b!1172557))

(assert (= (and b!1172550 (not c!195616)) b!1172552))

(assert (= (and d!335661 res!529787) b!1172551))

(assert (= (and b!1172551 c!195613) b!1172553))

(assert (= (and b!1172551 (not c!195613)) b!1172555))

(assert (= (and b!1172555 c!195614) b!1172554))

(assert (= (and b!1172555 (not c!195614)) b!1172549))

(assert (= (or b!1172553 b!1172555 b!1172549) bm!82330))

(declare-fun m!1347083 () Bool)

(assert (=> b!1172551 m!1347083))

(declare-fun m!1347085 () Bool)

(assert (=> b!1172552 m!1347085))

(assert (=> bm!82330 m!1346081))

(declare-fun m!1347087 () Bool)

(assert (=> d!335661 m!1347087))

(assert (=> d!335661 m!1346085))

(assert (=> b!1171597 d!335661))

(declare-fun d!335663 () Bool)

(declare-fun lt!402699 () Int)

(assert (=> d!335663 (>= lt!402699 0)))

(declare-fun e!752012 () Int)

(assert (=> d!335663 (= lt!402699 e!752012)))

(declare-fun c!195617 () Bool)

(assert (=> d!335663 (= c!195617 ((_ is Nil!11590) lt!402282))))

(assert (=> d!335663 (= (size!9142 lt!402282) lt!402699)))

(declare-fun b!1172558 () Bool)

(assert (=> b!1172558 (= e!752012 0)))

(declare-fun b!1172559 () Bool)

(assert (=> b!1172559 (= e!752012 (+ 1 (size!9142 (t!110758 lt!402282))))))

(assert (= (and d!335663 c!195617) b!1172558))

(assert (= (and d!335663 (not c!195617)) b!1172559))

(declare-fun m!1347089 () Bool)

(assert (=> b!1172559 m!1347089))

(assert (=> b!1171606 d!335663))

(declare-fun b!1172560 () Bool)

(declare-fun e!752015 () Int)

(declare-fun call!82340 () Int)

(assert (=> b!1172560 (= e!752015 (- call!82340 (- 2 1)))))

(declare-fun b!1172562 () Bool)

(declare-fun e!752013 () Bool)

(declare-fun lt!402700 () List!11614)

(declare-fun e!752017 () Int)

(assert (=> b!1172562 (= e!752013 (= (size!9142 lt!402700) e!752017))))

(declare-fun c!195618 () Bool)

(assert (=> b!1172562 (= c!195618 (<= (- 2 1) 0))))

(declare-fun b!1172563 () Bool)

(declare-fun e!752016 () List!11614)

(assert (=> b!1172563 (= e!752016 (drop!493 (t!110758 (t!110758 lt!401774)) (- (- 2 1) 1)))))

(declare-fun b!1172564 () Bool)

(assert (=> b!1172564 (= e!752017 call!82340)))

(declare-fun b!1172565 () Bool)

(assert (=> b!1172565 (= e!752015 0)))

(declare-fun b!1172566 () Bool)

(assert (=> b!1172566 (= e!752017 e!752015)))

(declare-fun c!195619 () Bool)

(assert (=> b!1172566 (= c!195619 (>= (- 2 1) call!82340))))

(declare-fun bm!82335 () Bool)

(assert (=> bm!82335 (= call!82340 (size!9142 (t!110758 lt!401774)))))

(declare-fun b!1172567 () Bool)

(declare-fun e!752014 () List!11614)

(assert (=> b!1172567 (= e!752014 Nil!11590)))

(declare-fun b!1172568 () Bool)

(assert (=> b!1172568 (= e!752016 (t!110758 lt!401774))))

(declare-fun b!1172561 () Bool)

(assert (=> b!1172561 (= e!752014 e!752016)))

(declare-fun c!195621 () Bool)

(assert (=> b!1172561 (= c!195621 (<= (- 2 1) 0))))

(declare-fun d!335665 () Bool)

(assert (=> d!335665 e!752013))

(declare-fun res!529788 () Bool)

(assert (=> d!335665 (=> (not res!529788) (not e!752013))))

(assert (=> d!335665 (= res!529788 (= ((_ map implies) (content!1614 lt!402700) (content!1614 (t!110758 lt!401774))) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335665 (= lt!402700 e!752014)))

(declare-fun c!195620 () Bool)

(assert (=> d!335665 (= c!195620 ((_ is Nil!11590) (t!110758 lt!401774)))))

(assert (=> d!335665 (= (drop!493 (t!110758 lt!401774) (- 2 1)) lt!402700)))

(assert (= (and d!335665 c!195620) b!1172567))

(assert (= (and d!335665 (not c!195620)) b!1172561))

(assert (= (and b!1172561 c!195621) b!1172568))

(assert (= (and b!1172561 (not c!195621)) b!1172563))

(assert (= (and d!335665 res!529788) b!1172562))

(assert (= (and b!1172562 c!195618) b!1172564))

(assert (= (and b!1172562 (not c!195618)) b!1172566))

(assert (= (and b!1172566 c!195619) b!1172565))

(assert (= (and b!1172566 (not c!195619)) b!1172560))

(assert (= (or b!1172564 b!1172566 b!1172560) bm!82335))

(declare-fun m!1347091 () Bool)

(assert (=> b!1172562 m!1347091))

(declare-fun m!1347093 () Bool)

(assert (=> b!1172563 m!1347093))

(assert (=> bm!82335 m!1346081))

(declare-fun m!1347095 () Bool)

(assert (=> d!335665 m!1347095))

(assert (=> d!335665 m!1346085))

(assert (=> b!1171617 d!335665))

(assert (=> b!1171215 d!334887))

(assert (=> bm!82287 d!335393))

(declare-fun d!335667 () Bool)

(declare-fun c!195626 () Bool)

(assert (=> d!335667 (= c!195626 ((_ is Empty!3805) (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun e!752024 () List!11614)

(assert (=> d!335667 (= (list!4277 (c!195327 (tokens!1654 thiss!10527))) e!752024)))

(declare-fun b!1172579 () Bool)

(assert (=> b!1172579 (= e!752024 Nil!11590)))

(declare-fun b!1172580 () Bool)

(declare-fun e!752025 () List!11614)

(assert (=> b!1172580 (= e!752024 e!752025)))

(declare-fun c!195627 () Bool)

(assert (=> b!1172580 (= c!195627 ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun b!1172581 () Bool)

(declare-fun list!4282 (IArray!7615) List!11614)

(assert (=> b!1172581 (= e!752025 (list!4282 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun b!1172582 () Bool)

(declare-fun ++!2998 (List!11614 List!11614) List!11614)

(assert (=> b!1172582 (= e!752025 (++!2998 (list!4277 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (list!4277 (right!10467 (c!195327 (tokens!1654 thiss!10527))))))))

(assert (= (and d!335667 c!195626) b!1172579))

(assert (= (and d!335667 (not c!195626)) b!1172580))

(assert (= (and b!1172580 c!195627) b!1172581))

(assert (= (and b!1172580 (not c!195627)) b!1172582))

(declare-fun m!1347097 () Bool)

(assert (=> b!1172581 m!1347097))

(assert (=> b!1172582 m!1346195))

(assert (=> b!1172582 m!1346197))

(assert (=> b!1172582 m!1346195))

(assert (=> b!1172582 m!1346197))

(declare-fun m!1347099 () Bool)

(assert (=> b!1172582 m!1347099))

(assert (=> d!334969 d!335667))

(declare-fun d!335669 () Bool)

(declare-fun res!529791 () Bool)

(declare-fun e!752026 () Bool)

(assert (=> d!335669 (=> res!529791 e!752026)))

(assert (=> d!335669 (= res!529791 ((_ is Nil!11590) (t!110758 lt!401774)))))

(assert (=> d!335669 (= (forall!3066 (t!110758 lt!401774) lambda!48217) e!752026)))

(declare-fun b!1172583 () Bool)

(declare-fun e!752027 () Bool)

(assert (=> b!1172583 (= e!752026 e!752027)))

(declare-fun res!529792 () Bool)

(assert (=> b!1172583 (=> (not res!529792) (not e!752027))))

(assert (=> b!1172583 (= res!529792 (dynLambda!5125 lambda!48217 (h!16991 (t!110758 lt!401774))))))

(declare-fun b!1172584 () Bool)

(assert (=> b!1172584 (= e!752027 (forall!3066 (t!110758 (t!110758 lt!401774)) lambda!48217))))

(assert (= (and d!335669 (not res!529791)) b!1172583))

(assert (= (and b!1172583 res!529792) b!1172584))

(declare-fun b_lambda!35035 () Bool)

(assert (=> (not b_lambda!35035) (not b!1172583)))

(declare-fun m!1347101 () Bool)

(assert (=> b!1172583 m!1347101))

(declare-fun m!1347103 () Bool)

(assert (=> b!1172584 m!1347103))

(assert (=> d!334933 d!335669))

(assert (=> d!334933 d!334887))

(assert (=> b!1171570 d!335393))

(declare-fun d!335671 () Bool)

(declare-fun lt!402703 () Bool)

(declare-fun isEmpty!7040 (List!11613) Bool)

(assert (=> d!335671 (= lt!402703 (isEmpty!7040 (list!4278 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))))))))))

(declare-fun isEmpty!7041 (Conc!3804) Bool)

(assert (=> d!335671 (= lt!402703 (isEmpty!7041 (c!195326 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774))))))))))

(assert (=> d!335671 (= (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401774)))))) lt!402703)))

(declare-fun bs!285912 () Bool)

(assert (= bs!285912 d!335671))

(declare-fun m!1347105 () Bool)

(assert (=> bs!285912 m!1347105))

(assert (=> bs!285912 m!1347105))

(declare-fun m!1347107 () Bool)

(assert (=> bs!285912 m!1347107))

(declare-fun m!1347109 () Bool)

(assert (=> bs!285912 m!1347109))

(assert (=> b!1171444 d!335671))

(assert (=> b!1171444 d!335185))

(assert (=> b!1171444 d!335179))

(assert (=> b!1171444 d!335183))

(assert (=> b!1171557 d!334959))

(assert (=> bm!82289 d!335393))

(declare-fun d!335673 () Bool)

(declare-fun lt!402704 () Int)

(assert (=> d!335673 (>= lt!402704 0)))

(declare-fun e!752028 () Int)

(assert (=> d!335673 (= lt!402704 e!752028)))

(declare-fun c!195628 () Bool)

(assert (=> d!335673 (= c!195628 ((_ is Nil!11590) lt!402135))))

(assert (=> d!335673 (= (size!9142 lt!402135) lt!402704)))

(declare-fun b!1172585 () Bool)

(assert (=> b!1172585 (= e!752028 0)))

(declare-fun b!1172586 () Bool)

(assert (=> b!1172586 (= e!752028 (+ 1 (size!9142 (t!110758 lt!402135))))))

(assert (= (and d!335673 c!195628) b!1172585))

(assert (= (and d!335673 (not c!195628)) b!1172586))

(declare-fun m!1347111 () Bool)

(assert (=> b!1172586 m!1347111))

(assert (=> b!1171340 d!335673))

(declare-fun bs!285913 () Bool)

(declare-fun d!335675 () Bool)

(assert (= bs!285913 (and d!335675 d!334979)))

(declare-fun lambda!48241 () Int)

(assert (=> bs!285913 (= lambda!48241 lambda!48224)))

(declare-fun bs!285914 () Bool)

(assert (= bs!285914 (and d!335675 d!334973)))

(assert (=> bs!285914 (= lambda!48241 lambda!48223)))

(declare-fun bs!285915 () Bool)

(assert (= bs!285915 (and d!335675 d!335473)))

(assert (=> bs!285915 (= lambda!48241 lambda!48236)))

(declare-fun bs!285916 () Bool)

(assert (= bs!285916 (and d!335675 d!334961)))

(assert (=> bs!285916 (= lambda!48241 lambda!48222)))

(declare-fun bs!285917 () Bool)

(assert (= bs!285917 (and d!335675 d!335489)))

(assert (=> bs!285917 (= lambda!48241 lambda!48237)))

(declare-fun bs!285918 () Bool)

(assert (= bs!285918 (and d!335675 d!335043)))

(assert (=> bs!285918 (= lambda!48241 lambda!48226)))

(declare-fun bs!285919 () Bool)

(assert (= bs!285919 (and d!335675 d!335095)))

(assert (=> bs!285919 (= lambda!48241 lambda!48227)))

(declare-fun bs!285920 () Bool)

(assert (= bs!285920 (and d!335675 b!1171109)))

(assert (=> bs!285920 (= lambda!48241 lambda!48203)))

(declare-fun bs!285921 () Bool)

(assert (= bs!285921 (and d!335675 d!334933)))

(assert (=> bs!285921 (= lambda!48241 lambda!48217)))

(declare-fun b!1172591 () Bool)

(declare-fun e!752033 () Bool)

(assert (=> b!1172591 (= e!752033 true)))

(declare-fun b!1172590 () Bool)

(declare-fun e!752032 () Bool)

(assert (=> b!1172590 (= e!752032 e!752033)))

(declare-fun b!1172589 () Bool)

(declare-fun e!752031 () Bool)

(assert (=> b!1172589 (= e!752031 e!752032)))

(assert (=> d!335675 e!752031))

(assert (= b!1172590 b!1172591))

(assert (= b!1172589 b!1172590))

(assert (= (and d!335675 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1172589))

(assert (=> b!1172591 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48241))))

(assert (=> b!1172591 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48241))))

(assert (=> d!335675 true))

(declare-fun lt!402705 () Bool)

(assert (=> d!335675 (= lt!402705 (forall!3066 (list!4274 (tokens!1654 thiss!10527)) lambda!48241))))

(declare-fun e!752029 () Bool)

(assert (=> d!335675 (= lt!402705 e!752029)))

(declare-fun res!529793 () Bool)

(assert (=> d!335675 (=> res!529793 e!752029)))

(assert (=> d!335675 (= res!529793 (not ((_ is Cons!11590) (list!4274 (tokens!1654 thiss!10527)))))))

(assert (=> d!335675 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335675 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (list!4274 (tokens!1654 thiss!10527))) lt!402705)))

(declare-fun b!1172587 () Bool)

(declare-fun e!752030 () Bool)

(assert (=> b!1172587 (= e!752029 e!752030)))

(declare-fun res!529794 () Bool)

(assert (=> b!1172587 (=> (not res!529794) (not e!752030))))

(assert (=> b!1172587 (= res!529794 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (list!4274 (tokens!1654 thiss!10527)))))))

(declare-fun b!1172588 () Bool)

(assert (=> b!1172588 (= e!752030 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 (list!4274 (tokens!1654 thiss!10527)))))))

(assert (= (and d!335675 (not res!529793)) b!1172587))

(assert (= (and b!1172587 res!529794) b!1172588))

(assert (=> d!335675 m!1344251))

(declare-fun m!1347113 () Bool)

(assert (=> d!335675 m!1347113))

(assert (=> d!335675 m!1344215))

(declare-fun m!1347115 () Bool)

(assert (=> b!1172587 m!1347115))

(declare-fun m!1347117 () Bool)

(assert (=> b!1172588 m!1347117))

(assert (=> b!1171330 d!335675))

(assert (=> b!1171330 d!334969))

(assert (=> b!1171568 d!335391))

(declare-fun b!1172633 () Bool)

(declare-fun res!529821 () Bool)

(declare-fun e!752055 () Bool)

(assert (=> b!1172633 (=> (not res!529821) (not e!752055))))

(assert (=> b!1172633 (= res!529821 (<= (- (height!517 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (height!517 (right!10467 (c!195327 (tokens!1654 thiss!10527))))) 1))))

(declare-fun b!1172634 () Bool)

(declare-fun res!529819 () Bool)

(assert (=> b!1172634 (=> (not res!529819) (not e!752055))))

(declare-fun isEmpty!7042 (Conc!3805) Bool)

(assert (=> b!1172634 (= res!529819 (not (isEmpty!7042 (left!10137 (c!195327 (tokens!1654 thiss!10527))))))))

(declare-fun d!335677 () Bool)

(declare-fun res!529823 () Bool)

(declare-fun e!752054 () Bool)

(assert (=> d!335677 (=> res!529823 e!752054)))

(assert (=> d!335677 (= res!529823 (not ((_ is Node!3805) (c!195327 (tokens!1654 thiss!10527)))))))

(assert (=> d!335677 (= (isBalanced!1073 (c!195327 (tokens!1654 thiss!10527))) e!752054)))

(declare-fun b!1172635 () Bool)

(declare-fun res!529822 () Bool)

(assert (=> b!1172635 (=> (not res!529822) (not e!752055))))

(assert (=> b!1172635 (= res!529822 (isBalanced!1073 (left!10137 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun b!1172636 () Bool)

(assert (=> b!1172636 (= e!752055 (not (isEmpty!7042 (right!10467 (c!195327 (tokens!1654 thiss!10527))))))))

(declare-fun b!1172637 () Bool)

(declare-fun res!529818 () Bool)

(assert (=> b!1172637 (=> (not res!529818) (not e!752055))))

(assert (=> b!1172637 (= res!529818 (isBalanced!1073 (right!10467 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun b!1172638 () Bool)

(assert (=> b!1172638 (= e!752054 e!752055)))

(declare-fun res!529820 () Bool)

(assert (=> b!1172638 (=> (not res!529820) (not e!752055))))

(assert (=> b!1172638 (= res!529820 (<= (- 1) (- (height!517 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (height!517 (right!10467 (c!195327 (tokens!1654 thiss!10527)))))))))

(assert (= (and d!335677 (not res!529823)) b!1172638))

(assert (= (and b!1172638 res!529820) b!1172633))

(assert (= (and b!1172633 res!529821) b!1172635))

(assert (= (and b!1172635 res!529822) b!1172637))

(assert (= (and b!1172637 res!529818) b!1172634))

(assert (= (and b!1172634 res!529819) b!1172636))

(assert (=> b!1172633 m!1346183))

(assert (=> b!1172633 m!1346185))

(declare-fun m!1347221 () Bool)

(assert (=> b!1172634 m!1347221))

(declare-fun m!1347223 () Bool)

(assert (=> b!1172635 m!1347223))

(declare-fun m!1347225 () Bool)

(assert (=> b!1172636 m!1347225))

(declare-fun m!1347227 () Bool)

(assert (=> b!1172637 m!1347227))

(assert (=> b!1172638 m!1346183))

(assert (=> b!1172638 m!1346185))

(assert (=> d!334937 d!335677))

(declare-fun d!335685 () Bool)

(declare-fun lt!402745 () Int)

(assert (=> d!335685 (>= lt!402745 0)))

(declare-fun e!752057 () Int)

(assert (=> d!335685 (= lt!402745 e!752057)))

(declare-fun c!195639 () Bool)

(assert (=> d!335685 (= c!195639 ((_ is Nil!11590) lt!402168))))

(assert (=> d!335685 (= (size!9142 lt!402168) lt!402745)))

(declare-fun b!1172641 () Bool)

(assert (=> b!1172641 (= e!752057 0)))

(declare-fun b!1172642 () Bool)

(assert (=> b!1172642 (= e!752057 (+ 1 (size!9142 (t!110758 lt!402168))))))

(assert (= (and d!335685 c!195639) b!1172641))

(assert (= (and d!335685 (not c!195639)) b!1172642))

(declare-fun m!1347229 () Bool)

(assert (=> b!1172642 m!1347229))

(assert (=> b!1171348 d!335685))

(assert (=> bs!285731 d!335047))

(assert (=> b!1171219 d!334985))

(assert (=> b!1171334 d!334999))

(declare-fun d!335687 () Bool)

(declare-fun lt!402746 () Bool)

(declare-fun e!752059 () Bool)

(assert (=> d!335687 (= lt!402746 e!752059)))

(declare-fun res!529824 () Bool)

(assert (=> d!335687 (=> (not res!529824) (not e!752059))))

(assert (=> d!335687 (= res!529824 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 (t!110758 lt!401773))))))) (list!4274 (singletonSeq!684 (h!16991 (t!110758 lt!401773))))))))

(declare-fun e!752058 () Bool)

(assert (=> d!335687 (= lt!402746 e!752058)))

(declare-fun res!529825 () Bool)

(assert (=> d!335687 (=> (not res!529825) (not e!752058))))

(declare-fun lt!402747 () tuple2!12048)

(assert (=> d!335687 (= res!529825 (= (size!9137 (_1!6871 lt!402747)) 1))))

(assert (=> d!335687 (= lt!402747 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 (t!110758 lt!401773))))))))

(assert (=> d!335687 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335687 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401773))) lt!402746)))

(declare-fun b!1172643 () Bool)

(declare-fun res!529826 () Bool)

(assert (=> b!1172643 (=> (not res!529826) (not e!752058))))

(assert (=> b!1172643 (= res!529826 (= (apply!2517 (_1!6871 lt!402747) 0) (h!16991 (t!110758 lt!401773))))))

(declare-fun b!1172644 () Bool)

(assert (=> b!1172644 (= e!752058 (isEmpty!7034 (_2!6871 lt!402747)))))

(declare-fun b!1172645 () Bool)

(assert (=> b!1172645 (= e!752059 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 (t!110758 lt!401773))))))))))

(assert (= (and d!335687 res!529825) b!1172643))

(assert (= (and b!1172643 res!529826) b!1172644))

(assert (= (and d!335687 res!529824) b!1172645))

(declare-fun m!1347231 () Bool)

(assert (=> d!335687 m!1347231))

(declare-fun m!1347233 () Bool)

(assert (=> d!335687 m!1347233))

(assert (=> d!335687 m!1344215))

(declare-fun m!1347235 () Bool)

(assert (=> d!335687 m!1347235))

(declare-fun m!1347237 () Bool)

(assert (=> d!335687 m!1347237))

(declare-fun m!1347239 () Bool)

(assert (=> d!335687 m!1347239))

(assert (=> d!335687 m!1347231))

(assert (=> d!335687 m!1347237))

(declare-fun m!1347241 () Bool)

(assert (=> d!335687 m!1347241))

(assert (=> d!335687 m!1347231))

(declare-fun m!1347243 () Bool)

(assert (=> b!1172643 m!1347243))

(declare-fun m!1347245 () Bool)

(assert (=> b!1172644 m!1347245))

(assert (=> b!1172645 m!1347231))

(assert (=> b!1172645 m!1347231))

(assert (=> b!1172645 m!1347237))

(assert (=> b!1172645 m!1347237))

(assert (=> b!1172645 m!1347239))

(declare-fun m!1347247 () Bool)

(assert (=> b!1172645 m!1347247))

(assert (=> b!1171355 d!335687))

(declare-fun d!335691 () Bool)

(declare-fun lt!402749 () Bool)

(assert (=> d!335691 (= lt!402749 (isEmpty!7040 (list!4278 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769)))))))))

(assert (=> d!335691 (= lt!402749 (isEmpty!7041 (c!195326 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769)))))))))

(assert (=> d!335691 (= (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769))))) lt!402749)))

(declare-fun bs!285923 () Bool)

(assert (= bs!285923 d!335691))

(declare-fun m!1347249 () Bool)

(assert (=> bs!285923 m!1347249))

(assert (=> bs!285923 m!1347249))

(declare-fun m!1347251 () Bool)

(assert (=> bs!285923 m!1347251))

(declare-fun m!1347253 () Bool)

(assert (=> bs!285923 m!1347253))

(assert (=> b!1171492 d!335691))

(declare-fun b!1172649 () Bool)

(declare-fun e!752062 () Bool)

(declare-fun lt!402750 () tuple2!12048)

(assert (=> b!1172649 (= e!752062 (= (_2!6871 lt!402750) (print!651 Lexer!1714 (singletonSeq!684 lt!401769))))))

(declare-fun b!1172650 () Bool)

(declare-fun res!529828 () Bool)

(declare-fun e!752064 () Bool)

(assert (=> b!1172650 (=> (not res!529828) (not e!752064))))

(assert (=> b!1172650 (= res!529828 (= (list!4274 (_1!6871 lt!402750)) (_1!6873 (lexList!416 Lexer!1714 (rules!9642 thiss!10527) (list!4278 (print!651 Lexer!1714 (singletonSeq!684 lt!401769)))))))))

(declare-fun b!1172651 () Bool)

(declare-fun e!752063 () Bool)

(assert (=> b!1172651 (= e!752062 e!752063)))

(declare-fun res!529830 () Bool)

(assert (=> b!1172651 (= res!529830 (< (size!9136 (_2!6871 lt!402750)) (size!9136 (print!651 Lexer!1714 (singletonSeq!684 lt!401769)))))))

(assert (=> b!1172651 (=> (not res!529830) (not e!752063))))

(declare-fun b!1172652 () Bool)

(assert (=> b!1172652 (= e!752064 (= (list!4278 (_2!6871 lt!402750)) (_2!6873 (lexList!416 Lexer!1714 (rules!9642 thiss!10527) (list!4278 (print!651 Lexer!1714 (singletonSeq!684 lt!401769)))))))))

(declare-fun d!335693 () Bool)

(assert (=> d!335693 e!752064))

(declare-fun res!529829 () Bool)

(assert (=> d!335693 (=> (not res!529829) (not e!752064))))

(assert (=> d!335693 (= res!529829 e!752062)))

(declare-fun c!195641 () Bool)

(assert (=> d!335693 (= c!195641 (> (size!9137 (_1!6871 lt!402750)) 0))))

(assert (=> d!335693 (= lt!402750 (lexTailRecV2!323 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769)) (BalanceConc!7631 Empty!3804) (print!651 Lexer!1714 (singletonSeq!684 lt!401769)) (BalanceConc!7633 Empty!3805)))))

(assert (=> d!335693 (= (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769))) lt!402750)))

(declare-fun b!1172653 () Bool)

(assert (=> b!1172653 (= e!752063 (not (isEmpty!7039 (_1!6871 lt!402750))))))

(assert (= (and d!335693 c!195641) b!1172651))

(assert (= (and d!335693 (not c!195641)) b!1172649))

(assert (= (and b!1172651 res!529830) b!1172653))

(assert (= (and d!335693 res!529829) b!1172650))

(assert (= (and b!1172650 res!529828) b!1172652))

(declare-fun m!1347259 () Bool)

(assert (=> b!1172653 m!1347259))

(declare-fun m!1347261 () Bool)

(assert (=> b!1172651 m!1347261))

(assert (=> b!1172651 m!1345119))

(declare-fun m!1347263 () Bool)

(assert (=> b!1172651 m!1347263))

(declare-fun m!1347265 () Bool)

(assert (=> d!335693 m!1347265))

(assert (=> d!335693 m!1345119))

(assert (=> d!335693 m!1345119))

(declare-fun m!1347267 () Bool)

(assert (=> d!335693 m!1347267))

(declare-fun m!1347269 () Bool)

(assert (=> b!1172652 m!1347269))

(assert (=> b!1172652 m!1345119))

(declare-fun m!1347273 () Bool)

(assert (=> b!1172652 m!1347273))

(assert (=> b!1172652 m!1347273))

(declare-fun m!1347275 () Bool)

(assert (=> b!1172652 m!1347275))

(declare-fun m!1347277 () Bool)

(assert (=> b!1172650 m!1347277))

(assert (=> b!1172650 m!1345119))

(assert (=> b!1172650 m!1347273))

(assert (=> b!1172650 m!1347273))

(assert (=> b!1172650 m!1347275))

(assert (=> b!1171492 d!335693))

(declare-fun d!335697 () Bool)

(declare-fun lt!402753 () BalanceConc!7630)

(assert (=> d!335697 (= (list!4278 lt!402753) (printList!516 Lexer!1714 (list!4274 (singletonSeq!684 lt!401769))))))

(assert (=> d!335697 (= lt!402753 (printTailRec!498 Lexer!1714 (singletonSeq!684 lt!401769) 0 (BalanceConc!7631 Empty!3804)))))

(assert (=> d!335697 (= (print!651 Lexer!1714 (singletonSeq!684 lt!401769)) lt!402753)))

(declare-fun bs!285924 () Bool)

(assert (= bs!285924 d!335697))

(declare-fun m!1347285 () Bool)

(assert (=> bs!285924 m!1347285))

(assert (=> bs!285924 m!1345113))

(assert (=> bs!285924 m!1345115))

(assert (=> bs!285924 m!1345115))

(declare-fun m!1347287 () Bool)

(assert (=> bs!285924 m!1347287))

(assert (=> bs!285924 m!1345113))

(declare-fun m!1347289 () Bool)

(assert (=> bs!285924 m!1347289))

(assert (=> b!1171492 d!335697))

(declare-fun d!335701 () Bool)

(declare-fun e!752069 () Bool)

(assert (=> d!335701 e!752069))

(declare-fun res!529832 () Bool)

(assert (=> d!335701 (=> (not res!529832) (not e!752069))))

(declare-fun lt!402754 () BalanceConc!7632)

(assert (=> d!335701 (= res!529832 (= (list!4274 lt!402754) (Cons!11590 lt!401769 Nil!11590)))))

(assert (=> d!335701 (= lt!402754 (singleton!304 lt!401769))))

(assert (=> d!335701 (= (singletonSeq!684 lt!401769) lt!402754)))

(declare-fun b!1172661 () Bool)

(assert (=> b!1172661 (= e!752069 (isBalanced!1073 (c!195327 lt!402754)))))

(assert (= (and d!335701 res!529832) b!1172661))

(declare-fun m!1347291 () Bool)

(assert (=> d!335701 m!1347291))

(declare-fun m!1347293 () Bool)

(assert (=> d!335701 m!1347293))

(declare-fun m!1347295 () Bool)

(assert (=> b!1172661 m!1347295))

(assert (=> b!1171492 d!335701))

(declare-fun d!335705 () Bool)

(declare-fun res!529837 () Bool)

(declare-fun e!752077 () Bool)

(assert (=> d!335705 (=> res!529837 e!752077)))

(assert (=> d!335705 (= res!529837 ((_ is Nil!11591) (rules!9642 thiss!10527)))))

(assert (=> d!335705 (= (noDuplicateTag!713 Lexer!1714 (rules!9642 thiss!10527) Nil!11593) e!752077)))

(declare-fun b!1172672 () Bool)

(declare-fun e!752078 () Bool)

(assert (=> b!1172672 (= e!752077 e!752078)))

(declare-fun res!529838 () Bool)

(assert (=> b!1172672 (=> (not res!529838) (not e!752078))))

(declare-fun contains!2003 (List!11617 String!14023) Bool)

(assert (=> b!1172672 (= res!529838 (not (contains!2003 Nil!11593 (tag!2283 (h!16992 (rules!9642 thiss!10527))))))))

(declare-fun b!1172673 () Bool)

(assert (=> b!1172673 (= e!752078 (noDuplicateTag!713 Lexer!1714 (t!110759 (rules!9642 thiss!10527)) (Cons!11593 (tag!2283 (h!16992 (rules!9642 thiss!10527))) Nil!11593)))))

(assert (= (and d!335705 (not res!529837)) b!1172672))

(assert (= (and b!1172672 res!529838) b!1172673))

(declare-fun m!1347301 () Bool)

(assert (=> b!1172672 m!1347301))

(declare-fun m!1347303 () Bool)

(assert (=> b!1172673 m!1347303))

(assert (=> b!1171362 d!335705))

(assert (=> b!1171478 d!334961))

(declare-fun bs!285927 () Bool)

(declare-fun d!335711 () Bool)

(assert (= bs!285927 (and d!335711 d!334979)))

(declare-fun lambda!48242 () Int)

(assert (=> bs!285927 (= lambda!48242 lambda!48224)))

(declare-fun bs!285928 () Bool)

(assert (= bs!285928 (and d!335711 d!334973)))

(assert (=> bs!285928 (= lambda!48242 lambda!48223)))

(declare-fun bs!285929 () Bool)

(assert (= bs!285929 (and d!335711 d!335675)))

(assert (=> bs!285929 (= lambda!48242 lambda!48241)))

(declare-fun bs!285930 () Bool)

(assert (= bs!285930 (and d!335711 d!335473)))

(assert (=> bs!285930 (= lambda!48242 lambda!48236)))

(declare-fun bs!285932 () Bool)

(assert (= bs!285932 (and d!335711 d!334961)))

(assert (=> bs!285932 (= lambda!48242 lambda!48222)))

(declare-fun bs!285933 () Bool)

(assert (= bs!285933 (and d!335711 d!335489)))

(assert (=> bs!285933 (= lambda!48242 lambda!48237)))

(declare-fun bs!285934 () Bool)

(assert (= bs!285934 (and d!335711 d!335043)))

(assert (=> bs!285934 (= lambda!48242 lambda!48226)))

(declare-fun bs!285935 () Bool)

(assert (= bs!285935 (and d!335711 d!335095)))

(assert (=> bs!285935 (= lambda!48242 lambda!48227)))

(declare-fun bs!285936 () Bool)

(assert (= bs!285936 (and d!335711 b!1171109)))

(assert (=> bs!285936 (= lambda!48242 lambda!48203)))

(declare-fun bs!285937 () Bool)

(assert (= bs!285937 (and d!335711 d!334933)))

(assert (=> bs!285937 (= lambda!48242 lambda!48217)))

(declare-fun b!1172678 () Bool)

(declare-fun e!752083 () Bool)

(assert (=> b!1172678 (= e!752083 true)))

(declare-fun b!1172677 () Bool)

(declare-fun e!752082 () Bool)

(assert (=> b!1172677 (= e!752082 e!752083)))

(declare-fun b!1172676 () Bool)

(declare-fun e!752081 () Bool)

(assert (=> b!1172676 (= e!752081 e!752082)))

(assert (=> d!335711 e!752081))

(assert (= b!1172677 b!1172678))

(assert (= b!1172676 b!1172677))

(assert (= (and d!335711 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1172676))

(assert (=> b!1172678 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48242))))

(assert (=> b!1172678 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48242))))

(assert (=> d!335711 true))

(declare-fun lt!402758 () Bool)

(assert (=> d!335711 (= lt!402758 (forall!3066 lt!402132 lambda!48242))))

(declare-fun e!752079 () Bool)

(assert (=> d!335711 (= lt!402758 e!752079)))

(declare-fun res!529839 () Bool)

(assert (=> d!335711 (=> res!529839 e!752079)))

(assert (=> d!335711 (= res!529839 (not ((_ is Cons!11590) lt!402132)))))

(assert (=> d!335711 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335711 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402132) lt!402758)))

(declare-fun b!1172674 () Bool)

(declare-fun e!752080 () Bool)

(assert (=> b!1172674 (= e!752079 e!752080)))

(declare-fun res!529840 () Bool)

(assert (=> b!1172674 (=> (not res!529840) (not e!752080))))

(assert (=> b!1172674 (= res!529840 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!402132)))))

(declare-fun b!1172675 () Bool)

(assert (=> b!1172675 (= e!752080 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!402132)))))

(assert (= (and d!335711 (not res!529839)) b!1172674))

(assert (= (and b!1172674 res!529840) b!1172675))

(declare-fun m!1347313 () Bool)

(assert (=> d!335711 m!1347313))

(assert (=> d!335711 m!1344215))

(declare-fun m!1347315 () Bool)

(assert (=> b!1172674 m!1347315))

(declare-fun m!1347317 () Bool)

(assert (=> b!1172675 m!1347317))

(assert (=> b!1171344 d!335711))

(declare-fun bs!285938 () Bool)

(declare-fun d!335719 () Bool)

(assert (= bs!285938 (and d!335719 d!334979)))

(declare-fun lambda!48243 () Int)

(assert (=> bs!285938 (= lambda!48243 lambda!48224)))

(declare-fun bs!285939 () Bool)

(assert (= bs!285939 (and d!335719 d!335711)))

(assert (=> bs!285939 (= lambda!48243 lambda!48242)))

(declare-fun bs!285940 () Bool)

(assert (= bs!285940 (and d!335719 d!334973)))

(assert (=> bs!285940 (= lambda!48243 lambda!48223)))

(declare-fun bs!285941 () Bool)

(assert (= bs!285941 (and d!335719 d!335675)))

(assert (=> bs!285941 (= lambda!48243 lambda!48241)))

(declare-fun bs!285942 () Bool)

(assert (= bs!285942 (and d!335719 d!335473)))

(assert (=> bs!285942 (= lambda!48243 lambda!48236)))

(declare-fun bs!285943 () Bool)

(assert (= bs!285943 (and d!335719 d!334961)))

(assert (=> bs!285943 (= lambda!48243 lambda!48222)))

(declare-fun bs!285944 () Bool)

(assert (= bs!285944 (and d!335719 d!335489)))

(assert (=> bs!285944 (= lambda!48243 lambda!48237)))

(declare-fun bs!285945 () Bool)

(assert (= bs!285945 (and d!335719 d!335043)))

(assert (=> bs!285945 (= lambda!48243 lambda!48226)))

(declare-fun bs!285946 () Bool)

(assert (= bs!285946 (and d!335719 d!335095)))

(assert (=> bs!285946 (= lambda!48243 lambda!48227)))

(declare-fun bs!285947 () Bool)

(assert (= bs!285947 (and d!335719 b!1171109)))

(assert (=> bs!285947 (= lambda!48243 lambda!48203)))

(declare-fun bs!285948 () Bool)

(assert (= bs!285948 (and d!335719 d!334933)))

(assert (=> bs!285948 (= lambda!48243 lambda!48217)))

(declare-fun b!1172689 () Bool)

(declare-fun e!752093 () Bool)

(assert (=> b!1172689 (= e!752093 true)))

(declare-fun b!1172688 () Bool)

(declare-fun e!752092 () Bool)

(assert (=> b!1172688 (= e!752092 e!752093)))

(declare-fun b!1172687 () Bool)

(declare-fun e!752091 () Bool)

(assert (=> b!1172687 (= e!752091 e!752092)))

(assert (=> d!335719 e!752091))

(assert (= b!1172688 b!1172689))

(assert (= b!1172687 b!1172688))

(assert (= (and d!335719 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1172687))

(assert (=> b!1172689 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48243))))

(assert (=> b!1172689 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48243))))

(assert (=> d!335719 true))

(declare-fun lt!402771 () Bool)

(assert (=> d!335719 (= lt!402771 (forall!3066 lt!402165 lambda!48243))))

(declare-fun e!752089 () Bool)

(assert (=> d!335719 (= lt!402771 e!752089)))

(declare-fun res!529845 () Bool)

(assert (=> d!335719 (=> res!529845 e!752089)))

(assert (=> d!335719 (= res!529845 (not ((_ is Cons!11590) lt!402165)))))

(assert (=> d!335719 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335719 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402165) lt!402771)))

(declare-fun b!1172685 () Bool)

(declare-fun e!752090 () Bool)

(assert (=> b!1172685 (= e!752089 e!752090)))

(declare-fun res!529846 () Bool)

(assert (=> b!1172685 (=> (not res!529846) (not e!752090))))

(assert (=> b!1172685 (= res!529846 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!402165)))))

(declare-fun b!1172686 () Bool)

(assert (=> b!1172686 (= e!752090 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!402165)))))

(assert (= (and d!335719 (not res!529845)) b!1172685))

(assert (= (and b!1172685 res!529846) b!1172686))

(declare-fun m!1347337 () Bool)

(assert (=> d!335719 m!1347337))

(assert (=> d!335719 m!1344215))

(declare-fun m!1347339 () Bool)

(assert (=> b!1172685 m!1347339))

(declare-fun m!1347341 () Bool)

(assert (=> b!1172686 m!1347341))

(assert (=> b!1171352 d!335719))

(assert (=> b!1171624 d!335047))

(declare-fun d!335725 () Bool)

(declare-fun c!195650 () Bool)

(assert (=> d!335725 (= c!195650 ((_ is Empty!3805) (c!195327 lt!401775)))))

(declare-fun e!752095 () List!11614)

(assert (=> d!335725 (= (list!4277 (c!195327 lt!401775)) e!752095)))

(declare-fun b!1172692 () Bool)

(assert (=> b!1172692 (= e!752095 Nil!11590)))

(declare-fun b!1172693 () Bool)

(declare-fun e!752096 () List!11614)

(assert (=> b!1172693 (= e!752095 e!752096)))

(declare-fun c!195651 () Bool)

(assert (=> b!1172693 (= c!195651 ((_ is Leaf!5826) (c!195327 lt!401775)))))

(declare-fun b!1172694 () Bool)

(assert (=> b!1172694 (= e!752096 (list!4282 (xs!6510 (c!195327 lt!401775))))))

(declare-fun b!1172695 () Bool)

(assert (=> b!1172695 (= e!752096 (++!2998 (list!4277 (left!10137 (c!195327 lt!401775))) (list!4277 (right!10467 (c!195327 lt!401775)))))))

(assert (= (and d!335725 c!195650) b!1172692))

(assert (= (and d!335725 (not c!195650)) b!1172693))

(assert (= (and b!1172693 c!195651) b!1172694))

(assert (= (and b!1172693 (not c!195651)) b!1172695))

(declare-fun m!1347343 () Bool)

(assert (=> b!1172694 m!1347343))

(assert (=> b!1172695 m!1345847))

(assert (=> b!1172695 m!1345849))

(assert (=> b!1172695 m!1345847))

(assert (=> b!1172695 m!1345849))

(declare-fun m!1347345 () Bool)

(assert (=> b!1172695 m!1347345))

(assert (=> d!334939 d!335725))

(assert (=> d!335067 d!335051))

(declare-fun d!335727 () Bool)

(assert (=> d!335727 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401769)))

(assert (=> d!335727 true))

(declare-fun _$77!545 () Unit!17788)

(assert (=> d!335727 (= (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!401774 lt!401769) _$77!545)))

(declare-fun bs!286001 () Bool)

(assert (= bs!286001 d!335727))

(assert (=> bs!286001 m!1344177))

(assert (=> d!335067 d!335727))

(assert (=> d!335067 d!334887))

(declare-fun d!335831 () Bool)

(declare-fun lt!402843 () Int)

(assert (=> d!335831 (>= lt!402843 0)))

(declare-fun e!752247 () Int)

(assert (=> d!335831 (= lt!402843 e!752247)))

(declare-fun c!195685 () Bool)

(assert (=> d!335831 (= c!195685 ((_ is Nil!11590) lt!402280))))

(assert (=> d!335831 (= (size!9142 lt!402280) lt!402843)))

(declare-fun b!1172905 () Bool)

(assert (=> b!1172905 (= e!752247 0)))

(declare-fun b!1172906 () Bool)

(assert (=> b!1172906 (= e!752247 (+ 1 (size!9142 (t!110758 lt!402280))))))

(assert (= (and d!335831 c!195685) b!1172905))

(assert (= (and d!335831 (not c!195685)) b!1172906))

(declare-fun m!1347687 () Bool)

(assert (=> b!1172906 m!1347687))

(assert (=> b!1171596 d!335831))

(declare-fun d!335833 () Bool)

(declare-fun c!195686 () Bool)

(assert (=> d!335833 (= c!195686 ((_ is Node!3805) (left!10137 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun e!752248 () Bool)

(assert (=> d!335833 (= (inv!15288 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) e!752248)))

(declare-fun b!1172907 () Bool)

(assert (=> b!1172907 (= e!752248 (inv!15289 (left!10137 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun b!1172908 () Bool)

(declare-fun e!752249 () Bool)

(assert (=> b!1172908 (= e!752248 e!752249)))

(declare-fun res!529892 () Bool)

(assert (=> b!1172908 (= res!529892 (not ((_ is Leaf!5826) (left!10137 (c!195327 (tokens!1654 thiss!10527))))))))

(assert (=> b!1172908 (=> res!529892 e!752249)))

(declare-fun b!1172909 () Bool)

(assert (=> b!1172909 (= e!752249 (inv!15290 (left!10137 (c!195327 (tokens!1654 thiss!10527)))))))

(assert (= (and d!335833 c!195686) b!1172907))

(assert (= (and d!335833 (not c!195686)) b!1172908))

(assert (= (and b!1172908 (not res!529892)) b!1172909))

(declare-fun m!1347689 () Bool)

(assert (=> b!1172907 m!1347689))

(declare-fun m!1347691 () Bool)

(assert (=> b!1172909 m!1347691))

(assert (=> b!1171667 d!335833))

(declare-fun d!335835 () Bool)

(declare-fun c!195687 () Bool)

(assert (=> d!335835 (= c!195687 ((_ is Node!3805) (right!10467 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun e!752250 () Bool)

(assert (=> d!335835 (= (inv!15288 (right!10467 (c!195327 (tokens!1654 thiss!10527)))) e!752250)))

(declare-fun b!1172910 () Bool)

(assert (=> b!1172910 (= e!752250 (inv!15289 (right!10467 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun b!1172911 () Bool)

(declare-fun e!752251 () Bool)

(assert (=> b!1172911 (= e!752250 e!752251)))

(declare-fun res!529893 () Bool)

(assert (=> b!1172911 (= res!529893 (not ((_ is Leaf!5826) (right!10467 (c!195327 (tokens!1654 thiss!10527))))))))

(assert (=> b!1172911 (=> res!529893 e!752251)))

(declare-fun b!1172912 () Bool)

(assert (=> b!1172912 (= e!752251 (inv!15290 (right!10467 (c!195327 (tokens!1654 thiss!10527)))))))

(assert (= (and d!335835 c!195687) b!1172910))

(assert (= (and d!335835 (not c!195687)) b!1172911))

(assert (= (and b!1172911 (not res!529893)) b!1172912))

(declare-fun m!1347693 () Bool)

(assert (=> b!1172910 m!1347693))

(declare-fun m!1347695 () Bool)

(assert (=> b!1172912 m!1347695))

(assert (=> b!1171667 d!335835))

(declare-fun d!335837 () Bool)

(assert (=> d!335837 true))

(declare-fun lt!402846 () Bool)

(declare-fun rulesValidInductive!642 (LexerInterface!1716 List!11615) Bool)

(assert (=> d!335837 (= lt!402846 (rulesValidInductive!642 Lexer!1714 (rules!9642 thiss!10527)))))

(declare-fun lambda!48251 () Int)

(declare-fun forall!3071 (List!11615 Int) Bool)

(assert (=> d!335837 (= lt!402846 (forall!3071 (rules!9642 thiss!10527) lambda!48251))))

(assert (=> d!335837 (= (rulesValid!713 Lexer!1714 (rules!9642 thiss!10527)) lt!402846)))

(declare-fun bs!286002 () Bool)

(assert (= bs!286002 d!335837))

(declare-fun m!1347697 () Bool)

(assert (=> bs!286002 m!1347697))

(declare-fun m!1347699 () Bool)

(assert (=> bs!286002 m!1347699))

(assert (=> d!334985 d!335837))

(declare-fun d!335839 () Bool)

(declare-fun lt!402847 () Int)

(assert (=> d!335839 (>= lt!402847 0)))

(declare-fun e!752252 () Int)

(assert (=> d!335839 (= lt!402847 e!752252)))

(declare-fun c!195688 () Bool)

(assert (=> d!335839 (= c!195688 ((_ is Nil!11590) lt!402284))))

(assert (=> d!335839 (= (size!9142 lt!402284) lt!402847)))

(declare-fun b!1172915 () Bool)

(assert (=> b!1172915 (= e!752252 0)))

(declare-fun b!1172916 () Bool)

(assert (=> b!1172916 (= e!752252 (+ 1 (size!9142 (t!110758 lt!402284))))))

(assert (= (and d!335839 c!195688) b!1172915))

(assert (= (and d!335839 (not c!195688)) b!1172916))

(declare-fun m!1347701 () Bool)

(assert (=> b!1172916 m!1347701))

(assert (=> b!1171616 d!335839))

(assert (=> b!1171256 d!335393))

(assert (=> d!335021 d!334887))

(declare-fun d!335841 () Bool)

(declare-fun lt!402848 () Bool)

(assert (=> d!335841 (= lt!402848 (isEmpty!7040 (list!4278 (_2!6871 lt!402237))))))

(assert (=> d!335841 (= lt!402848 (isEmpty!7041 (c!195326 (_2!6871 lt!402237))))))

(assert (=> d!335841 (= (isEmpty!7034 (_2!6871 lt!402237)) lt!402848)))

(declare-fun bs!286003 () Bool)

(assert (= bs!286003 d!335841))

(declare-fun m!1347703 () Bool)

(assert (=> bs!286003 m!1347703))

(assert (=> bs!286003 m!1347703))

(declare-fun m!1347705 () Bool)

(assert (=> bs!286003 m!1347705))

(declare-fun m!1347707 () Bool)

(assert (=> bs!286003 m!1347707))

(assert (=> b!1171443 d!335841))

(declare-fun d!335843 () Bool)

(declare-fun lt!402849 () Bool)

(assert (=> d!335843 (= lt!402849 (isEmpty!7040 (list!4278 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764)))))))))

(assert (=> d!335843 (= lt!402849 (isEmpty!7041 (c!195326 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764)))))))))

(assert (=> d!335843 (= (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764))))) lt!402849)))

(declare-fun bs!286004 () Bool)

(assert (= bs!286004 d!335843))

(declare-fun m!1347709 () Bool)

(assert (=> bs!286004 m!1347709))

(assert (=> bs!286004 m!1347709))

(declare-fun m!1347711 () Bool)

(assert (=> bs!286004 m!1347711))

(declare-fun m!1347713 () Bool)

(assert (=> bs!286004 m!1347713))

(assert (=> b!1171489 d!335843))

(declare-fun b!1172917 () Bool)

(declare-fun e!752253 () Bool)

(declare-fun lt!402850 () tuple2!12048)

(assert (=> b!1172917 (= e!752253 (= (_2!6871 lt!402850) (print!651 Lexer!1714 (singletonSeq!684 lt!401764))))))

(declare-fun b!1172918 () Bool)

(declare-fun res!529894 () Bool)

(declare-fun e!752255 () Bool)

(assert (=> b!1172918 (=> (not res!529894) (not e!752255))))

(assert (=> b!1172918 (= res!529894 (= (list!4274 (_1!6871 lt!402850)) (_1!6873 (lexList!416 Lexer!1714 (rules!9642 thiss!10527) (list!4278 (print!651 Lexer!1714 (singletonSeq!684 lt!401764)))))))))

(declare-fun b!1172919 () Bool)

(declare-fun e!752254 () Bool)

(assert (=> b!1172919 (= e!752253 e!752254)))

(declare-fun res!529896 () Bool)

(assert (=> b!1172919 (= res!529896 (< (size!9136 (_2!6871 lt!402850)) (size!9136 (print!651 Lexer!1714 (singletonSeq!684 lt!401764)))))))

(assert (=> b!1172919 (=> (not res!529896) (not e!752254))))

(declare-fun b!1172920 () Bool)

(assert (=> b!1172920 (= e!752255 (= (list!4278 (_2!6871 lt!402850)) (_2!6873 (lexList!416 Lexer!1714 (rules!9642 thiss!10527) (list!4278 (print!651 Lexer!1714 (singletonSeq!684 lt!401764)))))))))

(declare-fun d!335845 () Bool)

(assert (=> d!335845 e!752255))

(declare-fun res!529895 () Bool)

(assert (=> d!335845 (=> (not res!529895) (not e!752255))))

(assert (=> d!335845 (= res!529895 e!752253)))

(declare-fun c!195689 () Bool)

(assert (=> d!335845 (= c!195689 (> (size!9137 (_1!6871 lt!402850)) 0))))

(assert (=> d!335845 (= lt!402850 (lexTailRecV2!323 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764)) (BalanceConc!7631 Empty!3804) (print!651 Lexer!1714 (singletonSeq!684 lt!401764)) (BalanceConc!7633 Empty!3805)))))

(assert (=> d!335845 (= (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764))) lt!402850)))

(declare-fun b!1172921 () Bool)

(assert (=> b!1172921 (= e!752254 (not (isEmpty!7039 (_1!6871 lt!402850))))))

(assert (= (and d!335845 c!195689) b!1172919))

(assert (= (and d!335845 (not c!195689)) b!1172917))

(assert (= (and b!1172919 res!529896) b!1172921))

(assert (= (and d!335845 res!529895) b!1172918))

(assert (= (and b!1172918 res!529894) b!1172920))

(declare-fun m!1347715 () Bool)

(assert (=> b!1172921 m!1347715))

(declare-fun m!1347717 () Bool)

(assert (=> b!1172919 m!1347717))

(assert (=> b!1172919 m!1345101))

(declare-fun m!1347719 () Bool)

(assert (=> b!1172919 m!1347719))

(declare-fun m!1347721 () Bool)

(assert (=> d!335845 m!1347721))

(assert (=> d!335845 m!1345101))

(assert (=> d!335845 m!1345101))

(declare-fun m!1347723 () Bool)

(assert (=> d!335845 m!1347723))

(declare-fun m!1347725 () Bool)

(assert (=> b!1172920 m!1347725))

(assert (=> b!1172920 m!1345101))

(declare-fun m!1347727 () Bool)

(assert (=> b!1172920 m!1347727))

(assert (=> b!1172920 m!1347727))

(declare-fun m!1347729 () Bool)

(assert (=> b!1172920 m!1347729))

(declare-fun m!1347731 () Bool)

(assert (=> b!1172918 m!1347731))

(assert (=> b!1172918 m!1345101))

(assert (=> b!1172918 m!1347727))

(assert (=> b!1172918 m!1347727))

(assert (=> b!1172918 m!1347729))

(assert (=> b!1171489 d!335845))

(declare-fun d!335847 () Bool)

(declare-fun lt!402851 () BalanceConc!7630)

(assert (=> d!335847 (= (list!4278 lt!402851) (printList!516 Lexer!1714 (list!4274 (singletonSeq!684 lt!401764))))))

(assert (=> d!335847 (= lt!402851 (printTailRec!498 Lexer!1714 (singletonSeq!684 lt!401764) 0 (BalanceConc!7631 Empty!3804)))))

(assert (=> d!335847 (= (print!651 Lexer!1714 (singletonSeq!684 lt!401764)) lt!402851)))

(declare-fun bs!286005 () Bool)

(assert (= bs!286005 d!335847))

(declare-fun m!1347733 () Bool)

(assert (=> bs!286005 m!1347733))

(assert (=> bs!286005 m!1345095))

(assert (=> bs!286005 m!1345097))

(assert (=> bs!286005 m!1345097))

(declare-fun m!1347735 () Bool)

(assert (=> bs!286005 m!1347735))

(assert (=> bs!286005 m!1345095))

(declare-fun m!1347737 () Bool)

(assert (=> bs!286005 m!1347737))

(assert (=> b!1171489 d!335847))

(declare-fun d!335849 () Bool)

(declare-fun e!752256 () Bool)

(assert (=> d!335849 e!752256))

(declare-fun res!529897 () Bool)

(assert (=> d!335849 (=> (not res!529897) (not e!752256))))

(declare-fun lt!402852 () BalanceConc!7632)

(assert (=> d!335849 (= res!529897 (= (list!4274 lt!402852) (Cons!11590 lt!401764 Nil!11590)))))

(assert (=> d!335849 (= lt!402852 (singleton!304 lt!401764))))

(assert (=> d!335849 (= (singletonSeq!684 lt!401764) lt!402852)))

(declare-fun b!1172922 () Bool)

(assert (=> b!1172922 (= e!752256 (isBalanced!1073 (c!195327 lt!402852)))))

(assert (= (and d!335849 res!529897) b!1172922))

(declare-fun m!1347739 () Bool)

(assert (=> d!335849 m!1347739))

(declare-fun m!1347741 () Bool)

(assert (=> d!335849 m!1347741))

(declare-fun m!1347743 () Bool)

(assert (=> b!1172922 m!1347743))

(assert (=> b!1171489 d!335849))

(declare-fun b!1172923 () Bool)

(declare-fun res!529901 () Bool)

(declare-fun e!752258 () Bool)

(assert (=> b!1172923 (=> (not res!529901) (not e!752258))))

(assert (=> b!1172923 (= res!529901 (<= (- (height!517 (left!10137 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267))) (height!517 (right!10467 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267)))) 1))))

(declare-fun b!1172924 () Bool)

(declare-fun res!529899 () Bool)

(assert (=> b!1172924 (=> (not res!529899) (not e!752258))))

(assert (=> b!1172924 (= res!529899 (not (isEmpty!7042 (left!10137 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267)))))))

(declare-fun d!335851 () Bool)

(declare-fun res!529903 () Bool)

(declare-fun e!752257 () Bool)

(assert (=> d!335851 (=> res!529903 e!752257)))

(assert (=> d!335851 (= res!529903 (not ((_ is Node!3805) (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267))))))

(assert (=> d!335851 (= (isBalanced!1073 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267)) e!752257)))

(declare-fun b!1172925 () Bool)

(declare-fun res!529902 () Bool)

(assert (=> b!1172925 (=> (not res!529902) (not e!752258))))

(assert (=> b!1172925 (= res!529902 (isBalanced!1073 (left!10137 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267))))))

(declare-fun b!1172926 () Bool)

(assert (=> b!1172926 (= e!752258 (not (isEmpty!7042 (right!10467 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267)))))))

(declare-fun b!1172927 () Bool)

(declare-fun res!529898 () Bool)

(assert (=> b!1172927 (=> (not res!529898) (not e!752258))))

(assert (=> b!1172927 (= res!529898 (isBalanced!1073 (right!10467 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267))))))

(declare-fun b!1172928 () Bool)

(assert (=> b!1172928 (= e!752257 e!752258)))

(declare-fun res!529900 () Bool)

(assert (=> b!1172928 (=> (not res!529900) (not e!752258))))

(assert (=> b!1172928 (= res!529900 (<= (- 1) (- (height!517 (left!10137 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267))) (height!517 (right!10467 (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267))))))))

(assert (= (and d!335851 (not res!529903)) b!1172928))

(assert (= (and b!1172928 res!529900) b!1172923))

(assert (= (and b!1172923 res!529901) b!1172925))

(assert (= (and b!1172925 res!529902) b!1172927))

(assert (= (and b!1172927 res!529898) b!1172924))

(assert (= (and b!1172924 res!529899) b!1172926))

(declare-fun m!1347745 () Bool)

(assert (=> b!1172923 m!1347745))

(declare-fun m!1347747 () Bool)

(assert (=> b!1172923 m!1347747))

(declare-fun m!1347749 () Bool)

(assert (=> b!1172924 m!1347749))

(declare-fun m!1347751 () Bool)

(assert (=> b!1172925 m!1347751))

(declare-fun m!1347753 () Bool)

(assert (=> b!1172926 m!1347753))

(declare-fun m!1347755 () Bool)

(assert (=> b!1172927 m!1347755))

(assert (=> b!1172928 m!1347745))

(assert (=> b!1172928 m!1347747))

(assert (=> d!334941 d!335851))

(declare-fun b!1172971 () Bool)

(declare-fun e!752291 () Conc!3805)

(declare-fun e!752285 () Conc!3805)

(assert (=> b!1172971 (= e!752291 e!752285)))

(declare-fun c!195708 () Bool)

(declare-fun call!82368 () Int)

(assert (=> b!1172971 (= c!195708 (<= to!267 call!82368))))

(declare-fun b!1172972 () Bool)

(declare-fun lt!402864 () Conc!3805)

(declare-fun e!752283 () Bool)

(assert (=> b!1172972 (= e!752283 (= (list!4277 lt!402864) (slice!349 (list!4277 (c!195327 (tokens!1654 thiss!10527))) from!787 to!267)))))

(declare-fun b!1172973 () Bool)

(declare-fun c!195710 () Bool)

(assert (=> b!1172973 (= c!195710 (<= (size!9143 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) from!787))))

(declare-fun lt!402863 () Unit!17788)

(declare-fun lt!402865 () Unit!17788)

(assert (=> b!1172973 (= lt!402863 lt!402865)))

(declare-fun lt!402867 () List!11614)

(declare-fun lt!402866 () List!11614)

(declare-fun e!752281 () List!11614)

(assert (=> b!1172973 (= (slice!349 (++!2998 lt!402867 lt!402866) from!787 to!267) e!752281)))

(declare-fun c!195709 () Bool)

(assert (=> b!1172973 (= c!195709 (<= (size!9142 lt!402867) from!787))))

(declare-fun sliceLemma!8 (List!11614 List!11614 Int Int) Unit!17788)

(assert (=> b!1172973 (= lt!402865 (sliceLemma!8 lt!402867 lt!402866 from!787 to!267))))

(assert (=> b!1172973 (= lt!402866 (list!4277 (right!10467 (c!195327 (tokens!1654 thiss!10527)))))))

(assert (=> b!1172973 (= lt!402867 (list!4277 (left!10137 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun e!752286 () Conc!3805)

(assert (=> b!1172973 (= e!752286 e!752291)))

(declare-fun b!1172974 () Bool)

(declare-fun e!752282 () Bool)

(assert (=> b!1172974 (= e!752282 (isBalanced!1073 (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun call!82372 () Int)

(declare-fun b!1172975 () Bool)

(declare-fun call!82367 () List!11614)

(declare-fun e!752289 () List!11614)

(assert (=> b!1172975 (= e!752289 (++!2998 (slice!349 lt!402867 from!787 call!82372) call!82367))))

(declare-fun b!1172976 () Bool)

(declare-fun e!752288 () Conc!3805)

(assert (=> b!1172976 (= e!752288 Empty!3805)))

(declare-fun c!195713 () Bool)

(declare-fun bm!82362 () Bool)

(declare-fun call!82370 () List!11614)

(declare-fun e!752284 () Int)

(assert (=> bm!82362 (= call!82370 (slice!349 (ite c!195709 lt!402866 (ite c!195713 lt!402867 lt!402866)) (ite c!195709 (- from!787 call!82372) (ite c!195713 from!787 0)) (ite c!195709 (- to!267 call!82372) e!752284)))))

(declare-fun b!1172977 () Bool)

(assert (=> b!1172977 (= e!752281 call!82370)))

(declare-fun b!1172978 () Bool)

(declare-fun call!82371 () Conc!3805)

(assert (=> b!1172978 (= e!752291 call!82371)))

(declare-fun b!1172979 () Bool)

(assert (=> b!1172979 (= e!752284 (- to!267 call!82372))))

(declare-fun bm!82364 () Bool)

(declare-fun e!752290 () Int)

(assert (=> bm!82364 (= call!82371 (slice!351 (ite c!195710 (right!10467 (c!195327 (tokens!1654 thiss!10527))) (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (ite c!195710 (- from!787 call!82368) from!787) (ite c!195710 (- to!267 call!82368) e!752290)))))

(declare-fun b!1172980 () Bool)

(assert (=> b!1172980 (= e!752284 to!267)))

(declare-fun b!1172981 () Bool)

(declare-fun e!752287 () Conc!3805)

(assert (=> b!1172981 (= e!752287 e!752286)))

(declare-fun c!195711 () Bool)

(assert (=> b!1172981 (= c!195711 ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun b!1172982 () Bool)

(assert (=> b!1172982 (= e!752287 Empty!3805)))

(declare-fun b!1172983 () Bool)

(declare-fun call!82369 () Conc!3805)

(assert (=> b!1172983 (= e!752285 call!82369)))

(declare-fun b!1172984 () Bool)

(assert (=> b!1172984 (= e!752290 to!267)))

(declare-fun b!1172985 () Bool)

(assert (=> b!1172985 (= e!752289 call!82367)))

(declare-fun b!1172986 () Bool)

(assert (=> b!1172986 (= e!752281 e!752289)))

(assert (=> b!1172986 (= c!195713 (<= to!267 call!82372))))

(declare-fun b!1172987 () Bool)

(declare-fun slice!352 (IArray!7615 Int Int) IArray!7615)

(assert (=> b!1172987 (= e!752288 (Leaf!5826 (slice!352 (xs!6510 (c!195327 (tokens!1654 thiss!10527))) from!787 to!267) (- to!267 from!787)))))

(declare-fun b!1172988 () Bool)

(assert (=> b!1172988 (= e!752290 call!82368)))

(declare-fun b!1172989 () Bool)

(declare-fun c!195715 () Bool)

(assert (=> b!1172989 (= c!195715 (= (- to!267 from!787) 0))))

(assert (=> b!1172989 (= e!752286 e!752288)))

(declare-fun b!1172990 () Bool)

(declare-fun res!529910 () Bool)

(assert (=> b!1172990 (=> (not res!529910) (not e!752282))))

(assert (=> b!1172990 (= res!529910 (<= to!267 (size!9143 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun bm!82365 () Bool)

(assert (=> bm!82365 (= call!82368 (size!9143 (left!10137 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun bm!82363 () Bool)

(assert (=> bm!82363 (= call!82372 (size!9142 lt!402867))))

(declare-fun d!335853 () Bool)

(assert (=> d!335853 e!752283))

(declare-fun res!529911 () Bool)

(assert (=> d!335853 (=> (not res!529911) (not e!752283))))

(assert (=> d!335853 (= res!529911 (isBalanced!1073 lt!402864))))

(assert (=> d!335853 (= lt!402864 e!752287)))

(declare-fun c!195714 () Bool)

(assert (=> d!335853 (= c!195714 (= from!787 to!267))))

(assert (=> d!335853 e!752282))

(declare-fun res!529912 () Bool)

(assert (=> d!335853 (=> (not res!529912) (not e!752282))))

(assert (=> d!335853 (= res!529912 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!335853 (= (slice!351 (c!195327 (tokens!1654 thiss!10527)) from!787 to!267) lt!402864)))

(declare-fun bm!82366 () Bool)

(declare-fun c!195716 () Bool)

(assert (=> bm!82366 (= c!195716 c!195713)))

(assert (=> bm!82366 (= call!82367 call!82370)))

(declare-fun bm!82367 () Bool)

(declare-fun c!195712 () Bool)

(assert (=> bm!82367 (= c!195712 c!195708)))

(assert (=> bm!82367 (= call!82369 call!82371)))

(declare-fun b!1172991 () Bool)

(declare-fun ++!2999 (Conc!3805 Conc!3805) Conc!3805)

(assert (=> b!1172991 (= e!752285 (++!2999 call!82369 (slice!351 (right!10467 (c!195327 (tokens!1654 thiss!10527))) 0 (- to!267 call!82368))))))

(assert (= (and d!335853 res!529912) b!1172990))

(assert (= (and b!1172990 res!529910) b!1172974))

(assert (= (and d!335853 c!195714) b!1172982))

(assert (= (and d!335853 (not c!195714)) b!1172981))

(assert (= (and b!1172981 c!195711) b!1172989))

(assert (= (and b!1172981 (not c!195711)) b!1172973))

(assert (= (and b!1172989 c!195715) b!1172976))

(assert (= (and b!1172989 (not c!195715)) b!1172987))

(assert (= (and b!1172973 c!195709) b!1172977))

(assert (= (and b!1172973 (not c!195709)) b!1172986))

(assert (= (and b!1172986 c!195713) b!1172985))

(assert (= (and b!1172986 (not c!195713)) b!1172975))

(assert (= (or b!1172985 b!1172975) bm!82366))

(assert (= (and bm!82366 c!195716) b!1172980))

(assert (= (and bm!82366 (not c!195716)) b!1172979))

(assert (= (or b!1172977 b!1172975 b!1172979 b!1172986) bm!82363))

(assert (= (or b!1172977 bm!82366) bm!82362))

(assert (= (and b!1172973 c!195710) b!1172978))

(assert (= (and b!1172973 (not c!195710)) b!1172971))

(assert (= (and b!1172971 c!195708) b!1172983))

(assert (= (and b!1172971 (not c!195708)) b!1172991))

(assert (= (or b!1172983 b!1172991) bm!82367))

(assert (= (and bm!82367 c!195712) b!1172984))

(assert (= (and bm!82367 (not c!195712)) b!1172988))

(assert (= (or b!1172978 b!1172971 b!1172988 b!1172991) bm!82365))

(assert (= (or b!1172978 bm!82367) bm!82364))

(assert (= (and d!335853 res!529911) b!1172972))

(declare-fun m!1347757 () Bool)

(assert (=> b!1172975 m!1347757))

(assert (=> b!1172975 m!1347757))

(declare-fun m!1347759 () Bool)

(assert (=> b!1172975 m!1347759))

(assert (=> b!1172974 m!1344441))

(declare-fun m!1347761 () Bool)

(assert (=> d!335853 m!1347761))

(declare-fun m!1347763 () Bool)

(assert (=> b!1172972 m!1347763))

(assert (=> b!1172972 m!1344673))

(assert (=> b!1172972 m!1344673))

(declare-fun m!1347765 () Bool)

(assert (=> b!1172972 m!1347765))

(declare-fun m!1347767 () Bool)

(assert (=> bm!82363 m!1347767))

(declare-fun m!1347769 () Bool)

(assert (=> b!1172987 m!1347769))

(declare-fun m!1347771 () Bool)

(assert (=> bm!82362 m!1347771))

(declare-fun m!1347773 () Bool)

(assert (=> b!1172991 m!1347773))

(assert (=> b!1172991 m!1347773))

(declare-fun m!1347775 () Bool)

(assert (=> b!1172991 m!1347775))

(assert (=> b!1172990 m!1344569))

(assert (=> b!1172973 m!1347767))

(declare-fun m!1347777 () Bool)

(assert (=> b!1172973 m!1347777))

(declare-fun m!1347779 () Bool)

(assert (=> b!1172973 m!1347779))

(assert (=> b!1172973 m!1346195))

(assert (=> b!1172973 m!1346179))

(declare-fun m!1347781 () Bool)

(assert (=> b!1172973 m!1347781))

(assert (=> b!1172973 m!1346197))

(assert (=> b!1172973 m!1347777))

(declare-fun m!1347783 () Bool)

(assert (=> bm!82364 m!1347783))

(assert (=> bm!82365 m!1346179))

(assert (=> d!334941 d!335853))

(assert (=> b!1171214 d!335499))

(declare-fun d!335855 () Bool)

(declare-fun lt!402868 () BalanceConc!7630)

(assert (=> d!335855 (= (list!4278 lt!402868) (originalCharacters!2575 lt!401764))))

(assert (=> d!335855 (= lt!402868 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401764))) (value!65595 lt!401764)))))

(assert (=> d!335855 (= (charsOf!1076 lt!401764) lt!402868)))

(declare-fun b_lambda!35063 () Bool)

(assert (=> (not b_lambda!35063) (not d!335855)))

(declare-fun t!110838 () Bool)

(declare-fun tb!65983 () Bool)

(assert (=> (and b!1171653 (= (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toChars!2981 (transformation!2021 (rule!3442 lt!401764)))) t!110838) tb!65983))

(declare-fun b!1172992 () Bool)

(declare-fun e!752292 () Bool)

(declare-fun tp!334793 () Bool)

(assert (=> b!1172992 (= e!752292 (and (inv!15297 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401764))) (value!65595 lt!401764)))) tp!334793))))

(declare-fun result!79026 () Bool)

(assert (=> tb!65983 (= result!79026 (and (inv!15298 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401764))) (value!65595 lt!401764))) e!752292))))

(assert (= tb!65983 b!1172992))

(declare-fun m!1347785 () Bool)

(assert (=> b!1172992 m!1347785))

(declare-fun m!1347787 () Bool)

(assert (=> tb!65983 m!1347787))

(assert (=> d!335855 t!110838))

(declare-fun b_and!80783 () Bool)

(assert (= b_and!80769 (and (=> t!110838 result!79026) b_and!80783)))

(declare-fun m!1347789 () Bool)

(assert (=> d!335855 m!1347789))

(declare-fun m!1347791 () Bool)

(assert (=> d!335855 m!1347791))

(assert (=> d!335093 d!335855))

(declare-fun d!335857 () Bool)

(declare-fun lt!402897 () Bool)

(declare-fun prefixMatch!28 (Regex!3291 List!11613) Bool)

(assert (=> d!335857 (= lt!402897 (prefixMatch!28 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) (list!4278 (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))))))))

(declare-datatypes ((List!11620 0))(
  ( (Nil!11596) (Cons!11596 (h!16997 Regex!3291) (t!110872 List!11620)) )
))
(declare-datatypes ((Context!1074 0))(
  ( (Context!1075 (exprs!1037 List!11620)) )
))
(declare-fun prefixMatchZipperSequence!101 ((InoxSet Context!1074) BalanceConc!7630 Int) Bool)

(declare-fun focus!48 (Regex!3291) (InoxSet Context!1074))

(assert (=> d!335857 (= lt!402897 (prefixMatchZipperSequence!101 (focus!48 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527))) (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))) 0))))

(declare-fun lt!402895 () Unit!17788)

(declare-fun lt!402893 () Unit!17788)

(assert (=> d!335857 (= lt!402895 lt!402893)))

(declare-fun lt!402890 () List!11613)

(declare-fun lt!402898 () (InoxSet Context!1074))

(declare-fun prefixMatchZipper!28 ((InoxSet Context!1074) List!11613) Bool)

(assert (=> d!335857 (= (prefixMatch!28 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) lt!402890) (prefixMatchZipper!28 lt!402898 lt!402890))))

(declare-datatypes ((List!11621 0))(
  ( (Nil!11597) (Cons!11597 (h!16998 Context!1074) (t!110873 List!11621)) )
))
(declare-fun lt!402894 () List!11621)

(declare-fun prefixMatchZipperRegexEquiv!28 ((InoxSet Context!1074) List!11621 Regex!3291 List!11613) Unit!17788)

(assert (=> d!335857 (= lt!402893 (prefixMatchZipperRegexEquiv!28 lt!402898 lt!402894 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) lt!402890))))

(assert (=> d!335857 (= lt!402890 (list!4278 (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0)))))))

(declare-fun toList!663 ((InoxSet Context!1074)) List!11621)

(assert (=> d!335857 (= lt!402894 (toList!663 (focus!48 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)))))))

(assert (=> d!335857 (= lt!402898 (focus!48 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527))))))

(declare-fun lt!402896 () Unit!17788)

(declare-fun lt!402889 () Unit!17788)

(assert (=> d!335857 (= lt!402896 lt!402889)))

(declare-fun lt!402892 () (InoxSet Context!1074))

(declare-fun lt!402891 () Int)

(declare-fun dropList!328 (BalanceConc!7630 Int) List!11613)

(assert (=> d!335857 (= (prefixMatchZipper!28 lt!402892 (dropList!328 (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))) lt!402891)) (prefixMatchZipperSequence!101 lt!402892 (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))) lt!402891))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!28 ((InoxSet Context!1074) BalanceConc!7630 Int) Unit!17788)

(assert (=> d!335857 (= lt!402889 (lemmaprefixMatchZipperSequenceEquivalent!28 lt!402892 (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))) lt!402891))))

(assert (=> d!335857 (= lt!402891 0)))

(assert (=> d!335857 (= lt!402892 (focus!48 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527))))))

(declare-fun validRegex!1444 (Regex!3291) Bool)

(assert (=> d!335857 (validRegex!1444 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)))))

(assert (=> d!335857 (= (prefixMatchZipperSequence!99 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0)))) lt!402897)))

(declare-fun bs!286006 () Bool)

(assert (= bs!286006 d!335857))

(declare-fun m!1347793 () Bool)

(assert (=> bs!286006 m!1347793))

(declare-fun m!1347795 () Bool)

(assert (=> bs!286006 m!1347795))

(assert (=> bs!286006 m!1345231))

(declare-fun m!1347797 () Bool)

(assert (=> bs!286006 m!1347797))

(declare-fun m!1347799 () Bool)

(assert (=> bs!286006 m!1347799))

(assert (=> bs!286006 m!1345233))

(assert (=> bs!286006 m!1347797))

(assert (=> bs!286006 m!1345233))

(declare-fun m!1347801 () Bool)

(assert (=> bs!286006 m!1347801))

(assert (=> bs!286006 m!1347801))

(declare-fun m!1347803 () Bool)

(assert (=> bs!286006 m!1347803))

(assert (=> bs!286006 m!1345233))

(declare-fun m!1347805 () Bool)

(assert (=> bs!286006 m!1347805))

(assert (=> bs!286006 m!1345231))

(declare-fun m!1347807 () Bool)

(assert (=> bs!286006 m!1347807))

(assert (=> bs!286006 m!1347793))

(assert (=> bs!286006 m!1345233))

(declare-fun m!1347809 () Bool)

(assert (=> bs!286006 m!1347809))

(assert (=> bs!286006 m!1345231))

(assert (=> bs!286006 m!1347793))

(assert (=> bs!286006 m!1345233))

(declare-fun m!1347811 () Bool)

(assert (=> bs!286006 m!1347811))

(assert (=> bs!286006 m!1345231))

(declare-fun m!1347813 () Bool)

(assert (=> bs!286006 m!1347813))

(assert (=> bs!286006 m!1345231))

(declare-fun m!1347815 () Bool)

(assert (=> bs!286006 m!1347815))

(declare-fun m!1347817 () Bool)

(assert (=> bs!286006 m!1347817))

(assert (=> d!335093 d!335857))

(assert (=> d!335093 d!334983))

(declare-fun d!335859 () Bool)

(declare-fun lt!402901 () C!6900)

(declare-fun apply!2526 (List!11613 Int) C!6900)

(assert (=> d!335859 (= lt!402901 (apply!2526 (list!4278 (charsOf!1076 lt!401769)) 0))))

(declare-fun apply!2527 (Conc!3804 Int) C!6900)

(assert (=> d!335859 (= lt!402901 (apply!2527 (c!195326 (charsOf!1076 lt!401769)) 0))))

(declare-fun e!752295 () Bool)

(assert (=> d!335859 e!752295))

(declare-fun res!529915 () Bool)

(assert (=> d!335859 (=> (not res!529915) (not e!752295))))

(assert (=> d!335859 (= res!529915 (<= 0 0))))

(assert (=> d!335859 (= (apply!2522 (charsOf!1076 lt!401769) 0) lt!402901)))

(declare-fun b!1172995 () Bool)

(assert (=> b!1172995 (= e!752295 (< 0 (size!9136 (charsOf!1076 lt!401769))))))

(assert (= (and d!335859 res!529915) b!1172995))

(assert (=> d!335859 m!1344243))

(assert (=> d!335859 m!1344835))

(assert (=> d!335859 m!1344835))

(declare-fun m!1347819 () Bool)

(assert (=> d!335859 m!1347819))

(declare-fun m!1347821 () Bool)

(assert (=> d!335859 m!1347821))

(assert (=> b!1172995 m!1344243))

(assert (=> b!1172995 m!1344245))

(assert (=> d!335093 d!335859))

(declare-fun d!335861 () Bool)

(declare-fun lt!402904 () Unit!17788)

(declare-fun lemma!30 (List!11615 LexerInterface!1716 List!11615) Unit!17788)

(assert (=> d!335861 (= lt!402904 (lemma!30 (rules!9642 thiss!10527) Lexer!1714 (rules!9642 thiss!10527)))))

(declare-fun lambda!48254 () Int)

(declare-fun generalisedUnion!34 (List!11620) Regex!3291)

(declare-fun map!2498 (List!11615 Int) List!11620)

(assert (=> d!335861 (= (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) (generalisedUnion!34 (map!2498 (rules!9642 thiss!10527) lambda!48254)))))

(declare-fun bs!286007 () Bool)

(assert (= bs!286007 d!335861))

(declare-fun m!1347823 () Bool)

(assert (=> bs!286007 m!1347823))

(declare-fun m!1347825 () Bool)

(assert (=> bs!286007 m!1347825))

(assert (=> bs!286007 m!1347825))

(declare-fun m!1347827 () Bool)

(assert (=> bs!286007 m!1347827))

(assert (=> d!335093 d!335861))

(declare-fun d!335863 () Bool)

(declare-fun e!752298 () Bool)

(assert (=> d!335863 e!752298))

(declare-fun res!529918 () Bool)

(assert (=> d!335863 (=> (not res!529918) (not e!752298))))

(declare-fun lt!402907 () BalanceConc!7630)

(assert (=> d!335863 (= res!529918 (= (list!4278 lt!402907) (Cons!11589 (apply!2522 (charsOf!1076 lt!401769) 0) Nil!11589)))))

(declare-fun singleton!306 (C!6900) BalanceConc!7630)

(assert (=> d!335863 (= lt!402907 (singleton!306 (apply!2522 (charsOf!1076 lt!401769) 0)))))

(assert (=> d!335863 (= (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0)) lt!402907)))

(declare-fun b!1172998 () Bool)

(assert (=> b!1172998 (= e!752298 (isBalanced!1075 (c!195326 lt!402907)))))

(assert (= (and d!335863 res!529918) b!1172998))

(declare-fun m!1347829 () Bool)

(assert (=> d!335863 m!1347829))

(assert (=> d!335863 m!1345237))

(declare-fun m!1347831 () Bool)

(assert (=> d!335863 m!1347831))

(declare-fun m!1347833 () Bool)

(assert (=> b!1172998 m!1347833))

(assert (=> d!335093 d!335863))

(declare-fun b!1173009 () Bool)

(declare-fun res!529930 () Bool)

(declare-fun e!752301 () Bool)

(assert (=> b!1173009 (=> (not res!529930) (not e!752301))))

(declare-fun height!518 (Conc!3804) Int)

(declare-fun ++!3000 (Conc!3804 Conc!3804) Conc!3804)

(assert (=> b!1173009 (= res!529930 (>= (height!518 (++!3000 (c!195326 (charsOf!1076 lt!401764)) (c!195326 (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))))) (max!0 (height!518 (c!195326 (charsOf!1076 lt!401764))) (height!518 (c!195326 (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0)))))))))

(declare-fun b!1173008 () Bool)

(declare-fun res!529929 () Bool)

(assert (=> b!1173008 (=> (not res!529929) (not e!752301))))

(assert (=> b!1173008 (= res!529929 (<= (height!518 (++!3000 (c!195326 (charsOf!1076 lt!401764)) (c!195326 (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))))) (+ (max!0 (height!518 (c!195326 (charsOf!1076 lt!401764))) (height!518 (c!195326 (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))))) 1)))))

(declare-fun b!1173007 () Bool)

(declare-fun res!529928 () Bool)

(assert (=> b!1173007 (=> (not res!529928) (not e!752301))))

(assert (=> b!1173007 (= res!529928 (isBalanced!1075 (++!3000 (c!195326 (charsOf!1076 lt!401764)) (c!195326 (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))))))))

(declare-fun lt!402910 () BalanceConc!7630)

(declare-fun b!1173010 () Bool)

(declare-fun ++!3001 (List!11613 List!11613) List!11613)

(assert (=> b!1173010 (= e!752301 (= (list!4278 lt!402910) (++!3001 (list!4278 (charsOf!1076 lt!401764)) (list!4278 (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))))))))

(declare-fun d!335865 () Bool)

(assert (=> d!335865 e!752301))

(declare-fun res!529927 () Bool)

(assert (=> d!335865 (=> (not res!529927) (not e!752301))))

(declare-fun appendAssocInst!227 (Conc!3804 Conc!3804) Bool)

(assert (=> d!335865 (= res!529927 (appendAssocInst!227 (c!195326 (charsOf!1076 lt!401764)) (c!195326 (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0)))))))

(assert (=> d!335865 (= lt!402910 (BalanceConc!7631 (++!3000 (c!195326 (charsOf!1076 lt!401764)) (c!195326 (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))))))))

(assert (=> d!335865 (= (++!2994 (charsOf!1076 lt!401764) (singletonSeq!685 (apply!2522 (charsOf!1076 lt!401769) 0))) lt!402910)))

(assert (= (and d!335865 res!529927) b!1173007))

(assert (= (and b!1173007 res!529928) b!1173008))

(assert (= (and b!1173008 res!529929) b!1173009))

(assert (= (and b!1173009 res!529930) b!1173010))

(declare-fun m!1347835 () Bool)

(assert (=> b!1173010 m!1347835))

(assert (=> b!1173010 m!1345239))

(declare-fun m!1347837 () Bool)

(assert (=> b!1173010 m!1347837))

(assert (=> b!1173010 m!1345241))

(declare-fun m!1347839 () Bool)

(assert (=> b!1173010 m!1347839))

(assert (=> b!1173010 m!1347837))

(assert (=> b!1173010 m!1347839))

(declare-fun m!1347841 () Bool)

(assert (=> b!1173010 m!1347841))

(declare-fun m!1347843 () Bool)

(assert (=> b!1173008 m!1347843))

(declare-fun m!1347845 () Bool)

(assert (=> b!1173008 m!1347845))

(assert (=> b!1173008 m!1347843))

(declare-fun m!1347847 () Bool)

(assert (=> b!1173008 m!1347847))

(assert (=> b!1173008 m!1347845))

(declare-fun m!1347849 () Bool)

(assert (=> b!1173008 m!1347849))

(declare-fun m!1347851 () Bool)

(assert (=> b!1173008 m!1347851))

(assert (=> b!1173008 m!1347849))

(declare-fun m!1347853 () Bool)

(assert (=> d!335865 m!1347853))

(assert (=> d!335865 m!1347843))

(assert (=> b!1173007 m!1347843))

(assert (=> b!1173007 m!1347843))

(declare-fun m!1347855 () Bool)

(assert (=> b!1173007 m!1347855))

(assert (=> b!1173009 m!1347843))

(assert (=> b!1173009 m!1347845))

(assert (=> b!1173009 m!1347843))

(assert (=> b!1173009 m!1347847))

(assert (=> b!1173009 m!1347845))

(assert (=> b!1173009 m!1347849))

(assert (=> b!1173009 m!1347851))

(assert (=> b!1173009 m!1347849))

(assert (=> d!335093 d!335865))

(declare-fun b!1173011 () Bool)

(declare-fun e!752305 () Bool)

(declare-fun e!752306 () Bool)

(assert (=> b!1173011 (= e!752305 e!752306)))

(declare-fun res!529933 () Bool)

(assert (=> b!1173011 (=> (not res!529933) (not e!752306))))

(assert (=> b!1173011 (= res!529933 (separableTokensPredicate!138 Lexer!1714 (apply!2517 lt!401775 (+ 0 1)) (apply!2517 lt!401775 (+ 0 1 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!402912 () Unit!17788)

(declare-fun Unit!17837 () Unit!17788)

(assert (=> b!1173011 (= lt!402912 Unit!17837)))

(assert (=> b!1173011 (> (size!9136 (charsOf!1076 (apply!2517 lt!401775 (+ 0 1 1)))) 0)))

(declare-fun lt!402941 () Unit!17788)

(declare-fun Unit!17838 () Unit!17788)

(assert (=> b!1173011 (= lt!402941 Unit!17838)))

(assert (=> b!1173011 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 lt!401775 (+ 0 1 1)))))

(declare-fun lt!402926 () Unit!17788)

(declare-fun Unit!17839 () Unit!17788)

(assert (=> b!1173011 (= lt!402926 Unit!17839)))

(assert (=> b!1173011 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 lt!401775 (+ 0 1)))))

(declare-fun lt!402924 () Unit!17788)

(declare-fun lt!402927 () Unit!17788)

(assert (=> b!1173011 (= lt!402924 lt!402927)))

(declare-fun lt!402921 () Token!3704)

(assert (=> b!1173011 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402921)))

(declare-fun lt!402934 () List!11614)

(assert (=> b!1173011 (= lt!402927 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402934 lt!402921))))

(assert (=> b!1173011 (= lt!402921 (apply!2517 lt!401775 (+ 0 1 1)))))

(assert (=> b!1173011 (= lt!402934 (list!4274 lt!401775))))

(declare-fun lt!402933 () Unit!17788)

(declare-fun lt!402923 () Unit!17788)

(assert (=> b!1173011 (= lt!402933 lt!402923)))

(declare-fun lt!402930 () Token!3704)

(assert (=> b!1173011 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402930)))

(declare-fun lt!402920 () List!11614)

(assert (=> b!1173011 (= lt!402923 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402920 lt!402930))))

(assert (=> b!1173011 (= lt!402930 (apply!2517 lt!401775 (+ 0 1)))))

(assert (=> b!1173011 (= lt!402920 (list!4274 lt!401775))))

(declare-fun lt!402917 () Unit!17788)

(declare-fun lt!402937 () Unit!17788)

(assert (=> b!1173011 (= lt!402917 lt!402937)))

(declare-fun lt!402929 () List!11614)

(declare-fun lt!402939 () Int)

(assert (=> b!1173011 (= (tail!1694 (drop!493 lt!402929 lt!402939)) (drop!493 lt!402929 (+ lt!402939 1)))))

(assert (=> b!1173011 (= lt!402937 (lemmaDropTail!367 lt!402929 lt!402939))))

(assert (=> b!1173011 (= lt!402939 (+ 0 1 1))))

(assert (=> b!1173011 (= lt!402929 (list!4274 lt!401775))))

(declare-fun lt!402940 () Unit!17788)

(declare-fun lt!402943 () Unit!17788)

(assert (=> b!1173011 (= lt!402940 lt!402943)))

(declare-fun lt!402928 () List!11614)

(assert (=> b!1173011 (= (tail!1694 (drop!493 lt!402928 (+ 0 1))) (drop!493 lt!402928 (+ 0 1 1)))))

(assert (=> b!1173011 (= lt!402943 (lemmaDropTail!367 lt!402928 (+ 0 1)))))

(assert (=> b!1173011 (= lt!402928 (list!4274 lt!401775))))

(declare-fun lt!402919 () Unit!17788)

(declare-fun lt!402925 () Unit!17788)

(assert (=> b!1173011 (= lt!402919 lt!402925)))

(declare-fun lt!402932 () List!11614)

(declare-fun lt!402922 () Int)

(assert (=> b!1173011 (= (head!2110 (drop!493 lt!402932 lt!402922)) (apply!2518 lt!402932 lt!402922))))

(assert (=> b!1173011 (= lt!402925 (lemmaDropApply!379 lt!402932 lt!402922))))

(assert (=> b!1173011 (= lt!402922 (+ 0 1 1))))

(assert (=> b!1173011 (= lt!402932 (list!4274 lt!401775))))

(declare-fun lt!402936 () Unit!17788)

(declare-fun lt!402916 () Unit!17788)

(assert (=> b!1173011 (= lt!402936 lt!402916)))

(declare-fun lt!402913 () List!11614)

(assert (=> b!1173011 (= (head!2110 (drop!493 lt!402913 (+ 0 1))) (apply!2518 lt!402913 (+ 0 1)))))

(assert (=> b!1173011 (= lt!402916 (lemmaDropApply!379 lt!402913 (+ 0 1)))))

(assert (=> b!1173011 (= lt!402913 (list!4274 lt!401775))))

(declare-fun b!1173012 () Bool)

(declare-fun e!752303 () Bool)

(declare-fun lt!402938 () List!11614)

(assert (=> b!1173012 (= e!752303 (<= (+ 0 1) (size!9142 lt!402938)))))

(declare-fun d!335867 () Bool)

(declare-fun lt!402911 () Bool)

(assert (=> d!335867 (= lt!402911 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 lt!401775 (+ 0 1)) (rules!9642 thiss!10527)))))

(declare-fun lt!402931 () Unit!17788)

(declare-fun lt!402915 () Unit!17788)

(assert (=> d!335867 (= lt!402931 lt!402915)))

(declare-fun lt!402942 () List!11614)

(assert (=> d!335867 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402942)))

(declare-fun lt!402935 () List!11614)

(assert (=> d!335867 (= lt!402915 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!402935 lt!402942))))

(declare-fun e!752304 () Bool)

(assert (=> d!335867 e!752304))

(declare-fun res!529937 () Bool)

(assert (=> d!335867 (=> (not res!529937) (not e!752304))))

(assert (=> d!335867 (= res!529937 ((_ is Lexer!1714) Lexer!1714))))

(assert (=> d!335867 (= lt!402942 (dropList!325 lt!401775 (+ 0 1)))))

(assert (=> d!335867 (= lt!402935 (list!4274 lt!401775))))

(declare-fun lt!402914 () Unit!17788)

(declare-fun lt!402918 () Unit!17788)

(assert (=> d!335867 (= lt!402914 lt!402918)))

(assert (=> d!335867 (subseq!271 (drop!493 lt!402938 (+ 0 1)) lt!402938)))

(assert (=> d!335867 (= lt!402918 (lemmaDropSubSeq!33 lt!402938 (+ 0 1)))))

(assert (=> d!335867 e!752303))

(declare-fun res!529936 () Bool)

(assert (=> d!335867 (=> (not res!529936) (not e!752303))))

(assert (=> d!335867 (= res!529936 (>= (+ 0 1) 0))))

(assert (=> d!335867 (= lt!402938 (list!4274 lt!401775))))

(assert (=> d!335867 (= lt!402911 e!752305)))

(declare-fun res!529935 () Bool)

(assert (=> d!335867 (=> res!529935 e!752305)))

(assert (=> d!335867 (= res!529935 (not (< (+ 0 1) (- (size!9137 lt!401775) 1))))))

(declare-fun e!752302 () Bool)

(assert (=> d!335867 e!752302))

(declare-fun res!529932 () Bool)

(assert (=> d!335867 (=> (not res!529932) (not e!752302))))

(assert (=> d!335867 (= res!529932 (>= (+ 0 1) 0))))

(assert (=> d!335867 (= (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 lt!401775 (+ 0 1) (rules!9642 thiss!10527)) lt!402911)))

(declare-fun b!1173013 () Bool)

(assert (=> b!1173013 (= e!752302 (<= (+ 0 1) (size!9137 lt!401775)))))

(declare-fun b!1173014 () Bool)

(declare-fun res!529934 () Bool)

(assert (=> b!1173014 (=> (not res!529934) (not e!752304))))

(assert (=> b!1173014 (= res!529934 (not (isEmpty!7032 (rules!9642 thiss!10527))))))

(declare-fun b!1173015 () Bool)

(declare-fun res!529938 () Bool)

(assert (=> b!1173015 (=> (not res!529938) (not e!752304))))

(assert (=> b!1173015 (= res!529938 (subseq!271 lt!402942 lt!402935))))

(declare-fun b!1173016 () Bool)

(assert (=> b!1173016 (= e!752304 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402935))))

(declare-fun b!1173017 () Bool)

(assert (=> b!1173017 (= e!752306 (tokensListTwoByTwoPredicateSeparable!77 Lexer!1714 lt!401775 (+ 0 1 1) (rules!9642 thiss!10527)))))

(declare-fun b!1173018 () Bool)

(declare-fun res!529931 () Bool)

(assert (=> b!1173018 (=> (not res!529931) (not e!752304))))

(assert (=> b!1173018 (= res!529931 (rulesInvariant!1590 Lexer!1714 (rules!9642 thiss!10527)))))

(assert (= (and d!335867 res!529932) b!1173013))

(assert (= (and d!335867 (not res!529935)) b!1173011))

(assert (= (and b!1173011 res!529933) b!1173017))

(assert (= (and d!335867 res!529936) b!1173012))

(assert (= (and d!335867 res!529937) b!1173014))

(assert (= (and b!1173014 res!529934) b!1173018))

(assert (= (and b!1173018 res!529931) b!1173015))

(assert (= (and b!1173015 res!529938) b!1173016))

(declare-fun m!1347857 () Bool)

(assert (=> b!1173011 m!1347857))

(declare-fun m!1347859 () Bool)

(assert (=> b!1173011 m!1347859))

(declare-fun m!1347861 () Bool)

(assert (=> b!1173011 m!1347861))

(declare-fun m!1347863 () Bool)

(assert (=> b!1173011 m!1347863))

(declare-fun m!1347865 () Bool)

(assert (=> b!1173011 m!1347865))

(declare-fun m!1347867 () Bool)

(assert (=> b!1173011 m!1347867))

(declare-fun m!1347869 () Bool)

(assert (=> b!1173011 m!1347869))

(declare-fun m!1347871 () Bool)

(assert (=> b!1173011 m!1347871))

(assert (=> b!1173011 m!1347867))

(declare-fun m!1347873 () Bool)

(assert (=> b!1173011 m!1347873))

(declare-fun m!1347875 () Bool)

(assert (=> b!1173011 m!1347875))

(assert (=> b!1173011 m!1344367))

(assert (=> b!1173011 m!1344405))

(declare-fun m!1347877 () Bool)

(assert (=> b!1173011 m!1347877))

(declare-fun m!1347879 () Bool)

(assert (=> b!1173011 m!1347879))

(declare-fun m!1347881 () Bool)

(assert (=> b!1173011 m!1347881))

(assert (=> b!1173011 m!1347873))

(declare-fun m!1347883 () Bool)

(assert (=> b!1173011 m!1347883))

(assert (=> b!1173011 m!1344231))

(declare-fun m!1347885 () Bool)

(assert (=> b!1173011 m!1347885))

(declare-fun m!1347887 () Bool)

(assert (=> b!1173011 m!1347887))

(declare-fun m!1347889 () Bool)

(assert (=> b!1173011 m!1347889))

(assert (=> b!1173011 m!1344367))

(assert (=> b!1173011 m!1347857))

(declare-fun m!1347891 () Bool)

(assert (=> b!1173011 m!1347891))

(assert (=> b!1173011 m!1347869))

(declare-fun m!1347893 () Bool)

(assert (=> b!1173011 m!1347893))

(declare-fun m!1347895 () Bool)

(assert (=> b!1173011 m!1347895))

(assert (=> b!1173011 m!1347861))

(declare-fun m!1347897 () Bool)

(assert (=> b!1173011 m!1347897))

(assert (=> b!1173011 m!1344367))

(assert (=> b!1173011 m!1347867))

(declare-fun m!1347899 () Bool)

(assert (=> b!1173011 m!1347899))

(assert (=> b!1173011 m!1347867))

(declare-fun m!1347901 () Bool)

(assert (=> b!1173011 m!1347901))

(assert (=> b!1173011 m!1347865))

(declare-fun m!1347903 () Bool)

(assert (=> b!1173011 m!1347903))

(declare-fun m!1347905 () Bool)

(assert (=> b!1173011 m!1347905))

(declare-fun m!1347907 () Bool)

(assert (=> b!1173015 m!1347907))

(assert (=> b!1173018 m!1344167))

(declare-fun m!1347909 () Bool)

(assert (=> b!1173017 m!1347909))

(assert (=> b!1173014 m!1344215))

(declare-fun m!1347911 () Bool)

(assert (=> b!1173016 m!1347911))

(assert (=> b!1173013 m!1344417))

(declare-fun m!1347913 () Bool)

(assert (=> d!335867 m!1347913))

(assert (=> d!335867 m!1344417))

(declare-fun m!1347915 () Bool)

(assert (=> d!335867 m!1347915))

(declare-fun m!1347917 () Bool)

(assert (=> d!335867 m!1347917))

(assert (=> d!335867 m!1347915))

(declare-fun m!1347919 () Bool)

(assert (=> d!335867 m!1347919))

(declare-fun m!1347921 () Bool)

(assert (=> d!335867 m!1347921))

(declare-fun m!1347923 () Bool)

(assert (=> d!335867 m!1347923))

(assert (=> d!335867 m!1347919))

(declare-fun m!1347925 () Bool)

(assert (=> d!335867 m!1347925))

(assert (=> d!335867 m!1344231))

(declare-fun m!1347927 () Bool)

(assert (=> b!1173012 m!1347927))

(assert (=> b!1171218 d!335867))

(declare-fun d!335869 () Bool)

(declare-fun lt!402944 () Bool)

(declare-fun e!752308 () Bool)

(assert (=> d!335869 (= lt!402944 e!752308)))

(declare-fun res!529939 () Bool)

(assert (=> d!335869 (=> (not res!529939) (not e!752308))))

(assert (=> d!335869 (= res!529939 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402127))))) (list!4274 (singletonSeq!684 lt!402127))))))

(declare-fun e!752307 () Bool)

(assert (=> d!335869 (= lt!402944 e!752307)))

(declare-fun res!529940 () Bool)

(assert (=> d!335869 (=> (not res!529940) (not e!752307))))

(declare-fun lt!402945 () tuple2!12048)

(assert (=> d!335869 (= res!529940 (= (size!9137 (_1!6871 lt!402945)) 1))))

(assert (=> d!335869 (= lt!402945 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402127))))))

(assert (=> d!335869 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335869 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402127) lt!402944)))

(declare-fun b!1173019 () Bool)

(declare-fun res!529941 () Bool)

(assert (=> b!1173019 (=> (not res!529941) (not e!752307))))

(assert (=> b!1173019 (= res!529941 (= (apply!2517 (_1!6871 lt!402945) 0) lt!402127))))

(declare-fun b!1173020 () Bool)

(assert (=> b!1173020 (= e!752307 (isEmpty!7034 (_2!6871 lt!402945)))))

(declare-fun b!1173021 () Bool)

(assert (=> b!1173021 (= e!752308 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402127))))))))

(assert (= (and d!335869 res!529940) b!1173019))

(assert (= (and b!1173019 res!529941) b!1173020))

(assert (= (and d!335869 res!529939) b!1173021))

(declare-fun m!1347929 () Bool)

(assert (=> d!335869 m!1347929))

(declare-fun m!1347931 () Bool)

(assert (=> d!335869 m!1347931))

(assert (=> d!335869 m!1344215))

(declare-fun m!1347933 () Bool)

(assert (=> d!335869 m!1347933))

(declare-fun m!1347935 () Bool)

(assert (=> d!335869 m!1347935))

(declare-fun m!1347937 () Bool)

(assert (=> d!335869 m!1347937))

(assert (=> d!335869 m!1347929))

(assert (=> d!335869 m!1347935))

(declare-fun m!1347939 () Bool)

(assert (=> d!335869 m!1347939))

(assert (=> d!335869 m!1347929))

(declare-fun m!1347941 () Bool)

(assert (=> b!1173019 m!1347941))

(declare-fun m!1347943 () Bool)

(assert (=> b!1173020 m!1347943))

(assert (=> b!1173021 m!1347929))

(assert (=> b!1173021 m!1347929))

(assert (=> b!1173021 m!1347935))

(assert (=> b!1173021 m!1347935))

(assert (=> b!1173021 m!1347937))

(declare-fun m!1347945 () Bool)

(assert (=> b!1173021 m!1347945))

(assert (=> b!1171339 d!335869))

(declare-fun d!335871 () Bool)

(assert (=> d!335871 (= (head!2110 (drop!493 lt!402129 lt!402119)) (h!16991 (drop!493 lt!402129 lt!402119)))))

(assert (=> b!1171339 d!335871))

(declare-fun b!1173022 () Bool)

(declare-fun e!752311 () Int)

(declare-fun call!82373 () Int)

(assert (=> b!1173022 (= e!752311 (- call!82373 lt!402136))))

(declare-fun b!1173024 () Bool)

(declare-fun e!752309 () Bool)

(declare-fun lt!402946 () List!11614)

(declare-fun e!752313 () Int)

(assert (=> b!1173024 (= e!752309 (= (size!9142 lt!402946) e!752313))))

(declare-fun c!195720 () Bool)

(assert (=> b!1173024 (= c!195720 (<= lt!402136 0))))

(declare-fun b!1173025 () Bool)

(declare-fun e!752312 () List!11614)

(assert (=> b!1173025 (= e!752312 (drop!493 (t!110758 lt!402126) (- lt!402136 1)))))

(declare-fun b!1173026 () Bool)

(assert (=> b!1173026 (= e!752313 call!82373)))

(declare-fun b!1173027 () Bool)

(assert (=> b!1173027 (= e!752311 0)))

(declare-fun b!1173028 () Bool)

(assert (=> b!1173028 (= e!752313 e!752311)))

(declare-fun c!195721 () Bool)

(assert (=> b!1173028 (= c!195721 (>= lt!402136 call!82373))))

(declare-fun bm!82368 () Bool)

(assert (=> bm!82368 (= call!82373 (size!9142 lt!402126))))

(declare-fun b!1173029 () Bool)

(declare-fun e!752310 () List!11614)

(assert (=> b!1173029 (= e!752310 Nil!11590)))

(declare-fun b!1173030 () Bool)

(assert (=> b!1173030 (= e!752312 lt!402126)))

(declare-fun b!1173023 () Bool)

(assert (=> b!1173023 (= e!752310 e!752312)))

(declare-fun c!195723 () Bool)

(assert (=> b!1173023 (= c!195723 (<= lt!402136 0))))

(declare-fun d!335873 () Bool)

(assert (=> d!335873 e!752309))

(declare-fun res!529942 () Bool)

(assert (=> d!335873 (=> (not res!529942) (not e!752309))))

(assert (=> d!335873 (= res!529942 (= ((_ map implies) (content!1614 lt!402946) (content!1614 lt!402126)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335873 (= lt!402946 e!752310)))

(declare-fun c!195722 () Bool)

(assert (=> d!335873 (= c!195722 ((_ is Nil!11590) lt!402126))))

(assert (=> d!335873 (= (drop!493 lt!402126 lt!402136) lt!402946)))

(assert (= (and d!335873 c!195722) b!1173029))

(assert (= (and d!335873 (not c!195722)) b!1173023))

(assert (= (and b!1173023 c!195723) b!1173030))

(assert (= (and b!1173023 (not c!195723)) b!1173025))

(assert (= (and d!335873 res!529942) b!1173024))

(assert (= (and b!1173024 c!195720) b!1173026))

(assert (= (and b!1173024 (not c!195720)) b!1173028))

(assert (= (and b!1173028 c!195721) b!1173027))

(assert (= (and b!1173028 (not c!195721)) b!1173022))

(assert (= (or b!1173026 b!1173028 b!1173022) bm!82368))

(declare-fun m!1347947 () Bool)

(assert (=> b!1173024 m!1347947))

(declare-fun m!1347949 () Bool)

(assert (=> b!1173025 m!1347949))

(declare-fun m!1347951 () Bool)

(assert (=> bm!82368 m!1347951))

(declare-fun m!1347953 () Bool)

(assert (=> d!335873 m!1347953))

(declare-fun m!1347955 () Bool)

(assert (=> d!335873 m!1347955))

(assert (=> b!1171339 d!335873))

(assert (=> b!1171339 d!334969))

(declare-fun d!335875 () Bool)

(assert (=> d!335875 (= (head!2110 (drop!493 lt!402110 1)) (apply!2518 lt!402110 1))))

(declare-fun lt!402947 () Unit!17788)

(assert (=> d!335875 (= lt!402947 (choose!7568 lt!402110 1))))

(declare-fun e!752314 () Bool)

(assert (=> d!335875 e!752314))

(declare-fun res!529943 () Bool)

(assert (=> d!335875 (=> (not res!529943) (not e!752314))))

(assert (=> d!335875 (= res!529943 (>= 1 0))))

(assert (=> d!335875 (= (lemmaDropApply!379 lt!402110 1) lt!402947)))

(declare-fun b!1173031 () Bool)

(assert (=> b!1173031 (= e!752314 (< 1 (size!9142 lt!402110)))))

(assert (= (and d!335875 res!529943) b!1173031))

(assert (=> d!335875 m!1344689))

(assert (=> d!335875 m!1344689))

(assert (=> d!335875 m!1344729))

(assert (=> d!335875 m!1344683))

(declare-fun m!1347957 () Bool)

(assert (=> d!335875 m!1347957))

(declare-fun m!1347959 () Bool)

(assert (=> b!1173031 m!1347959))

(assert (=> b!1171339 d!335875))

(declare-fun b!1173032 () Bool)

(declare-fun e!752317 () Int)

(declare-fun call!82374 () Int)

(assert (=> b!1173032 (= e!752317 (- call!82374 1))))

(declare-fun b!1173034 () Bool)

(declare-fun e!752315 () Bool)

(declare-fun lt!402948 () List!11614)

(declare-fun e!752319 () Int)

(assert (=> b!1173034 (= e!752315 (= (size!9142 lt!402948) e!752319))))

(declare-fun c!195724 () Bool)

(assert (=> b!1173034 (= c!195724 (<= 1 0))))

(declare-fun b!1173035 () Bool)

(declare-fun e!752318 () List!11614)

(assert (=> b!1173035 (= e!752318 (drop!493 (t!110758 lt!402110) (- 1 1)))))

(declare-fun b!1173036 () Bool)

(assert (=> b!1173036 (= e!752319 call!82374)))

(declare-fun b!1173037 () Bool)

(assert (=> b!1173037 (= e!752317 0)))

(declare-fun b!1173038 () Bool)

(assert (=> b!1173038 (= e!752319 e!752317)))

(declare-fun c!195725 () Bool)

(assert (=> b!1173038 (= c!195725 (>= 1 call!82374))))

(declare-fun bm!82369 () Bool)

(assert (=> bm!82369 (= call!82374 (size!9142 lt!402110))))

(declare-fun b!1173039 () Bool)

(declare-fun e!752316 () List!11614)

(assert (=> b!1173039 (= e!752316 Nil!11590)))

(declare-fun b!1173040 () Bool)

(assert (=> b!1173040 (= e!752318 lt!402110)))

(declare-fun b!1173033 () Bool)

(assert (=> b!1173033 (= e!752316 e!752318)))

(declare-fun c!195727 () Bool)

(assert (=> b!1173033 (= c!195727 (<= 1 0))))

(declare-fun d!335877 () Bool)

(assert (=> d!335877 e!752315))

(declare-fun res!529944 () Bool)

(assert (=> d!335877 (=> (not res!529944) (not e!752315))))

(assert (=> d!335877 (= res!529944 (= ((_ map implies) (content!1614 lt!402948) (content!1614 lt!402110)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335877 (= lt!402948 e!752316)))

(declare-fun c!195726 () Bool)

(assert (=> d!335877 (= c!195726 ((_ is Nil!11590) lt!402110))))

(assert (=> d!335877 (= (drop!493 lt!402110 1) lt!402948)))

(assert (= (and d!335877 c!195726) b!1173039))

(assert (= (and d!335877 (not c!195726)) b!1173033))

(assert (= (and b!1173033 c!195727) b!1173040))

(assert (= (and b!1173033 (not c!195727)) b!1173035))

(assert (= (and d!335877 res!529944) b!1173034))

(assert (= (and b!1173034 c!195724) b!1173036))

(assert (= (and b!1173034 (not c!195724)) b!1173038))

(assert (= (and b!1173038 c!195725) b!1173037))

(assert (= (and b!1173038 (not c!195725)) b!1173032))

(assert (= (or b!1173036 b!1173038 b!1173032) bm!82369))

(declare-fun m!1347961 () Bool)

(assert (=> b!1173034 m!1347961))

(declare-fun m!1347963 () Bool)

(assert (=> b!1173035 m!1347963))

(assert (=> bm!82369 m!1347959))

(declare-fun m!1347965 () Bool)

(assert (=> d!335877 m!1347965))

(declare-fun m!1347967 () Bool)

(assert (=> d!335877 m!1347967))

(assert (=> b!1171339 d!335877))

(declare-fun d!335879 () Bool)

(declare-fun lt!402949 () BalanceConc!7630)

(assert (=> d!335879 (= (list!4278 lt!402949) (originalCharacters!2575 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))))

(assert (=> d!335879 (= lt!402949 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))) (value!65595 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))))

(assert (=> d!335879 (= (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))) lt!402949)))

(declare-fun b_lambda!35065 () Bool)

(assert (=> (not b_lambda!35065) (not d!335879)))

(declare-fun t!110841 () Bool)

(declare-fun tb!65985 () Bool)

(assert (=> (and b!1171653 (= (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))) t!110841) tb!65985))

(declare-fun b!1173041 () Bool)

(declare-fun e!752320 () Bool)

(declare-fun tp!334794 () Bool)

(assert (=> b!1173041 (= e!752320 (and (inv!15297 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))) (value!65595 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))) tp!334794))))

(declare-fun result!79028 () Bool)

(assert (=> tb!65985 (= result!79028 (and (inv!15298 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))) (value!65595 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))) e!752320))))

(assert (= tb!65985 b!1173041))

(declare-fun m!1347969 () Bool)

(assert (=> b!1173041 m!1347969))

(declare-fun m!1347971 () Bool)

(assert (=> tb!65985 m!1347971))

(assert (=> d!335879 t!110841))

(declare-fun b_and!80785 () Bool)

(assert (= b_and!80783 (and (=> t!110841 result!79028) b_and!80785)))

(declare-fun m!1347973 () Bool)

(assert (=> d!335879 m!1347973))

(declare-fun m!1347975 () Bool)

(assert (=> d!335879 m!1347975))

(assert (=> b!1171339 d!335879))

(declare-fun d!335881 () Bool)

(assert (=> d!335881 (= (tail!1694 (drop!493 lt!402126 lt!402136)) (drop!493 lt!402126 (+ lt!402136 1)))))

(declare-fun lt!402950 () Unit!17788)

(assert (=> d!335881 (= lt!402950 (choose!7569 lt!402126 lt!402136))))

(declare-fun e!752321 () Bool)

(assert (=> d!335881 e!752321))

(declare-fun res!529945 () Bool)

(assert (=> d!335881 (=> (not res!529945) (not e!752321))))

(assert (=> d!335881 (= res!529945 (>= lt!402136 0))))

(assert (=> d!335881 (= (lemmaDropTail!367 lt!402126 lt!402136) lt!402950)))

(declare-fun b!1173042 () Bool)

(assert (=> b!1173042 (= e!752321 (< lt!402136 (size!9142 lt!402126)))))

(assert (= (and d!335881 res!529945) b!1173042))

(assert (=> d!335881 m!1344693))

(assert (=> d!335881 m!1344693))

(assert (=> d!335881 m!1344719))

(assert (=> d!335881 m!1344703))

(declare-fun m!1347977 () Bool)

(assert (=> d!335881 m!1347977))

(assert (=> b!1173042 m!1347951))

(assert (=> b!1171339 d!335881))

(declare-fun b!1173043 () Bool)

(declare-fun e!752324 () Int)

(declare-fun call!82375 () Int)

(assert (=> b!1173043 (= e!752324 (- call!82375 1))))

(declare-fun b!1173045 () Bool)

(declare-fun e!752322 () Bool)

(declare-fun lt!402951 () List!11614)

(declare-fun e!752326 () Int)

(assert (=> b!1173045 (= e!752322 (= (size!9142 lt!402951) e!752326))))

(declare-fun c!195728 () Bool)

(assert (=> b!1173045 (= c!195728 (<= 1 0))))

(declare-fun b!1173046 () Bool)

(declare-fun e!752325 () List!11614)

(assert (=> b!1173046 (= e!752325 (drop!493 (t!110758 lt!402125) (- 1 1)))))

(declare-fun b!1173047 () Bool)

(assert (=> b!1173047 (= e!752326 call!82375)))

(declare-fun b!1173048 () Bool)

(assert (=> b!1173048 (= e!752324 0)))

(declare-fun b!1173049 () Bool)

(assert (=> b!1173049 (= e!752326 e!752324)))

(declare-fun c!195729 () Bool)

(assert (=> b!1173049 (= c!195729 (>= 1 call!82375))))

(declare-fun bm!82370 () Bool)

(assert (=> bm!82370 (= call!82375 (size!9142 lt!402125))))

(declare-fun b!1173050 () Bool)

(declare-fun e!752323 () List!11614)

(assert (=> b!1173050 (= e!752323 Nil!11590)))

(declare-fun b!1173051 () Bool)

(assert (=> b!1173051 (= e!752325 lt!402125)))

(declare-fun b!1173044 () Bool)

(assert (=> b!1173044 (= e!752323 e!752325)))

(declare-fun c!195731 () Bool)

(assert (=> b!1173044 (= c!195731 (<= 1 0))))

(declare-fun d!335883 () Bool)

(assert (=> d!335883 e!752322))

(declare-fun res!529946 () Bool)

(assert (=> d!335883 (=> (not res!529946) (not e!752322))))

(assert (=> d!335883 (= res!529946 (= ((_ map implies) (content!1614 lt!402951) (content!1614 lt!402125)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335883 (= lt!402951 e!752323)))

(declare-fun c!195730 () Bool)

(assert (=> d!335883 (= c!195730 ((_ is Nil!11590) lt!402125))))

(assert (=> d!335883 (= (drop!493 lt!402125 1) lt!402951)))

(assert (= (and d!335883 c!195730) b!1173050))

(assert (= (and d!335883 (not c!195730)) b!1173044))

(assert (= (and b!1173044 c!195731) b!1173051))

(assert (= (and b!1173044 (not c!195731)) b!1173046))

(assert (= (and d!335883 res!529946) b!1173045))

(assert (= (and b!1173045 c!195728) b!1173047))

(assert (= (and b!1173045 (not c!195728)) b!1173049))

(assert (= (and b!1173049 c!195729) b!1173048))

(assert (= (and b!1173049 (not c!195729)) b!1173043))

(assert (= (or b!1173047 b!1173049 b!1173043) bm!82370))

(declare-fun m!1347979 () Bool)

(assert (=> b!1173045 m!1347979))

(declare-fun m!1347981 () Bool)

(assert (=> b!1173046 m!1347981))

(declare-fun m!1347983 () Bool)

(assert (=> bm!82370 m!1347983))

(declare-fun m!1347985 () Bool)

(assert (=> d!335883 m!1347985))

(declare-fun m!1347987 () Bool)

(assert (=> d!335883 m!1347987))

(assert (=> b!1171339 d!335883))

(declare-fun d!335885 () Bool)

(declare-fun lt!402952 () Bool)

(declare-fun e!752328 () Bool)

(assert (=> d!335885 (= lt!402952 e!752328)))

(declare-fun res!529947 () Bool)

(assert (=> d!335885 (=> (not res!529947) (not e!752328))))

(assert (=> d!335885 (= res!529947 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402118))))) (list!4274 (singletonSeq!684 lt!402118))))))

(declare-fun e!752327 () Bool)

(assert (=> d!335885 (= lt!402952 e!752327)))

(declare-fun res!529948 () Bool)

(assert (=> d!335885 (=> (not res!529948) (not e!752327))))

(declare-fun lt!402953 () tuple2!12048)

(assert (=> d!335885 (= res!529948 (= (size!9137 (_1!6871 lt!402953)) 1))))

(assert (=> d!335885 (= lt!402953 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402118))))))

(assert (=> d!335885 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335885 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402118) lt!402952)))

(declare-fun b!1173052 () Bool)

(declare-fun res!529949 () Bool)

(assert (=> b!1173052 (=> (not res!529949) (not e!752327))))

(assert (=> b!1173052 (= res!529949 (= (apply!2517 (_1!6871 lt!402953) 0) lt!402118))))

(declare-fun b!1173053 () Bool)

(assert (=> b!1173053 (= e!752327 (isEmpty!7034 (_2!6871 lt!402953)))))

(declare-fun b!1173054 () Bool)

(assert (=> b!1173054 (= e!752328 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402118))))))))

(assert (= (and d!335885 res!529948) b!1173052))

(assert (= (and b!1173052 res!529949) b!1173053))

(assert (= (and d!335885 res!529947) b!1173054))

(declare-fun m!1347989 () Bool)

(assert (=> d!335885 m!1347989))

(declare-fun m!1347991 () Bool)

(assert (=> d!335885 m!1347991))

(assert (=> d!335885 m!1344215))

(declare-fun m!1347993 () Bool)

(assert (=> d!335885 m!1347993))

(declare-fun m!1347995 () Bool)

(assert (=> d!335885 m!1347995))

(declare-fun m!1347997 () Bool)

(assert (=> d!335885 m!1347997))

(assert (=> d!335885 m!1347989))

(assert (=> d!335885 m!1347995))

(declare-fun m!1347999 () Bool)

(assert (=> d!335885 m!1347999))

(assert (=> d!335885 m!1347989))

(declare-fun m!1348001 () Bool)

(assert (=> b!1173052 m!1348001))

(declare-fun m!1348003 () Bool)

(assert (=> b!1173053 m!1348003))

(assert (=> b!1173054 m!1347989))

(assert (=> b!1173054 m!1347989))

(assert (=> b!1173054 m!1347995))

(assert (=> b!1173054 m!1347995))

(assert (=> b!1173054 m!1347997))

(declare-fun m!1348005 () Bool)

(assert (=> b!1173054 m!1348005))

(assert (=> b!1171339 d!335885))

(declare-fun d!335887 () Bool)

(declare-fun lt!402954 () Bool)

(declare-fun e!752330 () Bool)

(assert (=> d!335887 (= lt!402954 e!752330)))

(declare-fun res!529950 () Bool)

(assert (=> d!335887 (=> (not res!529950) (not e!752330))))

(assert (=> d!335887 (= res!529950 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) 1)))))) (list!4274 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) 1)))))))

(declare-fun e!752329 () Bool)

(assert (=> d!335887 (= lt!402954 e!752329)))

(declare-fun res!529951 () Bool)

(assert (=> d!335887 (=> (not res!529951) (not e!752329))))

(declare-fun lt!402955 () tuple2!12048)

(assert (=> d!335887 (= res!529951 (= (size!9137 (_1!6871 lt!402955)) 1))))

(assert (=> d!335887 (= lt!402955 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) 1)))))))

(assert (=> d!335887 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335887 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) 1)) lt!402954)))

(declare-fun b!1173055 () Bool)

(declare-fun res!529952 () Bool)

(assert (=> b!1173055 (=> (not res!529952) (not e!752329))))

(assert (=> b!1173055 (= res!529952 (= (apply!2517 (_1!6871 lt!402955) 0) (apply!2517 (tokens!1654 thiss!10527) 1)))))

(declare-fun b!1173056 () Bool)

(assert (=> b!1173056 (= e!752329 (isEmpty!7034 (_2!6871 lt!402955)))))

(declare-fun b!1173057 () Bool)

(assert (=> b!1173057 (= e!752330 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) 1)))))))))

(assert (= (and d!335887 res!529951) b!1173055))

(assert (= (and b!1173055 res!529952) b!1173056))

(assert (= (and d!335887 res!529950) b!1173057))

(declare-fun m!1348007 () Bool)

(assert (=> d!335887 m!1348007))

(declare-fun m!1348009 () Bool)

(assert (=> d!335887 m!1348009))

(assert (=> d!335887 m!1344215))

(declare-fun m!1348011 () Bool)

(assert (=> d!335887 m!1348011))

(declare-fun m!1348013 () Bool)

(assert (=> d!335887 m!1348013))

(declare-fun m!1348015 () Bool)

(assert (=> d!335887 m!1348015))

(assert (=> d!335887 m!1348007))

(assert (=> d!335887 m!1348013))

(declare-fun m!1348017 () Bool)

(assert (=> d!335887 m!1348017))

(assert (=> d!335887 m!1344207))

(assert (=> d!335887 m!1348007))

(declare-fun m!1348019 () Bool)

(assert (=> b!1173055 m!1348019))

(declare-fun m!1348021 () Bool)

(assert (=> b!1173056 m!1348021))

(assert (=> b!1173057 m!1344207))

(assert (=> b!1173057 m!1348007))

(assert (=> b!1173057 m!1348007))

(assert (=> b!1173057 m!1348013))

(assert (=> b!1173057 m!1348013))

(assert (=> b!1173057 m!1348015))

(declare-fun m!1348023 () Bool)

(assert (=> b!1173057 m!1348023))

(assert (=> b!1171339 d!335887))

(declare-fun d!335889 () Bool)

(assert (=> d!335889 (= (tail!1694 (drop!493 lt!402125 1)) (t!110758 (drop!493 lt!402125 1)))))

(assert (=> b!1171339 d!335889))

(declare-fun b!1173058 () Bool)

(declare-fun e!752333 () Int)

(declare-fun call!82376 () Int)

(assert (=> b!1173058 (= e!752333 (- call!82376 (+ 1 1)))))

(declare-fun b!1173060 () Bool)

(declare-fun e!752331 () Bool)

(declare-fun lt!402956 () List!11614)

(declare-fun e!752335 () Int)

(assert (=> b!1173060 (= e!752331 (= (size!9142 lt!402956) e!752335))))

(declare-fun c!195732 () Bool)

(assert (=> b!1173060 (= c!195732 (<= (+ 1 1) 0))))

(declare-fun b!1173061 () Bool)

(declare-fun e!752334 () List!11614)

(assert (=> b!1173061 (= e!752334 (drop!493 (t!110758 lt!402125) (- (+ 1 1) 1)))))

(declare-fun b!1173062 () Bool)

(assert (=> b!1173062 (= e!752335 call!82376)))

(declare-fun b!1173063 () Bool)

(assert (=> b!1173063 (= e!752333 0)))

(declare-fun b!1173064 () Bool)

(assert (=> b!1173064 (= e!752335 e!752333)))

(declare-fun c!195733 () Bool)

(assert (=> b!1173064 (= c!195733 (>= (+ 1 1) call!82376))))

(declare-fun bm!82371 () Bool)

(assert (=> bm!82371 (= call!82376 (size!9142 lt!402125))))

(declare-fun b!1173065 () Bool)

(declare-fun e!752332 () List!11614)

(assert (=> b!1173065 (= e!752332 Nil!11590)))

(declare-fun b!1173066 () Bool)

(assert (=> b!1173066 (= e!752334 lt!402125)))

(declare-fun b!1173059 () Bool)

(assert (=> b!1173059 (= e!752332 e!752334)))

(declare-fun c!195735 () Bool)

(assert (=> b!1173059 (= c!195735 (<= (+ 1 1) 0))))

(declare-fun d!335891 () Bool)

(assert (=> d!335891 e!752331))

(declare-fun res!529953 () Bool)

(assert (=> d!335891 (=> (not res!529953) (not e!752331))))

(assert (=> d!335891 (= res!529953 (= ((_ map implies) (content!1614 lt!402956) (content!1614 lt!402125)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335891 (= lt!402956 e!752332)))

(declare-fun c!195734 () Bool)

(assert (=> d!335891 (= c!195734 ((_ is Nil!11590) lt!402125))))

(assert (=> d!335891 (= (drop!493 lt!402125 (+ 1 1)) lt!402956)))

(assert (= (and d!335891 c!195734) b!1173065))

(assert (= (and d!335891 (not c!195734)) b!1173059))

(assert (= (and b!1173059 c!195735) b!1173066))

(assert (= (and b!1173059 (not c!195735)) b!1173061))

(assert (= (and d!335891 res!529953) b!1173060))

(assert (= (and b!1173060 c!195732) b!1173062))

(assert (= (and b!1173060 (not c!195732)) b!1173064))

(assert (= (and b!1173064 c!195733) b!1173063))

(assert (= (and b!1173064 (not c!195733)) b!1173058))

(assert (= (or b!1173062 b!1173064 b!1173058) bm!82371))

(declare-fun m!1348025 () Bool)

(assert (=> b!1173060 m!1348025))

(declare-fun m!1348027 () Bool)

(assert (=> b!1173061 m!1348027))

(assert (=> bm!82371 m!1347983))

(declare-fun m!1348029 () Bool)

(assert (=> d!335891 m!1348029))

(assert (=> d!335891 m!1347987))

(assert (=> b!1171339 d!335891))

(declare-fun b!1173067 () Bool)

(declare-fun e!752338 () Int)

(declare-fun call!82377 () Int)

(assert (=> b!1173067 (= e!752338 (- call!82377 lt!402119))))

(declare-fun b!1173069 () Bool)

(declare-fun e!752336 () Bool)

(declare-fun lt!402957 () List!11614)

(declare-fun e!752340 () Int)

(assert (=> b!1173069 (= e!752336 (= (size!9142 lt!402957) e!752340))))

(declare-fun c!195736 () Bool)

(assert (=> b!1173069 (= c!195736 (<= lt!402119 0))))

(declare-fun b!1173070 () Bool)

(declare-fun e!752339 () List!11614)

(assert (=> b!1173070 (= e!752339 (drop!493 (t!110758 lt!402129) (- lt!402119 1)))))

(declare-fun b!1173071 () Bool)

(assert (=> b!1173071 (= e!752340 call!82377)))

(declare-fun b!1173072 () Bool)

(assert (=> b!1173072 (= e!752338 0)))

(declare-fun b!1173073 () Bool)

(assert (=> b!1173073 (= e!752340 e!752338)))

(declare-fun c!195737 () Bool)

(assert (=> b!1173073 (= c!195737 (>= lt!402119 call!82377))))

(declare-fun bm!82372 () Bool)

(assert (=> bm!82372 (= call!82377 (size!9142 lt!402129))))

(declare-fun b!1173074 () Bool)

(declare-fun e!752337 () List!11614)

(assert (=> b!1173074 (= e!752337 Nil!11590)))

(declare-fun b!1173075 () Bool)

(assert (=> b!1173075 (= e!752339 lt!402129)))

(declare-fun b!1173068 () Bool)

(assert (=> b!1173068 (= e!752337 e!752339)))

(declare-fun c!195739 () Bool)

(assert (=> b!1173068 (= c!195739 (<= lt!402119 0))))

(declare-fun d!335893 () Bool)

(assert (=> d!335893 e!752336))

(declare-fun res!529954 () Bool)

(assert (=> d!335893 (=> (not res!529954) (not e!752336))))

(assert (=> d!335893 (= res!529954 (= ((_ map implies) (content!1614 lt!402957) (content!1614 lt!402129)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335893 (= lt!402957 e!752337)))

(declare-fun c!195738 () Bool)

(assert (=> d!335893 (= c!195738 ((_ is Nil!11590) lt!402129))))

(assert (=> d!335893 (= (drop!493 lt!402129 lt!402119) lt!402957)))

(assert (= (and d!335893 c!195738) b!1173074))

(assert (= (and d!335893 (not c!195738)) b!1173068))

(assert (= (and b!1173068 c!195739) b!1173075))

(assert (= (and b!1173068 (not c!195739)) b!1173070))

(assert (= (and d!335893 res!529954) b!1173069))

(assert (= (and b!1173069 c!195736) b!1173071))

(assert (= (and b!1173069 (not c!195736)) b!1173073))

(assert (= (and b!1173073 c!195737) b!1173072))

(assert (= (and b!1173073 (not c!195737)) b!1173067))

(assert (= (or b!1173071 b!1173073 b!1173067) bm!82372))

(declare-fun m!1348031 () Bool)

(assert (=> b!1173069 m!1348031))

(declare-fun m!1348033 () Bool)

(assert (=> b!1173070 m!1348033))

(declare-fun m!1348035 () Bool)

(assert (=> bm!82372 m!1348035))

(declare-fun m!1348037 () Bool)

(assert (=> d!335893 m!1348037))

(declare-fun m!1348039 () Bool)

(assert (=> d!335893 m!1348039))

(assert (=> b!1171339 d!335893))

(declare-fun d!335895 () Bool)

(declare-fun lt!402958 () Bool)

(declare-fun e!752342 () Bool)

(assert (=> d!335895 (= lt!402958 e!752342)))

(declare-fun res!529955 () Bool)

(assert (=> d!335895 (=> (not res!529955) (not e!752342))))

(assert (=> d!335895 (= res!529955 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))))) (list!4274 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))))))

(declare-fun e!752341 () Bool)

(assert (=> d!335895 (= lt!402958 e!752341)))

(declare-fun res!529956 () Bool)

(assert (=> d!335895 (=> (not res!529956) (not e!752341))))

(declare-fun lt!402959 () tuple2!12048)

(assert (=> d!335895 (= res!529956 (= (size!9137 (_1!6871 lt!402959)) 1))))

(assert (=> d!335895 (= lt!402959 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))))))

(assert (=> d!335895 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335895 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))) lt!402958)))

(declare-fun b!1173076 () Bool)

(declare-fun res!529957 () Bool)

(assert (=> b!1173076 (=> (not res!529957) (not e!752341))))

(assert (=> b!1173076 (= res!529957 (= (apply!2517 (_1!6871 lt!402959) 0) (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))))

(declare-fun b!1173077 () Bool)

(assert (=> b!1173077 (= e!752341 (isEmpty!7034 (_2!6871 lt!402959)))))

(declare-fun b!1173078 () Bool)

(assert (=> b!1173078 (= e!752342 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))))))))

(assert (= (and d!335895 res!529956) b!1173076))

(assert (= (and b!1173076 res!529957) b!1173077))

(assert (= (and d!335895 res!529955) b!1173078))

(declare-fun m!1348041 () Bool)

(assert (=> d!335895 m!1348041))

(declare-fun m!1348043 () Bool)

(assert (=> d!335895 m!1348043))

(assert (=> d!335895 m!1344215))

(declare-fun m!1348045 () Bool)

(assert (=> d!335895 m!1348045))

(declare-fun m!1348047 () Bool)

(assert (=> d!335895 m!1348047))

(declare-fun m!1348049 () Bool)

(assert (=> d!335895 m!1348049))

(assert (=> d!335895 m!1348041))

(assert (=> d!335895 m!1348047))

(declare-fun m!1348051 () Bool)

(assert (=> d!335895 m!1348051))

(assert (=> d!335895 m!1344691))

(assert (=> d!335895 m!1348041))

(declare-fun m!1348053 () Bool)

(assert (=> b!1173076 m!1348053))

(declare-fun m!1348055 () Bool)

(assert (=> b!1173077 m!1348055))

(assert (=> b!1173078 m!1344691))

(assert (=> b!1173078 m!1348041))

(assert (=> b!1173078 m!1348041))

(assert (=> b!1173078 m!1348047))

(assert (=> b!1173078 m!1348047))

(assert (=> b!1173078 m!1348049))

(declare-fun m!1348057 () Bool)

(assert (=> b!1173078 m!1348057))

(assert (=> b!1171339 d!335895))

(declare-fun b!1173079 () Bool)

(declare-fun e!752345 () Int)

(declare-fun call!82378 () Int)

(assert (=> b!1173079 (= e!752345 (- call!82378 (+ lt!402136 1)))))

(declare-fun b!1173081 () Bool)

(declare-fun e!752343 () Bool)

(declare-fun lt!402960 () List!11614)

(declare-fun e!752347 () Int)

(assert (=> b!1173081 (= e!752343 (= (size!9142 lt!402960) e!752347))))

(declare-fun c!195740 () Bool)

(assert (=> b!1173081 (= c!195740 (<= (+ lt!402136 1) 0))))

(declare-fun b!1173082 () Bool)

(declare-fun e!752346 () List!11614)

(assert (=> b!1173082 (= e!752346 (drop!493 (t!110758 lt!402126) (- (+ lt!402136 1) 1)))))

(declare-fun b!1173083 () Bool)

(assert (=> b!1173083 (= e!752347 call!82378)))

(declare-fun b!1173084 () Bool)

(assert (=> b!1173084 (= e!752345 0)))

(declare-fun b!1173085 () Bool)

(assert (=> b!1173085 (= e!752347 e!752345)))

(declare-fun c!195741 () Bool)

(assert (=> b!1173085 (= c!195741 (>= (+ lt!402136 1) call!82378))))

(declare-fun bm!82373 () Bool)

(assert (=> bm!82373 (= call!82378 (size!9142 lt!402126))))

(declare-fun b!1173086 () Bool)

(declare-fun e!752344 () List!11614)

(assert (=> b!1173086 (= e!752344 Nil!11590)))

(declare-fun b!1173087 () Bool)

(assert (=> b!1173087 (= e!752346 lt!402126)))

(declare-fun b!1173080 () Bool)

(assert (=> b!1173080 (= e!752344 e!752346)))

(declare-fun c!195743 () Bool)

(assert (=> b!1173080 (= c!195743 (<= (+ lt!402136 1) 0))))

(declare-fun d!335897 () Bool)

(assert (=> d!335897 e!752343))

(declare-fun res!529958 () Bool)

(assert (=> d!335897 (=> (not res!529958) (not e!752343))))

(assert (=> d!335897 (= res!529958 (= ((_ map implies) (content!1614 lt!402960) (content!1614 lt!402126)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335897 (= lt!402960 e!752344)))

(declare-fun c!195742 () Bool)

(assert (=> d!335897 (= c!195742 ((_ is Nil!11590) lt!402126))))

(assert (=> d!335897 (= (drop!493 lt!402126 (+ lt!402136 1)) lt!402960)))

(assert (= (and d!335897 c!195742) b!1173086))

(assert (= (and d!335897 (not c!195742)) b!1173080))

(assert (= (and b!1173080 c!195743) b!1173087))

(assert (= (and b!1173080 (not c!195743)) b!1173082))

(assert (= (and d!335897 res!529958) b!1173081))

(assert (= (and b!1173081 c!195740) b!1173083))

(assert (= (and b!1173081 (not c!195740)) b!1173085))

(assert (= (and b!1173085 c!195741) b!1173084))

(assert (= (and b!1173085 (not c!195741)) b!1173079))

(assert (= (or b!1173083 b!1173085 b!1173079) bm!82373))

(declare-fun m!1348059 () Bool)

(assert (=> b!1173081 m!1348059))

(declare-fun m!1348061 () Bool)

(assert (=> b!1173082 m!1348061))

(assert (=> bm!82373 m!1347951))

(declare-fun m!1348063 () Bool)

(assert (=> d!335897 m!1348063))

(assert (=> d!335897 m!1347955))

(assert (=> b!1171339 d!335897))

(declare-fun d!335899 () Bool)

(assert (=> d!335899 (= (head!2110 (drop!493 lt!402110 1)) (h!16991 (drop!493 lt!402110 1)))))

(assert (=> b!1171339 d!335899))

(declare-fun d!335901 () Bool)

(assert (=> d!335901 (= (tail!1694 (drop!493 lt!402125 1)) (drop!493 lt!402125 (+ 1 1)))))

(declare-fun lt!402961 () Unit!17788)

(assert (=> d!335901 (= lt!402961 (choose!7569 lt!402125 1))))

(declare-fun e!752348 () Bool)

(assert (=> d!335901 e!752348))

(declare-fun res!529959 () Bool)

(assert (=> d!335901 (=> (not res!529959) (not e!752348))))

(assert (=> d!335901 (= res!529959 (>= 1 0))))

(assert (=> d!335901 (= (lemmaDropTail!367 lt!402125 1) lt!402961)))

(declare-fun b!1173088 () Bool)

(assert (=> b!1173088 (= e!752348 (< 1 (size!9142 lt!402125)))))

(assert (= (and d!335901 res!529959) b!1173088))

(assert (=> d!335901 m!1344685))

(assert (=> d!335901 m!1344685))

(assert (=> d!335901 m!1344687))

(assert (=> d!335901 m!1344731))

(declare-fun m!1348065 () Bool)

(assert (=> d!335901 m!1348065))

(assert (=> b!1173088 m!1347983))

(assert (=> b!1171339 d!335901))

(assert (=> b!1171339 d!335063))

(declare-fun d!335903 () Bool)

(assert (=> d!335903 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402127)))

(declare-fun lt!402962 () Unit!17788)

(assert (=> d!335903 (= lt!402962 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!402117 lt!402127))))

(assert (=> d!335903 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335903 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402117 lt!402127) lt!402962)))

(declare-fun bs!286008 () Bool)

(assert (= bs!286008 d!335903))

(assert (=> bs!286008 m!1344705))

(declare-fun m!1348067 () Bool)

(assert (=> bs!286008 m!1348067))

(assert (=> bs!286008 m!1344215))

(assert (=> b!1171339 d!335903))

(declare-fun d!335905 () Bool)

(assert (=> d!335905 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402118)))

(declare-fun lt!402963 () Unit!17788)

(assert (=> d!335905 (= lt!402963 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!402131 lt!402118))))

(assert (=> d!335905 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335905 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402131 lt!402118) lt!402963)))

(declare-fun bs!286009 () Bool)

(assert (= bs!286009 d!335905))

(assert (=> bs!286009 m!1344715))

(declare-fun m!1348069 () Bool)

(assert (=> bs!286009 m!1348069))

(assert (=> bs!286009 m!1344215))

(assert (=> b!1171339 d!335905))

(declare-fun d!335907 () Bool)

(assert (=> d!335907 (= (separableTokensPredicate!138 Lexer!1714 (apply!2517 (tokens!1654 thiss!10527) 1) (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)) (rules!9642 thiss!10527)) (not (prefixMatchZipperSequence!99 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) (++!2994 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) 1)) (singletonSeq!685 (apply!2522 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))) 0))))))))

(declare-fun bs!286010 () Bool)

(assert (= bs!286010 d!335907))

(assert (=> bs!286010 m!1345231))

(declare-fun m!1348071 () Bool)

(assert (=> bs!286010 m!1348071))

(declare-fun m!1348073 () Bool)

(assert (=> bs!286010 m!1348073))

(assert (=> bs!286010 m!1344697))

(declare-fun m!1348075 () Bool)

(assert (=> bs!286010 m!1348075))

(assert (=> bs!286010 m!1344207))

(declare-fun m!1348077 () Bool)

(assert (=> bs!286010 m!1348077))

(assert (=> bs!286010 m!1345231))

(assert (=> bs!286010 m!1344691))

(assert (=> bs!286010 m!1344697))

(assert (=> bs!286010 m!1348077))

(declare-fun m!1348079 () Bool)

(assert (=> bs!286010 m!1348079))

(assert (=> bs!286010 m!1348071))

(assert (=> bs!286010 m!1348075))

(assert (=> bs!286010 m!1348079))

(assert (=> b!1171339 d!335907))

(declare-fun d!335909 () Bool)

(assert (=> d!335909 (= (tail!1694 (drop!493 lt!402126 lt!402136)) (t!110758 (drop!493 lt!402126 lt!402136)))))

(assert (=> b!1171339 d!335909))

(declare-fun d!335911 () Bool)

(declare-fun lt!402964 () Token!3704)

(assert (=> d!335911 (contains!2002 lt!402129 lt!402964)))

(declare-fun e!752350 () Token!3704)

(assert (=> d!335911 (= lt!402964 e!752350)))

(declare-fun c!195744 () Bool)

(assert (=> d!335911 (= c!195744 (= lt!402119 0))))

(declare-fun e!752349 () Bool)

(assert (=> d!335911 e!752349))

(declare-fun res!529960 () Bool)

(assert (=> d!335911 (=> (not res!529960) (not e!752349))))

(assert (=> d!335911 (= res!529960 (<= 0 lt!402119))))

(assert (=> d!335911 (= (apply!2518 lt!402129 lt!402119) lt!402964)))

(declare-fun b!1173089 () Bool)

(assert (=> b!1173089 (= e!752349 (< lt!402119 (size!9142 lt!402129)))))

(declare-fun b!1173090 () Bool)

(assert (=> b!1173090 (= e!752350 (head!2110 lt!402129))))

(declare-fun b!1173091 () Bool)

(assert (=> b!1173091 (= e!752350 (apply!2518 (tail!1694 lt!402129) (- lt!402119 1)))))

(assert (= (and d!335911 res!529960) b!1173089))

(assert (= (and d!335911 c!195744) b!1173090))

(assert (= (and d!335911 (not c!195744)) b!1173091))

(declare-fun m!1348081 () Bool)

(assert (=> d!335911 m!1348081))

(assert (=> b!1173089 m!1348035))

(declare-fun m!1348083 () Bool)

(assert (=> b!1173090 m!1348083))

(declare-fun m!1348085 () Bool)

(assert (=> b!1173091 m!1348085))

(assert (=> b!1173091 m!1348085))

(declare-fun m!1348087 () Bool)

(assert (=> b!1173091 m!1348087))

(assert (=> b!1171339 d!335911))

(declare-fun d!335913 () Bool)

(assert (=> d!335913 (= (head!2110 (drop!493 lt!402129 lt!402119)) (apply!2518 lt!402129 lt!402119))))

(declare-fun lt!402965 () Unit!17788)

(assert (=> d!335913 (= lt!402965 (choose!7568 lt!402129 lt!402119))))

(declare-fun e!752351 () Bool)

(assert (=> d!335913 e!752351))

(declare-fun res!529961 () Bool)

(assert (=> d!335913 (=> (not res!529961) (not e!752351))))

(assert (=> d!335913 (= res!529961 (>= lt!402119 0))))

(assert (=> d!335913 (= (lemmaDropApply!379 lt!402129 lt!402119) lt!402965)))

(declare-fun b!1173092 () Bool)

(assert (=> b!1173092 (= e!752351 (< lt!402119 (size!9142 lt!402129)))))

(assert (= (and d!335913 res!529961) b!1173092))

(assert (=> d!335913 m!1344681))

(assert (=> d!335913 m!1344681))

(assert (=> d!335913 m!1344717))

(assert (=> d!335913 m!1344711))

(declare-fun m!1348089 () Bool)

(assert (=> d!335913 m!1348089))

(assert (=> b!1173092 m!1348035))

(assert (=> b!1171339 d!335913))

(declare-fun d!335915 () Bool)

(declare-fun lt!402966 () Token!3704)

(assert (=> d!335915 (contains!2002 lt!402110 lt!402966)))

(declare-fun e!752353 () Token!3704)

(assert (=> d!335915 (= lt!402966 e!752353)))

(declare-fun c!195745 () Bool)

(assert (=> d!335915 (= c!195745 (= 1 0))))

(declare-fun e!752352 () Bool)

(assert (=> d!335915 e!752352))

(declare-fun res!529962 () Bool)

(assert (=> d!335915 (=> (not res!529962) (not e!752352))))

(assert (=> d!335915 (= res!529962 (<= 0 1))))

(assert (=> d!335915 (= (apply!2518 lt!402110 1) lt!402966)))

(declare-fun b!1173093 () Bool)

(assert (=> b!1173093 (= e!752352 (< 1 (size!9142 lt!402110)))))

(declare-fun b!1173094 () Bool)

(assert (=> b!1173094 (= e!752353 (head!2110 lt!402110))))

(declare-fun b!1173095 () Bool)

(assert (=> b!1173095 (= e!752353 (apply!2518 (tail!1694 lt!402110) (- 1 1)))))

(assert (= (and d!335915 res!529962) b!1173093))

(assert (= (and d!335915 c!195745) b!1173094))

(assert (= (and d!335915 (not c!195745)) b!1173095))

(declare-fun m!1348091 () Bool)

(assert (=> d!335915 m!1348091))

(assert (=> b!1173093 m!1347959))

(declare-fun m!1348093 () Bool)

(assert (=> b!1173094 m!1348093))

(declare-fun m!1348095 () Bool)

(assert (=> b!1173095 m!1348095))

(assert (=> b!1173095 m!1348095))

(declare-fun m!1348097 () Bool)

(assert (=> b!1173095 m!1348097))

(assert (=> b!1171339 d!335915))

(declare-fun d!335917 () Bool)

(declare-fun lt!402967 () Token!3704)

(assert (=> d!335917 (= lt!402967 (apply!2518 (list!4274 (tokens!1654 thiss!10527)) (+ 1 1)))))

(assert (=> d!335917 (= lt!402967 (apply!2521 (c!195327 (tokens!1654 thiss!10527)) (+ 1 1)))))

(declare-fun e!752354 () Bool)

(assert (=> d!335917 e!752354))

(declare-fun res!529963 () Bool)

(assert (=> d!335917 (=> (not res!529963) (not e!752354))))

(assert (=> d!335917 (= res!529963 (<= 0 (+ 1 1)))))

(assert (=> d!335917 (= (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)) lt!402967)))

(declare-fun b!1173096 () Bool)

(assert (=> b!1173096 (= e!752354 (< (+ 1 1) (size!9137 (tokens!1654 thiss!10527))))))

(assert (= (and d!335917 res!529963) b!1173096))

(assert (=> d!335917 m!1344251))

(assert (=> d!335917 m!1344251))

(declare-fun m!1348099 () Bool)

(assert (=> d!335917 m!1348099))

(declare-fun m!1348101 () Bool)

(assert (=> d!335917 m!1348101))

(assert (=> b!1173096 m!1344261))

(assert (=> b!1171339 d!335917))

(declare-fun d!335919 () Bool)

(declare-fun lt!402968 () Int)

(assert (=> d!335919 (= lt!402968 (size!9144 (list!4278 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))))))

(assert (=> d!335919 (= lt!402968 (size!9145 (c!195326 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1))))))))

(assert (=> d!335919 (= (size!9136 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))) lt!402968)))

(declare-fun bs!286011 () Bool)

(assert (= bs!286011 d!335919))

(assert (=> bs!286011 m!1344697))

(declare-fun m!1348103 () Bool)

(assert (=> bs!286011 m!1348103))

(assert (=> bs!286011 m!1348103))

(declare-fun m!1348105 () Bool)

(assert (=> bs!286011 m!1348105))

(declare-fun m!1348107 () Bool)

(assert (=> bs!286011 m!1348107))

(assert (=> b!1171339 d!335919))

(assert (=> d!334947 d!334951))

(assert (=> d!334947 d!334949))

(declare-fun d!335921 () Bool)

(assert (=> d!335921 (subseq!271 (slice!349 lt!401774 from!787 to!267) lt!401774)))

(assert (=> d!335921 true))

(declare-fun _$25!173 () Unit!17788)

(assert (=> d!335921 (= (choose!7563 lt!401774 from!787 to!267) _$25!173)))

(declare-fun bs!286012 () Bool)

(assert (= bs!286012 d!335921))

(assert (=> bs!286012 m!1344235))

(assert (=> bs!286012 m!1344235))

(assert (=> bs!286012 m!1344237))

(assert (=> d!334947 d!335921))

(assert (=> b!1171567 d!335393))

(declare-fun d!335923 () Bool)

(assert (=> d!335923 (= (tail!1694 (drop!493 lt!402159 lt!402169)) (t!110758 (drop!493 lt!402159 lt!402169)))))

(assert (=> b!1171347 d!335923))

(declare-fun b!1173097 () Bool)

(declare-fun e!752357 () Int)

(declare-fun call!82379 () Int)

(assert (=> b!1173097 (= e!752357 (- call!82379 lt!402169))))

(declare-fun b!1173099 () Bool)

(declare-fun e!752355 () Bool)

(declare-fun lt!402969 () List!11614)

(declare-fun e!752359 () Int)

(assert (=> b!1173099 (= e!752355 (= (size!9142 lt!402969) e!752359))))

(declare-fun c!195746 () Bool)

(assert (=> b!1173099 (= c!195746 (<= lt!402169 0))))

(declare-fun b!1173100 () Bool)

(declare-fun e!752358 () List!11614)

(assert (=> b!1173100 (= e!752358 (drop!493 (t!110758 lt!402159) (- lt!402169 1)))))

(declare-fun b!1173101 () Bool)

(assert (=> b!1173101 (= e!752359 call!82379)))

(declare-fun b!1173102 () Bool)

(assert (=> b!1173102 (= e!752357 0)))

(declare-fun b!1173103 () Bool)

(assert (=> b!1173103 (= e!752359 e!752357)))

(declare-fun c!195747 () Bool)

(assert (=> b!1173103 (= c!195747 (>= lt!402169 call!82379))))

(declare-fun bm!82374 () Bool)

(assert (=> bm!82374 (= call!82379 (size!9142 lt!402159))))

(declare-fun b!1173104 () Bool)

(declare-fun e!752356 () List!11614)

(assert (=> b!1173104 (= e!752356 Nil!11590)))

(declare-fun b!1173105 () Bool)

(assert (=> b!1173105 (= e!752358 lt!402159)))

(declare-fun b!1173098 () Bool)

(assert (=> b!1173098 (= e!752356 e!752358)))

(declare-fun c!195749 () Bool)

(assert (=> b!1173098 (= c!195749 (<= lt!402169 0))))

(declare-fun d!335925 () Bool)

(assert (=> d!335925 e!752355))

(declare-fun res!529964 () Bool)

(assert (=> d!335925 (=> (not res!529964) (not e!752355))))

(assert (=> d!335925 (= res!529964 (= ((_ map implies) (content!1614 lt!402969) (content!1614 lt!402159)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335925 (= lt!402969 e!752356)))

(declare-fun c!195748 () Bool)

(assert (=> d!335925 (= c!195748 ((_ is Nil!11590) lt!402159))))

(assert (=> d!335925 (= (drop!493 lt!402159 lt!402169) lt!402969)))

(assert (= (and d!335925 c!195748) b!1173104))

(assert (= (and d!335925 (not c!195748)) b!1173098))

(assert (= (and b!1173098 c!195749) b!1173105))

(assert (= (and b!1173098 (not c!195749)) b!1173100))

(assert (= (and d!335925 res!529964) b!1173099))

(assert (= (and b!1173099 c!195746) b!1173101))

(assert (= (and b!1173099 (not c!195746)) b!1173103))

(assert (= (and b!1173103 c!195747) b!1173102))

(assert (= (and b!1173103 (not c!195747)) b!1173097))

(assert (= (or b!1173101 b!1173103 b!1173097) bm!82374))

(declare-fun m!1348109 () Bool)

(assert (=> b!1173099 m!1348109))

(declare-fun m!1348111 () Bool)

(assert (=> b!1173100 m!1348111))

(declare-fun m!1348113 () Bool)

(assert (=> bm!82374 m!1348113))

(declare-fun m!1348115 () Bool)

(assert (=> d!335925 m!1348115))

(declare-fun m!1348117 () Bool)

(assert (=> d!335925 m!1348117))

(assert (=> b!1171347 d!335925))

(declare-fun d!335927 () Bool)

(declare-fun lt!402970 () Token!3704)

(assert (=> d!335927 (= lt!402970 (apply!2518 (list!4274 (tokens!1654 thiss!10527)) (+ 0 1)))))

(assert (=> d!335927 (= lt!402970 (apply!2521 (c!195327 (tokens!1654 thiss!10527)) (+ 0 1)))))

(declare-fun e!752360 () Bool)

(assert (=> d!335927 e!752360))

(declare-fun res!529965 () Bool)

(assert (=> d!335927 (=> (not res!529965) (not e!752360))))

(assert (=> d!335927 (= res!529965 (<= 0 (+ 0 1)))))

(assert (=> d!335927 (= (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)) lt!402970)))

(declare-fun b!1173106 () Bool)

(assert (=> b!1173106 (= e!752360 (< (+ 0 1) (size!9137 (tokens!1654 thiss!10527))))))

(assert (= (and d!335927 res!529965) b!1173106))

(assert (=> d!335927 m!1344251))

(assert (=> d!335927 m!1344251))

(declare-fun m!1348119 () Bool)

(assert (=> d!335927 m!1348119))

(declare-fun m!1348121 () Bool)

(assert (=> d!335927 m!1348121))

(assert (=> b!1173106 m!1344261))

(assert (=> b!1171347 d!335927))

(declare-fun d!335929 () Bool)

(declare-fun lt!402971 () Int)

(assert (=> d!335929 (= lt!402971 (size!9144 (list!4278 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))))))

(assert (=> d!335929 (= lt!402971 (size!9145 (c!195326 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))))))

(assert (=> d!335929 (= (size!9136 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))) lt!402971)))

(declare-fun bs!286013 () Bool)

(assert (= bs!286013 d!335929))

(assert (=> bs!286013 m!1344771))

(declare-fun m!1348123 () Bool)

(assert (=> bs!286013 m!1348123))

(assert (=> bs!286013 m!1348123))

(declare-fun m!1348125 () Bool)

(assert (=> bs!286013 m!1348125))

(declare-fun m!1348127 () Bool)

(assert (=> bs!286013 m!1348127))

(assert (=> b!1171347 d!335929))

(declare-fun d!335931 () Bool)

(declare-fun lt!402972 () Bool)

(declare-fun e!752362 () Bool)

(assert (=> d!335931 (= lt!402972 e!752362)))

(declare-fun res!529966 () Bool)

(assert (=> d!335931 (=> (not res!529966) (not e!752362))))

(assert (=> d!335931 (= res!529966 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) 0)))))) (list!4274 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) 0)))))))

(declare-fun e!752361 () Bool)

(assert (=> d!335931 (= lt!402972 e!752361)))

(declare-fun res!529967 () Bool)

(assert (=> d!335931 (=> (not res!529967) (not e!752361))))

(declare-fun lt!402973 () tuple2!12048)

(assert (=> d!335931 (= res!529967 (= (size!9137 (_1!6871 lt!402973)) 1))))

(assert (=> d!335931 (= lt!402973 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) 0)))))))

(assert (=> d!335931 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335931 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) 0)) lt!402972)))

(declare-fun b!1173107 () Bool)

(declare-fun res!529968 () Bool)

(assert (=> b!1173107 (=> (not res!529968) (not e!752361))))

(assert (=> b!1173107 (= res!529968 (= (apply!2517 (_1!6871 lt!402973) 0) (apply!2517 (tokens!1654 thiss!10527) 0)))))

(declare-fun b!1173108 () Bool)

(assert (=> b!1173108 (= e!752361 (isEmpty!7034 (_2!6871 lt!402973)))))

(declare-fun b!1173109 () Bool)

(assert (=> b!1173109 (= e!752362 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) 0)))))))))

(assert (= (and d!335931 res!529967) b!1173107))

(assert (= (and b!1173107 res!529968) b!1173108))

(assert (= (and d!335931 res!529966) b!1173109))

(declare-fun m!1348129 () Bool)

(assert (=> d!335931 m!1348129))

(declare-fun m!1348131 () Bool)

(assert (=> d!335931 m!1348131))

(assert (=> d!335931 m!1344215))

(declare-fun m!1348133 () Bool)

(assert (=> d!335931 m!1348133))

(declare-fun m!1348135 () Bool)

(assert (=> d!335931 m!1348135))

(declare-fun m!1348137 () Bool)

(assert (=> d!335931 m!1348137))

(assert (=> d!335931 m!1348129))

(assert (=> d!335931 m!1348135))

(declare-fun m!1348139 () Bool)

(assert (=> d!335931 m!1348139))

(assert (=> d!335931 m!1344197))

(assert (=> d!335931 m!1348129))

(declare-fun m!1348141 () Bool)

(assert (=> b!1173107 m!1348141))

(declare-fun m!1348143 () Bool)

(assert (=> b!1173108 m!1348143))

(assert (=> b!1173109 m!1344197))

(assert (=> b!1173109 m!1348129))

(assert (=> b!1173109 m!1348129))

(assert (=> b!1173109 m!1348135))

(assert (=> b!1173109 m!1348135))

(assert (=> b!1173109 m!1348137))

(declare-fun m!1348145 () Bool)

(assert (=> b!1173109 m!1348145))

(assert (=> b!1171347 d!335931))

(declare-fun b!1173110 () Bool)

(declare-fun e!752365 () Int)

(declare-fun call!82380 () Int)

(assert (=> b!1173110 (= e!752365 (- call!82380 (+ 0 1)))))

(declare-fun b!1173112 () Bool)

(declare-fun e!752363 () Bool)

(declare-fun lt!402974 () List!11614)

(declare-fun e!752367 () Int)

(assert (=> b!1173112 (= e!752363 (= (size!9142 lt!402974) e!752367))))

(declare-fun c!195750 () Bool)

(assert (=> b!1173112 (= c!195750 (<= (+ 0 1) 0))))

(declare-fun b!1173113 () Bool)

(declare-fun e!752366 () List!11614)

(assert (=> b!1173113 (= e!752366 (drop!493 (t!110758 lt!402158) (- (+ 0 1) 1)))))

(declare-fun b!1173114 () Bool)

(assert (=> b!1173114 (= e!752367 call!82380)))

(declare-fun b!1173115 () Bool)

(assert (=> b!1173115 (= e!752365 0)))

(declare-fun b!1173116 () Bool)

(assert (=> b!1173116 (= e!752367 e!752365)))

(declare-fun c!195751 () Bool)

(assert (=> b!1173116 (= c!195751 (>= (+ 0 1) call!82380))))

(declare-fun bm!82375 () Bool)

(assert (=> bm!82375 (= call!82380 (size!9142 lt!402158))))

(declare-fun b!1173117 () Bool)

(declare-fun e!752364 () List!11614)

(assert (=> b!1173117 (= e!752364 Nil!11590)))

(declare-fun b!1173118 () Bool)

(assert (=> b!1173118 (= e!752366 lt!402158)))

(declare-fun b!1173111 () Bool)

(assert (=> b!1173111 (= e!752364 e!752366)))

(declare-fun c!195753 () Bool)

(assert (=> b!1173111 (= c!195753 (<= (+ 0 1) 0))))

(declare-fun d!335933 () Bool)

(assert (=> d!335933 e!752363))

(declare-fun res!529969 () Bool)

(assert (=> d!335933 (=> (not res!529969) (not e!752363))))

(assert (=> d!335933 (= res!529969 (= ((_ map implies) (content!1614 lt!402974) (content!1614 lt!402158)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335933 (= lt!402974 e!752364)))

(declare-fun c!195752 () Bool)

(assert (=> d!335933 (= c!195752 ((_ is Nil!11590) lt!402158))))

(assert (=> d!335933 (= (drop!493 lt!402158 (+ 0 1)) lt!402974)))

(assert (= (and d!335933 c!195752) b!1173117))

(assert (= (and d!335933 (not c!195752)) b!1173111))

(assert (= (and b!1173111 c!195753) b!1173118))

(assert (= (and b!1173111 (not c!195753)) b!1173113))

(assert (= (and d!335933 res!529969) b!1173112))

(assert (= (and b!1173112 c!195750) b!1173114))

(assert (= (and b!1173112 (not c!195750)) b!1173116))

(assert (= (and b!1173116 c!195751) b!1173115))

(assert (= (and b!1173116 (not c!195751)) b!1173110))

(assert (= (or b!1173114 b!1173116 b!1173110) bm!82375))

(declare-fun m!1348147 () Bool)

(assert (=> b!1173112 m!1348147))

(declare-fun m!1348149 () Bool)

(assert (=> b!1173113 m!1348149))

(declare-fun m!1348151 () Bool)

(assert (=> bm!82375 m!1348151))

(declare-fun m!1348153 () Bool)

(assert (=> d!335933 m!1348153))

(declare-fun m!1348155 () Bool)

(assert (=> d!335933 m!1348155))

(assert (=> b!1171347 d!335933))

(declare-fun d!335935 () Bool)

(assert (=> d!335935 (= (head!2110 (drop!493 lt!402162 lt!402152)) (apply!2518 lt!402162 lt!402152))))

(declare-fun lt!402975 () Unit!17788)

(assert (=> d!335935 (= lt!402975 (choose!7568 lt!402162 lt!402152))))

(declare-fun e!752368 () Bool)

(assert (=> d!335935 e!752368))

(declare-fun res!529970 () Bool)

(assert (=> d!335935 (=> (not res!529970) (not e!752368))))

(assert (=> d!335935 (= res!529970 (>= lt!402152 0))))

(assert (=> d!335935 (= (lemmaDropApply!379 lt!402162 lt!402152) lt!402975)))

(declare-fun b!1173119 () Bool)

(assert (=> b!1173119 (= e!752368 (< lt!402152 (size!9142 lt!402162)))))

(assert (= (and d!335935 res!529970) b!1173119))

(assert (=> d!335935 m!1344755))

(assert (=> d!335935 m!1344755))

(assert (=> d!335935 m!1344791))

(assert (=> d!335935 m!1344785))

(declare-fun m!1348157 () Bool)

(assert (=> d!335935 m!1348157))

(declare-fun m!1348159 () Bool)

(assert (=> b!1173119 m!1348159))

(assert (=> b!1171347 d!335935))

(declare-fun b!1173120 () Bool)

(declare-fun e!752371 () Int)

(declare-fun call!82381 () Int)

(assert (=> b!1173120 (= e!752371 (- call!82381 0))))

(declare-fun b!1173122 () Bool)

(declare-fun e!752369 () Bool)

(declare-fun lt!402976 () List!11614)

(declare-fun e!752373 () Int)

(assert (=> b!1173122 (= e!752369 (= (size!9142 lt!402976) e!752373))))

(declare-fun c!195754 () Bool)

(assert (=> b!1173122 (= c!195754 (<= 0 0))))

(declare-fun b!1173123 () Bool)

(declare-fun e!752372 () List!11614)

(assert (=> b!1173123 (= e!752372 (drop!493 (t!110758 lt!402158) (- 0 1)))))

(declare-fun b!1173124 () Bool)

(assert (=> b!1173124 (= e!752373 call!82381)))

(declare-fun b!1173125 () Bool)

(assert (=> b!1173125 (= e!752371 0)))

(declare-fun b!1173126 () Bool)

(assert (=> b!1173126 (= e!752373 e!752371)))

(declare-fun c!195755 () Bool)

(assert (=> b!1173126 (= c!195755 (>= 0 call!82381))))

(declare-fun bm!82376 () Bool)

(assert (=> bm!82376 (= call!82381 (size!9142 lt!402158))))

(declare-fun b!1173127 () Bool)

(declare-fun e!752370 () List!11614)

(assert (=> b!1173127 (= e!752370 Nil!11590)))

(declare-fun b!1173128 () Bool)

(assert (=> b!1173128 (= e!752372 lt!402158)))

(declare-fun b!1173121 () Bool)

(assert (=> b!1173121 (= e!752370 e!752372)))

(declare-fun c!195757 () Bool)

(assert (=> b!1173121 (= c!195757 (<= 0 0))))

(declare-fun d!335937 () Bool)

(assert (=> d!335937 e!752369))

(declare-fun res!529971 () Bool)

(assert (=> d!335937 (=> (not res!529971) (not e!752369))))

(assert (=> d!335937 (= res!529971 (= ((_ map implies) (content!1614 lt!402976) (content!1614 lt!402158)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335937 (= lt!402976 e!752370)))

(declare-fun c!195756 () Bool)

(assert (=> d!335937 (= c!195756 ((_ is Nil!11590) lt!402158))))

(assert (=> d!335937 (= (drop!493 lt!402158 0) lt!402976)))

(assert (= (and d!335937 c!195756) b!1173127))

(assert (= (and d!335937 (not c!195756)) b!1173121))

(assert (= (and b!1173121 c!195757) b!1173128))

(assert (= (and b!1173121 (not c!195757)) b!1173123))

(assert (= (and d!335937 res!529971) b!1173122))

(assert (= (and b!1173122 c!195754) b!1173124))

(assert (= (and b!1173122 (not c!195754)) b!1173126))

(assert (= (and b!1173126 c!195755) b!1173125))

(assert (= (and b!1173126 (not c!195755)) b!1173120))

(assert (= (or b!1173124 b!1173126 b!1173120) bm!82376))

(declare-fun m!1348161 () Bool)

(assert (=> b!1173122 m!1348161))

(declare-fun m!1348163 () Bool)

(assert (=> b!1173123 m!1348163))

(assert (=> bm!82376 m!1348151))

(declare-fun m!1348165 () Bool)

(assert (=> d!335937 m!1348165))

(assert (=> d!335937 m!1348155))

(assert (=> b!1171347 d!335937))

(declare-fun d!335939 () Bool)

(assert (=> d!335939 (= (head!2110 (drop!493 lt!402143 0)) (apply!2518 lt!402143 0))))

(declare-fun lt!402977 () Unit!17788)

(assert (=> d!335939 (= lt!402977 (choose!7568 lt!402143 0))))

(declare-fun e!752374 () Bool)

(assert (=> d!335939 e!752374))

(declare-fun res!529972 () Bool)

(assert (=> d!335939 (=> (not res!529972) (not e!752374))))

(assert (=> d!335939 (= res!529972 (>= 0 0))))

(assert (=> d!335939 (= (lemmaDropApply!379 lt!402143 0) lt!402977)))

(declare-fun b!1173129 () Bool)

(assert (=> b!1173129 (= e!752374 (< 0 (size!9142 lt!402143)))))

(assert (= (and d!335939 res!529972) b!1173129))

(assert (=> d!335939 m!1344763))

(assert (=> d!335939 m!1344763))

(assert (=> d!335939 m!1344803))

(assert (=> d!335939 m!1344757))

(declare-fun m!1348167 () Bool)

(assert (=> d!335939 m!1348167))

(declare-fun m!1348169 () Bool)

(assert (=> b!1173129 m!1348169))

(assert (=> b!1171347 d!335939))

(declare-fun d!335941 () Bool)

(declare-fun lt!402978 () Bool)

(declare-fun e!752376 () Bool)

(assert (=> d!335941 (= lt!402978 e!752376)))

(declare-fun res!529973 () Bool)

(assert (=> d!335941 (=> (not res!529973) (not e!752376))))

(assert (=> d!335941 (= res!529973 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402160))))) (list!4274 (singletonSeq!684 lt!402160))))))

(declare-fun e!752375 () Bool)

(assert (=> d!335941 (= lt!402978 e!752375)))

(declare-fun res!529974 () Bool)

(assert (=> d!335941 (=> (not res!529974) (not e!752375))))

(declare-fun lt!402979 () tuple2!12048)

(assert (=> d!335941 (= res!529974 (= (size!9137 (_1!6871 lt!402979)) 1))))

(assert (=> d!335941 (= lt!402979 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402160))))))

(assert (=> d!335941 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335941 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402160) lt!402978)))

(declare-fun b!1173130 () Bool)

(declare-fun res!529975 () Bool)

(assert (=> b!1173130 (=> (not res!529975) (not e!752375))))

(assert (=> b!1173130 (= res!529975 (= (apply!2517 (_1!6871 lt!402979) 0) lt!402160))))

(declare-fun b!1173131 () Bool)

(assert (=> b!1173131 (= e!752375 (isEmpty!7034 (_2!6871 lt!402979)))))

(declare-fun b!1173132 () Bool)

(assert (=> b!1173132 (= e!752376 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402160))))))))

(assert (= (and d!335941 res!529974) b!1173130))

(assert (= (and b!1173130 res!529975) b!1173131))

(assert (= (and d!335941 res!529973) b!1173132))

(declare-fun m!1348171 () Bool)

(assert (=> d!335941 m!1348171))

(declare-fun m!1348173 () Bool)

(assert (=> d!335941 m!1348173))

(assert (=> d!335941 m!1344215))

(declare-fun m!1348175 () Bool)

(assert (=> d!335941 m!1348175))

(declare-fun m!1348177 () Bool)

(assert (=> d!335941 m!1348177))

(declare-fun m!1348179 () Bool)

(assert (=> d!335941 m!1348179))

(assert (=> d!335941 m!1348171))

(assert (=> d!335941 m!1348177))

(declare-fun m!1348181 () Bool)

(assert (=> d!335941 m!1348181))

(assert (=> d!335941 m!1348171))

(declare-fun m!1348183 () Bool)

(assert (=> b!1173130 m!1348183))

(declare-fun m!1348185 () Bool)

(assert (=> b!1173131 m!1348185))

(assert (=> b!1173132 m!1348171))

(assert (=> b!1173132 m!1348171))

(assert (=> b!1173132 m!1348177))

(assert (=> b!1173132 m!1348177))

(assert (=> b!1173132 m!1348179))

(declare-fun m!1348187 () Bool)

(assert (=> b!1173132 m!1348187))

(assert (=> b!1171347 d!335941))

(declare-fun d!335943 () Bool)

(declare-fun lt!402980 () Bool)

(declare-fun e!752378 () Bool)

(assert (=> d!335943 (= lt!402980 e!752378)))

(declare-fun res!529976 () Bool)

(assert (=> d!335943 (=> (not res!529976) (not e!752378))))

(assert (=> d!335943 (= res!529976 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402151))))) (list!4274 (singletonSeq!684 lt!402151))))))

(declare-fun e!752377 () Bool)

(assert (=> d!335943 (= lt!402980 e!752377)))

(declare-fun res!529977 () Bool)

(assert (=> d!335943 (=> (not res!529977) (not e!752377))))

(declare-fun lt!402981 () tuple2!12048)

(assert (=> d!335943 (= res!529977 (= (size!9137 (_1!6871 lt!402981)) 1))))

(assert (=> d!335943 (= lt!402981 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402151))))))

(assert (=> d!335943 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335943 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402151) lt!402980)))

(declare-fun b!1173133 () Bool)

(declare-fun res!529978 () Bool)

(assert (=> b!1173133 (=> (not res!529978) (not e!752377))))

(assert (=> b!1173133 (= res!529978 (= (apply!2517 (_1!6871 lt!402981) 0) lt!402151))))

(declare-fun b!1173134 () Bool)

(assert (=> b!1173134 (= e!752377 (isEmpty!7034 (_2!6871 lt!402981)))))

(declare-fun b!1173135 () Bool)

(assert (=> b!1173135 (= e!752378 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!402151))))))))

(assert (= (and d!335943 res!529977) b!1173133))

(assert (= (and b!1173133 res!529978) b!1173134))

(assert (= (and d!335943 res!529976) b!1173135))

(declare-fun m!1348189 () Bool)

(assert (=> d!335943 m!1348189))

(declare-fun m!1348191 () Bool)

(assert (=> d!335943 m!1348191))

(assert (=> d!335943 m!1344215))

(declare-fun m!1348193 () Bool)

(assert (=> d!335943 m!1348193))

(declare-fun m!1348195 () Bool)

(assert (=> d!335943 m!1348195))

(declare-fun m!1348197 () Bool)

(assert (=> d!335943 m!1348197))

(assert (=> d!335943 m!1348189))

(assert (=> d!335943 m!1348195))

(declare-fun m!1348199 () Bool)

(assert (=> d!335943 m!1348199))

(assert (=> d!335943 m!1348189))

(declare-fun m!1348201 () Bool)

(assert (=> b!1173133 m!1348201))

(declare-fun m!1348203 () Bool)

(assert (=> b!1173134 m!1348203))

(assert (=> b!1173135 m!1348189))

(assert (=> b!1173135 m!1348189))

(assert (=> b!1173135 m!1348195))

(assert (=> b!1173135 m!1348195))

(assert (=> b!1173135 m!1348197))

(declare-fun m!1348205 () Bool)

(assert (=> b!1173135 m!1348205))

(assert (=> b!1171347 d!335943))

(declare-fun d!335945 () Bool)

(assert (=> d!335945 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402160)))

(declare-fun lt!402982 () Unit!17788)

(assert (=> d!335945 (= lt!402982 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!402150 lt!402160))))

(assert (=> d!335945 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335945 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402150 lt!402160) lt!402982)))

(declare-fun bs!286014 () Bool)

(assert (= bs!286014 d!335945))

(assert (=> bs!286014 m!1344779))

(declare-fun m!1348207 () Bool)

(assert (=> bs!286014 m!1348207))

(assert (=> bs!286014 m!1344215))

(assert (=> b!1171347 d!335945))

(assert (=> b!1171347 d!335091))

(declare-fun b!1173136 () Bool)

(declare-fun e!752381 () Int)

(declare-fun call!82382 () Int)

(assert (=> b!1173136 (= e!752381 (- call!82382 lt!402152))))

(declare-fun b!1173138 () Bool)

(declare-fun e!752379 () Bool)

(declare-fun lt!402983 () List!11614)

(declare-fun e!752383 () Int)

(assert (=> b!1173138 (= e!752379 (= (size!9142 lt!402983) e!752383))))

(declare-fun c!195758 () Bool)

(assert (=> b!1173138 (= c!195758 (<= lt!402152 0))))

(declare-fun b!1173139 () Bool)

(declare-fun e!752382 () List!11614)

(assert (=> b!1173139 (= e!752382 (drop!493 (t!110758 lt!402162) (- lt!402152 1)))))

(declare-fun b!1173140 () Bool)

(assert (=> b!1173140 (= e!752383 call!82382)))

(declare-fun b!1173141 () Bool)

(assert (=> b!1173141 (= e!752381 0)))

(declare-fun b!1173142 () Bool)

(assert (=> b!1173142 (= e!752383 e!752381)))

(declare-fun c!195759 () Bool)

(assert (=> b!1173142 (= c!195759 (>= lt!402152 call!82382))))

(declare-fun bm!82377 () Bool)

(assert (=> bm!82377 (= call!82382 (size!9142 lt!402162))))

(declare-fun b!1173143 () Bool)

(declare-fun e!752380 () List!11614)

(assert (=> b!1173143 (= e!752380 Nil!11590)))

(declare-fun b!1173144 () Bool)

(assert (=> b!1173144 (= e!752382 lt!402162)))

(declare-fun b!1173137 () Bool)

(assert (=> b!1173137 (= e!752380 e!752382)))

(declare-fun c!195761 () Bool)

(assert (=> b!1173137 (= c!195761 (<= lt!402152 0))))

(declare-fun d!335947 () Bool)

(assert (=> d!335947 e!752379))

(declare-fun res!529979 () Bool)

(assert (=> d!335947 (=> (not res!529979) (not e!752379))))

(assert (=> d!335947 (= res!529979 (= ((_ map implies) (content!1614 lt!402983) (content!1614 lt!402162)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335947 (= lt!402983 e!752380)))

(declare-fun c!195760 () Bool)

(assert (=> d!335947 (= c!195760 ((_ is Nil!11590) lt!402162))))

(assert (=> d!335947 (= (drop!493 lt!402162 lt!402152) lt!402983)))

(assert (= (and d!335947 c!195760) b!1173143))

(assert (= (and d!335947 (not c!195760)) b!1173137))

(assert (= (and b!1173137 c!195761) b!1173144))

(assert (= (and b!1173137 (not c!195761)) b!1173139))

(assert (= (and d!335947 res!529979) b!1173138))

(assert (= (and b!1173138 c!195758) b!1173140))

(assert (= (and b!1173138 (not c!195758)) b!1173142))

(assert (= (and b!1173142 c!195759) b!1173141))

(assert (= (and b!1173142 (not c!195759)) b!1173136))

(assert (= (or b!1173140 b!1173142 b!1173136) bm!82377))

(declare-fun m!1348209 () Bool)

(assert (=> b!1173138 m!1348209))

(declare-fun m!1348211 () Bool)

(assert (=> b!1173139 m!1348211))

(assert (=> bm!82377 m!1348159))

(declare-fun m!1348213 () Bool)

(assert (=> d!335947 m!1348213))

(declare-fun m!1348215 () Bool)

(assert (=> d!335947 m!1348215))

(assert (=> b!1171347 d!335947))

(declare-fun d!335949 () Bool)

(assert (=> d!335949 (= (separableTokensPredicate!138 Lexer!1714 (apply!2517 (tokens!1654 thiss!10527) 0) (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)) (rules!9642 thiss!10527)) (not (prefixMatchZipperSequence!99 (rulesRegex!72 Lexer!1714 (rules!9642 thiss!10527)) (++!2994 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) 0)) (singletonSeq!685 (apply!2522 (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))) 0))))))))

(declare-fun bs!286015 () Bool)

(assert (= bs!286015 d!335949))

(assert (=> bs!286015 m!1345231))

(declare-fun m!1348217 () Bool)

(assert (=> bs!286015 m!1348217))

(declare-fun m!1348219 () Bool)

(assert (=> bs!286015 m!1348219))

(assert (=> bs!286015 m!1344771))

(declare-fun m!1348221 () Bool)

(assert (=> bs!286015 m!1348221))

(assert (=> bs!286015 m!1344197))

(declare-fun m!1348223 () Bool)

(assert (=> bs!286015 m!1348223))

(assert (=> bs!286015 m!1345231))

(assert (=> bs!286015 m!1344765))

(assert (=> bs!286015 m!1344771))

(assert (=> bs!286015 m!1348223))

(declare-fun m!1348225 () Bool)

(assert (=> bs!286015 m!1348225))

(assert (=> bs!286015 m!1348217))

(assert (=> bs!286015 m!1348221))

(assert (=> bs!286015 m!1348225))

(assert (=> b!1171347 d!335949))

(declare-fun d!335951 () Bool)

(declare-fun lt!402984 () Token!3704)

(assert (=> d!335951 (contains!2002 lt!402143 lt!402984)))

(declare-fun e!752385 () Token!3704)

(assert (=> d!335951 (= lt!402984 e!752385)))

(declare-fun c!195762 () Bool)

(assert (=> d!335951 (= c!195762 (= 0 0))))

(declare-fun e!752384 () Bool)

(assert (=> d!335951 e!752384))

(declare-fun res!529980 () Bool)

(assert (=> d!335951 (=> (not res!529980) (not e!752384))))

(assert (=> d!335951 (= res!529980 (<= 0 0))))

(assert (=> d!335951 (= (apply!2518 lt!402143 0) lt!402984)))

(declare-fun b!1173145 () Bool)

(assert (=> b!1173145 (= e!752384 (< 0 (size!9142 lt!402143)))))

(declare-fun b!1173146 () Bool)

(assert (=> b!1173146 (= e!752385 (head!2110 lt!402143))))

(declare-fun b!1173147 () Bool)

(assert (=> b!1173147 (= e!752385 (apply!2518 (tail!1694 lt!402143) (- 0 1)))))

(assert (= (and d!335951 res!529980) b!1173145))

(assert (= (and d!335951 c!195762) b!1173146))

(assert (= (and d!335951 (not c!195762)) b!1173147))

(declare-fun m!1348227 () Bool)

(assert (=> d!335951 m!1348227))

(assert (=> b!1173145 m!1348169))

(declare-fun m!1348229 () Bool)

(assert (=> b!1173146 m!1348229))

(declare-fun m!1348231 () Bool)

(assert (=> b!1173147 m!1348231))

(assert (=> b!1173147 m!1348231))

(declare-fun m!1348233 () Bool)

(assert (=> b!1173147 m!1348233))

(assert (=> b!1171347 d!335951))

(declare-fun d!335953 () Bool)

(assert (=> d!335953 (= (head!2110 (drop!493 lt!402143 0)) (h!16991 (drop!493 lt!402143 0)))))

(assert (=> b!1171347 d!335953))

(declare-fun b!1173148 () Bool)

(declare-fun e!752388 () Int)

(declare-fun call!82383 () Int)

(assert (=> b!1173148 (= e!752388 (- call!82383 (+ lt!402169 1)))))

(declare-fun b!1173150 () Bool)

(declare-fun e!752386 () Bool)

(declare-fun lt!402985 () List!11614)

(declare-fun e!752390 () Int)

(assert (=> b!1173150 (= e!752386 (= (size!9142 lt!402985) e!752390))))

(declare-fun c!195763 () Bool)

(assert (=> b!1173150 (= c!195763 (<= (+ lt!402169 1) 0))))

(declare-fun b!1173151 () Bool)

(declare-fun e!752389 () List!11614)

(assert (=> b!1173151 (= e!752389 (drop!493 (t!110758 lt!402159) (- (+ lt!402169 1) 1)))))

(declare-fun b!1173152 () Bool)

(assert (=> b!1173152 (= e!752390 call!82383)))

(declare-fun b!1173153 () Bool)

(assert (=> b!1173153 (= e!752388 0)))

(declare-fun b!1173154 () Bool)

(assert (=> b!1173154 (= e!752390 e!752388)))

(declare-fun c!195764 () Bool)

(assert (=> b!1173154 (= c!195764 (>= (+ lt!402169 1) call!82383))))

(declare-fun bm!82378 () Bool)

(assert (=> bm!82378 (= call!82383 (size!9142 lt!402159))))

(declare-fun b!1173155 () Bool)

(declare-fun e!752387 () List!11614)

(assert (=> b!1173155 (= e!752387 Nil!11590)))

(declare-fun b!1173156 () Bool)

(assert (=> b!1173156 (= e!752389 lt!402159)))

(declare-fun b!1173149 () Bool)

(assert (=> b!1173149 (= e!752387 e!752389)))

(declare-fun c!195766 () Bool)

(assert (=> b!1173149 (= c!195766 (<= (+ lt!402169 1) 0))))

(declare-fun d!335955 () Bool)

(assert (=> d!335955 e!752386))

(declare-fun res!529981 () Bool)

(assert (=> d!335955 (=> (not res!529981) (not e!752386))))

(assert (=> d!335955 (= res!529981 (= ((_ map implies) (content!1614 lt!402985) (content!1614 lt!402159)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335955 (= lt!402985 e!752387)))

(declare-fun c!195765 () Bool)

(assert (=> d!335955 (= c!195765 ((_ is Nil!11590) lt!402159))))

(assert (=> d!335955 (= (drop!493 lt!402159 (+ lt!402169 1)) lt!402985)))

(assert (= (and d!335955 c!195765) b!1173155))

(assert (= (and d!335955 (not c!195765)) b!1173149))

(assert (= (and b!1173149 c!195766) b!1173156))

(assert (= (and b!1173149 (not c!195766)) b!1173151))

(assert (= (and d!335955 res!529981) b!1173150))

(assert (= (and b!1173150 c!195763) b!1173152))

(assert (= (and b!1173150 (not c!195763)) b!1173154))

(assert (= (and b!1173154 c!195764) b!1173153))

(assert (= (and b!1173154 (not c!195764)) b!1173148))

(assert (= (or b!1173152 b!1173154 b!1173148) bm!82378))

(declare-fun m!1348235 () Bool)

(assert (=> b!1173150 m!1348235))

(declare-fun m!1348237 () Bool)

(assert (=> b!1173151 m!1348237))

(assert (=> bm!82378 m!1348113))

(declare-fun m!1348239 () Bool)

(assert (=> d!335955 m!1348239))

(assert (=> d!335955 m!1348117))

(assert (=> b!1171347 d!335955))

(assert (=> b!1171347 d!334969))

(declare-fun d!335957 () Bool)

(assert (=> d!335957 (= (tail!1694 (drop!493 lt!402159 lt!402169)) (drop!493 lt!402159 (+ lt!402169 1)))))

(declare-fun lt!402986 () Unit!17788)

(assert (=> d!335957 (= lt!402986 (choose!7569 lt!402159 lt!402169))))

(declare-fun e!752391 () Bool)

(assert (=> d!335957 e!752391))

(declare-fun res!529982 () Bool)

(assert (=> d!335957 (=> (not res!529982) (not e!752391))))

(assert (=> d!335957 (= res!529982 (>= lt!402169 0))))

(assert (=> d!335957 (= (lemmaDropTail!367 lt!402159 lt!402169) lt!402986)))

(declare-fun b!1173157 () Bool)

(assert (=> b!1173157 (= e!752391 (< lt!402169 (size!9142 lt!402159)))))

(assert (= (and d!335957 res!529982) b!1173157))

(assert (=> d!335957 m!1344767))

(assert (=> d!335957 m!1344767))

(assert (=> d!335957 m!1344793))

(assert (=> d!335957 m!1344777))

(declare-fun m!1348241 () Bool)

(assert (=> d!335957 m!1348241))

(assert (=> b!1173157 m!1348113))

(assert (=> b!1171347 d!335957))

(declare-fun d!335959 () Bool)

(declare-fun lt!402987 () BalanceConc!7630)

(assert (=> d!335959 (= (list!4278 lt!402987) (originalCharacters!2575 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))))

(assert (=> d!335959 (= lt!402987 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))) (value!65595 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))))

(assert (=> d!335959 (= (charsOf!1076 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))) lt!402987)))

(declare-fun b_lambda!35067 () Bool)

(assert (=> (not b_lambda!35067) (not d!335959)))

(declare-fun t!110843 () Bool)

(declare-fun tb!65987 () Bool)

(assert (=> (and b!1171653 (= (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))) t!110843) tb!65987))

(declare-fun b!1173158 () Bool)

(declare-fun e!752392 () Bool)

(declare-fun tp!334795 () Bool)

(assert (=> b!1173158 (= e!752392 (and (inv!15297 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))) (value!65595 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))) tp!334795))))

(declare-fun result!79030 () Bool)

(assert (=> tb!65987 (= result!79030 (and (inv!15298 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))) (value!65595 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))) e!752392))))

(assert (= tb!65987 b!1173158))

(declare-fun m!1348243 () Bool)

(assert (=> b!1173158 m!1348243))

(declare-fun m!1348245 () Bool)

(assert (=> tb!65987 m!1348245))

(assert (=> d!335959 t!110843))

(declare-fun b_and!80787 () Bool)

(assert (= b_and!80785 (and (=> t!110843 result!79030) b_and!80787)))

(declare-fun m!1348247 () Bool)

(assert (=> d!335959 m!1348247))

(declare-fun m!1348249 () Bool)

(assert (=> d!335959 m!1348249))

(assert (=> b!1171347 d!335959))

(declare-fun d!335961 () Bool)

(assert (=> d!335961 (= (tail!1694 (drop!493 lt!402158 0)) (drop!493 lt!402158 (+ 0 1)))))

(declare-fun lt!402988 () Unit!17788)

(assert (=> d!335961 (= lt!402988 (choose!7569 lt!402158 0))))

(declare-fun e!752393 () Bool)

(assert (=> d!335961 e!752393))

(declare-fun res!529983 () Bool)

(assert (=> d!335961 (=> (not res!529983) (not e!752393))))

(assert (=> d!335961 (= res!529983 (>= 0 0))))

(assert (=> d!335961 (= (lemmaDropTail!367 lt!402158 0) lt!402988)))

(declare-fun b!1173159 () Bool)

(assert (=> b!1173159 (= e!752393 (< 0 (size!9142 lt!402158)))))

(assert (= (and d!335961 res!529983) b!1173159))

(assert (=> d!335961 m!1344759))

(assert (=> d!335961 m!1344759))

(assert (=> d!335961 m!1344761))

(assert (=> d!335961 m!1344805))

(declare-fun m!1348251 () Bool)

(assert (=> d!335961 m!1348251))

(assert (=> b!1173159 m!1348151))

(assert (=> b!1171347 d!335961))

(declare-fun d!335963 () Bool)

(assert (=> d!335963 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!402151)))

(declare-fun lt!402989 () Unit!17788)

(assert (=> d!335963 (= lt!402989 (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!402164 lt!402151))))

(assert (=> d!335963 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335963 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) lt!402164 lt!402151) lt!402989)))

(declare-fun bs!286016 () Bool)

(assert (= bs!286016 d!335963))

(assert (=> bs!286016 m!1344789))

(declare-fun m!1348253 () Bool)

(assert (=> bs!286016 m!1348253))

(assert (=> bs!286016 m!1344215))

(assert (=> b!1171347 d!335963))

(declare-fun d!335965 () Bool)

(declare-fun lt!402990 () Token!3704)

(assert (=> d!335965 (contains!2002 lt!402162 lt!402990)))

(declare-fun e!752395 () Token!3704)

(assert (=> d!335965 (= lt!402990 e!752395)))

(declare-fun c!195767 () Bool)

(assert (=> d!335965 (= c!195767 (= lt!402152 0))))

(declare-fun e!752394 () Bool)

(assert (=> d!335965 e!752394))

(declare-fun res!529984 () Bool)

(assert (=> d!335965 (=> (not res!529984) (not e!752394))))

(assert (=> d!335965 (= res!529984 (<= 0 lt!402152))))

(assert (=> d!335965 (= (apply!2518 lt!402162 lt!402152) lt!402990)))

(declare-fun b!1173160 () Bool)

(assert (=> b!1173160 (= e!752394 (< lt!402152 (size!9142 lt!402162)))))

(declare-fun b!1173161 () Bool)

(assert (=> b!1173161 (= e!752395 (head!2110 lt!402162))))

(declare-fun b!1173162 () Bool)

(assert (=> b!1173162 (= e!752395 (apply!2518 (tail!1694 lt!402162) (- lt!402152 1)))))

(assert (= (and d!335965 res!529984) b!1173160))

(assert (= (and d!335965 c!195767) b!1173161))

(assert (= (and d!335965 (not c!195767)) b!1173162))

(declare-fun m!1348255 () Bool)

(assert (=> d!335965 m!1348255))

(assert (=> b!1173160 m!1348159))

(declare-fun m!1348257 () Bool)

(assert (=> b!1173161 m!1348257))

(declare-fun m!1348259 () Bool)

(assert (=> b!1173162 m!1348259))

(assert (=> b!1173162 m!1348259))

(declare-fun m!1348261 () Bool)

(assert (=> b!1173162 m!1348261))

(assert (=> b!1171347 d!335965))

(declare-fun d!335967 () Bool)

(assert (=> d!335967 (= (head!2110 (drop!493 lt!402162 lt!402152)) (h!16991 (drop!493 lt!402162 lt!402152)))))

(assert (=> b!1171347 d!335967))

(declare-fun d!335969 () Bool)

(assert (=> d!335969 (= (tail!1694 (drop!493 lt!402158 0)) (t!110758 (drop!493 lt!402158 0)))))

(assert (=> b!1171347 d!335969))

(declare-fun d!335971 () Bool)

(declare-fun lt!402991 () Bool)

(declare-fun e!752397 () Bool)

(assert (=> d!335971 (= lt!402991 e!752397)))

(declare-fun res!529985 () Bool)

(assert (=> d!335971 (=> (not res!529985) (not e!752397))))

(assert (=> d!335971 (= res!529985 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))))) (list!4274 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))))))

(declare-fun e!752396 () Bool)

(assert (=> d!335971 (= lt!402991 e!752396)))

(declare-fun res!529986 () Bool)

(assert (=> d!335971 (=> (not res!529986) (not e!752396))))

(declare-fun lt!402992 () tuple2!12048)

(assert (=> d!335971 (= res!529986 (= (size!9137 (_1!6871 lt!402992)) 1))))

(assert (=> d!335971 (= lt!402992 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))))))

(assert (=> d!335971 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!335971 (= (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))) lt!402991)))

(declare-fun b!1173163 () Bool)

(declare-fun res!529987 () Bool)

(assert (=> b!1173163 (=> (not res!529987) (not e!752396))))

(assert (=> b!1173163 (= res!529987 (= (apply!2517 (_1!6871 lt!402992) 0) (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))))

(declare-fun b!1173164 () Bool)

(assert (=> b!1173164 (= e!752396 (isEmpty!7034 (_2!6871 lt!402992)))))

(declare-fun b!1173165 () Bool)

(assert (=> b!1173165 (= e!752397 (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1))))))))))

(assert (= (and d!335971 res!529986) b!1173163))

(assert (= (and b!1173163 res!529987) b!1173164))

(assert (= (and d!335971 res!529985) b!1173165))

(declare-fun m!1348263 () Bool)

(assert (=> d!335971 m!1348263))

(declare-fun m!1348265 () Bool)

(assert (=> d!335971 m!1348265))

(assert (=> d!335971 m!1344215))

(declare-fun m!1348267 () Bool)

(assert (=> d!335971 m!1348267))

(declare-fun m!1348269 () Bool)

(assert (=> d!335971 m!1348269))

(declare-fun m!1348271 () Bool)

(assert (=> d!335971 m!1348271))

(assert (=> d!335971 m!1348263))

(assert (=> d!335971 m!1348269))

(declare-fun m!1348273 () Bool)

(assert (=> d!335971 m!1348273))

(assert (=> d!335971 m!1344765))

(assert (=> d!335971 m!1348263))

(declare-fun m!1348275 () Bool)

(assert (=> b!1173163 m!1348275))

(declare-fun m!1348277 () Bool)

(assert (=> b!1173164 m!1348277))

(assert (=> b!1173165 m!1344765))

(assert (=> b!1173165 m!1348263))

(assert (=> b!1173165 m!1348263))

(assert (=> b!1173165 m!1348269))

(assert (=> b!1173165 m!1348269))

(assert (=> b!1173165 m!1348271))

(declare-fun m!1348279 () Bool)

(assert (=> b!1173165 m!1348279))

(assert (=> b!1171347 d!335971))

(declare-fun b!1173166 () Bool)

(declare-fun e!752400 () Int)

(declare-fun call!82384 () Int)

(assert (=> b!1173166 (= e!752400 (- call!82384 0))))

(declare-fun b!1173168 () Bool)

(declare-fun e!752398 () Bool)

(declare-fun lt!402993 () List!11614)

(declare-fun e!752402 () Int)

(assert (=> b!1173168 (= e!752398 (= (size!9142 lt!402993) e!752402))))

(declare-fun c!195768 () Bool)

(assert (=> b!1173168 (= c!195768 (<= 0 0))))

(declare-fun b!1173169 () Bool)

(declare-fun e!752401 () List!11614)

(assert (=> b!1173169 (= e!752401 (drop!493 (t!110758 lt!402143) (- 0 1)))))

(declare-fun b!1173170 () Bool)

(assert (=> b!1173170 (= e!752402 call!82384)))

(declare-fun b!1173171 () Bool)

(assert (=> b!1173171 (= e!752400 0)))

(declare-fun b!1173172 () Bool)

(assert (=> b!1173172 (= e!752402 e!752400)))

(declare-fun c!195769 () Bool)

(assert (=> b!1173172 (= c!195769 (>= 0 call!82384))))

(declare-fun bm!82379 () Bool)

(assert (=> bm!82379 (= call!82384 (size!9142 lt!402143))))

(declare-fun b!1173173 () Bool)

(declare-fun e!752399 () List!11614)

(assert (=> b!1173173 (= e!752399 Nil!11590)))

(declare-fun b!1173174 () Bool)

(assert (=> b!1173174 (= e!752401 lt!402143)))

(declare-fun b!1173167 () Bool)

(assert (=> b!1173167 (= e!752399 e!752401)))

(declare-fun c!195771 () Bool)

(assert (=> b!1173167 (= c!195771 (<= 0 0))))

(declare-fun d!335973 () Bool)

(assert (=> d!335973 e!752398))

(declare-fun res!529988 () Bool)

(assert (=> d!335973 (=> (not res!529988) (not e!752398))))

(assert (=> d!335973 (= res!529988 (= ((_ map implies) (content!1614 lt!402993) (content!1614 lt!402143)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!335973 (= lt!402993 e!752399)))

(declare-fun c!195770 () Bool)

(assert (=> d!335973 (= c!195770 ((_ is Nil!11590) lt!402143))))

(assert (=> d!335973 (= (drop!493 lt!402143 0) lt!402993)))

(assert (= (and d!335973 c!195770) b!1173173))

(assert (= (and d!335973 (not c!195770)) b!1173167))

(assert (= (and b!1173167 c!195771) b!1173174))

(assert (= (and b!1173167 (not c!195771)) b!1173169))

(assert (= (and d!335973 res!529988) b!1173168))

(assert (= (and b!1173168 c!195768) b!1173170))

(assert (= (and b!1173168 (not c!195768)) b!1173172))

(assert (= (and b!1173172 c!195769) b!1173171))

(assert (= (and b!1173172 (not c!195769)) b!1173166))

(assert (= (or b!1173170 b!1173172 b!1173166) bm!82379))

(declare-fun m!1348281 () Bool)

(assert (=> b!1173168 m!1348281))

(declare-fun m!1348283 () Bool)

(assert (=> b!1173169 m!1348283))

(assert (=> bm!82379 m!1348169))

(declare-fun m!1348285 () Bool)

(assert (=> d!335973 m!1348285))

(declare-fun m!1348287 () Bool)

(assert (=> d!335973 m!1348287))

(assert (=> b!1171347 d!335973))

(declare-fun d!335975 () Bool)

(declare-fun lt!402994 () Bool)

(assert (=> d!335975 (= lt!402994 (isEmpty!7040 (list!4278 (_2!6871 lt!402258))))))

(assert (=> d!335975 (= lt!402994 (isEmpty!7041 (c!195326 (_2!6871 lt!402258))))))

(assert (=> d!335975 (= (isEmpty!7034 (_2!6871 lt!402258)) lt!402994)))

(declare-fun bs!286017 () Bool)

(assert (= bs!286017 d!335975))

(declare-fun m!1348289 () Bool)

(assert (=> bs!286017 m!1348289))

(assert (=> bs!286017 m!1348289))

(declare-fun m!1348291 () Bool)

(assert (=> bs!286017 m!1348291))

(declare-fun m!1348293 () Bool)

(assert (=> bs!286017 m!1348293))

(assert (=> b!1171491 d!335975))

(assert (=> d!335053 d!335049))

(declare-fun d!335977 () Bool)

(assert (=> d!335977 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) lt!401764)))

(assert (=> d!335977 true))

(declare-fun _$77!546 () Unit!17788)

(assert (=> d!335977 (= (choose!7567 Lexer!1714 (rules!9642 thiss!10527) lt!401774 lt!401764) _$77!546)))

(declare-fun bs!286018 () Bool)

(assert (= bs!286018 d!335977))

(assert (=> bs!286018 m!1344195))

(assert (=> d!335053 d!335977))

(assert (=> d!335053 d!334887))

(declare-fun d!335979 () Bool)

(declare-fun lt!402995 () Token!3704)

(assert (=> d!335979 (contains!2002 (list!4274 (tokens!1654 thiss!10527)) lt!402995)))

(declare-fun e!752404 () Token!3704)

(assert (=> d!335979 (= lt!402995 e!752404)))

(declare-fun c!195772 () Bool)

(assert (=> d!335979 (= c!195772 (= 1 0))))

(declare-fun e!752403 () Bool)

(assert (=> d!335979 e!752403))

(declare-fun res!529989 () Bool)

(assert (=> d!335979 (=> (not res!529989) (not e!752403))))

(assert (=> d!335979 (= res!529989 (<= 0 1))))

(assert (=> d!335979 (= (apply!2518 (list!4274 (tokens!1654 thiss!10527)) 1) lt!402995)))

(declare-fun b!1173175 () Bool)

(assert (=> b!1173175 (= e!752403 (< 1 (size!9142 (list!4274 (tokens!1654 thiss!10527)))))))

(declare-fun b!1173176 () Bool)

(assert (=> b!1173176 (= e!752404 (head!2110 (list!4274 (tokens!1654 thiss!10527))))))

(declare-fun b!1173177 () Bool)

(assert (=> b!1173177 (= e!752404 (apply!2518 (tail!1694 (list!4274 (tokens!1654 thiss!10527))) (- 1 1)))))

(assert (= (and d!335979 res!529989) b!1173175))

(assert (= (and d!335979 c!195772) b!1173176))

(assert (= (and d!335979 (not c!195772)) b!1173177))

(assert (=> d!335979 m!1344251))

(declare-fun m!1348295 () Bool)

(assert (=> d!335979 m!1348295))

(assert (=> b!1173175 m!1344251))

(assert (=> b!1173175 m!1344567))

(assert (=> b!1173176 m!1344251))

(declare-fun m!1348297 () Bool)

(assert (=> b!1173176 m!1348297))

(assert (=> b!1173177 m!1344251))

(declare-fun m!1348299 () Bool)

(assert (=> b!1173177 m!1348299))

(assert (=> b!1173177 m!1348299))

(declare-fun m!1348301 () Bool)

(assert (=> b!1173177 m!1348301))

(assert (=> d!335063 d!335979))

(assert (=> d!335063 d!334969))

(declare-fun b!1173192 () Bool)

(declare-fun e!752413 () Token!3704)

(declare-fun e!752415 () Token!3704)

(assert (=> b!1173192 (= e!752413 e!752415)))

(declare-fun lt!403001 () Bool)

(declare-fun appendIndex!113 (List!11614 List!11614 Int) Bool)

(assert (=> b!1173192 (= lt!403001 (appendIndex!113 (list!4277 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (list!4277 (right!10467 (c!195327 (tokens!1654 thiss!10527)))) 1))))

(declare-fun c!195779 () Bool)

(assert (=> b!1173192 (= c!195779 (< 1 (size!9143 (left!10137 (c!195327 (tokens!1654 thiss!10527))))))))

(declare-fun bm!82382 () Bool)

(declare-fun c!195780 () Bool)

(assert (=> bm!82382 (= c!195780 c!195779)))

(declare-fun e!752414 () Int)

(declare-fun call!82387 () Token!3704)

(assert (=> bm!82382 (= call!82387 (apply!2521 (ite c!195779 (left!10137 (c!195327 (tokens!1654 thiss!10527))) (right!10467 (c!195327 (tokens!1654 thiss!10527)))) e!752414))))

(declare-fun d!335981 () Bool)

(declare-fun lt!403000 () Token!3704)

(assert (=> d!335981 (= lt!403000 (apply!2518 (list!4277 (c!195327 (tokens!1654 thiss!10527))) 1))))

(assert (=> d!335981 (= lt!403000 e!752413)))

(declare-fun c!195781 () Bool)

(assert (=> d!335981 (= c!195781 ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun e!752416 () Bool)

(assert (=> d!335981 e!752416))

(declare-fun res!529992 () Bool)

(assert (=> d!335981 (=> (not res!529992) (not e!752416))))

(assert (=> d!335981 (= res!529992 (<= 0 1))))

(assert (=> d!335981 (= (apply!2521 (c!195327 (tokens!1654 thiss!10527)) 1) lt!403000)))

(declare-fun b!1173193 () Bool)

(declare-fun apply!2528 (IArray!7615 Int) Token!3704)

(assert (=> b!1173193 (= e!752413 (apply!2528 (xs!6510 (c!195327 (tokens!1654 thiss!10527))) 1))))

(declare-fun b!1173194 () Bool)

(assert (=> b!1173194 (= e!752415 call!82387)))

(declare-fun b!1173195 () Bool)

(assert (=> b!1173195 (= e!752414 1)))

(declare-fun b!1173196 () Bool)

(assert (=> b!1173196 (= e!752415 call!82387)))

(declare-fun b!1173197 () Bool)

(assert (=> b!1173197 (= e!752416 (< 1 (size!9143 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun b!1173198 () Bool)

(assert (=> b!1173198 (= e!752414 (- 1 (size!9143 (left!10137 (c!195327 (tokens!1654 thiss!10527))))))))

(assert (= (and d!335981 res!529992) b!1173197))

(assert (= (and d!335981 c!195781) b!1173193))

(assert (= (and d!335981 (not c!195781)) b!1173192))

(assert (= (and b!1173192 c!195779) b!1173196))

(assert (= (and b!1173192 (not c!195779)) b!1173194))

(assert (= (or b!1173196 b!1173194) bm!82382))

(assert (= (and bm!82382 c!195780) b!1173195))

(assert (= (and bm!82382 (not c!195780)) b!1173198))

(assert (=> b!1173197 m!1344569))

(assert (=> b!1173198 m!1346179))

(declare-fun m!1348303 () Bool)

(assert (=> b!1173193 m!1348303))

(assert (=> b!1173192 m!1346195))

(assert (=> b!1173192 m!1346197))

(assert (=> b!1173192 m!1346195))

(assert (=> b!1173192 m!1346197))

(declare-fun m!1348305 () Bool)

(assert (=> b!1173192 m!1348305))

(assert (=> b!1173192 m!1346179))

(assert (=> d!335981 m!1344673))

(assert (=> d!335981 m!1344673))

(declare-fun m!1348307 () Bool)

(assert (=> d!335981 m!1348307))

(declare-fun m!1348309 () Bool)

(assert (=> bm!82382 m!1348309))

(assert (=> d!335063 d!335981))

(declare-fun d!335983 () Bool)

(declare-fun res!529997 () Bool)

(declare-fun e!752419 () Bool)

(assert (=> d!335983 (=> (not res!529997) (not e!752419))))

(assert (=> d!335983 (= res!529997 (<= (size!9142 (list!4282 (xs!6510 (c!195327 (tokens!1654 thiss!10527))))) 512))))

(assert (=> d!335983 (= (inv!15290 (c!195327 (tokens!1654 thiss!10527))) e!752419)))

(declare-fun b!1173203 () Bool)

(declare-fun res!529998 () Bool)

(assert (=> b!1173203 (=> (not res!529998) (not e!752419))))

(assert (=> b!1173203 (= res!529998 (= (csize!7841 (c!195327 (tokens!1654 thiss!10527))) (size!9142 (list!4282 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))))

(declare-fun b!1173204 () Bool)

(assert (=> b!1173204 (= e!752419 (and (> (csize!7841 (c!195327 (tokens!1654 thiss!10527))) 0) (<= (csize!7841 (c!195327 (tokens!1654 thiss!10527))) 512)))))

(assert (= (and d!335983 res!529997) b!1173203))

(assert (= (and b!1173203 res!529998) b!1173204))

(assert (=> d!335983 m!1347097))

(assert (=> d!335983 m!1347097))

(declare-fun m!1348311 () Bool)

(assert (=> d!335983 m!1348311))

(assert (=> b!1173203 m!1347097))

(assert (=> b!1173203 m!1347097))

(assert (=> b!1173203 m!1348311))

(assert (=> b!1171307 d!335983))

(assert (=> b!1171477 d!334985))

(declare-fun d!335985 () Bool)

(declare-fun res!530000 () Bool)

(declare-fun e!752423 () Bool)

(assert (=> d!335985 (=> res!530000 e!752423)))

(assert (=> d!335985 (= res!530000 ((_ is Nil!11590) lt!402172))))

(assert (=> d!335985 (= (subseq!271 lt!402172 lt!402165) e!752423)))

(declare-fun b!1173207 () Bool)

(declare-fun e!752422 () Bool)

(assert (=> b!1173207 (= e!752422 (subseq!271 (t!110758 lt!402172) (t!110758 lt!402165)))))

(declare-fun b!1173205 () Bool)

(declare-fun e!752420 () Bool)

(assert (=> b!1173205 (= e!752423 e!752420)))

(declare-fun res!529999 () Bool)

(assert (=> b!1173205 (=> (not res!529999) (not e!752420))))

(assert (=> b!1173205 (= res!529999 ((_ is Cons!11590) lt!402165))))

(declare-fun b!1173206 () Bool)

(declare-fun e!752421 () Bool)

(assert (=> b!1173206 (= e!752420 e!752421)))

(declare-fun res!530001 () Bool)

(assert (=> b!1173206 (=> res!530001 e!752421)))

(assert (=> b!1173206 (= res!530001 e!752422)))

(declare-fun res!530002 () Bool)

(assert (=> b!1173206 (=> (not res!530002) (not e!752422))))

(assert (=> b!1173206 (= res!530002 (= (h!16991 lt!402172) (h!16991 lt!402165)))))

(declare-fun b!1173208 () Bool)

(assert (=> b!1173208 (= e!752421 (subseq!271 lt!402172 (t!110758 lt!402165)))))

(assert (= (and d!335985 (not res!530000)) b!1173205))

(assert (= (and b!1173205 res!529999) b!1173206))

(assert (= (and b!1173206 res!530002) b!1173207))

(assert (= (and b!1173206 (not res!530001)) b!1173208))

(declare-fun m!1348313 () Bool)

(assert (=> b!1173207 m!1348313))

(declare-fun m!1348315 () Bool)

(assert (=> b!1173208 m!1348315))

(assert (=> b!1171351 d!335985))

(declare-fun d!335987 () Bool)

(declare-fun res!530004 () Bool)

(declare-fun e!752427 () Bool)

(assert (=> d!335987 (=> res!530004 e!752427)))

(assert (=> d!335987 (= res!530004 ((_ is Nil!11590) lt!402139))))

(assert (=> d!335987 (= (subseq!271 lt!402139 lt!402132) e!752427)))

(declare-fun b!1173211 () Bool)

(declare-fun e!752426 () Bool)

(assert (=> b!1173211 (= e!752426 (subseq!271 (t!110758 lt!402139) (t!110758 lt!402132)))))

(declare-fun b!1173209 () Bool)

(declare-fun e!752424 () Bool)

(assert (=> b!1173209 (= e!752427 e!752424)))

(declare-fun res!530003 () Bool)

(assert (=> b!1173209 (=> (not res!530003) (not e!752424))))

(assert (=> b!1173209 (= res!530003 ((_ is Cons!11590) lt!402132))))

(declare-fun b!1173210 () Bool)

(declare-fun e!752425 () Bool)

(assert (=> b!1173210 (= e!752424 e!752425)))

(declare-fun res!530005 () Bool)

(assert (=> b!1173210 (=> res!530005 e!752425)))

(assert (=> b!1173210 (= res!530005 e!752426)))

(declare-fun res!530006 () Bool)

(assert (=> b!1173210 (=> (not res!530006) (not e!752426))))

(assert (=> b!1173210 (= res!530006 (= (h!16991 lt!402139) (h!16991 lt!402132)))))

(declare-fun b!1173212 () Bool)

(assert (=> b!1173212 (= e!752425 (subseq!271 lt!402139 (t!110758 lt!402132)))))

(assert (= (and d!335987 (not res!530004)) b!1173209))

(assert (= (and b!1173209 res!530003) b!1173210))

(assert (= (and b!1173210 res!530006) b!1173211))

(assert (= (and b!1173210 (not res!530005)) b!1173212))

(declare-fun m!1348317 () Bool)

(assert (=> b!1173211 m!1348317))

(declare-fun m!1348319 () Bool)

(assert (=> b!1173212 m!1348319))

(assert (=> b!1171343 d!335987))

(declare-fun d!335989 () Bool)

(declare-fun lt!403004 () Int)

(assert (=> d!335989 (>= lt!403004 0)))

(declare-fun e!752430 () Int)

(assert (=> d!335989 (= lt!403004 e!752430)))

(declare-fun c!195784 () Bool)

(assert (=> d!335989 (= c!195784 ((_ is Nil!11589) (list!4278 (charsOf!1076 lt!401769))))))

(assert (=> d!335989 (= (size!9144 (list!4278 (charsOf!1076 lt!401769))) lt!403004)))

(declare-fun b!1173217 () Bool)

(assert (=> b!1173217 (= e!752430 0)))

(declare-fun b!1173218 () Bool)

(assert (=> b!1173218 (= e!752430 (+ 1 (size!9144 (t!110757 (list!4278 (charsOf!1076 lt!401769))))))))

(assert (= (and d!335989 c!195784) b!1173217))

(assert (= (and d!335989 (not c!195784)) b!1173218))

(declare-fun m!1348321 () Bool)

(assert (=> b!1173218 m!1348321))

(assert (=> d!334981 d!335989))

(declare-fun d!335991 () Bool)

(assert (=> d!335991 (= (list!4278 (charsOf!1076 lt!401769)) (list!4281 (c!195326 (charsOf!1076 lt!401769))))))

(declare-fun bs!286019 () Bool)

(assert (= bs!286019 d!335991))

(declare-fun m!1348323 () Bool)

(assert (=> bs!286019 m!1348323))

(assert (=> d!334981 d!335991))

(declare-fun d!335993 () Bool)

(declare-fun lt!403007 () Int)

(assert (=> d!335993 (= lt!403007 (size!9144 (list!4281 (c!195326 (charsOf!1076 lt!401769)))))))

(assert (=> d!335993 (= lt!403007 (ite ((_ is Empty!3804) (c!195326 (charsOf!1076 lt!401769))) 0 (ite ((_ is Leaf!5825) (c!195326 (charsOf!1076 lt!401769))) (csize!7839 (c!195326 (charsOf!1076 lt!401769))) (csize!7838 (c!195326 (charsOf!1076 lt!401769))))))))

(assert (=> d!335993 (= (size!9145 (c!195326 (charsOf!1076 lt!401769))) lt!403007)))

(declare-fun bs!286020 () Bool)

(assert (= bs!286020 d!335993))

(assert (=> bs!286020 m!1348323))

(assert (=> bs!286020 m!1348323))

(declare-fun m!1348325 () Bool)

(assert (=> bs!286020 m!1348325))

(assert (=> d!334981 d!335993))

(declare-fun d!335995 () Bool)

(assert (=> d!335995 (= (list!4274 lt!401932) (list!4277 (c!195327 lt!401932)))))

(declare-fun bs!286021 () Bool)

(assert (= bs!286021 d!335995))

(declare-fun m!1348327 () Bool)

(assert (=> bs!286021 m!1348327))

(assert (=> b!1171247 d!335995))

(declare-fun d!335997 () Bool)

(assert (=> d!335997 (= (slice!349 (list!4274 (tokens!1654 thiss!10527)) from!787 to!267) (take!81 (drop!493 (list!4274 (tokens!1654 thiss!10527)) from!787) (- to!267 from!787)))))

(declare-fun bs!286022 () Bool)

(assert (= bs!286022 d!335997))

(assert (=> bs!286022 m!1344251))

(declare-fun m!1348329 () Bool)

(assert (=> bs!286022 m!1348329))

(assert (=> bs!286022 m!1348329))

(declare-fun m!1348331 () Bool)

(assert (=> bs!286022 m!1348331))

(assert (=> b!1171247 d!335997))

(assert (=> b!1171247 d!334969))

(assert (=> d!334889 d!334903))

(declare-fun d!335999 () Bool)

(declare-fun res!530007 () Bool)

(declare-fun e!752431 () Bool)

(assert (=> d!335999 (=> res!530007 e!752431)))

(assert (=> d!335999 (= res!530007 ((_ is Nil!11590) (list!4274 lt!401775)))))

(assert (=> d!335999 (= (forall!3066 (list!4274 lt!401775) lambda!48226) e!752431)))

(declare-fun b!1173219 () Bool)

(declare-fun e!752432 () Bool)

(assert (=> b!1173219 (= e!752431 e!752432)))

(declare-fun res!530008 () Bool)

(assert (=> b!1173219 (=> (not res!530008) (not e!752432))))

(assert (=> b!1173219 (= res!530008 (dynLambda!5125 lambda!48226 (h!16991 (list!4274 lt!401775))))))

(declare-fun b!1173220 () Bool)

(assert (=> b!1173220 (= e!752432 (forall!3066 (t!110758 (list!4274 lt!401775)) lambda!48226))))

(assert (= (and d!335999 (not res!530007)) b!1173219))

(assert (= (and b!1173219 res!530008) b!1173220))

(declare-fun b_lambda!35069 () Bool)

(assert (=> (not b_lambda!35069) (not b!1173219)))

(declare-fun m!1348333 () Bool)

(assert (=> b!1173219 m!1348333))

(declare-fun m!1348335 () Bool)

(assert (=> b!1173220 m!1348335))

(assert (=> d!335043 d!335999))

(assert (=> d!335043 d!334939))

(declare-fun d!336001 () Bool)

(declare-fun lt!403008 () Bool)

(assert (=> d!336001 (= lt!403008 (forall!3066 (list!4274 lt!401775) lambda!48226))))

(assert (=> d!336001 (= lt!403008 (forall!3068 (c!195327 lt!401775) lambda!48226))))

(assert (=> d!336001 (= (forall!3065 lt!401775 lambda!48226) lt!403008)))

(declare-fun bs!286023 () Bool)

(assert (= bs!286023 d!336001))

(assert (=> bs!286023 m!1344231))

(assert (=> bs!286023 m!1344231))

(assert (=> bs!286023 m!1345067))

(declare-fun m!1348337 () Bool)

(assert (=> bs!286023 m!1348337))

(assert (=> d!335043 d!336001))

(assert (=> d!335043 d!334887))

(declare-fun d!336003 () Bool)

(declare-fun lt!403009 () Bool)

(assert (=> d!336003 (= lt!403009 (isEmpty!7040 (list!4278 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))))))))))

(assert (=> d!336003 (= lt!403009 (isEmpty!7041 (c!195326 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773))))))))))

(assert (=> d!336003 (= (isEmpty!7034 (_2!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 (h!16991 lt!401773)))))) lt!403009)))

(declare-fun bs!286024 () Bool)

(assert (= bs!286024 d!336003))

(declare-fun m!1348339 () Bool)

(assert (=> bs!286024 m!1348339))

(assert (=> bs!286024 m!1348339))

(declare-fun m!1348341 () Bool)

(assert (=> bs!286024 m!1348341))

(declare-fun m!1348343 () Bool)

(assert (=> bs!286024 m!1348343))

(assert (=> b!1171486 d!336003))

(assert (=> b!1171486 d!335385))

(assert (=> b!1171486 d!335383))

(assert (=> b!1171486 d!335381))

(declare-fun d!336005 () Bool)

(declare-fun res!530010 () Bool)

(declare-fun e!752436 () Bool)

(assert (=> d!336005 (=> res!530010 e!752436)))

(assert (=> d!336005 (= res!530010 ((_ is Nil!11590) (slice!349 lt!401774 from!787 to!267)))))

(assert (=> d!336005 (= (subseq!271 (slice!349 lt!401774 from!787 to!267) (t!110758 lt!401774)) e!752436)))

(declare-fun b!1173223 () Bool)

(declare-fun e!752435 () Bool)

(assert (=> b!1173223 (= e!752435 (subseq!271 (t!110758 (slice!349 lt!401774 from!787 to!267)) (t!110758 (t!110758 lt!401774))))))

(declare-fun b!1173221 () Bool)

(declare-fun e!752433 () Bool)

(assert (=> b!1173221 (= e!752436 e!752433)))

(declare-fun res!530009 () Bool)

(assert (=> b!1173221 (=> (not res!530009) (not e!752433))))

(assert (=> b!1173221 (= res!530009 ((_ is Cons!11590) (t!110758 lt!401774)))))

(declare-fun b!1173222 () Bool)

(declare-fun e!752434 () Bool)

(assert (=> b!1173222 (= e!752433 e!752434)))

(declare-fun res!530011 () Bool)

(assert (=> b!1173222 (=> res!530011 e!752434)))

(assert (=> b!1173222 (= res!530011 e!752435)))

(declare-fun res!530012 () Bool)

(assert (=> b!1173222 (=> (not res!530012) (not e!752435))))

(assert (=> b!1173222 (= res!530012 (= (h!16991 (slice!349 lt!401774 from!787 to!267)) (h!16991 (t!110758 lt!401774))))))

(declare-fun b!1173224 () Bool)

(assert (=> b!1173224 (= e!752434 (subseq!271 (slice!349 lt!401774 from!787 to!267) (t!110758 (t!110758 lt!401774))))))

(assert (= (and d!336005 (not res!530010)) b!1173221))

(assert (= (and b!1173221 res!530009) b!1173222))

(assert (= (and b!1173222 res!530012) b!1173223))

(assert (= (and b!1173222 (not res!530011)) b!1173224))

(assert (=> b!1173223 m!1345867))

(assert (=> b!1173224 m!1344235))

(declare-fun m!1348345 () Bool)

(assert (=> b!1173224 m!1348345))

(assert (=> b!1171268 d!336005))

(declare-fun d!336007 () Bool)

(assert (=> d!336007 (= (tail!1694 (drop!493 lt!401774 1)) (t!110758 (drop!493 lt!401774 1)))))

(assert (=> d!335083 d!336007))

(assert (=> d!335083 d!335079))

(declare-fun b!1173225 () Bool)

(declare-fun e!752439 () Int)

(declare-fun call!82388 () Int)

(assert (=> b!1173225 (= e!752439 (- call!82388 (+ 1 1)))))

(declare-fun b!1173227 () Bool)

(declare-fun e!752437 () Bool)

(declare-fun lt!403010 () List!11614)

(declare-fun e!752441 () Int)

(assert (=> b!1173227 (= e!752437 (= (size!9142 lt!403010) e!752441))))

(declare-fun c!195785 () Bool)

(assert (=> b!1173227 (= c!195785 (<= (+ 1 1) 0))))

(declare-fun b!1173228 () Bool)

(declare-fun e!752440 () List!11614)

(assert (=> b!1173228 (= e!752440 (drop!493 (t!110758 lt!401774) (- (+ 1 1) 1)))))

(declare-fun b!1173229 () Bool)

(assert (=> b!1173229 (= e!752441 call!82388)))

(declare-fun b!1173230 () Bool)

(assert (=> b!1173230 (= e!752439 0)))

(declare-fun b!1173231 () Bool)

(assert (=> b!1173231 (= e!752441 e!752439)))

(declare-fun c!195786 () Bool)

(assert (=> b!1173231 (= c!195786 (>= (+ 1 1) call!82388))))

(declare-fun bm!82383 () Bool)

(assert (=> bm!82383 (= call!82388 (size!9142 lt!401774))))

(declare-fun b!1173232 () Bool)

(declare-fun e!752438 () List!11614)

(assert (=> b!1173232 (= e!752438 Nil!11590)))

(declare-fun b!1173233 () Bool)

(assert (=> b!1173233 (= e!752440 lt!401774)))

(declare-fun b!1173226 () Bool)

(assert (=> b!1173226 (= e!752438 e!752440)))

(declare-fun c!195788 () Bool)

(assert (=> b!1173226 (= c!195788 (<= (+ 1 1) 0))))

(declare-fun d!336009 () Bool)

(assert (=> d!336009 e!752437))

(declare-fun res!530013 () Bool)

(assert (=> d!336009 (=> (not res!530013) (not e!752437))))

(assert (=> d!336009 (= res!530013 (= ((_ map implies) (content!1614 lt!403010) (content!1614 lt!401774)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!336009 (= lt!403010 e!752438)))

(declare-fun c!195787 () Bool)

(assert (=> d!336009 (= c!195787 ((_ is Nil!11590) lt!401774))))

(assert (=> d!336009 (= (drop!493 lt!401774 (+ 1 1)) lt!403010)))

(assert (= (and d!336009 c!195787) b!1173232))

(assert (= (and d!336009 (not c!195787)) b!1173226))

(assert (= (and b!1173226 c!195788) b!1173233))

(assert (= (and b!1173226 (not c!195788)) b!1173228))

(assert (= (and d!336009 res!530013) b!1173227))

(assert (= (and b!1173227 c!195785) b!1173229))

(assert (= (and b!1173227 (not c!195785)) b!1173231))

(assert (= (and b!1173231 c!195786) b!1173230))

(assert (= (and b!1173231 (not c!195786)) b!1173225))

(assert (= (or b!1173229 b!1173231 b!1173225) bm!82383))

(declare-fun m!1348347 () Bool)

(assert (=> b!1173227 m!1348347))

(declare-fun m!1348349 () Bool)

(assert (=> b!1173228 m!1348349))

(assert (=> bm!82383 m!1344463))

(declare-fun m!1348351 () Bool)

(assert (=> d!336009 m!1348351))

(assert (=> d!336009 m!1345203))

(assert (=> d!335083 d!336009))

(declare-fun d!336011 () Bool)

(assert (=> d!336011 (= (tail!1694 (drop!493 lt!401774 1)) (drop!493 lt!401774 (+ 1 1)))))

(assert (=> d!336011 true))

(declare-fun _$28!433 () Unit!17788)

(assert (=> d!336011 (= (choose!7569 lt!401774 1) _$28!433)))

(declare-fun bs!286025 () Bool)

(assert (= bs!286025 d!336011))

(assert (=> bs!286025 m!1344199))

(assert (=> bs!286025 m!1344199))

(assert (=> bs!286025 m!1345205))

(assert (=> bs!286025 m!1345207))

(assert (=> d!335083 d!336011))

(declare-fun d!336013 () Bool)

(assert (=> d!336013 (= (head!2110 (drop!493 lt!401774 1)) (h!16991 (drop!493 lt!401774 1)))))

(assert (=> d!335087 d!336013))

(assert (=> d!335087 d!335079))

(assert (=> d!335087 d!335073))

(declare-fun d!336015 () Bool)

(assert (=> d!336015 (= (head!2110 (drop!493 lt!401774 1)) (apply!2518 lt!401774 1))))

(assert (=> d!336015 true))

(declare-fun _$27!666 () Unit!17788)

(assert (=> d!336015 (= (choose!7568 lt!401774 1) _$27!666)))

(declare-fun bs!286026 () Bool)

(assert (= bs!286026 d!336015))

(assert (=> bs!286026 m!1344199))

(assert (=> bs!286026 m!1344199))

(assert (=> bs!286026 m!1345217))

(assert (=> bs!286026 m!1344209))

(assert (=> d!335087 d!336015))

(assert (=> b!1171099 d!334955))

(declare-fun bs!286027 () Bool)

(declare-fun d!336017 () Bool)

(assert (= bs!286027 (and d!336017 d!334979)))

(declare-fun lambda!48255 () Int)

(assert (=> bs!286027 (= lambda!48255 lambda!48224)))

(declare-fun bs!286028 () Bool)

(assert (= bs!286028 (and d!336017 d!335711)))

(assert (=> bs!286028 (= lambda!48255 lambda!48242)))

(declare-fun bs!286029 () Bool)

(assert (= bs!286029 (and d!336017 d!334973)))

(assert (=> bs!286029 (= lambda!48255 lambda!48223)))

(declare-fun bs!286030 () Bool)

(assert (= bs!286030 (and d!336017 d!335719)))

(assert (=> bs!286030 (= lambda!48255 lambda!48243)))

(declare-fun bs!286031 () Bool)

(assert (= bs!286031 (and d!336017 d!335675)))

(assert (=> bs!286031 (= lambda!48255 lambda!48241)))

(declare-fun bs!286032 () Bool)

(assert (= bs!286032 (and d!336017 d!335473)))

(assert (=> bs!286032 (= lambda!48255 lambda!48236)))

(declare-fun bs!286033 () Bool)

(assert (= bs!286033 (and d!336017 d!334961)))

(assert (=> bs!286033 (= lambda!48255 lambda!48222)))

(declare-fun bs!286034 () Bool)

(assert (= bs!286034 (and d!336017 d!335489)))

(assert (=> bs!286034 (= lambda!48255 lambda!48237)))

(declare-fun bs!286035 () Bool)

(assert (= bs!286035 (and d!336017 d!335043)))

(assert (=> bs!286035 (= lambda!48255 lambda!48226)))

(declare-fun bs!286036 () Bool)

(assert (= bs!286036 (and d!336017 d!335095)))

(assert (=> bs!286036 (= lambda!48255 lambda!48227)))

(declare-fun bs!286037 () Bool)

(assert (= bs!286037 (and d!336017 b!1171109)))

(assert (=> bs!286037 (= lambda!48255 lambda!48203)))

(declare-fun bs!286038 () Bool)

(assert (= bs!286038 (and d!336017 d!334933)))

(assert (=> bs!286038 (= lambda!48255 lambda!48217)))

(declare-fun b!1173238 () Bool)

(declare-fun e!752446 () Bool)

(assert (=> b!1173238 (= e!752446 true)))

(declare-fun b!1173237 () Bool)

(declare-fun e!752445 () Bool)

(assert (=> b!1173237 (= e!752445 e!752446)))

(declare-fun b!1173236 () Bool)

(declare-fun e!752444 () Bool)

(assert (=> b!1173236 (= e!752444 e!752445)))

(assert (=> d!336017 e!752444))

(assert (= b!1173237 b!1173238))

(assert (= b!1173236 b!1173237))

(assert (= (and d!336017 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1173236))

(assert (=> b!1173238 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48255))))

(assert (=> b!1173238 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48255))))

(assert (=> d!336017 true))

(declare-fun lt!403011 () Bool)

(assert (=> d!336017 (= lt!403011 (forall!3066 (list!4274 lt!401775) lambda!48255))))

(declare-fun e!752442 () Bool)

(assert (=> d!336017 (= lt!403011 e!752442)))

(declare-fun res!530014 () Bool)

(assert (=> d!336017 (=> res!530014 e!752442)))

(assert (=> d!336017 (= res!530014 (not ((_ is Cons!11590) (list!4274 lt!401775))))))

(assert (=> d!336017 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!336017 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (list!4274 lt!401775)) lt!403011)))

(declare-fun b!1173234 () Bool)

(declare-fun e!752443 () Bool)

(assert (=> b!1173234 (= e!752442 e!752443)))

(declare-fun res!530015 () Bool)

(assert (=> b!1173234 (=> (not res!530015) (not e!752443))))

(assert (=> b!1173234 (= res!530015 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (list!4274 lt!401775))))))

(declare-fun b!1173235 () Bool)

(assert (=> b!1173235 (= e!752443 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 (list!4274 lt!401775))))))

(assert (= (and d!336017 (not res!530014)) b!1173234))

(assert (= (and b!1173234 res!530015) b!1173235))

(assert (=> d!336017 m!1344231))

(declare-fun m!1348353 () Bool)

(assert (=> d!336017 m!1348353))

(assert (=> d!336017 m!1344215))

(declare-fun m!1348355 () Bool)

(assert (=> b!1173234 m!1348355))

(declare-fun m!1348357 () Bool)

(assert (=> b!1173235 m!1348357))

(assert (=> b!1171480 d!336017))

(assert (=> b!1171480 d!334939))

(declare-fun d!336019 () Bool)

(declare-fun lt!403014 () Bool)

(assert (=> d!336019 (= lt!403014 (select (content!1614 lt!401774) lt!402274))))

(declare-fun e!752451 () Bool)

(assert (=> d!336019 (= lt!403014 e!752451)))

(declare-fun res!530021 () Bool)

(assert (=> d!336019 (=> (not res!530021) (not e!752451))))

(assert (=> d!336019 (= res!530021 ((_ is Cons!11590) lt!401774))))

(assert (=> d!336019 (= (contains!2002 lt!401774 lt!402274) lt!403014)))

(declare-fun b!1173243 () Bool)

(declare-fun e!752452 () Bool)

(assert (=> b!1173243 (= e!752451 e!752452)))

(declare-fun res!530020 () Bool)

(assert (=> b!1173243 (=> res!530020 e!752452)))

(assert (=> b!1173243 (= res!530020 (= (h!16991 lt!401774) lt!402274))))

(declare-fun b!1173244 () Bool)

(assert (=> b!1173244 (= e!752452 (contains!2002 (t!110758 lt!401774) lt!402274))))

(assert (= (and d!336019 res!530021) b!1173243))

(assert (= (and b!1173243 (not res!530020)) b!1173244))

(assert (=> d!336019 m!1345203))

(declare-fun m!1348359 () Bool)

(assert (=> d!336019 m!1348359))

(declare-fun m!1348361 () Bool)

(assert (=> b!1173244 m!1348361))

(assert (=> d!335073 d!336019))

(declare-fun d!336021 () Bool)

(declare-fun lt!403015 () Token!3704)

(assert (=> d!336021 (= lt!403015 (apply!2518 (list!4274 (_1!6871 lt!402237)) 0))))

(assert (=> d!336021 (= lt!403015 (apply!2521 (c!195327 (_1!6871 lt!402237)) 0))))

(declare-fun e!752453 () Bool)

(assert (=> d!336021 e!752453))

(declare-fun res!530022 () Bool)

(assert (=> d!336021 (=> (not res!530022) (not e!752453))))

(assert (=> d!336021 (= res!530022 (<= 0 0))))

(assert (=> d!336021 (= (apply!2517 (_1!6871 lt!402237) 0) lt!403015)))

(declare-fun b!1173245 () Bool)

(assert (=> b!1173245 (= e!752453 (< 0 (size!9137 (_1!6871 lt!402237))))))

(assert (= (and d!336021 res!530022) b!1173245))

(assert (=> d!336021 m!1345831))

(assert (=> d!336021 m!1345831))

(declare-fun m!1348363 () Bool)

(assert (=> d!336021 m!1348363))

(declare-fun m!1348365 () Bool)

(assert (=> d!336021 m!1348365))

(assert (=> b!1173245 m!1345011))

(assert (=> b!1171442 d!336021))

(declare-fun d!336023 () Bool)

(declare-fun lt!403016 () Bool)

(assert (=> d!336023 (= lt!403016 (isEmpty!7040 (list!4278 (_2!6871 lt!402256))))))

(assert (=> d!336023 (= lt!403016 (isEmpty!7041 (c!195326 (_2!6871 lt!402256))))))

(assert (=> d!336023 (= (isEmpty!7034 (_2!6871 lt!402256)) lt!403016)))

(declare-fun bs!286039 () Bool)

(assert (= bs!286039 d!336023))

(declare-fun m!1348367 () Bool)

(assert (=> bs!286039 m!1348367))

(assert (=> bs!286039 m!1348367))

(declare-fun m!1348369 () Bool)

(assert (=> bs!286039 m!1348369))

(declare-fun m!1348371 () Bool)

(assert (=> bs!286039 m!1348371))

(assert (=> b!1171488 d!336023))

(declare-fun d!336025 () Bool)

(declare-fun lt!403017 () Int)

(assert (=> d!336025 (= lt!403017 (size!9142 (list!4274 (_1!6871 lt!402258))))))

(assert (=> d!336025 (= lt!403017 (size!9143 (c!195327 (_1!6871 lt!402258))))))

(assert (=> d!336025 (= (size!9137 (_1!6871 lt!402258)) lt!403017)))

(declare-fun bs!286040 () Bool)

(assert (= bs!286040 d!336025))

(declare-fun m!1348373 () Bool)

(assert (=> bs!286040 m!1348373))

(assert (=> bs!286040 m!1348373))

(declare-fun m!1348375 () Bool)

(assert (=> bs!286040 m!1348375))

(declare-fun m!1348377 () Bool)

(assert (=> bs!286040 m!1348377))

(assert (=> d!335051 d!336025))

(declare-fun d!336027 () Bool)

(assert (=> d!336027 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769))))) (list!4277 (c!195327 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401769)))))))))

(declare-fun bs!286041 () Bool)

(assert (= bs!286041 d!336027))

(declare-fun m!1348379 () Bool)

(assert (=> bs!286041 m!1348379))

(assert (=> d!335051 d!336027))

(assert (=> d!335051 d!335701))

(assert (=> d!335051 d!335697))

(declare-fun d!336029 () Bool)

(assert (=> d!336029 (= (list!4274 (singletonSeq!684 lt!401769)) (list!4277 (c!195327 (singletonSeq!684 lt!401769))))))

(declare-fun bs!286042 () Bool)

(assert (= bs!286042 d!336029))

(declare-fun m!1348381 () Bool)

(assert (=> bs!286042 m!1348381))

(assert (=> d!335051 d!336029))

(assert (=> d!335051 d!334887))

(assert (=> d!335051 d!335693))

(assert (=> b!1171603 d!335393))

(declare-fun d!336031 () Bool)

(declare-fun lt!403018 () Int)

(assert (=> d!336031 (>= lt!403018 0)))

(declare-fun e!752454 () Int)

(assert (=> d!336031 (= lt!403018 e!752454)))

(declare-fun c!195789 () Bool)

(assert (=> d!336031 (= c!195789 ((_ is Nil!11590) lt!401921))))

(assert (=> d!336031 (= (size!9142 lt!401921) lt!403018)))

(declare-fun b!1173246 () Bool)

(assert (=> b!1173246 (= e!752454 0)))

(declare-fun b!1173247 () Bool)

(assert (=> b!1173247 (= e!752454 (+ 1 (size!9142 (t!110758 lt!401921))))))

(assert (= (and d!336031 c!195789) b!1173246))

(assert (= (and d!336031 (not c!195789)) b!1173247))

(declare-fun m!1348383 () Bool)

(assert (=> b!1173247 m!1348383))

(assert (=> b!1171213 d!336031))

(declare-fun b!1173248 () Bool)

(declare-fun e!752457 () Int)

(declare-fun call!82389 () Int)

(assert (=> b!1173248 (= e!752457 (- call!82389 1))))

(declare-fun b!1173250 () Bool)

(declare-fun e!752455 () Bool)

(declare-fun lt!403019 () List!11614)

(declare-fun e!752459 () Int)

(assert (=> b!1173250 (= e!752455 (= (size!9142 lt!403019) e!752459))))

(declare-fun c!195790 () Bool)

(assert (=> b!1173250 (= c!195790 (<= 1 0))))

(declare-fun b!1173251 () Bool)

(declare-fun e!752458 () List!11614)

(assert (=> b!1173251 (= e!752458 (drop!493 (t!110758 lt!402135) (- 1 1)))))

(declare-fun b!1173252 () Bool)

(assert (=> b!1173252 (= e!752459 call!82389)))

(declare-fun b!1173253 () Bool)

(assert (=> b!1173253 (= e!752457 0)))

(declare-fun b!1173254 () Bool)

(assert (=> b!1173254 (= e!752459 e!752457)))

(declare-fun c!195791 () Bool)

(assert (=> b!1173254 (= c!195791 (>= 1 call!82389))))

(declare-fun bm!82384 () Bool)

(assert (=> bm!82384 (= call!82389 (size!9142 lt!402135))))

(declare-fun b!1173255 () Bool)

(declare-fun e!752456 () List!11614)

(assert (=> b!1173255 (= e!752456 Nil!11590)))

(declare-fun b!1173256 () Bool)

(assert (=> b!1173256 (= e!752458 lt!402135)))

(declare-fun b!1173249 () Bool)

(assert (=> b!1173249 (= e!752456 e!752458)))

(declare-fun c!195793 () Bool)

(assert (=> b!1173249 (= c!195793 (<= 1 0))))

(declare-fun d!336033 () Bool)

(assert (=> d!336033 e!752455))

(declare-fun res!530023 () Bool)

(assert (=> d!336033 (=> (not res!530023) (not e!752455))))

(assert (=> d!336033 (= res!530023 (= ((_ map implies) (content!1614 lt!403019) (content!1614 lt!402135)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!336033 (= lt!403019 e!752456)))

(declare-fun c!195792 () Bool)

(assert (=> d!336033 (= c!195792 ((_ is Nil!11590) lt!402135))))

(assert (=> d!336033 (= (drop!493 lt!402135 1) lt!403019)))

(assert (= (and d!336033 c!195792) b!1173255))

(assert (= (and d!336033 (not c!195792)) b!1173249))

(assert (= (and b!1173249 c!195793) b!1173256))

(assert (= (and b!1173249 (not c!195793)) b!1173251))

(assert (= (and d!336033 res!530023) b!1173250))

(assert (= (and b!1173250 c!195790) b!1173252))

(assert (= (and b!1173250 (not c!195790)) b!1173254))

(assert (= (and b!1173254 c!195791) b!1173253))

(assert (= (and b!1173254 (not c!195791)) b!1173248))

(assert (= (or b!1173252 b!1173254 b!1173248) bm!82384))

(declare-fun m!1348385 () Bool)

(assert (=> b!1173250 m!1348385))

(declare-fun m!1348387 () Bool)

(assert (=> b!1173251 m!1348387))

(assert (=> bm!82384 m!1344753))

(declare-fun m!1348389 () Bool)

(assert (=> d!336033 m!1348389))

(declare-fun m!1348391 () Bool)

(assert (=> d!336033 m!1348391))

(assert (=> d!334975 d!336033))

(declare-fun d!336035 () Bool)

(assert (=> d!336035 (= (dropList!325 (tokens!1654 thiss!10527) 1) (drop!493 (list!4277 (c!195327 (tokens!1654 thiss!10527))) 1))))

(declare-fun bs!286043 () Bool)

(assert (= bs!286043 d!336035))

(assert (=> bs!286043 m!1344673))

(assert (=> bs!286043 m!1344673))

(declare-fun m!1348393 () Bool)

(assert (=> bs!286043 m!1348393))

(assert (=> d!334975 d!336035))

(declare-fun d!336037 () Bool)

(declare-fun res!530025 () Bool)

(declare-fun e!752463 () Bool)

(assert (=> d!336037 (=> res!530025 e!752463)))

(assert (=> d!336037 (= res!530025 ((_ is Nil!11590) (drop!493 lt!402135 1)))))

(assert (=> d!336037 (= (subseq!271 (drop!493 lt!402135 1) lt!402135) e!752463)))

(declare-fun b!1173259 () Bool)

(declare-fun e!752462 () Bool)

(assert (=> b!1173259 (= e!752462 (subseq!271 (t!110758 (drop!493 lt!402135 1)) (t!110758 lt!402135)))))

(declare-fun b!1173257 () Bool)

(declare-fun e!752460 () Bool)

(assert (=> b!1173257 (= e!752463 e!752460)))

(declare-fun res!530024 () Bool)

(assert (=> b!1173257 (=> (not res!530024) (not e!752460))))

(assert (=> b!1173257 (= res!530024 ((_ is Cons!11590) lt!402135))))

(declare-fun b!1173258 () Bool)

(declare-fun e!752461 () Bool)

(assert (=> b!1173258 (= e!752460 e!752461)))

(declare-fun res!530026 () Bool)

(assert (=> b!1173258 (=> res!530026 e!752461)))

(assert (=> b!1173258 (= res!530026 e!752462)))

(declare-fun res!530027 () Bool)

(assert (=> b!1173258 (=> (not res!530027) (not e!752462))))

(assert (=> b!1173258 (= res!530027 (= (h!16991 (drop!493 lt!402135 1)) (h!16991 lt!402135)))))

(declare-fun b!1173260 () Bool)

(assert (=> b!1173260 (= e!752461 (subseq!271 (drop!493 lt!402135 1) (t!110758 lt!402135)))))

(assert (= (and d!336037 (not res!530025)) b!1173257))

(assert (= (and b!1173257 res!530024) b!1173258))

(assert (= (and b!1173258 res!530027) b!1173259))

(assert (= (and b!1173258 (not res!530026)) b!1173260))

(declare-fun m!1348395 () Bool)

(assert (=> b!1173259 m!1348395))

(assert (=> b!1173260 m!1344745))

(declare-fun m!1348397 () Bool)

(assert (=> b!1173260 m!1348397))

(assert (=> d!334975 d!336037))

(assert (=> d!334975 d!334969))

(declare-fun bs!286044 () Bool)

(declare-fun d!336039 () Bool)

(assert (= bs!286044 (and d!336039 d!334979)))

(declare-fun lambda!48256 () Int)

(assert (=> bs!286044 (= lambda!48256 lambda!48224)))

(declare-fun bs!286045 () Bool)

(assert (= bs!286045 (and d!336039 d!335711)))

(assert (=> bs!286045 (= lambda!48256 lambda!48242)))

(declare-fun bs!286046 () Bool)

(assert (= bs!286046 (and d!336039 d!334973)))

(assert (=> bs!286046 (= lambda!48256 lambda!48223)))

(declare-fun bs!286047 () Bool)

(assert (= bs!286047 (and d!336039 d!335719)))

(assert (=> bs!286047 (= lambda!48256 lambda!48243)))

(declare-fun bs!286048 () Bool)

(assert (= bs!286048 (and d!336039 d!335675)))

(assert (=> bs!286048 (= lambda!48256 lambda!48241)))

(declare-fun bs!286049 () Bool)

(assert (= bs!286049 (and d!336039 d!336017)))

(assert (=> bs!286049 (= lambda!48256 lambda!48255)))

(declare-fun bs!286050 () Bool)

(assert (= bs!286050 (and d!336039 d!335473)))

(assert (=> bs!286050 (= lambda!48256 lambda!48236)))

(declare-fun bs!286051 () Bool)

(assert (= bs!286051 (and d!336039 d!334961)))

(assert (=> bs!286051 (= lambda!48256 lambda!48222)))

(declare-fun bs!286052 () Bool)

(assert (= bs!286052 (and d!336039 d!335489)))

(assert (=> bs!286052 (= lambda!48256 lambda!48237)))

(declare-fun bs!286053 () Bool)

(assert (= bs!286053 (and d!336039 d!335043)))

(assert (=> bs!286053 (= lambda!48256 lambda!48226)))

(declare-fun bs!286054 () Bool)

(assert (= bs!286054 (and d!336039 d!335095)))

(assert (=> bs!286054 (= lambda!48256 lambda!48227)))

(declare-fun bs!286055 () Bool)

(assert (= bs!286055 (and d!336039 b!1171109)))

(assert (=> bs!286055 (= lambda!48256 lambda!48203)))

(declare-fun bs!286056 () Bool)

(assert (= bs!286056 (and d!336039 d!334933)))

(assert (=> bs!286056 (= lambda!48256 lambda!48217)))

(declare-fun b!1173265 () Bool)

(declare-fun e!752468 () Bool)

(assert (=> b!1173265 (= e!752468 true)))

(declare-fun b!1173264 () Bool)

(declare-fun e!752467 () Bool)

(assert (=> b!1173264 (= e!752467 e!752468)))

(declare-fun b!1173263 () Bool)

(declare-fun e!752466 () Bool)

(assert (=> b!1173263 (= e!752466 e!752467)))

(assert (=> d!336039 e!752466))

(assert (= b!1173264 b!1173265))

(assert (= b!1173263 b!1173264))

(assert (= (and d!336039 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1173263))

(assert (=> b!1173265 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48256))))

(assert (=> b!1173265 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48256))))

(assert (=> d!336039 true))

(declare-fun lt!403020 () Bool)

(assert (=> d!336039 (= lt!403020 (forall!3066 lt!402139 lambda!48256))))

(declare-fun e!752464 () Bool)

(assert (=> d!336039 (= lt!403020 e!752464)))

(declare-fun res!530028 () Bool)

(assert (=> d!336039 (=> res!530028 e!752464)))

(assert (=> d!336039 (= res!530028 (not ((_ is Cons!11590) lt!402139)))))

(assert (=> d!336039 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!336039 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402139) lt!403020)))

(declare-fun b!1173261 () Bool)

(declare-fun e!752465 () Bool)

(assert (=> b!1173261 (= e!752464 e!752465)))

(declare-fun res!530029 () Bool)

(assert (=> b!1173261 (=> (not res!530029) (not e!752465))))

(assert (=> b!1173261 (= res!530029 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!402139)))))

(declare-fun b!1173262 () Bool)

(assert (=> b!1173262 (= e!752465 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!402139)))))

(assert (= (and d!336039 (not res!530028)) b!1173261))

(assert (= (and b!1173261 res!530029) b!1173262))

(declare-fun m!1348399 () Bool)

(assert (=> d!336039 m!1348399))

(assert (=> d!336039 m!1344215))

(declare-fun m!1348401 () Bool)

(assert (=> b!1173261 m!1348401))

(declare-fun m!1348403 () Bool)

(assert (=> b!1173262 m!1348403))

(assert (=> d!334975 d!336039))

(declare-fun d!336041 () Bool)

(declare-fun res!530031 () Bool)

(declare-fun e!752469 () Bool)

(assert (=> d!336041 (=> res!530031 e!752469)))

(assert (=> d!336041 (= res!530031 (or (not ((_ is Cons!11590) (dropList!325 (tokens!1654 thiss!10527) 1))) (not ((_ is Cons!11590) (t!110758 (dropList!325 (tokens!1654 thiss!10527) 1))))))))

(assert (=> d!336041 (= (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 (tokens!1654 thiss!10527) 1) (rules!9642 thiss!10527)) e!752469)))

(declare-fun b!1173266 () Bool)

(declare-fun e!752470 () Bool)

(assert (=> b!1173266 (= e!752469 e!752470)))

(declare-fun res!530030 () Bool)

(assert (=> b!1173266 (=> (not res!530030) (not e!752470))))

(assert (=> b!1173266 (= res!530030 (separableTokensPredicate!138 Lexer!1714 (h!16991 (dropList!325 (tokens!1654 thiss!10527) 1)) (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 1))) (rules!9642 thiss!10527)))))

(declare-fun lt!403024 () Unit!17788)

(declare-fun Unit!17849 () Unit!17788)

(assert (=> b!1173266 (= lt!403024 Unit!17849)))

(assert (=> b!1173266 (> (size!9136 (charsOf!1076 (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 1))))) 0)))

(declare-fun lt!403026 () Unit!17788)

(declare-fun Unit!17850 () Unit!17788)

(assert (=> b!1173266 (= lt!403026 Unit!17850)))

(assert (=> b!1173266 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 1))))))

(declare-fun lt!403022 () Unit!17788)

(declare-fun Unit!17851 () Unit!17788)

(assert (=> b!1173266 (= lt!403022 Unit!17851)))

(assert (=> b!1173266 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (dropList!325 (tokens!1654 thiss!10527) 1)))))

(declare-fun lt!403027 () Unit!17788)

(declare-fun lt!403025 () Unit!17788)

(assert (=> b!1173266 (= lt!403027 lt!403025)))

(assert (=> b!1173266 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 1))))))

(assert (=> b!1173266 (= lt!403025 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) (dropList!325 (tokens!1654 thiss!10527) 1) (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 1)))))))

(declare-fun lt!403023 () Unit!17788)

(declare-fun lt!403021 () Unit!17788)

(assert (=> b!1173266 (= lt!403023 lt!403021)))

(assert (=> b!1173266 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (dropList!325 (tokens!1654 thiss!10527) 1)))))

(assert (=> b!1173266 (= lt!403021 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) (dropList!325 (tokens!1654 thiss!10527) 1) (h!16991 (dropList!325 (tokens!1654 thiss!10527) 1))))))

(declare-fun b!1173267 () Bool)

(assert (=> b!1173267 (= e!752470 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (Cons!11590 (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 1))) (t!110758 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 1)))) (rules!9642 thiss!10527)))))

(assert (= (and d!336041 (not res!530031)) b!1173266))

(assert (= (and b!1173266 res!530030) b!1173267))

(declare-fun m!1348405 () Bool)

(assert (=> b!1173266 m!1348405))

(declare-fun m!1348407 () Bool)

(assert (=> b!1173266 m!1348407))

(declare-fun m!1348409 () Bool)

(assert (=> b!1173266 m!1348409))

(assert (=> b!1173266 m!1344741))

(declare-fun m!1348411 () Bool)

(assert (=> b!1173266 m!1348411))

(declare-fun m!1348413 () Bool)

(assert (=> b!1173266 m!1348413))

(assert (=> b!1173266 m!1348407))

(declare-fun m!1348415 () Bool)

(assert (=> b!1173266 m!1348415))

(assert (=> b!1173266 m!1344741))

(declare-fun m!1348417 () Bool)

(assert (=> b!1173266 m!1348417))

(declare-fun m!1348419 () Bool)

(assert (=> b!1173267 m!1348419))

(assert (=> d!334975 d!336041))

(declare-fun d!336043 () Bool)

(assert (=> d!336043 (subseq!271 (drop!493 lt!402135 1) lt!402135)))

(declare-fun lt!403028 () Unit!17788)

(assert (=> d!336043 (= lt!403028 (choose!7573 lt!402135 1))))

(declare-fun e!752471 () Bool)

(assert (=> d!336043 e!752471))

(declare-fun res!530032 () Bool)

(assert (=> d!336043 (=> (not res!530032) (not e!752471))))

(assert (=> d!336043 (= res!530032 (>= 1 0))))

(assert (=> d!336043 (= (lemmaDropSubSeq!33 lt!402135 1) lt!403028)))

(declare-fun b!1173268 () Bool)

(assert (=> b!1173268 (= e!752471 (<= 1 (size!9142 lt!402135)))))

(assert (= (and d!336043 res!530032) b!1173268))

(assert (=> d!336043 m!1344745))

(assert (=> d!336043 m!1344745))

(assert (=> d!336043 m!1344751))

(declare-fun m!1348421 () Bool)

(assert (=> d!336043 m!1348421))

(assert (=> b!1173268 m!1344753))

(assert (=> d!334975 d!336043))

(declare-fun d!336045 () Bool)

(assert (=> d!336045 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402139)))

(declare-fun lt!403029 () Unit!17788)

(assert (=> d!336045 (= lt!403029 (choose!7572 Lexer!1714 (rules!9642 thiss!10527) lt!402132 lt!402139))))

(assert (=> d!336045 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!336045 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!402132 lt!402139) lt!403029)))

(declare-fun bs!286057 () Bool)

(assert (= bs!286057 d!336045))

(assert (=> bs!286057 m!1344747))

(declare-fun m!1348423 () Bool)

(assert (=> bs!286057 m!1348423))

(assert (=> bs!286057 m!1344215))

(assert (=> d!334975 d!336045))

(assert (=> d!334975 d!334959))

(assert (=> b!1171613 d!335393))

(declare-fun bs!286058 () Bool)

(declare-fun d!336047 () Bool)

(assert (= bs!286058 (and d!336047 d!334979)))

(declare-fun lambda!48257 () Int)

(assert (=> bs!286058 (= lambda!48257 lambda!48224)))

(declare-fun bs!286059 () Bool)

(assert (= bs!286059 (and d!336047 d!335711)))

(assert (=> bs!286059 (= lambda!48257 lambda!48242)))

(declare-fun bs!286060 () Bool)

(assert (= bs!286060 (and d!336047 d!334973)))

(assert (=> bs!286060 (= lambda!48257 lambda!48223)))

(declare-fun bs!286061 () Bool)

(assert (= bs!286061 (and d!336047 d!335719)))

(assert (=> bs!286061 (= lambda!48257 lambda!48243)))

(declare-fun bs!286062 () Bool)

(assert (= bs!286062 (and d!336047 d!336017)))

(assert (=> bs!286062 (= lambda!48257 lambda!48255)))

(declare-fun bs!286063 () Bool)

(assert (= bs!286063 (and d!336047 d!335473)))

(assert (=> bs!286063 (= lambda!48257 lambda!48236)))

(declare-fun bs!286064 () Bool)

(assert (= bs!286064 (and d!336047 d!334961)))

(assert (=> bs!286064 (= lambda!48257 lambda!48222)))

(declare-fun bs!286065 () Bool)

(assert (= bs!286065 (and d!336047 d!335489)))

(assert (=> bs!286065 (= lambda!48257 lambda!48237)))

(declare-fun bs!286066 () Bool)

(assert (= bs!286066 (and d!336047 d!335043)))

(assert (=> bs!286066 (= lambda!48257 lambda!48226)))

(declare-fun bs!286067 () Bool)

(assert (= bs!286067 (and d!336047 d!335095)))

(assert (=> bs!286067 (= lambda!48257 lambda!48227)))

(declare-fun bs!286068 () Bool)

(assert (= bs!286068 (and d!336047 d!336039)))

(assert (=> bs!286068 (= lambda!48257 lambda!48256)))

(declare-fun bs!286069 () Bool)

(assert (= bs!286069 (and d!336047 d!335675)))

(assert (=> bs!286069 (= lambda!48257 lambda!48241)))

(declare-fun bs!286070 () Bool)

(assert (= bs!286070 (and d!336047 b!1171109)))

(assert (=> bs!286070 (= lambda!48257 lambda!48203)))

(declare-fun bs!286071 () Bool)

(assert (= bs!286071 (and d!336047 d!334933)))

(assert (=> bs!286071 (= lambda!48257 lambda!48217)))

(declare-fun b!1173273 () Bool)

(declare-fun e!752476 () Bool)

(assert (=> b!1173273 (= e!752476 true)))

(declare-fun b!1173272 () Bool)

(declare-fun e!752475 () Bool)

(assert (=> b!1173272 (= e!752475 e!752476)))

(declare-fun b!1173271 () Bool)

(declare-fun e!752474 () Bool)

(assert (=> b!1173271 (= e!752474 e!752475)))

(assert (=> d!336047 e!752474))

(assert (= b!1173272 b!1173273))

(assert (= b!1173271 b!1173272))

(assert (= (and d!336047 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1173271))

(assert (=> b!1173273 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48257))))

(assert (=> b!1173273 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48257))))

(assert (=> d!336047 true))

(declare-fun lt!403030 () Bool)

(assert (=> d!336047 (= lt!403030 (forall!3066 (t!110758 (t!110758 lt!401774)) lambda!48257))))

(declare-fun e!752472 () Bool)

(assert (=> d!336047 (= lt!403030 e!752472)))

(declare-fun res!530033 () Bool)

(assert (=> d!336047 (=> res!530033 e!752472)))

(assert (=> d!336047 (= res!530033 (not ((_ is Cons!11590) (t!110758 (t!110758 lt!401774)))))))

(assert (=> d!336047 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!336047 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 (t!110758 lt!401774))) lt!403030)))

(declare-fun b!1173269 () Bool)

(declare-fun e!752473 () Bool)

(assert (=> b!1173269 (= e!752472 e!752473)))

(declare-fun res!530034 () Bool)

(assert (=> b!1173269 (=> (not res!530034) (not e!752473))))

(assert (=> b!1173269 (= res!530034 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (t!110758 lt!401774)))))))

(declare-fun b!1173270 () Bool)

(assert (=> b!1173270 (= e!752473 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 (t!110758 (t!110758 lt!401774)))))))

(assert (= (and d!336047 (not res!530033)) b!1173269))

(assert (= (and b!1173269 res!530034) b!1173270))

(declare-fun m!1348425 () Bool)

(assert (=> d!336047 m!1348425))

(assert (=> d!336047 m!1344215))

(declare-fun m!1348427 () Bool)

(assert (=> b!1173269 m!1348427))

(declare-fun m!1348429 () Bool)

(assert (=> b!1173270 m!1348429))

(assert (=> b!1171225 d!336047))

(declare-fun b!1173274 () Bool)

(declare-fun e!752479 () Int)

(declare-fun call!82390 () Int)

(assert (=> b!1173274 (= e!752479 (- call!82390 0))))

(declare-fun b!1173276 () Bool)

(declare-fun e!752477 () Bool)

(declare-fun lt!403031 () List!11614)

(declare-fun e!752481 () Int)

(assert (=> b!1173276 (= e!752477 (= (size!9142 lt!403031) e!752481))))

(declare-fun c!195794 () Bool)

(assert (=> b!1173276 (= c!195794 (<= 0 0))))

(declare-fun b!1173277 () Bool)

(declare-fun e!752480 () List!11614)

(assert (=> b!1173277 (= e!752480 (drop!493 (t!110758 lt!402168) (- 0 1)))))

(declare-fun b!1173278 () Bool)

(assert (=> b!1173278 (= e!752481 call!82390)))

(declare-fun b!1173279 () Bool)

(assert (=> b!1173279 (= e!752479 0)))

(declare-fun b!1173280 () Bool)

(assert (=> b!1173280 (= e!752481 e!752479)))

(declare-fun c!195795 () Bool)

(assert (=> b!1173280 (= c!195795 (>= 0 call!82390))))

(declare-fun bm!82385 () Bool)

(assert (=> bm!82385 (= call!82390 (size!9142 lt!402168))))

(declare-fun b!1173281 () Bool)

(declare-fun e!752478 () List!11614)

(assert (=> b!1173281 (= e!752478 Nil!11590)))

(declare-fun b!1173282 () Bool)

(assert (=> b!1173282 (= e!752480 lt!402168)))

(declare-fun b!1173275 () Bool)

(assert (=> b!1173275 (= e!752478 e!752480)))

(declare-fun c!195797 () Bool)

(assert (=> b!1173275 (= c!195797 (<= 0 0))))

(declare-fun d!336049 () Bool)

(assert (=> d!336049 e!752477))

(declare-fun res!530035 () Bool)

(assert (=> d!336049 (=> (not res!530035) (not e!752477))))

(assert (=> d!336049 (= res!530035 (= ((_ map implies) (content!1614 lt!403031) (content!1614 lt!402168)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!336049 (= lt!403031 e!752478)))

(declare-fun c!195796 () Bool)

(assert (=> d!336049 (= c!195796 ((_ is Nil!11590) lt!402168))))

(assert (=> d!336049 (= (drop!493 lt!402168 0) lt!403031)))

(assert (= (and d!336049 c!195796) b!1173281))

(assert (= (and d!336049 (not c!195796)) b!1173275))

(assert (= (and b!1173275 c!195797) b!1173282))

(assert (= (and b!1173275 (not c!195797)) b!1173277))

(assert (= (and d!336049 res!530035) b!1173276))

(assert (= (and b!1173276 c!195794) b!1173278))

(assert (= (and b!1173276 (not c!195794)) b!1173280))

(assert (= (and b!1173280 c!195795) b!1173279))

(assert (= (and b!1173280 (not c!195795)) b!1173274))

(assert (= (or b!1173278 b!1173280 b!1173274) bm!82385))

(declare-fun m!1348431 () Bool)

(assert (=> b!1173276 m!1348431))

(declare-fun m!1348433 () Bool)

(assert (=> b!1173277 m!1348433))

(assert (=> bm!82385 m!1344827))

(declare-fun m!1348435 () Bool)

(assert (=> d!336049 m!1348435))

(declare-fun m!1348437 () Bool)

(assert (=> d!336049 m!1348437))

(assert (=> d!334977 d!336049))

(declare-fun bs!286072 () Bool)

(declare-fun d!336051 () Bool)

(assert (= bs!286072 (and d!336051 d!334979)))

(declare-fun lambda!48258 () Int)

(assert (=> bs!286072 (= lambda!48258 lambda!48224)))

(declare-fun bs!286073 () Bool)

(assert (= bs!286073 (and d!336051 d!335711)))

(assert (=> bs!286073 (= lambda!48258 lambda!48242)))

(declare-fun bs!286074 () Bool)

(assert (= bs!286074 (and d!336051 d!334973)))

(assert (=> bs!286074 (= lambda!48258 lambda!48223)))

(declare-fun bs!286075 () Bool)

(assert (= bs!286075 (and d!336051 d!335719)))

(assert (=> bs!286075 (= lambda!48258 lambda!48243)))

(declare-fun bs!286076 () Bool)

(assert (= bs!286076 (and d!336051 d!336017)))

(assert (=> bs!286076 (= lambda!48258 lambda!48255)))

(declare-fun bs!286077 () Bool)

(assert (= bs!286077 (and d!336051 d!335473)))

(assert (=> bs!286077 (= lambda!48258 lambda!48236)))

(declare-fun bs!286078 () Bool)

(assert (= bs!286078 (and d!336051 d!336047)))

(assert (=> bs!286078 (= lambda!48258 lambda!48257)))

(declare-fun bs!286079 () Bool)

(assert (= bs!286079 (and d!336051 d!334961)))

(assert (=> bs!286079 (= lambda!48258 lambda!48222)))

(declare-fun bs!286080 () Bool)

(assert (= bs!286080 (and d!336051 d!335489)))

(assert (=> bs!286080 (= lambda!48258 lambda!48237)))

(declare-fun bs!286081 () Bool)

(assert (= bs!286081 (and d!336051 d!335043)))

(assert (=> bs!286081 (= lambda!48258 lambda!48226)))

(declare-fun bs!286082 () Bool)

(assert (= bs!286082 (and d!336051 d!335095)))

(assert (=> bs!286082 (= lambda!48258 lambda!48227)))

(declare-fun bs!286083 () Bool)

(assert (= bs!286083 (and d!336051 d!336039)))

(assert (=> bs!286083 (= lambda!48258 lambda!48256)))

(declare-fun bs!286084 () Bool)

(assert (= bs!286084 (and d!336051 d!335675)))

(assert (=> bs!286084 (= lambda!48258 lambda!48241)))

(declare-fun bs!286085 () Bool)

(assert (= bs!286085 (and d!336051 b!1171109)))

(assert (=> bs!286085 (= lambda!48258 lambda!48203)))

(declare-fun bs!286086 () Bool)

(assert (= bs!286086 (and d!336051 d!334933)))

(assert (=> bs!286086 (= lambda!48258 lambda!48217)))

(declare-fun b!1173287 () Bool)

(declare-fun e!752486 () Bool)

(assert (=> b!1173287 (= e!752486 true)))

(declare-fun b!1173286 () Bool)

(declare-fun e!752485 () Bool)

(assert (=> b!1173286 (= e!752485 e!752486)))

(declare-fun b!1173285 () Bool)

(declare-fun e!752484 () Bool)

(assert (=> b!1173285 (= e!752484 e!752485)))

(assert (=> d!336051 e!752484))

(assert (= b!1173286 b!1173287))

(assert (= b!1173285 b!1173286))

(assert (= (and d!336051 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1173285))

(assert (=> b!1173287 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48258))))

(assert (=> b!1173287 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48258))))

(assert (=> d!336051 true))

(declare-fun lt!403032 () Bool)

(assert (=> d!336051 (= lt!403032 (forall!3066 lt!402172 lambda!48258))))

(declare-fun e!752482 () Bool)

(assert (=> d!336051 (= lt!403032 e!752482)))

(declare-fun res!530036 () Bool)

(assert (=> d!336051 (=> res!530036 e!752482)))

(assert (=> d!336051 (= res!530036 (not ((_ is Cons!11590) lt!402172)))))

(assert (=> d!336051 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!336051 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402172) lt!403032)))

(declare-fun b!1173283 () Bool)

(declare-fun e!752483 () Bool)

(assert (=> b!1173283 (= e!752482 e!752483)))

(declare-fun res!530037 () Bool)

(assert (=> b!1173283 (=> (not res!530037) (not e!752483))))

(assert (=> b!1173283 (= res!530037 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!402172)))))

(declare-fun b!1173284 () Bool)

(assert (=> b!1173284 (= e!752483 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!402172)))))

(assert (= (and d!336051 (not res!530036)) b!1173283))

(assert (= (and b!1173283 res!530037) b!1173284))

(declare-fun m!1348439 () Bool)

(assert (=> d!336051 m!1348439))

(assert (=> d!336051 m!1344215))

(declare-fun m!1348441 () Bool)

(assert (=> b!1173283 m!1348441))

(declare-fun m!1348443 () Bool)

(assert (=> b!1173284 m!1348443))

(assert (=> d!334977 d!336051))

(assert (=> d!334977 d!334969))

(declare-fun d!336053 () Bool)

(assert (=> d!336053 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!402172)))

(declare-fun lt!403033 () Unit!17788)

(assert (=> d!336053 (= lt!403033 (choose!7572 Lexer!1714 (rules!9642 thiss!10527) lt!402165 lt!402172))))

(assert (=> d!336053 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!336053 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!33 Lexer!1714 (rules!9642 thiss!10527) lt!402165 lt!402172) lt!403033)))

(declare-fun bs!286087 () Bool)

(assert (= bs!286087 d!336053))

(assert (=> bs!286087 m!1344821))

(declare-fun m!1348445 () Bool)

(assert (=> bs!286087 m!1348445))

(assert (=> bs!286087 m!1344215))

(assert (=> d!334977 d!336053))

(declare-fun d!336055 () Bool)

(assert (=> d!336055 (= (dropList!325 (tokens!1654 thiss!10527) 0) (drop!493 (list!4277 (c!195327 (tokens!1654 thiss!10527))) 0))))

(declare-fun bs!286088 () Bool)

(assert (= bs!286088 d!336055))

(assert (=> bs!286088 m!1344673))

(assert (=> bs!286088 m!1344673))

(declare-fun m!1348447 () Bool)

(assert (=> bs!286088 m!1348447))

(assert (=> d!334977 d!336055))

(assert (=> d!334977 d!334959))

(declare-fun d!336057 () Bool)

(assert (=> d!336057 (subseq!271 (drop!493 lt!402168 0) lt!402168)))

(declare-fun lt!403034 () Unit!17788)

(assert (=> d!336057 (= lt!403034 (choose!7573 lt!402168 0))))

(declare-fun e!752487 () Bool)

(assert (=> d!336057 e!752487))

(declare-fun res!530038 () Bool)

(assert (=> d!336057 (=> (not res!530038) (not e!752487))))

(assert (=> d!336057 (= res!530038 (>= 0 0))))

(assert (=> d!336057 (= (lemmaDropSubSeq!33 lt!402168 0) lt!403034)))

(declare-fun b!1173288 () Bool)

(assert (=> b!1173288 (= e!752487 (<= 0 (size!9142 lt!402168)))))

(assert (= (and d!336057 res!530038) b!1173288))

(assert (=> d!336057 m!1344819))

(assert (=> d!336057 m!1344819))

(assert (=> d!336057 m!1344825))

(declare-fun m!1348449 () Bool)

(assert (=> d!336057 m!1348449))

(assert (=> b!1173288 m!1344827))

(assert (=> d!334977 d!336057))

(declare-fun d!336059 () Bool)

(declare-fun res!530040 () Bool)

(declare-fun e!752488 () Bool)

(assert (=> d!336059 (=> res!530040 e!752488)))

(assert (=> d!336059 (= res!530040 (or (not ((_ is Cons!11590) (dropList!325 (tokens!1654 thiss!10527) 0))) (not ((_ is Cons!11590) (t!110758 (dropList!325 (tokens!1654 thiss!10527) 0))))))))

(assert (=> d!336059 (= (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (dropList!325 (tokens!1654 thiss!10527) 0) (rules!9642 thiss!10527)) e!752488)))

(declare-fun b!1173289 () Bool)

(declare-fun e!752489 () Bool)

(assert (=> b!1173289 (= e!752488 e!752489)))

(declare-fun res!530039 () Bool)

(assert (=> b!1173289 (=> (not res!530039) (not e!752489))))

(assert (=> b!1173289 (= res!530039 (separableTokensPredicate!138 Lexer!1714 (h!16991 (dropList!325 (tokens!1654 thiss!10527) 0)) (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 0))) (rules!9642 thiss!10527)))))

(declare-fun lt!403038 () Unit!17788)

(declare-fun Unit!17852 () Unit!17788)

(assert (=> b!1173289 (= lt!403038 Unit!17852)))

(assert (=> b!1173289 (> (size!9136 (charsOf!1076 (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 0))))) 0)))

(declare-fun lt!403040 () Unit!17788)

(declare-fun Unit!17853 () Unit!17788)

(assert (=> b!1173289 (= lt!403040 Unit!17853)))

(assert (=> b!1173289 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 0))))))

(declare-fun lt!403036 () Unit!17788)

(declare-fun Unit!17854 () Unit!17788)

(assert (=> b!1173289 (= lt!403036 Unit!17854)))

(assert (=> b!1173289 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (dropList!325 (tokens!1654 thiss!10527) 0)))))

(declare-fun lt!403041 () Unit!17788)

(declare-fun lt!403039 () Unit!17788)

(assert (=> b!1173289 (= lt!403041 lt!403039)))

(assert (=> b!1173289 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 0))))))

(assert (=> b!1173289 (= lt!403039 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) (dropList!325 (tokens!1654 thiss!10527) 0) (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 0)))))))

(declare-fun lt!403037 () Unit!17788)

(declare-fun lt!403035 () Unit!17788)

(assert (=> b!1173289 (= lt!403037 lt!403035)))

(assert (=> b!1173289 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (dropList!325 (tokens!1654 thiss!10527) 0)))))

(assert (=> b!1173289 (= lt!403035 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) (dropList!325 (tokens!1654 thiss!10527) 0) (h!16991 (dropList!325 (tokens!1654 thiss!10527) 0))))))

(declare-fun b!1173290 () Bool)

(assert (=> b!1173290 (= e!752489 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (Cons!11590 (h!16991 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 0))) (t!110758 (t!110758 (dropList!325 (tokens!1654 thiss!10527) 0)))) (rules!9642 thiss!10527)))))

(assert (= (and d!336059 (not res!530040)) b!1173289))

(assert (= (and b!1173289 res!530039) b!1173290))

(declare-fun m!1348451 () Bool)

(assert (=> b!1173289 m!1348451))

(declare-fun m!1348453 () Bool)

(assert (=> b!1173289 m!1348453))

(declare-fun m!1348455 () Bool)

(assert (=> b!1173289 m!1348455))

(assert (=> b!1173289 m!1344815))

(declare-fun m!1348457 () Bool)

(assert (=> b!1173289 m!1348457))

(declare-fun m!1348459 () Bool)

(assert (=> b!1173289 m!1348459))

(assert (=> b!1173289 m!1348453))

(declare-fun m!1348461 () Bool)

(assert (=> b!1173289 m!1348461))

(assert (=> b!1173289 m!1344815))

(declare-fun m!1348463 () Bool)

(assert (=> b!1173289 m!1348463))

(declare-fun m!1348465 () Bool)

(assert (=> b!1173290 m!1348465))

(assert (=> d!334977 d!336059))

(declare-fun d!336061 () Bool)

(declare-fun res!530042 () Bool)

(declare-fun e!752493 () Bool)

(assert (=> d!336061 (=> res!530042 e!752493)))

(assert (=> d!336061 (= res!530042 ((_ is Nil!11590) (drop!493 lt!402168 0)))))

(assert (=> d!336061 (= (subseq!271 (drop!493 lt!402168 0) lt!402168) e!752493)))

(declare-fun b!1173293 () Bool)

(declare-fun e!752492 () Bool)

(assert (=> b!1173293 (= e!752492 (subseq!271 (t!110758 (drop!493 lt!402168 0)) (t!110758 lt!402168)))))

(declare-fun b!1173291 () Bool)

(declare-fun e!752490 () Bool)

(assert (=> b!1173291 (= e!752493 e!752490)))

(declare-fun res!530041 () Bool)

(assert (=> b!1173291 (=> (not res!530041) (not e!752490))))

(assert (=> b!1173291 (= res!530041 ((_ is Cons!11590) lt!402168))))

(declare-fun b!1173292 () Bool)

(declare-fun e!752491 () Bool)

(assert (=> b!1173292 (= e!752490 e!752491)))

(declare-fun res!530043 () Bool)

(assert (=> b!1173292 (=> res!530043 e!752491)))

(assert (=> b!1173292 (= res!530043 e!752492)))

(declare-fun res!530044 () Bool)

(assert (=> b!1173292 (=> (not res!530044) (not e!752492))))

(assert (=> b!1173292 (= res!530044 (= (h!16991 (drop!493 lt!402168 0)) (h!16991 lt!402168)))))

(declare-fun b!1173294 () Bool)

(assert (=> b!1173294 (= e!752491 (subseq!271 (drop!493 lt!402168 0) (t!110758 lt!402168)))))

(assert (= (and d!336061 (not res!530042)) b!1173291))

(assert (= (and b!1173291 res!530041) b!1173292))

(assert (= (and b!1173292 res!530044) b!1173293))

(assert (= (and b!1173292 (not res!530043)) b!1173294))

(declare-fun m!1348467 () Bool)

(assert (=> b!1173293 m!1348467))

(assert (=> b!1173294 m!1344819))

(declare-fun m!1348469 () Bool)

(assert (=> b!1173294 m!1348469))

(assert (=> d!334977 d!336061))

(declare-fun d!336063 () Bool)

(declare-fun lt!403042 () Bool)

(assert (=> d!336063 (= lt!403042 (select (content!1614 lt!401774) lt!402273))))

(declare-fun e!752494 () Bool)

(assert (=> d!336063 (= lt!403042 e!752494)))

(declare-fun res!530046 () Bool)

(assert (=> d!336063 (=> (not res!530046) (not e!752494))))

(assert (=> d!336063 (= res!530046 ((_ is Cons!11590) lt!401774))))

(assert (=> d!336063 (= (contains!2002 lt!401774 lt!402273) lt!403042)))

(declare-fun b!1173295 () Bool)

(declare-fun e!752495 () Bool)

(assert (=> b!1173295 (= e!752494 e!752495)))

(declare-fun res!530045 () Bool)

(assert (=> b!1173295 (=> res!530045 e!752495)))

(assert (=> b!1173295 (= res!530045 (= (h!16991 lt!401774) lt!402273))))

(declare-fun b!1173296 () Bool)

(assert (=> b!1173296 (= e!752495 (contains!2002 (t!110758 lt!401774) lt!402273))))

(assert (= (and d!336063 res!530046) b!1173295))

(assert (= (and b!1173295 (not res!530045)) b!1173296))

(assert (=> d!336063 m!1345203))

(declare-fun m!1348471 () Bool)

(assert (=> d!336063 m!1348471))

(declare-fun m!1348473 () Bool)

(assert (=> b!1173296 m!1348473))

(assert (=> d!335071 d!336063))

(declare-fun d!336065 () Bool)

(declare-fun res!530047 () Bool)

(declare-fun e!752496 () Bool)

(assert (=> d!336065 (=> res!530047 e!752496)))

(assert (=> d!336065 (= res!530047 ((_ is Nil!11590) lt!401774))))

(assert (=> d!336065 (= (forall!3066 lt!401774 lambda!48223) e!752496)))

(declare-fun b!1173297 () Bool)

(declare-fun e!752497 () Bool)

(assert (=> b!1173297 (= e!752496 e!752497)))

(declare-fun res!530048 () Bool)

(assert (=> b!1173297 (=> (not res!530048) (not e!752497))))

(assert (=> b!1173297 (= res!530048 (dynLambda!5125 lambda!48223 (h!16991 lt!401774)))))

(declare-fun b!1173298 () Bool)

(assert (=> b!1173298 (= e!752497 (forall!3066 (t!110758 lt!401774) lambda!48223))))

(assert (= (and d!336065 (not res!530047)) b!1173297))

(assert (= (and b!1173297 res!530048) b!1173298))

(declare-fun b_lambda!35071 () Bool)

(assert (=> (not b_lambda!35071) (not b!1173297)))

(declare-fun m!1348475 () Bool)

(assert (=> b!1173297 m!1348475))

(declare-fun m!1348477 () Bool)

(assert (=> b!1173298 m!1348477))

(assert (=> d!334973 d!336065))

(assert (=> d!334973 d!334887))

(declare-fun bs!286089 () Bool)

(declare-fun d!336067 () Bool)

(assert (= bs!286089 (and d!336067 d!334979)))

(declare-fun lambda!48259 () Int)

(assert (=> bs!286089 (= lambda!48259 lambda!48224)))

(declare-fun bs!286090 () Bool)

(assert (= bs!286090 (and d!336067 d!335711)))

(assert (=> bs!286090 (= lambda!48259 lambda!48242)))

(declare-fun bs!286091 () Bool)

(assert (= bs!286091 (and d!336067 d!334973)))

(assert (=> bs!286091 (= lambda!48259 lambda!48223)))

(declare-fun bs!286092 () Bool)

(assert (= bs!286092 (and d!336067 d!335719)))

(assert (=> bs!286092 (= lambda!48259 lambda!48243)))

(declare-fun bs!286093 () Bool)

(assert (= bs!286093 (and d!336067 d!336017)))

(assert (=> bs!286093 (= lambda!48259 lambda!48255)))

(declare-fun bs!286094 () Bool)

(assert (= bs!286094 (and d!336067 d!335473)))

(assert (=> bs!286094 (= lambda!48259 lambda!48236)))

(declare-fun bs!286095 () Bool)

(assert (= bs!286095 (and d!336067 d!336047)))

(assert (=> bs!286095 (= lambda!48259 lambda!48257)))

(declare-fun bs!286096 () Bool)

(assert (= bs!286096 (and d!336067 d!336051)))

(assert (=> bs!286096 (= lambda!48259 lambda!48258)))

(declare-fun bs!286097 () Bool)

(assert (= bs!286097 (and d!336067 d!334961)))

(assert (=> bs!286097 (= lambda!48259 lambda!48222)))

(declare-fun bs!286098 () Bool)

(assert (= bs!286098 (and d!336067 d!335489)))

(assert (=> bs!286098 (= lambda!48259 lambda!48237)))

(declare-fun bs!286099 () Bool)

(assert (= bs!286099 (and d!336067 d!335043)))

(assert (=> bs!286099 (= lambda!48259 lambda!48226)))

(declare-fun bs!286100 () Bool)

(assert (= bs!286100 (and d!336067 d!335095)))

(assert (=> bs!286100 (= lambda!48259 lambda!48227)))

(declare-fun bs!286101 () Bool)

(assert (= bs!286101 (and d!336067 d!336039)))

(assert (=> bs!286101 (= lambda!48259 lambda!48256)))

(declare-fun bs!286102 () Bool)

(assert (= bs!286102 (and d!336067 d!335675)))

(assert (=> bs!286102 (= lambda!48259 lambda!48241)))

(declare-fun bs!286103 () Bool)

(assert (= bs!286103 (and d!336067 b!1171109)))

(assert (=> bs!286103 (= lambda!48259 lambda!48203)))

(declare-fun bs!286104 () Bool)

(assert (= bs!286104 (and d!336067 d!334933)))

(assert (=> bs!286104 (= lambda!48259 lambda!48217)))

(declare-fun b!1173303 () Bool)

(declare-fun e!752502 () Bool)

(assert (=> b!1173303 (= e!752502 true)))

(declare-fun b!1173302 () Bool)

(declare-fun e!752501 () Bool)

(assert (=> b!1173302 (= e!752501 e!752502)))

(declare-fun b!1173301 () Bool)

(declare-fun e!752500 () Bool)

(assert (=> b!1173301 (= e!752500 e!752501)))

(assert (=> d!336067 e!752500))

(assert (= b!1173302 b!1173303))

(assert (= b!1173301 b!1173302))

(assert (= (and d!336067 ((_ is Cons!11591) (rules!9642 thiss!10527))) b!1173301))

(assert (=> b!1173303 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48259))))

(assert (=> b!1173303 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527))))) (dynLambda!5123 order!7127 lambda!48259))))

(assert (=> d!336067 true))

(declare-fun lt!403043 () Bool)

(assert (=> d!336067 (= lt!403043 (forall!3066 lt!401918 lambda!48259))))

(declare-fun e!752498 () Bool)

(assert (=> d!336067 (= lt!403043 e!752498)))

(declare-fun res!530049 () Bool)

(assert (=> d!336067 (=> res!530049 e!752498)))

(assert (=> d!336067 (= res!530049 (not ((_ is Cons!11590) lt!401918)))))

(assert (=> d!336067 (not (isEmpty!7032 (rules!9642 thiss!10527)))))

(assert (=> d!336067 (= (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) lt!401918) lt!403043)))

(declare-fun b!1173299 () Bool)

(declare-fun e!752499 () Bool)

(assert (=> b!1173299 (= e!752498 e!752499)))

(declare-fun res!530050 () Bool)

(assert (=> b!1173299 (=> (not res!530050) (not e!752499))))

(assert (=> b!1173299 (= res!530050 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401918)))))

(declare-fun b!1173300 () Bool)

(assert (=> b!1173300 (= e!752499 (rulesProduceEachTokenIndividuallyList!582 Lexer!1714 (rules!9642 thiss!10527) (t!110758 lt!401918)))))

(assert (= (and d!336067 (not res!530049)) b!1173299))

(assert (= (and b!1173299 res!530050) b!1173300))

(declare-fun m!1348479 () Bool)

(assert (=> d!336067 m!1348479))

(assert (=> d!336067 m!1344215))

(declare-fun m!1348481 () Bool)

(assert (=> b!1173299 m!1348481))

(declare-fun m!1348483 () Bool)

(assert (=> b!1173300 m!1348483))

(assert (=> b!1171217 d!336067))

(declare-fun d!336069 () Bool)

(declare-fun res!530051 () Bool)

(declare-fun e!752503 () Bool)

(assert (=> d!336069 (=> res!530051 e!752503)))

(assert (=> d!336069 (= res!530051 ((_ is Nil!11590) (t!110758 lt!401773)))))

(assert (=> d!336069 (= (forall!3066 (t!110758 lt!401773) lambda!48224) e!752503)))

(declare-fun b!1173304 () Bool)

(declare-fun e!752504 () Bool)

(assert (=> b!1173304 (= e!752503 e!752504)))

(declare-fun res!530052 () Bool)

(assert (=> b!1173304 (=> (not res!530052) (not e!752504))))

(assert (=> b!1173304 (= res!530052 (dynLambda!5125 lambda!48224 (h!16991 (t!110758 lt!401773))))))

(declare-fun b!1173305 () Bool)

(assert (=> b!1173305 (= e!752504 (forall!3066 (t!110758 (t!110758 lt!401773)) lambda!48224))))

(assert (= (and d!336069 (not res!530051)) b!1173304))

(assert (= (and b!1173304 res!530052) b!1173305))

(declare-fun b_lambda!35073 () Bool)

(assert (=> (not b_lambda!35073) (not b!1173304)))

(declare-fun m!1348485 () Bool)

(assert (=> b!1173304 m!1348485))

(declare-fun m!1348487 () Bool)

(assert (=> b!1173305 m!1348487))

(assert (=> d!334979 d!336069))

(assert (=> d!334979 d!334887))

(declare-fun d!336071 () Bool)

(declare-fun lt!403044 () Token!3704)

(assert (=> d!336071 (contains!2002 (tail!1694 lt!401774) lt!403044)))

(declare-fun e!752506 () Token!3704)

(assert (=> d!336071 (= lt!403044 e!752506)))

(declare-fun c!195798 () Bool)

(assert (=> d!336071 (= c!195798 (= (- 1 1) 0))))

(declare-fun e!752505 () Bool)

(assert (=> d!336071 e!752505))

(declare-fun res!530053 () Bool)

(assert (=> d!336071 (=> (not res!530053) (not e!752505))))

(assert (=> d!336071 (= res!530053 (<= 0 (- 1 1)))))

(assert (=> d!336071 (= (apply!2518 (tail!1694 lt!401774) (- 1 1)) lt!403044)))

(declare-fun b!1173306 () Bool)

(assert (=> b!1173306 (= e!752505 (< (- 1 1) (size!9142 (tail!1694 lt!401774))))))

(declare-fun b!1173307 () Bool)

(assert (=> b!1173307 (= e!752506 (head!2110 (tail!1694 lt!401774)))))

(declare-fun b!1173308 () Bool)

(assert (=> b!1173308 (= e!752506 (apply!2518 (tail!1694 (tail!1694 lt!401774)) (- (- 1 1) 1)))))

(assert (= (and d!336071 res!530053) b!1173306))

(assert (= (and d!336071 c!195798) b!1173307))

(assert (= (and d!336071 (not c!195798)) b!1173308))

(assert (=> d!336071 m!1345183))

(declare-fun m!1348489 () Bool)

(assert (=> d!336071 m!1348489))

(assert (=> b!1173306 m!1345183))

(assert (=> b!1173306 m!1346295))

(assert (=> b!1173307 m!1345183))

(assert (=> b!1173307 m!1346297))

(assert (=> b!1173308 m!1345183))

(assert (=> b!1173308 m!1346299))

(assert (=> b!1173308 m!1346299))

(declare-fun m!1348491 () Bool)

(assert (=> b!1173308 m!1348491))

(assert (=> b!1171572 d!336071))

(assert (=> b!1171572 d!335439))

(assert (=> b!1171342 d!334887))

(declare-fun d!336073 () Bool)

(declare-fun lt!403045 () Token!3704)

(assert (=> d!336073 (= lt!403045 (apply!2518 (list!4274 (_1!6871 lt!402258)) 0))))

(assert (=> d!336073 (= lt!403045 (apply!2521 (c!195327 (_1!6871 lt!402258)) 0))))

(declare-fun e!752507 () Bool)

(assert (=> d!336073 e!752507))

(declare-fun res!530054 () Bool)

(assert (=> d!336073 (=> (not res!530054) (not e!752507))))

(assert (=> d!336073 (= res!530054 (<= 0 0))))

(assert (=> d!336073 (= (apply!2517 (_1!6871 lt!402258) 0) lt!403045)))

(declare-fun b!1173309 () Bool)

(assert (=> b!1173309 (= e!752507 (< 0 (size!9137 (_1!6871 lt!402258))))))

(assert (= (and d!336073 res!530054) b!1173309))

(assert (=> d!336073 m!1348373))

(assert (=> d!336073 m!1348373))

(declare-fun m!1348493 () Bool)

(assert (=> d!336073 m!1348493))

(declare-fun m!1348495 () Bool)

(assert (=> d!336073 m!1348495))

(assert (=> b!1173309 m!1345123))

(assert (=> b!1171490 d!336073))

(declare-fun d!336075 () Bool)

(declare-fun c!195799 () Bool)

(assert (=> d!336075 (= c!195799 ((_ is Nil!11590) lt!402282))))

(declare-fun e!752508 () (InoxSet Token!3704))

(assert (=> d!336075 (= (content!1614 lt!402282) e!752508)))

(declare-fun b!1173310 () Bool)

(assert (=> b!1173310 (= e!752508 ((as const (Array Token!3704 Bool)) false))))

(declare-fun b!1173311 () Bool)

(assert (=> b!1173311 (= e!752508 ((_ map or) (store ((as const (Array Token!3704 Bool)) false) (h!16991 lt!402282) true) (content!1614 (t!110758 lt!402282))))))

(assert (= (and d!336075 c!195799) b!1173310))

(assert (= (and d!336075 (not c!195799)) b!1173311))

(declare-fun m!1348497 () Bool)

(assert (=> b!1173311 m!1348497))

(declare-fun m!1348499 () Bool)

(assert (=> b!1173311 m!1348499))

(assert (=> d!335085 d!336075))

(assert (=> d!335085 d!335397))

(declare-fun d!336077 () Bool)

(declare-fun res!530056 () Bool)

(declare-fun e!752509 () Bool)

(assert (=> d!336077 (=> res!530056 e!752509)))

(assert (=> d!336077 (= res!530056 (or (not ((_ is Cons!11590) (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))))) (not ((_ is Cons!11590) (t!110758 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))))))))))

(assert (=> d!336077 (= (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))) (rules!9642 thiss!10527)) e!752509)))

(declare-fun b!1173312 () Bool)

(declare-fun e!752510 () Bool)

(assert (=> b!1173312 (= e!752509 e!752510)))

(declare-fun res!530055 () Bool)

(assert (=> b!1173312 (=> (not res!530055) (not e!752510))))

(assert (=> b!1173312 (= res!530055 (separableTokensPredicate!138 Lexer!1714 (h!16991 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774)))) (h!16991 (t!110758 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))))) (rules!9642 thiss!10527)))))

(declare-fun lt!403049 () Unit!17788)

(declare-fun Unit!17855 () Unit!17788)

(assert (=> b!1173312 (= lt!403049 Unit!17855)))

(assert (=> b!1173312 (> (size!9136 (charsOf!1076 (h!16991 (t!110758 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))))))) 0)))

(declare-fun lt!403051 () Unit!17788)

(declare-fun Unit!17856 () Unit!17788)

(assert (=> b!1173312 (= lt!403051 Unit!17856)))

(assert (=> b!1173312 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))))))))

(declare-fun lt!403047 () Unit!17788)

(declare-fun Unit!17857 () Unit!17788)

(assert (=> b!1173312 (= lt!403047 Unit!17857)))

(assert (=> b!1173312 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774)))))))

(declare-fun lt!403052 () Unit!17788)

(declare-fun lt!403050 () Unit!17788)

(assert (=> b!1173312 (= lt!403052 lt!403050)))

(assert (=> b!1173312 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))))))))

(assert (=> b!1173312 (= lt!403050 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))) (h!16991 (t!110758 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774)))))))))

(declare-fun lt!403048 () Unit!17788)

(declare-fun lt!403046 () Unit!17788)

(assert (=> b!1173312 (= lt!403048 lt!403046)))

(assert (=> b!1173312 (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774)))))))

(assert (=> b!1173312 (= lt!403046 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!297 Lexer!1714 (rules!9642 thiss!10527) (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))) (h!16991 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))))))))

(declare-fun b!1173313 () Bool)

(assert (=> b!1173313 (= e!752510 (tokensListTwoByTwoPredicateSeparableList!112 Lexer!1714 (Cons!11590 (h!16991 (t!110758 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774))))) (t!110758 (t!110758 (Cons!11590 (h!16991 (t!110758 lt!401774)) (t!110758 (t!110758 lt!401774)))))) (rules!9642 thiss!10527)))))

(assert (= (and d!336077 (not res!530056)) b!1173312))

(assert (= (and b!1173312 res!530055) b!1173313))

(declare-fun m!1348501 () Bool)

(assert (=> b!1173312 m!1348501))

(declare-fun m!1348503 () Bool)

(assert (=> b!1173312 m!1348503))

(declare-fun m!1348505 () Bool)

(assert (=> b!1173312 m!1348505))

(declare-fun m!1348507 () Bool)

(assert (=> b!1173312 m!1348507))

(declare-fun m!1348509 () Bool)

(assert (=> b!1173312 m!1348509))

(assert (=> b!1173312 m!1348503))

(declare-fun m!1348511 () Bool)

(assert (=> b!1173312 m!1348511))

(declare-fun m!1348513 () Bool)

(assert (=> b!1173312 m!1348513))

(declare-fun m!1348515 () Bool)

(assert (=> b!1173313 m!1348515))

(assert (=> b!1171298 d!336077))

(declare-fun d!336079 () Bool)

(declare-fun res!530057 () Bool)

(declare-fun e!752511 () Bool)

(assert (=> d!336079 (=> res!530057 e!752511)))

(assert (=> d!336079 (= res!530057 ((_ is Nil!11590) lt!401773))))

(assert (=> d!336079 (= (forall!3066 lt!401773 lambda!48227) e!752511)))

(declare-fun b!1173314 () Bool)

(declare-fun e!752512 () Bool)

(assert (=> b!1173314 (= e!752511 e!752512)))

(declare-fun res!530058 () Bool)

(assert (=> b!1173314 (=> (not res!530058) (not e!752512))))

(assert (=> b!1173314 (= res!530058 (dynLambda!5125 lambda!48227 (h!16991 lt!401773)))))

(declare-fun b!1173315 () Bool)

(assert (=> b!1173315 (= e!752512 (forall!3066 (t!110758 lt!401773) lambda!48227))))

(assert (= (and d!336079 (not res!530057)) b!1173314))

(assert (= (and b!1173314 res!530058) b!1173315))

(declare-fun b_lambda!35075 () Bool)

(assert (=> (not b_lambda!35075) (not b!1173314)))

(declare-fun m!1348517 () Bool)

(assert (=> b!1173314 m!1348517))

(declare-fun m!1348519 () Bool)

(assert (=> b!1173315 m!1348519))

(assert (=> d!335095 d!336079))

(assert (=> d!335095 d!334887))

(assert (=> b!1171350 d!334887))

(assert (=> b!1171246 d!335677))

(declare-fun d!336081 () Bool)

(declare-fun lt!403053 () Bool)

(assert (=> d!336081 (= lt!403053 (isEmpty!7040 (list!4278 (_2!6871 lt!402254))))))

(assert (=> d!336081 (= lt!403053 (isEmpty!7041 (c!195326 (_2!6871 lt!402254))))))

(assert (=> d!336081 (= (isEmpty!7034 (_2!6871 lt!402254)) lt!403053)))

(declare-fun bs!286105 () Bool)

(assert (= bs!286105 d!336081))

(declare-fun m!1348521 () Bool)

(assert (=> bs!286105 m!1348521))

(assert (=> bs!286105 m!1348521))

(declare-fun m!1348523 () Bool)

(assert (=> bs!286105 m!1348523))

(declare-fun m!1348525 () Bool)

(assert (=> bs!286105 m!1348525))

(assert (=> b!1171485 d!336081))

(assert (=> b!1171354 d!334985))

(assert (=> d!335049 d!335845))

(assert (=> d!335049 d!334887))

(declare-fun d!336083 () Bool)

(declare-fun lt!403054 () Int)

(assert (=> d!336083 (= lt!403054 (size!9142 (list!4274 (_1!6871 lt!402256))))))

(assert (=> d!336083 (= lt!403054 (size!9143 (c!195327 (_1!6871 lt!402256))))))

(assert (=> d!336083 (= (size!9137 (_1!6871 lt!402256)) lt!403054)))

(declare-fun bs!286106 () Bool)

(assert (= bs!286106 d!336083))

(assert (=> bs!286106 m!1345887))

(assert (=> bs!286106 m!1345887))

(declare-fun m!1348527 () Bool)

(assert (=> bs!286106 m!1348527))

(declare-fun m!1348529 () Bool)

(assert (=> bs!286106 m!1348529))

(assert (=> d!335049 d!336083))

(declare-fun d!336085 () Bool)

(assert (=> d!336085 (= (list!4274 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764))))) (list!4277 (c!195327 (_1!6871 (lex!714 Lexer!1714 (rules!9642 thiss!10527) (print!651 Lexer!1714 (singletonSeq!684 lt!401764)))))))))

(declare-fun bs!286107 () Bool)

(assert (= bs!286107 d!336085))

(declare-fun m!1348531 () Bool)

(assert (=> bs!286107 m!1348531))

(assert (=> d!335049 d!336085))

(declare-fun d!336087 () Bool)

(assert (=> d!336087 (= (list!4274 (singletonSeq!684 lt!401764)) (list!4277 (c!195327 (singletonSeq!684 lt!401764))))))

(declare-fun bs!286108 () Bool)

(assert (= bs!286108 d!336087))

(declare-fun m!1348533 () Bool)

(assert (=> bs!286108 m!1348533))

(assert (=> d!335049 d!336087))

(assert (=> d!335049 d!335849))

(assert (=> d!335049 d!335847))

(declare-fun d!336089 () Bool)

(declare-fun lt!403055 () Token!3704)

(assert (=> d!336089 (contains!2002 (list!4274 (tokens!1654 thiss!10527)) lt!403055)))

(declare-fun e!752514 () Token!3704)

(assert (=> d!336089 (= lt!403055 e!752514)))

(declare-fun c!195800 () Bool)

(assert (=> d!336089 (= c!195800 (= 0 0))))

(declare-fun e!752513 () Bool)

(assert (=> d!336089 e!752513))

(declare-fun res!530059 () Bool)

(assert (=> d!336089 (=> (not res!530059) (not e!752513))))

(assert (=> d!336089 (= res!530059 (<= 0 0))))

(assert (=> d!336089 (= (apply!2518 (list!4274 (tokens!1654 thiss!10527)) 0) lt!403055)))

(declare-fun b!1173316 () Bool)

(assert (=> b!1173316 (= e!752513 (< 0 (size!9142 (list!4274 (tokens!1654 thiss!10527)))))))

(declare-fun b!1173317 () Bool)

(assert (=> b!1173317 (= e!752514 (head!2110 (list!4274 (tokens!1654 thiss!10527))))))

(declare-fun b!1173318 () Bool)

(assert (=> b!1173318 (= e!752514 (apply!2518 (tail!1694 (list!4274 (tokens!1654 thiss!10527))) (- 0 1)))))

(assert (= (and d!336089 res!530059) b!1173316))

(assert (= (and d!336089 c!195800) b!1173317))

(assert (= (and d!336089 (not c!195800)) b!1173318))

(assert (=> d!336089 m!1344251))

(declare-fun m!1348535 () Bool)

(assert (=> d!336089 m!1348535))

(assert (=> b!1173316 m!1344251))

(assert (=> b!1173316 m!1344567))

(assert (=> b!1173317 m!1344251))

(assert (=> b!1173317 m!1348297))

(assert (=> b!1173318 m!1344251))

(assert (=> b!1173318 m!1348299))

(assert (=> b!1173318 m!1348299))

(declare-fun m!1348537 () Bool)

(assert (=> b!1173318 m!1348537))

(assert (=> d!335091 d!336089))

(assert (=> d!335091 d!334969))

(declare-fun b!1173319 () Bool)

(declare-fun e!752515 () Token!3704)

(declare-fun e!752517 () Token!3704)

(assert (=> b!1173319 (= e!752515 e!752517)))

(declare-fun lt!403057 () Bool)

(assert (=> b!1173319 (= lt!403057 (appendIndex!113 (list!4277 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) (list!4277 (right!10467 (c!195327 (tokens!1654 thiss!10527)))) 0))))

(declare-fun c!195801 () Bool)

(assert (=> b!1173319 (= c!195801 (< 0 (size!9143 (left!10137 (c!195327 (tokens!1654 thiss!10527))))))))

(declare-fun bm!82386 () Bool)

(declare-fun c!195802 () Bool)

(assert (=> bm!82386 (= c!195802 c!195801)))

(declare-fun e!752516 () Int)

(declare-fun call!82391 () Token!3704)

(assert (=> bm!82386 (= call!82391 (apply!2521 (ite c!195801 (left!10137 (c!195327 (tokens!1654 thiss!10527))) (right!10467 (c!195327 (tokens!1654 thiss!10527)))) e!752516))))

(declare-fun d!336091 () Bool)

(declare-fun lt!403056 () Token!3704)

(assert (=> d!336091 (= lt!403056 (apply!2518 (list!4277 (c!195327 (tokens!1654 thiss!10527))) 0))))

(assert (=> d!336091 (= lt!403056 e!752515)))

(declare-fun c!195803 () Bool)

(assert (=> d!336091 (= c!195803 ((_ is Leaf!5826) (c!195327 (tokens!1654 thiss!10527))))))

(declare-fun e!752518 () Bool)

(assert (=> d!336091 e!752518))

(declare-fun res!530060 () Bool)

(assert (=> d!336091 (=> (not res!530060) (not e!752518))))

(assert (=> d!336091 (= res!530060 (<= 0 0))))

(assert (=> d!336091 (= (apply!2521 (c!195327 (tokens!1654 thiss!10527)) 0) lt!403056)))

(declare-fun b!1173320 () Bool)

(assert (=> b!1173320 (= e!752515 (apply!2528 (xs!6510 (c!195327 (tokens!1654 thiss!10527))) 0))))

(declare-fun b!1173321 () Bool)

(assert (=> b!1173321 (= e!752517 call!82391)))

(declare-fun b!1173322 () Bool)

(assert (=> b!1173322 (= e!752516 0)))

(declare-fun b!1173323 () Bool)

(assert (=> b!1173323 (= e!752517 call!82391)))

(declare-fun b!1173324 () Bool)

(assert (=> b!1173324 (= e!752518 (< 0 (size!9143 (c!195327 (tokens!1654 thiss!10527)))))))

(declare-fun b!1173325 () Bool)

(assert (=> b!1173325 (= e!752516 (- 0 (size!9143 (left!10137 (c!195327 (tokens!1654 thiss!10527))))))))

(assert (= (and d!336091 res!530060) b!1173324))

(assert (= (and d!336091 c!195803) b!1173320))

(assert (= (and d!336091 (not c!195803)) b!1173319))

(assert (= (and b!1173319 c!195801) b!1173323))

(assert (= (and b!1173319 (not c!195801)) b!1173321))

(assert (= (or b!1173323 b!1173321) bm!82386))

(assert (= (and bm!82386 c!195802) b!1173322))

(assert (= (and bm!82386 (not c!195802)) b!1173325))

(assert (=> b!1173324 m!1344569))

(assert (=> b!1173325 m!1346179))

(declare-fun m!1348539 () Bool)

(assert (=> b!1173320 m!1348539))

(assert (=> b!1173319 m!1346195))

(assert (=> b!1173319 m!1346197))

(assert (=> b!1173319 m!1346195))

(assert (=> b!1173319 m!1346197))

(declare-fun m!1348541 () Bool)

(assert (=> b!1173319 m!1348541))

(assert (=> b!1173319 m!1346179))

(assert (=> d!336091 m!1344673))

(assert (=> d!336091 m!1344673))

(declare-fun m!1348543 () Bool)

(assert (=> d!336091 m!1348543))

(declare-fun m!1348545 () Bool)

(assert (=> bm!82386 m!1348545))

(assert (=> d!335091 d!336091))

(assert (=> b!1171346 d!334985))

(assert (=> b!1171386 d!335471))

(declare-fun d!336093 () Bool)

(assert (=> d!336093 (= (tail!1694 (drop!493 lt!401774 0)) (t!110758 (drop!493 lt!401774 0)))))

(assert (=> d!335077 d!336093))

(assert (=> d!335077 d!335085))

(declare-fun b!1173326 () Bool)

(declare-fun e!752521 () Int)

(declare-fun call!82392 () Int)

(assert (=> b!1173326 (= e!752521 (- call!82392 (+ 0 1)))))

(declare-fun b!1173328 () Bool)

(declare-fun e!752519 () Bool)

(declare-fun lt!403058 () List!11614)

(declare-fun e!752523 () Int)

(assert (=> b!1173328 (= e!752519 (= (size!9142 lt!403058) e!752523))))

(declare-fun c!195804 () Bool)

(assert (=> b!1173328 (= c!195804 (<= (+ 0 1) 0))))

(declare-fun b!1173329 () Bool)

(declare-fun e!752522 () List!11614)

(assert (=> b!1173329 (= e!752522 (drop!493 (t!110758 lt!401774) (- (+ 0 1) 1)))))

(declare-fun b!1173330 () Bool)

(assert (=> b!1173330 (= e!752523 call!82392)))

(declare-fun b!1173331 () Bool)

(assert (=> b!1173331 (= e!752521 0)))

(declare-fun b!1173332 () Bool)

(assert (=> b!1173332 (= e!752523 e!752521)))

(declare-fun c!195805 () Bool)

(assert (=> b!1173332 (= c!195805 (>= (+ 0 1) call!82392))))

(declare-fun bm!82387 () Bool)

(assert (=> bm!82387 (= call!82392 (size!9142 lt!401774))))

(declare-fun b!1173333 () Bool)

(declare-fun e!752520 () List!11614)

(assert (=> b!1173333 (= e!752520 Nil!11590)))

(declare-fun b!1173334 () Bool)

(assert (=> b!1173334 (= e!752522 lt!401774)))

(declare-fun b!1173327 () Bool)

(assert (=> b!1173327 (= e!752520 e!752522)))

(declare-fun c!195807 () Bool)

(assert (=> b!1173327 (= c!195807 (<= (+ 0 1) 0))))

(declare-fun d!336095 () Bool)

(assert (=> d!336095 e!752519))

(declare-fun res!530061 () Bool)

(assert (=> d!336095 (=> (not res!530061) (not e!752519))))

(assert (=> d!336095 (= res!530061 (= ((_ map implies) (content!1614 lt!403058) (content!1614 lt!401774)) ((as const (InoxSet Token!3704)) true)))))

(assert (=> d!336095 (= lt!403058 e!752520)))

(declare-fun c!195806 () Bool)

(assert (=> d!336095 (= c!195806 ((_ is Nil!11590) lt!401774))))

(assert (=> d!336095 (= (drop!493 lt!401774 (+ 0 1)) lt!403058)))

(assert (= (and d!336095 c!195806) b!1173333))

(assert (= (and d!336095 (not c!195806)) b!1173327))

(assert (= (and b!1173327 c!195807) b!1173334))

(assert (= (and b!1173327 (not c!195807)) b!1173329))

(assert (= (and d!336095 res!530061) b!1173328))

(assert (= (and b!1173328 c!195804) b!1173330))

(assert (= (and b!1173328 (not c!195804)) b!1173332))

(assert (= (and b!1173332 c!195805) b!1173331))

(assert (= (and b!1173332 (not c!195805)) b!1173326))

(assert (= (or b!1173330 b!1173332 b!1173326) bm!82387))

(declare-fun m!1348547 () Bool)

(assert (=> b!1173328 m!1348547))

(declare-fun m!1348549 () Bool)

(assert (=> b!1173329 m!1348549))

(assert (=> bm!82387 m!1344463))

(declare-fun m!1348551 () Bool)

(assert (=> d!336095 m!1348551))

(assert (=> d!336095 m!1345203))

(assert (=> d!335077 d!336095))

(declare-fun d!336097 () Bool)

(assert (=> d!336097 (= (tail!1694 (drop!493 lt!401774 0)) (drop!493 lt!401774 (+ 0 1)))))

(assert (=> d!336097 true))

(declare-fun _$28!434 () Unit!17788)

(assert (=> d!336097 (= (choose!7569 lt!401774 0) _$28!434)))

(declare-fun bs!286109 () Bool)

(assert (= bs!286109 d!336097))

(assert (=> bs!286109 m!1344187))

(assert (=> bs!286109 m!1344187))

(assert (=> bs!286109 m!1345191))

(assert (=> bs!286109 m!1345193))

(assert (=> d!335077 d!336097))

(declare-fun b!1173337 () Bool)

(declare-fun e!752526 () Bool)

(assert (=> b!1173337 (= e!752526 true)))

(declare-fun b!1173336 () Bool)

(declare-fun e!752525 () Bool)

(assert (=> b!1173336 (= e!752525 e!752526)))

(declare-fun b!1173335 () Bool)

(declare-fun e!752524 () Bool)

(assert (=> b!1173335 (= e!752524 e!752525)))

(assert (=> b!1171357 e!752524))

(assert (= b!1173336 b!1173337))

(assert (= b!1173335 b!1173336))

(assert (= (and b!1171357 ((_ is Cons!11591) (t!110759 (rules!9642 thiss!10527)))) b!1173335))

(assert (=> b!1173337 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48224))))

(assert (=> b!1173337 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48224))))

(declare-fun e!752528 () Bool)

(declare-fun b!1173338 () Bool)

(declare-fun tp!334798 () Bool)

(declare-fun tp!334796 () Bool)

(assert (=> b!1173338 (= e!752528 (and (inv!15288 (left!10137 (left!10137 (c!195327 (tokens!1654 thiss!10527))))) tp!334798 (inv!15288 (right!10467 (left!10137 (c!195327 (tokens!1654 thiss!10527))))) tp!334796))))

(declare-fun b!1173340 () Bool)

(declare-fun e!752527 () Bool)

(declare-fun tp!334797 () Bool)

(assert (=> b!1173340 (= e!752527 tp!334797)))

(declare-fun b!1173339 () Bool)

(assert (=> b!1173339 (= e!752528 (and (inv!15300 (xs!6510 (left!10137 (c!195327 (tokens!1654 thiss!10527))))) e!752527))))

(assert (=> b!1171667 (= tp!334736 (and (inv!15288 (left!10137 (c!195327 (tokens!1654 thiss!10527)))) e!752528))))

(assert (= (and b!1171667 ((_ is Node!3805) (left!10137 (c!195327 (tokens!1654 thiss!10527))))) b!1173338))

(assert (= b!1173339 b!1173340))

(assert (= (and b!1171667 ((_ is Leaf!5826) (left!10137 (c!195327 (tokens!1654 thiss!10527))))) b!1173339))

(declare-fun m!1348553 () Bool)

(assert (=> b!1173338 m!1348553))

(declare-fun m!1348555 () Bool)

(assert (=> b!1173338 m!1348555))

(declare-fun m!1348557 () Bool)

(assert (=> b!1173339 m!1348557))

(assert (=> b!1171667 m!1345253))

(declare-fun tp!334801 () Bool)

(declare-fun b!1173341 () Bool)

(declare-fun e!752530 () Bool)

(declare-fun tp!334799 () Bool)

(assert (=> b!1173341 (= e!752530 (and (inv!15288 (left!10137 (right!10467 (c!195327 (tokens!1654 thiss!10527))))) tp!334801 (inv!15288 (right!10467 (right!10467 (c!195327 (tokens!1654 thiss!10527))))) tp!334799))))

(declare-fun b!1173343 () Bool)

(declare-fun e!752529 () Bool)

(declare-fun tp!334800 () Bool)

(assert (=> b!1173343 (= e!752529 tp!334800)))

(declare-fun b!1173342 () Bool)

(assert (=> b!1173342 (= e!752530 (and (inv!15300 (xs!6510 (right!10467 (c!195327 (tokens!1654 thiss!10527))))) e!752529))))

(assert (=> b!1171667 (= tp!334734 (and (inv!15288 (right!10467 (c!195327 (tokens!1654 thiss!10527)))) e!752530))))

(assert (= (and b!1171667 ((_ is Node!3805) (right!10467 (c!195327 (tokens!1654 thiss!10527))))) b!1173341))

(assert (= b!1173342 b!1173343))

(assert (= (and b!1171667 ((_ is Leaf!5826) (right!10467 (c!195327 (tokens!1654 thiss!10527))))) b!1173342))

(declare-fun m!1348559 () Bool)

(assert (=> b!1173341 m!1348559))

(declare-fun m!1348561 () Bool)

(assert (=> b!1173341 m!1348561))

(declare-fun m!1348563 () Bool)

(assert (=> b!1173342 m!1348563))

(assert (=> b!1171667 m!1345255))

(declare-fun b!1173357 () Bool)

(declare-fun b_free!27869 () Bool)

(declare-fun b_next!28573 () Bool)

(assert (=> b!1173357 (= b_free!27869 (not b_next!28573))))

(declare-fun tp!334815 () Bool)

(declare-fun b_and!80789 () Bool)

(assert (=> b!1173357 (= tp!334815 b_and!80789)))

(declare-fun b_free!27871 () Bool)

(declare-fun b_next!28575 () Bool)

(assert (=> b!1173357 (= b_free!27871 (not b_next!28575))))

(declare-fun t!110847 () Bool)

(declare-fun tb!65989 () Bool)

(assert (=> (and b!1173357 (= (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))) t!110847) tb!65989))

(declare-fun result!79034 () Bool)

(assert (= result!79034 result!79028))

(assert (=> d!335879 t!110847))

(declare-fun t!110849 () Bool)

(declare-fun tb!65991 () Bool)

(assert (=> (and b!1173357 (= (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))) t!110849) tb!65991))

(declare-fun result!79036 () Bool)

(assert (= result!79036 result!79030))

(assert (=> d!335959 t!110849))

(declare-fun tb!65993 () Bool)

(declare-fun t!110851 () Bool)

(assert (=> (and b!1173357 (= (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 lt!401775 (+ 0 1)))))) t!110851) tb!65993))

(declare-fun result!79038 () Bool)

(assert (= result!79038 result!78988))

(assert (=> d!335347 t!110851))

(declare-fun tb!65995 () Bool)

(declare-fun t!110853 () Bool)

(assert (=> (and b!1173357 (= (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (t!110758 lt!401774)))))) t!110853) tb!65995))

(declare-fun result!79040 () Bool)

(assert (= result!79040 result!78990))

(assert (=> d!335431 t!110853))

(declare-fun t!110855 () Bool)

(declare-fun tb!65997 () Bool)

(assert (=> (and b!1173357 (= (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) (toChars!2981 (transformation!2021 (rule!3442 lt!401764)))) t!110855) tb!65997))

(declare-fun result!79042 () Bool)

(assert (= result!79042 result!79026))

(assert (=> d!335855 t!110855))

(declare-fun tb!65999 () Bool)

(declare-fun t!110857 () Bool)

(assert (=> (and b!1173357 (= (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) (toChars!2981 (transformation!2021 (rule!3442 lt!401769)))) t!110857) tb!65999))

(declare-fun result!79044 () Bool)

(assert (= result!79044 result!78976))

(assert (=> d!334983 t!110857))

(declare-fun tp!334812 () Bool)

(declare-fun b_and!80791 () Bool)

(assert (=> b!1173357 (= tp!334812 (and (=> t!110847 result!79034) (=> t!110853 result!79040) (=> t!110849 result!79036) (=> t!110851 result!79038) (=> t!110857 result!79044) (=> t!110855 result!79042) b_and!80791))))

(declare-fun tp!334814 () Bool)

(declare-fun e!752545 () Bool)

(declare-fun e!752546 () Bool)

(declare-fun b!1173355 () Bool)

(declare-fun inv!21 (TokenValue!2087) Bool)

(assert (=> b!1173355 (= e!752545 (and (inv!21 (value!65595 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527))))))) e!752546 tp!334814))))

(declare-fun b!1173356 () Bool)

(declare-fun e!752543 () Bool)

(declare-fun tp!334813 () Bool)

(assert (=> b!1173356 (= e!752546 (and tp!334813 (inv!15282 (tag!2283 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) (inv!15299 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) e!752543))))

(assert (=> b!1173357 (= e!752543 (and tp!334815 tp!334812))))

(declare-fun b!1173354 () Bool)

(declare-fun e!752548 () Bool)

(declare-fun tp!334816 () Bool)

(declare-fun inv!15307 (Token!3704) Bool)

(assert (=> b!1173354 (= e!752548 (and (inv!15307 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))) e!752545 tp!334816))))

(assert (=> b!1171669 (= tp!334735 e!752548)))

(assert (= b!1173356 b!1173357))

(assert (= b!1173355 b!1173356))

(assert (= b!1173354 b!1173355))

(assert (= (and b!1171669 ((_ is Cons!11590) (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))) b!1173354))

(declare-fun m!1348565 () Bool)

(assert (=> b!1173355 m!1348565))

(declare-fun m!1348567 () Bool)

(assert (=> b!1173356 m!1348567))

(declare-fun m!1348569 () Bool)

(assert (=> b!1173356 m!1348569))

(declare-fun m!1348571 () Bool)

(assert (=> b!1173354 m!1348571))

(declare-fun b!1173360 () Bool)

(declare-fun e!752551 () Bool)

(assert (=> b!1173360 (= e!752551 true)))

(declare-fun b!1173359 () Bool)

(declare-fun e!752550 () Bool)

(assert (=> b!1173359 (= e!752550 e!752551)))

(declare-fun b!1173358 () Bool)

(declare-fun e!752549 () Bool)

(assert (=> b!1173358 (= e!752549 e!752550)))

(assert (=> b!1171626 e!752549))

(assert (= b!1173359 b!1173360))

(assert (= b!1173358 b!1173359))

(assert (= (and b!1171626 ((_ is Cons!11591) (t!110759 (rules!9642 thiss!10527)))) b!1173358))

(assert (=> b!1173360 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48227))))

(assert (=> b!1173360 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48227))))

(declare-fun b!1173363 () Bool)

(declare-fun e!752554 () Bool)

(assert (=> b!1173363 (= e!752554 true)))

(declare-fun b!1173362 () Bool)

(declare-fun e!752553 () Bool)

(assert (=> b!1173362 (= e!752553 e!752554)))

(declare-fun b!1173361 () Bool)

(declare-fun e!752552 () Bool)

(assert (=> b!1173361 (= e!752552 e!752553)))

(assert (=> b!1171481 e!752552))

(assert (= b!1173362 b!1173363))

(assert (= b!1173361 b!1173362))

(assert (= (and b!1171481 ((_ is Cons!11591) (t!110759 (rules!9642 thiss!10527)))) b!1173361))

(assert (=> b!1173363 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48226))))

(assert (=> b!1173363 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48226))))

(declare-fun e!752559 () Bool)

(declare-fun tp!334825 () Bool)

(declare-fun b!1173372 () Bool)

(declare-fun tp!334824 () Bool)

(assert (=> b!1173372 (= e!752559 (and (inv!15297 (left!10136 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769))))) tp!334824 (inv!15297 (right!10466 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769))))) tp!334825))))

(declare-fun b!1173374 () Bool)

(declare-fun e!752560 () Bool)

(declare-fun tp!334823 () Bool)

(assert (=> b!1173374 (= e!752560 tp!334823)))

(declare-fun b!1173373 () Bool)

(declare-fun inv!15308 (IArray!7613) Bool)

(assert (=> b!1173373 (= e!752559 (and (inv!15308 (xs!6509 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769))))) e!752560))))

(assert (=> b!1171658 (= tp!334727 (and (inv!15297 (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769)))) e!752559))))

(assert (= (and b!1171658 ((_ is Node!3804) (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769))))) b!1173372))

(assert (= b!1173373 b!1173374))

(assert (= (and b!1171658 ((_ is Leaf!5825) (c!195326 (dynLambda!5126 (toChars!2981 (transformation!2021 (rule!3442 lt!401769))) (value!65595 lt!401769))))) b!1173373))

(declare-fun m!1348573 () Bool)

(assert (=> b!1173372 m!1348573))

(declare-fun m!1348575 () Bool)

(assert (=> b!1173372 m!1348575))

(declare-fun m!1348577 () Bool)

(assert (=> b!1173373 m!1348577))

(assert (=> b!1171658 m!1345245))

(declare-fun b!1173375 () Bool)

(declare-fun e!752561 () Bool)

(assert (=> b!1173375 (= e!752561 true)))

(declare-fun b!1173377 () Bool)

(declare-fun e!752562 () Bool)

(assert (=> b!1173377 (= e!752562 true)))

(declare-fun b!1173376 () Bool)

(assert (=> b!1173376 (= e!752561 e!752562)))

(assert (=> b!1171637 e!752561))

(assert (= (and b!1171637 ((_ is Node!3805) (left!10137 (c!195327 (tokens!1654 thiss!10527))))) b!1173375))

(assert (= b!1173376 b!1173377))

(assert (= (and b!1171637 ((_ is Leaf!5826) (left!10137 (c!195327 (tokens!1654 thiss!10527))))) b!1173376))

(declare-fun b!1173378 () Bool)

(declare-fun e!752563 () Bool)

(assert (=> b!1173378 (= e!752563 true)))

(declare-fun b!1173380 () Bool)

(declare-fun e!752564 () Bool)

(assert (=> b!1173380 (= e!752564 true)))

(declare-fun b!1173379 () Bool)

(assert (=> b!1173379 (= e!752563 e!752564)))

(assert (=> b!1171637 e!752563))

(assert (= (and b!1171637 ((_ is Node!3805) (right!10467 (c!195327 (tokens!1654 thiss!10527))))) b!1173378))

(assert (= b!1173379 b!1173380))

(assert (= (and b!1171637 ((_ is Leaf!5826) (right!10467 (c!195327 (tokens!1654 thiss!10527))))) b!1173379))

(declare-fun b!1173383 () Bool)

(declare-fun b_free!27873 () Bool)

(declare-fun b_next!28577 () Bool)

(assert (=> b!1173383 (= b_free!27873 (not b_next!28577))))

(declare-fun tp!334826 () Bool)

(declare-fun b_and!80793 () Bool)

(assert (=> b!1173383 (= tp!334826 b_and!80793)))

(declare-fun b_free!27875 () Bool)

(declare-fun b_next!28579 () Bool)

(assert (=> b!1173383 (= b_free!27875 (not b_next!28579))))

(declare-fun t!110859 () Bool)

(declare-fun tb!66001 () Bool)

(assert (=> (and b!1173383 (= (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527))))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 1 1)))))) t!110859) tb!66001))

(declare-fun result!79048 () Bool)

(assert (= result!79048 result!79028))

(assert (=> d!335879 t!110859))

(declare-fun t!110861 () Bool)

(declare-fun tb!66003 () Bool)

(assert (=> (and b!1173383 (= (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527))))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 (tokens!1654 thiss!10527) (+ 0 1)))))) t!110861) tb!66003))

(declare-fun result!79050 () Bool)

(assert (= result!79050 result!79030))

(assert (=> d!335959 t!110861))

(declare-fun tb!66005 () Bool)

(declare-fun t!110863 () Bool)

(assert (=> (and b!1173383 (= (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527))))) (toChars!2981 (transformation!2021 (rule!3442 (apply!2517 lt!401775 (+ 0 1)))))) t!110863) tb!66005))

(declare-fun result!79052 () Bool)

(assert (= result!79052 result!78988))

(assert (=> d!335347 t!110863))

(declare-fun tb!66007 () Bool)

(declare-fun t!110865 () Bool)

(assert (=> (and b!1173383 (= (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527))))) (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (t!110758 lt!401774)))))) t!110865) tb!66007))

(declare-fun result!79054 () Bool)

(assert (= result!79054 result!78990))

(assert (=> d!335431 t!110865))

(declare-fun tb!66009 () Bool)

(declare-fun t!110867 () Bool)

(assert (=> (and b!1173383 (= (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527))))) (toChars!2981 (transformation!2021 (rule!3442 lt!401764)))) t!110867) tb!66009))

(declare-fun result!79056 () Bool)

(assert (= result!79056 result!79026))

(assert (=> d!335855 t!110867))

(declare-fun tb!66011 () Bool)

(declare-fun t!110869 () Bool)

(assert (=> (and b!1173383 (= (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527))))) (toChars!2981 (transformation!2021 (rule!3442 lt!401769)))) t!110869) tb!66011))

(declare-fun result!79058 () Bool)

(assert (= result!79058 result!78976))

(assert (=> d!334983 t!110869))

(declare-fun tp!334827 () Bool)

(declare-fun b_and!80795 () Bool)

(assert (=> b!1173383 (= tp!334827 (and (=> t!110859 result!79048) (=> t!110867 result!79056) (=> t!110869 result!79058) (=> t!110861 result!79050) (=> t!110865 result!79054) (=> t!110863 result!79052) b_and!80795))))

(declare-fun e!752565 () Bool)

(assert (=> b!1173383 (= e!752565 (and tp!334826 tp!334827))))

(declare-fun e!752568 () Bool)

(declare-fun tp!334829 () Bool)

(declare-fun b!1173382 () Bool)

(assert (=> b!1173382 (= e!752568 (and tp!334829 (inv!15282 (tag!2283 (h!16992 (t!110759 (rules!9642 thiss!10527))))) (inv!15299 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527))))) e!752565))))

(declare-fun b!1173381 () Bool)

(declare-fun e!752566 () Bool)

(declare-fun tp!334828 () Bool)

(assert (=> b!1173381 (= e!752566 (and e!752568 tp!334828))))

(assert (=> b!1171651 (= tp!334723 e!752566)))

(assert (= b!1173382 b!1173383))

(assert (= b!1173381 b!1173382))

(assert (= (and b!1171651 ((_ is Cons!11591) (t!110759 (rules!9642 thiss!10527)))) b!1173381))

(declare-fun m!1348579 () Bool)

(assert (=> b!1173382 m!1348579))

(declare-fun m!1348581 () Bool)

(assert (=> b!1173382 m!1348581))

(declare-fun e!752577 () Bool)

(assert (=> b!1171639 e!752577))

(declare-fun b!1173395 () Bool)

(declare-fun e!752578 () Bool)

(declare-fun e!752579 () Bool)

(assert (=> b!1173395 (= e!752578 e!752579)))

(declare-fun b!1173396 () Bool)

(declare-fun e!752580 () Bool)

(assert (=> b!1173396 (= e!752579 e!752580)))

(declare-fun b!1173394 () Bool)

(assert (=> b!1173394 (= e!752577 e!752578)))

(declare-fun b!1173397 () Bool)

(assert (=> b!1173397 (= e!752580 true)))

(assert (= b!1173396 b!1173397))

(assert (= b!1173395 b!1173396))

(assert (= b!1173394 b!1173395))

(assert (= (and b!1171639 ((_ is Cons!11590) (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))) b!1173394))

(assert (=> b!1173397 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527))))))))) (dynLambda!5123 order!7127 lambda!48203))))

(assert (=> b!1173397 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527))))))))) (dynLambda!5123 order!7127 lambda!48203))))

(declare-fun b!1173411 () Bool)

(declare-fun e!752583 () Bool)

(declare-fun tp!334840 () Bool)

(declare-fun tp!334844 () Bool)

(assert (=> b!1173411 (= e!752583 (and tp!334840 tp!334844))))

(declare-fun b!1173410 () Bool)

(declare-fun tp!334843 () Bool)

(assert (=> b!1173410 (= e!752583 tp!334843)))

(declare-fun b!1173408 () Bool)

(declare-fun tp_is_empty!5731 () Bool)

(assert (=> b!1173408 (= e!752583 tp_is_empty!5731)))

(assert (=> b!1171652 (= tp!334724 e!752583)))

(declare-fun b!1173409 () Bool)

(declare-fun tp!334842 () Bool)

(declare-fun tp!334841 () Bool)

(assert (=> b!1173409 (= e!752583 (and tp!334842 tp!334841))))

(assert (= (and b!1171652 ((_ is ElementMatch!3291) (regex!2021 (h!16992 (rules!9642 thiss!10527))))) b!1173408))

(assert (= (and b!1171652 ((_ is Concat!5379) (regex!2021 (h!16992 (rules!9642 thiss!10527))))) b!1173409))

(assert (= (and b!1171652 ((_ is Star!3291) (regex!2021 (h!16992 (rules!9642 thiss!10527))))) b!1173410))

(assert (= (and b!1171652 ((_ is Union!3291) (regex!2021 (h!16992 (rules!9642 thiss!10527))))) b!1173411))

(declare-fun b!1173414 () Bool)

(declare-fun e!752586 () Bool)

(assert (=> b!1173414 (= e!752586 true)))

(declare-fun b!1173413 () Bool)

(declare-fun e!752585 () Bool)

(assert (=> b!1173413 (= e!752585 e!752586)))

(declare-fun b!1173412 () Bool)

(declare-fun e!752584 () Bool)

(assert (=> b!1173412 (= e!752584 e!752585)))

(assert (=> b!1171336 e!752584))

(assert (= b!1173413 b!1173414))

(assert (= b!1173412 b!1173413))

(assert (= (and b!1171336 ((_ is Cons!11591) (t!110759 (rules!9642 thiss!10527)))) b!1173412))

(assert (=> b!1173414 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48223))))

(assert (=> b!1173414 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48223))))

(declare-fun b!1173417 () Bool)

(declare-fun e!752589 () Bool)

(assert (=> b!1173417 (= e!752589 true)))

(declare-fun b!1173416 () Bool)

(declare-fun e!752588 () Bool)

(assert (=> b!1173416 (= e!752588 e!752589)))

(declare-fun b!1173415 () Bool)

(declare-fun e!752587 () Bool)

(assert (=> b!1173415 (= e!752587 e!752588)))

(assert (=> b!1171234 e!752587))

(assert (= b!1173416 b!1173417))

(assert (= b!1173415 b!1173416))

(assert (= (and b!1171234 ((_ is Cons!11591) (t!110759 (rules!9642 thiss!10527)))) b!1173415))

(assert (=> b!1173417 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48217))))

(assert (=> b!1173417 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48217))))

(declare-fun b!1173420 () Bool)

(declare-fun e!752592 () Bool)

(assert (=> b!1173420 (= e!752592 true)))

(declare-fun b!1173419 () Bool)

(declare-fun e!752591 () Bool)

(assert (=> b!1173419 (= e!752591 e!752592)))

(declare-fun b!1173418 () Bool)

(declare-fun e!752590 () Bool)

(assert (=> b!1173418 (= e!752590 e!752591)))

(assert (=> b!1171640 e!752590))

(assert (= b!1173419 b!1173420))

(assert (= b!1173418 b!1173419))

(assert (= (and b!1171640 ((_ is Cons!11591) (t!110759 (rules!9642 thiss!10527)))) b!1173418))

(assert (=> b!1173420 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48203))))

(assert (=> b!1173420 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48203))))

(declare-fun b!1173423 () Bool)

(declare-fun e!752595 () Bool)

(assert (=> b!1173423 (= e!752595 true)))

(declare-fun b!1173422 () Bool)

(declare-fun e!752594 () Bool)

(assert (=> b!1173422 (= e!752594 e!752595)))

(declare-fun b!1173421 () Bool)

(declare-fun e!752593 () Bool)

(assert (=> b!1173421 (= e!752593 e!752594)))

(assert (=> b!1171331 e!752593))

(assert (= b!1173422 b!1173423))

(assert (= b!1173421 b!1173422))

(assert (= (and b!1171331 ((_ is Cons!11591) (t!110759 (rules!9642 thiss!10527)))) b!1173421))

(assert (=> b!1173423 (< (dynLambda!5122 order!7125 (toValue!3122 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48222))))

(assert (=> b!1173423 (< (dynLambda!5124 order!7129 (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527)))))) (dynLambda!5123 order!7127 lambda!48222))))

(declare-fun b_lambda!35077 () Bool)

(assert (= b_lambda!35075 (or d!335095 b_lambda!35077)))

(declare-fun bs!286110 () Bool)

(declare-fun d!336099 () Bool)

(assert (= bs!286110 (and d!336099 d!335095)))

(assert (=> bs!286110 (= (dynLambda!5125 lambda!48227 (h!16991 lt!401773)) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401773)))))

(assert (=> bs!286110 m!1344263))

(assert (=> b!1173314 d!336099))

(declare-fun b_lambda!35079 () Bool)

(assert (= b_lambda!35073 (or d!334979 b_lambda!35079)))

(declare-fun bs!286111 () Bool)

(declare-fun d!336101 () Bool)

(assert (= bs!286111 (and d!336101 d!334979)))

(assert (=> bs!286111 (= (dynLambda!5125 lambda!48224 (h!16991 (t!110758 lt!401773))) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401773))))))

(assert (=> bs!286111 m!1344831))

(assert (=> b!1173304 d!336101))

(declare-fun b_lambda!35081 () Bool)

(assert (= b_lambda!35017 (or d!334961 b_lambda!35081)))

(declare-fun bs!286112 () Bool)

(declare-fun d!336103 () Bool)

(assert (= bs!286112 (and d!336103 d!334961)))

(assert (=> bs!286112 (= (dynLambda!5125 lambda!48222 (h!16991 (list!4274 (tokens!1654 thiss!10527)))) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (list!4274 (tokens!1654 thiss!10527)))))))

(assert (=> bs!286112 m!1347115))

(assert (=> b!1172146 d!336103))

(declare-fun b_lambda!35083 () Bool)

(assert (= b_lambda!35035 (or d!334933 b_lambda!35083)))

(declare-fun bs!286113 () Bool)

(declare-fun d!336105 () Bool)

(assert (= bs!286113 (and d!336105 d!334933)))

(assert (=> bs!286113 (= (dynLambda!5125 lambda!48217 (h!16991 (t!110758 lt!401774))) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401774))))))

(assert (=> bs!286113 m!1344437))

(assert (=> b!1172583 d!336105))

(declare-fun b_lambda!35085 () Bool)

(assert (= b_lambda!35015 (or b!1171109 b_lambda!35085)))

(declare-fun bs!286114 () Bool)

(declare-fun d!336107 () Bool)

(assert (= bs!286114 (and d!336107 b!1171109)))

(assert (=> bs!286114 (= (dynLambda!5125 lambda!48203 (h!16991 (list!4274 (tokens!1654 thiss!10527)))) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (list!4274 (tokens!1654 thiss!10527)))))))

(assert (=> bs!286114 m!1347115))

(assert (=> b!1172140 d!336107))

(declare-fun b_lambda!35087 () Bool)

(assert (= b_lambda!35021 (or b!1171109 b_lambda!35087)))

(declare-fun bs!286115 () Bool)

(declare-fun d!336109 () Bool)

(assert (= bs!286115 (and d!336109 b!1171109)))

(assert (=> bs!286115 (= (dynLambda!5125 lambda!48203 (h!16991 lt!401774)) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401774)))))

(assert (=> bs!286115 m!1344241))

(assert (=> b!1172206 d!336109))

(declare-fun b_lambda!35089 () Bool)

(assert (= b_lambda!34989 (or (and b!1171653 b_free!27859 (= (toChars!2981 (transformation!2021 (h!16992 (rules!9642 thiss!10527)))) (toChars!2981 (transformation!2021 (rule!3442 lt!401769))))) (and b!1173357 b_free!27871 (= (toChars!2981 (transformation!2021 (rule!3442 (h!16991 (innerList!3865 (xs!6510 (c!195327 (tokens!1654 thiss!10527)))))))) (toChars!2981 (transformation!2021 (rule!3442 lt!401769))))) (and b!1173383 b_free!27875 (= (toChars!2981 (transformation!2021 (h!16992 (t!110759 (rules!9642 thiss!10527))))) (toChars!2981 (transformation!2021 (rule!3442 lt!401769))))) b_lambda!35089)))

(declare-fun b_lambda!35091 () Bool)

(assert (= b_lambda!35009 (or b!1171109 b_lambda!35091)))

(declare-fun bs!286116 () Bool)

(declare-fun d!336111 () Bool)

(assert (= bs!286116 (and d!336111 b!1171109)))

(assert (=> bs!286116 (= (dynLambda!5125 lambda!48203 (h!16991 (list!4274 lt!401775))) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (list!4274 lt!401775))))))

(assert (=> bs!286116 m!1348355))

(assert (=> b!1171980 d!336111))

(declare-fun b_lambda!35093 () Bool)

(assert (= b_lambda!35071 (or d!334973 b_lambda!35093)))

(declare-fun bs!286117 () Bool)

(declare-fun d!336113 () Bool)

(assert (= bs!286117 (and d!336113 d!334973)))

(assert (=> bs!286117 (= (dynLambda!5125 lambda!48223 (h!16991 lt!401774)) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 lt!401774)))))

(assert (=> bs!286117 m!1344241))

(assert (=> b!1173297 d!336113))

(declare-fun b_lambda!35095 () Bool)

(assert (= b_lambda!35069 (or d!335043 b_lambda!35095)))

(declare-fun bs!286118 () Bool)

(declare-fun d!336115 () Bool)

(assert (= bs!286118 (and d!336115 d!335043)))

(assert (=> bs!286118 (= (dynLambda!5125 lambda!48226 (h!16991 (list!4274 lt!401775))) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (list!4274 lt!401775))))))

(assert (=> bs!286118 m!1348355))

(assert (=> b!1173219 d!336115))

(declare-fun b_lambda!35097 () Bool)

(assert (= b_lambda!35013 (or b!1171109 b_lambda!35097)))

(declare-fun bs!286119 () Bool)

(declare-fun d!336117 () Bool)

(assert (= bs!286119 (and d!336117 b!1171109)))

(assert (=> bs!286119 (= (dynLambda!5125 lambda!48203 (h!16991 (t!110758 lt!401773))) (rulesProduceIndividualToken!751 Lexer!1714 (rules!9642 thiss!10527) (h!16991 (t!110758 lt!401773))))))

(assert (=> bs!286119 m!1344831))

(assert (=> b!1172097 d!336117))

(check-sat (not b!1172004) (not b!1172011) (not b!1172918) (not d!335659) (not d!335933) (not bm!82379) (not b!1173008) (not b!1172034) (not b!1173276) (not b!1173244) (not b!1173165) (not b!1172178) (not b!1172024) (not d!335313) (not d!335843) (not b!1173113) (not b!1173077) (not bs!286110) (not bm!82362) (not b!1172215) (not d!335937) (not b!1173308) (not b!1173285) (not bm!82303) (not b!1173034) (not d!335943) (not b!1172922) (not b!1173100) (not bm!82335) (not b!1173123) (not b!1172972) (not b!1172096) (not d!335387) (not d!335719) (not b!1172033) (not b!1172095) (not b!1173024) (not b!1172055) (not b!1173245) (not b!1172098) (not d!335857) (not b!1173151) (not b!1172633) (not d!335323) (not b!1173340) (not b_lambda!35079) (not b!1172990) (not d!335955) (not d!335177) (not d!335865) (not b!1172694) (not d!335337) (not b_next!28579) (not d!336027) (not b!1173035) (not bs!286116) (not b!1172912) (not b!1173147) (not b!1173284) (not d!335931) (not b!1172927) (not b!1173081) (not b!1173162) (not d!335875) (not d!335919) (not d!335921) (not d!336015) (not b!1172073) (not d!335993) (not b!1172001) (not b!1172002) (not d!335423) (not b!1173157) (not d!335981) (not b!1171978) (not b!1173146) (not d!335315) (not d!335295) (not d!335359) (not d!335859) (not b!1172634) (not b!1172673) (not b!1173318) (not b_lambda!35067) (not b!1172643) (not tb!65985) (not d!335311) (not b!1172000) (not d!336025) (not bm!82301) (not b!1172991) (not d!335877) (not b!1172074) (not b!1172245) (not d!335471) b_and!80795 (not b!1172921) (not b!1173119) (not b!1173192) (not d!335873) (not b!1172916) (not b_lambda!35093) (not d!335947) (not d!335181) (not d!336017) (not b!1173132) (not b!1173342) (not b!1173093) (not tb!65987) (not b!1173298) (not d!335907) (not b!1173041) (not b!1173410) (not b!1172211) (not b!1173261) (not b_lambda!35087) (not b!1173250) (not b!1173091) (not b!1172141) (not b!1173193) (not d!336049) (not b!1172280) (not bm!82385) (not d!335727) (not b!1173290) (not b!1173135) (not d!335983) (not d!335377) (not bm!82374) (not b!1173313) (not b!1172247) (not b!1172180) (not b!1172636) (not d!335847) (not d!335375) (not d!335883) (not b!1172210) (not b!1173203) (not b!1172928) (not d!335355) (not b!1171996) (not b!1172023) (not bm!82373) (not b!1173311) (not d!335321) (not d!336011) (not b!1173341) (not d!335979) (not b!1173409) (not d!335441) (not d!335961) (not b!1173259) (not d!335413) (not d!335973) (not d!336083) (not b!1172007) (not b!1172652) (not b!1172056) (not d!335959) (not b!1173378) (not b!1173055) (not b!1173198) (not b!1172179) (not b!1172674) (not b!1173235) (not b_lambda!35083) (not b!1172536) (not b!1173009) (not b!1173320) (not b!1172661) (not b!1173045) (not bs!286111) (not b!1173168) (not b!1173224) (not b!1172099) (not bm!82323) (not d!335351) (not d!335927) (not b!1173380) (not b!1173138) (not b!1172078) (not d!336001) (not b!1172581) (not b!1173268) (not b_lambda!34993) (not d!335863) (not b_lambda!35095) (not b!1172213) (not b!1173108) (not b!1172209) (not b!1173316) (not b!1173208) (not b!1172005) (not b!1173070) (not b!1173305) (not d!335305) (not b!1173069) (not d!335341) (not bm!82383) (not d!335861) (not b!1173139) (not b!1171976) (not b!1173270) (not d!336071) (not b!1172208) (not b_next!28573) (not b!1172582) (not b!1173411) (not b!1172042) (not b!1173294) (not b!1172587) (not b!1172087) (not b!1173094) (not b!1173373) (not d!335361) (not d!335653) (not d!335711) (not b!1172493) (not b!1172057) (not b!1172067) (not b!1173309) (not b!1172102) (not d!336091) (not b!1173019) (not b!1172104) (not b!1173046) (not b!1173220) (not d!335499) (not d!335895) (not b!1172248) (not b!1173078) (not b!1173227) (not b!1173015) (not b!1172045) (not b!1173266) (not d!335409) (not b!1173161) (not bm!82375) (not b!1173289) (not b!1173150) (not b!1173234) (not d!335941) (not d!335957) (not d!335841) (not d!335473) (not b!1172906) (not d!336009) (not bm!82371) (not d!335385) (not b!1172250) (not b!1173211) (not bm!82376) (not b!1172174) (not b!1171981) (not bm!82365) b_and!80757 (not b!1172015) (not b_lambda!35097) (not b!1173317) (not d!335371) (not b!1172907) (not b!1172973) (not b!1173031) (not b!1172527) (not b!1172924) (not b!1172198) (not b!1173382) (not d!335881) (not b!1172552) (not b!1172040) (not b!1173325) (not bm!82387) (not d!335949) (not b_lambda!35089) (not d!335903) (not d!335995) (not b!1173096) (not d!335925) (not b!1172686) (not b!1173131) (not b!1172285) (not b!1172072) (not b!1172987) (not b_lambda!35091) (not b!1172052) (not bs!286117) (not b!1172635) (not d!335383) (not d!336033) (not b!1173158) (not b_next!28577) (not b!1172197) (not b_lambda!35019) (not b!1173315) (not b!1172279) (not d!336021) (not b!1172077) (not d!335867) (not b!1173251) (not d!335935) b_and!80787 (not b!1173377) (not d!335675) (not b!1173130) (not b!1173177) (not b!1172214) (not b!1173011) (not d!335477) (not b_lambda!35063) (not bm!82369) (not d!336085) (not b!1172060) (not b!1172144) (not b!1172101) (not b!1173016) (not b!1172014) (not b!1172589) (not b!1172212) (not b!1172145) (not d!335913) (not b_lambda!35065) (not b!1172559) (not b!1173169) (not b!1173160) (not d!335893) (not b!1173328) (not bs!286113) (not b!1173017) (not b!1173010) (not b!1173013) (not b!1173020) (not b!1171787) (not d!335849) (not d!335335) (not b!1173338) (not d!336087) (not bm!82377) (not b!1171975) (not b!1173306) (not d!335977) (not d!336035) (not bs!286112) (not b!1171667) (not b!1172526) (not bm!82363) (not b!1172249) (not bm!82368) (not d!335991) (not b!1172113) (not b!1173082) (not d!336019) (not b!1172010) (not b!1173300) (not b!1172269) (not b!1172685) (not bs!286115) (not d!335963) (not d!336097) (not tb!65953) (not d!336003) (not d!335431) (not b!1173112) (not d!335489) (not b!1173122) (not b!1173335) (not d!335501) (not bm!82386) (not b!1172672) (not b!1172995) (not d!336051) (not b!1173374) (not b!1172147) (not b!1172071) (not b!1172068) (not d!335343) (not d!335939) (not b!1173262) (not b!1172998) (not b!1172513) (not b!1171999) (not b!1172009) (not b!1172920) (not d!335897) (not b!1173267) (not b!1173095) (not d!336081) (not b!1173129) (not d!335951) (not b!1173329) (not b!1173134) (not b!1173207) (not d!335179) (not b!1172650) (not b!1172651) (not b!1173381) (not b!1173052) (not b!1172054) (not d!335345) (not b!1173159) (not b!1172086) (not b!1172241) (not d!336023) (not b!1172070) (not d!335869) (not bm!82378) (not d!335879) (not b!1173175) (not b!1173263) (not d!335911) (not b!1172926) (not d!335661) (not b!1172246) (not tb!65951) (not b!1172207) (not b!1172184) (not b!1172030) (not b!1173277) (not b!1173014) (not b!1173343) (not b!1172111) (not bs!286118) (not b!1173354) (not d!335425) (not d!335655) (not b!1173324) (not d!336047) (not b!1172563) (not b!1172586) (not d!335379) (not d!335363) (not b!1172251) (not d!335381) (not d!336095) (not d!335891) (not b!1173018) (not b!1172925) (not d!335693) (not bm!82302) (not b!1173092) (not d!335183) (not b!1172910) (not d!335309) (not b!1172687) (not b!1173421) (not bm!82384) (not d!335855) (not d!335365) (not d!335929) (not b!1173418) (not b!1173415) (not bm!82308) (not b!1173260) (not b!1172562) (not d!335421) (not b!1173088) (not b!1173133) (not b!1173218) (not b!1173089) (not b!1173372) (not b!1172638) (not b!1173355) (not d!336063) (not d!335331) (not b!1173356) (not bm!82382) (not b!1173164) (not b!1173358) (not bm!82330) (not d!336089) (not b!1172642) (not b!1173223) (not bs!286114) (not b!1173090) (not d!335317) (not d!336039) (not d!335407) tp_is_empty!5731 (not b!1173319) (not d!335671) (not d!335445) (not d!335997) (not b!1172053) (not d!336073) (not b!1172644) (not b!1173394) (not bm!82304) (not b!1172637) (not d!335971) (not d!335347) (not b!1172551) (not b!1173269) (not b!1171658) (not b!1173099) (not d!335975) (not b!1173060) (not b!1173293) (not b!1173312) (not b!1173176) (not bm!82364) (not d!335469) (not b!1173212) (not b!1172284) (not d!335665) (not b_lambda!35085) (not b!1173296) (not b!1173025) (not d!335691) (not b!1173236) (not b_lambda!35077) (not b!1173053) (not b!1172041) (not d!336055) (not b!1172195) (not b!1173375) (not d!335465) (not d!335945) (not b!1173307) (not b!1173145) (not d!335453) (not d!336045) (not b!1173056) (not b_lambda!35081) (not b!1173228) (not b!1173107) b_and!80791 (not b!1173288) (not d!336067) (not d!335887) (not d!335965) b_and!80789 (not d!335399) (not d!335915) (not b!1172143) (not b!1172240) (not d!335479) (not b!1172103) (not b!1172919) (not tb!65983) (not b!1172125) (not b!1173283) (not b!1173061) (not d!335701) (not d!335427) (not b!1172183) (not b!1172909) (not d!335845) (not d!335333) (not d!336043) (not b!1172138) (not b!1173007) (not b!1173076) (not b!1172286) (not d!335329) (not b_lambda!35011) (not b!1172588) (not b!1172695) (not d!335339) (not b!1172006) (not b!1173412) (not d!335901) (not d!335853) (not bm!82372) (not bm!82305) (not d!335415) (not bm!82306) (not d!335353) (not b!1173012) (not b!1172653) (not b!1172008) (not bm!82307) (not d!335687) (not b_next!28563) (not b!1173042) (not b!1173299) (not b!1172242) (not b!1172244) (not b!1172584) (not b!1172975) (not b!1172119) (not d!335325) (not b!1172243) (not b!1171995) (not b!1172675) (not b_next!28575) (not d!335697) (not b!1172645) (not b!1173054) (not b!1173163) (not b!1173339) (not b!1173247) (not b!1172992) b_and!80793 (not b!1172974) (not b!1172069) (not d!335433) (not d!335299) (not d!335905) (not bm!82370) (not b!1173021) (not b!1172230) (not b!1172494) (not bs!286119) (not b!1173361) (not b!1172676) (not b!1173109) (not d!335417) (not d!336053) (not b!1173057) (not d!335885) (not d!336029) (not d!336057) (not b!1173301) (not b!1172923) (not d!335837) (not b!1172003) (not b!1172061) (not b!1173106) (not d!335185) (not b!1172127) (not b_next!28561) (not b!1173271) (not b!1171994) (not b!1171977) (not b!1172196) (not b!1172046) (not b!1173197) (not d!335917))
(check-sat (not b_next!28579) b_and!80795 (not b_next!28573) b_and!80757 (not b_next!28577) b_and!80787 (not b_next!28563) (not b_next!28561) b_and!80791 b_and!80789 b_and!80793 (not b_next!28575))
