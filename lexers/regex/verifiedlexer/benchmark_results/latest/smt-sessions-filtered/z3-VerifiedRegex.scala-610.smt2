; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19346 () Bool)

(assert start!19346)

(declare-fun b!179164 () Bool)

(declare-fun b_free!6929 () Bool)

(declare-fun b_next!6929 () Bool)

(assert (=> b!179164 (= b_free!6929 (not b_next!6929))))

(declare-fun tp!85985 () Bool)

(declare-fun b_and!12197 () Bool)

(assert (=> b!179164 (= tp!85985 b_and!12197)))

(declare-fun b_free!6931 () Bool)

(declare-fun b_next!6931 () Bool)

(assert (=> b!179164 (= b_free!6931 (not b_next!6931))))

(declare-fun tp!85987 () Bool)

(declare-fun b_and!12199 () Bool)

(assert (=> b!179164 (= tp!85987 b_and!12199)))

(declare-fun b!179152 () Bool)

(declare-fun b_free!6933 () Bool)

(declare-fun b_next!6933 () Bool)

(assert (=> b!179152 (= b_free!6933 (not b_next!6933))))

(declare-fun tp!85983 () Bool)

(declare-fun b_and!12201 () Bool)

(assert (=> b!179152 (= tp!85983 b_and!12201)))

(declare-fun b_free!6935 () Bool)

(declare-fun b_next!6935 () Bool)

(assert (=> b!179152 (= b_free!6935 (not b_next!6935))))

(declare-fun tp!85979 () Bool)

(declare-fun b_and!12203 () Bool)

(assert (=> b!179152 (= tp!85979 b_and!12203)))

(declare-fun b!179161 () Bool)

(declare-fun b_free!6937 () Bool)

(declare-fun b_next!6937 () Bool)

(assert (=> b!179161 (= b_free!6937 (not b_next!6937))))

(declare-fun tp!85990 () Bool)

(declare-fun b_and!12205 () Bool)

(assert (=> b!179161 (= tp!85990 b_and!12205)))

(declare-fun b_free!6939 () Bool)

(declare-fun b_next!6939 () Bool)

(assert (=> b!179161 (= b_free!6939 (not b_next!6939))))

(declare-fun tp!85981 () Bool)

(declare-fun b_and!12207 () Bool)

(assert (=> b!179161 (= tp!85981 b_and!12207)))

(declare-fun bs!17840 () Bool)

(declare-fun b!179156 () Bool)

(declare-fun b!179155 () Bool)

(assert (= bs!17840 (and b!179156 b!179155)))

(declare-fun lambda!5260 () Int)

(declare-fun lambda!5259 () Int)

(assert (=> bs!17840 (not (= lambda!5260 lambda!5259))))

(declare-fun b!179176 () Bool)

(declare-fun e!108985 () Bool)

(assert (=> b!179176 (= e!108985 true)))

(declare-fun b!179175 () Bool)

(declare-fun e!108984 () Bool)

(assert (=> b!179175 (= e!108984 e!108985)))

(declare-fun b!179174 () Bool)

(declare-fun e!108983 () Bool)

(assert (=> b!179174 (= e!108983 e!108984)))

(assert (=> b!179156 e!108983))

(assert (= b!179175 b!179176))

(assert (= b!179174 b!179175))

(declare-datatypes ((List!3013 0))(
  ( (Nil!3003) (Cons!3003 (h!8400 (_ BitVec 16)) (t!28151 List!3013)) )
))
(declare-datatypes ((TokenValue!565 0))(
  ( (FloatLiteralValue!1130 (text!4400 List!3013)) (TokenValueExt!564 (__x!2617 Int)) (Broken!2825 (value!19765 List!3013)) (Object!574) (End!565) (Def!565) (Underscore!565) (Match!565) (Else!565) (Error!565) (Case!565) (If!565) (Extends!565) (Abstract!565) (Class!565) (Val!565) (DelimiterValue!1130 (del!625 List!3013)) (KeywordValue!571 (value!19766 List!3013)) (CommentValue!1130 (value!19767 List!3013)) (WhitespaceValue!1130 (value!19768 List!3013)) (IndentationValue!565 (value!19769 List!3013)) (String!3904) (Int32!565) (Broken!2826 (value!19770 List!3013)) (Boolean!566) (Unit!2735) (OperatorValue!568 (op!625 List!3013)) (IdentifierValue!1130 (value!19771 List!3013)) (IdentifierValue!1131 (value!19772 List!3013)) (WhitespaceValue!1131 (value!19773 List!3013)) (True!1130) (False!1130) (Broken!2827 (value!19774 List!3013)) (Broken!2828 (value!19775 List!3013)) (True!1131) (RightBrace!565) (RightBracket!565) (Colon!565) (Null!565) (Comma!565) (LeftBracket!565) (False!1131) (LeftBrace!565) (ImaginaryLiteralValue!565 (text!4401 List!3013)) (StringLiteralValue!1695 (value!19776 List!3013)) (EOFValue!565 (value!19777 List!3013)) (IdentValue!565 (value!19778 List!3013)) (DelimiterValue!1131 (value!19779 List!3013)) (DedentValue!565 (value!19780 List!3013)) (NewLineValue!565 (value!19781 List!3013)) (IntegerValue!1695 (value!19782 (_ BitVec 32)) (text!4402 List!3013)) (IntegerValue!1696 (value!19783 Int) (text!4403 List!3013)) (Times!565) (Or!565) (Equal!565) (Minus!565) (Broken!2829 (value!19784 List!3013)) (And!565) (Div!565) (LessEqual!565) (Mod!565) (Concat!1332) (Not!565) (Plus!565) (SpaceValue!565 (value!19785 List!3013)) (IntegerValue!1697 (value!19786 Int) (text!4404 List!3013)) (StringLiteralValue!1696 (text!4405 List!3013)) (FloatLiteralValue!1131 (text!4406 List!3013)) (BytesLiteralValue!565 (value!19787 List!3013)) (CommentValue!1131 (value!19788 List!3013)) (StringLiteralValue!1697 (value!19789 List!3013)) (ErrorTokenValue!565 (msg!626 List!3013)) )
))
(declare-datatypes ((C!2456 0))(
  ( (C!2457 (val!1114 Int)) )
))
(declare-datatypes ((List!3014 0))(
  ( (Nil!3004) (Cons!3004 (h!8401 C!2456) (t!28152 List!3014)) )
))
(declare-datatypes ((IArray!1817 0))(
  ( (IArray!1818 (innerList!966 List!3014)) )
))
(declare-datatypes ((Conc!908 0))(
  ( (Node!908 (left!2322 Conc!908) (right!2652 Conc!908) (csize!2046 Int) (cheight!1119 Int)) (Leaf!1519 (xs!3503 IArray!1817) (csize!2047 Int)) (Empty!908) )
))
(declare-datatypes ((BalanceConc!1824 0))(
  ( (BalanceConc!1825 (c!35149 Conc!908)) )
))
(declare-datatypes ((String!3905 0))(
  ( (String!3906 (value!19790 String)) )
))
(declare-datatypes ((TokenValueInjection!902 0))(
  ( (TokenValueInjection!903 (toValue!1214 Int) (toChars!1073 Int)) )
))
(declare-datatypes ((Regex!767 0))(
  ( (ElementMatch!767 (c!35150 C!2456)) (Concat!1333 (regOne!2046 Regex!767) (regTwo!2046 Regex!767)) (EmptyExpr!767) (Star!767 (reg!1096 Regex!767)) (EmptyLang!767) (Union!767 (regOne!2047 Regex!767) (regTwo!2047 Regex!767)) )
))
(declare-datatypes ((Rule!886 0))(
  ( (Rule!887 (regex!543 Regex!767) (tag!721 String!3905) (isSeparator!543 Bool) (transformation!543 TokenValueInjection!902)) )
))
(declare-datatypes ((List!3015 0))(
  ( (Nil!3005) (Cons!3005 (h!8402 Rule!886) (t!28153 List!3015)) )
))
(declare-fun rules!1920 () List!3015)

(get-info :version)

(assert (= (and b!179156 ((_ is Cons!3005) rules!1920)) b!179174))

(declare-fun order!1735 () Int)

(declare-fun order!1733 () Int)

(declare-fun dynLambda!1191 (Int Int) Int)

(declare-fun dynLambda!1192 (Int Int) Int)

