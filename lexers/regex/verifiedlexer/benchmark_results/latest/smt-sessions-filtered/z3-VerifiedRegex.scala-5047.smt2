; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255626 () Bool)

(assert start!255626)

(declare-fun b!2628986 () Bool)

(declare-fun b_free!74013 () Bool)

(declare-fun b_next!74717 () Bool)

(assert (=> b!2628986 (= b_free!74013 (not b_next!74717))))

(declare-fun tp!833516 () Bool)

(declare-fun b_and!192571 () Bool)

(assert (=> b!2628986 (= tp!833516 b_and!192571)))

(declare-fun b_free!74015 () Bool)

(declare-fun b_next!74719 () Bool)

(assert (=> b!2628986 (= b_free!74015 (not b_next!74719))))

(declare-fun tp!833511 () Bool)

(declare-fun b_and!192573 () Bool)

(assert (=> b!2628986 (= tp!833511 b_and!192573)))

(declare-fun b!2628971 () Bool)

(declare-fun b_free!74017 () Bool)

(declare-fun b_next!74721 () Bool)

(assert (=> b!2628971 (= b_free!74017 (not b_next!74721))))

(declare-fun tp!833512 () Bool)

(declare-fun b_and!192575 () Bool)

(assert (=> b!2628971 (= tp!833512 b_and!192575)))

(declare-fun b_free!74019 () Bool)

(declare-fun b_next!74723 () Bool)

(assert (=> b!2628971 (= b_free!74019 (not b_next!74723))))

(declare-fun tp!833518 () Bool)

(declare-fun b_and!192577 () Bool)

(assert (=> b!2628971 (= tp!833518 b_and!192577)))

(declare-fun bs!475673 () Bool)

(declare-fun b!2628973 () Bool)

(declare-fun b!2628987 () Bool)

(assert (= bs!475673 (and b!2628973 b!2628987)))

(declare-fun lambda!98526 () Int)

(declare-fun lambda!98525 () Int)

(assert (=> bs!475673 (not (= lambda!98526 lambda!98525))))

(declare-fun b!2628998 () Bool)

(declare-fun e!1658648 () Bool)

(assert (=> b!2628998 (= e!1658648 true)))

(declare-fun b!2628997 () Bool)

(declare-fun e!1658647 () Bool)

(assert (=> b!2628997 (= e!1658647 e!1658648)))

(declare-fun b!2628996 () Bool)

(declare-fun e!1658646 () Bool)

(assert (=> b!2628996 (= e!1658646 e!1658647)))

(assert (=> b!2628973 e!1658646))

(assert (= b!2628997 b!2628998))

(assert (= b!2628996 b!2628997))

