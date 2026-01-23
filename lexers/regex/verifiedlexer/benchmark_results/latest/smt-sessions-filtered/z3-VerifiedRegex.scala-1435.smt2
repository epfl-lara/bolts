; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74726 () Bool)

(assert start!74726)

(declare-fun b!841780 () Bool)

(declare-fun b_free!25185 () Bool)

(declare-fun b_next!25249 () Bool)

(assert (=> b!841780 (= b_free!25185 (not b_next!25249))))

(declare-fun tp!264849 () Bool)

(declare-fun b_and!72797 () Bool)

(assert (=> b!841780 (= tp!264849 b_and!72797)))

(declare-fun b_free!25187 () Bool)

(declare-fun b_next!25251 () Bool)

(assert (=> b!841780 (= b_free!25187 (not b_next!25251))))

(declare-fun tp!264851 () Bool)

(declare-fun b_and!72799 () Bool)

(assert (=> b!841780 (= tp!264851 b_and!72799)))

(declare-fun b!841785 () Bool)

(declare-fun b_free!25189 () Bool)

(declare-fun b_next!25253 () Bool)

(assert (=> b!841785 (= b_free!25189 (not b_next!25253))))

(declare-fun tp!264852 () Bool)

(declare-fun b_and!72801 () Bool)

(assert (=> b!841785 (= tp!264852 b_and!72801)))

(declare-fun b_free!25191 () Bool)

(declare-fun b_next!25255 () Bool)

(assert (=> b!841785 (= b_free!25191 (not b_next!25255))))

(declare-fun tp!264842 () Bool)

(declare-fun b_and!72803 () Bool)

(assert (=> b!841785 (= tp!264842 b_and!72803)))

(declare-fun b!841770 () Bool)

(declare-fun b_free!25193 () Bool)

(declare-fun b_next!25257 () Bool)

(assert (=> b!841770 (= b_free!25193 (not b_next!25257))))

(declare-fun tp!264844 () Bool)

(declare-fun b_and!72805 () Bool)

(assert (=> b!841770 (= tp!264844 b_and!72805)))

(declare-fun b_free!25195 () Bool)

(declare-fun b_next!25259 () Bool)

(assert (=> b!841770 (= b_free!25195 (not b_next!25259))))

(declare-fun tp!264847 () Bool)

(declare-fun b_and!72807 () Bool)

(assert (=> b!841770 (= tp!264847 b_and!72807)))

(declare-fun e!553716 () Bool)

(assert (=> b!841770 (= e!553716 (and tp!264844 tp!264847))))

(declare-fun b!841771 () Bool)

(declare-fun e!553711 () Bool)

(declare-fun e!553705 () Bool)

(assert (=> b!841771 (= e!553711 (not e!553705))))

(declare-fun res!384823 () Bool)

(assert (=> b!841771 (=> res!384823 e!553705)))

(declare-datatypes ((List!9058 0))(
  ( (Nil!9042) (Cons!9042 (h!14443 (_ BitVec 16)) (t!93600 List!9058)) )
))
(declare-datatypes ((TokenValue!1762 0))(
  ( (FloatLiteralValue!3524 (text!12779 List!9058)) (TokenValueExt!1761 (__x!7255 Int)) (Broken!8810 (value!55009 List!9058)) (Object!1777) (End!1762) (Def!1762) (Underscore!1762) (Match!1762) (Else!1762) (Error!1762) (Case!1762) (If!1762) (Extends!1762) (Abstract!1762) (Class!1762) (Val!1762) (DelimiterValue!3524 (del!1822 List!9058)) (KeywordValue!1768 (value!55010 List!9058)) (CommentValue!3524 (value!55011 List!9058)) (WhitespaceValue!3524 (value!55012 List!9058)) (IndentationValue!1762 (value!55013 List!9058)) (String!10707) (Int32!1762) (Broken!8811 (value!55014 List!9058)) (Boolean!1763) (Unit!13478) (OperatorValue!1765 (op!1822 List!9058)) (IdentifierValue!3524 (value!55015 List!9058)) (IdentifierValue!3525 (value!55016 List!9058)) (WhitespaceValue!3525 (value!55017 List!9058)) (True!3524) (False!3524) (Broken!8812 (value!55018 List!9058)) (Broken!8813 (value!55019 List!9058)) (True!3525) (RightBrace!1762) (RightBracket!1762) (Colon!1762) (Null!1762) (Comma!1762) (LeftBracket!1762) (False!3525) (LeftBrace!1762) (ImaginaryLiteralValue!1762 (text!12780 List!9058)) (StringLiteralValue!5286 (value!55020 List!9058)) (EOFValue!1762 (value!55021 List!9058)) (IdentValue!1762 (value!55022 List!9058)) (DelimiterValue!3525 (value!55023 List!9058)) (DedentValue!1762 (value!55024 List!9058)) (NewLineValue!1762 (value!55025 List!9058)) (IntegerValue!5286 (value!55026 (_ BitVec 32)) (text!12781 List!9058)) (IntegerValue!5287 (value!55027 Int) (text!12782 List!9058)) (Times!1762) (Or!1762) (Equal!1762) (Minus!1762) (Broken!8814 (value!55028 List!9058)) (And!1762) (Div!1762) (LessEqual!1762) (Mod!1762) (Concat!3891) (Not!1762) (Plus!1762) (SpaceValue!1762 (value!55029 List!9058)) (IntegerValue!5288 (value!55030 Int) (text!12783 List!9058)) (StringLiteralValue!5287 (text!12784 List!9058)) (FloatLiteralValue!3525 (text!12785 List!9058)) (BytesLiteralValue!1762 (value!55031 List!9058)) (CommentValue!3525 (value!55032 List!9058)) (StringLiteralValue!5288 (value!55033 List!9058)) (ErrorTokenValue!1762 (msg!1823 List!9058)) )
))
(declare-datatypes ((C!4828 0))(
  ( (C!4829 (val!2662 Int)) )
))
(declare-datatypes ((Regex!2129 0))(
  ( (ElementMatch!2129 (c!137164 C!4828)) (Concat!3892 (regOne!4770 Regex!2129) (regTwo!4770 Regex!2129)) (EmptyExpr!2129) (Star!2129 (reg!2458 Regex!2129)) (EmptyLang!2129) (Union!2129 (regOne!4771 Regex!2129) (regTwo!4771 Regex!2129)) )
))
(declare-datatypes ((String!10708 0))(
  ( (String!10709 (value!55034 String)) )
))
(declare-datatypes ((List!9059 0))(
  ( (Nil!9043) (Cons!9043 (h!14444 C!4828) (t!93601 List!9059)) )
))
(declare-datatypes ((IArray!6005 0))(
  ( (IArray!6006 (innerList!3060 List!9059)) )
))
(declare-datatypes ((Conc!3000 0))(
  ( (Node!3000 (left!6705 Conc!3000) (right!7035 Conc!3000) (csize!6230 Int) (cheight!3211 Int)) (Leaf!4436 (xs!5689 IArray!6005) (csize!6231 Int)) (Empty!3000) )
))
(declare-datatypes ((BalanceConc!6014 0))(
  ( (BalanceConc!6015 (c!137165 Conc!3000)) )
))
(declare-datatypes ((TokenValueInjection!3224 0))(
  ( (TokenValueInjection!3225 (toValue!2713 Int) (toChars!2572 Int)) )
))
(declare-datatypes ((Rule!3192 0))(
  ( (Rule!3193 (regex!1696 Regex!2129) (tag!1958 String!10708) (isSeparator!1696 Bool) (transformation!1696 TokenValueInjection!3224)) )
))
(declare-datatypes ((Token!3058 0))(
  ( (Token!3059 (value!55035 TokenValue!1762) (rule!3119 Rule!3192) (size!7545 Int) (originalCharacters!2252 List!9059)) )
))
(declare-datatypes ((List!9060 0))(
  ( (Nil!9044) (Cons!9044 (h!14445 Token!3058) (t!93602 List!9060)) )
))
(declare-fun lt!318783 () List!9060)

(get-info :version)

(assert (=> b!841771 (= res!384823 (or (not ((_ is Cons!9044) lt!318783)) (not ((_ is Cons!9044) (t!93602 lt!318783)))))))

(declare-datatypes ((LexerInterface!1498 0))(
  ( (LexerInterfaceExt!1495 (__x!7256 Int)) (Lexer!1496) )
))
(declare-fun thiss!20117 () LexerInterface!1498)

(declare-datatypes ((List!9061 0))(
  ( (Nil!9045) (Cons!9045 (h!14446 Rule!3192) (t!93603 List!9061)) )
))
(declare-fun rules!2621 () List!9061)

(declare-fun rulesProduceEachTokenIndividuallyList!386 (LexerInterface!1498 List!9061 List!9060) Bool)

(assert (=> b!841771 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 lt!318783)))

(declare-fun separatorToken!297 () Token!3058)

(declare-fun l!5107 () List!9060)

(declare-fun withSeparatorTokenList!28 (LexerInterface!1498 List!9060 Token!3058) List!9060)

(assert (=> b!841771 (= lt!318783 (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13479 0))(
  ( (Unit!13480) )
))
(declare-fun lt!318777 () Unit!13479)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!28 (LexerInterface!1498 List!9061 List!9060 Token!3058) Unit!13479)

(assert (=> b!841771 (= lt!318777 (withSeparatorTokenListPreservesRulesProduceTokens!28 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!841772 () Bool)

(declare-fun e!553712 () Bool)

(declare-fun tp!264843 () Bool)

(declare-fun e!553710 () Bool)

(declare-fun inv!11515 (Token!3058) Bool)

(assert (=> b!841772 (= e!553712 (and (inv!11515 (h!14445 l!5107)) e!553710 tp!264843))))

(declare-fun b!841773 () Bool)

(declare-fun res!384829 () Bool)

(assert (=> b!841773 (=> (not res!384829) (not e!553711))))

(declare-fun lambda!25004 () Int)

(declare-fun forall!2111 (List!9060 Int) Bool)

(assert (=> b!841773 (= res!384829 (forall!2111 l!5107 lambda!25004))))

(declare-fun b!841774 () Bool)

(declare-fun e!553723 () Bool)

(declare-fun e!553713 () Bool)

(assert (=> b!841774 (= e!553723 e!553713)))

(declare-fun res!384827 () Bool)

(assert (=> b!841774 (=> res!384827 e!553713)))

(declare-fun isEmpty!5324 (List!9060) Bool)

(assert (=> b!841774 (= res!384827 (not (isEmpty!5324 (t!93602 (t!93602 lt!318783)))))))

(declare-fun e!553722 () Bool)

(assert (=> b!841774 e!553722))

(declare-fun res!384826 () Bool)

(assert (=> b!841774 (=> (not res!384826) (not e!553722))))

(declare-fun lt!318781 () List!9060)

(assert (=> b!841774 (= res!384826 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 lt!318781))))

(declare-fun lt!318782 () Unit!13479)

(declare-fun lt!318778 () List!9060)

(assert (=> b!841774 (= lt!318782 (withSeparatorTokenListPreservesRulesProduceTokens!28 thiss!20117 rules!2621 lt!318778 separatorToken!297))))

(declare-fun lt!318779 () Unit!13479)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!4 (LexerInterface!1498 List!9061 List!9060 Token!3058) Unit!13479)

(assert (=> b!841774 (= lt!318779 (printWithSeparatorTokenImpliesSeparableTokensList!4 thiss!20117 rules!2621 lt!318778 separatorToken!297))))

(declare-fun separableTokensPredicate!38 (LexerInterface!1498 Token!3058 Token!3058 List!9061) Bool)

(assert (=> b!841774 (separableTokensPredicate!38 thiss!20117 (h!14445 lt!318783) (h!14445 (t!93602 lt!318783)) rules!2621)))

(declare-fun lt!318780 () Unit!13479)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!20 (LexerInterface!1498 Token!3058 Token!3058 List!9061) Unit!13479)

(assert (=> b!841774 (= lt!318780 (lemmaTokensOfDifferentKindsAreSeparable!20 thiss!20117 (h!14445 lt!318783) (h!14445 (t!93602 lt!318783)) rules!2621))))

(declare-fun e!553709 () Bool)

(declare-fun b!841775 () Bool)

(declare-fun tp!264845 () Bool)

(declare-fun e!553714 () Bool)

(declare-fun inv!21 (TokenValue!1762) Bool)

(assert (=> b!841775 (= e!553714 (and (inv!21 (value!55035 separatorToken!297)) e!553709 tp!264845))))

(declare-fun b!841776 () Bool)

(declare-datatypes ((IArray!6007 0))(
  ( (IArray!6008 (innerList!3061 List!9060)) )
))
(declare-datatypes ((Conc!3001 0))(
  ( (Node!3001 (left!6706 Conc!3001) (right!7036 Conc!3001) (csize!6232 Int) (cheight!3212 Int)) (Leaf!4437 (xs!5690 IArray!6007) (csize!6233 Int)) (Empty!3001) )
))
(declare-datatypes ((BalanceConc!6016 0))(
  ( (BalanceConc!6017 (c!137166 Conc!3001)) )
))
(declare-fun rulesProduceEachTokenIndividually!603 (LexerInterface!1498 List!9061 BalanceConc!6016) Bool)

(declare-fun seqFromList!1518 (List!9060) BalanceConc!6016)

(assert (=> b!841776 (= e!553713 (rulesProduceEachTokenIndividually!603 thiss!20117 rules!2621 (seqFromList!1518 lt!318783)))))

(declare-fun b!841777 () Bool)

(declare-fun res!384831 () Bool)

(assert (=> b!841777 (=> (not res!384831) (not e!553711))))

(declare-fun isEmpty!5325 (List!9061) Bool)

(assert (=> b!841777 (= res!384831 (not (isEmpty!5325 rules!2621)))))

(declare-fun b!841778 () Bool)

(declare-fun res!384825 () Bool)

(assert (=> b!841778 (=> (not res!384825) (not e!553711))))

(declare-fun sepAndNonSepRulesDisjointChars!496 (List!9061 List!9061) Bool)

(assert (=> b!841778 (= res!384825 (sepAndNonSepRulesDisjointChars!496 rules!2621 rules!2621))))

(declare-fun b!841779 () Bool)

(declare-fun res!384833 () Bool)

(assert (=> b!841779 (=> (not res!384833) (not e!553711))))

(declare-fun rulesInvariant!1374 (LexerInterface!1498 List!9061) Bool)

(assert (=> b!841779 (= res!384833 (rulesInvariant!1374 thiss!20117 rules!2621))))

(declare-fun res!384832 () Bool)

(assert (=> start!74726 (=> (not res!384832) (not e!553711))))

(assert (=> start!74726 (= res!384832 ((_ is Lexer!1496) thiss!20117))))

(assert (=> start!74726 e!553711))

(assert (=> start!74726 true))

(declare-fun e!553719 () Bool)

(assert (=> start!74726 e!553719))

(assert (=> start!74726 e!553712))

(assert (=> start!74726 (and (inv!11515 separatorToken!297) e!553714)))

(declare-fun e!553715 () Bool)

(assert (=> b!841780 (= e!553715 (and tp!264849 tp!264851))))

(declare-fun b!841781 () Bool)

(declare-fun res!384836 () Bool)

(assert (=> b!841781 (=> res!384836 e!553723)))

(assert (=> b!841781 (= res!384836 (not (= (h!14445 (t!93602 lt!318783)) separatorToken!297)))))

(declare-fun e!553721 () Bool)

(declare-fun tp!264850 () Bool)

(declare-fun b!841782 () Bool)

(declare-fun inv!11512 (String!10708) Bool)

(declare-fun inv!11516 (TokenValueInjection!3224) Bool)

(assert (=> b!841782 (= e!553721 (and tp!264850 (inv!11512 (tag!1958 (rule!3119 (h!14445 l!5107)))) (inv!11516 (transformation!1696 (rule!3119 (h!14445 l!5107)))) e!553716))))

(declare-fun b!841783 () Bool)

(declare-fun res!384834 () Bool)

(assert (=> b!841783 (=> (not res!384834) (not e!553711))))

(assert (=> b!841783 (= res!384834 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 l!5107))))

(declare-fun b!841784 () Bool)

(declare-fun res!384824 () Bool)

(assert (=> b!841784 (=> (not res!384824) (not e!553711))))

(declare-fun rulesProduceIndividualToken!562 (LexerInterface!1498 List!9061 Token!3058) Bool)

(assert (=> b!841784 (= res!384824 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun e!553704 () Bool)

(assert (=> b!841785 (= e!553704 (and tp!264852 tp!264842))))

(declare-fun b!841786 () Bool)

(declare-fun e!553720 () Bool)

(declare-fun tp!264848 () Bool)

(assert (=> b!841786 (= e!553719 (and e!553720 tp!264848))))

(declare-fun b!841787 () Bool)

(declare-fun res!384835 () Bool)

(assert (=> b!841787 (=> res!384835 e!553723)))

(declare-fun head!1456 (List!9060) Token!3058)

(assert (=> b!841787 (= res!384835 (not (= (head!1456 l!5107) (h!14445 lt!318783))))))

(declare-fun b!841788 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!20 (LexerInterface!1498 List!9060 List!9061) Bool)

(assert (=> b!841788 (= e!553722 (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 lt!318781 rules!2621))))

(declare-fun tp!264853 () Bool)

(declare-fun b!841789 () Bool)

(assert (=> b!841789 (= e!553710 (and (inv!21 (value!55035 (h!14445 l!5107))) e!553721 tp!264853))))

(declare-fun b!841790 () Bool)

(assert (=> b!841790 (= e!553705 e!553723)))

(declare-fun res!384830 () Bool)

(assert (=> b!841790 (=> res!384830 e!553723)))

(assert (=> b!841790 (= res!384830 (not (= (t!93602 (t!93602 lt!318783)) lt!318781)))))

(assert (=> b!841790 (= lt!318781 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))

(declare-fun tail!1014 (List!9060) List!9060)

(assert (=> b!841790 (= lt!318778 (tail!1014 l!5107))))

(declare-fun b!841791 () Bool)

(declare-fun res!384828 () Bool)

(assert (=> b!841791 (=> (not res!384828) (not e!553711))))

(assert (=> b!841791 (= res!384828 (isSeparator!1696 (rule!3119 separatorToken!297)))))

(declare-fun b!841792 () Bool)

(declare-fun tp!264854 () Bool)

(assert (=> b!841792 (= e!553720 (and tp!264854 (inv!11512 (tag!1958 (h!14446 rules!2621))) (inv!11516 (transformation!1696 (h!14446 rules!2621))) e!553704))))

(declare-fun tp!264846 () Bool)

(declare-fun b!841793 () Bool)

(assert (=> b!841793 (= e!553709 (and tp!264846 (inv!11512 (tag!1958 (rule!3119 separatorToken!297))) (inv!11516 (transformation!1696 (rule!3119 separatorToken!297))) e!553715))))

(assert (= (and start!74726 res!384832) b!841777))

(assert (= (and b!841777 res!384831) b!841779))

(assert (= (and b!841779 res!384833) b!841783))

(assert (= (and b!841783 res!384834) b!841784))

(assert (= (and b!841784 res!384824) b!841791))

(assert (= (and b!841791 res!384828) b!841773))

(assert (= (and b!841773 res!384829) b!841778))

(assert (= (and b!841778 res!384825) b!841771))

(assert (= (and b!841771 (not res!384823)) b!841790))

(assert (= (and b!841790 (not res!384830)) b!841787))

(assert (= (and b!841787 (not res!384835)) b!841781))

(assert (= (and b!841781 (not res!384836)) b!841774))

(assert (= (and b!841774 res!384826) b!841788))

(assert (= (and b!841774 (not res!384827)) b!841776))

(assert (= b!841792 b!841785))

(assert (= b!841786 b!841792))

(assert (= (and start!74726 ((_ is Cons!9045) rules!2621)) b!841786))

(assert (= b!841782 b!841770))

(assert (= b!841789 b!841782))

(assert (= b!841772 b!841789))

(assert (= (and start!74726 ((_ is Cons!9044) l!5107)) b!841772))

(assert (= b!841793 b!841780))

(assert (= b!841775 b!841793))

(assert (= start!74726 b!841775))

(declare-fun m!1074715 () Bool)

(assert (=> b!841774 m!1074715))

(declare-fun m!1074717 () Bool)

(assert (=> b!841774 m!1074717))

(declare-fun m!1074719 () Bool)

(assert (=> b!841774 m!1074719))

(declare-fun m!1074721 () Bool)

(assert (=> b!841774 m!1074721))

(declare-fun m!1074723 () Bool)

(assert (=> b!841774 m!1074723))

(declare-fun m!1074725 () Bool)

(assert (=> b!841774 m!1074725))

(declare-fun m!1074727 () Bool)

(assert (=> b!841783 m!1074727))

(declare-fun m!1074729 () Bool)

(assert (=> b!841778 m!1074729))

(declare-fun m!1074731 () Bool)

(assert (=> b!841776 m!1074731))

(assert (=> b!841776 m!1074731))

(declare-fun m!1074733 () Bool)

(assert (=> b!841776 m!1074733))

(declare-fun m!1074735 () Bool)

(assert (=> b!841777 m!1074735))

(declare-fun m!1074737 () Bool)

(assert (=> b!841779 m!1074737))

(declare-fun m!1074739 () Bool)

(assert (=> b!841775 m!1074739))

(declare-fun m!1074741 () Bool)

(assert (=> b!841788 m!1074741))

(declare-fun m!1074743 () Bool)

(assert (=> b!841787 m!1074743))

(declare-fun m!1074745 () Bool)

(assert (=> b!841790 m!1074745))

(declare-fun m!1074747 () Bool)

(assert (=> b!841790 m!1074747))

(declare-fun m!1074749 () Bool)

(assert (=> b!841784 m!1074749))

(declare-fun m!1074751 () Bool)

(assert (=> b!841793 m!1074751))

(declare-fun m!1074753 () Bool)

(assert (=> b!841793 m!1074753))

(declare-fun m!1074755 () Bool)

(assert (=> b!841789 m!1074755))

(declare-fun m!1074757 () Bool)

(assert (=> b!841771 m!1074757))

(declare-fun m!1074759 () Bool)

(assert (=> b!841771 m!1074759))

(declare-fun m!1074761 () Bool)

(assert (=> b!841771 m!1074761))

(declare-fun m!1074763 () Bool)

(assert (=> b!841782 m!1074763))

(declare-fun m!1074765 () Bool)

(assert (=> b!841782 m!1074765))

(declare-fun m!1074767 () Bool)

(assert (=> b!841792 m!1074767))

(declare-fun m!1074769 () Bool)

(assert (=> b!841792 m!1074769))

(declare-fun m!1074771 () Bool)

(assert (=> b!841773 m!1074771))

(declare-fun m!1074773 () Bool)

(assert (=> start!74726 m!1074773))

(declare-fun m!1074775 () Bool)

(assert (=> b!841772 m!1074775))

(check-sat (not b!841783) (not b!841784) (not b!841793) (not b!841775) (not b!841772) (not start!74726) (not b!841786) b_and!72803 (not b!841787) (not b!841776) (not b_next!25255) b_and!72797 (not b!841790) b_and!72805 (not b!841778) (not b!841777) b_and!72799 b_and!72807 (not b_next!25259) (not b!841779) (not b!841782) (not b_next!25251) (not b!841789) (not b_next!25249) (not b_next!25253) (not b!841774) (not b_next!25257) (not b!841771) b_and!72801 (not b!841788) (not b!841773) (not b!841792))
(check-sat (not b_next!25251) (not b_next!25249) b_and!72803 (not b_next!25253) (not b_next!25257) b_and!72801 (not b_next!25255) b_and!72797 b_and!72805 b_and!72799 b_and!72807 (not b_next!25259))
(get-model)

(declare-fun d!261752 () Bool)

(declare-fun res!384859 () Bool)

(declare-fun e!553739 () Bool)

(assert (=> d!261752 (=> res!384859 e!553739)))

(assert (=> d!261752 (= res!384859 (or (not ((_ is Cons!9044) lt!318781)) (not ((_ is Cons!9044) (t!93602 lt!318781)))))))

(assert (=> d!261752 (= (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 lt!318781 rules!2621) e!553739)))

(declare-fun b!841808 () Bool)

(declare-fun e!553738 () Bool)

(assert (=> b!841808 (= e!553739 e!553738)))

(declare-fun res!384858 () Bool)

(assert (=> b!841808 (=> (not res!384858) (not e!553738))))

(assert (=> b!841808 (= res!384858 (separableTokensPredicate!38 thiss!20117 (h!14445 lt!318781) (h!14445 (t!93602 lt!318781)) rules!2621))))

(declare-fun lt!318804 () Unit!13479)

(declare-fun Unit!13481 () Unit!13479)

(assert (=> b!841808 (= lt!318804 Unit!13481)))

(declare-fun size!7548 (BalanceConc!6014) Int)

(declare-fun charsOf!973 (Token!3058) BalanceConc!6014)

(assert (=> b!841808 (> (size!7548 (charsOf!973 (h!14445 (t!93602 lt!318781)))) 0)))

(declare-fun lt!318805 () Unit!13479)

(declare-fun Unit!13482 () Unit!13479)

(assert (=> b!841808 (= lt!318805 Unit!13482)))

(assert (=> b!841808 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 lt!318781)))))

(declare-fun lt!318806 () Unit!13479)

(declare-fun Unit!13483 () Unit!13479)

(assert (=> b!841808 (= lt!318806 Unit!13483)))

(assert (=> b!841808 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318781))))

(declare-fun lt!318800 () Unit!13479)

(declare-fun lt!318802 () Unit!13479)

(assert (=> b!841808 (= lt!318800 lt!318802)))

(assert (=> b!841808 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 lt!318781)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 (LexerInterface!1498 List!9061 List!9060 Token!3058) Unit!13479)

(assert (=> b!841808 (= lt!318802 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 thiss!20117 rules!2621 lt!318781 (h!14445 (t!93602 lt!318781))))))

(declare-fun lt!318803 () Unit!13479)

(declare-fun lt!318801 () Unit!13479)

(assert (=> b!841808 (= lt!318803 lt!318801)))

(assert (=> b!841808 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318781))))

(assert (=> b!841808 (= lt!318801 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 thiss!20117 rules!2621 lt!318781 (h!14445 lt!318781)))))

(declare-fun b!841809 () Bool)

(assert (=> b!841809 (= e!553738 (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))) rules!2621))))

(assert (= (and d!261752 (not res!384859)) b!841808))

(assert (= (and b!841808 res!384858) b!841809))

(declare-fun m!1074781 () Bool)

(assert (=> b!841808 m!1074781))

(declare-fun m!1074783 () Bool)

(assert (=> b!841808 m!1074783))

(declare-fun m!1074785 () Bool)

(assert (=> b!841808 m!1074785))

(declare-fun m!1074787 () Bool)

(assert (=> b!841808 m!1074787))

(declare-fun m!1074789 () Bool)

(assert (=> b!841808 m!1074789))

(declare-fun m!1074791 () Bool)

(assert (=> b!841808 m!1074791))

(assert (=> b!841808 m!1074791))

(declare-fun m!1074793 () Bool)

(assert (=> b!841808 m!1074793))

(declare-fun m!1074795 () Bool)

(assert (=> b!841809 m!1074795))

(assert (=> b!841788 d!261752))

(declare-fun d!261754 () Bool)

(assert (=> d!261754 (= (isEmpty!5325 rules!2621) ((_ is Nil!9045) rules!2621))))

(assert (=> b!841777 d!261754))

(declare-fun d!261756 () Bool)

(assert (=> d!261756 (= (head!1456 l!5107) (h!14445 l!5107))))

(assert (=> b!841787 d!261756))

(declare-fun bs!229853 () Bool)

(declare-fun d!261758 () Bool)

(assert (= bs!229853 (and d!261758 b!841773)))

(declare-fun lambda!25018 () Int)

(assert (=> bs!229853 (not (= lambda!25018 lambda!25004))))

(declare-fun b!841907 () Bool)

(declare-fun e!553809 () Bool)

(assert (=> b!841907 (= e!553809 true)))

(declare-fun b!841906 () Bool)

(declare-fun e!553808 () Bool)

(assert (=> b!841906 (= e!553808 e!553809)))

(declare-fun b!841905 () Bool)

(declare-fun e!553807 () Bool)

(assert (=> b!841905 (= e!553807 e!553808)))

(assert (=> d!261758 e!553807))

(assert (= b!841906 b!841907))

(assert (= b!841905 b!841906))

(assert (= (and d!261758 ((_ is Cons!9045) rules!2621)) b!841905))

(declare-fun order!5747 () Int)

(declare-fun order!5749 () Int)

(declare-fun dynLambda!4177 (Int Int) Int)

(declare-fun dynLambda!4178 (Int Int) Int)

(assert (=> b!841907 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25018))))

(declare-fun order!5751 () Int)

(declare-fun dynLambda!4179 (Int Int) Int)

(assert (=> b!841907 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25018))))

(assert (=> d!261758 true))

(declare-fun e!553800 () Bool)

(assert (=> d!261758 e!553800))

(declare-fun res!384891 () Bool)

(assert (=> d!261758 (=> (not res!384891) (not e!553800))))

(declare-fun lt!318846 () Bool)

(declare-fun list!3553 (BalanceConc!6016) List!9060)

(assert (=> d!261758 (= res!384891 (= lt!318846 (forall!2111 (list!3553 (seqFromList!1518 lt!318783)) lambda!25018)))))

(declare-fun forall!2113 (BalanceConc!6016 Int) Bool)

(assert (=> d!261758 (= lt!318846 (forall!2113 (seqFromList!1518 lt!318783) lambda!25018))))

(assert (=> d!261758 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261758 (= (rulesProduceEachTokenIndividually!603 thiss!20117 rules!2621 (seqFromList!1518 lt!318783)) lt!318846)))

(declare-fun b!841896 () Bool)

(assert (=> b!841896 (= e!553800 (= lt!318846 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (list!3553 (seqFromList!1518 lt!318783)))))))

(assert (= (and d!261758 res!384891) b!841896))

(assert (=> d!261758 m!1074731))

(declare-fun m!1074925 () Bool)

(assert (=> d!261758 m!1074925))

(assert (=> d!261758 m!1074925))

(declare-fun m!1074927 () Bool)

(assert (=> d!261758 m!1074927))

(assert (=> d!261758 m!1074731))

(declare-fun m!1074929 () Bool)

(assert (=> d!261758 m!1074929))

(assert (=> d!261758 m!1074735))

(assert (=> b!841896 m!1074731))

(assert (=> b!841896 m!1074925))

(assert (=> b!841896 m!1074925))

(declare-fun m!1074931 () Bool)

(assert (=> b!841896 m!1074931))

(assert (=> b!841776 d!261758))

(declare-fun d!261784 () Bool)

(declare-fun fromListB!665 (List!9060) BalanceConc!6016)

(assert (=> d!261784 (= (seqFromList!1518 lt!318783) (fromListB!665 lt!318783))))

(declare-fun bs!229854 () Bool)

(assert (= bs!229854 d!261784))

(declare-fun m!1074933 () Bool)

(assert (=> bs!229854 m!1074933))

(assert (=> b!841776 d!261784))

(declare-fun b!841930 () Bool)

(declare-fun e!553823 () Bool)

(declare-fun e!553825 () Bool)

(assert (=> b!841930 (= e!553823 e!553825)))

(declare-fun res!384901 () Bool)

(assert (=> b!841930 (=> res!384901 e!553825)))

(assert (=> b!841930 (= res!384901 (not ((_ is Cons!9044) lt!318778)))))

(declare-fun b!841931 () Bool)

(declare-fun e!553822 () List!9059)

(assert (=> b!841931 (= e!553822 Nil!9043)))

(declare-fun b!841932 () Bool)

(declare-fun e!553827 () List!9059)

(declare-fun printList!458 (LexerInterface!1498 List!9060) List!9059)

(declare-fun $colon$colon!71 (List!9060 Token!3058) List!9060)

(assert (=> b!841932 (= e!553825 (= (printList!458 thiss!20117 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297)) e!553827))))

(declare-fun c!137193 () Bool)

(declare-fun lt!318866 () List!9060)

(assert (=> b!841932 (= c!137193 ((_ is Cons!9044) lt!318866))))

(assert (=> b!841932 (= lt!318866 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297))))

(declare-fun e!553824 () List!9060)

(declare-fun b!841933 () Bool)

(assert (=> b!841933 (= e!553824 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (h!14445 lt!318778)))))

(declare-fun lt!318870 () List!9059)

(declare-fun list!3554 (BalanceConc!6014) List!9059)

(assert (=> b!841933 (= lt!318870 (list!3554 (charsOf!973 (h!14445 lt!318778))))))

(declare-fun lt!318868 () List!9059)

(assert (=> b!841933 (= lt!318868 (list!3554 (charsOf!973 separatorToken!297)))))

(declare-fun lt!318869 () List!9059)

(assert (=> b!841933 (= lt!318869 (printList!458 thiss!20117 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297)))))

(declare-fun lt!318872 () Unit!13479)

(declare-fun lemmaConcatAssociativity!733 (List!9059 List!9059 List!9059) Unit!13479)

(assert (=> b!841933 (= lt!318872 (lemmaConcatAssociativity!733 lt!318870 lt!318868 lt!318869))))

(declare-fun ++!2339 (List!9059 List!9059) List!9059)

(assert (=> b!841933 (= (++!2339 (++!2339 lt!318870 lt!318868) lt!318869) (++!2339 lt!318870 (++!2339 lt!318868 lt!318869)))))

(declare-fun lt!318873 () Unit!13479)

(assert (=> b!841933 (= lt!318873 lt!318872)))

(declare-fun e!553826 () Bool)

(declare-fun b!841934 () Bool)

(assert (=> b!841934 (= e!553826 (= (printList!458 thiss!20117 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (h!14445 lt!318778))) e!553822))))

(declare-fun c!137191 () Bool)

(declare-fun lt!318871 () List!9060)

(assert (=> b!841934 (= c!137191 ((_ is Cons!9044) lt!318871))))

(assert (=> b!841934 (= lt!318871 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (h!14445 lt!318778)))))

(declare-fun lt!318867 () List!9060)

(declare-fun d!261786 () Bool)

(declare-fun printWithSeparatorTokenList!16 (LexerInterface!1498 List!9060 Token!3058) List!9059)

(assert (=> d!261786 (= (printList!458 thiss!20117 lt!318867) (printWithSeparatorTokenList!16 thiss!20117 lt!318778 separatorToken!297))))

(assert (=> d!261786 (= lt!318867 e!553824)))

(declare-fun c!137192 () Bool)

(assert (=> d!261786 (= c!137192 ((_ is Cons!9044) lt!318778))))

(assert (=> d!261786 e!553823))

(declare-fun res!384903 () Bool)

(assert (=> d!261786 (=> (not res!384903) (not e!553823))))

(assert (=> d!261786 (= res!384903 (isSeparator!1696 (rule!3119 separatorToken!297)))))

(assert (=> d!261786 (= (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297) lt!318867)))

(declare-fun b!841935 () Bool)

(declare-fun res!384902 () Bool)

(assert (=> b!841935 (=> (not res!384902) (not e!553823))))

(assert (=> b!841935 (= res!384902 e!553826)))

(declare-fun res!384900 () Bool)

(assert (=> b!841935 (=> res!384900 e!553826)))

(assert (=> b!841935 (= res!384900 (not ((_ is Cons!9044) lt!318778)))))

(declare-fun b!841936 () Bool)

(assert (=> b!841936 (= e!553827 Nil!9043)))

(declare-fun b!841937 () Bool)

(assert (=> b!841937 (= e!553824 Nil!9044)))

(declare-fun b!841938 () Bool)

(assert (=> b!841938 (= e!553822 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318871))) (printList!458 thiss!20117 (t!93602 lt!318871))))))

(declare-fun b!841939 () Bool)

(assert (=> b!841939 (= e!553827 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318866))) (printList!458 thiss!20117 (t!93602 lt!318866))))))

(assert (= (and d!261786 res!384903) b!841935))

(assert (= (and b!841935 (not res!384900)) b!841934))

(assert (= (and b!841934 c!137191) b!841938))

(assert (= (and b!841934 (not c!137191)) b!841931))

(assert (= (and b!841935 res!384902) b!841930))

(assert (= (and b!841930 (not res!384901)) b!841932))

(assert (= (and b!841932 c!137193) b!841939))

(assert (= (and b!841932 (not c!137193)) b!841936))

(assert (= (and d!261786 c!137192) b!841933))

(assert (= (and d!261786 (not c!137192)) b!841937))

(declare-fun m!1074939 () Bool)

(assert (=> b!841939 m!1074939))

(assert (=> b!841939 m!1074939))

(declare-fun m!1074941 () Bool)

(assert (=> b!841939 m!1074941))

(declare-fun m!1074943 () Bool)

(assert (=> b!841939 m!1074943))

(assert (=> b!841939 m!1074941))

(assert (=> b!841939 m!1074943))

(declare-fun m!1074945 () Bool)

(assert (=> b!841939 m!1074945))

(declare-fun m!1074947 () Bool)

(assert (=> b!841933 m!1074947))

(declare-fun m!1074949 () Bool)

(assert (=> b!841933 m!1074949))

(declare-fun m!1074951 () Bool)

(assert (=> b!841933 m!1074951))

(declare-fun m!1074953 () Bool)

(assert (=> b!841933 m!1074953))

(assert (=> b!841933 m!1074953))

(declare-fun m!1074955 () Bool)

(assert (=> b!841933 m!1074955))

(declare-fun m!1074957 () Bool)

(assert (=> b!841933 m!1074957))

(declare-fun m!1074959 () Bool)

(assert (=> b!841933 m!1074959))

(declare-fun m!1074961 () Bool)

(assert (=> b!841933 m!1074961))

(declare-fun m!1074963 () Bool)

(assert (=> b!841933 m!1074963))

(assert (=> b!841933 m!1074961))

(assert (=> b!841933 m!1074949))

(declare-fun m!1074965 () Bool)

(assert (=> b!841933 m!1074965))

(assert (=> b!841933 m!1074959))

(declare-fun m!1074967 () Bool)

(assert (=> b!841933 m!1074967))

(assert (=> b!841933 m!1074949))

(assert (=> b!841933 m!1074957))

(declare-fun m!1074969 () Bool)

(assert (=> b!841933 m!1074969))

(assert (=> b!841933 m!1074965))

(declare-fun m!1074971 () Bool)

(assert (=> b!841933 m!1074971))

(assert (=> b!841932 m!1074949))

(assert (=> b!841932 m!1074949))

(assert (=> b!841932 m!1074965))

(assert (=> b!841932 m!1074965))

(declare-fun m!1074973 () Bool)

(assert (=> b!841932 m!1074973))

(declare-fun m!1074975 () Bool)

(assert (=> d!261786 m!1074975))

(declare-fun m!1074977 () Bool)

(assert (=> d!261786 m!1074977))

(declare-fun m!1074979 () Bool)

(assert (=> b!841938 m!1074979))

(assert (=> b!841938 m!1074979))

(declare-fun m!1074981 () Bool)

(assert (=> b!841938 m!1074981))

(declare-fun m!1074983 () Bool)

(assert (=> b!841938 m!1074983))

(assert (=> b!841938 m!1074981))

(assert (=> b!841938 m!1074983))

(declare-fun m!1074985 () Bool)

(assert (=> b!841938 m!1074985))

(assert (=> b!841934 m!1074949))

(assert (=> b!841934 m!1074949))

(assert (=> b!841934 m!1074965))

(assert (=> b!841934 m!1074965))

(assert (=> b!841934 m!1074971))

(assert (=> b!841934 m!1074971))

(declare-fun m!1074987 () Bool)

(assert (=> b!841934 m!1074987))

(assert (=> b!841790 d!261786))

(declare-fun d!261790 () Bool)

(assert (=> d!261790 (= (tail!1014 l!5107) (t!93602 l!5107))))

(assert (=> b!841790 d!261790))

(declare-fun d!261792 () Bool)

(declare-fun res!384906 () Bool)

(declare-fun e!553830 () Bool)

(assert (=> d!261792 (=> (not res!384906) (not e!553830))))

(declare-fun rulesValid!585 (LexerInterface!1498 List!9061) Bool)

(assert (=> d!261792 (= res!384906 (rulesValid!585 thiss!20117 rules!2621))))

(assert (=> d!261792 (= (rulesInvariant!1374 thiss!20117 rules!2621) e!553830)))

(declare-fun b!841942 () Bool)

(declare-datatypes ((List!9063 0))(
  ( (Nil!9047) (Cons!9047 (h!14448 String!10708) (t!93659 List!9063)) )
))
(declare-fun noDuplicateTag!585 (LexerInterface!1498 List!9061 List!9063) Bool)

(assert (=> b!841942 (= e!553830 (noDuplicateTag!585 thiss!20117 rules!2621 Nil!9047))))

(assert (= (and d!261792 res!384906) b!841942))

(declare-fun m!1074989 () Bool)

(assert (=> d!261792 m!1074989))

(declare-fun m!1074991 () Bool)

(assert (=> b!841942 m!1074991))

(assert (=> b!841779 d!261792))

(declare-fun d!261794 () Bool)

(declare-fun c!137198 () Bool)

(assert (=> d!261794 (= c!137198 ((_ is IntegerValue!5286) (value!55035 (h!14445 l!5107))))))

(declare-fun e!553837 () Bool)

(assert (=> d!261794 (= (inv!21 (value!55035 (h!14445 l!5107))) e!553837)))

(declare-fun b!841953 () Bool)

(declare-fun inv!16 (TokenValue!1762) Bool)

(assert (=> b!841953 (= e!553837 (inv!16 (value!55035 (h!14445 l!5107))))))

(declare-fun b!841954 () Bool)

(declare-fun e!553838 () Bool)

(assert (=> b!841954 (= e!553837 e!553838)))

(declare-fun c!137199 () Bool)

(assert (=> b!841954 (= c!137199 ((_ is IntegerValue!5287) (value!55035 (h!14445 l!5107))))))

(declare-fun b!841955 () Bool)

(declare-fun inv!17 (TokenValue!1762) Bool)

(assert (=> b!841955 (= e!553838 (inv!17 (value!55035 (h!14445 l!5107))))))

(declare-fun b!841956 () Bool)

(declare-fun e!553839 () Bool)

(declare-fun inv!15 (TokenValue!1762) Bool)

(assert (=> b!841956 (= e!553839 (inv!15 (value!55035 (h!14445 l!5107))))))

(declare-fun b!841957 () Bool)

(declare-fun res!384909 () Bool)

(assert (=> b!841957 (=> res!384909 e!553839)))

(assert (=> b!841957 (= res!384909 (not ((_ is IntegerValue!5288) (value!55035 (h!14445 l!5107)))))))

(assert (=> b!841957 (= e!553838 e!553839)))

(assert (= (and d!261794 c!137198) b!841953))

(assert (= (and d!261794 (not c!137198)) b!841954))

(assert (= (and b!841954 c!137199) b!841955))

(assert (= (and b!841954 (not c!137199)) b!841957))

(assert (= (and b!841957 (not res!384909)) b!841956))

(declare-fun m!1074993 () Bool)

(assert (=> b!841953 m!1074993))

(declare-fun m!1074995 () Bool)

(assert (=> b!841955 m!1074995))

(declare-fun m!1074997 () Bool)

(assert (=> b!841956 m!1074997))

(assert (=> b!841789 d!261794))

(declare-fun d!261796 () Bool)

(declare-fun res!384914 () Bool)

(declare-fun e!553844 () Bool)

(assert (=> d!261796 (=> res!384914 e!553844)))

(assert (=> d!261796 (= res!384914 (not ((_ is Cons!9045) rules!2621)))))

(assert (=> d!261796 (= (sepAndNonSepRulesDisjointChars!496 rules!2621 rules!2621) e!553844)))

(declare-fun b!841962 () Bool)

(declare-fun e!553845 () Bool)

(assert (=> b!841962 (= e!553844 e!553845)))

(declare-fun res!384915 () Bool)

(assert (=> b!841962 (=> (not res!384915) (not e!553845))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!220 (Rule!3192 List!9061) Bool)

(assert (=> b!841962 (= res!384915 (ruleDisjointCharsFromAllFromOtherType!220 (h!14446 rules!2621) rules!2621))))

(declare-fun b!841963 () Bool)

(assert (=> b!841963 (= e!553845 (sepAndNonSepRulesDisjointChars!496 rules!2621 (t!93603 rules!2621)))))

(assert (= (and d!261796 (not res!384914)) b!841962))

(assert (= (and b!841962 res!384915) b!841963))

(declare-fun m!1074999 () Bool)

(assert (=> b!841962 m!1074999))

(declare-fun m!1075001 () Bool)

(assert (=> b!841963 m!1075001))

(assert (=> b!841778 d!261796))

(declare-fun bs!229861 () Bool)

(declare-fun d!261798 () Bool)

(assert (= bs!229861 (and d!261798 b!841773)))

(declare-fun lambda!25022 () Int)

(assert (=> bs!229861 (not (= lambda!25022 lambda!25004))))

(declare-fun bs!229862 () Bool)

(assert (= bs!229862 (and d!261798 d!261758)))

(assert (=> bs!229862 (= lambda!25022 lambda!25018)))

(declare-fun b!842000 () Bool)

(declare-fun e!553874 () Bool)

(assert (=> b!842000 (= e!553874 true)))

(declare-fun b!841999 () Bool)

(declare-fun e!553873 () Bool)

(assert (=> b!841999 (= e!553873 e!553874)))

(declare-fun b!841998 () Bool)

(declare-fun e!553872 () Bool)

(assert (=> b!841998 (= e!553872 e!553873)))

(assert (=> d!261798 e!553872))

(assert (= b!841999 b!842000))

(assert (= b!841998 b!841999))

(assert (= (and d!261798 ((_ is Cons!9045) rules!2621)) b!841998))

(assert (=> b!842000 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25022))))

(assert (=> b!842000 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25022))))

(assert (=> d!261798 true))

(declare-fun lt!318886 () Bool)

(assert (=> d!261798 (= lt!318886 (forall!2111 l!5107 lambda!25022))))

(declare-fun e!553871 () Bool)

(assert (=> d!261798 (= lt!318886 e!553871)))

(declare-fun res!384941 () Bool)

(assert (=> d!261798 (=> res!384941 e!553871)))

(assert (=> d!261798 (= res!384941 (not ((_ is Cons!9044) l!5107)))))

(assert (=> d!261798 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261798 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 l!5107) lt!318886)))

(declare-fun b!841996 () Bool)

(declare-fun e!553870 () Bool)

(assert (=> b!841996 (= e!553871 e!553870)))

(declare-fun res!384940 () Bool)

(assert (=> b!841996 (=> (not res!384940) (not e!553870))))

(assert (=> b!841996 (= res!384940 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 l!5107)))))

(declare-fun b!841997 () Bool)

(assert (=> b!841997 (= e!553870 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 l!5107)))))

(assert (= (and d!261798 (not res!384941)) b!841996))

(assert (= (and b!841996 res!384940) b!841997))

(declare-fun m!1075045 () Bool)

(assert (=> d!261798 m!1075045))

(assert (=> d!261798 m!1074735))

(declare-fun m!1075047 () Bool)

(assert (=> b!841996 m!1075047))

(declare-fun m!1075049 () Bool)

(assert (=> b!841997 m!1075049))

(assert (=> b!841783 d!261798))

(declare-fun d!261812 () Bool)

(declare-fun res!384946 () Bool)

(declare-fun e!553877 () Bool)

(assert (=> d!261812 (=> (not res!384946) (not e!553877))))

(declare-fun isEmpty!5328 (List!9059) Bool)

(assert (=> d!261812 (= res!384946 (not (isEmpty!5328 (originalCharacters!2252 (h!14445 l!5107)))))))

(assert (=> d!261812 (= (inv!11515 (h!14445 l!5107)) e!553877)))

(declare-fun b!842005 () Bool)

(declare-fun res!384947 () Bool)

(assert (=> b!842005 (=> (not res!384947) (not e!553877))))

(declare-fun dynLambda!4180 (Int TokenValue!1762) BalanceConc!6014)

(assert (=> b!842005 (= res!384947 (= (originalCharacters!2252 (h!14445 l!5107)) (list!3554 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))))))

(declare-fun b!842006 () Bool)

(declare-fun size!7550 (List!9059) Int)

(assert (=> b!842006 (= e!553877 (= (size!7545 (h!14445 l!5107)) (size!7550 (originalCharacters!2252 (h!14445 l!5107)))))))

(assert (= (and d!261812 res!384946) b!842005))

(assert (= (and b!842005 res!384947) b!842006))

(declare-fun b_lambda!27683 () Bool)

(assert (=> (not b_lambda!27683) (not b!842005)))

(declare-fun t!93624 () Bool)

(declare-fun tb!58039 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) t!93624) tb!58039))

(declare-fun b!842011 () Bool)

(declare-fun e!553880 () Bool)

(declare-fun tp!264860 () Bool)

(declare-fun inv!11519 (Conc!3000) Bool)

(assert (=> b!842011 (= e!553880 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))) tp!264860))))

(declare-fun result!67322 () Bool)

(declare-fun inv!11520 (BalanceConc!6014) Bool)

(assert (=> tb!58039 (= result!67322 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))) e!553880))))

(assert (= tb!58039 b!842011))

(declare-fun m!1075051 () Bool)

(assert (=> b!842011 m!1075051))

(declare-fun m!1075053 () Bool)

(assert (=> tb!58039 m!1075053))

(assert (=> b!842005 t!93624))

(declare-fun b_and!72815 () Bool)

(assert (= b_and!72799 (and (=> t!93624 result!67322) b_and!72815)))

(declare-fun tb!58041 () Bool)

(declare-fun t!93626 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) t!93626) tb!58041))

(declare-fun result!67326 () Bool)

(assert (= result!67326 result!67322))

(assert (=> b!842005 t!93626))

(declare-fun b_and!72817 () Bool)

(assert (= b_and!72803 (and (=> t!93626 result!67326) b_and!72817)))

(declare-fun t!93628 () Bool)

(declare-fun tb!58043 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) t!93628) tb!58043))

(declare-fun result!67328 () Bool)

(assert (= result!67328 result!67322))

(assert (=> b!842005 t!93628))

(declare-fun b_and!72819 () Bool)

(assert (= b_and!72807 (and (=> t!93628 result!67328) b_and!72819)))

(declare-fun m!1075055 () Bool)

(assert (=> d!261812 m!1075055))

(declare-fun m!1075057 () Bool)

(assert (=> b!842005 m!1075057))

(assert (=> b!842005 m!1075057))

(declare-fun m!1075059 () Bool)

(assert (=> b!842005 m!1075059))

(declare-fun m!1075061 () Bool)

(assert (=> b!842006 m!1075061))

(assert (=> b!841772 d!261812))

(declare-fun d!261814 () Bool)

(assert (=> d!261814 (= (inv!11512 (tag!1958 (rule!3119 separatorToken!297))) (= (mod (str.len (value!55034 (tag!1958 (rule!3119 separatorToken!297)))) 2) 0))))

(assert (=> b!841793 d!261814))

(declare-fun d!261816 () Bool)

(declare-fun res!384950 () Bool)

(declare-fun e!553883 () Bool)

(assert (=> d!261816 (=> (not res!384950) (not e!553883))))

(declare-fun semiInverseModEq!654 (Int Int) Bool)

(assert (=> d!261816 (= res!384950 (semiInverseModEq!654 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297)))))))

(assert (=> d!261816 (= (inv!11516 (transformation!1696 (rule!3119 separatorToken!297))) e!553883)))

(declare-fun b!842014 () Bool)

(declare-fun equivClasses!621 (Int Int) Bool)

(assert (=> b!842014 (= e!553883 (equivClasses!621 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297)))))))

(assert (= (and d!261816 res!384950) b!842014))

(declare-fun m!1075063 () Bool)

(assert (=> d!261816 m!1075063))

(declare-fun m!1075065 () Bool)

(assert (=> b!842014 m!1075065))

(assert (=> b!841793 d!261816))

(declare-fun d!261818 () Bool)

(assert (=> d!261818 (= (inv!11512 (tag!1958 (rule!3119 (h!14445 l!5107)))) (= (mod (str.len (value!55034 (tag!1958 (rule!3119 (h!14445 l!5107))))) 2) 0))))

(assert (=> b!841782 d!261818))

(declare-fun d!261820 () Bool)

(declare-fun res!384951 () Bool)

(declare-fun e!553884 () Bool)

(assert (=> d!261820 (=> (not res!384951) (not e!553884))))

(assert (=> d!261820 (= res!384951 (semiInverseModEq!654 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107))))))))

(assert (=> d!261820 (= (inv!11516 (transformation!1696 (rule!3119 (h!14445 l!5107)))) e!553884)))

(declare-fun b!842015 () Bool)

(assert (=> b!842015 (= e!553884 (equivClasses!621 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107))))))))

(assert (= (and d!261820 res!384951) b!842015))

(declare-fun m!1075067 () Bool)

(assert (=> d!261820 m!1075067))

(declare-fun m!1075069 () Bool)

(assert (=> b!842015 m!1075069))

(assert (=> b!841782 d!261820))

(declare-fun bs!229863 () Bool)

(declare-fun d!261822 () Bool)

(assert (= bs!229863 (and d!261822 b!841773)))

(declare-fun lambda!25023 () Int)

(assert (=> bs!229863 (not (= lambda!25023 lambda!25004))))

(declare-fun bs!229864 () Bool)

(assert (= bs!229864 (and d!261822 d!261758)))

(assert (=> bs!229864 (= lambda!25023 lambda!25018)))

(declare-fun bs!229865 () Bool)

(assert (= bs!229865 (and d!261822 d!261798)))

(assert (=> bs!229865 (= lambda!25023 lambda!25022)))

(declare-fun b!842020 () Bool)

(declare-fun e!553889 () Bool)

(assert (=> b!842020 (= e!553889 true)))

(declare-fun b!842019 () Bool)

(declare-fun e!553888 () Bool)

(assert (=> b!842019 (= e!553888 e!553889)))

(declare-fun b!842018 () Bool)

(declare-fun e!553887 () Bool)

(assert (=> b!842018 (= e!553887 e!553888)))

(assert (=> d!261822 e!553887))

(assert (= b!842019 b!842020))

(assert (= b!842018 b!842019))

(assert (= (and d!261822 ((_ is Cons!9045) rules!2621)) b!842018))

(assert (=> b!842020 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25023))))

(assert (=> b!842020 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25023))))

(assert (=> d!261822 true))

(declare-fun lt!318887 () Bool)

(assert (=> d!261822 (= lt!318887 (forall!2111 lt!318783 lambda!25023))))

(declare-fun e!553886 () Bool)

(assert (=> d!261822 (= lt!318887 e!553886)))

(declare-fun res!384953 () Bool)

(assert (=> d!261822 (=> res!384953 e!553886)))

(assert (=> d!261822 (= res!384953 (not ((_ is Cons!9044) lt!318783)))))

(assert (=> d!261822 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261822 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 lt!318783) lt!318887)))

(declare-fun b!842016 () Bool)

(declare-fun e!553885 () Bool)

(assert (=> b!842016 (= e!553886 e!553885)))

(declare-fun res!384952 () Bool)

(assert (=> b!842016 (=> (not res!384952) (not e!553885))))

(assert (=> b!842016 (= res!384952 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318783)))))

(declare-fun b!842017 () Bool)

(assert (=> b!842017 (= e!553885 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 lt!318783)))))

(assert (= (and d!261822 (not res!384953)) b!842016))

(assert (= (and b!842016 res!384952) b!842017))

(declare-fun m!1075071 () Bool)

(assert (=> d!261822 m!1075071))

(assert (=> d!261822 m!1074735))

(declare-fun m!1075073 () Bool)

(assert (=> b!842016 m!1075073))

(declare-fun m!1075075 () Bool)

(assert (=> b!842017 m!1075075))

(assert (=> b!841771 d!261822))

(declare-fun b!842021 () Bool)

(declare-fun e!553891 () Bool)

(declare-fun e!553893 () Bool)

(assert (=> b!842021 (= e!553891 e!553893)))

(declare-fun res!384955 () Bool)

(assert (=> b!842021 (=> res!384955 e!553893)))

(assert (=> b!842021 (= res!384955 (not ((_ is Cons!9044) l!5107)))))

(declare-fun b!842022 () Bool)

(declare-fun e!553890 () List!9059)

(assert (=> b!842022 (= e!553890 Nil!9043)))

(declare-fun e!553895 () List!9059)

(declare-fun b!842023 () Bool)

(assert (=> b!842023 (= e!553893 (= (printList!458 thiss!20117 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297)) e!553895))))

(declare-fun c!137202 () Bool)

(declare-fun lt!318888 () List!9060)

(assert (=> b!842023 (= c!137202 ((_ is Cons!9044) lt!318888))))

(assert (=> b!842023 (= lt!318888 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun e!553892 () List!9060)

(declare-fun b!842024 () Bool)

(assert (=> b!842024 (= e!553892 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (h!14445 l!5107)))))

(declare-fun lt!318892 () List!9059)

(assert (=> b!842024 (= lt!318892 (list!3554 (charsOf!973 (h!14445 l!5107))))))

(declare-fun lt!318890 () List!9059)

(assert (=> b!842024 (= lt!318890 (list!3554 (charsOf!973 separatorToken!297)))))

(declare-fun lt!318891 () List!9059)

(assert (=> b!842024 (= lt!318891 (printList!458 thiss!20117 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297)))))

(declare-fun lt!318894 () Unit!13479)

(assert (=> b!842024 (= lt!318894 (lemmaConcatAssociativity!733 lt!318892 lt!318890 lt!318891))))

(assert (=> b!842024 (= (++!2339 (++!2339 lt!318892 lt!318890) lt!318891) (++!2339 lt!318892 (++!2339 lt!318890 lt!318891)))))

(declare-fun lt!318895 () Unit!13479)

(assert (=> b!842024 (= lt!318895 lt!318894)))

(declare-fun b!842025 () Bool)

(declare-fun e!553894 () Bool)

(assert (=> b!842025 (= e!553894 (= (printList!458 thiss!20117 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (h!14445 l!5107))) e!553890))))

(declare-fun c!137200 () Bool)

(declare-fun lt!318893 () List!9060)

(assert (=> b!842025 (= c!137200 ((_ is Cons!9044) lt!318893))))

(assert (=> b!842025 (= lt!318893 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (h!14445 l!5107)))))

(declare-fun lt!318889 () List!9060)

(declare-fun d!261824 () Bool)

(assert (=> d!261824 (= (printList!458 thiss!20117 lt!318889) (printWithSeparatorTokenList!16 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!261824 (= lt!318889 e!553892)))

(declare-fun c!137201 () Bool)

(assert (=> d!261824 (= c!137201 ((_ is Cons!9044) l!5107))))

(assert (=> d!261824 e!553891))

(declare-fun res!384957 () Bool)

(assert (=> d!261824 (=> (not res!384957) (not e!553891))))

(assert (=> d!261824 (= res!384957 (isSeparator!1696 (rule!3119 separatorToken!297)))))

(assert (=> d!261824 (= (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297) lt!318889)))

(declare-fun b!842026 () Bool)

(declare-fun res!384956 () Bool)

(assert (=> b!842026 (=> (not res!384956) (not e!553891))))

(assert (=> b!842026 (= res!384956 e!553894)))

(declare-fun res!384954 () Bool)

(assert (=> b!842026 (=> res!384954 e!553894)))

(assert (=> b!842026 (= res!384954 (not ((_ is Cons!9044) l!5107)))))

(declare-fun b!842027 () Bool)

(assert (=> b!842027 (= e!553895 Nil!9043)))

(declare-fun b!842028 () Bool)

(assert (=> b!842028 (= e!553892 Nil!9044)))

(declare-fun b!842029 () Bool)

(assert (=> b!842029 (= e!553890 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318893))) (printList!458 thiss!20117 (t!93602 lt!318893))))))

(declare-fun b!842030 () Bool)

(assert (=> b!842030 (= e!553895 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318888))) (printList!458 thiss!20117 (t!93602 lt!318888))))))

(assert (= (and d!261824 res!384957) b!842026))

(assert (= (and b!842026 (not res!384954)) b!842025))

(assert (= (and b!842025 c!137200) b!842029))

(assert (= (and b!842025 (not c!137200)) b!842022))

(assert (= (and b!842026 res!384956) b!842021))

(assert (= (and b!842021 (not res!384955)) b!842023))

(assert (= (and b!842023 c!137202) b!842030))

(assert (= (and b!842023 (not c!137202)) b!842027))

(assert (= (and d!261824 c!137201) b!842024))

(assert (= (and d!261824 (not c!137201)) b!842028))

(declare-fun m!1075077 () Bool)

(assert (=> b!842030 m!1075077))

(assert (=> b!842030 m!1075077))

(declare-fun m!1075079 () Bool)

(assert (=> b!842030 m!1075079))

(declare-fun m!1075081 () Bool)

(assert (=> b!842030 m!1075081))

(assert (=> b!842030 m!1075079))

(assert (=> b!842030 m!1075081))

(declare-fun m!1075083 () Bool)

(assert (=> b!842030 m!1075083))

(declare-fun m!1075085 () Bool)

(assert (=> b!842024 m!1075085))

(declare-fun m!1075087 () Bool)

(assert (=> b!842024 m!1075087))

(declare-fun m!1075089 () Bool)

(assert (=> b!842024 m!1075089))

(declare-fun m!1075091 () Bool)

(assert (=> b!842024 m!1075091))

(assert (=> b!842024 m!1075091))

(declare-fun m!1075093 () Bool)

(assert (=> b!842024 m!1075093))

(assert (=> b!842024 m!1074957))

(declare-fun m!1075095 () Bool)

(assert (=> b!842024 m!1075095))

(declare-fun m!1075097 () Bool)

(assert (=> b!842024 m!1075097))

(declare-fun m!1075099 () Bool)

(assert (=> b!842024 m!1075099))

(assert (=> b!842024 m!1075097))

(assert (=> b!842024 m!1075087))

(declare-fun m!1075101 () Bool)

(assert (=> b!842024 m!1075101))

(assert (=> b!842024 m!1075095))

(declare-fun m!1075103 () Bool)

(assert (=> b!842024 m!1075103))

(assert (=> b!842024 m!1075087))

(assert (=> b!842024 m!1074957))

(assert (=> b!842024 m!1074969))

(assert (=> b!842024 m!1075101))

(declare-fun m!1075105 () Bool)

(assert (=> b!842024 m!1075105))

(assert (=> b!842023 m!1075087))

(assert (=> b!842023 m!1075087))

(assert (=> b!842023 m!1075101))

(assert (=> b!842023 m!1075101))

(declare-fun m!1075107 () Bool)

(assert (=> b!842023 m!1075107))

(declare-fun m!1075109 () Bool)

(assert (=> d!261824 m!1075109))

(declare-fun m!1075111 () Bool)

(assert (=> d!261824 m!1075111))

(declare-fun m!1075113 () Bool)

(assert (=> b!842029 m!1075113))

(assert (=> b!842029 m!1075113))

(declare-fun m!1075115 () Bool)

(assert (=> b!842029 m!1075115))

(declare-fun m!1075117 () Bool)

(assert (=> b!842029 m!1075117))

(assert (=> b!842029 m!1075115))

(assert (=> b!842029 m!1075117))

(declare-fun m!1075119 () Bool)

(assert (=> b!842029 m!1075119))

(assert (=> b!842025 m!1075087))

(assert (=> b!842025 m!1075087))

(assert (=> b!842025 m!1075101))

(assert (=> b!842025 m!1075101))

(assert (=> b!842025 m!1075105))

(assert (=> b!842025 m!1075105))

(declare-fun m!1075121 () Bool)

(assert (=> b!842025 m!1075121))

(assert (=> b!841771 d!261824))

(declare-fun d!261826 () Bool)

(assert (=> d!261826 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!318899 () Unit!13479)

(declare-fun choose!4960 (LexerInterface!1498 List!9061 List!9060 Token!3058) Unit!13479)

(assert (=> d!261826 (= lt!318899 (choose!4960 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!261826 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261826 (= (withSeparatorTokenListPreservesRulesProduceTokens!28 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!318899)))

(declare-fun bs!229868 () Bool)

(assert (= bs!229868 d!261826))

(assert (=> bs!229868 m!1074759))

(assert (=> bs!229868 m!1074759))

(declare-fun m!1075141 () Bool)

(assert (=> bs!229868 m!1075141))

(declare-fun m!1075143 () Bool)

(assert (=> bs!229868 m!1075143))

(assert (=> bs!229868 m!1074735))

(assert (=> b!841771 d!261826))

(declare-fun d!261832 () Bool)

(assert (=> d!261832 (= (inv!11512 (tag!1958 (h!14446 rules!2621))) (= (mod (str.len (value!55034 (tag!1958 (h!14446 rules!2621)))) 2) 0))))

(assert (=> b!841792 d!261832))

(declare-fun d!261834 () Bool)

(declare-fun res!384958 () Bool)

(declare-fun e!553896 () Bool)

(assert (=> d!261834 (=> (not res!384958) (not e!553896))))

(assert (=> d!261834 (= res!384958 (semiInverseModEq!654 (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toValue!2713 (transformation!1696 (h!14446 rules!2621)))))))

(assert (=> d!261834 (= (inv!11516 (transformation!1696 (h!14446 rules!2621))) e!553896)))

(declare-fun b!842031 () Bool)

(assert (=> b!842031 (= e!553896 (equivClasses!621 (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toValue!2713 (transformation!1696 (h!14446 rules!2621)))))))

(assert (= (and d!261834 res!384958) b!842031))

(declare-fun m!1075145 () Bool)

(assert (=> d!261834 m!1075145))

(declare-fun m!1075147 () Bool)

(assert (=> b!842031 m!1075147))

(assert (=> b!841792 d!261834))

(declare-fun d!261836 () Bool)

(declare-fun c!137203 () Bool)

(assert (=> d!261836 (= c!137203 ((_ is IntegerValue!5286) (value!55035 separatorToken!297)))))

(declare-fun e!553897 () Bool)

(assert (=> d!261836 (= (inv!21 (value!55035 separatorToken!297)) e!553897)))

(declare-fun b!842032 () Bool)

(assert (=> b!842032 (= e!553897 (inv!16 (value!55035 separatorToken!297)))))

(declare-fun b!842033 () Bool)

(declare-fun e!553898 () Bool)

(assert (=> b!842033 (= e!553897 e!553898)))

(declare-fun c!137204 () Bool)

(assert (=> b!842033 (= c!137204 ((_ is IntegerValue!5287) (value!55035 separatorToken!297)))))

(declare-fun b!842034 () Bool)

(assert (=> b!842034 (= e!553898 (inv!17 (value!55035 separatorToken!297)))))

(declare-fun b!842035 () Bool)

(declare-fun e!553899 () Bool)

(assert (=> b!842035 (= e!553899 (inv!15 (value!55035 separatorToken!297)))))

(declare-fun b!842036 () Bool)

(declare-fun res!384959 () Bool)

(assert (=> b!842036 (=> res!384959 e!553899)))

(assert (=> b!842036 (= res!384959 (not ((_ is IntegerValue!5288) (value!55035 separatorToken!297))))))

(assert (=> b!842036 (= e!553898 e!553899)))

(assert (= (and d!261836 c!137203) b!842032))

(assert (= (and d!261836 (not c!137203)) b!842033))

(assert (= (and b!842033 c!137204) b!842034))

(assert (= (and b!842033 (not c!137204)) b!842036))

(assert (= (and b!842036 (not res!384959)) b!842035))

(declare-fun m!1075149 () Bool)

(assert (=> b!842032 m!1075149))

(declare-fun m!1075151 () Bool)

(assert (=> b!842034 m!1075151))

(declare-fun m!1075153 () Bool)

(assert (=> b!842035 m!1075153))

(assert (=> b!841775 d!261836))

(declare-fun d!261838 () Bool)

(declare-fun res!384960 () Bool)

(declare-fun e!553900 () Bool)

(assert (=> d!261838 (=> (not res!384960) (not e!553900))))

(assert (=> d!261838 (= res!384960 (not (isEmpty!5328 (originalCharacters!2252 separatorToken!297))))))

(assert (=> d!261838 (= (inv!11515 separatorToken!297) e!553900)))

(declare-fun b!842037 () Bool)

(declare-fun res!384961 () Bool)

(assert (=> b!842037 (=> (not res!384961) (not e!553900))))

(assert (=> b!842037 (= res!384961 (= (originalCharacters!2252 separatorToken!297) (list!3554 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))))))

(declare-fun b!842038 () Bool)

(assert (=> b!842038 (= e!553900 (= (size!7545 separatorToken!297) (size!7550 (originalCharacters!2252 separatorToken!297))))))

(assert (= (and d!261838 res!384960) b!842037))

(assert (= (and b!842037 res!384961) b!842038))

(declare-fun b_lambda!27685 () Bool)

(assert (=> (not b_lambda!27685) (not b!842037)))

(declare-fun t!93630 () Bool)

(declare-fun tb!58045 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) t!93630) tb!58045))

(declare-fun b!842039 () Bool)

(declare-fun e!553901 () Bool)

(declare-fun tp!264861 () Bool)

(assert (=> b!842039 (= e!553901 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))) tp!264861))))

(declare-fun result!67330 () Bool)

(assert (=> tb!58045 (= result!67330 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))) e!553901))))

(assert (= tb!58045 b!842039))

(declare-fun m!1075155 () Bool)

(assert (=> b!842039 m!1075155))

(declare-fun m!1075157 () Bool)

(assert (=> tb!58045 m!1075157))

(assert (=> b!842037 t!93630))

(declare-fun b_and!72821 () Bool)

(assert (= b_and!72815 (and (=> t!93630 result!67330) b_and!72821)))

(declare-fun tb!58047 () Bool)

(declare-fun t!93632 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) t!93632) tb!58047))

(declare-fun result!67332 () Bool)

(assert (= result!67332 result!67330))

(assert (=> b!842037 t!93632))

(declare-fun b_and!72823 () Bool)

(assert (= b_and!72817 (and (=> t!93632 result!67332) b_and!72823)))

(declare-fun t!93634 () Bool)

(declare-fun tb!58049 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) t!93634) tb!58049))

(declare-fun result!67334 () Bool)

(assert (= result!67334 result!67330))

(assert (=> b!842037 t!93634))

(declare-fun b_and!72825 () Bool)

(assert (= b_and!72819 (and (=> t!93634 result!67334) b_and!72825)))

(declare-fun m!1075159 () Bool)

(assert (=> d!261838 m!1075159))

(declare-fun m!1075161 () Bool)

(assert (=> b!842037 m!1075161))

(assert (=> b!842037 m!1075161))

(declare-fun m!1075163 () Bool)

(assert (=> b!842037 m!1075163))

(declare-fun m!1075165 () Bool)

(assert (=> b!842038 m!1075165))

(assert (=> start!74726 d!261838))

(declare-fun d!261840 () Bool)

(declare-fun prefixMatchZipperSequence!9 (Regex!2129 BalanceConc!6014) Bool)

(declare-fun rulesRegex!8 (LexerInterface!1498 List!9061) Regex!2129)

(declare-fun ++!2340 (BalanceConc!6014 BalanceConc!6014) BalanceConc!6014)

(declare-fun singletonSeq!508 (C!4828) BalanceConc!6014)

(declare-fun apply!1818 (BalanceConc!6014 Int) C!4828)

(assert (=> d!261840 (= (separableTokensPredicate!38 thiss!20117 (h!14445 lt!318783) (h!14445 (t!93602 lt!318783)) rules!2621) (not (prefixMatchZipperSequence!9 (rulesRegex!8 thiss!20117 rules!2621) (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))))))))

(declare-fun bs!229869 () Bool)

(assert (= bs!229869 d!261840))

(declare-fun m!1075193 () Bool)

(assert (=> bs!229869 m!1075193))

(declare-fun m!1075195 () Bool)

(assert (=> bs!229869 m!1075195))

(declare-fun m!1075197 () Bool)

(assert (=> bs!229869 m!1075197))

(assert (=> bs!229869 m!1075193))

(declare-fun m!1075199 () Bool)

(assert (=> bs!229869 m!1075199))

(assert (=> bs!229869 m!1075195))

(declare-fun m!1075201 () Bool)

(assert (=> bs!229869 m!1075201))

(declare-fun m!1075203 () Bool)

(assert (=> bs!229869 m!1075203))

(assert (=> bs!229869 m!1075201))

(declare-fun m!1075205 () Bool)

(assert (=> bs!229869 m!1075205))

(assert (=> bs!229869 m!1075203))

(assert (=> bs!229869 m!1075199))

(assert (=> bs!229869 m!1075197))

(assert (=> b!841774 d!261840))

(declare-fun bs!229870 () Bool)

(declare-fun d!261854 () Bool)

(assert (= bs!229870 (and d!261854 b!841773)))

(declare-fun lambda!25024 () Int)

(assert (=> bs!229870 (not (= lambda!25024 lambda!25004))))

(declare-fun bs!229871 () Bool)

(assert (= bs!229871 (and d!261854 d!261758)))

(assert (=> bs!229871 (= lambda!25024 lambda!25018)))

(declare-fun bs!229872 () Bool)

(assert (= bs!229872 (and d!261854 d!261798)))

(assert (=> bs!229872 (= lambda!25024 lambda!25022)))

(declare-fun bs!229873 () Bool)

(assert (= bs!229873 (and d!261854 d!261822)))

(assert (=> bs!229873 (= lambda!25024 lambda!25023)))

(declare-fun b!842064 () Bool)

(declare-fun e!553913 () Bool)

(assert (=> b!842064 (= e!553913 true)))

(declare-fun b!842063 () Bool)

(declare-fun e!553912 () Bool)

(assert (=> b!842063 (= e!553912 e!553913)))

(declare-fun b!842062 () Bool)

(declare-fun e!553911 () Bool)

(assert (=> b!842062 (= e!553911 e!553912)))

(assert (=> d!261854 e!553911))

(assert (= b!842063 b!842064))

(assert (= b!842062 b!842063))

(assert (= (and d!261854 ((_ is Cons!9045) rules!2621)) b!842062))

(assert (=> b!842064 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25024))))

(assert (=> b!842064 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25024))))

(assert (=> d!261854 true))

(declare-fun lt!318909 () Bool)

(assert (=> d!261854 (= lt!318909 (forall!2111 lt!318781 lambda!25024))))

(declare-fun e!553910 () Bool)

(assert (=> d!261854 (= lt!318909 e!553910)))

(declare-fun res!384982 () Bool)

(assert (=> d!261854 (=> res!384982 e!553910)))

(assert (=> d!261854 (= res!384982 (not ((_ is Cons!9044) lt!318781)))))

(assert (=> d!261854 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261854 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 lt!318781) lt!318909)))

(declare-fun b!842060 () Bool)

(declare-fun e!553909 () Bool)

(assert (=> b!842060 (= e!553910 e!553909)))

(declare-fun res!384981 () Bool)

(assert (=> b!842060 (=> (not res!384981) (not e!553909))))

(assert (=> b!842060 (= res!384981 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318781)))))

(declare-fun b!842061 () Bool)

(assert (=> b!842061 (= e!553909 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 lt!318781)))))

(assert (= (and d!261854 (not res!384982)) b!842060))

(assert (= (and b!842060 res!384981) b!842061))

(declare-fun m!1075207 () Bool)

(assert (=> d!261854 m!1075207))

(assert (=> d!261854 m!1074735))

(assert (=> b!842060 m!1074787))

(declare-fun m!1075209 () Bool)

(assert (=> b!842061 m!1075209))

(assert (=> b!841774 d!261854))

(declare-fun d!261856 () Bool)

(assert (=> d!261856 (separableTokensPredicate!38 thiss!20117 (h!14445 lt!318783) (h!14445 (t!93602 lt!318783)) rules!2621)))

(declare-fun lt!318912 () Unit!13479)

(declare-fun choose!4961 (LexerInterface!1498 Token!3058 Token!3058 List!9061) Unit!13479)

(assert (=> d!261856 (= lt!318912 (choose!4961 thiss!20117 (h!14445 lt!318783) (h!14445 (t!93602 lt!318783)) rules!2621))))

(assert (=> d!261856 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261856 (= (lemmaTokensOfDifferentKindsAreSeparable!20 thiss!20117 (h!14445 lt!318783) (h!14445 (t!93602 lt!318783)) rules!2621) lt!318912)))

(declare-fun bs!229874 () Bool)

(assert (= bs!229874 d!261856))

(assert (=> bs!229874 m!1074715))

(declare-fun m!1075215 () Bool)

(assert (=> bs!229874 m!1075215))

(assert (=> bs!229874 m!1074735))

(assert (=> b!841774 d!261856))

(declare-fun d!261860 () Bool)

(assert (=> d!261860 (= (isEmpty!5324 (t!93602 (t!93602 lt!318783))) ((_ is Nil!9044) (t!93602 (t!93602 lt!318783))))))

(assert (=> b!841774 d!261860))

(declare-fun b!842145 () Bool)

(declare-fun res!385006 () Bool)

(declare-fun e!553970 () Bool)

(assert (=> b!842145 (=> (not res!385006) (not e!553970))))

(assert (=> b!842145 (= res!385006 (rulesInvariant!1374 thiss!20117 rules!2621))))

(declare-fun b!842146 () Bool)

(declare-fun res!385009 () Bool)

(assert (=> b!842146 (=> (not res!385009) (not e!553970))))

(assert (=> b!842146 (= res!385009 (isSeparator!1696 (rule!3119 separatorToken!297)))))

(declare-fun b!842147 () Bool)

(assert (=> b!842147 (= e!553970 (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297) rules!2621))))

(declare-fun lt!318941 () Unit!13479)

(declare-fun lt!318942 () Unit!13479)

(assert (=> b!842147 (= lt!318941 lt!318942)))

(assert (=> b!842147 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))

(assert (=> b!842147 (= lt!318942 (withSeparatorTokenListPreservesRulesProduceTokens!28 thiss!20117 rules!2621 lt!318778 separatorToken!297))))

(declare-fun b!842149 () Bool)

(declare-fun res!385010 () Bool)

(assert (=> b!842149 (=> (not res!385010) (not e!553970))))

(assert (=> b!842149 (= res!385010 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun d!261862 () Bool)

(assert (=> d!261862 e!553970))

(declare-fun res!385008 () Bool)

(assert (=> d!261862 (=> (not res!385008) (not e!553970))))

(assert (=> d!261862 (= res!385008 ((_ is Lexer!1496) thiss!20117))))

(declare-fun lt!318940 () Unit!13479)

(declare-fun choose!4962 (LexerInterface!1498 List!9061 List!9060 Token!3058) Unit!13479)

(assert (=> d!261862 (= lt!318940 (choose!4962 thiss!20117 rules!2621 lt!318778 separatorToken!297))))

(assert (=> d!261862 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261862 (= (printWithSeparatorTokenImpliesSeparableTokensList!4 thiss!20117 rules!2621 lt!318778 separatorToken!297) lt!318940)))

(declare-fun b!842148 () Bool)

(declare-fun res!385007 () Bool)

(assert (=> b!842148 (=> (not res!385007) (not e!553970))))

(assert (=> b!842148 (= res!385007 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 lt!318778))))

(assert (= (and d!261862 res!385008) b!842145))

(assert (= (and b!842145 res!385006) b!842148))

(assert (= (and b!842148 res!385007) b!842149))

(assert (= (and b!842149 res!385010) b!842146))

(assert (= (and b!842146 res!385009) b!842147))

(declare-fun m!1075249 () Bool)

(assert (=> b!842148 m!1075249))

(assert (=> b!842149 m!1074749))

(declare-fun m!1075251 () Bool)

(assert (=> d!261862 m!1075251))

(assert (=> d!261862 m!1074735))

(assert (=> b!842145 m!1074737))

(assert (=> b!842147 m!1074745))

(assert (=> b!842147 m!1074745))

(declare-fun m!1075253 () Bool)

(assert (=> b!842147 m!1075253))

(assert (=> b!842147 m!1074745))

(declare-fun m!1075255 () Bool)

(assert (=> b!842147 m!1075255))

(assert (=> b!842147 m!1074719))

(assert (=> b!841774 d!261862))

(declare-fun d!261868 () Bool)

(assert (=> d!261868 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))

(declare-fun lt!318943 () Unit!13479)

(assert (=> d!261868 (= lt!318943 (choose!4960 thiss!20117 rules!2621 lt!318778 separatorToken!297))))

(assert (=> d!261868 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261868 (= (withSeparatorTokenListPreservesRulesProduceTokens!28 thiss!20117 rules!2621 lt!318778 separatorToken!297) lt!318943)))

(declare-fun bs!229876 () Bool)

(assert (= bs!229876 d!261868))

(assert (=> bs!229876 m!1074745))

(assert (=> bs!229876 m!1074745))

(assert (=> bs!229876 m!1075255))

(declare-fun m!1075257 () Bool)

(assert (=> bs!229876 m!1075257))

(assert (=> bs!229876 m!1074735))

(assert (=> b!841774 d!261868))

(declare-fun d!261870 () Bool)

(declare-fun lt!318949 () Bool)

(declare-fun e!553975 () Bool)

(assert (=> d!261870 (= lt!318949 e!553975)))

(declare-fun res!385018 () Bool)

(assert (=> d!261870 (=> (not res!385018) (not e!553975))))

(declare-datatypes ((tuple2!10328 0))(
  ( (tuple2!10329 (_1!5990 BalanceConc!6016) (_2!5990 BalanceConc!6014)) )
))
(declare-fun lex!602 (LexerInterface!1498 List!9061 BalanceConc!6014) tuple2!10328)

(declare-fun print!539 (LexerInterface!1498 BalanceConc!6016) BalanceConc!6014)

(declare-fun singletonSeq!509 (Token!3058) BalanceConc!6016)

(assert (=> d!261870 (= res!385018 (= (list!3553 (_1!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297))))) (list!3553 (singletonSeq!509 separatorToken!297))))))

(declare-fun e!553976 () Bool)

(assert (=> d!261870 (= lt!318949 e!553976)))

(declare-fun res!385019 () Bool)

(assert (=> d!261870 (=> (not res!385019) (not e!553976))))

(declare-fun lt!318948 () tuple2!10328)

(declare-fun size!7551 (BalanceConc!6016) Int)

(assert (=> d!261870 (= res!385019 (= (size!7551 (_1!5990 lt!318948)) 1))))

(assert (=> d!261870 (= lt!318948 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297))))))

(assert (=> d!261870 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261870 (= (rulesProduceIndividualToken!562 thiss!20117 rules!2621 separatorToken!297) lt!318949)))

(declare-fun b!842156 () Bool)

(declare-fun res!385017 () Bool)

(assert (=> b!842156 (=> (not res!385017) (not e!553976))))

(declare-fun apply!1819 (BalanceConc!6016 Int) Token!3058)

(assert (=> b!842156 (= res!385017 (= (apply!1819 (_1!5990 lt!318948) 0) separatorToken!297))))

(declare-fun b!842157 () Bool)

(declare-fun isEmpty!5329 (BalanceConc!6014) Bool)

(assert (=> b!842157 (= e!553976 (isEmpty!5329 (_2!5990 lt!318948)))))

(declare-fun b!842158 () Bool)

(assert (=> b!842158 (= e!553975 (isEmpty!5329 (_2!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297))))))))

(assert (= (and d!261870 res!385019) b!842156))

(assert (= (and b!842156 res!385017) b!842157))

(assert (= (and d!261870 res!385018) b!842158))

(declare-fun m!1075259 () Bool)

(assert (=> d!261870 m!1075259))

(assert (=> d!261870 m!1075259))

(declare-fun m!1075261 () Bool)

(assert (=> d!261870 m!1075261))

(assert (=> d!261870 m!1074735))

(assert (=> d!261870 m!1075259))

(declare-fun m!1075263 () Bool)

(assert (=> d!261870 m!1075263))

(declare-fun m!1075265 () Bool)

(assert (=> d!261870 m!1075265))

(declare-fun m!1075267 () Bool)

(assert (=> d!261870 m!1075267))

(assert (=> d!261870 m!1075261))

(declare-fun m!1075269 () Bool)

(assert (=> d!261870 m!1075269))

(declare-fun m!1075271 () Bool)

(assert (=> b!842156 m!1075271))

(declare-fun m!1075273 () Bool)

(assert (=> b!842157 m!1075273))

(assert (=> b!842158 m!1075259))

(assert (=> b!842158 m!1075259))

(assert (=> b!842158 m!1075261))

(assert (=> b!842158 m!1075261))

(assert (=> b!842158 m!1075269))

(declare-fun m!1075275 () Bool)

(assert (=> b!842158 m!1075275))

(assert (=> b!841784 d!261870))

(declare-fun d!261872 () Bool)

(declare-fun res!385024 () Bool)

(declare-fun e!553981 () Bool)

(assert (=> d!261872 (=> res!385024 e!553981)))

(assert (=> d!261872 (= res!385024 ((_ is Nil!9044) l!5107))))

(assert (=> d!261872 (= (forall!2111 l!5107 lambda!25004) e!553981)))

(declare-fun b!842163 () Bool)

(declare-fun e!553982 () Bool)

(assert (=> b!842163 (= e!553981 e!553982)))

(declare-fun res!385025 () Bool)

(assert (=> b!842163 (=> (not res!385025) (not e!553982))))

(declare-fun dynLambda!4181 (Int Token!3058) Bool)

(assert (=> b!842163 (= res!385025 (dynLambda!4181 lambda!25004 (h!14445 l!5107)))))

(declare-fun b!842164 () Bool)

(assert (=> b!842164 (= e!553982 (forall!2111 (t!93602 l!5107) lambda!25004))))

(assert (= (and d!261872 (not res!385024)) b!842163))

(assert (= (and b!842163 res!385025) b!842164))

(declare-fun b_lambda!27695 () Bool)

(assert (=> (not b_lambda!27695) (not b!842163)))

(declare-fun m!1075277 () Bool)

(assert (=> b!842163 m!1075277))

(declare-fun m!1075279 () Bool)

(assert (=> b!842164 m!1075279))

(assert (=> b!841773 d!261872))

(declare-fun b!842175 () Bool)

(declare-fun b_free!25205 () Bool)

(declare-fun b_next!25269 () Bool)

(assert (=> b!842175 (= b_free!25205 (not b_next!25269))))

(declare-fun tp!264928 () Bool)

(declare-fun b_and!72841 () Bool)

(assert (=> b!842175 (= tp!264928 b_and!72841)))

(declare-fun b_free!25207 () Bool)

(declare-fun b_next!25271 () Bool)

(assert (=> b!842175 (= b_free!25207 (not b_next!25271))))

(declare-fun t!93651 () Bool)

(declare-fun tb!58065 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) t!93651) tb!58065))

(declare-fun result!67360 () Bool)

(assert (= result!67360 result!67322))

(assert (=> b!842005 t!93651))

(declare-fun t!93653 () Bool)

(declare-fun tb!58067 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) t!93653) tb!58067))

(declare-fun result!67362 () Bool)

(assert (= result!67362 result!67330))

(assert (=> b!842037 t!93653))

(declare-fun b_and!72843 () Bool)

(declare-fun tp!264927 () Bool)

(assert (=> b!842175 (= tp!264927 (and (=> t!93651 result!67360) (=> t!93653 result!67362) b_and!72843))))

(declare-fun e!553991 () Bool)

(assert (=> b!842175 (= e!553991 (and tp!264928 tp!264927))))

(declare-fun e!553992 () Bool)

(declare-fun tp!264930 () Bool)

(declare-fun b!842174 () Bool)

(assert (=> b!842174 (= e!553992 (and tp!264930 (inv!11512 (tag!1958 (h!14446 (t!93603 rules!2621)))) (inv!11516 (transformation!1696 (h!14446 (t!93603 rules!2621)))) e!553991))))

(declare-fun b!842173 () Bool)

(declare-fun e!553993 () Bool)

(declare-fun tp!264929 () Bool)

(assert (=> b!842173 (= e!553993 (and e!553992 tp!264929))))

(assert (=> b!841786 (= tp!264848 e!553993)))

(assert (= b!842174 b!842175))

(assert (= b!842173 b!842174))

(assert (= (and b!841786 ((_ is Cons!9045) (t!93603 rules!2621))) b!842173))

(declare-fun m!1075281 () Bool)

(assert (=> b!842174 m!1075281))

(declare-fun m!1075283 () Bool)

(assert (=> b!842174 m!1075283))

(declare-fun b!842180 () Bool)

(declare-fun e!553997 () Bool)

(declare-fun tp_is_empty!3941 () Bool)

(declare-fun tp!264933 () Bool)

(assert (=> b!842180 (= e!553997 (and tp_is_empty!3941 tp!264933))))

(assert (=> b!841789 (= tp!264853 e!553997)))

(assert (= (and b!841789 ((_ is Cons!9043) (originalCharacters!2252 (h!14445 l!5107)))) b!842180))

(declare-fun b!842194 () Bool)

(declare-fun b_free!25209 () Bool)

(declare-fun b_next!25273 () Bool)

(assert (=> b!842194 (= b_free!25209 (not b_next!25273))))

(declare-fun tp!264945 () Bool)

(declare-fun b_and!72845 () Bool)

(assert (=> b!842194 (= tp!264945 b_and!72845)))

(declare-fun b_free!25211 () Bool)

(declare-fun b_next!25275 () Bool)

(assert (=> b!842194 (= b_free!25211 (not b_next!25275))))

(declare-fun t!93655 () Bool)

(declare-fun tb!58069 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) t!93655) tb!58069))

(declare-fun result!67368 () Bool)

(assert (= result!67368 result!67322))

(assert (=> b!842005 t!93655))

(declare-fun tb!58071 () Bool)

(declare-fun t!93657 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) t!93657) tb!58071))

(declare-fun result!67370 () Bool)

(assert (= result!67370 result!67330))

(assert (=> b!842037 t!93657))

(declare-fun tp!264946 () Bool)

(declare-fun b_and!72847 () Bool)

(assert (=> b!842194 (= tp!264946 (and (=> t!93655 result!67368) (=> t!93657 result!67370) b_and!72847))))

(declare-fun e!554014 () Bool)

(declare-fun b!842192 () Bool)

(declare-fun e!554010 () Bool)

(declare-fun tp!264948 () Bool)

(assert (=> b!842192 (= e!554014 (and (inv!21 (value!55035 (h!14445 (t!93602 l!5107)))) e!554010 tp!264948))))

(declare-fun e!554013 () Bool)

(declare-fun b!842191 () Bool)

(declare-fun tp!264944 () Bool)

(assert (=> b!842191 (= e!554013 (and (inv!11515 (h!14445 (t!93602 l!5107))) e!554014 tp!264944))))

(declare-fun e!554015 () Bool)

(assert (=> b!842194 (= e!554015 (and tp!264945 tp!264946))))

(assert (=> b!841772 (= tp!264843 e!554013)))

(declare-fun b!842193 () Bool)

(declare-fun tp!264947 () Bool)

(assert (=> b!842193 (= e!554010 (and tp!264947 (inv!11512 (tag!1958 (rule!3119 (h!14445 (t!93602 l!5107))))) (inv!11516 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) e!554015))))

(assert (= b!842193 b!842194))

(assert (= b!842192 b!842193))

(assert (= b!842191 b!842192))

(assert (= (and b!841772 ((_ is Cons!9044) (t!93602 l!5107))) b!842191))

(declare-fun m!1075285 () Bool)

(assert (=> b!842192 m!1075285))

(declare-fun m!1075287 () Bool)

(assert (=> b!842191 m!1075287))

(declare-fun m!1075289 () Bool)

(assert (=> b!842193 m!1075289))

(declare-fun m!1075291 () Bool)

(assert (=> b!842193 m!1075291))

(declare-fun b!842207 () Bool)

(declare-fun e!554018 () Bool)

(declare-fun tp!264963 () Bool)

(assert (=> b!842207 (= e!554018 tp!264963)))

(declare-fun b!842205 () Bool)

(assert (=> b!842205 (= e!554018 tp_is_empty!3941)))

(declare-fun b!842206 () Bool)

(declare-fun tp!264960 () Bool)

(declare-fun tp!264962 () Bool)

(assert (=> b!842206 (= e!554018 (and tp!264960 tp!264962))))

(assert (=> b!841793 (= tp!264846 e!554018)))

(declare-fun b!842208 () Bool)

(declare-fun tp!264961 () Bool)

(declare-fun tp!264959 () Bool)

(assert (=> b!842208 (= e!554018 (and tp!264961 tp!264959))))

(assert (= (and b!841793 ((_ is ElementMatch!2129) (regex!1696 (rule!3119 separatorToken!297)))) b!842205))

(assert (= (and b!841793 ((_ is Concat!3892) (regex!1696 (rule!3119 separatorToken!297)))) b!842206))

(assert (= (and b!841793 ((_ is Star!2129) (regex!1696 (rule!3119 separatorToken!297)))) b!842207))

(assert (= (and b!841793 ((_ is Union!2129) (regex!1696 (rule!3119 separatorToken!297)))) b!842208))

(declare-fun b!842211 () Bool)

(declare-fun e!554019 () Bool)

(declare-fun tp!264968 () Bool)

(assert (=> b!842211 (= e!554019 tp!264968)))

(declare-fun b!842209 () Bool)

(assert (=> b!842209 (= e!554019 tp_is_empty!3941)))

(declare-fun b!842210 () Bool)

(declare-fun tp!264965 () Bool)

(declare-fun tp!264967 () Bool)

(assert (=> b!842210 (= e!554019 (and tp!264965 tp!264967))))

(assert (=> b!841782 (= tp!264850 e!554019)))

(declare-fun b!842212 () Bool)

(declare-fun tp!264966 () Bool)

(declare-fun tp!264964 () Bool)

(assert (=> b!842212 (= e!554019 (and tp!264966 tp!264964))))

(assert (= (and b!841782 ((_ is ElementMatch!2129) (regex!1696 (rule!3119 (h!14445 l!5107))))) b!842209))

(assert (= (and b!841782 ((_ is Concat!3892) (regex!1696 (rule!3119 (h!14445 l!5107))))) b!842210))

(assert (= (and b!841782 ((_ is Star!2129) (regex!1696 (rule!3119 (h!14445 l!5107))))) b!842211))

(assert (= (and b!841782 ((_ is Union!2129) (regex!1696 (rule!3119 (h!14445 l!5107))))) b!842212))

(declare-fun b!842215 () Bool)

(declare-fun e!554020 () Bool)

(declare-fun tp!264973 () Bool)

(assert (=> b!842215 (= e!554020 tp!264973)))

(declare-fun b!842213 () Bool)

(assert (=> b!842213 (= e!554020 tp_is_empty!3941)))

(declare-fun b!842214 () Bool)

(declare-fun tp!264970 () Bool)

(declare-fun tp!264972 () Bool)

(assert (=> b!842214 (= e!554020 (and tp!264970 tp!264972))))

(assert (=> b!841792 (= tp!264854 e!554020)))

(declare-fun b!842216 () Bool)

(declare-fun tp!264971 () Bool)

(declare-fun tp!264969 () Bool)

(assert (=> b!842216 (= e!554020 (and tp!264971 tp!264969))))

(assert (= (and b!841792 ((_ is ElementMatch!2129) (regex!1696 (h!14446 rules!2621)))) b!842213))

(assert (= (and b!841792 ((_ is Concat!3892) (regex!1696 (h!14446 rules!2621)))) b!842214))

(assert (= (and b!841792 ((_ is Star!2129) (regex!1696 (h!14446 rules!2621)))) b!842215))

(assert (= (and b!841792 ((_ is Union!2129) (regex!1696 (h!14446 rules!2621)))) b!842216))

(declare-fun b!842217 () Bool)

(declare-fun e!554021 () Bool)

(declare-fun tp!264974 () Bool)

(assert (=> b!842217 (= e!554021 (and tp_is_empty!3941 tp!264974))))

(assert (=> b!841775 (= tp!264845 e!554021)))

(assert (= (and b!841775 ((_ is Cons!9043) (originalCharacters!2252 separatorToken!297))) b!842217))

(declare-fun b_lambda!27697 () Bool)

(assert (= b_lambda!27695 (or b!841773 b_lambda!27697)))

(declare-fun bs!229877 () Bool)

(declare-fun d!261874 () Bool)

(assert (= bs!229877 (and d!261874 b!841773)))

(assert (=> bs!229877 (= (dynLambda!4181 lambda!25004 (h!14445 l!5107)) (not (isSeparator!1696 (rule!3119 (h!14445 l!5107)))))))

(assert (=> b!842163 d!261874))

(declare-fun b_lambda!27699 () Bool)

(assert (= b_lambda!27683 (or (and b!841770 b_free!25195) (and b!841780 b_free!25187 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (and b!842175 b_free!25207 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (and b!842194 b_free!25211 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (and b!841785 b_free!25191 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) b_lambda!27699)))

(declare-fun b_lambda!27701 () Bool)

(assert (= b_lambda!27685 (or (and b!841780 b_free!25187) (and b!841785 b_free!25191 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) (and b!842175 b_free!25207 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) (and b!842194 b_free!25211 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) (and b!841770 b_free!25195 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) b_lambda!27701)))

(check-sat (not tb!58045) (not b!842030) (not b!842174) (not b!842206) (not d!261862) (not b_next!25259) (not b!842148) (not b!842158) b_and!72821 (not b!842192) (not b!842017) (not d!261822) (not tb!58039) (not b_next!25251) (not b!842212) (not b!842149) (not b!842005) (not d!261758) (not b!842034) (not b!841932) (not b!842060) (not b!842214) (not d!261816) (not b!841956) (not b!842062) (not b!842024) (not d!261868) (not b!841998) (not b!841905) (not b!842208) (not b!842029) (not b!841962) (not b!841955) (not b!842164) (not b_next!25249) (not b_next!25273) (not b!841938) (not b!842156) (not b!841808) b_and!72825 (not b!842217) (not b_lambda!27701) (not d!261834) (not b!841934) (not d!261870) (not b!842016) (not b!842011) (not b_next!25253) (not b!842061) (not d!261792) (not b!841942) (not b!842031) b_and!72823 (not b_next!25257) (not d!261784) (not b!842207) b_and!72845 b_and!72843 (not d!261840) (not b!842037) (not b!842215) (not d!261826) (not b!841996) (not b!841997) (not b_next!25269) b_and!72801 (not b!842038) (not b!842145) (not b_next!25255) (not b_lambda!27697) (not b!841896) (not d!261856) b_and!72797 (not b!842018) b_and!72841 (not b!842216) (not d!261812) (not b!841953) (not b_next!25271) (not b!841809) b_and!72847 (not b_lambda!27699) (not b!842032) b_and!72805 (not b_next!25275) (not d!261824) (not b!842023) (not b!842157) (not d!261786) (not b!841963) (not b!841939) (not d!261838) tp_is_empty!3941 (not b!842180) (not b!842039) (not b!842014) (not b!842211) (not b!842210) (not b!842173) (not d!261798) (not b!842193) (not b!842035) (not b!842006) (not d!261854) (not b!842015) (not b!842191) (not b!842025) (not b!842147) (not b!841933) (not d!261820))
(check-sat (not b_next!25259) b_and!72821 (not b_next!25251) b_and!72825 (not b_next!25253) (not b_next!25255) (not b_next!25273) (not b_next!25249) b_and!72823 (not b_next!25257) b_and!72845 b_and!72843 (not b_next!25269) b_and!72801 b_and!72797 b_and!72841 (not b_next!25271) b_and!72847 b_and!72805 (not b_next!25275))
(get-model)

(declare-fun d!261882 () Bool)

(assert (=> d!261882 (= (isEmpty!5328 (originalCharacters!2252 (h!14445 l!5107))) ((_ is Nil!9043) (originalCharacters!2252 (h!14445 l!5107))))))

(assert (=> d!261812 d!261882))

(declare-fun d!261884 () Bool)

(declare-fun c!137209 () Bool)

(assert (=> d!261884 (= c!137209 ((_ is Cons!9044) lt!318867))))

(declare-fun e!554031 () List!9059)

(assert (=> d!261884 (= (printList!458 thiss!20117 lt!318867) e!554031)))

(declare-fun b!842231 () Bool)

(assert (=> b!842231 (= e!554031 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318867))) (printList!458 thiss!20117 (t!93602 lt!318867))))))

(declare-fun b!842232 () Bool)

(assert (=> b!842232 (= e!554031 Nil!9043)))

(assert (= (and d!261884 c!137209) b!842231))

(assert (= (and d!261884 (not c!137209)) b!842232))

(declare-fun m!1075301 () Bool)

(assert (=> b!842231 m!1075301))

(assert (=> b!842231 m!1075301))

(declare-fun m!1075303 () Bool)

(assert (=> b!842231 m!1075303))

(declare-fun m!1075305 () Bool)

(assert (=> b!842231 m!1075305))

(assert (=> b!842231 m!1075303))

(assert (=> b!842231 m!1075305))

(declare-fun m!1075307 () Bool)

(assert (=> b!842231 m!1075307))

(assert (=> d!261786 d!261884))

(declare-fun d!261886 () Bool)

(declare-fun c!137212 () Bool)

(assert (=> d!261886 (= c!137212 ((_ is Cons!9044) lt!318778))))

(declare-fun e!554034 () List!9059)

(assert (=> d!261886 (= (printWithSeparatorTokenList!16 thiss!20117 lt!318778 separatorToken!297) e!554034)))

(declare-fun b!842237 () Bool)

(assert (=> b!842237 (= e!554034 (++!2339 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318778))) (list!3554 (charsOf!973 separatorToken!297))) (printWithSeparatorTokenList!16 thiss!20117 (t!93602 lt!318778) separatorToken!297)))))

(declare-fun b!842238 () Bool)

(assert (=> b!842238 (= e!554034 Nil!9043)))

(assert (= (and d!261886 c!137212) b!842237))

(assert (= (and d!261886 (not c!137212)) b!842238))

(assert (=> b!842237 m!1074961))

(assert (=> b!842237 m!1074957))

(declare-fun m!1075309 () Bool)

(assert (=> b!842237 m!1075309))

(declare-fun m!1075311 () Bool)

(assert (=> b!842237 m!1075311))

(declare-fun m!1075313 () Bool)

(assert (=> b!842237 m!1075313))

(assert (=> b!842237 m!1074961))

(assert (=> b!842237 m!1074963))

(assert (=> b!842237 m!1074963))

(assert (=> b!842237 m!1074969))

(assert (=> b!842237 m!1075309))

(assert (=> b!842237 m!1075311))

(assert (=> b!842237 m!1074957))

(assert (=> b!842237 m!1074969))

(assert (=> d!261786 d!261886))

(declare-fun d!261888 () Bool)

(declare-fun res!385038 () Bool)

(declare-fun e!554035 () Bool)

(assert (=> d!261888 (=> res!385038 e!554035)))

(assert (=> d!261888 (= res!385038 ((_ is Nil!9044) lt!318783))))

(assert (=> d!261888 (= (forall!2111 lt!318783 lambda!25023) e!554035)))

(declare-fun b!842239 () Bool)

(declare-fun e!554036 () Bool)

(assert (=> b!842239 (= e!554035 e!554036)))

(declare-fun res!385039 () Bool)

(assert (=> b!842239 (=> (not res!385039) (not e!554036))))

(assert (=> b!842239 (= res!385039 (dynLambda!4181 lambda!25023 (h!14445 lt!318783)))))

(declare-fun b!842240 () Bool)

(assert (=> b!842240 (= e!554036 (forall!2111 (t!93602 lt!318783) lambda!25023))))

(assert (= (and d!261888 (not res!385038)) b!842239))

(assert (= (and b!842239 res!385039) b!842240))

(declare-fun b_lambda!27703 () Bool)

(assert (=> (not b_lambda!27703) (not b!842239)))

(declare-fun m!1075315 () Bool)

(assert (=> b!842239 m!1075315))

(declare-fun m!1075317 () Bool)

(assert (=> b!842240 m!1075317))

(assert (=> d!261822 d!261888))

(assert (=> d!261822 d!261754))

(declare-fun b!842262 () Bool)

(declare-fun res!385052 () Bool)

(declare-fun e!554048 () Bool)

(assert (=> b!842262 (=> (not res!385052) (not e!554048))))

(declare-fun height!391 (Conc!3000) Int)

(declare-fun ++!2341 (Conc!3000 Conc!3000) Conc!3000)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!842262 (= res!385052 (<= (height!391 (++!2341 (c!137165 (charsOf!973 (h!14445 lt!318783))) (c!137165 (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))))) (+ (max!0 (height!391 (c!137165 (charsOf!973 (h!14445 lt!318783)))) (height!391 (c!137165 (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))))) 1)))))

(declare-fun b!842264 () Bool)

(declare-fun lt!318957 () BalanceConc!6014)

(assert (=> b!842264 (= e!554048 (= (list!3554 lt!318957) (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318783))) (list!3554 (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))))))))

(declare-fun d!261890 () Bool)

(assert (=> d!261890 e!554048))

(declare-fun res!385053 () Bool)

(assert (=> d!261890 (=> (not res!385053) (not e!554048))))

(declare-fun appendAssocInst!187 (Conc!3000 Conc!3000) Bool)

(assert (=> d!261890 (= res!385053 (appendAssocInst!187 (c!137165 (charsOf!973 (h!14445 lt!318783))) (c!137165 (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0)))))))

(assert (=> d!261890 (= lt!318957 (BalanceConc!6015 (++!2341 (c!137165 (charsOf!973 (h!14445 lt!318783))) (c!137165 (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))))))))

(assert (=> d!261890 (= (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))) lt!318957)))

(declare-fun b!842263 () Bool)

(declare-fun res!385054 () Bool)

(assert (=> b!842263 (=> (not res!385054) (not e!554048))))

(assert (=> b!842263 (= res!385054 (>= (height!391 (++!2341 (c!137165 (charsOf!973 (h!14445 lt!318783))) (c!137165 (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))))) (max!0 (height!391 (c!137165 (charsOf!973 (h!14445 lt!318783)))) (height!391 (c!137165 (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0)))))))))

(declare-fun b!842261 () Bool)

(declare-fun res!385051 () Bool)

(assert (=> b!842261 (=> (not res!385051) (not e!554048))))

(declare-fun isBalanced!810 (Conc!3000) Bool)

(assert (=> b!842261 (= res!385051 (isBalanced!810 (++!2341 (c!137165 (charsOf!973 (h!14445 lt!318783))) (c!137165 (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))))))))

(assert (= (and d!261890 res!385053) b!842261))

(assert (= (and b!842261 res!385051) b!842262))

(assert (= (and b!842262 res!385052) b!842263))

(assert (= (and b!842263 res!385054) b!842264))

(declare-fun m!1075331 () Bool)

(assert (=> d!261890 m!1075331))

(declare-fun m!1075333 () Bool)

(assert (=> d!261890 m!1075333))

(declare-fun m!1075335 () Bool)

(assert (=> b!842262 m!1075335))

(assert (=> b!842262 m!1075333))

(declare-fun m!1075337 () Bool)

(assert (=> b!842262 m!1075337))

(assert (=> b!842262 m!1075333))

(assert (=> b!842262 m!1075335))

(declare-fun m!1075339 () Bool)

(assert (=> b!842262 m!1075339))

(declare-fun m!1075341 () Bool)

(assert (=> b!842262 m!1075341))

(assert (=> b!842262 m!1075339))

(assert (=> b!842263 m!1075335))

(assert (=> b!842263 m!1075333))

(assert (=> b!842263 m!1075337))

(assert (=> b!842263 m!1075333))

(assert (=> b!842263 m!1075335))

(assert (=> b!842263 m!1075339))

(assert (=> b!842263 m!1075341))

(assert (=> b!842263 m!1075339))

(declare-fun m!1075343 () Bool)

(assert (=> b!842264 m!1075343))

(assert (=> b!842264 m!1075199))

(declare-fun m!1075345 () Bool)

(assert (=> b!842264 m!1075345))

(assert (=> b!842264 m!1075195))

(declare-fun m!1075347 () Bool)

(assert (=> b!842264 m!1075347))

(assert (=> b!842264 m!1075345))

(assert (=> b!842264 m!1075347))

(declare-fun m!1075349 () Bool)

(assert (=> b!842264 m!1075349))

(assert (=> b!842261 m!1075333))

(assert (=> b!842261 m!1075333))

(declare-fun m!1075351 () Bool)

(assert (=> b!842261 m!1075351))

(assert (=> d!261840 d!261890))

(declare-fun d!261904 () Bool)

(declare-fun lt!318960 () BalanceConc!6014)

(assert (=> d!261904 (= (list!3554 lt!318960) (originalCharacters!2252 (h!14445 (t!93602 lt!318783))))))

(assert (=> d!261904 (= lt!318960 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783))))) (value!55035 (h!14445 (t!93602 lt!318783)))))))

(assert (=> d!261904 (= (charsOf!973 (h!14445 (t!93602 lt!318783))) lt!318960)))

(declare-fun b_lambda!27705 () Bool)

(assert (=> (not b_lambda!27705) (not d!261904)))

(declare-fun t!93661 () Bool)

(declare-fun tb!58073 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783)))))) t!93661) tb!58073))

(declare-fun b!842265 () Bool)

(declare-fun e!554049 () Bool)

(declare-fun tp!264975 () Bool)

(assert (=> b!842265 (= e!554049 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783))))) (value!55035 (h!14445 (t!93602 lt!318783)))))) tp!264975))))

(declare-fun result!67374 () Bool)

(assert (=> tb!58073 (= result!67374 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783))))) (value!55035 (h!14445 (t!93602 lt!318783))))) e!554049))))

(assert (= tb!58073 b!842265))

(declare-fun m!1075353 () Bool)

(assert (=> b!842265 m!1075353))

(declare-fun m!1075355 () Bool)

(assert (=> tb!58073 m!1075355))

(assert (=> d!261904 t!93661))

(declare-fun b_and!72849 () Bool)

(assert (= b_and!72825 (and (=> t!93661 result!67374) b_and!72849)))

(declare-fun tb!58075 () Bool)

(declare-fun t!93663 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783)))))) t!93663) tb!58075))

(declare-fun result!67376 () Bool)

(assert (= result!67376 result!67374))

(assert (=> d!261904 t!93663))

(declare-fun b_and!72851 () Bool)

(assert (= b_and!72821 (and (=> t!93663 result!67376) b_and!72851)))

(declare-fun tb!58077 () Bool)

(declare-fun t!93665 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783)))))) t!93665) tb!58077))

(declare-fun result!67378 () Bool)

(assert (= result!67378 result!67374))

(assert (=> d!261904 t!93665))

(declare-fun b_and!72853 () Bool)

(assert (= b_and!72843 (and (=> t!93665 result!67378) b_and!72853)))

(declare-fun t!93667 () Bool)

(declare-fun tb!58079 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783)))))) t!93667) tb!58079))

(declare-fun result!67380 () Bool)

(assert (= result!67380 result!67374))

(assert (=> d!261904 t!93667))

(declare-fun b_and!72855 () Bool)

(assert (= b_and!72823 (and (=> t!93667 result!67380) b_and!72855)))

(declare-fun tb!58081 () Bool)

(declare-fun t!93669 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783)))))) t!93669) tb!58081))

(declare-fun result!67382 () Bool)

(assert (= result!67382 result!67374))

(assert (=> d!261904 t!93669))

(declare-fun b_and!72857 () Bool)

(assert (= b_and!72847 (and (=> t!93669 result!67382) b_and!72857)))

(declare-fun m!1075357 () Bool)

(assert (=> d!261904 m!1075357))

(declare-fun m!1075359 () Bool)

(assert (=> d!261904 m!1075359))

(assert (=> d!261840 d!261904))

(declare-fun d!261906 () Bool)

(declare-fun lt!318963 () Unit!13479)

(declare-fun lemma!3 (List!9061 LexerInterface!1498 List!9061) Unit!13479)

(assert (=> d!261906 (= lt!318963 (lemma!3 rules!2621 thiss!20117 rules!2621))))

(declare-fun lambda!25032 () Int)

(declare-datatypes ((List!9064 0))(
  ( (Nil!9048) (Cons!9048 (h!14449 Regex!2129) (t!93936 List!9064)) )
))
(declare-fun generalisedUnion!7 (List!9064) Regex!2129)

(declare-fun map!1883 (List!9061 Int) List!9064)

(assert (=> d!261906 (= (rulesRegex!8 thiss!20117 rules!2621) (generalisedUnion!7 (map!1883 rules!2621 lambda!25032)))))

(declare-fun bs!229892 () Bool)

(assert (= bs!229892 d!261906))

(declare-fun m!1075361 () Bool)

(assert (=> bs!229892 m!1075361))

(declare-fun m!1075363 () Bool)

(assert (=> bs!229892 m!1075363))

(assert (=> bs!229892 m!1075363))

(declare-fun m!1075365 () Bool)

(assert (=> bs!229892 m!1075365))

(assert (=> d!261840 d!261906))

(declare-fun d!261908 () Bool)

(declare-fun lt!318966 () C!4828)

(declare-fun apply!1820 (List!9059 Int) C!4828)

(assert (=> d!261908 (= lt!318966 (apply!1820 (list!3554 (charsOf!973 (h!14445 (t!93602 lt!318783)))) 0))))

(declare-fun apply!1821 (Conc!3000 Int) C!4828)

(assert (=> d!261908 (= lt!318966 (apply!1821 (c!137165 (charsOf!973 (h!14445 (t!93602 lt!318783)))) 0))))

(declare-fun e!554052 () Bool)

(assert (=> d!261908 e!554052))

(declare-fun res!385057 () Bool)

(assert (=> d!261908 (=> (not res!385057) (not e!554052))))

(assert (=> d!261908 (= res!385057 (<= 0 0))))

(assert (=> d!261908 (= (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0) lt!318966)))

(declare-fun b!842268 () Bool)

(assert (=> b!842268 (= e!554052 (< 0 (size!7548 (charsOf!973 (h!14445 (t!93602 lt!318783))))))))

(assert (= (and d!261908 res!385057) b!842268))

(assert (=> d!261908 m!1075197))

(declare-fun m!1075367 () Bool)

(assert (=> d!261908 m!1075367))

(assert (=> d!261908 m!1075367))

(declare-fun m!1075369 () Bool)

(assert (=> d!261908 m!1075369))

(declare-fun m!1075371 () Bool)

(assert (=> d!261908 m!1075371))

(assert (=> b!842268 m!1075197))

(declare-fun m!1075373 () Bool)

(assert (=> b!842268 m!1075373))

(assert (=> d!261840 d!261908))

(declare-fun d!261914 () Bool)

(declare-fun e!554057 () Bool)

(assert (=> d!261914 e!554057))

(declare-fun res!385062 () Bool)

(assert (=> d!261914 (=> (not res!385062) (not e!554057))))

(declare-fun lt!318971 () BalanceConc!6014)

(assert (=> d!261914 (= res!385062 (= (list!3554 lt!318971) (Cons!9043 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0) Nil!9043)))))

(declare-fun singleton!239 (C!4828) BalanceConc!6014)

(assert (=> d!261914 (= lt!318971 (singleton!239 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0)))))

(assert (=> d!261914 (= (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0)) lt!318971)))

(declare-fun b!842273 () Bool)

(assert (=> b!842273 (= e!554057 (isBalanced!810 (c!137165 lt!318971)))))

(assert (= (and d!261914 res!385062) b!842273))

(declare-fun m!1075381 () Bool)

(assert (=> d!261914 m!1075381))

(assert (=> d!261914 m!1075193))

(declare-fun m!1075383 () Bool)

(assert (=> d!261914 m!1075383))

(declare-fun m!1075385 () Bool)

(assert (=> b!842273 m!1075385))

(assert (=> d!261840 d!261914))

(declare-fun lt!319020 () Bool)

(declare-fun d!261920 () Bool)

(declare-fun prefixMatch!1 (Regex!2129 List!9059) Bool)

(assert (=> d!261920 (= lt!319020 (prefixMatch!1 (rulesRegex!8 thiss!20117 rules!2621) (list!3554 (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!852 0))(
  ( (Context!853 (exprs!926 List!9064)) )
))
(declare-fun prefixMatchZipperSequence!10 ((InoxSet Context!852) BalanceConc!6014 Int) Bool)

(declare-fun focus!21 (Regex!2129) (InoxSet Context!852))

(assert (=> d!261920 (= lt!319020 (prefixMatchZipperSequence!10 (focus!21 (rulesRegex!8 thiss!20117 rules!2621)) (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))) 0))))

(declare-fun lt!319024 () Unit!13479)

(declare-fun lt!319027 () Unit!13479)

(assert (=> d!261920 (= lt!319024 lt!319027)))

(declare-fun lt!319025 () List!9059)

(declare-fun lt!319026 () (InoxSet Context!852))

(declare-fun prefixMatchZipper!1 ((InoxSet Context!852) List!9059) Bool)

(assert (=> d!261920 (= (prefixMatch!1 (rulesRegex!8 thiss!20117 rules!2621) lt!319025) (prefixMatchZipper!1 lt!319026 lt!319025))))

(declare-datatypes ((List!9065 0))(
  ( (Nil!9049) (Cons!9049 (h!14450 Context!852) (t!93937 List!9065)) )
))
(declare-fun lt!319022 () List!9065)

(declare-fun prefixMatchZipperRegexEquiv!1 ((InoxSet Context!852) List!9065 Regex!2129 List!9059) Unit!13479)

(assert (=> d!261920 (= lt!319027 (prefixMatchZipperRegexEquiv!1 lt!319026 lt!319022 (rulesRegex!8 thiss!20117 rules!2621) lt!319025))))

(assert (=> d!261920 (= lt!319025 (list!3554 (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0)))))))

(declare-fun toList!567 ((InoxSet Context!852)) List!9065)

(assert (=> d!261920 (= lt!319022 (toList!567 (focus!21 (rulesRegex!8 thiss!20117 rules!2621))))))

(assert (=> d!261920 (= lt!319026 (focus!21 (rulesRegex!8 thiss!20117 rules!2621)))))

(declare-fun lt!319021 () Unit!13479)

(declare-fun lt!319023 () Unit!13479)

(assert (=> d!261920 (= lt!319021 lt!319023)))

(declare-fun lt!319019 () (InoxSet Context!852))

(declare-fun lt!319018 () Int)

(declare-fun dropList!263 (BalanceConc!6014 Int) List!9059)

(assert (=> d!261920 (= (prefixMatchZipper!1 lt!319019 (dropList!263 (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))) lt!319018)) (prefixMatchZipperSequence!10 lt!319019 (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))) lt!319018))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!1 ((InoxSet Context!852) BalanceConc!6014 Int) Unit!13479)

(assert (=> d!261920 (= lt!319023 (lemmaprefixMatchZipperSequenceEquivalent!1 lt!319019 (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0))) lt!319018))))

(assert (=> d!261920 (= lt!319018 0)))

(assert (=> d!261920 (= lt!319019 (focus!21 (rulesRegex!8 thiss!20117 rules!2621)))))

(declare-fun validRegex!651 (Regex!2129) Bool)

(assert (=> d!261920 (validRegex!651 (rulesRegex!8 thiss!20117 rules!2621))))

(assert (=> d!261920 (= (prefixMatchZipperSequence!9 (rulesRegex!8 thiss!20117 rules!2621) (++!2340 (charsOf!973 (h!14445 lt!318783)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318783))) 0)))) lt!319020)))

(declare-fun bs!229906 () Bool)

(assert (= bs!229906 d!261920))

(declare-fun m!1075579 () Bool)

(assert (=> bs!229906 m!1075579))

(declare-fun m!1075581 () Bool)

(assert (=> bs!229906 m!1075581))

(assert (=> bs!229906 m!1075579))

(assert (=> bs!229906 m!1075201))

(declare-fun m!1075583 () Bool)

(assert (=> bs!229906 m!1075583))

(declare-fun m!1075585 () Bool)

(assert (=> bs!229906 m!1075585))

(declare-fun m!1075587 () Bool)

(assert (=> bs!229906 m!1075587))

(assert (=> bs!229906 m!1075203))

(declare-fun m!1075589 () Bool)

(assert (=> bs!229906 m!1075589))

(declare-fun m!1075591 () Bool)

(assert (=> bs!229906 m!1075591))

(assert (=> bs!229906 m!1075203))

(declare-fun m!1075593 () Bool)

(assert (=> bs!229906 m!1075593))

(assert (=> bs!229906 m!1075201))

(declare-fun m!1075595 () Bool)

(assert (=> bs!229906 m!1075595))

(assert (=> bs!229906 m!1075201))

(declare-fun m!1075597 () Bool)

(assert (=> bs!229906 m!1075597))

(assert (=> bs!229906 m!1075203))

(assert (=> bs!229906 m!1075579))

(assert (=> bs!229906 m!1075201))

(declare-fun m!1075599 () Bool)

(assert (=> bs!229906 m!1075599))

(assert (=> bs!229906 m!1075201))

(assert (=> bs!229906 m!1075585))

(assert (=> bs!229906 m!1075203))

(declare-fun m!1075601 () Bool)

(assert (=> bs!229906 m!1075601))

(assert (=> bs!229906 m!1075203))

(assert (=> bs!229906 m!1075599))

(declare-fun m!1075603 () Bool)

(assert (=> bs!229906 m!1075603))

(assert (=> d!261840 d!261920))

(declare-fun d!261972 () Bool)

(declare-fun lt!319028 () BalanceConc!6014)

(assert (=> d!261972 (= (list!3554 lt!319028) (originalCharacters!2252 (h!14445 lt!318783)))))

(assert (=> d!261972 (= lt!319028 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783)))) (value!55035 (h!14445 lt!318783))))))

(assert (=> d!261972 (= (charsOf!973 (h!14445 lt!318783)) lt!319028)))

(declare-fun b_lambda!27715 () Bool)

(assert (=> (not b_lambda!27715) (not d!261972)))

(declare-fun t!93703 () Bool)

(declare-fun tb!58113 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783))))) t!93703) tb!58113))

(declare-fun b!842336 () Bool)

(declare-fun e!554091 () Bool)

(declare-fun tp!264979 () Bool)

(assert (=> b!842336 (= e!554091 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783)))) (value!55035 (h!14445 lt!318783))))) tp!264979))))

(declare-fun result!67414 () Bool)

(assert (=> tb!58113 (= result!67414 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783)))) (value!55035 (h!14445 lt!318783)))) e!554091))))

(assert (= tb!58113 b!842336))

(declare-fun m!1075605 () Bool)

(assert (=> b!842336 m!1075605))

(declare-fun m!1075607 () Bool)

(assert (=> tb!58113 m!1075607))

(assert (=> d!261972 t!93703))

(declare-fun b_and!72899 () Bool)

(assert (= b_and!72855 (and (=> t!93703 result!67414) b_and!72899)))

(declare-fun t!93705 () Bool)

(declare-fun tb!58115 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783))))) t!93705) tb!58115))

(declare-fun result!67416 () Bool)

(assert (= result!67416 result!67414))

(assert (=> d!261972 t!93705))

(declare-fun b_and!72901 () Bool)

(assert (= b_and!72849 (and (=> t!93705 result!67416) b_and!72901)))

(declare-fun tb!58117 () Bool)

(declare-fun t!93707 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783))))) t!93707) tb!58117))

(declare-fun result!67418 () Bool)

(assert (= result!67418 result!67414))

(assert (=> d!261972 t!93707))

(declare-fun b_and!72903 () Bool)

(assert (= b_and!72853 (and (=> t!93707 result!67418) b_and!72903)))

(declare-fun tb!58119 () Bool)

(declare-fun t!93709 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783))))) t!93709) tb!58119))

(declare-fun result!67420 () Bool)

(assert (= result!67420 result!67414))

(assert (=> d!261972 t!93709))

(declare-fun b_and!72905 () Bool)

(assert (= b_and!72851 (and (=> t!93709 result!67420) b_and!72905)))

(declare-fun t!93711 () Bool)

(declare-fun tb!58121 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783))))) t!93711) tb!58121))

(declare-fun result!67422 () Bool)

(assert (= result!67422 result!67414))

(assert (=> d!261972 t!93711))

(declare-fun b_and!72907 () Bool)

(assert (= b_and!72857 (and (=> t!93711 result!67422) b_and!72907)))

(declare-fun m!1075609 () Bool)

(assert (=> d!261972 m!1075609))

(declare-fun m!1075611 () Bool)

(assert (=> d!261972 m!1075611))

(assert (=> d!261840 d!261972))

(declare-fun d!261974 () Bool)

(declare-fun res!385084 () Bool)

(declare-fun e!554092 () Bool)

(assert (=> d!261974 (=> res!385084 e!554092)))

(assert (=> d!261974 (= res!385084 ((_ is Nil!9044) lt!318781))))

(assert (=> d!261974 (= (forall!2111 lt!318781 lambda!25024) e!554092)))

(declare-fun b!842337 () Bool)

(declare-fun e!554093 () Bool)

(assert (=> b!842337 (= e!554092 e!554093)))

(declare-fun res!385085 () Bool)

(assert (=> b!842337 (=> (not res!385085) (not e!554093))))

(assert (=> b!842337 (= res!385085 (dynLambda!4181 lambda!25024 (h!14445 lt!318781)))))

(declare-fun b!842338 () Bool)

(assert (=> b!842338 (= e!554093 (forall!2111 (t!93602 lt!318781) lambda!25024))))

(assert (= (and d!261974 (not res!385084)) b!842337))

(assert (= (and b!842337 res!385085) b!842338))

(declare-fun b_lambda!27717 () Bool)

(assert (=> (not b_lambda!27717) (not b!842337)))

(declare-fun m!1075613 () Bool)

(assert (=> b!842337 m!1075613))

(declare-fun m!1075615 () Bool)

(assert (=> b!842338 m!1075615))

(assert (=> d!261854 d!261974))

(assert (=> d!261854 d!261754))

(declare-fun d!261976 () Bool)

(declare-fun charsToBigInt!1 (List!9058) Int)

(assert (=> d!261976 (= (inv!17 (value!55035 (h!14445 l!5107))) (= (charsToBigInt!1 (text!12782 (value!55035 (h!14445 l!5107)))) (value!55027 (value!55035 (h!14445 l!5107)))))))

(declare-fun bs!229907 () Bool)

(assert (= bs!229907 d!261976))

(declare-fun m!1075617 () Bool)

(assert (=> bs!229907 m!1075617))

(assert (=> b!841955 d!261976))

(declare-fun bs!229908 () Bool)

(declare-fun d!261978 () Bool)

(assert (= bs!229908 (and d!261978 d!261854)))

(declare-fun lambda!25038 () Int)

(assert (=> bs!229908 (= lambda!25038 lambda!25024)))

(declare-fun bs!229909 () Bool)

(assert (= bs!229909 (and d!261978 b!841773)))

(assert (=> bs!229909 (not (= lambda!25038 lambda!25004))))

(declare-fun bs!229910 () Bool)

(assert (= bs!229910 (and d!261978 d!261798)))

(assert (=> bs!229910 (= lambda!25038 lambda!25022)))

(declare-fun bs!229911 () Bool)

(assert (= bs!229911 (and d!261978 d!261758)))

(assert (=> bs!229911 (= lambda!25038 lambda!25018)))

(declare-fun bs!229912 () Bool)

(assert (= bs!229912 (and d!261978 d!261822)))

(assert (=> bs!229912 (= lambda!25038 lambda!25023)))

(declare-fun b!842343 () Bool)

(declare-fun e!554098 () Bool)

(assert (=> b!842343 (= e!554098 true)))

(declare-fun b!842342 () Bool)

(declare-fun e!554097 () Bool)

(assert (=> b!842342 (= e!554097 e!554098)))

(declare-fun b!842341 () Bool)

(declare-fun e!554096 () Bool)

(assert (=> b!842341 (= e!554096 e!554097)))

(assert (=> d!261978 e!554096))

(assert (= b!842342 b!842343))

(assert (= b!842341 b!842342))

(assert (= (and d!261978 ((_ is Cons!9045) rules!2621)) b!842341))

(assert (=> b!842343 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25038))))

(assert (=> b!842343 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25038))))

(assert (=> d!261978 true))

(declare-fun lt!319029 () Bool)

(assert (=> d!261978 (= lt!319029 (forall!2111 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297) lambda!25038))))

(declare-fun e!554095 () Bool)

(assert (=> d!261978 (= lt!319029 e!554095)))

(declare-fun res!385087 () Bool)

(assert (=> d!261978 (=> res!385087 e!554095)))

(assert (=> d!261978 (= res!385087 (not ((_ is Cons!9044) (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))))

(assert (=> d!261978 (not (isEmpty!5325 rules!2621))))

(assert (=> d!261978 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297)) lt!319029)))

(declare-fun b!842339 () Bool)

(declare-fun e!554094 () Bool)

(assert (=> b!842339 (= e!554095 e!554094)))

(declare-fun res!385086 () Bool)

(assert (=> b!842339 (=> (not res!385086) (not e!554094))))

(assert (=> b!842339 (= res!385086 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))))

(declare-fun b!842340 () Bool)

(assert (=> b!842340 (= e!554094 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))))

(assert (= (and d!261978 (not res!385087)) b!842339))

(assert (= (and b!842339 res!385086) b!842340))

(assert (=> d!261978 m!1074745))

(declare-fun m!1075619 () Bool)

(assert (=> d!261978 m!1075619))

(assert (=> d!261978 m!1074735))

(declare-fun m!1075621 () Bool)

(assert (=> b!842339 m!1075621))

(declare-fun m!1075623 () Bool)

(assert (=> b!842340 m!1075623))

(assert (=> d!261868 d!261978))

(assert (=> d!261868 d!261786))

(declare-fun d!261980 () Bool)

(assert (=> d!261980 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))

(assert (=> d!261980 true))

(declare-fun _$32!290 () Unit!13479)

(assert (=> d!261980 (= (choose!4960 thiss!20117 rules!2621 lt!318778 separatorToken!297) _$32!290)))

(declare-fun bs!229925 () Bool)

(assert (= bs!229925 d!261980))

(assert (=> bs!229925 m!1074745))

(assert (=> bs!229925 m!1074745))

(assert (=> bs!229925 m!1075255))

(assert (=> d!261868 d!261980))

(assert (=> d!261868 d!261754))

(declare-fun d!262006 () Bool)

(declare-fun res!385100 () Bool)

(declare-fun e!554118 () Bool)

(assert (=> d!262006 (=> res!385100 e!554118)))

(assert (=> d!262006 (= res!385100 ((_ is Nil!9045) rules!2621))))

(assert (=> d!262006 (= (noDuplicateTag!585 thiss!20117 rules!2621 Nil!9047) e!554118)))

(declare-fun b!842370 () Bool)

(declare-fun e!554119 () Bool)

(assert (=> b!842370 (= e!554118 e!554119)))

(declare-fun res!385101 () Bool)

(assert (=> b!842370 (=> (not res!385101) (not e!554119))))

(declare-fun contains!1687 (List!9063 String!10708) Bool)

(assert (=> b!842370 (= res!385101 (not (contains!1687 Nil!9047 (tag!1958 (h!14446 rules!2621)))))))

(declare-fun b!842371 () Bool)

(assert (=> b!842371 (= e!554119 (noDuplicateTag!585 thiss!20117 (t!93603 rules!2621) (Cons!9047 (tag!1958 (h!14446 rules!2621)) Nil!9047)))))

(assert (= (and d!262006 (not res!385100)) b!842370))

(assert (= (and b!842370 res!385101) b!842371))

(declare-fun m!1075721 () Bool)

(assert (=> b!842370 m!1075721))

(declare-fun m!1075723 () Bool)

(assert (=> b!842371 m!1075723))

(assert (=> b!841942 d!262006))

(declare-fun d!262008 () Bool)

(assert (=> d!262008 true))

(declare-fun lambda!25045 () Int)

(declare-fun order!5757 () Int)

(declare-fun dynLambda!4183 (Int Int) Int)

(assert (=> d!262008 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107))))) (dynLambda!4183 order!5757 lambda!25045))))

(declare-fun Forall2!311 (Int) Bool)

(assert (=> d!262008 (= (equivClasses!621 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107))))) (Forall2!311 lambda!25045))))

(declare-fun bs!229928 () Bool)

(assert (= bs!229928 d!262008))

(declare-fun m!1075735 () Bool)

(assert (=> bs!229928 m!1075735))

(assert (=> b!842015 d!262008))

(declare-fun d!262018 () Bool)

(declare-fun res!385107 () Bool)

(declare-fun e!554125 () Bool)

(assert (=> d!262018 (=> res!385107 e!554125)))

(assert (=> d!262018 (= res!385107 ((_ is Nil!9044) l!5107))))

(assert (=> d!262018 (= (forall!2111 l!5107 lambda!25022) e!554125)))

(declare-fun b!842385 () Bool)

(declare-fun e!554126 () Bool)

(assert (=> b!842385 (= e!554125 e!554126)))

(declare-fun res!385108 () Bool)

(assert (=> b!842385 (=> (not res!385108) (not e!554126))))

(assert (=> b!842385 (= res!385108 (dynLambda!4181 lambda!25022 (h!14445 l!5107)))))

(declare-fun b!842386 () Bool)

(assert (=> b!842386 (= e!554126 (forall!2111 (t!93602 l!5107) lambda!25022))))

(assert (= (and d!262018 (not res!385107)) b!842385))

(assert (= (and b!842385 res!385108) b!842386))

(declare-fun b_lambda!27721 () Bool)

(assert (=> (not b_lambda!27721) (not b!842385)))

(declare-fun m!1075745 () Bool)

(assert (=> b!842385 m!1075745))

(declare-fun m!1075749 () Bool)

(assert (=> b!842386 m!1075749))

(assert (=> d!261798 d!262018))

(assert (=> d!261798 d!261754))

(declare-fun d!262020 () Bool)

(assert (=> d!262020 (= (isEmpty!5328 (originalCharacters!2252 separatorToken!297)) ((_ is Nil!9043) (originalCharacters!2252 separatorToken!297)))))

(assert (=> d!261838 d!262020))

(declare-fun b!842403 () Bool)

(declare-fun e!554139 () List!9059)

(assert (=> b!842403 (= e!554139 (printList!458 thiss!20117 (t!93602 lt!318871)))))

(declare-fun b!842404 () Bool)

(assert (=> b!842404 (= e!554139 (Cons!9043 (h!14444 (list!3554 (charsOf!973 (h!14445 lt!318871)))) (++!2339 (t!93601 (list!3554 (charsOf!973 (h!14445 lt!318871)))) (printList!458 thiss!20117 (t!93602 lt!318871)))))))

(declare-fun d!262022 () Bool)

(declare-fun e!554138 () Bool)

(assert (=> d!262022 e!554138))

(declare-fun res!385119 () Bool)

(assert (=> d!262022 (=> (not res!385119) (not e!554138))))

(declare-fun lt!319048 () List!9059)

(declare-fun content!1334 (List!9059) (InoxSet C!4828))

(assert (=> d!262022 (= res!385119 (= (content!1334 lt!319048) ((_ map or) (content!1334 (list!3554 (charsOf!973 (h!14445 lt!318871)))) (content!1334 (printList!458 thiss!20117 (t!93602 lt!318871))))))))

(assert (=> d!262022 (= lt!319048 e!554139)))

(declare-fun c!137246 () Bool)

(assert (=> d!262022 (= c!137246 ((_ is Nil!9043) (list!3554 (charsOf!973 (h!14445 lt!318871)))))))

(assert (=> d!262022 (= (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318871))) (printList!458 thiss!20117 (t!93602 lt!318871))) lt!319048)))

(declare-fun b!842405 () Bool)

(declare-fun res!385120 () Bool)

(assert (=> b!842405 (=> (not res!385120) (not e!554138))))

(assert (=> b!842405 (= res!385120 (= (size!7550 lt!319048) (+ (size!7550 (list!3554 (charsOf!973 (h!14445 lt!318871)))) (size!7550 (printList!458 thiss!20117 (t!93602 lt!318871))))))))

(declare-fun b!842406 () Bool)

(assert (=> b!842406 (= e!554138 (or (not (= (printList!458 thiss!20117 (t!93602 lt!318871)) Nil!9043)) (= lt!319048 (list!3554 (charsOf!973 (h!14445 lt!318871))))))))

(assert (= (and d!262022 c!137246) b!842403))

(assert (= (and d!262022 (not c!137246)) b!842404))

(assert (= (and d!262022 res!385119) b!842405))

(assert (= (and b!842405 res!385120) b!842406))

(assert (=> b!842404 m!1074983))

(declare-fun m!1075765 () Bool)

(assert (=> b!842404 m!1075765))

(declare-fun m!1075767 () Bool)

(assert (=> d!262022 m!1075767))

(assert (=> d!262022 m!1074981))

(declare-fun m!1075769 () Bool)

(assert (=> d!262022 m!1075769))

(assert (=> d!262022 m!1074983))

(declare-fun m!1075771 () Bool)

(assert (=> d!262022 m!1075771))

(declare-fun m!1075773 () Bool)

(assert (=> b!842405 m!1075773))

(assert (=> b!842405 m!1074981))

(declare-fun m!1075775 () Bool)

(assert (=> b!842405 m!1075775))

(assert (=> b!842405 m!1074983))

(declare-fun m!1075777 () Bool)

(assert (=> b!842405 m!1075777))

(assert (=> b!841938 d!262022))

(declare-fun d!262030 () Bool)

(declare-fun list!3556 (Conc!3000) List!9059)

(assert (=> d!262030 (= (list!3554 (charsOf!973 (h!14445 lt!318871))) (list!3556 (c!137165 (charsOf!973 (h!14445 lt!318871)))))))

(declare-fun bs!229930 () Bool)

(assert (= bs!229930 d!262030))

(declare-fun m!1075785 () Bool)

(assert (=> bs!229930 m!1075785))

(assert (=> b!841938 d!262030))

(declare-fun d!262034 () Bool)

(declare-fun lt!319052 () BalanceConc!6014)

(assert (=> d!262034 (= (list!3554 lt!319052) (originalCharacters!2252 (h!14445 lt!318871)))))

(assert (=> d!262034 (= lt!319052 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871)))) (value!55035 (h!14445 lt!318871))))))

(assert (=> d!262034 (= (charsOf!973 (h!14445 lt!318871)) lt!319052)))

(declare-fun b_lambda!27723 () Bool)

(assert (=> (not b_lambda!27723) (not d!262034)))

(declare-fun t!93724 () Bool)

(declare-fun tb!58133 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871))))) t!93724) tb!58133))

(declare-fun b!842407 () Bool)

(declare-fun e!554140 () Bool)

(declare-fun tp!264981 () Bool)

(assert (=> b!842407 (= e!554140 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871)))) (value!55035 (h!14445 lt!318871))))) tp!264981))))

(declare-fun result!67434 () Bool)

(assert (=> tb!58133 (= result!67434 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871)))) (value!55035 (h!14445 lt!318871)))) e!554140))))

(assert (= tb!58133 b!842407))

(declare-fun m!1075787 () Bool)

(assert (=> b!842407 m!1075787))

(declare-fun m!1075789 () Bool)

(assert (=> tb!58133 m!1075789))

(assert (=> d!262034 t!93724))

(declare-fun b_and!72919 () Bool)

(assert (= b_and!72901 (and (=> t!93724 result!67434) b_and!72919)))

(declare-fun tb!58135 () Bool)

(declare-fun t!93726 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871))))) t!93726) tb!58135))

(declare-fun result!67436 () Bool)

(assert (= result!67436 result!67434))

(assert (=> d!262034 t!93726))

(declare-fun b_and!72921 () Bool)

(assert (= b_and!72899 (and (=> t!93726 result!67436) b_and!72921)))

(declare-fun tb!58137 () Bool)

(declare-fun t!93728 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871))))) t!93728) tb!58137))

(declare-fun result!67438 () Bool)

(assert (= result!67438 result!67434))

(assert (=> d!262034 t!93728))

(declare-fun b_and!72923 () Bool)

(assert (= b_and!72903 (and (=> t!93728 result!67438) b_and!72923)))

(declare-fun t!93730 () Bool)

(declare-fun tb!58139 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871))))) t!93730) tb!58139))

(declare-fun result!67440 () Bool)

(assert (= result!67440 result!67434))

(assert (=> d!262034 t!93730))

(declare-fun b_and!72925 () Bool)

(assert (= b_and!72907 (and (=> t!93730 result!67440) b_and!72925)))

(declare-fun tb!58141 () Bool)

(declare-fun t!93732 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871))))) t!93732) tb!58141))

(declare-fun result!67442 () Bool)

(assert (= result!67442 result!67434))

(assert (=> d!262034 t!93732))

(declare-fun b_and!72927 () Bool)

(assert (= b_and!72905 (and (=> t!93732 result!67442) b_and!72927)))

(declare-fun m!1075791 () Bool)

(assert (=> d!262034 m!1075791))

(declare-fun m!1075793 () Bool)

(assert (=> d!262034 m!1075793))

(assert (=> b!841938 d!262034))

(declare-fun d!262036 () Bool)

(declare-fun c!137247 () Bool)

(assert (=> d!262036 (= c!137247 ((_ is Cons!9044) (t!93602 lt!318871)))))

(declare-fun e!554141 () List!9059)

(assert (=> d!262036 (= (printList!458 thiss!20117 (t!93602 lt!318871)) e!554141)))

(declare-fun b!842408 () Bool)

(assert (=> b!842408 (= e!554141 (++!2339 (list!3554 (charsOf!973 (h!14445 (t!93602 lt!318871)))) (printList!458 thiss!20117 (t!93602 (t!93602 lt!318871)))))))

(declare-fun b!842409 () Bool)

(assert (=> b!842409 (= e!554141 Nil!9043)))

(assert (= (and d!262036 c!137247) b!842408))

(assert (= (and d!262036 (not c!137247)) b!842409))

(declare-fun m!1075795 () Bool)

(assert (=> b!842408 m!1075795))

(assert (=> b!842408 m!1075795))

(declare-fun m!1075797 () Bool)

(assert (=> b!842408 m!1075797))

(declare-fun m!1075799 () Bool)

(assert (=> b!842408 m!1075799))

(assert (=> b!842408 m!1075797))

(assert (=> b!842408 m!1075799))

(declare-fun m!1075801 () Bool)

(assert (=> b!842408 m!1075801))

(assert (=> b!841938 d!262036))

(declare-fun d!262038 () Bool)

(assert (=> d!262038 (= (list!3554 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))) (list!3556 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))))))

(declare-fun bs!229931 () Bool)

(assert (= bs!229931 d!262038))

(declare-fun m!1075803 () Bool)

(assert (=> bs!229931 m!1075803))

(assert (=> b!842037 d!262038))

(declare-fun d!262040 () Bool)

(declare-fun charsToInt!0 (List!9058) (_ BitVec 32))

(assert (=> d!262040 (= (inv!16 (value!55035 (h!14445 l!5107))) (= (charsToInt!0 (text!12781 (value!55035 (h!14445 l!5107)))) (value!55026 (value!55035 (h!14445 l!5107)))))))

(declare-fun bs!229932 () Bool)

(assert (= bs!229932 d!262040))

(declare-fun m!1075805 () Bool)

(assert (=> bs!229932 m!1075805))

(assert (=> b!841953 d!262040))

(declare-fun d!262042 () Bool)

(declare-fun res!385121 () Bool)

(declare-fun e!554142 () Bool)

(assert (=> d!262042 (=> res!385121 e!554142)))

(assert (=> d!262042 (= res!385121 ((_ is Nil!9044) (t!93602 l!5107)))))

(assert (=> d!262042 (= (forall!2111 (t!93602 l!5107) lambda!25004) e!554142)))

(declare-fun b!842410 () Bool)

(declare-fun e!554143 () Bool)

(assert (=> b!842410 (= e!554142 e!554143)))

(declare-fun res!385122 () Bool)

(assert (=> b!842410 (=> (not res!385122) (not e!554143))))

(assert (=> b!842410 (= res!385122 (dynLambda!4181 lambda!25004 (h!14445 (t!93602 l!5107))))))

(declare-fun b!842411 () Bool)

(assert (=> b!842411 (= e!554143 (forall!2111 (t!93602 (t!93602 l!5107)) lambda!25004))))

(assert (= (and d!262042 (not res!385121)) b!842410))

(assert (= (and b!842410 res!385122) b!842411))

(declare-fun b_lambda!27725 () Bool)

(assert (=> (not b_lambda!27725) (not b!842410)))

(declare-fun m!1075807 () Bool)

(assert (=> b!842410 m!1075807))

(declare-fun m!1075809 () Bool)

(assert (=> b!842411 m!1075809))

(assert (=> b!842164 d!262042))

(declare-fun d!262044 () Bool)

(assert (=> d!262044 (= (list!3554 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))) (list!3556 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))))))

(declare-fun bs!229933 () Bool)

(assert (= bs!229933 d!262044))

(declare-fun m!1075811 () Bool)

(assert (=> bs!229933 m!1075811))

(assert (=> b!842005 d!262044))

(assert (=> d!261856 d!261840))

(declare-fun d!262046 () Bool)

(assert (=> d!262046 (separableTokensPredicate!38 thiss!20117 (h!14445 lt!318783) (h!14445 (t!93602 lt!318783)) rules!2621)))

(assert (=> d!262046 true))

(declare-fun _$37!194 () Unit!13479)

(assert (=> d!262046 (= (choose!4961 thiss!20117 (h!14445 lt!318783) (h!14445 (t!93602 lt!318783)) rules!2621) _$37!194)))

(declare-fun bs!229934 () Bool)

(assert (= bs!229934 d!262046))

(assert (=> bs!229934 m!1074715))

(assert (=> d!261856 d!262046))

(assert (=> d!261856 d!261754))

(declare-fun d!262048 () Bool)

(declare-fun c!137248 () Bool)

(assert (=> d!262048 (= c!137248 ((_ is Cons!9044) ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (h!14445 lt!318778))))))

(declare-fun e!554144 () List!9059)

(assert (=> d!262048 (= (printList!458 thiss!20117 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (h!14445 lt!318778))) e!554144)))

(declare-fun b!842412 () Bool)

(assert (=> b!842412 (= e!554144 (++!2339 (list!3554 (charsOf!973 (h!14445 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (h!14445 lt!318778))))) (printList!458 thiss!20117 (t!93602 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (h!14445 lt!318778))))))))

(declare-fun b!842413 () Bool)

(assert (=> b!842413 (= e!554144 Nil!9043)))

(assert (= (and d!262048 c!137248) b!842412))

(assert (= (and d!262048 (not c!137248)) b!842413))

(declare-fun m!1075813 () Bool)

(assert (=> b!842412 m!1075813))

(assert (=> b!842412 m!1075813))

(declare-fun m!1075815 () Bool)

(assert (=> b!842412 m!1075815))

(declare-fun m!1075817 () Bool)

(assert (=> b!842412 m!1075817))

(assert (=> b!842412 m!1075815))

(assert (=> b!842412 m!1075817))

(declare-fun m!1075819 () Bool)

(assert (=> b!842412 m!1075819))

(assert (=> b!841934 d!262048))

(declare-fun d!262050 () Bool)

(assert (=> d!262050 (= ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (h!14445 lt!318778)) (Cons!9044 (h!14445 lt!318778) ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297)))))

(assert (=> b!841934 d!262050))

(declare-fun d!262052 () Bool)

(assert (=> d!262052 (= ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297) (Cons!9044 separatorToken!297 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297)))))

(assert (=> b!841934 d!262052))

(declare-fun b!842414 () Bool)

(declare-fun e!554146 () Bool)

(declare-fun e!554148 () Bool)

(assert (=> b!842414 (= e!554146 e!554148)))

(declare-fun res!385124 () Bool)

(assert (=> b!842414 (=> res!385124 e!554148)))

(assert (=> b!842414 (= res!385124 (not ((_ is Cons!9044) (t!93602 lt!318778))))))

(declare-fun b!842415 () Bool)

(declare-fun e!554145 () List!9059)

(assert (=> b!842415 (= e!554145 Nil!9043)))

(declare-fun b!842416 () Bool)

(declare-fun e!554150 () List!9059)

(assert (=> b!842416 (= e!554148 (= (printList!458 thiss!20117 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 lt!318778)) separatorToken!297) separatorToken!297)) e!554150))))

(declare-fun c!137251 () Bool)

(declare-fun lt!319053 () List!9060)

(assert (=> b!842416 (= c!137251 ((_ is Cons!9044) lt!319053))))

(assert (=> b!842416 (= lt!319053 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 lt!318778)) separatorToken!297) separatorToken!297))))

(declare-fun e!554147 () List!9060)

(declare-fun b!842417 () Bool)

(assert (=> b!842417 (= e!554147 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 lt!318778)) separatorToken!297) separatorToken!297) (h!14445 (t!93602 lt!318778))))))

(declare-fun lt!319057 () List!9059)

(assert (=> b!842417 (= lt!319057 (list!3554 (charsOf!973 (h!14445 (t!93602 lt!318778)))))))

(declare-fun lt!319055 () List!9059)

(assert (=> b!842417 (= lt!319055 (list!3554 (charsOf!973 separatorToken!297)))))

(declare-fun lt!319056 () List!9059)

(assert (=> b!842417 (= lt!319056 (printList!458 thiss!20117 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 lt!318778)) separatorToken!297)))))

(declare-fun lt!319059 () Unit!13479)

(assert (=> b!842417 (= lt!319059 (lemmaConcatAssociativity!733 lt!319057 lt!319055 lt!319056))))

(assert (=> b!842417 (= (++!2339 (++!2339 lt!319057 lt!319055) lt!319056) (++!2339 lt!319057 (++!2339 lt!319055 lt!319056)))))

(declare-fun lt!319060 () Unit!13479)

(assert (=> b!842417 (= lt!319060 lt!319059)))

(declare-fun e!554149 () Bool)

(declare-fun b!842418 () Bool)

(assert (=> b!842418 (= e!554149 (= (printList!458 thiss!20117 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 lt!318778)) separatorToken!297) separatorToken!297) (h!14445 (t!93602 lt!318778)))) e!554145))))

(declare-fun c!137249 () Bool)

(declare-fun lt!319058 () List!9060)

(assert (=> b!842418 (= c!137249 ((_ is Cons!9044) lt!319058))))

(assert (=> b!842418 (= lt!319058 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 lt!318778)) separatorToken!297) separatorToken!297) (h!14445 (t!93602 lt!318778))))))

(declare-fun lt!319054 () List!9060)

(declare-fun d!262054 () Bool)

(assert (=> d!262054 (= (printList!458 thiss!20117 lt!319054) (printWithSeparatorTokenList!16 thiss!20117 (t!93602 lt!318778) separatorToken!297))))

(assert (=> d!262054 (= lt!319054 e!554147)))

(declare-fun c!137250 () Bool)

(assert (=> d!262054 (= c!137250 ((_ is Cons!9044) (t!93602 lt!318778)))))

(assert (=> d!262054 e!554146))

(declare-fun res!385126 () Bool)

(assert (=> d!262054 (=> (not res!385126) (not e!554146))))

(assert (=> d!262054 (= res!385126 (isSeparator!1696 (rule!3119 separatorToken!297)))))

(assert (=> d!262054 (= (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) lt!319054)))

(declare-fun b!842419 () Bool)

(declare-fun res!385125 () Bool)

(assert (=> b!842419 (=> (not res!385125) (not e!554146))))

(assert (=> b!842419 (= res!385125 e!554149)))

(declare-fun res!385123 () Bool)

(assert (=> b!842419 (=> res!385123 e!554149)))

(assert (=> b!842419 (= res!385123 (not ((_ is Cons!9044) (t!93602 lt!318778))))))

(declare-fun b!842420 () Bool)

(assert (=> b!842420 (= e!554150 Nil!9043)))

(declare-fun b!842421 () Bool)

(assert (=> b!842421 (= e!554147 Nil!9044)))

(declare-fun b!842422 () Bool)

(assert (=> b!842422 (= e!554145 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!319058))) (printList!458 thiss!20117 (t!93602 lt!319058))))))

(declare-fun b!842423 () Bool)

(assert (=> b!842423 (= e!554150 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!319053))) (printList!458 thiss!20117 (t!93602 lt!319053))))))

(assert (= (and d!262054 res!385126) b!842419))

(assert (= (and b!842419 (not res!385123)) b!842418))

(assert (= (and b!842418 c!137249) b!842422))

(assert (= (and b!842418 (not c!137249)) b!842415))

(assert (= (and b!842419 res!385125) b!842414))

(assert (= (and b!842414 (not res!385124)) b!842416))

(assert (= (and b!842416 c!137251) b!842423))

(assert (= (and b!842416 (not c!137251)) b!842420))

(assert (= (and d!262054 c!137250) b!842417))

(assert (= (and d!262054 (not c!137250)) b!842421))

(declare-fun m!1075821 () Bool)

(assert (=> b!842423 m!1075821))

(assert (=> b!842423 m!1075821))

(declare-fun m!1075823 () Bool)

(assert (=> b!842423 m!1075823))

(declare-fun m!1075825 () Bool)

(assert (=> b!842423 m!1075825))

(assert (=> b!842423 m!1075823))

(assert (=> b!842423 m!1075825))

(declare-fun m!1075827 () Bool)

(assert (=> b!842423 m!1075827))

(declare-fun m!1075829 () Bool)

(assert (=> b!842417 m!1075829))

(declare-fun m!1075831 () Bool)

(assert (=> b!842417 m!1075831))

(declare-fun m!1075833 () Bool)

(assert (=> b!842417 m!1075833))

(declare-fun m!1075835 () Bool)

(assert (=> b!842417 m!1075835))

(assert (=> b!842417 m!1075835))

(declare-fun m!1075837 () Bool)

(assert (=> b!842417 m!1075837))

(assert (=> b!842417 m!1074957))

(declare-fun m!1075839 () Bool)

(assert (=> b!842417 m!1075839))

(declare-fun m!1075841 () Bool)

(assert (=> b!842417 m!1075841))

(declare-fun m!1075843 () Bool)

(assert (=> b!842417 m!1075843))

(assert (=> b!842417 m!1075841))

(assert (=> b!842417 m!1075831))

(declare-fun m!1075845 () Bool)

(assert (=> b!842417 m!1075845))

(assert (=> b!842417 m!1075839))

(declare-fun m!1075847 () Bool)

(assert (=> b!842417 m!1075847))

(assert (=> b!842417 m!1075831))

(assert (=> b!842417 m!1074957))

(assert (=> b!842417 m!1074969))

(assert (=> b!842417 m!1075845))

(declare-fun m!1075849 () Bool)

(assert (=> b!842417 m!1075849))

(assert (=> b!842416 m!1075831))

(assert (=> b!842416 m!1075831))

(assert (=> b!842416 m!1075845))

(assert (=> b!842416 m!1075845))

(declare-fun m!1075851 () Bool)

(assert (=> b!842416 m!1075851))

(declare-fun m!1075853 () Bool)

(assert (=> d!262054 m!1075853))

(assert (=> d!262054 m!1075311))

(declare-fun m!1075855 () Bool)

(assert (=> b!842422 m!1075855))

(assert (=> b!842422 m!1075855))

(declare-fun m!1075857 () Bool)

(assert (=> b!842422 m!1075857))

(declare-fun m!1075859 () Bool)

(assert (=> b!842422 m!1075859))

(assert (=> b!842422 m!1075857))

(assert (=> b!842422 m!1075859))

(declare-fun m!1075861 () Bool)

(assert (=> b!842422 m!1075861))

(assert (=> b!842418 m!1075831))

(assert (=> b!842418 m!1075831))

(assert (=> b!842418 m!1075845))

(assert (=> b!842418 m!1075845))

(assert (=> b!842418 m!1075849))

(assert (=> b!842418 m!1075849))

(declare-fun m!1075863 () Bool)

(assert (=> b!842418 m!1075863))

(assert (=> b!841934 d!262054))

(declare-fun bs!229935 () Bool)

(declare-fun d!262056 () Bool)

(assert (= bs!229935 (and d!262056 d!261854)))

(declare-fun lambda!25046 () Int)

(assert (=> bs!229935 (= lambda!25046 lambda!25024)))

(declare-fun bs!229936 () Bool)

(assert (= bs!229936 (and d!262056 b!841773)))

(assert (=> bs!229936 (not (= lambda!25046 lambda!25004))))

(declare-fun bs!229937 () Bool)

(assert (= bs!229937 (and d!262056 d!261758)))

(assert (=> bs!229937 (= lambda!25046 lambda!25018)))

(declare-fun bs!229938 () Bool)

(assert (= bs!229938 (and d!262056 d!261822)))

(assert (=> bs!229938 (= lambda!25046 lambda!25023)))

(declare-fun bs!229939 () Bool)

(assert (= bs!229939 (and d!262056 d!261798)))

(assert (=> bs!229939 (= lambda!25046 lambda!25022)))

(declare-fun bs!229940 () Bool)

(assert (= bs!229940 (and d!262056 d!261978)))

(assert (=> bs!229940 (= lambda!25046 lambda!25038)))

(declare-fun b!842428 () Bool)

(declare-fun e!554155 () Bool)

(assert (=> b!842428 (= e!554155 true)))

(declare-fun b!842427 () Bool)

(declare-fun e!554154 () Bool)

(assert (=> b!842427 (= e!554154 e!554155)))

(declare-fun b!842426 () Bool)

(declare-fun e!554153 () Bool)

(assert (=> b!842426 (= e!554153 e!554154)))

(assert (=> d!262056 e!554153))

(assert (= b!842427 b!842428))

(assert (= b!842426 b!842427))

(assert (= (and d!262056 ((_ is Cons!9045) rules!2621)) b!842426))

(assert (=> b!842428 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25046))))

(assert (=> b!842428 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25046))))

(assert (=> d!262056 true))

(declare-fun lt!319061 () Bool)

(assert (=> d!262056 (= lt!319061 (forall!2111 lt!318778 lambda!25046))))

(declare-fun e!554152 () Bool)

(assert (=> d!262056 (= lt!319061 e!554152)))

(declare-fun res!385128 () Bool)

(assert (=> d!262056 (=> res!385128 e!554152)))

(assert (=> d!262056 (= res!385128 (not ((_ is Cons!9044) lt!318778)))))

(assert (=> d!262056 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262056 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 lt!318778) lt!319061)))

(declare-fun b!842424 () Bool)

(declare-fun e!554151 () Bool)

(assert (=> b!842424 (= e!554152 e!554151)))

(declare-fun res!385127 () Bool)

(assert (=> b!842424 (=> (not res!385127) (not e!554151))))

(assert (=> b!842424 (= res!385127 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318778)))))

(declare-fun b!842425 () Bool)

(assert (=> b!842425 (= e!554151 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 lt!318778)))))

(assert (= (and d!262056 (not res!385128)) b!842424))

(assert (= (and b!842424 res!385127) b!842425))

(declare-fun m!1075865 () Bool)

(assert (=> d!262056 m!1075865))

(assert (=> d!262056 m!1074735))

(declare-fun m!1075867 () Bool)

(assert (=> b!842424 m!1075867))

(declare-fun m!1075869 () Bool)

(assert (=> b!842425 m!1075869))

(assert (=> b!842148 d!262056))

(declare-fun d!262058 () Bool)

(assert (=> d!262058 (= (inv!11512 (tag!1958 (rule!3119 (h!14445 (t!93602 l!5107))))) (= (mod (str.len (value!55034 (tag!1958 (rule!3119 (h!14445 (t!93602 l!5107)))))) 2) 0))))

(assert (=> b!842193 d!262058))

(declare-fun d!262060 () Bool)

(declare-fun res!385129 () Bool)

(declare-fun e!554156 () Bool)

(assert (=> d!262060 (=> (not res!385129) (not e!554156))))

(assert (=> d!262060 (= res!385129 (semiInverseModEq!654 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))))))

(assert (=> d!262060 (= (inv!11516 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) e!554156)))

(declare-fun b!842429 () Bool)

(assert (=> b!842429 (= e!554156 (equivClasses!621 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))))))

(assert (= (and d!262060 res!385129) b!842429))

(declare-fun m!1075871 () Bool)

(assert (=> d!262060 m!1075871))

(declare-fun m!1075873 () Bool)

(assert (=> b!842429 m!1075873))

(assert (=> b!842193 d!262060))

(declare-fun bs!229941 () Bool)

(declare-fun d!262062 () Bool)

(assert (= bs!229941 (and d!262062 d!262008)))

(declare-fun lambda!25047 () Int)

(assert (=> bs!229941 (= (= (toValue!2713 (transformation!1696 (h!14446 rules!2621))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107))))) (= lambda!25047 lambda!25045))))

(assert (=> d!262062 true))

(assert (=> d!262062 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4183 order!5757 lambda!25047))))

(assert (=> d!262062 (= (equivClasses!621 (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (Forall2!311 lambda!25047))))

(declare-fun bs!229942 () Bool)

(assert (= bs!229942 d!262062))

(declare-fun m!1075875 () Bool)

(assert (=> bs!229942 m!1075875))

(assert (=> b!842031 d!262062))

(declare-fun d!262064 () Bool)

(declare-fun res!385130 () Bool)

(declare-fun e!554157 () Bool)

(assert (=> d!262064 (=> res!385130 e!554157)))

(assert (=> d!262064 (= res!385130 (not ((_ is Cons!9045) (t!93603 rules!2621))))))

(assert (=> d!262064 (= (sepAndNonSepRulesDisjointChars!496 rules!2621 (t!93603 rules!2621)) e!554157)))

(declare-fun b!842430 () Bool)

(declare-fun e!554158 () Bool)

(assert (=> b!842430 (= e!554157 e!554158)))

(declare-fun res!385131 () Bool)

(assert (=> b!842430 (=> (not res!385131) (not e!554158))))

(assert (=> b!842430 (= res!385131 (ruleDisjointCharsFromAllFromOtherType!220 (h!14446 (t!93603 rules!2621)) rules!2621))))

(declare-fun b!842431 () Bool)

(assert (=> b!842431 (= e!554158 (sepAndNonSepRulesDisjointChars!496 rules!2621 (t!93603 (t!93603 rules!2621))))))

(assert (= (and d!262064 (not res!385130)) b!842430))

(assert (= (and b!842430 res!385131) b!842431))

(declare-fun m!1075877 () Bool)

(assert (=> b!842430 m!1075877))

(declare-fun m!1075879 () Bool)

(assert (=> b!842431 m!1075879))

(assert (=> b!841963 d!262064))

(declare-fun d!262066 () Bool)

(declare-fun lt!319064 () Bool)

(assert (=> d!262066 (= lt!319064 (isEmpty!5328 (list!3554 (_2!5990 lt!318948))))))

(declare-fun isEmpty!5330 (Conc!3000) Bool)

(assert (=> d!262066 (= lt!319064 (isEmpty!5330 (c!137165 (_2!5990 lt!318948))))))

(assert (=> d!262066 (= (isEmpty!5329 (_2!5990 lt!318948)) lt!319064)))

(declare-fun bs!229943 () Bool)

(assert (= bs!229943 d!262066))

(declare-fun m!1075881 () Bool)

(assert (=> bs!229943 m!1075881))

(assert (=> bs!229943 m!1075881))

(declare-fun m!1075883 () Bool)

(assert (=> bs!229943 m!1075883))

(declare-fun m!1075885 () Bool)

(assert (=> bs!229943 m!1075885))

(assert (=> b!842157 d!262066))

(declare-fun d!262068 () Bool)

(declare-fun c!137252 () Bool)

(assert (=> d!262068 (= c!137252 ((_ is Cons!9044) ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297)))))

(declare-fun e!554159 () List!9059)

(assert (=> d!262068 (= (printList!458 thiss!20117 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297)) e!554159)))

(declare-fun b!842432 () Bool)

(assert (=> b!842432 (= e!554159 (++!2339 (list!3554 (charsOf!973 (h!14445 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297)))) (printList!458 thiss!20117 (t!93602 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297) separatorToken!297)))))))

(declare-fun b!842433 () Bool)

(assert (=> b!842433 (= e!554159 Nil!9043)))

(assert (= (and d!262068 c!137252) b!842432))

(assert (= (and d!262068 (not c!137252)) b!842433))

(declare-fun m!1075887 () Bool)

(assert (=> b!842432 m!1075887))

(assert (=> b!842432 m!1075887))

(declare-fun m!1075889 () Bool)

(assert (=> b!842432 m!1075889))

(declare-fun m!1075891 () Bool)

(assert (=> b!842432 m!1075891))

(assert (=> b!842432 m!1075889))

(assert (=> b!842432 m!1075891))

(declare-fun m!1075893 () Bool)

(assert (=> b!842432 m!1075893))

(assert (=> b!841932 d!262068))

(assert (=> b!841932 d!262052))

(assert (=> b!841932 d!262054))

(declare-fun d!262070 () Bool)

(assert (=> d!262070 true))

(declare-fun lambda!25050 () Int)

(declare-fun order!5759 () Int)

(declare-fun dynLambda!4185 (Int Int) Int)

(assert (=> d!262070 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) (dynLambda!4185 order!5759 lambda!25050))))

(assert (=> d!262070 true))

(assert (=> d!262070 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297)))) (dynLambda!4185 order!5759 lambda!25050))))

(declare-fun Forall!401 (Int) Bool)

(assert (=> d!262070 (= (semiInverseModEq!654 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297)))) (Forall!401 lambda!25050))))

(declare-fun bs!229944 () Bool)

(assert (= bs!229944 d!262070))

(declare-fun m!1075895 () Bool)

(assert (=> bs!229944 m!1075895))

(assert (=> d!261816 d!262070))

(declare-fun d!262072 () Bool)

(declare-fun e!554162 () Bool)

(assert (=> d!262072 e!554162))

(declare-fun res!385134 () Bool)

(assert (=> d!262072 (=> (not res!385134) (not e!554162))))

(declare-fun lt!319067 () BalanceConc!6016)

(assert (=> d!262072 (= res!385134 (= (list!3553 lt!319067) lt!318783))))

(declare-fun fromList!305 (List!9060) Conc!3001)

(assert (=> d!262072 (= lt!319067 (BalanceConc!6017 (fromList!305 lt!318783)))))

(assert (=> d!262072 (= (fromListB!665 lt!318783) lt!319067)))

(declare-fun b!842440 () Bool)

(declare-fun isBalanced!812 (Conc!3001) Bool)

(assert (=> b!842440 (= e!554162 (isBalanced!812 (fromList!305 lt!318783)))))

(assert (= (and d!262072 res!385134) b!842440))

(declare-fun m!1075897 () Bool)

(assert (=> d!262072 m!1075897))

(declare-fun m!1075899 () Bool)

(assert (=> d!262072 m!1075899))

(assert (=> b!842440 m!1075899))

(assert (=> b!842440 m!1075899))

(declare-fun m!1075901 () Bool)

(assert (=> b!842440 m!1075901))

(assert (=> d!261784 d!262072))

(declare-fun b!842441 () Bool)

(declare-fun e!554164 () List!9059)

(assert (=> b!842441 (= e!554164 (printList!458 thiss!20117 (t!93602 lt!318893)))))

(declare-fun b!842442 () Bool)

(assert (=> b!842442 (= e!554164 (Cons!9043 (h!14444 (list!3554 (charsOf!973 (h!14445 lt!318893)))) (++!2339 (t!93601 (list!3554 (charsOf!973 (h!14445 lt!318893)))) (printList!458 thiss!20117 (t!93602 lt!318893)))))))

(declare-fun d!262074 () Bool)

(declare-fun e!554163 () Bool)

(assert (=> d!262074 e!554163))

(declare-fun res!385135 () Bool)

(assert (=> d!262074 (=> (not res!385135) (not e!554163))))

(declare-fun lt!319068 () List!9059)

(assert (=> d!262074 (= res!385135 (= (content!1334 lt!319068) ((_ map or) (content!1334 (list!3554 (charsOf!973 (h!14445 lt!318893)))) (content!1334 (printList!458 thiss!20117 (t!93602 lt!318893))))))))

(assert (=> d!262074 (= lt!319068 e!554164)))

(declare-fun c!137254 () Bool)

(assert (=> d!262074 (= c!137254 ((_ is Nil!9043) (list!3554 (charsOf!973 (h!14445 lt!318893)))))))

(assert (=> d!262074 (= (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318893))) (printList!458 thiss!20117 (t!93602 lt!318893))) lt!319068)))

(declare-fun b!842443 () Bool)

(declare-fun res!385136 () Bool)

(assert (=> b!842443 (=> (not res!385136) (not e!554163))))

(assert (=> b!842443 (= res!385136 (= (size!7550 lt!319068) (+ (size!7550 (list!3554 (charsOf!973 (h!14445 lt!318893)))) (size!7550 (printList!458 thiss!20117 (t!93602 lt!318893))))))))

(declare-fun b!842444 () Bool)

(assert (=> b!842444 (= e!554163 (or (not (= (printList!458 thiss!20117 (t!93602 lt!318893)) Nil!9043)) (= lt!319068 (list!3554 (charsOf!973 (h!14445 lt!318893))))))))

(assert (= (and d!262074 c!137254) b!842441))

(assert (= (and d!262074 (not c!137254)) b!842442))

(assert (= (and d!262074 res!385135) b!842443))

(assert (= (and b!842443 res!385136) b!842444))

(assert (=> b!842442 m!1075117))

(declare-fun m!1075903 () Bool)

(assert (=> b!842442 m!1075903))

(declare-fun m!1075905 () Bool)

(assert (=> d!262074 m!1075905))

(assert (=> d!262074 m!1075115))

(declare-fun m!1075907 () Bool)

(assert (=> d!262074 m!1075907))

(assert (=> d!262074 m!1075117))

(declare-fun m!1075909 () Bool)

(assert (=> d!262074 m!1075909))

(declare-fun m!1075911 () Bool)

(assert (=> b!842443 m!1075911))

(assert (=> b!842443 m!1075115))

(declare-fun m!1075913 () Bool)

(assert (=> b!842443 m!1075913))

(assert (=> b!842443 m!1075117))

(declare-fun m!1075915 () Bool)

(assert (=> b!842443 m!1075915))

(assert (=> b!842029 d!262074))

(declare-fun d!262076 () Bool)

(assert (=> d!262076 (= (list!3554 (charsOf!973 (h!14445 lt!318893))) (list!3556 (c!137165 (charsOf!973 (h!14445 lt!318893)))))))

(declare-fun bs!229945 () Bool)

(assert (= bs!229945 d!262076))

(declare-fun m!1075917 () Bool)

(assert (=> bs!229945 m!1075917))

(assert (=> b!842029 d!262076))

(declare-fun d!262078 () Bool)

(declare-fun lt!319069 () BalanceConc!6014)

(assert (=> d!262078 (= (list!3554 lt!319069) (originalCharacters!2252 (h!14445 lt!318893)))))

(assert (=> d!262078 (= lt!319069 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893)))) (value!55035 (h!14445 lt!318893))))))

(assert (=> d!262078 (= (charsOf!973 (h!14445 lt!318893)) lt!319069)))

(declare-fun b_lambda!27727 () Bool)

(assert (=> (not b_lambda!27727) (not d!262078)))

(declare-fun tb!58143 () Bool)

(declare-fun t!93735 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893))))) t!93735) tb!58143))

(declare-fun b!842445 () Bool)

(declare-fun e!554165 () Bool)

(declare-fun tp!264982 () Bool)

(assert (=> b!842445 (= e!554165 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893)))) (value!55035 (h!14445 lt!318893))))) tp!264982))))

(declare-fun result!67444 () Bool)

(assert (=> tb!58143 (= result!67444 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893)))) (value!55035 (h!14445 lt!318893)))) e!554165))))

(assert (= tb!58143 b!842445))

(declare-fun m!1075919 () Bool)

(assert (=> b!842445 m!1075919))

(declare-fun m!1075921 () Bool)

(assert (=> tb!58143 m!1075921))

(assert (=> d!262078 t!93735))

(declare-fun b_and!72929 () Bool)

(assert (= b_and!72919 (and (=> t!93735 result!67444) b_and!72929)))

(declare-fun t!93737 () Bool)

(declare-fun tb!58145 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893))))) t!93737) tb!58145))

(declare-fun result!67446 () Bool)

(assert (= result!67446 result!67444))

(assert (=> d!262078 t!93737))

(declare-fun b_and!72931 () Bool)

(assert (= b_and!72925 (and (=> t!93737 result!67446) b_and!72931)))

(declare-fun t!93739 () Bool)

(declare-fun tb!58147 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893))))) t!93739) tb!58147))

(declare-fun result!67448 () Bool)

(assert (= result!67448 result!67444))

(assert (=> d!262078 t!93739))

(declare-fun b_and!72933 () Bool)

(assert (= b_and!72921 (and (=> t!93739 result!67448) b_and!72933)))

(declare-fun t!93741 () Bool)

(declare-fun tb!58149 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893))))) t!93741) tb!58149))

(declare-fun result!67450 () Bool)

(assert (= result!67450 result!67444))

(assert (=> d!262078 t!93741))

(declare-fun b_and!72935 () Bool)

(assert (= b_and!72923 (and (=> t!93741 result!67450) b_and!72935)))

(declare-fun tb!58151 () Bool)

(declare-fun t!93743 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893))))) t!93743) tb!58151))

(declare-fun result!67452 () Bool)

(assert (= result!67452 result!67444))

(assert (=> d!262078 t!93743))

(declare-fun b_and!72937 () Bool)

(assert (= b_and!72927 (and (=> t!93743 result!67452) b_and!72937)))

(declare-fun m!1075923 () Bool)

(assert (=> d!262078 m!1075923))

(declare-fun m!1075925 () Bool)

(assert (=> d!262078 m!1075925))

(assert (=> b!842029 d!262078))

(declare-fun d!262080 () Bool)

(declare-fun c!137255 () Bool)

(assert (=> d!262080 (= c!137255 ((_ is Cons!9044) (t!93602 lt!318893)))))

(declare-fun e!554166 () List!9059)

(assert (=> d!262080 (= (printList!458 thiss!20117 (t!93602 lt!318893)) e!554166)))

(declare-fun b!842446 () Bool)

(assert (=> b!842446 (= e!554166 (++!2339 (list!3554 (charsOf!973 (h!14445 (t!93602 lt!318893)))) (printList!458 thiss!20117 (t!93602 (t!93602 lt!318893)))))))

(declare-fun b!842447 () Bool)

(assert (=> b!842447 (= e!554166 Nil!9043)))

(assert (= (and d!262080 c!137255) b!842446))

(assert (= (and d!262080 (not c!137255)) b!842447))

(declare-fun m!1075927 () Bool)

(assert (=> b!842446 m!1075927))

(assert (=> b!842446 m!1075927))

(declare-fun m!1075929 () Bool)

(assert (=> b!842446 m!1075929))

(declare-fun m!1075931 () Bool)

(assert (=> b!842446 m!1075931))

(assert (=> b!842446 m!1075929))

(assert (=> b!842446 m!1075931))

(declare-fun m!1075933 () Bool)

(assert (=> b!842446 m!1075933))

(assert (=> b!842029 d!262080))

(declare-fun bs!229946 () Bool)

(declare-fun d!262082 () Bool)

(assert (= bs!229946 (and d!262082 d!261854)))

(declare-fun lambda!25051 () Int)

(assert (=> bs!229946 (= lambda!25051 lambda!25024)))

(declare-fun bs!229947 () Bool)

(assert (= bs!229947 (and d!262082 b!841773)))

(assert (=> bs!229947 (not (= lambda!25051 lambda!25004))))

(declare-fun bs!229948 () Bool)

(assert (= bs!229948 (and d!262082 d!262056)))

(assert (=> bs!229948 (= lambda!25051 lambda!25046)))

(declare-fun bs!229949 () Bool)

(assert (= bs!229949 (and d!262082 d!261758)))

(assert (=> bs!229949 (= lambda!25051 lambda!25018)))

(declare-fun bs!229950 () Bool)

(assert (= bs!229950 (and d!262082 d!261822)))

(assert (=> bs!229950 (= lambda!25051 lambda!25023)))

(declare-fun bs!229951 () Bool)

(assert (= bs!229951 (and d!262082 d!261798)))

(assert (=> bs!229951 (= lambda!25051 lambda!25022)))

(declare-fun bs!229952 () Bool)

(assert (= bs!229952 (and d!262082 d!261978)))

(assert (=> bs!229952 (= lambda!25051 lambda!25038)))

(declare-fun b!842452 () Bool)

(declare-fun e!554171 () Bool)

(assert (=> b!842452 (= e!554171 true)))

(declare-fun b!842451 () Bool)

(declare-fun e!554170 () Bool)

(assert (=> b!842451 (= e!554170 e!554171)))

(declare-fun b!842450 () Bool)

(declare-fun e!554169 () Bool)

(assert (=> b!842450 (= e!554169 e!554170)))

(assert (=> d!262082 e!554169))

(assert (= b!842451 b!842452))

(assert (= b!842450 b!842451))

(assert (= (and d!262082 ((_ is Cons!9045) rules!2621)) b!842450))

(assert (=> b!842452 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25051))))

(assert (=> b!842452 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25051))))

(assert (=> d!262082 true))

(declare-fun lt!319070 () Bool)

(assert (=> d!262082 (= lt!319070 (forall!2111 (t!93602 lt!318781) lambda!25051))))

(declare-fun e!554168 () Bool)

(assert (=> d!262082 (= lt!319070 e!554168)))

(declare-fun res!385138 () Bool)

(assert (=> d!262082 (=> res!385138 e!554168)))

(assert (=> d!262082 (= res!385138 (not ((_ is Cons!9044) (t!93602 lt!318781))))))

(assert (=> d!262082 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262082 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 lt!318781)) lt!319070)))

(declare-fun b!842448 () Bool)

(declare-fun e!554167 () Bool)

(assert (=> b!842448 (= e!554168 e!554167)))

(declare-fun res!385137 () Bool)

(assert (=> b!842448 (=> (not res!385137) (not e!554167))))

(assert (=> b!842448 (= res!385137 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 lt!318781))))))

(declare-fun b!842449 () Bool)

(assert (=> b!842449 (= e!554167 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 (t!93602 lt!318781))))))

(assert (= (and d!262082 (not res!385138)) b!842448))

(assert (= (and b!842448 res!385137) b!842449))

(declare-fun m!1075935 () Bool)

(assert (=> d!262082 m!1075935))

(assert (=> d!262082 m!1074735))

(assert (=> b!842448 m!1074783))

(declare-fun m!1075937 () Bool)

(assert (=> b!842449 m!1075937))

(assert (=> b!842061 d!262082))

(declare-fun d!262084 () Bool)

(assert (=> d!262084 (= (inv!17 (value!55035 separatorToken!297)) (= (charsToBigInt!1 (text!12782 (value!55035 separatorToken!297))) (value!55027 (value!55035 separatorToken!297))))))

(declare-fun bs!229953 () Bool)

(assert (= bs!229953 d!262084))

(declare-fun m!1075939 () Bool)

(assert (=> bs!229953 m!1075939))

(assert (=> b!842034 d!262084))

(declare-fun d!262086 () Bool)

(assert (=> d!262086 (= (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))) (isBalanced!810 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))))))

(declare-fun bs!229954 () Bool)

(assert (= bs!229954 d!262086))

(declare-fun m!1075941 () Bool)

(assert (=> bs!229954 m!1075941))

(assert (=> tb!58045 d!262086))

(declare-fun d!262088 () Bool)

(declare-fun c!137256 () Bool)

(assert (=> d!262088 (= c!137256 ((_ is Cons!9044) ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (h!14445 l!5107))))))

(declare-fun e!554172 () List!9059)

(assert (=> d!262088 (= (printList!458 thiss!20117 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (h!14445 l!5107))) e!554172)))

(declare-fun b!842453 () Bool)

(assert (=> b!842453 (= e!554172 (++!2339 (list!3554 (charsOf!973 (h!14445 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (h!14445 l!5107))))) (printList!458 thiss!20117 (t!93602 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (h!14445 l!5107))))))))

(declare-fun b!842454 () Bool)

(assert (=> b!842454 (= e!554172 Nil!9043)))

(assert (= (and d!262088 c!137256) b!842453))

(assert (= (and d!262088 (not c!137256)) b!842454))

(declare-fun m!1075943 () Bool)

(assert (=> b!842453 m!1075943))

(assert (=> b!842453 m!1075943))

(declare-fun m!1075945 () Bool)

(assert (=> b!842453 m!1075945))

(declare-fun m!1075947 () Bool)

(assert (=> b!842453 m!1075947))

(assert (=> b!842453 m!1075945))

(assert (=> b!842453 m!1075947))

(declare-fun m!1075949 () Bool)

(assert (=> b!842453 m!1075949))

(assert (=> b!842025 d!262088))

(declare-fun d!262090 () Bool)

(assert (=> d!262090 (= ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (h!14445 l!5107)) (Cons!9044 (h!14445 l!5107) ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!842025 d!262090))

(declare-fun d!262092 () Bool)

(assert (=> d!262092 (= ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297) (Cons!9044 separatorToken!297 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297)))))

(assert (=> b!842025 d!262092))

(declare-fun b!842455 () Bool)

(declare-fun e!554174 () Bool)

(declare-fun e!554176 () Bool)

(assert (=> b!842455 (= e!554174 e!554176)))

(declare-fun res!385140 () Bool)

(assert (=> b!842455 (=> res!385140 e!554176)))

(assert (=> b!842455 (= res!385140 (not ((_ is Cons!9044) (t!93602 l!5107))))))

(declare-fun b!842456 () Bool)

(declare-fun e!554173 () List!9059)

(assert (=> b!842456 (= e!554173 Nil!9043)))

(declare-fun b!842457 () Bool)

(declare-fun e!554178 () List!9059)

(assert (=> b!842457 (= e!554176 (= (printList!458 thiss!20117 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 l!5107)) separatorToken!297) separatorToken!297)) e!554178))))

(declare-fun c!137259 () Bool)

(declare-fun lt!319071 () List!9060)

(assert (=> b!842457 (= c!137259 ((_ is Cons!9044) lt!319071))))

(assert (=> b!842457 (= lt!319071 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun e!554175 () List!9060)

(declare-fun b!842458 () Bool)

(assert (=> b!842458 (= e!554175 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 l!5107)) separatorToken!297) separatorToken!297) (h!14445 (t!93602 l!5107))))))

(declare-fun lt!319075 () List!9059)

(assert (=> b!842458 (= lt!319075 (list!3554 (charsOf!973 (h!14445 (t!93602 l!5107)))))))

(declare-fun lt!319073 () List!9059)

(assert (=> b!842458 (= lt!319073 (list!3554 (charsOf!973 separatorToken!297)))))

(declare-fun lt!319074 () List!9059)

(assert (=> b!842458 (= lt!319074 (printList!458 thiss!20117 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 l!5107)) separatorToken!297)))))

(declare-fun lt!319077 () Unit!13479)

(assert (=> b!842458 (= lt!319077 (lemmaConcatAssociativity!733 lt!319075 lt!319073 lt!319074))))

(assert (=> b!842458 (= (++!2339 (++!2339 lt!319075 lt!319073) lt!319074) (++!2339 lt!319075 (++!2339 lt!319073 lt!319074)))))

(declare-fun lt!319078 () Unit!13479)

(assert (=> b!842458 (= lt!319078 lt!319077)))

(declare-fun e!554177 () Bool)

(declare-fun b!842459 () Bool)

(assert (=> b!842459 (= e!554177 (= (printList!458 thiss!20117 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 l!5107)) separatorToken!297) separatorToken!297) (h!14445 (t!93602 l!5107)))) e!554173))))

(declare-fun c!137257 () Bool)

(declare-fun lt!319076 () List!9060)

(assert (=> b!842459 (= c!137257 ((_ is Cons!9044) lt!319076))))

(assert (=> b!842459 (= lt!319076 ($colon$colon!71 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 (t!93602 l!5107)) separatorToken!297) separatorToken!297) (h!14445 (t!93602 l!5107))))))

(declare-fun d!262094 () Bool)

(declare-fun lt!319072 () List!9060)

(assert (=> d!262094 (= (printList!458 thiss!20117 lt!319072) (printWithSeparatorTokenList!16 thiss!20117 (t!93602 l!5107) separatorToken!297))))

(assert (=> d!262094 (= lt!319072 e!554175)))

(declare-fun c!137258 () Bool)

(assert (=> d!262094 (= c!137258 ((_ is Cons!9044) (t!93602 l!5107)))))

(assert (=> d!262094 e!554174))

(declare-fun res!385142 () Bool)

(assert (=> d!262094 (=> (not res!385142) (not e!554174))))

(assert (=> d!262094 (= res!385142 (isSeparator!1696 (rule!3119 separatorToken!297)))))

(assert (=> d!262094 (= (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) lt!319072)))

(declare-fun b!842460 () Bool)

(declare-fun res!385141 () Bool)

(assert (=> b!842460 (=> (not res!385141) (not e!554174))))

(assert (=> b!842460 (= res!385141 e!554177)))

(declare-fun res!385139 () Bool)

(assert (=> b!842460 (=> res!385139 e!554177)))

(assert (=> b!842460 (= res!385139 (not ((_ is Cons!9044) (t!93602 l!5107))))))

(declare-fun b!842461 () Bool)

(assert (=> b!842461 (= e!554178 Nil!9043)))

(declare-fun b!842462 () Bool)

(assert (=> b!842462 (= e!554175 Nil!9044)))

(declare-fun b!842463 () Bool)

(assert (=> b!842463 (= e!554173 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!319076))) (printList!458 thiss!20117 (t!93602 lt!319076))))))

(declare-fun b!842464 () Bool)

(assert (=> b!842464 (= e!554178 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!319071))) (printList!458 thiss!20117 (t!93602 lt!319071))))))

(assert (= (and d!262094 res!385142) b!842460))

(assert (= (and b!842460 (not res!385139)) b!842459))

(assert (= (and b!842459 c!137257) b!842463))

(assert (= (and b!842459 (not c!137257)) b!842456))

(assert (= (and b!842460 res!385141) b!842455))

(assert (= (and b!842455 (not res!385140)) b!842457))

(assert (= (and b!842457 c!137259) b!842464))

(assert (= (and b!842457 (not c!137259)) b!842461))

(assert (= (and d!262094 c!137258) b!842458))

(assert (= (and d!262094 (not c!137258)) b!842462))

(declare-fun m!1075951 () Bool)

(assert (=> b!842464 m!1075951))

(assert (=> b!842464 m!1075951))

(declare-fun m!1075953 () Bool)

(assert (=> b!842464 m!1075953))

(declare-fun m!1075955 () Bool)

(assert (=> b!842464 m!1075955))

(assert (=> b!842464 m!1075953))

(assert (=> b!842464 m!1075955))

(declare-fun m!1075957 () Bool)

(assert (=> b!842464 m!1075957))

(declare-fun m!1075959 () Bool)

(assert (=> b!842458 m!1075959))

(declare-fun m!1075961 () Bool)

(assert (=> b!842458 m!1075961))

(declare-fun m!1075963 () Bool)

(assert (=> b!842458 m!1075963))

(declare-fun m!1075965 () Bool)

(assert (=> b!842458 m!1075965))

(assert (=> b!842458 m!1075965))

(declare-fun m!1075967 () Bool)

(assert (=> b!842458 m!1075967))

(assert (=> b!842458 m!1074957))

(declare-fun m!1075969 () Bool)

(assert (=> b!842458 m!1075969))

(declare-fun m!1075971 () Bool)

(assert (=> b!842458 m!1075971))

(declare-fun m!1075973 () Bool)

(assert (=> b!842458 m!1075973))

(assert (=> b!842458 m!1075971))

(assert (=> b!842458 m!1075961))

(declare-fun m!1075975 () Bool)

(assert (=> b!842458 m!1075975))

(assert (=> b!842458 m!1075969))

(declare-fun m!1075977 () Bool)

(assert (=> b!842458 m!1075977))

(assert (=> b!842458 m!1075961))

(assert (=> b!842458 m!1074957))

(assert (=> b!842458 m!1074969))

(assert (=> b!842458 m!1075975))

(declare-fun m!1075979 () Bool)

(assert (=> b!842458 m!1075979))

(assert (=> b!842457 m!1075961))

(assert (=> b!842457 m!1075961))

(assert (=> b!842457 m!1075975))

(assert (=> b!842457 m!1075975))

(declare-fun m!1075981 () Bool)

(assert (=> b!842457 m!1075981))

(declare-fun m!1075983 () Bool)

(assert (=> d!262094 m!1075983))

(declare-fun m!1075985 () Bool)

(assert (=> d!262094 m!1075985))

(declare-fun m!1075987 () Bool)

(assert (=> b!842463 m!1075987))

(assert (=> b!842463 m!1075987))

(declare-fun m!1075989 () Bool)

(assert (=> b!842463 m!1075989))

(declare-fun m!1075991 () Bool)

(assert (=> b!842463 m!1075991))

(assert (=> b!842463 m!1075989))

(assert (=> b!842463 m!1075991))

(declare-fun m!1075993 () Bool)

(assert (=> b!842463 m!1075993))

(assert (=> b!842459 m!1075961))

(assert (=> b!842459 m!1075961))

(assert (=> b!842459 m!1075975))

(assert (=> b!842459 m!1075975))

(assert (=> b!842459 m!1075979))

(assert (=> b!842459 m!1075979))

(declare-fun m!1075995 () Bool)

(assert (=> b!842459 m!1075995))

(assert (=> b!842025 d!262094))

(declare-fun d!262096 () Bool)

(declare-fun res!385143 () Bool)

(declare-fun e!554179 () Bool)

(assert (=> d!262096 (=> (not res!385143) (not e!554179))))

(assert (=> d!262096 (= res!385143 (not (isEmpty!5328 (originalCharacters!2252 (h!14445 (t!93602 l!5107))))))))

(assert (=> d!262096 (= (inv!11515 (h!14445 (t!93602 l!5107))) e!554179)))

(declare-fun b!842465 () Bool)

(declare-fun res!385144 () Bool)

(assert (=> b!842465 (=> (not res!385144) (not e!554179))))

(assert (=> b!842465 (= res!385144 (= (originalCharacters!2252 (h!14445 (t!93602 l!5107))) (list!3554 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (value!55035 (h!14445 (t!93602 l!5107)))))))))

(declare-fun b!842466 () Bool)

(assert (=> b!842466 (= e!554179 (= (size!7545 (h!14445 (t!93602 l!5107))) (size!7550 (originalCharacters!2252 (h!14445 (t!93602 l!5107))))))))

(assert (= (and d!262096 res!385143) b!842465))

(assert (= (and b!842465 res!385144) b!842466))

(declare-fun b_lambda!27729 () Bool)

(assert (=> (not b_lambda!27729) (not b!842465)))

(declare-fun t!93745 () Bool)

(declare-fun tb!58153 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) t!93745) tb!58153))

(declare-fun b!842467 () Bool)

(declare-fun e!554180 () Bool)

(declare-fun tp!264983 () Bool)

(assert (=> b!842467 (= e!554180 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (value!55035 (h!14445 (t!93602 l!5107)))))) tp!264983))))

(declare-fun result!67454 () Bool)

(assert (=> tb!58153 (= result!67454 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (value!55035 (h!14445 (t!93602 l!5107))))) e!554180))))

(assert (= tb!58153 b!842467))

(declare-fun m!1075997 () Bool)

(assert (=> b!842467 m!1075997))

(declare-fun m!1075999 () Bool)

(assert (=> tb!58153 m!1075999))

(assert (=> b!842465 t!93745))

(declare-fun b_and!72939 () Bool)

(assert (= b_and!72929 (and (=> t!93745 result!67454) b_and!72939)))

(declare-fun t!93747 () Bool)

(declare-fun tb!58155 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) t!93747) tb!58155))

(declare-fun result!67456 () Bool)

(assert (= result!67456 result!67454))

(assert (=> b!842465 t!93747))

(declare-fun b_and!72941 () Bool)

(assert (= b_and!72931 (and (=> t!93747 result!67456) b_and!72941)))

(declare-fun t!93749 () Bool)

(declare-fun tb!58157 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) t!93749) tb!58157))

(declare-fun result!67458 () Bool)

(assert (= result!67458 result!67454))

(assert (=> b!842465 t!93749))

(declare-fun b_and!72943 () Bool)

(assert (= b_and!72935 (and (=> t!93749 result!67458) b_and!72943)))

(declare-fun tb!58159 () Bool)

(declare-fun t!93751 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) t!93751) tb!58159))

(declare-fun result!67460 () Bool)

(assert (= result!67460 result!67454))

(assert (=> b!842465 t!93751))

(declare-fun b_and!72945 () Bool)

(assert (= b_and!72937 (and (=> t!93751 result!67460) b_and!72945)))

(declare-fun tb!58161 () Bool)

(declare-fun t!93753 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) t!93753) tb!58161))

(declare-fun result!67462 () Bool)

(assert (= result!67462 result!67454))

(assert (=> b!842465 t!93753))

(declare-fun b_and!72947 () Bool)

(assert (= b_and!72933 (and (=> t!93753 result!67462) b_and!72947)))

(declare-fun m!1076001 () Bool)

(assert (=> d!262096 m!1076001))

(declare-fun m!1076003 () Bool)

(assert (=> b!842465 m!1076003))

(assert (=> b!842465 m!1076003))

(declare-fun m!1076005 () Bool)

(assert (=> b!842465 m!1076005))

(declare-fun m!1076007 () Bool)

(assert (=> b!842466 m!1076007))

(assert (=> b!842191 d!262096))

(declare-fun c!137260 () Bool)

(declare-fun d!262098 () Bool)

(assert (=> d!262098 (= c!137260 ((_ is Cons!9044) ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!554181 () List!9059)

(assert (=> d!262098 (= (printList!458 thiss!20117 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297)) e!554181)))

(declare-fun b!842468 () Bool)

(assert (=> b!842468 (= e!554181 (++!2339 (list!3554 (charsOf!973 (h!14445 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297)))) (printList!458 thiss!20117 (t!93602 ($colon$colon!71 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!842469 () Bool)

(assert (=> b!842469 (= e!554181 Nil!9043)))

(assert (= (and d!262098 c!137260) b!842468))

(assert (= (and d!262098 (not c!137260)) b!842469))

(declare-fun m!1076009 () Bool)

(assert (=> b!842468 m!1076009))

(assert (=> b!842468 m!1076009))

(declare-fun m!1076011 () Bool)

(assert (=> b!842468 m!1076011))

(declare-fun m!1076013 () Bool)

(assert (=> b!842468 m!1076013))

(assert (=> b!842468 m!1076011))

(assert (=> b!842468 m!1076013))

(declare-fun m!1076015 () Bool)

(assert (=> b!842468 m!1076015))

(assert (=> b!842023 d!262098))

(assert (=> b!842023 d!262092))

(assert (=> b!842023 d!262094))

(declare-fun d!262100 () Bool)

(declare-fun res!385146 () Bool)

(declare-fun e!554183 () Bool)

(assert (=> d!262100 (=> res!385146 e!554183)))

(assert (=> d!262100 (= res!385146 (or (not ((_ is Cons!9044) (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))))) (not ((_ is Cons!9044) (t!93602 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))))))))))

(assert (=> d!262100 (= (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))) rules!2621) e!554183)))

(declare-fun b!842470 () Bool)

(declare-fun e!554182 () Bool)

(assert (=> b!842470 (= e!554183 e!554182)))

(declare-fun res!385145 () Bool)

(assert (=> b!842470 (=> (not res!385145) (not e!554182))))

(assert (=> b!842470 (= res!385145 (separableTokensPredicate!38 thiss!20117 (h!14445 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781)))) (h!14445 (t!93602 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))))) rules!2621))))

(declare-fun lt!319083 () Unit!13479)

(declare-fun Unit!13487 () Unit!13479)

(assert (=> b!842470 (= lt!319083 Unit!13487)))

(assert (=> b!842470 (> (size!7548 (charsOf!973 (h!14445 (t!93602 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))))))) 0)))

(declare-fun lt!319084 () Unit!13479)

(declare-fun Unit!13488 () Unit!13479)

(assert (=> b!842470 (= lt!319084 Unit!13488)))

(assert (=> b!842470 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))))))))

(declare-fun lt!319085 () Unit!13479)

(declare-fun Unit!13489 () Unit!13479)

(assert (=> b!842470 (= lt!319085 Unit!13489)))

(assert (=> b!842470 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781)))))))

(declare-fun lt!319079 () Unit!13479)

(declare-fun lt!319081 () Unit!13479)

(assert (=> b!842470 (= lt!319079 lt!319081)))

(assert (=> b!842470 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))))))))

(assert (=> b!842470 (= lt!319081 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 thiss!20117 rules!2621 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))) (h!14445 (t!93602 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781)))))))))

(declare-fun lt!319082 () Unit!13479)

(declare-fun lt!319080 () Unit!13479)

(assert (=> b!842470 (= lt!319082 lt!319080)))

(assert (=> b!842470 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781)))))))

(assert (=> b!842470 (= lt!319080 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 thiss!20117 rules!2621 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))) (h!14445 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))))))))

(declare-fun b!842471 () Bool)

(assert (=> b!842471 (= e!554182 (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 (Cons!9044 (h!14445 (t!93602 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781))))) (t!93602 (t!93602 (Cons!9044 (h!14445 (t!93602 lt!318781)) (t!93602 (t!93602 lt!318781)))))) rules!2621))))

(assert (= (and d!262100 (not res!385146)) b!842470))

(assert (= (and b!842470 res!385145) b!842471))

(declare-fun m!1076017 () Bool)

(assert (=> b!842470 m!1076017))

(declare-fun m!1076019 () Bool)

(assert (=> b!842470 m!1076019))

(declare-fun m!1076021 () Bool)

(assert (=> b!842470 m!1076021))

(declare-fun m!1076023 () Bool)

(assert (=> b!842470 m!1076023))

(declare-fun m!1076025 () Bool)

(assert (=> b!842470 m!1076025))

(declare-fun m!1076027 () Bool)

(assert (=> b!842470 m!1076027))

(assert (=> b!842470 m!1076027))

(declare-fun m!1076029 () Bool)

(assert (=> b!842470 m!1076029))

(declare-fun m!1076031 () Bool)

(assert (=> b!842471 m!1076031))

(assert (=> b!841809 d!262100))

(declare-fun bs!229955 () Bool)

(declare-fun d!262102 () Bool)

(assert (= bs!229955 (and d!262102 d!261854)))

(declare-fun lambda!25052 () Int)

(assert (=> bs!229955 (= lambda!25052 lambda!25024)))

(declare-fun bs!229956 () Bool)

(assert (= bs!229956 (and d!262102 b!841773)))

(assert (=> bs!229956 (not (= lambda!25052 lambda!25004))))

(declare-fun bs!229957 () Bool)

(assert (= bs!229957 (and d!262102 d!262056)))

(assert (=> bs!229957 (= lambda!25052 lambda!25046)))

(declare-fun bs!229958 () Bool)

(assert (= bs!229958 (and d!262102 d!261822)))

(assert (=> bs!229958 (= lambda!25052 lambda!25023)))

(declare-fun bs!229959 () Bool)

(assert (= bs!229959 (and d!262102 d!261798)))

(assert (=> bs!229959 (= lambda!25052 lambda!25022)))

(declare-fun bs!229960 () Bool)

(assert (= bs!229960 (and d!262102 d!261978)))

(assert (=> bs!229960 (= lambda!25052 lambda!25038)))

(declare-fun bs!229961 () Bool)

(assert (= bs!229961 (and d!262102 d!262082)))

(assert (=> bs!229961 (= lambda!25052 lambda!25051)))

(declare-fun bs!229962 () Bool)

(assert (= bs!229962 (and d!262102 d!261758)))

(assert (=> bs!229962 (= lambda!25052 lambda!25018)))

(declare-fun b!842476 () Bool)

(declare-fun e!554188 () Bool)

(assert (=> b!842476 (= e!554188 true)))

(declare-fun b!842475 () Bool)

(declare-fun e!554187 () Bool)

(assert (=> b!842475 (= e!554187 e!554188)))

(declare-fun b!842474 () Bool)

(declare-fun e!554186 () Bool)

(assert (=> b!842474 (= e!554186 e!554187)))

(assert (=> d!262102 e!554186))

(assert (= b!842475 b!842476))

(assert (= b!842474 b!842475))

(assert (= (and d!262102 ((_ is Cons!9045) rules!2621)) b!842474))

(assert (=> b!842476 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25052))))

(assert (=> b!842476 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25052))))

(assert (=> d!262102 true))

(declare-fun lt!319086 () Bool)

(assert (=> d!262102 (= lt!319086 (forall!2111 (t!93602 lt!318783) lambda!25052))))

(declare-fun e!554185 () Bool)

(assert (=> d!262102 (= lt!319086 e!554185)))

(declare-fun res!385148 () Bool)

(assert (=> d!262102 (=> res!385148 e!554185)))

(assert (=> d!262102 (= res!385148 (not ((_ is Cons!9044) (t!93602 lt!318783))))))

(assert (=> d!262102 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262102 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 lt!318783)) lt!319086)))

(declare-fun b!842472 () Bool)

(declare-fun e!554184 () Bool)

(assert (=> b!842472 (= e!554185 e!554184)))

(declare-fun res!385147 () Bool)

(assert (=> b!842472 (=> (not res!385147) (not e!554184))))

(assert (=> b!842472 (= res!385147 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 lt!318783))))))

(declare-fun b!842473 () Bool)

(assert (=> b!842473 (= e!554184 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 (t!93602 lt!318783))))))

(assert (= (and d!262102 (not res!385148)) b!842472))

(assert (= (and b!842472 res!385147) b!842473))

(declare-fun m!1076033 () Bool)

(assert (=> d!262102 m!1076033))

(assert (=> d!262102 m!1074735))

(declare-fun m!1076035 () Bool)

(assert (=> b!842472 m!1076035))

(declare-fun m!1076037 () Bool)

(assert (=> b!842473 m!1076037))

(assert (=> b!842017 d!262102))

(declare-fun d!262104 () Bool)

(assert (=> d!262104 (= (inv!11512 (tag!1958 (h!14446 (t!93603 rules!2621)))) (= (mod (str.len (value!55034 (tag!1958 (h!14446 (t!93603 rules!2621))))) 2) 0))))

(assert (=> b!842174 d!262104))

(declare-fun d!262106 () Bool)

(declare-fun res!385149 () Bool)

(declare-fun e!554189 () Bool)

(assert (=> d!262106 (=> (not res!385149) (not e!554189))))

(assert (=> d!262106 (= res!385149 (semiInverseModEq!654 (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toValue!2713 (transformation!1696 (h!14446 (t!93603 rules!2621))))))))

(assert (=> d!262106 (= (inv!11516 (transformation!1696 (h!14446 (t!93603 rules!2621)))) e!554189)))

(declare-fun b!842477 () Bool)

(assert (=> b!842477 (= e!554189 (equivClasses!621 (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toValue!2713 (transformation!1696 (h!14446 (t!93603 rules!2621))))))))

(assert (= (and d!262106 res!385149) b!842477))

(declare-fun m!1076039 () Bool)

(assert (=> d!262106 m!1076039))

(declare-fun m!1076041 () Bool)

(assert (=> b!842477 m!1076041))

(assert (=> b!842174 d!262106))

(declare-fun d!262108 () Bool)

(declare-fun charsToBigInt!0 (List!9058 Int) Int)

(assert (=> d!262108 (= (inv!15 (value!55035 (h!14445 l!5107))) (= (charsToBigInt!0 (text!12783 (value!55035 (h!14445 l!5107))) 0) (value!55030 (value!55035 (h!14445 l!5107)))))))

(declare-fun bs!229963 () Bool)

(assert (= bs!229963 d!262108))

(declare-fun m!1076043 () Bool)

(assert (=> bs!229963 m!1076043))

(assert (=> b!841956 d!262108))

(declare-fun d!262110 () Bool)

(declare-fun c!137263 () Bool)

(assert (=> d!262110 (= c!137263 ((_ is Node!3000) (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))))))

(declare-fun e!554194 () Bool)

(assert (=> d!262110 (= (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))) e!554194)))

(declare-fun b!842484 () Bool)

(declare-fun inv!11521 (Conc!3000) Bool)

(assert (=> b!842484 (= e!554194 (inv!11521 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))))))

(declare-fun b!842485 () Bool)

(declare-fun e!554195 () Bool)

(assert (=> b!842485 (= e!554194 e!554195)))

(declare-fun res!385152 () Bool)

(assert (=> b!842485 (= res!385152 (not ((_ is Leaf!4436) (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))))))))

(assert (=> b!842485 (=> res!385152 e!554195)))

(declare-fun b!842486 () Bool)

(declare-fun inv!11522 (Conc!3000) Bool)

(assert (=> b!842486 (= e!554195 (inv!11522 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))))))

(assert (= (and d!262110 c!137263) b!842484))

(assert (= (and d!262110 (not c!137263)) b!842485))

(assert (= (and b!842485 (not res!385152)) b!842486))

(declare-fun m!1076045 () Bool)

(assert (=> b!842484 m!1076045))

(declare-fun m!1076047 () Bool)

(assert (=> b!842486 m!1076047))

(assert (=> b!842011 d!262110))

(declare-fun d!262112 () Bool)

(declare-fun lt!319089 () Int)

(assert (=> d!262112 (>= lt!319089 0)))

(declare-fun e!554198 () Int)

(assert (=> d!262112 (= lt!319089 e!554198)))

(declare-fun c!137266 () Bool)

(assert (=> d!262112 (= c!137266 ((_ is Nil!9043) (originalCharacters!2252 separatorToken!297)))))

(assert (=> d!262112 (= (size!7550 (originalCharacters!2252 separatorToken!297)) lt!319089)))

(declare-fun b!842491 () Bool)

(assert (=> b!842491 (= e!554198 0)))

(declare-fun b!842492 () Bool)

(assert (=> b!842492 (= e!554198 (+ 1 (size!7550 (t!93601 (originalCharacters!2252 separatorToken!297)))))))

(assert (= (and d!262112 c!137266) b!842491))

(assert (= (and d!262112 (not c!137266)) b!842492))

(declare-fun m!1076049 () Bool)

(assert (=> b!842492 m!1076049))

(assert (=> b!842038 d!262112))

(declare-fun d!262114 () Bool)

(assert (=> d!262114 (= (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))) (isBalanced!810 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))))))

(declare-fun bs!229964 () Bool)

(assert (= bs!229964 d!262114))

(declare-fun m!1076051 () Bool)

(assert (=> bs!229964 m!1076051))

(assert (=> tb!58039 d!262114))

(declare-fun d!262116 () Bool)

(assert (=> d!262116 (= (inv!16 (value!55035 separatorToken!297)) (= (charsToInt!0 (text!12781 (value!55035 separatorToken!297))) (value!55026 (value!55035 separatorToken!297))))))

(declare-fun bs!229965 () Bool)

(assert (= bs!229965 d!262116))

(declare-fun m!1076053 () Bool)

(assert (=> bs!229965 m!1076053))

(assert (=> b!842032 d!262116))

(declare-fun d!262118 () Bool)

(declare-fun lt!319091 () Bool)

(declare-fun e!554199 () Bool)

(assert (=> d!262118 (= lt!319091 e!554199)))

(declare-fun res!385154 () Bool)

(assert (=> d!262118 (=> (not res!385154) (not e!554199))))

(assert (=> d!262118 (= res!385154 (= (list!3553 (_1!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 l!5107)))))) (list!3553 (singletonSeq!509 (h!14445 l!5107)))))))

(declare-fun e!554200 () Bool)

(assert (=> d!262118 (= lt!319091 e!554200)))

(declare-fun res!385155 () Bool)

(assert (=> d!262118 (=> (not res!385155) (not e!554200))))

(declare-fun lt!319090 () tuple2!10328)

(assert (=> d!262118 (= res!385155 (= (size!7551 (_1!5990 lt!319090)) 1))))

(assert (=> d!262118 (= lt!319090 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 l!5107)))))))

(assert (=> d!262118 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262118 (= (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 l!5107)) lt!319091)))

(declare-fun b!842493 () Bool)

(declare-fun res!385153 () Bool)

(assert (=> b!842493 (=> (not res!385153) (not e!554200))))

(assert (=> b!842493 (= res!385153 (= (apply!1819 (_1!5990 lt!319090) 0) (h!14445 l!5107)))))

(declare-fun b!842494 () Bool)

(assert (=> b!842494 (= e!554200 (isEmpty!5329 (_2!5990 lt!319090)))))

(declare-fun b!842495 () Bool)

(assert (=> b!842495 (= e!554199 (isEmpty!5329 (_2!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 l!5107)))))))))

(assert (= (and d!262118 res!385155) b!842493))

(assert (= (and b!842493 res!385153) b!842494))

(assert (= (and d!262118 res!385154) b!842495))

(declare-fun m!1076055 () Bool)

(assert (=> d!262118 m!1076055))

(assert (=> d!262118 m!1076055))

(declare-fun m!1076057 () Bool)

(assert (=> d!262118 m!1076057))

(assert (=> d!262118 m!1074735))

(assert (=> d!262118 m!1076055))

(declare-fun m!1076059 () Bool)

(assert (=> d!262118 m!1076059))

(declare-fun m!1076061 () Bool)

(assert (=> d!262118 m!1076061))

(declare-fun m!1076063 () Bool)

(assert (=> d!262118 m!1076063))

(assert (=> d!262118 m!1076057))

(declare-fun m!1076065 () Bool)

(assert (=> d!262118 m!1076065))

(declare-fun m!1076067 () Bool)

(assert (=> b!842493 m!1076067))

(declare-fun m!1076069 () Bool)

(assert (=> b!842494 m!1076069))

(assert (=> b!842495 m!1076055))

(assert (=> b!842495 m!1076055))

(assert (=> b!842495 m!1076057))

(assert (=> b!842495 m!1076057))

(assert (=> b!842495 m!1076065))

(declare-fun m!1076071 () Bool)

(assert (=> b!842495 m!1076071))

(assert (=> b!841996 d!262118))

(declare-fun b!842496 () Bool)

(declare-fun e!554202 () List!9059)

(assert (=> b!842496 (= e!554202 (printList!458 thiss!20117 (t!93602 lt!318866)))))

(declare-fun b!842497 () Bool)

(assert (=> b!842497 (= e!554202 (Cons!9043 (h!14444 (list!3554 (charsOf!973 (h!14445 lt!318866)))) (++!2339 (t!93601 (list!3554 (charsOf!973 (h!14445 lt!318866)))) (printList!458 thiss!20117 (t!93602 lt!318866)))))))

(declare-fun d!262120 () Bool)

(declare-fun e!554201 () Bool)

(assert (=> d!262120 e!554201))

(declare-fun res!385156 () Bool)

(assert (=> d!262120 (=> (not res!385156) (not e!554201))))

(declare-fun lt!319092 () List!9059)

(assert (=> d!262120 (= res!385156 (= (content!1334 lt!319092) ((_ map or) (content!1334 (list!3554 (charsOf!973 (h!14445 lt!318866)))) (content!1334 (printList!458 thiss!20117 (t!93602 lt!318866))))))))

(assert (=> d!262120 (= lt!319092 e!554202)))

(declare-fun c!137267 () Bool)

(assert (=> d!262120 (= c!137267 ((_ is Nil!9043) (list!3554 (charsOf!973 (h!14445 lt!318866)))))))

(assert (=> d!262120 (= (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318866))) (printList!458 thiss!20117 (t!93602 lt!318866))) lt!319092)))

(declare-fun b!842498 () Bool)

(declare-fun res!385157 () Bool)

(assert (=> b!842498 (=> (not res!385157) (not e!554201))))

(assert (=> b!842498 (= res!385157 (= (size!7550 lt!319092) (+ (size!7550 (list!3554 (charsOf!973 (h!14445 lt!318866)))) (size!7550 (printList!458 thiss!20117 (t!93602 lt!318866))))))))

(declare-fun b!842499 () Bool)

(assert (=> b!842499 (= e!554201 (or (not (= (printList!458 thiss!20117 (t!93602 lt!318866)) Nil!9043)) (= lt!319092 (list!3554 (charsOf!973 (h!14445 lt!318866))))))))

(assert (= (and d!262120 c!137267) b!842496))

(assert (= (and d!262120 (not c!137267)) b!842497))

(assert (= (and d!262120 res!385156) b!842498))

(assert (= (and b!842498 res!385157) b!842499))

(assert (=> b!842497 m!1074943))

(declare-fun m!1076073 () Bool)

(assert (=> b!842497 m!1076073))

(declare-fun m!1076075 () Bool)

(assert (=> d!262120 m!1076075))

(assert (=> d!262120 m!1074941))

(declare-fun m!1076077 () Bool)

(assert (=> d!262120 m!1076077))

(assert (=> d!262120 m!1074943))

(declare-fun m!1076079 () Bool)

(assert (=> d!262120 m!1076079))

(declare-fun m!1076081 () Bool)

(assert (=> b!842498 m!1076081))

(assert (=> b!842498 m!1074941))

(declare-fun m!1076083 () Bool)

(assert (=> b!842498 m!1076083))

(assert (=> b!842498 m!1074943))

(declare-fun m!1076085 () Bool)

(assert (=> b!842498 m!1076085))

(assert (=> b!841939 d!262120))

(declare-fun d!262122 () Bool)

(assert (=> d!262122 (= (list!3554 (charsOf!973 (h!14445 lt!318866))) (list!3556 (c!137165 (charsOf!973 (h!14445 lt!318866)))))))

(declare-fun bs!229966 () Bool)

(assert (= bs!229966 d!262122))

(declare-fun m!1076087 () Bool)

(assert (=> bs!229966 m!1076087))

(assert (=> b!841939 d!262122))

(declare-fun d!262124 () Bool)

(declare-fun lt!319093 () BalanceConc!6014)

(assert (=> d!262124 (= (list!3554 lt!319093) (originalCharacters!2252 (h!14445 lt!318866)))))

(assert (=> d!262124 (= lt!319093 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866)))) (value!55035 (h!14445 lt!318866))))))

(assert (=> d!262124 (= (charsOf!973 (h!14445 lt!318866)) lt!319093)))

(declare-fun b_lambda!27731 () Bool)

(assert (=> (not b_lambda!27731) (not d!262124)))

(declare-fun tb!58163 () Bool)

(declare-fun t!93755 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866))))) t!93755) tb!58163))

(declare-fun b!842500 () Bool)

(declare-fun e!554203 () Bool)

(declare-fun tp!264984 () Bool)

(assert (=> b!842500 (= e!554203 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866)))) (value!55035 (h!14445 lt!318866))))) tp!264984))))

(declare-fun result!67464 () Bool)

(assert (=> tb!58163 (= result!67464 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866)))) (value!55035 (h!14445 lt!318866)))) e!554203))))

(assert (= tb!58163 b!842500))

(declare-fun m!1076089 () Bool)

(assert (=> b!842500 m!1076089))

(declare-fun m!1076091 () Bool)

(assert (=> tb!58163 m!1076091))

(assert (=> d!262124 t!93755))

(declare-fun b_and!72949 () Bool)

(assert (= b_and!72939 (and (=> t!93755 result!67464) b_and!72949)))

(declare-fun t!93757 () Bool)

(declare-fun tb!58165 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866))))) t!93757) tb!58165))

(declare-fun result!67466 () Bool)

(assert (= result!67466 result!67464))

(assert (=> d!262124 t!93757))

(declare-fun b_and!72951 () Bool)

(assert (= b_and!72943 (and (=> t!93757 result!67466) b_and!72951)))

(declare-fun tb!58167 () Bool)

(declare-fun t!93759 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866))))) t!93759) tb!58167))

(declare-fun result!67468 () Bool)

(assert (= result!67468 result!67464))

(assert (=> d!262124 t!93759))

(declare-fun b_and!72953 () Bool)

(assert (= b_and!72941 (and (=> t!93759 result!67468) b_and!72953)))

(declare-fun tb!58169 () Bool)

(declare-fun t!93761 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866))))) t!93761) tb!58169))

(declare-fun result!67470 () Bool)

(assert (= result!67470 result!67464))

(assert (=> d!262124 t!93761))

(declare-fun b_and!72955 () Bool)

(assert (= b_and!72947 (and (=> t!93761 result!67470) b_and!72955)))

(declare-fun t!93763 () Bool)

(declare-fun tb!58171 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866))))) t!93763) tb!58171))

(declare-fun result!67472 () Bool)

(assert (= result!67472 result!67464))

(assert (=> d!262124 t!93763))

(declare-fun b_and!72957 () Bool)

(assert (= b_and!72945 (and (=> t!93763 result!67472) b_and!72957)))

(declare-fun m!1076093 () Bool)

(assert (=> d!262124 m!1076093))

(declare-fun m!1076095 () Bool)

(assert (=> d!262124 m!1076095))

(assert (=> b!841939 d!262124))

(declare-fun d!262126 () Bool)

(declare-fun c!137268 () Bool)

(assert (=> d!262126 (= c!137268 ((_ is Cons!9044) (t!93602 lt!318866)))))

(declare-fun e!554204 () List!9059)

(assert (=> d!262126 (= (printList!458 thiss!20117 (t!93602 lt!318866)) e!554204)))

(declare-fun b!842501 () Bool)

(assert (=> b!842501 (= e!554204 (++!2339 (list!3554 (charsOf!973 (h!14445 (t!93602 lt!318866)))) (printList!458 thiss!20117 (t!93602 (t!93602 lt!318866)))))))

(declare-fun b!842502 () Bool)

(assert (=> b!842502 (= e!554204 Nil!9043)))

(assert (= (and d!262126 c!137268) b!842501))

(assert (= (and d!262126 (not c!137268)) b!842502))

(declare-fun m!1076097 () Bool)

(assert (=> b!842501 m!1076097))

(assert (=> b!842501 m!1076097))

(declare-fun m!1076099 () Bool)

(assert (=> b!842501 m!1076099))

(declare-fun m!1076101 () Bool)

(assert (=> b!842501 m!1076101))

(assert (=> b!842501 m!1076099))

(assert (=> b!842501 m!1076101))

(declare-fun m!1076103 () Bool)

(assert (=> b!842501 m!1076103))

(assert (=> b!841939 d!262126))

(declare-fun bs!229967 () Bool)

(declare-fun d!262128 () Bool)

(assert (= bs!229967 (and d!262128 b!841773)))

(declare-fun lambda!25053 () Int)

(assert (=> bs!229967 (not (= lambda!25053 lambda!25004))))

(declare-fun bs!229968 () Bool)

(assert (= bs!229968 (and d!262128 d!262056)))

(assert (=> bs!229968 (= lambda!25053 lambda!25046)))

(declare-fun bs!229969 () Bool)

(assert (= bs!229969 (and d!262128 d!261822)))

(assert (=> bs!229969 (= lambda!25053 lambda!25023)))

(declare-fun bs!229970 () Bool)

(assert (= bs!229970 (and d!262128 d!261854)))

(assert (=> bs!229970 (= lambda!25053 lambda!25024)))

(declare-fun bs!229971 () Bool)

(assert (= bs!229971 (and d!262128 d!262102)))

(assert (=> bs!229971 (= lambda!25053 lambda!25052)))

(declare-fun bs!229972 () Bool)

(assert (= bs!229972 (and d!262128 d!261798)))

(assert (=> bs!229972 (= lambda!25053 lambda!25022)))

(declare-fun bs!229973 () Bool)

(assert (= bs!229973 (and d!262128 d!261978)))

(assert (=> bs!229973 (= lambda!25053 lambda!25038)))

(declare-fun bs!229974 () Bool)

(assert (= bs!229974 (and d!262128 d!262082)))

(assert (=> bs!229974 (= lambda!25053 lambda!25051)))

(declare-fun bs!229975 () Bool)

(assert (= bs!229975 (and d!262128 d!261758)))

(assert (=> bs!229975 (= lambda!25053 lambda!25018)))

(declare-fun b!842507 () Bool)

(declare-fun e!554209 () Bool)

(assert (=> b!842507 (= e!554209 true)))

(declare-fun b!842506 () Bool)

(declare-fun e!554208 () Bool)

(assert (=> b!842506 (= e!554208 e!554209)))

(declare-fun b!842505 () Bool)

(declare-fun e!554207 () Bool)

(assert (=> b!842505 (= e!554207 e!554208)))

(assert (=> d!262128 e!554207))

(assert (= b!842506 b!842507))

(assert (= b!842505 b!842506))

(assert (= (and d!262128 ((_ is Cons!9045) rules!2621)) b!842505))

(assert (=> b!842507 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25053))))

(assert (=> b!842507 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25053))))

(assert (=> d!262128 true))

(declare-fun lt!319094 () Bool)

(assert (=> d!262128 (= lt!319094 (forall!2111 (list!3553 (seqFromList!1518 lt!318783)) lambda!25053))))

(declare-fun e!554206 () Bool)

(assert (=> d!262128 (= lt!319094 e!554206)))

(declare-fun res!385159 () Bool)

(assert (=> d!262128 (=> res!385159 e!554206)))

(assert (=> d!262128 (= res!385159 (not ((_ is Cons!9044) (list!3553 (seqFromList!1518 lt!318783)))))))

(assert (=> d!262128 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262128 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (list!3553 (seqFromList!1518 lt!318783))) lt!319094)))

(declare-fun b!842503 () Bool)

(declare-fun e!554205 () Bool)

(assert (=> b!842503 (= e!554206 e!554205)))

(declare-fun res!385158 () Bool)

(assert (=> b!842503 (=> (not res!385158) (not e!554205))))

(assert (=> b!842503 (= res!385158 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (list!3553 (seqFromList!1518 lt!318783)))))))

(declare-fun b!842504 () Bool)

(assert (=> b!842504 (= e!554205 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 (list!3553 (seqFromList!1518 lt!318783)))))))

(assert (= (and d!262128 (not res!385159)) b!842503))

(assert (= (and b!842503 res!385158) b!842504))

(assert (=> d!262128 m!1074925))

(declare-fun m!1076105 () Bool)

(assert (=> d!262128 m!1076105))

(assert (=> d!262128 m!1074735))

(declare-fun m!1076107 () Bool)

(assert (=> b!842503 m!1076107))

(declare-fun m!1076109 () Bool)

(assert (=> b!842504 m!1076109))

(assert (=> b!841896 d!262128))

(declare-fun d!262130 () Bool)

(declare-fun list!3557 (Conc!3001) List!9060)

(assert (=> d!262130 (= (list!3553 (seqFromList!1518 lt!318783)) (list!3557 (c!137166 (seqFromList!1518 lt!318783))))))

(declare-fun bs!229976 () Bool)

(assert (= bs!229976 d!262130))

(declare-fun m!1076111 () Bool)

(assert (=> bs!229976 m!1076111))

(assert (=> b!841896 d!262130))

(declare-fun bs!229977 () Bool)

(declare-fun d!262132 () Bool)

(assert (= bs!229977 (and d!262132 b!841773)))

(declare-fun lambda!25054 () Int)

(assert (=> bs!229977 (not (= lambda!25054 lambda!25004))))

(declare-fun bs!229978 () Bool)

(assert (= bs!229978 (and d!262132 d!262056)))

(assert (=> bs!229978 (= lambda!25054 lambda!25046)))

(declare-fun bs!229979 () Bool)

(assert (= bs!229979 (and d!262132 d!262128)))

(assert (=> bs!229979 (= lambda!25054 lambda!25053)))

(declare-fun bs!229980 () Bool)

(assert (= bs!229980 (and d!262132 d!261822)))

(assert (=> bs!229980 (= lambda!25054 lambda!25023)))

(declare-fun bs!229981 () Bool)

(assert (= bs!229981 (and d!262132 d!261854)))

(assert (=> bs!229981 (= lambda!25054 lambda!25024)))

(declare-fun bs!229982 () Bool)

(assert (= bs!229982 (and d!262132 d!262102)))

(assert (=> bs!229982 (= lambda!25054 lambda!25052)))

(declare-fun bs!229983 () Bool)

(assert (= bs!229983 (and d!262132 d!261798)))

(assert (=> bs!229983 (= lambda!25054 lambda!25022)))

(declare-fun bs!229984 () Bool)

(assert (= bs!229984 (and d!262132 d!261978)))

(assert (=> bs!229984 (= lambda!25054 lambda!25038)))

(declare-fun bs!229985 () Bool)

(assert (= bs!229985 (and d!262132 d!262082)))

(assert (=> bs!229985 (= lambda!25054 lambda!25051)))

(declare-fun bs!229986 () Bool)

(assert (= bs!229986 (and d!262132 d!261758)))

(assert (=> bs!229986 (= lambda!25054 lambda!25018)))

(declare-fun b!842512 () Bool)

(declare-fun e!554214 () Bool)

(assert (=> b!842512 (= e!554214 true)))

(declare-fun b!842511 () Bool)

(declare-fun e!554213 () Bool)

(assert (=> b!842511 (= e!554213 e!554214)))

(declare-fun b!842510 () Bool)

(declare-fun e!554212 () Bool)

(assert (=> b!842510 (= e!554212 e!554213)))

(assert (=> d!262132 e!554212))

(assert (= b!842511 b!842512))

(assert (= b!842510 b!842511))

(assert (= (and d!262132 ((_ is Cons!9045) rules!2621)) b!842510))

(assert (=> b!842512 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25054))))

(assert (=> b!842512 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25054))))

(assert (=> d!262132 true))

(declare-fun lt!319095 () Bool)

(assert (=> d!262132 (= lt!319095 (forall!2111 (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297) lambda!25054))))

(declare-fun e!554211 () Bool)

(assert (=> d!262132 (= lt!319095 e!554211)))

(declare-fun res!385161 () Bool)

(assert (=> d!262132 (=> res!385161 e!554211)))

(assert (=> d!262132 (= res!385161 (not ((_ is Cons!9044) (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!262132 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262132 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297)) lt!319095)))

(declare-fun b!842508 () Bool)

(declare-fun e!554210 () Bool)

(assert (=> b!842508 (= e!554211 e!554210)))

(declare-fun res!385160 () Bool)

(assert (=> b!842508 (=> (not res!385160) (not e!554210))))

(assert (=> b!842508 (= res!385160 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!842509 () Bool)

(assert (=> b!842509 (= e!554210 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!262132 (not res!385161)) b!842508))

(assert (= (and b!842508 res!385160) b!842509))

(assert (=> d!262132 m!1074759))

(declare-fun m!1076113 () Bool)

(assert (=> d!262132 m!1076113))

(assert (=> d!262132 m!1074735))

(declare-fun m!1076115 () Bool)

(assert (=> b!842508 m!1076115))

(declare-fun m!1076117 () Bool)

(assert (=> b!842509 m!1076117))

(assert (=> d!261826 d!262132))

(assert (=> d!261826 d!261824))

(declare-fun d!262134 () Bool)

(assert (=> d!262134 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!262134 true))

(declare-fun _$32!291 () Unit!13479)

(assert (=> d!262134 (= (choose!4960 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!291)))

(declare-fun bs!229987 () Bool)

(assert (= bs!229987 d!262134))

(assert (=> bs!229987 m!1074759))

(assert (=> bs!229987 m!1074759))

(assert (=> bs!229987 m!1075141))

(assert (=> d!261826 d!262134))

(assert (=> d!261826 d!261754))

(declare-fun d!262136 () Bool)

(declare-fun lt!319096 () Int)

(assert (=> d!262136 (>= lt!319096 0)))

(declare-fun e!554215 () Int)

(assert (=> d!262136 (= lt!319096 e!554215)))

(declare-fun c!137269 () Bool)

(assert (=> d!262136 (= c!137269 ((_ is Nil!9043) (originalCharacters!2252 (h!14445 l!5107))))))

(assert (=> d!262136 (= (size!7550 (originalCharacters!2252 (h!14445 l!5107))) lt!319096)))

(declare-fun b!842513 () Bool)

(assert (=> b!842513 (= e!554215 0)))

(declare-fun b!842514 () Bool)

(assert (=> b!842514 (= e!554215 (+ 1 (size!7550 (t!93601 (originalCharacters!2252 (h!14445 l!5107))))))))

(assert (= (and d!262136 c!137269) b!842513))

(assert (= (and d!262136 (not c!137269)) b!842514))

(declare-fun m!1076119 () Bool)

(assert (=> b!842514 m!1076119))

(assert (=> b!842006 d!262136))

(declare-fun lt!319097 () Bool)

(declare-fun d!262138 () Bool)

(assert (=> d!262138 (= lt!319097 (isEmpty!5328 (list!3554 (_2!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)))))))))

(assert (=> d!262138 (= lt!319097 (isEmpty!5330 (c!137165 (_2!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)))))))))

(assert (=> d!262138 (= (isEmpty!5329 (_2!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297))))) lt!319097)))

(declare-fun bs!229988 () Bool)

(assert (= bs!229988 d!262138))

(declare-fun m!1076121 () Bool)

(assert (=> bs!229988 m!1076121))

(assert (=> bs!229988 m!1076121))

(declare-fun m!1076123 () Bool)

(assert (=> bs!229988 m!1076123))

(declare-fun m!1076125 () Bool)

(assert (=> bs!229988 m!1076125))

(assert (=> b!842158 d!262138))

(declare-fun d!262140 () Bool)

(declare-fun e!554261 () Bool)

(assert (=> d!262140 e!554261))

(declare-fun res!385194 () Bool)

(assert (=> d!262140 (=> (not res!385194) (not e!554261))))

(declare-fun e!554259 () Bool)

(assert (=> d!262140 (= res!385194 e!554259)))

(declare-fun c!137277 () Bool)

(declare-fun lt!319151 () tuple2!10328)

(assert (=> d!262140 (= c!137277 (> (size!7551 (_1!5990 lt!319151)) 0))))

(declare-fun lexTailRecV2!284 (LexerInterface!1498 List!9061 BalanceConc!6014 BalanceConc!6014 BalanceConc!6014 BalanceConc!6016) tuple2!10328)

(assert (=> d!262140 (= lt!319151 (lexTailRecV2!284 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)) (BalanceConc!6015 Empty!3000) (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)) (BalanceConc!6017 Empty!3001)))))

(assert (=> d!262140 (= (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297))) lt!319151)))

(declare-fun b!842569 () Bool)

(declare-datatypes ((tuple2!10330 0))(
  ( (tuple2!10331 (_1!5991 List!9060) (_2!5991 List!9059)) )
))
(declare-fun lexList!377 (LexerInterface!1498 List!9061 List!9059) tuple2!10330)

(assert (=> b!842569 (= e!554261 (= (list!3554 (_2!5990 lt!319151)) (_2!5991 (lexList!377 thiss!20117 rules!2621 (list!3554 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)))))))))

(declare-fun b!842570 () Bool)

(declare-fun e!554260 () Bool)

(declare-fun isEmpty!5332 (BalanceConc!6016) Bool)

(assert (=> b!842570 (= e!554260 (not (isEmpty!5332 (_1!5990 lt!319151))))))

(declare-fun b!842571 () Bool)

(assert (=> b!842571 (= e!554259 (= (_2!5990 lt!319151) (print!539 thiss!20117 (singletonSeq!509 separatorToken!297))))))

(declare-fun b!842572 () Bool)

(assert (=> b!842572 (= e!554259 e!554260)))

(declare-fun res!385192 () Bool)

(assert (=> b!842572 (= res!385192 (< (size!7548 (_2!5990 lt!319151)) (size!7548 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)))))))

(assert (=> b!842572 (=> (not res!385192) (not e!554260))))

(declare-fun b!842573 () Bool)

(declare-fun res!385193 () Bool)

(assert (=> b!842573 (=> (not res!385193) (not e!554261))))

(assert (=> b!842573 (= res!385193 (= (list!3553 (_1!5990 lt!319151)) (_1!5991 (lexList!377 thiss!20117 rules!2621 (list!3554 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)))))))))

(assert (= (and d!262140 c!137277) b!842572))

(assert (= (and d!262140 (not c!137277)) b!842571))

(assert (= (and b!842572 res!385192) b!842570))

(assert (= (and d!262140 res!385194) b!842573))

(assert (= (and b!842573 res!385193) b!842569))

(declare-fun m!1076261 () Bool)

(assert (=> d!262140 m!1076261))

(assert (=> d!262140 m!1075261))

(assert (=> d!262140 m!1075261))

(declare-fun m!1076263 () Bool)

(assert (=> d!262140 m!1076263))

(declare-fun m!1076265 () Bool)

(assert (=> b!842570 m!1076265))

(declare-fun m!1076267 () Bool)

(assert (=> b!842569 m!1076267))

(assert (=> b!842569 m!1075261))

(declare-fun m!1076269 () Bool)

(assert (=> b!842569 m!1076269))

(assert (=> b!842569 m!1076269))

(declare-fun m!1076271 () Bool)

(assert (=> b!842569 m!1076271))

(declare-fun m!1076273 () Bool)

(assert (=> b!842573 m!1076273))

(assert (=> b!842573 m!1075261))

(assert (=> b!842573 m!1076269))

(assert (=> b!842573 m!1076269))

(assert (=> b!842573 m!1076271))

(declare-fun m!1076275 () Bool)

(assert (=> b!842572 m!1076275))

(assert (=> b!842572 m!1075261))

(declare-fun m!1076277 () Bool)

(assert (=> b!842572 m!1076277))

(assert (=> b!842158 d!262140))

(declare-fun d!262182 () Bool)

(declare-fun lt!319159 () BalanceConc!6014)

(assert (=> d!262182 (= (list!3554 lt!319159) (printList!458 thiss!20117 (list!3553 (singletonSeq!509 separatorToken!297))))))

(declare-fun printTailRec!459 (LexerInterface!1498 BalanceConc!6016 Int BalanceConc!6014) BalanceConc!6014)

(assert (=> d!262182 (= lt!319159 (printTailRec!459 thiss!20117 (singletonSeq!509 separatorToken!297) 0 (BalanceConc!6015 Empty!3000)))))

(assert (=> d!262182 (= (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)) lt!319159)))

(declare-fun bs!230014 () Bool)

(assert (= bs!230014 d!262182))

(declare-fun m!1076329 () Bool)

(assert (=> bs!230014 m!1076329))

(assert (=> bs!230014 m!1075259))

(assert (=> bs!230014 m!1075263))

(assert (=> bs!230014 m!1075263))

(declare-fun m!1076341 () Bool)

(assert (=> bs!230014 m!1076341))

(assert (=> bs!230014 m!1075259))

(declare-fun m!1076343 () Bool)

(assert (=> bs!230014 m!1076343))

(assert (=> b!842158 d!262182))

(declare-fun d!262194 () Bool)

(declare-fun e!554282 () Bool)

(assert (=> d!262194 e!554282))

(declare-fun res!385221 () Bool)

(assert (=> d!262194 (=> (not res!385221) (not e!554282))))

(declare-fun lt!319174 () BalanceConc!6016)

(assert (=> d!262194 (= res!385221 (= (list!3553 lt!319174) (Cons!9044 separatorToken!297 Nil!9044)))))

(declare-fun singleton!241 (Token!3058) BalanceConc!6016)

(assert (=> d!262194 (= lt!319174 (singleton!241 separatorToken!297))))

(assert (=> d!262194 (= (singletonSeq!509 separatorToken!297) lt!319174)))

(declare-fun b!842616 () Bool)

(assert (=> b!842616 (= e!554282 (isBalanced!812 (c!137166 lt!319174)))))

(assert (= (and d!262194 res!385221) b!842616))

(declare-fun m!1076367 () Bool)

(assert (=> d!262194 m!1076367))

(declare-fun m!1076369 () Bool)

(assert (=> d!262194 m!1076369))

(declare-fun m!1076371 () Bool)

(assert (=> b!842616 m!1076371))

(assert (=> b!842158 d!262194))

(assert (=> b!841933 d!262050))

(declare-fun b!842617 () Bool)

(declare-fun e!554284 () List!9059)

(assert (=> b!842617 (= e!554284 lt!318868)))

(declare-fun b!842618 () Bool)

(assert (=> b!842618 (= e!554284 (Cons!9043 (h!14444 lt!318870) (++!2339 (t!93601 lt!318870) lt!318868)))))

(declare-fun d!262210 () Bool)

(declare-fun e!554283 () Bool)

(assert (=> d!262210 e!554283))

(declare-fun res!385222 () Bool)

(assert (=> d!262210 (=> (not res!385222) (not e!554283))))

(declare-fun lt!319175 () List!9059)

(assert (=> d!262210 (= res!385222 (= (content!1334 lt!319175) ((_ map or) (content!1334 lt!318870) (content!1334 lt!318868))))))

(assert (=> d!262210 (= lt!319175 e!554284)))

(declare-fun c!137289 () Bool)

(assert (=> d!262210 (= c!137289 ((_ is Nil!9043) lt!318870))))

(assert (=> d!262210 (= (++!2339 lt!318870 lt!318868) lt!319175)))

(declare-fun b!842619 () Bool)

(declare-fun res!385223 () Bool)

(assert (=> b!842619 (=> (not res!385223) (not e!554283))))

(assert (=> b!842619 (= res!385223 (= (size!7550 lt!319175) (+ (size!7550 lt!318870) (size!7550 lt!318868))))))

(declare-fun b!842620 () Bool)

(assert (=> b!842620 (= e!554283 (or (not (= lt!318868 Nil!9043)) (= lt!319175 lt!318870)))))

(assert (= (and d!262210 c!137289) b!842617))

(assert (= (and d!262210 (not c!137289)) b!842618))

(assert (= (and d!262210 res!385222) b!842619))

(assert (= (and b!842619 res!385223) b!842620))

(declare-fun m!1076375 () Bool)

(assert (=> b!842618 m!1076375))

(declare-fun m!1076379 () Bool)

(assert (=> d!262210 m!1076379))

(declare-fun m!1076383 () Bool)

(assert (=> d!262210 m!1076383))

(declare-fun m!1076385 () Bool)

(assert (=> d!262210 m!1076385))

(declare-fun m!1076387 () Bool)

(assert (=> b!842619 m!1076387))

(declare-fun m!1076389 () Bool)

(assert (=> b!842619 m!1076389))

(declare-fun m!1076391 () Bool)

(assert (=> b!842619 m!1076391))

(assert (=> b!841933 d!262210))

(declare-fun d!262212 () Bool)

(declare-fun lt!319176 () BalanceConc!6014)

(assert (=> d!262212 (= (list!3554 lt!319176) (originalCharacters!2252 separatorToken!297))))

(assert (=> d!262212 (= lt!319176 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))))

(assert (=> d!262212 (= (charsOf!973 separatorToken!297) lt!319176)))

(declare-fun b_lambda!27747 () Bool)

(assert (=> (not b_lambda!27747) (not d!262212)))

(assert (=> d!262212 t!93632))

(declare-fun b_and!73009 () Bool)

(assert (= b_and!72955 (and (=> t!93632 result!67332) b_and!73009)))

(assert (=> d!262212 t!93657))

(declare-fun b_and!73011 () Bool)

(assert (= b_and!72953 (and (=> t!93657 result!67370) b_and!73011)))

(assert (=> d!262212 t!93630))

(declare-fun b_and!73013 () Bool)

(assert (= b_and!72957 (and (=> t!93630 result!67330) b_and!73013)))

(assert (=> d!262212 t!93634))

(declare-fun b_and!73015 () Bool)

(assert (= b_and!72949 (and (=> t!93634 result!67334) b_and!73015)))

(assert (=> d!262212 t!93653))

(declare-fun b_and!73017 () Bool)

(assert (= b_and!72951 (and (=> t!93653 result!67362) b_and!73017)))

(declare-fun m!1076415 () Bool)

(assert (=> d!262212 m!1076415))

(assert (=> d!262212 m!1075161))

(assert (=> b!841933 d!262212))

(declare-fun d!262214 () Bool)

(assert (=> d!262214 (= (++!2339 (++!2339 lt!318870 lt!318868) lt!318869) (++!2339 lt!318870 (++!2339 lt!318868 lt!318869)))))

(declare-fun lt!319179 () Unit!13479)

(declare-fun choose!4965 (List!9059 List!9059 List!9059) Unit!13479)

(assert (=> d!262214 (= lt!319179 (choose!4965 lt!318870 lt!318868 lt!318869))))

(assert (=> d!262214 (= (lemmaConcatAssociativity!733 lt!318870 lt!318868 lt!318869) lt!319179)))

(declare-fun bs!230019 () Bool)

(assert (= bs!230019 d!262214))

(assert (=> bs!230019 m!1074953))

(assert (=> bs!230019 m!1074955))

(assert (=> bs!230019 m!1074953))

(assert (=> bs!230019 m!1074959))

(declare-fun m!1076439 () Bool)

(assert (=> bs!230019 m!1076439))

(assert (=> bs!230019 m!1074959))

(assert (=> bs!230019 m!1074967))

(assert (=> b!841933 d!262214))

(declare-fun b!842624 () Bool)

(declare-fun e!554288 () List!9059)

(assert (=> b!842624 (= e!554288 lt!318869)))

(declare-fun b!842625 () Bool)

(assert (=> b!842625 (= e!554288 (Cons!9043 (h!14444 lt!318868) (++!2339 (t!93601 lt!318868) lt!318869)))))

(declare-fun d!262224 () Bool)

(declare-fun e!554287 () Bool)

(assert (=> d!262224 e!554287))

(declare-fun res!385225 () Bool)

(assert (=> d!262224 (=> (not res!385225) (not e!554287))))

(declare-fun lt!319180 () List!9059)

(assert (=> d!262224 (= res!385225 (= (content!1334 lt!319180) ((_ map or) (content!1334 lt!318868) (content!1334 lt!318869))))))

(assert (=> d!262224 (= lt!319180 e!554288)))

(declare-fun c!137291 () Bool)

(assert (=> d!262224 (= c!137291 ((_ is Nil!9043) lt!318868))))

(assert (=> d!262224 (= (++!2339 lt!318868 lt!318869) lt!319180)))

(declare-fun b!842626 () Bool)

(declare-fun res!385226 () Bool)

(assert (=> b!842626 (=> (not res!385226) (not e!554287))))

(assert (=> b!842626 (= res!385226 (= (size!7550 lt!319180) (+ (size!7550 lt!318868) (size!7550 lt!318869))))))

(declare-fun b!842627 () Bool)

(assert (=> b!842627 (= e!554287 (or (not (= lt!318869 Nil!9043)) (= lt!319180 lt!318868)))))

(assert (= (and d!262224 c!137291) b!842624))

(assert (= (and d!262224 (not c!137291)) b!842625))

(assert (= (and d!262224 res!385225) b!842626))

(assert (= (and b!842626 res!385226) b!842627))

(declare-fun m!1076449 () Bool)

(assert (=> b!842625 m!1076449))

(declare-fun m!1076451 () Bool)

(assert (=> d!262224 m!1076451))

(assert (=> d!262224 m!1076385))

(declare-fun m!1076453 () Bool)

(assert (=> d!262224 m!1076453))

(declare-fun m!1076455 () Bool)

(assert (=> b!842626 m!1076455))

(assert (=> b!842626 m!1076391))

(declare-fun m!1076457 () Bool)

(assert (=> b!842626 m!1076457))

(assert (=> b!841933 d!262224))

(assert (=> b!841933 d!262054))

(assert (=> b!841933 d!262052))

(declare-fun b!842630 () Bool)

(declare-fun e!554291 () List!9059)

(assert (=> b!842630 (= e!554291 lt!318869)))

(declare-fun b!842631 () Bool)

(assert (=> b!842631 (= e!554291 (Cons!9043 (h!14444 (++!2339 lt!318870 lt!318868)) (++!2339 (t!93601 (++!2339 lt!318870 lt!318868)) lt!318869)))))

(declare-fun d!262228 () Bool)

(declare-fun e!554290 () Bool)

(assert (=> d!262228 e!554290))

(declare-fun res!385227 () Bool)

(assert (=> d!262228 (=> (not res!385227) (not e!554290))))

(declare-fun lt!319181 () List!9059)

(assert (=> d!262228 (= res!385227 (= (content!1334 lt!319181) ((_ map or) (content!1334 (++!2339 lt!318870 lt!318868)) (content!1334 lt!318869))))))

(assert (=> d!262228 (= lt!319181 e!554291)))

(declare-fun c!137293 () Bool)

(assert (=> d!262228 (= c!137293 ((_ is Nil!9043) (++!2339 lt!318870 lt!318868)))))

(assert (=> d!262228 (= (++!2339 (++!2339 lt!318870 lt!318868) lt!318869) lt!319181)))

(declare-fun b!842632 () Bool)

(declare-fun res!385228 () Bool)

(assert (=> b!842632 (=> (not res!385228) (not e!554290))))

(assert (=> b!842632 (= res!385228 (= (size!7550 lt!319181) (+ (size!7550 (++!2339 lt!318870 lt!318868)) (size!7550 lt!318869))))))

(declare-fun b!842633 () Bool)

(assert (=> b!842633 (= e!554290 (or (not (= lt!318869 Nil!9043)) (= lt!319181 (++!2339 lt!318870 lt!318868))))))

(assert (= (and d!262228 c!137293) b!842630))

(assert (= (and d!262228 (not c!137293)) b!842631))

(assert (= (and d!262228 res!385227) b!842632))

(assert (= (and b!842632 res!385228) b!842633))

(declare-fun m!1076463 () Bool)

(assert (=> b!842631 m!1076463))

(declare-fun m!1076465 () Bool)

(assert (=> d!262228 m!1076465))

(assert (=> d!262228 m!1074959))

(declare-fun m!1076467 () Bool)

(assert (=> d!262228 m!1076467))

(assert (=> d!262228 m!1076453))

(declare-fun m!1076469 () Bool)

(assert (=> b!842632 m!1076469))

(assert (=> b!842632 m!1074959))

(declare-fun m!1076471 () Bool)

(assert (=> b!842632 m!1076471))

(assert (=> b!842632 m!1076457))

(assert (=> b!841933 d!262228))

(declare-fun d!262232 () Bool)

(declare-fun lt!319182 () BalanceConc!6014)

(assert (=> d!262232 (= (list!3554 lt!319182) (originalCharacters!2252 (h!14445 lt!318778)))))

(assert (=> d!262232 (= lt!319182 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778)))) (value!55035 (h!14445 lt!318778))))))

(assert (=> d!262232 (= (charsOf!973 (h!14445 lt!318778)) lt!319182)))

(declare-fun b_lambda!27751 () Bool)

(assert (=> (not b_lambda!27751) (not d!262232)))

(declare-fun tb!58213 () Bool)

(declare-fun t!93807 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778))))) t!93807) tb!58213))

(declare-fun b!842636 () Bool)

(declare-fun e!554294 () Bool)

(declare-fun tp!264989 () Bool)

(assert (=> b!842636 (= e!554294 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778)))) (value!55035 (h!14445 lt!318778))))) tp!264989))))

(declare-fun result!67514 () Bool)

(assert (=> tb!58213 (= result!67514 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778)))) (value!55035 (h!14445 lt!318778)))) e!554294))))

(assert (= tb!58213 b!842636))

(declare-fun m!1076477 () Bool)

(assert (=> b!842636 m!1076477))

(declare-fun m!1076479 () Bool)

(assert (=> tb!58213 m!1076479))

(assert (=> d!262232 t!93807))

(declare-fun b_and!73019 () Bool)

(assert (= b_and!73013 (and (=> t!93807 result!67514) b_and!73019)))

(declare-fun t!93809 () Bool)

(declare-fun tb!58215 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778))))) t!93809) tb!58215))

(declare-fun result!67516 () Bool)

(assert (= result!67516 result!67514))

(assert (=> d!262232 t!93809))

(declare-fun b_and!73021 () Bool)

(assert (= b_and!73011 (and (=> t!93809 result!67516) b_and!73021)))

(declare-fun tb!58217 () Bool)

(declare-fun t!93811 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778))))) t!93811) tb!58217))

(declare-fun result!67518 () Bool)

(assert (= result!67518 result!67514))

(assert (=> d!262232 t!93811))

(declare-fun b_and!73023 () Bool)

(assert (= b_and!73009 (and (=> t!93811 result!67518) b_and!73023)))

(declare-fun tb!58219 () Bool)

(declare-fun t!93813 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778))))) t!93813) tb!58219))

(declare-fun result!67520 () Bool)

(assert (= result!67520 result!67514))

(assert (=> d!262232 t!93813))

(declare-fun b_and!73025 () Bool)

(assert (= b_and!73017 (and (=> t!93813 result!67520) b_and!73025)))

(declare-fun tb!58221 () Bool)

(declare-fun t!93815 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778))))) t!93815) tb!58221))

(declare-fun result!67522 () Bool)

(assert (= result!67522 result!67514))

(assert (=> d!262232 t!93815))

(declare-fun b_and!73027 () Bool)

(assert (= b_and!73015 (and (=> t!93815 result!67522) b_and!73027)))

(declare-fun m!1076481 () Bool)

(assert (=> d!262232 m!1076481))

(declare-fun m!1076483 () Bool)

(assert (=> d!262232 m!1076483))

(assert (=> b!841933 d!262232))

(declare-fun d!262236 () Bool)

(assert (=> d!262236 (= (list!3554 (charsOf!973 (h!14445 lt!318778))) (list!3556 (c!137165 (charsOf!973 (h!14445 lt!318778)))))))

(declare-fun bs!230020 () Bool)

(assert (= bs!230020 d!262236))

(declare-fun m!1076485 () Bool)

(assert (=> bs!230020 m!1076485))

(assert (=> b!841933 d!262236))

(declare-fun d!262238 () Bool)

(assert (=> d!262238 (= (list!3554 (charsOf!973 separatorToken!297)) (list!3556 (c!137165 (charsOf!973 separatorToken!297))))))

(declare-fun bs!230021 () Bool)

(assert (= bs!230021 d!262238))

(declare-fun m!1076487 () Bool)

(assert (=> bs!230021 m!1076487))

(assert (=> b!841933 d!262238))

(declare-fun d!262240 () Bool)

(declare-fun c!137294 () Bool)

(assert (=> d!262240 (= c!137294 ((_ is Cons!9044) (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297)))))

(declare-fun e!554295 () List!9059)

(assert (=> d!262240 (= (printList!458 thiss!20117 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297)) e!554295)))

(declare-fun b!842637 () Bool)

(assert (=> b!842637 (= e!554295 (++!2339 (list!3554 (charsOf!973 (h!14445 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297)))) (printList!458 thiss!20117 (t!93602 (withSeparatorTokenList!28 thiss!20117 (t!93602 lt!318778) separatorToken!297)))))))

(declare-fun b!842638 () Bool)

(assert (=> b!842638 (= e!554295 Nil!9043)))

(assert (= (and d!262240 c!137294) b!842637))

(assert (= (and d!262240 (not c!137294)) b!842638))

(declare-fun m!1076489 () Bool)

(assert (=> b!842637 m!1076489))

(assert (=> b!842637 m!1076489))

(declare-fun m!1076491 () Bool)

(assert (=> b!842637 m!1076491))

(declare-fun m!1076493 () Bool)

(assert (=> b!842637 m!1076493))

(assert (=> b!842637 m!1076491))

(assert (=> b!842637 m!1076493))

(declare-fun m!1076495 () Bool)

(assert (=> b!842637 m!1076495))

(assert (=> b!841933 d!262240))

(declare-fun b!842639 () Bool)

(declare-fun e!554297 () List!9059)

(assert (=> b!842639 (= e!554297 (++!2339 lt!318868 lt!318869))))

(declare-fun b!842640 () Bool)

(assert (=> b!842640 (= e!554297 (Cons!9043 (h!14444 lt!318870) (++!2339 (t!93601 lt!318870) (++!2339 lt!318868 lt!318869))))))

(declare-fun d!262242 () Bool)

(declare-fun e!554296 () Bool)

(assert (=> d!262242 e!554296))

(declare-fun res!385231 () Bool)

(assert (=> d!262242 (=> (not res!385231) (not e!554296))))

(declare-fun lt!319183 () List!9059)

(assert (=> d!262242 (= res!385231 (= (content!1334 lt!319183) ((_ map or) (content!1334 lt!318870) (content!1334 (++!2339 lt!318868 lt!318869)))))))

(assert (=> d!262242 (= lt!319183 e!554297)))

(declare-fun c!137295 () Bool)

(assert (=> d!262242 (= c!137295 ((_ is Nil!9043) lt!318870))))

(assert (=> d!262242 (= (++!2339 lt!318870 (++!2339 lt!318868 lt!318869)) lt!319183)))

(declare-fun b!842641 () Bool)

(declare-fun res!385232 () Bool)

(assert (=> b!842641 (=> (not res!385232) (not e!554296))))

(assert (=> b!842641 (= res!385232 (= (size!7550 lt!319183) (+ (size!7550 lt!318870) (size!7550 (++!2339 lt!318868 lt!318869)))))))

(declare-fun b!842642 () Bool)

(assert (=> b!842642 (= e!554296 (or (not (= (++!2339 lt!318868 lt!318869) Nil!9043)) (= lt!319183 lt!318870)))))

(assert (= (and d!262242 c!137295) b!842639))

(assert (= (and d!262242 (not c!137295)) b!842640))

(assert (= (and d!262242 res!385231) b!842641))

(assert (= (and b!842641 res!385232) b!842642))

(assert (=> b!842640 m!1074953))

(declare-fun m!1076497 () Bool)

(assert (=> b!842640 m!1076497))

(declare-fun m!1076499 () Bool)

(assert (=> d!262242 m!1076499))

(assert (=> d!262242 m!1076383))

(assert (=> d!262242 m!1074953))

(declare-fun m!1076501 () Bool)

(assert (=> d!262242 m!1076501))

(declare-fun m!1076503 () Bool)

(assert (=> b!842641 m!1076503))

(assert (=> b!842641 m!1076389))

(assert (=> b!842641 m!1074953))

(declare-fun m!1076505 () Bool)

(assert (=> b!842641 m!1076505))

(assert (=> b!841933 d!262242))

(declare-fun d!262244 () Bool)

(declare-fun c!137297 () Bool)

(assert (=> d!262244 (= c!137297 ((_ is Node!3000) (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))))))

(declare-fun e!554298 () Bool)

(assert (=> d!262244 (= (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))) e!554298)))

(declare-fun b!842647 () Bool)

(assert (=> b!842647 (= e!554298 (inv!11521 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))))))

(declare-fun b!842648 () Bool)

(declare-fun e!554300 () Bool)

(assert (=> b!842648 (= e!554298 e!554300)))

(declare-fun res!385233 () Bool)

(assert (=> b!842648 (= res!385233 (not ((_ is Leaf!4436) (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))))))))

(assert (=> b!842648 (=> res!385233 e!554300)))

(declare-fun b!842649 () Bool)

(assert (=> b!842649 (= e!554300 (inv!11522 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))))))

(assert (= (and d!262244 c!137297) b!842647))

(assert (= (and d!262244 (not c!137297)) b!842648))

(assert (= (and b!842648 (not res!385233)) b!842649))

(declare-fun m!1076507 () Bool)

(assert (=> b!842647 m!1076507))

(declare-fun m!1076509 () Bool)

(assert (=> b!842649 m!1076509))

(assert (=> b!842039 d!262244))

(declare-fun d!262246 () Bool)

(declare-fun res!385237 () Bool)

(declare-fun e!554305 () Bool)

(assert (=> d!262246 (=> res!385237 e!554305)))

(assert (=> d!262246 (= res!385237 (or (not ((_ is Cons!9044) (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))) (not ((_ is Cons!9044) (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))))))

(assert (=> d!262246 (= (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297) rules!2621) e!554305)))

(declare-fun b!842652 () Bool)

(declare-fun e!554304 () Bool)

(assert (=> b!842652 (= e!554305 e!554304)))

(declare-fun res!385236 () Bool)

(assert (=> b!842652 (=> (not res!385236) (not e!554304))))

(assert (=> b!842652 (= res!385236 (separableTokensPredicate!38 thiss!20117 (h!14445 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297)) (h!14445 (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))) rules!2621))))

(declare-fun lt!319188 () Unit!13479)

(declare-fun Unit!13493 () Unit!13479)

(assert (=> b!842652 (= lt!319188 Unit!13493)))

(assert (=> b!842652 (> (size!7548 (charsOf!973 (h!14445 (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))) 0)))

(declare-fun lt!319189 () Unit!13479)

(declare-fun Unit!13494 () Unit!13479)

(assert (=> b!842652 (= lt!319189 Unit!13494)))

(assert (=> b!842652 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))))

(declare-fun lt!319190 () Unit!13479)

(declare-fun Unit!13495 () Unit!13479)

(assert (=> b!842652 (= lt!319190 Unit!13495)))

(assert (=> b!842652 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297)))))

(declare-fun lt!319184 () Unit!13479)

(declare-fun lt!319186 () Unit!13479)

(assert (=> b!842652 (= lt!319184 lt!319186)))

(assert (=> b!842652 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))))

(assert (=> b!842652 (= lt!319186 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297) (h!14445 (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297)))))))

(declare-fun lt!319187 () Unit!13479)

(declare-fun lt!319185 () Unit!13479)

(assert (=> b!842652 (= lt!319187 lt!319185)))

(assert (=> b!842652 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297)))))

(assert (=> b!842652 (= lt!319185 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297) (h!14445 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))))

(declare-fun b!842653 () Bool)

(assert (=> b!842653 (= e!554304 (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 (Cons!9044 (h!14445 (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))) (t!93602 (t!93602 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297)))) rules!2621))))

(assert (= (and d!262246 (not res!385237)) b!842652))

(assert (= (and b!842652 res!385236) b!842653))

(assert (=> b!842652 m!1074745))

(declare-fun m!1076511 () Bool)

(assert (=> b!842652 m!1076511))

(declare-fun m!1076513 () Bool)

(assert (=> b!842652 m!1076513))

(assert (=> b!842652 m!1074745))

(declare-fun m!1076515 () Bool)

(assert (=> b!842652 m!1076515))

(assert (=> b!842652 m!1075621))

(declare-fun m!1076517 () Bool)

(assert (=> b!842652 m!1076517))

(declare-fun m!1076519 () Bool)

(assert (=> b!842652 m!1076519))

(assert (=> b!842652 m!1076519))

(declare-fun m!1076523 () Bool)

(assert (=> b!842652 m!1076523))

(declare-fun m!1076527 () Bool)

(assert (=> b!842653 m!1076527))

(assert (=> b!842147 d!262246))

(assert (=> b!842147 d!261786))

(assert (=> b!842147 d!261978))

(assert (=> b!842147 d!261868))

(declare-fun d!262250 () Bool)

(declare-fun c!137300 () Bool)

(assert (=> d!262250 (= c!137300 ((_ is IntegerValue!5286) (value!55035 (h!14445 (t!93602 l!5107)))))))

(declare-fun e!554310 () Bool)

(assert (=> d!262250 (= (inv!21 (value!55035 (h!14445 (t!93602 l!5107)))) e!554310)))

(declare-fun b!842659 () Bool)

(assert (=> b!842659 (= e!554310 (inv!16 (value!55035 (h!14445 (t!93602 l!5107)))))))

(declare-fun b!842660 () Bool)

(declare-fun e!554311 () Bool)

(assert (=> b!842660 (= e!554310 e!554311)))

(declare-fun c!137301 () Bool)

(assert (=> b!842660 (= c!137301 ((_ is IntegerValue!5287) (value!55035 (h!14445 (t!93602 l!5107)))))))

(declare-fun b!842661 () Bool)

(assert (=> b!842661 (= e!554311 (inv!17 (value!55035 (h!14445 (t!93602 l!5107)))))))

(declare-fun b!842662 () Bool)

(declare-fun e!554312 () Bool)

(assert (=> b!842662 (= e!554312 (inv!15 (value!55035 (h!14445 (t!93602 l!5107)))))))

(declare-fun b!842663 () Bool)

(declare-fun res!385241 () Bool)

(assert (=> b!842663 (=> res!385241 e!554312)))

(assert (=> b!842663 (= res!385241 (not ((_ is IntegerValue!5288) (value!55035 (h!14445 (t!93602 l!5107))))))))

(assert (=> b!842663 (= e!554311 e!554312)))

(assert (= (and d!262250 c!137300) b!842659))

(assert (= (and d!262250 (not c!137300)) b!842660))

(assert (= (and b!842660 c!137301) b!842661))

(assert (= (and b!842660 (not c!137301)) b!842663))

(assert (= (and b!842663 (not res!385241)) b!842662))

(declare-fun m!1076529 () Bool)

(assert (=> b!842659 m!1076529))

(declare-fun m!1076531 () Bool)

(assert (=> b!842661 m!1076531))

(declare-fun m!1076533 () Bool)

(assert (=> b!842662 m!1076533))

(assert (=> b!842192 d!262250))

(declare-fun d!262252 () Bool)

(assert (=> d!262252 true))

(declare-fun lt!319202 () Bool)

(declare-fun rulesValidInductive!599 (LexerInterface!1498 List!9061) Bool)

(assert (=> d!262252 (= lt!319202 (rulesValidInductive!599 thiss!20117 rules!2621))))

(declare-fun lambda!25063 () Int)

(declare-fun forall!2115 (List!9061 Int) Bool)

(assert (=> d!262252 (= lt!319202 (forall!2115 rules!2621 lambda!25063))))

(assert (=> d!262252 (= (rulesValid!585 thiss!20117 rules!2621) lt!319202)))

(declare-fun bs!230022 () Bool)

(assert (= bs!230022 d!262252))

(declare-fun m!1076577 () Bool)

(assert (=> bs!230022 m!1076577))

(declare-fun m!1076579 () Bool)

(assert (=> bs!230022 m!1076579))

(assert (=> d!261792 d!262252))

(declare-fun d!262260 () Bool)

(declare-fun res!385245 () Bool)

(declare-fun e!554316 () Bool)

(assert (=> d!262260 (=> res!385245 e!554316)))

(assert (=> d!262260 (= res!385245 ((_ is Nil!9044) (list!3553 (seqFromList!1518 lt!318783))))))

(assert (=> d!262260 (= (forall!2111 (list!3553 (seqFromList!1518 lt!318783)) lambda!25018) e!554316)))

(declare-fun b!842671 () Bool)

(declare-fun e!554317 () Bool)

(assert (=> b!842671 (= e!554316 e!554317)))

(declare-fun res!385246 () Bool)

(assert (=> b!842671 (=> (not res!385246) (not e!554317))))

(assert (=> b!842671 (= res!385246 (dynLambda!4181 lambda!25018 (h!14445 (list!3553 (seqFromList!1518 lt!318783)))))))

(declare-fun b!842672 () Bool)

(assert (=> b!842672 (= e!554317 (forall!2111 (t!93602 (list!3553 (seqFromList!1518 lt!318783))) lambda!25018))))

(assert (= (and d!262260 (not res!385245)) b!842671))

(assert (= (and b!842671 res!385246) b!842672))

(declare-fun b_lambda!27753 () Bool)

(assert (=> (not b_lambda!27753) (not b!842671)))

(declare-fun m!1076581 () Bool)

(assert (=> b!842671 m!1076581))

(declare-fun m!1076583 () Bool)

(assert (=> b!842672 m!1076583))

(assert (=> d!261758 d!262260))

(assert (=> d!261758 d!262130))

(declare-fun d!262262 () Bool)

(declare-fun lt!319208 () Bool)

(assert (=> d!262262 (= lt!319208 (forall!2111 (list!3553 (seqFromList!1518 lt!318783)) lambda!25018))))

(declare-fun forall!2116 (Conc!3001 Int) Bool)

(assert (=> d!262262 (= lt!319208 (forall!2116 (c!137166 (seqFromList!1518 lt!318783)) lambda!25018))))

(assert (=> d!262262 (= (forall!2113 (seqFromList!1518 lt!318783) lambda!25018) lt!319208)))

(declare-fun bs!230023 () Bool)

(assert (= bs!230023 d!262262))

(assert (=> bs!230023 m!1074731))

(assert (=> bs!230023 m!1074925))

(assert (=> bs!230023 m!1074925))

(assert (=> bs!230023 m!1074927))

(declare-fun m!1076591 () Bool)

(assert (=> bs!230023 m!1076591))

(assert (=> d!261758 d!262262))

(assert (=> d!261758 d!261754))

(declare-fun b!842678 () Bool)

(declare-fun e!554326 () List!9059)

(assert (=> b!842678 (= e!554326 (printList!458 thiss!20117 (t!93602 lt!318888)))))

(declare-fun b!842680 () Bool)

(assert (=> b!842680 (= e!554326 (Cons!9043 (h!14444 (list!3554 (charsOf!973 (h!14445 lt!318888)))) (++!2339 (t!93601 (list!3554 (charsOf!973 (h!14445 lt!318888)))) (printList!458 thiss!20117 (t!93602 lt!318888)))))))

(declare-fun d!262266 () Bool)

(declare-fun e!554323 () Bool)

(assert (=> d!262266 e!554323))

(declare-fun res!385252 () Bool)

(assert (=> d!262266 (=> (not res!385252) (not e!554323))))

(declare-fun lt!319210 () List!9059)

(assert (=> d!262266 (= res!385252 (= (content!1334 lt!319210) ((_ map or) (content!1334 (list!3554 (charsOf!973 (h!14445 lt!318888)))) (content!1334 (printList!458 thiss!20117 (t!93602 lt!318888))))))))

(assert (=> d!262266 (= lt!319210 e!554326)))

(declare-fun c!137304 () Bool)

(assert (=> d!262266 (= c!137304 ((_ is Nil!9043) (list!3554 (charsOf!973 (h!14445 lt!318888)))))))

(assert (=> d!262266 (= (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318888))) (printList!458 thiss!20117 (t!93602 lt!318888))) lt!319210)))

(declare-fun b!842682 () Bool)

(declare-fun res!385253 () Bool)

(assert (=> b!842682 (=> (not res!385253) (not e!554323))))

(assert (=> b!842682 (= res!385253 (= (size!7550 lt!319210) (+ (size!7550 (list!3554 (charsOf!973 (h!14445 lt!318888)))) (size!7550 (printList!458 thiss!20117 (t!93602 lt!318888))))))))

(declare-fun b!842684 () Bool)

(assert (=> b!842684 (= e!554323 (or (not (= (printList!458 thiss!20117 (t!93602 lt!318888)) Nil!9043)) (= lt!319210 (list!3554 (charsOf!973 (h!14445 lt!318888))))))))

(assert (= (and d!262266 c!137304) b!842678))

(assert (= (and d!262266 (not c!137304)) b!842680))

(assert (= (and d!262266 res!385252) b!842682))

(assert (= (and b!842682 res!385253) b!842684))

(assert (=> b!842680 m!1075081))

(declare-fun m!1076593 () Bool)

(assert (=> b!842680 m!1076593))

(declare-fun m!1076595 () Bool)

(assert (=> d!262266 m!1076595))

(assert (=> d!262266 m!1075079))

(declare-fun m!1076597 () Bool)

(assert (=> d!262266 m!1076597))

(assert (=> d!262266 m!1075081))

(declare-fun m!1076599 () Bool)

(assert (=> d!262266 m!1076599))

(declare-fun m!1076601 () Bool)

(assert (=> b!842682 m!1076601))

(assert (=> b!842682 m!1075079))

(declare-fun m!1076603 () Bool)

(assert (=> b!842682 m!1076603))

(assert (=> b!842682 m!1075081))

(declare-fun m!1076605 () Bool)

(assert (=> b!842682 m!1076605))

(assert (=> b!842030 d!262266))

(declare-fun d!262268 () Bool)

(assert (=> d!262268 (= (list!3554 (charsOf!973 (h!14445 lt!318888))) (list!3556 (c!137165 (charsOf!973 (h!14445 lt!318888)))))))

(declare-fun bs!230030 () Bool)

(assert (= bs!230030 d!262268))

(declare-fun m!1076607 () Bool)

(assert (=> bs!230030 m!1076607))

(assert (=> b!842030 d!262268))

(declare-fun d!262270 () Bool)

(declare-fun lt!319211 () BalanceConc!6014)

(assert (=> d!262270 (= (list!3554 lt!319211) (originalCharacters!2252 (h!14445 lt!318888)))))

(assert (=> d!262270 (= lt!319211 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888)))) (value!55035 (h!14445 lt!318888))))))

(assert (=> d!262270 (= (charsOf!973 (h!14445 lt!318888)) lt!319211)))

(declare-fun b_lambda!27755 () Bool)

(assert (=> (not b_lambda!27755) (not d!262270)))

(declare-fun tb!58223 () Bool)

(declare-fun t!93817 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888))))) t!93817) tb!58223))

(declare-fun b!842685 () Bool)

(declare-fun e!554328 () Bool)

(declare-fun tp!264990 () Bool)

(assert (=> b!842685 (= e!554328 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888)))) (value!55035 (h!14445 lt!318888))))) tp!264990))))

(declare-fun result!67524 () Bool)

(assert (=> tb!58223 (= result!67524 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888)))) (value!55035 (h!14445 lt!318888)))) e!554328))))

(assert (= tb!58223 b!842685))

(declare-fun m!1076609 () Bool)

(assert (=> b!842685 m!1076609))

(declare-fun m!1076611 () Bool)

(assert (=> tb!58223 m!1076611))

(assert (=> d!262270 t!93817))

(declare-fun b_and!73029 () Bool)

(assert (= b_and!73027 (and (=> t!93817 result!67524) b_and!73029)))

(declare-fun t!93819 () Bool)

(declare-fun tb!58225 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888))))) t!93819) tb!58225))

(declare-fun result!67526 () Bool)

(assert (= result!67526 result!67524))

(assert (=> d!262270 t!93819))

(declare-fun b_and!73031 () Bool)

(assert (= b_and!73023 (and (=> t!93819 result!67526) b_and!73031)))

(declare-fun t!93821 () Bool)

(declare-fun tb!58227 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888))))) t!93821) tb!58227))

(declare-fun result!67528 () Bool)

(assert (= result!67528 result!67524))

(assert (=> d!262270 t!93821))

(declare-fun b_and!73033 () Bool)

(assert (= b_and!73019 (and (=> t!93821 result!67528) b_and!73033)))

(declare-fun tb!58229 () Bool)

(declare-fun t!93823 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888))))) t!93823) tb!58229))

(declare-fun result!67530 () Bool)

(assert (= result!67530 result!67524))

(assert (=> d!262270 t!93823))

(declare-fun b_and!73035 () Bool)

(assert (= b_and!73025 (and (=> t!93823 result!67530) b_and!73035)))

(declare-fun tb!58231 () Bool)

(declare-fun t!93825 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888))))) t!93825) tb!58231))

(declare-fun result!67532 () Bool)

(assert (= result!67532 result!67524))

(assert (=> d!262270 t!93825))

(declare-fun b_and!73037 () Bool)

(assert (= b_and!73021 (and (=> t!93825 result!67532) b_and!73037)))

(declare-fun m!1076619 () Bool)

(assert (=> d!262270 m!1076619))

(declare-fun m!1076621 () Bool)

(assert (=> d!262270 m!1076621))

(assert (=> b!842030 d!262270))

(declare-fun d!262274 () Bool)

(declare-fun c!137305 () Bool)

(assert (=> d!262274 (= c!137305 ((_ is Cons!9044) (t!93602 lt!318888)))))

(declare-fun e!554331 () List!9059)

(assert (=> d!262274 (= (printList!458 thiss!20117 (t!93602 lt!318888)) e!554331)))

(declare-fun b!842688 () Bool)

(assert (=> b!842688 (= e!554331 (++!2339 (list!3554 (charsOf!973 (h!14445 (t!93602 lt!318888)))) (printList!458 thiss!20117 (t!93602 (t!93602 lt!318888)))))))

(declare-fun b!842689 () Bool)

(assert (=> b!842689 (= e!554331 Nil!9043)))

(assert (= (and d!262274 c!137305) b!842688))

(assert (= (and d!262274 (not c!137305)) b!842689))

(declare-fun m!1076623 () Bool)

(assert (=> b!842688 m!1076623))

(assert (=> b!842688 m!1076623))

(declare-fun m!1076625 () Bool)

(assert (=> b!842688 m!1076625))

(declare-fun m!1076627 () Bool)

(assert (=> b!842688 m!1076627))

(assert (=> b!842688 m!1076625))

(assert (=> b!842688 m!1076627))

(declare-fun m!1076629 () Bool)

(assert (=> b!842688 m!1076629))

(assert (=> b!842030 d!262274))

(assert (=> b!842149 d!261870))

(declare-fun bs!230046 () Bool)

(declare-fun d!262276 () Bool)

(assert (= bs!230046 (and d!262276 d!262070)))

(declare-fun lambda!25066 () Int)

(assert (=> bs!230046 (= (and (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) (= (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297))))) (= lambda!25066 lambda!25050))))

(assert (=> d!262276 true))

(assert (=> d!262276 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) (dynLambda!4185 order!5759 lambda!25066))))

(assert (=> d!262276 true))

(assert (=> d!262276 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107))))) (dynLambda!4185 order!5759 lambda!25066))))

(assert (=> d!262276 (= (semiInverseModEq!654 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107))))) (Forall!401 lambda!25066))))

(declare-fun bs!230047 () Bool)

(assert (= bs!230047 d!262276))

(declare-fun m!1076631 () Bool)

(assert (=> bs!230047 m!1076631))

(assert (=> d!261820 d!262276))

(declare-fun d!262278 () Bool)

(assert (=> d!262278 (tokensListTwoByTwoPredicateSeparableList!20 thiss!20117 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297) rules!2621)))

(declare-fun lt!319236 () Unit!13479)

(declare-fun lt!319237 () Unit!13479)

(assert (=> d!262278 (= lt!319236 lt!319237)))

(assert (=> d!262278 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (withSeparatorTokenList!28 thiss!20117 lt!318778 separatorToken!297))))

(assert (=> d!262278 (= lt!319237 (withSeparatorTokenListPreservesRulesProduceTokens!28 thiss!20117 rules!2621 lt!318778 separatorToken!297))))

(assert (=> d!262278 true))

(declare-fun _$39!190 () Unit!13479)

(assert (=> d!262278 (= (choose!4962 thiss!20117 rules!2621 lt!318778 separatorToken!297) _$39!190)))

(declare-fun bs!230057 () Bool)

(assert (= bs!230057 d!262278))

(assert (=> bs!230057 m!1074745))

(assert (=> bs!230057 m!1074745))

(assert (=> bs!230057 m!1075253))

(assert (=> bs!230057 m!1074745))

(assert (=> bs!230057 m!1075255))

(assert (=> bs!230057 m!1074719))

(assert (=> d!261862 d!262278))

(assert (=> d!261862 d!261754))

(declare-fun d!262302 () Bool)

(declare-fun lt!319240 () Int)

(assert (=> d!262302 (= lt!319240 (size!7550 (list!3554 (charsOf!973 (h!14445 (t!93602 lt!318781))))))))

(declare-fun size!7553 (Conc!3000) Int)

(assert (=> d!262302 (= lt!319240 (size!7553 (c!137165 (charsOf!973 (h!14445 (t!93602 lt!318781))))))))

(assert (=> d!262302 (= (size!7548 (charsOf!973 (h!14445 (t!93602 lt!318781)))) lt!319240)))

(declare-fun bs!230058 () Bool)

(assert (= bs!230058 d!262302))

(assert (=> bs!230058 m!1074791))

(declare-fun m!1076683 () Bool)

(assert (=> bs!230058 m!1076683))

(assert (=> bs!230058 m!1076683))

(declare-fun m!1076685 () Bool)

(assert (=> bs!230058 m!1076685))

(declare-fun m!1076687 () Bool)

(assert (=> bs!230058 m!1076687))

(assert (=> b!841808 d!262302))

(declare-fun d!262304 () Bool)

(assert (=> d!262304 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318781))))

(declare-fun lt!319252 () Unit!13479)

(declare-fun choose!4966 (LexerInterface!1498 List!9061 List!9060 Token!3058) Unit!13479)

(assert (=> d!262304 (= lt!319252 (choose!4966 thiss!20117 rules!2621 lt!318781 (h!14445 lt!318781)))))

(assert (=> d!262304 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262304 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 thiss!20117 rules!2621 lt!318781 (h!14445 lt!318781)) lt!319252)))

(declare-fun bs!230069 () Bool)

(assert (= bs!230069 d!262304))

(assert (=> bs!230069 m!1074787))

(declare-fun m!1076797 () Bool)

(assert (=> bs!230069 m!1076797))

(assert (=> bs!230069 m!1074735))

(assert (=> b!841808 d!262304))

(declare-fun d!262340 () Bool)

(assert (=> d!262340 (= (separableTokensPredicate!38 thiss!20117 (h!14445 lt!318781) (h!14445 (t!93602 lt!318781)) rules!2621) (not (prefixMatchZipperSequence!9 (rulesRegex!8 thiss!20117 rules!2621) (++!2340 (charsOf!973 (h!14445 lt!318781)) (singletonSeq!508 (apply!1818 (charsOf!973 (h!14445 (t!93602 lt!318781))) 0))))))))

(declare-fun bs!230070 () Bool)

(assert (= bs!230070 d!262340))

(declare-fun m!1076799 () Bool)

(assert (=> bs!230070 m!1076799))

(declare-fun m!1076801 () Bool)

(assert (=> bs!230070 m!1076801))

(assert (=> bs!230070 m!1074791))

(assert (=> bs!230070 m!1076799))

(declare-fun m!1076803 () Bool)

(assert (=> bs!230070 m!1076803))

(assert (=> bs!230070 m!1076801))

(declare-fun m!1076805 () Bool)

(assert (=> bs!230070 m!1076805))

(assert (=> bs!230070 m!1075203))

(assert (=> bs!230070 m!1076805))

(declare-fun m!1076807 () Bool)

(assert (=> bs!230070 m!1076807))

(assert (=> bs!230070 m!1075203))

(assert (=> bs!230070 m!1076803))

(assert (=> bs!230070 m!1074791))

(assert (=> b!841808 d!262340))

(declare-fun d!262342 () Bool)

(assert (=> d!262342 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 lt!318781)))))

(declare-fun lt!319253 () Unit!13479)

(assert (=> d!262342 (= lt!319253 (choose!4966 thiss!20117 rules!2621 lt!318781 (h!14445 (t!93602 lt!318781))))))

(assert (=> d!262342 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262342 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!215 thiss!20117 rules!2621 lt!318781 (h!14445 (t!93602 lt!318781))) lt!319253)))

(declare-fun bs!230071 () Bool)

(assert (= bs!230071 d!262342))

(assert (=> bs!230071 m!1074783))

(declare-fun m!1076809 () Bool)

(assert (=> bs!230071 m!1076809))

(assert (=> bs!230071 m!1074735))

(assert (=> b!841808 d!262342))

(declare-fun d!262344 () Bool)

(declare-fun lt!319255 () Bool)

(declare-fun e!554413 () Bool)

(assert (=> d!262344 (= lt!319255 e!554413)))

(declare-fun res!385281 () Bool)

(assert (=> d!262344 (=> (not res!385281) (not e!554413))))

(assert (=> d!262344 (= res!385281 (= (list!3553 (_1!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 (t!93602 lt!318781))))))) (list!3553 (singletonSeq!509 (h!14445 (t!93602 lt!318781))))))))

(declare-fun e!554414 () Bool)

(assert (=> d!262344 (= lt!319255 e!554414)))

(declare-fun res!385282 () Bool)

(assert (=> d!262344 (=> (not res!385282) (not e!554414))))

(declare-fun lt!319254 () tuple2!10328)

(assert (=> d!262344 (= res!385282 (= (size!7551 (_1!5990 lt!319254)) 1))))

(assert (=> d!262344 (= lt!319254 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 (t!93602 lt!318781))))))))

(assert (=> d!262344 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262344 (= (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 lt!318781))) lt!319255)))

(declare-fun b!842836 () Bool)

(declare-fun res!385280 () Bool)

(assert (=> b!842836 (=> (not res!385280) (not e!554414))))

(assert (=> b!842836 (= res!385280 (= (apply!1819 (_1!5990 lt!319254) 0) (h!14445 (t!93602 lt!318781))))))

(declare-fun b!842837 () Bool)

(assert (=> b!842837 (= e!554414 (isEmpty!5329 (_2!5990 lt!319254)))))

(declare-fun b!842838 () Bool)

(assert (=> b!842838 (= e!554413 (isEmpty!5329 (_2!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 (t!93602 lt!318781))))))))))

(assert (= (and d!262344 res!385282) b!842836))

(assert (= (and b!842836 res!385280) b!842837))

(assert (= (and d!262344 res!385281) b!842838))

(declare-fun m!1076811 () Bool)

(assert (=> d!262344 m!1076811))

(assert (=> d!262344 m!1076811))

(declare-fun m!1076813 () Bool)

(assert (=> d!262344 m!1076813))

(assert (=> d!262344 m!1074735))

(assert (=> d!262344 m!1076811))

(declare-fun m!1076815 () Bool)

(assert (=> d!262344 m!1076815))

(declare-fun m!1076817 () Bool)

(assert (=> d!262344 m!1076817))

(declare-fun m!1076819 () Bool)

(assert (=> d!262344 m!1076819))

(assert (=> d!262344 m!1076813))

(declare-fun m!1076821 () Bool)

(assert (=> d!262344 m!1076821))

(declare-fun m!1076823 () Bool)

(assert (=> b!842836 m!1076823))

(declare-fun m!1076825 () Bool)

(assert (=> b!842837 m!1076825))

(assert (=> b!842838 m!1076811))

(assert (=> b!842838 m!1076811))

(assert (=> b!842838 m!1076813))

(assert (=> b!842838 m!1076813))

(assert (=> b!842838 m!1076821))

(declare-fun m!1076827 () Bool)

(assert (=> b!842838 m!1076827))

(assert (=> b!841808 d!262344))

(declare-fun d!262346 () Bool)

(declare-fun lt!319256 () BalanceConc!6014)

(assert (=> d!262346 (= (list!3554 lt!319256) (originalCharacters!2252 (h!14445 (t!93602 lt!318781))))))

(assert (=> d!262346 (= lt!319256 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781))))) (value!55035 (h!14445 (t!93602 lt!318781)))))))

(assert (=> d!262346 (= (charsOf!973 (h!14445 (t!93602 lt!318781))) lt!319256)))

(declare-fun b_lambda!27779 () Bool)

(assert (=> (not b_lambda!27779) (not d!262346)))

(declare-fun tb!58287 () Bool)

(declare-fun t!93883 () Bool)

(assert (=> (and b!841785 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781)))))) t!93883) tb!58287))

(declare-fun b!842839 () Bool)

(declare-fun e!554415 () Bool)

(declare-fun tp!265101 () Bool)

(assert (=> b!842839 (= e!554415 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781))))) (value!55035 (h!14445 (t!93602 lt!318781)))))) tp!265101))))

(declare-fun result!67590 () Bool)

(assert (=> tb!58287 (= result!67590 (and (inv!11520 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781))))) (value!55035 (h!14445 (t!93602 lt!318781))))) e!554415))))

(assert (= tb!58287 b!842839))

(declare-fun m!1076829 () Bool)

(assert (=> b!842839 m!1076829))

(declare-fun m!1076831 () Bool)

(assert (=> tb!58287 m!1076831))

(assert (=> d!262346 t!93883))

(declare-fun b_and!73057 () Bool)

(assert (= b_and!73031 (and (=> t!93883 result!67590) b_and!73057)))

(declare-fun t!93885 () Bool)

(declare-fun tb!58289 () Bool)

(assert (=> (and b!842194 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781)))))) t!93885) tb!58289))

(declare-fun result!67592 () Bool)

(assert (= result!67592 result!67590))

(assert (=> d!262346 t!93885))

(declare-fun b_and!73059 () Bool)

(assert (= b_and!73037 (and (=> t!93885 result!67592) b_and!73059)))

(declare-fun tb!58291 () Bool)

(declare-fun t!93887 () Bool)

(assert (=> (and b!842175 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781)))))) t!93887) tb!58291))

(declare-fun result!67594 () Bool)

(assert (= result!67594 result!67590))

(assert (=> d!262346 t!93887))

(declare-fun b_and!73061 () Bool)

(assert (= b_and!73035 (and (=> t!93887 result!67594) b_and!73061)))

(declare-fun tb!58293 () Bool)

(declare-fun t!93889 () Bool)

(assert (=> (and b!841770 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781)))))) t!93889) tb!58293))

(declare-fun result!67596 () Bool)

(assert (= result!67596 result!67590))

(assert (=> d!262346 t!93889))

(declare-fun b_and!73063 () Bool)

(assert (= b_and!73029 (and (=> t!93889 result!67596) b_and!73063)))

(declare-fun t!93891 () Bool)

(declare-fun tb!58295 () Bool)

(assert (=> (and b!841780 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781)))))) t!93891) tb!58295))

(declare-fun result!67598 () Bool)

(assert (= result!67598 result!67590))

(assert (=> d!262346 t!93891))

(declare-fun b_and!73065 () Bool)

(assert (= b_and!73033 (and (=> t!93891 result!67598) b_and!73065)))

(declare-fun m!1076833 () Bool)

(assert (=> d!262346 m!1076833))

(declare-fun m!1076835 () Bool)

(assert (=> d!262346 m!1076835))

(assert (=> b!841808 d!262346))

(declare-fun d!262348 () Bool)

(declare-fun lt!319258 () Bool)

(declare-fun e!554416 () Bool)

(assert (=> d!262348 (= lt!319258 e!554416)))

(declare-fun res!385284 () Bool)

(assert (=> d!262348 (=> (not res!385284) (not e!554416))))

(assert (=> d!262348 (= res!385284 (= (list!3553 (_1!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 lt!318781)))))) (list!3553 (singletonSeq!509 (h!14445 lt!318781)))))))

(declare-fun e!554417 () Bool)

(assert (=> d!262348 (= lt!319258 e!554417)))

(declare-fun res!385285 () Bool)

(assert (=> d!262348 (=> (not res!385285) (not e!554417))))

(declare-fun lt!319257 () tuple2!10328)

(assert (=> d!262348 (= res!385285 (= (size!7551 (_1!5990 lt!319257)) 1))))

(assert (=> d!262348 (= lt!319257 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 lt!318781)))))))

(assert (=> d!262348 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262348 (= (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318781)) lt!319258)))

(declare-fun b!842840 () Bool)

(declare-fun res!385283 () Bool)

(assert (=> b!842840 (=> (not res!385283) (not e!554417))))

(assert (=> b!842840 (= res!385283 (= (apply!1819 (_1!5990 lt!319257) 0) (h!14445 lt!318781)))))

(declare-fun b!842841 () Bool)

(assert (=> b!842841 (= e!554417 (isEmpty!5329 (_2!5990 lt!319257)))))

(declare-fun b!842842 () Bool)

(assert (=> b!842842 (= e!554416 (isEmpty!5329 (_2!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 lt!318781)))))))))

(assert (= (and d!262348 res!385285) b!842840))

(assert (= (and b!842840 res!385283) b!842841))

(assert (= (and d!262348 res!385284) b!842842))

(declare-fun m!1076837 () Bool)

(assert (=> d!262348 m!1076837))

(assert (=> d!262348 m!1076837))

(declare-fun m!1076839 () Bool)

(assert (=> d!262348 m!1076839))

(assert (=> d!262348 m!1074735))

(assert (=> d!262348 m!1076837))

(declare-fun m!1076841 () Bool)

(assert (=> d!262348 m!1076841))

(declare-fun m!1076843 () Bool)

(assert (=> d!262348 m!1076843))

(declare-fun m!1076845 () Bool)

(assert (=> d!262348 m!1076845))

(assert (=> d!262348 m!1076839))

(declare-fun m!1076847 () Bool)

(assert (=> d!262348 m!1076847))

(declare-fun m!1076849 () Bool)

(assert (=> b!842840 m!1076849))

(declare-fun m!1076851 () Bool)

(assert (=> b!842841 m!1076851))

(assert (=> b!842842 m!1076837))

(assert (=> b!842842 m!1076837))

(assert (=> b!842842 m!1076839))

(assert (=> b!842842 m!1076839))

(assert (=> b!842842 m!1076847))

(declare-fun m!1076853 () Bool)

(assert (=> b!842842 m!1076853))

(assert (=> b!841808 d!262348))

(declare-fun d!262350 () Bool)

(assert (=> d!262350 (= (inv!15 (value!55035 separatorToken!297)) (= (charsToBigInt!0 (text!12783 (value!55035 separatorToken!297)) 0) (value!55030 (value!55035 separatorToken!297))))))

(declare-fun bs!230072 () Bool)

(assert (= bs!230072 d!262350))

(declare-fun m!1076855 () Bool)

(assert (=> bs!230072 m!1076855))

(assert (=> b!842035 d!262350))

(declare-fun d!262352 () Bool)

(declare-fun c!137313 () Bool)

(assert (=> d!262352 (= c!137313 ((_ is Cons!9044) lt!318889))))

(declare-fun e!554418 () List!9059)

(assert (=> d!262352 (= (printList!458 thiss!20117 lt!318889) e!554418)))

(declare-fun b!842843 () Bool)

(assert (=> b!842843 (= e!554418 (++!2339 (list!3554 (charsOf!973 (h!14445 lt!318889))) (printList!458 thiss!20117 (t!93602 lt!318889))))))

(declare-fun b!842844 () Bool)

(assert (=> b!842844 (= e!554418 Nil!9043)))

(assert (= (and d!262352 c!137313) b!842843))

(assert (= (and d!262352 (not c!137313)) b!842844))

(declare-fun m!1076857 () Bool)

(assert (=> b!842843 m!1076857))

(assert (=> b!842843 m!1076857))

(declare-fun m!1076859 () Bool)

(assert (=> b!842843 m!1076859))

(declare-fun m!1076861 () Bool)

(assert (=> b!842843 m!1076861))

(assert (=> b!842843 m!1076859))

(assert (=> b!842843 m!1076861))

(declare-fun m!1076863 () Bool)

(assert (=> b!842843 m!1076863))

(assert (=> d!261824 d!262352))

(declare-fun d!262354 () Bool)

(declare-fun c!137314 () Bool)

(assert (=> d!262354 (= c!137314 ((_ is Cons!9044) l!5107))))

(declare-fun e!554419 () List!9059)

(assert (=> d!262354 (= (printWithSeparatorTokenList!16 thiss!20117 l!5107 separatorToken!297) e!554419)))

(declare-fun b!842845 () Bool)

(assert (=> b!842845 (= e!554419 (++!2339 (++!2339 (list!3554 (charsOf!973 (h!14445 l!5107))) (list!3554 (charsOf!973 separatorToken!297))) (printWithSeparatorTokenList!16 thiss!20117 (t!93602 l!5107) separatorToken!297)))))

(declare-fun b!842846 () Bool)

(assert (=> b!842846 (= e!554419 Nil!9043)))

(assert (= (and d!262354 c!137314) b!842845))

(assert (= (and d!262354 (not c!137314)) b!842846))

(assert (=> b!842845 m!1075097))

(assert (=> b!842845 m!1074957))

(declare-fun m!1076865 () Bool)

(assert (=> b!842845 m!1076865))

(assert (=> b!842845 m!1075985))

(declare-fun m!1076867 () Bool)

(assert (=> b!842845 m!1076867))

(assert (=> b!842845 m!1075097))

(assert (=> b!842845 m!1075099))

(assert (=> b!842845 m!1075099))

(assert (=> b!842845 m!1074969))

(assert (=> b!842845 m!1076865))

(assert (=> b!842845 m!1075985))

(assert (=> b!842845 m!1074957))

(assert (=> b!842845 m!1074969))

(assert (=> d!261824 d!262354))

(declare-fun bs!230073 () Bool)

(declare-fun d!262356 () Bool)

(assert (= bs!230073 (and d!262356 d!262008)))

(declare-fun lambda!25068 () Int)

(assert (=> bs!230073 (= (= (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107))))) (= lambda!25068 lambda!25045))))

(declare-fun bs!230074 () Bool)

(assert (= bs!230074 (and d!262356 d!262062)))

(assert (=> bs!230074 (= (= (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297))) (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (= lambda!25068 lambda!25047))))

(assert (=> d!262356 true))

(assert (=> d!262356 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297)))) (dynLambda!4183 order!5757 lambda!25068))))

(assert (=> d!262356 (= (equivClasses!621 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297)))) (Forall2!311 lambda!25068))))

(declare-fun bs!230075 () Bool)

(assert (= bs!230075 d!262356))

(declare-fun m!1076869 () Bool)

(assert (=> bs!230075 m!1076869))

(assert (=> b!842014 d!262356))

(declare-fun bs!230076 () Bool)

(declare-fun d!262358 () Bool)

(assert (= bs!230076 (and d!262358 d!262132)))

(declare-fun lambda!25069 () Int)

(assert (=> bs!230076 (= lambda!25069 lambda!25054)))

(declare-fun bs!230077 () Bool)

(assert (= bs!230077 (and d!262358 b!841773)))

(assert (=> bs!230077 (not (= lambda!25069 lambda!25004))))

(declare-fun bs!230078 () Bool)

(assert (= bs!230078 (and d!262358 d!262056)))

(assert (=> bs!230078 (= lambda!25069 lambda!25046)))

(declare-fun bs!230079 () Bool)

(assert (= bs!230079 (and d!262358 d!262128)))

(assert (=> bs!230079 (= lambda!25069 lambda!25053)))

(declare-fun bs!230080 () Bool)

(assert (= bs!230080 (and d!262358 d!261822)))

(assert (=> bs!230080 (= lambda!25069 lambda!25023)))

(declare-fun bs!230081 () Bool)

(assert (= bs!230081 (and d!262358 d!261854)))

(assert (=> bs!230081 (= lambda!25069 lambda!25024)))

(declare-fun bs!230082 () Bool)

(assert (= bs!230082 (and d!262358 d!262102)))

(assert (=> bs!230082 (= lambda!25069 lambda!25052)))

(declare-fun bs!230083 () Bool)

(assert (= bs!230083 (and d!262358 d!261798)))

(assert (=> bs!230083 (= lambda!25069 lambda!25022)))

(declare-fun bs!230084 () Bool)

(assert (= bs!230084 (and d!262358 d!261978)))

(assert (=> bs!230084 (= lambda!25069 lambda!25038)))

(declare-fun bs!230085 () Bool)

(assert (= bs!230085 (and d!262358 d!262082)))

(assert (=> bs!230085 (= lambda!25069 lambda!25051)))

(declare-fun bs!230086 () Bool)

(assert (= bs!230086 (and d!262358 d!261758)))

(assert (=> bs!230086 (= lambda!25069 lambda!25018)))

(declare-fun b!842851 () Bool)

(declare-fun e!554424 () Bool)

(assert (=> b!842851 (= e!554424 true)))

(declare-fun b!842850 () Bool)

(declare-fun e!554423 () Bool)

(assert (=> b!842850 (= e!554423 e!554424)))

(declare-fun b!842849 () Bool)

(declare-fun e!554422 () Bool)

(assert (=> b!842849 (= e!554422 e!554423)))

(assert (=> d!262358 e!554422))

(assert (= b!842850 b!842851))

(assert (= b!842849 b!842850))

(assert (= (and d!262358 ((_ is Cons!9045) rules!2621)) b!842849))

(assert (=> b!842851 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25069))))

(assert (=> b!842851 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4178 order!5749 lambda!25069))))

(assert (=> d!262358 true))

(declare-fun lt!319259 () Bool)

(assert (=> d!262358 (= lt!319259 (forall!2111 (t!93602 l!5107) lambda!25069))))

(declare-fun e!554421 () Bool)

(assert (=> d!262358 (= lt!319259 e!554421)))

(declare-fun res!385287 () Bool)

(assert (=> d!262358 (=> res!385287 e!554421)))

(assert (=> d!262358 (= res!385287 (not ((_ is Cons!9044) (t!93602 l!5107))))))

(assert (=> d!262358 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262358 (= (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 l!5107)) lt!319259)))

(declare-fun b!842847 () Bool)

(declare-fun e!554420 () Bool)

(assert (=> b!842847 (= e!554421 e!554420)))

(declare-fun res!385286 () Bool)

(assert (=> b!842847 (=> (not res!385286) (not e!554420))))

(assert (=> b!842847 (= res!385286 (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (t!93602 l!5107))))))

(declare-fun b!842848 () Bool)

(assert (=> b!842848 (= e!554420 (rulesProduceEachTokenIndividuallyList!386 thiss!20117 rules!2621 (t!93602 (t!93602 l!5107))))))

(assert (= (and d!262358 (not res!385287)) b!842847))

(assert (= (and b!842847 res!385286) b!842848))

(declare-fun m!1076871 () Bool)

(assert (=> d!262358 m!1076871))

(assert (=> d!262358 m!1074735))

(declare-fun m!1076873 () Bool)

(assert (=> b!842847 m!1076873))

(declare-fun m!1076875 () Bool)

(assert (=> b!842848 m!1076875))

(assert (=> b!841997 d!262358))

(assert (=> b!842060 d!262348))

(declare-fun bs!230087 () Bool)

(declare-fun d!262360 () Bool)

(assert (= bs!230087 (and d!262360 d!262070)))

(declare-fun lambda!25070 () Int)

(assert (=> bs!230087 (= (and (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) (= (toValue!2713 (transformation!1696 (h!14446 rules!2621))) (toValue!2713 (transformation!1696 (rule!3119 separatorToken!297))))) (= lambda!25070 lambda!25050))))

(declare-fun bs!230088 () Bool)

(assert (= bs!230088 (and d!262360 d!262276)))

(assert (=> bs!230088 (= (and (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) (= (toValue!2713 (transformation!1696 (h!14446 rules!2621))) (toValue!2713 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (= lambda!25070 lambda!25066))))

(assert (=> d!262360 true))

(assert (=> d!262360 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4185 order!5759 lambda!25070))))

(assert (=> d!262360 true))

(assert (=> d!262360 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (dynLambda!4185 order!5759 lambda!25070))))

(assert (=> d!262360 (= (semiInverseModEq!654 (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toValue!2713 (transformation!1696 (h!14446 rules!2621)))) (Forall!401 lambda!25070))))

(declare-fun bs!230089 () Bool)

(assert (= bs!230089 d!262360))

(declare-fun m!1076877 () Bool)

(assert (=> bs!230089 m!1076877))

(assert (=> d!261834 d!262360))

(assert (=> b!842145 d!261792))

(declare-fun b!842852 () Bool)

(declare-fun e!554426 () List!9059)

(assert (=> b!842852 (= e!554426 lt!318891)))

(declare-fun b!842853 () Bool)

(assert (=> b!842853 (= e!554426 (Cons!9043 (h!14444 (++!2339 lt!318892 lt!318890)) (++!2339 (t!93601 (++!2339 lt!318892 lt!318890)) lt!318891)))))

(declare-fun d!262362 () Bool)

(declare-fun e!554425 () Bool)

(assert (=> d!262362 e!554425))

(declare-fun res!385288 () Bool)

(assert (=> d!262362 (=> (not res!385288) (not e!554425))))

(declare-fun lt!319260 () List!9059)

(assert (=> d!262362 (= res!385288 (= (content!1334 lt!319260) ((_ map or) (content!1334 (++!2339 lt!318892 lt!318890)) (content!1334 lt!318891))))))

(assert (=> d!262362 (= lt!319260 e!554426)))

(declare-fun c!137315 () Bool)

(assert (=> d!262362 (= c!137315 ((_ is Nil!9043) (++!2339 lt!318892 lt!318890)))))

(assert (=> d!262362 (= (++!2339 (++!2339 lt!318892 lt!318890) lt!318891) lt!319260)))

(declare-fun b!842854 () Bool)

(declare-fun res!385289 () Bool)

(assert (=> b!842854 (=> (not res!385289) (not e!554425))))

(assert (=> b!842854 (= res!385289 (= (size!7550 lt!319260) (+ (size!7550 (++!2339 lt!318892 lt!318890)) (size!7550 lt!318891))))))

(declare-fun b!842855 () Bool)

(assert (=> b!842855 (= e!554425 (or (not (= lt!318891 Nil!9043)) (= lt!319260 (++!2339 lt!318892 lt!318890))))))

(assert (= (and d!262362 c!137315) b!842852))

(assert (= (and d!262362 (not c!137315)) b!842853))

(assert (= (and d!262362 res!385288) b!842854))

(assert (= (and b!842854 res!385289) b!842855))

(declare-fun m!1076879 () Bool)

(assert (=> b!842853 m!1076879))

(declare-fun m!1076881 () Bool)

(assert (=> d!262362 m!1076881))

(assert (=> d!262362 m!1075095))

(declare-fun m!1076883 () Bool)

(assert (=> d!262362 m!1076883))

(declare-fun m!1076885 () Bool)

(assert (=> d!262362 m!1076885))

(declare-fun m!1076887 () Bool)

(assert (=> b!842854 m!1076887))

(assert (=> b!842854 m!1075095))

(declare-fun m!1076889 () Bool)

(assert (=> b!842854 m!1076889))

(declare-fun m!1076891 () Bool)

(assert (=> b!842854 m!1076891))

(assert (=> b!842024 d!262362))

(declare-fun d!262364 () Bool)

(assert (=> d!262364 (= (++!2339 (++!2339 lt!318892 lt!318890) lt!318891) (++!2339 lt!318892 (++!2339 lt!318890 lt!318891)))))

(declare-fun lt!319261 () Unit!13479)

(assert (=> d!262364 (= lt!319261 (choose!4965 lt!318892 lt!318890 lt!318891))))

(assert (=> d!262364 (= (lemmaConcatAssociativity!733 lt!318892 lt!318890 lt!318891) lt!319261)))

(declare-fun bs!230090 () Bool)

(assert (= bs!230090 d!262364))

(assert (=> bs!230090 m!1075091))

(assert (=> bs!230090 m!1075093))

(assert (=> bs!230090 m!1075091))

(assert (=> bs!230090 m!1075095))

(declare-fun m!1076893 () Bool)

(assert (=> bs!230090 m!1076893))

(assert (=> bs!230090 m!1075095))

(assert (=> bs!230090 m!1075103))

(assert (=> b!842024 d!262364))

(assert (=> b!842024 d!262212))

(declare-fun b!842856 () Bool)

(declare-fun e!554428 () List!9059)

(assert (=> b!842856 (= e!554428 lt!318890)))

(declare-fun b!842857 () Bool)

(assert (=> b!842857 (= e!554428 (Cons!9043 (h!14444 lt!318892) (++!2339 (t!93601 lt!318892) lt!318890)))))

(declare-fun d!262366 () Bool)

(declare-fun e!554427 () Bool)

(assert (=> d!262366 e!554427))

(declare-fun res!385290 () Bool)

(assert (=> d!262366 (=> (not res!385290) (not e!554427))))

(declare-fun lt!319262 () List!9059)

(assert (=> d!262366 (= res!385290 (= (content!1334 lt!319262) ((_ map or) (content!1334 lt!318892) (content!1334 lt!318890))))))

(assert (=> d!262366 (= lt!319262 e!554428)))

(declare-fun c!137316 () Bool)

(assert (=> d!262366 (= c!137316 ((_ is Nil!9043) lt!318892))))

(assert (=> d!262366 (= (++!2339 lt!318892 lt!318890) lt!319262)))

(declare-fun b!842858 () Bool)

(declare-fun res!385291 () Bool)

(assert (=> b!842858 (=> (not res!385291) (not e!554427))))

(assert (=> b!842858 (= res!385291 (= (size!7550 lt!319262) (+ (size!7550 lt!318892) (size!7550 lt!318890))))))

(declare-fun b!842859 () Bool)

(assert (=> b!842859 (= e!554427 (or (not (= lt!318890 Nil!9043)) (= lt!319262 lt!318892)))))

(assert (= (and d!262366 c!137316) b!842856))

(assert (= (and d!262366 (not c!137316)) b!842857))

(assert (= (and d!262366 res!385290) b!842858))

(assert (= (and b!842858 res!385291) b!842859))

(declare-fun m!1076895 () Bool)

(assert (=> b!842857 m!1076895))

(declare-fun m!1076897 () Bool)

(assert (=> d!262366 m!1076897))

(declare-fun m!1076899 () Bool)

(assert (=> d!262366 m!1076899))

(declare-fun m!1076901 () Bool)

(assert (=> d!262366 m!1076901))

(declare-fun m!1076903 () Bool)

(assert (=> b!842858 m!1076903))

(declare-fun m!1076905 () Bool)

(assert (=> b!842858 m!1076905))

(declare-fun m!1076907 () Bool)

(assert (=> b!842858 m!1076907))

(assert (=> b!842024 d!262366))

(assert (=> b!842024 d!262238))

(declare-fun d!262368 () Bool)

(assert (=> d!262368 (= (list!3554 (charsOf!973 (h!14445 l!5107))) (list!3556 (c!137165 (charsOf!973 (h!14445 l!5107)))))))

(declare-fun bs!230091 () Bool)

(assert (= bs!230091 d!262368))

(declare-fun m!1076909 () Bool)

(assert (=> bs!230091 m!1076909))

(assert (=> b!842024 d!262368))

(declare-fun b!842860 () Bool)

(declare-fun e!554430 () List!9059)

(assert (=> b!842860 (= e!554430 lt!318891)))

(declare-fun b!842861 () Bool)

(assert (=> b!842861 (= e!554430 (Cons!9043 (h!14444 lt!318890) (++!2339 (t!93601 lt!318890) lt!318891)))))

(declare-fun d!262370 () Bool)

(declare-fun e!554429 () Bool)

(assert (=> d!262370 e!554429))

(declare-fun res!385292 () Bool)

(assert (=> d!262370 (=> (not res!385292) (not e!554429))))

(declare-fun lt!319263 () List!9059)

(assert (=> d!262370 (= res!385292 (= (content!1334 lt!319263) ((_ map or) (content!1334 lt!318890) (content!1334 lt!318891))))))

(assert (=> d!262370 (= lt!319263 e!554430)))

(declare-fun c!137317 () Bool)

(assert (=> d!262370 (= c!137317 ((_ is Nil!9043) lt!318890))))

(assert (=> d!262370 (= (++!2339 lt!318890 lt!318891) lt!319263)))

(declare-fun b!842862 () Bool)

(declare-fun res!385293 () Bool)

(assert (=> b!842862 (=> (not res!385293) (not e!554429))))

(assert (=> b!842862 (= res!385293 (= (size!7550 lt!319263) (+ (size!7550 lt!318890) (size!7550 lt!318891))))))

(declare-fun b!842863 () Bool)

(assert (=> b!842863 (= e!554429 (or (not (= lt!318891 Nil!9043)) (= lt!319263 lt!318890)))))

(assert (= (and d!262370 c!137317) b!842860))

(assert (= (and d!262370 (not c!137317)) b!842861))

(assert (= (and d!262370 res!385292) b!842862))

(assert (= (and b!842862 res!385293) b!842863))

(declare-fun m!1076911 () Bool)

(assert (=> b!842861 m!1076911))

(declare-fun m!1076913 () Bool)

(assert (=> d!262370 m!1076913))

(assert (=> d!262370 m!1076901))

(assert (=> d!262370 m!1076885))

(declare-fun m!1076915 () Bool)

(assert (=> b!842862 m!1076915))

(assert (=> b!842862 m!1076907))

(assert (=> b!842862 m!1076891))

(assert (=> b!842024 d!262370))

(declare-fun c!137318 () Bool)

(declare-fun d!262372 () Bool)

(assert (=> d!262372 (= c!137318 ((_ is Cons!9044) (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297)))))

(declare-fun e!554431 () List!9059)

(assert (=> d!262372 (= (printList!458 thiss!20117 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297)) e!554431)))

(declare-fun b!842864 () Bool)

(assert (=> b!842864 (= e!554431 (++!2339 (list!3554 (charsOf!973 (h!14445 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297)))) (printList!458 thiss!20117 (t!93602 (withSeparatorTokenList!28 thiss!20117 (t!93602 l!5107) separatorToken!297)))))))

(declare-fun b!842865 () Bool)

(assert (=> b!842865 (= e!554431 Nil!9043)))

(assert (= (and d!262372 c!137318) b!842864))

(assert (= (and d!262372 (not c!137318)) b!842865))

(declare-fun m!1076917 () Bool)

(assert (=> b!842864 m!1076917))

(assert (=> b!842864 m!1076917))

(declare-fun m!1076919 () Bool)

(assert (=> b!842864 m!1076919))

(declare-fun m!1076921 () Bool)

(assert (=> b!842864 m!1076921))

(assert (=> b!842864 m!1076919))

(assert (=> b!842864 m!1076921))

(declare-fun m!1076923 () Bool)

(assert (=> b!842864 m!1076923))

(assert (=> b!842024 d!262372))

(assert (=> b!842024 d!262090))

(declare-fun d!262374 () Bool)

(declare-fun lt!319264 () BalanceConc!6014)

(assert (=> d!262374 (= (list!3554 lt!319264) (originalCharacters!2252 (h!14445 l!5107)))))

(assert (=> d!262374 (= lt!319264 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))))

(assert (=> d!262374 (= (charsOf!973 (h!14445 l!5107)) lt!319264)))

(declare-fun b_lambda!27781 () Bool)

(assert (=> (not b_lambda!27781) (not d!262374)))

(assert (=> d!262374 t!93626))

(declare-fun b_and!73067 () Bool)

(assert (= b_and!73057 (and (=> t!93626 result!67326) b_and!73067)))

(assert (=> d!262374 t!93624))

(declare-fun b_and!73069 () Bool)

(assert (= b_and!73065 (and (=> t!93624 result!67322) b_and!73069)))

(assert (=> d!262374 t!93651))

(declare-fun b_and!73071 () Bool)

(assert (= b_and!73061 (and (=> t!93651 result!67360) b_and!73071)))

(assert (=> d!262374 t!93628))

(declare-fun b_and!73073 () Bool)

(assert (= b_and!73063 (and (=> t!93628 result!67328) b_and!73073)))

(assert (=> d!262374 t!93655))

(declare-fun b_and!73075 () Bool)

(assert (= b_and!73059 (and (=> t!93655 result!67368) b_and!73075)))

(declare-fun m!1076925 () Bool)

(assert (=> d!262374 m!1076925))

(assert (=> d!262374 m!1075057))

(assert (=> b!842024 d!262374))

(assert (=> b!842024 d!262092))

(declare-fun b!842866 () Bool)

(declare-fun e!554433 () List!9059)

(assert (=> b!842866 (= e!554433 (++!2339 lt!318890 lt!318891))))

(declare-fun b!842867 () Bool)

(assert (=> b!842867 (= e!554433 (Cons!9043 (h!14444 lt!318892) (++!2339 (t!93601 lt!318892) (++!2339 lt!318890 lt!318891))))))

(declare-fun d!262376 () Bool)

(declare-fun e!554432 () Bool)

(assert (=> d!262376 e!554432))

(declare-fun res!385294 () Bool)

(assert (=> d!262376 (=> (not res!385294) (not e!554432))))

(declare-fun lt!319265 () List!9059)

(assert (=> d!262376 (= res!385294 (= (content!1334 lt!319265) ((_ map or) (content!1334 lt!318892) (content!1334 (++!2339 lt!318890 lt!318891)))))))

(assert (=> d!262376 (= lt!319265 e!554433)))

(declare-fun c!137319 () Bool)

(assert (=> d!262376 (= c!137319 ((_ is Nil!9043) lt!318892))))

(assert (=> d!262376 (= (++!2339 lt!318892 (++!2339 lt!318890 lt!318891)) lt!319265)))

(declare-fun b!842868 () Bool)

(declare-fun res!385295 () Bool)

(assert (=> b!842868 (=> (not res!385295) (not e!554432))))

(assert (=> b!842868 (= res!385295 (= (size!7550 lt!319265) (+ (size!7550 lt!318892) (size!7550 (++!2339 lt!318890 lt!318891)))))))

(declare-fun b!842869 () Bool)

(assert (=> b!842869 (= e!554432 (or (not (= (++!2339 lt!318890 lt!318891) Nil!9043)) (= lt!319265 lt!318892)))))

(assert (= (and d!262376 c!137319) b!842866))

(assert (= (and d!262376 (not c!137319)) b!842867))

(assert (= (and d!262376 res!385294) b!842868))

(assert (= (and b!842868 res!385295) b!842869))

(assert (=> b!842867 m!1075091))

(declare-fun m!1076927 () Bool)

(assert (=> b!842867 m!1076927))

(declare-fun m!1076929 () Bool)

(assert (=> d!262376 m!1076929))

(assert (=> d!262376 m!1076899))

(assert (=> d!262376 m!1075091))

(declare-fun m!1076931 () Bool)

(assert (=> d!262376 m!1076931))

(declare-fun m!1076933 () Bool)

(assert (=> b!842868 m!1076933))

(assert (=> b!842868 m!1076905))

(assert (=> b!842868 m!1075091))

(declare-fun m!1076935 () Bool)

(assert (=> b!842868 m!1076935))

(assert (=> b!842024 d!262376))

(assert (=> b!842024 d!262094))

(declare-fun bm!50472 () Bool)

(declare-fun call!50477 () Bool)

(assert (=> bm!50472 (= call!50477 (ruleDisjointCharsFromAllFromOtherType!220 (h!14446 rules!2621) (t!93603 rules!2621)))))

(declare-fun b!842878 () Bool)

(declare-fun e!554442 () Bool)

(assert (=> b!842878 (= e!554442 call!50477)))

(declare-fun d!262378 () Bool)

(declare-fun c!137322 () Bool)

(assert (=> d!262378 (= c!137322 (and ((_ is Cons!9045) rules!2621) (not (= (isSeparator!1696 (h!14446 rules!2621)) (isSeparator!1696 (h!14446 rules!2621))))))))

(declare-fun e!554441 () Bool)

(assert (=> d!262378 (= (ruleDisjointCharsFromAllFromOtherType!220 (h!14446 rules!2621) rules!2621) e!554441)))

(declare-fun b!842879 () Bool)

(assert (=> b!842879 (= e!554441 e!554442)))

(declare-fun res!385300 () Bool)

(assert (=> b!842879 (= res!385300 (not ((_ is Cons!9045) rules!2621)))))

(assert (=> b!842879 (=> res!385300 e!554442)))

(declare-fun b!842880 () Bool)

(declare-fun e!554440 () Bool)

(assert (=> b!842880 (= e!554441 e!554440)))

(declare-fun res!385301 () Bool)

(declare-fun rulesUseDisjointChars!108 (Rule!3192 Rule!3192) Bool)

(assert (=> b!842880 (= res!385301 (rulesUseDisjointChars!108 (h!14446 rules!2621) (h!14446 rules!2621)))))

(assert (=> b!842880 (=> (not res!385301) (not e!554440))))

(declare-fun b!842881 () Bool)

(assert (=> b!842881 (= e!554440 call!50477)))

(assert (= (and d!262378 c!137322) b!842880))

(assert (= (and d!262378 (not c!137322)) b!842879))

(assert (= (and b!842880 res!385301) b!842881))

(assert (= (and b!842879 (not res!385300)) b!842878))

(assert (= (or b!842881 b!842878) bm!50472))

(declare-fun m!1076937 () Bool)

(assert (=> bm!50472 m!1076937))

(declare-fun m!1076939 () Bool)

(assert (=> b!842880 m!1076939))

(assert (=> b!841962 d!262378))

(declare-fun d!262380 () Bool)

(declare-fun lt!319268 () Token!3058)

(declare-fun apply!1826 (List!9060 Int) Token!3058)

(assert (=> d!262380 (= lt!319268 (apply!1826 (list!3553 (_1!5990 lt!318948)) 0))))

(declare-fun apply!1827 (Conc!3001 Int) Token!3058)

(assert (=> d!262380 (= lt!319268 (apply!1827 (c!137166 (_1!5990 lt!318948)) 0))))

(declare-fun e!554445 () Bool)

(assert (=> d!262380 e!554445))

(declare-fun res!385304 () Bool)

(assert (=> d!262380 (=> (not res!385304) (not e!554445))))

(assert (=> d!262380 (= res!385304 (<= 0 0))))

(assert (=> d!262380 (= (apply!1819 (_1!5990 lt!318948) 0) lt!319268)))

(declare-fun b!842884 () Bool)

(assert (=> b!842884 (= e!554445 (< 0 (size!7551 (_1!5990 lt!318948))))))

(assert (= (and d!262380 res!385304) b!842884))

(declare-fun m!1076941 () Bool)

(assert (=> d!262380 m!1076941))

(assert (=> d!262380 m!1076941))

(declare-fun m!1076943 () Bool)

(assert (=> d!262380 m!1076943))

(declare-fun m!1076945 () Bool)

(assert (=> d!262380 m!1076945))

(assert (=> b!842884 m!1075265))

(assert (=> b!842156 d!262380))

(declare-fun d!262382 () Bool)

(declare-fun lt!319270 () Bool)

(declare-fun e!554446 () Bool)

(assert (=> d!262382 (= lt!319270 e!554446)))

(declare-fun res!385306 () Bool)

(assert (=> d!262382 (=> (not res!385306) (not e!554446))))

(assert (=> d!262382 (= res!385306 (= (list!3553 (_1!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 lt!318783)))))) (list!3553 (singletonSeq!509 (h!14445 lt!318783)))))))

(declare-fun e!554447 () Bool)

(assert (=> d!262382 (= lt!319270 e!554447)))

(declare-fun res!385307 () Bool)

(assert (=> d!262382 (=> (not res!385307) (not e!554447))))

(declare-fun lt!319269 () tuple2!10328)

(assert (=> d!262382 (= res!385307 (= (size!7551 (_1!5990 lt!319269)) 1))))

(assert (=> d!262382 (= lt!319269 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 lt!318783)))))))

(assert (=> d!262382 (not (isEmpty!5325 rules!2621))))

(assert (=> d!262382 (= (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318783)) lt!319270)))

(declare-fun b!842885 () Bool)

(declare-fun res!385305 () Bool)

(assert (=> b!842885 (=> (not res!385305) (not e!554447))))

(assert (=> b!842885 (= res!385305 (= (apply!1819 (_1!5990 lt!319269) 0) (h!14445 lt!318783)))))

(declare-fun b!842886 () Bool)

(assert (=> b!842886 (= e!554447 (isEmpty!5329 (_2!5990 lt!319269)))))

(declare-fun b!842887 () Bool)

(assert (=> b!842887 (= e!554446 (isEmpty!5329 (_2!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 (h!14445 lt!318783)))))))))

(assert (= (and d!262382 res!385307) b!842885))

(assert (= (and b!842885 res!385305) b!842886))

(assert (= (and d!262382 res!385306) b!842887))

(declare-fun m!1076947 () Bool)

(assert (=> d!262382 m!1076947))

(assert (=> d!262382 m!1076947))

(declare-fun m!1076949 () Bool)

(assert (=> d!262382 m!1076949))

(assert (=> d!262382 m!1074735))

(assert (=> d!262382 m!1076947))

(declare-fun m!1076951 () Bool)

(assert (=> d!262382 m!1076951))

(declare-fun m!1076953 () Bool)

(assert (=> d!262382 m!1076953))

(declare-fun m!1076955 () Bool)

(assert (=> d!262382 m!1076955))

(assert (=> d!262382 m!1076949))

(declare-fun m!1076957 () Bool)

(assert (=> d!262382 m!1076957))

(declare-fun m!1076959 () Bool)

(assert (=> b!842885 m!1076959))

(declare-fun m!1076961 () Bool)

(assert (=> b!842886 m!1076961))

(assert (=> b!842887 m!1076947))

(assert (=> b!842887 m!1076947))

(assert (=> b!842887 m!1076949))

(assert (=> b!842887 m!1076949))

(assert (=> b!842887 m!1076957))

(declare-fun m!1076963 () Bool)

(assert (=> b!842887 m!1076963))

(assert (=> b!842016 d!262382))

(assert (=> d!261870 d!262182))

(declare-fun d!262384 () Bool)

(declare-fun lt!319273 () Int)

(declare-fun size!7556 (List!9060) Int)

(assert (=> d!262384 (= lt!319273 (size!7556 (list!3553 (_1!5990 lt!318948))))))

(declare-fun size!7557 (Conc!3001) Int)

(assert (=> d!262384 (= lt!319273 (size!7557 (c!137166 (_1!5990 lt!318948))))))

(assert (=> d!262384 (= (size!7551 (_1!5990 lt!318948)) lt!319273)))

(declare-fun bs!230092 () Bool)

(assert (= bs!230092 d!262384))

(assert (=> bs!230092 m!1076941))

(assert (=> bs!230092 m!1076941))

(declare-fun m!1076965 () Bool)

(assert (=> bs!230092 m!1076965))

(declare-fun m!1076967 () Bool)

(assert (=> bs!230092 m!1076967))

(assert (=> d!261870 d!262384))

(assert (=> d!261870 d!262140))

(declare-fun d!262386 () Bool)

(assert (=> d!262386 (= (list!3553 (_1!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297))))) (list!3557 (c!137166 (_1!5990 (lex!602 thiss!20117 rules!2621 (print!539 thiss!20117 (singletonSeq!509 separatorToken!297)))))))))

(declare-fun bs!230093 () Bool)

(assert (= bs!230093 d!262386))

(declare-fun m!1076969 () Bool)

(assert (=> bs!230093 m!1076969))

(assert (=> d!261870 d!262386))

(assert (=> d!261870 d!261754))

(declare-fun d!262388 () Bool)

(assert (=> d!262388 (= (list!3553 (singletonSeq!509 separatorToken!297)) (list!3557 (c!137166 (singletonSeq!509 separatorToken!297))))))

(declare-fun bs!230094 () Bool)

(assert (= bs!230094 d!262388))

(declare-fun m!1076971 () Bool)

(assert (=> bs!230094 m!1076971))

(assert (=> d!261870 d!262388))

(assert (=> d!261870 d!262194))

(declare-fun b!842890 () Bool)

(declare-fun e!554448 () Bool)

(declare-fun tp!265106 () Bool)

(assert (=> b!842890 (= e!554448 tp!265106)))

(declare-fun b!842888 () Bool)

(assert (=> b!842888 (= e!554448 tp_is_empty!3941)))

(declare-fun b!842889 () Bool)

(declare-fun tp!265103 () Bool)

(declare-fun tp!265105 () Bool)

(assert (=> b!842889 (= e!554448 (and tp!265103 tp!265105))))

(assert (=> b!842174 (= tp!264930 e!554448)))

(declare-fun b!842891 () Bool)

(declare-fun tp!265104 () Bool)

(declare-fun tp!265102 () Bool)

(assert (=> b!842891 (= e!554448 (and tp!265104 tp!265102))))

(assert (= (and b!842174 ((_ is ElementMatch!2129) (regex!1696 (h!14446 (t!93603 rules!2621))))) b!842888))

(assert (= (and b!842174 ((_ is Concat!3892) (regex!1696 (h!14446 (t!93603 rules!2621))))) b!842889))

(assert (= (and b!842174 ((_ is Star!2129) (regex!1696 (h!14446 (t!93603 rules!2621))))) b!842890))

(assert (= (and b!842174 ((_ is Union!2129) (regex!1696 (h!14446 (t!93603 rules!2621))))) b!842891))

(declare-fun tp!265113 () Bool)

(declare-fun tp!265115 () Bool)

(declare-fun b!842900 () Bool)

(declare-fun e!554453 () Bool)

(assert (=> b!842900 (= e!554453 (and (inv!11519 (left!6705 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))))) tp!265115 (inv!11519 (right!7035 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))))) tp!265113))))

(declare-fun b!842902 () Bool)

(declare-fun e!554454 () Bool)

(declare-fun tp!265114 () Bool)

(assert (=> b!842902 (= e!554454 tp!265114)))

(declare-fun b!842901 () Bool)

(declare-fun inv!11525 (IArray!6005) Bool)

(assert (=> b!842901 (= e!554453 (and (inv!11525 (xs!5689 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))))) e!554454))))

(assert (=> b!842011 (= tp!264860 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107))))) e!554453))))

(assert (= (and b!842011 ((_ is Node!3000) (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))))) b!842900))

(assert (= b!842901 b!842902))

(assert (= (and b!842011 ((_ is Leaf!4436) (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (value!55035 (h!14445 l!5107)))))) b!842901))

(declare-fun m!1076973 () Bool)

(assert (=> b!842900 m!1076973))

(declare-fun m!1076975 () Bool)

(assert (=> b!842900 m!1076975))

(declare-fun m!1076977 () Bool)

(assert (=> b!842901 m!1076977))

(assert (=> b!842011 m!1075051))

(declare-fun b!842905 () Bool)

(declare-fun b_free!25221 () Bool)

(declare-fun b_next!25285 () Bool)

(assert (=> b!842905 (= b_free!25221 (not b_next!25285))))

(declare-fun tp!265117 () Bool)

(declare-fun b_and!73077 () Bool)

(assert (=> b!842905 (= tp!265117 b_and!73077)))

(declare-fun b_free!25223 () Bool)

(declare-fun b_next!25287 () Bool)

(assert (=> b!842905 (= b_free!25223 (not b_next!25287))))

(declare-fun t!93893 () Bool)

(declare-fun tb!58297 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) t!93893) tb!58297))

(declare-fun result!67602 () Bool)

(assert (= result!67602 result!67322))

(assert (=> d!262374 t!93893))

(declare-fun tb!58299 () Bool)

(declare-fun t!93895 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893))))) t!93895) tb!58299))

(declare-fun result!67604 () Bool)

(assert (= result!67604 result!67444))

(assert (=> d!262078 t!93895))

(declare-fun t!93897 () Bool)

(declare-fun tb!58301 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871))))) t!93897) tb!58301))

(declare-fun result!67606 () Bool)

(assert (= result!67606 result!67434))

(assert (=> d!262034 t!93897))

(declare-fun tb!58303 () Bool)

(declare-fun t!93899 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783)))))) t!93899) tb!58303))

(declare-fun result!67608 () Bool)

(assert (= result!67608 result!67374))

(assert (=> d!261904 t!93899))

(assert (=> b!842005 t!93893))

(declare-fun tb!58305 () Bool)

(declare-fun t!93901 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781)))))) t!93901) tb!58305))

(declare-fun result!67610 () Bool)

(assert (= result!67610 result!67590))

(assert (=> d!262346 t!93901))

(declare-fun t!93903 () Bool)

(declare-fun tb!58307 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) t!93903) tb!58307))

(declare-fun result!67612 () Bool)

(assert (= result!67612 result!67330))

(assert (=> b!842037 t!93903))

(declare-fun t!93905 () Bool)

(declare-fun tb!58309 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888))))) t!93905) tb!58309))

(declare-fun result!67614 () Bool)

(assert (= result!67614 result!67524))

(assert (=> d!262270 t!93905))

(declare-fun t!93907 () Bool)

(declare-fun tb!58311 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783))))) t!93907) tb!58311))

(declare-fun result!67616 () Bool)

(assert (= result!67616 result!67414))

(assert (=> d!261972 t!93907))

(assert (=> d!262212 t!93903))

(declare-fun t!93909 () Bool)

(declare-fun tb!58313 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778))))) t!93909) tb!58313))

(declare-fun result!67618 () Bool)

(assert (= result!67618 result!67514))

(assert (=> d!262232 t!93909))

(declare-fun tb!58315 () Bool)

(declare-fun t!93911 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866))))) t!93911) tb!58315))

(declare-fun result!67620 () Bool)

(assert (= result!67620 result!67464))

(assert (=> d!262124 t!93911))

(declare-fun t!93913 () Bool)

(declare-fun tb!58317 () Bool)

(assert (=> (and b!842905 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) t!93913) tb!58317))

(declare-fun result!67622 () Bool)

(assert (= result!67622 result!67454))

(assert (=> b!842465 t!93913))

(declare-fun b_and!73079 () Bool)

(declare-fun tp!265116 () Bool)

(assert (=> b!842905 (= tp!265116 (and (=> t!93907 result!67616) (=> t!93901 result!67610) (=> t!93895 result!67604) (=> t!93909 result!67618) (=> t!93897 result!67606) (=> t!93905 result!67614) (=> t!93899 result!67608) (=> t!93911 result!67620) (=> t!93903 result!67612) (=> t!93893 result!67602) (=> t!93913 result!67622) b_and!73079))))

(declare-fun e!554455 () Bool)

(assert (=> b!842905 (= e!554455 (and tp!265117 tp!265116))))

(declare-fun b!842904 () Bool)

(declare-fun e!554456 () Bool)

(declare-fun tp!265119 () Bool)

(assert (=> b!842904 (= e!554456 (and tp!265119 (inv!11512 (tag!1958 (h!14446 (t!93603 (t!93603 rules!2621))))) (inv!11516 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) e!554455))))

(declare-fun b!842903 () Bool)

(declare-fun e!554457 () Bool)

(declare-fun tp!265118 () Bool)

(assert (=> b!842903 (= e!554457 (and e!554456 tp!265118))))

(assert (=> b!842173 (= tp!264929 e!554457)))

(assert (= b!842904 b!842905))

(assert (= b!842903 b!842904))

(assert (= (and b!842173 ((_ is Cons!9045) (t!93603 (t!93603 rules!2621)))) b!842903))

(declare-fun m!1076979 () Bool)

(assert (=> b!842904 m!1076979))

(declare-fun m!1076981 () Bool)

(assert (=> b!842904 m!1076981))

(declare-fun b!842906 () Bool)

(declare-fun e!554459 () Bool)

(declare-fun tp!265120 () Bool)

(assert (=> b!842906 (= e!554459 (and tp_is_empty!3941 tp!265120))))

(assert (=> b!842180 (= tp!264933 e!554459)))

(assert (= (and b!842180 ((_ is Cons!9043) (t!93601 (originalCharacters!2252 (h!14445 l!5107))))) b!842906))

(declare-fun b!842909 () Bool)

(declare-fun e!554460 () Bool)

(declare-fun tp!265125 () Bool)

(assert (=> b!842909 (= e!554460 tp!265125)))

(declare-fun b!842907 () Bool)

(assert (=> b!842907 (= e!554460 tp_is_empty!3941)))

(declare-fun b!842908 () Bool)

(declare-fun tp!265122 () Bool)

(declare-fun tp!265124 () Bool)

(assert (=> b!842908 (= e!554460 (and tp!265122 tp!265124))))

(assert (=> b!842206 (= tp!264960 e!554460)))

(declare-fun b!842910 () Bool)

(declare-fun tp!265123 () Bool)

(declare-fun tp!265121 () Bool)

(assert (=> b!842910 (= e!554460 (and tp!265123 tp!265121))))

(assert (= (and b!842206 ((_ is ElementMatch!2129) (regOne!4770 (regex!1696 (rule!3119 separatorToken!297))))) b!842907))

(assert (= (and b!842206 ((_ is Concat!3892) (regOne!4770 (regex!1696 (rule!3119 separatorToken!297))))) b!842908))

(assert (= (and b!842206 ((_ is Star!2129) (regOne!4770 (regex!1696 (rule!3119 separatorToken!297))))) b!842909))

(assert (= (and b!842206 ((_ is Union!2129) (regOne!4770 (regex!1696 (rule!3119 separatorToken!297))))) b!842910))

(declare-fun b!842913 () Bool)

(declare-fun e!554461 () Bool)

(declare-fun tp!265130 () Bool)

(assert (=> b!842913 (= e!554461 tp!265130)))

(declare-fun b!842911 () Bool)

(assert (=> b!842911 (= e!554461 tp_is_empty!3941)))

(declare-fun b!842912 () Bool)

(declare-fun tp!265127 () Bool)

(declare-fun tp!265129 () Bool)

(assert (=> b!842912 (= e!554461 (and tp!265127 tp!265129))))

(assert (=> b!842206 (= tp!264962 e!554461)))

(declare-fun b!842914 () Bool)

(declare-fun tp!265128 () Bool)

(declare-fun tp!265126 () Bool)

(assert (=> b!842914 (= e!554461 (and tp!265128 tp!265126))))

(assert (= (and b!842206 ((_ is ElementMatch!2129) (regTwo!4770 (regex!1696 (rule!3119 separatorToken!297))))) b!842911))

(assert (= (and b!842206 ((_ is Concat!3892) (regTwo!4770 (regex!1696 (rule!3119 separatorToken!297))))) b!842912))

(assert (= (and b!842206 ((_ is Star!2129) (regTwo!4770 (regex!1696 (rule!3119 separatorToken!297))))) b!842913))

(assert (= (and b!842206 ((_ is Union!2129) (regTwo!4770 (regex!1696 (rule!3119 separatorToken!297))))) b!842914))

(declare-fun b!842917 () Bool)

(declare-fun e!554464 () Bool)

(assert (=> b!842917 (= e!554464 true)))

(declare-fun b!842916 () Bool)

(declare-fun e!554463 () Bool)

(assert (=> b!842916 (= e!554463 e!554464)))

(declare-fun b!842915 () Bool)

(declare-fun e!554462 () Bool)

(assert (=> b!842915 (= e!554462 e!554463)))

(assert (=> b!841905 e!554462))

(assert (= b!842916 b!842917))

(assert (= b!842915 b!842916))

(assert (= (and b!841905 ((_ is Cons!9045) (t!93603 rules!2621))) b!842915))

(assert (=> b!842917 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 (t!93603 rules!2621))))) (dynLambda!4178 order!5749 lambda!25018))))

(assert (=> b!842917 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621))))) (dynLambda!4178 order!5749 lambda!25018))))

(declare-fun b!842920 () Bool)

(declare-fun e!554465 () Bool)

(declare-fun tp!265135 () Bool)

(assert (=> b!842920 (= e!554465 tp!265135)))

(declare-fun b!842918 () Bool)

(assert (=> b!842918 (= e!554465 tp_is_empty!3941)))

(declare-fun b!842919 () Bool)

(declare-fun tp!265132 () Bool)

(declare-fun tp!265134 () Bool)

(assert (=> b!842919 (= e!554465 (and tp!265132 tp!265134))))

(assert (=> b!842216 (= tp!264971 e!554465)))

(declare-fun b!842921 () Bool)

(declare-fun tp!265133 () Bool)

(declare-fun tp!265131 () Bool)

(assert (=> b!842921 (= e!554465 (and tp!265133 tp!265131))))

(assert (= (and b!842216 ((_ is ElementMatch!2129) (regOne!4771 (regex!1696 (h!14446 rules!2621))))) b!842918))

(assert (= (and b!842216 ((_ is Concat!3892) (regOne!4771 (regex!1696 (h!14446 rules!2621))))) b!842919))

(assert (= (and b!842216 ((_ is Star!2129) (regOne!4771 (regex!1696 (h!14446 rules!2621))))) b!842920))

(assert (= (and b!842216 ((_ is Union!2129) (regOne!4771 (regex!1696 (h!14446 rules!2621))))) b!842921))

(declare-fun b!842924 () Bool)

(declare-fun e!554466 () Bool)

(declare-fun tp!265140 () Bool)

(assert (=> b!842924 (= e!554466 tp!265140)))

(declare-fun b!842922 () Bool)

(assert (=> b!842922 (= e!554466 tp_is_empty!3941)))

(declare-fun b!842923 () Bool)

(declare-fun tp!265137 () Bool)

(declare-fun tp!265139 () Bool)

(assert (=> b!842923 (= e!554466 (and tp!265137 tp!265139))))

(assert (=> b!842216 (= tp!264969 e!554466)))

(declare-fun b!842925 () Bool)

(declare-fun tp!265138 () Bool)

(declare-fun tp!265136 () Bool)

(assert (=> b!842925 (= e!554466 (and tp!265138 tp!265136))))

(assert (= (and b!842216 ((_ is ElementMatch!2129) (regTwo!4771 (regex!1696 (h!14446 rules!2621))))) b!842922))

(assert (= (and b!842216 ((_ is Concat!3892) (regTwo!4771 (regex!1696 (h!14446 rules!2621))))) b!842923))

(assert (= (and b!842216 ((_ is Star!2129) (regTwo!4771 (regex!1696 (h!14446 rules!2621))))) b!842924))

(assert (= (and b!842216 ((_ is Union!2129) (regTwo!4771 (regex!1696 (h!14446 rules!2621))))) b!842925))

(declare-fun b!842928 () Bool)

(declare-fun e!554467 () Bool)

(declare-fun tp!265145 () Bool)

(assert (=> b!842928 (= e!554467 tp!265145)))

(declare-fun b!842926 () Bool)

(assert (=> b!842926 (= e!554467 tp_is_empty!3941)))

(declare-fun b!842927 () Bool)

(declare-fun tp!265142 () Bool)

(declare-fun tp!265144 () Bool)

(assert (=> b!842927 (= e!554467 (and tp!265142 tp!265144))))

(assert (=> b!842207 (= tp!264963 e!554467)))

(declare-fun b!842929 () Bool)

(declare-fun tp!265143 () Bool)

(declare-fun tp!265141 () Bool)

(assert (=> b!842929 (= e!554467 (and tp!265143 tp!265141))))

(assert (= (and b!842207 ((_ is ElementMatch!2129) (reg!2458 (regex!1696 (rule!3119 separatorToken!297))))) b!842926))

(assert (= (and b!842207 ((_ is Concat!3892) (reg!2458 (regex!1696 (rule!3119 separatorToken!297))))) b!842927))

(assert (= (and b!842207 ((_ is Star!2129) (reg!2458 (regex!1696 (rule!3119 separatorToken!297))))) b!842928))

(assert (= (and b!842207 ((_ is Union!2129) (reg!2458 (regex!1696 (rule!3119 separatorToken!297))))) b!842929))

(declare-fun b!842932 () Bool)

(declare-fun e!554468 () Bool)

(declare-fun tp!265150 () Bool)

(assert (=> b!842932 (= e!554468 tp!265150)))

(declare-fun b!842930 () Bool)

(assert (=> b!842930 (= e!554468 tp_is_empty!3941)))

(declare-fun b!842931 () Bool)

(declare-fun tp!265147 () Bool)

(declare-fun tp!265149 () Bool)

(assert (=> b!842931 (= e!554468 (and tp!265147 tp!265149))))

(assert (=> b!842214 (= tp!264970 e!554468)))

(declare-fun b!842933 () Bool)

(declare-fun tp!265148 () Bool)

(declare-fun tp!265146 () Bool)

(assert (=> b!842933 (= e!554468 (and tp!265148 tp!265146))))

(assert (= (and b!842214 ((_ is ElementMatch!2129) (regOne!4770 (regex!1696 (h!14446 rules!2621))))) b!842930))

(assert (= (and b!842214 ((_ is Concat!3892) (regOne!4770 (regex!1696 (h!14446 rules!2621))))) b!842931))

(assert (= (and b!842214 ((_ is Star!2129) (regOne!4770 (regex!1696 (h!14446 rules!2621))))) b!842932))

(assert (= (and b!842214 ((_ is Union!2129) (regOne!4770 (regex!1696 (h!14446 rules!2621))))) b!842933))

(declare-fun b!842936 () Bool)

(declare-fun e!554469 () Bool)

(declare-fun tp!265155 () Bool)

(assert (=> b!842936 (= e!554469 tp!265155)))

(declare-fun b!842934 () Bool)

(assert (=> b!842934 (= e!554469 tp_is_empty!3941)))

(declare-fun b!842935 () Bool)

(declare-fun tp!265152 () Bool)

(declare-fun tp!265154 () Bool)

(assert (=> b!842935 (= e!554469 (and tp!265152 tp!265154))))

(assert (=> b!842214 (= tp!264972 e!554469)))

(declare-fun b!842937 () Bool)

(declare-fun tp!265153 () Bool)

(declare-fun tp!265151 () Bool)

(assert (=> b!842937 (= e!554469 (and tp!265153 tp!265151))))

(assert (= (and b!842214 ((_ is ElementMatch!2129) (regTwo!4770 (regex!1696 (h!14446 rules!2621))))) b!842934))

(assert (= (and b!842214 ((_ is Concat!3892) (regTwo!4770 (regex!1696 (h!14446 rules!2621))))) b!842935))

(assert (= (and b!842214 ((_ is Star!2129) (regTwo!4770 (regex!1696 (h!14446 rules!2621))))) b!842936))

(assert (= (and b!842214 ((_ is Union!2129) (regTwo!4770 (regex!1696 (h!14446 rules!2621))))) b!842937))

(declare-fun b!842940 () Bool)

(declare-fun e!554470 () Bool)

(declare-fun tp!265160 () Bool)

(assert (=> b!842940 (= e!554470 tp!265160)))

(declare-fun b!842938 () Bool)

(assert (=> b!842938 (= e!554470 tp_is_empty!3941)))

(declare-fun b!842939 () Bool)

(declare-fun tp!265157 () Bool)

(declare-fun tp!265159 () Bool)

(assert (=> b!842939 (= e!554470 (and tp!265157 tp!265159))))

(assert (=> b!842215 (= tp!264973 e!554470)))

(declare-fun b!842941 () Bool)

(declare-fun tp!265158 () Bool)

(declare-fun tp!265156 () Bool)

(assert (=> b!842941 (= e!554470 (and tp!265158 tp!265156))))

(assert (= (and b!842215 ((_ is ElementMatch!2129) (reg!2458 (regex!1696 (h!14446 rules!2621))))) b!842938))

(assert (= (and b!842215 ((_ is Concat!3892) (reg!2458 (regex!1696 (h!14446 rules!2621))))) b!842939))

(assert (= (and b!842215 ((_ is Star!2129) (reg!2458 (regex!1696 (h!14446 rules!2621))))) b!842940))

(assert (= (and b!842215 ((_ is Union!2129) (reg!2458 (regex!1696 (h!14446 rules!2621))))) b!842941))

(declare-fun b!842942 () Bool)

(declare-fun e!554471 () Bool)

(declare-fun tp!265161 () Bool)

(assert (=> b!842942 (= e!554471 (and tp_is_empty!3941 tp!265161))))

(assert (=> b!842217 (= tp!264974 e!554471)))

(assert (= (and b!842217 ((_ is Cons!9043) (t!93601 (originalCharacters!2252 separatorToken!297)))) b!842942))

(declare-fun b!842945 () Bool)

(declare-fun e!554472 () Bool)

(declare-fun tp!265166 () Bool)

(assert (=> b!842945 (= e!554472 tp!265166)))

(declare-fun b!842943 () Bool)

(assert (=> b!842943 (= e!554472 tp_is_empty!3941)))

(declare-fun b!842944 () Bool)

(declare-fun tp!265163 () Bool)

(declare-fun tp!265165 () Bool)

(assert (=> b!842944 (= e!554472 (and tp!265163 tp!265165))))

(assert (=> b!842208 (= tp!264961 e!554472)))

(declare-fun b!842946 () Bool)

(declare-fun tp!265164 () Bool)

(declare-fun tp!265162 () Bool)

(assert (=> b!842946 (= e!554472 (and tp!265164 tp!265162))))

(assert (= (and b!842208 ((_ is ElementMatch!2129) (regOne!4771 (regex!1696 (rule!3119 separatorToken!297))))) b!842943))

(assert (= (and b!842208 ((_ is Concat!3892) (regOne!4771 (regex!1696 (rule!3119 separatorToken!297))))) b!842944))

(assert (= (and b!842208 ((_ is Star!2129) (regOne!4771 (regex!1696 (rule!3119 separatorToken!297))))) b!842945))

(assert (= (and b!842208 ((_ is Union!2129) (regOne!4771 (regex!1696 (rule!3119 separatorToken!297))))) b!842946))

(declare-fun b!842949 () Bool)

(declare-fun e!554473 () Bool)

(declare-fun tp!265171 () Bool)

(assert (=> b!842949 (= e!554473 tp!265171)))

(declare-fun b!842947 () Bool)

(assert (=> b!842947 (= e!554473 tp_is_empty!3941)))

(declare-fun b!842948 () Bool)

(declare-fun tp!265168 () Bool)

(declare-fun tp!265170 () Bool)

(assert (=> b!842948 (= e!554473 (and tp!265168 tp!265170))))

(assert (=> b!842208 (= tp!264959 e!554473)))

(declare-fun b!842950 () Bool)

(declare-fun tp!265169 () Bool)

(declare-fun tp!265167 () Bool)

(assert (=> b!842950 (= e!554473 (and tp!265169 tp!265167))))

(assert (= (and b!842208 ((_ is ElementMatch!2129) (regTwo!4771 (regex!1696 (rule!3119 separatorToken!297))))) b!842947))

(assert (= (and b!842208 ((_ is Concat!3892) (regTwo!4771 (regex!1696 (rule!3119 separatorToken!297))))) b!842948))

(assert (= (and b!842208 ((_ is Star!2129) (regTwo!4771 (regex!1696 (rule!3119 separatorToken!297))))) b!842949))

(assert (= (and b!842208 ((_ is Union!2129) (regTwo!4771 (regex!1696 (rule!3119 separatorToken!297))))) b!842950))

(declare-fun b!842953 () Bool)

(declare-fun e!554476 () Bool)

(assert (=> b!842953 (= e!554476 true)))

(declare-fun b!842952 () Bool)

(declare-fun e!554475 () Bool)

(assert (=> b!842952 (= e!554475 e!554476)))

(declare-fun b!842951 () Bool)

(declare-fun e!554474 () Bool)

(assert (=> b!842951 (= e!554474 e!554475)))

(assert (=> b!842062 e!554474))

(assert (= b!842952 b!842953))

(assert (= b!842951 b!842952))

(assert (= (and b!842062 ((_ is Cons!9045) (t!93603 rules!2621))) b!842951))

(assert (=> b!842953 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 (t!93603 rules!2621))))) (dynLambda!4178 order!5749 lambda!25024))))

(assert (=> b!842953 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621))))) (dynLambda!4178 order!5749 lambda!25024))))

(declare-fun b!842956 () Bool)

(declare-fun e!554477 () Bool)

(declare-fun tp!265176 () Bool)

(assert (=> b!842956 (= e!554477 tp!265176)))

(declare-fun b!842954 () Bool)

(assert (=> b!842954 (= e!554477 tp_is_empty!3941)))

(declare-fun b!842955 () Bool)

(declare-fun tp!265173 () Bool)

(declare-fun tp!265175 () Bool)

(assert (=> b!842955 (= e!554477 (and tp!265173 tp!265175))))

(assert (=> b!842193 (= tp!264947 e!554477)))

(declare-fun b!842957 () Bool)

(declare-fun tp!265174 () Bool)

(declare-fun tp!265172 () Bool)

(assert (=> b!842957 (= e!554477 (and tp!265174 tp!265172))))

(assert (= (and b!842193 ((_ is ElementMatch!2129) (regex!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) b!842954))

(assert (= (and b!842193 ((_ is Concat!3892) (regex!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) b!842955))

(assert (= (and b!842193 ((_ is Star!2129) (regex!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) b!842956))

(assert (= (and b!842193 ((_ is Union!2129) (regex!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) b!842957))

(declare-fun b!842960 () Bool)

(declare-fun e!554480 () Bool)

(assert (=> b!842960 (= e!554480 true)))

(declare-fun b!842959 () Bool)

(declare-fun e!554479 () Bool)

(assert (=> b!842959 (= e!554479 e!554480)))

(declare-fun b!842958 () Bool)

(declare-fun e!554478 () Bool)

(assert (=> b!842958 (= e!554478 e!554479)))

(assert (=> b!841998 e!554478))

(assert (= b!842959 b!842960))

(assert (= b!842958 b!842959))

(assert (= (and b!841998 ((_ is Cons!9045) (t!93603 rules!2621))) b!842958))

(assert (=> b!842960 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 (t!93603 rules!2621))))) (dynLambda!4178 order!5749 lambda!25022))))

(assert (=> b!842960 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621))))) (dynLambda!4178 order!5749 lambda!25022))))

(declare-fun e!554481 () Bool)

(declare-fun tp!265179 () Bool)

(declare-fun b!842961 () Bool)

(declare-fun tp!265177 () Bool)

(assert (=> b!842961 (= e!554481 (and (inv!11519 (left!6705 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))))) tp!265179 (inv!11519 (right!7035 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))))) tp!265177))))

(declare-fun b!842963 () Bool)

(declare-fun e!554482 () Bool)

(declare-fun tp!265178 () Bool)

(assert (=> b!842963 (= e!554482 tp!265178)))

(declare-fun b!842962 () Bool)

(assert (=> b!842962 (= e!554481 (and (inv!11525 (xs!5689 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))))) e!554482))))

(assert (=> b!842039 (= tp!264861 (and (inv!11519 (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297)))) e!554481))))

(assert (= (and b!842039 ((_ is Node!3000) (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))))) b!842961))

(assert (= b!842962 b!842963))

(assert (= (and b!842039 ((_ is Leaf!4436) (c!137165 (dynLambda!4180 (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (value!55035 separatorToken!297))))) b!842962))

(declare-fun m!1076983 () Bool)

(assert (=> b!842961 m!1076983))

(declare-fun m!1076985 () Bool)

(assert (=> b!842961 m!1076985))

(declare-fun m!1076987 () Bool)

(assert (=> b!842962 m!1076987))

(assert (=> b!842039 m!1075155))

(declare-fun b!842964 () Bool)

(declare-fun e!554483 () Bool)

(declare-fun tp!265180 () Bool)

(assert (=> b!842964 (= e!554483 (and tp_is_empty!3941 tp!265180))))

(assert (=> b!842192 (= tp!264948 e!554483)))

(assert (= (and b!842192 ((_ is Cons!9043) (originalCharacters!2252 (h!14445 (t!93602 l!5107))))) b!842964))

(declare-fun b!842967 () Bool)

(declare-fun e!554486 () Bool)

(assert (=> b!842967 (= e!554486 true)))

(declare-fun b!842966 () Bool)

(declare-fun e!554485 () Bool)

(assert (=> b!842966 (= e!554485 e!554486)))

(declare-fun b!842965 () Bool)

(declare-fun e!554484 () Bool)

(assert (=> b!842965 (= e!554484 e!554485)))

(assert (=> b!842018 e!554484))

(assert (= b!842966 b!842967))

(assert (= b!842965 b!842966))

(assert (= (and b!842018 ((_ is Cons!9045) (t!93603 rules!2621))) b!842965))

(assert (=> b!842967 (< (dynLambda!4177 order!5747 (toValue!2713 (transformation!1696 (h!14446 (t!93603 rules!2621))))) (dynLambda!4178 order!5749 lambda!25023))))

(assert (=> b!842967 (< (dynLambda!4179 order!5751 (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621))))) (dynLambda!4178 order!5749 lambda!25023))))

(declare-fun b!842970 () Bool)

(declare-fun e!554487 () Bool)

(declare-fun tp!265185 () Bool)

(assert (=> b!842970 (= e!554487 tp!265185)))

(declare-fun b!842968 () Bool)

(assert (=> b!842968 (= e!554487 tp_is_empty!3941)))

(declare-fun b!842969 () Bool)

(declare-fun tp!265182 () Bool)

(declare-fun tp!265184 () Bool)

(assert (=> b!842969 (= e!554487 (and tp!265182 tp!265184))))

(assert (=> b!842211 (= tp!264968 e!554487)))

(declare-fun b!842971 () Bool)

(declare-fun tp!265183 () Bool)

(declare-fun tp!265181 () Bool)

(assert (=> b!842971 (= e!554487 (and tp!265183 tp!265181))))

(assert (= (and b!842211 ((_ is ElementMatch!2129) (reg!2458 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842968))

(assert (= (and b!842211 ((_ is Concat!3892) (reg!2458 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842969))

(assert (= (and b!842211 ((_ is Star!2129) (reg!2458 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842970))

(assert (= (and b!842211 ((_ is Union!2129) (reg!2458 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842971))

(declare-fun b!842974 () Bool)

(declare-fun e!554488 () Bool)

(declare-fun tp!265190 () Bool)

(assert (=> b!842974 (= e!554488 tp!265190)))

(declare-fun b!842972 () Bool)

(assert (=> b!842972 (= e!554488 tp_is_empty!3941)))

(declare-fun b!842973 () Bool)

(declare-fun tp!265187 () Bool)

(declare-fun tp!265189 () Bool)

(assert (=> b!842973 (= e!554488 (and tp!265187 tp!265189))))

(assert (=> b!842210 (= tp!264965 e!554488)))

(declare-fun b!842975 () Bool)

(declare-fun tp!265188 () Bool)

(declare-fun tp!265186 () Bool)

(assert (=> b!842975 (= e!554488 (and tp!265188 tp!265186))))

(assert (= (and b!842210 ((_ is ElementMatch!2129) (regOne!4770 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842972))

(assert (= (and b!842210 ((_ is Concat!3892) (regOne!4770 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842973))

(assert (= (and b!842210 ((_ is Star!2129) (regOne!4770 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842974))

(assert (= (and b!842210 ((_ is Union!2129) (regOne!4770 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842975))

(declare-fun b!842978 () Bool)

(declare-fun e!554489 () Bool)

(declare-fun tp!265195 () Bool)

(assert (=> b!842978 (= e!554489 tp!265195)))

(declare-fun b!842976 () Bool)

(assert (=> b!842976 (= e!554489 tp_is_empty!3941)))

(declare-fun b!842977 () Bool)

(declare-fun tp!265192 () Bool)

(declare-fun tp!265194 () Bool)

(assert (=> b!842977 (= e!554489 (and tp!265192 tp!265194))))

(assert (=> b!842210 (= tp!264967 e!554489)))

(declare-fun b!842979 () Bool)

(declare-fun tp!265193 () Bool)

(declare-fun tp!265191 () Bool)

(assert (=> b!842979 (= e!554489 (and tp!265193 tp!265191))))

(assert (= (and b!842210 ((_ is ElementMatch!2129) (regTwo!4770 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842976))

(assert (= (and b!842210 ((_ is Concat!3892) (regTwo!4770 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842977))

(assert (= (and b!842210 ((_ is Star!2129) (regTwo!4770 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842978))

(assert (= (and b!842210 ((_ is Union!2129) (regTwo!4770 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842979))

(declare-fun b!842983 () Bool)

(declare-fun b_free!25225 () Bool)

(declare-fun b_next!25289 () Bool)

(assert (=> b!842983 (= b_free!25225 (not b_next!25289))))

(declare-fun tp!265197 () Bool)

(declare-fun b_and!73081 () Bool)

(assert (=> b!842983 (= tp!265197 b_and!73081)))

(declare-fun b_free!25227 () Bool)

(declare-fun b_next!25291 () Bool)

(assert (=> b!842983 (= b_free!25227 (not b_next!25291))))

(declare-fun t!93915 () Bool)

(declare-fun tb!58319 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107))))) t!93915) tb!58319))

(declare-fun result!67624 () Bool)

(assert (= result!67624 result!67322))

(assert (=> d!262374 t!93915))

(declare-fun t!93917 () Bool)

(declare-fun tb!58321 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318893))))) t!93917) tb!58321))

(declare-fun result!67626 () Bool)

(assert (= result!67626 result!67444))

(assert (=> d!262078 t!93917))

(declare-fun tb!58323 () Bool)

(declare-fun t!93919 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318871))))) t!93919) tb!58323))

(declare-fun result!67628 () Bool)

(assert (= result!67628 result!67434))

(assert (=> d!262034 t!93919))

(declare-fun tb!58325 () Bool)

(declare-fun t!93921 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318783)))))) t!93921) tb!58325))

(declare-fun result!67630 () Bool)

(assert (= result!67630 result!67374))

(assert (=> d!261904 t!93921))

(assert (=> b!842005 t!93915))

(declare-fun t!93923 () Bool)

(declare-fun tb!58327 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 lt!318781)))))) t!93923) tb!58327))

(declare-fun result!67632 () Bool)

(assert (= result!67632 result!67590))

(assert (=> d!262346 t!93923))

(declare-fun tb!58329 () Bool)

(declare-fun t!93925 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297)))) t!93925) tb!58329))

(declare-fun result!67634 () Bool)

(assert (= result!67634 result!67330))

(assert (=> b!842037 t!93925))

(declare-fun tb!58331 () Bool)

(declare-fun t!93927 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318888))))) t!93927) tb!58331))

(declare-fun result!67636 () Bool)

(assert (= result!67636 result!67524))

(assert (=> d!262270 t!93927))

(declare-fun tb!58333 () Bool)

(declare-fun t!93929 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318783))))) t!93929) tb!58333))

(declare-fun result!67638 () Bool)

(assert (= result!67638 result!67414))

(assert (=> d!261972 t!93929))

(assert (=> d!262212 t!93925))

(declare-fun t!93931 () Bool)

(declare-fun tb!58335 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318778))))) t!93931) tb!58335))

(declare-fun result!67640 () Bool)

(assert (= result!67640 result!67514))

(assert (=> d!262232 t!93931))

(declare-fun tb!58337 () Bool)

(declare-fun t!93933 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 lt!318866))))) t!93933) tb!58337))

(declare-fun result!67642 () Bool)

(assert (= result!67642 result!67464))

(assert (=> d!262124 t!93933))

(declare-fun t!93935 () Bool)

(declare-fun tb!58339 () Bool)

(assert (=> (and b!842983 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107)))))) t!93935) tb!58339))

(declare-fun result!67644 () Bool)

(assert (= result!67644 result!67454))

(assert (=> b!842465 t!93935))

(declare-fun tp!265198 () Bool)

(declare-fun b_and!73083 () Bool)

(assert (=> b!842983 (= tp!265198 (and (=> t!93927 result!67636) (=> t!93931 result!67640) (=> t!93923 result!67632) (=> t!93919 result!67628) (=> t!93935 result!67644) (=> t!93915 result!67624) (=> t!93929 result!67638) (=> t!93921 result!67630) (=> t!93933 result!67642) (=> t!93925 result!67634) (=> t!93917 result!67626) b_and!73083))))

(declare-fun tp!265200 () Bool)

(declare-fun b!842981 () Bool)

(declare-fun e!554490 () Bool)

(declare-fun e!554494 () Bool)

(assert (=> b!842981 (= e!554494 (and (inv!21 (value!55035 (h!14445 (t!93602 (t!93602 l!5107))))) e!554490 tp!265200))))

(declare-fun e!554493 () Bool)

(declare-fun b!842980 () Bool)

(declare-fun tp!265196 () Bool)

(assert (=> b!842980 (= e!554493 (and (inv!11515 (h!14445 (t!93602 (t!93602 l!5107)))) e!554494 tp!265196))))

(declare-fun e!554495 () Bool)

(assert (=> b!842983 (= e!554495 (and tp!265197 tp!265198))))

(assert (=> b!842191 (= tp!264944 e!554493)))

(declare-fun tp!265199 () Bool)

(declare-fun b!842982 () Bool)

(assert (=> b!842982 (= e!554490 (and tp!265199 (inv!11512 (tag!1958 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (inv!11516 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) e!554495))))

(assert (= b!842982 b!842983))

(assert (= b!842981 b!842982))

(assert (= b!842980 b!842981))

(assert (= (and b!842191 ((_ is Cons!9044) (t!93602 (t!93602 l!5107)))) b!842980))

(declare-fun m!1076989 () Bool)

(assert (=> b!842981 m!1076989))

(declare-fun m!1076991 () Bool)

(assert (=> b!842980 m!1076991))

(declare-fun m!1076993 () Bool)

(assert (=> b!842982 m!1076993))

(declare-fun m!1076995 () Bool)

(assert (=> b!842982 m!1076995))

(declare-fun b!842986 () Bool)

(declare-fun e!554496 () Bool)

(declare-fun tp!265205 () Bool)

(assert (=> b!842986 (= e!554496 tp!265205)))

(declare-fun b!842984 () Bool)

(assert (=> b!842984 (= e!554496 tp_is_empty!3941)))

(declare-fun b!842985 () Bool)

(declare-fun tp!265202 () Bool)

(declare-fun tp!265204 () Bool)

(assert (=> b!842985 (= e!554496 (and tp!265202 tp!265204))))

(assert (=> b!842212 (= tp!264966 e!554496)))

(declare-fun b!842987 () Bool)

(declare-fun tp!265203 () Bool)

(declare-fun tp!265201 () Bool)

(assert (=> b!842987 (= e!554496 (and tp!265203 tp!265201))))

(assert (= (and b!842212 ((_ is ElementMatch!2129) (regOne!4771 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842984))

(assert (= (and b!842212 ((_ is Concat!3892) (regOne!4771 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842985))

(assert (= (and b!842212 ((_ is Star!2129) (regOne!4771 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842986))

(assert (= (and b!842212 ((_ is Union!2129) (regOne!4771 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842987))

(declare-fun b!842990 () Bool)

(declare-fun e!554497 () Bool)

(declare-fun tp!265210 () Bool)

(assert (=> b!842990 (= e!554497 tp!265210)))

(declare-fun b!842988 () Bool)

(assert (=> b!842988 (= e!554497 tp_is_empty!3941)))

(declare-fun b!842989 () Bool)

(declare-fun tp!265207 () Bool)

(declare-fun tp!265209 () Bool)

(assert (=> b!842989 (= e!554497 (and tp!265207 tp!265209))))

(assert (=> b!842212 (= tp!264964 e!554497)))

(declare-fun b!842991 () Bool)

(declare-fun tp!265208 () Bool)

(declare-fun tp!265206 () Bool)

(assert (=> b!842991 (= e!554497 (and tp!265208 tp!265206))))

(assert (= (and b!842212 ((_ is ElementMatch!2129) (regTwo!4771 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842988))

(assert (= (and b!842212 ((_ is Concat!3892) (regTwo!4771 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842989))

(assert (= (and b!842212 ((_ is Star!2129) (regTwo!4771 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842990))

(assert (= (and b!842212 ((_ is Union!2129) (regTwo!4771 (regex!1696 (rule!3119 (h!14445 l!5107)))))) b!842991))

(declare-fun b_lambda!27783 () Bool)

(assert (= b_lambda!27753 (or d!261758 b_lambda!27783)))

(declare-fun bs!230095 () Bool)

(declare-fun d!262390 () Bool)

(assert (= bs!230095 (and d!262390 d!261758)))

(assert (=> bs!230095 (= (dynLambda!4181 lambda!25018 (h!14445 (list!3553 (seqFromList!1518 lt!318783)))) (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 (list!3553 (seqFromList!1518 lt!318783)))))))

(assert (=> bs!230095 m!1076107))

(assert (=> b!842671 d!262390))

(declare-fun b_lambda!27785 () Bool)

(assert (= b_lambda!27703 (or d!261822 b_lambda!27785)))

(declare-fun bs!230096 () Bool)

(declare-fun d!262392 () Bool)

(assert (= bs!230096 (and d!262392 d!261822)))

(assert (=> bs!230096 (= (dynLambda!4181 lambda!25023 (h!14445 lt!318783)) (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318783)))))

(assert (=> bs!230096 m!1075073))

(assert (=> b!842239 d!262392))

(declare-fun b_lambda!27787 () Bool)

(assert (= b_lambda!27721 (or d!261798 b_lambda!27787)))

(declare-fun bs!230097 () Bool)

(declare-fun d!262394 () Bool)

(assert (= bs!230097 (and d!262394 d!261798)))

(assert (=> bs!230097 (= (dynLambda!4181 lambda!25022 (h!14445 l!5107)) (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 l!5107)))))

(assert (=> bs!230097 m!1075047))

(assert (=> b!842385 d!262394))

(declare-fun b_lambda!27789 () Bool)

(assert (= b_lambda!27725 (or b!841773 b_lambda!27789)))

(declare-fun bs!230098 () Bool)

(declare-fun d!262396 () Bool)

(assert (= bs!230098 (and d!262396 b!841773)))

(assert (=> bs!230098 (= (dynLambda!4181 lambda!25004 (h!14445 (t!93602 l!5107))) (not (isSeparator!1696 (rule!3119 (h!14445 (t!93602 l!5107))))))))

(assert (=> b!842410 d!262396))

(declare-fun b_lambda!27791 () Bool)

(assert (= b_lambda!27729 (or (and b!841780 b_free!25187 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))))) (and b!842194 b_free!25211) (and b!841770 b_free!25195 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))))) (and b!842983 b_free!25227 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))))) (and b!841785 b_free!25191 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))))) (and b!842905 b_free!25223 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))))) (and b!842175 b_free!25207 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))))) b_lambda!27791)))

(declare-fun b_lambda!27793 () Bool)

(assert (= b_lambda!27717 (or d!261854 b_lambda!27793)))

(declare-fun bs!230099 () Bool)

(declare-fun d!262398 () Bool)

(assert (= bs!230099 (and d!262398 d!261854)))

(assert (=> bs!230099 (= (dynLambda!4181 lambda!25024 (h!14445 lt!318781)) (rulesProduceIndividualToken!562 thiss!20117 rules!2621 (h!14445 lt!318781)))))

(assert (=> bs!230099 m!1074787))

(assert (=> b!842337 d!262398))

(declare-fun b_lambda!27795 () Bool)

(assert (= b_lambda!27747 (or (and b!841780 b_free!25187) (and b!841785 b_free!25191 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) (and b!842983 b_free!25227 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) (and b!842175 b_free!25207 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) (and b!842905 b_free!25223 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) (and b!842194 b_free!25211 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) (and b!841770 b_free!25195 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))) (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))))) b_lambda!27795)))

(declare-fun b_lambda!27797 () Bool)

(assert (= b_lambda!27781 (or (and b!841770 b_free!25195) (and b!841780 b_free!25187 (= (toChars!2572 (transformation!1696 (rule!3119 separatorToken!297))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (and b!842175 b_free!25207 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 rules!2621)))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (and b!842905 b_free!25223 (= (toChars!2572 (transformation!1696 (h!14446 (t!93603 (t!93603 rules!2621))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (and b!842194 b_free!25211 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 l!5107))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (and b!841785 b_free!25191 (= (toChars!2572 (transformation!1696 (h!14446 rules!2621))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) (and b!842983 b_free!25227 (= (toChars!2572 (transformation!1696 (rule!3119 (h!14445 (t!93602 (t!93602 l!5107)))))) (toChars!2572 (transformation!1696 (rule!3119 (h!14445 l!5107)))))) b_lambda!27797)))

(check-sat (not d!262236) (not b!842979) (not b!842857) (not b!842386) (not b!842908) (not tb!58143) (not d!262376) (not d!262228) (not d!261920) (not b_next!25259) (not b!842411) (not b!842940) (not d!262040) (not b!842682) (not b!842990) (not b!842423) (not b!842619) (not d!262130) (not b!842509) (not b!842991) (not b!842405) (not b!842473) (not b!842962) (not b!842443) (not b!842925) (not b!842424) (not b!842457) (not bs!230099) (not bs!230096) (not b!842637) (not d!262062) (not b!842848) (not b!842903) (not b!842340) (not b!842426) (not b!842404) (not b_next!25251) (not b_lambda!27795) (not d!262268) (not d!262094) b_and!73069 (not b!842497) (not b!842653) (not d!262384) (not b_lambda!27715) (not b!842672) (not b!842264) (not b!842412) (not b!842935) (not d!262116) (not b!842492) (not b_lambda!27727) (not d!262108) (not b!842854) b_and!73067 (not b!842982) (not b!842928) b_and!73079 (not b!842508) (not b!842971) (not d!262342) (not d!262368) (not bm!50472) (not b!842956) (not b!842949) (not d!261906) (not d!262114) (not bs!230095) (not d!262078) (not b_next!25287) (not b!842924) (not b!842941) (not b!842858) (not d!262124) (not b!842618) b_and!73075 (not b!842680) (not b!842453) (not b!842910) (not d!262360) (not d!262008) (not d!262242) (not b_lambda!27785) (not b_lambda!27789) (not b!842849) (not b!842341) (not b!842498) (not b_lambda!27793) (not b!842636) (not b!842936) (not b!842494) (not b_next!25273) (not b!842981) (not b!842891) (not d!262038) (not tb!58153) (not d!262138) (not b!842467) (not b!842970) (not b!842921) (not b_next!25249) (not d!262030) (not b!842448) (not b!842445) (not b!842231) (not tb!58133) (not b!842951) (not d!262224) (not d!262044) (not b!842265) (not b!842914) (not b!842407) (not d!262382) (not b!842417) b_and!73081 (not tb!58213) (not b!842843) (not d!262072) (not b!842464) (not d!261904) (not d!262374) (not b!842442) (not b_lambda!27701) (not b!842662) (not b!842425) (not b!842955) (not d!261972) (not b!842572) (not b!842338) (not b!842500) (not b!842944) (not d!262122) (not b!842011) (not b!842880) (not b!842929) (not d!262066) (not b!842958) (not b_lambda!27779) (not tb!58223) (not b!842471) (not d!262304) (not b!842885) (not b!842514) (not d!262348) (not b!842948) (not b!842861) (not b!842262) (not d!262182) (not d!262344) (not b_lambda!27731) (not b_next!25291) (not tb!58113) (not b!842370) (not d!262370) (not b!842458) (not b!842685) (not d!262120) (not b!842510) (not b!842237) (not b_next!25253) (not b!842659) (not b!842906) (not d!262128) (not b!842503) (not b!842459) (not d!262212) (not b!842569) (not b!842884) (not b!842431) (not b!842649) (not b!842486) (not b!842339) (not b!842963) b_and!73073 (not d!262070) (not d!262046) (not b!842625) b_and!73083 (not d!262194) (not d!262362) (not b!842950) (not tb!58163) (not b_lambda!27787) (not b!842989) (not d!262262) (not b!842912) (not b_next!25257) b_and!72845 (not b_lambda!27751) (not d!262340) (not b!842933) (not d!262266) (not b!842450) (not b!842961) (not b!842909) (not b_lambda!27783) (not b!842901) (not b!842632) (not b!842939) (not d!261890) (not d!262060) (not d!262232) (not b!842887) (not d!261980) (not d!262084) b_and!72801 (not b!842864) (not b!842273) (not b!842978) (not b!842931) (not b!842836) (not b!842946) (not b!842466) (not b_next!25269) (not d!262134) (not d!262388) (not b!842842) (not b!842449) (not d!262358) (not b!842261) (not b!842919) (not d!261976) (not b!842964) (not bs!230097) (not b!842470) (not b!842853) (not b!842837) (not d!262350) (not tb!58073) (not d!262082) (not d!262054) (not b!842493) (not d!262140) (not d!262278) (not b!842868) (not b!842626) (not b!842932) b_and!73071 (not b!842980) (not b!842886) (not d!262056) (not b!842927) (not b_next!25255) (not b!842647) (not d!262346) (not b_lambda!27697) (not b!842920) (not d!261908) b_and!73077 (not b!842847) (not b_next!25289) (not b!842838) b_and!72797 (not b!842573) b_and!72841 (not b!842570) (not b!842986) (not b_lambda!27705) (not d!262034) (not b!842945) (not d!262118) (not b!842463) (not b!842504) (not d!262074) (not d!262380) (not b!842616) (not b!842505) (not b!842974) (not b!842975) (not d!262238) (not b!842416) (not d!261914) (not b_next!25271) (not d!262132) (not b!842942) (not d!262356) (not b!842839) (not d!262252) (not d!262106) (not b_lambda!27699) (not b!842418) (not b_lambda!27723) (not b!842640) (not b!842900) (not b!842474) (not b!842915) (not d!262076) b_and!72805 (not b!842923) (not b!842904) (not b_next!25275) (not b!842477) (not d!262210) (not b!842263) (not b!842902) (not d!262096) (not b!842408) (not tb!58287) (not b!842430) (not b!842484) (not b!842937) (not b_lambda!27797) (not b!842661) (not b!842336) tp_is_empty!3941 (not b!842652) (not b_lambda!27791) (not b!842987) (not b!842973) (not d!262102) (not b!842840) (not b!842631) (not b!842268) (not d!262364) (not b!842965) (not d!262086) (not b!842422) (not b!842240) (not b!842039) (not b!842985) (not d!262022) (not d!262302) (not b_next!25285) (not d!262214) (not d!262270) (not d!262276) (not b!842913) (not b!842867) (not b!842495) (not d!262366) (not d!262386) (not b!842440) (not b!842472) (not b!842862) (not b!842845) (not b!842688) (not b!842429) (not b!842432) (not b!842890) (not b!842957) (not b!842468) (not b!842446) (not b!842977) (not b_lambda!27755) (not b!842841) (not b!842501) (not b!842465) (not b!842969) (not b!842641) (not b!842889) (not d!261978) (not b!842371))
(check-sat (not b_next!25259) (not b_next!25251) b_and!73069 b_and!73081 (not b_next!25291) b_and!72845 b_and!73071 (not b_next!25255) (not b_next!25271) (not b_next!25285) b_and!73079 b_and!73067 (not b_next!25287) b_and!73075 (not b_next!25273) (not b_next!25249) (not b_next!25253) b_and!73073 (not b_next!25257) b_and!73083 (not b_next!25269) b_and!72801 b_and!73077 b_and!72797 (not b_next!25289) b_and!72841 b_and!72805 (not b_next!25275))