(assert (=> b!179176 (< (dynLambda!1191 order!1733 (toValue!1214 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5260))))

(declare-fun order!1737 () Int)

(declare-fun dynLambda!1193 (Int Int) Int)

(assert (=> b!179176 (< (dynLambda!1193 order!1737 (toChars!1073 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5260))))

(assert (=> b!179156 true))

(declare-fun b!179133 () Bool)

(declare-fun res!81068 () Bool)

(declare-fun e!108965 () Bool)

(assert (=> b!179133 (=> (not res!81068) (not e!108965))))

(declare-fun isEmpty!1343 (List!3015) Bool)

(assert (=> b!179133 (= res!81068 (not (isEmpty!1343 rules!1920)))))

(declare-fun lt!58612 () List!3014)

(declare-fun lt!58613 () List!3014)

(declare-fun b!179134 () Bool)

(declare-fun lt!58614 () List!3014)

(declare-fun e!108956 () Bool)

(declare-fun ++!704 (List!3014 List!3014) List!3014)

(assert (=> b!179134 (= e!108956 (not (= lt!58613 (++!704 lt!58614 lt!58612))))))

(declare-datatypes ((Token!830 0))(
  ( (Token!831 (value!19791 TokenValue!565) (rule!1058 Rule!886) (size!2461 Int) (originalCharacters!586 List!3014)) )
))
(declare-fun separatorToken!170 () Token!830)

(declare-fun e!108968 () Bool)

(declare-fun tp!85982 () Bool)

(declare-fun e!108951 () Bool)

(declare-fun b!179136 () Bool)

(declare-fun inv!3834 (String!3905) Bool)

(declare-fun inv!3837 (TokenValueInjection!902) Bool)

(assert (=> b!179136 (= e!108968 (and tp!85982 (inv!3834 (tag!721 (rule!1058 separatorToken!170))) (inv!3837 (transformation!543 (rule!1058 separatorToken!170))) e!108951))))

(declare-fun b!179137 () Bool)

(declare-fun e!108962 () Bool)

(declare-fun e!108967 () Bool)

(assert (=> b!179137 (= e!108962 e!108967)))

(declare-fun res!81082 () Bool)

(assert (=> b!179137 (=> res!81082 e!108967)))

(declare-fun lt!58602 () Bool)

(assert (=> b!179137 (= res!81082 (not lt!58602))))

(declare-fun e!108960 () Bool)

(assert (=> b!179137 e!108960))

(declare-fun res!81073 () Bool)

(assert (=> b!179137 (=> (not res!81073) (not e!108960))))

(declare-datatypes ((tuple2!2974 0))(
  ( (tuple2!2975 (_1!1703 Token!830) (_2!1703 List!3014)) )
))
(declare-fun lt!58609 () tuple2!2974)

(declare-datatypes ((List!3016 0))(
  ( (Nil!3006) (Cons!3006 (h!8403 Token!830) (t!28154 List!3016)) )
))
(declare-fun tokens!465 () List!3016)

(assert (=> b!179137 (= res!81073 (= (_1!1703 lt!58609) (h!8403 tokens!465)))))

(declare-datatypes ((Option!364 0))(
  ( (None!363) (Some!363 (v!13832 tuple2!2974)) )
))
(declare-fun lt!58608 () Option!364)

(declare-fun get!841 (Option!364) tuple2!2974)

(assert (=> b!179137 (= lt!58609 (get!841 lt!58608))))

(declare-fun isDefined!215 (Option!364) Bool)

(assert (=> b!179137 (isDefined!215 lt!58608)))

(declare-datatypes ((LexerInterface!429 0))(
  ( (LexerInterfaceExt!426 (__x!2618 Int)) (Lexer!427) )
))
(declare-fun thiss!17480 () LexerInterface!429)

(declare-fun maxPrefix!159 (LexerInterface!429 List!3015 List!3014) Option!364)

(assert (=> b!179137 (= lt!58608 (maxPrefix!159 thiss!17480 rules!1920 lt!58614))))

(declare-fun b!179138 () Bool)

(declare-fun e!108976 () Bool)

(declare-fun e!108973 () Bool)

(assert (=> b!179138 (= e!108976 e!108973)))

(declare-fun res!81066 () Bool)

(assert (=> b!179138 (=> (not res!81066) (not e!108973))))

(declare-fun lt!58622 () List!3014)

(assert (=> b!179138 (= res!81066 (= lt!58613 lt!58622))))

(declare-datatypes ((IArray!1819 0))(
  ( (IArray!1820 (innerList!967 List!3016)) )
))
(declare-datatypes ((Conc!909 0))(
  ( (Node!909 (left!2323 Conc!909) (right!2653 Conc!909) (csize!2048 Int) (cheight!1120 Int)) (Leaf!1520 (xs!3504 IArray!1819) (csize!2049 Int)) (Empty!909) )
))
(declare-datatypes ((BalanceConc!1826 0))(
  ( (BalanceConc!1827 (c!35151 Conc!909)) )
))
(declare-fun lt!58611 () BalanceConc!1826)

(declare-fun list!1101 (BalanceConc!1824) List!3014)

(declare-fun printWithSeparatorTokenWhenNeededRec!112 (LexerInterface!429 List!3015 BalanceConc!1826 Token!830 Int) BalanceConc!1824)

(assert (=> b!179138 (= lt!58622 (list!1101 (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 lt!58611 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!122 (LexerInterface!429 List!3015 List!3016 Token!830) List!3014)

(assert (=> b!179138 (= lt!58613 (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!179139 () Bool)

(declare-fun res!81085 () Bool)

(assert (=> b!179139 (=> (not res!81085) (not e!108973))))

(declare-fun seqFromList!463 (List!3014) BalanceConc!1824)

(assert (=> b!179139 (= res!81085 (= (list!1101 (seqFromList!463 lt!58613)) lt!58622))))

(declare-fun b!179140 () Bool)

(declare-fun e!108970 () Bool)

(declare-fun e!108972 () Bool)

(assert (=> b!179140 (= e!108970 e!108972)))

(declare-fun res!81077 () Bool)

(assert (=> b!179140 (=> res!81077 e!108972)))

(declare-fun lt!58620 () List!3014)

(declare-fun lt!58605 () List!3014)

(assert (=> b!179140 (= res!81077 (or (not (= lt!58605 lt!58620)) (not (= lt!58620 lt!58614)) (not (= lt!58605 lt!58614))))))

(declare-fun printList!113 (LexerInterface!429 List!3016) List!3014)

(assert (=> b!179140 (= lt!58620 (printList!113 thiss!17480 (Cons!3006 (h!8403 tokens!465) Nil!3006)))))

(declare-fun lt!58607 () BalanceConc!1824)

(assert (=> b!179140 (= lt!58605 (list!1101 lt!58607))))

(declare-fun lt!58618 () BalanceConc!1826)

(declare-fun printTailRec!123 (LexerInterface!429 BalanceConc!1826 Int BalanceConc!1824) BalanceConc!1824)

(assert (=> b!179140 (= lt!58607 (printTailRec!123 thiss!17480 lt!58618 0 (BalanceConc!1825 Empty!908)))))

(declare-fun print!160 (LexerInterface!429 BalanceConc!1826) BalanceConc!1824)

(assert (=> b!179140 (= lt!58607 (print!160 thiss!17480 lt!58618))))

(declare-fun singletonSeq!95 (Token!830) BalanceConc!1826)

(assert (=> b!179140 (= lt!58618 (singletonSeq!95 (h!8403 tokens!465)))))

(declare-fun b!179141 () Bool)

(declare-fun res!81075 () Bool)

(assert (=> b!179141 (=> res!81075 e!108972)))

(declare-fun rulesProduceIndividualToken!178 (LexerInterface!429 List!3015 Token!830) Bool)

(assert (=> b!179141 (= res!81075 (not (rulesProduceIndividualToken!178 thiss!17480 rules!1920 (h!8403 tokens!465))))))

(declare-fun b!179142 () Bool)

(assert (=> b!179142 (= e!108965 e!108976)))

(declare-fun res!81070 () Bool)

(assert (=> b!179142 (=> (not res!81070) (not e!108976))))

(declare-fun rulesProduceEachTokenIndividually!221 (LexerInterface!429 List!3015 BalanceConc!1826) Bool)

(assert (=> b!179142 (= res!81070 (rulesProduceEachTokenIndividually!221 thiss!17480 rules!1920 lt!58611))))

(declare-fun seqFromList!464 (List!3016) BalanceConc!1826)

(assert (=> b!179142 (= lt!58611 (seqFromList!464 tokens!465))))

(declare-fun b!179143 () Bool)

(declare-fun e!108957 () Bool)

(declare-fun e!108955 () Bool)

(assert (=> b!179143 (= e!108957 e!108955)))

(declare-fun res!81078 () Bool)

(assert (=> b!179143 (=> (not res!81078) (not e!108955))))

(declare-fun lt!58616 () Option!364)

(assert (=> b!179143 (= res!81078 (isDefined!215 lt!58616))))

(assert (=> b!179143 (= lt!58616 (maxPrefix!159 thiss!17480 rules!1920 lt!58613))))

(declare-fun b!179144 () Bool)

(declare-fun e!108966 () Bool)

(assert (=> b!179144 (= e!108966 e!108970)))

(declare-fun res!81080 () Bool)

(assert (=> b!179144 (=> res!81080 e!108970)))

(assert (=> b!179144 (= res!81080 e!108956)))

(declare-fun res!81067 () Bool)

(assert (=> b!179144 (=> (not res!81067) (not e!108956))))

(assert (=> b!179144 (= res!81067 (not lt!58602))))

(declare-fun lt!58606 () List!3014)

(assert (=> b!179144 (= lt!58602 (= lt!58613 lt!58606))))

(declare-fun tp!85991 () Bool)

(declare-fun b!179145 () Bool)

(declare-fun e!108974 () Bool)

(declare-fun e!108963 () Bool)

(assert (=> b!179145 (= e!108963 (and tp!85991 (inv!3834 (tag!721 (h!8402 rules!1920))) (inv!3837 (transformation!543 (h!8402 rules!1920))) e!108974))))

(declare-fun b!179146 () Bool)

(declare-fun res!81071 () Bool)

(assert (=> b!179146 (=> (not res!81071) (not e!108965))))

(declare-fun rulesInvariant!395 (LexerInterface!429 List!3015) Bool)

(assert (=> b!179146 (= res!81071 (rulesInvariant!395 thiss!17480 rules!1920))))

(declare-fun b!179135 () Bool)

(declare-fun tp!85980 () Bool)

(declare-fun e!108975 () Bool)

(declare-fun e!108958 () Bool)

(declare-fun inv!21 (TokenValue!565) Bool)

(assert (=> b!179135 (= e!108975 (and (inv!21 (value!19791 (h!8403 tokens!465))) e!108958 tp!85980))))

(declare-fun res!81072 () Bool)

(assert (=> start!19346 (=> (not res!81072) (not e!108965))))

(assert (=> start!19346 (= res!81072 ((_ is Lexer!427) thiss!17480))))

(assert (=> start!19346 e!108965))

(assert (=> start!19346 true))

(declare-fun e!108961 () Bool)

(assert (=> start!19346 e!108961))

(declare-fun e!108953 () Bool)

(declare-fun inv!3838 (Token!830) Bool)

(assert (=> start!19346 (and (inv!3838 separatorToken!170) e!108953)))

(declare-fun e!108950 () Bool)

(assert (=> start!19346 e!108950))

(declare-fun b!179147 () Bool)

(declare-fun res!81084 () Bool)

(assert (=> b!179147 (=> (not res!81084) (not e!108976))))

(assert (=> b!179147 (= res!81084 (rulesProduceIndividualToken!178 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!179148 () Bool)

(declare-fun tp!85989 () Bool)

(assert (=> b!179148 (= e!108961 (and e!108963 tp!85989))))

(declare-fun tp!85984 () Bool)

(declare-fun b!179149 () Bool)

(assert (=> b!179149 (= e!108950 (and (inv!3838 (h!8403 tokens!465)) e!108975 tp!85984))))

(declare-fun b!179150 () Bool)

(declare-fun res!81079 () Bool)

(assert (=> b!179150 (=> (not res!81079) (not e!108976))))

(assert (=> b!179150 (= res!81079 ((_ is Cons!3006) tokens!465))))

(declare-fun e!108952 () Bool)

(declare-fun b!179151 () Bool)

(declare-fun tp!85986 () Bool)

(assert (=> b!179151 (= e!108958 (and tp!85986 (inv!3834 (tag!721 (rule!1058 (h!8403 tokens!465)))) (inv!3837 (transformation!543 (rule!1058 (h!8403 tokens!465)))) e!108952))))

(assert (=> b!179152 (= e!108951 (and tp!85983 tp!85979))))

(declare-fun b!179153 () Bool)

(assert (=> b!179153 (= e!108973 (not e!108966))))

(declare-fun res!81065 () Bool)

(assert (=> b!179153 (=> res!81065 e!108966)))

(assert (=> b!179153 (= res!81065 (not (= lt!58612 (list!1101 (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 (seqFromList!464 (t!28154 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!58617 () List!3014)

(assert (=> b!179153 (= lt!58617 lt!58606)))

(declare-fun lt!58610 () List!3014)

(assert (=> b!179153 (= lt!58606 (++!704 lt!58614 lt!58610))))

(declare-fun lt!58604 () List!3014)

(assert (=> b!179153 (= lt!58617 (++!704 (++!704 lt!58614 lt!58604) lt!58612))))

(declare-datatypes ((Unit!2736 0))(
  ( (Unit!2737) )
))
(declare-fun lt!58619 () Unit!2736)

(declare-fun lemmaConcatAssociativity!232 (List!3014 List!3014 List!3014) Unit!2736)

(assert (=> b!179153 (= lt!58619 (lemmaConcatAssociativity!232 lt!58614 lt!58604 lt!58612))))

(declare-fun charsOf!198 (Token!830) BalanceConc!1824)

(assert (=> b!179153 (= lt!58614 (list!1101 (charsOf!198 (h!8403 tokens!465))))))

(assert (=> b!179153 (= lt!58610 (++!704 lt!58604 lt!58612))))

(assert (=> b!179153 (= lt!58612 (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 (t!28154 tokens!465) separatorToken!170))))

(assert (=> b!179153 (= lt!58604 (list!1101 (charsOf!198 separatorToken!170)))))

(declare-fun b!179154 () Bool)

(declare-fun tp!85988 () Bool)

(assert (=> b!179154 (= e!108953 (and (inv!21 (value!19791 separatorToken!170)) e!108968 tp!85988))))

(declare-fun res!81086 () Bool)

(assert (=> b!179155 (=> (not res!81086) (not e!108976))))

(declare-fun forall!607 (List!3016 Int) Bool)

(assert (=> b!179155 (= res!81086 (forall!607 tokens!465 lambda!5259))))

(assert (=> b!179156 (= e!108972 e!108962)))

(declare-fun res!81083 () Bool)

(assert (=> b!179156 (=> res!81083 e!108962)))

(declare-datatypes ((tuple2!2976 0))(
  ( (tuple2!2977 (_1!1704 Token!830) (_2!1704 BalanceConc!1824)) )
))
(declare-datatypes ((Option!365 0))(
  ( (None!364) (Some!364 (v!13833 tuple2!2976)) )
))
(declare-fun isDefined!216 (Option!365) Bool)

(declare-fun maxPrefixZipperSequence!122 (LexerInterface!429 List!3015 BalanceConc!1824) Option!365)

(assert (=> b!179156 (= res!81083 (not (isDefined!216 (maxPrefixZipperSequence!122 thiss!17480 rules!1920 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))))

(declare-fun lt!58621 () Unit!2736)

(declare-fun forallContained!110 (List!3016 Int Token!830) Unit!2736)

(assert (=> b!179156 (= lt!58621 (forallContained!110 tokens!465 lambda!5260 (h!8403 tokens!465)))))

(assert (=> b!179156 (= lt!58614 (originalCharacters!586 (h!8403 tokens!465)))))

(declare-fun b!179157 () Bool)

(declare-fun res!81076 () Bool)

(assert (=> b!179157 (=> (not res!81076) (not e!108976))))

(assert (=> b!179157 (= res!81076 (isSeparator!543 (rule!1058 separatorToken!170)))))

(declare-fun b!179158 () Bool)

(declare-fun res!81081 () Bool)

(assert (=> b!179158 (=> (not res!81081) (not e!108960))))

(declare-fun isEmpty!1344 (List!3014) Bool)

(assert (=> b!179158 (= res!81081 (isEmpty!1344 (_2!1703 lt!58609)))))

(declare-fun b!179159 () Bool)

(declare-fun res!81074 () Bool)

(assert (=> b!179159 (=> res!81074 e!108972)))

(declare-fun isEmpty!1345 (BalanceConc!1826) Bool)

(declare-datatypes ((tuple2!2978 0))(
  ( (tuple2!2979 (_1!1705 BalanceConc!1826) (_2!1705 BalanceConc!1824)) )
))
(declare-fun lex!229 (LexerInterface!429 List!3015 BalanceConc!1824) tuple2!2978)

(assert (=> b!179159 (= res!81074 (isEmpty!1345 (_1!1705 (lex!229 thiss!17480 rules!1920 (seqFromList!463 lt!58614)))))))

(declare-fun b!179160 () Bool)

(declare-fun rulesValidInductive!130 (LexerInterface!429 List!3015) Bool)

(assert (=> b!179160 (= e!108967 (rulesValidInductive!130 thiss!17480 rules!1920))))

(declare-fun isPrefix!239 (List!3014 List!3014) Bool)

(assert (=> b!179160 (isPrefix!239 lt!58614 lt!58606)))

(declare-fun lt!58603 () Unit!2736)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!134 (List!3014 List!3014) Unit!2736)

(assert (=> b!179160 (= lt!58603 (lemmaConcatTwoListThenFirstIsPrefix!134 lt!58614 lt!58610))))

(assert (=> b!179160 e!108957))

(declare-fun res!81069 () Bool)

(assert (=> b!179160 (=> res!81069 e!108957)))

(declare-fun isEmpty!1346 (List!3016) Bool)

(assert (=> b!179160 (= res!81069 (isEmpty!1346 tokens!465))))

(declare-fun lt!58615 () Unit!2736)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!4 (LexerInterface!429 List!3015 List!3016 Token!830) Unit!2736)

(assert (=> b!179160 (= lt!58615 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!4 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!179161 (= e!108952 (and tp!85990 tp!85981))))

(declare-fun b!179162 () Bool)

(declare-fun matchR!105 (Regex!767 List!3014) Bool)

(assert (=> b!179162 (= e!108960 (matchR!105 (regex!543 (rule!1058 (h!8403 tokens!465))) lt!58614))))

(declare-fun b!179163 () Bool)

(declare-fun res!81064 () Bool)

(assert (=> b!179163 (=> (not res!81064) (not e!108976))))

(declare-fun sepAndNonSepRulesDisjointChars!132 (List!3015 List!3015) Bool)

(assert (=> b!179163 (= res!81064 (sepAndNonSepRulesDisjointChars!132 rules!1920 rules!1920))))

(assert (=> b!179164 (= e!108974 (and tp!85985 tp!85987))))

(declare-fun b!179165 () Bool)

(declare-fun head!618 (List!3016) Token!830)

(assert (=> b!179165 (= e!108955 (= (_1!1703 (get!841 lt!58616)) (head!618 tokens!465)))))

(assert (= (and start!19346 res!81072) b!179133))

(assert (= (and b!179133 res!81068) b!179146))

(assert (= (and b!179146 res!81071) b!179142))

(assert (= (and b!179142 res!81070) b!179147))

(assert (= (and b!179147 res!81084) b!179157))

(assert (= (and b!179157 res!81076) b!179155))

(assert (= (and b!179155 res!81086) b!179163))

(assert (= (and b!179163 res!81064) b!179150))

(assert (= (and b!179150 res!81079) b!179138))

(assert (= (and b!179138 res!81066) b!179139))

(assert (= (and b!179139 res!81085) b!179153))

(assert (= (and b!179153 (not res!81065)) b!179144))

(assert (= (and b!179144 res!81067) b!179134))

(assert (= (and b!179144 (not res!81080)) b!179140))

(assert (= (and b!179140 (not res!81077)) b!179141))

(assert (= (and b!179141 (not res!81075)) b!179159))

(assert (= (and b!179159 (not res!81074)) b!179156))

(assert (= (and b!179156 (not res!81083)) b!179137))

(assert (= (and b!179137 res!81073) b!179158))

(assert (= (and b!179158 res!81081) b!179162))

(assert (= (and b!179137 (not res!81082)) b!179160))

(assert (= (and b!179160 (not res!81069)) b!179143))

(assert (= (and b!179143 res!81078) b!179165))

(assert (= b!179145 b!179164))

(assert (= b!179148 b!179145))

(assert (= (and start!19346 ((_ is Cons!3005) rules!1920)) b!179148))

(assert (= b!179136 b!179152))

(assert (= b!179154 b!179136))

(assert (= start!19346 b!179154))

(assert (= b!179151 b!179161))

(assert (= b!179135 b!179151))

(assert (= b!179149 b!179135))

(assert (= (and start!19346 ((_ is Cons!3006) tokens!465)) b!179149))

(declare-fun m!181025 () Bool)

(assert (=> b!179134 m!181025))

(declare-fun m!181027 () Bool)

(assert (=> b!179133 m!181027))

(declare-fun m!181029 () Bool)

(assert (=> b!179165 m!181029))

(declare-fun m!181031 () Bool)

(assert (=> b!179165 m!181031))

(declare-fun m!181033 () Bool)

(assert (=> b!179147 m!181033))

(declare-fun m!181035 () Bool)

(assert (=> b!179158 m!181035))

(declare-fun m!181037 () Bool)

(assert (=> b!179142 m!181037))

(declare-fun m!181039 () Bool)

(assert (=> b!179142 m!181039))

(declare-fun m!181041 () Bool)

(assert (=> b!179154 m!181041))

(declare-fun m!181043 () Bool)

(assert (=> b!179160 m!181043))

(declare-fun m!181045 () Bool)

(assert (=> b!179160 m!181045))

(declare-fun m!181047 () Bool)

(assert (=> b!179160 m!181047))

(declare-fun m!181049 () Bool)

(assert (=> b!179160 m!181049))

(declare-fun m!181051 () Bool)

(assert (=> b!179160 m!181051))

(declare-fun m!181053 () Bool)

(assert (=> b!179156 m!181053))

(assert (=> b!179156 m!181053))

(declare-fun m!181055 () Bool)

(assert (=> b!179156 m!181055))

(assert (=> b!179156 m!181055))

(declare-fun m!181057 () Bool)

(assert (=> b!179156 m!181057))

(declare-fun m!181059 () Bool)

(assert (=> b!179156 m!181059))

(declare-fun m!181061 () Bool)

(assert (=> b!179145 m!181061))

(declare-fun m!181063 () Bool)

(assert (=> b!179145 m!181063))

(declare-fun m!181065 () Bool)

(assert (=> b!179162 m!181065))

(declare-fun m!181067 () Bool)

(assert (=> b!179163 m!181067))

(declare-fun m!181069 () Bool)

(assert (=> b!179149 m!181069))

(declare-fun m!181071 () Bool)

(assert (=> start!19346 m!181071))

(declare-fun m!181073 () Bool)

(assert (=> b!179153 m!181073))

(declare-fun m!181075 () Bool)

(assert (=> b!179153 m!181075))

(declare-fun m!181077 () Bool)

(assert (=> b!179153 m!181077))

(declare-fun m!181079 () Bool)

(assert (=> b!179153 m!181079))

(assert (=> b!179153 m!181073))

(declare-fun m!181081 () Bool)

(assert (=> b!179153 m!181081))

(declare-fun m!181083 () Bool)

(assert (=> b!179153 m!181083))

(declare-fun m!181085 () Bool)

(assert (=> b!179153 m!181085))

(declare-fun m!181087 () Bool)

(assert (=> b!179153 m!181087))

(assert (=> b!179153 m!181077))

(declare-fun m!181089 () Bool)

(assert (=> b!179153 m!181089))

(declare-fun m!181091 () Bool)

(assert (=> b!179153 m!181091))

(declare-fun m!181093 () Bool)

(assert (=> b!179153 m!181093))

(assert (=> b!179153 m!181091))

(assert (=> b!179153 m!181083))

(declare-fun m!181095 () Bool)

(assert (=> b!179153 m!181095))

(assert (=> b!179153 m!181081))

(declare-fun m!181097 () Bool)

(assert (=> b!179153 m!181097))

(declare-fun m!181099 () Bool)

(assert (=> b!179146 m!181099))

(declare-fun m!181101 () Bool)

(assert (=> b!179151 m!181101))

(declare-fun m!181103 () Bool)

(assert (=> b!179151 m!181103))

(declare-fun m!181105 () Bool)

(assert (=> b!179159 m!181105))

(assert (=> b!179159 m!181105))

(declare-fun m!181107 () Bool)

(assert (=> b!179159 m!181107))

(declare-fun m!181109 () Bool)

(assert (=> b!179159 m!181109))

(declare-fun m!181111 () Bool)

(assert (=> b!179137 m!181111))

(declare-fun m!181113 () Bool)

(assert (=> b!179137 m!181113))

(declare-fun m!181115 () Bool)

(assert (=> b!179137 m!181115))

(declare-fun m!181117 () Bool)

(assert (=> b!179138 m!181117))

(assert (=> b!179138 m!181117))

(declare-fun m!181119 () Bool)

(assert (=> b!179138 m!181119))

(declare-fun m!181121 () Bool)

(assert (=> b!179138 m!181121))

(declare-fun m!181123 () Bool)

(assert (=> b!179143 m!181123))

(declare-fun m!181125 () Bool)

(assert (=> b!179143 m!181125))

(declare-fun m!181127 () Bool)

(assert (=> b!179155 m!181127))

(declare-fun m!181129 () Bool)

(assert (=> b!179140 m!181129))

(declare-fun m!181131 () Bool)

(assert (=> b!179140 m!181131))

(declare-fun m!181133 () Bool)

(assert (=> b!179140 m!181133))

(declare-fun m!181135 () Bool)

(assert (=> b!179140 m!181135))

(declare-fun m!181137 () Bool)

(assert (=> b!179140 m!181137))

(declare-fun m!181139 () Bool)

(assert (=> b!179135 m!181139))

(declare-fun m!181141 () Bool)

(assert (=> b!179141 m!181141))

(declare-fun m!181143 () Bool)

(assert (=> b!179139 m!181143))

(assert (=> b!179139 m!181143))

(declare-fun m!181145 () Bool)

(assert (=> b!179139 m!181145))

(declare-fun m!181147 () Bool)

(assert (=> b!179136 m!181147))

(declare-fun m!181149 () Bool)

(assert (=> b!179136 m!181149))

(check-sat (not start!19346) (not b!179155) (not b!179148) (not b!179137) (not b!179138) (not b!179162) b_and!12197 b_and!12207 b_and!12203 (not b_next!6937) (not b!179159) (not b!179153) (not b!179141) (not b!179133) (not b!179135) (not b!179156) (not b!179147) (not b!179139) (not b_next!6931) (not b!179140) (not b!179160) (not b!179174) (not b!179158) b_and!12199 (not b!179143) (not b!179165) (not b_next!6939) (not b!179134) (not b_next!6929) (not b!179149) (not b!179146) (not b!179151) (not b!179154) b_and!12201 b_and!12205 (not b!179136) (not b!179142) (not b_next!6935) (not b!179163) (not b_next!6933) (not b!179145))
(check-sat (not b_next!6931) b_and!12199 b_and!12197 (not b_next!6939) b_and!12207 (not b_next!6929) b_and!12203 (not b_next!6937) (not b_next!6935) (not b_next!6933) b_and!12201 b_and!12205)
(get-model)

(declare-fun d!45493 () Bool)

(declare-fun isEmpty!1347 (Option!364) Bool)

(assert (=> d!45493 (= (isDefined!215 lt!58616) (not (isEmpty!1347 lt!58616)))))

(declare-fun bs!17842 () Bool)

(assert (= bs!17842 d!45493))

(declare-fun m!181191 () Bool)

(assert (=> bs!17842 m!181191))

(assert (=> b!179143 d!45493))

(declare-fun b!179262 () Bool)

(declare-fun res!81158 () Bool)

(declare-fun e!109031 () Bool)

(assert (=> b!179262 (=> (not res!81158) (not e!109031))))

(declare-fun lt!58648 () Option!364)

(assert (=> b!179262 (= res!81158 (= (list!1101 (charsOf!198 (_1!1703 (get!841 lt!58648)))) (originalCharacters!586 (_1!1703 (get!841 lt!58648)))))))

(declare-fun b!179263 () Bool)

(declare-fun e!109033 () Option!364)

(declare-fun lt!58646 () Option!364)

(declare-fun lt!58647 () Option!364)

(assert (=> b!179263 (= e!109033 (ite (and ((_ is None!363) lt!58646) ((_ is None!363) lt!58647)) None!363 (ite ((_ is None!363) lt!58647) lt!58646 (ite ((_ is None!363) lt!58646) lt!58647 (ite (>= (size!2461 (_1!1703 (v!13832 lt!58646))) (size!2461 (_1!1703 (v!13832 lt!58647)))) lt!58646 lt!58647)))))))

(declare-fun call!8026 () Option!364)

(assert (=> b!179263 (= lt!58646 call!8026)))

(assert (=> b!179263 (= lt!58647 (maxPrefix!159 thiss!17480 (t!28153 rules!1920) lt!58613))))

(declare-fun b!179264 () Bool)

(declare-fun res!81161 () Bool)

(assert (=> b!179264 (=> (not res!81161) (not e!109031))))

(assert (=> b!179264 (= res!81161 (= (++!704 (list!1101 (charsOf!198 (_1!1703 (get!841 lt!58648)))) (_2!1703 (get!841 lt!58648))) lt!58613))))

(declare-fun b!179265 () Bool)

(declare-fun res!81157 () Bool)

(assert (=> b!179265 (=> (not res!81157) (not e!109031))))

(declare-fun size!2464 (List!3014) Int)

(assert (=> b!179265 (= res!81157 (< (size!2464 (_2!1703 (get!841 lt!58648))) (size!2464 lt!58613)))))

(declare-fun b!179266 () Bool)

(declare-fun res!81155 () Bool)

(assert (=> b!179266 (=> (not res!81155) (not e!109031))))

(declare-fun apply!443 (TokenValueInjection!902 BalanceConc!1824) TokenValue!565)

(assert (=> b!179266 (= res!81155 (= (value!19791 (_1!1703 (get!841 lt!58648))) (apply!443 (transformation!543 (rule!1058 (_1!1703 (get!841 lt!58648)))) (seqFromList!463 (originalCharacters!586 (_1!1703 (get!841 lt!58648)))))))))

(declare-fun d!45495 () Bool)

(declare-fun e!109032 () Bool)

(assert (=> d!45495 e!109032))

(declare-fun res!81159 () Bool)

(assert (=> d!45495 (=> res!81159 e!109032)))

(assert (=> d!45495 (= res!81159 (isEmpty!1347 lt!58648))))

(assert (=> d!45495 (= lt!58648 e!109033)))

(declare-fun c!35163 () Bool)

(assert (=> d!45495 (= c!35163 (and ((_ is Cons!3005) rules!1920) ((_ is Nil!3005) (t!28153 rules!1920))))))

(declare-fun lt!58649 () Unit!2736)

(declare-fun lt!58645 () Unit!2736)

(assert (=> d!45495 (= lt!58649 lt!58645)))

(assert (=> d!45495 (isPrefix!239 lt!58613 lt!58613)))

(declare-fun lemmaIsPrefixRefl!144 (List!3014 List!3014) Unit!2736)

(assert (=> d!45495 (= lt!58645 (lemmaIsPrefixRefl!144 lt!58613 lt!58613))))

(assert (=> d!45495 (rulesValidInductive!130 thiss!17480 rules!1920)))

(assert (=> d!45495 (= (maxPrefix!159 thiss!17480 rules!1920 lt!58613) lt!58648)))

(declare-fun b!179267 () Bool)

(assert (=> b!179267 (= e!109032 e!109031)))

(declare-fun res!81160 () Bool)

(assert (=> b!179267 (=> (not res!81160) (not e!109031))))

(assert (=> b!179267 (= res!81160 (isDefined!215 lt!58648))))

(declare-fun b!179268 () Bool)

(assert (=> b!179268 (= e!109033 call!8026)))

(declare-fun b!179269 () Bool)

(declare-fun res!81156 () Bool)

(assert (=> b!179269 (=> (not res!81156) (not e!109031))))

(assert (=> b!179269 (= res!81156 (matchR!105 (regex!543 (rule!1058 (_1!1703 (get!841 lt!58648)))) (list!1101 (charsOf!198 (_1!1703 (get!841 lt!58648))))))))

(declare-fun bm!8021 () Bool)

(declare-fun maxPrefixOneRule!78 (LexerInterface!429 Rule!886 List!3014) Option!364)

(assert (=> bm!8021 (= call!8026 (maxPrefixOneRule!78 thiss!17480 (h!8402 rules!1920) lt!58613))))

(declare-fun b!179270 () Bool)

(declare-fun contains!483 (List!3015 Rule!886) Bool)

(assert (=> b!179270 (= e!109031 (contains!483 rules!1920 (rule!1058 (_1!1703 (get!841 lt!58648)))))))

(assert (= (and d!45495 c!35163) b!179268))

(assert (= (and d!45495 (not c!35163)) b!179263))

(assert (= (or b!179268 b!179263) bm!8021))

(assert (= (and d!45495 (not res!81159)) b!179267))

(assert (= (and b!179267 res!81160) b!179262))

(assert (= (and b!179262 res!81158) b!179265))

(assert (= (and b!179265 res!81157) b!179264))

(assert (= (and b!179264 res!81161) b!179266))

(assert (= (and b!179266 res!81155) b!179269))

(assert (= (and b!179269 res!81156) b!179270))

(declare-fun m!181193 () Bool)

(assert (=> b!179265 m!181193))

(declare-fun m!181195 () Bool)

(assert (=> b!179265 m!181195))

(declare-fun m!181197 () Bool)

(assert (=> b!179265 m!181197))

(assert (=> b!179266 m!181193))

(declare-fun m!181199 () Bool)

(assert (=> b!179266 m!181199))

(assert (=> b!179266 m!181199))

(declare-fun m!181201 () Bool)

(assert (=> b!179266 m!181201))

(assert (=> b!179264 m!181193))

(declare-fun m!181203 () Bool)

(assert (=> b!179264 m!181203))

(assert (=> b!179264 m!181203))

(declare-fun m!181205 () Bool)

(assert (=> b!179264 m!181205))

(assert (=> b!179264 m!181205))

(declare-fun m!181207 () Bool)

(assert (=> b!179264 m!181207))

(assert (=> b!179269 m!181193))

(assert (=> b!179269 m!181203))

(assert (=> b!179269 m!181203))

(assert (=> b!179269 m!181205))

(assert (=> b!179269 m!181205))

(declare-fun m!181209 () Bool)

(assert (=> b!179269 m!181209))

(assert (=> b!179262 m!181193))

(assert (=> b!179262 m!181203))

(assert (=> b!179262 m!181203))

(assert (=> b!179262 m!181205))

(declare-fun m!181211 () Bool)

(assert (=> b!179267 m!181211))

(declare-fun m!181213 () Bool)

(assert (=> d!45495 m!181213))

(declare-fun m!181215 () Bool)

(assert (=> d!45495 m!181215))

(declare-fun m!181217 () Bool)

(assert (=> d!45495 m!181217))

(assert (=> d!45495 m!181047))

(declare-fun m!181219 () Bool)

(assert (=> bm!8021 m!181219))

(assert (=> b!179270 m!181193))

(declare-fun m!181221 () Bool)

(assert (=> b!179270 m!181221))

(declare-fun m!181223 () Bool)

(assert (=> b!179263 m!181223))

(assert (=> b!179143 d!45495))

(declare-fun d!45497 () Bool)

(assert (=> d!45497 (= (get!841 lt!58616) (v!13832 lt!58616))))

(assert (=> b!179165 d!45497))

(declare-fun d!45499 () Bool)

(assert (=> d!45499 (= (head!618 tokens!465) (h!8403 tokens!465))))

(assert (=> b!179165 d!45499))

(declare-fun bm!8024 () Bool)

(declare-fun call!8029 () Bool)

(assert (=> bm!8024 (= call!8029 (isEmpty!1344 lt!58614))))

(declare-fun b!179318 () Bool)

(declare-fun e!109063 () Bool)

(declare-fun e!109062 () Bool)

(assert (=> b!179318 (= e!109063 e!109062)))

(declare-fun res!81196 () Bool)

(assert (=> b!179318 (=> res!81196 e!109062)))

(assert (=> b!179318 (= res!81196 call!8029)))

(declare-fun b!179319 () Bool)

(declare-fun res!81192 () Bool)

(assert (=> b!179319 (=> res!81192 e!109062)))

(declare-fun tail!357 (List!3014) List!3014)

(assert (=> b!179319 (= res!81192 (not (isEmpty!1344 (tail!357 lt!58614))))))

(declare-fun b!179320 () Bool)

(declare-fun head!620 (List!3014) C!2456)

(assert (=> b!179320 (= e!109062 (not (= (head!620 lt!58614) (c!35150 (regex!543 (rule!1058 (h!8403 tokens!465)))))))))

(declare-fun d!45501 () Bool)

(declare-fun e!109066 () Bool)

(assert (=> d!45501 e!109066))

(declare-fun c!35175 () Bool)

(assert (=> d!45501 (= c!35175 ((_ is EmptyExpr!767) (regex!543 (rule!1058 (h!8403 tokens!465)))))))

(declare-fun lt!58661 () Bool)

(declare-fun e!109064 () Bool)

(assert (=> d!45501 (= lt!58661 e!109064)))

(declare-fun c!35174 () Bool)

(assert (=> d!45501 (= c!35174 (isEmpty!1344 lt!58614))))

(declare-fun validRegex!187 (Regex!767) Bool)

(assert (=> d!45501 (validRegex!187 (regex!543 (rule!1058 (h!8403 tokens!465))))))

(assert (=> d!45501 (= (matchR!105 (regex!543 (rule!1058 (h!8403 tokens!465))) lt!58614) lt!58661)))

(declare-fun b!179317 () Bool)

(declare-fun res!81193 () Bool)

(declare-fun e!109065 () Bool)

(assert (=> b!179317 (=> res!81193 e!109065)))

(assert (=> b!179317 (= res!81193 (not ((_ is ElementMatch!767) (regex!543 (rule!1058 (h!8403 tokens!465))))))))

(declare-fun e!109060 () Bool)

(assert (=> b!179317 (= e!109060 e!109065)))

(declare-fun b!179321 () Bool)

(declare-fun e!109061 () Bool)

(assert (=> b!179321 (= e!109061 (= (head!620 lt!58614) (c!35150 (regex!543 (rule!1058 (h!8403 tokens!465))))))))

(declare-fun b!179322 () Bool)

(declare-fun derivativeStep!80 (Regex!767 C!2456) Regex!767)

(assert (=> b!179322 (= e!109064 (matchR!105 (derivativeStep!80 (regex!543 (rule!1058 (h!8403 tokens!465))) (head!620 lt!58614)) (tail!357 lt!58614)))))

(declare-fun b!179323 () Bool)

(assert (=> b!179323 (= e!109060 (not lt!58661))))

(declare-fun b!179324 () Bool)

(assert (=> b!179324 (= e!109066 e!109060)))

(declare-fun c!35173 () Bool)

(assert (=> b!179324 (= c!35173 ((_ is EmptyLang!767) (regex!543 (rule!1058 (h!8403 tokens!465)))))))

(declare-fun b!179325 () Bool)

(declare-fun res!81191 () Bool)

(assert (=> b!179325 (=> res!81191 e!109065)))

(assert (=> b!179325 (= res!81191 e!109061)))

(declare-fun res!81194 () Bool)

(assert (=> b!179325 (=> (not res!81194) (not e!109061))))

(assert (=> b!179325 (= res!81194 lt!58661)))

(declare-fun b!179326 () Bool)

(declare-fun res!81197 () Bool)

(assert (=> b!179326 (=> (not res!81197) (not e!109061))))

(assert (=> b!179326 (= res!81197 (isEmpty!1344 (tail!357 lt!58614)))))

(declare-fun b!179327 () Bool)

(assert (=> b!179327 (= e!109066 (= lt!58661 call!8029))))

(declare-fun b!179328 () Bool)

(declare-fun nullable!114 (Regex!767) Bool)

(assert (=> b!179328 (= e!109064 (nullable!114 (regex!543 (rule!1058 (h!8403 tokens!465)))))))

(declare-fun b!179329 () Bool)

(declare-fun res!81190 () Bool)

(assert (=> b!179329 (=> (not res!81190) (not e!109061))))

(assert (=> b!179329 (= res!81190 (not call!8029))))

(declare-fun b!179330 () Bool)

(assert (=> b!179330 (= e!109065 e!109063)))

(declare-fun res!81195 () Bool)

(assert (=> b!179330 (=> (not res!81195) (not e!109063))))

(assert (=> b!179330 (= res!81195 (not lt!58661))))

(assert (= (and d!45501 c!35174) b!179328))

(assert (= (and d!45501 (not c!35174)) b!179322))

(assert (= (and d!45501 c!35175) b!179327))

(assert (= (and d!45501 (not c!35175)) b!179324))

(assert (= (and b!179324 c!35173) b!179323))

(assert (= (and b!179324 (not c!35173)) b!179317))

(assert (= (and b!179317 (not res!81193)) b!179325))

(assert (= (and b!179325 res!81194) b!179329))

(assert (= (and b!179329 res!81190) b!179326))

(assert (= (and b!179326 res!81197) b!179321))

(assert (= (and b!179325 (not res!81191)) b!179330))

(assert (= (and b!179330 res!81195) b!179318))

(assert (= (and b!179318 (not res!81196)) b!179319))

(assert (= (and b!179319 (not res!81192)) b!179320))

(assert (= (or b!179327 b!179318 b!179329) bm!8024))

(declare-fun m!181255 () Bool)

(assert (=> d!45501 m!181255))

(declare-fun m!181257 () Bool)

(assert (=> d!45501 m!181257))

(declare-fun m!181259 () Bool)

(assert (=> b!179321 m!181259))

(assert (=> bm!8024 m!181255))

(assert (=> b!179322 m!181259))

(assert (=> b!179322 m!181259))

(declare-fun m!181261 () Bool)

(assert (=> b!179322 m!181261))

(declare-fun m!181263 () Bool)

(assert (=> b!179322 m!181263))

(assert (=> b!179322 m!181261))

(assert (=> b!179322 m!181263))

(declare-fun m!181265 () Bool)

(assert (=> b!179322 m!181265))

(declare-fun m!181267 () Bool)

(assert (=> b!179328 m!181267))

(assert (=> b!179319 m!181263))

(assert (=> b!179319 m!181263))

(declare-fun m!181269 () Bool)

(assert (=> b!179319 m!181269))

(assert (=> b!179320 m!181259))

(assert (=> b!179326 m!181263))

(assert (=> b!179326 m!181263))

(assert (=> b!179326 m!181269))

(assert (=> b!179162 d!45501))

(declare-fun d!45515 () Bool)

(declare-fun list!1104 (Conc!908) List!3014)

(assert (=> d!45515 (= (list!1101 lt!58607) (list!1104 (c!35149 lt!58607)))))

(declare-fun bs!17847 () Bool)

(assert (= bs!17847 d!45515))

(declare-fun m!181271 () Bool)

(assert (=> bs!17847 m!181271))

(assert (=> b!179140 d!45515))

(declare-fun d!45517 () Bool)

(declare-fun lt!58681 () BalanceConc!1824)

(declare-fun printListTailRec!63 (LexerInterface!429 List!3016 List!3014) List!3014)

(declare-fun dropList!96 (BalanceConc!1826 Int) List!3016)

(assert (=> d!45517 (= (list!1101 lt!58681) (printListTailRec!63 thiss!17480 (dropList!96 lt!58618 0) (list!1101 (BalanceConc!1825 Empty!908))))))

(declare-fun e!109072 () BalanceConc!1824)

(assert (=> d!45517 (= lt!58681 e!109072)))

(declare-fun c!35178 () Bool)

(declare-fun size!2465 (BalanceConc!1826) Int)

(assert (=> d!45517 (= c!35178 (>= 0 (size!2465 lt!58618)))))

(declare-fun e!109071 () Bool)

(assert (=> d!45517 e!109071))

(declare-fun res!81200 () Bool)

(assert (=> d!45517 (=> (not res!81200) (not e!109071))))

(assert (=> d!45517 (= res!81200 (>= 0 0))))

(assert (=> d!45517 (= (printTailRec!123 thiss!17480 lt!58618 0 (BalanceConc!1825 Empty!908)) lt!58681)))

(declare-fun b!179337 () Bool)

(assert (=> b!179337 (= e!109071 (<= 0 (size!2465 lt!58618)))))

(declare-fun b!179338 () Bool)

(assert (=> b!179338 (= e!109072 (BalanceConc!1825 Empty!908))))

(declare-fun b!179339 () Bool)

(declare-fun ++!706 (BalanceConc!1824 BalanceConc!1824) BalanceConc!1824)

(declare-fun apply!445 (BalanceConc!1826 Int) Token!830)

(assert (=> b!179339 (= e!109072 (printTailRec!123 thiss!17480 lt!58618 (+ 0 1) (++!706 (BalanceConc!1825 Empty!908) (charsOf!198 (apply!445 lt!58618 0)))))))

(declare-fun lt!58680 () List!3016)

(declare-fun list!1105 (BalanceConc!1826) List!3016)

(assert (=> b!179339 (= lt!58680 (list!1105 lt!58618))))

(declare-fun lt!58676 () Unit!2736)

(declare-fun lemmaDropApply!136 (List!3016 Int) Unit!2736)

(assert (=> b!179339 (= lt!58676 (lemmaDropApply!136 lt!58680 0))))

(declare-fun drop!149 (List!3016 Int) List!3016)

(declare-fun apply!446 (List!3016 Int) Token!830)

(assert (=> b!179339 (= (head!618 (drop!149 lt!58680 0)) (apply!446 lt!58680 0))))

(declare-fun lt!58678 () Unit!2736)

(assert (=> b!179339 (= lt!58678 lt!58676)))

(declare-fun lt!58679 () List!3016)

(assert (=> b!179339 (= lt!58679 (list!1105 lt!58618))))

(declare-fun lt!58677 () Unit!2736)

(declare-fun lemmaDropTail!128 (List!3016 Int) Unit!2736)

(assert (=> b!179339 (= lt!58677 (lemmaDropTail!128 lt!58679 0))))

(declare-fun tail!358 (List!3016) List!3016)

(assert (=> b!179339 (= (tail!358 (drop!149 lt!58679 0)) (drop!149 lt!58679 (+ 0 1)))))

(declare-fun lt!58682 () Unit!2736)

(assert (=> b!179339 (= lt!58682 lt!58677)))

(assert (= (and d!45517 res!81200) b!179337))

(assert (= (and d!45517 c!35178) b!179338))

(assert (= (and d!45517 (not c!35178)) b!179339))

(declare-fun m!181273 () Bool)

(assert (=> d!45517 m!181273))

(declare-fun m!181275 () Bool)

(assert (=> d!45517 m!181275))

(declare-fun m!181277 () Bool)

(assert (=> d!45517 m!181277))

(assert (=> d!45517 m!181273))

(declare-fun m!181279 () Bool)

(assert (=> d!45517 m!181279))

(assert (=> d!45517 m!181275))

(declare-fun m!181281 () Bool)

(assert (=> d!45517 m!181281))

(assert (=> b!179337 m!181281))

(declare-fun m!181283 () Bool)

(assert (=> b!179339 m!181283))

(declare-fun m!181285 () Bool)

(assert (=> b!179339 m!181285))

(declare-fun m!181287 () Bool)

(assert (=> b!179339 m!181287))

(declare-fun m!181289 () Bool)

(assert (=> b!179339 m!181289))

(declare-fun m!181291 () Bool)

(assert (=> b!179339 m!181291))

(declare-fun m!181293 () Bool)

(assert (=> b!179339 m!181293))

(declare-fun m!181295 () Bool)

(assert (=> b!179339 m!181295))

(declare-fun m!181297 () Bool)

(assert (=> b!179339 m!181297))

(declare-fun m!181299 () Bool)

(assert (=> b!179339 m!181299))

(declare-fun m!181301 () Bool)

(assert (=> b!179339 m!181301))

(assert (=> b!179339 m!181295))

(assert (=> b!179339 m!181287))

(declare-fun m!181303 () Bool)

(assert (=> b!179339 m!181303))

(assert (=> b!179339 m!181291))

(assert (=> b!179339 m!181303))

(declare-fun m!181305 () Bool)

(assert (=> b!179339 m!181305))

(assert (=> b!179339 m!181289))

(declare-fun m!181307 () Bool)

(assert (=> b!179339 m!181307))

(assert (=> b!179140 d!45517))

(declare-fun d!45519 () Bool)

(declare-fun lt!58685 () BalanceConc!1824)

(assert (=> d!45519 (= (list!1101 lt!58685) (printList!113 thiss!17480 (list!1105 lt!58618)))))

(assert (=> d!45519 (= lt!58685 (printTailRec!123 thiss!17480 lt!58618 0 (BalanceConc!1825 Empty!908)))))

(assert (=> d!45519 (= (print!160 thiss!17480 lt!58618) lt!58685)))

(declare-fun bs!17848 () Bool)

(assert (= bs!17848 d!45519))

(declare-fun m!181309 () Bool)

(assert (=> bs!17848 m!181309))

(assert (=> bs!17848 m!181283))

(assert (=> bs!17848 m!181283))

(declare-fun m!181311 () Bool)

(assert (=> bs!17848 m!181311))

(assert (=> bs!17848 m!181135))

(assert (=> b!179140 d!45519))

(declare-fun d!45521 () Bool)

(declare-fun e!109075 () Bool)

(assert (=> d!45521 e!109075))

(declare-fun res!81203 () Bool)

(assert (=> d!45521 (=> (not res!81203) (not e!109075))))

(declare-fun lt!58688 () BalanceConc!1826)

(assert (=> d!45521 (= res!81203 (= (list!1105 lt!58688) (Cons!3006 (h!8403 tokens!465) Nil!3006)))))

(declare-fun singleton!44 (Token!830) BalanceConc!1826)

(assert (=> d!45521 (= lt!58688 (singleton!44 (h!8403 tokens!465)))))

(assert (=> d!45521 (= (singletonSeq!95 (h!8403 tokens!465)) lt!58688)))

(declare-fun b!179342 () Bool)

(declare-fun isBalanced!249 (Conc!909) Bool)

(assert (=> b!179342 (= e!109075 (isBalanced!249 (c!35151 lt!58688)))))

(assert (= (and d!45521 res!81203) b!179342))

(declare-fun m!181313 () Bool)

(assert (=> d!45521 m!181313))

(declare-fun m!181315 () Bool)

(assert (=> d!45521 m!181315))

(declare-fun m!181317 () Bool)

(assert (=> b!179342 m!181317))

(assert (=> b!179140 d!45521))

(declare-fun d!45523 () Bool)

(declare-fun c!35181 () Bool)

(assert (=> d!45523 (= c!35181 ((_ is Cons!3006) (Cons!3006 (h!8403 tokens!465) Nil!3006)))))

(declare-fun e!109078 () List!3014)

(assert (=> d!45523 (= (printList!113 thiss!17480 (Cons!3006 (h!8403 tokens!465) Nil!3006)) e!109078)))

(declare-fun b!179347 () Bool)

(assert (=> b!179347 (= e!109078 (++!704 (list!1101 (charsOf!198 (h!8403 (Cons!3006 (h!8403 tokens!465) Nil!3006)))) (printList!113 thiss!17480 (t!28154 (Cons!3006 (h!8403 tokens!465) Nil!3006)))))))

(declare-fun b!179348 () Bool)

(assert (=> b!179348 (= e!109078 Nil!3004)))

(assert (= (and d!45523 c!35181) b!179347))

(assert (= (and d!45523 (not c!35181)) b!179348))

(declare-fun m!181319 () Bool)

(assert (=> b!179347 m!181319))

(assert (=> b!179347 m!181319))

(declare-fun m!181321 () Bool)

(assert (=> b!179347 m!181321))

(declare-fun m!181323 () Bool)

(assert (=> b!179347 m!181323))

(assert (=> b!179347 m!181321))

(assert (=> b!179347 m!181323))

(declare-fun m!181325 () Bool)

(assert (=> b!179347 m!181325))

(assert (=> b!179140 d!45523))

(declare-fun d!45525 () Bool)

(declare-fun res!81208 () Bool)

(declare-fun e!109083 () Bool)

(assert (=> d!45525 (=> res!81208 e!109083)))

(assert (=> d!45525 (= res!81208 (not ((_ is Cons!3005) rules!1920)))))

(assert (=> d!45525 (= (sepAndNonSepRulesDisjointChars!132 rules!1920 rules!1920) e!109083)))

(declare-fun b!179353 () Bool)

(declare-fun e!109084 () Bool)

(assert (=> b!179353 (= e!109083 e!109084)))

(declare-fun res!81209 () Bool)

(assert (=> b!179353 (=> (not res!81209) (not e!109084))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!45 (Rule!886 List!3015) Bool)

(assert (=> b!179353 (= res!81209 (ruleDisjointCharsFromAllFromOtherType!45 (h!8402 rules!1920) rules!1920))))

(declare-fun b!179354 () Bool)

(assert (=> b!179354 (= e!109084 (sepAndNonSepRulesDisjointChars!132 rules!1920 (t!28153 rules!1920)))))

(assert (= (and d!45525 (not res!81208)) b!179353))

(assert (= (and b!179353 res!81209) b!179354))

(declare-fun m!181327 () Bool)

(assert (=> b!179353 m!181327))

(declare-fun m!181329 () Bool)

(assert (=> b!179354 m!181329))

(assert (=> b!179163 d!45525))

(declare-fun bs!17851 () Bool)

(declare-fun d!45527 () Bool)

(assert (= bs!17851 (and d!45527 b!179155)))

(declare-fun lambda!5271 () Int)

(assert (=> bs!17851 (not (= lambda!5271 lambda!5259))))

(declare-fun bs!17852 () Bool)

(assert (= bs!17852 (and d!45527 b!179156)))

(assert (=> bs!17852 (= lambda!5271 lambda!5260)))

(declare-fun b!179391 () Bool)

(declare-fun e!109107 () Bool)

(assert (=> b!179391 (= e!109107 true)))

(declare-fun b!179390 () Bool)

(declare-fun e!109106 () Bool)

(assert (=> b!179390 (= e!109106 e!109107)))

(declare-fun b!179389 () Bool)

(declare-fun e!109105 () Bool)

(assert (=> b!179389 (= e!109105 e!109106)))

(assert (=> d!45527 e!109105))

(assert (= b!179390 b!179391))

(assert (= b!179389 b!179390))

(assert (= (and d!45527 ((_ is Cons!3005) rules!1920)) b!179389))

(assert (=> b!179391 (< (dynLambda!1191 order!1733 (toValue!1214 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5271))))

(assert (=> b!179391 (< (dynLambda!1193 order!1737 (toChars!1073 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5271))))

(assert (=> d!45527 true))

(declare-fun e!109104 () Bool)

(assert (=> d!45527 e!109104))

(declare-fun res!81214 () Bool)

(assert (=> d!45527 (=> (not res!81214) (not e!109104))))

(declare-fun lt!58710 () Bool)

(assert (=> d!45527 (= res!81214 (= lt!58710 (forall!607 (list!1105 lt!58611) lambda!5271)))))

(declare-fun forall!609 (BalanceConc!1826 Int) Bool)

(assert (=> d!45527 (= lt!58710 (forall!609 lt!58611 lambda!5271))))

(assert (=> d!45527 (not (isEmpty!1343 rules!1920))))

(assert (=> d!45527 (= (rulesProduceEachTokenIndividually!221 thiss!17480 rules!1920 lt!58611) lt!58710)))

(declare-fun b!179388 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!128 (LexerInterface!429 List!3015 List!3016) Bool)

(assert (=> b!179388 (= e!109104 (= lt!58710 (rulesProduceEachTokenIndividuallyList!128 thiss!17480 rules!1920 (list!1105 lt!58611))))))

(assert (= (and d!45527 res!81214) b!179388))

(declare-fun m!181373 () Bool)

(assert (=> d!45527 m!181373))

(assert (=> d!45527 m!181373))

(declare-fun m!181375 () Bool)

(assert (=> d!45527 m!181375))

(declare-fun m!181377 () Bool)

(assert (=> d!45527 m!181377))

(assert (=> d!45527 m!181027))

(assert (=> b!179388 m!181373))

(assert (=> b!179388 m!181373))

(declare-fun m!181379 () Bool)

(assert (=> b!179388 m!181379))

(assert (=> b!179142 d!45527))

(declare-fun d!45533 () Bool)

(declare-fun fromListB!180 (List!3016) BalanceConc!1826)

(assert (=> d!45533 (= (seqFromList!464 tokens!465) (fromListB!180 tokens!465))))

(declare-fun bs!17853 () Bool)

(assert (= bs!17853 d!45533))

(declare-fun m!181381 () Bool)

(assert (=> bs!17853 m!181381))

(assert (=> b!179142 d!45533))

(declare-fun d!45535 () Bool)

(declare-fun lt!58743 () Bool)

(declare-fun e!109127 () Bool)

(assert (=> d!45535 (= lt!58743 e!109127)))

(declare-fun res!81229 () Bool)

(assert (=> d!45535 (=> (not res!81229) (not e!109127))))

(assert (=> d!45535 (= res!81229 (= (list!1105 (_1!1705 (lex!229 thiss!17480 rules!1920 (print!160 thiss!17480 (singletonSeq!95 (h!8403 tokens!465)))))) (list!1105 (singletonSeq!95 (h!8403 tokens!465)))))))

(declare-fun e!109126 () Bool)

(assert (=> d!45535 (= lt!58743 e!109126)))

(declare-fun res!81228 () Bool)

(assert (=> d!45535 (=> (not res!81228) (not e!109126))))

(declare-fun lt!58744 () tuple2!2978)

(assert (=> d!45535 (= res!81228 (= (size!2465 (_1!1705 lt!58744)) 1))))

(assert (=> d!45535 (= lt!58744 (lex!229 thiss!17480 rules!1920 (print!160 thiss!17480 (singletonSeq!95 (h!8403 tokens!465)))))))

(assert (=> d!45535 (not (isEmpty!1343 rules!1920))))

(assert (=> d!45535 (= (rulesProduceIndividualToken!178 thiss!17480 rules!1920 (h!8403 tokens!465)) lt!58743)))

(declare-fun b!179420 () Bool)

(declare-fun res!81227 () Bool)

(assert (=> b!179420 (=> (not res!81227) (not e!109126))))

(assert (=> b!179420 (= res!81227 (= (apply!445 (_1!1705 lt!58744) 0) (h!8403 tokens!465)))))

(declare-fun b!179421 () Bool)

(declare-fun isEmpty!1350 (BalanceConc!1824) Bool)

(assert (=> b!179421 (= e!109126 (isEmpty!1350 (_2!1705 lt!58744)))))

(declare-fun b!179422 () Bool)

(assert (=> b!179422 (= e!109127 (isEmpty!1350 (_2!1705 (lex!229 thiss!17480 rules!1920 (print!160 thiss!17480 (singletonSeq!95 (h!8403 tokens!465)))))))))

(assert (= (and d!45535 res!81228) b!179420))

(assert (= (and b!179420 res!81227) b!179421))

(assert (= (and d!45535 res!81229) b!179422))

(assert (=> d!45535 m!181133))

(declare-fun m!181383 () Bool)

(assert (=> d!45535 m!181383))

(assert (=> d!45535 m!181133))

(declare-fun m!181385 () Bool)

(assert (=> d!45535 m!181385))

(assert (=> d!45535 m!181385))

(declare-fun m!181387 () Bool)

(assert (=> d!45535 m!181387))

(assert (=> d!45535 m!181133))

(declare-fun m!181389 () Bool)

(assert (=> d!45535 m!181389))

(declare-fun m!181391 () Bool)

(assert (=> d!45535 m!181391))

(assert (=> d!45535 m!181027))

(declare-fun m!181393 () Bool)

(assert (=> b!179420 m!181393))

(declare-fun m!181395 () Bool)

(assert (=> b!179421 m!181395))

(assert (=> b!179422 m!181133))

(assert (=> b!179422 m!181133))

(assert (=> b!179422 m!181385))

(assert (=> b!179422 m!181385))

(assert (=> b!179422 m!181387))

(declare-fun m!181397 () Bool)

(assert (=> b!179422 m!181397))

(assert (=> b!179141 d!45535))

(declare-fun d!45537 () Bool)

(declare-fun res!81234 () Bool)

(declare-fun e!109130 () Bool)

(assert (=> d!45537 (=> (not res!81234) (not e!109130))))

(assert (=> d!45537 (= res!81234 (not (isEmpty!1344 (originalCharacters!586 (h!8403 tokens!465)))))))

(assert (=> d!45537 (= (inv!3838 (h!8403 tokens!465)) e!109130)))

(declare-fun b!179427 () Bool)

(declare-fun res!81235 () Bool)

(assert (=> b!179427 (=> (not res!81235) (not e!109130))))

(declare-fun dynLambda!1196 (Int TokenValue!565) BalanceConc!1824)

(assert (=> b!179427 (= res!81235 (= (originalCharacters!586 (h!8403 tokens!465)) (list!1101 (dynLambda!1196 (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (value!19791 (h!8403 tokens!465))))))))

(declare-fun b!179428 () Bool)

(assert (=> b!179428 (= e!109130 (= (size!2461 (h!8403 tokens!465)) (size!2464 (originalCharacters!586 (h!8403 tokens!465)))))))

(assert (= (and d!45537 res!81234) b!179427))

(assert (= (and b!179427 res!81235) b!179428))

(declare-fun b_lambda!4263 () Bool)

(assert (=> (not b_lambda!4263) (not b!179427)))

(declare-fun t!28168 () Bool)

(declare-fun tb!7497 () Bool)

(assert (=> (and b!179164 (= (toChars!1073 (transformation!543 (h!8402 rules!1920))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465))))) t!28168) tb!7497))

(declare-fun b!179433 () Bool)

(declare-fun e!109133 () Bool)

(declare-fun tp!85994 () Bool)

(declare-fun inv!3841 (Conc!908) Bool)

(assert (=> b!179433 (= e!109133 (and (inv!3841 (c!35149 (dynLambda!1196 (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (value!19791 (h!8403 tokens!465))))) tp!85994))))

(declare-fun result!10276 () Bool)

(declare-fun inv!3842 (BalanceConc!1824) Bool)

(assert (=> tb!7497 (= result!10276 (and (inv!3842 (dynLambda!1196 (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (value!19791 (h!8403 tokens!465)))) e!109133))))

(assert (= tb!7497 b!179433))

(declare-fun m!181399 () Bool)

(assert (=> b!179433 m!181399))

(declare-fun m!181401 () Bool)

(assert (=> tb!7497 m!181401))

(assert (=> b!179427 t!28168))

(declare-fun b_and!12209 () Bool)

(assert (= b_and!12199 (and (=> t!28168 result!10276) b_and!12209)))

(declare-fun t!28170 () Bool)

(declare-fun tb!7499 () Bool)

(assert (=> (and b!179152 (= (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465))))) t!28170) tb!7499))

(declare-fun result!10280 () Bool)

(assert (= result!10280 result!10276))

(assert (=> b!179427 t!28170))

(declare-fun b_and!12211 () Bool)

(assert (= b_and!12203 (and (=> t!28170 result!10280) b_and!12211)))

(declare-fun t!28172 () Bool)

(declare-fun tb!7501 () Bool)

(assert (=> (and b!179161 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465))))) t!28172) tb!7501))

(declare-fun result!10282 () Bool)

(assert (= result!10282 result!10276))

(assert (=> b!179427 t!28172))

(declare-fun b_and!12213 () Bool)

(assert (= b_and!12207 (and (=> t!28172 result!10282) b_and!12213)))

(declare-fun m!181403 () Bool)

(assert (=> d!45537 m!181403))

(declare-fun m!181405 () Bool)

(assert (=> b!179427 m!181405))

(assert (=> b!179427 m!181405))

(declare-fun m!181407 () Bool)

(assert (=> b!179427 m!181407))

(declare-fun m!181409 () Bool)

(assert (=> b!179428 m!181409))

(assert (=> b!179149 d!45537))

(declare-fun d!45539 () Bool)

(declare-fun res!81241 () Bool)

(declare-fun e!109143 () Bool)

(assert (=> d!45539 (=> (not res!81241) (not e!109143))))

(declare-fun rulesValid!153 (LexerInterface!429 List!3015) Bool)

(assert (=> d!45539 (= res!81241 (rulesValid!153 thiss!17480 rules!1920))))

(assert (=> d!45539 (= (rulesInvariant!395 thiss!17480 rules!1920) e!109143)))

(declare-fun b!179447 () Bool)

(declare-datatypes ((List!3018 0))(
  ( (Nil!3008) (Cons!3008 (h!8405 String!3905) (t!28220 List!3018)) )
))
(declare-fun noDuplicateTag!153 (LexerInterface!429 List!3015 List!3018) Bool)

(assert (=> b!179447 (= e!109143 (noDuplicateTag!153 thiss!17480 rules!1920 Nil!3008))))

(assert (= (and d!45539 res!81241) b!179447))

(declare-fun m!181411 () Bool)

(assert (=> d!45539 m!181411))

(declare-fun m!181413 () Bool)

(assert (=> b!179447 m!181413))

(assert (=> b!179146 d!45539))

(declare-fun d!45541 () Bool)

(assert (=> d!45541 (= (inv!3834 (tag!721 (h!8402 rules!1920))) (= (mod (str.len (value!19790 (tag!721 (h!8402 rules!1920)))) 2) 0))))

(assert (=> b!179145 d!45541))

(declare-fun d!45543 () Bool)

(declare-fun res!81244 () Bool)

(declare-fun e!109149 () Bool)

(assert (=> d!45543 (=> (not res!81244) (not e!109149))))

(declare-fun semiInverseModEq!186 (Int Int) Bool)

(assert (=> d!45543 (= res!81244 (semiInverseModEq!186 (toChars!1073 (transformation!543 (h!8402 rules!1920))) (toValue!1214 (transformation!543 (h!8402 rules!1920)))))))

(assert (=> d!45543 (= (inv!3837 (transformation!543 (h!8402 rules!1920))) e!109149)))

(declare-fun b!179453 () Bool)

(declare-fun equivClasses!169 (Int Int) Bool)

(assert (=> b!179453 (= e!109149 (equivClasses!169 (toChars!1073 (transformation!543 (h!8402 rules!1920))) (toValue!1214 (transformation!543 (h!8402 rules!1920)))))))

(assert (= (and d!45543 res!81244) b!179453))

(declare-fun m!181435 () Bool)

(assert (=> d!45543 m!181435))

(declare-fun m!181441 () Bool)

(assert (=> b!179453 m!181441))

(assert (=> b!179145 d!45543))

(declare-fun d!45545 () Bool)

(declare-fun lt!58759 () Bool)

(declare-fun e!109151 () Bool)

(assert (=> d!45545 (= lt!58759 e!109151)))

(declare-fun res!81247 () Bool)

(assert (=> d!45545 (=> (not res!81247) (not e!109151))))

(assert (=> d!45545 (= res!81247 (= (list!1105 (_1!1705 (lex!229 thiss!17480 rules!1920 (print!160 thiss!17480 (singletonSeq!95 separatorToken!170))))) (list!1105 (singletonSeq!95 separatorToken!170))))))

(declare-fun e!109150 () Bool)

(assert (=> d!45545 (= lt!58759 e!109150)))

(declare-fun res!81246 () Bool)

(assert (=> d!45545 (=> (not res!81246) (not e!109150))))

(declare-fun lt!58760 () tuple2!2978)

(assert (=> d!45545 (= res!81246 (= (size!2465 (_1!1705 lt!58760)) 1))))

(assert (=> d!45545 (= lt!58760 (lex!229 thiss!17480 rules!1920 (print!160 thiss!17480 (singletonSeq!95 separatorToken!170))))))

(assert (=> d!45545 (not (isEmpty!1343 rules!1920))))

(assert (=> d!45545 (= (rulesProduceIndividualToken!178 thiss!17480 rules!1920 separatorToken!170) lt!58759)))

(declare-fun b!179454 () Bool)

(declare-fun res!81245 () Bool)

(assert (=> b!179454 (=> (not res!81245) (not e!109150))))

(assert (=> b!179454 (= res!81245 (= (apply!445 (_1!1705 lt!58760) 0) separatorToken!170))))

(declare-fun b!179455 () Bool)

(assert (=> b!179455 (= e!109150 (isEmpty!1350 (_2!1705 lt!58760)))))

(declare-fun b!179456 () Bool)

(assert (=> b!179456 (= e!109151 (isEmpty!1350 (_2!1705 (lex!229 thiss!17480 rules!1920 (print!160 thiss!17480 (singletonSeq!95 separatorToken!170))))))))

(assert (= (and d!45545 res!81246) b!179454))

(assert (= (and b!179454 res!81245) b!179455))

(assert (= (and d!45545 res!81247) b!179456))

(declare-fun m!181477 () Bool)

(assert (=> d!45545 m!181477))

(declare-fun m!181479 () Bool)

(assert (=> d!45545 m!181479))

(assert (=> d!45545 m!181477))

(declare-fun m!181481 () Bool)

(assert (=> d!45545 m!181481))

(assert (=> d!45545 m!181481))

(declare-fun m!181485 () Bool)

(assert (=> d!45545 m!181485))

(assert (=> d!45545 m!181477))

(declare-fun m!181487 () Bool)

(assert (=> d!45545 m!181487))

(declare-fun m!181489 () Bool)

(assert (=> d!45545 m!181489))

(assert (=> d!45545 m!181027))

(declare-fun m!181491 () Bool)

(assert (=> b!179454 m!181491))

(declare-fun m!181493 () Bool)

(assert (=> b!179455 m!181493))

(assert (=> b!179456 m!181477))

(assert (=> b!179456 m!181477))

(assert (=> b!179456 m!181481))

(assert (=> b!179456 m!181481))

(assert (=> b!179456 m!181485))

(declare-fun m!181495 () Bool)

(assert (=> b!179456 m!181495))

(assert (=> b!179147 d!45545))

(declare-fun b!179472 () Bool)

(declare-fun e!109163 () Bool)

(declare-fun inv!15 (TokenValue!565) Bool)

(assert (=> b!179472 (= e!109163 (inv!15 (value!19791 separatorToken!170)))))

(declare-fun b!179473 () Bool)

(declare-fun e!109162 () Bool)

(declare-fun e!109161 () Bool)

(assert (=> b!179473 (= e!109162 e!109161)))

(declare-fun c!35211 () Bool)

(assert (=> b!179473 (= c!35211 ((_ is IntegerValue!1696) (value!19791 separatorToken!170)))))

(declare-fun b!179474 () Bool)

(declare-fun inv!16 (TokenValue!565) Bool)

(assert (=> b!179474 (= e!109162 (inv!16 (value!19791 separatorToken!170)))))

(declare-fun b!179475 () Bool)

(declare-fun res!81250 () Bool)

(assert (=> b!179475 (=> res!81250 e!109163)))

(assert (=> b!179475 (= res!81250 (not ((_ is IntegerValue!1697) (value!19791 separatorToken!170))))))

(assert (=> b!179475 (= e!109161 e!109163)))

(declare-fun b!179476 () Bool)

(declare-fun inv!17 (TokenValue!565) Bool)

(assert (=> b!179476 (= e!109161 (inv!17 (value!19791 separatorToken!170)))))

(declare-fun d!45549 () Bool)

(declare-fun c!35212 () Bool)

(assert (=> d!45549 (= c!35212 ((_ is IntegerValue!1695) (value!19791 separatorToken!170)))))

(assert (=> d!45549 (= (inv!21 (value!19791 separatorToken!170)) e!109162)))

(assert (= (and d!45549 c!35212) b!179474))

(assert (= (and d!45549 (not c!35212)) b!179473))

(assert (= (and b!179473 c!35211) b!179476))

(assert (= (and b!179473 (not c!35211)) b!179475))

(assert (= (and b!179475 (not res!81250)) b!179472))

(declare-fun m!181505 () Bool)

(assert (=> b!179472 m!181505))

(declare-fun m!181507 () Bool)

(assert (=> b!179474 m!181507))

(declare-fun m!181509 () Bool)

(assert (=> b!179476 m!181509))

(assert (=> b!179154 d!45549))

(declare-fun d!45553 () Bool)

(assert (=> d!45553 (= (seqFromList!464 (t!28154 tokens!465)) (fromListB!180 (t!28154 tokens!465)))))

(declare-fun bs!17861 () Bool)

(assert (= bs!17861 d!45553))

(declare-fun m!181511 () Bool)

(assert (=> bs!17861 m!181511))

(assert (=> b!179153 d!45553))

(declare-fun b!179496 () Bool)

(declare-fun res!81259 () Bool)

(declare-fun e!109174 () Bool)

(assert (=> b!179496 (=> (not res!81259) (not e!109174))))

(declare-fun lt!58769 () List!3014)

(assert (=> b!179496 (= res!81259 (= (size!2464 lt!58769) (+ (size!2464 lt!58604) (size!2464 lt!58612))))))

(declare-fun d!45555 () Bool)

(assert (=> d!45555 e!109174))

(declare-fun res!81260 () Bool)

(assert (=> d!45555 (=> (not res!81260) (not e!109174))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!415 (List!3014) (InoxSet C!2456))

(assert (=> d!45555 (= res!81260 (= (content!415 lt!58769) ((_ map or) (content!415 lt!58604) (content!415 lt!58612))))))

(declare-fun e!109173 () List!3014)

(assert (=> d!45555 (= lt!58769 e!109173)))

(declare-fun c!35217 () Bool)

(assert (=> d!45555 (= c!35217 ((_ is Nil!3004) lt!58604))))

(assert (=> d!45555 (= (++!704 lt!58604 lt!58612) lt!58769)))

(declare-fun b!179497 () Bool)

(assert (=> b!179497 (= e!109174 (or (not (= lt!58612 Nil!3004)) (= lt!58769 lt!58604)))))

(declare-fun b!179494 () Bool)

(assert (=> b!179494 (= e!109173 lt!58612)))

(declare-fun b!179495 () Bool)

(assert (=> b!179495 (= e!109173 (Cons!3004 (h!8401 lt!58604) (++!704 (t!28152 lt!58604) lt!58612)))))

(assert (= (and d!45555 c!35217) b!179494))

(assert (= (and d!45555 (not c!35217)) b!179495))

(assert (= (and d!45555 res!81260) b!179496))

(assert (= (and b!179496 res!81259) b!179497))

(declare-fun m!181541 () Bool)

(assert (=> b!179496 m!181541))

(declare-fun m!181543 () Bool)

(assert (=> b!179496 m!181543))

(declare-fun m!181545 () Bool)

(assert (=> b!179496 m!181545))

(declare-fun m!181547 () Bool)

(assert (=> d!45555 m!181547))

(declare-fun m!181549 () Bool)

(assert (=> d!45555 m!181549))

(declare-fun m!181551 () Bool)

(assert (=> d!45555 m!181551))

(declare-fun m!181553 () Bool)

(assert (=> b!179495 m!181553))

(assert (=> b!179153 d!45555))

(declare-fun d!45567 () Bool)

(assert (=> d!45567 (= (list!1101 (charsOf!198 separatorToken!170)) (list!1104 (c!35149 (charsOf!198 separatorToken!170))))))

(declare-fun bs!17864 () Bool)

(assert (= bs!17864 d!45567))

(declare-fun m!181555 () Bool)

(assert (=> bs!17864 m!181555))

(assert (=> b!179153 d!45567))

(declare-fun d!45569 () Bool)

(assert (=> d!45569 (= (list!1101 (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 (seqFromList!464 (t!28154 tokens!465)) separatorToken!170 0)) (list!1104 (c!35149 (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 (seqFromList!464 (t!28154 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!17865 () Bool)

(assert (= bs!17865 d!45569))

(declare-fun m!181557 () Bool)

(assert (=> bs!17865 m!181557))

(assert (=> b!179153 d!45569))

(declare-fun b!179500 () Bool)

(declare-fun res!81261 () Bool)

(declare-fun e!109176 () Bool)

(assert (=> b!179500 (=> (not res!81261) (not e!109176))))

(declare-fun lt!58770 () List!3014)

(assert (=> b!179500 (= res!81261 (= (size!2464 lt!58770) (+ (size!2464 lt!58614) (size!2464 lt!58610))))))

(declare-fun d!45571 () Bool)

(assert (=> d!45571 e!109176))

(declare-fun res!81262 () Bool)

(assert (=> d!45571 (=> (not res!81262) (not e!109176))))

(assert (=> d!45571 (= res!81262 (= (content!415 lt!58770) ((_ map or) (content!415 lt!58614) (content!415 lt!58610))))))

(declare-fun e!109175 () List!3014)

(assert (=> d!45571 (= lt!58770 e!109175)))

(declare-fun c!35218 () Bool)

(assert (=> d!45571 (= c!35218 ((_ is Nil!3004) lt!58614))))

(assert (=> d!45571 (= (++!704 lt!58614 lt!58610) lt!58770)))

(declare-fun b!179501 () Bool)

(assert (=> b!179501 (= e!109176 (or (not (= lt!58610 Nil!3004)) (= lt!58770 lt!58614)))))

(declare-fun b!179498 () Bool)

(assert (=> b!179498 (= e!109175 lt!58610)))

(declare-fun b!179499 () Bool)

(assert (=> b!179499 (= e!109175 (Cons!3004 (h!8401 lt!58614) (++!704 (t!28152 lt!58614) lt!58610)))))

(assert (= (and d!45571 c!35218) b!179498))

(assert (= (and d!45571 (not c!35218)) b!179499))

(assert (= (and d!45571 res!81262) b!179500))

(assert (= (and b!179500 res!81261) b!179501))

(declare-fun m!181559 () Bool)

(assert (=> b!179500 m!181559))

(declare-fun m!181561 () Bool)

(assert (=> b!179500 m!181561))

(declare-fun m!181563 () Bool)

(assert (=> b!179500 m!181563))

(declare-fun m!181565 () Bool)

(assert (=> d!45571 m!181565))

(declare-fun m!181567 () Bool)

(assert (=> d!45571 m!181567))

(declare-fun m!181569 () Bool)

(assert (=> d!45571 m!181569))

(declare-fun m!181571 () Bool)

(assert (=> b!179499 m!181571))

(assert (=> b!179153 d!45571))

(declare-fun bs!17874 () Bool)

(declare-fun b!179581 () Bool)

(assert (= bs!17874 (and b!179581 b!179155)))

(declare-fun lambda!5281 () Int)

(assert (=> bs!17874 (not (= lambda!5281 lambda!5259))))

(declare-fun bs!17875 () Bool)

(assert (= bs!17875 (and b!179581 b!179156)))

(assert (=> bs!17875 (= lambda!5281 lambda!5260)))

(declare-fun bs!17876 () Bool)

(assert (= bs!17876 (and b!179581 d!45527)))

(assert (=> bs!17876 (= lambda!5281 lambda!5271)))

(declare-fun b!179587 () Bool)

(declare-fun e!109222 () Bool)

(assert (=> b!179587 (= e!109222 true)))

(declare-fun b!179586 () Bool)

(declare-fun e!109221 () Bool)

(assert (=> b!179586 (= e!109221 e!109222)))

(declare-fun b!179585 () Bool)

(declare-fun e!109220 () Bool)

(assert (=> b!179585 (= e!109220 e!109221)))

(assert (=> b!179581 e!109220))

(assert (= b!179586 b!179587))

(assert (= b!179585 b!179586))

(assert (= (and b!179581 ((_ is Cons!3005) rules!1920)) b!179585))

(assert (=> b!179587 (< (dynLambda!1191 order!1733 (toValue!1214 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5281))))

(assert (=> b!179587 (< (dynLambda!1193 order!1737 (toChars!1073 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5281))))

(assert (=> b!179581 true))

(declare-fun b!179577 () Bool)

(declare-fun e!109216 () List!3014)

(assert (=> b!179577 (= e!109216 Nil!3004)))

(assert (=> b!179577 (= (print!160 thiss!17480 (singletonSeq!95 (h!8403 (t!28154 tokens!465)))) (printTailRec!123 thiss!17480 (singletonSeq!95 (h!8403 (t!28154 tokens!465))) 0 (BalanceConc!1825 Empty!908)))))

(declare-fun lt!58821 () Unit!2736)

(declare-fun Unit!2744 () Unit!2736)

(assert (=> b!179577 (= lt!58821 Unit!2744)))

(declare-fun lt!58818 () Unit!2736)

(declare-fun lt!58823 () List!3014)

(declare-fun call!8082 () List!3014)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!44 (LexerInterface!429 List!3015 List!3014 List!3014) Unit!2736)

(assert (=> b!179577 (= lt!58818 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!44 thiss!17480 rules!1920 call!8082 lt!58823))))

(assert (=> b!179577 false))

(declare-fun lt!58822 () Unit!2736)

(declare-fun Unit!2745 () Unit!2736)

(assert (=> b!179577 (= lt!58822 Unit!2745)))

(declare-fun b!179578 () Bool)

(declare-fun c!35236 () Bool)

(declare-fun lt!58820 () Option!364)

(assert (=> b!179578 (= c!35236 (and ((_ is Some!363) lt!58820) (not (= (_1!1703 (v!13832 lt!58820)) (h!8403 (t!28154 tokens!465))))))))

(declare-fun e!109217 () List!3014)

(assert (=> b!179578 (= e!109217 e!109216)))

(declare-fun b!179579 () Bool)

(declare-fun e!109219 () BalanceConc!1824)

(declare-fun call!8080 () BalanceConc!1824)

(assert (=> b!179579 (= e!109219 call!8080)))

(declare-fun bm!8073 () Bool)

(declare-fun call!8078 () BalanceConc!1824)

(assert (=> bm!8073 (= call!8080 call!8078)))

(declare-fun bm!8074 () Bool)

(assert (=> bm!8074 (= call!8078 (charsOf!198 (h!8403 (t!28154 tokens!465))))))

(declare-fun bm!8075 () Bool)

(assert (=> bm!8075 (= call!8082 (list!1101 e!109219))))

(declare-fun c!35234 () Bool)

(assert (=> bm!8075 (= c!35234 c!35236)))

(declare-fun e!109218 () List!3014)

(assert (=> b!179581 (= e!109218 e!109217)))

(declare-fun lt!58819 () Unit!2736)

(assert (=> b!179581 (= lt!58819 (forallContained!110 (t!28154 tokens!465) lambda!5281 (h!8403 (t!28154 tokens!465))))))

(assert (=> b!179581 (= lt!58823 (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 (t!28154 (t!28154 tokens!465)) separatorToken!170))))

(assert (=> b!179581 (= lt!58820 (maxPrefix!159 thiss!17480 rules!1920 (++!704 (list!1101 (charsOf!198 (h!8403 (t!28154 tokens!465)))) lt!58823)))))

(declare-fun c!35237 () Bool)

(assert (=> b!179581 (= c!35237 (and ((_ is Some!363) lt!58820) (= (_1!1703 (v!13832 lt!58820)) (h!8403 (t!28154 tokens!465)))))))

(declare-fun b!179582 () Bool)

(declare-fun call!8079 () List!3014)

(assert (=> b!179582 (= e!109216 (++!704 call!8079 lt!58823))))

(declare-fun call!8081 () List!3014)

(declare-fun bm!8076 () Bool)

(assert (=> bm!8076 (= call!8081 (list!1101 (ite c!35237 call!8078 call!8080)))))

(declare-fun b!179583 () Bool)

(assert (=> b!179583 (= e!109217 call!8079)))

(declare-fun b!179584 () Bool)

(assert (=> b!179584 (= e!109218 Nil!3004)))

(declare-fun bm!8077 () Bool)

(assert (=> bm!8077 (= call!8079 (++!704 call!8081 (ite c!35237 lt!58823 call!8082)))))

(declare-fun b!179580 () Bool)

(assert (=> b!179580 (= e!109219 (charsOf!198 separatorToken!170))))

(declare-fun d!45573 () Bool)

(declare-fun c!35235 () Bool)

(assert (=> d!45573 (= c!35235 ((_ is Cons!3006) (t!28154 tokens!465)))))

(assert (=> d!45573 (= (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 (t!28154 tokens!465) separatorToken!170) e!109218)))

(assert (= (and d!45573 c!35235) b!179581))

(assert (= (and d!45573 (not c!35235)) b!179584))

(assert (= (and b!179581 c!35237) b!179583))

(assert (= (and b!179581 (not c!35237)) b!179578))

(assert (= (and b!179578 c!35236) b!179582))

(assert (= (and b!179578 (not c!35236)) b!179577))

(assert (= (or b!179582 b!179577) bm!8073))

(assert (= (or b!179582 b!179577) bm!8075))

(assert (= (and bm!8075 c!35234) b!179580))

(assert (= (and bm!8075 (not c!35234)) b!179579))

(assert (= (or b!179583 bm!8073) bm!8074))

(assert (= (or b!179583 b!179582) bm!8076))

(assert (= (or b!179583 b!179582) bm!8077))

(declare-fun m!181639 () Bool)

(assert (=> bm!8075 m!181639))

(declare-fun m!181641 () Bool)

(assert (=> bm!8076 m!181641))

(declare-fun m!181643 () Bool)

(assert (=> b!179581 m!181643))

(declare-fun m!181645 () Bool)

(assert (=> b!179581 m!181645))

(declare-fun m!181647 () Bool)

(assert (=> b!179581 m!181647))

(assert (=> b!179581 m!181643))

(declare-fun m!181649 () Bool)

(assert (=> b!179581 m!181649))

(assert (=> b!179581 m!181647))

(assert (=> b!179581 m!181649))

(declare-fun m!181651 () Bool)

(assert (=> b!179581 m!181651))

(declare-fun m!181653 () Bool)

(assert (=> b!179581 m!181653))

(declare-fun m!181655 () Bool)

(assert (=> bm!8077 m!181655))

(assert (=> bm!8074 m!181649))

(assert (=> b!179580 m!181077))

(declare-fun m!181657 () Bool)

(assert (=> b!179577 m!181657))

(assert (=> b!179577 m!181657))

(declare-fun m!181659 () Bool)

(assert (=> b!179577 m!181659))

(assert (=> b!179577 m!181657))

(declare-fun m!181661 () Bool)

(assert (=> b!179577 m!181661))

(declare-fun m!181663 () Bool)

(assert (=> b!179577 m!181663))

(declare-fun m!181665 () Bool)

(assert (=> b!179582 m!181665))

(assert (=> b!179153 d!45573))

(declare-fun bs!17893 () Bool)

(declare-fun d!45589 () Bool)

(assert (= bs!17893 (and d!45589 b!179155)))

(declare-fun lambda!5288 () Int)

(assert (=> bs!17893 (= lambda!5288 lambda!5259)))

(declare-fun bs!17894 () Bool)

(assert (= bs!17894 (and d!45589 b!179156)))

(assert (=> bs!17894 (not (= lambda!5288 lambda!5260))))

(declare-fun bs!17895 () Bool)

(assert (= bs!17895 (and d!45589 d!45527)))

(assert (=> bs!17895 (not (= lambda!5288 lambda!5271))))

(declare-fun bs!17896 () Bool)

(assert (= bs!17896 (and d!45589 b!179581)))

(assert (=> bs!17896 (not (= lambda!5288 lambda!5281))))

(declare-fun bs!17897 () Bool)

(declare-fun b!179668 () Bool)

(assert (= bs!17897 (and b!179668 b!179156)))

(declare-fun lambda!5289 () Int)

(assert (=> bs!17897 (= lambda!5289 lambda!5260)))

(declare-fun bs!17898 () Bool)

(assert (= bs!17898 (and b!179668 b!179581)))

(assert (=> bs!17898 (= lambda!5289 lambda!5281)))

(declare-fun bs!17899 () Bool)

(assert (= bs!17899 (and b!179668 d!45527)))

(assert (=> bs!17899 (= lambda!5289 lambda!5271)))

(declare-fun bs!17900 () Bool)

(assert (= bs!17900 (and b!179668 d!45589)))

(assert (=> bs!17900 (not (= lambda!5289 lambda!5288))))

(declare-fun bs!17901 () Bool)

(assert (= bs!17901 (and b!179668 b!179155)))

(assert (=> bs!17901 (not (= lambda!5289 lambda!5259))))

(declare-fun b!179676 () Bool)

(declare-fun e!109280 () Bool)

(assert (=> b!179676 (= e!109280 true)))

(declare-fun b!179675 () Bool)

(declare-fun e!109279 () Bool)

(assert (=> b!179675 (= e!109279 e!109280)))

(declare-fun b!179674 () Bool)

(declare-fun e!109278 () Bool)

(assert (=> b!179674 (= e!109278 e!109279)))

(assert (=> b!179668 e!109278))

(assert (= b!179675 b!179676))

(assert (= b!179674 b!179675))

(assert (= (and b!179668 ((_ is Cons!3005) rules!1920)) b!179674))

(assert (=> b!179676 (< (dynLambda!1191 order!1733 (toValue!1214 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5289))))

(assert (=> b!179676 (< (dynLambda!1193 order!1737 (toChars!1073 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5289))))

(assert (=> b!179668 true))

(declare-fun b!179663 () Bool)

(declare-fun e!109274 () BalanceConc!1824)

(declare-fun call!8100 () BalanceConc!1824)

(declare-fun lt!58872 () BalanceConc!1824)

(assert (=> b!179663 (= e!109274 (++!706 call!8100 lt!58872))))

(declare-fun b!179664 () Bool)

(declare-fun e!109273 () BalanceConc!1824)

(declare-fun call!8098 () Token!830)

(assert (=> b!179664 (= e!109273 (charsOf!198 call!8098))))

(declare-fun lt!58865 () BalanceConc!1824)

(assert (=> d!45589 (= (list!1101 lt!58865) (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 (dropList!96 (seqFromList!464 (t!28154 tokens!465)) 0) separatorToken!170))))

(declare-fun e!109276 () BalanceConc!1824)

(assert (=> d!45589 (= lt!58865 e!109276)))

(declare-fun c!35262 () Bool)

(assert (=> d!45589 (= c!35262 (>= 0 (size!2465 (seqFromList!464 (t!28154 tokens!465)))))))

(declare-fun lt!58873 () Unit!2736)

(declare-fun lemmaContentSubsetPreservesForall!40 (List!3016 List!3016 Int) Unit!2736)

(assert (=> d!45589 (= lt!58873 (lemmaContentSubsetPreservesForall!40 (list!1105 (seqFromList!464 (t!28154 tokens!465))) (dropList!96 (seqFromList!464 (t!28154 tokens!465)) 0) lambda!5288))))

(declare-fun e!109271 () Bool)

(assert (=> d!45589 e!109271))

(declare-fun res!81334 () Bool)

(assert (=> d!45589 (=> (not res!81334) (not e!109271))))

(assert (=> d!45589 (= res!81334 (>= 0 0))))

(assert (=> d!45589 (= (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 (seqFromList!464 (t!28154 tokens!465)) separatorToken!170 0) lt!58865)))

(declare-fun bm!8093 () Bool)

(declare-fun c!35263 () Bool)

(declare-fun call!8099 () BalanceConc!1824)

(declare-fun call!8102 () Token!830)

(declare-fun c!35260 () Bool)

(assert (=> bm!8093 (= call!8099 (charsOf!198 (ite c!35263 call!8102 (ite c!35260 separatorToken!170 call!8098))))))

(declare-fun bm!8094 () Bool)

(assert (=> bm!8094 (= call!8098 call!8102)))

(declare-fun bm!8095 () Bool)

(declare-fun c!35261 () Bool)

(assert (=> bm!8095 (= c!35261 c!35263)))

(declare-fun call!8101 () BalanceConc!1824)

(assert (=> bm!8095 (= call!8100 (++!706 e!109273 (ite c!35263 lt!58872 call!8101)))))

(declare-fun b!179665 () Bool)

(assert (=> b!179665 (= e!109273 call!8099)))

(declare-fun b!179666 () Bool)

(assert (=> b!179666 (= e!109274 (BalanceConc!1825 Empty!908))))

(assert (=> b!179666 (= (print!160 thiss!17480 (singletonSeq!95 call!8098)) (printTailRec!123 thiss!17480 (singletonSeq!95 call!8098) 0 (BalanceConc!1825 Empty!908)))))

(declare-fun lt!58871 () Unit!2736)

(declare-fun Unit!2748 () Unit!2736)

(assert (=> b!179666 (= lt!58871 Unit!2748)))

(declare-fun lt!58867 () Unit!2736)

(assert (=> b!179666 (= lt!58867 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!44 thiss!17480 rules!1920 (list!1101 call!8101) (list!1101 lt!58872)))))

(assert (=> b!179666 false))

(declare-fun lt!58877 () Unit!2736)

(declare-fun Unit!2749 () Unit!2736)

(assert (=> b!179666 (= lt!58877 Unit!2749)))

(declare-fun b!179667 () Bool)

(declare-fun e!109277 () Bool)

(assert (=> b!179667 (= c!35260 e!109277)))

(declare-fun res!81333 () Bool)

(assert (=> b!179667 (=> (not res!81333) (not e!109277))))

(declare-fun lt!58874 () Option!365)

(assert (=> b!179667 (= res!81333 ((_ is Some!364) lt!58874))))

(declare-fun e!109275 () BalanceConc!1824)

(assert (=> b!179667 (= e!109275 e!109274)))

(assert (=> b!179668 (= e!109276 e!109275)))

(declare-fun lt!58868 () List!3016)

(assert (=> b!179668 (= lt!58868 (list!1105 (seqFromList!464 (t!28154 tokens!465))))))

(declare-fun lt!58870 () Unit!2736)

(assert (=> b!179668 (= lt!58870 (lemmaDropApply!136 lt!58868 0))))

(assert (=> b!179668 (= (head!618 (drop!149 lt!58868 0)) (apply!446 lt!58868 0))))

(declare-fun lt!58866 () Unit!2736)

(assert (=> b!179668 (= lt!58866 lt!58870)))

(declare-fun lt!58876 () List!3016)

(assert (=> b!179668 (= lt!58876 (list!1105 (seqFromList!464 (t!28154 tokens!465))))))

(declare-fun lt!58869 () Unit!2736)

(assert (=> b!179668 (= lt!58869 (lemmaDropTail!128 lt!58876 0))))

(assert (=> b!179668 (= (tail!358 (drop!149 lt!58876 0)) (drop!149 lt!58876 (+ 0 1)))))

(declare-fun lt!58878 () Unit!2736)

(assert (=> b!179668 (= lt!58878 lt!58869)))

(declare-fun lt!58875 () Unit!2736)

(assert (=> b!179668 (= lt!58875 (forallContained!110 (list!1105 (seqFromList!464 (t!28154 tokens!465))) lambda!5289 (apply!445 (seqFromList!464 (t!28154 tokens!465)) 0)))))

(assert (=> b!179668 (= lt!58872 (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 (seqFromList!464 (t!28154 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!179668 (= lt!58874 (maxPrefixZipperSequence!122 thiss!17480 rules!1920 (++!706 (charsOf!198 (apply!445 (seqFromList!464 (t!28154 tokens!465)) 0)) lt!58872)))))

(declare-fun res!81335 () Bool)

(assert (=> b!179668 (= res!81335 ((_ is Some!364) lt!58874))))

(declare-fun e!109272 () Bool)

(assert (=> b!179668 (=> (not res!81335) (not e!109272))))

(assert (=> b!179668 (= c!35263 e!109272)))

(declare-fun bm!8096 () Bool)

(assert (=> bm!8096 (= call!8101 call!8099)))

(declare-fun b!179669 () Bool)

(assert (=> b!179669 (= e!109275 call!8100)))

(declare-fun b!179670 () Bool)

(assert (=> b!179670 (= e!109271 (<= 0 (size!2465 (seqFromList!464 (t!28154 tokens!465)))))))

(declare-fun b!179671 () Bool)

(assert (=> b!179671 (= e!109276 (BalanceConc!1825 Empty!908))))

(declare-fun b!179672 () Bool)

(assert (=> b!179672 (= e!109272 (= (_1!1704 (v!13833 lt!58874)) (apply!445 (seqFromList!464 (t!28154 tokens!465)) 0)))))

(declare-fun bm!8097 () Bool)

(assert (=> bm!8097 (= call!8102 (apply!445 (seqFromList!464 (t!28154 tokens!465)) 0))))

(declare-fun b!179673 () Bool)

(assert (=> b!179673 (= e!109277 (not (= (_1!1704 (v!13833 lt!58874)) call!8102)))))

(assert (= (and d!45589 res!81334) b!179670))

(assert (= (and d!45589 c!35262) b!179671))

(assert (= (and d!45589 (not c!35262)) b!179668))

(assert (= (and b!179668 res!81335) b!179672))

(assert (= (and b!179668 c!35263) b!179669))

(assert (= (and b!179668 (not c!35263)) b!179667))

(assert (= (and b!179667 res!81333) b!179673))

(assert (= (and b!179667 c!35260) b!179663))

(assert (= (and b!179667 (not c!35260)) b!179666))

(assert (= (or b!179663 b!179666) bm!8094))

(assert (= (or b!179663 b!179666) bm!8096))

(assert (= (or b!179669 bm!8094 b!179673) bm!8097))

(assert (= (or b!179669 bm!8096) bm!8093))

(assert (= (or b!179669 b!179663) bm!8095))

(assert (= (and bm!8095 c!35261) b!179665))

(assert (= (and bm!8095 (not c!35261)) b!179664))

(declare-fun m!181797 () Bool)

(assert (=> bm!8093 m!181797))

(assert (=> bm!8097 m!181073))

(declare-fun m!181799 () Bool)

(assert (=> bm!8097 m!181799))

(assert (=> b!179672 m!181073))

(assert (=> b!179672 m!181799))

(declare-fun m!181801 () Bool)

(assert (=> b!179663 m!181801))

(declare-fun m!181803 () Bool)

(assert (=> b!179668 m!181803))

(declare-fun m!181805 () Bool)

(assert (=> b!179668 m!181805))

(declare-fun m!181807 () Bool)

(assert (=> b!179668 m!181807))

(declare-fun m!181809 () Bool)

(assert (=> b!179668 m!181809))

(assert (=> b!179668 m!181803))

(declare-fun m!181811 () Bool)

(assert (=> b!179668 m!181811))

(declare-fun m!181813 () Bool)

(assert (=> b!179668 m!181813))

(assert (=> b!179668 m!181807))

(declare-fun m!181815 () Bool)

(assert (=> b!179668 m!181815))

(assert (=> b!179668 m!181073))

(assert (=> b!179668 m!181799))

(declare-fun m!181817 () Bool)

(assert (=> b!179668 m!181817))

(assert (=> b!179668 m!181799))

(declare-fun m!181819 () Bool)

(assert (=> b!179668 m!181819))

(assert (=> b!179668 m!181811))

(declare-fun m!181821 () Bool)

(assert (=> b!179668 m!181821))

(declare-fun m!181823 () Bool)

(assert (=> b!179668 m!181823))

(assert (=> b!179668 m!181073))

(declare-fun m!181825 () Bool)

(assert (=> b!179668 m!181825))

(assert (=> b!179668 m!181073))

(assert (=> b!179668 m!181817))

(declare-fun m!181827 () Bool)

(assert (=> b!179668 m!181827))

(assert (=> b!179668 m!181799))

(assert (=> b!179668 m!181809))

(declare-fun m!181829 () Bool)

(assert (=> b!179668 m!181829))

(assert (=> d!45589 m!181073))

(declare-fun m!181831 () Bool)

(assert (=> d!45589 m!181831))

(assert (=> d!45589 m!181073))

(assert (=> d!45589 m!181817))

(assert (=> d!45589 m!181817))

(declare-fun m!181833 () Bool)

(assert (=> d!45589 m!181833))

(declare-fun m!181835 () Bool)

(assert (=> d!45589 m!181835))

(declare-fun m!181837 () Bool)

(assert (=> d!45589 m!181837))

(assert (=> d!45589 m!181073))

(assert (=> d!45589 m!181833))

(assert (=> d!45589 m!181833))

(declare-fun m!181839 () Bool)

(assert (=> d!45589 m!181839))

(declare-fun m!181841 () Bool)

(assert (=> b!179664 m!181841))

(declare-fun m!181843 () Bool)

(assert (=> bm!8095 m!181843))

(assert (=> b!179670 m!181073))

(assert (=> b!179670 m!181831))

(declare-fun m!181845 () Bool)

(assert (=> b!179666 m!181845))

(declare-fun m!181847 () Bool)

(assert (=> b!179666 m!181847))

(declare-fun m!181849 () Bool)

(assert (=> b!179666 m!181849))

(assert (=> b!179666 m!181847))

(assert (=> b!179666 m!181845))

(declare-fun m!181851 () Bool)

(assert (=> b!179666 m!181851))

(declare-fun m!181853 () Bool)

(assert (=> b!179666 m!181853))

(assert (=> b!179666 m!181851))

(assert (=> b!179666 m!181847))

(declare-fun m!181855 () Bool)

(assert (=> b!179666 m!181855))

(assert (=> b!179153 d!45589))

(declare-fun d!45617 () Bool)

(declare-fun lt!58881 () BalanceConc!1824)

(assert (=> d!45617 (= (list!1101 lt!58881) (originalCharacters!586 separatorToken!170))))

(assert (=> d!45617 (= lt!58881 (dynLambda!1196 (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (value!19791 separatorToken!170)))))

(assert (=> d!45617 (= (charsOf!198 separatorToken!170) lt!58881)))

(declare-fun b_lambda!4275 () Bool)

(assert (=> (not b_lambda!4275) (not d!45617)))

(declare-fun tb!7515 () Bool)

(declare-fun t!28193 () Bool)

(assert (=> (and b!179164 (= (toChars!1073 (transformation!543 (h!8402 rules!1920))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170)))) t!28193) tb!7515))

(declare-fun b!179677 () Bool)

(declare-fun e!109281 () Bool)

(declare-fun tp!85999 () Bool)

(assert (=> b!179677 (= e!109281 (and (inv!3841 (c!35149 (dynLambda!1196 (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (value!19791 separatorToken!170)))) tp!85999))))

(declare-fun result!10298 () Bool)

(assert (=> tb!7515 (= result!10298 (and (inv!3842 (dynLambda!1196 (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (value!19791 separatorToken!170))) e!109281))))

(assert (= tb!7515 b!179677))

(declare-fun m!181857 () Bool)

(assert (=> b!179677 m!181857))

(declare-fun m!181859 () Bool)

(assert (=> tb!7515 m!181859))

(assert (=> d!45617 t!28193))

(declare-fun b_and!12239 () Bool)

(assert (= b_and!12209 (and (=> t!28193 result!10298) b_and!12239)))

(declare-fun t!28195 () Bool)

(declare-fun tb!7517 () Bool)

(assert (=> (and b!179152 (= (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170)))) t!28195) tb!7517))

(declare-fun result!10300 () Bool)

(assert (= result!10300 result!10298))

(assert (=> d!45617 t!28195))

(declare-fun b_and!12241 () Bool)

(assert (= b_and!12211 (and (=> t!28195 result!10300) b_and!12241)))

(declare-fun tb!7519 () Bool)

(declare-fun t!28197 () Bool)

(assert (=> (and b!179161 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170)))) t!28197) tb!7519))

(declare-fun result!10302 () Bool)

(assert (= result!10302 result!10298))

(assert (=> d!45617 t!28197))

(declare-fun b_and!12243 () Bool)

(assert (= b_and!12213 (and (=> t!28197 result!10302) b_and!12243)))

(declare-fun m!181861 () Bool)

(assert (=> d!45617 m!181861))

(declare-fun m!181863 () Bool)

(assert (=> d!45617 m!181863))

(assert (=> b!179153 d!45617))

(declare-fun b!179680 () Bool)

(declare-fun res!81336 () Bool)

(declare-fun e!109283 () Bool)

(assert (=> b!179680 (=> (not res!81336) (not e!109283))))

(declare-fun lt!58882 () List!3014)

(assert (=> b!179680 (= res!81336 (= (size!2464 lt!58882) (+ (size!2464 (++!704 lt!58614 lt!58604)) (size!2464 lt!58612))))))

(declare-fun d!45619 () Bool)

(assert (=> d!45619 e!109283))

(declare-fun res!81337 () Bool)

(assert (=> d!45619 (=> (not res!81337) (not e!109283))))

(assert (=> d!45619 (= res!81337 (= (content!415 lt!58882) ((_ map or) (content!415 (++!704 lt!58614 lt!58604)) (content!415 lt!58612))))))

(declare-fun e!109282 () List!3014)

(assert (=> d!45619 (= lt!58882 e!109282)))

(declare-fun c!35264 () Bool)

(assert (=> d!45619 (= c!35264 ((_ is Nil!3004) (++!704 lt!58614 lt!58604)))))

(assert (=> d!45619 (= (++!704 (++!704 lt!58614 lt!58604) lt!58612) lt!58882)))

(declare-fun b!179681 () Bool)

(assert (=> b!179681 (= e!109283 (or (not (= lt!58612 Nil!3004)) (= lt!58882 (++!704 lt!58614 lt!58604))))))

(declare-fun b!179678 () Bool)

(assert (=> b!179678 (= e!109282 lt!58612)))

(declare-fun b!179679 () Bool)

(assert (=> b!179679 (= e!109282 (Cons!3004 (h!8401 (++!704 lt!58614 lt!58604)) (++!704 (t!28152 (++!704 lt!58614 lt!58604)) lt!58612)))))

(assert (= (and d!45619 c!35264) b!179678))

(assert (= (and d!45619 (not c!35264)) b!179679))

(assert (= (and d!45619 res!81337) b!179680))

(assert (= (and b!179680 res!81336) b!179681))

(declare-fun m!181865 () Bool)

(assert (=> b!179680 m!181865))

(assert (=> b!179680 m!181091))

(declare-fun m!181867 () Bool)

(assert (=> b!179680 m!181867))

(assert (=> b!179680 m!181545))

(declare-fun m!181869 () Bool)

(assert (=> d!45619 m!181869))

(assert (=> d!45619 m!181091))

(declare-fun m!181871 () Bool)

(assert (=> d!45619 m!181871))

(assert (=> d!45619 m!181551))

(declare-fun m!181873 () Bool)

(assert (=> b!179679 m!181873))

(assert (=> b!179153 d!45619))

(declare-fun d!45621 () Bool)

(declare-fun lt!58883 () BalanceConc!1824)

(assert (=> d!45621 (= (list!1101 lt!58883) (originalCharacters!586 (h!8403 tokens!465)))))

(assert (=> d!45621 (= lt!58883 (dynLambda!1196 (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (value!19791 (h!8403 tokens!465))))))

(assert (=> d!45621 (= (charsOf!198 (h!8403 tokens!465)) lt!58883)))

(declare-fun b_lambda!4277 () Bool)

(assert (=> (not b_lambda!4277) (not d!45621)))

(assert (=> d!45621 t!28168))

(declare-fun b_and!12245 () Bool)

(assert (= b_and!12239 (and (=> t!28168 result!10276) b_and!12245)))

(assert (=> d!45621 t!28170))

(declare-fun b_and!12247 () Bool)

(assert (= b_and!12241 (and (=> t!28170 result!10280) b_and!12247)))

(assert (=> d!45621 t!28172))

(declare-fun b_and!12249 () Bool)

(assert (= b_and!12243 (and (=> t!28172 result!10282) b_and!12249)))

(declare-fun m!181875 () Bool)

(assert (=> d!45621 m!181875))

(assert (=> d!45621 m!181405))

(assert (=> b!179153 d!45621))

(declare-fun d!45623 () Bool)

(assert (=> d!45623 (= (++!704 (++!704 lt!58614 lt!58604) lt!58612) (++!704 lt!58614 (++!704 lt!58604 lt!58612)))))

(declare-fun lt!58886 () Unit!2736)

(declare-fun choose!1866 (List!3014 List!3014 List!3014) Unit!2736)

(assert (=> d!45623 (= lt!58886 (choose!1866 lt!58614 lt!58604 lt!58612))))

(assert (=> d!45623 (= (lemmaConcatAssociativity!232 lt!58614 lt!58604 lt!58612) lt!58886)))

(declare-fun bs!17902 () Bool)

(assert (= bs!17902 d!45623))

(assert (=> bs!17902 m!181091))

(assert (=> bs!17902 m!181093))

(assert (=> bs!17902 m!181085))

(declare-fun m!181877 () Bool)

(assert (=> bs!17902 m!181877))

(declare-fun m!181879 () Bool)

(assert (=> bs!17902 m!181879))

(assert (=> bs!17902 m!181091))

(assert (=> bs!17902 m!181085))

(assert (=> b!179153 d!45623))

(declare-fun b!179684 () Bool)

(declare-fun res!81338 () Bool)

(declare-fun e!109285 () Bool)

(assert (=> b!179684 (=> (not res!81338) (not e!109285))))

(declare-fun lt!58887 () List!3014)

(assert (=> b!179684 (= res!81338 (= (size!2464 lt!58887) (+ (size!2464 lt!58614) (size!2464 lt!58604))))))

(declare-fun d!45625 () Bool)

(assert (=> d!45625 e!109285))

(declare-fun res!81339 () Bool)

(assert (=> d!45625 (=> (not res!81339) (not e!109285))))

(assert (=> d!45625 (= res!81339 (= (content!415 lt!58887) ((_ map or) (content!415 lt!58614) (content!415 lt!58604))))))

(declare-fun e!109284 () List!3014)

(assert (=> d!45625 (= lt!58887 e!109284)))

(declare-fun c!35265 () Bool)

(assert (=> d!45625 (= c!35265 ((_ is Nil!3004) lt!58614))))

(assert (=> d!45625 (= (++!704 lt!58614 lt!58604) lt!58887)))

(declare-fun b!179685 () Bool)

(assert (=> b!179685 (= e!109285 (or (not (= lt!58604 Nil!3004)) (= lt!58887 lt!58614)))))

(declare-fun b!179682 () Bool)

(assert (=> b!179682 (= e!109284 lt!58604)))

(declare-fun b!179683 () Bool)

(assert (=> b!179683 (= e!109284 (Cons!3004 (h!8401 lt!58614) (++!704 (t!28152 lt!58614) lt!58604)))))

(assert (= (and d!45625 c!35265) b!179682))

(assert (= (and d!45625 (not c!35265)) b!179683))

(assert (= (and d!45625 res!81339) b!179684))

(assert (= (and b!179684 res!81338) b!179685))

(declare-fun m!181881 () Bool)

(assert (=> b!179684 m!181881))

(assert (=> b!179684 m!181561))

(assert (=> b!179684 m!181543))

(declare-fun m!181883 () Bool)

(assert (=> d!45625 m!181883))

(assert (=> d!45625 m!181567))

(assert (=> d!45625 m!181549))

(declare-fun m!181885 () Bool)

(assert (=> b!179683 m!181885))

(assert (=> b!179153 d!45625))

(declare-fun d!45627 () Bool)

(assert (=> d!45627 (= (list!1101 (charsOf!198 (h!8403 tokens!465))) (list!1104 (c!35149 (charsOf!198 (h!8403 tokens!465)))))))

(declare-fun bs!17903 () Bool)

(assert (= bs!17903 d!45627))

(declare-fun m!181887 () Bool)

(assert (=> bs!17903 m!181887))

(assert (=> b!179153 d!45627))

(declare-fun d!45629 () Bool)

(declare-fun res!81344 () Bool)

(declare-fun e!109290 () Bool)

(assert (=> d!45629 (=> res!81344 e!109290)))

(assert (=> d!45629 (= res!81344 ((_ is Nil!3006) tokens!465))))

(assert (=> d!45629 (= (forall!607 tokens!465 lambda!5259) e!109290)))

(declare-fun b!179690 () Bool)

(declare-fun e!109291 () Bool)

(assert (=> b!179690 (= e!109290 e!109291)))

(declare-fun res!81345 () Bool)

(assert (=> b!179690 (=> (not res!81345) (not e!109291))))

(declare-fun dynLambda!1197 (Int Token!830) Bool)

(assert (=> b!179690 (= res!81345 (dynLambda!1197 lambda!5259 (h!8403 tokens!465)))))

(declare-fun b!179691 () Bool)

(assert (=> b!179691 (= e!109291 (forall!607 (t!28154 tokens!465) lambda!5259))))

(assert (= (and d!45629 (not res!81344)) b!179690))

(assert (= (and b!179690 res!81345) b!179691))

(declare-fun b_lambda!4279 () Bool)

(assert (=> (not b_lambda!4279) (not b!179690)))

(declare-fun m!181889 () Bool)

(assert (=> b!179690 m!181889))

(declare-fun m!181891 () Bool)

(assert (=> b!179691 m!181891))

(assert (=> b!179155 d!45629))

(declare-fun b!179694 () Bool)

(declare-fun res!81346 () Bool)

(declare-fun e!109293 () Bool)

(assert (=> b!179694 (=> (not res!81346) (not e!109293))))

(declare-fun lt!58888 () List!3014)

(assert (=> b!179694 (= res!81346 (= (size!2464 lt!58888) (+ (size!2464 lt!58614) (size!2464 lt!58612))))))

(declare-fun d!45631 () Bool)

(assert (=> d!45631 e!109293))

(declare-fun res!81347 () Bool)

(assert (=> d!45631 (=> (not res!81347) (not e!109293))))

(assert (=> d!45631 (= res!81347 (= (content!415 lt!58888) ((_ map or) (content!415 lt!58614) (content!415 lt!58612))))))

(declare-fun e!109292 () List!3014)

(assert (=> d!45631 (= lt!58888 e!109292)))

(declare-fun c!35266 () Bool)

(assert (=> d!45631 (= c!35266 ((_ is Nil!3004) lt!58614))))

(assert (=> d!45631 (= (++!704 lt!58614 lt!58612) lt!58888)))

(declare-fun b!179695 () Bool)

(assert (=> b!179695 (= e!109293 (or (not (= lt!58612 Nil!3004)) (= lt!58888 lt!58614)))))

(declare-fun b!179692 () Bool)

(assert (=> b!179692 (= e!109292 lt!58612)))

(declare-fun b!179693 () Bool)

(assert (=> b!179693 (= e!109292 (Cons!3004 (h!8401 lt!58614) (++!704 (t!28152 lt!58614) lt!58612)))))

(assert (= (and d!45631 c!35266) b!179692))

(assert (= (and d!45631 (not c!35266)) b!179693))

(assert (= (and d!45631 res!81347) b!179694))

(assert (= (and b!179694 res!81346) b!179695))

(declare-fun m!181893 () Bool)

(assert (=> b!179694 m!181893))

(assert (=> b!179694 m!181561))

(assert (=> b!179694 m!181545))

(declare-fun m!181895 () Bool)

(assert (=> d!45631 m!181895))

(assert (=> d!45631 m!181567))

(assert (=> d!45631 m!181551))

(declare-fun m!181897 () Bool)

(assert (=> b!179693 m!181897))

(assert (=> b!179134 d!45631))

(declare-fun d!45633 () Bool)

(assert (=> d!45633 (= (isEmpty!1343 rules!1920) ((_ is Nil!3005) rules!1920))))

(assert (=> b!179133 d!45633))

(declare-fun d!45635 () Bool)

(assert (=> d!45635 (= (inv!3834 (tag!721 (rule!1058 (h!8403 tokens!465)))) (= (mod (str.len (value!19790 (tag!721 (rule!1058 (h!8403 tokens!465))))) 2) 0))))

(assert (=> b!179151 d!45635))

(declare-fun d!45637 () Bool)

(declare-fun res!81348 () Bool)

(declare-fun e!109294 () Bool)

(assert (=> d!45637 (=> (not res!81348) (not e!109294))))

(assert (=> d!45637 (= res!81348 (semiInverseModEq!186 (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (toValue!1214 (transformation!543 (rule!1058 (h!8403 tokens!465))))))))

(assert (=> d!45637 (= (inv!3837 (transformation!543 (rule!1058 (h!8403 tokens!465)))) e!109294)))

(declare-fun b!179696 () Bool)

(assert (=> b!179696 (= e!109294 (equivClasses!169 (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (toValue!1214 (transformation!543 (rule!1058 (h!8403 tokens!465))))))))

(assert (= (and d!45637 res!81348) b!179696))

(declare-fun m!181899 () Bool)

(assert (=> d!45637 m!181899))

(declare-fun m!181901 () Bool)

(assert (=> b!179696 m!181901))

(assert (=> b!179151 d!45637))

(declare-fun d!45639 () Bool)

(declare-fun lt!58905 () Bool)

(assert (=> d!45639 (= lt!58905 (isEmpty!1346 (list!1105 (_1!1705 (lex!229 thiss!17480 rules!1920 (seqFromList!463 lt!58614))))))))

(declare-fun isEmpty!1353 (Conc!909) Bool)

(assert (=> d!45639 (= lt!58905 (isEmpty!1353 (c!35151 (_1!1705 (lex!229 thiss!17480 rules!1920 (seqFromList!463 lt!58614))))))))

(assert (=> d!45639 (= (isEmpty!1345 (_1!1705 (lex!229 thiss!17480 rules!1920 (seqFromList!463 lt!58614)))) lt!58905)))

(declare-fun bs!17904 () Bool)

(assert (= bs!17904 d!45639))

(declare-fun m!181903 () Bool)

(assert (=> bs!17904 m!181903))

(assert (=> bs!17904 m!181903))

(declare-fun m!181905 () Bool)

(assert (=> bs!17904 m!181905))

(declare-fun m!181907 () Bool)

(assert (=> bs!17904 m!181907))

(assert (=> b!179159 d!45639))

(declare-fun b!179757 () Bool)

(declare-fun e!109339 () Bool)

(declare-fun e!109338 () Bool)

(assert (=> b!179757 (= e!109339 e!109338)))

(declare-fun res!81384 () Bool)

(declare-fun lt!58945 () tuple2!2978)

(declare-fun size!2467 (BalanceConc!1824) Int)

(assert (=> b!179757 (= res!81384 (< (size!2467 (_2!1705 lt!58945)) (size!2467 (seqFromList!463 lt!58614))))))

(assert (=> b!179757 (=> (not res!81384) (not e!109338))))

(declare-fun b!179758 () Bool)

(assert (=> b!179758 (= e!109338 (not (isEmpty!1345 (_1!1705 lt!58945))))))

(declare-fun b!179759 () Bool)

(declare-fun res!81383 () Bool)

(declare-fun e!109337 () Bool)

(assert (=> b!179759 (=> (not res!81383) (not e!109337))))

(declare-datatypes ((tuple2!2982 0))(
  ( (tuple2!2983 (_1!1707 List!3016) (_2!1707 List!3014)) )
))
(declare-fun lexList!121 (LexerInterface!429 List!3015 List!3014) tuple2!2982)

(assert (=> b!179759 (= res!81383 (= (list!1105 (_1!1705 lt!58945)) (_1!1707 (lexList!121 thiss!17480 rules!1920 (list!1101 (seqFromList!463 lt!58614))))))))

(declare-fun d!45641 () Bool)

(assert (=> d!45641 e!109337))

(declare-fun res!81385 () Bool)

(assert (=> d!45641 (=> (not res!81385) (not e!109337))))

(assert (=> d!45641 (= res!81385 e!109339)))

(declare-fun c!35280 () Bool)

(assert (=> d!45641 (= c!35280 (> (size!2465 (_1!1705 lt!58945)) 0))))

(declare-fun lexTailRecV2!108 (LexerInterface!429 List!3015 BalanceConc!1824 BalanceConc!1824 BalanceConc!1824 BalanceConc!1826) tuple2!2978)

(assert (=> d!45641 (= lt!58945 (lexTailRecV2!108 thiss!17480 rules!1920 (seqFromList!463 lt!58614) (BalanceConc!1825 Empty!908) (seqFromList!463 lt!58614) (BalanceConc!1827 Empty!909)))))

(assert (=> d!45641 (= (lex!229 thiss!17480 rules!1920 (seqFromList!463 lt!58614)) lt!58945)))

(declare-fun b!179760 () Bool)

(assert (=> b!179760 (= e!109337 (= (list!1101 (_2!1705 lt!58945)) (_2!1707 (lexList!121 thiss!17480 rules!1920 (list!1101 (seqFromList!463 lt!58614))))))))

(declare-fun b!179761 () Bool)

(assert (=> b!179761 (= e!109339 (= (_2!1705 lt!58945) (seqFromList!463 lt!58614)))))

(assert (= (and d!45641 c!35280) b!179757))

(assert (= (and d!45641 (not c!35280)) b!179761))

(assert (= (and b!179757 res!81384) b!179758))

(assert (= (and d!45641 res!81385) b!179759))

(assert (= (and b!179759 res!81383) b!179760))

(declare-fun m!182007 () Bool)

(assert (=> b!179757 m!182007))

(assert (=> b!179757 m!181105))

(declare-fun m!182009 () Bool)

(assert (=> b!179757 m!182009))

(declare-fun m!182011 () Bool)

(assert (=> d!45641 m!182011))

(assert (=> d!45641 m!181105))

(assert (=> d!45641 m!181105))

(declare-fun m!182013 () Bool)

(assert (=> d!45641 m!182013))

(declare-fun m!182015 () Bool)

(assert (=> b!179759 m!182015))

(assert (=> b!179759 m!181105))

(declare-fun m!182017 () Bool)

(assert (=> b!179759 m!182017))

(assert (=> b!179759 m!182017))

(declare-fun m!182019 () Bool)

(assert (=> b!179759 m!182019))

(declare-fun m!182021 () Bool)

(assert (=> b!179760 m!182021))

(assert (=> b!179760 m!181105))

(assert (=> b!179760 m!182017))

(assert (=> b!179760 m!182017))

(assert (=> b!179760 m!182019))

(declare-fun m!182023 () Bool)

(assert (=> b!179758 m!182023))

(assert (=> b!179159 d!45641))

(declare-fun d!45661 () Bool)

(declare-fun fromListB!181 (List!3014) BalanceConc!1824)

(assert (=> d!45661 (= (seqFromList!463 lt!58614) (fromListB!181 lt!58614))))

(declare-fun bs!17908 () Bool)

(assert (= bs!17908 d!45661))

(declare-fun m!182025 () Bool)

(assert (=> bs!17908 m!182025))

(assert (=> b!179159 d!45661))

(declare-fun d!45663 () Bool)

(assert (=> d!45663 (= (list!1101 (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 lt!58611 separatorToken!170 0)) (list!1104 (c!35149 (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 lt!58611 separatorToken!170 0))))))

(declare-fun bs!17909 () Bool)

(assert (= bs!17909 d!45663))

(declare-fun m!182027 () Bool)

(assert (=> bs!17909 m!182027))

(assert (=> b!179138 d!45663))

(declare-fun bs!17910 () Bool)

(declare-fun d!45665 () Bool)

(assert (= bs!17910 (and d!45665 b!179156)))

(declare-fun lambda!5290 () Int)

(assert (=> bs!17910 (not (= lambda!5290 lambda!5260))))

(declare-fun bs!17911 () Bool)

(assert (= bs!17911 (and d!45665 b!179581)))

(assert (=> bs!17911 (not (= lambda!5290 lambda!5281))))

(declare-fun bs!17912 () Bool)

(assert (= bs!17912 (and d!45665 d!45589)))

(assert (=> bs!17912 (= lambda!5290 lambda!5288)))

(declare-fun bs!17913 () Bool)

(assert (= bs!17913 (and d!45665 b!179155)))

(assert (=> bs!17913 (= lambda!5290 lambda!5259)))

(declare-fun bs!17914 () Bool)

(assert (= bs!17914 (and d!45665 d!45527)))

(assert (=> bs!17914 (not (= lambda!5290 lambda!5271))))

(declare-fun bs!17915 () Bool)

(assert (= bs!17915 (and d!45665 b!179668)))

(assert (=> bs!17915 (not (= lambda!5290 lambda!5289))))

(declare-fun bs!17916 () Bool)

(declare-fun b!179767 () Bool)

(assert (= bs!17916 (and b!179767 d!45665)))

(declare-fun lambda!5291 () Int)

(assert (=> bs!17916 (not (= lambda!5291 lambda!5290))))

(declare-fun bs!17917 () Bool)

(assert (= bs!17917 (and b!179767 b!179156)))

(assert (=> bs!17917 (= lambda!5291 lambda!5260)))

(declare-fun bs!17918 () Bool)

(assert (= bs!17918 (and b!179767 b!179581)))

(assert (=> bs!17918 (= lambda!5291 lambda!5281)))

(declare-fun bs!17919 () Bool)

(assert (= bs!17919 (and b!179767 d!45589)))

(assert (=> bs!17919 (not (= lambda!5291 lambda!5288))))

(declare-fun bs!17920 () Bool)

(assert (= bs!17920 (and b!179767 b!179155)))

(assert (=> bs!17920 (not (= lambda!5291 lambda!5259))))

(declare-fun bs!17921 () Bool)

(assert (= bs!17921 (and b!179767 d!45527)))

(assert (=> bs!17921 (= lambda!5291 lambda!5271)))

(declare-fun bs!17922 () Bool)

(assert (= bs!17922 (and b!179767 b!179668)))

(assert (=> bs!17922 (= lambda!5291 lambda!5289)))

(declare-fun b!179775 () Bool)

(declare-fun e!109349 () Bool)

(assert (=> b!179775 (= e!109349 true)))

(declare-fun b!179774 () Bool)

(declare-fun e!109348 () Bool)

(assert (=> b!179774 (= e!109348 e!109349)))

(declare-fun b!179773 () Bool)

(declare-fun e!109347 () Bool)

(assert (=> b!179773 (= e!109347 e!109348)))

(assert (=> b!179767 e!109347))

(assert (= b!179774 b!179775))

(assert (= b!179773 b!179774))

(assert (= (and b!179767 ((_ is Cons!3005) rules!1920)) b!179773))

(assert (=> b!179775 (< (dynLambda!1191 order!1733 (toValue!1214 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5291))))

(assert (=> b!179775 (< (dynLambda!1193 order!1737 (toChars!1073 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5291))))

(assert (=> b!179767 true))

(declare-fun b!179762 () Bool)

(declare-fun e!109343 () BalanceConc!1824)

(declare-fun call!8108 () BalanceConc!1824)

(declare-fun lt!58953 () BalanceConc!1824)

(assert (=> b!179762 (= e!109343 (++!706 call!8108 lt!58953))))

(declare-fun b!179763 () Bool)

(declare-fun e!109342 () BalanceConc!1824)

(declare-fun call!8106 () Token!830)

(assert (=> b!179763 (= e!109342 (charsOf!198 call!8106))))

(declare-fun lt!58946 () BalanceConc!1824)

(assert (=> d!45665 (= (list!1101 lt!58946) (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 (dropList!96 lt!58611 0) separatorToken!170))))

(declare-fun e!109345 () BalanceConc!1824)

(assert (=> d!45665 (= lt!58946 e!109345)))

(declare-fun c!35283 () Bool)

(assert (=> d!45665 (= c!35283 (>= 0 (size!2465 lt!58611)))))

(declare-fun lt!58954 () Unit!2736)

(assert (=> d!45665 (= lt!58954 (lemmaContentSubsetPreservesForall!40 (list!1105 lt!58611) (dropList!96 lt!58611 0) lambda!5290))))

(declare-fun e!109340 () Bool)

(assert (=> d!45665 e!109340))

(declare-fun res!81387 () Bool)

(assert (=> d!45665 (=> (not res!81387) (not e!109340))))

(assert (=> d!45665 (= res!81387 (>= 0 0))))

(assert (=> d!45665 (= (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 lt!58611 separatorToken!170 0) lt!58946)))

(declare-fun call!8110 () Token!830)

(declare-fun c!35281 () Bool)

(declare-fun bm!8101 () Bool)

(declare-fun call!8107 () BalanceConc!1824)

(declare-fun c!35284 () Bool)

(assert (=> bm!8101 (= call!8107 (charsOf!198 (ite c!35284 call!8110 (ite c!35281 separatorToken!170 call!8106))))))

(declare-fun bm!8102 () Bool)

(assert (=> bm!8102 (= call!8106 call!8110)))

(declare-fun bm!8103 () Bool)

(declare-fun c!35282 () Bool)

(assert (=> bm!8103 (= c!35282 c!35284)))

(declare-fun call!8109 () BalanceConc!1824)

(assert (=> bm!8103 (= call!8108 (++!706 e!109342 (ite c!35284 lt!58953 call!8109)))))

(declare-fun b!179764 () Bool)

(assert (=> b!179764 (= e!109342 call!8107)))

(declare-fun b!179765 () Bool)

(assert (=> b!179765 (= e!109343 (BalanceConc!1825 Empty!908))))

(assert (=> b!179765 (= (print!160 thiss!17480 (singletonSeq!95 call!8106)) (printTailRec!123 thiss!17480 (singletonSeq!95 call!8106) 0 (BalanceConc!1825 Empty!908)))))

(declare-fun lt!58952 () Unit!2736)

(declare-fun Unit!2750 () Unit!2736)

(assert (=> b!179765 (= lt!58952 Unit!2750)))

(declare-fun lt!58948 () Unit!2736)

(assert (=> b!179765 (= lt!58948 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!44 thiss!17480 rules!1920 (list!1101 call!8109) (list!1101 lt!58953)))))

(assert (=> b!179765 false))

(declare-fun lt!58958 () Unit!2736)

(declare-fun Unit!2751 () Unit!2736)

(assert (=> b!179765 (= lt!58958 Unit!2751)))

(declare-fun b!179766 () Bool)

(declare-fun e!109346 () Bool)

(assert (=> b!179766 (= c!35281 e!109346)))

(declare-fun res!81386 () Bool)

(assert (=> b!179766 (=> (not res!81386) (not e!109346))))

(declare-fun lt!58955 () Option!365)

(assert (=> b!179766 (= res!81386 ((_ is Some!364) lt!58955))))

(declare-fun e!109344 () BalanceConc!1824)

(assert (=> b!179766 (= e!109344 e!109343)))

(assert (=> b!179767 (= e!109345 e!109344)))

(declare-fun lt!58949 () List!3016)

(assert (=> b!179767 (= lt!58949 (list!1105 lt!58611))))

(declare-fun lt!58951 () Unit!2736)

(assert (=> b!179767 (= lt!58951 (lemmaDropApply!136 lt!58949 0))))

(assert (=> b!179767 (= (head!618 (drop!149 lt!58949 0)) (apply!446 lt!58949 0))))

(declare-fun lt!58947 () Unit!2736)

(assert (=> b!179767 (= lt!58947 lt!58951)))

(declare-fun lt!58957 () List!3016)

(assert (=> b!179767 (= lt!58957 (list!1105 lt!58611))))

(declare-fun lt!58950 () Unit!2736)

(assert (=> b!179767 (= lt!58950 (lemmaDropTail!128 lt!58957 0))))

(assert (=> b!179767 (= (tail!358 (drop!149 lt!58957 0)) (drop!149 lt!58957 (+ 0 1)))))

(declare-fun lt!58959 () Unit!2736)

(assert (=> b!179767 (= lt!58959 lt!58950)))

(declare-fun lt!58956 () Unit!2736)

(assert (=> b!179767 (= lt!58956 (forallContained!110 (list!1105 lt!58611) lambda!5291 (apply!445 lt!58611 0)))))

(assert (=> b!179767 (= lt!58953 (printWithSeparatorTokenWhenNeededRec!112 thiss!17480 rules!1920 lt!58611 separatorToken!170 (+ 0 1)))))

(assert (=> b!179767 (= lt!58955 (maxPrefixZipperSequence!122 thiss!17480 rules!1920 (++!706 (charsOf!198 (apply!445 lt!58611 0)) lt!58953)))))

(declare-fun res!81388 () Bool)

(assert (=> b!179767 (= res!81388 ((_ is Some!364) lt!58955))))

(declare-fun e!109341 () Bool)

(assert (=> b!179767 (=> (not res!81388) (not e!109341))))

(assert (=> b!179767 (= c!35284 e!109341)))

(declare-fun bm!8104 () Bool)

(assert (=> bm!8104 (= call!8109 call!8107)))

(declare-fun b!179768 () Bool)

(assert (=> b!179768 (= e!109344 call!8108)))

(declare-fun b!179769 () Bool)

(assert (=> b!179769 (= e!109340 (<= 0 (size!2465 lt!58611)))))

(declare-fun b!179770 () Bool)

(assert (=> b!179770 (= e!109345 (BalanceConc!1825 Empty!908))))

(declare-fun b!179771 () Bool)

(assert (=> b!179771 (= e!109341 (= (_1!1704 (v!13833 lt!58955)) (apply!445 lt!58611 0)))))

(declare-fun bm!8105 () Bool)

(assert (=> bm!8105 (= call!8110 (apply!445 lt!58611 0))))

(declare-fun b!179772 () Bool)

(assert (=> b!179772 (= e!109346 (not (= (_1!1704 (v!13833 lt!58955)) call!8110)))))

(assert (= (and d!45665 res!81387) b!179769))

(assert (= (and d!45665 c!35283) b!179770))

(assert (= (and d!45665 (not c!35283)) b!179767))

(assert (= (and b!179767 res!81388) b!179771))

(assert (= (and b!179767 c!35284) b!179768))

(assert (= (and b!179767 (not c!35284)) b!179766))

(assert (= (and b!179766 res!81386) b!179772))

(assert (= (and b!179766 c!35281) b!179762))

(assert (= (and b!179766 (not c!35281)) b!179765))

(assert (= (or b!179762 b!179765) bm!8102))

(assert (= (or b!179762 b!179765) bm!8104))

(assert (= (or b!179768 bm!8102 b!179772) bm!8105))

(assert (= (or b!179768 bm!8104) bm!8101))

(assert (= (or b!179768 b!179762) bm!8103))

(assert (= (and bm!8103 c!35282) b!179764))

(assert (= (and bm!8103 (not c!35282)) b!179763))

(declare-fun m!182029 () Bool)

(assert (=> bm!8101 m!182029))

(declare-fun m!182031 () Bool)

(assert (=> bm!8105 m!182031))

(assert (=> b!179771 m!182031))

(declare-fun m!182033 () Bool)

(assert (=> b!179762 m!182033))

(declare-fun m!182035 () Bool)

(assert (=> b!179767 m!182035))

(declare-fun m!182037 () Bool)

(assert (=> b!179767 m!182037))

(declare-fun m!182039 () Bool)

(assert (=> b!179767 m!182039))

(declare-fun m!182041 () Bool)

(assert (=> b!179767 m!182041))

(assert (=> b!179767 m!182035))

(declare-fun m!182043 () Bool)

(assert (=> b!179767 m!182043))

(declare-fun m!182045 () Bool)

(assert (=> b!179767 m!182045))

(assert (=> b!179767 m!182039))

(declare-fun m!182047 () Bool)

(assert (=> b!179767 m!182047))

(assert (=> b!179767 m!182031))

(assert (=> b!179767 m!181373))

(assert (=> b!179767 m!182031))

(declare-fun m!182049 () Bool)

(assert (=> b!179767 m!182049))

(assert (=> b!179767 m!182043))

(declare-fun m!182051 () Bool)

(assert (=> b!179767 m!182051))

(declare-fun m!182053 () Bool)

(assert (=> b!179767 m!182053))

(declare-fun m!182055 () Bool)

(assert (=> b!179767 m!182055))

(assert (=> b!179767 m!181373))

(declare-fun m!182057 () Bool)

(assert (=> b!179767 m!182057))

(assert (=> b!179767 m!182031))

(assert (=> b!179767 m!182041))

(declare-fun m!182059 () Bool)

(assert (=> b!179767 m!182059))

(declare-fun m!182061 () Bool)

(assert (=> d!45665 m!182061))

(assert (=> d!45665 m!181373))

(assert (=> d!45665 m!181373))

(declare-fun m!182063 () Bool)

(assert (=> d!45665 m!182063))

(declare-fun m!182065 () Bool)

(assert (=> d!45665 m!182065))

(declare-fun m!182067 () Bool)

(assert (=> d!45665 m!182067))

(assert (=> d!45665 m!182063))

(assert (=> d!45665 m!182063))

(declare-fun m!182069 () Bool)

(assert (=> d!45665 m!182069))

(declare-fun m!182071 () Bool)

(assert (=> b!179763 m!182071))

(declare-fun m!182073 () Bool)

(assert (=> bm!8103 m!182073))

(assert (=> b!179769 m!182061))

(declare-fun m!182075 () Bool)

(assert (=> b!179765 m!182075))

(declare-fun m!182077 () Bool)

(assert (=> b!179765 m!182077))

(declare-fun m!182079 () Bool)

(assert (=> b!179765 m!182079))

(assert (=> b!179765 m!182077))

(assert (=> b!179765 m!182075))

(declare-fun m!182081 () Bool)

(assert (=> b!179765 m!182081))

(declare-fun m!182083 () Bool)

(assert (=> b!179765 m!182083))

(assert (=> b!179765 m!182081))

(assert (=> b!179765 m!182077))

(declare-fun m!182085 () Bool)

(assert (=> b!179765 m!182085))

(assert (=> b!179138 d!45665))

(declare-fun bs!17923 () Bool)

(declare-fun b!179780 () Bool)

(assert (= bs!17923 (and b!179780 d!45665)))

(declare-fun lambda!5292 () Int)

(assert (=> bs!17923 (not (= lambda!5292 lambda!5290))))

(declare-fun bs!17924 () Bool)

(assert (= bs!17924 (and b!179780 b!179156)))

(assert (=> bs!17924 (= lambda!5292 lambda!5260)))

(declare-fun bs!17925 () Bool)

(assert (= bs!17925 (and b!179780 b!179581)))

(assert (=> bs!17925 (= lambda!5292 lambda!5281)))

(declare-fun bs!17926 () Bool)

(assert (= bs!17926 (and b!179780 d!45589)))

(assert (=> bs!17926 (not (= lambda!5292 lambda!5288))))

(declare-fun bs!17927 () Bool)

(assert (= bs!17927 (and b!179780 b!179155)))

(assert (=> bs!17927 (not (= lambda!5292 lambda!5259))))

(declare-fun bs!17928 () Bool)

(assert (= bs!17928 (and b!179780 b!179767)))

(assert (=> bs!17928 (= lambda!5292 lambda!5291)))

(declare-fun bs!17929 () Bool)

(assert (= bs!17929 (and b!179780 d!45527)))

(assert (=> bs!17929 (= lambda!5292 lambda!5271)))

(declare-fun bs!17930 () Bool)

(assert (= bs!17930 (and b!179780 b!179668)))

(assert (=> bs!17930 (= lambda!5292 lambda!5289)))

(declare-fun b!179786 () Bool)

(declare-fun e!109356 () Bool)

(assert (=> b!179786 (= e!109356 true)))

(declare-fun b!179785 () Bool)

(declare-fun e!109355 () Bool)

(assert (=> b!179785 (= e!109355 e!109356)))

(declare-fun b!179784 () Bool)

(declare-fun e!109354 () Bool)

(assert (=> b!179784 (= e!109354 e!109355)))

(assert (=> b!179780 e!109354))

(assert (= b!179785 b!179786))

(assert (= b!179784 b!179785))

(assert (= (and b!179780 ((_ is Cons!3005) rules!1920)) b!179784))

(assert (=> b!179786 (< (dynLambda!1191 order!1733 (toValue!1214 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5292))))

(assert (=> b!179786 (< (dynLambda!1193 order!1737 (toChars!1073 (transformation!543 (h!8402 rules!1920)))) (dynLambda!1192 order!1735 lambda!5292))))

(assert (=> b!179780 true))

(declare-fun b!179776 () Bool)

(declare-fun e!109350 () List!3014)

(assert (=> b!179776 (= e!109350 Nil!3004)))

(assert (=> b!179776 (= (print!160 thiss!17480 (singletonSeq!95 (h!8403 tokens!465))) (printTailRec!123 thiss!17480 (singletonSeq!95 (h!8403 tokens!465)) 0 (BalanceConc!1825 Empty!908)))))

(declare-fun lt!58963 () Unit!2736)

(declare-fun Unit!2752 () Unit!2736)

(assert (=> b!179776 (= lt!58963 Unit!2752)))

(declare-fun lt!58960 () Unit!2736)

(declare-fun lt!58965 () List!3014)

(declare-fun call!8115 () List!3014)

(assert (=> b!179776 (= lt!58960 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!44 thiss!17480 rules!1920 call!8115 lt!58965))))

(assert (=> b!179776 false))

(declare-fun lt!58964 () Unit!2736)

(declare-fun Unit!2753 () Unit!2736)

(assert (=> b!179776 (= lt!58964 Unit!2753)))

(declare-fun b!179777 () Bool)

(declare-fun c!35287 () Bool)

(declare-fun lt!58962 () Option!364)

(assert (=> b!179777 (= c!35287 (and ((_ is Some!363) lt!58962) (not (= (_1!1703 (v!13832 lt!58962)) (h!8403 tokens!465)))))))

(declare-fun e!109351 () List!3014)

(assert (=> b!179777 (= e!109351 e!109350)))

(declare-fun b!179778 () Bool)

(declare-fun e!109353 () BalanceConc!1824)

(declare-fun call!8113 () BalanceConc!1824)

(assert (=> b!179778 (= e!109353 call!8113)))

(declare-fun bm!8106 () Bool)

(declare-fun call!8111 () BalanceConc!1824)

(assert (=> bm!8106 (= call!8113 call!8111)))

(declare-fun bm!8107 () Bool)

(assert (=> bm!8107 (= call!8111 (charsOf!198 (h!8403 tokens!465)))))

(declare-fun bm!8108 () Bool)

(assert (=> bm!8108 (= call!8115 (list!1101 e!109353))))

(declare-fun c!35285 () Bool)

(assert (=> bm!8108 (= c!35285 c!35287)))

(declare-fun e!109352 () List!3014)

(assert (=> b!179780 (= e!109352 e!109351)))

(declare-fun lt!58961 () Unit!2736)

(assert (=> b!179780 (= lt!58961 (forallContained!110 tokens!465 lambda!5292 (h!8403 tokens!465)))))

(assert (=> b!179780 (= lt!58965 (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 (t!28154 tokens!465) separatorToken!170))))

(assert (=> b!179780 (= lt!58962 (maxPrefix!159 thiss!17480 rules!1920 (++!704 (list!1101 (charsOf!198 (h!8403 tokens!465))) lt!58965)))))

(declare-fun c!35288 () Bool)

(assert (=> b!179780 (= c!35288 (and ((_ is Some!363) lt!58962) (= (_1!1703 (v!13832 lt!58962)) (h!8403 tokens!465))))))

(declare-fun b!179781 () Bool)

(declare-fun call!8112 () List!3014)

(assert (=> b!179781 (= e!109350 (++!704 call!8112 lt!58965))))

(declare-fun bm!8109 () Bool)

(declare-fun call!8114 () List!3014)

(assert (=> bm!8109 (= call!8114 (list!1101 (ite c!35288 call!8111 call!8113)))))

(declare-fun b!179782 () Bool)

(assert (=> b!179782 (= e!109351 call!8112)))

(declare-fun b!179783 () Bool)

(assert (=> b!179783 (= e!109352 Nil!3004)))

(declare-fun bm!8110 () Bool)

(assert (=> bm!8110 (= call!8112 (++!704 call!8114 (ite c!35288 lt!58965 call!8115)))))

(declare-fun b!179779 () Bool)

(assert (=> b!179779 (= e!109353 (charsOf!198 separatorToken!170))))

(declare-fun d!45667 () Bool)

(declare-fun c!35286 () Bool)

(assert (=> d!45667 (= c!35286 ((_ is Cons!3006) tokens!465))))

(assert (=> d!45667 (= (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!109352)))

(assert (= (and d!45667 c!35286) b!179780))

(assert (= (and d!45667 (not c!35286)) b!179783))

(assert (= (and b!179780 c!35288) b!179782))

(assert (= (and b!179780 (not c!35288)) b!179777))

(assert (= (and b!179777 c!35287) b!179781))

(assert (= (and b!179777 (not c!35287)) b!179776))

(assert (= (or b!179781 b!179776) bm!8106))

(assert (= (or b!179781 b!179776) bm!8108))

(assert (= (and bm!8108 c!35285) b!179779))

(assert (= (and bm!8108 (not c!35285)) b!179778))

(assert (= (or b!179782 bm!8106) bm!8107))

(assert (= (or b!179782 b!179781) bm!8109))

(assert (= (or b!179782 b!179781) bm!8110))

(declare-fun m!182087 () Bool)

(assert (=> bm!8108 m!182087))

(declare-fun m!182089 () Bool)

(assert (=> bm!8109 m!182089))

(declare-fun m!182091 () Bool)

(assert (=> b!179780 m!182091))

(declare-fun m!182093 () Bool)

(assert (=> b!179780 m!182093))

(assert (=> b!179780 m!181095))

(assert (=> b!179780 m!182091))

(assert (=> b!179780 m!181083))

(assert (=> b!179780 m!181095))

(assert (=> b!179780 m!181083))

(declare-fun m!182095 () Bool)

(assert (=> b!179780 m!182095))

(assert (=> b!179780 m!181075))

(declare-fun m!182097 () Bool)

(assert (=> bm!8110 m!182097))

(assert (=> bm!8107 m!181083))

(assert (=> b!179779 m!181077))

(assert (=> b!179776 m!181133))

(assert (=> b!179776 m!181133))

(assert (=> b!179776 m!181385))

(assert (=> b!179776 m!181133))

(declare-fun m!182099 () Bool)

(assert (=> b!179776 m!182099))

(declare-fun m!182101 () Bool)

(assert (=> b!179776 m!182101))

(declare-fun m!182103 () Bool)

(assert (=> b!179781 m!182103))

(assert (=> b!179138 d!45667))

(declare-fun d!45669 () Bool)

(assert (=> d!45669 (= (get!841 lt!58608) (v!13832 lt!58608))))

(assert (=> b!179137 d!45669))

(declare-fun d!45671 () Bool)

(assert (=> d!45671 (= (isDefined!215 lt!58608) (not (isEmpty!1347 lt!58608)))))

(declare-fun bs!17931 () Bool)

(assert (= bs!17931 d!45671))

(declare-fun m!182105 () Bool)

(assert (=> bs!17931 m!182105))

(assert (=> b!179137 d!45671))

(declare-fun b!179787 () Bool)

(declare-fun res!81392 () Bool)

(declare-fun e!109357 () Bool)

(assert (=> b!179787 (=> (not res!81392) (not e!109357))))

(declare-fun lt!58969 () Option!364)

(assert (=> b!179787 (= res!81392 (= (list!1101 (charsOf!198 (_1!1703 (get!841 lt!58969)))) (originalCharacters!586 (_1!1703 (get!841 lt!58969)))))))

(declare-fun b!179788 () Bool)

(declare-fun e!109359 () Option!364)

(declare-fun lt!58967 () Option!364)

(declare-fun lt!58968 () Option!364)

(assert (=> b!179788 (= e!109359 (ite (and ((_ is None!363) lt!58967) ((_ is None!363) lt!58968)) None!363 (ite ((_ is None!363) lt!58968) lt!58967 (ite ((_ is None!363) lt!58967) lt!58968 (ite (>= (size!2461 (_1!1703 (v!13832 lt!58967))) (size!2461 (_1!1703 (v!13832 lt!58968)))) lt!58967 lt!58968)))))))

(declare-fun call!8116 () Option!364)

(assert (=> b!179788 (= lt!58967 call!8116)))

(assert (=> b!179788 (= lt!58968 (maxPrefix!159 thiss!17480 (t!28153 rules!1920) lt!58614))))

(declare-fun b!179789 () Bool)

(declare-fun res!81395 () Bool)

(assert (=> b!179789 (=> (not res!81395) (not e!109357))))

(assert (=> b!179789 (= res!81395 (= (++!704 (list!1101 (charsOf!198 (_1!1703 (get!841 lt!58969)))) (_2!1703 (get!841 lt!58969))) lt!58614))))

(declare-fun b!179790 () Bool)

(declare-fun res!81391 () Bool)

(assert (=> b!179790 (=> (not res!81391) (not e!109357))))

(assert (=> b!179790 (= res!81391 (< (size!2464 (_2!1703 (get!841 lt!58969))) (size!2464 lt!58614)))))

(declare-fun b!179791 () Bool)

(declare-fun res!81389 () Bool)

(assert (=> b!179791 (=> (not res!81389) (not e!109357))))

(assert (=> b!179791 (= res!81389 (= (value!19791 (_1!1703 (get!841 lt!58969))) (apply!443 (transformation!543 (rule!1058 (_1!1703 (get!841 lt!58969)))) (seqFromList!463 (originalCharacters!586 (_1!1703 (get!841 lt!58969)))))))))

(declare-fun d!45673 () Bool)

(declare-fun e!109358 () Bool)

(assert (=> d!45673 e!109358))

(declare-fun res!81393 () Bool)

(assert (=> d!45673 (=> res!81393 e!109358)))

(assert (=> d!45673 (= res!81393 (isEmpty!1347 lt!58969))))

(assert (=> d!45673 (= lt!58969 e!109359)))

(declare-fun c!35289 () Bool)

(assert (=> d!45673 (= c!35289 (and ((_ is Cons!3005) rules!1920) ((_ is Nil!3005) (t!28153 rules!1920))))))

(declare-fun lt!58970 () Unit!2736)

(declare-fun lt!58966 () Unit!2736)

(assert (=> d!45673 (= lt!58970 lt!58966)))

(assert (=> d!45673 (isPrefix!239 lt!58614 lt!58614)))

(assert (=> d!45673 (= lt!58966 (lemmaIsPrefixRefl!144 lt!58614 lt!58614))))

(assert (=> d!45673 (rulesValidInductive!130 thiss!17480 rules!1920)))

(assert (=> d!45673 (= (maxPrefix!159 thiss!17480 rules!1920 lt!58614) lt!58969)))

(declare-fun b!179792 () Bool)

(assert (=> b!179792 (= e!109358 e!109357)))

(declare-fun res!81394 () Bool)

(assert (=> b!179792 (=> (not res!81394) (not e!109357))))

(assert (=> b!179792 (= res!81394 (isDefined!215 lt!58969))))

(declare-fun b!179793 () Bool)

(assert (=> b!179793 (= e!109359 call!8116)))

(declare-fun b!179794 () Bool)

(declare-fun res!81390 () Bool)

(assert (=> b!179794 (=> (not res!81390) (not e!109357))))

(assert (=> b!179794 (= res!81390 (matchR!105 (regex!543 (rule!1058 (_1!1703 (get!841 lt!58969)))) (list!1101 (charsOf!198 (_1!1703 (get!841 lt!58969))))))))

(declare-fun bm!8111 () Bool)

(assert (=> bm!8111 (= call!8116 (maxPrefixOneRule!78 thiss!17480 (h!8402 rules!1920) lt!58614))))

(declare-fun b!179795 () Bool)

(assert (=> b!179795 (= e!109357 (contains!483 rules!1920 (rule!1058 (_1!1703 (get!841 lt!58969)))))))

(assert (= (and d!45673 c!35289) b!179793))

(assert (= (and d!45673 (not c!35289)) b!179788))

(assert (= (or b!179793 b!179788) bm!8111))

(assert (= (and d!45673 (not res!81393)) b!179792))

(assert (= (and b!179792 res!81394) b!179787))

(assert (= (and b!179787 res!81392) b!179790))

(assert (= (and b!179790 res!81391) b!179789))

(assert (= (and b!179789 res!81395) b!179791))

(assert (= (and b!179791 res!81389) b!179794))

(assert (= (and b!179794 res!81390) b!179795))

(declare-fun m!182107 () Bool)

(assert (=> b!179790 m!182107))

(declare-fun m!182109 () Bool)

(assert (=> b!179790 m!182109))

(assert (=> b!179790 m!181561))

(assert (=> b!179791 m!182107))

(declare-fun m!182111 () Bool)

(assert (=> b!179791 m!182111))

(assert (=> b!179791 m!182111))

(declare-fun m!182113 () Bool)

(assert (=> b!179791 m!182113))

(assert (=> b!179789 m!182107))

(declare-fun m!182115 () Bool)

(assert (=> b!179789 m!182115))

(assert (=> b!179789 m!182115))

(declare-fun m!182117 () Bool)

(assert (=> b!179789 m!182117))

(assert (=> b!179789 m!182117))

(declare-fun m!182119 () Bool)

(assert (=> b!179789 m!182119))

(assert (=> b!179794 m!182107))

(assert (=> b!179794 m!182115))

(assert (=> b!179794 m!182115))

(assert (=> b!179794 m!182117))

(assert (=> b!179794 m!182117))

(declare-fun m!182121 () Bool)

(assert (=> b!179794 m!182121))

(assert (=> b!179787 m!182107))

(assert (=> b!179787 m!182115))

(assert (=> b!179787 m!182115))

(assert (=> b!179787 m!182117))

(declare-fun m!182123 () Bool)

(assert (=> b!179792 m!182123))

(declare-fun m!182125 () Bool)

(assert (=> d!45673 m!182125))

(declare-fun m!182127 () Bool)

(assert (=> d!45673 m!182127))

(declare-fun m!182129 () Bool)

(assert (=> d!45673 m!182129))

(assert (=> d!45673 m!181047))

(declare-fun m!182131 () Bool)

(assert (=> bm!8111 m!182131))

(assert (=> b!179795 m!182107))

(declare-fun m!182133 () Bool)

(assert (=> b!179795 m!182133))

(declare-fun m!182135 () Bool)

(assert (=> b!179788 m!182135))

(assert (=> b!179137 d!45673))

(declare-fun d!45675 () Bool)

(assert (=> d!45675 (= (list!1101 (seqFromList!463 lt!58613)) (list!1104 (c!35149 (seqFromList!463 lt!58613))))))

(declare-fun bs!17932 () Bool)

(assert (= bs!17932 d!45675))

(declare-fun m!182137 () Bool)

(assert (=> bs!17932 m!182137))

(assert (=> b!179139 d!45675))

(declare-fun d!45677 () Bool)

(assert (=> d!45677 (= (seqFromList!463 lt!58613) (fromListB!181 lt!58613))))

(declare-fun bs!17933 () Bool)

(assert (= bs!17933 d!45677))

(declare-fun m!182139 () Bool)

(assert (=> bs!17933 m!182139))

(assert (=> b!179139 d!45677))

(declare-fun d!45679 () Bool)

(declare-fun res!81396 () Bool)

(declare-fun e!109360 () Bool)

(assert (=> d!45679 (=> (not res!81396) (not e!109360))))

(assert (=> d!45679 (= res!81396 (not (isEmpty!1344 (originalCharacters!586 separatorToken!170))))))

(assert (=> d!45679 (= (inv!3838 separatorToken!170) e!109360)))

(declare-fun b!179796 () Bool)

(declare-fun res!81397 () Bool)

(assert (=> b!179796 (=> (not res!81397) (not e!109360))))

(assert (=> b!179796 (= res!81397 (= (originalCharacters!586 separatorToken!170) (list!1101 (dynLambda!1196 (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (value!19791 separatorToken!170)))))))

(declare-fun b!179797 () Bool)

(assert (=> b!179797 (= e!109360 (= (size!2461 separatorToken!170) (size!2464 (originalCharacters!586 separatorToken!170))))))

(assert (= (and d!45679 res!81396) b!179796))

(assert (= (and b!179796 res!81397) b!179797))

(declare-fun b_lambda!4283 () Bool)

(assert (=> (not b_lambda!4283) (not b!179796)))

(assert (=> b!179796 t!28193))

(declare-fun b_and!12251 () Bool)

(assert (= b_and!12245 (and (=> t!28193 result!10298) b_and!12251)))

(assert (=> b!179796 t!28195))

(declare-fun b_and!12253 () Bool)

(assert (= b_and!12247 (and (=> t!28195 result!10300) b_and!12253)))

(assert (=> b!179796 t!28197))

(declare-fun b_and!12255 () Bool)

(assert (= b_and!12249 (and (=> t!28197 result!10302) b_and!12255)))

(declare-fun m!182141 () Bool)

(assert (=> d!45679 m!182141))

(assert (=> b!179796 m!181863))

(assert (=> b!179796 m!181863))

(declare-fun m!182143 () Bool)

(assert (=> b!179796 m!182143))

(declare-fun m!182145 () Bool)

(assert (=> b!179797 m!182145))

(assert (=> start!19346 d!45679))

(declare-fun d!45681 () Bool)

(assert (=> d!45681 true))

(declare-fun lt!58973 () Bool)

(declare-fun lambda!5295 () Int)

(declare-fun forall!611 (List!3015 Int) Bool)

(assert (=> d!45681 (= lt!58973 (forall!611 rules!1920 lambda!5295))))

(declare-fun e!109366 () Bool)

(assert (=> d!45681 (= lt!58973 e!109366)))

(declare-fun res!81402 () Bool)

(assert (=> d!45681 (=> res!81402 e!109366)))

(assert (=> d!45681 (= res!81402 (not ((_ is Cons!3005) rules!1920)))))

(assert (=> d!45681 (= (rulesValidInductive!130 thiss!17480 rules!1920) lt!58973)))

(declare-fun b!179802 () Bool)

(declare-fun e!109365 () Bool)

(assert (=> b!179802 (= e!109366 e!109365)))

(declare-fun res!81403 () Bool)

(assert (=> b!179802 (=> (not res!81403) (not e!109365))))

(declare-fun ruleValid!62 (LexerInterface!429 Rule!886) Bool)

(assert (=> b!179802 (= res!81403 (ruleValid!62 thiss!17480 (h!8402 rules!1920)))))

(declare-fun b!179803 () Bool)

(assert (=> b!179803 (= e!109365 (rulesValidInductive!130 thiss!17480 (t!28153 rules!1920)))))

(assert (= (and d!45681 (not res!81402)) b!179802))

(assert (= (and b!179802 res!81403) b!179803))

(declare-fun m!182147 () Bool)

(assert (=> d!45681 m!182147))

(declare-fun m!182149 () Bool)

(assert (=> b!179802 m!182149))

(declare-fun m!182151 () Bool)

(assert (=> b!179803 m!182151))

(assert (=> b!179160 d!45681))

(declare-fun d!45683 () Bool)

(assert (=> d!45683 (= (isEmpty!1346 tokens!465) ((_ is Nil!3006) tokens!465))))

(assert (=> b!179160 d!45683))

(declare-fun d!45685 () Bool)

(declare-fun e!109432 () Bool)

(assert (=> d!45685 e!109432))

(declare-fun res!81430 () Bool)

(assert (=> d!45685 (=> res!81430 e!109432)))

(assert (=> d!45685 (= res!81430 (isEmpty!1346 tokens!465))))

(declare-fun lt!58986 () Unit!2736)

(declare-fun choose!1868 (LexerInterface!429 List!3015 List!3016 Token!830) Unit!2736)

(assert (=> d!45685 (= lt!58986 (choose!1868 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!45685 (not (isEmpty!1343 rules!1920))))

(assert (=> d!45685 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!4 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!58986)))

(declare-fun b!179892 () Bool)

(declare-fun e!109433 () Bool)

(assert (=> b!179892 (= e!109432 e!109433)))

(declare-fun res!81429 () Bool)

(assert (=> b!179892 (=> (not res!81429) (not e!109433))))

(assert (=> b!179892 (= res!81429 (isDefined!215 (maxPrefix!159 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!179893 () Bool)

(assert (=> b!179893 (= e!109433 (= (_1!1703 (get!841 (maxPrefix!159 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!122 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!618 tokens!465)))))

(assert (= (and d!45685 (not res!81430)) b!179892))

(assert (= (and b!179892 res!81429) b!179893))

(assert (=> d!45685 m!181043))

(declare-fun m!182231 () Bool)

(assert (=> d!45685 m!182231))

(assert (=> d!45685 m!181027))

(assert (=> b!179892 m!181121))

(assert (=> b!179892 m!181121))

(declare-fun m!182233 () Bool)

(assert (=> b!179892 m!182233))

(assert (=> b!179892 m!182233))

(declare-fun m!182235 () Bool)

(assert (=> b!179892 m!182235))

(assert (=> b!179893 m!181121))

(assert (=> b!179893 m!181121))

(assert (=> b!179893 m!182233))

(assert (=> b!179893 m!182233))

(declare-fun m!182237 () Bool)

(assert (=> b!179893 m!182237))

(assert (=> b!179893 m!181031))

(assert (=> b!179160 d!45685))

(declare-fun b!179903 () Bool)

(declare-fun res!81439 () Bool)

(declare-fun e!109440 () Bool)

(assert (=> b!179903 (=> (not res!81439) (not e!109440))))

(assert (=> b!179903 (= res!81439 (= (head!620 lt!58614) (head!620 lt!58606)))))

(declare-fun b!179902 () Bool)

(declare-fun e!109442 () Bool)

(assert (=> b!179902 (= e!109442 e!109440)))

(declare-fun res!81441 () Bool)

(assert (=> b!179902 (=> (not res!81441) (not e!109440))))

(assert (=> b!179902 (= res!81441 (not ((_ is Nil!3004) lt!58606)))))

(declare-fun b!179904 () Bool)

(assert (=> b!179904 (= e!109440 (isPrefix!239 (tail!357 lt!58614) (tail!357 lt!58606)))))

(declare-fun d!45711 () Bool)

(declare-fun e!109441 () Bool)

(assert (=> d!45711 e!109441))

(declare-fun res!81442 () Bool)

(assert (=> d!45711 (=> res!81442 e!109441)))

(declare-fun lt!58989 () Bool)

(assert (=> d!45711 (= res!81442 (not lt!58989))))

(assert (=> d!45711 (= lt!58989 e!109442)))

(declare-fun res!81440 () Bool)

(assert (=> d!45711 (=> res!81440 e!109442)))

(assert (=> d!45711 (= res!81440 ((_ is Nil!3004) lt!58614))))

(assert (=> d!45711 (= (isPrefix!239 lt!58614 lt!58606) lt!58989)))

(declare-fun b!179905 () Bool)

(assert (=> b!179905 (= e!109441 (>= (size!2464 lt!58606) (size!2464 lt!58614)))))

(assert (= (and d!45711 (not res!81440)) b!179902))

(assert (= (and b!179902 res!81441) b!179903))

(assert (= (and b!179903 res!81439) b!179904))

(assert (= (and d!45711 (not res!81442)) b!179905))

(assert (=> b!179903 m!181259))

(declare-fun m!182239 () Bool)

(assert (=> b!179903 m!182239))

(assert (=> b!179904 m!181263))

(declare-fun m!182241 () Bool)

(assert (=> b!179904 m!182241))

(assert (=> b!179904 m!181263))

(assert (=> b!179904 m!182241))

(declare-fun m!182243 () Bool)

(assert (=> b!179904 m!182243))

(declare-fun m!182245 () Bool)

(assert (=> b!179905 m!182245))

(assert (=> b!179905 m!181561))

(assert (=> b!179160 d!45711))

(declare-fun d!45713 () Bool)

(assert (=> d!45713 (isPrefix!239 lt!58614 (++!704 lt!58614 lt!58610))))

(declare-fun lt!58992 () Unit!2736)

(declare-fun choose!1869 (List!3014 List!3014) Unit!2736)

(assert (=> d!45713 (= lt!58992 (choose!1869 lt!58614 lt!58610))))

(assert (=> d!45713 (= (lemmaConcatTwoListThenFirstIsPrefix!134 lt!58614 lt!58610) lt!58992)))

(declare-fun bs!17946 () Bool)

(assert (= bs!17946 d!45713))

(assert (=> bs!17946 m!181079))

(assert (=> bs!17946 m!181079))

(declare-fun m!182247 () Bool)

(assert (=> bs!17946 m!182247))

(declare-fun m!182249 () Bool)

(assert (=> bs!17946 m!182249))

(assert (=> b!179160 d!45713))

(declare-fun b!179906 () Bool)

(declare-fun e!109445 () Bool)

(assert (=> b!179906 (= e!109445 (inv!15 (value!19791 (h!8403 tokens!465))))))

(declare-fun b!179907 () Bool)

(declare-fun e!109444 () Bool)

(declare-fun e!109443 () Bool)

(assert (=> b!179907 (= e!109444 e!109443)))

(declare-fun c!35291 () Bool)

(assert (=> b!179907 (= c!35291 ((_ is IntegerValue!1696) (value!19791 (h!8403 tokens!465))))))

(declare-fun b!179908 () Bool)

(assert (=> b!179908 (= e!109444 (inv!16 (value!19791 (h!8403 tokens!465))))))

(declare-fun b!179909 () Bool)

(declare-fun res!81443 () Bool)

(assert (=> b!179909 (=> res!81443 e!109445)))

(assert (=> b!179909 (= res!81443 (not ((_ is IntegerValue!1697) (value!19791 (h!8403 tokens!465)))))))

(assert (=> b!179909 (= e!109443 e!109445)))

(declare-fun b!179910 () Bool)

(assert (=> b!179910 (= e!109443 (inv!17 (value!19791 (h!8403 tokens!465))))))

(declare-fun d!45715 () Bool)

(declare-fun c!35292 () Bool)

(assert (=> d!45715 (= c!35292 ((_ is IntegerValue!1695) (value!19791 (h!8403 tokens!465))))))

(assert (=> d!45715 (= (inv!21 (value!19791 (h!8403 tokens!465))) e!109444)))

(assert (= (and d!45715 c!35292) b!179908))

(assert (= (and d!45715 (not c!35292)) b!179907))

(assert (= (and b!179907 c!35291) b!179910))

(assert (= (and b!179907 (not c!35291)) b!179909))

(assert (= (and b!179909 (not res!81443)) b!179906))

(declare-fun m!182251 () Bool)

(assert (=> b!179906 m!182251))

(declare-fun m!182253 () Bool)

(assert (=> b!179908 m!182253))

(declare-fun m!182255 () Bool)

(assert (=> b!179910 m!182255))

(assert (=> b!179135 d!45715))

(declare-fun d!45717 () Bool)

(declare-fun isEmpty!1354 (Option!365) Bool)

(assert (=> d!45717 (= (isDefined!216 (maxPrefixZipperSequence!122 thiss!17480 rules!1920 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465))))) (not (isEmpty!1354 (maxPrefixZipperSequence!122 thiss!17480 rules!1920 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))))

(declare-fun bs!17947 () Bool)

(assert (= bs!17947 d!45717))

(assert (=> bs!17947 m!181055))

(declare-fun m!182257 () Bool)

(assert (=> bs!17947 m!182257))

(assert (=> b!179156 d!45717))

(declare-fun b!179927 () Bool)

(declare-fun e!109459 () Option!365)

(declare-fun lt!59013 () Option!365)

(declare-fun lt!59012 () Option!365)

(assert (=> b!179927 (= e!109459 (ite (and ((_ is None!364) lt!59013) ((_ is None!364) lt!59012)) None!364 (ite ((_ is None!364) lt!59012) lt!59013 (ite ((_ is None!364) lt!59013) lt!59012 (ite (>= (size!2461 (_1!1704 (v!13833 lt!59013))) (size!2461 (_1!1704 (v!13833 lt!59012)))) lt!59013 lt!59012)))))))

(declare-fun call!8120 () Option!365)

(assert (=> b!179927 (= lt!59013 call!8120)))

(assert (=> b!179927 (= lt!59012 (maxPrefixZipperSequence!122 thiss!17480 (t!28153 rules!1920) (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))

(declare-fun e!109463 () Bool)

(declare-fun lt!59008 () Option!365)

(declare-fun b!179928 () Bool)

(declare-fun get!843 (Option!365) tuple2!2976)

(declare-fun maxPrefixZipper!49 (LexerInterface!429 List!3015 List!3014) Option!364)

(assert (=> b!179928 (= e!109463 (= (list!1101 (_2!1704 (get!843 lt!59008))) (_2!1703 (get!841 (maxPrefixZipper!49 thiss!17480 rules!1920 (list!1101 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))))))

(declare-fun b!179929 () Bool)

(assert (=> b!179929 (= e!109459 call!8120)))

(declare-fun d!45719 () Bool)

(declare-fun e!109461 () Bool)

(assert (=> d!45719 e!109461))

(declare-fun res!81461 () Bool)

(assert (=> d!45719 (=> (not res!81461) (not e!109461))))

(assert (=> d!45719 (= res!81461 (= (isDefined!216 lt!59008) (isDefined!215 (maxPrefixZipper!49 thiss!17480 rules!1920 (list!1101 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465))))))))))

(assert (=> d!45719 (= lt!59008 e!109459)))

(declare-fun c!35295 () Bool)

(assert (=> d!45719 (= c!35295 (and ((_ is Cons!3005) rules!1920) ((_ is Nil!3005) (t!28153 rules!1920))))))

(declare-fun lt!59011 () Unit!2736)

(declare-fun lt!59009 () Unit!2736)

(assert (=> d!45719 (= lt!59011 lt!59009)))

(declare-fun lt!59007 () List!3014)

(declare-fun lt!59010 () List!3014)

(assert (=> d!45719 (isPrefix!239 lt!59007 lt!59010)))

(assert (=> d!45719 (= lt!59009 (lemmaIsPrefixRefl!144 lt!59007 lt!59010))))

(assert (=> d!45719 (= lt!59010 (list!1101 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))

(assert (=> d!45719 (= lt!59007 (list!1101 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))

(assert (=> d!45719 (rulesValidInductive!130 thiss!17480 rules!1920)))

(assert (=> d!45719 (= (maxPrefixZipperSequence!122 thiss!17480 rules!1920 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))) lt!59008)))

(declare-fun bm!8115 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!50 (LexerInterface!429 Rule!886 BalanceConc!1824) Option!365)

(assert (=> bm!8115 (= call!8120 (maxPrefixOneRuleZipperSequence!50 thiss!17480 (h!8402 rules!1920) (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))

(declare-fun b!179930 () Bool)

(declare-fun e!109462 () Bool)

(declare-fun e!109458 () Bool)

(assert (=> b!179930 (= e!109462 e!109458)))

(declare-fun res!81456 () Bool)

(assert (=> b!179930 (=> (not res!81456) (not e!109458))))

(assert (=> b!179930 (= res!81456 (= (_1!1704 (get!843 lt!59008)) (_1!1703 (get!841 (maxPrefix!159 thiss!17480 rules!1920 (list!1101 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))))))

(declare-fun b!179931 () Bool)

(declare-fun res!81460 () Bool)

(assert (=> b!179931 (=> (not res!81460) (not e!109461))))

(declare-fun e!109460 () Bool)

(assert (=> b!179931 (= res!81460 e!109460)))

(declare-fun res!81459 () Bool)

(assert (=> b!179931 (=> res!81459 e!109460)))

(assert (=> b!179931 (= res!81459 (not (isDefined!216 lt!59008)))))

(declare-fun b!179932 () Bool)

(assert (=> b!179932 (= e!109458 (= (list!1101 (_2!1704 (get!843 lt!59008))) (_2!1703 (get!841 (maxPrefix!159 thiss!17480 rules!1920 (list!1101 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))))))

(declare-fun b!179933 () Bool)

(assert (=> b!179933 (= e!109461 e!109462)))

(declare-fun res!81457 () Bool)

(assert (=> b!179933 (=> res!81457 e!109462)))

(assert (=> b!179933 (= res!81457 (not (isDefined!216 lt!59008)))))

(declare-fun b!179934 () Bool)

(assert (=> b!179934 (= e!109460 e!109463)))

(declare-fun res!81458 () Bool)

(assert (=> b!179934 (=> (not res!81458) (not e!109463))))

(assert (=> b!179934 (= res!81458 (= (_1!1704 (get!843 lt!59008)) (_1!1703 (get!841 (maxPrefixZipper!49 thiss!17480 rules!1920 (list!1101 (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465)))))))))))

(assert (= (and d!45719 c!35295) b!179929))

(assert (= (and d!45719 (not c!35295)) b!179927))

(assert (= (or b!179929 b!179927) bm!8115))

(assert (= (and d!45719 res!81461) b!179931))

(assert (= (and b!179931 (not res!81459)) b!179934))

(assert (= (and b!179934 res!81458) b!179928))

(assert (= (and b!179931 res!81460) b!179933))

(assert (= (and b!179933 (not res!81457)) b!179930))

(assert (= (and b!179930 res!81456) b!179932))

(assert (=> b!179932 m!181053))

(declare-fun m!182259 () Bool)

(assert (=> b!179932 m!182259))

(declare-fun m!182261 () Bool)

(assert (=> b!179932 m!182261))

(declare-fun m!182263 () Bool)

(assert (=> b!179932 m!182263))

(declare-fun m!182265 () Bool)

(assert (=> b!179932 m!182265))

(declare-fun m!182267 () Bool)

(assert (=> b!179932 m!182267))

(assert (=> b!179932 m!182259))

(assert (=> b!179932 m!182265))

(assert (=> b!179928 m!181053))

(assert (=> b!179928 m!182259))

(assert (=> b!179928 m!182263))

(assert (=> b!179928 m!182259))

(declare-fun m!182269 () Bool)

(assert (=> b!179928 m!182269))

(assert (=> b!179928 m!182261))

(assert (=> b!179928 m!182269))

(declare-fun m!182271 () Bool)

(assert (=> b!179928 m!182271))

(assert (=> b!179927 m!181053))

(declare-fun m!182273 () Bool)

(assert (=> b!179927 m!182273))

(declare-fun m!182275 () Bool)

(assert (=> b!179931 m!182275))

(assert (=> bm!8115 m!181053))

(declare-fun m!182277 () Bool)

(assert (=> bm!8115 m!182277))

(assert (=> d!45719 m!181053))

(assert (=> d!45719 m!182259))

(assert (=> d!45719 m!182275))

(assert (=> d!45719 m!181047))

(assert (=> d!45719 m!182259))

(assert (=> d!45719 m!182269))

(declare-fun m!182279 () Bool)

(assert (=> d!45719 m!182279))

(assert (=> d!45719 m!182269))

(declare-fun m!182281 () Bool)

(assert (=> d!45719 m!182281))

(declare-fun m!182283 () Bool)

(assert (=> d!45719 m!182283))

(assert (=> b!179933 m!182275))

(assert (=> b!179934 m!182261))

(assert (=> b!179934 m!181053))

(assert (=> b!179934 m!182259))

(assert (=> b!179934 m!182259))

(assert (=> b!179934 m!182269))

(assert (=> b!179934 m!182269))

(assert (=> b!179934 m!182271))

(assert (=> b!179930 m!182261))

(assert (=> b!179930 m!181053))

(assert (=> b!179930 m!182259))

(assert (=> b!179930 m!182259))

(assert (=> b!179930 m!182265))

(assert (=> b!179930 m!182265))

(assert (=> b!179930 m!182267))

(assert (=> b!179156 d!45719))

(declare-fun d!45721 () Bool)

(assert (=> d!45721 (= (seqFromList!463 (originalCharacters!586 (h!8403 tokens!465))) (fromListB!181 (originalCharacters!586 (h!8403 tokens!465))))))

(declare-fun bs!17948 () Bool)

(assert (= bs!17948 d!45721))

(declare-fun m!182285 () Bool)

(assert (=> bs!17948 m!182285))

(assert (=> b!179156 d!45721))

(declare-fun d!45723 () Bool)

(assert (=> d!45723 (dynLambda!1197 lambda!5260 (h!8403 tokens!465))))

(declare-fun lt!59016 () Unit!2736)

(declare-fun choose!1870 (List!3016 Int Token!830) Unit!2736)

(assert (=> d!45723 (= lt!59016 (choose!1870 tokens!465 lambda!5260 (h!8403 tokens!465)))))

(declare-fun e!109466 () Bool)

(assert (=> d!45723 e!109466))

(declare-fun res!81464 () Bool)

(assert (=> d!45723 (=> (not res!81464) (not e!109466))))

(assert (=> d!45723 (= res!81464 (forall!607 tokens!465 lambda!5260))))

(assert (=> d!45723 (= (forallContained!110 tokens!465 lambda!5260 (h!8403 tokens!465)) lt!59016)))

(declare-fun b!179937 () Bool)

(declare-fun contains!486 (List!3016 Token!830) Bool)

(assert (=> b!179937 (= e!109466 (contains!486 tokens!465 (h!8403 tokens!465)))))

(assert (= (and d!45723 res!81464) b!179937))

(declare-fun b_lambda!4297 () Bool)

(assert (=> (not b_lambda!4297) (not d!45723)))

(declare-fun m!182287 () Bool)

(assert (=> d!45723 m!182287))

(declare-fun m!182289 () Bool)

(assert (=> d!45723 m!182289))

(declare-fun m!182291 () Bool)

(assert (=> d!45723 m!182291))

(declare-fun m!182293 () Bool)

(assert (=> b!179937 m!182293))

(assert (=> b!179156 d!45723))

(declare-fun d!45725 () Bool)

(assert (=> d!45725 (= (isEmpty!1344 (_2!1703 lt!58609)) ((_ is Nil!3004) (_2!1703 lt!58609)))))

(assert (=> b!179158 d!45725))

(declare-fun d!45727 () Bool)

(assert (=> d!45727 (= (inv!3834 (tag!721 (rule!1058 separatorToken!170))) (= (mod (str.len (value!19790 (tag!721 (rule!1058 separatorToken!170)))) 2) 0))))

(assert (=> b!179136 d!45727))

(declare-fun d!45729 () Bool)

(declare-fun res!81465 () Bool)

(declare-fun e!109467 () Bool)

(assert (=> d!45729 (=> (not res!81465) (not e!109467))))

(assert (=> d!45729 (= res!81465 (semiInverseModEq!186 (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (toValue!1214 (transformation!543 (rule!1058 separatorToken!170)))))))

(assert (=> d!45729 (= (inv!3837 (transformation!543 (rule!1058 separatorToken!170))) e!109467)))

(declare-fun b!179938 () Bool)

(assert (=> b!179938 (= e!109467 (equivClasses!169 (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (toValue!1214 (transformation!543 (rule!1058 separatorToken!170)))))))

(assert (= (and d!45729 res!81465) b!179938))

(declare-fun m!182295 () Bool)

(assert (=> d!45729 m!182295))

(declare-fun m!182297 () Bool)

(assert (=> b!179938 m!182297))

(assert (=> b!179136 d!45729))

(declare-fun b!179943 () Bool)

(declare-fun e!109470 () Bool)

(declare-fun tp_is_empty!1671 () Bool)

(declare-fun tp!86058 () Bool)

(assert (=> b!179943 (= e!109470 (and tp_is_empty!1671 tp!86058))))

(assert (=> b!179154 (= tp!85988 e!109470)))

(assert (= (and b!179154 ((_ is Cons!3004) (originalCharacters!586 separatorToken!170))) b!179943))

(declare-fun b!179957 () Bool)

(declare-fun e!109473 () Bool)

(declare-fun tp!86071 () Bool)

(declare-fun tp!86070 () Bool)

(assert (=> b!179957 (= e!109473 (and tp!86071 tp!86070))))

(declare-fun b!179955 () Bool)

(declare-fun tp!86073 () Bool)

(declare-fun tp!86072 () Bool)

(assert (=> b!179955 (= e!109473 (and tp!86073 tp!86072))))

(declare-fun b!179956 () Bool)

(declare-fun tp!86069 () Bool)

(assert (=> b!179956 (= e!109473 tp!86069)))

(assert (=> b!179151 (= tp!85986 e!109473)))

(declare-fun b!179954 () Bool)

(assert (=> b!179954 (= e!109473 tp_is_empty!1671)))

(assert (= (and b!179151 ((_ is ElementMatch!767) (regex!543 (rule!1058 (h!8403 tokens!465))))) b!179954))

(assert (= (and b!179151 ((_ is Concat!1333) (regex!543 (rule!1058 (h!8403 tokens!465))))) b!179955))

(assert (= (and b!179151 ((_ is Star!767) (regex!543 (rule!1058 (h!8403 tokens!465))))) b!179956))

(assert (= (and b!179151 ((_ is Union!767) (regex!543 (rule!1058 (h!8403 tokens!465))))) b!179957))

(declare-fun b!179968 () Bool)

(declare-fun b_free!6949 () Bool)

(declare-fun b_next!6949 () Bool)

(assert (=> b!179968 (= b_free!6949 (not b_next!6949))))

(declare-fun tp!86085 () Bool)

(declare-fun b_and!12265 () Bool)

(assert (=> b!179968 (= tp!86085 b_and!12265)))

(declare-fun b_free!6951 () Bool)

(declare-fun b_next!6951 () Bool)

(assert (=> b!179968 (= b_free!6951 (not b_next!6951))))

(declare-fun t!28213 () Bool)

(declare-fun tb!7529 () Bool)

(assert (=> (and b!179968 (= (toChars!1073 (transformation!543 (h!8402 (t!28153 rules!1920)))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465))))) t!28213) tb!7529))

(declare-fun result!10326 () Bool)

(assert (= result!10326 result!10276))

(assert (=> b!179427 t!28213))

(declare-fun t!28215 () Bool)

(declare-fun tb!7531 () Bool)

(assert (=> (and b!179968 (= (toChars!1073 (transformation!543 (h!8402 (t!28153 rules!1920)))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170)))) t!28215) tb!7531))

(declare-fun result!10328 () Bool)

(assert (= result!10328 result!10298))

(assert (=> d!45617 t!28215))

(assert (=> d!45621 t!28213))

(assert (=> b!179796 t!28215))

(declare-fun b_and!12267 () Bool)

(declare-fun tp!86083 () Bool)

(assert (=> b!179968 (= tp!86083 (and (=> t!28213 result!10326) (=> t!28215 result!10328) b_and!12267))))

(declare-fun e!109485 () Bool)

(assert (=> b!179968 (= e!109485 (and tp!86085 tp!86083))))

(declare-fun tp!86082 () Bool)

(declare-fun e!109484 () Bool)

(declare-fun b!179967 () Bool)

(assert (=> b!179967 (= e!109484 (and tp!86082 (inv!3834 (tag!721 (h!8402 (t!28153 rules!1920)))) (inv!3837 (transformation!543 (h!8402 (t!28153 rules!1920)))) e!109485))))

(declare-fun b!179966 () Bool)

(declare-fun e!109483 () Bool)

(declare-fun tp!86084 () Bool)

(assert (=> b!179966 (= e!109483 (and e!109484 tp!86084))))

(assert (=> b!179148 (= tp!85989 e!109483)))

(assert (= b!179967 b!179968))

(assert (= b!179966 b!179967))

(assert (= (and b!179148 ((_ is Cons!3005) (t!28153 rules!1920))) b!179966))

(declare-fun m!182299 () Bool)

(assert (=> b!179967 m!182299))

(declare-fun m!182301 () Bool)

(assert (=> b!179967 m!182301))

(declare-fun b!179982 () Bool)

(declare-fun b_free!6953 () Bool)

(declare-fun b_next!6953 () Bool)

(assert (=> b!179982 (= b_free!6953 (not b_next!6953))))

(declare-fun tp!86096 () Bool)

(declare-fun b_and!12269 () Bool)

(assert (=> b!179982 (= tp!86096 b_and!12269)))

(declare-fun b_free!6955 () Bool)

(declare-fun b_next!6955 () Bool)

(assert (=> b!179982 (= b_free!6955 (not b_next!6955))))

(declare-fun t!28217 () Bool)

(declare-fun tb!7533 () Bool)

(assert (=> (and b!179982 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 (t!28154 tokens!465))))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465))))) t!28217) tb!7533))

(declare-fun result!10332 () Bool)

(assert (= result!10332 result!10276))

(assert (=> b!179427 t!28217))

(declare-fun tb!7535 () Bool)

(declare-fun t!28219 () Bool)

(assert (=> (and b!179982 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 (t!28154 tokens!465))))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170)))) t!28219) tb!7535))

(declare-fun result!10334 () Bool)

(assert (= result!10334 result!10298))

(assert (=> d!45617 t!28219))

(assert (=> d!45621 t!28217))

(assert (=> b!179796 t!28219))

(declare-fun tp!86098 () Bool)

(declare-fun b_and!12271 () Bool)

(assert (=> b!179982 (= tp!86098 (and (=> t!28217 result!10332) (=> t!28219 result!10334) b_and!12271))))

(declare-fun e!109503 () Bool)

(assert (=> b!179149 (= tp!85984 e!109503)))

(declare-fun e!109500 () Bool)

(declare-fun tp!86099 () Bool)

(declare-fun e!109502 () Bool)

(declare-fun b!179981 () Bool)

(assert (=> b!179981 (= e!109500 (and tp!86099 (inv!3834 (tag!721 (rule!1058 (h!8403 (t!28154 tokens!465))))) (inv!3837 (transformation!543 (rule!1058 (h!8403 (t!28154 tokens!465))))) e!109502))))

(declare-fun tp!86100 () Bool)

(declare-fun e!109499 () Bool)

(declare-fun b!179980 () Bool)

(assert (=> b!179980 (= e!109499 (and (inv!21 (value!19791 (h!8403 (t!28154 tokens!465)))) e!109500 tp!86100))))

(declare-fun tp!86097 () Bool)

(declare-fun b!179979 () Bool)

(assert (=> b!179979 (= e!109503 (and (inv!3838 (h!8403 (t!28154 tokens!465))) e!109499 tp!86097))))

(assert (=> b!179982 (= e!109502 (and tp!86096 tp!86098))))

(assert (= b!179981 b!179982))

(assert (= b!179980 b!179981))

(assert (= b!179979 b!179980))

(assert (= (and b!179149 ((_ is Cons!3006) (t!28154 tokens!465))) b!179979))

(declare-fun m!182303 () Bool)

(assert (=> b!179981 m!182303))

(declare-fun m!182305 () Bool)

(assert (=> b!179981 m!182305))

(declare-fun m!182307 () Bool)

(assert (=> b!179980 m!182307))

(declare-fun m!182309 () Bool)

(assert (=> b!179979 m!182309))

(declare-fun b!179983 () Bool)

(declare-fun e!109504 () Bool)

(declare-fun tp!86101 () Bool)

(assert (=> b!179983 (= e!109504 (and tp_is_empty!1671 tp!86101))))

(assert (=> b!179135 (= tp!85980 e!109504)))

(assert (= (and b!179135 ((_ is Cons!3004) (originalCharacters!586 (h!8403 tokens!465)))) b!179983))

(declare-fun b!179987 () Bool)

(declare-fun e!109505 () Bool)

(declare-fun tp!86104 () Bool)

(declare-fun tp!86103 () Bool)

(assert (=> b!179987 (= e!109505 (and tp!86104 tp!86103))))

(declare-fun b!179985 () Bool)

(declare-fun tp!86106 () Bool)

(declare-fun tp!86105 () Bool)

(assert (=> b!179985 (= e!109505 (and tp!86106 tp!86105))))

(declare-fun b!179986 () Bool)

(declare-fun tp!86102 () Bool)

(assert (=> b!179986 (= e!109505 tp!86102)))

(assert (=> b!179145 (= tp!85991 e!109505)))

(declare-fun b!179984 () Bool)

(assert (=> b!179984 (= e!109505 tp_is_empty!1671)))

(assert (= (and b!179145 ((_ is ElementMatch!767) (regex!543 (h!8402 rules!1920)))) b!179984))

(assert (= (and b!179145 ((_ is Concat!1333) (regex!543 (h!8402 rules!1920)))) b!179985))

(assert (= (and b!179145 ((_ is Star!767) (regex!543 (h!8402 rules!1920)))) b!179986))

(assert (= (and b!179145 ((_ is Union!767) (regex!543 (h!8402 rules!1920)))) b!179987))

(declare-fun b!179990 () Bool)

(declare-fun e!109508 () Bool)

(assert (=> b!179990 (= e!109508 true)))

(declare-fun b!179989 () Bool)

(declare-fun e!109507 () Bool)

(assert (=> b!179989 (= e!109507 e!109508)))

(declare-fun b!179988 () Bool)

(declare-fun e!109506 () Bool)

(assert (=> b!179988 (= e!109506 e!109507)))

(assert (=> b!179174 e!109506))

(assert (= b!179989 b!179990))

(assert (= b!179988 b!179989))

(assert (= (and b!179174 ((_ is Cons!3005) (t!28153 rules!1920))) b!179988))

(assert (=> b!179990 (< (dynLambda!1191 order!1733 (toValue!1214 (transformation!543 (h!8402 (t!28153 rules!1920))))) (dynLambda!1192 order!1735 lambda!5260))))

(assert (=> b!179990 (< (dynLambda!1193 order!1737 (toChars!1073 (transformation!543 (h!8402 (t!28153 rules!1920))))) (dynLambda!1192 order!1735 lambda!5260))))

(declare-fun b!179994 () Bool)

(declare-fun e!109509 () Bool)

(declare-fun tp!86109 () Bool)

(declare-fun tp!86108 () Bool)

(assert (=> b!179994 (= e!109509 (and tp!86109 tp!86108))))

(declare-fun b!179992 () Bool)

(declare-fun tp!86111 () Bool)

(declare-fun tp!86110 () Bool)

(assert (=> b!179992 (= e!109509 (and tp!86111 tp!86110))))

(declare-fun b!179993 () Bool)

(declare-fun tp!86107 () Bool)

(assert (=> b!179993 (= e!109509 tp!86107)))

(assert (=> b!179136 (= tp!85982 e!109509)))

(declare-fun b!179991 () Bool)

(assert (=> b!179991 (= e!109509 tp_is_empty!1671)))

(assert (= (and b!179136 ((_ is ElementMatch!767) (regex!543 (rule!1058 separatorToken!170)))) b!179991))

(assert (= (and b!179136 ((_ is Concat!1333) (regex!543 (rule!1058 separatorToken!170)))) b!179992))

(assert (= (and b!179136 ((_ is Star!767) (regex!543 (rule!1058 separatorToken!170)))) b!179993))

(assert (= (and b!179136 ((_ is Union!767) (regex!543 (rule!1058 separatorToken!170)))) b!179994))

(declare-fun b_lambda!4299 () Bool)

(assert (= b_lambda!4279 (or b!179155 b_lambda!4299)))

(declare-fun bs!17949 () Bool)

(declare-fun d!45731 () Bool)

(assert (= bs!17949 (and d!45731 b!179155)))

(assert (=> bs!17949 (= (dynLambda!1197 lambda!5259 (h!8403 tokens!465)) (not (isSeparator!543 (rule!1058 (h!8403 tokens!465)))))))

(assert (=> b!179690 d!45731))

(declare-fun b_lambda!4301 () Bool)

(assert (= b_lambda!4263 (or (and b!179968 b_free!6951 (= (toChars!1073 (transformation!543 (h!8402 (t!28153 rules!1920)))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))))) (and b!179982 b_free!6955 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 (t!28154 tokens!465))))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))))) (and b!179152 b_free!6935 (= (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))))) (and b!179161 b_free!6939) (and b!179164 b_free!6931 (= (toChars!1073 (transformation!543 (h!8402 rules!1920))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))))) b_lambda!4301)))

(declare-fun b_lambda!4303 () Bool)

(assert (= b_lambda!4277 (or (and b!179968 b_free!6951 (= (toChars!1073 (transformation!543 (h!8402 (t!28153 rules!1920)))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))))) (and b!179982 b_free!6955 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 (t!28154 tokens!465))))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))))) (and b!179152 b_free!6935 (= (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))))) (and b!179161 b_free!6939) (and b!179164 b_free!6931 (= (toChars!1073 (transformation!543 (h!8402 rules!1920))) (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))))) b_lambda!4303)))

(declare-fun b_lambda!4305 () Bool)

(assert (= b_lambda!4297 (or b!179156 b_lambda!4305)))

(declare-fun bs!17950 () Bool)

(declare-fun d!45733 () Bool)

(assert (= bs!17950 (and d!45733 b!179156)))

(assert (=> bs!17950 (= (dynLambda!1197 lambda!5260 (h!8403 tokens!465)) (rulesProduceIndividualToken!178 thiss!17480 rules!1920 (h!8403 tokens!465)))))

(assert (=> bs!17950 m!181141))

(assert (=> d!45723 d!45733))

(declare-fun b_lambda!4307 () Bool)

(assert (= b_lambda!4275 (or (and b!179164 b_free!6931 (= (toChars!1073 (transformation!543 (h!8402 rules!1920))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))))) (and b!179161 b_free!6939 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))))) (and b!179968 b_free!6951 (= (toChars!1073 (transformation!543 (h!8402 (t!28153 rules!1920)))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))))) (and b!179152 b_free!6935) (and b!179982 b_free!6955 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 (t!28154 tokens!465))))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))))) b_lambda!4307)))

