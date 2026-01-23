; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126170 () Bool)

(assert start!126170)

(declare-fun b!1388849 () Bool)

(declare-fun b_free!33763 () Bool)

(declare-fun b_next!34467 () Bool)

(assert (=> b!1388849 (= b_free!33763 (not b_next!34467))))

(declare-fun tp!396939 () Bool)

(declare-fun b_and!93043 () Bool)

(assert (=> b!1388849 (= tp!396939 b_and!93043)))

(declare-fun b_free!33765 () Bool)

(declare-fun b_next!34469 () Bool)

(assert (=> b!1388849 (= b_free!33765 (not b_next!34469))))

(declare-fun tp!396948 () Bool)

(declare-fun b_and!93045 () Bool)

(assert (=> b!1388849 (= tp!396948 b_and!93045)))

(declare-fun b!1388869 () Bool)

(declare-fun b_free!33767 () Bool)

(declare-fun b_next!34471 () Bool)

(assert (=> b!1388869 (= b_free!33767 (not b_next!34471))))

(declare-fun tp!396944 () Bool)

(declare-fun b_and!93047 () Bool)

(assert (=> b!1388869 (= tp!396944 b_and!93047)))

(declare-fun b_free!33769 () Bool)

(declare-fun b_next!34473 () Bool)

(assert (=> b!1388869 (= b_free!33769 (not b_next!34473))))

(declare-fun tp!396947 () Bool)

(declare-fun b_and!93049 () Bool)

(assert (=> b!1388869 (= tp!396947 b_and!93049)))

(declare-fun b!1388875 () Bool)

(declare-fun b_free!33771 () Bool)

(declare-fun b_next!34475 () Bool)

(assert (=> b!1388875 (= b_free!33771 (not b_next!34475))))

(declare-fun tp!396945 () Bool)

(declare-fun b_and!93051 () Bool)

(assert (=> b!1388875 (= tp!396945 b_and!93051)))

(declare-fun b_free!33773 () Bool)

(declare-fun b_next!34477 () Bool)

(assert (=> b!1388875 (= b_free!33773 (not b_next!34477))))

(declare-fun tp!396950 () Bool)

(declare-fun b_and!93053 () Bool)

(assert (=> b!1388875 (= tp!396950 b_and!93053)))

(declare-fun b!1388878 () Bool)

(assert (=> b!1388878 true))

(assert (=> b!1388878 true))

(declare-fun b!1388881 () Bool)

(assert (=> b!1388881 true))

(declare-fun b!1388847 () Bool)

(assert (=> b!1388847 true))

(declare-fun bs!337258 () Bool)

(declare-fun b!1388891 () Bool)

(assert (= bs!337258 (and b!1388891 b!1388847)))

(declare-fun lambda!59991 () Int)

(declare-fun lambda!59990 () Int)

(assert (=> bs!337258 (not (= lambda!59991 lambda!59990))))

(assert (=> b!1388891 true))

(declare-fun b!1388845 () Bool)

(declare-fun e!887160 () Bool)

(declare-datatypes ((C!7800 0))(
  ( (C!7801 (val!4460 Int)) )
))
(declare-datatypes ((List!14160 0))(
  ( (Nil!14094) (Cons!14094 (h!19495 C!7800) (t!122363 List!14160)) )
))
(declare-fun lt!462075 () List!14160)

(declare-fun contains!2703 (List!14160 C!7800) Bool)

(declare-fun head!2537 (List!14160) C!7800)

(assert (=> b!1388845 (= e!887160 (contains!2703 lt!462075 (head!2537 lt!462075)))))

(declare-fun res!626871 () Bool)

(declare-fun e!887153 () Bool)

(assert (=> start!126170 (=> (not res!626871) (not e!887153))))

(declare-datatypes ((LexerInterface!2136 0))(
  ( (LexerInterfaceExt!2133 (__x!8891 Int)) (Lexer!2134) )
))
(declare-fun thiss!19762 () LexerInterface!2136)

(get-info :version)

(assert (=> start!126170 (= res!626871 ((_ is Lexer!2134) thiss!19762))))

(assert (=> start!126170 e!887153))

(assert (=> start!126170 true))

(declare-fun e!887143 () Bool)

(assert (=> start!126170 e!887143))

(declare-datatypes ((List!14161 0))(
  ( (Nil!14095) (Cons!14095 (h!19496 (_ BitVec 16)) (t!122364 List!14161)) )
))
(declare-datatypes ((TokenValue!2531 0))(
  ( (FloatLiteralValue!5062 (text!18162 List!14161)) (TokenValueExt!2530 (__x!8892 Int)) (Broken!12655 (value!79175 List!14161)) (Object!2596) (End!2531) (Def!2531) (Underscore!2531) (Match!2531) (Else!2531) (Error!2531) (Case!2531) (If!2531) (Extends!2531) (Abstract!2531) (Class!2531) (Val!2531) (DelimiterValue!5062 (del!2591 List!14161)) (KeywordValue!2537 (value!79176 List!14161)) (CommentValue!5062 (value!79177 List!14161)) (WhitespaceValue!5062 (value!79178 List!14161)) (IndentationValue!2531 (value!79179 List!14161)) (String!16890) (Int32!2531) (Broken!12656 (value!79180 List!14161)) (Boolean!2532) (Unit!20352) (OperatorValue!2534 (op!2591 List!14161)) (IdentifierValue!5062 (value!79181 List!14161)) (IdentifierValue!5063 (value!79182 List!14161)) (WhitespaceValue!5063 (value!79183 List!14161)) (True!5062) (False!5062) (Broken!12657 (value!79184 List!14161)) (Broken!12658 (value!79185 List!14161)) (True!5063) (RightBrace!2531) (RightBracket!2531) (Colon!2531) (Null!2531) (Comma!2531) (LeftBracket!2531) (False!5063) (LeftBrace!2531) (ImaginaryLiteralValue!2531 (text!18163 List!14161)) (StringLiteralValue!7593 (value!79186 List!14161)) (EOFValue!2531 (value!79187 List!14161)) (IdentValue!2531 (value!79188 List!14161)) (DelimiterValue!5063 (value!79189 List!14161)) (DedentValue!2531 (value!79190 List!14161)) (NewLineValue!2531 (value!79191 List!14161)) (IntegerValue!7593 (value!79192 (_ BitVec 32)) (text!18164 List!14161)) (IntegerValue!7594 (value!79193 Int) (text!18165 List!14161)) (Times!2531) (Or!2531) (Equal!2531) (Minus!2531) (Broken!12659 (value!79194 List!14161)) (And!2531) (Div!2531) (LessEqual!2531) (Mod!2531) (Concat!6286) (Not!2531) (Plus!2531) (SpaceValue!2531 (value!79195 List!14161)) (IntegerValue!7595 (value!79196 Int) (text!18166 List!14161)) (StringLiteralValue!7594 (text!18167 List!14161)) (FloatLiteralValue!5063 (text!18168 List!14161)) (BytesLiteralValue!2531 (value!79197 List!14161)) (CommentValue!5063 (value!79198 List!14161)) (StringLiteralValue!7595 (value!79199 List!14161)) (ErrorTokenValue!2531 (msg!2592 List!14161)) )
))
(declare-datatypes ((IArray!9289 0))(
  ( (IArray!9290 (innerList!4702 List!14160)) )
))
(declare-datatypes ((Conc!4642 0))(
  ( (Node!4642 (left!12044 Conc!4642) (right!12374 Conc!4642) (csize!9514 Int) (cheight!4853 Int)) (Leaf!7059 (xs!7369 IArray!9289) (csize!9515 Int)) (Empty!4642) )
))
(declare-datatypes ((BalanceConc!9224 0))(
  ( (BalanceConc!9225 (c!228560 Conc!4642)) )
))
(declare-datatypes ((Regex!3755 0))(
  ( (ElementMatch!3755 (c!228561 C!7800)) (Concat!6287 (regOne!8022 Regex!3755) (regTwo!8022 Regex!3755)) (EmptyExpr!3755) (Star!3755 (reg!4084 Regex!3755)) (EmptyLang!3755) (Union!3755 (regOne!8023 Regex!3755) (regTwo!8023 Regex!3755)) )
))
(declare-datatypes ((String!16891 0))(
  ( (String!16892 (value!79200 String)) )
))
(declare-datatypes ((TokenValueInjection!4722 0))(
  ( (TokenValueInjection!4723 (toValue!3728 Int) (toChars!3587 Int)) )
))
(declare-datatypes ((Rule!4682 0))(
  ( (Rule!4683 (regex!2441 Regex!3755) (tag!2703 String!16891) (isSeparator!2441 Bool) (transformation!2441 TokenValueInjection!4722)) )
))
(declare-datatypes ((Token!4544 0))(
  ( (Token!4545 (value!79201 TokenValue!2531) (rule!4202 Rule!4682) (size!11579 Int) (originalCharacters!3303 List!14160)) )
))
(declare-fun t1!34 () Token!4544)

(declare-fun e!887141 () Bool)

(declare-fun inv!18433 (Token!4544) Bool)

(assert (=> start!126170 (and (inv!18433 t1!34) e!887141)))

(declare-fun t2!34 () Token!4544)

(declare-fun e!887150 () Bool)

(assert (=> start!126170 (and (inv!18433 t2!34) e!887150)))

(declare-fun e!887162 () Bool)

(declare-fun tp!396941 () Bool)

(declare-fun e!887140 () Bool)

(declare-fun b!1388846 () Bool)

(declare-fun inv!18430 (String!16891) Bool)

(declare-fun inv!18434 (TokenValueInjection!4722) Bool)

(assert (=> b!1388846 (= e!887162 (and tp!396941 (inv!18430 (tag!2703 (rule!4202 t2!34))) (inv!18434 (transformation!2441 (rule!4202 t2!34))) e!887140))))

(declare-fun e!887154 () Bool)

(declare-fun e!887156 () Bool)

(assert (=> b!1388847 (= e!887154 e!887156)))

(declare-fun res!626870 () Bool)

(assert (=> b!1388847 (=> res!626870 e!887156)))

(declare-datatypes ((List!14162 0))(
  ( (Nil!14096) (Cons!14096 (h!19497 Rule!4682) (t!122365 List!14162)) )
))
(declare-fun rules!2550 () List!14162)

(declare-fun exists!526 (List!14162 Int) Bool)

(assert (=> b!1388847 (= res!626870 (not (exists!526 rules!2550 lambda!59990)))))

(assert (=> b!1388847 (exists!526 rules!2550 lambda!59990)))

(declare-datatypes ((Unit!20353 0))(
  ( (Unit!20354) )
))
(declare-fun lt!462070 () Unit!20353)

(declare-fun lt!462096 () Regex!3755)

(declare-fun lambda!59988 () Int)

(declare-fun lemmaMapContains!152 (List!14162 Int Regex!3755) Unit!20353)

(assert (=> b!1388847 (= lt!462070 (lemmaMapContains!152 rules!2550 lambda!59988 lt!462096))))

(declare-fun b!1388848 () Bool)

(declare-fun e!887145 () Bool)

(declare-fun e!887151 () Bool)

(assert (=> b!1388848 (= e!887145 e!887151)))

(declare-fun res!626850 () Bool)

(assert (=> b!1388848 (=> res!626850 e!887151)))

(declare-datatypes ((List!14163 0))(
  ( (Nil!14097) (Cons!14097 (h!19498 Token!4544) (t!122366 List!14163)) )
))
(declare-datatypes ((IArray!9291 0))(
  ( (IArray!9292 (innerList!4703 List!14163)) )
))
(declare-datatypes ((Conc!4643 0))(
  ( (Node!4643 (left!12045 Conc!4643) (right!12375 Conc!4643) (csize!9516 Int) (cheight!4854 Int)) (Leaf!7060 (xs!7370 IArray!9291) (csize!9517 Int)) (Empty!4643) )
))
(declare-datatypes ((BalanceConc!9226 0))(
  ( (BalanceConc!9227 (c!228562 Conc!4643)) )
))
(declare-datatypes ((tuple2!13698 0))(
  ( (tuple2!13699 (_1!7735 BalanceConc!9226) (_2!7735 BalanceConc!9224)) )
))
(declare-fun lt!462093 () tuple2!13698)

(declare-fun lt!462071 () List!14163)

(declare-fun list!5469 (BalanceConc!9226) List!14163)

(assert (=> b!1388848 (= res!626850 (not (= (list!5469 (_1!7735 lt!462093)) lt!462071)))))

(assert (=> b!1388848 (= lt!462071 (Cons!14097 t2!34 Nil!14097))))

(declare-fun lt!462084 () BalanceConc!9224)

(declare-fun lex!961 (LexerInterface!2136 List!14162 BalanceConc!9224) tuple2!13698)

(assert (=> b!1388848 (= lt!462093 (lex!961 thiss!19762 rules!2550 lt!462084))))

(declare-fun print!900 (LexerInterface!2136 BalanceConc!9226) BalanceConc!9224)

(declare-fun singletonSeq!1088 (Token!4544) BalanceConc!9226)

(assert (=> b!1388848 (= lt!462084 (print!900 thiss!19762 (singletonSeq!1088 t2!34)))))

(declare-fun e!887165 () Bool)

(assert (=> b!1388849 (= e!887165 (and tp!396939 tp!396948))))

(declare-fun b!1388850 () Bool)

(declare-fun res!626861 () Bool)

(assert (=> b!1388850 (=> res!626861 e!887145)))

(declare-fun lt!462073 () tuple2!13698)

(declare-fun isEmpty!8532 (BalanceConc!9224) Bool)

(assert (=> b!1388850 (= res!626861 (not (isEmpty!8532 (_2!7735 lt!462073))))))

(declare-fun tp!396946 () Bool)

(declare-fun e!887148 () Bool)

(declare-fun b!1388851 () Bool)

(declare-fun inv!21 (TokenValue!2531) Bool)

(assert (=> b!1388851 (= e!887141 (and (inv!21 (value!79201 t1!34)) e!887148 tp!396946))))

(declare-fun b!1388852 () Bool)

(declare-fun e!887146 () Bool)

(assert (=> b!1388852 (= e!887151 e!887146)))

(declare-fun res!626841 () Bool)

(assert (=> b!1388852 (=> res!626841 e!887146)))

(declare-datatypes ((tuple2!13700 0))(
  ( (tuple2!13701 (_1!7736 Token!4544) (_2!7736 List!14160)) )
))
(declare-datatypes ((Option!2702 0))(
  ( (None!2701) (Some!2701 (v!21576 tuple2!13700)) )
))
(declare-fun maxPrefix!1110 (LexerInterface!2136 List!14162 List!14160) Option!2702)

(assert (=> b!1388852 (= res!626841 (not (= (maxPrefix!1110 thiss!19762 rules!2550 lt!462075) (Some!2701 (tuple2!13701 t2!34 Nil!14094)))))))

(declare-fun lt!462092 () BalanceConc!9224)

(declare-fun list!5470 (BalanceConc!9224) List!14160)

(assert (=> b!1388852 (= lt!462075 (list!5470 lt!462092))))

(declare-fun b!1388853 () Bool)

(declare-fun res!626855 () Bool)

(assert (=> b!1388853 (=> res!626855 e!887145)))

(declare-fun contains!2704 (List!14162 Rule!4682) Bool)

(assert (=> b!1388853 (= res!626855 (not (contains!2704 rules!2550 (rule!4202 t1!34))))))

(declare-fun b!1388854 () Bool)

(declare-fun res!626854 () Bool)

(assert (=> b!1388854 (=> res!626854 e!887145)))

(declare-fun lt!462081 () List!14160)

(assert (=> b!1388854 (= res!626854 (not (= (maxPrefix!1110 thiss!19762 rules!2550 lt!462081) (Some!2701 (tuple2!13701 t1!34 Nil!14094)))))))

(declare-fun b!1388855 () Bool)

(declare-fun res!626852 () Bool)

(declare-fun e!887139 () Bool)

(assert (=> b!1388855 (=> res!626852 e!887139)))

(declare-fun lt!462088 () List!14160)

(declare-fun lt!462095 () C!7800)

(assert (=> b!1388855 (= res!626852 (not (contains!2703 lt!462088 lt!462095)))))

(declare-fun b!1388856 () Bool)

(declare-fun res!626846 () Bool)

(assert (=> b!1388856 (=> res!626846 e!887146)))

(assert (=> b!1388856 (= res!626846 (not (contains!2704 rules!2550 (rule!4202 t2!34))))))

(declare-fun b!1388857 () Bool)

(declare-fun res!626842 () Bool)

(assert (=> b!1388857 (=> (not res!626842) (not e!887153))))

(declare-fun rulesInvariant!2006 (LexerInterface!2136 List!14162) Bool)

(assert (=> b!1388857 (= res!626842 (rulesInvariant!2006 thiss!19762 rules!2550))))

(declare-fun b!1388858 () Bool)

(declare-fun e!887161 () Bool)

(declare-fun e!887147 () Bool)

(assert (=> b!1388858 (= e!887161 e!887147)))

(declare-fun res!626847 () Bool)

(assert (=> b!1388858 (=> (not res!626847) (not e!887147))))

(declare-fun lt!462076 () Regex!3755)

(declare-fun lt!462089 () List!14160)

(declare-fun prefixMatch!264 (Regex!3755 List!14160) Bool)

(assert (=> b!1388858 (= res!626847 (prefixMatch!264 lt!462076 lt!462089))))

(declare-fun rulesRegex!324 (LexerInterface!2136 List!14162) Regex!3755)

(assert (=> b!1388858 (= lt!462076 (rulesRegex!324 thiss!19762 rules!2550))))

(declare-fun lt!462072 () C!7800)

(declare-fun ++!3660 (List!14160 List!14160) List!14160)

(assert (=> b!1388858 (= lt!462089 (++!3660 lt!462081 (Cons!14094 lt!462072 Nil!14094)))))

(declare-fun apply!3539 (BalanceConc!9224 Int) C!7800)

(assert (=> b!1388858 (= lt!462072 (apply!3539 lt!462092 0))))

(declare-fun lt!462078 () BalanceConc!9224)

(assert (=> b!1388858 (= lt!462081 (list!5470 lt!462078))))

(declare-fun charsOf!1413 (Token!4544) BalanceConc!9224)

(assert (=> b!1388858 (= lt!462078 (charsOf!1413 t1!34))))

(declare-fun b!1388859 () Bool)

(declare-fun e!887157 () Bool)

(assert (=> b!1388859 (= e!887157 e!887139)))

(declare-fun res!626844 () Bool)

(assert (=> b!1388859 (=> res!626844 e!887139)))

(assert (=> b!1388859 (= res!626844 (not (contains!2703 lt!462089 lt!462095)))))

(assert (=> b!1388859 (= lt!462095 (apply!3539 lt!462078 0))))

(declare-fun b!1388860 () Bool)

(declare-fun res!626869 () Bool)

(declare-fun e!887152 () Bool)

(assert (=> b!1388860 (=> res!626869 e!887152)))

(declare-fun matchR!1746 (Regex!3755 List!14160) Bool)

(assert (=> b!1388860 (= res!626869 (not (matchR!1746 (regex!2441 (rule!4202 t2!34)) lt!462075)))))

(declare-fun b!1388861 () Bool)

(assert (=> b!1388861 (= e!887156 e!887145)))

(declare-fun res!626863 () Bool)

(assert (=> b!1388861 (=> res!626863 e!887145)))

(declare-fun lt!462094 () List!14163)

(assert (=> b!1388861 (= res!626863 (not (= (list!5469 (_1!7735 lt!462073)) lt!462094)))))

(assert (=> b!1388861 (= lt!462094 (Cons!14097 t1!34 Nil!14097))))

(declare-fun lt!462085 () BalanceConc!9224)

(assert (=> b!1388861 (= lt!462073 (lex!961 thiss!19762 rules!2550 lt!462085))))

(assert (=> b!1388861 (= lt!462085 (print!900 thiss!19762 (singletonSeq!1088 t1!34)))))

(declare-fun lt!462077 () Rule!4682)

(declare-fun getWitness!414 (List!14162 Int) Rule!4682)

(assert (=> b!1388861 (= lt!462077 (getWitness!414 rules!2550 lambda!59990))))

(declare-fun b!1388862 () Bool)

(declare-fun res!626853 () Bool)

(assert (=> b!1388862 (=> res!626853 e!887151)))

(declare-datatypes ((tuple2!13702 0))(
  ( (tuple2!13703 (_1!7737 List!14163) (_2!7737 List!14160)) )
))
(declare-fun lexList!650 (LexerInterface!2136 List!14162 List!14160) tuple2!13702)

(assert (=> b!1388862 (= res!626853 (not (= (lexList!650 thiss!19762 rules!2550 (list!5470 lt!462084)) (tuple2!13703 lt!462071 Nil!14094))))))

(declare-fun e!887159 () Bool)

(declare-fun e!887163 () Bool)

(declare-fun tp!396942 () Bool)

(declare-fun b!1388863 () Bool)

(assert (=> b!1388863 (= e!887163 (and tp!396942 (inv!18430 (tag!2703 (h!19497 rules!2550))) (inv!18434 (transformation!2441 (h!19497 rules!2550))) e!887159))))

(declare-fun b!1388864 () Bool)

(declare-fun res!626839 () Bool)

(assert (=> b!1388864 (=> res!626839 e!887139)))

(assert (=> b!1388864 (= res!626839 (not (matchR!1746 lt!462076 lt!462088)))))

(declare-fun b!1388865 () Bool)

(declare-fun res!626857 () Bool)

(assert (=> b!1388865 (=> res!626857 e!887151)))

(assert (=> b!1388865 (= res!626857 (not (isEmpty!8532 (_2!7735 lt!462093))))))

(declare-fun b!1388866 () Bool)

(assert (=> b!1388866 (= e!887152 e!887160)))

(declare-fun res!626859 () Bool)

(assert (=> b!1388866 (=> res!626859 e!887160)))

(declare-fun lt!462087 () Bool)

(assert (=> b!1388866 (= res!626859 lt!462087)))

(declare-fun lt!462090 () Unit!20353)

(declare-fun e!887142 () Unit!20353)

(assert (=> b!1388866 (= lt!462090 e!887142)))

(declare-fun c!228559 () Bool)

(assert (=> b!1388866 (= c!228559 lt!462087)))

(declare-fun usedCharacters!252 (Regex!3755) List!14160)

(assert (=> b!1388866 (= lt!462087 (not (contains!2703 (usedCharacters!252 (regex!2441 (rule!4202 t1!34))) lt!462095)))))

(declare-fun b!1388867 () Bool)

(declare-fun res!626860 () Bool)

(assert (=> b!1388867 (=> (not res!626860) (not e!887161))))

(declare-fun sepAndNonSepRulesDisjointChars!814 (List!14162 List!14162) Bool)

(assert (=> b!1388867 (= res!626860 (sepAndNonSepRulesDisjointChars!814 rules!2550 rules!2550))))

(declare-fun b!1388868 () Bool)

(declare-fun res!626873 () Bool)

(assert (=> b!1388868 (=> res!626873 e!887146)))

(assert (=> b!1388868 (= res!626873 (not (contains!2704 rules!2550 lt!462077)))))

(assert (=> b!1388869 (= e!887159 (and tp!396944 tp!396947))))

(declare-fun b!1388870 () Bool)

(declare-fun tp!396940 () Bool)

(assert (=> b!1388870 (= e!887148 (and tp!396940 (inv!18430 (tag!2703 (rule!4202 t1!34))) (inv!18434 (transformation!2441 (rule!4202 t1!34))) e!887165))))

(declare-fun b!1388871 () Bool)

(declare-fun res!626845 () Bool)

(assert (=> b!1388871 (=> (not res!626845) (not e!887153))))

(declare-fun rulesProduceIndividualToken!1105 (LexerInterface!2136 List!14162 Token!4544) Bool)

(assert (=> b!1388871 (= res!626845 (rulesProduceIndividualToken!1105 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1388872 () Bool)

(assert (=> b!1388872 (= e!887153 e!887161)))

(declare-fun res!626866 () Bool)

(assert (=> b!1388872 (=> (not res!626866) (not e!887161))))

(declare-fun size!11580 (BalanceConc!9224) Int)

(assert (=> b!1388872 (= res!626866 (> (size!11580 lt!462092) 0))))

(assert (=> b!1388872 (= lt!462092 (charsOf!1413 t2!34))))

(declare-fun b!1388873 () Bool)

(declare-fun tp!396943 () Bool)

(assert (=> b!1388873 (= e!887143 (and e!887163 tp!396943))))

(declare-fun b!1388874 () Bool)

(declare-fun res!626838 () Bool)

(assert (=> b!1388874 (=> res!626838 e!887139)))

(assert (=> b!1388874 (= res!626838 (not (contains!2703 lt!462088 lt!462072)))))

(assert (=> b!1388875 (= e!887140 (and tp!396945 tp!396950))))

(declare-fun b!1388876 () Bool)

(declare-fun Unit!20355 () Unit!20353)

(assert (=> b!1388876 (= e!887142 Unit!20355)))

(declare-fun lt!462083 () Unit!20353)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!186 (Regex!3755 List!14160 C!7800) Unit!20353)

(assert (=> b!1388876 (= lt!462083 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!186 (regex!2441 (rule!4202 t1!34)) lt!462081 (head!2537 lt!462081)))))

(assert (=> b!1388876 false))

(declare-fun b!1388877 () Bool)

(declare-fun res!626872 () Bool)

(assert (=> b!1388877 (=> res!626872 e!887145)))

(assert (=> b!1388877 (= res!626872 (not (= (lexList!650 thiss!19762 rules!2550 (list!5470 lt!462085)) (tuple2!13703 lt!462094 Nil!14094))))))

(declare-fun e!887138 () Bool)

(assert (=> b!1388878 (= e!887147 (not e!887138))))

(declare-fun res!626856 () Bool)

(assert (=> b!1388878 (=> res!626856 e!887138)))

(declare-fun lambda!59987 () Int)

(declare-fun Exists!905 (Int) Bool)

(assert (=> b!1388878 (= res!626856 (not (Exists!905 lambda!59987)))))

(assert (=> b!1388878 (Exists!905 lambda!59987)))

(declare-fun lt!462080 () Unit!20353)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!223 (Regex!3755 List!14160) Unit!20353)

(assert (=> b!1388878 (= lt!462080 (lemmaPrefixMatchThenExistsStringThatMatches!223 lt!462076 lt!462089))))

(declare-fun b!1388879 () Bool)

(declare-fun res!626864 () Bool)

(assert (=> b!1388879 (=> res!626864 e!887160)))

(declare-fun validRegex!1637 (Regex!3755) Bool)

(assert (=> b!1388879 (= res!626864 (not (validRegex!1637 (regex!2441 (rule!4202 t2!34)))))))

(declare-fun b!1388880 () Bool)

(declare-fun res!626843 () Bool)

(assert (=> b!1388880 (=> res!626843 e!887160)))

(assert (=> b!1388880 (= res!626843 (contains!2703 (usedCharacters!252 (regex!2441 (rule!4202 t2!34))) lt!462072))))

(declare-fun e!887158 () Bool)

(assert (=> b!1388881 (= e!887139 e!887158)))

(declare-fun res!626849 () Bool)

(assert (=> b!1388881 (=> res!626849 e!887158)))

(declare-fun lambda!59989 () Int)

(declare-datatypes ((List!14164 0))(
  ( (Nil!14098) (Cons!14098 (h!19499 Regex!3755) (t!122367 List!14164)) )
))
(declare-fun exists!527 (List!14164 Int) Bool)

(declare-fun map!3122 (List!14162 Int) List!14164)

(assert (=> b!1388881 (= res!626849 (not (exists!527 (map!3122 rules!2550 lambda!59988) lambda!59989)))))

(declare-fun lt!462086 () List!14164)

(assert (=> b!1388881 (exists!527 lt!462086 lambda!59989)))

(declare-fun lt!462074 () Unit!20353)

(declare-fun matchRGenUnionSpec!166 (Regex!3755 List!14164 List!14160) Unit!20353)

(assert (=> b!1388881 (= lt!462074 (matchRGenUnionSpec!166 lt!462076 lt!462086 lt!462088))))

(assert (=> b!1388881 (= lt!462086 (map!3122 rules!2550 lambda!59988))))

