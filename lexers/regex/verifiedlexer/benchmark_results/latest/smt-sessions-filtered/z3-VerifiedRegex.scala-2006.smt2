; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101902 () Bool)

(assert start!101902)

(declare-fun b!1162928 () Bool)

(declare-fun e!744833 () Bool)

(assert (=> b!1162928 (= e!744833 true)))

(declare-fun b!1162927 () Bool)

(declare-fun e!744832 () Bool)

(assert (=> b!1162927 (= e!744832 e!744833)))

(declare-fun b!1162920 () Bool)

(assert (=> b!1162920 e!744832))

(assert (= b!1162927 b!1162928))

(assert (= b!1162920 b!1162927))

(declare-fun b!1162897 () Bool)

(declare-fun e!744819 () Bool)

(declare-datatypes ((List!11477 0))(
  ( (Nil!11453) (Cons!11453 (h!16854 (_ BitVec 16)) (t!110013 List!11477)) )
))
(declare-datatypes ((TokenValue!2059 0))(
  ( (FloatLiteralValue!4118 (text!14858 List!11477)) (TokenValueExt!2058 (__x!7829 Int)) (Broken!10295 (value!64771 List!11477)) (Object!2082) (End!2059) (Def!2059) (Underscore!2059) (Match!2059) (Else!2059) (Error!2059) (Case!2059) (If!2059) (Extends!2059) (Abstract!2059) (Class!2059) (Val!2059) (DelimiterValue!4118 (del!2119 List!11477)) (KeywordValue!2065 (value!64772 List!11477)) (CommentValue!4118 (value!64773 List!11477)) (WhitespaceValue!4118 (value!64774 List!11477)) (IndentationValue!2059 (value!64775 List!11477)) (String!13882) (Int32!2059) (Broken!10296 (value!64776 List!11477)) (Boolean!2060) (Unit!17494) (OperatorValue!2062 (op!2119 List!11477)) (IdentifierValue!4118 (value!64777 List!11477)) (IdentifierValue!4119 (value!64778 List!11477)) (WhitespaceValue!4119 (value!64779 List!11477)) (True!4118) (False!4118) (Broken!10297 (value!64780 List!11477)) (Broken!10298 (value!64781 List!11477)) (True!4119) (RightBrace!2059) (RightBracket!2059) (Colon!2059) (Null!2059) (Comma!2059) (LeftBracket!2059) (False!4119) (LeftBrace!2059) (ImaginaryLiteralValue!2059 (text!14859 List!11477)) (StringLiteralValue!6177 (value!64782 List!11477)) (EOFValue!2059 (value!64783 List!11477)) (IdentValue!2059 (value!64784 List!11477)) (DelimiterValue!4119 (value!64785 List!11477)) (DedentValue!2059 (value!64786 List!11477)) (NewLineValue!2059 (value!64787 List!11477)) (IntegerValue!6177 (value!64788 (_ BitVec 32)) (text!14860 List!11477)) (IntegerValue!6178 (value!64789 Int) (text!14861 List!11477)) (Times!2059) (Or!2059) (Equal!2059) (Minus!2059) (Broken!10299 (value!64790 List!11477)) (And!2059) (Div!2059) (LessEqual!2059) (Mod!2059) (Concat!5322) (Not!2059) (Plus!2059) (SpaceValue!2059 (value!64791 List!11477)) (IntegerValue!6179 (value!64792 Int) (text!14862 List!11477)) (StringLiteralValue!6178 (text!14863 List!11477)) (FloatLiteralValue!4119 (text!14864 List!11477)) (BytesLiteralValue!2059 (value!64793 List!11477)) (CommentValue!4119 (value!64794 List!11477)) (StringLiteralValue!6179 (value!64795 List!11477)) (ErrorTokenValue!2059 (msg!2120 List!11477)) )
))
(declare-datatypes ((C!6844 0))(
  ( (C!6845 (val!3678 Int)) )
))
(declare-datatypes ((Regex!3263 0))(
  ( (ElementMatch!3263 (c!194404 C!6844)) (Concat!5323 (regOne!7038 Regex!3263) (regTwo!7038 Regex!3263)) (EmptyExpr!3263) (Star!3263 (reg!3592 Regex!3263)) (EmptyLang!3263) (Union!3263 (regOne!7039 Regex!3263) (regTwo!7039 Regex!3263)) )
))
(declare-datatypes ((String!13883 0))(
  ( (String!13884 (value!64796 String)) )
))
(declare-datatypes ((List!11478 0))(
  ( (Nil!11454) (Cons!11454 (h!16855 C!6844) (t!110014 List!11478)) )
))
(declare-datatypes ((IArray!7501 0))(
  ( (IArray!7502 (innerList!3808 List!11478)) )
))
(declare-datatypes ((Conc!3748 0))(
  ( (Node!3748 (left!10014 Conc!3748) (right!10344 Conc!3748) (csize!7726 Int) (cheight!3959 Int)) (Leaf!5755 (xs!6453 IArray!7501) (csize!7727 Int)) (Empty!3748) )
))
(declare-datatypes ((BalanceConc!7518 0))(
  ( (BalanceConc!7519 (c!194405 Conc!3748)) )
))
(declare-datatypes ((TokenValueInjection!3818 0))(
  ( (TokenValueInjection!3819 (toValue!3094 Int) (toChars!2953 Int)) )
))
(declare-datatypes ((Rule!3786 0))(
  ( (Rule!3787 (regex!1993 Regex!3263) (tag!2255 String!13883) (isSeparator!1993 Bool) (transformation!1993 TokenValueInjection!3818)) )
))
(declare-datatypes ((Token!3648 0))(
  ( (Token!3649 (value!64797 TokenValue!2059) (rule!3414 Rule!3786) (size!9009 Int) (originalCharacters!2547 List!11478)) )
))
(declare-datatypes ((List!11479 0))(
  ( (Nil!11455) (Cons!11455 (h!16856 Token!3648) (t!110015 List!11479)) )
))
(declare-datatypes ((List!11480 0))(
  ( (Nil!11456) (Cons!11456 (h!16857 Rule!3786) (t!110016 List!11480)) )
))
(declare-datatypes ((IArray!7503 0))(
  ( (IArray!7504 (innerList!3809 List!11479)) )
))
(declare-datatypes ((Conc!3749 0))(
  ( (Node!3749 (left!10015 Conc!3749) (right!10345 Conc!3749) (csize!7728 Int) (cheight!3960 Int)) (Leaf!5756 (xs!6454 IArray!7503) (csize!7729 Int)) (Empty!3749) )
))
(declare-datatypes ((BalanceConc!7520 0))(
  ( (BalanceConc!7521 (c!194406 Conc!3749)) )
))
(declare-datatypes ((PrintableTokens!672 0))(
  ( (PrintableTokens!673 (rules!9520 List!11480) (tokens!1602 BalanceConc!7520)) )
))
(declare-fun thiss!10527 () PrintableTokens!672)

(declare-fun lt!396692 () List!11479)

(declare-datatypes ((LexerInterface!1688 0))(
  ( (LexerInterfaceExt!1685 (__x!7830 Int)) (Lexer!1686) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!556 (LexerInterface!1688 List!11480 List!11479) Bool)

(assert (=> b!1162897 (= e!744819 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396692)))))

(declare-fun b!1162898 () Bool)

(declare-fun e!744821 () Bool)

(declare-fun lt!396696 () List!11479)

(assert (=> b!1162898 (= e!744821 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396696)))))

(declare-fun b!1162899 () Bool)

(declare-fun e!744816 () Bool)

(declare-fun e!744814 () Bool)

(assert (=> b!1162899 (= e!744816 e!744814)))

(declare-fun res!524584 () Bool)

(assert (=> b!1162899 (=> (not res!524584) (not e!744814))))

(declare-fun rulesInvariant!1562 (LexerInterface!1688 List!11480) Bool)

(assert (=> b!1162899 (= res!524584 (rulesInvariant!1562 Lexer!1686 (rules!9520 thiss!10527)))))

(declare-datatypes ((Unit!17495 0))(
  ( (Unit!17496) )
))
(declare-fun lt!396685 () Unit!17495)

(declare-fun lemmaInvariant!180 (PrintableTokens!672) Unit!17495)

(assert (=> b!1162899 (= lt!396685 (lemmaInvariant!180 thiss!10527))))

(declare-fun b!1162900 () Bool)

(declare-fun res!524580 () Bool)

(declare-fun e!744818 () Bool)

(assert (=> b!1162900 (=> res!524580 e!744818)))

(declare-fun lt!396687 () BalanceConc!7520)

(declare-fun lambda!47557 () Int)

(declare-fun forall!2994 (BalanceConc!7520 Int) Bool)

(assert (=> b!1162900 (= res!524580 (not (forall!2994 lt!396687 lambda!47557)))))

(declare-fun b!1162901 () Bool)

(declare-fun e!744807 () Bool)

(declare-fun lt!396688 () Token!3648)

(declare-fun size!9010 (BalanceConc!7518) Int)

(declare-fun charsOf!1062 (Token!3648) BalanceConc!7518)

(assert (=> b!1162901 (= e!744807 (> (size!9010 (charsOf!1062 lt!396688)) 0))))

(declare-fun b!1162902 () Bool)

(declare-fun e!744810 () Bool)

(assert (=> b!1162902 (= e!744810 e!744821)))

(declare-fun res!524589 () Bool)

(assert (=> b!1162902 (=> (not res!524589) (not e!744821))))

(declare-fun rulesProduceIndividualToken!725 (LexerInterface!1688 List!11480 Token!3648) Bool)

(assert (=> b!1162902 (= res!524589 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396696)))))

(declare-fun b!1162903 () Bool)

(declare-fun e!744820 () Bool)

(assert (=> b!1162903 (= e!744820 e!744818)))

(declare-fun res!524594 () Bool)

(assert (=> b!1162903 (=> res!524594 e!744818)))

(declare-fun lt!396681 () List!11479)

(declare-fun forall!2995 (List!11479 Int) Bool)

(assert (=> b!1162903 (= res!524594 (not (forall!2995 lt!396681 lambda!47557)))))

(declare-fun e!744813 () Bool)

(assert (=> b!1162903 e!744813))

(declare-fun res!524581 () Bool)

(assert (=> b!1162903 (=> (not res!524581) (not e!744813))))

(assert (=> b!1162903 (= res!524581 (forall!2995 lt!396681 lambda!47557))))

(declare-fun lt!396689 () Unit!17495)

(declare-fun lemmaForallSubseq!141 (List!11479 List!11479 Int) Unit!17495)

(assert (=> b!1162903 (= lt!396689 (lemmaForallSubseq!141 lt!396681 lt!396692 lambda!47557))))

(declare-fun list!4216 (BalanceConc!7520) List!11479)

(assert (=> b!1162903 (= lt!396681 (list!4216 lt!396687))))

(declare-fun to!267 () Int)

(declare-fun from!787 () Int)

(declare-fun slice!287 (BalanceConc!7520 Int Int) BalanceConc!7520)

(assert (=> b!1162903 (= lt!396687 (slice!287 (tokens!1602 thiss!10527) from!787 to!267))))

(declare-fun subseq!249 (List!11479 List!11479) Bool)

(declare-fun slice!288 (List!11479 Int Int) List!11479)

(assert (=> b!1162903 (subseq!249 (slice!288 lt!396692 from!787 to!267) lt!396692)))

(declare-fun lt!396677 () Unit!17495)

(declare-fun lemmaSliceSubseq!90 (List!11479 Int Int) Unit!17495)

(assert (=> b!1162903 (= lt!396677 (lemmaSliceSubseq!90 lt!396692 from!787 to!267))))

(declare-fun b!1162904 () Bool)

(declare-fun e!744806 () Bool)

(assert (=> b!1162904 (= e!744813 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396681) e!744806))))

(declare-fun res!524585 () Bool)

(assert (=> b!1162904 (=> res!524585 e!744806)))

(get-info :version)

(assert (=> b!1162904 (= res!524585 (not ((_ is Cons!11455) lt!396681)))))

(declare-fun b!1162905 () Bool)

(declare-fun e!744809 () Bool)

(assert (=> b!1162905 (= e!744809 e!744816)))

(declare-fun res!524588 () Bool)

(assert (=> b!1162905 (=> (not res!524588) (not e!744816))))

(declare-fun lt!396682 () Int)

(assert (=> b!1162905 (= res!524588 (<= to!267 lt!396682))))

(declare-fun size!9011 (BalanceConc!7520) Int)

(assert (=> b!1162905 (= lt!396682 (size!9011 (tokens!1602 thiss!10527)))))

(declare-fun b!1162906 () Bool)

(declare-fun e!744826 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!63 (LexerInterface!1688 BalanceConc!7520 Int List!11480) Bool)

(assert (=> b!1162906 (= e!744826 (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 (tokens!1602 thiss!10527) 1 (rules!9520 thiss!10527)))))

(declare-fun b!1162907 () Bool)

(declare-fun e!744817 () Bool)

(assert (=> b!1162907 (= e!744817 e!744826)))

(declare-fun res!524596 () Bool)

(assert (=> b!1162907 (=> (not res!524596) (not e!744826))))

(declare-fun lt!396676 () Token!3648)

(declare-fun separableTokensPredicate!124 (LexerInterface!1688 Token!3648 Token!3648 List!11480) Bool)

(assert (=> b!1162907 (= res!524596 (separableTokensPredicate!124 Lexer!1686 lt!396676 lt!396688 (rules!9520 thiss!10527)))))

(assert (=> b!1162907 e!744807))

(declare-fun res!524579 () Bool)

(assert (=> b!1162907 (=> (not res!524579) (not e!744807))))

(assert (=> b!1162907 (= res!524579 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!396688))))

(declare-fun lt!396679 () Unit!17495)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 (LexerInterface!1688 List!11480 List!11479 Token!3648) Unit!17495)

(assert (=> b!1162907 (= lt!396679 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396692 lt!396688))))

(declare-fun apply!2457 (BalanceConc!7520 Int) Token!3648)

(assert (=> b!1162907 (= lt!396688 (apply!2457 (tokens!1602 thiss!10527) 1))))

(assert (=> b!1162907 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!396676)))

(declare-fun lt!396697 () Unit!17495)

(assert (=> b!1162907 (= lt!396697 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396692 lt!396676))))

(assert (=> b!1162907 (= lt!396676 (apply!2457 (tokens!1602 thiss!10527) 0))))

(declare-fun lt!396686 () List!11479)

(declare-fun tail!1680 (List!11479) List!11479)

(declare-fun drop!475 (List!11479 Int) List!11479)

(assert (=> b!1162907 (= (tail!1680 lt!396686) (drop!475 lt!396692 2))))

(declare-fun lt!396675 () Unit!17495)

(declare-fun lemmaDropTail!353 (List!11479 Int) Unit!17495)

(assert (=> b!1162907 (= lt!396675 (lemmaDropTail!353 lt!396692 1))))

(declare-fun lt!396693 () List!11479)

(assert (=> b!1162907 (= (tail!1680 lt!396693) lt!396686)))

(declare-fun lt!396690 () Unit!17495)

(assert (=> b!1162907 (= lt!396690 (lemmaDropTail!353 lt!396692 0))))

(declare-fun head!2096 (List!11479) Token!3648)

(declare-fun apply!2458 (List!11479 Int) Token!3648)

(assert (=> b!1162907 (= (head!2096 lt!396686) (apply!2458 lt!396692 1))))

(assert (=> b!1162907 (= lt!396686 (drop!475 lt!396692 1))))

(declare-fun lt!396684 () Unit!17495)

(declare-fun lemmaDropApply!365 (List!11479 Int) Unit!17495)

(assert (=> b!1162907 (= lt!396684 (lemmaDropApply!365 lt!396692 1))))

(assert (=> b!1162907 (= (head!2096 lt!396693) (apply!2458 lt!396692 0))))

(assert (=> b!1162907 (= lt!396693 (drop!475 lt!396692 0))))

(declare-fun lt!396698 () Unit!17495)

(assert (=> b!1162907 (= lt!396698 (lemmaDropApply!365 lt!396692 0))))

(declare-fun b!1162908 () Bool)

(declare-fun e!744815 () Bool)

(declare-fun lt!396694 () List!11479)

(assert (=> b!1162908 (= e!744815 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396694)))))

(declare-fun b!1162909 () Bool)

(declare-fun res!524590 () Bool)

(assert (=> b!1162909 (=> (not res!524590) (not e!744813))))

(declare-fun rulesProduceEachTokenIndividually!727 (LexerInterface!1688 List!11480 BalanceConc!7520) Bool)

(assert (=> b!1162909 (= res!524590 (= (rulesProduceEachTokenIndividually!727 Lexer!1686 (rules!9520 thiss!10527) lt!396687) (forall!2994 lt!396687 lambda!47557)))))

(declare-fun b!1162910 () Bool)

(declare-fun e!744823 () Bool)

(assert (=> b!1162910 (= e!744823 (= (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 (tokens!1602 thiss!10527) 0 (rules!9520 thiss!10527)) e!744817))))

(declare-fun res!524583 () Bool)

(assert (=> b!1162910 (=> res!524583 e!744817)))

(assert (=> b!1162910 (= res!524583 (>= 0 (- lt!396682 1)))))

(declare-fun b!1162911 () Bool)

(declare-fun e!744825 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!100 (LexerInterface!1688 List!11479 List!11480) Bool)

(assert (=> b!1162911 (= e!744825 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 lt!396694 (rules!9520 thiss!10527)))))

(declare-fun b!1162912 () Bool)

(declare-fun e!744824 () Bool)

(assert (=> b!1162912 (= e!744824 e!744819)))

(declare-fun res!524576 () Bool)

(assert (=> b!1162912 (=> (not res!524576) (not e!744819))))

(assert (=> b!1162912 (= res!524576 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396692)))))

(declare-fun b!1162913 () Bool)

(declare-fun e!744827 () Bool)

(assert (=> b!1162913 (= e!744827 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396681)))))

(declare-fun b!1162914 () Bool)

(declare-fun e!744812 () Bool)

(declare-fun e!744822 () Bool)

(declare-fun tp!333918 () Bool)

(declare-fun inv!15064 (BalanceConc!7520) Bool)

(assert (=> b!1162914 (= e!744822 (and tp!333918 (inv!15064 (tokens!1602 thiss!10527)) e!744812))))

(declare-fun b!1162915 () Bool)

(declare-fun e!744808 () Bool)

(assert (=> b!1162915 (= e!744808 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 lt!396696 (rules!9520 thiss!10527)))))

(declare-fun b!1162916 () Bool)

(assert (=> b!1162916 (= e!744806 e!744827)))

(declare-fun res!524591 () Bool)

(assert (=> b!1162916 (=> (not res!524591) (not e!744827))))

(assert (=> b!1162916 (= res!524591 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396681)))))

(declare-fun b!1162917 () Bool)

(declare-fun e!744811 () Bool)

(assert (=> b!1162917 (= e!744811 e!744815)))

(declare-fun res!524595 () Bool)

(assert (=> b!1162917 (=> (not res!524595) (not e!744815))))

(assert (=> b!1162917 (= res!524595 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396694)))))

(declare-fun b!1162918 () Bool)

(declare-fun isEmpty!6985 (List!11480) Bool)

(assert (=> b!1162918 (= e!744818 (not (isEmpty!6985 (rules!9520 thiss!10527))))))

(assert (=> b!1162918 e!744825))

(declare-fun res!524592 () Bool)

(assert (=> b!1162918 (=> (not res!524592) (not e!744825))))

(assert (=> b!1162918 (= res!524592 (forall!2995 lt!396694 lambda!47557))))

(declare-fun lt!396695 () Unit!17495)

(assert (=> b!1162918 (= lt!396695 (lemmaForallSubseq!141 lt!396694 lt!396696 lambda!47557))))

(assert (=> b!1162918 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396694) e!744811)))

(declare-fun res!524577 () Bool)

(assert (=> b!1162918 (=> res!524577 e!744811)))

(assert (=> b!1162918 (= res!524577 (not ((_ is Cons!11455) lt!396694)))))

(declare-fun take!65 (List!11479 Int) List!11479)

(assert (=> b!1162918 (= lt!396694 (take!65 lt!396696 (- to!267 from!787)))))

(declare-fun lt!396683 () Unit!17495)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!32 (LexerInterface!1688 List!11479 Int List!11480) Unit!17495)

(assert (=> b!1162918 (= lt!396683 (tokensListTwoByTwoPredicateSeparableTokensTakeList!32 Lexer!1686 lt!396696 (- to!267 from!787) (rules!9520 thiss!10527)))))

(assert (=> b!1162918 (forall!2995 lt!396696 lambda!47557)))

(declare-fun lt!396691 () Unit!17495)

(assert (=> b!1162918 (= lt!396691 (lemmaForallSubseq!141 lt!396696 lt!396692 lambda!47557))))

(assert (=> b!1162918 e!744808))

(declare-fun res!524587 () Bool)

(assert (=> b!1162918 (=> (not res!524587) (not e!744808))))

(assert (=> b!1162918 (= res!524587 (forall!2995 lt!396696 lambda!47557))))

(declare-fun lt!396678 () Unit!17495)

(assert (=> b!1162918 (= lt!396678 (lemmaForallSubseq!141 lt!396696 lt!396692 lambda!47557))))

(assert (=> b!1162918 (subseq!249 lt!396696 lt!396692)))

(declare-fun lt!396680 () Unit!17495)

(declare-fun lemmaDropSubseq!40 (List!11479 Int) Unit!17495)

(assert (=> b!1162918 (= lt!396680 (lemmaDropSubseq!40 lt!396692 from!787))))

(assert (=> b!1162918 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396696) e!744810)))

(declare-fun res!524597 () Bool)

(assert (=> b!1162918 (=> res!524597 e!744810)))

(assert (=> b!1162918 (= res!524597 (not ((_ is Cons!11455) lt!396696)))))

(assert (=> b!1162918 (= lt!396696 (drop!475 lt!396692 from!787))))

(declare-fun lt!396674 () Unit!17495)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!40 (LexerInterface!1688 List!11479 Int List!11480) Unit!17495)

(assert (=> b!1162918 (= lt!396674 (tokensListTwoByTwoPredicateSeparableTokensDropList!40 Lexer!1686 lt!396692 from!787 (rules!9520 thiss!10527)))))

(assert (=> b!1162918 e!744823))

(declare-fun res!524578 () Bool)

(assert (=> b!1162918 (=> (not res!524578) (not e!744823))))

(declare-fun separableTokens!130 (LexerInterface!1688 BalanceConc!7520 List!11480) Bool)

(assert (=> b!1162918 (= res!524578 (= (separableTokens!130 Lexer!1686 lt!396687 (rules!9520 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 lt!396687 0 (rules!9520 thiss!10527))))))

(declare-fun b!1162919 () Bool)

(declare-fun tp!333917 () Bool)

(declare-fun inv!15065 (Conc!3749) Bool)

(assert (=> b!1162919 (= e!744812 (and (inv!15065 (c!194406 (tokens!1602 thiss!10527))) tp!333917))))

(declare-fun res!524593 () Bool)

(assert (=> start!101902 (=> (not res!524593) (not e!744809))))

(assert (=> start!101902 (= res!524593 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101902 e!744809))

(assert (=> start!101902 true))

(declare-fun inv!15066 (PrintableTokens!672) Bool)

(assert (=> start!101902 (and (inv!15066 thiss!10527) e!744822)))

(assert (=> b!1162920 (= e!744814 (not e!744820))))

(declare-fun res!524586 () Bool)

(assert (=> b!1162920 (=> res!524586 e!744820)))

(assert (=> b!1162920 (= res!524586 (not (forall!2994 (tokens!1602 thiss!10527) lambda!47557)))))

(assert (=> b!1162920 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396692) e!744824)))

(declare-fun res!524582 () Bool)

(assert (=> b!1162920 (=> res!524582 e!744824)))

(assert (=> b!1162920 (= res!524582 (not ((_ is Cons!11455) lt!396692)))))

(assert (=> b!1162920 (= lt!396692 (list!4216 (tokens!1602 thiss!10527)))))

(assert (=> b!1162920 (= (rulesProduceEachTokenIndividually!727 Lexer!1686 (rules!9520 thiss!10527) (tokens!1602 thiss!10527)) (forall!2994 (tokens!1602 thiss!10527) lambda!47557))))

(assert (= (and start!101902 res!524593) b!1162905))

(assert (= (and b!1162905 res!524588) b!1162899))

(assert (= (and b!1162899 res!524584) b!1162920))

(assert (= (and b!1162920 (not res!524582)) b!1162912))

(assert (= (and b!1162912 res!524576) b!1162897))

(assert (= (and b!1162920 (not res!524586)) b!1162903))

(assert (= (and b!1162903 res!524581) b!1162909))

(assert (= (and b!1162909 res!524590) b!1162904))

(assert (= (and b!1162904 (not res!524585)) b!1162916))

(assert (= (and b!1162916 res!524591) b!1162913))

(assert (= (and b!1162903 (not res!524594)) b!1162900))

(assert (= (and b!1162900 (not res!524580)) b!1162918))

(assert (= (and b!1162918 res!524578) b!1162910))

(assert (= (and b!1162910 (not res!524583)) b!1162907))

(assert (= (and b!1162907 res!524579) b!1162901))

(assert (= (and b!1162907 res!524596) b!1162906))

(assert (= (and b!1162918 (not res!524597)) b!1162902))

(assert (= (and b!1162902 res!524589) b!1162898))

(assert (= (and b!1162918 res!524587) b!1162915))

(assert (= (and b!1162918 (not res!524577)) b!1162917))

(assert (= (and b!1162917 res!524595) b!1162908))

(assert (= (and b!1162918 res!524592) b!1162911))

(assert (= b!1162914 b!1162919))

(assert (= start!101902 b!1162914))

(declare-fun m!1331229 () Bool)

(assert (=> b!1162918 m!1331229))

(declare-fun m!1331231 () Bool)

(assert (=> b!1162918 m!1331231))

(declare-fun m!1331233 () Bool)

(assert (=> b!1162918 m!1331233))

(declare-fun m!1331235 () Bool)

(assert (=> b!1162918 m!1331235))

(declare-fun m!1331237 () Bool)

(assert (=> b!1162918 m!1331237))

(declare-fun m!1331239 () Bool)

(assert (=> b!1162918 m!1331239))

(declare-fun m!1331241 () Bool)

(assert (=> b!1162918 m!1331241))

(declare-fun m!1331243 () Bool)

(assert (=> b!1162918 m!1331243))

(assert (=> b!1162918 m!1331231))

(declare-fun m!1331245 () Bool)

(assert (=> b!1162918 m!1331245))

(assert (=> b!1162918 m!1331241))

(declare-fun m!1331247 () Bool)

(assert (=> b!1162918 m!1331247))

(declare-fun m!1331249 () Bool)

(assert (=> b!1162918 m!1331249))

(declare-fun m!1331251 () Bool)

(assert (=> b!1162918 m!1331251))

(declare-fun m!1331253 () Bool)

(assert (=> b!1162918 m!1331253))

(declare-fun m!1331255 () Bool)

(assert (=> b!1162918 m!1331255))

(declare-fun m!1331257 () Bool)

(assert (=> b!1162918 m!1331257))

(declare-fun m!1331259 () Bool)

(assert (=> b!1162912 m!1331259))

(declare-fun m!1331261 () Bool)

(assert (=> b!1162908 m!1331261))

(declare-fun m!1331263 () Bool)

(assert (=> b!1162898 m!1331263))

(declare-fun m!1331265 () Bool)

(assert (=> start!101902 m!1331265))

(declare-fun m!1331267 () Bool)

(assert (=> b!1162919 m!1331267))

(declare-fun m!1331269 () Bool)

(assert (=> b!1162903 m!1331269))

