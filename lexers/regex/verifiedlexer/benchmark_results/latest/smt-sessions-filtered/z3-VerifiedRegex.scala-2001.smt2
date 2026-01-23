; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101602 () Bool)

(assert start!101602)

(declare-fun b!1160750 () Bool)

(declare-fun e!743099 () Bool)

(assert (=> b!1160750 (= e!743099 true)))

(declare-fun b!1160749 () Bool)

(declare-fun e!743098 () Bool)

(assert (=> b!1160749 (= e!743098 e!743099)))

(declare-fun b!1160732 () Bool)

(assert (=> b!1160732 e!743098))

(assert (= b!1160749 b!1160750))

(assert (= b!1160732 b!1160749))

(declare-fun b!1160722 () Bool)

(declare-fun e!743088 () Bool)

(declare-datatypes ((List!11433 0))(
  ( (Nil!11409) (Cons!11409 (h!16810 (_ BitVec 16)) (t!109737 List!11433)) )
))
(declare-datatypes ((TokenValue!2049 0))(
  ( (FloatLiteralValue!4098 (text!14788 List!11433)) (TokenValueExt!2048 (__x!7809 Int)) (Broken!10245 (value!64486 List!11433)) (Object!2072) (End!2049) (Def!2049) (Underscore!2049) (Match!2049) (Else!2049) (Error!2049) (Case!2049) (If!2049) (Extends!2049) (Abstract!2049) (Class!2049) (Val!2049) (DelimiterValue!4098 (del!2109 List!11433)) (KeywordValue!2055 (value!64487 List!11433)) (CommentValue!4098 (value!64488 List!11433)) (WhitespaceValue!4098 (value!64489 List!11433)) (IndentationValue!2049 (value!64490 List!11433)) (String!13832) (Int32!2049) (Broken!10246 (value!64491 List!11433)) (Boolean!2050) (Unit!17406) (OperatorValue!2052 (op!2109 List!11433)) (IdentifierValue!4098 (value!64492 List!11433)) (IdentifierValue!4099 (value!64493 List!11433)) (WhitespaceValue!4099 (value!64494 List!11433)) (True!4098) (False!4098) (Broken!10247 (value!64495 List!11433)) (Broken!10248 (value!64496 List!11433)) (True!4099) (RightBrace!2049) (RightBracket!2049) (Colon!2049) (Null!2049) (Comma!2049) (LeftBracket!2049) (False!4099) (LeftBrace!2049) (ImaginaryLiteralValue!2049 (text!14789 List!11433)) (StringLiteralValue!6147 (value!64497 List!11433)) (EOFValue!2049 (value!64498 List!11433)) (IdentValue!2049 (value!64499 List!11433)) (DelimiterValue!4099 (value!64500 List!11433)) (DedentValue!2049 (value!64501 List!11433)) (NewLineValue!2049 (value!64502 List!11433)) (IntegerValue!6147 (value!64503 (_ BitVec 32)) (text!14790 List!11433)) (IntegerValue!6148 (value!64504 Int) (text!14791 List!11433)) (Times!2049) (Or!2049) (Equal!2049) (Minus!2049) (Broken!10249 (value!64505 List!11433)) (And!2049) (Div!2049) (LessEqual!2049) (Mod!2049) (Concat!5302) (Not!2049) (Plus!2049) (SpaceValue!2049 (value!64506 List!11433)) (IntegerValue!6149 (value!64507 Int) (text!14792 List!11433)) (StringLiteralValue!6148 (text!14793 List!11433)) (FloatLiteralValue!4099 (text!14794 List!11433)) (BytesLiteralValue!2049 (value!64508 List!11433)) (CommentValue!4099 (value!64509 List!11433)) (StringLiteralValue!6149 (value!64510 List!11433)) (ErrorTokenValue!2049 (msg!2110 List!11433)) )
))
(declare-datatypes ((C!6824 0))(
  ( (C!6825 (val!3668 Int)) )
))
(declare-datatypes ((Regex!3253 0))(
  ( (ElementMatch!3253 (c!194228 C!6824)) (Concat!5303 (regOne!7018 Regex!3253) (regTwo!7018 Regex!3253)) (EmptyExpr!3253) (Star!3253 (reg!3582 Regex!3253)) (EmptyLang!3253) (Union!3253 (regOne!7019 Regex!3253) (regTwo!7019 Regex!3253)) )
))
(declare-datatypes ((String!13833 0))(
  ( (String!13834 (value!64511 String)) )
))
(declare-datatypes ((List!11434 0))(
  ( (Nil!11410) (Cons!11410 (h!16811 C!6824) (t!109738 List!11434)) )
))
(declare-datatypes ((IArray!7461 0))(
  ( (IArray!7462 (innerList!3788 List!11434)) )
))
(declare-datatypes ((Conc!3728 0))(
  ( (Node!3728 (left!9969 Conc!3728) (right!10299 Conc!3728) (csize!7686 Int) (cheight!3939 Int)) (Leaf!5730 (xs!6433 IArray!7461) (csize!7687 Int)) (Empty!3728) )
))
(declare-datatypes ((BalanceConc!7478 0))(
  ( (BalanceConc!7479 (c!194229 Conc!3728)) )
))
(declare-datatypes ((TokenValueInjection!3798 0))(
  ( (TokenValueInjection!3799 (toValue!3084 Int) (toChars!2943 Int)) )
))
(declare-datatypes ((Rule!3766 0))(
  ( (Rule!3767 (regex!1983 Regex!3253) (tag!2245 String!13833) (isSeparator!1983 Bool) (transformation!1983 TokenValueInjection!3798)) )
))
(declare-datatypes ((Token!3628 0))(
  ( (Token!3629 (value!64512 TokenValue!2049) (rule!3404 Rule!3766) (size!8963 Int) (originalCharacters!2537 List!11434)) )
))
(declare-datatypes ((List!11435 0))(
  ( (Nil!11411) (Cons!11411 (h!16812 Token!3628) (t!109739 List!11435)) )
))
(declare-datatypes ((List!11436 0))(
  ( (Nil!11412) (Cons!11412 (h!16813 Rule!3766) (t!109740 List!11436)) )
))
(declare-datatypes ((IArray!7463 0))(
  ( (IArray!7464 (innerList!3789 List!11435)) )
))
(declare-datatypes ((Conc!3729 0))(
  ( (Node!3729 (left!9970 Conc!3729) (right!10300 Conc!3729) (csize!7688 Int) (cheight!3940 Int)) (Leaf!5731 (xs!6434 IArray!7463) (csize!7689 Int)) (Empty!3729) )
))
(declare-datatypes ((BalanceConc!7480 0))(
  ( (BalanceConc!7481 (c!194230 Conc!3729)) )
))
(declare-datatypes ((PrintableTokens!652 0))(
  ( (PrintableTokens!653 (rules!9480 List!11436) (tokens!1584 BalanceConc!7480)) )
))
(declare-fun thiss!10527 () PrintableTokens!652)

(declare-datatypes ((LexerInterface!1678 0))(
  ( (LexerInterfaceExt!1675 (__x!7810 Int)) (Lexer!1676) )
))
(declare-fun tokensListTwoByTwoPredicateSeparable!53 (LexerInterface!1678 BalanceConc!7480 Int List!11436) Bool)

(assert (=> b!1160722 (= e!743088 (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 (tokens!1584 thiss!10527) 1 (rules!9480 thiss!10527)))))

(declare-fun b!1160723 () Bool)

(declare-fun e!743082 () Bool)

(declare-fun lt!394771 () List!11435)

(declare-fun tokensListTwoByTwoPredicateSeparableList!90 (LexerInterface!1678 List!11435 List!11436) Bool)

(assert (=> b!1160723 (= e!743082 (tokensListTwoByTwoPredicateSeparableList!90 Lexer!1676 lt!394771 (rules!9480 thiss!10527)))))

(declare-fun b!1160724 () Bool)

(declare-fun e!743080 () Bool)

(assert (=> b!1160724 (= e!743080 e!743088)))

(declare-fun res!523161 () Bool)

(assert (=> b!1160724 (=> (not res!523161) (not e!743088))))

(declare-fun lt!394788 () Token!3628)

(declare-fun lt!394781 () Token!3628)

(declare-fun separableTokensPredicate!114 (LexerInterface!1678 Token!3628 Token!3628 List!11436) Bool)

(assert (=> b!1160724 (= res!523161 (separableTokensPredicate!114 Lexer!1676 lt!394788 lt!394781 (rules!9480 thiss!10527)))))

(declare-fun e!743089 () Bool)

(assert (=> b!1160724 e!743089))

(declare-fun res!523149 () Bool)

(assert (=> b!1160724 (=> (not res!523149) (not e!743089))))

(declare-fun rulesProduceIndividualToken!715 (LexerInterface!1678 List!11436 Token!3628) Bool)

(assert (=> b!1160724 (= res!523149 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!394781))))

(declare-fun lt!394783 () List!11435)

(declare-datatypes ((Unit!17407 0))(
  ( (Unit!17408) )
))
(declare-fun lt!394785 () Unit!17407)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 (LexerInterface!1678 List!11436 List!11435 Token!3628) Unit!17407)

(assert (=> b!1160724 (= lt!394785 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!394783 lt!394781))))

(declare-fun apply!2429 (BalanceConc!7480 Int) Token!3628)

(assert (=> b!1160724 (= lt!394781 (apply!2429 (tokens!1584 thiss!10527) 1))))

(assert (=> b!1160724 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!394788)))

(declare-fun lt!394770 () Unit!17407)

(assert (=> b!1160724 (= lt!394770 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!394783 lt!394788))))

(assert (=> b!1160724 (= lt!394788 (apply!2429 (tokens!1584 thiss!10527) 0))))

(declare-fun lt!394777 () List!11435)

(declare-fun tail!1670 (List!11435) List!11435)

(declare-fun drop!465 (List!11435 Int) List!11435)

(assert (=> b!1160724 (= (tail!1670 lt!394777) (drop!465 lt!394783 2))))

(declare-fun lt!394789 () Unit!17407)

(declare-fun lemmaDropTail!343 (List!11435 Int) Unit!17407)

(assert (=> b!1160724 (= lt!394789 (lemmaDropTail!343 lt!394783 1))))

(declare-fun lt!394774 () List!11435)

(assert (=> b!1160724 (= (tail!1670 lt!394774) lt!394777)))

(declare-fun lt!394776 () Unit!17407)

(assert (=> b!1160724 (= lt!394776 (lemmaDropTail!343 lt!394783 0))))

(declare-fun head!2086 (List!11435) Token!3628)

(declare-fun apply!2430 (List!11435 Int) Token!3628)

(assert (=> b!1160724 (= (head!2086 lt!394777) (apply!2430 lt!394783 1))))

(assert (=> b!1160724 (= lt!394777 (drop!465 lt!394783 1))))

(declare-fun lt!394782 () Unit!17407)

(declare-fun lemmaDropApply!355 (List!11435 Int) Unit!17407)

(assert (=> b!1160724 (= lt!394782 (lemmaDropApply!355 lt!394783 1))))

(assert (=> b!1160724 (= (head!2086 lt!394774) (apply!2430 lt!394783 0))))

(assert (=> b!1160724 (= lt!394774 (drop!465 lt!394783 0))))

(declare-fun lt!394784 () Unit!17407)

(assert (=> b!1160724 (= lt!394784 (lemmaDropApply!355 lt!394783 0))))

(declare-fun b!1160725 () Bool)

(declare-fun res!523155 () Bool)

(declare-fun e!743077 () Bool)

(assert (=> b!1160725 (=> (not res!523155) (not e!743077))))

(declare-fun lambda!47301 () Int)

(declare-fun lt!394775 () BalanceConc!7480)

(declare-fun rulesProduceEachTokenIndividually!717 (LexerInterface!1678 List!11436 BalanceConc!7480) Bool)

(declare-fun forall!2970 (BalanceConc!7480 Int) Bool)

(assert (=> b!1160725 (= res!523155 (= (rulesProduceEachTokenIndividually!717 Lexer!1676 (rules!9480 thiss!10527) lt!394775) (forall!2970 lt!394775 lambda!47301)))))

(declare-fun b!1160726 () Bool)

(declare-fun e!743076 () Bool)

(declare-fun e!743083 () Bool)

(assert (=> b!1160726 (= e!743076 e!743083)))

(declare-fun res!523164 () Bool)

(assert (=> b!1160726 (=> (not res!523164) (not e!743083))))

(declare-fun to!267 () Int)

(declare-fun lt!394787 () Int)

(assert (=> b!1160726 (= res!523164 (<= to!267 lt!394787))))

(declare-fun size!8964 (BalanceConc!7480) Int)

(assert (=> b!1160726 (= lt!394787 (size!8964 (tokens!1584 thiss!10527)))))

(declare-fun tp!333762 () Bool)

(declare-fun b!1160727 () Bool)

(declare-fun e!743090 () Bool)

(declare-fun e!743075 () Bool)

(declare-fun inv!14995 (BalanceConc!7480) Bool)

(assert (=> b!1160727 (= e!743075 (and tp!333762 (inv!14995 (tokens!1584 thiss!10527)) e!743090))))

(declare-fun b!1160728 () Bool)

(declare-fun e!743079 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!546 (LexerInterface!1678 List!11436 List!11435) Bool)

(assert (=> b!1160728 (= e!743079 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394771)))))

(declare-fun res!523157 () Bool)

(assert (=> start!101602 (=> (not res!523157) (not e!743076))))

(declare-fun from!787 () Int)

(assert (=> start!101602 (= res!523157 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101602 e!743076))

(assert (=> start!101602 true))

(declare-fun inv!14996 (PrintableTokens!652) Bool)

(assert (=> start!101602 (and (inv!14996 thiss!10527) e!743075)))

(declare-fun b!1160729 () Bool)

(declare-fun res!523150 () Bool)

(declare-fun e!743092 () Bool)

(assert (=> b!1160729 (=> res!523150 e!743092)))

(assert (=> b!1160729 (= res!523150 (not (forall!2970 lt!394775 lambda!47301)))))

(declare-fun b!1160730 () Bool)

(declare-fun e!743081 () Bool)

(assert (=> b!1160730 (= e!743081 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394783)))))

(declare-fun b!1160731 () Bool)

(declare-fun e!743078 () Bool)

(declare-fun e!743086 () Bool)

(assert (=> b!1160731 (= e!743078 e!743086)))

(declare-fun res!523152 () Bool)

(assert (=> b!1160731 (=> (not res!523152) (not e!743086))))

(declare-fun lt!394772 () List!11435)

(assert (=> b!1160731 (= res!523152 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394772)))))

(declare-fun e!743091 () Bool)

(declare-fun e!743084 () Bool)

(assert (=> b!1160732 (= e!743091 (not e!743084))))

(declare-fun res!523147 () Bool)

(assert (=> b!1160732 (=> res!523147 e!743084)))

(assert (=> b!1160732 (= res!523147 (not (forall!2970 (tokens!1584 thiss!10527) lambda!47301)))))

(declare-fun e!743093 () Bool)

(assert (=> b!1160732 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!394783) e!743093)))

(declare-fun res!523162 () Bool)

(assert (=> b!1160732 (=> res!523162 e!743093)))

(get-info :version)

(assert (=> b!1160732 (= res!523162 (not ((_ is Cons!11411) lt!394783)))))

(declare-fun list!4198 (BalanceConc!7480) List!11435)

(assert (=> b!1160732 (= lt!394783 (list!4198 (tokens!1584 thiss!10527)))))

(assert (=> b!1160732 (= (rulesProduceEachTokenIndividually!717 Lexer!1676 (rules!9480 thiss!10527) (tokens!1584 thiss!10527)) (forall!2970 (tokens!1584 thiss!10527) lambda!47301))))

(declare-fun b!1160733 () Bool)

(assert (=> b!1160733 (= e!743093 e!743081)))

(declare-fun res!523151 () Bool)

(assert (=> b!1160733 (=> (not res!523151) (not e!743081))))

(assert (=> b!1160733 (= res!523151 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394783)))))

(declare-fun b!1160734 () Bool)

(assert (=> b!1160734 (= e!743077 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!394772) e!743078))))

(declare-fun res!523159 () Bool)

(assert (=> b!1160734 (=> res!523159 e!743078)))

(assert (=> b!1160734 (= res!523159 (not ((_ is Cons!11411) lt!394772)))))

(declare-fun b!1160735 () Bool)

(declare-fun e!743085 () Bool)

(assert (=> b!1160735 (= e!743085 e!743079)))

(declare-fun res!523156 () Bool)

(assert (=> b!1160735 (=> (not res!523156) (not e!743079))))

(assert (=> b!1160735 (= res!523156 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394771)))))

(declare-fun b!1160736 () Bool)

(declare-fun size!8965 (BalanceConc!7478) Int)

(declare-fun charsOf!1052 (Token!3628) BalanceConc!7478)

(assert (=> b!1160736 (= e!743089 (> (size!8965 (charsOf!1052 lt!394781)) 0))))

(declare-fun b!1160737 () Bool)

(assert (=> b!1160737 (= e!743084 e!743092)))

(declare-fun res!523154 () Bool)

(assert (=> b!1160737 (=> res!523154 e!743092)))

(declare-fun forall!2971 (List!11435 Int) Bool)

(assert (=> b!1160737 (= res!523154 (not (forall!2971 lt!394772 lambda!47301)))))

(assert (=> b!1160737 e!743077))

(declare-fun res!523160 () Bool)

(assert (=> b!1160737 (=> (not res!523160) (not e!743077))))

(assert (=> b!1160737 (= res!523160 (forall!2971 lt!394772 lambda!47301))))

(declare-fun lt!394790 () Unit!17407)

(declare-fun lemmaForallSubseq!131 (List!11435 List!11435 Int) Unit!17407)

(assert (=> b!1160737 (= lt!394790 (lemmaForallSubseq!131 lt!394772 lt!394783 lambda!47301))))

(assert (=> b!1160737 (= lt!394772 (list!4198 lt!394775))))

(declare-fun slice!263 (BalanceConc!7480 Int Int) BalanceConc!7480)

(assert (=> b!1160737 (= lt!394775 (slice!263 (tokens!1584 thiss!10527) from!787 to!267))))

(declare-fun subseq!239 (List!11435 List!11435) Bool)

(declare-fun slice!264 (List!11435 Int Int) List!11435)

(assert (=> b!1160737 (subseq!239 (slice!264 lt!394783 from!787 to!267) lt!394783)))

(declare-fun lt!394780 () Unit!17407)

(declare-fun lemmaSliceSubseq!80 (List!11435 Int Int) Unit!17407)

(assert (=> b!1160737 (= lt!394780 (lemmaSliceSubseq!80 lt!394783 from!787 to!267))))

(declare-fun b!1160738 () Bool)

(declare-fun tp!333761 () Bool)

(declare-fun inv!14997 (Conc!3729) Bool)

(assert (=> b!1160738 (= e!743090 (and (inv!14997 (c!194230 (tokens!1584 thiss!10527))) tp!333761))))

(declare-fun b!1160739 () Bool)

(assert (=> b!1160739 (= e!743083 e!743091)))

(declare-fun res!523153 () Bool)

(assert (=> b!1160739 (=> (not res!523153) (not e!743091))))

(declare-fun rulesInvariant!1552 (LexerInterface!1678 List!11436) Bool)

(assert (=> b!1160739 (= res!523153 (rulesInvariant!1552 Lexer!1676 (rules!9480 thiss!10527)))))

(declare-fun lt!394773 () Unit!17407)

(declare-fun lemmaInvariant!170 (PrintableTokens!652) Unit!17407)

(assert (=> b!1160739 (= lt!394773 (lemmaInvariant!170 thiss!10527))))

(declare-fun b!1160740 () Bool)

(declare-fun e!743087 () Bool)

(assert (=> b!1160740 (= e!743087 (= (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 (tokens!1584 thiss!10527) 0 (rules!9480 thiss!10527)) e!743080))))

(declare-fun res!523163 () Bool)

(assert (=> b!1160740 (=> res!523163 e!743080)))

(assert (=> b!1160740 (= res!523163 (>= 0 (- lt!394787 1)))))

(declare-fun b!1160741 () Bool)

(assert (=> b!1160741 (= e!743086 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394772)))))

(declare-fun b!1160742 () Bool)

(declare-fun isEmpty!6975 (List!11436) Bool)

(assert (=> b!1160742 (= e!743092 (not (isEmpty!6975 (rules!9480 thiss!10527))))))

(assert (=> b!1160742 e!743082))

(declare-fun res!523148 () Bool)

(assert (=> b!1160742 (=> (not res!523148) (not e!743082))))

(assert (=> b!1160742 (= res!523148 (forall!2971 lt!394771 lambda!47301))))

(declare-fun lt!394778 () Unit!17407)

(assert (=> b!1160742 (= lt!394778 (lemmaForallSubseq!131 lt!394771 lt!394783 lambda!47301))))

(assert (=> b!1160742 (subseq!239 lt!394771 lt!394783)))

(declare-fun lt!394779 () Unit!17407)

(declare-fun lemmaDropSubseq!30 (List!11435 Int) Unit!17407)

(assert (=> b!1160742 (= lt!394779 (lemmaDropSubseq!30 lt!394783 from!787))))

(assert (=> b!1160742 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!394771) e!743085)))

(declare-fun res!523165 () Bool)

(assert (=> b!1160742 (=> res!523165 e!743085)))

(assert (=> b!1160742 (= res!523165 (not ((_ is Cons!11411) lt!394771)))))

(assert (=> b!1160742 (= lt!394771 (drop!465 lt!394783 from!787))))

(declare-fun lt!394786 () Unit!17407)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!30 (LexerInterface!1678 List!11435 Int List!11436) Unit!17407)

(assert (=> b!1160742 (= lt!394786 (tokensListTwoByTwoPredicateSeparableTokensDropList!30 Lexer!1676 lt!394783 from!787 (rules!9480 thiss!10527)))))

(assert (=> b!1160742 e!743087))

(declare-fun res!523158 () Bool)

(assert (=> b!1160742 (=> (not res!523158) (not e!743087))))

(declare-fun separableTokens!120 (LexerInterface!1678 BalanceConc!7480 List!11436) Bool)

