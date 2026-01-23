; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!254154 () Bool)

(assert start!254154)

(declare-fun b!2613551 () Bool)

(declare-fun b_free!73533 () Bool)

(declare-fun b_next!74237 () Bool)

(assert (=> b!2613551 (= b_free!73533 (not b_next!74237))))

(declare-fun tp!830153 () Bool)

(declare-fun b_and!191151 () Bool)

(assert (=> b!2613551 (= tp!830153 b_and!191151)))

(declare-fun b_free!73535 () Bool)

(declare-fun b_next!74239 () Bool)

(assert (=> b!2613551 (= b_free!73535 (not b_next!74239))))

(declare-fun tp!830151 () Bool)

(declare-fun b_and!191153 () Bool)

(assert (=> b!2613551 (= tp!830151 b_and!191153)))

(declare-fun b!2613542 () Bool)

(declare-fun b_free!73537 () Bool)

(declare-fun b_next!74241 () Bool)

(assert (=> b!2613542 (= b_free!73537 (not b_next!74241))))

(declare-fun tp!830158 () Bool)

(declare-fun b_and!191155 () Bool)

(assert (=> b!2613542 (= tp!830158 b_and!191155)))

(declare-fun b_free!73539 () Bool)

(declare-fun b_next!74243 () Bool)

(assert (=> b!2613542 (= b_free!73539 (not b_next!74243))))

(declare-fun tp!830155 () Bool)

(declare-fun b_and!191157 () Bool)

(assert (=> b!2613542 (= tp!830155 b_and!191157)))

(declare-fun bs!474097 () Bool)

(declare-fun b!2613543 () Bool)

(declare-fun b!2613545 () Bool)

(assert (= bs!474097 (and b!2613543 b!2613545)))

(declare-fun lambda!97874 () Int)

(declare-fun lambda!97873 () Int)

(assert (=> bs!474097 (not (= lambda!97874 lambda!97873))))

(declare-fun b!2613564 () Bool)

(declare-fun e!1649131 () Bool)

(assert (=> b!2613564 (= e!1649131 true)))

(declare-fun b!2613563 () Bool)

(declare-fun e!1649130 () Bool)

(assert (=> b!2613563 (= e!1649130 e!1649131)))

(declare-fun b!2613562 () Bool)

(declare-fun e!1649129 () Bool)

(assert (=> b!2613562 (= e!1649129 e!1649130)))

(assert (=> b!2613543 e!1649129))

(assert (= b!2613563 b!2613564))

(assert (= b!2613562 b!2613563))

