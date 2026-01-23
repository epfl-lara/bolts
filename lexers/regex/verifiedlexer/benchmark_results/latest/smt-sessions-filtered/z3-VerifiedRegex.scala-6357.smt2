; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!328282 () Bool)

(assert start!328282)

(declare-fun b!3530786 () Bool)

(declare-fun b_free!91041 () Bool)

(declare-fun b_next!91745 () Bool)

(assert (=> b!3530786 (= b_free!91041 (not b_next!91745))))

(declare-fun tp!1088502 () Bool)

(declare-fun b_and!251839 () Bool)

(assert (=> b!3530786 (= tp!1088502 b_and!251839)))

(declare-fun b_free!91043 () Bool)

(declare-fun b_next!91747 () Bool)

(assert (=> b!3530786 (= b_free!91043 (not b_next!91747))))

(declare-fun tp!1088511 () Bool)

(declare-fun b_and!251841 () Bool)

(assert (=> b!3530786 (= tp!1088511 b_and!251841)))

(declare-fun b!3530790 () Bool)

(declare-fun b_free!91045 () Bool)

(declare-fun b_next!91749 () Bool)

(assert (=> b!3530790 (= b_free!91045 (not b_next!91749))))

(declare-fun tp!1088510 () Bool)

(declare-fun b_and!251843 () Bool)

(assert (=> b!3530790 (= tp!1088510 b_and!251843)))

(declare-fun b_free!91047 () Bool)

(declare-fun b_next!91751 () Bool)

(assert (=> b!3530790 (= b_free!91047 (not b_next!91751))))

(declare-fun tp!1088504 () Bool)

(declare-fun b_and!251845 () Bool)

(assert (=> b!3530790 (= tp!1088504 b_and!251845)))

(declare-fun b!3530792 () Bool)

(declare-fun b_free!91049 () Bool)

(declare-fun b_next!91753 () Bool)

(assert (=> b!3530792 (= b_free!91049 (not b_next!91753))))

(declare-fun tp!1088506 () Bool)

(declare-fun b_and!251847 () Bool)

(assert (=> b!3530792 (= tp!1088506 b_and!251847)))

(declare-fun b_free!91051 () Bool)

(declare-fun b_next!91755 () Bool)

(assert (=> b!3530792 (= b_free!91051 (not b_next!91755))))

(declare-fun tp!1088503 () Bool)

(declare-fun b_and!251849 () Bool)

(assert (=> b!3530792 (= tp!1088503 b_and!251849)))

(declare-fun bs!565921 () Bool)

(declare-fun b!3530776 () Bool)

(declare-fun b!3530762 () Bool)

(assert (= bs!565921 (and b!3530776 b!3530762)))

(declare-fun lambda!123019 () Int)

(declare-fun lambda!123018 () Int)

(assert (=> bs!565921 (not (= lambda!123019 lambda!123018))))

(declare-fun b!3530812 () Bool)

(declare-fun e!2185848 () Bool)

(assert (=> b!3530812 (= e!2185848 true)))

(declare-fun b!3530811 () Bool)

(declare-fun e!2185847 () Bool)

(assert (=> b!3530811 (= e!2185847 e!2185848)))

(declare-fun b!3530810 () Bool)

(declare-fun e!2185846 () Bool)

(assert (=> b!3530810 (= e!2185846 e!2185847)))

(assert (=> b!3530776 e!2185846))

(assert (= b!3530811 b!3530812))

(assert (= b!3530810 b!3530811))

(declare-datatypes ((C!20692 0))(
  ( (C!20693 (val!12394 Int)) )
))
(declare-datatypes ((Regex!10253 0))(
  ( (ElementMatch!10253 (c!608596 C!20692)) (Concat!15977 (regOne!21018 Regex!10253) (regTwo!21018 Regex!10253)) (EmptyExpr!10253) (Star!10253 (reg!10582 Regex!10253)) (EmptyLang!10253) (Union!10253 (regOne!21019 Regex!10253) (regTwo!21019 Regex!10253)) )
))
(declare-datatypes ((List!37548 0))(
  ( (Nil!37424) (Cons!37424 (h!42844 (_ BitVec 16)) (t!282965 List!37548)) )
))
(declare-datatypes ((TokenValue!5724 0))(
  ( (FloatLiteralValue!11448 (text!40513 List!37548)) (TokenValueExt!5723 (__x!23665 Int)) (Broken!28620 (value!177013 List!37548)) (Object!5847) (End!5724) (Def!5724) (Underscore!5724) (Match!5724) (Else!5724) (Error!5724) (Case!5724) (If!5724) (Extends!5724) (Abstract!5724) (Class!5724) (Val!5724) (DelimiterValue!11448 (del!5784 List!37548)) (KeywordValue!5730 (value!177014 List!37548)) (CommentValue!11448 (value!177015 List!37548)) (WhitespaceValue!11448 (value!177016 List!37548)) (IndentationValue!5724 (value!177017 List!37548)) (String!41953) (Int32!5724) (Broken!28621 (value!177018 List!37548)) (Boolean!5725) (Unit!53137) (OperatorValue!5727 (op!5784 List!37548)) (IdentifierValue!11448 (value!177019 List!37548)) (IdentifierValue!11449 (value!177020 List!37548)) (WhitespaceValue!11449 (value!177021 List!37548)) (True!11448) (False!11448) (Broken!28622 (value!177022 List!37548)) (Broken!28623 (value!177023 List!37548)) (True!11449) (RightBrace!5724) (RightBracket!5724) (Colon!5724) (Null!5724) (Comma!5724) (LeftBracket!5724) (False!11449) (LeftBrace!5724) (ImaginaryLiteralValue!5724 (text!40514 List!37548)) (StringLiteralValue!17172 (value!177024 List!37548)) (EOFValue!5724 (value!177025 List!37548)) (IdentValue!5724 (value!177026 List!37548)) (DelimiterValue!11449 (value!177027 List!37548)) (DedentValue!5724 (value!177028 List!37548)) (NewLineValue!5724 (value!177029 List!37548)) (IntegerValue!17172 (value!177030 (_ BitVec 32)) (text!40515 List!37548)) (IntegerValue!17173 (value!177031 Int) (text!40516 List!37548)) (Times!5724) (Or!5724) (Equal!5724) (Minus!5724) (Broken!28624 (value!177032 List!37548)) (And!5724) (Div!5724) (LessEqual!5724) (Mod!5724) (Concat!15978) (Not!5724) (Plus!5724) (SpaceValue!5724 (value!177033 List!37548)) (IntegerValue!17174 (value!177034 Int) (text!40517 List!37548)) (StringLiteralValue!17173 (text!40518 List!37548)) (FloatLiteralValue!11449 (text!40519 List!37548)) (BytesLiteralValue!5724 (value!177035 List!37548)) (CommentValue!11449 (value!177036 List!37548)) (StringLiteralValue!17174 (value!177037 List!37548)) (ErrorTokenValue!5724 (msg!5785 List!37548)) )
))
(declare-datatypes ((List!37549 0))(
  ( (Nil!37425) (Cons!37425 (h!42845 C!20692) (t!282966 List!37549)) )
))
(declare-datatypes ((IArray!22731 0))(
  ( (IArray!22732 (innerList!11423 List!37549)) )
))
(declare-datatypes ((Conc!11363 0))(
  ( (Node!11363 (left!29248 Conc!11363) (right!29578 Conc!11363) (csize!22956 Int) (cheight!11574 Int)) (Leaf!17721 (xs!14553 IArray!22731) (csize!22957 Int)) (Empty!11363) )
))
(declare-datatypes ((BalanceConc!22340 0))(
  ( (BalanceConc!22341 (c!608597 Conc!11363)) )
))
(declare-datatypes ((String!41954 0))(
  ( (String!41955 (value!177038 String)) )
))
(declare-datatypes ((TokenValueInjection!10876 0))(
  ( (TokenValueInjection!10877 (toValue!7750 Int) (toChars!7609 Int)) )
))
(declare-datatypes ((Rule!10788 0))(
  ( (Rule!10789 (regex!5494 Regex!10253) (tag!6142 String!41954) (isSeparator!5494 Bool) (transformation!5494 TokenValueInjection!10876)) )
))
(declare-datatypes ((List!37550 0))(
  ( (Nil!37426) (Cons!37426 (h!42846 Rule!10788) (t!282967 List!37550)) )
))
(declare-fun rules!2135 () List!37550)

