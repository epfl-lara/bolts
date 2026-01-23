; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42998 () Bool)

(assert start!42998)

(declare-fun b!453764 () Bool)

(declare-fun b_free!12625 () Bool)

(declare-fun b_next!12625 () Bool)

(assert (=> b!453764 (= b_free!12625 (not b_next!12625))))

(declare-fun tp!126165 () Bool)

(declare-fun b_and!48737 () Bool)

(assert (=> b!453764 (= tp!126165 b_and!48737)))

(declare-fun b_free!12627 () Bool)

(declare-fun b_next!12627 () Bool)

(assert (=> b!453764 (= b_free!12627 (not b_next!12627))))

(declare-fun tp!126169 () Bool)

(declare-fun b_and!48739 () Bool)

(assert (=> b!453764 (= tp!126169 b_and!48739)))

(declare-fun b!453774 () Bool)

(declare-fun b_free!12629 () Bool)

(declare-fun b_next!12629 () Bool)

(assert (=> b!453774 (= b_free!12629 (not b_next!12629))))

(declare-fun tp!126157 () Bool)

(declare-fun b_and!48741 () Bool)

(assert (=> b!453774 (= tp!126157 b_and!48741)))

(declare-fun b_free!12631 () Bool)

(declare-fun b_next!12631 () Bool)

(assert (=> b!453774 (= b_free!12631 (not b_next!12631))))

(declare-fun tp!126162 () Bool)

(declare-fun b_and!48743 () Bool)

(assert (=> b!453774 (= tp!126162 b_and!48743)))

(declare-fun b!453756 () Bool)

(declare-fun b_free!12633 () Bool)

(declare-fun b_next!12633 () Bool)

(assert (=> b!453756 (= b_free!12633 (not b_next!12633))))

(declare-fun tp!126160 () Bool)

(declare-fun b_and!48745 () Bool)

(assert (=> b!453756 (= tp!126160 b_and!48745)))

(declare-fun b_free!12635 () Bool)

(declare-fun b_next!12635 () Bool)

(assert (=> b!453756 (= b_free!12635 (not b_next!12635))))

(declare-fun tp!126163 () Bool)

(declare-fun b_and!48747 () Bool)

(assert (=> b!453756 (= tp!126163 b_and!48747)))

(declare-fun bs!56138 () Bool)

(declare-fun b!453779 () Bool)

(declare-fun b!453759 () Bool)

(assert (= bs!56138 (and b!453779 b!453759)))

(declare-fun lambda!13254 () Int)

(declare-fun lambda!13253 () Int)

(assert (=> bs!56138 (not (= lambda!13254 lambda!13253))))

(declare-fun b!453796 () Bool)

(declare-fun e!277604 () Bool)

(assert (=> b!453796 (= e!277604 true)))

(declare-fun b!453795 () Bool)

(declare-fun e!277603 () Bool)

(assert (=> b!453795 (= e!277603 e!277604)))

(declare-fun b!453794 () Bool)

(declare-fun e!277602 () Bool)

(assert (=> b!453794 (= e!277602 e!277603)))

(assert (=> b!453779 e!277602))

(assert (= b!453795 b!453796))

(assert (= b!453794 b!453795))

