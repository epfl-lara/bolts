; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171366 () Bool)

(assert start!171366)

(declare-fun b!1740854 () Bool)

(declare-fun b_free!47835 () Bool)

(declare-fun b_next!48539 () Bool)

(assert (=> b!1740854 (= b_free!47835 (not b_next!48539))))

(declare-fun tp!495688 () Bool)

(declare-fun b_and!129363 () Bool)

(assert (=> b!1740854 (= tp!495688 b_and!129363)))

(declare-fun b_free!47837 () Bool)

(declare-fun b_next!48541 () Bool)

(assert (=> b!1740854 (= b_free!47837 (not b_next!48541))))

(declare-fun tp!495677 () Bool)

(declare-fun b_and!129365 () Bool)

(assert (=> b!1740854 (= tp!495677 b_and!129365)))

(declare-fun b!1740880 () Bool)

(declare-fun b_free!47839 () Bool)

(declare-fun b_next!48543 () Bool)

(assert (=> b!1740880 (= b_free!47839 (not b_next!48543))))

(declare-fun tp!495678 () Bool)

(declare-fun b_and!129367 () Bool)

(assert (=> b!1740880 (= tp!495678 b_and!129367)))

(declare-fun b_free!47841 () Bool)

(declare-fun b_next!48545 () Bool)

(assert (=> b!1740880 (= b_free!47841 (not b_next!48545))))

(declare-fun tp!495679 () Bool)

(declare-fun b_and!129369 () Bool)

(assert (=> b!1740880 (= tp!495679 b_and!129369)))

(declare-fun b!1740866 () Bool)

(declare-fun b_free!47843 () Bool)

(declare-fun b_next!48547 () Bool)

(assert (=> b!1740866 (= b_free!47843 (not b_next!48547))))

(declare-fun tp!495687 () Bool)

(declare-fun b_and!129371 () Bool)

(assert (=> b!1740866 (= tp!495687 b_and!129371)))

(declare-fun b_free!47845 () Bool)

(declare-fun b_next!48549 () Bool)

(assert (=> b!1740866 (= b_free!47845 (not b_next!48549))))

(declare-fun tp!495683 () Bool)

(declare-fun b_and!129373 () Bool)

(assert (=> b!1740866 (= tp!495683 b_and!129373)))

(declare-fun b!1740908 () Bool)

(declare-fun e!1114247 () Bool)

(assert (=> b!1740908 (= e!1114247 true)))

(declare-fun b!1740907 () Bool)

(declare-fun e!1114246 () Bool)

(assert (=> b!1740907 (= e!1114246 e!1114247)))

(declare-fun b!1740906 () Bool)

(declare-fun e!1114245 () Bool)

(assert (=> b!1740906 (= e!1114245 e!1114246)))

(declare-fun b!1740867 () Bool)

(assert (=> b!1740867 e!1114245))

(assert (= b!1740907 b!1740908))

(assert (= b!1740906 b!1740907))

(assert (= b!1740867 b!1740906))

(declare-fun lambda!69596 () Int)

(declare-datatypes ((List!19193 0))(
  ( (Nil!19123) (Cons!19123 (h!24524 (_ BitVec 16)) (t!161860 List!19193)) )
))
(declare-datatypes ((TokenValue!3495 0))(
  ( (FloatLiteralValue!6990 (text!24910 List!19193)) (TokenValueExt!3494 (__x!12292 Int)) (Broken!17475 (value!106689 List!19193)) (Object!3564) (End!3495) (Def!3495) (Underscore!3495) (Match!3495) (Else!3495) (Error!3495) (Case!3495) (If!3495) (Extends!3495) (Abstract!3495) (Class!3495) (Val!3495) (DelimiterValue!6990 (del!3555 List!19193)) (KeywordValue!3501 (value!106690 List!19193)) (CommentValue!6990 (value!106691 List!19193)) (WhitespaceValue!6990 (value!106692 List!19193)) (IndentationValue!3495 (value!106693 List!19193)) (String!21806) (Int32!3495) (Broken!17476 (value!106694 List!19193)) (Boolean!3496) (Unit!33180) (OperatorValue!3498 (op!3555 List!19193)) (IdentifierValue!6990 (value!106695 List!19193)) (IdentifierValue!6991 (value!106696 List!19193)) (WhitespaceValue!6991 (value!106697 List!19193)) (True!6990) (False!6990) (Broken!17477 (value!106698 List!19193)) (Broken!17478 (value!106699 List!19193)) (True!6991) (RightBrace!3495) (RightBracket!3495) (Colon!3495) (Null!3495) (Comma!3495) (LeftBracket!3495) (False!6991) (LeftBrace!3495) (ImaginaryLiteralValue!3495 (text!24911 List!19193)) (StringLiteralValue!10485 (value!106700 List!19193)) (EOFValue!3495 (value!106701 List!19193)) (IdentValue!3495 (value!106702 List!19193)) (DelimiterValue!6991 (value!106703 List!19193)) (DedentValue!3495 (value!106704 List!19193)) (NewLineValue!3495 (value!106705 List!19193)) (IntegerValue!10485 (value!106706 (_ BitVec 32)) (text!24912 List!19193)) (IntegerValue!10486 (value!106707 Int) (text!24913 List!19193)) (Times!3495) (Or!3495) (Equal!3495) (Minus!3495) (Broken!17479 (value!106708 List!19193)) (And!3495) (Div!3495) (LessEqual!3495) (Mod!3495) (Concat!8228) (Not!3495) (Plus!3495) (SpaceValue!3495 (value!106709 List!19193)) (IntegerValue!10487 (value!106710 Int) (text!24914 List!19193)) (StringLiteralValue!10486 (text!24915 List!19193)) (FloatLiteralValue!6991 (text!24916 List!19193)) (BytesLiteralValue!3495 (value!106711 List!19193)) (CommentValue!6991 (value!106712 List!19193)) (StringLiteralValue!10487 (value!106713 List!19193)) (ErrorTokenValue!3495 (msg!3556 List!19193)) )
))
(declare-datatypes ((C!9640 0))(
  ( (C!9641 (val!5416 Int)) )
))
(declare-datatypes ((List!19194 0))(
  ( (Nil!19124) (Cons!19124 (h!24525 C!9640) (t!161861 List!19194)) )
))
(declare-datatypes ((Regex!4733 0))(
  ( (ElementMatch!4733 (c!284072 C!9640)) (Concat!8229 (regOne!9978 Regex!4733) (regTwo!9978 Regex!4733)) (EmptyExpr!4733) (Star!4733 (reg!5062 Regex!4733)) (EmptyLang!4733) (Union!4733 (regOne!9979 Regex!4733) (regTwo!9979 Regex!4733)) )
))
(declare-datatypes ((String!21807 0))(
  ( (String!21808 (value!106714 String)) )
))
(declare-datatypes ((IArray!12727 0))(
  ( (IArray!12728 (innerList!6421 List!19194)) )
))
(declare-datatypes ((Conc!6361 0))(
  ( (Node!6361 (left!15297 Conc!6361) (right!15627 Conc!6361) (csize!12952 Int) (cheight!6572 Int)) (Leaf!9284 (xs!9237 IArray!12727) (csize!12953 Int)) (Empty!6361) )
))
(declare-datatypes ((BalanceConc!12666 0))(
  ( (BalanceConc!12667 (c!284073 Conc!6361)) )
))
(declare-datatypes ((TokenValueInjection!6650 0))(
  ( (TokenValueInjection!6651 (toValue!4912 Int) (toChars!4771 Int)) )
))
(declare-datatypes ((Rule!6610 0))(
  ( (Rule!6611 (regex!3405 Regex!4733) (tag!3743 String!21807) (isSeparator!3405 Bool) (transformation!3405 TokenValueInjection!6650)) )
))
(declare-datatypes ((Token!6376 0))(
  ( (Token!6377 (value!106715 TokenValue!3495) (rule!5407 Rule!6610) (size!15200 Int) (originalCharacters!4219 List!19194)) )
))
(declare-datatypes ((tuple2!18778 0))(
  ( (tuple2!18779 (_1!10791 Token!6376) (_2!10791 List!19194)) )
))
(declare-fun lt!671187 () tuple2!18778)

