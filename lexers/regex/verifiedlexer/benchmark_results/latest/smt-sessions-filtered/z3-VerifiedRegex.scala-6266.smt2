; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!308602 () Bool)

(assert start!308602)

(declare-fun b!3309727 () Bool)

(declare-fun b_free!87177 () Bool)

(declare-fun b_next!87881 () Bool)

(assert (=> b!3309727 (= b_free!87177 (not b_next!87881))))

(declare-fun tp!1036603 () Bool)

(declare-fun b_and!227143 () Bool)

(assert (=> b!3309727 (= tp!1036603 b_and!227143)))

(declare-fun b_free!87179 () Bool)

(declare-fun b_next!87883 () Bool)

(assert (=> b!3309727 (= b_free!87179 (not b_next!87883))))

(declare-fun tp!1036594 () Bool)

(declare-fun b_and!227145 () Bool)

(assert (=> b!3309727 (= tp!1036594 b_and!227145)))

(declare-fun b!3309723 () Bool)

(declare-fun b_free!87181 () Bool)

(declare-fun b_next!87885 () Bool)

(assert (=> b!3309723 (= b_free!87181 (not b_next!87885))))

(declare-fun tp!1036596 () Bool)

(declare-fun b_and!227147 () Bool)

(assert (=> b!3309723 (= tp!1036596 b_and!227147)))

(declare-fun b_free!87183 () Bool)

(declare-fun b_next!87887 () Bool)

(assert (=> b!3309723 (= b_free!87183 (not b_next!87887))))

(declare-fun tp!1036599 () Bool)

(declare-fun b_and!227149 () Bool)

(assert (=> b!3309723 (= tp!1036599 b_and!227149)))

(declare-fun b!3309706 () Bool)

(declare-fun b_free!87185 () Bool)

(declare-fun b_next!87889 () Bool)

(assert (=> b!3309706 (= b_free!87185 (not b_next!87889))))

(declare-fun tp!1036601 () Bool)

(declare-fun b_and!227151 () Bool)

(assert (=> b!3309706 (= tp!1036601 b_and!227151)))

(declare-fun b_free!87187 () Bool)

(declare-fun b_next!87891 () Bool)

(assert (=> b!3309706 (= b_free!87187 (not b_next!87891))))

(declare-fun tp!1036597 () Bool)

(declare-fun b_and!227153 () Bool)

(assert (=> b!3309706 (= tp!1036597 b_and!227153)))

(declare-fun bs!549293 () Bool)

(declare-fun b!3309730 () Bool)

(declare-fun b!3309715 () Bool)

(assert (= bs!549293 (and b!3309730 b!3309715)))

(declare-fun lambda!119227 () Int)

(declare-fun lambda!119226 () Int)

(assert (=> bs!549293 (not (= lambda!119227 lambda!119226))))

(declare-fun b!3309752 () Bool)

(declare-fun e!2058680 () Bool)

(assert (=> b!3309752 (= e!2058680 true)))

(declare-fun b!3309751 () Bool)

(declare-fun e!2058679 () Bool)

(assert (=> b!3309751 (= e!2058679 e!2058680)))

(declare-fun b!3309750 () Bool)

(declare-fun e!2058678 () Bool)

(assert (=> b!3309750 (= e!2058678 e!2058679)))

(assert (=> b!3309730 e!2058678))

(assert (= b!3309751 b!3309752))

(assert (= b!3309750 b!3309751))

(declare-datatypes ((C!20328 0))(
  ( (C!20329 (val!12212 Int)) )
))
(declare-datatypes ((Regex!10071 0))(
  ( (ElementMatch!10071 (c!561260 C!20328)) (Concat!15613 (regOne!20654 Regex!10071) (regTwo!20654 Regex!10071)) (EmptyExpr!10071) (Star!10071 (reg!10400 Regex!10071)) (EmptyLang!10071) (Union!10071 (regOne!20655 Regex!10071) (regTwo!20655 Regex!10071)) )
))
(declare-datatypes ((List!36698 0))(
  ( (Nil!36574) (Cons!36574 (h!41994 (_ BitVec 16)) (t!254163 List!36698)) )
))
(declare-datatypes ((TokenValue!5542 0))(
  ( (FloatLiteralValue!11084 (text!39239 List!36698)) (TokenValueExt!5541 (__x!23301 Int)) (Broken!27710 (value!171826 List!36698)) (Object!5665) (End!5542) (Def!5542) (Underscore!5542) (Match!5542) (Else!5542) (Error!5542) (Case!5542) (If!5542) (Extends!5542) (Abstract!5542) (Class!5542) (Val!5542) (DelimiterValue!11084 (del!5602 List!36698)) (KeywordValue!5548 (value!171827 List!36698)) (CommentValue!11084 (value!171828 List!36698)) (WhitespaceValue!11084 (value!171829 List!36698)) (IndentationValue!5542 (value!171830 List!36698)) (String!41043) (Int32!5542) (Broken!27711 (value!171831 List!36698)) (Boolean!5543) (Unit!51487) (OperatorValue!5545 (op!5602 List!36698)) (IdentifierValue!11084 (value!171832 List!36698)) (IdentifierValue!11085 (value!171833 List!36698)) (WhitespaceValue!11085 (value!171834 List!36698)) (True!11084) (False!11084) (Broken!27712 (value!171835 List!36698)) (Broken!27713 (value!171836 List!36698)) (True!11085) (RightBrace!5542) (RightBracket!5542) (Colon!5542) (Null!5542) (Comma!5542) (LeftBracket!5542) (False!11085) (LeftBrace!5542) (ImaginaryLiteralValue!5542 (text!39240 List!36698)) (StringLiteralValue!16626 (value!171837 List!36698)) (EOFValue!5542 (value!171838 List!36698)) (IdentValue!5542 (value!171839 List!36698)) (DelimiterValue!11085 (value!171840 List!36698)) (DedentValue!5542 (value!171841 List!36698)) (NewLineValue!5542 (value!171842 List!36698)) (IntegerValue!16626 (value!171843 (_ BitVec 32)) (text!39241 List!36698)) (IntegerValue!16627 (value!171844 Int) (text!39242 List!36698)) (Times!5542) (Or!5542) (Equal!5542) (Minus!5542) (Broken!27714 (value!171845 List!36698)) (And!5542) (Div!5542) (LessEqual!5542) (Mod!5542) (Concat!15614) (Not!5542) (Plus!5542) (SpaceValue!5542 (value!171846 List!36698)) (IntegerValue!16628 (value!171847 Int) (text!39243 List!36698)) (StringLiteralValue!16627 (text!39244 List!36698)) (FloatLiteralValue!11085 (text!39245 List!36698)) (BytesLiteralValue!5542 (value!171848 List!36698)) (CommentValue!11085 (value!171849 List!36698)) (StringLiteralValue!16628 (value!171850 List!36698)) (ErrorTokenValue!5542 (msg!5603 List!36698)) )
))
(declare-datatypes ((List!36699 0))(
  ( (Nil!36575) (Cons!36575 (h!41995 C!20328) (t!254164 List!36699)) )
))
(declare-datatypes ((IArray!22003 0))(
  ( (IArray!22004 (innerList!11059 List!36699)) )
))
(declare-datatypes ((Conc!10999 0))(
  ( (Node!10999 (left!28497 Conc!10999) (right!28827 Conc!10999) (csize!22228 Int) (cheight!11210 Int)) (Leaf!17266 (xs!14137 IArray!22003) (csize!22229 Int)) (Empty!10999) )
))
(declare-datatypes ((BalanceConc!21612 0))(
  ( (BalanceConc!21613 (c!561261 Conc!10999)) )
))
(declare-datatypes ((String!41044 0))(
  ( (String!41045 (value!171851 String)) )
))
(declare-datatypes ((TokenValueInjection!10512 0))(
  ( (TokenValueInjection!10513 (toValue!7456 Int) (toChars!7315 Int)) )
))
(declare-datatypes ((Rule!10424 0))(
  ( (Rule!10425 (regex!5312 Regex!10071) (tag!5858 String!41044) (isSeparator!5312 Bool) (transformation!5312 TokenValueInjection!10512)) )
))
(declare-datatypes ((List!36700 0))(
  ( (Nil!36576) (Cons!36576 (h!41996 Rule!10424) (t!254165 List!36700)) )
))
(declare-fun rules!2135 () List!36700)

