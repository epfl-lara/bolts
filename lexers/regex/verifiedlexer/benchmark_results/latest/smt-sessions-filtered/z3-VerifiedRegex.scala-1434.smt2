; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74722 () Bool)

(assert start!74722)

(declare-fun b!841647 () Bool)

(declare-fun b_free!25161 () Bool)

(declare-fun b_next!25225 () Bool)

(assert (=> b!841647 (= b_free!25161 (not b_next!25225))))

(declare-fun tp!264764 () Bool)

(declare-fun b_and!72773 () Bool)

(assert (=> b!841647 (= tp!264764 b_and!72773)))

(declare-fun b_free!25163 () Bool)

(declare-fun b_next!25227 () Bool)

(assert (=> b!841647 (= b_free!25163 (not b_next!25227))))

(declare-fun tp!264766 () Bool)

(declare-fun b_and!72775 () Bool)

(assert (=> b!841647 (= tp!264766 b_and!72775)))

(declare-fun b!841645 () Bool)

(declare-fun b_free!25165 () Bool)

(declare-fun b_next!25229 () Bool)

(assert (=> b!841645 (= b_free!25165 (not b_next!25229))))

(declare-fun tp!264773 () Bool)

(declare-fun b_and!72777 () Bool)

(assert (=> b!841645 (= tp!264773 b_and!72777)))

(declare-fun b_free!25167 () Bool)

(declare-fun b_next!25231 () Bool)

(assert (=> b!841645 (= b_free!25167 (not b_next!25231))))

(declare-fun tp!264767 () Bool)

(declare-fun b_and!72779 () Bool)

(assert (=> b!841645 (= tp!264767 b_and!72779)))

(declare-fun b!841644 () Bool)

(declare-fun b_free!25169 () Bool)

(declare-fun b_next!25233 () Bool)

(assert (=> b!841644 (= b_free!25169 (not b_next!25233))))

(declare-fun tp!264771 () Bool)

(declare-fun b_and!72781 () Bool)

(assert (=> b!841644 (= tp!264771 b_and!72781)))

(declare-fun b_free!25171 () Bool)

(declare-fun b_next!25235 () Bool)

(assert (=> b!841644 (= b_free!25171 (not b_next!25235))))

(declare-fun tp!264776 () Bool)

(declare-fun b_and!72783 () Bool)

(assert (=> b!841644 (= tp!264776 b_and!72783)))

(declare-fun b!841627 () Bool)

(declare-fun res!384749 () Bool)

(declare-fun e!553587 () Bool)

(assert (=> b!841627 (=> (not res!384749) (not e!553587))))

(declare-datatypes ((LexerInterface!1496 0))(
  ( (LexerInterfaceExt!1493 (__x!7251 Int)) (Lexer!1494) )
))
(declare-fun thiss!20117 () LexerInterface!1496)

