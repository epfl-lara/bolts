; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!308496 () Bool)

(assert start!308496)

(declare-fun b!3308639 () Bool)

(declare-fun b_free!87077 () Bool)

(declare-fun b_next!87781 () Bool)

(assert (=> b!3308639 (= b_free!87077 (not b_next!87781))))

(declare-fun tp!1036204 () Bool)

(declare-fun b_and!226983 () Bool)

(assert (=> b!3308639 (= tp!1036204 b_and!226983)))

(declare-fun b_free!87079 () Bool)

(declare-fun b_next!87783 () Bool)

(assert (=> b!3308639 (= b_free!87079 (not b_next!87783))))

(declare-fun tp!1036199 () Bool)

(declare-fun b_and!226985 () Bool)

(assert (=> b!3308639 (= tp!1036199 b_and!226985)))

(declare-fun b!3308644 () Bool)

(declare-fun b_free!87081 () Bool)

(declare-fun b_next!87785 () Bool)

(assert (=> b!3308644 (= b_free!87081 (not b_next!87785))))

(declare-fun tp!1036202 () Bool)

(declare-fun b_and!226987 () Bool)

(assert (=> b!3308644 (= tp!1036202 b_and!226987)))

(declare-fun b_free!87083 () Bool)

(declare-fun b_next!87787 () Bool)

(assert (=> b!3308644 (= b_free!87083 (not b_next!87787))))

(declare-fun tp!1036208 () Bool)

(declare-fun b_and!226989 () Bool)

(assert (=> b!3308644 (= tp!1036208 b_and!226989)))

(declare-fun b!3308656 () Bool)

(declare-fun b_free!87085 () Bool)

(declare-fun b_next!87789 () Bool)

(assert (=> b!3308656 (= b_free!87085 (not b_next!87789))))

(declare-fun tp!1036209 () Bool)

(declare-fun b_and!226991 () Bool)

(assert (=> b!3308656 (= tp!1036209 b_and!226991)))

(declare-fun b_free!87087 () Bool)

(declare-fun b_next!87791 () Bool)

(assert (=> b!3308656 (= b_free!87087 (not b_next!87791))))

(declare-fun tp!1036210 () Bool)

(declare-fun b_and!226993 () Bool)

(assert (=> b!3308656 (= tp!1036210 b_and!226993)))

(declare-fun b!3308637 () Bool)

(declare-fun e!2057832 () Bool)

(declare-fun e!2057844 () Bool)

(assert (=> b!3308637 (= e!2057832 e!2057844)))

(declare-fun res!1341918 () Bool)

(assert (=> b!3308637 (=> res!1341918 e!2057844)))

(declare-datatypes ((C!20314 0))(
  ( (C!20315 (val!12205 Int)) )
))
(declare-datatypes ((List!36668 0))(
  ( (Nil!36544) (Cons!36544 (h!41964 C!20314) (t!254029 List!36668)) )
))
(declare-fun lt!1121532 () List!36668)

(declare-fun lt!1121531 () List!36668)

(declare-fun lt!1121530 () List!36668)

(assert (=> b!3308637 (= res!1341918 (or (not (= lt!1121530 lt!1121531)) (not (= lt!1121532 lt!1121531))))))

(declare-datatypes ((Regex!10064 0))(
  ( (ElementMatch!10064 (c!561168 C!20314)) (Concat!15599 (regOne!20640 Regex!10064) (regTwo!20640 Regex!10064)) (EmptyExpr!10064) (Star!10064 (reg!10393 Regex!10064)) (EmptyLang!10064) (Union!10064 (regOne!20641 Regex!10064) (regTwo!20641 Regex!10064)) )
))
(declare-datatypes ((List!36669 0))(
  ( (Nil!36545) (Cons!36545 (h!41965 (_ BitVec 16)) (t!254030 List!36669)) )
))
(declare-datatypes ((TokenValue!5535 0))(
  ( (FloatLiteralValue!11070 (text!39190 List!36669)) (TokenValueExt!5534 (__x!23287 Int)) (Broken!27675 (value!171628 List!36669)) (Object!5658) (End!5535) (Def!5535) (Underscore!5535) (Match!5535) (Else!5535) (Error!5535) (Case!5535) (If!5535) (Extends!5535) (Abstract!5535) (Class!5535) (Val!5535) (DelimiterValue!11070 (del!5595 List!36669)) (KeywordValue!5541 (value!171629 List!36669)) (CommentValue!11070 (value!171630 List!36669)) (WhitespaceValue!11070 (value!171631 List!36669)) (IndentationValue!5535 (value!171632 List!36669)) (String!41010) (Int32!5535) (Broken!27676 (value!171633 List!36669)) (Boolean!5536) (Unit!51464) (OperatorValue!5538 (op!5595 List!36669)) (IdentifierValue!11070 (value!171634 List!36669)) (IdentifierValue!11071 (value!171635 List!36669)) (WhitespaceValue!11071 (value!171636 List!36669)) (True!11070) (False!11070) (Broken!27677 (value!171637 List!36669)) (Broken!27678 (value!171638 List!36669)) (True!11071) (RightBrace!5535) (RightBracket!5535) (Colon!5535) (Null!5535) (Comma!5535) (LeftBracket!5535) (False!11071) (LeftBrace!5535) (ImaginaryLiteralValue!5535 (text!39191 List!36669)) (StringLiteralValue!16605 (value!171639 List!36669)) (EOFValue!5535 (value!171640 List!36669)) (IdentValue!5535 (value!171641 List!36669)) (DelimiterValue!11071 (value!171642 List!36669)) (DedentValue!5535 (value!171643 List!36669)) (NewLineValue!5535 (value!171644 List!36669)) (IntegerValue!16605 (value!171645 (_ BitVec 32)) (text!39192 List!36669)) (IntegerValue!16606 (value!171646 Int) (text!39193 List!36669)) (Times!5535) (Or!5535) (Equal!5535) (Minus!5535) (Broken!27679 (value!171647 List!36669)) (And!5535) (Div!5535) (LessEqual!5535) (Mod!5535) (Concat!15600) (Not!5535) (Plus!5535) (SpaceValue!5535 (value!171648 List!36669)) (IntegerValue!16607 (value!171649 Int) (text!39194 List!36669)) (StringLiteralValue!16606 (text!39195 List!36669)) (FloatLiteralValue!11071 (text!39196 List!36669)) (BytesLiteralValue!5535 (value!171650 List!36669)) (CommentValue!11071 (value!171651 List!36669)) (StringLiteralValue!16607 (value!171652 List!36669)) (ErrorTokenValue!5535 (msg!5596 List!36669)) )
))
(declare-datatypes ((IArray!21975 0))(
  ( (IArray!21976 (innerList!11045 List!36668)) )
))
(declare-datatypes ((Conc!10985 0))(
  ( (Node!10985 (left!28472 Conc!10985) (right!28802 Conc!10985) (csize!22200 Int) (cheight!11196 Int)) (Leaf!17249 (xs!14123 IArray!21975) (csize!22201 Int)) (Empty!10985) )
))
(declare-datatypes ((BalanceConc!21584 0))(
  ( (BalanceConc!21585 (c!561169 Conc!10985)) )
))
(declare-datatypes ((String!41011 0))(
  ( (String!41012 (value!171653 String)) )
))
(declare-datatypes ((TokenValueInjection!10498 0))(
  ( (TokenValueInjection!10499 (toValue!7449 Int) (toChars!7308 Int)) )
))
(declare-datatypes ((Rule!10410 0))(
  ( (Rule!10411 (regex!5305 Regex!10064) (tag!5851 String!41011) (isSeparator!5305 Bool) (transformation!5305 TokenValueInjection!10498)) )
))
(declare-datatypes ((Token!9976 0))(
  ( (Token!9977 (value!171654 TokenValue!5535) (rule!7809 Rule!10410) (size!27610 Int) (originalCharacters!6019 List!36668)) )
))
(declare-datatypes ((List!36670 0))(
  ( (Nil!36546) (Cons!36546 (h!41966 Token!9976) (t!254031 List!36670)) )
))
(declare-fun tokens!494 () List!36670)

(declare-fun list!13120 (BalanceConc!21584) List!36668)

(declare-fun charsOf!3321 (Token!9976) BalanceConc!21584)

(assert (=> b!3308637 (= lt!1121531 (list!13120 (charsOf!3321 (h!41966 tokens!494))))))

(declare-fun b!3308638 () Bool)

(declare-fun res!1341917 () Bool)

(declare-fun e!2057840 () Bool)

(assert (=> b!3308638 (=> (not res!1341917) (not e!2057840))))

(assert (=> b!3308638 (= res!1341917 (and (not (is-Nil!36546 tokens!494)) (not (is-Nil!36546 (t!254031 tokens!494)))))))

(declare-fun e!2057829 () Bool)

(assert (=> b!3308639 (= e!2057829 (and tp!1036204 tp!1036199))))

(declare-fun b!3308640 () Bool)

(declare-fun res!1341916 () Bool)

(assert (=> b!3308640 (=> (not res!1341916) (not e!2057840))))

(declare-datatypes ((List!36671 0))(
  ( (Nil!36547) (Cons!36547 (h!41967 Rule!10410) (t!254032 List!36671)) )
))
(declare-fun rules!2135 () List!36671)

(declare-fun sepAndNonSepRulesDisjointChars!1499 (List!36671 List!36671) Bool)

(assert (=> b!3308640 (= res!1341916 (sepAndNonSepRulesDisjointChars!1499 rules!2135 rules!2135))))

(declare-fun b!3308641 () Bool)

(declare-fun res!1341919 () Bool)

(assert (=> b!3308641 (=> (not res!1341919) (not e!2057840))))

(declare-datatypes ((LexerInterface!4894 0))(
  ( (LexerInterfaceExt!4891 (__x!23288 Int)) (Lexer!4892) )
))
(declare-fun thiss!18206 () LexerInterface!4894)

(declare-fun rulesInvariant!4291 (LexerInterface!4894 List!36671) Bool)

(assert (=> b!3308641 (= res!1341919 (rulesInvariant!4291 thiss!18206 rules!2135))))

(declare-fun b!3308642 () Bool)

(declare-fun res!1341908 () Bool)

(assert (=> b!3308642 (=> (not res!1341908) (not e!2057840))))

(declare-fun isEmpty!20690 (List!36671) Bool)

(assert (=> b!3308642 (= res!1341908 (not (isEmpty!20690 rules!2135)))))

(declare-fun b!3308643 () Bool)

(declare-fun res!1341910 () Bool)

(assert (=> b!3308643 (=> (not res!1341910) (not e!2057840))))

(declare-fun lambda!119162 () Int)

(declare-fun forall!7588 (List!36670 Int) Bool)

(assert (=> b!3308643 (= res!1341910 (forall!7588 tokens!494 lambda!119162))))

(declare-fun e!2057833 () Bool)

(assert (=> b!3308644 (= e!2057833 (and tp!1036202 tp!1036208))))

(declare-fun b!3308645 () Bool)

(declare-fun e!2057831 () Bool)

(declare-fun e!2057845 () Bool)

(declare-fun tp!1036201 () Bool)

(assert (=> b!3308645 (= e!2057831 (and e!2057845 tp!1036201))))

(declare-fun b!3308646 () Bool)

(declare-fun res!1341915 () Bool)

(assert (=> b!3308646 (=> (not res!1341915) (not e!2057840))))

(declare-datatypes ((IArray!21977 0))(
  ( (IArray!21978 (innerList!11046 List!36670)) )
))
(declare-datatypes ((Conc!10986 0))(
  ( (Node!10986 (left!28473 Conc!10986) (right!28803 Conc!10986) (csize!22202 Int) (cheight!11197 Int)) (Leaf!17250 (xs!14124 IArray!21977) (csize!22203 Int)) (Empty!10986) )
))
(declare-datatypes ((BalanceConc!21586 0))(
  ( (BalanceConc!21587 (c!561170 Conc!10986)) )
))
(declare-fun rulesProduceEachTokenIndividually!1345 (LexerInterface!4894 List!36671 BalanceConc!21586) Bool)

(declare-fun seqFromList!3665 (List!36670) BalanceConc!21586)

(assert (=> b!3308646 (= res!1341915 (rulesProduceEachTokenIndividually!1345 thiss!18206 rules!2135 (seqFromList!3665 tokens!494)))))

(declare-fun separatorToken!241 () Token!9976)

(declare-fun e!2057841 () Bool)

(declare-fun b!3308647 () Bool)

(declare-fun tp!1036203 () Bool)

(declare-fun inv!49520 (String!41011) Bool)

(declare-fun inv!49523 (TokenValueInjection!10498) Bool)

(assert (=> b!3308647 (= e!2057841 (and tp!1036203 (inv!49520 (tag!5851 (rule!7809 separatorToken!241))) (inv!49523 (transformation!5305 (rule!7809 separatorToken!241))) e!2057833))))

(declare-fun b!3308648 () Bool)

(declare-fun res!1341906 () Bool)

(assert (=> b!3308648 (=> (not res!1341906) (not e!2057840))))

(declare-fun rulesProduceIndividualToken!2386 (LexerInterface!4894 List!36671 Token!9976) Bool)