(get-info :version)

(assert (= (and b!3530776 ((_ is Cons!37426) rules!2135)) b!3530810))

(declare-fun order!20203 () Int)

(declare-fun order!20201 () Int)

(declare-fun dynLambda!15992 (Int Int) Int)

(declare-fun dynLambda!15993 (Int Int) Int)

(assert (=> b!3530812 (< (dynLambda!15992 order!20201 (toValue!7750 (transformation!5494 (h!42846 rules!2135)))) (dynLambda!15993 order!20203 lambda!123019))))

(declare-fun order!20205 () Int)

(declare-fun dynLambda!15994 (Int Int) Int)

(assert (=> b!3530812 (< (dynLambda!15994 order!20205 (toChars!7609 (transformation!5494 (h!42846 rules!2135)))) (dynLambda!15993 order!20203 lambda!123019))))

(assert (=> b!3530776 true))

(declare-fun b!3530758 () Bool)

(declare-fun e!2185835 () Bool)

(declare-fun e!2185833 () Bool)

(assert (=> b!3530758 (= e!2185835 e!2185833)))

(declare-fun res!1424861 () Bool)

(assert (=> b!3530758 (=> res!1424861 e!2185833)))

(declare-datatypes ((Token!10354 0))(
  ( (Token!10355 (value!177039 TokenValue!5724) (rule!8162 Rule!10788) (size!28497 Int) (originalCharacters!6208 List!37549)) )
))
(declare-datatypes ((List!37551 0))(
  ( (Nil!37427) (Cons!37427 (h!42847 Token!10354) (t!282968 List!37551)) )
))
(declare-fun tokens!494 () List!37551)

(assert (=> b!3530758 (= res!1424861 (or (isSeparator!5494 (rule!8162 (h!42847 tokens!494))) (isSeparator!5494 (rule!8162 (h!42847 (t!282968 tokens!494))))))))

(declare-datatypes ((Unit!53138 0))(
  ( (Unit!53139) )
))
(declare-fun lt!1207634 () Unit!53138)

(declare-fun forallContained!1441 (List!37551 Int Token!10354) Unit!53138)

(assert (=> b!3530758 (= lt!1207634 (forallContained!1441 tokens!494 lambda!123018 (h!42847 (t!282968 tokens!494))))))

(declare-fun lt!1207625 () Unit!53138)

(assert (=> b!3530758 (= lt!1207625 (forallContained!1441 tokens!494 lambda!123018 (h!42847 tokens!494)))))

(declare-fun b!3530759 () Bool)

(declare-fun e!2185810 () Bool)

(declare-fun e!2185805 () Bool)

(assert (=> b!3530759 (= e!2185810 e!2185805)))

(declare-fun res!1424882 () Bool)

(assert (=> b!3530759 (=> res!1424882 e!2185805)))

(declare-fun lt!1207626 () List!37549)

(declare-fun lt!1207644 () List!37549)

(assert (=> b!3530759 (= res!1424882 (not (= lt!1207626 lt!1207644)))))

(declare-fun lt!1207618 () List!37549)

(declare-fun lt!1207621 () List!37549)

(declare-fun lt!1207636 () List!37549)

(declare-fun ++!9285 (List!37549 List!37549) List!37549)

(assert (=> b!3530759 (= lt!1207644 (++!9285 (++!9285 lt!1207621 lt!1207618) lt!1207636))))

(declare-fun e!2185812 () Bool)

(declare-fun e!2185809 () Bool)

(declare-fun tp!1088508 () Bool)

(declare-fun b!3530760 () Bool)

(declare-fun inv!50663 (String!41954) Bool)

(declare-fun inv!50666 (TokenValueInjection!10876) Bool)

(assert (=> b!3530760 (= e!2185812 (and tp!1088508 (inv!50663 (tag!6142 (h!42846 rules!2135))) (inv!50666 (transformation!5494 (h!42846 rules!2135))) e!2185809))))

(declare-fun b!3530761 () Bool)

(declare-fun res!1424856 () Bool)

(declare-fun e!2185825 () Bool)

(assert (=> b!3530761 (=> (not res!1424856) (not e!2185825))))

(declare-datatypes ((IArray!22733 0))(
  ( (IArray!22734 (innerList!11424 List!37551)) )
))
(declare-datatypes ((Conc!11364 0))(
  ( (Node!11364 (left!29249 Conc!11364) (right!29579 Conc!11364) (csize!22958 Int) (cheight!11575 Int)) (Leaf!17722 (xs!14554 IArray!22733) (csize!22959 Int)) (Empty!11364) )
))
(declare-datatypes ((BalanceConc!22342 0))(
  ( (BalanceConc!22343 (c!608598 Conc!11364)) )
))
(declare-datatypes ((tuple2!37292 0))(
  ( (tuple2!37293 (_1!21780 BalanceConc!22342) (_2!21780 BalanceConc!22340)) )
))
(declare-fun lt!1207604 () tuple2!37292)

(declare-fun separatorToken!241 () Token!10354)

(declare-fun apply!8954 (BalanceConc!22342 Int) Token!10354)

(assert (=> b!3530761 (= res!1424856 (= (apply!8954 (_1!21780 lt!1207604) 0) separatorToken!241))))

(declare-fun res!1424863 () Bool)

(declare-fun e!2185832 () Bool)

(assert (=> start!328282 (=> (not res!1424863) (not e!2185832))))

(declare-datatypes ((LexerInterface!5083 0))(
  ( (LexerInterfaceExt!5080 (__x!23666 Int)) (Lexer!5081) )
))
(declare-fun thiss!18206 () LexerInterface!5083)

(assert (=> start!328282 (= res!1424863 ((_ is Lexer!5081) thiss!18206))))

(assert (=> start!328282 e!2185832))

(assert (=> start!328282 true))

(declare-fun e!2185823 () Bool)

(assert (=> start!328282 e!2185823))