(declare-datatypes ((List!9050 0))(
  ( (Nil!9034) (Cons!9034 (h!14435 (_ BitVec 16)) (t!93592 List!9050)) )
))
(declare-datatypes ((TokenValue!1760 0))(
  ( (FloatLiteralValue!3520 (text!12765 List!9050)) (TokenValueExt!1759 (__x!7252 Int)) (Broken!8800 (value!54952 List!9050)) (Object!1775) (End!1760) (Def!1760) (Underscore!1760) (Match!1760) (Else!1760) (Error!1760) (Case!1760) (If!1760) (Extends!1760) (Abstract!1760) (Class!1760) (Val!1760) (DelimiterValue!3520 (del!1820 List!9050)) (KeywordValue!1766 (value!54953 List!9050)) (CommentValue!3520 (value!54954 List!9050)) (WhitespaceValue!3520 (value!54955 List!9050)) (IndentationValue!1760 (value!54956 List!9050)) (String!10697) (Int32!1760) (Broken!8801 (value!54957 List!9050)) (Boolean!1761) (Unit!13472) (OperatorValue!1763 (op!1820 List!9050)) (IdentifierValue!3520 (value!54958 List!9050)) (IdentifierValue!3521 (value!54959 List!9050)) (WhitespaceValue!3521 (value!54960 List!9050)) (True!3520) (False!3520) (Broken!8802 (value!54961 List!9050)) (Broken!8803 (value!54962 List!9050)) (True!3521) (RightBrace!1760) (RightBracket!1760) (Colon!1760) (Null!1760) (Comma!1760) (LeftBracket!1760) (False!3521) (LeftBrace!1760) (ImaginaryLiteralValue!1760 (text!12766 List!9050)) (StringLiteralValue!5280 (value!54963 List!9050)) (EOFValue!1760 (value!54964 List!9050)) (IdentValue!1760 (value!54965 List!9050)) (DelimiterValue!3521 (value!54966 List!9050)) (DedentValue!1760 (value!54967 List!9050)) (NewLineValue!1760 (value!54968 List!9050)) (IntegerValue!5280 (value!54969 (_ BitVec 32)) (text!12767 List!9050)) (IntegerValue!5281 (value!54970 Int) (text!12768 List!9050)) (Times!1760) (Or!1760) (Equal!1760) (Minus!1760) (Broken!8804 (value!54971 List!9050)) (And!1760) (Div!1760) (LessEqual!1760) (Mod!1760) (Concat!3887) (Not!1760) (Plus!1760) (SpaceValue!1760 (value!54972 List!9050)) (IntegerValue!5282 (value!54973 Int) (text!12769 List!9050)) (StringLiteralValue!5281 (text!12770 List!9050)) (FloatLiteralValue!3521 (text!12771 List!9050)) (BytesLiteralValue!1760 (value!54974 List!9050)) (CommentValue!3521 (value!54975 List!9050)) (StringLiteralValue!5282 (value!54976 List!9050)) (ErrorTokenValue!1760 (msg!1821 List!9050)) )
))
(declare-datatypes ((C!4824 0))(
  ( (C!4825 (val!2660 Int)) )
))
(declare-datatypes ((Regex!2127 0))(
  ( (ElementMatch!2127 (c!137157 C!4824)) (Concat!3888 (regOne!4766 Regex!2127) (regTwo!4766 Regex!2127)) (EmptyExpr!2127) (Star!2127 (reg!2456 Regex!2127)) (EmptyLang!2127) (Union!2127 (regOne!4767 Regex!2127) (regTwo!4767 Regex!2127)) )
))
(declare-datatypes ((String!10698 0))(
  ( (String!10699 (value!54977 String)) )
))
(declare-datatypes ((List!9051 0))(
  ( (Nil!9035) (Cons!9035 (h!14436 C!4824) (t!93593 List!9051)) )
))
(declare-datatypes ((IArray!5999 0))(
  ( (IArray!6000 (innerList!3057 List!9051)) )
))
(declare-datatypes ((Conc!2997 0))(
  ( (Node!2997 (left!6701 Conc!2997) (right!7031 Conc!2997) (csize!6224 Int) (cheight!3208 Int)) (Leaf!4432 (xs!5686 IArray!5999) (csize!6225 Int)) (Empty!2997) )
))
(declare-datatypes ((BalanceConc!6008 0))(
  ( (BalanceConc!6009 (c!137158 Conc!2997)) )
))
(declare-datatypes ((TokenValueInjection!3220 0))(
  ( (TokenValueInjection!3221 (toValue!2711 Int) (toChars!2570 Int)) )
))
(declare-datatypes ((Rule!3188 0))(
  ( (Rule!3189 (regex!1694 Regex!2127) (tag!1956 String!10698) (isSeparator!1694 Bool) (transformation!1694 TokenValueInjection!3220)) )
))
(declare-datatypes ((List!9052 0))(
  ( (Nil!9036) (Cons!9036 (h!14437 Rule!3188) (t!93594 List!9052)) )
))
(declare-fun rules!2621 () List!9052)

