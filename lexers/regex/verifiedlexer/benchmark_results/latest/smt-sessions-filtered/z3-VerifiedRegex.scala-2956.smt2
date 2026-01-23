; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!174994 () Bool)

(assert start!174994)

(declare-fun b!1765822 () Bool)

(declare-fun b_free!48831 () Bool)

(declare-fun b_next!49535 () Bool)

(assert (=> b!1765822 (= b_free!48831 (not b_next!49535))))

(declare-fun tp!501192 () Bool)

(declare-fun b_and!133735 () Bool)

(assert (=> b!1765822 (= tp!501192 b_and!133735)))

(declare-fun b_free!48833 () Bool)

(declare-fun b_next!49537 () Bool)

(assert (=> b!1765822 (= b_free!48833 (not b_next!49537))))

(declare-fun tp!501202 () Bool)

(declare-fun b_and!133737 () Bool)

(assert (=> b!1765822 (= tp!501202 b_and!133737)))

(declare-fun b!1765831 () Bool)

(declare-fun b_free!48835 () Bool)

(declare-fun b_next!49539 () Bool)

(assert (=> b!1765831 (= b_free!48835 (not b_next!49539))))

(declare-fun tp!501200 () Bool)

(declare-fun b_and!133739 () Bool)

(assert (=> b!1765831 (= tp!501200 b_and!133739)))

(declare-fun b_free!48837 () Bool)

(declare-fun b_next!49541 () Bool)

(assert (=> b!1765831 (= b_free!48837 (not b_next!49541))))

(declare-fun tp!501196 () Bool)

(declare-fun b_and!133741 () Bool)

(assert (=> b!1765831 (= tp!501196 b_and!133741)))

(declare-fun b!1765829 () Bool)

(declare-fun b_free!48839 () Bool)

(declare-fun b_next!49543 () Bool)

(assert (=> b!1765829 (= b_free!48839 (not b_next!49543))))

(declare-fun tp!501193 () Bool)

(declare-fun b_and!133743 () Bool)

(assert (=> b!1765829 (= tp!501193 b_and!133743)))

(declare-fun b_free!48841 () Bool)

(declare-fun b_next!49545 () Bool)

(assert (=> b!1765829 (= b_free!48841 (not b_next!49545))))

(declare-fun tp!501199 () Bool)

(declare-fun b_and!133745 () Bool)

(assert (=> b!1765829 (= tp!501199 b_and!133745)))

(declare-fun b!1765860 () Bool)

(declare-fun e!1129989 () Bool)

(assert (=> b!1765860 (= e!1129989 true)))

(declare-fun b!1765859 () Bool)

(declare-fun e!1129988 () Bool)

(assert (=> b!1765859 (= e!1129988 e!1129989)))

(declare-fun b!1765858 () Bool)

(declare-fun e!1129987 () Bool)

(assert (=> b!1765858 (= e!1129987 e!1129988)))

(declare-fun b!1765846 () Bool)

(assert (=> b!1765846 e!1129987))

(assert (= b!1765859 b!1765860))

(assert (= b!1765858 b!1765859))

(assert (= b!1765846 b!1765858))

(declare-fun order!12361 () Int)

(declare-datatypes ((List!19505 0))(
  ( (Nil!19435) (Cons!19435 (h!24836 (_ BitVec 16)) (t!164718 List!19505)) )
))
(declare-datatypes ((TokenValue!3563 0))(
  ( (FloatLiteralValue!7126 (text!25386 List!19505)) (TokenValueExt!3562 (__x!12428 Int)) (Broken!17815 (value!108627 List!19505)) (Object!3632) (End!3563) (Def!3563) (Underscore!3563) (Match!3563) (Else!3563) (Error!3563) (Case!3563) (If!3563) (Extends!3563) (Abstract!3563) (Class!3563) (Val!3563) (DelimiterValue!7126 (del!3623 List!19505)) (KeywordValue!3569 (value!108628 List!19505)) (CommentValue!7126 (value!108629 List!19505)) (WhitespaceValue!7126 (value!108630 List!19505)) (IndentationValue!3563 (value!108631 List!19505)) (String!22146) (Int32!3563) (Broken!17816 (value!108632 List!19505)) (Boolean!3564) (Unit!33625) (OperatorValue!3566 (op!3623 List!19505)) (IdentifierValue!7126 (value!108633 List!19505)) (IdentifierValue!7127 (value!108634 List!19505)) (WhitespaceValue!7127 (value!108635 List!19505)) (True!7126) (False!7126) (Broken!17817 (value!108636 List!19505)) (Broken!17818 (value!108637 List!19505)) (True!7127) (RightBrace!3563) (RightBracket!3563) (Colon!3563) (Null!3563) (Comma!3563) (LeftBracket!3563) (False!7127) (LeftBrace!3563) (ImaginaryLiteralValue!3563 (text!25387 List!19505)) (StringLiteralValue!10689 (value!108638 List!19505)) (EOFValue!3563 (value!108639 List!19505)) (IdentValue!3563 (value!108640 List!19505)) (DelimiterValue!7127 (value!108641 List!19505)) (DedentValue!3563 (value!108642 List!19505)) (NewLineValue!3563 (value!108643 List!19505)) (IntegerValue!10689 (value!108644 (_ BitVec 32)) (text!25388 List!19505)) (IntegerValue!10690 (value!108645 Int) (text!25389 List!19505)) (Times!3563) (Or!3563) (Equal!3563) (Minus!3563) (Broken!17819 (value!108646 List!19505)) (And!3563) (Div!3563) (LessEqual!3563) (Mod!3563) (Concat!8364) (Not!3563) (Plus!3563) (SpaceValue!3563 (value!108647 List!19505)) (IntegerValue!10691 (value!108648 Int) (text!25390 List!19505)) (StringLiteralValue!10690 (text!25391 List!19505)) (FloatLiteralValue!7127 (text!25392 List!19505)) (BytesLiteralValue!3563 (value!108649 List!19505)) (CommentValue!7127 (value!108650 List!19505)) (StringLiteralValue!10691 (value!108651 List!19505)) (ErrorTokenValue!3563 (msg!3624 List!19505)) )
))
(declare-datatypes ((C!9776 0))(
  ( (C!9777 (val!5484 Int)) )
))
(declare-datatypes ((List!19506 0))(
  ( (Nil!19436) (Cons!19436 (h!24837 C!9776) (t!164719 List!19506)) )
))
(declare-datatypes ((String!22147 0))(
  ( (String!22148 (value!108652 String)) )
))
(declare-datatypes ((Regex!4801 0))(
  ( (ElementMatch!4801 (c!287654 C!9776)) (Concat!8365 (regOne!10114 Regex!4801) (regTwo!10114 Regex!4801)) (EmptyExpr!4801) (Star!4801 (reg!5130 Regex!4801)) (EmptyLang!4801) (Union!4801 (regOne!10115 Regex!4801) (regTwo!10115 Regex!4801)) )
))
(declare-datatypes ((IArray!12935 0))(
  ( (IArray!12936 (innerList!6525 List!19506)) )
))
(declare-datatypes ((Conc!6465 0))(
  ( (Node!6465 (left!15559 Conc!6465) (right!15889 Conc!6465) (csize!13160 Int) (cheight!6676 Int)) (Leaf!9422 (xs!9341 IArray!12935) (csize!13161 Int)) (Empty!6465) )
))
(declare-datatypes ((BalanceConc!12874 0))(
  ( (BalanceConc!12875 (c!287655 Conc!6465)) )
))
(declare-datatypes ((TokenValueInjection!6786 0))(
  ( (TokenValueInjection!6787 (toValue!4996 Int) (toChars!4855 Int)) )
))
(declare-datatypes ((Rule!6746 0))(
  ( (Rule!6747 (regex!3473 Regex!4801) (tag!3847 String!22147) (isSeparator!3473 Bool) (transformation!3473 TokenValueInjection!6786)) )
))
(declare-datatypes ((Token!6512 0))(
  ( (Token!6513 (value!108653 TokenValue!3563) (rule!5503 Rule!6746) (size!15436 Int) (originalCharacters!4287 List!19506)) )
))
(declare-datatypes ((tuple2!19046 0))(
  ( (tuple2!19047 (_1!10925 Token!6512) (_2!10925 List!19506)) )
))
(declare-fun lt!682966 () tuple2!19046)

