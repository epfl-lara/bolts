; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!160630 () Bool)

(assert start!160630)

(declare-fun b!1661889 () Bool)

(declare-fun b_free!45143 () Bool)

(declare-fun b_next!45847 () Bool)

(assert (=> b!1661889 (= b_free!45143 (not b_next!45847))))

(declare-fun tp!479344 () Bool)

(declare-fun b_and!118005 () Bool)

(assert (=> b!1661889 (= tp!479344 b_and!118005)))

(declare-fun b_free!45145 () Bool)

(declare-fun b_next!45849 () Bool)

(assert (=> b!1661889 (= b_free!45145 (not b_next!45849))))

(declare-fun tp!479348 () Bool)

(declare-fun b_and!118007 () Bool)

(assert (=> b!1661889 (= tp!479348 b_and!118007)))

(declare-fun b!1661868 () Bool)

(declare-fun b_free!45147 () Bool)

(declare-fun b_next!45851 () Bool)

(assert (=> b!1661868 (= b_free!45147 (not b_next!45851))))

(declare-fun tp!479350 () Bool)

(declare-fun b_and!118009 () Bool)

(assert (=> b!1661868 (= tp!479350 b_and!118009)))

(declare-fun b_free!45149 () Bool)

(declare-fun b_next!45853 () Bool)

(assert (=> b!1661868 (= b_free!45149 (not b_next!45853))))

(declare-fun tp!479349 () Bool)

(declare-fun b_and!118011 () Bool)

(assert (=> b!1661868 (= tp!479349 b_and!118011)))

(declare-fun b!1661856 () Bool)

(declare-fun res!745620 () Bool)

(declare-fun e!1065396 () Bool)

(assert (=> b!1661856 (=> (not res!745620) (not e!1065396))))

(declare-datatypes ((List!18401 0))(
  ( (Nil!18331) (Cons!18331 (h!23732 (_ BitVec 16)) (t!151808 List!18401)) )
))
(declare-datatypes ((TokenValue!3321 0))(
  ( (FloatLiteralValue!6642 (text!23692 List!18401)) (TokenValueExt!3320 (__x!11944 Int)) (Broken!16605 (value!101730 List!18401)) (Object!3390) (End!3321) (Def!3321) (Underscore!3321) (Match!3321) (Else!3321) (Error!3321) (Case!3321) (If!3321) (Extends!3321) (Abstract!3321) (Class!3321) (Val!3321) (DelimiterValue!6642 (del!3381 List!18401)) (KeywordValue!3327 (value!101731 List!18401)) (CommentValue!6642 (value!101732 List!18401)) (WhitespaceValue!6642 (value!101733 List!18401)) (IndentationValue!3321 (value!101734 List!18401)) (String!20936) (Int32!3321) (Broken!16606 (value!101735 List!18401)) (Boolean!3322) (Unit!30960) (OperatorValue!3324 (op!3381 List!18401)) (IdentifierValue!6642 (value!101736 List!18401)) (IdentifierValue!6643 (value!101737 List!18401)) (WhitespaceValue!6643 (value!101738 List!18401)) (True!6642) (False!6642) (Broken!16607 (value!101739 List!18401)) (Broken!16608 (value!101740 List!18401)) (True!6643) (RightBrace!3321) (RightBracket!3321) (Colon!3321) (Null!3321) (Comma!3321) (LeftBracket!3321) (False!6643) (LeftBrace!3321) (ImaginaryLiteralValue!3321 (text!23693 List!18401)) (StringLiteralValue!9963 (value!101741 List!18401)) (EOFValue!3321 (value!101742 List!18401)) (IdentValue!3321 (value!101743 List!18401)) (DelimiterValue!6643 (value!101744 List!18401)) (DedentValue!3321 (value!101745 List!18401)) (NewLineValue!3321 (value!101746 List!18401)) (IntegerValue!9963 (value!101747 (_ BitVec 32)) (text!23694 List!18401)) (IntegerValue!9964 (value!101748 Int) (text!23695 List!18401)) (Times!3321) (Or!3321) (Equal!3321) (Minus!3321) (Broken!16609 (value!101749 List!18401)) (And!3321) (Div!3321) (LessEqual!3321) (Mod!3321) (Concat!7880) (Not!3321) (Plus!3321) (SpaceValue!3321 (value!101750 List!18401)) (IntegerValue!9965 (value!101751 Int) (text!23696 List!18401)) (StringLiteralValue!9964 (text!23697 List!18401)) (FloatLiteralValue!6643 (text!23698 List!18401)) (BytesLiteralValue!3321 (value!101752 List!18401)) (CommentValue!6643 (value!101753 List!18401)) (StringLiteralValue!9965 (value!101754 List!18401)) (ErrorTokenValue!3321 (msg!3382 List!18401)) )
))
(declare-datatypes ((C!9292 0))(
  ( (C!9293 (val!5242 Int)) )
))
(declare-datatypes ((List!18402 0))(
  ( (Nil!18332) (Cons!18332 (h!23733 C!9292) (t!151809 List!18402)) )
))
(declare-datatypes ((IArray!12225 0))(
  ( (IArray!12226 (innerList!6170 List!18402)) )
))
(declare-datatypes ((Conc!6110 0))(
  ( (Node!6110 (left!14671 Conc!6110) (right!15001 Conc!6110) (csize!12450 Int) (cheight!6321 Int)) (Leaf!8946 (xs!8954 IArray!12225) (csize!12451 Int)) (Empty!6110) )
))
(declare-datatypes ((BalanceConc!12164 0))(
  ( (BalanceConc!12165 (c!270503 Conc!6110)) )
))
(declare-datatypes ((Regex!4559 0))(
  ( (ElementMatch!4559 (c!270504 C!9292)) (Concat!7881 (regOne!9630 Regex!4559) (regTwo!9630 Regex!4559)) (EmptyExpr!4559) (Star!4559 (reg!4888 Regex!4559)) (EmptyLang!4559) (Union!4559 (regOne!9631 Regex!4559) (regTwo!9631 Regex!4559)) )
))
(declare-datatypes ((String!20937 0))(
  ( (String!20938 (value!101755 String)) )
))
(declare-datatypes ((TokenValueInjection!6302 0))(
  ( (TokenValueInjection!6303 (toValue!4686 Int) (toChars!4545 Int)) )
))
(declare-datatypes ((Rule!6262 0))(
  ( (Rule!6263 (regex!3231 Regex!4559) (tag!3515 String!20937) (isSeparator!3231 Bool) (transformation!3231 TokenValueInjection!6302)) )
))
(declare-datatypes ((List!18403 0))(
  ( (Nil!18333) (Cons!18333 (h!23734 Rule!6262) (t!151810 List!18403)) )
))
(declare-fun rules!1846 () List!18403)

(declare-datatypes ((LexerInterface!2860 0))(
  ( (LexerInterfaceExt!2857 (__x!11945 Int)) (Lexer!2858) )
))
(declare-fun thiss!17113 () LexerInterface!2860)

(declare-datatypes ((Token!6028 0))(
  ( (Token!6029 (value!101756 TokenValue!3321) (rule!5115 Rule!6262) (size!14580 Int) (originalCharacters!4045 List!18402)) )
))
(declare-datatypes ((List!18404 0))(
  ( (Nil!18334) (Cons!18334 (h!23735 Token!6028) (t!151811 List!18404)) )
))
(declare-fun tokens!457 () List!18404)

(declare-fun rulesProduceEachTokenIndividuallyList!1062 (LexerInterface!2860 List!18403 List!18404) Bool)

(assert (=> b!1661856 (= res!745620 (rulesProduceEachTokenIndividuallyList!1062 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1661857 () Bool)

(declare-fun res!745613 () Bool)

(assert (=> b!1661857 (=> (not res!745613) (not e!1065396))))

(declare-fun isEmpty!11381 (List!18403) Bool)

(assert (=> b!1661857 (= res!745613 (not (isEmpty!11381 rules!1846)))))

(declare-fun b!1661859 () Bool)

(declare-fun res!745619 () Bool)

(declare-fun e!1065399 () Bool)

(assert (=> b!1661859 (=> res!745619 e!1065399)))

(declare-fun lt!623668 () List!18402)

(declare-datatypes ((tuple2!18046 0))(
  ( (tuple2!18047 (_1!10425 Token!6028) (_2!10425 List!18402)) )
))
(declare-datatypes ((Option!3511 0))(
  ( (None!3510) (Some!3510 (v!24729 tuple2!18046)) )
))
(declare-fun get!5362 (Option!3511) tuple2!18046)

(declare-fun maxPrefixZipper!358 (LexerInterface!2860 List!18403 List!18402) Option!3511)

(assert (=> b!1661859 (= res!745619 (not (= (h!23735 tokens!457) (_1!10425 (get!5362 (maxPrefixZipper!358 thiss!17113 rules!1846 lt!623668))))))))

(declare-fun b!1661860 () Bool)

(declare-fun e!1065412 () Bool)

(declare-fun e!1065409 () Bool)

(assert (=> b!1661860 (= e!1065412 e!1065409)))

(declare-fun res!745599 () Bool)

(assert (=> b!1661860 (=> res!745599 e!1065409)))

(declare-fun lt!623664 () List!18402)

(declare-fun lt!623671 () List!18402)

(declare-fun lt!623659 () tuple2!18046)

(assert (=> b!1661860 (= res!745599 (or (not (= (_2!10425 lt!623659) lt!623671)) (not (= lt!623664 lt!623671))))))

(declare-datatypes ((tuple2!18048 0))(
  ( (tuple2!18049 (_1!10426 Token!6028) (_2!10426 BalanceConc!12164)) )
))
(declare-fun lt!623661 () tuple2!18048)

(declare-fun list!7317 (BalanceConc!12164) List!18402)

(assert (=> b!1661860 (= lt!623671 (list!7317 (_2!10426 lt!623661)))))

(declare-fun e!1065413 () Bool)

(declare-fun tp!479342 () Bool)

(declare-fun b!1661861 () Bool)

(declare-fun e!1065403 () Bool)

(declare-fun inv!21 (TokenValue!3321) Bool)

(assert (=> b!1661861 (= e!1065403 (and (inv!21 (value!101756 (h!23735 tokens!457))) e!1065413 tp!479342))))

(declare-fun b!1661862 () Bool)

(declare-fun e!1065404 () Bool)

(declare-fun e!1065397 () Bool)

(assert (=> b!1661862 (= e!1065404 e!1065397)))

(declare-fun res!745598 () Bool)

(assert (=> b!1661862 (=> res!745598 e!1065397)))

(declare-fun lt!623654 () Option!3511)

(declare-fun isDefined!2866 (Option!3511) Bool)

(assert (=> b!1661862 (= res!745598 (not (isDefined!2866 lt!623654)))))

(declare-datatypes ((Unit!30961 0))(
  ( (Unit!30962) )
))
(declare-fun lt!623681 () Unit!30961)

(declare-fun lt!623670 () List!18402)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!428 (LexerInterface!2860 List!18403 List!18402 List!18402) Unit!30961)

(assert (=> b!1661862 (= lt!623681 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!428 thiss!17113 rules!1846 lt!623670 lt!623664))))

(declare-fun b!1661863 () Bool)

(declare-fun e!1065405 () Bool)

(assert (=> b!1661863 (= e!1065405 e!1065404)))

(declare-fun res!745605 () Bool)

(assert (=> b!1661863 (=> res!745605 e!1065404)))

(declare-fun lt!623662 () List!18402)

(declare-fun lt!623653 () List!18402)

(assert (=> b!1661863 (= res!745605 (or (not (= lt!623662 lt!623653)) (not (= lt!623653 lt!623670)) (not (= lt!623662 lt!623670))))))

(declare-fun printList!973 (LexerInterface!2860 List!18404) List!18402)

(assert (=> b!1661863 (= lt!623653 (printList!973 thiss!17113 (Cons!18334 (h!23735 tokens!457) Nil!18334)))))

(declare-fun lt!623686 () BalanceConc!12164)

(assert (=> b!1661863 (= lt!623662 (list!7317 lt!623686))))

(declare-datatypes ((IArray!12227 0))(
  ( (IArray!12228 (innerList!6171 List!18404)) )
))
(declare-datatypes ((Conc!6111 0))(
  ( (Node!6111 (left!14672 Conc!6111) (right!15002 Conc!6111) (csize!12452 Int) (cheight!6322 Int)) (Leaf!8947 (xs!8955 IArray!12227) (csize!12453 Int)) (Empty!6111) )
))
(declare-datatypes ((BalanceConc!12166 0))(
  ( (BalanceConc!12167 (c!270505 Conc!6111)) )
))
(declare-fun lt!623658 () BalanceConc!12166)

(declare-fun printTailRec!911 (LexerInterface!2860 BalanceConc!12166 Int BalanceConc!12164) BalanceConc!12164)

(assert (=> b!1661863 (= lt!623686 (printTailRec!911 thiss!17113 lt!623658 0 (BalanceConc!12165 Empty!6110)))))

(declare-fun print!1391 (LexerInterface!2860 BalanceConc!12166) BalanceConc!12164)

(assert (=> b!1661863 (= lt!623686 (print!1391 thiss!17113 lt!623658))))

(declare-fun singletonSeq!1734 (Token!6028) BalanceConc!12166)

(assert (=> b!1661863 (= lt!623658 (singletonSeq!1734 (h!23735 tokens!457)))))

(declare-fun maxPrefix!1422 (LexerInterface!2860 List!18403 List!18402) Option!3511)

(assert (=> b!1661863 (= lt!623654 (maxPrefix!1422 thiss!17113 rules!1846 lt!623668))))

(declare-fun b!1661864 () Bool)

(declare-fun e!1065408 () Bool)

(declare-fun e!1065414 () Bool)

(declare-fun tp!479343 () Bool)

(declare-fun inv!23676 (String!20937) Bool)

(declare-fun inv!23679 (TokenValueInjection!6302) Bool)

(assert (=> b!1661864 (= e!1065408 (and tp!479343 (inv!23676 (tag!3515 (h!23734 rules!1846))) (inv!23679 (transformation!3231 (h!23734 rules!1846))) e!1065414))))

(declare-fun b!1661865 () Bool)

(declare-fun res!745618 () Bool)

(assert (=> b!1661865 (=> res!745618 e!1065405)))

(declare-fun separableTokensPredicate!800 (LexerInterface!2860 Token!6028 Token!6028 List!18403) Bool)

(assert (=> b!1661865 (= res!745618 (not (separableTokensPredicate!800 thiss!17113 (h!23735 tokens!457) (h!23735 (t!151811 tokens!457)) rules!1846)))))

(declare-fun b!1661866 () Bool)

(declare-fun res!745617 () Bool)

(assert (=> b!1661866 (=> (not res!745617) (not e!1065396))))

(get-info :version)

(assert (=> b!1661866 (= res!745617 (and (not ((_ is Nil!18334) tokens!457)) (not ((_ is Nil!18334) (t!151811 tokens!457)))))))

(declare-fun b!1661867 () Bool)

(declare-fun e!1065391 () Bool)

(assert (=> b!1661867 (= e!1065391 e!1065405)))

(declare-fun res!745601 () Bool)

(assert (=> b!1661867 (=> res!745601 e!1065405)))

(declare-fun lt!623673 () List!18404)

(declare-fun lt!623652 () List!18404)

(declare-fun lt!623680 () List!18404)

(assert (=> b!1661867 (= res!745601 (or (not (= lt!623652 lt!623673)) (not (= lt!623673 lt!623680))))))

(declare-fun lt!623683 () BalanceConc!12166)

(declare-fun list!7318 (BalanceConc!12166) List!18404)

(assert (=> b!1661867 (= lt!623673 (list!7318 lt!623683))))

(assert (=> b!1661867 (= lt!623652 lt!623680)))

(declare-fun lt!623678 () BalanceConc!12166)

(assert (=> b!1661867 (= lt!623680 (list!7318 lt!623678))))

(declare-fun prepend!809 (BalanceConc!12166 Token!6028) BalanceConc!12166)

(declare-fun seqFromList!2201 (List!18404) BalanceConc!12166)

(assert (=> b!1661867 (= lt!623678 (prepend!809 (seqFromList!2201 (t!151811 (t!151811 tokens!457))) (h!23735 (t!151811 tokens!457))))))

(declare-fun lt!623663 () Unit!30961)

(declare-datatypes ((tuple2!18050 0))(
  ( (tuple2!18051 (_1!10427 BalanceConc!12166) (_2!10427 BalanceConc!12164)) )
))
(declare-fun lt!623655 () tuple2!18050)

(declare-fun seqFromListBHdTlConstructive!306 (Token!6028 List!18404 BalanceConc!12166) Unit!30961)

(assert (=> b!1661867 (= lt!623663 (seqFromListBHdTlConstructive!306 (h!23735 (t!151811 tokens!457)) (t!151811 (t!151811 tokens!457)) (_1!10427 lt!623655)))))

(declare-fun e!1065402 () Bool)

(assert (=> b!1661868 (= e!1065402 (and tp!479350 tp!479349))))

(declare-fun e!1065398 () Bool)

(declare-fun lt!623665 () List!18404)

(declare-fun b!1661869 () Bool)

(assert (=> b!1661869 (= e!1065398 (= lt!623665 (list!7318 (prepend!809 lt!623678 (h!23735 tokens!457)))))))

(declare-fun b!1661870 () Bool)

(declare-fun e!1065407 () Bool)

(declare-fun matchR!2052 (Regex!4559 List!18402) Bool)

(assert (=> b!1661870 (= e!1065407 (matchR!2052 (regex!3231 (rule!5115 (h!23735 tokens!457))) lt!623670))))

(declare-fun b!1661871 () Bool)

(declare-fun e!1065415 () Bool)

(assert (=> b!1661871 (= e!1065397 e!1065415)))

(declare-fun res!745614 () Bool)

(assert (=> b!1661871 (=> res!745614 e!1065415)))

(declare-fun lt!623666 () BalanceConc!12164)

(declare-fun lt!623675 () Regex!4559)

(declare-fun lt!623682 () BalanceConc!12164)

(declare-fun prefixMatchZipperSequence!655 (Regex!4559 BalanceConc!12164) Bool)

(declare-fun ++!4983 (BalanceConc!12164 BalanceConc!12164) BalanceConc!12164)

(assert (=> b!1661871 (= res!745614 (prefixMatchZipperSequence!655 lt!623675 (++!4983 lt!623666 lt!623682)))))

(declare-fun singletonSeq!1735 (C!9292) BalanceConc!12164)

(declare-fun apply!4896 (BalanceConc!12164 Int) C!9292)

(declare-fun charsOf!1880 (Token!6028) BalanceConc!12164)

(assert (=> b!1661871 (= lt!623682 (singletonSeq!1735 (apply!4896 (charsOf!1880 (h!23735 (t!151811 tokens!457))) 0)))))

(declare-fun rulesRegex!615 (LexerInterface!2860 List!18403) Regex!4559)

(assert (=> b!1661871 (= lt!623675 (rulesRegex!615 thiss!17113 rules!1846))))

(declare-fun b!1661872 () Bool)

(declare-fun e!1065401 () Bool)

(declare-fun tp!479345 () Bool)

(assert (=> b!1661872 (= e!1065401 (and e!1065408 tp!479345))))

(declare-fun tp!479346 () Bool)

(declare-fun b!1661873 () Bool)

(declare-fun e!1065410 () Bool)

(declare-fun inv!23680 (Token!6028) Bool)

(assert (=> b!1661873 (= e!1065410 (and (inv!23680 (h!23735 tokens!457)) e!1065403 tp!479346))))

(declare-fun b!1661858 () Bool)

(declare-fun res!745602 () Bool)

(assert (=> b!1661858 (=> res!745602 e!1065404)))

(declare-fun isEmpty!11382 (BalanceConc!12166) Bool)

(declare-fun lex!1344 (LexerInterface!2860 List!18403 BalanceConc!12164) tuple2!18050)

(declare-fun seqFromList!2202 (List!18402) BalanceConc!12164)

(assert (=> b!1661858 (= res!745602 (isEmpty!11382 (_1!10427 (lex!1344 thiss!17113 rules!1846 (seqFromList!2202 lt!623670)))))))

(declare-fun res!745610 () Bool)

(assert (=> start!160630 (=> (not res!745610) (not e!1065396))))

(assert (=> start!160630 (= res!745610 ((_ is Lexer!2858) thiss!17113))))

(assert (=> start!160630 e!1065396))

(assert (=> start!160630 true))

(assert (=> start!160630 e!1065401))

(assert (=> start!160630 e!1065410))

(declare-fun b!1661874 () Bool)

(declare-fun res!745607 () Bool)

(assert (=> b!1661874 (=> (not res!745607) (not e!1065396))))

(declare-fun rulesInvariant!2529 (LexerInterface!2860 List!18403) Bool)

(assert (=> b!1661874 (= res!745607 (rulesInvariant!2529 thiss!17113 rules!1846))))

(declare-fun b!1661875 () Bool)

(declare-fun e!1065395 () Bool)

(assert (=> b!1661875 (= e!1065395 e!1065399)))

(declare-fun res!745603 () Bool)

(assert (=> b!1661875 (=> res!745603 e!1065399)))

(assert (=> b!1661875 (= res!745603 (or (not (= (_1!10425 lt!623659) (h!23735 tokens!457))) (not (= (_2!10425 lt!623659) lt!623664))))))

(assert (=> b!1661875 (= lt!623659 (get!5362 lt!623654))))

(declare-fun lt!623667 () Unit!30961)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!186 (LexerInterface!2860 List!18403 Token!6028 Rule!6262 List!18402) Unit!30961)

(assert (=> b!1661875 (= lt!623667 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!186 thiss!17113 rules!1846 (h!23735 tokens!457) (rule!5115 (h!23735 tokens!457)) lt!623664))))

(declare-fun b!1661876 () Bool)

(declare-fun e!1065393 () Bool)

(assert (=> b!1661876 (= e!1065393 e!1065395)))

(declare-fun res!745597 () Bool)

(assert (=> b!1661876 (=> res!745597 e!1065395)))

(declare-fun lt!623685 () List!18402)

(declare-fun prefixMatch!476 (Regex!4559 List!18402) Bool)

(declare-fun ++!4984 (List!18402 List!18402) List!18402)

(assert (=> b!1661876 (= res!745597 (prefixMatch!476 lt!623675 (++!4984 (originalCharacters!4045 (h!23735 tokens!457)) lt!623685)))))

(assert (=> b!1661876 e!1065407))

(declare-fun res!745611 () Bool)

(assert (=> b!1661876 (=> (not res!745611) (not e!1065407))))

(declare-fun lt!623672 () tuple2!18046)

(assert (=> b!1661876 (= res!745611 (= (_1!10425 lt!623672) (h!23735 tokens!457)))))

(declare-fun lt!623674 () Option!3511)

(assert (=> b!1661876 (= lt!623672 (get!5362 lt!623674))))

(assert (=> b!1661876 (isDefined!2866 lt!623674)))

(assert (=> b!1661876 (= lt!623674 (maxPrefix!1422 thiss!17113 rules!1846 lt!623670))))

(assert (=> b!1661876 (isDefined!2866 (maxPrefix!1422 thiss!17113 rules!1846 (originalCharacters!4045 (h!23735 tokens!457))))))

(declare-fun b!1661877 () Bool)

(declare-fun res!745615 () Bool)

(assert (=> b!1661877 (=> res!745615 e!1065395)))

(assert (=> b!1661877 (= res!745615 (prefixMatch!476 lt!623675 (++!4984 lt!623670 lt!623685)))))

(declare-fun b!1661878 () Bool)

(declare-fun e!1065394 () Bool)

(assert (=> b!1661878 (= e!1065396 e!1065394)))

(declare-fun res!745596 () Bool)

(assert (=> b!1661878 (=> (not res!745596) (not e!1065394))))

(declare-fun lt!623660 () List!18402)

(assert (=> b!1661878 (= res!745596 (= lt!623668 lt!623660))))

(assert (=> b!1661878 (= lt!623660 (++!4984 lt!623670 lt!623664))))

(declare-fun lt!623657 () BalanceConc!12164)

(assert (=> b!1661878 (= lt!623668 (list!7317 lt!623657))))

(declare-fun lt!623677 () BalanceConc!12164)

(assert (=> b!1661878 (= lt!623664 (list!7317 lt!623677))))

(assert (=> b!1661878 (= lt!623670 (list!7317 lt!623666))))

(assert (=> b!1661878 (= lt!623666 (charsOf!1880 (h!23735 tokens!457)))))

(assert (=> b!1661878 (= lt!623655 (lex!1344 thiss!17113 rules!1846 lt!623677))))

(assert (=> b!1661878 (= lt!623677 (print!1391 thiss!17113 lt!623683))))

(assert (=> b!1661878 (= lt!623683 (seqFromList!2201 (t!151811 tokens!457)))))

(assert (=> b!1661878 (= lt!623657 (print!1391 thiss!17113 (seqFromList!2201 tokens!457)))))

(declare-fun b!1661879 () Bool)

(declare-fun res!745621 () Bool)

(assert (=> b!1661879 (=> res!745621 e!1065404)))

(declare-fun rulesProduceIndividualToken!1508 (LexerInterface!2860 List!18403 Token!6028) Bool)

(assert (=> b!1661879 (= res!745621 (not (rulesProduceIndividualToken!1508 thiss!17113 rules!1846 (h!23735 tokens!457))))))

(declare-fun b!1661880 () Bool)

(assert (=> b!1661880 (= e!1065394 (not e!1065391))))

(declare-fun res!745600 () Bool)

(assert (=> b!1661880 (=> res!745600 e!1065391)))

(assert (=> b!1661880 (= res!745600 (not (= lt!623652 (t!151811 tokens!457))))))

(assert (=> b!1661880 (= lt!623652 (list!7318 (_1!10427 lt!623655)))))

(declare-fun lt!623679 () Unit!30961)

(declare-fun theoremInvertabilityWhenTokenListSeparable!303 (LexerInterface!2860 List!18403 List!18404) Unit!30961)

(assert (=> b!1661880 (= lt!623679 (theoremInvertabilityWhenTokenListSeparable!303 thiss!17113 rules!1846 (t!151811 tokens!457)))))

(declare-fun isPrefix!1489 (List!18402 List!18402) Bool)

(assert (=> b!1661880 (isPrefix!1489 lt!623670 lt!623660)))

(declare-fun lt!623669 () Unit!30961)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1014 (List!18402 List!18402) Unit!30961)

(assert (=> b!1661880 (= lt!623669 (lemmaConcatTwoListThenFirstIsPrefix!1014 lt!623670 lt!623664))))

(declare-fun b!1661881 () Bool)

(declare-fun res!745608 () Bool)

(declare-fun e!1065400 () Bool)

(assert (=> b!1661881 (=> (not res!745608) (not e!1065400))))

(declare-fun lt!623684 () List!18402)

(declare-fun head!3702 (List!18402) C!9292)

(assert (=> b!1661881 (= res!745608 (= lt!623684 (Cons!18332 (head!3702 (originalCharacters!4045 (h!23735 (t!151811 tokens!457)))) Nil!18332)))))

(declare-fun tp!479347 () Bool)

(declare-fun b!1661882 () Bool)

(assert (=> b!1661882 (= e!1065413 (and tp!479347 (inv!23676 (tag!3515 (rule!5115 (h!23735 tokens!457)))) (inv!23679 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) e!1065402))))

(declare-fun b!1661883 () Bool)

(declare-fun res!745616 () Bool)