(declare-fun order!11941 () Int)

(declare-fun order!11939 () Int)

(declare-fun dynLambda!9040 (Int Int) Int)

(declare-fun dynLambda!9041 (Int Int) Int)

(assert (=> b!1740908 (< (dynLambda!9040 order!11939 (toValue!4912 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) (dynLambda!9041 order!11941 lambda!69596))))

(declare-fun order!11943 () Int)

(declare-fun dynLambda!9042 (Int Int) Int)

(assert (=> b!1740908 (< (dynLambda!9042 order!11943 (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) (dynLambda!9041 order!11941 lambda!69596))))

(declare-fun b!1740852 () Bool)

(declare-fun e!1114206 () Bool)

(assert (=> b!1740852 (= e!1114206 true)))

(declare-fun lt!671202 () Bool)

(declare-datatypes ((LexerInterface!3034 0))(
  ( (LexerInterfaceExt!3031 (__x!12293 Int)) (Lexer!3032) )
))
(declare-fun thiss!24550 () LexerInterface!3034)

(declare-datatypes ((List!19195 0))(
  ( (Nil!19125) (Cons!19125 (h!24526 Rule!6610) (t!161862 List!19195)) )
))
(declare-fun rules!3447 () List!19195)

(declare-fun rulesValidInductive!1134 (LexerInterface!3034 List!19195) Bool)

(assert (=> b!1740852 (= lt!671202 (rulesValidInductive!1134 thiss!24550 rules!3447))))

(declare-fun b!1740853 () Bool)

(declare-fun e!1114211 () Bool)

(assert (=> b!1740853 e!1114211))

(declare-fun res!782597 () Bool)

(assert (=> b!1740853 (=> (not res!782597) (not e!1114211))))

(declare-fun lt!671206 () List!19194)

(declare-fun matchR!2207 (Regex!4733 List!19194) Bool)

(assert (=> b!1740853 (= res!782597 (not (matchR!2207 (regex!3405 (rule!5407 (_1!10791 lt!671187))) lt!671206)))))

(declare-datatypes ((Unit!33181 0))(
  ( (Unit!33182) )
))
(declare-fun lt!671195 () Unit!33181)

(declare-fun token!523 () Token!6376)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!142 (LexerInterface!3034 List!19195 Rule!6610 List!19194 List!19194 Rule!6610) Unit!33181)

(assert (=> b!1740853 (= lt!671195 (lemmaMaxPrefNoSmallerRuleMatches!142 thiss!24550 rules!3447 (rule!5407 token!523) lt!671206 lt!671206 (rule!5407 (_1!10791 lt!671187))))))

(declare-fun e!1114223 () Unit!33181)

(declare-fun Unit!33183 () Unit!33181)

(assert (=> b!1740853 (= e!1114223 Unit!33183)))

(declare-fun e!1114208 () Bool)

(assert (=> b!1740854 (= e!1114208 (and tp!495688 tp!495677))))

(declare-fun b!1740855 () Bool)

(declare-fun e!1114226 () Bool)

(declare-fun lt!671223 () Rule!6610)

(assert (=> b!1740855 (= e!1114226 (= (rule!5407 (_1!10791 lt!671187)) lt!671223))))

(declare-fun b!1740856 () Bool)

(declare-fun res!782598 () Bool)

(declare-fun e!1114218 () Bool)

(assert (=> b!1740856 (=> (not res!782598) (not e!1114218))))

(declare-fun lt!671201 () tuple2!18778)

(declare-fun isEmpty!12037 (List!19194) Bool)

(assert (=> b!1740856 (= res!782598 (isEmpty!12037 (_2!10791 lt!671201)))))

(declare-fun b!1740857 () Bool)

(declare-fun e!1114220 () Unit!33181)

(declare-fun Unit!33184 () Unit!33181)

(assert (=> b!1740857 (= e!1114220 Unit!33184)))

(declare-fun b!1740858 () Bool)

(assert (=> b!1740858 (= e!1114211 false)))

(declare-fun b!1740859 () Bool)

(declare-fun e!1114221 () Unit!33181)

(declare-fun Unit!33185 () Unit!33181)

(assert (=> b!1740859 (= e!1114221 Unit!33185)))

(declare-fun b!1740860 () Bool)

(declare-fun res!782577 () Bool)

(declare-fun e!1114222 () Bool)

(assert (=> b!1740860 (=> (not res!782577) (not e!1114222))))

(declare-fun rulesInvariant!2703 (LexerInterface!3034 List!19195) Bool)

(assert (=> b!1740860 (= res!782577 (rulesInvariant!2703 thiss!24550 rules!3447))))

(declare-fun b!1740861 () Bool)

(declare-fun Unit!33186 () Unit!33181)

(assert (=> b!1740861 (= e!1114221 Unit!33186)))

(declare-fun lt!671210 () Int)

(declare-fun getIndex!172 (List!19195 Rule!6610) Int)

(assert (=> b!1740861 (= lt!671210 (getIndex!172 rules!3447 (rule!5407 token!523)))))

(declare-fun lt!671211 () Int)

(assert (=> b!1740861 (= lt!671211 (getIndex!172 rules!3447 (rule!5407 (_1!10791 lt!671187))))))

(declare-fun c!284069 () Bool)

(assert (=> b!1740861 (= c!284069 (< lt!671210 lt!671211))))

(declare-fun lt!671197 () Unit!33181)

(declare-fun e!1114203 () Unit!33181)

(assert (=> b!1740861 (= lt!671197 e!1114203)))

(declare-fun c!284071 () Bool)

(assert (=> b!1740861 (= c!284071 (< lt!671211 lt!671210))))

(declare-fun lt!671188 () Unit!33181)

(assert (=> b!1740861 (= lt!671188 e!1114223)))

(declare-fun c!284070 () Bool)

(assert (=> b!1740861 (= c!284070 (= lt!671211 lt!671210))))

(declare-fun lt!671186 () Unit!33181)

(declare-fun e!1114227 () Unit!33181)

(assert (=> b!1740861 (= lt!671186 e!1114227)))

(assert (=> b!1740861 false))

(declare-fun b!1740862 () Bool)

(declare-fun e!1114219 () Bool)

(assert (=> b!1740862 (= e!1114219 e!1114218)))

(declare-fun res!782582 () Bool)

(assert (=> b!1740862 (=> (not res!782582) (not e!1114218))))

(assert (=> b!1740862 (= res!782582 (= (_1!10791 lt!671201) token!523))))

(declare-datatypes ((Option!3834 0))(
  ( (None!3833) (Some!3833 (v!25264 tuple2!18778)) )
))
(declare-fun lt!671193 () Option!3834)

(declare-fun get!5754 (Option!3834) tuple2!18778)

(assert (=> b!1740862 (= lt!671201 (get!5754 lt!671193))))

(declare-fun b!1740863 () Bool)

(declare-fun e!1114229 () Bool)

(assert (=> b!1740863 (= e!1114229 e!1114226)))

(declare-fun res!782591 () Bool)

(assert (=> b!1740863 (=> (not res!782591) (not e!1114226))))

(declare-fun list!7734 (BalanceConc!12666) List!19194)

(declare-fun charsOf!2054 (Token!6376) BalanceConc!12666)

(assert (=> b!1740863 (= res!782591 (matchR!2207 (regex!3405 lt!671223) (list!7734 (charsOf!2054 (_1!10791 lt!671187)))))))

(declare-datatypes ((Option!3835 0))(
  ( (None!3834) (Some!3834 (v!25265 Rule!6610)) )
))
(declare-fun lt!671200 () Option!3835)

(declare-fun get!5755 (Option!3835) Rule!6610)

(assert (=> b!1740863 (= lt!671223 (get!5755 lt!671200))))

(declare-fun b!1740864 () Bool)

(declare-fun Unit!33187 () Unit!33181)

(assert (=> b!1740864 (= e!1114203 Unit!33187)))

(declare-fun b!1740865 () Bool)

(declare-fun res!782590 () Bool)

(declare-fun e!1114228 () Bool)

(assert (=> b!1740865 (=> res!782590 e!1114228)))

(declare-fun lt!671209 () BalanceConc!12666)

(declare-fun dynLambda!9043 (Int TokenValue!3495) BalanceConc!12666)

(assert (=> b!1740865 (= res!782590 (not (= lt!671209 (dynLambda!9043 (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) (value!106715 (_1!10791 lt!671187))))))))

(declare-fun e!1114230 () Bool)

(assert (=> b!1740866 (= e!1114230 (and tp!495687 tp!495683))))

(declare-fun e!1114207 () Bool)

(declare-fun e!1114233 () Bool)

(assert (=> b!1740867 (= e!1114207 e!1114233)))

(declare-fun res!782578 () Bool)

(assert (=> b!1740867 (=> res!782578 e!1114233)))

(declare-fun Forall!780 (Int) Bool)

(assert (=> b!1740867 (= res!782578 (not (Forall!780 lambda!69596)))))

(declare-fun lt!671224 () Unit!33181)

(declare-fun lemmaInv!612 (TokenValueInjection!6650) Unit!33181)

(assert (=> b!1740867 (= lt!671224 (lemmaInv!612 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))))))

