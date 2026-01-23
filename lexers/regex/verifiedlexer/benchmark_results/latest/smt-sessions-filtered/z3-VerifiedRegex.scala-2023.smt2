; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103674 () Bool)

(assert start!103674)

(declare-fun b!1175131 () Bool)

(declare-fun e!753935 () Bool)

(assert (=> b!1175131 (= e!753935 true)))

(declare-fun b!1175130 () Bool)

(declare-fun e!753934 () Bool)

(assert (=> b!1175130 (= e!753934 e!753935)))

(declare-fun b!1175116 () Bool)

(assert (=> b!1175116 e!753934))

(assert (= b!1175130 b!1175131))

(assert (= b!1175116 b!1175130))

(declare-fun b!1175102 () Bool)

(declare-fun res!531124 () Bool)

(declare-fun e!753910 () Bool)

(assert (=> b!1175102 (=> res!531124 e!753910)))

(declare-datatypes ((List!11646 0))(
  ( (Nil!11622) (Cons!11622 (h!17023 (_ BitVec 16)) (t!111048 List!11646)) )
))
(declare-datatypes ((TokenValue!2093 0))(
  ( (FloatLiteralValue!4186 (text!15096 List!11646)) (TokenValueExt!2092 (__x!7897 Int)) (Broken!10465 (value!65740 List!11646)) (Object!2116) (End!2093) (Def!2093) (Underscore!2093) (Match!2093) (Else!2093) (Error!2093) (Case!2093) (If!2093) (Extends!2093) (Abstract!2093) (Class!2093) (Val!2093) (DelimiterValue!4186 (del!2153 List!11646)) (KeywordValue!2099 (value!65741 List!11646)) (CommentValue!4186 (value!65742 List!11646)) (WhitespaceValue!4186 (value!65743 List!11646)) (IndentationValue!2093 (value!65744 List!11646)) (String!14052) (Int32!2093) (Broken!10466 (value!65745 List!11646)) (Boolean!2094) (Unit!17925) (OperatorValue!2096 (op!2153 List!11646)) (IdentifierValue!4186 (value!65746 List!11646)) (IdentifierValue!4187 (value!65747 List!11646)) (WhitespaceValue!4187 (value!65748 List!11646)) (True!4186) (False!4186) (Broken!10467 (value!65749 List!11646)) (Broken!10468 (value!65750 List!11646)) (True!4187) (RightBrace!2093) (RightBracket!2093) (Colon!2093) (Null!2093) (Comma!2093) (LeftBracket!2093) (False!4187) (LeftBrace!2093) (ImaginaryLiteralValue!2093 (text!15097 List!11646)) (StringLiteralValue!6279 (value!65751 List!11646)) (EOFValue!2093 (value!65752 List!11646)) (IdentValue!2093 (value!65753 List!11646)) (DelimiterValue!4187 (value!65754 List!11646)) (DedentValue!2093 (value!65755 List!11646)) (NewLineValue!2093 (value!65756 List!11646)) (IntegerValue!6279 (value!65757 (_ BitVec 32)) (text!15098 List!11646)) (IntegerValue!6280 (value!65758 Int) (text!15099 List!11646)) (Times!2093) (Or!2093) (Equal!2093) (Minus!2093) (Broken!10469 (value!65759 List!11646)) (And!2093) (Div!2093) (LessEqual!2093) (Mod!2093) (Concat!5390) (Not!2093) (Plus!2093) (SpaceValue!2093 (value!65760 List!11646)) (IntegerValue!6281 (value!65761 Int) (text!15100 List!11646)) (StringLiteralValue!6280 (text!15101 List!11646)) (FloatLiteralValue!4187 (text!15102 List!11646)) (BytesLiteralValue!2093 (value!65762 List!11646)) (CommentValue!4187 (value!65763 List!11646)) (StringLiteralValue!6281 (value!65764 List!11646)) (ErrorTokenValue!2093 (msg!2154 List!11646)) )
))
(declare-datatypes ((C!6912 0))(
  ( (C!6913 (val!3712 Int)) )
))
(declare-datatypes ((Regex!3297 0))(
  ( (ElementMatch!3297 (c!195951 C!6912)) (Concat!5391 (regOne!7106 Regex!3297) (regTwo!7106 Regex!3297)) (EmptyExpr!3297) (Star!3297 (reg!3626 Regex!3297)) (EmptyLang!3297) (Union!3297 (regOne!7107 Regex!3297) (regTwo!7107 Regex!3297)) )
))
(declare-datatypes ((String!14053 0))(
  ( (String!14054 (value!65765 String)) )
))
(declare-datatypes ((List!11647 0))(
  ( (Nil!11623) (Cons!11623 (h!17024 C!6912) (t!111049 List!11647)) )
))
(declare-datatypes ((IArray!7637 0))(
  ( (IArray!7638 (innerList!3876 List!11647)) )
))
(declare-datatypes ((Conc!3816 0))(
  ( (Node!3816 (left!10163 Conc!3816) (right!10493 Conc!3816) (csize!7862 Int) (cheight!4027 Int)) (Leaf!5840 (xs!6521 IArray!7637) (csize!7863 Int)) (Empty!3816) )
))
(declare-datatypes ((BalanceConc!7654 0))(
  ( (BalanceConc!7655 (c!195952 Conc!3816)) )
))
(declare-datatypes ((TokenValueInjection!3886 0))(
  ( (TokenValueInjection!3887 (toValue!3128 Int) (toChars!2987 Int)) )
))
(declare-datatypes ((Rule!3854 0))(
  ( (Rule!3855 (regex!2027 Regex!3297) (tag!2289 String!14053) (isSeparator!2027 Bool) (transformation!2027 TokenValueInjection!3886)) )
))
(declare-datatypes ((Token!3716 0))(
  ( (Token!3717 (value!65766 TokenValue!2093) (rule!3448 Rule!3854) (size!9177 Int) (originalCharacters!2581 List!11647)) )
))
(declare-datatypes ((List!11648 0))(
  ( (Nil!11624) (Cons!11624 (h!17025 Token!3716) (t!111050 List!11648)) )
))
(declare-datatypes ((IArray!7639 0))(
  ( (IArray!7640 (innerList!3877 List!11648)) )
))
(declare-datatypes ((Conc!3817 0))(
  ( (Node!3817 (left!10164 Conc!3817) (right!10494 Conc!3817) (csize!7864 Int) (cheight!4028 Int)) (Leaf!5841 (xs!6522 IArray!7639) (csize!7865 Int)) (Empty!3817) )
))
(declare-datatypes ((BalanceConc!7656 0))(
  ( (BalanceConc!7657 (c!195953 Conc!3817)) )
))
(declare-fun lt!404575 () BalanceConc!7656)

(declare-fun lambda!48429 () Int)

(declare-fun forall!3087 (BalanceConc!7656 Int) Bool)

(assert (=> b!1175102 (= res!531124 (not (forall!3087 lt!404575 lambda!48429)))))

(declare-fun b!1175103 () Bool)

(declare-fun res!531120 () Bool)

(declare-fun e!753926 () Bool)

(assert (=> b!1175103 (=> (not res!531120) (not e!753926))))

(declare-datatypes ((List!11649 0))(
  ( (Nil!11625) (Cons!11625 (h!17026 Rule!3854) (t!111051 List!11649)) )
))
(declare-datatypes ((PrintableTokens!740 0))(
  ( (PrintableTokens!741 (rules!9698 List!11649) (tokens!1676 BalanceConc!7656)) )
))
(declare-fun thiss!10527 () PrintableTokens!740)

(declare-datatypes ((LexerInterface!1722 0))(
  ( (LexerInterfaceExt!1719 (__x!7898 Int)) (Lexer!1720) )
))
(declare-fun rulesProduceEachTokenIndividually!760 (LexerInterface!1722 List!11649 BalanceConc!7656) Bool)

(assert (=> b!1175103 (= res!531120 (= (rulesProduceEachTokenIndividually!760 Lexer!1720 (rules!9698 thiss!10527) lt!404575) (forall!3087 lt!404575 lambda!48429)))))

(declare-fun b!1175104 () Bool)

(declare-fun e!753912 () Bool)

(declare-fun e!753914 () Bool)

(assert (=> b!1175104 (= e!753912 e!753914)))

(declare-fun res!531126 () Bool)

(assert (=> b!1175104 (=> (not res!531126) (not e!753914))))

(declare-fun to!267 () Int)

(declare-fun lt!404581 () Int)

(assert (=> b!1175104 (= res!531126 (<= to!267 lt!404581))))

(declare-fun size!9178 (BalanceConc!7656) Int)

(assert (=> b!1175104 (= lt!404581 (size!9178 (tokens!1676 thiss!10527)))))

(declare-fun b!1175105 () Bool)

(declare-fun e!753923 () Bool)

(declare-fun lt!404587 () List!11648)

(declare-fun tokensListTwoByTwoPredicateSeparableList!118 (LexerInterface!1722 List!11648 List!11649) Bool)

(assert (=> b!1175105 (= e!753923 (tokensListTwoByTwoPredicateSeparableList!118 Lexer!1720 lt!404587 (rules!9698 thiss!10527)))))

(declare-fun b!1175107 () Bool)

(declare-fun e!753913 () Bool)

(assert (=> b!1175107 (= e!753910 e!753913)))

(declare-fun res!531117 () Bool)

(assert (=> b!1175107 (=> res!531117 e!753913)))

(declare-fun isEmpty!7052 (List!11649) Bool)

(assert (=> b!1175107 (= res!531117 (isEmpty!7052 (rules!9698 thiss!10527)))))

(declare-fun forall!3088 (List!11648 Int) Bool)

(assert (=> b!1175107 (forall!3088 lt!404587 lambda!48429)))

(declare-fun lt!404576 () List!11648)

(declare-datatypes ((Unit!17926 0))(
  ( (Unit!17927) )
))
(declare-fun lt!404572 () Unit!17926)

(declare-fun lemmaForallSubseq!165 (List!11648 List!11648 Int) Unit!17926)

(assert (=> b!1175107 (= lt!404572 (lemmaForallSubseq!165 lt!404587 lt!404576 lambda!48429))))

(assert (=> b!1175107 e!753923))

(declare-fun res!531122 () Bool)

(assert (=> b!1175107 (=> (not res!531122) (not e!753923))))

(assert (=> b!1175107 (= res!531122 (forall!3088 lt!404587 lambda!48429))))

(declare-fun lt!404588 () Unit!17926)

(assert (=> b!1175107 (= lt!404588 (lemmaForallSubseq!165 lt!404587 lt!404576 lambda!48429))))

(declare-fun subseq!277 (List!11648 List!11648) Bool)

(assert (=> b!1175107 (subseq!277 lt!404587 lt!404576)))

(declare-fun lt!404573 () Unit!17926)

(declare-fun from!787 () Int)

(declare-fun lemmaDropSubseq!52 (List!11648 Int) Unit!17926)

(assert (=> b!1175107 (= lt!404573 (lemmaDropSubseq!52 lt!404576 from!787))))

(declare-fun lt!404580 () Bool)

(declare-fun e!753916 () Bool)

(assert (=> b!1175107 (= lt!404580 e!753916)))

(declare-fun res!531133 () Bool)

(assert (=> b!1175107 (=> res!531133 e!753916)))

(get-info :version)

(assert (=> b!1175107 (= res!531133 (not ((_ is Cons!11624) lt!404587)))))

(declare-fun rulesProduceEachTokenIndividuallyList!588 (LexerInterface!1722 List!11649 List!11648) Bool)

(assert (=> b!1175107 (= lt!404580 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!404587))))

(declare-fun drop!499 (List!11648 Int) List!11648)

(assert (=> b!1175107 (= lt!404587 (drop!499 lt!404576 from!787))))

(declare-fun lt!404585 () Unit!17926)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!52 (LexerInterface!1722 List!11648 Int List!11649) Unit!17926)

(assert (=> b!1175107 (= lt!404585 (tokensListTwoByTwoPredicateSeparableTokensDropList!52 Lexer!1720 lt!404576 from!787 (rules!9698 thiss!10527)))))

(declare-fun e!753911 () Bool)

(assert (=> b!1175107 e!753911))

(declare-fun res!531114 () Bool)

(assert (=> b!1175107 (=> (not res!531114) (not e!753911))))

(declare-fun separableTokens!158 (LexerInterface!1722 BalanceConc!7656 List!11649) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!83 (LexerInterface!1722 BalanceConc!7656 Int List!11649) Bool)

(assert (=> b!1175107 (= res!531114 (= (separableTokens!158 Lexer!1720 lt!404575 (rules!9698 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 lt!404575 0 (rules!9698 thiss!10527))))))

(declare-fun b!1175108 () Bool)

(declare-fun tp!334976 () Bool)

(declare-fun e!753917 () Bool)

(declare-fun e!753921 () Bool)

(declare-fun inv!15357 (BalanceConc!7656) Bool)

(assert (=> b!1175108 (= e!753921 (and tp!334976 (inv!15357 (tokens!1676 thiss!10527)) e!753917))))

(declare-fun b!1175109 () Bool)

(declare-fun e!753924 () Bool)

(assert (=> b!1175109 (= e!753924 e!753910)))

(declare-fun res!531115 () Bool)

(assert (=> b!1175109 (=> res!531115 e!753910)))

(declare-fun lt!404582 () List!11648)

(assert (=> b!1175109 (= res!531115 (not (forall!3088 lt!404582 lambda!48429)))))

(assert (=> b!1175109 e!753926))

(declare-fun res!531130 () Bool)

(assert (=> b!1175109 (=> (not res!531130) (not e!753926))))

(assert (=> b!1175109 (= res!531130 (forall!3088 lt!404582 lambda!48429))))

(declare-fun lt!404586 () Unit!17926)

(assert (=> b!1175109 (= lt!404586 (lemmaForallSubseq!165 lt!404582 lt!404576 lambda!48429))))

(declare-fun list!4296 (BalanceConc!7656) List!11648)

(assert (=> b!1175109 (= lt!404582 (list!4296 lt!404575))))

(declare-fun slice!368 (BalanceConc!7656 Int Int) BalanceConc!7656)

(assert (=> b!1175109 (= lt!404575 (slice!368 (tokens!1676 thiss!10527) from!787 to!267))))

(declare-fun slice!369 (List!11648 Int Int) List!11648)

(assert (=> b!1175109 (subseq!277 (slice!369 lt!404576 from!787 to!267) lt!404576)))

(declare-fun lt!404591 () Unit!17926)

(declare-fun lemmaSliceSubseq!118 (List!11648 Int Int) Unit!17926)

(assert (=> b!1175109 (= lt!404591 (lemmaSliceSubseq!118 lt!404576 from!787 to!267))))

(declare-fun b!1175110 () Bool)

(declare-fun e!753928 () Bool)

(assert (=> b!1175110 (= e!753928 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404587)))))

(declare-fun b!1175111 () Bool)

(assert (=> b!1175111 (= e!753916 e!753928)))

(declare-fun res!531118 () Bool)

(assert (=> b!1175111 (=> (not res!531118) (not e!753928))))

(declare-fun rulesProduceIndividualToken!757 (LexerInterface!1722 List!11649 Token!3716) Bool)

(assert (=> b!1175111 (= res!531118 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404587)))))

(declare-fun b!1175112 () Bool)

(assert (=> b!1175112 (= e!753913 lt!404580)))

(declare-fun b!1175113 () Bool)

(declare-fun e!753929 () Bool)

(assert (=> b!1175113 (= e!753929 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404576)))))

(declare-fun b!1175114 () Bool)

(declare-fun e!753922 () Bool)

(assert (=> b!1175114 (= e!753911 (= (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 (tokens!1676 thiss!10527) 0 (rules!9698 thiss!10527)) e!753922))))

(declare-fun res!531131 () Bool)

(assert (=> b!1175114 (=> res!531131 e!753922)))

(assert (=> b!1175114 (= res!531131 (>= 0 (- lt!404581 1)))))

(declare-fun b!1175115 () Bool)

(declare-fun e!753918 () Bool)

(assert (=> b!1175115 (= e!753918 (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 (tokens!1676 thiss!10527) 1 (rules!9698 thiss!10527)))))

(declare-fun e!753927 () Bool)

(assert (=> b!1175116 (= e!753927 (not e!753924))))

(declare-fun res!531132 () Bool)

(assert (=> b!1175116 (=> res!531132 e!753924)))

(assert (=> b!1175116 (= res!531132 (not (forall!3087 (tokens!1676 thiss!10527) lambda!48429)))))

(declare-fun e!753919 () Bool)

(assert (=> b!1175116 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!404576) e!753919)))

(declare-fun res!531119 () Bool)

(assert (=> b!1175116 (=> res!531119 e!753919)))

(assert (=> b!1175116 (= res!531119 (not ((_ is Cons!11624) lt!404576)))))

(assert (=> b!1175116 (= lt!404576 (list!4296 (tokens!1676 thiss!10527)))))

(assert (=> b!1175116 (= (rulesProduceEachTokenIndividually!760 Lexer!1720 (rules!9698 thiss!10527) (tokens!1676 thiss!10527)) (forall!3087 (tokens!1676 thiss!10527) lambda!48429))))

(declare-fun b!1175117 () Bool)

(declare-fun e!753915 () Bool)

(assert (=> b!1175117 (= e!753915 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404582)))))

(declare-fun b!1175118 () Bool)

(assert (=> b!1175118 (= e!753922 e!753918)))

(declare-fun res!531128 () Bool)

(assert (=> b!1175118 (=> (not res!531128) (not e!753918))))

(declare-fun lt!404579 () Token!3716)

(declare-fun lt!404592 () Token!3716)

(declare-fun separableTokensPredicate!144 (LexerInterface!1722 Token!3716 Token!3716 List!11649) Bool)

(assert (=> b!1175118 (= res!531128 (separableTokensPredicate!144 Lexer!1720 lt!404592 lt!404579 (rules!9698 thiss!10527)))))

(declare-fun e!753920 () Bool)

(assert (=> b!1175118 e!753920))

(declare-fun res!531125 () Bool)

(assert (=> b!1175118 (=> (not res!531125) (not e!753920))))

(assert (=> b!1175118 (= res!531125 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!404579))))

(declare-fun lt!404574 () Unit!17926)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 (LexerInterface!1722 List!11649 List!11648 Token!3716) Unit!17926)

(assert (=> b!1175118 (= lt!404574 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!404576 lt!404579))))

(declare-fun apply!2547 (BalanceConc!7656 Int) Token!3716)

(assert (=> b!1175118 (= lt!404579 (apply!2547 (tokens!1676 thiss!10527) 1))))

(assert (=> b!1175118 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!404592)))

(declare-fun lt!404584 () Unit!17926)

(assert (=> b!1175118 (= lt!404584 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!404576 lt!404592))))

(assert (=> b!1175118 (= lt!404592 (apply!2547 (tokens!1676 thiss!10527) 0))))

(declare-fun lt!404590 () List!11648)

(declare-fun tail!1700 (List!11648) List!11648)

(assert (=> b!1175118 (= (tail!1700 lt!404590) (drop!499 lt!404576 2))))

(declare-fun lt!404593 () Unit!17926)

(declare-fun lemmaDropTail!373 (List!11648 Int) Unit!17926)

(assert (=> b!1175118 (= lt!404593 (lemmaDropTail!373 lt!404576 1))))

(declare-fun lt!404594 () List!11648)

(assert (=> b!1175118 (= (tail!1700 lt!404594) lt!404590)))

(declare-fun lt!404578 () Unit!17926)

(assert (=> b!1175118 (= lt!404578 (lemmaDropTail!373 lt!404576 0))))

(declare-fun head!2116 (List!11648) Token!3716)

(declare-fun apply!2548 (List!11648 Int) Token!3716)

(assert (=> b!1175118 (= (head!2116 lt!404590) (apply!2548 lt!404576 1))))

(assert (=> b!1175118 (= lt!404590 (drop!499 lt!404576 1))))

(declare-fun lt!404577 () Unit!17926)

(declare-fun lemmaDropApply!385 (List!11648 Int) Unit!17926)

(assert (=> b!1175118 (= lt!404577 (lemmaDropApply!385 lt!404576 1))))

(assert (=> b!1175118 (= (head!2116 lt!404594) (apply!2548 lt!404576 0))))

(assert (=> b!1175118 (= lt!404594 (drop!499 lt!404576 0))))

(declare-fun lt!404589 () Unit!17926)

(assert (=> b!1175118 (= lt!404589 (lemmaDropApply!385 lt!404576 0))))

(declare-fun b!1175119 () Bool)

(declare-fun e!753925 () Bool)

(assert (=> b!1175119 (= e!753925 e!753915)))

(declare-fun res!531127 () Bool)

(assert (=> b!1175119 (=> (not res!531127) (not e!753915))))

(assert (=> b!1175119 (= res!531127 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404582)))))

(declare-fun b!1175106 () Bool)

(assert (=> b!1175106 (= e!753919 e!753929)))

(declare-fun res!531129 () Bool)

(assert (=> b!1175106 (=> (not res!531129) (not e!753929))))

(assert (=> b!1175106 (= res!531129 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404576)))))

(declare-fun res!531123 () Bool)

(assert (=> start!103674 (=> (not res!531123) (not e!753912))))

(assert (=> start!103674 (= res!531123 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!103674 e!753912))

(assert (=> start!103674 true))

(declare-fun inv!15358 (PrintableTokens!740) Bool)

(assert (=> start!103674 (and (inv!15358 thiss!10527) e!753921)))

(declare-fun b!1175120 () Bool)

(declare-fun size!9179 (BalanceConc!7654) Int)

(declare-fun charsOf!1082 (Token!3716) BalanceConc!7654)

(assert (=> b!1175120 (= e!753920 (> (size!9179 (charsOf!1082 lt!404579)) 0))))

(declare-fun b!1175121 () Bool)

(assert (=> b!1175121 (= e!753914 e!753927)))

(declare-fun res!531121 () Bool)

(assert (=> b!1175121 (=> (not res!531121) (not e!753927))))

(declare-fun rulesInvariant!1596 (LexerInterface!1722 List!11649) Bool)

(assert (=> b!1175121 (= res!531121 (rulesInvariant!1596 Lexer!1720 (rules!9698 thiss!10527)))))

(declare-fun lt!404583 () Unit!17926)

(declare-fun lemmaInvariant!214 (PrintableTokens!740) Unit!17926)

(assert (=> b!1175121 (= lt!404583 (lemmaInvariant!214 thiss!10527))))

(declare-fun b!1175122 () Bool)

(declare-fun tp!334975 () Bool)

(declare-fun inv!15359 (Conc!3817) Bool)

(assert (=> b!1175122 (= e!753917 (and (inv!15359 (c!195953 (tokens!1676 thiss!10527))) tp!334975))))

(declare-fun b!1175123 () Bool)

(assert (=> b!1175123 (= e!753926 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!404582) e!753925))))

(declare-fun res!531116 () Bool)

(assert (=> b!1175123 (=> res!531116 e!753925)))

(assert (=> b!1175123 (= res!531116 (not ((_ is Cons!11624) lt!404582)))))

(assert (= (and start!103674 res!531123) b!1175104))

(assert (= (and b!1175104 res!531126) b!1175121))

(assert (= (and b!1175121 res!531121) b!1175116))

(assert (= (and b!1175116 (not res!531119)) b!1175106))

(assert (= (and b!1175106 res!531129) b!1175113))

(assert (= (and b!1175116 (not res!531132)) b!1175109))

(assert (= (and b!1175109 res!531130) b!1175103))

(assert (= (and b!1175103 res!531120) b!1175123))

(assert (= (and b!1175123 (not res!531116)) b!1175119))

(assert (= (and b!1175119 res!531127) b!1175117))

(assert (= (and b!1175109 (not res!531115)) b!1175102))

(assert (= (and b!1175102 (not res!531124)) b!1175107))

(assert (= (and b!1175107 res!531114) b!1175114))

(assert (= (and b!1175114 (not res!531131)) b!1175118))

(assert (= (and b!1175118 res!531125) b!1175120))