(assert (=> b!1661883 (=> (not res!745616) (not e!1065396))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!553 (LexerInterface!2860 List!18404 List!18403) Bool)

(assert (=> b!1661883 (= res!745616 (tokensListTwoByTwoPredicateSeparableList!553 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1661884 () Bool)

(assert (=> b!1661884 (= e!1065400 (= lt!623684 (Cons!18332 (head!3702 lt!623664) Nil!18332)))))

(declare-fun b!1661885 () Bool)

(declare-fun e!1065416 () Bool)

(assert (=> b!1661885 (= e!1065415 e!1065416)))

(declare-fun res!745595 () Bool)

(assert (=> b!1661885 (=> res!745595 e!1065416)))

(assert (=> b!1661885 (= res!745595 (prefixMatch!476 lt!623675 (++!4984 lt!623670 lt!623684)))))

(assert (=> b!1661885 (= lt!623684 (list!7317 lt!623682))))

(declare-fun b!1661886 () Bool)

(assert (=> b!1661886 (= e!1065399 e!1065412)))

(declare-fun res!745612 () Bool)

(assert (=> b!1661886 (=> res!745612 e!1065412)))

(assert (=> b!1661886 (= res!745612 (not (= (h!23735 tokens!457) (_1!10426 lt!623661))))))

(declare-datatypes ((Option!3512 0))(
  ( (None!3511) (Some!3511 (v!24730 tuple2!18048)) )
))
(declare-fun get!5363 (Option!3512) tuple2!18048)

(declare-fun maxPrefixZipperSequence!737 (LexerInterface!2860 List!18403 BalanceConc!12164) Option!3512)

(assert (=> b!1661886 (= lt!623661 (get!5363 (maxPrefixZipperSequence!737 thiss!17113 rules!1846 lt!623657)))))

(declare-fun b!1661887 () Bool)

(declare-fun res!745609 () Bool)

(assert (=> b!1661887 (=> (not res!745609) (not e!1065407))))

(declare-fun isEmpty!11383 (List!18402) Bool)

(assert (=> b!1661887 (= res!745609 (isEmpty!11383 (_2!10425 lt!623672)))))

(declare-fun b!1661888 () Bool)

(assert (=> b!1661888 (= e!1065409 e!1065398)))

(declare-fun res!745622 () Bool)

(assert (=> b!1661888 (=> res!745622 e!1065398)))

(declare-fun lt!623656 () BalanceConc!12166)

(assert (=> b!1661888 (= res!745622 (not (= lt!623665 (list!7318 lt!623656))))))

(declare-fun lt!623676 () tuple2!18050)

(assert (=> b!1661888 (= lt!623665 (list!7318 (_1!10427 lt!623676)))))

(assert (=> b!1661888 (= lt!623656 (prepend!809 (_1!10427 lt!623655) (h!23735 tokens!457)))))

(assert (=> b!1661888 (= lt!623676 (lex!1344 thiss!17113 rules!1846 lt!623657))))

(assert (=> b!1661889 (= e!1065414 (and tp!479344 tp!479348))))

(declare-fun b!1661890 () Bool)

(assert (=> b!1661890 (= e!1065416 e!1065393)))

(declare-fun res!745604 () Bool)

(assert (=> b!1661890 (=> res!745604 e!1065393)))

(declare-fun isDefined!2867 (Option!3512) Bool)

(assert (=> b!1661890 (= res!745604 (not (isDefined!2867 (maxPrefixZipperSequence!737 thiss!17113 rules!1846 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))))

(assert (=> b!1661890 (= lt!623684 lt!623685)))

(declare-fun head!3703 (BalanceConc!12164) C!9292)

(assert (=> b!1661890 (= lt!623685 (Cons!18332 (head!3703 lt!623677) Nil!18332))))

(assert (=> b!1661890 e!1065400))

(declare-fun res!745606 () Bool)

(assert (=> b!1661890 (=> (not res!745606) (not e!1065400))))

(assert (=> b!1661890 (= res!745606 (= lt!623670 (originalCharacters!4045 (h!23735 tokens!457))))))

(assert (= (and start!160630 res!745610) b!1661857))

(assert (= (and b!1661857 res!745613) b!1661874))

(assert (= (and b!1661874 res!745607) b!1661856))

(assert (= (and b!1661856 res!745620) b!1661883))

(assert (= (and b!1661883 res!745616) b!1661866))

(assert (= (and b!1661866 res!745617) b!1661878))

(assert (= (and b!1661878 res!745596) b!1661880))

(assert (= (and b!1661880 (not res!745600)) b!1661867))

(assert (= (and b!1661867 (not res!745601)) b!1661865))

(assert (= (and b!1661865 (not res!745618)) b!1661863))

(assert (= (and b!1661863 (not res!745605)) b!1661879))

(assert (= (and b!1661879 (not res!745621)) b!1661858))

(assert (= (and b!1661858 (not res!745602)) b!1661862))

(assert (= (and b!1661862 (not res!745598)) b!1661871))

(assert (= (and b!1661871 (not res!745614)) b!1661885))

(assert (= (and b!1661885 (not res!745595)) b!1661890))

(assert (= (and b!1661890 res!745606) b!1661881))

(assert (= (and b!1661881 res!745608) b!1661884))

(assert (= (and b!1661890 (not res!745604)) b!1661876))

(assert (= (and b!1661876 res!745611) b!1661887))

(assert (= (and b!1661887 res!745609) b!1661870))

(assert (= (and b!1661876 (not res!745597)) b!1661877))

(assert (= (and b!1661877 (not res!745615)) b!1661875))

(assert (= (and b!1661875 (not res!745603)) b!1661859))

(assert (= (and b!1661859 (not res!745619)) b!1661886))

(assert (= (and b!1661886 (not res!745612)) b!1661860))

(assert (= (and b!1661860 (not res!745599)) b!1661888))

(assert (= (and b!1661888 (not res!745622)) b!1661869))

(assert (= b!1661864 b!1661889))

(assert (= b!1661872 b!1661864))

(assert (= (and start!160630 ((_ is Cons!18333) rules!1846)) b!1661872))

(assert (= b!1661882 b!1661868))

(assert (= b!1661861 b!1661882))

(assert (= b!1661873 b!1661861))

(assert (= (and start!160630 ((_ is Cons!18334) tokens!457)) b!1661873))

(declare-fun m!2022239 () Bool)

(assert (=> b!1661865 m!2022239))

(declare-fun m!2022241 () Bool)

(assert (=> b!1661890 m!2022241))

(assert (=> b!1661890 m!2022241))

(declare-fun m!2022243 () Bool)

(assert (=> b!1661890 m!2022243))

(assert (=> b!1661890 m!2022243))

(declare-fun m!2022245 () Bool)

(assert (=> b!1661890 m!2022245))

(declare-fun m!2022247 () Bool)

(assert (=> b!1661890 m!2022247))

(declare-fun m!2022249 () Bool)

(assert (=> b!1661863 m!2022249))

(declare-fun m!2022251 () Bool)

(assert (=> b!1661863 m!2022251))

(declare-fun m!2022253 () Bool)

(assert (=> b!1661863 m!2022253))

(declare-fun m!2022255 () Bool)

(assert (=> b!1661863 m!2022255))

(declare-fun m!2022257 () Bool)

(assert (=> b!1661863 m!2022257))

(declare-fun m!2022259 () Bool)

(assert (=> b!1661863 m!2022259))

(declare-fun m!2022261 () Bool)

(assert (=> b!1661882 m!2022261))

(declare-fun m!2022263 () Bool)

(assert (=> b!1661882 m!2022263))

(declare-fun m!2022265 () Bool)

(assert (=> b!1661864 m!2022265))

(declare-fun m!2022267 () Bool)

(assert (=> b!1661864 m!2022267))

(declare-fun m!2022269 () Bool)

(assert (=> b!1661873 m!2022269))

(declare-fun m!2022271 () Bool)

(assert (=> b!1661856 m!2022271))

(declare-fun m!2022273 () Bool)

(assert (=> b!1661859 m!2022273))

(assert (=> b!1661859 m!2022273))

(declare-fun m!2022275 () Bool)

(assert (=> b!1661859 m!2022275))

(declare-fun m!2022277 () Bool)

(assert (=> b!1661870 m!2022277))

(declare-fun m!2022279 () Bool)

(assert (=> b!1661876 m!2022279))

(declare-fun m!2022281 () Bool)

(assert (=> b!1661876 m!2022281))

(declare-fun m!2022283 () Bool)

(assert (=> b!1661876 m!2022283))

(declare-fun m!2022285 () Bool)

(assert (=> b!1661876 m!2022285))

(declare-fun m!2022287 () Bool)

(assert (=> b!1661876 m!2022287))

(assert (=> b!1661876 m!2022279))

(declare-fun m!2022289 () Bool)

(assert (=> b!1661876 m!2022289))

(declare-fun m!2022291 () Bool)

(assert (=> b!1661876 m!2022291))

(assert (=> b!1661876 m!2022285))

(declare-fun m!2022293 () Bool)

(assert (=> b!1661874 m!2022293))

(declare-fun m!2022295 () Bool)

(assert (=> b!1661881 m!2022295))

(declare-fun m!2022297 () Bool)

(assert (=> b!1661880 m!2022297))

(declare-fun m!2022299 () Bool)

(assert (=> b!1661880 m!2022299))

(declare-fun m!2022301 () Bool)

(assert (=> b!1661880 m!2022301))

(declare-fun m!2022303 () Bool)

(assert (=> b!1661880 m!2022303))

(declare-fun m!2022305 () Bool)

(assert (=> b!1661858 m!2022305))

(assert (=> b!1661858 m!2022305))

(declare-fun m!2022307 () Bool)

(assert (=> b!1661858 m!2022307))

(declare-fun m!2022309 () Bool)

(assert (=> b!1661858 m!2022309))

(declare-fun m!2022311 () Bool)

(assert (=> b!1661887 m!2022311))

(declare-fun m!2022313 () Bool)

(assert (=> b!1661861 m!2022313))

(declare-fun m!2022315 () Bool)

(assert (=> b!1661857 m!2022315))

(declare-fun m!2022317 () Bool)

(assert (=> b!1661871 m!2022317))

(declare-fun m!2022319 () Bool)

(assert (=> b!1661871 m!2022319))

(declare-fun m!2022321 () Bool)

(assert (=> b!1661871 m!2022321))

(declare-fun m!2022323 () Bool)

(assert (=> b!1661871 m!2022323))

(assert (=> b!1661871 m!2022323))

(declare-fun m!2022325 () Bool)

(assert (=> b!1661871 m!2022325))

(declare-fun m!2022327 () Bool)

(assert (=> b!1661871 m!2022327))

(assert (=> b!1661871 m!2022319))

(assert (=> b!1661871 m!2022327))

(declare-fun m!2022329 () Bool)

(assert (=> b!1661867 m!2022329))

(declare-fun m!2022331 () Bool)

(assert (=> b!1661867 m!2022331))

(declare-fun m!2022333 () Bool)

(assert (=> b!1661867 m!2022333))

(declare-fun m!2022335 () Bool)

(assert (=> b!1661867 m!2022335))

(declare-fun m!2022337 () Bool)

(assert (=> b!1661867 m!2022337))

(assert (=> b!1661867 m!2022331))

(declare-fun m!2022339 () Bool)

(assert (=> b!1661875 m!2022339))

(declare-fun m!2022341 () Bool)

(assert (=> b!1661875 m!2022341))

(declare-fun m!2022343 () Bool)

(assert (=> b!1661885 m!2022343))

(assert (=> b!1661885 m!2022343))

(declare-fun m!2022345 () Bool)

(assert (=> b!1661885 m!2022345))

(declare-fun m!2022347 () Bool)

(assert (=> b!1661885 m!2022347))

(declare-fun m!2022349 () Bool)

(assert (=> b!1661869 m!2022349))

(assert (=> b!1661869 m!2022349))

(declare-fun m!2022351 () Bool)

(assert (=> b!1661869 m!2022351))

(declare-fun m!2022353 () Bool)

(assert (=> b!1661878 m!2022353))

(declare-fun m!2022355 () Bool)

(assert (=> b!1661878 m!2022355))

(declare-fun m!2022357 () Bool)

(assert (=> b!1661878 m!2022357))

(declare-fun m!2022359 () Bool)

(assert (=> b!1661878 m!2022359))

(declare-fun m!2022361 () Bool)

(assert (=> b!1661878 m!2022361))

(declare-fun m!2022363 () Bool)

(assert (=> b!1661878 m!2022363))

(declare-fun m!2022365 () Bool)

(assert (=> b!1661878 m!2022365))

(assert (=> b!1661878 m!2022359))

(declare-fun m!2022367 () Bool)

(assert (=> b!1661878 m!2022367))

(declare-fun m!2022369 () Bool)

(assert (=> b!1661878 m!2022369))

(declare-fun m!2022371 () Bool)

(assert (=> b!1661878 m!2022371))

(declare-fun m!2022373 () Bool)

(assert (=> b!1661888 m!2022373))

(declare-fun m!2022375 () Bool)

(assert (=> b!1661888 m!2022375))

(declare-fun m!2022377 () Bool)

(assert (=> b!1661888 m!2022377))

(declare-fun m!2022379 () Bool)

(assert (=> b!1661888 m!2022379))

(declare-fun m!2022381 () Bool)

(assert (=> b!1661883 m!2022381))

(declare-fun m!2022383 () Bool)

(assert (=> b!1661877 m!2022383))

(assert (=> b!1661877 m!2022383))

(declare-fun m!2022385 () Bool)

(assert (=> b!1661877 m!2022385))

(declare-fun m!2022387 () Bool)

(assert (=> b!1661884 m!2022387))

(declare-fun m!2022389 () Bool)

(assert (=> b!1661862 m!2022389))

(declare-fun m!2022391 () Bool)

(assert (=> b!1661862 m!2022391))

(declare-fun m!2022393 () Bool)

(assert (=> b!1661860 m!2022393))

(declare-fun m!2022395 () Bool)

(assert (=> b!1661886 m!2022395))

(assert (=> b!1661886 m!2022395))

(declare-fun m!2022397 () Bool)

(assert (=> b!1661886 m!2022397))

(declare-fun m!2022399 () Bool)

(assert (=> b!1661879 m!2022399))

(check-sat (not b!1661885) (not b!1661876) b_and!118011 (not b!1661856) (not b!1661882) (not b!1661886) (not b!1661875) (not b!1661865) (not b!1661877) (not b!1661874) (not b!1661881) (not b!1661858) (not b!1661862) (not b!1661878) (not b_next!45847) (not b_next!45849) (not b!1661867) (not b!1661888) b_and!118005 (not b!1661872) b_and!118009 (not b!1661883) (not b!1661860) (not b!1661879) (not b!1661869) (not b!1661890) (not b!1661863) (not b!1661880) (not b!1661873) (not b!1661857) (not b!1661859) b_and!118007 (not b_next!45851) (not b!1661871) (not b_next!45853) (not b!1661864) (not b!1661884) (not b!1661870) (not b!1661861) (not b!1661887))
(check-sat (not b_next!45847) (not b_next!45849) b_and!118005 b_and!118009 b_and!118011 (not b_next!45853) b_and!118007 (not b_next!45851))
(get-model)

(declare-fun b!1661934 () Bool)

(declare-fun e!1065449 () Bool)

(assert (=> b!1661934 (= e!1065449 true)))

(declare-fun b!1661933 () Bool)

(declare-fun e!1065448 () Bool)

(assert (=> b!1661933 (= e!1065448 e!1065449)))

(declare-fun b!1661932 () Bool)

(declare-fun e!1065447 () Bool)

(assert (=> b!1661932 (= e!1065447 e!1065448)))

(declare-fun d!501960 () Bool)

(assert (=> d!501960 e!1065447))

(assert (= b!1661933 b!1661934))

(assert (= b!1661932 b!1661933))

(assert (= (and d!501960 ((_ is Cons!18333) rules!1846)) b!1661932))

(declare-fun order!10967 () Int)

(declare-fun order!10965 () Int)

(declare-fun lambda!67869 () Int)

(declare-fun dynLambda!8234 (Int Int) Int)

(declare-fun dynLambda!8235 (Int Int) Int)

(assert (=> b!1661934 (< (dynLambda!8234 order!10965 (toValue!4686 (transformation!3231 (h!23734 rules!1846)))) (dynLambda!8235 order!10967 lambda!67869))))

(declare-fun order!10969 () Int)

(declare-fun dynLambda!8236 (Int Int) Int)

(assert (=> b!1661934 (< (dynLambda!8236 order!10969 (toChars!4545 (transformation!3231 (h!23734 rules!1846)))) (dynLambda!8235 order!10967 lambda!67869))))

(assert (=> d!501960 true))

(declare-fun lt!623716 () Bool)

(declare-fun forall!4167 (List!18404 Int) Bool)

(assert (=> d!501960 (= lt!623716 (forall!4167 tokens!457 lambda!67869))))

(declare-fun e!1065440 () Bool)

(assert (=> d!501960 (= lt!623716 e!1065440)))

(declare-fun res!745652 () Bool)

(assert (=> d!501960 (=> res!745652 e!1065440)))

(assert (=> d!501960 (= res!745652 (not ((_ is Cons!18334) tokens!457)))))

(assert (=> d!501960 (not (isEmpty!11381 rules!1846))))

(assert (=> d!501960 (= (rulesProduceEachTokenIndividuallyList!1062 thiss!17113 rules!1846 tokens!457) lt!623716)))

(declare-fun b!1661922 () Bool)

(declare-fun e!1065439 () Bool)

(assert (=> b!1661922 (= e!1065440 e!1065439)))

(declare-fun res!745651 () Bool)

(assert (=> b!1661922 (=> (not res!745651) (not e!1065439))))

(assert (=> b!1661922 (= res!745651 (rulesProduceIndividualToken!1508 thiss!17113 rules!1846 (h!23735 tokens!457)))))

(declare-fun b!1661923 () Bool)

(assert (=> b!1661923 (= e!1065439 (rulesProduceEachTokenIndividuallyList!1062 thiss!17113 rules!1846 (t!151811 tokens!457)))))

(assert (= (and d!501960 (not res!745652)) b!1661922))

(assert (= (and b!1661922 res!745651) b!1661923))

(declare-fun m!2022449 () Bool)

(assert (=> d!501960 m!2022449))

(assert (=> d!501960 m!2022315))

(assert (=> b!1661922 m!2022399))

(declare-fun m!2022451 () Bool)

(assert (=> b!1661923 m!2022451))

(assert (=> b!1661856 d!501960))

(declare-fun d!501980 () Bool)

(assert (=> d!501980 (= (isEmpty!11381 rules!1846) ((_ is Nil!18333) rules!1846))))

(assert (=> b!1661857 d!501980))

(declare-fun d!501982 () Bool)

(declare-fun list!7320 (Conc!6110) List!18402)

(assert (=> d!501982 (= (list!7317 lt!623666) (list!7320 (c!270503 lt!623666)))))

(declare-fun bs!397320 () Bool)

(assert (= bs!397320 d!501982))

(declare-fun m!2022453 () Bool)

(assert (=> bs!397320 m!2022453))

(assert (=> b!1661878 d!501982))

(declare-fun d!501984 () Bool)

(assert (=> d!501984 (= (list!7317 lt!623677) (list!7320 (c!270503 lt!623677)))))

(declare-fun bs!397321 () Bool)

(assert (= bs!397321 d!501984))

(declare-fun m!2022455 () Bool)

(assert (=> bs!397321 m!2022455))

(assert (=> b!1661878 d!501984))

(declare-fun d!501986 () Bool)

(assert (=> d!501986 (= (list!7317 lt!623657) (list!7320 (c!270503 lt!623657)))))

(declare-fun bs!397322 () Bool)

(assert (= bs!397322 d!501986))

(declare-fun m!2022457 () Bool)

(assert (=> bs!397322 m!2022457))

(assert (=> b!1661878 d!501986))

(declare-fun b!1661948 () Bool)

(declare-fun e!1065458 () Bool)

(declare-fun lt!623719 () tuple2!18050)

(assert (=> b!1661948 (= e!1065458 (not (isEmpty!11382 (_1!10427 lt!623719))))))

(declare-fun b!1661949 () Bool)

(declare-fun e!1065456 () Bool)

(assert (=> b!1661949 (= e!1065456 e!1065458)))

(declare-fun res!745659 () Bool)

(declare-fun size!14583 (BalanceConc!12164) Int)

(assert (=> b!1661949 (= res!745659 (< (size!14583 (_2!10427 lt!623719)) (size!14583 lt!623677)))))

(assert (=> b!1661949 (=> (not res!745659) (not e!1065458))))

(declare-fun b!1661950 () Bool)

(declare-fun res!745661 () Bool)

(declare-fun e!1065457 () Bool)

(assert (=> b!1661950 (=> (not res!745661) (not e!1065457))))

(declare-datatypes ((tuple2!18052 0))(
  ( (tuple2!18053 (_1!10428 List!18404) (_2!10428 List!18402)) )
))
(declare-fun lexList!884 (LexerInterface!2860 List!18403 List!18402) tuple2!18052)

(assert (=> b!1661950 (= res!745661 (= (list!7318 (_1!10427 lt!623719)) (_1!10428 (lexList!884 thiss!17113 rules!1846 (list!7317 lt!623677)))))))

(declare-fun b!1661951 () Bool)

(assert (=> b!1661951 (= e!1065457 (= (list!7317 (_2!10427 lt!623719)) (_2!10428 (lexList!884 thiss!17113 rules!1846 (list!7317 lt!623677)))))))

(declare-fun b!1661947 () Bool)

(assert (=> b!1661947 (= e!1065456 (= (_2!10427 lt!623719) lt!623677))))

(declare-fun d!501988 () Bool)

(assert (=> d!501988 e!1065457))

(declare-fun res!745660 () Bool)

(assert (=> d!501988 (=> (not res!745660) (not e!1065457))))

(assert (=> d!501988 (= res!745660 e!1065456)))

(declare-fun c!270515 () Bool)

(declare-fun size!14584 (BalanceConc!12166) Int)

(assert (=> d!501988 (= c!270515 (> (size!14584 (_1!10427 lt!623719)) 0))))

(declare-fun lexTailRecV2!607 (LexerInterface!2860 List!18403 BalanceConc!12164 BalanceConc!12164 BalanceConc!12164 BalanceConc!12166) tuple2!18050)

(assert (=> d!501988 (= lt!623719 (lexTailRecV2!607 thiss!17113 rules!1846 lt!623677 (BalanceConc!12165 Empty!6110) lt!623677 (BalanceConc!12167 Empty!6111)))))

(assert (=> d!501988 (= (lex!1344 thiss!17113 rules!1846 lt!623677) lt!623719)))

(assert (= (and d!501988 c!270515) b!1661949))

(assert (= (and d!501988 (not c!270515)) b!1661947))

(assert (= (and b!1661949 res!745659) b!1661948))

(assert (= (and d!501988 res!745660) b!1661950))

(assert (= (and b!1661950 res!745661) b!1661951))

(declare-fun m!2022459 () Bool)

(assert (=> b!1661949 m!2022459))

(declare-fun m!2022461 () Bool)

(assert (=> b!1661949 m!2022461))

(declare-fun m!2022463 () Bool)

(assert (=> b!1661951 m!2022463))

(assert (=> b!1661951 m!2022363))

(assert (=> b!1661951 m!2022363))

(declare-fun m!2022465 () Bool)

(assert (=> b!1661951 m!2022465))

(declare-fun m!2022467 () Bool)

(assert (=> b!1661948 m!2022467))

(declare-fun m!2022469 () Bool)

(assert (=> d!501988 m!2022469))

(declare-fun m!2022471 () Bool)

(assert (=> d!501988 m!2022471))

(declare-fun m!2022473 () Bool)

(assert (=> b!1661950 m!2022473))

(assert (=> b!1661950 m!2022363))

(assert (=> b!1661950 m!2022363))

(assert (=> b!1661950 m!2022465))

(assert (=> b!1661878 d!501988))

(declare-fun d!501990 () Bool)

(declare-fun lt!623722 () BalanceConc!12164)

(assert (=> d!501990 (= (list!7317 lt!623722) (printList!973 thiss!17113 (list!7318 lt!623683)))))

(assert (=> d!501990 (= lt!623722 (printTailRec!911 thiss!17113 lt!623683 0 (BalanceConc!12165 Empty!6110)))))

(assert (=> d!501990 (= (print!1391 thiss!17113 lt!623683) lt!623722)))

(declare-fun bs!397323 () Bool)

(assert (= bs!397323 d!501990))

(declare-fun m!2022475 () Bool)

(assert (=> bs!397323 m!2022475))

(assert (=> bs!397323 m!2022335))

(assert (=> bs!397323 m!2022335))

(declare-fun m!2022477 () Bool)

(assert (=> bs!397323 m!2022477))

(declare-fun m!2022479 () Bool)

(assert (=> bs!397323 m!2022479))

(assert (=> b!1661878 d!501990))

(declare-fun d!501992 () Bool)

(declare-fun fromListB!992 (List!18404) BalanceConc!12166)

(assert (=> d!501992 (= (seqFromList!2201 tokens!457) (fromListB!992 tokens!457))))

(declare-fun bs!397324 () Bool)

(assert (= bs!397324 d!501992))

(declare-fun m!2022481 () Bool)

(assert (=> bs!397324 m!2022481))

(assert (=> b!1661878 d!501992))

(declare-fun d!501994 () Bool)

(declare-fun lt!623725 () BalanceConc!12164)

(assert (=> d!501994 (= (list!7317 lt!623725) (originalCharacters!4045 (h!23735 tokens!457)))))

(declare-fun dynLambda!8237 (Int TokenValue!3321) BalanceConc!12164)

(assert (=> d!501994 (= lt!623725 (dynLambda!8237 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (value!101756 (h!23735 tokens!457))))))

(assert (=> d!501994 (= (charsOf!1880 (h!23735 tokens!457)) lt!623725)))

(declare-fun b_lambda!52165 () Bool)

(assert (=> (not b_lambda!52165) (not d!501994)))

(declare-fun t!151815 () Bool)

(declare-fun tb!95239 () Bool)

(assert (=> (and b!1661889 (= (toChars!4545 (transformation!3231 (h!23734 rules!1846))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457))))) t!151815) tb!95239))

(declare-fun b!1661956 () Bool)

(declare-fun e!1065461 () Bool)

(declare-fun tp!479353 () Bool)

(declare-fun inv!23681 (Conc!6110) Bool)

(assert (=> b!1661956 (= e!1065461 (and (inv!23681 (c!270503 (dynLambda!8237 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (value!101756 (h!23735 tokens!457))))) tp!479353))))

(declare-fun result!115066 () Bool)

(declare-fun inv!23682 (BalanceConc!12164) Bool)

(assert (=> tb!95239 (= result!115066 (and (inv!23682 (dynLambda!8237 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (value!101756 (h!23735 tokens!457)))) e!1065461))))

(assert (= tb!95239 b!1661956))

(declare-fun m!2022483 () Bool)

(assert (=> b!1661956 m!2022483))

(declare-fun m!2022485 () Bool)

(assert (=> tb!95239 m!2022485))

(assert (=> d!501994 t!151815))

(declare-fun b_and!118013 () Bool)

(assert (= b_and!118007 (and (=> t!151815 result!115066) b_and!118013)))

(declare-fun t!151817 () Bool)

(declare-fun tb!95241 () Bool)

(assert (=> (and b!1661868 (= (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457))))) t!151817) tb!95241))

(declare-fun result!115070 () Bool)

(assert (= result!115070 result!115066))

(assert (=> d!501994 t!151817))

(declare-fun b_and!118015 () Bool)

(assert (= b_and!118011 (and (=> t!151817 result!115070) b_and!118015)))

(declare-fun m!2022487 () Bool)

(assert (=> d!501994 m!2022487))

(declare-fun m!2022489 () Bool)

(assert (=> d!501994 m!2022489))

(assert (=> b!1661878 d!501994))

(declare-fun d!501996 () Bool)

(assert (=> d!501996 (= (seqFromList!2201 (t!151811 tokens!457)) (fromListB!992 (t!151811 tokens!457)))))

(declare-fun bs!397325 () Bool)

(assert (= bs!397325 d!501996))

(declare-fun m!2022491 () Bool)

(assert (=> bs!397325 m!2022491))

(assert (=> b!1661878 d!501996))

(declare-fun d!501998 () Bool)

(declare-fun lt!623726 () BalanceConc!12164)

(assert (=> d!501998 (= (list!7317 lt!623726) (printList!973 thiss!17113 (list!7318 (seqFromList!2201 tokens!457))))))

(assert (=> d!501998 (= lt!623726 (printTailRec!911 thiss!17113 (seqFromList!2201 tokens!457) 0 (BalanceConc!12165 Empty!6110)))))

(assert (=> d!501998 (= (print!1391 thiss!17113 (seqFromList!2201 tokens!457)) lt!623726)))

(declare-fun bs!397326 () Bool)

(assert (= bs!397326 d!501998))

(declare-fun m!2022493 () Bool)

(assert (=> bs!397326 m!2022493))

(assert (=> bs!397326 m!2022359))

(declare-fun m!2022495 () Bool)

(assert (=> bs!397326 m!2022495))

(assert (=> bs!397326 m!2022495))

(declare-fun m!2022497 () Bool)

(assert (=> bs!397326 m!2022497))

(assert (=> bs!397326 m!2022359))

(declare-fun m!2022499 () Bool)

(assert (=> bs!397326 m!2022499))

(assert (=> b!1661878 d!501998))

(declare-fun b!1661968 () Bool)

(declare-fun e!1065466 () Bool)

(declare-fun lt!623729 () List!18402)

(assert (=> b!1661968 (= e!1065466 (or (not (= lt!623664 Nil!18332)) (= lt!623729 lt!623670)))))

(declare-fun b!1661967 () Bool)

(declare-fun res!745666 () Bool)

(assert (=> b!1661967 (=> (not res!745666) (not e!1065466))))

(declare-fun size!14585 (List!18402) Int)

(assert (=> b!1661967 (= res!745666 (= (size!14585 lt!623729) (+ (size!14585 lt!623670) (size!14585 lt!623664))))))

(declare-fun b!1661966 () Bool)

(declare-fun e!1065467 () List!18402)

(assert (=> b!1661966 (= e!1065467 (Cons!18332 (h!23733 lt!623670) (++!4984 (t!151809 lt!623670) lt!623664)))))

(declare-fun b!1661965 () Bool)

(assert (=> b!1661965 (= e!1065467 lt!623664)))

(declare-fun d!502000 () Bool)

(assert (=> d!502000 e!1065466))

(declare-fun res!745667 () Bool)