(declare-datatypes ((List!4414 0))(
  ( (Nil!4404) (Cons!4404 (h!9801 (_ BitVec 16)) (t!71106 List!4414)) )
))
(declare-datatypes ((TokenValue!877 0))(
  ( (FloatLiteralValue!1754 (text!6584 List!4414)) (TokenValueExt!876 (__x!3241 Int)) (Broken!4385 (value!28657 List!4414)) (Object!886) (End!877) (Def!877) (Underscore!877) (Match!877) (Else!877) (Error!877) (Case!877) (If!877) (Extends!877) (Abstract!877) (Class!877) (Val!877) (DelimiterValue!1754 (del!937 List!4414)) (KeywordValue!883 (value!28658 List!4414)) (CommentValue!1754 (value!28659 List!4414)) (WhitespaceValue!1754 (value!28660 List!4414)) (IndentationValue!877 (value!28661 List!4414)) (String!5464) (Int32!877) (Broken!4386 (value!28662 List!4414)) (Boolean!878) (Unit!7948) (OperatorValue!880 (op!937 List!4414)) (IdentifierValue!1754 (value!28663 List!4414)) (IdentifierValue!1755 (value!28664 List!4414)) (WhitespaceValue!1755 (value!28665 List!4414)) (True!1754) (False!1754) (Broken!4387 (value!28666 List!4414)) (Broken!4388 (value!28667 List!4414)) (True!1755) (RightBrace!877) (RightBracket!877) (Colon!877) (Null!877) (Comma!877) (LeftBracket!877) (False!1755) (LeftBrace!877) (ImaginaryLiteralValue!877 (text!6585 List!4414)) (StringLiteralValue!2631 (value!28668 List!4414)) (EOFValue!877 (value!28669 List!4414)) (IdentValue!877 (value!28670 List!4414)) (DelimiterValue!1755 (value!28671 List!4414)) (DedentValue!877 (value!28672 List!4414)) (NewLineValue!877 (value!28673 List!4414)) (IntegerValue!2631 (value!28674 (_ BitVec 32)) (text!6586 List!4414)) (IntegerValue!2632 (value!28675 Int) (text!6587 List!4414)) (Times!877) (Or!877) (Equal!877) (Minus!877) (Broken!4389 (value!28676 List!4414)) (And!877) (Div!877) (LessEqual!877) (Mod!877) (Concat!1956) (Not!877) (Plus!877) (SpaceValue!877 (value!28677 List!4414)) (IntegerValue!2633 (value!28678 Int) (text!6588 List!4414)) (StringLiteralValue!2632 (text!6589 List!4414)) (FloatLiteralValue!1755 (text!6590 List!4414)) (BytesLiteralValue!877 (value!28679 List!4414)) (CommentValue!1755 (value!28680 List!4414)) (StringLiteralValue!2633 (value!28681 List!4414)) (ErrorTokenValue!877 (msg!938 List!4414)) )
))
(declare-datatypes ((C!3080 0))(
  ( (C!3081 (val!1426 Int)) )
))
(declare-datatypes ((List!4415 0))(
  ( (Nil!4405) (Cons!4405 (h!9802 C!3080) (t!71107 List!4415)) )
))
(declare-datatypes ((IArray!3065 0))(
  ( (IArray!3066 (innerList!1590 List!4415)) )
))
(declare-datatypes ((Conc!1532 0))(
  ( (Node!1532 (left!3710 Conc!1532) (right!4040 Conc!1532) (csize!3294 Int) (cheight!1743 Int)) (Leaf!2299 (xs!4163 IArray!3065) (csize!3295 Int)) (Empty!1532) )
))
(declare-datatypes ((BalanceConc!3072 0))(
  ( (BalanceConc!3073 (c!91728 Conc!1532)) )
))
(declare-datatypes ((TokenValueInjection!1526 0))(
  ( (TokenValueInjection!1527 (toValue!1670 Int) (toChars!1529 Int)) )
))
(declare-datatypes ((String!5465 0))(
  ( (String!5466 (value!28682 String)) )
))
(declare-datatypes ((Regex!1079 0))(
  ( (ElementMatch!1079 (c!91729 C!3080)) (Concat!1957 (regOne!2670 Regex!1079) (regTwo!2670 Regex!1079)) (EmptyExpr!1079) (Star!1079 (reg!1408 Regex!1079)) (EmptyLang!1079) (Union!1079 (regOne!2671 Regex!1079) (regTwo!2671 Regex!1079)) )
))
(declare-datatypes ((Rule!1510 0))(
  ( (Rule!1511 (regex!855 Regex!1079) (tag!1115 String!5465) (isSeparator!855 Bool) (transformation!855 TokenValueInjection!1526)) )
))
(declare-datatypes ((List!4416 0))(
  ( (Nil!4406) (Cons!4406 (h!9803 Rule!1510) (t!71108 List!4416)) )
))
(declare-fun rules!1920 () List!4416)

(get-info :version)

(assert (= (and b!453779 ((_ is Cons!4406) rules!1920)) b!453794))

(declare-fun order!3881 () Int)

(declare-fun order!3883 () Int)

(declare-fun dynLambda!2662 (Int Int) Int)

(declare-fun dynLambda!2663 (Int Int) Int)

(assert (=> b!453796 (< (dynLambda!2662 order!3881 (toValue!1670 (transformation!855 (h!9803 rules!1920)))) (dynLambda!2663 order!3883 lambda!13254))))

(declare-fun order!3885 () Int)

(declare-fun dynLambda!2664 (Int Int) Int)

(assert (=> b!453796 (< (dynLambda!2664 order!3885 (toChars!1529 (transformation!855 (h!9803 rules!1920)))) (dynLambda!2663 order!3883 lambda!13254))))