(declare-fun m!1331271 () Bool)

(assert (=> b!1162903 m!1331271))

(declare-fun m!1331273 () Bool)

(assert (=> b!1162903 m!1331273))

(assert (=> b!1162903 m!1331273))

(declare-fun m!1331275 () Bool)

(assert (=> b!1162903 m!1331275))

(declare-fun m!1331277 () Bool)

(assert (=> b!1162903 m!1331277))

(declare-fun m!1331279 () Bool)

(assert (=> b!1162903 m!1331279))

(assert (=> b!1162903 m!1331269))

(declare-fun m!1331281 () Bool)

(assert (=> b!1162903 m!1331281))

(declare-fun m!1331283 () Bool)

(assert (=> b!1162905 m!1331283))

(declare-fun m!1331285 () Bool)

(assert (=> b!1162917 m!1331285))

(declare-fun m!1331287 () Bool)

(assert (=> b!1162897 m!1331287))

(declare-fun m!1331289 () Bool)

(assert (=> b!1162910 m!1331289))

(declare-fun m!1331291 () Bool)

(assert (=> b!1162902 m!1331291))

(declare-fun m!1331293 () Bool)

(assert (=> b!1162914 m!1331293))

(declare-fun m!1331295 () Bool)

(assert (=> b!1162913 m!1331295))

(declare-fun m!1331297 () Bool)

(assert (=> b!1162907 m!1331297))

(declare-fun m!1331299 () Bool)

(assert (=> b!1162907 m!1331299))

(declare-fun m!1331301 () Bool)

(assert (=> b!1162907 m!1331301))

(declare-fun m!1331303 () Bool)

(assert (=> b!1162907 m!1331303))

(declare-fun m!1331305 () Bool)

(assert (=> b!1162907 m!1331305))

(declare-fun m!1331307 () Bool)

(assert (=> b!1162907 m!1331307))

(declare-fun m!1331309 () Bool)

(assert (=> b!1162907 m!1331309))

(declare-fun m!1331311 () Bool)

(assert (=> b!1162907 m!1331311))

(declare-fun m!1331313 () Bool)

(assert (=> b!1162907 m!1331313))

(declare-fun m!1331315 () Bool)

(assert (=> b!1162907 m!1331315))

(declare-fun m!1331317 () Bool)

(assert (=> b!1162907 m!1331317))

(declare-fun m!1331319 () Bool)

(assert (=> b!1162907 m!1331319))

(declare-fun m!1331321 () Bool)

(assert (=> b!1162907 m!1331321))

(declare-fun m!1331323 () Bool)

(assert (=> b!1162907 m!1331323))

(declare-fun m!1331325 () Bool)

(assert (=> b!1162907 m!1331325))

(declare-fun m!1331327 () Bool)

(assert (=> b!1162907 m!1331327))

(declare-fun m!1331329 () Bool)

(assert (=> b!1162907 m!1331329))

(declare-fun m!1331331 () Bool)

(assert (=> b!1162907 m!1331331))

(declare-fun m!1331333 () Bool)

(assert (=> b!1162907 m!1331333))

(declare-fun m!1331335 () Bool)

(assert (=> b!1162907 m!1331335))

(declare-fun m!1331337 () Bool)

(assert (=> b!1162915 m!1331337))

(declare-fun m!1331339 () Bool)

(assert (=> b!1162904 m!1331339))

(declare-fun m!1331341 () Bool)

(assert (=> b!1162901 m!1331341))

(assert (=> b!1162901 m!1331341))

(declare-fun m!1331343 () Bool)

(assert (=> b!1162901 m!1331343))

(declare-fun m!1331345 () Bool)

(assert (=> b!1162916 m!1331345))

(declare-fun m!1331347 () Bool)

(assert (=> b!1162920 m!1331347))

(declare-fun m!1331349 () Bool)

(assert (=> b!1162920 m!1331349))

(declare-fun m!1331351 () Bool)

(assert (=> b!1162920 m!1331351))

(declare-fun m!1331353 () Bool)

(assert (=> b!1162920 m!1331353))

(assert (=> b!1162920 m!1331353))

(declare-fun m!1331355 () Bool)

(assert (=> b!1162899 m!1331355))

(declare-fun m!1331357 () Bool)

(assert (=> b!1162899 m!1331357))

(declare-fun m!1331359 () Bool)

(assert (=> b!1162900 m!1331359))

(declare-fun m!1331361 () Bool)

(assert (=> b!1162911 m!1331361))

(declare-fun m!1331363 () Bool)

(assert (=> b!1162906 m!1331363))

(declare-fun m!1331365 () Bool)

(assert (=> b!1162909 m!1331365))

(assert (=> b!1162909 m!1331359))

(check-sat (not b!1162928) (not b!1162920) (not start!101902) (not b!1162898) (not b!1162897) (not b!1162901) (not b!1162914) (not b!1162912) (not b!1162913) (not b!1162910) (not b!1162899) (not b!1162902) (not b!1162916) (not b!1162917) (not b!1162915) (not b!1162903) (not b!1162918) (not b!1162927) (not b!1162904) (not b!1162909) (not b!1162905) (not b!1162900) (not b!1162919) (not b!1162907) (not b!1162908) (not b!1162911) (not b!1162906))
(check-sat)
(get-model)

(declare-fun d!331899 () Bool)

(declare-fun lt!396701 () Int)

(declare-fun size!9013 (List!11478) Int)

(declare-fun list!4217 (BalanceConc!7518) List!11478)

(assert (=> d!331899 (= lt!396701 (size!9013 (list!4217 (charsOf!1062 lt!396688))))))

(declare-fun size!9014 (Conc!3748) Int)

(assert (=> d!331899 (= lt!396701 (size!9014 (c!194405 (charsOf!1062 lt!396688))))))

(assert (=> d!331899 (= (size!9010 (charsOf!1062 lt!396688)) lt!396701)))

(declare-fun bs!283751 () Bool)

(assert (= bs!283751 d!331899))

(assert (=> bs!283751 m!1331341))

(declare-fun m!1331367 () Bool)

(assert (=> bs!283751 m!1331367))

(assert (=> bs!283751 m!1331367))

(declare-fun m!1331369 () Bool)

(assert (=> bs!283751 m!1331369))

(declare-fun m!1331371 () Bool)

(assert (=> bs!283751 m!1331371))

(assert (=> b!1162901 d!331899))

(declare-fun d!331901 () Bool)

(declare-fun lt!396704 () BalanceConc!7518)

(assert (=> d!331901 (= (list!4217 lt!396704) (originalCharacters!2547 lt!396688))))

(declare-fun dynLambda!5042 (Int TokenValue!2059) BalanceConc!7518)

(assert (=> d!331901 (= lt!396704 (dynLambda!5042 (toChars!2953 (transformation!1993 (rule!3414 lt!396688))) (value!64797 lt!396688)))))

(assert (=> d!331901 (= (charsOf!1062 lt!396688) lt!396704)))

(declare-fun b_lambda!34663 () Bool)

(assert (=> (not b_lambda!34663) (not d!331901)))

(declare-fun bs!283752 () Bool)

(assert (= bs!283752 d!331901))

(declare-fun m!1331373 () Bool)

(assert (=> bs!283752 m!1331373))

(declare-fun m!1331375 () Bool)

(assert (=> bs!283752 m!1331375))

(assert (=> b!1162901 d!331901))

(declare-fun d!331903 () Bool)

(declare-fun lt!396707 () Bool)

(assert (=> d!331903 (= lt!396707 (forall!2995 (list!4216 lt!396687) lambda!47557))))

(declare-fun forall!2997 (Conc!3749 Int) Bool)

(assert (=> d!331903 (= lt!396707 (forall!2997 (c!194406 lt!396687) lambda!47557))))

(assert (=> d!331903 (= (forall!2994 lt!396687 lambda!47557) lt!396707)))

(declare-fun bs!283753 () Bool)

(assert (= bs!283753 d!331903))

(assert (=> bs!283753 m!1331279))

(assert (=> bs!283753 m!1331279))

(declare-fun m!1331377 () Bool)

(assert (=> bs!283753 m!1331377))

(declare-fun m!1331379 () Bool)

(assert (=> bs!283753 m!1331379))

(assert (=> b!1162900 d!331903))

(declare-fun bs!283756 () Bool)

(declare-fun d!331905 () Bool)

(assert (= bs!283756 (and d!331905 b!1162920)))

(declare-fun lambda!47567 () Int)

(assert (=> bs!283756 (= lambda!47567 lambda!47557)))

(declare-fun b!1162967 () Bool)

(declare-fun e!744863 () Bool)

(assert (=> b!1162967 (= e!744863 true)))

(declare-fun b!1162966 () Bool)

(declare-fun e!744862 () Bool)

(assert (=> b!1162966 (= e!744862 e!744863)))

(declare-fun b!1162965 () Bool)

(declare-fun e!744861 () Bool)

(assert (=> b!1162965 (= e!744861 e!744862)))

(assert (=> d!331905 e!744861))

(assert (= b!1162966 b!1162967))

(assert (= b!1162965 b!1162966))

(assert (= (and d!331905 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1162965))

(declare-fun order!7007 () Int)

(declare-fun order!7005 () Int)

(declare-fun dynLambda!5043 (Int Int) Int)

(declare-fun dynLambda!5044 (Int Int) Int)

(assert (=> b!1162967 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47567))))

(declare-fun order!7009 () Int)

(declare-fun dynLambda!5045 (Int Int) Int)

(assert (=> b!1162967 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47567))))

(assert (=> d!331905 true))

(declare-fun e!744854 () Bool)

(assert (=> d!331905 e!744854))

(declare-fun res!524616 () Bool)

(assert (=> d!331905 (=> (not res!524616) (not e!744854))))

(declare-fun lt!396716 () Bool)

(assert (=> d!331905 (= res!524616 (= lt!396716 (forall!2995 (list!4216 (tokens!1602 thiss!10527)) lambda!47567)))))

(assert (=> d!331905 (= lt!396716 (forall!2994 (tokens!1602 thiss!10527) lambda!47567))))

(assert (=> d!331905 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!331905 (= (rulesProduceEachTokenIndividually!727 Lexer!1686 (rules!9520 thiss!10527) (tokens!1602 thiss!10527)) lt!396716)))

(declare-fun b!1162956 () Bool)

(assert (=> b!1162956 (= e!744854 (= lt!396716 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (list!4216 (tokens!1602 thiss!10527)))))))

(assert (= (and d!331905 res!524616) b!1162956))

(assert (=> d!331905 m!1331349))

(assert (=> d!331905 m!1331349))

(declare-fun m!1331397 () Bool)

(assert (=> d!331905 m!1331397))

(declare-fun m!1331399 () Bool)

(assert (=> d!331905 m!1331399))

(assert (=> d!331905 m!1331229))

(assert (=> b!1162956 m!1331349))

(assert (=> b!1162956 m!1331349))

(declare-fun m!1331401 () Bool)

(assert (=> b!1162956 m!1331401))

(assert (=> b!1162920 d!331905))

(declare-fun d!331915 () Bool)

(declare-fun list!4218 (Conc!3749) List!11479)

(assert (=> d!331915 (= (list!4216 (tokens!1602 thiss!10527)) (list!4218 (c!194406 (tokens!1602 thiss!10527))))))

(declare-fun bs!283757 () Bool)

(assert (= bs!283757 d!331915))

(declare-fun m!1331403 () Bool)

(assert (=> bs!283757 m!1331403))

(assert (=> b!1162920 d!331915))

(declare-fun d!331917 () Bool)

(declare-fun lt!396717 () Bool)

(assert (=> d!331917 (= lt!396717 (forall!2995 (list!4216 (tokens!1602 thiss!10527)) lambda!47557))))

(assert (=> d!331917 (= lt!396717 (forall!2997 (c!194406 (tokens!1602 thiss!10527)) lambda!47557))))

(assert (=> d!331917 (= (forall!2994 (tokens!1602 thiss!10527) lambda!47557) lt!396717)))

(declare-fun bs!283758 () Bool)

(assert (= bs!283758 d!331917))

(assert (=> bs!283758 m!1331349))

(assert (=> bs!283758 m!1331349))

(declare-fun m!1331405 () Bool)

(assert (=> bs!283758 m!1331405))

(declare-fun m!1331407 () Bool)

(assert (=> bs!283758 m!1331407))

(assert (=> b!1162920 d!331917))

(declare-fun bs!283759 () Bool)

(declare-fun d!331919 () Bool)

(assert (= bs!283759 (and d!331919 b!1162920)))

(declare-fun lambda!47570 () Int)

(assert (=> bs!283759 (= lambda!47570 lambda!47557)))

(declare-fun bs!283760 () Bool)

(assert (= bs!283760 (and d!331919 d!331905)))

(assert (=> bs!283760 (= lambda!47570 lambda!47567)))

(declare-fun b!1162987 () Bool)

(declare-fun e!744878 () Bool)

(assert (=> b!1162987 (= e!744878 true)))

(declare-fun b!1162986 () Bool)

(declare-fun e!744877 () Bool)

(assert (=> b!1162986 (= e!744877 e!744878)))

(declare-fun b!1162985 () Bool)

(declare-fun e!744876 () Bool)

(assert (=> b!1162985 (= e!744876 e!744877)))

(assert (=> d!331919 e!744876))

(assert (= b!1162986 b!1162987))

(assert (= b!1162985 b!1162986))

(assert (= (and d!331919 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1162985))

(assert (=> b!1162987 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47570))))

(assert (=> b!1162987 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47570))))

(assert (=> d!331919 true))

(declare-fun lt!396726 () Bool)

(assert (=> d!331919 (= lt!396726 (forall!2995 lt!396692 lambda!47570))))

(declare-fun e!744875 () Bool)

(assert (=> d!331919 (= lt!396726 e!744875)))

(declare-fun res!524631 () Bool)

(assert (=> d!331919 (=> res!524631 e!744875)))

(assert (=> d!331919 (= res!524631 (not ((_ is Cons!11455) lt!396692)))))

(assert (=> d!331919 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!331919 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396692) lt!396726)))

(declare-fun b!1162983 () Bool)

(declare-fun e!744874 () Bool)

(assert (=> b!1162983 (= e!744875 e!744874)))

(declare-fun res!524630 () Bool)

(assert (=> b!1162983 (=> (not res!524630) (not e!744874))))

(assert (=> b!1162983 (= res!524630 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396692)))))

(declare-fun b!1162984 () Bool)

(assert (=> b!1162984 (= e!744874 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396692)))))

(assert (= (and d!331919 (not res!524631)) b!1162983))

(assert (= (and b!1162983 res!524630) b!1162984))

(declare-fun m!1331427 () Bool)

(assert (=> d!331919 m!1331427))

(assert (=> d!331919 m!1331229))

(assert (=> b!1162983 m!1331259))

(assert (=> b!1162984 m!1331287))

(assert (=> b!1162920 d!331919))

(declare-fun d!331923 () Bool)

(declare-fun res!524634 () Bool)

(declare-fun e!744881 () Bool)

(assert (=> d!331923 (=> (not res!524634) (not e!744881))))

(declare-fun rulesValid!694 (LexerInterface!1688 List!11480) Bool)

(assert (=> d!331923 (= res!524634 (rulesValid!694 Lexer!1686 (rules!9520 thiss!10527)))))

(assert (=> d!331923 (= (rulesInvariant!1562 Lexer!1686 (rules!9520 thiss!10527)) e!744881)))

(declare-fun b!1162990 () Bool)

(declare-datatypes ((List!11482 0))(
  ( (Nil!11458) (Cons!11458 (h!16859 String!13883) (t!110046 List!11482)) )
))
(declare-fun noDuplicateTag!694 (LexerInterface!1688 List!11480 List!11482) Bool)

(assert (=> b!1162990 (= e!744881 (noDuplicateTag!694 Lexer!1686 (rules!9520 thiss!10527) Nil!11458))))

(assert (= (and d!331923 res!524634) b!1162990))

(declare-fun m!1331429 () Bool)

(assert (=> d!331923 m!1331429))

(declare-fun m!1331431 () Bool)

(assert (=> b!1162990 m!1331431))

(assert (=> b!1162899 d!331923))

(declare-fun d!331925 () Bool)

(declare-fun e!744884 () Bool)

(assert (=> d!331925 e!744884))

(declare-fun res!524639 () Bool)

(assert (=> d!331925 (=> (not res!524639) (not e!744884))))

(assert (=> d!331925 (= res!524639 (rulesInvariant!1562 Lexer!1686 (rules!9520 thiss!10527)))))

(declare-fun Unit!17501 () Unit!17495)

(assert (=> d!331925 (= (lemmaInvariant!180 thiss!10527) Unit!17501)))

(declare-fun b!1162995 () Bool)

(declare-fun res!524640 () Bool)

(assert (=> b!1162995 (=> (not res!524640) (not e!744884))))

(assert (=> b!1162995 (= res!524640 (rulesProduceEachTokenIndividually!727 Lexer!1686 (rules!9520 thiss!10527) (tokens!1602 thiss!10527)))))

(declare-fun b!1162996 () Bool)

(assert (=> b!1162996 (= e!744884 (separableTokens!130 Lexer!1686 (tokens!1602 thiss!10527) (rules!9520 thiss!10527)))))

(assert (= (and d!331925 res!524639) b!1162995))

(assert (= (and b!1162995 res!524640) b!1162996))

(assert (=> d!331925 m!1331355))

(assert (=> b!1162995 m!1331347))

(declare-fun m!1331433 () Bool)

(assert (=> b!1162996 m!1331433))

(assert (=> b!1162899 d!331925))

(declare-fun bs!283761 () Bool)

(declare-fun d!331927 () Bool)

(assert (= bs!283761 (and d!331927 b!1162920)))

(declare-fun lambda!47571 () Int)

(assert (=> bs!283761 (= lambda!47571 lambda!47557)))

(declare-fun bs!283762 () Bool)

(assert (= bs!283762 (and d!331927 d!331905)))

(assert (=> bs!283762 (= lambda!47571 lambda!47567)))

(declare-fun bs!283763 () Bool)

(assert (= bs!283763 (and d!331927 d!331919)))

(assert (=> bs!283763 (= lambda!47571 lambda!47570)))

(declare-fun b!1163001 () Bool)

(declare-fun e!744889 () Bool)

(assert (=> b!1163001 (= e!744889 true)))

(declare-fun b!1163000 () Bool)

(declare-fun e!744888 () Bool)

(assert (=> b!1163000 (= e!744888 e!744889)))

(declare-fun b!1162999 () Bool)

(declare-fun e!744887 () Bool)

(assert (=> b!1162999 (= e!744887 e!744888)))

(assert (=> d!331927 e!744887))

(assert (= b!1163000 b!1163001))

(assert (= b!1162999 b!1163000))

(assert (= (and d!331927 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1162999))

(assert (=> b!1163001 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47571))))

(assert (=> b!1163001 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47571))))

(assert (=> d!331927 true))

(declare-fun lt!396727 () Bool)

(assert (=> d!331927 (= lt!396727 (forall!2995 (t!110015 lt!396696) lambda!47571))))

(declare-fun e!744886 () Bool)

(assert (=> d!331927 (= lt!396727 e!744886)))

(declare-fun res!524642 () Bool)

(assert (=> d!331927 (=> res!524642 e!744886)))

(assert (=> d!331927 (= res!524642 (not ((_ is Cons!11455) (t!110015 lt!396696))))))

(assert (=> d!331927 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!331927 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396696)) lt!396727)))

(declare-fun b!1162997 () Bool)

(declare-fun e!744885 () Bool)

(assert (=> b!1162997 (= e!744886 e!744885)))

(declare-fun res!524641 () Bool)

(assert (=> b!1162997 (=> (not res!524641) (not e!744885))))

(assert (=> b!1162997 (= res!524641 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 (t!110015 lt!396696))))))

(declare-fun b!1162998 () Bool)

(assert (=> b!1162998 (= e!744885 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 (t!110015 lt!396696))))))

(assert (= (and d!331927 (not res!524642)) b!1162997))

(assert (= (and b!1162997 res!524641) b!1162998))

(declare-fun m!1331435 () Bool)

(assert (=> d!331927 m!1331435))

(assert (=> d!331927 m!1331229))

(declare-fun m!1331437 () Bool)

(assert (=> b!1162997 m!1331437))

(declare-fun m!1331439 () Bool)

(assert (=> b!1162998 m!1331439))

(assert (=> b!1162898 d!331927))

(declare-fun d!331929 () Bool)

(declare-fun c!194409 () Bool)

(assert (=> d!331929 (= c!194409 ((_ is Node!3749) (c!194406 (tokens!1602 thiss!10527))))))

(declare-fun e!744894 () Bool)

(assert (=> d!331929 (= (inv!15065 (c!194406 (tokens!1602 thiss!10527))) e!744894)))

(declare-fun b!1163008 () Bool)

(declare-fun inv!15067 (Conc!3749) Bool)

(assert (=> b!1163008 (= e!744894 (inv!15067 (c!194406 (tokens!1602 thiss!10527))))))

(declare-fun b!1163009 () Bool)

(declare-fun e!744895 () Bool)

(assert (=> b!1163009 (= e!744894 e!744895)))

(declare-fun res!524645 () Bool)

(assert (=> b!1163009 (= res!524645 (not ((_ is Leaf!5756) (c!194406 (tokens!1602 thiss!10527)))))))

(assert (=> b!1163009 (=> res!524645 e!744895)))

(declare-fun b!1163010 () Bool)

(declare-fun inv!15068 (Conc!3749) Bool)

(assert (=> b!1163010 (= e!744895 (inv!15068 (c!194406 (tokens!1602 thiss!10527))))))

(assert (= (and d!331929 c!194409) b!1163008))

(assert (= (and d!331929 (not c!194409)) b!1163009))

(assert (= (and b!1163009 (not res!524645)) b!1163010))

(declare-fun m!1331441 () Bool)

(assert (=> b!1163008 m!1331441))

(declare-fun m!1331443 () Bool)

(assert (=> b!1163010 m!1331443))

(assert (=> b!1162919 d!331929))

(declare-fun bs!283764 () Bool)

(declare-fun d!331931 () Bool)

(assert (= bs!283764 (and d!331931 b!1162920)))

(declare-fun lambda!47572 () Int)

(assert (=> bs!283764 (= lambda!47572 lambda!47557)))

(declare-fun bs!283765 () Bool)

(assert (= bs!283765 (and d!331931 d!331905)))

(assert (=> bs!283765 (= lambda!47572 lambda!47567)))

(declare-fun bs!283766 () Bool)

(assert (= bs!283766 (and d!331931 d!331919)))

(assert (=> bs!283766 (= lambda!47572 lambda!47570)))

(declare-fun bs!283767 () Bool)

(assert (= bs!283767 (and d!331931 d!331927)))

(assert (=> bs!283767 (= lambda!47572 lambda!47571)))

(declare-fun b!1163015 () Bool)

(declare-fun e!744900 () Bool)

(assert (=> b!1163015 (= e!744900 true)))

(declare-fun b!1163014 () Bool)

(declare-fun e!744899 () Bool)

(assert (=> b!1163014 (= e!744899 e!744900)))

(declare-fun b!1163013 () Bool)

(declare-fun e!744898 () Bool)

(assert (=> b!1163013 (= e!744898 e!744899)))

(assert (=> d!331931 e!744898))

(assert (= b!1163014 b!1163015))

(assert (= b!1163013 b!1163014))

(assert (= (and d!331931 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163013))

(assert (=> b!1163015 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47572))))

(assert (=> b!1163015 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47572))))

(assert (=> d!331931 true))

(declare-fun lt!396728 () Bool)

(assert (=> d!331931 (= lt!396728 (forall!2995 lt!396694 lambda!47572))))

(declare-fun e!744897 () Bool)

(assert (=> d!331931 (= lt!396728 e!744897)))

(declare-fun res!524647 () Bool)

(assert (=> d!331931 (=> res!524647 e!744897)))

(assert (=> d!331931 (= res!524647 (not ((_ is Cons!11455) lt!396694)))))

(assert (=> d!331931 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!331931 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396694) lt!396728)))

(declare-fun b!1163011 () Bool)

(declare-fun e!744896 () Bool)

(assert (=> b!1163011 (= e!744897 e!744896)))

(declare-fun res!524646 () Bool)

(assert (=> b!1163011 (=> (not res!524646) (not e!744896))))

(assert (=> b!1163011 (= res!524646 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396694)))))

(declare-fun b!1163012 () Bool)

(assert (=> b!1163012 (= e!744896 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396694)))))

(assert (= (and d!331931 (not res!524647)) b!1163011))

(assert (= (and b!1163011 res!524646) b!1163012))

(declare-fun m!1331445 () Bool)

(assert (=> d!331931 m!1331445))

(assert (=> d!331931 m!1331229))

(assert (=> b!1163011 m!1331285))

(assert (=> b!1163012 m!1331261))

(assert (=> b!1162918 d!331931))

(declare-fun d!331933 () Bool)

(declare-fun res!524652 () Bool)

(declare-fun e!744905 () Bool)

(assert (=> d!331933 (=> res!524652 e!744905)))

(assert (=> d!331933 (= res!524652 ((_ is Nil!11455) lt!396696))))

(assert (=> d!331933 (= (forall!2995 lt!396696 lambda!47557) e!744905)))

(declare-fun b!1163020 () Bool)

(declare-fun e!744906 () Bool)

(assert (=> b!1163020 (= e!744905 e!744906)))

(declare-fun res!524653 () Bool)

(assert (=> b!1163020 (=> (not res!524653) (not e!744906))))

(declare-fun dynLambda!5046 (Int Token!3648) Bool)

(assert (=> b!1163020 (= res!524653 (dynLambda!5046 lambda!47557 (h!16856 lt!396696)))))

(declare-fun b!1163021 () Bool)

(assert (=> b!1163021 (= e!744906 (forall!2995 (t!110015 lt!396696) lambda!47557))))

(assert (= (and d!331933 (not res!524652)) b!1163020))

(assert (= (and b!1163020 res!524653) b!1163021))

(declare-fun b_lambda!34665 () Bool)

(assert (=> (not b_lambda!34665) (not b!1163020)))

(declare-fun m!1331447 () Bool)

(assert (=> b!1163020 m!1331447))

(declare-fun m!1331449 () Bool)

(assert (=> b!1163021 m!1331449))

(assert (=> b!1162918 d!331933))

(declare-fun d!331935 () Bool)

(assert (=> d!331935 (= (isEmpty!6985 (rules!9520 thiss!10527)) ((_ is Nil!11456) (rules!9520 thiss!10527)))))

(assert (=> b!1162918 d!331935))

(declare-fun b!1163143 () Bool)

(declare-fun res!524724 () Bool)

(declare-fun e!744988 () Bool)

(assert (=> b!1163143 (=> (not res!524724) (not e!744988))))

(declare-fun lt!396925 () List!11479)

(declare-fun lt!396952 () List!11479)

(assert (=> b!1163143 (= res!524724 (subseq!249 lt!396925 lt!396952))))

(declare-fun b!1163144 () Bool)

(declare-fun e!744985 () Bool)

(declare-fun lt!396938 () List!11479)

(declare-fun size!9015 (List!11479) Int)

(assert (=> b!1163144 (= e!744985 (<= 0 (size!9015 lt!396938)))))

(declare-fun d!331937 () Bool)

(declare-fun lt!396930 () Bool)

(declare-fun dropList!314 (BalanceConc!7520 Int) List!11479)

(assert (=> d!331937 (= lt!396930 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 (dropList!314 lt!396687 0) (rules!9520 thiss!10527)))))

(declare-fun lt!396934 () Unit!17495)

(declare-fun lt!396931 () Unit!17495)

(assert (=> d!331937 (= lt!396934 lt!396931)))