(declare-fun lambda!70290 () Int)

(declare-fun order!12359 () Int)

(declare-fun dynLambda!9392 (Int Int) Int)

(declare-fun dynLambda!9393 (Int Int) Int)

(assert (=> b!1765860 (< (dynLambda!9392 order!12359 (toValue!4996 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) (dynLambda!9393 order!12361 lambda!70290))))

(declare-fun order!12363 () Int)

(declare-fun dynLambda!9394 (Int Int) Int)

(assert (=> b!1765860 (< (dynLambda!9394 order!12363 (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) (dynLambda!9393 order!12361 lambda!70290))))

(declare-fun b!1765820 () Bool)

(declare-fun res!794938 () Bool)

(declare-fun e!1129967 () Bool)

(assert (=> b!1765820 (=> res!794938 e!1129967)))

(declare-fun lt!682977 () BalanceConc!12874)

(declare-fun dynLambda!9395 (Int TokenValue!3563) BalanceConc!12874)

(assert (=> b!1765820 (= res!794938 (not (= lt!682977 (dynLambda!9395 (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) (value!108653 (_1!10925 lt!682966))))))))

(declare-fun b!1765821 () Bool)

(declare-fun e!1129979 () Bool)

(declare-fun e!1129971 () Bool)

(assert (=> b!1765821 (= e!1129979 e!1129971)))

(declare-fun res!794947 () Bool)

(assert (=> b!1765821 (=> res!794947 e!1129971)))

(declare-fun lt!682963 () Int)

(declare-fun lt!682970 () BalanceConc!12874)

(declare-fun size!15437 (BalanceConc!12874) Int)

(assert (=> b!1765821 (= res!794947 (<= lt!682963 (size!15437 lt!682970)))))

(declare-fun lt!682971 () Regex!4801)

(declare-fun lt!682984 () List!19506)

(declare-fun matchR!2274 (Regex!4801 List!19506) Bool)

(assert (=> b!1765821 (matchR!2274 lt!682971 lt!682984)))

(declare-fun rule!422 () Rule!6746)

(declare-datatypes ((Unit!33626 0))(
  ( (Unit!33627) )
))
(declare-fun lt!682961 () Unit!33626)

(declare-datatypes ((LexerInterface!3102 0))(
  ( (LexerInterfaceExt!3099 (__x!12429 Int)) (Lexer!3100) )
))
(declare-fun thiss!24550 () LexerInterface!3102)

(declare-fun token!523 () Token!6512)

(declare-datatypes ((List!19507 0))(
  ( (Nil!19437) (Cons!19437 (h!24838 Rule!6746) (t!164720 List!19507)) )
))
(declare-fun rules!3447 () List!19507)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!180 (LexerInterface!3102 List!19507 List!19506 Token!6512 Rule!6746 List!19506) Unit!33626)

(assert (=> b!1765821 (= lt!682961 (lemmaMaxPrefixThenMatchesRulesRegex!180 thiss!24550 rules!3447 lt!682984 token!523 rule!422 Nil!19436))))

(declare-fun e!1129958 () Bool)

(assert (=> b!1765822 (= e!1129958 (and tp!501192 tp!501202))))

(declare-fun b!1765823 () Bool)

(declare-fun res!794936 () Bool)

(declare-fun e!1129973 () Bool)

(assert (=> b!1765823 (=> res!794936 e!1129973)))

(declare-fun suffix!1421 () List!19506)

(declare-fun isEmpty!12268 (List!19506) Bool)

(assert (=> b!1765823 (= res!794936 (isEmpty!12268 suffix!1421))))

(declare-fun b!1765824 () Bool)

(declare-fun e!1129955 () Bool)

(assert (=> b!1765824 (= e!1129967 e!1129955)))

(declare-fun res!794942 () Bool)

(assert (=> b!1765824 (=> res!794942 e!1129955)))

(declare-datatypes ((Option!3968 0))(
  ( (None!3967) (Some!3967 (v!25436 tuple2!19046)) )
))
(declare-fun lt!682976 () Option!3968)

(declare-fun lt!682960 () TokenValue!3563)

(declare-fun lt!682985 () List!19506)

(assert (=> b!1765824 (= res!794942 (not (= lt!682976 (Some!3967 (tuple2!19047 (Token!6513 lt!682960 (rule!5503 (_1!10925 lt!682966)) lt!682963 lt!682985) (_2!10925 lt!682966))))))))

(assert (=> b!1765824 (= lt!682963 (size!15437 lt!682977))))

(declare-fun apply!5273 (TokenValueInjection!6786 BalanceConc!12874) TokenValue!3563)

(assert (=> b!1765824 (= lt!682960 (apply!5273 (transformation!3473 (rule!5503 (_1!10925 lt!682966))) lt!682977))))

(declare-fun lt!682965 () Unit!33626)

(declare-fun lemmaCharactersSize!531 (Token!6512) Unit!33626)

(assert (=> b!1765824 (= lt!682965 (lemmaCharactersSize!531 (_1!10925 lt!682966)))))

(declare-fun lt!682978 () Unit!33626)

(declare-fun lemmaEqSameImage!384 (TokenValueInjection!6786 BalanceConc!12874 BalanceConc!12874) Unit!33626)

(declare-fun seqFromList!2442 (List!19506) BalanceConc!12874)

(assert (=> b!1765824 (= lt!682978 (lemmaEqSameImage!384 (transformation!3473 (rule!5503 (_1!10925 lt!682966))) lt!682977 (seqFromList!2442 (originalCharacters!4287 (_1!10925 lt!682966)))))))

(declare-fun b!1765825 () Bool)

(declare-fun e!1129966 () Bool)

(assert (=> b!1765825 (= e!1129966 (not e!1129973))))

(declare-fun res!794954 () Bool)

(assert (=> b!1765825 (=> res!794954 e!1129973)))

(assert (=> b!1765825 (= res!794954 (not (matchR!2274 (regex!3473 rule!422) lt!682984)))))

(declare-fun ruleValid!971 (LexerInterface!3102 Rule!6746) Bool)

(assert (=> b!1765825 (ruleValid!971 thiss!24550 rule!422)))

(declare-fun lt!682988 () Unit!33626)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!494 (LexerInterface!3102 Rule!6746 List!19507) Unit!33626)

