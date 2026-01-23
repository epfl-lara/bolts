; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18818 () Bool)

(assert start!18818)

(declare-fun b!173808 () Bool)

(declare-fun b_free!6665 () Bool)

(declare-fun b_next!6665 () Bool)

(assert (=> b!173808 (= b_free!6665 (not b_next!6665))))

(declare-fun tp!84808 () Bool)

(declare-fun b_and!11597 () Bool)

(assert (=> b!173808 (= tp!84808 b_and!11597)))

(declare-fun b_free!6667 () Bool)

(declare-fun b_next!6667 () Bool)

(assert (=> b!173808 (= b_free!6667 (not b_next!6667))))

(declare-fun tp!84801 () Bool)

(declare-fun b_and!11599 () Bool)

(assert (=> b!173808 (= tp!84801 b_and!11599)))

(declare-fun b!173797 () Bool)

(declare-fun b_free!6669 () Bool)

(declare-fun b_next!6669 () Bool)

(assert (=> b!173797 (= b_free!6669 (not b_next!6669))))

(declare-fun tp!84804 () Bool)

(declare-fun b_and!11601 () Bool)

(assert (=> b!173797 (= tp!84804 b_and!11601)))

(declare-fun b_free!6671 () Bool)

(declare-fun b_next!6671 () Bool)

(assert (=> b!173797 (= b_free!6671 (not b_next!6671))))

(declare-fun tp!84810 () Bool)

(declare-fun b_and!11603 () Bool)

(assert (=> b!173797 (= tp!84810 b_and!11603)))

(declare-fun b!173782 () Bool)

(declare-fun b_free!6673 () Bool)

(declare-fun b_next!6673 () Bool)

(assert (=> b!173782 (= b_free!6673 (not b_next!6673))))

(declare-fun tp!84805 () Bool)

(declare-fun b_and!11605 () Bool)

(assert (=> b!173782 (= tp!84805 b_and!11605)))

(declare-fun b_free!6675 () Bool)

(declare-fun b_next!6675 () Bool)

(assert (=> b!173782 (= b_free!6675 (not b_next!6675))))

(declare-fun tp!84809 () Bool)

(declare-fun b_and!11607 () Bool)

(assert (=> b!173782 (= tp!84809 b_and!11607)))

(declare-fun bs!17102 () Bool)

(declare-fun b!173788 () Bool)

(declare-fun b!173787 () Bool)

(assert (= bs!17102 (and b!173788 b!173787)))

(declare-fun lambda!5000 () Int)

(declare-fun lambda!4999 () Int)

(assert (=> bs!17102 (not (= lambda!5000 lambda!4999))))

(declare-fun b!173820 () Bool)

(declare-fun e!105359 () Bool)

(assert (=> b!173820 (= e!105359 true)))

(declare-fun b!173819 () Bool)

(declare-fun e!105358 () Bool)

(assert (=> b!173819 (= e!105358 e!105359)))

(declare-fun b!173818 () Bool)

(declare-fun e!105357 () Bool)

(assert (=> b!173818 (= e!105357 e!105358)))

(assert (=> b!173788 e!105357))

(assert (= b!173819 b!173820))

(assert (= b!173818 b!173819))