(declare-datatypes ((List!30313 0))(
  ( (Nil!30213) (Cons!30213 (h!35633 (_ BitVec 16)) (t!214338 List!30313)) )
))
(declare-datatypes ((C!15588 0))(
  ( (C!15589 (val!9728 Int)) )
))
(declare-datatypes ((Regex!7715 0))(
  ( (ElementMatch!7715 (c!420065 C!15588)) (Concat!12508 (regOne!15942 Regex!7715) (regTwo!15942 Regex!7715)) (EmptyExpr!7715) (Star!7715 (reg!8044 Regex!7715)) (EmptyLang!7715) (Union!7715 (regOne!15943 Regex!7715) (regTwo!15943 Regex!7715)) )
))
(declare-datatypes ((TokenValue!4793 0))(
  ( (FloatLiteralValue!9586 (text!33996 List!30313)) (TokenValueExt!4792 (__x!19419 Int)) (Broken!23965 (value!147852 List!30313)) (Object!4892) (End!4793) (Def!4793) (Underscore!4793) (Match!4793) (Else!4793) (Error!4793) (Case!4793) (If!4793) (Extends!4793) (Abstract!4793) (Class!4793) (Val!4793) (DelimiterValue!9586 (del!4853 List!30313)) (KeywordValue!4799 (value!147853 List!30313)) (CommentValue!9586 (value!147854 List!30313)) (WhitespaceValue!9586 (value!147855 List!30313)) (IndentationValue!4793 (value!147856 List!30313)) (String!33848) (Int32!4793) (Broken!23966 (value!147857 List!30313)) (Boolean!4794) (Unit!44194) (OperatorValue!4796 (op!4853 List!30313)) (IdentifierValue!9586 (value!147858 List!30313)) (IdentifierValue!9587 (value!147859 List!30313)) (WhitespaceValue!9587 (value!147860 List!30313)) (True!9586) (False!9586) (Broken!23967 (value!147861 List!30313)) (Broken!23968 (value!147862 List!30313)) (True!9587) (RightBrace!4793) (RightBracket!4793) (Colon!4793) (Null!4793) (Comma!4793) (LeftBracket!4793) (False!9587) (LeftBrace!4793) (ImaginaryLiteralValue!4793 (text!33997 List!30313)) (StringLiteralValue!14379 (value!147863 List!30313)) (EOFValue!4793 (value!147864 List!30313)) (IdentValue!4793 (value!147865 List!30313)) (DelimiterValue!9587 (value!147866 List!30313)) (DedentValue!4793 (value!147867 List!30313)) (NewLineValue!4793 (value!147868 List!30313)) (IntegerValue!14379 (value!147869 (_ BitVec 32)) (text!33998 List!30313)) (IntegerValue!14380 (value!147870 Int) (text!33999 List!30313)) (Times!4793) (Or!4793) (Equal!4793) (Minus!4793) (Broken!23969 (value!147871 List!30313)) (And!4793) (Div!4793) (LessEqual!4793) (Mod!4793) (Concat!12509) (Not!4793) (Plus!4793) (SpaceValue!4793 (value!147872 List!30313)) (IntegerValue!14381 (value!147873 Int) (text!34000 List!30313)) (StringLiteralValue!14380 (text!34001 List!30313)) (FloatLiteralValue!9587 (text!34002 List!30313)) (BytesLiteralValue!4793 (value!147874 List!30313)) (CommentValue!9587 (value!147875 List!30313)) (StringLiteralValue!14381 (value!147876 List!30313)) (ErrorTokenValue!4793 (msg!4854 List!30313)) )
))
(declare-datatypes ((List!30314 0))(
  ( (Nil!30214) (Cons!30214 (h!35634 C!15588) (t!214339 List!30314)) )
))
(declare-datatypes ((IArray!18773 0))(
  ( (IArray!18774 (innerList!9444 List!30314)) )
))
(declare-datatypes ((Conc!9384 0))(
  ( (Node!9384 (left!23257 Conc!9384) (right!23587 Conc!9384) (csize!18998 Int) (cheight!9595 Int)) (Leaf!14410 (xs!12372 IArray!18773) (csize!18999 Int)) (Empty!9384) )
))
(declare-datatypes ((BalanceConc!18382 0))(
  ( (BalanceConc!18383 (c!420066 Conc!9384)) )
))
(declare-datatypes ((TokenValueInjection!9026 0))(
  ( (TokenValueInjection!9027 (toValue!6477 Int) (toChars!6336 Int)) )
))
(declare-datatypes ((String!33849 0))(
  ( (String!33850 (value!147877 String)) )
))
(declare-datatypes ((Rule!8942 0))(
  ( (Rule!8943 (regex!4571 Regex!7715) (tag!5061 String!33849) (isSeparator!4571 Bool) (transformation!4571 TokenValueInjection!9026)) )
))
(declare-datatypes ((List!30315 0))(
  ( (Nil!30215) (Cons!30215 (h!35635 Rule!8942) (t!214340 List!30315)) )
))
(declare-fun rules!1726 () List!30315)

(get-info :version)

(assert (= (and b!2613543 ((_ is Cons!30215) rules!1726)) b!2613562))

(declare-fun order!16103 () Int)

(declare-fun order!16105 () Int)

(declare-fun dynLambda!12815 (Int Int) Int)

(declare-fun dynLambda!12816 (Int Int) Int)

(assert (=> b!2613564 (< (dynLambda!12815 order!16103 (toValue!6477 (transformation!4571 (h!35635 rules!1726)))) (dynLambda!12816 order!16105 lambda!97874))))

(declare-fun order!16107 () Int)

(declare-fun dynLambda!12817 (Int Int) Int)

(assert (=> b!2613564 (< (dynLambda!12817 order!16107 (toChars!6336 (transformation!4571 (h!35635 rules!1726)))) (dynLambda!12816 order!16105 lambda!97874))))

(assert (=> b!2613543 true))

(declare-fun b!2613534 () Bool)

(declare-fun res!1100170 () Bool)

(declare-fun e!1649114 () Bool)

(assert (=> b!2613534 (=> res!1100170 e!1649114)))

