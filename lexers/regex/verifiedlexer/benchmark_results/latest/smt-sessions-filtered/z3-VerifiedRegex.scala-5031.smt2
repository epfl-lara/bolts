; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!254870 () Bool)

(assert start!254870)

(declare-fun b!2620178 () Bool)

(declare-fun b_free!73693 () Bool)

(declare-fun b_next!74397 () Bool)

(assert (=> b!2620178 (= b_free!73693 (not b_next!74397))))

(declare-fun tp!831561 () Bool)

(declare-fun b_and!191783 () Bool)

(assert (=> b!2620178 (= tp!831561 b_and!191783)))

(declare-fun b_free!73695 () Bool)

(declare-fun b_next!74399 () Bool)

(assert (=> b!2620178 (= b_free!73695 (not b_next!74399))))

(declare-fun tp!831562 () Bool)

(declare-fun b_and!191785 () Bool)

(assert (=> b!2620178 (= tp!831562 b_and!191785)))

(declare-fun b!2620181 () Bool)

(declare-fun b_free!73697 () Bool)

(declare-fun b_next!74401 () Bool)

(assert (=> b!2620181 (= b_free!73697 (not b_next!74401))))

(declare-fun tp!831567 () Bool)

(declare-fun b_and!191787 () Bool)

(assert (=> b!2620181 (= tp!831567 b_and!191787)))

(declare-fun b_free!73699 () Bool)

(declare-fun b_next!74403 () Bool)

(assert (=> b!2620181 (= b_free!73699 (not b_next!74403))))

(declare-fun tp!831560 () Bool)

(declare-fun b_and!191789 () Bool)

(assert (=> b!2620181 (= tp!831560 b_and!191789)))

(declare-fun bs!474857 () Bool)

(declare-fun b!2620177 () Bool)

(declare-fun b!2620185 () Bool)

(assert (= bs!474857 (and b!2620177 b!2620185)))

(declare-fun lambda!98120 () Int)

(declare-fun lambda!98119 () Int)

(assert (=> bs!474857 (not (= lambda!98120 lambda!98119))))

(declare-fun b!2620202 () Bool)

(declare-fun e!1653176 () Bool)

(assert (=> b!2620202 (= e!1653176 true)))

(declare-fun b!2620201 () Bool)

(declare-fun e!1653175 () Bool)

(assert (=> b!2620201 (= e!1653175 e!1653176)))

(declare-fun b!2620200 () Bool)

(declare-fun e!1653174 () Bool)

(assert (=> b!2620200 (= e!1653174 e!1653175)))

(assert (=> b!2620177 e!1653174))

(assert (= b!2620201 b!2620202))

(assert (= b!2620200 b!2620201))