(assert (=> b!1765825 (= lt!682988 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!494 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1765826 () Bool)

(assert (=> b!1765826 (= e!1129971 true)))

(declare-fun lt!682979 () Bool)

(declare-fun contains!3503 (List!19507 Rule!6746) Bool)

(assert (=> b!1765826 (= lt!682979 (contains!3503 rules!3447 (rule!5503 (_1!10925 lt!682966))))))

(declare-fun b!1765827 () Bool)

(declare-fun res!794952 () Bool)

(assert (=> b!1765827 (=> (not res!794952) (not e!1129966))))

(assert (=> b!1765827 (= res!794952 (= (rule!5503 token!523) rule!422))))

(declare-fun b!1765828 () Bool)

(declare-fun e!1129974 () Bool)

(declare-fun tp_is_empty!7845 () Bool)

(declare-fun tp!501195 () Bool)

(assert (=> b!1765828 (= e!1129974 (and tp_is_empty!7845 tp!501195))))

(declare-fun e!1129978 () Bool)

(assert (=> b!1765829 (= e!1129978 (and tp!501193 tp!501199))))

(declare-fun b!1765830 () Bool)

(declare-fun e!1129960 () Bool)

(declare-fun e!1129976 () Bool)

(assert (=> b!1765830 (= e!1129960 e!1129976)))

(declare-fun res!794943 () Bool)

(assert (=> b!1765830 (=> (not res!794943) (not e!1129976))))

(declare-fun lt!682972 () Option!3968)

(declare-fun isDefined!3311 (Option!3968) Bool)

(assert (=> b!1765830 (= res!794943 (isDefined!3311 lt!682972))))

(declare-fun maxPrefix!1656 (LexerInterface!3102 List!19507 List!19506) Option!3968)

(assert (=> b!1765830 (= lt!682972 (maxPrefix!1656 thiss!24550 rules!3447 lt!682984))))

(declare-fun list!7891 (BalanceConc!12874) List!19506)

(assert (=> b!1765830 (= lt!682984 (list!7891 lt!682970))))

(declare-fun charsOf!2122 (Token!6512) BalanceConc!12874)

(assert (=> b!1765830 (= lt!682970 (charsOf!2122 token!523))))

(declare-fun e!1129956 () Bool)

(assert (=> b!1765831 (= e!1129956 (and tp!501200 tp!501196))))

(declare-fun b!1765832 () Bool)

(declare-fun e!1129968 () Bool)

(declare-fun e!1129970 () Bool)

(declare-fun tp!501198 () Bool)

(assert (=> b!1765832 (= e!1129968 (and e!1129970 tp!501198))))

(declare-fun b!1765833 () Bool)

(declare-fun res!794946 () Bool)

(assert (=> b!1765833 (=> (not res!794946) (not e!1129966))))

(declare-fun lt!682975 () tuple2!19046)

(assert (=> b!1765833 (= res!794946 (isEmpty!12268 (_2!10925 lt!682975)))))

(declare-fun tp!501201 () Bool)

(declare-fun e!1129959 () Bool)

(declare-fun b!1765834 () Bool)

(declare-fun e!1129972 () Bool)

(declare-fun inv!21 (TokenValue!3563) Bool)

(assert (=> b!1765834 (= e!1129972 (and (inv!21 (value!108653 token!523)) e!1129959 tp!501201))))

(declare-fun b!1765835 () Bool)

(declare-fun e!1129965 () Bool)

(assert (=> b!1765835 (= e!1129973 e!1129965)))

(declare-fun res!794950 () Bool)

(assert (=> b!1765835 (=> res!794950 e!1129965)))

(declare-fun prefixMatch!684 (Regex!4801 List!19506) Bool)

(declare-fun ++!5297 (List!19506 List!19506) List!19506)

(declare-fun head!4096 (List!19506) C!9776)

(assert (=> b!1765835 (= res!794950 (prefixMatch!684 lt!682971 (++!5297 lt!682984 (Cons!19436 (head!4096 suffix!1421) Nil!19436))))))

(declare-fun rulesRegex!829 (LexerInterface!3102 List!19507) Regex!4801)

(assert (=> b!1765835 (= lt!682971 (rulesRegex!829 thiss!24550 rules!3447))))

(declare-fun e!1129961 () Bool)

(declare-fun tp!501194 () Bool)

(declare-fun b!1765836 () Bool)

(declare-fun inv!25242 (String!22147) Bool)

(declare-fun inv!25247 (TokenValueInjection!6786) Bool)

(assert (=> b!1765836 (= e!1129961 (and tp!501194 (inv!25242 (tag!3847 rule!422)) (inv!25247 (transformation!3473 rule!422)) e!1129978))))

(declare-fun b!1765837 () Bool)

(declare-fun res!794948 () Bool)

(assert (=> b!1765837 (=> (not res!794948) (not e!1129960))))

(declare-fun isEmpty!12269 (List!19507) Bool)

(assert (=> b!1765837 (= res!794948 (not (isEmpty!12269 rules!3447)))))

(declare-fun tp!501197 () Bool)

(declare-fun b!1765838 () Bool)

(assert (=> b!1765838 (= e!1129959 (and tp!501197 (inv!25242 (tag!3847 (rule!5503 token!523))) (inv!25247 (transformation!3473 (rule!5503 token!523))) e!1129956))))

(declare-fun b!1765839 () Bool)

(declare-fun e!1129980 () Bool)

(assert (=> b!1765839 (= e!1129980 e!1129967)))

(declare-fun res!794934 () Bool)

(assert (=> b!1765839 (=> res!794934 e!1129967)))

(declare-fun dynLambda!9396 (Int BalanceConc!12874) TokenValue!3563)

(assert (=> b!1765839 (= res!794934 (not (= (list!7891 (dynLambda!9395 (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) (dynLambda!9396 (toValue!4996 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) lt!682977))) lt!682985)))))

(declare-fun lt!682968 () Unit!33626)

(declare-fun lemmaSemiInverse!611 (TokenValueInjection!6786 BalanceConc!12874) Unit!33626)

(assert (=> b!1765839 (= lt!682968 (lemmaSemiInverse!611 (transformation!3473 (rule!5503 (_1!10925 lt!682966))) lt!682977))))

(declare-fun b!1765840 () Bool)

(declare-fun res!794940 () Bool)

(declare-fun e!1129977 () Bool)

(assert (=> b!1765840 (=> res!794940 e!1129977)))

(assert (=> b!1765840 (= res!794940 (not (matchR!2274 (regex!3473 (rule!5503 (_1!10925 lt!682966))) lt!682985)))))

(declare-fun res!794939 () Bool)

(assert (=> start!174994 (=> (not res!794939) (not e!1129960))))

(get-info :version)

(assert (=> start!174994 (= res!794939 ((_ is Lexer!3100) thiss!24550))))

(assert (=> start!174994 e!1129960))

(assert (=> start!174994 e!1129974))

(assert (=> start!174994 e!1129961))

(assert (=> start!174994 true))

(declare-fun inv!25248 (Token!6512) Bool)

(assert (=> start!174994 (and (inv!25248 token!523) e!1129972)))

(assert (=> start!174994 e!1129968))

(declare-fun tp!501191 () Bool)

(declare-fun b!1765841 () Bool)

(assert (=> b!1765841 (= e!1129970 (and tp!501191 (inv!25242 (tag!3847 (h!24838 rules!3447))) (inv!25247 (transformation!3473 (h!24838 rules!3447))) e!1129958))))

(declare-fun b!1765842 () Bool)

(assert (=> b!1765842 (= e!1129955 e!1129979)))

(declare-fun res!794935 () Bool)

(assert (=> b!1765842 (=> res!794935 e!1129979)))

(declare-fun lt!682967 () Option!3968)

(declare-fun lt!682969 () List!19506)

(assert (=> b!1765842 (= res!794935 (or (not (= lt!682969 (_2!10925 lt!682966))) (not (= lt!682967 (Some!3967 (tuple2!19047 (_1!10925 lt!682966) lt!682969))))))))

(assert (=> b!1765842 (= (_2!10925 lt!682966) lt!682969)))

(declare-fun lt!682959 () List!19506)

(declare-fun lt!682986 () Unit!33626)

(declare-fun lemmaSamePrefixThenSameSuffix!824 (List!19506 List!19506 List!19506 List!19506 List!19506) Unit!33626)

(assert (=> b!1765842 (= lt!682986 (lemmaSamePrefixThenSameSuffix!824 lt!682985 (_2!10925 lt!682966) lt!682985 lt!682969 lt!682959))))

(declare-fun getSuffix!880 (List!19506 List!19506) List!19506)

(assert (=> b!1765842 (= lt!682969 (getSuffix!880 lt!682959 lt!682985))))

(declare-fun lt!682964 () Int)

(declare-fun lt!682981 () TokenValue!3563)

(assert (=> b!1765842 (= lt!682967 (Some!3967 (tuple2!19047 (Token!6513 lt!682981 (rule!5503 (_1!10925 lt!682966)) lt!682964 lt!682985) (_2!10925 lt!682966))))))

(declare-fun maxPrefixOneRule!1025 (LexerInterface!3102 Rule!6746 List!19506) Option!3968)

(assert (=> b!1765842 (= lt!682967 (maxPrefixOneRule!1025 thiss!24550 (rule!5503 (_1!10925 lt!682966)) lt!682959))))

(declare-fun size!15438 (List!19506) Int)

(assert (=> b!1765842 (= lt!682964 (size!15438 lt!682985))))

(assert (=> b!1765842 (= lt!682981 (apply!5273 (transformation!3473 (rule!5503 (_1!10925 lt!682966))) (seqFromList!2442 lt!682985)))))

(declare-fun lt!682958 () Unit!33626)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!403 (LexerInterface!3102 List!19507 List!19506 List!19506 List!19506 Rule!6746) Unit!33626)

(assert (=> b!1765842 (= lt!682958 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!403 thiss!24550 rules!3447 lt!682985 lt!682959 (_2!10925 lt!682966) (rule!5503 (_1!10925 lt!682966))))))