(assert (=> b!1160742 (= res!523158 (= (separableTokens!120 Lexer!1676 lt!394775 (rules!9480 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 lt!394775 0 (rules!9480 thiss!10527))))))

(assert (= (and start!101602 res!523157) b!1160726))

(assert (= (and b!1160726 res!523164) b!1160739))

(assert (= (and b!1160739 res!523153) b!1160732))

(assert (= (and b!1160732 (not res!523162)) b!1160733))

(assert (= (and b!1160733 res!523151) b!1160730))

(assert (= (and b!1160732 (not res!523147)) b!1160737))

(assert (= (and b!1160737 res!523160) b!1160725))

(assert (= (and b!1160725 res!523155) b!1160734))

(assert (= (and b!1160734 (not res!523159)) b!1160731))

(assert (= (and b!1160731 res!523152) b!1160741))

(assert (= (and b!1160737 (not res!523154)) b!1160729))

(assert (= (and b!1160729 (not res!523150)) b!1160742))

(assert (= (and b!1160742 res!523158) b!1160740))

(assert (= (and b!1160740 (not res!523163)) b!1160724))

(assert (= (and b!1160724 res!523149) b!1160736))

(assert (= (and b!1160724 res!523161) b!1160722))

(assert (= (and b!1160742 (not res!523165)) b!1160735))

(assert (= (and b!1160735 res!523156) b!1160728))

(assert (= (and b!1160742 res!523148) b!1160723))

(assert (= b!1160727 b!1160738))

(assert (= start!101602 b!1160727))

(declare-fun m!1327549 () Bool)

(assert (=> b!1160736 m!1327549))

(assert (=> b!1160736 m!1327549))

(declare-fun m!1327551 () Bool)

(assert (=> b!1160736 m!1327551))

(declare-fun m!1327553 () Bool)

(assert (=> b!1160729 m!1327553))

(declare-fun m!1327555 () Bool)

(assert (=> b!1160739 m!1327555))

(declare-fun m!1327557 () Bool)

(assert (=> b!1160739 m!1327557))

(declare-fun m!1327559 () Bool)

(assert (=> b!1160734 m!1327559))

(declare-fun m!1327561 () Bool)

(assert (=> b!1160741 m!1327561))

(declare-fun m!1327563 () Bool)

(assert (=> b!1160728 m!1327563))

(declare-fun m!1327565 () Bool)

(assert (=> b!1160738 m!1327565))

(declare-fun m!1327567 () Bool)

(assert (=> b!1160723 m!1327567))

(declare-fun m!1327569 () Bool)

(assert (=> b!1160731 m!1327569))

(declare-fun m!1327571 () Bool)

(assert (=> b!1160742 m!1327571))

(declare-fun m!1327573 () Bool)

(assert (=> b!1160742 m!1327573))

(declare-fun m!1327575 () Bool)

(assert (=> b!1160742 m!1327575))

(declare-fun m!1327577 () Bool)

(assert (=> b!1160742 m!1327577))

(declare-fun m!1327579 () Bool)

(assert (=> b!1160742 m!1327579))

(declare-fun m!1327581 () Bool)

(assert (=> b!1160742 m!1327581))

(declare-fun m!1327583 () Bool)

(assert (=> b!1160742 m!1327583))

(declare-fun m!1327585 () Bool)

(assert (=> b!1160742 m!1327585))

(declare-fun m!1327587 () Bool)

(assert (=> b!1160742 m!1327587))

(declare-fun m!1327589 () Bool)

(assert (=> b!1160742 m!1327589))

(declare-fun m!1327591 () Bool)

(assert (=> start!101602 m!1327591))

(declare-fun m!1327593 () Bool)

(assert (=> b!1160722 m!1327593))

(declare-fun m!1327595 () Bool)

(assert (=> b!1160727 m!1327595))

(declare-fun m!1327597 () Bool)

(assert (=> b!1160737 m!1327597))

(declare-fun m!1327599 () Bool)

(assert (=> b!1160737 m!1327599))

(declare-fun m!1327601 () Bool)

(assert (=> b!1160737 m!1327601))

(declare-fun m!1327603 () Bool)

(assert (=> b!1160737 m!1327603))

(declare-fun m!1327605 () Bool)

(assert (=> b!1160737 m!1327605))

(declare-fun m!1327607 () Bool)

(assert (=> b!1160737 m!1327607))

(declare-fun m!1327609 () Bool)

(assert (=> b!1160737 m!1327609))

(assert (=> b!1160737 m!1327605))

(assert (=> b!1160737 m!1327607))

(declare-fun m!1327611 () Bool)

(assert (=> b!1160730 m!1327611))

(declare-fun m!1327613 () Bool)

(assert (=> b!1160726 m!1327613))

(declare-fun m!1327615 () Bool)

(assert (=> b!1160732 m!1327615))

(declare-fun m!1327617 () Bool)

(assert (=> b!1160732 m!1327617))

(declare-fun m!1327619 () Bool)

(assert (=> b!1160732 m!1327619))

(assert (=> b!1160732 m!1327619))

(declare-fun m!1327621 () Bool)

(assert (=> b!1160732 m!1327621))

(declare-fun m!1327623 () Bool)

(assert (=> b!1160740 m!1327623))

(declare-fun m!1327625 () Bool)

(assert (=> b!1160733 m!1327625))

(declare-fun m!1327627 () Bool)

(assert (=> b!1160725 m!1327627))

(assert (=> b!1160725 m!1327553))

(declare-fun m!1327629 () Bool)

(assert (=> b!1160724 m!1327629))

(declare-fun m!1327631 () Bool)

(assert (=> b!1160724 m!1327631))

(declare-fun m!1327633 () Bool)

(assert (=> b!1160724 m!1327633))

(declare-fun m!1327635 () Bool)

(assert (=> b!1160724 m!1327635))

(declare-fun m!1327637 () Bool)

(assert (=> b!1160724 m!1327637))

(declare-fun m!1327639 () Bool)

(assert (=> b!1160724 m!1327639))

(declare-fun m!1327641 () Bool)

(assert (=> b!1160724 m!1327641))

(declare-fun m!1327643 () Bool)

(assert (=> b!1160724 m!1327643))

(declare-fun m!1327645 () Bool)

(assert (=> b!1160724 m!1327645))

(declare-fun m!1327647 () Bool)

(assert (=> b!1160724 m!1327647))

(declare-fun m!1327649 () Bool)

(assert (=> b!1160724 m!1327649))

(declare-fun m!1327651 () Bool)

(assert (=> b!1160724 m!1327651))

(declare-fun m!1327653 () Bool)

(assert (=> b!1160724 m!1327653))

(declare-fun m!1327655 () Bool)

(assert (=> b!1160724 m!1327655))

(declare-fun m!1327657 () Bool)

(assert (=> b!1160724 m!1327657))

(declare-fun m!1327659 () Bool)

(assert (=> b!1160724 m!1327659))

(declare-fun m!1327661 () Bool)

(assert (=> b!1160724 m!1327661))

(declare-fun m!1327663 () Bool)

(assert (=> b!1160724 m!1327663))

(declare-fun m!1327665 () Bool)

(assert (=> b!1160724 m!1327665))

(declare-fun m!1327667 () Bool)

(assert (=> b!1160724 m!1327667))

(declare-fun m!1327669 () Bool)

(assert (=> b!1160735 m!1327669))

(check-sat (not b!1160723) (not b!1160725) (not b!1160736) (not b!1160722) (not b!1160724) (not b!1160741) (not b!1160739) (not b!1160726) (not b!1160750) (not b!1160729) (not b!1160735) (not b!1160727) (not b!1160740) (not b!1160749) (not b!1160742) (not b!1160734) (not b!1160733) (not start!101602) (not b!1160738) (not b!1160728) (not b!1160732) (not b!1160730) (not b!1160731) (not b!1160737))
(check-sat)
(get-model)

(declare-fun b!1160804 () Bool)

(declare-fun e!743134 () Bool)

(declare-fun e!743135 () Bool)

(assert (=> b!1160804 (= e!743134 e!743135)))

(declare-fun res!523215 () Bool)

(assert (=> b!1160804 (=> (not res!523215) (not e!743135))))

(assert (=> b!1160804 (= res!523215 (separableTokensPredicate!114 Lexer!1676 (apply!2429 (tokens!1584 thiss!10527) 1) (apply!2429 (tokens!1584 thiss!10527) (+ 1 1)) (rules!9480 thiss!10527)))))

(declare-fun lt!394867 () Unit!17407)

(declare-fun Unit!17412 () Unit!17407)

(assert (=> b!1160804 (= lt!394867 Unit!17412)))

(assert (=> b!1160804 (> (size!8965 (charsOf!1052 (apply!2429 (tokens!1584 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!394887 () Unit!17407)

(declare-fun Unit!17413 () Unit!17407)

(assert (=> b!1160804 (= lt!394887 Unit!17413)))

(assert (=> b!1160804 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (apply!2429 (tokens!1584 thiss!10527) (+ 1 1)))))

(declare-fun lt!394876 () Unit!17407)

(declare-fun Unit!17414 () Unit!17407)

(assert (=> b!1160804 (= lt!394876 Unit!17414)))

(assert (=> b!1160804 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (apply!2429 (tokens!1584 thiss!10527) 1))))

(declare-fun lt!394894 () Unit!17407)

(declare-fun lt!394897 () Unit!17407)

(assert (=> b!1160804 (= lt!394894 lt!394897)))

(declare-fun lt!394866 () Token!3628)

(assert (=> b!1160804 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!394866)))

(declare-fun lt!394874 () List!11435)

(assert (=> b!1160804 (= lt!394897 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!394874 lt!394866))))

(assert (=> b!1160804 (= lt!394866 (apply!2429 (tokens!1584 thiss!10527) (+ 1 1)))))

(assert (=> b!1160804 (= lt!394874 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!394891 () Unit!17407)

(declare-fun lt!394895 () Unit!17407)

(assert (=> b!1160804 (= lt!394891 lt!394895)))

(declare-fun lt!394885 () Token!3628)

(assert (=> b!1160804 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!394885)))

(declare-fun lt!394896 () List!11435)

(assert (=> b!1160804 (= lt!394895 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!394896 lt!394885))))

(assert (=> b!1160804 (= lt!394885 (apply!2429 (tokens!1584 thiss!10527) 1))))

(assert (=> b!1160804 (= lt!394896 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!394868 () Unit!17407)

(declare-fun lt!394880 () Unit!17407)

(assert (=> b!1160804 (= lt!394868 lt!394880)))

(declare-fun lt!394869 () List!11435)

(declare-fun lt!394890 () Int)

(assert (=> b!1160804 (= (tail!1670 (drop!465 lt!394869 lt!394890)) (drop!465 lt!394869 (+ lt!394890 1)))))

(assert (=> b!1160804 (= lt!394880 (lemmaDropTail!343 lt!394869 lt!394890))))

(assert (=> b!1160804 (= lt!394890 (+ 1 1))))

(assert (=> b!1160804 (= lt!394869 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!394882 () Unit!17407)

(declare-fun lt!394877 () Unit!17407)

(assert (=> b!1160804 (= lt!394882 lt!394877)))

(declare-fun lt!394872 () List!11435)

(assert (=> b!1160804 (= (tail!1670 (drop!465 lt!394872 1)) (drop!465 lt!394872 (+ 1 1)))))

(assert (=> b!1160804 (= lt!394877 (lemmaDropTail!343 lt!394872 1))))

(assert (=> b!1160804 (= lt!394872 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!394883 () Unit!17407)

(declare-fun lt!394871 () Unit!17407)

(assert (=> b!1160804 (= lt!394883 lt!394871)))

(declare-fun lt!394873 () List!11435)

(declare-fun lt!394878 () Int)

(assert (=> b!1160804 (= (head!2086 (drop!465 lt!394873 lt!394878)) (apply!2430 lt!394873 lt!394878))))

(assert (=> b!1160804 (= lt!394871 (lemmaDropApply!355 lt!394873 lt!394878))))

(assert (=> b!1160804 (= lt!394878 (+ 1 1))))

(assert (=> b!1160804 (= lt!394873 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!394892 () Unit!17407)

(declare-fun lt!394893 () Unit!17407)

(assert (=> b!1160804 (= lt!394892 lt!394893)))

(declare-fun lt!394875 () List!11435)

(assert (=> b!1160804 (= (head!2086 (drop!465 lt!394875 1)) (apply!2430 lt!394875 1))))

(assert (=> b!1160804 (= lt!394893 (lemmaDropApply!355 lt!394875 1))))

(assert (=> b!1160804 (= lt!394875 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun b!1160805 () Bool)

(declare-fun e!743138 () Bool)

(assert (=> b!1160805 (= e!743138 (<= 1 (size!8964 (tokens!1584 thiss!10527))))))

(declare-fun b!1160806 () Bool)

(assert (=> b!1160806 (= e!743135 (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 (tokens!1584 thiss!10527) (+ 1 1) (rules!9480 thiss!10527)))))

(declare-fun b!1160807 () Bool)

(declare-fun e!743137 () Bool)

(declare-fun lt!394898 () List!11435)

(assert (=> b!1160807 (= e!743137 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!394898))))

(declare-fun d!331354 () Bool)

(declare-fun lt!394879 () Bool)

(declare-fun dropList!310 (BalanceConc!7480 Int) List!11435)

(assert (=> d!331354 (= lt!394879 (tokensListTwoByTwoPredicateSeparableList!90 Lexer!1676 (dropList!310 (tokens!1584 thiss!10527) 1) (rules!9480 thiss!10527)))))

(declare-fun lt!394884 () Unit!17407)

(declare-fun lt!394886 () Unit!17407)

(assert (=> d!331354 (= lt!394884 lt!394886)))

(declare-fun lt!394888 () List!11435)

(assert (=> d!331354 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!394888)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!20 (LexerInterface!1678 List!11436 List!11435 List!11435) Unit!17407)

(assert (=> d!331354 (= lt!394886 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!20 Lexer!1676 (rules!9480 thiss!10527) lt!394898 lt!394888))))

(assert (=> d!331354 e!743137))

(declare-fun res!523211 () Bool)

(assert (=> d!331354 (=> (not res!523211) (not e!743137))))

(assert (=> d!331354 (= res!523211 ((_ is Lexer!1676) Lexer!1676))))

(assert (=> d!331354 (= lt!394888 (dropList!310 (tokens!1584 thiss!10527) 1))))

(assert (=> d!331354 (= lt!394898 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!394881 () Unit!17407)

(declare-fun lt!394870 () Unit!17407)

(assert (=> d!331354 (= lt!394881 lt!394870)))

(declare-fun lt!394889 () List!11435)

(assert (=> d!331354 (subseq!239 (drop!465 lt!394889 1) lt!394889)))

(declare-fun lemmaDropSubSeq!20 (List!11435 Int) Unit!17407)

(assert (=> d!331354 (= lt!394870 (lemmaDropSubSeq!20 lt!394889 1))))

(declare-fun e!743136 () Bool)

(assert (=> d!331354 e!743136))

(declare-fun res!523217 () Bool)

(assert (=> d!331354 (=> (not res!523217) (not e!743136))))

(assert (=> d!331354 (= res!523217 (>= 1 0))))

(assert (=> d!331354 (= lt!394889 (list!4198 (tokens!1584 thiss!10527)))))

(assert (=> d!331354 (= lt!394879 e!743134)))

(declare-fun res!523210 () Bool)

(assert (=> d!331354 (=> res!523210 e!743134)))

(assert (=> d!331354 (= res!523210 (not (< 1 (- (size!8964 (tokens!1584 thiss!10527)) 1))))))

(assert (=> d!331354 e!743138))

(declare-fun res!523216 () Bool)

(assert (=> d!331354 (=> (not res!523216) (not e!743138))))

(assert (=> d!331354 (= res!523216 (>= 1 0))))

(assert (=> d!331354 (= (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 (tokens!1584 thiss!10527) 1 (rules!9480 thiss!10527)) lt!394879)))

(declare-fun b!1160808 () Bool)

(declare-fun res!523214 () Bool)

(assert (=> b!1160808 (=> (not res!523214) (not e!743137))))

(assert (=> b!1160808 (= res!523214 (rulesInvariant!1552 Lexer!1676 (rules!9480 thiss!10527)))))

(declare-fun b!1160809 () Bool)

(declare-fun res!523213 () Bool)

(assert (=> b!1160809 (=> (not res!523213) (not e!743137))))

(assert (=> b!1160809 (= res!523213 (not (isEmpty!6975 (rules!9480 thiss!10527))))))

(declare-fun b!1160810 () Bool)

(declare-fun size!8967 (List!11435) Int)

(assert (=> b!1160810 (= e!743136 (<= 1 (size!8967 lt!394889)))))

(declare-fun b!1160811 () Bool)

(declare-fun res!523212 () Bool)

(assert (=> b!1160811 (=> (not res!523212) (not e!743137))))

(assert (=> b!1160811 (= res!523212 (subseq!239 lt!394888 lt!394898))))

(assert (= (and d!331354 res!523216) b!1160805))

(assert (= (and d!331354 (not res!523210)) b!1160804))

(assert (= (and b!1160804 res!523215) b!1160806))

(assert (= (and d!331354 res!523217) b!1160810))

(assert (= (and d!331354 res!523211) b!1160809))

(assert (= (and b!1160809 res!523213) b!1160808))

(assert (= (and b!1160808 res!523214) b!1160811))

(assert (= (and b!1160811 res!523212) b!1160807))

(assert (=> b!1160809 m!1327583))

(declare-fun m!1327693 () Bool)

(assert (=> b!1160811 m!1327693))

(declare-fun m!1327695 () Bool)

(assert (=> b!1160806 m!1327695))

(declare-fun m!1327697 () Bool)

(assert (=> b!1160804 m!1327697))

(declare-fun m!1327699 () Bool)

(assert (=> b!1160804 m!1327699))

(declare-fun m!1327701 () Bool)

(assert (=> b!1160804 m!1327701))

(declare-fun m!1327703 () Bool)

(assert (=> b!1160804 m!1327703))

(declare-fun m!1327705 () Bool)

(assert (=> b!1160804 m!1327705))

(declare-fun m!1327707 () Bool)

(assert (=> b!1160804 m!1327707))

(declare-fun m!1327709 () Bool)

(assert (=> b!1160804 m!1327709))

(declare-fun m!1327711 () Bool)

(assert (=> b!1160804 m!1327711))

(assert (=> b!1160804 m!1327709))

(declare-fun m!1327713 () Bool)

(assert (=> b!1160804 m!1327713))

(declare-fun m!1327715 () Bool)

(assert (=> b!1160804 m!1327715))

(declare-fun m!1327717 () Bool)

(assert (=> b!1160804 m!1327717))

(assert (=> b!1160804 m!1327713))

(declare-fun m!1327719 () Bool)

(assert (=> b!1160804 m!1327719))

(declare-fun m!1327721 () Bool)

(assert (=> b!1160804 m!1327721))

(declare-fun m!1327723 () Bool)

(assert (=> b!1160804 m!1327723))

(declare-fun m!1327725 () Bool)

(assert (=> b!1160804 m!1327725))

(assert (=> b!1160804 m!1327657))

(assert (=> b!1160804 m!1327709))

(declare-fun m!1327727 () Bool)

(assert (=> b!1160804 m!1327727))

(declare-fun m!1327729 () Bool)

(assert (=> b!1160804 m!1327729))

(assert (=> b!1160804 m!1327617))

(declare-fun m!1327731 () Bool)

(assert (=> b!1160804 m!1327731))

(assert (=> b!1160804 m!1327709))

(assert (=> b!1160804 m!1327701))

(assert (=> b!1160804 m!1327657))

(assert (=> b!1160804 m!1327657))

(declare-fun m!1327733 () Bool)

(assert (=> b!1160804 m!1327733))

(declare-fun m!1327735 () Bool)

(assert (=> b!1160804 m!1327735))

(declare-fun m!1327737 () Bool)

(assert (=> b!1160804 m!1327737))

(assert (=> b!1160804 m!1327697))

(declare-fun m!1327739 () Bool)

(assert (=> b!1160804 m!1327739))

(declare-fun m!1327741 () Bool)

(assert (=> b!1160804 m!1327741))

(declare-fun m!1327743 () Bool)

(assert (=> b!1160804 m!1327743))

(declare-fun m!1327745 () Bool)

(assert (=> b!1160804 m!1327745))

(assert (=> b!1160804 m!1327735))

(declare-fun m!1327747 () Bool)

(assert (=> b!1160804 m!1327747))

(assert (=> b!1160804 m!1327741))

(declare-fun m!1327749 () Bool)

(assert (=> d!331354 m!1327749))

(declare-fun m!1327751 () Bool)

(assert (=> d!331354 m!1327751))

(declare-fun m!1327753 () Bool)

(assert (=> d!331354 m!1327753))

(declare-fun m!1327755 () Bool)

(assert (=> d!331354 m!1327755))

(assert (=> d!331354 m!1327613))

(declare-fun m!1327757 () Bool)

(assert (=> d!331354 m!1327757))

(declare-fun m!1327759 () Bool)

(assert (=> d!331354 m!1327759))

(assert (=> d!331354 m!1327749))

(declare-fun m!1327761 () Bool)

(assert (=> d!331354 m!1327761))

(assert (=> d!331354 m!1327617))

(assert (=> d!331354 m!1327753))

(declare-fun m!1327763 () Bool)

(assert (=> b!1160807 m!1327763))

(declare-fun m!1327765 () Bool)

(assert (=> b!1160810 m!1327765))

(assert (=> b!1160805 m!1327613))

(assert (=> b!1160808 m!1327555))

(assert (=> b!1160722 d!331354))

(declare-fun d!331362 () Bool)

(declare-fun lt!394901 () Bool)

(assert (=> d!331362 (= lt!394901 (forall!2971 (list!4198 (tokens!1584 thiss!10527)) lambda!47301))))

(declare-fun forall!2972 (Conc!3729 Int) Bool)

(assert (=> d!331362 (= lt!394901 (forall!2972 (c!194230 (tokens!1584 thiss!10527)) lambda!47301))))

(assert (=> d!331362 (= (forall!2970 (tokens!1584 thiss!10527) lambda!47301) lt!394901)))

(declare-fun bs!283420 () Bool)

(assert (= bs!283420 d!331362))

(assert (=> bs!283420 m!1327617))

(assert (=> bs!283420 m!1327617))

(declare-fun m!1327767 () Bool)

(assert (=> bs!283420 m!1327767))

(declare-fun m!1327769 () Bool)

(assert (=> bs!283420 m!1327769))

(assert (=> b!1160732 d!331362))

(declare-fun bs!283422 () Bool)

(declare-fun d!331364 () Bool)

(assert (= bs!283422 (and d!331364 b!1160732)))

(declare-fun lambda!47309 () Int)

(assert (=> bs!283422 (= lambda!47309 lambda!47301)))

(declare-fun b!1160825 () Bool)

(declare-fun e!743150 () Bool)

(assert (=> b!1160825 (= e!743150 true)))

(declare-fun b!1160824 () Bool)

(declare-fun e!743149 () Bool)

(assert (=> b!1160824 (= e!743149 e!743150)))

(declare-fun b!1160823 () Bool)

(declare-fun e!743148 () Bool)

(assert (=> b!1160823 (= e!743148 e!743149)))

(assert (=> d!331364 e!743148))

(assert (= b!1160824 b!1160825))

(assert (= b!1160823 b!1160824))

(assert (= (and d!331364 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1160823))

(declare-fun order!6983 () Int)

(declare-fun order!6981 () Int)

(declare-fun dynLambda!5023 (Int Int) Int)

(declare-fun dynLambda!5024 (Int Int) Int)

(assert (=> b!1160825 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47309))))

(declare-fun order!6985 () Int)

(declare-fun dynLambda!5025 (Int Int) Int)

(assert (=> b!1160825 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47309))))

(assert (=> d!331364 true))

(declare-fun e!743141 () Bool)

(assert (=> d!331364 e!743141))

(declare-fun res!523220 () Bool)

(assert (=> d!331364 (=> (not res!523220) (not e!743141))))

(declare-fun lt!394904 () Bool)

(assert (=> d!331364 (= res!523220 (= lt!394904 (forall!2971 (list!4198 (tokens!1584 thiss!10527)) lambda!47309)))))

(assert (=> d!331364 (= lt!394904 (forall!2970 (tokens!1584 thiss!10527) lambda!47309))))

(assert (=> d!331364 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331364 (= (rulesProduceEachTokenIndividually!717 Lexer!1676 (rules!9480 thiss!10527) (tokens!1584 thiss!10527)) lt!394904)))

(declare-fun b!1160814 () Bool)

(assert (=> b!1160814 (= e!743141 (= lt!394904 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (list!4198 (tokens!1584 thiss!10527)))))))

(assert (= (and d!331364 res!523220) b!1160814))

(assert (=> d!331364 m!1327617))

(assert (=> d!331364 m!1327617))

(declare-fun m!1327771 () Bool)

(assert (=> d!331364 m!1327771))

(declare-fun m!1327773 () Bool)

(assert (=> d!331364 m!1327773))

(assert (=> d!331364 m!1327583))

(assert (=> b!1160814 m!1327617))

(assert (=> b!1160814 m!1327617))

(declare-fun m!1327775 () Bool)

(assert (=> b!1160814 m!1327775))

(assert (=> b!1160732 d!331364))

(declare-fun d!331370 () Bool)

(declare-fun list!4199 (Conc!3729) List!11435)

(assert (=> d!331370 (= (list!4198 (tokens!1584 thiss!10527)) (list!4199 (c!194230 (tokens!1584 thiss!10527))))))

(declare-fun bs!283423 () Bool)

(assert (= bs!283423 d!331370))

(declare-fun m!1327777 () Bool)

(assert (=> bs!283423 m!1327777))

(assert (=> b!1160732 d!331370))

(declare-fun bs!283424 () Bool)

(declare-fun d!331372 () Bool)

(assert (= bs!283424 (and d!331372 b!1160732)))

(declare-fun lambda!47312 () Int)

(assert (=> bs!283424 (= lambda!47312 lambda!47301)))

(declare-fun bs!283425 () Bool)

(assert (= bs!283425 (and d!331372 d!331364)))

(assert (=> bs!283425 (= lambda!47312 lambda!47309)))

(declare-fun b!1160836 () Bool)

(declare-fun e!743159 () Bool)

(assert (=> b!1160836 (= e!743159 true)))

(declare-fun b!1160835 () Bool)

(declare-fun e!743158 () Bool)

(assert (=> b!1160835 (= e!743158 e!743159)))

(declare-fun b!1160834 () Bool)

(declare-fun e!743157 () Bool)

(assert (=> b!1160834 (= e!743157 e!743158)))

(assert (=> d!331372 e!743157))

(assert (= b!1160835 b!1160836))

(assert (= b!1160834 b!1160835))

(assert (= (and d!331372 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1160834))

(assert (=> b!1160836 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47312))))

(assert (=> b!1160836 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47312))))

(assert (=> d!331372 true))

(declare-fun lt!394907 () Bool)

(assert (=> d!331372 (= lt!394907 (forall!2971 lt!394783 lambda!47312))))

(declare-fun e!743156 () Bool)

(assert (=> d!331372 (= lt!394907 e!743156)))

(declare-fun res!523226 () Bool)

(assert (=> d!331372 (=> res!523226 e!743156)))

(assert (=> d!331372 (= res!523226 (not ((_ is Cons!11411) lt!394783)))))

(assert (=> d!331372 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331372 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!394783) lt!394907)))

(declare-fun b!1160832 () Bool)

(declare-fun e!743155 () Bool)

(assert (=> b!1160832 (= e!743156 e!743155)))

(declare-fun res!523225 () Bool)

(assert (=> b!1160832 (=> (not res!523225) (not e!743155))))

(assert (=> b!1160832 (= res!523225 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394783)))))

(declare-fun b!1160833 () Bool)

(assert (=> b!1160833 (= e!743155 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394783)))))