(declare-fun rulesInvariant!1372 (LexerInterface!1496 List!9052) Bool)

(assert (=> b!841627 (= res!384749 (rulesInvariant!1372 thiss!20117 rules!2621))))

(declare-fun e!553586 () Bool)

(declare-datatypes ((Token!3054 0))(
  ( (Token!3055 (value!54978 TokenValue!1760) (rule!3117 Rule!3188) (size!7543 Int) (originalCharacters!2250 List!9051)) )
))
(declare-fun separatorToken!297 () Token!3054)

(declare-fun e!553600 () Bool)

(declare-fun b!841628 () Bool)

(declare-fun tp!264770 () Bool)

(declare-fun inv!11505 (String!10698) Bool)

(declare-fun inv!11508 (TokenValueInjection!3220) Bool)

(assert (=> b!841628 (= e!553600 (and tp!264770 (inv!11505 (tag!1956 (rule!3117 separatorToken!297))) (inv!11508 (transformation!1694 (rule!3117 separatorToken!297))) e!553586))))

(declare-fun b!841629 () Bool)

(declare-fun res!384751 () Bool)

(assert (=> b!841629 (=> (not res!384751) (not e!553587))))

(assert (=> b!841629 (= res!384751 (isSeparator!1694 (rule!3117 separatorToken!297)))))

(declare-fun e!553603 () Bool)

(declare-fun tp!264772 () Bool)

(declare-fun e!553599 () Bool)

(declare-fun b!841630 () Bool)

(assert (=> b!841630 (= e!553603 (and tp!264772 (inv!11505 (tag!1956 (h!14437 rules!2621))) (inv!11508 (transformation!1694 (h!14437 rules!2621))) e!553599))))

(declare-fun b!841631 () Bool)

(declare-fun res!384744 () Bool)

(assert (=> b!841631 (=> (not res!384744) (not e!553587))))

(declare-fun rulesProduceIndividualToken!560 (LexerInterface!1496 List!9052 Token!3054) Bool)

(assert (=> b!841631 (= res!384744 (rulesProduceIndividualToken!560 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun res!384743 () Bool)

(assert (=> start!74722 (=> (not res!384743) (not e!553587))))

(get-info :version)

(assert (=> start!74722 (= res!384743 ((_ is Lexer!1494) thiss!20117))))

(assert (=> start!74722 e!553587))

(assert (=> start!74722 true))

(declare-fun e!553585 () Bool)

(assert (=> start!74722 e!553585))

(declare-fun e!553592 () Bool)

(assert (=> start!74722 e!553592))

(declare-fun e!553596 () Bool)

(declare-fun inv!11509 (Token!3054) Bool)

(assert (=> start!74722 (and (inv!11509 separatorToken!297) e!553596)))

(declare-fun b!841632 () Bool)

(declare-fun res!384747 () Bool)

(assert (=> b!841632 (=> (not res!384747) (not e!553587))))

(declare-fun sepAndNonSepRulesDisjointChars!494 (List!9052 List!9052) Bool)

(assert (=> b!841632 (= res!384747 (sepAndNonSepRulesDisjointChars!494 rules!2621 rules!2621))))

(declare-fun b!841633 () Bool)

(declare-fun e!553594 () Bool)

(assert (=> b!841633 (= e!553594 true)))

(declare-fun e!553590 () Bool)

(assert (=> b!841633 e!553590))

(declare-fun res!384740 () Bool)

(assert (=> b!841633 (=> (not res!384740) (not e!553590))))

(declare-datatypes ((List!9053 0))(
  ( (Nil!9037) (Cons!9037 (h!14438 Token!3054) (t!93595 List!9053)) )
))
(declare-fun lt!318736 () List!9053)

(declare-fun rulesProduceEachTokenIndividuallyList!384 (LexerInterface!1496 List!9052 List!9053) Bool)

(assert (=> b!841633 (= res!384740 (rulesProduceEachTokenIndividuallyList!384 thiss!20117 rules!2621 lt!318736))))

(declare-fun lt!318735 () List!9053)

(declare-datatypes ((Unit!13473 0))(
  ( (Unit!13474) )
))
(declare-fun lt!318739 () Unit!13473)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!26 (LexerInterface!1496 List!9052 List!9053 Token!3054) Unit!13473)

(assert (=> b!841633 (= lt!318739 (withSeparatorTokenListPreservesRulesProduceTokens!26 thiss!20117 rules!2621 lt!318735 separatorToken!297))))

(declare-fun lt!318737 () Unit!13473)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!2 (LexerInterface!1496 List!9052 List!9053 Token!3054) Unit!13473)

(assert (=> b!841633 (= lt!318737 (printWithSeparatorTokenImpliesSeparableTokensList!2 thiss!20117 rules!2621 lt!318735 separatorToken!297))))

(declare-fun lt!318740 () List!9053)

(declare-fun separableTokensPredicate!36 (LexerInterface!1496 Token!3054 Token!3054 List!9052) Bool)

(assert (=> b!841633 (separableTokensPredicate!36 thiss!20117 (h!14438 lt!318740) (h!14438 (t!93595 lt!318740)) rules!2621)))

(declare-fun lt!318738 () Unit!13473)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!18 (LexerInterface!1496 Token!3054 Token!3054 List!9052) Unit!13473)