(assert (=> d!502000 (=> (not res!745667) (not e!1065466))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2555 (List!18402) (InoxSet C!9292))

(assert (=> d!502000 (= res!745667 (= (content!2555 lt!623729) ((_ map or) (content!2555 lt!623670) (content!2555 lt!623664))))))

(assert (=> d!502000 (= lt!623729 e!1065467)))

(declare-fun c!270518 () Bool)

(assert (=> d!502000 (= c!270518 ((_ is Nil!18332) lt!623670))))

(assert (=> d!502000 (= (++!4984 lt!623670 lt!623664) lt!623729)))

(assert (= (and d!502000 c!270518) b!1661965))

(assert (= (and d!502000 (not c!270518)) b!1661966))

(assert (= (and d!502000 res!745667) b!1661967))

(assert (= (and b!1661967 res!745666) b!1661968))

(declare-fun m!2022501 () Bool)

(assert (=> b!1661967 m!2022501))

(declare-fun m!2022503 () Bool)

(assert (=> b!1661967 m!2022503))

(declare-fun m!2022505 () Bool)

(assert (=> b!1661967 m!2022505))

(declare-fun m!2022507 () Bool)

(assert (=> b!1661966 m!2022507))

(declare-fun m!2022509 () Bool)

(assert (=> d!502000 m!2022509))

(declare-fun m!2022511 () Bool)

(assert (=> d!502000 m!2022511))

(declare-fun m!2022513 () Bool)

(assert (=> d!502000 m!2022513))

(assert (=> b!1661878 d!502000))

(declare-fun d!502002 () Bool)

(declare-fun lt!623734 () Bool)

(declare-fun e!1065473 () Bool)

(assert (=> d!502002 (= lt!623734 e!1065473)))

(declare-fun res!745675 () Bool)

(assert (=> d!502002 (=> (not res!745675) (not e!1065473))))

(assert (=> d!502002 (= res!745675 (= (list!7318 (_1!10427 (lex!1344 thiss!17113 rules!1846 (print!1391 thiss!17113 (singletonSeq!1734 (h!23735 tokens!457)))))) (list!7318 (singletonSeq!1734 (h!23735 tokens!457)))))))

(declare-fun e!1065472 () Bool)

(assert (=> d!502002 (= lt!623734 e!1065472)))

(declare-fun res!745674 () Bool)

(assert (=> d!502002 (=> (not res!745674) (not e!1065472))))

(declare-fun lt!623735 () tuple2!18050)

(assert (=> d!502002 (= res!745674 (= (size!14584 (_1!10427 lt!623735)) 1))))

(assert (=> d!502002 (= lt!623735 (lex!1344 thiss!17113 rules!1846 (print!1391 thiss!17113 (singletonSeq!1734 (h!23735 tokens!457)))))))

(assert (=> d!502002 (not (isEmpty!11381 rules!1846))))

(assert (=> d!502002 (= (rulesProduceIndividualToken!1508 thiss!17113 rules!1846 (h!23735 tokens!457)) lt!623734)))

(declare-fun b!1661975 () Bool)

(declare-fun res!745676 () Bool)

(assert (=> b!1661975 (=> (not res!745676) (not e!1065472))))

(declare-fun apply!4898 (BalanceConc!12166 Int) Token!6028)

(assert (=> b!1661975 (= res!745676 (= (apply!4898 (_1!10427 lt!623735) 0) (h!23735 tokens!457)))))

(declare-fun b!1661976 () Bool)

(declare-fun isEmpty!11384 (BalanceConc!12164) Bool)

(assert (=> b!1661976 (= e!1065472 (isEmpty!11384 (_2!10427 lt!623735)))))

(declare-fun b!1661977 () Bool)

(assert (=> b!1661977 (= e!1065473 (isEmpty!11384 (_2!10427 (lex!1344 thiss!17113 rules!1846 (print!1391 thiss!17113 (singletonSeq!1734 (h!23735 tokens!457)))))))))

(assert (= (and d!502002 res!745674) b!1661975))

(assert (= (and b!1661975 res!745676) b!1661976))

(assert (= (and d!502002 res!745675) b!1661977))

(assert (=> d!502002 m!2022257))

(assert (=> d!502002 m!2022257))

(declare-fun m!2022515 () Bool)

(assert (=> d!502002 m!2022515))

(assert (=> d!502002 m!2022257))

(declare-fun m!2022517 () Bool)

(assert (=> d!502002 m!2022517))

(assert (=> d!502002 m!2022517))

(declare-fun m!2022519 () Bool)

(assert (=> d!502002 m!2022519))

(assert (=> d!502002 m!2022315))

(declare-fun m!2022521 () Bool)

(assert (=> d!502002 m!2022521))

(declare-fun m!2022523 () Bool)

(assert (=> d!502002 m!2022523))

(declare-fun m!2022525 () Bool)

(assert (=> b!1661975 m!2022525))

(declare-fun m!2022527 () Bool)

(assert (=> b!1661976 m!2022527))

(assert (=> b!1661977 m!2022257))

(assert (=> b!1661977 m!2022257))

(assert (=> b!1661977 m!2022517))

(assert (=> b!1661977 m!2022517))

(assert (=> b!1661977 m!2022519))

(declare-fun m!2022529 () Bool)

(assert (=> b!1661977 m!2022529))

(assert (=> b!1661879 d!502002))

(declare-fun d!502004 () Bool)

(declare-fun lt!623738 () Bool)

(declare-fun isEmpty!11385 (List!18404) Bool)

(assert (=> d!502004 (= lt!623738 (isEmpty!11385 (list!7318 (_1!10427 (lex!1344 thiss!17113 rules!1846 (seqFromList!2202 lt!623670))))))))

(declare-fun isEmpty!11386 (Conc!6111) Bool)

(assert (=> d!502004 (= lt!623738 (isEmpty!11386 (c!270505 (_1!10427 (lex!1344 thiss!17113 rules!1846 (seqFromList!2202 lt!623670))))))))

(assert (=> d!502004 (= (isEmpty!11382 (_1!10427 (lex!1344 thiss!17113 rules!1846 (seqFromList!2202 lt!623670)))) lt!623738)))

(declare-fun bs!397327 () Bool)

(assert (= bs!397327 d!502004))

(declare-fun m!2022531 () Bool)

(assert (=> bs!397327 m!2022531))

(assert (=> bs!397327 m!2022531))

(declare-fun m!2022533 () Bool)

(assert (=> bs!397327 m!2022533))

(declare-fun m!2022535 () Bool)

(assert (=> bs!397327 m!2022535))

(assert (=> b!1661858 d!502004))

(declare-fun b!1661979 () Bool)

(declare-fun e!1065476 () Bool)

(declare-fun lt!623739 () tuple2!18050)

(assert (=> b!1661979 (= e!1065476 (not (isEmpty!11382 (_1!10427 lt!623739))))))

(declare-fun b!1661980 () Bool)

(declare-fun e!1065474 () Bool)

(assert (=> b!1661980 (= e!1065474 e!1065476)))

(declare-fun res!745677 () Bool)

(assert (=> b!1661980 (= res!745677 (< (size!14583 (_2!10427 lt!623739)) (size!14583 (seqFromList!2202 lt!623670))))))

(assert (=> b!1661980 (=> (not res!745677) (not e!1065476))))

(declare-fun b!1661981 () Bool)

(declare-fun res!745679 () Bool)

(declare-fun e!1065475 () Bool)

(assert (=> b!1661981 (=> (not res!745679) (not e!1065475))))

(assert (=> b!1661981 (= res!745679 (= (list!7318 (_1!10427 lt!623739)) (_1!10428 (lexList!884 thiss!17113 rules!1846 (list!7317 (seqFromList!2202 lt!623670))))))))

(declare-fun b!1661982 () Bool)

(assert (=> b!1661982 (= e!1065475 (= (list!7317 (_2!10427 lt!623739)) (_2!10428 (lexList!884 thiss!17113 rules!1846 (list!7317 (seqFromList!2202 lt!623670))))))))

(declare-fun b!1661978 () Bool)

(assert (=> b!1661978 (= e!1065474 (= (_2!10427 lt!623739) (seqFromList!2202 lt!623670)))))

(declare-fun d!502006 () Bool)

(assert (=> d!502006 e!1065475))

(declare-fun res!745678 () Bool)

(assert (=> d!502006 (=> (not res!745678) (not e!1065475))))

(assert (=> d!502006 (= res!745678 e!1065474)))

(declare-fun c!270519 () Bool)

(assert (=> d!502006 (= c!270519 (> (size!14584 (_1!10427 lt!623739)) 0))))

(assert (=> d!502006 (= lt!623739 (lexTailRecV2!607 thiss!17113 rules!1846 (seqFromList!2202 lt!623670) (BalanceConc!12165 Empty!6110) (seqFromList!2202 lt!623670) (BalanceConc!12167 Empty!6111)))))

(assert (=> d!502006 (= (lex!1344 thiss!17113 rules!1846 (seqFromList!2202 lt!623670)) lt!623739)))

(assert (= (and d!502006 c!270519) b!1661980))

(assert (= (and d!502006 (not c!270519)) b!1661978))

(assert (= (and b!1661980 res!745677) b!1661979))

(assert (= (and d!502006 res!745678) b!1661981))

(assert (= (and b!1661981 res!745679) b!1661982))

(declare-fun m!2022537 () Bool)

(assert (=> b!1661980 m!2022537))

(assert (=> b!1661980 m!2022305))

(declare-fun m!2022539 () Bool)

(assert (=> b!1661980 m!2022539))

(declare-fun m!2022541 () Bool)

(assert (=> b!1661982 m!2022541))

(assert (=> b!1661982 m!2022305))

(declare-fun m!2022543 () Bool)

(assert (=> b!1661982 m!2022543))

(assert (=> b!1661982 m!2022543))

(declare-fun m!2022545 () Bool)

(assert (=> b!1661982 m!2022545))

(declare-fun m!2022547 () Bool)

(assert (=> b!1661979 m!2022547))

(declare-fun m!2022549 () Bool)

(assert (=> d!502006 m!2022549))

(assert (=> d!502006 m!2022305))

(assert (=> d!502006 m!2022305))

(declare-fun m!2022551 () Bool)

(assert (=> d!502006 m!2022551))

(declare-fun m!2022553 () Bool)

(assert (=> b!1661981 m!2022553))

(assert (=> b!1661981 m!2022305))

(assert (=> b!1661981 m!2022543))

(assert (=> b!1661981 m!2022543))

(assert (=> b!1661981 m!2022545))

(assert (=> b!1661858 d!502006))

(declare-fun d!502008 () Bool)

(declare-fun fromListB!993 (List!18402) BalanceConc!12164)

(assert (=> d!502008 (= (seqFromList!2202 lt!623670) (fromListB!993 lt!623670))))

(declare-fun bs!397328 () Bool)

(assert (= bs!397328 d!502008))

(declare-fun m!2022555 () Bool)

(assert (=> bs!397328 m!2022555))

(assert (=> b!1661858 d!502008))

(declare-fun d!502010 () Bool)

(assert (=> d!502010 (= (get!5362 lt!623654) (v!24729 lt!623654))))

(assert (=> b!1661875 d!502010))

(declare-fun b!1662148 () Bool)

(declare-fun e!1065565 () Unit!30961)

(declare-fun Unit!30979 () Unit!30961)

(assert (=> b!1662148 (= e!1065565 Unit!30979)))

(declare-fun d!502012 () Bool)

(assert (=> d!502012 (= (maxPrefix!1422 thiss!17113 rules!1846 (++!4984 (list!7317 (charsOf!1880 (h!23735 tokens!457))) lt!623664)) (Some!3510 (tuple2!18047 (h!23735 tokens!457) lt!623664)))))

(declare-fun lt!624252 () Unit!30961)

(declare-fun Unit!30980 () Unit!30961)

(assert (=> d!502012 (= lt!624252 Unit!30980)))

(declare-fun lt!624238 () Unit!30961)

(declare-fun e!1065561 () Unit!30961)

(assert (=> d!502012 (= lt!624238 e!1065561)))

(declare-fun c!270572 () Bool)

(declare-fun lt!624220 () Token!6028)

(assert (=> d!502012 (= c!270572 (not (= (rule!5115 lt!624220) (rule!5115 (h!23735 tokens!457)))))))

(declare-fun lt!624263 () Unit!30961)

(declare-fun lt!624235 () Unit!30961)

(assert (=> d!502012 (= lt!624263 lt!624235)))

(declare-fun lt!624224 () List!18402)

(assert (=> d!502012 (= lt!623664 lt!624224)))

(declare-fun lt!624210 () List!18402)

(declare-fun lemmaSamePrefixThenSameSuffix!690 (List!18402 List!18402 List!18402 List!18402 List!18402) Unit!30961)

(assert (=> d!502012 (= lt!624235 (lemmaSamePrefixThenSameSuffix!690 (list!7317 (charsOf!1880 (h!23735 tokens!457))) lt!623664 (list!7317 (charsOf!1880 (h!23735 tokens!457))) lt!624224 lt!624210))))

(declare-fun lt!624264 () Unit!30961)

(declare-fun lt!624250 () Unit!30961)

(assert (=> d!502012 (= lt!624264 lt!624250)))

(declare-fun lt!624244 () List!18402)

(declare-fun lt!624228 () List!18402)

(assert (=> d!502012 (= lt!624244 lt!624228)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!191 (List!18402 List!18402 List!18402) Unit!30961)

(assert (=> d!502012 (= lt!624250 (lemmaIsPrefixSameLengthThenSameList!191 lt!624244 lt!624228 lt!624210))))

(assert (=> d!502012 (= lt!624228 (list!7317 (charsOf!1880 (h!23735 tokens!457))))))

(assert (=> d!502012 (= lt!624244 (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun lt!624205 () Unit!30961)

(declare-fun e!1065559 () Unit!30961)

(assert (=> d!502012 (= lt!624205 e!1065559)))

(declare-fun c!270569 () Bool)

(assert (=> d!502012 (= c!270569 (< (size!14583 (charsOf!1880 lt!624220)) (size!14583 (charsOf!1880 (h!23735 tokens!457)))))))

(declare-fun lt!624236 () Unit!30961)

(assert (=> d!502012 (= lt!624236 e!1065565)))

(declare-fun c!270567 () Bool)

(assert (=> d!502012 (= c!270567 (> (size!14583 (charsOf!1880 lt!624220)) (size!14583 (charsOf!1880 (h!23735 tokens!457)))))))

(declare-fun lt!624234 () Unit!30961)

(declare-fun lt!624229 () Unit!30961)

(assert (=> d!502012 (= lt!624234 lt!624229)))

(assert (=> d!502012 (matchR!2052 (rulesRegex!615 thiss!17113 rules!1846) (list!7317 (charsOf!1880 (h!23735 tokens!457))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!68 (LexerInterface!2860 List!18403 List!18402 Token!6028 Rule!6262 List!18402) Unit!30961)

(assert (=> d!502012 (= lt!624229 (lemmaMaxPrefixThenMatchesRulesRegex!68 thiss!17113 rules!1846 (list!7317 (charsOf!1880 (h!23735 tokens!457))) (h!23735 tokens!457) (rule!5115 (h!23735 tokens!457)) Nil!18332))))

(declare-fun lt!624223 () Unit!30961)

(declare-fun lt!624201 () Unit!30961)

(assert (=> d!502012 (= lt!624223 lt!624201)))

(declare-fun lt!624247 () List!18402)

(assert (=> d!502012 (= lt!624224 lt!624247)))

(declare-fun lt!624251 () List!18402)

(declare-fun lt!624269 () List!18402)

(assert (=> d!502012 (= lt!624201 (lemmaSamePrefixThenSameSuffix!690 lt!624251 lt!624224 lt!624269 lt!624247 lt!624210))))

(declare-fun getSuffix!738 (List!18402 List!18402) List!18402)

(assert (=> d!502012 (= lt!624247 (getSuffix!738 lt!624210 (list!7317 (charsOf!1880 lt!624220))))))

(assert (=> d!502012 (= lt!624269 (list!7317 (charsOf!1880 lt!624220)))))

(assert (=> d!502012 (= lt!624251 (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun lt!624206 () Unit!30961)

(declare-fun lt!624221 () Unit!30961)

(assert (=> d!502012 (= lt!624206 lt!624221)))

(declare-fun lt!624246 () List!18402)

(declare-fun maxPrefixOneRule!825 (LexerInterface!2860 Rule!6262 List!18402) Option!3511)

(declare-fun apply!4899 (TokenValueInjection!6302 BalanceConc!12164) TokenValue!3321)

(assert (=> d!502012 (= (maxPrefixOneRule!825 thiss!17113 (rule!5115 lt!624220) lt!624210) (Some!3510 (tuple2!18047 (Token!6029 (apply!4899 (transformation!3231 (rule!5115 lt!624220)) (seqFromList!2202 lt!624246)) (rule!5115 lt!624220) (size!14585 lt!624246) lt!624246) lt!624224)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!257 (LexerInterface!2860 List!18403 List!18402 List!18402 List!18402 Rule!6262) Unit!30961)

(assert (=> d!502012 (= lt!624221 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!257 thiss!17113 rules!1846 lt!624246 lt!624210 lt!624224 (rule!5115 lt!624220)))))

(assert (=> d!502012 (= lt!624246 (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun lt!624216 () Unit!30961)

(declare-fun lemmaCharactersSize!363 (Token!6028) Unit!30961)

(assert (=> d!502012 (= lt!624216 (lemmaCharactersSize!363 lt!624220))))

(declare-fun lt!624253 () Unit!30961)

(declare-fun lemmaEqSameImage!216 (TokenValueInjection!6302 BalanceConc!12164 BalanceConc!12164) Unit!30961)

(assert (=> d!502012 (= lt!624253 (lemmaEqSameImage!216 (transformation!3231 (rule!5115 lt!624220)) (charsOf!1880 lt!624220) (seqFromList!2202 (originalCharacters!4045 lt!624220))))))

(declare-fun lt!624213 () Unit!30961)

(declare-fun lemmaSemiInverse!431 (TokenValueInjection!6302 BalanceConc!12164) Unit!30961)

(assert (=> d!502012 (= lt!624213 (lemmaSemiInverse!431 (transformation!3231 (rule!5115 lt!624220)) (charsOf!1880 lt!624220)))))

(declare-fun lt!624207 () Unit!30961)

(declare-fun lemmaInv!496 (TokenValueInjection!6302) Unit!30961)

(assert (=> d!502012 (= lt!624207 (lemmaInv!496 (transformation!3231 (rule!5115 lt!624220))))))

(declare-fun lt!624242 () Unit!30961)

(declare-fun lt!624243 () Unit!30961)

(assert (=> d!502012 (= lt!624242 lt!624243)))

(declare-fun lt!624227 () List!18402)

(assert (=> d!502012 (isPrefix!1489 lt!624227 (++!4984 lt!624227 lt!624224))))

(assert (=> d!502012 (= lt!624243 (lemmaConcatTwoListThenFirstIsPrefix!1014 lt!624227 lt!624224))))

(assert (=> d!502012 (= lt!624227 (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun lt!624222 () Unit!30961)

(declare-fun lt!624199 () Unit!30961)

(assert (=> d!502012 (= lt!624222 lt!624199)))

(declare-fun e!1065560 () Bool)

(assert (=> d!502012 e!1065560))

(declare-fun res!745747 () Bool)

(assert (=> d!502012 (=> (not res!745747) (not e!1065560))))

(declare-datatypes ((Option!3514 0))(
  ( (None!3513) (Some!3513 (v!24738 Rule!6262)) )
))
(declare-fun isDefined!2869 (Option!3514) Bool)

(declare-fun getRuleFromTag!330 (LexerInterface!2860 List!18403 String!20937) Option!3514)

(assert (=> d!502012 (= res!745747 (isDefined!2869 (getRuleFromTag!330 thiss!17113 rules!1846 (tag!3515 (rule!5115 lt!624220)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!330 (LexerInterface!2860 List!18403 List!18402 Token!6028) Unit!30961)

(assert (=> d!502012 (= lt!624199 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!330 thiss!17113 rules!1846 lt!624210 lt!624220))))

(declare-fun lt!624268 () Option!3511)

(assert (=> d!502012 (= lt!624224 (_2!10425 (get!5362 lt!624268)))))

(assert (=> d!502012 (= lt!624220 (_1!10425 (get!5362 lt!624268)))))

(declare-fun lt!624265 () Unit!30961)

(assert (=> d!502012 (= lt!624265 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!428 thiss!17113 rules!1846 (list!7317 (charsOf!1880 (h!23735 tokens!457))) lt!623664))))

(assert (=> d!502012 (= lt!624268 (maxPrefix!1422 thiss!17113 rules!1846 lt!624210))))

(declare-fun lt!624245 () Unit!30961)

(declare-fun lt!624226 () Unit!30961)

(assert (=> d!502012 (= lt!624245 lt!624226)))

(declare-fun lt!624240 () List!18402)

(assert (=> d!502012 (isPrefix!1489 lt!624240 (++!4984 lt!624240 lt!623664))))

(assert (=> d!502012 (= lt!624226 (lemmaConcatTwoListThenFirstIsPrefix!1014 lt!624240 lt!623664))))

(assert (=> d!502012 (= lt!624240 (list!7317 (charsOf!1880 (h!23735 tokens!457))))))

(assert (=> d!502012 (= lt!624210 (++!4984 (list!7317 (charsOf!1880 (h!23735 tokens!457))) lt!623664))))

(assert (=> d!502012 (not (isEmpty!11381 rules!1846))))

(assert (=> d!502012 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!186 thiss!17113 rules!1846 (h!23735 tokens!457) (rule!5115 (h!23735 tokens!457)) lt!623664) lt!624252)))

(declare-fun b!1662149 () Bool)

(declare-fun get!5365 (Option!3514) Rule!6262)

(assert (=> b!1662149 (= e!1065560 (= (rule!5115 lt!624220) (get!5365 (getRuleFromTag!330 thiss!17113 rules!1846 (tag!3515 (rule!5115 lt!624220))))))))

(declare-fun b!1662150 () Bool)

(declare-fun Unit!30981 () Unit!30961)

(assert (=> b!1662150 (= e!1065561 Unit!30981)))

(declare-fun b!1662151 () Bool)

(assert (=> b!1662151 false))

(declare-fun lt!624261 () Unit!30961)

(declare-fun lt!624233 () Unit!30961)

(assert (=> b!1662151 (= lt!624261 lt!624233)))

(declare-fun lt!624258 () List!18402)

(assert (=> b!1662151 (not (matchR!2052 (regex!3231 (rule!5115 (h!23735 tokens!457))) lt!624258))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!108 (LexerInterface!2860 List!18403 Rule!6262 List!18402 List!18402 Rule!6262) Unit!30961)

(assert (=> b!1662151 (= lt!624233 (lemmaMaxPrefNoSmallerRuleMatches!108 thiss!17113 rules!1846 (rule!5115 lt!624220) lt!624258 lt!624210 (rule!5115 (h!23735 tokens!457))))))

(assert (=> b!1662151 (= lt!624258 (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun e!1065563 () Unit!30961)

(declare-fun Unit!30982 () Unit!30961)

(assert (=> b!1662151 (= e!1065563 Unit!30982)))

(declare-fun b!1662152 () Bool)

(assert (=> b!1662152 false))

(declare-fun lt!624260 () Unit!30961)

(declare-fun lt!624217 () Unit!30961)

(assert (=> b!1662152 (= lt!624260 lt!624217)))

(assert (=> b!1662152 (= (rule!5115 lt!624220) (rule!5115 (h!23735 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!84 (List!18403 Rule!6262 Rule!6262) Unit!30961)

(assert (=> b!1662152 (= lt!624217 (lemmaSameIndexThenSameElement!84 rules!1846 (rule!5115 lt!624220) (rule!5115 (h!23735 tokens!457))))))

(declare-fun e!1065564 () Unit!30961)

(declare-fun Unit!30983 () Unit!30961)

(assert (=> b!1662152 (= e!1065564 Unit!30983)))

(declare-fun b!1662153 () Bool)

(declare-fun e!1065562 () Unit!30961)

(declare-fun Unit!30984 () Unit!30961)

(assert (=> b!1662153 (= e!1065562 Unit!30984)))

(declare-fun b!1662154 () Bool)

(declare-fun Unit!30985 () Unit!30961)

(assert (=> b!1662154 (= e!1065565 Unit!30985)))

(declare-fun lt!624225 () Unit!30961)

(assert (=> b!1662154 (= lt!624225 (lemmaMaxPrefixThenMatchesRulesRegex!68 thiss!17113 rules!1846 lt!624210 lt!624220 (rule!5115 lt!624220) lt!624224))))

(assert (=> b!1662154 (matchR!2052 (rulesRegex!615 thiss!17113 rules!1846) (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun lt!624218 () Unit!30961)

(assert (=> b!1662154 (= lt!624218 lt!624225)))

(declare-fun lt!624219 () List!18402)

(assert (=> b!1662154 (= lt!624219 (list!7317 (charsOf!1880 (h!23735 tokens!457))))))

(declare-fun lt!624203 () List!18402)

(assert (=> b!1662154 (= lt!624203 (list!7317 (charsOf!1880 (h!23735 tokens!457))))))

(declare-fun lt!624215 () List!18402)

(assert (=> b!1662154 (= lt!624215 (getSuffix!738 lt!624210 (list!7317 (charsOf!1880 (h!23735 tokens!457)))))))

(declare-fun lt!624255 () Unit!30961)

(assert (=> b!1662154 (= lt!624255 (lemmaSamePrefixThenSameSuffix!690 lt!624219 lt!623664 lt!624203 lt!624215 lt!624210))))

(assert (=> b!1662154 (= lt!623664 lt!624215)))

(declare-fun lt!624241 () Unit!30961)

(assert (=> b!1662154 (= lt!624241 lt!624255)))

(declare-fun lt!624254 () List!18402)

(assert (=> b!1662154 (= lt!624254 (list!7317 (charsOf!1880 (h!23735 tokens!457))))))

(declare-fun lt!624239 () Unit!30961)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!181 (List!18402 List!18402) Unit!30961)

(assert (=> b!1662154 (= lt!624239 (lemmaAddHeadSuffixToPrefixStillPrefix!181 lt!624254 lt!624210))))

(assert (=> b!1662154 (isPrefix!1489 (++!4984 lt!624254 (Cons!18332 (head!3702 (getSuffix!738 lt!624210 lt!624254)) Nil!18332)) lt!624210)))

(declare-fun lt!624249 () Unit!30961)

(assert (=> b!1662154 (= lt!624249 lt!624239)))

(declare-fun lt!624267 () List!18402)

(assert (=> b!1662154 (= lt!624267 (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun lt!624231 () List!18402)

(assert (=> b!1662154 (= lt!624231 (++!4984 (list!7317 (charsOf!1880 (h!23735 tokens!457))) (Cons!18332 (head!3702 lt!623664) Nil!18332)))))

(declare-fun lt!624230 () Unit!30961)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!67 (List!18402 List!18402 List!18402) Unit!30961)

(assert (=> b!1662154 (= lt!624230 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!67 lt!624267 lt!624231 lt!624210))))

(assert (=> b!1662154 (isPrefix!1489 lt!624231 lt!624267)))

(declare-fun lt!624257 () Unit!30961)

(assert (=> b!1662154 (= lt!624257 lt!624230)))

(declare-fun lt!624232 () Regex!4559)

(assert (=> b!1662154 (= lt!624232 (rulesRegex!615 thiss!17113 rules!1846))))

(declare-fun lt!624237 () List!18402)

(assert (=> b!1662154 (= lt!624237 (++!4984 (list!7317 (charsOf!1880 (h!23735 tokens!457))) (Cons!18332 (head!3702 lt!623664) Nil!18332)))))

(declare-fun lt!624204 () List!18402)

(assert (=> b!1662154 (= lt!624204 (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun lt!624248 () Unit!30961)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!68 (Regex!4559 List!18402 List!18402) Unit!30961)

(assert (=> b!1662154 (= lt!624248 (lemmaNotPrefixMatchThenCannotMatchLonger!68 lt!624232 lt!624237 lt!624204))))

(assert (=> b!1662154 (not (matchR!2052 lt!624232 lt!624204))))

(declare-fun lt!624259 () Unit!30961)

(assert (=> b!1662154 (= lt!624259 lt!624248)))

(assert (=> b!1662154 false))

(declare-fun b!1662155 () Bool)

(declare-fun Unit!30986 () Unit!30961)

(assert (=> b!1662155 (= e!1065559 Unit!30986)))

(declare-fun b!1662156 () Bool)

(declare-fun Unit!30987 () Unit!30961)

(assert (=> b!1662156 (= e!1065561 Unit!30987)))

(declare-fun c!270570 () Bool)

(declare-fun getIndex!136 (List!18403 Rule!6262) Int)

(assert (=> b!1662156 (= c!270570 (< (getIndex!136 rules!1846 (rule!5115 (h!23735 tokens!457))) (getIndex!136 rules!1846 (rule!5115 lt!624220))))))

(declare-fun lt!624214 () Unit!30961)

(assert (=> b!1662156 (= lt!624214 e!1065563)))

(declare-fun c!270568 () Bool)

(assert (=> b!1662156 (= c!270568 (< (getIndex!136 rules!1846 (rule!5115 lt!624220)) (getIndex!136 rules!1846 (rule!5115 (h!23735 tokens!457)))))))

(declare-fun lt!624200 () Unit!30961)

(assert (=> b!1662156 (= lt!624200 e!1065562)))

(declare-fun c!270571 () Bool)

(assert (=> b!1662156 (= c!270571 (= (getIndex!136 rules!1846 (rule!5115 lt!624220)) (getIndex!136 rules!1846 (rule!5115 (h!23735 tokens!457)))))))

(declare-fun lt!624266 () Unit!30961)

(assert (=> b!1662156 (= lt!624266 e!1065564)))

(assert (=> b!1662156 false))

(declare-fun b!1662157 () Bool)

(assert (=> b!1662157 false))

(declare-fun lt!624212 () Unit!30961)

(declare-fun lt!624209 () Unit!30961)

(assert (=> b!1662157 (= lt!624212 lt!624209)))

(declare-fun lt!624256 () List!18402)

(assert (=> b!1662157 (not (matchR!2052 (regex!3231 (rule!5115 lt!624220)) lt!624256))))

(assert (=> b!1662157 (= lt!624209 (lemmaMaxPrefNoSmallerRuleMatches!108 thiss!17113 rules!1846 (rule!5115 (h!23735 tokens!457)) lt!624256 (list!7317 (charsOf!1880 (h!23735 tokens!457))) (rule!5115 lt!624220)))))

(assert (=> b!1662157 (= lt!624256 (list!7317 (charsOf!1880 (h!23735 tokens!457))))))

(declare-fun Unit!30988 () Unit!30961)

(assert (=> b!1662157 (= e!1065562 Unit!30988)))

(declare-fun b!1662158 () Bool)

(declare-fun Unit!30989 () Unit!30961)

(assert (=> b!1662158 (= e!1065559 Unit!30989)))

(declare-fun lt!624211 () List!18402)

(assert (=> b!1662158 (= lt!624211 (list!7317 (charsOf!1880 lt!624220)))))

(declare-fun lt!624208 () List!18402)

(assert (=> b!1662158 (= lt!624208 (list!7317 (charsOf!1880 (h!23735 tokens!457))))))

(declare-fun lt!624202 () Unit!30961)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!158 (LexerInterface!2860 List!18403 Rule!6262 List!18402 List!18402 List!18402 Rule!6262) Unit!30961)

(assert (=> b!1662158 (= lt!624202 (lemmaMaxPrefixOutputsMaxPrefix!158 thiss!17113 rules!1846 (rule!5115 lt!624220) lt!624211 lt!624210 lt!624208 (rule!5115 (h!23735 tokens!457))))))

(assert (=> b!1662158 (not (matchR!2052 (regex!3231 (rule!5115 (h!23735 tokens!457))) lt!624208))))

(declare-fun lt!624262 () Unit!30961)

(assert (=> b!1662158 (= lt!624262 lt!624202)))

(assert (=> b!1662158 false))

(declare-fun b!1662159 () Bool)

(declare-fun Unit!30990 () Unit!30961)

(assert (=> b!1662159 (= e!1065563 Unit!30990)))

(declare-fun b!1662160 () Bool)

(declare-fun Unit!30991 () Unit!30961)

(assert (=> b!1662160 (= e!1065564 Unit!30991)))

(declare-fun b!1662161 () Bool)

(declare-fun res!745746 () Bool)

(assert (=> b!1662161 (=> (not res!745746) (not e!1065560))))

(assert (=> b!1662161 (= res!745746 (matchR!2052 (regex!3231 (get!5365 (getRuleFromTag!330 thiss!17113 rules!1846 (tag!3515 (rule!5115 lt!624220))))) (list!7317 (charsOf!1880 lt!624220))))))

(assert (= (and d!502012 res!745747) b!1662161))

(assert (= (and b!1662161 res!745746) b!1662149))

(assert (= (and d!502012 c!270567) b!1662154))

(assert (= (and d!502012 (not c!270567)) b!1662148))

(assert (= (and d!502012 c!270569) b!1662158))

(assert (= (and d!502012 (not c!270569)) b!1662155))

(assert (= (and d!502012 c!270572) b!1662156))

(assert (= (and d!502012 (not c!270572)) b!1662150))

(assert (= (and b!1662156 c!270570) b!1662151))

(assert (= (and b!1662156 (not c!270570)) b!1662159))

(assert (= (and b!1662156 c!270568) b!1662157))

(assert (= (and b!1662156 (not c!270568)) b!1662153))

(assert (= (and b!1662156 c!270571) b!1662152))

(assert (= (and b!1662156 (not c!270571)) b!1662160))

(declare-fun m!2022939 () Bool)

(assert (=> b!1662149 m!2022939))

(assert (=> b!1662149 m!2022939))

(declare-fun m!2022941 () Bool)

(assert (=> b!1662149 m!2022941))

(declare-fun m!2022943 () Bool)

(assert (=> b!1662157 m!2022943))

(assert (=> b!1662157 m!2022355))

(assert (=> b!1662157 m!2022355))

(declare-fun m!2022945 () Bool)

(assert (=> b!1662157 m!2022945))

(assert (=> b!1662157 m!2022945))

(declare-fun m!2022947 () Bool)

(assert (=> b!1662157 m!2022947))

(declare-fun m!2022949 () Bool)

(assert (=> b!1662152 m!2022949))

(declare-fun m!2022951 () Bool)

(assert (=> b!1662156 m!2022951))

(declare-fun m!2022953 () Bool)

(assert (=> b!1662156 m!2022953))

(assert (=> b!1662158 m!2022355))

(assert (=> b!1662158 m!2022355))

(assert (=> b!1662158 m!2022945))

(declare-fun m!2022955 () Bool)

(assert (=> b!1662158 m!2022955))

(declare-fun m!2022957 () Bool)

(assert (=> b!1662158 m!2022957))

(declare-fun m!2022959 () Bool)

(assert (=> b!1662158 m!2022959))

(assert (=> b!1662158 m!2022959))

(declare-fun m!2022961 () Bool)

(assert (=> b!1662158 m!2022961))

(declare-fun m!2022963 () Bool)

(assert (=> b!1662151 m!2022963))

(declare-fun m!2022965 () Bool)

(assert (=> b!1662151 m!2022965))

(assert (=> b!1662151 m!2022959))

(assert (=> b!1662151 m!2022959))

(assert (=> b!1662151 m!2022961))

(declare-fun m!2022967 () Bool)

(assert (=> d!502012 m!2022967))

(declare-fun m!2022969 () Bool)

(assert (=> d!502012 m!2022969))

(declare-fun m!2022971 () Bool)

(assert (=> d!502012 m!2022971))

(declare-fun m!2022973 () Bool)

(assert (=> d!502012 m!2022973))

(declare-fun m!2022975 () Bool)

(assert (=> d!502012 m!2022975))

(declare-fun m!2022977 () Bool)

(assert (=> d!502012 m!2022977))

(assert (=> d!502012 m!2022961))

(declare-fun m!2022979 () Bool)

(assert (=> d!502012 m!2022979))

(assert (=> d!502012 m!2022317))

(assert (=> d!502012 m!2022945))

(declare-fun m!2022981 () Bool)

(assert (=> d!502012 m!2022981))

(assert (=> d!502012 m!2022317))

(assert (=> d!502012 m!2022945))

(declare-fun m!2022983 () Bool)

(assert (=> d!502012 m!2022983))

(assert (=> d!502012 m!2022939))

(assert (=> d!502012 m!2022355))

(declare-fun m!2022985 () Bool)

(assert (=> d!502012 m!2022985))

(declare-fun m!2022987 () Bool)

(assert (=> d!502012 m!2022987))

(assert (=> d!502012 m!2022945))

(declare-fun m!2022989 () Bool)

(assert (=> d!502012 m!2022989))

(declare-fun m!2022991 () Bool)

(assert (=> d!502012 m!2022991))

(assert (=> d!502012 m!2022959))

(declare-fun m!2022993 () Bool)

(assert (=> d!502012 m!2022993))

(declare-fun m!2022995 () Bool)

(assert (=> d!502012 m!2022995))

(assert (=> d!502012 m!2022315))

(assert (=> d!502012 m!2022355))

(assert (=> d!502012 m!2022945))

(assert (=> d!502012 m!2022989))

(declare-fun m!2022997 () Bool)

(assert (=> d!502012 m!2022997))

(declare-fun m!2022999 () Bool)

(assert (=> d!502012 m!2022999))

(assert (=> d!502012 m!2022945))

(assert (=> d!502012 m!2022945))

(declare-fun m!2023001 () Bool)

(assert (=> d!502012 m!2023001))

(declare-fun m!2023003 () Bool)

(assert (=> d!502012 m!2023003))

(assert (=> d!502012 m!2022355))

(declare-fun m!2023005 () Bool)

(assert (=> d!502012 m!2023005))

(assert (=> d!502012 m!2022945))

(declare-fun m!2023007 () Bool)

(assert (=> d!502012 m!2023007))

(assert (=> d!502012 m!2022959))

(assert (=> d!502012 m!2022939))

(declare-fun m!2023009 () Bool)

(assert (=> d!502012 m!2023009))

(declare-fun m!2023011 () Bool)

(assert (=> d!502012 m!2023011))

(assert (=> d!502012 m!2022969))

(declare-fun m!2023013 () Bool)

(assert (=> d!502012 m!2023013))

(declare-fun m!2023015 () Bool)

(assert (=> d!502012 m!2023015))

(declare-fun m!2023017 () Bool)

(assert (=> d!502012 m!2023017))

(assert (=> d!502012 m!2022959))

(declare-fun m!2023019 () Bool)

(assert (=> d!502012 m!2023019))

(assert (=> d!502012 m!2022959))

(assert (=> d!502012 m!2022961))

(assert (=> d!502012 m!2022959))

(declare-fun m!2023021 () Bool)

(assert (=> d!502012 m!2023021))

(declare-fun m!2023023 () Bool)

(assert (=> d!502012 m!2023023))

(assert (=> d!502012 m!2022993))

(assert (=> d!502012 m!2022973))

(declare-fun m!2023025 () Bool)

(assert (=> d!502012 m!2023025))

(assert (=> d!502012 m!2022991))

(declare-fun m!2023027 () Bool)

(assert (=> d!502012 m!2023027))

(assert (=> b!1662161 m!2022939))

(assert (=> b!1662161 m!2022939))

(assert (=> b!1662161 m!2022941))

(assert (=> b!1662161 m!2022961))

(declare-fun m!2023029 () Bool)

(assert (=> b!1662161 m!2023029))

(assert (=> b!1662161 m!2022959))

(assert (=> b!1662161 m!2022959))

(assert (=> b!1662161 m!2022961))

(declare-fun m!2023031 () Bool)

(assert (=> b!1662154 m!2023031))

(declare-fun m!2023033 () Bool)

(assert (=> b!1662154 m!2023033))

(declare-fun m!2023035 () Bool)

(assert (=> b!1662154 m!2023035))

(assert (=> b!1662154 m!2022945))

(declare-fun m!2023037 () Bool)

(assert (=> b!1662154 m!2023037))

(declare-fun m!2023039 () Bool)

(assert (=> b!1662154 m!2023039))

(declare-fun m!2023041 () Bool)

(assert (=> b!1662154 m!2023041))

(assert (=> b!1662154 m!2022959))

(assert (=> b!1662154 m!2022387))

(declare-fun m!2023043 () Bool)

(assert (=> b!1662154 m!2023043))

(assert (=> b!1662154 m!2022945))

(declare-fun m!2023045 () Bool)

(assert (=> b!1662154 m!2023045))

(assert (=> b!1662154 m!2022959))

(assert (=> b!1662154 m!2022961))

(assert (=> b!1662154 m!2023039))

(declare-fun m!2023047 () Bool)

(assert (=> b!1662154 m!2023047))

(declare-fun m!2023049 () Bool)

(assert (=> b!1662154 m!2023049))

(assert (=> b!1662154 m!2022317))

(assert (=> b!1662154 m!2022355))

(assert (=> b!1662154 m!2022317))

(assert (=> b!1662154 m!2022961))

(declare-fun m!2023051 () Bool)

(assert (=> b!1662154 m!2023051))

(declare-fun m!2023053 () Bool)

(assert (=> b!1662154 m!2023053))

(declare-fun m!2023055 () Bool)

(assert (=> b!1662154 m!2023055))

(assert (=> b!1662154 m!2023033))

(assert (=> b!1662154 m!2022355))

(assert (=> b!1662154 m!2022945))

(declare-fun m!2023057 () Bool)

(assert (=> b!1662154 m!2023057))

(assert (=> b!1661875 d!502012))

(declare-fun b!1662180 () Bool)

(declare-fun res!745768 () Bool)

(declare-fun e!1065572 () Bool)

(assert (=> b!1662180 (=> (not res!745768) (not e!1065572))))

(declare-fun lt!624282 () Option!3511)

(assert (=> b!1662180 (= res!745768 (= (++!4984 (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624282)))) (_2!10425 (get!5362 lt!624282))) lt!623670))))

(declare-fun b!1662181 () Bool)

(declare-fun res!745766 () Bool)

(assert (=> b!1662181 (=> (not res!745766) (not e!1065572))))

(assert (=> b!1662181 (= res!745766 (matchR!2052 (regex!3231 (rule!5115 (_1!10425 (get!5362 lt!624282)))) (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624282))))))))

(declare-fun b!1662182 () Bool)

(declare-fun contains!3199 (List!18403 Rule!6262) Bool)

(assert (=> b!1662182 (= e!1065572 (contains!3199 rules!1846 (rule!5115 (_1!10425 (get!5362 lt!624282)))))))

(declare-fun bm!106447 () Bool)

(declare-fun call!106452 () Option!3511)

(assert (=> bm!106447 (= call!106452 (maxPrefixOneRule!825 thiss!17113 (h!23734 rules!1846) lt!623670))))

(declare-fun d!502088 () Bool)

(declare-fun e!1065573 () Bool)

(assert (=> d!502088 e!1065573))

(declare-fun res!745767 () Bool)

(assert (=> d!502088 (=> res!745767 e!1065573)))

(declare-fun isEmpty!11387 (Option!3511) Bool)

(assert (=> d!502088 (= res!745767 (isEmpty!11387 lt!624282))))

(declare-fun e!1065574 () Option!3511)

(assert (=> d!502088 (= lt!624282 e!1065574)))

(declare-fun c!270575 () Bool)

(assert (=> d!502088 (= c!270575 (and ((_ is Cons!18333) rules!1846) ((_ is Nil!18333) (t!151810 rules!1846))))))

(declare-fun lt!624284 () Unit!30961)

(declare-fun lt!624280 () Unit!30961)

(assert (=> d!502088 (= lt!624284 lt!624280)))

(assert (=> d!502088 (isPrefix!1489 lt!623670 lt!623670)))

(declare-fun lemmaIsPrefixRefl!1010 (List!18402 List!18402) Unit!30961)

(assert (=> d!502088 (= lt!624280 (lemmaIsPrefixRefl!1010 lt!623670 lt!623670))))

(declare-fun rulesValidInductive!1032 (LexerInterface!2860 List!18403) Bool)

(assert (=> d!502088 (rulesValidInductive!1032 thiss!17113 rules!1846)))

(assert (=> d!502088 (= (maxPrefix!1422 thiss!17113 rules!1846 lt!623670) lt!624282)))

(declare-fun b!1662183 () Bool)

(assert (=> b!1662183 (= e!1065573 e!1065572)))

(declare-fun res!745763 () Bool)

(assert (=> b!1662183 (=> (not res!745763) (not e!1065572))))

(assert (=> b!1662183 (= res!745763 (isDefined!2866 lt!624282))))

(declare-fun b!1662184 () Bool)

(assert (=> b!1662184 (= e!1065574 call!106452)))

(declare-fun b!1662185 () Bool)

(declare-fun res!745765 () Bool)

(assert (=> b!1662185 (=> (not res!745765) (not e!1065572))))

(assert (=> b!1662185 (= res!745765 (= (value!101756 (_1!10425 (get!5362 lt!624282))) (apply!4899 (transformation!3231 (rule!5115 (_1!10425 (get!5362 lt!624282)))) (seqFromList!2202 (originalCharacters!4045 (_1!10425 (get!5362 lt!624282)))))))))

(declare-fun b!1662186 () Bool)

(declare-fun lt!624283 () Option!3511)

(declare-fun lt!624281 () Option!3511)

(assert (=> b!1662186 (= e!1065574 (ite (and ((_ is None!3510) lt!624283) ((_ is None!3510) lt!624281)) None!3510 (ite ((_ is None!3510) lt!624281) lt!624283 (ite ((_ is None!3510) lt!624283) lt!624281 (ite (>= (size!14580 (_1!10425 (v!24729 lt!624283))) (size!14580 (_1!10425 (v!24729 lt!624281)))) lt!624283 lt!624281)))))))

(assert (=> b!1662186 (= lt!624283 call!106452)))

(assert (=> b!1662186 (= lt!624281 (maxPrefix!1422 thiss!17113 (t!151810 rules!1846) lt!623670))))

(declare-fun b!1662187 () Bool)

(declare-fun res!745764 () Bool)

(assert (=> b!1662187 (=> (not res!745764) (not e!1065572))))

(assert (=> b!1662187 (= res!745764 (= (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624282)))) (originalCharacters!4045 (_1!10425 (get!5362 lt!624282)))))))

(declare-fun b!1662188 () Bool)

(declare-fun res!745762 () Bool)

(assert (=> b!1662188 (=> (not res!745762) (not e!1065572))))

(assert (=> b!1662188 (= res!745762 (< (size!14585 (_2!10425 (get!5362 lt!624282))) (size!14585 lt!623670)))))

(assert (= (and d!502088 c!270575) b!1662184))

(assert (= (and d!502088 (not c!270575)) b!1662186))

(assert (= (or b!1662184 b!1662186) bm!106447))

(assert (= (and d!502088 (not res!745767)) b!1662183))

(assert (= (and b!1662183 res!745763) b!1662187))

(assert (= (and b!1662187 res!745764) b!1662188))

(assert (= (and b!1662188 res!745762) b!1662180))

(assert (= (and b!1662180 res!745768) b!1662185))

(assert (= (and b!1662185 res!745765) b!1662181))

(assert (= (and b!1662181 res!745766) b!1662182))

(declare-fun m!2023059 () Bool)

(assert (=> b!1662183 m!2023059))

(declare-fun m!2023061 () Bool)

(assert (=> b!1662188 m!2023061))

(declare-fun m!2023063 () Bool)

(assert (=> b!1662188 m!2023063))

(assert (=> b!1662188 m!2022503))

(assert (=> b!1662181 m!2023061))

(declare-fun m!2023065 () Bool)

(assert (=> b!1662181 m!2023065))

(assert (=> b!1662181 m!2023065))

(declare-fun m!2023067 () Bool)

(assert (=> b!1662181 m!2023067))

(assert (=> b!1662181 m!2023067))

(declare-fun m!2023069 () Bool)

(assert (=> b!1662181 m!2023069))

(declare-fun m!2023071 () Bool)

(assert (=> bm!106447 m!2023071))

(declare-fun m!2023073 () Bool)

(assert (=> d!502088 m!2023073))

(declare-fun m!2023075 () Bool)

(assert (=> d!502088 m!2023075))

(declare-fun m!2023077 () Bool)

(assert (=> d!502088 m!2023077))

(declare-fun m!2023079 () Bool)

(assert (=> d!502088 m!2023079))

(declare-fun m!2023081 () Bool)

(assert (=> b!1662186 m!2023081))

(assert (=> b!1662187 m!2023061))

(assert (=> b!1662187 m!2023065))

(assert (=> b!1662187 m!2023065))

(assert (=> b!1662187 m!2023067))

(assert (=> b!1662185 m!2023061))

(declare-fun m!2023083 () Bool)

(assert (=> b!1662185 m!2023083))

(assert (=> b!1662185 m!2023083))

(declare-fun m!2023085 () Bool)

(assert (=> b!1662185 m!2023085))

(assert (=> b!1662180 m!2023061))

(assert (=> b!1662180 m!2023065))

(assert (=> b!1662180 m!2023065))

(assert (=> b!1662180 m!2023067))

(assert (=> b!1662180 m!2023067))

(declare-fun m!2023087 () Bool)

(assert (=> b!1662180 m!2023087))

(assert (=> b!1662182 m!2023061))

(declare-fun m!2023089 () Bool)

(assert (=> b!1662182 m!2023089))

(assert (=> b!1661876 d!502088))

(declare-fun b!1662189 () Bool)

(declare-fun res!745775 () Bool)

(declare-fun e!1065575 () Bool)

(assert (=> b!1662189 (=> (not res!745775) (not e!1065575))))

(declare-fun lt!624287 () Option!3511)

(assert (=> b!1662189 (= res!745775 (= (++!4984 (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624287)))) (_2!10425 (get!5362 lt!624287))) (originalCharacters!4045 (h!23735 tokens!457))))))

(declare-fun b!1662190 () Bool)

(declare-fun res!745773 () Bool)

(assert (=> b!1662190 (=> (not res!745773) (not e!1065575))))

(assert (=> b!1662190 (= res!745773 (matchR!2052 (regex!3231 (rule!5115 (_1!10425 (get!5362 lt!624287)))) (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624287))))))))

(declare-fun b!1662191 () Bool)

(assert (=> b!1662191 (= e!1065575 (contains!3199 rules!1846 (rule!5115 (_1!10425 (get!5362 lt!624287)))))))

(declare-fun call!106453 () Option!3511)

(declare-fun bm!106448 () Bool)

(assert (=> bm!106448 (= call!106453 (maxPrefixOneRule!825 thiss!17113 (h!23734 rules!1846) (originalCharacters!4045 (h!23735 tokens!457))))))

(declare-fun d!502090 () Bool)

(declare-fun e!1065576 () Bool)

(assert (=> d!502090 e!1065576))

(declare-fun res!745774 () Bool)

(assert (=> d!502090 (=> res!745774 e!1065576)))

(assert (=> d!502090 (= res!745774 (isEmpty!11387 lt!624287))))

(declare-fun e!1065577 () Option!3511)

(assert (=> d!502090 (= lt!624287 e!1065577)))

(declare-fun c!270576 () Bool)

(assert (=> d!502090 (= c!270576 (and ((_ is Cons!18333) rules!1846) ((_ is Nil!18333) (t!151810 rules!1846))))))

(declare-fun lt!624289 () Unit!30961)

(declare-fun lt!624285 () Unit!30961)

(assert (=> d!502090 (= lt!624289 lt!624285)))

(assert (=> d!502090 (isPrefix!1489 (originalCharacters!4045 (h!23735 tokens!457)) (originalCharacters!4045 (h!23735 tokens!457)))))

(assert (=> d!502090 (= lt!624285 (lemmaIsPrefixRefl!1010 (originalCharacters!4045 (h!23735 tokens!457)) (originalCharacters!4045 (h!23735 tokens!457))))))

(assert (=> d!502090 (rulesValidInductive!1032 thiss!17113 rules!1846)))

(assert (=> d!502090 (= (maxPrefix!1422 thiss!17113 rules!1846 (originalCharacters!4045 (h!23735 tokens!457))) lt!624287)))

(declare-fun b!1662192 () Bool)

(assert (=> b!1662192 (= e!1065576 e!1065575)))

(declare-fun res!745770 () Bool)

(assert (=> b!1662192 (=> (not res!745770) (not e!1065575))))

(assert (=> b!1662192 (= res!745770 (isDefined!2866 lt!624287))))

(declare-fun b!1662193 () Bool)

(assert (=> b!1662193 (= e!1065577 call!106453)))

(declare-fun b!1662194 () Bool)

(declare-fun res!745772 () Bool)

(assert (=> b!1662194 (=> (not res!745772) (not e!1065575))))

(assert (=> b!1662194 (= res!745772 (= (value!101756 (_1!10425 (get!5362 lt!624287))) (apply!4899 (transformation!3231 (rule!5115 (_1!10425 (get!5362 lt!624287)))) (seqFromList!2202 (originalCharacters!4045 (_1!10425 (get!5362 lt!624287)))))))))

(declare-fun b!1662195 () Bool)

(declare-fun lt!624288 () Option!3511)

(declare-fun lt!624286 () Option!3511)

(assert (=> b!1662195 (= e!1065577 (ite (and ((_ is None!3510) lt!624288) ((_ is None!3510) lt!624286)) None!3510 (ite ((_ is None!3510) lt!624286) lt!624288 (ite ((_ is None!3510) lt!624288) lt!624286 (ite (>= (size!14580 (_1!10425 (v!24729 lt!624288))) (size!14580 (_1!10425 (v!24729 lt!624286)))) lt!624288 lt!624286)))))))

(assert (=> b!1662195 (= lt!624288 call!106453)))

(assert (=> b!1662195 (= lt!624286 (maxPrefix!1422 thiss!17113 (t!151810 rules!1846) (originalCharacters!4045 (h!23735 tokens!457))))))

(declare-fun b!1662196 () Bool)

(declare-fun res!745771 () Bool)

(assert (=> b!1662196 (=> (not res!745771) (not e!1065575))))

(assert (=> b!1662196 (= res!745771 (= (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624287)))) (originalCharacters!4045 (_1!10425 (get!5362 lt!624287)))))))

(declare-fun b!1662197 () Bool)

(declare-fun res!745769 () Bool)

(assert (=> b!1662197 (=> (not res!745769) (not e!1065575))))

(assert (=> b!1662197 (= res!745769 (< (size!14585 (_2!10425 (get!5362 lt!624287))) (size!14585 (originalCharacters!4045 (h!23735 tokens!457)))))))

(assert (= (and d!502090 c!270576) b!1662193))

(assert (= (and d!502090 (not c!270576)) b!1662195))

(assert (= (or b!1662193 b!1662195) bm!106448))

(assert (= (and d!502090 (not res!745774)) b!1662192))

(assert (= (and b!1662192 res!745770) b!1662196))

(assert (= (and b!1662196 res!745771) b!1662197))

(assert (= (and b!1662197 res!745769) b!1662189))

(assert (= (and b!1662189 res!745775) b!1662194))

(assert (= (and b!1662194 res!745772) b!1662190))

(assert (= (and b!1662190 res!745773) b!1662191))

(declare-fun m!2023091 () Bool)

(assert (=> b!1662192 m!2023091))

(declare-fun m!2023093 () Bool)

(assert (=> b!1662197 m!2023093))

(declare-fun m!2023095 () Bool)

(assert (=> b!1662197 m!2023095))

(declare-fun m!2023097 () Bool)

(assert (=> b!1662197 m!2023097))

(assert (=> b!1662190 m!2023093))

(declare-fun m!2023099 () Bool)

(assert (=> b!1662190 m!2023099))

(assert (=> b!1662190 m!2023099))

(declare-fun m!2023101 () Bool)

(assert (=> b!1662190 m!2023101))

(assert (=> b!1662190 m!2023101))

(declare-fun m!2023103 () Bool)

(assert (=> b!1662190 m!2023103))

(declare-fun m!2023105 () Bool)

(assert (=> bm!106448 m!2023105))

(declare-fun m!2023107 () Bool)

(assert (=> d!502090 m!2023107))

(declare-fun m!2023109 () Bool)

(assert (=> d!502090 m!2023109))

(declare-fun m!2023111 () Bool)

(assert (=> d!502090 m!2023111))

(assert (=> d!502090 m!2023079))

(declare-fun m!2023113 () Bool)

(assert (=> b!1662195 m!2023113))

(assert (=> b!1662196 m!2023093))

(assert (=> b!1662196 m!2023099))

(assert (=> b!1662196 m!2023099))

(assert (=> b!1662196 m!2023101))

(assert (=> b!1662194 m!2023093))

(declare-fun m!2023115 () Bool)

(assert (=> b!1662194 m!2023115))

(assert (=> b!1662194 m!2023115))

(declare-fun m!2023117 () Bool)

(assert (=> b!1662194 m!2023117))

(assert (=> b!1662189 m!2023093))

(assert (=> b!1662189 m!2023099))

(assert (=> b!1662189 m!2023099))

(assert (=> b!1662189 m!2023101))

(assert (=> b!1662189 m!2023101))

(declare-fun m!2023119 () Bool)

(assert (=> b!1662189 m!2023119))

(assert (=> b!1662191 m!2023093))

(declare-fun m!2023121 () Bool)

(assert (=> b!1662191 m!2023121))

(assert (=> b!1661876 d!502090))

(declare-fun e!1065578 () Bool)

(declare-fun b!1662201 () Bool)

(declare-fun lt!624290 () List!18402)

(assert (=> b!1662201 (= e!1065578 (or (not (= lt!623685 Nil!18332)) (= lt!624290 (originalCharacters!4045 (h!23735 tokens!457)))))))

(declare-fun b!1662200 () Bool)

(declare-fun res!745776 () Bool)

(assert (=> b!1662200 (=> (not res!745776) (not e!1065578))))

(assert (=> b!1662200 (= res!745776 (= (size!14585 lt!624290) (+ (size!14585 (originalCharacters!4045 (h!23735 tokens!457))) (size!14585 lt!623685))))))

(declare-fun b!1662199 () Bool)

(declare-fun e!1065579 () List!18402)

(assert (=> b!1662199 (= e!1065579 (Cons!18332 (h!23733 (originalCharacters!4045 (h!23735 tokens!457))) (++!4984 (t!151809 (originalCharacters!4045 (h!23735 tokens!457))) lt!623685)))))

(declare-fun b!1662198 () Bool)

(assert (=> b!1662198 (= e!1065579 lt!623685)))

(declare-fun d!502092 () Bool)

(assert (=> d!502092 e!1065578))

(declare-fun res!745777 () Bool)

(assert (=> d!502092 (=> (not res!745777) (not e!1065578))))

(assert (=> d!502092 (= res!745777 (= (content!2555 lt!624290) ((_ map or) (content!2555 (originalCharacters!4045 (h!23735 tokens!457))) (content!2555 lt!623685))))))

(assert (=> d!502092 (= lt!624290 e!1065579)))

(declare-fun c!270577 () Bool)

(assert (=> d!502092 (= c!270577 ((_ is Nil!18332) (originalCharacters!4045 (h!23735 tokens!457))))))

(assert (=> d!502092 (= (++!4984 (originalCharacters!4045 (h!23735 tokens!457)) lt!623685) lt!624290)))

(assert (= (and d!502092 c!270577) b!1662198))

(assert (= (and d!502092 (not c!270577)) b!1662199))

(assert (= (and d!502092 res!745777) b!1662200))

(assert (= (and b!1662200 res!745776) b!1662201))

(declare-fun m!2023123 () Bool)

(assert (=> b!1662200 m!2023123))

(assert (=> b!1662200 m!2023097))

(declare-fun m!2023125 () Bool)

(assert (=> b!1662200 m!2023125))

(declare-fun m!2023127 () Bool)

(assert (=> b!1662199 m!2023127))

(declare-fun m!2023129 () Bool)

(assert (=> d!502092 m!2023129))

(declare-fun m!2023131 () Bool)

(assert (=> d!502092 m!2023131))

(declare-fun m!2023133 () Bool)

(assert (=> d!502092 m!2023133))

(assert (=> b!1661876 d!502092))

(declare-fun d!502094 () Bool)

(assert (=> d!502094 (= (get!5362 lt!623674) (v!24729 lt!623674))))

(assert (=> b!1661876 d!502094))

(declare-fun d!502096 () Bool)

(assert (=> d!502096 (= (isDefined!2866 (maxPrefix!1422 thiss!17113 rules!1846 (originalCharacters!4045 (h!23735 tokens!457)))) (not (isEmpty!11387 (maxPrefix!1422 thiss!17113 rules!1846 (originalCharacters!4045 (h!23735 tokens!457))))))))

(declare-fun bs!397347 () Bool)

(assert (= bs!397347 d!502096))

(assert (=> bs!397347 m!2022279))

(declare-fun m!2023135 () Bool)

(assert (=> bs!397347 m!2023135))

(assert (=> b!1661876 d!502096))

(declare-fun d!502098 () Bool)

(assert (=> d!502098 (= (isDefined!2866 lt!623674) (not (isEmpty!11387 lt!623674)))))

(declare-fun bs!397348 () Bool)

(assert (= bs!397348 d!502098))

(declare-fun m!2023137 () Bool)

(assert (=> bs!397348 m!2023137))

(assert (=> b!1661876 d!502098))

(declare-fun d!502100 () Bool)

(declare-fun c!270580 () Bool)

(assert (=> d!502100 (= c!270580 (isEmpty!11383 (++!4984 (originalCharacters!4045 (h!23735 tokens!457)) lt!623685)))))

(declare-fun e!1065582 () Bool)

(assert (=> d!502100 (= (prefixMatch!476 lt!623675 (++!4984 (originalCharacters!4045 (h!23735 tokens!457)) lt!623685)) e!1065582)))

(declare-fun b!1662206 () Bool)

(declare-fun lostCause!474 (Regex!4559) Bool)

(assert (=> b!1662206 (= e!1065582 (not (lostCause!474 lt!623675)))))

(declare-fun b!1662207 () Bool)

(declare-fun derivativeStep!1124 (Regex!4559 C!9292) Regex!4559)

(declare-fun tail!2474 (List!18402) List!18402)

(assert (=> b!1662207 (= e!1065582 (prefixMatch!476 (derivativeStep!1124 lt!623675 (head!3702 (++!4984 (originalCharacters!4045 (h!23735 tokens!457)) lt!623685))) (tail!2474 (++!4984 (originalCharacters!4045 (h!23735 tokens!457)) lt!623685))))))

(assert (= (and d!502100 c!270580) b!1662206))

(assert (= (and d!502100 (not c!270580)) b!1662207))

(assert (=> d!502100 m!2022285))

(declare-fun m!2023139 () Bool)

(assert (=> d!502100 m!2023139))

(declare-fun m!2023141 () Bool)

(assert (=> b!1662206 m!2023141))

(assert (=> b!1662207 m!2022285))

(declare-fun m!2023143 () Bool)

(assert (=> b!1662207 m!2023143))

(assert (=> b!1662207 m!2023143))

(declare-fun m!2023145 () Bool)

(assert (=> b!1662207 m!2023145))

(assert (=> b!1662207 m!2022285))

(declare-fun m!2023147 () Bool)

(assert (=> b!1662207 m!2023147))

(assert (=> b!1662207 m!2023145))

(assert (=> b!1662207 m!2023147))

(declare-fun m!2023149 () Bool)

(assert (=> b!1662207 m!2023149))

(assert (=> b!1661876 d!502100))

(declare-fun d!502102 () Bool)

(declare-fun c!270581 () Bool)

(assert (=> d!502102 (= c!270581 (isEmpty!11383 (++!4984 lt!623670 lt!623685)))))

(declare-fun e!1065583 () Bool)

(assert (=> d!502102 (= (prefixMatch!476 lt!623675 (++!4984 lt!623670 lt!623685)) e!1065583)))

(declare-fun b!1662208 () Bool)

(assert (=> b!1662208 (= e!1065583 (not (lostCause!474 lt!623675)))))

(declare-fun b!1662209 () Bool)

(assert (=> b!1662209 (= e!1065583 (prefixMatch!476 (derivativeStep!1124 lt!623675 (head!3702 (++!4984 lt!623670 lt!623685))) (tail!2474 (++!4984 lt!623670 lt!623685))))))

(assert (= (and d!502102 c!270581) b!1662208))

(assert (= (and d!502102 (not c!270581)) b!1662209))

(assert (=> d!502102 m!2022383))

(declare-fun m!2023151 () Bool)

(assert (=> d!502102 m!2023151))

(assert (=> b!1662208 m!2023141))

(assert (=> b!1662209 m!2022383))

(declare-fun m!2023153 () Bool)

(assert (=> b!1662209 m!2023153))

(assert (=> b!1662209 m!2023153))

(declare-fun m!2023155 () Bool)

(assert (=> b!1662209 m!2023155))

(assert (=> b!1662209 m!2022383))

(declare-fun m!2023157 () Bool)

(assert (=> b!1662209 m!2023157))

(assert (=> b!1662209 m!2023155))

(assert (=> b!1662209 m!2023157))

(declare-fun m!2023159 () Bool)

(assert (=> b!1662209 m!2023159))

(assert (=> b!1661877 d!502102))

(declare-fun lt!624291 () List!18402)

(declare-fun b!1662213 () Bool)

(declare-fun e!1065584 () Bool)

(assert (=> b!1662213 (= e!1065584 (or (not (= lt!623685 Nil!18332)) (= lt!624291 lt!623670)))))

(declare-fun b!1662212 () Bool)

(declare-fun res!745778 () Bool)

(assert (=> b!1662212 (=> (not res!745778) (not e!1065584))))

(assert (=> b!1662212 (= res!745778 (= (size!14585 lt!624291) (+ (size!14585 lt!623670) (size!14585 lt!623685))))))

(declare-fun b!1662211 () Bool)

(declare-fun e!1065585 () List!18402)

(assert (=> b!1662211 (= e!1065585 (Cons!18332 (h!23733 lt!623670) (++!4984 (t!151809 lt!623670) lt!623685)))))

(declare-fun b!1662210 () Bool)

(assert (=> b!1662210 (= e!1065585 lt!623685)))

(declare-fun d!502104 () Bool)

(assert (=> d!502104 e!1065584))

(declare-fun res!745779 () Bool)

(assert (=> d!502104 (=> (not res!745779) (not e!1065584))))

(assert (=> d!502104 (= res!745779 (= (content!2555 lt!624291) ((_ map or) (content!2555 lt!623670) (content!2555 lt!623685))))))

(assert (=> d!502104 (= lt!624291 e!1065585)))

(declare-fun c!270582 () Bool)

(assert (=> d!502104 (= c!270582 ((_ is Nil!18332) lt!623670))))

(assert (=> d!502104 (= (++!4984 lt!623670 lt!623685) lt!624291)))

(assert (= (and d!502104 c!270582) b!1662210))

(assert (= (and d!502104 (not c!270582)) b!1662211))

(assert (= (and d!502104 res!745779) b!1662212))

(assert (= (and b!1662212 res!745778) b!1662213))

(declare-fun m!2023161 () Bool)

(assert (=> b!1662212 m!2023161))

(assert (=> b!1662212 m!2022503))

(assert (=> b!1662212 m!2023125))

(declare-fun m!2023163 () Bool)

(assert (=> b!1662211 m!2023163))

(declare-fun m!2023165 () Bool)

(assert (=> d!502104 m!2023165))

(assert (=> d!502104 m!2022511))

(assert (=> d!502104 m!2023133))

(assert (=> b!1661877 d!502104))

(declare-fun d!502106 () Bool)

(declare-fun res!745800 () Bool)

(declare-fun e!1065606 () Bool)

(assert (=> d!502106 (=> res!745800 e!1065606)))

(assert (=> d!502106 (= res!745800 (or (not ((_ is Cons!18334) tokens!457)) (not ((_ is Cons!18334) (t!151811 tokens!457)))))))

(assert (=> d!502106 (= (tokensListTwoByTwoPredicateSeparableList!553 thiss!17113 tokens!457 rules!1846) e!1065606)))

(declare-fun b!1662239 () Bool)

(declare-fun e!1065605 () Bool)

(assert (=> b!1662239 (= e!1065606 e!1065605)))

(declare-fun res!745799 () Bool)

(assert (=> b!1662239 (=> (not res!745799) (not e!1065605))))

(assert (=> b!1662239 (= res!745799 (separableTokensPredicate!800 thiss!17113 (h!23735 tokens!457) (h!23735 (t!151811 tokens!457)) rules!1846))))

(declare-fun lt!624390 () Unit!30961)

(declare-fun Unit!30992 () Unit!30961)

(assert (=> b!1662239 (= lt!624390 Unit!30992)))

(assert (=> b!1662239 (> (size!14583 (charsOf!1880 (h!23735 (t!151811 tokens!457)))) 0)))

(declare-fun lt!624393 () Unit!30961)

(declare-fun Unit!30993 () Unit!30961)

(assert (=> b!1662239 (= lt!624393 Unit!30993)))

(assert (=> b!1662239 (rulesProduceIndividualToken!1508 thiss!17113 rules!1846 (h!23735 (t!151811 tokens!457)))))

(declare-fun lt!624394 () Unit!30961)

(declare-fun Unit!30994 () Unit!30961)

(assert (=> b!1662239 (= lt!624394 Unit!30994)))

(assert (=> b!1662239 (rulesProduceIndividualToken!1508 thiss!17113 rules!1846 (h!23735 tokens!457))))

(declare-fun lt!624395 () Unit!30961)

(declare-fun lt!624396 () Unit!30961)

(assert (=> b!1662239 (= lt!624395 lt!624396)))

(assert (=> b!1662239 (rulesProduceIndividualToken!1508 thiss!17113 rules!1846 (h!23735 (t!151811 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!620 (LexerInterface!2860 List!18403 List!18404 Token!6028) Unit!30961)

(assert (=> b!1662239 (= lt!624396 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!620 thiss!17113 rules!1846 tokens!457 (h!23735 (t!151811 tokens!457))))))

(declare-fun lt!624391 () Unit!30961)

(declare-fun lt!624392 () Unit!30961)

(assert (=> b!1662239 (= lt!624391 lt!624392)))

(assert (=> b!1662239 (rulesProduceIndividualToken!1508 thiss!17113 rules!1846 (h!23735 tokens!457))))

(assert (=> b!1662239 (= lt!624392 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!620 thiss!17113 rules!1846 tokens!457 (h!23735 tokens!457)))))

(declare-fun b!1662240 () Bool)

(assert (=> b!1662240 (= e!1065605 (tokensListTwoByTwoPredicateSeparableList!553 thiss!17113 (Cons!18334 (h!23735 (t!151811 tokens!457)) (t!151811 (t!151811 tokens!457))) rules!1846))))

(assert (= (and d!502106 (not res!745800)) b!1662239))

(assert (= (and b!1662239 res!745799) b!1662240))

(assert (=> b!1662239 m!2022239))

(declare-fun m!2023259 () Bool)

(assert (=> b!1662239 m!2023259))

(assert (=> b!1662239 m!2022327))

(assert (=> b!1662239 m!2022399))

(declare-fun m!2023261 () Bool)

(assert (=> b!1662239 m!2023261))

(assert (=> b!1662239 m!2022327))

(declare-fun m!2023263 () Bool)

(assert (=> b!1662239 m!2023263))

(declare-fun m!2023265 () Bool)

(assert (=> b!1662239 m!2023265))

(declare-fun m!2023267 () Bool)

(assert (=> b!1662240 m!2023267))

(assert (=> b!1661883 d!502106))

(declare-fun d!502116 () Bool)

(assert (=> d!502116 (= (isDefined!2866 lt!623654) (not (isEmpty!11387 lt!623654)))))

(declare-fun bs!397350 () Bool)

(assert (= bs!397350 d!502116))

(declare-fun m!2023269 () Bool)

(assert (=> bs!397350 m!2023269))

(assert (=> b!1661862 d!502116))

(declare-fun b!1662253 () Bool)

(declare-fun res!745809 () Bool)

(declare-fun e!1065616 () Bool)

(assert (=> b!1662253 (=> (not res!745809) (not e!1065616))))

(declare-fun lt!624446 () Token!6028)

(assert (=> b!1662253 (= res!745809 (matchR!2052 (regex!3231 (get!5365 (getRuleFromTag!330 thiss!17113 rules!1846 (tag!3515 (rule!5115 lt!624446))))) (list!7317 (charsOf!1880 lt!624446))))))

(declare-fun d!502118 () Bool)

(assert (=> d!502118 (isDefined!2866 (maxPrefix!1422 thiss!17113 rules!1846 (++!4984 lt!623670 lt!623664)))))

(declare-fun lt!624436 () Unit!30961)

(declare-fun e!1065615 () Unit!30961)

(assert (=> d!502118 (= lt!624436 e!1065615)))

(declare-fun c!270588 () Bool)

(assert (=> d!502118 (= c!270588 (isEmpty!11387 (maxPrefix!1422 thiss!17113 rules!1846 (++!4984 lt!623670 lt!623664))))))

(declare-fun lt!624448 () Unit!30961)

(declare-fun lt!624439 () Unit!30961)

(assert (=> d!502118 (= lt!624448 lt!624439)))

(assert (=> d!502118 e!1065616))

(declare-fun res!745810 () Bool)

(assert (=> d!502118 (=> (not res!745810) (not e!1065616))))

(assert (=> d!502118 (= res!745810 (isDefined!2869 (getRuleFromTag!330 thiss!17113 rules!1846 (tag!3515 (rule!5115 lt!624446)))))))

(assert (=> d!502118 (= lt!624439 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!330 thiss!17113 rules!1846 lt!623670 lt!624446))))

(declare-fun lt!624444 () Unit!30961)

(declare-fun lt!624438 () Unit!30961)

(assert (=> d!502118 (= lt!624444 lt!624438)))

(declare-fun lt!624442 () List!18402)

(assert (=> d!502118 (isPrefix!1489 lt!624442 (++!4984 lt!623670 lt!623664))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!215 (List!18402 List!18402 List!18402) Unit!30961)

(assert (=> d!502118 (= lt!624438 (lemmaPrefixStaysPrefixWhenAddingToSuffix!215 lt!624442 lt!623670 lt!623664))))

(assert (=> d!502118 (= lt!624442 (list!7317 (charsOf!1880 lt!624446)))))

(declare-fun lt!624434 () Unit!30961)

(declare-fun lt!624445 () Unit!30961)

(assert (=> d!502118 (= lt!624434 lt!624445)))

(declare-fun lt!624435 () List!18402)

(declare-fun lt!624449 () List!18402)

(assert (=> d!502118 (isPrefix!1489 lt!624435 (++!4984 lt!624435 lt!624449))))

(assert (=> d!502118 (= lt!624445 (lemmaConcatTwoListThenFirstIsPrefix!1014 lt!624435 lt!624449))))

(assert (=> d!502118 (= lt!624449 (_2!10425 (get!5362 (maxPrefix!1422 thiss!17113 rules!1846 lt!623670))))))

(assert (=> d!502118 (= lt!624435 (list!7317 (charsOf!1880 lt!624446)))))

(declare-fun head!3704 (List!18404) Token!6028)

(assert (=> d!502118 (= lt!624446 (head!3704 (list!7318 (_1!10427 (lex!1344 thiss!17113 rules!1846 (seqFromList!2202 lt!623670))))))))

(assert (=> d!502118 (not (isEmpty!11381 rules!1846))))

(assert (=> d!502118 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!428 thiss!17113 rules!1846 lt!623670 lt!623664) lt!624436)))

(declare-fun b!1662256 () Bool)

(declare-fun Unit!30996 () Unit!30961)

(assert (=> b!1662256 (= e!1065615 Unit!30996)))

(declare-fun b!1662254 () Bool)

(assert (=> b!1662254 (= e!1065616 (= (rule!5115 lt!624446) (get!5365 (getRuleFromTag!330 thiss!17113 rules!1846 (tag!3515 (rule!5115 lt!624446))))))))

(declare-fun b!1662255 () Bool)

(declare-fun Unit!30997 () Unit!30961)

(assert (=> b!1662255 (= e!1065615 Unit!30997)))

(declare-fun lt!624447 () List!18402)

(assert (=> b!1662255 (= lt!624447 (++!4984 lt!623670 lt!623664))))

(declare-fun lt!624440 () Unit!30961)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!224 (LexerInterface!2860 Rule!6262 List!18403 List!18402) Unit!30961)

(assert (=> b!1662255 (= lt!624440 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!224 thiss!17113 (rule!5115 lt!624446) rules!1846 lt!624447))))

(assert (=> b!1662255 (isEmpty!11387 (maxPrefixOneRule!825 thiss!17113 (rule!5115 lt!624446) lt!624447))))

(declare-fun lt!624433 () Unit!30961)

(assert (=> b!1662255 (= lt!624433 lt!624440)))

(declare-fun lt!624437 () List!18402)

(assert (=> b!1662255 (= lt!624437 (list!7317 (charsOf!1880 lt!624446)))))

(declare-fun lt!624443 () Unit!30961)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!220 (LexerInterface!2860 Rule!6262 List!18402 List!18402) Unit!30961)

(assert (=> b!1662255 (= lt!624443 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!220 thiss!17113 (rule!5115 lt!624446) lt!624437 (++!4984 lt!623670 lt!623664)))))

(assert (=> b!1662255 (not (matchR!2052 (regex!3231 (rule!5115 lt!624446)) lt!624437))))

(declare-fun lt!624441 () Unit!30961)

(assert (=> b!1662255 (= lt!624441 lt!624443)))

(assert (=> b!1662255 false))

(assert (= (and d!502118 res!745810) b!1662253))

(assert (= (and b!1662253 res!745809) b!1662254))

(assert (= (and d!502118 c!270588) b!1662255))

(assert (= (and d!502118 (not c!270588)) b!1662256))

(declare-fun m!2023271 () Bool)

(assert (=> b!1662253 m!2023271))

(declare-fun m!2023273 () Bool)

(assert (=> b!1662253 m!2023273))

(declare-fun m!2023275 () Bool)

(assert (=> b!1662253 m!2023275))

(declare-fun m!2023277 () Bool)

(assert (=> b!1662253 m!2023277))

(declare-fun m!2023279 () Bool)

(assert (=> b!1662253 m!2023279))

(assert (=> b!1662253 m!2023271))

(assert (=> b!1662253 m!2023277))

(assert (=> b!1662253 m!2023273))

(assert (=> d!502118 m!2022315))

(declare-fun m!2023281 () Bool)

(assert (=> d!502118 m!2023281))

(declare-fun m!2023283 () Bool)

(assert (=> d!502118 m!2023283))

(assert (=> d!502118 m!2022283))

(declare-fun m!2023285 () Bool)

(assert (=> d!502118 m!2023285))

(declare-fun m!2023287 () Bool)

(assert (=> d!502118 m!2023287))

(assert (=> d!502118 m!2022365))

(assert (=> d!502118 m!2023285))

(assert (=> d!502118 m!2022365))

(assert (=> d!502118 m!2022305))

(assert (=> d!502118 m!2022307))

(declare-fun m!2023289 () Bool)

(assert (=> d!502118 m!2023289))

(declare-fun m!2023291 () Bool)

(assert (=> d!502118 m!2023291))

(assert (=> d!502118 m!2023273))

(assert (=> d!502118 m!2022283))

(declare-fun m!2023293 () Bool)

(assert (=> d!502118 m!2023293))

(assert (=> d!502118 m!2022531))

(assert (=> d!502118 m!2023271))

(assert (=> d!502118 m!2023285))

(declare-fun m!2023295 () Bool)

(assert (=> d!502118 m!2023295))

(assert (=> d!502118 m!2023273))

(declare-fun m!2023297 () Bool)

(assert (=> d!502118 m!2023297))

(assert (=> d!502118 m!2022365))

(declare-fun m!2023299 () Bool)

(assert (=> d!502118 m!2023299))

(assert (=> d!502118 m!2022305))

(assert (=> d!502118 m!2022531))

(declare-fun m!2023301 () Bool)

(assert (=> d!502118 m!2023301))

(assert (=> d!502118 m!2023271))

(assert (=> d!502118 m!2023277))

(assert (=> d!502118 m!2023281))

(declare-fun m!2023303 () Bool)

(assert (=> d!502118 m!2023303))

(assert (=> b!1662254 m!2023273))

(assert (=> b!1662254 m!2023273))

(assert (=> b!1662254 m!2023275))

(declare-fun m!2023305 () Bool)

(assert (=> b!1662255 m!2023305))

(declare-fun m!2023307 () Bool)

(assert (=> b!1662255 m!2023307))

(declare-fun m!2023309 () Bool)

(assert (=> b!1662255 m!2023309))

(assert (=> b!1662255 m!2023271))

(declare-fun m!2023311 () Bool)

(assert (=> b!1662255 m!2023311))

(assert (=> b!1662255 m!2022365))

(assert (=> b!1662255 m!2022365))

(declare-fun m!2023313 () Bool)

(assert (=> b!1662255 m!2023313))

(assert (=> b!1662255 m!2023271))

(assert (=> b!1662255 m!2023277))

(assert (=> b!1662255 m!2023305))

(assert (=> b!1661862 d!502118))

(declare-fun d!502120 () Bool)

(assert (=> d!502120 (= (list!7317 lt!623686) (list!7320 (c!270503 lt!623686)))))

(declare-fun bs!397351 () Bool)

(assert (= bs!397351 d!502120))

(declare-fun m!2023315 () Bool)

(assert (=> bs!397351 m!2023315))

(assert (=> b!1661863 d!502120))

(declare-fun d!502122 () Bool)

(declare-fun lt!624466 () BalanceConc!12164)

(declare-fun printListTailRec!406 (LexerInterface!2860 List!18404 List!18402) List!18402)

(declare-fun dropList!699 (BalanceConc!12166 Int) List!18404)

(assert (=> d!502122 (= (list!7317 lt!624466) (printListTailRec!406 thiss!17113 (dropList!699 lt!623658 0) (list!7317 (BalanceConc!12165 Empty!6110))))))

(declare-fun e!1065621 () BalanceConc!12164)

(assert (=> d!502122 (= lt!624466 e!1065621)))

(declare-fun c!270591 () Bool)

(assert (=> d!502122 (= c!270591 (>= 0 (size!14584 lt!623658)))))

(declare-fun e!1065622 () Bool)

(assert (=> d!502122 e!1065622))

(declare-fun res!745813 () Bool)

(assert (=> d!502122 (=> (not res!745813) (not e!1065622))))

(assert (=> d!502122 (= res!745813 (>= 0 0))))

(assert (=> d!502122 (= (printTailRec!911 thiss!17113 lt!623658 0 (BalanceConc!12165 Empty!6110)) lt!624466)))

(declare-fun b!1662263 () Bool)

(assert (=> b!1662263 (= e!1065622 (<= 0 (size!14584 lt!623658)))))

(declare-fun b!1662264 () Bool)

(assert (=> b!1662264 (= e!1065621 (BalanceConc!12165 Empty!6110))))

(declare-fun b!1662265 () Bool)

(assert (=> b!1662265 (= e!1065621 (printTailRec!911 thiss!17113 lt!623658 (+ 0 1) (++!4983 (BalanceConc!12165 Empty!6110) (charsOf!1880 (apply!4898 lt!623658 0)))))))

(declare-fun lt!624469 () List!18404)

(assert (=> b!1662265 (= lt!624469 (list!7318 lt!623658))))

(declare-fun lt!624467 () Unit!30961)

(declare-fun lemmaDropApply!613 (List!18404 Int) Unit!30961)

(assert (=> b!1662265 (= lt!624467 (lemmaDropApply!613 lt!624469 0))))

(declare-fun drop!929 (List!18404 Int) List!18404)

(declare-fun apply!4900 (List!18404 Int) Token!6028)

(assert (=> b!1662265 (= (head!3704 (drop!929 lt!624469 0)) (apply!4900 lt!624469 0))))

(declare-fun lt!624468 () Unit!30961)

(assert (=> b!1662265 (= lt!624468 lt!624467)))

(declare-fun lt!624470 () List!18404)

(assert (=> b!1662265 (= lt!624470 (list!7318 lt!623658))))

(declare-fun lt!624464 () Unit!30961)

(declare-fun lemmaDropTail!593 (List!18404 Int) Unit!30961)

(assert (=> b!1662265 (= lt!624464 (lemmaDropTail!593 lt!624470 0))))

(declare-fun tail!2475 (List!18404) List!18404)

(assert (=> b!1662265 (= (tail!2475 (drop!929 lt!624470 0)) (drop!929 lt!624470 (+ 0 1)))))

(declare-fun lt!624465 () Unit!30961)

(assert (=> b!1662265 (= lt!624465 lt!624464)))

(assert (= (and d!502122 res!745813) b!1662263))

(assert (= (and d!502122 c!270591) b!1662264))

(assert (= (and d!502122 (not c!270591)) b!1662265))

(declare-fun m!2023317 () Bool)

(assert (=> d!502122 m!2023317))

(declare-fun m!2023319 () Bool)

(assert (=> d!502122 m!2023319))

(assert (=> d!502122 m!2023317))

(declare-fun m!2023321 () Bool)

(assert (=> d!502122 m!2023321))

(assert (=> d!502122 m!2023319))

(declare-fun m!2023323 () Bool)

(assert (=> d!502122 m!2023323))

(declare-fun m!2023325 () Bool)

(assert (=> d!502122 m!2023325))

(assert (=> b!1662263 m!2023325))

(declare-fun m!2023327 () Bool)

(assert (=> b!1662265 m!2023327))

(assert (=> b!1662265 m!2023327))

(declare-fun m!2023329 () Bool)

(assert (=> b!1662265 m!2023329))

(declare-fun m!2023331 () Bool)

(assert (=> b!1662265 m!2023331))

(declare-fun m!2023333 () Bool)

(assert (=> b!1662265 m!2023333))

(declare-fun m!2023335 () Bool)

(assert (=> b!1662265 m!2023335))

(declare-fun m!2023337 () Bool)

(assert (=> b!1662265 m!2023337))

(declare-fun m!2023339 () Bool)

(assert (=> b!1662265 m!2023339))

(assert (=> b!1662265 m!2023331))

(declare-fun m!2023341 () Bool)

(assert (=> b!1662265 m!2023341))

(declare-fun m!2023343 () Bool)

(assert (=> b!1662265 m!2023343))

(assert (=> b!1662265 m!2023343))

(assert (=> b!1662265 m!2023337))

(declare-fun m!2023345 () Bool)

(assert (=> b!1662265 m!2023345))

(declare-fun m!2023347 () Bool)

(assert (=> b!1662265 m!2023347))

(assert (=> b!1662265 m!2023339))

(declare-fun m!2023349 () Bool)

(assert (=> b!1662265 m!2023349))

(declare-fun m!2023351 () Bool)

(assert (=> b!1662265 m!2023351))

(assert (=> b!1661863 d!502122))

(declare-fun d!502124 () Bool)

(declare-fun c!270594 () Bool)

(assert (=> d!502124 (= c!270594 ((_ is Cons!18334) (Cons!18334 (h!23735 tokens!457) Nil!18334)))))

(declare-fun e!1065625 () List!18402)

(assert (=> d!502124 (= (printList!973 thiss!17113 (Cons!18334 (h!23735 tokens!457) Nil!18334)) e!1065625)))

(declare-fun b!1662270 () Bool)

(assert (=> b!1662270 (= e!1065625 (++!4984 (list!7317 (charsOf!1880 (h!23735 (Cons!18334 (h!23735 tokens!457) Nil!18334)))) (printList!973 thiss!17113 (t!151811 (Cons!18334 (h!23735 tokens!457) Nil!18334)))))))

(declare-fun b!1662271 () Bool)

(assert (=> b!1662271 (= e!1065625 Nil!18332)))

(assert (= (and d!502124 c!270594) b!1662270))

(assert (= (and d!502124 (not c!270594)) b!1662271))

(declare-fun m!2023353 () Bool)

(assert (=> b!1662270 m!2023353))

(assert (=> b!1662270 m!2023353))

(declare-fun m!2023355 () Bool)

(assert (=> b!1662270 m!2023355))

(declare-fun m!2023357 () Bool)

(assert (=> b!1662270 m!2023357))

(assert (=> b!1662270 m!2023355))

(assert (=> b!1662270 m!2023357))

(declare-fun m!2023359 () Bool)

(assert (=> b!1662270 m!2023359))

(assert (=> b!1661863 d!502124))

(declare-fun d!502126 () Bool)

(declare-fun e!1065628 () Bool)

(assert (=> d!502126 e!1065628))

(declare-fun res!745816 () Bool)

(assert (=> d!502126 (=> (not res!745816) (not e!1065628))))

(declare-fun lt!624473 () BalanceConc!12166)

(assert (=> d!502126 (= res!745816 (= (list!7318 lt!624473) (Cons!18334 (h!23735 tokens!457) Nil!18334)))))

(declare-fun singleton!761 (Token!6028) BalanceConc!12166)

(assert (=> d!502126 (= lt!624473 (singleton!761 (h!23735 tokens!457)))))

(assert (=> d!502126 (= (singletonSeq!1734 (h!23735 tokens!457)) lt!624473)))

(declare-fun b!1662274 () Bool)

(declare-fun isBalanced!1888 (Conc!6111) Bool)

(assert (=> b!1662274 (= e!1065628 (isBalanced!1888 (c!270505 lt!624473)))))

(assert (= (and d!502126 res!745816) b!1662274))

(declare-fun m!2023361 () Bool)

(assert (=> d!502126 m!2023361))

(declare-fun m!2023363 () Bool)

(assert (=> d!502126 m!2023363))

(declare-fun m!2023365 () Bool)

(assert (=> b!1662274 m!2023365))

(assert (=> b!1661863 d!502126))

(declare-fun d!502128 () Bool)

(declare-fun lt!624474 () BalanceConc!12164)

(assert (=> d!502128 (= (list!7317 lt!624474) (printList!973 thiss!17113 (list!7318 lt!623658)))))

(assert (=> d!502128 (= lt!624474 (printTailRec!911 thiss!17113 lt!623658 0 (BalanceConc!12165 Empty!6110)))))

(assert (=> d!502128 (= (print!1391 thiss!17113 lt!623658) lt!624474)))

(declare-fun bs!397352 () Bool)

(assert (= bs!397352 d!502128))

(declare-fun m!2023367 () Bool)

(assert (=> bs!397352 m!2023367))

(assert (=> bs!397352 m!2023347))

(assert (=> bs!397352 m!2023347))

(declare-fun m!2023369 () Bool)

(assert (=> bs!397352 m!2023369))

(assert (=> bs!397352 m!2022251))

(assert (=> b!1661863 d!502128))

(declare-fun b!1662275 () Bool)

(declare-fun res!745823 () Bool)

(declare-fun e!1065629 () Bool)

(assert (=> b!1662275 (=> (not res!745823) (not e!1065629))))

(declare-fun lt!624477 () Option!3511)

(assert (=> b!1662275 (= res!745823 (= (++!4984 (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624477)))) (_2!10425 (get!5362 lt!624477))) lt!623668))))

(declare-fun b!1662276 () Bool)

(declare-fun res!745821 () Bool)

(assert (=> b!1662276 (=> (not res!745821) (not e!1065629))))

(assert (=> b!1662276 (= res!745821 (matchR!2052 (regex!3231 (rule!5115 (_1!10425 (get!5362 lt!624477)))) (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624477))))))))

(declare-fun b!1662277 () Bool)

(assert (=> b!1662277 (= e!1065629 (contains!3199 rules!1846 (rule!5115 (_1!10425 (get!5362 lt!624477)))))))

(declare-fun call!106454 () Option!3511)

(declare-fun bm!106449 () Bool)

(assert (=> bm!106449 (= call!106454 (maxPrefixOneRule!825 thiss!17113 (h!23734 rules!1846) lt!623668))))

(declare-fun d!502130 () Bool)

(declare-fun e!1065630 () Bool)

(assert (=> d!502130 e!1065630))

(declare-fun res!745822 () Bool)

(assert (=> d!502130 (=> res!745822 e!1065630)))

(assert (=> d!502130 (= res!745822 (isEmpty!11387 lt!624477))))

(declare-fun e!1065631 () Option!3511)

(assert (=> d!502130 (= lt!624477 e!1065631)))

(declare-fun c!270595 () Bool)

(assert (=> d!502130 (= c!270595 (and ((_ is Cons!18333) rules!1846) ((_ is Nil!18333) (t!151810 rules!1846))))))

(declare-fun lt!624479 () Unit!30961)

(declare-fun lt!624475 () Unit!30961)

(assert (=> d!502130 (= lt!624479 lt!624475)))

(assert (=> d!502130 (isPrefix!1489 lt!623668 lt!623668)))

(assert (=> d!502130 (= lt!624475 (lemmaIsPrefixRefl!1010 lt!623668 lt!623668))))

(assert (=> d!502130 (rulesValidInductive!1032 thiss!17113 rules!1846)))

(assert (=> d!502130 (= (maxPrefix!1422 thiss!17113 rules!1846 lt!623668) lt!624477)))

(declare-fun b!1662278 () Bool)

(assert (=> b!1662278 (= e!1065630 e!1065629)))

(declare-fun res!745818 () Bool)

(assert (=> b!1662278 (=> (not res!745818) (not e!1065629))))

(assert (=> b!1662278 (= res!745818 (isDefined!2866 lt!624477))))

(declare-fun b!1662279 () Bool)

(assert (=> b!1662279 (= e!1065631 call!106454)))

(declare-fun b!1662280 () Bool)

(declare-fun res!745820 () Bool)

(assert (=> b!1662280 (=> (not res!745820) (not e!1065629))))

(assert (=> b!1662280 (= res!745820 (= (value!101756 (_1!10425 (get!5362 lt!624477))) (apply!4899 (transformation!3231 (rule!5115 (_1!10425 (get!5362 lt!624477)))) (seqFromList!2202 (originalCharacters!4045 (_1!10425 (get!5362 lt!624477)))))))))

(declare-fun b!1662281 () Bool)

(declare-fun lt!624478 () Option!3511)

(declare-fun lt!624476 () Option!3511)

(assert (=> b!1662281 (= e!1065631 (ite (and ((_ is None!3510) lt!624478) ((_ is None!3510) lt!624476)) None!3510 (ite ((_ is None!3510) lt!624476) lt!624478 (ite ((_ is None!3510) lt!624478) lt!624476 (ite (>= (size!14580 (_1!10425 (v!24729 lt!624478))) (size!14580 (_1!10425 (v!24729 lt!624476)))) lt!624478 lt!624476)))))))

(assert (=> b!1662281 (= lt!624478 call!106454)))

(assert (=> b!1662281 (= lt!624476 (maxPrefix!1422 thiss!17113 (t!151810 rules!1846) lt!623668))))

(declare-fun b!1662282 () Bool)

(declare-fun res!745819 () Bool)

(assert (=> b!1662282 (=> (not res!745819) (not e!1065629))))

(assert (=> b!1662282 (= res!745819 (= (list!7317 (charsOf!1880 (_1!10425 (get!5362 lt!624477)))) (originalCharacters!4045 (_1!10425 (get!5362 lt!624477)))))))

(declare-fun b!1662283 () Bool)

(declare-fun res!745817 () Bool)

(assert (=> b!1662283 (=> (not res!745817) (not e!1065629))))

(assert (=> b!1662283 (= res!745817 (< (size!14585 (_2!10425 (get!5362 lt!624477))) (size!14585 lt!623668)))))

(assert (= (and d!502130 c!270595) b!1662279))

(assert (= (and d!502130 (not c!270595)) b!1662281))

(assert (= (or b!1662279 b!1662281) bm!106449))

(assert (= (and d!502130 (not res!745822)) b!1662278))

(assert (= (and b!1662278 res!745818) b!1662282))

(assert (= (and b!1662282 res!745819) b!1662283))

(assert (= (and b!1662283 res!745817) b!1662275))

(assert (= (and b!1662275 res!745823) b!1662280))

(assert (= (and b!1662280 res!745820) b!1662276))

(assert (= (and b!1662276 res!745821) b!1662277))

(declare-fun m!2023371 () Bool)

(assert (=> b!1662278 m!2023371))

(declare-fun m!2023373 () Bool)

(assert (=> b!1662283 m!2023373))

(declare-fun m!2023375 () Bool)

(assert (=> b!1662283 m!2023375))

(declare-fun m!2023377 () Bool)

(assert (=> b!1662283 m!2023377))

(assert (=> b!1662276 m!2023373))

(declare-fun m!2023379 () Bool)

(assert (=> b!1662276 m!2023379))

(assert (=> b!1662276 m!2023379))

(declare-fun m!2023381 () Bool)

(assert (=> b!1662276 m!2023381))

(assert (=> b!1662276 m!2023381))

(declare-fun m!2023383 () Bool)

(assert (=> b!1662276 m!2023383))

(declare-fun m!2023385 () Bool)

(assert (=> bm!106449 m!2023385))

(declare-fun m!2023387 () Bool)

(assert (=> d!502130 m!2023387))

(declare-fun m!2023389 () Bool)

(assert (=> d!502130 m!2023389))

(declare-fun m!2023391 () Bool)

(assert (=> d!502130 m!2023391))

(assert (=> d!502130 m!2023079))

(declare-fun m!2023393 () Bool)

(assert (=> b!1662281 m!2023393))

(assert (=> b!1662282 m!2023373))

(assert (=> b!1662282 m!2023379))

(assert (=> b!1662282 m!2023379))

(assert (=> b!1662282 m!2023381))

(assert (=> b!1662280 m!2023373))

(declare-fun m!2023395 () Bool)

(assert (=> b!1662280 m!2023395))

(assert (=> b!1662280 m!2023395))

(declare-fun m!2023397 () Bool)

(assert (=> b!1662280 m!2023397))

(assert (=> b!1662275 m!2023373))

(assert (=> b!1662275 m!2023379))

(assert (=> b!1662275 m!2023379))

(assert (=> b!1662275 m!2023381))

(assert (=> b!1662275 m!2023381))

(declare-fun m!2023399 () Bool)

(assert (=> b!1662275 m!2023399))

(assert (=> b!1662277 m!2023373))

(declare-fun m!2023401 () Bool)

(assert (=> b!1662277 m!2023401))

(assert (=> b!1661863 d!502130))

(declare-fun d!502132 () Bool)

(assert (=> d!502132 (= (head!3702 lt!623664) (h!23733 lt!623664))))

(assert (=> b!1661884 d!502132))

(declare-fun d!502134 () Bool)

(declare-fun c!270596 () Bool)

(assert (=> d!502134 (= c!270596 (isEmpty!11383 (++!4984 lt!623670 lt!623684)))))

(declare-fun e!1065632 () Bool)

(assert (=> d!502134 (= (prefixMatch!476 lt!623675 (++!4984 lt!623670 lt!623684)) e!1065632)))

(declare-fun b!1662284 () Bool)

(assert (=> b!1662284 (= e!1065632 (not (lostCause!474 lt!623675)))))

(declare-fun b!1662285 () Bool)

(assert (=> b!1662285 (= e!1065632 (prefixMatch!476 (derivativeStep!1124 lt!623675 (head!3702 (++!4984 lt!623670 lt!623684))) (tail!2474 (++!4984 lt!623670 lt!623684))))))

(assert (= (and d!502134 c!270596) b!1662284))

(assert (= (and d!502134 (not c!270596)) b!1662285))

(assert (=> d!502134 m!2022343))

(declare-fun m!2023403 () Bool)

(assert (=> d!502134 m!2023403))

(assert (=> b!1662284 m!2023141))

(assert (=> b!1662285 m!2022343))

(declare-fun m!2023405 () Bool)

(assert (=> b!1662285 m!2023405))

(assert (=> b!1662285 m!2023405))

(declare-fun m!2023407 () Bool)

(assert (=> b!1662285 m!2023407))

(assert (=> b!1662285 m!2022343))

(declare-fun m!2023409 () Bool)

(assert (=> b!1662285 m!2023409))

(assert (=> b!1662285 m!2023407))

(assert (=> b!1662285 m!2023409))

(declare-fun m!2023411 () Bool)

(assert (=> b!1662285 m!2023411))

(assert (=> b!1661885 d!502134))

(declare-fun e!1065633 () Bool)

(declare-fun lt!624480 () List!18402)

(declare-fun b!1662289 () Bool)

(assert (=> b!1662289 (= e!1065633 (or (not (= lt!623684 Nil!18332)) (= lt!624480 lt!623670)))))

(declare-fun b!1662288 () Bool)

(declare-fun res!745824 () Bool)

(assert (=> b!1662288 (=> (not res!745824) (not e!1065633))))

(assert (=> b!1662288 (= res!745824 (= (size!14585 lt!624480) (+ (size!14585 lt!623670) (size!14585 lt!623684))))))

(declare-fun b!1662287 () Bool)

(declare-fun e!1065634 () List!18402)

(assert (=> b!1662287 (= e!1065634 (Cons!18332 (h!23733 lt!623670) (++!4984 (t!151809 lt!623670) lt!623684)))))

(declare-fun b!1662286 () Bool)

(assert (=> b!1662286 (= e!1065634 lt!623684)))

(declare-fun d!502136 () Bool)

(assert (=> d!502136 e!1065633))

(declare-fun res!745825 () Bool)

(assert (=> d!502136 (=> (not res!745825) (not e!1065633))))

(assert (=> d!502136 (= res!745825 (= (content!2555 lt!624480) ((_ map or) (content!2555 lt!623670) (content!2555 lt!623684))))))

(assert (=> d!502136 (= lt!624480 e!1065634)))

(declare-fun c!270597 () Bool)

(assert (=> d!502136 (= c!270597 ((_ is Nil!18332) lt!623670))))

(assert (=> d!502136 (= (++!4984 lt!623670 lt!623684) lt!624480)))

(assert (= (and d!502136 c!270597) b!1662286))

(assert (= (and d!502136 (not c!270597)) b!1662287))

(assert (= (and d!502136 res!745825) b!1662288))

(assert (= (and b!1662288 res!745824) b!1662289))

(declare-fun m!2023413 () Bool)

(assert (=> b!1662288 m!2023413))

(assert (=> b!1662288 m!2022503))

(declare-fun m!2023415 () Bool)

(assert (=> b!1662288 m!2023415))

(declare-fun m!2023417 () Bool)

(assert (=> b!1662287 m!2023417))

(declare-fun m!2023419 () Bool)

(assert (=> d!502136 m!2023419))

(assert (=> d!502136 m!2022511))

(declare-fun m!2023421 () Bool)

(assert (=> d!502136 m!2023421))

(assert (=> b!1661885 d!502136))

(declare-fun d!502138 () Bool)

(assert (=> d!502138 (= (list!7317 lt!623682) (list!7320 (c!270503 lt!623682)))))

(declare-fun bs!397353 () Bool)

(assert (= bs!397353 d!502138))

(declare-fun m!2023423 () Bool)

(assert (=> bs!397353 m!2023423))

(assert (=> b!1661885 d!502138))

(declare-fun d!502140 () Bool)

(assert (=> d!502140 (= (get!5362 (maxPrefixZipper!358 thiss!17113 rules!1846 lt!623668)) (v!24729 (maxPrefixZipper!358 thiss!17113 rules!1846 lt!623668)))))

(assert (=> b!1661859 d!502140))

(declare-fun lt!624491 () Option!3511)

(declare-fun d!502142 () Bool)

(assert (=> d!502142 (= lt!624491 (maxPrefix!1422 thiss!17113 rules!1846 lt!623668))))

(declare-fun e!1065637 () Option!3511)

(assert (=> d!502142 (= lt!624491 e!1065637)))

(declare-fun c!270600 () Bool)

(assert (=> d!502142 (= c!270600 (and ((_ is Cons!18333) rules!1846) ((_ is Nil!18333) (t!151810 rules!1846))))))

(declare-fun lt!624493 () Unit!30961)

(declare-fun lt!624495 () Unit!30961)

(assert (=> d!502142 (= lt!624493 lt!624495)))

(assert (=> d!502142 (isPrefix!1489 lt!623668 lt!623668)))

(assert (=> d!502142 (= lt!624495 (lemmaIsPrefixRefl!1010 lt!623668 lt!623668))))

(assert (=> d!502142 (rulesValidInductive!1032 thiss!17113 rules!1846)))

(assert (=> d!502142 (= (maxPrefixZipper!358 thiss!17113 rules!1846 lt!623668) lt!624491)))

(declare-fun call!106457 () Option!3511)

(declare-fun bm!106452 () Bool)

(declare-fun maxPrefixOneRuleZipper!133 (LexerInterface!2860 Rule!6262 List!18402) Option!3511)

(assert (=> bm!106452 (= call!106457 (maxPrefixOneRuleZipper!133 thiss!17113 (h!23734 rules!1846) lt!623668))))

(declare-fun b!1662294 () Bool)

(assert (=> b!1662294 (= e!1065637 call!106457)))

(declare-fun b!1662295 () Bool)

(declare-fun lt!624494 () Option!3511)

(declare-fun lt!624492 () Option!3511)

(assert (=> b!1662295 (= e!1065637 (ite (and ((_ is None!3510) lt!624494) ((_ is None!3510) lt!624492)) None!3510 (ite ((_ is None!3510) lt!624492) lt!624494 (ite ((_ is None!3510) lt!624494) lt!624492 (ite (>= (size!14580 (_1!10425 (v!24729 lt!624494))) (size!14580 (_1!10425 (v!24729 lt!624492)))) lt!624494 lt!624492)))))))

(assert (=> b!1662295 (= lt!624494 call!106457)))

(assert (=> b!1662295 (= lt!624492 (maxPrefixZipper!358 thiss!17113 (t!151810 rules!1846) lt!623668))))

(assert (= (and d!502142 c!270600) b!1662294))

(assert (= (and d!502142 (not c!270600)) b!1662295))

(assert (= (or b!1662294 b!1662295) bm!106452))

(assert (=> d!502142 m!2022249))

(assert (=> d!502142 m!2023389))

(assert (=> d!502142 m!2023391))

(assert (=> d!502142 m!2023079))

(declare-fun m!2023425 () Bool)

(assert (=> bm!106452 m!2023425))

(declare-fun m!2023427 () Bool)

(assert (=> b!1662295 m!2023427))

(assert (=> b!1661859 d!502142))

(declare-fun d!502144 () Bool)

(declare-fun list!7322 (Conc!6111) List!18404)

(assert (=> d!502144 (= (list!7318 (_1!10427 lt!623655)) (list!7322 (c!270505 (_1!10427 lt!623655))))))

(declare-fun bs!397354 () Bool)

(assert (= bs!397354 d!502144))

(declare-fun m!2023429 () Bool)

(assert (=> bs!397354 m!2023429))

(assert (=> b!1661880 d!502144))

(declare-fun d!502146 () Bool)

(declare-fun e!1065690 () Bool)

(assert (=> d!502146 e!1065690))

(declare-fun res!745863 () Bool)

(assert (=> d!502146 (=> (not res!745863) (not e!1065690))))

(assert (=> d!502146 (= res!745863 (= (list!7318 (_1!10427 (lex!1344 thiss!17113 rules!1846 (print!1391 thiss!17113 (seqFromList!2201 (t!151811 tokens!457)))))) (t!151811 tokens!457)))))

(declare-fun lt!624590 () Unit!30961)

(declare-fun e!1065689 () Unit!30961)

(assert (=> d!502146 (= lt!624590 e!1065689)))

(declare-fun c!270618 () Bool)

(assert (=> d!502146 (= c!270618 (or ((_ is Nil!18334) (t!151811 tokens!457)) ((_ is Nil!18334) (t!151811 (t!151811 tokens!457)))))))

(assert (=> d!502146 (not (isEmpty!11381 rules!1846))))

(assert (=> d!502146 (= (theoremInvertabilityWhenTokenListSeparable!303 thiss!17113 rules!1846 (t!151811 tokens!457)) lt!624590)))

(declare-fun b!1662380 () Bool)

(declare-fun Unit!31013 () Unit!30961)

(assert (=> b!1662380 (= e!1065689 Unit!31013)))

(declare-fun b!1662381 () Bool)

(declare-fun Unit!31014 () Unit!30961)

(assert (=> b!1662381 (= e!1065689 Unit!31014)))

(declare-fun lt!624602 () BalanceConc!12164)

(assert (=> b!1662381 (= lt!624602 (print!1391 thiss!17113 (seqFromList!2201 (t!151811 tokens!457))))))

(declare-fun lt!624610 () BalanceConc!12164)

(assert (=> b!1662381 (= lt!624610 (print!1391 thiss!17113 (seqFromList!2201 (t!151811 (t!151811 tokens!457)))))))

(declare-fun lt!624605 () tuple2!18050)

(assert (=> b!1662381 (= lt!624605 (lex!1344 thiss!17113 rules!1846 lt!624610))))

(declare-fun lt!624592 () List!18402)

(assert (=> b!1662381 (= lt!624592 (list!7317 (charsOf!1880 (h!23735 (t!151811 tokens!457)))))))

(declare-fun lt!624598 () List!18402)

(assert (=> b!1662381 (= lt!624598 (list!7317 lt!624610))))

(declare-fun lt!624603 () Unit!30961)

(assert (=> b!1662381 (= lt!624603 (lemmaConcatTwoListThenFirstIsPrefix!1014 lt!624592 lt!624598))))

(assert (=> b!1662381 (isPrefix!1489 lt!624592 (++!4984 lt!624592 lt!624598))))

(declare-fun lt!624596 () Unit!30961)

(assert (=> b!1662381 (= lt!624596 lt!624603)))

(declare-fun lt!624600 () Unit!30961)

(assert (=> b!1662381 (= lt!624600 (theoremInvertabilityWhenTokenListSeparable!303 thiss!17113 rules!1846 (t!151811 (t!151811 tokens!457))))))

(declare-fun lt!624601 () Unit!30961)

(assert (=> b!1662381 (= lt!624601 (seqFromListBHdTlConstructive!306 (h!23735 (t!151811 (t!151811 tokens!457))) (t!151811 (t!151811 (t!151811 tokens!457))) (_1!10427 lt!624605)))))

(assert (=> b!1662381 (= (list!7318 (_1!10427 lt!624605)) (list!7318 (prepend!809 (seqFromList!2201 (t!151811 (t!151811 (t!151811 tokens!457)))) (h!23735 (t!151811 (t!151811 tokens!457))))))))

(declare-fun lt!624588 () Unit!30961)

(assert (=> b!1662381 (= lt!624588 lt!624601)))

(declare-fun lt!624593 () Option!3511)

(assert (=> b!1662381 (= lt!624593 (maxPrefix!1422 thiss!17113 rules!1846 (list!7317 lt!624602)))))

(assert (=> b!1662381 (= (print!1391 thiss!17113 (singletonSeq!1734 (h!23735 (t!151811 tokens!457)))) (printTailRec!911 thiss!17113 (singletonSeq!1734 (h!23735 (t!151811 tokens!457))) 0 (BalanceConc!12165 Empty!6110)))))

(declare-fun lt!624586 () Unit!30961)

(declare-fun Unit!31015 () Unit!30961)

(assert (=> b!1662381 (= lt!624586 Unit!31015)))

(declare-fun lt!624606 () Unit!30961)

(assert (=> b!1662381 (= lt!624606 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!428 thiss!17113 rules!1846 (list!7317 (charsOf!1880 (h!23735 (t!151811 tokens!457)))) (list!7317 lt!624610)))))

(assert (=> b!1662381 (= (list!7317 (charsOf!1880 (h!23735 (t!151811 tokens!457)))) (originalCharacters!4045 (h!23735 (t!151811 tokens!457))))))

(declare-fun lt!624607 () Unit!30961)

(declare-fun Unit!31016 () Unit!30961)

(assert (=> b!1662381 (= lt!624607 Unit!31016)))

(assert (=> b!1662381 (= (list!7317 (singletonSeq!1735 (apply!4896 (charsOf!1880 (h!23735 (t!151811 (t!151811 tokens!457)))) 0))) (Cons!18332 (head!3702 (originalCharacters!4045 (h!23735 (t!151811 (t!151811 tokens!457))))) Nil!18332))))

(declare-fun lt!624591 () Unit!30961)

(declare-fun Unit!31017 () Unit!30961)

(assert (=> b!1662381 (= lt!624591 Unit!31017)))

(assert (=> b!1662381 (= (list!7317 (singletonSeq!1735 (apply!4896 (charsOf!1880 (h!23735 (t!151811 (t!151811 tokens!457)))) 0))) (Cons!18332 (head!3702 (list!7317 lt!624610)) Nil!18332))))

(declare-fun lt!624608 () Unit!30961)

(declare-fun Unit!31018 () Unit!30961)

(assert (=> b!1662381 (= lt!624608 Unit!31018)))

(assert (=> b!1662381 (= (list!7317 (singletonSeq!1735 (apply!4896 (charsOf!1880 (h!23735 (t!151811 (t!151811 tokens!457)))) 0))) (Cons!18332 (head!3703 lt!624610) Nil!18332))))

(declare-fun lt!624587 () Unit!30961)

(declare-fun Unit!31019 () Unit!30961)

(assert (=> b!1662381 (= lt!624587 Unit!31019)))

(assert (=> b!1662381 (isDefined!2866 (maxPrefix!1422 thiss!17113 rules!1846 (originalCharacters!4045 (h!23735 (t!151811 tokens!457)))))))

(declare-fun lt!624609 () Unit!30961)

(declare-fun Unit!31020 () Unit!30961)

(assert (=> b!1662381 (= lt!624609 Unit!31020)))

(assert (=> b!1662381 (isDefined!2866 (maxPrefix!1422 thiss!17113 rules!1846 (list!7317 (charsOf!1880 (h!23735 (t!151811 tokens!457))))))))

(declare-fun lt!624589 () Unit!30961)

(declare-fun Unit!31021 () Unit!30961)

(assert (=> b!1662381 (= lt!624589 Unit!31021)))

(declare-fun lt!624597 () Unit!30961)

(declare-fun Unit!31022 () Unit!30961)

(assert (=> b!1662381 (= lt!624597 Unit!31022)))

(assert (=> b!1662381 (= (_1!10425 (get!5362 (maxPrefix!1422 thiss!17113 rules!1846 (list!7317 (charsOf!1880 (h!23735 (t!151811 tokens!457))))))) (h!23735 (t!151811 tokens!457)))))

(declare-fun lt!624595 () Unit!30961)

(declare-fun Unit!31023 () Unit!30961)

(assert (=> b!1662381 (= lt!624595 Unit!31023)))

(assert (=> b!1662381 (isEmpty!11383 (_2!10425 (get!5362 (maxPrefix!1422 thiss!17113 rules!1846 (list!7317 (charsOf!1880 (h!23735 (t!151811 tokens!457))))))))))

(declare-fun lt!624594 () Unit!30961)

(declare-fun Unit!31024 () Unit!30961)

(assert (=> b!1662381 (= lt!624594 Unit!31024)))

(assert (=> b!1662381 (matchR!2052 (regex!3231 (rule!5115 (h!23735 (t!151811 tokens!457)))) (list!7317 (charsOf!1880 (h!23735 (t!151811 tokens!457)))))))

(declare-fun lt!624611 () Unit!30961)

(declare-fun Unit!31025 () Unit!30961)

(assert (=> b!1662381 (= lt!624611 Unit!31025)))

(assert (=> b!1662381 (= (rule!5115 (h!23735 (t!151811 tokens!457))) (rule!5115 (h!23735 (t!151811 tokens!457))))))

(declare-fun lt!624599 () Unit!30961)

(declare-fun Unit!31026 () Unit!30961)

(assert (=> b!1662381 (= lt!624599 Unit!31026)))

(declare-fun lt!624604 () Unit!30961)

(assert (=> b!1662381 (= lt!624604 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!186 thiss!17113 rules!1846 (h!23735 (t!151811 tokens!457)) (rule!5115 (h!23735 (t!151811 tokens!457))) (list!7317 lt!624610)))))

(declare-fun b!1662382 () Bool)

(assert (=> b!1662382 (= e!1065690 (isEmpty!11384 (_2!10427 (lex!1344 thiss!17113 rules!1846 (print!1391 thiss!17113 (seqFromList!2201 (t!151811 tokens!457)))))))))

(assert (= (and d!502146 c!270618) b!1662380))

(assert (= (and d!502146 (not c!270618)) b!1662381))

(assert (= (and d!502146 res!745863) b!1662382))

(declare-fun m!2023569 () Bool)

(assert (=> d!502146 m!2023569))

(declare-fun m!2023571 () Bool)

(assert (=> d!502146 m!2023571))

(declare-fun m!2023573 () Bool)

(assert (=> d!502146 m!2023573))

(assert (=> d!502146 m!2022357))

(assert (=> d!502146 m!2022315))

(assert (=> d!502146 m!2022357))

(assert (=> d!502146 m!2023571))

(assert (=> b!1662381 m!2022331))

(declare-fun m!2023575 () Bool)

(assert (=> b!1662381 m!2023575))

(assert (=> b!1662381 m!2022357))

(assert (=> b!1662381 m!2023571))

(declare-fun m!2023577 () Bool)

(assert (=> b!1662381 m!2023577))

(declare-fun m!2023579 () Bool)

(assert (=> b!1662381 m!2023579))

(declare-fun m!2023581 () Bool)

(assert (=> b!1662381 m!2023581))

(declare-fun m!2023583 () Bool)

(assert (=> b!1662381 m!2023583))

(declare-fun m!2023585 () Bool)

(assert (=> b!1662381 m!2023585))

(declare-fun m!2023587 () Bool)

(assert (=> b!1662381 m!2023587))

(declare-fun m!2023589 () Bool)

(assert (=> b!1662381 m!2023589))

(assert (=> b!1662381 m!2023577))

(declare-fun m!2023591 () Bool)

(assert (=> b!1662381 m!2023591))

(assert (=> b!1662381 m!2023587))

(declare-fun m!2023593 () Bool)

(assert (=> b!1662381 m!2023593))

(declare-fun m!2023595 () Bool)

(assert (=> b!1662381 m!2023595))

(assert (=> b!1662381 m!2022327))

(assert (=> b!1662381 m!2023577))

(assert (=> b!1662381 m!2023579))

(declare-fun m!2023597 () Bool)

(assert (=> b!1662381 m!2023597))

(declare-fun m!2023599 () Bool)

(assert (=> b!1662381 m!2023599))

(declare-fun m!2023601 () Bool)

(assert (=> b!1662381 m!2023601))

(declare-fun m!2023603 () Bool)

(assert (=> b!1662381 m!2023603))

(declare-fun m!2023605 () Bool)

(assert (=> b!1662381 m!2023605))

(assert (=> b!1662381 m!2023583))

(assert (=> b!1662381 m!2023593))

(declare-fun m!2023607 () Bool)

(assert (=> b!1662381 m!2023607))

(assert (=> b!1662381 m!2023579))

(declare-fun m!2023609 () Bool)

(assert (=> b!1662381 m!2023609))

(assert (=> b!1662381 m!2023585))

(declare-fun m!2023611 () Bool)

(assert (=> b!1662381 m!2023611))

(declare-fun m!2023613 () Bool)

(assert (=> b!1662381 m!2023613))

(declare-fun m!2023615 () Bool)

(assert (=> b!1662381 m!2023615))

(declare-fun m!2023617 () Bool)

(assert (=> b!1662381 m!2023617))

(assert (=> b!1662381 m!2023589))

(declare-fun m!2023619 () Bool)

(assert (=> b!1662381 m!2023619))

(declare-fun m!2023621 () Bool)

(assert (=> b!1662381 m!2023621))

(declare-fun m!2023623 () Bool)

(assert (=> b!1662381 m!2023623))

(assert (=> b!1662381 m!2023577))

(assert (=> b!1662381 m!2023593))

(assert (=> b!1662381 m!2022331))

(assert (=> b!1662381 m!2023623))

(declare-fun m!2023625 () Bool)

(assert (=> b!1662381 m!2023625))

(declare-fun m!2023627 () Bool)

(assert (=> b!1662381 m!2023627))

(assert (=> b!1662381 m!2022357))

(assert (=> b!1662381 m!2023601))

(assert (=> b!1662381 m!2023605))

(assert (=> b!1662381 m!2023599))

(declare-fun m!2023629 () Bool)

(assert (=> b!1662381 m!2023629))

(assert (=> b!1662381 m!2022327))

(assert (=> b!1662381 m!2023615))

(declare-fun m!2023631 () Bool)

(assert (=> b!1662381 m!2023631))

(assert (=> b!1662381 m!2023599))

(declare-fun m!2023633 () Bool)

(assert (=> b!1662381 m!2023633))

(declare-fun m!2023635 () Bool)

(assert (=> b!1662381 m!2023635))

(declare-fun m!2023637 () Bool)

(assert (=> b!1662381 m!2023637))

(declare-fun m!2023639 () Bool)

(assert (=> b!1662381 m!2023639))

(assert (=> b!1662381 m!2023579))

(declare-fun m!2023641 () Bool)

(assert (=> b!1662381 m!2023641))

(assert (=> b!1662382 m!2022357))

(assert (=> b!1662382 m!2022357))

(assert (=> b!1662382 m!2023571))

(assert (=> b!1662382 m!2023571))

(assert (=> b!1662382 m!2023573))

(declare-fun m!2023643 () Bool)

(assert (=> b!1662382 m!2023643))

(assert (=> b!1661880 d!502146))

(declare-fun b!1662391 () Bool)

(declare-fun e!1065697 () Bool)

(declare-fun e!1065698 () Bool)

(assert (=> b!1662391 (= e!1065697 e!1065698)))

(declare-fun res!745874 () Bool)

(assert (=> b!1662391 (=> (not res!745874) (not e!1065698))))

(assert (=> b!1662391 (= res!745874 (not ((_ is Nil!18332) lt!623660)))))

(declare-fun b!1662394 () Bool)

(declare-fun e!1065699 () Bool)

(assert (=> b!1662394 (= e!1065699 (>= (size!14585 lt!623660) (size!14585 lt!623670)))))

(declare-fun b!1662393 () Bool)

(assert (=> b!1662393 (= e!1065698 (isPrefix!1489 (tail!2474 lt!623670) (tail!2474 lt!623660)))))

(declare-fun d!502178 () Bool)

(assert (=> d!502178 e!1065699))

(declare-fun res!745872 () Bool)

(assert (=> d!502178 (=> res!745872 e!1065699)))

(declare-fun lt!624614 () Bool)

(assert (=> d!502178 (= res!745872 (not lt!624614))))

(assert (=> d!502178 (= lt!624614 e!1065697)))

(declare-fun res!745873 () Bool)

(assert (=> d!502178 (=> res!745873 e!1065697)))

(assert (=> d!502178 (= res!745873 ((_ is Nil!18332) lt!623670))))

(assert (=> d!502178 (= (isPrefix!1489 lt!623670 lt!623660) lt!624614)))

(declare-fun b!1662392 () Bool)

(declare-fun res!745875 () Bool)

(assert (=> b!1662392 (=> (not res!745875) (not e!1065698))))

(assert (=> b!1662392 (= res!745875 (= (head!3702 lt!623670) (head!3702 lt!623660)))))

(assert (= (and d!502178 (not res!745873)) b!1662391))

(assert (= (and b!1662391 res!745874) b!1662392))

(assert (= (and b!1662392 res!745875) b!1662393))

(assert (= (and d!502178 (not res!745872)) b!1662394))

(declare-fun m!2023645 () Bool)

(assert (=> b!1662394 m!2023645))

(assert (=> b!1662394 m!2022503))

(declare-fun m!2023647 () Bool)

(assert (=> b!1662393 m!2023647))

(declare-fun m!2023649 () Bool)

(assert (=> b!1662393 m!2023649))

(assert (=> b!1662393 m!2023647))

(assert (=> b!1662393 m!2023649))

(declare-fun m!2023651 () Bool)

(assert (=> b!1662393 m!2023651))

(declare-fun m!2023653 () Bool)

(assert (=> b!1662392 m!2023653))

(declare-fun m!2023655 () Bool)

(assert (=> b!1662392 m!2023655))

(assert (=> b!1661880 d!502178))

(declare-fun d!502180 () Bool)

(assert (=> d!502180 (isPrefix!1489 lt!623670 (++!4984 lt!623670 lt!623664))))

(declare-fun lt!624617 () Unit!30961)

(declare-fun choose!10004 (List!18402 List!18402) Unit!30961)

(assert (=> d!502180 (= lt!624617 (choose!10004 lt!623670 lt!623664))))

(assert (=> d!502180 (= (lemmaConcatTwoListThenFirstIsPrefix!1014 lt!623670 lt!623664) lt!624617)))

(declare-fun bs!397359 () Bool)

(assert (= bs!397359 d!502180))

(assert (=> bs!397359 m!2022365))

(assert (=> bs!397359 m!2022365))

(declare-fun m!2023657 () Bool)

(assert (=> bs!397359 m!2023657))

(declare-fun m!2023659 () Bool)

(assert (=> bs!397359 m!2023659))

(assert (=> b!1661880 d!502180))

(declare-fun d!502182 () Bool)

(assert (=> d!502182 (= (head!3702 (originalCharacters!4045 (h!23735 (t!151811 tokens!457)))) (h!23733 (originalCharacters!4045 (h!23735 (t!151811 tokens!457)))))))

(assert (=> b!1661881 d!502182))

(declare-fun d!502184 () Bool)

(assert (=> d!502184 (= (list!7317 (_2!10426 lt!623661)) (list!7320 (c!270503 (_2!10426 lt!623661))))))

(declare-fun bs!397360 () Bool)

(assert (= bs!397360 d!502184))

(declare-fun m!2023661 () Bool)

(assert (=> bs!397360 m!2023661))

(assert (=> b!1661860 d!502184))

(declare-fun b!1662405 () Bool)

(declare-fun res!745878 () Bool)

(declare-fun e!1065708 () Bool)

(assert (=> b!1662405 (=> res!745878 e!1065708)))

(assert (=> b!1662405 (= res!745878 (not ((_ is IntegerValue!9965) (value!101756 (h!23735 tokens!457)))))))

(declare-fun e!1065707 () Bool)

(assert (=> b!1662405 (= e!1065707 e!1065708)))

(declare-fun b!1662406 () Bool)

(declare-fun e!1065706 () Bool)

(assert (=> b!1662406 (= e!1065706 e!1065707)))

(declare-fun c!270623 () Bool)

(assert (=> b!1662406 (= c!270623 ((_ is IntegerValue!9964) (value!101756 (h!23735 tokens!457))))))

(declare-fun b!1662407 () Bool)

(declare-fun inv!15 (TokenValue!3321) Bool)

(assert (=> b!1662407 (= e!1065708 (inv!15 (value!101756 (h!23735 tokens!457))))))

(declare-fun d!502186 () Bool)

(declare-fun c!270624 () Bool)

(assert (=> d!502186 (= c!270624 ((_ is IntegerValue!9963) (value!101756 (h!23735 tokens!457))))))

(assert (=> d!502186 (= (inv!21 (value!101756 (h!23735 tokens!457))) e!1065706)))

(declare-fun b!1662408 () Bool)

(declare-fun inv!17 (TokenValue!3321) Bool)

(assert (=> b!1662408 (= e!1065707 (inv!17 (value!101756 (h!23735 tokens!457))))))

(declare-fun b!1662409 () Bool)

(declare-fun inv!16 (TokenValue!3321) Bool)

(assert (=> b!1662409 (= e!1065706 (inv!16 (value!101756 (h!23735 tokens!457))))))

(assert (= (and d!502186 c!270624) b!1662409))

(assert (= (and d!502186 (not c!270624)) b!1662406))

(assert (= (and b!1662406 c!270623) b!1662408))

(assert (= (and b!1662406 (not c!270623)) b!1662405))

(assert (= (and b!1662405 (not res!745878)) b!1662407))

(declare-fun m!2023663 () Bool)

(assert (=> b!1662407 m!2023663))

(declare-fun m!2023665 () Bool)

(assert (=> b!1662408 m!2023665))

(declare-fun m!2023667 () Bool)

(assert (=> b!1662409 m!2023667))

(assert (=> b!1661861 d!502186))

(declare-fun d!502188 () Bool)

(assert (=> d!502188 (= (inv!23676 (tag!3515 (rule!5115 (h!23735 tokens!457)))) (= (mod (str.len (value!101755 (tag!3515 (rule!5115 (h!23735 tokens!457))))) 2) 0))))

(assert (=> b!1661882 d!502188))

(declare-fun d!502190 () Bool)

(declare-fun res!745881 () Bool)

(declare-fun e!1065711 () Bool)

(assert (=> d!502190 (=> (not res!745881) (not e!1065711))))

(declare-fun semiInverseModEq!1256 (Int Int) Bool)

(assert (=> d!502190 (= res!745881 (semiInverseModEq!1256 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (toValue!4686 (transformation!3231 (rule!5115 (h!23735 tokens!457))))))))

(assert (=> d!502190 (= (inv!23679 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) e!1065711)))

(declare-fun b!1662412 () Bool)

(declare-fun equivClasses!1197 (Int Int) Bool)

(assert (=> b!1662412 (= e!1065711 (equivClasses!1197 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (toValue!4686 (transformation!3231 (rule!5115 (h!23735 tokens!457))))))))

(assert (= (and d!502190 res!745881) b!1662412))

(declare-fun m!2023669 () Bool)

(assert (=> d!502190 m!2023669))

(declare-fun m!2023671 () Bool)

(assert (=> b!1662412 m!2023671))

(assert (=> b!1661882 d!502190))

(declare-fun d!502192 () Bool)

(assert (=> d!502192 (= (list!7318 (_1!10427 lt!623655)) (list!7318 (prepend!809 (seqFromList!2201 (t!151811 (t!151811 tokens!457))) (h!23735 (t!151811 tokens!457)))))))

(declare-fun lt!624620 () Unit!30961)

(declare-fun choose!10005 (Token!6028 List!18404 BalanceConc!12166) Unit!30961)

(assert (=> d!502192 (= lt!624620 (choose!10005 (h!23735 (t!151811 tokens!457)) (t!151811 (t!151811 tokens!457)) (_1!10427 lt!623655)))))

(declare-fun $colon$colon!386 (List!18404 Token!6028) List!18404)

(assert (=> d!502192 (= (list!7318 (_1!10427 lt!623655)) (list!7318 (seqFromList!2201 ($colon$colon!386 (t!151811 (t!151811 tokens!457)) (h!23735 (t!151811 tokens!457))))))))

(assert (=> d!502192 (= (seqFromListBHdTlConstructive!306 (h!23735 (t!151811 tokens!457)) (t!151811 (t!151811 tokens!457)) (_1!10427 lt!623655)) lt!624620)))

(declare-fun bs!397361 () Bool)

(assert (= bs!397361 d!502192))

(declare-fun m!2023673 () Bool)

(assert (=> bs!397361 m!2023673))

(declare-fun m!2023675 () Bool)

(assert (=> bs!397361 m!2023675))

(assert (=> bs!397361 m!2023675))

(declare-fun m!2023677 () Bool)

(assert (=> bs!397361 m!2023677))

(declare-fun m!2023679 () Bool)

(assert (=> bs!397361 m!2023679))

(assert (=> bs!397361 m!2022333))

(declare-fun m!2023681 () Bool)

(assert (=> bs!397361 m!2023681))

(assert (=> bs!397361 m!2022331))

(assert (=> bs!397361 m!2023673))

(assert (=> bs!397361 m!2022297))

(assert (=> bs!397361 m!2022331))

(assert (=> bs!397361 m!2022333))

(assert (=> b!1661867 d!502192))

(declare-fun d!502194 () Bool)

(declare-fun e!1065714 () Bool)

(assert (=> d!502194 e!1065714))

(declare-fun res!745884 () Bool)

(assert (=> d!502194 (=> (not res!745884) (not e!1065714))))

(declare-fun prepend!811 (Conc!6111 Token!6028) Conc!6111)

(assert (=> d!502194 (= res!745884 (isBalanced!1888 (prepend!811 (c!270505 (seqFromList!2201 (t!151811 (t!151811 tokens!457)))) (h!23735 (t!151811 tokens!457)))))))

(declare-fun lt!624623 () BalanceConc!12166)

(assert (=> d!502194 (= lt!624623 (BalanceConc!12167 (prepend!811 (c!270505 (seqFromList!2201 (t!151811 (t!151811 tokens!457)))) (h!23735 (t!151811 tokens!457)))))))

(assert (=> d!502194 (= (prepend!809 (seqFromList!2201 (t!151811 (t!151811 tokens!457))) (h!23735 (t!151811 tokens!457))) lt!624623)))

(declare-fun b!1662415 () Bool)

(assert (=> b!1662415 (= e!1065714 (= (list!7318 lt!624623) (Cons!18334 (h!23735 (t!151811 tokens!457)) (list!7318 (seqFromList!2201 (t!151811 (t!151811 tokens!457)))))))))

(assert (= (and d!502194 res!745884) b!1662415))

(declare-fun m!2023683 () Bool)

(assert (=> d!502194 m!2023683))

(assert (=> d!502194 m!2023683))

(declare-fun m!2023685 () Bool)

(assert (=> d!502194 m!2023685))

(declare-fun m!2023687 () Bool)

(assert (=> b!1662415 m!2023687))

(assert (=> b!1662415 m!2022331))

(declare-fun m!2023689 () Bool)

(assert (=> b!1662415 m!2023689))

(assert (=> b!1661867 d!502194))

(declare-fun d!502196 () Bool)

(assert (=> d!502196 (= (list!7318 lt!623683) (list!7322 (c!270505 lt!623683)))))

(declare-fun bs!397362 () Bool)

(assert (= bs!397362 d!502196))

(declare-fun m!2023691 () Bool)

(assert (=> bs!397362 m!2023691))

(assert (=> b!1661867 d!502196))

(declare-fun d!502198 () Bool)

(assert (=> d!502198 (= (seqFromList!2201 (t!151811 (t!151811 tokens!457))) (fromListB!992 (t!151811 (t!151811 tokens!457))))))

(declare-fun bs!397363 () Bool)

(assert (= bs!397363 d!502198))

(declare-fun m!2023693 () Bool)

(assert (=> bs!397363 m!2023693))

(assert (=> b!1661867 d!502198))

(declare-fun d!502200 () Bool)

(assert (=> d!502200 (= (list!7318 lt!623678) (list!7322 (c!270505 lt!623678)))))

(declare-fun bs!397364 () Bool)

(assert (= bs!397364 d!502200))

(declare-fun m!2023695 () Bool)

(assert (=> bs!397364 m!2023695))

(assert (=> b!1661867 d!502200))

(declare-fun d!502202 () Bool)

(assert (=> d!502202 (= (list!7318 lt!623656) (list!7322 (c!270505 lt!623656)))))

(declare-fun bs!397365 () Bool)

(assert (= bs!397365 d!502202))

(declare-fun m!2023697 () Bool)

(assert (=> bs!397365 m!2023697))

(assert (=> b!1661888 d!502202))

(declare-fun d!502204 () Bool)

(assert (=> d!502204 (= (list!7318 (_1!10427 lt!623676)) (list!7322 (c!270505 (_1!10427 lt!623676))))))

(declare-fun bs!397366 () Bool)

(assert (= bs!397366 d!502204))

(declare-fun m!2023699 () Bool)

(assert (=> bs!397366 m!2023699))

(assert (=> b!1661888 d!502204))

(declare-fun d!502206 () Bool)

(declare-fun e!1065715 () Bool)

(assert (=> d!502206 e!1065715))

(declare-fun res!745885 () Bool)

(assert (=> d!502206 (=> (not res!745885) (not e!1065715))))

(assert (=> d!502206 (= res!745885 (isBalanced!1888 (prepend!811 (c!270505 (_1!10427 lt!623655)) (h!23735 tokens!457))))))

(declare-fun lt!624624 () BalanceConc!12166)

(assert (=> d!502206 (= lt!624624 (BalanceConc!12167 (prepend!811 (c!270505 (_1!10427 lt!623655)) (h!23735 tokens!457))))))

(assert (=> d!502206 (= (prepend!809 (_1!10427 lt!623655) (h!23735 tokens!457)) lt!624624)))

(declare-fun b!1662416 () Bool)

(assert (=> b!1662416 (= e!1065715 (= (list!7318 lt!624624) (Cons!18334 (h!23735 tokens!457) (list!7318 (_1!10427 lt!623655)))))))

(assert (= (and d!502206 res!745885) b!1662416))

(declare-fun m!2023701 () Bool)

(assert (=> d!502206 m!2023701))

(assert (=> d!502206 m!2023701))

(declare-fun m!2023703 () Bool)

(assert (=> d!502206 m!2023703))

(declare-fun m!2023705 () Bool)

(assert (=> b!1662416 m!2023705))

(assert (=> b!1662416 m!2022297))

(assert (=> b!1661888 d!502206))

(declare-fun b!1662418 () Bool)

(declare-fun e!1065718 () Bool)

(declare-fun lt!624625 () tuple2!18050)

(assert (=> b!1662418 (= e!1065718 (not (isEmpty!11382 (_1!10427 lt!624625))))))

(declare-fun b!1662419 () Bool)

(declare-fun e!1065716 () Bool)

(assert (=> b!1662419 (= e!1065716 e!1065718)))

(declare-fun res!745886 () Bool)

(assert (=> b!1662419 (= res!745886 (< (size!14583 (_2!10427 lt!624625)) (size!14583 lt!623657)))))

(assert (=> b!1662419 (=> (not res!745886) (not e!1065718))))

(declare-fun b!1662420 () Bool)

(declare-fun res!745888 () Bool)

(declare-fun e!1065717 () Bool)

(assert (=> b!1662420 (=> (not res!745888) (not e!1065717))))

(assert (=> b!1662420 (= res!745888 (= (list!7318 (_1!10427 lt!624625)) (_1!10428 (lexList!884 thiss!17113 rules!1846 (list!7317 lt!623657)))))))

(declare-fun b!1662421 () Bool)

(assert (=> b!1662421 (= e!1065717 (= (list!7317 (_2!10427 lt!624625)) (_2!10428 (lexList!884 thiss!17113 rules!1846 (list!7317 lt!623657)))))))

(declare-fun b!1662417 () Bool)

(assert (=> b!1662417 (= e!1065716 (= (_2!10427 lt!624625) lt!623657))))

(declare-fun d!502208 () Bool)

(assert (=> d!502208 e!1065717))

(declare-fun res!745887 () Bool)

(assert (=> d!502208 (=> (not res!745887) (not e!1065717))))

(assert (=> d!502208 (= res!745887 e!1065716)))

(declare-fun c!270626 () Bool)

(assert (=> d!502208 (= c!270626 (> (size!14584 (_1!10427 lt!624625)) 0))))

(assert (=> d!502208 (= lt!624625 (lexTailRecV2!607 thiss!17113 rules!1846 lt!623657 (BalanceConc!12165 Empty!6110) lt!623657 (BalanceConc!12167 Empty!6111)))))

(assert (=> d!502208 (= (lex!1344 thiss!17113 rules!1846 lt!623657) lt!624625)))

(assert (= (and d!502208 c!270626) b!1662419))

(assert (= (and d!502208 (not c!270626)) b!1662417))

(assert (= (and b!1662419 res!745886) b!1662418))

(assert (= (and d!502208 res!745887) b!1662420))

(assert (= (and b!1662420 res!745888) b!1662421))

(declare-fun m!2023707 () Bool)

(assert (=> b!1662419 m!2023707))

(declare-fun m!2023709 () Bool)

(assert (=> b!1662419 m!2023709))

(declare-fun m!2023711 () Bool)

(assert (=> b!1662421 m!2023711))

(assert (=> b!1662421 m!2022367))

(assert (=> b!1662421 m!2022367))

(declare-fun m!2023713 () Bool)

(assert (=> b!1662421 m!2023713))

(declare-fun m!2023715 () Bool)

(assert (=> b!1662418 m!2023715))

(declare-fun m!2023717 () Bool)

(assert (=> d!502208 m!2023717))

(declare-fun m!2023719 () Bool)

(assert (=> d!502208 m!2023719))

(declare-fun m!2023721 () Bool)

(assert (=> b!1662420 m!2023721))

(assert (=> b!1662420 m!2022367))

(assert (=> b!1662420 m!2022367))

(assert (=> b!1662420 m!2023713))

(assert (=> b!1661888 d!502208))

(declare-fun d!502210 () Bool)

(assert (=> d!502210 (= (list!7318 (prepend!809 lt!623678 (h!23735 tokens!457))) (list!7322 (c!270505 (prepend!809 lt!623678 (h!23735 tokens!457)))))))

(declare-fun bs!397367 () Bool)

(assert (= bs!397367 d!502210))

(declare-fun m!2023723 () Bool)

(assert (=> bs!397367 m!2023723))

(assert (=> b!1661869 d!502210))

(declare-fun d!502212 () Bool)

(declare-fun e!1065719 () Bool)

(assert (=> d!502212 e!1065719))

(declare-fun res!745889 () Bool)

(assert (=> d!502212 (=> (not res!745889) (not e!1065719))))

(assert (=> d!502212 (= res!745889 (isBalanced!1888 (prepend!811 (c!270505 lt!623678) (h!23735 tokens!457))))))

(declare-fun lt!624626 () BalanceConc!12166)

(assert (=> d!502212 (= lt!624626 (BalanceConc!12167 (prepend!811 (c!270505 lt!623678) (h!23735 tokens!457))))))

(assert (=> d!502212 (= (prepend!809 lt!623678 (h!23735 tokens!457)) lt!624626)))

(declare-fun b!1662422 () Bool)

(assert (=> b!1662422 (= e!1065719 (= (list!7318 lt!624626) (Cons!18334 (h!23735 tokens!457) (list!7318 lt!623678))))))

(assert (= (and d!502212 res!745889) b!1662422))

(declare-fun m!2023725 () Bool)

(assert (=> d!502212 m!2023725))

(assert (=> d!502212 m!2023725))

(declare-fun m!2023727 () Bool)

(assert (=> d!502212 m!2023727))

(declare-fun m!2023729 () Bool)

(assert (=> b!1662422 m!2023729))

(assert (=> b!1662422 m!2022337))

(assert (=> b!1661869 d!502212))

(declare-fun d!502214 () Bool)

(declare-fun isEmpty!11390 (Option!3512) Bool)

(assert (=> d!502214 (= (isDefined!2867 (maxPrefixZipperSequence!737 thiss!17113 rules!1846 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457))))) (not (isEmpty!11390 (maxPrefixZipperSequence!737 thiss!17113 rules!1846 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))))

(declare-fun bs!397368 () Bool)

(assert (= bs!397368 d!502214))

(assert (=> bs!397368 m!2022243))

(declare-fun m!2023731 () Bool)

(assert (=> bs!397368 m!2023731))

(assert (=> b!1661890 d!502214))

(declare-fun b!1662474 () Bool)

(declare-fun e!1065761 () Option!3512)

(declare-fun lt!624680 () Option!3512)

(declare-fun lt!624678 () Option!3512)

(assert (=> b!1662474 (= e!1065761 (ite (and ((_ is None!3511) lt!624680) ((_ is None!3511) lt!624678)) None!3511 (ite ((_ is None!3511) lt!624678) lt!624680 (ite ((_ is None!3511) lt!624680) lt!624678 (ite (>= (size!14580 (_1!10426 (v!24730 lt!624680))) (size!14580 (_1!10426 (v!24730 lt!624678)))) lt!624680 lt!624678)))))))

(declare-fun call!106465 () Option!3512)

(assert (=> b!1662474 (= lt!624680 call!106465)))

(assert (=> b!1662474 (= lt!624678 (maxPrefixZipperSequence!737 thiss!17113 (t!151810 rules!1846) (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))

(declare-fun lt!624681 () Option!3512)

(declare-fun e!1065762 () Bool)

(declare-fun b!1662475 () Bool)

(assert (=> b!1662475 (= e!1065762 (= (list!7317 (_2!10426 (get!5363 lt!624681))) (_2!10425 (get!5362 (maxPrefixZipper!358 thiss!17113 rules!1846 (list!7317 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))))))

(declare-fun b!1662476 () Bool)

(declare-fun e!1065763 () Bool)

(declare-fun e!1065760 () Bool)

(assert (=> b!1662476 (= e!1065763 e!1065760)))

(declare-fun res!745929 () Bool)

(assert (=> b!1662476 (=> (not res!745929) (not e!1065760))))

(assert (=> b!1662476 (= res!745929 (= (_1!10426 (get!5363 lt!624681)) (_1!10425 (get!5362 (maxPrefix!1422 thiss!17113 rules!1846 (list!7317 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))))))

(declare-fun b!1662477 () Bool)

(declare-fun res!745934 () Bool)

(declare-fun e!1065759 () Bool)

(assert (=> b!1662477 (=> (not res!745934) (not e!1065759))))

(declare-fun e!1065764 () Bool)

(assert (=> b!1662477 (= res!745934 e!1065764)))

(declare-fun res!745931 () Bool)

(assert (=> b!1662477 (=> res!745931 e!1065764)))

(assert (=> b!1662477 (= res!745931 (not (isDefined!2867 lt!624681)))))

(declare-fun b!1662478 () Bool)

(assert (=> b!1662478 (= e!1065764 e!1065762)))

(declare-fun res!745932 () Bool)

(assert (=> b!1662478 (=> (not res!745932) (not e!1065762))))

(assert (=> b!1662478 (= res!745932 (= (_1!10426 (get!5363 lt!624681)) (_1!10425 (get!5362 (maxPrefixZipper!358 thiss!17113 rules!1846 (list!7317 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))))))

(declare-fun b!1662479 () Bool)

(assert (=> b!1662479 (= e!1065759 e!1065763)))

(declare-fun res!745930 () Bool)

(assert (=> b!1662479 (=> res!745930 e!1065763)))

(assert (=> b!1662479 (= res!745930 (not (isDefined!2867 lt!624681)))))

(declare-fun b!1662480 () Bool)

(assert (=> b!1662480 (= e!1065761 call!106465)))

(declare-fun b!1662481 () Bool)

(assert (=> b!1662481 (= e!1065760 (= (list!7317 (_2!10426 (get!5363 lt!624681))) (_2!10425 (get!5362 (maxPrefix!1422 thiss!17113 rules!1846 (list!7317 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))))))

(declare-fun bm!106460 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!349 (LexerInterface!2860 Rule!6262 BalanceConc!12164) Option!3512)

(assert (=> bm!106460 (= call!106465 (maxPrefixOneRuleZipperSequence!349 thiss!17113 (h!23734 rules!1846) (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))

(declare-fun d!502216 () Bool)

(assert (=> d!502216 e!1065759))

(declare-fun res!745933 () Bool)

(assert (=> d!502216 (=> (not res!745933) (not e!1065759))))

(assert (=> d!502216 (= res!745933 (= (isDefined!2867 lt!624681) (isDefined!2866 (maxPrefixZipper!358 thiss!17113 rules!1846 (list!7317 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457))))))))))

(assert (=> d!502216 (= lt!624681 e!1065761)))

(declare-fun c!270633 () Bool)

(assert (=> d!502216 (= c!270633 (and ((_ is Cons!18333) rules!1846) ((_ is Nil!18333) (t!151810 rules!1846))))))

(declare-fun lt!624677 () Unit!30961)

(declare-fun lt!624676 () Unit!30961)

(assert (=> d!502216 (= lt!624677 lt!624676)))

(declare-fun lt!624679 () List!18402)

(declare-fun lt!624675 () List!18402)

(assert (=> d!502216 (isPrefix!1489 lt!624679 lt!624675)))

(assert (=> d!502216 (= lt!624676 (lemmaIsPrefixRefl!1010 lt!624679 lt!624675))))

(assert (=> d!502216 (= lt!624675 (list!7317 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))

(assert (=> d!502216 (= lt!624679 (list!7317 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))))))

(assert (=> d!502216 (rulesValidInductive!1032 thiss!17113 rules!1846)))

(assert (=> d!502216 (= (maxPrefixZipperSequence!737 thiss!17113 rules!1846 (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457)))) lt!624681)))

(assert (= (and d!502216 c!270633) b!1662480))

(assert (= (and d!502216 (not c!270633)) b!1662474))

(assert (= (or b!1662480 b!1662474) bm!106460))

(assert (= (and d!502216 res!745933) b!1662477))

(assert (= (and b!1662477 (not res!745931)) b!1662478))

(assert (= (and b!1662478 res!745932) b!1662475))

(assert (= (and b!1662477 res!745934) b!1662479))

(assert (= (and b!1662479 (not res!745930)) b!1662476))

(assert (= (and b!1662476 res!745929) b!1662481))

(assert (=> bm!106460 m!2022241))

(declare-fun m!2023797 () Bool)

(assert (=> bm!106460 m!2023797))

(declare-fun m!2023799 () Bool)

(assert (=> d!502216 m!2023799))

(declare-fun m!2023801 () Bool)

(assert (=> d!502216 m!2023801))

(declare-fun m!2023803 () Bool)

(assert (=> d!502216 m!2023803))

(declare-fun m!2023805 () Bool)

(assert (=> d!502216 m!2023805))

(assert (=> d!502216 m!2023801))

(declare-fun m!2023807 () Bool)

(assert (=> d!502216 m!2023807))

(declare-fun m!2023809 () Bool)

(assert (=> d!502216 m!2023809))

(assert (=> d!502216 m!2022241))

(assert (=> d!502216 m!2023805))

(assert (=> d!502216 m!2023079))

(assert (=> b!1662475 m!2023805))

(assert (=> b!1662475 m!2023801))

(declare-fun m!2023811 () Bool)

(assert (=> b!1662475 m!2023811))

(assert (=> b!1662475 m!2023801))

(declare-fun m!2023813 () Bool)

(assert (=> b!1662475 m!2023813))

(assert (=> b!1662475 m!2022241))

(assert (=> b!1662475 m!2023805))

(declare-fun m!2023815 () Bool)

(assert (=> b!1662475 m!2023815))

(assert (=> b!1662478 m!2023811))

(assert (=> b!1662478 m!2022241))

(assert (=> b!1662478 m!2023805))

(assert (=> b!1662478 m!2023805))

(assert (=> b!1662478 m!2023801))

(assert (=> b!1662478 m!2023801))

(assert (=> b!1662478 m!2023813))

(assert (=> b!1662476 m!2023811))

(assert (=> b!1662476 m!2022241))

(assert (=> b!1662476 m!2023805))

(assert (=> b!1662476 m!2023805))

(declare-fun m!2023817 () Bool)

(assert (=> b!1662476 m!2023817))

(assert (=> b!1662476 m!2023817))

(declare-fun m!2023819 () Bool)

(assert (=> b!1662476 m!2023819))

(assert (=> b!1662481 m!2023817))

(assert (=> b!1662481 m!2023819))

(assert (=> b!1662481 m!2023805))

(assert (=> b!1662481 m!2023817))

(assert (=> b!1662481 m!2023811))

(assert (=> b!1662481 m!2022241))

(assert (=> b!1662481 m!2023805))

(assert (=> b!1662481 m!2023815))

(assert (=> b!1662477 m!2023809))

(assert (=> b!1662474 m!2022241))

(declare-fun m!2023821 () Bool)

(assert (=> b!1662474 m!2023821))

(assert (=> b!1662479 m!2023809))

(assert (=> b!1661890 d!502216))

(declare-fun d!502230 () Bool)

(assert (=> d!502230 (= (seqFromList!2202 (originalCharacters!4045 (h!23735 tokens!457))) (fromListB!993 (originalCharacters!4045 (h!23735 tokens!457))))))

(declare-fun bs!397371 () Bool)

(assert (= bs!397371 d!502230))

(declare-fun m!2023823 () Bool)

(assert (=> bs!397371 m!2023823))

(assert (=> b!1661890 d!502230))

(declare-fun d!502232 () Bool)

(declare-fun lt!624704 () C!9292)

(assert (=> d!502232 (= lt!624704 (head!3702 (list!7317 lt!623677)))))

(declare-fun head!3706 (Conc!6110) C!9292)

(assert (=> d!502232 (= lt!624704 (head!3706 (c!270503 lt!623677)))))

(assert (=> d!502232 (not (isEmpty!11384 lt!623677))))

(assert (=> d!502232 (= (head!3703 lt!623677) lt!624704)))

(declare-fun bs!397372 () Bool)

(assert (= bs!397372 d!502232))

(assert (=> bs!397372 m!2022363))

(assert (=> bs!397372 m!2022363))

(declare-fun m!2023825 () Bool)

(assert (=> bs!397372 m!2023825))

(declare-fun m!2023827 () Bool)

(assert (=> bs!397372 m!2023827))

(declare-fun m!2023829 () Bool)

(assert (=> bs!397372 m!2023829))

(assert (=> b!1661890 d!502232))

(declare-fun d!502234 () Bool)

(assert (=> d!502234 (= (inv!23676 (tag!3515 (h!23734 rules!1846))) (= (mod (str.len (value!101755 (tag!3515 (h!23734 rules!1846)))) 2) 0))))

(assert (=> b!1661864 d!502234))

(declare-fun d!502236 () Bool)

(declare-fun res!745935 () Bool)

(declare-fun e!1065765 () Bool)

(assert (=> d!502236 (=> (not res!745935) (not e!1065765))))

(assert (=> d!502236 (= res!745935 (semiInverseModEq!1256 (toChars!4545 (transformation!3231 (h!23734 rules!1846))) (toValue!4686 (transformation!3231 (h!23734 rules!1846)))))))

(assert (=> d!502236 (= (inv!23679 (transformation!3231 (h!23734 rules!1846))) e!1065765)))

(declare-fun b!1662482 () Bool)

(assert (=> b!1662482 (= e!1065765 (equivClasses!1197 (toChars!4545 (transformation!3231 (h!23734 rules!1846))) (toValue!4686 (transformation!3231 (h!23734 rules!1846)))))))

(assert (= (and d!502236 res!745935) b!1662482))

(declare-fun m!2023831 () Bool)

(assert (=> d!502236 m!2023831))

(declare-fun m!2023833 () Bool)

(assert (=> b!1662482 m!2023833))

(assert (=> b!1661864 d!502236))

(declare-fun d!502238 () Bool)

(assert (=> d!502238 (= (separableTokensPredicate!800 thiss!17113 (h!23735 tokens!457) (h!23735 (t!151811 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!655 (rulesRegex!615 thiss!17113 rules!1846) (++!4983 (charsOf!1880 (h!23735 tokens!457)) (singletonSeq!1735 (apply!4896 (charsOf!1880 (h!23735 (t!151811 tokens!457))) 0))))))))

(declare-fun bs!397374 () Bool)

(assert (= bs!397374 d!502238))

(assert (=> bs!397374 m!2022317))

(assert (=> bs!397374 m!2022317))

(declare-fun m!2023879 () Bool)

(assert (=> bs!397374 m!2023879))

(declare-fun m!2023881 () Bool)

(assert (=> bs!397374 m!2023881))

(assert (=> bs!397374 m!2022327))

(assert (=> bs!397374 m!2022355))

(assert (=> bs!397374 m!2022327))

(assert (=> bs!397374 m!2022319))

(assert (=> bs!397374 m!2022355))

(assert (=> bs!397374 m!2022321))

(assert (=> bs!397374 m!2023879))

(assert (=> bs!397374 m!2022319))

(assert (=> bs!397374 m!2022321))

(assert (=> b!1661865 d!502238))

(declare-fun d!502246 () Bool)

(assert (=> d!502246 (= (get!5363 (maxPrefixZipperSequence!737 thiss!17113 rules!1846 lt!623657)) (v!24730 (maxPrefixZipperSequence!737 thiss!17113 rules!1846 lt!623657)))))

(assert (=> b!1661886 d!502246))

(declare-fun b!1662498 () Bool)

(declare-fun e!1065774 () Option!3512)

(declare-fun lt!624726 () Option!3512)

(declare-fun lt!624724 () Option!3512)

(assert (=> b!1662498 (= e!1065774 (ite (and ((_ is None!3511) lt!624726) ((_ is None!3511) lt!624724)) None!3511 (ite ((_ is None!3511) lt!624724) lt!624726 (ite ((_ is None!3511) lt!624726) lt!624724 (ite (>= (size!14580 (_1!10426 (v!24730 lt!624726))) (size!14580 (_1!10426 (v!24730 lt!624724)))) lt!624726 lt!624724)))))))

(declare-fun call!106466 () Option!3512)

(assert (=> b!1662498 (= lt!624726 call!106466)))

(assert (=> b!1662498 (= lt!624724 (maxPrefixZipperSequence!737 thiss!17113 (t!151810 rules!1846) lt!623657))))

(declare-fun e!1065775 () Bool)

(declare-fun lt!624727 () Option!3512)

(declare-fun b!1662499 () Bool)

(assert (=> b!1662499 (= e!1065775 (= (list!7317 (_2!10426 (get!5363 lt!624727))) (_2!10425 (get!5362 (maxPrefixZipper!358 thiss!17113 rules!1846 (list!7317 lt!623657))))))))

(declare-fun b!1662500 () Bool)

(declare-fun e!1065776 () Bool)

(declare-fun e!1065773 () Bool)

(assert (=> b!1662500 (= e!1065776 e!1065773)))

(declare-fun res!745951 () Bool)

(assert (=> b!1662500 (=> (not res!745951) (not e!1065773))))

(assert (=> b!1662500 (= res!745951 (= (_1!10426 (get!5363 lt!624727)) (_1!10425 (get!5362 (maxPrefix!1422 thiss!17113 rules!1846 (list!7317 lt!623657))))))))

(declare-fun b!1662501 () Bool)

(declare-fun res!745956 () Bool)

(declare-fun e!1065772 () Bool)

(assert (=> b!1662501 (=> (not res!745956) (not e!1065772))))

(declare-fun e!1065777 () Bool)

(assert (=> b!1662501 (= res!745956 e!1065777)))

(declare-fun res!745953 () Bool)

(assert (=> b!1662501 (=> res!745953 e!1065777)))

(assert (=> b!1662501 (= res!745953 (not (isDefined!2867 lt!624727)))))

(declare-fun b!1662502 () Bool)

(assert (=> b!1662502 (= e!1065777 e!1065775)))

(declare-fun res!745954 () Bool)

(assert (=> b!1662502 (=> (not res!745954) (not e!1065775))))

(assert (=> b!1662502 (= res!745954 (= (_1!10426 (get!5363 lt!624727)) (_1!10425 (get!5362 (maxPrefixZipper!358 thiss!17113 rules!1846 (list!7317 lt!623657))))))))

(declare-fun b!1662503 () Bool)

(assert (=> b!1662503 (= e!1065772 e!1065776)))

(declare-fun res!745952 () Bool)

(assert (=> b!1662503 (=> res!745952 e!1065776)))

(assert (=> b!1662503 (= res!745952 (not (isDefined!2867 lt!624727)))))

(declare-fun b!1662504 () Bool)

(assert (=> b!1662504 (= e!1065774 call!106466)))

(declare-fun b!1662505 () Bool)

(assert (=> b!1662505 (= e!1065773 (= (list!7317 (_2!10426 (get!5363 lt!624727))) (_2!10425 (get!5362 (maxPrefix!1422 thiss!17113 rules!1846 (list!7317 lt!623657))))))))

(declare-fun bm!106461 () Bool)

(assert (=> bm!106461 (= call!106466 (maxPrefixOneRuleZipperSequence!349 thiss!17113 (h!23734 rules!1846) lt!623657))))

(declare-fun d!502248 () Bool)

(assert (=> d!502248 e!1065772))

(declare-fun res!745955 () Bool)

(assert (=> d!502248 (=> (not res!745955) (not e!1065772))))

(assert (=> d!502248 (= res!745955 (= (isDefined!2867 lt!624727) (isDefined!2866 (maxPrefixZipper!358 thiss!17113 rules!1846 (list!7317 lt!623657)))))))

(assert (=> d!502248 (= lt!624727 e!1065774)))

(declare-fun c!270637 () Bool)

(assert (=> d!502248 (= c!270637 (and ((_ is Cons!18333) rules!1846) ((_ is Nil!18333) (t!151810 rules!1846))))))

(declare-fun lt!624723 () Unit!30961)

(declare-fun lt!624722 () Unit!30961)

(assert (=> d!502248 (= lt!624723 lt!624722)))

(declare-fun lt!624725 () List!18402)

(declare-fun lt!624721 () List!18402)

(assert (=> d!502248 (isPrefix!1489 lt!624725 lt!624721)))

(assert (=> d!502248 (= lt!624722 (lemmaIsPrefixRefl!1010 lt!624725 lt!624721))))

(assert (=> d!502248 (= lt!624721 (list!7317 lt!623657))))

(assert (=> d!502248 (= lt!624725 (list!7317 lt!623657))))

(assert (=> d!502248 (rulesValidInductive!1032 thiss!17113 rules!1846)))

(assert (=> d!502248 (= (maxPrefixZipperSequence!737 thiss!17113 rules!1846 lt!623657) lt!624727)))

(assert (= (and d!502248 c!270637) b!1662504))

(assert (= (and d!502248 (not c!270637)) b!1662498))

(assert (= (or b!1662504 b!1662498) bm!106461))

(assert (= (and d!502248 res!745955) b!1662501))

(assert (= (and b!1662501 (not res!745953)) b!1662502))

(assert (= (and b!1662502 res!745954) b!1662499))

(assert (= (and b!1662501 res!745956) b!1662503))

(assert (= (and b!1662503 (not res!745952)) b!1662500))

(assert (= (and b!1662500 res!745951) b!1662505))

(declare-fun m!2023887 () Bool)

(assert (=> bm!106461 m!2023887))

(declare-fun m!2023889 () Bool)

(assert (=> d!502248 m!2023889))

(declare-fun m!2023891 () Bool)

(assert (=> d!502248 m!2023891))

(declare-fun m!2023893 () Bool)

(assert (=> d!502248 m!2023893))

(assert (=> d!502248 m!2022367))

(assert (=> d!502248 m!2023891))

(declare-fun m!2023895 () Bool)

(assert (=> d!502248 m!2023895))

(declare-fun m!2023897 () Bool)

(assert (=> d!502248 m!2023897))

(assert (=> d!502248 m!2022367))

(assert (=> d!502248 m!2023079))

(assert (=> b!1662499 m!2022367))

(assert (=> b!1662499 m!2023891))

(declare-fun m!2023899 () Bool)

(assert (=> b!1662499 m!2023899))

(assert (=> b!1662499 m!2023891))

(declare-fun m!2023901 () Bool)

(assert (=> b!1662499 m!2023901))

(assert (=> b!1662499 m!2022367))

(declare-fun m!2023903 () Bool)

(assert (=> b!1662499 m!2023903))

(assert (=> b!1662502 m!2023899))

(assert (=> b!1662502 m!2022367))

(assert (=> b!1662502 m!2022367))

(assert (=> b!1662502 m!2023891))

(assert (=> b!1662502 m!2023891))

(assert (=> b!1662502 m!2023901))

(assert (=> b!1662500 m!2023899))

(assert (=> b!1662500 m!2022367))

(assert (=> b!1662500 m!2022367))

(declare-fun m!2023905 () Bool)

(assert (=> b!1662500 m!2023905))

(assert (=> b!1662500 m!2023905))

(declare-fun m!2023907 () Bool)

(assert (=> b!1662500 m!2023907))

(assert (=> b!1662505 m!2023905))

(assert (=> b!1662505 m!2023907))

(assert (=> b!1662505 m!2022367))

(assert (=> b!1662505 m!2023905))

(assert (=> b!1662505 m!2023899))

(assert (=> b!1662505 m!2022367))

(assert (=> b!1662505 m!2023903))

(assert (=> b!1662501 m!2023897))

(declare-fun m!2023909 () Bool)

(assert (=> b!1662498 m!2023909))

(assert (=> b!1662503 m!2023897))

(assert (=> b!1661886 d!502248))

(declare-fun d!502250 () Bool)

(assert (=> d!502250 (= (isEmpty!11383 (_2!10425 lt!623672)) ((_ is Nil!18332) (_2!10425 lt!623672)))))

(assert (=> b!1661887 d!502250))

(declare-fun d!502252 () Bool)

(declare-fun res!745961 () Bool)

(declare-fun e!1065781 () Bool)

(assert (=> d!502252 (=> (not res!745961) (not e!1065781))))

(assert (=> d!502252 (= res!745961 (not (isEmpty!11383 (originalCharacters!4045 (h!23735 tokens!457)))))))

(assert (=> d!502252 (= (inv!23680 (h!23735 tokens!457)) e!1065781)))

(declare-fun b!1662511 () Bool)

(declare-fun res!745962 () Bool)

(assert (=> b!1662511 (=> (not res!745962) (not e!1065781))))

(assert (=> b!1662511 (= res!745962 (= (originalCharacters!4045 (h!23735 tokens!457)) (list!7317 (dynLambda!8237 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (value!101756 (h!23735 tokens!457))))))))

(declare-fun b!1662512 () Bool)

(assert (=> b!1662512 (= e!1065781 (= (size!14580 (h!23735 tokens!457)) (size!14585 (originalCharacters!4045 (h!23735 tokens!457)))))))

(assert (= (and d!502252 res!745961) b!1662511))

(assert (= (and b!1662511 res!745962) b!1662512))

(declare-fun b_lambda!52173 () Bool)

(assert (=> (not b_lambda!52173) (not b!1662511)))

(assert (=> b!1662511 t!151815))

(declare-fun b_and!118029 () Bool)

(assert (= b_and!118013 (and (=> t!151815 result!115066) b_and!118029)))

(assert (=> b!1662511 t!151817))

(declare-fun b_and!118031 () Bool)

(assert (= b_and!118015 (and (=> t!151817 result!115070) b_and!118031)))

(declare-fun m!2023925 () Bool)

(assert (=> d!502252 m!2023925))

(assert (=> b!1662511 m!2022489))

(assert (=> b!1662511 m!2022489))

(declare-fun m!2023927 () Bool)

(assert (=> b!1662511 m!2023927))

(assert (=> b!1662512 m!2023097))

(assert (=> b!1661873 d!502252))

(declare-fun d!502258 () Bool)

(declare-fun res!745968 () Bool)

(declare-fun e!1065787 () Bool)

(assert (=> d!502258 (=> (not res!745968) (not e!1065787))))

(declare-fun rulesValid!1183 (LexerInterface!2860 List!18403) Bool)

(assert (=> d!502258 (= res!745968 (rulesValid!1183 thiss!17113 rules!1846))))

(assert (=> d!502258 (= (rulesInvariant!2529 thiss!17113 rules!1846) e!1065787)))

(declare-fun b!1662520 () Bool)

(declare-datatypes ((List!18405 0))(
  ( (Nil!18335) (Cons!18335 (h!23736 String!20937) (t!151854 List!18405)) )
))
(declare-fun noDuplicateTag!1183 (LexerInterface!2860 List!18403 List!18405) Bool)

(assert (=> b!1662520 (= e!1065787 (noDuplicateTag!1183 thiss!17113 rules!1846 Nil!18335))))

(assert (= (and d!502258 res!745968) b!1662520))

(declare-fun m!2023953 () Bool)

(assert (=> d!502258 m!2023953))

(declare-fun m!2023955 () Bool)

(assert (=> b!1662520 m!2023955))

(assert (=> b!1661874 d!502258))

(declare-fun b!1662581 () Bool)

(declare-fun res!746011 () Bool)

(declare-fun e!1065822 () Bool)

(assert (=> b!1662581 (=> (not res!746011) (not e!1065822))))

(assert (=> b!1662581 (= res!746011 (isEmpty!11383 (tail!2474 lt!623670)))))

(declare-fun b!1662582 () Bool)

(assert (=> b!1662582 (= e!1065822 (= (head!3702 lt!623670) (c!270504 (regex!3231 (rule!5115 (h!23735 tokens!457))))))))

(declare-fun b!1662583 () Bool)

(declare-fun e!1065825 () Bool)

(assert (=> b!1662583 (= e!1065825 (not (= (head!3702 lt!623670) (c!270504 (regex!3231 (rule!5115 (h!23735 tokens!457)))))))))

(declare-fun b!1662584 () Bool)

(declare-fun res!746005 () Bool)

(declare-fun e!1065820 () Bool)

(assert (=> b!1662584 (=> res!746005 e!1065820)))

(assert (=> b!1662584 (= res!746005 (not ((_ is ElementMatch!4559) (regex!3231 (rule!5115 (h!23735 tokens!457))))))))

(declare-fun e!1065819 () Bool)

(assert (=> b!1662584 (= e!1065819 e!1065820)))

(declare-fun b!1662585 () Bool)

(declare-fun res!746006 () Bool)

(assert (=> b!1662585 (=> res!746006 e!1065820)))

(assert (=> b!1662585 (= res!746006 e!1065822)))

(declare-fun res!746009 () Bool)

(assert (=> b!1662585 (=> (not res!746009) (not e!1065822))))

(declare-fun lt!624740 () Bool)

(assert (=> b!1662585 (= res!746009 lt!624740)))

(declare-fun bm!106466 () Bool)

(declare-fun call!106471 () Bool)

(assert (=> bm!106466 (= call!106471 (isEmpty!11383 lt!623670))))

(declare-fun b!1662586 () Bool)

(declare-fun e!1065823 () Bool)

(assert (=> b!1662586 (= e!1065823 (= lt!624740 call!106471))))

(declare-fun b!1662580 () Bool)

(declare-fun e!1065821 () Bool)

(declare-fun nullable!1356 (Regex!4559) Bool)

(assert (=> b!1662580 (= e!1065821 (nullable!1356 (regex!3231 (rule!5115 (h!23735 tokens!457)))))))

(declare-fun d!502266 () Bool)

(assert (=> d!502266 e!1065823))

(declare-fun c!270653 () Bool)

(assert (=> d!502266 (= c!270653 ((_ is EmptyExpr!4559) (regex!3231 (rule!5115 (h!23735 tokens!457)))))))

(assert (=> d!502266 (= lt!624740 e!1065821)))

(declare-fun c!270652 () Bool)

(assert (=> d!502266 (= c!270652 (isEmpty!11383 lt!623670))))

(declare-fun validRegex!1821 (Regex!4559) Bool)

(assert (=> d!502266 (validRegex!1821 (regex!3231 (rule!5115 (h!23735 tokens!457))))))

(assert (=> d!502266 (= (matchR!2052 (regex!3231 (rule!5115 (h!23735 tokens!457))) lt!623670) lt!624740)))

(declare-fun b!1662587 () Bool)

(assert (=> b!1662587 (= e!1065821 (matchR!2052 (derivativeStep!1124 (regex!3231 (rule!5115 (h!23735 tokens!457))) (head!3702 lt!623670)) (tail!2474 lt!623670)))))

(declare-fun b!1662588 () Bool)

(declare-fun res!746008 () Bool)

(assert (=> b!1662588 (=> res!746008 e!1065825)))

(assert (=> b!1662588 (= res!746008 (not (isEmpty!11383 (tail!2474 lt!623670))))))

(declare-fun b!1662589 () Bool)

(assert (=> b!1662589 (= e!1065819 (not lt!624740))))

(declare-fun b!1662590 () Bool)

(declare-fun e!1065824 () Bool)

(assert (=> b!1662590 (= e!1065824 e!1065825)))

(declare-fun res!746010 () Bool)

(assert (=> b!1662590 (=> res!746010 e!1065825)))

(assert (=> b!1662590 (= res!746010 call!106471)))

(declare-fun b!1662591 () Bool)

(declare-fun res!746004 () Bool)

(assert (=> b!1662591 (=> (not res!746004) (not e!1065822))))

(assert (=> b!1662591 (= res!746004 (not call!106471))))

(declare-fun b!1662592 () Bool)

(assert (=> b!1662592 (= e!1065823 e!1065819)))

(declare-fun c!270651 () Bool)

(assert (=> b!1662592 (= c!270651 ((_ is EmptyLang!4559) (regex!3231 (rule!5115 (h!23735 tokens!457)))))))

(declare-fun b!1662593 () Bool)

(assert (=> b!1662593 (= e!1065820 e!1065824)))

(declare-fun res!746007 () Bool)

(assert (=> b!1662593 (=> (not res!746007) (not e!1065824))))

(assert (=> b!1662593 (= res!746007 (not lt!624740))))

(assert (= (and d!502266 c!270652) b!1662580))

(assert (= (and d!502266 (not c!270652)) b!1662587))

(assert (= (and d!502266 c!270653) b!1662586))

(assert (= (and d!502266 (not c!270653)) b!1662592))

(assert (= (and b!1662592 c!270651) b!1662589))

(assert (= (and b!1662592 (not c!270651)) b!1662584))

(assert (= (and b!1662584 (not res!746005)) b!1662585))

(assert (= (and b!1662585 res!746009) b!1662591))

(assert (= (and b!1662591 res!746004) b!1662581))

(assert (= (and b!1662581 res!746011) b!1662582))

(assert (= (and b!1662585 (not res!746006)) b!1662593))

(assert (= (and b!1662593 res!746007) b!1662590))

(assert (= (and b!1662590 (not res!746010)) b!1662588))

(assert (= (and b!1662588 (not res!746008)) b!1662583))

(assert (= (or b!1662586 b!1662590 b!1662591) bm!106466))

(declare-fun m!2023961 () Bool)

(assert (=> bm!106466 m!2023961))

(assert (=> b!1662582 m!2023653))

(assert (=> b!1662587 m!2023653))

(assert (=> b!1662587 m!2023653))

(declare-fun m!2023963 () Bool)

(assert (=> b!1662587 m!2023963))

(assert (=> b!1662587 m!2023647))

(assert (=> b!1662587 m!2023963))

(assert (=> b!1662587 m!2023647))

(declare-fun m!2023965 () Bool)

(assert (=> b!1662587 m!2023965))

(assert (=> b!1662581 m!2023647))

(assert (=> b!1662581 m!2023647))

(declare-fun m!2023967 () Bool)

(assert (=> b!1662581 m!2023967))

(assert (=> b!1662588 m!2023647))

(assert (=> b!1662588 m!2023647))

(assert (=> b!1662588 m!2023967))

(assert (=> b!1662583 m!2023653))

(declare-fun m!2023969 () Bool)

(assert (=> b!1662580 m!2023969))

(assert (=> d!502266 m!2023961))

(declare-fun m!2023971 () Bool)

(assert (=> d!502266 m!2023971))

(assert (=> b!1661870 d!502266))

(declare-fun d!502270 () Bool)

(declare-fun e!1065847 () Bool)

(assert (=> d!502270 e!1065847))

(declare-fun res!746022 () Bool)

(assert (=> d!502270 (=> (not res!746022) (not e!1065847))))

(declare-fun lt!624744 () BalanceConc!12164)

(assert (=> d!502270 (= res!746022 (= (list!7317 lt!624744) (Cons!18332 (apply!4896 (charsOf!1880 (h!23735 (t!151811 tokens!457))) 0) Nil!18332)))))

(declare-fun singleton!764 (C!9292) BalanceConc!12164)

(assert (=> d!502270 (= lt!624744 (singleton!764 (apply!4896 (charsOf!1880 (h!23735 (t!151811 tokens!457))) 0)))))

(assert (=> d!502270 (= (singletonSeq!1735 (apply!4896 (charsOf!1880 (h!23735 (t!151811 tokens!457))) 0)) lt!624744)))

(declare-fun b!1662620 () Bool)

(declare-fun isBalanced!1890 (Conc!6110) Bool)

(assert (=> b!1662620 (= e!1065847 (isBalanced!1890 (c!270503 lt!624744)))))

(assert (= (and d!502270 res!746022) b!1662620))

(declare-fun m!2023985 () Bool)

(assert (=> d!502270 m!2023985))

(assert (=> d!502270 m!2022319))

(declare-fun m!2023987 () Bool)

(assert (=> d!502270 m!2023987))

(declare-fun m!2023989 () Bool)

(assert (=> b!1662620 m!2023989))

(assert (=> b!1661871 d!502270))

(declare-fun d!502272 () Bool)

(declare-fun lt!624769 () Bool)

(assert (=> d!502272 (= lt!624769 (prefixMatch!476 lt!623675 (list!7317 (++!4983 lt!623666 lt!623682))))))

(declare-datatypes ((List!18408 0))(
  ( (Nil!18338) (Cons!18338 (h!23739 Regex!4559) (t!151857 List!18408)) )
))
(declare-datatypes ((Context!1818 0))(
  ( (Context!1819 (exprs!1409 List!18408)) )
))
(declare-fun prefixMatchZipperSequence!657 ((InoxSet Context!1818) BalanceConc!12164 Int) Bool)

(declare-fun focus!215 (Regex!4559) (InoxSet Context!1818))

(assert (=> d!502272 (= lt!624769 (prefixMatchZipperSequence!657 (focus!215 lt!623675) (++!4983 lt!623666 lt!623682) 0))))

(declare-fun lt!624774 () Unit!30961)

(declare-fun lt!624766 () Unit!30961)

(assert (=> d!502272 (= lt!624774 lt!624766)))

(declare-fun lt!624765 () List!18402)

(declare-fun lt!624773 () (InoxSet Context!1818))

(declare-fun prefixMatchZipper!194 ((InoxSet Context!1818) List!18402) Bool)

(assert (=> d!502272 (= (prefixMatch!476 lt!623675 lt!624765) (prefixMatchZipper!194 lt!624773 lt!624765))))

(declare-datatypes ((List!18409 0))(
  ( (Nil!18339) (Cons!18339 (h!23740 Context!1818) (t!151858 List!18409)) )
))
(declare-fun lt!624768 () List!18409)

(declare-fun prefixMatchZipperRegexEquiv!194 ((InoxSet Context!1818) List!18409 Regex!4559 List!18402) Unit!30961)

(assert (=> d!502272 (= lt!624766 (prefixMatchZipperRegexEquiv!194 lt!624773 lt!624768 lt!623675 lt!624765))))

(assert (=> d!502272 (= lt!624765 (list!7317 (++!4983 lt!623666 lt!623682)))))

(declare-fun toList!955 ((InoxSet Context!1818)) List!18409)

(assert (=> d!502272 (= lt!624768 (toList!955 (focus!215 lt!623675)))))

(assert (=> d!502272 (= lt!624773 (focus!215 lt!623675))))

(declare-fun lt!624772 () Unit!30961)

(declare-fun lt!624771 () Unit!30961)

(assert (=> d!502272 (= lt!624772 lt!624771)))

(declare-fun lt!624770 () Int)

(declare-fun lt!624767 () (InoxSet Context!1818))

(declare-fun dropList!702 (BalanceConc!12164 Int) List!18402)

(assert (=> d!502272 (= (prefixMatchZipper!194 lt!624767 (dropList!702 (++!4983 lt!623666 lt!623682) lt!624770)) (prefixMatchZipperSequence!657 lt!624767 (++!4983 lt!623666 lt!623682) lt!624770))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!194 ((InoxSet Context!1818) BalanceConc!12164 Int) Unit!30961)

(assert (=> d!502272 (= lt!624771 (lemmaprefixMatchZipperSequenceEquivalent!194 lt!624767 (++!4983 lt!623666 lt!623682) lt!624770))))

(assert (=> d!502272 (= lt!624770 0)))

(assert (=> d!502272 (= lt!624767 (focus!215 lt!623675))))

(assert (=> d!502272 (validRegex!1821 lt!623675)))

(assert (=> d!502272 (= (prefixMatchZipperSequence!655 lt!623675 (++!4983 lt!623666 lt!623682)) lt!624769)))

(declare-fun bs!397378 () Bool)

(assert (= bs!397378 d!502272))

(assert (=> bs!397378 m!2022323))

(declare-fun m!2024003 () Bool)

(assert (=> bs!397378 m!2024003))

(declare-fun m!2024005 () Bool)

(assert (=> bs!397378 m!2024005))

(declare-fun m!2024007 () Bool)

(assert (=> bs!397378 m!2024007))

(declare-fun m!2024009 () Bool)

(assert (=> bs!397378 m!2024009))

(declare-fun m!2024011 () Bool)

(assert (=> bs!397378 m!2024011))

(assert (=> bs!397378 m!2022323))

(assert (=> bs!397378 m!2024007))

(declare-fun m!2024013 () Bool)

(assert (=> bs!397378 m!2024013))

(declare-fun m!2024015 () Bool)

(assert (=> bs!397378 m!2024015))

(assert (=> bs!397378 m!2022323))

(declare-fun m!2024017 () Bool)

(assert (=> bs!397378 m!2024017))

(assert (=> bs!397378 m!2024005))

(assert (=> bs!397378 m!2022323))

(declare-fun m!2024019 () Bool)

(assert (=> bs!397378 m!2024019))

(declare-fun m!2024021 () Bool)

(assert (=> bs!397378 m!2024021))

(assert (=> bs!397378 m!2024003))

(declare-fun m!2024023 () Bool)

(assert (=> bs!397378 m!2024023))

(assert (=> bs!397378 m!2024005))

(declare-fun m!2024025 () Bool)

(assert (=> bs!397378 m!2024025))

(assert (=> bs!397378 m!2022323))

(declare-fun m!2024027 () Bool)

(assert (=> bs!397378 m!2024027))

(assert (=> b!1661871 d!502272))

(declare-fun d!502274 () Bool)

(declare-fun lt!624777 () Unit!30961)

(declare-fun lemma!279 (List!18403 LexerInterface!2860 List!18403) Unit!30961)

(assert (=> d!502274 (= lt!624777 (lemma!279 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67878 () Int)

(declare-fun generalisedUnion!287 (List!18408) Regex!4559)

(declare-fun map!3774 (List!18403 Int) List!18408)

(assert (=> d!502274 (= (rulesRegex!615 thiss!17113 rules!1846) (generalisedUnion!287 (map!3774 rules!1846 lambda!67878)))))

(declare-fun bs!397379 () Bool)

(assert (= bs!397379 d!502274))

(declare-fun m!2024029 () Bool)

(assert (=> bs!397379 m!2024029))

(declare-fun m!2024031 () Bool)

(assert (=> bs!397379 m!2024031))

(assert (=> bs!397379 m!2024031))

(declare-fun m!2024033 () Bool)

(assert (=> bs!397379 m!2024033))

(assert (=> b!1661871 d!502274))

(declare-fun d!502276 () Bool)

(declare-fun lt!624778 () BalanceConc!12164)

(assert (=> d!502276 (= (list!7317 lt!624778) (originalCharacters!4045 (h!23735 (t!151811 tokens!457))))))

(assert (=> d!502276 (= lt!624778 (dynLambda!8237 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))) (value!101756 (h!23735 (t!151811 tokens!457)))))))

(assert (=> d!502276 (= (charsOf!1880 (h!23735 (t!151811 tokens!457))) lt!624778)))

(declare-fun b_lambda!52181 () Bool)

(assert (=> (not b_lambda!52181) (not d!502276)))

(declare-fun tb!95259 () Bool)

(declare-fun t!151843 () Bool)

(assert (=> (and b!1661889 (= (toChars!4545 (transformation!3231 (h!23734 rules!1846))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457)))))) t!151843) tb!95259))

(declare-fun b!1662659 () Bool)

(declare-fun e!1065873 () Bool)

(declare-fun tp!479408 () Bool)

(assert (=> b!1662659 (= e!1065873 (and (inv!23681 (c!270503 (dynLambda!8237 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))) (value!101756 (h!23735 (t!151811 tokens!457)))))) tp!479408))))

(declare-fun result!115098 () Bool)

(assert (=> tb!95259 (= result!115098 (and (inv!23682 (dynLambda!8237 (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))) (value!101756 (h!23735 (t!151811 tokens!457))))) e!1065873))))

(assert (= tb!95259 b!1662659))

(declare-fun m!2024035 () Bool)

(assert (=> b!1662659 m!2024035))

(declare-fun m!2024037 () Bool)

(assert (=> tb!95259 m!2024037))

(assert (=> d!502276 t!151843))

(declare-fun b_and!118041 () Bool)

(assert (= b_and!118029 (and (=> t!151843 result!115098) b_and!118041)))

(declare-fun t!151845 () Bool)

(declare-fun tb!95261 () Bool)

(assert (=> (and b!1661868 (= (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457)))))) t!151845) tb!95261))