(assert (= (and d!331372 (not res!523226)) b!1160832))

(assert (= (and b!1160832 res!523225) b!1160833))

(declare-fun m!1327779 () Bool)

(assert (=> d!331372 m!1327779))

(assert (=> d!331372 m!1327583))

(assert (=> b!1160832 m!1327625))

(assert (=> b!1160833 m!1327611))

(assert (=> b!1160732 d!331372))

(declare-fun d!331374 () Bool)

(assert (=> d!331374 (= (separableTokens!120 Lexer!1676 lt!394775 (rules!9480 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 lt!394775 0 (rules!9480 thiss!10527)))))

(declare-fun bs!283430 () Bool)

(assert (= bs!283430 d!331374))

(assert (=> bs!283430 m!1327585))

(assert (=> b!1160742 d!331374))

(declare-fun b!1160905 () Bool)

(declare-fun e!743207 () Bool)

(declare-fun e!743208 () Bool)

(assert (=> b!1160905 (= e!743207 e!743208)))

(declare-fun res!523273 () Bool)

(assert (=> b!1160905 (=> (not res!523273) (not e!743208))))

(assert (=> b!1160905 (= res!523273 (separableTokensPredicate!114 Lexer!1676 (apply!2429 lt!394775 0) (apply!2429 lt!394775 (+ 0 1)) (rules!9480 thiss!10527)))))

(declare-fun lt!395018 () Unit!17407)

(declare-fun Unit!17419 () Unit!17407)

(assert (=> b!1160905 (= lt!395018 Unit!17419)))

(assert (=> b!1160905 (> (size!8965 (charsOf!1052 (apply!2429 lt!394775 (+ 0 1)))) 0)))

(declare-fun lt!395038 () Unit!17407)

(declare-fun Unit!17420 () Unit!17407)

(assert (=> b!1160905 (= lt!395038 Unit!17420)))

(assert (=> b!1160905 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (apply!2429 lt!394775 (+ 0 1)))))

(declare-fun lt!395027 () Unit!17407)

(declare-fun Unit!17421 () Unit!17407)

(assert (=> b!1160905 (= lt!395027 Unit!17421)))

(assert (=> b!1160905 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (apply!2429 lt!394775 0))))

(declare-fun lt!395045 () Unit!17407)

(declare-fun lt!395048 () Unit!17407)

(assert (=> b!1160905 (= lt!395045 lt!395048)))

(declare-fun lt!395017 () Token!3628)

(assert (=> b!1160905 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!395017)))

(declare-fun lt!395025 () List!11435)

(assert (=> b!1160905 (= lt!395048 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!395025 lt!395017))))

(assert (=> b!1160905 (= lt!395017 (apply!2429 lt!394775 (+ 0 1)))))

(assert (=> b!1160905 (= lt!395025 (list!4198 lt!394775))))

(declare-fun lt!395042 () Unit!17407)

(declare-fun lt!395046 () Unit!17407)

(assert (=> b!1160905 (= lt!395042 lt!395046)))

(declare-fun lt!395036 () Token!3628)

(assert (=> b!1160905 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!395036)))

(declare-fun lt!395047 () List!11435)

(assert (=> b!1160905 (= lt!395046 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!395047 lt!395036))))

(assert (=> b!1160905 (= lt!395036 (apply!2429 lt!394775 0))))

(assert (=> b!1160905 (= lt!395047 (list!4198 lt!394775))))

(declare-fun lt!395019 () Unit!17407)

(declare-fun lt!395031 () Unit!17407)

(assert (=> b!1160905 (= lt!395019 lt!395031)))

(declare-fun lt!395020 () List!11435)

(declare-fun lt!395041 () Int)

(assert (=> b!1160905 (= (tail!1670 (drop!465 lt!395020 lt!395041)) (drop!465 lt!395020 (+ lt!395041 1)))))

(assert (=> b!1160905 (= lt!395031 (lemmaDropTail!343 lt!395020 lt!395041))))

(assert (=> b!1160905 (= lt!395041 (+ 0 1))))

(assert (=> b!1160905 (= lt!395020 (list!4198 lt!394775))))

(declare-fun lt!395033 () Unit!17407)

(declare-fun lt!395028 () Unit!17407)

(assert (=> b!1160905 (= lt!395033 lt!395028)))

(declare-fun lt!395023 () List!11435)

(assert (=> b!1160905 (= (tail!1670 (drop!465 lt!395023 0)) (drop!465 lt!395023 (+ 0 1)))))

(assert (=> b!1160905 (= lt!395028 (lemmaDropTail!343 lt!395023 0))))

(assert (=> b!1160905 (= lt!395023 (list!4198 lt!394775))))

(declare-fun lt!395034 () Unit!17407)

(declare-fun lt!395022 () Unit!17407)

(assert (=> b!1160905 (= lt!395034 lt!395022)))

(declare-fun lt!395024 () List!11435)

(declare-fun lt!395029 () Int)

(assert (=> b!1160905 (= (head!2086 (drop!465 lt!395024 lt!395029)) (apply!2430 lt!395024 lt!395029))))

(assert (=> b!1160905 (= lt!395022 (lemmaDropApply!355 lt!395024 lt!395029))))

(assert (=> b!1160905 (= lt!395029 (+ 0 1))))

(assert (=> b!1160905 (= lt!395024 (list!4198 lt!394775))))

(declare-fun lt!395043 () Unit!17407)

(declare-fun lt!395044 () Unit!17407)

(assert (=> b!1160905 (= lt!395043 lt!395044)))

(declare-fun lt!395026 () List!11435)

(assert (=> b!1160905 (= (head!2086 (drop!465 lt!395026 0)) (apply!2430 lt!395026 0))))

(assert (=> b!1160905 (= lt!395044 (lemmaDropApply!355 lt!395026 0))))

(assert (=> b!1160905 (= lt!395026 (list!4198 lt!394775))))

(declare-fun b!1160906 () Bool)

(declare-fun e!743211 () Bool)

(assert (=> b!1160906 (= e!743211 (<= 0 (size!8964 lt!394775)))))

(declare-fun b!1160907 () Bool)

(assert (=> b!1160907 (= e!743208 (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 lt!394775 (+ 0 1) (rules!9480 thiss!10527)))))

(declare-fun b!1160908 () Bool)

(declare-fun e!743210 () Bool)

(declare-fun lt!395049 () List!11435)

(assert (=> b!1160908 (= e!743210 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!395049))))

(declare-fun d!331388 () Bool)

(declare-fun lt!395030 () Bool)

(assert (=> d!331388 (= lt!395030 (tokensListTwoByTwoPredicateSeparableList!90 Lexer!1676 (dropList!310 lt!394775 0) (rules!9480 thiss!10527)))))

(declare-fun lt!395035 () Unit!17407)

(declare-fun lt!395037 () Unit!17407)

(assert (=> d!331388 (= lt!395035 lt!395037)))

(declare-fun lt!395039 () List!11435)

(assert (=> d!331388 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!395039)))

(assert (=> d!331388 (= lt!395037 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!20 Lexer!1676 (rules!9480 thiss!10527) lt!395049 lt!395039))))

(assert (=> d!331388 e!743210))

(declare-fun res!523269 () Bool)

(assert (=> d!331388 (=> (not res!523269) (not e!743210))))

(assert (=> d!331388 (= res!523269 ((_ is Lexer!1676) Lexer!1676))))

(assert (=> d!331388 (= lt!395039 (dropList!310 lt!394775 0))))

(assert (=> d!331388 (= lt!395049 (list!4198 lt!394775))))

(declare-fun lt!395032 () Unit!17407)

(declare-fun lt!395021 () Unit!17407)

(assert (=> d!331388 (= lt!395032 lt!395021)))

(declare-fun lt!395040 () List!11435)

(assert (=> d!331388 (subseq!239 (drop!465 lt!395040 0) lt!395040)))

(assert (=> d!331388 (= lt!395021 (lemmaDropSubSeq!20 lt!395040 0))))

(declare-fun e!743209 () Bool)

(assert (=> d!331388 e!743209))

(declare-fun res!523275 () Bool)

(assert (=> d!331388 (=> (not res!523275) (not e!743209))))

(assert (=> d!331388 (= res!523275 (>= 0 0))))

(assert (=> d!331388 (= lt!395040 (list!4198 lt!394775))))

(assert (=> d!331388 (= lt!395030 e!743207)))

(declare-fun res!523268 () Bool)

(assert (=> d!331388 (=> res!523268 e!743207)))

(assert (=> d!331388 (= res!523268 (not (< 0 (- (size!8964 lt!394775) 1))))))

(assert (=> d!331388 e!743211))

(declare-fun res!523274 () Bool)

(assert (=> d!331388 (=> (not res!523274) (not e!743211))))

(assert (=> d!331388 (= res!523274 (>= 0 0))))

(assert (=> d!331388 (= (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 lt!394775 0 (rules!9480 thiss!10527)) lt!395030)))

(declare-fun b!1160909 () Bool)

(declare-fun res!523272 () Bool)

(assert (=> b!1160909 (=> (not res!523272) (not e!743210))))

(assert (=> b!1160909 (= res!523272 (rulesInvariant!1552 Lexer!1676 (rules!9480 thiss!10527)))))

(declare-fun b!1160910 () Bool)

(declare-fun res!523271 () Bool)

(assert (=> b!1160910 (=> (not res!523271) (not e!743210))))

(assert (=> b!1160910 (= res!523271 (not (isEmpty!6975 (rules!9480 thiss!10527))))))

(declare-fun b!1160911 () Bool)

(assert (=> b!1160911 (= e!743209 (<= 0 (size!8967 lt!395040)))))

(declare-fun b!1160912 () Bool)

(declare-fun res!523270 () Bool)

(assert (=> b!1160912 (=> (not res!523270) (not e!743210))))

(assert (=> b!1160912 (= res!523270 (subseq!239 lt!395039 lt!395049))))

(assert (= (and d!331388 res!523274) b!1160906))

(assert (= (and d!331388 (not res!523268)) b!1160905))

(assert (= (and b!1160905 res!523273) b!1160907))

(assert (= (and d!331388 res!523275) b!1160911))

(assert (= (and d!331388 res!523269) b!1160910))

(assert (= (and b!1160910 res!523271) b!1160909))

(assert (= (and b!1160909 res!523272) b!1160912))

(assert (= (and b!1160912 res!523270) b!1160908))

(assert (=> b!1160910 m!1327583))

(declare-fun m!1327883 () Bool)

(assert (=> b!1160912 m!1327883))

(declare-fun m!1327885 () Bool)

(assert (=> b!1160907 m!1327885))

(declare-fun m!1327887 () Bool)

(assert (=> b!1160905 m!1327887))

(declare-fun m!1327889 () Bool)

(assert (=> b!1160905 m!1327889))

(declare-fun m!1327891 () Bool)

(assert (=> b!1160905 m!1327891))

(declare-fun m!1327893 () Bool)

(assert (=> b!1160905 m!1327893))

(declare-fun m!1327895 () Bool)

(assert (=> b!1160905 m!1327895))

(declare-fun m!1327897 () Bool)

(assert (=> b!1160905 m!1327897))

(declare-fun m!1327899 () Bool)

(assert (=> b!1160905 m!1327899))

(declare-fun m!1327901 () Bool)

(assert (=> b!1160905 m!1327901))

(assert (=> b!1160905 m!1327899))

(declare-fun m!1327903 () Bool)

(assert (=> b!1160905 m!1327903))

(declare-fun m!1327905 () Bool)

(assert (=> b!1160905 m!1327905))

(declare-fun m!1327907 () Bool)

(assert (=> b!1160905 m!1327907))

(assert (=> b!1160905 m!1327903))

(declare-fun m!1327909 () Bool)

(assert (=> b!1160905 m!1327909))

(declare-fun m!1327911 () Bool)

(assert (=> b!1160905 m!1327911))

(declare-fun m!1327913 () Bool)

(assert (=> b!1160905 m!1327913))

(declare-fun m!1327915 () Bool)

(assert (=> b!1160905 m!1327915))

(declare-fun m!1327917 () Bool)

(assert (=> b!1160905 m!1327917))

(assert (=> b!1160905 m!1327899))

(declare-fun m!1327919 () Bool)

(assert (=> b!1160905 m!1327919))

(declare-fun m!1327921 () Bool)

(assert (=> b!1160905 m!1327921))

(assert (=> b!1160905 m!1327597))

(declare-fun m!1327923 () Bool)

(assert (=> b!1160905 m!1327923))

(assert (=> b!1160905 m!1327899))

(assert (=> b!1160905 m!1327891))

(assert (=> b!1160905 m!1327917))

(assert (=> b!1160905 m!1327917))

(declare-fun m!1327925 () Bool)

(assert (=> b!1160905 m!1327925))

(declare-fun m!1327927 () Bool)

(assert (=> b!1160905 m!1327927))

(declare-fun m!1327929 () Bool)

(assert (=> b!1160905 m!1327929))

(assert (=> b!1160905 m!1327887))

(declare-fun m!1327931 () Bool)

(assert (=> b!1160905 m!1327931))

(declare-fun m!1327933 () Bool)

(assert (=> b!1160905 m!1327933))

(declare-fun m!1327935 () Bool)

(assert (=> b!1160905 m!1327935))

(declare-fun m!1327937 () Bool)

(assert (=> b!1160905 m!1327937))

(assert (=> b!1160905 m!1327927))

(declare-fun m!1327939 () Bool)

(assert (=> b!1160905 m!1327939))

(assert (=> b!1160905 m!1327933))

(declare-fun m!1327941 () Bool)

(assert (=> d!331388 m!1327941))

(declare-fun m!1327943 () Bool)

(assert (=> d!331388 m!1327943))

(declare-fun m!1327945 () Bool)

(assert (=> d!331388 m!1327945))

(declare-fun m!1327947 () Bool)

(assert (=> d!331388 m!1327947))

(declare-fun m!1327949 () Bool)

(assert (=> d!331388 m!1327949))

(declare-fun m!1327951 () Bool)

(assert (=> d!331388 m!1327951))

(declare-fun m!1327953 () Bool)

(assert (=> d!331388 m!1327953))

(assert (=> d!331388 m!1327941))

(declare-fun m!1327955 () Bool)

(assert (=> d!331388 m!1327955))

(assert (=> d!331388 m!1327597))

(assert (=> d!331388 m!1327945))

(declare-fun m!1327957 () Bool)

(assert (=> b!1160908 m!1327957))

(declare-fun m!1327959 () Bool)

(assert (=> b!1160911 m!1327959))

(assert (=> b!1160906 m!1327949))

(assert (=> b!1160909 m!1327555))

(assert (=> b!1160742 d!331388))

(declare-fun d!331390 () Bool)

(assert (=> d!331390 (forall!2971 lt!394771 lambda!47301)))

(declare-fun lt!395052 () Unit!17407)

(declare-fun choose!7455 (List!11435 List!11435 Int) Unit!17407)

(assert (=> d!331390 (= lt!395052 (choose!7455 lt!394771 lt!394783 lambda!47301))))

(assert (=> d!331390 (forall!2971 lt!394783 lambda!47301)))

(assert (=> d!331390 (= (lemmaForallSubseq!131 lt!394771 lt!394783 lambda!47301) lt!395052)))

(declare-fun bs!283431 () Bool)

(assert (= bs!283431 d!331390))

(assert (=> bs!283431 m!1327581))

(declare-fun m!1327961 () Bool)

(assert (=> bs!283431 m!1327961))

(declare-fun m!1327963 () Bool)

(assert (=> bs!283431 m!1327963))

(assert (=> b!1160742 d!331390))

(declare-fun b!1160931 () Bool)

(declare-fun e!743222 () Int)

(declare-fun call!82112 () Int)

(assert (=> b!1160931 (= e!743222 call!82112)))

(declare-fun b!1160932 () Bool)

(declare-fun e!743223 () Int)

(assert (=> b!1160932 (= e!743222 e!743223)))

(declare-fun c!194252 () Bool)

(assert (=> b!1160932 (= c!194252 (>= from!787 call!82112))))

(declare-fun b!1160933 () Bool)

(assert (=> b!1160933 (= e!743223 0)))

(declare-fun b!1160934 () Bool)

(declare-fun e!743225 () List!11435)

(declare-fun e!743226 () List!11435)

(assert (=> b!1160934 (= e!743225 e!743226)))

(declare-fun c!194251 () Bool)

(assert (=> b!1160934 (= c!194251 (<= from!787 0))))

(declare-fun b!1160935 () Bool)

(declare-fun e!743224 () Bool)

(declare-fun lt!395055 () List!11435)

(assert (=> b!1160935 (= e!743224 (= (size!8967 lt!395055) e!743222))))

(declare-fun c!194254 () Bool)

(assert (=> b!1160935 (= c!194254 (<= from!787 0))))

(declare-fun b!1160936 () Bool)

(assert (=> b!1160936 (= e!743226 (drop!465 (t!109739 lt!394783) (- from!787 1)))))

(declare-fun d!331392 () Bool)

(assert (=> d!331392 e!743224))

(declare-fun res!523278 () Bool)

(assert (=> d!331392 (=> (not res!523278) (not e!743224))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1600 (List!11435) (InoxSet Token!3628))

(assert (=> d!331392 (= res!523278 (= ((_ map implies) (content!1600 lt!395055) (content!1600 lt!394783)) ((as const (InoxSet Token!3628)) true)))))

(assert (=> d!331392 (= lt!395055 e!743225)))

(declare-fun c!194253 () Bool)

(assert (=> d!331392 (= c!194253 ((_ is Nil!11411) lt!394783))))

(assert (=> d!331392 (= (drop!465 lt!394783 from!787) lt!395055)))

(declare-fun b!1160937 () Bool)

(assert (=> b!1160937 (= e!743225 Nil!11411)))

(declare-fun b!1160938 () Bool)

(assert (=> b!1160938 (= e!743223 (- call!82112 from!787))))

(declare-fun bm!82107 () Bool)

(assert (=> bm!82107 (= call!82112 (size!8967 lt!394783))))

(declare-fun b!1160939 () Bool)

(assert (=> b!1160939 (= e!743226 lt!394783)))

(assert (= (and d!331392 c!194253) b!1160937))

(assert (= (and d!331392 (not c!194253)) b!1160934))

(assert (= (and b!1160934 c!194251) b!1160939))

(assert (= (and b!1160934 (not c!194251)) b!1160936))

(assert (= (and d!331392 res!523278) b!1160935))

(assert (= (and b!1160935 c!194254) b!1160931))

(assert (= (and b!1160935 (not c!194254)) b!1160932))

(assert (= (and b!1160932 c!194252) b!1160933))

(assert (= (and b!1160932 (not c!194252)) b!1160938))

(assert (= (or b!1160931 b!1160932 b!1160938) bm!82107))

(declare-fun m!1327965 () Bool)

(assert (=> b!1160935 m!1327965))

(declare-fun m!1327967 () Bool)

(assert (=> b!1160936 m!1327967))

(declare-fun m!1327969 () Bool)

(assert (=> d!331392 m!1327969))

(declare-fun m!1327971 () Bool)

(assert (=> d!331392 m!1327971))

(declare-fun m!1327973 () Bool)

(assert (=> bm!82107 m!1327973))

(assert (=> b!1160742 d!331392))

(declare-fun bs!283432 () Bool)

(declare-fun d!331394 () Bool)

(assert (= bs!283432 (and d!331394 b!1160732)))

(declare-fun lambda!47314 () Int)

(assert (=> bs!283432 (= lambda!47314 lambda!47301)))

(declare-fun bs!283433 () Bool)

(assert (= bs!283433 (and d!331394 d!331364)))

(assert (=> bs!283433 (= lambda!47314 lambda!47309)))

(declare-fun bs!283434 () Bool)

(assert (= bs!283434 (and d!331394 d!331372)))

(assert (=> bs!283434 (= lambda!47314 lambda!47312)))

(declare-fun b!1160944 () Bool)

(declare-fun e!743231 () Bool)

(assert (=> b!1160944 (= e!743231 true)))

(declare-fun b!1160943 () Bool)

(declare-fun e!743230 () Bool)

(assert (=> b!1160943 (= e!743230 e!743231)))

(declare-fun b!1160942 () Bool)

(declare-fun e!743229 () Bool)

(assert (=> b!1160942 (= e!743229 e!743230)))

(assert (=> d!331394 e!743229))

(assert (= b!1160943 b!1160944))

(assert (= b!1160942 b!1160943))

(assert (= (and d!331394 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1160942))

(assert (=> b!1160944 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47314))))

(assert (=> b!1160944 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47314))))

(assert (=> d!331394 true))

(declare-fun lt!395056 () Bool)

(assert (=> d!331394 (= lt!395056 (forall!2971 lt!394771 lambda!47314))))

(declare-fun e!743228 () Bool)

(assert (=> d!331394 (= lt!395056 e!743228)))

(declare-fun res!523280 () Bool)

(assert (=> d!331394 (=> res!523280 e!743228)))

(assert (=> d!331394 (= res!523280 (not ((_ is Cons!11411) lt!394771)))))

(assert (=> d!331394 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331394 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!394771) lt!395056)))

(declare-fun b!1160940 () Bool)

(declare-fun e!743227 () Bool)

(assert (=> b!1160940 (= e!743228 e!743227)))

(declare-fun res!523279 () Bool)

(assert (=> b!1160940 (=> (not res!523279) (not e!743227))))

(assert (=> b!1160940 (= res!523279 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394771)))))

(declare-fun b!1160941 () Bool)

(assert (=> b!1160941 (= e!743227 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394771)))))

(assert (= (and d!331394 (not res!523280)) b!1160940))

(assert (= (and b!1160940 res!523279) b!1160941))