(assert (=> d!331937 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396925)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!24 (LexerInterface!1688 List!11480 List!11479 List!11479) Unit!17495)

(assert (=> d!331937 (= lt!396931 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!24 Lexer!1686 (rules!9520 thiss!10527) lt!396952 lt!396925))))

(assert (=> d!331937 e!744988))

(declare-fun res!524726 () Bool)

(assert (=> d!331937 (=> (not res!524726) (not e!744988))))

(assert (=> d!331937 (= res!524726 ((_ is Lexer!1686) Lexer!1686))))

(assert (=> d!331937 (= lt!396925 (dropList!314 lt!396687 0))))

(assert (=> d!331937 (= lt!396952 (list!4216 lt!396687))))

(declare-fun lt!396944 () Unit!17495)

(declare-fun lt!396948 () Unit!17495)

(assert (=> d!331937 (= lt!396944 lt!396948)))

(assert (=> d!331937 (subseq!249 (drop!475 lt!396938 0) lt!396938)))

(declare-fun lemmaDropSubSeq!24 (List!11479 Int) Unit!17495)

(assert (=> d!331937 (= lt!396948 (lemmaDropSubSeq!24 lt!396938 0))))

(assert (=> d!331937 e!744985))

(declare-fun res!524723 () Bool)

(assert (=> d!331937 (=> (not res!524723) (not e!744985))))

(assert (=> d!331937 (= res!524723 (>= 0 0))))

(assert (=> d!331937 (= lt!396938 (list!4216 lt!396687))))

(declare-fun e!744989 () Bool)

(assert (=> d!331937 (= lt!396930 e!744989)))

(declare-fun res!524729 () Bool)

(assert (=> d!331937 (=> res!524729 e!744989)))

(assert (=> d!331937 (= res!524729 (not (< 0 (- (size!9011 lt!396687) 1))))))

(declare-fun e!744986 () Bool)

(assert (=> d!331937 e!744986))

(declare-fun res!524730 () Bool)

(assert (=> d!331937 (=> (not res!524730) (not e!744986))))

(assert (=> d!331937 (= res!524730 (>= 0 0))))

(assert (=> d!331937 (= (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 lt!396687 0 (rules!9520 thiss!10527)) lt!396930)))

(declare-fun b!1163145 () Bool)

(declare-fun res!524728 () Bool)

(assert (=> b!1163145 (=> (not res!524728) (not e!744988))))

(assert (=> b!1163145 (= res!524728 (not (isEmpty!6985 (rules!9520 thiss!10527))))))

(declare-fun b!1163146 () Bool)

(declare-fun e!744987 () Bool)

(assert (=> b!1163146 (= e!744989 e!744987)))

(declare-fun res!524725 () Bool)

(assert (=> b!1163146 (=> (not res!524725) (not e!744987))))

(assert (=> b!1163146 (= res!524725 (separableTokensPredicate!124 Lexer!1686 (apply!2457 lt!396687 0) (apply!2457 lt!396687 (+ 0 1)) (rules!9520 thiss!10527)))))

(declare-fun lt!396928 () Unit!17495)

(declare-fun Unit!17502 () Unit!17495)

(assert (=> b!1163146 (= lt!396928 Unit!17502)))

(assert (=> b!1163146 (> (size!9010 (charsOf!1062 (apply!2457 lt!396687 (+ 0 1)))) 0)))

(declare-fun lt!396926 () Unit!17495)

(declare-fun Unit!17503 () Unit!17495)

(assert (=> b!1163146 (= lt!396926 Unit!17503)))

(assert (=> b!1163146 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (apply!2457 lt!396687 (+ 0 1)))))

(declare-fun lt!396935 () Unit!17495)

(declare-fun Unit!17504 () Unit!17495)

(assert (=> b!1163146 (= lt!396935 Unit!17504)))

(assert (=> b!1163146 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (apply!2457 lt!396687 0))))

(declare-fun lt!396924 () Unit!17495)

(declare-fun lt!396927 () Unit!17495)

(assert (=> b!1163146 (= lt!396924 lt!396927)))

(declare-fun lt!396946 () Token!3648)

(assert (=> b!1163146 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!396946)))

(declare-fun lt!396953 () List!11479)

(assert (=> b!1163146 (= lt!396927 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396953 lt!396946))))

(assert (=> b!1163146 (= lt!396946 (apply!2457 lt!396687 (+ 0 1)))))

(assert (=> b!1163146 (= lt!396953 (list!4216 lt!396687))))

(declare-fun lt!396929 () Unit!17495)

(declare-fun lt!396947 () Unit!17495)

(assert (=> b!1163146 (= lt!396929 lt!396947)))

(declare-fun lt!396943 () Token!3648)

(assert (=> b!1163146 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!396943)))

(declare-fun lt!396949 () List!11479)

(assert (=> b!1163146 (= lt!396947 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396949 lt!396943))))

(assert (=> b!1163146 (= lt!396943 (apply!2457 lt!396687 0))))

(assert (=> b!1163146 (= lt!396949 (list!4216 lt!396687))))

(declare-fun lt!396954 () Unit!17495)

(declare-fun lt!396955 () Unit!17495)

(assert (=> b!1163146 (= lt!396954 lt!396955)))

(declare-fun lt!396951 () List!11479)

(declare-fun lt!396941 () Int)

(assert (=> b!1163146 (= (tail!1680 (drop!475 lt!396951 lt!396941)) (drop!475 lt!396951 (+ lt!396941 1)))))

(assert (=> b!1163146 (= lt!396955 (lemmaDropTail!353 lt!396951 lt!396941))))

(assert (=> b!1163146 (= lt!396941 (+ 0 1))))

(assert (=> b!1163146 (= lt!396951 (list!4216 lt!396687))))

(declare-fun lt!396942 () Unit!17495)

(declare-fun lt!396945 () Unit!17495)

(assert (=> b!1163146 (= lt!396942 lt!396945)))

(declare-fun lt!396940 () List!11479)

(assert (=> b!1163146 (= (tail!1680 (drop!475 lt!396940 0)) (drop!475 lt!396940 (+ 0 1)))))

(assert (=> b!1163146 (= lt!396945 (lemmaDropTail!353 lt!396940 0))))

(assert (=> b!1163146 (= lt!396940 (list!4216 lt!396687))))

(declare-fun lt!396937 () Unit!17495)

(declare-fun lt!396923 () Unit!17495)

(assert (=> b!1163146 (= lt!396937 lt!396923)))

(declare-fun lt!396932 () List!11479)

(declare-fun lt!396950 () Int)

(assert (=> b!1163146 (= (head!2096 (drop!475 lt!396932 lt!396950)) (apply!2458 lt!396932 lt!396950))))

(assert (=> b!1163146 (= lt!396923 (lemmaDropApply!365 lt!396932 lt!396950))))

(assert (=> b!1163146 (= lt!396950 (+ 0 1))))

(assert (=> b!1163146 (= lt!396932 (list!4216 lt!396687))))

(declare-fun lt!396936 () Unit!17495)

(declare-fun lt!396933 () Unit!17495)

(assert (=> b!1163146 (= lt!396936 lt!396933)))

(declare-fun lt!396939 () List!11479)

(assert (=> b!1163146 (= (head!2096 (drop!475 lt!396939 0)) (apply!2458 lt!396939 0))))

(assert (=> b!1163146 (= lt!396933 (lemmaDropApply!365 lt!396939 0))))

(assert (=> b!1163146 (= lt!396939 (list!4216 lt!396687))))

(declare-fun b!1163147 () Bool)

(assert (=> b!1163147 (= e!744987 (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 lt!396687 (+ 0 1) (rules!9520 thiss!10527)))))

(declare-fun b!1163148 () Bool)

(assert (=> b!1163148 (= e!744988 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396952))))

(declare-fun b!1163149 () Bool)

(assert (=> b!1163149 (= e!744986 (<= 0 (size!9011 lt!396687)))))

(declare-fun b!1163150 () Bool)

(declare-fun res!524727 () Bool)

(assert (=> b!1163150 (=> (not res!524727) (not e!744988))))

(assert (=> b!1163150 (= res!524727 (rulesInvariant!1562 Lexer!1686 (rules!9520 thiss!10527)))))

(assert (= (and d!331937 res!524730) b!1163149))

(assert (= (and d!331937 (not res!524729)) b!1163146))

(assert (= (and b!1163146 res!524725) b!1163147))

(assert (= (and d!331937 res!524723) b!1163144))

(assert (= (and d!331937 res!524726) b!1163145))

(assert (= (and b!1163145 res!524728) b!1163150))

(assert (= (and b!1163150 res!524727) b!1163143))

(assert (= (and b!1163143 res!524724) b!1163148))

(assert (=> b!1163145 m!1331229))

(declare-fun m!1331659 () Bool)

(assert (=> b!1163146 m!1331659))

(declare-fun m!1331661 () Bool)

(assert (=> b!1163146 m!1331661))

(declare-fun m!1331663 () Bool)

(assert (=> b!1163146 m!1331663))

(declare-fun m!1331667 () Bool)

(assert (=> b!1163146 m!1331667))

(declare-fun m!1331669 () Bool)

(assert (=> b!1163146 m!1331669))

(declare-fun m!1331671 () Bool)

(assert (=> b!1163146 m!1331671))

(declare-fun m!1331673 () Bool)

(assert (=> b!1163146 m!1331673))

(assert (=> b!1163146 m!1331669))

(declare-fun m!1331675 () Bool)

(assert (=> b!1163146 m!1331675))

(declare-fun m!1331677 () Bool)

(assert (=> b!1163146 m!1331677))

(declare-fun m!1331679 () Bool)

(assert (=> b!1163146 m!1331679))

(declare-fun m!1331681 () Bool)

(assert (=> b!1163146 m!1331681))

(declare-fun m!1331683 () Bool)

(assert (=> b!1163146 m!1331683))

(declare-fun m!1331685 () Bool)

(assert (=> b!1163146 m!1331685))

(declare-fun m!1331687 () Bool)

(assert (=> b!1163146 m!1331687))

(declare-fun m!1331689 () Bool)

(assert (=> b!1163146 m!1331689))

(assert (=> b!1163146 m!1331677))

(declare-fun m!1331691 () Bool)

(assert (=> b!1163146 m!1331691))

(declare-fun m!1331693 () Bool)

(assert (=> b!1163146 m!1331693))

(assert (=> b!1163146 m!1331671))

(declare-fun m!1331695 () Bool)

(assert (=> b!1163146 m!1331695))

(assert (=> b!1163146 m!1331671))

(declare-fun m!1331697 () Bool)

(assert (=> b!1163146 m!1331697))

(assert (=> b!1163146 m!1331279))

(declare-fun m!1331699 () Bool)

(assert (=> b!1163146 m!1331699))

(declare-fun m!1331701 () Bool)

(assert (=> b!1163146 m!1331701))

(assert (=> b!1163146 m!1331671))

(declare-fun m!1331703 () Bool)

(assert (=> b!1163146 m!1331703))

(declare-fun m!1331705 () Bool)

(assert (=> b!1163146 m!1331705))

(assert (=> b!1163146 m!1331703))

(declare-fun m!1331707 () Bool)

(assert (=> b!1163146 m!1331707))

(assert (=> b!1163146 m!1331669))

(declare-fun m!1331709 () Bool)

(assert (=> b!1163146 m!1331709))

(assert (=> b!1163146 m!1331681))

(assert (=> b!1163146 m!1331709))

(declare-fun m!1331711 () Bool)

(assert (=> b!1163146 m!1331711))

(declare-fun m!1331713 () Bool)

(assert (=> b!1163146 m!1331713))

(assert (=> b!1163146 m!1331699))

(assert (=> b!1163150 m!1331355))

(declare-fun m!1331715 () Bool)

(assert (=> d!331937 m!1331715))

(declare-fun m!1331717 () Bool)

(assert (=> d!331937 m!1331717))

(assert (=> d!331937 m!1331715))

(assert (=> d!331937 m!1331279))

(declare-fun m!1331719 () Bool)

(assert (=> d!331937 m!1331719))

(declare-fun m!1331721 () Bool)

(assert (=> d!331937 m!1331721))

(declare-fun m!1331723 () Bool)

(assert (=> d!331937 m!1331723))

(assert (=> d!331937 m!1331719))

(declare-fun m!1331725 () Bool)

(assert (=> d!331937 m!1331725))

(declare-fun m!1331727 () Bool)

(assert (=> d!331937 m!1331727))

(declare-fun m!1331729 () Bool)

(assert (=> d!331937 m!1331729))

(assert (=> b!1163149 m!1331725))

(declare-fun m!1331731 () Bool)

(assert (=> b!1163147 m!1331731))

(declare-fun m!1331733 () Bool)

(assert (=> b!1163148 m!1331733))

(declare-fun m!1331735 () Bool)

(assert (=> b!1163143 m!1331735))

(declare-fun m!1331737 () Bool)

(assert (=> b!1163144 m!1331737))

(assert (=> b!1162918 d!331937))

(declare-fun d!331985 () Bool)

(assert (=> d!331985 (forall!2995 lt!396696 lambda!47557)))

(declare-fun lt!396961 () Unit!17495)

(declare-fun choose!7485 (List!11479 List!11479 Int) Unit!17495)

(assert (=> d!331985 (= lt!396961 (choose!7485 lt!396696 lt!396692 lambda!47557))))

(assert (=> d!331985 (forall!2995 lt!396692 lambda!47557)))

(assert (=> d!331985 (= (lemmaForallSubseq!141 lt!396696 lt!396692 lambda!47557) lt!396961)))

(declare-fun bs!283774 () Bool)

(assert (= bs!283774 d!331985))

(assert (=> bs!283774 m!1331241))

(declare-fun m!1331747 () Bool)

(assert (=> bs!283774 m!1331747))

(declare-fun m!1331749 () Bool)

(assert (=> bs!283774 m!1331749))

(assert (=> b!1162918 d!331985))

(declare-fun bs!283783 () Bool)

(declare-fun b!1163185 () Bool)

(assert (= bs!283783 (and b!1163185 d!331905)))

(declare-fun lambda!47580 () Int)

(assert (=> bs!283783 (= lambda!47580 lambda!47567)))

(declare-fun bs!283784 () Bool)

(assert (= bs!283784 (and b!1163185 d!331927)))

(assert (=> bs!283784 (= lambda!47580 lambda!47571)))

(declare-fun bs!283785 () Bool)

(assert (= bs!283785 (and b!1163185 d!331919)))

(assert (=> bs!283785 (= lambda!47580 lambda!47570)))

(declare-fun bs!283786 () Bool)

(assert (= bs!283786 (and b!1163185 b!1162920)))

(assert (=> bs!283786 (= lambda!47580 lambda!47557)))

(declare-fun bs!283787 () Bool)

(assert (= bs!283787 (and b!1163185 d!331931)))

(assert (=> bs!283787 (= lambda!47580 lambda!47572)))

(declare-fun b!1163189 () Bool)

(declare-fun e!745026 () Bool)

(assert (=> b!1163189 (= e!745026 true)))

(declare-fun b!1163188 () Bool)

(declare-fun e!745025 () Bool)

(assert (=> b!1163188 (= e!745025 e!745026)))

(declare-fun b!1163187 () Bool)

(declare-fun e!745024 () Bool)

(assert (=> b!1163187 (= e!745024 e!745025)))

(assert (=> b!1163185 e!745024))

(assert (= b!1163188 b!1163189))

(assert (= b!1163187 b!1163188))

(assert (= (and b!1163185 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163187))

(assert (=> b!1163189 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47580))))

(assert (=> b!1163189 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47580))))

(declare-fun b!1163184 () Bool)

(declare-fun e!745022 () Bool)

(declare-fun lt!396982 () List!11479)

(assert (=> b!1163184 (= e!745022 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396982)))))

(declare-fun d!331991 () Bool)

(declare-fun e!745020 () Bool)

(assert (=> d!331991 e!745020))

(declare-fun res!524755 () Bool)

(assert (=> d!331991 (=> (not res!524755) (not e!745020))))

(declare-fun e!745021 () Bool)

(assert (=> d!331991 (= res!524755 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (drop!475 lt!396692 from!787)) e!745021))))

(declare-fun res!524754 () Bool)

(assert (=> d!331991 (=> res!524754 e!745021)))

(assert (=> d!331991 (= res!524754 (not ((_ is Cons!11455) lt!396982)))))

(assert (=> d!331991 (= lt!396982 (drop!475 lt!396692 from!787))))

(declare-fun lt!396983 () Unit!17495)

(declare-fun choose!7486 (LexerInterface!1688 List!11479 Int List!11480) Unit!17495)

(assert (=> d!331991 (= lt!396983 (choose!7486 Lexer!1686 lt!396692 from!787 (rules!9520 thiss!10527)))))

(assert (=> d!331991 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!331991 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!40 Lexer!1686 lt!396692 from!787 (rules!9520 thiss!10527)) lt!396983)))

(declare-fun b!1163183 () Bool)

(assert (=> b!1163183 (= e!745021 e!745022)))

(declare-fun res!524752 () Bool)

(assert (=> b!1163183 (=> (not res!524752) (not e!745022))))

(assert (=> b!1163183 (= res!524752 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396982)))))

(assert (=> b!1163185 (= e!745020 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 (drop!475 lt!396692 from!787) (rules!9520 thiss!10527)))))

(declare-fun lt!396987 () Unit!17495)

(declare-fun lt!396986 () Unit!17495)

(assert (=> b!1163185 (= lt!396987 lt!396986)))

(declare-fun lt!396985 () List!11479)

(assert (=> b!1163185 (forall!2995 lt!396985 lambda!47580)))

(assert (=> b!1163185 (= lt!396986 (lemmaForallSubseq!141 lt!396985 lt!396692 lambda!47580))))

(declare-fun e!745023 () Bool)

(assert (=> b!1163185 e!745023))

(declare-fun res!524753 () Bool)

(assert (=> b!1163185 (=> (not res!524753) (not e!745023))))

(assert (=> b!1163185 (= res!524753 (forall!2995 lt!396692 lambda!47580))))

(assert (=> b!1163185 (= lt!396985 (drop!475 lt!396692 from!787))))

(declare-fun lt!396981 () Unit!17495)

(declare-fun lt!396984 () Unit!17495)

(assert (=> b!1163185 (= lt!396981 lt!396984)))

(assert (=> b!1163185 (subseq!249 (drop!475 lt!396692 from!787) lt!396692)))

(assert (=> b!1163185 (= lt!396984 (lemmaDropSubseq!40 lt!396692 from!787))))

(declare-fun b!1163186 () Bool)

(assert (=> b!1163186 (= e!745023 (subseq!249 lt!396985 lt!396692))))

(assert (= (and d!331991 (not res!524754)) b!1163183))

(assert (= (and b!1163183 res!524752) b!1163184))

(assert (= (and d!331991 res!524755) b!1163185))

(assert (= (and b!1163185 res!524753) b!1163186))

(declare-fun m!1331763 () Bool)

(assert (=> b!1163183 m!1331763))

(declare-fun m!1331765 () Bool)

(assert (=> b!1163184 m!1331765))

(declare-fun m!1331767 () Bool)

(assert (=> b!1163186 m!1331767))

(assert (=> b!1163185 m!1331233))

(declare-fun m!1331769 () Bool)

(assert (=> b!1163185 m!1331769))

(declare-fun m!1331771 () Bool)

(assert (=> b!1163185 m!1331771))

(assert (=> b!1163185 m!1331233))

(assert (=> b!1163185 m!1331239))

(assert (=> b!1163185 m!1331233))

(declare-fun m!1331773 () Bool)

(assert (=> b!1163185 m!1331773))

(declare-fun m!1331775 () Bool)

(assert (=> b!1163185 m!1331775))

(declare-fun m!1331777 () Bool)

(assert (=> b!1163185 m!1331777))

(assert (=> d!331991 m!1331233))

(assert (=> d!331991 m!1331233))

(declare-fun m!1331779 () Bool)

(assert (=> d!331991 m!1331779))

(declare-fun m!1331781 () Bool)

(assert (=> d!331991 m!1331781))

(assert (=> d!331991 m!1331229))

(assert (=> b!1162918 d!331991))

(declare-fun d!331999 () Bool)

(assert (=> d!331999 (forall!2995 lt!396694 lambda!47557)))

(declare-fun lt!396988 () Unit!17495)

(assert (=> d!331999 (= lt!396988 (choose!7485 lt!396694 lt!396696 lambda!47557))))

(assert (=> d!331999 (forall!2995 lt!396696 lambda!47557)))

(assert (=> d!331999 (= (lemmaForallSubseq!141 lt!396694 lt!396696 lambda!47557) lt!396988)))

(declare-fun bs!283788 () Bool)

(assert (= bs!283788 d!331999))

(assert (=> bs!283788 m!1331253))

(declare-fun m!1331783 () Bool)

(assert (=> bs!283788 m!1331783))

(assert (=> bs!283788 m!1331241))

(assert (=> b!1162918 d!331999))

(declare-fun bs!283796 () Bool)

(declare-fun b!1163246 () Bool)

(assert (= bs!283796 (and b!1163246 d!331905)))

(declare-fun lambda!47584 () Int)

(assert (=> bs!283796 (= lambda!47584 lambda!47567)))

(declare-fun bs!283797 () Bool)

(assert (= bs!283797 (and b!1163246 d!331927)))

(assert (=> bs!283797 (= lambda!47584 lambda!47571)))

(declare-fun bs!283798 () Bool)

(assert (= bs!283798 (and b!1163246 d!331919)))

(assert (=> bs!283798 (= lambda!47584 lambda!47570)))

(declare-fun bs!283799 () Bool)

(assert (= bs!283799 (and b!1163246 b!1162920)))

(assert (=> bs!283799 (= lambda!47584 lambda!47557)))

(declare-fun bs!283800 () Bool)

(assert (= bs!283800 (and b!1163246 d!331931)))

(assert (=> bs!283800 (= lambda!47584 lambda!47572)))

(declare-fun bs!283801 () Bool)

(assert (= bs!283801 (and b!1163246 b!1163185)))

(assert (=> bs!283801 (= lambda!47584 lambda!47580)))

(declare-fun b!1163250 () Bool)

(declare-fun e!745075 () Bool)

(assert (=> b!1163250 (= e!745075 true)))

(declare-fun b!1163249 () Bool)

(declare-fun e!745074 () Bool)

(assert (=> b!1163249 (= e!745074 e!745075)))

(declare-fun b!1163248 () Bool)

(declare-fun e!745073 () Bool)

(assert (=> b!1163248 (= e!745073 e!745074)))

(assert (=> b!1163246 e!745073))

(assert (= b!1163249 b!1163250))

(assert (= b!1163248 b!1163249))

(assert (= (and b!1163246 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163248))

(assert (=> b!1163250 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47584))))

(assert (=> b!1163250 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47584))))

(declare-fun d!332001 () Bool)

(declare-fun e!745072 () Bool)

(assert (=> d!332001 e!745072))

(declare-fun res!524791 () Bool)

(assert (=> d!332001 (=> (not res!524791) (not e!745072))))

(declare-fun e!745069 () Bool)

(assert (=> d!332001 (= res!524791 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (take!65 lt!396696 (- to!267 from!787))) e!745069))))

(declare-fun res!524792 () Bool)

(assert (=> d!332001 (=> res!524792 e!745069)))

(declare-fun lt!397067 () List!11479)

(assert (=> d!332001 (= res!524792 (not ((_ is Cons!11455) lt!397067)))))

(assert (=> d!332001 (= lt!397067 (take!65 lt!396696 (- to!267 from!787)))))

(declare-fun lt!397063 () Unit!17495)

(declare-fun choose!7488 (LexerInterface!1688 List!11479 Int List!11480) Unit!17495)

(assert (=> d!332001 (= lt!397063 (choose!7488 Lexer!1686 lt!396696 (- to!267 from!787) (rules!9520 thiss!10527)))))

(assert (=> d!332001 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332001 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!32 Lexer!1686 lt!396696 (- to!267 from!787) (rules!9520 thiss!10527)) lt!397063)))

(declare-fun b!1163247 () Bool)

(declare-fun e!745070 () Bool)

(declare-fun lt!397064 () List!11479)

(assert (=> b!1163247 (= e!745070 (subseq!249 lt!397064 lt!396696))))

(declare-fun b!1163244 () Bool)

(declare-fun e!745071 () Bool)

(assert (=> b!1163244 (= e!745069 e!745071)))

(declare-fun res!524789 () Bool)

(assert (=> b!1163244 (=> (not res!524789) (not e!745071))))

(assert (=> b!1163244 (= res!524789 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!397067)))))

(assert (=> b!1163246 (= e!745072 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 (take!65 lt!396696 (- to!267 from!787)) (rules!9520 thiss!10527)))))

(declare-fun lt!397066 () Unit!17495)

(declare-fun lt!397065 () Unit!17495)

(assert (=> b!1163246 (= lt!397066 lt!397065)))

(assert (=> b!1163246 (forall!2995 lt!397064 lambda!47584)))

(assert (=> b!1163246 (= lt!397065 (lemmaForallSubseq!141 lt!397064 lt!396696 lambda!47584))))

(assert (=> b!1163246 e!745070))

(declare-fun res!524790 () Bool)

(assert (=> b!1163246 (=> (not res!524790) (not e!745070))))

(assert (=> b!1163246 (= res!524790 (forall!2995 lt!396696 lambda!47584))))

(assert (=> b!1163246 (= lt!397064 (take!65 lt!396696 (- to!267 from!787)))))

(declare-fun b!1163245 () Bool)

(assert (=> b!1163245 (= e!745071 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!397067)))))

(assert (= (and d!332001 (not res!524792)) b!1163244))

(assert (= (and b!1163244 res!524789) b!1163245))

(assert (= (and d!332001 res!524791) b!1163246))

(assert (= (and b!1163246 res!524790) b!1163247))

(declare-fun m!1331897 () Bool)

(assert (=> b!1163245 m!1331897))

(declare-fun m!1331899 () Bool)

(assert (=> b!1163247 m!1331899))

(declare-fun m!1331901 () Bool)

(assert (=> b!1163244 m!1331901))

(declare-fun m!1331903 () Bool)

(assert (=> b!1163246 m!1331903))

(assert (=> b!1163246 m!1331243))

(declare-fun m!1331905 () Bool)

(assert (=> b!1163246 m!1331905))

(declare-fun m!1331907 () Bool)

(assert (=> b!1163246 m!1331907))

(assert (=> b!1163246 m!1331243))

(declare-fun m!1331909 () Bool)

(assert (=> b!1163246 m!1331909))

(assert (=> d!332001 m!1331243))

(assert (=> d!332001 m!1331243))

(declare-fun m!1331911 () Bool)

(assert (=> d!332001 m!1331911))

(declare-fun m!1331913 () Bool)

(assert (=> d!332001 m!1331913))

(assert (=> d!332001 m!1331229))

(assert (=> b!1162918 d!332001))

(declare-fun b!1163265 () Bool)

(declare-fun e!745087 () List!11479)

(assert (=> b!1163265 (= e!745087 Nil!11455)))

(declare-fun b!1163266 () Bool)

(assert (=> b!1163266 (= e!745087 (Cons!11455 (h!16856 lt!396696) (take!65 (t!110015 lt!396696) (- (- to!267 from!787) 1))))))

(declare-fun b!1163267 () Bool)

(declare-fun e!745084 () Int)

(assert (=> b!1163267 (= e!745084 0)))

(declare-fun b!1163268 () Bool)

(declare-fun e!745086 () Int)

(assert (=> b!1163268 (= e!745086 (size!9015 lt!396696))))

(declare-fun b!1163269 () Bool)

(assert (=> b!1163269 (= e!745084 e!745086)))

(declare-fun c!194454 () Bool)