(declare-datatypes ((List!30497 0))(
  ( (Nil!30397) (Cons!30397 (h!35817 (_ BitVec 16)) (t!216194 List!30497)) )
))
(declare-datatypes ((C!15676 0))(
  ( (C!15677 (val!9772 Int)) )
))
(declare-datatypes ((Regex!7759 0))(
  ( (ElementMatch!7759 (c!422796 C!15676)) (Concat!12596 (regOne!16030 Regex!7759) (regTwo!16030 Regex!7759)) (EmptyExpr!7759) (Star!7759 (reg!8088 Regex!7759)) (EmptyLang!7759) (Union!7759 (regOne!16031 Regex!7759) (regTwo!16031 Regex!7759)) )
))
(declare-datatypes ((TokenValue!4837 0))(
  ( (FloatLiteralValue!9674 (text!34304 List!30497)) (TokenValueExt!4836 (__x!19507 Int)) (Broken!24185 (value!149106 List!30497)) (Object!4936) (End!4837) (Def!4837) (Underscore!4837) (Match!4837) (Else!4837) (Error!4837) (Case!4837) (If!4837) (Extends!4837) (Abstract!4837) (Class!4837) (Val!4837) (DelimiterValue!9674 (del!4897 List!30497)) (KeywordValue!4843 (value!149107 List!30497)) (CommentValue!9674 (value!149108 List!30497)) (WhitespaceValue!9674 (value!149109 List!30497)) (IndentationValue!4837 (value!149110 List!30497)) (String!34068) (Int32!4837) (Broken!24186 (value!149111 List!30497)) (Boolean!4838) (Unit!44430) (OperatorValue!4840 (op!4897 List!30497)) (IdentifierValue!9674 (value!149112 List!30497)) (IdentifierValue!9675 (value!149113 List!30497)) (WhitespaceValue!9675 (value!149114 List!30497)) (True!9674) (False!9674) (Broken!24187 (value!149115 List!30497)) (Broken!24188 (value!149116 List!30497)) (True!9675) (RightBrace!4837) (RightBracket!4837) (Colon!4837) (Null!4837) (Comma!4837) (LeftBracket!4837) (False!9675) (LeftBrace!4837) (ImaginaryLiteralValue!4837 (text!34305 List!30497)) (StringLiteralValue!14511 (value!149117 List!30497)) (EOFValue!4837 (value!149118 List!30497)) (IdentValue!4837 (value!149119 List!30497)) (DelimiterValue!9675 (value!149120 List!30497)) (DedentValue!4837 (value!149121 List!30497)) (NewLineValue!4837 (value!149122 List!30497)) (IntegerValue!14511 (value!149123 (_ BitVec 32)) (text!34306 List!30497)) (IntegerValue!14512 (value!149124 Int) (text!34307 List!30497)) (Times!4837) (Or!4837) (Equal!4837) (Minus!4837) (Broken!24189 (value!149125 List!30497)) (And!4837) (Div!4837) (LessEqual!4837) (Mod!4837) (Concat!12597) (Not!4837) (Plus!4837) (SpaceValue!4837 (value!149126 List!30497)) (IntegerValue!14513 (value!149127 Int) (text!34308 List!30497)) (StringLiteralValue!14512 (text!34309 List!30497)) (FloatLiteralValue!9675 (text!34310 List!30497)) (BytesLiteralValue!4837 (value!149128 List!30497)) (CommentValue!9675 (value!149129 List!30497)) (StringLiteralValue!14513 (value!149130 List!30497)) (ErrorTokenValue!4837 (msg!4898 List!30497)) )
))
(declare-datatypes ((List!30498 0))(
  ( (Nil!30398) (Cons!30398 (h!35818 C!15676) (t!216195 List!30498)) )
))
(declare-datatypes ((IArray!18949 0))(
  ( (IArray!18950 (innerList!9532 List!30498)) )
))
(declare-datatypes ((Conc!9472 0))(
  ( (Node!9472 (left!23455 Conc!9472) (right!23785 Conc!9472) (csize!19174 Int) (cheight!9683 Int)) (Leaf!14520 (xs!12472 IArray!18949) (csize!19175 Int)) (Empty!9472) )
))
(declare-datatypes ((BalanceConc!18558 0))(
  ( (BalanceConc!18559 (c!422797 Conc!9472)) )
))
(declare-datatypes ((TokenValueInjection!9114 0))(
  ( (TokenValueInjection!9115 (toValue!6529 Int) (toChars!6388 Int)) )
))
(declare-datatypes ((String!34069 0))(
  ( (String!34070 (value!149131 String)) )
))
(declare-datatypes ((Rule!9030 0))(
  ( (Rule!9031 (regex!4615 Regex!7759) (tag!5109 String!34069) (isSeparator!4615 Bool) (transformation!4615 TokenValueInjection!9114)) )
))
(declare-datatypes ((List!30499 0))(
  ( (Nil!30399) (Cons!30399 (h!35819 Rule!9030) (t!216196 List!30499)) )
))
(declare-fun rules!1726 () List!30499)

(get-info :version)

(assert (= (and b!2628973 ((_ is Cons!30399) rules!1726)) b!2628996))

(declare-fun order!16393 () Int)

(declare-fun order!16391 () Int)

(declare-fun dynLambda!12987 (Int Int) Int)

(declare-fun dynLambda!12988 (Int Int) Int)

(assert (=> b!2628998 (< (dynLambda!12987 order!16391 (toValue!6529 (transformation!4615 (h!35819 rules!1726)))) (dynLambda!12988 order!16393 lambda!98526))))

(declare-fun order!16395 () Int)

(declare-fun dynLambda!12989 (Int Int) Int)

(assert (=> b!2628998 (< (dynLambda!12989 order!16395 (toChars!6388 (transformation!4615 (h!35819 rules!1726)))) (dynLambda!12988 order!16393 lambda!98526))))

