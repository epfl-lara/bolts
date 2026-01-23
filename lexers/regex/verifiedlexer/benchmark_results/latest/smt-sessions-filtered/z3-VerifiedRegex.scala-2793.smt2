; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155174 () Bool)

(assert start!155174)

(declare-fun b!1629691 () Bool)

(declare-fun b_free!43959 () Bool)

(declare-fun b_next!44663 () Bool)

(assert (=> b!1629691 (= b_free!43959 (not b_next!44663))))

(declare-fun tp!473260 () Bool)

(declare-fun b_and!115581 () Bool)

(assert (=> b!1629691 (= tp!473260 b_and!115581)))

(declare-fun b_free!43961 () Bool)

(declare-fun b_next!44665 () Bool)

(assert (=> b!1629691 (= b_free!43961 (not b_next!44665))))

(declare-fun tp!473259 () Bool)

(declare-fun b_and!115583 () Bool)

(assert (=> b!1629691 (= tp!473259 b_and!115583)))

(declare-fun b!1629711 () Bool)

(declare-fun b_free!43963 () Bool)

(declare-fun b_next!44667 () Bool)

(assert (=> b!1629711 (= b_free!43963 (not b_next!44667))))

(declare-fun tp!473263 () Bool)

(declare-fun b_and!115585 () Bool)

(assert (=> b!1629711 (= tp!473263 b_and!115585)))

(declare-fun b_free!43965 () Bool)

(declare-fun b_next!44669 () Bool)

(assert (=> b!1629711 (= b_free!43965 (not b_next!44669))))

(declare-fun tp!473266 () Bool)

(declare-fun b_and!115587 () Bool)

(assert (=> b!1629711 (= tp!473266 b_and!115587)))

(declare-fun b!1629688 () Bool)

(declare-fun res!728798 () Bool)

(declare-fun e!1045117 () Bool)

(assert (=> b!1629688 (=> res!728798 e!1045117)))

(declare-datatypes ((List!17937 0))(
  ( (Nil!17867) (Cons!17867 (h!23268 (_ BitVec 16)) (t!149394 List!17937)) )
))
(declare-datatypes ((TokenValue!3237 0))(
  ( (FloatLiteralValue!6474 (text!23104 List!17937)) (TokenValueExt!3236 (__x!11776 Int)) (Broken!16185 (value!99336 List!17937)) (Object!3306) (End!3237) (Def!3237) (Underscore!3237) (Match!3237) (Else!3237) (Error!3237) (Case!3237) (If!3237) (Extends!3237) (Abstract!3237) (Class!3237) (Val!3237) (DelimiterValue!6474 (del!3297 List!17937)) (KeywordValue!3243 (value!99337 List!17937)) (CommentValue!6474 (value!99338 List!17937)) (WhitespaceValue!6474 (value!99339 List!17937)) (IndentationValue!3237 (value!99340 List!17937)) (String!20516) (Int32!3237) (Broken!16186 (value!99341 List!17937)) (Boolean!3238) (Unit!29042) (OperatorValue!3240 (op!3297 List!17937)) (IdentifierValue!6474 (value!99342 List!17937)) (IdentifierValue!6475 (value!99343 List!17937)) (WhitespaceValue!6475 (value!99344 List!17937)) (True!6474) (False!6474) (Broken!16187 (value!99345 List!17937)) (Broken!16188 (value!99346 List!17937)) (True!6475) (RightBrace!3237) (RightBracket!3237) (Colon!3237) (Null!3237) (Comma!3237) (LeftBracket!3237) (False!6475) (LeftBrace!3237) (ImaginaryLiteralValue!3237 (text!23105 List!17937)) (StringLiteralValue!9711 (value!99347 List!17937)) (EOFValue!3237 (value!99348 List!17937)) (IdentValue!3237 (value!99349 List!17937)) (DelimiterValue!6475 (value!99350 List!17937)) (DedentValue!3237 (value!99351 List!17937)) (NewLineValue!3237 (value!99352 List!17937)) (IntegerValue!9711 (value!99353 (_ BitVec 32)) (text!23106 List!17937)) (IntegerValue!9712 (value!99354 Int) (text!23107 List!17937)) (Times!3237) (Or!3237) (Equal!3237) (Minus!3237) (Broken!16189 (value!99355 List!17937)) (And!3237) (Div!3237) (LessEqual!3237) (Mod!3237) (Concat!7712) (Not!3237) (Plus!3237) (SpaceValue!3237 (value!99356 List!17937)) (IntegerValue!9713 (value!99357 Int) (text!23108 List!17937)) (StringLiteralValue!9712 (text!23109 List!17937)) (FloatLiteralValue!6475 (text!23110 List!17937)) (BytesLiteralValue!3237 (value!99358 List!17937)) (CommentValue!6475 (value!99359 List!17937)) (StringLiteralValue!9713 (value!99360 List!17937)) (ErrorTokenValue!3237 (msg!3298 List!17937)) )
))
(declare-datatypes ((C!9124 0))(
  ( (C!9125 (val!5158 Int)) )
))
(declare-datatypes ((List!17938 0))(
  ( (Nil!17868) (Cons!17868 (h!23269 C!9124) (t!149395 List!17938)) )
))
(declare-datatypes ((IArray!11889 0))(
  ( (IArray!11890 (innerList!6002 List!17938)) )
))
(declare-datatypes ((Conc!5942 0))(
  ( (Node!5942 (left!14357 Conc!5942) (right!14687 Conc!5942) (csize!12114 Int) (cheight!6153 Int)) (Leaf!8736 (xs!8778 IArray!11889) (csize!12115 Int)) (Empty!5942) )
))
(declare-datatypes ((BalanceConc!11828 0))(
  ( (BalanceConc!11829 (c!265351 Conc!5942)) )
))
(declare-datatypes ((Regex!4475 0))(
  ( (ElementMatch!4475 (c!265352 C!9124)) (Concat!7713 (regOne!9462 Regex!4475) (regTwo!9462 Regex!4475)) (EmptyExpr!4475) (Star!4475 (reg!4804 Regex!4475)) (EmptyLang!4475) (Union!4475 (regOne!9463 Regex!4475) (regTwo!9463 Regex!4475)) )
))
(declare-datatypes ((String!20517 0))(
  ( (String!20518 (value!99361 String)) )
))
(declare-datatypes ((TokenValueInjection!6134 0))(
  ( (TokenValueInjection!6135 (toValue!4578 Int) (toChars!4437 Int)) )
))
(declare-datatypes ((Rule!6094 0))(
  ( (Rule!6095 (regex!3147 Regex!4475) (tag!3427 String!20517) (isSeparator!3147 Bool) (transformation!3147 TokenValueInjection!6134)) )
))
(declare-datatypes ((List!17939 0))(
  ( (Nil!17869) (Cons!17869 (h!23270 Rule!6094) (t!149396 List!17939)) )
))
(declare-fun rules!1846 () List!17939)