(declare-fun b!1765843 () Bool)

(declare-fun e!1129964 () Bool)

(declare-fun lt!682962 () Rule!6746)

(assert (=> b!1765843 (= e!1129964 (= (rule!5503 (_1!10925 lt!682966)) lt!682962))))

(declare-fun b!1765844 () Bool)

(declare-fun res!794944 () Bool)

(assert (=> b!1765844 (=> (not res!794944) (not e!1129960))))

(assert (=> b!1765844 (= res!794944 (contains!3503 rules!3447 rule!422))))

(declare-fun b!1765845 () Bool)

(assert (=> b!1765845 (= e!1129965 e!1129977)))

(declare-fun res!794949 () Bool)

(assert (=> b!1765845 (=> res!794949 e!1129977)))

(declare-fun isPrefix!1713 (List!19506 List!19506) Bool)

(assert (=> b!1765845 (= res!794949 (not (isPrefix!1713 lt!682985 lt!682959)))))

(assert (=> b!1765845 (isPrefix!1713 lt!682985 (++!5297 lt!682985 (_2!10925 lt!682966)))))

(declare-fun lt!682982 () Unit!33626)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1222 (List!19506 List!19506) Unit!33626)

(assert (=> b!1765845 (= lt!682982 (lemmaConcatTwoListThenFirstIsPrefix!1222 lt!682985 (_2!10925 lt!682966)))))