(declare-fun result!115100 () Bool)

(assert (= result!115100 result!115098))

(assert (=> d!502276 t!151845))

(declare-fun b_and!118043 () Bool)

(assert (= b_and!118031 (and (=> t!151845 result!115100) b_and!118043)))

(declare-fun m!2024039 () Bool)

(assert (=> d!502276 m!2024039))

(declare-fun m!2024041 () Bool)

(assert (=> d!502276 m!2024041))

(assert (=> b!1661871 d!502276))

(declare-fun d!502278 () Bool)

(declare-fun e!1065876 () Bool)

(assert (=> d!502278 e!1065876))

(declare-fun res!746033 () Bool)

(assert (=> d!502278 (=> (not res!746033) (not e!1065876))))

(declare-fun appendAssocInst!477 (Conc!6110 Conc!6110) Bool)

(assert (=> d!502278 (= res!746033 (appendAssocInst!477 (c!270503 lt!623666) (c!270503 lt!623682)))))

(declare-fun lt!624781 () BalanceConc!12164)

(declare-fun ++!4986 (Conc!6110 Conc!6110) Conc!6110)

(assert (=> d!502278 (= lt!624781 (BalanceConc!12165 (++!4986 (c!270503 lt!623666) (c!270503 lt!623682))))))

(assert (=> d!502278 (= (++!4983 lt!623666 lt!623682) lt!624781)))