(assert (=> b!2628973 true))

(declare-fun res!1106701 () Bool)

(declare-fun e!1658627 () Bool)

(assert (=> start!255626 (=> (not res!1106701) (not e!1658627))))

(declare-datatypes ((LexerInterface!4212 0))(
  ( (LexerInterfaceExt!4209 (__x!19508 Int)) (Lexer!4210) )
))
(declare-fun thiss!14197 () LexerInterface!4212)

(declare-fun from!862 () Int)

(assert (=> start!255626 (= res!1106701 (and ((_ is Lexer!4210) thiss!14197) (>= from!862 0)))))

(assert (=> start!255626 e!1658627))

(assert (=> start!255626 true))

(declare-fun e!1658629 () Bool)

(assert (=> start!255626 e!1658629))

(declare-datatypes ((Token!8700 0))(
  ( (Token!8701 (value!149132 TokenValue!4837) (rule!6997 Rule!9030) (size!23512 Int) (originalCharacters!5381 List!30498)) )
))
(declare-fun separatorToken!156 () Token!8700)

(declare-fun e!1658631 () Bool)

(declare-fun inv!41197 (Token!8700) Bool)

(assert (=> start!255626 (and (inv!41197 separatorToken!156) e!1658631)))

(declare-datatypes ((List!30500 0))(
  ( (Nil!30400) (Cons!30400 (h!35820 Token!8700) (t!216197 List!30500)) )
))
(declare-datatypes ((IArray!18951 0))(
  ( (IArray!18952 (innerList!9533 List!30500)) )
))
(declare-datatypes ((Conc!9473 0))(
  ( (Node!9473 (left!23456 Conc!9473) (right!23786 Conc!9473) (csize!19176 Int) (cheight!9684 Int)) (Leaf!14521 (xs!12473 IArray!18951) (csize!19177 Int)) (Empty!9473) )
))
(declare-datatypes ((BalanceConc!18560 0))(
  ( (BalanceConc!18561 (c!422798 Conc!9473)) )
))
(declare-fun v!6381 () BalanceConc!18560)

(declare-fun e!1658639 () Bool)

(declare-fun inv!41198 (BalanceConc!18560) Bool)

(assert (=> start!255626 (and (inv!41198 v!6381) e!1658639)))

(declare-fun tp!833514 () Bool)

(declare-fun e!1658638 () Bool)

(declare-fun e!1658630 () Bool)

(declare-fun b!2628965 () Bool)

(declare-fun inv!41192 (String!34069) Bool)

(declare-fun inv!41199 (TokenValueInjection!9114) Bool)

(assert (=> b!2628965 (= e!1658630 (and tp!833514 (inv!41192 (tag!5109 (h!35819 rules!1726))) (inv!41199 (transformation!4615 (h!35819 rules!1726))) e!1658638))))

(declare-fun b!2628966 () Bool)

(declare-fun res!1106704 () Bool)

(declare-fun e!1658624 () Bool)

(assert (=> b!2628966 (=> (not res!1106704) (not e!1658624))))

(declare-fun rulesProduceEachTokenIndividually!1032 (LexerInterface!4212 List!30499 BalanceConc!18560) Bool)