(assert (=> b!3308648 (= res!1341906 (rulesProduceIndividualToken!2386 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3308649 () Bool)

(declare-fun e!2057838 () Bool)

(declare-fun e!2057836 () Bool)

(assert (=> b!3308649 (= e!2057838 e!2057836)))

(declare-fun res!1341914 () Bool)

(assert (=> b!3308649 (=> res!1341914 e!2057836)))

(declare-fun lt!1121535 () List!36668)

(declare-fun lt!1121539 () List!36668)

(declare-fun ++!8856 (List!36668 List!36668) List!36668)

(declare-fun printWithSeparatorTokenList!205 (LexerInterface!4894 List!36670 Token!9976) List!36668)

(assert (=> b!3308649 (= res!1341914 (not (= lt!1121535 (++!8856 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539) (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1121533 () List!36668)

(assert (=> b!3308649 (= lt!1121533 (++!8856 lt!1121539 lt!1121535))))

(assert (=> b!3308649 (= lt!1121539 (list!13120 (charsOf!3321 separatorToken!241)))))

(assert (=> b!3308649 (= lt!1121535 (printWithSeparatorTokenList!205 thiss!18206 (t!254031 tokens!494) separatorToken!241))))

(declare-fun lt!1121538 () List!36668)

(assert (=> b!3308649 (= lt!1121538 (printWithSeparatorTokenList!205 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2057830 () Bool)

(declare-fun b!3308650 () Bool)

(declare-fun tp!1036200 () Bool)

(assert (=> b!3308650 (= e!2057845 (and tp!1036200 (inv!49520 (tag!5851 (h!41967 rules!2135))) (inv!49523 (transformation!5305 (h!41967 rules!2135))) e!2057830))))

(declare-fun tp!1036205 () Bool)

(declare-fun e!2057839 () Bool)

(declare-fun b!3308651 () Bool)

(declare-fun e!2057837 () Bool)

(declare-fun inv!49524 (Token!9976) Bool)

(assert (=> b!3308651 (= e!2057837 (and (inv!49524 (h!41966 tokens!494)) e!2057839 tp!1036205))))

(declare-fun e!2057828 () Bool)

(declare-fun tp!1036211 () Bool)

(declare-fun b!3308652 () Bool)

(assert (=> b!3308652 (= e!2057828 (and tp!1036211 (inv!49520 (tag!5851 (rule!7809 (h!41966 tokens!494)))) (inv!49523 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) e!2057829))))

(declare-fun b!3308653 () Bool)

(declare-fun res!1341911 () Bool)

(assert (=> b!3308653 (=> (not res!1341911) (not e!2057840))))

(assert (=> b!3308653 (= res!1341911 (isSeparator!5305 (rule!7809 separatorToken!241)))))

(declare-fun b!3308654 () Bool)

(assert (=> b!3308654 (= e!2057836 (= lt!1121538 (++!8856 (++!8856 lt!1121531 lt!1121539) lt!1121535)))))

(declare-fun b!3308655 () Bool)

(assert (=> b!3308655 (= e!2057840 (not e!2057832))))

(declare-fun res!1341907 () Bool)

(assert (=> b!3308655 (=> res!1341907 e!2057832)))

(assert (=> b!3308655 (= res!1341907 (not (= lt!1121532 lt!1121530)))))

(declare-fun printList!1444 (LexerInterface!4894 List!36670) List!36668)

(assert (=> b!3308655 (= lt!1121530 (printList!1444 thiss!18206 (Cons!36546 (h!41966 tokens!494) Nil!36546)))))

(declare-fun lt!1121534 () BalanceConc!21584)

(assert (=> b!3308655 (= lt!1121532 (list!13120 lt!1121534))))

(declare-fun lt!1121536 () BalanceConc!21586)

(declare-fun printTailRec!1391 (LexerInterface!4894 BalanceConc!21586 Int BalanceConc!21584) BalanceConc!21584)

(assert (=> b!3308655 (= lt!1121534 (printTailRec!1391 thiss!18206 lt!1121536 0 (BalanceConc!21585 Empty!10985)))))

(declare-fun print!1959 (LexerInterface!4894 BalanceConc!21586) BalanceConc!21584)

(assert (=> b!3308655 (= lt!1121534 (print!1959 thiss!18206 lt!1121536))))

(declare-fun singletonSeq!2401 (Token!9976) BalanceConc!21586)

(assert (=> b!3308655 (= lt!1121536 (singletonSeq!2401 (h!41966 tokens!494)))))

(assert (=> b!3308656 (= e!2057830 (and tp!1036209 tp!1036210))))

(declare-fun res!1341913 () Bool)

(assert (=> start!308496 (=> (not res!1341913) (not e!2057840))))

(assert (=> start!308496 (= res!1341913 (is-Lexer!4892 thiss!18206))))

(assert (=> start!308496 e!2057840))

(assert (=> start!308496 true))

(assert (=> start!308496 e!2057831))

(assert (=> start!308496 e!2057837))

(declare-fun e!2057843 () Bool)

(assert (=> start!308496 (and (inv!49524 separatorToken!241) e!2057843)))

(declare-fun b!3308657 () Bool)

(assert (=> b!3308657 (= e!2057844 e!2057838)))

(declare-fun res!1341912 () Bool)

(assert (=> b!3308657 (=> res!1341912 e!2057838)))

(assert (=> b!3308657 (= res!1341912 (or (isSeparator!5305 (rule!7809 (h!41966 tokens!494))) (isSeparator!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))))))

(declare-datatypes ((Unit!51465 0))(
  ( (Unit!51466) )
))
(declare-fun lt!1121537 () Unit!51465)

(declare-fun forallContained!1256 (List!36670 Int Token!9976) Unit!51465)

(assert (=> b!3308657 (= lt!1121537 (forallContained!1256 tokens!494 lambda!119162 (h!41966 (t!254031 tokens!494))))))

(declare-fun lt!1121529 () Unit!51465)

(assert (=> b!3308657 (= lt!1121529 (forallContained!1256 tokens!494 lambda!119162 (h!41966 tokens!494)))))

(declare-fun b!3308658 () Bool)

(declare-fun tp!1036206 () Bool)

(declare-fun inv!21 (TokenValue!5535) Bool)

(assert (=> b!3308658 (= e!2057839 (and (inv!21 (value!171654 (h!41966 tokens!494))) e!2057828 tp!1036206))))

(declare-fun b!3308659 () Bool)

(declare-fun res!1341905 () Bool)

(assert (=> b!3308659 (=> res!1341905 e!2057844)))

(declare-fun isEmpty!20691 (BalanceConc!21586) Bool)

(declare-datatypes ((tuple2!36032 0))(
  ( (tuple2!36033 (_1!21150 BalanceConc!21586) (_2!21150 BalanceConc!21584)) )
))
(declare-fun lex!2220 (LexerInterface!4894 List!36671 BalanceConc!21584) tuple2!36032)

(declare-fun seqFromList!3666 (List!36668) BalanceConc!21584)

(assert (=> b!3308659 (= res!1341905 (isEmpty!20691 (_1!21150 (lex!2220 thiss!18206 rules!2135 (seqFromList!3666 lt!1121531)))))))

(declare-fun b!3308660 () Bool)

(declare-fun res!1341909 () Bool)

(assert (=> b!3308660 (=> res!1341909 e!2057844)))

(assert (=> b!3308660 (= res!1341909 (not (rulesProduceIndividualToken!2386 thiss!18206 rules!2135 (h!41966 tokens!494))))))

(declare-fun tp!1036207 () Bool)

(declare-fun b!3308661 () Bool)

(assert (=> b!3308661 (= e!2057843 (and (inv!21 (value!171654 separatorToken!241)) e!2057841 tp!1036207))))

(assert (= (and start!308496 res!1341913) b!3308642))

(assert (= (and b!3308642 res!1341908) b!3308641))

(assert (= (and b!3308641 res!1341919) b!3308646))

(assert (= (and b!3308646 res!1341915) b!3308648))

(assert (= (and b!3308648 res!1341906) b!3308653))

(assert (= (and b!3308653 res!1341911) b!3308643))

(assert (= (and b!3308643 res!1341910) b!3308640))

(assert (= (and b!3308640 res!1341916) b!3308638))

(assert (= (and b!3308638 res!1341917) b!3308655))

(assert (= (and b!3308655 (not res!1341907)) b!3308637))

(assert (= (and b!3308637 (not res!1341918)) b!3308660))

(assert (= (and b!3308660 (not res!1341909)) b!3308659))

(assert (= (and b!3308659 (not res!1341905)) b!3308657))

(assert (= (and b!3308657 (not res!1341912)) b!3308649))

(assert (= (and b!3308649 (not res!1341914)) b!3308654))

(assert (= b!3308650 b!3308656))

(assert (= b!3308645 b!3308650))

(assert (= (and start!308496 (is-Cons!36547 rules!2135)) b!3308645))

(assert (= b!3308652 b!3308639))

(assert (= b!3308658 b!3308652))

(assert (= b!3308651 b!3308658))

(assert (= (and start!308496 (is-Cons!36546 tokens!494)) b!3308651))

(assert (= b!3308647 b!3308644))

(assert (= b!3308661 b!3308647))

(assert (= start!308496 b!3308661))

(declare-fun m!3635679 () Bool)

(assert (=> b!3308650 m!3635679))

(declare-fun m!3635681 () Bool)

(assert (=> b!3308650 m!3635681))

(declare-fun m!3635683 () Bool)

(assert (=> b!3308641 m!3635683))

(declare-fun m!3635685 () Bool)

(assert (=> b!3308655 m!3635685))

(declare-fun m!3635687 () Bool)

(assert (=> b!3308655 m!3635687))

(declare-fun m!3635689 () Bool)

(assert (=> b!3308655 m!3635689))

(declare-fun m!3635691 () Bool)

(assert (=> b!3308655 m!3635691))

(declare-fun m!3635693 () Bool)

(assert (=> b!3308655 m!3635693))

(declare-fun m!3635695 () Bool)

(assert (=> b!3308637 m!3635695))

(assert (=> b!3308637 m!3635695))

(declare-fun m!3635697 () Bool)

(assert (=> b!3308637 m!3635697))

(declare-fun m!3635699 () Bool)

(assert (=> b!3308640 m!3635699))

(declare-fun m!3635701 () Bool)

(assert (=> b!3308659 m!3635701))

(assert (=> b!3308659 m!3635701))

(declare-fun m!3635703 () Bool)

(assert (=> b!3308659 m!3635703))

(declare-fun m!3635705 () Bool)

(assert (=> b!3308659 m!3635705))

(declare-fun m!3635707 () Bool)

(assert (=> b!3308657 m!3635707))

(declare-fun m!3635709 () Bool)

(assert (=> b!3308657 m!3635709))

(declare-fun m!3635711 () Bool)

(assert (=> b!3308648 m!3635711))

(declare-fun m!3635713 () Bool)

(assert (=> b!3308643 m!3635713))

(declare-fun m!3635715 () Bool)

(assert (=> b!3308647 m!3635715))

(declare-fun m!3635717 () Bool)

(assert (=> b!3308647 m!3635717))

(declare-fun m!3635719 () Bool)

(assert (=> b!3308661 m!3635719))

(declare-fun m!3635721 () Bool)

(assert (=> b!3308642 m!3635721))

(declare-fun m!3635723 () Bool)

(assert (=> b!3308660 m!3635723))

(declare-fun m!3635725 () Bool)

(assert (=> b!3308652 m!3635725))

(declare-fun m!3635727 () Bool)

(assert (=> b!3308652 m!3635727))

(declare-fun m!3635729 () Bool)

(assert (=> b!3308651 m!3635729))

(declare-fun m!3635731 () Bool)

(assert (=> start!308496 m!3635731))

(declare-fun m!3635733 () Bool)

(assert (=> b!3308649 m!3635733))

(declare-fun m!3635735 () Bool)

(assert (=> b!3308649 m!3635735))

(declare-fun m!3635737 () Bool)

(assert (=> b!3308649 m!3635737))

(declare-fun m!3635739 () Bool)

(assert (=> b!3308649 m!3635739))

(assert (=> b!3308649 m!3635733))

(declare-fun m!3635741 () Bool)

(assert (=> b!3308649 m!3635741))

(declare-fun m!3635743 () Bool)

(assert (=> b!3308649 m!3635743))

(declare-fun m!3635745 () Bool)

(assert (=> b!3308649 m!3635745))

(assert (=> b!3308649 m!3635741))

(declare-fun m!3635747 () Bool)

(assert (=> b!3308649 m!3635747))

(assert (=> b!3308649 m!3635747))

(assert (=> b!3308649 m!3635745))

(declare-fun m!3635749 () Bool)

(assert (=> b!3308649 m!3635749))

(assert (=> b!3308649 m!3635735))

(declare-fun m!3635751 () Bool)

(assert (=> b!3308649 m!3635751))

(declare-fun m!3635753 () Bool)

(assert (=> b!3308646 m!3635753))

(assert (=> b!3308646 m!3635753))

(declare-fun m!3635755 () Bool)

(assert (=> b!3308646 m!3635755))

(declare-fun m!3635757 () Bool)

(assert (=> b!3308654 m!3635757))

(assert (=> b!3308654 m!3635757))

(declare-fun m!3635759 () Bool)

(assert (=> b!3308654 m!3635759))

(declare-fun m!3635761 () Bool)

(assert (=> b!3308658 m!3635761))

(push 1)

(assert (not b!3308658))

(assert (not b_next!87781))

(assert b_and!226983)

(assert b_and!226987)

(assert (not b!3308637))

(assert (not b!3308657))

(assert (not b_next!87787))

(assert (not b!3308649))

(assert (not b!3308654))

(assert (not b!3308647))

(assert (not b!3308641))

(assert (not b_next!87783))

(assert b_and!226991)

(assert (not b_next!87789))

(assert (not b!3308650))

(assert (not b!3308645))

(assert (not b!3308643))

(assert (not b!3308659))

(assert (not start!308496))

(assert b_and!226985)

(assert (not b!3308642))

(assert (not b!3308646))

(assert (not b_next!87785))

(assert (not b!3308660))

(assert (not b!3308640))

(assert (not b!3308661))

(assert (not b!3308651))

(assert (not b!3308652))

(assert (not b!3308648))

(assert (not b_next!87791))

(assert b_and!226989)

(assert b_and!226993)

(assert (not b!3308655))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!87781))

(assert b_and!226985)

(assert (not b_next!87785))

(assert b_and!226983)

(assert b_and!226987)

(assert (not b_next!87787))

(assert b_and!226993)

(assert (not b_next!87783))

(assert b_and!226991)

(assert (not b_next!87789))

(assert (not b_next!87791))

(assert b_and!226989)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!926906 () Bool)

(assert (=> d!926906 (= (inv!49520 (tag!5851 (rule!7809 separatorToken!241))) (= (mod (str.len (value!171653 (tag!5851 (rule!7809 separatorToken!241)))) 2) 0))))

(assert (=> b!3308647 d!926906))

(declare-fun d!926908 () Bool)

(declare-fun res!1341972 () Bool)

(declare-fun e!2057909 () Bool)

(assert (=> d!926908 (=> (not res!1341972) (not e!2057909))))

(declare-fun semiInverseModEq!2198 (Int Int) Bool)

(assert (=> d!926908 (= res!1341972 (semiInverseModEq!2198 (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (toValue!7449 (transformation!5305 (rule!7809 separatorToken!241)))))))

(assert (=> d!926908 (= (inv!49523 (transformation!5305 (rule!7809 separatorToken!241))) e!2057909)))

(declare-fun b!3308739 () Bool)

(declare-fun equivClasses!2097 (Int Int) Bool)

(assert (=> b!3308739 (= e!2057909 (equivClasses!2097 (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (toValue!7449 (transformation!5305 (rule!7809 separatorToken!241)))))))

(assert (= (and d!926908 res!1341972) b!3308739))

(declare-fun m!3635847 () Bool)

(assert (=> d!926908 m!3635847))

(declare-fun m!3635849 () Bool)

(assert (=> b!3308739 m!3635849))

(assert (=> b!3308647 d!926908))

(declare-fun b!3308750 () Bool)

(declare-fun e!2057917 () Bool)

(declare-fun e!2057918 () Bool)

(assert (=> b!3308750 (= e!2057917 e!2057918)))

(declare-fun c!561180 () Bool)

(assert (=> b!3308750 (= c!561180 (is-IntegerValue!16606 (value!171654 (h!41966 tokens!494))))))

(declare-fun b!3308751 () Bool)

(declare-fun inv!17 (TokenValue!5535) Bool)

(assert (=> b!3308751 (= e!2057918 (inv!17 (value!171654 (h!41966 tokens!494))))))

(declare-fun b!3308752 () Bool)

(declare-fun e!2057916 () Bool)

(declare-fun inv!15 (TokenValue!5535) Bool)

(assert (=> b!3308752 (= e!2057916 (inv!15 (value!171654 (h!41966 tokens!494))))))

(declare-fun b!3308753 () Bool)

(declare-fun res!1341975 () Bool)

(assert (=> b!3308753 (=> res!1341975 e!2057916)))

(assert (=> b!3308753 (= res!1341975 (not (is-IntegerValue!16607 (value!171654 (h!41966 tokens!494)))))))

(assert (=> b!3308753 (= e!2057918 e!2057916)))

(declare-fun b!3308754 () Bool)

(declare-fun inv!16 (TokenValue!5535) Bool)

(assert (=> b!3308754 (= e!2057917 (inv!16 (value!171654 (h!41966 tokens!494))))))

(declare-fun d!926910 () Bool)

(declare-fun c!561179 () Bool)

(assert (=> d!926910 (= c!561179 (is-IntegerValue!16605 (value!171654 (h!41966 tokens!494))))))

(assert (=> d!926910 (= (inv!21 (value!171654 (h!41966 tokens!494))) e!2057917)))

(assert (= (and d!926910 c!561179) b!3308754))

(assert (= (and d!926910 (not c!561179)) b!3308750))

(assert (= (and b!3308750 c!561180) b!3308751))

(assert (= (and b!3308750 (not c!561180)) b!3308753))

(assert (= (and b!3308753 (not res!1341975)) b!3308752))

(declare-fun m!3635851 () Bool)

(assert (=> b!3308751 m!3635851))

(declare-fun m!3635853 () Bool)

(assert (=> b!3308752 m!3635853))

(declare-fun m!3635855 () Bool)

(assert (=> b!3308754 m!3635855))

(assert (=> b!3308658 d!926910))

(declare-fun d!926912 () Bool)

(declare-fun dynLambda!15003 (Int Token!9976) Bool)

(assert (=> d!926912 (dynLambda!15003 lambda!119162 (h!41966 (t!254031 tokens!494)))))

(declare-fun lt!1121575 () Unit!51465)

(declare-fun choose!19153 (List!36670 Int Token!9976) Unit!51465)

(assert (=> d!926912 (= lt!1121575 (choose!19153 tokens!494 lambda!119162 (h!41966 (t!254031 tokens!494))))))

(declare-fun e!2057921 () Bool)

(assert (=> d!926912 e!2057921))

(declare-fun res!1341980 () Bool)

(assert (=> d!926912 (=> (not res!1341980) (not e!2057921))))

(assert (=> d!926912 (= res!1341980 (forall!7588 tokens!494 lambda!119162))))

(assert (=> d!926912 (= (forallContained!1256 tokens!494 lambda!119162 (h!41966 (t!254031 tokens!494))) lt!1121575)))

(declare-fun b!3308757 () Bool)

(declare-fun contains!6606 (List!36670 Token!9976) Bool)

(assert (=> b!3308757 (= e!2057921 (contains!6606 tokens!494 (h!41966 (t!254031 tokens!494))))))

(assert (= (and d!926912 res!1341980) b!3308757))

(declare-fun b_lambda!92583 () Bool)

(assert (=> (not b_lambda!92583) (not d!926912)))

(declare-fun m!3635857 () Bool)

(assert (=> d!926912 m!3635857))

(declare-fun m!3635859 () Bool)

(assert (=> d!926912 m!3635859))

(assert (=> d!926912 m!3635713))

(declare-fun m!3635861 () Bool)

(assert (=> b!3308757 m!3635861))

(assert (=> b!3308657 d!926912))

(declare-fun d!926914 () Bool)

(assert (=> d!926914 (dynLambda!15003 lambda!119162 (h!41966 tokens!494))))

(declare-fun lt!1121576 () Unit!51465)

(assert (=> d!926914 (= lt!1121576 (choose!19153 tokens!494 lambda!119162 (h!41966 tokens!494)))))

(declare-fun e!2057922 () Bool)

(assert (=> d!926914 e!2057922))

(declare-fun res!1341981 () Bool)

(assert (=> d!926914 (=> (not res!1341981) (not e!2057922))))

(assert (=> d!926914 (= res!1341981 (forall!7588 tokens!494 lambda!119162))))

(assert (=> d!926914 (= (forallContained!1256 tokens!494 lambda!119162 (h!41966 tokens!494)) lt!1121576)))

(declare-fun b!3308758 () Bool)

(assert (=> b!3308758 (= e!2057922 (contains!6606 tokens!494 (h!41966 tokens!494)))))

(assert (= (and d!926914 res!1341981) b!3308758))

(declare-fun b_lambda!92585 () Bool)

(assert (=> (not b_lambda!92585) (not d!926914)))

(declare-fun m!3635863 () Bool)

(assert (=> d!926914 m!3635863))

(declare-fun m!3635865 () Bool)

(assert (=> d!926914 m!3635865))

(assert (=> d!926914 m!3635713))

(declare-fun m!3635867 () Bool)

(assert (=> b!3308758 m!3635867))

(assert (=> b!3308657 d!926914))

(declare-fun d!926916 () Bool)

(declare-fun lt!1121579 () Bool)

(declare-fun isEmpty!20694 (List!36670) Bool)

(declare-fun list!13122 (BalanceConc!21586) List!36670)

(assert (=> d!926916 (= lt!1121579 (isEmpty!20694 (list!13122 (_1!21150 (lex!2220 thiss!18206 rules!2135 (seqFromList!3666 lt!1121531))))))))

(declare-fun isEmpty!20695 (Conc!10986) Bool)

(assert (=> d!926916 (= lt!1121579 (isEmpty!20695 (c!561170 (_1!21150 (lex!2220 thiss!18206 rules!2135 (seqFromList!3666 lt!1121531))))))))

(assert (=> d!926916 (= (isEmpty!20691 (_1!21150 (lex!2220 thiss!18206 rules!2135 (seqFromList!3666 lt!1121531)))) lt!1121579)))

(declare-fun bs!549264 () Bool)

(assert (= bs!549264 d!926916))

(declare-fun m!3635869 () Bool)

(assert (=> bs!549264 m!3635869))

(assert (=> bs!549264 m!3635869))

(declare-fun m!3635871 () Bool)

(assert (=> bs!549264 m!3635871))

(declare-fun m!3635873 () Bool)

(assert (=> bs!549264 m!3635873))

(assert (=> b!3308659 d!926916))

(declare-fun e!2057929 () Bool)

(declare-fun lt!1121582 () tuple2!36032)

(declare-fun b!3308769 () Bool)

(declare-datatypes ((tuple2!36036 0))(
  ( (tuple2!36037 (_1!21152 List!36670) (_2!21152 List!36668)) )
))
(declare-fun lexList!1363 (LexerInterface!4894 List!36671 List!36668) tuple2!36036)

(assert (=> b!3308769 (= e!2057929 (= (list!13120 (_2!21150 lt!1121582)) (_2!21152 (lexList!1363 thiss!18206 rules!2135 (list!13120 (seqFromList!3666 lt!1121531))))))))

(declare-fun b!3308770 () Bool)

(declare-fun e!2057931 () Bool)

(declare-fun e!2057930 () Bool)

(assert (=> b!3308770 (= e!2057931 e!2057930)))

(declare-fun res!1341993 () Bool)

(declare-fun size!27612 (BalanceConc!21584) Int)

(assert (=> b!3308770 (= res!1341993 (< (size!27612 (_2!21150 lt!1121582)) (size!27612 (seqFromList!3666 lt!1121531))))))

(assert (=> b!3308770 (=> (not res!1341993) (not e!2057930))))

(declare-fun b!3308771 () Bool)

(assert (=> b!3308771 (= e!2057931 (= (_2!21150 lt!1121582) (seqFromList!3666 lt!1121531)))))

(declare-fun b!3308772 () Bool)

(declare-fun res!1341992 () Bool)

(assert (=> b!3308772 (=> (not res!1341992) (not e!2057929))))

(assert (=> b!3308772 (= res!1341992 (= (list!13122 (_1!21150 lt!1121582)) (_1!21152 (lexList!1363 thiss!18206 rules!2135 (list!13120 (seqFromList!3666 lt!1121531))))))))

(declare-fun b!3308773 () Bool)

(assert (=> b!3308773 (= e!2057930 (not (isEmpty!20691 (_1!21150 lt!1121582))))))

(declare-fun d!926918 () Bool)

(assert (=> d!926918 e!2057929))

(declare-fun res!1341994 () Bool)

(assert (=> d!926918 (=> (not res!1341994) (not e!2057929))))

(assert (=> d!926918 (= res!1341994 e!2057931)))

(declare-fun c!561183 () Bool)

(declare-fun size!27613 (BalanceConc!21586) Int)

(assert (=> d!926918 (= c!561183 (> (size!27613 (_1!21150 lt!1121582)) 0))))

(declare-fun lexTailRecV2!973 (LexerInterface!4894 List!36671 BalanceConc!21584 BalanceConc!21584 BalanceConc!21584 BalanceConc!21586) tuple2!36032)

(assert (=> d!926918 (= lt!1121582 (lexTailRecV2!973 thiss!18206 rules!2135 (seqFromList!3666 lt!1121531) (BalanceConc!21585 Empty!10985) (seqFromList!3666 lt!1121531) (BalanceConc!21587 Empty!10986)))))

(assert (=> d!926918 (= (lex!2220 thiss!18206 rules!2135 (seqFromList!3666 lt!1121531)) lt!1121582)))

(assert (= (and d!926918 c!561183) b!3308770))

(assert (= (and d!926918 (not c!561183)) b!3308771))

(assert (= (and b!3308770 res!1341993) b!3308773))

(assert (= (and d!926918 res!1341994) b!3308772))

(assert (= (and b!3308772 res!1341992) b!3308769))

(declare-fun m!3635875 () Bool)

(assert (=> b!3308770 m!3635875))

(assert (=> b!3308770 m!3635701))

(declare-fun m!3635877 () Bool)

(assert (=> b!3308770 m!3635877))

(declare-fun m!3635879 () Bool)

(assert (=> b!3308769 m!3635879))

(assert (=> b!3308769 m!3635701))

(declare-fun m!3635881 () Bool)

(assert (=> b!3308769 m!3635881))

(assert (=> b!3308769 m!3635881))

(declare-fun m!3635883 () Bool)

(assert (=> b!3308769 m!3635883))

(declare-fun m!3635885 () Bool)

(assert (=> b!3308773 m!3635885))

(declare-fun m!3635887 () Bool)

(assert (=> d!926918 m!3635887))

(assert (=> d!926918 m!3635701))

(assert (=> d!926918 m!3635701))

(declare-fun m!3635889 () Bool)

(assert (=> d!926918 m!3635889))

(declare-fun m!3635891 () Bool)

(assert (=> b!3308772 m!3635891))

(assert (=> b!3308772 m!3635701))

(assert (=> b!3308772 m!3635881))

(assert (=> b!3308772 m!3635881))

(assert (=> b!3308772 m!3635883))

(assert (=> b!3308659 d!926918))

(declare-fun d!926922 () Bool)

(declare-fun fromListB!1616 (List!36668) BalanceConc!21584)

(assert (=> d!926922 (= (seqFromList!3666 lt!1121531) (fromListB!1616 lt!1121531))))

(declare-fun bs!549265 () Bool)

(assert (= bs!549265 d!926922))

(declare-fun m!3635893 () Bool)

(assert (=> bs!549265 m!3635893))

(assert (=> b!3308659 d!926922))

(declare-fun d!926924 () Bool)

(declare-fun lt!1121587 () Bool)

(declare-fun e!2057936 () Bool)

(assert (=> d!926924 (= lt!1121587 e!2057936)))

(declare-fun res!1342003 () Bool)

(assert (=> d!926924 (=> (not res!1342003) (not e!2057936))))

(assert (=> d!926924 (= res!1342003 (= (list!13122 (_1!21150 (lex!2220 thiss!18206 rules!2135 (print!1959 thiss!18206 (singletonSeq!2401 separatorToken!241))))) (list!13122 (singletonSeq!2401 separatorToken!241))))))

(declare-fun e!2057937 () Bool)

(assert (=> d!926924 (= lt!1121587 e!2057937)))

(declare-fun res!1342002 () Bool)

(assert (=> d!926924 (=> (not res!1342002) (not e!2057937))))

(declare-fun lt!1121588 () tuple2!36032)

(assert (=> d!926924 (= res!1342002 (= (size!27613 (_1!21150 lt!1121588)) 1))))

(assert (=> d!926924 (= lt!1121588 (lex!2220 thiss!18206 rules!2135 (print!1959 thiss!18206 (singletonSeq!2401 separatorToken!241))))))

(assert (=> d!926924 (not (isEmpty!20690 rules!2135))))

(assert (=> d!926924 (= (rulesProduceIndividualToken!2386 thiss!18206 rules!2135 separatorToken!241) lt!1121587)))

(declare-fun b!3308780 () Bool)

(declare-fun res!1342001 () Bool)

(assert (=> b!3308780 (=> (not res!1342001) (not e!2057937))))

(declare-fun apply!8404 (BalanceConc!21586 Int) Token!9976)

(assert (=> b!3308780 (= res!1342001 (= (apply!8404 (_1!21150 lt!1121588) 0) separatorToken!241))))

(declare-fun b!3308781 () Bool)

(declare-fun isEmpty!20696 (BalanceConc!21584) Bool)

(assert (=> b!3308781 (= e!2057937 (isEmpty!20696 (_2!21150 lt!1121588)))))

(declare-fun b!3308782 () Bool)

(assert (=> b!3308782 (= e!2057936 (isEmpty!20696 (_2!21150 (lex!2220 thiss!18206 rules!2135 (print!1959 thiss!18206 (singletonSeq!2401 separatorToken!241))))))))

(assert (= (and d!926924 res!1342002) b!3308780))

(assert (= (and b!3308780 res!1342001) b!3308781))

(assert (= (and d!926924 res!1342003) b!3308782))

(declare-fun m!3635895 () Bool)

(assert (=> d!926924 m!3635895))

(declare-fun m!3635897 () Bool)

(assert (=> d!926924 m!3635897))

(assert (=> d!926924 m!3635895))

(declare-fun m!3635899 () Bool)

(assert (=> d!926924 m!3635899))

(assert (=> d!926924 m!3635895))

(declare-fun m!3635901 () Bool)

(assert (=> d!926924 m!3635901))

(assert (=> d!926924 m!3635721))

(declare-fun m!3635903 () Bool)

(assert (=> d!926924 m!3635903))

(assert (=> d!926924 m!3635901))

(declare-fun m!3635905 () Bool)

(assert (=> d!926924 m!3635905))

(declare-fun m!3635907 () Bool)

(assert (=> b!3308780 m!3635907))

(declare-fun m!3635909 () Bool)

(assert (=> b!3308781 m!3635909))

(assert (=> b!3308782 m!3635895))

(assert (=> b!3308782 m!3635895))

(assert (=> b!3308782 m!3635901))

(assert (=> b!3308782 m!3635901))

(assert (=> b!3308782 m!3635905))

(declare-fun m!3635911 () Bool)

(assert (=> b!3308782 m!3635911))

(assert (=> b!3308648 d!926924))

(declare-fun d!926926 () Bool)

(declare-fun list!13123 (Conc!10985) List!36668)

(assert (=> d!926926 (= (list!13120 (charsOf!3321 (h!41966 tokens!494))) (list!13123 (c!561169 (charsOf!3321 (h!41966 tokens!494)))))))

(declare-fun bs!549266 () Bool)

(assert (= bs!549266 d!926926))

(declare-fun m!3635913 () Bool)

(assert (=> bs!549266 m!3635913))

(assert (=> b!3308637 d!926926))

(declare-fun d!926928 () Bool)

(declare-fun lt!1121591 () BalanceConc!21584)

(assert (=> d!926928 (= (list!13120 lt!1121591) (originalCharacters!6019 (h!41966 tokens!494)))))

(declare-fun dynLambda!15004 (Int TokenValue!5535) BalanceConc!21584)

(assert (=> d!926928 (= lt!1121591 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (value!171654 (h!41966 tokens!494))))))

(assert (=> d!926928 (= (charsOf!3321 (h!41966 tokens!494)) lt!1121591)))

(declare-fun b_lambda!92587 () Bool)

(assert (=> (not b_lambda!92587) (not d!926928)))

(declare-fun t!254043 () Bool)

(declare-fun tb!171875 () Bool)

(assert (=> (and b!3308639 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494))))) t!254043) tb!171875))

(declare-fun b!3308787 () Bool)

(declare-fun e!2057940 () Bool)

(declare-fun tp!1036253 () Bool)

(declare-fun inv!49527 (Conc!10985) Bool)

(assert (=> b!3308787 (= e!2057940 (and (inv!49527 (c!561169 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (value!171654 (h!41966 tokens!494))))) tp!1036253))))

(declare-fun result!214784 () Bool)

(declare-fun inv!49528 (BalanceConc!21584) Bool)

(assert (=> tb!171875 (= result!214784 (and (inv!49528 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (value!171654 (h!41966 tokens!494)))) e!2057940))))

(assert (= tb!171875 b!3308787))

(declare-fun m!3635915 () Bool)

(assert (=> b!3308787 m!3635915))

(declare-fun m!3635917 () Bool)

(assert (=> tb!171875 m!3635917))

(assert (=> d!926928 t!254043))

(declare-fun b_and!227007 () Bool)

(assert (= b_and!226985 (and (=> t!254043 result!214784) b_and!227007)))

(declare-fun t!254045 () Bool)

(declare-fun tb!171877 () Bool)

(assert (=> (and b!3308644 (= (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494))))) t!254045) tb!171877))