(assert (=> b!1765845 (= lt!682985 (list!7891 lt!682977))))

(assert (=> b!1765845 (= lt!682977 (charsOf!2122 (_1!10925 lt!682966)))))

(declare-fun e!1129975 () Bool)

(assert (=> b!1765845 e!1129975))

(declare-fun res!794951 () Bool)

(assert (=> b!1765845 (=> (not res!794951) (not e!1129975))))

(declare-datatypes ((Option!3969 0))(
  ( (None!3968) (Some!3968 (v!25437 Rule!6746)) )
))
(declare-fun lt!682983 () Option!3969)

(declare-fun isDefined!3312 (Option!3969) Bool)

(assert (=> b!1765845 (= res!794951 (isDefined!3312 lt!682983))))

(declare-fun getRuleFromTag!521 (LexerInterface!3102 List!19507 String!22147) Option!3969)

(assert (=> b!1765845 (= lt!682983 (getRuleFromTag!521 thiss!24550 rules!3447 (tag!3847 (rule!5503 (_1!10925 lt!682966)))))))

(declare-fun lt!682980 () Unit!33626)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!521 (LexerInterface!3102 List!19507 List!19506 Token!6512) Unit!33626)

(assert (=> b!1765845 (= lt!682980 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!521 thiss!24550 rules!3447 lt!682959 (_1!10925 lt!682966)))))

(declare-fun get!5922 (Option!3968) tuple2!19046)

(assert (=> b!1765845 (= lt!682966 (get!5922 lt!682976))))

(declare-fun lt!682974 () Unit!33626)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!624 (LexerInterface!3102 List!19507 List!19506 List!19506) Unit!33626)

(assert (=> b!1765845 (= lt!682974 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!624 thiss!24550 rules!3447 lt!682984 suffix!1421))))

(assert (=> b!1765845 (= lt!682976 (maxPrefix!1656 thiss!24550 rules!3447 lt!682959))))

(assert (=> b!1765845 (isPrefix!1713 lt!682984 lt!682959)))

(declare-fun lt!682973 () Unit!33626)

(assert (=> b!1765845 (= lt!682973 (lemmaConcatTwoListThenFirstIsPrefix!1222 lt!682984 suffix!1421))))

(assert (=> b!1765845 (= lt!682959 (++!5297 lt!682984 suffix!1421))))

(assert (=> b!1765846 (= e!1129977 e!1129980)))

(declare-fun res!794937 () Bool)

(assert (=> b!1765846 (=> res!794937 e!1129980)))

(declare-fun Forall!840 (Int) Bool)

(assert (=> b!1765846 (= res!794937 (not (Forall!840 lambda!70290)))))

(declare-fun lt!682987 () Unit!33626)

(declare-fun lemmaInv!672 (TokenValueInjection!6786) Unit!33626)

(assert (=> b!1765846 (= lt!682987 (lemmaInv!672 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))))))

(declare-fun b!1765847 () Bool)

(assert (=> b!1765847 (= e!1129976 e!1129966)))

(declare-fun res!794941 () Bool)

(assert (=> b!1765847 (=> (not res!794941) (not e!1129966))))