(declare-fun m!1327975 () Bool)

(assert (=> d!331394 m!1327975))

(assert (=> d!331394 m!1327583))

(assert (=> b!1160940 m!1327669))

(assert (=> b!1160941 m!1327563))

(assert (=> b!1160742 d!331394))

(declare-fun d!331396 () Bool)

(declare-fun res!523285 () Bool)

(declare-fun e!743236 () Bool)

(assert (=> d!331396 (=> res!523285 e!743236)))

(assert (=> d!331396 (= res!523285 ((_ is Nil!11411) lt!394771))))

(assert (=> d!331396 (= (forall!2971 lt!394771 lambda!47301) e!743236)))

(declare-fun b!1160949 () Bool)

(declare-fun e!743237 () Bool)

(assert (=> b!1160949 (= e!743236 e!743237)))

(declare-fun res!523286 () Bool)

(assert (=> b!1160949 (=> (not res!523286) (not e!743237))))

(declare-fun dynLambda!5027 (Int Token!3628) Bool)

(assert (=> b!1160949 (= res!523286 (dynLambda!5027 lambda!47301 (h!16812 lt!394771)))))

(declare-fun b!1160950 () Bool)

(assert (=> b!1160950 (= e!743237 (forall!2971 (t!109739 lt!394771) lambda!47301))))

(assert (= (and d!331396 (not res!523285)) b!1160949))

(assert (= (and b!1160949 res!523286) b!1160950))

(declare-fun b_lambda!34615 () Bool)

(assert (=> (not b_lambda!34615) (not b!1160949)))

(declare-fun m!1327977 () Bool)

(assert (=> b!1160949 m!1327977))

(declare-fun m!1327979 () Bool)

(assert (=> b!1160950 m!1327979))

(assert (=> b!1160742 d!331396))

(declare-fun bs!283438 () Bool)

(declare-fun b!1160988 () Bool)

(assert (= bs!283438 (and b!1160988 b!1160732)))

(declare-fun lambda!47320 () Int)

(assert (=> bs!283438 (= lambda!47320 lambda!47301)))

(declare-fun bs!283439 () Bool)

(assert (= bs!283439 (and b!1160988 d!331364)))

(assert (=> bs!283439 (= lambda!47320 lambda!47309)))

(declare-fun bs!283440 () Bool)

(assert (= bs!283440 (and b!1160988 d!331372)))

(assert (=> bs!283440 (= lambda!47320 lambda!47312)))

(declare-fun bs!283441 () Bool)

(assert (= bs!283441 (and b!1160988 d!331394)))

(assert (=> bs!283441 (= lambda!47320 lambda!47314)))

(declare-fun b!1160992 () Bool)

(declare-fun e!743278 () Bool)

(assert (=> b!1160992 (= e!743278 true)))

(declare-fun b!1160991 () Bool)

(declare-fun e!743277 () Bool)

(assert (=> b!1160991 (= e!743277 e!743278)))

(declare-fun b!1160990 () Bool)

(declare-fun e!743276 () Bool)

(assert (=> b!1160990 (= e!743276 e!743277)))

(assert (=> b!1160988 e!743276))

(assert (= b!1160991 b!1160992))

(assert (= b!1160990 b!1160991))

(assert (= (and b!1160988 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1160990))

(assert (=> b!1160992 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47320))))

(assert (=> b!1160992 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47320))))

(declare-fun b!1160986 () Bool)

(declare-fun e!743272 () Bool)

(declare-fun e!743273 () Bool)

(assert (=> b!1160986 (= e!743272 e!743273)))

(declare-fun res!523319 () Bool)

(assert (=> b!1160986 (=> (not res!523319) (not e!743273))))

(declare-fun lt!395095 () List!11435)

(assert (=> b!1160986 (= res!523319 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!395095)))))

(declare-fun b!1160987 () Bool)

(assert (=> b!1160987 (= e!743273 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!395095)))))

(declare-fun b!1160989 () Bool)

(declare-fun e!743275 () Bool)

(declare-fun lt!395100 () List!11435)

(assert (=> b!1160989 (= e!743275 (subseq!239 lt!395100 lt!394783))))

(declare-fun e!743274 () Bool)

(assert (=> b!1160988 (= e!743274 (tokensListTwoByTwoPredicateSeparableList!90 Lexer!1676 (drop!465 lt!394783 from!787) (rules!9480 thiss!10527)))))

(declare-fun lt!395094 () Unit!17407)

(declare-fun lt!395098 () Unit!17407)

(assert (=> b!1160988 (= lt!395094 lt!395098)))

(assert (=> b!1160988 (forall!2971 lt!395100 lambda!47320)))

(assert (=> b!1160988 (= lt!395098 (lemmaForallSubseq!131 lt!395100 lt!394783 lambda!47320))))

(assert (=> b!1160988 e!743275))

(declare-fun res!523321 () Bool)

(assert (=> b!1160988 (=> (not res!523321) (not e!743275))))

(assert (=> b!1160988 (= res!523321 (forall!2971 lt!394783 lambda!47320))))

(assert (=> b!1160988 (= lt!395100 (drop!465 lt!394783 from!787))))

(declare-fun lt!395099 () Unit!17407)

(declare-fun lt!395096 () Unit!17407)

(assert (=> b!1160988 (= lt!395099 lt!395096)))

(assert (=> b!1160988 (subseq!239 (drop!465 lt!394783 from!787) lt!394783)))

(assert (=> b!1160988 (= lt!395096 (lemmaDropSubseq!30 lt!394783 from!787))))

(declare-fun d!331398 () Bool)

(assert (=> d!331398 e!743274))

(declare-fun res!523320 () Bool)

(assert (=> d!331398 (=> (not res!523320) (not e!743274))))

(assert (=> d!331398 (= res!523320 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (drop!465 lt!394783 from!787)) e!743272))))

(declare-fun res!523322 () Bool)

(assert (=> d!331398 (=> res!523322 e!743272)))

(assert (=> d!331398 (= res!523322 (not ((_ is Cons!11411) lt!395095)))))

(assert (=> d!331398 (= lt!395095 (drop!465 lt!394783 from!787))))

(declare-fun lt!395097 () Unit!17407)

(declare-fun choose!7456 (LexerInterface!1678 List!11435 Int List!11436) Unit!17407)

(assert (=> d!331398 (= lt!395097 (choose!7456 Lexer!1676 lt!394783 from!787 (rules!9480 thiss!10527)))))

(assert (=> d!331398 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331398 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!30 Lexer!1676 lt!394783 from!787 (rules!9480 thiss!10527)) lt!395097)))

(assert (= (and d!331398 (not res!523322)) b!1160986))

(assert (= (and b!1160986 res!523319) b!1160987))

(assert (= (and d!331398 res!523320) b!1160988))

(assert (= (and b!1160988 res!523321) b!1160989))

(assert (=> b!1160988 m!1327587))

(assert (=> b!1160988 m!1327571))

(declare-fun m!1328025 () Bool)

(assert (=> b!1160988 m!1328025))

(assert (=> b!1160988 m!1327571))

(declare-fun m!1328027 () Bool)

(assert (=> b!1160988 m!1328027))

(declare-fun m!1328029 () Bool)

(assert (=> b!1160988 m!1328029))

(assert (=> b!1160988 m!1327571))

(declare-fun m!1328031 () Bool)

(assert (=> b!1160988 m!1328031))

(declare-fun m!1328033 () Bool)

(assert (=> b!1160988 m!1328033))

(declare-fun m!1328035 () Bool)

(assert (=> b!1160987 m!1328035))

(declare-fun m!1328037 () Bool)

(assert (=> b!1160986 m!1328037))

(assert (=> d!331398 m!1327571))

(assert (=> d!331398 m!1327571))

(declare-fun m!1328039 () Bool)

(assert (=> d!331398 m!1328039))

(declare-fun m!1328041 () Bool)

(assert (=> d!331398 m!1328041))

(assert (=> d!331398 m!1327583))

(declare-fun m!1328043 () Bool)

(assert (=> b!1160989 m!1328043))

(assert (=> b!1160742 d!331398))

(declare-fun d!331408 () Bool)

(assert (=> d!331408 (subseq!239 (drop!465 lt!394783 from!787) lt!394783)))

(declare-fun lt!395103 () Unit!17407)

(declare-fun choose!7457 (List!11435 Int) Unit!17407)

(assert (=> d!331408 (= lt!395103 (choose!7457 lt!394783 from!787))))

(assert (=> d!331408 (= (lemmaDropSubseq!30 lt!394783 from!787) lt!395103)))

(declare-fun bs!283442 () Bool)

(assert (= bs!283442 d!331408))

(assert (=> bs!283442 m!1327571))

(assert (=> bs!283442 m!1327571))

(assert (=> bs!283442 m!1328031))

(declare-fun m!1328045 () Bool)

(assert (=> bs!283442 m!1328045))

(assert (=> b!1160742 d!331408))

(declare-fun d!331410 () Bool)

(assert (=> d!331410 (= (isEmpty!6975 (rules!9480 thiss!10527)) ((_ is Nil!11412) (rules!9480 thiss!10527)))))

(assert (=> b!1160742 d!331410))

(declare-fun d!331412 () Bool)

(declare-fun res!523332 () Bool)

(declare-fun e!743289 () Bool)

(assert (=> d!331412 (=> res!523332 e!743289)))

(assert (=> d!331412 (= res!523332 ((_ is Nil!11411) lt!394771))))

(assert (=> d!331412 (= (subseq!239 lt!394771 lt!394783) e!743289)))

(declare-fun b!1161003 () Bool)

(declare-fun e!743288 () Bool)

(assert (=> b!1161003 (= e!743288 (subseq!239 (t!109739 lt!394771) (t!109739 lt!394783)))))

(declare-fun b!1161001 () Bool)

(declare-fun e!743287 () Bool)

(assert (=> b!1161001 (= e!743289 e!743287)))

(declare-fun res!523334 () Bool)

(assert (=> b!1161001 (=> (not res!523334) (not e!743287))))

(assert (=> b!1161001 (= res!523334 ((_ is Cons!11411) lt!394783))))

(declare-fun b!1161002 () Bool)

(declare-fun e!743290 () Bool)

(assert (=> b!1161002 (= e!743287 e!743290)))

(declare-fun res!523333 () Bool)

(assert (=> b!1161002 (=> res!523333 e!743290)))

(assert (=> b!1161002 (= res!523333 e!743288)))

(declare-fun res!523331 () Bool)

(assert (=> b!1161002 (=> (not res!523331) (not e!743288))))

(assert (=> b!1161002 (= res!523331 (= (h!16812 lt!394771) (h!16812 lt!394783)))))

(declare-fun b!1161004 () Bool)

(assert (=> b!1161004 (= e!743290 (subseq!239 lt!394771 (t!109739 lt!394783)))))

(assert (= (and d!331412 (not res!523332)) b!1161001))

(assert (= (and b!1161001 res!523334) b!1161002))

(assert (= (and b!1161002 res!523331) b!1161003))

(assert (= (and b!1161002 (not res!523333)) b!1161004))

(declare-fun m!1328047 () Bool)

(assert (=> b!1161003 m!1328047))

(declare-fun m!1328049 () Bool)

(assert (=> b!1161004 m!1328049))

(assert (=> b!1160742 d!331412))

(declare-fun d!331414 () Bool)

(declare-fun lt!395180 () Bool)

(declare-fun e!743308 () Bool)

(assert (=> d!331414 (= lt!395180 e!743308)))

(declare-fun res!523365 () Bool)

(assert (=> d!331414 (=> (not res!523365) (not e!743308))))

(declare-datatypes ((tuple2!12002 0))(
  ( (tuple2!12003 (_1!6848 BalanceConc!7480) (_2!6848 BalanceConc!7478)) )
))
(declare-fun lex!694 (LexerInterface!1678 List!11436 BalanceConc!7478) tuple2!12002)

(declare-fun print!631 (LexerInterface!1678 BalanceConc!7480) BalanceConc!7478)

(declare-fun singletonSeq!649 (Token!3628) BalanceConc!7480)

(assert (=> d!331414 (= res!523365 (= (list!4198 (_1!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394772)))))) (list!4198 (singletonSeq!649 (h!16812 lt!394772)))))))

(declare-fun e!743309 () Bool)

(assert (=> d!331414 (= lt!395180 e!743309)))

(declare-fun res!523363 () Bool)

(assert (=> d!331414 (=> (not res!523363) (not e!743309))))

(declare-fun lt!395181 () tuple2!12002)

(assert (=> d!331414 (= res!523363 (= (size!8964 (_1!6848 lt!395181)) 1))))

(assert (=> d!331414 (= lt!395181 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394772)))))))

(assert (=> d!331414 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331414 (= (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394772)) lt!395180)))

(declare-fun b!1161033 () Bool)

(declare-fun res!523364 () Bool)

(assert (=> b!1161033 (=> (not res!523364) (not e!743309))))

(assert (=> b!1161033 (= res!523364 (= (apply!2429 (_1!6848 lt!395181) 0) (h!16812 lt!394772)))))

(declare-fun b!1161034 () Bool)

(declare-fun isEmpty!6977 (BalanceConc!7478) Bool)

(assert (=> b!1161034 (= e!743309 (isEmpty!6977 (_2!6848 lt!395181)))))

(declare-fun b!1161035 () Bool)

(assert (=> b!1161035 (= e!743308 (isEmpty!6977 (_2!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394772)))))))))

(assert (= (and d!331414 res!523363) b!1161033))

(assert (= (and b!1161033 res!523364) b!1161034))

(assert (= (and d!331414 res!523365) b!1161035))

(declare-fun m!1328209 () Bool)

(assert (=> d!331414 m!1328209))

(declare-fun m!1328211 () Bool)

(assert (=> d!331414 m!1328211))

(declare-fun m!1328213 () Bool)

(assert (=> d!331414 m!1328213))

(declare-fun m!1328215 () Bool)

(assert (=> d!331414 m!1328215))

(assert (=> d!331414 m!1327583))

(declare-fun m!1328217 () Bool)

(assert (=> d!331414 m!1328217))

(assert (=> d!331414 m!1328213))

(assert (=> d!331414 m!1328209))

(assert (=> d!331414 m!1328213))

(declare-fun m!1328219 () Bool)

(assert (=> d!331414 m!1328219))

(declare-fun m!1328221 () Bool)

(assert (=> b!1161033 m!1328221))

(declare-fun m!1328223 () Bool)

(assert (=> b!1161034 m!1328223))

(assert (=> b!1161035 m!1328213))

(assert (=> b!1161035 m!1328213))

(assert (=> b!1161035 m!1328209))

(assert (=> b!1161035 m!1328209))

(assert (=> b!1161035 m!1328211))

(declare-fun m!1328225 () Bool)

(assert (=> b!1161035 m!1328225))

(assert (=> b!1160731 d!331414))

(declare-fun bs!283445 () Bool)

(declare-fun d!331426 () Bool)

(assert (= bs!283445 (and d!331426 d!331364)))

(declare-fun lambda!47321 () Int)

(assert (=> bs!283445 (= lambda!47321 lambda!47309)))

(declare-fun bs!283446 () Bool)

(assert (= bs!283446 (and d!331426 d!331394)))

(assert (=> bs!283446 (= lambda!47321 lambda!47314)))

(declare-fun bs!283447 () Bool)

(assert (= bs!283447 (and d!331426 b!1160988)))

(assert (=> bs!283447 (= lambda!47321 lambda!47320)))

(declare-fun bs!283448 () Bool)

(assert (= bs!283448 (and d!331426 d!331372)))

(assert (=> bs!283448 (= lambda!47321 lambda!47312)))

(declare-fun bs!283449 () Bool)

(assert (= bs!283449 (and d!331426 b!1160732)))

(assert (=> bs!283449 (= lambda!47321 lambda!47301)))

(declare-fun b!1161040 () Bool)

(declare-fun e!743314 () Bool)

(assert (=> b!1161040 (= e!743314 true)))

(declare-fun b!1161039 () Bool)

(declare-fun e!743313 () Bool)

(assert (=> b!1161039 (= e!743313 e!743314)))

(declare-fun b!1161038 () Bool)

(declare-fun e!743312 () Bool)

(assert (=> b!1161038 (= e!743312 e!743313)))

(assert (=> d!331426 e!743312))

(assert (= b!1161039 b!1161040))

(assert (= b!1161038 b!1161039))

(assert (= (and d!331426 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1161038))

(assert (=> b!1161040 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47321))))

(assert (=> b!1161040 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47321))))

(assert (=> d!331426 true))

(declare-fun lt!395182 () Bool)

(assert (=> d!331426 (= lt!395182 (forall!2971 (t!109739 lt!394772) lambda!47321))))

(declare-fun e!743311 () Bool)

(assert (=> d!331426 (= lt!395182 e!743311)))

(declare-fun res!523367 () Bool)

(assert (=> d!331426 (=> res!523367 e!743311)))

(assert (=> d!331426 (= res!523367 (not ((_ is Cons!11411) (t!109739 lt!394772))))))

(assert (=> d!331426 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331426 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394772)) lt!395182)))

(declare-fun b!1161036 () Bool)

(declare-fun e!743310 () Bool)

(assert (=> b!1161036 (= e!743311 e!743310)))

(declare-fun res!523366 () Bool)

(assert (=> b!1161036 (=> (not res!523366) (not e!743310))))

(assert (=> b!1161036 (= res!523366 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 (t!109739 lt!394772))))))

(declare-fun b!1161037 () Bool)

(assert (=> b!1161037 (= e!743310 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 (t!109739 lt!394772))))))

(assert (= (and d!331426 (not res!523367)) b!1161036))

(assert (= (and b!1161036 res!523366) b!1161037))

(declare-fun m!1328227 () Bool)

(assert (=> d!331426 m!1328227))

(assert (=> d!331426 m!1327583))

(declare-fun m!1328229 () Bool)

(assert (=> b!1161036 m!1328229))

(declare-fun m!1328231 () Bool)

(assert (=> b!1161037 m!1328231))

(assert (=> b!1160741 d!331426))

(declare-fun bs!283450 () Bool)

(declare-fun d!331428 () Bool)

(assert (= bs!283450 (and d!331428 d!331394)))

(declare-fun lambda!47322 () Int)

(assert (=> bs!283450 (= lambda!47322 lambda!47314)))

(declare-fun bs!283451 () Bool)

(assert (= bs!283451 (and d!331428 b!1160988)))

(assert (=> bs!283451 (= lambda!47322 lambda!47320)))

(declare-fun bs!283452 () Bool)

(assert (= bs!283452 (and d!331428 d!331372)))

(assert (=> bs!283452 (= lambda!47322 lambda!47312)))

(declare-fun bs!283453 () Bool)

(assert (= bs!283453 (and d!331428 b!1160732)))

(assert (=> bs!283453 (= lambda!47322 lambda!47301)))

(declare-fun bs!283454 () Bool)

(assert (= bs!283454 (and d!331428 d!331426)))

(assert (=> bs!283454 (= lambda!47322 lambda!47321)))

(declare-fun bs!283455 () Bool)

(assert (= bs!283455 (and d!331428 d!331364)))

(assert (=> bs!283455 (= lambda!47322 lambda!47309)))

(declare-fun b!1161045 () Bool)

(declare-fun e!743319 () Bool)

(assert (=> b!1161045 (= e!743319 true)))

(declare-fun b!1161044 () Bool)

(declare-fun e!743318 () Bool)

(assert (=> b!1161044 (= e!743318 e!743319)))

(declare-fun b!1161043 () Bool)

(declare-fun e!743317 () Bool)

(assert (=> b!1161043 (= e!743317 e!743318)))

(assert (=> d!331428 e!743317))

(assert (= b!1161044 b!1161045))

(assert (= b!1161043 b!1161044))

(assert (= (and d!331428 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1161043))

(assert (=> b!1161045 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47322))))

(assert (=> b!1161045 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47322))))

(assert (=> d!331428 true))

(declare-fun lt!395183 () Bool)

(assert (=> d!331428 (= lt!395183 (forall!2971 (t!109739 lt!394783) lambda!47322))))

(declare-fun e!743316 () Bool)

(assert (=> d!331428 (= lt!395183 e!743316)))

(declare-fun res!523369 () Bool)

(assert (=> d!331428 (=> res!523369 e!743316)))

(assert (=> d!331428 (= res!523369 (not ((_ is Cons!11411) (t!109739 lt!394783))))))

(assert (=> d!331428 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331428 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394783)) lt!395183)))

(declare-fun b!1161041 () Bool)

(declare-fun e!743315 () Bool)

(assert (=> b!1161041 (= e!743316 e!743315)))

(declare-fun res!523368 () Bool)

(assert (=> b!1161041 (=> (not res!523368) (not e!743315))))

(assert (=> b!1161041 (= res!523368 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 (t!109739 lt!394783))))))

(declare-fun b!1161042 () Bool)

(assert (=> b!1161042 (= e!743315 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 (t!109739 lt!394783))))))

(assert (= (and d!331428 (not res!523369)) b!1161041))

(assert (= (and b!1161041 res!523368) b!1161042))

(declare-fun m!1328233 () Bool)

(assert (=> d!331428 m!1328233))

(assert (=> d!331428 m!1327583))

(declare-fun m!1328235 () Bool)

(assert (=> b!1161041 m!1328235))

(declare-fun m!1328237 () Bool)

(assert (=> b!1161042 m!1328237))

(assert (=> b!1160730 d!331428))

(declare-fun b!1161046 () Bool)

(declare-fun e!743320 () Bool)

(declare-fun e!743321 () Bool)

(assert (=> b!1161046 (= e!743320 e!743321)))

(declare-fun res!523375 () Bool)

(assert (=> b!1161046 (=> (not res!523375) (not e!743321))))

(assert (=> b!1161046 (= res!523375 (separableTokensPredicate!114 Lexer!1676 (apply!2429 (tokens!1584 thiss!10527) 0) (apply!2429 (tokens!1584 thiss!10527) (+ 0 1)) (rules!9480 thiss!10527)))))

(declare-fun lt!395185 () Unit!17407)

(declare-fun Unit!17428 () Unit!17407)

(assert (=> b!1161046 (= lt!395185 Unit!17428)))