(assert (=> b!841633 (= lt!318738 (lemmaTokensOfDifferentKindsAreSeparable!18 thiss!20117 (h!14438 lt!318740) (h!14438 (t!93595 lt!318740)) rules!2621))))

(declare-fun b!841634 () Bool)

(declare-fun res!384746 () Bool)

(assert (=> b!841634 (=> res!384746 e!553594)))

(assert (=> b!841634 (= res!384746 (not (= (h!14438 (t!93595 lt!318740)) separatorToken!297)))))

(declare-fun b!841635 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!18 (LexerInterface!1496 List!9053 List!9052) Bool)

(assert (=> b!841635 (= e!553590 (tokensListTwoByTwoPredicateSeparableList!18 thiss!20117 lt!318736 rules!2621))))

(declare-fun b!841636 () Bool)

(declare-fun e!553591 () Bool)

(assert (=> b!841636 (= e!553591 e!553594)))

(declare-fun res!384750 () Bool)

(assert (=> b!841636 (=> res!384750 e!553594)))

(assert (=> b!841636 (= res!384750 (not (= (t!93595 (t!93595 lt!318740)) lt!318736)))))

(declare-fun withSeparatorTokenList!26 (LexerInterface!1496 List!9053 Token!3054) List!9053)

(assert (=> b!841636 (= lt!318736 (withSeparatorTokenList!26 thiss!20117 lt!318735 separatorToken!297))))

(declare-fun l!5107 () List!9053)

(declare-fun tail!1012 (List!9053) List!9053)

(assert (=> b!841636 (= lt!318735 (tail!1012 l!5107))))

(declare-fun b!841637 () Bool)

(declare-fun res!384741 () Bool)

(assert (=> b!841637 (=> (not res!384741) (not e!553587))))

(declare-fun isEmpty!5321 (List!9052) Bool)

(assert (=> b!841637 (= res!384741 (not (isEmpty!5321 rules!2621)))))

(declare-fun b!841638 () Bool)

(declare-fun tp!264768 () Bool)

(assert (=> b!841638 (= e!553585 (and e!553603 tp!264768))))

(declare-fun e!553595 () Bool)

(declare-fun b!841639 () Bool)

(declare-fun tp!264765 () Bool)

(declare-fun e!553588 () Bool)