(assert (=> b!1765847 (= res!794941 (= (_1!10925 lt!682975) token!523))))

(assert (=> b!1765847 (= lt!682975 (get!5922 lt!682972))))

(declare-fun b!1765848 () Bool)

(declare-fun res!794945 () Bool)

(assert (=> b!1765848 (=> (not res!794945) (not e!1129960))))

(declare-fun rulesInvariant!2771 (LexerInterface!3102 List!19507) Bool)

(assert (=> b!1765848 (= res!794945 (rulesInvariant!2771 thiss!24550 rules!3447))))

(declare-fun b!1765849 () Bool)

(assert (=> b!1765849 (= e!1129975 e!1129964)))

(declare-fun res!794953 () Bool)

(assert (=> b!1765849 (=> (not res!794953) (not e!1129964))))

(assert (=> b!1765849 (= res!794953 (matchR!2274 (regex!3473 lt!682962) (list!7891 (charsOf!2122 (_1!10925 lt!682966)))))))

(declare-fun get!5923 (Option!3969) Rule!6746)

(assert (=> b!1765849 (= lt!682962 (get!5923 lt!682983))))

(assert (= (and start!174994 res!794939) b!1765837))

(assert (= (and b!1765837 res!794948) b!1765848))

(assert (= (and b!1765848 res!794945) b!1765844))

(assert (= (and b!1765844 res!794944) b!1765830))

(assert (= (and b!1765830 res!794943) b!1765847))

(assert (= (and b!1765847 res!794941) b!1765833))

(assert (= (and b!1765833 res!794946) b!1765827))

(assert (= (and b!1765827 res!794952) b!1765825))

(assert (= (and b!1765825 (not res!794954)) b!1765823))

(assert (= (and b!1765823 (not res!794936)) b!1765835))

(assert (= (and b!1765835 (not res!794950)) b!1765845))

(assert (= (and b!1765845 res!794951) b!1765849))

(assert (= (and b!1765849 res!794953) b!1765843))

(assert (= (and b!1765845 (not res!794949)) b!1765840))

(assert (= (and b!1765840 (not res!794940)) b!1765846))

(assert (= (and b!1765846 (not res!794937)) b!1765839))

(assert (= (and b!1765839 (not res!794934)) b!1765820))

(assert (= (and b!1765820 (not res!794938)) b!1765824))

(assert (= (and b!1765824 (not res!794942)) b!1765842))

(assert (= (and b!1765842 (not res!794935)) b!1765821))

(assert (= (and b!1765821 (not res!794947)) b!1765826))

(assert (= (and start!174994 ((_ is Cons!19436) suffix!1421)) b!1765828))

(assert (= b!1765836 b!1765829))

(assert (= start!174994 b!1765836))

(assert (= b!1765838 b!1765831))

(assert (= b!1765834 b!1765838))

(assert (= start!174994 b!1765834))

(assert (= b!1765841 b!1765822))

(assert (= b!1765832 b!1765841))

(assert (= (and start!174994 ((_ is Cons!19437) rules!3447)) b!1765832))

(declare-fun b_lambda!57335 () Bool)

(assert (=> (not b_lambda!57335) (not b!1765820)))

(declare-fun tb!106611 () Bool)

(declare-fun t!164701 () Bool)