(declare-fun result!214788 () Bool)

(assert (= result!214788 result!214784))

(assert (=> d!926928 t!254045))

(declare-fun b_and!227009 () Bool)

(assert (= b_and!226989 (and (=> t!254045 result!214788) b_and!227009)))

(declare-fun tb!171879 () Bool)

(declare-fun t!254047 () Bool)

(assert (=> (and b!3308656 (= (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494))))) t!254047) tb!171879))

(declare-fun result!214790 () Bool)

(assert (= result!214790 result!214784))

(assert (=> d!926928 t!254047))

(declare-fun b_and!227011 () Bool)

(assert (= b_and!226993 (and (=> t!254047 result!214790) b_and!227011)))

(declare-fun m!3635919 () Bool)

(assert (=> d!926928 m!3635919))

(declare-fun m!3635921 () Bool)

(assert (=> d!926928 m!3635921))

(assert (=> b!3308637 d!926928))

(declare-fun d!926930 () Bool)

(declare-fun lt!1121594 () BalanceConc!21584)

(assert (=> d!926930 (= (list!13120 lt!1121594) (printList!1444 thiss!18206 (list!13122 lt!1121536)))))

(assert (=> d!926930 (= lt!1121594 (printTailRec!1391 thiss!18206 lt!1121536 0 (BalanceConc!21585 Empty!10985)))))