(declare-fun e!2185834 () Bool)

(assert (=> start!328282 e!2185834))

(declare-fun e!2185837 () Bool)

(declare-fun inv!50667 (Token!10354) Bool)

(assert (=> start!328282 (and (inv!50667 separatorToken!241) e!2185837)))

(declare-fun res!1424877 () Bool)

(assert (=> b!3530762 (=> (not res!1424877) (not e!2185832))))

(declare-fun forall!8061 (List!37551 Int) Bool)

(assert (=> b!3530762 (= res!1424877 (forall!8061 tokens!494 lambda!123018))))

(declare-fun b!3530763 () Bool)

(declare-fun res!1424885 () Bool)

(assert (=> b!3530763 (=> (not res!1424885) (not e!2185832))))

(declare-fun sepAndNonSepRulesDisjointChars!1688 (List!37550 List!37550) Bool)

(assert (=> b!3530763 (= res!1424885 (sepAndNonSepRulesDisjointChars!1688 rules!2135 rules!2135))))

(declare-fun b!3530764 () Bool)

(declare-fun res!1424866 () Bool)

(assert (=> b!3530764 (=> (not res!1424866) (not e!2185832))))

(declare-fun rulesInvariant!4480 (LexerInterface!5083 List!37550) Bool)

(assert (=> b!3530764 (= res!1424866 (rulesInvariant!4480 thiss!18206 rules!2135))))

(declare-fun b!3530765 () Bool)

(declare-fun e!2185819 () Unit!53138)

(declare-fun Unit!53140 () Unit!53138)

(assert (=> b!3530765 (= e!2185819 Unit!53140)))

(declare-fun b!3530766 () Bool)

(declare-fun res!1424881 () Bool)

(assert (=> b!3530766 (=> (not res!1424881) (not e!2185832))))

(assert (=> b!3530766 (= res!1424881 (and (not ((_ is Nil!37427) tokens!494)) (not ((_ is Nil!37427) (t!282968 tokens!494)))))))

(declare-fun b!3530767 () Bool)

(declare-fun e!2185830 () Bool)

(declare-fun lt!1207648 () tuple2!37292)

(declare-fun isEmpty!21919 (BalanceConc!22340) Bool)

(assert (=> b!3530767 (= e!2185830 (not (isEmpty!21919 (_2!21780 lt!1207648))))))

(declare-fun tp!1088509 () Bool)

(declare-fun b!3530768 () Bool)

(declare-fun e!2185814 () Bool)

(declare-fun e!2185818 () Bool)

(assert (=> b!3530768 (= e!2185814 (and tp!1088509 (inv!50663 (tag!6142 (rule!8162 separatorToken!241))) (inv!50666 (transformation!5494 (rule!8162 separatorToken!241))) e!2185818))))

(declare-fun b!3530769 () Bool)

(declare-fun e!2185838 () Bool)

(assert (=> b!3530769 (= e!2185838 e!2185835)))

(declare-fun res!1424857 () Bool)

(assert (=> b!3530769 (=> res!1424857 e!2185835)))

(declare-fun lt!1207605 () BalanceConc!22340)

(declare-fun isEmpty!21920 (BalanceConc!22342) Bool)

(declare-fun lex!2409 (LexerInterface!5083 List!37550 BalanceConc!22340) tuple2!37292)

(assert (=> b!3530769 (= res!1424857 (isEmpty!21920 (_1!21780 (lex!2409 thiss!18206 rules!2135 lt!1207605))))))

(declare-fun seqFromList!4041 (List!37549) BalanceConc!22340)

(assert (=> b!3530769 (= lt!1207605 (seqFromList!4041 lt!1207621))))

(declare-fun b!3530770 () Bool)

(declare-fun e!2185827 () Bool)

(declare-fun lt!1207647 () Rule!10788)

(assert (=> b!3530770 (= e!2185827 (= (rule!8162 (h!42847 tokens!494)) lt!1207647))))

(declare-fun b!3530771 () Bool)

(declare-fun res!1424878 () Bool)

(assert (=> b!3530771 (=> (not res!1424878) (not e!2185832))))

(assert (=> b!3530771 (= res!1424878 (isSeparator!5494 (rule!8162 separatorToken!241)))))

(declare-fun b!3530772 () Bool)

(declare-fun e!2185820 () Bool)

(declare-fun e!2185824 () Bool)

(assert (=> b!3530772 (= e!2185820 e!2185824)))

(declare-fun res!1424871 () Bool)

(assert (=> b!3530772 (=> (not res!1424871) (not e!2185824))))

(declare-fun lt!1207624 () Rule!10788)

(declare-fun lt!1207617 () List!37549)

(declare-fun matchR!4837 (Regex!10253 List!37549) Bool)

(assert (=> b!3530772 (= res!1424871 (matchR!4837 (regex!5494 lt!1207624) lt!1207617))))

(declare-datatypes ((Option!7651 0))(
  ( (None!7650) (Some!7650 (v!37180 Rule!10788)) )
))
(declare-fun lt!1207632 () Option!7651)

(declare-fun get!12026 (Option!7651) Rule!10788)

(assert (=> b!3530772 (= lt!1207624 (get!12026 lt!1207632))))

(declare-fun e!2185817 () Bool)

(declare-fun tp!1088505 () Bool)

(declare-fun b!3530773 () Bool)

(assert (=> b!3530773 (= e!2185834 (and (inv!50667 (h!42847 tokens!494)) e!2185817 tp!1088505))))

(declare-fun b!3530774 () Bool)

(declare-fun res!1424859 () Bool)

(assert (=> b!3530774 (=> (not res!1424859) (not e!2185832))))

(declare-fun isEmpty!21921 (List!37550) Bool)

(assert (=> b!3530774 (= res!1424859 (not (isEmpty!21921 rules!2135)))))

(declare-fun tp!1088512 () Bool)

(declare-fun e!2185828 () Bool)

(declare-fun b!3530775 () Bool)

(declare-fun e!2185804 () Bool)

(assert (=> b!3530775 (= e!2185828 (and tp!1088512 (inv!50663 (tag!6142 (rule!8162 (h!42847 tokens!494)))) (inv!50666 (transformation!5494 (rule!8162 (h!42847 tokens!494)))) e!2185804))))

(declare-fun e!2185826 () Bool)

(declare-fun e!2185807 () Bool)

(assert (=> b!3530776 (= e!2185826 e!2185807)))

(declare-fun res!1424872 () Bool)

(assert (=> b!3530776 (=> res!1424872 e!2185807)))

(declare-fun contains!7047 (List!37550 Rule!10788) Bool)

(assert (=> b!3530776 (= res!1424872 (not (contains!7047 rules!2135 (rule!8162 separatorToken!241))))))

(declare-fun lt!1207609 () List!37549)

(declare-fun lt!1207602 () C!20692)

(declare-fun contains!7048 (List!37549 C!20692) Bool)

(assert (=> b!3530776 (not (contains!7048 lt!1207609 lt!1207602))))

(declare-fun lt!1207616 () Unit!53138)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!176 (LexerInterface!5083 List!37550 List!37550 Rule!10788 Rule!10788 C!20692) Unit!53138)