(assert (=> b!841639 (= e!553595 (and tp!264765 (inv!11505 (tag!1956 (rule!3117 (h!14438 l!5107)))) (inv!11508 (transformation!1694 (rule!3117 (h!14438 l!5107)))) e!553588))))

(declare-fun b!841640 () Bool)

(declare-fun res!384752 () Bool)

(assert (=> b!841640 (=> (not res!384752) (not e!553587))))

(assert (=> b!841640 (= res!384752 (rulesProduceEachTokenIndividuallyList!384 thiss!20117 rules!2621 l!5107))))

(declare-fun tp!264775 () Bool)

(declare-fun b!841641 () Bool)

(declare-fun e!553597 () Bool)

(assert (=> b!841641 (= e!553592 (and (inv!11509 (h!14438 l!5107)) e!553597 tp!264775))))

(declare-fun b!841642 () Bool)

(declare-fun tp!264774 () Bool)

(declare-fun inv!21 (TokenValue!1760) Bool)

(assert (=> b!841642 (= e!553596 (and (inv!21 (value!54978 separatorToken!297)) e!553600 tp!264774))))

(declare-fun b!841643 () Bool)

(declare-fun res!384748 () Bool)

(assert (=> b!841643 (=> res!384748 e!553594)))

(declare-fun head!1454 (List!9053) Token!3054)

(assert (=> b!841643 (= res!384748 (not (= (head!1454 l!5107) (h!14438 lt!318740))))))

(assert (=> b!841644 (= e!553586 (and tp!264771 tp!264776))))

(assert (=> b!841645 (= e!553599 (and tp!264773 tp!264767))))

(declare-fun b!841646 () Bool)

(declare-fun res!384742 () Bool)

(assert (=> b!841646 (=> (not res!384742) (not e!553587))))

(declare-fun lambda!24998 () Int)

(declare-fun forall!2109 (List!9053 Int) Bool)

(assert (=> b!841646 (= res!384742 (forall!2109 l!5107 lambda!24998))))

(assert (=> b!841647 (= e!553588 (and tp!264764 tp!264766))))

(declare-fun b!841648 () Bool)

(assert (=> b!841648 (= e!553587 (not e!553591))))

(declare-fun res!384745 () Bool)

(assert (=> b!841648 (=> res!384745 e!553591)))

(assert (=> b!841648 (= res!384745 (or (not ((_ is Cons!9037) lt!318740)) (not ((_ is Cons!9037) (t!93595 lt!318740)))))))

(assert (=> b!841648 (rulesProduceEachTokenIndividuallyList!384 thiss!20117 rules!2621 lt!318740)))