(declare-fun b!1662668 () Bool)

(declare-fun res!746031 () Bool)

(assert (=> b!1662668 (=> (not res!746031) (not e!1065876))))

(assert (=> b!1662668 (= res!746031 (isBalanced!1890 (++!4986 (c!270503 lt!623666) (c!270503 lt!623682))))))

(declare-fun b!1662670 () Bool)

(declare-fun res!746034 () Bool)

(assert (=> b!1662670 (=> (not res!746034) (not e!1065876))))

(declare-fun height!959 (Conc!6110) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1662670 (= res!746034 (>= (height!959 (++!4986 (c!270503 lt!623666) (c!270503 lt!623682))) (max!0 (height!959 (c!270503 lt!623666)) (height!959 (c!270503 lt!623682)))))))

(declare-fun b!1662669 () Bool)

(declare-fun res!746032 () Bool)

(assert (=> b!1662669 (=> (not res!746032) (not e!1065876))))

(assert (=> b!1662669 (= res!746032 (<= (height!959 (++!4986 (c!270503 lt!623666) (c!270503 lt!623682))) (+ (max!0 (height!959 (c!270503 lt!623666)) (height!959 (c!270503 lt!623682))) 1)))))

(declare-fun b!1662671 () Bool)

(assert (=> b!1662671 (= e!1065876 (= (list!7317 lt!624781) (++!4984 (list!7317 lt!623666) (list!7317 lt!623682))))))