(get-info :version)

(assert (= (and b!3309730 ((_ is Cons!36576) rules!2135)) b!3309750))

(declare-fun order!19041 () Int)

(declare-fun order!19043 () Int)

(declare-fun dynLambda!15016 (Int Int) Int)

(declare-fun dynLambda!15017 (Int Int) Int)

(assert (=> b!3309752 (< (dynLambda!15016 order!19041 (toValue!7456 (transformation!5312 (h!41996 rules!2135)))) (dynLambda!15017 order!19043 lambda!119227))))

(declare-fun order!19045 () Int)

(declare-fun dynLambda!15018 (Int Int) Int)

(assert (=> b!3309752 (< (dynLambda!15018 order!19045 (toChars!7315 (transformation!5312 (h!41996 rules!2135)))) (dynLambda!15017 order!19043 lambda!119227))))

(assert (=> b!3309730 true))

(declare-fun b!3309702 () Bool)

(declare-fun e!2058662 () Bool)

(declare-fun e!2058670 () Bool)

(assert (=> b!3309702 (= e!2058662 e!2058670)))

(declare-fun res!1342507 () Bool)

(assert (=> b!3309702 (=> res!1342507 e!2058670)))

(declare-fun lt!1122125 () List!36699)

(declare-fun lt!1122101 () List!36699)

(declare-fun lt!1122106 () List!36699)

(assert (=> b!3309702 (= res!1342507 (or (not (= lt!1122106 lt!1122125)) (not (= lt!1122101 lt!1122125))))))

(declare-datatypes ((Token!9990 0))(
  ( (Token!9991 (value!171852 TokenValue!5542) (rule!7816 Rule!10424) (size!27625 Int) (originalCharacters!6026 List!36699)) )
))
(declare-datatypes ((List!36701 0))(
  ( (Nil!36577) (Cons!36577 (h!41997 Token!9990) (t!254166 List!36701)) )
))
(declare-fun tokens!494 () List!36701)

(declare-fun list!13131 (BalanceConc!21612) List!36699)

(declare-fun charsOf!3328 (Token!9990) BalanceConc!21612)

(assert (=> b!3309702 (= lt!1122125 (list!13131 (charsOf!3328 (h!41997 tokens!494))))))

(declare-fun separatorToken!241 () Token!9990)

(declare-fun e!2058639 () Bool)

(declare-fun e!2058659 () Bool)

(declare-fun b!3309703 () Bool)

(declare-fun tp!1036605 () Bool)

(declare-fun inv!49547 (String!41044) Bool)

(declare-fun inv!49550 (TokenValueInjection!10512) Bool)

(assert (=> b!3309703 (= e!2058659 (and tp!1036605 (inv!49547 (tag!5858 (rule!7816 separatorToken!241))) (inv!49550 (transformation!5312 (rule!7816 separatorToken!241))) e!2058639))))

(declare-fun b!3309704 () Bool)

(declare-fun res!1342493 () Bool)

(declare-fun e!2058664 () Bool)

(assert (=> b!3309704 (=> (not res!1342493) (not e!2058664))))

(assert (=> b!3309704 (= res!1342493 (isSeparator!5312 (rule!7816 separatorToken!241)))))

(declare-fun b!3309705 () Bool)

(declare-fun e!2058651 () Bool)

(declare-datatypes ((IArray!22005 0))(
  ( (IArray!22006 (innerList!11060 List!36701)) )
))
(declare-datatypes ((Conc!11000 0))(
  ( (Node!11000 (left!28498 Conc!11000) (right!28828 Conc!11000) (csize!22230 Int) (cheight!11211 Int)) (Leaf!17267 (xs!14138 IArray!22005) (csize!22231 Int)) (Empty!11000) )
))
(declare-datatypes ((BalanceConc!21614 0))(
  ( (BalanceConc!21615 (c!561262 Conc!11000)) )
))
(declare-datatypes ((tuple2!36052 0))(
  ( (tuple2!36053 (_1!21160 BalanceConc!21614) (_2!21160 BalanceConc!21612)) )
))
(declare-fun lt!1122097 () tuple2!36052)

(declare-fun isEmpty!20713 (BalanceConc!21612) Bool)

(assert (=> b!3309705 (= e!2058651 (isEmpty!20713 (_2!21160 lt!1122097)))))

(declare-fun e!2058640 () Bool)

(assert (=> b!3309706 (= e!2058640 (and tp!1036601 tp!1036597))))

(declare-fun b!3309707 () Bool)

(declare-fun e!2058643 () Bool)

(declare-fun e!2058671 () Bool)