(assert (=> b!3530776 (= lt!1207616 (lemmaSepRuleNotContainsCharContainedInANonSepRule!176 thiss!18206 rules!2135 rules!2135 (rule!8162 (h!42847 (t!282968 tokens!494))) (rule!8162 separatorToken!241) lt!1207602))))

(declare-fun lt!1207629 () Unit!53138)

(declare-fun e!2185811 () Unit!53138)

(assert (=> b!3530776 (= lt!1207629 e!2185811)))

(declare-fun c!608594 () Bool)

(declare-fun usedCharacters!728 (Regex!10253) List!37549)

(assert (=> b!3530776 (= c!608594 (not (contains!7048 (usedCharacters!728 (regex!5494 (rule!8162 (h!42847 (t!282968 tokens!494))))) lt!1207602)))))

(declare-fun head!7413 (List!37549) C!20692)

(assert (=> b!3530776 (= lt!1207602 (head!7413 lt!1207617))))

(declare-datatypes ((tuple2!37294 0))(
  ( (tuple2!37295 (_1!21781 Token!10354) (_2!21781 List!37549)) )
))
(declare-datatypes ((Option!7652 0))(
  ( (None!7651) (Some!7651 (v!37181 tuple2!37294)) )
))
(declare-fun maxPrefixOneRule!1790 (LexerInterface!5083 Rule!10788 List!37549) Option!7652)

(declare-fun apply!8955 (TokenValueInjection!10876 BalanceConc!22340) TokenValue!5724)

(declare-fun size!28498 (List!37549) Int)

(assert (=> b!3530776 (= (maxPrefixOneRule!1790 thiss!18206 (rule!8162 (h!42847 (t!282968 tokens!494))) lt!1207617) (Some!7651 (tuple2!37295 (Token!10355 (apply!8955 (transformation!5494 (rule!8162 (h!42847 (t!282968 tokens!494)))) (seqFromList!4041 lt!1207617)) (rule!8162 (h!42847 (t!282968 tokens!494))) (size!28498 lt!1207617) lt!1207617) Nil!37425)))))

(declare-fun lt!1207637 () Unit!53138)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!883 (LexerInterface!5083 List!37550 List!37549 List!37549 List!37549 Rule!10788) Unit!53138)

(assert (=> b!3530776 (= lt!1207637 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!883 thiss!18206 rules!2135 lt!1207617 lt!1207617 Nil!37425 (rule!8162 (h!42847 (t!282968 tokens!494)))))))

(assert (=> b!3530776 e!2185820))

(declare-fun res!1424879 () Bool)

(assert (=> b!3530776 (=> (not res!1424879) (not e!2185820))))

(declare-fun isDefined!5898 (Option!7651) Bool)

(assert (=> b!3530776 (= res!1424879 (isDefined!5898 lt!1207632))))

(declare-fun getRuleFromTag!1137 (LexerInterface!5083 List!37550 String!41954) Option!7651)

(assert (=> b!3530776 (= lt!1207632 (getRuleFromTag!1137 thiss!18206 rules!2135 (tag!6142 (rule!8162 (h!42847 (t!282968 tokens!494))))))))

(declare-fun lt!1207631 () Unit!53138)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1137 (LexerInterface!5083 List!37550 List!37549 Token!10354) Unit!53138)

(assert (=> b!3530776 (= lt!1207631 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1137 thiss!18206 rules!2135 lt!1207617 (h!42847 (t!282968 tokens!494))))))

(declare-fun lt!1207630 () Bool)

(assert (=> b!3530776 lt!1207630))

(declare-fun lt!1207633 () Unit!53138)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1072 (LexerInterface!5083 List!37550 List!37551 Token!10354) Unit!53138)

(assert (=> b!3530776 (= lt!1207633 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1072 thiss!18206 rules!2135 tokens!494 (h!42847 (t!282968 tokens!494))))))

(declare-fun lt!1207607 () List!37549)

(declare-fun lt!1207611 () List!37549)

(declare-fun maxPrefix!2623 (LexerInterface!5083 List!37550 List!37549) Option!7652)

(assert (=> b!3530776 (= (maxPrefix!2623 thiss!18206 rules!2135 lt!1207607) (Some!7651 (tuple2!37295 (h!42847 tokens!494) lt!1207611)))))

(declare-fun lt!1207612 () Unit!53138)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!250 (LexerInterface!5083 List!37550 Token!10354 Rule!10788 List!37549 Rule!10788) Unit!53138)

(assert (=> b!3530776 (= lt!1207612 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!250 thiss!18206 rules!2135 (h!42847 tokens!494) (rule!8162 (h!42847 tokens!494)) lt!1207611 (rule!8162 separatorToken!241)))))

(declare-fun lt!1207627 () C!20692)

(assert (=> b!3530776 (not (contains!7048 (usedCharacters!728 (regex!5494 (rule!8162 (h!42847 tokens!494)))) lt!1207627))))

(declare-fun lt!1207635 () Unit!53138)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!294 (LexerInterface!5083 List!37550 List!37550 Rule!10788 Rule!10788 C!20692) Unit!53138)

(assert (=> b!3530776 (= lt!1207635 (lemmaNonSepRuleNotContainsCharContainedInASepRule!294 thiss!18206 rules!2135 rules!2135 (rule!8162 (h!42847 tokens!494)) (rule!8162 separatorToken!241) lt!1207627))))

(declare-fun lt!1207638 () Unit!53138)

(assert (=> b!3530776 (= lt!1207638 (forallContained!1441 tokens!494 lambda!123019 (h!42847 (t!282968 tokens!494))))))

(declare-fun lt!1207640 () Bool)

(assert (=> b!3530776 (= lt!1207630 (not lt!1207640))))

(declare-fun rulesProduceIndividualToken!2575 (LexerInterface!5083 List!37550 Token!10354) Bool)

(assert (=> b!3530776 (= lt!1207630 (rulesProduceIndividualToken!2575 thiss!18206 rules!2135 (h!42847 (t!282968 tokens!494))))))

(assert (=> b!3530776 (= lt!1207640 e!2185830)))

(declare-fun res!1424858 () Bool)

(assert (=> b!3530776 (=> res!1424858 e!2185830)))

(declare-fun size!28499 (BalanceConc!22342) Int)

(assert (=> b!3530776 (= res!1424858 (not (= (size!28499 (_1!21780 lt!1207648)) 1)))))

(declare-fun lt!1207628 () BalanceConc!22340)

(assert (=> b!3530776 (= lt!1207648 (lex!2409 thiss!18206 rules!2135 lt!1207628))))

(declare-fun lt!1207619 () BalanceConc!22342)

(declare-fun printTailRec!1578 (LexerInterface!5083 BalanceConc!22342 Int BalanceConc!22340) BalanceConc!22340)

(assert (=> b!3530776 (= lt!1207628 (printTailRec!1578 thiss!18206 lt!1207619 0 (BalanceConc!22341 Empty!11363)))))

(declare-fun print!2148 (LexerInterface!5083 BalanceConc!22342) BalanceConc!22340)

(assert (=> b!3530776 (= lt!1207628 (print!2148 thiss!18206 lt!1207619))))