(assert (=> b!1161046 (> (size!8965 (charsOf!1052 (apply!2429 (tokens!1584 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!395205 () Unit!17407)

(declare-fun Unit!17429 () Unit!17407)

(assert (=> b!1161046 (= lt!395205 Unit!17429)))

(assert (=> b!1161046 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (apply!2429 (tokens!1584 thiss!10527) (+ 0 1)))))

(declare-fun lt!395194 () Unit!17407)

(declare-fun Unit!17430 () Unit!17407)

(assert (=> b!1161046 (= lt!395194 Unit!17430)))

(assert (=> b!1161046 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (apply!2429 (tokens!1584 thiss!10527) 0))))

(declare-fun lt!395212 () Unit!17407)

(declare-fun lt!395215 () Unit!17407)

(assert (=> b!1161046 (= lt!395212 lt!395215)))

(declare-fun lt!395184 () Token!3628)

(assert (=> b!1161046 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!395184)))

(declare-fun lt!395192 () List!11435)

(assert (=> b!1161046 (= lt!395215 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!395192 lt!395184))))

(assert (=> b!1161046 (= lt!395184 (apply!2429 (tokens!1584 thiss!10527) (+ 0 1)))))

(assert (=> b!1161046 (= lt!395192 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!395209 () Unit!17407)

(declare-fun lt!395213 () Unit!17407)

(assert (=> b!1161046 (= lt!395209 lt!395213)))

(declare-fun lt!395203 () Token!3628)

(assert (=> b!1161046 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!395203)))

(declare-fun lt!395214 () List!11435)

(assert (=> b!1161046 (= lt!395213 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!395214 lt!395203))))

(assert (=> b!1161046 (= lt!395203 (apply!2429 (tokens!1584 thiss!10527) 0))))

(assert (=> b!1161046 (= lt!395214 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!395186 () Unit!17407)

(declare-fun lt!395198 () Unit!17407)

(assert (=> b!1161046 (= lt!395186 lt!395198)))

(declare-fun lt!395187 () List!11435)

(declare-fun lt!395208 () Int)

(assert (=> b!1161046 (= (tail!1670 (drop!465 lt!395187 lt!395208)) (drop!465 lt!395187 (+ lt!395208 1)))))

(assert (=> b!1161046 (= lt!395198 (lemmaDropTail!343 lt!395187 lt!395208))))

(assert (=> b!1161046 (= lt!395208 (+ 0 1))))

(assert (=> b!1161046 (= lt!395187 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!395200 () Unit!17407)

(declare-fun lt!395195 () Unit!17407)

(assert (=> b!1161046 (= lt!395200 lt!395195)))

(declare-fun lt!395190 () List!11435)

(assert (=> b!1161046 (= (tail!1670 (drop!465 lt!395190 0)) (drop!465 lt!395190 (+ 0 1)))))

(assert (=> b!1161046 (= lt!395195 (lemmaDropTail!343 lt!395190 0))))

(assert (=> b!1161046 (= lt!395190 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!395201 () Unit!17407)

(declare-fun lt!395189 () Unit!17407)

(assert (=> b!1161046 (= lt!395201 lt!395189)))

(declare-fun lt!395191 () List!11435)

(declare-fun lt!395196 () Int)

(assert (=> b!1161046 (= (head!2086 (drop!465 lt!395191 lt!395196)) (apply!2430 lt!395191 lt!395196))))

(assert (=> b!1161046 (= lt!395189 (lemmaDropApply!355 lt!395191 lt!395196))))

(assert (=> b!1161046 (= lt!395196 (+ 0 1))))

(assert (=> b!1161046 (= lt!395191 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!395210 () Unit!17407)

(declare-fun lt!395211 () Unit!17407)

(assert (=> b!1161046 (= lt!395210 lt!395211)))

(declare-fun lt!395193 () List!11435)

(assert (=> b!1161046 (= (head!2086 (drop!465 lt!395193 0)) (apply!2430 lt!395193 0))))

(assert (=> b!1161046 (= lt!395211 (lemmaDropApply!355 lt!395193 0))))

(assert (=> b!1161046 (= lt!395193 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun b!1161047 () Bool)

(declare-fun e!743324 () Bool)

(assert (=> b!1161047 (= e!743324 (<= 0 (size!8964 (tokens!1584 thiss!10527))))))

(declare-fun b!1161048 () Bool)

(assert (=> b!1161048 (= e!743321 (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 (tokens!1584 thiss!10527) (+ 0 1) (rules!9480 thiss!10527)))))

(declare-fun b!1161049 () Bool)

(declare-fun e!743323 () Bool)

(declare-fun lt!395216 () List!11435)

(assert (=> b!1161049 (= e!743323 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!395216))))

(declare-fun d!331430 () Bool)

(declare-fun lt!395197 () Bool)

(assert (=> d!331430 (= lt!395197 (tokensListTwoByTwoPredicateSeparableList!90 Lexer!1676 (dropList!310 (tokens!1584 thiss!10527) 0) (rules!9480 thiss!10527)))))

(declare-fun lt!395202 () Unit!17407)

(declare-fun lt!395204 () Unit!17407)

(assert (=> d!331430 (= lt!395202 lt!395204)))

(declare-fun lt!395206 () List!11435)

(assert (=> d!331430 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!395206)))

(assert (=> d!331430 (= lt!395204 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!20 Lexer!1676 (rules!9480 thiss!10527) lt!395216 lt!395206))))

(assert (=> d!331430 e!743323))

(declare-fun res!523371 () Bool)

(assert (=> d!331430 (=> (not res!523371) (not e!743323))))

(assert (=> d!331430 (= res!523371 ((_ is Lexer!1676) Lexer!1676))))

(assert (=> d!331430 (= lt!395206 (dropList!310 (tokens!1584 thiss!10527) 0))))

(assert (=> d!331430 (= lt!395216 (list!4198 (tokens!1584 thiss!10527)))))

(declare-fun lt!395199 () Unit!17407)

(declare-fun lt!395188 () Unit!17407)

(assert (=> d!331430 (= lt!395199 lt!395188)))

(declare-fun lt!395207 () List!11435)

(assert (=> d!331430 (subseq!239 (drop!465 lt!395207 0) lt!395207)))

(assert (=> d!331430 (= lt!395188 (lemmaDropSubSeq!20 lt!395207 0))))

(declare-fun e!743322 () Bool)

(assert (=> d!331430 e!743322))

(declare-fun res!523377 () Bool)

(assert (=> d!331430 (=> (not res!523377) (not e!743322))))

(assert (=> d!331430 (= res!523377 (>= 0 0))))

(assert (=> d!331430 (= lt!395207 (list!4198 (tokens!1584 thiss!10527)))))

(assert (=> d!331430 (= lt!395197 e!743320)))

(declare-fun res!523370 () Bool)

(assert (=> d!331430 (=> res!523370 e!743320)))

(assert (=> d!331430 (= res!523370 (not (< 0 (- (size!8964 (tokens!1584 thiss!10527)) 1))))))

(assert (=> d!331430 e!743324))

(declare-fun res!523376 () Bool)

(assert (=> d!331430 (=> (not res!523376) (not e!743324))))

(assert (=> d!331430 (= res!523376 (>= 0 0))))

(assert (=> d!331430 (= (tokensListTwoByTwoPredicateSeparable!53 Lexer!1676 (tokens!1584 thiss!10527) 0 (rules!9480 thiss!10527)) lt!395197)))

(declare-fun b!1161050 () Bool)

(declare-fun res!523374 () Bool)

(assert (=> b!1161050 (=> (not res!523374) (not e!743323))))

(assert (=> b!1161050 (= res!523374 (rulesInvariant!1552 Lexer!1676 (rules!9480 thiss!10527)))))

(declare-fun b!1161051 () Bool)

(declare-fun res!523373 () Bool)

(assert (=> b!1161051 (=> (not res!523373) (not e!743323))))

(assert (=> b!1161051 (= res!523373 (not (isEmpty!6975 (rules!9480 thiss!10527))))))

(declare-fun b!1161052 () Bool)

(assert (=> b!1161052 (= e!743322 (<= 0 (size!8967 lt!395207)))))

(declare-fun b!1161053 () Bool)

(declare-fun res!523372 () Bool)

(assert (=> b!1161053 (=> (not res!523372) (not e!743323))))

(assert (=> b!1161053 (= res!523372 (subseq!239 lt!395206 lt!395216))))

(assert (= (and d!331430 res!523376) b!1161047))

(assert (= (and d!331430 (not res!523370)) b!1161046))

(assert (= (and b!1161046 res!523375) b!1161048))

(assert (= (and d!331430 res!523377) b!1161052))

(assert (= (and d!331430 res!523371) b!1161051))

(assert (= (and b!1161051 res!523373) b!1161050))

(assert (= (and b!1161050 res!523374) b!1161053))

(assert (= (and b!1161053 res!523372) b!1161049))

(assert (=> b!1161051 m!1327583))

(declare-fun m!1328239 () Bool)

(assert (=> b!1161053 m!1328239))

(declare-fun m!1328241 () Bool)

(assert (=> b!1161048 m!1328241))

(declare-fun m!1328243 () Bool)

(assert (=> b!1161046 m!1328243))

(declare-fun m!1328245 () Bool)

(assert (=> b!1161046 m!1328245))

(declare-fun m!1328247 () Bool)

(assert (=> b!1161046 m!1328247))

(declare-fun m!1328249 () Bool)

(assert (=> b!1161046 m!1328249))

(declare-fun m!1328251 () Bool)

(assert (=> b!1161046 m!1328251))

(declare-fun m!1328253 () Bool)

(assert (=> b!1161046 m!1328253))

(declare-fun m!1328255 () Bool)

(assert (=> b!1161046 m!1328255))

(declare-fun m!1328257 () Bool)

(assert (=> b!1161046 m!1328257))

(assert (=> b!1161046 m!1328255))

(declare-fun m!1328259 () Bool)

(assert (=> b!1161046 m!1328259))

(declare-fun m!1328261 () Bool)

(assert (=> b!1161046 m!1328261))

(declare-fun m!1328263 () Bool)

(assert (=> b!1161046 m!1328263))

(assert (=> b!1161046 m!1328259))

(declare-fun m!1328265 () Bool)

(assert (=> b!1161046 m!1328265))

(declare-fun m!1328267 () Bool)

(assert (=> b!1161046 m!1328267))

(declare-fun m!1328269 () Bool)

(assert (=> b!1161046 m!1328269))

(declare-fun m!1328271 () Bool)

(assert (=> b!1161046 m!1328271))

(assert (=> b!1161046 m!1327665))

(assert (=> b!1161046 m!1328255))

(declare-fun m!1328273 () Bool)

(assert (=> b!1161046 m!1328273))

(declare-fun m!1328275 () Bool)

(assert (=> b!1161046 m!1328275))

(assert (=> b!1161046 m!1327617))

(declare-fun m!1328277 () Bool)

(assert (=> b!1161046 m!1328277))

(assert (=> b!1161046 m!1328255))

(assert (=> b!1161046 m!1328247))

(assert (=> b!1161046 m!1327665))

(assert (=> b!1161046 m!1327665))

(declare-fun m!1328279 () Bool)

(assert (=> b!1161046 m!1328279))

(declare-fun m!1328281 () Bool)

(assert (=> b!1161046 m!1328281))

(declare-fun m!1328283 () Bool)

(assert (=> b!1161046 m!1328283))

(assert (=> b!1161046 m!1328243))

(declare-fun m!1328285 () Bool)

(assert (=> b!1161046 m!1328285))

(declare-fun m!1328287 () Bool)

(assert (=> b!1161046 m!1328287))

(declare-fun m!1328289 () Bool)

(assert (=> b!1161046 m!1328289))

(declare-fun m!1328291 () Bool)

(assert (=> b!1161046 m!1328291))

(assert (=> b!1161046 m!1328281))

(declare-fun m!1328293 () Bool)

(assert (=> b!1161046 m!1328293))

(assert (=> b!1161046 m!1328287))

(declare-fun m!1328295 () Bool)

(assert (=> d!331430 m!1328295))

(declare-fun m!1328297 () Bool)

(assert (=> d!331430 m!1328297))

(declare-fun m!1328299 () Bool)

(assert (=> d!331430 m!1328299))

(declare-fun m!1328301 () Bool)

(assert (=> d!331430 m!1328301))

(assert (=> d!331430 m!1327613))

(declare-fun m!1328303 () Bool)

(assert (=> d!331430 m!1328303))

(declare-fun m!1328305 () Bool)

(assert (=> d!331430 m!1328305))

(assert (=> d!331430 m!1328295))

(declare-fun m!1328307 () Bool)

(assert (=> d!331430 m!1328307))

(assert (=> d!331430 m!1327617))

(assert (=> d!331430 m!1328299))

(declare-fun m!1328309 () Bool)

(assert (=> b!1161049 m!1328309))

(declare-fun m!1328311 () Bool)

(assert (=> b!1161052 m!1328311))

(assert (=> b!1161047 m!1327613))

(assert (=> b!1161050 m!1327555))

(assert (=> b!1160740 d!331430))

(declare-fun d!331432 () Bool)

(declare-fun lt!395217 () Bool)

(assert (=> d!331432 (= lt!395217 (forall!2971 (list!4198 lt!394775) lambda!47301))))

(assert (=> d!331432 (= lt!395217 (forall!2972 (c!194230 lt!394775) lambda!47301))))

(assert (=> d!331432 (= (forall!2970 lt!394775 lambda!47301) lt!395217)))

(declare-fun bs!283456 () Bool)

(assert (= bs!283456 d!331432))

(assert (=> bs!283456 m!1327597))

(assert (=> bs!283456 m!1327597))

(declare-fun m!1328313 () Bool)

(assert (=> bs!283456 m!1328313))

(declare-fun m!1328315 () Bool)

(assert (=> bs!283456 m!1328315))

(assert (=> b!1160729 d!331432))

(declare-fun d!331434 () Bool)

(declare-fun res!523380 () Bool)

(declare-fun e!743327 () Bool)

(assert (=> d!331434 (=> (not res!523380) (not e!743327))))

(declare-fun rulesValid!690 (LexerInterface!1678 List!11436) Bool)

(assert (=> d!331434 (= res!523380 (rulesValid!690 Lexer!1676 (rules!9480 thiss!10527)))))

(assert (=> d!331434 (= (rulesInvariant!1552 Lexer!1676 (rules!9480 thiss!10527)) e!743327)))

(declare-fun b!1161056 () Bool)

(declare-datatypes ((List!11438 0))(
  ( (Nil!11414) (Cons!11414 (h!16815 String!13833) (t!109766 List!11438)) )
))
(declare-fun noDuplicateTag!690 (LexerInterface!1678 List!11436 List!11438) Bool)

(assert (=> b!1161056 (= e!743327 (noDuplicateTag!690 Lexer!1676 (rules!9480 thiss!10527) Nil!11414))))

(assert (= (and d!331434 res!523380) b!1161056))

(declare-fun m!1328317 () Bool)

(assert (=> d!331434 m!1328317))

(declare-fun m!1328319 () Bool)

(assert (=> b!1161056 m!1328319))

(assert (=> b!1160739 d!331434))

(declare-fun d!331436 () Bool)

(declare-fun e!743363 () Bool)

(assert (=> d!331436 e!743363))

(declare-fun res!523416 () Bool)

(assert (=> d!331436 (=> (not res!523416) (not e!743363))))

(assert (=> d!331436 (= res!523416 (rulesInvariant!1552 Lexer!1676 (rules!9480 thiss!10527)))))

(declare-fun Unit!17431 () Unit!17407)

(assert (=> d!331436 (= (lemmaInvariant!170 thiss!10527) Unit!17431)))

(declare-fun b!1161098 () Bool)

(declare-fun res!523417 () Bool)

(assert (=> b!1161098 (=> (not res!523417) (not e!743363))))

(assert (=> b!1161098 (= res!523417 (rulesProduceEachTokenIndividually!717 Lexer!1676 (rules!9480 thiss!10527) (tokens!1584 thiss!10527)))))

(declare-fun b!1161099 () Bool)

(assert (=> b!1161099 (= e!743363 (separableTokens!120 Lexer!1676 (tokens!1584 thiss!10527) (rules!9480 thiss!10527)))))

(assert (= (and d!331436 res!523416) b!1161098))

(assert (= (and b!1161098 res!523417) b!1161099))

(assert (=> d!331436 m!1327555))

(assert (=> b!1161098 m!1327615))

(declare-fun m!1328393 () Bool)

(assert (=> b!1161099 m!1328393))

(assert (=> b!1160739 d!331436))

(declare-fun bs!283471 () Bool)

(declare-fun d!331464 () Bool)

(assert (= bs!283471 (and d!331464 d!331394)))

(declare-fun lambda!47325 () Int)

(assert (=> bs!283471 (= lambda!47325 lambda!47314)))

(declare-fun bs!283472 () Bool)

(assert (= bs!283472 (and d!331464 b!1160988)))

(assert (=> bs!283472 (= lambda!47325 lambda!47320)))

(declare-fun bs!283473 () Bool)

(assert (= bs!283473 (and d!331464 d!331372)))

(assert (=> bs!283473 (= lambda!47325 lambda!47312)))

(declare-fun bs!283474 () Bool)

(assert (= bs!283474 (and d!331464 b!1160732)))

(assert (=> bs!283474 (= lambda!47325 lambda!47301)))

(declare-fun bs!283475 () Bool)

(assert (= bs!283475 (and d!331464 d!331428)))

(assert (=> bs!283475 (= lambda!47325 lambda!47322)))

(declare-fun bs!283476 () Bool)

(assert (= bs!283476 (and d!331464 d!331426)))

(assert (=> bs!283476 (= lambda!47325 lambda!47321)))

(declare-fun bs!283477 () Bool)

(assert (= bs!283477 (and d!331464 d!331364)))

(assert (=> bs!283477 (= lambda!47325 lambda!47309)))

(declare-fun b!1161104 () Bool)

(declare-fun e!743368 () Bool)

(assert (=> b!1161104 (= e!743368 true)))

(declare-fun b!1161103 () Bool)

(declare-fun e!743367 () Bool)

(assert (=> b!1161103 (= e!743367 e!743368)))

(declare-fun b!1161102 () Bool)

(declare-fun e!743366 () Bool)

(assert (=> b!1161102 (= e!743366 e!743367)))

(assert (=> d!331464 e!743366))

(assert (= b!1161103 b!1161104))

(assert (= b!1161102 b!1161103))

(assert (= (and d!331464 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1161102))

(assert (=> b!1161104 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47325))))

(assert (=> b!1161104 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47325))))

(assert (=> d!331464 true))

(declare-fun lt!395253 () Bool)

(assert (=> d!331464 (= lt!395253 (forall!2971 (t!109739 lt!394771) lambda!47325))))

(declare-fun e!743365 () Bool)

(assert (=> d!331464 (= lt!395253 e!743365)))

(declare-fun res!523419 () Bool)

(assert (=> d!331464 (=> res!523419 e!743365)))

(assert (=> d!331464 (= res!523419 (not ((_ is Cons!11411) (t!109739 lt!394771))))))

(assert (=> d!331464 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331464 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394771)) lt!395253)))

(declare-fun b!1161100 () Bool)

(declare-fun e!743364 () Bool)

(assert (=> b!1161100 (= e!743365 e!743364)))

(declare-fun res!523418 () Bool)

(assert (=> b!1161100 (=> (not res!523418) (not e!743364))))

(assert (=> b!1161100 (= res!523418 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 (t!109739 lt!394771))))))

(declare-fun b!1161101 () Bool)

(assert (=> b!1161101 (= e!743364 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 (t!109739 lt!394771))))))

(assert (= (and d!331464 (not res!523419)) b!1161100))

(assert (= (and b!1161100 res!523418) b!1161101))

(declare-fun m!1328399 () Bool)

(assert (=> d!331464 m!1328399))

(assert (=> d!331464 m!1327583))

(declare-fun m!1328401 () Bool)

(assert (=> b!1161100 m!1328401))

(declare-fun m!1328403 () Bool)

(assert (=> b!1161101 m!1328403))

(assert (=> b!1160728 d!331464))

(declare-fun d!331468 () Bool)

(declare-fun c!194261 () Bool)

(assert (=> d!331468 (= c!194261 ((_ is Node!3729) (c!194230 (tokens!1584 thiss!10527))))))

(declare-fun e!743379 () Bool)

(assert (=> d!331468 (= (inv!14997 (c!194230 (tokens!1584 thiss!10527))) e!743379)))

(declare-fun b!1161120 () Bool)

(declare-fun inv!15000 (Conc!3729) Bool)

(assert (=> b!1161120 (= e!743379 (inv!15000 (c!194230 (tokens!1584 thiss!10527))))))

(declare-fun b!1161121 () Bool)

(declare-fun e!743380 () Bool)

(assert (=> b!1161121 (= e!743379 e!743380)))

(declare-fun res!523425 () Bool)

(assert (=> b!1161121 (= res!523425 (not ((_ is Leaf!5731) (c!194230 (tokens!1584 thiss!10527)))))))

(assert (=> b!1161121 (=> res!523425 e!743380)))

(declare-fun b!1161122 () Bool)

(declare-fun inv!15001 (Conc!3729) Bool)

(assert (=> b!1161122 (= e!743380 (inv!15001 (c!194230 (tokens!1584 thiss!10527))))))

(assert (= (and d!331468 c!194261) b!1161120))

(assert (= (and d!331468 (not c!194261)) b!1161121))

(assert (= (and b!1161121 (not res!523425)) b!1161122))

(declare-fun m!1328409 () Bool)

(assert (=> b!1161120 m!1328409))

(declare-fun m!1328411 () Bool)

(assert (=> b!1161122 m!1328411))

(assert (=> b!1160738 d!331468))

(declare-fun d!331472 () Bool)

(declare-fun isBalanced!1049 (Conc!3729) Bool)

(assert (=> d!331472 (= (inv!14995 (tokens!1584 thiss!10527)) (isBalanced!1049 (c!194230 (tokens!1584 thiss!10527))))))

(declare-fun bs!283479 () Bool)

(assert (= bs!283479 d!331472))

(declare-fun m!1328413 () Bool)

(assert (=> bs!283479 m!1328413))

(assert (=> b!1160727 d!331472))

(declare-fun d!331474 () Bool)

(assert (=> d!331474 (subseq!239 (slice!264 lt!394783 from!787 to!267) lt!394783)))

(declare-fun lt!395259 () Unit!17407)

(declare-fun choose!7460 (List!11435 Int Int) Unit!17407)

(assert (=> d!331474 (= lt!395259 (choose!7460 lt!394783 from!787 to!267))))

(declare-fun e!743383 () Bool)

(assert (=> d!331474 e!743383))

(declare-fun res!523428 () Bool)

(assert (=> d!331474 (=> (not res!523428) (not e!743383))))