(declare-fun tp!1036604 () Bool)

(assert (=> b!3309707 (= e!2058643 (and e!2058671 tp!1036604))))

(declare-fun b!3309708 () Bool)

(declare-fun tp!1036595 () Bool)

(assert (=> b!3309708 (= e!2058671 (and tp!1036595 (inv!49547 (tag!5858 (h!41996 rules!2135))) (inv!49550 (transformation!5312 (h!41996 rules!2135))) e!2058640))))

(declare-fun b!3309709 () Bool)

(declare-datatypes ((Unit!51488 0))(
  ( (Unit!51489) )
))
(declare-fun e!2058642 () Unit!51488)

(declare-fun Unit!51490 () Unit!51488)

(assert (=> b!3309709 (= e!2058642 Unit!51490)))

(declare-fun lt!1122103 () C!20328)

(declare-fun lt!1122111 () Unit!51488)

(declare-fun lt!1122110 () List!36699)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!438 (Regex!10071 List!36699 C!20328) Unit!51488)

(assert (=> b!3309709 (= lt!1122111 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!438 (regex!5312 (rule!7816 separatorToken!241)) lt!1122110 lt!1122103))))

(declare-fun res!1342508 () Bool)

(declare-fun matchR!4673 (Regex!10071 List!36699) Bool)

(assert (=> b!3309709 (= res!1342508 (not (matchR!4673 (regex!5312 (rule!7816 separatorToken!241)) lt!1122110)))))

(declare-fun e!2058655 () Bool)

(assert (=> b!3309709 (=> (not res!1342508) (not e!2058655))))

(assert (=> b!3309709 e!2058655))

(declare-fun b!3309710 () Bool)

(declare-fun e!2058666 () Bool)

(declare-fun e!2058657 () Bool)

(assert (=> b!3309710 (= e!2058666 e!2058657)))

(declare-fun res!1342505 () Bool)

(assert (=> b!3309710 (=> res!1342505 e!2058657)))

(declare-fun lt!1122113 () List!36699)

(declare-datatypes ((LexerInterface!4901 0))(
  ( (LexerInterfaceExt!4898 (__x!23302 Int)) (Lexer!4899) )
))
(declare-fun thiss!18206 () LexerInterface!4901)

(declare-fun lt!1122102 () List!36699)

(declare-fun ++!8865 (List!36699 List!36699) List!36699)

(declare-fun printWithSeparatorTokenList!212 (LexerInterface!4901 List!36701 Token!9990) List!36699)

(assert (=> b!3309710 (= res!1342505 (not (= lt!1122113 (++!8865 (++!8865 lt!1122102 lt!1122110) (printWithSeparatorTokenList!212 thiss!18206 (t!254166 (t!254166 tokens!494)) separatorToken!241)))))))

(assert (=> b!3309710 (= lt!1122102 (list!13131 (charsOf!3328 (h!41997 (t!254166 tokens!494)))))))

(declare-fun lt!1122133 () List!36699)

(assert (=> b!3309710 (= lt!1122133 (++!8865 lt!1122110 lt!1122113))))

(assert (=> b!3309710 (= lt!1122110 (list!13131 (charsOf!3328 separatorToken!241)))))

(assert (=> b!3309710 (= lt!1122113 (printWithSeparatorTokenList!212 thiss!18206 (t!254166 tokens!494) separatorToken!241))))

(declare-fun lt!1122127 () List!36699)