(declare-fun singletonSeq!2590 (Token!10354) BalanceConc!22342)

(assert (=> b!3530776 (= lt!1207619 (singletonSeq!2590 (h!42847 (t!282968 tokens!494))))))

(assert (=> b!3530776 e!2185825))

(declare-fun res!1424874 () Bool)

(assert (=> b!3530776 (=> (not res!1424874) (not e!2185825))))

(assert (=> b!3530776 (= res!1424874 (= (size!28499 (_1!21780 lt!1207604)) 1))))

(declare-fun lt!1207613 () BalanceConc!22340)

(assert (=> b!3530776 (= lt!1207604 (lex!2409 thiss!18206 rules!2135 lt!1207613))))

(declare-fun lt!1207623 () BalanceConc!22342)

(assert (=> b!3530776 (= lt!1207613 (printTailRec!1578 thiss!18206 lt!1207623 0 (BalanceConc!22341 Empty!11363)))))

(assert (=> b!3530776 (= lt!1207613 (print!2148 thiss!18206 lt!1207623))))

(assert (=> b!3530776 (= lt!1207623 (singletonSeq!2590 separatorToken!241))))

(declare-fun lt!1207600 () Unit!53138)

(assert (=> b!3530776 (= lt!1207600 e!2185819)))

(declare-fun c!608595 () Bool)

(assert (=> b!3530776 (= c!608595 (not (contains!7048 lt!1207609 lt!1207627)))))

(assert (=> b!3530776 (= lt!1207627 (head!7413 lt!1207618))))

(assert (=> b!3530776 (= lt!1207609 (usedCharacters!728 (regex!5494 (rule!8162 separatorToken!241))))))

(declare-fun e!2185822 () Bool)

(assert (=> b!3530776 e!2185822))

(declare-fun res!1424870 () Bool)

(assert (=> b!3530776 (=> (not res!1424870) (not e!2185822))))

(declare-fun lt!1207642 () Option!7651)

(assert (=> b!3530776 (= res!1424870 (isDefined!5898 lt!1207642))))

(assert (=> b!3530776 (= lt!1207642 (getRuleFromTag!1137 thiss!18206 rules!2135 (tag!6142 (rule!8162 separatorToken!241))))))

(declare-fun lt!1207620 () Unit!53138)

(assert (=> b!3530776 (= lt!1207620 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1137 thiss!18206 rules!2135 lt!1207618 separatorToken!241))))

(assert (=> b!3530776 (= (maxPrefixOneRule!1790 thiss!18206 (rule!8162 (h!42847 tokens!494)) lt!1207621) (Some!7651 (tuple2!37295 (Token!10355 (apply!8955 (transformation!5494 (rule!8162 (h!42847 tokens!494))) lt!1207605) (rule!8162 (h!42847 tokens!494)) (size!28498 lt!1207621) lt!1207621) Nil!37425)))))

(declare-fun lt!1207646 () Unit!53138)

(assert (=> b!3530776 (= lt!1207646 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!883 thiss!18206 rules!2135 lt!1207621 lt!1207621 Nil!37425 (rule!8162 (h!42847 tokens!494))))))

(declare-fun e!2185808 () Bool)

(assert (=> b!3530776 e!2185808))

(declare-fun res!1424883 () Bool)

(assert (=> b!3530776 (=> (not res!1424883) (not e!2185808))))

(declare-fun lt!1207645 () Option!7651)

(assert (=> b!3530776 (= res!1424883 (isDefined!5898 lt!1207645))))

(assert (=> b!3530776 (= lt!1207645 (getRuleFromTag!1137 thiss!18206 rules!2135 (tag!6142 (rule!8162 (h!42847 tokens!494)))))))

(declare-fun lt!1207606 () Unit!53138)

(assert (=> b!3530776 (= lt!1207606 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1137 thiss!18206 rules!2135 lt!1207621 (h!42847 tokens!494)))))

(declare-fun lt!1207622 () Unit!53138)

(assert (=> b!3530776 (= lt!1207622 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1072 thiss!18206 rules!2135 tokens!494 (h!42847 tokens!494)))))

(declare-fun b!3530777 () Bool)

(declare-fun e!2185806 () Bool)

(assert (=> b!3530777 (= e!2185806 false)))

(declare-fun b!3530778 () Bool)

(declare-fun e!2185839 () Bool)

(declare-fun lt!1207614 () Rule!10788)

(assert (=> b!3530778 (= e!2185839 (= (rule!8162 separatorToken!241) lt!1207614))))

(declare-fun b!3530779 () Bool)

(declare-fun e!2185821 () Bool)

(assert (=> b!3530779 (= e!2185821 false)))

(declare-fun b!3530780 () Bool)

(declare-fun e!2185829 () Bool)

(assert (=> b!3530780 (= e!2185829 e!2185838)))

(declare-fun res!1424880 () Bool)

(assert (=> b!3530780 (=> res!1424880 e!2185838)))

(declare-fun lt!1207610 () List!37549)

(declare-fun lt!1207608 () List!37549)

(assert (=> b!3530780 (= res!1424880 (or (not (= lt!1207610 lt!1207621)) (not (= lt!1207608 lt!1207621))))))

(declare-fun list!13701 (BalanceConc!22340) List!37549)

(declare-fun charsOf!3508 (Token!10354) BalanceConc!22340)

(assert (=> b!3530780 (= lt!1207621 (list!13701 (charsOf!3508 (h!42847 tokens!494))))))

(declare-fun b!3530781 () Bool)

(declare-fun res!1424873 () Bool)

(assert (=> b!3530781 (=> res!1424873 e!2185830)))

(assert (=> b!3530781 (= res!1424873 (not (= (apply!8954 (_1!21780 lt!1207648) 0) (h!42847 (t!282968 tokens!494)))))))

(declare-fun b!3530782 () Bool)

(declare-fun res!1424884 () Bool)

(assert (=> b!3530782 (=> (not res!1424884) (not e!2185832))))

(declare-fun rulesProduceEachTokenIndividually!1534 (LexerInterface!5083 List!37550 BalanceConc!22342) Bool)

(declare-fun seqFromList!4042 (List!37551) BalanceConc!22342)

(assert (=> b!3530782 (= res!1424884 (rulesProduceEachTokenIndividually!1534 thiss!18206 rules!2135 (seqFromList!4042 tokens!494)))))

(declare-fun b!3530783 () Bool)

(assert (=> b!3530783 (= e!2185822 e!2185839)))

(declare-fun res!1424867 () Bool)

(assert (=> b!3530783 (=> (not res!1424867) (not e!2185839))))

(assert (=> b!3530783 (= res!1424867 (matchR!4837 (regex!5494 lt!1207614) lt!1207618))))

(assert (=> b!3530783 (= lt!1207614 (get!12026 lt!1207642))))

(declare-fun b!3530784 () Bool)

(declare-fun res!1424860 () Bool)

(assert (=> b!3530784 (=> res!1424860 e!2185838)))

(assert (=> b!3530784 (= res!1424860 (not (rulesProduceIndividualToken!2575 thiss!18206 rules!2135 (h!42847 tokens!494))))))

(declare-fun b!3530785 () Bool)