(assert (=> b!1163269 (= c!194454 (>= (- to!267 from!787) (size!9015 lt!396696)))))

(declare-fun b!1163270 () Bool)

(assert (=> b!1163270 (= e!745086 (- to!267 from!787))))

(declare-fun b!1163271 () Bool)

(declare-fun e!745085 () Bool)

(declare-fun lt!397070 () List!11479)

(assert (=> b!1163271 (= e!745085 (= (size!9015 lt!397070) e!745084))))

(declare-fun c!194452 () Bool)

(assert (=> b!1163271 (= c!194452 (<= (- to!267 from!787) 0))))

(declare-fun d!332019 () Bool)

(assert (=> d!332019 e!745085))

(declare-fun res!524795 () Bool)

(assert (=> d!332019 (=> (not res!524795) (not e!745085))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1604 (List!11479) (InoxSet Token!3648))

(assert (=> d!332019 (= res!524795 (= ((_ map implies) (content!1604 lt!397070) (content!1604 lt!396696)) ((as const (InoxSet Token!3648)) true)))))

(assert (=> d!332019 (= lt!397070 e!745087)))

(declare-fun c!194453 () Bool)

(assert (=> d!332019 (= c!194453 (or ((_ is Nil!11455) lt!396696) (<= (- to!267 from!787) 0)))))

(assert (=> d!332019 (= (take!65 lt!396696 (- to!267 from!787)) lt!397070)))

(assert (= (and d!332019 c!194453) b!1163265))

(assert (= (and d!332019 (not c!194453)) b!1163266))

(assert (= (and d!332019 res!524795) b!1163271))

(assert (= (and b!1163271 c!194452) b!1163267))

(assert (= (and b!1163271 (not c!194452)) b!1163269))

(assert (= (and b!1163269 c!194454) b!1163268))

(assert (= (and b!1163269 (not c!194454)) b!1163270))

(declare-fun m!1331915 () Bool)

(assert (=> b!1163271 m!1331915))

(declare-fun m!1331917 () Bool)

(assert (=> d!332019 m!1331917))

(declare-fun m!1331919 () Bool)

(assert (=> d!332019 m!1331919))

(declare-fun m!1331921 () Bool)

(assert (=> b!1163268 m!1331921))

(declare-fun m!1331923 () Bool)

(assert (=> b!1163266 m!1331923))

(assert (=> b!1163269 m!1331921))

(assert (=> b!1162918 d!332019))

(declare-fun d!332021 () Bool)

(assert (=> d!332021 (subseq!249 (drop!475 lt!396692 from!787) lt!396692)))

(declare-fun lt!397073 () Unit!17495)

(declare-fun choose!7490 (List!11479 Int) Unit!17495)

(assert (=> d!332021 (= lt!397073 (choose!7490 lt!396692 from!787))))

(assert (=> d!332021 (= (lemmaDropSubseq!40 lt!396692 from!787) lt!397073)))

(declare-fun bs!283802 () Bool)

(assert (= bs!283802 d!332021))

(assert (=> bs!283802 m!1331233))

(assert (=> bs!283802 m!1331233))

(assert (=> bs!283802 m!1331769))

(declare-fun m!1331925 () Bool)

(assert (=> bs!283802 m!1331925))

(assert (=> b!1162918 d!332021))

(declare-fun b!1163282 () Bool)

(declare-fun e!745098 () Bool)

(assert (=> b!1163282 (= e!745098 (subseq!249 (t!110015 lt!396696) (t!110015 lt!396692)))))

(declare-fun d!332023 () Bool)

(declare-fun res!524804 () Bool)

(declare-fun e!745097 () Bool)

(assert (=> d!332023 (=> res!524804 e!745097)))

(assert (=> d!332023 (= res!524804 ((_ is Nil!11455) lt!396696))))

(assert (=> d!332023 (= (subseq!249 lt!396696 lt!396692) e!745097)))

(declare-fun b!1163283 () Bool)

(declare-fun e!745096 () Bool)

(assert (=> b!1163283 (= e!745096 (subseq!249 lt!396696 (t!110015 lt!396692)))))

(declare-fun b!1163281 () Bool)

(declare-fun e!745099 () Bool)

(assert (=> b!1163281 (= e!745099 e!745096)))

(declare-fun res!524806 () Bool)

(assert (=> b!1163281 (=> res!524806 e!745096)))

(assert (=> b!1163281 (= res!524806 e!745098)))

(declare-fun res!524807 () Bool)

(assert (=> b!1163281 (=> (not res!524807) (not e!745098))))

(assert (=> b!1163281 (= res!524807 (= (h!16856 lt!396696) (h!16856 lt!396692)))))

(declare-fun b!1163280 () Bool)

(assert (=> b!1163280 (= e!745097 e!745099)))

(declare-fun res!524805 () Bool)

(assert (=> b!1163280 (=> (not res!524805) (not e!745099))))

(assert (=> b!1163280 (= res!524805 ((_ is Cons!11455) lt!396692))))

(assert (= (and d!332023 (not res!524804)) b!1163280))

(assert (= (and b!1163280 res!524805) b!1163281))

(assert (= (and b!1163281 res!524807) b!1163282))

(assert (= (and b!1163281 (not res!524806)) b!1163283))

(declare-fun m!1331927 () Bool)

(assert (=> b!1163282 m!1331927))

(declare-fun m!1331929 () Bool)

(assert (=> b!1163283 m!1331929))

(assert (=> b!1162918 d!332023))

(declare-fun d!332025 () Bool)

(declare-fun res!524808 () Bool)

(declare-fun e!745100 () Bool)

(assert (=> d!332025 (=> res!524808 e!745100)))

(assert (=> d!332025 (= res!524808 ((_ is Nil!11455) lt!396694))))

(assert (=> d!332025 (= (forall!2995 lt!396694 lambda!47557) e!745100)))

(declare-fun b!1163284 () Bool)

(declare-fun e!745101 () Bool)

(assert (=> b!1163284 (= e!745100 e!745101)))

(declare-fun res!524809 () Bool)

(assert (=> b!1163284 (=> (not res!524809) (not e!745101))))

(assert (=> b!1163284 (= res!524809 (dynLambda!5046 lambda!47557 (h!16856 lt!396694)))))

(declare-fun b!1163285 () Bool)

(assert (=> b!1163285 (= e!745101 (forall!2995 (t!110015 lt!396694) lambda!47557))))

(assert (= (and d!332025 (not res!524808)) b!1163284))

(assert (= (and b!1163284 res!524809) b!1163285))

(declare-fun b_lambda!34669 () Bool)

(assert (=> (not b_lambda!34669) (not b!1163284)))

(declare-fun m!1331931 () Bool)

(assert (=> b!1163284 m!1331931))

(declare-fun m!1331933 () Bool)

(assert (=> b!1163285 m!1331933))

(assert (=> b!1162918 d!332025))

(declare-fun b!1163304 () Bool)

(declare-fun e!745115 () Int)

(declare-fun e!745113 () Int)

(assert (=> b!1163304 (= e!745115 e!745113)))

(declare-fun c!194463 () Bool)

(declare-fun call!82138 () Int)

(assert (=> b!1163304 (= c!194463 (>= from!787 call!82138))))

(declare-fun b!1163305 () Bool)

(assert (=> b!1163305 (= e!745113 0)))

(declare-fun b!1163306 () Bool)

(declare-fun e!745116 () List!11479)

(assert (=> b!1163306 (= e!745116 lt!396692)))

(declare-fun d!332027 () Bool)

(declare-fun e!745114 () Bool)

(assert (=> d!332027 e!745114))

(declare-fun res!524812 () Bool)

(assert (=> d!332027 (=> (not res!524812) (not e!745114))))

(declare-fun lt!397076 () List!11479)

(assert (=> d!332027 (= res!524812 (= ((_ map implies) (content!1604 lt!397076) (content!1604 lt!396692)) ((as const (InoxSet Token!3648)) true)))))

(declare-fun e!745112 () List!11479)

(assert (=> d!332027 (= lt!397076 e!745112)))

(declare-fun c!194466 () Bool)

(assert (=> d!332027 (= c!194466 ((_ is Nil!11455) lt!396692))))

(assert (=> d!332027 (= (drop!475 lt!396692 from!787) lt!397076)))

(declare-fun b!1163307 () Bool)

(assert (=> b!1163307 (= e!745116 (drop!475 (t!110015 lt!396692) (- from!787 1)))))

(declare-fun bm!82133 () Bool)

(assert (=> bm!82133 (= call!82138 (size!9015 lt!396692))))

(declare-fun b!1163308 () Bool)

(assert (=> b!1163308 (= e!745112 e!745116)))

(declare-fun c!194465 () Bool)

(assert (=> b!1163308 (= c!194465 (<= from!787 0))))

(declare-fun b!1163309 () Bool)

(assert (=> b!1163309 (= e!745112 Nil!11455)))

(declare-fun b!1163310 () Bool)

(assert (=> b!1163310 (= e!745115 call!82138)))

(declare-fun b!1163311 () Bool)

(assert (=> b!1163311 (= e!745113 (- call!82138 from!787))))

(declare-fun b!1163312 () Bool)

(assert (=> b!1163312 (= e!745114 (= (size!9015 lt!397076) e!745115))))

(declare-fun c!194464 () Bool)

(assert (=> b!1163312 (= c!194464 (<= from!787 0))))

(assert (= (and d!332027 c!194466) b!1163309))

(assert (= (and d!332027 (not c!194466)) b!1163308))

(assert (= (and b!1163308 c!194465) b!1163306))

(assert (= (and b!1163308 (not c!194465)) b!1163307))

(assert (= (and d!332027 res!524812) b!1163312))

(assert (= (and b!1163312 c!194464) b!1163310))

(assert (= (and b!1163312 (not c!194464)) b!1163304))

(assert (= (and b!1163304 c!194463) b!1163305))

(assert (= (and b!1163304 (not c!194463)) b!1163311))

(assert (= (or b!1163310 b!1163304 b!1163311) bm!82133))

(declare-fun m!1331935 () Bool)

(assert (=> d!332027 m!1331935))

(declare-fun m!1331937 () Bool)

(assert (=> d!332027 m!1331937))

(declare-fun m!1331939 () Bool)

(assert (=> b!1163307 m!1331939))

(declare-fun m!1331941 () Bool)

(assert (=> bm!82133 m!1331941))

(declare-fun m!1331943 () Bool)

(assert (=> b!1163312 m!1331943))

(assert (=> b!1162918 d!332027))

(declare-fun d!332029 () Bool)

(assert (=> d!332029 (= (separableTokens!130 Lexer!1686 lt!396687 (rules!9520 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 lt!396687 0 (rules!9520 thiss!10527)))))

(declare-fun bs!283810 () Bool)

(assert (= bs!283810 d!332029))

(assert (=> bs!283810 m!1331255))

(assert (=> b!1162918 d!332029))

(declare-fun bs!283811 () Bool)

(declare-fun d!332037 () Bool)

(assert (= bs!283811 (and d!332037 d!331905)))

(declare-fun lambda!47588 () Int)

(assert (=> bs!283811 (= lambda!47588 lambda!47567)))

(declare-fun bs!283812 () Bool)

(assert (= bs!283812 (and d!332037 b!1163246)))

(assert (=> bs!283812 (= lambda!47588 lambda!47584)))

(declare-fun bs!283813 () Bool)

(assert (= bs!283813 (and d!332037 d!331927)))

(assert (=> bs!283813 (= lambda!47588 lambda!47571)))

(declare-fun bs!283814 () Bool)

(assert (= bs!283814 (and d!332037 d!331919)))

(assert (=> bs!283814 (= lambda!47588 lambda!47570)))

(declare-fun bs!283815 () Bool)

(assert (= bs!283815 (and d!332037 b!1162920)))

(assert (=> bs!283815 (= lambda!47588 lambda!47557)))

(declare-fun bs!283816 () Bool)

(assert (= bs!283816 (and d!332037 d!331931)))

(assert (=> bs!283816 (= lambda!47588 lambda!47572)))

(declare-fun bs!283817 () Bool)

(assert (= bs!283817 (and d!332037 b!1163185)))

(assert (=> bs!283817 (= lambda!47588 lambda!47580)))

(declare-fun b!1163334 () Bool)

(declare-fun e!745138 () Bool)

(assert (=> b!1163334 (= e!745138 true)))

(declare-fun b!1163333 () Bool)

(declare-fun e!745137 () Bool)

(assert (=> b!1163333 (= e!745137 e!745138)))

(declare-fun b!1163332 () Bool)

(declare-fun e!745136 () Bool)

(assert (=> b!1163332 (= e!745136 e!745137)))

(assert (=> d!332037 e!745136))

(assert (= b!1163333 b!1163334))

(assert (= b!1163332 b!1163333))

(assert (= (and d!332037 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163332))

(assert (=> b!1163334 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47588))))

(assert (=> b!1163334 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47588))))

(assert (=> d!332037 true))

(declare-fun lt!397099 () Bool)

(assert (=> d!332037 (= lt!397099 (forall!2995 lt!396696 lambda!47588))))

(declare-fun e!745135 () Bool)

(assert (=> d!332037 (= lt!397099 e!745135)))

(declare-fun res!524828 () Bool)

(assert (=> d!332037 (=> res!524828 e!745135)))

(assert (=> d!332037 (= res!524828 (not ((_ is Cons!11455) lt!396696)))))

(assert (=> d!332037 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332037 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396696) lt!397099)))

(declare-fun b!1163330 () Bool)

(declare-fun e!745134 () Bool)

(assert (=> b!1163330 (= e!745135 e!745134)))

(declare-fun res!524827 () Bool)

(assert (=> b!1163330 (=> (not res!524827) (not e!745134))))

(assert (=> b!1163330 (= res!524827 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396696)))))

(declare-fun b!1163331 () Bool)

(assert (=> b!1163331 (= e!745134 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396696)))))

(assert (= (and d!332037 (not res!524828)) b!1163330))

(assert (= (and b!1163330 res!524827) b!1163331))

(declare-fun m!1331971 () Bool)

(assert (=> d!332037 m!1331971))

(assert (=> d!332037 m!1331229))

(assert (=> b!1163330 m!1331291))

(assert (=> b!1163331 m!1331263))

(assert (=> b!1162918 d!332037))

(declare-fun bs!283818 () Bool)

(declare-fun d!332039 () Bool)

(assert (= bs!283818 (and d!332039 d!331905)))

(declare-fun lambda!47589 () Int)

(assert (=> bs!283818 (= lambda!47589 lambda!47567)))

(declare-fun bs!283819 () Bool)

(assert (= bs!283819 (and d!332039 d!331927)))

(assert (=> bs!283819 (= lambda!47589 lambda!47571)))

(declare-fun bs!283820 () Bool)

(assert (= bs!283820 (and d!332039 d!331919)))

(assert (=> bs!283820 (= lambda!47589 lambda!47570)))

(declare-fun bs!283821 () Bool)

(assert (= bs!283821 (and d!332039 b!1162920)))

(assert (=> bs!283821 (= lambda!47589 lambda!47557)))

(declare-fun bs!283822 () Bool)

(assert (= bs!283822 (and d!332039 d!331931)))

(assert (=> bs!283822 (= lambda!47589 lambda!47572)))

(declare-fun bs!283823 () Bool)

(assert (= bs!283823 (and d!332039 b!1163185)))

(assert (=> bs!283823 (= lambda!47589 lambda!47580)))

(declare-fun bs!283824 () Bool)

(assert (= bs!283824 (and d!332039 b!1163246)))

(assert (=> bs!283824 (= lambda!47589 lambda!47584)))

(declare-fun bs!283825 () Bool)

(assert (= bs!283825 (and d!332039 d!332037)))

(assert (=> bs!283825 (= lambda!47589 lambda!47588)))

(declare-fun b!1163339 () Bool)

(declare-fun e!745143 () Bool)

(assert (=> b!1163339 (= e!745143 true)))

(declare-fun b!1163338 () Bool)

(declare-fun e!745142 () Bool)

(assert (=> b!1163338 (= e!745142 e!745143)))

(declare-fun b!1163337 () Bool)

(declare-fun e!745141 () Bool)

(assert (=> b!1163337 (= e!745141 e!745142)))

(assert (=> d!332039 e!745141))

(assert (= b!1163338 b!1163339))

(assert (= b!1163337 b!1163338))

(assert (= (and d!332039 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163337))

(assert (=> b!1163339 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47589))))

(assert (=> b!1163339 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47589))))

(assert (=> d!332039 true))

(declare-fun lt!397100 () Bool)

(assert (=> d!332039 (= lt!397100 (forall!2995 (t!110015 lt!396692) lambda!47589))))

(declare-fun e!745140 () Bool)

(assert (=> d!332039 (= lt!397100 e!745140)))

(declare-fun res!524830 () Bool)

(assert (=> d!332039 (=> res!524830 e!745140)))

(assert (=> d!332039 (= res!524830 (not ((_ is Cons!11455) (t!110015 lt!396692))))))

(assert (=> d!332039 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332039 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396692)) lt!397100)))

(declare-fun b!1163335 () Bool)

(declare-fun e!745139 () Bool)

(assert (=> b!1163335 (= e!745140 e!745139)))

(declare-fun res!524829 () Bool)

(assert (=> b!1163335 (=> (not res!524829) (not e!745139))))

(assert (=> b!1163335 (= res!524829 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 (t!110015 lt!396692))))))

(declare-fun b!1163336 () Bool)

(assert (=> b!1163336 (= e!745139 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 (t!110015 lt!396692))))))

(assert (= (and d!332039 (not res!524830)) b!1163335))

(assert (= (and b!1163335 res!524829) b!1163336))

(declare-fun m!1331973 () Bool)

(assert (=> d!332039 m!1331973))

(assert (=> d!332039 m!1331229))

(declare-fun m!1331975 () Bool)

(assert (=> b!1163335 m!1331975))

(declare-fun m!1331977 () Bool)

(assert (=> b!1163336 m!1331977))

(assert (=> b!1162897 d!332039))

(declare-fun d!332041 () Bool)

(declare-fun lt!397108 () Bool)

(declare-fun e!745171 () Bool)

(assert (=> d!332041 (= lt!397108 e!745171)))

(declare-fun res!524854 () Bool)

(assert (=> d!332041 (=> (not res!524854) (not e!745171))))

(declare-datatypes ((tuple2!12010 0))(
  ( (tuple2!12011 (_1!6852 BalanceConc!7520) (_2!6852 BalanceConc!7518)) )
))
(declare-fun lex!698 (LexerInterface!1688 List!11480 BalanceConc!7518) tuple2!12010)

(declare-fun print!635 (LexerInterface!1688 BalanceConc!7520) BalanceConc!7518)

(declare-fun singletonSeq!658 (Token!3648) BalanceConc!7520)

(assert (=> d!332041 (= res!524854 (= (list!4216 (_1!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396694)))))) (list!4216 (singletonSeq!658 (h!16856 lt!396694)))))))

(declare-fun e!745170 () Bool)

(assert (=> d!332041 (= lt!397108 e!745170)))

(declare-fun res!524853 () Bool)

(assert (=> d!332041 (=> (not res!524853) (not e!745170))))

(declare-fun lt!397107 () tuple2!12010)

(assert (=> d!332041 (= res!524853 (= (size!9011 (_1!6852 lt!397107)) 1))))

(assert (=> d!332041 (= lt!397107 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396694)))))))

(assert (=> d!332041 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332041 (= (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396694)) lt!397108)))

(declare-fun b!1163372 () Bool)

(declare-fun res!524852 () Bool)

(assert (=> b!1163372 (=> (not res!524852) (not e!745170))))

(assert (=> b!1163372 (= res!524852 (= (apply!2457 (_1!6852 lt!397107) 0) (h!16856 lt!396694)))))

(declare-fun b!1163373 () Bool)

(declare-fun isEmpty!6987 (BalanceConc!7518) Bool)

(assert (=> b!1163373 (= e!745170 (isEmpty!6987 (_2!6852 lt!397107)))))

(declare-fun b!1163374 () Bool)

(assert (=> b!1163374 (= e!745171 (isEmpty!6987 (_2!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396694)))))))))

(assert (= (and d!332041 res!524853) b!1163372))

(assert (= (and b!1163372 res!524852) b!1163373))

(assert (= (and d!332041 res!524854) b!1163374))

(declare-fun m!1331991 () Bool)

(assert (=> d!332041 m!1331991))

(assert (=> d!332041 m!1331991))

(declare-fun m!1331993 () Bool)

(assert (=> d!332041 m!1331993))

(assert (=> d!332041 m!1331993))

(declare-fun m!1331995 () Bool)

(assert (=> d!332041 m!1331995))

(declare-fun m!1331997 () Bool)

(assert (=> d!332041 m!1331997))

(assert (=> d!332041 m!1331229))

(assert (=> d!332041 m!1331991))

(declare-fun m!1331999 () Bool)

(assert (=> d!332041 m!1331999))

(declare-fun m!1332001 () Bool)

(assert (=> d!332041 m!1332001))

(declare-fun m!1332003 () Bool)

(assert (=> b!1163372 m!1332003))

(declare-fun m!1332005 () Bool)

(assert (=> b!1163373 m!1332005))

(assert (=> b!1163374 m!1331991))

(assert (=> b!1163374 m!1331991))

(assert (=> b!1163374 m!1331993))

(assert (=> b!1163374 m!1331993))

(assert (=> b!1163374 m!1331995))

(declare-fun m!1332007 () Bool)

(assert (=> b!1163374 m!1332007))

(assert (=> b!1162917 d!332041))

(declare-fun d!332051 () Bool)

(declare-fun lt!397110 () Bool)

(declare-fun e!745173 () Bool)

(assert (=> d!332051 (= lt!397110 e!745173)))

(declare-fun res!524857 () Bool)

(assert (=> d!332051 (=> (not res!524857) (not e!745173))))

(assert (=> d!332051 (= res!524857 (= (list!4216 (_1!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396681)))))) (list!4216 (singletonSeq!658 (h!16856 lt!396681)))))))

(declare-fun e!745172 () Bool)

(assert (=> d!332051 (= lt!397110 e!745172)))

(declare-fun res!524856 () Bool)

(assert (=> d!332051 (=> (not res!524856) (not e!745172))))

(declare-fun lt!397109 () tuple2!12010)

(assert (=> d!332051 (= res!524856 (= (size!9011 (_1!6852 lt!397109)) 1))))

(assert (=> d!332051 (= lt!397109 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396681)))))))

(assert (=> d!332051 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332051 (= (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396681)) lt!397110)))

(declare-fun b!1163375 () Bool)

(declare-fun res!524855 () Bool)

(assert (=> b!1163375 (=> (not res!524855) (not e!745172))))

(assert (=> b!1163375 (= res!524855 (= (apply!2457 (_1!6852 lt!397109) 0) (h!16856 lt!396681)))))

(declare-fun b!1163376 () Bool)

(assert (=> b!1163376 (= e!745172 (isEmpty!6987 (_2!6852 lt!397109)))))

(declare-fun b!1163377 () Bool)

(assert (=> b!1163377 (= e!745173 (isEmpty!6987 (_2!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396681)))))))))

(assert (= (and d!332051 res!524856) b!1163375))

(assert (= (and b!1163375 res!524855) b!1163376))

(assert (= (and d!332051 res!524857) b!1163377))

(declare-fun m!1332009 () Bool)

(assert (=> d!332051 m!1332009))

(assert (=> d!332051 m!1332009))

(declare-fun m!1332011 () Bool)

(assert (=> d!332051 m!1332011))

(assert (=> d!332051 m!1332011))

(declare-fun m!1332013 () Bool)

(assert (=> d!332051 m!1332013))

(declare-fun m!1332015 () Bool)

(assert (=> d!332051 m!1332015))

(assert (=> d!332051 m!1331229))

(assert (=> d!332051 m!1332009))

(declare-fun m!1332017 () Bool)

(assert (=> d!332051 m!1332017))

(declare-fun m!1332019 () Bool)

(assert (=> d!332051 m!1332019))

(declare-fun m!1332021 () Bool)

(assert (=> b!1163375 m!1332021))

(declare-fun m!1332023 () Bool)

(assert (=> b!1163376 m!1332023))

(assert (=> b!1163377 m!1332009))

(assert (=> b!1163377 m!1332009))

(assert (=> b!1163377 m!1332011))

(assert (=> b!1163377 m!1332011))

(assert (=> b!1163377 m!1332013))

(declare-fun m!1332025 () Bool)

(assert (=> b!1163377 m!1332025))

(assert (=> b!1162916 d!332051))

(declare-fun d!332053 () Bool)

(declare-fun res!524871 () Bool)

(declare-fun e!745187 () Bool)

(assert (=> d!332053 (=> res!524871 e!745187)))

(assert (=> d!332053 (= res!524871 (or (not ((_ is Cons!11455) lt!396696)) (not ((_ is Cons!11455) (t!110015 lt!396696)))))))

(assert (=> d!332053 (= (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 lt!396696 (rules!9520 thiss!10527)) e!745187)))

(declare-fun b!1163390 () Bool)

(declare-fun e!745186 () Bool)

(assert (=> b!1163390 (= e!745187 e!745186)))

(declare-fun res!524870 () Bool)

(assert (=> b!1163390 (=> (not res!524870) (not e!745186))))

(assert (=> b!1163390 (= res!524870 (separableTokensPredicate!124 Lexer!1686 (h!16856 lt!396696) (h!16856 (t!110015 lt!396696)) (rules!9520 thiss!10527)))))

(declare-fun lt!397141 () Unit!17495)

(declare-fun Unit!17511 () Unit!17495)

(assert (=> b!1163390 (= lt!397141 Unit!17511)))

(assert (=> b!1163390 (> (size!9010 (charsOf!1062 (h!16856 (t!110015 lt!396696)))) 0)))

(declare-fun lt!397136 () Unit!17495)

(declare-fun Unit!17512 () Unit!17495)

(assert (=> b!1163390 (= lt!397136 Unit!17512)))

(assert (=> b!1163390 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 (t!110015 lt!396696)))))

(declare-fun lt!397137 () Unit!17495)

(declare-fun Unit!17513 () Unit!17495)

(assert (=> b!1163390 (= lt!397137 Unit!17513)))

(assert (=> b!1163390 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396696))))

(declare-fun lt!397135 () Unit!17495)

(declare-fun lt!397140 () Unit!17495)

(assert (=> b!1163390 (= lt!397135 lt!397140)))

(assert (=> b!1163390 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 (t!110015 lt!396696)))))

(assert (=> b!1163390 (= lt!397140 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396696 (h!16856 (t!110015 lt!396696))))))

(declare-fun lt!397139 () Unit!17495)

(declare-fun lt!397138 () Unit!17495)

(assert (=> b!1163390 (= lt!397139 lt!397138)))

(assert (=> b!1163390 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396696))))

(assert (=> b!1163390 (= lt!397138 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396696 (h!16856 lt!396696)))))

(declare-fun b!1163391 () Bool)

(assert (=> b!1163391 (= e!745186 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 (Cons!11455 (h!16856 (t!110015 lt!396696)) (t!110015 (t!110015 lt!396696))) (rules!9520 thiss!10527)))))

(assert (= (and d!332053 (not res!524871)) b!1163390))

(assert (= (and b!1163390 res!524870) b!1163391))

(declare-fun m!1332027 () Bool)

(assert (=> b!1163390 m!1332027))

(declare-fun m!1332029 () Bool)

(assert (=> b!1163390 m!1332029))

(declare-fun m!1332031 () Bool)

(assert (=> b!1163390 m!1332031))

(assert (=> b!1163390 m!1331437))

(assert (=> b!1163390 m!1332027))

(declare-fun m!1332033 () Bool)

(assert (=> b!1163390 m!1332033))

(declare-fun m!1332035 () Bool)