(assert (=> d!926930 (= (print!1959 thiss!18206 lt!1121536) lt!1121594)))

(declare-fun bs!549267 () Bool)

(assert (= bs!549267 d!926930))

(declare-fun m!3635923 () Bool)

(assert (=> bs!549267 m!3635923))

(declare-fun m!3635925 () Bool)

(assert (=> bs!549267 m!3635925))

(assert (=> bs!549267 m!3635925))

(declare-fun m!3635927 () Bool)

(assert (=> bs!549267 m!3635927))

(assert (=> bs!549267 m!3635687))

(assert (=> b!3308655 d!926930))

(declare-fun d!926932 () Bool)

(declare-fun lt!1121612 () BalanceConc!21584)

(declare-fun printListTailRec!605 (LexerInterface!4894 List!36670 List!36668) List!36668)

(declare-fun dropList!1122 (BalanceConc!21586 Int) List!36670)

(assert (=> d!926932 (= (list!13120 lt!1121612) (printListTailRec!605 thiss!18206 (dropList!1122 lt!1121536 0) (list!13120 (BalanceConc!21585 Empty!10985))))))

(declare-fun e!2057946 () BalanceConc!21584)

(assert (=> d!926932 (= lt!1121612 e!2057946)))

(declare-fun c!561186 () Bool)

(assert (=> d!926932 (= c!561186 (>= 0 (size!27613 lt!1121536)))))

(declare-fun e!2057945 () Bool)

(assert (=> d!926932 e!2057945))

(declare-fun res!1342006 () Bool)

(assert (=> d!926932 (=> (not res!1342006) (not e!2057945))))

(assert (=> d!926932 (= res!1342006 (>= 0 0))))

(assert (=> d!926932 (= (printTailRec!1391 thiss!18206 lt!1121536 0 (BalanceConc!21585 Empty!10985)) lt!1121612)))

(declare-fun b!3308794 () Bool)

(assert (=> b!3308794 (= e!2057945 (<= 0 (size!27613 lt!1121536)))))

(declare-fun b!3308795 () Bool)

(assert (=> b!3308795 (= e!2057946 (BalanceConc!21585 Empty!10985))))

(declare-fun b!3308796 () Bool)

(declare-fun ++!8858 (BalanceConc!21584 BalanceConc!21584) BalanceConc!21584)

(assert (=> b!3308796 (= e!2057946 (printTailRec!1391 thiss!18206 lt!1121536 (+ 0 1) (++!8858 (BalanceConc!21585 Empty!10985) (charsOf!3321 (apply!8404 lt!1121536 0)))))))

(declare-fun lt!1121613 () List!36670)

(assert (=> b!3308796 (= lt!1121613 (list!13122 lt!1121536))))

(declare-fun lt!1121615 () Unit!51465)

(declare-fun lemmaDropApply!1080 (List!36670 Int) Unit!51465)

(assert (=> b!3308796 (= lt!1121615 (lemmaDropApply!1080 lt!1121613 0))))

(declare-fun head!7136 (List!36670) Token!9976)

(declare-fun drop!1912 (List!36670 Int) List!36670)

(declare-fun apply!8405 (List!36670 Int) Token!9976)

(assert (=> b!3308796 (= (head!7136 (drop!1912 lt!1121613 0)) (apply!8405 lt!1121613 0))))

(declare-fun lt!1121609 () Unit!51465)

(assert (=> b!3308796 (= lt!1121609 lt!1121615)))

(declare-fun lt!1121610 () List!36670)

(assert (=> b!3308796 (= lt!1121610 (list!13122 lt!1121536))))

(declare-fun lt!1121611 () Unit!51465)

(declare-fun lemmaDropTail!964 (List!36670 Int) Unit!51465)

(assert (=> b!3308796 (= lt!1121611 (lemmaDropTail!964 lt!1121610 0))))

(declare-fun tail!5274 (List!36670) List!36670)

(assert (=> b!3308796 (= (tail!5274 (drop!1912 lt!1121610 0)) (drop!1912 lt!1121610 (+ 0 1)))))

(declare-fun lt!1121614 () Unit!51465)

(assert (=> b!3308796 (= lt!1121614 lt!1121611)))

(assert (= (and d!926932 res!1342006) b!3308794))

(assert (= (and d!926932 c!561186) b!3308795))

(assert (= (and d!926932 (not c!561186)) b!3308796))

(declare-fun m!3635929 () Bool)

(assert (=> d!926932 m!3635929))

(declare-fun m!3635931 () Bool)

(assert (=> d!926932 m!3635931))

(declare-fun m!3635933 () Bool)

(assert (=> d!926932 m!3635933))

(assert (=> d!926932 m!3635933))

(assert (=> d!926932 m!3635931))

(declare-fun m!3635935 () Bool)

(assert (=> d!926932 m!3635935))

(declare-fun m!3635937 () Bool)

(assert (=> d!926932 m!3635937))

(assert (=> b!3308794 m!3635937))

(declare-fun m!3635939 () Bool)

(assert (=> b!3308796 m!3635939))

(declare-fun m!3635941 () Bool)

(assert (=> b!3308796 m!3635941))

(declare-fun m!3635943 () Bool)

(assert (=> b!3308796 m!3635943))

(declare-fun m!3635945 () Bool)

(assert (=> b!3308796 m!3635945))

(declare-fun m!3635947 () Bool)

(assert (=> b!3308796 m!3635947))

(assert (=> b!3308796 m!3635925))

(assert (=> b!3308796 m!3635941))

(declare-fun m!3635949 () Bool)

(assert (=> b!3308796 m!3635949))

(declare-fun m!3635951 () Bool)

(assert (=> b!3308796 m!3635951))

(declare-fun m!3635953 () Bool)

(assert (=> b!3308796 m!3635953))

(assert (=> b!3308796 m!3635951))

(declare-fun m!3635955 () Bool)

(assert (=> b!3308796 m!3635955))

(assert (=> b!3308796 m!3635939))

(declare-fun m!3635957 () Bool)

(assert (=> b!3308796 m!3635957))

(declare-fun m!3635959 () Bool)

(assert (=> b!3308796 m!3635959))

(declare-fun m!3635961 () Bool)

(assert (=> b!3308796 m!3635961))

(assert (=> b!3308796 m!3635955))

(assert (=> b!3308796 m!3635943))

(assert (=> b!3308655 d!926932))

(declare-fun d!926934 () Bool)

(assert (=> d!926934 (= (list!13120 lt!1121534) (list!13123 (c!561169 lt!1121534)))))

(declare-fun bs!549268 () Bool)

(assert (= bs!549268 d!926934))

(declare-fun m!3635963 () Bool)

(assert (=> bs!549268 m!3635963))

(assert (=> b!3308655 d!926934))

(declare-fun d!926936 () Bool)

(declare-fun e!2057949 () Bool)

(assert (=> d!926936 e!2057949))

(declare-fun res!1342009 () Bool)

(assert (=> d!926936 (=> (not res!1342009) (not e!2057949))))

(declare-fun lt!1121618 () BalanceConc!21586)

(assert (=> d!926936 (= res!1342009 (= (list!13122 lt!1121618) (Cons!36546 (h!41966 tokens!494) Nil!36546)))))

(declare-fun singleton!1037 (Token!9976) BalanceConc!21586)

(assert (=> d!926936 (= lt!1121618 (singleton!1037 (h!41966 tokens!494)))))

(assert (=> d!926936 (= (singletonSeq!2401 (h!41966 tokens!494)) lt!1121618)))

(declare-fun b!3308799 () Bool)

(declare-fun isBalanced!3290 (Conc!10986) Bool)

(assert (=> b!3308799 (= e!2057949 (isBalanced!3290 (c!561170 lt!1121618)))))

(assert (= (and d!926936 res!1342009) b!3308799))

(declare-fun m!3635965 () Bool)

(assert (=> d!926936 m!3635965))

(declare-fun m!3635967 () Bool)

(assert (=> d!926936 m!3635967))

(declare-fun m!3635969 () Bool)

(assert (=> b!3308799 m!3635969))

(assert (=> b!3308655 d!926936))

(declare-fun d!926938 () Bool)

(declare-fun c!561189 () Bool)

(assert (=> d!926938 (= c!561189 (is-Cons!36546 (Cons!36546 (h!41966 tokens!494) Nil!36546)))))

(declare-fun e!2057952 () List!36668)

(assert (=> d!926938 (= (printList!1444 thiss!18206 (Cons!36546 (h!41966 tokens!494) Nil!36546)) e!2057952)))

(declare-fun b!3308804 () Bool)

(assert (=> b!3308804 (= e!2057952 (++!8856 (list!13120 (charsOf!3321 (h!41966 (Cons!36546 (h!41966 tokens!494) Nil!36546)))) (printList!1444 thiss!18206 (t!254031 (Cons!36546 (h!41966 tokens!494) Nil!36546)))))))

(declare-fun b!3308805 () Bool)

(assert (=> b!3308805 (= e!2057952 Nil!36544)))

(assert (= (and d!926938 c!561189) b!3308804))

(assert (= (and d!926938 (not c!561189)) b!3308805))

(declare-fun m!3635971 () Bool)

(assert (=> b!3308804 m!3635971))

(assert (=> b!3308804 m!3635971))

(declare-fun m!3635973 () Bool)

(assert (=> b!3308804 m!3635973))

(declare-fun m!3635975 () Bool)

(assert (=> b!3308804 m!3635975))

(assert (=> b!3308804 m!3635973))

(assert (=> b!3308804 m!3635975))

(declare-fun m!3635977 () Bool)

(assert (=> b!3308804 m!3635977))

(assert (=> b!3308655 d!926938))

(declare-fun bs!549271 () Bool)

(declare-fun d!926940 () Bool)

(assert (= bs!549271 (and d!926940 b!3308643)))

(declare-fun lambda!119179 () Int)

(assert (=> bs!549271 (not (= lambda!119179 lambda!119162))))

(declare-fun b!3308835 () Bool)

(declare-fun e!2057976 () Bool)

(assert (=> b!3308835 (= e!2057976 true)))

(declare-fun b!3308834 () Bool)

(declare-fun e!2057975 () Bool)

(assert (=> b!3308834 (= e!2057975 e!2057976)))

(declare-fun b!3308833 () Bool)

(declare-fun e!2057974 () Bool)

(assert (=> b!3308833 (= e!2057974 e!2057975)))

(assert (=> d!926940 e!2057974))

(assert (= b!3308834 b!3308835))

(assert (= b!3308833 b!3308834))

(assert (= (and d!926940 (is-Cons!36547 rules!2135)) b!3308833))

(declare-fun order!19029 () Int)

(declare-fun order!19031 () Int)

(declare-fun dynLambda!15005 (Int Int) Int)

(declare-fun dynLambda!15006 (Int Int) Int)

(assert (=> b!3308835 (< (dynLambda!15005 order!19029 (toValue!7449 (transformation!5305 (h!41967 rules!2135)))) (dynLambda!15006 order!19031 lambda!119179))))

(declare-fun order!19033 () Int)

(declare-fun dynLambda!15007 (Int Int) Int)

(assert (=> b!3308835 (< (dynLambda!15007 order!19033 (toChars!7308 (transformation!5305 (h!41967 rules!2135)))) (dynLambda!15006 order!19031 lambda!119179))))

(assert (=> d!926940 true))

(declare-fun e!2057967 () Bool)

(assert (=> d!926940 e!2057967))

(declare-fun res!1342015 () Bool)

(assert (=> d!926940 (=> (not res!1342015) (not e!2057967))))

(declare-fun lt!1121624 () Bool)

(assert (=> d!926940 (= res!1342015 (= lt!1121624 (forall!7588 (list!13122 (seqFromList!3665 tokens!494)) lambda!119179)))))

(declare-fun forall!7590 (BalanceConc!21586 Int) Bool)

(assert (=> d!926940 (= lt!1121624 (forall!7590 (seqFromList!3665 tokens!494) lambda!119179))))

(assert (=> d!926940 (not (isEmpty!20690 rules!2135))))

(assert (=> d!926940 (= (rulesProduceEachTokenIndividually!1345 thiss!18206 rules!2135 (seqFromList!3665 tokens!494)) lt!1121624)))

(declare-fun b!3308824 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1770 (LexerInterface!4894 List!36671 List!36670) Bool)

(assert (=> b!3308824 (= e!2057967 (= lt!1121624 (rulesProduceEachTokenIndividuallyList!1770 thiss!18206 rules!2135 (list!13122 (seqFromList!3665 tokens!494)))))))

(assert (= (and d!926940 res!1342015) b!3308824))

(assert (=> d!926940 m!3635753))

(declare-fun m!3635989 () Bool)

(assert (=> d!926940 m!3635989))

(assert (=> d!926940 m!3635989))

(declare-fun m!3635991 () Bool)

(assert (=> d!926940 m!3635991))

(assert (=> d!926940 m!3635753))

(declare-fun m!3635993 () Bool)

(assert (=> d!926940 m!3635993))

(assert (=> d!926940 m!3635721))

(assert (=> b!3308824 m!3635753))

(assert (=> b!3308824 m!3635989))

(assert (=> b!3308824 m!3635989))

(declare-fun m!3635995 () Bool)

(assert (=> b!3308824 m!3635995))

(assert (=> b!3308646 d!926940))

(declare-fun d!926946 () Bool)