(declare-fun b!1740868 () Bool)

(declare-fun res!782584 () Bool)

(assert (=> b!1740868 (=> (not res!782584) (not e!1114222))))

(declare-fun isEmpty!12038 (List!19195) Bool)

(assert (=> b!1740868 (= res!782584 (not (isEmpty!12038 rules!3447)))))

(declare-fun b!1740869 () Bool)

(assert (=> b!1740869 (= e!1114222 e!1114219)))

(declare-fun res!782593 () Bool)

(assert (=> b!1740869 (=> (not res!782593) (not e!1114219))))

(declare-fun isDefined!3177 (Option!3834) Bool)

(assert (=> b!1740869 (= res!782593 (isDefined!3177 lt!671193))))

(declare-fun maxPrefix!1588 (LexerInterface!3034 List!19195 List!19194) Option!3834)

(assert (=> b!1740869 (= lt!671193 (maxPrefix!1588 thiss!24550 rules!3447 lt!671206))))

(declare-fun lt!671233 () BalanceConc!12666)

(assert (=> b!1740869 (= lt!671206 (list!7734 lt!671233))))

(assert (=> b!1740869 (= lt!671233 (charsOf!2054 token!523))))

(declare-fun b!1740870 () Bool)

(declare-fun e!1114210 () Bool)

(declare-fun e!1114234 () Bool)

(assert (=> b!1740870 (= e!1114210 e!1114234)))

(declare-fun res!782596 () Bool)

(assert (=> b!1740870 (=> res!782596 e!1114234)))

(declare-fun lt!671227 () Option!3834)

(declare-fun lt!671194 () List!19194)

(assert (=> b!1740870 (= res!782596 (or (not (= lt!671194 (_2!10791 lt!671187))) (not (= lt!671227 (Some!3833 (tuple2!18779 (_1!10791 lt!671187) lt!671194))))))))

(assert (=> b!1740870 (= (_2!10791 lt!671187) lt!671194)))

(declare-fun lt!671180 () List!19194)

(declare-fun lt!671217 () List!19194)

(declare-fun lt!671231 () Unit!33181)

(declare-fun lemmaSamePrefixThenSameSuffix!790 (List!19194 List!19194 List!19194 List!19194 List!19194) Unit!33181)

(assert (=> b!1740870 (= lt!671231 (lemmaSamePrefixThenSameSuffix!790 lt!671217 (_2!10791 lt!671187) lt!671217 lt!671194 lt!671180))))

(declare-fun getSuffix!840 (List!19194 List!19194) List!19194)

(assert (=> b!1740870 (= lt!671194 (getSuffix!840 lt!671180 lt!671217))))

(declare-fun lt!671222 () Int)

(declare-fun lt!671205 () TokenValue!3495)

(assert (=> b!1740870 (= lt!671227 (Some!3833 (tuple2!18779 (Token!6377 lt!671205 (rule!5407 (_1!10791 lt!671187)) lt!671222 lt!671217) (_2!10791 lt!671187))))))

(declare-fun maxPrefixOneRule!964 (LexerInterface!3034 Rule!6610 List!19194) Option!3834)

(assert (=> b!1740870 (= lt!671227 (maxPrefixOneRule!964 thiss!24550 (rule!5407 (_1!10791 lt!671187)) lt!671180))))

(declare-fun size!15201 (List!19194) Int)

(assert (=> b!1740870 (= lt!671222 (size!15201 lt!671217))))

(declare-fun apply!5210 (TokenValueInjection!6650 BalanceConc!12666) TokenValue!3495)

(declare-fun seqFromList!2379 (List!19194) BalanceConc!12666)

(assert (=> b!1740870 (= lt!671205 (apply!5210 (transformation!3405 (rule!5407 (_1!10791 lt!671187))) (seqFromList!2379 lt!671217)))))

(declare-fun lt!671181 () Unit!33181)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!363 (LexerInterface!3034 List!19195 List!19194 List!19194 List!19194 Rule!6610) Unit!33181)

(assert (=> b!1740870 (= lt!671181 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!363 thiss!24550 rules!3447 lt!671217 lt!671180 (_2!10791 lt!671187) (rule!5407 (_1!10791 lt!671187))))))

(declare-fun b!1740871 () Bool)

(declare-fun e!1114216 () Bool)

(assert (=> b!1740871 (= e!1114218 (not e!1114216))))

(declare-fun res!782579 () Bool)

(assert (=> b!1740871 (=> res!782579 e!1114216)))

(declare-fun rule!422 () Rule!6610)

(assert (=> b!1740871 (= res!782579 (not (matchR!2207 (regex!3405 rule!422) lt!671206)))))

(declare-fun ruleValid!904 (LexerInterface!3034 Rule!6610) Bool)

(assert (=> b!1740871 (ruleValid!904 thiss!24550 rule!422)))

(declare-fun lt!671228 () Unit!33181)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!428 (LexerInterface!3034 Rule!6610 List!19195) Unit!33181)

(assert (=> b!1740871 (= lt!671228 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!428 thiss!24550 rule!422 rules!3447))))

(declare-fun tp!495682 () Bool)

(declare-fun b!1740872 () Bool)

(declare-fun e!1114215 () Bool)

(declare-fun inv!24778 (String!21807) Bool)

(declare-fun inv!24783 (TokenValueInjection!6650) Bool)