(declare-datatypes ((Token!8612 0))(
  ( (Token!8613 (value!147878 TokenValue!4793) (rule!6941 Rule!8942) (size!23388 Int) (originalCharacters!5337 List!30314)) )
))
(declare-datatypes ((List!30316 0))(
  ( (Nil!30216) (Cons!30216 (h!35636 Token!8612) (t!214341 List!30316)) )
))
(declare-fun lt!918391 () List!30316)

(declare-fun lt!918390 () Token!8612)

(declare-fun contains!5624 (List!30316 Token!8612) Bool)

(assert (=> b!2613534 (= res!1100170 (not (contains!5624 lt!918391 lt!918390)))))

(declare-fun b!2613535 () Bool)

(declare-fun res!1100165 () Bool)

(declare-fun e!1649120 () Bool)

(assert (=> b!2613535 (=> (not res!1100165) (not e!1649120))))

(declare-fun separatorToken!156 () Token!8612)

(assert (=> b!2613535 (= res!1100165 (isSeparator!4571 (rule!6941 separatorToken!156)))))

(declare-fun res!1100166 () Bool)

(declare-fun e!1649113 () Bool)

(assert (=> start!254154 (=> (not res!1100166) (not e!1649113))))

(declare-datatypes ((LexerInterface!4168 0))(
  ( (LexerInterfaceExt!4165 (__x!19420 Int)) (Lexer!4166) )
))
(declare-fun thiss!14197 () LexerInterface!4168)

(declare-fun from!862 () Int)

(assert (=> start!254154 (= res!1100166 (and ((_ is Lexer!4166) thiss!14197) (>= from!862 0)))))

(assert (=> start!254154 e!1649113))

(assert (=> start!254154 true))

(declare-fun e!1649121 () Bool)

(assert (=> start!254154 e!1649121))

(declare-fun e!1649109 () Bool)

(declare-fun inv!40903 (Token!8612) Bool)

(assert (=> start!254154 (and (inv!40903 separatorToken!156) e!1649109)))

(declare-datatypes ((IArray!18775 0))(
  ( (IArray!18776 (innerList!9445 List!30316)) )
))
(declare-datatypes ((Conc!9385 0))(
  ( (Node!9385 (left!23258 Conc!9385) (right!23588 Conc!9385) (csize!19000 Int) (cheight!9596 Int)) (Leaf!14411 (xs!12373 IArray!18775) (csize!19001 Int)) (Empty!9385) )
))
(declare-datatypes ((BalanceConc!18384 0))(
  ( (BalanceConc!18385 (c!420067 Conc!9385)) )
))
(declare-fun v!6381 () BalanceConc!18384)

(declare-fun e!1649119 () Bool)

(declare-fun inv!40904 (BalanceConc!18384) Bool)

(assert (=> start!254154 (and (inv!40904 v!6381) e!1649119)))

(declare-fun b!2613536 () Bool)

(declare-fun res!1100159 () Bool)

(assert (=> b!2613536 (=> (not res!1100159) (not e!1649120))))

(declare-fun rulesProduceIndividualToken!1880 (LexerInterface!4168 List!30315 Token!8612) Bool)