(assert (=> d!331474 (= res!523428 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!331474 (= (lemmaSliceSubseq!80 lt!394783 from!787 to!267) lt!395259)))

(declare-fun b!1161125 () Bool)

(assert (=> b!1161125 (= e!743383 (<= to!267 (size!8967 lt!394783)))))

(assert (= (and d!331474 res!523428) b!1161125))

(assert (=> d!331474 m!1327607))

(assert (=> d!331474 m!1327607))

(assert (=> d!331474 m!1327609))

(declare-fun m!1328415 () Bool)

(assert (=> d!331474 m!1328415))

(assert (=> b!1161125 m!1327973))

(assert (=> b!1160737 d!331474))

(declare-fun d!331476 () Bool)

(assert (=> d!331476 (forall!2971 lt!394772 lambda!47301)))

(declare-fun lt!395260 () Unit!17407)

(assert (=> d!331476 (= lt!395260 (choose!7455 lt!394772 lt!394783 lambda!47301))))

(assert (=> d!331476 (forall!2971 lt!394783 lambda!47301)))

(assert (=> d!331476 (= (lemmaForallSubseq!131 lt!394772 lt!394783 lambda!47301) lt!395260)))

(declare-fun bs!283480 () Bool)

(assert (= bs!283480 d!331476))

(assert (=> bs!283480 m!1327605))

(declare-fun m!1328417 () Bool)

(assert (=> bs!283480 m!1328417))

(assert (=> bs!283480 m!1327963))

(assert (=> b!1160737 d!331476))

(declare-fun d!331478 () Bool)

(declare-fun res!523429 () Bool)

(declare-fun e!743384 () Bool)

(assert (=> d!331478 (=> res!523429 e!743384)))

(assert (=> d!331478 (= res!523429 ((_ is Nil!11411) lt!394772))))

(assert (=> d!331478 (= (forall!2971 lt!394772 lambda!47301) e!743384)))

(declare-fun b!1161126 () Bool)

(declare-fun e!743385 () Bool)

(assert (=> b!1161126 (= e!743384 e!743385)))

(declare-fun res!523430 () Bool)

(assert (=> b!1161126 (=> (not res!523430) (not e!743385))))

(assert (=> b!1161126 (= res!523430 (dynLambda!5027 lambda!47301 (h!16812 lt!394772)))))

(declare-fun b!1161127 () Bool)

(assert (=> b!1161127 (= e!743385 (forall!2971 (t!109739 lt!394772) lambda!47301))))

(assert (= (and d!331478 (not res!523429)) b!1161126))

(assert (= (and b!1161126 res!523430) b!1161127))

(declare-fun b_lambda!34623 () Bool)

(assert (=> (not b_lambda!34623) (not b!1161126)))

(declare-fun m!1328419 () Bool)

(assert (=> b!1161126 m!1328419))

(declare-fun m!1328421 () Bool)

(assert (=> b!1161127 m!1328421))

(assert (=> b!1160737 d!331478))

(declare-fun d!331480 () Bool)

(declare-fun res!523432 () Bool)

(declare-fun e!743388 () Bool)

(assert (=> d!331480 (=> res!523432 e!743388)))

(assert (=> d!331480 (= res!523432 ((_ is Nil!11411) (slice!264 lt!394783 from!787 to!267)))))

(assert (=> d!331480 (= (subseq!239 (slice!264 lt!394783 from!787 to!267) lt!394783) e!743388)))

(declare-fun b!1161130 () Bool)

(declare-fun e!743387 () Bool)

(assert (=> b!1161130 (= e!743387 (subseq!239 (t!109739 (slice!264 lt!394783 from!787 to!267)) (t!109739 lt!394783)))))

(declare-fun b!1161128 () Bool)

(declare-fun e!743386 () Bool)

(assert (=> b!1161128 (= e!743388 e!743386)))

(declare-fun res!523434 () Bool)

(assert (=> b!1161128 (=> (not res!523434) (not e!743386))))

(assert (=> b!1161128 (= res!523434 ((_ is Cons!11411) lt!394783))))

(declare-fun b!1161129 () Bool)

(declare-fun e!743389 () Bool)

(assert (=> b!1161129 (= e!743386 e!743389)))

(declare-fun res!523433 () Bool)

(assert (=> b!1161129 (=> res!523433 e!743389)))

(assert (=> b!1161129 (= res!523433 e!743387)))

(declare-fun res!523431 () Bool)

(assert (=> b!1161129 (=> (not res!523431) (not e!743387))))

(assert (=> b!1161129 (= res!523431 (= (h!16812 (slice!264 lt!394783 from!787 to!267)) (h!16812 lt!394783)))))

(declare-fun b!1161131 () Bool)

(assert (=> b!1161131 (= e!743389 (subseq!239 (slice!264 lt!394783 from!787 to!267) (t!109739 lt!394783)))))

(assert (= (and d!331480 (not res!523432)) b!1161128))

(assert (= (and b!1161128 res!523434) b!1161129))

(assert (= (and b!1161129 res!523431) b!1161130))

(assert (= (and b!1161129 (not res!523433)) b!1161131))

(declare-fun m!1328423 () Bool)

(assert (=> b!1161130 m!1328423))

(assert (=> b!1161131 m!1327607))

(declare-fun m!1328425 () Bool)

(assert (=> b!1161131 m!1328425))

(assert (=> b!1160737 d!331480))

(declare-fun d!331482 () Bool)

(assert (=> d!331482 (= (list!4198 lt!394775) (list!4199 (c!194230 lt!394775)))))

(declare-fun bs!283481 () Bool)

(assert (= bs!283481 d!331482))

(declare-fun m!1328427 () Bool)

(assert (=> bs!283481 m!1328427))

(assert (=> b!1160737 d!331482))

(declare-fun d!331484 () Bool)

(declare-fun e!743395 () Bool)

(assert (=> d!331484 e!743395))

(declare-fun res!523441 () Bool)

(assert (=> d!331484 (=> (not res!523441) (not e!743395))))

(declare-fun slice!266 (Conc!3729 Int Int) Conc!3729)

(assert (=> d!331484 (= res!523441 (isBalanced!1049 (slice!266 (c!194230 (tokens!1584 thiss!10527)) from!787 to!267)))))

(declare-fun lt!395263 () BalanceConc!7480)

(assert (=> d!331484 (= lt!395263 (BalanceConc!7481 (slice!266 (c!194230 (tokens!1584 thiss!10527)) from!787 to!267)))))

(declare-fun e!743394 () Bool)

(assert (=> d!331484 e!743394))

(declare-fun res!523442 () Bool)

(assert (=> d!331484 (=> (not res!523442) (not e!743394))))

(assert (=> d!331484 (= res!523442 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!331484 (= (slice!263 (tokens!1584 thiss!10527) from!787 to!267) lt!395263)))

(declare-fun b!1161138 () Bool)

(declare-fun res!523443 () Bool)

(assert (=> b!1161138 (=> (not res!523443) (not e!743394))))

(assert (=> b!1161138 (= res!523443 (<= to!267 (size!8964 (tokens!1584 thiss!10527))))))

(declare-fun b!1161139 () Bool)

(assert (=> b!1161139 (= e!743394 (isBalanced!1049 (c!194230 (tokens!1584 thiss!10527))))))

(declare-fun b!1161140 () Bool)

(assert (=> b!1161140 (= e!743395 (= (list!4198 lt!395263) (slice!264 (list!4198 (tokens!1584 thiss!10527)) from!787 to!267)))))

(assert (= (and d!331484 res!523442) b!1161138))

(assert (= (and b!1161138 res!523443) b!1161139))

(assert (= (and d!331484 res!523441) b!1161140))

(declare-fun m!1328429 () Bool)

(assert (=> d!331484 m!1328429))

(assert (=> d!331484 m!1328429))

(declare-fun m!1328431 () Bool)

(assert (=> d!331484 m!1328431))

(assert (=> b!1161138 m!1327613))

(assert (=> b!1161139 m!1328413))

(declare-fun m!1328433 () Bool)

(assert (=> b!1161140 m!1328433))

(assert (=> b!1161140 m!1327617))

(assert (=> b!1161140 m!1327617))

(declare-fun m!1328435 () Bool)

(assert (=> b!1161140 m!1328435))

(assert (=> b!1160737 d!331484))

(declare-fun d!331486 () Bool)

(declare-fun take!59 (List!11435 Int) List!11435)

(assert (=> d!331486 (= (slice!264 lt!394783 from!787 to!267) (take!59 (drop!465 lt!394783 from!787) (- to!267 from!787)))))

(declare-fun bs!283482 () Bool)

(assert (= bs!283482 d!331486))

(assert (=> bs!283482 m!1327571))

(assert (=> bs!283482 m!1327571))

(declare-fun m!1328437 () Bool)

(assert (=> bs!283482 m!1328437))

(assert (=> b!1160737 d!331486))

(declare-fun d!331488 () Bool)

(declare-fun lt!395266 () Int)

(assert (=> d!331488 (= lt!395266 (size!8967 (list!4198 (tokens!1584 thiss!10527))))))

(declare-fun size!8971 (Conc!3729) Int)

(assert (=> d!331488 (= lt!395266 (size!8971 (c!194230 (tokens!1584 thiss!10527))))))

(assert (=> d!331488 (= (size!8964 (tokens!1584 thiss!10527)) lt!395266)))

(declare-fun bs!283483 () Bool)

(assert (= bs!283483 d!331488))

(assert (=> bs!283483 m!1327617))

(assert (=> bs!283483 m!1327617))

(declare-fun m!1328439 () Bool)

(assert (=> bs!283483 m!1328439))

(declare-fun m!1328441 () Bool)

(assert (=> bs!283483 m!1328441))

(assert (=> b!1160726 d!331488))

(declare-fun d!331490 () Bool)

(declare-fun lt!395269 () Int)

(declare-fun size!8972 (List!11434) Int)

(declare-fun list!4202 (BalanceConc!7478) List!11434)

(assert (=> d!331490 (= lt!395269 (size!8972 (list!4202 (charsOf!1052 lt!394781))))))

(declare-fun size!8973 (Conc!3728) Int)

(assert (=> d!331490 (= lt!395269 (size!8973 (c!194229 (charsOf!1052 lt!394781))))))

(assert (=> d!331490 (= (size!8965 (charsOf!1052 lt!394781)) lt!395269)))

(declare-fun bs!283484 () Bool)

(assert (= bs!283484 d!331490))

(assert (=> bs!283484 m!1327549))

(declare-fun m!1328443 () Bool)

(assert (=> bs!283484 m!1328443))

(assert (=> bs!283484 m!1328443))

(declare-fun m!1328445 () Bool)

(assert (=> bs!283484 m!1328445))

(declare-fun m!1328447 () Bool)

(assert (=> bs!283484 m!1328447))

(assert (=> b!1160736 d!331490))

(declare-fun d!331492 () Bool)

(declare-fun lt!395272 () BalanceConc!7478)

(assert (=> d!331492 (= (list!4202 lt!395272) (originalCharacters!2537 lt!394781))))

(declare-fun dynLambda!5028 (Int TokenValue!2049) BalanceConc!7478)

(assert (=> d!331492 (= lt!395272 (dynLambda!5028 (toChars!2943 (transformation!1983 (rule!3404 lt!394781))) (value!64512 lt!394781)))))

(assert (=> d!331492 (= (charsOf!1052 lt!394781) lt!395272)))

(declare-fun b_lambda!34625 () Bool)

(assert (=> (not b_lambda!34625) (not d!331492)))

(declare-fun bs!283485 () Bool)

(assert (= bs!283485 d!331492))

(declare-fun m!1328449 () Bool)

(assert (=> bs!283485 m!1328449))

(declare-fun m!1328451 () Bool)

(assert (=> bs!283485 m!1328451))

(assert (=> b!1160736 d!331492))

(declare-fun d!331494 () Bool)

(declare-fun res!523472 () Bool)

(declare-fun e!743437 () Bool)

(assert (=> d!331494 (=> (not res!523472) (not e!743437))))

(assert (=> d!331494 (= res!523472 (not (isEmpty!6975 (rules!9480 thiss!10527))))))

(assert (=> d!331494 (= (inv!14996 thiss!10527) e!743437)))

(declare-fun b!1161202 () Bool)

(declare-fun res!523473 () Bool)

(assert (=> b!1161202 (=> (not res!523473) (not e!743437))))

(assert (=> b!1161202 (= res!523473 (rulesInvariant!1552 Lexer!1676 (rules!9480 thiss!10527)))))

(declare-fun b!1161203 () Bool)

(declare-fun res!523474 () Bool)

(assert (=> b!1161203 (=> (not res!523474) (not e!743437))))

(assert (=> b!1161203 (= res!523474 (rulesProduceEachTokenIndividually!717 Lexer!1676 (rules!9480 thiss!10527) (tokens!1584 thiss!10527)))))

(declare-fun b!1161204 () Bool)

(assert (=> b!1161204 (= e!743437 (separableTokens!120 Lexer!1676 (tokens!1584 thiss!10527) (rules!9480 thiss!10527)))))

(assert (= (and d!331494 res!523472) b!1161202))

(assert (= (and b!1161202 res!523473) b!1161203))

(assert (= (and b!1161203 res!523474) b!1161204))

(assert (=> d!331494 m!1327583))

(assert (=> b!1161202 m!1327555))

(assert (=> b!1161203 m!1327615))

(assert (=> b!1161204 m!1328393))

(assert (=> start!101602 d!331494))

(declare-fun bs!283492 () Bool)

(declare-fun d!331520 () Bool)

(assert (= bs!283492 (and d!331520 d!331394)))

(declare-fun lambda!47331 () Int)

(assert (=> bs!283492 (= lambda!47331 lambda!47314)))

(declare-fun bs!283493 () Bool)

(assert (= bs!283493 (and d!331520 b!1160988)))

(assert (=> bs!283493 (= lambda!47331 lambda!47320)))

(declare-fun bs!283494 () Bool)

(assert (= bs!283494 (and d!331520 d!331464)))

(assert (=> bs!283494 (= lambda!47331 lambda!47325)))

(declare-fun bs!283495 () Bool)

(assert (= bs!283495 (and d!331520 d!331372)))

(assert (=> bs!283495 (= lambda!47331 lambda!47312)))

(declare-fun bs!283496 () Bool)

(assert (= bs!283496 (and d!331520 b!1160732)))

(assert (=> bs!283496 (= lambda!47331 lambda!47301)))

(declare-fun bs!283497 () Bool)

(assert (= bs!283497 (and d!331520 d!331428)))

(assert (=> bs!283497 (= lambda!47331 lambda!47322)))

(declare-fun bs!283498 () Bool)

(assert (= bs!283498 (and d!331520 d!331426)))

(assert (=> bs!283498 (= lambda!47331 lambda!47321)))

(declare-fun bs!283499 () Bool)

(assert (= bs!283499 (and d!331520 d!331364)))

(assert (=> bs!283499 (= lambda!47331 lambda!47309)))

(declare-fun b!1161208 () Bool)

(declare-fun e!743441 () Bool)

(assert (=> b!1161208 (= e!743441 true)))

(declare-fun b!1161207 () Bool)

(declare-fun e!743440 () Bool)

(assert (=> b!1161207 (= e!743440 e!743441)))

(declare-fun b!1161206 () Bool)

(declare-fun e!743439 () Bool)

(assert (=> b!1161206 (= e!743439 e!743440)))

(assert (=> d!331520 e!743439))

(assert (= b!1161207 b!1161208))

(assert (= b!1161206 b!1161207))

(assert (= (and d!331520 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1161206))

(assert (=> b!1161208 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47331))))

(assert (=> b!1161208 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47331))))

(assert (=> d!331520 true))

(declare-fun e!743438 () Bool)

(assert (=> d!331520 e!743438))

(declare-fun res!523475 () Bool)

(assert (=> d!331520 (=> (not res!523475) (not e!743438))))

(declare-fun lt!395294 () Bool)

(assert (=> d!331520 (= res!523475 (= lt!395294 (forall!2971 (list!4198 lt!394775) lambda!47331)))))

(assert (=> d!331520 (= lt!395294 (forall!2970 lt!394775 lambda!47331))))

(assert (=> d!331520 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331520 (= (rulesProduceEachTokenIndividually!717 Lexer!1676 (rules!9480 thiss!10527) lt!394775) lt!395294)))

(declare-fun b!1161205 () Bool)

(assert (=> b!1161205 (= e!743438 (= lt!395294 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (list!4198 lt!394775))))))

(assert (= (and d!331520 res!523475) b!1161205))

(assert (=> d!331520 m!1327597))

(assert (=> d!331520 m!1327597))

(declare-fun m!1328523 () Bool)

(assert (=> d!331520 m!1328523))

(declare-fun m!1328525 () Bool)

(assert (=> d!331520 m!1328525))

(assert (=> d!331520 m!1327583))

(assert (=> b!1161205 m!1327597))

(assert (=> b!1161205 m!1327597))

(declare-fun m!1328527 () Bool)

(assert (=> b!1161205 m!1328527))

(assert (=> b!1160725 d!331520))

(assert (=> b!1160725 d!331432))

(declare-fun d!331522 () Bool)

(declare-fun lt!395295 () Bool)

(declare-fun e!743442 () Bool)

(assert (=> d!331522 (= lt!395295 e!743442)))

(declare-fun res!523478 () Bool)

(assert (=> d!331522 (=> (not res!523478) (not e!743442))))

(assert (=> d!331522 (= res!523478 (= (list!4198 (_1!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394771)))))) (list!4198 (singletonSeq!649 (h!16812 lt!394771)))))))

(declare-fun e!743443 () Bool)

(assert (=> d!331522 (= lt!395295 e!743443)))

(declare-fun res!523476 () Bool)

(assert (=> d!331522 (=> (not res!523476) (not e!743443))))

(declare-fun lt!395296 () tuple2!12002)

(assert (=> d!331522 (= res!523476 (= (size!8964 (_1!6848 lt!395296)) 1))))

(assert (=> d!331522 (= lt!395296 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394771)))))))

(assert (=> d!331522 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331522 (= (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394771)) lt!395295)))

(declare-fun b!1161209 () Bool)

(declare-fun res!523477 () Bool)

(assert (=> b!1161209 (=> (not res!523477) (not e!743443))))

(assert (=> b!1161209 (= res!523477 (= (apply!2429 (_1!6848 lt!395296) 0) (h!16812 lt!394771)))))

(declare-fun b!1161210 () Bool)

(assert (=> b!1161210 (= e!743443 (isEmpty!6977 (_2!6848 lt!395296)))))

(declare-fun b!1161211 () Bool)

(assert (=> b!1161211 (= e!743442 (isEmpty!6977 (_2!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394771)))))))))

(assert (= (and d!331522 res!523476) b!1161209))

(assert (= (and b!1161209 res!523477) b!1161210))

(assert (= (and d!331522 res!523478) b!1161211))

(declare-fun m!1328529 () Bool)

(assert (=> d!331522 m!1328529))

(declare-fun m!1328531 () Bool)

(assert (=> d!331522 m!1328531))

(declare-fun m!1328533 () Bool)

(assert (=> d!331522 m!1328533))

(declare-fun m!1328535 () Bool)

(assert (=> d!331522 m!1328535))

(assert (=> d!331522 m!1327583))

(declare-fun m!1328537 () Bool)

(assert (=> d!331522 m!1328537))

(assert (=> d!331522 m!1328533))

(assert (=> d!331522 m!1328529))

(assert (=> d!331522 m!1328533))

(declare-fun m!1328539 () Bool)

(assert (=> d!331522 m!1328539))

(declare-fun m!1328541 () Bool)

(assert (=> b!1161209 m!1328541))

(declare-fun m!1328543 () Bool)

(assert (=> b!1161210 m!1328543))

(assert (=> b!1161211 m!1328533))

(assert (=> b!1161211 m!1328533))

(assert (=> b!1161211 m!1328529))

(assert (=> b!1161211 m!1328529))

(assert (=> b!1161211 m!1328531))

(declare-fun m!1328545 () Bool)

(assert (=> b!1161211 m!1328545))

(assert (=> b!1160735 d!331522))

(declare-fun d!331524 () Bool)

(assert (=> d!331524 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!394788)))

(declare-fun lt!395299 () Unit!17407)

(declare-fun choose!7463 (LexerInterface!1678 List!11436 List!11435 Token!3628) Unit!17407)

(assert (=> d!331524 (= lt!395299 (choose!7463 Lexer!1676 (rules!9480 thiss!10527) lt!394783 lt!394788))))

(assert (=> d!331524 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331524 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!394783 lt!394788) lt!395299)))

(declare-fun bs!283501 () Bool)

(assert (= bs!283501 d!331524))

(assert (=> bs!283501 m!1327633))

(declare-fun m!1328559 () Bool)

(assert (=> bs!283501 m!1328559))

(assert (=> bs!283501 m!1327583))

(assert (=> b!1160724 d!331524))

(declare-fun d!331528 () Bool)

(assert (=> d!331528 (= (tail!1670 lt!394774) (t!109739 lt!394774))))

(assert (=> b!1160724 d!331528))

(declare-fun d!331530 () Bool)

(declare-fun prefixMatchZipperSequence!83 (Regex!3253 BalanceConc!7478) Bool)

(declare-fun rulesRegex!58 (LexerInterface!1678 List!11436) Regex!3253)

(declare-fun ++!2972 (BalanceConc!7478 BalanceConc!7478) BalanceConc!7478)

(declare-fun singletonSeq!651 (C!6824) BalanceConc!7478)

(declare-fun apply!2433 (BalanceConc!7478 Int) C!6824)

(assert (=> d!331530 (= (separableTokensPredicate!114 Lexer!1676 lt!394788 lt!394781 (rules!9480 thiss!10527)) (not (prefixMatchZipperSequence!83 (rulesRegex!58 Lexer!1676 (rules!9480 thiss!10527)) (++!2972 (charsOf!1052 lt!394788) (singletonSeq!651 (apply!2433 (charsOf!1052 lt!394781) 0))))))))

(declare-fun bs!283530 () Bool)

(assert (= bs!283530 d!331530))

(assert (=> bs!283530 m!1327549))

(declare-fun m!1328615 () Bool)

(assert (=> bs!283530 m!1328615))

(declare-fun m!1328617 () Bool)

(assert (=> bs!283530 m!1328617))

(declare-fun m!1328619 () Bool)

(assert (=> bs!283530 m!1328619))

(assert (=> bs!283530 m!1327549))

(declare-fun m!1328621 () Bool)

(assert (=> bs!283530 m!1328621))

(assert (=> bs!283530 m!1328615))

(declare-fun m!1328625 () Bool)

(assert (=> bs!283530 m!1328625))

(declare-fun m!1328629 () Bool)

(assert (=> bs!283530 m!1328629))

(assert (=> bs!283530 m!1328617))

(assert (=> bs!283530 m!1328621))

(assert (=> bs!283530 m!1328629))

(assert (=> bs!283530 m!1328625))

(assert (=> b!1160724 d!331530))

(declare-fun d!331556 () Bool)

(assert (=> d!331556 (= (tail!1670 (drop!465 lt!394783 1)) (drop!465 lt!394783 (+ 1 1)))))

(declare-fun lt!395315 () Unit!17407)

(declare-fun choose!7464 (List!11435 Int) Unit!17407)

(assert (=> d!331556 (= lt!395315 (choose!7464 lt!394783 1))))

(declare-fun e!743496 () Bool)

(assert (=> d!331556 e!743496))

(declare-fun res!523492 () Bool)

(assert (=> d!331556 (=> (not res!523492) (not e!743496))))

(assert (=> d!331556 (= res!523492 (>= 1 0))))

(assert (=> d!331556 (= (lemmaDropTail!343 lt!394783 1) lt!395315)))

(declare-fun b!1161277 () Bool)

(assert (=> b!1161277 (= e!743496 (< 1 (size!8967 lt!394783)))))

(assert (= (and d!331556 res!523492) b!1161277))

(assert (=> d!331556 m!1327649))

(assert (=> d!331556 m!1327649))

(declare-fun m!1328641 () Bool)

(assert (=> d!331556 m!1328641))

(declare-fun m!1328643 () Bool)

(assert (=> d!331556 m!1328643))

(declare-fun m!1328645 () Bool)

(assert (=> d!331556 m!1328645))

(assert (=> b!1161277 m!1327973))

(assert (=> b!1160724 d!331556))

(declare-fun d!331562 () Bool)

(assert (=> d!331562 (= (head!2086 lt!394774) (h!16812 lt!394774))))

(assert (=> b!1160724 d!331562))

(declare-fun d!331564 () Bool)

(declare-fun lt!395318 () Token!3628)

(declare-fun contains!1986 (List!11435 Token!3628) Bool)

(assert (=> d!331564 (contains!1986 lt!394783 lt!395318)))

(declare-fun e!743502 () Token!3628)

(assert (=> d!331564 (= lt!395318 e!743502)))

(declare-fun c!194281 () Bool)

(assert (=> d!331564 (= c!194281 (= 1 0))))

(declare-fun e!743501 () Bool)

(assert (=> d!331564 e!743501))

(declare-fun res!523495 () Bool)

(assert (=> d!331564 (=> (not res!523495) (not e!743501))))

(assert (=> d!331564 (= res!523495 (<= 0 1))))

(assert (=> d!331564 (= (apply!2430 lt!394783 1) lt!395318)))

(declare-fun b!1161284 () Bool)

(assert (=> b!1161284 (= e!743501 (< 1 (size!8967 lt!394783)))))

(declare-fun b!1161285 () Bool)

(assert (=> b!1161285 (= e!743502 (head!2086 lt!394783))))

(declare-fun b!1161286 () Bool)

(assert (=> b!1161286 (= e!743502 (apply!2430 (tail!1670 lt!394783) (- 1 1)))))

(assert (= (and d!331564 res!523495) b!1161284))

(assert (= (and d!331564 c!194281) b!1161285))

(assert (= (and d!331564 (not c!194281)) b!1161286))

(declare-fun m!1328647 () Bool)

(assert (=> d!331564 m!1328647))

(assert (=> b!1161284 m!1327973))

(declare-fun m!1328649 () Bool)

(assert (=> b!1161285 m!1328649))

(declare-fun m!1328651 () Bool)

(assert (=> b!1161286 m!1328651))

(assert (=> b!1161286 m!1328651))

(declare-fun m!1328653 () Bool)

(assert (=> b!1161286 m!1328653))

(assert (=> b!1160724 d!331564))

(declare-fun d!331566 () Bool)

(assert (=> d!331566 (= (head!2086 lt!394777) (h!16812 lt!394777))))

(assert (=> b!1160724 d!331566))

(declare-fun d!331568 () Bool)

(declare-fun lt!395319 () Bool)

(declare-fun e!743503 () Bool)

(assert (=> d!331568 (= lt!395319 e!743503)))

