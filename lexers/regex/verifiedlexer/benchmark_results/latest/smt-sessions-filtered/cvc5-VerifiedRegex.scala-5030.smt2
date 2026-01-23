; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!254736 () Bool)

(assert start!254736)

(declare-fun b!2619421 () Bool)

(declare-fun b_free!73661 () Bool)

(declare-fun b_next!74365 () Bool)

(assert (=> b!2619421 (= b_free!73661 (not b_next!74365))))

(declare-fun tp!831389 () Bool)

(declare-fun b_and!191735 () Bool)

(assert (=> b!2619421 (= tp!831389 b_and!191735)))

(declare-fun b_free!73663 () Bool)

(declare-fun b_next!74367 () Bool)

(assert (=> b!2619421 (= b_free!73663 (not b_next!74367))))

(declare-fun tp!831388 () Bool)

(declare-fun b_and!191737 () Bool)

(assert (=> b!2619421 (= tp!831388 b_and!191737)))

(declare-fun b!2619422 () Bool)

(declare-fun b_free!73665 () Bool)

(declare-fun b_next!74369 () Bool)

(assert (=> b!2619422 (= b_free!73665 (not b_next!74369))))

(declare-fun tp!831384 () Bool)

(declare-fun b_and!191739 () Bool)

(assert (=> b!2619422 (= tp!831384 b_and!191739)))

(declare-fun b_free!73667 () Bool)

(declare-fun b_next!74371 () Bool)

(assert (=> b!2619422 (= b_free!73667 (not b_next!74371))))

(declare-fun tp!831385 () Bool)

(declare-fun b_and!191741 () Bool)

(assert (=> b!2619422 (= tp!831385 b_and!191741)))

(declare-fun bs!474806 () Bool)

(declare-fun b!2619429 () Bool)

(declare-fun b!2619426 () Bool)

(assert (= bs!474806 (and b!2619429 b!2619426)))

(declare-fun lambda!98066 () Int)

(declare-fun lambda!98065 () Int)

(assert (=> bs!474806 (not (= lambda!98066 lambda!98065))))

(declare-fun b!2619450 () Bool)

(declare-fun e!1652656 () Bool)

(assert (=> b!2619450 (= e!1652656 true)))

(declare-fun b!2619449 () Bool)

(declare-fun e!1652655 () Bool)

(assert (=> b!2619449 (= e!1652655 e!1652656)))

(declare-fun b!2619448 () Bool)

(declare-fun e!1652654 () Bool)

(assert (=> b!2619448 (= e!1652654 e!1652655)))

(assert (=> b!2619429 e!1652654))

(assert (= b!2619449 b!2619450))

(assert (= b!2619448 b!2619449))

(declare-datatypes ((List!30351 0))(
  ( (Nil!30251) (Cons!30251 (h!35671 (_ BitVec 16)) (t!215114 List!30351)) )
))
(declare-datatypes ((C!15606 0))(
  ( (C!15607 (val!9737 Int)) )
))
(declare-datatypes ((Regex!7724 0))(
  ( (ElementMatch!7724 (c!421199 C!15606)) (Concat!12526 (regOne!15960 Regex!7724) (regTwo!15960 Regex!7724)) (EmptyExpr!7724) (Star!7724 (reg!8053 Regex!7724)) (EmptyLang!7724) (Union!7724 (regOne!15961 Regex!7724) (regTwo!15961 Regex!7724)) )
))
(declare-datatypes ((String!33895 0))(
  ( (String!33896 (value!148110 String)) )
))
(declare-datatypes ((TokenValue!4802 0))(
  ( (FloatLiteralValue!9604 (text!34059 List!30351)) (TokenValueExt!4801 (__x!19437 Int)) (Broken!24010 (value!148111 List!30351)) (Object!4901) (End!4802) (Def!4802) (Underscore!4802) (Match!4802) (Else!4802) (Error!4802) (Case!4802) (If!4802) (Extends!4802) (Abstract!4802) (Class!4802) (Val!4802) (DelimiterValue!9604 (del!4862 List!30351)) (KeywordValue!4808 (value!148112 List!30351)) (CommentValue!9604 (value!148113 List!30351)) (WhitespaceValue!9604 (value!148114 List!30351)) (IndentationValue!4802 (value!148115 List!30351)) (String!33897) (Int32!4802) (Broken!24011 (value!148116 List!30351)) (Boolean!4803) (Unit!44269) (OperatorValue!4805 (op!4862 List!30351)) (IdentifierValue!9604 (value!148117 List!30351)) (IdentifierValue!9605 (value!148118 List!30351)) (WhitespaceValue!9605 (value!148119 List!30351)) (True!9604) (False!9604) (Broken!24012 (value!148120 List!30351)) (Broken!24013 (value!148121 List!30351)) (True!9605) (RightBrace!4802) (RightBracket!4802) (Colon!4802) (Null!4802) (Comma!4802) (LeftBracket!4802) (False!9605) (LeftBrace!4802) (ImaginaryLiteralValue!4802 (text!34060 List!30351)) (StringLiteralValue!14406 (value!148122 List!30351)) (EOFValue!4802 (value!148123 List!30351)) (IdentValue!4802 (value!148124 List!30351)) (DelimiterValue!9605 (value!148125 List!30351)) (DedentValue!4802 (value!148126 List!30351)) (NewLineValue!4802 (value!148127 List!30351)) (IntegerValue!14406 (value!148128 (_ BitVec 32)) (text!34061 List!30351)) (IntegerValue!14407 (value!148129 Int) (text!34062 List!30351)) (Times!4802) (Or!4802) (Equal!4802) (Minus!4802) (Broken!24014 (value!148130 List!30351)) (And!4802) (Div!4802) (LessEqual!4802) (Mod!4802) (Concat!12527) (Not!4802) (Plus!4802) (SpaceValue!4802 (value!148131 List!30351)) (IntegerValue!14408 (value!148132 Int) (text!34063 List!30351)) (StringLiteralValue!14407 (text!34064 List!30351)) (FloatLiteralValue!9605 (text!34065 List!30351)) (BytesLiteralValue!4802 (value!148133 List!30351)) (CommentValue!9605 (value!148134 List!30351)) (StringLiteralValue!14408 (value!148135 List!30351)) (ErrorTokenValue!4802 (msg!4863 List!30351)) )
))
(declare-datatypes ((List!30352 0))(
  ( (Nil!30252) (Cons!30252 (h!35672 C!15606) (t!215115 List!30352)) )
))
(declare-datatypes ((IArray!18809 0))(
  ( (IArray!18810 (innerList!9462 List!30352)) )
))
(declare-datatypes ((Conc!9402 0))(
  ( (Node!9402 (left!23298 Conc!9402) (right!23628 Conc!9402) (csize!19034 Int) (cheight!9613 Int)) (Leaf!14433 (xs!12396 IArray!18809) (csize!19035 Int)) (Empty!9402) )
))
(declare-datatypes ((BalanceConc!18418 0))(
  ( (BalanceConc!18419 (c!421200 Conc!9402)) )
))
(declare-datatypes ((TokenValueInjection!9044 0))(
  ( (TokenValueInjection!9045 (toValue!6490 Int) (toChars!6349 Int)) )
))
(declare-datatypes ((Rule!8960 0))(
  ( (Rule!8961 (regex!4580 Regex!7724) (tag!5072 String!33895) (isSeparator!4580 Bool) (transformation!4580 TokenValueInjection!9044)) )
))
(declare-datatypes ((List!30353 0))(
  ( (Nil!30253) (Cons!30253 (h!35673 Rule!8960) (t!215116 List!30353)) )
))
(declare-fun rules!1726 () List!30353)

(assert (= (and b!2619429 (is-Cons!30253 rules!1726)) b!2619448))

(declare-fun order!16169 () Int)

(declare-fun order!16171 () Int)

(declare-fun dynLambda!12858 (Int Int) Int)

(declare-fun dynLambda!12859 (Int Int) Int)

(assert (=> b!2619450 (< (dynLambda!12858 order!16169 (toValue!6490 (transformation!4580 (h!35673 rules!1726)))) (dynLambda!12859 order!16171 lambda!98066))))

(declare-fun order!16173 () Int)

(declare-fun dynLambda!12860 (Int Int) Int)

(assert (=> b!2619450 (< (dynLambda!12860 order!16173 (toChars!6349 (transformation!4580 (h!35673 rules!1726)))) (dynLambda!12859 order!16171 lambda!98066))))

(assert (=> b!2619429 true))

(declare-fun b!2619419 () Bool)

(declare-fun res!1102527 () Bool)

(declare-fun e!1652644 () Bool)

(assert (=> b!2619419 (=> res!1102527 e!1652644)))

(declare-datatypes ((LexerInterface!4177 0))(
  ( (LexerInterfaceExt!4174 (__x!19438 Int)) (Lexer!4175) )
))
(declare-fun thiss!14197 () LexerInterface!4177)

(declare-datatypes ((Token!8630 0))(
  ( (Token!8631 (value!148136 TokenValue!4802) (rule!6956 Rule!8960) (size!23418 Int) (originalCharacters!5346 List!30352)) )
))
(declare-datatypes ((List!30354 0))(
  ( (Nil!30254) (Cons!30254 (h!35674 Token!8630) (t!215117 List!30354)) )
))
(declare-fun lt!920800 () List!30354)

(declare-fun rulesProduceEachTokenIndividuallyList!1442 (LexerInterface!4177 List!30353 List!30354) Bool)

(assert (=> b!2619419 (= res!1102527 (not (rulesProduceEachTokenIndividuallyList!1442 thiss!14197 rules!1726 lt!920800)))))

(declare-fun b!2619420 () Bool)

(declare-fun res!1102530 () Bool)

(declare-fun e!1652637 () Bool)

(assert (=> b!2619420 (=> (not res!1102530) (not e!1652637))))

(declare-fun separatorToken!156 () Token!8630)

(assert (=> b!2619420 (= res!1102530 (isSeparator!4580 (rule!6956 separatorToken!156)))))

(declare-fun e!1652638 () Bool)

(assert (=> b!2619421 (= e!1652638 (and tp!831389 tp!831388))))

(declare-fun e!1652640 () Bool)

(assert (=> b!2619422 (= e!1652640 (and tp!831384 tp!831385))))

(declare-fun b!2619423 () Bool)

(declare-fun res!1102534 () Bool)

(assert (=> b!2619423 (=> (not res!1102534) (not e!1652637))))

(declare-fun rulesInvariant!3677 (LexerInterface!4177 List!30353) Bool)

(assert (=> b!2619423 (= res!1102534 (rulesInvariant!3677 thiss!14197 rules!1726))))

(declare-fun b!2619424 () Bool)

(declare-fun res!1102529 () Bool)

(assert (=> b!2619424 (=> (not res!1102529) (not e!1652637))))

(declare-fun rulesProduceIndividualToken!1889 (LexerInterface!4177 List!30353 Token!8630) Bool)