(assert (= (and d!502278 res!746033) b!1662668))

(assert (= (and b!1662668 res!746031) b!1662669))

(assert (= (and b!1662669 res!746032) b!1662670))

(assert (= (and b!1662670 res!746034) b!1662671))

(declare-fun m!2024043 () Bool)

(assert (=> b!1662671 m!2024043))

(assert (=> b!1662671 m!2022371))

(assert (=> b!1662671 m!2022347))

(assert (=> b!1662671 m!2022371))

(assert (=> b!1662671 m!2022347))

(declare-fun m!2024045 () Bool)

(assert (=> b!1662671 m!2024045))

(declare-fun m!2024047 () Bool)

(assert (=> b!1662668 m!2024047))

(assert (=> b!1662668 m!2024047))

(declare-fun m!2024049 () Bool)

(assert (=> b!1662668 m!2024049))

(assert (=> b!1662669 m!2024047))

(declare-fun m!2024051 () Bool)

(assert (=> b!1662669 m!2024051))

(declare-fun m!2024053 () Bool)

(assert (=> b!1662669 m!2024053))

(assert (=> b!1662669 m!2024051))

(declare-fun m!2024055 () Bool)

(assert (=> b!1662669 m!2024055))

(assert (=> b!1662669 m!2024053))

(assert (=> b!1662669 m!2024047))