(assert (=> b!841648 (= lt!318740 (withSeparatorTokenList!26 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!318741 () Unit!13473)

(assert (=> b!841648 (= lt!318741 (withSeparatorTokenListPreservesRulesProduceTokens!26 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!841649 () Bool)

(declare-fun tp!264769 () Bool)

(assert (=> b!841649 (= e!553597 (and (inv!21 (value!54978 (h!14438 l!5107))) e!553595 tp!264769))))

(assert (= (and start!74722 res!384743) b!841637))

(assert (= (and b!841637 res!384741) b!841627))

(assert (= (and b!841627 res!384749) b!841640))

(assert (= (and b!841640 res!384752) b!841631))

(assert (= (and b!841631 res!384744) b!841629))

(assert (= (and b!841629 res!384751) b!841646))

(assert (= (and b!841646 res!384742) b!841632))

(assert (= (and b!841632 res!384747) b!841648))

(assert (= (and b!841648 (not res!384745)) b!841636))

(assert (= (and b!841636 (not res!384750)) b!841643))

(assert (= (and b!841643 (not res!384748)) b!841634))

(assert (= (and b!841634 (not res!384746)) b!841633))

(assert (= (and b!841633 res!384740) b!841635))

(assert (= b!841630 b!841645))

(assert (= b!841638 b!841630))

(assert (= (and start!74722 ((_ is Cons!9036) rules!2621)) b!841638))

(assert (= b!841639 b!841647))

(assert (= b!841649 b!841639))

(assert (= b!841641 b!841649))

(assert (= (and start!74722 ((_ is Cons!9037) l!5107)) b!841641))

(assert (= b!841628 b!841644))

(assert (= b!841642 b!841628))

(assert (= start!74722 b!841642))

(declare-fun m!1074597 () Bool)

(assert (=> b!841649 m!1074597))

(declare-fun m!1074599 () Bool)

(assert (=> start!74722 m!1074599))

(declare-fun m!1074601 () Bool)

(assert (=> b!841643 m!1074601))

(declare-fun m!1074603 () Bool)

(assert (=> b!841640 m!1074603))

(declare-fun m!1074605 () Bool)

(assert (=> b!841627 m!1074605))

(declare-fun m!1074607 () Bool)

(assert (=> b!841633 m!1074607))

(declare-fun m!1074609 () Bool)

(assert (=> b!841633 m!1074609))

(declare-fun m!1074611 () Bool)

(assert (=> b!841633 m!1074611))

(declare-fun m!1074613 () Bool)

(assert (=> b!841633 m!1074613))

(declare-fun m!1074615 () Bool)

(assert (=> b!841633 m!1074615))

(declare-fun m!1074617 () Bool)

(assert (=> b!841628 m!1074617))

(declare-fun m!1074619 () Bool)

(assert (=> b!841628 m!1074619))

(declare-fun m!1074621 () Bool)

(assert (=> b!841642 m!1074621))

(declare-fun m!1074623 () Bool)

(assert (=> b!841630 m!1074623))

(declare-fun m!1074625 () Bool)

(assert (=> b!841630 m!1074625))

(declare-fun m!1074627 () Bool)

(assert (=> b!841646 m!1074627))

(declare-fun m!1074629 () Bool)

(assert (=> b!841639 m!1074629))

(declare-fun m!1074631 () Bool)

(assert (=> b!841639 m!1074631))

(declare-fun m!1074633 () Bool)

(assert (=> b!841635 m!1074633))

(declare-fun m!1074635 () Bool)

(assert (=> b!841636 m!1074635))

(declare-fun m!1074637 () Bool)

(assert (=> b!841636 m!1074637))

(declare-fun m!1074639 () Bool)

(assert (=> b!841632 m!1074639))

(declare-fun m!1074641 () Bool)

(assert (=> b!841641 m!1074641))

(declare-fun m!1074643 () Bool)

(assert (=> b!841637 m!1074643))

(declare-fun m!1074645 () Bool)

(assert (=> b!841631 m!1074645))

(declare-fun m!1074647 () Bool)

(assert (=> b!841648 m!1074647))

(declare-fun m!1074649 () Bool)

(assert (=> b!841648 m!1074649))

(declare-fun m!1074651 () Bool)

(assert (=> b!841648 m!1074651))

(check-sat (not b!841638) (not b!841648) b_and!72773 (not b_next!25227) (not b!841631) (not b!841646) (not b!841633) (not b!841641) (not b!841630) (not start!74722) (not b_next!25225) (not b!841628) (not b!841642) (not b_next!25233) (not b!841637) (not b!841649) b_and!72779 (not b!841627) b_and!72783 (not b_next!25229) (not b!841635) b_and!72777 (not b!841639) (not b_next!25231) (not b!841632) (not b_next!25235) b_and!72781 (not b!841640) b_and!72775 (not b!841636) (not b!841643))
(check-sat (not b_next!25233) b_and!72779 b_and!72783 b_and!72773 (not b_next!25227) (not b_next!25231) (not b_next!25235) (not b_next!25225) b_and!72781 b_and!72775 (not b_next!25229) b_and!72777)