(assert (=> b!1740872 (= e!1114215 (and tp!495682 (inv!24778 (tag!3743 (h!24526 rules!3447))) (inv!24783 (transformation!3405 (h!24526 rules!3447))) e!1114208))))

(declare-fun b!1740873 () Bool)

(declare-fun res!782576 () Bool)

(assert (=> b!1740873 (=> res!782576 e!1114216)))

(declare-fun suffix!1421 () List!19194)

(assert (=> b!1740873 (= res!782576 (isEmpty!12037 suffix!1421))))

(declare-fun b!1740874 () Bool)

(declare-fun tp!495685 () Bool)

(declare-fun e!1114217 () Bool)

(declare-fun e!1114224 () Bool)

(declare-fun inv!21 (TokenValue!3495) Bool)

(assert (=> b!1740874 (= e!1114217 (and (inv!21 (value!106715 token!523)) e!1114224 tp!495685))))

(declare-fun b!1740875 () Bool)

(declare-fun e!1114232 () Bool)

(declare-fun tp!495680 () Bool)

(assert (=> b!1740875 (= e!1114232 (and e!1114215 tp!495680))))

(declare-fun b!1740876 () Bool)

(declare-fun Unit!33188 () Unit!33181)

(assert (=> b!1740876 (= e!1114227 Unit!33188)))

(declare-fun b!1740877 () Bool)

(declare-fun e!1114213 () Unit!33181)

(declare-fun Unit!33189 () Unit!33181)

(assert (=> b!1740877 (= e!1114213 Unit!33189)))

(declare-fun b!1740878 () Bool)

(assert (=> b!1740878 false))

(declare-fun lt!671184 () Unit!33181)

(declare-fun lemmaSameIndexThenSameElement!106 (List!19195 Rule!6610 Rule!6610) Unit!33181)

(assert (=> b!1740878 (= lt!671184 (lemmaSameIndexThenSameElement!106 rules!3447 (rule!5407 (_1!10791 lt!671187)) (rule!5407 token!523)))))

(declare-fun Unit!33190 () Unit!33181)

(assert (=> b!1740878 (= e!1114227 Unit!33190)))

(declare-fun b!1740879 () Bool)

(declare-fun Unit!33191 () Unit!33181)

(assert (=> b!1740879 (= e!1114223 Unit!33191)))

(declare-fun e!1114212 () Bool)

(assert (=> b!1740880 (= e!1114212 (and tp!495678 tp!495679))))

(declare-fun res!782595 () Bool)

(assert (=> start!171366 (=> (not res!782595) (not e!1114222))))

(get-info :version)

(assert (=> start!171366 (= res!782595 ((_ is Lexer!3032) thiss!24550))))

(assert (=> start!171366 e!1114222))

(declare-fun e!1114238 () Bool)

(assert (=> start!171366 e!1114238))

(declare-fun e!1114235 () Bool)

(assert (=> start!171366 e!1114235))

(assert (=> start!171366 true))

(declare-fun inv!24784 (Token!6376) Bool)

(assert (=> start!171366 (and (inv!24784 token!523) e!1114217)))

(assert (=> start!171366 e!1114232))

(declare-fun b!1740881 () Bool)

(declare-fun Unit!33192 () Unit!33181)

(assert (=> b!1740881 (= e!1114220 Unit!33192)))

(declare-fun lt!671203 () Unit!33181)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!154 (LexerInterface!3034 List!19195 List!19194 Token!6376 Rule!6610 List!19194) Unit!33181)

(assert (=> b!1740881 (= lt!671203 (lemmaMaxPrefixThenMatchesRulesRegex!154 thiss!24550 rules!3447 lt!671180 (_1!10791 lt!671187) (rule!5407 (_1!10791 lt!671187)) (_2!10791 lt!671187)))))

(declare-fun lt!671232 () Regex!4733)

(assert (=> b!1740881 (matchR!2207 lt!671232 lt!671217)))

(declare-fun lt!671214 () List!19194)

(assert (=> b!1740881 (= lt!671214 (getSuffix!840 lt!671180 lt!671206))))

(declare-fun lt!671183 () Unit!33181)

(assert (=> b!1740881 (= lt!671183 (lemmaSamePrefixThenSameSuffix!790 lt!671206 suffix!1421 lt!671206 lt!671214 lt!671180))))

(assert (=> b!1740881 (= suffix!1421 lt!671214)))

(declare-fun lt!671213 () Unit!33181)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!241 (List!19194 List!19194) Unit!33181)

(assert (=> b!1740881 (= lt!671213 (lemmaAddHeadSuffixToPrefixStillPrefix!241 lt!671206 lt!671180))))

(declare-fun isPrefix!1646 (List!19194 List!19194) Bool)

(declare-fun ++!5230 (List!19194 List!19194) List!19194)

(declare-fun head!3986 (List!19194) C!9640)

(assert (=> b!1740881 (isPrefix!1646 (++!5230 lt!671206 (Cons!19124 (head!3986 lt!671214) Nil!19124)) lt!671180)))

(declare-fun lt!671212 () Unit!33181)

(declare-fun lt!671221 () List!19194)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!121 (List!19194 List!19194 List!19194) Unit!33181)

(assert (=> b!1740881 (= lt!671212 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!121 lt!671217 lt!671221 lt!671180))))

(assert (=> b!1740881 (isPrefix!1646 lt!671221 lt!671217)))

(declare-fun lt!671225 () Unit!33181)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!114 (Regex!4733 List!19194 List!19194) Unit!33181)

(assert (=> b!1740881 (= lt!671225 (lemmaNotPrefixMatchThenCannotMatchLonger!114 lt!671232 lt!671221 lt!671217))))

(assert (=> b!1740881 false))

(declare-fun b!1740882 () Bool)

(declare-fun Unit!33193 () Unit!33181)

(assert (=> b!1740882 (= e!1114213 Unit!33193)))

(declare-fun lt!671189 () Unit!33181)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!202 (LexerInterface!3034 List!19195 Rule!6610 List!19194 List!19194 List!19194 Rule!6610) Unit!33181)

(assert (=> b!1740882 (= lt!671189 (lemmaMaxPrefixOutputsMaxPrefix!202 thiss!24550 rules!3447 (rule!5407 (_1!10791 lt!671187)) lt!671217 lt!671180 lt!671206 rule!422))))

(assert (=> b!1740882 false))

(declare-fun b!1740883 () Bool)

(declare-fun tp!495681 () Bool)

(assert (=> b!1740883 (= e!1114224 (and tp!495681 (inv!24778 (tag!3743 (rule!5407 token!523))) (inv!24783 (transformation!3405 (rule!5407 token!523))) e!1114212))))

(declare-fun tp!495684 () Bool)

(declare-fun b!1740884 () Bool)

(assert (=> b!1740884 (= e!1114235 (and tp!495684 (inv!24778 (tag!3743 rule!422)) (inv!24783 (transformation!3405 rule!422)) e!1114230))))

(declare-fun b!1740885 () Bool)

(declare-fun tp_is_empty!7709 () Bool)

(declare-fun tp!495686 () Bool)

(assert (=> b!1740885 (= e!1114238 (and tp_is_empty!7709 tp!495686))))

(declare-fun b!1740886 () Bool)

(declare-fun res!782600 () Bool)

(assert (=> b!1740886 (=> (not res!782600) (not e!1114222))))

(declare-fun contains!3427 (List!19195 Rule!6610) Bool)

(assert (=> b!1740886 (= res!782600 (contains!3427 rules!3447 rule!422))))

(declare-fun b!1740887 () Bool)

(declare-fun e!1114204 () Bool)

(declare-fun e!1114225 () Bool)