(assert (=> b!2628966 (= res!1106704 (rulesProduceEachTokenIndividually!1032 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2628967 () Bool)

(declare-fun e!1658626 () Bool)

(declare-fun e!1658633 () Bool)

(assert (=> b!2628967 (= e!1658626 e!1658633)))

(declare-fun res!1106710 () Bool)

(assert (=> b!2628967 (=> res!1106710 e!1658633)))

(declare-fun lt!924847 () List!30498)

(declare-fun lt!924833 () List!30498)

(assert (=> b!2628967 (= res!1106710 (not (= lt!924847 lt!924833)))))

(declare-fun lt!924842 () Token!8700)

(declare-fun printList!1152 (LexerInterface!4212 List!30500) List!30498)

(assert (=> b!2628967 (= lt!924833 (printList!1152 thiss!14197 (Cons!30400 lt!924842 Nil!30400)))))

(declare-fun lt!924843 () BalanceConc!18558)

(declare-fun list!11422 (BalanceConc!18558) List!30498)

(assert (=> b!2628967 (= lt!924847 (list!11422 lt!924843))))

(declare-fun lt!924835 () BalanceConc!18560)

(declare-fun printTailRec!1111 (LexerInterface!4212 BalanceConc!18560 Int BalanceConc!18558) BalanceConc!18558)

(assert (=> b!2628967 (= lt!924843 (printTailRec!1111 thiss!14197 lt!924835 0 (BalanceConc!18559 Empty!9472)))))

(declare-fun print!1622 (LexerInterface!4212 BalanceConc!18560) BalanceConc!18558)

(assert (=> b!2628967 (= lt!924843 (print!1622 thiss!14197 lt!924835))))

(declare-fun singletonSeq!2041 (Token!8700) BalanceConc!18560)

(assert (=> b!2628967 (= lt!924835 (singletonSeq!2041 lt!924842))))

(declare-fun b!2628968 () Bool)

(declare-fun res!1106698 () Bool)

(declare-fun e!1658625 () Bool)

(assert (=> b!2628968 (=> res!1106698 e!1658625)))

(declare-fun lt!924836 () List!30500)

(declare-fun contains!5732 (List!30500 Token!8700) Bool)

(assert (=> b!2628968 (= res!1106698 (not (contains!5732 lt!924836 lt!924842)))))

(declare-fun b!2628969 () Bool)

(declare-fun res!1106709 () Bool)

(assert (=> b!2628969 (=> (not res!1106709) (not e!1658624))))

(assert (=> b!2628969 (= res!1106709 (isSeparator!4615 (rule!6997 separatorToken!156)))))

(declare-fun b!2628970 () Bool)

(declare-fun tp!833510 () Bool)

(declare-fun inv!41200 (Conc!9473) Bool)

(assert (=> b!2628970 (= e!1658639 (and (inv!41200 (c!422798 v!6381)) tp!833510))))

(declare-fun e!1658635 () Bool)

(assert (=> b!2628971 (= e!1658635 (and tp!833512 tp!833518))))

(declare-fun e!1658628 () Bool)

(declare-fun tp!833513 () Bool)

(declare-fun b!2628972 () Bool)

(assert (=> b!2628972 (= e!1658628 (and tp!833513 (inv!41192 (tag!5109 (rule!6997 separatorToken!156))) (inv!41199 (transformation!4615 (rule!6997 separatorToken!156))) e!1658635))))

(assert (=> b!2628973 (= e!1658625 e!1658626)))

(declare-fun res!1106711 () Bool)

(assert (=> b!2628973 (=> res!1106711 e!1658626)))

(declare-fun lt!924839 () Bool)

(declare-datatypes ((tuple2!29924 0))(
  ( (tuple2!29925 (_1!17504 Token!8700) (_2!17504 BalanceConc!18558)) )
))
(declare-datatypes ((Option!6006 0))(
  ( (None!6005) (Some!6005 (v!32392 tuple2!29924)) )
))
(declare-fun lt!924837 () Option!6006)

(assert (=> b!2628973 (= res!1106711 (or (and (not lt!924839) (= (_1!17504 (v!32392 lt!924837)) lt!924842)) (and (not lt!924839) (not (= (_1!17504 (v!32392 lt!924837)) lt!924842))) (not ((_ is None!6005) lt!924837))))))

(assert (=> b!2628973 (= lt!924839 (not ((_ is Some!6005) lt!924837)))))

(declare-fun lt!924845 () BalanceConc!18558)

(declare-fun lt!924840 () BalanceConc!18558)

(declare-fun maxPrefixZipperSequence!942 (LexerInterface!4212 List!30499 BalanceConc!18558) Option!6006)

(declare-fun ++!7401 (BalanceConc!18558 BalanceConc!18558) BalanceConc!18558)

(assert (=> b!2628973 (= lt!924837 (maxPrefixZipperSequence!942 thiss!14197 rules!1726 (++!7401 lt!924840 lt!924845)))))

(declare-fun charsOf!2906 (Token!8700) BalanceConc!18558)

(assert (=> b!2628973 (= lt!924840 (charsOf!2906 lt!924842))))

(declare-fun printWithSeparatorTokenWhenNeededRec!490 (LexerInterface!4212 List!30499 BalanceConc!18560 Token!8700 Int) BalanceConc!18558)

(assert (=> b!2628973 (= lt!924845 (printWithSeparatorTokenWhenNeededRec!490 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-datatypes ((Unit!44431 0))(
  ( (Unit!44432) )
))
(declare-fun lt!924846 () Unit!44431)

(declare-fun forallContained!971 (List!30500 Int Token!8700) Unit!44431)

(assert (=> b!2628973 (= lt!924846 (forallContained!971 lt!924836 lambda!98526 lt!924842))))

(declare-fun b!2628974 () Bool)

(assert (=> b!2628974 (= e!1658633 (<= 0 from!862))))

(declare-fun tp!833517 () Bool)

(declare-fun b!2628975 () Bool)

(declare-fun inv!21 (TokenValue!4837) Bool)

(assert (=> b!2628975 (= e!1658631 (and (inv!21 (value!149132 separatorToken!156)) e!1658628 tp!833517))))

(declare-fun b!2628976 () Bool)

(declare-fun res!1106706 () Bool)

(assert (=> b!2628976 (=> res!1106706 e!1658633)))

(assert (=> b!2628976 (= res!1106706 (not (= lt!924833 (list!11422 lt!924840))))))

(declare-fun b!2628977 () Bool)

(declare-fun res!1106707 () Bool)

(assert (=> b!2628977 (=> (not res!1106707) (not e!1658624))))

(declare-fun isEmpty!17348 (List!30499) Bool)

(assert (=> b!2628977 (= res!1106707 (not (isEmpty!17348 rules!1726)))))

(declare-fun b!2628978 () Bool)

(declare-fun res!1106700 () Bool)

(assert (=> b!2628978 (=> (not res!1106700) (not e!1658624))))

(declare-fun sepAndNonSepRulesDisjointChars!1188 (List!30499 List!30499) Bool)

(assert (=> b!2628978 (= res!1106700 (sepAndNonSepRulesDisjointChars!1188 rules!1726 rules!1726))))

(declare-fun b!2628979 () Bool)

(declare-fun res!1106708 () Bool)

(assert (=> b!2628979 (=> res!1106708 e!1658633)))

(declare-fun rulesProduceIndividualToken!1924 (LexerInterface!4212 List!30499 Token!8700) Bool)

(assert (=> b!2628979 (= res!1106708 (not (rulesProduceIndividualToken!1924 thiss!14197 rules!1726 lt!924842)))))

(declare-fun b!2628980 () Bool)

(declare-fun tp!833515 () Bool)

(assert (=> b!2628980 (= e!1658629 (and e!1658630 tp!833515))))

(declare-fun b!2628981 () Bool)

(assert (=> b!2628981 (= e!1658627 e!1658624)))

(declare-fun res!1106697 () Bool)

(assert (=> b!2628981 (=> (not res!1106697) (not e!1658624))))

(declare-fun lt!924832 () Int)

(assert (=> b!2628981 (= res!1106697 (<= from!862 lt!924832))))

(declare-fun size!23513 (BalanceConc!18560) Int)

(assert (=> b!2628981 (= lt!924832 (size!23513 v!6381))))

(declare-fun b!2628982 () Bool)

(declare-fun e!1658636 () Bool)

(assert (=> b!2628982 (= e!1658624 e!1658636)))

(declare-fun res!1106705 () Bool)

(assert (=> b!2628982 (=> (not res!1106705) (not e!1658636))))

(assert (=> b!2628982 (= res!1106705 (< from!862 lt!924832))))

(declare-fun lt!924841 () Unit!44431)

(declare-fun lemmaContentSubsetPreservesForall!284 (List!30500 List!30500 Int) Unit!44431)

(declare-fun dropList!918 (BalanceConc!18560 Int) List!30500)

(assert (=> b!2628982 (= lt!924841 (lemmaContentSubsetPreservesForall!284 lt!924836 (dropList!918 v!6381 from!862) lambda!98525))))

(declare-fun list!11423 (BalanceConc!18560) List!30500)

(assert (=> b!2628982 (= lt!924836 (list!11423 v!6381))))

(declare-fun b!2628983 () Bool)

(declare-fun res!1106703 () Bool)

(assert (=> b!2628983 (=> (not res!1106703) (not e!1658624))))

(declare-fun rulesInvariant!3712 (LexerInterface!4212 List!30499) Bool)

(assert (=> b!2628983 (= res!1106703 (rulesInvariant!3712 thiss!14197 rules!1726))))

(declare-fun b!2628984 () Bool)

(declare-fun res!1106702 () Bool)

(assert (=> b!2628984 (=> (not res!1106702) (not e!1658624))))

(assert (=> b!2628984 (= res!1106702 (rulesProduceIndividualToken!1924 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2628985 () Bool)

(assert (=> b!2628985 (= e!1658636 (not e!1658625))))

(declare-fun res!1106696 () Bool)

(assert (=> b!2628985 (=> res!1106696 e!1658625)))

(declare-fun contains!5733 (BalanceConc!18560 Token!8700) Bool)

(assert (=> b!2628985 (= res!1106696 (not (contains!5733 v!6381 lt!924842)))))

(declare-fun apply!7212 (BalanceConc!18560 Int) Token!8700)

(assert (=> b!2628985 (= lt!924842 (apply!7212 v!6381 from!862))))

(declare-fun lt!924838 () List!30500)

(declare-fun tail!4252 (List!30500) List!30500)

(declare-fun drop!1611 (List!30500 Int) List!30500)

(assert (=> b!2628985 (= (tail!4252 lt!924838) (drop!1611 lt!924836 (+ 1 from!862)))))

(declare-fun lt!924834 () Unit!44431)

(declare-fun lemmaDropTail!800 (List!30500 Int) Unit!44431)

(assert (=> b!2628985 (= lt!924834 (lemmaDropTail!800 lt!924836 from!862))))

(declare-fun head!6014 (List!30500) Token!8700)

(declare-fun apply!7213 (List!30500 Int) Token!8700)

(assert (=> b!2628985 (= (head!6014 lt!924838) (apply!7213 lt!924836 from!862))))

(assert (=> b!2628985 (= lt!924838 (drop!1611 lt!924836 from!862))))

(declare-fun lt!924844 () Unit!44431)

(declare-fun lemmaDropApply!826 (List!30500 Int) Unit!44431)

(assert (=> b!2628985 (= lt!924844 (lemmaDropApply!826 lt!924836 from!862))))

(assert (=> b!2628986 (= e!1658638 (and tp!833516 tp!833511))))

(declare-fun res!1106699 () Bool)

(assert (=> b!2628987 (=> (not res!1106699) (not e!1658624))))

(declare-fun forall!6347 (BalanceConc!18560 Int) Bool)

(assert (=> b!2628987 (= res!1106699 (forall!6347 v!6381 lambda!98525))))

(assert (= (and start!255626 res!1106701) b!2628981))

(assert (= (and b!2628981 res!1106697) b!2628977))

(assert (= (and b!2628977 res!1106707) b!2628983))

(assert (= (and b!2628983 res!1106703) b!2628966))

(assert (= (and b!2628966 res!1106704) b!2628984))

(assert (= (and b!2628984 res!1106702) b!2628969))

(assert (= (and b!2628969 res!1106709) b!2628987))

(assert (= (and b!2628987 res!1106699) b!2628978))

(assert (= (and b!2628978 res!1106700) b!2628982))

(assert (= (and b!2628982 res!1106705) b!2628985))

(assert (= (and b!2628985 (not res!1106696)) b!2628968))

(assert (= (and b!2628968 (not res!1106698)) b!2628973))

(assert (= (and b!2628973 (not res!1106711)) b!2628967))

(assert (= (and b!2628967 (not res!1106710)) b!2628976))

(assert (= (and b!2628976 (not res!1106706)) b!2628979))

(assert (= (and b!2628979 (not res!1106708)) b!2628974))

(assert (= b!2628965 b!2628986))

(assert (= b!2628980 b!2628965))

(assert (= (and start!255626 ((_ is Cons!30399) rules!1726)) b!2628980))

(assert (= b!2628972 b!2628971))

(assert (= b!2628975 b!2628972))

(assert (= start!255626 b!2628975))

(assert (= start!255626 b!2628970))

(declare-fun m!2972045 () Bool)

(assert (=> start!255626 m!2972045))

(declare-fun m!2972047 () Bool)

(assert (=> start!255626 m!2972047))

(declare-fun m!2972049 () Bool)

(assert (=> b!2628983 m!2972049))

(declare-fun m!2972051 () Bool)

(assert (=> b!2628968 m!2972051))

(declare-fun m!2972053 () Bool)

(assert (=> b!2628982 m!2972053))

(assert (=> b!2628982 m!2972053))

(declare-fun m!2972055 () Bool)

(assert (=> b!2628982 m!2972055))

(declare-fun m!2972057 () Bool)

(assert (=> b!2628982 m!2972057))

(declare-fun m!2972059 () Bool)

(assert (=> b!2628979 m!2972059))

(declare-fun m!2972061 () Bool)

(assert (=> b!2628985 m!2972061))

(declare-fun m!2972063 () Bool)

(assert (=> b!2628985 m!2972063))

(declare-fun m!2972065 () Bool)

(assert (=> b!2628985 m!2972065))

(declare-fun m!2972067 () Bool)

(assert (=> b!2628985 m!2972067))

(declare-fun m!2972069 () Bool)

(assert (=> b!2628985 m!2972069))

(declare-fun m!2972071 () Bool)

(assert (=> b!2628985 m!2972071))

(declare-fun m!2972073 () Bool)

(assert (=> b!2628985 m!2972073))

(declare-fun m!2972075 () Bool)

(assert (=> b!2628985 m!2972075))

(declare-fun m!2972077 () Bool)

(assert (=> b!2628985 m!2972077))

(declare-fun m!2972079 () Bool)

(assert (=> b!2628981 m!2972079))

(declare-fun m!2972081 () Bool)

(assert (=> b!2628967 m!2972081))

(declare-fun m!2972083 () Bool)

(assert (=> b!2628967 m!2972083))

(declare-fun m!2972085 () Bool)

(assert (=> b!2628967 m!2972085))

(declare-fun m!2972087 () Bool)

(assert (=> b!2628967 m!2972087))

(declare-fun m!2972089 () Bool)

(assert (=> b!2628967 m!2972089))

(declare-fun m!2972091 () Bool)

(assert (=> b!2628973 m!2972091))

(declare-fun m!2972093 () Bool)

(assert (=> b!2628973 m!2972093))

(declare-fun m!2972095 () Bool)

(assert (=> b!2628973 m!2972095))

(assert (=> b!2628973 m!2972091))

(declare-fun m!2972097 () Bool)

(assert (=> b!2628973 m!2972097))

(declare-fun m!2972099 () Bool)

(assert (=> b!2628973 m!2972099))

(declare-fun m!2972101 () Bool)

(assert (=> b!2628972 m!2972101))

(declare-fun m!2972103 () Bool)

(assert (=> b!2628972 m!2972103))

(declare-fun m!2972105 () Bool)

(assert (=> b!2628977 m!2972105))

(declare-fun m!2972107 () Bool)

(assert (=> b!2628970 m!2972107))

(declare-fun m!2972109 () Bool)

(assert (=> b!2628987 m!2972109))

(declare-fun m!2972111 () Bool)

(assert (=> b!2628976 m!2972111))

(declare-fun m!2972113 () Bool)

(assert (=> b!2628978 m!2972113))

(declare-fun m!2972115 () Bool)

(assert (=> b!2628975 m!2972115))

(declare-fun m!2972117 () Bool)

(assert (=> b!2628984 m!2972117))

(declare-fun m!2972119 () Bool)

(assert (=> b!2628966 m!2972119))

(declare-fun m!2972121 () Bool)

(assert (=> b!2628965 m!2972121))

(declare-fun m!2972123 () Bool)

(assert (=> b!2628965 m!2972123))

(check-sat (not b_next!74721) b_and!192575 (not b!2628984) (not b!2628976) b_and!192573 (not b!2628966) b_and!192571 (not b_next!74723) (not b!2628979) (not b!2628968) (not start!255626) (not b!2628980) (not b!2628985) (not b!2628977) (not b!2628987) (not b!2628982) (not b!2628967) (not b!2628965) b_and!192577 (not b_next!74717) (not b!2628970) (not b!2628983) (not b!2628975) (not b!2628972) (not b!2628981) (not b!2628978) (not b!2628973) (not b_next!74719) (not b!2628996))
(check-sat (not b_next!74721) b_and!192575 b_and!192573 b_and!192571 (not b_next!74723) (not b_next!74719) b_and!192577 (not b_next!74717))