(assert (= (and b!1175118 res!531128) b!1175115))

(assert (= (and b!1175107 (not res!531133)) b!1175111))

(assert (= (and b!1175111 res!531118) b!1175110))

(assert (= (and b!1175107 res!531122) b!1175105))

(assert (= (and b!1175107 (not res!531117)) b!1175112))

(assert (= b!1175108 b!1175122))

(assert (= start!103674 b!1175108))

(declare-fun m!1351425 () Bool)

(assert (=> b!1175116 m!1351425))

(assert (=> b!1175116 m!1351425))

(declare-fun m!1351427 () Bool)

(assert (=> b!1175116 m!1351427))

(declare-fun m!1351429 () Bool)

(assert (=> b!1175116 m!1351429))

(declare-fun m!1351431 () Bool)

(assert (=> b!1175116 m!1351431))

(declare-fun m!1351433 () Bool)

(assert (=> b!1175118 m!1351433))

(declare-fun m!1351435 () Bool)

(assert (=> b!1175118 m!1351435))

(declare-fun m!1351437 () Bool)

(assert (=> b!1175118 m!1351437))

(declare-fun m!1351439 () Bool)

(assert (=> b!1175118 m!1351439))

(declare-fun m!1351441 () Bool)

(assert (=> b!1175118 m!1351441))

(declare-fun m!1351443 () Bool)

(assert (=> b!1175118 m!1351443))

(declare-fun m!1351445 () Bool)

(assert (=> b!1175118 m!1351445))

(declare-fun m!1351447 () Bool)

(assert (=> b!1175118 m!1351447))

(declare-fun m!1351449 () Bool)

(assert (=> b!1175118 m!1351449))

(declare-fun m!1351451 () Bool)

(assert (=> b!1175118 m!1351451))

(declare-fun m!1351453 () Bool)

(assert (=> b!1175118 m!1351453))

(declare-fun m!1351455 () Bool)

(assert (=> b!1175118 m!1351455))

(declare-fun m!1351457 () Bool)

(assert (=> b!1175118 m!1351457))

(declare-fun m!1351459 () Bool)

(assert (=> b!1175118 m!1351459))

(declare-fun m!1351461 () Bool)

(assert (=> b!1175118 m!1351461))

(declare-fun m!1351463 () Bool)

(assert (=> b!1175118 m!1351463))

(declare-fun m!1351465 () Bool)

(assert (=> b!1175118 m!1351465))

(declare-fun m!1351467 () Bool)

(assert (=> b!1175118 m!1351467))

(declare-fun m!1351469 () Bool)

(assert (=> b!1175118 m!1351469))

(declare-fun m!1351471 () Bool)

(assert (=> b!1175118 m!1351471))

(declare-fun m!1351473 () Bool)

(assert (=> start!103674 m!1351473))

(declare-fun m!1351475 () Bool)

(assert (=> b!1175115 m!1351475))

(declare-fun m!1351477 () Bool)

(assert (=> b!1175107 m!1351477))

(declare-fun m!1351479 () Bool)

(assert (=> b!1175107 m!1351479))

(declare-fun m!1351481 () Bool)

(assert (=> b!1175107 m!1351481))

(declare-fun m!1351483 () Bool)

(assert (=> b!1175107 m!1351483))

(declare-fun m!1351485 () Bool)

(assert (=> b!1175107 m!1351485))

(declare-fun m!1351487 () Bool)

(assert (=> b!1175107 m!1351487))

(declare-fun m!1351489 () Bool)

(assert (=> b!1175107 m!1351489))

(assert (=> b!1175107 m!1351489))

(assert (=> b!1175107 m!1351487))

(declare-fun m!1351491 () Bool)

(assert (=> b!1175107 m!1351491))

(declare-fun m!1351493 () Bool)

(assert (=> b!1175107 m!1351493))

(declare-fun m!1351495 () Bool)

(assert (=> b!1175107 m!1351495))

(declare-fun m!1351497 () Bool)

(assert (=> b!1175108 m!1351497))

(declare-fun m!1351499 () Bool)

(assert (=> b!1175119 m!1351499))

(declare-fun m!1351501 () Bool)

(assert (=> b!1175123 m!1351501))

(declare-fun m!1351503 () Bool)

(assert (=> b!1175114 m!1351503))

(declare-fun m!1351505 () Bool)

(assert (=> b!1175121 m!1351505))

(declare-fun m!1351507 () Bool)

(assert (=> b!1175121 m!1351507))

(declare-fun m!1351509 () Bool)

(assert (=> b!1175102 m!1351509))

(declare-fun m!1351511 () Bool)

(assert (=> b!1175106 m!1351511))

(declare-fun m!1351513 () Bool)

(assert (=> b!1175113 m!1351513))

(declare-fun m!1351515 () Bool)

(assert (=> b!1175117 m!1351515))

(declare-fun m!1351517 () Bool)

(assert (=> b!1175109 m!1351517))

(declare-fun m!1351519 () Bool)

(assert (=> b!1175109 m!1351519))

(declare-fun m!1351521 () Bool)

(assert (=> b!1175109 m!1351521))

(assert (=> b!1175109 m!1351519))

(declare-fun m!1351523 () Bool)

(assert (=> b!1175109 m!1351523))

(declare-fun m!1351525 () Bool)

(assert (=> b!1175109 m!1351525))

(assert (=> b!1175109 m!1351525))

(declare-fun m!1351527 () Bool)

(assert (=> b!1175109 m!1351527))

(declare-fun m!1351529 () Bool)

(assert (=> b!1175109 m!1351529))

(declare-fun m!1351531 () Bool)

(assert (=> b!1175110 m!1351531))

(declare-fun m!1351533 () Bool)

(assert (=> b!1175104 m!1351533))

(declare-fun m!1351535 () Bool)

(assert (=> b!1175105 m!1351535))

(declare-fun m!1351537 () Bool)

(assert (=> b!1175111 m!1351537))

(declare-fun m!1351539 () Bool)

(assert (=> b!1175103 m!1351539))

(assert (=> b!1175103 m!1351509))

(declare-fun m!1351541 () Bool)

(assert (=> b!1175122 m!1351541))

(declare-fun m!1351543 () Bool)

(assert (=> b!1175120 m!1351543))

(assert (=> b!1175120 m!1351543))

(declare-fun m!1351545 () Bool)

(assert (=> b!1175120 m!1351545))

(check-sat (not b!1175113) (not b!1175108) (not b!1175119) (not b!1175111) (not b!1175106) (not b!1175116) (not b!1175131) (not b!1175103) (not b!1175114) (not b!1175102) (not b!1175117) (not b!1175121) (not b!1175107) (not b!1175123) (not b!1175104) (not b!1175130) (not b!1175105) (not b!1175115) (not b!1175120) (not start!103674) (not b!1175118) (not b!1175110) (not b!1175122) (not b!1175109))
(check-sat)
(get-model)

(declare-fun bs!286384 () Bool)

(declare-fun d!336630 () Bool)

(assert (= bs!286384 (and d!336630 b!1175116)))

(declare-fun lambda!48435 () Int)

(assert (=> bs!286384 (= lambda!48435 lambda!48429)))

(declare-fun b!1175167 () Bool)

(declare-fun e!753965 () Bool)

(assert (=> b!1175167 (= e!753965 true)))

(declare-fun b!1175166 () Bool)

(declare-fun e!753964 () Bool)

(assert (=> b!1175166 (= e!753964 e!753965)))

(declare-fun b!1175165 () Bool)

(declare-fun e!753963 () Bool)

(assert (=> b!1175165 (= e!753963 e!753964)))

(assert (=> d!336630 e!753963))

(assert (= b!1175166 b!1175167))

(assert (= b!1175165 b!1175166))

(assert (= (and d!336630 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175165))

(declare-fun order!7163 () Int)

(declare-fun order!7161 () Int)

(declare-fun dynLambda!5152 (Int Int) Int)

(declare-fun dynLambda!5153 (Int Int) Int)

(assert (=> b!1175167 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48435))))

(declare-fun order!7165 () Int)

(declare-fun dynLambda!5154 (Int Int) Int)

(assert (=> b!1175167 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48435))))

(assert (=> d!336630 true))

(declare-fun lt!404609 () Bool)

(assert (=> d!336630 (= lt!404609 (forall!3088 (t!111050 lt!404587) lambda!48435))))

(declare-fun e!753956 () Bool)

(assert (=> d!336630 (= lt!404609 e!753956)))

(declare-fun res!531148 () Bool)

(assert (=> d!336630 (=> res!531148 e!753956)))

(assert (=> d!336630 (= res!531148 (not ((_ is Cons!11624) (t!111050 lt!404587))))))

(assert (=> d!336630 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336630 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404587)) lt!404609)))

(declare-fun b!1175155 () Bool)

(declare-fun e!753955 () Bool)

(assert (=> b!1175155 (= e!753956 e!753955)))

(declare-fun res!531149 () Bool)

(assert (=> b!1175155 (=> (not res!531149) (not e!753955))))

(assert (=> b!1175155 (= res!531149 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 (t!111050 lt!404587))))))

(declare-fun b!1175156 () Bool)

(assert (=> b!1175156 (= e!753955 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 (t!111050 lt!404587))))))

(assert (= (and d!336630 (not res!531148)) b!1175155))

(assert (= (and b!1175155 res!531149) b!1175156))

(declare-fun m!1351563 () Bool)

(assert (=> d!336630 m!1351563))

(assert (=> d!336630 m!1351493))

(declare-fun m!1351565 () Bool)

(assert (=> b!1175155 m!1351565))

(declare-fun m!1351567 () Bool)

(assert (=> b!1175156 m!1351567))

(assert (=> b!1175110 d!336630))

(declare-fun d!336644 () Bool)

(declare-fun res!531152 () Bool)

(declare-fun e!753968 () Bool)

(assert (=> d!336644 (=> (not res!531152) (not e!753968))))

(declare-fun rulesValid!718 (LexerInterface!1722 List!11649) Bool)

(assert (=> d!336644 (= res!531152 (rulesValid!718 Lexer!1720 (rules!9698 thiss!10527)))))

(assert (=> d!336644 (= (rulesInvariant!1596 Lexer!1720 (rules!9698 thiss!10527)) e!753968)))

(declare-fun b!1175172 () Bool)

(declare-datatypes ((List!11650 0))(
  ( (Nil!11626) (Cons!11626 (h!17027 String!14053) (t!111076 List!11650)) )
))
(declare-fun noDuplicateTag!718 (LexerInterface!1722 List!11649 List!11650) Bool)

(assert (=> b!1175172 (= e!753968 (noDuplicateTag!718 Lexer!1720 (rules!9698 thiss!10527) Nil!11626))))

(assert (= (and d!336644 res!531152) b!1175172))

(declare-fun m!1351569 () Bool)

(assert (=> d!336644 m!1351569))

(declare-fun m!1351571 () Bool)

(assert (=> b!1175172 m!1351571))

(assert (=> b!1175121 d!336644))

(declare-fun d!336646 () Bool)

(declare-fun e!753971 () Bool)

(assert (=> d!336646 e!753971))

(declare-fun res!531157 () Bool)

(assert (=> d!336646 (=> (not res!531157) (not e!753971))))

(assert (=> d!336646 (= res!531157 (rulesInvariant!1596 Lexer!1720 (rules!9698 thiss!10527)))))

(declare-fun Unit!17931 () Unit!17926)

(assert (=> d!336646 (= (lemmaInvariant!214 thiss!10527) Unit!17931)))

(declare-fun b!1175177 () Bool)

(declare-fun res!531158 () Bool)

(assert (=> b!1175177 (=> (not res!531158) (not e!753971))))

(assert (=> b!1175177 (= res!531158 (rulesProduceEachTokenIndividually!760 Lexer!1720 (rules!9698 thiss!10527) (tokens!1676 thiss!10527)))))

(declare-fun b!1175178 () Bool)

(assert (=> b!1175178 (= e!753971 (separableTokens!158 Lexer!1720 (tokens!1676 thiss!10527) (rules!9698 thiss!10527)))))

(assert (= (and d!336646 res!531157) b!1175177))

(assert (= (and b!1175177 res!531158) b!1175178))

(assert (=> d!336646 m!1351505))

(assert (=> b!1175177 m!1351429))

(declare-fun m!1351573 () Bool)

(assert (=> b!1175178 m!1351573))

(assert (=> b!1175121 d!336646))

(declare-fun d!336650 () Bool)

(declare-fun lt!404716 () Bool)

(declare-fun e!754009 () Bool)

(assert (=> d!336650 (= lt!404716 e!754009)))

(declare-fun res!531208 () Bool)

(assert (=> d!336650 (=> (not res!531208) (not e!754009))))

(declare-datatypes ((tuple2!12062 0))(
  ( (tuple2!12063 (_1!6878 BalanceConc!7656) (_2!6878 BalanceConc!7654)) )
))
(declare-fun lex!719 (LexerInterface!1722 List!11649 BalanceConc!7654) tuple2!12062)

(declare-fun print!656 (LexerInterface!1722 BalanceConc!7656) BalanceConc!7654)

(declare-fun singletonSeq!694 (Token!3716) BalanceConc!7656)

(assert (=> d!336650 (= res!531208 (= (list!4296 (_1!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404582)))))) (list!4296 (singletonSeq!694 (h!17025 lt!404582)))))))

(declare-fun e!754010 () Bool)

(assert (=> d!336650 (= lt!404716 e!754010)))

(declare-fun res!531207 () Bool)

(assert (=> d!336650 (=> (not res!531207) (not e!754010))))

(declare-fun lt!404717 () tuple2!12062)

(assert (=> d!336650 (= res!531207 (= (size!9178 (_1!6878 lt!404717)) 1))))

(assert (=> d!336650 (= lt!404717 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404582)))))))

(assert (=> d!336650 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336650 (= (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404582)) lt!404716)))

(declare-fun b!1175227 () Bool)

(declare-fun res!531209 () Bool)

(assert (=> b!1175227 (=> (not res!531209) (not e!754010))))

(assert (=> b!1175227 (= res!531209 (= (apply!2547 (_1!6878 lt!404717) 0) (h!17025 lt!404582)))))

(declare-fun b!1175228 () Bool)

(declare-fun isEmpty!7053 (BalanceConc!7654) Bool)

(assert (=> b!1175228 (= e!754010 (isEmpty!7053 (_2!6878 lt!404717)))))

(declare-fun b!1175229 () Bool)

(assert (=> b!1175229 (= e!754009 (isEmpty!7053 (_2!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404582)))))))))

(assert (= (and d!336650 res!531207) b!1175227))

(assert (= (and b!1175227 res!531209) b!1175228))

(assert (= (and d!336650 res!531208) b!1175229))

(declare-fun m!1351665 () Bool)

(assert (=> d!336650 m!1351665))

(declare-fun m!1351667 () Bool)

(assert (=> d!336650 m!1351667))

(declare-fun m!1351669 () Bool)

(assert (=> d!336650 m!1351669))

(assert (=> d!336650 m!1351667))

(declare-fun m!1351671 () Bool)

(assert (=> d!336650 m!1351671))

(assert (=> d!336650 m!1351667))

(assert (=> d!336650 m!1351671))

(declare-fun m!1351673 () Bool)

(assert (=> d!336650 m!1351673))

(declare-fun m!1351675 () Bool)

(assert (=> d!336650 m!1351675))

(assert (=> d!336650 m!1351493))

(declare-fun m!1351677 () Bool)

(assert (=> b!1175227 m!1351677))

(declare-fun m!1351679 () Bool)

(assert (=> b!1175228 m!1351679))

(assert (=> b!1175229 m!1351667))

(assert (=> b!1175229 m!1351667))

(assert (=> b!1175229 m!1351671))

(assert (=> b!1175229 m!1351671))

(assert (=> b!1175229 m!1351673))

(declare-fun m!1351681 () Bool)

(assert (=> b!1175229 m!1351681))

(assert (=> b!1175119 d!336650))

(declare-fun d!336660 () Bool)

(assert (=> d!336660 (subseq!277 (slice!369 lt!404576 from!787 to!267) lt!404576)))

(declare-fun lt!404720 () Unit!17926)

(declare-fun choose!7605 (List!11648 Int Int) Unit!17926)

(assert (=> d!336660 (= lt!404720 (choose!7605 lt!404576 from!787 to!267))))

(declare-fun e!754013 () Bool)

(assert (=> d!336660 e!754013))

(declare-fun res!531212 () Bool)

(assert (=> d!336660 (=> (not res!531212) (not e!754013))))

(assert (=> d!336660 (= res!531212 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!336660 (= (lemmaSliceSubseq!118 lt!404576 from!787 to!267) lt!404720)))

(declare-fun b!1175232 () Bool)

(declare-fun size!9183 (List!11648) Int)

(assert (=> b!1175232 (= e!754013 (<= to!267 (size!9183 lt!404576)))))

(assert (= (and d!336660 res!531212) b!1175232))

(assert (=> d!336660 m!1351519))

(assert (=> d!336660 m!1351519))

(assert (=> d!336660 m!1351523))

(declare-fun m!1351683 () Bool)

(assert (=> d!336660 m!1351683))

(declare-fun m!1351685 () Bool)

(assert (=> b!1175232 m!1351685))

(assert (=> b!1175109 d!336660))

(declare-fun d!336662 () Bool)

(declare-fun res!531217 () Bool)

(declare-fun e!754018 () Bool)

(assert (=> d!336662 (=> res!531217 e!754018)))

(assert (=> d!336662 (= res!531217 ((_ is Nil!11624) lt!404582))))

(assert (=> d!336662 (= (forall!3088 lt!404582 lambda!48429) e!754018)))

(declare-fun b!1175237 () Bool)

(declare-fun e!754019 () Bool)

(assert (=> b!1175237 (= e!754018 e!754019)))

(declare-fun res!531218 () Bool)

(assert (=> b!1175237 (=> (not res!531218) (not e!754019))))

(declare-fun dynLambda!5155 (Int Token!3716) Bool)

(assert (=> b!1175237 (= res!531218 (dynLambda!5155 lambda!48429 (h!17025 lt!404582)))))

(declare-fun b!1175238 () Bool)

(assert (=> b!1175238 (= e!754019 (forall!3088 (t!111050 lt!404582) lambda!48429))))

(assert (= (and d!336662 (not res!531217)) b!1175237))

(assert (= (and b!1175237 res!531218) b!1175238))

(declare-fun b_lambda!35151 () Bool)

(assert (=> (not b_lambda!35151) (not b!1175237)))

(declare-fun m!1351687 () Bool)

(assert (=> b!1175237 m!1351687))

(declare-fun m!1351689 () Bool)

(assert (=> b!1175238 m!1351689))

(assert (=> b!1175109 d!336662))

(declare-fun d!336664 () Bool)

(declare-fun res!531229 () Bool)

(declare-fun e!754029 () Bool)

(assert (=> d!336664 (=> res!531229 e!754029)))

(assert (=> d!336664 (= res!531229 ((_ is Nil!11624) (slice!369 lt!404576 from!787 to!267)))))

(assert (=> d!336664 (= (subseq!277 (slice!369 lt!404576 from!787 to!267) lt!404576) e!754029)))

(declare-fun e!754030 () Bool)

(declare-fun b!1175249 () Bool)

(assert (=> b!1175249 (= e!754030 (subseq!277 (t!111050 (slice!369 lt!404576 from!787 to!267)) (t!111050 lt!404576)))))

(declare-fun b!1175248 () Bool)

(declare-fun e!754031 () Bool)

(declare-fun e!754028 () Bool)

(assert (=> b!1175248 (= e!754031 e!754028)))

(declare-fun res!531228 () Bool)

(assert (=> b!1175248 (=> res!531228 e!754028)))

(assert (=> b!1175248 (= res!531228 e!754030)))

(declare-fun res!531227 () Bool)

(assert (=> b!1175248 (=> (not res!531227) (not e!754030))))

(assert (=> b!1175248 (= res!531227 (= (h!17025 (slice!369 lt!404576 from!787 to!267)) (h!17025 lt!404576)))))

(declare-fun b!1175250 () Bool)

(assert (=> b!1175250 (= e!754028 (subseq!277 (slice!369 lt!404576 from!787 to!267) (t!111050 lt!404576)))))

(declare-fun b!1175247 () Bool)

(assert (=> b!1175247 (= e!754029 e!754031)))

(declare-fun res!531230 () Bool)

(assert (=> b!1175247 (=> (not res!531230) (not e!754031))))

(assert (=> b!1175247 (= res!531230 ((_ is Cons!11624) lt!404576))))

(assert (= (and d!336664 (not res!531229)) b!1175247))

(assert (= (and b!1175247 res!531230) b!1175248))

(assert (= (and b!1175248 res!531227) b!1175249))

(assert (= (and b!1175248 (not res!531228)) b!1175250))

(declare-fun m!1351691 () Bool)

(assert (=> b!1175249 m!1351691))

(assert (=> b!1175250 m!1351519))

(declare-fun m!1351693 () Bool)

(assert (=> b!1175250 m!1351693))

(assert (=> b!1175109 d!336664))

(declare-fun d!336666 () Bool)

(declare-fun take!86 (List!11648 Int) List!11648)

(assert (=> d!336666 (= (slice!369 lt!404576 from!787 to!267) (take!86 (drop!499 lt!404576 from!787) (- to!267 from!787)))))

(declare-fun bs!286387 () Bool)

(assert (= bs!286387 d!336666))

(assert (=> bs!286387 m!1351485))

(assert (=> bs!286387 m!1351485))

(declare-fun m!1351695 () Bool)

(assert (=> bs!286387 m!1351695))

(assert (=> b!1175109 d!336666))

(declare-fun d!336668 () Bool)

(declare-fun list!4298 (Conc!3817) List!11648)

(assert (=> d!336668 (= (list!4296 lt!404575) (list!4298 (c!195953 lt!404575)))))

(declare-fun bs!286388 () Bool)

(assert (= bs!286388 d!336668))

(declare-fun m!1351697 () Bool)

(assert (=> bs!286388 m!1351697))

(assert (=> b!1175109 d!336668))

(declare-fun d!336670 () Bool)

(assert (=> d!336670 (forall!3088 lt!404582 lambda!48429)))

(declare-fun lt!404723 () Unit!17926)

(declare-fun choose!7606 (List!11648 List!11648 Int) Unit!17926)

(assert (=> d!336670 (= lt!404723 (choose!7606 lt!404582 lt!404576 lambda!48429))))

(assert (=> d!336670 (forall!3088 lt!404576 lambda!48429)))

(assert (=> d!336670 (= (lemmaForallSubseq!165 lt!404582 lt!404576 lambda!48429) lt!404723)))

(declare-fun bs!286389 () Bool)

(assert (= bs!286389 d!336670))

(assert (=> bs!286389 m!1351525))

(declare-fun m!1351699 () Bool)

(assert (=> bs!286389 m!1351699))

(declare-fun m!1351701 () Bool)

(assert (=> bs!286389 m!1351701))

(assert (=> b!1175109 d!336670))

(declare-fun d!336672 () Bool)

(declare-fun e!754037 () Bool)

(assert (=> d!336672 e!754037))

(declare-fun res!531237 () Bool)

(assert (=> d!336672 (=> (not res!531237) (not e!754037))))

(declare-fun isBalanced!1080 (Conc!3817) Bool)

(declare-fun slice!370 (Conc!3817 Int Int) Conc!3817)

(assert (=> d!336672 (= res!531237 (isBalanced!1080 (slice!370 (c!195953 (tokens!1676 thiss!10527)) from!787 to!267)))))

(declare-fun lt!404726 () BalanceConc!7656)

(assert (=> d!336672 (= lt!404726 (BalanceConc!7657 (slice!370 (c!195953 (tokens!1676 thiss!10527)) from!787 to!267)))))

(declare-fun e!754036 () Bool)

(assert (=> d!336672 e!754036))

(declare-fun res!531238 () Bool)

(assert (=> d!336672 (=> (not res!531238) (not e!754036))))

(assert (=> d!336672 (= res!531238 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!336672 (= (slice!368 (tokens!1676 thiss!10527) from!787 to!267) lt!404726)))

(declare-fun b!1175257 () Bool)

(declare-fun res!531239 () Bool)

(assert (=> b!1175257 (=> (not res!531239) (not e!754036))))

(assert (=> b!1175257 (= res!531239 (<= to!267 (size!9178 (tokens!1676 thiss!10527))))))

(declare-fun b!1175258 () Bool)

(assert (=> b!1175258 (= e!754036 (isBalanced!1080 (c!195953 (tokens!1676 thiss!10527))))))

(declare-fun b!1175259 () Bool)

(assert (=> b!1175259 (= e!754037 (= (list!4296 lt!404726) (slice!369 (list!4296 (tokens!1676 thiss!10527)) from!787 to!267)))))

(assert (= (and d!336672 res!531238) b!1175257))

(assert (= (and b!1175257 res!531239) b!1175258))

(assert (= (and d!336672 res!531237) b!1175259))

(declare-fun m!1351703 () Bool)

(assert (=> d!336672 m!1351703))

(assert (=> d!336672 m!1351703))

(declare-fun m!1351705 () Bool)

(assert (=> d!336672 m!1351705))

(assert (=> b!1175257 m!1351533))

(declare-fun m!1351707 () Bool)

(assert (=> b!1175258 m!1351707))

(declare-fun m!1351709 () Bool)

(assert (=> b!1175259 m!1351709))

(assert (=> b!1175259 m!1351431))

(assert (=> b!1175259 m!1351431))

(declare-fun m!1351711 () Bool)

(assert (=> b!1175259 m!1351711))

(assert (=> b!1175109 d!336672))

(declare-fun d!336674 () Bool)

(declare-fun lt!404729 () Int)

(declare-fun size!9184 (List!11647) Int)

(declare-fun list!4299 (BalanceConc!7654) List!11647)

(assert (=> d!336674 (= lt!404729 (size!9184 (list!4299 (charsOf!1082 lt!404579))))))

(declare-fun size!9185 (Conc!3816) Int)

(assert (=> d!336674 (= lt!404729 (size!9185 (c!195952 (charsOf!1082 lt!404579))))))

(assert (=> d!336674 (= (size!9179 (charsOf!1082 lt!404579)) lt!404729)))

(declare-fun bs!286390 () Bool)

(assert (= bs!286390 d!336674))

(assert (=> bs!286390 m!1351543))

(declare-fun m!1351713 () Bool)

(assert (=> bs!286390 m!1351713))

(assert (=> bs!286390 m!1351713))

(declare-fun m!1351715 () Bool)

(assert (=> bs!286390 m!1351715))

(declare-fun m!1351717 () Bool)

(assert (=> bs!286390 m!1351717))

(assert (=> b!1175120 d!336674))

(declare-fun d!336676 () Bool)

(declare-fun lt!404732 () BalanceConc!7654)

(assert (=> d!336676 (= (list!4299 lt!404732) (originalCharacters!2581 lt!404579))))

(declare-fun dynLambda!5156 (Int TokenValue!2093) BalanceConc!7654)

(assert (=> d!336676 (= lt!404732 (dynLambda!5156 (toChars!2987 (transformation!2027 (rule!3448 lt!404579))) (value!65766 lt!404579)))))

(assert (=> d!336676 (= (charsOf!1082 lt!404579) lt!404732)))

(declare-fun b_lambda!35153 () Bool)

(assert (=> (not b_lambda!35153) (not d!336676)))

(declare-fun bs!286391 () Bool)

(assert (= bs!286391 d!336676))

(declare-fun m!1351719 () Bool)

(assert (=> bs!286391 m!1351719))

(declare-fun m!1351721 () Bool)

(assert (=> bs!286391 m!1351721))

(assert (=> b!1175120 d!336676))

(declare-fun d!336678 () Bool)

(declare-fun res!531240 () Bool)

(declare-fun e!754038 () Bool)

(assert (=> d!336678 (=> res!531240 e!754038)))

(assert (=> d!336678 (= res!531240 ((_ is Nil!11624) lt!404587))))

(assert (=> d!336678 (= (forall!3088 lt!404587 lambda!48429) e!754038)))

(declare-fun b!1175260 () Bool)

(declare-fun e!754039 () Bool)

(assert (=> b!1175260 (= e!754038 e!754039)))

(declare-fun res!531241 () Bool)

(assert (=> b!1175260 (=> (not res!531241) (not e!754039))))

(assert (=> b!1175260 (= res!531241 (dynLambda!5155 lambda!48429 (h!17025 lt!404587)))))

(declare-fun b!1175261 () Bool)

(assert (=> b!1175261 (= e!754039 (forall!3088 (t!111050 lt!404587) lambda!48429))))

(assert (= (and d!336678 (not res!531240)) b!1175260))

(assert (= (and b!1175260 res!531241) b!1175261))

(declare-fun b_lambda!35155 () Bool)

(assert (=> (not b_lambda!35155) (not b!1175260)))

(declare-fun m!1351723 () Bool)

(assert (=> b!1175260 m!1351723))

(declare-fun m!1351725 () Bool)

(assert (=> b!1175261 m!1351725))

(assert (=> b!1175107 d!336678))

(declare-fun d!336680 () Bool)

(assert (=> d!336680 (subseq!277 (drop!499 lt!404576 from!787) lt!404576)))

(declare-fun lt!404735 () Unit!17926)

(declare-fun choose!7607 (List!11648 Int) Unit!17926)

(assert (=> d!336680 (= lt!404735 (choose!7607 lt!404576 from!787))))

(assert (=> d!336680 (= (lemmaDropSubseq!52 lt!404576 from!787) lt!404735)))

(declare-fun bs!286392 () Bool)

(assert (= bs!286392 d!336680))

(assert (=> bs!286392 m!1351485))

(assert (=> bs!286392 m!1351485))

(declare-fun m!1351727 () Bool)

(assert (=> bs!286392 m!1351727))

(declare-fun m!1351729 () Bool)

(assert (=> bs!286392 m!1351729))

(assert (=> b!1175107 d!336680))

(declare-fun d!336682 () Bool)

(assert (=> d!336682 (= (isEmpty!7052 (rules!9698 thiss!10527)) ((_ is Nil!11625) (rules!9698 thiss!10527)))))

(assert (=> b!1175107 d!336682))

(declare-fun bs!286393 () Bool)

(declare-fun d!336684 () Bool)

(assert (= bs!286393 (and d!336684 b!1175116)))

(declare-fun lambda!48436 () Int)

(assert (=> bs!286393 (= lambda!48436 lambda!48429)))

(declare-fun bs!286394 () Bool)

(assert (= bs!286394 (and d!336684 d!336630)))

(assert (=> bs!286394 (= lambda!48436 lambda!48435)))

(declare-fun b!1175266 () Bool)

(declare-fun e!754044 () Bool)

(assert (=> b!1175266 (= e!754044 true)))

(declare-fun b!1175265 () Bool)

(declare-fun e!754043 () Bool)

(assert (=> b!1175265 (= e!754043 e!754044)))

(declare-fun b!1175264 () Bool)

(declare-fun e!754042 () Bool)

(assert (=> b!1175264 (= e!754042 e!754043)))

(assert (=> d!336684 e!754042))

(assert (= b!1175265 b!1175266))

(assert (= b!1175264 b!1175265))

(assert (= (and d!336684 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175264))

(assert (=> b!1175266 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48436))))

(assert (=> b!1175266 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48436))))