(assert (=> b!1740887 (= e!1114204 e!1114225)))

(declare-fun res!782583 () Bool)

(assert (=> b!1740887 (=> res!782583 e!1114225)))

(declare-fun lt!671185 () Int)

(declare-fun lt!671216 () Int)

(assert (=> b!1740887 (= res!782583 (not (= lt!671185 lt!671216)))))

(declare-fun lt!671229 () Unit!33181)

(assert (=> b!1740887 (= lt!671229 e!1114213)))

(declare-fun c!284068 () Bool)

(assert (=> b!1740887 (= c!284068 (< lt!671185 lt!671216))))

(declare-fun b!1740888 () Bool)

(declare-fun res!782599 () Bool)

(assert (=> b!1740888 (=> res!782599 e!1114207)))

(assert (=> b!1740888 (= res!782599 (not (matchR!2207 (regex!3405 (rule!5407 (_1!10791 lt!671187))) lt!671217)))))

(declare-fun b!1740889 () Bool)

(assert (=> b!1740889 (= e!1114228 e!1114210)))

(declare-fun res!782589 () Bool)

(assert (=> b!1740889 (=> res!782589 e!1114210)))

(declare-fun lt!671208 () Option!3834)

(declare-fun lt!671207 () TokenValue!3495)

(assert (=> b!1740889 (= res!782589 (not (= lt!671208 (Some!3833 (tuple2!18779 (Token!6377 lt!671207 (rule!5407 (_1!10791 lt!671187)) lt!671185 lt!671217) (_2!10791 lt!671187))))))))

(declare-fun size!15202 (BalanceConc!12666) Int)

(assert (=> b!1740889 (= lt!671185 (size!15202 lt!671209))))

(assert (=> b!1740889 (= lt!671207 (apply!5210 (transformation!3405 (rule!5407 (_1!10791 lt!671187))) lt!671209))))

(declare-fun lt!671230 () Unit!33181)

(declare-fun lemmaCharactersSize!477 (Token!6376) Unit!33181)

(assert (=> b!1740889 (= lt!671230 (lemmaCharactersSize!477 (_1!10791 lt!671187)))))

(declare-fun lt!671198 () Unit!33181)

(declare-fun lemmaEqSameImage!330 (TokenValueInjection!6650 BalanceConc!12666 BalanceConc!12666) Unit!33181)

(assert (=> b!1740889 (= lt!671198 (lemmaEqSameImage!330 (transformation!3405 (rule!5407 (_1!10791 lt!671187))) lt!671209 (seqFromList!2379 (originalCharacters!4219 (_1!10791 lt!671187)))))))

(declare-fun b!1740890 () Bool)

(declare-fun res!782585 () Bool)

(assert (=> b!1740890 (=> (not res!782585) (not e!1114218))))

(assert (=> b!1740890 (= res!782585 (= (rule!5407 token!523) rule!422))))

(declare-fun b!1740891 () Bool)

(declare-fun e!1114209 () Bool)

(assert (=> b!1740891 (= e!1114216 e!1114209)))

(declare-fun res!782592 () Bool)

(assert (=> b!1740891 (=> res!782592 e!1114209)))

(declare-fun prefixMatch!618 (Regex!4733 List!19194) Bool)

(assert (=> b!1740891 (= res!782592 (prefixMatch!618 lt!671232 lt!671221))))

(assert (=> b!1740891 (= lt!671221 (++!5230 lt!671206 (Cons!19124 (head!3986 suffix!1421) Nil!19124)))))

(declare-fun rulesRegex!763 (LexerInterface!3034 List!19195) Regex!4733)

(assert (=> b!1740891 (= lt!671232 (rulesRegex!763 thiss!24550 rules!3447))))

(declare-fun b!1740892 () Bool)

(assert (=> b!1740892 (= e!1114209 e!1114207)))

(declare-fun res!782588 () Bool)

(assert (=> b!1740892 (=> res!782588 e!1114207)))

(assert (=> b!1740892 (= res!782588 (not (isPrefix!1646 lt!671217 lt!671180)))))

(assert (=> b!1740892 (isPrefix!1646 lt!671217 (++!5230 lt!671217 (_2!10791 lt!671187)))))

(declare-fun lt!671234 () Unit!33181)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1156 (List!19194 List!19194) Unit!33181)

(assert (=> b!1740892 (= lt!671234 (lemmaConcatTwoListThenFirstIsPrefix!1156 lt!671217 (_2!10791 lt!671187)))))

(assert (=> b!1740892 (= lt!671217 (list!7734 lt!671209))))

(assert (=> b!1740892 (= lt!671209 (charsOf!2054 (_1!10791 lt!671187)))))

(assert (=> b!1740892 e!1114229))

(declare-fun res!782586 () Bool)

(assert (=> b!1740892 (=> (not res!782586) (not e!1114229))))

(declare-fun isDefined!3178 (Option!3835) Bool)

(assert (=> b!1740892 (= res!782586 (isDefined!3178 lt!671200))))

(declare-fun getRuleFromTag!455 (LexerInterface!3034 List!19195 String!21807) Option!3835)

(assert (=> b!1740892 (= lt!671200 (getRuleFromTag!455 thiss!24550 rules!3447 (tag!3743 (rule!5407 (_1!10791 lt!671187)))))))

(declare-fun lt!671218 () Unit!33181)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!455 (LexerInterface!3034 List!19195 List!19194 Token!6376) Unit!33181)

(assert (=> b!1740892 (= lt!671218 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!455 thiss!24550 rules!3447 lt!671180 (_1!10791 lt!671187)))))

(assert (=> b!1740892 (= lt!671187 (get!5754 lt!671208))))

(declare-fun lt!671204 () Unit!33181)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!558 (LexerInterface!3034 List!19195 List!19194 List!19194) Unit!33181)

(assert (=> b!1740892 (= lt!671204 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!558 thiss!24550 rules!3447 lt!671206 suffix!1421))))

(assert (=> b!1740892 (= lt!671208 (maxPrefix!1588 thiss!24550 rules!3447 lt!671180))))

(assert (=> b!1740892 (isPrefix!1646 lt!671206 lt!671180)))

(declare-fun lt!671220 () Unit!33181)

(assert (=> b!1740892 (= lt!671220 (lemmaConcatTwoListThenFirstIsPrefix!1156 lt!671206 suffix!1421))))

(assert (=> b!1740892 (= lt!671180 (++!5230 lt!671206 suffix!1421))))

(declare-fun b!1740893 () Bool)

(assert (=> b!1740893 (= e!1114234 e!1114204)))

(declare-fun res!782594 () Bool)

(assert (=> b!1740893 (=> res!782594 e!1114204)))

(declare-fun lt!671219 () Bool)

(assert (=> b!1740893 (= res!782594 lt!671219)))

(declare-fun lt!671199 () Unit!33181)

(assert (=> b!1740893 (= lt!671199 e!1114220)))

(declare-fun c!284067 () Bool)

(assert (=> b!1740893 (= c!284067 lt!671219)))

(assert (=> b!1740893 (= lt!671219 (> lt!671185 lt!671216))))

(assert (=> b!1740893 (= lt!671216 (size!15202 lt!671233))))

(assert (=> b!1740893 (matchR!2207 lt!671232 lt!671206)))

(declare-fun lt!671226 () Unit!33181)

(assert (=> b!1740893 (= lt!671226 (lemmaMaxPrefixThenMatchesRulesRegex!154 thiss!24550 rules!3447 lt!671206 token!523 rule!422 Nil!19124))))

(declare-fun b!1740894 () Bool)

(assert (=> b!1740894 (= e!1114233 e!1114228)))