(assert (=> b!1163390 m!1332035))

(assert (=> b!1163390 m!1331291))

(declare-fun m!1332037 () Bool)

(assert (=> b!1163391 m!1332037))

(assert (=> b!1162915 d!332053))

(declare-fun d!332055 () Bool)

(declare-fun isBalanced!1052 (Conc!3749) Bool)

(assert (=> d!332055 (= (inv!15064 (tokens!1602 thiss!10527)) (isBalanced!1052 (c!194406 (tokens!1602 thiss!10527))))))

(declare-fun bs!283834 () Bool)

(assert (= bs!283834 d!332055))

(declare-fun m!1332039 () Bool)

(assert (=> bs!283834 m!1332039))

(assert (=> b!1162914 d!332055))

(declare-fun bs!283839 () Bool)

(declare-fun d!332057 () Bool)

(assert (= bs!283839 (and d!332057 d!331905)))

(declare-fun lambda!47594 () Int)

(assert (=> bs!283839 (= lambda!47594 lambda!47567)))

(declare-fun bs!283842 () Bool)

(assert (= bs!283842 (and d!332057 d!332039)))

(assert (=> bs!283842 (= lambda!47594 lambda!47589)))

(declare-fun bs!283844 () Bool)

(assert (= bs!283844 (and d!332057 d!331927)))

(assert (=> bs!283844 (= lambda!47594 lambda!47571)))

(declare-fun bs!283846 () Bool)

(assert (= bs!283846 (and d!332057 d!331919)))

(assert (=> bs!283846 (= lambda!47594 lambda!47570)))

(declare-fun bs!283847 () Bool)

(assert (= bs!283847 (and d!332057 b!1162920)))

(assert (=> bs!283847 (= lambda!47594 lambda!47557)))

(declare-fun bs!283848 () Bool)

(assert (= bs!283848 (and d!332057 d!331931)))

(assert (=> bs!283848 (= lambda!47594 lambda!47572)))

(declare-fun bs!283849 () Bool)

(assert (= bs!283849 (and d!332057 b!1163185)))

(assert (=> bs!283849 (= lambda!47594 lambda!47580)))

(declare-fun bs!283850 () Bool)

(assert (= bs!283850 (and d!332057 b!1163246)))

(assert (=> bs!283850 (= lambda!47594 lambda!47584)))

(declare-fun bs!283851 () Bool)

(assert (= bs!283851 (and d!332057 d!332037)))

(assert (=> bs!283851 (= lambda!47594 lambda!47588)))

(declare-fun b!1163403 () Bool)

(declare-fun e!745199 () Bool)

(assert (=> b!1163403 (= e!745199 true)))

(declare-fun b!1163402 () Bool)

(declare-fun e!745198 () Bool)

(assert (=> b!1163402 (= e!745198 e!745199)))

(declare-fun b!1163401 () Bool)

(declare-fun e!745197 () Bool)

(assert (=> b!1163401 (= e!745197 e!745198)))

(assert (=> d!332057 e!745197))

(assert (= b!1163402 b!1163403))

(assert (= b!1163401 b!1163402))

(assert (= (and d!332057 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163401))

(assert (=> b!1163403 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47594))))

(assert (=> b!1163403 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47594))))

(assert (=> d!332057 true))

(declare-fun lt!397147 () Bool)

(assert (=> d!332057 (= lt!397147 (forall!2995 (t!110015 lt!396681) lambda!47594))))

(declare-fun e!745196 () Bool)

(assert (=> d!332057 (= lt!397147 e!745196)))

(declare-fun res!524877 () Bool)

(assert (=> d!332057 (=> res!524877 e!745196)))

(assert (=> d!332057 (= res!524877 (not ((_ is Cons!11455) (t!110015 lt!396681))))))

(assert (=> d!332057 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332057 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396681)) lt!397147)))

(declare-fun b!1163399 () Bool)

(declare-fun e!745195 () Bool)

(assert (=> b!1163399 (= e!745196 e!745195)))

(declare-fun res!524876 () Bool)

(assert (=> b!1163399 (=> (not res!524876) (not e!745195))))

(assert (=> b!1163399 (= res!524876 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 (t!110015 lt!396681))))))

(declare-fun b!1163400 () Bool)

(assert (=> b!1163400 (= e!745195 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 (t!110015 lt!396681))))))

(assert (= (and d!332057 (not res!524877)) b!1163399))

(assert (= (and b!1163399 res!524876) b!1163400))

(declare-fun m!1332045 () Bool)

(assert (=> d!332057 m!1332045))

(assert (=> d!332057 m!1331229))

(declare-fun m!1332049 () Bool)

(assert (=> b!1163399 m!1332049))

(declare-fun m!1332053 () Bool)

(assert (=> b!1163400 m!1332053))

(assert (=> b!1162913 d!332057))

(declare-fun d!332059 () Bool)

(declare-fun lt!397149 () Bool)

(declare-fun e!745201 () Bool)

(assert (=> d!332059 (= lt!397149 e!745201)))

(declare-fun res!524880 () Bool)

(assert (=> d!332059 (=> (not res!524880) (not e!745201))))

(assert (=> d!332059 (= res!524880 (= (list!4216 (_1!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396692)))))) (list!4216 (singletonSeq!658 (h!16856 lt!396692)))))))

(declare-fun e!745200 () Bool)

(assert (=> d!332059 (= lt!397149 e!745200)))

(declare-fun res!524879 () Bool)

(assert (=> d!332059 (=> (not res!524879) (not e!745200))))

(declare-fun lt!397148 () tuple2!12010)

(assert (=> d!332059 (= res!524879 (= (size!9011 (_1!6852 lt!397148)) 1))))

(assert (=> d!332059 (= lt!397148 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396692)))))))

(assert (=> d!332059 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332059 (= (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396692)) lt!397149)))

(declare-fun b!1163404 () Bool)

(declare-fun res!524878 () Bool)

(assert (=> b!1163404 (=> (not res!524878) (not e!745200))))

(assert (=> b!1163404 (= res!524878 (= (apply!2457 (_1!6852 lt!397148) 0) (h!16856 lt!396692)))))

(declare-fun b!1163405 () Bool)

(assert (=> b!1163405 (= e!745200 (isEmpty!6987 (_2!6852 lt!397148)))))

(declare-fun b!1163406 () Bool)

(assert (=> b!1163406 (= e!745201 (isEmpty!6987 (_2!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396692)))))))))

(assert (= (and d!332059 res!524879) b!1163404))

(assert (= (and b!1163404 res!524878) b!1163405))

(assert (= (and d!332059 res!524880) b!1163406))

(declare-fun m!1332065 () Bool)

(assert (=> d!332059 m!1332065))

(assert (=> d!332059 m!1332065))

(declare-fun m!1332067 () Bool)

(assert (=> d!332059 m!1332067))

(assert (=> d!332059 m!1332067))

(declare-fun m!1332069 () Bool)

(assert (=> d!332059 m!1332069))

(declare-fun m!1332071 () Bool)

(assert (=> d!332059 m!1332071))

(assert (=> d!332059 m!1331229))

(assert (=> d!332059 m!1332065))

(declare-fun m!1332073 () Bool)

(assert (=> d!332059 m!1332073))

(declare-fun m!1332075 () Bool)

(assert (=> d!332059 m!1332075))

(declare-fun m!1332077 () Bool)

(assert (=> b!1163404 m!1332077))

(declare-fun m!1332079 () Bool)

(assert (=> b!1163405 m!1332079))

(assert (=> b!1163406 m!1332065))

(assert (=> b!1163406 m!1332065))

(assert (=> b!1163406 m!1332067))

(assert (=> b!1163406 m!1332067))

(assert (=> b!1163406 m!1332069))

(declare-fun m!1332081 () Bool)

(assert (=> b!1163406 m!1332081))

(assert (=> b!1162912 d!332059))

(declare-fun d!332063 () Bool)

(declare-fun res!524882 () Bool)

(declare-fun e!745203 () Bool)

(assert (=> d!332063 (=> res!524882 e!745203)))

(assert (=> d!332063 (= res!524882 (or (not ((_ is Cons!11455) lt!396694)) (not ((_ is Cons!11455) (t!110015 lt!396694)))))))

(assert (=> d!332063 (= (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 lt!396694 (rules!9520 thiss!10527)) e!745203)))

(declare-fun b!1163407 () Bool)

(declare-fun e!745202 () Bool)

(assert (=> b!1163407 (= e!745203 e!745202)))

(declare-fun res!524881 () Bool)

(assert (=> b!1163407 (=> (not res!524881) (not e!745202))))

(assert (=> b!1163407 (= res!524881 (separableTokensPredicate!124 Lexer!1686 (h!16856 lt!396694) (h!16856 (t!110015 lt!396694)) (rules!9520 thiss!10527)))))

(declare-fun lt!397156 () Unit!17495)

(declare-fun Unit!17514 () Unit!17495)

(assert (=> b!1163407 (= lt!397156 Unit!17514)))

(assert (=> b!1163407 (> (size!9010 (charsOf!1062 (h!16856 (t!110015 lt!396694)))) 0)))

(declare-fun lt!397151 () Unit!17495)

(declare-fun Unit!17515 () Unit!17495)

(assert (=> b!1163407 (= lt!397151 Unit!17515)))

(assert (=> b!1163407 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 (t!110015 lt!396694)))))

(declare-fun lt!397152 () Unit!17495)

(declare-fun Unit!17516 () Unit!17495)

(assert (=> b!1163407 (= lt!397152 Unit!17516)))

(assert (=> b!1163407 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396694))))

(declare-fun lt!397150 () Unit!17495)

(declare-fun lt!397155 () Unit!17495)

(assert (=> b!1163407 (= lt!397150 lt!397155)))

(assert (=> b!1163407 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 (t!110015 lt!396694)))))

(assert (=> b!1163407 (= lt!397155 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396694 (h!16856 (t!110015 lt!396694))))))

(declare-fun lt!397154 () Unit!17495)

(declare-fun lt!397153 () Unit!17495)

(assert (=> b!1163407 (= lt!397154 lt!397153)))

(assert (=> b!1163407 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396694))))

(assert (=> b!1163407 (= lt!397153 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396694 (h!16856 lt!396694)))))

(declare-fun b!1163408 () Bool)

(assert (=> b!1163408 (= e!745202 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 (Cons!11455 (h!16856 (t!110015 lt!396694)) (t!110015 (t!110015 lt!396694))) (rules!9520 thiss!10527)))))

(assert (= (and d!332063 (not res!524882)) b!1163407))

(assert (= (and b!1163407 res!524881) b!1163408))

(declare-fun m!1332083 () Bool)

(assert (=> b!1163407 m!1332083))

(declare-fun m!1332085 () Bool)

(assert (=> b!1163407 m!1332085))

(declare-fun m!1332087 () Bool)

(assert (=> b!1163407 m!1332087))

(declare-fun m!1332089 () Bool)

(assert (=> b!1163407 m!1332089))

(assert (=> b!1163407 m!1332083))

(declare-fun m!1332091 () Bool)

(assert (=> b!1163407 m!1332091))

(declare-fun m!1332093 () Bool)

(assert (=> b!1163407 m!1332093))

(assert (=> b!1163407 m!1331285))

(declare-fun m!1332095 () Bool)

(assert (=> b!1163408 m!1332095))

(assert (=> b!1162911 d!332063))

(declare-fun b!1163409 () Bool)

(declare-fun res!524884 () Bool)

(declare-fun e!745207 () Bool)

(assert (=> b!1163409 (=> (not res!524884) (not e!745207))))

(declare-fun lt!397162 () List!11479)

(declare-fun lt!397189 () List!11479)

(assert (=> b!1163409 (= res!524884 (subseq!249 lt!397162 lt!397189))))

(declare-fun b!1163410 () Bool)

(declare-fun e!745204 () Bool)

(declare-fun lt!397175 () List!11479)

(assert (=> b!1163410 (= e!745204 (<= 0 (size!9015 lt!397175)))))

(declare-fun d!332065 () Bool)

(declare-fun lt!397167 () Bool)

(assert (=> d!332065 (= lt!397167 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 (dropList!314 (tokens!1602 thiss!10527) 0) (rules!9520 thiss!10527)))))

(declare-fun lt!397171 () Unit!17495)

(declare-fun lt!397168 () Unit!17495)

(assert (=> d!332065 (= lt!397171 lt!397168)))

(assert (=> d!332065 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!397162)))

(assert (=> d!332065 (= lt!397168 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!24 Lexer!1686 (rules!9520 thiss!10527) lt!397189 lt!397162))))

(assert (=> d!332065 e!745207))

(declare-fun res!524886 () Bool)

(assert (=> d!332065 (=> (not res!524886) (not e!745207))))

(assert (=> d!332065 (= res!524886 ((_ is Lexer!1686) Lexer!1686))))

(assert (=> d!332065 (= lt!397162 (dropList!314 (tokens!1602 thiss!10527) 0))))

(assert (=> d!332065 (= lt!397189 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397181 () Unit!17495)

(declare-fun lt!397185 () Unit!17495)

(assert (=> d!332065 (= lt!397181 lt!397185)))

(assert (=> d!332065 (subseq!249 (drop!475 lt!397175 0) lt!397175)))

(assert (=> d!332065 (= lt!397185 (lemmaDropSubSeq!24 lt!397175 0))))

(assert (=> d!332065 e!745204))

(declare-fun res!524883 () Bool)

(assert (=> d!332065 (=> (not res!524883) (not e!745204))))

(assert (=> d!332065 (= res!524883 (>= 0 0))))

(assert (=> d!332065 (= lt!397175 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun e!745208 () Bool)

(assert (=> d!332065 (= lt!397167 e!745208)))

(declare-fun res!524889 () Bool)

(assert (=> d!332065 (=> res!524889 e!745208)))

(assert (=> d!332065 (= res!524889 (not (< 0 (- (size!9011 (tokens!1602 thiss!10527)) 1))))))

(declare-fun e!745205 () Bool)

(assert (=> d!332065 e!745205))

(declare-fun res!524890 () Bool)

(assert (=> d!332065 (=> (not res!524890) (not e!745205))))

(assert (=> d!332065 (= res!524890 (>= 0 0))))

(assert (=> d!332065 (= (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 (tokens!1602 thiss!10527) 0 (rules!9520 thiss!10527)) lt!397167)))

(declare-fun b!1163411 () Bool)

(declare-fun res!524888 () Bool)

(assert (=> b!1163411 (=> (not res!524888) (not e!745207))))

(assert (=> b!1163411 (= res!524888 (not (isEmpty!6985 (rules!9520 thiss!10527))))))

(declare-fun b!1163412 () Bool)

(declare-fun e!745206 () Bool)

(assert (=> b!1163412 (= e!745208 e!745206)))

(declare-fun res!524885 () Bool)

(assert (=> b!1163412 (=> (not res!524885) (not e!745206))))

(assert (=> b!1163412 (= res!524885 (separableTokensPredicate!124 Lexer!1686 (apply!2457 (tokens!1602 thiss!10527) 0) (apply!2457 (tokens!1602 thiss!10527) (+ 0 1)) (rules!9520 thiss!10527)))))

(declare-fun lt!397165 () Unit!17495)

(declare-fun Unit!17517 () Unit!17495)

(assert (=> b!1163412 (= lt!397165 Unit!17517)))

(assert (=> b!1163412 (> (size!9010 (charsOf!1062 (apply!2457 (tokens!1602 thiss!10527) (+ 0 1)))) 0)))

(declare-fun lt!397163 () Unit!17495)

(declare-fun Unit!17518 () Unit!17495)

(assert (=> b!1163412 (= lt!397163 Unit!17518)))

(assert (=> b!1163412 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (apply!2457 (tokens!1602 thiss!10527) (+ 0 1)))))

(declare-fun lt!397172 () Unit!17495)

(declare-fun Unit!17519 () Unit!17495)

(assert (=> b!1163412 (= lt!397172 Unit!17519)))

(assert (=> b!1163412 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (apply!2457 (tokens!1602 thiss!10527) 0))))

(declare-fun lt!397161 () Unit!17495)

(declare-fun lt!397164 () Unit!17495)

(assert (=> b!1163412 (= lt!397161 lt!397164)))

(declare-fun lt!397183 () Token!3648)

(assert (=> b!1163412 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!397183)))

(declare-fun lt!397190 () List!11479)

(assert (=> b!1163412 (= lt!397164 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!397190 lt!397183))))

(assert (=> b!1163412 (= lt!397183 (apply!2457 (tokens!1602 thiss!10527) (+ 0 1)))))

(assert (=> b!1163412 (= lt!397190 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397166 () Unit!17495)

(declare-fun lt!397184 () Unit!17495)

(assert (=> b!1163412 (= lt!397166 lt!397184)))

(declare-fun lt!397180 () Token!3648)

(assert (=> b!1163412 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!397180)))

(declare-fun lt!397186 () List!11479)

(assert (=> b!1163412 (= lt!397184 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!397186 lt!397180))))

(assert (=> b!1163412 (= lt!397180 (apply!2457 (tokens!1602 thiss!10527) 0))))

(assert (=> b!1163412 (= lt!397186 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397191 () Unit!17495)

(declare-fun lt!397192 () Unit!17495)

(assert (=> b!1163412 (= lt!397191 lt!397192)))

(declare-fun lt!397188 () List!11479)

(declare-fun lt!397178 () Int)

(assert (=> b!1163412 (= (tail!1680 (drop!475 lt!397188 lt!397178)) (drop!475 lt!397188 (+ lt!397178 1)))))

(assert (=> b!1163412 (= lt!397192 (lemmaDropTail!353 lt!397188 lt!397178))))

(assert (=> b!1163412 (= lt!397178 (+ 0 1))))

(assert (=> b!1163412 (= lt!397188 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397179 () Unit!17495)

(declare-fun lt!397182 () Unit!17495)

(assert (=> b!1163412 (= lt!397179 lt!397182)))

(declare-fun lt!397177 () List!11479)

(assert (=> b!1163412 (= (tail!1680 (drop!475 lt!397177 0)) (drop!475 lt!397177 (+ 0 1)))))

(assert (=> b!1163412 (= lt!397182 (lemmaDropTail!353 lt!397177 0))))

(assert (=> b!1163412 (= lt!397177 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397174 () Unit!17495)

(declare-fun lt!397160 () Unit!17495)

(assert (=> b!1163412 (= lt!397174 lt!397160)))

(declare-fun lt!397169 () List!11479)

(declare-fun lt!397187 () Int)

(assert (=> b!1163412 (= (head!2096 (drop!475 lt!397169 lt!397187)) (apply!2458 lt!397169 lt!397187))))

(assert (=> b!1163412 (= lt!397160 (lemmaDropApply!365 lt!397169 lt!397187))))

(assert (=> b!1163412 (= lt!397187 (+ 0 1))))

(assert (=> b!1163412 (= lt!397169 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397173 () Unit!17495)

(declare-fun lt!397170 () Unit!17495)

(assert (=> b!1163412 (= lt!397173 lt!397170)))

(declare-fun lt!397176 () List!11479)

(assert (=> b!1163412 (= (head!2096 (drop!475 lt!397176 0)) (apply!2458 lt!397176 0))))

(assert (=> b!1163412 (= lt!397170 (lemmaDropApply!365 lt!397176 0))))

(assert (=> b!1163412 (= lt!397176 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun b!1163413 () Bool)

(assert (=> b!1163413 (= e!745206 (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 (tokens!1602 thiss!10527) (+ 0 1) (rules!9520 thiss!10527)))))

(declare-fun b!1163414 () Bool)

(assert (=> b!1163414 (= e!745207 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!397189))))

(declare-fun b!1163415 () Bool)

(assert (=> b!1163415 (= e!745205 (<= 0 (size!9011 (tokens!1602 thiss!10527))))))

(declare-fun b!1163416 () Bool)

(declare-fun res!524887 () Bool)

(assert (=> b!1163416 (=> (not res!524887) (not e!745207))))

(assert (=> b!1163416 (= res!524887 (rulesInvariant!1562 Lexer!1686 (rules!9520 thiss!10527)))))

(assert (= (and d!332065 res!524890) b!1163415))

(assert (= (and d!332065 (not res!524889)) b!1163412))

(assert (= (and b!1163412 res!524885) b!1163413))

(assert (= (and d!332065 res!524883) b!1163410))

(assert (= (and d!332065 res!524886) b!1163411))

(assert (= (and b!1163411 res!524888) b!1163416))

(assert (= (and b!1163416 res!524887) b!1163409))

(assert (= (and b!1163409 res!524884) b!1163414))

(assert (=> b!1163411 m!1331229))

(declare-fun m!1332103 () Bool)

(assert (=> b!1163412 m!1332103))

(declare-fun m!1332105 () Bool)

(assert (=> b!1163412 m!1332105))

(declare-fun m!1332107 () Bool)

(assert (=> b!1163412 m!1332107))

(declare-fun m!1332109 () Bool)

(assert (=> b!1163412 m!1332109))

(assert (=> b!1163412 m!1331317))

(declare-fun m!1332111 () Bool)

(assert (=> b!1163412 m!1332111))

(declare-fun m!1332113 () Bool)

(assert (=> b!1163412 m!1332113))

(assert (=> b!1163412 m!1331317))

(declare-fun m!1332115 () Bool)

(assert (=> b!1163412 m!1332115))

(declare-fun m!1332117 () Bool)

(assert (=> b!1163412 m!1332117))

(declare-fun m!1332119 () Bool)

(assert (=> b!1163412 m!1332119))

(declare-fun m!1332121 () Bool)

(assert (=> b!1163412 m!1332121))

(declare-fun m!1332123 () Bool)

(assert (=> b!1163412 m!1332123))

(declare-fun m!1332125 () Bool)

(assert (=> b!1163412 m!1332125))

(declare-fun m!1332127 () Bool)

(assert (=> b!1163412 m!1332127))

(declare-fun m!1332129 () Bool)

(assert (=> b!1163412 m!1332129))

(assert (=> b!1163412 m!1332117))

(declare-fun m!1332131 () Bool)

(assert (=> b!1163412 m!1332131))

(declare-fun m!1332133 () Bool)

(assert (=> b!1163412 m!1332133))

(assert (=> b!1163412 m!1332111))

(declare-fun m!1332135 () Bool)

(assert (=> b!1163412 m!1332135))

(assert (=> b!1163412 m!1332111))

(declare-fun m!1332137 () Bool)

(assert (=> b!1163412 m!1332137))

(assert (=> b!1163412 m!1331349))

(declare-fun m!1332139 () Bool)

(assert (=> b!1163412 m!1332139))

(declare-fun m!1332141 () Bool)

(assert (=> b!1163412 m!1332141))

(assert (=> b!1163412 m!1332111))

(declare-fun m!1332143 () Bool)

(assert (=> b!1163412 m!1332143))

(declare-fun m!1332145 () Bool)

(assert (=> b!1163412 m!1332145))

(assert (=> b!1163412 m!1332143))

(declare-fun m!1332147 () Bool)

(assert (=> b!1163412 m!1332147))

(assert (=> b!1163412 m!1331317))

(declare-fun m!1332149 () Bool)

(assert (=> b!1163412 m!1332149))

(assert (=> b!1163412 m!1332121))

(assert (=> b!1163412 m!1332149))

(declare-fun m!1332151 () Bool)

(assert (=> b!1163412 m!1332151))

(declare-fun m!1332153 () Bool)

(assert (=> b!1163412 m!1332153))

(assert (=> b!1163412 m!1332139))

(assert (=> b!1163416 m!1331355))

(declare-fun m!1332155 () Bool)

(assert (=> d!332065 m!1332155))

(declare-fun m!1332157 () Bool)

(assert (=> d!332065 m!1332157))

(assert (=> d!332065 m!1332155))

(assert (=> d!332065 m!1331349))

(declare-fun m!1332159 () Bool)

(assert (=> d!332065 m!1332159))

(declare-fun m!1332161 () Bool)

(assert (=> d!332065 m!1332161))

(declare-fun m!1332163 () Bool)

(assert (=> d!332065 m!1332163))

(assert (=> d!332065 m!1332159))

(assert (=> d!332065 m!1331283))

(declare-fun m!1332165 () Bool)

(assert (=> d!332065 m!1332165))

(declare-fun m!1332167 () Bool)

(assert (=> d!332065 m!1332167))

(assert (=> b!1163415 m!1331283))

(declare-fun m!1332169 () Bool)

(assert (=> b!1163413 m!1332169))

(declare-fun m!1332171 () Bool)

(assert (=> b!1163414 m!1332171))

(declare-fun m!1332175 () Bool)

(assert (=> b!1163409 m!1332175))

(declare-fun m!1332177 () Bool)

(assert (=> b!1163410 m!1332177))

(assert (=> b!1162910 d!332065))

(declare-fun bs!283864 () Bool)

(declare-fun d!332071 () Bool)

(assert (= bs!283864 (and d!332071 d!331905)))

(declare-fun lambda!47596 () Int)

(assert (=> bs!283864 (= lambda!47596 lambda!47567)))

(declare-fun bs!283865 () Bool)

(assert (= bs!283865 (and d!332071 d!332039)))

(assert (=> bs!283865 (= lambda!47596 lambda!47589)))

(declare-fun bs!283866 () Bool)

(assert (= bs!283866 (and d!332071 d!331927)))

(assert (=> bs!283866 (= lambda!47596 lambda!47571)))

(declare-fun bs!283867 () Bool)

(assert (= bs!283867 (and d!332071 d!331919)))

(assert (=> bs!283867 (= lambda!47596 lambda!47570)))

(declare-fun bs!283868 () Bool)

(assert (= bs!283868 (and d!332071 b!1162920)))

(assert (=> bs!283868 (= lambda!47596 lambda!47557)))

(declare-fun bs!283869 () Bool)

(assert (= bs!283869 (and d!332071 d!331931)))

(assert (=> bs!283869 (= lambda!47596 lambda!47572)))

(declare-fun bs!283870 () Bool)

(assert (= bs!283870 (and d!332071 b!1163185)))

(assert (=> bs!283870 (= lambda!47596 lambda!47580)))

(declare-fun bs!283871 () Bool)

(assert (= bs!283871 (and d!332071 d!332057)))

(assert (=> bs!283871 (= lambda!47596 lambda!47594)))

(declare-fun bs!283872 () Bool)

(assert (= bs!283872 (and d!332071 b!1163246)))

(assert (=> bs!283872 (= lambda!47596 lambda!47584)))

(declare-fun bs!283873 () Bool)

(assert (= bs!283873 (and d!332071 d!332037)))

(assert (=> bs!283873 (= lambda!47596 lambda!47588)))

(declare-fun b!1163425 () Bool)

(declare-fun e!745217 () Bool)

(assert (=> b!1163425 (= e!745217 true)))

(declare-fun b!1163424 () Bool)

(declare-fun e!745216 () Bool)

(assert (=> b!1163424 (= e!745216 e!745217)))

(declare-fun b!1163423 () Bool)

(declare-fun e!745215 () Bool)

(assert (=> b!1163423 (= e!745215 e!745216)))

(assert (=> d!332071 e!745215))

(assert (= b!1163424 b!1163425))

(assert (= b!1163423 b!1163424))

(assert (= (and d!332071 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163423))

(assert (=> b!1163425 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47596))))

(assert (=> b!1163425 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47596))))

(assert (=> d!332071 true))

(declare-fun e!745214 () Bool)

(assert (=> d!332071 e!745214))

(declare-fun res!524893 () Bool)

(assert (=> d!332071 (=> (not res!524893) (not e!745214))))

(declare-fun lt!397194 () Bool)

(assert (=> d!332071 (= res!524893 (= lt!397194 (forall!2995 (list!4216 lt!396687) lambda!47596)))))

(assert (=> d!332071 (= lt!397194 (forall!2994 lt!396687 lambda!47596))))

(assert (=> d!332071 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332071 (= (rulesProduceEachTokenIndividually!727 Lexer!1686 (rules!9520 thiss!10527) lt!396687) lt!397194)))

(declare-fun b!1163422 () Bool)

(assert (=> b!1163422 (= e!745214 (= lt!397194 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (list!4216 lt!396687))))))

(assert (= (and d!332071 res!524893) b!1163422))

(assert (=> d!332071 m!1331279))

(assert (=> d!332071 m!1331279))

(declare-fun m!1332187 () Bool)

(assert (=> d!332071 m!1332187))

(declare-fun m!1332189 () Bool)

(assert (=> d!332071 m!1332189))

(assert (=> d!332071 m!1331229))

(assert (=> b!1163422 m!1331279))

(assert (=> b!1163422 m!1331279))

(declare-fun m!1332191 () Bool)

(assert (=> b!1163422 m!1332191))

(assert (=> b!1162909 d!332071))

(assert (=> b!1162909 d!331903))

(declare-fun bs!283875 () Bool)

(declare-fun d!332079 () Bool)

(assert (= bs!283875 (and d!332079 d!332039)))

(declare-fun lambda!47597 () Int)

(assert (=> bs!283875 (= lambda!47597 lambda!47589)))

(declare-fun bs!283876 () Bool)

(assert (= bs!283876 (and d!332079 d!331927)))

(assert (=> bs!283876 (= lambda!47597 lambda!47571)))

(declare-fun bs!283877 () Bool)

(assert (= bs!283877 (and d!332079 d!331919)))

(assert (=> bs!283877 (= lambda!47597 lambda!47570)))

(declare-fun bs!283878 () Bool)

(assert (= bs!283878 (and d!332079 b!1162920)))

(assert (=> bs!283878 (= lambda!47597 lambda!47557)))

(declare-fun bs!283879 () Bool)

(assert (= bs!283879 (and d!332079 d!331931)))

(assert (=> bs!283879 (= lambda!47597 lambda!47572)))

(declare-fun bs!283880 () Bool)

(assert (= bs!283880 (and d!332079 b!1163185)))

(assert (=> bs!283880 (= lambda!47597 lambda!47580)))

(declare-fun bs!283881 () Bool)

(assert (= bs!283881 (and d!332079 d!332057)))

(assert (=> bs!283881 (= lambda!47597 lambda!47594)))

(declare-fun bs!283882 () Bool)

(assert (= bs!283882 (and d!332079 d!331905)))

(assert (=> bs!283882 (= lambda!47597 lambda!47567)))

(declare-fun bs!283883 () Bool)

(assert (= bs!283883 (and d!332079 d!332071)))

(assert (=> bs!283883 (= lambda!47597 lambda!47596)))

(declare-fun bs!283884 () Bool)

(assert (= bs!283884 (and d!332079 b!1163246)))

(assert (=> bs!283884 (= lambda!47597 lambda!47584)))

(declare-fun bs!283885 () Bool)

(assert (= bs!283885 (and d!332079 d!332037)))

(assert (=> bs!283885 (= lambda!47597 lambda!47588)))

(declare-fun b!1163430 () Bool)

(declare-fun e!745222 () Bool)

(assert (=> b!1163430 (= e!745222 true)))

(declare-fun b!1163429 () Bool)

(declare-fun e!745221 () Bool)

(assert (=> b!1163429 (= e!745221 e!745222)))

(declare-fun b!1163428 () Bool)

(declare-fun e!745220 () Bool)

(assert (=> b!1163428 (= e!745220 e!745221)))

(assert (=> d!332079 e!745220))

(assert (= b!1163429 b!1163430))

(assert (= b!1163428 b!1163429))

(assert (= (and d!332079 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163428))

(assert (=> b!1163430 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47597))))

(assert (=> b!1163430 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47597))))

(assert (=> d!332079 true))

(declare-fun lt!397195 () Bool)

(assert (=> d!332079 (= lt!397195 (forall!2995 (t!110015 lt!396694) lambda!47597))))

(declare-fun e!745219 () Bool)

(assert (=> d!332079 (= lt!397195 e!745219)))

(declare-fun res!524895 () Bool)

(assert (=> d!332079 (=> res!524895 e!745219)))

(assert (=> d!332079 (= res!524895 (not ((_ is Cons!11455) (t!110015 lt!396694))))))

(assert (=> d!332079 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332079 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396694)) lt!397195)))