(declare-datatypes ((Token!5860 0))(
  ( (Token!5861 (value!99362 TokenValue!3237) (rule!4979 Rule!6094) (size!14296 Int) (originalCharacters!3961 List!17938)) )
))
(declare-datatypes ((List!17940 0))(
  ( (Nil!17870) (Cons!17870 (h!23271 Token!5860) (t!149397 List!17940)) )
))
(declare-fun tokens!457 () List!17940)

(declare-datatypes ((LexerInterface!2776 0))(
  ( (LexerInterfaceExt!2773 (__x!11777 Int)) (Lexer!2774) )
))
(declare-fun thiss!17113 () LexerInterface!2776)

(declare-fun rulesProduceIndividualToken!1428 (LexerInterface!2776 List!17939 Token!5860) Bool)

(assert (=> b!1629688 (= res!728798 (not (rulesProduceIndividualToken!1428 thiss!17113 rules!1846 (h!23271 tokens!457))))))

(declare-fun b!1629689 () Bool)

(declare-fun res!728817 () Bool)

(declare-fun e!1045130 () Bool)

(assert (=> b!1629689 (=> res!728817 e!1045130)))

(declare-fun contains!3128 (List!17939 Rule!6094) Bool)

(assert (=> b!1629689 (= res!728817 (not (contains!3128 rules!1846 (rule!4979 (h!23271 tokens!457)))))))

(declare-fun b!1629690 () Bool)

(declare-fun res!728804 () Bool)

(declare-fun e!1045135 () Bool)