(declare-fun res!523498 () Bool)

(assert (=> d!331568 (=> (not res!523498) (not e!743503))))

(assert (=> d!331568 (= res!523498 (= (list!4198 (_1!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 lt!394788))))) (list!4198 (singletonSeq!649 lt!394788))))))

(declare-fun e!743504 () Bool)

(assert (=> d!331568 (= lt!395319 e!743504)))

(declare-fun res!523496 () Bool)

(assert (=> d!331568 (=> (not res!523496) (not e!743504))))

(declare-fun lt!395320 () tuple2!12002)

(assert (=> d!331568 (= res!523496 (= (size!8964 (_1!6848 lt!395320)) 1))))

(assert (=> d!331568 (= lt!395320 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 lt!394788))))))

(assert (=> d!331568 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331568 (= (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!394788) lt!395319)))

(declare-fun b!1161287 () Bool)

(declare-fun res!523497 () Bool)

(assert (=> b!1161287 (=> (not res!523497) (not e!743504))))

(assert (=> b!1161287 (= res!523497 (= (apply!2429 (_1!6848 lt!395320) 0) lt!394788))))

(declare-fun b!1161288 () Bool)

(assert (=> b!1161288 (= e!743504 (isEmpty!6977 (_2!6848 lt!395320)))))

(declare-fun b!1161289 () Bool)

(assert (=> b!1161289 (= e!743503 (isEmpty!6977 (_2!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 lt!394788))))))))

(assert (= (and d!331568 res!523496) b!1161287))

(assert (= (and b!1161287 res!523497) b!1161288))

(assert (= (and d!331568 res!523498) b!1161289))

(declare-fun m!1328655 () Bool)

(assert (=> d!331568 m!1328655))

(declare-fun m!1328657 () Bool)

(assert (=> d!331568 m!1328657))

(declare-fun m!1328659 () Bool)

(assert (=> d!331568 m!1328659))

(declare-fun m!1328661 () Bool)

(assert (=> d!331568 m!1328661))

(assert (=> d!331568 m!1327583))

(declare-fun m!1328663 () Bool)

(assert (=> d!331568 m!1328663))

(assert (=> d!331568 m!1328659))

(assert (=> d!331568 m!1328655))

(assert (=> d!331568 m!1328659))

(declare-fun m!1328665 () Bool)

(assert (=> d!331568 m!1328665))

(declare-fun m!1328667 () Bool)

(assert (=> b!1161287 m!1328667))

(declare-fun m!1328669 () Bool)

(assert (=> b!1161288 m!1328669))

(assert (=> b!1161289 m!1328659))

(assert (=> b!1161289 m!1328659))

(assert (=> b!1161289 m!1328655))

(assert (=> b!1161289 m!1328655))

(assert (=> b!1161289 m!1328657))

(declare-fun m!1328671 () Bool)

(assert (=> b!1161289 m!1328671))

(assert (=> b!1160724 d!331568))

(declare-fun d!331570 () Bool)

(declare-fun lt!395323 () Token!3628)

(assert (=> d!331570 (= lt!395323 (apply!2430 (list!4198 (tokens!1584 thiss!10527)) 1))))

(declare-fun apply!2434 (Conc!3729 Int) Token!3628)

(assert (=> d!331570 (= lt!395323 (apply!2434 (c!194230 (tokens!1584 thiss!10527)) 1))))

(declare-fun e!743507 () Bool)

(assert (=> d!331570 e!743507))

(declare-fun res!523501 () Bool)

(assert (=> d!331570 (=> (not res!523501) (not e!743507))))

(assert (=> d!331570 (= res!523501 (<= 0 1))))

(assert (=> d!331570 (= (apply!2429 (tokens!1584 thiss!10527) 1) lt!395323)))

(declare-fun b!1161292 () Bool)

(assert (=> b!1161292 (= e!743507 (< 1 (size!8964 (tokens!1584 thiss!10527))))))

(assert (= (and d!331570 res!523501) b!1161292))

(assert (=> d!331570 m!1327617))

(assert (=> d!331570 m!1327617))

(declare-fun m!1328673 () Bool)

(assert (=> d!331570 m!1328673))

(declare-fun m!1328675 () Bool)

(assert (=> d!331570 m!1328675))

(assert (=> b!1161292 m!1327613))

(assert (=> b!1160724 d!331570))

(declare-fun d!331572 () Bool)

(assert (=> d!331572 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!394781)))

(declare-fun lt!395324 () Unit!17407)

(assert (=> d!331572 (= lt!395324 (choose!7463 Lexer!1676 (rules!9480 thiss!10527) lt!394783 lt!394781))))

(assert (=> d!331572 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331572 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!394783 lt!394781) lt!395324)))

(declare-fun bs!283533 () Bool)

(assert (= bs!283533 d!331572))

(assert (=> bs!283533 m!1327645))

(declare-fun m!1328677 () Bool)

(assert (=> bs!283533 m!1328677))

(assert (=> bs!283533 m!1327583))

(assert (=> b!1160724 d!331572))

(declare-fun b!1161293 () Bool)

(declare-fun e!743508 () Int)

(declare-fun call!82116 () Int)

(assert (=> b!1161293 (= e!743508 call!82116)))

(declare-fun b!1161294 () Bool)

(declare-fun e!743509 () Int)

(assert (=> b!1161294 (= e!743508 e!743509)))

(declare-fun c!194283 () Bool)

(assert (=> b!1161294 (= c!194283 (>= 0 call!82116))))

(declare-fun b!1161295 () Bool)

(assert (=> b!1161295 (= e!743509 0)))

(declare-fun b!1161296 () Bool)

(declare-fun e!743511 () List!11435)

(declare-fun e!743512 () List!11435)

(assert (=> b!1161296 (= e!743511 e!743512)))

(declare-fun c!194282 () Bool)

(assert (=> b!1161296 (= c!194282 (<= 0 0))))

(declare-fun b!1161297 () Bool)

(declare-fun e!743510 () Bool)

(declare-fun lt!395325 () List!11435)

(assert (=> b!1161297 (= e!743510 (= (size!8967 lt!395325) e!743508))))

(declare-fun c!194285 () Bool)

(assert (=> b!1161297 (= c!194285 (<= 0 0))))

(declare-fun b!1161298 () Bool)

(assert (=> b!1161298 (= e!743512 (drop!465 (t!109739 lt!394783) (- 0 1)))))

(declare-fun d!331574 () Bool)

(assert (=> d!331574 e!743510))

(declare-fun res!523502 () Bool)

(assert (=> d!331574 (=> (not res!523502) (not e!743510))))

(assert (=> d!331574 (= res!523502 (= ((_ map implies) (content!1600 lt!395325) (content!1600 lt!394783)) ((as const (InoxSet Token!3628)) true)))))

(assert (=> d!331574 (= lt!395325 e!743511)))

(declare-fun c!194284 () Bool)

(assert (=> d!331574 (= c!194284 ((_ is Nil!11411) lt!394783))))

(assert (=> d!331574 (= (drop!465 lt!394783 0) lt!395325)))

(declare-fun b!1161299 () Bool)

(assert (=> b!1161299 (= e!743511 Nil!11411)))

(declare-fun b!1161300 () Bool)

(assert (=> b!1161300 (= e!743509 (- call!82116 0))))

(declare-fun bm!82111 () Bool)

(assert (=> bm!82111 (= call!82116 (size!8967 lt!394783))))

(declare-fun b!1161301 () Bool)

(assert (=> b!1161301 (= e!743512 lt!394783)))

(assert (= (and d!331574 c!194284) b!1161299))

(assert (= (and d!331574 (not c!194284)) b!1161296))

(assert (= (and b!1161296 c!194282) b!1161301))

(assert (= (and b!1161296 (not c!194282)) b!1161298))

(assert (= (and d!331574 res!523502) b!1161297))

(assert (= (and b!1161297 c!194285) b!1161293))

(assert (= (and b!1161297 (not c!194285)) b!1161294))

(assert (= (and b!1161294 c!194283) b!1161295))

(assert (= (and b!1161294 (not c!194283)) b!1161300))

(assert (= (or b!1161293 b!1161294 b!1161300) bm!82111))

(declare-fun m!1328679 () Bool)

(assert (=> b!1161297 m!1328679))

(declare-fun m!1328681 () Bool)

(assert (=> b!1161298 m!1328681))

(declare-fun m!1328683 () Bool)

(assert (=> d!331574 m!1328683))

(assert (=> d!331574 m!1327971))

(assert (=> bm!82111 m!1327973))

(assert (=> b!1160724 d!331574))

(declare-fun d!331576 () Bool)

(declare-fun lt!395326 () Token!3628)

(assert (=> d!331576 (contains!1986 lt!394783 lt!395326)))

(declare-fun e!743514 () Token!3628)

(assert (=> d!331576 (= lt!395326 e!743514)))

(declare-fun c!194286 () Bool)

(assert (=> d!331576 (= c!194286 (= 0 0))))

(declare-fun e!743513 () Bool)

(assert (=> d!331576 e!743513))

(declare-fun res!523503 () Bool)

(assert (=> d!331576 (=> (not res!523503) (not e!743513))))

(assert (=> d!331576 (= res!523503 (<= 0 0))))

(assert (=> d!331576 (= (apply!2430 lt!394783 0) lt!395326)))

(declare-fun b!1161302 () Bool)

(assert (=> b!1161302 (= e!743513 (< 0 (size!8967 lt!394783)))))

(declare-fun b!1161303 () Bool)

(assert (=> b!1161303 (= e!743514 (head!2086 lt!394783))))

(declare-fun b!1161304 () Bool)

(assert (=> b!1161304 (= e!743514 (apply!2430 (tail!1670 lt!394783) (- 0 1)))))

(assert (= (and d!331576 res!523503) b!1161302))

(assert (= (and d!331576 c!194286) b!1161303))

(assert (= (and d!331576 (not c!194286)) b!1161304))

(declare-fun m!1328685 () Bool)

(assert (=> d!331576 m!1328685))

(assert (=> b!1161302 m!1327973))

(assert (=> b!1161303 m!1328649))

(assert (=> b!1161304 m!1328651))

(assert (=> b!1161304 m!1328651))

(declare-fun m!1328687 () Bool)

(assert (=> b!1161304 m!1328687))

(assert (=> b!1160724 d!331576))

(declare-fun d!331578 () Bool)

(declare-fun lt!395327 () Token!3628)

(assert (=> d!331578 (= lt!395327 (apply!2430 (list!4198 (tokens!1584 thiss!10527)) 0))))

(assert (=> d!331578 (= lt!395327 (apply!2434 (c!194230 (tokens!1584 thiss!10527)) 0))))

(declare-fun e!743515 () Bool)

(assert (=> d!331578 e!743515))

(declare-fun res!523504 () Bool)

(assert (=> d!331578 (=> (not res!523504) (not e!743515))))

(assert (=> d!331578 (= res!523504 (<= 0 0))))

(assert (=> d!331578 (= (apply!2429 (tokens!1584 thiss!10527) 0) lt!395327)))

(declare-fun b!1161305 () Bool)

(assert (=> b!1161305 (= e!743515 (< 0 (size!8964 (tokens!1584 thiss!10527))))))

(assert (= (and d!331578 res!523504) b!1161305))

(assert (=> d!331578 m!1327617))

(assert (=> d!331578 m!1327617))

(declare-fun m!1328689 () Bool)

(assert (=> d!331578 m!1328689))

(declare-fun m!1328691 () Bool)

(assert (=> d!331578 m!1328691))

(assert (=> b!1161305 m!1327613))

(assert (=> b!1160724 d!331578))

(declare-fun d!331580 () Bool)

(assert (=> d!331580 (= (tail!1670 (drop!465 lt!394783 0)) (drop!465 lt!394783 (+ 0 1)))))

(declare-fun lt!395328 () Unit!17407)

(assert (=> d!331580 (= lt!395328 (choose!7464 lt!394783 0))))

(declare-fun e!743516 () Bool)

(assert (=> d!331580 e!743516))

(declare-fun res!523505 () Bool)

(assert (=> d!331580 (=> (not res!523505) (not e!743516))))

(assert (=> d!331580 (= res!523505 (>= 0 0))))

(assert (=> d!331580 (= (lemmaDropTail!343 lt!394783 0) lt!395328)))

(declare-fun b!1161306 () Bool)

(assert (=> b!1161306 (= e!743516 (< 0 (size!8967 lt!394783)))))

(assert (= (and d!331580 res!523505) b!1161306))

(assert (=> d!331580 m!1327631))

(assert (=> d!331580 m!1327631))

(declare-fun m!1328693 () Bool)

(assert (=> d!331580 m!1328693))

(declare-fun m!1328695 () Bool)

(assert (=> d!331580 m!1328695))

(declare-fun m!1328697 () Bool)

(assert (=> d!331580 m!1328697))

(assert (=> b!1161306 m!1327973))

(assert (=> b!1160724 d!331580))

(declare-fun d!331582 () Bool)

(assert (=> d!331582 (= (head!2086 (drop!465 lt!394783 1)) (apply!2430 lt!394783 1))))

(declare-fun lt!395331 () Unit!17407)

(declare-fun choose!7465 (List!11435 Int) Unit!17407)

(assert (=> d!331582 (= lt!395331 (choose!7465 lt!394783 1))))

(declare-fun e!743519 () Bool)

(assert (=> d!331582 e!743519))

(declare-fun res!523508 () Bool)

(assert (=> d!331582 (=> (not res!523508) (not e!743519))))

(assert (=> d!331582 (= res!523508 (>= 1 0))))

(assert (=> d!331582 (= (lemmaDropApply!355 lt!394783 1) lt!395331)))

(declare-fun b!1161309 () Bool)

(assert (=> b!1161309 (= e!743519 (< 1 (size!8967 lt!394783)))))

(assert (= (and d!331582 res!523508) b!1161309))

(assert (=> d!331582 m!1327649))

(assert (=> d!331582 m!1327649))

(declare-fun m!1328699 () Bool)

(assert (=> d!331582 m!1328699))

(assert (=> d!331582 m!1327655))

(declare-fun m!1328701 () Bool)

(assert (=> d!331582 m!1328701))

(assert (=> b!1161309 m!1327973))

(assert (=> b!1160724 d!331582))

(declare-fun b!1161310 () Bool)

(declare-fun e!743520 () Int)

(declare-fun call!82117 () Int)

(assert (=> b!1161310 (= e!743520 call!82117)))

(declare-fun b!1161311 () Bool)

(declare-fun e!743521 () Int)

(assert (=> b!1161311 (= e!743520 e!743521)))

(declare-fun c!194288 () Bool)

(assert (=> b!1161311 (= c!194288 (>= 1 call!82117))))

(declare-fun b!1161312 () Bool)

(assert (=> b!1161312 (= e!743521 0)))

(declare-fun b!1161313 () Bool)

(declare-fun e!743523 () List!11435)

(declare-fun e!743524 () List!11435)

(assert (=> b!1161313 (= e!743523 e!743524)))

(declare-fun c!194287 () Bool)

(assert (=> b!1161313 (= c!194287 (<= 1 0))))

(declare-fun b!1161314 () Bool)

(declare-fun e!743522 () Bool)

(declare-fun lt!395332 () List!11435)

(assert (=> b!1161314 (= e!743522 (= (size!8967 lt!395332) e!743520))))

(declare-fun c!194290 () Bool)

(assert (=> b!1161314 (= c!194290 (<= 1 0))))

(declare-fun b!1161315 () Bool)

(assert (=> b!1161315 (= e!743524 (drop!465 (t!109739 lt!394783) (- 1 1)))))

(declare-fun d!331584 () Bool)

(assert (=> d!331584 e!743522))

(declare-fun res!523509 () Bool)

(assert (=> d!331584 (=> (not res!523509) (not e!743522))))

(assert (=> d!331584 (= res!523509 (= ((_ map implies) (content!1600 lt!395332) (content!1600 lt!394783)) ((as const (InoxSet Token!3628)) true)))))

(assert (=> d!331584 (= lt!395332 e!743523)))

(declare-fun c!194289 () Bool)

(assert (=> d!331584 (= c!194289 ((_ is Nil!11411) lt!394783))))

(assert (=> d!331584 (= (drop!465 lt!394783 1) lt!395332)))

(declare-fun b!1161316 () Bool)

(assert (=> b!1161316 (= e!743523 Nil!11411)))

(declare-fun b!1161317 () Bool)

(assert (=> b!1161317 (= e!743521 (- call!82117 1))))

(declare-fun bm!82112 () Bool)

(assert (=> bm!82112 (= call!82117 (size!8967 lt!394783))))

(declare-fun b!1161318 () Bool)

(assert (=> b!1161318 (= e!743524 lt!394783)))

(assert (= (and d!331584 c!194289) b!1161316))

(assert (= (and d!331584 (not c!194289)) b!1161313))

(assert (= (and b!1161313 c!194287) b!1161318))

(assert (= (and b!1161313 (not c!194287)) b!1161315))

(assert (= (and d!331584 res!523509) b!1161314))

(assert (= (and b!1161314 c!194290) b!1161310))

(assert (= (and b!1161314 (not c!194290)) b!1161311))

(assert (= (and b!1161311 c!194288) b!1161312))

(assert (= (and b!1161311 (not c!194288)) b!1161317))

(assert (= (or b!1161310 b!1161311 b!1161317) bm!82112))

(declare-fun m!1328703 () Bool)

(assert (=> b!1161314 m!1328703))

(declare-fun m!1328705 () Bool)

(assert (=> b!1161315 m!1328705))

(declare-fun m!1328707 () Bool)

(assert (=> d!331584 m!1328707))

(assert (=> d!331584 m!1327971))

(assert (=> bm!82112 m!1327973))

(assert (=> b!1160724 d!331584))

(declare-fun d!331586 () Bool)

(assert (=> d!331586 (= (tail!1670 lt!394777) (t!109739 lt!394777))))

(assert (=> b!1160724 d!331586))

(declare-fun d!331588 () Bool)

(declare-fun lt!395333 () Bool)

(declare-fun e!743525 () Bool)

(assert (=> d!331588 (= lt!395333 e!743525)))

(declare-fun res!523512 () Bool)

(assert (=> d!331588 (=> (not res!523512) (not e!743525))))

(assert (=> d!331588 (= res!523512 (= (list!4198 (_1!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 lt!394781))))) (list!4198 (singletonSeq!649 lt!394781))))))

(declare-fun e!743526 () Bool)

(assert (=> d!331588 (= lt!395333 e!743526)))

(declare-fun res!523510 () Bool)

(assert (=> d!331588 (=> (not res!523510) (not e!743526))))

(declare-fun lt!395334 () tuple2!12002)

(assert (=> d!331588 (= res!523510 (= (size!8964 (_1!6848 lt!395334)) 1))))

(assert (=> d!331588 (= lt!395334 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 lt!394781))))))

(assert (=> d!331588 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331588 (= (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) lt!394781) lt!395333)))

(declare-fun b!1161319 () Bool)

(declare-fun res!523511 () Bool)

(assert (=> b!1161319 (=> (not res!523511) (not e!743526))))

(assert (=> b!1161319 (= res!523511 (= (apply!2429 (_1!6848 lt!395334) 0) lt!394781))))

(declare-fun b!1161320 () Bool)

(assert (=> b!1161320 (= e!743526 (isEmpty!6977 (_2!6848 lt!395334)))))

(declare-fun b!1161321 () Bool)

(assert (=> b!1161321 (= e!743525 (isEmpty!6977 (_2!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 lt!394781))))))))

(assert (= (and d!331588 res!523510) b!1161319))

(assert (= (and b!1161319 res!523511) b!1161320))

(assert (= (and d!331588 res!523512) b!1161321))

(declare-fun m!1328709 () Bool)

(assert (=> d!331588 m!1328709))

(declare-fun m!1328711 () Bool)

(assert (=> d!331588 m!1328711))

(declare-fun m!1328713 () Bool)

(assert (=> d!331588 m!1328713))

(declare-fun m!1328715 () Bool)

(assert (=> d!331588 m!1328715))

(assert (=> d!331588 m!1327583))

(declare-fun m!1328717 () Bool)

(assert (=> d!331588 m!1328717))

(assert (=> d!331588 m!1328713))

(assert (=> d!331588 m!1328709))

(assert (=> d!331588 m!1328713))

(declare-fun m!1328719 () Bool)

(assert (=> d!331588 m!1328719))

(declare-fun m!1328721 () Bool)

(assert (=> b!1161319 m!1328721))

(declare-fun m!1328723 () Bool)

(assert (=> b!1161320 m!1328723))

(assert (=> b!1161321 m!1328713))

(assert (=> b!1161321 m!1328713))

(assert (=> b!1161321 m!1328709))

(assert (=> b!1161321 m!1328709))

(assert (=> b!1161321 m!1328711))

(declare-fun m!1328725 () Bool)

(assert (=> b!1161321 m!1328725))

(assert (=> b!1160724 d!331588))

(declare-fun b!1161322 () Bool)

(declare-fun e!743527 () Int)

(declare-fun call!82118 () Int)

(assert (=> b!1161322 (= e!743527 call!82118)))

(declare-fun b!1161323 () Bool)

(declare-fun e!743528 () Int)

(assert (=> b!1161323 (= e!743527 e!743528)))

(declare-fun c!194292 () Bool)

(assert (=> b!1161323 (= c!194292 (>= 2 call!82118))))

(declare-fun b!1161324 () Bool)

(assert (=> b!1161324 (= e!743528 0)))

(declare-fun b!1161325 () Bool)

(declare-fun e!743530 () List!11435)

(declare-fun e!743531 () List!11435)

(assert (=> b!1161325 (= e!743530 e!743531)))

(declare-fun c!194291 () Bool)

(assert (=> b!1161325 (= c!194291 (<= 2 0))))

(declare-fun b!1161326 () Bool)

(declare-fun e!743529 () Bool)

(declare-fun lt!395335 () List!11435)

(assert (=> b!1161326 (= e!743529 (= (size!8967 lt!395335) e!743527))))

(declare-fun c!194294 () Bool)

(assert (=> b!1161326 (= c!194294 (<= 2 0))))

(declare-fun b!1161327 () Bool)

(assert (=> b!1161327 (= e!743531 (drop!465 (t!109739 lt!394783) (- 2 1)))))

(declare-fun d!331590 () Bool)

(assert (=> d!331590 e!743529))

(declare-fun res!523513 () Bool)

(assert (=> d!331590 (=> (not res!523513) (not e!743529))))

(assert (=> d!331590 (= res!523513 (= ((_ map implies) (content!1600 lt!395335) (content!1600 lt!394783)) ((as const (InoxSet Token!3628)) true)))))

(assert (=> d!331590 (= lt!395335 e!743530)))

(declare-fun c!194293 () Bool)

(assert (=> d!331590 (= c!194293 ((_ is Nil!11411) lt!394783))))

(assert (=> d!331590 (= (drop!465 lt!394783 2) lt!395335)))

(declare-fun b!1161328 () Bool)

(assert (=> b!1161328 (= e!743530 Nil!11411)))

(declare-fun b!1161329 () Bool)

(assert (=> b!1161329 (= e!743528 (- call!82118 2))))

(declare-fun bm!82113 () Bool)

(assert (=> bm!82113 (= call!82118 (size!8967 lt!394783))))

(declare-fun b!1161330 () Bool)

(assert (=> b!1161330 (= e!743531 lt!394783)))

(assert (= (and d!331590 c!194293) b!1161328))

(assert (= (and d!331590 (not c!194293)) b!1161325))

(assert (= (and b!1161325 c!194291) b!1161330))

(assert (= (and b!1161325 (not c!194291)) b!1161327))

(assert (= (and d!331590 res!523513) b!1161326))

(assert (= (and b!1161326 c!194294) b!1161322))

(assert (= (and b!1161326 (not c!194294)) b!1161323))

(assert (= (and b!1161323 c!194292) b!1161324))

(assert (= (and b!1161323 (not c!194292)) b!1161329))