(declare-fun b!1388882 () Bool)

(assert (=> b!1388882 (= e!887158 e!887154)))

(declare-fun res!626848 () Bool)

(assert (=> b!1388882 (=> res!626848 e!887154)))

(declare-fun contains!2705 (List!14164 Regex!3755) Bool)

(assert (=> b!1388882 (= res!626848 (not (contains!2705 (map!3122 rules!2550 lambda!59988) lt!462096)))))

(declare-fun getWitness!415 (List!14164 Int) Regex!3755)

(assert (=> b!1388882 (= lt!462096 (getWitness!415 (map!3122 rules!2550 lambda!59988) lambda!59989))))

(declare-fun b!1388883 () Bool)

(declare-fun res!626840 () Bool)

(assert (=> b!1388883 (=> (not res!626840) (not e!887153))))

(assert (=> b!1388883 (= res!626840 (not (= (isSeparator!2441 (rule!4202 t1!34)) (isSeparator!2441 (rule!4202 t2!34)))))))

(declare-fun b!1388884 () Bool)

(declare-fun res!626851 () Bool)

(assert (=> b!1388884 (=> res!626851 e!887139)))

(assert (=> b!1388884 (= res!626851 (not (contains!2703 lt!462089 lt!462072)))))

(declare-fun b!1388885 () Bool)

(assert (=> b!1388885 (= e!887138 e!887157)))

(declare-fun res!626867 () Bool)

(assert (=> b!1388885 (=> res!626867 e!887157)))

(declare-fun getSuffix!601 (List!14160 List!14160) List!14160)

(assert (=> b!1388885 (= res!626867 (not (= lt!462088 (++!3660 lt!462089 (getSuffix!601 lt!462088 lt!462089)))))))

(declare-fun pickWitness!208 (Int) List!14160)

(assert (=> b!1388885 (= lt!462088 (pickWitness!208 lambda!59987))))

(declare-fun b!1388886 () Bool)

(declare-fun Unit!20356 () Unit!20353)

(assert (=> b!1388886 (= e!887142 Unit!20356)))

(declare-fun b!1388887 () Bool)

(declare-fun res!626862 () Bool)

(assert (=> b!1388887 (=> (not res!626862) (not e!887153))))