(declare-fun b!1163426 () Bool)

(declare-fun e!745218 () Bool)

(assert (=> b!1163426 (= e!745219 e!745218)))

(declare-fun res!524894 () Bool)

(assert (=> b!1163426 (=> (not res!524894) (not e!745218))))

(assert (=> b!1163426 (= res!524894 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 (t!110015 lt!396694))))))

(declare-fun b!1163427 () Bool)

(assert (=> b!1163427 (= e!745218 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 (t!110015 lt!396694))))))

(assert (= (and d!332079 (not res!524895)) b!1163426))

(assert (= (and b!1163426 res!524894) b!1163427))

(declare-fun m!1332193 () Bool)

(assert (=> d!332079 m!1332193))

(assert (=> d!332079 m!1331229))

(assert (=> b!1163426 m!1332089))

(declare-fun m!1332195 () Bool)

(assert (=> b!1163427 m!1332195))

(assert (=> b!1162908 d!332079))

(declare-fun b!1163433 () Bool)

(declare-fun e!745228 () Int)

(declare-fun e!745226 () Int)

(assert (=> b!1163433 (= e!745228 e!745226)))

(declare-fun c!194471 () Bool)

(declare-fun call!82140 () Int)

(assert (=> b!1163433 (= c!194471 (>= 1 call!82140))))

(declare-fun b!1163434 () Bool)

(assert (=> b!1163434 (= e!745226 0)))

(declare-fun b!1163435 () Bool)

(declare-fun e!745229 () List!11479)

(assert (=> b!1163435 (= e!745229 lt!396692)))

(declare-fun d!332081 () Bool)

(declare-fun e!745227 () Bool)

(assert (=> d!332081 e!745227))

(declare-fun res!524898 () Bool)

(assert (=> d!332081 (=> (not res!524898) (not e!745227))))

(declare-fun lt!397198 () List!11479)

(assert (=> d!332081 (= res!524898 (= ((_ map implies) (content!1604 lt!397198) (content!1604 lt!396692)) ((as const (InoxSet Token!3648)) true)))))

(declare-fun e!745225 () List!11479)

(assert (=> d!332081 (= lt!397198 e!745225)))

(declare-fun c!194474 () Bool)

(assert (=> d!332081 (= c!194474 ((_ is Nil!11455) lt!396692))))

(assert (=> d!332081 (= (drop!475 lt!396692 1) lt!397198)))

(declare-fun b!1163436 () Bool)

(assert (=> b!1163436 (= e!745229 (drop!475 (t!110015 lt!396692) (- 1 1)))))

(declare-fun bm!82135 () Bool)

(assert (=> bm!82135 (= call!82140 (size!9015 lt!396692))))

(declare-fun b!1163437 () Bool)

(assert (=> b!1163437 (= e!745225 e!745229)))

(declare-fun c!194473 () Bool)

(assert (=> b!1163437 (= c!194473 (<= 1 0))))

(declare-fun b!1163438 () Bool)

(assert (=> b!1163438 (= e!745225 Nil!11455)))

(declare-fun b!1163439 () Bool)

(assert (=> b!1163439 (= e!745228 call!82140)))

(declare-fun b!1163440 () Bool)

(assert (=> b!1163440 (= e!745226 (- call!82140 1))))

(declare-fun b!1163441 () Bool)

(assert (=> b!1163441 (= e!745227 (= (size!9015 lt!397198) e!745228))))

(declare-fun c!194472 () Bool)

(assert (=> b!1163441 (= c!194472 (<= 1 0))))

(assert (= (and d!332081 c!194474) b!1163438))

(assert (= (and d!332081 (not c!194474)) b!1163437))

(assert (= (and b!1163437 c!194473) b!1163435))

(assert (= (and b!1163437 (not c!194473)) b!1163436))

(assert (= (and d!332081 res!524898) b!1163441))

(assert (= (and b!1163441 c!194472) b!1163439))

(assert (= (and b!1163441 (not c!194472)) b!1163433))

(assert (= (and b!1163433 c!194471) b!1163434))

(assert (= (and b!1163433 (not c!194471)) b!1163440))

(assert (= (or b!1163439 b!1163433 b!1163440) bm!82135))

(declare-fun m!1332197 () Bool)

(assert (=> d!332081 m!1332197))

(assert (=> d!332081 m!1331937))

(declare-fun m!1332199 () Bool)

(assert (=> b!1163436 m!1332199))

(assert (=> bm!82135 m!1331941))

(declare-fun m!1332201 () Bool)

(assert (=> b!1163441 m!1332201))

(assert (=> b!1162907 d!332081))

(declare-fun d!332083 () Bool)

(declare-fun lt!397200 () Bool)

(declare-fun e!745231 () Bool)

(assert (=> d!332083 (= lt!397200 e!745231)))

(declare-fun res!524901 () Bool)

(assert (=> d!332083 (=> (not res!524901) (not e!745231))))

(assert (=> d!332083 (= res!524901 (= (list!4216 (_1!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 lt!396688))))) (list!4216 (singletonSeq!658 lt!396688))))))

(declare-fun e!745230 () Bool)

(assert (=> d!332083 (= lt!397200 e!745230)))

(declare-fun res!524900 () Bool)

(assert (=> d!332083 (=> (not res!524900) (not e!745230))))

(declare-fun lt!397199 () tuple2!12010)

(assert (=> d!332083 (= res!524900 (= (size!9011 (_1!6852 lt!397199)) 1))))

(assert (=> d!332083 (= lt!397199 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 lt!396688))))))

(assert (=> d!332083 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332083 (= (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!396688) lt!397200)))

(declare-fun b!1163442 () Bool)

(declare-fun res!524899 () Bool)

(assert (=> b!1163442 (=> (not res!524899) (not e!745230))))

(assert (=> b!1163442 (= res!524899 (= (apply!2457 (_1!6852 lt!397199) 0) lt!396688))))

(declare-fun b!1163443 () Bool)

(assert (=> b!1163443 (= e!745230 (isEmpty!6987 (_2!6852 lt!397199)))))

(declare-fun b!1163444 () Bool)

(assert (=> b!1163444 (= e!745231 (isEmpty!6987 (_2!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 lt!396688))))))))

(assert (= (and d!332083 res!524900) b!1163442))

(assert (= (and b!1163442 res!524899) b!1163443))

(assert (= (and d!332083 res!524901) b!1163444))

(declare-fun m!1332205 () Bool)

(assert (=> d!332083 m!1332205))

(assert (=> d!332083 m!1332205))

(declare-fun m!1332207 () Bool)

(assert (=> d!332083 m!1332207))

(assert (=> d!332083 m!1332207))

(declare-fun m!1332209 () Bool)

(assert (=> d!332083 m!1332209))

(declare-fun m!1332211 () Bool)

(assert (=> d!332083 m!1332211))

(assert (=> d!332083 m!1331229))

(assert (=> d!332083 m!1332205))

(declare-fun m!1332213 () Bool)

(assert (=> d!332083 m!1332213))

(declare-fun m!1332217 () Bool)

(assert (=> d!332083 m!1332217))

(declare-fun m!1332219 () Bool)

(assert (=> b!1163442 m!1332219))

(declare-fun m!1332221 () Bool)

(assert (=> b!1163443 m!1332221))

(assert (=> b!1163444 m!1332205))

(assert (=> b!1163444 m!1332205))

(assert (=> b!1163444 m!1332207))

(assert (=> b!1163444 m!1332207))

(assert (=> b!1163444 m!1332209))

(declare-fun m!1332223 () Bool)

(assert (=> b!1163444 m!1332223))

(assert (=> b!1162907 d!332083))

(declare-fun d!332089 () Bool)

(declare-fun lt!397204 () Bool)

(declare-fun e!745234 () Bool)

(assert (=> d!332089 (= lt!397204 e!745234)))

(declare-fun res!524905 () Bool)

(assert (=> d!332089 (=> (not res!524905) (not e!745234))))

(assert (=> d!332089 (= res!524905 (= (list!4216 (_1!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 lt!396676))))) (list!4216 (singletonSeq!658 lt!396676))))))

(declare-fun e!745233 () Bool)

(assert (=> d!332089 (= lt!397204 e!745233)))

(declare-fun res!524904 () Bool)

(assert (=> d!332089 (=> (not res!524904) (not e!745233))))

(declare-fun lt!397203 () tuple2!12010)

(assert (=> d!332089 (= res!524904 (= (size!9011 (_1!6852 lt!397203)) 1))))

(assert (=> d!332089 (= lt!397203 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 lt!396676))))))

(assert (=> d!332089 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332089 (= (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!396676) lt!397204)))

(declare-fun b!1163446 () Bool)

(declare-fun res!524903 () Bool)

(assert (=> b!1163446 (=> (not res!524903) (not e!745233))))

(assert (=> b!1163446 (= res!524903 (= (apply!2457 (_1!6852 lt!397203) 0) lt!396676))))

(declare-fun b!1163447 () Bool)

(assert (=> b!1163447 (= e!745233 (isEmpty!6987 (_2!6852 lt!397203)))))

(declare-fun b!1163448 () Bool)

(assert (=> b!1163448 (= e!745234 (isEmpty!6987 (_2!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 lt!396676))))))))

(assert (= (and d!332089 res!524904) b!1163446))

(assert (= (and b!1163446 res!524903) b!1163447))

(assert (= (and d!332089 res!524905) b!1163448))

(declare-fun m!1332225 () Bool)

(assert (=> d!332089 m!1332225))

(assert (=> d!332089 m!1332225))

(declare-fun m!1332227 () Bool)

(assert (=> d!332089 m!1332227))

(assert (=> d!332089 m!1332227))

(declare-fun m!1332229 () Bool)

(assert (=> d!332089 m!1332229))

(declare-fun m!1332231 () Bool)

(assert (=> d!332089 m!1332231))

(assert (=> d!332089 m!1331229))

(assert (=> d!332089 m!1332225))

(declare-fun m!1332233 () Bool)

(assert (=> d!332089 m!1332233))

(declare-fun m!1332235 () Bool)

(assert (=> d!332089 m!1332235))

(declare-fun m!1332237 () Bool)

(assert (=> b!1163446 m!1332237))

(declare-fun m!1332239 () Bool)

(assert (=> b!1163447 m!1332239))

(assert (=> b!1163448 m!1332225))

(assert (=> b!1163448 m!1332225))

(assert (=> b!1163448 m!1332227))

(assert (=> b!1163448 m!1332227))

(assert (=> b!1163448 m!1332229))

(declare-fun m!1332241 () Bool)

(assert (=> b!1163448 m!1332241))

(assert (=> b!1162907 d!332089))

(declare-fun d!332091 () Bool)

(assert (=> d!332091 (= (head!2096 lt!396693) (h!16856 lt!396693))))

(assert (=> b!1162907 d!332091))

(declare-fun d!332093 () Bool)

(assert (=> d!332093 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!396676)))

(declare-fun lt!397210 () Unit!17495)

(declare-fun choose!7494 (LexerInterface!1688 List!11480 List!11479 Token!3648) Unit!17495)

(assert (=> d!332093 (= lt!397210 (choose!7494 Lexer!1686 (rules!9520 thiss!10527) lt!396692 lt!396676))))

(assert (=> d!332093 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332093 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396692 lt!396676) lt!397210)))

(declare-fun bs!283887 () Bool)

(assert (= bs!283887 d!332093))

(assert (=> bs!283887 m!1331319))

(declare-fun m!1332259 () Bool)

(assert (=> bs!283887 m!1332259))

(assert (=> bs!283887 m!1331229))

(assert (=> b!1162907 d!332093))

(declare-fun d!332101 () Bool)

(declare-fun prefixMatchZipperSequence!87 (Regex!3263 BalanceConc!7518) Bool)

(declare-fun rulesRegex!62 (LexerInterface!1688 List!11480) Regex!3263)

(declare-fun ++!2976 (BalanceConc!7518 BalanceConc!7518) BalanceConc!7518)

(declare-fun singletonSeq!659 (C!6844) BalanceConc!7518)

(declare-fun apply!2461 (BalanceConc!7518 Int) C!6844)

(assert (=> d!332101 (= (separableTokensPredicate!124 Lexer!1686 lt!396676 lt!396688 (rules!9520 thiss!10527)) (not (prefixMatchZipperSequence!87 (rulesRegex!62 Lexer!1686 (rules!9520 thiss!10527)) (++!2976 (charsOf!1062 lt!396676) (singletonSeq!659 (apply!2461 (charsOf!1062 lt!396688) 0))))))))

(declare-fun bs!283888 () Bool)

(assert (= bs!283888 d!332101))

(assert (=> bs!283888 m!1331341))

(declare-fun m!1332261 () Bool)

(assert (=> bs!283888 m!1332261))

(declare-fun m!1332263 () Bool)

(assert (=> bs!283888 m!1332263))

(declare-fun m!1332265 () Bool)

(assert (=> bs!283888 m!1332265))

(declare-fun m!1332267 () Bool)

(assert (=> bs!283888 m!1332267))

(declare-fun m!1332269 () Bool)

(assert (=> bs!283888 m!1332269))

(assert (=> bs!283888 m!1331341))

(assert (=> bs!283888 m!1332267))

(assert (=> bs!283888 m!1332261))

(declare-fun m!1332271 () Bool)

(assert (=> bs!283888 m!1332271))

(assert (=> bs!283888 m!1332269))

(assert (=> bs!283888 m!1332263))

(assert (=> bs!283888 m!1332271))

(assert (=> b!1162907 d!332101))

(declare-fun d!332103 () Bool)

(assert (=> d!332103 (= (tail!1680 lt!396693) (t!110015 lt!396693))))

(assert (=> b!1162907 d!332103))

(declare-fun d!332105 () Bool)

(declare-fun lt!397246 () Token!3648)

(declare-fun contains!1990 (List!11479 Token!3648) Bool)

(assert (=> d!332105 (contains!1990 lt!396692 lt!397246)))

(declare-fun e!745259 () Token!3648)

(assert (=> d!332105 (= lt!397246 e!745259)))

(declare-fun c!194478 () Bool)

(assert (=> d!332105 (= c!194478 (= 0 0))))

(declare-fun e!745260 () Bool)

(assert (=> d!332105 e!745260))

(declare-fun res!524940 () Bool)

(assert (=> d!332105 (=> (not res!524940) (not e!745260))))

(assert (=> d!332105 (= res!524940 (<= 0 0))))

(assert (=> d!332105 (= (apply!2458 lt!396692 0) lt!397246)))

(declare-fun b!1163487 () Bool)

(assert (=> b!1163487 (= e!745260 (< 0 (size!9015 lt!396692)))))

(declare-fun b!1163488 () Bool)

(assert (=> b!1163488 (= e!745259 (head!2096 lt!396692))))

(declare-fun b!1163489 () Bool)

(assert (=> b!1163489 (= e!745259 (apply!2458 (tail!1680 lt!396692) (- 0 1)))))

(assert (= (and d!332105 res!524940) b!1163487))

(assert (= (and d!332105 c!194478) b!1163488))

(assert (= (and d!332105 (not c!194478)) b!1163489))

(declare-fun m!1332273 () Bool)

(assert (=> d!332105 m!1332273))

(assert (=> b!1163487 m!1331941))

(declare-fun m!1332275 () Bool)

(assert (=> b!1163488 m!1332275))

(declare-fun m!1332277 () Bool)

(assert (=> b!1163489 m!1332277))

(assert (=> b!1163489 m!1332277))

(declare-fun m!1332279 () Bool)

(assert (=> b!1163489 m!1332279))

(assert (=> b!1162907 d!332105))

(declare-fun d!332109 () Bool)

(assert (=> d!332109 (= (tail!1680 (drop!475 lt!396692 1)) (drop!475 lt!396692 (+ 1 1)))))

(declare-fun lt!397251 () Unit!17495)

(declare-fun choose!7495 (List!11479 Int) Unit!17495)

(assert (=> d!332109 (= lt!397251 (choose!7495 lt!396692 1))))

(declare-fun e!745265 () Bool)

(assert (=> d!332109 e!745265))

(declare-fun res!524946 () Bool)

(assert (=> d!332109 (=> (not res!524946) (not e!745265))))

(assert (=> d!332109 (= res!524946 (>= 1 0))))

(assert (=> d!332109 (= (lemmaDropTail!353 lt!396692 1) lt!397251)))

(declare-fun b!1163495 () Bool)

(assert (=> b!1163495 (= e!745265 (< 1 (size!9015 lt!396692)))))

(assert (= (and d!332109 res!524946) b!1163495))

(assert (=> d!332109 m!1331329))

(assert (=> d!332109 m!1331329))

(declare-fun m!1332373 () Bool)

(assert (=> d!332109 m!1332373))

(declare-fun m!1332375 () Bool)

(assert (=> d!332109 m!1332375))

(declare-fun m!1332377 () Bool)

(assert (=> d!332109 m!1332377))

(assert (=> b!1163495 m!1331941))

(assert (=> b!1162907 d!332109))

(declare-fun d!332115 () Bool)

(assert (=> d!332115 (= (head!2096 (drop!475 lt!396692 0)) (apply!2458 lt!396692 0))))

(declare-fun lt!397264 () Unit!17495)

(declare-fun choose!7496 (List!11479 Int) Unit!17495)

(assert (=> d!332115 (= lt!397264 (choose!7496 lt!396692 0))))

(declare-fun e!745270 () Bool)

(assert (=> d!332115 e!745270))

(declare-fun res!524951 () Bool)

(assert (=> d!332115 (=> (not res!524951) (not e!745270))))

(assert (=> d!332115 (= res!524951 (>= 0 0))))

(assert (=> d!332115 (= (lemmaDropApply!365 lt!396692 0) lt!397264)))

(declare-fun b!1163500 () Bool)

(assert (=> b!1163500 (= e!745270 (< 0 (size!9015 lt!396692)))))

(assert (= (and d!332115 res!524951) b!1163500))

(assert (=> d!332115 m!1331301))

(assert (=> d!332115 m!1331301))

(declare-fun m!1332399 () Bool)

(assert (=> d!332115 m!1332399))

(assert (=> d!332115 m!1331335))

(declare-fun m!1332401 () Bool)

(assert (=> d!332115 m!1332401))

(assert (=> b!1163500 m!1331941))

(assert (=> b!1162907 d!332115))

(declare-fun d!332121 () Bool)

(assert (=> d!332121 (= (tail!1680 (drop!475 lt!396692 0)) (drop!475 lt!396692 (+ 0 1)))))

(declare-fun lt!397265 () Unit!17495)

(assert (=> d!332121 (= lt!397265 (choose!7495 lt!396692 0))))

(declare-fun e!745271 () Bool)

(assert (=> d!332121 e!745271))

(declare-fun res!524952 () Bool)

(assert (=> d!332121 (=> (not res!524952) (not e!745271))))

(assert (=> d!332121 (= res!524952 (>= 0 0))))

(assert (=> d!332121 (= (lemmaDropTail!353 lt!396692 0) lt!397265)))

(declare-fun b!1163501 () Bool)

(assert (=> b!1163501 (= e!745271 (< 0 (size!9015 lt!396692)))))

(assert (= (and d!332121 res!524952) b!1163501))

(assert (=> d!332121 m!1331301))

(assert (=> d!332121 m!1331301))

(declare-fun m!1332403 () Bool)

(assert (=> d!332121 m!1332403))

(declare-fun m!1332405 () Bool)

(assert (=> d!332121 m!1332405))

(declare-fun m!1332407 () Bool)

(assert (=> d!332121 m!1332407))

(assert (=> b!1163501 m!1331941))

(assert (=> b!1162907 d!332121))

(declare-fun d!332123 () Bool)

(declare-fun lt!397266 () Token!3648)

(assert (=> d!332123 (contains!1990 lt!396692 lt!397266)))

(declare-fun e!745272 () Token!3648)

(assert (=> d!332123 (= lt!397266 e!745272)))

(declare-fun c!194479 () Bool)

(assert (=> d!332123 (= c!194479 (= 1 0))))

(declare-fun e!745273 () Bool)

(assert (=> d!332123 e!745273))

(declare-fun res!524953 () Bool)

(assert (=> d!332123 (=> (not res!524953) (not e!745273))))

(assert (=> d!332123 (= res!524953 (<= 0 1))))

(assert (=> d!332123 (= (apply!2458 lt!396692 1) lt!397266)))

(declare-fun b!1163502 () Bool)

(assert (=> b!1163502 (= e!745273 (< 1 (size!9015 lt!396692)))))

(declare-fun b!1163503 () Bool)

(assert (=> b!1163503 (= e!745272 (head!2096 lt!396692))))

(declare-fun b!1163504 () Bool)

(assert (=> b!1163504 (= e!745272 (apply!2458 (tail!1680 lt!396692) (- 1 1)))))

(assert (= (and d!332123 res!524953) b!1163502))

(assert (= (and d!332123 c!194479) b!1163503))

(assert (= (and d!332123 (not c!194479)) b!1163504))

(declare-fun m!1332409 () Bool)

(assert (=> d!332123 m!1332409))

(assert (=> b!1163502 m!1331941))

(assert (=> b!1163503 m!1332275))

(assert (=> b!1163504 m!1332277))

(assert (=> b!1163504 m!1332277))

(declare-fun m!1332411 () Bool)

(assert (=> b!1163504 m!1332411))

(assert (=> b!1162907 d!332123))

(declare-fun b!1163505 () Bool)

(declare-fun e!745277 () Int)

(declare-fun e!745275 () Int)

(assert (=> b!1163505 (= e!745277 e!745275)))

(declare-fun c!194480 () Bool)

(declare-fun call!82141 () Int)

(assert (=> b!1163505 (= c!194480 (>= 2 call!82141))))

(declare-fun b!1163506 () Bool)

(assert (=> b!1163506 (= e!745275 0)))

(declare-fun b!1163507 () Bool)

(declare-fun e!745278 () List!11479)

(assert (=> b!1163507 (= e!745278 lt!396692)))

(declare-fun d!332125 () Bool)

(declare-fun e!745276 () Bool)

(assert (=> d!332125 e!745276))

(declare-fun res!524954 () Bool)

(assert (=> d!332125 (=> (not res!524954) (not e!745276))))

(declare-fun lt!397269 () List!11479)

(assert (=> d!332125 (= res!524954 (= ((_ map implies) (content!1604 lt!397269) (content!1604 lt!396692)) ((as const (InoxSet Token!3648)) true)))))

(declare-fun e!745274 () List!11479)

(assert (=> d!332125 (= lt!397269 e!745274)))

(declare-fun c!194483 () Bool)

(assert (=> d!332125 (= c!194483 ((_ is Nil!11455) lt!396692))))

(assert (=> d!332125 (= (drop!475 lt!396692 2) lt!397269)))

(declare-fun b!1163508 () Bool)

(assert (=> b!1163508 (= e!745278 (drop!475 (t!110015 lt!396692) (- 2 1)))))

(declare-fun bm!82136 () Bool)

(assert (=> bm!82136 (= call!82141 (size!9015 lt!396692))))

(declare-fun b!1163509 () Bool)

(assert (=> b!1163509 (= e!745274 e!745278)))

(declare-fun c!194482 () Bool)

(assert (=> b!1163509 (= c!194482 (<= 2 0))))

(declare-fun b!1163510 () Bool)

(assert (=> b!1163510 (= e!745274 Nil!11455)))

(declare-fun b!1163511 () Bool)

(assert (=> b!1163511 (= e!745277 call!82141)))

(declare-fun b!1163512 () Bool)