(assert (=> b!3309710 (= lt!1122127 (printWithSeparatorTokenList!212 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3309711 () Bool)

(declare-fun res!1342504 () Bool)

(assert (=> b!3309711 (=> (not res!1342504) (not e!2058651))))

(declare-fun apply!8410 (BalanceConc!21614 Int) Token!9990)

(assert (=> b!3309711 (= res!1342504 (= (apply!8410 (_1!21160 lt!1122097) 0) separatorToken!241))))

(declare-fun b!3309712 () Bool)

(declare-fun res!1342496 () Bool)

(assert (=> b!3309712 (=> (not res!1342496) (not e!2058664))))

(declare-fun rulesInvariant!4298 (LexerInterface!4901 List!36700) Bool)

(assert (=> b!3309712 (= res!1342496 (rulesInvariant!4298 thiss!18206 rules!2135))))

(declare-fun b!3309713 () Bool)

(declare-fun e!2058650 () Bool)

(declare-fun e!2058669 () Bool)

(assert (=> b!3309713 (= e!2058650 e!2058669)))

(declare-fun res!1342494 () Bool)

(assert (=> b!3309713 (=> (not res!1342494) (not e!2058669))))

(declare-fun lt!1122130 () Rule!10424)

(assert (=> b!3309713 (= res!1342494 (matchR!4673 (regex!5312 lt!1122130) lt!1122102))))

(declare-datatypes ((Option!7283 0))(
  ( (None!7282) (Some!7282 (v!36078 Rule!10424)) )
))
(declare-fun lt!1122096 () Option!7283)

(declare-fun get!11653 (Option!7283) Rule!10424)

(assert (=> b!3309713 (= lt!1122130 (get!11653 lt!1122096))))

(declare-fun b!3309714 () Bool)

(declare-fun res!1342503 () Bool)

(assert (=> b!3309714 (=> (not res!1342503) (not e!2058664))))

(declare-fun rulesProduceEachTokenIndividually!1352 (LexerInterface!4901 List!36700 BalanceConc!21614) Bool)

(declare-fun seqFromList!3679 (List!36701) BalanceConc!21614)

(assert (=> b!3309714 (= res!1342503 (rulesProduceEachTokenIndividually!1352 thiss!18206 rules!2135 (seqFromList!3679 tokens!494)))))

(declare-fun res!1342499 () Bool)

(assert (=> b!3309715 (=> (not res!1342499) (not e!2058664))))

(declare-fun forall!7597 (List!36701 Int) Bool)

(assert (=> b!3309715 (= res!1342499 (forall!7597 tokens!494 lambda!119226))))

(declare-fun b!3309716 () Bool)

(declare-fun e!2058653 () Bool)

(assert (=> b!3309716 (= e!2058657 e!2058653)))

(declare-fun res!1342500 () Bool)

(assert (=> b!3309716 (=> res!1342500 e!2058653)))

(declare-fun lt!1122132 () List!36699)

(assert (=> b!3309716 (= res!1342500 (not (= lt!1122127 lt!1122132)))))

(assert (=> b!3309716 (= lt!1122132 (++!8865 (++!8865 lt!1122125 lt!1122110) lt!1122113))))

(declare-fun b!3309717 () Bool)

(declare-fun e!2058645 () Bool)

(declare-fun lt!1122105 () Rule!10424)

(assert (=> b!3309717 (= e!2058645 (= (rule!7816 separatorToken!241) lt!1122105))))

(declare-fun b!3309718 () Bool)

(declare-fun e!2058661 () Bool)

(declare-fun lt!1122114 () tuple2!36052)

(assert (=> b!3309718 (= e!2058661 (not (isEmpty!20713 (_2!21160 lt!1122114))))))

(declare-fun e!2058652 () Bool)

(declare-fun tp!1036600 () Bool)

(declare-fun b!3309719 () Bool)

(declare-fun inv!21 (TokenValue!5542) Bool)

(assert (=> b!3309719 (= e!2058652 (and (inv!21 (value!171852 separatorToken!241)) e!2058659 tp!1036600))))

(declare-fun b!3309720 () Bool)

(declare-fun res!1342511 () Bool)

(assert (=> b!3309720 (=> (not res!1342511) (not e!2058664))))

(assert (=> b!3309720 (= res!1342511 (and (not ((_ is Nil!36577) tokens!494)) (not ((_ is Nil!36577) (t!254166 tokens!494)))))))

(declare-fun b!3309721 () Bool)

(declare-fun Unit!51491 () Unit!51488)

(assert (=> b!3309721 (= e!2058642 Unit!51491)))

(declare-fun b!3309722 () Bool)

(declare-fun e!2058665 () Bool)

(assert (=> b!3309722 (= e!2058665 e!2058666)))

(declare-fun res!1342492 () Bool)

(assert (=> b!3309722 (=> res!1342492 e!2058666)))

(assert (=> b!3309722 (= res!1342492 (or (isSeparator!5312 (rule!7816 (h!41997 tokens!494))) (isSeparator!5312 (rule!7816 (h!41997 (t!254166 tokens!494))))))))

(declare-fun lt!1122129 () Unit!51488)

(declare-fun forallContained!1263 (List!36701 Int Token!9990) Unit!51488)

(assert (=> b!3309722 (= lt!1122129 (forallContained!1263 tokens!494 lambda!119226 (h!41997 (t!254166 tokens!494))))))

(declare-fun lt!1122128 () Unit!51488)

(assert (=> b!3309722 (= lt!1122128 (forallContained!1263 tokens!494 lambda!119226 (h!41997 tokens!494)))))

(declare-fun e!2058646 () Bool)

(assert (=> b!3309723 (= e!2058646 (and tp!1036596 tp!1036599))))

(declare-fun b!3309724 () Bool)

(assert (=> b!3309724 (= e!2058664 (not e!2058662))))

(declare-fun res!1342491 () Bool)

(assert (=> b!3309724 (=> res!1342491 e!2058662)))

(assert (=> b!3309724 (= res!1342491 (not (= lt!1122101 lt!1122106)))))

(declare-fun printList!1451 (LexerInterface!4901 List!36701) List!36699)

(assert (=> b!3309724 (= lt!1122106 (printList!1451 thiss!18206 (Cons!36577 (h!41997 tokens!494) Nil!36577)))))

(declare-fun lt!1122095 () BalanceConc!21612)

(assert (=> b!3309724 (= lt!1122101 (list!13131 lt!1122095))))

(declare-fun lt!1122099 () BalanceConc!21614)

(declare-fun printTailRec!1398 (LexerInterface!4901 BalanceConc!21614 Int BalanceConc!21612) BalanceConc!21612)

(assert (=> b!3309724 (= lt!1122095 (printTailRec!1398 thiss!18206 lt!1122099 0 (BalanceConc!21613 Empty!10999)))))

(declare-fun print!1966 (LexerInterface!4901 BalanceConc!21614) BalanceConc!21612)

(assert (=> b!3309724 (= lt!1122095 (print!1966 thiss!18206 lt!1122099))))

(declare-fun singletonSeq!2408 (Token!9990) BalanceConc!21614)

(assert (=> b!3309724 (= lt!1122099 (singletonSeq!2408 (h!41997 tokens!494)))))

(declare-fun b!3309725 () Bool)

(declare-fun tp!1036602 () Bool)

(declare-fun e!2058668 () Bool)

(declare-fun e!2058658 () Bool)

(assert (=> b!3309725 (= e!2058658 (and (inv!21 (value!171852 (h!41997 tokens!494))) e!2058668 tp!1036602))))

(declare-fun b!3309726 () Bool)

(declare-fun e!2058649 () Bool)

(assert (=> b!3309726 (= e!2058653 e!2058649)))

(declare-fun res!1342490 () Bool)

(assert (=> b!3309726 (=> res!1342490 e!2058649)))

(declare-fun lt!1122109 () List!36699)

(assert (=> b!3309726 (= res!1342490 (not (= lt!1122127 lt!1122109)))))

(assert (=> b!3309726 (= lt!1122132 lt!1122109)))

(assert (=> b!3309726 (= lt!1122109 (++!8865 lt!1122125 lt!1122133))))

(declare-fun lt!1122117 () Unit!51488)

(declare-fun lemmaConcatAssociativity!1830 (List!36699 List!36699 List!36699) Unit!51488)

(assert (=> b!3309726 (= lt!1122117 (lemmaConcatAssociativity!1830 lt!1122125 lt!1122110 lt!1122113))))

(assert (=> b!3309727 (= e!2058639 (and tp!1036603 tp!1036594))))

(declare-fun b!3309728 () Bool)

(declare-fun res!1342513 () Bool)

(assert (=> b!3309728 (=> res!1342513 e!2058661)))

(assert (=> b!3309728 (= res!1342513 (not (= (apply!8410 (_1!21160 lt!1122114) 0) (h!41997 (t!254166 tokens!494)))))))

(declare-fun b!3309729 () Bool)

(assert (=> b!3309729 (= e!2058655 false)))

(assert (=> b!3309730 (= e!2058649 true)))

(assert (=> b!3309730 e!2058650))

(declare-fun res!1342502 () Bool)

(assert (=> b!3309730 (=> (not res!1342502) (not e!2058650))))

(declare-fun isDefined!5640 (Option!7283) Bool)

(assert (=> b!3309730 (= res!1342502 (isDefined!5640 lt!1122096))))

(declare-fun getRuleFromTag!983 (LexerInterface!4901 List!36700 String!41044) Option!7283)

(assert (=> b!3309730 (= lt!1122096 (getRuleFromTag!983 thiss!18206 rules!2135 (tag!5858 (rule!7816 (h!41997 (t!254166 tokens!494))))))))

(declare-fun lt!1122135 () Unit!51488)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!983 (LexerInterface!4901 List!36700 List!36699 Token!9990) Unit!51488)

(assert (=> b!3309730 (= lt!1122135 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!983 thiss!18206 rules!2135 lt!1122102 (h!41997 (t!254166 tokens!494))))))

(declare-fun lt!1122123 () Bool)

(assert (=> b!3309730 lt!1122123))

(declare-fun lt!1122112 () Unit!51488)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!906 (LexerInterface!4901 List!36700 List!36701 Token!9990) Unit!51488)