(declare-datatypes ((List!2937 0))(
  ( (Nil!2927) (Cons!2927 (h!8324 (_ BitVec 16)) (t!27571 List!2937)) )
))
(declare-datatypes ((TokenValue!547 0))(
  ( (FloatLiteralValue!1094 (text!4274 List!2937)) (TokenValueExt!546 (__x!2581 Int)) (Broken!2735 (value!19252 List!2937)) (Object!556) (End!547) (Def!547) (Underscore!547) (Match!547) (Else!547) (Error!547) (Case!547) (If!547) (Extends!547) (Abstract!547) (Class!547) (Val!547) (DelimiterValue!1094 (del!607 List!2937)) (KeywordValue!553 (value!19253 List!2937)) (CommentValue!1094 (value!19254 List!2937)) (WhitespaceValue!1094 (value!19255 List!2937)) (IndentationValue!547 (value!19256 List!2937)) (String!3814) (Int32!547) (Broken!2736 (value!19257 List!2937)) (Boolean!548) (Unit!2609) (OperatorValue!550 (op!607 List!2937)) (IdentifierValue!1094 (value!19258 List!2937)) (IdentifierValue!1095 (value!19259 List!2937)) (WhitespaceValue!1095 (value!19260 List!2937)) (True!1094) (False!1094) (Broken!2737 (value!19261 List!2937)) (Broken!2738 (value!19262 List!2937)) (True!1095) (RightBrace!547) (RightBracket!547) (Colon!547) (Null!547) (Comma!547) (LeftBracket!547) (False!1095) (LeftBrace!547) (ImaginaryLiteralValue!547 (text!4275 List!2937)) (StringLiteralValue!1641 (value!19263 List!2937)) (EOFValue!547 (value!19264 List!2937)) (IdentValue!547 (value!19265 List!2937)) (DelimiterValue!1095 (value!19266 List!2937)) (DedentValue!547 (value!19267 List!2937)) (NewLineValue!547 (value!19268 List!2937)) (IntegerValue!1641 (value!19269 (_ BitVec 32)) (text!4276 List!2937)) (IntegerValue!1642 (value!19270 Int) (text!4277 List!2937)) (Times!547) (Or!547) (Equal!547) (Minus!547) (Broken!2739 (value!19271 List!2937)) (And!547) (Div!547) (LessEqual!547) (Mod!547) (Concat!1296) (Not!547) (Plus!547) (SpaceValue!547 (value!19272 List!2937)) (IntegerValue!1643 (value!19273 Int) (text!4278 List!2937)) (StringLiteralValue!1642 (text!4279 List!2937)) (FloatLiteralValue!1095 (text!4280 List!2937)) (BytesLiteralValue!547 (value!19274 List!2937)) (CommentValue!1095 (value!19275 List!2937)) (StringLiteralValue!1643 (value!19276 List!2937)) (ErrorTokenValue!547 (msg!608 List!2937)) )
))
(declare-datatypes ((C!2420 0))(
  ( (C!2421 (val!1096 Int)) )
))
(declare-datatypes ((List!2938 0))(
  ( (Nil!2928) (Cons!2928 (h!8325 C!2420) (t!27572 List!2938)) )
))
(declare-datatypes ((IArray!1745 0))(
  ( (IArray!1746 (innerList!930 List!2938)) )
))
(declare-datatypes ((Conc!872 0))(
  ( (Node!872 (left!2241 Conc!872) (right!2571 Conc!872) (csize!1974 Int) (cheight!1083 Int)) (Leaf!1474 (xs!3467 IArray!1745) (csize!1975 Int)) (Empty!872) )
))
(declare-datatypes ((BalanceConc!1752 0))(
  ( (BalanceConc!1753 (c!34371 Conc!872)) )
))
(declare-datatypes ((TokenValueInjection!866 0))(
  ( (TokenValueInjection!867 (toValue!1192 Int) (toChars!1051 Int)) )
))
(declare-datatypes ((String!3815 0))(
  ( (String!3816 (value!19277 String)) )
))
(declare-datatypes ((Regex!749 0))(
  ( (ElementMatch!749 (c!34372 C!2420)) (Concat!1297 (regOne!2010 Regex!749) (regTwo!2010 Regex!749)) (EmptyExpr!749) (Star!749 (reg!1078 Regex!749)) (EmptyLang!749) (Union!749 (regOne!2011 Regex!749) (regTwo!2011 Regex!749)) )
))
(declare-datatypes ((Rule!850 0))(
  ( (Rule!851 (regex!525 Regex!749) (tag!703 String!3815) (isSeparator!525 Bool) (transformation!525 TokenValueInjection!866)) )
))
(declare-datatypes ((List!2939 0))(
  ( (Nil!2929) (Cons!2929 (h!8326 Rule!850) (t!27573 List!2939)) )
))
(declare-fun rules!1920 () List!2939)

(get-info :version)

(assert (= (and b!173788 ((_ is Cons!2929) rules!1920)) b!173818))

(declare-fun order!1619 () Int)

(declare-fun order!1617 () Int)

(declare-fun dynLambda!1123 (Int Int) Int)

(declare-fun dynLambda!1124 (Int Int) Int)

(assert (=> b!173820 (< (dynLambda!1123 order!1617 (toValue!1192 (transformation!525 (h!8326 rules!1920)))) (dynLambda!1124 order!1619 lambda!5000))))