(assert (=> b!1163512 (= e!745275 (- call!82141 2))))

(declare-fun b!1163513 () Bool)

(assert (=> b!1163513 (= e!745276 (= (size!9015 lt!397269) e!745277))))

(declare-fun c!194481 () Bool)

(assert (=> b!1163513 (= c!194481 (<= 2 0))))

(assert (= (and d!332125 c!194483) b!1163510))

(assert (= (and d!332125 (not c!194483)) b!1163509))

(assert (= (and b!1163509 c!194482) b!1163507))

(assert (= (and b!1163509 (not c!194482)) b!1163508))

(assert (= (and d!332125 res!524954) b!1163513))

(assert (= (and b!1163513 c!194481) b!1163511))

(assert (= (and b!1163513 (not c!194481)) b!1163505))

(assert (= (and b!1163505 c!194480) b!1163506))

(assert (= (and b!1163505 (not c!194480)) b!1163512))

(assert (= (or b!1163511 b!1163505 b!1163512) bm!82136))

(declare-fun m!1332413 () Bool)

(assert (=> d!332125 m!1332413))

(assert (=> d!332125 m!1331937))

(declare-fun m!1332417 () Bool)

(assert (=> b!1163508 m!1332417))

(assert (=> bm!82136 m!1331941))

(declare-fun m!1332421 () Bool)

(assert (=> b!1163513 m!1332421))

(assert (=> b!1162907 d!332125))

(declare-fun d!332127 () Bool)

(declare-fun lt!397276 () Token!3648)

(assert (=> d!332127 (= lt!397276 (apply!2458 (list!4216 (tokens!1602 thiss!10527)) 0))))

(declare-fun apply!2462 (Conc!3749 Int) Token!3648)

(assert (=> d!332127 (= lt!397276 (apply!2462 (c!194406 (tokens!1602 thiss!10527)) 0))))

(declare-fun e!745296 () Bool)

(assert (=> d!332127 e!745296))

(declare-fun res!524963 () Bool)

(assert (=> d!332127 (=> (not res!524963) (not e!745296))))

(assert (=> d!332127 (= res!524963 (<= 0 0))))

(assert (=> d!332127 (= (apply!2457 (tokens!1602 thiss!10527) 0) lt!397276)))

(declare-fun b!1163531 () Bool)

(assert (=> b!1163531 (= e!745296 (< 0 (size!9011 (tokens!1602 thiss!10527))))))

(assert (= (and d!332127 res!524963) b!1163531))

(assert (=> d!332127 m!1331349))

(assert (=> d!332127 m!1331349))

(declare-fun m!1332431 () Bool)

(assert (=> d!332127 m!1332431))

(declare-fun m!1332433 () Bool)

(assert (=> d!332127 m!1332433))

(assert (=> b!1163531 m!1331283))

(assert (=> b!1162907 d!332127))

(declare-fun b!1163532 () Bool)

(declare-fun e!745300 () Int)

(declare-fun e!745298 () Int)

(assert (=> b!1163532 (= e!745300 e!745298)))

(declare-fun c!194484 () Bool)

(declare-fun call!82142 () Int)

(assert (=> b!1163532 (= c!194484 (>= 0 call!82142))))

(declare-fun b!1163533 () Bool)

(assert (=> b!1163533 (= e!745298 0)))

(declare-fun b!1163534 () Bool)

(declare-fun e!745301 () List!11479)

(assert (=> b!1163534 (= e!745301 lt!396692)))

(declare-fun d!332135 () Bool)

(declare-fun e!745299 () Bool)

(assert (=> d!332135 e!745299))

(declare-fun res!524964 () Bool)

(assert (=> d!332135 (=> (not res!524964) (not e!745299))))

(declare-fun lt!397277 () List!11479)

(assert (=> d!332135 (= res!524964 (= ((_ map implies) (content!1604 lt!397277) (content!1604 lt!396692)) ((as const (InoxSet Token!3648)) true)))))

(declare-fun e!745297 () List!11479)

(assert (=> d!332135 (= lt!397277 e!745297)))

(declare-fun c!194487 () Bool)

(assert (=> d!332135 (= c!194487 ((_ is Nil!11455) lt!396692))))

(assert (=> d!332135 (= (drop!475 lt!396692 0) lt!397277)))

(declare-fun b!1163535 () Bool)

(assert (=> b!1163535 (= e!745301 (drop!475 (t!110015 lt!396692) (- 0 1)))))

(declare-fun bm!82137 () Bool)

(assert (=> bm!82137 (= call!82142 (size!9015 lt!396692))))

(declare-fun b!1163536 () Bool)

(assert (=> b!1163536 (= e!745297 e!745301)))

(declare-fun c!194486 () Bool)

(assert (=> b!1163536 (= c!194486 (<= 0 0))))

(declare-fun b!1163537 () Bool)

(assert (=> b!1163537 (= e!745297 Nil!11455)))

(declare-fun b!1163538 () Bool)

(assert (=> b!1163538 (= e!745300 call!82142)))

(declare-fun b!1163539 () Bool)

(assert (=> b!1163539 (= e!745298 (- call!82142 0))))

(declare-fun b!1163540 () Bool)

(assert (=> b!1163540 (= e!745299 (= (size!9015 lt!397277) e!745300))))

(declare-fun c!194485 () Bool)

(assert (=> b!1163540 (= c!194485 (<= 0 0))))

(assert (= (and d!332135 c!194487) b!1163537))

(assert (= (and d!332135 (not c!194487)) b!1163536))

(assert (= (and b!1163536 c!194486) b!1163534))

(assert (= (and b!1163536 (not c!194486)) b!1163535))

(assert (= (and d!332135 res!524964) b!1163540))

(assert (= (and b!1163540 c!194485) b!1163538))

(assert (= (and b!1163540 (not c!194485)) b!1163532))

(assert (= (and b!1163532 c!194484) b!1163533))

(assert (= (and b!1163532 (not c!194484)) b!1163539))

(assert (= (or b!1163538 b!1163532 b!1163539) bm!82137))

(declare-fun m!1332435 () Bool)

(assert (=> d!332135 m!1332435))

(assert (=> d!332135 m!1331937))

(declare-fun m!1332437 () Bool)

(assert (=> b!1163535 m!1332437))

(assert (=> bm!82137 m!1331941))

(declare-fun m!1332439 () Bool)

(assert (=> b!1163540 m!1332439))

(assert (=> b!1162907 d!332135))

(declare-fun d!332137 () Bool)

(assert (=> d!332137 (= (tail!1680 lt!396686) (t!110015 lt!396686))))

(assert (=> b!1162907 d!332137))

(declare-fun d!332139 () Bool)

(assert (=> d!332139 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!396688)))

(declare-fun lt!397278 () Unit!17495)

(assert (=> d!332139 (= lt!397278 (choose!7494 Lexer!1686 (rules!9520 thiss!10527) lt!396692 lt!396688))))

(assert (=> d!332139 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332139 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!396692 lt!396688) lt!397278)))

(declare-fun bs!283924 () Bool)

(assert (= bs!283924 d!332139))

(assert (=> bs!283924 m!1331325))

(declare-fun m!1332443 () Bool)

(assert (=> bs!283924 m!1332443))

(assert (=> bs!283924 m!1331229))

(assert (=> b!1162907 d!332139))

(declare-fun d!332141 () Bool)

(assert (=> d!332141 (= (head!2096 (drop!475 lt!396692 1)) (apply!2458 lt!396692 1))))

(declare-fun lt!397279 () Unit!17495)

(assert (=> d!332141 (= lt!397279 (choose!7496 lt!396692 1))))

(declare-fun e!745302 () Bool)

(assert (=> d!332141 e!745302))

(declare-fun res!524965 () Bool)

(assert (=> d!332141 (=> (not res!524965) (not e!745302))))

(assert (=> d!332141 (= res!524965 (>= 1 0))))

(assert (=> d!332141 (= (lemmaDropApply!365 lt!396692 1) lt!397279)))

(declare-fun b!1163541 () Bool)

(assert (=> b!1163541 (= e!745302 (< 1 (size!9015 lt!396692)))))

(assert (= (and d!332141 res!524965) b!1163541))

(assert (=> d!332141 m!1331329))

(assert (=> d!332141 m!1331329))

(declare-fun m!1332447 () Bool)

(assert (=> d!332141 m!1332447))

(assert (=> d!332141 m!1331303))

(declare-fun m!1332449 () Bool)

(assert (=> d!332141 m!1332449))

(assert (=> b!1163541 m!1331941))

(assert (=> b!1162907 d!332141))

(declare-fun d!332145 () Bool)

(declare-fun lt!397282 () Token!3648)

(assert (=> d!332145 (= lt!397282 (apply!2458 (list!4216 (tokens!1602 thiss!10527)) 1))))

(assert (=> d!332145 (= lt!397282 (apply!2462 (c!194406 (tokens!1602 thiss!10527)) 1))))

(declare-fun e!745305 () Bool)

(assert (=> d!332145 e!745305))

(declare-fun res!524969 () Bool)

(assert (=> d!332145 (=> (not res!524969) (not e!745305))))

(assert (=> d!332145 (= res!524969 (<= 0 1))))

(assert (=> d!332145 (= (apply!2457 (tokens!1602 thiss!10527) 1) lt!397282)))

(declare-fun b!1163545 () Bool)

(assert (=> b!1163545 (= e!745305 (< 1 (size!9011 (tokens!1602 thiss!10527))))))

(assert (= (and d!332145 res!524969) b!1163545))

(assert (=> d!332145 m!1331349))

(assert (=> d!332145 m!1331349))

(declare-fun m!1332451 () Bool)

(assert (=> d!332145 m!1332451))

(declare-fun m!1332453 () Bool)

(assert (=> d!332145 m!1332453))

(assert (=> b!1163545 m!1331283))

(assert (=> b!1162907 d!332145))

(declare-fun d!332147 () Bool)

(assert (=> d!332147 (= (head!2096 lt!396686) (h!16856 lt!396686))))

(assert (=> b!1162907 d!332147))

(declare-fun b!1163546 () Bool)

(declare-fun res!524971 () Bool)

(declare-fun e!745309 () Bool)

(assert (=> b!1163546 (=> (not res!524971) (not e!745309))))

(declare-fun lt!397285 () List!11479)

(declare-fun lt!397312 () List!11479)

(assert (=> b!1163546 (= res!524971 (subseq!249 lt!397285 lt!397312))))

(declare-fun b!1163547 () Bool)

(declare-fun e!745306 () Bool)

(declare-fun lt!397298 () List!11479)

(assert (=> b!1163547 (= e!745306 (<= 1 (size!9015 lt!397298)))))

(declare-fun d!332149 () Bool)

(declare-fun lt!397290 () Bool)

(assert (=> d!332149 (= lt!397290 (tokensListTwoByTwoPredicateSeparableList!100 Lexer!1686 (dropList!314 (tokens!1602 thiss!10527) 1) (rules!9520 thiss!10527)))))

(declare-fun lt!397294 () Unit!17495)

(declare-fun lt!397291 () Unit!17495)

(assert (=> d!332149 (= lt!397294 lt!397291)))

(assert (=> d!332149 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!397285)))

(assert (=> d!332149 (= lt!397291 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!24 Lexer!1686 (rules!9520 thiss!10527) lt!397312 lt!397285))))

(assert (=> d!332149 e!745309))

(declare-fun res!524973 () Bool)

(assert (=> d!332149 (=> (not res!524973) (not e!745309))))

(assert (=> d!332149 (= res!524973 ((_ is Lexer!1686) Lexer!1686))))

(assert (=> d!332149 (= lt!397285 (dropList!314 (tokens!1602 thiss!10527) 1))))

(assert (=> d!332149 (= lt!397312 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397304 () Unit!17495)

(declare-fun lt!397308 () Unit!17495)

(assert (=> d!332149 (= lt!397304 lt!397308)))

(assert (=> d!332149 (subseq!249 (drop!475 lt!397298 1) lt!397298)))

(assert (=> d!332149 (= lt!397308 (lemmaDropSubSeq!24 lt!397298 1))))

(assert (=> d!332149 e!745306))

(declare-fun res!524970 () Bool)

(assert (=> d!332149 (=> (not res!524970) (not e!745306))))

(assert (=> d!332149 (= res!524970 (>= 1 0))))

(assert (=> d!332149 (= lt!397298 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun e!745310 () Bool)

(assert (=> d!332149 (= lt!397290 e!745310)))

(declare-fun res!524976 () Bool)

(assert (=> d!332149 (=> res!524976 e!745310)))

(assert (=> d!332149 (= res!524976 (not (< 1 (- (size!9011 (tokens!1602 thiss!10527)) 1))))))

(declare-fun e!745307 () Bool)

(assert (=> d!332149 e!745307))

(declare-fun res!524977 () Bool)

(assert (=> d!332149 (=> (not res!524977) (not e!745307))))

(assert (=> d!332149 (= res!524977 (>= 1 0))))

(assert (=> d!332149 (= (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 (tokens!1602 thiss!10527) 1 (rules!9520 thiss!10527)) lt!397290)))

(declare-fun b!1163548 () Bool)

(declare-fun res!524975 () Bool)

(assert (=> b!1163548 (=> (not res!524975) (not e!745309))))

(assert (=> b!1163548 (= res!524975 (not (isEmpty!6985 (rules!9520 thiss!10527))))))

(declare-fun b!1163549 () Bool)

(declare-fun e!745308 () Bool)

(assert (=> b!1163549 (= e!745310 e!745308)))

(declare-fun res!524972 () Bool)

(assert (=> b!1163549 (=> (not res!524972) (not e!745308))))

(assert (=> b!1163549 (= res!524972 (separableTokensPredicate!124 Lexer!1686 (apply!2457 (tokens!1602 thiss!10527) 1) (apply!2457 (tokens!1602 thiss!10527) (+ 1 1)) (rules!9520 thiss!10527)))))

(declare-fun lt!397288 () Unit!17495)

(declare-fun Unit!17526 () Unit!17495)

(assert (=> b!1163549 (= lt!397288 Unit!17526)))

(assert (=> b!1163549 (> (size!9010 (charsOf!1062 (apply!2457 (tokens!1602 thiss!10527) (+ 1 1)))) 0)))

(declare-fun lt!397286 () Unit!17495)

(declare-fun Unit!17527 () Unit!17495)

(assert (=> b!1163549 (= lt!397286 Unit!17527)))

(assert (=> b!1163549 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (apply!2457 (tokens!1602 thiss!10527) (+ 1 1)))))

(declare-fun lt!397295 () Unit!17495)

(declare-fun Unit!17528 () Unit!17495)

(assert (=> b!1163549 (= lt!397295 Unit!17528)))

(assert (=> b!1163549 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (apply!2457 (tokens!1602 thiss!10527) 1))))

(declare-fun lt!397284 () Unit!17495)

(declare-fun lt!397287 () Unit!17495)

(assert (=> b!1163549 (= lt!397284 lt!397287)))

(declare-fun lt!397306 () Token!3648)

(assert (=> b!1163549 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!397306)))

(declare-fun lt!397313 () List!11479)

(assert (=> b!1163549 (= lt!397287 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!397313 lt!397306))))

(assert (=> b!1163549 (= lt!397306 (apply!2457 (tokens!1602 thiss!10527) (+ 1 1)))))

(assert (=> b!1163549 (= lt!397313 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397289 () Unit!17495)

(declare-fun lt!397307 () Unit!17495)

(assert (=> b!1163549 (= lt!397289 lt!397307)))

(declare-fun lt!397303 () Token!3648)

(assert (=> b!1163549 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) lt!397303)))

(declare-fun lt!397309 () List!11479)

(assert (=> b!1163549 (= lt!397307 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!283 Lexer!1686 (rules!9520 thiss!10527) lt!397309 lt!397303))))

(assert (=> b!1163549 (= lt!397303 (apply!2457 (tokens!1602 thiss!10527) 1))))