(assert (=> b!3309730 (= lt!1122112 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!906 thiss!18206 rules!2135 tokens!494 (h!41997 (t!254166 tokens!494))))))

(declare-datatypes ((tuple2!36054 0))(
  ( (tuple2!36055 (_1!21161 Token!9990) (_2!21161 List!36699)) )
))
(declare-datatypes ((Option!7284 0))(
  ( (None!7283) (Some!7283 (v!36079 tuple2!36054)) )
))
(declare-fun maxPrefix!2509 (LexerInterface!4901 List!36700 List!36699) Option!7284)

(assert (=> b!3309730 (= (maxPrefix!2509 thiss!18206 rules!2135 lt!1122109) (Some!7283 (tuple2!36055 (h!41997 tokens!494) lt!1122133)))))

(declare-fun lt!1122134 () Unit!51488)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!196 (LexerInterface!4901 List!36700 Token!9990 Rule!10424 List!36699 Rule!10424) Unit!51488)

(assert (=> b!3309730 (= lt!1122134 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!196 thiss!18206 rules!2135 (h!41997 tokens!494) (rule!7816 (h!41997 tokens!494)) lt!1122133 (rule!7816 separatorToken!241)))))

(declare-fun contains!6609 (List!36699 C!20328) Bool)

(declare-fun usedCharacters!592 (Regex!10071) List!36699)

(assert (=> b!3309730 (not (contains!6609 (usedCharacters!592 (regex!5312 (rule!7816 (h!41997 tokens!494)))) lt!1122103))))

(declare-fun lt!1122108 () Unit!51488)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!196 (LexerInterface!4901 List!36700 List!36700 Rule!10424 Rule!10424 C!20328) Unit!51488)

(assert (=> b!3309730 (= lt!1122108 (lemmaNonSepRuleNotContainsCharContainedInASepRule!196 thiss!18206 rules!2135 rules!2135 (rule!7816 (h!41997 tokens!494)) (rule!7816 separatorToken!241) lt!1122103))))

(declare-fun lt!1122124 () Unit!51488)

(assert (=> b!3309730 (= lt!1122124 (forallContained!1263 tokens!494 lambda!119227 (h!41997 (t!254166 tokens!494))))))

(declare-fun lt!1122100 () Bool)

(assert (=> b!3309730 (= lt!1122123 (not lt!1122100))))

(declare-fun rulesProduceIndividualToken!2393 (LexerInterface!4901 List!36700 Token!9990) Bool)

(assert (=> b!3309730 (= lt!1122123 (rulesProduceIndividualToken!2393 thiss!18206 rules!2135 (h!41997 (t!254166 tokens!494))))))

(assert (=> b!3309730 (= lt!1122100 e!2058661)))

(declare-fun res!1342487 () Bool)

(assert (=> b!3309730 (=> res!1342487 e!2058661)))

(declare-fun size!27626 (BalanceConc!21614) Int)

(assert (=> b!3309730 (= res!1342487 (not (= (size!27626 (_1!21160 lt!1122114)) 1)))))

(declare-fun lt!1122121 () BalanceConc!21612)

(declare-fun lex!2227 (LexerInterface!4901 List!36700 BalanceConc!21612) tuple2!36052)

(assert (=> b!3309730 (= lt!1122114 (lex!2227 thiss!18206 rules!2135 lt!1122121))))

(declare-fun lt!1122120 () BalanceConc!21614)

(assert (=> b!3309730 (= lt!1122121 (printTailRec!1398 thiss!18206 lt!1122120 0 (BalanceConc!21613 Empty!10999)))))

(assert (=> b!3309730 (= lt!1122121 (print!1966 thiss!18206 lt!1122120))))

(assert (=> b!3309730 (= lt!1122120 (singletonSeq!2408 (h!41997 (t!254166 tokens!494))))))

(assert (=> b!3309730 e!2058651))

(declare-fun res!1342489 () Bool)

(assert (=> b!3309730 (=> (not res!1342489) (not e!2058651))))

(assert (=> b!3309730 (= res!1342489 (= (size!27626 (_1!21160 lt!1122097)) 1))))

(declare-fun lt!1122107 () BalanceConc!21612)

(assert (=> b!3309730 (= lt!1122097 (lex!2227 thiss!18206 rules!2135 lt!1122107))))

(declare-fun lt!1122115 () BalanceConc!21614)

(assert (=> b!3309730 (= lt!1122107 (printTailRec!1398 thiss!18206 lt!1122115 0 (BalanceConc!21613 Empty!10999)))))

(assert (=> b!3309730 (= lt!1122107 (print!1966 thiss!18206 lt!1122115))))

(assert (=> b!3309730 (= lt!1122115 (singletonSeq!2408 separatorToken!241))))

(declare-fun lt!1122122 () Unit!51488)

(assert (=> b!3309730 (= lt!1122122 e!2058642)))

(declare-fun c!561259 () Bool)

(assert (=> b!3309730 (= c!561259 (not (contains!6609 (usedCharacters!592 (regex!5312 (rule!7816 separatorToken!241))) lt!1122103)))))

(declare-fun head!7139 (List!36699) C!20328)

(assert (=> b!3309730 (= lt!1122103 (head!7139 lt!1122110))))

(declare-fun e!2058641 () Bool)

(assert (=> b!3309730 e!2058641))

(declare-fun res!1342497 () Bool)

(assert (=> b!3309730 (=> (not res!1342497) (not e!2058641))))

(declare-fun lt!1122119 () Option!7283)

(assert (=> b!3309730 (= res!1342497 (isDefined!5640 lt!1122119))))

(assert (=> b!3309730 (= lt!1122119 (getRuleFromTag!983 thiss!18206 rules!2135 (tag!5858 (rule!7816 separatorToken!241))))))