(declare-fun order!1621 () Int)

(declare-fun dynLambda!1125 (Int Int) Int)

(assert (=> b!173820 (< (dynLambda!1125 order!1621 (toChars!1051 (transformation!525 (h!8326 rules!1920)))) (dynLambda!1124 order!1619 lambda!5000))))

(assert (=> b!173788 true))

(declare-fun b!173780 () Bool)

(declare-fun res!78496 () Bool)

(declare-fun e!105348 () Bool)

(assert (=> b!173780 (=> (not res!78496) (not e!105348))))

(declare-fun isEmpty!1264 (List!2939) Bool)

(assert (=> b!173780 (= res!78496 (not (isEmpty!1264 rules!1920)))))

(declare-fun b!173781 () Bool)

(declare-fun res!78504 () Bool)

(declare-fun e!105336 () Bool)

(assert (=> b!173781 (=> res!78504 e!105336)))

(declare-fun e!105333 () Bool)

(assert (=> b!173781 (= res!78504 e!105333)))

(declare-fun res!78494 () Bool)

(assert (=> b!173781 (=> (not res!78494) (not e!105333))))

(declare-fun lt!55711 () List!2938)

(declare-fun lt!55721 () List!2938)

(assert (=> b!173781 (= res!78494 (not (= lt!55711 lt!55721)))))

(declare-fun e!105344 () Bool)

(assert (=> b!173782 (= e!105344 (and tp!84805 tp!84809))))

(declare-fun tp!84799 () Bool)

(declare-fun e!105343 () Bool)

(declare-datatypes ((Token!794 0))(
  ( (Token!795 (value!19278 TokenValue!547) (rule!1036 Rule!850) (size!2425 Int) (originalCharacters!568 List!2938)) )
))
(declare-fun separatorToken!170 () Token!794)

(declare-fun b!173783 () Bool)

(declare-fun inv!3757 (String!3815) Bool)

(declare-fun inv!3760 (TokenValueInjection!866) Bool)

(assert (=> b!173783 (= e!105343 (and tp!84799 (inv!3757 (tag!703 (rule!1036 separatorToken!170))) (inv!3760 (transformation!525 (rule!1036 separatorToken!170))) e!105344))))

(declare-fun b!173784 () Bool)

(declare-fun e!105334 () Bool)

(assert (=> b!173784 (= e!105348 e!105334)))

(declare-fun res!78502 () Bool)

(assert (=> b!173784 (=> (not res!78502) (not e!105334))))

(declare-datatypes ((List!2940 0))(
  ( (Nil!2930) (Cons!2930 (h!8327 Token!794) (t!27574 List!2940)) )
))
(declare-datatypes ((IArray!1747 0))(
  ( (IArray!1748 (innerList!931 List!2940)) )
))
(declare-datatypes ((Conc!873 0))(
  ( (Node!873 (left!2242 Conc!873) (right!2572 Conc!873) (csize!1976 Int) (cheight!1084 Int)) (Leaf!1475 (xs!3468 IArray!1747) (csize!1977 Int)) (Empty!873) )
))
(declare-datatypes ((BalanceConc!1754 0))(
  ( (BalanceConc!1755 (c!34373 Conc!873)) )
))
(declare-fun lt!55715 () BalanceConc!1754)

(declare-datatypes ((LexerInterface!411 0))(
  ( (LexerInterfaceExt!408 (__x!2582 Int)) (Lexer!409) )
))
(declare-fun thiss!17480 () LexerInterface!411)

(declare-fun rulesProduceEachTokenIndividually!203 (LexerInterface!411 List!2939 BalanceConc!1754) Bool)

(assert (=> b!173784 (= res!78502 (rulesProduceEachTokenIndividually!203 thiss!17480 rules!1920 lt!55715))))

(declare-fun tokens!465 () List!2940)

(declare-fun seqFromList!427 (List!2940) BalanceConc!1754)

(assert (=> b!173784 (= lt!55715 (seqFromList!427 tokens!465))))

(declare-fun b!173785 () Bool)

(declare-fun res!78499 () Bool)

(assert (=> b!173785 (=> (not res!78499) (not e!105334))))

(declare-fun rulesProduceIndividualToken!160 (LexerInterface!411 List!2939 Token!794) Bool)