(assert (=> b!3530785 (= e!2185832 (not e!2185829))))

(declare-fun res!1424875 () Bool)

(assert (=> b!3530785 (=> res!1424875 e!2185829)))

(assert (=> b!3530785 (= res!1424875 (not (= lt!1207608 lt!1207610)))))

(declare-fun printList!1631 (LexerInterface!5083 List!37551) List!37549)

(assert (=> b!3530785 (= lt!1207610 (printList!1631 thiss!18206 (Cons!37427 (h!42847 tokens!494) Nil!37427)))))

(declare-fun lt!1207641 () BalanceConc!22340)

(assert (=> b!3530785 (= lt!1207608 (list!13701 lt!1207641))))

(declare-fun lt!1207615 () BalanceConc!22342)

(assert (=> b!3530785 (= lt!1207641 (printTailRec!1578 thiss!18206 lt!1207615 0 (BalanceConc!22341 Empty!11363)))))

(assert (=> b!3530785 (= lt!1207641 (print!2148 thiss!18206 lt!1207615))))

(assert (=> b!3530785 (= lt!1207615 (singletonSeq!2590 (h!42847 tokens!494)))))

(assert (=> b!3530786 (= e!2185818 (and tp!1088502 tp!1088511))))

(declare-fun b!3530787 () Bool)

(assert (=> b!3530787 (= e!2185824 (= (rule!8162 (h!42847 (t!282968 tokens!494))) lt!1207624))))

(declare-fun b!3530788 () Bool)

(declare-fun tp!1088514 () Bool)

(declare-fun inv!21 (TokenValue!5724) Bool)

(assert (=> b!3530788 (= e!2185837 (and (inv!21 (value!177039 separatorToken!241)) e!2185814 tp!1088514))))

(declare-fun b!3530789 () Bool)

(assert (=> b!3530789 (= e!2185807 true)))

(declare-fun lt!1207601 () Bool)

(assert (=> b!3530789 (= lt!1207601 (contains!7047 rules!2135 (rule!8162 (h!42847 (t!282968 tokens!494)))))))

(assert (=> b!3530790 (= e!2185804 (and tp!1088510 tp!1088504))))

(declare-fun b!3530791 () Bool)

(assert (=> b!3530791 (= e!2185805 e!2185826)))

(declare-fun res!1424869 () Bool)

(assert (=> b!3530791 (=> res!1424869 e!2185826)))

(assert (=> b!3530791 (= res!1424869 (not (= lt!1207626 lt!1207607)))))

(assert (=> b!3530791 (= lt!1207644 lt!1207607)))

(assert (=> b!3530791 (= lt!1207607 (++!9285 lt!1207621 lt!1207611))))

(declare-fun lt!1207603 () Unit!53138)

(declare-fun lemmaConcatAssociativity!2028 (List!37549 List!37549 List!37549) Unit!53138)

(assert (=> b!3530791 (= lt!1207603 (lemmaConcatAssociativity!2028 lt!1207621 lt!1207618 lt!1207636))))

(assert (=> b!3530792 (= e!2185809 (and tp!1088506 tp!1088503))))

(declare-fun b!3530793 () Bool)

(declare-fun Unit!53141 () Unit!53138)

(assert (=> b!3530793 (= e!2185811 Unit!53141)))

(declare-fun b!3530794 () Bool)

(assert (=> b!3530794 (= e!2185808 e!2185827)))

(declare-fun res!1424862 () Bool)

(assert (=> b!3530794 (=> (not res!1424862) (not e!2185827))))

(assert (=> b!3530794 (= res!1424862 (matchR!4837 (regex!5494 lt!1207647) lt!1207621))))

(assert (=> b!3530794 (= lt!1207647 (get!12026 lt!1207645))))

(declare-fun tp!1088513 () Bool)

(declare-fun b!3530795 () Bool)

(assert (=> b!3530795 (= e!2185817 (and (inv!21 (value!177039 (h!42847 tokens!494))) e!2185828 tp!1088513))))

(declare-fun b!3530796 () Bool)

(declare-fun res!1424876 () Bool)

(assert (=> b!3530796 (=> (not res!1424876) (not e!2185832))))