(declare-fun res!782580 () Bool)

(assert (=> b!1740894 (=> res!782580 e!1114228)))

(declare-fun dynLambda!9044 (Int BalanceConc!12666) TokenValue!3495)

(assert (=> b!1740894 (= res!782580 (not (= (list!7734 (dynLambda!9043 (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) (dynLambda!9044 (toValue!4912 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) lt!671209))) lt!671217)))))

(declare-fun lt!671192 () Unit!33181)

(declare-fun lemmaSemiInverse!551 (TokenValueInjection!6650 BalanceConc!12666) Unit!33181)

(assert (=> b!1740894 (= lt!671192 (lemmaSemiInverse!551 (transformation!3405 (rule!5407 (_1!10791 lt!671187))) lt!671209))))

(declare-fun b!1740895 () Bool)

(assert (=> b!1740895 (= e!1114225 e!1114206)))

(declare-fun res!782587 () Bool)

(assert (=> b!1740895 (=> res!782587 e!1114206)))

(declare-fun lt!671190 () Bool)

(assert (=> b!1740895 (= res!782587 (or lt!671190 (not (= token!523 (_1!10791 lt!671187)))))))

(declare-fun lt!671182 () Unit!33181)

(assert (=> b!1740895 (= lt!671182 e!1114221)))

(declare-fun c!284066 () Bool)

(assert (=> b!1740895 (= c!284066 lt!671190)))

(assert (=> b!1740895 (= lt!671190 (not (= (rule!5407 (_1!10791 lt!671187)) (rule!5407 token!523))))))

(assert (=> b!1740895 (= suffix!1421 (_2!10791 lt!671187))))

(declare-fun lt!671215 () Unit!33181)

(assert (=> b!1740895 (= lt!671215 (lemmaSamePrefixThenSameSuffix!790 lt!671206 suffix!1421 lt!671206 (_2!10791 lt!671187) lt!671180))))

(assert (=> b!1740895 (= lt!671217 lt!671206)))

(declare-fun lt!671196 () Unit!33181)

(declare-fun lemmaIsPrefixSameLengthThenSameList!233 (List!19194 List!19194 List!19194) Unit!33181)

(assert (=> b!1740895 (= lt!671196 (lemmaIsPrefixSameLengthThenSameList!233 lt!671217 lt!671206 lt!671180))))

(declare-fun b!1740896 () Bool)

(declare-fun e!1114214 () Bool)

(assert (=> b!1740896 (= e!1114214 false)))

(declare-fun b!1740897 () Bool)

(assert (=> b!1740897 e!1114214))

(declare-fun res!782581 () Bool)

(assert (=> b!1740897 (=> (not res!782581) (not e!1114214))))

(assert (=> b!1740897 (= res!782581 (not (matchR!2207 (regex!3405 (rule!5407 token!523)) lt!671217)))))

(declare-fun lt!671191 () Unit!33181)

(assert (=> b!1740897 (= lt!671191 (lemmaMaxPrefNoSmallerRuleMatches!142 thiss!24550 rules!3447 (rule!5407 (_1!10791 lt!671187)) lt!671217 lt!671180 (rule!5407 token!523)))))

(declare-fun Unit!33194 () Unit!33181)

(assert (=> b!1740897 (= e!1114203 Unit!33194)))

(assert (= (and start!171366 res!782595) b!1740868))

(assert (= (and b!1740868 res!782584) b!1740860))

(assert (= (and b!1740860 res!782577) b!1740886))

(assert (= (and b!1740886 res!782600) b!1740869))

(assert (= (and b!1740869 res!782593) b!1740862))

(assert (= (and b!1740862 res!782582) b!1740856))

(assert (= (and b!1740856 res!782598) b!1740890))

(assert (= (and b!1740890 res!782585) b!1740871))

(assert (= (and b!1740871 (not res!782579)) b!1740873))

(assert (= (and b!1740873 (not res!782576)) b!1740891))

(assert (= (and b!1740891 (not res!782592)) b!1740892))

(assert (= (and b!1740892 res!782586) b!1740863))

(assert (= (and b!1740863 res!782591) b!1740855))

(assert (= (and b!1740892 (not res!782588)) b!1740888))

(assert (= (and b!1740888 (not res!782599)) b!1740867))

(assert (= (and b!1740867 (not res!782578)) b!1740894))

(assert (= (and b!1740894 (not res!782580)) b!1740865))

(assert (= (and b!1740865 (not res!782590)) b!1740889))

(assert (= (and b!1740889 (not res!782589)) b!1740870))

(assert (= (and b!1740870 (not res!782596)) b!1740893))

(assert (= (and b!1740893 c!284067) b!1740881))

(assert (= (and b!1740893 (not c!284067)) b!1740857))

(assert (= (and b!1740893 (not res!782594)) b!1740887))

(assert (= (and b!1740887 c!284068) b!1740882))

(assert (= (and b!1740887 (not c!284068)) b!1740877))

(assert (= (and b!1740887 (not res!782583)) b!1740895))

(assert (= (and b!1740895 c!284066) b!1740861))

(assert (= (and b!1740895 (not c!284066)) b!1740859))

(assert (= (and b!1740861 c!284069) b!1740897))

(assert (= (and b!1740861 (not c!284069)) b!1740864))

(assert (= (and b!1740897 res!782581) b!1740896))

(assert (= (and b!1740861 c!284071) b!1740853))

(assert (= (and b!1740861 (not c!284071)) b!1740879))

(assert (= (and b!1740853 res!782597) b!1740858))

(assert (= (and b!1740861 c!284070) b!1740878))

(assert (= (and b!1740861 (not c!284070)) b!1740876))

(assert (= (and b!1740895 (not res!782587)) b!1740852))

(assert (= (and start!171366 ((_ is Cons!19124) suffix!1421)) b!1740885))

(assert (= b!1740884 b!1740866))

(assert (= start!171366 b!1740884))

(assert (= b!1740883 b!1740880))

(assert (= b!1740874 b!1740883))

(assert (= start!171366 b!1740874))

(assert (= b!1740872 b!1740854))

(assert (= b!1740875 b!1740872))

(assert (= (and start!171366 ((_ is Cons!19125) rules!3447)) b!1740875))

(declare-fun b_lambda!55771 () Bool)

(assert (=> (not b_lambda!55771) (not b!1740865)))

(declare-fun tb!104085 () Bool)

(declare-fun t!161843 () Bool)