(declare-fun fromListB!1617 (List!36670) BalanceConc!21586)

(assert (=> d!926946 (= (seqFromList!3665 tokens!494) (fromListB!1617 tokens!494))))

(declare-fun bs!549272 () Bool)

(assert (= bs!549272 d!926946))

(declare-fun m!3635997 () Bool)

(assert (=> bs!549272 m!3635997))

(assert (=> b!3308646 d!926946))

(declare-fun d!926948 () Bool)

(declare-fun res!1342020 () Bool)

(declare-fun e!2057979 () Bool)

(assert (=> d!926948 (=> (not res!1342020) (not e!2057979))))

(declare-fun isEmpty!20697 (List!36668) Bool)

(assert (=> d!926948 (= res!1342020 (not (isEmpty!20697 (originalCharacters!6019 separatorToken!241))))))

(assert (=> d!926948 (= (inv!49524 separatorToken!241) e!2057979)))

(declare-fun b!3308842 () Bool)

(declare-fun res!1342021 () Bool)

(assert (=> b!3308842 (=> (not res!1342021) (not e!2057979))))

(assert (=> b!3308842 (= res!1342021 (= (originalCharacters!6019 separatorToken!241) (list!13120 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (value!171654 separatorToken!241)))))))

(declare-fun b!3308843 () Bool)

(declare-fun size!27614 (List!36668) Int)

(assert (=> b!3308843 (= e!2057979 (= (size!27610 separatorToken!241) (size!27614 (originalCharacters!6019 separatorToken!241))))))

(assert (= (and d!926948 res!1342020) b!3308842))

(assert (= (and b!3308842 res!1342021) b!3308843))

(declare-fun b_lambda!92589 () Bool)

(assert (=> (not b_lambda!92589) (not b!3308842)))

(declare-fun tb!171881 () Bool)

(declare-fun t!254058 () Bool)

(assert (=> (and b!3308639 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241)))) t!254058) tb!171881))

(declare-fun b!3308844 () Bool)

(declare-fun e!2057980 () Bool)

(declare-fun tp!1036254 () Bool)

(assert (=> b!3308844 (= e!2057980 (and (inv!49527 (c!561169 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (value!171654 separatorToken!241)))) tp!1036254))))

(declare-fun result!214792 () Bool)

(assert (=> tb!171881 (= result!214792 (and (inv!49528 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (value!171654 separatorToken!241))) e!2057980))))

(assert (= tb!171881 b!3308844))

(declare-fun m!3635999 () Bool)

(assert (=> b!3308844 m!3635999))

(declare-fun m!3636001 () Bool)

(assert (=> tb!171881 m!3636001))

(assert (=> b!3308842 t!254058))

(declare-fun b_and!227013 () Bool)

(assert (= b_and!227007 (and (=> t!254058 result!214792) b_and!227013)))

(declare-fun t!254060 () Bool)

(declare-fun tb!171883 () Bool)

(assert (=> (and b!3308644 (= (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241)))) t!254060) tb!171883))

(declare-fun result!214794 () Bool)

(assert (= result!214794 result!214792))

(assert (=> b!3308842 t!254060))

(declare-fun b_and!227015 () Bool)

(assert (= b_and!227009 (and (=> t!254060 result!214794) b_and!227015)))

(declare-fun t!254062 () Bool)

(declare-fun tb!171885 () Bool)

(assert (=> (and b!3308656 (= (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241)))) t!254062) tb!171885))

(declare-fun result!214796 () Bool)

(assert (= result!214796 result!214792))

(assert (=> b!3308842 t!254062))

(declare-fun b_and!227017 () Bool)

(assert (= b_and!227011 (and (=> t!254062 result!214796) b_and!227017)))

(declare-fun m!3636003 () Bool)

(assert (=> d!926948 m!3636003))

(declare-fun m!3636005 () Bool)

(assert (=> b!3308842 m!3636005))

(assert (=> b!3308842 m!3636005))

(declare-fun m!3636007 () Bool)

(assert (=> b!3308842 m!3636007))

(declare-fun m!3636009 () Bool)

(assert (=> b!3308843 m!3636009))

(assert (=> start!308496 d!926948))

(declare-fun d!926950 () Bool)

(assert (=> d!926950 (= (isEmpty!20690 rules!2135) (is-Nil!36547 rules!2135))))

(assert (=> b!3308642 d!926950))

(declare-fun d!926952 () Bool)

(declare-fun res!1342024 () Bool)

(declare-fun e!2057983 () Bool)

(assert (=> d!926952 (=> (not res!1342024) (not e!2057983))))

(declare-fun rulesValid!1958 (LexerInterface!4894 List!36671) Bool)

(assert (=> d!926952 (= res!1342024 (rulesValid!1958 thiss!18206 rules!2135))))

(assert (=> d!926952 (= (rulesInvariant!4291 thiss!18206 rules!2135) e!2057983)))

(declare-fun b!3308847 () Bool)

(declare-datatypes ((List!36676 0))(
  ( (Nil!36552) (Cons!36552 (h!41972 String!41011) (t!254088 List!36676)) )
))
(declare-fun noDuplicateTag!1954 (LexerInterface!4894 List!36671 List!36676) Bool)

(assert (=> b!3308847 (= e!2057983 (noDuplicateTag!1954 thiss!18206 rules!2135 Nil!36552))))

(assert (= (and d!926952 res!1342024) b!3308847))

(declare-fun m!3636011 () Bool)

(assert (=> d!926952 m!3636011))

(declare-fun m!3636013 () Bool)

(assert (=> b!3308847 m!3636013))

(assert (=> b!3308641 d!926952))

(declare-fun d!926954 () Bool)

(assert (=> d!926954 (= (inv!49520 (tag!5851 (rule!7809 (h!41966 tokens!494)))) (= (mod (str.len (value!171653 (tag!5851 (rule!7809 (h!41966 tokens!494))))) 2) 0))))

(assert (=> b!3308652 d!926954))

(declare-fun d!926956 () Bool)

(declare-fun res!1342025 () Bool)

(declare-fun e!2057984 () Bool)

(assert (=> d!926956 (=> (not res!1342025) (not e!2057984))))

(assert (=> d!926956 (= res!1342025 (semiInverseModEq!2198 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (toValue!7449 (transformation!5305 (rule!7809 (h!41966 tokens!494))))))))

(assert (=> d!926956 (= (inv!49523 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) e!2057984)))

(declare-fun b!3308848 () Bool)

(assert (=> b!3308848 (= e!2057984 (equivClasses!2097 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (toValue!7449 (transformation!5305 (rule!7809 (h!41966 tokens!494))))))))

(assert (= (and d!926956 res!1342025) b!3308848))

(declare-fun m!3636015 () Bool)

(assert (=> d!926956 m!3636015))

(declare-fun m!3636017 () Bool)

(assert (=> b!3308848 m!3636017))

(assert (=> b!3308652 d!926956))

(declare-fun d!926958 () Bool)

(declare-fun res!1342030 () Bool)

(declare-fun e!2057989 () Bool)

(assert (=> d!926958 (=> res!1342030 e!2057989)))

(assert (=> d!926958 (= res!1342030 (is-Nil!36546 tokens!494))))

(assert (=> d!926958 (= (forall!7588 tokens!494 lambda!119162) e!2057989)))

(declare-fun b!3308853 () Bool)

(declare-fun e!2057990 () Bool)

(assert (=> b!3308853 (= e!2057989 e!2057990)))

(declare-fun res!1342031 () Bool)

(assert (=> b!3308853 (=> (not res!1342031) (not e!2057990))))

(assert (=> b!3308853 (= res!1342031 (dynLambda!15003 lambda!119162 (h!41966 tokens!494)))))

(declare-fun b!3308854 () Bool)

(assert (=> b!3308854 (= e!2057990 (forall!7588 (t!254031 tokens!494) lambda!119162))))

(assert (= (and d!926958 (not res!1342030)) b!3308853))

(assert (= (and b!3308853 res!1342031) b!3308854))

(declare-fun b_lambda!92591 () Bool)

(assert (=> (not b_lambda!92591) (not b!3308853)))

(assert (=> b!3308853 m!3635863))

(declare-fun m!3636019 () Bool)

(assert (=> b!3308854 m!3636019))

(assert (=> b!3308643 d!926958))

(declare-fun b!3308863 () Bool)

(declare-fun e!2057995 () List!36668)

(assert (=> b!3308863 (= e!2057995 lt!1121535)))

(declare-fun b!3308864 () Bool)

(assert (=> b!3308864 (= e!2057995 (Cons!36544 (h!41964 (++!8856 lt!1121531 lt!1121539)) (++!8856 (t!254029 (++!8856 lt!1121531 lt!1121539)) lt!1121535)))))

(declare-fun lt!1121627 () List!36668)

(declare-fun b!3308866 () Bool)

(declare-fun e!2057996 () Bool)

(assert (=> b!3308866 (= e!2057996 (or (not (= lt!1121535 Nil!36544)) (= lt!1121627 (++!8856 lt!1121531 lt!1121539))))))

(declare-fun d!926960 () Bool)

(assert (=> d!926960 e!2057996))

(declare-fun res!1342036 () Bool)

(assert (=> d!926960 (=> (not res!1342036) (not e!2057996))))

(declare-fun content!4976 (List!36668) (Set C!20314))

(assert (=> d!926960 (= res!1342036 (= (content!4976 lt!1121627) (set.union (content!4976 (++!8856 lt!1121531 lt!1121539)) (content!4976 lt!1121535))))))

(assert (=> d!926960 (= lt!1121627 e!2057995)))

(declare-fun c!561192 () Bool)

(assert (=> d!926960 (= c!561192 (is-Nil!36544 (++!8856 lt!1121531 lt!1121539)))))

(assert (=> d!926960 (= (++!8856 (++!8856 lt!1121531 lt!1121539) lt!1121535) lt!1121627)))

(declare-fun b!3308865 () Bool)

(declare-fun res!1342037 () Bool)

(assert (=> b!3308865 (=> (not res!1342037) (not e!2057996))))

(assert (=> b!3308865 (= res!1342037 (= (size!27614 lt!1121627) (+ (size!27614 (++!8856 lt!1121531 lt!1121539)) (size!27614 lt!1121535))))))

(assert (= (and d!926960 c!561192) b!3308863))

(assert (= (and d!926960 (not c!561192)) b!3308864))

(assert (= (and d!926960 res!1342036) b!3308865))

(assert (= (and b!3308865 res!1342037) b!3308866))

(declare-fun m!3636021 () Bool)

(assert (=> b!3308864 m!3636021))

(declare-fun m!3636023 () Bool)

(assert (=> d!926960 m!3636023))

(assert (=> d!926960 m!3635757))

(declare-fun m!3636025 () Bool)

(assert (=> d!926960 m!3636025))

(declare-fun m!3636027 () Bool)

(assert (=> d!926960 m!3636027))

(declare-fun m!3636029 () Bool)

(assert (=> b!3308865 m!3636029))

(assert (=> b!3308865 m!3635757))

(declare-fun m!3636031 () Bool)

(assert (=> b!3308865 m!3636031))

(declare-fun m!3636033 () Bool)

(assert (=> b!3308865 m!3636033))

(assert (=> b!3308654 d!926960))

(declare-fun b!3308867 () Bool)

(declare-fun e!2057997 () List!36668)

(assert (=> b!3308867 (= e!2057997 lt!1121539)))

(declare-fun b!3308868 () Bool)

(assert (=> b!3308868 (= e!2057997 (Cons!36544 (h!41964 lt!1121531) (++!8856 (t!254029 lt!1121531) lt!1121539)))))

(declare-fun lt!1121628 () List!36668)

(declare-fun e!2057998 () Bool)

(declare-fun b!3308870 () Bool)

(assert (=> b!3308870 (= e!2057998 (or (not (= lt!1121539 Nil!36544)) (= lt!1121628 lt!1121531)))))

(declare-fun d!926962 () Bool)

(assert (=> d!926962 e!2057998))

(declare-fun res!1342038 () Bool)

(assert (=> d!926962 (=> (not res!1342038) (not e!2057998))))

(assert (=> d!926962 (= res!1342038 (= (content!4976 lt!1121628) (set.union (content!4976 lt!1121531) (content!4976 lt!1121539))))))

(assert (=> d!926962 (= lt!1121628 e!2057997)))

(declare-fun c!561193 () Bool)

(assert (=> d!926962 (= c!561193 (is-Nil!36544 lt!1121531))))

(assert (=> d!926962 (= (++!8856 lt!1121531 lt!1121539) lt!1121628)))

(declare-fun b!3308869 () Bool)

(declare-fun res!1342039 () Bool)

(assert (=> b!3308869 (=> (not res!1342039) (not e!2057998))))

(assert (=> b!3308869 (= res!1342039 (= (size!27614 lt!1121628) (+ (size!27614 lt!1121531) (size!27614 lt!1121539))))))

(assert (= (and d!926962 c!561193) b!3308867))

(assert (= (and d!926962 (not c!561193)) b!3308868))

(assert (= (and d!926962 res!1342038) b!3308869))

(assert (= (and b!3308869 res!1342039) b!3308870))

(declare-fun m!3636035 () Bool)

(assert (=> b!3308868 m!3636035))

(declare-fun m!3636037 () Bool)

(assert (=> d!926962 m!3636037))

(declare-fun m!3636039 () Bool)

(assert (=> d!926962 m!3636039))

(declare-fun m!3636041 () Bool)

(assert (=> d!926962 m!3636041))

(declare-fun m!3636043 () Bool)

(assert (=> b!3308869 m!3636043))

(declare-fun m!3636045 () Bool)

(assert (=> b!3308869 m!3636045))

(declare-fun m!3636047 () Bool)

(assert (=> b!3308869 m!3636047))

(assert (=> b!3308654 d!926962))

(declare-fun d!926964 () Bool)

(assert (=> d!926964 (= (inv!49520 (tag!5851 (h!41967 rules!2135))) (= (mod (str.len (value!171653 (tag!5851 (h!41967 rules!2135)))) 2) 0))))

(assert (=> b!3308650 d!926964))

(declare-fun d!926966 () Bool)

(declare-fun res!1342040 () Bool)

(declare-fun e!2057999 () Bool)

(assert (=> d!926966 (=> (not res!1342040) (not e!2057999))))

(assert (=> d!926966 (= res!1342040 (semiInverseModEq!2198 (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toValue!7449 (transformation!5305 (h!41967 rules!2135)))))))

(assert (=> d!926966 (= (inv!49523 (transformation!5305 (h!41967 rules!2135))) e!2057999)))

(declare-fun b!3308871 () Bool)

(assert (=> b!3308871 (= e!2057999 (equivClasses!2097 (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toValue!7449 (transformation!5305 (h!41967 rules!2135)))))))

(assert (= (and d!926966 res!1342040) b!3308871))

(declare-fun m!3636049 () Bool)

(assert (=> d!926966 m!3636049))

(declare-fun m!3636051 () Bool)

(assert (=> b!3308871 m!3636051))

(assert (=> b!3308650 d!926966))

(declare-fun d!926968 () Bool)

(declare-fun c!561196 () Bool)

(assert (=> d!926968 (= c!561196 (is-Cons!36546 tokens!494))))

(declare-fun e!2058002 () List!36668)

(assert (=> d!926968 (= (printWithSeparatorTokenList!205 thiss!18206 tokens!494 separatorToken!241) e!2058002)))

(declare-fun b!3308876 () Bool)