(declare-datatypes ((List!30365 0))(
  ( (Nil!30265) (Cons!30265 (h!35685 (_ BitVec 16)) (t!215186 List!30365)) )
))
(declare-datatypes ((C!15612 0))(
  ( (C!15613 (val!9740 Int)) )
))
(declare-datatypes ((Regex!7727 0))(
  ( (ElementMatch!7727 (c!421302 C!15612)) (Concat!12532 (regOne!15966 Regex!7727) (regTwo!15966 Regex!7727)) (EmptyExpr!7727) (Star!7727 (reg!8056 Regex!7727)) (EmptyLang!7727) (Union!7727 (regOne!15967 Regex!7727) (regTwo!15967 Regex!7727)) )
))
(declare-datatypes ((TokenValue!4805 0))(
  ( (FloatLiteralValue!9610 (text!34080 List!30365)) (TokenValueExt!4804 (__x!19443 Int)) (Broken!24025 (value!148194 List!30365)) (Object!4904) (End!4805) (Def!4805) (Underscore!4805) (Match!4805) (Else!4805) (Error!4805) (Case!4805) (If!4805) (Extends!4805) (Abstract!4805) (Class!4805) (Val!4805) (DelimiterValue!9610 (del!4865 List!30365)) (KeywordValue!4811 (value!148195 List!30365)) (CommentValue!9610 (value!148196 List!30365)) (WhitespaceValue!9610 (value!148197 List!30365)) (IndentationValue!4805 (value!148198 List!30365)) (String!33908) (Int32!4805) (Broken!24026 (value!148199 List!30365)) (Boolean!4806) (Unit!44282) (OperatorValue!4808 (op!4865 List!30365)) (IdentifierValue!9610 (value!148200 List!30365)) (IdentifierValue!9611 (value!148201 List!30365)) (WhitespaceValue!9611 (value!148202 List!30365)) (True!9610) (False!9610) (Broken!24027 (value!148203 List!30365)) (Broken!24028 (value!148204 List!30365)) (True!9611) (RightBrace!4805) (RightBracket!4805) (Colon!4805) (Null!4805) (Comma!4805) (LeftBracket!4805) (False!9611) (LeftBrace!4805) (ImaginaryLiteralValue!4805 (text!34081 List!30365)) (StringLiteralValue!14415 (value!148205 List!30365)) (EOFValue!4805 (value!148206 List!30365)) (IdentValue!4805 (value!148207 List!30365)) (DelimiterValue!9611 (value!148208 List!30365)) (DedentValue!4805 (value!148209 List!30365)) (NewLineValue!4805 (value!148210 List!30365)) (IntegerValue!14415 (value!148211 (_ BitVec 32)) (text!34082 List!30365)) (IntegerValue!14416 (value!148212 Int) (text!34083 List!30365)) (Times!4805) (Or!4805) (Equal!4805) (Minus!4805) (Broken!24029 (value!148213 List!30365)) (And!4805) (Div!4805) (LessEqual!4805) (Mod!4805) (Concat!12533) (Not!4805) (Plus!4805) (SpaceValue!4805 (value!148214 List!30365)) (IntegerValue!14417 (value!148215 Int) (text!34084 List!30365)) (StringLiteralValue!14416 (text!34085 List!30365)) (FloatLiteralValue!9611 (text!34086 List!30365)) (BytesLiteralValue!4805 (value!148216 List!30365)) (CommentValue!9611 (value!148217 List!30365)) (StringLiteralValue!14417 (value!148218 List!30365)) (ErrorTokenValue!4805 (msg!4866 List!30365)) )
))
(declare-datatypes ((List!30366 0))(
  ( (Nil!30266) (Cons!30266 (h!35686 C!15612) (t!215187 List!30366)) )
))
(declare-datatypes ((IArray!18821 0))(
  ( (IArray!18822 (innerList!9468 List!30366)) )
))
(declare-datatypes ((Conc!9408 0))(
  ( (Node!9408 (left!23311 Conc!9408) (right!23641 Conc!9408) (csize!19046 Int) (cheight!9619 Int)) (Leaf!14440 (xs!12402 IArray!18821) (csize!19047 Int)) (Empty!9408) )
))
(declare-datatypes ((BalanceConc!18430 0))(
  ( (BalanceConc!18431 (c!421303 Conc!9408)) )
))
(declare-datatypes ((TokenValueInjection!9050 0))(
  ( (TokenValueInjection!9051 (toValue!6493 Int) (toChars!6352 Int)) )
))
(declare-datatypes ((String!33909 0))(
  ( (String!33910 (value!148219 String)) )
))
(declare-datatypes ((Rule!8966 0))(
  ( (Rule!8967 (regex!4583 Regex!7727) (tag!5075 String!33909) (isSeparator!4583 Bool) (transformation!4583 TokenValueInjection!9050)) )
))
(declare-datatypes ((List!30367 0))(
  ( (Nil!30267) (Cons!30267 (h!35687 Rule!8966) (t!215188 List!30367)) )
))
(declare-fun rules!1726 () List!30367)

(get-info :version)

(assert (= (and b!2620177 ((_ is Cons!30267) rules!1726)) b!2620200))

(declare-fun order!16187 () Int)

(declare-fun order!16189 () Int)

(declare-fun dynLambda!12871 (Int Int) Int)

(declare-fun dynLambda!12872 (Int Int) Int)

(assert (=> b!2620202 (< (dynLambda!12871 order!16187 (toValue!6493 (transformation!4583 (h!35687 rules!1726)))) (dynLambda!12872 order!16189 lambda!98120))))

(declare-fun order!16191 () Int)

(declare-fun dynLambda!12873 (Int Int) Int)

(assert (=> b!2620202 (< (dynLambda!12873 order!16191 (toChars!6352 (transformation!4583 (h!35687 rules!1726)))) (dynLambda!12872 order!16189 lambda!98120))))

(assert (=> b!2620177 true))

(declare-fun b!2620171 () Bool)

(declare-fun e!1653165 () Bool)

(declare-fun e!1653153 () Bool)

(assert (=> b!2620171 (= e!1653165 e!1653153)))

(declare-fun res!1102896 () Bool)

(assert (=> b!2620171 (=> (not res!1102896) (not e!1653153))))

(declare-fun from!862 () Int)