(assert (=> (and b!1740854 (= (toChars!4771 (transformation!3405 (h!24526 rules!3447))) (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161843) tb!104085))

(declare-fun b!1740913 () Bool)

(declare-fun e!1114250 () Bool)

(declare-fun tp!495691 () Bool)

(declare-fun inv!24785 (Conc!6361) Bool)

(assert (=> b!1740913 (= e!1114250 (and (inv!24785 (c!284073 (dynLambda!9043 (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) (value!106715 (_1!10791 lt!671187))))) tp!495691))))

(declare-fun result!125184 () Bool)

(declare-fun inv!24786 (BalanceConc!12666) Bool)

(assert (=> tb!104085 (= result!125184 (and (inv!24786 (dynLambda!9043 (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) (value!106715 (_1!10791 lt!671187)))) e!1114250))))

(assert (= tb!104085 b!1740913))

(declare-fun m!2151699 () Bool)

(assert (=> b!1740913 m!2151699))

(declare-fun m!2151701 () Bool)

(assert (=> tb!104085 m!2151701))

(assert (=> b!1740865 t!161843))

(declare-fun b_and!129375 () Bool)

(assert (= b_and!129365 (and (=> t!161843 result!125184) b_and!129375)))

(declare-fun t!161845 () Bool)

(declare-fun tb!104087 () Bool)

(assert (=> (and b!1740880 (= (toChars!4771 (transformation!3405 (rule!5407 token!523))) (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161845) tb!104087))

(declare-fun result!125188 () Bool)

(assert (= result!125188 result!125184))

(assert (=> b!1740865 t!161845))

(declare-fun b_and!129377 () Bool)

(assert (= b_and!129369 (and (=> t!161845 result!125188) b_and!129377)))

(declare-fun t!161847 () Bool)

(declare-fun tb!104089 () Bool)

(assert (=> (and b!1740866 (= (toChars!4771 (transformation!3405 rule!422)) (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161847) tb!104089))

(declare-fun result!125190 () Bool)

(assert (= result!125190 result!125184))

(assert (=> b!1740865 t!161847))

(declare-fun b_and!129379 () Bool)

(assert (= b_and!129373 (and (=> t!161847 result!125190) b_and!129379)))

(declare-fun b_lambda!55773 () Bool)

(assert (=> (not b_lambda!55773) (not b!1740894)))

(declare-fun tb!104091 () Bool)

(declare-fun t!161849 () Bool)

(assert (=> (and b!1740854 (= (toChars!4771 (transformation!3405 (h!24526 rules!3447))) (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161849) tb!104091))

(declare-fun e!1114251 () Bool)

(declare-fun tp!495692 () Bool)

(declare-fun b!1740914 () Bool)

(assert (=> b!1740914 (= e!1114251 (and (inv!24785 (c!284073 (dynLambda!9043 (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) (dynLambda!9044 (toValue!4912 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) lt!671209)))) tp!495692))))

(declare-fun result!125192 () Bool)

(assert (=> tb!104091 (= result!125192 (and (inv!24786 (dynLambda!9043 (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) (dynLambda!9044 (toValue!4912 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) lt!671209))) e!1114251))))

(assert (= tb!104091 b!1740914))

(declare-fun m!2151703 () Bool)

(assert (=> b!1740914 m!2151703))

(declare-fun m!2151705 () Bool)

(assert (=> tb!104091 m!2151705))

(assert (=> b!1740894 t!161849))

(declare-fun b_and!129381 () Bool)

(assert (= b_and!129375 (and (=> t!161849 result!125192) b_and!129381)))

(declare-fun t!161851 () Bool)

(declare-fun tb!104093 () Bool)

(assert (=> (and b!1740880 (= (toChars!4771 (transformation!3405 (rule!5407 token!523))) (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161851) tb!104093))

(declare-fun result!125194 () Bool)

(assert (= result!125194 result!125192))

(assert (=> b!1740894 t!161851))

(declare-fun b_and!129383 () Bool)

(assert (= b_and!129377 (and (=> t!161851 result!125194) b_and!129383)))

(declare-fun t!161853 () Bool)

(declare-fun tb!104095 () Bool)

(assert (=> (and b!1740866 (= (toChars!4771 (transformation!3405 rule!422)) (toChars!4771 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161853) tb!104095))

(declare-fun result!125196 () Bool)

(assert (= result!125196 result!125192))

(assert (=> b!1740894 t!161853))

(declare-fun b_and!129385 () Bool)

(assert (= b_and!129379 (and (=> t!161853 result!125196) b_and!129385)))

(declare-fun b_lambda!55775 () Bool)

(assert (=> (not b_lambda!55775) (not b!1740894)))

(declare-fun t!161855 () Bool)

(declare-fun tb!104097 () Bool)

(assert (=> (and b!1740854 (= (toValue!4912 (transformation!3405 (h!24526 rules!3447))) (toValue!4912 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161855) tb!104097))

(declare-fun result!125198 () Bool)

(assert (=> tb!104097 (= result!125198 (inv!21 (dynLambda!9044 (toValue!4912 (transformation!3405 (rule!5407 (_1!10791 lt!671187)))) lt!671209)))))

(declare-fun m!2151707 () Bool)

(assert (=> tb!104097 m!2151707))

(assert (=> b!1740894 t!161855))

(declare-fun b_and!129387 () Bool)

(assert (= b_and!129363 (and (=> t!161855 result!125198) b_and!129387)))

(declare-fun t!161857 () Bool)

(declare-fun tb!104099 () Bool)

(assert (=> (and b!1740880 (= (toValue!4912 (transformation!3405 (rule!5407 token!523))) (toValue!4912 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161857) tb!104099))

(declare-fun result!125202 () Bool)

(assert (= result!125202 result!125198))

(assert (=> b!1740894 t!161857))

(declare-fun b_and!129389 () Bool)

(assert (= b_and!129367 (and (=> t!161857 result!125202) b_and!129389)))

(declare-fun t!161859 () Bool)

(declare-fun tb!104101 () Bool)

(assert (=> (and b!1740866 (= (toValue!4912 (transformation!3405 rule!422)) (toValue!4912 (transformation!3405 (rule!5407 (_1!10791 lt!671187))))) t!161859) tb!104101))

(declare-fun result!125204 () Bool)

(assert (= result!125204 result!125198))

(assert (=> b!1740894 t!161859))

(declare-fun b_and!129391 () Bool)

(assert (= b_and!129371 (and (=> t!161859 result!125204) b_and!129391)))

(declare-fun m!2151709 () Bool)

(assert (=> b!1740894 m!2151709))

(assert (=> b!1740894 m!2151709))

(declare-fun m!2151711 () Bool)

(assert (=> b!1740894 m!2151711))

(assert (=> b!1740894 m!2151711))

(declare-fun m!2151713 () Bool)

(assert (=> b!1740894 m!2151713))

(declare-fun m!2151715 () Bool)

(assert (=> b!1740894 m!2151715))

(declare-fun m!2151717 () Bool)

(assert (=> b!1740883 m!2151717))

(declare-fun m!2151719 () Bool)

(assert (=> b!1740883 m!2151719))

(declare-fun m!2151721 () Bool)

(assert (=> b!1740856 m!2151721))

(declare-fun m!2151723 () Bool)

(assert (=> b!1740865 m!2151723))

(declare-fun m!2151725 () Bool)

(assert (=> b!1740861 m!2151725))

(declare-fun m!2151727 () Bool)

(assert (=> b!1740861 m!2151727))

(declare-fun m!2151729 () Bool)

(assert (=> b!1740886 m!2151729))

(declare-fun m!2151731 () Bool)

(assert (=> b!1740881 m!2151731))

(declare-fun m!2151733 () Bool)

(assert (=> b!1740881 m!2151733))

(declare-fun m!2151735 () Bool)

(assert (=> b!1740881 m!2151735))

(declare-fun m!2151737 () Bool)

(assert (=> b!1740881 m!2151737))

(declare-fun m!2151739 () Bool)

(assert (=> b!1740881 m!2151739))

(declare-fun m!2151741 () Bool)

(assert (=> b!1740881 m!2151741))

(declare-fun m!2151743 () Bool)

(assert (=> b!1740881 m!2151743))

(declare-fun m!2151745 () Bool)

(assert (=> b!1740881 m!2151745))

(declare-fun m!2151747 () Bool)

(assert (=> b!1740881 m!2151747))

(declare-fun m!2151749 () Bool)

(assert (=> b!1740881 m!2151749))

(assert (=> b!1740881 m!2151741))

(declare-fun m!2151751 () Bool)

(assert (=> b!1740881 m!2151751))

(declare-fun m!2151753 () Bool)

(assert (=> b!1740895 m!2151753))

(declare-fun m!2151755 () Bool)

(assert (=> b!1740895 m!2151755))

(declare-fun m!2151757 () Bool)

(assert (=> b!1740888 m!2151757))

(declare-fun m!2151759 () Bool)

(assert (=> b!1740870 m!2151759))

(declare-fun m!2151761 () Bool)

(assert (=> b!1740870 m!2151761))

(declare-fun m!2151763 () Bool)

(assert (=> b!1740870 m!2151763))

(declare-fun m!2151765 () Bool)

(assert (=> b!1740870 m!2151765))

(declare-fun m!2151767 () Bool)

(assert (=> b!1740870 m!2151767))

(declare-fun m!2151769 () Bool)

(assert (=> b!1740870 m!2151769))

(assert (=> b!1740870 m!2151761))

(declare-fun m!2151771 () Bool)

(assert (=> b!1740870 m!2151771))

(declare-fun m!2151773 () Bool)

(assert (=> b!1740852 m!2151773))

(declare-fun m!2151775 () Bool)

(assert (=> b!1740897 m!2151775))

(declare-fun m!2151777 () Bool)

(assert (=> b!1740897 m!2151777))

(declare-fun m!2151779 () Bool)

(assert (=> b!1740868 m!2151779))

(declare-fun m!2151781 () Bool)

(assert (=> b!1740873 m!2151781))

(declare-fun m!2151783 () Bool)

(assert (=> b!1740893 m!2151783))

(declare-fun m!2151785 () Bool)

(assert (=> b!1740893 m!2151785))

(declare-fun m!2151787 () Bool)

(assert (=> b!1740893 m!2151787))

(declare-fun m!2151789 () Bool)

(assert (=> start!171366 m!2151789))

(declare-fun m!2151791 () Bool)

(assert (=> b!1740867 m!2151791))

(declare-fun m!2151793 () Bool)

(assert (=> b!1740867 m!2151793))

(declare-fun m!2151795 () Bool)

(assert (=> b!1740863 m!2151795))

(assert (=> b!1740863 m!2151795))

(declare-fun m!2151797 () Bool)

(assert (=> b!1740863 m!2151797))

(assert (=> b!1740863 m!2151797))

(declare-fun m!2151799 () Bool)

(assert (=> b!1740863 m!2151799))

(declare-fun m!2151801 () Bool)

(assert (=> b!1740863 m!2151801))

(declare-fun m!2151803 () Bool)

(assert (=> b!1740853 m!2151803))

(declare-fun m!2151805 () Bool)

(assert (=> b!1740853 m!2151805))

(declare-fun m!2151807 () Bool)

(assert (=> b!1740878 m!2151807))

(declare-fun m!2151809 () Bool)

(assert (=> b!1740882 m!2151809))

(declare-fun m!2151811 () Bool)

(assert (=> b!1740884 m!2151811))

(declare-fun m!2151813 () Bool)

(assert (=> b!1740884 m!2151813))

(declare-fun m!2151815 () Bool)

(assert (=> b!1740874 m!2151815))

(declare-fun m!2151817 () Bool)

(assert (=> b!1740869 m!2151817))

(declare-fun m!2151819 () Bool)

(assert (=> b!1740869 m!2151819))

(declare-fun m!2151821 () Bool)

(assert (=> b!1740869 m!2151821))

(declare-fun m!2151823 () Bool)

(assert (=> b!1740869 m!2151823))

(declare-fun m!2151825 () Bool)

(assert (=> b!1740860 m!2151825))

(declare-fun m!2151827 () Bool)

(assert (=> b!1740862 m!2151827))

(declare-fun m!2151829 () Bool)

(assert (=> b!1740892 m!2151829))

(declare-fun m!2151831 () Bool)

(assert (=> b!1740892 m!2151831))

(declare-fun m!2151833 () Bool)

(assert (=> b!1740892 m!2151833))

(declare-fun m!2151835 () Bool)

(assert (=> b!1740892 m!2151835))

(declare-fun m!2151837 () Bool)

(assert (=> b!1740892 m!2151837))

(declare-fun m!2151839 () Bool)

(assert (=> b!1740892 m!2151839))

(declare-fun m!2151841 () Bool)

(assert (=> b!1740892 m!2151841))

(declare-fun m!2151843 () Bool)

(assert (=> b!1740892 m!2151843))

(declare-fun m!2151845 () Bool)

(assert (=> b!1740892 m!2151845))

(declare-fun m!2151847 () Bool)

(assert (=> b!1740892 m!2151847))

(declare-fun m!2151849 () Bool)

(assert (=> b!1740892 m!2151849))

(assert (=> b!1740892 m!2151795))

(declare-fun m!2151851 () Bool)

(assert (=> b!1740892 m!2151851))

(declare-fun m!2151853 () Bool)

(assert (=> b!1740892 m!2151853))

(declare-fun m!2151855 () Bool)

(assert (=> b!1740892 m!2151855))

(assert (=> b!1740892 m!2151853))

(declare-fun m!2151857 () Bool)

(assert (=> b!1740871 m!2151857))

(declare-fun m!2151859 () Bool)

(assert (=> b!1740871 m!2151859))

(declare-fun m!2151861 () Bool)

(assert (=> b!1740871 m!2151861))

(declare-fun m!2151863 () Bool)

(assert (=> b!1740872 m!2151863))

(declare-fun m!2151865 () Bool)

(assert (=> b!1740872 m!2151865))

(declare-fun m!2151867 () Bool)

(assert (=> b!1740889 m!2151867))

(declare-fun m!2151869 () Bool)

(assert (=> b!1740889 m!2151869))

(declare-fun m!2151871 () Bool)

(assert (=> b!1740889 m!2151871))

(declare-fun m!2151873 () Bool)

(assert (=> b!1740889 m!2151873))

(declare-fun m!2151875 () Bool)

(assert (=> b!1740889 m!2151875))

(assert (=> b!1740889 m!2151873))

(declare-fun m!2151877 () Bool)

(assert (=> b!1740891 m!2151877))

(declare-fun m!2151879 () Bool)

(assert (=> b!1740891 m!2151879))

(declare-fun m!2151881 () Bool)

(assert (=> b!1740891 m!2151881))

(declare-fun m!2151883 () Bool)

(assert (=> b!1740891 m!2151883))

(check-sat (not b!1740893) tp_is_empty!7709 (not b!1740883) b_and!129383 (not b!1740872) (not b!1740856) b_and!129385 (not b_next!48545) (not b!1740861) (not b!1740878) (not b!1740888) (not b!1740860) (not b!1740884) (not b!1740882) (not b_next!48541) (not tb!104085) (not b!1740869) (not tb!104097) (not b!1740871) (not b!1740885) (not b_lambda!55775) (not b!1740913) (not tb!104091) (not b_next!48549) (not b!1740886) b_and!129387 (not b!1740875) b_and!129389 (not start!171366) (not b!1740870) (not b!1740868) (not b!1740873) (not b!1740891) (not b!1740897) b_and!129391 (not b!1740867) (not b!1740852) (not b!1740894) (not b!1740863) (not b_next!48539) (not b!1740853) (not b!1740874) (not b!1740862) b_and!129381 (not b!1740881) (not b!1740889) (not b_lambda!55773) (not b!1740914) (not b_lambda!55771) (not b!1740895) (not b_next!48547) (not b_next!48543) (not b!1740892))
(check-sat (not b_next!48541) b_and!129389 b_and!129391 b_and!129383 (not b_next!48539) b_and!129381 (not b_next!48547) (not b_next!48543) b_and!129385 (not b_next!48545) (not b_next!48549) b_and!129387)