(assert (=> b!3530796 (= res!1424876 (rulesProduceIndividualToken!2575 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3530797 () Bool)

(declare-fun tp!1088507 () Bool)

(assert (=> b!3530797 (= e!2185823 (and e!2185812 tp!1088507))))

(declare-fun b!3530798 () Bool)

(declare-fun Unit!53142 () Unit!53138)

(assert (=> b!3530798 (= e!2185819 Unit!53142)))

(declare-fun lt!1207643 () Unit!53138)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!552 (Regex!10253 List!37549 C!20692) Unit!53138)

(assert (=> b!3530798 (= lt!1207643 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!552 (regex!5494 (rule!8162 separatorToken!241)) lt!1207618 lt!1207627))))

(declare-fun res!1424865 () Bool)

(assert (=> b!3530798 (= res!1424865 (not (matchR!4837 (regex!5494 (rule!8162 separatorToken!241)) lt!1207618)))))

(assert (=> b!3530798 (=> (not res!1424865) (not e!2185821))))

(assert (=> b!3530798 e!2185821))

(declare-fun b!3530799 () Bool)

(assert (=> b!3530799 (= e!2185825 (isEmpty!21919 (_2!21780 lt!1207604)))))

(declare-fun b!3530800 () Bool)

(assert (=> b!3530800 (= e!2185833 e!2185810)))

(declare-fun res!1424868 () Bool)

(assert (=> b!3530800 (=> res!1424868 e!2185810)))

(declare-fun printWithSeparatorTokenList!370 (LexerInterface!5083 List!37551 Token!10354) List!37549)

(assert (=> b!3530800 (= res!1424868 (not (= lt!1207636 (++!9285 (++!9285 lt!1207617 lt!1207618) (printWithSeparatorTokenList!370 thiss!18206 (t!282968 (t!282968 tokens!494)) separatorToken!241)))))))

(assert (=> b!3530800 (= lt!1207617 (list!13701 (charsOf!3508 (h!42847 (t!282968 tokens!494)))))))

(assert (=> b!3530800 (= lt!1207611 (++!9285 lt!1207618 lt!1207636))))

(assert (=> b!3530800 (= lt!1207618 (list!13701 (charsOf!3508 separatorToken!241)))))

(assert (=> b!3530800 (= lt!1207636 (printWithSeparatorTokenList!370 thiss!18206 (t!282968 tokens!494) separatorToken!241))))

(assert (=> b!3530800 (= lt!1207626 (printWithSeparatorTokenList!370 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3530801 () Bool)

(declare-fun Unit!53143 () Unit!53138)

(assert (=> b!3530801 (= e!2185811 Unit!53143)))

(declare-fun lt!1207639 () Unit!53138)

(assert (=> b!3530801 (= lt!1207639 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!552 (regex!5494 (rule!8162 (h!42847 (t!282968 tokens!494)))) lt!1207617 lt!1207602))))

(declare-fun res!1424864 () Bool)

(assert (=> b!3530801 (= res!1424864 (not (matchR!4837 (regex!5494 (rule!8162 (h!42847 (t!282968 tokens!494)))) lt!1207617)))))

(assert (=> b!3530801 (=> (not res!1424864) (not e!2185806))))

(assert (=> b!3530801 e!2185806))

(assert (= (and start!328282 res!1424863) b!3530774))

(assert (= (and b!3530774 res!1424859) b!3530764))

(assert (= (and b!3530764 res!1424866) b!3530782))

(assert (= (and b!3530782 res!1424884) b!3530796))

(assert (= (and b!3530796 res!1424876) b!3530771))

(assert (= (and b!3530771 res!1424878) b!3530762))

(assert (= (and b!3530762 res!1424877) b!3530763))

(assert (= (and b!3530763 res!1424885) b!3530766))

(assert (= (and b!3530766 res!1424881) b!3530785))

(assert (= (and b!3530785 (not res!1424875)) b!3530780))

(assert (= (and b!3530780 (not res!1424880)) b!3530784))

(assert (= (and b!3530784 (not res!1424860)) b!3530769))

(assert (= (and b!3530769 (not res!1424857)) b!3530758))

(assert (= (and b!3530758 (not res!1424861)) b!3530800))

(assert (= (and b!3530800 (not res!1424868)) b!3530759))

(assert (= (and b!3530759 (not res!1424882)) b!3530791))

(assert (= (and b!3530791 (not res!1424869)) b!3530776))

(assert (= (and b!3530776 res!1424883) b!3530794))

(assert (= (and b!3530794 res!1424862) b!3530770))

(assert (= (and b!3530776 res!1424870) b!3530783))

(assert (= (and b!3530783 res!1424867) b!3530778))

(assert (= (and b!3530776 c!608595) b!3530798))

(assert (= (and b!3530776 (not c!608595)) b!3530765))

(assert (= (and b!3530798 res!1424865) b!3530779))

(assert (= (and b!3530776 res!1424874) b!3530761))

(assert (= (and b!3530761 res!1424856) b!3530799))

(assert (= (and b!3530776 (not res!1424858)) b!3530781))

(assert (= (and b!3530781 (not res!1424873)) b!3530767))

(assert (= (and b!3530776 res!1424879) b!3530772))

(assert (= (and b!3530772 res!1424871) b!3530787))

(assert (= (and b!3530776 c!608594) b!3530801))

(assert (= (and b!3530776 (not c!608594)) b!3530793))

(assert (= (and b!3530801 res!1424864) b!3530777))

(assert (= (and b!3530776 (not res!1424872)) b!3530789))

(assert (= b!3530760 b!3530792))

(assert (= b!3530797 b!3530760))

(assert (= (and start!328282 ((_ is Cons!37426) rules!2135)) b!3530797))

(assert (= b!3530775 b!3530790))

(assert (= b!3530795 b!3530775))

(assert (= b!3530773 b!3530795))

(assert (= (and start!328282 ((_ is Cons!37427) tokens!494)) b!3530773))

(assert (= b!3530768 b!3530786))

(assert (= b!3530788 b!3530768))

(assert (= start!328282 b!3530788))

(declare-fun m!3986991 () Bool)

(assert (=> b!3530781 m!3986991))

(declare-fun m!3986993 () Bool)

(assert (=> b!3530776 m!3986993))

(declare-fun m!3986995 () Bool)

(assert (=> b!3530776 m!3986995))

(declare-fun m!3986997 () Bool)

(assert (=> b!3530776 m!3986997))

(declare-fun m!3986999 () Bool)

(assert (=> b!3530776 m!3986999))

(declare-fun m!3987001 () Bool)

(assert (=> b!3530776 m!3987001))

(declare-fun m!3987003 () Bool)

(assert (=> b!3530776 m!3987003))

(declare-fun m!3987005 () Bool)

(assert (=> b!3530776 m!3987005))

(declare-fun m!3987007 () Bool)

(assert (=> b!3530776 m!3987007))

(declare-fun m!3987009 () Bool)

(assert (=> b!3530776 m!3987009))

(declare-fun m!3987011 () Bool)

(assert (=> b!3530776 m!3987011))

(declare-fun m!3987013 () Bool)

(assert (=> b!3530776 m!3987013))

(declare-fun m!3987015 () Bool)

(assert (=> b!3530776 m!3987015))

(declare-fun m!3987017 () Bool)

(assert (=> b!3530776 m!3987017))

(declare-fun m!3987019 () Bool)

(assert (=> b!3530776 m!3987019))

(declare-fun m!3987021 () Bool)

(assert (=> b!3530776 m!3987021))

(declare-fun m!3987023 () Bool)

(assert (=> b!3530776 m!3987023))

(declare-fun m!3987025 () Bool)

(assert (=> b!3530776 m!3987025))

(declare-fun m!3987027 () Bool)

(assert (=> b!3530776 m!3987027))

(declare-fun m!3987029 () Bool)

(assert (=> b!3530776 m!3987029))

(declare-fun m!3987031 () Bool)

(assert (=> b!3530776 m!3987031))

(declare-fun m!3987033 () Bool)

(assert (=> b!3530776 m!3987033))

(declare-fun m!3987035 () Bool)

(assert (=> b!3530776 m!3987035))

(declare-fun m!3987037 () Bool)

(assert (=> b!3530776 m!3987037))

(declare-fun m!3987039 () Bool)

(assert (=> b!3530776 m!3987039))

(assert (=> b!3530776 m!3987031))

(declare-fun m!3987041 () Bool)

(assert (=> b!3530776 m!3987041))

(declare-fun m!3987043 () Bool)

(assert (=> b!3530776 m!3987043))

(declare-fun m!3987045 () Bool)

(assert (=> b!3530776 m!3987045))

(declare-fun m!3987047 () Bool)

(assert (=> b!3530776 m!3987047))

(declare-fun m!3987049 () Bool)

(assert (=> b!3530776 m!3987049))

(declare-fun m!3987051 () Bool)

(assert (=> b!3530776 m!3987051))

(declare-fun m!3987053 () Bool)

(assert (=> b!3530776 m!3987053))

(declare-fun m!3987055 () Bool)

(assert (=> b!3530776 m!3987055))

(declare-fun m!3987057 () Bool)

(assert (=> b!3530776 m!3987057))

(declare-fun m!3987059 () Bool)

(assert (=> b!3530776 m!3987059))

(declare-fun m!3987061 () Bool)

(assert (=> b!3530776 m!3987061))

(declare-fun m!3987063 () Bool)

(assert (=> b!3530776 m!3987063))

(declare-fun m!3987065 () Bool)

(assert (=> b!3530776 m!3987065))

(declare-fun m!3987067 () Bool)

(assert (=> b!3530776 m!3987067))

(declare-fun m!3987069 () Bool)

(assert (=> b!3530776 m!3987069))

(declare-fun m!3987071 () Bool)

(assert (=> b!3530776 m!3987071))

(declare-fun m!3987073 () Bool)

(assert (=> b!3530776 m!3987073))

(declare-fun m!3987075 () Bool)

(assert (=> b!3530776 m!3987075))

(assert (=> b!3530776 m!3987063))

(declare-fun m!3987077 () Bool)

(assert (=> b!3530776 m!3987077))

(assert (=> b!3530776 m!3987057))

(declare-fun m!3987079 () Bool)

(assert (=> b!3530776 m!3987079))

(declare-fun m!3987081 () Bool)

(assert (=> b!3530776 m!3987081))

(declare-fun m!3987083 () Bool)

(assert (=> b!3530776 m!3987083))

(declare-fun m!3987085 () Bool)

(assert (=> b!3530789 m!3987085))

(declare-fun m!3987087 () Bool)

(assert (=> b!3530801 m!3987087))

(declare-fun m!3987089 () Bool)

(assert (=> b!3530801 m!3987089))

(declare-fun m!3987091 () Bool)

(assert (=> b!3530758 m!3987091))

(declare-fun m!3987093 () Bool)

(assert (=> b!3530758 m!3987093))

(declare-fun m!3987095 () Bool)

(assert (=> b!3530760 m!3987095))

(declare-fun m!3987097 () Bool)

(assert (=> b!3530760 m!3987097))

(declare-fun m!3987099 () Bool)

(assert (=> b!3530800 m!3987099))

(declare-fun m!3987101 () Bool)

(assert (=> b!3530800 m!3987101))

(declare-fun m!3987103 () Bool)

(assert (=> b!3530800 m!3987103))

(assert (=> b!3530800 m!3987099))

(declare-fun m!3987105 () Bool)

(assert (=> b!3530800 m!3987105))

(declare-fun m!3987107 () Bool)

(assert (=> b!3530800 m!3987107))

(declare-fun m!3987109 () Bool)

(assert (=> b!3530800 m!3987109))

(declare-fun m!3987111 () Bool)

(assert (=> b!3530800 m!3987111))

(assert (=> b!3530800 m!3987109))

(assert (=> b!3530800 m!3987101))

(declare-fun m!3987113 () Bool)

(assert (=> b!3530800 m!3987113))

(declare-fun m!3987115 () Bool)

(assert (=> b!3530800 m!3987115))

(declare-fun m!3987117 () Bool)

(assert (=> b!3530800 m!3987117))

(assert (=> b!3530800 m!3987107))

(declare-fun m!3987119 () Bool)

(assert (=> b!3530780 m!3987119))

(assert (=> b!3530780 m!3987119))

(declare-fun m!3987121 () Bool)

(assert (=> b!3530780 m!3987121))

(declare-fun m!3987123 () Bool)

(assert (=> b!3530768 m!3987123))

(declare-fun m!3987125 () Bool)

(assert (=> b!3530768 m!3987125))

(declare-fun m!3987127 () Bool)

(assert (=> b!3530791 m!3987127))

(declare-fun m!3987129 () Bool)

(assert (=> b!3530791 m!3987129))

(declare-fun m!3987131 () Bool)

(assert (=> b!3530785 m!3987131))

(declare-fun m!3987133 () Bool)

(assert (=> b!3530785 m!3987133))

(declare-fun m!3987135 () Bool)

(assert (=> b!3530785 m!3987135))

(declare-fun m!3987137 () Bool)

(assert (=> b!3530785 m!3987137))

(declare-fun m!3987139 () Bool)

(assert (=> b!3530785 m!3987139))

(declare-fun m!3987141 () Bool)

(assert (=> b!3530788 m!3987141))

(declare-fun m!3987143 () Bool)

(assert (=> b!3530775 m!3987143))

(declare-fun m!3987145 () Bool)

(assert (=> b!3530775 m!3987145))

(declare-fun m!3987147 () Bool)

(assert (=> b!3530764 m!3987147))

(declare-fun m!3987149 () Bool)

(assert (=> b!3530774 m!3987149))

(declare-fun m!3987151 () Bool)

(assert (=> b!3530795 m!3987151))

(declare-fun m!3987153 () Bool)

(assert (=> b!3530784 m!3987153))

(declare-fun m!3987155 () Bool)

(assert (=> b!3530772 m!3987155))

(declare-fun m!3987157 () Bool)

(assert (=> b!3530772 m!3987157))

(declare-fun m!3987159 () Bool)

(assert (=> b!3530763 m!3987159))

(declare-fun m!3987161 () Bool)

(assert (=> b!3530767 m!3987161))

(declare-fun m!3987163 () Bool)

(assert (=> b!3530794 m!3987163))

(declare-fun m!3987165 () Bool)

(assert (=> b!3530794 m!3987165))

(declare-fun m!3987167 () Bool)

(assert (=> b!3530799 m!3987167))

(declare-fun m!3987169 () Bool)

(assert (=> b!3530761 m!3987169))

(declare-fun m!3987171 () Bool)

(assert (=> b!3530783 m!3987171))

(declare-fun m!3987173 () Bool)

(assert (=> b!3530783 m!3987173))

(declare-fun m!3987175 () Bool)

(assert (=> b!3530796 m!3987175))

(declare-fun m!3987177 () Bool)

(assert (=> b!3530769 m!3987177))

(declare-fun m!3987179 () Bool)

(assert (=> b!3530769 m!3987179))

(declare-fun m!3987181 () Bool)

(assert (=> b!3530769 m!3987181))

(declare-fun m!3987183 () Bool)

(assert (=> b!3530782 m!3987183))

(assert (=> b!3530782 m!3987183))

(declare-fun m!3987185 () Bool)

(assert (=> b!3530782 m!3987185))

(declare-fun m!3987187 () Bool)

(assert (=> b!3530759 m!3987187))

(assert (=> b!3530759 m!3987187))

(declare-fun m!3987189 () Bool)

(assert (=> b!3530759 m!3987189))

(declare-fun m!3987191 () Bool)

(assert (=> b!3530773 m!3987191))

(declare-fun m!3987193 () Bool)

(assert (=> b!3530762 m!3987193))

(declare-fun m!3987195 () Bool)

(assert (=> b!3530798 m!3987195))

(declare-fun m!3987197 () Bool)

(assert (=> b!3530798 m!3987197))

(declare-fun m!3987199 () Bool)

(assert (=> start!328282 m!3987199))

(check-sat (not b!3530768) (not b!3530780) (not b!3530764) (not b_next!91755) b_and!251843 b_and!251839 (not start!328282) (not b!3530784) (not b!3530785) b_and!251849 (not b!3530767) (not b!3530776) (not b!3530773) (not b!3530788) (not b_next!91747) (not b_next!91749) (not b!3530797) (not b!3530769) (not b!3530774) (not b!3530798) (not b!3530801) (not b!3530763) (not b!3530796) (not b_next!91745) b_and!251845 (not b!3530799) b_and!251841 (not b!3530794) (not b!3530795) (not b!3530810) (not b!3530759) (not b!3530760) (not b!3530758) b_and!251847 (not b!3530800) (not b!3530762) (not b!3530781) (not b!3530775) (not b!3530783) (not b!3530782) (not b!3530772) (not b_next!91751) (not b!3530791) (not b_next!91753) (not b!3530789) (not b!3530761))
(check-sat (not b_next!91755) b_and!251843 b_and!251841 b_and!251839 b_and!251849 b_and!251847 (not b_next!91751) (not b_next!91753) (not b_next!91747) (not b_next!91749) (not b_next!91745) b_and!251845)