(assert (=> d!336684 true))

(declare-fun lt!404736 () Bool)

(assert (=> d!336684 (= lt!404736 (forall!3088 lt!404587 lambda!48436))))

(declare-fun e!754041 () Bool)

(assert (=> d!336684 (= lt!404736 e!754041)))

(declare-fun res!531242 () Bool)

(assert (=> d!336684 (=> res!531242 e!754041)))

(assert (=> d!336684 (= res!531242 (not ((_ is Cons!11624) lt!404587)))))

(assert (=> d!336684 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336684 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!404587) lt!404736)))

(declare-fun b!1175262 () Bool)

(declare-fun e!754040 () Bool)

(assert (=> b!1175262 (= e!754041 e!754040)))

(declare-fun res!531243 () Bool)

(assert (=> b!1175262 (=> (not res!531243) (not e!754040))))

(assert (=> b!1175262 (= res!531243 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404587)))))

(declare-fun b!1175263 () Bool)

(assert (=> b!1175263 (= e!754040 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404587)))))

(assert (= (and d!336684 (not res!531242)) b!1175262))

(assert (= (and b!1175262 res!531243) b!1175263))

(declare-fun m!1351731 () Bool)

(assert (=> d!336684 m!1351731))

(assert (=> d!336684 m!1351493))

(assert (=> b!1175262 m!1351537))

(assert (=> b!1175263 m!1351531))

(assert (=> b!1175107 d!336684))

(declare-fun b!1175285 () Bool)

(declare-fun e!754055 () List!11648)

(assert (=> b!1175285 (= e!754055 Nil!11624)))

(declare-fun b!1175286 () Bool)

(declare-fun e!754056 () List!11648)

(assert (=> b!1175286 (= e!754056 (drop!499 (t!111050 lt!404576) (- from!787 1)))))

(declare-fun b!1175287 () Bool)

(declare-fun e!754058 () Bool)

(declare-fun lt!404739 () List!11648)

(declare-fun e!754059 () Int)

(assert (=> b!1175287 (= e!754058 (= (size!9183 lt!404739) e!754059))))

(declare-fun c!195965 () Bool)

(assert (=> b!1175287 (= c!195965 (<= from!787 0))))

(declare-fun b!1175288 () Bool)

(declare-fun e!754057 () Int)

(assert (=> b!1175288 (= e!754057 0)))

(declare-fun b!1175289 () Bool)

(assert (=> b!1175289 (= e!754056 lt!404576)))

(declare-fun d!336686 () Bool)

(assert (=> d!336686 e!754058))

(declare-fun res!531246 () Bool)

(assert (=> d!336686 (=> (not res!531246) (not e!754058))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1620 (List!11648) (InoxSet Token!3716))

(assert (=> d!336686 (= res!531246 (= ((_ map implies) (content!1620 lt!404739) (content!1620 lt!404576)) ((as const (InoxSet Token!3716)) true)))))

(assert (=> d!336686 (= lt!404739 e!754055)))

(declare-fun c!195966 () Bool)

(assert (=> d!336686 (= c!195966 ((_ is Nil!11624) lt!404576))))

(assert (=> d!336686 (= (drop!499 lt!404576 from!787) lt!404739)))

(declare-fun b!1175290 () Bool)

(declare-fun call!82419 () Int)

(assert (=> b!1175290 (= e!754059 call!82419)))

(declare-fun b!1175291 () Bool)

(assert (=> b!1175291 (= e!754059 e!754057)))

(declare-fun c!195964 () Bool)

(assert (=> b!1175291 (= c!195964 (>= from!787 call!82419))))

(declare-fun b!1175292 () Bool)

(assert (=> b!1175292 (= e!754055 e!754056)))

(declare-fun c!195963 () Bool)

(assert (=> b!1175292 (= c!195963 (<= from!787 0))))

(declare-fun bm!82414 () Bool)

(assert (=> bm!82414 (= call!82419 (size!9183 lt!404576))))

(declare-fun b!1175293 () Bool)

(assert (=> b!1175293 (= e!754057 (- call!82419 from!787))))

(assert (= (and d!336686 c!195966) b!1175285))

(assert (= (and d!336686 (not c!195966)) b!1175292))

(assert (= (and b!1175292 c!195963) b!1175289))

(assert (= (and b!1175292 (not c!195963)) b!1175286))

(assert (= (and d!336686 res!531246) b!1175287))

(assert (= (and b!1175287 c!195965) b!1175290))

(assert (= (and b!1175287 (not c!195965)) b!1175291))

(assert (= (and b!1175291 c!195964) b!1175288))

(assert (= (and b!1175291 (not c!195964)) b!1175293))

(assert (= (or b!1175290 b!1175291 b!1175293) bm!82414))

(declare-fun m!1351733 () Bool)

(assert (=> b!1175286 m!1351733))

(declare-fun m!1351735 () Bool)

(assert (=> b!1175287 m!1351735))

(declare-fun m!1351737 () Bool)

(assert (=> d!336686 m!1351737))

(declare-fun m!1351739 () Bool)

(assert (=> d!336686 m!1351739))

(assert (=> bm!82414 m!1351685))

(assert (=> b!1175107 d!336686))

(declare-fun d!336688 () Bool)

(assert (=> d!336688 (forall!3088 lt!404587 lambda!48429)))

(declare-fun lt!404740 () Unit!17926)

(assert (=> d!336688 (= lt!404740 (choose!7606 lt!404587 lt!404576 lambda!48429))))

(assert (=> d!336688 (forall!3088 lt!404576 lambda!48429)))

(assert (=> d!336688 (= (lemmaForallSubseq!165 lt!404587 lt!404576 lambda!48429) lt!404740)))

(declare-fun bs!286395 () Bool)

(assert (= bs!286395 d!336688))

(assert (=> bs!286395 m!1351489))

(declare-fun m!1351741 () Bool)

(assert (=> bs!286395 m!1351741))

(assert (=> bs!286395 m!1351701))

(assert (=> b!1175107 d!336688))

(declare-fun d!336690 () Bool)

(assert (=> d!336690 (= (separableTokens!158 Lexer!1720 lt!404575 (rules!9698 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 lt!404575 0 (rules!9698 thiss!10527)))))

(declare-fun bs!286401 () Bool)

(assert (= bs!286401 d!336690))

(assert (=> bs!286401 m!1351477))

(assert (=> b!1175107 d!336690))

(declare-fun bs!286402 () Bool)

(declare-fun b!1175374 () Bool)

(assert (= bs!286402 (and b!1175374 b!1175116)))

(declare-fun lambda!48443 () Int)

(assert (=> bs!286402 (= lambda!48443 lambda!48429)))

(declare-fun bs!286403 () Bool)

(assert (= bs!286403 (and b!1175374 d!336630)))

(assert (=> bs!286403 (= lambda!48443 lambda!48435)))

(declare-fun bs!286404 () Bool)

(assert (= bs!286404 (and b!1175374 d!336684)))

(assert (=> bs!286404 (= lambda!48443 lambda!48436)))

(declare-fun b!1175378 () Bool)

(declare-fun e!754126 () Bool)

(assert (=> b!1175378 (= e!754126 true)))

(declare-fun b!1175377 () Bool)

(declare-fun e!754125 () Bool)

(assert (=> b!1175377 (= e!754125 e!754126)))

(declare-fun b!1175376 () Bool)

(declare-fun e!754124 () Bool)

(assert (=> b!1175376 (= e!754124 e!754125)))

(assert (=> b!1175374 e!754124))

(assert (= b!1175377 b!1175378))

(assert (= b!1175376 b!1175377))

(assert (= (and b!1175374 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175376))

(assert (=> b!1175378 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48443))))

(assert (=> b!1175378 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48443))))

(declare-fun e!754122 () Bool)

(assert (=> b!1175374 (= e!754122 (tokensListTwoByTwoPredicateSeparableList!118 Lexer!1720 (drop!499 lt!404576 from!787) (rules!9698 thiss!10527)))))

(declare-fun lt!404839 () Unit!17926)

(declare-fun lt!404835 () Unit!17926)

(assert (=> b!1175374 (= lt!404839 lt!404835)))

(declare-fun lt!404837 () List!11648)

(assert (=> b!1175374 (forall!3088 lt!404837 lambda!48443)))

(assert (=> b!1175374 (= lt!404835 (lemmaForallSubseq!165 lt!404837 lt!404576 lambda!48443))))

(declare-fun e!754123 () Bool)

(assert (=> b!1175374 e!754123))

(declare-fun res!531289 () Bool)

(assert (=> b!1175374 (=> (not res!531289) (not e!754123))))

(assert (=> b!1175374 (= res!531289 (forall!3088 lt!404576 lambda!48443))))

(assert (=> b!1175374 (= lt!404837 (drop!499 lt!404576 from!787))))

(declare-fun lt!404838 () Unit!17926)

(declare-fun lt!404836 () Unit!17926)

(assert (=> b!1175374 (= lt!404838 lt!404836)))

(assert (=> b!1175374 (subseq!277 (drop!499 lt!404576 from!787) lt!404576)))

(assert (=> b!1175374 (= lt!404836 (lemmaDropSubseq!52 lt!404576 from!787))))

(declare-fun d!336702 () Bool)

(assert (=> d!336702 e!754122))

(declare-fun res!531290 () Bool)

(assert (=> d!336702 (=> (not res!531290) (not e!754122))))

(declare-fun e!754121 () Bool)

(assert (=> d!336702 (= res!531290 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (drop!499 lt!404576 from!787)) e!754121))))

(declare-fun res!531291 () Bool)

(assert (=> d!336702 (=> res!531291 e!754121)))

(declare-fun lt!404840 () List!11648)

(assert (=> d!336702 (= res!531291 (not ((_ is Cons!11624) lt!404840)))))

(assert (=> d!336702 (= lt!404840 (drop!499 lt!404576 from!787))))

(declare-fun lt!404834 () Unit!17926)

(declare-fun choose!7608 (LexerInterface!1722 List!11648 Int List!11649) Unit!17926)

(assert (=> d!336702 (= lt!404834 (choose!7608 Lexer!1720 lt!404576 from!787 (rules!9698 thiss!10527)))))

(assert (=> d!336702 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336702 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!52 Lexer!1720 lt!404576 from!787 (rules!9698 thiss!10527)) lt!404834)))

(declare-fun b!1175372 () Bool)

(declare-fun e!754120 () Bool)

(assert (=> b!1175372 (= e!754121 e!754120)))

(declare-fun res!531292 () Bool)

(assert (=> b!1175372 (=> (not res!531292) (not e!754120))))

(assert (=> b!1175372 (= res!531292 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404840)))))

(declare-fun b!1175373 () Bool)

(assert (=> b!1175373 (= e!754120 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404840)))))

(declare-fun b!1175375 () Bool)

(assert (=> b!1175375 (= e!754123 (subseq!277 lt!404837 lt!404576))))

(assert (= (and d!336702 (not res!531291)) b!1175372))

(assert (= (and b!1175372 res!531292) b!1175373))

(assert (= (and d!336702 res!531290) b!1175374))

(assert (= (and b!1175374 res!531289) b!1175375))

(declare-fun m!1351869 () Bool)

(assert (=> b!1175373 m!1351869))

(assert (=> d!336702 m!1351485))

(assert (=> d!336702 m!1351485))

(declare-fun m!1351871 () Bool)

(assert (=> d!336702 m!1351871))

(declare-fun m!1351873 () Bool)

(assert (=> d!336702 m!1351873))

(assert (=> d!336702 m!1351493))

(declare-fun m!1351875 () Bool)

(assert (=> b!1175375 m!1351875))

(declare-fun m!1351877 () Bool)

(assert (=> b!1175374 m!1351877))

(declare-fun m!1351879 () Bool)

(assert (=> b!1175374 m!1351879))

(assert (=> b!1175374 m!1351479))

(assert (=> b!1175374 m!1351485))

(assert (=> b!1175374 m!1351485))

(declare-fun m!1351881 () Bool)

(assert (=> b!1175374 m!1351881))

(declare-fun m!1351883 () Bool)

(assert (=> b!1175374 m!1351883))

(assert (=> b!1175374 m!1351485))

(assert (=> b!1175374 m!1351727))

(declare-fun m!1351885 () Bool)

(assert (=> b!1175372 m!1351885))

(assert (=> b!1175107 d!336702))

(declare-fun b!1175423 () Bool)

(declare-fun e!754164 () Bool)

(declare-fun lt!404931 () List!11648)

(assert (=> b!1175423 (= e!754164 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!404931))))

(declare-fun b!1175424 () Bool)

(declare-fun e!754165 () Bool)

(declare-fun lt!404928 () List!11648)

(assert (=> b!1175424 (= e!754165 (<= 0 (size!9183 lt!404928)))))

(declare-fun b!1175425 () Bool)

(declare-fun e!754161 () Bool)

(declare-fun e!754163 () Bool)

(assert (=> b!1175425 (= e!754161 e!754163)))

(declare-fun res!531329 () Bool)

(assert (=> b!1175425 (=> (not res!531329) (not e!754163))))

(assert (=> b!1175425 (= res!531329 (separableTokensPredicate!144 Lexer!1720 (apply!2547 lt!404575 0) (apply!2547 lt!404575 (+ 0 1)) (rules!9698 thiss!10527)))))

(declare-fun lt!404949 () Unit!17926)

(declare-fun Unit!17938 () Unit!17926)

(assert (=> b!1175425 (= lt!404949 Unit!17938)))

(assert (=> b!1175425 (> (size!9179 (charsOf!1082 (apply!2547 lt!404575 (+ 0 1)))) 0)))

(declare-fun lt!404935 () Unit!17926)

(declare-fun Unit!17939 () Unit!17926)

(assert (=> b!1175425 (= lt!404935 Unit!17939)))

(assert (=> b!1175425 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (apply!2547 lt!404575 (+ 0 1)))))

(declare-fun lt!404953 () Unit!17926)

(declare-fun Unit!17940 () Unit!17926)

(assert (=> b!1175425 (= lt!404953 Unit!17940)))

(assert (=> b!1175425 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (apply!2547 lt!404575 0))))

(declare-fun lt!404941 () Unit!17926)

(declare-fun lt!404926 () Unit!17926)

(assert (=> b!1175425 (= lt!404941 lt!404926)))

(declare-fun lt!404956 () Token!3716)

(assert (=> b!1175425 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!404956)))

(declare-fun lt!404927 () List!11648)

(assert (=> b!1175425 (= lt!404926 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!404927 lt!404956))))

(assert (=> b!1175425 (= lt!404956 (apply!2547 lt!404575 (+ 0 1)))))

(assert (=> b!1175425 (= lt!404927 (list!4296 lt!404575))))

(declare-fun lt!404947 () Unit!17926)

(declare-fun lt!404948 () Unit!17926)

(assert (=> b!1175425 (= lt!404947 lt!404948)))

(declare-fun lt!404924 () Token!3716)

(assert (=> b!1175425 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!404924)))

(declare-fun lt!404936 () List!11648)

(assert (=> b!1175425 (= lt!404948 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!404936 lt!404924))))

(assert (=> b!1175425 (= lt!404924 (apply!2547 lt!404575 0))))

(assert (=> b!1175425 (= lt!404936 (list!4296 lt!404575))))

(declare-fun lt!404955 () Unit!17926)

(declare-fun lt!404930 () Unit!17926)

(assert (=> b!1175425 (= lt!404955 lt!404930)))

(declare-fun lt!404929 () List!11648)

(declare-fun lt!404933 () Int)

(assert (=> b!1175425 (= (tail!1700 (drop!499 lt!404929 lt!404933)) (drop!499 lt!404929 (+ lt!404933 1)))))

(assert (=> b!1175425 (= lt!404930 (lemmaDropTail!373 lt!404929 lt!404933))))

(assert (=> b!1175425 (= lt!404933 (+ 0 1))))

(assert (=> b!1175425 (= lt!404929 (list!4296 lt!404575))))

(declare-fun lt!404938 () Unit!17926)

(declare-fun lt!404950 () Unit!17926)

(assert (=> b!1175425 (= lt!404938 lt!404950)))

(declare-fun lt!404934 () List!11648)

(assert (=> b!1175425 (= (tail!1700 (drop!499 lt!404934 0)) (drop!499 lt!404934 (+ 0 1)))))

(assert (=> b!1175425 (= lt!404950 (lemmaDropTail!373 lt!404934 0))))

(assert (=> b!1175425 (= lt!404934 (list!4296 lt!404575))))

(declare-fun lt!404946 () Unit!17926)

(declare-fun lt!404940 () Unit!17926)

(assert (=> b!1175425 (= lt!404946 lt!404940)))

(declare-fun lt!404954 () List!11648)

(declare-fun lt!404952 () Int)

(assert (=> b!1175425 (= (head!2116 (drop!499 lt!404954 lt!404952)) (apply!2548 lt!404954 lt!404952))))