(assert (=> b!453779 true))

(declare-fun b!453755 () Bool)

(declare-fun res!201666 () Bool)

(declare-fun e!277574 () Bool)

(assert (=> b!453755 (=> res!201666 e!277574)))

(declare-fun lt!201783 () List!4415)

(declare-datatypes ((LexerInterface!741 0))(
  ( (LexerInterfaceExt!738 (__x!3242 Int)) (Lexer!739) )
))
(declare-fun thiss!17480 () LexerInterface!741)

(declare-datatypes ((Token!1454 0))(
  ( (Token!1455 (value!28683 TokenValue!877) (rule!1546 Rule!1510) (size!3615 Int) (originalCharacters!898 List!4415)) )
))
(declare-datatypes ((List!4417 0))(
  ( (Nil!4407) (Cons!4407 (h!9804 Token!1454) (t!71109 List!4417)) )
))
(declare-datatypes ((IArray!3067 0))(
  ( (IArray!3068 (innerList!1591 List!4417)) )
))
(declare-datatypes ((Conc!1533 0))(
  ( (Node!1533 (left!3711 Conc!1533) (right!4041 Conc!1533) (csize!3296 Int) (cheight!1744 Int)) (Leaf!2300 (xs!4164 IArray!3067) (csize!3297 Int)) (Empty!1533) )
))
(declare-datatypes ((BalanceConc!3074 0))(
  ( (BalanceConc!3075 (c!91730 Conc!1533)) )
))
(declare-fun isEmpty!3369 (BalanceConc!3074) Bool)

(declare-datatypes ((tuple2!5346 0))(
  ( (tuple2!5347 (_1!2889 BalanceConc!3074) (_2!2889 BalanceConc!3072)) )
))
(declare-fun lex!533 (LexerInterface!741 List!4416 BalanceConc!3072) tuple2!5346)

(declare-fun seqFromList!1075 (List!4415) BalanceConc!3072)

(assert (=> b!453755 (= res!201666 (isEmpty!3369 (_1!2889 (lex!533 thiss!17480 rules!1920 (seqFromList!1075 lt!201783)))))))

(declare-fun e!277583 () Bool)

(assert (=> b!453756 (= e!277583 (and tp!126160 tp!126163))))

(declare-fun b!453757 () Bool)

(declare-fun e!277591 () Bool)

(declare-fun e!277586 () Bool)

(declare-fun tp!126161 () Bool)

(assert (=> b!453757 (= e!277591 (and e!277586 tp!126161))))

(declare-fun b!453758 () Bool)

(declare-fun res!201667 () Bool)

(declare-fun e!277589 () Bool)

(assert (=> b!453758 (=> (not res!201667) (not e!277589))))

(declare-fun sepAndNonSepRulesDisjointChars!444 (List!4416 List!4416) Bool)

(assert (=> b!453758 (= res!201667 (sepAndNonSepRulesDisjointChars!444 rules!1920 rules!1920))))

(declare-fun res!201672 () Bool)

(assert (=> b!453759 (=> (not res!201672) (not e!277589))))

(declare-fun tokens!465 () List!4417)

(declare-fun forall!1276 (List!4417 Int) Bool)

(assert (=> b!453759 (= res!201672 (forall!1276 tokens!465 lambda!13253))))

(declare-fun separatorToken!170 () Token!1454)

(declare-fun tp!126168 () Bool)

(declare-fun e!277592 () Bool)

(declare-fun b!453760 () Bool)

(declare-fun inv!5478 (String!5465) Bool)

(declare-fun inv!5481 (TokenValueInjection!1526) Bool)

(assert (=> b!453760 (= e!277592 (and tp!126168 (inv!5478 (tag!1115 (rule!1546 separatorToken!170))) (inv!5481 (transformation!855 (rule!1546 separatorToken!170))) e!277583))))

(declare-fun b!453761 () Bool)

(declare-fun res!201670 () Bool)

(assert (=> b!453761 (=> (not res!201670) (not e!277589))))

(declare-fun rulesProduceIndividualToken!490 (LexerInterface!741 List!4416 Token!1454) Bool)