(declare-fun lt!1122136 () Unit!51488)

(assert (=> b!3309730 (= lt!1122136 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!983 thiss!18206 rules!2135 lt!1122110 separatorToken!241))))

(declare-fun lt!1122104 () BalanceConc!21612)

(declare-fun maxPrefixOneRule!1644 (LexerInterface!4901 Rule!10424 List!36699) Option!7284)

(declare-fun apply!8411 (TokenValueInjection!10512 BalanceConc!21612) TokenValue!5542)

(declare-fun size!27627 (List!36699) Int)

(assert (=> b!3309730 (= (maxPrefixOneRule!1644 thiss!18206 (rule!7816 (h!41997 tokens!494)) lt!1122125) (Some!7283 (tuple2!36055 (Token!9991 (apply!8411 (transformation!5312 (rule!7816 (h!41997 tokens!494))) lt!1122104) (rule!7816 (h!41997 tokens!494)) (size!27627 lt!1122125) lt!1122125) Nil!36575)))))

(declare-fun lt!1122126 () Unit!51488)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!755 (LexerInterface!4901 List!36700 List!36699 List!36699 List!36699 Rule!10424) Unit!51488)

(assert (=> b!3309730 (= lt!1122126 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!755 thiss!18206 rules!2135 lt!1122125 lt!1122125 Nil!36575 (rule!7816 (h!41997 tokens!494))))))

(declare-fun e!2058654 () Bool)

(assert (=> b!3309730 e!2058654))

(declare-fun res!1342498 () Bool)

(assert (=> b!3309730 (=> (not res!1342498) (not e!2058654))))

(declare-fun lt!1122131 () Option!7283)

(assert (=> b!3309730 (= res!1342498 (isDefined!5640 lt!1122131))))

(assert (=> b!3309730 (= lt!1122131 (getRuleFromTag!983 thiss!18206 rules!2135 (tag!5858 (rule!7816 (h!41997 tokens!494)))))))

(declare-fun lt!1122098 () Unit!51488)

(assert (=> b!3309730 (= lt!1122098 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!983 thiss!18206 rules!2135 lt!1122125 (h!41997 tokens!494)))))

(declare-fun lt!1122118 () Unit!51488)

(assert (=> b!3309730 (= lt!1122118 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!906 thiss!18206 rules!2135 tokens!494 (h!41997 tokens!494)))))

(declare-fun b!3309731 () Bool)

(declare-fun res!1342486 () Bool)

(assert (=> b!3309731 (=> (not res!1342486) (not e!2058664))))

(declare-fun sepAndNonSepRulesDisjointChars!1506 (List!36700 List!36700) Bool)

(assert (=> b!3309731 (= res!1342486 (sepAndNonSepRulesDisjointChars!1506 rules!2135 rules!2135))))

(declare-fun b!3309732 () Bool)

(declare-fun res!1342509 () Bool)

(assert (=> b!3309732 (=> (not res!1342509) (not e!2058664))))