(assert (=> b!1175425 (= lt!404940 (lemmaDropApply!385 lt!404954 lt!404952))))

(assert (=> b!1175425 (= lt!404952 (+ 0 1))))

(assert (=> b!1175425 (= lt!404954 (list!4296 lt!404575))))

(declare-fun lt!404945 () Unit!17926)

(declare-fun lt!404937 () Unit!17926)

(assert (=> b!1175425 (= lt!404945 lt!404937)))

(declare-fun lt!404925 () List!11648)

(assert (=> b!1175425 (= (head!2116 (drop!499 lt!404925 0)) (apply!2548 lt!404925 0))))

(assert (=> b!1175425 (= lt!404937 (lemmaDropApply!385 lt!404925 0))))

(assert (=> b!1175425 (= lt!404925 (list!4296 lt!404575))))

(declare-fun b!1175426 () Bool)

(declare-fun e!754162 () Bool)

(assert (=> b!1175426 (= e!754162 (<= 0 (size!9178 lt!404575)))))

(declare-fun b!1175427 () Bool)

(declare-fun res!531331 () Bool)

(assert (=> b!1175427 (=> (not res!531331) (not e!754164))))

(declare-fun lt!404942 () List!11648)

(assert (=> b!1175427 (= res!531331 (subseq!277 lt!404942 lt!404931))))

(declare-fun b!1175428 () Bool)

(declare-fun res!531332 () Bool)

(assert (=> b!1175428 (=> (not res!531332) (not e!754164))))

(assert (=> b!1175428 (= res!531332 (rulesInvariant!1596 Lexer!1720 (rules!9698 thiss!10527)))))

(declare-fun d!336706 () Bool)

(declare-fun lt!404951 () Bool)

(declare-fun dropList!334 (BalanceConc!7656 Int) List!11648)

(assert (=> d!336706 (= lt!404951 (tokensListTwoByTwoPredicateSeparableList!118 Lexer!1720 (dropList!334 lt!404575 0) (rules!9698 thiss!10527)))))

(declare-fun lt!404944 () Unit!17926)

(declare-fun lt!404943 () Unit!17926)

(assert (=> d!336706 (= lt!404944 lt!404943)))

(assert (=> d!336706 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!404942)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!40 (LexerInterface!1722 List!11649 List!11648 List!11648) Unit!17926)

(assert (=> d!336706 (= lt!404943 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!40 Lexer!1720 (rules!9698 thiss!10527) lt!404931 lt!404942))))

(assert (=> d!336706 e!754164))

(declare-fun res!531328 () Bool)

(assert (=> d!336706 (=> (not res!531328) (not e!754164))))

(assert (=> d!336706 (= res!531328 ((_ is Lexer!1720) Lexer!1720))))

(assert (=> d!336706 (= lt!404942 (dropList!334 lt!404575 0))))

(assert (=> d!336706 (= lt!404931 (list!4296 lt!404575))))

(declare-fun lt!404932 () Unit!17926)

(declare-fun lt!404939 () Unit!17926)

(assert (=> d!336706 (= lt!404932 lt!404939)))

(assert (=> d!336706 (subseq!277 (drop!499 lt!404928 0) lt!404928)))

(declare-fun lemmaDropSubSeq!40 (List!11648 Int) Unit!17926)

(assert (=> d!336706 (= lt!404939 (lemmaDropSubSeq!40 lt!404928 0))))

(assert (=> d!336706 e!754165))

(declare-fun res!531333 () Bool)

(assert (=> d!336706 (=> (not res!531333) (not e!754165))))

(assert (=> d!336706 (= res!531333 (>= 0 0))))

(assert (=> d!336706 (= lt!404928 (list!4296 lt!404575))))

(assert (=> d!336706 (= lt!404951 e!754161)))

(declare-fun res!531334 () Bool)

(assert (=> d!336706 (=> res!531334 e!754161)))

(assert (=> d!336706 (= res!531334 (not (< 0 (- (size!9178 lt!404575) 1))))))

(assert (=> d!336706 e!754162))

(declare-fun res!531330 () Bool)

(assert (=> d!336706 (=> (not res!531330) (not e!754162))))

(assert (=> d!336706 (= res!531330 (>= 0 0))))

(assert (=> d!336706 (= (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 lt!404575 0 (rules!9698 thiss!10527)) lt!404951)))

(declare-fun b!1175429 () Bool)

(declare-fun res!531335 () Bool)

(assert (=> b!1175429 (=> (not res!531335) (not e!754164))))

(assert (=> b!1175429 (= res!531335 (not (isEmpty!7052 (rules!9698 thiss!10527))))))

(declare-fun b!1175430 () Bool)

(assert (=> b!1175430 (= e!754163 (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 lt!404575 (+ 0 1) (rules!9698 thiss!10527)))))

(assert (= (and d!336706 res!531330) b!1175426))

(assert (= (and d!336706 (not res!531334)) b!1175425))

(assert (= (and b!1175425 res!531329) b!1175430))

(assert (= (and d!336706 res!531333) b!1175424))

(assert (= (and d!336706 res!531328) b!1175429))

(assert (= (and b!1175429 res!531335) b!1175428))

(assert (= (and b!1175428 res!531332) b!1175427))

(assert (= (and b!1175427 res!531331) b!1175423))

(declare-fun m!1351947 () Bool)

(assert (=> b!1175427 m!1351947))

(assert (=> b!1175428 m!1351505))

(declare-fun m!1351949 () Bool)

(assert (=> b!1175426 m!1351949))

(assert (=> d!336706 m!1351517))

(declare-fun m!1351951 () Bool)

(assert (=> d!336706 m!1351951))

(declare-fun m!1351953 () Bool)

(assert (=> d!336706 m!1351953))

(declare-fun m!1351955 () Bool)

(assert (=> d!336706 m!1351955))

(declare-fun m!1351957 () Bool)

(assert (=> d!336706 m!1351957))

(assert (=> d!336706 m!1351949))

(assert (=> d!336706 m!1351953))

(declare-fun m!1351959 () Bool)

(assert (=> d!336706 m!1351959))

(assert (=> d!336706 m!1351951))

(declare-fun m!1351961 () Bool)

(assert (=> d!336706 m!1351961))

(declare-fun m!1351963 () Bool)

(assert (=> d!336706 m!1351963))

(assert (=> b!1175429 m!1351493))

(declare-fun m!1351965 () Bool)

(assert (=> b!1175425 m!1351965))

(declare-fun m!1351967 () Bool)

(assert (=> b!1175425 m!1351967))

(declare-fun m!1351969 () Bool)

(assert (=> b!1175425 m!1351969))

(declare-fun m!1351971 () Bool)

(assert (=> b!1175425 m!1351971))

(declare-fun m!1351973 () Bool)

(assert (=> b!1175425 m!1351973))

(declare-fun m!1351975 () Bool)

(assert (=> b!1175425 m!1351975))

(declare-fun m!1351977 () Bool)

(assert (=> b!1175425 m!1351977))

(declare-fun m!1351979 () Bool)

(assert (=> b!1175425 m!1351979))

(assert (=> b!1175425 m!1351965))

(declare-fun m!1351981 () Bool)

(assert (=> b!1175425 m!1351981))

(assert (=> b!1175425 m!1351969))

(declare-fun m!1351983 () Bool)

(assert (=> b!1175425 m!1351983))

(declare-fun m!1351985 () Bool)

(assert (=> b!1175425 m!1351985))

(declare-fun m!1351987 () Bool)

(assert (=> b!1175425 m!1351987))

(declare-fun m!1351989 () Bool)

(assert (=> b!1175425 m!1351989))

(declare-fun m!1351991 () Bool)

(assert (=> b!1175425 m!1351991))

(declare-fun m!1351993 () Bool)

(assert (=> b!1175425 m!1351993))

(declare-fun m!1351995 () Bool)

(assert (=> b!1175425 m!1351995))

(declare-fun m!1351997 () Bool)

(assert (=> b!1175425 m!1351997))

(assert (=> b!1175425 m!1351985))

(assert (=> b!1175425 m!1351979))

(declare-fun m!1351999 () Bool)

(assert (=> b!1175425 m!1351999))

(assert (=> b!1175425 m!1351517))

(assert (=> b!1175425 m!1351979))

(declare-fun m!1352001 () Bool)

(assert (=> b!1175425 m!1352001))

(declare-fun m!1352003 () Bool)

(assert (=> b!1175425 m!1352003))

(declare-fun m!1352005 () Bool)

(assert (=> b!1175425 m!1352005))

(declare-fun m!1352007 () Bool)

(assert (=> b!1175425 m!1352007))

(assert (=> b!1175425 m!1351993))

(declare-fun m!1352009 () Bool)

(assert (=> b!1175425 m!1352009))

(declare-fun m!1352011 () Bool)

(assert (=> b!1175425 m!1352011))

(declare-fun m!1352013 () Bool)

(assert (=> b!1175425 m!1352013))

(assert (=> b!1175425 m!1351975))

(assert (=> b!1175425 m!1351979))

(declare-fun m!1352015 () Bool)

(assert (=> b!1175425 m!1352015))

(assert (=> b!1175425 m!1351985))

(assert (=> b!1175425 m!1352015))

(declare-fun m!1352017 () Bool)

(assert (=> b!1175425 m!1352017))

(declare-fun m!1352019 () Bool)

(assert (=> b!1175424 m!1352019))

(declare-fun m!1352021 () Bool)

(assert (=> b!1175430 m!1352021))

(declare-fun m!1352023 () Bool)

(assert (=> b!1175423 m!1352023))

(assert (=> b!1175107 d!336706))

(declare-fun d!336726 () Bool)

(declare-fun res!531338 () Bool)

(declare-fun e!754167 () Bool)

(assert (=> d!336726 (=> res!531338 e!754167)))

(assert (=> d!336726 (= res!531338 ((_ is Nil!11624) lt!404587))))

(assert (=> d!336726 (= (subseq!277 lt!404587 lt!404576) e!754167)))

(declare-fun b!1175433 () Bool)

(declare-fun e!754168 () Bool)

(assert (=> b!1175433 (= e!754168 (subseq!277 (t!111050 lt!404587) (t!111050 lt!404576)))))

(declare-fun b!1175432 () Bool)

(declare-fun e!754169 () Bool)

(declare-fun e!754166 () Bool)

(assert (=> b!1175432 (= e!754169 e!754166)))

(declare-fun res!531337 () Bool)

(assert (=> b!1175432 (=> res!531337 e!754166)))

(assert (=> b!1175432 (= res!531337 e!754168)))

(declare-fun res!531336 () Bool)

(assert (=> b!1175432 (=> (not res!531336) (not e!754168))))

(assert (=> b!1175432 (= res!531336 (= (h!17025 lt!404587) (h!17025 lt!404576)))))

(declare-fun b!1175434 () Bool)

(assert (=> b!1175434 (= e!754166 (subseq!277 lt!404587 (t!111050 lt!404576)))))

(declare-fun b!1175431 () Bool)

(assert (=> b!1175431 (= e!754167 e!754169)))

(declare-fun res!531339 () Bool)

(assert (=> b!1175431 (=> (not res!531339) (not e!754169))))

(assert (=> b!1175431 (= res!531339 ((_ is Cons!11624) lt!404576))))

(assert (= (and d!336726 (not res!531338)) b!1175431))

(assert (= (and b!1175431 res!531339) b!1175432))

(assert (= (and b!1175432 res!531336) b!1175433))

(assert (= (and b!1175432 (not res!531337)) b!1175434))

(declare-fun m!1352025 () Bool)

(assert (=> b!1175433 m!1352025))

(declare-fun m!1352027 () Bool)

(assert (=> b!1175434 m!1352027))

(assert (=> b!1175107 d!336726))

(declare-fun d!336728 () Bool)

(assert (=> d!336728 (= (tail!1700 (drop!499 lt!404576 0)) (drop!499 lt!404576 (+ 0 1)))))

(declare-fun lt!404959 () Unit!17926)

(declare-fun choose!7609 (List!11648 Int) Unit!17926)

(assert (=> d!336728 (= lt!404959 (choose!7609 lt!404576 0))))

(declare-fun e!754172 () Bool)

(assert (=> d!336728 e!754172))

(declare-fun res!531342 () Bool)

(assert (=> d!336728 (=> (not res!531342) (not e!754172))))

(assert (=> d!336728 (= res!531342 (>= 0 0))))

(assert (=> d!336728 (= (lemmaDropTail!373 lt!404576 0) lt!404959)))

(declare-fun b!1175437 () Bool)

(assert (=> b!1175437 (= e!754172 (< 0 (size!9183 lt!404576)))))

(assert (= (and d!336728 res!531342) b!1175437))

(assert (=> d!336728 m!1351469))

(assert (=> d!336728 m!1351469))

(declare-fun m!1352029 () Bool)

(assert (=> d!336728 m!1352029))

(declare-fun m!1352031 () Bool)

(assert (=> d!336728 m!1352031))

(declare-fun m!1352033 () Bool)

(assert (=> d!336728 m!1352033))

(assert (=> b!1175437 m!1351685))

(assert (=> b!1175118 d!336728))

(declare-fun d!336730 () Bool)

(declare-fun lt!404962 () Token!3716)

(declare-fun contains!2009 (List!11648 Token!3716) Bool)

(assert (=> d!336730 (contains!2009 lt!404576 lt!404962)))

(declare-fun e!754177 () Token!3716)

(assert (=> d!336730 (= lt!404962 e!754177)))

(declare-fun c!195984 () Bool)

(assert (=> d!336730 (= c!195984 (= 0 0))))

(declare-fun e!754178 () Bool)

(assert (=> d!336730 e!754178))

(declare-fun res!531345 () Bool)

(assert (=> d!336730 (=> (not res!531345) (not e!754178))))

(assert (=> d!336730 (= res!531345 (<= 0 0))))

(assert (=> d!336730 (= (apply!2548 lt!404576 0) lt!404962)))

(declare-fun b!1175444 () Bool)

(assert (=> b!1175444 (= e!754178 (< 0 (size!9183 lt!404576)))))

(declare-fun b!1175445 () Bool)

(assert (=> b!1175445 (= e!754177 (head!2116 lt!404576))))

(declare-fun b!1175446 () Bool)

(assert (=> b!1175446 (= e!754177 (apply!2548 (tail!1700 lt!404576) (- 0 1)))))

(assert (= (and d!336730 res!531345) b!1175444))

(assert (= (and d!336730 c!195984) b!1175445))

(assert (= (and d!336730 (not c!195984)) b!1175446))

(declare-fun m!1352035 () Bool)

(assert (=> d!336730 m!1352035))

(assert (=> b!1175444 m!1351685))

(declare-fun m!1352037 () Bool)

(assert (=> b!1175445 m!1352037))

(declare-fun m!1352039 () Bool)

(assert (=> b!1175446 m!1352039))

(assert (=> b!1175446 m!1352039))

(declare-fun m!1352041 () Bool)

(assert (=> b!1175446 m!1352041))

(assert (=> b!1175118 d!336730))

(declare-fun d!336732 () Bool)

(assert (=> d!336732 (= (tail!1700 lt!404594) (t!111050 lt!404594))))

(assert (=> b!1175118 d!336732))

(declare-fun d!336734 () Bool)

(declare-fun lt!404965 () Token!3716)

(assert (=> d!336734 (= lt!404965 (apply!2548 (list!4296 (tokens!1676 thiss!10527)) 1))))

(declare-fun apply!2549 (Conc!3817 Int) Token!3716)

(assert (=> d!336734 (= lt!404965 (apply!2549 (c!195953 (tokens!1676 thiss!10527)) 1))))

(declare-fun e!754181 () Bool)

(assert (=> d!336734 e!754181))

(declare-fun res!531348 () Bool)

(assert (=> d!336734 (=> (not res!531348) (not e!754181))))

(assert (=> d!336734 (= res!531348 (<= 0 1))))

(assert (=> d!336734 (= (apply!2547 (tokens!1676 thiss!10527) 1) lt!404965)))

(declare-fun b!1175449 () Bool)

(assert (=> b!1175449 (= e!754181 (< 1 (size!9178 (tokens!1676 thiss!10527))))))

(assert (= (and d!336734 res!531348) b!1175449))

(assert (=> d!336734 m!1351431))

(assert (=> d!336734 m!1351431))

(declare-fun m!1352043 () Bool)

(assert (=> d!336734 m!1352043))

(declare-fun m!1352045 () Bool)

(assert (=> d!336734 m!1352045))

(assert (=> b!1175449 m!1351533))

(assert (=> b!1175118 d!336734))

(declare-fun d!336736 () Bool)

(declare-fun lt!404966 () Bool)

(declare-fun e!754182 () Bool)

(assert (=> d!336736 (= lt!404966 e!754182)))

(declare-fun res!531350 () Bool)

(assert (=> d!336736 (=> (not res!531350) (not e!754182))))

(assert (=> d!336736 (= res!531350 (= (list!4296 (_1!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 lt!404592))))) (list!4296 (singletonSeq!694 lt!404592))))))

(declare-fun e!754183 () Bool)

(assert (=> d!336736 (= lt!404966 e!754183)))

(declare-fun res!531349 () Bool)

(assert (=> d!336736 (=> (not res!531349) (not e!754183))))

(declare-fun lt!404967 () tuple2!12062)

(assert (=> d!336736 (= res!531349 (= (size!9178 (_1!6878 lt!404967)) 1))))

(assert (=> d!336736 (= lt!404967 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 lt!404592))))))

(assert (=> d!336736 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336736 (= (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!404592) lt!404966)))

(declare-fun b!1175450 () Bool)

(declare-fun res!531351 () Bool)

(assert (=> b!1175450 (=> (not res!531351) (not e!754183))))

(assert (=> b!1175450 (= res!531351 (= (apply!2547 (_1!6878 lt!404967) 0) lt!404592))))

(declare-fun b!1175451 () Bool)

(assert (=> b!1175451 (= e!754183 (isEmpty!7053 (_2!6878 lt!404967)))))

(declare-fun b!1175452 () Bool)

(assert (=> b!1175452 (= e!754182 (isEmpty!7053 (_2!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 lt!404592))))))))

(assert (= (and d!336736 res!531349) b!1175450))

(assert (= (and b!1175450 res!531351) b!1175451))

(assert (= (and d!336736 res!531350) b!1175452))

(declare-fun m!1352047 () Bool)

(assert (=> d!336736 m!1352047))

(declare-fun m!1352049 () Bool)

(assert (=> d!336736 m!1352049))

(declare-fun m!1352051 () Bool)

(assert (=> d!336736 m!1352051))

(assert (=> d!336736 m!1352049))

(declare-fun m!1352053 () Bool)

(assert (=> d!336736 m!1352053))

(assert (=> d!336736 m!1352049))

(assert (=> d!336736 m!1352053))

(declare-fun m!1352055 () Bool)

(assert (=> d!336736 m!1352055))

(declare-fun m!1352057 () Bool)

(assert (=> d!336736 m!1352057))

(assert (=> d!336736 m!1351493))

(declare-fun m!1352059 () Bool)

(assert (=> b!1175450 m!1352059))

(declare-fun m!1352061 () Bool)

(assert (=> b!1175451 m!1352061))

(assert (=> b!1175452 m!1352049))

(assert (=> b!1175452 m!1352049))

(assert (=> b!1175452 m!1352053))

(assert (=> b!1175452 m!1352053))

(assert (=> b!1175452 m!1352055))

(declare-fun m!1352063 () Bool)

(assert (=> b!1175452 m!1352063))

(assert (=> b!1175118 d!336736))

(declare-fun b!1175453 () Bool)

(declare-fun e!754184 () List!11648)

(assert (=> b!1175453 (= e!754184 Nil!11624)))

(declare-fun b!1175454 () Bool)

(declare-fun e!754185 () List!11648)

(assert (=> b!1175454 (= e!754185 (drop!499 (t!111050 lt!404576) (- 1 1)))))

(declare-fun b!1175455 () Bool)

(declare-fun e!754187 () Bool)

(declare-fun lt!404968 () List!11648)

(declare-fun e!754188 () Int)

(assert (=> b!1175455 (= e!754187 (= (size!9183 lt!404968) e!754188))))

(declare-fun c!195987 () Bool)

(assert (=> b!1175455 (= c!195987 (<= 1 0))))

(declare-fun b!1175456 () Bool)

(declare-fun e!754186 () Int)

(assert (=> b!1175456 (= e!754186 0)))

(declare-fun b!1175457 () Bool)

(assert (=> b!1175457 (= e!754185 lt!404576)))

(declare-fun d!336738 () Bool)

(assert (=> d!336738 e!754187))

(declare-fun res!531352 () Bool)

(assert (=> d!336738 (=> (not res!531352) (not e!754187))))

(assert (=> d!336738 (= res!531352 (= ((_ map implies) (content!1620 lt!404968) (content!1620 lt!404576)) ((as const (InoxSet Token!3716)) true)))))

(assert (=> d!336738 (= lt!404968 e!754184)))

(declare-fun c!195988 () Bool)

(assert (=> d!336738 (= c!195988 ((_ is Nil!11624) lt!404576))))

(assert (=> d!336738 (= (drop!499 lt!404576 1) lt!404968)))

(declare-fun b!1175458 () Bool)

(declare-fun call!82423 () Int)

(assert (=> b!1175458 (= e!754188 call!82423)))

(declare-fun b!1175459 () Bool)

(assert (=> b!1175459 (= e!754188 e!754186)))

(declare-fun c!195986 () Bool)

(assert (=> b!1175459 (= c!195986 (>= 1 call!82423))))

(declare-fun b!1175460 () Bool)

(assert (=> b!1175460 (= e!754184 e!754185)))

(declare-fun c!195985 () Bool)

(assert (=> b!1175460 (= c!195985 (<= 1 0))))

(declare-fun bm!82418 () Bool)

(assert (=> bm!82418 (= call!82423 (size!9183 lt!404576))))

(declare-fun b!1175461 () Bool)

(assert (=> b!1175461 (= e!754186 (- call!82423 1))))

(assert (= (and d!336738 c!195988) b!1175453))

(assert (= (and d!336738 (not c!195988)) b!1175460))

(assert (= (and b!1175460 c!195985) b!1175457))

(assert (= (and b!1175460 (not c!195985)) b!1175454))

(assert (= (and d!336738 res!531352) b!1175455))

(assert (= (and b!1175455 c!195987) b!1175458))

(assert (= (and b!1175455 (not c!195987)) b!1175459))

(assert (= (and b!1175459 c!195986) b!1175456))

(assert (= (and b!1175459 (not c!195986)) b!1175461))

(assert (= (or b!1175458 b!1175459 b!1175461) bm!82418))

(declare-fun m!1352065 () Bool)

(assert (=> b!1175454 m!1352065))

(declare-fun m!1352067 () Bool)

(assert (=> b!1175455 m!1352067))

(declare-fun m!1352069 () Bool)

(assert (=> d!336738 m!1352069))

(assert (=> d!336738 m!1351739))

(assert (=> bm!82418 m!1351685))

(assert (=> b!1175118 d!336738))

(declare-fun d!336740 () Bool)

(assert (=> d!336740 (= (head!2116 lt!404590) (h!17025 lt!404590))))

(assert (=> b!1175118 d!336740))

(declare-fun d!336742 () Bool)

(declare-fun lt!404969 () Token!3716)

(assert (=> d!336742 (contains!2009 lt!404576 lt!404969)))

(declare-fun e!754189 () Token!3716)

(assert (=> d!336742 (= lt!404969 e!754189)))

(declare-fun c!195989 () Bool)

(assert (=> d!336742 (= c!195989 (= 1 0))))

(declare-fun e!754190 () Bool)

(assert (=> d!336742 e!754190))

(declare-fun res!531353 () Bool)

(assert (=> d!336742 (=> (not res!531353) (not e!754190))))

(assert (=> d!336742 (= res!531353 (<= 0 1))))

(assert (=> d!336742 (= (apply!2548 lt!404576 1) lt!404969)))