(assert (=> b!1629690 (=> (not res!728804) (not e!1045135))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!469 (LexerInterface!2776 List!17940 List!17939) Bool)

(assert (=> b!1629690 (= res!728804 (tokensListTwoByTwoPredicateSeparableList!469 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1045114 () Bool)

(assert (=> b!1629691 (= e!1045114 (and tp!473260 tp!473259))))

(declare-fun b!1629693 () Bool)

(declare-fun res!728803 () Bool)

(declare-fun e!1045124 () Bool)

(assert (=> b!1629693 (=> res!728803 e!1045124)))

(declare-fun separableTokensPredicate!718 (LexerInterface!2776 Token!5860 Token!5860 List!17939) Bool)

(assert (=> b!1629693 (= res!728803 (not (separableTokensPredicate!718 thiss!17113 (h!23271 tokens!457) (h!23271 (t!149397 tokens!457)) rules!1846)))))

(declare-fun b!1629694 () Bool)

(declare-fun e!1045127 () Bool)

(assert (=> b!1629694 (= e!1045135 e!1045127)))

(declare-fun res!728806 () Bool)

(assert (=> b!1629694 (=> (not res!728806) (not e!1045127))))

(declare-fun lt!590412 () List!17938)

(declare-fun lt!590396 () List!17938)

(assert (=> b!1629694 (= res!728806 (= lt!590412 lt!590396))))

(declare-fun lt!590407 () List!17938)

(declare-fun lt!590420 () List!17938)

(declare-fun ++!4761 (List!17938 List!17938) List!17938)

(assert (=> b!1629694 (= lt!590396 (++!4761 lt!590407 lt!590420))))

(declare-fun lt!590410 () BalanceConc!11828)

(declare-fun list!7023 (BalanceConc!11828) List!17938)

(assert (=> b!1629694 (= lt!590412 (list!7023 lt!590410))))

(declare-fun lt!590422 () BalanceConc!11828)

(assert (=> b!1629694 (= lt!590420 (list!7023 lt!590422))))

(declare-fun lt!590406 () BalanceConc!11828)

(assert (=> b!1629694 (= lt!590407 (list!7023 lt!590406))))

(declare-fun charsOf!1796 (Token!5860) BalanceConc!11828)

(assert (=> b!1629694 (= lt!590406 (charsOf!1796 (h!23271 tokens!457)))))

(declare-datatypes ((IArray!11891 0))(
  ( (IArray!11892 (innerList!6003 List!17940)) )
))
(declare-datatypes ((Conc!5943 0))(
  ( (Node!5943 (left!14358 Conc!5943) (right!14688 Conc!5943) (csize!12116 Int) (cheight!6154 Int)) (Leaf!8737 (xs!8779 IArray!11891) (csize!12117 Int)) (Empty!5943) )
))
(declare-datatypes ((BalanceConc!11830 0))(
  ( (BalanceConc!11831 (c!265353 Conc!5943)) )
))
(declare-datatypes ((tuple2!17454 0))(
  ( (tuple2!17455 (_1!10129 BalanceConc!11830) (_2!10129 BalanceConc!11828)) )
))
(declare-fun lt!590416 () tuple2!17454)

(declare-fun lex!1260 (LexerInterface!2776 List!17939 BalanceConc!11828) tuple2!17454)

(assert (=> b!1629694 (= lt!590416 (lex!1260 thiss!17113 rules!1846 lt!590422))))

(declare-fun lt!590405 () BalanceConc!11830)

(declare-fun print!1307 (LexerInterface!2776 BalanceConc!11830) BalanceConc!11828)

(assert (=> b!1629694 (= lt!590422 (print!1307 thiss!17113 lt!590405))))

(declare-fun seqFromList!2043 (List!17940) BalanceConc!11830)

(assert (=> b!1629694 (= lt!590405 (seqFromList!2043 (t!149397 tokens!457)))))

(assert (=> b!1629694 (= lt!590410 (print!1307 thiss!17113 (seqFromList!2043 tokens!457)))))

(declare-fun lt!590403 () Regex!4475)

(declare-fun lt!590414 () List!17938)

(declare-fun e!1045133 () Bool)

(declare-fun b!1629695 () Bool)

(declare-fun prefixMatch!410 (Regex!4475 List!17938) Bool)

(assert (=> b!1629695 (= e!1045133 (not (prefixMatch!410 lt!590403 (++!4761 lt!590407 lt!590414))))))

(declare-fun e!1045132 () Bool)

(declare-fun tp!473258 () Bool)

(declare-fun b!1629696 () Bool)

(declare-fun e!1045119 () Bool)

(declare-fun inv!21 (TokenValue!3237) Bool)

(assert (=> b!1629696 (= e!1045132 (and (inv!21 (value!99362 (h!23271 tokens!457))) e!1045119 tp!473258))))

(declare-fun b!1629697 () Bool)

(declare-fun res!728807 () Bool)

(assert (=> b!1629697 (=> (not res!728807) (not e!1045135))))

(declare-fun rulesProduceEachTokenIndividuallyList!978 (LexerInterface!2776 List!17939 List!17940) Bool)

(assert (=> b!1629697 (= res!728807 (rulesProduceEachTokenIndividuallyList!978 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1629698 () Bool)

(declare-fun e!1045136 () Bool)

(assert (=> b!1629698 (= e!1045117 e!1045136)))

(declare-fun res!728815 () Bool)

(assert (=> b!1629698 (=> res!728815 e!1045136)))

(declare-datatypes ((tuple2!17456 0))(
  ( (tuple2!17457 (_1!10130 Token!5860) (_2!10130 List!17938)) )
))
(declare-datatypes ((Option!3321 0))(
  ( (None!3320) (Some!3320 (v!24373 tuple2!17456)) )
))
(declare-fun lt!590421 () Option!3321)

(declare-fun isDefined!2688 (Option!3321) Bool)

(assert (=> b!1629698 (= res!728815 (not (isDefined!2688 lt!590421)))))

(declare-datatypes ((Unit!29043 0))(
  ( (Unit!29044) )
))
(declare-fun lt!590399 () Unit!29043)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!350 (LexerInterface!2776 List!17939 List!17938 List!17938) Unit!29043)

(assert (=> b!1629698 (= lt!590399 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!350 thiss!17113 rules!1846 lt!590407 lt!590420))))

(declare-fun b!1629699 () Bool)

(declare-fun res!728813 () Bool)

(assert (=> b!1629699 (=> res!728813 e!1045117)))

(declare-fun isEmpty!10903 (BalanceConc!11830) Bool)

(declare-fun seqFromList!2044 (List!17938) BalanceConc!11828)

(assert (=> b!1629699 (= res!728813 (isEmpty!10903 (_1!10129 (lex!1260 thiss!17113 rules!1846 (seqFromList!2044 lt!590407)))))))

(declare-fun b!1629700 () Bool)

(declare-fun e!1045116 () Bool)

(declare-fun lt!590413 () List!17938)

(declare-fun head!3458 (List!17938) C!9124)

(assert (=> b!1629700 (= e!1045116 (= lt!590413 (Cons!17868 (head!3458 (originalCharacters!3961 (h!23271 (t!149397 tokens!457)))) Nil!17868)))))

(declare-fun b!1629701 () Bool)

(declare-fun tp!473265 () Bool)

(declare-fun e!1045129 () Bool)

(declare-fun inv!23242 (String!20517) Bool)

(declare-fun inv!23245 (TokenValueInjection!6134) Bool)

(assert (=> b!1629701 (= e!1045119 (and tp!473265 (inv!23242 (tag!3427 (rule!4979 (h!23271 tokens!457)))) (inv!23245 (transformation!3147 (rule!4979 (h!23271 tokens!457)))) e!1045129))))

(declare-fun b!1629702 () Bool)

(declare-fun e!1045128 () Bool)

(assert (=> b!1629702 (= e!1045136 e!1045128)))

(declare-fun res!728805 () Bool)

(assert (=> b!1629702 (=> res!728805 e!1045128)))

(declare-fun lt!590408 () BalanceConc!11828)

(declare-fun prefixMatchZipperSequence!539 (Regex!4475 BalanceConc!11828) Bool)

(declare-fun ++!4762 (BalanceConc!11828 BalanceConc!11828) BalanceConc!11828)

(assert (=> b!1629702 (= res!728805 (prefixMatchZipperSequence!539 lt!590403 (++!4762 lt!590406 lt!590408)))))

(declare-fun singletonSeq!1572 (C!9124) BalanceConc!11828)

(declare-fun apply!4584 (BalanceConc!11828 Int) C!9124)

(assert (=> b!1629702 (= lt!590408 (singletonSeq!1572 (apply!4584 (charsOf!1796 (h!23271 (t!149397 tokens!457))) 0)))))

(declare-fun rulesRegex!537 (LexerInterface!2776 List!17939) Regex!4475)

(assert (=> b!1629702 (= lt!590403 (rulesRegex!537 thiss!17113 rules!1846))))

(declare-fun b!1629703 () Bool)

(declare-fun res!728812 () Bool)

(assert (=> b!1629703 (=> (not res!728812) (not e!1045135))))

(declare-fun rulesInvariant!2445 (LexerInterface!2776 List!17939) Bool)

(assert (=> b!1629703 (= res!728812 (rulesInvariant!2445 thiss!17113 rules!1846))))

(declare-fun b!1629704 () Bool)

(declare-fun e!1045122 () Bool)

(declare-fun e!1045118 () Bool)

(declare-fun tp!473262 () Bool)

(assert (=> b!1629704 (= e!1045122 (and e!1045118 tp!473262))))

(declare-fun b!1629705 () Bool)

(declare-fun res!728801 () Bool)

(declare-fun e!1045115 () Bool)

(assert (=> b!1629705 (=> (not res!728801) (not e!1045115))))

(declare-fun lt!590418 () tuple2!17456)

(declare-fun isEmpty!10904 (List!17938) Bool)

(assert (=> b!1629705 (= res!728801 (isEmpty!10904 (_2!10130 lt!590418)))))

(declare-fun b!1629706 () Bool)

(declare-fun e!1045125 () Bool)

(assert (=> b!1629706 (= e!1045125 e!1045130)))

(declare-fun res!728818 () Bool)

(assert (=> b!1629706 (=> res!728818 e!1045130)))

(declare-fun lt!590398 () List!17938)

(assert (=> b!1629706 (= res!728818 (prefixMatch!410 lt!590403 (++!4761 (originalCharacters!3961 (h!23271 tokens!457)) lt!590398)))))

(assert (=> b!1629706 e!1045115))

(declare-fun res!728802 () Bool)

(assert (=> b!1629706 (=> (not res!728802) (not e!1045115))))

(assert (=> b!1629706 (= res!728802 (= (_1!10130 lt!590418) (h!23271 tokens!457)))))

(declare-fun lt!590424 () Option!3321)

(declare-fun get!5157 (Option!3321) tuple2!17456)

(assert (=> b!1629706 (= lt!590418 (get!5157 lt!590424))))

(assert (=> b!1629706 (isDefined!2688 lt!590424)))

(declare-fun maxPrefix!1340 (LexerInterface!2776 List!17939 List!17938) Option!3321)

(assert (=> b!1629706 (= lt!590424 (maxPrefix!1340 thiss!17113 rules!1846 lt!590407))))

(assert (=> b!1629706 (isDefined!2688 (maxPrefix!1340 thiss!17113 rules!1846 (originalCharacters!3961 (h!23271 tokens!457))))))

(declare-fun b!1629707 () Bool)

(declare-fun res!728797 () Bool)

(assert (=> b!1629707 (=> res!728797 e!1045130)))

(assert (=> b!1629707 (= res!728797 (prefixMatch!410 lt!590403 (++!4761 lt!590407 lt!590398)))))

(declare-fun res!728800 () Bool)

(assert (=> start!155174 (=> (not res!728800) (not e!1045135))))

(get-info :version)

(assert (=> start!155174 (= res!728800 ((_ is Lexer!2774) thiss!17113))))

(assert (=> start!155174 e!1045135))

(assert (=> start!155174 true))

(assert (=> start!155174 e!1045122))

(declare-fun e!1045134 () Bool)

(assert (=> start!155174 e!1045134))

(declare-fun b!1629692 () Bool)

(declare-fun e!1045131 () Bool)

(assert (=> b!1629692 (= e!1045127 (not e!1045131))))

(declare-fun res!728796 () Bool)

(assert (=> b!1629692 (=> res!728796 e!1045131)))

(declare-fun lt!590397 () List!17940)

(assert (=> b!1629692 (= res!728796 (not (= lt!590397 (t!149397 tokens!457))))))

(declare-fun list!7024 (BalanceConc!11830) List!17940)

(assert (=> b!1629692 (= lt!590397 (list!7024 (_1!10129 lt!590416)))))

(declare-fun lt!590417 () Unit!29043)

(declare-fun theoremInvertabilityWhenTokenListSeparable!221 (LexerInterface!2776 List!17939 List!17940) Unit!29043)

(assert (=> b!1629692 (= lt!590417 (theoremInvertabilityWhenTokenListSeparable!221 thiss!17113 rules!1846 (t!149397 tokens!457)))))

(declare-fun isPrefix!1407 (List!17938 List!17938) Bool)

(assert (=> b!1629692 (isPrefix!1407 lt!590407 lt!590396)))

(declare-fun lt!590402 () Unit!29043)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!932 (List!17938 List!17938) Unit!29043)

(assert (=> b!1629692 (= lt!590402 (lemmaConcatTwoListThenFirstIsPrefix!932 lt!590407 lt!590420))))

(declare-fun b!1629708 () Bool)

(declare-fun tp!473264 () Bool)

(assert (=> b!1629708 (= e!1045118 (and tp!473264 (inv!23242 (tag!3427 (h!23270 rules!1846))) (inv!23245 (transformation!3147 (h!23270 rules!1846))) e!1045114))))

(declare-fun b!1629709 () Bool)

(declare-fun matchR!1974 (Regex!4475 List!17938) Bool)

(assert (=> b!1629709 (= e!1045115 (matchR!1974 (regex!3147 (rule!4979 (h!23271 tokens!457))) lt!590407))))

(declare-fun b!1629710 () Bool)

(declare-fun res!728795 () Bool)

(assert (=> b!1629710 (=> (not res!728795) (not e!1045135))))

(declare-fun isEmpty!10905 (List!17939) Bool)

(assert (=> b!1629710 (= res!728795 (not (isEmpty!10905 rules!1846)))))

(assert (=> b!1629711 (= e!1045129 (and tp!473263 tp!473266))))

(declare-fun b!1629712 () Bool)

(declare-fun e!1045126 () Bool)

(assert (=> b!1629712 (= e!1045128 e!1045126)))

(declare-fun res!728799 () Bool)

(assert (=> b!1629712 (=> res!728799 e!1045126)))

(assert (=> b!1629712 (= res!728799 (prefixMatch!410 lt!590403 (++!4761 lt!590407 lt!590413)))))

(assert (=> b!1629712 (= lt!590413 (list!7023 lt!590408))))

(declare-fun b!1629713 () Bool)

(declare-fun tp!473261 () Bool)

(declare-fun inv!23246 (Token!5860) Bool)

(assert (=> b!1629713 (= e!1045134 (and (inv!23246 (h!23271 tokens!457)) e!1045132 tp!473261))))

(declare-fun b!1629714 () Bool)

(assert (=> b!1629714 (= e!1045124 e!1045117)))

(declare-fun res!728816 () Bool)

(assert (=> b!1629714 (=> res!728816 e!1045117)))

(declare-fun lt!590419 () List!17938)

(declare-fun lt!590411 () List!17938)

(assert (=> b!1629714 (= res!728816 (or (not (= lt!590419 lt!590411)) (not (= lt!590411 lt!590407)) (not (= lt!590419 lt!590407))))))

(declare-fun printList!891 (LexerInterface!2776 List!17940) List!17938)

(assert (=> b!1629714 (= lt!590411 (printList!891 thiss!17113 (Cons!17870 (h!23271 tokens!457) Nil!17870)))))

(declare-fun lt!590409 () BalanceConc!11828)

(assert (=> b!1629714 (= lt!590419 (list!7023 lt!590409))))

(declare-fun lt!590415 () BalanceConc!11830)

(declare-fun printTailRec!829 (LexerInterface!2776 BalanceConc!11830 Int BalanceConc!11828) BalanceConc!11828)

(assert (=> b!1629714 (= lt!590409 (printTailRec!829 thiss!17113 lt!590415 0 (BalanceConc!11829 Empty!5942)))))

(assert (=> b!1629714 (= lt!590409 (print!1307 thiss!17113 lt!590415))))

(declare-fun singletonSeq!1573 (Token!5860) BalanceConc!11830)

(assert (=> b!1629714 (= lt!590415 (singletonSeq!1573 (h!23271 tokens!457)))))

(assert (=> b!1629714 (= lt!590421 (maxPrefix!1340 thiss!17113 rules!1846 lt!590412))))

(declare-fun b!1629715 () Bool)

(assert (=> b!1629715 (= e!1045126 e!1045125)))

(declare-fun res!728808 () Bool)

(assert (=> b!1629715 (=> res!728808 e!1045125)))

(declare-datatypes ((tuple2!17458 0))(
  ( (tuple2!17459 (_1!10131 Token!5860) (_2!10131 BalanceConc!11828)) )
))
(declare-datatypes ((Option!3322 0))(
  ( (None!3321) (Some!3321 (v!24374 tuple2!17458)) )
))
(declare-fun isDefined!2689 (Option!3322) Bool)

(declare-fun maxPrefixZipperSequence!671 (LexerInterface!2776 List!17939 BalanceConc!11828) Option!3322)

(assert (=> b!1629715 (= res!728808 (not (isDefined!2689 (maxPrefixZipperSequence!671 thiss!17113 rules!1846 (seqFromList!2044 (originalCharacters!3961 (h!23271 tokens!457)))))))))

(assert (=> b!1629715 (= lt!590413 lt!590398)))

(declare-fun head!3459 (BalanceConc!11828) C!9124)

(assert (=> b!1629715 (= lt!590398 (Cons!17868 (head!3459 lt!590422) Nil!17868))))

(assert (=> b!1629715 (= lt!590413 lt!590414)))

(assert (=> b!1629715 (= lt!590414 (Cons!17868 (head!3458 lt!590420) Nil!17868))))

(assert (=> b!1629715 e!1045116))

(declare-fun res!728809 () Bool)

(assert (=> b!1629715 (=> (not res!728809) (not e!1045116))))

(assert (=> b!1629715 (= res!728809 (= lt!590407 (originalCharacters!3961 (h!23271 tokens!457))))))

(declare-fun b!1629716 () Bool)

(assert (=> b!1629716 (= e!1045131 e!1045124)))

(declare-fun res!728810 () Bool)

(assert (=> b!1629716 (=> res!728810 e!1045124)))

(declare-fun lt!590401 () List!17940)

(declare-fun lt!590404 () List!17940)

(assert (=> b!1629716 (= res!728810 (or (not (= lt!590397 lt!590401)) (not (= lt!590401 lt!590404))))))

(assert (=> b!1629716 (= lt!590401 (list!7024 lt!590405))))

(assert (=> b!1629716 (= lt!590397 lt!590404)))

(declare-fun prepend!677 (BalanceConc!11830 Token!5860) BalanceConc!11830)

(assert (=> b!1629716 (= lt!590404 (list!7024 (prepend!677 (seqFromList!2043 (t!149397 (t!149397 tokens!457))) (h!23271 (t!149397 tokens!457)))))))

(declare-fun lt!590400 () Unit!29043)

(declare-fun seqFromListBHdTlConstructive!224 (Token!5860 List!17940 BalanceConc!11830) Unit!29043)

(assert (=> b!1629716 (= lt!590400 (seqFromListBHdTlConstructive!224 (h!23271 (t!149397 tokens!457)) (t!149397 (t!149397 tokens!457)) (_1!10129 lt!590416)))))

(declare-fun b!1629717 () Bool)

(declare-fun res!728811 () Bool)

(assert (=> b!1629717 (=> (not res!728811) (not e!1045135))))

(assert (=> b!1629717 (= res!728811 (and (not ((_ is Nil!17870) tokens!457)) (not ((_ is Nil!17870) (t!149397 tokens!457)))))))

(declare-fun b!1629718 () Bool)

(assert (=> b!1629718 (= e!1045130 e!1045133)))

(declare-fun res!728814 () Bool)

(assert (=> b!1629718 (=> res!728814 e!1045133)))

(assert (=> b!1629718 (= res!728814 (isEmpty!10904 lt!590420))))

(declare-fun ruleValid!741 (LexerInterface!2776 Rule!6094) Bool)

(assert (=> b!1629718 (ruleValid!741 thiss!17113 (rule!4979 (h!23271 tokens!457)))))

(declare-fun lt!590423 () Unit!29043)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!302 (LexerInterface!2776 Rule!6094 List!17939) Unit!29043)

(assert (=> b!1629718 (= lt!590423 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!302 thiss!17113 (rule!4979 (h!23271 tokens!457)) rules!1846))))

(assert (= (and start!155174 res!728800) b!1629710))

(assert (= (and b!1629710 res!728795) b!1629703))

(assert (= (and b!1629703 res!728812) b!1629697))

(assert (= (and b!1629697 res!728807) b!1629690))

(assert (= (and b!1629690 res!728804) b!1629717))

(assert (= (and b!1629717 res!728811) b!1629694))

(assert (= (and b!1629694 res!728806) b!1629692))

(assert (= (and b!1629692 (not res!728796)) b!1629716))

(assert (= (and b!1629716 (not res!728810)) b!1629693))

(assert (= (and b!1629693 (not res!728803)) b!1629714))

(assert (= (and b!1629714 (not res!728816)) b!1629688))

(assert (= (and b!1629688 (not res!728798)) b!1629699))

(assert (= (and b!1629699 (not res!728813)) b!1629698))

(assert (= (and b!1629698 (not res!728815)) b!1629702))

(assert (= (and b!1629702 (not res!728805)) b!1629712))

(assert (= (and b!1629712 (not res!728799)) b!1629715))

(assert (= (and b!1629715 res!728809) b!1629700))

(assert (= (and b!1629715 (not res!728808)) b!1629706))

(assert (= (and b!1629706 res!728802) b!1629705))

(assert (= (and b!1629705 res!728801) b!1629709))

(assert (= (and b!1629706 (not res!728818)) b!1629707))

(assert (= (and b!1629707 (not res!728797)) b!1629689))

(assert (= (and b!1629689 (not res!728817)) b!1629718))

(assert (= (and b!1629718 (not res!728814)) b!1629695))

(assert (= b!1629708 b!1629691))

(assert (= b!1629704 b!1629708))

(assert (= (and start!155174 ((_ is Cons!17869) rules!1846)) b!1629704))

(assert (= b!1629701 b!1629711))

(assert (= b!1629696 b!1629701))

(assert (= b!1629713 b!1629696))

(assert (= (and start!155174 ((_ is Cons!17870) tokens!457)) b!1629713))

(declare-fun m!1961545 () Bool)

(assert (=> b!1629689 m!1961545))

(declare-fun m!1961547 () Bool)

(assert (=> b!1629697 m!1961547))

(declare-fun m!1961549 () Bool)

(assert (=> b!1629696 m!1961549))

(declare-fun m!1961551 () Bool)

(assert (=> b!1629710 m!1961551))

(declare-fun m!1961553 () Bool)

(assert (=> b!1629690 m!1961553))

(declare-fun m!1961555 () Bool)

(assert (=> b!1629688 m!1961555))

(declare-fun m!1961557 () Bool)

(assert (=> b!1629698 m!1961557))

(declare-fun m!1961559 () Bool)

(assert (=> b!1629698 m!1961559))

(declare-fun m!1961561 () Bool)

(assert (=> b!1629702 m!1961561))

(declare-fun m!1961563 () Bool)

(assert (=> b!1629702 m!1961563))

(declare-fun m!1961565 () Bool)

(assert (=> b!1629702 m!1961565))

(declare-fun m!1961567 () Bool)

(assert (=> b!1629702 m!1961567))

(assert (=> b!1629702 m!1961563))

(declare-fun m!1961569 () Bool)

(assert (=> b!1629702 m!1961569))

(declare-fun m!1961571 () Bool)

(assert (=> b!1629702 m!1961571))

(assert (=> b!1629702 m!1961565))

(assert (=> b!1629702 m!1961571))

(declare-fun m!1961573 () Bool)

(assert (=> b!1629701 m!1961573))

(declare-fun m!1961575 () Bool)

(assert (=> b!1629701 m!1961575))

(declare-fun m!1961577 () Bool)

(assert (=> b!1629705 m!1961577))

(declare-fun m!1961579 () Bool)

(assert (=> b!1629708 m!1961579))

(declare-fun m!1961581 () Bool)

(assert (=> b!1629708 m!1961581))

(declare-fun m!1961583 () Bool)

(assert (=> b!1629713 m!1961583))

(declare-fun m!1961585 () Bool)

(assert (=> b!1629716 m!1961585))

(declare-fun m!1961587 () Bool)

(assert (=> b!1629716 m!1961587))

(declare-fun m!1961589 () Bool)

(assert (=> b!1629716 m!1961589))

(declare-fun m!1961591 () Bool)

(assert (=> b!1629716 m!1961591))

(declare-fun m!1961593 () Bool)

(assert (=> b!1629716 m!1961593))

(assert (=> b!1629716 m!1961589))

(assert (=> b!1629716 m!1961591))

(declare-fun m!1961595 () Bool)

(assert (=> b!1629695 m!1961595))

(assert (=> b!1629695 m!1961595))

(declare-fun m!1961597 () Bool)

(assert (=> b!1629695 m!1961597))

(declare-fun m!1961599 () Bool)

(assert (=> b!1629703 m!1961599))

(declare-fun m!1961601 () Bool)

(assert (=> b!1629709 m!1961601))

(declare-fun m!1961603 () Bool)

(assert (=> b!1629715 m!1961603))

(declare-fun m!1961605 () Bool)

(assert (=> b!1629715 m!1961605))

(declare-fun m!1961607 () Bool)

(assert (=> b!1629715 m!1961607))

(declare-fun m!1961609 () Bool)

(assert (=> b!1629715 m!1961609))

(declare-fun m!1961611 () Bool)

(assert (=> b!1629715 m!1961611))

(assert (=> b!1629715 m!1961603))

(assert (=> b!1629715 m!1961611))

(declare-fun m!1961613 () Bool)

(assert (=> b!1629707 m!1961613))

(assert (=> b!1629707 m!1961613))

(declare-fun m!1961615 () Bool)

(assert (=> b!1629707 m!1961615))

(declare-fun m!1961617 () Bool)

(assert (=> b!1629699 m!1961617))

(assert (=> b!1629699 m!1961617))

(declare-fun m!1961619 () Bool)

(assert (=> b!1629699 m!1961619))

(declare-fun m!1961621 () Bool)

(assert (=> b!1629699 m!1961621))

(declare-fun m!1961623 () Bool)

(assert (=> b!1629694 m!1961623))

(declare-fun m!1961625 () Bool)

(assert (=> b!1629694 m!1961625))

(declare-fun m!1961627 () Bool)

(assert (=> b!1629694 m!1961627))

(declare-fun m!1961629 () Bool)

(assert (=> b!1629694 m!1961629))

(declare-fun m!1961631 () Bool)

(assert (=> b!1629694 m!1961631))

(declare-fun m!1961633 () Bool)

(assert (=> b!1629694 m!1961633))

(declare-fun m!1961635 () Bool)

(assert (=> b!1629694 m!1961635))

(declare-fun m!1961637 () Bool)

(assert (=> b!1629694 m!1961637))

(declare-fun m!1961639 () Bool)

(assert (=> b!1629694 m!1961639))

(declare-fun m!1961641 () Bool)

(assert (=> b!1629694 m!1961641))

(assert (=> b!1629694 m!1961631))

(declare-fun m!1961643 () Bool)

(assert (=> b!1629692 m!1961643))

(declare-fun m!1961645 () Bool)

(assert (=> b!1629692 m!1961645))

(declare-fun m!1961647 () Bool)

(assert (=> b!1629692 m!1961647))

(declare-fun m!1961649 () Bool)

(assert (=> b!1629692 m!1961649))

(declare-fun m!1961651 () Bool)

(assert (=> b!1629693 m!1961651))

(declare-fun m!1961653 () Bool)

(assert (=> b!1629700 m!1961653))

(declare-fun m!1961655 () Bool)

(assert (=> b!1629718 m!1961655))

(declare-fun m!1961657 () Bool)

(assert (=> b!1629718 m!1961657))

(declare-fun m!1961659 () Bool)

(assert (=> b!1629718 m!1961659))

(declare-fun m!1961661 () Bool)

(assert (=> b!1629714 m!1961661))

(declare-fun m!1961663 () Bool)

(assert (=> b!1629714 m!1961663))

(declare-fun m!1961665 () Bool)

(assert (=> b!1629714 m!1961665))

(declare-fun m!1961667 () Bool)

(assert (=> b!1629714 m!1961667))

(declare-fun m!1961669 () Bool)

(assert (=> b!1629714 m!1961669))

(declare-fun m!1961671 () Bool)

(assert (=> b!1629714 m!1961671))

(declare-fun m!1961673 () Bool)

(assert (=> b!1629712 m!1961673))

(assert (=> b!1629712 m!1961673))

(declare-fun m!1961675 () Bool)

(assert (=> b!1629712 m!1961675))

(declare-fun m!1961677 () Bool)

(assert (=> b!1629712 m!1961677))

(declare-fun m!1961679 () Bool)

(assert (=> b!1629706 m!1961679))

(declare-fun m!1961681 () Bool)

(assert (=> b!1629706 m!1961681))

(declare-fun m!1961683 () Bool)

(assert (=> b!1629706 m!1961683))

(declare-fun m!1961685 () Bool)

(assert (=> b!1629706 m!1961685))

(assert (=> b!1629706 m!1961679))

(declare-fun m!1961687 () Bool)

(assert (=> b!1629706 m!1961687))

(declare-fun m!1961689 () Bool)

(assert (=> b!1629706 m!1961689))

(declare-fun m!1961691 () Bool)

(assert (=> b!1629706 m!1961691))

(assert (=> b!1629706 m!1961681))

(check-sat (not b!1629706) (not b!1629688) (not b!1629713) (not b!1629708) (not b!1629689) (not b!1629709) (not b!1629702) (not b!1629700) (not b!1629710) (not b!1629705) (not b!1629714) (not b!1629699) (not b!1629715) (not b!1629697) (not b!1629692) (not b!1629703) (not b_next!44669) (not b!1629712) (not b!1629707) (not b!1629716) b_and!115581 (not b!1629698) b_and!115585 (not b_next!44667) (not b!1629693) (not b_next!44663) (not b!1629694) (not b!1629704) (not b!1629718) (not b!1629701) (not b!1629696) (not b_next!44665) b_and!115583 (not b!1629695) (not b!1629690) b_and!115587)
(check-sat (not b_next!44669) b_and!115581 (not b_next!44663) (not b_next!44665) b_and!115583 b_and!115587 b_and!115585 (not b_next!44667))