(assert (=> b!1388887 (= res!626862 (rulesProduceIndividualToken!1105 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!396949 () Bool)

(declare-fun b!1388888 () Bool)

(assert (=> b!1388888 (= e!887150 (and (inv!21 (value!79201 t2!34)) e!887162 tp!396949))))

(declare-fun b!1388889 () Bool)

(declare-fun res!626868 () Bool)

(assert (=> b!1388889 (=> (not res!626868) (not e!887153))))

(declare-fun isEmpty!8533 (List!14162) Bool)

(assert (=> b!1388889 (= res!626868 (not (isEmpty!8533 rules!2550)))))

(declare-fun b!1388890 () Bool)

(declare-fun res!626858 () Bool)

(assert (=> b!1388890 (=> (not res!626858) (not e!887161))))

(declare-fun separableTokensPredicate!419 (LexerInterface!2136 Token!4544 Token!4544 List!14162) Bool)

(assert (=> b!1388890 (= res!626858 (not (separableTokensPredicate!419 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1388891 (= e!887146 e!887152)))

(declare-fun res!626865 () Bool)

(assert (=> b!1388891 (=> res!626865 e!887152)))

(assert (=> b!1388891 (= res!626865 (not (matchR!1746 (regex!2441 (rule!4202 t1!34)) lt!462081)))))

(declare-fun lt!462079 () Unit!20353)

(declare-fun forallContained!636 (List!14162 Int Rule!4682) Unit!20353)

(assert (=> b!1388891 (= lt!462079 (forallContained!636 rules!2550 lambda!59991 (rule!4202 t2!34)))))

(declare-fun lt!462091 () Unit!20353)

(assert (=> b!1388891 (= lt!462091 (forallContained!636 rules!2550 lambda!59991 (rule!4202 t1!34)))))

(declare-fun lt!462082 () Unit!20353)

(assert (=> b!1388891 (= lt!462082 (forallContained!636 rules!2550 lambda!59991 lt!462077))))

(assert (= (and start!126170 res!626871) b!1388889))

(assert (= (and b!1388889 res!626868) b!1388857))

(assert (= (and b!1388857 res!626842) b!1388887))

(assert (= (and b!1388887 res!626862) b!1388871))

(assert (= (and b!1388871 res!626845) b!1388883))

(assert (= (and b!1388883 res!626840) b!1388872))

(assert (= (and b!1388872 res!626866) b!1388867))

(assert (= (and b!1388867 res!626860) b!1388890))

(assert (= (and b!1388890 res!626858) b!1388858))

(assert (= (and b!1388858 res!626847) b!1388878))

(assert (= (and b!1388878 (not res!626856)) b!1388885))

(assert (= (and b!1388885 (not res!626867)) b!1388859))

(assert (= (and b!1388859 (not res!626844)) b!1388855))

(assert (= (and b!1388855 (not res!626852)) b!1388884))

(assert (= (and b!1388884 (not res!626851)) b!1388874))

(assert (= (and b!1388874 (not res!626838)) b!1388864))

(assert (= (and b!1388864 (not res!626839)) b!1388881))

(assert (= (and b!1388881 (not res!626849)) b!1388882))

(assert (= (and b!1388882 (not res!626848)) b!1388847))

(assert (= (and b!1388847 (not res!626870)) b!1388861))

(assert (= (and b!1388861 (not res!626863)) b!1388850))

(assert (= (and b!1388850 (not res!626861)) b!1388877))

(assert (= (and b!1388877 (not res!626872)) b!1388854))

(assert (= (and b!1388854 (not res!626854)) b!1388853))

(assert (= (and b!1388853 (not res!626855)) b!1388848))

(assert (= (and b!1388848 (not res!626850)) b!1388865))

(assert (= (and b!1388865 (not res!626857)) b!1388862))

(assert (= (and b!1388862 (not res!626853)) b!1388852))

(assert (= (and b!1388852 (not res!626841)) b!1388856))

(assert (= (and b!1388856 (not res!626846)) b!1388868))

(assert (= (and b!1388868 (not res!626873)) b!1388891))

(assert (= (and b!1388891 (not res!626865)) b!1388860))

(assert (= (and b!1388860 (not res!626869)) b!1388866))

(assert (= (and b!1388866 c!228559) b!1388876))

(assert (= (and b!1388866 (not c!228559)) b!1388886))

(assert (= (and b!1388866 (not res!626859)) b!1388880))

(assert (= (and b!1388880 (not res!626843)) b!1388879))

(assert (= (and b!1388879 (not res!626864)) b!1388845))

(assert (= b!1388863 b!1388869))

(assert (= b!1388873 b!1388863))

(assert (= (and start!126170 ((_ is Cons!14096) rules!2550)) b!1388873))

(assert (= b!1388870 b!1388849))

(assert (= b!1388851 b!1388870))

(assert (= start!126170 b!1388851))

(assert (= b!1388846 b!1388875))

(assert (= b!1388888 b!1388846))

(assert (= start!126170 b!1388888))

(declare-fun m!1563427 () Bool)

(assert (=> b!1388890 m!1563427))

(declare-fun m!1563429 () Bool)

(assert (=> b!1388858 m!1563429))

(declare-fun m!1563431 () Bool)

(assert (=> b!1388858 m!1563431))

(declare-fun m!1563433 () Bool)

(assert (=> b!1388858 m!1563433))

(declare-fun m!1563435 () Bool)

(assert (=> b!1388858 m!1563435))

(declare-fun m!1563437 () Bool)

(assert (=> b!1388858 m!1563437))

(declare-fun m!1563439 () Bool)

(assert (=> b!1388858 m!1563439))

(declare-fun m!1563441 () Bool)

(assert (=> b!1388857 m!1563441))

(declare-fun m!1563443 () Bool)

(assert (=> b!1388885 m!1563443))

(assert (=> b!1388885 m!1563443))

(declare-fun m!1563445 () Bool)

(assert (=> b!1388885 m!1563445))

(declare-fun m!1563447 () Bool)

(assert (=> b!1388885 m!1563447))

(declare-fun m!1563449 () Bool)

(assert (=> b!1388872 m!1563449))

(declare-fun m!1563451 () Bool)

(assert (=> b!1388872 m!1563451))

(declare-fun m!1563453 () Bool)

(assert (=> b!1388854 m!1563453))

(declare-fun m!1563455 () Bool)

(assert (=> b!1388845 m!1563455))

(assert (=> b!1388845 m!1563455))

(declare-fun m!1563457 () Bool)

(assert (=> b!1388845 m!1563457))

(declare-fun m!1563459 () Bool)

(assert (=> b!1388847 m!1563459))

(assert (=> b!1388847 m!1563459))

(declare-fun m!1563461 () Bool)

(assert (=> b!1388847 m!1563461))

(declare-fun m!1563463 () Bool)

(assert (=> b!1388879 m!1563463))

(declare-fun m!1563465 () Bool)

(assert (=> b!1388863 m!1563465))

(declare-fun m!1563467 () Bool)

(assert (=> b!1388863 m!1563467))

(declare-fun m!1563469 () Bool)

(assert (=> b!1388874 m!1563469))

(declare-fun m!1563471 () Bool)

(assert (=> b!1388848 m!1563471))

(declare-fun m!1563473 () Bool)

(assert (=> b!1388848 m!1563473))

(declare-fun m!1563475 () Bool)

(assert (=> b!1388848 m!1563475))

(assert (=> b!1388848 m!1563475))

(declare-fun m!1563477 () Bool)

(assert (=> b!1388848 m!1563477))

(declare-fun m!1563479 () Bool)

(assert (=> b!1388878 m!1563479))

(assert (=> b!1388878 m!1563479))

(declare-fun m!1563481 () Bool)

(assert (=> b!1388878 m!1563481))

(declare-fun m!1563483 () Bool)

(assert (=> b!1388891 m!1563483))

(declare-fun m!1563485 () Bool)

(assert (=> b!1388891 m!1563485))

(declare-fun m!1563487 () Bool)

(assert (=> b!1388891 m!1563487))

(declare-fun m!1563489 () Bool)

(assert (=> b!1388891 m!1563489))

(declare-fun m!1563491 () Bool)

(assert (=> b!1388866 m!1563491))

(assert (=> b!1388866 m!1563491))

(declare-fun m!1563493 () Bool)

(assert (=> b!1388866 m!1563493))

(declare-fun m!1563495 () Bool)

(assert (=> b!1388850 m!1563495))

(declare-fun m!1563497 () Bool)

(assert (=> b!1388876 m!1563497))

(assert (=> b!1388876 m!1563497))

(declare-fun m!1563499 () Bool)

(assert (=> b!1388876 m!1563499))

(declare-fun m!1563501 () Bool)

(assert (=> b!1388846 m!1563501))

(declare-fun m!1563503 () Bool)

(assert (=> b!1388846 m!1563503))

(declare-fun m!1563505 () Bool)

(assert (=> b!1388851 m!1563505))

(declare-fun m!1563507 () Bool)

(assert (=> b!1388862 m!1563507))

(assert (=> b!1388862 m!1563507))

(declare-fun m!1563509 () Bool)

(assert (=> b!1388862 m!1563509))

(declare-fun m!1563511 () Bool)

(assert (=> b!1388882 m!1563511))

(assert (=> b!1388882 m!1563511))

(declare-fun m!1563513 () Bool)

(assert (=> b!1388882 m!1563513))

(assert (=> b!1388882 m!1563511))

(assert (=> b!1388882 m!1563511))

(declare-fun m!1563515 () Bool)

(assert (=> b!1388882 m!1563515))

(declare-fun m!1563517 () Bool)

(assert (=> b!1388887 m!1563517))

(declare-fun m!1563519 () Bool)

(assert (=> b!1388856 m!1563519))

(declare-fun m!1563521 () Bool)

(assert (=> b!1388864 m!1563521))

(declare-fun m!1563523 () Bool)

(assert (=> b!1388884 m!1563523))

(declare-fun m!1563525 () Bool)

(assert (=> b!1388880 m!1563525))

(assert (=> b!1388880 m!1563525))

(declare-fun m!1563527 () Bool)

(assert (=> b!1388880 m!1563527))

(declare-fun m!1563529 () Bool)

(assert (=> b!1388852 m!1563529))

(declare-fun m!1563531 () Bool)

(assert (=> b!1388852 m!1563531))

(declare-fun m!1563533 () Bool)

(assert (=> b!1388861 m!1563533))

(declare-fun m!1563535 () Bool)

(assert (=> b!1388861 m!1563535))

(declare-fun m!1563537 () Bool)

(assert (=> b!1388861 m!1563537))

(declare-fun m!1563539 () Bool)

(assert (=> b!1388861 m!1563539))

(assert (=> b!1388861 m!1563537))

(declare-fun m!1563541 () Bool)

(assert (=> b!1388861 m!1563541))

(declare-fun m!1563543 () Bool)

(assert (=> b!1388868 m!1563543))

(declare-fun m!1563545 () Bool)

(assert (=> b!1388877 m!1563545))

(assert (=> b!1388877 m!1563545))

(declare-fun m!1563547 () Bool)

(assert (=> b!1388877 m!1563547))

(declare-fun m!1563549 () Bool)

(assert (=> b!1388889 m!1563549))

(declare-fun m!1563551 () Bool)

(assert (=> start!126170 m!1563551))

(declare-fun m!1563553 () Bool)

(assert (=> start!126170 m!1563553))

(declare-fun m!1563555 () Bool)

(assert (=> b!1388855 m!1563555))

(declare-fun m!1563557 () Bool)

(assert (=> b!1388867 m!1563557))

(declare-fun m!1563559 () Bool)

(assert (=> b!1388871 m!1563559))

(declare-fun m!1563561 () Bool)

(assert (=> b!1388853 m!1563561))

(declare-fun m!1563563 () Bool)

(assert (=> b!1388860 m!1563563))

(assert (=> b!1388881 m!1563511))

(declare-fun m!1563565 () Bool)

(assert (=> b!1388881 m!1563565))

(assert (=> b!1388881 m!1563511))

(assert (=> b!1388881 m!1563511))

(declare-fun m!1563567 () Bool)

(assert (=> b!1388881 m!1563567))

(declare-fun m!1563569 () Bool)

(assert (=> b!1388881 m!1563569))

(declare-fun m!1563571 () Bool)

(assert (=> b!1388859 m!1563571))

(declare-fun m!1563573 () Bool)

(assert (=> b!1388859 m!1563573))

(declare-fun m!1563575 () Bool)

(assert (=> b!1388870 m!1563575))

(declare-fun m!1563577 () Bool)

(assert (=> b!1388870 m!1563577))

(declare-fun m!1563579 () Bool)

(assert (=> b!1388865 m!1563579))

(declare-fun m!1563581 () Bool)

(assert (=> b!1388888 m!1563581))

(check-sat (not b_next!34475) (not b!1388865) (not b!1388872) (not b!1388848) (not b!1388845) (not b!1388857) (not b!1388870) (not b!1388853) b_and!93043 (not b!1388859) (not b!1388847) (not b!1388860) b_and!93051 (not b!1388887) (not b!1388867) (not b!1388885) (not b!1388889) b_and!93049 (not b!1388874) (not b_next!34473) (not b!1388852) (not b!1388888) (not b!1388856) (not b!1388861) (not b!1388851) (not b!1388884) b_and!93053 (not start!126170) (not b_next!34471) (not b!1388890) (not b!1388879) (not b!1388862) (not b!1388858) (not b_next!34477) (not b!1388871) (not b!1388866) (not b!1388881) b_and!93045 (not b!1388855) (not b!1388873) (not b!1388878) (not b!1388877) (not b_next!34469) (not b!1388850) (not b!1388863) (not b!1388880) (not b!1388891) (not b!1388882) (not b_next!34467) (not b!1388854) (not b!1388846) (not b!1388868) (not b!1388864) (not b!1388876) b_and!93047)
(check-sat b_and!93051 b_and!93049 (not b_next!34475) (not b_next!34473) b_and!93053 b_and!93043 (not b_next!34471) (not b_next!34477) b_and!93045 (not b_next!34469) (not b_next!34467) b_and!93047)
(get-model)

(declare-fun b!1388980 () Bool)

(declare-fun res!626924 () Bool)

(declare-fun e!887216 () Bool)

(assert (=> b!1388980 (=> res!626924 e!887216)))

(assert (=> b!1388980 (= res!626924 (not ((_ is IntegerValue!7595) (value!79201 t1!34))))))

(declare-fun e!887214 () Bool)

(assert (=> b!1388980 (= e!887214 e!887216)))

(declare-fun b!1388981 () Bool)

(declare-fun e!887215 () Bool)

(declare-fun inv!16 (TokenValue!2531) Bool)

(assert (=> b!1388981 (= e!887215 (inv!16 (value!79201 t1!34)))))

(declare-fun b!1388982 () Bool)

(declare-fun inv!17 (TokenValue!2531) Bool)

(assert (=> b!1388982 (= e!887214 (inv!17 (value!79201 t1!34)))))

(declare-fun d!397017 () Bool)

(declare-fun c!228582 () Bool)

(assert (=> d!397017 (= c!228582 ((_ is IntegerValue!7593) (value!79201 t1!34)))))

(assert (=> d!397017 (= (inv!21 (value!79201 t1!34)) e!887215)))

(declare-fun b!1388983 () Bool)

(assert (=> b!1388983 (= e!887215 e!887214)))

(declare-fun c!228583 () Bool)

(assert (=> b!1388983 (= c!228583 ((_ is IntegerValue!7594) (value!79201 t1!34)))))

(declare-fun b!1388984 () Bool)

(declare-fun inv!15 (TokenValue!2531) Bool)

(assert (=> b!1388984 (= e!887216 (inv!15 (value!79201 t1!34)))))

(assert (= (and d!397017 c!228582) b!1388981))

(assert (= (and d!397017 (not c!228582)) b!1388983))

(assert (= (and b!1388983 c!228583) b!1388982))

(assert (= (and b!1388983 (not c!228583)) b!1388980))

(assert (= (and b!1388980 (not res!626924)) b!1388984))

(declare-fun m!1563623 () Bool)

(assert (=> b!1388981 m!1563623))

(declare-fun m!1563625 () Bool)

(assert (=> b!1388982 m!1563625))

(declare-fun m!1563627 () Bool)

(assert (=> b!1388984 m!1563627))

(assert (=> b!1388851 d!397017))

(declare-fun b!1389037 () Bool)

(declare-fun e!887248 () Bool)

(declare-fun e!887249 () Bool)

(assert (=> b!1389037 (= e!887248 e!887249)))

(declare-fun res!626970 () Bool)

(assert (=> b!1389037 (=> (not res!626970) (not e!887249))))

(declare-fun lt!462133 () Option!2702)

(declare-fun isDefined!2230 (Option!2702) Bool)

(assert (=> b!1389037 (= res!626970 (isDefined!2230 lt!462133))))

(declare-fun b!1389038 () Bool)

(declare-fun res!626971 () Bool)

(assert (=> b!1389038 (=> (not res!626971) (not e!887249))))

(declare-fun get!4376 (Option!2702) tuple2!13700)

(assert (=> b!1389038 (= res!626971 (matchR!1746 (regex!2441 (rule!4202 (_1!7736 (get!4376 lt!462133)))) (list!5470 (charsOf!1413 (_1!7736 (get!4376 lt!462133))))))))

(declare-fun call!92895 () Option!2702)

(declare-fun bm!92890 () Bool)

(declare-fun maxPrefixOneRule!628 (LexerInterface!2136 Rule!4682 List!14160) Option!2702)

(assert (=> bm!92890 (= call!92895 (maxPrefixOneRule!628 thiss!19762 (h!19497 rules!2550) lt!462075))))

(declare-fun b!1389039 () Bool)

(declare-fun e!887250 () Option!2702)

(declare-fun lt!462132 () Option!2702)

(declare-fun lt!462134 () Option!2702)

(assert (=> b!1389039 (= e!887250 (ite (and ((_ is None!2701) lt!462132) ((_ is None!2701) lt!462134)) None!2701 (ite ((_ is None!2701) lt!462134) lt!462132 (ite ((_ is None!2701) lt!462132) lt!462134 (ite (>= (size!11579 (_1!7736 (v!21576 lt!462132))) (size!11579 (_1!7736 (v!21576 lt!462134)))) lt!462132 lt!462134)))))))

(assert (=> b!1389039 (= lt!462132 call!92895)))

(assert (=> b!1389039 (= lt!462134 (maxPrefix!1110 thiss!19762 (t!122365 rules!2550) lt!462075))))

(declare-fun b!1389040 () Bool)

(declare-fun res!626967 () Bool)

(assert (=> b!1389040 (=> (not res!626967) (not e!887249))))

(assert (=> b!1389040 (= res!626967 (= (++!3660 (list!5470 (charsOf!1413 (_1!7736 (get!4376 lt!462133)))) (_2!7736 (get!4376 lt!462133))) lt!462075))))

(declare-fun b!1389041 () Bool)

(assert (=> b!1389041 (= e!887250 call!92895)))

(declare-fun b!1389042 () Bool)

(assert (=> b!1389042 (= e!887249 (contains!2704 rules!2550 (rule!4202 (_1!7736 (get!4376 lt!462133)))))))

(declare-fun b!1389043 () Bool)

(declare-fun res!626969 () Bool)

(assert (=> b!1389043 (=> (not res!626969) (not e!887249))))

(assert (=> b!1389043 (= res!626969 (= (list!5470 (charsOf!1413 (_1!7736 (get!4376 lt!462133)))) (originalCharacters!3303 (_1!7736 (get!4376 lt!462133)))))))

(declare-fun b!1389044 () Bool)

(declare-fun res!626968 () Bool)

(assert (=> b!1389044 (=> (not res!626968) (not e!887249))))

(declare-fun size!11585 (List!14160) Int)

(assert (=> b!1389044 (= res!626968 (< (size!11585 (_2!7736 (get!4376 lt!462133))) (size!11585 lt!462075)))))

(declare-fun d!397019 () Bool)

(assert (=> d!397019 e!887248))

(declare-fun res!626973 () Bool)

(assert (=> d!397019 (=> res!626973 e!887248)))

(declare-fun isEmpty!8536 (Option!2702) Bool)

(assert (=> d!397019 (= res!626973 (isEmpty!8536 lt!462133))))

(assert (=> d!397019 (= lt!462133 e!887250)))

(declare-fun c!228586 () Bool)

(assert (=> d!397019 (= c!228586 (and ((_ is Cons!14096) rules!2550) ((_ is Nil!14096) (t!122365 rules!2550))))))

(declare-fun lt!462135 () Unit!20353)

(declare-fun lt!462131 () Unit!20353)

(assert (=> d!397019 (= lt!462135 lt!462131)))

(declare-fun isPrefix!1143 (List!14160 List!14160) Bool)

(assert (=> d!397019 (isPrefix!1143 lt!462075 lt!462075)))

(declare-fun lemmaIsPrefixRefl!802 (List!14160 List!14160) Unit!20353)

(assert (=> d!397019 (= lt!462131 (lemmaIsPrefixRefl!802 lt!462075 lt!462075))))

(declare-fun rulesValidInductive!785 (LexerInterface!2136 List!14162) Bool)

(assert (=> d!397019 (rulesValidInductive!785 thiss!19762 rules!2550)))

(assert (=> d!397019 (= (maxPrefix!1110 thiss!19762 rules!2550 lt!462075) lt!462133)))

(declare-fun b!1389045 () Bool)

(declare-fun res!626972 () Bool)

(assert (=> b!1389045 (=> (not res!626972) (not e!887249))))

(declare-fun apply!3543 (TokenValueInjection!4722 BalanceConc!9224) TokenValue!2531)

(declare-fun seqFromList!1646 (List!14160) BalanceConc!9224)

(assert (=> b!1389045 (= res!626972 (= (value!79201 (_1!7736 (get!4376 lt!462133))) (apply!3543 (transformation!2441 (rule!4202 (_1!7736 (get!4376 lt!462133)))) (seqFromList!1646 (originalCharacters!3303 (_1!7736 (get!4376 lt!462133)))))))))

(assert (= (and d!397019 c!228586) b!1389041))

(assert (= (and d!397019 (not c!228586)) b!1389039))

(assert (= (or b!1389041 b!1389039) bm!92890))

(assert (= (and d!397019 (not res!626973)) b!1389037))

(assert (= (and b!1389037 res!626970) b!1389043))

(assert (= (and b!1389043 res!626969) b!1389044))

(assert (= (and b!1389044 res!626968) b!1389040))

(assert (= (and b!1389040 res!626967) b!1389045))

(assert (= (and b!1389045 res!626972) b!1389038))

(assert (= (and b!1389038 res!626971) b!1389042))

(declare-fun m!1563683 () Bool)

(assert (=> b!1389044 m!1563683))

(declare-fun m!1563685 () Bool)

(assert (=> b!1389044 m!1563685))

(declare-fun m!1563687 () Bool)

(assert (=> b!1389044 m!1563687))

(declare-fun m!1563689 () Bool)

(assert (=> bm!92890 m!1563689))

(declare-fun m!1563691 () Bool)

(assert (=> b!1389039 m!1563691))

(assert (=> b!1389040 m!1563683))

(declare-fun m!1563693 () Bool)

(assert (=> b!1389040 m!1563693))

(assert (=> b!1389040 m!1563693))

(declare-fun m!1563695 () Bool)

(assert (=> b!1389040 m!1563695))

(assert (=> b!1389040 m!1563695))

(declare-fun m!1563697 () Bool)

(assert (=> b!1389040 m!1563697))

(assert (=> b!1389045 m!1563683))

(declare-fun m!1563699 () Bool)

(assert (=> b!1389045 m!1563699))

(assert (=> b!1389045 m!1563699))

(declare-fun m!1563701 () Bool)

(assert (=> b!1389045 m!1563701))

(assert (=> b!1389038 m!1563683))

(assert (=> b!1389038 m!1563693))

(assert (=> b!1389038 m!1563693))

(assert (=> b!1389038 m!1563695))

(assert (=> b!1389038 m!1563695))

(declare-fun m!1563703 () Bool)

(assert (=> b!1389038 m!1563703))

(declare-fun m!1563705 () Bool)

(assert (=> b!1389037 m!1563705))

(assert (=> b!1389042 m!1563683))

(declare-fun m!1563707 () Bool)

(assert (=> b!1389042 m!1563707))

(declare-fun m!1563709 () Bool)

(assert (=> d!397019 m!1563709))

(declare-fun m!1563711 () Bool)

(assert (=> d!397019 m!1563711))

(declare-fun m!1563713 () Bool)

(assert (=> d!397019 m!1563713))

(declare-fun m!1563715 () Bool)

(assert (=> d!397019 m!1563715))

(assert (=> b!1389043 m!1563683))

(assert (=> b!1389043 m!1563693))

(assert (=> b!1389043 m!1563693))

(assert (=> b!1389043 m!1563695))

(assert (=> b!1388852 d!397019))

(declare-fun d!397033 () Bool)

(declare-fun list!5472 (Conc!4642) List!14160)

(assert (=> d!397033 (= (list!5470 lt!462092) (list!5472 (c!228560 lt!462092)))))

(declare-fun bs!337259 () Bool)

(assert (= bs!337259 d!397033))

(declare-fun m!1563717 () Bool)

(assert (=> bs!337259 m!1563717))

(assert (=> b!1388852 d!397033))

(declare-fun d!397035 () Bool)

(declare-fun lt!462138 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2072 (List!14160) (InoxSet C!7800))

(assert (=> d!397035 (= lt!462138 (select (content!2072 lt!462088) lt!462072))))

(declare-fun e!887256 () Bool)

(assert (=> d!397035 (= lt!462138 e!887256)))

(declare-fun res!626979 () Bool)

(assert (=> d!397035 (=> (not res!626979) (not e!887256))))

(assert (=> d!397035 (= res!626979 ((_ is Cons!14094) lt!462088))))

(assert (=> d!397035 (= (contains!2703 lt!462088 lt!462072) lt!462138)))

(declare-fun b!1389050 () Bool)

(declare-fun e!887255 () Bool)

(assert (=> b!1389050 (= e!887256 e!887255)))

(declare-fun res!626978 () Bool)

(assert (=> b!1389050 (=> res!626978 e!887255)))

(assert (=> b!1389050 (= res!626978 (= (h!19495 lt!462088) lt!462072))))

(declare-fun b!1389051 () Bool)

(assert (=> b!1389051 (= e!887255 (contains!2703 (t!122363 lt!462088) lt!462072))))

(assert (= (and d!397035 res!626979) b!1389050))

(assert (= (and b!1389050 (not res!626978)) b!1389051))

(declare-fun m!1563719 () Bool)

(assert (=> d!397035 m!1563719))

(declare-fun m!1563721 () Bool)

(assert (=> d!397035 m!1563721))

(declare-fun m!1563723 () Bool)

(assert (=> b!1389051 m!1563723))

(assert (=> b!1388874 d!397035))

(declare-fun d!397037 () Bool)

(declare-fun lt!462150 () Bool)

(declare-fun content!2073 (List!14162) (InoxSet Rule!4682))

(assert (=> d!397037 (= lt!462150 (select (content!2073 rules!2550) (rule!4202 t1!34)))))

(declare-fun e!887270 () Bool)

(assert (=> d!397037 (= lt!462150 e!887270)))

(declare-fun res!626987 () Bool)

(assert (=> d!397037 (=> (not res!626987) (not e!887270))))

(assert (=> d!397037 (= res!626987 ((_ is Cons!14096) rules!2550))))

(assert (=> d!397037 (= (contains!2704 rules!2550 (rule!4202 t1!34)) lt!462150)))

(declare-fun b!1389071 () Bool)

(declare-fun e!887271 () Bool)

(assert (=> b!1389071 (= e!887270 e!887271)))

(declare-fun res!626988 () Bool)

(assert (=> b!1389071 (=> res!626988 e!887271)))

(assert (=> b!1389071 (= res!626988 (= (h!19497 rules!2550) (rule!4202 t1!34)))))

(declare-fun b!1389072 () Bool)

(assert (=> b!1389072 (= e!887271 (contains!2704 (t!122365 rules!2550) (rule!4202 t1!34)))))

(assert (= (and d!397037 res!626987) b!1389071))

(assert (= (and b!1389071 (not res!626988)) b!1389072))

(declare-fun m!1563725 () Bool)

(assert (=> d!397037 m!1563725))

(declare-fun m!1563727 () Bool)

(assert (=> d!397037 m!1563727))

(declare-fun m!1563731 () Bool)

(assert (=> b!1389072 m!1563731))

(assert (=> b!1388853 d!397037))

(declare-fun b!1389127 () Bool)

(declare-fun e!887304 () Bool)

(declare-fun nullable!1217 (Regex!3755) Bool)

(assert (=> b!1389127 (= e!887304 (nullable!1217 (regex!2441 (rule!4202 t1!34))))))

(declare-fun b!1389128 () Bool)

(declare-fun e!887306 () Bool)

(declare-fun e!887305 () Bool)

(assert (=> b!1389128 (= e!887306 e!887305)))

(declare-fun res!627023 () Bool)

(assert (=> b!1389128 (=> res!627023 e!887305)))

(declare-fun call!92899 () Bool)

(assert (=> b!1389128 (= res!627023 call!92899)))

(declare-fun b!1389129 () Bool)

(declare-fun e!887303 () Bool)

(assert (=> b!1389129 (= e!887303 (= (head!2537 lt!462081) (c!228561 (regex!2441 (rule!4202 t1!34)))))))

(declare-fun b!1389130 () Bool)

(declare-fun res!627024 () Bool)

(declare-fun e!887302 () Bool)

(assert (=> b!1389130 (=> res!627024 e!887302)))

(assert (=> b!1389130 (= res!627024 (not ((_ is ElementMatch!3755) (regex!2441 (rule!4202 t1!34)))))))

(declare-fun e!887300 () Bool)

(assert (=> b!1389130 (= e!887300 e!887302)))

(declare-fun b!1389131 () Bool)

(declare-fun lt!462160 () Bool)

(assert (=> b!1389131 (= e!887300 (not lt!462160))))

(declare-fun b!1389132 () Bool)

(declare-fun res!627022 () Bool)

(assert (=> b!1389132 (=> res!627022 e!887305)))

(declare-fun isEmpty!8537 (List!14160) Bool)

(declare-fun tail!2018 (List!14160) List!14160)

(assert (=> b!1389132 (= res!627022 (not (isEmpty!8537 (tail!2018 lt!462081))))))

(declare-fun b!1389133 () Bool)

(assert (=> b!1389133 (= e!887305 (not (= (head!2537 lt!462081) (c!228561 (regex!2441 (rule!4202 t1!34))))))))

(declare-fun b!1389134 () Bool)

(assert (=> b!1389134 (= e!887302 e!887306)))

(declare-fun res!627019 () Bool)

(assert (=> b!1389134 (=> (not res!627019) (not e!887306))))

(assert (=> b!1389134 (= res!627019 (not lt!462160))))

(declare-fun b!1389135 () Bool)

(declare-fun res!627021 () Bool)

(assert (=> b!1389135 (=> (not res!627021) (not e!887303))))

(assert (=> b!1389135 (= res!627021 (not call!92899))))

(declare-fun b!1389136 () Bool)

(declare-fun e!887301 () Bool)

(assert (=> b!1389136 (= e!887301 e!887300)))

(declare-fun c!228605 () Bool)

(assert (=> b!1389136 (= c!228605 ((_ is EmptyLang!3755) (regex!2441 (rule!4202 t1!34))))))

(declare-fun bm!92894 () Bool)

(assert (=> bm!92894 (= call!92899 (isEmpty!8537 lt!462081))))

(declare-fun d!397039 () Bool)

(assert (=> d!397039 e!887301))

(declare-fun c!228606 () Bool)

(assert (=> d!397039 (= c!228606 ((_ is EmptyExpr!3755) (regex!2441 (rule!4202 t1!34))))))

(assert (=> d!397039 (= lt!462160 e!887304)))

(declare-fun c!228607 () Bool)

(assert (=> d!397039 (= c!228607 (isEmpty!8537 lt!462081))))

(assert (=> d!397039 (validRegex!1637 (regex!2441 (rule!4202 t1!34)))))

(assert (=> d!397039 (= (matchR!1746 (regex!2441 (rule!4202 t1!34)) lt!462081) lt!462160)))

(declare-fun b!1389137 () Bool)

(declare-fun res!627018 () Bool)

(assert (=> b!1389137 (=> res!627018 e!887302)))

(assert (=> b!1389137 (= res!627018 e!887303)))

(declare-fun res!627017 () Bool)

(assert (=> b!1389137 (=> (not res!627017) (not e!887303))))

(assert (=> b!1389137 (= res!627017 lt!462160)))

(declare-fun b!1389138 () Bool)

(declare-fun derivativeStep!975 (Regex!3755 C!7800) Regex!3755)

(assert (=> b!1389138 (= e!887304 (matchR!1746 (derivativeStep!975 (regex!2441 (rule!4202 t1!34)) (head!2537 lt!462081)) (tail!2018 lt!462081)))))

(declare-fun b!1389139 () Bool)

(assert (=> b!1389139 (= e!887301 (= lt!462160 call!92899))))

(declare-fun b!1389140 () Bool)

(declare-fun res!627020 () Bool)

(assert (=> b!1389140 (=> (not res!627020) (not e!887303))))

(assert (=> b!1389140 (= res!627020 (isEmpty!8537 (tail!2018 lt!462081)))))

(assert (= (and d!397039 c!228607) b!1389127))

(assert (= (and d!397039 (not c!228607)) b!1389138))

(assert (= (and d!397039 c!228606) b!1389139))

(assert (= (and d!397039 (not c!228606)) b!1389136))

(assert (= (and b!1389136 c!228605) b!1389131))

(assert (= (and b!1389136 (not c!228605)) b!1389130))

(assert (= (and b!1389130 (not res!627024)) b!1389137))

(assert (= (and b!1389137 res!627017) b!1389135))

(assert (= (and b!1389135 res!627021) b!1389140))

(assert (= (and b!1389140 res!627020) b!1389129))

(assert (= (and b!1389137 (not res!627018)) b!1389134))

(assert (= (and b!1389134 res!627019) b!1389128))

(assert (= (and b!1389128 (not res!627023)) b!1389132))

(assert (= (and b!1389132 (not res!627022)) b!1389133))

(assert (= (or b!1389139 b!1389128 b!1389135) bm!92894))

(assert (=> b!1389133 m!1563497))

(declare-fun m!1563785 () Bool)

(assert (=> b!1389132 m!1563785))

(assert (=> b!1389132 m!1563785))

(declare-fun m!1563787 () Bool)

(assert (=> b!1389132 m!1563787))

(assert (=> b!1389138 m!1563497))

(assert (=> b!1389138 m!1563497))

(declare-fun m!1563789 () Bool)

(assert (=> b!1389138 m!1563789))

(assert (=> b!1389138 m!1563785))

(assert (=> b!1389138 m!1563789))

(assert (=> b!1389138 m!1563785))

(declare-fun m!1563791 () Bool)

(assert (=> b!1389138 m!1563791))

(assert (=> b!1389140 m!1563785))

(assert (=> b!1389140 m!1563785))

(assert (=> b!1389140 m!1563787))

(assert (=> b!1389129 m!1563497))

(declare-fun m!1563793 () Bool)

(assert (=> b!1389127 m!1563793))

(declare-fun m!1563795 () Bool)

(assert (=> d!397039 m!1563795))

(declare-fun m!1563797 () Bool)

(assert (=> d!397039 m!1563797))

(assert (=> bm!92894 m!1563795))

(assert (=> b!1388891 d!397039))

(declare-fun d!397059 () Bool)

(declare-fun dynLambda!6467 (Int Rule!4682) Bool)

(assert (=> d!397059 (dynLambda!6467 lambda!59991 (rule!4202 t2!34))))

(declare-fun lt!462168 () Unit!20353)

(declare-fun choose!8533 (List!14162 Int Rule!4682) Unit!20353)

(assert (=> d!397059 (= lt!462168 (choose!8533 rules!2550 lambda!59991 (rule!4202 t2!34)))))

(declare-fun e!887314 () Bool)

(assert (=> d!397059 e!887314))

(declare-fun res!627032 () Bool)

(assert (=> d!397059 (=> (not res!627032) (not e!887314))))

(declare-fun forall!3430 (List!14162 Int) Bool)

(assert (=> d!397059 (= res!627032 (forall!3430 rules!2550 lambda!59991))))

(assert (=> d!397059 (= (forallContained!636 rules!2550 lambda!59991 (rule!4202 t2!34)) lt!462168)))

(declare-fun b!1389148 () Bool)

(assert (=> b!1389148 (= e!887314 (contains!2704 rules!2550 (rule!4202 t2!34)))))

(assert (= (and d!397059 res!627032) b!1389148))

(declare-fun b_lambda!43155 () Bool)

(assert (=> (not b_lambda!43155) (not d!397059)))

(declare-fun m!1563813 () Bool)

(assert (=> d!397059 m!1563813))

(declare-fun m!1563815 () Bool)

(assert (=> d!397059 m!1563815))

(declare-fun m!1563817 () Bool)

(assert (=> d!397059 m!1563817))

(assert (=> b!1389148 m!1563519))

(assert (=> b!1388891 d!397059))

(declare-fun d!397071 () Bool)

(assert (=> d!397071 (dynLambda!6467 lambda!59991 (rule!4202 t1!34))))

(declare-fun lt!462169 () Unit!20353)

(assert (=> d!397071 (= lt!462169 (choose!8533 rules!2550 lambda!59991 (rule!4202 t1!34)))))

(declare-fun e!887315 () Bool)

(assert (=> d!397071 e!887315))

(declare-fun res!627033 () Bool)

(assert (=> d!397071 (=> (not res!627033) (not e!887315))))

(assert (=> d!397071 (= res!627033 (forall!3430 rules!2550 lambda!59991))))

(assert (=> d!397071 (= (forallContained!636 rules!2550 lambda!59991 (rule!4202 t1!34)) lt!462169)))

(declare-fun b!1389149 () Bool)

(assert (=> b!1389149 (= e!887315 (contains!2704 rules!2550 (rule!4202 t1!34)))))

(assert (= (and d!397071 res!627033) b!1389149))

(declare-fun b_lambda!43157 () Bool)

(assert (=> (not b_lambda!43157) (not d!397071)))

(declare-fun m!1563819 () Bool)

(assert (=> d!397071 m!1563819))

(declare-fun m!1563821 () Bool)

(assert (=> d!397071 m!1563821))

(assert (=> d!397071 m!1563817))

(assert (=> b!1389149 m!1563561))

(assert (=> b!1388891 d!397071))

(declare-fun d!397073 () Bool)

(assert (=> d!397073 (dynLambda!6467 lambda!59991 lt!462077)))

(declare-fun lt!462170 () Unit!20353)

(assert (=> d!397073 (= lt!462170 (choose!8533 rules!2550 lambda!59991 lt!462077))))

(declare-fun e!887316 () Bool)

(assert (=> d!397073 e!887316))

(declare-fun res!627034 () Bool)

(assert (=> d!397073 (=> (not res!627034) (not e!887316))))

(assert (=> d!397073 (= res!627034 (forall!3430 rules!2550 lambda!59991))))

(assert (=> d!397073 (= (forallContained!636 rules!2550 lambda!59991 lt!462077) lt!462170)))

(declare-fun b!1389150 () Bool)

(assert (=> b!1389150 (= e!887316 (contains!2704 rules!2550 lt!462077))))

(assert (= (and d!397073 res!627034) b!1389150))

(declare-fun b_lambda!43159 () Bool)

(assert (=> (not b_lambda!43159) (not d!397073)))

(declare-fun m!1563823 () Bool)

(assert (=> d!397073 m!1563823))

(declare-fun m!1563825 () Bool)

(assert (=> d!397073 m!1563825))

(assert (=> d!397073 m!1563817))

(assert (=> b!1389150 m!1563543))

(assert (=> b!1388891 d!397073))

(declare-fun d!397075 () Bool)

(assert (=> d!397075 (= (inv!18430 (tag!2703 (rule!4202 t1!34))) (= (mod (str.len (value!79200 (tag!2703 (rule!4202 t1!34)))) 2) 0))))

(assert (=> b!1388870 d!397075))

(declare-fun d!397077 () Bool)

(declare-fun res!627037 () Bool)

(declare-fun e!887327 () Bool)

(assert (=> d!397077 (=> (not res!627037) (not e!887327))))

(declare-fun semiInverseModEq!946 (Int Int) Bool)

(assert (=> d!397077 (= res!627037 (semiInverseModEq!946 (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (toValue!3728 (transformation!2441 (rule!4202 t1!34)))))))

(assert (=> d!397077 (= (inv!18434 (transformation!2441 (rule!4202 t1!34))) e!887327)))

(declare-fun b!1389169 () Bool)

(declare-fun equivClasses!905 (Int Int) Bool)

(assert (=> b!1389169 (= e!887327 (equivClasses!905 (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (toValue!3728 (transformation!2441 (rule!4202 t1!34)))))))

(assert (= (and d!397077 res!627037) b!1389169))

(declare-fun m!1563827 () Bool)

(assert (=> d!397077 m!1563827))

(declare-fun m!1563829 () Bool)

(assert (=> b!1389169 m!1563829))

(assert (=> b!1388870 d!397077))

(declare-fun d!397079 () Bool)

(declare-fun lt!462204 () Bool)

(declare-fun e!887359 () Bool)

(assert (=> d!397079 (= lt!462204 e!887359)))

(declare-fun res!627076 () Bool)

(assert (=> d!397079 (=> (not res!627076) (not e!887359))))

(assert (=> d!397079 (= res!627076 (= (list!5469 (_1!7735 (lex!961 thiss!19762 rules!2550 (print!900 thiss!19762 (singletonSeq!1088 t2!34))))) (list!5469 (singletonSeq!1088 t2!34))))))

(declare-fun e!887358 () Bool)

(assert (=> d!397079 (= lt!462204 e!887358)))

(declare-fun res!627075 () Bool)

(assert (=> d!397079 (=> (not res!627075) (not e!887358))))

(declare-fun lt!462203 () tuple2!13698)

(declare-fun size!11587 (BalanceConc!9226) Int)

(assert (=> d!397079 (= res!627075 (= (size!11587 (_1!7735 lt!462203)) 1))))

(assert (=> d!397079 (= lt!462203 (lex!961 thiss!19762 rules!2550 (print!900 thiss!19762 (singletonSeq!1088 t2!34))))))

(assert (=> d!397079 (not (isEmpty!8533 rules!2550))))

(assert (=> d!397079 (= (rulesProduceIndividualToken!1105 thiss!19762 rules!2550 t2!34) lt!462204)))

(declare-fun b!1389233 () Bool)

(declare-fun res!627077 () Bool)

(assert (=> b!1389233 (=> (not res!627077) (not e!887358))))

(declare-fun apply!3545 (BalanceConc!9226 Int) Token!4544)

(assert (=> b!1389233 (= res!627077 (= (apply!3545 (_1!7735 lt!462203) 0) t2!34))))

(declare-fun b!1389234 () Bool)

(assert (=> b!1389234 (= e!887358 (isEmpty!8532 (_2!7735 lt!462203)))))

(declare-fun b!1389235 () Bool)

(assert (=> b!1389235 (= e!887359 (isEmpty!8532 (_2!7735 (lex!961 thiss!19762 rules!2550 (print!900 thiss!19762 (singletonSeq!1088 t2!34))))))))

(assert (= (and d!397079 res!627075) b!1389233))

(assert (= (and b!1389233 res!627077) b!1389234))

(assert (= (and d!397079 res!627076) b!1389235))

(declare-fun m!1563909 () Bool)

(assert (=> d!397079 m!1563909))

(assert (=> d!397079 m!1563475))

(assert (=> d!397079 m!1563477))

(assert (=> d!397079 m!1563475))

(declare-fun m!1563911 () Bool)

(assert (=> d!397079 m!1563911))

(assert (=> d!397079 m!1563475))

(assert (=> d!397079 m!1563549))

(assert (=> d!397079 m!1563477))

(declare-fun m!1563913 () Bool)

(assert (=> d!397079 m!1563913))

(declare-fun m!1563915 () Bool)

(assert (=> d!397079 m!1563915))

(declare-fun m!1563917 () Bool)

(assert (=> b!1389233 m!1563917))

(declare-fun m!1563919 () Bool)

(assert (=> b!1389234 m!1563919))

(assert (=> b!1389235 m!1563475))

(assert (=> b!1389235 m!1563475))

(assert (=> b!1389235 m!1563477))

(assert (=> b!1389235 m!1563477))

(assert (=> b!1389235 m!1563913))

(declare-fun m!1563921 () Bool)

(assert (=> b!1389235 m!1563921))

(assert (=> b!1388871 d!397079))

(declare-fun d!397101 () Bool)

(declare-fun lt!462207 () Bool)

(assert (=> d!397101 (= lt!462207 (isEmpty!8537 (list!5470 (_2!7735 lt!462073))))))

(declare-fun isEmpty!8539 (Conc!4642) Bool)

(assert (=> d!397101 (= lt!462207 (isEmpty!8539 (c!228560 (_2!7735 lt!462073))))))

(assert (=> d!397101 (= (isEmpty!8532 (_2!7735 lt!462073)) lt!462207)))

(declare-fun bs!337277 () Bool)

(assert (= bs!337277 d!397101))

(declare-fun m!1563923 () Bool)

(assert (=> bs!337277 m!1563923))

(assert (=> bs!337277 m!1563923))

(declare-fun m!1563925 () Bool)

(assert (=> bs!337277 m!1563925))

(declare-fun m!1563927 () Bool)

(assert (=> bs!337277 m!1563927))

(assert (=> b!1388850 d!397101))

(declare-fun d!397103 () Bool)

(declare-fun lt!462210 () Int)

(assert (=> d!397103 (= lt!462210 (size!11585 (list!5470 lt!462092)))))

(declare-fun size!11588 (Conc!4642) Int)

(assert (=> d!397103 (= lt!462210 (size!11588 (c!228560 lt!462092)))))

(assert (=> d!397103 (= (size!11580 lt!462092) lt!462210)))

(declare-fun bs!337278 () Bool)

(assert (= bs!337278 d!397103))

(assert (=> bs!337278 m!1563531))

(assert (=> bs!337278 m!1563531))

(declare-fun m!1563929 () Bool)

(assert (=> bs!337278 m!1563929))

(declare-fun m!1563931 () Bool)

(assert (=> bs!337278 m!1563931))

(assert (=> b!1388872 d!397103))

(declare-fun d!397105 () Bool)

(declare-fun lt!462213 () BalanceConc!9224)

(assert (=> d!397105 (= (list!5470 lt!462213) (originalCharacters!3303 t2!34))))

(declare-fun dynLambda!6468 (Int TokenValue!2531) BalanceConc!9224)

(assert (=> d!397105 (= lt!462213 (dynLambda!6468 (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (value!79201 t2!34)))))

(assert (=> d!397105 (= (charsOf!1413 t2!34) lt!462213)))

(declare-fun b_lambda!43163 () Bool)

(assert (=> (not b_lambda!43163) (not d!397105)))

(declare-fun tb!72781 () Bool)

(declare-fun t!122383 () Bool)

(assert (=> (and b!1388849 (= (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (toChars!3587 (transformation!2441 (rule!4202 t2!34)))) t!122383) tb!72781))

(declare-fun b!1389240 () Bool)

(declare-fun e!887362 () Bool)

(declare-fun tp!396957 () Bool)

(declare-fun inv!18437 (Conc!4642) Bool)

(assert (=> b!1389240 (= e!887362 (and (inv!18437 (c!228560 (dynLambda!6468 (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (value!79201 t2!34)))) tp!396957))))

(declare-fun result!88428 () Bool)

(declare-fun inv!18438 (BalanceConc!9224) Bool)

(assert (=> tb!72781 (= result!88428 (and (inv!18438 (dynLambda!6468 (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (value!79201 t2!34))) e!887362))))

(assert (= tb!72781 b!1389240))

(declare-fun m!1563933 () Bool)

(assert (=> b!1389240 m!1563933))

(declare-fun m!1563935 () Bool)

(assert (=> tb!72781 m!1563935))

(assert (=> d!397105 t!122383))

(declare-fun b_and!93067 () Bool)

(assert (= b_and!93045 (and (=> t!122383 result!88428) b_and!93067)))

(declare-fun t!122385 () Bool)

(declare-fun tb!72783 () Bool)

(assert (=> (and b!1388869 (= (toChars!3587 (transformation!2441 (h!19497 rules!2550))) (toChars!3587 (transformation!2441 (rule!4202 t2!34)))) t!122385) tb!72783))

(declare-fun result!88432 () Bool)

(assert (= result!88432 result!88428))

(assert (=> d!397105 t!122385))

(declare-fun b_and!93069 () Bool)

(assert (= b_and!93049 (and (=> t!122385 result!88432) b_and!93069)))

(declare-fun t!122387 () Bool)

(declare-fun tb!72785 () Bool)

(assert (=> (and b!1388875 (= (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (toChars!3587 (transformation!2441 (rule!4202 t2!34)))) t!122387) tb!72785))

(declare-fun result!88434 () Bool)

(assert (= result!88434 result!88428))

(assert (=> d!397105 t!122387))

(declare-fun b_and!93071 () Bool)

(assert (= b_and!93053 (and (=> t!122387 result!88434) b_and!93071)))

(declare-fun m!1563937 () Bool)

(assert (=> d!397105 m!1563937))

(declare-fun m!1563939 () Bool)

(assert (=> d!397105 m!1563939))

(assert (=> b!1388872 d!397105))

(declare-fun d!397107 () Bool)

(declare-fun choose!8536 (Int) Bool)

(assert (=> d!397107 (= (Exists!905 lambda!59987) (choose!8536 lambda!59987))))

(declare-fun bs!337279 () Bool)

(assert (= bs!337279 d!397107))

(declare-fun m!1563941 () Bool)

(assert (=> bs!337279 m!1563941))

(assert (=> b!1388878 d!397107))

(declare-fun bs!337280 () Bool)

(declare-fun d!397109 () Bool)

(assert (= bs!337280 (and d!397109 b!1388878)))

(declare-fun lambda!60007 () Int)

(assert (=> bs!337280 (= lambda!60007 lambda!59987)))

(assert (=> d!397109 true))

(assert (=> d!397109 true))

(assert (=> d!397109 (Exists!905 lambda!60007)))

(declare-fun lt!462216 () Unit!20353)

(declare-fun choose!8537 (Regex!3755 List!14160) Unit!20353)

(assert (=> d!397109 (= lt!462216 (choose!8537 lt!462076 lt!462089))))

(assert (=> d!397109 (validRegex!1637 lt!462076)))

(assert (=> d!397109 (= (lemmaPrefixMatchThenExistsStringThatMatches!223 lt!462076 lt!462089) lt!462216)))

(declare-fun bs!337281 () Bool)

(assert (= bs!337281 d!397109))

(declare-fun m!1563943 () Bool)

(assert (=> bs!337281 m!1563943))

(declare-fun m!1563945 () Bool)

(assert (=> bs!337281 m!1563945))

(declare-fun m!1563947 () Bool)

(assert (=> bs!337281 m!1563947))

(assert (=> b!1388878 d!397109))

(declare-fun d!397111 () Bool)

(declare-fun res!627082 () Bool)

(declare-fun e!887367 () Bool)

(assert (=> d!397111 (=> (not res!627082) (not e!887367))))

(declare-fun rulesValid!914 (LexerInterface!2136 List!14162) Bool)

(assert (=> d!397111 (= res!627082 (rulesValid!914 thiss!19762 rules!2550))))

(assert (=> d!397111 (= (rulesInvariant!2006 thiss!19762 rules!2550) e!887367)))

(declare-fun b!1389245 () Bool)

(declare-datatypes ((List!14165 0))(
  ( (Nil!14099) (Cons!14099 (h!19500 String!16891) (t!122404 List!14165)) )
))
(declare-fun noDuplicateTag!914 (LexerInterface!2136 List!14162 List!14165) Bool)

(assert (=> b!1389245 (= e!887367 (noDuplicateTag!914 thiss!19762 rules!2550 Nil!14099))))

(assert (= (and d!397111 res!627082) b!1389245))

(declare-fun m!1563949 () Bool)

(assert (=> d!397111 m!1563949))

(declare-fun m!1563951 () Bool)

(assert (=> b!1389245 m!1563951))

(assert (=> b!1388857 d!397111))

(declare-fun b!1389264 () Bool)

(declare-fun e!887385 () Bool)

(declare-fun e!887383 () Bool)

(assert (=> b!1389264 (= e!887385 e!887383)))

(declare-fun res!627095 () Bool)

(assert (=> b!1389264 (= res!627095 (not (nullable!1217 (reg!4084 (regex!2441 (rule!4202 t2!34))))))))

(assert (=> b!1389264 (=> (not res!627095) (not e!887383))))

(declare-fun b!1389265 () Bool)

(declare-fun e!887388 () Bool)

(declare-fun e!887382 () Bool)

(assert (=> b!1389265 (= e!887388 e!887382)))

(declare-fun res!627093 () Bool)

(assert (=> b!1389265 (=> (not res!627093) (not e!887382))))

(declare-fun call!92922 () Bool)

(assert (=> b!1389265 (= res!627093 call!92922)))

(declare-fun bm!92916 () Bool)

(declare-fun call!92921 () Bool)

(declare-fun c!228634 () Bool)

(assert (=> bm!92916 (= call!92921 (validRegex!1637 (ite c!228634 (regTwo!8023 (regex!2441 (rule!4202 t2!34))) (regTwo!8022 (regex!2441 (rule!4202 t2!34))))))))

(declare-fun b!1389266 () Bool)

(declare-fun call!92923 () Bool)

(assert (=> b!1389266 (= e!887383 call!92923)))

(declare-fun d!397113 () Bool)

(declare-fun res!627094 () Bool)

(declare-fun e!887386 () Bool)

(assert (=> d!397113 (=> res!627094 e!887386)))

(assert (=> d!397113 (= res!627094 ((_ is ElementMatch!3755) (regex!2441 (rule!4202 t2!34))))))

(assert (=> d!397113 (= (validRegex!1637 (regex!2441 (rule!4202 t2!34))) e!887386)))

(declare-fun b!1389267 () Bool)

(assert (=> b!1389267 (= e!887386 e!887385)))

(declare-fun c!228635 () Bool)

(assert (=> b!1389267 (= c!228635 ((_ is Star!3755) (regex!2441 (rule!4202 t2!34))))))

(declare-fun b!1389268 () Bool)

(declare-fun e!887384 () Bool)

(assert (=> b!1389268 (= e!887385 e!887384)))

(assert (=> b!1389268 (= c!228634 ((_ is Union!3755) (regex!2441 (rule!4202 t2!34))))))

(declare-fun bm!92917 () Bool)

(assert (=> bm!92917 (= call!92922 call!92923)))

(declare-fun b!1389269 () Bool)

(assert (=> b!1389269 (= e!887382 call!92921)))

(declare-fun b!1389270 () Bool)

(declare-fun e!887387 () Bool)

(assert (=> b!1389270 (= e!887387 call!92921)))

(declare-fun b!1389271 () Bool)

(declare-fun res!627097 () Bool)

(assert (=> b!1389271 (=> (not res!627097) (not e!887387))))

(assert (=> b!1389271 (= res!627097 call!92922)))

(assert (=> b!1389271 (= e!887384 e!887387)))

(declare-fun b!1389272 () Bool)

(declare-fun res!627096 () Bool)

(assert (=> b!1389272 (=> res!627096 e!887388)))

(assert (=> b!1389272 (= res!627096 (not ((_ is Concat!6287) (regex!2441 (rule!4202 t2!34)))))))

(assert (=> b!1389272 (= e!887384 e!887388)))

(declare-fun bm!92918 () Bool)

(assert (=> bm!92918 (= call!92923 (validRegex!1637 (ite c!228635 (reg!4084 (regex!2441 (rule!4202 t2!34))) (ite c!228634 (regOne!8023 (regex!2441 (rule!4202 t2!34))) (regOne!8022 (regex!2441 (rule!4202 t2!34)))))))))

(assert (= (and d!397113 (not res!627094)) b!1389267))

(assert (= (and b!1389267 c!228635) b!1389264))

(assert (= (and b!1389267 (not c!228635)) b!1389268))

(assert (= (and b!1389264 res!627095) b!1389266))

(assert (= (and b!1389268 c!228634) b!1389271))

(assert (= (and b!1389268 (not c!228634)) b!1389272))

(assert (= (and b!1389271 res!627097) b!1389270))

(assert (= (and b!1389272 (not res!627096)) b!1389265))

(assert (= (and b!1389265 res!627093) b!1389269))

(assert (= (or b!1389271 b!1389265) bm!92917))

(assert (= (or b!1389270 b!1389269) bm!92916))

(assert (= (or b!1389266 bm!92917) bm!92918))

(declare-fun m!1563953 () Bool)

(assert (=> b!1389264 m!1563953))

(declare-fun m!1563955 () Bool)

(assert (=> bm!92916 m!1563955))

(declare-fun m!1563957 () Bool)

(assert (=> bm!92918 m!1563957))

(assert (=> b!1388879 d!397113))

(declare-fun d!397115 () Bool)

(declare-fun c!228638 () Bool)

(assert (=> d!397115 (= c!228638 (isEmpty!8537 lt!462089))))

(declare-fun e!887391 () Bool)

(assert (=> d!397115 (= (prefixMatch!264 lt!462076 lt!462089) e!887391)))

(declare-fun b!1389277 () Bool)

(declare-fun lostCause!350 (Regex!3755) Bool)

(assert (=> b!1389277 (= e!887391 (not (lostCause!350 lt!462076)))))

(declare-fun b!1389278 () Bool)

(assert (=> b!1389278 (= e!887391 (prefixMatch!264 (derivativeStep!975 lt!462076 (head!2537 lt!462089)) (tail!2018 lt!462089)))))

(assert (= (and d!397115 c!228638) b!1389277))

(assert (= (and d!397115 (not c!228638)) b!1389278))

(declare-fun m!1563959 () Bool)

(assert (=> d!397115 m!1563959))

(declare-fun m!1563961 () Bool)

(assert (=> b!1389277 m!1563961))

(declare-fun m!1563963 () Bool)

(assert (=> b!1389278 m!1563963))

(assert (=> b!1389278 m!1563963))

(declare-fun m!1563965 () Bool)

(assert (=> b!1389278 m!1563965))

(declare-fun m!1563967 () Bool)

(assert (=> b!1389278 m!1563967))

(assert (=> b!1389278 m!1563965))

(assert (=> b!1389278 m!1563967))

(declare-fun m!1563969 () Bool)

(assert (=> b!1389278 m!1563969))

(assert (=> b!1388858 d!397115))

(declare-fun d!397117 () Bool)

(declare-fun lt!462219 () C!7800)

(declare-fun apply!3546 (List!14160 Int) C!7800)

(assert (=> d!397117 (= lt!462219 (apply!3546 (list!5470 lt!462092) 0))))

(declare-fun apply!3547 (Conc!4642 Int) C!7800)

(assert (=> d!397117 (= lt!462219 (apply!3547 (c!228560 lt!462092) 0))))

(declare-fun e!887394 () Bool)

(assert (=> d!397117 e!887394))

(declare-fun res!627100 () Bool)

(assert (=> d!397117 (=> (not res!627100) (not e!887394))))

(assert (=> d!397117 (= res!627100 (<= 0 0))))

(assert (=> d!397117 (= (apply!3539 lt!462092 0) lt!462219)))

(declare-fun b!1389281 () Bool)

(assert (=> b!1389281 (= e!887394 (< 0 (size!11580 lt!462092)))))

(assert (= (and d!397117 res!627100) b!1389281))

(assert (=> d!397117 m!1563531))

(assert (=> d!397117 m!1563531))

(declare-fun m!1563971 () Bool)

(assert (=> d!397117 m!1563971))

(declare-fun m!1563973 () Bool)

(assert (=> d!397117 m!1563973))

(assert (=> b!1389281 m!1563449))

(assert (=> b!1388858 d!397117))

(declare-fun d!397119 () Bool)

(declare-fun lt!462220 () BalanceConc!9224)

(assert (=> d!397119 (= (list!5470 lt!462220) (originalCharacters!3303 t1!34))))

(assert (=> d!397119 (= lt!462220 (dynLambda!6468 (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (value!79201 t1!34)))))

(assert (=> d!397119 (= (charsOf!1413 t1!34) lt!462220)))

(declare-fun b_lambda!43165 () Bool)

(assert (=> (not b_lambda!43165) (not d!397119)))

(declare-fun t!122389 () Bool)

(declare-fun tb!72787 () Bool)

(assert (=> (and b!1388849 (= (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (toChars!3587 (transformation!2441 (rule!4202 t1!34)))) t!122389) tb!72787))

(declare-fun b!1389282 () Bool)

(declare-fun e!887395 () Bool)

(declare-fun tp!396958 () Bool)

(assert (=> b!1389282 (= e!887395 (and (inv!18437 (c!228560 (dynLambda!6468 (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (value!79201 t1!34)))) tp!396958))))

(declare-fun result!88436 () Bool)

(assert (=> tb!72787 (= result!88436 (and (inv!18438 (dynLambda!6468 (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (value!79201 t1!34))) e!887395))))

(assert (= tb!72787 b!1389282))

(declare-fun m!1563975 () Bool)

(assert (=> b!1389282 m!1563975))

(declare-fun m!1563977 () Bool)

(assert (=> tb!72787 m!1563977))

(assert (=> d!397119 t!122389))

(declare-fun b_and!93073 () Bool)

(assert (= b_and!93067 (and (=> t!122389 result!88436) b_and!93073)))

(declare-fun t!122391 () Bool)

(declare-fun tb!72789 () Bool)

(assert (=> (and b!1388869 (= (toChars!3587 (transformation!2441 (h!19497 rules!2550))) (toChars!3587 (transformation!2441 (rule!4202 t1!34)))) t!122391) tb!72789))

(declare-fun result!88438 () Bool)

(assert (= result!88438 result!88436))

(assert (=> d!397119 t!122391))

(declare-fun b_and!93075 () Bool)

(assert (= b_and!93069 (and (=> t!122391 result!88438) b_and!93075)))

(declare-fun t!122393 () Bool)

(declare-fun tb!72791 () Bool)

(assert (=> (and b!1388875 (= (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (toChars!3587 (transformation!2441 (rule!4202 t1!34)))) t!122393) tb!72791))

(declare-fun result!88440 () Bool)

(assert (= result!88440 result!88436))

(assert (=> d!397119 t!122393))

(declare-fun b_and!93077 () Bool)

(assert (= b_and!93071 (and (=> t!122393 result!88440) b_and!93077)))

(declare-fun m!1563979 () Bool)

(assert (=> d!397119 m!1563979))

(declare-fun m!1563981 () Bool)

(assert (=> d!397119 m!1563981))

(assert (=> b!1388858 d!397119))

(declare-fun bs!337282 () Bool)

(declare-fun d!397121 () Bool)

(assert (= bs!337282 (and d!397121 b!1388881)))

(declare-fun lambda!60010 () Int)

(assert (=> bs!337282 (= lambda!60010 lambda!59988)))

(declare-fun lt!462223 () Unit!20353)

(declare-fun lemma!144 (List!14162 LexerInterface!2136 List!14162) Unit!20353)

(assert (=> d!397121 (= lt!462223 (lemma!144 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!152 (List!14164) Regex!3755)

(assert (=> d!397121 (= (rulesRegex!324 thiss!19762 rules!2550) (generalisedUnion!152 (map!3122 rules!2550 lambda!60010)))))

(declare-fun bs!337283 () Bool)

(assert (= bs!337283 d!397121))

(declare-fun m!1563983 () Bool)

(assert (=> bs!337283 m!1563983))

(declare-fun m!1563985 () Bool)

(assert (=> bs!337283 m!1563985))

(assert (=> bs!337283 m!1563985))

(declare-fun m!1563987 () Bool)

(assert (=> bs!337283 m!1563987))

(assert (=> b!1388858 d!397121))

(declare-fun d!397123 () Bool)

(assert (=> d!397123 (= (list!5470 lt!462078) (list!5472 (c!228560 lt!462078)))))

(declare-fun bs!337284 () Bool)

(assert (= bs!337284 d!397123))

(declare-fun m!1563989 () Bool)

(assert (=> bs!337284 m!1563989))

(assert (=> b!1388858 d!397123))

(declare-fun b!1389301 () Bool)

(declare-fun e!887406 () List!14160)

(assert (=> b!1389301 (= e!887406 (Cons!14094 lt!462072 Nil!14094))))

(declare-fun b!1389302 () Bool)

(assert (=> b!1389302 (= e!887406 (Cons!14094 (h!19495 lt!462081) (++!3660 (t!122363 lt!462081) (Cons!14094 lt!462072 Nil!14094))))))

(declare-fun lt!462228 () List!14160)

(declare-fun e!887407 () Bool)

(declare-fun b!1389304 () Bool)

(assert (=> b!1389304 (= e!887407 (or (not (= (Cons!14094 lt!462072 Nil!14094) Nil!14094)) (= lt!462228 lt!462081)))))

(declare-fun b!1389303 () Bool)

(declare-fun res!627112 () Bool)

(assert (=> b!1389303 (=> (not res!627112) (not e!887407))))

(assert (=> b!1389303 (= res!627112 (= (size!11585 lt!462228) (+ (size!11585 lt!462081) (size!11585 (Cons!14094 lt!462072 Nil!14094)))))))

(declare-fun d!397125 () Bool)

(assert (=> d!397125 e!887407))

(declare-fun res!627111 () Bool)

(assert (=> d!397125 (=> (not res!627111) (not e!887407))))

(assert (=> d!397125 (= res!627111 (= (content!2072 lt!462228) ((_ map or) (content!2072 lt!462081) (content!2072 (Cons!14094 lt!462072 Nil!14094)))))))

(assert (=> d!397125 (= lt!462228 e!887406)))

(declare-fun c!228643 () Bool)

(assert (=> d!397125 (= c!228643 ((_ is Nil!14094) lt!462081))))

(assert (=> d!397125 (= (++!3660 lt!462081 (Cons!14094 lt!462072 Nil!14094)) lt!462228)))

(assert (= (and d!397125 c!228643) b!1389301))

(assert (= (and d!397125 (not c!228643)) b!1389302))

(assert (= (and d!397125 res!627111) b!1389303))

(assert (= (and b!1389303 res!627112) b!1389304))

(declare-fun m!1563991 () Bool)

(assert (=> b!1389302 m!1563991))

(declare-fun m!1563993 () Bool)

(assert (=> b!1389303 m!1563993))

(declare-fun m!1563995 () Bool)

(assert (=> b!1389303 m!1563995))

(declare-fun m!1563997 () Bool)

(assert (=> b!1389303 m!1563997))

(declare-fun m!1563999 () Bool)

(assert (=> d!397125 m!1563999))

(declare-fun m!1564001 () Bool)

(assert (=> d!397125 m!1564001))

(declare-fun m!1564003 () Bool)

(assert (=> d!397125 m!1564003))

(assert (=> b!1388858 d!397125))

(declare-fun d!397127 () Bool)

(declare-fun lt!462230 () Bool)

(assert (=> d!397127 (= lt!462230 (select (content!2072 (usedCharacters!252 (regex!2441 (rule!4202 t2!34)))) lt!462072))))

(declare-fun e!887412 () Bool)

(assert (=> d!397127 (= lt!462230 e!887412)))

(declare-fun res!627117 () Bool)

(assert (=> d!397127 (=> (not res!627117) (not e!887412))))

(assert (=> d!397127 (= res!627117 ((_ is Cons!14094) (usedCharacters!252 (regex!2441 (rule!4202 t2!34)))))))

(assert (=> d!397127 (= (contains!2703 (usedCharacters!252 (regex!2441 (rule!4202 t2!34))) lt!462072) lt!462230)))

(declare-fun b!1389310 () Bool)

(declare-fun e!887411 () Bool)

(assert (=> b!1389310 (= e!887412 e!887411)))

(declare-fun res!627116 () Bool)

(assert (=> b!1389310 (=> res!627116 e!887411)))

(assert (=> b!1389310 (= res!627116 (= (h!19495 (usedCharacters!252 (regex!2441 (rule!4202 t2!34)))) lt!462072))))

(declare-fun b!1389311 () Bool)

(assert (=> b!1389311 (= e!887411 (contains!2703 (t!122363 (usedCharacters!252 (regex!2441 (rule!4202 t2!34)))) lt!462072))))

(assert (= (and d!397127 res!627117) b!1389310))

(assert (= (and b!1389310 (not res!627116)) b!1389311))

(assert (=> d!397127 m!1563525))

(declare-fun m!1564005 () Bool)

(assert (=> d!397127 m!1564005))

(declare-fun m!1564007 () Bool)

(assert (=> d!397127 m!1564007))

(declare-fun m!1564009 () Bool)

(assert (=> b!1389311 m!1564009))

(assert (=> b!1388880 d!397127))

(declare-fun bm!92927 () Bool)

(declare-fun call!92934 () List!14160)

(declare-fun c!228655 () Bool)

(assert (=> bm!92927 (= call!92934 (usedCharacters!252 (ite c!228655 (regOne!8023 (regex!2441 (rule!4202 t2!34))) (regTwo!8022 (regex!2441 (rule!4202 t2!34))))))))

(declare-fun b!1389328 () Bool)

(declare-fun e!887424 () List!14160)

(declare-fun e!887422 () List!14160)

(assert (=> b!1389328 (= e!887424 e!887422)))

(declare-fun c!228654 () Bool)

(assert (=> b!1389328 (= c!228654 ((_ is ElementMatch!3755) (regex!2441 (rule!4202 t2!34))))))

(declare-fun b!1389329 () Bool)

(declare-fun e!887421 () List!14160)

(declare-fun call!92935 () List!14160)

(assert (=> b!1389329 (= e!887421 call!92935)))

(declare-fun b!1389330 () Bool)

(declare-fun e!887423 () List!14160)

(declare-fun call!92933 () List!14160)

(assert (=> b!1389330 (= e!887423 call!92933)))

(declare-fun b!1389331 () Bool)

(assert (=> b!1389331 (= e!887422 (Cons!14094 (c!228561 (regex!2441 (rule!4202 t2!34))) Nil!14094))))

(declare-fun b!1389332 () Bool)

(declare-fun c!228656 () Bool)

(assert (=> b!1389332 (= c!228656 ((_ is Star!3755) (regex!2441 (rule!4202 t2!34))))))

(assert (=> b!1389332 (= e!887422 e!887423)))

(declare-fun b!1389333 () Bool)

(assert (=> b!1389333 (= e!887423 e!887421)))

(assert (=> b!1389333 (= c!228655 ((_ is Union!3755) (regex!2441 (rule!4202 t2!34))))))

(declare-fun bm!92928 () Bool)

(assert (=> bm!92928 (= call!92933 (usedCharacters!252 (ite c!228656 (reg!4084 (regex!2441 (rule!4202 t2!34))) (ite c!228655 (regTwo!8023 (regex!2441 (rule!4202 t2!34))) (regOne!8022 (regex!2441 (rule!4202 t2!34)))))))))

(declare-fun b!1389335 () Bool)

(assert (=> b!1389335 (= e!887421 call!92935)))

(declare-fun b!1389334 () Bool)

(assert (=> b!1389334 (= e!887424 Nil!14094)))

(declare-fun d!397129 () Bool)

(declare-fun c!228653 () Bool)

(assert (=> d!397129 (= c!228653 (or ((_ is EmptyExpr!3755) (regex!2441 (rule!4202 t2!34))) ((_ is EmptyLang!3755) (regex!2441 (rule!4202 t2!34)))))))

(assert (=> d!397129 (= (usedCharacters!252 (regex!2441 (rule!4202 t2!34))) e!887424)))

(declare-fun bm!92929 () Bool)

(declare-fun call!92932 () List!14160)

(assert (=> bm!92929 (= call!92935 (++!3660 (ite c!228655 call!92934 call!92932) (ite c!228655 call!92932 call!92934)))))

(declare-fun bm!92930 () Bool)

(assert (=> bm!92930 (= call!92932 call!92933)))

(assert (= (and d!397129 c!228653) b!1389334))

(assert (= (and d!397129 (not c!228653)) b!1389328))

(assert (= (and b!1389328 c!228654) b!1389331))

(assert (= (and b!1389328 (not c!228654)) b!1389332))

(assert (= (and b!1389332 c!228656) b!1389330))

(assert (= (and b!1389332 (not c!228656)) b!1389333))

(assert (= (and b!1389333 c!228655) b!1389329))

(assert (= (and b!1389333 (not c!228655)) b!1389335))

(assert (= (or b!1389329 b!1389335) bm!92927))

(assert (= (or b!1389329 b!1389335) bm!92930))

(assert (= (or b!1389329 b!1389335) bm!92929))

(assert (= (or b!1389330 bm!92930) bm!92928))

(declare-fun m!1564025 () Bool)

(assert (=> bm!92927 m!1564025))

(declare-fun m!1564027 () Bool)

(assert (=> bm!92928 m!1564027))

(declare-fun m!1564029 () Bool)

(assert (=> bm!92929 m!1564029))

(assert (=> b!1388880 d!397129))

(declare-fun d!397133 () Bool)

(declare-fun res!627122 () Bool)

(declare-fun e!887427 () Bool)

(assert (=> d!397133 (=> (not res!627122) (not e!887427))))

(assert (=> d!397133 (= res!627122 (not (isEmpty!8537 (originalCharacters!3303 t1!34))))))

(assert (=> d!397133 (= (inv!18433 t1!34) e!887427)))

(declare-fun b!1389340 () Bool)

(declare-fun res!627123 () Bool)

(assert (=> b!1389340 (=> (not res!627123) (not e!887427))))

(assert (=> b!1389340 (= res!627123 (= (originalCharacters!3303 t1!34) (list!5470 (dynLambda!6468 (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (value!79201 t1!34)))))))

(declare-fun b!1389341 () Bool)

(assert (=> b!1389341 (= e!887427 (= (size!11579 t1!34) (size!11585 (originalCharacters!3303 t1!34))))))

(assert (= (and d!397133 res!627122) b!1389340))

(assert (= (and b!1389340 res!627123) b!1389341))

(declare-fun b_lambda!43167 () Bool)

(assert (=> (not b_lambda!43167) (not b!1389340)))

(assert (=> b!1389340 t!122389))

(declare-fun b_and!93079 () Bool)

(assert (= b_and!93073 (and (=> t!122389 result!88436) b_and!93079)))

(assert (=> b!1389340 t!122391))

(declare-fun b_and!93081 () Bool)

(assert (= b_and!93075 (and (=> t!122391 result!88438) b_and!93081)))

(assert (=> b!1389340 t!122393))

(declare-fun b_and!93083 () Bool)

(assert (= b_and!93077 (and (=> t!122393 result!88440) b_and!93083)))

(declare-fun m!1564031 () Bool)

(assert (=> d!397133 m!1564031))

(assert (=> b!1389340 m!1563981))

(assert (=> b!1389340 m!1563981))

(declare-fun m!1564033 () Bool)

(assert (=> b!1389340 m!1564033))

(declare-fun m!1564035 () Bool)

(assert (=> b!1389341 m!1564035))

(assert (=> start!126170 d!397133))

(declare-fun d!397135 () Bool)

(declare-fun res!627124 () Bool)

(declare-fun e!887428 () Bool)

(assert (=> d!397135 (=> (not res!627124) (not e!887428))))

(assert (=> d!397135 (= res!627124 (not (isEmpty!8537 (originalCharacters!3303 t2!34))))))

(assert (=> d!397135 (= (inv!18433 t2!34) e!887428)))

(declare-fun b!1389342 () Bool)

(declare-fun res!627125 () Bool)

(assert (=> b!1389342 (=> (not res!627125) (not e!887428))))

(assert (=> b!1389342 (= res!627125 (= (originalCharacters!3303 t2!34) (list!5470 (dynLambda!6468 (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (value!79201 t2!34)))))))

(declare-fun b!1389343 () Bool)

(assert (=> b!1389343 (= e!887428 (= (size!11579 t2!34) (size!11585 (originalCharacters!3303 t2!34))))))

(assert (= (and d!397135 res!627124) b!1389342))

(assert (= (and b!1389342 res!627125) b!1389343))

(declare-fun b_lambda!43169 () Bool)

(assert (=> (not b_lambda!43169) (not b!1389342)))

(assert (=> b!1389342 t!122383))

(declare-fun b_and!93085 () Bool)

(assert (= b_and!93079 (and (=> t!122383 result!88428) b_and!93085)))

(assert (=> b!1389342 t!122385))

(declare-fun b_and!93087 () Bool)

(assert (= b_and!93081 (and (=> t!122385 result!88432) b_and!93087)))

(assert (=> b!1389342 t!122387))

(declare-fun b_and!93089 () Bool)

(assert (= b_and!93083 (and (=> t!122387 result!88434) b_and!93089)))

(declare-fun m!1564039 () Bool)

(assert (=> d!397135 m!1564039))

(assert (=> b!1389342 m!1563939))

(assert (=> b!1389342 m!1563939))

(declare-fun m!1564043 () Bool)

(assert (=> b!1389342 m!1564043))

(declare-fun m!1564047 () Bool)

(assert (=> b!1389343 m!1564047))

(assert (=> start!126170 d!397135))

(declare-fun b!1389344 () Bool)

(declare-fun e!887429 () Bool)

(declare-fun e!887430 () Bool)

(assert (=> b!1389344 (= e!887429 e!887430)))

(declare-fun res!627129 () Bool)

(assert (=> b!1389344 (=> (not res!627129) (not e!887430))))

(declare-fun lt!462236 () Option!2702)

(assert (=> b!1389344 (= res!627129 (isDefined!2230 lt!462236))))

(declare-fun b!1389345 () Bool)

(declare-fun res!627130 () Bool)

(assert (=> b!1389345 (=> (not res!627130) (not e!887430))))

(assert (=> b!1389345 (= res!627130 (matchR!1746 (regex!2441 (rule!4202 (_1!7736 (get!4376 lt!462236)))) (list!5470 (charsOf!1413 (_1!7736 (get!4376 lt!462236))))))))

(declare-fun bm!92931 () Bool)

(declare-fun call!92936 () Option!2702)

(assert (=> bm!92931 (= call!92936 (maxPrefixOneRule!628 thiss!19762 (h!19497 rules!2550) lt!462081))))

(declare-fun b!1389346 () Bool)

(declare-fun e!887431 () Option!2702)

(declare-fun lt!462235 () Option!2702)

(declare-fun lt!462237 () Option!2702)

(assert (=> b!1389346 (= e!887431 (ite (and ((_ is None!2701) lt!462235) ((_ is None!2701) lt!462237)) None!2701 (ite ((_ is None!2701) lt!462237) lt!462235 (ite ((_ is None!2701) lt!462235) lt!462237 (ite (>= (size!11579 (_1!7736 (v!21576 lt!462235))) (size!11579 (_1!7736 (v!21576 lt!462237)))) lt!462235 lt!462237)))))))

(assert (=> b!1389346 (= lt!462235 call!92936)))

(assert (=> b!1389346 (= lt!462237 (maxPrefix!1110 thiss!19762 (t!122365 rules!2550) lt!462081))))

(declare-fun b!1389347 () Bool)

(declare-fun res!627126 () Bool)

(assert (=> b!1389347 (=> (not res!627126) (not e!887430))))

(assert (=> b!1389347 (= res!627126 (= (++!3660 (list!5470 (charsOf!1413 (_1!7736 (get!4376 lt!462236)))) (_2!7736 (get!4376 lt!462236))) lt!462081))))

(declare-fun b!1389348 () Bool)

(assert (=> b!1389348 (= e!887431 call!92936)))

(declare-fun b!1389349 () Bool)

(assert (=> b!1389349 (= e!887430 (contains!2704 rules!2550 (rule!4202 (_1!7736 (get!4376 lt!462236)))))))

(declare-fun b!1389350 () Bool)

(declare-fun res!627128 () Bool)

(assert (=> b!1389350 (=> (not res!627128) (not e!887430))))

(assert (=> b!1389350 (= res!627128 (= (list!5470 (charsOf!1413 (_1!7736 (get!4376 lt!462236)))) (originalCharacters!3303 (_1!7736 (get!4376 lt!462236)))))))

(declare-fun b!1389351 () Bool)

(declare-fun res!627127 () Bool)

(assert (=> b!1389351 (=> (not res!627127) (not e!887430))))

(assert (=> b!1389351 (= res!627127 (< (size!11585 (_2!7736 (get!4376 lt!462236))) (size!11585 lt!462081)))))

(declare-fun d!397139 () Bool)

(assert (=> d!397139 e!887429))

(declare-fun res!627132 () Bool)

(assert (=> d!397139 (=> res!627132 e!887429)))

(assert (=> d!397139 (= res!627132 (isEmpty!8536 lt!462236))))

(assert (=> d!397139 (= lt!462236 e!887431)))

(declare-fun c!228657 () Bool)

(assert (=> d!397139 (= c!228657 (and ((_ is Cons!14096) rules!2550) ((_ is Nil!14096) (t!122365 rules!2550))))))

(declare-fun lt!462238 () Unit!20353)

(declare-fun lt!462234 () Unit!20353)

(assert (=> d!397139 (= lt!462238 lt!462234)))

(assert (=> d!397139 (isPrefix!1143 lt!462081 lt!462081)))

(assert (=> d!397139 (= lt!462234 (lemmaIsPrefixRefl!802 lt!462081 lt!462081))))

(assert (=> d!397139 (rulesValidInductive!785 thiss!19762 rules!2550)))

(assert (=> d!397139 (= (maxPrefix!1110 thiss!19762 rules!2550 lt!462081) lt!462236)))

(declare-fun b!1389352 () Bool)

(declare-fun res!627131 () Bool)

(assert (=> b!1389352 (=> (not res!627131) (not e!887430))))

(assert (=> b!1389352 (= res!627131 (= (value!79201 (_1!7736 (get!4376 lt!462236))) (apply!3543 (transformation!2441 (rule!4202 (_1!7736 (get!4376 lt!462236)))) (seqFromList!1646 (originalCharacters!3303 (_1!7736 (get!4376 lt!462236)))))))))

(assert (= (and d!397139 c!228657) b!1389348))

(assert (= (and d!397139 (not c!228657)) b!1389346))

(assert (= (or b!1389348 b!1389346) bm!92931))

(assert (= (and d!397139 (not res!627132)) b!1389344))

(assert (= (and b!1389344 res!627129) b!1389350))

(assert (= (and b!1389350 res!627128) b!1389351))

(assert (= (and b!1389351 res!627127) b!1389347))

(assert (= (and b!1389347 res!627126) b!1389352))

(assert (= (and b!1389352 res!627131) b!1389345))

(assert (= (and b!1389345 res!627130) b!1389349))

(declare-fun m!1564049 () Bool)

(assert (=> b!1389351 m!1564049))

(declare-fun m!1564051 () Bool)

(assert (=> b!1389351 m!1564051))

(assert (=> b!1389351 m!1563995))

(declare-fun m!1564053 () Bool)

(assert (=> bm!92931 m!1564053))

(declare-fun m!1564055 () Bool)

(assert (=> b!1389346 m!1564055))

(assert (=> b!1389347 m!1564049))

(declare-fun m!1564057 () Bool)

(assert (=> b!1389347 m!1564057))

(assert (=> b!1389347 m!1564057))

(declare-fun m!1564059 () Bool)

(assert (=> b!1389347 m!1564059))

(assert (=> b!1389347 m!1564059))

(declare-fun m!1564061 () Bool)

(assert (=> b!1389347 m!1564061))

(assert (=> b!1389352 m!1564049))

(declare-fun m!1564063 () Bool)

(assert (=> b!1389352 m!1564063))

(assert (=> b!1389352 m!1564063))

(declare-fun m!1564065 () Bool)

(assert (=> b!1389352 m!1564065))

(assert (=> b!1389345 m!1564049))

(assert (=> b!1389345 m!1564057))

(assert (=> b!1389345 m!1564057))

(assert (=> b!1389345 m!1564059))

(assert (=> b!1389345 m!1564059))

(declare-fun m!1564067 () Bool)

(assert (=> b!1389345 m!1564067))

(declare-fun m!1564069 () Bool)

(assert (=> b!1389344 m!1564069))

(assert (=> b!1389349 m!1564049))

(declare-fun m!1564071 () Bool)

(assert (=> b!1389349 m!1564071))

(declare-fun m!1564073 () Bool)

(assert (=> d!397139 m!1564073))

(declare-fun m!1564075 () Bool)

(assert (=> d!397139 m!1564075))

(declare-fun m!1564077 () Bool)

(assert (=> d!397139 m!1564077))

(assert (=> d!397139 m!1563715))

(assert (=> b!1389350 m!1564049))

(assert (=> b!1389350 m!1564057))

(assert (=> b!1389350 m!1564057))

(assert (=> b!1389350 m!1564059))

(assert (=> b!1388854 d!397139))

(declare-fun d!397141 () Bool)

(assert (=> d!397141 (not (matchR!1746 (regex!2441 (rule!4202 t1!34)) lt!462081))))

(declare-fun lt!462248 () Unit!20353)

(declare-fun choose!8539 (Regex!3755 List!14160 C!7800) Unit!20353)

(assert (=> d!397141 (= lt!462248 (choose!8539 (regex!2441 (rule!4202 t1!34)) lt!462081 (head!2537 lt!462081)))))

(assert (=> d!397141 (validRegex!1637 (regex!2441 (rule!4202 t1!34)))))

(assert (=> d!397141 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!186 (regex!2441 (rule!4202 t1!34)) lt!462081 (head!2537 lt!462081)) lt!462248)))

(declare-fun bs!337286 () Bool)

(assert (= bs!337286 d!397141))

(assert (=> bs!337286 m!1563483))

(assert (=> bs!337286 m!1563497))

(declare-fun m!1564101 () Bool)

(assert (=> bs!337286 m!1564101))

(assert (=> bs!337286 m!1563797))

(assert (=> b!1388876 d!397141))

(declare-fun d!397149 () Bool)

(assert (=> d!397149 (= (head!2537 lt!462081) (h!19495 lt!462081))))

(assert (=> b!1388876 d!397149))

(declare-fun d!397151 () Bool)

(declare-fun lt!462249 () Bool)

(assert (=> d!397151 (= lt!462249 (select (content!2072 lt!462088) lt!462095))))

(declare-fun e!887447 () Bool)

(assert (=> d!397151 (= lt!462249 e!887447)))

(declare-fun res!627150 () Bool)

(assert (=> d!397151 (=> (not res!627150) (not e!887447))))

(assert (=> d!397151 (= res!627150 ((_ is Cons!14094) lt!462088))))

(assert (=> d!397151 (= (contains!2703 lt!462088 lt!462095) lt!462249)))

(declare-fun b!1389375 () Bool)

(declare-fun e!887446 () Bool)

(assert (=> b!1389375 (= e!887447 e!887446)))

(declare-fun res!627149 () Bool)

(assert (=> b!1389375 (=> res!627149 e!887446)))

(assert (=> b!1389375 (= res!627149 (= (h!19495 lt!462088) lt!462095))))

(declare-fun b!1389376 () Bool)

(assert (=> b!1389376 (= e!887446 (contains!2703 (t!122363 lt!462088) lt!462095))))

(assert (= (and d!397151 res!627150) b!1389375))

(assert (= (and b!1389375 (not res!627149)) b!1389376))

(assert (=> d!397151 m!1563719))

(declare-fun m!1564117 () Bool)

(assert (=> d!397151 m!1564117))

(declare-fun m!1564119 () Bool)

(assert (=> b!1389376 m!1564119))

(assert (=> b!1388855 d!397151))

(declare-fun b!1389418 () Bool)

(declare-fun e!887475 () tuple2!13702)

(assert (=> b!1389418 (= e!887475 (tuple2!13703 Nil!14097 (list!5470 lt!462085)))))

(declare-fun b!1389419 () Bool)

(declare-fun e!887477 () Bool)

(declare-fun lt!462275 () tuple2!13702)

(declare-fun isEmpty!8541 (List!14163) Bool)

(assert (=> b!1389419 (= e!887477 (not (isEmpty!8541 (_1!7737 lt!462275))))))

(declare-fun d!397155 () Bool)

(declare-fun e!887476 () Bool)

(assert (=> d!397155 e!887476))

(declare-fun c!228672 () Bool)

(declare-fun size!11589 (List!14163) Int)

(assert (=> d!397155 (= c!228672 (> (size!11589 (_1!7737 lt!462275)) 0))))

(assert (=> d!397155 (= lt!462275 e!887475)))

(declare-fun c!228671 () Bool)

(declare-fun lt!462274 () Option!2702)

(assert (=> d!397155 (= c!228671 ((_ is Some!2701) lt!462274))))

(assert (=> d!397155 (= lt!462274 (maxPrefix!1110 thiss!19762 rules!2550 (list!5470 lt!462085)))))

(assert (=> d!397155 (= (lexList!650 thiss!19762 rules!2550 (list!5470 lt!462085)) lt!462275)))

(declare-fun b!1389420 () Bool)

(assert (=> b!1389420 (= e!887476 e!887477)))

(declare-fun res!627174 () Bool)

(assert (=> b!1389420 (= res!627174 (< (size!11585 (_2!7737 lt!462275)) (size!11585 (list!5470 lt!462085))))))

(assert (=> b!1389420 (=> (not res!627174) (not e!887477))))

(declare-fun b!1389421 () Bool)

(declare-fun lt!462276 () tuple2!13702)

(assert (=> b!1389421 (= e!887475 (tuple2!13703 (Cons!14097 (_1!7736 (v!21576 lt!462274)) (_1!7737 lt!462276)) (_2!7737 lt!462276)))))

(assert (=> b!1389421 (= lt!462276 (lexList!650 thiss!19762 rules!2550 (_2!7736 (v!21576 lt!462274))))))

(declare-fun b!1389422 () Bool)

(assert (=> b!1389422 (= e!887476 (= (_2!7737 lt!462275) (list!5470 lt!462085)))))

(assert (= (and d!397155 c!228671) b!1389421))

(assert (= (and d!397155 (not c!228671)) b!1389418))

(assert (= (and d!397155 c!228672) b!1389420))

(assert (= (and d!397155 (not c!228672)) b!1389422))

(assert (= (and b!1389420 res!627174) b!1389419))

(declare-fun m!1564197 () Bool)

(assert (=> b!1389419 m!1564197))

(declare-fun m!1564199 () Bool)

(assert (=> d!397155 m!1564199))

(assert (=> d!397155 m!1563545))

(declare-fun m!1564201 () Bool)

(assert (=> d!397155 m!1564201))

(declare-fun m!1564203 () Bool)

(assert (=> b!1389420 m!1564203))

(assert (=> b!1389420 m!1563545))

(declare-fun m!1564205 () Bool)

(assert (=> b!1389420 m!1564205))

(declare-fun m!1564207 () Bool)

(assert (=> b!1389421 m!1564207))

(assert (=> b!1388877 d!397155))

(declare-fun d!397179 () Bool)

(assert (=> d!397179 (= (list!5470 lt!462085) (list!5472 (c!228560 lt!462085)))))

(declare-fun bs!337289 () Bool)

(assert (= bs!337289 d!397179))

(declare-fun m!1564209 () Bool)

(assert (=> bs!337289 m!1564209))

(assert (=> b!1388877 d!397179))

(declare-fun d!397181 () Bool)

(declare-fun lt!462281 () Bool)

(assert (=> d!397181 (= lt!462281 (select (content!2073 rules!2550) (rule!4202 t2!34)))))

(declare-fun e!887484 () Bool)

(assert (=> d!397181 (= lt!462281 e!887484)))

(declare-fun res!627177 () Bool)

(assert (=> d!397181 (=> (not res!627177) (not e!887484))))

(assert (=> d!397181 (= res!627177 ((_ is Cons!14096) rules!2550))))

(assert (=> d!397181 (= (contains!2704 rules!2550 (rule!4202 t2!34)) lt!462281)))

(declare-fun b!1389433 () Bool)

(declare-fun e!887485 () Bool)

(assert (=> b!1389433 (= e!887484 e!887485)))

(declare-fun res!627178 () Bool)

(assert (=> b!1389433 (=> res!627178 e!887485)))

(assert (=> b!1389433 (= res!627178 (= (h!19497 rules!2550) (rule!4202 t2!34)))))

(declare-fun b!1389434 () Bool)

(assert (=> b!1389434 (= e!887485 (contains!2704 (t!122365 rules!2550) (rule!4202 t2!34)))))

(assert (= (and d!397181 res!627177) b!1389433))

(assert (= (and b!1389433 (not res!627178)) b!1389434))

(assert (=> d!397181 m!1563725))

(declare-fun m!1564211 () Bool)

(assert (=> d!397181 m!1564211))

(declare-fun m!1564213 () Bool)

(assert (=> b!1389434 m!1564213))

(assert (=> b!1388856 d!397181))

(declare-fun b!1389437 () Bool)

(declare-fun e!887488 () tuple2!13702)

(assert (=> b!1389437 (= e!887488 (tuple2!13703 Nil!14097 (list!5470 lt!462084)))))

(declare-fun b!1389438 () Bool)

(declare-fun e!887490 () Bool)

(declare-fun lt!462283 () tuple2!13702)

(assert (=> b!1389438 (= e!887490 (not (isEmpty!8541 (_1!7737 lt!462283))))))

(declare-fun d!397183 () Bool)

(declare-fun e!887489 () Bool)

(assert (=> d!397183 e!887489))

(declare-fun c!228678 () Bool)

(assert (=> d!397183 (= c!228678 (> (size!11589 (_1!7737 lt!462283)) 0))))

(assert (=> d!397183 (= lt!462283 e!887488)))

(declare-fun c!228677 () Bool)

(declare-fun lt!462282 () Option!2702)

(assert (=> d!397183 (= c!228677 ((_ is Some!2701) lt!462282))))

(assert (=> d!397183 (= lt!462282 (maxPrefix!1110 thiss!19762 rules!2550 (list!5470 lt!462084)))))

(assert (=> d!397183 (= (lexList!650 thiss!19762 rules!2550 (list!5470 lt!462084)) lt!462283)))

(declare-fun b!1389439 () Bool)

(assert (=> b!1389439 (= e!887489 e!887490)))

(declare-fun res!627181 () Bool)

(assert (=> b!1389439 (= res!627181 (< (size!11585 (_2!7737 lt!462283)) (size!11585 (list!5470 lt!462084))))))

(assert (=> b!1389439 (=> (not res!627181) (not e!887490))))

(declare-fun b!1389440 () Bool)

(declare-fun lt!462284 () tuple2!13702)

(assert (=> b!1389440 (= e!887488 (tuple2!13703 (Cons!14097 (_1!7736 (v!21576 lt!462282)) (_1!7737 lt!462284)) (_2!7737 lt!462284)))))

(assert (=> b!1389440 (= lt!462284 (lexList!650 thiss!19762 rules!2550 (_2!7736 (v!21576 lt!462282))))))

(declare-fun b!1389441 () Bool)

(assert (=> b!1389441 (= e!887489 (= (_2!7737 lt!462283) (list!5470 lt!462084)))))

(assert (= (and d!397183 c!228677) b!1389440))

(assert (= (and d!397183 (not c!228677)) b!1389437))

(assert (= (and d!397183 c!228678) b!1389439))

(assert (= (and d!397183 (not c!228678)) b!1389441))

(assert (= (and b!1389439 res!627181) b!1389438))

(declare-fun m!1564215 () Bool)

(assert (=> b!1389438 m!1564215))

(declare-fun m!1564217 () Bool)

(assert (=> d!397183 m!1564217))

(assert (=> d!397183 m!1563507))

(declare-fun m!1564219 () Bool)

(assert (=> d!397183 m!1564219))

(declare-fun m!1564221 () Bool)

(assert (=> b!1389439 m!1564221))

(assert (=> b!1389439 m!1563507))

(declare-fun m!1564223 () Bool)

(assert (=> b!1389439 m!1564223))

(declare-fun m!1564225 () Bool)

(assert (=> b!1389440 m!1564225))

(assert (=> b!1388862 d!397183))

(declare-fun d!397185 () Bool)

(assert (=> d!397185 (= (list!5470 lt!462084) (list!5472 (c!228560 lt!462084)))))

(declare-fun bs!337290 () Bool)

(assert (= bs!337290 d!397185))

(declare-fun m!1564227 () Bool)

(assert (=> bs!337290 m!1564227))

(assert (=> b!1388862 d!397185))

(declare-fun d!397187 () Bool)

(declare-fun lt!462285 () Bool)

(assert (=> d!397187 (= lt!462285 (select (content!2072 lt!462089) lt!462072))))

(declare-fun e!887492 () Bool)

(assert (=> d!397187 (= lt!462285 e!887492)))

(declare-fun res!627183 () Bool)

(assert (=> d!397187 (=> (not res!627183) (not e!887492))))

(assert (=> d!397187 (= res!627183 ((_ is Cons!14094) lt!462089))))

(assert (=> d!397187 (= (contains!2703 lt!462089 lt!462072) lt!462285)))

(declare-fun b!1389442 () Bool)

(declare-fun e!887491 () Bool)

(assert (=> b!1389442 (= e!887492 e!887491)))

(declare-fun res!627182 () Bool)

(assert (=> b!1389442 (=> res!627182 e!887491)))

(assert (=> b!1389442 (= res!627182 (= (h!19495 lt!462089) lt!462072))))

(declare-fun b!1389443 () Bool)

(assert (=> b!1389443 (= e!887491 (contains!2703 (t!122363 lt!462089) lt!462072))))

(assert (= (and d!397187 res!627183) b!1389442))

(assert (= (and b!1389442 (not res!627182)) b!1389443))

(declare-fun m!1564229 () Bool)

(assert (=> d!397187 m!1564229))

(declare-fun m!1564231 () Bool)

(assert (=> d!397187 m!1564231))

(declare-fun m!1564233 () Bool)

(assert (=> b!1389443 m!1564233))

(assert (=> b!1388884 d!397187))

(declare-fun d!397189 () Bool)

(assert (=> d!397189 (= (inv!18430 (tag!2703 (h!19497 rules!2550))) (= (mod (str.len (value!79200 (tag!2703 (h!19497 rules!2550)))) 2) 0))))

(assert (=> b!1388863 d!397189))

(declare-fun d!397191 () Bool)

(declare-fun res!627184 () Bool)

(declare-fun e!887493 () Bool)

(assert (=> d!397191 (=> (not res!627184) (not e!887493))))

(assert (=> d!397191 (= res!627184 (semiInverseModEq!946 (toChars!3587 (transformation!2441 (h!19497 rules!2550))) (toValue!3728 (transformation!2441 (h!19497 rules!2550)))))))

(assert (=> d!397191 (= (inv!18434 (transformation!2441 (h!19497 rules!2550))) e!887493)))

(declare-fun b!1389444 () Bool)

(assert (=> b!1389444 (= e!887493 (equivClasses!905 (toChars!3587 (transformation!2441 (h!19497 rules!2550))) (toValue!3728 (transformation!2441 (h!19497 rules!2550)))))))

(assert (= (and d!397191 res!627184) b!1389444))

(declare-fun m!1564235 () Bool)

(assert (=> d!397191 m!1564235))

(declare-fun m!1564237 () Bool)

(assert (=> b!1389444 m!1564237))

(assert (=> b!1388863 d!397191))

(declare-fun b!1389445 () Bool)

(declare-fun e!887494 () List!14160)

(assert (=> b!1389445 (= e!887494 (getSuffix!601 lt!462088 lt!462089))))

(declare-fun b!1389446 () Bool)

(assert (=> b!1389446 (= e!887494 (Cons!14094 (h!19495 lt!462089) (++!3660 (t!122363 lt!462089) (getSuffix!601 lt!462088 lt!462089))))))

(declare-fun e!887495 () Bool)

(declare-fun lt!462286 () List!14160)

(declare-fun b!1389448 () Bool)

(assert (=> b!1389448 (= e!887495 (or (not (= (getSuffix!601 lt!462088 lt!462089) Nil!14094)) (= lt!462286 lt!462089)))))

(declare-fun b!1389447 () Bool)

(declare-fun res!627186 () Bool)

(assert (=> b!1389447 (=> (not res!627186) (not e!887495))))

(assert (=> b!1389447 (= res!627186 (= (size!11585 lt!462286) (+ (size!11585 lt!462089) (size!11585 (getSuffix!601 lt!462088 lt!462089)))))))

(declare-fun d!397193 () Bool)

(assert (=> d!397193 e!887495))

(declare-fun res!627185 () Bool)

(assert (=> d!397193 (=> (not res!627185) (not e!887495))))

(assert (=> d!397193 (= res!627185 (= (content!2072 lt!462286) ((_ map or) (content!2072 lt!462089) (content!2072 (getSuffix!601 lt!462088 lt!462089)))))))

(assert (=> d!397193 (= lt!462286 e!887494)))

(declare-fun c!228679 () Bool)

(assert (=> d!397193 (= c!228679 ((_ is Nil!14094) lt!462089))))

(assert (=> d!397193 (= (++!3660 lt!462089 (getSuffix!601 lt!462088 lt!462089)) lt!462286)))

(assert (= (and d!397193 c!228679) b!1389445))

(assert (= (and d!397193 (not c!228679)) b!1389446))

(assert (= (and d!397193 res!627185) b!1389447))

(assert (= (and b!1389447 res!627186) b!1389448))

(assert (=> b!1389446 m!1563443))

(declare-fun m!1564239 () Bool)

(assert (=> b!1389446 m!1564239))

(declare-fun m!1564241 () Bool)

(assert (=> b!1389447 m!1564241))

(declare-fun m!1564243 () Bool)

(assert (=> b!1389447 m!1564243))

(assert (=> b!1389447 m!1563443))

(declare-fun m!1564245 () Bool)

(assert (=> b!1389447 m!1564245))

(declare-fun m!1564247 () Bool)

(assert (=> d!397193 m!1564247))

(assert (=> d!397193 m!1564229))

(assert (=> d!397193 m!1563443))

(declare-fun m!1564249 () Bool)

(assert (=> d!397193 m!1564249))

(assert (=> b!1388885 d!397193))

(declare-fun d!397195 () Bool)

(declare-fun lt!462294 () List!14160)

(assert (=> d!397195 (= (++!3660 lt!462089 lt!462294) lt!462088)))

(declare-fun e!887502 () List!14160)

(assert (=> d!397195 (= lt!462294 e!887502)))

(declare-fun c!228684 () Bool)

(assert (=> d!397195 (= c!228684 ((_ is Cons!14094) lt!462089))))

(assert (=> d!397195 (>= (size!11585 lt!462088) (size!11585 lt!462089))))

(assert (=> d!397195 (= (getSuffix!601 lt!462088 lt!462089) lt!462294)))

(declare-fun b!1389459 () Bool)

(assert (=> b!1389459 (= e!887502 (getSuffix!601 (tail!2018 lt!462088) (t!122363 lt!462089)))))

(declare-fun b!1389460 () Bool)

(assert (=> b!1389460 (= e!887502 lt!462088)))

(assert (= (and d!397195 c!228684) b!1389459))

(assert (= (and d!397195 (not c!228684)) b!1389460))

(declare-fun m!1564269 () Bool)

(assert (=> d!397195 m!1564269))

(declare-fun m!1564271 () Bool)

(assert (=> d!397195 m!1564271))

(assert (=> d!397195 m!1564243))

(declare-fun m!1564273 () Bool)

(assert (=> b!1389459 m!1564273))

(assert (=> b!1389459 m!1564273))

(declare-fun m!1564275 () Bool)

(assert (=> b!1389459 m!1564275))

(assert (=> b!1388885 d!397195))

(declare-fun d!397203 () Bool)

(declare-fun lt!462298 () List!14160)

(declare-fun dynLambda!6471 (Int List!14160) Bool)

(assert (=> d!397203 (dynLambda!6471 lambda!59987 lt!462298)))

(declare-fun choose!8540 (Int) List!14160)

(assert (=> d!397203 (= lt!462298 (choose!8540 lambda!59987))))

(assert (=> d!397203 (Exists!905 lambda!59987)))

(assert (=> d!397203 (= (pickWitness!208 lambda!59987) lt!462298)))

(declare-fun b_lambda!43177 () Bool)

(assert (=> (not b_lambda!43177) (not d!397203)))

(declare-fun bs!337293 () Bool)

(assert (= bs!337293 d!397203))

(declare-fun m!1564281 () Bool)

(assert (=> bs!337293 m!1564281))

(declare-fun m!1564283 () Bool)

(assert (=> bs!337293 m!1564283))

(assert (=> bs!337293 m!1563479))

(assert (=> b!1388885 d!397203))

(declare-fun b!1389462 () Bool)

(declare-fun e!887508 () Bool)

(assert (=> b!1389462 (= e!887508 (nullable!1217 lt!462076))))

(declare-fun b!1389463 () Bool)

(declare-fun e!887510 () Bool)

(declare-fun e!887509 () Bool)

(assert (=> b!1389463 (= e!887510 e!887509)))

(declare-fun res!627196 () Bool)

(assert (=> b!1389463 (=> res!627196 e!887509)))

(declare-fun call!92939 () Bool)

(assert (=> b!1389463 (= res!627196 call!92939)))

(declare-fun b!1389464 () Bool)

(declare-fun e!887507 () Bool)

(assert (=> b!1389464 (= e!887507 (= (head!2537 lt!462088) (c!228561 lt!462076)))))

(declare-fun b!1389465 () Bool)

(declare-fun res!627197 () Bool)

(declare-fun e!887506 () Bool)

(assert (=> b!1389465 (=> res!627197 e!887506)))

(assert (=> b!1389465 (= res!627197 (not ((_ is ElementMatch!3755) lt!462076)))))

(declare-fun e!887504 () Bool)

(assert (=> b!1389465 (= e!887504 e!887506)))

(declare-fun b!1389466 () Bool)

(declare-fun lt!462299 () Bool)

(assert (=> b!1389466 (= e!887504 (not lt!462299))))

(declare-fun b!1389467 () Bool)

(declare-fun res!627195 () Bool)

(assert (=> b!1389467 (=> res!627195 e!887509)))

(assert (=> b!1389467 (= res!627195 (not (isEmpty!8537 (tail!2018 lt!462088))))))

(declare-fun b!1389468 () Bool)

(assert (=> b!1389468 (= e!887509 (not (= (head!2537 lt!462088) (c!228561 lt!462076))))))

(declare-fun b!1389469 () Bool)

(assert (=> b!1389469 (= e!887506 e!887510)))

(declare-fun res!627192 () Bool)

(assert (=> b!1389469 (=> (not res!627192) (not e!887510))))

(assert (=> b!1389469 (= res!627192 (not lt!462299))))

(declare-fun b!1389470 () Bool)

(declare-fun res!627194 () Bool)

(assert (=> b!1389470 (=> (not res!627194) (not e!887507))))

(assert (=> b!1389470 (= res!627194 (not call!92939))))

(declare-fun b!1389471 () Bool)

(declare-fun e!887505 () Bool)

(assert (=> b!1389471 (= e!887505 e!887504)))

(declare-fun c!228685 () Bool)

(assert (=> b!1389471 (= c!228685 ((_ is EmptyLang!3755) lt!462076))))

(declare-fun bm!92934 () Bool)

(assert (=> bm!92934 (= call!92939 (isEmpty!8537 lt!462088))))

(declare-fun d!397207 () Bool)

(assert (=> d!397207 e!887505))

(declare-fun c!228686 () Bool)

(assert (=> d!397207 (= c!228686 ((_ is EmptyExpr!3755) lt!462076))))

(assert (=> d!397207 (= lt!462299 e!887508)))

(declare-fun c!228687 () Bool)

(assert (=> d!397207 (= c!228687 (isEmpty!8537 lt!462088))))

(assert (=> d!397207 (validRegex!1637 lt!462076)))

(assert (=> d!397207 (= (matchR!1746 lt!462076 lt!462088) lt!462299)))

(declare-fun b!1389472 () Bool)

(declare-fun res!627191 () Bool)

(assert (=> b!1389472 (=> res!627191 e!887506)))

(assert (=> b!1389472 (= res!627191 e!887507)))

(declare-fun res!627190 () Bool)

(assert (=> b!1389472 (=> (not res!627190) (not e!887507))))

(assert (=> b!1389472 (= res!627190 lt!462299)))

(declare-fun b!1389473 () Bool)

(assert (=> b!1389473 (= e!887508 (matchR!1746 (derivativeStep!975 lt!462076 (head!2537 lt!462088)) (tail!2018 lt!462088)))))

(declare-fun b!1389474 () Bool)

(assert (=> b!1389474 (= e!887505 (= lt!462299 call!92939))))

(declare-fun b!1389475 () Bool)

(declare-fun res!627193 () Bool)

(assert (=> b!1389475 (=> (not res!627193) (not e!887507))))

(assert (=> b!1389475 (= res!627193 (isEmpty!8537 (tail!2018 lt!462088)))))

(assert (= (and d!397207 c!228687) b!1389462))

(assert (= (and d!397207 (not c!228687)) b!1389473))

(assert (= (and d!397207 c!228686) b!1389474))

(assert (= (and d!397207 (not c!228686)) b!1389471))

(assert (= (and b!1389471 c!228685) b!1389466))

(assert (= (and b!1389471 (not c!228685)) b!1389465))

(assert (= (and b!1389465 (not res!627197)) b!1389472))

(assert (= (and b!1389472 res!627190) b!1389470))

(assert (= (and b!1389470 res!627194) b!1389475))

(assert (= (and b!1389475 res!627193) b!1389464))

(assert (= (and b!1389472 (not res!627191)) b!1389469))

(assert (= (and b!1389469 res!627192) b!1389463))

(assert (= (and b!1389463 (not res!627196)) b!1389467))

(assert (= (and b!1389467 (not res!627195)) b!1389468))

(assert (= (or b!1389474 b!1389463 b!1389470) bm!92934))

(declare-fun m!1564285 () Bool)

(assert (=> b!1389468 m!1564285))

(assert (=> b!1389467 m!1564273))

(assert (=> b!1389467 m!1564273))

(declare-fun m!1564287 () Bool)

(assert (=> b!1389467 m!1564287))

(assert (=> b!1389473 m!1564285))

(assert (=> b!1389473 m!1564285))

(declare-fun m!1564289 () Bool)

(assert (=> b!1389473 m!1564289))

(assert (=> b!1389473 m!1564273))

(assert (=> b!1389473 m!1564289))

(assert (=> b!1389473 m!1564273))

(declare-fun m!1564291 () Bool)

(assert (=> b!1389473 m!1564291))

(assert (=> b!1389475 m!1564273))

(assert (=> b!1389475 m!1564273))

(assert (=> b!1389475 m!1564287))

(assert (=> b!1389464 m!1564285))

(declare-fun m!1564293 () Bool)

(assert (=> b!1389462 m!1564293))

(declare-fun m!1564295 () Bool)

(assert (=> d!397207 m!1564295))

(assert (=> d!397207 m!1563947))

(assert (=> bm!92934 m!1564295))

(assert (=> b!1388864 d!397207))

(declare-fun d!397209 () Bool)

(declare-fun lt!462300 () Bool)

(assert (=> d!397209 (= lt!462300 (select (content!2072 lt!462089) lt!462095))))

(declare-fun e!887514 () Bool)

(assert (=> d!397209 (= lt!462300 e!887514)))

(declare-fun res!627199 () Bool)

(assert (=> d!397209 (=> (not res!627199) (not e!887514))))

(assert (=> d!397209 (= res!627199 ((_ is Cons!14094) lt!462089))))

(assert (=> d!397209 (= (contains!2703 lt!462089 lt!462095) lt!462300)))

(declare-fun b!1389480 () Bool)

(declare-fun e!887513 () Bool)

(assert (=> b!1389480 (= e!887514 e!887513)))

(declare-fun res!627198 () Bool)

(assert (=> b!1389480 (=> res!627198 e!887513)))

(assert (=> b!1389480 (= res!627198 (= (h!19495 lt!462089) lt!462095))))

(declare-fun b!1389481 () Bool)

(assert (=> b!1389481 (= e!887513 (contains!2703 (t!122363 lt!462089) lt!462095))))

(assert (= (and d!397209 res!627199) b!1389480))

(assert (= (and b!1389480 (not res!627198)) b!1389481))

(assert (=> d!397209 m!1564229))

(declare-fun m!1564297 () Bool)

(assert (=> d!397209 m!1564297))

(declare-fun m!1564299 () Bool)

(assert (=> b!1389481 m!1564299))

(assert (=> b!1388859 d!397209))

(declare-fun d!397211 () Bool)

(declare-fun lt!462301 () C!7800)

(assert (=> d!397211 (= lt!462301 (apply!3546 (list!5470 lt!462078) 0))))

(assert (=> d!397211 (= lt!462301 (apply!3547 (c!228560 lt!462078) 0))))

(declare-fun e!887515 () Bool)

(assert (=> d!397211 e!887515))

(declare-fun res!627200 () Bool)

(assert (=> d!397211 (=> (not res!627200) (not e!887515))))

(assert (=> d!397211 (= res!627200 (<= 0 0))))

(assert (=> d!397211 (= (apply!3539 lt!462078 0) lt!462301)))

(declare-fun b!1389483 () Bool)

(assert (=> b!1389483 (= e!887515 (< 0 (size!11580 lt!462078)))))

(assert (= (and d!397211 res!627200) b!1389483))

(assert (=> d!397211 m!1563437))

(assert (=> d!397211 m!1563437))

(declare-fun m!1564301 () Bool)

(assert (=> d!397211 m!1564301))

(declare-fun m!1564305 () Bool)

(assert (=> d!397211 m!1564305))

(declare-fun m!1564309 () Bool)

(assert (=> b!1389483 m!1564309))

(assert (=> b!1388859 d!397211))

(declare-fun d!397213 () Bool)

(declare-fun lt!462306 () List!14164)

(declare-fun size!11591 (List!14164) Int)

(declare-fun size!11592 (List!14162) Int)

(assert (=> d!397213 (= (size!11591 lt!462306) (size!11592 rules!2550))))

(declare-fun e!887521 () List!14164)

(assert (=> d!397213 (= lt!462306 e!887521)))

(declare-fun c!228694 () Bool)

(assert (=> d!397213 (= c!228694 ((_ is Nil!14096) rules!2550))))

(assert (=> d!397213 (= (map!3122 rules!2550 lambda!59988) lt!462306)))

(declare-fun b!1389493 () Bool)

(assert (=> b!1389493 (= e!887521 Nil!14098)))

(declare-fun b!1389494 () Bool)

(declare-fun $colon$colon!219 (List!14164 Regex!3755) List!14164)

(declare-fun dynLambda!6474 (Int Rule!4682) Regex!3755)

(assert (=> b!1389494 (= e!887521 ($colon$colon!219 (map!3122 (t!122365 rules!2550) lambda!59988) (dynLambda!6474 lambda!59988 (h!19497 rules!2550))))))

(assert (= (and d!397213 c!228694) b!1389493))

(assert (= (and d!397213 (not c!228694)) b!1389494))

(declare-fun b_lambda!43181 () Bool)

(assert (=> (not b_lambda!43181) (not b!1389494)))

(declare-fun m!1564333 () Bool)

(assert (=> d!397213 m!1564333))

(declare-fun m!1564335 () Bool)

(assert (=> d!397213 m!1564335))

(declare-fun m!1564337 () Bool)

(assert (=> b!1389494 m!1564337))

(declare-fun m!1564339 () Bool)

(assert (=> b!1389494 m!1564339))

(assert (=> b!1389494 m!1564337))

(assert (=> b!1389494 m!1564339))

(declare-fun m!1564341 () Bool)

(assert (=> b!1389494 m!1564341))

(assert (=> b!1388881 d!397213))

(declare-fun bs!337296 () Bool)

(declare-fun d!397221 () Bool)

(assert (= bs!337296 (and d!397221 b!1388881)))

(declare-fun lambda!60016 () Int)

(assert (=> bs!337296 (not (= lambda!60016 lambda!59989))))

(assert (=> d!397221 true))

(declare-fun order!8617 () Int)

(declare-fun dynLambda!6475 (Int Int) Int)

(assert (=> d!397221 (< (dynLambda!6475 order!8617 lambda!59989) (dynLambda!6475 order!8617 lambda!60016))))

(declare-fun forall!3431 (List!14164 Int) Bool)

(assert (=> d!397221 (= (exists!527 (map!3122 rules!2550 lambda!59988) lambda!59989) (not (forall!3431 (map!3122 rules!2550 lambda!59988) lambda!60016)))))

(declare-fun bs!337297 () Bool)

(assert (= bs!337297 d!397221))

(assert (=> bs!337297 m!1563511))

(declare-fun m!1564349 () Bool)

(assert (=> bs!337297 m!1564349))

(assert (=> b!1388881 d!397221))

(declare-fun bs!337304 () Bool)

(declare-fun d!397225 () Bool)

(assert (= bs!337304 (and d!397225 b!1388881)))

(declare-fun lambda!60027 () Int)

(assert (=> bs!337304 (not (= lambda!60027 lambda!59989))))

(declare-fun bs!337305 () Bool)

(assert (= bs!337305 (and d!397225 d!397221)))

(assert (=> bs!337305 (not (= lambda!60027 lambda!60016))))

(declare-fun lambda!60028 () Int)

(assert (=> bs!337304 (= lambda!60028 lambda!59989)))

(assert (=> bs!337305 (not (= lambda!60028 lambda!60016))))

(declare-fun bs!337307 () Bool)

(assert (= bs!337307 d!397225))

(assert (=> bs!337307 (not (= lambda!60028 lambda!60027))))

(assert (=> d!397225 true))

(assert (=> d!397225 (= (matchR!1746 lt!462076 lt!462088) (exists!527 lt!462086 lambda!60028))))

(declare-fun lt!462315 () Unit!20353)

(declare-fun choose!8542 (Regex!3755 List!14164 List!14160) Unit!20353)

(assert (=> d!397225 (= lt!462315 (choose!8542 lt!462076 lt!462086 lt!462088))))

(assert (=> d!397225 (forall!3431 lt!462086 lambda!60027)))

(assert (=> d!397225 (= (matchRGenUnionSpec!166 lt!462076 lt!462086 lt!462088) lt!462315)))

(assert (=> bs!337307 m!1563521))

(declare-fun m!1564361 () Bool)

(assert (=> bs!337307 m!1564361))

(declare-fun m!1564363 () Bool)

(assert (=> bs!337307 m!1564363))

(declare-fun m!1564365 () Bool)

(assert (=> bs!337307 m!1564365))

(assert (=> b!1388881 d!397225))

(declare-fun bs!337308 () Bool)

(declare-fun d!397235 () Bool)

(assert (= bs!337308 (and d!397235 b!1388881)))

(declare-fun lambda!60029 () Int)

(assert (=> bs!337308 (not (= lambda!60029 lambda!59989))))

(declare-fun bs!337309 () Bool)

(assert (= bs!337309 (and d!397235 d!397221)))

(assert (=> bs!337309 (= lambda!60029 lambda!60016)))

(declare-fun bs!337310 () Bool)

(assert (= bs!337310 (and d!397235 d!397225)))

(assert (=> bs!337310 (not (= lambda!60029 lambda!60027))))

(assert (=> bs!337310 (not (= lambda!60029 lambda!60028))))

(assert (=> d!397235 true))

(assert (=> d!397235 (< (dynLambda!6475 order!8617 lambda!59989) (dynLambda!6475 order!8617 lambda!60029))))

(assert (=> d!397235 (= (exists!527 lt!462086 lambda!59989) (not (forall!3431 lt!462086 lambda!60029)))))

(declare-fun bs!337311 () Bool)

(assert (= bs!337311 d!397235))

(declare-fun m!1564367 () Bool)

(assert (=> bs!337311 m!1564367))

(assert (=> b!1388881 d!397235))

(declare-fun b!1389506 () Bool)

(declare-fun e!887529 () Bool)

(assert (=> b!1389506 (= e!887529 (nullable!1217 (regex!2441 (rule!4202 t2!34))))))

(declare-fun b!1389507 () Bool)

(declare-fun e!887531 () Bool)

(declare-fun e!887530 () Bool)

(assert (=> b!1389507 (= e!887531 e!887530)))

(declare-fun res!627212 () Bool)

(assert (=> b!1389507 (=> res!627212 e!887530)))

(declare-fun call!92940 () Bool)

(assert (=> b!1389507 (= res!627212 call!92940)))

(declare-fun b!1389508 () Bool)

(declare-fun e!887528 () Bool)

(assert (=> b!1389508 (= e!887528 (= (head!2537 lt!462075) (c!228561 (regex!2441 (rule!4202 t2!34)))))))

(declare-fun b!1389509 () Bool)

(declare-fun res!627213 () Bool)

(declare-fun e!887527 () Bool)

(assert (=> b!1389509 (=> res!627213 e!887527)))

(assert (=> b!1389509 (= res!627213 (not ((_ is ElementMatch!3755) (regex!2441 (rule!4202 t2!34)))))))

(declare-fun e!887525 () Bool)

(assert (=> b!1389509 (= e!887525 e!887527)))

(declare-fun b!1389510 () Bool)

(declare-fun lt!462316 () Bool)

(assert (=> b!1389510 (= e!887525 (not lt!462316))))

(declare-fun b!1389511 () Bool)

(declare-fun res!627211 () Bool)

(assert (=> b!1389511 (=> res!627211 e!887530)))

(assert (=> b!1389511 (= res!627211 (not (isEmpty!8537 (tail!2018 lt!462075))))))

(declare-fun b!1389512 () Bool)

(assert (=> b!1389512 (= e!887530 (not (= (head!2537 lt!462075) (c!228561 (regex!2441 (rule!4202 t2!34))))))))

(declare-fun b!1389513 () Bool)

(assert (=> b!1389513 (= e!887527 e!887531)))

(declare-fun res!627208 () Bool)

(assert (=> b!1389513 (=> (not res!627208) (not e!887531))))

(assert (=> b!1389513 (= res!627208 (not lt!462316))))

(declare-fun b!1389514 () Bool)

(declare-fun res!627210 () Bool)

(assert (=> b!1389514 (=> (not res!627210) (not e!887528))))

(assert (=> b!1389514 (= res!627210 (not call!92940))))

(declare-fun b!1389515 () Bool)

(declare-fun e!887526 () Bool)

(assert (=> b!1389515 (= e!887526 e!887525)))

(declare-fun c!228695 () Bool)

(assert (=> b!1389515 (= c!228695 ((_ is EmptyLang!3755) (regex!2441 (rule!4202 t2!34))))))

(declare-fun bm!92935 () Bool)

(assert (=> bm!92935 (= call!92940 (isEmpty!8537 lt!462075))))

(declare-fun d!397237 () Bool)

(assert (=> d!397237 e!887526))

(declare-fun c!228696 () Bool)

(assert (=> d!397237 (= c!228696 ((_ is EmptyExpr!3755) (regex!2441 (rule!4202 t2!34))))))

(assert (=> d!397237 (= lt!462316 e!887529)))

(declare-fun c!228697 () Bool)

(assert (=> d!397237 (= c!228697 (isEmpty!8537 lt!462075))))

(assert (=> d!397237 (validRegex!1637 (regex!2441 (rule!4202 t2!34)))))

(assert (=> d!397237 (= (matchR!1746 (regex!2441 (rule!4202 t2!34)) lt!462075) lt!462316)))

(declare-fun b!1389516 () Bool)

(declare-fun res!627207 () Bool)

(assert (=> b!1389516 (=> res!627207 e!887527)))

(assert (=> b!1389516 (= res!627207 e!887528)))

(declare-fun res!627206 () Bool)

(assert (=> b!1389516 (=> (not res!627206) (not e!887528))))

(assert (=> b!1389516 (= res!627206 lt!462316)))

(declare-fun b!1389517 () Bool)

(assert (=> b!1389517 (= e!887529 (matchR!1746 (derivativeStep!975 (regex!2441 (rule!4202 t2!34)) (head!2537 lt!462075)) (tail!2018 lt!462075)))))

(declare-fun b!1389518 () Bool)

(assert (=> b!1389518 (= e!887526 (= lt!462316 call!92940))))

(declare-fun b!1389519 () Bool)

(declare-fun res!627209 () Bool)

(assert (=> b!1389519 (=> (not res!627209) (not e!887528))))

(assert (=> b!1389519 (= res!627209 (isEmpty!8537 (tail!2018 lt!462075)))))

(assert (= (and d!397237 c!228697) b!1389506))

(assert (= (and d!397237 (not c!228697)) b!1389517))

(assert (= (and d!397237 c!228696) b!1389518))

(assert (= (and d!397237 (not c!228696)) b!1389515))

(assert (= (and b!1389515 c!228695) b!1389510))

(assert (= (and b!1389515 (not c!228695)) b!1389509))

(assert (= (and b!1389509 (not res!627213)) b!1389516))

(assert (= (and b!1389516 res!627206) b!1389514))

(assert (= (and b!1389514 res!627210) b!1389519))

(assert (= (and b!1389519 res!627209) b!1389508))

(assert (= (and b!1389516 (not res!627207)) b!1389513))

(assert (= (and b!1389513 res!627208) b!1389507))

(assert (= (and b!1389507 (not res!627212)) b!1389511))

(assert (= (and b!1389511 (not res!627211)) b!1389512))

(assert (= (or b!1389518 b!1389507 b!1389514) bm!92935))

(assert (=> b!1389512 m!1563455))

(declare-fun m!1564369 () Bool)

(assert (=> b!1389511 m!1564369))

(assert (=> b!1389511 m!1564369))

(declare-fun m!1564371 () Bool)

(assert (=> b!1389511 m!1564371))

(assert (=> b!1389517 m!1563455))

(assert (=> b!1389517 m!1563455))

(declare-fun m!1564373 () Bool)

(assert (=> b!1389517 m!1564373))

(assert (=> b!1389517 m!1564369))

(assert (=> b!1389517 m!1564373))

(assert (=> b!1389517 m!1564369))

(declare-fun m!1564375 () Bool)

(assert (=> b!1389517 m!1564375))

(assert (=> b!1389519 m!1564369))

(assert (=> b!1389519 m!1564369))

(assert (=> b!1389519 m!1564371))

(assert (=> b!1389508 m!1563455))

(declare-fun m!1564377 () Bool)

(assert (=> b!1389506 m!1564377))

(declare-fun m!1564379 () Bool)

(assert (=> d!397237 m!1564379))

(assert (=> d!397237 m!1563463))

(assert (=> bm!92935 m!1564379))

(assert (=> b!1388860 d!397237))

(declare-fun lt!462319 () Bool)

(declare-fun d!397239 () Bool)

(declare-fun content!2075 (List!14164) (InoxSet Regex!3755))

(assert (=> d!397239 (= lt!462319 (select (content!2075 (map!3122 rules!2550 lambda!59988)) lt!462096))))

(declare-fun e!887543 () Bool)

(assert (=> d!397239 (= lt!462319 e!887543)))

(declare-fun res!627225 () Bool)

(assert (=> d!397239 (=> (not res!627225) (not e!887543))))

(assert (=> d!397239 (= res!627225 ((_ is Cons!14098) (map!3122 rules!2550 lambda!59988)))))

(assert (=> d!397239 (= (contains!2705 (map!3122 rules!2550 lambda!59988) lt!462096) lt!462319)))

(declare-fun b!1389530 () Bool)

(declare-fun e!887542 () Bool)

(assert (=> b!1389530 (= e!887543 e!887542)))

(declare-fun res!627224 () Bool)

(assert (=> b!1389530 (=> res!627224 e!887542)))

(assert (=> b!1389530 (= res!627224 (= (h!19499 (map!3122 rules!2550 lambda!59988)) lt!462096))))

(declare-fun b!1389531 () Bool)

(assert (=> b!1389531 (= e!887542 (contains!2705 (t!122367 (map!3122 rules!2550 lambda!59988)) lt!462096))))

(assert (= (and d!397239 res!627225) b!1389530))

(assert (= (and b!1389530 (not res!627224)) b!1389531))

(assert (=> d!397239 m!1563511))

(declare-fun m!1564385 () Bool)

(assert (=> d!397239 m!1564385))

(declare-fun m!1564387 () Bool)

(assert (=> d!397239 m!1564387))

(declare-fun m!1564389 () Bool)

(assert (=> b!1389531 m!1564389))

(assert (=> b!1388882 d!397239))

(assert (=> b!1388882 d!397213))

(declare-fun b!1389544 () Bool)

(declare-fun e!887552 () Regex!3755)

(declare-fun e!887555 () Regex!3755)

(assert (=> b!1389544 (= e!887552 e!887555)))

(declare-fun c!228702 () Bool)

(assert (=> b!1389544 (= c!228702 ((_ is Cons!14098) (map!3122 rules!2550 lambda!59988)))))

(declare-fun lt!462324 () Regex!3755)

(declare-fun b!1389545 () Bool)

(declare-fun e!887553 () Bool)

(assert (=> b!1389545 (= e!887553 (contains!2705 (map!3122 rules!2550 lambda!59988) lt!462324))))

(declare-fun b!1389546 () Bool)

(declare-fun e!887554 () Bool)

(declare-fun dynLambda!6476 (Int Regex!3755) Bool)

(assert (=> b!1389546 (= e!887554 (dynLambda!6476 lambda!59989 (h!19499 (map!3122 rules!2550 lambda!59988))))))

(declare-fun b!1389548 () Bool)

(declare-fun lt!462325 () Unit!20353)

(declare-fun Unit!20358 () Unit!20353)

(assert (=> b!1389548 (= lt!462325 Unit!20358)))

(assert (=> b!1389548 false))

(declare-fun head!2539 (List!14164) Regex!3755)

(assert (=> b!1389548 (= e!887555 (head!2539 (map!3122 rules!2550 lambda!59988)))))

(declare-fun b!1389549 () Bool)

(assert (=> b!1389549 (= e!887555 (getWitness!415 (t!122367 (map!3122 rules!2550 lambda!59988)) lambda!59989))))

(declare-fun b!1389547 () Bool)

(assert (=> b!1389547 (= e!887552 (h!19499 (map!3122 rules!2550 lambda!59988)))))

(declare-fun d!397243 () Bool)

(assert (=> d!397243 e!887553))

(declare-fun res!627230 () Bool)

(assert (=> d!397243 (=> (not res!627230) (not e!887553))))

(assert (=> d!397243 (= res!627230 (dynLambda!6476 lambda!59989 lt!462324))))

(assert (=> d!397243 (= lt!462324 e!887552)))

(declare-fun c!228703 () Bool)

(assert (=> d!397243 (= c!228703 e!887554)))

(declare-fun res!627231 () Bool)

(assert (=> d!397243 (=> (not res!627231) (not e!887554))))

(assert (=> d!397243 (= res!627231 ((_ is Cons!14098) (map!3122 rules!2550 lambda!59988)))))

(assert (=> d!397243 (exists!527 (map!3122 rules!2550 lambda!59988) lambda!59989)))

(assert (=> d!397243 (= (getWitness!415 (map!3122 rules!2550 lambda!59988) lambda!59989) lt!462324)))

(assert (= (and d!397243 res!627231) b!1389546))

(assert (= (and d!397243 c!228703) b!1389547))

(assert (= (and d!397243 (not c!228703)) b!1389544))

(assert (= (and b!1389544 c!228702) b!1389549))

(assert (= (and b!1389544 (not c!228702)) b!1389548))

(assert (= (and d!397243 res!627230) b!1389545))

(declare-fun b_lambda!43183 () Bool)

(assert (=> (not b_lambda!43183) (not b!1389546)))

(declare-fun b_lambda!43185 () Bool)

(assert (=> (not b_lambda!43185) (not d!397243)))

(assert (=> b!1389548 m!1563511))

(declare-fun m!1564391 () Bool)

(assert (=> b!1389548 m!1564391))

(declare-fun m!1564393 () Bool)

(assert (=> d!397243 m!1564393))

(assert (=> d!397243 m!1563511))

(assert (=> d!397243 m!1563565))

(declare-fun m!1564395 () Bool)

(assert (=> b!1389546 m!1564395))

(declare-fun m!1564397 () Bool)

(assert (=> b!1389549 m!1564397))

(assert (=> b!1389545 m!1563511))

(declare-fun m!1564399 () Bool)

(assert (=> b!1389545 m!1564399))

(assert (=> b!1388882 d!397243))

(declare-fun b!1389665 () Bool)

(declare-fun e!887632 () Bool)

(declare-fun lt!462340 () tuple2!13698)

(declare-fun isEmpty!8543 (BalanceConc!9226) Bool)

(assert (=> b!1389665 (= e!887632 (not (isEmpty!8543 (_1!7735 lt!462340))))))

(declare-fun b!1389666 () Bool)

(declare-fun e!887631 () Bool)

(assert (=> b!1389666 (= e!887631 (= (_2!7735 lt!462340) lt!462085))))

(declare-fun b!1389667 () Bool)

(assert (=> b!1389667 (= e!887631 e!887632)))

(declare-fun res!627271 () Bool)

(assert (=> b!1389667 (= res!627271 (< (size!11580 (_2!7735 lt!462340)) (size!11580 lt!462085)))))

(assert (=> b!1389667 (=> (not res!627271) (not e!887632))))

(declare-fun e!887633 () Bool)

(declare-fun b!1389668 () Bool)

(assert (=> b!1389668 (= e!887633 (= (list!5470 (_2!7735 lt!462340)) (_2!7737 (lexList!650 thiss!19762 rules!2550 (list!5470 lt!462085)))))))

(declare-fun d!397245 () Bool)

(assert (=> d!397245 e!887633))

(declare-fun res!627270 () Bool)

(assert (=> d!397245 (=> (not res!627270) (not e!887633))))

(assert (=> d!397245 (= res!627270 e!887631)))

(declare-fun c!228723 () Bool)

(assert (=> d!397245 (= c!228723 (> (size!11587 (_1!7735 lt!462340)) 0))))

(declare-fun lexTailRecV2!429 (LexerInterface!2136 List!14162 BalanceConc!9224 BalanceConc!9224 BalanceConc!9224 BalanceConc!9226) tuple2!13698)

(assert (=> d!397245 (= lt!462340 (lexTailRecV2!429 thiss!19762 rules!2550 lt!462085 (BalanceConc!9225 Empty!4642) lt!462085 (BalanceConc!9227 Empty!4643)))))

(assert (=> d!397245 (= (lex!961 thiss!19762 rules!2550 lt!462085) lt!462340)))

(declare-fun b!1389669 () Bool)

(declare-fun res!627272 () Bool)

(assert (=> b!1389669 (=> (not res!627272) (not e!887633))))

(assert (=> b!1389669 (= res!627272 (= (list!5469 (_1!7735 lt!462340)) (_1!7737 (lexList!650 thiss!19762 rules!2550 (list!5470 lt!462085)))))))

(assert (= (and d!397245 c!228723) b!1389667))

(assert (= (and d!397245 (not c!228723)) b!1389666))

(assert (= (and b!1389667 res!627271) b!1389665))

(assert (= (and d!397245 res!627270) b!1389669))

(assert (= (and b!1389669 res!627272) b!1389668))

(declare-fun m!1564497 () Bool)

(assert (=> b!1389669 m!1564497))

(assert (=> b!1389669 m!1563545))

(assert (=> b!1389669 m!1563545))

(assert (=> b!1389669 m!1563547))

(declare-fun m!1564499 () Bool)

(assert (=> b!1389667 m!1564499))

(declare-fun m!1564501 () Bool)

(assert (=> b!1389667 m!1564501))

(declare-fun m!1564503 () Bool)

(assert (=> d!397245 m!1564503))

(declare-fun m!1564505 () Bool)

(assert (=> d!397245 m!1564505))

(declare-fun m!1564507 () Bool)

(assert (=> b!1389665 m!1564507))

(declare-fun m!1564509 () Bool)

(assert (=> b!1389668 m!1564509))

(assert (=> b!1389668 m!1563545))

(assert (=> b!1389668 m!1563545))

(assert (=> b!1389668 m!1563547))

(assert (=> b!1388861 d!397245))

(declare-fun d!397285 () Bool)

(declare-fun lt!462343 () BalanceConc!9224)

(declare-fun printList!624 (LexerInterface!2136 List!14163) List!14160)

(assert (=> d!397285 (= (list!5470 lt!462343) (printList!624 thiss!19762 (list!5469 (singletonSeq!1088 t1!34))))))

(declare-fun printTailRec!606 (LexerInterface!2136 BalanceConc!9226 Int BalanceConc!9224) BalanceConc!9224)

(assert (=> d!397285 (= lt!462343 (printTailRec!606 thiss!19762 (singletonSeq!1088 t1!34) 0 (BalanceConc!9225 Empty!4642)))))

(assert (=> d!397285 (= (print!900 thiss!19762 (singletonSeq!1088 t1!34)) lt!462343)))

(declare-fun bs!337325 () Bool)

(assert (= bs!337325 d!397285))

(declare-fun m!1564511 () Bool)

(assert (=> bs!337325 m!1564511))

(assert (=> bs!337325 m!1563537))

(declare-fun m!1564513 () Bool)

(assert (=> bs!337325 m!1564513))

(assert (=> bs!337325 m!1564513))

(declare-fun m!1564515 () Bool)

(assert (=> bs!337325 m!1564515))

(assert (=> bs!337325 m!1563537))

(declare-fun m!1564517 () Bool)

(assert (=> bs!337325 m!1564517))

(assert (=> b!1388861 d!397285))

(declare-fun d!397287 () Bool)

(declare-fun list!5474 (Conc!4643) List!14163)

(assert (=> d!397287 (= (list!5469 (_1!7735 lt!462073)) (list!5474 (c!228562 (_1!7735 lt!462073))))))

(declare-fun bs!337326 () Bool)

(assert (= bs!337326 d!397287))

(declare-fun m!1564519 () Bool)

(assert (=> bs!337326 m!1564519))

(assert (=> b!1388861 d!397287))

(declare-fun b!1389683 () Bool)

(declare-fun e!887644 () Rule!4682)

(assert (=> b!1389683 (= e!887644 (h!19497 rules!2550))))

(declare-fun b!1389684 () Bool)

(declare-fun e!887643 () Bool)

(declare-fun lt!462348 () Rule!4682)

(assert (=> b!1389684 (= e!887643 (contains!2704 rules!2550 lt!462348))))

(declare-fun b!1389685 () Bool)

(declare-fun lt!462349 () Unit!20353)

(declare-fun Unit!20360 () Unit!20353)

(assert (=> b!1389685 (= lt!462349 Unit!20360)))

(assert (=> b!1389685 false))

(declare-fun e!887645 () Rule!4682)

(declare-fun head!2541 (List!14162) Rule!4682)

(assert (=> b!1389685 (= e!887645 (head!2541 rules!2550))))

(declare-fun b!1389686 () Bool)

(declare-fun e!887642 () Bool)

(assert (=> b!1389686 (= e!887642 (dynLambda!6467 lambda!59990 (h!19497 rules!2550)))))

(declare-fun b!1389687 () Bool)

(assert (=> b!1389687 (= e!887645 (getWitness!414 (t!122365 rules!2550) lambda!59990))))

(declare-fun b!1389682 () Bool)

(assert (=> b!1389682 (= e!887644 e!887645)))

(declare-fun c!228729 () Bool)

(assert (=> b!1389682 (= c!228729 ((_ is Cons!14096) rules!2550))))

(declare-fun d!397289 () Bool)

(assert (=> d!397289 e!887643))

(declare-fun res!627277 () Bool)

(assert (=> d!397289 (=> (not res!627277) (not e!887643))))

(assert (=> d!397289 (= res!627277 (dynLambda!6467 lambda!59990 lt!462348))))

(assert (=> d!397289 (= lt!462348 e!887644)))

(declare-fun c!228728 () Bool)

(assert (=> d!397289 (= c!228728 e!887642)))

(declare-fun res!627278 () Bool)

(assert (=> d!397289 (=> (not res!627278) (not e!887642))))

(assert (=> d!397289 (= res!627278 ((_ is Cons!14096) rules!2550))))

(assert (=> d!397289 (exists!526 rules!2550 lambda!59990)))

(assert (=> d!397289 (= (getWitness!414 rules!2550 lambda!59990) lt!462348)))

(assert (= (and d!397289 res!627278) b!1389686))

(assert (= (and d!397289 c!228728) b!1389683))

(assert (= (and d!397289 (not c!228728)) b!1389682))

(assert (= (and b!1389682 c!228729) b!1389687))

(assert (= (and b!1389682 (not c!228729)) b!1389685))

(assert (= (and d!397289 res!627277) b!1389684))

(declare-fun b_lambda!43217 () Bool)

(assert (=> (not b_lambda!43217) (not b!1389686)))

(declare-fun b_lambda!43219 () Bool)

(assert (=> (not b_lambda!43219) (not d!397289)))

(declare-fun m!1564521 () Bool)

(assert (=> b!1389687 m!1564521))

(declare-fun m!1564523 () Bool)

(assert (=> b!1389684 m!1564523))

(declare-fun m!1564525 () Bool)

(assert (=> b!1389685 m!1564525))

(declare-fun m!1564527 () Bool)

(assert (=> d!397289 m!1564527))

(assert (=> d!397289 m!1563459))

(declare-fun m!1564529 () Bool)

(assert (=> b!1389686 m!1564529))

(assert (=> b!1388861 d!397289))

(declare-fun d!397291 () Bool)

(declare-fun e!887648 () Bool)

(assert (=> d!397291 e!887648))

(declare-fun res!627281 () Bool)

(assert (=> d!397291 (=> (not res!627281) (not e!887648))))

(declare-fun lt!462352 () BalanceConc!9226)

(assert (=> d!397291 (= res!627281 (= (list!5469 lt!462352) (Cons!14097 t1!34 Nil!14097)))))

(declare-fun singleton!478 (Token!4544) BalanceConc!9226)

(assert (=> d!397291 (= lt!462352 (singleton!478 t1!34))))

(assert (=> d!397291 (= (singletonSeq!1088 t1!34) lt!462352)))

(declare-fun b!1389690 () Bool)

(declare-fun isBalanced!1372 (Conc!4643) Bool)

(assert (=> b!1389690 (= e!887648 (isBalanced!1372 (c!228562 lt!462352)))))

(assert (= (and d!397291 res!627281) b!1389690))

(declare-fun m!1564531 () Bool)

(assert (=> d!397291 m!1564531))

(declare-fun m!1564533 () Bool)

(assert (=> d!397291 m!1564533))

(declare-fun m!1564535 () Bool)

(assert (=> b!1389690 m!1564535))

(assert (=> b!1388861 d!397291))

(declare-fun d!397293 () Bool)

(declare-fun res!627286 () Bool)

(declare-fun e!887653 () Bool)

(assert (=> d!397293 (=> res!627286 e!887653)))

(assert (=> d!397293 (= res!627286 (not ((_ is Cons!14096) rules!2550)))))

(assert (=> d!397293 (= (sepAndNonSepRulesDisjointChars!814 rules!2550 rules!2550) e!887653)))

(declare-fun b!1389695 () Bool)

(declare-fun e!887654 () Bool)

(assert (=> b!1389695 (= e!887653 e!887654)))

(declare-fun res!627287 () Bool)

(assert (=> b!1389695 (=> (not res!627287) (not e!887654))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!388 (Rule!4682 List!14162) Bool)

(assert (=> b!1389695 (= res!627287 (ruleDisjointCharsFromAllFromOtherType!388 (h!19497 rules!2550) rules!2550))))

(declare-fun b!1389696 () Bool)

(assert (=> b!1389696 (= e!887654 (sepAndNonSepRulesDisjointChars!814 rules!2550 (t!122365 rules!2550)))))

(assert (= (and d!397293 (not res!627286)) b!1389695))

(assert (= (and b!1389695 res!627287) b!1389696))

(declare-fun m!1564537 () Bool)

(assert (=> b!1389695 m!1564537))

(declare-fun m!1564539 () Bool)

(assert (=> b!1389696 m!1564539))

(assert (=> b!1388867 d!397293))

(declare-fun d!397295 () Bool)

(assert (=> d!397295 (= (inv!18430 (tag!2703 (rule!4202 t2!34))) (= (mod (str.len (value!79200 (tag!2703 (rule!4202 t2!34)))) 2) 0))))

(assert (=> b!1388846 d!397295))

(declare-fun d!397297 () Bool)

(declare-fun res!627288 () Bool)

(declare-fun e!887655 () Bool)

(assert (=> d!397297 (=> (not res!627288) (not e!887655))))

(assert (=> d!397297 (= res!627288 (semiInverseModEq!946 (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (toValue!3728 (transformation!2441 (rule!4202 t2!34)))))))

(assert (=> d!397297 (= (inv!18434 (transformation!2441 (rule!4202 t2!34))) e!887655)))

(declare-fun b!1389697 () Bool)

(assert (=> b!1389697 (= e!887655 (equivClasses!905 (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (toValue!3728 (transformation!2441 (rule!4202 t2!34)))))))

(assert (= (and d!397297 res!627288) b!1389697))

(declare-fun m!1564541 () Bool)

(assert (=> d!397297 m!1564541))

(declare-fun m!1564543 () Bool)

(assert (=> b!1389697 m!1564543))

(assert (=> b!1388846 d!397297))

(declare-fun d!397299 () Bool)

(assert (=> d!397299 (= (isEmpty!8533 rules!2550) ((_ is Nil!14096) rules!2550))))

(assert (=> b!1388889 d!397299))

(declare-fun d!397301 () Bool)

(declare-fun lt!462353 () Bool)

(assert (=> d!397301 (= lt!462353 (select (content!2073 rules!2550) lt!462077))))

(declare-fun e!887656 () Bool)

(assert (=> d!397301 (= lt!462353 e!887656)))

(declare-fun res!627289 () Bool)

(assert (=> d!397301 (=> (not res!627289) (not e!887656))))

(assert (=> d!397301 (= res!627289 ((_ is Cons!14096) rules!2550))))

(assert (=> d!397301 (= (contains!2704 rules!2550 lt!462077) lt!462353)))

(declare-fun b!1389698 () Bool)

(declare-fun e!887657 () Bool)

(assert (=> b!1389698 (= e!887656 e!887657)))

(declare-fun res!627290 () Bool)

(assert (=> b!1389698 (=> res!627290 e!887657)))

(assert (=> b!1389698 (= res!627290 (= (h!19497 rules!2550) lt!462077))))

(declare-fun b!1389699 () Bool)

(assert (=> b!1389699 (= e!887657 (contains!2704 (t!122365 rules!2550) lt!462077))))

(assert (= (and d!397301 res!627289) b!1389698))

(assert (= (and b!1389698 (not res!627290)) b!1389699))

(assert (=> d!397301 m!1563725))

(declare-fun m!1564545 () Bool)

(assert (=> d!397301 m!1564545))

(declare-fun m!1564547 () Bool)

(assert (=> b!1389699 m!1564547))

(assert (=> b!1388868 d!397301))

(declare-fun bs!337327 () Bool)

(declare-fun d!397303 () Bool)

(assert (= bs!337327 (and d!397303 b!1388847)))

(declare-fun lambda!60032 () Int)

(assert (=> bs!337327 (not (= lambda!60032 lambda!59990))))

(declare-fun bs!337328 () Bool)

(assert (= bs!337328 (and d!397303 b!1388891)))

(assert (=> bs!337328 (not (= lambda!60032 lambda!59991))))

(assert (=> d!397303 true))

(declare-fun order!8623 () Int)

(declare-fun dynLambda!6477 (Int Int) Int)

(assert (=> d!397303 (< (dynLambda!6477 order!8623 lambda!59990) (dynLambda!6477 order!8623 lambda!60032))))

(assert (=> d!397303 (= (exists!526 rules!2550 lambda!59990) (not (forall!3430 rules!2550 lambda!60032)))))

(declare-fun bs!337329 () Bool)

(assert (= bs!337329 d!397303))

(declare-fun m!1564549 () Bool)

(assert (=> bs!337329 m!1564549))

(assert (=> b!1388847 d!397303))

(declare-fun bs!337330 () Bool)

(declare-fun d!397305 () Bool)

(assert (= bs!337330 (and d!397305 b!1388847)))

(declare-fun lambda!60035 () Int)

(assert (=> bs!337330 (not (= lambda!60035 lambda!59990))))

(declare-fun bs!337331 () Bool)

(assert (= bs!337331 (and d!397305 b!1388891)))

(assert (=> bs!337331 (not (= lambda!60035 lambda!59991))))

(declare-fun bs!337332 () Bool)

(assert (= bs!337332 (and d!397305 d!397303)))

(assert (=> bs!337332 (not (= lambda!60035 lambda!60032))))

(assert (=> d!397305 true))

(assert (=> d!397305 true))

(declare-fun order!8625 () Int)

(declare-fun dynLambda!6478 (Int Int) Int)

(assert (=> d!397305 (< (dynLambda!6478 order!8625 lambda!59988) (dynLambda!6477 order!8623 lambda!60035))))

(assert (=> d!397305 (exists!526 rules!2550 lambda!60035)))

(declare-fun lt!462356 () Unit!20353)

(declare-fun choose!8543 (List!14162 Int Regex!3755) Unit!20353)

(assert (=> d!397305 (= lt!462356 (choose!8543 rules!2550 lambda!59988 lt!462096))))

(assert (=> d!397305 (contains!2705 (map!3122 rules!2550 lambda!59988) lt!462096)))

(assert (=> d!397305 (= (lemmaMapContains!152 rules!2550 lambda!59988 lt!462096) lt!462356)))

(declare-fun bs!337333 () Bool)

(assert (= bs!337333 d!397305))

(declare-fun m!1564551 () Bool)

(assert (=> bs!337333 m!1564551))

(declare-fun m!1564553 () Bool)

(assert (=> bs!337333 m!1564553))

(assert (=> bs!337333 m!1563511))

(assert (=> bs!337333 m!1563511))

(assert (=> bs!337333 m!1563513))

(assert (=> b!1388847 d!397305))

(declare-fun d!397307 () Bool)

(declare-fun prefixMatchZipperSequence!286 (Regex!3755 BalanceConc!9224) Bool)

(declare-fun ++!3662 (BalanceConc!9224 BalanceConc!9224) BalanceConc!9224)

(declare-fun singletonSeq!1090 (C!7800) BalanceConc!9224)

(assert (=> d!397307 (= (separableTokensPredicate!419 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!286 (rulesRegex!324 thiss!19762 rules!2550) (++!3662 (charsOf!1413 t1!34) (singletonSeq!1090 (apply!3539 (charsOf!1413 t2!34) 0))))))))

(declare-fun bs!337334 () Bool)

(assert (= bs!337334 d!397307))

(assert (=> bs!337334 m!1563451))

(declare-fun m!1564555 () Bool)

(assert (=> bs!337334 m!1564555))

(assert (=> bs!337334 m!1563431))

(assert (=> bs!337334 m!1563439))

(declare-fun m!1564557 () Bool)

(assert (=> bs!337334 m!1564557))

(declare-fun m!1564559 () Bool)

(assert (=> bs!337334 m!1564559))

(assert (=> bs!337334 m!1563451))

(assert (=> bs!337334 m!1564555))

(declare-fun m!1564561 () Bool)

(assert (=> bs!337334 m!1564561))

(assert (=> bs!337334 m!1563431))

(assert (=> bs!337334 m!1564561))

(assert (=> bs!337334 m!1564557))

(assert (=> bs!337334 m!1563439))

(assert (=> b!1388890 d!397307))

(declare-fun d!397309 () Bool)

(assert (=> d!397309 (= (list!5469 (_1!7735 lt!462093)) (list!5474 (c!228562 (_1!7735 lt!462093))))))

(declare-fun bs!337335 () Bool)

(assert (= bs!337335 d!397309))

(declare-fun m!1564563 () Bool)

(assert (=> bs!337335 m!1564563))

(assert (=> b!1388848 d!397309))

(declare-fun b!1389706 () Bool)

(declare-fun e!887659 () Bool)

(declare-fun lt!462357 () tuple2!13698)

(assert (=> b!1389706 (= e!887659 (not (isEmpty!8543 (_1!7735 lt!462357))))))

(declare-fun b!1389707 () Bool)

(declare-fun e!887658 () Bool)

(assert (=> b!1389707 (= e!887658 (= (_2!7735 lt!462357) lt!462084))))

(declare-fun b!1389708 () Bool)

(assert (=> b!1389708 (= e!887658 e!887659)))

(declare-fun res!627292 () Bool)

(assert (=> b!1389708 (= res!627292 (< (size!11580 (_2!7735 lt!462357)) (size!11580 lt!462084)))))

(assert (=> b!1389708 (=> (not res!627292) (not e!887659))))

(declare-fun e!887660 () Bool)

(declare-fun b!1389709 () Bool)

(assert (=> b!1389709 (= e!887660 (= (list!5470 (_2!7735 lt!462357)) (_2!7737 (lexList!650 thiss!19762 rules!2550 (list!5470 lt!462084)))))))

(declare-fun d!397311 () Bool)

(assert (=> d!397311 e!887660))

(declare-fun res!627291 () Bool)

(assert (=> d!397311 (=> (not res!627291) (not e!887660))))

(assert (=> d!397311 (= res!627291 e!887658)))

(declare-fun c!228730 () Bool)

(assert (=> d!397311 (= c!228730 (> (size!11587 (_1!7735 lt!462357)) 0))))

(assert (=> d!397311 (= lt!462357 (lexTailRecV2!429 thiss!19762 rules!2550 lt!462084 (BalanceConc!9225 Empty!4642) lt!462084 (BalanceConc!9227 Empty!4643)))))

(assert (=> d!397311 (= (lex!961 thiss!19762 rules!2550 lt!462084) lt!462357)))

(declare-fun b!1389710 () Bool)

(declare-fun res!627293 () Bool)

(assert (=> b!1389710 (=> (not res!627293) (not e!887660))))

(assert (=> b!1389710 (= res!627293 (= (list!5469 (_1!7735 lt!462357)) (_1!7737 (lexList!650 thiss!19762 rules!2550 (list!5470 lt!462084)))))))

(assert (= (and d!397311 c!228730) b!1389708))

(assert (= (and d!397311 (not c!228730)) b!1389707))

(assert (= (and b!1389708 res!627292) b!1389706))

(assert (= (and d!397311 res!627291) b!1389710))

(assert (= (and b!1389710 res!627293) b!1389709))

(declare-fun m!1564565 () Bool)

(assert (=> b!1389710 m!1564565))

(assert (=> b!1389710 m!1563507))

(assert (=> b!1389710 m!1563507))

(assert (=> b!1389710 m!1563509))

(declare-fun m!1564567 () Bool)

(assert (=> b!1389708 m!1564567))

(declare-fun m!1564569 () Bool)

(assert (=> b!1389708 m!1564569))

(declare-fun m!1564571 () Bool)

(assert (=> d!397311 m!1564571))

(declare-fun m!1564573 () Bool)

(assert (=> d!397311 m!1564573))

(declare-fun m!1564575 () Bool)

(assert (=> b!1389706 m!1564575))

(declare-fun m!1564577 () Bool)

(assert (=> b!1389709 m!1564577))

(assert (=> b!1389709 m!1563507))

(assert (=> b!1389709 m!1563507))

(assert (=> b!1389709 m!1563509))

(assert (=> b!1388848 d!397311))

(declare-fun d!397313 () Bool)

(declare-fun lt!462358 () BalanceConc!9224)

(assert (=> d!397313 (= (list!5470 lt!462358) (printList!624 thiss!19762 (list!5469 (singletonSeq!1088 t2!34))))))

(assert (=> d!397313 (= lt!462358 (printTailRec!606 thiss!19762 (singletonSeq!1088 t2!34) 0 (BalanceConc!9225 Empty!4642)))))

(assert (=> d!397313 (= (print!900 thiss!19762 (singletonSeq!1088 t2!34)) lt!462358)))

(declare-fun bs!337336 () Bool)

(assert (= bs!337336 d!397313))

(declare-fun m!1564579 () Bool)

(assert (=> bs!337336 m!1564579))

(assert (=> bs!337336 m!1563475))

(assert (=> bs!337336 m!1563911))

(assert (=> bs!337336 m!1563911))

(declare-fun m!1564581 () Bool)

(assert (=> bs!337336 m!1564581))

(assert (=> bs!337336 m!1563475))

(declare-fun m!1564583 () Bool)

(assert (=> bs!337336 m!1564583))

(assert (=> b!1388848 d!397313))

(declare-fun d!397315 () Bool)

(declare-fun e!887661 () Bool)

(assert (=> d!397315 e!887661))

(declare-fun res!627294 () Bool)

(assert (=> d!397315 (=> (not res!627294) (not e!887661))))

(declare-fun lt!462359 () BalanceConc!9226)

(assert (=> d!397315 (= res!627294 (= (list!5469 lt!462359) (Cons!14097 t2!34 Nil!14097)))))

(assert (=> d!397315 (= lt!462359 (singleton!478 t2!34))))

(assert (=> d!397315 (= (singletonSeq!1088 t2!34) lt!462359)))

(declare-fun b!1389711 () Bool)

(assert (=> b!1389711 (= e!887661 (isBalanced!1372 (c!228562 lt!462359)))))

(assert (= (and d!397315 res!627294) b!1389711))

(declare-fun m!1564585 () Bool)

(assert (=> d!397315 m!1564585))

(declare-fun m!1564587 () Bool)

(assert (=> d!397315 m!1564587))

(declare-fun m!1564589 () Bool)

(assert (=> b!1389711 m!1564589))

(assert (=> b!1388848 d!397315))

(declare-fun d!397317 () Bool)

(declare-fun lt!462360 () Bool)

(assert (=> d!397317 (= lt!462360 (isEmpty!8537 (list!5470 (_2!7735 lt!462093))))))

(assert (=> d!397317 (= lt!462360 (isEmpty!8539 (c!228560 (_2!7735 lt!462093))))))

(assert (=> d!397317 (= (isEmpty!8532 (_2!7735 lt!462093)) lt!462360)))

(declare-fun bs!337337 () Bool)

(assert (= bs!337337 d!397317))

(declare-fun m!1564591 () Bool)

(assert (=> bs!337337 m!1564591))

(assert (=> bs!337337 m!1564591))

(declare-fun m!1564593 () Bool)

(assert (=> bs!337337 m!1564593))

(declare-fun m!1564595 () Bool)

(assert (=> bs!337337 m!1564595))

(assert (=> b!1388865 d!397317))

(declare-fun d!397319 () Bool)

(declare-fun lt!462362 () Bool)

(declare-fun e!887663 () Bool)

(assert (=> d!397319 (= lt!462362 e!887663)))

(declare-fun res!627296 () Bool)

(assert (=> d!397319 (=> (not res!627296) (not e!887663))))

(assert (=> d!397319 (= res!627296 (= (list!5469 (_1!7735 (lex!961 thiss!19762 rules!2550 (print!900 thiss!19762 (singletonSeq!1088 t1!34))))) (list!5469 (singletonSeq!1088 t1!34))))))

(declare-fun e!887662 () Bool)

(assert (=> d!397319 (= lt!462362 e!887662)))

(declare-fun res!627295 () Bool)

(assert (=> d!397319 (=> (not res!627295) (not e!887662))))

(declare-fun lt!462361 () tuple2!13698)

(assert (=> d!397319 (= res!627295 (= (size!11587 (_1!7735 lt!462361)) 1))))

(assert (=> d!397319 (= lt!462361 (lex!961 thiss!19762 rules!2550 (print!900 thiss!19762 (singletonSeq!1088 t1!34))))))

(assert (=> d!397319 (not (isEmpty!8533 rules!2550))))

(assert (=> d!397319 (= (rulesProduceIndividualToken!1105 thiss!19762 rules!2550 t1!34) lt!462362)))

(declare-fun b!1389712 () Bool)

(declare-fun res!627297 () Bool)

(assert (=> b!1389712 (=> (not res!627297) (not e!887662))))

(assert (=> b!1389712 (= res!627297 (= (apply!3545 (_1!7735 lt!462361) 0) t1!34))))

(declare-fun b!1389713 () Bool)

(assert (=> b!1389713 (= e!887662 (isEmpty!8532 (_2!7735 lt!462361)))))

(declare-fun b!1389714 () Bool)

(assert (=> b!1389714 (= e!887663 (isEmpty!8532 (_2!7735 (lex!961 thiss!19762 rules!2550 (print!900 thiss!19762 (singletonSeq!1088 t1!34))))))))

(assert (= (and d!397319 res!627295) b!1389712))

(assert (= (and b!1389712 res!627297) b!1389713))

(assert (= (and d!397319 res!627296) b!1389714))

(declare-fun m!1564597 () Bool)

(assert (=> d!397319 m!1564597))

(assert (=> d!397319 m!1563537))

(assert (=> d!397319 m!1563539))

(assert (=> d!397319 m!1563537))

(assert (=> d!397319 m!1564513))

(assert (=> d!397319 m!1563537))

(assert (=> d!397319 m!1563549))

(assert (=> d!397319 m!1563539))

(declare-fun m!1564599 () Bool)

(assert (=> d!397319 m!1564599))

(declare-fun m!1564601 () Bool)

(assert (=> d!397319 m!1564601))

(declare-fun m!1564603 () Bool)

(assert (=> b!1389712 m!1564603))

(declare-fun m!1564605 () Bool)

(assert (=> b!1389713 m!1564605))

(assert (=> b!1389714 m!1563537))

(assert (=> b!1389714 m!1563537))

(assert (=> b!1389714 m!1563539))

(assert (=> b!1389714 m!1563539))

(assert (=> b!1389714 m!1564599))

(declare-fun m!1564607 () Bool)

(assert (=> b!1389714 m!1564607))

(assert (=> b!1388887 d!397319))

(declare-fun d!397321 () Bool)

(declare-fun lt!462363 () Bool)

(assert (=> d!397321 (= lt!462363 (select (content!2072 (usedCharacters!252 (regex!2441 (rule!4202 t1!34)))) lt!462095))))

(declare-fun e!887665 () Bool)

(assert (=> d!397321 (= lt!462363 e!887665)))

(declare-fun res!627299 () Bool)

(assert (=> d!397321 (=> (not res!627299) (not e!887665))))

(assert (=> d!397321 (= res!627299 ((_ is Cons!14094) (usedCharacters!252 (regex!2441 (rule!4202 t1!34)))))))

(assert (=> d!397321 (= (contains!2703 (usedCharacters!252 (regex!2441 (rule!4202 t1!34))) lt!462095) lt!462363)))

(declare-fun b!1389715 () Bool)

(declare-fun e!887664 () Bool)

(assert (=> b!1389715 (= e!887665 e!887664)))

(declare-fun res!627298 () Bool)

(assert (=> b!1389715 (=> res!627298 e!887664)))

(assert (=> b!1389715 (= res!627298 (= (h!19495 (usedCharacters!252 (regex!2441 (rule!4202 t1!34)))) lt!462095))))

(declare-fun b!1389716 () Bool)

(assert (=> b!1389716 (= e!887664 (contains!2703 (t!122363 (usedCharacters!252 (regex!2441 (rule!4202 t1!34)))) lt!462095))))

(assert (= (and d!397321 res!627299) b!1389715))

(assert (= (and b!1389715 (not res!627298)) b!1389716))

(assert (=> d!397321 m!1563491))

(declare-fun m!1564609 () Bool)

(assert (=> d!397321 m!1564609))

(declare-fun m!1564611 () Bool)

(assert (=> d!397321 m!1564611))

(declare-fun m!1564613 () Bool)

(assert (=> b!1389716 m!1564613))

(assert (=> b!1388866 d!397321))

(declare-fun bm!92949 () Bool)

(declare-fun call!92956 () List!14160)

(declare-fun c!228733 () Bool)

(assert (=> bm!92949 (= call!92956 (usedCharacters!252 (ite c!228733 (regOne!8023 (regex!2441 (rule!4202 t1!34))) (regTwo!8022 (regex!2441 (rule!4202 t1!34))))))))

(declare-fun b!1389717 () Bool)

(declare-fun e!887669 () List!14160)

(declare-fun e!887667 () List!14160)

(assert (=> b!1389717 (= e!887669 e!887667)))

(declare-fun c!228732 () Bool)

(assert (=> b!1389717 (= c!228732 ((_ is ElementMatch!3755) (regex!2441 (rule!4202 t1!34))))))

(declare-fun b!1389718 () Bool)

(declare-fun e!887666 () List!14160)

(declare-fun call!92957 () List!14160)

(assert (=> b!1389718 (= e!887666 call!92957)))

(declare-fun b!1389719 () Bool)

(declare-fun e!887668 () List!14160)

(declare-fun call!92955 () List!14160)

(assert (=> b!1389719 (= e!887668 call!92955)))

(declare-fun b!1389720 () Bool)

(assert (=> b!1389720 (= e!887667 (Cons!14094 (c!228561 (regex!2441 (rule!4202 t1!34))) Nil!14094))))

(declare-fun b!1389721 () Bool)

(declare-fun c!228734 () Bool)

(assert (=> b!1389721 (= c!228734 ((_ is Star!3755) (regex!2441 (rule!4202 t1!34))))))

(assert (=> b!1389721 (= e!887667 e!887668)))

(declare-fun b!1389722 () Bool)

(assert (=> b!1389722 (= e!887668 e!887666)))

(assert (=> b!1389722 (= c!228733 ((_ is Union!3755) (regex!2441 (rule!4202 t1!34))))))

(declare-fun bm!92950 () Bool)

(assert (=> bm!92950 (= call!92955 (usedCharacters!252 (ite c!228734 (reg!4084 (regex!2441 (rule!4202 t1!34))) (ite c!228733 (regTwo!8023 (regex!2441 (rule!4202 t1!34))) (regOne!8022 (regex!2441 (rule!4202 t1!34)))))))))

(declare-fun b!1389724 () Bool)

(assert (=> b!1389724 (= e!887666 call!92957)))

(declare-fun b!1389723 () Bool)

(assert (=> b!1389723 (= e!887669 Nil!14094)))

(declare-fun d!397323 () Bool)

(declare-fun c!228731 () Bool)

(assert (=> d!397323 (= c!228731 (or ((_ is EmptyExpr!3755) (regex!2441 (rule!4202 t1!34))) ((_ is EmptyLang!3755) (regex!2441 (rule!4202 t1!34)))))))

(assert (=> d!397323 (= (usedCharacters!252 (regex!2441 (rule!4202 t1!34))) e!887669)))

(declare-fun bm!92951 () Bool)

(declare-fun call!92954 () List!14160)

(assert (=> bm!92951 (= call!92957 (++!3660 (ite c!228733 call!92956 call!92954) (ite c!228733 call!92954 call!92956)))))

(declare-fun bm!92952 () Bool)

(assert (=> bm!92952 (= call!92954 call!92955)))

(assert (= (and d!397323 c!228731) b!1389723))

(assert (= (and d!397323 (not c!228731)) b!1389717))

(assert (= (and b!1389717 c!228732) b!1389720))

(assert (= (and b!1389717 (not c!228732)) b!1389721))

(assert (= (and b!1389721 c!228734) b!1389719))

(assert (= (and b!1389721 (not c!228734)) b!1389722))

(assert (= (and b!1389722 c!228733) b!1389718))

(assert (= (and b!1389722 (not c!228733)) b!1389724))

(assert (= (or b!1389718 b!1389724) bm!92949))

(assert (= (or b!1389718 b!1389724) bm!92952))

(assert (= (or b!1389718 b!1389724) bm!92951))

(assert (= (or b!1389719 bm!92952) bm!92950))

(declare-fun m!1564615 () Bool)

(assert (=> bm!92949 m!1564615))

(declare-fun m!1564617 () Bool)

(assert (=> bm!92950 m!1564617))

(declare-fun m!1564619 () Bool)

(assert (=> bm!92951 m!1564619))

(assert (=> b!1388866 d!397323))

(declare-fun d!397325 () Bool)

(declare-fun lt!462364 () Bool)

(assert (=> d!397325 (= lt!462364 (select (content!2072 lt!462075) (head!2537 lt!462075)))))

(declare-fun e!887671 () Bool)

(assert (=> d!397325 (= lt!462364 e!887671)))

(declare-fun res!627301 () Bool)

(assert (=> d!397325 (=> (not res!627301) (not e!887671))))

(assert (=> d!397325 (= res!627301 ((_ is Cons!14094) lt!462075))))

(assert (=> d!397325 (= (contains!2703 lt!462075 (head!2537 lt!462075)) lt!462364)))

(declare-fun b!1389725 () Bool)

(declare-fun e!887670 () Bool)

(assert (=> b!1389725 (= e!887671 e!887670)))

(declare-fun res!627300 () Bool)

(assert (=> b!1389725 (=> res!627300 e!887670)))

(assert (=> b!1389725 (= res!627300 (= (h!19495 lt!462075) (head!2537 lt!462075)))))

(declare-fun b!1389726 () Bool)

(assert (=> b!1389726 (= e!887670 (contains!2703 (t!122363 lt!462075) (head!2537 lt!462075)))))

(assert (= (and d!397325 res!627301) b!1389725))

(assert (= (and b!1389725 (not res!627300)) b!1389726))

(declare-fun m!1564621 () Bool)

(assert (=> d!397325 m!1564621))

(assert (=> d!397325 m!1563455))

(declare-fun m!1564623 () Bool)

(assert (=> d!397325 m!1564623))

(assert (=> b!1389726 m!1563455))

(declare-fun m!1564625 () Bool)

(assert (=> b!1389726 m!1564625))

(assert (=> b!1388845 d!397325))

(declare-fun d!397327 () Bool)

(assert (=> d!397327 (= (head!2537 lt!462075) (h!19495 lt!462075))))

(assert (=> b!1388845 d!397327))

(declare-fun b!1389727 () Bool)

(declare-fun res!627302 () Bool)

(declare-fun e!887674 () Bool)

(assert (=> b!1389727 (=> res!627302 e!887674)))

(assert (=> b!1389727 (= res!627302 (not ((_ is IntegerValue!7595) (value!79201 t2!34))))))

(declare-fun e!887672 () Bool)

(assert (=> b!1389727 (= e!887672 e!887674)))

(declare-fun b!1389728 () Bool)

(declare-fun e!887673 () Bool)

(assert (=> b!1389728 (= e!887673 (inv!16 (value!79201 t2!34)))))

(declare-fun b!1389729 () Bool)

(assert (=> b!1389729 (= e!887672 (inv!17 (value!79201 t2!34)))))

(declare-fun d!397329 () Bool)

(declare-fun c!228735 () Bool)

(assert (=> d!397329 (= c!228735 ((_ is IntegerValue!7593) (value!79201 t2!34)))))

(assert (=> d!397329 (= (inv!21 (value!79201 t2!34)) e!887673)))

(declare-fun b!1389730 () Bool)

(assert (=> b!1389730 (= e!887673 e!887672)))

(declare-fun c!228736 () Bool)

(assert (=> b!1389730 (= c!228736 ((_ is IntegerValue!7594) (value!79201 t2!34)))))

(declare-fun b!1389731 () Bool)

(assert (=> b!1389731 (= e!887674 (inv!15 (value!79201 t2!34)))))

(assert (= (and d!397329 c!228735) b!1389728))

(assert (= (and d!397329 (not c!228735)) b!1389730))

(assert (= (and b!1389730 c!228736) b!1389729))

(assert (= (and b!1389730 (not c!228736)) b!1389727))

(assert (= (and b!1389727 (not res!627302)) b!1389731))

(declare-fun m!1564627 () Bool)

(assert (=> b!1389728 m!1564627))

(declare-fun m!1564629 () Bool)

(assert (=> b!1389729 m!1564629))

(declare-fun m!1564631 () Bool)

(assert (=> b!1389731 m!1564631))

(assert (=> b!1388888 d!397329))

(declare-fun b!1389736 () Bool)

(declare-fun e!887677 () Bool)

(declare-fun tp_is_empty!6783 () Bool)

(declare-fun tp!397002 () Bool)

(assert (=> b!1389736 (= e!887677 (and tp_is_empty!6783 tp!397002))))

(assert (=> b!1388851 (= tp!396946 e!887677)))

(assert (= (and b!1388851 ((_ is Cons!14094) (originalCharacters!3303 t1!34))) b!1389736))

(declare-fun b!1389749 () Bool)

(declare-fun e!887680 () Bool)

(declare-fun tp!397014 () Bool)

(assert (=> b!1389749 (= e!887680 tp!397014)))

(declare-fun b!1389750 () Bool)

(declare-fun tp!397017 () Bool)

(declare-fun tp!397016 () Bool)

(assert (=> b!1389750 (= e!887680 (and tp!397017 tp!397016))))

(declare-fun b!1389748 () Bool)

(declare-fun tp!397013 () Bool)

(declare-fun tp!397015 () Bool)

(assert (=> b!1389748 (= e!887680 (and tp!397013 tp!397015))))

(declare-fun b!1389747 () Bool)

(assert (=> b!1389747 (= e!887680 tp_is_empty!6783)))

(assert (=> b!1388846 (= tp!396941 e!887680)))

(assert (= (and b!1388846 ((_ is ElementMatch!3755) (regex!2441 (rule!4202 t2!34)))) b!1389747))

(assert (= (and b!1388846 ((_ is Concat!6287) (regex!2441 (rule!4202 t2!34)))) b!1389748))

(assert (= (and b!1388846 ((_ is Star!3755) (regex!2441 (rule!4202 t2!34)))) b!1389749))

(assert (= (and b!1388846 ((_ is Union!3755) (regex!2441 (rule!4202 t2!34)))) b!1389750))

(declare-fun b!1389761 () Bool)

(declare-fun b_free!33779 () Bool)

(declare-fun b_next!34483 () Bool)

(assert (=> b!1389761 (= b_free!33779 (not b_next!34483))))

(declare-fun tp!397028 () Bool)

(declare-fun b_and!93107 () Bool)

(assert (=> b!1389761 (= tp!397028 b_and!93107)))

(declare-fun b_free!33781 () Bool)

(declare-fun b_next!34485 () Bool)

(assert (=> b!1389761 (= b_free!33781 (not b_next!34485))))

(declare-fun tb!72797 () Bool)

(declare-fun t!122401 () Bool)

(assert (=> (and b!1389761 (= (toChars!3587 (transformation!2441 (h!19497 (t!122365 rules!2550)))) (toChars!3587 (transformation!2441 (rule!4202 t2!34)))) t!122401) tb!72797))

(declare-fun result!88458 () Bool)

(assert (= result!88458 result!88428))

(assert (=> d!397105 t!122401))

(declare-fun t!122403 () Bool)

(declare-fun tb!72799 () Bool)

(assert (=> (and b!1389761 (= (toChars!3587 (transformation!2441 (h!19497 (t!122365 rules!2550)))) (toChars!3587 (transformation!2441 (rule!4202 t1!34)))) t!122403) tb!72799))

(declare-fun result!88460 () Bool)

(assert (= result!88460 result!88436))

(assert (=> d!397119 t!122403))

(assert (=> b!1389340 t!122403))

(assert (=> b!1389342 t!122401))

(declare-fun b_and!93109 () Bool)

(declare-fun tp!397026 () Bool)

(assert (=> b!1389761 (= tp!397026 (and (=> t!122401 result!88458) (=> t!122403 result!88460) b_and!93109))))

(declare-fun e!887692 () Bool)

(assert (=> b!1389761 (= e!887692 (and tp!397028 tp!397026))))

(declare-fun tp!397029 () Bool)

(declare-fun b!1389760 () Bool)

(declare-fun e!887689 () Bool)

(assert (=> b!1389760 (= e!887689 (and tp!397029 (inv!18430 (tag!2703 (h!19497 (t!122365 rules!2550)))) (inv!18434 (transformation!2441 (h!19497 (t!122365 rules!2550)))) e!887692))))

(declare-fun b!1389759 () Bool)

(declare-fun e!887691 () Bool)

(declare-fun tp!397027 () Bool)

(assert (=> b!1389759 (= e!887691 (and e!887689 tp!397027))))

(assert (=> b!1388873 (= tp!396943 e!887691)))

(assert (= b!1389760 b!1389761))

(assert (= b!1389759 b!1389760))

(assert (= (and b!1388873 ((_ is Cons!14096) (t!122365 rules!2550))) b!1389759))

(declare-fun m!1564633 () Bool)

(assert (=> b!1389760 m!1564633))

(declare-fun m!1564635 () Bool)

(assert (=> b!1389760 m!1564635))

(declare-fun b!1389764 () Bool)

(declare-fun e!887693 () Bool)

(declare-fun tp!397031 () Bool)

(assert (=> b!1389764 (= e!887693 tp!397031)))

(declare-fun b!1389765 () Bool)

(declare-fun tp!397034 () Bool)

(declare-fun tp!397033 () Bool)

(assert (=> b!1389765 (= e!887693 (and tp!397034 tp!397033))))

(declare-fun b!1389763 () Bool)

(declare-fun tp!397030 () Bool)

(declare-fun tp!397032 () Bool)

(assert (=> b!1389763 (= e!887693 (and tp!397030 tp!397032))))

(declare-fun b!1389762 () Bool)

(assert (=> b!1389762 (= e!887693 tp_is_empty!6783)))

(assert (=> b!1388863 (= tp!396942 e!887693)))

(assert (= (and b!1388863 ((_ is ElementMatch!3755) (regex!2441 (h!19497 rules!2550)))) b!1389762))

(assert (= (and b!1388863 ((_ is Concat!6287) (regex!2441 (h!19497 rules!2550)))) b!1389763))

(assert (= (and b!1388863 ((_ is Star!3755) (regex!2441 (h!19497 rules!2550)))) b!1389764))

(assert (= (and b!1388863 ((_ is Union!3755) (regex!2441 (h!19497 rules!2550)))) b!1389765))

(declare-fun b!1389768 () Bool)

(declare-fun e!887694 () Bool)

(declare-fun tp!397036 () Bool)

(assert (=> b!1389768 (= e!887694 tp!397036)))

(declare-fun b!1389769 () Bool)

(declare-fun tp!397039 () Bool)

(declare-fun tp!397038 () Bool)

(assert (=> b!1389769 (= e!887694 (and tp!397039 tp!397038))))

(declare-fun b!1389767 () Bool)

(declare-fun tp!397035 () Bool)

(declare-fun tp!397037 () Bool)

(assert (=> b!1389767 (= e!887694 (and tp!397035 tp!397037))))

(declare-fun b!1389766 () Bool)

(assert (=> b!1389766 (= e!887694 tp_is_empty!6783)))

(assert (=> b!1388870 (= tp!396940 e!887694)))

(assert (= (and b!1388870 ((_ is ElementMatch!3755) (regex!2441 (rule!4202 t1!34)))) b!1389766))

(assert (= (and b!1388870 ((_ is Concat!6287) (regex!2441 (rule!4202 t1!34)))) b!1389767))

(assert (= (and b!1388870 ((_ is Star!3755) (regex!2441 (rule!4202 t1!34)))) b!1389768))

(assert (= (and b!1388870 ((_ is Union!3755) (regex!2441 (rule!4202 t1!34)))) b!1389769))

(declare-fun b!1389770 () Bool)

(declare-fun e!887695 () Bool)

(declare-fun tp!397040 () Bool)

(assert (=> b!1389770 (= e!887695 (and tp_is_empty!6783 tp!397040))))

(assert (=> b!1388888 (= tp!396949 e!887695)))

(assert (= (and b!1388888 ((_ is Cons!14094) (originalCharacters!3303 t2!34))) b!1389770))

(declare-fun b_lambda!43221 () Bool)

(assert (= b_lambda!43169 (or (and b!1388849 b_free!33765 (= (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (toChars!3587 (transformation!2441 (rule!4202 t2!34))))) (and b!1388869 b_free!33769 (= (toChars!3587 (transformation!2441 (h!19497 rules!2550))) (toChars!3587 (transformation!2441 (rule!4202 t2!34))))) (and b!1388875 b_free!33773) (and b!1389761 b_free!33781 (= (toChars!3587 (transformation!2441 (h!19497 (t!122365 rules!2550)))) (toChars!3587 (transformation!2441 (rule!4202 t2!34))))) b_lambda!43221)))

(declare-fun b_lambda!43223 () Bool)

(assert (= b_lambda!43167 (or (and b!1388849 b_free!33765) (and b!1388869 b_free!33769 (= (toChars!3587 (transformation!2441 (h!19497 rules!2550))) (toChars!3587 (transformation!2441 (rule!4202 t1!34))))) (and b!1388875 b_free!33773 (= (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (toChars!3587 (transformation!2441 (rule!4202 t1!34))))) (and b!1389761 b_free!33781 (= (toChars!3587 (transformation!2441 (h!19497 (t!122365 rules!2550)))) (toChars!3587 (transformation!2441 (rule!4202 t1!34))))) b_lambda!43223)))

(declare-fun b_lambda!43225 () Bool)

(assert (= b_lambda!43159 (or b!1388891 b_lambda!43225)))

(declare-fun bs!337338 () Bool)

(declare-fun d!397331 () Bool)

(assert (= bs!337338 (and d!397331 b!1388891)))

(declare-fun ruleValid!604 (LexerInterface!2136 Rule!4682) Bool)

(assert (=> bs!337338 (= (dynLambda!6467 lambda!59991 lt!462077) (ruleValid!604 thiss!19762 lt!462077))))

(declare-fun m!1564637 () Bool)

(assert (=> bs!337338 m!1564637))

(assert (=> d!397073 d!397331))

(declare-fun b_lambda!43227 () Bool)

(assert (= b_lambda!43217 (or b!1388847 b_lambda!43227)))

(declare-fun bs!337339 () Bool)

(declare-fun d!397333 () Bool)

(assert (= bs!337339 (and d!397333 b!1388847)))

(assert (=> bs!337339 (= (dynLambda!6467 lambda!59990 (h!19497 rules!2550)) (= (regex!2441 (h!19497 rules!2550)) lt!462096))))

(assert (=> b!1389686 d!397333))

(declare-fun b_lambda!43229 () Bool)

(assert (= b_lambda!43183 (or b!1388881 b_lambda!43229)))

(declare-fun bs!337340 () Bool)

(declare-fun d!397335 () Bool)

(assert (= bs!337340 (and d!397335 b!1388881)))

(declare-fun res!627303 () Bool)

(declare-fun e!887696 () Bool)

(assert (=> bs!337340 (=> (not res!627303) (not e!887696))))

(assert (=> bs!337340 (= res!627303 (validRegex!1637 (h!19499 (map!3122 rules!2550 lambda!59988))))))

(assert (=> bs!337340 (= (dynLambda!6476 lambda!59989 (h!19499 (map!3122 rules!2550 lambda!59988))) e!887696)))

(declare-fun b!1389771 () Bool)

(assert (=> b!1389771 (= e!887696 (matchR!1746 (h!19499 (map!3122 rules!2550 lambda!59988)) lt!462088))))

(assert (= (and bs!337340 res!627303) b!1389771))

(declare-fun m!1564639 () Bool)

(assert (=> bs!337340 m!1564639))

(declare-fun m!1564641 () Bool)

(assert (=> b!1389771 m!1564641))

(assert (=> b!1389546 d!397335))

(declare-fun b_lambda!43231 () Bool)

(assert (= b_lambda!43163 (or (and b!1388849 b_free!33765 (= (toChars!3587 (transformation!2441 (rule!4202 t1!34))) (toChars!3587 (transformation!2441 (rule!4202 t2!34))))) (and b!1388869 b_free!33769 (= (toChars!3587 (transformation!2441 (h!19497 rules!2550))) (toChars!3587 (transformation!2441 (rule!4202 t2!34))))) (and b!1388875 b_free!33773) (and b!1389761 b_free!33781 (= (toChars!3587 (transformation!2441 (h!19497 (t!122365 rules!2550)))) (toChars!3587 (transformation!2441 (rule!4202 t2!34))))) b_lambda!43231)))

(declare-fun b_lambda!43233 () Bool)

(assert (= b_lambda!43177 (or b!1388878 b_lambda!43233)))

(declare-fun bs!337341 () Bool)

(declare-fun d!397337 () Bool)

(assert (= bs!337341 (and d!397337 b!1388878)))

(declare-fun res!627304 () Bool)

(declare-fun e!887697 () Bool)

(assert (=> bs!337341 (=> (not res!627304) (not e!887697))))

(assert (=> bs!337341 (= res!627304 (matchR!1746 lt!462076 lt!462298))))

(assert (=> bs!337341 (= (dynLambda!6471 lambda!59987 lt!462298) e!887697)))

(declare-fun b!1389772 () Bool)

(assert (=> b!1389772 (= e!887697 (isPrefix!1143 lt!462089 lt!462298))))

(assert (= (and bs!337341 res!627304) b!1389772))

(declare-fun m!1564643 () Bool)

(assert (=> bs!337341 m!1564643))

(declare-fun m!1564645 () Bool)

(assert (=> b!1389772 m!1564645))

(assert (=> d!397203 d!397337))

(declare-fun b_lambda!43235 () Bool)

(assert (= b_lambda!43219 (or b!1388847 b_lambda!43235)))

(declare-fun bs!337342 () Bool)

(declare-fun d!397339 () Bool)

(assert (= bs!337342 (and d!397339 b!1388847)))

(assert (=> bs!337342 (= (dynLambda!6467 lambda!59990 lt!462348) (= (regex!2441 lt!462348) lt!462096))))

(assert (=> d!397289 d!397339))

(declare-fun b_lambda!43237 () Bool)

(assert (= b_lambda!43157 (or b!1388891 b_lambda!43237)))

(declare-fun bs!337343 () Bool)

(declare-fun d!397341 () Bool)

(assert (= bs!337343 (and d!397341 b!1388891)))

(assert (=> bs!337343 (= (dynLambda!6467 lambda!59991 (rule!4202 t1!34)) (ruleValid!604 thiss!19762 (rule!4202 t1!34)))))

(declare-fun m!1564647 () Bool)

(assert (=> bs!337343 m!1564647))

(assert (=> d!397071 d!397341))

(declare-fun b_lambda!43239 () Bool)

(assert (= b_lambda!43155 (or b!1388891 b_lambda!43239)))

(declare-fun bs!337344 () Bool)

(declare-fun d!397343 () Bool)

(assert (= bs!337344 (and d!397343 b!1388891)))

(assert (=> bs!337344 (= (dynLambda!6467 lambda!59991 (rule!4202 t2!34)) (ruleValid!604 thiss!19762 (rule!4202 t2!34)))))

(declare-fun m!1564649 () Bool)

(assert (=> bs!337344 m!1564649))

(assert (=> d!397059 d!397343))

(declare-fun b_lambda!43241 () Bool)

(assert (= b_lambda!43185 (or b!1388881 b_lambda!43241)))

(declare-fun bs!337345 () Bool)

(declare-fun d!397345 () Bool)

(assert (= bs!337345 (and d!397345 b!1388881)))

(declare-fun res!627305 () Bool)

(declare-fun e!887698 () Bool)

(assert (=> bs!337345 (=> (not res!627305) (not e!887698))))

(assert (=> bs!337345 (= res!627305 (validRegex!1637 lt!462324))))

(assert (=> bs!337345 (= (dynLambda!6476 lambda!59989 lt!462324) e!887698)))

(declare-fun b!1389773 () Bool)

(assert (=> b!1389773 (= e!887698 (matchR!1746 lt!462324 lt!462088))))

(assert (= (and bs!337345 res!627305) b!1389773))

(declare-fun m!1564651 () Bool)

(assert (=> bs!337345 m!1564651))

(declare-fun m!1564653 () Bool)

(assert (=> b!1389773 m!1564653))

(assert (=> d!397243 d!397345))

(declare-fun b_lambda!43243 () Bool)

(assert (= b_lambda!43165 (or (and b!1388849 b_free!33765) (and b!1388869 b_free!33769 (= (toChars!3587 (transformation!2441 (h!19497 rules!2550))) (toChars!3587 (transformation!2441 (rule!4202 t1!34))))) (and b!1388875 b_free!33773 (= (toChars!3587 (transformation!2441 (rule!4202 t2!34))) (toChars!3587 (transformation!2441 (rule!4202 t1!34))))) (and b!1389761 b_free!33781 (= (toChars!3587 (transformation!2441 (h!19497 (t!122365 rules!2550)))) (toChars!3587 (transformation!2441 (rule!4202 t1!34))))) b_lambda!43243)))

(declare-fun b_lambda!43245 () Bool)

(assert (= b_lambda!43181 (or b!1388881 b_lambda!43245)))

(declare-fun bs!337346 () Bool)

(declare-fun d!397347 () Bool)

(assert (= bs!337346 (and d!397347 b!1388881)))

(assert (=> bs!337346 (= (dynLambda!6474 lambda!59988 (h!19497 rules!2550)) (regex!2441 (h!19497 rules!2550)))))

(assert (=> b!1389494 d!397347))

(check-sat (not d!397187) (not b!1389345) (not b!1389494) (not b!1389467) (not b!1389234) b_and!93085 (not b!1389132) (not b!1389699) (not b_lambda!43241) (not d!397211) (not b!1389343) (not b!1389051) (not d!397235) (not d!397035) (not b!1389759) b_and!93051 (not b!1389341) (not b!1389697) (not b_next!34483) (not d!397297) (not bm!92890) (not d!397303) (not b_next!34485) (not b!1389767) b_and!93109 (not b!1389764) (not b!1389148) (not b!1389340) (not b!1389282) (not b!1389169) (not bm!92918) (not b!1389713) (not b_lambda!43225) (not b!1389444) (not b!1389684) (not bm!92927) (not b_next!34475) (not d!397325) (not d!397239) (not b!1389037) (not d!397195) (not b!1389773) (not bs!337340) (not b_lambda!43221) (not b!1389763) (not d!397309) (not b!1389765) (not b_next!34473) (not d!397291) (not b!1389696) (not b!1389709) (not b!1389235) (not d!397019) (not b!1389264) (not d!397123) (not b!1389548) (not b_lambda!43239) (not b_lambda!43229) (not b_lambda!43237) (not d!397207) (not d!397289) (not b!1389439) (not d!397245) (not b!1389549) (not b!1389352) (not b!1389138) (not b!1389040) (not b!1389665) (not b!1389346) (not b!1389748) (not d!397119) (not d!397151) (not bm!92928) (not b!1389750) (not d!397193) (not d!397313) (not b!1389045) (not b!1389706) (not b!1389687) (not b!1389278) (not b!1389475) (not d!397133) (not b_lambda!43235) (not b!1389728) (not b!1389447) (not b!1389483) (not d!397181) (not b!1389716) (not d!397209) (not b!1389281) (not b!1389420) (not b!1388981) (not d!397101) (not d!397111) (not b!1389446) b_and!93087 (not d!397179) (not d!397103) (not b!1388984) (not b!1389421) (not bs!337341) (not b!1389443) (not d!397139) (not d!397285) (not b!1389347) (not d!397317) (not d!397311) (not b!1389376) (not b!1389749) (not d!397155) (not b!1389519) (not b!1389760) (not b_lambda!43233) (not b!1389708) (not b!1389462) (not d!397191) (not bs!337338) (not d!397315) (not d!397117) (not d!397319) (not b!1389072) (not b!1389511) (not b!1389714) (not b!1389667) (not d!397321) (not b!1389669) (not b!1389736) (not b!1389438) (not b!1389473) (not b!1389133) (not b!1389311) (not b!1389459) (not b!1389277) (not b!1389695) (not b!1388982) (not b_lambda!43223) (not d!397125) (not b_lambda!43227) (not b!1389512) (not b!1389140) (not b!1389150) (not b!1389710) b_and!93043 (not b!1389464) (not d!397127) (not d!397059) (not d!397073) (not d!397287) (not b_next!34471) (not d!397213) (not b!1389481) (not b!1389685) (not b!1389690) (not b!1389233) (not b!1389344) (not b!1389726) (not d!397307) (not bs!337345) (not bm!92916) (not b!1389517) (not b!1389038) (not b_next!34477) (not b!1389039) (not d!397237) (not b!1389769) (not bs!337344) (not bm!92949) (not d!397121) (not d!397037) (not b!1389434) b_and!93107 (not d!397071) (not b!1389712) (not b!1389731) (not d!397141) (not b!1389468) (not d!397079) (not d!397077) (not b!1389127) tp_is_empty!6783 (not b!1389302) (not b!1389342) (not b!1389349) (not d!397185) (not bm!92950) (not b_lambda!43231) (not b!1389042) b_and!93089 (not b!1389351) (not b!1389711) (not bm!92935) (not b!1389129) (not d!397135) (not b!1389350) (not tb!72781) (not b!1389043) (not b_next!34469) (not bm!92934) (not b!1389149) (not b!1389508) (not b!1389771) (not b_lambda!43245) (not d!397105) (not b!1389245) (not d!397039) (not d!397115) (not b!1389772) (not bm!92951) (not bm!92894) (not d!397033) (not b_lambda!43243) (not d!397183) (not tb!72787) (not d!397305) (not d!397221) (not b!1389729) (not d!397301) (not b!1389303) (not b!1389768) (not d!397109) (not bm!92931) (not b!1389419) (not b_next!34467) (not d!397225) (not d!397203) (not b!1389240) (not b!1389531) (not d!397107) (not bm!92929) (not b!1389044) (not d!397243) (not b!1389770) (not b!1389545) (not b!1389668) b_and!93047 (not bs!337343) (not b!1389440) (not b!1389506))
(check-sat b_and!93085 b_and!93051 (not b_next!34475) (not b_next!34473) b_and!93087 b_and!93043 (not b_next!34471) (not b_next!34477) b_and!93107 b_and!93089 (not b_next!34469) (not b_next!34467) b_and!93047 (not b_next!34485) (not b_next!34483) b_and!93109)