(assert (=> b!3308876 (= e!2058002 (++!8856 (++!8856 (list!13120 (charsOf!3321 (h!41966 tokens!494))) (list!13120 (charsOf!3321 separatorToken!241))) (printWithSeparatorTokenList!205 thiss!18206 (t!254031 tokens!494) separatorToken!241)))))

(declare-fun b!3308877 () Bool)

(assert (=> b!3308877 (= e!2058002 Nil!36544)))

(assert (= (and d!926968 c!561196) b!3308876))

(assert (= (and d!926968 (not c!561196)) b!3308877))

(assert (=> b!3308876 m!3635735))

(assert (=> b!3308876 m!3635751))

(declare-fun m!3636053 () Bool)

(assert (=> b!3308876 m!3636053))

(assert (=> b!3308876 m!3635739))

(declare-fun m!3636055 () Bool)

(assert (=> b!3308876 m!3636055))

(assert (=> b!3308876 m!3635739))

(assert (=> b!3308876 m!3635695))

(assert (=> b!3308876 m!3635697))

(assert (=> b!3308876 m!3635751))

(assert (=> b!3308876 m!3636053))

(assert (=> b!3308876 m!3635695))

(assert (=> b!3308876 m!3635697))

(assert (=> b!3308876 m!3635735))

(assert (=> b!3308649 d!926968))

(declare-fun d!926970 () Bool)

(declare-fun lt!1121629 () BalanceConc!21584)

(assert (=> d!926970 (= (list!13120 lt!1121629) (originalCharacters!6019 separatorToken!241))))

(assert (=> d!926970 (= lt!1121629 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (value!171654 separatorToken!241)))))

(assert (=> d!926970 (= (charsOf!3321 separatorToken!241) lt!1121629)))

(declare-fun b_lambda!92593 () Bool)

(assert (=> (not b_lambda!92593) (not d!926970)))

(assert (=> d!926970 t!254058))

(declare-fun b_and!227019 () Bool)

(assert (= b_and!227013 (and (=> t!254058 result!214792) b_and!227019)))

(assert (=> d!926970 t!254060))

(declare-fun b_and!227021 () Bool)

(assert (= b_and!227015 (and (=> t!254060 result!214794) b_and!227021)))

(assert (=> d!926970 t!254062))

(declare-fun b_and!227023 () Bool)

(assert (= b_and!227017 (and (=> t!254062 result!214796) b_and!227023)))

(declare-fun m!3636057 () Bool)

(assert (=> d!926970 m!3636057))

(assert (=> d!926970 m!3636005))

(assert (=> b!3308649 d!926970))

(declare-fun b!3308878 () Bool)

(declare-fun e!2058003 () List!36668)

(assert (=> b!3308878 (= e!2058003 (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241))))

(declare-fun b!3308879 () Bool)

(assert (=> b!3308879 (= e!2058003 (Cons!36544 (h!41964 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539)) (++!8856 (t!254029 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539)) (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241))))))

(declare-fun b!3308881 () Bool)

(declare-fun e!2058004 () Bool)

(declare-fun lt!1121630 () List!36668)

(assert (=> b!3308881 (= e!2058004 (or (not (= (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241) Nil!36544)) (= lt!1121630 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539))))))

(declare-fun d!926972 () Bool)

(assert (=> d!926972 e!2058004))

(declare-fun res!1342041 () Bool)

(assert (=> d!926972 (=> (not res!1342041) (not e!2058004))))

(assert (=> d!926972 (= res!1342041 (= (content!4976 lt!1121630) (set.union (content!4976 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539)) (content!4976 (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241)))))))

(assert (=> d!926972 (= lt!1121630 e!2058003)))

(declare-fun c!561197 () Bool)

(assert (=> d!926972 (= c!561197 (is-Nil!36544 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539)))))

(assert (=> d!926972 (= (++!8856 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539) (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241)) lt!1121630)))

(declare-fun b!3308880 () Bool)

(declare-fun res!1342042 () Bool)

(assert (=> b!3308880 (=> (not res!1342042) (not e!2058004))))

(assert (=> b!3308880 (= res!1342042 (= (size!27614 lt!1121630) (+ (size!27614 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539)) (size!27614 (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241)))))))

(assert (= (and d!926972 c!561197) b!3308878))

(assert (= (and d!926972 (not c!561197)) b!3308879))

(assert (= (and d!926972 res!1342041) b!3308880))

(assert (= (and b!3308880 res!1342042) b!3308881))

(assert (=> b!3308879 m!3635745))

(declare-fun m!3636059 () Bool)

(assert (=> b!3308879 m!3636059))

(declare-fun m!3636061 () Bool)

(assert (=> d!926972 m!3636061))

(assert (=> d!926972 m!3635747))

(declare-fun m!3636063 () Bool)

(assert (=> d!926972 m!3636063))

(assert (=> d!926972 m!3635745))

(declare-fun m!3636065 () Bool)

(assert (=> d!926972 m!3636065))

(declare-fun m!3636067 () Bool)

(assert (=> b!3308880 m!3636067))

(assert (=> b!3308880 m!3635747))

(declare-fun m!3636069 () Bool)

(assert (=> b!3308880 m!3636069))

(assert (=> b!3308880 m!3635745))

(declare-fun m!3636071 () Bool)

(assert (=> b!3308880 m!3636071))

(assert (=> b!3308649 d!926972))

(declare-fun d!926974 () Bool)

(declare-fun c!561198 () Bool)

(assert (=> d!926974 (= c!561198 (is-Cons!36546 (t!254031 (t!254031 tokens!494))))))

(declare-fun e!2058005 () List!36668)

(assert (=> d!926974 (= (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241) e!2058005)))

(declare-fun b!3308882 () Bool)

(assert (=> b!3308882 (= e!2058005 (++!8856 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 (t!254031 tokens!494))))) (list!13120 (charsOf!3321 separatorToken!241))) (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 (t!254031 tokens!494))) separatorToken!241)))))

(declare-fun b!3308883 () Bool)

(assert (=> b!3308883 (= e!2058005 Nil!36544)))

(assert (= (and d!926974 c!561198) b!3308882))

(assert (= (and d!926974 (not c!561198)) b!3308883))

(assert (=> b!3308882 m!3635735))

(assert (=> b!3308882 m!3635751))

(declare-fun m!3636073 () Bool)

(assert (=> b!3308882 m!3636073))

(declare-fun m!3636075 () Bool)

(assert (=> b!3308882 m!3636075))

(declare-fun m!3636077 () Bool)

(assert (=> b!3308882 m!3636077))

(assert (=> b!3308882 m!3636075))

(declare-fun m!3636079 () Bool)

(assert (=> b!3308882 m!3636079))

(declare-fun m!3636081 () Bool)

(assert (=> b!3308882 m!3636081))

(assert (=> b!3308882 m!3635751))

(assert (=> b!3308882 m!3636073))

(assert (=> b!3308882 m!3636079))

(assert (=> b!3308882 m!3636081))

(assert (=> b!3308882 m!3635735))

(assert (=> b!3308649 d!926974))

(declare-fun d!926976 () Bool)

(declare-fun c!561199 () Bool)

(assert (=> d!926976 (= c!561199 (is-Cons!36546 (t!254031 tokens!494)))))

(declare-fun e!2058006 () List!36668)

(assert (=> d!926976 (= (printWithSeparatorTokenList!205 thiss!18206 (t!254031 tokens!494) separatorToken!241) e!2058006)))

(declare-fun b!3308884 () Bool)

(assert (=> b!3308884 (= e!2058006 (++!8856 (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) (list!13120 (charsOf!3321 separatorToken!241))) (printWithSeparatorTokenList!205 thiss!18206 (t!254031 (t!254031 tokens!494)) separatorToken!241)))))

(declare-fun b!3308885 () Bool)

(assert (=> b!3308885 (= e!2058006 Nil!36544)))

(assert (= (and d!926976 c!561199) b!3308884))

(assert (= (and d!926976 (not c!561199)) b!3308885))

(assert (=> b!3308884 m!3635735))

(assert (=> b!3308884 m!3635751))

(declare-fun m!3636083 () Bool)

(assert (=> b!3308884 m!3636083))

(assert (=> b!3308884 m!3635745))

(declare-fun m!3636085 () Bool)

(assert (=> b!3308884 m!3636085))

(assert (=> b!3308884 m!3635745))

(assert (=> b!3308884 m!3635733))

(assert (=> b!3308884 m!3635741))

(assert (=> b!3308884 m!3635751))

(assert (=> b!3308884 m!3636083))

(assert (=> b!3308884 m!3635733))

(assert (=> b!3308884 m!3635741))

(assert (=> b!3308884 m!3635735))

(assert (=> b!3308649 d!926976))

(declare-fun d!926978 () Bool)

(assert (=> d!926978 (= (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) (list!13123 (c!561169 (charsOf!3321 (h!41966 (t!254031 tokens!494))))))))

(declare-fun bs!549273 () Bool)

(assert (= bs!549273 d!926978))

(declare-fun m!3636087 () Bool)

(assert (=> bs!549273 m!3636087))

(assert (=> b!3308649 d!926978))

(declare-fun b!3308886 () Bool)

(declare-fun e!2058007 () List!36668)

(assert (=> b!3308886 (= e!2058007 lt!1121535)))

(declare-fun b!3308887 () Bool)

(assert (=> b!3308887 (= e!2058007 (Cons!36544 (h!41964 lt!1121539) (++!8856 (t!254029 lt!1121539) lt!1121535)))))

(declare-fun e!2058008 () Bool)

(declare-fun b!3308889 () Bool)

(declare-fun lt!1121631 () List!36668)

(assert (=> b!3308889 (= e!2058008 (or (not (= lt!1121535 Nil!36544)) (= lt!1121631 lt!1121539)))))

(declare-fun d!926980 () Bool)

(assert (=> d!926980 e!2058008))

(declare-fun res!1342043 () Bool)

(assert (=> d!926980 (=> (not res!1342043) (not e!2058008))))

(assert (=> d!926980 (= res!1342043 (= (content!4976 lt!1121631) (set.union (content!4976 lt!1121539) (content!4976 lt!1121535))))))

(assert (=> d!926980 (= lt!1121631 e!2058007)))

(declare-fun c!561200 () Bool)

(assert (=> d!926980 (= c!561200 (is-Nil!36544 lt!1121539))))

(assert (=> d!926980 (= (++!8856 lt!1121539 lt!1121535) lt!1121631)))

(declare-fun b!3308888 () Bool)

(declare-fun res!1342044 () Bool)

(assert (=> b!3308888 (=> (not res!1342044) (not e!2058008))))

(assert (=> b!3308888 (= res!1342044 (= (size!27614 lt!1121631) (+ (size!27614 lt!1121539) (size!27614 lt!1121535))))))

(assert (= (and d!926980 c!561200) b!3308886))

(assert (= (and d!926980 (not c!561200)) b!3308887))

(assert (= (and d!926980 res!1342043) b!3308888))

(assert (= (and b!3308888 res!1342044) b!3308889))

(declare-fun m!3636089 () Bool)

(assert (=> b!3308887 m!3636089))

(declare-fun m!3636091 () Bool)

(assert (=> d!926980 m!3636091))

(assert (=> d!926980 m!3636041))

(assert (=> d!926980 m!3636027))

(declare-fun m!3636093 () Bool)

(assert (=> b!3308888 m!3636093))

(assert (=> b!3308888 m!3636047))

(assert (=> b!3308888 m!3636033))

(assert (=> b!3308649 d!926980))

(declare-fun b!3308890 () Bool)

(declare-fun e!2058009 () List!36668)

(assert (=> b!3308890 (= e!2058009 lt!1121539)))

(declare-fun b!3308891 () Bool)

(assert (=> b!3308891 (= e!2058009 (Cons!36544 (h!41964 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494))))) (++!8856 (t!254029 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494))))) lt!1121539)))))

(declare-fun e!2058010 () Bool)

(declare-fun lt!1121632 () List!36668)

(declare-fun b!3308893 () Bool)

(assert (=> b!3308893 (= e!2058010 (or (not (= lt!1121539 Nil!36544)) (= lt!1121632 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))))))))

(declare-fun d!926982 () Bool)

(assert (=> d!926982 e!2058010))

(declare-fun res!1342045 () Bool)

(assert (=> d!926982 (=> (not res!1342045) (not e!2058010))))

(assert (=> d!926982 (= res!1342045 (= (content!4976 lt!1121632) (set.union (content!4976 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494))))) (content!4976 lt!1121539))))))

(assert (=> d!926982 (= lt!1121632 e!2058009)))

(declare-fun c!561201 () Bool)

(assert (=> d!926982 (= c!561201 (is-Nil!36544 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494))))))))

(assert (=> d!926982 (= (++!8856 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494)))) lt!1121539) lt!1121632)))

(declare-fun b!3308892 () Bool)

(declare-fun res!1342046 () Bool)

(assert (=> b!3308892 (=> (not res!1342046) (not e!2058010))))

(assert (=> b!3308892 (= res!1342046 (= (size!27614 lt!1121632) (+ (size!27614 (list!13120 (charsOf!3321 (h!41966 (t!254031 tokens!494))))) (size!27614 lt!1121539))))))

(assert (= (and d!926982 c!561201) b!3308890))

(assert (= (and d!926982 (not c!561201)) b!3308891))

(assert (= (and d!926982 res!1342045) b!3308892))

(assert (= (and b!3308892 res!1342046) b!3308893))

(declare-fun m!3636095 () Bool)

(assert (=> b!3308891 m!3636095))

(declare-fun m!3636097 () Bool)

(assert (=> d!926982 m!3636097))

(assert (=> d!926982 m!3635741))

(declare-fun m!3636099 () Bool)

(assert (=> d!926982 m!3636099))

(assert (=> d!926982 m!3636041))

(declare-fun m!3636101 () Bool)

(assert (=> b!3308892 m!3636101))

(assert (=> b!3308892 m!3635741))

(declare-fun m!3636103 () Bool)

(assert (=> b!3308892 m!3636103))

(assert (=> b!3308892 m!3636047))

(assert (=> b!3308649 d!926982))

(declare-fun d!926984 () Bool)

(assert (=> d!926984 (= (list!13120 (charsOf!3321 separatorToken!241)) (list!13123 (c!561169 (charsOf!3321 separatorToken!241))))))

(declare-fun bs!549274 () Bool)

(assert (= bs!549274 d!926984))

(declare-fun m!3636105 () Bool)

(assert (=> bs!549274 m!3636105))

(assert (=> b!3308649 d!926984))

(declare-fun d!926986 () Bool)

(declare-fun lt!1121633 () BalanceConc!21584)

(assert (=> d!926986 (= (list!13120 lt!1121633) (originalCharacters!6019 (h!41966 (t!254031 tokens!494))))))

(assert (=> d!926986 (= lt!1121633 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (value!171654 (h!41966 (t!254031 tokens!494)))))))

(assert (=> d!926986 (= (charsOf!3321 (h!41966 (t!254031 tokens!494))) lt!1121633)))

(declare-fun b_lambda!92595 () Bool)

(assert (=> (not b_lambda!92595) (not d!926986)))

(declare-fun t!254064 () Bool)

(declare-fun tb!171887 () Bool)

(assert (=> (and b!3308639 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494)))))) t!254064) tb!171887))

(declare-fun b!3308894 () Bool)

(declare-fun e!2058011 () Bool)

(declare-fun tp!1036255 () Bool)

(assert (=> b!3308894 (= e!2058011 (and (inv!49527 (c!561169 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (value!171654 (h!41966 (t!254031 tokens!494)))))) tp!1036255))))

(declare-fun result!214798 () Bool)