(assert (=> b!2619424 (= res!1102529 (rulesProduceIndividualToken!1889 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2619425 () Bool)

(declare-fun e!1652633 () Bool)

(assert (=> b!2619425 (= e!1652637 e!1652633)))

(declare-fun res!1102532 () Bool)

(assert (=> b!2619425 (=> (not res!1102532) (not e!1652633))))

(declare-fun from!862 () Int)

(declare-fun lt!920803 () Int)

(assert (=> b!2619425 (= res!1102532 (< from!862 lt!920803))))

(declare-datatypes ((Unit!44270 0))(
  ( (Unit!44271) )
))
(declare-fun lt!920804 () Unit!44270)

(declare-fun lt!920807 () List!30354)

(declare-fun lemmaContentSubsetPreservesForall!249 (List!30354 List!30354 Int) Unit!44270)

(assert (=> b!2619425 (= lt!920804 (lemmaContentSubsetPreservesForall!249 lt!920807 lt!920800 lambda!98065))))

(declare-datatypes ((IArray!18811 0))(
  ( (IArray!18812 (innerList!9463 List!30354)) )
))
(declare-datatypes ((Conc!9403 0))(
  ( (Node!9403 (left!23299 Conc!9403) (right!23629 Conc!9403) (csize!19036 Int) (cheight!9614 Int)) (Leaf!14434 (xs!12397 IArray!18811) (csize!19037 Int)) (Empty!9403) )
))
(declare-datatypes ((BalanceConc!18420 0))(
  ( (BalanceConc!18421 (c!421201 Conc!9403)) )
))
(declare-fun v!6381 () BalanceConc!18420)

(declare-fun dropList!883 (BalanceConc!18420 Int) List!30354)

(assert (=> b!2619425 (= lt!920800 (dropList!883 v!6381 from!862))))

(declare-fun list!11360 (BalanceConc!18420) List!30354)

(assert (=> b!2619425 (= lt!920807 (list!11360 v!6381))))

(declare-fun res!1102528 () Bool)

(declare-fun e!1652639 () Bool)

(assert (=> start!254736 (=> (not res!1102528) (not e!1652639))))

(assert (=> start!254736 (= res!1102528 (and (is-Lexer!4175 thiss!14197) (>= from!862 0)))))

(assert (=> start!254736 e!1652639))

(assert (=> start!254736 true))

(declare-fun e!1652645 () Bool)

(assert (=> start!254736 e!1652645))

(declare-fun e!1652642 () Bool)

(declare-fun inv!40970 (Token!8630) Bool)

(assert (=> start!254736 (and (inv!40970 separatorToken!156) e!1652642)))

(declare-fun e!1652634 () Bool)

(declare-fun inv!40971 (BalanceConc!18420) Bool)

(assert (=> start!254736 (and (inv!40971 v!6381) e!1652634)))

(declare-fun res!1102536 () Bool)

(assert (=> b!2619426 (=> (not res!1102536) (not e!1652637))))

(declare-fun forall!6294 (BalanceConc!18420 Int) Bool)

(assert (=> b!2619426 (= res!1102536 (forall!6294 v!6381 lambda!98065))))

(declare-fun e!1652636 () Bool)

(declare-fun b!2619427 () Bool)

(declare-fun tp!831387 () Bool)

(declare-fun inv!21 (TokenValue!4802) Bool)

(assert (=> b!2619427 (= e!1652642 (and (inv!21 (value!148136 separatorToken!156)) e!1652636 tp!831387))))

(declare-fun b!2619428 () Bool)

(declare-fun e!1652647 () Bool)

(assert (=> b!2619428 (= e!1652633 (not e!1652647))))

(declare-fun res!1102525 () Bool)

(assert (=> b!2619428 (=> res!1102525 e!1652647)))

(declare-fun lt!920798 () Token!8630)

(declare-fun contains!5650 (BalanceConc!18420 Token!8630) Bool)

(assert (=> b!2619428 (= res!1102525 (not (contains!5650 v!6381 lt!920798)))))

(declare-fun apply!7132 (BalanceConc!18420 Int) Token!8630)

(assert (=> b!2619428 (= lt!920798 (apply!7132 v!6381 from!862))))

(declare-fun lt!920805 () List!30354)

(declare-fun tail!4215 (List!30354) List!30354)

(declare-fun drop!1576 (List!30354 Int) List!30354)

(assert (=> b!2619428 (= (tail!4215 lt!920805) (drop!1576 lt!920807 (+ 1 from!862)))))

(declare-fun lt!920802 () Unit!44270)

(declare-fun lemmaDropTail!765 (List!30354 Int) Unit!44270)

(assert (=> b!2619428 (= lt!920802 (lemmaDropTail!765 lt!920807 from!862))))

(declare-fun head!5977 (List!30354) Token!8630)

(declare-fun apply!7133 (List!30354 Int) Token!8630)

(assert (=> b!2619428 (= (head!5977 lt!920805) (apply!7133 lt!920807 from!862))))

(assert (=> b!2619428 (= lt!920805 (drop!1576 lt!920807 from!862))))

(declare-fun lt!920806 () Unit!44270)

(declare-fun lemmaDropApply!791 (List!30354 Int) Unit!44270)

(assert (=> b!2619428 (= lt!920806 (lemmaDropApply!791 lt!920807 from!862))))

(assert (=> b!2619429 (= e!1652647 e!1652644)))

(declare-fun res!1102524 () Bool)

(assert (=> b!2619429 (=> res!1102524 e!1652644)))

(declare-datatypes ((tuple2!29818 0))(
  ( (tuple2!29819 (_1!17451 Token!8630) (_2!17451 BalanceConc!18418)) )
))
(declare-datatypes ((Option!5963 0))(
  ( (None!5962) (Some!5962 (v!32317 tuple2!29818)) )
))
(declare-fun lt!920799 () Option!5963)

(assert (=> b!2619429 (= res!1102524 (or (not (is-Some!5962 lt!920799)) (not (= (_1!17451 (v!32317 lt!920799)) lt!920798))))))

(declare-fun maxPrefixZipperSequence!907 (LexerInterface!4177 List!30353 BalanceConc!18418) Option!5963)

(declare-fun ++!7352 (BalanceConc!18418 BalanceConc!18418) BalanceConc!18418)

(declare-fun charsOf!2871 (Token!8630) BalanceConc!18418)

(declare-fun printWithSeparatorTokenWhenNeededRec!455 (LexerInterface!4177 List!30353 BalanceConc!18420 Token!8630 Int) BalanceConc!18418)

(assert (=> b!2619429 (= lt!920799 (maxPrefixZipperSequence!907 thiss!14197 rules!1726 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!920801 () Unit!44270)

(declare-fun forallContained!936 (List!30354 Int Token!8630) Unit!44270)

(assert (=> b!2619429 (= lt!920801 (forallContained!936 lt!920807 lambda!98066 lt!920798))))

(declare-fun b!2619430 () Bool)

(declare-fun e!1652646 () Bool)

(declare-fun tp!831383 () Bool)

(assert (=> b!2619430 (= e!1652645 (and e!1652646 tp!831383))))

(declare-fun b!2619431 () Bool)

(declare-fun tp!831386 () Bool)

(declare-fun inv!40972 (Conc!9403) Bool)

(assert (=> b!2619431 (= e!1652634 (and (inv!40972 (c!421201 v!6381)) tp!831386))))

(declare-fun b!2619432 () Bool)

(assert (=> b!2619432 (= e!1652639 e!1652637)))

(declare-fun res!1102526 () Bool)

(assert (=> b!2619432 (=> (not res!1102526) (not e!1652637))))

(assert (=> b!2619432 (= res!1102526 (<= from!862 lt!920803))))

(declare-fun size!23419 (BalanceConc!18420) Int)

(assert (=> b!2619432 (= lt!920803 (size!23419 v!6381))))

(declare-fun b!2619433 () Bool)

(declare-fun res!1102535 () Bool)

(assert (=> b!2619433 (=> (not res!1102535) (not e!1652637))))

(declare-fun sepAndNonSepRulesDisjointChars!1153 (List!30353 List!30353) Bool)

(assert (=> b!2619433 (= res!1102535 (sepAndNonSepRulesDisjointChars!1153 rules!1726 rules!1726))))

(declare-fun b!2619434 () Bool)

(declare-fun res!1102537 () Bool)

(assert (=> b!2619434 (=> (not res!1102537) (not e!1652637))))

(declare-fun isEmpty!17287 (List!30353) Bool)

(assert (=> b!2619434 (= res!1102537 (not (isEmpty!17287 rules!1726)))))

(declare-fun b!2619435 () Bool)

(declare-fun res!1102531 () Bool)

(assert (=> b!2619435 (=> res!1102531 e!1652647)))

(declare-fun contains!5651 (List!30354 Token!8630) Bool)

(assert (=> b!2619435 (= res!1102531 (not (contains!5651 lt!920807 lt!920798)))))

(declare-fun b!2619436 () Bool)

(declare-fun tp!831390 () Bool)

(declare-fun inv!40967 (String!33895) Bool)

(declare-fun inv!40973 (TokenValueInjection!9044) Bool)

(assert (=> b!2619436 (= e!1652636 (and tp!831390 (inv!40967 (tag!5072 (rule!6956 separatorToken!156))) (inv!40973 (transformation!4580 (rule!6956 separatorToken!156))) e!1652640))))

(declare-fun b!2619437 () Bool)

(declare-fun tp!831391 () Bool)

(assert (=> b!2619437 (= e!1652646 (and tp!831391 (inv!40967 (tag!5072 (h!35673 rules!1726))) (inv!40973 (transformation!4580 (h!35673 rules!1726))) e!1652638))))

(declare-fun b!2619438 () Bool)

(declare-fun res!1102533 () Bool)

(assert (=> b!2619438 (=> (not res!1102533) (not e!1652637))))

(declare-fun rulesProduceEachTokenIndividually!997 (LexerInterface!4177 List!30353 BalanceConc!18420) Bool)

(assert (=> b!2619438 (= res!1102533 (rulesProduceEachTokenIndividually!997 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2619439 () Bool)

(declare-fun forall!6295 (List!30354 Int) Bool)

(assert (=> b!2619439 (= e!1652644 (forall!6295 lt!920800 lambda!98065))))

(assert (= (and start!254736 res!1102528) b!2619432))

(assert (= (and b!2619432 res!1102526) b!2619434))

(assert (= (and b!2619434 res!1102537) b!2619423))

(assert (= (and b!2619423 res!1102534) b!2619438))

(assert (= (and b!2619438 res!1102533) b!2619424))

(assert (= (and b!2619424 res!1102529) b!2619420))

(assert (= (and b!2619420 res!1102530) b!2619426))

(assert (= (and b!2619426 res!1102536) b!2619433))

(assert (= (and b!2619433 res!1102535) b!2619425))

(assert (= (and b!2619425 res!1102532) b!2619428))

(assert (= (and b!2619428 (not res!1102525)) b!2619435))

(assert (= (and b!2619435 (not res!1102531)) b!2619429))

(assert (= (and b!2619429 (not res!1102524)) b!2619419))

(assert (= (and b!2619419 (not res!1102527)) b!2619439))

(assert (= b!2619437 b!2619421))

(assert (= b!2619430 b!2619437))

(assert (= (and start!254736 (is-Cons!30253 rules!1726)) b!2619430))

(assert (= b!2619436 b!2619422))

(assert (= b!2619427 b!2619436))

(assert (= start!254736 b!2619427))

(assert (= start!254736 b!2619431))

(declare-fun m!2957929 () Bool)

(assert (=> b!2619431 m!2957929))

(declare-fun m!2957931 () Bool)

(assert (=> b!2619434 m!2957931))

(declare-fun m!2957933 () Bool)

(assert (=> b!2619425 m!2957933))

(declare-fun m!2957935 () Bool)

(assert (=> b!2619425 m!2957935))

(declare-fun m!2957937 () Bool)

(assert (=> b!2619425 m!2957937))

(declare-fun m!2957939 () Bool)

(assert (=> b!2619426 m!2957939))

(declare-fun m!2957941 () Bool)

(assert (=> b!2619423 m!2957941))

(declare-fun m!2957943 () Bool)

(assert (=> b!2619433 m!2957943))

(declare-fun m!2957945 () Bool)

(assert (=> b!2619436 m!2957945))

(declare-fun m!2957947 () Bool)

(assert (=> b!2619436 m!2957947))

(declare-fun m!2957949 () Bool)

(assert (=> b!2619427 m!2957949))

(declare-fun m!2957951 () Bool)

(assert (=> b!2619424 m!2957951))

(declare-fun m!2957953 () Bool)

(assert (=> b!2619435 m!2957953))

(declare-fun m!2957955 () Bool)

(assert (=> b!2619432 m!2957955))

(declare-fun m!2957957 () Bool)

(assert (=> b!2619438 m!2957957))

(declare-fun m!2957959 () Bool)

(assert (=> start!254736 m!2957959))

(declare-fun m!2957961 () Bool)

(assert (=> start!254736 m!2957961))

(declare-fun m!2957963 () Bool)

(assert (=> b!2619419 m!2957963))

(declare-fun m!2957965 () Bool)

(assert (=> b!2619428 m!2957965))

(declare-fun m!2957967 () Bool)

(assert (=> b!2619428 m!2957967))

(declare-fun m!2957969 () Bool)

(assert (=> b!2619428 m!2957969))

(declare-fun m!2957971 () Bool)

(assert (=> b!2619428 m!2957971))

(declare-fun m!2957973 () Bool)

(assert (=> b!2619428 m!2957973))

(declare-fun m!2957975 () Bool)

(assert (=> b!2619428 m!2957975))

(declare-fun m!2957977 () Bool)

(assert (=> b!2619428 m!2957977))

(declare-fun m!2957979 () Bool)

(assert (=> b!2619428 m!2957979))

(declare-fun m!2957981 () Bool)

(assert (=> b!2619428 m!2957981))

(declare-fun m!2957983 () Bool)

(assert (=> b!2619437 m!2957983))

(declare-fun m!2957985 () Bool)

(assert (=> b!2619437 m!2957985))

(declare-fun m!2957987 () Bool)

(assert (=> b!2619439 m!2957987))

(declare-fun m!2957989 () Bool)

(assert (=> b!2619429 m!2957989))

(declare-fun m!2957991 () Bool)

(assert (=> b!2619429 m!2957991))

(declare-fun m!2957993 () Bool)

(assert (=> b!2619429 m!2957993))

(declare-fun m!2957995 () Bool)

(assert (=> b!2619429 m!2957995))

(assert (=> b!2619429 m!2957989))

(assert (=> b!2619429 m!2957991))

(assert (=> b!2619429 m!2957993))

(declare-fun m!2957997 () Bool)

(assert (=> b!2619429 m!2957997))

(push 1)

(assert (not b!2619426))

(assert b_and!191741)

(assert (not start!254736))

(assert (not b!2619436))

(assert b_and!191735)

(assert (not b!2619432))

(assert (not b!2619434))

(assert (not b_next!74371))

(assert (not b!2619425))

(assert (not b!2619427))

(assert (not b!2619429))

(assert b_and!191739)

(assert (not b_next!74367))

(assert (not b_next!74369))

(assert (not b!2619437))

(assert (not b!2619423))

(assert (not b_next!74365))

(assert (not b!2619419))

(assert (not b!2619424))

(assert b_and!191737)

(assert (not b!2619435))

(assert (not b!2619428))

(assert (not b!2619431))

(assert (not b!2619439))

(assert (not b!2619438))

(assert (not b!2619448))

(assert (not b!2619433))

(assert (not b!2619430))

(check-sat)

(pop 1)

(push 1)

(assert b_and!191741)

(assert (not b_next!74369))

(assert (not b_next!74365))

(assert b_and!191735)

(assert b_and!191737)

(assert (not b_next!74371))

(assert b_and!191739)

(assert (not b_next!74367))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!474813 () Bool)

(declare-fun d!742977 () Bool)

(assert (= bs!474813 (and d!742977 b!2619426)))

(declare-fun lambda!98081 () Int)

(assert (=> bs!474813 (= lambda!98081 lambda!98065)))

(declare-fun bs!474814 () Bool)

(assert (= bs!474814 (and d!742977 b!2619429)))

(assert (=> bs!474814 (not (= lambda!98081 lambda!98066))))

(declare-fun bs!474815 () Bool)

(declare-fun b!2619612 () Bool)

(assert (= bs!474815 (and b!2619612 b!2619426)))

(declare-fun lambda!98082 () Int)

(assert (=> bs!474815 (not (= lambda!98082 lambda!98065))))

(declare-fun bs!474816 () Bool)

(assert (= bs!474816 (and b!2619612 b!2619429)))

(assert (=> bs!474816 (= lambda!98082 lambda!98066)))

(declare-fun bs!474817 () Bool)

(assert (= bs!474817 (and b!2619612 d!742977)))

(assert (=> bs!474817 (not (= lambda!98082 lambda!98081))))

(declare-fun b!2619620 () Bool)

(declare-fun e!1652771 () Bool)

(assert (=> b!2619620 (= e!1652771 true)))

(declare-fun b!2619619 () Bool)

(declare-fun e!1652770 () Bool)

(assert (=> b!2619619 (= e!1652770 e!1652771)))

(declare-fun b!2619618 () Bool)

(declare-fun e!1652769 () Bool)

(assert (=> b!2619618 (= e!1652769 e!1652770)))

(assert (=> b!2619612 e!1652769))

(assert (= b!2619619 b!2619620))

(assert (= b!2619618 b!2619619))

(assert (= (and b!2619612 (is-Cons!30253 rules!1726)) b!2619618))

(assert (=> b!2619620 (< (dynLambda!12858 order!16169 (toValue!6490 (transformation!4580 (h!35673 rules!1726)))) (dynLambda!12859 order!16171 lambda!98082))))

(assert (=> b!2619620 (< (dynLambda!12860 order!16173 (toChars!6349 (transformation!4580 (h!35673 rules!1726)))) (dynLambda!12859 order!16171 lambda!98082))))

(assert (=> b!2619612 true))

(declare-fun call!168327 () Token!8630)

(declare-fun bm!168322 () Bool)

(declare-fun c!421233 () Bool)

(declare-fun c!421234 () Bool)

(declare-fun call!168329 () BalanceConc!18418)

(declare-fun call!168331 () Token!8630)

(assert (=> bm!168322 (= call!168329 (charsOf!2871 (ite c!421234 call!168331 (ite c!421233 separatorToken!156 call!168327))))))

(declare-fun b!2619605 () Bool)

(declare-fun e!1652760 () Bool)

(assert (=> b!2619605 (= e!1652760 (<= (+ 1 from!862) (size!23419 v!6381)))))

(declare-fun b!2619606 () Bool)

(declare-fun e!1652761 () BalanceConc!18418)

(assert (=> b!2619606 (= e!1652761 (BalanceConc!18419 Empty!9402))))

(declare-fun print!1603 (LexerInterface!4177 BalanceConc!18420) BalanceConc!18418)

(declare-fun singletonSeq!2020 (Token!8630) BalanceConc!18420)

(declare-fun printTailRec!1092 (LexerInterface!4177 BalanceConc!18420 Int BalanceConc!18418) BalanceConc!18418)

(assert (=> b!2619606 (= (print!1603 thiss!14197 (singletonSeq!2020 call!168327)) (printTailRec!1092 thiss!14197 (singletonSeq!2020 call!168327) 0 (BalanceConc!18419 Empty!9402)))))

(declare-fun lt!920884 () Unit!44270)

(declare-fun Unit!44275 () Unit!44270)

(assert (=> b!2619606 (= lt!920884 Unit!44275)))

(declare-fun call!168330 () BalanceConc!18418)

(declare-fun lt!920883 () BalanceConc!18418)

(declare-fun lt!920887 () Unit!44270)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!788 (LexerInterface!4177 List!30353 List!30352 List!30352) Unit!44270)

(declare-fun list!11362 (BalanceConc!18418) List!30352)

(assert (=> b!2619606 (= lt!920887 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!788 thiss!14197 rules!1726 (list!11362 call!168330) (list!11362 lt!920883)))))

(assert (=> b!2619606 false))

(declare-fun lt!920886 () Unit!44270)

(declare-fun Unit!44276 () Unit!44270)

(assert (=> b!2619606 (= lt!920886 Unit!44276)))

(declare-fun b!2619607 () Bool)

(declare-fun e!1652764 () BalanceConc!18418)

(declare-fun call!168328 () BalanceConc!18418)

(assert (=> b!2619607 (= e!1652764 call!168328)))

(declare-fun b!2619608 () Bool)

(declare-fun e!1652766 () Bool)

(assert (=> b!2619608 (= c!421233 e!1652766)))

(declare-fun res!1102613 () Bool)

(assert (=> b!2619608 (=> (not res!1102613) (not e!1652766))))

(declare-fun lt!920888 () Option!5963)

(assert (=> b!2619608 (= res!1102613 (is-Some!5962 lt!920888))))

(assert (=> b!2619608 (= e!1652764 e!1652761)))

(declare-fun b!2619609 () Bool)

(declare-fun e!1652765 () BalanceConc!18418)

(assert (=> b!2619609 (= e!1652765 (charsOf!2871 call!168327))))

(declare-fun b!2619610 () Bool)

(assert (=> b!2619610 (= e!1652765 call!168329)))

(declare-fun lt!920895 () BalanceConc!18418)

(declare-fun printWithSeparatorTokenWhenNeededList!647 (LexerInterface!4177 List!30353 List!30354 Token!8630) List!30352)

(assert (=> d!742977 (= (list!11362 lt!920895) (printWithSeparatorTokenWhenNeededList!647 thiss!14197 rules!1726 (dropList!883 v!6381 (+ 1 from!862)) separatorToken!156))))

(declare-fun e!1652763 () BalanceConc!18418)

(assert (=> d!742977 (= lt!920895 e!1652763)))

(declare-fun c!421235 () Bool)

(assert (=> d!742977 (= c!421235 (>= (+ 1 from!862) (size!23419 v!6381)))))

(declare-fun lt!920891 () Unit!44270)

(assert (=> d!742977 (= lt!920891 (lemmaContentSubsetPreservesForall!249 (list!11360 v!6381) (dropList!883 v!6381 (+ 1 from!862)) lambda!98081))))

(assert (=> d!742977 e!1652760))

(declare-fun res!1102612 () Bool)

(assert (=> d!742977 (=> (not res!1102612) (not e!1652760))))

(assert (=> d!742977 (= res!1102612 (>= (+ 1 from!862) 0))))

(assert (=> d!742977 (= (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)) lt!920895)))

(declare-fun bm!168323 () Bool)

(assert (=> bm!168323 (= call!168330 call!168329)))

(declare-fun bm!168324 () Bool)

(assert (=> bm!168324 (= call!168327 call!168331)))

(declare-fun b!2619611 () Bool)

(assert (=> b!2619611 (= e!1652766 (not (= (_1!17451 (v!32317 lt!920888)) call!168331)))))

(declare-fun bm!168325 () Bool)

(assert (=> bm!168325 (= call!168331 (apply!7132 v!6381 (+ 1 from!862)))))

(assert (=> b!2619612 (= e!1652763 e!1652764)))

(declare-fun lt!920892 () List!30354)

(assert (=> b!2619612 (= lt!920892 (list!11360 v!6381))))

(declare-fun lt!920882 () Unit!44270)

(assert (=> b!2619612 (= lt!920882 (lemmaDropApply!791 lt!920892 (+ 1 from!862)))))

(assert (=> b!2619612 (= (head!5977 (drop!1576 lt!920892 (+ 1 from!862))) (apply!7133 lt!920892 (+ 1 from!862)))))

(declare-fun lt!920890 () Unit!44270)

(assert (=> b!2619612 (= lt!920890 lt!920882)))

(declare-fun lt!920894 () List!30354)

(assert (=> b!2619612 (= lt!920894 (list!11360 v!6381))))

(declare-fun lt!920889 () Unit!44270)

(assert (=> b!2619612 (= lt!920889 (lemmaDropTail!765 lt!920894 (+ 1 from!862)))))

(assert (=> b!2619612 (= (tail!4215 (drop!1576 lt!920894 (+ 1 from!862))) (drop!1576 lt!920894 (+ 1 from!862 1)))))

(declare-fun lt!920885 () Unit!44270)

(assert (=> b!2619612 (= lt!920885 lt!920889)))

(declare-fun lt!920893 () Unit!44270)

(assert (=> b!2619612 (= lt!920893 (forallContained!936 (list!11360 v!6381) lambda!98082 (apply!7132 v!6381 (+ 1 from!862))))))

(assert (=> b!2619612 (= lt!920883 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)))))

(assert (=> b!2619612 (= lt!920888 (maxPrefixZipperSequence!907 thiss!14197 rules!1726 (++!7352 (charsOf!2871 (apply!7132 v!6381 (+ 1 from!862))) lt!920883)))))

(declare-fun res!1102611 () Bool)

(assert (=> b!2619612 (= res!1102611 (is-Some!5962 lt!920888))))

(declare-fun e!1652762 () Bool)

(assert (=> b!2619612 (=> (not res!1102611) (not e!1652762))))

(assert (=> b!2619612 (= c!421234 e!1652762)))

(declare-fun b!2619613 () Bool)

(assert (=> b!2619613 (= e!1652763 (BalanceConc!18419 Empty!9402))))

(declare-fun b!2619614 () Bool)

(assert (=> b!2619614 (= e!1652762 (= (_1!17451 (v!32317 lt!920888)) (apply!7132 v!6381 (+ 1 from!862))))))

(declare-fun bm!168326 () Bool)

(declare-fun c!421236 () Bool)

(assert (=> bm!168326 (= c!421236 c!421234)))

(assert (=> bm!168326 (= call!168328 (++!7352 e!1652765 (ite c!421234 lt!920883 call!168330)))))

(declare-fun b!2619615 () Bool)

(assert (=> b!2619615 (= e!1652761 (++!7352 call!168328 lt!920883))))

(assert (= (and d!742977 res!1102612) b!2619605))

(assert (= (and d!742977 c!421235) b!2619613))

(assert (= (and d!742977 (not c!421235)) b!2619612))

(assert (= (and b!2619612 res!1102611) b!2619614))

(assert (= (and b!2619612 c!421234) b!2619607))

(assert (= (and b!2619612 (not c!421234)) b!2619608))

(assert (= (and b!2619608 res!1102613) b!2619611))

(assert (= (and b!2619608 c!421233) b!2619615))

(assert (= (and b!2619608 (not c!421233)) b!2619606))

(assert (= (or b!2619615 b!2619606) bm!168324))

(assert (= (or b!2619615 b!2619606) bm!168323))

(assert (= (or b!2619607 bm!168324 b!2619611) bm!168325))

(assert (= (or b!2619607 bm!168323) bm!168322))

(assert (= (or b!2619607 b!2619615) bm!168326))

(assert (= (and bm!168326 c!421236) b!2619610))

(assert (= (and bm!168326 (not c!421236)) b!2619609))

(declare-fun m!2958117 () Bool)

(assert (=> b!2619612 m!2958117))

(declare-fun m!2958119 () Bool)

(assert (=> b!2619612 m!2958119))

(declare-fun m!2958121 () Bool)

(assert (=> b!2619612 m!2958121))

(assert (=> b!2619612 m!2958119))

(declare-fun m!2958123 () Bool)

(assert (=> b!2619612 m!2958123))

(declare-fun m!2958125 () Bool)

(assert (=> b!2619612 m!2958125))

(assert (=> b!2619612 m!2958121))

(declare-fun m!2958127 () Bool)

(assert (=> b!2619612 m!2958127))

(assert (=> b!2619612 m!2958123))

(assert (=> b!2619612 m!2958127))

(declare-fun m!2958129 () Bool)

(assert (=> b!2619612 m!2958129))

(declare-fun m!2958131 () Bool)

(assert (=> b!2619612 m!2958131))

(assert (=> b!2619612 m!2957937))

(declare-fun m!2958133 () Bool)

(assert (=> b!2619612 m!2958133))

(declare-fun m!2958135 () Bool)

(assert (=> b!2619612 m!2958135))

(declare-fun m!2958137 () Bool)

(assert (=> b!2619612 m!2958137))

(assert (=> b!2619612 m!2958135))

(declare-fun m!2958139 () Bool)

(assert (=> b!2619612 m!2958139))

(declare-fun m!2958141 () Bool)

(assert (=> b!2619612 m!2958141))

(assert (=> b!2619612 m!2957937))

(assert (=> b!2619612 m!2958119))

(declare-fun m!2958143 () Bool)

(assert (=> b!2619612 m!2958143))

(declare-fun m!2958145 () Bool)

(assert (=> b!2619615 m!2958145))

(declare-fun m!2958147 () Bool)

(assert (=> bm!168326 m!2958147))

(declare-fun m!2958151 () Bool)

(assert (=> bm!168322 m!2958151))

(declare-fun m!2958153 () Bool)

(assert (=> b!2619606 m!2958153))

(declare-fun m!2958155 () Bool)

(assert (=> b!2619606 m!2958155))

(declare-fun m!2958159 () Bool)

(assert (=> b!2619606 m!2958159))

(assert (=> b!2619606 m!2958153))

(declare-fun m!2958161 () Bool)

(assert (=> b!2619606 m!2958161))

(assert (=> b!2619606 m!2958155))

(declare-fun m!2958163 () Bool)

(assert (=> b!2619606 m!2958163))

(assert (=> b!2619606 m!2958159))

(assert (=> b!2619606 m!2958155))

(declare-fun m!2958165 () Bool)

(assert (=> b!2619606 m!2958165))

(assert (=> d!742977 m!2957937))

(declare-fun m!2958167 () Bool)

(assert (=> d!742977 m!2958167))

(declare-fun m!2958169 () Bool)

(assert (=> d!742977 m!2958169))

(declare-fun m!2958171 () Bool)

(assert (=> d!742977 m!2958171))

(assert (=> d!742977 m!2958167))

(assert (=> d!742977 m!2957937))

(assert (=> d!742977 m!2958167))

(declare-fun m!2958173 () Bool)

(assert (=> d!742977 m!2958173))

(assert (=> d!742977 m!2957955))

(declare-fun m!2958175 () Bool)

(assert (=> b!2619609 m!2958175))

(assert (=> bm!168325 m!2958119))

(assert (=> b!2619614 m!2958119))

(assert (=> b!2619605 m!2957955))

(assert (=> b!2619429 d!742977))

(declare-fun d!743009 () Bool)

(declare-fun lt!920901 () BalanceConc!18418)

(assert (=> d!743009 (= (list!11362 lt!920901) (originalCharacters!5346 lt!920798))))

(declare-fun dynLambda!12864 (Int TokenValue!4802) BalanceConc!18418)

(assert (=> d!743009 (= lt!920901 (dynLambda!12864 (toChars!6349 (transformation!4580 (rule!6956 lt!920798))) (value!148136 lt!920798)))))

(assert (=> d!743009 (= (charsOf!2871 lt!920798) lt!920901)))

(declare-fun b_lambda!78783 () Bool)

(assert (=> (not b_lambda!78783) (not d!743009)))

(declare-fun tb!142863 () Bool)

(declare-fun t!215131 () Bool)

(assert (=> (and b!2619421 (= (toChars!6349 (transformation!4580 (h!35673 rules!1726))) (toChars!6349 (transformation!4580 (rule!6956 lt!920798)))) t!215131) tb!142863))

(declare-fun b!2619626 () Bool)

(declare-fun e!1652775 () Bool)

(declare-fun tp!831421 () Bool)

(declare-fun inv!40978 (Conc!9402) Bool)

(assert (=> b!2619626 (= e!1652775 (and (inv!40978 (c!421200 (dynLambda!12864 (toChars!6349 (transformation!4580 (rule!6956 lt!920798))) (value!148136 lt!920798)))) tp!831421))))

(declare-fun result!177606 () Bool)

(declare-fun inv!40979 (BalanceConc!18418) Bool)

(assert (=> tb!142863 (= result!177606 (and (inv!40979 (dynLambda!12864 (toChars!6349 (transformation!4580 (rule!6956 lt!920798))) (value!148136 lt!920798))) e!1652775))))

(assert (= tb!142863 b!2619626))

(declare-fun m!2958177 () Bool)

(assert (=> b!2619626 m!2958177))

(declare-fun m!2958179 () Bool)

(assert (=> tb!142863 m!2958179))

(assert (=> d!743009 t!215131))

(declare-fun b_and!191751 () Bool)

(assert (= b_and!191737 (and (=> t!215131 result!177606) b_and!191751)))

(declare-fun tb!142865 () Bool)

(declare-fun t!215133 () Bool)

(assert (=> (and b!2619422 (= (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))) (toChars!6349 (transformation!4580 (rule!6956 lt!920798)))) t!215133) tb!142865))

(declare-fun result!177610 () Bool)

(assert (= result!177610 result!177606))

(assert (=> d!743009 t!215133))

(declare-fun b_and!191753 () Bool)

(assert (= b_and!191741 (and (=> t!215133 result!177610) b_and!191753)))

(declare-fun m!2958181 () Bool)

(assert (=> d!743009 m!2958181))

(declare-fun m!2958183 () Bool)

(assert (=> d!743009 m!2958183))

(assert (=> b!2619429 d!743009))

(declare-fun d!743011 () Bool)

(declare-fun dynLambda!12865 (Int Token!8630) Bool)

(assert (=> d!743011 (dynLambda!12865 lambda!98066 lt!920798)))

(declare-fun lt!920906 () Unit!44270)

(declare-fun choose!15544 (List!30354 Int Token!8630) Unit!44270)

(assert (=> d!743011 (= lt!920906 (choose!15544 lt!920807 lambda!98066 lt!920798))))

(declare-fun e!1652780 () Bool)

(assert (=> d!743011 e!1652780))

(declare-fun res!1102621 () Bool)

(assert (=> d!743011 (=> (not res!1102621) (not e!1652780))))

(assert (=> d!743011 (= res!1102621 (forall!6295 lt!920807 lambda!98066))))

(assert (=> d!743011 (= (forallContained!936 lt!920807 lambda!98066 lt!920798) lt!920906)))

(declare-fun b!2619631 () Bool)

(assert (=> b!2619631 (= e!1652780 (contains!5651 lt!920807 lt!920798))))

(assert (= (and d!743011 res!1102621) b!2619631))

(declare-fun b_lambda!78785 () Bool)

(assert (=> (not b_lambda!78785) (not d!743011)))

(declare-fun m!2958185 () Bool)

(assert (=> d!743011 m!2958185))

(declare-fun m!2958187 () Bool)

(assert (=> d!743011 m!2958187))

(declare-fun m!2958189 () Bool)

(assert (=> d!743011 m!2958189))

(assert (=> b!2619631 m!2957953))

(assert (=> b!2619429 d!743011))

(declare-fun b!2619656 () Bool)

(declare-fun e!1652801 () Bool)

(declare-fun lt!920933 () Option!5963)

(declare-fun get!9547 (Option!5963) tuple2!29818)

(declare-datatypes ((tuple2!29822 0))(
  ( (tuple2!29823 (_1!17453 Token!8630) (_2!17453 List!30352)) )
))
(declare-datatypes ((Option!5965 0))(
  ( (None!5964) (Some!5964 (v!32325 tuple2!29822)) )
))
(declare-fun get!9548 (Option!5965) tuple2!29822)

(declare-fun maxPrefixZipper!427 (LexerInterface!4177 List!30353 List!30352) Option!5965)

(assert (=> b!2619656 (= e!1652801 (= (list!11362 (_2!17451 (get!9547 lt!920933))) (_2!17453 (get!9548 (maxPrefixZipper!427 thiss!14197 rules!1726 (list!11362 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun bm!168329 () Bool)

(declare-fun call!168334 () Option!5963)

(declare-fun maxPrefixOneRuleZipperSequence!436 (LexerInterface!4177 Rule!8960 BalanceConc!18418) Option!5963)

(assert (=> bm!168329 (= call!168334 (maxPrefixOneRuleZipperSequence!436 thiss!14197 (h!35673 rules!1726) (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun d!743013 () Bool)

(declare-fun e!1652803 () Bool)

(assert (=> d!743013 e!1652803))

(declare-fun res!1102643 () Bool)

(assert (=> d!743013 (=> (not res!1102643) (not e!1652803))))

(declare-fun isDefined!4773 (Option!5963) Bool)

(declare-fun isDefined!4774 (Option!5965) Bool)

(assert (=> d!743013 (= res!1102643 (= (isDefined!4773 lt!920933) (isDefined!4774 (maxPrefixZipper!427 thiss!14197 rules!1726 (list!11362 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))))

(declare-fun e!1652806 () Option!5963)

(assert (=> d!743013 (= lt!920933 e!1652806)))

(declare-fun c!421239 () Bool)

(assert (=> d!743013 (= c!421239 (and (is-Cons!30253 rules!1726) (is-Nil!30253 (t!215116 rules!1726))))))

(declare-fun lt!920930 () Unit!44270)

(declare-fun lt!920931 () Unit!44270)

(assert (=> d!743013 (= lt!920930 lt!920931)))

(declare-fun lt!920934 () List!30352)

(declare-fun lt!920928 () List!30352)

(declare-fun isPrefix!2428 (List!30352 List!30352) Bool)

(assert (=> d!743013 (isPrefix!2428 lt!920934 lt!920928)))

(declare-fun lemmaIsPrefixRefl!1554 (List!30352 List!30352) Unit!44270)

(assert (=> d!743013 (= lt!920931 (lemmaIsPrefixRefl!1554 lt!920934 lt!920928))))

(assert (=> d!743013 (= lt!920928 (list!11362 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(assert (=> d!743013 (= lt!920934 (list!11362 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun rulesValidInductive!1606 (LexerInterface!4177 List!30353) Bool)

(assert (=> d!743013 (rulesValidInductive!1606 thiss!14197 rules!1726)))

(assert (=> d!743013 (= (maxPrefixZipperSequence!907 thiss!14197 rules!1726 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))) lt!920933)))

(declare-fun b!2619657 () Bool)

(declare-fun e!1652802 () Bool)

(assert (=> b!2619657 (= e!1652803 e!1652802)))

(declare-fun res!1102642 () Bool)

(assert (=> b!2619657 (=> res!1102642 e!1652802)))

(assert (=> b!2619657 (= res!1102642 (not (isDefined!4773 lt!920933)))))

(declare-fun b!2619658 () Bool)

(assert (=> b!2619658 (= e!1652806 call!168334)))

(declare-fun b!2619659 () Bool)

(declare-fun res!1102644 () Bool)

(assert (=> b!2619659 (=> (not res!1102644) (not e!1652803))))

(declare-fun e!1652805 () Bool)

(assert (=> b!2619659 (= res!1102644 e!1652805)))

(declare-fun res!1102646 () Bool)

(assert (=> b!2619659 (=> res!1102646 e!1652805)))

(assert (=> b!2619659 (= res!1102646 (not (isDefined!4773 lt!920933)))))

(declare-fun b!2619660 () Bool)

(declare-fun lt!920929 () Option!5963)

(declare-fun lt!920932 () Option!5963)

(assert (=> b!2619660 (= e!1652806 (ite (and (is-None!5962 lt!920929) (is-None!5962 lt!920932)) None!5962 (ite (is-None!5962 lt!920932) lt!920929 (ite (is-None!5962 lt!920929) lt!920932 (ite (>= (size!23418 (_1!17451 (v!32317 lt!920929))) (size!23418 (_1!17451 (v!32317 lt!920932)))) lt!920929 lt!920932)))))))

(assert (=> b!2619660 (= lt!920929 call!168334)))

(assert (=> b!2619660 (= lt!920932 (maxPrefixZipperSequence!907 thiss!14197 (t!215116 rules!1726) (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun b!2619661 () Bool)

(assert (=> b!2619661 (= e!1652805 e!1652801)))

(declare-fun res!1102645 () Bool)

(assert (=> b!2619661 (=> (not res!1102645) (not e!1652801))))

(assert (=> b!2619661 (= res!1102645 (= (_1!17451 (get!9547 lt!920933)) (_1!17453 (get!9548 (maxPrefixZipper!427 thiss!14197 rules!1726 (list!11362 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun b!2619662 () Bool)

(declare-fun e!1652804 () Bool)

(assert (=> b!2619662 (= e!1652802 e!1652804)))

(declare-fun res!1102647 () Bool)

(assert (=> b!2619662 (=> (not res!1102647) (not e!1652804))))

(declare-fun maxPrefix!2299 (LexerInterface!4177 List!30353 List!30352) Option!5965)

(assert (=> b!2619662 (= res!1102647 (= (_1!17451 (get!9547 lt!920933)) (_1!17453 (get!9548 (maxPrefix!2299 thiss!14197 rules!1726 (list!11362 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(declare-fun b!2619663 () Bool)

(assert (=> b!2619663 (= e!1652804 (= (list!11362 (_2!17451 (get!9547 lt!920933))) (_2!17453 (get!9548 (maxPrefix!2299 thiss!14197 rules!1726 (list!11362 (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))))

(assert (= (and d!743013 c!421239) b!2619658))

(assert (= (and d!743013 (not c!421239)) b!2619660))

(assert (= (or b!2619658 b!2619660) bm!168329))

(assert (= (and d!743013 res!1102643) b!2619659))

(assert (= (and b!2619659 (not res!1102646)) b!2619661))

(assert (= (and b!2619661 res!1102645) b!2619656))

(assert (= (and b!2619659 res!1102644) b!2619657))

(assert (= (and b!2619657 (not res!1102642)) b!2619662))

(assert (= (and b!2619662 res!1102647) b!2619663))

(assert (=> b!2619660 m!2957993))

(declare-fun m!2958211 () Bool)

(assert (=> b!2619660 m!2958211))

(assert (=> bm!168329 m!2957993))

(declare-fun m!2958213 () Bool)

(assert (=> bm!168329 m!2958213))

(declare-fun m!2958215 () Bool)

(assert (=> b!2619663 m!2958215))

(declare-fun m!2958217 () Bool)

(assert (=> b!2619663 m!2958217))

(assert (=> b!2619663 m!2958217))

(declare-fun m!2958219 () Bool)

(assert (=> b!2619663 m!2958219))

(declare-fun m!2958221 () Bool)

(assert (=> b!2619663 m!2958221))

(declare-fun m!2958223 () Bool)

(assert (=> b!2619663 m!2958223))

(assert (=> b!2619663 m!2957993))

(assert (=> b!2619663 m!2958215))

(declare-fun m!2958225 () Bool)

(assert (=> b!2619657 m!2958225))

(assert (=> b!2619659 m!2958225))

(declare-fun m!2958227 () Bool)

(assert (=> b!2619656 m!2958227))

(declare-fun m!2958229 () Bool)

(assert (=> b!2619656 m!2958229))

(assert (=> b!2619656 m!2958221))

(assert (=> b!2619656 m!2958215))

(assert (=> b!2619656 m!2958227))

(assert (=> b!2619656 m!2958223))

(assert (=> b!2619656 m!2957993))

(assert (=> b!2619656 m!2958215))

(assert (=> b!2619662 m!2958223))

(assert (=> b!2619662 m!2957993))

(assert (=> b!2619662 m!2958215))

(assert (=> b!2619662 m!2958215))

(assert (=> b!2619662 m!2958217))

(assert (=> b!2619662 m!2958217))

(assert (=> b!2619662 m!2958219))

(declare-fun m!2958231 () Bool)

(assert (=> d!743013 m!2958231))

(declare-fun m!2958233 () Bool)

(assert (=> d!743013 m!2958233))

(assert (=> d!743013 m!2958227))

(declare-fun m!2958235 () Bool)

(assert (=> d!743013 m!2958235))

(assert (=> d!743013 m!2958225))

(declare-fun m!2958237 () Bool)

(assert (=> d!743013 m!2958237))

(assert (=> d!743013 m!2957993))

(assert (=> d!743013 m!2958215))

(assert (=> d!743013 m!2958215))

(assert (=> d!743013 m!2958227))

(assert (=> b!2619661 m!2958223))

(assert (=> b!2619661 m!2957993))

(assert (=> b!2619661 m!2958215))

(assert (=> b!2619661 m!2958215))

(assert (=> b!2619661 m!2958227))

(assert (=> b!2619661 m!2958227))

(assert (=> b!2619661 m!2958229))

(assert (=> b!2619429 d!743013))

(declare-fun b!2619675 () Bool)

(declare-fun e!1652809 () Bool)

(declare-fun lt!920937 () BalanceConc!18418)

(declare-fun ++!7354 (List!30352 List!30352) List!30352)

(assert (=> b!2619675 (= e!1652809 (= (list!11362 lt!920937) (++!7354 (list!11362 (charsOf!2871 lt!920798)) (list!11362 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(declare-fun b!2619672 () Bool)

(declare-fun res!1102658 () Bool)

(assert (=> b!2619672 (=> (not res!1102658) (not e!1652809))))

(declare-fun isBalanced!2856 (Conc!9402) Bool)

(declare-fun ++!7355 (Conc!9402 Conc!9402) Conc!9402)

(assert (=> b!2619672 (= res!1102658 (isBalanced!2856 (++!7355 (c!421200 (charsOf!2871 lt!920798)) (c!421200 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(declare-fun b!2619673 () Bool)

(declare-fun res!1102659 () Bool)

(assert (=> b!2619673 (=> (not res!1102659) (not e!1652809))))

(declare-fun height!1363 (Conc!9402) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2619673 (= res!1102659 (<= (height!1363 (++!7355 (c!421200 (charsOf!2871 lt!920798)) (c!421200 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (+ (max!0 (height!1363 (c!421200 (charsOf!2871 lt!920798))) (height!1363 (c!421200 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) 1)))))

(declare-fun d!743027 () Bool)

(assert (=> d!743027 e!1652809))

(declare-fun res!1102657 () Bool)

(assert (=> d!743027 (=> (not res!1102657) (not e!1652809))))

(declare-fun appendAssocInst!623 (Conc!9402 Conc!9402) Bool)

(assert (=> d!743027 (= res!1102657 (appendAssocInst!623 (c!421200 (charsOf!2871 lt!920798)) (c!421200 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(assert (=> d!743027 (= lt!920937 (BalanceConc!18419 (++!7355 (c!421200 (charsOf!2871 lt!920798)) (c!421200 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))))))

(assert (=> d!743027 (= (++!7352 (charsOf!2871 lt!920798) (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))) lt!920937)))

(declare-fun b!2619674 () Bool)

(declare-fun res!1102656 () Bool)

(assert (=> b!2619674 (=> (not res!1102656) (not e!1652809))))

(assert (=> b!2619674 (= res!1102656 (>= (height!1363 (++!7355 (c!421200 (charsOf!2871 lt!920798)) (c!421200 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862))))) (max!0 (height!1363 (c!421200 (charsOf!2871 lt!920798))) (height!1363 (c!421200 (printWithSeparatorTokenWhenNeededRec!455 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))))

(assert (= (and d!743027 res!1102657) b!2619672))

(assert (= (and b!2619672 res!1102658) b!2619673))

(assert (= (and b!2619673 res!1102659) b!2619674))

(assert (= (and b!2619674 res!1102656) b!2619675))

(declare-fun m!2958239 () Bool)

(assert (=> b!2619674 m!2958239))

(declare-fun m!2958241 () Bool)

(assert (=> b!2619674 m!2958241))

(assert (=> b!2619674 m!2958239))

(declare-fun m!2958243 () Bool)

(assert (=> b!2619674 m!2958243))

(declare-fun m!2958245 () Bool)

(assert (=> b!2619674 m!2958245))

(assert (=> b!2619674 m!2958245))

(assert (=> b!2619674 m!2958243))

(declare-fun m!2958247 () Bool)

(assert (=> b!2619674 m!2958247))

(declare-fun m!2958249 () Bool)

(assert (=> b!2619675 m!2958249))

(assert (=> b!2619675 m!2957989))

(declare-fun m!2958251 () Bool)

(assert (=> b!2619675 m!2958251))

(assert (=> b!2619675 m!2957991))

(declare-fun m!2958253 () Bool)

(assert (=> b!2619675 m!2958253))

(assert (=> b!2619675 m!2958251))

(assert (=> b!2619675 m!2958253))

(declare-fun m!2958255 () Bool)

(assert (=> b!2619675 m!2958255))

(assert (=> b!2619673 m!2958239))

(assert (=> b!2619673 m!2958241))

(assert (=> b!2619673 m!2958239))

(assert (=> b!2619673 m!2958243))

(assert (=> b!2619673 m!2958245))

(assert (=> b!2619673 m!2958245))

(assert (=> b!2619673 m!2958243))

(assert (=> b!2619673 m!2958247))

(declare-fun m!2958257 () Bool)

(assert (=> d!743027 m!2958257))

(assert (=> d!743027 m!2958239))

(assert (=> b!2619672 m!2958239))

(assert (=> b!2619672 m!2958239))

(declare-fun m!2958259 () Bool)

(assert (=> b!2619672 m!2958259))

(assert (=> b!2619429 d!743027))

(declare-fun d!743029 () Bool)

(declare-fun res!1102664 () Bool)

(declare-fun e!1652814 () Bool)

(assert (=> d!743029 (=> res!1102664 e!1652814)))

(assert (=> d!743029 (= res!1102664 (is-Nil!30254 lt!920800))))

(assert (=> d!743029 (= (forall!6295 lt!920800 lambda!98065) e!1652814)))

(declare-fun b!2619680 () Bool)

(declare-fun e!1652815 () Bool)

(assert (=> b!2619680 (= e!1652814 e!1652815)))

(declare-fun res!1102665 () Bool)

(assert (=> b!2619680 (=> (not res!1102665) (not e!1652815))))

(assert (=> b!2619680 (= res!1102665 (dynLambda!12865 lambda!98065 (h!35674 lt!920800)))))

(declare-fun b!2619681 () Bool)

(assert (=> b!2619681 (= e!1652815 (forall!6295 (t!215117 lt!920800) lambda!98065))))

(assert (= (and d!743029 (not res!1102664)) b!2619680))

(assert (= (and b!2619680 res!1102665) b!2619681))

(declare-fun b_lambda!78789 () Bool)

(assert (=> (not b_lambda!78789) (not b!2619680)))

(declare-fun m!2958261 () Bool)

(assert (=> b!2619680 m!2958261))

(declare-fun m!2958263 () Bool)

(assert (=> b!2619681 m!2958263))

(assert (=> b!2619439 d!743029))

(declare-fun b!2619700 () Bool)

(declare-fun e!1652830 () Int)

(declare-fun call!168337 () Int)

(assert (=> b!2619700 (= e!1652830 (- call!168337 from!862))))

(declare-fun b!2619701 () Bool)

(assert (=> b!2619701 (= e!1652830 0)))

(declare-fun b!2619702 () Bool)

(declare-fun e!1652827 () Int)

(assert (=> b!2619702 (= e!1652827 call!168337)))

(declare-fun b!2619703 () Bool)

(declare-fun e!1652828 () Bool)

(declare-fun lt!920940 () List!30354)

(declare-fun size!23422 (List!30354) Int)

(assert (=> b!2619703 (= e!1652828 (= (size!23422 lt!920940) e!1652827))))

(declare-fun c!421252 () Bool)

(assert (=> b!2619703 (= c!421252 (<= from!862 0))))

(declare-fun b!2619704 () Bool)

(declare-fun e!1652826 () List!30354)

(assert (=> b!2619704 (= e!1652826 (drop!1576 (t!215117 lt!920807) (- from!862 1)))))

(declare-fun b!2619705 () Bool)

(declare-fun e!1652829 () List!30354)

(assert (=> b!2619705 (= e!1652829 Nil!30254)))

(declare-fun d!743031 () Bool)

(assert (=> d!743031 e!1652828))

(declare-fun res!1102668 () Bool)

(assert (=> d!743031 (=> (not res!1102668) (not e!1652828))))

(declare-fun content!4288 (List!30354) (Set Token!8630))

(assert (=> d!743031 (= res!1102668 (set.subset (content!4288 lt!920940) (content!4288 lt!920807)))))

(assert (=> d!743031 (= lt!920940 e!1652829)))

(declare-fun c!421253 () Bool)

(assert (=> d!743031 (= c!421253 (is-Nil!30254 lt!920807))))

(assert (=> d!743031 (= (drop!1576 lt!920807 from!862) lt!920940)))

(declare-fun b!2619706 () Bool)

(assert (=> b!2619706 (= e!1652826 lt!920807)))

(declare-fun b!2619707 () Bool)

(assert (=> b!2619707 (= e!1652827 e!1652830)))

(declare-fun c!421251 () Bool)

(assert (=> b!2619707 (= c!421251 (>= from!862 call!168337))))

(declare-fun b!2619708 () Bool)

(assert (=> b!2619708 (= e!1652829 e!1652826)))

(declare-fun c!421254 () Bool)

(assert (=> b!2619708 (= c!421254 (<= from!862 0))))

(declare-fun bm!168332 () Bool)

(assert (=> bm!168332 (= call!168337 (size!23422 lt!920807))))

(assert (= (and d!743031 c!421253) b!2619705))

(assert (= (and d!743031 (not c!421253)) b!2619708))

(assert (= (and b!2619708 c!421254) b!2619706))

(assert (= (and b!2619708 (not c!421254)) b!2619704))

(assert (= (and d!743031 res!1102668) b!2619703))

(assert (= (and b!2619703 c!421252) b!2619702))

(assert (= (and b!2619703 (not c!421252)) b!2619707))

(assert (= (and b!2619707 c!421251) b!2619701))

(assert (= (and b!2619707 (not c!421251)) b!2619700))

(assert (= (or b!2619702 b!2619707 b!2619700) bm!168332))

(declare-fun m!2958265 () Bool)

(assert (=> b!2619703 m!2958265))

(declare-fun m!2958267 () Bool)

(assert (=> b!2619704 m!2958267))

(declare-fun m!2958269 () Bool)

(assert (=> d!743031 m!2958269))

(declare-fun m!2958271 () Bool)

(assert (=> d!743031 m!2958271))

(declare-fun m!2958273 () Bool)

(assert (=> bm!168332 m!2958273))

(assert (=> b!2619428 d!743031))

(declare-fun d!743033 () Bool)

(assert (=> d!743033 (= (head!5977 lt!920805) (h!35674 lt!920805))))

(assert (=> b!2619428 d!743033))

(declare-fun d!743035 () Bool)

(assert (=> d!743035 (= (tail!4215 (drop!1576 lt!920807 from!862)) (drop!1576 lt!920807 (+ from!862 1)))))

(declare-fun lt!920943 () Unit!44270)

(declare-fun choose!15545 (List!30354 Int) Unit!44270)

(assert (=> d!743035 (= lt!920943 (choose!15545 lt!920807 from!862))))

(declare-fun e!1652833 () Bool)

(assert (=> d!743035 e!1652833))

(declare-fun res!1102671 () Bool)

(assert (=> d!743035 (=> (not res!1102671) (not e!1652833))))

(assert (=> d!743035 (= res!1102671 (>= from!862 0))))

(assert (=> d!743035 (= (lemmaDropTail!765 lt!920807 from!862) lt!920943)))

(declare-fun b!2619711 () Bool)

(assert (=> b!2619711 (= e!1652833 (< from!862 (size!23422 lt!920807)))))

(assert (= (and d!743035 res!1102671) b!2619711))

(assert (=> d!743035 m!2957971))

(assert (=> d!743035 m!2957971))

(declare-fun m!2958275 () Bool)

(assert (=> d!743035 m!2958275))

(declare-fun m!2958277 () Bool)

(assert (=> d!743035 m!2958277))

(declare-fun m!2958279 () Bool)

(assert (=> d!743035 m!2958279))

(assert (=> b!2619711 m!2958273))

(assert (=> b!2619428 d!743035))

(declare-fun d!743037 () Bool)

(assert (=> d!743037 (= (tail!4215 lt!920805) (t!215117 lt!920805))))

(assert (=> b!2619428 d!743037))

(declare-fun d!743039 () Bool)

(declare-fun lt!920946 () Token!8630)

(assert (=> d!743039 (= lt!920946 (apply!7133 (list!11360 v!6381) from!862))))

(declare-fun apply!7136 (Conc!9403 Int) Token!8630)

(assert (=> d!743039 (= lt!920946 (apply!7136 (c!421201 v!6381) from!862))))

(declare-fun e!1652836 () Bool)

(assert (=> d!743039 e!1652836))

(declare-fun res!1102674 () Bool)

(assert (=> d!743039 (=> (not res!1102674) (not e!1652836))))

(assert (=> d!743039 (= res!1102674 (<= 0 from!862))))

(assert (=> d!743039 (= (apply!7132 v!6381 from!862) lt!920946)))

(declare-fun b!2619714 () Bool)

(assert (=> b!2619714 (= e!1652836 (< from!862 (size!23419 v!6381)))))

(assert (= (and d!743039 res!1102674) b!2619714))

(assert (=> d!743039 m!2957937))

(assert (=> d!743039 m!2957937))

(declare-fun m!2958281 () Bool)

(assert (=> d!743039 m!2958281))

(declare-fun m!2958283 () Bool)

(assert (=> d!743039 m!2958283))

(assert (=> b!2619714 m!2957955))

(assert (=> b!2619428 d!743039))

(declare-fun d!743041 () Bool)

(declare-fun lt!920949 () Bool)

(assert (=> d!743041 (= lt!920949 (contains!5651 (list!11360 v!6381) lt!920798))))

(declare-fun contains!5654 (Conc!9403 Token!8630) Bool)

(assert (=> d!743041 (= lt!920949 (contains!5654 (c!421201 v!6381) lt!920798))))

(assert (=> d!743041 (= (contains!5650 v!6381 lt!920798) lt!920949)))

(declare-fun bs!474818 () Bool)

(assert (= bs!474818 d!743041))

(assert (=> bs!474818 m!2957937))

(assert (=> bs!474818 m!2957937))

(declare-fun m!2958285 () Bool)

(assert (=> bs!474818 m!2958285))

(declare-fun m!2958287 () Bool)

(assert (=> bs!474818 m!2958287))

(assert (=> b!2619428 d!743041))

(declare-fun d!743043 () Bool)

(assert (=> d!743043 (= (head!5977 (drop!1576 lt!920807 from!862)) (apply!7133 lt!920807 from!862))))

(declare-fun lt!920952 () Unit!44270)

(declare-fun choose!15546 (List!30354 Int) Unit!44270)

(assert (=> d!743043 (= lt!920952 (choose!15546 lt!920807 from!862))))

(declare-fun e!1652839 () Bool)

(assert (=> d!743043 e!1652839))

(declare-fun res!1102677 () Bool)

(assert (=> d!743043 (=> (not res!1102677) (not e!1652839))))

(assert (=> d!743043 (= res!1102677 (>= from!862 0))))

(assert (=> d!743043 (= (lemmaDropApply!791 lt!920807 from!862) lt!920952)))

(declare-fun b!2619717 () Bool)

(assert (=> b!2619717 (= e!1652839 (< from!862 (size!23422 lt!920807)))))

(assert (= (and d!743043 res!1102677) b!2619717))

(assert (=> d!743043 m!2957971))

(assert (=> d!743043 m!2957971))

(declare-fun m!2958289 () Bool)

(assert (=> d!743043 m!2958289))

(assert (=> d!743043 m!2957975))

(declare-fun m!2958291 () Bool)

(assert (=> d!743043 m!2958291))

(assert (=> b!2619717 m!2958273))

(assert (=> b!2619428 d!743043))

(declare-fun d!743045 () Bool)

(declare-fun lt!920955 () Token!8630)

(assert (=> d!743045 (contains!5651 lt!920807 lt!920955)))

(declare-fun e!1652845 () Token!8630)

(assert (=> d!743045 (= lt!920955 e!1652845)))

(declare-fun c!421257 () Bool)

(assert (=> d!743045 (= c!421257 (= from!862 0))))

(declare-fun e!1652844 () Bool)

(assert (=> d!743045 e!1652844))

(declare-fun res!1102680 () Bool)

(assert (=> d!743045 (=> (not res!1102680) (not e!1652844))))

(assert (=> d!743045 (= res!1102680 (<= 0 from!862))))

(assert (=> d!743045 (= (apply!7133 lt!920807 from!862) lt!920955)))

(declare-fun b!2619724 () Bool)

(assert (=> b!2619724 (= e!1652844 (< from!862 (size!23422 lt!920807)))))

(declare-fun b!2619725 () Bool)

(assert (=> b!2619725 (= e!1652845 (head!5977 lt!920807))))

(declare-fun b!2619726 () Bool)

(assert (=> b!2619726 (= e!1652845 (apply!7133 (tail!4215 lt!920807) (- from!862 1)))))

(assert (= (and d!743045 res!1102680) b!2619724))

(assert (= (and d!743045 c!421257) b!2619725))

(assert (= (and d!743045 (not c!421257)) b!2619726))

(declare-fun m!2958293 () Bool)

(assert (=> d!743045 m!2958293))

(assert (=> b!2619724 m!2958273))

(declare-fun m!2958295 () Bool)

(assert (=> b!2619725 m!2958295))

(declare-fun m!2958297 () Bool)

(assert (=> b!2619726 m!2958297))

(assert (=> b!2619726 m!2958297))

(declare-fun m!2958299 () Bool)

(assert (=> b!2619726 m!2958299))

(assert (=> b!2619428 d!743045))

(declare-fun b!2619727 () Bool)

(declare-fun e!1652850 () Int)

(declare-fun call!168338 () Int)

(assert (=> b!2619727 (= e!1652850 (- call!168338 (+ 1 from!862)))))

(declare-fun b!2619728 () Bool)

(assert (=> b!2619728 (= e!1652850 0)))

(declare-fun b!2619729 () Bool)

(declare-fun e!1652847 () Int)

(assert (=> b!2619729 (= e!1652847 call!168338)))

(declare-fun b!2619730 () Bool)

(declare-fun e!1652848 () Bool)

(declare-fun lt!920956 () List!30354)

(assert (=> b!2619730 (= e!1652848 (= (size!23422 lt!920956) e!1652847))))

(declare-fun c!421259 () Bool)

(assert (=> b!2619730 (= c!421259 (<= (+ 1 from!862) 0))))

(declare-fun b!2619731 () Bool)

(declare-fun e!1652846 () List!30354)

(assert (=> b!2619731 (= e!1652846 (drop!1576 (t!215117 lt!920807) (- (+ 1 from!862) 1)))))

(declare-fun b!2619732 () Bool)

(declare-fun e!1652849 () List!30354)

(assert (=> b!2619732 (= e!1652849 Nil!30254)))

(declare-fun d!743047 () Bool)

(assert (=> d!743047 e!1652848))

(declare-fun res!1102681 () Bool)

(assert (=> d!743047 (=> (not res!1102681) (not e!1652848))))

(assert (=> d!743047 (= res!1102681 (set.subset (content!4288 lt!920956) (content!4288 lt!920807)))))

(assert (=> d!743047 (= lt!920956 e!1652849)))

(declare-fun c!421260 () Bool)

(assert (=> d!743047 (= c!421260 (is-Nil!30254 lt!920807))))

(assert (=> d!743047 (= (drop!1576 lt!920807 (+ 1 from!862)) lt!920956)))

(declare-fun b!2619733 () Bool)

(assert (=> b!2619733 (= e!1652846 lt!920807)))

(declare-fun b!2619734 () Bool)

(assert (=> b!2619734 (= e!1652847 e!1652850)))

(declare-fun c!421258 () Bool)

(assert (=> b!2619734 (= c!421258 (>= (+ 1 from!862) call!168338))))

(declare-fun b!2619735 () Bool)

(assert (=> b!2619735 (= e!1652849 e!1652846)))

(declare-fun c!421261 () Bool)

(assert (=> b!2619735 (= c!421261 (<= (+ 1 from!862) 0))))

(declare-fun bm!168333 () Bool)

(assert (=> bm!168333 (= call!168338 (size!23422 lt!920807))))

(assert (= (and d!743047 c!421260) b!2619732))

(assert (= (and d!743047 (not c!421260)) b!2619735))

(assert (= (and b!2619735 c!421261) b!2619733))

(assert (= (and b!2619735 (not c!421261)) b!2619731))

(assert (= (and d!743047 res!1102681) b!2619730))

(assert (= (and b!2619730 c!421259) b!2619729))

(assert (= (and b!2619730 (not c!421259)) b!2619734))

(assert (= (and b!2619734 c!421258) b!2619728))

(assert (= (and b!2619734 (not c!421258)) b!2619727))

(assert (= (or b!2619729 b!2619734 b!2619727) bm!168333))

(declare-fun m!2958301 () Bool)

(assert (=> b!2619730 m!2958301))

(declare-fun m!2958303 () Bool)

(assert (=> b!2619731 m!2958303))

(declare-fun m!2958305 () Bool)

(assert (=> d!743047 m!2958305))

(assert (=> d!743047 m!2958271))

(assert (=> bm!168333 m!2958273))

(assert (=> b!2619428 d!743047))

(declare-fun bs!474821 () Bool)

(declare-fun d!743049 () Bool)

(assert (= bs!474821 (and d!743049 b!2619426)))

(declare-fun lambda!98090 () Int)

(assert (=> bs!474821 (not (= lambda!98090 lambda!98065))))

(declare-fun bs!474822 () Bool)

(assert (= bs!474822 (and d!743049 b!2619429)))

(assert (=> bs!474822 (= lambda!98090 lambda!98066)))

(declare-fun bs!474823 () Bool)

(assert (= bs!474823 (and d!743049 d!742977)))

(assert (=> bs!474823 (not (= lambda!98090 lambda!98081))))

(declare-fun bs!474824 () Bool)

(assert (= bs!474824 (and d!743049 b!2619612)))

(assert (=> bs!474824 (= lambda!98090 lambda!98082)))

(declare-fun b!2619777 () Bool)

(declare-fun e!1652880 () Bool)

(assert (=> b!2619777 (= e!1652880 true)))

(declare-fun b!2619776 () Bool)

(declare-fun e!1652879 () Bool)

(assert (=> b!2619776 (= e!1652879 e!1652880)))

(declare-fun b!2619775 () Bool)

(declare-fun e!1652878 () Bool)

(assert (=> b!2619775 (= e!1652878 e!1652879)))

(assert (=> d!743049 e!1652878))

(assert (= b!2619776 b!2619777))

(assert (= b!2619775 b!2619776))

(assert (= (and d!743049 (is-Cons!30253 rules!1726)) b!2619775))

(assert (=> b!2619777 (< (dynLambda!12858 order!16169 (toValue!6490 (transformation!4580 (h!35673 rules!1726)))) (dynLambda!12859 order!16171 lambda!98090))))

(assert (=> b!2619777 (< (dynLambda!12860 order!16173 (toChars!6349 (transformation!4580 (h!35673 rules!1726)))) (dynLambda!12859 order!16171 lambda!98090))))

(assert (=> d!743049 true))

(declare-fun lt!921001 () Bool)

(assert (=> d!743049 (= lt!921001 (forall!6295 lt!920800 lambda!98090))))

(declare-fun e!1652876 () Bool)

(assert (=> d!743049 (= lt!921001 e!1652876)))

(declare-fun res!1102696 () Bool)

(assert (=> d!743049 (=> res!1102696 e!1652876)))

(assert (=> d!743049 (= res!1102696 (not (is-Cons!30254 lt!920800)))))

(assert (=> d!743049 (not (isEmpty!17287 rules!1726))))

(assert (=> d!743049 (= (rulesProduceEachTokenIndividuallyList!1442 thiss!14197 rules!1726 lt!920800) lt!921001)))

(declare-fun b!2619773 () Bool)

(declare-fun e!1652877 () Bool)

(assert (=> b!2619773 (= e!1652876 e!1652877)))

(declare-fun res!1102695 () Bool)

(assert (=> b!2619773 (=> (not res!1102695) (not e!1652877))))

(assert (=> b!2619773 (= res!1102695 (rulesProduceIndividualToken!1889 thiss!14197 rules!1726 (h!35674 lt!920800)))))

(declare-fun b!2619774 () Bool)

(assert (=> b!2619774 (= e!1652877 (rulesProduceEachTokenIndividuallyList!1442 thiss!14197 rules!1726 (t!215117 lt!920800)))))

(assert (= (and d!743049 (not res!1102696)) b!2619773))

(assert (= (and b!2619773 res!1102695) b!2619774))

(declare-fun m!2958307 () Bool)

(assert (=> d!743049 m!2958307))

(assert (=> d!743049 m!2957931))

(declare-fun m!2958309 () Bool)

(assert (=> b!2619773 m!2958309))

(declare-fun m!2958311 () Bool)

(assert (=> b!2619774 m!2958311))

(assert (=> b!2619419 d!743049))

(declare-fun d!743051 () Bool)

(assert (=> d!743051 (= (inv!40967 (tag!5072 (h!35673 rules!1726))) (= (mod (str.len (value!148110 (tag!5072 (h!35673 rules!1726)))) 2) 0))))

(assert (=> b!2619437 d!743051))

(declare-fun d!743053 () Bool)

(declare-fun res!1102699 () Bool)

(declare-fun e!1652886 () Bool)

(assert (=> d!743053 (=> (not res!1102699) (not e!1652886))))

(declare-fun semiInverseModEq!1904 (Int Int) Bool)

(assert (=> d!743053 (= res!1102699 (semiInverseModEq!1904 (toChars!6349 (transformation!4580 (h!35673 rules!1726))) (toValue!6490 (transformation!4580 (h!35673 rules!1726)))))))

(assert (=> d!743053 (= (inv!40973 (transformation!4580 (h!35673 rules!1726))) e!1652886)))

(declare-fun b!2619783 () Bool)

(declare-fun equivClasses!1805 (Int Int) Bool)

(assert (=> b!2619783 (= e!1652886 (equivClasses!1805 (toChars!6349 (transformation!4580 (h!35673 rules!1726))) (toValue!6490 (transformation!4580 (h!35673 rules!1726)))))))

(assert (= (and d!743053 res!1102699) b!2619783))

(declare-fun m!2958369 () Bool)

(assert (=> d!743053 m!2958369))

(declare-fun m!2958371 () Bool)

(assert (=> b!2619783 m!2958371))

(assert (=> b!2619437 d!743053))

(declare-fun d!743057 () Bool)

(declare-fun lt!921004 () Bool)

(assert (=> d!743057 (= lt!921004 (forall!6295 (list!11360 v!6381) lambda!98065))))

(declare-fun forall!6298 (Conc!9403 Int) Bool)

(assert (=> d!743057 (= lt!921004 (forall!6298 (c!421201 v!6381) lambda!98065))))

(assert (=> d!743057 (= (forall!6294 v!6381 lambda!98065) lt!921004)))

(declare-fun bs!474828 () Bool)

(assert (= bs!474828 d!743057))

(assert (=> bs!474828 m!2957937))

(assert (=> bs!474828 m!2957937))

(declare-fun m!2958373 () Bool)

(assert (=> bs!474828 m!2958373))

(declare-fun m!2958375 () Bool)

(assert (=> bs!474828 m!2958375))

(assert (=> b!2619426 d!743057))

(declare-fun d!743059 () Bool)

(assert (=> d!743059 (= (inv!40967 (tag!5072 (rule!6956 separatorToken!156))) (= (mod (str.len (value!148110 (tag!5072 (rule!6956 separatorToken!156)))) 2) 0))))

(assert (=> b!2619436 d!743059))

(declare-fun d!743061 () Bool)

(declare-fun res!1102700 () Bool)

(declare-fun e!1652887 () Bool)

(assert (=> d!743061 (=> (not res!1102700) (not e!1652887))))

(assert (=> d!743061 (= res!1102700 (semiInverseModEq!1904 (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))) (toValue!6490 (transformation!4580 (rule!6956 separatorToken!156)))))))

(assert (=> d!743061 (= (inv!40973 (transformation!4580 (rule!6956 separatorToken!156))) e!1652887)))

(declare-fun b!2619784 () Bool)

(assert (=> b!2619784 (= e!1652887 (equivClasses!1805 (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))) (toValue!6490 (transformation!4580 (rule!6956 separatorToken!156)))))))

(assert (= (and d!743061 res!1102700) b!2619784))

(declare-fun m!2958377 () Bool)

(assert (=> d!743061 m!2958377))

(declare-fun m!2958379 () Bool)

(assert (=> b!2619784 m!2958379))

(assert (=> b!2619436 d!743061))

(declare-fun bs!474830 () Bool)

(declare-fun d!743063 () Bool)

(assert (= bs!474830 (and d!743063 d!742977)))

(declare-fun lambda!98096 () Int)

(assert (=> bs!474830 (not (= lambda!98096 lambda!98081))))

(declare-fun bs!474831 () Bool)

(assert (= bs!474831 (and d!743063 b!2619426)))

(assert (=> bs!474831 (not (= lambda!98096 lambda!98065))))

(declare-fun bs!474832 () Bool)

(assert (= bs!474832 (and d!743063 d!743049)))

(assert (=> bs!474832 (= lambda!98096 lambda!98090)))

(declare-fun bs!474833 () Bool)

(assert (= bs!474833 (and d!743063 b!2619612)))

(assert (=> bs!474833 (= lambda!98096 lambda!98082)))

(declare-fun bs!474834 () Bool)

(assert (= bs!474834 (and d!743063 b!2619429)))

(assert (=> bs!474834 (= lambda!98096 lambda!98066)))

(declare-fun b!2619840 () Bool)

(declare-fun e!1652923 () Bool)

(assert (=> b!2619840 (= e!1652923 true)))

(declare-fun b!2619839 () Bool)

(declare-fun e!1652922 () Bool)

(assert (=> b!2619839 (= e!1652922 e!1652923)))

(declare-fun b!2619838 () Bool)

(declare-fun e!1652921 () Bool)

(assert (=> b!2619838 (= e!1652921 e!1652922)))

(assert (=> d!743063 e!1652921))

(assert (= b!2619839 b!2619840))

(assert (= b!2619838 b!2619839))

(assert (= (and d!743063 (is-Cons!30253 rules!1726)) b!2619838))

(assert (=> b!2619840 (< (dynLambda!12858 order!16169 (toValue!6490 (transformation!4580 (h!35673 rules!1726)))) (dynLambda!12859 order!16171 lambda!98096))))

(assert (=> b!2619840 (< (dynLambda!12860 order!16173 (toChars!6349 (transformation!4580 (h!35673 rules!1726)))) (dynLambda!12859 order!16171 lambda!98096))))

(assert (=> d!743063 true))

(declare-fun e!1652920 () Bool)

(assert (=> d!743063 e!1652920))

(declare-fun res!1102736 () Bool)

(assert (=> d!743063 (=> (not res!1102736) (not e!1652920))))

(declare-fun lt!921037 () Bool)

(assert (=> d!743063 (= res!1102736 (= lt!921037 (forall!6295 (list!11360 v!6381) lambda!98096)))))

(assert (=> d!743063 (= lt!921037 (forall!6294 v!6381 lambda!98096))))

(assert (=> d!743063 (not (isEmpty!17287 rules!1726))))

(assert (=> d!743063 (= (rulesProduceEachTokenIndividually!997 thiss!14197 rules!1726 v!6381) lt!921037)))

(declare-fun b!2619837 () Bool)

(assert (=> b!2619837 (= e!1652920 (= lt!921037 (rulesProduceEachTokenIndividuallyList!1442 thiss!14197 rules!1726 (list!11360 v!6381))))))

(assert (= (and d!743063 res!1102736) b!2619837))

(assert (=> d!743063 m!2957937))

(assert (=> d!743063 m!2957937))

(declare-fun m!2958447 () Bool)

(assert (=> d!743063 m!2958447))

(declare-fun m!2958449 () Bool)

(assert (=> d!743063 m!2958449))

(assert (=> d!743063 m!2957931))

(assert (=> b!2619837 m!2957937))

(assert (=> b!2619837 m!2957937))

(declare-fun m!2958451 () Bool)

(assert (=> b!2619837 m!2958451))

(assert (=> b!2619438 d!743063))

(declare-fun b!2619851 () Bool)

(declare-fun e!1652931 () Bool)

(declare-fun inv!17 (TokenValue!4802) Bool)

(assert (=> b!2619851 (= e!1652931 (inv!17 (value!148136 separatorToken!156)))))

(declare-fun b!2619852 () Bool)

(declare-fun e!1652932 () Bool)

(declare-fun inv!16 (TokenValue!4802) Bool)

(assert (=> b!2619852 (= e!1652932 (inv!16 (value!148136 separatorToken!156)))))

(declare-fun b!2619853 () Bool)

(declare-fun res!1102739 () Bool)

(declare-fun e!1652930 () Bool)

(assert (=> b!2619853 (=> res!1102739 e!1652930)))

(assert (=> b!2619853 (= res!1102739 (not (is-IntegerValue!14408 (value!148136 separatorToken!156))))))

(assert (=> b!2619853 (= e!1652931 e!1652930)))

(declare-fun b!2619854 () Bool)

(declare-fun inv!15 (TokenValue!4802) Bool)

(assert (=> b!2619854 (= e!1652930 (inv!15 (value!148136 separatorToken!156)))))

(declare-fun d!743075 () Bool)

(declare-fun c!421289 () Bool)

(assert (=> d!743075 (= c!421289 (is-IntegerValue!14406 (value!148136 separatorToken!156)))))

(assert (=> d!743075 (= (inv!21 (value!148136 separatorToken!156)) e!1652932)))

(declare-fun b!2619855 () Bool)

(assert (=> b!2619855 (= e!1652932 e!1652931)))

(declare-fun c!421288 () Bool)

(assert (=> b!2619855 (= c!421288 (is-IntegerValue!14407 (value!148136 separatorToken!156)))))

(assert (= (and d!743075 c!421289) b!2619852))

(assert (= (and d!743075 (not c!421289)) b!2619855))

(assert (= (and b!2619855 c!421288) b!2619851))

(assert (= (and b!2619855 (not c!421288)) b!2619853))

(assert (= (and b!2619853 (not res!1102739)) b!2619854))

(declare-fun m!2958453 () Bool)

(assert (=> b!2619851 m!2958453))

(declare-fun m!2958455 () Bool)

(assert (=> b!2619852 m!2958455))

(declare-fun m!2958457 () Bool)

(assert (=> b!2619854 m!2958457))

(assert (=> b!2619427 d!743075))

(declare-fun d!743077 () Bool)

(assert (=> d!743077 (= (isEmpty!17287 rules!1726) (is-Nil!30253 rules!1726))))

(assert (=> b!2619434 d!743077))

(declare-fun d!743079 () Bool)

(declare-fun res!1102744 () Bool)

(declare-fun e!1652935 () Bool)

(assert (=> d!743079 (=> (not res!1102744) (not e!1652935))))

(declare-fun isEmpty!17289 (List!30352) Bool)

(assert (=> d!743079 (= res!1102744 (not (isEmpty!17289 (originalCharacters!5346 separatorToken!156))))))

(assert (=> d!743079 (= (inv!40970 separatorToken!156) e!1652935)))

(declare-fun b!2619860 () Bool)

(declare-fun res!1102745 () Bool)

(assert (=> b!2619860 (=> (not res!1102745) (not e!1652935))))

(assert (=> b!2619860 (= res!1102745 (= (originalCharacters!5346 separatorToken!156) (list!11362 (dynLambda!12864 (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))) (value!148136 separatorToken!156)))))))

(declare-fun b!2619861 () Bool)

(declare-fun size!23424 (List!30352) Int)

(assert (=> b!2619861 (= e!1652935 (= (size!23418 separatorToken!156) (size!23424 (originalCharacters!5346 separatorToken!156))))))

(assert (= (and d!743079 res!1102744) b!2619860))

(assert (= (and b!2619860 res!1102745) b!2619861))

(declare-fun b_lambda!78793 () Bool)

(assert (=> (not b_lambda!78793) (not b!2619860)))

(declare-fun t!215149 () Bool)

(declare-fun tb!142871 () Bool)

(assert (=> (and b!2619421 (= (toChars!6349 (transformation!4580 (h!35673 rules!1726))) (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156)))) t!215149) tb!142871))

(declare-fun b!2619862 () Bool)

(declare-fun e!1652936 () Bool)

(declare-fun tp!831425 () Bool)

(assert (=> b!2619862 (= e!1652936 (and (inv!40978 (c!421200 (dynLambda!12864 (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))) (value!148136 separatorToken!156)))) tp!831425))))

(declare-fun result!177618 () Bool)

(assert (=> tb!142871 (= result!177618 (and (inv!40979 (dynLambda!12864 (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))) (value!148136 separatorToken!156))) e!1652936))))

(assert (= tb!142871 b!2619862))

(declare-fun m!2958459 () Bool)

(assert (=> b!2619862 m!2958459))

(declare-fun m!2958461 () Bool)

(assert (=> tb!142871 m!2958461))

(assert (=> b!2619860 t!215149))

(declare-fun b_and!191759 () Bool)

(assert (= b_and!191751 (and (=> t!215149 result!177618) b_and!191759)))

(declare-fun t!215151 () Bool)

(declare-fun tb!142873 () Bool)

(assert (=> (and b!2619422 (= (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))) (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156)))) t!215151) tb!142873))

(declare-fun result!177620 () Bool)

(assert (= result!177620 result!177618))

(assert (=> b!2619860 t!215151))

(declare-fun b_and!191761 () Bool)

(assert (= b_and!191753 (and (=> t!215151 result!177620) b_and!191761)))

(declare-fun m!2958463 () Bool)

(assert (=> d!743079 m!2958463))

(declare-fun m!2958465 () Bool)

(assert (=> b!2619860 m!2958465))

(assert (=> b!2619860 m!2958465))

(declare-fun m!2958467 () Bool)

(assert (=> b!2619860 m!2958467))

(declare-fun m!2958469 () Bool)

(assert (=> b!2619861 m!2958469))

(assert (=> start!254736 d!743079))

(declare-fun d!743081 () Bool)

(declare-fun isBalanced!2857 (Conc!9403) Bool)

(assert (=> d!743081 (= (inv!40971 v!6381) (isBalanced!2857 (c!421201 v!6381)))))

(declare-fun bs!474835 () Bool)

(assert (= bs!474835 d!743081))

(declare-fun m!2958471 () Bool)

(assert (=> bs!474835 m!2958471))

(assert (=> start!254736 d!743081))

(declare-fun d!743083 () Bool)

(declare-fun res!1102748 () Bool)

(declare-fun e!1652939 () Bool)

(assert (=> d!743083 (=> (not res!1102748) (not e!1652939))))

(declare-fun rulesValid!1709 (LexerInterface!4177 List!30353) Bool)

(assert (=> d!743083 (= res!1102748 (rulesValid!1709 thiss!14197 rules!1726))))

(assert (=> d!743083 (= (rulesInvariant!3677 thiss!14197 rules!1726) e!1652939)))

(declare-fun b!2619865 () Bool)

(declare-datatypes ((List!30359 0))(
  ( (Nil!30259) (Cons!30259 (h!35679 String!33895) (t!215172 List!30359)) )
))
(declare-fun noDuplicateTag!1705 (LexerInterface!4177 List!30353 List!30359) Bool)

(assert (=> b!2619865 (= e!1652939 (noDuplicateTag!1705 thiss!14197 rules!1726 Nil!30259))))

(assert (= (and d!743083 res!1102748) b!2619865))

(declare-fun m!2958473 () Bool)

(assert (=> d!743083 m!2958473))

(declare-fun m!2958475 () Bool)

(assert (=> b!2619865 m!2958475))

(assert (=> b!2619423 d!743083))

(declare-fun d!743085 () Bool)

(assert (=> d!743085 (forall!6295 lt!920800 lambda!98065)))

(declare-fun lt!921040 () Unit!44270)

(declare-fun choose!15548 (List!30354 List!30354 Int) Unit!44270)

(assert (=> d!743085 (= lt!921040 (choose!15548 lt!920807 lt!920800 lambda!98065))))

(assert (=> d!743085 (forall!6295 lt!920807 lambda!98065)))

(assert (=> d!743085 (= (lemmaContentSubsetPreservesForall!249 lt!920807 lt!920800 lambda!98065) lt!921040)))

(declare-fun bs!474836 () Bool)

(assert (= bs!474836 d!743085))

(assert (=> bs!474836 m!2957987))

(declare-fun m!2958477 () Bool)

(assert (=> bs!474836 m!2958477))

(declare-fun m!2958479 () Bool)

(assert (=> bs!474836 m!2958479))

(assert (=> b!2619425 d!743085))

(declare-fun d!743087 () Bool)

(declare-fun list!11364 (Conc!9403) List!30354)

(assert (=> d!743087 (= (dropList!883 v!6381 from!862) (drop!1576 (list!11364 (c!421201 v!6381)) from!862))))

(declare-fun bs!474837 () Bool)

(assert (= bs!474837 d!743087))

(declare-fun m!2958481 () Bool)

(assert (=> bs!474837 m!2958481))

(assert (=> bs!474837 m!2958481))

(declare-fun m!2958483 () Bool)

(assert (=> bs!474837 m!2958483))

(assert (=> b!2619425 d!743087))

(declare-fun d!743089 () Bool)

(assert (=> d!743089 (= (list!11360 v!6381) (list!11364 (c!421201 v!6381)))))

(declare-fun bs!474838 () Bool)

(assert (= bs!474838 d!743089))

(assert (=> bs!474838 m!2958481))

(assert (=> b!2619425 d!743089))

(declare-fun d!743091 () Bool)

(declare-fun lt!921043 () Bool)

(assert (=> d!743091 (= lt!921043 (set.member lt!920798 (content!4288 lt!920807)))))

(declare-fun e!1652945 () Bool)

(assert (=> d!743091 (= lt!921043 e!1652945)))

(declare-fun res!1102754 () Bool)

(assert (=> d!743091 (=> (not res!1102754) (not e!1652945))))

(assert (=> d!743091 (= res!1102754 (is-Cons!30254 lt!920807))))

(assert (=> d!743091 (= (contains!5651 lt!920807 lt!920798) lt!921043)))

(declare-fun b!2619870 () Bool)

(declare-fun e!1652944 () Bool)

(assert (=> b!2619870 (= e!1652945 e!1652944)))

(declare-fun res!1102753 () Bool)

(assert (=> b!2619870 (=> res!1102753 e!1652944)))

(assert (=> b!2619870 (= res!1102753 (= (h!35674 lt!920807) lt!920798))))

(declare-fun b!2619871 () Bool)

(assert (=> b!2619871 (= e!1652944 (contains!5651 (t!215117 lt!920807) lt!920798))))

(assert (= (and d!743091 res!1102754) b!2619870))

(assert (= (and b!2619870 (not res!1102753)) b!2619871))

(assert (=> d!743091 m!2958271))

(declare-fun m!2958485 () Bool)

(assert (=> d!743091 m!2958485))

(declare-fun m!2958487 () Bool)

(assert (=> b!2619871 m!2958487))

(assert (=> b!2619435 d!743091))

(declare-fun d!743093 () Bool)

(declare-fun lt!921055 () Bool)

(declare-fun e!1652965 () Bool)

(assert (=> d!743093 (= lt!921055 e!1652965)))

(declare-fun res!1102774 () Bool)

(assert (=> d!743093 (=> (not res!1102774) (not e!1652965))))

(declare-datatypes ((tuple2!29824 0))(
  ( (tuple2!29825 (_1!17454 BalanceConc!18420) (_2!17454 BalanceConc!18418)) )
))
(declare-fun lex!1881 (LexerInterface!4177 List!30353 BalanceConc!18418) tuple2!29824)

(assert (=> d!743093 (= res!1102774 (= (list!11360 (_1!17454 (lex!1881 thiss!14197 rules!1726 (print!1603 thiss!14197 (singletonSeq!2020 separatorToken!156))))) (list!11360 (singletonSeq!2020 separatorToken!156))))))

(declare-fun e!1652966 () Bool)

(assert (=> d!743093 (= lt!921055 e!1652966)))

(declare-fun res!1102775 () Bool)

(assert (=> d!743093 (=> (not res!1102775) (not e!1652966))))

(declare-fun lt!921054 () tuple2!29824)

(assert (=> d!743093 (= res!1102775 (= (size!23419 (_1!17454 lt!921054)) 1))))

(assert (=> d!743093 (= lt!921054 (lex!1881 thiss!14197 rules!1726 (print!1603 thiss!14197 (singletonSeq!2020 separatorToken!156))))))

(assert (=> d!743093 (not (isEmpty!17287 rules!1726))))

(assert (=> d!743093 (= (rulesProduceIndividualToken!1889 thiss!14197 rules!1726 separatorToken!156) lt!921055)))

(declare-fun b!2619893 () Bool)

(declare-fun res!1102773 () Bool)

(assert (=> b!2619893 (=> (not res!1102773) (not e!1652966))))

(assert (=> b!2619893 (= res!1102773 (= (apply!7132 (_1!17454 lt!921054) 0) separatorToken!156))))

(declare-fun b!2619894 () Bool)

(declare-fun isEmpty!17290 (BalanceConc!18418) Bool)

(assert (=> b!2619894 (= e!1652966 (isEmpty!17290 (_2!17454 lt!921054)))))

(declare-fun b!2619895 () Bool)

(assert (=> b!2619895 (= e!1652965 (isEmpty!17290 (_2!17454 (lex!1881 thiss!14197 rules!1726 (print!1603 thiss!14197 (singletonSeq!2020 separatorToken!156))))))))

(assert (= (and d!743093 res!1102775) b!2619893))

(assert (= (and b!2619893 res!1102773) b!2619894))

(assert (= (and d!743093 res!1102774) b!2619895))

(declare-fun m!2958499 () Bool)

(assert (=> d!743093 m!2958499))

(assert (=> d!743093 m!2957931))

(declare-fun m!2958501 () Bool)

(assert (=> d!743093 m!2958501))

(assert (=> d!743093 m!2958499))

(declare-fun m!2958503 () Bool)

(assert (=> d!743093 m!2958503))

(declare-fun m!2958505 () Bool)

(assert (=> d!743093 m!2958505))

(declare-fun m!2958507 () Bool)

(assert (=> d!743093 m!2958507))

(declare-fun m!2958509 () Bool)

(assert (=> d!743093 m!2958509))

(assert (=> d!743093 m!2958499))

(assert (=> d!743093 m!2958507))

(declare-fun m!2958511 () Bool)

(assert (=> b!2619893 m!2958511))

(declare-fun m!2958513 () Bool)

(assert (=> b!2619894 m!2958513))

(assert (=> b!2619895 m!2958499))

(assert (=> b!2619895 m!2958499))

(assert (=> b!2619895 m!2958507))

(assert (=> b!2619895 m!2958507))

(assert (=> b!2619895 m!2958509))

(declare-fun m!2958515 () Bool)

(assert (=> b!2619895 m!2958515))

(assert (=> b!2619424 d!743093))

(declare-fun d!743099 () Bool)

(declare-fun c!421292 () Bool)

(assert (=> d!743099 (= c!421292 (is-Node!9403 (c!421201 v!6381)))))

(declare-fun e!1652971 () Bool)

(assert (=> d!743099 (= (inv!40972 (c!421201 v!6381)) e!1652971)))

(declare-fun b!2619902 () Bool)

(declare-fun inv!40980 (Conc!9403) Bool)

(assert (=> b!2619902 (= e!1652971 (inv!40980 (c!421201 v!6381)))))

(declare-fun b!2619903 () Bool)

(declare-fun e!1652972 () Bool)

(assert (=> b!2619903 (= e!1652971 e!1652972)))

(declare-fun res!1102778 () Bool)

(assert (=> b!2619903 (= res!1102778 (not (is-Leaf!14434 (c!421201 v!6381))))))

(assert (=> b!2619903 (=> res!1102778 e!1652972)))

(declare-fun b!2619904 () Bool)

(declare-fun inv!40981 (Conc!9403) Bool)

(assert (=> b!2619904 (= e!1652972 (inv!40981 (c!421201 v!6381)))))

(assert (= (and d!743099 c!421292) b!2619902))

(assert (= (and d!743099 (not c!421292)) b!2619903))

(assert (= (and b!2619903 (not res!1102778)) b!2619904))

(declare-fun m!2958517 () Bool)

(assert (=> b!2619902 m!2958517))

(declare-fun m!2958519 () Bool)

(assert (=> b!2619904 m!2958519))

(assert (=> b!2619431 d!743099))

(declare-fun d!743101 () Bool)

(declare-fun res!1102783 () Bool)

(declare-fun e!1652977 () Bool)

(assert (=> d!743101 (=> res!1102783 e!1652977)))

(assert (=> d!743101 (= res!1102783 (not (is-Cons!30253 rules!1726)))))

(assert (=> d!743101 (= (sepAndNonSepRulesDisjointChars!1153 rules!1726 rules!1726) e!1652977)))

(declare-fun b!2619909 () Bool)

(declare-fun e!1652978 () Bool)

(assert (=> b!2619909 (= e!1652977 e!1652978)))

(declare-fun res!1102784 () Bool)

(assert (=> b!2619909 (=> (not res!1102784) (not e!1652978))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!512 (Rule!8960 List!30353) Bool)

(assert (=> b!2619909 (= res!1102784 (ruleDisjointCharsFromAllFromOtherType!512 (h!35673 rules!1726) rules!1726))))

(declare-fun b!2619910 () Bool)

(assert (=> b!2619910 (= e!1652978 (sepAndNonSepRulesDisjointChars!1153 rules!1726 (t!215116 rules!1726)))))

(assert (= (and d!743101 (not res!1102783)) b!2619909))

(assert (= (and b!2619909 res!1102784) b!2619910))

(declare-fun m!2958521 () Bool)

(assert (=> b!2619909 m!2958521))

(declare-fun m!2958523 () Bool)

(assert (=> b!2619910 m!2958523))

(assert (=> b!2619433 d!743101))

(declare-fun d!743103 () Bool)

(declare-fun lt!921058 () Int)

(assert (=> d!743103 (= lt!921058 (size!23422 (list!11360 v!6381)))))

(declare-fun size!23425 (Conc!9403) Int)

(assert (=> d!743103 (= lt!921058 (size!23425 (c!421201 v!6381)))))

(assert (=> d!743103 (= (size!23419 v!6381) lt!921058)))

(declare-fun bs!474843 () Bool)

(assert (= bs!474843 d!743103))

(assert (=> bs!474843 m!2957937))

(assert (=> bs!474843 m!2957937))

(declare-fun m!2958525 () Bool)

(assert (=> bs!474843 m!2958525))

(declare-fun m!2958527 () Bool)

(assert (=> bs!474843 m!2958527))

(assert (=> b!2619432 d!743103))

(declare-fun b!2619913 () Bool)

(declare-fun e!1652981 () Bool)

(assert (=> b!2619913 (= e!1652981 true)))

(declare-fun b!2619912 () Bool)

(declare-fun e!1652980 () Bool)

(assert (=> b!2619912 (= e!1652980 e!1652981)))

(declare-fun b!2619911 () Bool)

(declare-fun e!1652979 () Bool)

(assert (=> b!2619911 (= e!1652979 e!1652980)))

(assert (=> b!2619448 e!1652979))

(assert (= b!2619912 b!2619913))

(assert (= b!2619911 b!2619912))

(assert (= (and b!2619448 (is-Cons!30253 (t!215116 rules!1726))) b!2619911))

(assert (=> b!2619913 (< (dynLambda!12858 order!16169 (toValue!6490 (transformation!4580 (h!35673 (t!215116 rules!1726))))) (dynLambda!12859 order!16171 lambda!98066))))

(assert (=> b!2619913 (< (dynLambda!12860 order!16173 (toChars!6349 (transformation!4580 (h!35673 (t!215116 rules!1726))))) (dynLambda!12859 order!16171 lambda!98066))))

(declare-fun b!2619924 () Bool)

(declare-fun b_free!73677 () Bool)

(declare-fun b_next!74381 () Bool)

(assert (=> b!2619924 (= b_free!73677 (not b_next!74381))))

(declare-fun tp!831434 () Bool)

(declare-fun b_and!191763 () Bool)

(assert (=> b!2619924 (= tp!831434 b_and!191763)))

(declare-fun b_free!73679 () Bool)

(declare-fun b_next!74383 () Bool)

(assert (=> b!2619924 (= b_free!73679 (not b_next!74383))))

(declare-fun tb!142875 () Bool)

(declare-fun t!215156 () Bool)

(assert (=> (and b!2619924 (= (toChars!6349 (transformation!4580 (h!35673 (t!215116 rules!1726)))) (toChars!6349 (transformation!4580 (rule!6956 lt!920798)))) t!215156) tb!142875))

(declare-fun result!177624 () Bool)

(assert (= result!177624 result!177606))

(assert (=> d!743009 t!215156))

(declare-fun tb!142877 () Bool)

(declare-fun t!215158 () Bool)

(assert (=> (and b!2619924 (= (toChars!6349 (transformation!4580 (h!35673 (t!215116 rules!1726)))) (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156)))) t!215158) tb!142877))

(declare-fun result!177626 () Bool)

(assert (= result!177626 result!177618))

(assert (=> b!2619860 t!215158))

(declare-fun tp!831436 () Bool)

(declare-fun b_and!191765 () Bool)

(assert (=> b!2619924 (= tp!831436 (and (=> t!215156 result!177624) (=> t!215158 result!177626) b_and!191765))))

(declare-fun e!1652993 () Bool)

(assert (=> b!2619924 (= e!1652993 (and tp!831434 tp!831436))))

(declare-fun e!1652991 () Bool)

(declare-fun tp!831437 () Bool)

(declare-fun b!2619923 () Bool)

(assert (=> b!2619923 (= e!1652991 (and tp!831437 (inv!40967 (tag!5072 (h!35673 (t!215116 rules!1726)))) (inv!40973 (transformation!4580 (h!35673 (t!215116 rules!1726)))) e!1652993))))

(declare-fun b!2619922 () Bool)

(declare-fun e!1652990 () Bool)

(declare-fun tp!831435 () Bool)

(assert (=> b!2619922 (= e!1652990 (and e!1652991 tp!831435))))

(assert (=> b!2619430 (= tp!831383 e!1652990)))

(assert (= b!2619923 b!2619924))

(assert (= b!2619922 b!2619923))

(assert (= (and b!2619430 (is-Cons!30253 (t!215116 rules!1726))) b!2619922))

(declare-fun m!2958529 () Bool)

(assert (=> b!2619923 m!2958529))

(declare-fun m!2958531 () Bool)

(assert (=> b!2619923 m!2958531))

(declare-fun e!1652996 () Bool)

(assert (=> b!2619437 (= tp!831391 e!1652996)))

(declare-fun b!2619935 () Bool)

(declare-fun tp_is_empty!13735 () Bool)

(assert (=> b!2619935 (= e!1652996 tp_is_empty!13735)))

(declare-fun b!2619937 () Bool)

(declare-fun tp!831450 () Bool)

(assert (=> b!2619937 (= e!1652996 tp!831450)))

(declare-fun b!2619938 () Bool)

(declare-fun tp!831449 () Bool)

(declare-fun tp!831452 () Bool)

(assert (=> b!2619938 (= e!1652996 (and tp!831449 tp!831452))))

(declare-fun b!2619936 () Bool)

(declare-fun tp!831448 () Bool)

(declare-fun tp!831451 () Bool)

(assert (=> b!2619936 (= e!1652996 (and tp!831448 tp!831451))))

(assert (= (and b!2619437 (is-ElementMatch!7724 (regex!4580 (h!35673 rules!1726)))) b!2619935))

(assert (= (and b!2619437 (is-Concat!12526 (regex!4580 (h!35673 rules!1726)))) b!2619936))

(assert (= (and b!2619437 (is-Star!7724 (regex!4580 (h!35673 rules!1726)))) b!2619937))

(assert (= (and b!2619437 (is-Union!7724 (regex!4580 (h!35673 rules!1726)))) b!2619938))

(declare-fun tp!831461 () Bool)

(declare-fun b!2619947 () Bool)

(declare-fun e!1653002 () Bool)

(declare-fun tp!831460 () Bool)

(assert (=> b!2619947 (= e!1653002 (and (inv!40972 (left!23299 (c!421201 v!6381))) tp!831460 (inv!40972 (right!23629 (c!421201 v!6381))) tp!831461))))

(declare-fun b!2619949 () Bool)

(declare-fun e!1653001 () Bool)

(declare-fun tp!831459 () Bool)

(assert (=> b!2619949 (= e!1653001 tp!831459)))

(declare-fun b!2619948 () Bool)

(declare-fun inv!40982 (IArray!18811) Bool)

(assert (=> b!2619948 (= e!1653002 (and (inv!40982 (xs!12397 (c!421201 v!6381))) e!1653001))))

(assert (=> b!2619431 (= tp!831386 (and (inv!40972 (c!421201 v!6381)) e!1653002))))

(assert (= (and b!2619431 (is-Node!9403 (c!421201 v!6381))) b!2619947))

(assert (= b!2619948 b!2619949))

(assert (= (and b!2619431 (is-Leaf!14434 (c!421201 v!6381))) b!2619948))

(declare-fun m!2958533 () Bool)

(assert (=> b!2619947 m!2958533))

(declare-fun m!2958535 () Bool)

(assert (=> b!2619947 m!2958535))

(declare-fun m!2958537 () Bool)

(assert (=> b!2619948 m!2958537))

(assert (=> b!2619431 m!2957929))

(declare-fun e!1653003 () Bool)

(assert (=> b!2619436 (= tp!831390 e!1653003)))

(declare-fun b!2619950 () Bool)

(assert (=> b!2619950 (= e!1653003 tp_is_empty!13735)))

(declare-fun b!2619952 () Bool)

(declare-fun tp!831464 () Bool)

(assert (=> b!2619952 (= e!1653003 tp!831464)))

(declare-fun b!2619953 () Bool)

(declare-fun tp!831463 () Bool)

(declare-fun tp!831466 () Bool)

(assert (=> b!2619953 (= e!1653003 (and tp!831463 tp!831466))))

(declare-fun b!2619951 () Bool)

(declare-fun tp!831462 () Bool)

(declare-fun tp!831465 () Bool)

(assert (=> b!2619951 (= e!1653003 (and tp!831462 tp!831465))))

(assert (= (and b!2619436 (is-ElementMatch!7724 (regex!4580 (rule!6956 separatorToken!156)))) b!2619950))

(assert (= (and b!2619436 (is-Concat!12526 (regex!4580 (rule!6956 separatorToken!156)))) b!2619951))

(assert (= (and b!2619436 (is-Star!7724 (regex!4580 (rule!6956 separatorToken!156)))) b!2619952))

(assert (= (and b!2619436 (is-Union!7724 (regex!4580 (rule!6956 separatorToken!156)))) b!2619953))

(declare-fun b!2619958 () Bool)

(declare-fun e!1653006 () Bool)

(declare-fun tp!831469 () Bool)

(assert (=> b!2619958 (= e!1653006 (and tp_is_empty!13735 tp!831469))))

(assert (=> b!2619427 (= tp!831387 e!1653006)))

(assert (= (and b!2619427 (is-Cons!30252 (originalCharacters!5346 separatorToken!156))) b!2619958))

(declare-fun b_lambda!78795 () Bool)

(assert (= b_lambda!78785 (or b!2619429 b_lambda!78795)))

(declare-fun bs!474844 () Bool)

(declare-fun d!743105 () Bool)

(assert (= bs!474844 (and d!743105 b!2619429)))

(assert (=> bs!474844 (= (dynLambda!12865 lambda!98066 lt!920798) (rulesProduceIndividualToken!1889 thiss!14197 rules!1726 lt!920798))))

(declare-fun m!2958539 () Bool)

(assert (=> bs!474844 m!2958539))

(assert (=> d!743011 d!743105))

(declare-fun b_lambda!78797 () Bool)

(assert (= b_lambda!78789 (or b!2619426 b_lambda!78797)))

(declare-fun bs!474845 () Bool)

(declare-fun d!743107 () Bool)

(assert (= bs!474845 (and d!743107 b!2619426)))

(assert (=> bs!474845 (= (dynLambda!12865 lambda!98065 (h!35674 lt!920800)) (not (isSeparator!4580 (rule!6956 (h!35674 lt!920800)))))))

(assert (=> b!2619680 d!743107))

(declare-fun b_lambda!78799 () Bool)

(assert (= b_lambda!78793 (or (and b!2619421 b_free!73663 (= (toChars!6349 (transformation!4580 (h!35673 rules!1726))) (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))))) (and b!2619422 b_free!73667) (and b!2619924 b_free!73679 (= (toChars!6349 (transformation!4580 (h!35673 (t!215116 rules!1726)))) (toChars!6349 (transformation!4580 (rule!6956 separatorToken!156))))) b_lambda!78799)))

(push 1)

(assert (not b!2619609))

(assert (not b!2619711))

(assert (not b!2619673))

(assert (not b!2619717))

(assert (not d!743089))

(assert (not d!743011))

(assert (not b!2619951))

(assert (not b!2619838))

(assert (not b!2619894))

(assert (not bm!168332))

(assert (not d!743043))

(assert (not b!2619681))

(assert (not b!2619923))

(assert (not bm!168326))

(assert (not b!2619663))

(assert (not bs!474844))

(assert (not d!743013))

(assert (not b!2619656))

(assert (not b!2619938))

(assert (not d!743009))

(assert (not d!743087))

(assert (not b!2619674))

(assert (not d!743049))

(assert (not d!743063))

(assert (not b!2619675))

(assert b_and!191763)

(assert (not b!2619731))

(assert (not b!2619672))

(assert (not b_next!74369))

(assert (not d!743103))

(assert (not bm!168329))

(assert (not b!2619614))

(assert (not b!2619659))

(assert (not b!2619657))

(assert (not b!2619861))

(assert (not b!2619615))

(assert (not b!2619703))

(assert (not b_next!74365))

(assert (not d!743027))

(assert (not b!2619958))

(assert tp_is_empty!13735)

(assert b_and!191735)

(assert (not b!2619949))

(assert (not d!743061))

(assert (not d!743079))

(assert (not b!2619662))

(assert (not b!2619922))

(assert b_and!191761)

(assert (not d!743083))

(assert (not b!2619783))

(assert (not b!2619947))

(assert (not b!2619860))

(assert (not d!743045))

(assert (not b!2619852))

(assert (not b!2619626))

(assert (not b!2619893))

(assert (not b!2619631))

(assert (not b!2619660))

(assert (not b_lambda!78799))

(assert (not d!743041))

(assert (not b!2619862))

(assert (not b!2619704))

(assert (not b!2619948))

(assert (not b!2619724))

(assert (not bm!168325))

(assert (not b!2619895))

(assert (not b_next!74381))

(assert (not b_next!74371))

(assert (not d!743085))

(assert (not bm!168333))

(assert (not b!2619909))

(assert (not b!2619854))

(assert (not b_lambda!78795))

(assert (not d!743091))

(assert (not tb!142863))

(assert (not b!2619431))

(assert (not b!2619773))

(assert (not b!2619865))

(assert (not d!742977))

(assert b_and!191759)

(assert (not d!743081))

(assert (not b!2619952))

(assert (not b!2619714))

(assert (not d!743053))

(assert (not b!2619784))

(assert (not b!2619904))

(assert (not b_lambda!78783))

(assert (not b!2619837))

(assert (not bm!168322))

(assert (not d!743039))

(assert (not b!2619726))

(assert (not b!2619618))

(assert b_and!191765)

(assert (not b!2619605))

(assert (not d!743047))

(assert (not b!2619725))

(assert (not b!2619937))

(assert (not b!2619612))

(assert (not d!743093))

(assert (not b!2619910))

(assert (not b!2619871))

(assert (not tb!142871))

(assert (not b!2619661))

(assert (not b!2619775))

(assert b_and!191739)

(assert (not b!2619953))

(assert (not b!2619730))

(assert (not b!2619774))

(assert (not b!2619902))

(assert (not b!2619911))

(assert (not b!2619936))

(assert (not b!2619606))

(assert (not d!743031))

(assert (not d!743035))

(assert (not b_next!74383))

(assert (not b_next!74367))

(assert (not b!2619851))

(assert (not d!743057))

(assert (not b_lambda!78797))

(check-sat)

(pop 1)

(push 1)

(assert b_and!191763)

(assert (not b_next!74369))

(assert (not b_next!74365))

(assert b_and!191735)

(assert b_and!191761)

(assert b_and!191759)

(assert b_and!191765)

(assert b_and!191739)

(assert (not b_next!74381))

(assert (not b_next!74371))

(assert (not b_next!74383))

(assert (not b_next!74367))

(check-sat)

(pop 1)