(declare-fun m!2024057 () Bool)

(assert (=> b!1662669 m!2024057))

(declare-fun m!2024059 () Bool)

(assert (=> d!502278 m!2024059))

(assert (=> d!502278 m!2024047))

(assert (=> b!1662670 m!2024047))

(assert (=> b!1662670 m!2024051))

(assert (=> b!1662670 m!2024053))

(assert (=> b!1662670 m!2024051))

(assert (=> b!1662670 m!2024055))

(assert (=> b!1662670 m!2024053))

(assert (=> b!1662670 m!2024047))

(assert (=> b!1662670 m!2024057))

(assert (=> b!1661871 d!502278))

(declare-fun d!502280 () Bool)

(declare-fun lt!624784 () C!9292)

(declare-fun apply!4905 (List!18402 Int) C!9292)

(assert (=> d!502280 (= lt!624784 (apply!4905 (list!7317 (charsOf!1880 (h!23735 (t!151811 tokens!457)))) 0))))

(declare-fun apply!4906 (Conc!6110 Int) C!9292)

(assert (=> d!502280 (= lt!624784 (apply!4906 (c!270503 (charsOf!1880 (h!23735 (t!151811 tokens!457)))) 0))))

(declare-fun e!1065879 () Bool)

(assert (=> d!502280 e!1065879))