(assert (=> b!2613536 (= res!1100159 (rulesProduceIndividualToken!1880 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2613537 () Bool)

(declare-fun e!1649111 () Bool)

(assert (=> b!2613537 (= e!1649111 (<= 0 from!862))))

(declare-fun b!2613538 () Bool)

(declare-fun res!1100160 () Bool)

(assert (=> b!2613538 (=> (not res!1100160) (not e!1649120))))

(declare-fun isEmpty!17260 (List!30315) Bool)

(assert (=> b!2613538 (= res!1100160 (not (isEmpty!17260 rules!1726)))))

(declare-fun b!2613539 () Bool)

(declare-fun res!1100161 () Bool)

(assert (=> b!2613539 (=> (not res!1100161) (not e!1649120))))

(declare-fun rulesInvariant!3668 (LexerInterface!4168 List!30315) Bool)

(assert (=> b!2613539 (= res!1100161 (rulesInvariant!3668 thiss!14197 rules!1726))))

(declare-fun tp!830152 () Bool)

(declare-fun e!1649122 () Bool)

(declare-fun e!1649118 () Bool)

(declare-fun b!2613540 () Bool)

(declare-fun inv!40898 (String!33849) Bool)

(declare-fun inv!40905 (TokenValueInjection!9026) Bool)

(assert (=> b!2613540 (= e!1649122 (and tp!830152 (inv!40898 (tag!5061 (rule!6941 separatorToken!156))) (inv!40905 (transformation!4571 (rule!6941 separatorToken!156))) e!1649118))))

(declare-fun b!2613541 () Bool)

(declare-fun tp!830157 () Bool)

(declare-fun inv!21 (TokenValue!4793) Bool)

(assert (=> b!2613541 (= e!1649109 (and (inv!21 (value!147878 separatorToken!156)) e!1649122 tp!830157))))

(assert (=> b!2613542 (= e!1649118 (and tp!830158 tp!830155))))

(assert (=> b!2613543 (= e!1649114 e!1649111)))

(declare-fun res!1100167 () Bool)

(assert (=> b!2613543 (=> res!1100167 e!1649111)))

(declare-datatypes ((tuple2!29780 0))(
  ( (tuple2!29781 (_1!17432 Token!8612) (_2!17432 BalanceConc!18382)) )
))
(declare-datatypes ((Option!5950 0))(
  ( (None!5949) (Some!5949 (v!32284 tuple2!29780)) )
))
(declare-fun maxPrefixZipperSequence!898 (LexerInterface!4168 List!30315 BalanceConc!18382) Option!5950)

(declare-fun ++!7337 (BalanceConc!18382 BalanceConc!18382) BalanceConc!18382)

(declare-fun charsOf!2862 (Token!8612) BalanceConc!18382)

(declare-fun printWithSeparatorTokenWhenNeededRec!446 (LexerInterface!4168 List!30315 BalanceConc!18384 Token!8612 Int) BalanceConc!18382)

(assert (=> b!2613543 (= res!1100167 (not ((_ is Some!5949) (maxPrefixZipperSequence!898 thiss!14197 rules!1726 (++!7337 (charsOf!2862 lt!918390) (printWithSeparatorTokenWhenNeededRec!446 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(declare-datatypes ((Unit!44195 0))(
  ( (Unit!44196) )
))
(declare-fun lt!918387 () Unit!44195)

(declare-fun forallContained!927 (List!30316 Int Token!8612) Unit!44195)

(assert (=> b!2613543 (= lt!918387 (forallContained!927 lt!918391 lambda!97874 lt!918390))))

(declare-fun b!2613544 () Bool)

(declare-fun res!1100169 () Bool)

(assert (=> b!2613544 (=> (not res!1100169) (not e!1649120))))

(declare-fun rulesProduceEachTokenIndividually!988 (LexerInterface!4168 List!30315 BalanceConc!18384) Bool)

(assert (=> b!2613544 (= res!1100169 (rulesProduceEachTokenIndividually!988 thiss!14197 rules!1726 v!6381))))

(declare-fun res!1100162 () Bool)

(assert (=> b!2613545 (=> (not res!1100162) (not e!1649120))))

(declare-fun forall!6275 (BalanceConc!18384 Int) Bool)

(assert (=> b!2613545 (= res!1100162 (forall!6275 v!6381 lambda!97873))))

(declare-fun tp!830150 () Bool)

(declare-fun e!1649115 () Bool)

(declare-fun b!2613546 () Bool)

(declare-fun e!1649110 () Bool)

(assert (=> b!2613546 (= e!1649115 (and tp!830150 (inv!40898 (tag!5061 (h!35635 rules!1726))) (inv!40905 (transformation!4571 (h!35635 rules!1726))) e!1649110))))

(declare-fun b!2613547 () Bool)

(declare-fun tp!830156 () Bool)

(assert (=> b!2613547 (= e!1649121 (and e!1649115 tp!830156))))

(declare-fun b!2613548 () Bool)

(declare-fun e!1649112 () Bool)

(assert (=> b!2613548 (= e!1649112 (not e!1649114))))

(declare-fun res!1100168 () Bool)

(assert (=> b!2613548 (=> res!1100168 e!1649114)))

(declare-fun contains!5625 (BalanceConc!18384 Token!8612) Bool)

(assert (=> b!2613548 (= res!1100168 (not (contains!5625 v!6381 lt!918390)))))

(declare-fun apply!7108 (BalanceConc!18384 Int) Token!8612)

(assert (=> b!2613548 (= lt!918390 (apply!7108 v!6381 from!862))))

(declare-fun lt!918388 () List!30316)

(declare-fun tail!4204 (List!30316) List!30316)

(declare-fun drop!1567 (List!30316 Int) List!30316)

(assert (=> b!2613548 (= (tail!4204 lt!918388) (drop!1567 lt!918391 (+ 1 from!862)))))

(declare-fun lt!918386 () Unit!44195)

(declare-fun lemmaDropTail!756 (List!30316 Int) Unit!44195)

(assert (=> b!2613548 (= lt!918386 (lemmaDropTail!756 lt!918391 from!862))))

(declare-fun head!5966 (List!30316) Token!8612)

(declare-fun apply!7109 (List!30316 Int) Token!8612)

(assert (=> b!2613548 (= (head!5966 lt!918388) (apply!7109 lt!918391 from!862))))

(assert (=> b!2613548 (= lt!918388 (drop!1567 lt!918391 from!862))))

(declare-fun lt!918393 () Unit!44195)

(declare-fun lemmaDropApply!782 (List!30316 Int) Unit!44195)

(assert (=> b!2613548 (= lt!918393 (lemmaDropApply!782 lt!918391 from!862))))

(declare-fun b!2613549 () Bool)

(declare-fun res!1100164 () Bool)

(assert (=> b!2613549 (=> (not res!1100164) (not e!1649120))))

(declare-fun sepAndNonSepRulesDisjointChars!1144 (List!30315 List!30315) Bool)

(assert (=> b!2613549 (= res!1100164 (sepAndNonSepRulesDisjointChars!1144 rules!1726 rules!1726))))

(declare-fun b!2613550 () Bool)

(assert (=> b!2613550 (= e!1649113 e!1649120)))

(declare-fun res!1100171 () Bool)

(assert (=> b!2613550 (=> (not res!1100171) (not e!1649120))))

(declare-fun lt!918392 () Int)

(assert (=> b!2613550 (= res!1100171 (<= from!862 lt!918392))))

(declare-fun size!23389 (BalanceConc!18384) Int)

(assert (=> b!2613550 (= lt!918392 (size!23389 v!6381))))

(assert (=> b!2613551 (= e!1649110 (and tp!830153 tp!830151))))

(declare-fun b!2613552 () Bool)

(assert (=> b!2613552 (= e!1649120 e!1649112)))

(declare-fun res!1100163 () Bool)

(assert (=> b!2613552 (=> (not res!1100163) (not e!1649112))))

(assert (=> b!2613552 (= res!1100163 (< from!862 lt!918392))))

(declare-fun lt!918389 () Unit!44195)

(declare-fun lemmaContentSubsetPreservesForall!240 (List!30316 List!30316 Int) Unit!44195)

(declare-fun dropList!874 (BalanceConc!18384 Int) List!30316)

(assert (=> b!2613552 (= lt!918389 (lemmaContentSubsetPreservesForall!240 lt!918391 (dropList!874 v!6381 from!862) lambda!97873))))

(declare-fun list!11341 (BalanceConc!18384) List!30316)

(assert (=> b!2613552 (= lt!918391 (list!11341 v!6381))))

(declare-fun b!2613553 () Bool)

(declare-fun tp!830154 () Bool)

(declare-fun inv!40906 (Conc!9385) Bool)

(assert (=> b!2613553 (= e!1649119 (and (inv!40906 (c!420067 v!6381)) tp!830154))))

(assert (= (and start!254154 res!1100166) b!2613550))

(assert (= (and b!2613550 res!1100171) b!2613538))

(assert (= (and b!2613538 res!1100160) b!2613539))

(assert (= (and b!2613539 res!1100161) b!2613544))

(assert (= (and b!2613544 res!1100169) b!2613536))

(assert (= (and b!2613536 res!1100159) b!2613535))

(assert (= (and b!2613535 res!1100165) b!2613545))

(assert (= (and b!2613545 res!1100162) b!2613549))

(assert (= (and b!2613549 res!1100164) b!2613552))

(assert (= (and b!2613552 res!1100163) b!2613548))

(assert (= (and b!2613548 (not res!1100168)) b!2613534))

(assert (= (and b!2613534 (not res!1100170)) b!2613543))

(assert (= (and b!2613543 (not res!1100167)) b!2613537))

(assert (= b!2613546 b!2613551))

(assert (= b!2613547 b!2613546))

(assert (= (and start!254154 ((_ is Cons!30215) rules!1726)) b!2613547))

(assert (= b!2613540 b!2613542))

(assert (= b!2613541 b!2613540))

(assert (= start!254154 b!2613541))

(assert (= start!254154 b!2613553))

(declare-fun m!2948355 () Bool)

(assert (=> b!2613544 m!2948355))

(declare-fun m!2948357 () Bool)

(assert (=> b!2613538 m!2948357))

(declare-fun m!2948359 () Bool)

(assert (=> b!2613543 m!2948359))

(declare-fun m!2948361 () Bool)

(assert (=> b!2613543 m!2948361))

(declare-fun m!2948363 () Bool)

(assert (=> b!2613543 m!2948363))

(assert (=> b!2613543 m!2948361))

(assert (=> b!2613543 m!2948359))

(declare-fun m!2948365 () Bool)

(assert (=> b!2613543 m!2948365))

(assert (=> b!2613543 m!2948365))

(declare-fun m!2948367 () Bool)

(assert (=> b!2613543 m!2948367))

(declare-fun m!2948369 () Bool)

(assert (=> b!2613539 m!2948369))

(declare-fun m!2948371 () Bool)

(assert (=> b!2613553 m!2948371))

(declare-fun m!2948373 () Bool)

(assert (=> start!254154 m!2948373))

(declare-fun m!2948375 () Bool)

(assert (=> start!254154 m!2948375))

(declare-fun m!2948377 () Bool)

(assert (=> b!2613541 m!2948377))

(declare-fun m!2948379 () Bool)

(assert (=> b!2613549 m!2948379))

(declare-fun m!2948381 () Bool)

(assert (=> b!2613540 m!2948381))

(declare-fun m!2948383 () Bool)

(assert (=> b!2613540 m!2948383))

(declare-fun m!2948385 () Bool)

(assert (=> b!2613534 m!2948385))

(declare-fun m!2948387 () Bool)

(assert (=> b!2613546 m!2948387))

(declare-fun m!2948389 () Bool)

(assert (=> b!2613546 m!2948389))

(declare-fun m!2948391 () Bool)

(assert (=> b!2613536 m!2948391))

(declare-fun m!2948393 () Bool)

(assert (=> b!2613548 m!2948393))

(declare-fun m!2948395 () Bool)

(assert (=> b!2613548 m!2948395))

(declare-fun m!2948397 () Bool)

(assert (=> b!2613548 m!2948397))

(declare-fun m!2948399 () Bool)

(assert (=> b!2613548 m!2948399))

(declare-fun m!2948401 () Bool)

(assert (=> b!2613548 m!2948401))

(declare-fun m!2948403 () Bool)

(assert (=> b!2613548 m!2948403))

(declare-fun m!2948405 () Bool)

(assert (=> b!2613548 m!2948405))

(declare-fun m!2948407 () Bool)

(assert (=> b!2613548 m!2948407))

(declare-fun m!2948409 () Bool)

(assert (=> b!2613548 m!2948409))

(declare-fun m!2948411 () Bool)

(assert (=> b!2613550 m!2948411))

(declare-fun m!2948413 () Bool)

(assert (=> b!2613552 m!2948413))

(assert (=> b!2613552 m!2948413))

(declare-fun m!2948415 () Bool)

(assert (=> b!2613552 m!2948415))

(declare-fun m!2948417 () Bool)

(assert (=> b!2613552 m!2948417))

(declare-fun m!2948419 () Bool)

(assert (=> b!2613545 m!2948419))

(check-sat (not b_next!74239) (not b!2613546) (not b_next!74237) (not b!2613538) (not b!2613534) b_and!191157 (not b_next!74243) (not b!2613539) (not b!2613548) (not b!2613547) (not b!2613552) (not b!2613541) (not b!2613545) (not b!2613544) b_and!191153 (not b!2613549) (not b!2613562) (not b!2613543) (not b!2613540) b_and!191151 b_and!191155 (not b!2613553) (not b!2613536) (not start!254154) (not b!2613550) (not b_next!74241))
(check-sat (not b_next!74239) (not b_next!74237) b_and!191153 (not b_next!74241) b_and!191157 (not b_next!74243) b_and!191151 b_and!191155)