(assert (=> b!453761 (= res!201670 (rulesProduceIndividualToken!490 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!277594 () Bool)

(declare-fun b!453762 () Bool)

(declare-fun tp!126164 () Bool)

(assert (=> b!453762 (= e!277586 (and tp!126164 (inv!5478 (tag!1115 (h!9803 rules!1920))) (inv!5481 (transformation!855 (h!9803 rules!1920))) e!277594))))

(declare-fun b!453763 () Bool)

(declare-fun res!201680 () Bool)

(declare-fun e!277581 () Bool)

(assert (=> b!453763 (=> (not res!201680) (not e!277581))))

(declare-fun lt!201779 () List!4415)

(declare-fun lt!201769 () List!4415)

(declare-fun list!1955 (BalanceConc!3072) List!4415)

(assert (=> b!453763 (= res!201680 (= (list!1955 (seqFromList!1075 lt!201779)) lt!201769))))

(declare-fun e!277575 () Bool)

(assert (=> b!453764 (= e!277575 (and tp!126165 tp!126169))))

(declare-fun b!453765 () Bool)

(declare-fun res!201665 () Bool)

(assert (=> b!453765 (=> (not res!201665) (not e!277589))))

(assert (=> b!453765 (= res!201665 ((_ is Cons!4407) tokens!465))))

(declare-fun b!453766 () Bool)

(declare-fun e!277588 () Bool)

(declare-fun e!277571 () Bool)

(assert (=> b!453766 (= e!277588 e!277571)))

(declare-fun res!201675 () Bool)

(assert (=> b!453766 (=> res!201675 e!277571)))

(declare-fun lt!201775 () Bool)

(assert (=> b!453766 (= res!201675 lt!201775)))

(declare-fun e!277584 () Bool)

(assert (=> b!453766 e!277584))

(declare-fun res!201664 () Bool)

(assert (=> b!453766 (=> (not res!201664) (not e!277584))))

(declare-datatypes ((tuple2!5348 0))(
  ( (tuple2!5349 (_1!2890 Token!1454) (_2!2890 List!4415)) )
))
(declare-fun lt!201782 () tuple2!5348)

(assert (=> b!453766 (= res!201664 (= (_1!2890 lt!201782) (h!9804 tokens!465)))))

(declare-datatypes ((Option!1142 0))(
  ( (None!1141) (Some!1141 (v!15462 tuple2!5348)) )
))
(declare-fun lt!201777 () Option!1142)

(declare-fun get!1612 (Option!1142) tuple2!5348)

(assert (=> b!453766 (= lt!201782 (get!1612 lt!201777))))

(declare-fun isDefined!981 (Option!1142) Bool)

(assert (=> b!453766 (isDefined!981 lt!201777)))

(declare-fun maxPrefix!457 (LexerInterface!741 List!4416 List!4415) Option!1142)

(assert (=> b!453766 (= lt!201777 (maxPrefix!457 thiss!17480 rules!1920 lt!201783))))

(declare-fun b!453767 () Bool)

(declare-fun res!201669 () Bool)

(assert (=> b!453767 (=> res!201669 e!277571)))

(declare-fun rulesProduceEachTokenIndividuallyList!317 (LexerInterface!741 List!4416 List!4417) Bool)

(assert (=> b!453767 (= res!201669 (not (rulesProduceEachTokenIndividuallyList!317 thiss!17480 rules!1920 tokens!465)))))

(declare-fun lt!201772 () List!4415)

(declare-fun b!453768 () Bool)

(declare-fun e!277572 () Bool)

(declare-fun ++!1280 (List!4415 List!4415) List!4415)

(assert (=> b!453768 (= e!277572 (not (= lt!201779 (++!1280 lt!201783 lt!201772))))))

(declare-fun res!201668 () Bool)

(declare-fun e!277595 () Bool)

(assert (=> start!42998 (=> (not res!201668) (not e!277595))))

(assert (=> start!42998 (= res!201668 ((_ is Lexer!739) thiss!17480))))

(assert (=> start!42998 e!277595))

(assert (=> start!42998 true))

(assert (=> start!42998 e!277591))

(declare-fun e!277587 () Bool)

(declare-fun inv!5482 (Token!1454) Bool)

(assert (=> start!42998 (and (inv!5482 separatorToken!170) e!277587)))

(declare-fun e!277590 () Bool)

(assert (=> start!42998 e!277590))

(declare-fun b!453754 () Bool)

(assert (=> b!453754 (= e!277595 e!277589)))

(declare-fun res!201663 () Bool)

(assert (=> b!453754 (=> (not res!201663) (not e!277589))))

(declare-fun lt!201776 () BalanceConc!3074)

(declare-fun rulesProduceEachTokenIndividually!533 (LexerInterface!741 List!4416 BalanceConc!3074) Bool)

(assert (=> b!453754 (= res!201663 (rulesProduceEachTokenIndividually!533 thiss!17480 rules!1920 lt!201776))))

(declare-fun seqFromList!1076 (List!4417) BalanceConc!3074)

(assert (=> b!453754 (= lt!201776 (seqFromList!1076 tokens!465))))

(declare-fun b!453769 () Bool)

(declare-fun res!201674 () Bool)

(assert (=> b!453769 (=> (not res!201674) (not e!277584))))

(declare-fun isEmpty!3370 (List!4415) Bool)

(assert (=> b!453769 (= res!201674 (isEmpty!3370 (_2!2890 lt!201782)))))

(declare-fun b!453770 () Bool)

(assert (=> b!453770 (= e!277571 (forall!1276 tokens!465 lambda!13253))))

(declare-fun b!453771 () Bool)

(declare-fun matchR!397 (Regex!1079 List!4415) Bool)

(assert (=> b!453771 (= e!277584 (matchR!397 (regex!855 (rule!1546 (h!9804 tokens!465))) lt!201783))))

(declare-fun e!277577 () Bool)

(declare-fun tp!126166 () Bool)

(declare-fun e!277580 () Bool)

(declare-fun b!453772 () Bool)

(declare-fun inv!21 (TokenValue!877) Bool)

(assert (=> b!453772 (= e!277577 (and (inv!21 (value!28683 (h!9804 tokens!465))) e!277580 tp!126166))))

(declare-fun b!453773 () Bool)

(declare-fun res!201662 () Bool)

(assert (=> b!453773 (=> (not res!201662) (not e!277589))))

(assert (=> b!453773 (= res!201662 (isSeparator!855 (rule!1546 separatorToken!170)))))

(assert (=> b!453774 (= e!277594 (and tp!126157 tp!126162))))

(declare-fun b!453775 () Bool)

(declare-fun res!201681 () Bool)

(assert (=> b!453775 (=> res!201681 e!277574)))

(assert (=> b!453775 (= res!201681 (not (rulesProduceIndividualToken!490 thiss!17480 rules!1920 (h!9804 tokens!465))))))

(declare-fun b!453776 () Bool)

(declare-fun res!201677 () Bool)

(assert (=> b!453776 (=> (not res!201677) (not e!277595))))

(declare-fun isEmpty!3371 (List!4416) Bool)

(assert (=> b!453776 (= res!201677 (not (isEmpty!3371 rules!1920)))))

(declare-fun tp!126159 () Bool)

(declare-fun b!453777 () Bool)

(assert (=> b!453777 (= e!277587 (and (inv!21 (value!28683 separatorToken!170)) e!277592 tp!126159))))

(declare-fun b!453778 () Bool)

(declare-fun res!201678 () Bool)

(assert (=> b!453778 (=> (not res!201678) (not e!277595))))

(declare-fun rulesInvariant!707 (LexerInterface!741 List!4416) Bool)

(assert (=> b!453778 (= res!201678 (rulesInvariant!707 thiss!17480 rules!1920))))

(assert (=> b!453779 (= e!277574 e!277588)))

(declare-fun res!201682 () Bool)

(assert (=> b!453779 (=> res!201682 e!277588)))

(declare-datatypes ((tuple2!5350 0))(
  ( (tuple2!5351 (_1!2891 Token!1454) (_2!2891 BalanceConc!3072)) )
))
(declare-datatypes ((Option!1143 0))(
  ( (None!1142) (Some!1142 (v!15463 tuple2!5350)) )
))
(declare-fun isDefined!982 (Option!1143) Bool)

(declare-fun maxPrefixZipperSequence!420 (LexerInterface!741 List!4416 BalanceConc!3072) Option!1143)

(assert (=> b!453779 (= res!201682 (not (isDefined!982 (maxPrefixZipperSequence!420 thiss!17480 rules!1920 (seqFromList!1075 (originalCharacters!898 (h!9804 tokens!465)))))))))

(declare-datatypes ((Unit!7949 0))(
  ( (Unit!7950) )
))
(declare-fun lt!201773 () Unit!7949)

(declare-fun forallContained!408 (List!4417 Int Token!1454) Unit!7949)

(assert (=> b!453779 (= lt!201773 (forallContained!408 tokens!465 lambda!13254 (h!9804 tokens!465)))))

(assert (=> b!453779 (= lt!201783 (originalCharacters!898 (h!9804 tokens!465)))))

(declare-fun b!453780 () Bool)

(assert (=> b!453780 (= e!277589 e!277581)))

(declare-fun res!201671 () Bool)

(assert (=> b!453780 (=> (not res!201671) (not e!277581))))

(assert (=> b!453780 (= res!201671 (= lt!201779 lt!201769))))

(declare-fun printWithSeparatorTokenWhenNeededRec!414 (LexerInterface!741 List!4416 BalanceConc!3074 Token!1454 Int) BalanceConc!3072)

(assert (=> b!453780 (= lt!201769 (list!1955 (printWithSeparatorTokenWhenNeededRec!414 thiss!17480 rules!1920 lt!201776 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!422 (LexerInterface!741 List!4416 List!4417 Token!1454) List!4415)

(assert (=> b!453780 (= lt!201779 (printWithSeparatorTokenWhenNeededList!422 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!453781 () Bool)

(declare-fun e!277579 () Bool)

(declare-fun e!277576 () Bool)

(assert (=> b!453781 (= e!277579 e!277576)))

(declare-fun res!201673 () Bool)

(assert (=> b!453781 (=> res!201673 e!277576)))

(assert (=> b!453781 (= res!201673 e!277572)))

(declare-fun res!201679 () Bool)

(assert (=> b!453781 (=> (not res!201679) (not e!277572))))

(assert (=> b!453781 (= res!201679 (not lt!201775))))

(declare-fun lt!201778 () List!4415)

(assert (=> b!453781 (= lt!201775 (= lt!201779 lt!201778))))

(declare-fun b!453782 () Bool)

(assert (=> b!453782 (= e!277581 (not e!277579))))

(declare-fun res!201676 () Bool)

(assert (=> b!453782 (=> res!201676 e!277579)))

(assert (=> b!453782 (= res!201676 (not (= lt!201772 (list!1955 (printWithSeparatorTokenWhenNeededRec!414 thiss!17480 rules!1920 (seqFromList!1076 (t!71109 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!201774 () List!4415)

(assert (=> b!453782 (= lt!201774 lt!201778)))

(declare-fun lt!201770 () List!4415)

(assert (=> b!453782 (= lt!201778 (++!1280 lt!201783 lt!201770))))

(declare-fun lt!201780 () List!4415)

(assert (=> b!453782 (= lt!201774 (++!1280 (++!1280 lt!201783 lt!201780) lt!201772))))

(declare-fun lt!201781 () Unit!7949)

(declare-fun lemmaConcatAssociativity!590 (List!4415 List!4415 List!4415) Unit!7949)

(assert (=> b!453782 (= lt!201781 (lemmaConcatAssociativity!590 lt!201783 lt!201780 lt!201772))))

(declare-fun charsOf!498 (Token!1454) BalanceConc!3072)

(assert (=> b!453782 (= lt!201783 (list!1955 (charsOf!498 (h!9804 tokens!465))))))

(assert (=> b!453782 (= lt!201770 (++!1280 lt!201780 lt!201772))))

(assert (=> b!453782 (= lt!201772 (printWithSeparatorTokenWhenNeededList!422 thiss!17480 rules!1920 (t!71109 tokens!465) separatorToken!170))))

(assert (=> b!453782 (= lt!201780 (list!1955 (charsOf!498 separatorToken!170)))))

(declare-fun b!453783 () Bool)

(declare-fun tp!126167 () Bool)

(assert (=> b!453783 (= e!277580 (and tp!126167 (inv!5478 (tag!1115 (rule!1546 (h!9804 tokens!465)))) (inv!5481 (transformation!855 (rule!1546 (h!9804 tokens!465)))) e!277575))))

(declare-fun tp!126158 () Bool)

(declare-fun b!453784 () Bool)

(assert (=> b!453784 (= e!277590 (and (inv!5482 (h!9804 tokens!465)) e!277577 tp!126158))))

(declare-fun b!453785 () Bool)

(assert (=> b!453785 (= e!277576 e!277574)))

(declare-fun res!201661 () Bool)

(assert (=> b!453785 (=> res!201661 e!277574)))

(declare-fun lt!201784 () List!4415)

(declare-fun lt!201786 () List!4415)

(assert (=> b!453785 (= res!201661 (or (not (= lt!201784 lt!201786)) (not (= lt!201786 lt!201783)) (not (= lt!201784 lt!201783))))))

(declare-fun printList!415 (LexerInterface!741 List!4417) List!4415)

(assert (=> b!453785 (= lt!201786 (printList!415 thiss!17480 (Cons!4407 (h!9804 tokens!465) Nil!4407)))))

(declare-fun lt!201785 () BalanceConc!3072)

(assert (=> b!453785 (= lt!201784 (list!1955 lt!201785))))

(declare-fun lt!201771 () BalanceConc!3074)

(declare-fun printTailRec!427 (LexerInterface!741 BalanceConc!3074 Int BalanceConc!3072) BalanceConc!3072)

(assert (=> b!453785 (= lt!201785 (printTailRec!427 thiss!17480 lt!201771 0 (BalanceConc!3073 Empty!1532)))))

(declare-fun print!466 (LexerInterface!741 BalanceConc!3074) BalanceConc!3072)

(assert (=> b!453785 (= lt!201785 (print!466 thiss!17480 lt!201771))))

(declare-fun singletonSeq!401 (Token!1454) BalanceConc!3074)

(assert (=> b!453785 (= lt!201771 (singletonSeq!401 (h!9804 tokens!465)))))

(assert (= (and start!42998 res!201668) b!453776))

(assert (= (and b!453776 res!201677) b!453778))

(assert (= (and b!453778 res!201678) b!453754))

(assert (= (and b!453754 res!201663) b!453761))

(assert (= (and b!453761 res!201670) b!453773))

(assert (= (and b!453773 res!201662) b!453759))

(assert (= (and b!453759 res!201672) b!453758))

(assert (= (and b!453758 res!201667) b!453765))

(assert (= (and b!453765 res!201665) b!453780))

(assert (= (and b!453780 res!201671) b!453763))

(assert (= (and b!453763 res!201680) b!453782))

(assert (= (and b!453782 (not res!201676)) b!453781))

(assert (= (and b!453781 res!201679) b!453768))

(assert (= (and b!453781 (not res!201673)) b!453785))

(assert (= (and b!453785 (not res!201661)) b!453775))

(assert (= (and b!453775 (not res!201681)) b!453755))

(assert (= (and b!453755 (not res!201666)) b!453779))

(assert (= (and b!453779 (not res!201682)) b!453766))

(assert (= (and b!453766 res!201664) b!453769))

(assert (= (and b!453769 res!201674) b!453771))

(assert (= (and b!453766 (not res!201675)) b!453767))

(assert (= (and b!453767 (not res!201669)) b!453770))

(assert (= b!453762 b!453774))

(assert (= b!453757 b!453762))

(assert (= (and start!42998 ((_ is Cons!4406) rules!1920)) b!453757))

(assert (= b!453760 b!453756))

(assert (= b!453777 b!453760))

(assert (= start!42998 b!453777))

(assert (= b!453783 b!453764))

(assert (= b!453772 b!453783))

(assert (= b!453784 b!453772))

(assert (= (and start!42998 ((_ is Cons!4407) tokens!465)) b!453784))

(declare-fun m!717941 () Bool)

(assert (=> b!453761 m!717941))

(declare-fun m!717943 () Bool)

(assert (=> b!453766 m!717943))

(declare-fun m!717945 () Bool)

(assert (=> b!453766 m!717945))

(declare-fun m!717947 () Bool)

(assert (=> b!453766 m!717947))

(declare-fun m!717949 () Bool)

(assert (=> b!453762 m!717949))

(declare-fun m!717951 () Bool)

(assert (=> b!453762 m!717951))

(declare-fun m!717953 () Bool)

(assert (=> b!453772 m!717953))

(declare-fun m!717955 () Bool)

(assert (=> b!453770 m!717955))

(declare-fun m!717957 () Bool)

(assert (=> b!453758 m!717957))

(declare-fun m!717959 () Bool)

(assert (=> b!453771 m!717959))

(declare-fun m!717961 () Bool)

(assert (=> b!453763 m!717961))

(assert (=> b!453763 m!717961))

(declare-fun m!717963 () Bool)

(assert (=> b!453763 m!717963))

(declare-fun m!717965 () Bool)

(assert (=> b!453782 m!717965))

(declare-fun m!717967 () Bool)

(assert (=> b!453782 m!717967))

(declare-fun m!717969 () Bool)

(assert (=> b!453782 m!717969))

(declare-fun m!717971 () Bool)

(assert (=> b!453782 m!717971))

(assert (=> b!453782 m!717969))

(declare-fun m!717973 () Bool)

(assert (=> b!453782 m!717973))

(declare-fun m!717975 () Bool)

(assert (=> b!453782 m!717975))

(declare-fun m!717977 () Bool)

(assert (=> b!453782 m!717977))

(declare-fun m!717979 () Bool)

(assert (=> b!453782 m!717979))

(assert (=> b!453782 m!717973))

(declare-fun m!717981 () Bool)

(assert (=> b!453782 m!717981))

(assert (=> b!453782 m!717977))

(declare-fun m!717983 () Bool)

(assert (=> b!453782 m!717983))

(declare-fun m!717985 () Bool)

(assert (=> b!453782 m!717985))

(declare-fun m!717987 () Bool)

(assert (=> b!453782 m!717987))

(declare-fun m!717989 () Bool)

(assert (=> b!453782 m!717989))

(assert (=> b!453782 m!717965))

(assert (=> b!453782 m!717985))

(declare-fun m!717991 () Bool)

(assert (=> b!453777 m!717991))

(declare-fun m!717993 () Bool)

(assert (=> b!453755 m!717993))

(assert (=> b!453755 m!717993))

(declare-fun m!717995 () Bool)

(assert (=> b!453755 m!717995))

(declare-fun m!717997 () Bool)

(assert (=> b!453755 m!717997))

(declare-fun m!717999 () Bool)

(assert (=> b!453767 m!717999))

(declare-fun m!718001 () Bool)

(assert (=> b!453783 m!718001))

(declare-fun m!718003 () Bool)

(assert (=> b!453783 m!718003))

(declare-fun m!718005 () Bool)

(assert (=> b!453780 m!718005))

(assert (=> b!453780 m!718005))

(declare-fun m!718007 () Bool)

(assert (=> b!453780 m!718007))

(declare-fun m!718009 () Bool)

(assert (=> b!453780 m!718009))

(declare-fun m!718011 () Bool)

(assert (=> start!42998 m!718011))

(assert (=> b!453759 m!717955))

(declare-fun m!718013 () Bool)

(assert (=> b!453768 m!718013))

(declare-fun m!718015 () Bool)

(assert (=> b!453776 m!718015))

(declare-fun m!718017 () Bool)

(assert (=> b!453760 m!718017))

(declare-fun m!718019 () Bool)

(assert (=> b!453760 m!718019))

(declare-fun m!718021 () Bool)

(assert (=> b!453778 m!718021))

(declare-fun m!718023 () Bool)

(assert (=> b!453775 m!718023))

(declare-fun m!718025 () Bool)

(assert (=> b!453769 m!718025))

(declare-fun m!718027 () Bool)

(assert (=> b!453754 m!718027))

(declare-fun m!718029 () Bool)

(assert (=> b!453754 m!718029))

(declare-fun m!718031 () Bool)

(assert (=> b!453779 m!718031))

(assert (=> b!453779 m!718031))

(declare-fun m!718033 () Bool)

(assert (=> b!453779 m!718033))

(assert (=> b!453779 m!718033))

(declare-fun m!718035 () Bool)

(assert (=> b!453779 m!718035))

(declare-fun m!718037 () Bool)

(assert (=> b!453779 m!718037))

(declare-fun m!718039 () Bool)

(assert (=> b!453785 m!718039))

(declare-fun m!718041 () Bool)

(assert (=> b!453785 m!718041))

(declare-fun m!718043 () Bool)

(assert (=> b!453785 m!718043))

(declare-fun m!718045 () Bool)

(assert (=> b!453785 m!718045))

(declare-fun m!718047 () Bool)

(assert (=> b!453785 m!718047))

(declare-fun m!718049 () Bool)

(assert (=> b!453784 m!718049))

(check-sat (not b!453755) (not b_next!12629) (not b!453775) (not b!453763) (not b!453779) (not b!453770) (not b!453794) (not b!453758) b_and!48743 (not b!453772) (not b!453777) (not b_next!12633) (not b!453754) (not start!42998) b_and!48739 (not b_next!12631) (not b!453780) (not b_next!12627) (not b!453762) (not b_next!12635) (not b!453760) (not b!453769) b_and!48745 (not b!453768) (not b!453767) (not b!453784) b_and!48747 b_and!48741 (not b!453761) (not b!453783) (not b!453778) (not b!453757) (not b_next!12625) b_and!48737 (not b!453766) (not b!453771) (not b!453776) (not b!453785) (not b!453782) (not b!453759))
(check-sat (not b_next!12633) (not b_next!12627) (not b_next!12635) b_and!48745 b_and!48747 b_and!48741 (not b_next!12629) b_and!48743 b_and!48739 (not b_next!12631) (not b_next!12625) b_and!48737)