(assert (=> b!1163549 (= lt!397309 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397314 () Unit!17495)

(declare-fun lt!397315 () Unit!17495)

(assert (=> b!1163549 (= lt!397314 lt!397315)))

(declare-fun lt!397311 () List!11479)

(declare-fun lt!397301 () Int)

(assert (=> b!1163549 (= (tail!1680 (drop!475 lt!397311 lt!397301)) (drop!475 lt!397311 (+ lt!397301 1)))))

(assert (=> b!1163549 (= lt!397315 (lemmaDropTail!353 lt!397311 lt!397301))))

(assert (=> b!1163549 (= lt!397301 (+ 1 1))))

(assert (=> b!1163549 (= lt!397311 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397302 () Unit!17495)

(declare-fun lt!397305 () Unit!17495)

(assert (=> b!1163549 (= lt!397302 lt!397305)))

(declare-fun lt!397300 () List!11479)

(assert (=> b!1163549 (= (tail!1680 (drop!475 lt!397300 1)) (drop!475 lt!397300 (+ 1 1)))))

(assert (=> b!1163549 (= lt!397305 (lemmaDropTail!353 lt!397300 1))))

(assert (=> b!1163549 (= lt!397300 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397297 () Unit!17495)

(declare-fun lt!397283 () Unit!17495)

(assert (=> b!1163549 (= lt!397297 lt!397283)))

(declare-fun lt!397292 () List!11479)

(declare-fun lt!397310 () Int)

(assert (=> b!1163549 (= (head!2096 (drop!475 lt!397292 lt!397310)) (apply!2458 lt!397292 lt!397310))))

(assert (=> b!1163549 (= lt!397283 (lemmaDropApply!365 lt!397292 lt!397310))))

(assert (=> b!1163549 (= lt!397310 (+ 1 1))))

(assert (=> b!1163549 (= lt!397292 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun lt!397296 () Unit!17495)

(declare-fun lt!397293 () Unit!17495)

(assert (=> b!1163549 (= lt!397296 lt!397293)))

(declare-fun lt!397299 () List!11479)

(assert (=> b!1163549 (= (head!2096 (drop!475 lt!397299 1)) (apply!2458 lt!397299 1))))

(assert (=> b!1163549 (= lt!397293 (lemmaDropApply!365 lt!397299 1))))

(assert (=> b!1163549 (= lt!397299 (list!4216 (tokens!1602 thiss!10527)))))

(declare-fun b!1163550 () Bool)

(assert (=> b!1163550 (= e!745308 (tokensListTwoByTwoPredicateSeparable!63 Lexer!1686 (tokens!1602 thiss!10527) (+ 1 1) (rules!9520 thiss!10527)))))

(declare-fun b!1163551 () Bool)

(assert (=> b!1163551 (= e!745309 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!397312))))

(declare-fun b!1163552 () Bool)

(assert (=> b!1163552 (= e!745307 (<= 1 (size!9011 (tokens!1602 thiss!10527))))))

(declare-fun b!1163553 () Bool)

(declare-fun res!524974 () Bool)

(assert (=> b!1163553 (=> (not res!524974) (not e!745309))))

(assert (=> b!1163553 (= res!524974 (rulesInvariant!1562 Lexer!1686 (rules!9520 thiss!10527)))))

(assert (= (and d!332149 res!524977) b!1163552))

(assert (= (and d!332149 (not res!524976)) b!1163549))

(assert (= (and b!1163549 res!524972) b!1163550))

(assert (= (and d!332149 res!524970) b!1163547))

(assert (= (and d!332149 res!524973) b!1163548))

(assert (= (and b!1163548 res!524975) b!1163553))

(assert (= (and b!1163553 res!524974) b!1163546))

(assert (= (and b!1163546 res!524971) b!1163551))

(assert (=> b!1163548 m!1331229))

(declare-fun m!1332473 () Bool)

(assert (=> b!1163549 m!1332473))

(declare-fun m!1332475 () Bool)

(assert (=> b!1163549 m!1332475))

(declare-fun m!1332477 () Bool)

(assert (=> b!1163549 m!1332477))

(declare-fun m!1332479 () Bool)

(assert (=> b!1163549 m!1332479))

(assert (=> b!1163549 m!1331309))

(declare-fun m!1332481 () Bool)

(assert (=> b!1163549 m!1332481))

(declare-fun m!1332483 () Bool)

(assert (=> b!1163549 m!1332483))

(assert (=> b!1163549 m!1331309))

(declare-fun m!1332485 () Bool)

(assert (=> b!1163549 m!1332485))

(declare-fun m!1332487 () Bool)

(assert (=> b!1163549 m!1332487))

(declare-fun m!1332489 () Bool)

(assert (=> b!1163549 m!1332489))

(declare-fun m!1332491 () Bool)

(assert (=> b!1163549 m!1332491))

(declare-fun m!1332493 () Bool)

(assert (=> b!1163549 m!1332493))

(declare-fun m!1332495 () Bool)

(assert (=> b!1163549 m!1332495))

(declare-fun m!1332497 () Bool)

(assert (=> b!1163549 m!1332497))

(declare-fun m!1332499 () Bool)

(assert (=> b!1163549 m!1332499))

(assert (=> b!1163549 m!1332487))

(declare-fun m!1332501 () Bool)

(assert (=> b!1163549 m!1332501))

(declare-fun m!1332503 () Bool)

(assert (=> b!1163549 m!1332503))

(assert (=> b!1163549 m!1332481))

(declare-fun m!1332505 () Bool)

(assert (=> b!1163549 m!1332505))

(assert (=> b!1163549 m!1332481))

(declare-fun m!1332507 () Bool)

(assert (=> b!1163549 m!1332507))

(assert (=> b!1163549 m!1331349))

(declare-fun m!1332509 () Bool)

(assert (=> b!1163549 m!1332509))

(declare-fun m!1332511 () Bool)

(assert (=> b!1163549 m!1332511))

(assert (=> b!1163549 m!1332481))

(declare-fun m!1332513 () Bool)

(assert (=> b!1163549 m!1332513))

(declare-fun m!1332515 () Bool)

(assert (=> b!1163549 m!1332515))

(assert (=> b!1163549 m!1332513))

(declare-fun m!1332517 () Bool)

(assert (=> b!1163549 m!1332517))

(assert (=> b!1163549 m!1331309))

(declare-fun m!1332519 () Bool)

(assert (=> b!1163549 m!1332519))

(assert (=> b!1163549 m!1332491))

(assert (=> b!1163549 m!1332519))

(declare-fun m!1332521 () Bool)

(assert (=> b!1163549 m!1332521))

(declare-fun m!1332523 () Bool)

(assert (=> b!1163549 m!1332523))

(assert (=> b!1163549 m!1332509))

(assert (=> b!1163553 m!1331355))

(declare-fun m!1332525 () Bool)

(assert (=> d!332149 m!1332525))

(declare-fun m!1332527 () Bool)

(assert (=> d!332149 m!1332527))

(assert (=> d!332149 m!1332525))

(assert (=> d!332149 m!1331349))

(declare-fun m!1332529 () Bool)

(assert (=> d!332149 m!1332529))

(declare-fun m!1332531 () Bool)

(assert (=> d!332149 m!1332531))

(declare-fun m!1332533 () Bool)

(assert (=> d!332149 m!1332533))

(assert (=> d!332149 m!1332529))

(assert (=> d!332149 m!1331283))

(declare-fun m!1332535 () Bool)

(assert (=> d!332149 m!1332535))

(declare-fun m!1332537 () Bool)

(assert (=> d!332149 m!1332537))

(assert (=> b!1163552 m!1331283))

(declare-fun m!1332539 () Bool)

(assert (=> b!1163550 m!1332539))

(declare-fun m!1332541 () Bool)

(assert (=> b!1163551 m!1332541))

(declare-fun m!1332543 () Bool)

(assert (=> b!1163546 m!1332543))

(declare-fun m!1332545 () Bool)

(assert (=> b!1163547 m!1332545))

(assert (=> b!1162906 d!332149))

(declare-fun d!332151 () Bool)

(declare-fun res!524984 () Bool)

(declare-fun e!745343 () Bool)

(assert (=> d!332151 (=> (not res!524984) (not e!745343))))

(assert (=> d!332151 (= res!524984 (not (isEmpty!6985 (rules!9520 thiss!10527))))))

(assert (=> d!332151 (= (inv!15066 thiss!10527) e!745343)))

(declare-fun b!1163601 () Bool)

(declare-fun res!524985 () Bool)

(assert (=> b!1163601 (=> (not res!524985) (not e!745343))))

(assert (=> b!1163601 (= res!524985 (rulesInvariant!1562 Lexer!1686 (rules!9520 thiss!10527)))))

(declare-fun b!1163602 () Bool)

(declare-fun res!524986 () Bool)

(assert (=> b!1163602 (=> (not res!524986) (not e!745343))))

(assert (=> b!1163602 (= res!524986 (rulesProduceEachTokenIndividually!727 Lexer!1686 (rules!9520 thiss!10527) (tokens!1602 thiss!10527)))))

(declare-fun b!1163603 () Bool)

(assert (=> b!1163603 (= e!745343 (separableTokens!130 Lexer!1686 (tokens!1602 thiss!10527) (rules!9520 thiss!10527)))))

(assert (= (and d!332151 res!524984) b!1163601))

(assert (= (and b!1163601 res!524985) b!1163602))

(assert (= (and b!1163602 res!524986) b!1163603))

(assert (=> d!332151 m!1331229))

(assert (=> b!1163601 m!1331355))

(assert (=> b!1163602 m!1331347))

(assert (=> b!1163603 m!1331433))

(assert (=> start!101902 d!332151))

(declare-fun d!332159 () Bool)

(declare-fun lt!397318 () Int)

(assert (=> d!332159 (= lt!397318 (size!9015 (list!4216 (tokens!1602 thiss!10527))))))

(declare-fun size!9019 (Conc!3749) Int)

(assert (=> d!332159 (= lt!397318 (size!9019 (c!194406 (tokens!1602 thiss!10527))))))

(assert (=> d!332159 (= (size!9011 (tokens!1602 thiss!10527)) lt!397318)))

(declare-fun bs!283928 () Bool)

(assert (= bs!283928 d!332159))

(assert (=> bs!283928 m!1331349))

(assert (=> bs!283928 m!1331349))

(declare-fun m!1332561 () Bool)

(assert (=> bs!283928 m!1332561))

(declare-fun m!1332563 () Bool)

(assert (=> bs!283928 m!1332563))

(assert (=> b!1162905 d!332159))

(declare-fun bs!283929 () Bool)

(declare-fun d!332161 () Bool)

(assert (= bs!283929 (and d!332161 d!332039)))

(declare-fun lambda!47601 () Int)

(assert (=> bs!283929 (= lambda!47601 lambda!47589)))

(declare-fun bs!283930 () Bool)

(assert (= bs!283930 (and d!332161 d!331927)))

(assert (=> bs!283930 (= lambda!47601 lambda!47571)))

(declare-fun bs!283931 () Bool)

(assert (= bs!283931 (and d!332161 d!331919)))

(assert (=> bs!283931 (= lambda!47601 lambda!47570)))

(declare-fun bs!283932 () Bool)

(assert (= bs!283932 (and d!332161 b!1162920)))

(assert (=> bs!283932 (= lambda!47601 lambda!47557)))

(declare-fun bs!283933 () Bool)

(assert (= bs!283933 (and d!332161 d!331931)))

(assert (=> bs!283933 (= lambda!47601 lambda!47572)))

(declare-fun bs!283934 () Bool)

(assert (= bs!283934 (and d!332161 d!332079)))

(assert (=> bs!283934 (= lambda!47601 lambda!47597)))

(declare-fun bs!283935 () Bool)

(assert (= bs!283935 (and d!332161 b!1163185)))

(assert (=> bs!283935 (= lambda!47601 lambda!47580)))

(declare-fun bs!283936 () Bool)

(assert (= bs!283936 (and d!332161 d!332057)))

(assert (=> bs!283936 (= lambda!47601 lambda!47594)))

(declare-fun bs!283937 () Bool)

(assert (= bs!283937 (and d!332161 d!331905)))

(assert (=> bs!283937 (= lambda!47601 lambda!47567)))

(declare-fun bs!283938 () Bool)

(assert (= bs!283938 (and d!332161 d!332071)))

(assert (=> bs!283938 (= lambda!47601 lambda!47596)))

(declare-fun bs!283939 () Bool)

(assert (= bs!283939 (and d!332161 b!1163246)))

(assert (=> bs!283939 (= lambda!47601 lambda!47584)))

(declare-fun bs!283940 () Bool)

(assert (= bs!283940 (and d!332161 d!332037)))

(assert (=> bs!283940 (= lambda!47601 lambda!47588)))

(declare-fun b!1163608 () Bool)

(declare-fun e!745348 () Bool)

(assert (=> b!1163608 (= e!745348 true)))

(declare-fun b!1163607 () Bool)

(declare-fun e!745347 () Bool)

(assert (=> b!1163607 (= e!745347 e!745348)))

(declare-fun b!1163606 () Bool)

(declare-fun e!745346 () Bool)

(assert (=> b!1163606 (= e!745346 e!745347)))

(assert (=> d!332161 e!745346))

(assert (= b!1163607 b!1163608))

(assert (= b!1163606 b!1163607))

(assert (= (and d!332161 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163606))

(assert (=> b!1163608 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47601))))

(assert (=> b!1163608 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47601))))

(assert (=> d!332161 true))

(declare-fun lt!397319 () Bool)

(assert (=> d!332161 (= lt!397319 (forall!2995 lt!396681 lambda!47601))))

(declare-fun e!745345 () Bool)

(assert (=> d!332161 (= lt!397319 e!745345)))

(declare-fun res!524988 () Bool)

(assert (=> d!332161 (=> res!524988 e!745345)))

(assert (=> d!332161 (= res!524988 (not ((_ is Cons!11455) lt!396681)))))

(assert (=> d!332161 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332161 (= (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) lt!396681) lt!397319)))

(declare-fun b!1163604 () Bool)

(declare-fun e!745344 () Bool)

(assert (=> b!1163604 (= e!745345 e!745344)))

(declare-fun res!524987 () Bool)

(assert (=> b!1163604 (=> (not res!524987) (not e!745344))))

(assert (=> b!1163604 (= res!524987 (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396681)))))

(declare-fun b!1163605 () Bool)

(assert (=> b!1163605 (= e!745344 (rulesProduceEachTokenIndividuallyList!556 Lexer!1686 (rules!9520 thiss!10527) (t!110015 lt!396681)))))

(assert (= (and d!332161 (not res!524988)) b!1163604))

(assert (= (and b!1163604 res!524987) b!1163605))

(declare-fun m!1332565 () Bool)

(assert (=> d!332161 m!1332565))

(assert (=> d!332161 m!1331229))

(assert (=> b!1163604 m!1331345))

(assert (=> b!1163605 m!1331295))

(assert (=> b!1162904 d!332161))

(declare-fun d!332163 () Bool)

(assert (=> d!332163 (subseq!249 (slice!288 lt!396692 from!787 to!267) lt!396692)))

(declare-fun lt!397322 () Unit!17495)

(declare-fun choose!7497 (List!11479 Int Int) Unit!17495)

(assert (=> d!332163 (= lt!397322 (choose!7497 lt!396692 from!787 to!267))))

(declare-fun e!745351 () Bool)

(assert (=> d!332163 e!745351))

(declare-fun res!524991 () Bool)

(assert (=> d!332163 (=> (not res!524991) (not e!745351))))

(assert (=> d!332163 (= res!524991 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!332163 (= (lemmaSliceSubseq!90 lt!396692 from!787 to!267) lt!397322)))

(declare-fun b!1163611 () Bool)

(assert (=> b!1163611 (= e!745351 (<= to!267 (size!9015 lt!396692)))))

(assert (= (and d!332163 res!524991) b!1163611))

(assert (=> d!332163 m!1331273))

(assert (=> d!332163 m!1331273))

(assert (=> d!332163 m!1331275))

(declare-fun m!1332567 () Bool)

(assert (=> d!332163 m!1332567))

(assert (=> b!1163611 m!1331941))

(assert (=> b!1162903 d!332163))

(declare-fun d!332165 () Bool)

(assert (=> d!332165 (= (slice!288 lt!396692 from!787 to!267) (take!65 (drop!475 lt!396692 from!787) (- to!267 from!787)))))

(declare-fun bs!283941 () Bool)

(assert (= bs!283941 d!332165))

(assert (=> bs!283941 m!1331233))

(assert (=> bs!283941 m!1331233))

(declare-fun m!1332569 () Bool)

(assert (=> bs!283941 m!1332569))

(assert (=> b!1162903 d!332165))

(declare-fun d!332167 () Bool)

(assert (=> d!332167 (forall!2995 lt!396681 lambda!47557)))

(declare-fun lt!397323 () Unit!17495)

(assert (=> d!332167 (= lt!397323 (choose!7485 lt!396681 lt!396692 lambda!47557))))

(assert (=> d!332167 (forall!2995 lt!396692 lambda!47557)))

(assert (=> d!332167 (= (lemmaForallSubseq!141 lt!396681 lt!396692 lambda!47557) lt!397323)))

(declare-fun bs!283942 () Bool)

(assert (= bs!283942 d!332167))

(assert (=> bs!283942 m!1331269))

(declare-fun m!1332571 () Bool)

(assert (=> bs!283942 m!1332571))

(assert (=> bs!283942 m!1331749))

(assert (=> b!1162903 d!332167))

(declare-fun e!745354 () Bool)

(declare-fun b!1163614 () Bool)

(assert (=> b!1163614 (= e!745354 (subseq!249 (t!110015 (slice!288 lt!396692 from!787 to!267)) (t!110015 lt!396692)))))

(declare-fun d!332169 () Bool)

(declare-fun res!524992 () Bool)

(declare-fun e!745353 () Bool)

(assert (=> d!332169 (=> res!524992 e!745353)))

(assert (=> d!332169 (= res!524992 ((_ is Nil!11455) (slice!288 lt!396692 from!787 to!267)))))

(assert (=> d!332169 (= (subseq!249 (slice!288 lt!396692 from!787 to!267) lt!396692) e!745353)))

(declare-fun b!1163615 () Bool)

(declare-fun e!745352 () Bool)

(assert (=> b!1163615 (= e!745352 (subseq!249 (slice!288 lt!396692 from!787 to!267) (t!110015 lt!396692)))))

(declare-fun b!1163613 () Bool)

(declare-fun e!745355 () Bool)

(assert (=> b!1163613 (= e!745355 e!745352)))

(declare-fun res!524994 () Bool)

(assert (=> b!1163613 (=> res!524994 e!745352)))

(assert (=> b!1163613 (= res!524994 e!745354)))

(declare-fun res!524995 () Bool)

(assert (=> b!1163613 (=> (not res!524995) (not e!745354))))

(assert (=> b!1163613 (= res!524995 (= (h!16856 (slice!288 lt!396692 from!787 to!267)) (h!16856 lt!396692)))))

(declare-fun b!1163612 () Bool)

(assert (=> b!1163612 (= e!745353 e!745355)))

(declare-fun res!524993 () Bool)

(assert (=> b!1163612 (=> (not res!524993) (not e!745355))))

(assert (=> b!1163612 (= res!524993 ((_ is Cons!11455) lt!396692))))

(assert (= (and d!332169 (not res!524992)) b!1163612))

(assert (= (and b!1163612 res!524993) b!1163613))

(assert (= (and b!1163613 res!524995) b!1163614))

(assert (= (and b!1163613 (not res!524994)) b!1163615))

(declare-fun m!1332573 () Bool)

(assert (=> b!1163614 m!1332573))

(assert (=> b!1163615 m!1331273))

(declare-fun m!1332575 () Bool)

(assert (=> b!1163615 m!1332575))

(assert (=> b!1162903 d!332169))

(declare-fun d!332171 () Bool)

(declare-fun e!745360 () Bool)

(assert (=> d!332171 e!745360))

(declare-fun res!525002 () Bool)

(assert (=> d!332171 (=> (not res!525002) (not e!745360))))

(declare-fun slice!290 (Conc!3749 Int Int) Conc!3749)

(assert (=> d!332171 (= res!525002 (isBalanced!1052 (slice!290 (c!194406 (tokens!1602 thiss!10527)) from!787 to!267)))))

(declare-fun lt!397326 () BalanceConc!7520)

(assert (=> d!332171 (= lt!397326 (BalanceConc!7521 (slice!290 (c!194406 (tokens!1602 thiss!10527)) from!787 to!267)))))

(declare-fun e!745361 () Bool)

(assert (=> d!332171 e!745361))

(declare-fun res!525004 () Bool)

(assert (=> d!332171 (=> (not res!525004) (not e!745361))))

(assert (=> d!332171 (= res!525004 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!332171 (= (slice!287 (tokens!1602 thiss!10527) from!787 to!267) lt!397326)))

(declare-fun b!1163622 () Bool)

(declare-fun res!525003 () Bool)

(assert (=> b!1163622 (=> (not res!525003) (not e!745361))))

(assert (=> b!1163622 (= res!525003 (<= to!267 (size!9011 (tokens!1602 thiss!10527))))))

(declare-fun b!1163623 () Bool)

(assert (=> b!1163623 (= e!745361 (isBalanced!1052 (c!194406 (tokens!1602 thiss!10527))))))

(declare-fun b!1163624 () Bool)

(assert (=> b!1163624 (= e!745360 (= (list!4216 lt!397326) (slice!288 (list!4216 (tokens!1602 thiss!10527)) from!787 to!267)))))

(assert (= (and d!332171 res!525004) b!1163622))

(assert (= (and b!1163622 res!525003) b!1163623))

(assert (= (and d!332171 res!525002) b!1163624))

(declare-fun m!1332577 () Bool)

(assert (=> d!332171 m!1332577))

(assert (=> d!332171 m!1332577))

(declare-fun m!1332579 () Bool)

(assert (=> d!332171 m!1332579))

(assert (=> b!1163622 m!1331283))

(assert (=> b!1163623 m!1332039))

(declare-fun m!1332581 () Bool)

(assert (=> b!1163624 m!1332581))

(assert (=> b!1163624 m!1331349))

(assert (=> b!1163624 m!1331349))

(declare-fun m!1332583 () Bool)

(assert (=> b!1163624 m!1332583))

(assert (=> b!1162903 d!332171))

(declare-fun d!332173 () Bool)

(assert (=> d!332173 (= (list!4216 lt!396687) (list!4218 (c!194406 lt!396687)))))

(declare-fun bs!283943 () Bool)

(assert (= bs!283943 d!332173))

(declare-fun m!1332585 () Bool)

(assert (=> bs!283943 m!1332585))

(assert (=> b!1162903 d!332173))

(declare-fun d!332175 () Bool)

(declare-fun res!525005 () Bool)

(declare-fun e!745362 () Bool)

(assert (=> d!332175 (=> res!525005 e!745362)))

(assert (=> d!332175 (= res!525005 ((_ is Nil!11455) lt!396681))))

(assert (=> d!332175 (= (forall!2995 lt!396681 lambda!47557) e!745362)))

(declare-fun b!1163625 () Bool)

(declare-fun e!745363 () Bool)

(assert (=> b!1163625 (= e!745362 e!745363)))

(declare-fun res!525006 () Bool)

(assert (=> b!1163625 (=> (not res!525006) (not e!745363))))

(assert (=> b!1163625 (= res!525006 (dynLambda!5046 lambda!47557 (h!16856 lt!396681)))))

(declare-fun b!1163626 () Bool)

(assert (=> b!1163626 (= e!745363 (forall!2995 (t!110015 lt!396681) lambda!47557))))

(assert (= (and d!332175 (not res!525005)) b!1163625))

(assert (= (and b!1163625 res!525006) b!1163626))

(declare-fun b_lambda!34683 () Bool)

(assert (=> (not b_lambda!34683) (not b!1163625)))

(declare-fun m!1332587 () Bool)

(assert (=> b!1163625 m!1332587))

(declare-fun m!1332589 () Bool)

(assert (=> b!1163626 m!1332589))

(assert (=> b!1162903 d!332175))

(declare-fun d!332177 () Bool)

(declare-fun lt!397328 () Bool)

(declare-fun e!745365 () Bool)

(assert (=> d!332177 (= lt!397328 e!745365)))

(declare-fun res!525009 () Bool)

(assert (=> d!332177 (=> (not res!525009) (not e!745365))))

(assert (=> d!332177 (= res!525009 (= (list!4216 (_1!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396696)))))) (list!4216 (singletonSeq!658 (h!16856 lt!396696)))))))

(declare-fun e!745364 () Bool)

(assert (=> d!332177 (= lt!397328 e!745364)))

(declare-fun res!525008 () Bool)

(assert (=> d!332177 (=> (not res!525008) (not e!745364))))

(declare-fun lt!397327 () tuple2!12010)

(assert (=> d!332177 (= res!525008 (= (size!9011 (_1!6852 lt!397327)) 1))))

(assert (=> d!332177 (= lt!397327 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396696)))))))

(assert (=> d!332177 (not (isEmpty!6985 (rules!9520 thiss!10527)))))

(assert (=> d!332177 (= (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396696)) lt!397328)))

(declare-fun b!1163627 () Bool)

(declare-fun res!525007 () Bool)

(assert (=> b!1163627 (=> (not res!525007) (not e!745364))))

(assert (=> b!1163627 (= res!525007 (= (apply!2457 (_1!6852 lt!397327) 0) (h!16856 lt!396696)))))

(declare-fun b!1163628 () Bool)

(assert (=> b!1163628 (= e!745364 (isEmpty!6987 (_2!6852 lt!397327)))))

(declare-fun b!1163629 () Bool)

(assert (=> b!1163629 (= e!745365 (isEmpty!6987 (_2!6852 (lex!698 Lexer!1686 (rules!9520 thiss!10527) (print!635 Lexer!1686 (singletonSeq!658 (h!16856 lt!396696)))))))))

(assert (= (and d!332177 res!525008) b!1163627))

(assert (= (and b!1163627 res!525007) b!1163628))

(assert (= (and d!332177 res!525009) b!1163629))

(declare-fun m!1332591 () Bool)

(assert (=> d!332177 m!1332591))

(assert (=> d!332177 m!1332591))

(declare-fun m!1332593 () Bool)

(assert (=> d!332177 m!1332593))

(assert (=> d!332177 m!1332593))

(declare-fun m!1332595 () Bool)

(assert (=> d!332177 m!1332595))

(declare-fun m!1332597 () Bool)

(assert (=> d!332177 m!1332597))

(assert (=> d!332177 m!1331229))

(assert (=> d!332177 m!1332591))

(declare-fun m!1332599 () Bool)

(assert (=> d!332177 m!1332599))

(declare-fun m!1332601 () Bool)

(assert (=> d!332177 m!1332601))

(declare-fun m!1332603 () Bool)

(assert (=> b!1163627 m!1332603))

(declare-fun m!1332605 () Bool)

(assert (=> b!1163628 m!1332605))

(assert (=> b!1163629 m!1332591))

(assert (=> b!1163629 m!1332591))

(assert (=> b!1163629 m!1332593))

(assert (=> b!1163629 m!1332593))

(assert (=> b!1163629 m!1332595))

(declare-fun m!1332607 () Bool)

(assert (=> b!1163629 m!1332607))

(assert (=> b!1162902 d!332177))

(declare-fun b!1163638 () Bool)

(declare-fun e!745370 () Bool)

(assert (=> b!1163638 (= e!745370 true)))

(declare-fun b!1163640 () Bool)

(declare-fun e!745371 () Bool)

(assert (=> b!1163640 (= e!745371 true)))

(declare-fun b!1163639 () Bool)

(assert (=> b!1163639 (= e!745370 e!745371)))

(assert (=> b!1162928 e!745370))

(assert (= (and b!1162928 ((_ is Node!3749) (c!194406 (tokens!1602 thiss!10527)))) b!1163638))

(assert (= b!1163639 b!1163640))

(assert (= (and b!1162928 ((_ is Leaf!5756) (c!194406 (tokens!1602 thiss!10527)))) b!1163639))

(declare-fun b!1163643 () Bool)

(declare-fun e!745374 () Bool)

(assert (=> b!1163643 (= e!745374 true)))

(declare-fun b!1163642 () Bool)

(declare-fun e!745373 () Bool)

(assert (=> b!1163642 (= e!745373 e!745374)))

(declare-fun b!1163641 () Bool)

(declare-fun e!745372 () Bool)

(assert (=> b!1163641 (= e!745372 e!745373)))

(assert (=> b!1162927 e!745372))

(assert (= b!1163642 b!1163643))

(assert (= b!1163641 b!1163642))

(assert (= (and b!1162927 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163641))

(assert (=> b!1163643 (< (dynLambda!5043 order!7005 (toValue!3094 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47557))))

(assert (=> b!1163643 (< (dynLambda!5045 order!7009 (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527))))) (dynLambda!5044 order!7007 lambda!47557))))

(declare-fun tp!333951 () Bool)

(declare-fun tp!333949 () Bool)

(declare-fun e!745380 () Bool)

(declare-fun b!1163652 () Bool)

(assert (=> b!1163652 (= e!745380 (and (inv!15065 (left!10015 (c!194406 (tokens!1602 thiss!10527)))) tp!333949 (inv!15065 (right!10345 (c!194406 (tokens!1602 thiss!10527)))) tp!333951))))

(declare-fun b!1163654 () Bool)

(declare-fun e!745379 () Bool)

(declare-fun tp!333950 () Bool)

(assert (=> b!1163654 (= e!745379 tp!333950)))

(declare-fun b!1163653 () Bool)

(declare-fun inv!15075 (IArray!7503) Bool)

(assert (=> b!1163653 (= e!745380 (and (inv!15075 (xs!6454 (c!194406 (tokens!1602 thiss!10527)))) e!745379))))

(assert (=> b!1162919 (= tp!333917 (and (inv!15065 (c!194406 (tokens!1602 thiss!10527))) e!745380))))

(assert (= (and b!1162919 ((_ is Node!3749) (c!194406 (tokens!1602 thiss!10527)))) b!1163652))

(assert (= b!1163653 b!1163654))

(assert (= (and b!1162919 ((_ is Leaf!5756) (c!194406 (tokens!1602 thiss!10527)))) b!1163653))

(declare-fun m!1332609 () Bool)

(assert (=> b!1163652 m!1332609))

(declare-fun m!1332611 () Bool)

(assert (=> b!1163652 m!1332611))

(declare-fun m!1332613 () Bool)

(assert (=> b!1163653 m!1332613))

(assert (=> b!1162919 m!1331267))

(declare-fun b!1163665 () Bool)

(declare-fun b_free!27757 () Bool)

(declare-fun b_next!28461 () Bool)

(assert (=> b!1163665 (= b_free!27757 (not b_next!28461))))

(declare-fun tp!333961 () Bool)

(declare-fun b_and!80633 () Bool)

(assert (=> b!1163665 (= tp!333961 b_and!80633)))

(declare-fun b_free!27759 () Bool)

(declare-fun b_next!28463 () Bool)

(assert (=> b!1163665 (= b_free!27759 (not b_next!28463))))

(declare-fun t!110045 () Bool)

(declare-fun tb!65843 () Bool)

(assert (=> (and b!1163665 (= (toChars!2953 (transformation!1993 (h!16857 (rules!9520 thiss!10527)))) (toChars!2953 (transformation!1993 (rule!3414 lt!396688)))) t!110045) tb!65843))

(declare-fun b!1163670 () Bool)

(declare-fun e!745395 () Bool)

(declare-fun tp!333966 () Bool)

(declare-fun inv!15076 (Conc!3748) Bool)

(assert (=> b!1163670 (= e!745395 (and (inv!15076 (c!194405 (dynLambda!5042 (toChars!2953 (transformation!1993 (rule!3414 lt!396688))) (value!64797 lt!396688)))) tp!333966))))

(declare-fun result!78758 () Bool)

(declare-fun inv!15077 (BalanceConc!7518) Bool)

(assert (=> tb!65843 (= result!78758 (and (inv!15077 (dynLambda!5042 (toChars!2953 (transformation!1993 (rule!3414 lt!396688))) (value!64797 lt!396688))) e!745395))))

(assert (= tb!65843 b!1163670))

(declare-fun m!1332615 () Bool)

(assert (=> b!1163670 m!1332615))

(declare-fun m!1332617 () Bool)

(assert (=> tb!65843 m!1332617))

(assert (=> d!331901 t!110045))

(declare-fun b_and!80635 () Bool)

(declare-fun tp!333962 () Bool)

(assert (=> b!1163665 (= tp!333962 (and (=> t!110045 result!78758) b_and!80635))))

(declare-fun e!745389 () Bool)

(assert (=> b!1163665 (= e!745389 (and tp!333961 tp!333962))))

(declare-fun b!1163664 () Bool)

(declare-fun tp!333960 () Bool)

(declare-fun e!745392 () Bool)

(declare-fun inv!15060 (String!13883) Bool)

(declare-fun inv!15078 (TokenValueInjection!3818) Bool)

(assert (=> b!1163664 (= e!745392 (and tp!333960 (inv!15060 (tag!2255 (h!16857 (rules!9520 thiss!10527)))) (inv!15078 (transformation!1993 (h!16857 (rules!9520 thiss!10527)))) e!745389))))

(declare-fun b!1163663 () Bool)

(declare-fun e!745390 () Bool)

(declare-fun tp!333963 () Bool)

(assert (=> b!1163663 (= e!745390 (and e!745392 tp!333963))))

(assert (=> b!1162914 (= tp!333918 e!745390)))

(assert (= b!1163664 b!1163665))

(assert (= b!1163663 b!1163664))

(assert (= (and b!1162914 ((_ is Cons!11456) (rules!9520 thiss!10527))) b!1163663))

(declare-fun m!1332619 () Bool)

(assert (=> b!1163664 m!1332619))

(declare-fun m!1332621 () Bool)

(assert (=> b!1163664 m!1332621))

(declare-fun b_lambda!34685 () Bool)

(assert (= b_lambda!34683 (or b!1162920 b_lambda!34685)))

(declare-fun bs!283944 () Bool)

(declare-fun d!332179 () Bool)

(assert (= bs!283944 (and d!332179 b!1162920)))

(assert (=> bs!283944 (= (dynLambda!5046 lambda!47557 (h!16856 lt!396681)) (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396681)))))

(assert (=> bs!283944 m!1331345))

(assert (=> b!1163625 d!332179))

(declare-fun b_lambda!34687 () Bool)

(assert (= b_lambda!34665 (or b!1162920 b_lambda!34687)))

(declare-fun bs!283945 () Bool)

(declare-fun d!332181 () Bool)

(assert (= bs!283945 (and d!332181 b!1162920)))

(assert (=> bs!283945 (= (dynLambda!5046 lambda!47557 (h!16856 lt!396696)) (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396696)))))

(assert (=> bs!283945 m!1331291))

(assert (=> b!1163020 d!332181))

(declare-fun b_lambda!34689 () Bool)

(assert (= b_lambda!34669 (or b!1162920 b_lambda!34689)))

(declare-fun bs!283946 () Bool)

(declare-fun d!332183 () Bool)

(assert (= bs!283946 (and d!332183 b!1162920)))

(assert (=> bs!283946 (= (dynLambda!5046 lambda!47557 (h!16856 lt!396694)) (rulesProduceIndividualToken!725 Lexer!1686 (rules!9520 thiss!10527) (h!16856 lt!396694)))))

(assert (=> bs!283946 m!1331285))

(assert (=> b!1163284 d!332183))

(check-sat (not d!331927) (not d!332159) (not b!1163500) (not d!332165) (not b_next!28463) (not b!1162999) (not b!1163150) (not b!1163654) (not b!1163628) (not b!1163248) (not b!1163247) (not b!1163187) (not d!332121) (not d!332151) (not b!1163624) (not b!1163640) (not b!1163377) (not b!1163535) (not bm!82133) (not b!1163488) (not b!1163553) (not b!1162995) (not b!1163641) (not b_lambda!34685) (not b!1163285) (not d!331923) (not d!332029) (not b!1163373) (not b!1163652) (not b!1163271) (not d!332065) b_and!80633 (not d!331925) (not d!332079) (not d!332041) (not d!332173) (not d!332149) (not b!1163246) (not b!1163013) (not d!331937) (not b!1163541) (not b!1163428) (not d!332051) (not b!1162985) (not b!1163149) (not d!332101) (not b!1163413) (not bm!82137) (not b!1163283) (not b!1163401) (not d!332163) (not b!1163443) (not b!1163399) (not b!1163266) (not d!332021) (not b!1163410) (not bm!82136) (not b!1163391) (not d!332105) (not b!1163446) (not d!331999) (not d!332059) (not b!1163447) (not b!1162997) (not b!1163502) (not b!1163011) (not b!1163626) (not bm!82135) (not b!1163145) (not b!1163423) (not b!1162998) (not b!1163375) (not d!331931) (not b!1163008) b_and!80635 (not b!1163404) (not b!1163282) (not b!1163332) (not b!1163143) (not d!332139) (not d!332125) (not b!1163663) (not b!1163415) (not b!1163400) (not b!1163021) (not b!1163185) (not d!331903) (not b!1163508) (not d!332123) (not d!331901) (not b!1163144) (not d!332141) (not d!332057) (not b!1163184) (not b!1163186) (not b!1163550) (not b!1163605) (not b!1163422) (not b!1163146) (not b!1163307) (not b!1163406) (not b!1163412) (not b!1163606) (not b!1162990) (not d!331905) (not b!1163540) (not b!1163548) (not b!1163414) (not d!331899) (not d!331917) (not d!332027) (not b!1163546) (not b!1163547) (not b!1163623) (not b!1163489) (not b_lambda!34687) (not b!1163268) (not d!331919) (not b!1163552) (not d!332083) (not b!1163411) (not b!1163427) (not b!1163426) (not b!1163653) (not b!1163183) (not b!1162984) (not b!1163372) (not b!1163604) (not d!332039) (not b_lambda!34689) (not bs!283946) (not b!1163602) (not b_next!28461) (not b!1162983) (not d!332089) (not d!332115) (not b!1163269) (not tb!65843) (not d!332019) (not b!1163627) (not b!1163448) (not b!1163442) (not d!332093) (not d!332001) (not b!1163503) (not b!1163335) (not b!1163436) (not b!1163614) (not d!332145) (not b!1163444) (not d!332135) (not b!1163331) (not b!1163408) (not b!1163615) (not b!1163405) (not d!332127) (not b!1162996) (not b!1163416) (not b!1163390) (not d!332171) (not b!1163551) (not b!1163603) (not d!332037) (not b!1163504) (not b!1162965) (not b!1163336) (not b!1163545) (not b!1163012) (not b!1163407) (not d!332055) (not b!1163409) (not d!332109) (not b!1163487) (not d!332081) (not b!1163513) (not b!1163622) (not d!331991) (not d!331985) (not b!1163629) (not b!1163670) (not b!1162919) (not b!1163374) (not b!1163148) (not d!331915) (not b!1163147) (not b!1163376) (not b!1163638) (not b!1163245) (not b!1162956) (not b!1163010) (not d!332167) (not b!1163601) (not bs!283945) (not b!1163549) (not b_lambda!34663) (not d!332071) (not b!1163441) (not b!1163495) (not b!1163244) (not d!332161) (not b!1163531) (not b!1163664) (not b!1163611) (not b!1163312) (not b!1163501) (not d!332177) (not bs!283944) (not b!1163330) (not b!1163337))
(check-sat b_and!80633 b_and!80635 (not b_next!28461) (not b_next!28463))