(assert (= (or b!1161322 b!1161323 b!1161329) bm!82113))

(declare-fun m!1328727 () Bool)

(assert (=> b!1161326 m!1328727))

(declare-fun m!1328729 () Bool)

(assert (=> b!1161327 m!1328729))

(declare-fun m!1328731 () Bool)

(assert (=> d!331590 m!1328731))

(assert (=> d!331590 m!1327971))

(assert (=> bm!82113 m!1327973))

(assert (=> b!1160724 d!331590))

(declare-fun d!331592 () Bool)

(assert (=> d!331592 (= (head!2086 (drop!465 lt!394783 0)) (apply!2430 lt!394783 0))))

(declare-fun lt!395336 () Unit!17407)

(assert (=> d!331592 (= lt!395336 (choose!7465 lt!394783 0))))

(declare-fun e!743532 () Bool)

(assert (=> d!331592 e!743532))

(declare-fun res!523514 () Bool)

(assert (=> d!331592 (=> (not res!523514) (not e!743532))))

(assert (=> d!331592 (= res!523514 (>= 0 0))))

(assert (=> d!331592 (= (lemmaDropApply!355 lt!394783 0) lt!395336)))

(declare-fun b!1161331 () Bool)

(assert (=> b!1161331 (= e!743532 (< 0 (size!8967 lt!394783)))))

(assert (= (and d!331592 res!523514) b!1161331))

(assert (=> d!331592 m!1327631))

(assert (=> d!331592 m!1327631))

(declare-fun m!1328733 () Bool)

(assert (=> d!331592 m!1328733))

(assert (=> d!331592 m!1327643))

(declare-fun m!1328735 () Bool)

(assert (=> d!331592 m!1328735))

(assert (=> b!1161331 m!1327973))

(assert (=> b!1160724 d!331592))

(declare-fun bs!283534 () Bool)

(declare-fun d!331594 () Bool)

(assert (= bs!283534 (and d!331594 d!331394)))

(declare-fun lambda!47335 () Int)

(assert (=> bs!283534 (= lambda!47335 lambda!47314)))

(declare-fun bs!283535 () Bool)

(assert (= bs!283535 (and d!331594 b!1160988)))

(assert (=> bs!283535 (= lambda!47335 lambda!47320)))

(declare-fun bs!283536 () Bool)

(assert (= bs!283536 (and d!331594 d!331520)))

(assert (=> bs!283536 (= lambda!47335 lambda!47331)))

(declare-fun bs!283537 () Bool)

(assert (= bs!283537 (and d!331594 d!331464)))

(assert (=> bs!283537 (= lambda!47335 lambda!47325)))

(declare-fun bs!283538 () Bool)

(assert (= bs!283538 (and d!331594 d!331372)))

(assert (=> bs!283538 (= lambda!47335 lambda!47312)))

(declare-fun bs!283539 () Bool)

(assert (= bs!283539 (and d!331594 b!1160732)))

(assert (=> bs!283539 (= lambda!47335 lambda!47301)))

(declare-fun bs!283540 () Bool)

(assert (= bs!283540 (and d!331594 d!331428)))

(assert (=> bs!283540 (= lambda!47335 lambda!47322)))

(declare-fun bs!283541 () Bool)

(assert (= bs!283541 (and d!331594 d!331426)))

(assert (=> bs!283541 (= lambda!47335 lambda!47321)))

(declare-fun bs!283542 () Bool)

(assert (= bs!283542 (and d!331594 d!331364)))

(assert (=> bs!283542 (= lambda!47335 lambda!47309)))

(declare-fun b!1161336 () Bool)

(declare-fun e!743537 () Bool)

(assert (=> b!1161336 (= e!743537 true)))

(declare-fun b!1161335 () Bool)

(declare-fun e!743536 () Bool)

(assert (=> b!1161335 (= e!743536 e!743537)))

(declare-fun b!1161334 () Bool)

(declare-fun e!743535 () Bool)

(assert (=> b!1161334 (= e!743535 e!743536)))

(assert (=> d!331594 e!743535))

(assert (= b!1161335 b!1161336))

(assert (= b!1161334 b!1161335))

(assert (= (and d!331594 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1161334))

(assert (=> b!1161336 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47335))))

(assert (=> b!1161336 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47335))))

(assert (=> d!331594 true))

(declare-fun lt!395337 () Bool)

(assert (=> d!331594 (= lt!395337 (forall!2971 lt!394772 lambda!47335))))

(declare-fun e!743534 () Bool)

(assert (=> d!331594 (= lt!395337 e!743534)))

(declare-fun res!523516 () Bool)

(assert (=> d!331594 (=> res!523516 e!743534)))

(assert (=> d!331594 (= res!523516 (not ((_ is Cons!11411) lt!394772)))))

(assert (=> d!331594 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331594 (= (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) lt!394772) lt!395337)))

(declare-fun b!1161332 () Bool)

(declare-fun e!743533 () Bool)

(assert (=> b!1161332 (= e!743534 e!743533)))

(declare-fun res!523515 () Bool)

(assert (=> b!1161332 (=> (not res!523515) (not e!743533))))

(assert (=> b!1161332 (= res!523515 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394772)))))

(declare-fun b!1161333 () Bool)

(assert (=> b!1161333 (= e!743533 (rulesProduceEachTokenIndividuallyList!546 Lexer!1676 (rules!9480 thiss!10527) (t!109739 lt!394772)))))

(assert (= (and d!331594 (not res!523516)) b!1161332))

(assert (= (and b!1161332 res!523515) b!1161333))

(declare-fun m!1328737 () Bool)

(assert (=> d!331594 m!1328737))

(assert (=> d!331594 m!1327583))

(assert (=> b!1161332 m!1327569))

(assert (=> b!1161333 m!1327561))

(assert (=> b!1160734 d!331594))

(declare-fun d!331596 () Bool)

(declare-fun res!523521 () Bool)

(declare-fun e!743543 () Bool)

(assert (=> d!331596 (=> res!523521 e!743543)))

(assert (=> d!331596 (= res!523521 (or (not ((_ is Cons!11411) lt!394771)) (not ((_ is Cons!11411) (t!109739 lt!394771)))))))

(assert (=> d!331596 (= (tokensListTwoByTwoPredicateSeparableList!90 Lexer!1676 lt!394771 (rules!9480 thiss!10527)) e!743543)))

(declare-fun b!1161341 () Bool)

(declare-fun e!743542 () Bool)

(assert (=> b!1161341 (= e!743543 e!743542)))

(declare-fun res!523522 () Bool)

(assert (=> b!1161341 (=> (not res!523522) (not e!743542))))

(assert (=> b!1161341 (= res!523522 (separableTokensPredicate!114 Lexer!1676 (h!16812 lt!394771) (h!16812 (t!109739 lt!394771)) (rules!9480 thiss!10527)))))

(declare-fun lt!395354 () Unit!17407)

(declare-fun Unit!17432 () Unit!17407)

(assert (=> b!1161341 (= lt!395354 Unit!17432)))

(assert (=> b!1161341 (> (size!8965 (charsOf!1052 (h!16812 (t!109739 lt!394771)))) 0)))

(declare-fun lt!395357 () Unit!17407)

(declare-fun Unit!17433 () Unit!17407)

(assert (=> b!1161341 (= lt!395357 Unit!17433)))

(assert (=> b!1161341 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 (t!109739 lt!394771)))))

(declare-fun lt!395356 () Unit!17407)

(declare-fun Unit!17434 () Unit!17407)

(assert (=> b!1161341 (= lt!395356 Unit!17434)))

(assert (=> b!1161341 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394771))))

(declare-fun lt!395355 () Unit!17407)

(declare-fun lt!395353 () Unit!17407)

(assert (=> b!1161341 (= lt!395355 lt!395353)))

(assert (=> b!1161341 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 (t!109739 lt!394771)))))

(assert (=> b!1161341 (= lt!395353 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!394771 (h!16812 (t!109739 lt!394771))))))

(declare-fun lt!395352 () Unit!17407)

(declare-fun lt!395358 () Unit!17407)

(assert (=> b!1161341 (= lt!395352 lt!395358)))

(assert (=> b!1161341 (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394771))))

(assert (=> b!1161341 (= lt!395358 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!273 Lexer!1676 (rules!9480 thiss!10527) lt!394771 (h!16812 lt!394771)))))

(declare-fun b!1161342 () Bool)

(assert (=> b!1161342 (= e!743542 (tokensListTwoByTwoPredicateSeparableList!90 Lexer!1676 (Cons!11411 (h!16812 (t!109739 lt!394771)) (t!109739 (t!109739 lt!394771))) (rules!9480 thiss!10527)))))

(assert (= (and d!331596 (not res!523521)) b!1161341))

(assert (= (and b!1161341 res!523522) b!1161342))

(declare-fun m!1328739 () Bool)

(assert (=> b!1161341 m!1328739))

(declare-fun m!1328741 () Bool)

(assert (=> b!1161341 m!1328741))

(declare-fun m!1328743 () Bool)

(assert (=> b!1161341 m!1328743))

(assert (=> b!1161341 m!1328401))

(assert (=> b!1161341 m!1328741))

(declare-fun m!1328745 () Bool)

(assert (=> b!1161341 m!1328745))

(declare-fun m!1328747 () Bool)

(assert (=> b!1161341 m!1328747))

(assert (=> b!1161341 m!1327669))

(declare-fun m!1328749 () Bool)

(assert (=> b!1161342 m!1328749))

(assert (=> b!1160723 d!331596))

(declare-fun d!331598 () Bool)

(declare-fun lt!395359 () Bool)

(declare-fun e!743544 () Bool)

(assert (=> d!331598 (= lt!395359 e!743544)))

(declare-fun res!523525 () Bool)

(assert (=> d!331598 (=> (not res!523525) (not e!743544))))

(assert (=> d!331598 (= res!523525 (= (list!4198 (_1!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394783)))))) (list!4198 (singletonSeq!649 (h!16812 lt!394783)))))))

(declare-fun e!743545 () Bool)

(assert (=> d!331598 (= lt!395359 e!743545)))

(declare-fun res!523523 () Bool)

(assert (=> d!331598 (=> (not res!523523) (not e!743545))))

(declare-fun lt!395360 () tuple2!12002)

(assert (=> d!331598 (= res!523523 (= (size!8964 (_1!6848 lt!395360)) 1))))

(assert (=> d!331598 (= lt!395360 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394783)))))))

(assert (=> d!331598 (not (isEmpty!6975 (rules!9480 thiss!10527)))))

(assert (=> d!331598 (= (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394783)) lt!395359)))

(declare-fun b!1161343 () Bool)

(declare-fun res!523524 () Bool)

(assert (=> b!1161343 (=> (not res!523524) (not e!743545))))

(assert (=> b!1161343 (= res!523524 (= (apply!2429 (_1!6848 lt!395360) 0) (h!16812 lt!394783)))))

(declare-fun b!1161344 () Bool)

(assert (=> b!1161344 (= e!743545 (isEmpty!6977 (_2!6848 lt!395360)))))

(declare-fun b!1161345 () Bool)

(assert (=> b!1161345 (= e!743544 (isEmpty!6977 (_2!6848 (lex!694 Lexer!1676 (rules!9480 thiss!10527) (print!631 Lexer!1676 (singletonSeq!649 (h!16812 lt!394783)))))))))

(assert (= (and d!331598 res!523523) b!1161343))

(assert (= (and b!1161343 res!523524) b!1161344))

(assert (= (and d!331598 res!523525) b!1161345))

(declare-fun m!1328751 () Bool)

(assert (=> d!331598 m!1328751))

(declare-fun m!1328753 () Bool)

(assert (=> d!331598 m!1328753))

(declare-fun m!1328755 () Bool)

(assert (=> d!331598 m!1328755))

(declare-fun m!1328757 () Bool)

(assert (=> d!331598 m!1328757))

(assert (=> d!331598 m!1327583))

(declare-fun m!1328759 () Bool)

(assert (=> d!331598 m!1328759))

(assert (=> d!331598 m!1328755))

(assert (=> d!331598 m!1328751))

(assert (=> d!331598 m!1328755))

(declare-fun m!1328761 () Bool)

(assert (=> d!331598 m!1328761))

(declare-fun m!1328763 () Bool)

(assert (=> b!1161343 m!1328763))

(declare-fun m!1328765 () Bool)

(assert (=> b!1161344 m!1328765))

(assert (=> b!1161345 m!1328755))

(assert (=> b!1161345 m!1328755))

(assert (=> b!1161345 m!1328751))

(assert (=> b!1161345 m!1328751))

(assert (=> b!1161345 m!1328753))

(declare-fun m!1328767 () Bool)

(assert (=> b!1161345 m!1328767))

(assert (=> b!1160733 d!331598))

(declare-fun b!1161348 () Bool)

(declare-fun e!743548 () Bool)

(assert (=> b!1161348 (= e!743548 true)))

(declare-fun b!1161347 () Bool)

(declare-fun e!743547 () Bool)

(assert (=> b!1161347 (= e!743547 e!743548)))

(declare-fun b!1161346 () Bool)

(declare-fun e!743546 () Bool)

(assert (=> b!1161346 (= e!743546 e!743547)))

(assert (=> b!1160749 e!743546))

(assert (= b!1161347 b!1161348))

(assert (= b!1161346 b!1161347))

(assert (= (and b!1160749 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1161346))

(assert (=> b!1161348 (< (dynLambda!5023 order!6981 (toValue!3084 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47301))))

(assert (=> b!1161348 (< (dynLambda!5025 order!6985 (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527))))) (dynLambda!5024 order!6983 lambda!47301))))

(declare-fun tp!333794 () Bool)

(declare-fun tp!333795 () Bool)

(declare-fun b!1161357 () Bool)

(declare-fun e!743554 () Bool)

(assert (=> b!1161357 (= e!743554 (and (inv!14997 (left!9970 (c!194230 (tokens!1584 thiss!10527)))) tp!333795 (inv!14997 (right!10300 (c!194230 (tokens!1584 thiss!10527)))) tp!333794))))

(declare-fun b!1161359 () Bool)

(declare-fun e!743553 () Bool)

(declare-fun tp!333793 () Bool)

(assert (=> b!1161359 (= e!743553 tp!333793)))

(declare-fun b!1161358 () Bool)

(declare-fun inv!15006 (IArray!7463) Bool)

(assert (=> b!1161358 (= e!743554 (and (inv!15006 (xs!6434 (c!194230 (tokens!1584 thiss!10527)))) e!743553))))

(assert (=> b!1160738 (= tp!333761 (and (inv!14997 (c!194230 (tokens!1584 thiss!10527))) e!743554))))

(assert (= (and b!1160738 ((_ is Node!3729) (c!194230 (tokens!1584 thiss!10527)))) b!1161357))

(assert (= b!1161358 b!1161359))

(assert (= (and b!1160738 ((_ is Leaf!5731) (c!194230 (tokens!1584 thiss!10527)))) b!1161358))

(declare-fun m!1328769 () Bool)

(assert (=> b!1161357 m!1328769))

(declare-fun m!1328771 () Bool)

(assert (=> b!1161357 m!1328771))

(declare-fun m!1328773 () Bool)

(assert (=> b!1161358 m!1328773))

(assert (=> b!1160738 m!1327565))

(declare-fun b!1161370 () Bool)

(declare-fun b_free!27741 () Bool)

(declare-fun b_next!28445 () Bool)

(assert (=> b!1161370 (= b_free!27741 (not b_next!28445))))

(declare-fun tp!333805 () Bool)

(declare-fun b_and!80617 () Bool)

(assert (=> b!1161370 (= tp!333805 b_and!80617)))

(declare-fun b_free!27743 () Bool)

(declare-fun b_next!28447 () Bool)

(assert (=> b!1161370 (= b_free!27743 (not b_next!28447))))

(declare-fun t!109764 () Bool)

(declare-fun tb!65835 () Bool)

(assert (=> (and b!1161370 (= (toChars!2943 (transformation!1983 (h!16813 (rules!9480 thiss!10527)))) (toChars!2943 (transformation!1983 (rule!3404 lt!394781)))) t!109764) tb!65835))

(declare-fun b!1161375 () Bool)

(declare-fun e!743569 () Bool)

(declare-fun tp!333810 () Bool)

(declare-fun inv!15007 (Conc!3728) Bool)

(assert (=> b!1161375 (= e!743569 (and (inv!15007 (c!194229 (dynLambda!5028 (toChars!2943 (transformation!1983 (rule!3404 lt!394781))) (value!64512 lt!394781)))) tp!333810))))

(declare-fun result!78726 () Bool)

(declare-fun inv!15008 (BalanceConc!7478) Bool)

(assert (=> tb!65835 (= result!78726 (and (inv!15008 (dynLambda!5028 (toChars!2943 (transformation!1983 (rule!3404 lt!394781))) (value!64512 lt!394781))) e!743569))))

(assert (= tb!65835 b!1161375))

(declare-fun m!1328775 () Bool)

(assert (=> b!1161375 m!1328775))

(declare-fun m!1328777 () Bool)

(assert (=> tb!65835 m!1328777))

(assert (=> d!331492 t!109764))

(declare-fun b_and!80619 () Bool)

(declare-fun tp!333804 () Bool)

(assert (=> b!1161370 (= tp!333804 (and (=> t!109764 result!78726) b_and!80619))))

(declare-fun e!743565 () Bool)

(assert (=> b!1161370 (= e!743565 (and tp!333805 tp!333804))))

(declare-fun tp!333807 () Bool)

(declare-fun e!743564 () Bool)

(declare-fun b!1161369 () Bool)

(declare-fun inv!14991 (String!13833) Bool)

(declare-fun inv!15009 (TokenValueInjection!3798) Bool)

(assert (=> b!1161369 (= e!743564 (and tp!333807 (inv!14991 (tag!2245 (h!16813 (rules!9480 thiss!10527)))) (inv!15009 (transformation!1983 (h!16813 (rules!9480 thiss!10527)))) e!743565))))

(declare-fun b!1161368 () Bool)

(declare-fun e!743566 () Bool)

(declare-fun tp!333806 () Bool)

(assert (=> b!1161368 (= e!743566 (and e!743564 tp!333806))))

(assert (=> b!1160727 (= tp!333762 e!743566)))

(assert (= b!1161369 b!1161370))

(assert (= b!1161368 b!1161369))

(assert (= (and b!1160727 ((_ is Cons!11412) (rules!9480 thiss!10527))) b!1161368))

(declare-fun m!1328779 () Bool)

(assert (=> b!1161369 m!1328779))

(declare-fun m!1328781 () Bool)

(assert (=> b!1161369 m!1328781))

(declare-fun b!1161384 () Bool)

(declare-fun e!743574 () Bool)

(assert (=> b!1161384 (= e!743574 true)))

(declare-fun b!1161386 () Bool)

(declare-fun e!743575 () Bool)

(assert (=> b!1161386 (= e!743575 true)))

(declare-fun b!1161385 () Bool)

(assert (=> b!1161385 (= e!743574 e!743575)))

(assert (=> b!1160750 e!743574))

(assert (= (and b!1160750 ((_ is Node!3729) (c!194230 (tokens!1584 thiss!10527)))) b!1161384))

(assert (= b!1161385 b!1161386))

(assert (= (and b!1160750 ((_ is Leaf!5731) (c!194230 (tokens!1584 thiss!10527)))) b!1161385))

(declare-fun b_lambda!34631 () Bool)

(assert (= b_lambda!34615 (or b!1160732 b_lambda!34631)))

(declare-fun bs!283543 () Bool)

(declare-fun d!331600 () Bool)

(assert (= bs!283543 (and d!331600 b!1160732)))

(assert (=> bs!283543 (= (dynLambda!5027 lambda!47301 (h!16812 lt!394771)) (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394771)))))

(assert (=> bs!283543 m!1327669))

(assert (=> b!1160949 d!331600))

(declare-fun b_lambda!34633 () Bool)

(assert (= b_lambda!34623 (or b!1160732 b_lambda!34633)))

(declare-fun bs!283544 () Bool)

(declare-fun d!331602 () Bool)

(assert (= bs!283544 (and d!331602 b!1160732)))

(assert (=> bs!283544 (= (dynLambda!5027 lambda!47301 (h!16812 lt!394772)) (rulesProduceIndividualToken!715 Lexer!1676 (rules!9480 thiss!10527) (h!16812 lt!394772)))))

(assert (=> bs!283544 m!1327569))

(assert (=> b!1161126 d!331602))

(check-sat (not b!1161131) (not b!1160808) (not b!1161127) (not b!1160987) (not b!1161345) (not b!1161386) (not b!1161211) (not d!331354) (not b!1161368) (not b!1161289) (not d!331474) (not b!1161292) (not b!1161206) (not b!1161306) (not b!1161046) (not b_lambda!34631) (not b!1161138) (not b!1160950) (not b!1161344) (not b!1161202) (not b!1160806) (not b!1161003) (not d!331574) (not b!1161004) (not b!1161284) (not d!331370) (not b!1161102) (not b!1161359) (not b!1161051) (not d!331564) (not b!1161332) (not b!1161297) (not b!1161287) (not b!1161056) (not b!1161302) (not b!1161305) (not d!331428) (not b!1161099) (not b!1161286) (not b!1160811) (not d!331576) (not b_next!28447) (not b!1161333) (not d!331572) (not b!1160988) (not b!1160907) (not b!1161320) (not d!331584) (not d!331482) (not b!1161304) (not b!1161205) (not b!1161331) (not d!331408) (not d!331594) (not d!331520) (not d!331494) (not b!1161303) (not b!1160905) (not b!1160940) (not d!331568) (not b!1160738) (not b!1160986) (not d!331414) (not b!1161049) (not b!1160810) (not d!331582) (not bm!82111) (not b!1160809) (not bs!283544) (not b!1161038) (not b!1161101) (not b!1161210) (not b!1161341) (not b!1161035) (not b!1160833) (not d!331522) (not b!1161042) (not d!331580) (not b!1161203) (not b!1160941) (not b!1161053) (not b!1161288) (not d!331374) (not d!331492) (not d!331364) (not b!1161327) (not b!1161285) (not b!1161342) (not d!331476) (not d!331436) (not b!1161047) (not d!331488) (not b!1161334) (not b!1161120) (not b!1161139) (not b!1161209) (not b!1160910) (not bm!82107) (not b!1160912) (not d!331394) (not d!331398) (not b!1161369) (not d!331578) (not b!1160989) (not bs!283543) (not d!331486) (not b!1161130) (not b!1160805) (not d!331430) (not b!1160804) (not b!1161098) (not b!1161033) (not b!1161326) (not b!1161315) (not d!331490) (not b!1161277) (not b!1161321) (not d!331392) (not b!1161125) (not b!1161140) (not b!1161204) (not b!1161357) (not b!1160834) (not b!1160823) (not d!331388) (not b!1161048) (not d!331556) (not b_next!28445) (not b!1160935) (not b!1160942) (not d!331372) (not b!1161343) b_and!80617 (not d!331598) (not d!331390) (not b!1160814) (not b!1160990) (not b!1161384) (not b!1160911) (not bm!82112) (not d!331362) (not b!1160936) b_and!80619 (not d!331592) (not d!331570) (not b!1161043) (not b!1160807) (not b!1161036) (not b!1161050) (not d!331530) (not tb!65835) (not b_lambda!34633) (not b!1161041) (not b!1161298) (not b!1161346) (not b!1161052) (not b!1160908) (not b!1160909) (not d!331464) (not b!1161122) (not d!331524) (not b!1161358) (not d!331472) (not d!331484) (not d!331426) (not d!331588) (not b!1160906) (not b!1161100) (not b!1161375) (not d!331590) (not b!1161037) (not b!1161034) (not b_lambda!34625) (not b!1160832) (not d!331432) (not b!1161319) (not bm!82113) (not b!1161309) (not d!331434) (not b!1161314))
(check-sat b_and!80617 b_and!80619 (not b_next!28445) (not b_next!28447))