(assert (=> tb!171887 (= result!214798 (and (inv!49528 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (value!171654 (h!41966 (t!254031 tokens!494))))) e!2058011))))

(assert (= tb!171887 b!3308894))

(declare-fun m!3636107 () Bool)

(assert (=> b!3308894 m!3636107))

(declare-fun m!3636109 () Bool)

(assert (=> tb!171887 m!3636109))

(assert (=> d!926986 t!254064))

(declare-fun b_and!227025 () Bool)

(assert (= b_and!227019 (and (=> t!254064 result!214798) b_and!227025)))

(declare-fun t!254066 () Bool)

(declare-fun tb!171889 () Bool)

(assert (=> (and b!3308644 (= (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494)))))) t!254066) tb!171889))

(declare-fun result!214800 () Bool)

(assert (= result!214800 result!214798))

(assert (=> d!926986 t!254066))

(declare-fun b_and!227027 () Bool)

(assert (= b_and!227021 (and (=> t!254066 result!214800) b_and!227027)))

(declare-fun t!254068 () Bool)

(declare-fun tb!171891 () Bool)

(assert (=> (and b!3308656 (= (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494)))))) t!254068) tb!171891))

(declare-fun result!214802 () Bool)

(assert (= result!214802 result!214798))

(assert (=> d!926986 t!254068))

(declare-fun b_and!227029 () Bool)

(assert (= b_and!227023 (and (=> t!254068 result!214802) b_and!227029)))

(declare-fun m!3636111 () Bool)

(assert (=> d!926986 m!3636111))

(declare-fun m!3636113 () Bool)

(assert (=> d!926986 m!3636113))

(assert (=> b!3308649 d!926986))

(declare-fun d!926988 () Bool)

(declare-fun lt!1121634 () Bool)

(declare-fun e!2058012 () Bool)

(assert (=> d!926988 (= lt!1121634 e!2058012)))

(declare-fun res!1342049 () Bool)

(assert (=> d!926988 (=> (not res!1342049) (not e!2058012))))

(assert (=> d!926988 (= res!1342049 (= (list!13122 (_1!21150 (lex!2220 thiss!18206 rules!2135 (print!1959 thiss!18206 (singletonSeq!2401 (h!41966 tokens!494)))))) (list!13122 (singletonSeq!2401 (h!41966 tokens!494)))))))

(declare-fun e!2058013 () Bool)

(assert (=> d!926988 (= lt!1121634 e!2058013)))

(declare-fun res!1342048 () Bool)

(assert (=> d!926988 (=> (not res!1342048) (not e!2058013))))

(declare-fun lt!1121635 () tuple2!36032)

(assert (=> d!926988 (= res!1342048 (= (size!27613 (_1!21150 lt!1121635)) 1))))

(assert (=> d!926988 (= lt!1121635 (lex!2220 thiss!18206 rules!2135 (print!1959 thiss!18206 (singletonSeq!2401 (h!41966 tokens!494)))))))

(assert (=> d!926988 (not (isEmpty!20690 rules!2135))))

(assert (=> d!926988 (= (rulesProduceIndividualToken!2386 thiss!18206 rules!2135 (h!41966 tokens!494)) lt!1121634)))

(declare-fun b!3308895 () Bool)

(declare-fun res!1342047 () Bool)

(assert (=> b!3308895 (=> (not res!1342047) (not e!2058013))))

(assert (=> b!3308895 (= res!1342047 (= (apply!8404 (_1!21150 lt!1121635) 0) (h!41966 tokens!494)))))

(declare-fun b!3308896 () Bool)

(assert (=> b!3308896 (= e!2058013 (isEmpty!20696 (_2!21150 lt!1121635)))))

(declare-fun b!3308897 () Bool)

(assert (=> b!3308897 (= e!2058012 (isEmpty!20696 (_2!21150 (lex!2220 thiss!18206 rules!2135 (print!1959 thiss!18206 (singletonSeq!2401 (h!41966 tokens!494)))))))))

(assert (= (and d!926988 res!1342048) b!3308895))

(assert (= (and b!3308895 res!1342047) b!3308896))

(assert (= (and d!926988 res!1342049) b!3308897))

(assert (=> d!926988 m!3635689))

(declare-fun m!3636115 () Bool)

(assert (=> d!926988 m!3636115))

(assert (=> d!926988 m!3635689))

(declare-fun m!3636117 () Bool)

(assert (=> d!926988 m!3636117))

(assert (=> d!926988 m!3635689))

(declare-fun m!3636119 () Bool)

(assert (=> d!926988 m!3636119))

(assert (=> d!926988 m!3635721))

(declare-fun m!3636121 () Bool)

(assert (=> d!926988 m!3636121))

(assert (=> d!926988 m!3636119))

(declare-fun m!3636123 () Bool)

(assert (=> d!926988 m!3636123))

(declare-fun m!3636125 () Bool)

(assert (=> b!3308895 m!3636125))

(declare-fun m!3636127 () Bool)

(assert (=> b!3308896 m!3636127))

(assert (=> b!3308897 m!3635689))

(assert (=> b!3308897 m!3635689))

(assert (=> b!3308897 m!3636119))

(assert (=> b!3308897 m!3636119))

(assert (=> b!3308897 m!3636123))

(declare-fun m!3636129 () Bool)

(assert (=> b!3308897 m!3636129))

(assert (=> b!3308660 d!926988))

(declare-fun d!926990 () Bool)

(declare-fun res!1342050 () Bool)

(declare-fun e!2058014 () Bool)

(assert (=> d!926990 (=> (not res!1342050) (not e!2058014))))

(assert (=> d!926990 (= res!1342050 (not (isEmpty!20697 (originalCharacters!6019 (h!41966 tokens!494)))))))

(assert (=> d!926990 (= (inv!49524 (h!41966 tokens!494)) e!2058014)))

(declare-fun b!3308898 () Bool)

(declare-fun res!1342051 () Bool)

(assert (=> b!3308898 (=> (not res!1342051) (not e!2058014))))

(assert (=> b!3308898 (= res!1342051 (= (originalCharacters!6019 (h!41966 tokens!494)) (list!13120 (dynLambda!15004 (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (value!171654 (h!41966 tokens!494))))))))

(declare-fun b!3308899 () Bool)

(assert (=> b!3308899 (= e!2058014 (= (size!27610 (h!41966 tokens!494)) (size!27614 (originalCharacters!6019 (h!41966 tokens!494)))))))

(assert (= (and d!926990 res!1342050) b!3308898))

(assert (= (and b!3308898 res!1342051) b!3308899))

(declare-fun b_lambda!92597 () Bool)

(assert (=> (not b_lambda!92597) (not b!3308898)))

(assert (=> b!3308898 t!254043))

(declare-fun b_and!227031 () Bool)

(assert (= b_and!227025 (and (=> t!254043 result!214784) b_and!227031)))

(assert (=> b!3308898 t!254045))

(declare-fun b_and!227033 () Bool)

(assert (= b_and!227027 (and (=> t!254045 result!214788) b_and!227033)))

(assert (=> b!3308898 t!254047))

(declare-fun b_and!227035 () Bool)

(assert (= b_and!227029 (and (=> t!254047 result!214790) b_and!227035)))

(declare-fun m!3636131 () Bool)

(assert (=> d!926990 m!3636131))

(assert (=> b!3308898 m!3635921))

(assert (=> b!3308898 m!3635921))

(declare-fun m!3636133 () Bool)

(assert (=> b!3308898 m!3636133))

(declare-fun m!3636135 () Bool)

(assert (=> b!3308899 m!3636135))

(assert (=> b!3308651 d!926990))

(declare-fun d!926992 () Bool)

(declare-fun res!1342056 () Bool)

(declare-fun e!2058019 () Bool)

(assert (=> d!926992 (=> res!1342056 e!2058019)))

(assert (=> d!926992 (= res!1342056 (not (is-Cons!36547 rules!2135)))))

(assert (=> d!926992 (= (sepAndNonSepRulesDisjointChars!1499 rules!2135 rules!2135) e!2058019)))

(declare-fun b!3308904 () Bool)

(declare-fun e!2058020 () Bool)

(assert (=> b!3308904 (= e!2058019 e!2058020)))

(declare-fun res!1342057 () Bool)

(assert (=> b!3308904 (=> (not res!1342057) (not e!2058020))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!634 (Rule!10410 List!36671) Bool)

(assert (=> b!3308904 (= res!1342057 (ruleDisjointCharsFromAllFromOtherType!634 (h!41967 rules!2135) rules!2135))))

(declare-fun b!3308905 () Bool)

(assert (=> b!3308905 (= e!2058020 (sepAndNonSepRulesDisjointChars!1499 rules!2135 (t!254032 rules!2135)))))

(assert (= (and d!926992 (not res!1342056)) b!3308904))

(assert (= (and b!3308904 res!1342057) b!3308905))

(declare-fun m!3636137 () Bool)

(assert (=> b!3308904 m!3636137))

(declare-fun m!3636139 () Bool)

(assert (=> b!3308905 m!3636139))

(assert (=> b!3308640 d!926992))

(declare-fun b!3308906 () Bool)

(declare-fun e!2058022 () Bool)

(declare-fun e!2058023 () Bool)

(assert (=> b!3308906 (= e!2058022 e!2058023)))

(declare-fun c!561203 () Bool)

(assert (=> b!3308906 (= c!561203 (is-IntegerValue!16606 (value!171654 separatorToken!241)))))

(declare-fun b!3308907 () Bool)

(assert (=> b!3308907 (= e!2058023 (inv!17 (value!171654 separatorToken!241)))))

(declare-fun b!3308908 () Bool)

(declare-fun e!2058021 () Bool)

(assert (=> b!3308908 (= e!2058021 (inv!15 (value!171654 separatorToken!241)))))

(declare-fun b!3308909 () Bool)

(declare-fun res!1342058 () Bool)

(assert (=> b!3308909 (=> res!1342058 e!2058021)))

(assert (=> b!3308909 (= res!1342058 (not (is-IntegerValue!16607 (value!171654 separatorToken!241))))))

(assert (=> b!3308909 (= e!2058023 e!2058021)))

(declare-fun b!3308910 () Bool)

(assert (=> b!3308910 (= e!2058022 (inv!16 (value!171654 separatorToken!241)))))

(declare-fun d!926994 () Bool)

(declare-fun c!561202 () Bool)

(assert (=> d!926994 (= c!561202 (is-IntegerValue!16605 (value!171654 separatorToken!241)))))

(assert (=> d!926994 (= (inv!21 (value!171654 separatorToken!241)) e!2058022)))

(assert (= (and d!926994 c!561202) b!3308910))

(assert (= (and d!926994 (not c!561202)) b!3308906))

(assert (= (and b!3308906 c!561203) b!3308907))

(assert (= (and b!3308906 (not c!561203)) b!3308909))

(assert (= (and b!3308909 (not res!1342058)) b!3308908))

(declare-fun m!3636141 () Bool)

(assert (=> b!3308907 m!3636141))

(declare-fun m!3636143 () Bool)

(assert (=> b!3308908 m!3636143))

(declare-fun m!3636145 () Bool)

(assert (=> b!3308910 m!3636145))

(assert (=> b!3308661 d!926994))

(declare-fun b!3308924 () Bool)

(declare-fun e!2058026 () Bool)

(declare-fun tp!1036266 () Bool)

(declare-fun tp!1036268 () Bool)

(assert (=> b!3308924 (= e!2058026 (and tp!1036266 tp!1036268))))

(declare-fun b!3308922 () Bool)

(declare-fun tp!1036269 () Bool)

(declare-fun tp!1036270 () Bool)

(assert (=> b!3308922 (= e!2058026 (and tp!1036269 tp!1036270))))

(declare-fun b!3308923 () Bool)

(declare-fun tp!1036267 () Bool)

(assert (=> b!3308923 (= e!2058026 tp!1036267)))

(declare-fun b!3308921 () Bool)

(declare-fun tp_is_empty!17387 () Bool)

(assert (=> b!3308921 (= e!2058026 tp_is_empty!17387)))

(assert (=> b!3308647 (= tp!1036203 e!2058026)))

(assert (= (and b!3308647 (is-ElementMatch!10064 (regex!5305 (rule!7809 separatorToken!241)))) b!3308921))

(assert (= (and b!3308647 (is-Concat!15599 (regex!5305 (rule!7809 separatorToken!241)))) b!3308922))

(assert (= (and b!3308647 (is-Star!10064 (regex!5305 (rule!7809 separatorToken!241)))) b!3308923))

(assert (= (and b!3308647 (is-Union!10064 (regex!5305 (rule!7809 separatorToken!241)))) b!3308924))

(declare-fun b!3308929 () Bool)

(declare-fun e!2058029 () Bool)

(declare-fun tp!1036273 () Bool)

(assert (=> b!3308929 (= e!2058029 (and tp_is_empty!17387 tp!1036273))))

(assert (=> b!3308658 (= tp!1036206 e!2058029)))

(assert (= (and b!3308658 (is-Cons!36544 (originalCharacters!6019 (h!41966 tokens!494)))) b!3308929))

(declare-fun b!3308933 () Bool)

(declare-fun e!2058030 () Bool)

(declare-fun tp!1036274 () Bool)

(declare-fun tp!1036276 () Bool)

(assert (=> b!3308933 (= e!2058030 (and tp!1036274 tp!1036276))))

(declare-fun b!3308931 () Bool)

(declare-fun tp!1036277 () Bool)

(declare-fun tp!1036278 () Bool)

(assert (=> b!3308931 (= e!2058030 (and tp!1036277 tp!1036278))))

(declare-fun b!3308932 () Bool)

(declare-fun tp!1036275 () Bool)

(assert (=> b!3308932 (= e!2058030 tp!1036275)))

(declare-fun b!3308930 () Bool)

(assert (=> b!3308930 (= e!2058030 tp_is_empty!17387)))

(assert (=> b!3308652 (= tp!1036211 e!2058030)))

(assert (= (and b!3308652 (is-ElementMatch!10064 (regex!5305 (rule!7809 (h!41966 tokens!494))))) b!3308930))

(assert (= (and b!3308652 (is-Concat!15599 (regex!5305 (rule!7809 (h!41966 tokens!494))))) b!3308931))

(assert (= (and b!3308652 (is-Star!10064 (regex!5305 (rule!7809 (h!41966 tokens!494))))) b!3308932))

(assert (= (and b!3308652 (is-Union!10064 (regex!5305 (rule!7809 (h!41966 tokens!494))))) b!3308933))

(declare-fun b!3308937 () Bool)

(declare-fun e!2058031 () Bool)

(declare-fun tp!1036279 () Bool)

(declare-fun tp!1036281 () Bool)

(assert (=> b!3308937 (= e!2058031 (and tp!1036279 tp!1036281))))

(declare-fun b!3308935 () Bool)

(declare-fun tp!1036282 () Bool)

(declare-fun tp!1036283 () Bool)

(assert (=> b!3308935 (= e!2058031 (and tp!1036282 tp!1036283))))

(declare-fun b!3308936 () Bool)

(declare-fun tp!1036280 () Bool)

(assert (=> b!3308936 (= e!2058031 tp!1036280)))

(declare-fun b!3308934 () Bool)

(assert (=> b!3308934 (= e!2058031 tp_is_empty!17387)))

(assert (=> b!3308650 (= tp!1036200 e!2058031)))

(assert (= (and b!3308650 (is-ElementMatch!10064 (regex!5305 (h!41967 rules!2135)))) b!3308934))

(assert (= (and b!3308650 (is-Concat!15599 (regex!5305 (h!41967 rules!2135)))) b!3308935))

(assert (= (and b!3308650 (is-Star!10064 (regex!5305 (h!41967 rules!2135)))) b!3308936))

(assert (= (and b!3308650 (is-Union!10064 (regex!5305 (h!41967 rules!2135)))) b!3308937))

(declare-fun b!3308951 () Bool)

(declare-fun b_free!87101 () Bool)

(declare-fun b_next!87805 () Bool)

(assert (=> b!3308951 (= b_free!87101 (not b_next!87805))))

(declare-fun tp!1036298 () Bool)

(declare-fun b_and!227037 () Bool)

(assert (=> b!3308951 (= tp!1036298 b_and!227037)))

(declare-fun b_free!87103 () Bool)

(declare-fun b_next!87807 () Bool)

(assert (=> b!3308951 (= b_free!87103 (not b_next!87807))))

(declare-fun t!254070 () Bool)

(declare-fun tb!171893 () Bool)

(assert (=> (and b!3308951 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494))))) t!254070) tb!171893))