(declare-fun lt!921126 () Int)

(assert (=> b!2620171 (= res!1102896 (< from!862 lt!921126))))

(declare-datatypes ((Unit!44283 0))(
  ( (Unit!44284) )
))
(declare-fun lt!921118 () Unit!44283)

(declare-datatypes ((Token!8636 0))(
  ( (Token!8637 (value!148220 TokenValue!4805) (rule!6959 Rule!8966) (size!23430 Int) (originalCharacters!5349 List!30366)) )
))
(declare-datatypes ((List!30368 0))(
  ( (Nil!30268) (Cons!30268 (h!35688 Token!8636) (t!215189 List!30368)) )
))
(declare-fun lt!921120 () List!30368)

(declare-fun lt!921127 () List!30368)

(declare-fun lemmaContentSubsetPreservesForall!252 (List!30368 List!30368 Int) Unit!44283)

(assert (=> b!2620171 (= lt!921118 (lemmaContentSubsetPreservesForall!252 lt!921127 lt!921120 lambda!98119))))

(declare-datatypes ((IArray!18823 0))(
  ( (IArray!18824 (innerList!9469 List!30368)) )
))
(declare-datatypes ((Conc!9409 0))(
  ( (Node!9409 (left!23312 Conc!9409) (right!23642 Conc!9409) (csize!19048 Int) (cheight!9620 Int)) (Leaf!14441 (xs!12403 IArray!18823) (csize!19049 Int)) (Empty!9409) )
))
(declare-datatypes ((BalanceConc!18432 0))(
  ( (BalanceConc!18433 (c!421304 Conc!9409)) )
))
(declare-fun v!6381 () BalanceConc!18432)

(declare-fun dropList!886 (BalanceConc!18432 Int) List!30368)

(assert (=> b!2620171 (= lt!921120 (dropList!886 v!6381 from!862))))

(declare-fun list!11367 (BalanceConc!18432) List!30368)

(assert (=> b!2620171 (= lt!921127 (list!11367 v!6381))))

(declare-fun b!2620172 () Bool)

(declare-fun separatorToken!156 () Token!8636)

(declare-fun e!1653154 () Bool)

(declare-fun tp!831566 () Bool)

(declare-fun e!1653160 () Bool)

(declare-fun inv!40990 (String!33909) Bool)

(declare-fun inv!40995 (TokenValueInjection!9050) Bool)

(assert (=> b!2620172 (= e!1653154 (and tp!831566 (inv!40990 (tag!5075 (rule!6959 separatorToken!156))) (inv!40995 (transformation!4583 (rule!6959 separatorToken!156))) e!1653160))))

(declare-fun b!2620173 () Bool)

(declare-fun e!1653158 () Bool)

(declare-fun tp!831563 () Bool)

(declare-fun e!1653159 () Bool)

(assert (=> b!2620173 (= e!1653158 (and tp!831563 (inv!40990 (tag!5075 (h!35687 rules!1726))) (inv!40995 (transformation!4583 (h!35687 rules!1726))) e!1653159))))

(declare-fun b!2620175 () Bool)

(declare-fun res!1102891 () Bool)

(assert (=> b!2620175 (=> (not res!1102891) (not e!1653165))))

(declare-fun sepAndNonSepRulesDisjointChars!1156 (List!30367 List!30367) Bool)

(assert (=> b!2620175 (= res!1102891 (sepAndNonSepRulesDisjointChars!1156 rules!1726 rules!1726))))

(declare-fun b!2620176 () Bool)

(declare-fun res!1102888 () Bool)

(assert (=> b!2620176 (=> (not res!1102888) (not e!1653165))))

(declare-datatypes ((LexerInterface!4180 0))(
  ( (LexerInterfaceExt!4177 (__x!19444 Int)) (Lexer!4178) )
))
(declare-fun thiss!14197 () LexerInterface!4180)

(declare-fun rulesProduceIndividualToken!1892 (LexerInterface!4180 List!30367 Token!8636) Bool)