(declare-fun b!1175462 () Bool)

(assert (=> b!1175462 (= e!754190 (< 1 (size!9183 lt!404576)))))

(declare-fun b!1175463 () Bool)

(assert (=> b!1175463 (= e!754189 (head!2116 lt!404576))))

(declare-fun b!1175464 () Bool)

(assert (=> b!1175464 (= e!754189 (apply!2548 (tail!1700 lt!404576) (- 1 1)))))

(assert (= (and d!336742 res!531353) b!1175462))

(assert (= (and d!336742 c!195989) b!1175463))

(assert (= (and d!336742 (not c!195989)) b!1175464))

(declare-fun m!1352071 () Bool)

(assert (=> d!336742 m!1352071))

(assert (=> b!1175462 m!1351685))

(assert (=> b!1175463 m!1352037))

(assert (=> b!1175464 m!1352039))

(assert (=> b!1175464 m!1352039))

(declare-fun m!1352073 () Bool)

(assert (=> b!1175464 m!1352073))

(assert (=> b!1175118 d!336742))

(declare-fun d!336744 () Bool)

(assert (=> d!336744 (= (head!2116 (drop!499 lt!404576 0)) (apply!2548 lt!404576 0))))

(declare-fun lt!404972 () Unit!17926)

(declare-fun choose!7611 (List!11648 Int) Unit!17926)

(assert (=> d!336744 (= lt!404972 (choose!7611 lt!404576 0))))

(declare-fun e!754193 () Bool)

(assert (=> d!336744 e!754193))

(declare-fun res!531356 () Bool)

(assert (=> d!336744 (=> (not res!531356) (not e!754193))))

(assert (=> d!336744 (= res!531356 (>= 0 0))))

(assert (=> d!336744 (= (lemmaDropApply!385 lt!404576 0) lt!404972)))

(declare-fun b!1175467 () Bool)

(assert (=> b!1175467 (= e!754193 (< 0 (size!9183 lt!404576)))))

(assert (= (and d!336744 res!531356) b!1175467))

(assert (=> d!336744 m!1351469))

(assert (=> d!336744 m!1351469))

(declare-fun m!1352075 () Bool)

(assert (=> d!336744 m!1352075))

(assert (=> d!336744 m!1351447))

(declare-fun m!1352077 () Bool)

(assert (=> d!336744 m!1352077))

(assert (=> b!1175467 m!1351685))

(assert (=> b!1175118 d!336744))

(declare-fun d!336746 () Bool)

(declare-fun lt!404973 () Bool)

(declare-fun e!754194 () Bool)

(assert (=> d!336746 (= lt!404973 e!754194)))

(declare-fun res!531358 () Bool)

(assert (=> d!336746 (=> (not res!531358) (not e!754194))))

(assert (=> d!336746 (= res!531358 (= (list!4296 (_1!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 lt!404579))))) (list!4296 (singletonSeq!694 lt!404579))))))

(declare-fun e!754195 () Bool)

(assert (=> d!336746 (= lt!404973 e!754195)))

(declare-fun res!531357 () Bool)

(assert (=> d!336746 (=> (not res!531357) (not e!754195))))

(declare-fun lt!404974 () tuple2!12062)

(assert (=> d!336746 (= res!531357 (= (size!9178 (_1!6878 lt!404974)) 1))))

(assert (=> d!336746 (= lt!404974 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 lt!404579))))))

(assert (=> d!336746 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336746 (= (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!404579) lt!404973)))

(declare-fun b!1175468 () Bool)

(declare-fun res!531359 () Bool)

(assert (=> b!1175468 (=> (not res!531359) (not e!754195))))

(assert (=> b!1175468 (= res!531359 (= (apply!2547 (_1!6878 lt!404974) 0) lt!404579))))

(declare-fun b!1175469 () Bool)

(assert (=> b!1175469 (= e!754195 (isEmpty!7053 (_2!6878 lt!404974)))))

(declare-fun b!1175470 () Bool)

(assert (=> b!1175470 (= e!754194 (isEmpty!7053 (_2!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 lt!404579))))))))

(assert (= (and d!336746 res!531357) b!1175468))

(assert (= (and b!1175468 res!531359) b!1175469))

(assert (= (and d!336746 res!531358) b!1175470))

(declare-fun m!1352079 () Bool)

(assert (=> d!336746 m!1352079))

(declare-fun m!1352081 () Bool)

(assert (=> d!336746 m!1352081))

(declare-fun m!1352083 () Bool)

(assert (=> d!336746 m!1352083))

(assert (=> d!336746 m!1352081))

(declare-fun m!1352085 () Bool)

(assert (=> d!336746 m!1352085))

(assert (=> d!336746 m!1352081))

(assert (=> d!336746 m!1352085))

(declare-fun m!1352087 () Bool)

(assert (=> d!336746 m!1352087))

(declare-fun m!1352089 () Bool)

(assert (=> d!336746 m!1352089))

(assert (=> d!336746 m!1351493))

(declare-fun m!1352091 () Bool)

(assert (=> b!1175468 m!1352091))

(declare-fun m!1352093 () Bool)

(assert (=> b!1175469 m!1352093))

(assert (=> b!1175470 m!1352081))

(assert (=> b!1175470 m!1352081))

(assert (=> b!1175470 m!1352085))

(assert (=> b!1175470 m!1352085))

(assert (=> b!1175470 m!1352087))

(declare-fun m!1352095 () Bool)

(assert (=> b!1175470 m!1352095))

(assert (=> b!1175118 d!336746))

(declare-fun d!336748 () Bool)

(assert (=> d!336748 (= (tail!1700 lt!404590) (t!111050 lt!404590))))

(assert (=> b!1175118 d!336748))

(declare-fun d!336750 () Bool)

(assert (=> d!336750 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!404592)))

(declare-fun lt!404985 () Unit!17926)

(declare-fun choose!7612 (LexerInterface!1722 List!11649 List!11648 Token!3716) Unit!17926)

(assert (=> d!336750 (= lt!404985 (choose!7612 Lexer!1720 (rules!9698 thiss!10527) lt!404576 lt!404592))))

(assert (=> d!336750 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336750 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!404576 lt!404592) lt!404985)))

(declare-fun bs!286433 () Bool)

(assert (= bs!286433 d!336750))

(assert (=> bs!286433 m!1351441))

(declare-fun m!1352121 () Bool)

(assert (=> bs!286433 m!1352121))

(assert (=> bs!286433 m!1351493))

(assert (=> b!1175118 d!336750))

(declare-fun b!1175503 () Bool)

(declare-fun e!754219 () List!11648)

(assert (=> b!1175503 (= e!754219 Nil!11624)))

(declare-fun b!1175504 () Bool)

(declare-fun e!754220 () List!11648)

(assert (=> b!1175504 (= e!754220 (drop!499 (t!111050 lt!404576) (- 0 1)))))

(declare-fun b!1175505 () Bool)

(declare-fun e!754222 () Bool)

(declare-fun lt!404986 () List!11648)

(declare-fun e!754223 () Int)

(assert (=> b!1175505 (= e!754222 (= (size!9183 lt!404986) e!754223))))

(declare-fun c!195993 () Bool)

(assert (=> b!1175505 (= c!195993 (<= 0 0))))

(declare-fun b!1175506 () Bool)

(declare-fun e!754221 () Int)

(assert (=> b!1175506 (= e!754221 0)))

(declare-fun b!1175507 () Bool)

(assert (=> b!1175507 (= e!754220 lt!404576)))

(declare-fun d!336768 () Bool)

(assert (=> d!336768 e!754222))

(declare-fun res!531389 () Bool)

(assert (=> d!336768 (=> (not res!531389) (not e!754222))))

(assert (=> d!336768 (= res!531389 (= ((_ map implies) (content!1620 lt!404986) (content!1620 lt!404576)) ((as const (InoxSet Token!3716)) true)))))

(assert (=> d!336768 (= lt!404986 e!754219)))

(declare-fun c!195994 () Bool)

(assert (=> d!336768 (= c!195994 ((_ is Nil!11624) lt!404576))))

(assert (=> d!336768 (= (drop!499 lt!404576 0) lt!404986)))

(declare-fun b!1175508 () Bool)

(declare-fun call!82424 () Int)

(assert (=> b!1175508 (= e!754223 call!82424)))

(declare-fun b!1175509 () Bool)

(assert (=> b!1175509 (= e!754223 e!754221)))

(declare-fun c!195992 () Bool)

(assert (=> b!1175509 (= c!195992 (>= 0 call!82424))))

(declare-fun b!1175510 () Bool)

(assert (=> b!1175510 (= e!754219 e!754220)))

(declare-fun c!195991 () Bool)

(assert (=> b!1175510 (= c!195991 (<= 0 0))))

(declare-fun bm!82419 () Bool)

(assert (=> bm!82419 (= call!82424 (size!9183 lt!404576))))

(declare-fun b!1175511 () Bool)

(assert (=> b!1175511 (= e!754221 (- call!82424 0))))

(assert (= (and d!336768 c!195994) b!1175503))

(assert (= (and d!336768 (not c!195994)) b!1175510))

(assert (= (and b!1175510 c!195991) b!1175507))

(assert (= (and b!1175510 (not c!195991)) b!1175504))

(assert (= (and d!336768 res!531389) b!1175505))

(assert (= (and b!1175505 c!195993) b!1175508))

(assert (= (and b!1175505 (not c!195993)) b!1175509))

(assert (= (and b!1175509 c!195992) b!1175506))

(assert (= (and b!1175509 (not c!195992)) b!1175511))

(assert (= (or b!1175508 b!1175509 b!1175511) bm!82419))

(declare-fun m!1352127 () Bool)

(assert (=> b!1175504 m!1352127))

(declare-fun m!1352129 () Bool)

(assert (=> b!1175505 m!1352129))

(declare-fun m!1352131 () Bool)

(assert (=> d!336768 m!1352131))

(assert (=> d!336768 m!1351739))

(assert (=> bm!82419 m!1351685))

(assert (=> b!1175118 d!336768))

(declare-fun b!1175512 () Bool)

(declare-fun e!754224 () List!11648)

(assert (=> b!1175512 (= e!754224 Nil!11624)))

(declare-fun b!1175513 () Bool)

(declare-fun e!754225 () List!11648)

(assert (=> b!1175513 (= e!754225 (drop!499 (t!111050 lt!404576) (- 2 1)))))

(declare-fun b!1175514 () Bool)

(declare-fun e!754227 () Bool)

(declare-fun lt!404987 () List!11648)

(declare-fun e!754228 () Int)

(assert (=> b!1175514 (= e!754227 (= (size!9183 lt!404987) e!754228))))

(declare-fun c!195997 () Bool)

(assert (=> b!1175514 (= c!195997 (<= 2 0))))

(declare-fun b!1175515 () Bool)

(declare-fun e!754226 () Int)

(assert (=> b!1175515 (= e!754226 0)))

(declare-fun b!1175516 () Bool)

(assert (=> b!1175516 (= e!754225 lt!404576)))

(declare-fun d!336772 () Bool)

(assert (=> d!336772 e!754227))

(declare-fun res!531390 () Bool)

(assert (=> d!336772 (=> (not res!531390) (not e!754227))))

(assert (=> d!336772 (= res!531390 (= ((_ map implies) (content!1620 lt!404987) (content!1620 lt!404576)) ((as const (InoxSet Token!3716)) true)))))

(assert (=> d!336772 (= lt!404987 e!754224)))

(declare-fun c!195998 () Bool)

(assert (=> d!336772 (= c!195998 ((_ is Nil!11624) lt!404576))))

(assert (=> d!336772 (= (drop!499 lt!404576 2) lt!404987)))

(declare-fun b!1175517 () Bool)

(declare-fun call!82425 () Int)

(assert (=> b!1175517 (= e!754228 call!82425)))

(declare-fun b!1175518 () Bool)

(assert (=> b!1175518 (= e!754228 e!754226)))

(declare-fun c!195996 () Bool)

(assert (=> b!1175518 (= c!195996 (>= 2 call!82425))))

(declare-fun b!1175519 () Bool)

(assert (=> b!1175519 (= e!754224 e!754225)))

(declare-fun c!195995 () Bool)

(assert (=> b!1175519 (= c!195995 (<= 2 0))))

(declare-fun bm!82420 () Bool)

(assert (=> bm!82420 (= call!82425 (size!9183 lt!404576))))

(declare-fun b!1175520 () Bool)

(assert (=> b!1175520 (= e!754226 (- call!82425 2))))

(assert (= (and d!336772 c!195998) b!1175512))

(assert (= (and d!336772 (not c!195998)) b!1175519))

(assert (= (and b!1175519 c!195995) b!1175516))

(assert (= (and b!1175519 (not c!195995)) b!1175513))

(assert (= (and d!336772 res!531390) b!1175514))

(assert (= (and b!1175514 c!195997) b!1175517))

(assert (= (and b!1175514 (not c!195997)) b!1175518))

(assert (= (and b!1175518 c!195996) b!1175515))

(assert (= (and b!1175518 (not c!195996)) b!1175520))

(assert (= (or b!1175517 b!1175518 b!1175520) bm!82420))

(declare-fun m!1352133 () Bool)

(assert (=> b!1175513 m!1352133))

(declare-fun m!1352135 () Bool)

(assert (=> b!1175514 m!1352135))

(declare-fun m!1352137 () Bool)

(assert (=> d!336772 m!1352137))

(assert (=> d!336772 m!1351739))

(assert (=> bm!82420 m!1351685))

(assert (=> b!1175118 d!336772))

(declare-fun d!336774 () Bool)

(assert (=> d!336774 (= (head!2116 (drop!499 lt!404576 1)) (apply!2548 lt!404576 1))))

(declare-fun lt!404988 () Unit!17926)

(assert (=> d!336774 (= lt!404988 (choose!7611 lt!404576 1))))

(declare-fun e!754229 () Bool)

(assert (=> d!336774 e!754229))

(declare-fun res!531391 () Bool)

(assert (=> d!336774 (=> (not res!531391) (not e!754229))))

(assert (=> d!336774 (= res!531391 (>= 1 0))))

(assert (=> d!336774 (= (lemmaDropApply!385 lt!404576 1) lt!404988)))

(declare-fun b!1175521 () Bool)

(assert (=> b!1175521 (= e!754229 (< 1 (size!9183 lt!404576)))))

(assert (= (and d!336774 res!531391) b!1175521))

(assert (=> d!336774 m!1351435))

(assert (=> d!336774 m!1351435))

(declare-fun m!1352139 () Bool)

(assert (=> d!336774 m!1352139))

(assert (=> d!336774 m!1351437))

(declare-fun m!1352141 () Bool)

(assert (=> d!336774 m!1352141))

(assert (=> b!1175521 m!1351685))

(assert (=> b!1175118 d!336774))

(declare-fun d!336776 () Bool)

(declare-fun prefixMatchZipperSequence!106 (Regex!3297 BalanceConc!7654) Bool)

(declare-fun rulesRegex!77 (LexerInterface!1722 List!11649) Regex!3297)

(declare-fun ++!3007 (BalanceConc!7654 BalanceConc!7654) BalanceConc!7654)

(declare-fun singletonSeq!696 (C!6912) BalanceConc!7654)

(declare-fun apply!2550 (BalanceConc!7654 Int) C!6912)

(assert (=> d!336776 (= (separableTokensPredicate!144 Lexer!1720 lt!404592 lt!404579 (rules!9698 thiss!10527)) (not (prefixMatchZipperSequence!106 (rulesRegex!77 Lexer!1720 (rules!9698 thiss!10527)) (++!3007 (charsOf!1082 lt!404592) (singletonSeq!696 (apply!2550 (charsOf!1082 lt!404579) 0))))))))

(declare-fun bs!286435 () Bool)

(assert (= bs!286435 d!336776))

(assert (=> bs!286435 m!1351543))

(declare-fun m!1352147 () Bool)

(assert (=> bs!286435 m!1352147))

(assert (=> bs!286435 m!1351543))

(declare-fun m!1352149 () Bool)

(assert (=> bs!286435 m!1352149))

(declare-fun m!1352151 () Bool)

(assert (=> bs!286435 m!1352151))

(declare-fun m!1352153 () Bool)

(assert (=> bs!286435 m!1352153))

(declare-fun m!1352155 () Bool)

(assert (=> bs!286435 m!1352155))

(assert (=> bs!286435 m!1352149))

(assert (=> bs!286435 m!1352153))

(assert (=> bs!286435 m!1352151))

(assert (=> bs!286435 m!1352147))

(assert (=> bs!286435 m!1352155))

(declare-fun m!1352157 () Bool)

(assert (=> bs!286435 m!1352157))

(assert (=> b!1175118 d!336776))

(declare-fun d!336780 () Bool)

(assert (=> d!336780 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!404579)))

(declare-fun lt!404989 () Unit!17926)

(assert (=> d!336780 (= lt!404989 (choose!7612 Lexer!1720 (rules!9698 thiss!10527) lt!404576 lt!404579))))

(assert (=> d!336780 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336780 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!404576 lt!404579) lt!404989)))

(declare-fun bs!286436 () Bool)

(assert (= bs!286436 d!336780))

(assert (=> bs!286436 m!1351455))

(declare-fun m!1352159 () Bool)

(assert (=> bs!286436 m!1352159))

(assert (=> bs!286436 m!1351493))

(assert (=> b!1175118 d!336780))

(declare-fun d!336782 () Bool)

(assert (=> d!336782 (= (head!2116 lt!404594) (h!17025 lt!404594))))

(assert (=> b!1175118 d!336782))

(declare-fun d!336784 () Bool)

(declare-fun lt!404990 () Token!3716)

(assert (=> d!336784 (= lt!404990 (apply!2548 (list!4296 (tokens!1676 thiss!10527)) 0))))

(assert (=> d!336784 (= lt!404990 (apply!2549 (c!195953 (tokens!1676 thiss!10527)) 0))))

(declare-fun e!754233 () Bool)

(assert (=> d!336784 e!754233))

(declare-fun res!531395 () Bool)

(assert (=> d!336784 (=> (not res!531395) (not e!754233))))

(assert (=> d!336784 (= res!531395 (<= 0 0))))

(assert (=> d!336784 (= (apply!2547 (tokens!1676 thiss!10527) 0) lt!404990)))

(declare-fun b!1175525 () Bool)

(assert (=> b!1175525 (= e!754233 (< 0 (size!9178 (tokens!1676 thiss!10527))))))

(assert (= (and d!336784 res!531395) b!1175525))

(assert (=> d!336784 m!1351431))

(assert (=> d!336784 m!1351431))

(declare-fun m!1352161 () Bool)

(assert (=> d!336784 m!1352161))

(declare-fun m!1352163 () Bool)

(assert (=> d!336784 m!1352163))

(assert (=> b!1175525 m!1351533))

(assert (=> b!1175118 d!336784))

(declare-fun d!336786 () Bool)

(assert (=> d!336786 (= (tail!1700 (drop!499 lt!404576 1)) (drop!499 lt!404576 (+ 1 1)))))

(declare-fun lt!404991 () Unit!17926)

(assert (=> d!336786 (= lt!404991 (choose!7609 lt!404576 1))))

(declare-fun e!754234 () Bool)

(assert (=> d!336786 e!754234))

(declare-fun res!531396 () Bool)

(assert (=> d!336786 (=> (not res!531396) (not e!754234))))

(assert (=> d!336786 (= res!531396 (>= 1 0))))

(assert (=> d!336786 (= (lemmaDropTail!373 lt!404576 1) lt!404991)))

(declare-fun b!1175526 () Bool)

(assert (=> b!1175526 (= e!754234 (< 1 (size!9183 lt!404576)))))

(assert (= (and d!336786 res!531396) b!1175526))

(assert (=> d!336786 m!1351435))

(assert (=> d!336786 m!1351435))

(declare-fun m!1352165 () Bool)

(assert (=> d!336786 m!1352165))

(declare-fun m!1352167 () Bool)

(assert (=> d!336786 m!1352167))

(declare-fun m!1352169 () Bool)

(assert (=> d!336786 m!1352169))

(assert (=> b!1175526 m!1351685))

(assert (=> b!1175118 d!336786))

(declare-fun d!336788 () Bool)

(assert (=> d!336788 (= (inv!15357 (tokens!1676 thiss!10527)) (isBalanced!1080 (c!195953 (tokens!1676 thiss!10527))))))

(declare-fun bs!286437 () Bool)

(assert (= bs!286437 d!336788))

(assert (=> bs!286437 m!1351707))

(assert (=> b!1175108 d!336788))

(declare-fun d!336790 () Bool)

(declare-fun lt!404992 () Bool)

(declare-fun e!754235 () Bool)

(assert (=> d!336790 (= lt!404992 e!754235)))

(declare-fun res!531398 () Bool)

(assert (=> d!336790 (=> (not res!531398) (not e!754235))))

(assert (=> d!336790 (= res!531398 (= (list!4296 (_1!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404576)))))) (list!4296 (singletonSeq!694 (h!17025 lt!404576)))))))

(declare-fun e!754236 () Bool)

(assert (=> d!336790 (= lt!404992 e!754236)))

(declare-fun res!531397 () Bool)

(assert (=> d!336790 (=> (not res!531397) (not e!754236))))

(declare-fun lt!404993 () tuple2!12062)

(assert (=> d!336790 (= res!531397 (= (size!9178 (_1!6878 lt!404993)) 1))))

(assert (=> d!336790 (= lt!404993 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404576)))))))

(assert (=> d!336790 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336790 (= (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404576)) lt!404992)))

(declare-fun b!1175527 () Bool)

(declare-fun res!531399 () Bool)

(assert (=> b!1175527 (=> (not res!531399) (not e!754236))))

(assert (=> b!1175527 (= res!531399 (= (apply!2547 (_1!6878 lt!404993) 0) (h!17025 lt!404576)))))

(declare-fun b!1175528 () Bool)

(assert (=> b!1175528 (= e!754236 (isEmpty!7053 (_2!6878 lt!404993)))))

(declare-fun b!1175529 () Bool)

(assert (=> b!1175529 (= e!754235 (isEmpty!7053 (_2!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404576)))))))))

(assert (= (and d!336790 res!531397) b!1175527))

(assert (= (and b!1175527 res!531399) b!1175528))

(assert (= (and d!336790 res!531398) b!1175529))

(declare-fun m!1352171 () Bool)

(assert (=> d!336790 m!1352171))

(declare-fun m!1352173 () Bool)

(assert (=> d!336790 m!1352173))

(declare-fun m!1352175 () Bool)

(assert (=> d!336790 m!1352175))

(assert (=> d!336790 m!1352173))

(declare-fun m!1352177 () Bool)

(assert (=> d!336790 m!1352177))

(assert (=> d!336790 m!1352173))

(assert (=> d!336790 m!1352177))

(declare-fun m!1352179 () Bool)

(assert (=> d!336790 m!1352179))

(declare-fun m!1352181 () Bool)

(assert (=> d!336790 m!1352181))

(assert (=> d!336790 m!1351493))

(declare-fun m!1352183 () Bool)

(assert (=> b!1175527 m!1352183))

(declare-fun m!1352185 () Bool)

(assert (=> b!1175528 m!1352185))

(assert (=> b!1175529 m!1352173))

(assert (=> b!1175529 m!1352173))

(assert (=> b!1175529 m!1352177))

(assert (=> b!1175529 m!1352177))

(assert (=> b!1175529 m!1352179))

(declare-fun m!1352187 () Bool)

(assert (=> b!1175529 m!1352187))

(assert (=> b!1175106 d!336790))

(declare-fun d!336792 () Bool)

(declare-fun res!531425 () Bool)

(declare-fun e!754259 () Bool)

(assert (=> d!336792 (=> (not res!531425) (not e!754259))))

(assert (=> d!336792 (= res!531425 (not (isEmpty!7052 (rules!9698 thiss!10527))))))

(assert (=> d!336792 (= (inv!15358 thiss!10527) e!754259)))

(declare-fun b!1175566 () Bool)

(declare-fun res!531426 () Bool)

(assert (=> b!1175566 (=> (not res!531426) (not e!754259))))