(declare-fun b_lambda!4309 () Bool)

(assert (= b_lambda!4283 (or (and b!179164 b_free!6931 (= (toChars!1073 (transformation!543 (h!8402 rules!1920))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))))) (and b!179161 b_free!6939 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 tokens!465)))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))))) (and b!179968 b_free!6951 (= (toChars!1073 (transformation!543 (h!8402 (t!28153 rules!1920)))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))))) (and b!179152 b_free!6935) (and b!179982 b_free!6955 (= (toChars!1073 (transformation!543 (rule!1058 (h!8403 (t!28154 tokens!465))))) (toChars!1073 (transformation!543 (rule!1058 separatorToken!170))))) b_lambda!4309)))

(check-sat (not bm!8110) (not b!179983) (not b!179760) (not b!179955) (not b!179979) (not b!179934) (not bm!8024) (not d!45495) (not b!179691) (not bm!8097) (not d!45717) (not d!45639) (not d!45535) (not b!179985) (not b!179933) (not b!179986) (not b!179264) (not b!179270) (not b!179791) (not d!45519) (not d!45521) b_and!12269 (not d!45571) (not b!179938) (not bm!8107) (not d!45625) (not d!45721) (not d!45623) (not b!179797) (not bm!8108) (not b!179389) (not d!45661) (not b!179966) (not d!45543) (not d!45677) (not b!179967) (not b!179453) (not b!179321) (not b!179581) (not b!179582) (not d!45533) (not d!45589) (not b!179455) (not d!45681) b_and!12271 (not d!45539) (not b!179696) (not d!45567) (not b!179495) (not bm!8115) (not b_next!6931) (not b!179262) (not b!179680) (not b!179663) (not d!45723) (not b!179693) (not b!179957) (not b!179795) (not b!179354) (not b_lambda!4303) (not b!179496) (not b!179927) (not b!179892) (not b!179319) (not b_next!6953) (not b!179672) (not b!179928) (not b!179980) (not b!179421) (not d!45679) (not b!179905) (not bm!8101) b_and!12255 (not b!179993) (not b_lambda!4307) (not b!179987) (not b!179893) (not b!179337) (not b!179320) (not b!179932) (not bm!8021) (not b!179677) (not b!179790) (not b!179930) (not b!179420) (not bs!17950) (not d!45537) (not b!179771) (not b!179454) (not bm!8075) tp_is_empty!1671 (not b!179903) (not d!45619) (not b_next!6951) (not b_lambda!4299) (not b!179796) (not b!179910) (not b!179342) (not bm!8093) (not bm!8076) (not b!179931) b_and!12267 (not b!179474) (not b!179794) (not d!45501) (not b!179789) (not b!179422) (not b!179956) (not d!45665) (not b!179266) b_and!12197 (not b!179322) (not b_lambda!4309) (not d!45493) (not d!45621) (not b!179476) (not b!179937) (not b!179668) (not b!179347) (not bm!8077) (not b_next!6939) (not b!179988) (not b!179765) (not b!179904) (not b!179787) (not b!179694) (not b!179992) (not d!45713) (not b!179802) (not b!179981) (not d!45675) (not b!179326) (not b!179433) (not b!179500) (not b!179664) (not b!179447) (not b!179784) (not b!179994) (not b!179269) (not b!179763) (not tb!7497) (not b!179792) (not b_lambda!4305) (not d!45729) (not b_next!6929) (not b!179906) (not d!45617) (not d!45515) (not b!179679) (not b!179769) (not d!45641) (not b!179456) (not b!179767) (not b!179684) (not b!179779) (not d!45637) (not b!179670) (not b_lambda!4301) (not b!179580) (not bm!8105) (not bm!8074) (not d!45685) (not b!179388) (not b_next!6937) (not b!179577) (not b!179427) (not d!45673) (not b!179759) (not b_next!6955) (not d!45553) (not b!179499) b_and!12201 (not d!45555) b_and!12205 b_and!12251 (not b!179674) (not d!45671) (not d!45631) (not b!179265) (not b!179328) (not d!45627) (not d!45663) (not b!179585) (not d!45517) (not b!179781) (not b!179758) (not d!45527) (not b!179780) (not b!179773) (not b!179267) (not d!45545) (not b!179943) (not b!179908) (not b!179803) (not bm!8109) (not b!179666) (not b!179762) (not b_next!6949) (not bm!8103) (not b!179683) (not b!179776) (not b!179757) (not d!45569) (not b!179472) b_and!12253 (not b_next!6935) (not tb!7515) (not bm!8111) (not bm!8095) (not b!179263) (not b!179788) (not d!45719) (not b_next!6933) (not b!179353) b_and!12265 (not b!179428) (not b!179339))
(check-sat b_and!12269 (not b_next!6953) b_and!12255 (not b_next!6951) b_and!12267 b_and!12197 (not b_next!6939) (not b_next!6929) (not b_next!6937) (not b_next!6949) b_and!12271 (not b_next!6931) (not b_next!6955) b_and!12201 b_and!12205 b_and!12251 b_and!12253 (not b_next!6935) (not b_next!6933) b_and!12265)