(assert (=> b!2620176 (= res!1102888 (rulesProduceIndividualToken!1892 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun e!1653162 () Bool)

(declare-fun e!1653155 () Bool)

(assert (=> b!2620177 (= e!1653162 e!1653155)))

(declare-fun res!1102898 () Bool)

(assert (=> b!2620177 (=> res!1102898 e!1653155)))

(declare-datatypes ((tuple2!29832 0))(
  ( (tuple2!29833 (_1!17458 Token!8636) (_2!17458 BalanceConc!18430)) )
))
(declare-datatypes ((Option!5968 0))(
  ( (None!5967) (Some!5967 (v!32328 tuple2!29832)) )
))
(declare-fun lt!921124 () Option!5968)

(declare-fun lt!921119 () Token!8636)

(assert (=> b!2620177 (= res!1102898 (or (not ((_ is Some!5967) lt!921124)) (not (= (_1!17458 (v!32328 lt!921124)) lt!921119))))))

(declare-fun maxPrefixZipperSequence!910 (LexerInterface!4180 List!30367 BalanceConc!18430) Option!5968)

(declare-fun ++!7359 (BalanceConc!18430 BalanceConc!18430) BalanceConc!18430)

(declare-fun charsOf!2874 (Token!8636) BalanceConc!18430)

(declare-fun printWithSeparatorTokenWhenNeededRec!458 (LexerInterface!4180 List!30367 BalanceConc!18432 Token!8636 Int) BalanceConc!18430)

(assert (=> b!2620177 (= lt!921124 (maxPrefixZipperSequence!910 thiss!14197 rules!1726 (++!7359 (charsOf!2874 lt!921119) (printWithSeparatorTokenWhenNeededRec!458 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!921125 () Unit!44283)

(declare-fun forallContained!939 (List!30368 Int Token!8636) Unit!44283)

(assert (=> b!2620177 (= lt!921125 (forallContained!939 lt!921127 lambda!98120 lt!921119))))

(assert (=> b!2620178 (= e!1653159 (and tp!831561 tp!831562))))

(declare-fun b!2620179 () Bool)

(declare-fun res!1102897 () Bool)

(assert (=> b!2620179 (=> (not res!1102897) (not e!1653165))))

(declare-fun isEmpty!17294 (List!30367) Bool)

(assert (=> b!2620179 (= res!1102897 (not (isEmpty!17294 rules!1726)))))

(declare-fun b!2620180 () Bool)

(declare-fun res!1102895 () Bool)

(assert (=> b!2620180 (=> (not res!1102895) (not e!1653165))))

(declare-fun rulesProduceEachTokenIndividually!1000 (LexerInterface!4180 List!30367 BalanceConc!18432) Bool)

(assert (=> b!2620180 (= res!1102895 (rulesProduceEachTokenIndividually!1000 thiss!14197 rules!1726 v!6381))))

(assert (=> b!2620181 (= e!1653160 (and tp!831567 tp!831560))))

(declare-fun b!2620182 () Bool)

(declare-fun res!1102889 () Bool)

(assert (=> b!2620182 (=> res!1102889 e!1653155)))

(declare-fun rulesProduceEachTokenIndividuallyList!1445 (LexerInterface!4180 List!30367 List!30368) Bool)

(assert (=> b!2620182 (= res!1102889 (not (rulesProduceEachTokenIndividuallyList!1445 thiss!14197 rules!1726 lt!921120)))))

(declare-fun b!2620183 () Bool)

(declare-fun e!1653164 () Bool)

(assert (=> b!2620183 (= e!1653164 e!1653165)))

(declare-fun res!1102886 () Bool)

(assert (=> b!2620183 (=> (not res!1102886) (not e!1653165))))

(assert (=> b!2620183 (= res!1102886 (<= from!862 lt!921126))))

(declare-fun size!23431 (BalanceConc!18432) Int)

(assert (=> b!2620183 (= lt!921126 (size!23431 v!6381))))

(declare-fun b!2620184 () Bool)

(declare-fun e!1653163 () Bool)

(declare-fun tp!831564 () Bool)

(declare-fun inv!40996 (Conc!9409) Bool)

(assert (=> b!2620184 (= e!1653163 (and (inv!40996 (c!421304 v!6381)) tp!831564))))

(declare-fun b!2620174 () Bool)

(declare-fun res!1102890 () Bool)

(assert (=> b!2620174 (=> (not res!1102890) (not e!1653165))))

(assert (=> b!2620174 (= res!1102890 (isSeparator!4583 (rule!6959 separatorToken!156)))))

(declare-fun res!1102892 () Bool)

(assert (=> start!254870 (=> (not res!1102892) (not e!1653164))))

(assert (=> start!254870 (= res!1102892 (and ((_ is Lexer!4178) thiss!14197) (>= from!862 0)))))

(assert (=> start!254870 e!1653164))

(assert (=> start!254870 true))

(declare-fun e!1653156 () Bool)

(assert (=> start!254870 e!1653156))

(declare-fun e!1653161 () Bool)

(declare-fun inv!40997 (Token!8636) Bool)

(assert (=> start!254870 (and (inv!40997 separatorToken!156) e!1653161)))

(declare-fun inv!40998 (BalanceConc!18432) Bool)

(assert (=> start!254870 (and (inv!40998 v!6381) e!1653163)))

(declare-fun res!1102885 () Bool)

(assert (=> b!2620185 (=> (not res!1102885) (not e!1653165))))

(declare-fun forall!6301 (BalanceConc!18432 Int) Bool)

(assert (=> b!2620185 (= res!1102885 (forall!6301 v!6381 lambda!98119))))

(declare-fun b!2620186 () Bool)

(assert (=> b!2620186 (= e!1653153 (not e!1653162))))

(declare-fun res!1102893 () Bool)

(assert (=> b!2620186 (=> res!1102893 e!1653162)))

(declare-fun contains!5658 (BalanceConc!18432 Token!8636) Bool)

(assert (=> b!2620186 (= res!1102893 (not (contains!5658 v!6381 lt!921119)))))

(declare-fun apply!7140 (BalanceConc!18432 Int) Token!8636)

(assert (=> b!2620186 (= lt!921119 (apply!7140 v!6381 from!862))))

(declare-fun lt!921122 () List!30368)

(declare-fun tail!4218 (List!30368) List!30368)

(declare-fun drop!1579 (List!30368 Int) List!30368)

(assert (=> b!2620186 (= (tail!4218 lt!921122) (drop!1579 lt!921127 (+ 1 from!862)))))

(declare-fun lt!921123 () Unit!44283)

(declare-fun lemmaDropTail!768 (List!30368 Int) Unit!44283)

(assert (=> b!2620186 (= lt!921123 (lemmaDropTail!768 lt!921127 from!862))))

(declare-fun head!5980 (List!30368) Token!8636)

(declare-fun apply!7141 (List!30368 Int) Token!8636)

(assert (=> b!2620186 (= (head!5980 lt!921122) (apply!7141 lt!921127 from!862))))

(assert (=> b!2620186 (= lt!921122 (drop!1579 lt!921127 from!862))))

(declare-fun lt!921121 () Unit!44283)

(declare-fun lemmaDropApply!794 (List!30368 Int) Unit!44283)

(assert (=> b!2620186 (= lt!921121 (lemmaDropApply!794 lt!921127 from!862))))

(declare-fun b!2620187 () Bool)

(declare-fun res!1102894 () Bool)

(assert (=> b!2620187 (=> res!1102894 e!1653162)))

(declare-fun contains!5659 (List!30368 Token!8636) Bool)

(assert (=> b!2620187 (= res!1102894 (not (contains!5659 lt!921127 lt!921119)))))

(declare-fun b!2620188 () Bool)

(declare-fun res!1102887 () Bool)

(assert (=> b!2620188 (=> (not res!1102887) (not e!1653165))))

(declare-fun rulesInvariant!3680 (LexerInterface!4180 List!30367) Bool)

(assert (=> b!2620188 (= res!1102887 (rulesInvariant!3680 thiss!14197 rules!1726))))

(declare-fun b!2620189 () Bool)

(assert (=> b!2620189 (= e!1653155 true)))

(declare-fun tp!831565 () Bool)

(declare-fun b!2620190 () Bool)

(declare-fun inv!21 (TokenValue!4805) Bool)

(assert (=> b!2620190 (= e!1653161 (and (inv!21 (value!148220 separatorToken!156)) e!1653154 tp!831565))))

(declare-fun b!2620191 () Bool)

(declare-fun tp!831568 () Bool)

(assert (=> b!2620191 (= e!1653156 (and e!1653158 tp!831568))))

(assert (= (and start!254870 res!1102892) b!2620183))

(assert (= (and b!2620183 res!1102886) b!2620179))

(assert (= (and b!2620179 res!1102897) b!2620188))

(assert (= (and b!2620188 res!1102887) b!2620180))

(assert (= (and b!2620180 res!1102895) b!2620176))

(assert (= (and b!2620176 res!1102888) b!2620174))

(assert (= (and b!2620174 res!1102890) b!2620185))

(assert (= (and b!2620185 res!1102885) b!2620175))

(assert (= (and b!2620175 res!1102891) b!2620171))

(assert (= (and b!2620171 res!1102896) b!2620186))

(assert (= (and b!2620186 (not res!1102893)) b!2620187))

(assert (= (and b!2620187 (not res!1102894)) b!2620177))

(assert (= (and b!2620177 (not res!1102898)) b!2620182))

(assert (= (and b!2620182 (not res!1102889)) b!2620189))

(assert (= b!2620173 b!2620178))

(assert (= b!2620191 b!2620173))

(assert (= (and start!254870 ((_ is Cons!30267) rules!1726)) b!2620191))

(assert (= b!2620172 b!2620181))

(assert (= b!2620190 b!2620172))

(assert (= start!254870 b!2620190))

(assert (= start!254870 b!2620184))

(declare-fun m!2958673 () Bool)

(assert (=> b!2620188 m!2958673))

(declare-fun m!2958675 () Bool)

(assert (=> b!2620185 m!2958675))

(declare-fun m!2958677 () Bool)

(assert (=> start!254870 m!2958677))

(declare-fun m!2958679 () Bool)

(assert (=> start!254870 m!2958679))

(declare-fun m!2958681 () Bool)

(assert (=> b!2620190 m!2958681))

(declare-fun m!2958683 () Bool)

(assert (=> b!2620175 m!2958683))

(declare-fun m!2958685 () Bool)

(assert (=> b!2620180 m!2958685))

(declare-fun m!2958687 () Bool)

(assert (=> b!2620173 m!2958687))

(declare-fun m!2958689 () Bool)

(assert (=> b!2620173 m!2958689))

(declare-fun m!2958691 () Bool)

(assert (=> b!2620186 m!2958691))

(declare-fun m!2958693 () Bool)

(assert (=> b!2620186 m!2958693))

(declare-fun m!2958695 () Bool)

(assert (=> b!2620186 m!2958695))

(declare-fun m!2958697 () Bool)

(assert (=> b!2620186 m!2958697))

(declare-fun m!2958699 () Bool)

(assert (=> b!2620186 m!2958699))

(declare-fun m!2958701 () Bool)

(assert (=> b!2620186 m!2958701))

(declare-fun m!2958703 () Bool)

(assert (=> b!2620186 m!2958703))

(declare-fun m!2958705 () Bool)

(assert (=> b!2620186 m!2958705))

(declare-fun m!2958707 () Bool)

(assert (=> b!2620186 m!2958707))

(declare-fun m!2958709 () Bool)

(assert (=> b!2620183 m!2958709))

(declare-fun m!2958711 () Bool)

(assert (=> b!2620171 m!2958711))

(declare-fun m!2958713 () Bool)

(assert (=> b!2620171 m!2958713))

(declare-fun m!2958715 () Bool)

(assert (=> b!2620171 m!2958715))

(declare-fun m!2958717 () Bool)

(assert (=> b!2620184 m!2958717))

(declare-fun m!2958719 () Bool)

(assert (=> b!2620182 m!2958719))

(declare-fun m!2958721 () Bool)

(assert (=> b!2620177 m!2958721))

(declare-fun m!2958723 () Bool)

(assert (=> b!2620177 m!2958723))

(declare-fun m!2958725 () Bool)

(assert (=> b!2620177 m!2958725))

(declare-fun m!2958727 () Bool)

(assert (=> b!2620177 m!2958727))

(declare-fun m!2958729 () Bool)

(assert (=> b!2620177 m!2958729))

(assert (=> b!2620177 m!2958727))

(assert (=> b!2620177 m!2958725))

(assert (=> b!2620177 m!2958721))

(declare-fun m!2958731 () Bool)

(assert (=> b!2620179 m!2958731))

(declare-fun m!2958733 () Bool)

(assert (=> b!2620187 m!2958733))

(declare-fun m!2958735 () Bool)

(assert (=> b!2620176 m!2958735))

(declare-fun m!2958737 () Bool)

(assert (=> b!2620172 m!2958737))

(declare-fun m!2958739 () Bool)

(assert (=> b!2620172 m!2958739))

(check-sat (not b!2620183) (not b!2620177) (not b!2620187) (not b!2620171) (not b!2620172) (not b!2620191) (not b!2620186) (not b!2620188) (not b_next!74399) (not b!2620200) b_and!191785 (not b_next!74401) b_and!191789 (not start!254870) (not b!2620182) (not b!2620175) (not b!2620190) (not b_next!74397) b_and!191787 (not b!2620179) (not b!2620184) (not b!2620173) (not b!2620180) (not b_next!74403) (not b!2620185) (not b!2620176) b_and!191783)
(check-sat b_and!191789 (not b_next!74397) b_and!191787 (not b_next!74403) (not b_next!74399) b_and!191783 b_and!191785 (not b_next!74401))