(assert (=> b!173785 (= res!78499 (rulesProduceIndividualToken!160 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!173786 () Bool)

(declare-fun e!105335 () Bool)

(assert (=> b!173786 (= e!105335 (not e!105336))))

(declare-fun res!78498 () Bool)

(assert (=> b!173786 (=> res!78498 e!105336)))

(declare-fun lt!55714 () List!2938)

(declare-fun list!1071 (BalanceConc!1752) List!2938)

(declare-fun printWithSeparatorTokenWhenNeededRec!94 (LexerInterface!411 List!2939 BalanceConc!1754 Token!794 Int) BalanceConc!1752)

(assert (=> b!173786 (= res!78498 (not (= lt!55714 (list!1071 (printWithSeparatorTokenWhenNeededRec!94 thiss!17480 rules!1920 (seqFromList!427 (t!27574 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!55713 () List!2938)

(assert (=> b!173786 (= lt!55713 lt!55721)))

(declare-fun lt!55723 () List!2938)

(declare-fun lt!55718 () List!2938)

(declare-fun ++!678 (List!2938 List!2938) List!2938)

(assert (=> b!173786 (= lt!55721 (++!678 lt!55723 lt!55718))))

(declare-fun lt!55709 () List!2938)

(assert (=> b!173786 (= lt!55713 (++!678 (++!678 lt!55723 lt!55709) lt!55714))))

(declare-datatypes ((Unit!2610 0))(
  ( (Unit!2611) )
))
(declare-fun lt!55716 () Unit!2610)

(declare-fun lemmaConcatAssociativity!212 (List!2938 List!2938 List!2938) Unit!2610)

(assert (=> b!173786 (= lt!55716 (lemmaConcatAssociativity!212 lt!55723 lt!55709 lt!55714))))

(declare-fun charsOf!180 (Token!794) BalanceConc!1752)

(assert (=> b!173786 (= lt!55723 (list!1071 (charsOf!180 (h!8327 tokens!465))))))

(assert (=> b!173786 (= lt!55718 (++!678 lt!55709 lt!55714))))

(declare-fun printWithSeparatorTokenWhenNeededList!104 (LexerInterface!411 List!2939 List!2940 Token!794) List!2938)

(assert (=> b!173786 (= lt!55714 (printWithSeparatorTokenWhenNeededList!104 thiss!17480 rules!1920 (t!27574 tokens!465) separatorToken!170))))

(assert (=> b!173786 (= lt!55709 (list!1071 (charsOf!180 separatorToken!170)))))

(declare-fun res!78512 () Bool)

(assert (=> b!173787 (=> (not res!78512) (not e!105334))))

(declare-fun forall!581 (List!2940 Int) Bool)

(assert (=> b!173787 (= res!78512 (forall!581 tokens!465 lambda!4999))))

(declare-fun e!105350 () Bool)

(declare-fun e!105340 () Bool)

(assert (=> b!173788 (= e!105350 e!105340)))

(declare-fun res!78505 () Bool)

(assert (=> b!173788 (=> res!78505 e!105340)))

(declare-datatypes ((tuple2!2850 0))(
  ( (tuple2!2851 (_1!1641 Token!794) (_2!1641 BalanceConc!1752)) )
))
(declare-datatypes ((Option!326 0))(
  ( (None!325) (Some!325 (v!13778 tuple2!2850)) )
))
(declare-fun isDefined!177 (Option!326) Bool)

(declare-fun maxPrefixZipperSequence!104 (LexerInterface!411 List!2939 BalanceConc!1752) Option!326)

(declare-fun seqFromList!428 (List!2938) BalanceConc!1752)

(assert (=> b!173788 (= res!78505 (not (isDefined!177 (maxPrefixZipperSequence!104 thiss!17480 rules!1920 (seqFromList!428 (originalCharacters!568 (h!8327 tokens!465)))))))))

(declare-fun lt!55720 () Unit!2610)

(declare-fun forallContained!92 (List!2940 Int Token!794) Unit!2610)

(assert (=> b!173788 (= lt!55720 (forallContained!92 tokens!465 lambda!5000 (h!8327 tokens!465)))))

(assert (=> b!173788 (= lt!55723 (originalCharacters!568 (h!8327 tokens!465)))))

(declare-fun b!173789 () Bool)

(assert (=> b!173789 (= e!105340 true)))

(declare-fun e!105345 () Bool)

(assert (=> b!173789 e!105345))

(declare-fun res!78501 () Bool)

(assert (=> b!173789 (=> (not res!78501) (not e!105345))))

(declare-datatypes ((tuple2!2852 0))(
  ( (tuple2!2853 (_1!1642 Token!794) (_2!1642 List!2938)) )
))
(declare-fun lt!55708 () tuple2!2852)

(assert (=> b!173789 (= res!78501 (= (_1!1642 lt!55708) (h!8327 tokens!465)))))

(declare-datatypes ((Option!327 0))(
  ( (None!326) (Some!326 (v!13779 tuple2!2852)) )
))
(declare-fun lt!55724 () Option!327)

(declare-fun get!808 (Option!327) tuple2!2852)

(assert (=> b!173789 (= lt!55708 (get!808 lt!55724))))

(declare-fun isDefined!178 (Option!327) Bool)

(assert (=> b!173789 (isDefined!178 lt!55724)))

(declare-fun maxPrefix!141 (LexerInterface!411 List!2939 List!2938) Option!327)

(assert (=> b!173789 (= lt!55724 (maxPrefix!141 thiss!17480 rules!1920 lt!55723))))

(declare-fun b!173790 () Bool)

(declare-fun res!78507 () Bool)

(assert (=> b!173790 (=> res!78507 e!105350)))

(declare-fun isEmpty!1265 (BalanceConc!1754) Bool)

(declare-datatypes ((tuple2!2854 0))(
  ( (tuple2!2855 (_1!1643 BalanceConc!1754) (_2!1643 BalanceConc!1752)) )
))
(declare-fun lex!211 (LexerInterface!411 List!2939 BalanceConc!1752) tuple2!2854)

(assert (=> b!173790 (= res!78507 (isEmpty!1265 (_1!1643 (lex!211 thiss!17480 rules!1920 (seqFromList!428 lt!55723)))))))

(declare-fun b!173791 () Bool)

(declare-fun res!78500 () Bool)

(assert (=> b!173791 (=> res!78500 e!105350)))

(assert (=> b!173791 (= res!78500 (not (rulesProduceIndividualToken!160 thiss!17480 rules!1920 (h!8327 tokens!465))))))

(declare-fun b!173792 () Bool)

(assert (=> b!173792 (= e!105334 e!105335)))

(declare-fun res!78508 () Bool)

(assert (=> b!173792 (=> (not res!78508) (not e!105335))))

(declare-fun lt!55722 () List!2938)

(assert (=> b!173792 (= res!78508 (= lt!55711 lt!55722))))

(assert (=> b!173792 (= lt!55722 (list!1071 (printWithSeparatorTokenWhenNeededRec!94 thiss!17480 rules!1920 lt!55715 separatorToken!170 0)))))

(assert (=> b!173792 (= lt!55711 (printWithSeparatorTokenWhenNeededList!104 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!78495 () Bool)

(assert (=> start!18818 (=> (not res!78495) (not e!105348))))

(assert (=> start!18818 (= res!78495 ((_ is Lexer!409) thiss!17480))))

(assert (=> start!18818 e!105348))

(assert (=> start!18818 true))

(declare-fun e!105339 () Bool)

(assert (=> start!18818 e!105339))

(declare-fun e!105342 () Bool)

(declare-fun inv!3761 (Token!794) Bool)

(assert (=> start!18818 (and (inv!3761 separatorToken!170) e!105342)))

(declare-fun e!105338 () Bool)

(assert (=> start!18818 e!105338))

(declare-fun b!173793 () Bool)

(assert (=> b!173793 (= e!105336 e!105350)))

(declare-fun res!78513 () Bool)

(assert (=> b!173793 (=> res!78513 e!105350)))

(declare-fun lt!55710 () List!2938)

(declare-fun lt!55717 () List!2938)

(assert (=> b!173793 (= res!78513 (or (not (= lt!55710 lt!55717)) (not (= lt!55717 lt!55723)) (not (= lt!55710 lt!55723))))))

(declare-fun printList!95 (LexerInterface!411 List!2940) List!2938)

(assert (=> b!173793 (= lt!55717 (printList!95 thiss!17480 (Cons!2930 (h!8327 tokens!465) Nil!2930)))))

(declare-fun lt!55712 () BalanceConc!1752)

(assert (=> b!173793 (= lt!55710 (list!1071 lt!55712))))

(declare-fun lt!55719 () BalanceConc!1754)

(declare-fun printTailRec!105 (LexerInterface!411 BalanceConc!1754 Int BalanceConc!1752) BalanceConc!1752)

(assert (=> b!173793 (= lt!55712 (printTailRec!105 thiss!17480 lt!55719 0 (BalanceConc!1753 Empty!872)))))

(declare-fun print!142 (LexerInterface!411 BalanceConc!1754) BalanceConc!1752)

(assert (=> b!173793 (= lt!55712 (print!142 thiss!17480 lt!55719))))

(declare-fun singletonSeq!77 (Token!794) BalanceConc!1754)

(assert (=> b!173793 (= lt!55719 (singletonSeq!77 (h!8327 tokens!465)))))

(declare-fun b!173794 () Bool)

(declare-fun res!78509 () Bool)

(assert (=> b!173794 (=> (not res!78509) (not e!105348))))

(declare-fun rulesInvariant!377 (LexerInterface!411 List!2939) Bool)

(assert (=> b!173794 (= res!78509 (rulesInvariant!377 thiss!17480 rules!1920))))

(declare-fun b!173795 () Bool)

(assert (=> b!173795 (= e!105333 (not (= lt!55711 (++!678 lt!55723 lt!55714))))))

(declare-fun b!173796 () Bool)

(declare-fun e!105331 () Bool)

(declare-fun tp!84811 () Bool)

(assert (=> b!173796 (= e!105339 (and e!105331 tp!84811))))

(declare-fun e!105332 () Bool)

(assert (=> b!173797 (= e!105332 (and tp!84804 tp!84810))))

(declare-fun tp!84802 () Bool)

(declare-fun e!105330 () Bool)

(declare-fun b!173798 () Bool)

(declare-fun e!105328 () Bool)

(declare-fun inv!21 (TokenValue!547) Bool)

(assert (=> b!173798 (= e!105328 (and (inv!21 (value!19278 (h!8327 tokens!465))) e!105330 tp!84802))))

(declare-fun b!173799 () Bool)

(declare-fun res!78497 () Bool)

(assert (=> b!173799 (=> (not res!78497) (not e!105335))))

(assert (=> b!173799 (= res!78497 (= (list!1071 (seqFromList!428 lt!55711)) lt!55722))))

(declare-fun b!173800 () Bool)

(declare-fun res!78506 () Bool)

(assert (=> b!173800 (=> (not res!78506) (not e!105345))))

(declare-fun isEmpty!1266 (List!2938) Bool)

(assert (=> b!173800 (= res!78506 (isEmpty!1266 (_2!1642 lt!55708)))))

(declare-fun tp!84803 () Bool)

(declare-fun b!173801 () Bool)

(assert (=> b!173801 (= e!105342 (and (inv!21 (value!19278 separatorToken!170)) e!105343 tp!84803))))

(declare-fun b!173802 () Bool)

(declare-fun res!78511 () Bool)

(assert (=> b!173802 (=> (not res!78511) (not e!105334))))

(assert (=> b!173802 (= res!78511 (isSeparator!525 (rule!1036 separatorToken!170)))))

(declare-fun b!173803 () Bool)

(declare-fun res!78510 () Bool)

(assert (=> b!173803 (=> (not res!78510) (not e!105334))))

(assert (=> b!173803 (= res!78510 ((_ is Cons!2930) tokens!465))))

(declare-fun b!173804 () Bool)

(declare-fun matchR!87 (Regex!749 List!2938) Bool)

(assert (=> b!173804 (= e!105345 (matchR!87 (regex!525 (rule!1036 (h!8327 tokens!465))) lt!55723))))

(declare-fun b!173805 () Bool)

(declare-fun tp!84807 () Bool)

(assert (=> b!173805 (= e!105338 (and (inv!3761 (h!8327 tokens!465)) e!105328 tp!84807))))

(declare-fun b!173806 () Bool)

(declare-fun res!78503 () Bool)

(assert (=> b!173806 (=> (not res!78503) (not e!105334))))

(declare-fun sepAndNonSepRulesDisjointChars!114 (List!2939 List!2939) Bool)

(assert (=> b!173806 (= res!78503 (sepAndNonSepRulesDisjointChars!114 rules!1920 rules!1920))))

(declare-fun tp!84800 () Bool)

(declare-fun b!173807 () Bool)

(assert (=> b!173807 (= e!105330 (and tp!84800 (inv!3757 (tag!703 (rule!1036 (h!8327 tokens!465)))) (inv!3760 (transformation!525 (rule!1036 (h!8327 tokens!465)))) e!105332))))

(declare-fun e!105341 () Bool)

(assert (=> b!173808 (= e!105341 (and tp!84808 tp!84801))))

(declare-fun tp!84806 () Bool)

(declare-fun b!173809 () Bool)

(assert (=> b!173809 (= e!105331 (and tp!84806 (inv!3757 (tag!703 (h!8326 rules!1920))) (inv!3760 (transformation!525 (h!8326 rules!1920))) e!105341))))

(assert (= (and start!18818 res!78495) b!173780))

(assert (= (and b!173780 res!78496) b!173794))

(assert (= (and b!173794 res!78509) b!173784))

(assert (= (and b!173784 res!78502) b!173785))

(assert (= (and b!173785 res!78499) b!173802))

(assert (= (and b!173802 res!78511) b!173787))

(assert (= (and b!173787 res!78512) b!173806))

(assert (= (and b!173806 res!78503) b!173803))

(assert (= (and b!173803 res!78510) b!173792))

(assert (= (and b!173792 res!78508) b!173799))

(assert (= (and b!173799 res!78497) b!173786))

(assert (= (and b!173786 (not res!78498)) b!173781))

(assert (= (and b!173781 res!78494) b!173795))

(assert (= (and b!173781 (not res!78504)) b!173793))

(assert (= (and b!173793 (not res!78513)) b!173791))

(assert (= (and b!173791 (not res!78500)) b!173790))

(assert (= (and b!173790 (not res!78507)) b!173788))

(assert (= (and b!173788 (not res!78505)) b!173789))

(assert (= (and b!173789 res!78501) b!173800))

(assert (= (and b!173800 res!78506) b!173804))

(assert (= b!173809 b!173808))

(assert (= b!173796 b!173809))

(assert (= (and start!18818 ((_ is Cons!2929) rules!1920)) b!173796))

(assert (= b!173783 b!173782))

(assert (= b!173801 b!173783))

(assert (= start!18818 b!173801))

(assert (= b!173807 b!173797))

(assert (= b!173798 b!173807))

(assert (= b!173805 b!173798))

(assert (= (and start!18818 ((_ is Cons!2930) tokens!465)) b!173805))

(declare-fun m!172579 () Bool)

(assert (=> b!173783 m!172579))

(declare-fun m!172581 () Bool)

(assert (=> b!173783 m!172581))

(declare-fun m!172583 () Bool)

(assert (=> start!18818 m!172583))

(declare-fun m!172585 () Bool)

(assert (=> b!173805 m!172585))

(declare-fun m!172587 () Bool)

(assert (=> b!173787 m!172587))

(declare-fun m!172589 () Bool)

(assert (=> b!173789 m!172589))

(declare-fun m!172591 () Bool)

(assert (=> b!173789 m!172591))

(declare-fun m!172593 () Bool)

(assert (=> b!173789 m!172593))

(declare-fun m!172595 () Bool)

(assert (=> b!173786 m!172595))

(declare-fun m!172597 () Bool)

(assert (=> b!173786 m!172597))

(declare-fun m!172599 () Bool)

(assert (=> b!173786 m!172599))

(declare-fun m!172601 () Bool)

(assert (=> b!173786 m!172601))

(declare-fun m!172603 () Bool)

(assert (=> b!173786 m!172603))

(declare-fun m!172605 () Bool)

(assert (=> b!173786 m!172605))

(assert (=> b!173786 m!172603))

(declare-fun m!172607 () Bool)

(assert (=> b!173786 m!172607))

(assert (=> b!173786 m!172599))

(declare-fun m!172609 () Bool)

(assert (=> b!173786 m!172609))

(declare-fun m!172611 () Bool)

(assert (=> b!173786 m!172611))

(assert (=> b!173786 m!172611))

(declare-fun m!172613 () Bool)

(assert (=> b!173786 m!172613))

(declare-fun m!172615 () Bool)

(assert (=> b!173786 m!172615))

(declare-fun m!172617 () Bool)

(assert (=> b!173786 m!172617))

(declare-fun m!172619 () Bool)

(assert (=> b!173786 m!172619))

(assert (=> b!173786 m!172595))

(assert (=> b!173786 m!172615))

(declare-fun m!172621 () Bool)

(assert (=> b!173784 m!172621))

(declare-fun m!172623 () Bool)

(assert (=> b!173784 m!172623))

(declare-fun m!172625 () Bool)

(assert (=> b!173807 m!172625))

(declare-fun m!172627 () Bool)

(assert (=> b!173807 m!172627))

(declare-fun m!172629 () Bool)

(assert (=> b!173804 m!172629))

(declare-fun m!172631 () Bool)

(assert (=> b!173809 m!172631))

(declare-fun m!172633 () Bool)

(assert (=> b!173809 m!172633))

(declare-fun m!172635 () Bool)

(assert (=> b!173788 m!172635))

(assert (=> b!173788 m!172635))

(declare-fun m!172637 () Bool)

(assert (=> b!173788 m!172637))

(assert (=> b!173788 m!172637))

(declare-fun m!172639 () Bool)

(assert (=> b!173788 m!172639))

(declare-fun m!172641 () Bool)

(assert (=> b!173788 m!172641))

(declare-fun m!172643 () Bool)

(assert (=> b!173792 m!172643))

(assert (=> b!173792 m!172643))

(declare-fun m!172645 () Bool)

(assert (=> b!173792 m!172645))

(declare-fun m!172647 () Bool)

(assert (=> b!173792 m!172647))

(declare-fun m!172649 () Bool)

(assert (=> b!173806 m!172649))

(declare-fun m!172651 () Bool)

(assert (=> b!173799 m!172651))

(assert (=> b!173799 m!172651))

(declare-fun m!172653 () Bool)

(assert (=> b!173799 m!172653))

(declare-fun m!172655 () Bool)

(assert (=> b!173791 m!172655))

(declare-fun m!172657 () Bool)

(assert (=> b!173801 m!172657))

(declare-fun m!172659 () Bool)

(assert (=> b!173794 m!172659))

(declare-fun m!172661 () Bool)

(assert (=> b!173798 m!172661))

(declare-fun m!172663 () Bool)

(assert (=> b!173785 m!172663))

(declare-fun m!172665 () Bool)

(assert (=> b!173795 m!172665))

(declare-fun m!172667 () Bool)

(assert (=> b!173790 m!172667))

(assert (=> b!173790 m!172667))

(declare-fun m!172669 () Bool)

(assert (=> b!173790 m!172669))

(declare-fun m!172671 () Bool)

(assert (=> b!173790 m!172671))

(declare-fun m!172673 () Bool)

(assert (=> b!173793 m!172673))

(declare-fun m!172675 () Bool)

(assert (=> b!173793 m!172675))

(declare-fun m!172677 () Bool)

(assert (=> b!173793 m!172677))

(declare-fun m!172679 () Bool)

(assert (=> b!173793 m!172679))

(declare-fun m!172681 () Bool)

(assert (=> b!173793 m!172681))

(declare-fun m!172683 () Bool)

(assert (=> b!173800 m!172683))

(declare-fun m!172685 () Bool)

(assert (=> b!173780 m!172685))

(check-sat (not b!173787) (not b_next!6669) (not b_next!6673) (not b!173807) (not b!173801) (not b!173788) (not b_next!6675) (not b!173804) (not b!173795) (not b!173800) (not b!173786) (not b!173780) b_and!11603 (not b!173789) b_and!11601 (not b!173790) (not b!173806) (not b!173818) (not b_next!6665) b_and!11597 (not b_next!6671) (not b!173791) (not b!173796) b_and!11605 (not b!173785) (not b!173793) (not b!173783) (not b!173798) (not b!173809) b_and!11607 (not b!173799) (not b!173805) (not b!173792) (not b!173784) b_and!11599 (not b!173794) (not start!18818) (not b_next!6667))
(check-sat (not b_next!6669) (not b_next!6673) (not b_next!6665) (not b_next!6675) b_and!11605 b_and!11603 b_and!11607 b_and!11599 b_and!11601 (not b_next!6667) b_and!11597 (not b_next!6671))