(assert (=> (and b!1765822 (= (toChars!4855 (transformation!3473 (h!24838 rules!3447))) (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164701) tb!106611))

(declare-fun b!1765865 () Bool)

(declare-fun e!1129992 () Bool)

(declare-fun tp!501205 () Bool)

(declare-fun inv!25249 (Conc!6465) Bool)

(assert (=> b!1765865 (= e!1129992 (and (inv!25249 (c!287655 (dynLambda!9395 (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) (value!108653 (_1!10925 lt!682966))))) tp!501205))))

(declare-fun result!128254 () Bool)

(declare-fun inv!25250 (BalanceConc!12874) Bool)

(assert (=> tb!106611 (= result!128254 (and (inv!25250 (dynLambda!9395 (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) (value!108653 (_1!10925 lt!682966)))) e!1129992))))

(assert (= tb!106611 b!1765865))

(declare-fun m!2183197 () Bool)

(assert (=> b!1765865 m!2183197))

(declare-fun m!2183199 () Bool)

(assert (=> tb!106611 m!2183199))

(assert (=> b!1765820 t!164701))

(declare-fun b_and!133747 () Bool)

(assert (= b_and!133737 (and (=> t!164701 result!128254) b_and!133747)))

(declare-fun t!164703 () Bool)

(declare-fun tb!106613 () Bool)

(assert (=> (and b!1765831 (= (toChars!4855 (transformation!3473 (rule!5503 token!523))) (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164703) tb!106613))

(declare-fun result!128258 () Bool)

(assert (= result!128258 result!128254))

(assert (=> b!1765820 t!164703))

(declare-fun b_and!133749 () Bool)

(assert (= b_and!133741 (and (=> t!164703 result!128258) b_and!133749)))

(declare-fun tb!106615 () Bool)

(declare-fun t!164705 () Bool)

(assert (=> (and b!1765829 (= (toChars!4855 (transformation!3473 rule!422)) (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164705) tb!106615))

(declare-fun result!128260 () Bool)

(assert (= result!128260 result!128254))

(assert (=> b!1765820 t!164705))

(declare-fun b_and!133751 () Bool)

(assert (= b_and!133745 (and (=> t!164705 result!128260) b_and!133751)))

(declare-fun b_lambda!57337 () Bool)

(assert (=> (not b_lambda!57337) (not b!1765839)))

(declare-fun tb!106617 () Bool)

(declare-fun t!164707 () Bool)

(assert (=> (and b!1765822 (= (toChars!4855 (transformation!3473 (h!24838 rules!3447))) (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164707) tb!106617))

(declare-fun b!1765866 () Bool)

(declare-fun tp!501206 () Bool)

(declare-fun e!1129993 () Bool)

(assert (=> b!1765866 (= e!1129993 (and (inv!25249 (c!287655 (dynLambda!9395 (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) (dynLambda!9396 (toValue!4996 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) lt!682977)))) tp!501206))))

(declare-fun result!128262 () Bool)

(assert (=> tb!106617 (= result!128262 (and (inv!25250 (dynLambda!9395 (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) (dynLambda!9396 (toValue!4996 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) lt!682977))) e!1129993))))

(assert (= tb!106617 b!1765866))

(declare-fun m!2183201 () Bool)

(assert (=> b!1765866 m!2183201))

(declare-fun m!2183203 () Bool)

(assert (=> tb!106617 m!2183203))

(assert (=> b!1765839 t!164707))

(declare-fun b_and!133753 () Bool)

(assert (= b_and!133747 (and (=> t!164707 result!128262) b_and!133753)))

(declare-fun tb!106619 () Bool)

(declare-fun t!164709 () Bool)

(assert (=> (and b!1765831 (= (toChars!4855 (transformation!3473 (rule!5503 token!523))) (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164709) tb!106619))

(declare-fun result!128264 () Bool)

(assert (= result!128264 result!128262))

(assert (=> b!1765839 t!164709))

(declare-fun b_and!133755 () Bool)

(assert (= b_and!133749 (and (=> t!164709 result!128264) b_and!133755)))

(declare-fun tb!106621 () Bool)

(declare-fun t!164711 () Bool)

(assert (=> (and b!1765829 (= (toChars!4855 (transformation!3473 rule!422)) (toChars!4855 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164711) tb!106621))

(declare-fun result!128266 () Bool)

(assert (= result!128266 result!128262))

(assert (=> b!1765839 t!164711))

(declare-fun b_and!133757 () Bool)

(assert (= b_and!133751 (and (=> t!164711 result!128266) b_and!133757)))

(declare-fun b_lambda!57339 () Bool)

(assert (=> (not b_lambda!57339) (not b!1765839)))

(declare-fun t!164713 () Bool)

(declare-fun tb!106623 () Bool)

(assert (=> (and b!1765822 (= (toValue!4996 (transformation!3473 (h!24838 rules!3447))) (toValue!4996 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164713) tb!106623))

(declare-fun result!128268 () Bool)

(assert (=> tb!106623 (= result!128268 (inv!21 (dynLambda!9396 (toValue!4996 (transformation!3473 (rule!5503 (_1!10925 lt!682966)))) lt!682977)))))

(declare-fun m!2183205 () Bool)

(assert (=> tb!106623 m!2183205))

(assert (=> b!1765839 t!164713))

(declare-fun b_and!133759 () Bool)

(assert (= b_and!133735 (and (=> t!164713 result!128268) b_and!133759)))

(declare-fun tb!106625 () Bool)

(declare-fun t!164715 () Bool)

(assert (=> (and b!1765831 (= (toValue!4996 (transformation!3473 (rule!5503 token!523))) (toValue!4996 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164715) tb!106625))

(declare-fun result!128272 () Bool)

(assert (= result!128272 result!128268))

(assert (=> b!1765839 t!164715))

(declare-fun b_and!133761 () Bool)

(assert (= b_and!133739 (and (=> t!164715 result!128272) b_and!133761)))

(declare-fun tb!106627 () Bool)

(declare-fun t!164717 () Bool)

(assert (=> (and b!1765829 (= (toValue!4996 (transformation!3473 rule!422)) (toValue!4996 (transformation!3473 (rule!5503 (_1!10925 lt!682966))))) t!164717) tb!106627))

(declare-fun result!128274 () Bool)

(assert (= result!128274 result!128268))

(assert (=> b!1765839 t!164717))

(declare-fun b_and!133763 () Bool)

(assert (= b_and!133743 (and (=> t!164717 result!128274) b_and!133763)))

(declare-fun m!2183207 () Bool)

(assert (=> b!1765841 m!2183207))

(declare-fun m!2183209 () Bool)

(assert (=> b!1765841 m!2183209))

(declare-fun m!2183211 () Bool)

(assert (=> b!1765849 m!2183211))

(assert (=> b!1765849 m!2183211))

(declare-fun m!2183213 () Bool)

(assert (=> b!1765849 m!2183213))

(assert (=> b!1765849 m!2183213))

(declare-fun m!2183215 () Bool)

(assert (=> b!1765849 m!2183215))

(declare-fun m!2183217 () Bool)

(assert (=> b!1765849 m!2183217))

(declare-fun m!2183219 () Bool)

(assert (=> b!1765837 m!2183219))

(declare-fun m!2183221 () Bool)

(assert (=> b!1765833 m!2183221))

(declare-fun m!2183223 () Bool)

(assert (=> b!1765835 m!2183223))

(declare-fun m!2183225 () Bool)

(assert (=> b!1765835 m!2183225))

(assert (=> b!1765835 m!2183225))

(declare-fun m!2183227 () Bool)

(assert (=> b!1765835 m!2183227))

(declare-fun m!2183229 () Bool)

(assert (=> b!1765835 m!2183229))

(declare-fun m!2183231 () Bool)

(assert (=> b!1765844 m!2183231))

(declare-fun m!2183233 () Bool)

(assert (=> b!1765840 m!2183233))

(declare-fun m!2183235 () Bool)

(assert (=> b!1765825 m!2183235))

(declare-fun m!2183237 () Bool)

(assert (=> b!1765825 m!2183237))

(declare-fun m!2183239 () Bool)

(assert (=> b!1765825 m!2183239))

(declare-fun m!2183241 () Bool)

(assert (=> start!174994 m!2183241))

(declare-fun m!2183243 () Bool)

(assert (=> b!1765824 m!2183243))

(declare-fun m!2183245 () Bool)

(assert (=> b!1765824 m!2183245))

(declare-fun m!2183247 () Bool)

(assert (=> b!1765824 m!2183247))

(declare-fun m!2183249 () Bool)

(assert (=> b!1765824 m!2183249))

(assert (=> b!1765824 m!2183243))

(declare-fun m!2183251 () Bool)

(assert (=> b!1765824 m!2183251))

(declare-fun m!2183253 () Bool)

(assert (=> b!1765834 m!2183253))

(declare-fun m!2183255 () Bool)

(assert (=> b!1765848 m!2183255))

(declare-fun m!2183257 () Bool)

(assert (=> b!1765845 m!2183257))

(declare-fun m!2183259 () Bool)

(assert (=> b!1765845 m!2183259))

(declare-fun m!2183261 () Bool)

(assert (=> b!1765845 m!2183261))

(declare-fun m!2183263 () Bool)

(assert (=> b!1765845 m!2183263))

(declare-fun m!2183265 () Bool)

(assert (=> b!1765845 m!2183265))

(declare-fun m!2183267 () Bool)

(assert (=> b!1765845 m!2183267))

(declare-fun m!2183269 () Bool)

(assert (=> b!1765845 m!2183269))

(declare-fun m!2183271 () Bool)

(assert (=> b!1765845 m!2183271))

(assert (=> b!1765845 m!2183257))

(declare-fun m!2183273 () Bool)

(assert (=> b!1765845 m!2183273))

(declare-fun m!2183275 () Bool)

(assert (=> b!1765845 m!2183275))

(declare-fun m!2183277 () Bool)

(assert (=> b!1765845 m!2183277))

(declare-fun m!2183279 () Bool)

(assert (=> b!1765845 m!2183279))

(declare-fun m!2183281 () Bool)

(assert (=> b!1765845 m!2183281))

(declare-fun m!2183283 () Bool)

(assert (=> b!1765845 m!2183283))

(assert (=> b!1765845 m!2183211))

(declare-fun m!2183285 () Bool)

(assert (=> b!1765821 m!2183285))

(declare-fun m!2183287 () Bool)

(assert (=> b!1765821 m!2183287))

(declare-fun m!2183289 () Bool)

(assert (=> b!1765821 m!2183289))

(declare-fun m!2183291 () Bool)

(assert (=> b!1765836 m!2183291))

(declare-fun m!2183293 () Bool)

(assert (=> b!1765836 m!2183293))

(declare-fun m!2183295 () Bool)

(assert (=> b!1765842 m!2183295))

(declare-fun m!2183297 () Bool)

(assert (=> b!1765842 m!2183297))

(declare-fun m!2183299 () Bool)

(assert (=> b!1765842 m!2183299))

(declare-fun m!2183301 () Bool)

(assert (=> b!1765842 m!2183301))

(declare-fun m!2183303 () Bool)

(assert (=> b!1765842 m!2183303))

(declare-fun m!2183305 () Bool)

(assert (=> b!1765842 m!2183305))

(assert (=> b!1765842 m!2183295))

(declare-fun m!2183307 () Bool)

(assert (=> b!1765842 m!2183307))

(declare-fun m!2183309 () Bool)

(assert (=> b!1765839 m!2183309))

(assert (=> b!1765839 m!2183309))

(declare-fun m!2183311 () Bool)

(assert (=> b!1765839 m!2183311))

(assert (=> b!1765839 m!2183311))

(declare-fun m!2183313 () Bool)

(assert (=> b!1765839 m!2183313))

(declare-fun m!2183315 () Bool)

(assert (=> b!1765839 m!2183315))

(declare-fun m!2183317 () Bool)

(assert (=> b!1765830 m!2183317))

(declare-fun m!2183319 () Bool)

(assert (=> b!1765830 m!2183319))

(declare-fun m!2183321 () Bool)

(assert (=> b!1765830 m!2183321))

(declare-fun m!2183323 () Bool)

(assert (=> b!1765830 m!2183323))

(declare-fun m!2183325 () Bool)

(assert (=> b!1765847 m!2183325))

(declare-fun m!2183327 () Bool)

(assert (=> b!1765838 m!2183327))

(declare-fun m!2183329 () Bool)

(assert (=> b!1765838 m!2183329))

(declare-fun m!2183331 () Bool)

(assert (=> b!1765820 m!2183331))

(declare-fun m!2183333 () Bool)

(assert (=> b!1765846 m!2183333))

(declare-fun m!2183335 () Bool)

(assert (=> b!1765846 m!2183335))

(declare-fun m!2183337 () Bool)

(assert (=> b!1765826 m!2183337))

(declare-fun m!2183339 () Bool)

(assert (=> b!1765823 m!2183339))

(check-sat (not b!1765823) (not b!1765845) (not b!1765835) (not b!1765824) b_and!133763 (not b!1765842) (not b!1765836) (not tb!106611) (not b!1765825) (not b!1765849) (not b_next!49535) (not b!1765841) b_and!133761 tp_is_empty!7845 b_and!133755 (not b!1765847) (not b_next!49541) (not b!1765848) (not b!1765830) (not b_next!49539) b_and!133757 (not b!1765821) (not b!1765833) (not b!1765826) (not b_lambda!57337) (not b!1765832) b_and!133759 b_and!133753 (not b_lambda!57335) (not b_next!49537) (not b!1765834) (not b!1765839) (not b!1765828) (not b!1765844) (not tb!106617) (not b!1765838) (not b!1765837) (not b!1765846) (not tb!106623) (not b_next!49543) (not b!1765840) (not b_lambda!57339) (not b!1765866) (not start!174994) (not b!1765865) (not b_next!49545))
(check-sat b_and!133755 (not b_next!49541) (not b_next!49539) b_and!133757 b_and!133763 (not b_next!49537) (not b_next!49543) (not b_next!49545) (not b_next!49535) b_and!133761 b_and!133759 b_and!133753)