(assert (=> b!1175566 (= res!531426 (rulesInvariant!1596 Lexer!1720 (rules!9698 thiss!10527)))))

(declare-fun b!1175567 () Bool)

(declare-fun res!531427 () Bool)

(assert (=> b!1175567 (=> (not res!531427) (not e!754259))))

(assert (=> b!1175567 (= res!531427 (rulesProduceEachTokenIndividually!760 Lexer!1720 (rules!9698 thiss!10527) (tokens!1676 thiss!10527)))))

(declare-fun b!1175568 () Bool)

(assert (=> b!1175568 (= e!754259 (separableTokens!158 Lexer!1720 (tokens!1676 thiss!10527) (rules!9698 thiss!10527)))))

(assert (= (and d!336792 res!531425) b!1175566))

(assert (= (and b!1175566 res!531426) b!1175567))

(assert (= (and b!1175567 res!531427) b!1175568))

(assert (=> d!336792 m!1351493))

(assert (=> b!1175566 m!1351505))

(assert (=> b!1175567 m!1351429))

(assert (=> b!1175568 m!1351573))

(assert (=> start!103674 d!336792))

(declare-fun bs!286446 () Bool)

(declare-fun d!336806 () Bool)

(assert (= bs!286446 (and d!336806 b!1175116)))

(declare-fun lambda!48453 () Int)

(assert (=> bs!286446 (= lambda!48453 lambda!48429)))

(declare-fun bs!286447 () Bool)

(assert (= bs!286447 (and d!336806 d!336630)))

(assert (=> bs!286447 (= lambda!48453 lambda!48435)))

(declare-fun bs!286448 () Bool)

(assert (= bs!286448 (and d!336806 d!336684)))

(assert (=> bs!286448 (= lambda!48453 lambda!48436)))

(declare-fun bs!286449 () Bool)

(assert (= bs!286449 (and d!336806 b!1175374)))

(assert (=> bs!286449 (= lambda!48453 lambda!48443)))

(declare-fun b!1175573 () Bool)

(declare-fun e!754264 () Bool)

(assert (=> b!1175573 (= e!754264 true)))

(declare-fun b!1175572 () Bool)

(declare-fun e!754263 () Bool)

(assert (=> b!1175572 (= e!754263 e!754264)))

(declare-fun b!1175571 () Bool)

(declare-fun e!754262 () Bool)

(assert (=> b!1175571 (= e!754262 e!754263)))

(assert (=> d!336806 e!754262))

(assert (= b!1175572 b!1175573))

(assert (= b!1175571 b!1175572))

(assert (= (and d!336806 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175571))

(assert (=> b!1175573 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48453))))

(assert (=> b!1175573 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48453))))

(assert (=> d!336806 true))

(declare-fun lt!405032 () Bool)

(assert (=> d!336806 (= lt!405032 (forall!3088 (t!111050 lt!404582) lambda!48453))))

(declare-fun e!754261 () Bool)

(assert (=> d!336806 (= lt!405032 e!754261)))

(declare-fun res!531428 () Bool)

(assert (=> d!336806 (=> res!531428 e!754261)))

(assert (=> d!336806 (= res!531428 (not ((_ is Cons!11624) (t!111050 lt!404582))))))

(assert (=> d!336806 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336806 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404582)) lt!405032)))

(declare-fun b!1175569 () Bool)

(declare-fun e!754260 () Bool)

(assert (=> b!1175569 (= e!754261 e!754260)))

(declare-fun res!531429 () Bool)

(assert (=> b!1175569 (=> (not res!531429) (not e!754260))))

(assert (=> b!1175569 (= res!531429 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 (t!111050 lt!404582))))))

(declare-fun b!1175570 () Bool)

(assert (=> b!1175570 (= e!754260 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 (t!111050 lt!404582))))))

(assert (= (and d!336806 (not res!531428)) b!1175569))

(assert (= (and b!1175569 res!531429) b!1175570))

(declare-fun m!1352281 () Bool)

(assert (=> d!336806 m!1352281))

(assert (=> d!336806 m!1351493))

(declare-fun m!1352283 () Bool)

(assert (=> b!1175569 m!1352283))

(declare-fun m!1352285 () Bool)

(assert (=> b!1175570 m!1352285))

(assert (=> b!1175117 d!336806))

(declare-fun b!1175574 () Bool)

(declare-fun e!754268 () Bool)

(declare-fun lt!405040 () List!11648)

(assert (=> b!1175574 (= e!754268 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!405040))))

(declare-fun b!1175575 () Bool)

(declare-fun e!754269 () Bool)

(declare-fun lt!405037 () List!11648)

(assert (=> b!1175575 (= e!754269 (<= 1 (size!9183 lt!405037)))))

(declare-fun b!1175576 () Bool)

(declare-fun e!754265 () Bool)

(declare-fun e!754267 () Bool)

(assert (=> b!1175576 (= e!754265 e!754267)))

(declare-fun res!531431 () Bool)

(assert (=> b!1175576 (=> (not res!531431) (not e!754267))))

(assert (=> b!1175576 (= res!531431 (separableTokensPredicate!144 Lexer!1720 (apply!2547 (tokens!1676 thiss!10527) 1) (apply!2547 (tokens!1676 thiss!10527) (+ 1 1)) (rules!9698 thiss!10527)))))

(declare-fun lt!405058 () Unit!17926)

(declare-fun Unit!17945 () Unit!17926)

(assert (=> b!1175576 (= lt!405058 Unit!17945)))

(assert (=> b!1175576 (> (size!9179 (charsOf!1082 (apply!2547 (tokens!1676 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!405044 () Unit!17926)

(declare-fun Unit!17946 () Unit!17926)

(assert (=> b!1175576 (= lt!405044 Unit!17946)))

(assert (=> b!1175576 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (apply!2547 (tokens!1676 thiss!10527) (+ 1 1)))))

(declare-fun lt!405062 () Unit!17926)

(declare-fun Unit!17947 () Unit!17926)

(assert (=> b!1175576 (= lt!405062 Unit!17947)))

(assert (=> b!1175576 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (apply!2547 (tokens!1676 thiss!10527) 1))))

(declare-fun lt!405050 () Unit!17926)

(declare-fun lt!405035 () Unit!17926)

(assert (=> b!1175576 (= lt!405050 lt!405035)))

(declare-fun lt!405065 () Token!3716)

(assert (=> b!1175576 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!405065)))

(declare-fun lt!405036 () List!11648)

(assert (=> b!1175576 (= lt!405035 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!405036 lt!405065))))

(assert (=> b!1175576 (= lt!405065 (apply!2547 (tokens!1676 thiss!10527) (+ 1 1)))))

(assert (=> b!1175576 (= lt!405036 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405056 () Unit!17926)

(declare-fun lt!405057 () Unit!17926)

(assert (=> b!1175576 (= lt!405056 lt!405057)))

(declare-fun lt!405033 () Token!3716)

(assert (=> b!1175576 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!405033)))

(declare-fun lt!405045 () List!11648)

(assert (=> b!1175576 (= lt!405057 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!405045 lt!405033))))

(assert (=> b!1175576 (= lt!405033 (apply!2547 (tokens!1676 thiss!10527) 1))))

(assert (=> b!1175576 (= lt!405045 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405064 () Unit!17926)

(declare-fun lt!405039 () Unit!17926)

(assert (=> b!1175576 (= lt!405064 lt!405039)))

(declare-fun lt!405038 () List!11648)

(declare-fun lt!405042 () Int)

(assert (=> b!1175576 (= (tail!1700 (drop!499 lt!405038 lt!405042)) (drop!499 lt!405038 (+ lt!405042 1)))))

(assert (=> b!1175576 (= lt!405039 (lemmaDropTail!373 lt!405038 lt!405042))))

(assert (=> b!1175576 (= lt!405042 (+ 1 1))))

(assert (=> b!1175576 (= lt!405038 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405047 () Unit!17926)

(declare-fun lt!405059 () Unit!17926)

(assert (=> b!1175576 (= lt!405047 lt!405059)))

(declare-fun lt!405043 () List!11648)

(assert (=> b!1175576 (= (tail!1700 (drop!499 lt!405043 1)) (drop!499 lt!405043 (+ 1 1)))))

(assert (=> b!1175576 (= lt!405059 (lemmaDropTail!373 lt!405043 1))))

(assert (=> b!1175576 (= lt!405043 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405055 () Unit!17926)

(declare-fun lt!405049 () Unit!17926)

(assert (=> b!1175576 (= lt!405055 lt!405049)))

(declare-fun lt!405063 () List!11648)

(declare-fun lt!405061 () Int)

(assert (=> b!1175576 (= (head!2116 (drop!499 lt!405063 lt!405061)) (apply!2548 lt!405063 lt!405061))))

(assert (=> b!1175576 (= lt!405049 (lemmaDropApply!385 lt!405063 lt!405061))))

(assert (=> b!1175576 (= lt!405061 (+ 1 1))))

(assert (=> b!1175576 (= lt!405063 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405054 () Unit!17926)

(declare-fun lt!405046 () Unit!17926)

(assert (=> b!1175576 (= lt!405054 lt!405046)))

(declare-fun lt!405034 () List!11648)

(assert (=> b!1175576 (= (head!2116 (drop!499 lt!405034 1)) (apply!2548 lt!405034 1))))

(assert (=> b!1175576 (= lt!405046 (lemmaDropApply!385 lt!405034 1))))

(assert (=> b!1175576 (= lt!405034 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun b!1175577 () Bool)

(declare-fun e!754266 () Bool)

(assert (=> b!1175577 (= e!754266 (<= 1 (size!9178 (tokens!1676 thiss!10527))))))

(declare-fun b!1175578 () Bool)

(declare-fun res!531433 () Bool)

(assert (=> b!1175578 (=> (not res!531433) (not e!754268))))

(declare-fun lt!405051 () List!11648)

(assert (=> b!1175578 (= res!531433 (subseq!277 lt!405051 lt!405040))))

(declare-fun b!1175579 () Bool)

(declare-fun res!531434 () Bool)

(assert (=> b!1175579 (=> (not res!531434) (not e!754268))))

(assert (=> b!1175579 (= res!531434 (rulesInvariant!1596 Lexer!1720 (rules!9698 thiss!10527)))))

(declare-fun d!336808 () Bool)

(declare-fun lt!405060 () Bool)

(assert (=> d!336808 (= lt!405060 (tokensListTwoByTwoPredicateSeparableList!118 Lexer!1720 (dropList!334 (tokens!1676 thiss!10527) 1) (rules!9698 thiss!10527)))))

(declare-fun lt!405053 () Unit!17926)

(declare-fun lt!405052 () Unit!17926)

(assert (=> d!336808 (= lt!405053 lt!405052)))

(assert (=> d!336808 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!405051)))

(assert (=> d!336808 (= lt!405052 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!40 Lexer!1720 (rules!9698 thiss!10527) lt!405040 lt!405051))))

(assert (=> d!336808 e!754268))

(declare-fun res!531430 () Bool)

(assert (=> d!336808 (=> (not res!531430) (not e!754268))))

(assert (=> d!336808 (= res!531430 ((_ is Lexer!1720) Lexer!1720))))

(assert (=> d!336808 (= lt!405051 (dropList!334 (tokens!1676 thiss!10527) 1))))

(assert (=> d!336808 (= lt!405040 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405041 () Unit!17926)

(declare-fun lt!405048 () Unit!17926)

(assert (=> d!336808 (= lt!405041 lt!405048)))

(assert (=> d!336808 (subseq!277 (drop!499 lt!405037 1) lt!405037)))

(assert (=> d!336808 (= lt!405048 (lemmaDropSubSeq!40 lt!405037 1))))

(assert (=> d!336808 e!754269))

(declare-fun res!531435 () Bool)

(assert (=> d!336808 (=> (not res!531435) (not e!754269))))

(assert (=> d!336808 (= res!531435 (>= 1 0))))

(assert (=> d!336808 (= lt!405037 (list!4296 (tokens!1676 thiss!10527)))))

(assert (=> d!336808 (= lt!405060 e!754265)))

(declare-fun res!531436 () Bool)

(assert (=> d!336808 (=> res!531436 e!754265)))

(assert (=> d!336808 (= res!531436 (not (< 1 (- (size!9178 (tokens!1676 thiss!10527)) 1))))))

(assert (=> d!336808 e!754266))

(declare-fun res!531432 () Bool)

(assert (=> d!336808 (=> (not res!531432) (not e!754266))))

(assert (=> d!336808 (= res!531432 (>= 1 0))))

(assert (=> d!336808 (= (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 (tokens!1676 thiss!10527) 1 (rules!9698 thiss!10527)) lt!405060)))

(declare-fun b!1175580 () Bool)

(declare-fun res!531437 () Bool)

(assert (=> b!1175580 (=> (not res!531437) (not e!754268))))

(assert (=> b!1175580 (= res!531437 (not (isEmpty!7052 (rules!9698 thiss!10527))))))

(declare-fun b!1175581 () Bool)

(assert (=> b!1175581 (= e!754267 (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 (tokens!1676 thiss!10527) (+ 1 1) (rules!9698 thiss!10527)))))

(assert (= (and d!336808 res!531432) b!1175577))

(assert (= (and d!336808 (not res!531436)) b!1175576))

(assert (= (and b!1175576 res!531431) b!1175581))

(assert (= (and d!336808 res!531435) b!1175575))

(assert (= (and d!336808 res!531430) b!1175580))

(assert (= (and b!1175580 res!531437) b!1175579))

(assert (= (and b!1175579 res!531434) b!1175578))

(assert (= (and b!1175578 res!531433) b!1175574))

(declare-fun m!1352287 () Bool)

(assert (=> b!1175578 m!1352287))

(assert (=> b!1175579 m!1351505))

(assert (=> b!1175577 m!1351533))

(assert (=> d!336808 m!1351431))

(declare-fun m!1352289 () Bool)

(assert (=> d!336808 m!1352289))

(declare-fun m!1352291 () Bool)

(assert (=> d!336808 m!1352291))

(declare-fun m!1352293 () Bool)

(assert (=> d!336808 m!1352293))

(declare-fun m!1352295 () Bool)

(assert (=> d!336808 m!1352295))

(assert (=> d!336808 m!1351533))

(assert (=> d!336808 m!1352291))

(declare-fun m!1352297 () Bool)

(assert (=> d!336808 m!1352297))

(assert (=> d!336808 m!1352289))

(declare-fun m!1352299 () Bool)

(assert (=> d!336808 m!1352299))

(declare-fun m!1352301 () Bool)

(assert (=> d!336808 m!1352301))

(assert (=> b!1175580 m!1351493))

(declare-fun m!1352303 () Bool)

(assert (=> b!1175576 m!1352303))

(declare-fun m!1352305 () Bool)

(assert (=> b!1175576 m!1352305))

(declare-fun m!1352307 () Bool)

(assert (=> b!1175576 m!1352307))

(declare-fun m!1352309 () Bool)

(assert (=> b!1175576 m!1352309))

(declare-fun m!1352311 () Bool)

(assert (=> b!1175576 m!1352311))

(declare-fun m!1352313 () Bool)

(assert (=> b!1175576 m!1352313))

(declare-fun m!1352315 () Bool)

(assert (=> b!1175576 m!1352315))

(declare-fun m!1352317 () Bool)

(assert (=> b!1175576 m!1352317))

(assert (=> b!1175576 m!1352303))

(declare-fun m!1352319 () Bool)

(assert (=> b!1175576 m!1352319))

(assert (=> b!1175576 m!1352307))

(declare-fun m!1352321 () Bool)

(assert (=> b!1175576 m!1352321))

(assert (=> b!1175576 m!1351463))

(declare-fun m!1352323 () Bool)

(assert (=> b!1175576 m!1352323))

(declare-fun m!1352325 () Bool)

(assert (=> b!1175576 m!1352325))

(declare-fun m!1352327 () Bool)

(assert (=> b!1175576 m!1352327))

(declare-fun m!1352329 () Bool)

(assert (=> b!1175576 m!1352329))

(declare-fun m!1352331 () Bool)

(assert (=> b!1175576 m!1352331))

(declare-fun m!1352333 () Bool)

(assert (=> b!1175576 m!1352333))

(assert (=> b!1175576 m!1351463))

(assert (=> b!1175576 m!1352317))

(declare-fun m!1352335 () Bool)

(assert (=> b!1175576 m!1352335))

(assert (=> b!1175576 m!1351431))

(assert (=> b!1175576 m!1352317))

(declare-fun m!1352337 () Bool)

(assert (=> b!1175576 m!1352337))

(declare-fun m!1352339 () Bool)

(assert (=> b!1175576 m!1352339))

(declare-fun m!1352341 () Bool)

(assert (=> b!1175576 m!1352341))

(declare-fun m!1352343 () Bool)

(assert (=> b!1175576 m!1352343))

(assert (=> b!1175576 m!1352329))

(declare-fun m!1352345 () Bool)

(assert (=> b!1175576 m!1352345))

(declare-fun m!1352347 () Bool)

(assert (=> b!1175576 m!1352347))

(declare-fun m!1352349 () Bool)

(assert (=> b!1175576 m!1352349))

(assert (=> b!1175576 m!1352313))

(assert (=> b!1175576 m!1352317))

(declare-fun m!1352351 () Bool)

(assert (=> b!1175576 m!1352351))

(assert (=> b!1175576 m!1351463))

(assert (=> b!1175576 m!1352351))

(declare-fun m!1352353 () Bool)

(assert (=> b!1175576 m!1352353))

(declare-fun m!1352355 () Bool)

(assert (=> b!1175575 m!1352355))

(declare-fun m!1352357 () Bool)

(assert (=> b!1175581 m!1352357))

(declare-fun m!1352359 () Bool)

(assert (=> b!1175574 m!1352359))

(assert (=> b!1175115 d!336808))

(declare-fun d!336810 () Bool)

(declare-fun res!531446 () Bool)

(declare-fun e!754277 () Bool)

(assert (=> d!336810 (=> res!531446 e!754277)))

(assert (=> d!336810 (= res!531446 (or (not ((_ is Cons!11624) lt!404587)) (not ((_ is Cons!11624) (t!111050 lt!404587)))))))

(assert (=> d!336810 (= (tokensListTwoByTwoPredicateSeparableList!118 Lexer!1720 lt!404587 (rules!9698 thiss!10527)) e!754277)))

(declare-fun b!1175589 () Bool)

(declare-fun e!754278 () Bool)

(assert (=> b!1175589 (= e!754277 e!754278)))

(declare-fun res!531445 () Bool)

(assert (=> b!1175589 (=> (not res!531445) (not e!754278))))

(assert (=> b!1175589 (= res!531445 (separableTokensPredicate!144 Lexer!1720 (h!17025 lt!404587) (h!17025 (t!111050 lt!404587)) (rules!9698 thiss!10527)))))

(declare-fun lt!405091 () Unit!17926)

(declare-fun Unit!17948 () Unit!17926)

(assert (=> b!1175589 (= lt!405091 Unit!17948)))

(assert (=> b!1175589 (> (size!9179 (charsOf!1082 (h!17025 (t!111050 lt!404587)))) 0)))

(declare-fun lt!405093 () Unit!17926)

(declare-fun Unit!17949 () Unit!17926)

(assert (=> b!1175589 (= lt!405093 Unit!17949)))

(assert (=> b!1175589 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 (t!111050 lt!404587)))))

(declare-fun lt!405087 () Unit!17926)

(declare-fun Unit!17950 () Unit!17926)

(assert (=> b!1175589 (= lt!405087 Unit!17950)))

(assert (=> b!1175589 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404587))))

(declare-fun lt!405090 () Unit!17926)

(declare-fun lt!405092 () Unit!17926)

(assert (=> b!1175589 (= lt!405090 lt!405092)))

(assert (=> b!1175589 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 (t!111050 lt!404587)))))

(assert (=> b!1175589 (= lt!405092 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!404587 (h!17025 (t!111050 lt!404587))))))

(declare-fun lt!405088 () Unit!17926)

(declare-fun lt!405089 () Unit!17926)

(assert (=> b!1175589 (= lt!405088 lt!405089)))

(assert (=> b!1175589 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404587))))

(assert (=> b!1175589 (= lt!405089 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!404587 (h!17025 lt!404587)))))

(declare-fun b!1175590 () Bool)

(assert (=> b!1175590 (= e!754278 (tokensListTwoByTwoPredicateSeparableList!118 Lexer!1720 (Cons!11624 (h!17025 (t!111050 lt!404587)) (t!111050 (t!111050 lt!404587))) (rules!9698 thiss!10527)))))

(assert (= (and d!336810 (not res!531446)) b!1175589))

(assert (= (and b!1175589 res!531445) b!1175590))

(declare-fun m!1352381 () Bool)

(assert (=> b!1175589 m!1352381))

(assert (=> b!1175589 m!1351537))

(declare-fun m!1352383 () Bool)

(assert (=> b!1175589 m!1352383))

(declare-fun m!1352385 () Bool)

(assert (=> b!1175589 m!1352385))

(assert (=> b!1175589 m!1352383))

(declare-fun m!1352387 () Bool)

(assert (=> b!1175589 m!1352387))

(declare-fun m!1352389 () Bool)

(assert (=> b!1175589 m!1352389))

(assert (=> b!1175589 m!1351565))

(declare-fun m!1352391 () Bool)

(assert (=> b!1175590 m!1352391))

(assert (=> b!1175105 d!336810))

(declare-fun bs!286465 () Bool)

(declare-fun d!336822 () Bool)

(assert (= bs!286465 (and d!336822 d!336806)))

(declare-fun lambda!48459 () Int)

(assert (=> bs!286465 (= lambda!48459 lambda!48453)))

(declare-fun bs!286466 () Bool)

(assert (= bs!286466 (and d!336822 d!336630)))

(assert (=> bs!286466 (= lambda!48459 lambda!48435)))

(declare-fun bs!286467 () Bool)

(assert (= bs!286467 (and d!336822 d!336684)))

(assert (=> bs!286467 (= lambda!48459 lambda!48436)))

(declare-fun bs!286468 () Bool)

(assert (= bs!286468 (and d!336822 b!1175374)))

(assert (=> bs!286468 (= lambda!48459 lambda!48443)))

(declare-fun bs!286469 () Bool)

(assert (= bs!286469 (and d!336822 b!1175116)))

(assert (=> bs!286469 (= lambda!48459 lambda!48429)))

(declare-fun b!1175687 () Bool)

(declare-fun e!754349 () Bool)

(assert (=> b!1175687 (= e!754349 true)))

(declare-fun b!1175686 () Bool)

(declare-fun e!754348 () Bool)

(assert (=> b!1175686 (= e!754348 e!754349)))

(declare-fun b!1175685 () Bool)

(declare-fun e!754347 () Bool)

(assert (=> b!1175685 (= e!754347 e!754348)))

(assert (=> d!336822 e!754347))

(assert (= b!1175686 b!1175687))

(assert (= b!1175685 b!1175686))

(assert (= (and d!336822 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175685))

(assert (=> b!1175687 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48459))))

(assert (=> b!1175687 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48459))))

(assert (=> d!336822 true))

(declare-fun e!754346 () Bool)

(assert (=> d!336822 e!754346))

(declare-fun res!531472 () Bool)

(assert (=> d!336822 (=> (not res!531472) (not e!754346))))

(declare-fun lt!405118 () Bool)

(assert (=> d!336822 (= res!531472 (= lt!405118 (forall!3088 (list!4296 (tokens!1676 thiss!10527)) lambda!48459)))))

(assert (=> d!336822 (= lt!405118 (forall!3087 (tokens!1676 thiss!10527) lambda!48459))))

(assert (=> d!336822 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336822 (= (rulesProduceEachTokenIndividually!760 Lexer!1720 (rules!9698 thiss!10527) (tokens!1676 thiss!10527)) lt!405118)))

(declare-fun b!1175684 () Bool)

(assert (=> b!1175684 (= e!754346 (= lt!405118 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (list!4296 (tokens!1676 thiss!10527)))))))

(assert (= (and d!336822 res!531472) b!1175684))