(declare-fun result!214810 () Bool)

(assert (= result!214810 result!214784))

(assert (=> d!926928 t!254070))

(declare-fun t!254072 () Bool)

(declare-fun tb!171895 () Bool)

(assert (=> (and b!3308951 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241)))) t!254072) tb!171895))

(declare-fun result!214812 () Bool)

(assert (= result!214812 result!214792))

(assert (=> b!3308842 t!254072))

(assert (=> d!926970 t!254072))

(declare-fun t!254074 () Bool)

(declare-fun tb!171897 () Bool)

(assert (=> (and b!3308951 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494)))))) t!254074) tb!171897))

(declare-fun result!214814 () Bool)

(assert (= result!214814 result!214798))

(assert (=> d!926986 t!254074))

(assert (=> b!3308898 t!254070))

(declare-fun b_and!227039 () Bool)

(declare-fun tp!1036294 () Bool)

(assert (=> b!3308951 (= tp!1036294 (and (=> t!254074 result!214814) (=> t!254070 result!214810) (=> t!254072 result!214812) b_and!227039))))

(declare-fun b!3308949 () Bool)

(declare-fun e!2058047 () Bool)

(declare-fun e!2058046 () Bool)

(declare-fun tp!1036295 () Bool)

(assert (=> b!3308949 (= e!2058046 (and (inv!21 (value!171654 (h!41966 (t!254031 tokens!494)))) e!2058047 tp!1036295))))

(declare-fun e!2058048 () Bool)

(declare-fun tp!1036297 () Bool)

(declare-fun b!3308948 () Bool)

(assert (=> b!3308948 (= e!2058048 (and (inv!49524 (h!41966 (t!254031 tokens!494))) e!2058046 tp!1036297))))

(declare-fun e!2058045 () Bool)

(assert (=> b!3308951 (= e!2058045 (and tp!1036298 tp!1036294))))

(assert (=> b!3308651 (= tp!1036205 e!2058048)))

(declare-fun b!3308950 () Bool)

(declare-fun tp!1036296 () Bool)

(assert (=> b!3308950 (= e!2058047 (and tp!1036296 (inv!49520 (tag!5851 (rule!7809 (h!41966 (t!254031 tokens!494))))) (inv!49523 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) e!2058045))))

(assert (= b!3308950 b!3308951))

(assert (= b!3308949 b!3308950))

(assert (= b!3308948 b!3308949))

(assert (= (and b!3308651 (is-Cons!36546 (t!254031 tokens!494))) b!3308948))

(declare-fun m!3636147 () Bool)

(assert (=> b!3308949 m!3636147))

(declare-fun m!3636149 () Bool)

(assert (=> b!3308948 m!3636149))

(declare-fun m!3636151 () Bool)

(assert (=> b!3308950 m!3636151))

(declare-fun m!3636153 () Bool)

(assert (=> b!3308950 m!3636153))

(declare-fun b!3308952 () Bool)

(declare-fun e!2058050 () Bool)

(declare-fun tp!1036299 () Bool)

(assert (=> b!3308952 (= e!2058050 (and tp_is_empty!17387 tp!1036299))))

(assert (=> b!3308661 (= tp!1036207 e!2058050)))

(assert (= (and b!3308661 (is-Cons!36544 (originalCharacters!6019 separatorToken!241))) b!3308952))

(declare-fun b!3308969 () Bool)

(declare-fun b_free!87105 () Bool)

(declare-fun b_next!87809 () Bool)

(assert (=> b!3308969 (= b_free!87105 (not b_next!87809))))

(declare-fun tp!1036310 () Bool)

(declare-fun b_and!227041 () Bool)

(assert (=> b!3308969 (= tp!1036310 b_and!227041)))

(declare-fun b_free!87107 () Bool)

(declare-fun b_next!87811 () Bool)

(assert (=> b!3308969 (= b_free!87107 (not b_next!87811))))

(declare-fun t!254077 () Bool)

(declare-fun tb!171899 () Bool)

(assert (=> (and b!3308969 (= (toChars!7308 (transformation!5305 (h!41967 (t!254032 rules!2135)))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494))))) t!254077) tb!171899))

(declare-fun result!214818 () Bool)

(assert (= result!214818 result!214784))

(assert (=> d!926928 t!254077))

(declare-fun t!254079 () Bool)

(declare-fun tb!171901 () Bool)

(assert (=> (and b!3308969 (= (toChars!7308 (transformation!5305 (h!41967 (t!254032 rules!2135)))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241)))) t!254079) tb!171901))

(declare-fun result!214820 () Bool)

(assert (= result!214820 result!214792))

(assert (=> b!3308842 t!254079))

(assert (=> d!926970 t!254079))

(declare-fun t!254081 () Bool)

(declare-fun tb!171903 () Bool)

(assert (=> (and b!3308969 (= (toChars!7308 (transformation!5305 (h!41967 (t!254032 rules!2135)))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494)))))) t!254081) tb!171903))

(declare-fun result!214822 () Bool)

(assert (= result!214822 result!214798))

(assert (=> d!926986 t!254081))

(assert (=> b!3308898 t!254077))

(declare-fun b_and!227043 () Bool)

(declare-fun tp!1036309 () Bool)

(assert (=> b!3308969 (= tp!1036309 (and (=> t!254077 result!214818) (=> t!254079 result!214820) (=> t!254081 result!214822) b_and!227043))))

(declare-fun e!2058063 () Bool)

(assert (=> b!3308969 (= e!2058063 (and tp!1036310 tp!1036309))))

(declare-fun b!3308968 () Bool)

(declare-fun tp!1036311 () Bool)

(declare-fun e!2058064 () Bool)

(assert (=> b!3308968 (= e!2058064 (and tp!1036311 (inv!49520 (tag!5851 (h!41967 (t!254032 rules!2135)))) (inv!49523 (transformation!5305 (h!41967 (t!254032 rules!2135)))) e!2058063))))

(declare-fun b!3308967 () Bool)

(declare-fun e!2058066 () Bool)

(declare-fun tp!1036308 () Bool)

(assert (=> b!3308967 (= e!2058066 (and e!2058064 tp!1036308))))

(assert (=> b!3308645 (= tp!1036201 e!2058066)))

(assert (= b!3308968 b!3308969))

(assert (= b!3308967 b!3308968))

(assert (= (and b!3308645 (is-Cons!36547 (t!254032 rules!2135))) b!3308967))

(declare-fun m!3636155 () Bool)

(assert (=> b!3308968 m!3636155))

(declare-fun m!3636157 () Bool)

(assert (=> b!3308968 m!3636157))

(declare-fun b_lambda!92599 () Bool)

(assert (= b_lambda!92583 (or b!3308643 b_lambda!92599)))

(declare-fun bs!549275 () Bool)

(declare-fun d!926996 () Bool)

(assert (= bs!549275 (and d!926996 b!3308643)))

(assert (=> bs!549275 (= (dynLambda!15003 lambda!119162 (h!41966 (t!254031 tokens!494))) (not (isSeparator!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))))))

(assert (=> d!926912 d!926996))

(declare-fun b_lambda!92601 () Bool)

(assert (= b_lambda!92593 (or (and b!3308951 b_free!87103 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))))) (and b!3308656 b_free!87087 (= (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))))) (and b!3308969 b_free!87107 (= (toChars!7308 (transformation!5305 (h!41967 (t!254032 rules!2135)))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))))) (and b!3308644 b_free!87083) (and b!3308639 b_free!87079 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))))) b_lambda!92601)))

(declare-fun b_lambda!92603 () Bool)

(assert (= b_lambda!92595 (or (and b!3308656 b_free!87087 (= (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))))) (and b!3308951 b_free!87103) (and b!3308639 b_free!87079 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))))) (and b!3308969 b_free!87107 (= (toChars!7308 (transformation!5305 (h!41967 (t!254032 rules!2135)))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))))) (and b!3308644 b_free!87083 (= (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))))) b_lambda!92603)))

(declare-fun b_lambda!92605 () Bool)

(assert (= b_lambda!92597 (or (and b!3308656 b_free!87087 (= (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))))) (and b!3308969 b_free!87107 (= (toChars!7308 (transformation!5305 (h!41967 (t!254032 rules!2135)))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))))) (and b!3308951 b_free!87103 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))))) (and b!3308644 b_free!87083 (= (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))))) (and b!3308639 b_free!87079) b_lambda!92605)))

(declare-fun b_lambda!92607 () Bool)

(assert (= b_lambda!92589 (or (and b!3308951 b_free!87103 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))))) (and b!3308656 b_free!87087 (= (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))))) (and b!3308969 b_free!87107 (= (toChars!7308 (transformation!5305 (h!41967 (t!254032 rules!2135)))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))))) (and b!3308644 b_free!87083) (and b!3308639 b_free!87079 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))) (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))))) b_lambda!92607)))

(declare-fun b_lambda!92609 () Bool)

(assert (= b_lambda!92591 (or b!3308643 b_lambda!92609)))

(declare-fun bs!549276 () Bool)

(declare-fun d!926998 () Bool)

(assert (= bs!549276 (and d!926998 b!3308643)))

(assert (=> bs!549276 (= (dynLambda!15003 lambda!119162 (h!41966 tokens!494)) (not (isSeparator!5305 (rule!7809 (h!41966 tokens!494)))))))

(assert (=> b!3308853 d!926998))

(declare-fun b_lambda!92611 () Bool)

(assert (= b_lambda!92587 (or (and b!3308656 b_free!87087 (= (toChars!7308 (transformation!5305 (h!41967 rules!2135))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))))) (and b!3308969 b_free!87107 (= (toChars!7308 (transformation!5305 (h!41967 (t!254032 rules!2135)))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))))) (and b!3308951 b_free!87103 (= (toChars!7308 (transformation!5305 (rule!7809 (h!41966 (t!254031 tokens!494))))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))))) (and b!3308644 b_free!87083 (= (toChars!7308 (transformation!5305 (rule!7809 separatorToken!241))) (toChars!7308 (transformation!5305 (rule!7809 (h!41966 tokens!494)))))) (and b!3308639 b_free!87079) b_lambda!92611)))

(declare-fun b_lambda!92613 () Bool)

(assert (= b_lambda!92585 (or b!3308643 b_lambda!92613)))

(assert (=> d!926914 d!926998))

(push 1)

(assert (not b!3308948))

(assert (not b!3308739))

(assert b_and!227043)

(assert (not b!3308929))

(assert (not b!3308933))

(assert (not b_lambda!92599))

(assert (not tb!171875))

(assert (not d!926946))

(assert b_and!227041)

(assert (not b!3308752))

(assert (not d!926980))

(assert (not b_next!87781))

(assert (not b!3308950))

(assert (not d!926982))

(assert (not d!926972))

(assert b_and!227031)

(assert (not d!926962))

(assert (not d!926988))

(assert (not b_lambda!92609))

(assert (not b!3308864))

(assert (not b!3308833))

(assert (not b!3308896))

(assert (not d!926918))

(assert (not d!926936))

(assert (not d!926948))

(assert (not b!3308905))

(assert (not tb!171887))

(assert (not d!926926))

(assert (not d!926914))

(assert (not b!3308968))

(assert (not b_next!87785))

(assert (not b!3308894))

(assert (not b!3308895))

(assert (not b!3308907))

(assert (not b!3308754))

(assert (not b!3308843))

(assert b_and!226983)

(assert (not d!926940))

(assert b_and!226987)

(assert (not b!3308887))

(assert (not d!926928))

(assert (not b!3308923))

(assert (not b!3308884))

(assert (not b_lambda!92601))

(assert (not b!3308770))

(assert (not d!926990))

(assert (not b!3308757))

(assert b_and!227037)

(assert (not b!3308794))

(assert (not d!926930))

(assert (not b!3308751))

(assert (not b!3308888))

(assert (not b!3308882))

(assert (not b!3308937))

(assert (not b!3308796))

(assert (not b!3308804))

(assert tp_is_empty!17387)

(assert (not d!926984))

(assert (not b_next!87805))

(assert (not b!3308799))

(assert (not d!926932))

(assert (not b_next!87787))

(assert (not b!3308922))

(assert b_and!227039)

(assert (not b!3308936))

(assert (not b!3308952))

(assert (not d!926986))

(assert (not d!926916))

(assert (not b!3308769))

(assert (not b!3308908))

(assert (not b!3308758))

(assert (not b!3308932))

(assert (not b!3308772))

(assert (not b!3308891))

(assert (not b_lambda!92603))

(assert b_and!227033)

(assert (not b!3308848))

(assert (not b!3308865))

(assert (not b!3308935))

(assert (not b_next!87807))

(assert (not b!3308899))

(assert (not b!3308871))

(assert (not b_next!87791))

(assert (not b!3308924))

(assert b_and!227035)

(assert (not b!3308879))

(assert (not b!3308897))

(assert (not d!926908))

(assert (not tb!171881))

(assert (not d!926978))

(assert (not d!926966))

(assert (not b!3308844))

(assert (not d!926924))

(assert (not b!3308876))

(assert (not b!3308904))

(assert (not b!3308782))

(assert (not d!926970))

(assert (not b_lambda!92605))

(assert (not b!3308854))

(assert (not b!3308910))

(assert (not b!3308967))

(assert (not d!926934))

(assert (not b!3308773))

(assert (not b_next!87783))

(assert (not b!3308787))

(assert (not b!3308842))

(assert (not d!926922))

(assert (not b!3308847))

(assert (not b!3308869))

(assert (not d!926952))

(assert (not d!926956))

(assert (not b!3308781))

(assert (not b_lambda!92607))

(assert (not b!3308892))

(assert (not b!3308780))

(assert (not d!926912))

(assert (not b!3308949))

(assert b_and!226991)

(assert (not b!3308898))

(assert (not b_next!87789))

(assert (not b_next!87809))

(assert (not b!3308880))

(assert (not b_lambda!92611))

(assert (not d!926960))

(assert (not b_lambda!92613))

(assert (not b!3308824))

(assert (not b!3308931))

(assert (not b_next!87811))

(assert (not b!3308868))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!87785))

(assert b_and!226983)

(assert b_and!226987)

(assert b_and!227043)

(assert b_and!227037)

(assert (not b_next!87783))

(assert b_and!226991)

(assert (not b_next!87811))

(assert b_and!227041)

(assert b_and!227031)

(assert (not b_next!87781))

(assert (not b_next!87805))

(assert (not b_next!87787))

(assert b_and!227039)

(assert b_and!227033)

(assert (not b_next!87807))

(assert (not b_next!87791))

(assert b_and!227035)

(assert (not b_next!87789))

(assert (not b_next!87809))

(check-sat)

(pop 1)