(declare-fun res!746037 () Bool)

(assert (=> d!502280 (=> (not res!746037) (not e!1065879))))

(assert (=> d!502280 (= res!746037 (<= 0 0))))

(assert (=> d!502280 (= (apply!4896 (charsOf!1880 (h!23735 (t!151811 tokens!457))) 0) lt!624784)))

(declare-fun b!1662674 () Bool)

(assert (=> b!1662674 (= e!1065879 (< 0 (size!14583 (charsOf!1880 (h!23735 (t!151811 tokens!457))))))))

(assert (= (and d!502280 res!746037) b!1662674))

(assert (=> d!502280 m!2022327))

(assert (=> d!502280 m!2023577))

(assert (=> d!502280 m!2023577))

(declare-fun m!2024061 () Bool)

(assert (=> d!502280 m!2024061))

(declare-fun m!2024063 () Bool)

(assert (=> d!502280 m!2024063))

(assert (=> b!1662674 m!2022327))

(assert (=> b!1662674 m!2023263))

(assert (=> b!1661871 d!502280))

(declare-fun b!1662685 () Bool)

(declare-fun b_free!45159 () Bool)

(declare-fun b_next!45863 () Bool)

(assert (=> b!1662685 (= b_free!45159 (not b_next!45863))))

(declare-fun tp!479417 () Bool)

(declare-fun b_and!118045 () Bool)

(assert (=> b!1662685 (= tp!479417 b_and!118045)))

(declare-fun b_free!45161 () Bool)

(declare-fun b_next!45865 () Bool)

(assert (=> b!1662685 (= b_free!45161 (not b_next!45865))))

(declare-fun tb!95263 () Bool)

(declare-fun t!151847 () Bool)

(assert (=> (and b!1662685 (= (toChars!4545 (transformation!3231 (h!23734 (t!151810 rules!1846)))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457))))) t!151847) tb!95263))

(declare-fun result!115104 () Bool)

(assert (= result!115104 result!115066))

(assert (=> d!501994 t!151847))

(assert (=> b!1662511 t!151847))

(declare-fun t!151849 () Bool)

(declare-fun tb!95265 () Bool)

(assert (=> (and b!1662685 (= (toChars!4545 (transformation!3231 (h!23734 (t!151810 rules!1846)))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457)))))) t!151849) tb!95265))

(declare-fun result!115106 () Bool)

(assert (= result!115106 result!115098))

(assert (=> d!502276 t!151849))

(declare-fun tp!479418 () Bool)

(declare-fun b_and!118047 () Bool)

(assert (=> b!1662685 (= tp!479418 (and (=> t!151847 result!115104) (=> t!151849 result!115106) b_and!118047))))

(declare-fun e!1065891 () Bool)

(assert (=> b!1662685 (= e!1065891 (and tp!479417 tp!479418))))

(declare-fun b!1662684 () Bool)

(declare-fun e!1065888 () Bool)

(declare-fun tp!479420 () Bool)

(assert (=> b!1662684 (= e!1065888 (and tp!479420 (inv!23676 (tag!3515 (h!23734 (t!151810 rules!1846)))) (inv!23679 (transformation!3231 (h!23734 (t!151810 rules!1846)))) e!1065891))))

(declare-fun b!1662683 () Bool)

(declare-fun e!1065890 () Bool)

(declare-fun tp!479419 () Bool)

(assert (=> b!1662683 (= e!1065890 (and e!1065888 tp!479419))))

(assert (=> b!1661872 (= tp!479345 e!1065890)))

(assert (= b!1662684 b!1662685))

(assert (= b!1662683 b!1662684))

(assert (= (and b!1661872 ((_ is Cons!18333) (t!151810 rules!1846))) b!1662683))

(declare-fun m!2024065 () Bool)

(assert (=> b!1662684 m!2024065))

(declare-fun m!2024067 () Bool)

(assert (=> b!1662684 m!2024067))

(declare-fun b!1662699 () Bool)

(declare-fun b_free!45163 () Bool)

(declare-fun b_next!45867 () Bool)

(assert (=> b!1662699 (= b_free!45163 (not b_next!45867))))

(declare-fun tp!479433 () Bool)

(declare-fun b_and!118049 () Bool)

(assert (=> b!1662699 (= tp!479433 b_and!118049)))

(declare-fun b_free!45165 () Bool)

(declare-fun b_next!45869 () Bool)

(assert (=> b!1662699 (= b_free!45165 (not b_next!45869))))

(declare-fun t!151851 () Bool)

(declare-fun tb!95267 () Bool)

(assert (=> (and b!1662699 (= (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457))))) t!151851) tb!95267))

(declare-fun result!115110 () Bool)

(assert (= result!115110 result!115066))

(assert (=> d!501994 t!151851))

(assert (=> b!1662511 t!151851))

(declare-fun t!151853 () Bool)

(declare-fun tb!95269 () Bool)

(assert (=> (and b!1662699 (= (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457)))))) t!151853) tb!95269))

(declare-fun result!115112 () Bool)

(assert (= result!115112 result!115098))

(assert (=> d!502276 t!151853))

(declare-fun tp!479431 () Bool)

(declare-fun b_and!118051 () Bool)

(assert (=> b!1662699 (= tp!479431 (and (=> t!151851 result!115110) (=> t!151853 result!115112) b_and!118051))))

(declare-fun e!1065909 () Bool)

(declare-fun tp!479435 () Bool)

(declare-fun b!1662697 () Bool)

(declare-fun e!1065906 () Bool)

(assert (=> b!1662697 (= e!1065909 (and (inv!21 (value!101756 (h!23735 (t!151811 tokens!457)))) e!1065906 tp!479435))))

(declare-fun tp!479432 () Bool)

(declare-fun e!1065904 () Bool)

(declare-fun b!1662696 () Bool)

(assert (=> b!1662696 (= e!1065904 (and (inv!23680 (h!23735 (t!151811 tokens!457))) e!1065909 tp!479432))))

(declare-fun e!1065908 () Bool)

(assert (=> b!1662699 (= e!1065908 (and tp!479433 tp!479431))))

(assert (=> b!1661873 (= tp!479346 e!1065904)))

(declare-fun b!1662698 () Bool)

(declare-fun tp!479434 () Bool)

(assert (=> b!1662698 (= e!1065906 (and tp!479434 (inv!23676 (tag!3515 (rule!5115 (h!23735 (t!151811 tokens!457))))) (inv!23679 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))) e!1065908))))

(assert (= b!1662698 b!1662699))

(assert (= b!1662697 b!1662698))

(assert (= b!1662696 b!1662697))

(assert (= (and b!1661873 ((_ is Cons!18334) (t!151811 tokens!457))) b!1662696))

(declare-fun m!2024069 () Bool)

(assert (=> b!1662697 m!2024069))

(declare-fun m!2024071 () Bool)

(assert (=> b!1662696 m!2024071))

(declare-fun m!2024073 () Bool)

(assert (=> b!1662698 m!2024073))

(declare-fun m!2024075 () Bool)

(assert (=> b!1662698 m!2024075))

(declare-fun b!1662710 () Bool)

(declare-fun e!1065912 () Bool)

(declare-fun tp_is_empty!7393 () Bool)

(assert (=> b!1662710 (= e!1065912 tp_is_empty!7393)))

(assert (=> b!1661864 (= tp!479343 e!1065912)))

(declare-fun b!1662713 () Bool)

(declare-fun tp!479447 () Bool)

(declare-fun tp!479448 () Bool)

(assert (=> b!1662713 (= e!1065912 (and tp!479447 tp!479448))))

(declare-fun b!1662712 () Bool)

(declare-fun tp!479449 () Bool)

(assert (=> b!1662712 (= e!1065912 tp!479449)))

(declare-fun b!1662711 () Bool)

(declare-fun tp!479450 () Bool)

(declare-fun tp!479446 () Bool)

(assert (=> b!1662711 (= e!1065912 (and tp!479450 tp!479446))))

(assert (= (and b!1661864 ((_ is ElementMatch!4559) (regex!3231 (h!23734 rules!1846)))) b!1662710))

(assert (= (and b!1661864 ((_ is Concat!7881) (regex!3231 (h!23734 rules!1846)))) b!1662711))

(assert (= (and b!1661864 ((_ is Star!4559) (regex!3231 (h!23734 rules!1846)))) b!1662712))

(assert (= (and b!1661864 ((_ is Union!4559) (regex!3231 (h!23734 rules!1846)))) b!1662713))

(declare-fun b!1662718 () Bool)

(declare-fun e!1065915 () Bool)

(declare-fun tp!479453 () Bool)

(assert (=> b!1662718 (= e!1065915 (and tp_is_empty!7393 tp!479453))))

(assert (=> b!1661861 (= tp!479342 e!1065915)))

(assert (= (and b!1661861 ((_ is Cons!18332) (originalCharacters!4045 (h!23735 tokens!457)))) b!1662718))

(declare-fun b!1662719 () Bool)

(declare-fun e!1065916 () Bool)

(assert (=> b!1662719 (= e!1065916 tp_is_empty!7393)))

(assert (=> b!1661882 (= tp!479347 e!1065916)))

(declare-fun b!1662722 () Bool)

(declare-fun tp!479455 () Bool)

(declare-fun tp!479456 () Bool)

(assert (=> b!1662722 (= e!1065916 (and tp!479455 tp!479456))))

(declare-fun b!1662721 () Bool)

(declare-fun tp!479457 () Bool)

(assert (=> b!1662721 (= e!1065916 tp!479457)))

(declare-fun b!1662720 () Bool)

(declare-fun tp!479458 () Bool)

(declare-fun tp!479454 () Bool)

(assert (=> b!1662720 (= e!1065916 (and tp!479458 tp!479454))))

(assert (= (and b!1661882 ((_ is ElementMatch!4559) (regex!3231 (rule!5115 (h!23735 tokens!457))))) b!1662719))

(assert (= (and b!1661882 ((_ is Concat!7881) (regex!3231 (rule!5115 (h!23735 tokens!457))))) b!1662720))

(assert (= (and b!1661882 ((_ is Star!4559) (regex!3231 (rule!5115 (h!23735 tokens!457))))) b!1662721))

(assert (= (and b!1661882 ((_ is Union!4559) (regex!3231 (rule!5115 (h!23735 tokens!457))))) b!1662722))

(declare-fun b_lambda!52183 () Bool)

(assert (= b_lambda!52181 (or (and b!1661889 b_free!45145 (= (toChars!4545 (transformation!3231 (h!23734 rules!1846))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))))) (and b!1661868 b_free!45149 (= (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))))) (and b!1662685 b_free!45161 (= (toChars!4545 (transformation!3231 (h!23734 (t!151810 rules!1846)))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))))) (and b!1662699 b_free!45165) b_lambda!52183)))

(declare-fun b_lambda!52185 () Bool)

(assert (= b_lambda!52165 (or (and b!1661889 b_free!45145 (= (toChars!4545 (transformation!3231 (h!23734 rules!1846))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))))) (and b!1661868 b_free!45149) (and b!1662685 b_free!45161 (= (toChars!4545 (transformation!3231 (h!23734 (t!151810 rules!1846)))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))))) (and b!1662699 b_free!45165 (= (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))))) b_lambda!52185)))

(declare-fun b_lambda!52187 () Bool)

(assert (= b_lambda!52173 (or (and b!1661889 b_free!45145 (= (toChars!4545 (transformation!3231 (h!23734 rules!1846))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))))) (and b!1661868 b_free!45149) (and b!1662685 b_free!45161 (= (toChars!4545 (transformation!3231 (h!23734 (t!151810 rules!1846)))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))))) (and b!1662699 b_free!45165 (= (toChars!4545 (transformation!3231 (rule!5115 (h!23735 (t!151811 tokens!457))))) (toChars!4545 (transformation!3231 (rule!5115 (h!23735 tokens!457)))))) b_lambda!52187)))

(check-sat (not b!1662474) (not tb!95259) (not d!502258) (not b!1661976) (not b!1661932) (not d!502274) (not b!1662275) (not d!502204) (not d!502190) (not b!1662288) (not d!502210) (not b!1662713) (not b!1662583) (not d!502266) (not d!502012) (not d!501960) (not d!502098) tp_is_empty!7393 (not b!1662512) (not b!1662668) (not d!502196) (not b!1662407) (not b!1662482) (not d!501992) (not b!1661982) (not b!1662276) (not b!1662156) (not bm!106452) b_and!118041 (not b!1662188) (not b!1662240) b_and!118051 (not b_lambda!52187) (not d!501990) (not b!1662671) (not d!502248) b_and!118043 (not b_next!45847) (not b!1662587) (not b!1662151) (not b_next!45849) (not b!1662520) (not d!502202) (not b!1662285) (not bm!106460) (not b!1662207) (not bm!106449) (not b!1662511) (not b!1662394) b_and!118005 (not b_next!45867) (not b!1662712) (not b_lambda!52185) (not bm!106466) (not b!1662476) (not b!1662501) (not bm!106461) b_and!118009 (not d!502198) (not b!1662416) (not b!1661966) (not d!501988) (not d!502008) (not d!502000) (not d!502116) (not d!502146) (not b!1662674) (not bm!106447) (not b!1662211) (not tb!95239) (not b!1662270) (not d!502200) (not b_next!45863) (not b!1662475) (not d!502142) (not d!502136) (not b!1662152) (not d!502232) (not b!1662670) (not d!502002) (not b!1662422) (not b!1662149) (not b!1662189) (not b!1662253) (not b!1662283) (not d!502126) (not d!502144) (not b!1662392) b_and!118047 (not b!1662186) (not b!1662711) (not b!1662698) (not b!1662481) (not d!502212) b_and!118049 (not b!1662500) (not b!1662274) (not b!1661956) (not b!1661948) (not d!502272) (not b!1662718) (not b!1662239) (not b!1662669) (not d!502208) (not b!1662183) (not d!502184) (not d!502230) (not b!1662157) (not b!1662185) (not b!1662581) (not d!502102) (not d!502092) (not b!1662212) (not b!1662421) (not b!1661923) (not d!502120) (not b!1661950) (not b!1662505) (not b!1661951) (not b!1662187) (not b!1662209) (not d!502096) (not b!1662381) (not b!1662382) (not b!1662418) (not b!1662282) (not b!1662195) (not d!502004) (not b!1662200) (not b!1661977) (not d!502128) (not b_next!45851) (not d!502206) (not b!1662190) (not b!1662393) (not d!502270) (not d!502130) (not d!502104) (not bm!106448) (not d!502118) (not b!1661975) (not b_lambda!52183) (not b!1662498) (not b!1662683) (not d!502090) (not b!1662265) (not b!1662191) (not b!1662199) (not b!1662412) (not d!501994) (not b!1662419) (not b!1662194) (not b!1662182) (not b!1662582) (not b!1662284) (not b!1661967) (not b!1662720) (not b!1661979) (not b!1662180) (not b!1662281) (not d!502138) (not b!1662295) (not d!502194) (not b!1662502) (not b!1661922) (not b!1662659) (not d!501996) (not b!1662277) (not d!502180) (not b!1662254) (not b!1662722) (not b!1662684) (not b_next!45869) (not d!502216) (not b!1662287) (not b!1662588) (not d!502236) (not b!1662479) (not b!1662503) (not d!502088) (not b!1662192) (not b!1662278) (not b!1662696) (not b!1661980) (not d!501982) (not d!501984) (not d!502238) (not b!1662409) (not b!1662181) (not b!1662255) (not b!1661949) (not b!1662580) (not b!1662499) (not b!1662415) (not d!502192) (not b_next!45853) (not d!502214) (not d!502252) (not b!1662697) (not b!1661981) b_and!118045 (not d!502278) (not b!1662208) (not b!1662280) (not b_next!45865) (not b!1662206) (not d!502122) (not d!502280) (not b!1662154) (not b!1662477) (not d!502100) (not b!1662408) (not b!1662161) (not d!502276) (not b!1662158) (not d!502134) (not b!1662721) (not b!1662620) (not b!1662478) (not b!1662420) (not b!1662196) (not d!502006) (not d!501998) (not d!501986) (not b!1662263) (not b!1662197))
(check-sat b_and!118041 (not b_next!45849) b_and!118009 (not b_next!45863) b_and!118047 b_and!118049 (not b_next!45851) (not b_next!45869) (not b_next!45853) b_and!118051 b_and!118043 (not b_next!45847) b_and!118005 (not b_next!45867) b_and!118045 (not b_next!45865))