(assert (=> d!336822 m!1351431))

(assert (=> d!336822 m!1351431))

(declare-fun m!1352513 () Bool)

(assert (=> d!336822 m!1352513))

(declare-fun m!1352515 () Bool)

(assert (=> d!336822 m!1352515))

(assert (=> d!336822 m!1351493))

(assert (=> b!1175684 m!1351431))

(assert (=> b!1175684 m!1351431))

(declare-fun m!1352517 () Bool)

(assert (=> b!1175684 m!1352517))

(assert (=> b!1175116 d!336822))

(declare-fun d!336856 () Bool)

(declare-fun lt!405121 () Bool)

(assert (=> d!336856 (= lt!405121 (forall!3088 (list!4296 (tokens!1676 thiss!10527)) lambda!48429))))

(declare-fun forall!3090 (Conc!3817 Int) Bool)

(assert (=> d!336856 (= lt!405121 (forall!3090 (c!195953 (tokens!1676 thiss!10527)) lambda!48429))))

(assert (=> d!336856 (= (forall!3087 (tokens!1676 thiss!10527) lambda!48429) lt!405121)))

(declare-fun bs!286470 () Bool)

(assert (= bs!286470 d!336856))

(assert (=> bs!286470 m!1351431))

(assert (=> bs!286470 m!1351431))

(declare-fun m!1352519 () Bool)

(assert (=> bs!286470 m!1352519))

(declare-fun m!1352521 () Bool)

(assert (=> bs!286470 m!1352521))

(assert (=> b!1175116 d!336856))

(declare-fun d!336858 () Bool)

(assert (=> d!336858 (= (list!4296 (tokens!1676 thiss!10527)) (list!4298 (c!195953 (tokens!1676 thiss!10527))))))

(declare-fun bs!286471 () Bool)

(assert (= bs!286471 d!336858))

(declare-fun m!1352523 () Bool)

(assert (=> bs!286471 m!1352523))

(assert (=> b!1175116 d!336858))

(declare-fun bs!286472 () Bool)

(declare-fun d!336860 () Bool)

(assert (= bs!286472 (and d!336860 d!336806)))

(declare-fun lambda!48460 () Int)

(assert (=> bs!286472 (= lambda!48460 lambda!48453)))

(declare-fun bs!286473 () Bool)

(assert (= bs!286473 (and d!336860 d!336630)))

(assert (=> bs!286473 (= lambda!48460 lambda!48435)))

(declare-fun bs!286474 () Bool)

(assert (= bs!286474 (and d!336860 d!336684)))

(assert (=> bs!286474 (= lambda!48460 lambda!48436)))

(declare-fun bs!286475 () Bool)

(assert (= bs!286475 (and d!336860 d!336822)))

(assert (=> bs!286475 (= lambda!48460 lambda!48459)))

(declare-fun bs!286476 () Bool)

(assert (= bs!286476 (and d!336860 b!1175374)))

(assert (=> bs!286476 (= lambda!48460 lambda!48443)))

(declare-fun bs!286477 () Bool)

(assert (= bs!286477 (and d!336860 b!1175116)))

(assert (=> bs!286477 (= lambda!48460 lambda!48429)))

(declare-fun b!1175692 () Bool)

(declare-fun e!754354 () Bool)

(assert (=> b!1175692 (= e!754354 true)))

(declare-fun b!1175691 () Bool)

(declare-fun e!754353 () Bool)

(assert (=> b!1175691 (= e!754353 e!754354)))

(declare-fun b!1175690 () Bool)

(declare-fun e!754352 () Bool)

(assert (=> b!1175690 (= e!754352 e!754353)))

(assert (=> d!336860 e!754352))

(assert (= b!1175691 b!1175692))

(assert (= b!1175690 b!1175691))

(assert (= (and d!336860 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175690))

(assert (=> b!1175692 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48460))))

(assert (=> b!1175692 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48460))))

(assert (=> d!336860 true))

(declare-fun lt!405122 () Bool)

(assert (=> d!336860 (= lt!405122 (forall!3088 lt!404576 lambda!48460))))

(declare-fun e!754351 () Bool)

(assert (=> d!336860 (= lt!405122 e!754351)))

(declare-fun res!531473 () Bool)

(assert (=> d!336860 (=> res!531473 e!754351)))

(assert (=> d!336860 (= res!531473 (not ((_ is Cons!11624) lt!404576)))))

(assert (=> d!336860 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336860 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!404576) lt!405122)))

(declare-fun b!1175688 () Bool)

(declare-fun e!754350 () Bool)

(assert (=> b!1175688 (= e!754351 e!754350)))

(declare-fun res!531474 () Bool)

(assert (=> b!1175688 (=> (not res!531474) (not e!754350))))

(assert (=> b!1175688 (= res!531474 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404576)))))

(declare-fun b!1175689 () Bool)

(assert (=> b!1175689 (= e!754350 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404576)))))

(assert (= (and d!336860 (not res!531473)) b!1175688))

(assert (= (and b!1175688 res!531474) b!1175689))

(declare-fun m!1352525 () Bool)

(assert (=> d!336860 m!1352525))

(assert (=> d!336860 m!1351493))

(assert (=> b!1175688 m!1351511))

(assert (=> b!1175689 m!1351513))

(assert (=> b!1175116 d!336860))

(declare-fun bs!286478 () Bool)

(declare-fun d!336862 () Bool)

(assert (= bs!286478 (and d!336862 d!336806)))

(declare-fun lambda!48461 () Int)

(assert (=> bs!286478 (= lambda!48461 lambda!48453)))

(declare-fun bs!286479 () Bool)

(assert (= bs!286479 (and d!336862 d!336630)))

(assert (=> bs!286479 (= lambda!48461 lambda!48435)))

(declare-fun bs!286480 () Bool)

(assert (= bs!286480 (and d!336862 d!336684)))

(assert (=> bs!286480 (= lambda!48461 lambda!48436)))

(declare-fun bs!286481 () Bool)

(assert (= bs!286481 (and d!336862 d!336822)))

(assert (=> bs!286481 (= lambda!48461 lambda!48459)))

(declare-fun bs!286482 () Bool)

(assert (= bs!286482 (and d!336862 d!336860)))

(assert (=> bs!286482 (= lambda!48461 lambda!48460)))

(declare-fun bs!286483 () Bool)

(assert (= bs!286483 (and d!336862 b!1175374)))

(assert (=> bs!286483 (= lambda!48461 lambda!48443)))

(declare-fun bs!286484 () Bool)

(assert (= bs!286484 (and d!336862 b!1175116)))

(assert (=> bs!286484 (= lambda!48461 lambda!48429)))

(declare-fun b!1175696 () Bool)

(declare-fun e!754358 () Bool)

(assert (=> b!1175696 (= e!754358 true)))

(declare-fun b!1175695 () Bool)

(declare-fun e!754357 () Bool)

(assert (=> b!1175695 (= e!754357 e!754358)))

(declare-fun b!1175694 () Bool)

(declare-fun e!754356 () Bool)

(assert (=> b!1175694 (= e!754356 e!754357)))

(assert (=> d!336862 e!754356))

(assert (= b!1175695 b!1175696))

(assert (= b!1175694 b!1175695))

(assert (= (and d!336862 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175694))

(assert (=> b!1175696 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48461))))

(assert (=> b!1175696 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48461))))

(assert (=> d!336862 true))

(declare-fun e!754355 () Bool)

(assert (=> d!336862 e!754355))

(declare-fun res!531475 () Bool)

(assert (=> d!336862 (=> (not res!531475) (not e!754355))))

(declare-fun lt!405123 () Bool)

(assert (=> d!336862 (= res!531475 (= lt!405123 (forall!3088 (list!4296 lt!404575) lambda!48461)))))

(assert (=> d!336862 (= lt!405123 (forall!3087 lt!404575 lambda!48461))))

(assert (=> d!336862 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336862 (= (rulesProduceEachTokenIndividually!760 Lexer!1720 (rules!9698 thiss!10527) lt!404575) lt!405123)))

(declare-fun b!1175693 () Bool)

(assert (=> b!1175693 (= e!754355 (= lt!405123 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (list!4296 lt!404575))))))

(assert (= (and d!336862 res!531475) b!1175693))

(assert (=> d!336862 m!1351517))

(assert (=> d!336862 m!1351517))

(declare-fun m!1352527 () Bool)

(assert (=> d!336862 m!1352527))

(declare-fun m!1352529 () Bool)

(assert (=> d!336862 m!1352529))

(assert (=> d!336862 m!1351493))

(assert (=> b!1175693 m!1351517))

(assert (=> b!1175693 m!1351517))

(declare-fun m!1352531 () Bool)

(assert (=> b!1175693 m!1352531))

(assert (=> b!1175103 d!336862))

(declare-fun d!336864 () Bool)

(declare-fun lt!405124 () Bool)

(assert (=> d!336864 (= lt!405124 (forall!3088 (list!4296 lt!404575) lambda!48429))))

(assert (=> d!336864 (= lt!405124 (forall!3090 (c!195953 lt!404575) lambda!48429))))

(assert (=> d!336864 (= (forall!3087 lt!404575 lambda!48429) lt!405124)))

(declare-fun bs!286485 () Bool)

(assert (= bs!286485 d!336864))

(assert (=> bs!286485 m!1351517))

(assert (=> bs!286485 m!1351517))

(declare-fun m!1352533 () Bool)

(assert (=> bs!286485 m!1352533))

(declare-fun m!1352535 () Bool)

(assert (=> bs!286485 m!1352535))

(assert (=> b!1175103 d!336864))

(declare-fun b!1175697 () Bool)

(declare-fun e!754362 () Bool)

(declare-fun lt!405132 () List!11648)

(assert (=> b!1175697 (= e!754362 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!405132))))

(declare-fun b!1175698 () Bool)

(declare-fun e!754363 () Bool)

(declare-fun lt!405129 () List!11648)

(assert (=> b!1175698 (= e!754363 (<= 0 (size!9183 lt!405129)))))

(declare-fun b!1175699 () Bool)

(declare-fun e!754359 () Bool)

(declare-fun e!754361 () Bool)

(assert (=> b!1175699 (= e!754359 e!754361)))

(declare-fun res!531477 () Bool)

(assert (=> b!1175699 (=> (not res!531477) (not e!754361))))

(assert (=> b!1175699 (= res!531477 (separableTokensPredicate!144 Lexer!1720 (apply!2547 (tokens!1676 thiss!10527) 0) (apply!2547 (tokens!1676 thiss!10527) (+ 0 1)) (rules!9698 thiss!10527)))))

(declare-fun lt!405150 () Unit!17926)

(declare-fun Unit!17951 () Unit!17926)

(assert (=> b!1175699 (= lt!405150 Unit!17951)))

(assert (=> b!1175699 (> (size!9179 (charsOf!1082 (apply!2547 (tokens!1676 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!405136 () Unit!17926)

(declare-fun Unit!17952 () Unit!17926)

(assert (=> b!1175699 (= lt!405136 Unit!17952)))

(assert (=> b!1175699 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (apply!2547 (tokens!1676 thiss!10527) (+ 0 1)))))

(declare-fun lt!405154 () Unit!17926)

(declare-fun Unit!17953 () Unit!17926)

(assert (=> b!1175699 (= lt!405154 Unit!17953)))

(assert (=> b!1175699 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (apply!2547 (tokens!1676 thiss!10527) 0))))

(declare-fun lt!405142 () Unit!17926)

(declare-fun lt!405127 () Unit!17926)

(assert (=> b!1175699 (= lt!405142 lt!405127)))

(declare-fun lt!405157 () Token!3716)

(assert (=> b!1175699 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!405157)))

(declare-fun lt!405128 () List!11648)

(assert (=> b!1175699 (= lt!405127 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!405128 lt!405157))))

(assert (=> b!1175699 (= lt!405157 (apply!2547 (tokens!1676 thiss!10527) (+ 0 1)))))

(assert (=> b!1175699 (= lt!405128 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405148 () Unit!17926)

(declare-fun lt!405149 () Unit!17926)

(assert (=> b!1175699 (= lt!405148 lt!405149)))

(declare-fun lt!405125 () Token!3716)

(assert (=> b!1175699 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) lt!405125)))

(declare-fun lt!405137 () List!11648)

(assert (=> b!1175699 (= lt!405149 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!303 Lexer!1720 (rules!9698 thiss!10527) lt!405137 lt!405125))))

(assert (=> b!1175699 (= lt!405125 (apply!2547 (tokens!1676 thiss!10527) 0))))

(assert (=> b!1175699 (= lt!405137 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405156 () Unit!17926)

(declare-fun lt!405131 () Unit!17926)

(assert (=> b!1175699 (= lt!405156 lt!405131)))

(declare-fun lt!405130 () List!11648)

(declare-fun lt!405134 () Int)

(assert (=> b!1175699 (= (tail!1700 (drop!499 lt!405130 lt!405134)) (drop!499 lt!405130 (+ lt!405134 1)))))

(assert (=> b!1175699 (= lt!405131 (lemmaDropTail!373 lt!405130 lt!405134))))

(assert (=> b!1175699 (= lt!405134 (+ 0 1))))

(assert (=> b!1175699 (= lt!405130 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405139 () Unit!17926)

(declare-fun lt!405151 () Unit!17926)

(assert (=> b!1175699 (= lt!405139 lt!405151)))

(declare-fun lt!405135 () List!11648)

(assert (=> b!1175699 (= (tail!1700 (drop!499 lt!405135 0)) (drop!499 lt!405135 (+ 0 1)))))

(assert (=> b!1175699 (= lt!405151 (lemmaDropTail!373 lt!405135 0))))

(assert (=> b!1175699 (= lt!405135 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405147 () Unit!17926)

(declare-fun lt!405141 () Unit!17926)

(assert (=> b!1175699 (= lt!405147 lt!405141)))

(declare-fun lt!405155 () List!11648)

(declare-fun lt!405153 () Int)

(assert (=> b!1175699 (= (head!2116 (drop!499 lt!405155 lt!405153)) (apply!2548 lt!405155 lt!405153))))

(assert (=> b!1175699 (= lt!405141 (lemmaDropApply!385 lt!405155 lt!405153))))

(assert (=> b!1175699 (= lt!405153 (+ 0 1))))

(assert (=> b!1175699 (= lt!405155 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405146 () Unit!17926)

(declare-fun lt!405138 () Unit!17926)

(assert (=> b!1175699 (= lt!405146 lt!405138)))

(declare-fun lt!405126 () List!11648)

(assert (=> b!1175699 (= (head!2116 (drop!499 lt!405126 0)) (apply!2548 lt!405126 0))))

(assert (=> b!1175699 (= lt!405138 (lemmaDropApply!385 lt!405126 0))))

(assert (=> b!1175699 (= lt!405126 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun b!1175700 () Bool)

(declare-fun e!754360 () Bool)

(assert (=> b!1175700 (= e!754360 (<= 0 (size!9178 (tokens!1676 thiss!10527))))))

(declare-fun b!1175701 () Bool)

(declare-fun res!531479 () Bool)

(assert (=> b!1175701 (=> (not res!531479) (not e!754362))))

(declare-fun lt!405143 () List!11648)

(assert (=> b!1175701 (= res!531479 (subseq!277 lt!405143 lt!405132))))

(declare-fun b!1175702 () Bool)

(declare-fun res!531480 () Bool)

(assert (=> b!1175702 (=> (not res!531480) (not e!754362))))

(assert (=> b!1175702 (= res!531480 (rulesInvariant!1596 Lexer!1720 (rules!9698 thiss!10527)))))

(declare-fun d!336866 () Bool)

(declare-fun lt!405152 () Bool)

(assert (=> d!336866 (= lt!405152 (tokensListTwoByTwoPredicateSeparableList!118 Lexer!1720 (dropList!334 (tokens!1676 thiss!10527) 0) (rules!9698 thiss!10527)))))

(declare-fun lt!405145 () Unit!17926)

(declare-fun lt!405144 () Unit!17926)

(assert (=> d!336866 (= lt!405145 lt!405144)))

(assert (=> d!336866 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!405143)))

(assert (=> d!336866 (= lt!405144 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!40 Lexer!1720 (rules!9698 thiss!10527) lt!405132 lt!405143))))

(assert (=> d!336866 e!754362))

(declare-fun res!531476 () Bool)

(assert (=> d!336866 (=> (not res!531476) (not e!754362))))

(assert (=> d!336866 (= res!531476 ((_ is Lexer!1720) Lexer!1720))))

(assert (=> d!336866 (= lt!405143 (dropList!334 (tokens!1676 thiss!10527) 0))))

(assert (=> d!336866 (= lt!405132 (list!4296 (tokens!1676 thiss!10527)))))

(declare-fun lt!405133 () Unit!17926)

(declare-fun lt!405140 () Unit!17926)

(assert (=> d!336866 (= lt!405133 lt!405140)))

(assert (=> d!336866 (subseq!277 (drop!499 lt!405129 0) lt!405129)))

(assert (=> d!336866 (= lt!405140 (lemmaDropSubSeq!40 lt!405129 0))))

(assert (=> d!336866 e!754363))

(declare-fun res!531481 () Bool)

(assert (=> d!336866 (=> (not res!531481) (not e!754363))))

(assert (=> d!336866 (= res!531481 (>= 0 0))))

(assert (=> d!336866 (= lt!405129 (list!4296 (tokens!1676 thiss!10527)))))

(assert (=> d!336866 (= lt!405152 e!754359)))

(declare-fun res!531482 () Bool)

(assert (=> d!336866 (=> res!531482 e!754359)))

(assert (=> d!336866 (= res!531482 (not (< 0 (- (size!9178 (tokens!1676 thiss!10527)) 1))))))

(assert (=> d!336866 e!754360))

(declare-fun res!531478 () Bool)

(assert (=> d!336866 (=> (not res!531478) (not e!754360))))

(assert (=> d!336866 (= res!531478 (>= 0 0))))

(assert (=> d!336866 (= (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 (tokens!1676 thiss!10527) 0 (rules!9698 thiss!10527)) lt!405152)))

(declare-fun b!1175703 () Bool)

(declare-fun res!531483 () Bool)

(assert (=> b!1175703 (=> (not res!531483) (not e!754362))))

(assert (=> b!1175703 (= res!531483 (not (isEmpty!7052 (rules!9698 thiss!10527))))))

(declare-fun b!1175704 () Bool)

(assert (=> b!1175704 (= e!754361 (tokensListTwoByTwoPredicateSeparable!83 Lexer!1720 (tokens!1676 thiss!10527) (+ 0 1) (rules!9698 thiss!10527)))))

(assert (= (and d!336866 res!531478) b!1175700))

(assert (= (and d!336866 (not res!531482)) b!1175699))

(assert (= (and b!1175699 res!531477) b!1175704))

(assert (= (and d!336866 res!531481) b!1175698))

(assert (= (and d!336866 res!531476) b!1175703))

(assert (= (and b!1175703 res!531483) b!1175702))

(assert (= (and b!1175702 res!531480) b!1175701))

(assert (= (and b!1175701 res!531479) b!1175697))

(declare-fun m!1352537 () Bool)

(assert (=> b!1175701 m!1352537))

(assert (=> b!1175702 m!1351505))

(assert (=> b!1175700 m!1351533))

(assert (=> d!336866 m!1351431))

(declare-fun m!1352539 () Bool)

(assert (=> d!336866 m!1352539))

(declare-fun m!1352541 () Bool)

(assert (=> d!336866 m!1352541))

(declare-fun m!1352543 () Bool)

(assert (=> d!336866 m!1352543))

(declare-fun m!1352545 () Bool)

(assert (=> d!336866 m!1352545))

(assert (=> d!336866 m!1351533))

(assert (=> d!336866 m!1352541))

(declare-fun m!1352547 () Bool)

(assert (=> d!336866 m!1352547))

(assert (=> d!336866 m!1352539))

(declare-fun m!1352549 () Bool)

(assert (=> d!336866 m!1352549))

(declare-fun m!1352551 () Bool)

(assert (=> d!336866 m!1352551))

(assert (=> b!1175703 m!1351493))

(declare-fun m!1352553 () Bool)

(assert (=> b!1175699 m!1352553))

(declare-fun m!1352555 () Bool)

(assert (=> b!1175699 m!1352555))

(declare-fun m!1352557 () Bool)

(assert (=> b!1175699 m!1352557))

(declare-fun m!1352559 () Bool)

(assert (=> b!1175699 m!1352559))

(declare-fun m!1352561 () Bool)

(assert (=> b!1175699 m!1352561))

(declare-fun m!1352563 () Bool)

(assert (=> b!1175699 m!1352563))

(declare-fun m!1352565 () Bool)

(assert (=> b!1175699 m!1352565))

(declare-fun m!1352567 () Bool)

(assert (=> b!1175699 m!1352567))

(assert (=> b!1175699 m!1352553))

(declare-fun m!1352569 () Bool)

(assert (=> b!1175699 m!1352569))

(assert (=> b!1175699 m!1352557))

(declare-fun m!1352571 () Bool)

(assert (=> b!1175699 m!1352571))

(assert (=> b!1175699 m!1351449))

(declare-fun m!1352573 () Bool)

(assert (=> b!1175699 m!1352573))

(declare-fun m!1352575 () Bool)

(assert (=> b!1175699 m!1352575))

(declare-fun m!1352577 () Bool)

(assert (=> b!1175699 m!1352577))

(declare-fun m!1352579 () Bool)

(assert (=> b!1175699 m!1352579))

(declare-fun m!1352581 () Bool)

(assert (=> b!1175699 m!1352581))

(declare-fun m!1352583 () Bool)

(assert (=> b!1175699 m!1352583))

(assert (=> b!1175699 m!1351449))

(assert (=> b!1175699 m!1352567))

(declare-fun m!1352585 () Bool)

(assert (=> b!1175699 m!1352585))

(assert (=> b!1175699 m!1351431))

(assert (=> b!1175699 m!1352567))

(declare-fun m!1352587 () Bool)

(assert (=> b!1175699 m!1352587))

(declare-fun m!1352589 () Bool)

(assert (=> b!1175699 m!1352589))

(declare-fun m!1352591 () Bool)

(assert (=> b!1175699 m!1352591))

(declare-fun m!1352593 () Bool)

(assert (=> b!1175699 m!1352593))

(assert (=> b!1175699 m!1352579))

(declare-fun m!1352595 () Bool)

(assert (=> b!1175699 m!1352595))

(declare-fun m!1352597 () Bool)

(assert (=> b!1175699 m!1352597))

(declare-fun m!1352599 () Bool)

(assert (=> b!1175699 m!1352599))

(assert (=> b!1175699 m!1352563))

(assert (=> b!1175699 m!1352567))

(declare-fun m!1352601 () Bool)

(assert (=> b!1175699 m!1352601))

(assert (=> b!1175699 m!1351449))

(assert (=> b!1175699 m!1352601))

(declare-fun m!1352603 () Bool)

(assert (=> b!1175699 m!1352603))

(declare-fun m!1352605 () Bool)

(assert (=> b!1175698 m!1352605))

(declare-fun m!1352607 () Bool)

(assert (=> b!1175704 m!1352607))

(declare-fun m!1352609 () Bool)

(assert (=> b!1175697 m!1352609))

(assert (=> b!1175114 d!336866))

(declare-fun d!336868 () Bool)

(declare-fun lt!405160 () Int)

(assert (=> d!336868 (= lt!405160 (size!9183 (list!4296 (tokens!1676 thiss!10527))))))

(declare-fun size!9187 (Conc!3817) Int)

(assert (=> d!336868 (= lt!405160 (size!9187 (c!195953 (tokens!1676 thiss!10527))))))

(assert (=> d!336868 (= (size!9178 (tokens!1676 thiss!10527)) lt!405160)))

(declare-fun bs!286486 () Bool)

(assert (= bs!286486 d!336868))

(assert (=> bs!286486 m!1351431))

(assert (=> bs!286486 m!1351431))

(declare-fun m!1352611 () Bool)

(assert (=> bs!286486 m!1352611))

(declare-fun m!1352613 () Bool)

(assert (=> bs!286486 m!1352613))

(assert (=> b!1175104 d!336868))

(declare-fun bs!286487 () Bool)

(declare-fun d!336870 () Bool)

(assert (= bs!286487 (and d!336870 d!336806)))

(declare-fun lambda!48462 () Int)

(assert (=> bs!286487 (= lambda!48462 lambda!48453)))

(declare-fun bs!286488 () Bool)

(assert (= bs!286488 (and d!336870 d!336630)))

(assert (=> bs!286488 (= lambda!48462 lambda!48435)))

(declare-fun bs!286489 () Bool)

(assert (= bs!286489 (and d!336870 d!336822)))

(assert (=> bs!286489 (= lambda!48462 lambda!48459)))

(declare-fun bs!286490 () Bool)

(assert (= bs!286490 (and d!336870 d!336860)))

(assert (=> bs!286490 (= lambda!48462 lambda!48460)))

(declare-fun bs!286491 () Bool)

(assert (= bs!286491 (and d!336870 b!1175374)))

(assert (=> bs!286491 (= lambda!48462 lambda!48443)))

(declare-fun bs!286492 () Bool)

(assert (= bs!286492 (and d!336870 b!1175116)))

(assert (=> bs!286492 (= lambda!48462 lambda!48429)))

(declare-fun bs!286493 () Bool)

(assert (= bs!286493 (and d!336870 d!336862)))

(assert (=> bs!286493 (= lambda!48462 lambda!48461)))

(declare-fun bs!286494 () Bool)

(assert (= bs!286494 (and d!336870 d!336684)))

(assert (=> bs!286494 (= lambda!48462 lambda!48436)))

(declare-fun b!1175709 () Bool)

(declare-fun e!754368 () Bool)

(assert (=> b!1175709 (= e!754368 true)))

(declare-fun b!1175708 () Bool)

(declare-fun e!754367 () Bool)

(assert (=> b!1175708 (= e!754367 e!754368)))

(declare-fun b!1175707 () Bool)

(declare-fun e!754366 () Bool)

(assert (=> b!1175707 (= e!754366 e!754367)))

(assert (=> d!336870 e!754366))

(assert (= b!1175708 b!1175709))

(assert (= b!1175707 b!1175708))

(assert (= (and d!336870 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175707))

(assert (=> b!1175709 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48462))))

(assert (=> b!1175709 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48462))))

(assert (=> d!336870 true))

(declare-fun lt!405161 () Bool)

(assert (=> d!336870 (= lt!405161 (forall!3088 lt!404582 lambda!48462))))

(declare-fun e!754365 () Bool)

(assert (=> d!336870 (= lt!405161 e!754365)))

(declare-fun res!531484 () Bool)

(assert (=> d!336870 (=> res!531484 e!754365)))

(assert (=> d!336870 (= res!531484 (not ((_ is Cons!11624) lt!404582)))))

(assert (=> d!336870 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336870 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) lt!404582) lt!405161)))

(declare-fun b!1175705 () Bool)

(declare-fun e!754364 () Bool)

(assert (=> b!1175705 (= e!754365 e!754364)))

(declare-fun res!531485 () Bool)

(assert (=> b!1175705 (=> (not res!531485) (not e!754364))))

(assert (=> b!1175705 (= res!531485 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404582)))))

(declare-fun b!1175706 () Bool)

(assert (=> b!1175706 (= e!754364 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404582)))))