(assert (=> b!3309732 (= res!1342509 (rulesProduceIndividualToken!2393 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3309733 () Bool)

(assert (=> b!3309733 (= e!2058669 (= (rule!7816 (h!41997 (t!254166 tokens!494))) lt!1122130))))

(declare-fun b!3309734 () Bool)

(assert (=> b!3309734 (= e!2058641 e!2058645)))

(declare-fun res!1342488 () Bool)

(assert (=> b!3309734 (=> (not res!1342488) (not e!2058645))))

(assert (=> b!3309734 (= res!1342488 (matchR!4673 (regex!5312 lt!1122105) lt!1122110))))

(assert (=> b!3309734 (= lt!1122105 (get!11653 lt!1122119))))

(declare-fun tp!1036606 () Bool)

(declare-fun b!3309735 () Bool)

(assert (=> b!3309735 (= e!2058668 (and tp!1036606 (inv!49547 (tag!5858 (rule!7816 (h!41997 tokens!494)))) (inv!49550 (transformation!5312 (rule!7816 (h!41997 tokens!494)))) e!2058646))))

(declare-fun b!3309736 () Bool)

(declare-fun res!1342495 () Bool)

(assert (=> b!3309736 (=> res!1342495 e!2058670)))

(assert (=> b!3309736 (= res!1342495 (not (rulesProduceIndividualToken!2393 thiss!18206 rules!2135 (h!41997 tokens!494))))))

(declare-fun b!3309737 () Bool)

(declare-fun e!2058660 () Bool)

(assert (=> b!3309737 (= e!2058654 e!2058660)))

(declare-fun res!1342506 () Bool)

(assert (=> b!3309737 (=> (not res!1342506) (not e!2058660))))

(declare-fun lt!1122116 () Rule!10424)

(assert (=> b!3309737 (= res!1342506 (matchR!4673 (regex!5312 lt!1122116) lt!1122125))))

(assert (=> b!3309737 (= lt!1122116 (get!11653 lt!1122131))))

(declare-fun e!2058656 () Bool)

(declare-fun tp!1036598 () Bool)

(declare-fun b!3309738 () Bool)

(declare-fun inv!49551 (Token!9990) Bool)

(assert (=> b!3309738 (= e!2058656 (and (inv!49551 (h!41997 tokens!494)) e!2058658 tp!1036598))))

(declare-fun b!3309739 () Bool)

(assert (=> b!3309739 (= e!2058660 (= (rule!7816 (h!41997 tokens!494)) lt!1122116))))

(declare-fun b!3309740 () Bool)

(assert (=> b!3309740 (= e!2058670 e!2058665)))

(declare-fun res!1342510 () Bool)

(assert (=> b!3309740 (=> res!1342510 e!2058665)))

(declare-fun isEmpty!20714 (BalanceConc!21614) Bool)

(assert (=> b!3309740 (= res!1342510 (isEmpty!20714 (_1!21160 (lex!2227 thiss!18206 rules!2135 lt!1122104))))))

(declare-fun seqFromList!3680 (List!36699) BalanceConc!21612)

(assert (=> b!3309740 (= lt!1122104 (seqFromList!3680 lt!1122125))))

(declare-fun b!3309741 () Bool)

(declare-fun res!1342512 () Bool)

(assert (=> b!3309741 (=> (not res!1342512) (not e!2058664))))

(declare-fun isEmpty!20715 (List!36700) Bool)

(assert (=> b!3309741 (= res!1342512 (not (isEmpty!20715 rules!2135)))))

(declare-fun res!1342501 () Bool)

(assert (=> start!308602 (=> (not res!1342501) (not e!2058664))))

(assert (=> start!308602 (= res!1342501 ((_ is Lexer!4899) thiss!18206))))

(assert (=> start!308602 e!2058664))

(assert (=> start!308602 true))

(assert (=> start!308602 e!2058643))

(assert (=> start!308602 e!2058656))

(assert (=> start!308602 (and (inv!49551 separatorToken!241) e!2058652)))

(assert (= (and start!308602 res!1342501) b!3309741))

(assert (= (and b!3309741 res!1342512) b!3309712))

(assert (= (and b!3309712 res!1342496) b!3309714))

(assert (= (and b!3309714 res!1342503) b!3309732))

(assert (= (and b!3309732 res!1342509) b!3309704))

(assert (= (and b!3309704 res!1342493) b!3309715))

(assert (= (and b!3309715 res!1342499) b!3309731))

(assert (= (and b!3309731 res!1342486) b!3309720))

(assert (= (and b!3309720 res!1342511) b!3309724))

(assert (= (and b!3309724 (not res!1342491)) b!3309702))

(assert (= (and b!3309702 (not res!1342507)) b!3309736))

(assert (= (and b!3309736 (not res!1342495)) b!3309740))

(assert (= (and b!3309740 (not res!1342510)) b!3309722))

(assert (= (and b!3309722 (not res!1342492)) b!3309710))

(assert (= (and b!3309710 (not res!1342505)) b!3309716))

(assert (= (and b!3309716 (not res!1342500)) b!3309726))

(assert (= (and b!3309726 (not res!1342490)) b!3309730))

(assert (= (and b!3309730 res!1342498) b!3309737))

(assert (= (and b!3309737 res!1342506) b!3309739))

(assert (= (and b!3309730 res!1342497) b!3309734))

(assert (= (and b!3309734 res!1342488) b!3309717))

(assert (= (and b!3309730 c!561259) b!3309709))

(assert (= (and b!3309730 (not c!561259)) b!3309721))

(assert (= (and b!3309709 res!1342508) b!3309729))

(assert (= (and b!3309730 res!1342489) b!3309711))

(assert (= (and b!3309711 res!1342504) b!3309705))

(assert (= (and b!3309730 (not res!1342487)) b!3309728))

(assert (= (and b!3309728 (not res!1342513)) b!3309718))

(assert (= (and b!3309730 res!1342502) b!3309713))

(assert (= (and b!3309713 res!1342494) b!3309733))

(assert (= b!3309708 b!3309706))

(assert (= b!3309707 b!3309708))

(assert (= (and start!308602 ((_ is Cons!36576) rules!2135)) b!3309707))

(assert (= b!3309735 b!3309723))

(assert (= b!3309725 b!3309735))

(assert (= b!3309738 b!3309725))

(assert (= (and start!308602 ((_ is Cons!36577) tokens!494)) b!3309738))

(assert (= b!3309703 b!3309727))

(assert (= b!3309719 b!3309703))

(assert (= start!308602 b!3309719))

(declare-fun m!3637009 () Bool)

(assert (=> b!3309734 m!3637009))

(declare-fun m!3637011 () Bool)

(assert (=> b!3309734 m!3637011))

(declare-fun m!3637013 () Bool)

(assert (=> b!3309719 m!3637013))

(declare-fun m!3637015 () Bool)

(assert (=> b!3309711 m!3637015))

(declare-fun m!3637017 () Bool)

(assert (=> b!3309705 m!3637017))

(declare-fun m!3637019 () Bool)

(assert (=> b!3309731 m!3637019))

(declare-fun m!3637021 () Bool)

(assert (=> b!3309718 m!3637021))

(declare-fun m!3637023 () Bool)

(assert (=> b!3309736 m!3637023))

(declare-fun m!3637025 () Bool)

(assert (=> b!3309708 m!3637025))

(declare-fun m!3637027 () Bool)

(assert (=> b!3309708 m!3637027))

(declare-fun m!3637029 () Bool)

(assert (=> b!3309726 m!3637029))

(declare-fun m!3637031 () Bool)

(assert (=> b!3309726 m!3637031))

(declare-fun m!3637033 () Bool)

(assert (=> b!3309722 m!3637033))

(declare-fun m!3637035 () Bool)

(assert (=> b!3309722 m!3637035))

(declare-fun m!3637037 () Bool)

(assert (=> b!3309714 m!3637037))

(assert (=> b!3309714 m!3637037))

(declare-fun m!3637039 () Bool)

(assert (=> b!3309714 m!3637039))

(declare-fun m!3637041 () Bool)

(assert (=> b!3309712 m!3637041))

(declare-fun m!3637043 () Bool)

(assert (=> b!3309702 m!3637043))

(assert (=> b!3309702 m!3637043))

(declare-fun m!3637045 () Bool)

(assert (=> b!3309702 m!3637045))

(declare-fun m!3637047 () Bool)

(assert (=> b!3309713 m!3637047))

(declare-fun m!3637049 () Bool)

(assert (=> b!3309713 m!3637049))

(declare-fun m!3637051 () Bool)

(assert (=> start!308602 m!3637051))

(declare-fun m!3637053 () Bool)

(assert (=> b!3309709 m!3637053))

(declare-fun m!3637055 () Bool)

(assert (=> b!3309709 m!3637055))

(declare-fun m!3637057 () Bool)

(assert (=> b!3309725 m!3637057))

(declare-fun m!3637059 () Bool)

(assert (=> b!3309730 m!3637059))

(declare-fun m!3637061 () Bool)

(assert (=> b!3309730 m!3637061))

(declare-fun m!3637063 () Bool)

(assert (=> b!3309730 m!3637063))

(declare-fun m!3637065 () Bool)

(assert (=> b!3309730 m!3637065))

(declare-fun m!3637067 () Bool)

(assert (=> b!3309730 m!3637067))

(declare-fun m!3637069 () Bool)

(assert (=> b!3309730 m!3637069))

(declare-fun m!3637071 () Bool)

(assert (=> b!3309730 m!3637071))

(declare-fun m!3637073 () Bool)

(assert (=> b!3309730 m!3637073))

(declare-fun m!3637075 () Bool)

(assert (=> b!3309730 m!3637075))

(declare-fun m!3637077 () Bool)

(assert (=> b!3309730 m!3637077))

(assert (=> b!3309730 m!3637063))

(declare-fun m!3637079 () Bool)

(assert (=> b!3309730 m!3637079))

(declare-fun m!3637081 () Bool)

(assert (=> b!3309730 m!3637081))

(declare-fun m!3637083 () Bool)

(assert (=> b!3309730 m!3637083))

(declare-fun m!3637085 () Bool)

(assert (=> b!3309730 m!3637085))

(declare-fun m!3637087 () Bool)

(assert (=> b!3309730 m!3637087))

(declare-fun m!3637089 () Bool)

(assert (=> b!3309730 m!3637089))

(declare-fun m!3637091 () Bool)

(assert (=> b!3309730 m!3637091))

(declare-fun m!3637093 () Bool)

(assert (=> b!3309730 m!3637093))

(declare-fun m!3637095 () Bool)

(assert (=> b!3309730 m!3637095))

(declare-fun m!3637097 () Bool)

(assert (=> b!3309730 m!3637097))

(declare-fun m!3637099 () Bool)

(assert (=> b!3309730 m!3637099))

(declare-fun m!3637101 () Bool)

(assert (=> b!3309730 m!3637101))

(declare-fun m!3637103 () Bool)

(assert (=> b!3309730 m!3637103))

(declare-fun m!3637105 () Bool)

(assert (=> b!3309730 m!3637105))

(declare-fun m!3637107 () Bool)

(assert (=> b!3309730 m!3637107))

(declare-fun m!3637109 () Bool)

(assert (=> b!3309730 m!3637109))

(declare-fun m!3637111 () Bool)

(assert (=> b!3309730 m!3637111))

(declare-fun m!3637113 () Bool)

(assert (=> b!3309730 m!3637113))

(declare-fun m!3637115 () Bool)

(assert (=> b!3309730 m!3637115))

(declare-fun m!3637117 () Bool)

(assert (=> b!3309730 m!3637117))

(declare-fun m!3637119 () Bool)

(assert (=> b!3309730 m!3637119))

(declare-fun m!3637121 () Bool)

(assert (=> b!3309730 m!3637121))

(declare-fun m!3637123 () Bool)

(assert (=> b!3309730 m!3637123))

(declare-fun m!3637125 () Bool)

(assert (=> b!3309730 m!3637125))

(assert (=> b!3309730 m!3637107))

(declare-fun m!3637127 () Bool)

(assert (=> b!3309730 m!3637127))

(declare-fun m!3637129 () Bool)

(assert (=> b!3309710 m!3637129))

(declare-fun m!3637131 () Bool)

(assert (=> b!3309710 m!3637131))

(declare-fun m!3637133 () Bool)

(assert (=> b!3309710 m!3637133))

(declare-fun m!3637135 () Bool)

(assert (=> b!3309710 m!3637135))

(assert (=> b!3309710 m!3637129))

(declare-fun m!3637137 () Bool)

(assert (=> b!3309710 m!3637137))

(declare-fun m!3637139 () Bool)

(assert (=> b!3309710 m!3637139))

(declare-fun m!3637141 () Bool)

(assert (=> b!3309710 m!3637141))

(assert (=> b!3309710 m!3637131))

(declare-fun m!3637143 () Bool)

(assert (=> b!3309710 m!3637143))

(declare-fun m!3637145 () Bool)

(assert (=> b!3309710 m!3637145))

(assert (=> b!3309710 m!3637145))

(assert (=> b!3309710 m!3637139))

(declare-fun m!3637147 () Bool)

(assert (=> b!3309710 m!3637147))

(declare-fun m!3637149 () Bool)

(assert (=> b!3309737 m!3637149))

(declare-fun m!3637151 () Bool)

(assert (=> b!3309737 m!3637151))

(declare-fun m!3637153 () Bool)

(assert (=> b!3309732 m!3637153))

(declare-fun m!3637155 () Bool)

(assert (=> b!3309735 m!3637155))

(declare-fun m!3637157 () Bool)

(assert (=> b!3309735 m!3637157))

(declare-fun m!3637159 () Bool)

(assert (=> b!3309741 m!3637159))

(declare-fun m!3637161 () Bool)

(assert (=> b!3309715 m!3637161))

(declare-fun m!3637163 () Bool)

(assert (=> b!3309724 m!3637163))

(declare-fun m!3637165 () Bool)

(assert (=> b!3309724 m!3637165))

(declare-fun m!3637167 () Bool)

(assert (=> b!3309724 m!3637167))

(declare-fun m!3637169 () Bool)

(assert (=> b!3309724 m!3637169))

(declare-fun m!3637171 () Bool)

(assert (=> b!3309724 m!3637171))

(declare-fun m!3637173 () Bool)

(assert (=> b!3309716 m!3637173))

(assert (=> b!3309716 m!3637173))

(declare-fun m!3637175 () Bool)

(assert (=> b!3309716 m!3637175))

(declare-fun m!3637177 () Bool)

(assert (=> b!3309738 m!3637177))

(declare-fun m!3637179 () Bool)

(assert (=> b!3309703 m!3637179))

(declare-fun m!3637181 () Bool)

(assert (=> b!3309703 m!3637181))

(declare-fun m!3637183 () Bool)

(assert (=> b!3309728 m!3637183))

(declare-fun m!3637185 () Bool)

(assert (=> b!3309740 m!3637185))

(declare-fun m!3637187 () Bool)

(assert (=> b!3309740 m!3637187))

(declare-fun m!3637189 () Bool)

(assert (=> b!3309740 m!3637189))

(check-sat (not b!3309707) (not b!3309711) (not b!3309712) (not b!3309734) (not b!3309716) (not b!3309709) (not b!3309710) (not b!3309718) (not b!3309724) (not b!3309725) (not b_next!87891) (not b!3309715) b_and!227149 (not b!3309702) (not b!3309714) (not b!3309735) (not start!308602) (not b!3309719) b_and!227151 (not b_next!87887) (not b!3309737) (not b!3309750) (not b!3309730) (not b!3309728) b_and!227145 b_and!227153 (not b!3309708) (not b!3309732) (not b!3309726) (not b!3309740) (not b!3309738) (not b!3309722) (not b_next!87889) (not b_next!87881) (not b!3309703) (not b!3309705) (not b_next!87885) (not b!3309741) b_and!227147 (not b!3309736) (not b!3309731) (not b_next!87883) (not b!3309713) b_and!227143)
(check-sat (not b_next!87889) (not b_next!87881) (not b_next!87885) b_and!227147 (not b_next!87883) b_and!227143 (not b_next!87891) b_and!227149 b_and!227151 (not b_next!87887) b_and!227145 b_and!227153)