(assert (= (and d!336870 (not res!531484)) b!1175705))

(assert (= (and b!1175705 res!531485) b!1175706))

(declare-fun m!1352615 () Bool)

(assert (=> d!336870 m!1352615))

(assert (=> d!336870 m!1351493))

(assert (=> b!1175705 m!1351499))

(assert (=> b!1175706 m!1351515))

(assert (=> b!1175123 d!336870))

(assert (=> b!1175102 d!336864))

(declare-fun bs!286495 () Bool)

(declare-fun d!336872 () Bool)

(assert (= bs!286495 (and d!336872 d!336806)))

(declare-fun lambda!48463 () Int)

(assert (=> bs!286495 (= lambda!48463 lambda!48453)))

(declare-fun bs!286496 () Bool)

(assert (= bs!286496 (and d!336872 d!336870)))

(assert (=> bs!286496 (= lambda!48463 lambda!48462)))

(declare-fun bs!286497 () Bool)

(assert (= bs!286497 (and d!336872 d!336630)))

(assert (=> bs!286497 (= lambda!48463 lambda!48435)))

(declare-fun bs!286498 () Bool)

(assert (= bs!286498 (and d!336872 d!336822)))

(assert (=> bs!286498 (= lambda!48463 lambda!48459)))

(declare-fun bs!286499 () Bool)

(assert (= bs!286499 (and d!336872 d!336860)))

(assert (=> bs!286499 (= lambda!48463 lambda!48460)))

(declare-fun bs!286500 () Bool)

(assert (= bs!286500 (and d!336872 b!1175374)))

(assert (=> bs!286500 (= lambda!48463 lambda!48443)))

(declare-fun bs!286501 () Bool)

(assert (= bs!286501 (and d!336872 b!1175116)))

(assert (=> bs!286501 (= lambda!48463 lambda!48429)))

(declare-fun bs!286502 () Bool)

(assert (= bs!286502 (and d!336872 d!336862)))

(assert (=> bs!286502 (= lambda!48463 lambda!48461)))

(declare-fun bs!286503 () Bool)

(assert (= bs!286503 (and d!336872 d!336684)))

(assert (=> bs!286503 (= lambda!48463 lambda!48436)))

(declare-fun b!1175714 () Bool)

(declare-fun e!754373 () Bool)

(assert (=> b!1175714 (= e!754373 true)))

(declare-fun b!1175713 () Bool)

(declare-fun e!754372 () Bool)

(assert (=> b!1175713 (= e!754372 e!754373)))

(declare-fun b!1175712 () Bool)

(declare-fun e!754371 () Bool)

(assert (=> b!1175712 (= e!754371 e!754372)))

(assert (=> d!336872 e!754371))

(assert (= b!1175713 b!1175714))

(assert (= b!1175712 b!1175713))

(assert (= (and d!336872 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175712))

(assert (=> b!1175714 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48463))))

(assert (=> b!1175714 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48463))))

(assert (=> d!336872 true))

(declare-fun lt!405162 () Bool)

(assert (=> d!336872 (= lt!405162 (forall!3088 (t!111050 lt!404576) lambda!48463))))

(declare-fun e!754370 () Bool)

(assert (=> d!336872 (= lt!405162 e!754370)))

(declare-fun res!531486 () Bool)

(assert (=> d!336872 (=> res!531486 e!754370)))

(assert (=> d!336872 (= res!531486 (not ((_ is Cons!11624) (t!111050 lt!404576))))))

(assert (=> d!336872 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336872 (= (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 lt!404576)) lt!405162)))

(declare-fun b!1175710 () Bool)

(declare-fun e!754369 () Bool)

(assert (=> b!1175710 (= e!754370 e!754369)))

(declare-fun res!531487 () Bool)

(assert (=> b!1175710 (=> (not res!531487) (not e!754369))))

(assert (=> b!1175710 (= res!531487 (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 (t!111050 lt!404576))))))

(declare-fun b!1175711 () Bool)

(assert (=> b!1175711 (= e!754369 (rulesProduceEachTokenIndividuallyList!588 Lexer!1720 (rules!9698 thiss!10527) (t!111050 (t!111050 lt!404576))))))

(assert (= (and d!336872 (not res!531486)) b!1175710))

(assert (= (and b!1175710 res!531487) b!1175711))

(declare-fun m!1352617 () Bool)

(assert (=> d!336872 m!1352617))

(assert (=> d!336872 m!1351493))

(declare-fun m!1352619 () Bool)

(assert (=> b!1175710 m!1352619))

(declare-fun m!1352621 () Bool)

(assert (=> b!1175711 m!1352621))

(assert (=> b!1175113 d!336872))

(declare-fun d!336874 () Bool)

(declare-fun lt!405163 () Bool)

(declare-fun e!754374 () Bool)

(assert (=> d!336874 (= lt!405163 e!754374)))

(declare-fun res!531489 () Bool)

(assert (=> d!336874 (=> (not res!531489) (not e!754374))))

(assert (=> d!336874 (= res!531489 (= (list!4296 (_1!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404587)))))) (list!4296 (singletonSeq!694 (h!17025 lt!404587)))))))

(declare-fun e!754375 () Bool)

(assert (=> d!336874 (= lt!405163 e!754375)))

(declare-fun res!531488 () Bool)

(assert (=> d!336874 (=> (not res!531488) (not e!754375))))

(declare-fun lt!405164 () tuple2!12062)

(assert (=> d!336874 (= res!531488 (= (size!9178 (_1!6878 lt!405164)) 1))))

(assert (=> d!336874 (= lt!405164 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404587)))))))

(assert (=> d!336874 (not (isEmpty!7052 (rules!9698 thiss!10527)))))

(assert (=> d!336874 (= (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404587)) lt!405163)))

(declare-fun b!1175715 () Bool)

(declare-fun res!531490 () Bool)

(assert (=> b!1175715 (=> (not res!531490) (not e!754375))))

(assert (=> b!1175715 (= res!531490 (= (apply!2547 (_1!6878 lt!405164) 0) (h!17025 lt!404587)))))

(declare-fun b!1175716 () Bool)

(assert (=> b!1175716 (= e!754375 (isEmpty!7053 (_2!6878 lt!405164)))))

(declare-fun b!1175717 () Bool)

(assert (=> b!1175717 (= e!754374 (isEmpty!7053 (_2!6878 (lex!719 Lexer!1720 (rules!9698 thiss!10527) (print!656 Lexer!1720 (singletonSeq!694 (h!17025 lt!404587)))))))))

(assert (= (and d!336874 res!531488) b!1175715))

(assert (= (and b!1175715 res!531490) b!1175716))

(assert (= (and d!336874 res!531489) b!1175717))

(declare-fun m!1352623 () Bool)

(assert (=> d!336874 m!1352623))

(declare-fun m!1352625 () Bool)

(assert (=> d!336874 m!1352625))

(declare-fun m!1352627 () Bool)

(assert (=> d!336874 m!1352627))

(assert (=> d!336874 m!1352625))

(declare-fun m!1352629 () Bool)

(assert (=> d!336874 m!1352629))

(assert (=> d!336874 m!1352625))

(assert (=> d!336874 m!1352629))

(declare-fun m!1352631 () Bool)

(assert (=> d!336874 m!1352631))

(declare-fun m!1352633 () Bool)

(assert (=> d!336874 m!1352633))

(assert (=> d!336874 m!1351493))

(declare-fun m!1352635 () Bool)

(assert (=> b!1175715 m!1352635))

(declare-fun m!1352637 () Bool)

(assert (=> b!1175716 m!1352637))

(assert (=> b!1175717 m!1352625))

(assert (=> b!1175717 m!1352625))

(assert (=> b!1175717 m!1352629))

(assert (=> b!1175717 m!1352629))

(assert (=> b!1175717 m!1352631))

(declare-fun m!1352639 () Bool)

(assert (=> b!1175717 m!1352639))

(assert (=> b!1175111 d!336874))

(declare-fun d!336876 () Bool)

(declare-fun c!196017 () Bool)

(assert (=> d!336876 (= c!196017 ((_ is Node!3817) (c!195953 (tokens!1676 thiss!10527))))))

(declare-fun e!754380 () Bool)

(assert (=> d!336876 (= (inv!15359 (c!195953 (tokens!1676 thiss!10527))) e!754380)))

(declare-fun b!1175724 () Bool)

(declare-fun inv!15366 (Conc!3817) Bool)

(assert (=> b!1175724 (= e!754380 (inv!15366 (c!195953 (tokens!1676 thiss!10527))))))

(declare-fun b!1175725 () Bool)

(declare-fun e!754381 () Bool)

(assert (=> b!1175725 (= e!754380 e!754381)))

(declare-fun res!531493 () Bool)

(assert (=> b!1175725 (= res!531493 (not ((_ is Leaf!5841) (c!195953 (tokens!1676 thiss!10527)))))))

(assert (=> b!1175725 (=> res!531493 e!754381)))

(declare-fun b!1175726 () Bool)

(declare-fun inv!15367 (Conc!3817) Bool)

(assert (=> b!1175726 (= e!754381 (inv!15367 (c!195953 (tokens!1676 thiss!10527))))))

(assert (= (and d!336876 c!196017) b!1175724))

(assert (= (and d!336876 (not c!196017)) b!1175725))

(assert (= (and b!1175725 (not res!531493)) b!1175726))

(declare-fun m!1352641 () Bool)

(assert (=> b!1175724 m!1352641))

(declare-fun m!1352643 () Bool)

(assert (=> b!1175726 m!1352643))

(assert (=> b!1175122 d!336876))

(declare-fun b!1175737 () Bool)

(declare-fun b_free!27897 () Bool)

(declare-fun b_next!28601 () Bool)

(assert (=> b!1175737 (= b_free!27897 (not b_next!28601))))

(declare-fun tp!335010 () Bool)

(declare-fun b_and!80817 () Bool)

(assert (=> b!1175737 (= tp!335010 b_and!80817)))

(declare-fun b_free!27899 () Bool)

(declare-fun b_next!28603 () Bool)

(assert (=> b!1175737 (= b_free!27899 (not b_next!28603))))

(declare-fun t!111075 () Bool)

(declare-fun tb!66023 () Bool)

(assert (=> (and b!1175737 (= (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527)))) (toChars!2987 (transformation!2027 (rule!3448 lt!404579)))) t!111075) tb!66023))

(declare-fun b!1175742 () Bool)

(declare-fun e!754396 () Bool)

(declare-fun tp!335015 () Bool)

(declare-fun inv!15368 (Conc!3816) Bool)

(assert (=> b!1175742 (= e!754396 (and (inv!15368 (c!195952 (dynLambda!5156 (toChars!2987 (transformation!2027 (rule!3448 lt!404579))) (value!65766 lt!404579)))) tp!335015))))

(declare-fun result!79104 () Bool)

(declare-fun inv!15369 (BalanceConc!7654) Bool)

(assert (=> tb!66023 (= result!79104 (and (inv!15369 (dynLambda!5156 (toChars!2987 (transformation!2027 (rule!3448 lt!404579))) (value!65766 lt!404579))) e!754396))))

(assert (= tb!66023 b!1175742))

(declare-fun m!1352645 () Bool)

(assert (=> b!1175742 m!1352645))

(declare-fun m!1352647 () Bool)

(assert (=> tb!66023 m!1352647))

(assert (=> d!336676 t!111075))

(declare-fun tp!335009 () Bool)

(declare-fun b_and!80819 () Bool)

(assert (=> b!1175737 (= tp!335009 (and (=> t!111075 result!79104) b_and!80819))))

(declare-fun e!754392 () Bool)

(assert (=> b!1175737 (= e!754392 (and tp!335010 tp!335009))))

(declare-fun b!1175736 () Bool)

(declare-fun tp!335012 () Bool)

(declare-fun e!754390 () Bool)

(declare-fun inv!15353 (String!14053) Bool)

(declare-fun inv!15370 (TokenValueInjection!3886) Bool)

(assert (=> b!1175736 (= e!754390 (and tp!335012 (inv!15353 (tag!2289 (h!17026 (rules!9698 thiss!10527)))) (inv!15370 (transformation!2027 (h!17026 (rules!9698 thiss!10527)))) e!754392))))

(declare-fun b!1175735 () Bool)

(declare-fun e!754391 () Bool)

(declare-fun tp!335011 () Bool)

(assert (=> b!1175735 (= e!754391 (and e!754390 tp!335011))))

(assert (=> b!1175108 (= tp!334976 e!754391)))

(assert (= b!1175736 b!1175737))

(assert (= b!1175735 b!1175736))

(assert (= (and b!1175108 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175735))

(declare-fun m!1352649 () Bool)

(assert (=> b!1175736 m!1352649))

(declare-fun m!1352651 () Bool)

(assert (=> b!1175736 m!1352651))

(declare-fun b!1175751 () Bool)

(declare-fun e!754401 () Bool)

(assert (=> b!1175751 (= e!754401 true)))

(declare-fun b!1175753 () Bool)

(declare-fun e!754402 () Bool)

(assert (=> b!1175753 (= e!754402 true)))

(declare-fun b!1175752 () Bool)

(assert (=> b!1175752 (= e!754401 e!754402)))

(assert (=> b!1175131 e!754401))

(assert (= (and b!1175131 ((_ is Node!3817) (c!195953 (tokens!1676 thiss!10527)))) b!1175751))

(assert (= b!1175752 b!1175753))

(assert (= (and b!1175131 ((_ is Leaf!5841) (c!195953 (tokens!1676 thiss!10527)))) b!1175752))

(declare-fun b!1175756 () Bool)

(declare-fun e!754405 () Bool)

(assert (=> b!1175756 (= e!754405 true)))

(declare-fun b!1175755 () Bool)

(declare-fun e!754404 () Bool)

(assert (=> b!1175755 (= e!754404 e!754405)))

(declare-fun b!1175754 () Bool)

(declare-fun e!754403 () Bool)

(assert (=> b!1175754 (= e!754403 e!754404)))

(assert (=> b!1175130 e!754403))

(assert (= b!1175755 b!1175756))

(assert (= b!1175754 b!1175755))

(assert (= (and b!1175130 ((_ is Cons!11625) (rules!9698 thiss!10527))) b!1175754))

(assert (=> b!1175756 (< (dynLambda!5152 order!7161 (toValue!3128 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48429))))

(assert (=> b!1175756 (< (dynLambda!5154 order!7165 (toChars!2987 (transformation!2027 (h!17026 (rules!9698 thiss!10527))))) (dynLambda!5153 order!7163 lambda!48429))))

(declare-fun b!1175765 () Bool)

(declare-fun e!754410 () Bool)

(declare-fun tp!335023 () Bool)

(declare-fun tp!335024 () Bool)

(assert (=> b!1175765 (= e!754410 (and (inv!15359 (left!10164 (c!195953 (tokens!1676 thiss!10527)))) tp!335023 (inv!15359 (right!10494 (c!195953 (tokens!1676 thiss!10527)))) tp!335024))))

(declare-fun b!1175767 () Bool)

(declare-fun e!754411 () Bool)

(declare-fun tp!335022 () Bool)

(assert (=> b!1175767 (= e!754411 tp!335022)))

(declare-fun b!1175766 () Bool)

(declare-fun inv!15371 (IArray!7639) Bool)

(assert (=> b!1175766 (= e!754410 (and (inv!15371 (xs!6522 (c!195953 (tokens!1676 thiss!10527)))) e!754411))))

(assert (=> b!1175122 (= tp!334975 (and (inv!15359 (c!195953 (tokens!1676 thiss!10527))) e!754410))))

(assert (= (and b!1175122 ((_ is Node!3817) (c!195953 (tokens!1676 thiss!10527)))) b!1175765))

(assert (= b!1175766 b!1175767))

(assert (= (and b!1175122 ((_ is Leaf!5841) (c!195953 (tokens!1676 thiss!10527)))) b!1175766))

(declare-fun m!1352653 () Bool)

(assert (=> b!1175765 m!1352653))

(declare-fun m!1352655 () Bool)

(assert (=> b!1175765 m!1352655))

(declare-fun m!1352657 () Bool)

(assert (=> b!1175766 m!1352657))

(assert (=> b!1175122 m!1351541))

(declare-fun b_lambda!35163 () Bool)

(assert (= b_lambda!35151 (or b!1175116 b_lambda!35163)))

(declare-fun bs!286504 () Bool)

(declare-fun d!336878 () Bool)

(assert (= bs!286504 (and d!336878 b!1175116)))

(assert (=> bs!286504 (= (dynLambda!5155 lambda!48429 (h!17025 lt!404582)) (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404582)))))

(assert (=> bs!286504 m!1351499))

(assert (=> b!1175237 d!336878))

(declare-fun b_lambda!35165 () Bool)

(assert (= b_lambda!35155 (or b!1175116 b_lambda!35165)))

(declare-fun bs!286505 () Bool)

(declare-fun d!336880 () Bool)

(assert (= bs!286505 (and d!336880 b!1175116)))

(assert (=> bs!286505 (= (dynLambda!5155 lambda!48429 (h!17025 lt!404587)) (rulesProduceIndividualToken!757 Lexer!1720 (rules!9698 thiss!10527) (h!17025 lt!404587)))))

(assert (=> bs!286505 m!1351537))

(assert (=> b!1175260 d!336880))

(check-sat (not b!1175707) (not d!336872) (not d!336860) (not b!1175449) (not b!1175424) (not b!1175177) (not b!1175566) (not b!1175525) (not b!1175765) (not d!336702) (not b!1175468) (not b!1175228) (not b!1175263) (not b!1175575) (not b_next!28603) (not d!336668) (not d!336788) (not b!1175430) (not b!1175700) (not b!1175514) (not d!336746) (not d!336690) (not bs!286504) (not b!1175736) (not d!336856) (not d!336768) (not b!1175375) (not d!336870) (not b!1175754) (not b!1175372) (not d!336666) (not b!1175455) (not b!1175571) (not b!1175710) (not b_lambda!35165) (not b!1175526) (not d!336742) (not d!336728) (not d!336822) (not b!1175259) (not b!1175699) (not d!336676) (not b!1175232) (not d!336866) (not b!1175521) (not b!1175590) (not b!1175753) (not b!1175434) (not b!1175470) (not b!1175264) (not b!1175469) (not d!336862) (not b!1175429) (not d!336736) (not b!1175446) (not b!1175742) (not b!1175227) (not b!1175724) (not b!1175715) (not d!336790) (not b!1175249) (not b!1175698) (not b!1175444) (not b!1175165) (not b!1175156) (not b!1175589) (not b!1175376) (not b!1175427) (not b_next!28601) (not b!1175505) (not b!1175726) (not d!336650) (not b!1175529) (not b!1175261) (not b!1175702) (not b!1175711) (not b_lambda!35153) (not b!1175452) (not b!1175569) (not d!336744) b_and!80817 (not b!1175229) (not bm!82418) (not b!1175464) (not b!1175373) (not b!1175257) (not b!1175445) (not d!336874) (not b!1175567) (not b!1175576) (not b!1175751) (not d!336686) (not d!336660) (not b!1175701) (not b!1175238) (not b!1175528) (not d!336858) (not b!1175286) (not d!336738) (not d!336680) (not b!1175581) (not b!1175287) (not b!1175178) (not d!336806) (not d!336750) (not d!336774) (not b!1175428) (not b!1175462) (not b!1175705) (not b!1175578) (not d!336808) (not d!336706) (not b!1175693) (not b!1175451) (not b!1175437) (not d!336684) (not b!1175467) (not b!1175570) (not d!336670) (not b!1175425) (not d!336630) (not b!1175463) (not b!1175454) (not d!336644) (not b!1175568) (not b!1175712) (not bm!82419) (not bm!82414) (not b!1175250) (not b!1175504) (not b!1175690) (not b!1175527) (not b!1175172) (not b!1175155) (not b!1175513) (not d!336776) (not b!1175717) (not b!1175704) b_and!80819 (not bs!286505) (not d!336772) (not b!1175579) (not b_lambda!35163) (not b!1175450) (not d!336864) (not b!1175258) (not d!336646) (not b!1175697) (not d!336734) (not b!1175433) (not b!1175685) (not b!1175574) (not b!1175688) (not b!1175735) (not d!336786) (not b!1175580) (not b!1175684) (not b!1175706) (not d!336672) (not b!1175423) (not d!336730) (not b!1175577) (not d!336688) (not b!1175122) (not d!336792) (not b!1175374) (not d!336674) (not d!336780) (not b!1175694) (not d!336784) (not d!336868) (not b!1175689) (not bm!82420) (not b!1175426) (not b!1175767) (not b!1175766) (not tb!66023) (not b!1175262) (not b!1175716) (not b!1175703))
(check-sat b_and!80817 b_and!80819 (not b_next!28601) (not b_next!28603))
