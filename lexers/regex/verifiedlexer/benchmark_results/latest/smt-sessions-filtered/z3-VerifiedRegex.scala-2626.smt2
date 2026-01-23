; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!141314 () Bool)

(assert start!141314)

(declare-fun b!1514478 () Bool)

(declare-fun b_free!39323 () Bool)

(declare-fun b_next!40027 () Bool)

(assert (=> b!1514478 (= b_free!39323 (not b_next!40027))))

(declare-fun tp!433679 () Bool)

(declare-fun b_and!105341 () Bool)

(assert (=> b!1514478 (= tp!433679 b_and!105341)))

(declare-fun b_free!39325 () Bool)

(declare-fun b_next!40029 () Bool)

(assert (=> b!1514478 (= b_free!39325 (not b_next!40029))))

(declare-fun tp!433678 () Bool)

(declare-fun b_and!105343 () Bool)

(assert (=> b!1514478 (= tp!433678 b_and!105343)))

(declare-fun b!1514481 () Bool)

(declare-fun b_free!39327 () Bool)

(declare-fun b_next!40031 () Bool)

(assert (=> b!1514481 (= b_free!39327 (not b_next!40031))))

(declare-fun tp!433675 () Bool)

(declare-fun b_and!105345 () Bool)

(assert (=> b!1514481 (= tp!433675 b_and!105345)))

(declare-fun b!1514449 () Bool)

(declare-fun b_free!39329 () Bool)

(declare-fun b_next!40033 () Bool)

(assert (=> b!1514449 (= b_free!39329 (not b_next!40033))))

(declare-fun tp!433663 () Bool)

(declare-fun b_and!105347 () Bool)

(assert (=> b!1514449 (= tp!433663 b_and!105347)))

(declare-fun b!1514460 () Bool)

(declare-fun b_free!39331 () Bool)

(declare-fun b_next!40035 () Bool)

(assert (=> b!1514460 (= b_free!39331 (not b_next!40035))))

(declare-fun tp!433667 () Bool)

(declare-fun b_and!105349 () Bool)

(assert (=> b!1514460 (= tp!433667 b_and!105349)))

(declare-fun b!1514447 () Bool)

(declare-fun b_free!39333 () Bool)

(declare-fun b_next!40037 () Bool)

(assert (=> b!1514447 (= b_free!39333 (not b_next!40037))))

(declare-fun tp!433676 () Bool)

(declare-fun b_and!105351 () Bool)

(assert (=> b!1514447 (= tp!433676 b_and!105351)))

(declare-fun b!1514482 () Bool)

(declare-fun b_free!39335 () Bool)

(declare-fun b_next!40039 () Bool)

(assert (=> b!1514482 (= b_free!39335 (not b_next!40039))))

(declare-fun tp!433659 () Bool)

(declare-fun b_and!105353 () Bool)

(assert (=> b!1514482 (= tp!433659 b_and!105353)))

(declare-fun b!1514479 () Bool)

(declare-fun b_free!39337 () Bool)

(declare-fun b_next!40041 () Bool)

(assert (=> b!1514479 (= b_free!39337 (not b_next!40041))))

(declare-fun tp!433682 () Bool)

(declare-fun b_and!105355 () Bool)

(assert (=> b!1514479 (= tp!433682 b_and!105355)))

(declare-fun b!1514443 () Bool)

(declare-fun res!681239 () Bool)

(declare-fun e!968628 () Bool)

(assert (=> b!1514443 (=> (not res!681239) (not e!968628))))

(declare-datatypes ((C!8504 0))(
  ( (C!8505 (val!4824 Int)) )
))
(declare-datatypes ((Regex!4163 0))(
  ( (ElementMatch!4163 (c!248130 C!8504)) (Concat!7100 (regOne!8838 Regex!4163) (regTwo!8838 Regex!4163)) (EmptyExpr!4163) (Star!4163 (reg!4492 Regex!4163)) (EmptyLang!4163) (Union!4163 (regOne!8839 Regex!4163) (regTwo!8839 Regex!4163)) )
))
(declare-datatypes ((List!16166 0))(
  ( (Nil!16098) (Cons!16098 (h!21499 Regex!4163) (t!139450 List!16166)) )
))
(declare-datatypes ((Context!1362 0))(
  ( (Context!1363 (exprs!1181 List!16166)) )
))
(declare-datatypes ((tuple2!14984 0))(
  ( (tuple2!14985 (_1!8518 Context!1362) (_2!8518 C!8504)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14986 0))(
  ( (tuple2!14987 (_1!8519 tuple2!14984) (_2!8519 (InoxSet Context!1362))) )
))
(declare-datatypes ((List!16167 0))(
  ( (Nil!16099) (Cons!16099 (h!21500 tuple2!14986) (t!139451 List!16167)) )
))
(declare-datatypes ((array!5218 0))(
  ( (array!5219 (arr!2326 (Array (_ BitVec 32) (_ BitVec 64))) (size!13017 (_ BitVec 32))) )
))
(declare-datatypes ((array!5220 0))(
  ( (array!5221 (arr!2327 (Array (_ BitVec 32) List!16167)) (size!13018 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2976 0))(
  ( (LongMapFixedSize!2977 (defaultEntry!1848 Int) (mask!4658 (_ BitVec 32)) (extraKeys!1735 (_ BitVec 32)) (zeroValue!1745 List!16167) (minValue!1745 List!16167) (_size!3057 (_ BitVec 32)) (_keys!1782 array!5218) (_values!1767 array!5220) (_vacant!1549 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1432 0))(
  ( (HashableExt!1431 (__x!10071 Int)) )
))
(declare-datatypes ((Cell!5837 0))(
  ( (Cell!5838 (v!22909 LongMapFixedSize!2976)) )
))
(declare-datatypes ((MutLongMap!1488 0))(
  ( (LongMap!1488 (underlying!3185 Cell!5837)) (MutLongMapExt!1487 (__x!10072 Int)) )
))
(declare-datatypes ((Cell!5839 0))(
  ( (Cell!5840 (v!22910 MutLongMap!1488)) )
))
(declare-datatypes ((MutableMap!1432 0))(
  ( (MutableMapExt!1431 (__x!10073 Int)) (HashMap!1432 (underlying!3186 Cell!5839) (hashF!3351 Hashable!1432) (_size!3058 (_ BitVec 32)) (defaultValue!1592 Int)) )
))
(declare-datatypes ((CacheUp!856 0))(
  ( (CacheUp!857 (cache!1813 MutableMap!1432)) )
))
(declare-fun cacheUp!616 () CacheUp!856)

(declare-fun valid!1189 (CacheUp!856) Bool)

(assert (=> b!1514443 (= res!681239 (valid!1189 cacheUp!616))))

(declare-fun b!1514444 () Bool)

(declare-fun e!968650 () Bool)

(declare-fun e!968647 () Bool)

(assert (=> b!1514444 (= e!968650 e!968647)))

(declare-fun b!1514445 () Bool)

(declare-fun res!681236 () Bool)

(declare-fun e!968646 () Bool)

(assert (=> b!1514445 (=> (not res!681236) (not e!968646))))

(declare-datatypes ((List!16168 0))(
  ( (Nil!16100) (Cons!16100 (h!21501 (_ BitVec 16)) (t!139452 List!16168)) )
))
(declare-datatypes ((TokenValue!2937 0))(
  ( (FloatLiteralValue!5874 (text!21004 List!16168)) (TokenValueExt!2936 (__x!10074 Int)) (Broken!14685 (value!90775 List!16168)) (Object!3004) (End!2937) (Def!2937) (Underscore!2937) (Match!2937) (Else!2937) (Error!2937) (Case!2937) (If!2937) (Extends!2937) (Abstract!2937) (Class!2937) (Val!2937) (DelimiterValue!5874 (del!2997 List!16168)) (KeywordValue!2943 (value!90776 List!16168)) (CommentValue!5874 (value!90777 List!16168)) (WhitespaceValue!5874 (value!90778 List!16168)) (IndentationValue!2937 (value!90779 List!16168)) (String!18948) (Int32!2937) (Broken!14686 (value!90780 List!16168)) (Boolean!2938) (Unit!25753) (OperatorValue!2940 (op!2997 List!16168)) (IdentifierValue!5874 (value!90781 List!16168)) (IdentifierValue!5875 (value!90782 List!16168)) (WhitespaceValue!5875 (value!90783 List!16168)) (True!5874) (False!5874) (Broken!14687 (value!90784 List!16168)) (Broken!14688 (value!90785 List!16168)) (True!5875) (RightBrace!2937) (RightBracket!2937) (Colon!2937) (Null!2937) (Comma!2937) (LeftBracket!2937) (False!5875) (LeftBrace!2937) (ImaginaryLiteralValue!2937 (text!21005 List!16168)) (StringLiteralValue!8811 (value!90786 List!16168)) (EOFValue!2937 (value!90787 List!16168)) (IdentValue!2937 (value!90788 List!16168)) (DelimiterValue!5875 (value!90789 List!16168)) (DedentValue!2937 (value!90790 List!16168)) (NewLineValue!2937 (value!90791 List!16168)) (IntegerValue!8811 (value!90792 (_ BitVec 32)) (text!21006 List!16168)) (IntegerValue!8812 (value!90793 Int) (text!21007 List!16168)) (Times!2937) (Or!2937) (Equal!2937) (Minus!2937) (Broken!14689 (value!90794 List!16168)) (And!2937) (Div!2937) (LessEqual!2937) (Mod!2937) (Concat!7101) (Not!2937) (Plus!2937) (SpaceValue!2937 (value!90795 List!16168)) (IntegerValue!8813 (value!90796 Int) (text!21008 List!16168)) (StringLiteralValue!8812 (text!21009 List!16168)) (FloatLiteralValue!5875 (text!21010 List!16168)) (BytesLiteralValue!2937 (value!90797 List!16168)) (CommentValue!5875 (value!90798 List!16168)) (StringLiteralValue!8813 (value!90799 List!16168)) (ErrorTokenValue!2937 (msg!2998 List!16168)) )
))
(declare-datatypes ((List!16169 0))(
  ( (Nil!16101) (Cons!16101 (h!21502 C!8504) (t!139453 List!16169)) )
))
(declare-datatypes ((IArray!10897 0))(
  ( (IArray!10898 (innerList!5506 List!16169)) )
))
(declare-datatypes ((Conc!5446 0))(
  ( (Node!5446 (left!13374 Conc!5446) (right!13704 Conc!5446) (csize!11122 Int) (cheight!5657 Int)) (Leaf!8073 (xs!8229 IArray!10897) (csize!11123 Int)) (Empty!5446) )
))
(declare-datatypes ((BalanceConc!10834 0))(
  ( (BalanceConc!10835 (c!248131 Conc!5446)) )
))
(declare-datatypes ((String!18949 0))(
  ( (String!18950 (value!90800 String)) )
))
(declare-datatypes ((TokenValueInjection!5534 0))(
  ( (TokenValueInjection!5535 (toValue!4198 Int) (toChars!4057 Int)) )
))
(declare-datatypes ((Rule!5494 0))(
  ( (Rule!5495 (regex!2847 Regex!4163) (tag!3111 String!18949) (isSeparator!2847 Bool) (transformation!2847 TokenValueInjection!5534)) )
))
(declare-datatypes ((Token!5356 0))(
  ( (Token!5357 (value!90801 TokenValue!2937) (rule!4640 Rule!5494) (size!13019 Int) (originalCharacters!3709 List!16169)) )
))
(declare-datatypes ((List!16170 0))(
  ( (Nil!16102) (Cons!16102 (h!21503 Token!5356) (t!139454 List!16170)) )
))
(declare-datatypes ((IArray!10899 0))(
  ( (IArray!10900 (innerList!5507 List!16170)) )
))
(declare-datatypes ((Conc!5447 0))(
  ( (Node!5447 (left!13375 Conc!5447) (right!13705 Conc!5447) (csize!11124 Int) (cheight!5658 Int)) (Leaf!8074 (xs!8230 IArray!10899) (csize!11125 Int)) (Empty!5447) )
))
(declare-datatypes ((BalanceConc!10836 0))(
  ( (BalanceConc!10837 (c!248132 Conc!5447)) )
))
(declare-datatypes ((tuple2!14988 0))(
  ( (tuple2!14989 (_1!8520 BalanceConc!10836) (_2!8520 BalanceConc!10834)) )
))
(declare-fun lt!526567 () tuple2!14988)

(declare-fun isEmpty!9938 (List!16169) Bool)

(declare-fun list!6357 (BalanceConc!10834) List!16169)

(assert (=> b!1514445 (= res!681236 (isEmpty!9938 (list!6357 (_2!8520 lt!526567))))))

(declare-fun res!681240 () Bool)

(declare-fun e!968661 () Bool)

(assert (=> start!141314 (=> (not res!681240) (not e!968661))))

(declare-datatypes ((LexerInterface!2499 0))(
  ( (LexerInterfaceExt!2496 (__x!10075 Int)) (Lexer!2497) )
))
(declare-fun thiss!13241 () LexerInterface!2499)

(get-info :version)

(assert (=> start!141314 (= res!681240 ((_ is Lexer!2497) thiss!13241))))

(assert (=> start!141314 e!968661))

(declare-fun acc!392 () BalanceConc!10836)

(declare-fun e!968658 () Bool)

(declare-fun inv!21335 (BalanceConc!10836) Bool)

(assert (=> start!141314 (and (inv!21335 acc!392) e!968658)))

(declare-fun e!968663 () Bool)

(declare-fun inv!21336 (CacheUp!856) Bool)

(assert (=> start!141314 (and (inv!21336 cacheUp!616) e!968663)))

(declare-datatypes ((tuple3!1372 0))(
  ( (tuple3!1373 (_1!8521 Regex!4163) (_2!8521 Context!1362) (_3!1026 C!8504)) )
))
(declare-datatypes ((tuple2!14990 0))(
  ( (tuple2!14991 (_1!8522 tuple3!1372) (_2!8522 (InoxSet Context!1362))) )
))
(declare-datatypes ((List!16171 0))(
  ( (Nil!16103) (Cons!16103 (h!21504 tuple2!14990) (t!139455 List!16171)) )
))
(declare-datatypes ((array!5222 0))(
  ( (array!5223 (arr!2328 (Array (_ BitVec 32) List!16171)) (size!13020 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2978 0))(
  ( (LongMapFixedSize!2979 (defaultEntry!1849 Int) (mask!4659 (_ BitVec 32)) (extraKeys!1736 (_ BitVec 32)) (zeroValue!1746 List!16171) (minValue!1746 List!16171) (_size!3059 (_ BitVec 32)) (_keys!1783 array!5218) (_values!1768 array!5222) (_vacant!1550 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5841 0))(
  ( (Cell!5842 (v!22911 LongMapFixedSize!2978)) )
))
(declare-datatypes ((MutLongMap!1489 0))(
  ( (LongMap!1489 (underlying!3187 Cell!5841)) (MutLongMapExt!1488 (__x!10076 Int)) )
))
(declare-datatypes ((Cell!5843 0))(
  ( (Cell!5844 (v!22912 MutLongMap!1489)) )
))
(declare-datatypes ((Hashable!1433 0))(
  ( (HashableExt!1432 (__x!10077 Int)) )
))
(declare-datatypes ((MutableMap!1433 0))(
  ( (MutableMapExt!1432 (__x!10078 Int)) (HashMap!1433 (underlying!3188 Cell!5843) (hashF!3352 Hashable!1433) (_size!3060 (_ BitVec 32)) (defaultValue!1593 Int)) )
))
(declare-datatypes ((CacheDown!858 0))(
  ( (CacheDown!859 (cache!1814 MutableMap!1433)) )
))
(declare-fun cacheDown!629 () CacheDown!858)

(declare-fun e!968638 () Bool)

(declare-fun inv!21337 (CacheDown!858) Bool)

(assert (=> start!141314 (and (inv!21337 cacheDown!629) e!968638)))

(declare-fun input!1102 () BalanceConc!10834)

(declare-fun e!968652 () Bool)

(declare-fun inv!21338 (BalanceConc!10834) Bool)

(assert (=> start!141314 (and (inv!21338 input!1102) e!968652)))

(declare-fun treated!70 () BalanceConc!10834)

(declare-fun e!968651 () Bool)

(assert (=> start!141314 (and (inv!21338 treated!70) e!968651)))

(assert (=> start!141314 true))

(declare-fun e!968641 () Bool)

(assert (=> start!141314 e!968641))

(declare-datatypes ((tuple3!1374 0))(
  ( (tuple3!1375 (_1!8523 (InoxSet Context!1362)) (_2!8523 Int) (_3!1027 Int)) )
))
(declare-datatypes ((tuple2!14992 0))(
  ( (tuple2!14993 (_1!8524 tuple3!1374) (_2!8524 Int)) )
))
(declare-datatypes ((List!16172 0))(
  ( (Nil!16104) (Cons!16104 (h!21505 tuple2!14992) (t!139456 List!16172)) )
))
(declare-datatypes ((array!5224 0))(
  ( (array!5225 (arr!2329 (Array (_ BitVec 32) List!16172)) (size!13021 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2980 0))(
  ( (LongMapFixedSize!2981 (defaultEntry!1850 Int) (mask!4660 (_ BitVec 32)) (extraKeys!1737 (_ BitVec 32)) (zeroValue!1747 List!16172) (minValue!1747 List!16172) (_size!3061 (_ BitVec 32)) (_keys!1784 array!5218) (_values!1769 array!5224) (_vacant!1551 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5845 0))(
  ( (Cell!5846 (v!22913 LongMapFixedSize!2980)) )
))
(declare-datatypes ((MutLongMap!1490 0))(
  ( (LongMap!1490 (underlying!3189 Cell!5845)) (MutLongMapExt!1489 (__x!10079 Int)) )
))
(declare-datatypes ((Cell!5847 0))(
  ( (Cell!5848 (v!22914 MutLongMap!1490)) )
))
(declare-datatypes ((Hashable!1434 0))(
  ( (HashableExt!1433 (__x!10080 Int)) )
))
(declare-datatypes ((MutableMap!1434 0))(
  ( (MutableMapExt!1433 (__x!10081 Int)) (HashMap!1434 (underlying!3190 Cell!5847) (hashF!3353 Hashable!1434) (_size!3062 (_ BitVec 32)) (defaultValue!1594 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!278 0))(
  ( (CacheFurthestNullable!279 (cache!1815 MutableMap!1434) (totalInput!2301 BalanceConc!10834)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!278)

(declare-fun e!968649 () Bool)

(declare-fun inv!21339 (CacheFurthestNullable!278) Bool)

(assert (=> start!141314 (and (inv!21339 cacheFurthestNullable!64) e!968649)))

(declare-fun totalInput!458 () BalanceConc!10834)

(declare-fun e!968631 () Bool)

(assert (=> start!141314 (and (inv!21338 totalInput!458) e!968631)))

(declare-fun b!1514446 () Bool)

(declare-fun tp!433683 () Bool)

(declare-fun inv!21340 (Conc!5446) Bool)

(assert (=> b!1514446 (= e!968652 (and (inv!21340 (c!248131 input!1102)) tp!433683))))

(declare-fun e!968648 () Bool)

(declare-fun e!968659 () Bool)

(assert (=> b!1514447 (= e!968648 (and e!968659 tp!433676))))

(declare-fun b!1514448 () Bool)

(declare-fun tp!433673 () Bool)

(assert (=> b!1514448 (= e!968651 (and (inv!21340 (c!248131 treated!70)) tp!433673))))

(declare-fun e!968662 () Bool)

(declare-fun e!968639 () Bool)

(declare-fun tp!433672 () Bool)

(declare-fun tp!433660 () Bool)

(declare-fun array_inv!1679 (array!5218) Bool)

(declare-fun array_inv!1680 (array!5220) Bool)

(assert (=> b!1514449 (= e!968662 (and tp!433663 tp!433672 tp!433660 (array_inv!1679 (_keys!1782 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))) (array_inv!1680 (_values!1767 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))) e!968639))))

(declare-fun b!1514450 () Bool)

(declare-fun tp!433661 () Bool)

(declare-fun inv!21341 (Conc!5447) Bool)

(assert (=> b!1514450 (= e!968658 (and (inv!21341 (c!248132 acc!392)) tp!433661))))

(declare-fun b!1514451 () Bool)

(declare-fun e!968629 () Bool)

(assert (=> b!1514451 (= e!968638 e!968629)))

(declare-fun b!1514452 () Bool)

(declare-fun res!681235 () Bool)

(assert (=> b!1514452 (=> (not res!681235) (not e!968628))))

(declare-fun valid!1190 (CacheFurthestNullable!278) Bool)

(assert (=> b!1514452 (= res!681235 (valid!1190 cacheFurthestNullable!64))))

(declare-fun b!1514453 () Bool)

(declare-fun res!681229 () Bool)

(assert (=> b!1514453 (=> (not res!681229) (not e!968628))))

(declare-fun valid!1191 (CacheDown!858) Bool)

(assert (=> b!1514453 (= res!681229 (valid!1191 cacheDown!629))))

(declare-fun b!1514454 () Bool)

(declare-fun e!968665 () Bool)

(declare-fun e!968627 () Bool)

(assert (=> b!1514454 (= e!968665 e!968627)))

(declare-fun e!968657 () Bool)

(declare-fun e!968642 () Bool)

(declare-fun b!1514455 () Bool)

(assert (=> b!1514455 (= e!968649 (and e!968657 (inv!21338 (totalInput!2301 cacheFurthestNullable!64)) e!968642))))

(declare-fun b!1514456 () Bool)

(declare-fun e!968664 () Bool)

(declare-fun e!968644 () Bool)

(declare-fun lt!526576 () MutLongMap!1490)

(assert (=> b!1514456 (= e!968664 (and e!968644 ((_ is LongMap!1490) lt!526576)))))

(assert (=> b!1514456 (= lt!526576 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))

(declare-fun mapIsEmpty!7050 () Bool)

(declare-fun mapRes!7051 () Bool)

(assert (=> mapIsEmpty!7050 mapRes!7051))

(declare-fun b!1514457 () Bool)

(declare-fun res!681241 () Bool)

(assert (=> b!1514457 (=> (not res!681241) (not e!968628))))

(assert (=> b!1514457 (= res!681241 (= (totalInput!2301 cacheFurthestNullable!64) totalInput!458))))

(declare-fun mapIsEmpty!7051 () Bool)

(declare-fun mapRes!7050 () Bool)

(assert (=> mapIsEmpty!7051 mapRes!7050))

(declare-fun b!1514458 () Bool)

(declare-fun tp!433669 () Bool)

(declare-fun mapRes!7052 () Bool)

(assert (=> b!1514458 (= e!968639 (and tp!433669 mapRes!7052))))

(declare-fun condMapEmpty!7052 () Bool)

(declare-fun mapDefault!7051 () List!16167)

(assert (=> b!1514458 (= condMapEmpty!7052 (= (arr!2327 (_values!1767 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16167)) mapDefault!7051)))))

(declare-fun b!1514459 () Bool)

(declare-fun e!968643 () Bool)

(assert (=> b!1514459 (= e!968643 e!968665)))

(assert (=> b!1514460 (= e!968657 (and e!968664 tp!433667))))

(declare-fun b!1514461 () Bool)

(declare-fun e!968635 () tuple2!14988)

(assert (=> b!1514461 (= e!968635 (tuple2!14989 (BalanceConc!10837 Empty!5447) input!1102))))

(declare-fun b!1514462 () Bool)

(declare-fun e!968630 () Bool)

(declare-fun tp!433677 () Bool)

(assert (=> b!1514462 (= e!968641 (and e!968630 tp!433677))))

(declare-fun mapNonEmpty!7050 () Bool)

(declare-fun tp!433670 () Bool)

(declare-fun tp!433681 () Bool)

(assert (=> mapNonEmpty!7050 (= mapRes!7052 (and tp!433670 tp!433681))))

(declare-fun mapKey!7051 () (_ BitVec 32))

(declare-fun mapValue!7052 () List!16167)

(declare-fun mapRest!7052 () (Array (_ BitVec 32) List!16167))

(assert (=> mapNonEmpty!7050 (= (arr!2327 (_values!1767 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))) (store mapRest!7052 mapKey!7051 mapValue!7052))))

(declare-fun b!1514463 () Bool)

(declare-fun e!968640 () Bool)

(declare-fun lt!526573 () MutLongMap!1489)

(assert (=> b!1514463 (= e!968640 (and e!968643 ((_ is LongMap!1489) lt!526573)))))

(assert (=> b!1514463 (= lt!526573 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))

(declare-fun b!1514464 () Bool)

(declare-fun e!968632 () Bool)

(declare-fun e!968656 () Bool)

(assert (=> b!1514464 (= e!968632 e!968656)))

(declare-fun res!681228 () Bool)

(assert (=> b!1514464 (=> res!681228 e!968656)))

(declare-datatypes ((tuple2!14994 0))(
  ( (tuple2!14995 (_1!8525 Token!5356) (_2!8525 BalanceConc!10834)) )
))
(declare-datatypes ((Option!2934 0))(
  ( (None!2933) (Some!2933 (v!22915 tuple2!14994)) )
))
(declare-datatypes ((tuple4!680 0))(
  ( (tuple4!681 (_1!8526 Option!2934) (_2!8526 CacheUp!856) (_3!1028 CacheDown!858) (_4!340 CacheFurthestNullable!278)) )
))
(declare-fun lt!526577 () tuple4!680)

(assert (=> b!1514464 (= res!681228 (not ((_ is Some!2933) (_1!8526 lt!526577))))))

(declare-datatypes ((List!16173 0))(
  ( (Nil!16105) (Cons!16105 (h!21506 Rule!5494) (t!139457 List!16173)) )
))
(declare-fun rules!1640 () List!16173)

(declare-fun maxPrefixZipperSequenceV3Mem!27 (LexerInterface!2499 List!16173 BalanceConc!10834 BalanceConc!10834 CacheUp!856 CacheDown!858 CacheFurthestNullable!278) tuple4!680)

(assert (=> b!1514464 (= lt!526577 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1514465 () Bool)

(declare-fun res!681233 () Bool)

(assert (=> b!1514465 (=> (not res!681233) (not e!968628))))

(declare-fun lt!526570 () tuple2!14988)

(declare-fun lt!526585 () tuple2!14988)

(assert (=> b!1514465 (= res!681233 (= (list!6357 (_2!8520 lt!526570)) (list!6357 (_2!8520 lt!526585))))))

(declare-fun b!1514466 () Bool)

(declare-fun lt!526571 () tuple2!14988)

(declare-fun lt!526574 () Option!2934)

(declare-fun prepend!469 (BalanceConc!10836 Token!5356) BalanceConc!10836)

(assert (=> b!1514466 (= e!968635 (tuple2!14989 (prepend!469 (_1!8520 lt!526571) (_1!8525 (v!22915 lt!526574))) (_2!8520 lt!526571)))))

(declare-fun lexRec!334 (LexerInterface!2499 List!16173 BalanceConc!10834) tuple2!14988)

(assert (=> b!1514466 (= lt!526571 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526574))))))

(declare-fun b!1514467 () Bool)

(declare-fun e!968636 () Bool)

(assert (=> b!1514467 (= e!968636 e!968662)))

(declare-fun b!1514468 () Bool)

(assert (=> b!1514468 (= e!968646 e!968628)))

(declare-fun res!681230 () Bool)

(assert (=> b!1514468 (=> (not res!681230) (not e!968628))))

(declare-fun list!6358 (BalanceConc!10836) List!16170)

(declare-fun ++!4366 (BalanceConc!10836 BalanceConc!10836) BalanceConc!10836)

(assert (=> b!1514468 (= res!681230 (= (list!6358 (_1!8520 lt!526570)) (list!6358 (++!4366 acc!392 (_1!8520 lt!526585)))))))

(assert (=> b!1514468 (= lt!526585 (lexRec!334 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1514468 (= lt!526570 (lexRec!334 thiss!13241 rules!1640 totalInput!458))))

(declare-fun mapIsEmpty!7052 () Bool)

(assert (=> mapIsEmpty!7052 mapRes!7052))

(declare-fun b!1514469 () Bool)

(declare-fun e!968633 () Bool)

(assert (=> b!1514469 (= e!968633 e!968646)))

(declare-fun res!681231 () Bool)

(assert (=> b!1514469 (=> (not res!681231) (not e!968646))))

(declare-fun lt!526565 () List!16170)

(declare-fun lt!526584 () List!16170)

(assert (=> b!1514469 (= res!681231 (= lt!526565 lt!526584))))

(assert (=> b!1514469 (= lt!526584 (list!6358 acc!392))))

(assert (=> b!1514469 (= lt!526565 (list!6358 (_1!8520 lt!526567)))))

(assert (=> b!1514469 (= lt!526567 (lexRec!334 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1514470 () Bool)

(declare-fun lt!526564 () List!16170)

(declare-fun isEmpty!9939 (List!16170) Bool)

(assert (=> b!1514470 (= e!968656 (not (isEmpty!9939 lt!526564)))))

(declare-fun lt!526578 () List!16169)

(declare-fun lt!526566 () tuple2!14988)

(assert (=> b!1514470 (= lt!526578 (list!6357 (_2!8520 lt!526566)))))

(declare-fun append!504 (BalanceConc!10836 Token!5356) BalanceConc!10836)

(assert (=> b!1514470 (= lt!526564 (list!6358 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))

(declare-fun lt!526582 () List!16170)

(declare-fun lt!526572 () List!16170)

(declare-fun ++!4367 (List!16170 List!16170) List!16170)

(assert (=> b!1514470 (= (++!4367 (++!4367 lt!526584 lt!526582) lt!526572) (++!4367 lt!526584 (++!4367 lt!526582 lt!526572)))))

(declare-datatypes ((Unit!25754 0))(
  ( (Unit!25755) )
))
(declare-fun lt!526581 () Unit!25754)

(declare-fun lemmaConcatAssociativity!946 (List!16170 List!16170 List!16170) Unit!25754)

(assert (=> b!1514470 (= lt!526581 (lemmaConcatAssociativity!946 lt!526584 lt!526582 lt!526572))))

(assert (=> b!1514470 (= lt!526572 (list!6358 (_1!8520 lt!526566)))))

(assert (=> b!1514470 (= lt!526582 (Cons!16102 (_1!8525 (v!22915 (_1!8526 lt!526577))) Nil!16102))))

(assert (=> b!1514470 (= lt!526585 e!968635)))

(declare-fun c!248129 () Bool)

(assert (=> b!1514470 (= c!248129 ((_ is Some!2933) lt!526574))))

(declare-fun maxPrefixZipperSequence!592 (LexerInterface!2499 List!16173 BalanceConc!10834) Option!2934)

(assert (=> b!1514470 (= lt!526574 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!526569 () List!16169)

(declare-fun lt!526561 () List!16169)

(declare-fun lt!526580 () List!16169)

(declare-fun ++!4368 (List!16169 List!16169) List!16169)

(assert (=> b!1514470 (= (++!4368 (++!4368 lt!526569 lt!526561) lt!526580) (++!4368 lt!526569 (++!4368 lt!526561 lt!526580)))))

(declare-fun lt!526583 () Unit!25754)

(declare-fun lemmaConcatAssociativity!947 (List!16169 List!16169 List!16169) Unit!25754)

(assert (=> b!1514470 (= lt!526583 (lemmaConcatAssociativity!947 lt!526569 lt!526561 lt!526580))))

(assert (=> b!1514470 (= lt!526580 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))

(declare-fun charsOf!1632 (Token!5356) BalanceConc!10834)

(assert (=> b!1514470 (= lt!526561 (list!6357 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (=> b!1514470 (= lt!526566 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))

(declare-fun b!1514471 () Bool)

(declare-fun e!968645 () Bool)

(declare-fun lt!526575 () MutLongMap!1488)

(assert (=> b!1514471 (= e!968659 (and e!968645 ((_ is LongMap!1488) lt!526575)))))

(assert (=> b!1514471 (= lt!526575 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))

(declare-fun b!1514472 () Bool)

(assert (=> b!1514472 (= e!968628 (not e!968632))))

(declare-fun res!681237 () Bool)

(assert (=> b!1514472 (=> res!681237 e!968632)))

(declare-fun lt!526579 () List!16169)

(declare-fun lt!526568 () List!16169)

(declare-fun isSuffix!304 (List!16169 List!16169) Bool)

(assert (=> b!1514472 (= res!681237 (not (isSuffix!304 lt!526579 lt!526568)))))

(declare-fun lt!526563 () List!16169)

(assert (=> b!1514472 (isSuffix!304 lt!526579 lt!526563)))

(declare-fun lt!526562 () Unit!25754)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!282 (List!16169 List!16169) Unit!25754)

(assert (=> b!1514472 (= lt!526562 (lemmaConcatTwoListThenFSndIsSuffix!282 lt!526569 lt!526579))))

(declare-fun b!1514473 () Bool)

(assert (=> b!1514473 (= e!968644 e!968650)))

(declare-fun b!1514474 () Bool)

(assert (=> b!1514474 (= e!968645 e!968636)))

(declare-fun b!1514475 () Bool)

(assert (=> b!1514475 (= e!968663 e!968648)))

(declare-fun mapNonEmpty!7051 () Bool)

(declare-fun tp!433657 () Bool)

(declare-fun tp!433680 () Bool)

(assert (=> mapNonEmpty!7051 (= mapRes!7050 (and tp!433657 tp!433680))))

(declare-fun mapKey!7050 () (_ BitVec 32))

(declare-fun mapRest!7051 () (Array (_ BitVec 32) List!16172))

(declare-fun mapValue!7051 () List!16172)

(assert (=> mapNonEmpty!7051 (= (arr!2329 (_values!1769 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))) (store mapRest!7051 mapKey!7050 mapValue!7051))))

(declare-fun b!1514476 () Bool)

(declare-fun res!681234 () Bool)

(assert (=> b!1514476 (=> (not res!681234) (not e!968661))))

(declare-fun rulesInvariant!2273 (LexerInterface!2499 List!16173) Bool)

(assert (=> b!1514476 (= res!681234 (rulesInvariant!2273 thiss!13241 rules!1640))))

(declare-fun b!1514477 () Bool)

(declare-fun tp!433658 () Bool)

(assert (=> b!1514477 (= e!968642 (and (inv!21340 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) tp!433658))))

(declare-fun e!968660 () Bool)

(assert (=> b!1514478 (= e!968660 (and tp!433679 tp!433678))))

(declare-fun tp!433666 () Bool)

(declare-fun tp!433662 () Bool)

(declare-fun e!968653 () Bool)

(declare-fun array_inv!1681 (array!5222) Bool)

(assert (=> b!1514479 (= e!968627 (and tp!433682 tp!433666 tp!433662 (array_inv!1679 (_keys!1783 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))) (array_inv!1681 (_values!1768 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))) e!968653))))

(declare-fun b!1514480 () Bool)

(declare-fun tp!433671 () Bool)

(declare-fun inv!21332 (String!18949) Bool)

(declare-fun inv!21342 (TokenValueInjection!5534) Bool)

(assert (=> b!1514480 (= e!968630 (and tp!433671 (inv!21332 (tag!3111 (h!21506 rules!1640))) (inv!21342 (transformation!2847 (h!21506 rules!1640))) e!968660))))

(declare-fun tp!433674 () Bool)

(declare-fun e!968634 () Bool)

(declare-fun tp!433686 () Bool)

(declare-fun array_inv!1682 (array!5224) Bool)

(assert (=> b!1514481 (= e!968647 (and tp!433675 tp!433674 tp!433686 (array_inv!1679 (_keys!1784 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))) (array_inv!1682 (_values!1769 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))) e!968634))))

(assert (=> b!1514482 (= e!968629 (and e!968640 tp!433659))))

(declare-fun b!1514483 () Bool)

(declare-fun tp!433664 () Bool)

(assert (=> b!1514483 (= e!968653 (and tp!433664 mapRes!7051))))

(declare-fun condMapEmpty!7051 () Bool)

(declare-fun mapDefault!7052 () List!16171)

(assert (=> b!1514483 (= condMapEmpty!7051 (= (arr!2328 (_values!1768 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16171)) mapDefault!7052)))))

(declare-fun mapNonEmpty!7052 () Bool)

(declare-fun tp!433665 () Bool)

(declare-fun tp!433668 () Bool)

(assert (=> mapNonEmpty!7052 (= mapRes!7051 (and tp!433665 tp!433668))))

(declare-fun mapKey!7052 () (_ BitVec 32))

(declare-fun mapRest!7050 () (Array (_ BitVec 32) List!16171))

(declare-fun mapValue!7050 () List!16171)

(assert (=> mapNonEmpty!7052 (= (arr!2328 (_values!1768 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))) (store mapRest!7050 mapKey!7052 mapValue!7050))))

(declare-fun b!1514484 () Bool)

(declare-fun res!681238 () Bool)

(assert (=> b!1514484 (=> (not res!681238) (not e!968661))))

(declare-fun isEmpty!9940 (List!16173) Bool)

(assert (=> b!1514484 (= res!681238 (not (isEmpty!9940 rules!1640)))))

(declare-fun b!1514485 () Bool)

(assert (=> b!1514485 (= e!968661 e!968633)))

(declare-fun res!681232 () Bool)

(assert (=> b!1514485 (=> (not res!681232) (not e!968633))))

(assert (=> b!1514485 (= res!681232 (= lt!526568 lt!526563))))

(assert (=> b!1514485 (= lt!526563 (++!4368 lt!526569 lt!526579))))

(assert (=> b!1514485 (= lt!526568 (list!6357 totalInput!458))))

(assert (=> b!1514485 (= lt!526579 (list!6357 input!1102))))

(assert (=> b!1514485 (= lt!526569 (list!6357 treated!70))))

(declare-fun b!1514486 () Bool)

(declare-fun tp!433685 () Bool)

(assert (=> b!1514486 (= e!968634 (and tp!433685 mapRes!7050))))

(declare-fun condMapEmpty!7050 () Bool)

(declare-fun mapDefault!7050 () List!16172)

(assert (=> b!1514486 (= condMapEmpty!7050 (= (arr!2329 (_values!1769 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16172)) mapDefault!7050)))))

(declare-fun b!1514487 () Bool)

(declare-fun tp!433684 () Bool)

(assert (=> b!1514487 (= e!968631 (and (inv!21340 (c!248131 totalInput!458)) tp!433684))))

(assert (= (and start!141314 res!681240) b!1514484))

(assert (= (and b!1514484 res!681238) b!1514476))

(assert (= (and b!1514476 res!681234) b!1514485))

(assert (= (and b!1514485 res!681232) b!1514469))

(assert (= (and b!1514469 res!681231) b!1514445))

(assert (= (and b!1514445 res!681236) b!1514468))

(assert (= (and b!1514468 res!681230) b!1514465))

(assert (= (and b!1514465 res!681233) b!1514443))

(assert (= (and b!1514443 res!681239) b!1514453))

(assert (= (and b!1514453 res!681229) b!1514452))

(assert (= (and b!1514452 res!681235) b!1514457))

(assert (= (and b!1514457 res!681241) b!1514472))

(assert (= (and b!1514472 (not res!681237)) b!1514464))

(assert (= (and b!1514464 (not res!681228)) b!1514470))

(assert (= (and b!1514470 c!248129) b!1514466))

(assert (= (and b!1514470 (not c!248129)) b!1514461))

(assert (= start!141314 b!1514450))

(assert (= (and b!1514458 condMapEmpty!7052) mapIsEmpty!7052))

(assert (= (and b!1514458 (not condMapEmpty!7052)) mapNonEmpty!7050))

(assert (= b!1514449 b!1514458))

(assert (= b!1514467 b!1514449))

(assert (= b!1514474 b!1514467))

(assert (= (and b!1514471 ((_ is LongMap!1488) (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))) b!1514474))

(assert (= b!1514447 b!1514471))

(assert (= (and b!1514475 ((_ is HashMap!1432) (cache!1813 cacheUp!616))) b!1514447))

(assert (= start!141314 b!1514475))

(assert (= (and b!1514483 condMapEmpty!7051) mapIsEmpty!7050))

(assert (= (and b!1514483 (not condMapEmpty!7051)) mapNonEmpty!7052))

(assert (= b!1514479 b!1514483))

(assert (= b!1514454 b!1514479))

(assert (= b!1514459 b!1514454))

(assert (= (and b!1514463 ((_ is LongMap!1489) (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))) b!1514459))

(assert (= b!1514482 b!1514463))

(assert (= (and b!1514451 ((_ is HashMap!1433) (cache!1814 cacheDown!629))) b!1514482))

(assert (= start!141314 b!1514451))

(assert (= start!141314 b!1514446))

(assert (= start!141314 b!1514448))

(assert (= b!1514480 b!1514478))

(assert (= b!1514462 b!1514480))

(assert (= (and start!141314 ((_ is Cons!16105) rules!1640)) b!1514462))

(assert (= (and b!1514486 condMapEmpty!7050) mapIsEmpty!7051))

(assert (= (and b!1514486 (not condMapEmpty!7050)) mapNonEmpty!7051))

(assert (= b!1514481 b!1514486))

(assert (= b!1514444 b!1514481))

(assert (= b!1514473 b!1514444))

(assert (= (and b!1514456 ((_ is LongMap!1490) (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))) b!1514473))

(assert (= b!1514460 b!1514456))

(assert (= (and b!1514455 ((_ is HashMap!1434) (cache!1815 cacheFurthestNullable!64))) b!1514460))

(assert (= b!1514455 b!1514477))

(assert (= start!141314 b!1514455))

(assert (= start!141314 b!1514487))

(declare-fun m!1778715 () Bool)

(assert (=> b!1514472 m!1778715))

(declare-fun m!1778717 () Bool)

(assert (=> b!1514472 m!1778717))

(declare-fun m!1778719 () Bool)

(assert (=> b!1514472 m!1778719))

(declare-fun m!1778721 () Bool)

(assert (=> b!1514468 m!1778721))

(declare-fun m!1778723 () Bool)

(assert (=> b!1514468 m!1778723))

(declare-fun m!1778725 () Bool)

(assert (=> b!1514468 m!1778725))

(declare-fun m!1778727 () Bool)

(assert (=> b!1514468 m!1778727))

(declare-fun m!1778729 () Bool)

(assert (=> b!1514468 m!1778729))

(assert (=> b!1514468 m!1778723))

(declare-fun m!1778731 () Bool)

(assert (=> b!1514481 m!1778731))

(declare-fun m!1778733 () Bool)

(assert (=> b!1514481 m!1778733))

(declare-fun m!1778735 () Bool)

(assert (=> mapNonEmpty!7050 m!1778735))

(declare-fun m!1778737 () Bool)

(assert (=> b!1514466 m!1778737))

(declare-fun m!1778739 () Bool)

(assert (=> b!1514466 m!1778739))

(declare-fun m!1778741 () Bool)

(assert (=> b!1514480 m!1778741))

(declare-fun m!1778743 () Bool)

(assert (=> b!1514480 m!1778743))

(declare-fun m!1778745 () Bool)

(assert (=> b!1514469 m!1778745))

(declare-fun m!1778747 () Bool)

(assert (=> b!1514469 m!1778747))

(declare-fun m!1778749 () Bool)

(assert (=> b!1514469 m!1778749))

(declare-fun m!1778751 () Bool)

(assert (=> b!1514453 m!1778751))

(declare-fun m!1778753 () Bool)

(assert (=> b!1514443 m!1778753))

(declare-fun m!1778755 () Bool)

(assert (=> b!1514450 m!1778755))

(declare-fun m!1778757 () Bool)

(assert (=> b!1514476 m!1778757))

(declare-fun m!1778759 () Bool)

(assert (=> b!1514477 m!1778759))

(declare-fun m!1778761 () Bool)

(assert (=> b!1514445 m!1778761))

(assert (=> b!1514445 m!1778761))

(declare-fun m!1778763 () Bool)

(assert (=> b!1514445 m!1778763))

(declare-fun m!1778765 () Bool)

(assert (=> b!1514485 m!1778765))

(declare-fun m!1778767 () Bool)

(assert (=> b!1514485 m!1778767))

(declare-fun m!1778769 () Bool)

(assert (=> b!1514485 m!1778769))

(declare-fun m!1778771 () Bool)

(assert (=> b!1514485 m!1778771))

(declare-fun m!1778773 () Bool)

(assert (=> b!1514487 m!1778773))

(declare-fun m!1778775 () Bool)

(assert (=> b!1514449 m!1778775))

(declare-fun m!1778777 () Bool)

(assert (=> b!1514449 m!1778777))

(declare-fun m!1778779 () Bool)

(assert (=> b!1514470 m!1778779))

(declare-fun m!1778781 () Bool)

(assert (=> b!1514470 m!1778781))

(declare-fun m!1778783 () Bool)

(assert (=> b!1514470 m!1778783))

(declare-fun m!1778785 () Bool)

(assert (=> b!1514470 m!1778785))

(declare-fun m!1778787 () Bool)

(assert (=> b!1514470 m!1778787))

(declare-fun m!1778789 () Bool)

(assert (=> b!1514470 m!1778789))

(declare-fun m!1778791 () Bool)

(assert (=> b!1514470 m!1778791))

(declare-fun m!1778793 () Bool)

(assert (=> b!1514470 m!1778793))

(declare-fun m!1778795 () Bool)

(assert (=> b!1514470 m!1778795))

(assert (=> b!1514470 m!1778779))

(declare-fun m!1778797 () Bool)

(assert (=> b!1514470 m!1778797))

(declare-fun m!1778799 () Bool)

(assert (=> b!1514470 m!1778799))

(declare-fun m!1778801 () Bool)

(assert (=> b!1514470 m!1778801))

(declare-fun m!1778803 () Bool)

(assert (=> b!1514470 m!1778803))

(declare-fun m!1778805 () Bool)

(assert (=> b!1514470 m!1778805))

(assert (=> b!1514470 m!1778793))

(declare-fun m!1778807 () Bool)

(assert (=> b!1514470 m!1778807))

(assert (=> b!1514470 m!1778803))

(declare-fun m!1778809 () Bool)

(assert (=> b!1514470 m!1778809))

(declare-fun m!1778811 () Bool)

(assert (=> b!1514470 m!1778811))

(declare-fun m!1778813 () Bool)

(assert (=> b!1514470 m!1778813))

(assert (=> b!1514470 m!1778781))

(declare-fun m!1778815 () Bool)

(assert (=> b!1514470 m!1778815))

(assert (=> b!1514470 m!1778783))

(assert (=> b!1514470 m!1778799))

(declare-fun m!1778817 () Bool)

(assert (=> b!1514470 m!1778817))

(declare-fun m!1778819 () Bool)

(assert (=> mapNonEmpty!7052 m!1778819))

(declare-fun m!1778821 () Bool)

(assert (=> b!1514448 m!1778821))

(declare-fun m!1778823 () Bool)

(assert (=> start!141314 m!1778823))

(declare-fun m!1778825 () Bool)

(assert (=> start!141314 m!1778825))

(declare-fun m!1778827 () Bool)

(assert (=> start!141314 m!1778827))

(declare-fun m!1778829 () Bool)

(assert (=> start!141314 m!1778829))

(declare-fun m!1778831 () Bool)

(assert (=> start!141314 m!1778831))

(declare-fun m!1778833 () Bool)

(assert (=> start!141314 m!1778833))

(declare-fun m!1778835 () Bool)

(assert (=> start!141314 m!1778835))

(declare-fun m!1778837 () Bool)

(assert (=> b!1514446 m!1778837))

(declare-fun m!1778839 () Bool)

(assert (=> b!1514465 m!1778839))

(declare-fun m!1778841 () Bool)

(assert (=> b!1514465 m!1778841))

(declare-fun m!1778843 () Bool)

(assert (=> b!1514455 m!1778843))

(declare-fun m!1778845 () Bool)

(assert (=> b!1514452 m!1778845))

(declare-fun m!1778847 () Bool)

(assert (=> mapNonEmpty!7051 m!1778847))

(declare-fun m!1778849 () Bool)

(assert (=> b!1514464 m!1778849))

(declare-fun m!1778851 () Bool)

(assert (=> b!1514479 m!1778851))

(declare-fun m!1778853 () Bool)

(assert (=> b!1514479 m!1778853))

(declare-fun m!1778855 () Bool)

(assert (=> b!1514484 m!1778855))

(check-sat (not b_next!40037) (not b!1514469) (not b!1514452) (not b!1514450) b_and!105353 b_and!105355 (not b!1514470) b_and!105341 (not b_next!40039) (not b!1514483) (not b!1514443) (not b!1514462) (not b!1514476) b_and!105343 (not b!1514448) (not b!1514468) (not b!1514479) b_and!105351 (not b!1514487) (not b!1514465) (not b!1514466) (not b!1514458) (not mapNonEmpty!7052) b_and!105349 (not b!1514485) (not b_next!40033) (not b!1514481) (not b!1514477) b_and!105347 (not b!1514453) b_and!105345 (not b!1514484) (not b_next!40041) (not b!1514445) (not b!1514480) (not b!1514486) (not b_next!40031) (not b_next!40027) (not mapNonEmpty!7050) (not b!1514446) (not b!1514464) (not b_next!40035) (not start!141314) (not b!1514455) (not b!1514449) (not b!1514472) (not mapNonEmpty!7051) (not b_next!40029))
(check-sat (not b_next!40037) b_and!105343 b_and!105351 b_and!105353 b_and!105355 b_and!105347 b_and!105341 (not b_next!40039) (not b_next!40035) (not b_next!40029) (not b_next!40033) b_and!105349 b_and!105345 (not b_next!40041) (not b_next!40031) (not b_next!40027))
(get-model)

(declare-fun d!448297 () Bool)

(assert (=> d!448297 (= (inv!21332 (tag!3111 (h!21506 rules!1640))) (= (mod (str.len (value!90800 (tag!3111 (h!21506 rules!1640)))) 2) 0))))

(assert (=> b!1514480 d!448297))

(declare-fun d!448299 () Bool)

(declare-fun res!681246 () Bool)

(declare-fun e!968668 () Bool)

(assert (=> d!448299 (=> (not res!681246) (not e!968668))))

(declare-fun semiInverseModEq!1072 (Int Int) Bool)

(assert (=> d!448299 (= res!681246 (semiInverseModEq!1072 (toChars!4057 (transformation!2847 (h!21506 rules!1640))) (toValue!4198 (transformation!2847 (h!21506 rules!1640)))))))

(assert (=> d!448299 (= (inv!21342 (transformation!2847 (h!21506 rules!1640))) e!968668)))

(declare-fun b!1514490 () Bool)

(declare-fun equivClasses!1031 (Int Int) Bool)

(assert (=> b!1514490 (= e!968668 (equivClasses!1031 (toChars!4057 (transformation!2847 (h!21506 rules!1640))) (toValue!4198 (transformation!2847 (h!21506 rules!1640)))))))

(assert (= (and d!448299 res!681246) b!1514490))

(declare-fun m!1778857 () Bool)

(assert (=> d!448299 m!1778857))

(declare-fun m!1778859 () Bool)

(assert (=> b!1514490 m!1778859))

(assert (=> b!1514480 d!448299))

(declare-fun d!448301 () Bool)

(assert (=> d!448301 (= (array_inv!1679 (_keys!1784 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))) (bvsge (size!13017 (_keys!1784 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1514481 d!448301))

(declare-fun d!448303 () Bool)

(assert (=> d!448303 (= (array_inv!1682 (_values!1769 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))) (bvsge (size!13021 (_values!1769 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1514481 d!448303))

(declare-fun d!448305 () Bool)

(declare-fun validCacheMapUp!136 (MutableMap!1432) Bool)

(assert (=> d!448305 (= (valid!1189 cacheUp!616) (validCacheMapUp!136 (cache!1813 cacheUp!616)))))

(declare-fun bs!364952 () Bool)

(assert (= bs!364952 d!448305))

(declare-fun m!1778861 () Bool)

(assert (=> bs!364952 m!1778861))

(assert (=> b!1514443 d!448305))

(declare-fun d!448307 () Bool)

(declare-fun isBalanced!1611 (Conc!5446) Bool)

(assert (=> d!448307 (= (inv!21338 treated!70) (isBalanced!1611 (c!248131 treated!70)))))

(declare-fun bs!364953 () Bool)

(assert (= bs!364953 d!448307))

(declare-fun m!1778863 () Bool)

(assert (=> bs!364953 m!1778863))

(assert (=> start!141314 d!448307))

(declare-fun d!448309 () Bool)

(assert (=> d!448309 (= (inv!21338 input!1102) (isBalanced!1611 (c!248131 input!1102)))))

(declare-fun bs!364954 () Bool)

(assert (= bs!364954 d!448309))

(declare-fun m!1778865 () Bool)

(assert (=> bs!364954 m!1778865))

(assert (=> start!141314 d!448309))

(declare-fun d!448311 () Bool)

(declare-fun res!681249 () Bool)

(declare-fun e!968671 () Bool)

(assert (=> d!448311 (=> (not res!681249) (not e!968671))))

(assert (=> d!448311 (= res!681249 ((_ is HashMap!1434) (cache!1815 cacheFurthestNullable!64)))))

(assert (=> d!448311 (= (inv!21339 cacheFurthestNullable!64) e!968671)))

(declare-fun b!1514493 () Bool)

(declare-fun validCacheMapFurthestNullable!49 (MutableMap!1434 BalanceConc!10834) Bool)

(assert (=> b!1514493 (= e!968671 (validCacheMapFurthestNullable!49 (cache!1815 cacheFurthestNullable!64) (totalInput!2301 cacheFurthestNullable!64)))))

(assert (= (and d!448311 res!681249) b!1514493))

(declare-fun m!1778867 () Bool)

(assert (=> b!1514493 m!1778867))

(assert (=> start!141314 d!448311))

(declare-fun d!448313 () Bool)

(declare-fun res!681252 () Bool)

(declare-fun e!968674 () Bool)

(assert (=> d!448313 (=> (not res!681252) (not e!968674))))

(assert (=> d!448313 (= res!681252 ((_ is HashMap!1433) (cache!1814 cacheDown!629)))))

(assert (=> d!448313 (= (inv!21337 cacheDown!629) e!968674)))

(declare-fun b!1514496 () Bool)

(declare-fun validCacheMapDown!136 (MutableMap!1433) Bool)

(assert (=> b!1514496 (= e!968674 (validCacheMapDown!136 (cache!1814 cacheDown!629)))))

(assert (= (and d!448313 res!681252) b!1514496))

(declare-fun m!1778869 () Bool)

(assert (=> b!1514496 m!1778869))

(assert (=> start!141314 d!448313))

(declare-fun d!448315 () Bool)

(assert (=> d!448315 (= (inv!21338 totalInput!458) (isBalanced!1611 (c!248131 totalInput!458)))))

(declare-fun bs!364955 () Bool)

(assert (= bs!364955 d!448315))

(declare-fun m!1778871 () Bool)

(assert (=> bs!364955 m!1778871))

(assert (=> start!141314 d!448315))

(declare-fun d!448317 () Bool)

(declare-fun isBalanced!1612 (Conc!5447) Bool)

(assert (=> d!448317 (= (inv!21335 acc!392) (isBalanced!1612 (c!248132 acc!392)))))

(declare-fun bs!364956 () Bool)

(assert (= bs!364956 d!448317))

(declare-fun m!1778873 () Bool)

(assert (=> bs!364956 m!1778873))

(assert (=> start!141314 d!448317))

(declare-fun d!448319 () Bool)

(declare-fun res!681255 () Bool)

(declare-fun e!968677 () Bool)

(assert (=> d!448319 (=> (not res!681255) (not e!968677))))

(assert (=> d!448319 (= res!681255 ((_ is HashMap!1432) (cache!1813 cacheUp!616)))))

(assert (=> d!448319 (= (inv!21336 cacheUp!616) e!968677)))

(declare-fun b!1514499 () Bool)

(assert (=> b!1514499 (= e!968677 (validCacheMapUp!136 (cache!1813 cacheUp!616)))))

(assert (= (and d!448319 res!681255) b!1514499))

(assert (=> b!1514499 m!1778861))

(assert (=> start!141314 d!448319))

(declare-fun d!448321 () Bool)

(assert (=> d!448321 (= (isEmpty!9938 (list!6357 (_2!8520 lt!526567))) ((_ is Nil!16101) (list!6357 (_2!8520 lt!526567))))))

(assert (=> b!1514445 d!448321))

(declare-fun d!448323 () Bool)

(declare-fun list!6359 (Conc!5446) List!16169)

(assert (=> d!448323 (= (list!6357 (_2!8520 lt!526567)) (list!6359 (c!248131 (_2!8520 lt!526567))))))

(declare-fun bs!364957 () Bool)

(assert (= bs!364957 d!448323))

(declare-fun m!1778875 () Bool)

(assert (=> bs!364957 m!1778875))

(assert (=> b!1514445 d!448323))

(declare-fun d!448325 () Bool)

(declare-fun c!248135 () Bool)

(assert (=> d!448325 (= c!248135 ((_ is Node!5446) (c!248131 input!1102)))))

(declare-fun e!968682 () Bool)

(assert (=> d!448325 (= (inv!21340 (c!248131 input!1102)) e!968682)))

(declare-fun b!1514506 () Bool)

(declare-fun inv!21343 (Conc!5446) Bool)

(assert (=> b!1514506 (= e!968682 (inv!21343 (c!248131 input!1102)))))

(declare-fun b!1514507 () Bool)

(declare-fun e!968683 () Bool)

(assert (=> b!1514507 (= e!968682 e!968683)))

(declare-fun res!681258 () Bool)

(assert (=> b!1514507 (= res!681258 (not ((_ is Leaf!8073) (c!248131 input!1102))))))

(assert (=> b!1514507 (=> res!681258 e!968683)))

(declare-fun b!1514508 () Bool)

(declare-fun inv!21344 (Conc!5446) Bool)

(assert (=> b!1514508 (= e!968683 (inv!21344 (c!248131 input!1102)))))

(assert (= (and d!448325 c!248135) b!1514506))

(assert (= (and d!448325 (not c!248135)) b!1514507))

(assert (= (and b!1514507 (not res!681258)) b!1514508))

(declare-fun m!1778877 () Bool)

(assert (=> b!1514506 m!1778877))

(declare-fun m!1778879 () Bool)

(assert (=> b!1514508 m!1778879))

(assert (=> b!1514446 d!448325))

(declare-fun b!1514533 () Bool)

(declare-fun e!968697 () Bool)

(declare-fun lt!526612 () tuple4!680)

(assert (=> b!1514533 (= e!968697 (= (totalInput!2301 (_4!340 lt!526612)) totalInput!458))))

(declare-fun b!1514534 () Bool)

(declare-datatypes ((tuple4!682 0))(
  ( (tuple4!683 (_1!8527 Option!2934) (_2!8527 CacheUp!856) (_3!1029 CacheFurthestNullable!278) (_4!341 CacheDown!858)) )
))
(declare-fun e!968699 () tuple4!682)

(declare-fun lt!526604 () tuple4!680)

(assert (=> b!1514534 (= e!968699 (tuple4!683 (_1!8526 lt!526604) (_2!8526 lt!526604) (_4!340 lt!526604) (_3!1028 lt!526604)))))

(declare-fun call!100389 () tuple4!680)

(assert (=> b!1514534 (= lt!526604 call!100389)))

(declare-fun b!1514535 () Bool)

(declare-fun res!681279 () Bool)

(assert (=> b!1514535 (=> (not res!681279) (not e!968697))))

(assert (=> b!1514535 (= res!681279 (valid!1191 (_3!1028 lt!526612)))))

(declare-fun e!968700 () Bool)

(declare-fun b!1514537 () Bool)

(declare-fun get!4742 (Option!2934) tuple2!14994)

(declare-datatypes ((tuple2!14996 0))(
  ( (tuple2!14997 (_1!8528 Token!5356) (_2!8528 List!16169)) )
))
(declare-datatypes ((Option!2935 0))(
  ( (None!2934) (Some!2934 (v!22918 tuple2!14996)) )
))
(declare-fun get!4743 (Option!2935) tuple2!14996)

(declare-fun maxPrefix!1210 (LexerInterface!2499 List!16173 List!16169) Option!2935)

(assert (=> b!1514537 (= e!968700 (= (list!6357 (_2!8525 (get!4742 (_1!8526 lt!526612)))) (_2!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102))))))))

(declare-fun b!1514538 () Bool)

(declare-fun e!968698 () Bool)

(assert (=> b!1514538 (= e!968698 e!968700)))

(declare-fun res!681285 () Bool)

(assert (=> b!1514538 (=> (not res!681285) (not e!968700))))

(assert (=> b!1514538 (= res!681285 (= (_1!8525 (get!4742 (_1!8526 lt!526612))) (_1!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102))))))))

(declare-fun e!968696 () Bool)

(declare-fun b!1514539 () Bool)

(declare-fun maxPrefixZipper!261 (LexerInterface!2499 List!16173 List!16169) Option!2935)

(assert (=> b!1514539 (= e!968696 (= (list!6357 (_2!8525 (get!4742 (_1!8526 lt!526612)))) (_2!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102))))))))

(declare-fun b!1514540 () Bool)

(declare-fun res!681282 () Bool)

(assert (=> b!1514540 (=> (not res!681282) (not e!968697))))

(declare-fun e!968701 () Bool)

(assert (=> b!1514540 (= res!681282 e!968701)))

(declare-fun res!681281 () Bool)

(assert (=> b!1514540 (=> res!681281 e!968701)))

(declare-fun isDefined!2357 (Option!2934) Bool)

(assert (=> b!1514540 (= res!681281 (not (isDefined!2357 (_1!8526 lt!526612))))))

(declare-fun b!1514541 () Bool)

(declare-fun res!681287 () Bool)

(assert (=> b!1514541 (=> (not res!681287) (not e!968697))))

(assert (=> b!1514541 (= res!681287 (valid!1189 (_2!8526 lt!526612)))))

(declare-fun b!1514542 () Bool)

(declare-fun res!681284 () Bool)

(assert (=> b!1514542 (=> (not res!681284) (not e!968697))))

(assert (=> b!1514542 (= res!681284 (valid!1190 (_4!340 lt!526612)))))

(declare-fun b!1514543 () Bool)

(declare-fun lt!526610 () tuple4!680)

(declare-fun lt!526607 () tuple4!680)

(assert (=> b!1514543 (= e!968699 (tuple4!683 (ite (and ((_ is None!2933) (_1!8526 lt!526610)) ((_ is None!2933) (_1!8526 lt!526607))) None!2933 (ite ((_ is None!2933) (_1!8526 lt!526607)) (_1!8526 lt!526610) (ite ((_ is None!2933) (_1!8526 lt!526610)) (_1!8526 lt!526607) (ite (>= (size!13019 (_1!8525 (v!22915 (_1!8526 lt!526610)))) (size!13019 (_1!8525 (v!22915 (_1!8526 lt!526607))))) (_1!8526 lt!526610) (_1!8526 lt!526607))))) (_2!8526 lt!526607) (_4!340 lt!526607) (_3!1028 lt!526607)))))

(assert (=> b!1514543 (= lt!526610 call!100389)))

(assert (=> b!1514543 (= lt!526607 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 (t!139457 rules!1640) input!1102 totalInput!458 (_2!8526 lt!526610) (_3!1028 lt!526610) (_4!340 lt!526610)))))

(declare-fun b!1514544 () Bool)

(assert (=> b!1514544 (= e!968701 e!968696)))

(declare-fun res!681280 () Bool)

(assert (=> b!1514544 (=> (not res!681280) (not e!968696))))

(assert (=> b!1514544 (= res!681280 (= (_1!8525 (get!4742 (_1!8526 lt!526612))) (_1!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102))))))))

(declare-fun bm!100384 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!12 (LexerInterface!2499 Rule!5494 BalanceConc!10834 BalanceConc!10834 CacheUp!856 CacheDown!858 CacheFurthestNullable!278) tuple4!680)

(assert (=> bm!100384 (= call!100389 (maxPrefixOneRuleZipperSequenceV3Mem!12 thiss!13241 (h!21506 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1514536 () Bool)

(declare-fun res!681288 () Bool)

(assert (=> b!1514536 (=> (not res!681288) (not e!968697))))

(assert (=> b!1514536 (= res!681288 e!968698)))

(declare-fun res!681286 () Bool)

(assert (=> b!1514536 (=> res!681286 e!968698)))

(assert (=> b!1514536 (= res!681286 (not (isDefined!2357 (_1!8526 lt!526612))))))

(declare-fun d!448327 () Bool)

(assert (=> d!448327 e!968697))

(declare-fun res!681283 () Bool)

(assert (=> d!448327 (=> (not res!681283) (not e!968697))))

(declare-fun isDefined!2358 (Option!2935) Bool)

(assert (=> d!448327 (= res!681283 (= (isDefined!2357 (_1!8526 lt!526612)) (isDefined!2358 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102)))))))

(declare-fun lt!526611 () tuple4!682)

(assert (=> d!448327 (= lt!526612 (tuple4!681 (_1!8527 lt!526611) (_2!8527 lt!526611) (_4!341 lt!526611) (_3!1029 lt!526611)))))

(assert (=> d!448327 (= lt!526611 e!968699)))

(declare-fun c!248139 () Bool)

(assert (=> d!448327 (= c!248139 (and ((_ is Cons!16105) rules!1640) ((_ is Nil!16105) (t!139457 rules!1640))))))

(declare-fun lt!526606 () Unit!25754)

(declare-fun lt!526608 () Unit!25754)

(assert (=> d!448327 (= lt!526606 lt!526608)))

(declare-fun lt!526609 () List!16169)

(declare-fun lt!526605 () List!16169)

(declare-fun isPrefix!1220 (List!16169 List!16169) Bool)

(assert (=> d!448327 (isPrefix!1220 lt!526609 lt!526605)))

(declare-fun lemmaIsPrefixRefl!850 (List!16169 List!16169) Unit!25754)

(assert (=> d!448327 (= lt!526608 (lemmaIsPrefixRefl!850 lt!526609 lt!526605))))

(assert (=> d!448327 (= lt!526605 (list!6357 input!1102))))

(assert (=> d!448327 (= lt!526609 (list!6357 input!1102))))

(declare-fun rulesValidInductive!858 (LexerInterface!2499 List!16173) Bool)

(assert (=> d!448327 (rulesValidInductive!858 thiss!13241 rules!1640)))

(assert (=> d!448327 (= (maxPrefixZipperSequenceV3Mem!27 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!526612)))

(assert (= (and d!448327 c!248139) b!1514534))

(assert (= (and d!448327 (not c!248139)) b!1514543))

(assert (= (or b!1514534 b!1514543) bm!100384))

(assert (= (and d!448327 res!681283) b!1514540))

(assert (= (and b!1514540 (not res!681281)) b!1514544))

(assert (= (and b!1514544 res!681280) b!1514539))

(assert (= (and b!1514540 res!681282) b!1514536))

(assert (= (and b!1514536 (not res!681286)) b!1514538))

(assert (= (and b!1514538 res!681285) b!1514537))

(assert (= (and b!1514536 res!681288) b!1514541))

(assert (= (and b!1514541 res!681287) b!1514535))

(assert (= (and b!1514535 res!681279) b!1514542))

(assert (= (and b!1514542 res!681284) b!1514533))

(declare-fun m!1778881 () Bool)

(assert (=> b!1514538 m!1778881))

(assert (=> b!1514538 m!1778769))

(assert (=> b!1514538 m!1778769))

(declare-fun m!1778883 () Bool)

(assert (=> b!1514538 m!1778883))

(assert (=> b!1514538 m!1778883))

(declare-fun m!1778885 () Bool)

(assert (=> b!1514538 m!1778885))

(assert (=> b!1514544 m!1778881))

(assert (=> b!1514544 m!1778769))

(assert (=> b!1514544 m!1778769))

(declare-fun m!1778887 () Bool)

(assert (=> b!1514544 m!1778887))

(assert (=> b!1514544 m!1778887))

(declare-fun m!1778889 () Bool)

(assert (=> b!1514544 m!1778889))

(declare-fun m!1778891 () Bool)

(assert (=> b!1514543 m!1778891))

(declare-fun m!1778893 () Bool)

(assert (=> b!1514541 m!1778893))

(declare-fun m!1778895 () Bool)

(assert (=> b!1514540 m!1778895))

(declare-fun m!1778897 () Bool)

(assert (=> b!1514542 m!1778897))

(assert (=> b!1514536 m!1778895))

(declare-fun m!1778899 () Bool)

(assert (=> bm!100384 m!1778899))

(declare-fun m!1778901 () Bool)

(assert (=> b!1514535 m!1778901))

(assert (=> d!448327 m!1778769))

(assert (=> d!448327 m!1778769))

(assert (=> d!448327 m!1778887))

(declare-fun m!1778903 () Bool)

(assert (=> d!448327 m!1778903))

(assert (=> d!448327 m!1778887))

(declare-fun m!1778905 () Bool)

(assert (=> d!448327 m!1778905))

(declare-fun m!1778907 () Bool)

(assert (=> d!448327 m!1778907))

(declare-fun m!1778909 () Bool)

(assert (=> d!448327 m!1778909))

(assert (=> d!448327 m!1778895))

(assert (=> b!1514539 m!1778769))

(assert (=> b!1514539 m!1778887))

(assert (=> b!1514539 m!1778889))

(assert (=> b!1514539 m!1778769))

(assert (=> b!1514539 m!1778887))

(assert (=> b!1514539 m!1778881))

(declare-fun m!1778911 () Bool)

(assert (=> b!1514539 m!1778911))

(assert (=> b!1514537 m!1778769))

(assert (=> b!1514537 m!1778883))

(assert (=> b!1514537 m!1778769))

(assert (=> b!1514537 m!1778883))

(assert (=> b!1514537 m!1778885))

(assert (=> b!1514537 m!1778881))

(assert (=> b!1514537 m!1778911))

(assert (=> b!1514464 d!448327))

(declare-fun d!448329 () Bool)

(assert (=> d!448329 (= (list!6357 (_2!8520 lt!526570)) (list!6359 (c!248131 (_2!8520 lt!526570))))))

(declare-fun bs!364958 () Bool)

(assert (= bs!364958 d!448329))

(declare-fun m!1778913 () Bool)

(assert (=> bs!364958 m!1778913))

(assert (=> b!1514465 d!448329))

(declare-fun d!448331 () Bool)

(assert (=> d!448331 (= (list!6357 (_2!8520 lt!526585)) (list!6359 (c!248131 (_2!8520 lt!526585))))))

(declare-fun bs!364959 () Bool)

(assert (= bs!364959 d!448331))

(declare-fun m!1778915 () Bool)

(assert (=> bs!364959 m!1778915))

(assert (=> b!1514465 d!448331))

(declare-fun d!448333 () Bool)

(declare-fun res!681291 () Bool)

(declare-fun e!968704 () Bool)

(assert (=> d!448333 (=> (not res!681291) (not e!968704))))

(declare-fun rulesValid!1043 (LexerInterface!2499 List!16173) Bool)

(assert (=> d!448333 (= res!681291 (rulesValid!1043 thiss!13241 rules!1640))))

(assert (=> d!448333 (= (rulesInvariant!2273 thiss!13241 rules!1640) e!968704)))

(declare-fun b!1514547 () Bool)

(declare-datatypes ((List!16174 0))(
  ( (Nil!16106) (Cons!16106 (h!21507 String!18949) (t!139462 List!16174)) )
))
(declare-fun noDuplicateTag!1043 (LexerInterface!2499 List!16173 List!16174) Bool)

(assert (=> b!1514547 (= e!968704 (noDuplicateTag!1043 thiss!13241 rules!1640 Nil!16106))))

(assert (= (and d!448333 res!681291) b!1514547))

(declare-fun m!1778917 () Bool)

(assert (=> d!448333 m!1778917))

(declare-fun m!1778919 () Bool)

(assert (=> b!1514547 m!1778919))

(assert (=> b!1514476 d!448333))

(declare-fun d!448335 () Bool)

(declare-fun c!248140 () Bool)

(assert (=> d!448335 (= c!248140 ((_ is Node!5446) (c!248131 (totalInput!2301 cacheFurthestNullable!64))))))

(declare-fun e!968705 () Bool)

(assert (=> d!448335 (= (inv!21340 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) e!968705)))

(declare-fun b!1514548 () Bool)

(assert (=> b!1514548 (= e!968705 (inv!21343 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))))

(declare-fun b!1514549 () Bool)

(declare-fun e!968706 () Bool)

(assert (=> b!1514549 (= e!968705 e!968706)))

(declare-fun res!681292 () Bool)

(assert (=> b!1514549 (= res!681292 (not ((_ is Leaf!8073) (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(assert (=> b!1514549 (=> res!681292 e!968706)))

(declare-fun b!1514550 () Bool)

(assert (=> b!1514550 (= e!968706 (inv!21344 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))))

(assert (= (and d!448335 c!248140) b!1514548))

(assert (= (and d!448335 (not c!248140)) b!1514549))

(assert (= (and b!1514549 (not res!681292)) b!1514550))

(declare-fun m!1778921 () Bool)

(assert (=> b!1514548 m!1778921))

(declare-fun m!1778923 () Bool)

(assert (=> b!1514550 m!1778923))

(assert (=> b!1514477 d!448335))

(declare-fun d!448337 () Bool)

(assert (=> d!448337 (= (array_inv!1679 (_keys!1783 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))) (bvsge (size!13017 (_keys!1783 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1514479 d!448337))

(declare-fun d!448339 () Bool)

(assert (=> d!448339 (= (array_inv!1681 (_values!1768 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))) (bvsge (size!13020 (_values!1768 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1514479 d!448339))

(declare-fun b!1514560 () Bool)

(declare-fun e!968711 () List!16169)

(assert (=> b!1514560 (= e!968711 (Cons!16101 (h!21502 lt!526561) (++!4368 (t!139453 lt!526561) lt!526580)))))

(declare-fun b!1514562 () Bool)

(declare-fun e!968712 () Bool)

(declare-fun lt!526615 () List!16169)

(assert (=> b!1514562 (= e!968712 (or (not (= lt!526580 Nil!16101)) (= lt!526615 lt!526561)))))

(declare-fun b!1514559 () Bool)

(assert (=> b!1514559 (= e!968711 lt!526580)))

(declare-fun d!448341 () Bool)

(assert (=> d!448341 e!968712))

(declare-fun res!681297 () Bool)

(assert (=> d!448341 (=> (not res!681297) (not e!968712))))

(declare-fun content!2316 (List!16169) (InoxSet C!8504))

(assert (=> d!448341 (= res!681297 (= (content!2316 lt!526615) ((_ map or) (content!2316 lt!526561) (content!2316 lt!526580))))))

(assert (=> d!448341 (= lt!526615 e!968711)))

(declare-fun c!248143 () Bool)

(assert (=> d!448341 (= c!248143 ((_ is Nil!16101) lt!526561))))

(assert (=> d!448341 (= (++!4368 lt!526561 lt!526580) lt!526615)))

(declare-fun b!1514561 () Bool)

(declare-fun res!681298 () Bool)

(assert (=> b!1514561 (=> (not res!681298) (not e!968712))))

(declare-fun size!13022 (List!16169) Int)

(assert (=> b!1514561 (= res!681298 (= (size!13022 lt!526615) (+ (size!13022 lt!526561) (size!13022 lt!526580))))))

(assert (= (and d!448341 c!248143) b!1514559))

(assert (= (and d!448341 (not c!248143)) b!1514560))

(assert (= (and d!448341 res!681297) b!1514561))

(assert (= (and b!1514561 res!681298) b!1514562))

(declare-fun m!1778925 () Bool)

(assert (=> b!1514560 m!1778925))

(declare-fun m!1778927 () Bool)

(assert (=> d!448341 m!1778927))

(declare-fun m!1778929 () Bool)

(assert (=> d!448341 m!1778929))

(declare-fun m!1778931 () Bool)

(assert (=> d!448341 m!1778931))

(declare-fun m!1778933 () Bool)

(assert (=> b!1514561 m!1778933))

(declare-fun m!1778935 () Bool)

(assert (=> b!1514561 m!1778935))

(declare-fun m!1778937 () Bool)

(assert (=> b!1514561 m!1778937))

(assert (=> b!1514470 d!448341))

(declare-fun e!968718 () List!16170)

(declare-fun b!1514572 () Bool)

(assert (=> b!1514572 (= e!968718 (Cons!16102 (h!21503 lt!526584) (++!4367 (t!139454 lt!526584) (++!4367 lt!526582 lt!526572))))))

(declare-fun b!1514574 () Bool)

(declare-fun lt!526618 () List!16170)

(declare-fun e!968717 () Bool)

(assert (=> b!1514574 (= e!968717 (or (not (= (++!4367 lt!526582 lt!526572) Nil!16102)) (= lt!526618 lt!526584)))))

(declare-fun b!1514571 () Bool)

(assert (=> b!1514571 (= e!968718 (++!4367 lt!526582 lt!526572))))

(declare-fun b!1514573 () Bool)

(declare-fun res!681304 () Bool)

(assert (=> b!1514573 (=> (not res!681304) (not e!968717))))

(declare-fun size!13023 (List!16170) Int)

(assert (=> b!1514573 (= res!681304 (= (size!13023 lt!526618) (+ (size!13023 lt!526584) (size!13023 (++!4367 lt!526582 lt!526572)))))))

(declare-fun d!448343 () Bool)

(assert (=> d!448343 e!968717))

(declare-fun res!681303 () Bool)

(assert (=> d!448343 (=> (not res!681303) (not e!968717))))

(declare-fun content!2317 (List!16170) (InoxSet Token!5356))

(assert (=> d!448343 (= res!681303 (= (content!2317 lt!526618) ((_ map or) (content!2317 lt!526584) (content!2317 (++!4367 lt!526582 lt!526572)))))))

(assert (=> d!448343 (= lt!526618 e!968718)))

(declare-fun c!248146 () Bool)

(assert (=> d!448343 (= c!248146 ((_ is Nil!16102) lt!526584))))

(assert (=> d!448343 (= (++!4367 lt!526584 (++!4367 lt!526582 lt!526572)) lt!526618)))

(assert (= (and d!448343 c!248146) b!1514571))

(assert (= (and d!448343 (not c!248146)) b!1514572))

(assert (= (and d!448343 res!681303) b!1514573))

(assert (= (and b!1514573 res!681304) b!1514574))

(assert (=> b!1514572 m!1778793))

(declare-fun m!1778939 () Bool)

(assert (=> b!1514572 m!1778939))

(declare-fun m!1778941 () Bool)

(assert (=> b!1514573 m!1778941))

(declare-fun m!1778943 () Bool)

(assert (=> b!1514573 m!1778943))

(assert (=> b!1514573 m!1778793))

(declare-fun m!1778945 () Bool)

(assert (=> b!1514573 m!1778945))

(declare-fun m!1778947 () Bool)

(assert (=> d!448343 m!1778947))

(declare-fun m!1778949 () Bool)

(assert (=> d!448343 m!1778949))

(assert (=> d!448343 m!1778793))

(declare-fun m!1778951 () Bool)

(assert (=> d!448343 m!1778951))

(assert (=> b!1514470 d!448343))

(declare-fun d!448345 () Bool)

(assert (=> d!448345 (= (++!4368 (++!4368 lt!526569 lt!526561) lt!526580) (++!4368 lt!526569 (++!4368 lt!526561 lt!526580)))))

(declare-fun lt!526621 () Unit!25754)

(declare-fun choose!9162 (List!16169 List!16169 List!16169) Unit!25754)

(assert (=> d!448345 (= lt!526621 (choose!9162 lt!526569 lt!526561 lt!526580))))

(assert (=> d!448345 (= (lemmaConcatAssociativity!947 lt!526569 lt!526561 lt!526580) lt!526621)))

(declare-fun bs!364960 () Bool)

(assert (= bs!364960 d!448345))

(assert (=> bs!364960 m!1778779))

(assert (=> bs!364960 m!1778797))

(declare-fun m!1778953 () Bool)

(assert (=> bs!364960 m!1778953))

(assert (=> bs!364960 m!1778799))

(assert (=> bs!364960 m!1778801))

(assert (=> bs!364960 m!1778799))

(assert (=> bs!364960 m!1778779))

(assert (=> b!1514470 d!448345))

(declare-fun e!968731 () Bool)

(declare-fun b!1514591 () Bool)

(declare-fun lt!526638 () Option!2934)

(assert (=> b!1514591 (= e!968731 (= (list!6357 (_2!8525 (get!4742 lt!526638))) (_2!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102))))))))

(declare-fun e!968734 () Bool)

(declare-fun b!1514592 () Bool)

(assert (=> b!1514592 (= e!968734 (= (list!6357 (_2!8525 (get!4742 lt!526638))) (_2!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102))))))))

(declare-fun b!1514593 () Bool)

(declare-fun e!968735 () Option!2934)

(declare-fun call!100392 () Option!2934)

(assert (=> b!1514593 (= e!968735 call!100392)))

(declare-fun b!1514594 () Bool)

(declare-fun e!968732 () Bool)

(assert (=> b!1514594 (= e!968732 e!968734)))

(declare-fun res!681317 () Bool)

(assert (=> b!1514594 (=> (not res!681317) (not e!968734))))

(assert (=> b!1514594 (= res!681317 (= (_1!8525 (get!4742 lt!526638)) (_1!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102))))))))

(declare-fun b!1514595 () Bool)

(declare-fun e!968733 () Bool)

(declare-fun e!968736 () Bool)

(assert (=> b!1514595 (= e!968733 e!968736)))

(declare-fun res!681321 () Bool)

(assert (=> b!1514595 (=> res!681321 e!968736)))

(assert (=> b!1514595 (= res!681321 (not (isDefined!2357 lt!526638)))))

(declare-fun b!1514596 () Bool)

(declare-fun res!681322 () Bool)

(assert (=> b!1514596 (=> (not res!681322) (not e!968733))))

(assert (=> b!1514596 (= res!681322 e!968732)))

(declare-fun res!681318 () Bool)

(assert (=> b!1514596 (=> res!681318 e!968732)))

(assert (=> b!1514596 (= res!681318 (not (isDefined!2357 lt!526638)))))

(declare-fun b!1514597 () Bool)

(assert (=> b!1514597 (= e!968736 e!968731)))

(declare-fun res!681320 () Bool)

(assert (=> b!1514597 (=> (not res!681320) (not e!968731))))

(assert (=> b!1514597 (= res!681320 (= (_1!8525 (get!4742 lt!526638)) (_1!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102))))))))

(declare-fun d!448347 () Bool)

(assert (=> d!448347 e!968733))

(declare-fun res!681319 () Bool)

(assert (=> d!448347 (=> (not res!681319) (not e!968733))))

(assert (=> d!448347 (= res!681319 (= (isDefined!2357 lt!526638) (isDefined!2358 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102)))))))

(assert (=> d!448347 (= lt!526638 e!968735)))

(declare-fun c!248149 () Bool)

(assert (=> d!448347 (= c!248149 (and ((_ is Cons!16105) rules!1640) ((_ is Nil!16105) (t!139457 rules!1640))))))

(declare-fun lt!526642 () Unit!25754)

(declare-fun lt!526639 () Unit!25754)

(assert (=> d!448347 (= lt!526642 lt!526639)))

(declare-fun lt!526640 () List!16169)

(declare-fun lt!526641 () List!16169)

(assert (=> d!448347 (isPrefix!1220 lt!526640 lt!526641)))

(assert (=> d!448347 (= lt!526639 (lemmaIsPrefixRefl!850 lt!526640 lt!526641))))

(assert (=> d!448347 (= lt!526641 (list!6357 input!1102))))

(assert (=> d!448347 (= lt!526640 (list!6357 input!1102))))

(assert (=> d!448347 (rulesValidInductive!858 thiss!13241 rules!1640)))

(assert (=> d!448347 (= (maxPrefixZipperSequence!592 thiss!13241 rules!1640 input!1102) lt!526638)))

(declare-fun bm!100387 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!280 (LexerInterface!2499 Rule!5494 BalanceConc!10834) Option!2934)

(assert (=> bm!100387 (= call!100392 (maxPrefixOneRuleZipperSequence!280 thiss!13241 (h!21506 rules!1640) input!1102))))

(declare-fun b!1514598 () Bool)

(declare-fun lt!526637 () Option!2934)

(declare-fun lt!526636 () Option!2934)

(assert (=> b!1514598 (= e!968735 (ite (and ((_ is None!2933) lt!526637) ((_ is None!2933) lt!526636)) None!2933 (ite ((_ is None!2933) lt!526636) lt!526637 (ite ((_ is None!2933) lt!526637) lt!526636 (ite (>= (size!13019 (_1!8525 (v!22915 lt!526637))) (size!13019 (_1!8525 (v!22915 lt!526636)))) lt!526637 lt!526636)))))))

(assert (=> b!1514598 (= lt!526637 call!100392)))

(assert (=> b!1514598 (= lt!526636 (maxPrefixZipperSequence!592 thiss!13241 (t!139457 rules!1640) input!1102))))

(assert (= (and d!448347 c!248149) b!1514593))

(assert (= (and d!448347 (not c!248149)) b!1514598))

(assert (= (or b!1514593 b!1514598) bm!100387))

(assert (= (and d!448347 res!681319) b!1514596))

(assert (= (and b!1514596 (not res!681318)) b!1514594))

(assert (= (and b!1514594 res!681317) b!1514592))

(assert (= (and b!1514596 res!681322) b!1514595))

(assert (= (and b!1514595 (not res!681321)) b!1514597))

(assert (= (and b!1514597 res!681320) b!1514591))

(declare-fun m!1778955 () Bool)

(assert (=> b!1514594 m!1778955))

(assert (=> b!1514594 m!1778769))

(assert (=> b!1514594 m!1778769))

(assert (=> b!1514594 m!1778887))

(assert (=> b!1514594 m!1778887))

(assert (=> b!1514594 m!1778889))

(declare-fun m!1778957 () Bool)

(assert (=> b!1514598 m!1778957))

(declare-fun m!1778959 () Bool)

(assert (=> bm!100387 m!1778959))

(assert (=> b!1514591 m!1778955))

(assert (=> b!1514591 m!1778769))

(assert (=> b!1514591 m!1778769))

(assert (=> b!1514591 m!1778883))

(assert (=> b!1514591 m!1778883))

(assert (=> b!1514591 m!1778885))

(declare-fun m!1778961 () Bool)

(assert (=> b!1514591 m!1778961))

(assert (=> b!1514592 m!1778955))

(assert (=> b!1514592 m!1778887))

(assert (=> b!1514592 m!1778889))

(assert (=> b!1514592 m!1778769))

(assert (=> b!1514592 m!1778769))

(assert (=> b!1514592 m!1778887))

(assert (=> b!1514592 m!1778961))

(declare-fun m!1778963 () Bool)

(assert (=> b!1514595 m!1778963))

(assert (=> d!448347 m!1778887))

(assert (=> d!448347 m!1778905))

(declare-fun m!1778965 () Bool)

(assert (=> d!448347 m!1778965))

(assert (=> d!448347 m!1778769))

(assert (=> d!448347 m!1778907))

(assert (=> d!448347 m!1778769))

(assert (=> d!448347 m!1778887))

(declare-fun m!1778967 () Bool)

(assert (=> d!448347 m!1778967))

(assert (=> d!448347 m!1778963))

(assert (=> b!1514596 m!1778963))

(assert (=> b!1514597 m!1778955))

(assert (=> b!1514597 m!1778769))

(assert (=> b!1514597 m!1778769))

(assert (=> b!1514597 m!1778883))

(assert (=> b!1514597 m!1778883))

(assert (=> b!1514597 m!1778885))

(assert (=> b!1514470 d!448347))

(declare-fun b!1514613 () Bool)

(declare-fun e!968748 () Bool)

(declare-fun lt!526649 () tuple2!14988)

(declare-fun isEmpty!9941 (BalanceConc!10836) Bool)

(assert (=> b!1514613 (= e!968748 (not (isEmpty!9941 (_1!8520 lt!526649))))))

(declare-fun d!448349 () Bool)

(declare-fun e!968745 () Bool)

(assert (=> d!448349 e!968745))

(declare-fun res!681329 () Bool)

(assert (=> d!448349 (=> (not res!681329) (not e!968745))))

(declare-fun e!968747 () Bool)

(assert (=> d!448349 (= res!681329 e!968747)))

(declare-fun c!248155 () Bool)

(declare-fun size!13024 (BalanceConc!10836) Int)

(assert (=> d!448349 (= c!248155 (> (size!13024 (_1!8520 lt!526649)) 0))))

(declare-fun e!968746 () tuple2!14988)

(assert (=> d!448349 (= lt!526649 e!968746)))

(declare-fun c!248154 () Bool)

(declare-fun lt!526651 () Option!2934)

(assert (=> d!448349 (= c!248154 ((_ is Some!2933) lt!526651))))

(assert (=> d!448349 (= lt!526651 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))

(assert (=> d!448349 (= (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 (_1!8526 lt!526577)))) lt!526649)))

(declare-fun b!1514614 () Bool)

(declare-fun res!681330 () Bool)

(assert (=> b!1514614 (=> (not res!681330) (not e!968745))))

(declare-datatypes ((tuple2!14998 0))(
  ( (tuple2!14999 (_1!8529 List!16170) (_2!8529 List!16169)) )
))
(declare-fun lexList!748 (LexerInterface!2499 List!16173 List!16169) tuple2!14998)

(assert (=> b!1514614 (= res!681330 (= (list!6358 (_1!8520 lt!526649)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))))

(declare-fun b!1514615 () Bool)

(assert (=> b!1514615 (= e!968747 e!968748)))

(declare-fun res!681331 () Bool)

(declare-fun size!13025 (BalanceConc!10834) Int)

(assert (=> b!1514615 (= res!681331 (< (size!13025 (_2!8520 lt!526649)) (size!13025 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (=> b!1514615 (=> (not res!681331) (not e!968748))))

(declare-fun b!1514616 () Bool)

(declare-fun lt!526650 () tuple2!14988)

(assert (=> b!1514616 (= e!968746 (tuple2!14989 (prepend!469 (_1!8520 lt!526650) (_1!8525 (v!22915 lt!526651))) (_2!8520 lt!526650)))))

(assert (=> b!1514616 (= lt!526650 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526651))))))

(declare-fun b!1514617 () Bool)

(assert (=> b!1514617 (= e!968746 (tuple2!14989 (BalanceConc!10837 Empty!5447) (_2!8525 (v!22915 (_1!8526 lt!526577)))))))

(declare-fun b!1514618 () Bool)

(assert (=> b!1514618 (= e!968745 (= (list!6357 (_2!8520 lt!526649)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))))

(declare-fun b!1514619 () Bool)

(assert (=> b!1514619 (= e!968747 (= (list!6357 (_2!8520 lt!526649)) (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (= (and d!448349 c!248154) b!1514616))

(assert (= (and d!448349 (not c!248154)) b!1514617))

(assert (= (and d!448349 c!248155) b!1514615))

(assert (= (and d!448349 (not c!248155)) b!1514619))

(assert (= (and b!1514615 res!681331) b!1514613))

(assert (= (and d!448349 res!681329) b!1514614))

(assert (= (and b!1514614 res!681330) b!1514618))

(declare-fun m!1778969 () Bool)

(assert (=> b!1514619 m!1778969))

(assert (=> b!1514619 m!1778795))

(declare-fun m!1778971 () Bool)

(assert (=> b!1514614 m!1778971))

(assert (=> b!1514614 m!1778795))

(assert (=> b!1514614 m!1778795))

(declare-fun m!1778973 () Bool)

(assert (=> b!1514614 m!1778973))

(declare-fun m!1778975 () Bool)

(assert (=> b!1514616 m!1778975))

(declare-fun m!1778977 () Bool)

(assert (=> b!1514616 m!1778977))

(declare-fun m!1778979 () Bool)

(assert (=> b!1514613 m!1778979))

(assert (=> b!1514618 m!1778969))

(assert (=> b!1514618 m!1778795))

(assert (=> b!1514618 m!1778795))

(assert (=> b!1514618 m!1778973))

(declare-fun m!1778981 () Bool)

(assert (=> b!1514615 m!1778981))

(declare-fun m!1778983 () Bool)

(assert (=> b!1514615 m!1778983))

(declare-fun m!1778985 () Bool)

(assert (=> d!448349 m!1778985))

(declare-fun m!1778987 () Bool)

(assert (=> d!448349 m!1778987))

(assert (=> b!1514470 d!448349))

(declare-fun e!968749 () List!16169)

(declare-fun b!1514621 () Bool)

(assert (=> b!1514621 (= e!968749 (Cons!16101 (h!21502 (++!4368 lt!526569 lt!526561)) (++!4368 (t!139453 (++!4368 lt!526569 lt!526561)) lt!526580)))))

(declare-fun b!1514623 () Bool)

(declare-fun e!968750 () Bool)

(declare-fun lt!526652 () List!16169)

(assert (=> b!1514623 (= e!968750 (or (not (= lt!526580 Nil!16101)) (= lt!526652 (++!4368 lt!526569 lt!526561))))))

(declare-fun b!1514620 () Bool)

(assert (=> b!1514620 (= e!968749 lt!526580)))

(declare-fun d!448351 () Bool)

(assert (=> d!448351 e!968750))

(declare-fun res!681332 () Bool)

(assert (=> d!448351 (=> (not res!681332) (not e!968750))))

(assert (=> d!448351 (= res!681332 (= (content!2316 lt!526652) ((_ map or) (content!2316 (++!4368 lt!526569 lt!526561)) (content!2316 lt!526580))))))

(assert (=> d!448351 (= lt!526652 e!968749)))

(declare-fun c!248156 () Bool)

(assert (=> d!448351 (= c!248156 ((_ is Nil!16101) (++!4368 lt!526569 lt!526561)))))

(assert (=> d!448351 (= (++!4368 (++!4368 lt!526569 lt!526561) lt!526580) lt!526652)))

(declare-fun b!1514622 () Bool)

(declare-fun res!681333 () Bool)

(assert (=> b!1514622 (=> (not res!681333) (not e!968750))))

(assert (=> b!1514622 (= res!681333 (= (size!13022 lt!526652) (+ (size!13022 (++!4368 lt!526569 lt!526561)) (size!13022 lt!526580))))))

(assert (= (and d!448351 c!248156) b!1514620))

(assert (= (and d!448351 (not c!248156)) b!1514621))

(assert (= (and d!448351 res!681332) b!1514622))

(assert (= (and b!1514622 res!681333) b!1514623))

(declare-fun m!1778989 () Bool)

(assert (=> b!1514621 m!1778989))

(declare-fun m!1778991 () Bool)

(assert (=> d!448351 m!1778991))

(assert (=> d!448351 m!1778779))

(declare-fun m!1778993 () Bool)

(assert (=> d!448351 m!1778993))

(assert (=> d!448351 m!1778931))

(declare-fun m!1778995 () Bool)

(assert (=> b!1514622 m!1778995))

(assert (=> b!1514622 m!1778779))

(declare-fun m!1778997 () Bool)

(assert (=> b!1514622 m!1778997))

(assert (=> b!1514622 m!1778937))

(assert (=> b!1514470 d!448351))

(declare-fun d!448353 () Bool)

(declare-fun list!6360 (Conc!5447) List!16170)

(assert (=> d!448353 (= (list!6358 (_1!8520 lt!526566)) (list!6360 (c!248132 (_1!8520 lt!526566))))))

(declare-fun bs!364961 () Bool)

(assert (= bs!364961 d!448353))

(declare-fun m!1778999 () Bool)

(assert (=> bs!364961 m!1778999))

(assert (=> b!1514470 d!448353))

(declare-fun e!968751 () List!16169)

(declare-fun b!1514625 () Bool)

(assert (=> b!1514625 (= e!968751 (Cons!16101 (h!21502 lt!526569) (++!4368 (t!139453 lt!526569) (++!4368 lt!526561 lt!526580))))))

(declare-fun lt!526653 () List!16169)

(declare-fun b!1514627 () Bool)

(declare-fun e!968752 () Bool)

(assert (=> b!1514627 (= e!968752 (or (not (= (++!4368 lt!526561 lt!526580) Nil!16101)) (= lt!526653 lt!526569)))))

(declare-fun b!1514624 () Bool)

(assert (=> b!1514624 (= e!968751 (++!4368 lt!526561 lt!526580))))

(declare-fun d!448355 () Bool)

(assert (=> d!448355 e!968752))

(declare-fun res!681334 () Bool)

(assert (=> d!448355 (=> (not res!681334) (not e!968752))))

(assert (=> d!448355 (= res!681334 (= (content!2316 lt!526653) ((_ map or) (content!2316 lt!526569) (content!2316 (++!4368 lt!526561 lt!526580)))))))

(assert (=> d!448355 (= lt!526653 e!968751)))

(declare-fun c!248157 () Bool)

(assert (=> d!448355 (= c!248157 ((_ is Nil!16101) lt!526569))))

(assert (=> d!448355 (= (++!4368 lt!526569 (++!4368 lt!526561 lt!526580)) lt!526653)))

(declare-fun b!1514626 () Bool)

(declare-fun res!681335 () Bool)

(assert (=> b!1514626 (=> (not res!681335) (not e!968752))))

(assert (=> b!1514626 (= res!681335 (= (size!13022 lt!526653) (+ (size!13022 lt!526569) (size!13022 (++!4368 lt!526561 lt!526580)))))))

(assert (= (and d!448355 c!248157) b!1514624))

(assert (= (and d!448355 (not c!248157)) b!1514625))

(assert (= (and d!448355 res!681334) b!1514626))

(assert (= (and b!1514626 res!681335) b!1514627))

(assert (=> b!1514625 m!1778799))

(declare-fun m!1779001 () Bool)

(assert (=> b!1514625 m!1779001))

(declare-fun m!1779003 () Bool)

(assert (=> d!448355 m!1779003))

(declare-fun m!1779005 () Bool)

(assert (=> d!448355 m!1779005))

(assert (=> d!448355 m!1778799))

(declare-fun m!1779007 () Bool)

(assert (=> d!448355 m!1779007))

(declare-fun m!1779009 () Bool)

(assert (=> b!1514626 m!1779009))

(declare-fun m!1779011 () Bool)

(assert (=> b!1514626 m!1779011))

(assert (=> b!1514626 m!1778799))

(declare-fun m!1779013 () Bool)

(assert (=> b!1514626 m!1779013))

(assert (=> b!1514470 d!448355))

(declare-fun d!448357 () Bool)

(assert (=> d!448357 (= (list!6358 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577))))) (list!6360 (c!248132 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(declare-fun bs!364962 () Bool)

(assert (= bs!364962 d!448357))

(declare-fun m!1779015 () Bool)

(assert (=> bs!364962 m!1779015))

(assert (=> b!1514470 d!448357))

(declare-fun b!1514629 () Bool)

(declare-fun e!968754 () List!16170)

(assert (=> b!1514629 (= e!968754 (Cons!16102 (h!21503 lt!526582) (++!4367 (t!139454 lt!526582) lt!526572)))))

(declare-fun e!968753 () Bool)

(declare-fun b!1514631 () Bool)

(declare-fun lt!526654 () List!16170)

(assert (=> b!1514631 (= e!968753 (or (not (= lt!526572 Nil!16102)) (= lt!526654 lt!526582)))))

(declare-fun b!1514628 () Bool)

(assert (=> b!1514628 (= e!968754 lt!526572)))

(declare-fun b!1514630 () Bool)

(declare-fun res!681337 () Bool)

(assert (=> b!1514630 (=> (not res!681337) (not e!968753))))

(assert (=> b!1514630 (= res!681337 (= (size!13023 lt!526654) (+ (size!13023 lt!526582) (size!13023 lt!526572))))))

(declare-fun d!448359 () Bool)

(assert (=> d!448359 e!968753))

(declare-fun res!681336 () Bool)

(assert (=> d!448359 (=> (not res!681336) (not e!968753))))

(assert (=> d!448359 (= res!681336 (= (content!2317 lt!526654) ((_ map or) (content!2317 lt!526582) (content!2317 lt!526572))))))

(assert (=> d!448359 (= lt!526654 e!968754)))

(declare-fun c!248158 () Bool)

(assert (=> d!448359 (= c!248158 ((_ is Nil!16102) lt!526582))))

(assert (=> d!448359 (= (++!4367 lt!526582 lt!526572) lt!526654)))

(assert (= (and d!448359 c!248158) b!1514628))

(assert (= (and d!448359 (not c!248158)) b!1514629))

(assert (= (and d!448359 res!681336) b!1514630))

(assert (= (and b!1514630 res!681337) b!1514631))

(declare-fun m!1779017 () Bool)

(assert (=> b!1514629 m!1779017))

(declare-fun m!1779019 () Bool)

(assert (=> b!1514630 m!1779019))

(declare-fun m!1779021 () Bool)

(assert (=> b!1514630 m!1779021))

(declare-fun m!1779023 () Bool)

(assert (=> b!1514630 m!1779023))

(declare-fun m!1779025 () Bool)

(assert (=> d!448359 m!1779025))

(declare-fun m!1779027 () Bool)

(assert (=> d!448359 m!1779027))

(declare-fun m!1779029 () Bool)

(assert (=> d!448359 m!1779029))

(assert (=> b!1514470 d!448359))

(declare-fun d!448361 () Bool)

(declare-fun lt!526657 () BalanceConc!10834)

(assert (=> d!448361 (= (list!6357 lt!526657) (originalCharacters!3709 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))

(declare-fun dynLambda!7224 (Int TokenValue!2937) BalanceConc!10834)

(assert (=> d!448361 (= lt!526657 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (=> d!448361 (= (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577)))) lt!526657)))

(declare-fun b_lambda!47499 () Bool)

(assert (=> (not b_lambda!47499) (not d!448361)))

(declare-fun tb!86209 () Bool)

(declare-fun t!139459 () Bool)

(assert (=> (and b!1514478 (= (toChars!4057 (transformation!2847 (h!21506 rules!1640))) (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) t!139459) tb!86209))

(declare-fun b!1514636 () Bool)

(declare-fun e!968757 () Bool)

(declare-fun tp!433689 () Bool)

(assert (=> b!1514636 (= e!968757 (and (inv!21340 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) tp!433689))))

(declare-fun result!103730 () Bool)

(assert (=> tb!86209 (= result!103730 (and (inv!21338 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) e!968757))))

(assert (= tb!86209 b!1514636))

(declare-fun m!1779031 () Bool)

(assert (=> b!1514636 m!1779031))

(declare-fun m!1779033 () Bool)

(assert (=> tb!86209 m!1779033))

(assert (=> d!448361 t!139459))

(declare-fun b_and!105357 () Bool)

(assert (= b_and!105343 (and (=> t!139459 result!103730) b_and!105357)))

(declare-fun m!1779035 () Bool)

(assert (=> d!448361 m!1779035))

(declare-fun m!1779037 () Bool)

(assert (=> d!448361 m!1779037))

(assert (=> b!1514470 d!448361))

(declare-fun d!448363 () Bool)

(assert (=> d!448363 (= (++!4367 (++!4367 lt!526584 lt!526582) lt!526572) (++!4367 lt!526584 (++!4367 lt!526582 lt!526572)))))

(declare-fun lt!526660 () Unit!25754)

(declare-fun choose!9163 (List!16170 List!16170 List!16170) Unit!25754)

(assert (=> d!448363 (= lt!526660 (choose!9163 lt!526584 lt!526582 lt!526572))))

(assert (=> d!448363 (= (lemmaConcatAssociativity!946 lt!526584 lt!526582 lt!526572) lt!526660)))

(declare-fun bs!364963 () Bool)

(assert (= bs!364963 d!448363))

(assert (=> bs!364963 m!1778793))

(assert (=> bs!364963 m!1778807))

(assert (=> bs!364963 m!1778783))

(assert (=> bs!364963 m!1778793))

(declare-fun m!1779039 () Bool)

(assert (=> bs!364963 m!1779039))

(assert (=> bs!364963 m!1778783))

(assert (=> bs!364963 m!1778785))

(assert (=> b!1514470 d!448363))

(declare-fun d!448365 () Bool)

(assert (=> d!448365 (= (list!6357 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577))))) (list!6359 (c!248131 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(declare-fun bs!364964 () Bool)

(assert (= bs!364964 d!448365))

(declare-fun m!1779041 () Bool)

(assert (=> bs!364964 m!1779041))

(assert (=> b!1514470 d!448365))

(declare-fun b!1514638 () Bool)

(declare-fun e!968758 () List!16169)

(assert (=> b!1514638 (= e!968758 (Cons!16101 (h!21502 lt!526569) (++!4368 (t!139453 lt!526569) lt!526561)))))

(declare-fun lt!526661 () List!16169)

(declare-fun e!968759 () Bool)

(declare-fun b!1514640 () Bool)

(assert (=> b!1514640 (= e!968759 (or (not (= lt!526561 Nil!16101)) (= lt!526661 lt!526569)))))

(declare-fun b!1514637 () Bool)

(assert (=> b!1514637 (= e!968758 lt!526561)))

(declare-fun d!448367 () Bool)

(assert (=> d!448367 e!968759))

(declare-fun res!681338 () Bool)

(assert (=> d!448367 (=> (not res!681338) (not e!968759))))

(assert (=> d!448367 (= res!681338 (= (content!2316 lt!526661) ((_ map or) (content!2316 lt!526569) (content!2316 lt!526561))))))

(assert (=> d!448367 (= lt!526661 e!968758)))

(declare-fun c!248159 () Bool)

(assert (=> d!448367 (= c!248159 ((_ is Nil!16101) lt!526569))))

(assert (=> d!448367 (= (++!4368 lt!526569 lt!526561) lt!526661)))

(declare-fun b!1514639 () Bool)

(declare-fun res!681339 () Bool)

(assert (=> b!1514639 (=> (not res!681339) (not e!968759))))

(assert (=> b!1514639 (= res!681339 (= (size!13022 lt!526661) (+ (size!13022 lt!526569) (size!13022 lt!526561))))))

(assert (= (and d!448367 c!248159) b!1514637))

(assert (= (and d!448367 (not c!248159)) b!1514638))

(assert (= (and d!448367 res!681338) b!1514639))

(assert (= (and b!1514639 res!681339) b!1514640))

(declare-fun m!1779043 () Bool)

(assert (=> b!1514638 m!1779043))

(declare-fun m!1779045 () Bool)

(assert (=> d!448367 m!1779045))

(assert (=> d!448367 m!1779005))

(assert (=> d!448367 m!1778929))

(declare-fun m!1779047 () Bool)

(assert (=> b!1514639 m!1779047))

(assert (=> b!1514639 m!1779011))

(assert (=> b!1514639 m!1778935))

(assert (=> b!1514470 d!448367))

(declare-fun b!1514642 () Bool)

(declare-fun e!968761 () List!16170)

(assert (=> b!1514642 (= e!968761 (Cons!16102 (h!21503 lt!526584) (++!4367 (t!139454 lt!526584) lt!526582)))))

(declare-fun lt!526662 () List!16170)

(declare-fun b!1514644 () Bool)

(declare-fun e!968760 () Bool)

(assert (=> b!1514644 (= e!968760 (or (not (= lt!526582 Nil!16102)) (= lt!526662 lt!526584)))))

(declare-fun b!1514641 () Bool)

(assert (=> b!1514641 (= e!968761 lt!526582)))

(declare-fun b!1514643 () Bool)

(declare-fun res!681341 () Bool)

(assert (=> b!1514643 (=> (not res!681341) (not e!968760))))

(assert (=> b!1514643 (= res!681341 (= (size!13023 lt!526662) (+ (size!13023 lt!526584) (size!13023 lt!526582))))))

(declare-fun d!448369 () Bool)

(assert (=> d!448369 e!968760))

(declare-fun res!681340 () Bool)

(assert (=> d!448369 (=> (not res!681340) (not e!968760))))

(assert (=> d!448369 (= res!681340 (= (content!2317 lt!526662) ((_ map or) (content!2317 lt!526584) (content!2317 lt!526582))))))

(assert (=> d!448369 (= lt!526662 e!968761)))

(declare-fun c!248160 () Bool)

(assert (=> d!448369 (= c!248160 ((_ is Nil!16102) lt!526584))))

(assert (=> d!448369 (= (++!4367 lt!526584 lt!526582) lt!526662)))

(assert (= (and d!448369 c!248160) b!1514641))

(assert (= (and d!448369 (not c!248160)) b!1514642))

(assert (= (and d!448369 res!681340) b!1514643))

(assert (= (and b!1514643 res!681341) b!1514644))

(declare-fun m!1779049 () Bool)

(assert (=> b!1514642 m!1779049))

(declare-fun m!1779051 () Bool)

(assert (=> b!1514643 m!1779051))

(assert (=> b!1514643 m!1778943))

(assert (=> b!1514643 m!1779021))

(declare-fun m!1779053 () Bool)

(assert (=> d!448369 m!1779053))

(assert (=> d!448369 m!1778949))

(assert (=> d!448369 m!1779027))

(assert (=> b!1514470 d!448369))

(declare-fun d!448371 () Bool)

(declare-fun e!968764 () Bool)

(assert (=> d!448371 e!968764))

(declare-fun res!681344 () Bool)

(assert (=> d!448371 (=> (not res!681344) (not e!968764))))

(declare-fun append!505 (Conc!5447 Token!5356) Conc!5447)

(assert (=> d!448371 (= res!681344 (isBalanced!1612 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577))))))))

(declare-fun lt!526665 () BalanceConc!10836)

(assert (=> d!448371 (= lt!526665 (BalanceConc!10837 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (=> d!448371 (= (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577)))) lt!526665)))

(declare-fun b!1514647 () Bool)

(declare-fun $colon+!108 (List!16170 Token!5356) List!16170)

(assert (=> b!1514647 (= e!968764 (= (list!6358 lt!526665) ($colon+!108 (list!6358 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (= (and d!448371 res!681344) b!1514647))

(declare-fun m!1779055 () Bool)

(assert (=> d!448371 m!1779055))

(assert (=> d!448371 m!1779055))

(declare-fun m!1779057 () Bool)

(assert (=> d!448371 m!1779057))

(declare-fun m!1779059 () Bool)

(assert (=> b!1514647 m!1779059))

(assert (=> b!1514647 m!1778745))

(assert (=> b!1514647 m!1778745))

(declare-fun m!1779061 () Bool)

(assert (=> b!1514647 m!1779061))

(assert (=> b!1514470 d!448371))

(declare-fun d!448373 () Bool)

(assert (=> d!448373 (= (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))) (list!6359 (c!248131 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(declare-fun bs!364965 () Bool)

(assert (= bs!364965 d!448373))

(declare-fun m!1779063 () Bool)

(assert (=> bs!364965 m!1779063))

(assert (=> b!1514470 d!448373))

(declare-fun d!448375 () Bool)

(assert (=> d!448375 (= (list!6357 (_2!8520 lt!526566)) (list!6359 (c!248131 (_2!8520 lt!526566))))))

(declare-fun bs!364966 () Bool)

(assert (= bs!364966 d!448375))

(declare-fun m!1779065 () Bool)

(assert (=> bs!364966 m!1779065))

(assert (=> b!1514470 d!448375))

(declare-fun d!448377 () Bool)

(assert (=> d!448377 (= (isEmpty!9939 lt!526564) ((_ is Nil!16102) lt!526564))))

(assert (=> b!1514470 d!448377))

(declare-fun b!1514649 () Bool)

(declare-fun e!968766 () List!16170)

(assert (=> b!1514649 (= e!968766 (Cons!16102 (h!21503 (++!4367 lt!526584 lt!526582)) (++!4367 (t!139454 (++!4367 lt!526584 lt!526582)) lt!526572)))))

(declare-fun e!968765 () Bool)

(declare-fun b!1514651 () Bool)

(declare-fun lt!526666 () List!16170)

(assert (=> b!1514651 (= e!968765 (or (not (= lt!526572 Nil!16102)) (= lt!526666 (++!4367 lt!526584 lt!526582))))))

(declare-fun b!1514648 () Bool)

(assert (=> b!1514648 (= e!968766 lt!526572)))

(declare-fun b!1514650 () Bool)

(declare-fun res!681346 () Bool)

(assert (=> b!1514650 (=> (not res!681346) (not e!968765))))

(assert (=> b!1514650 (= res!681346 (= (size!13023 lt!526666) (+ (size!13023 (++!4367 lt!526584 lt!526582)) (size!13023 lt!526572))))))

(declare-fun d!448379 () Bool)

(assert (=> d!448379 e!968765))

(declare-fun res!681345 () Bool)

(assert (=> d!448379 (=> (not res!681345) (not e!968765))))

(assert (=> d!448379 (= res!681345 (= (content!2317 lt!526666) ((_ map or) (content!2317 (++!4367 lt!526584 lt!526582)) (content!2317 lt!526572))))))

(assert (=> d!448379 (= lt!526666 e!968766)))

(declare-fun c!248162 () Bool)

(assert (=> d!448379 (= c!248162 ((_ is Nil!16102) (++!4367 lt!526584 lt!526582)))))

(assert (=> d!448379 (= (++!4367 (++!4367 lt!526584 lt!526582) lt!526572) lt!526666)))

(assert (= (and d!448379 c!248162) b!1514648))

(assert (= (and d!448379 (not c!248162)) b!1514649))

(assert (= (and d!448379 res!681345) b!1514650))

(assert (= (and b!1514650 res!681346) b!1514651))

(declare-fun m!1779067 () Bool)

(assert (=> b!1514649 m!1779067))

(declare-fun m!1779069 () Bool)

(assert (=> b!1514650 m!1779069))

(assert (=> b!1514650 m!1778783))

(declare-fun m!1779071 () Bool)

(assert (=> b!1514650 m!1779071))

(assert (=> b!1514650 m!1779023))

(declare-fun m!1779073 () Bool)

(assert (=> d!448379 m!1779073))

(assert (=> d!448379 m!1778783))

(declare-fun m!1779075 () Bool)

(assert (=> d!448379 m!1779075))

(assert (=> d!448379 m!1779029))

(assert (=> b!1514470 d!448379))

(declare-fun d!448381 () Bool)

(assert (=> d!448381 (= (valid!1191 cacheDown!629) (validCacheMapDown!136 (cache!1814 cacheDown!629)))))

(declare-fun bs!364967 () Bool)

(assert (= bs!364967 d!448381))

(assert (=> bs!364967 m!1778869))

(assert (=> b!1514453 d!448381))

(declare-fun d!448383 () Bool)

(declare-fun e!968769 () Bool)

(assert (=> d!448383 e!968769))

(declare-fun res!681349 () Bool)

(assert (=> d!448383 (=> res!681349 e!968769)))

(declare-fun lt!526669 () Bool)

(assert (=> d!448383 (= res!681349 (not lt!526669))))

(declare-fun drop!760 (List!16169 Int) List!16169)

(assert (=> d!448383 (= lt!526669 (= lt!526579 (drop!760 lt!526568 (- (size!13022 lt!526568) (size!13022 lt!526579)))))))

(assert (=> d!448383 (= (isSuffix!304 lt!526579 lt!526568) lt!526669)))

(declare-fun b!1514654 () Bool)

(assert (=> b!1514654 (= e!968769 (>= (size!13022 lt!526568) (size!13022 lt!526579)))))

(assert (= (and d!448383 (not res!681349)) b!1514654))

(declare-fun m!1779077 () Bool)

(assert (=> d!448383 m!1779077))

(declare-fun m!1779079 () Bool)

(assert (=> d!448383 m!1779079))

(declare-fun m!1779081 () Bool)

(assert (=> d!448383 m!1779081))

(assert (=> b!1514654 m!1779077))

(assert (=> b!1514654 m!1779079))

(assert (=> b!1514472 d!448383))

(declare-fun d!448385 () Bool)

(declare-fun e!968770 () Bool)

(assert (=> d!448385 e!968770))

(declare-fun res!681350 () Bool)

(assert (=> d!448385 (=> res!681350 e!968770)))

(declare-fun lt!526670 () Bool)

(assert (=> d!448385 (= res!681350 (not lt!526670))))

(assert (=> d!448385 (= lt!526670 (= lt!526579 (drop!760 lt!526563 (- (size!13022 lt!526563) (size!13022 lt!526579)))))))

(assert (=> d!448385 (= (isSuffix!304 lt!526579 lt!526563) lt!526670)))

(declare-fun b!1514655 () Bool)

(assert (=> b!1514655 (= e!968770 (>= (size!13022 lt!526563) (size!13022 lt!526579)))))

(assert (= (and d!448385 (not res!681350)) b!1514655))

(declare-fun m!1779083 () Bool)

(assert (=> d!448385 m!1779083))

(assert (=> d!448385 m!1779079))

(declare-fun m!1779085 () Bool)

(assert (=> d!448385 m!1779085))

(assert (=> b!1514655 m!1779083))

(assert (=> b!1514655 m!1779079))

(assert (=> b!1514472 d!448385))

(declare-fun d!448387 () Bool)

(assert (=> d!448387 (isSuffix!304 lt!526579 (++!4368 lt!526569 lt!526579))))

(declare-fun lt!526673 () Unit!25754)

(declare-fun choose!9164 (List!16169 List!16169) Unit!25754)

(assert (=> d!448387 (= lt!526673 (choose!9164 lt!526569 lt!526579))))

(assert (=> d!448387 (= (lemmaConcatTwoListThenFSndIsSuffix!282 lt!526569 lt!526579) lt!526673)))

(declare-fun bs!364968 () Bool)

(assert (= bs!364968 d!448387))

(assert (=> bs!364968 m!1778765))

(assert (=> bs!364968 m!1778765))

(declare-fun m!1779087 () Bool)

(assert (=> bs!364968 m!1779087))

(declare-fun m!1779089 () Bool)

(assert (=> bs!364968 m!1779089))

(assert (=> b!1514472 d!448387))

(declare-fun d!448389 () Bool)

(assert (=> d!448389 (= (inv!21338 (totalInput!2301 cacheFurthestNullable!64)) (isBalanced!1611 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))))

(declare-fun bs!364969 () Bool)

(assert (= bs!364969 d!448389))

(declare-fun m!1779091 () Bool)

(assert (=> bs!364969 m!1779091))

(assert (=> b!1514455 d!448389))

(declare-fun d!448391 () Bool)

(assert (=> d!448391 (= (isEmpty!9940 rules!1640) ((_ is Nil!16105) rules!1640))))

(assert (=> b!1514484 d!448391))

(declare-fun d!448393 () Bool)

(declare-fun c!248163 () Bool)

(assert (=> d!448393 (= c!248163 ((_ is Node!5446) (c!248131 treated!70)))))

(declare-fun e!968771 () Bool)

(assert (=> d!448393 (= (inv!21340 (c!248131 treated!70)) e!968771)))

(declare-fun b!1514656 () Bool)

(assert (=> b!1514656 (= e!968771 (inv!21343 (c!248131 treated!70)))))

(declare-fun b!1514657 () Bool)

(declare-fun e!968772 () Bool)

(assert (=> b!1514657 (= e!968771 e!968772)))

(declare-fun res!681351 () Bool)

(assert (=> b!1514657 (= res!681351 (not ((_ is Leaf!8073) (c!248131 treated!70))))))

(assert (=> b!1514657 (=> res!681351 e!968772)))

(declare-fun b!1514658 () Bool)

(assert (=> b!1514658 (= e!968772 (inv!21344 (c!248131 treated!70)))))

(assert (= (and d!448393 c!248163) b!1514656))

(assert (= (and d!448393 (not c!248163)) b!1514657))

(assert (= (and b!1514657 (not res!681351)) b!1514658))

(declare-fun m!1779093 () Bool)

(assert (=> b!1514656 m!1779093))

(declare-fun m!1779095 () Bool)

(assert (=> b!1514658 m!1779095))

(assert (=> b!1514448 d!448393))

(declare-fun d!448395 () Bool)

(declare-fun e!968775 () Bool)

(assert (=> d!448395 e!968775))

(declare-fun res!681354 () Bool)

(assert (=> d!448395 (=> (not res!681354) (not e!968775))))

(declare-fun prepend!470 (Conc!5447 Token!5356) Conc!5447)

(assert (=> d!448395 (= res!681354 (isBalanced!1612 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574)))))))

(declare-fun lt!526676 () BalanceConc!10836)

(assert (=> d!448395 (= lt!526676 (BalanceConc!10837 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574)))))))

(assert (=> d!448395 (= (prepend!469 (_1!8520 lt!526571) (_1!8525 (v!22915 lt!526574))) lt!526676)))

(declare-fun b!1514661 () Bool)

(assert (=> b!1514661 (= e!968775 (= (list!6358 lt!526676) (Cons!16102 (_1!8525 (v!22915 lt!526574)) (list!6358 (_1!8520 lt!526571)))))))

(assert (= (and d!448395 res!681354) b!1514661))

(declare-fun m!1779097 () Bool)

(assert (=> d!448395 m!1779097))

(assert (=> d!448395 m!1779097))

(declare-fun m!1779099 () Bool)

(assert (=> d!448395 m!1779099))

(declare-fun m!1779101 () Bool)

(assert (=> b!1514661 m!1779101))

(declare-fun m!1779103 () Bool)

(assert (=> b!1514661 m!1779103))

(assert (=> b!1514466 d!448395))

(declare-fun b!1514662 () Bool)

(declare-fun e!968779 () Bool)

(declare-fun lt!526677 () tuple2!14988)

(assert (=> b!1514662 (= e!968779 (not (isEmpty!9941 (_1!8520 lt!526677))))))

(declare-fun d!448397 () Bool)

(declare-fun e!968776 () Bool)

(assert (=> d!448397 e!968776))

(declare-fun res!681355 () Bool)

(assert (=> d!448397 (=> (not res!681355) (not e!968776))))

(declare-fun e!968778 () Bool)

(assert (=> d!448397 (= res!681355 e!968778)))

(declare-fun c!248166 () Bool)

(assert (=> d!448397 (= c!248166 (> (size!13024 (_1!8520 lt!526677)) 0))))

(declare-fun e!968777 () tuple2!14988)

(assert (=> d!448397 (= lt!526677 e!968777)))

(declare-fun c!248165 () Bool)

(declare-fun lt!526679 () Option!2934)

(assert (=> d!448397 (= c!248165 ((_ is Some!2933) lt!526679))))

(assert (=> d!448397 (= lt!526679 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526574))))))

(assert (=> d!448397 (= (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526574))) lt!526677)))

(declare-fun b!1514663 () Bool)

(declare-fun res!681356 () Bool)

(assert (=> b!1514663 (=> (not res!681356) (not e!968776))))

(assert (=> b!1514663 (= res!681356 (= (list!6358 (_1!8520 lt!526677)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574)))))))))

(declare-fun b!1514664 () Bool)

(assert (=> b!1514664 (= e!968778 e!968779)))

(declare-fun res!681357 () Bool)

(assert (=> b!1514664 (= res!681357 (< (size!13025 (_2!8520 lt!526677)) (size!13025 (_2!8525 (v!22915 lt!526574)))))))

(assert (=> b!1514664 (=> (not res!681357) (not e!968779))))

(declare-fun b!1514665 () Bool)

(declare-fun lt!526678 () tuple2!14988)

(assert (=> b!1514665 (= e!968777 (tuple2!14989 (prepend!469 (_1!8520 lt!526678) (_1!8525 (v!22915 lt!526679))) (_2!8520 lt!526678)))))

(assert (=> b!1514665 (= lt!526678 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526679))))))

(declare-fun b!1514666 () Bool)

(assert (=> b!1514666 (= e!968777 (tuple2!14989 (BalanceConc!10837 Empty!5447) (_2!8525 (v!22915 lt!526574))))))

(declare-fun b!1514667 () Bool)

(assert (=> b!1514667 (= e!968776 (= (list!6357 (_2!8520 lt!526677)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574)))))))))

(declare-fun b!1514668 () Bool)

(assert (=> b!1514668 (= e!968778 (= (list!6357 (_2!8520 lt!526677)) (list!6357 (_2!8525 (v!22915 lt!526574)))))))

(assert (= (and d!448397 c!248165) b!1514665))

(assert (= (and d!448397 (not c!248165)) b!1514666))

(assert (= (and d!448397 c!248166) b!1514664))

(assert (= (and d!448397 (not c!248166)) b!1514668))

(assert (= (and b!1514664 res!681357) b!1514662))

(assert (= (and d!448397 res!681355) b!1514663))

(assert (= (and b!1514663 res!681356) b!1514667))

(declare-fun m!1779105 () Bool)

(assert (=> b!1514668 m!1779105))

(declare-fun m!1779107 () Bool)

(assert (=> b!1514668 m!1779107))

(declare-fun m!1779109 () Bool)

(assert (=> b!1514663 m!1779109))

(assert (=> b!1514663 m!1779107))

(assert (=> b!1514663 m!1779107))

(declare-fun m!1779111 () Bool)

(assert (=> b!1514663 m!1779111))

(declare-fun m!1779113 () Bool)

(assert (=> b!1514665 m!1779113))

(declare-fun m!1779115 () Bool)

(assert (=> b!1514665 m!1779115))

(declare-fun m!1779117 () Bool)

(assert (=> b!1514662 m!1779117))

(assert (=> b!1514667 m!1779105))

(assert (=> b!1514667 m!1779107))

(assert (=> b!1514667 m!1779107))

(assert (=> b!1514667 m!1779111))

(declare-fun m!1779119 () Bool)

(assert (=> b!1514664 m!1779119))

(declare-fun m!1779121 () Bool)

(assert (=> b!1514664 m!1779121))

(declare-fun m!1779123 () Bool)

(assert (=> d!448397 m!1779123))

(declare-fun m!1779125 () Bool)

(assert (=> d!448397 m!1779125))

(assert (=> b!1514466 d!448397))

(declare-fun b!1514670 () Bool)

(declare-fun e!968780 () List!16169)

(assert (=> b!1514670 (= e!968780 (Cons!16101 (h!21502 lt!526569) (++!4368 (t!139453 lt!526569) lt!526579)))))

(declare-fun e!968781 () Bool)

(declare-fun lt!526680 () List!16169)

(declare-fun b!1514672 () Bool)

(assert (=> b!1514672 (= e!968781 (or (not (= lt!526579 Nil!16101)) (= lt!526680 lt!526569)))))

(declare-fun b!1514669 () Bool)

(assert (=> b!1514669 (= e!968780 lt!526579)))

(declare-fun d!448399 () Bool)

(assert (=> d!448399 e!968781))

(declare-fun res!681358 () Bool)

(assert (=> d!448399 (=> (not res!681358) (not e!968781))))

(assert (=> d!448399 (= res!681358 (= (content!2316 lt!526680) ((_ map or) (content!2316 lt!526569) (content!2316 lt!526579))))))

(assert (=> d!448399 (= lt!526680 e!968780)))

(declare-fun c!248167 () Bool)

(assert (=> d!448399 (= c!248167 ((_ is Nil!16101) lt!526569))))

(assert (=> d!448399 (= (++!4368 lt!526569 lt!526579) lt!526680)))

(declare-fun b!1514671 () Bool)

(declare-fun res!681359 () Bool)

(assert (=> b!1514671 (=> (not res!681359) (not e!968781))))

(assert (=> b!1514671 (= res!681359 (= (size!13022 lt!526680) (+ (size!13022 lt!526569) (size!13022 lt!526579))))))

(assert (= (and d!448399 c!248167) b!1514669))

(assert (= (and d!448399 (not c!248167)) b!1514670))

(assert (= (and d!448399 res!681358) b!1514671))

(assert (= (and b!1514671 res!681359) b!1514672))

(declare-fun m!1779127 () Bool)

(assert (=> b!1514670 m!1779127))

(declare-fun m!1779129 () Bool)

(assert (=> d!448399 m!1779129))

(assert (=> d!448399 m!1779005))

(declare-fun m!1779131 () Bool)

(assert (=> d!448399 m!1779131))

(declare-fun m!1779133 () Bool)

(assert (=> b!1514671 m!1779133))

(assert (=> b!1514671 m!1779011))

(assert (=> b!1514671 m!1779079))

(assert (=> b!1514485 d!448399))

(declare-fun d!448401 () Bool)

(assert (=> d!448401 (= (list!6357 totalInput!458) (list!6359 (c!248131 totalInput!458)))))

(declare-fun bs!364970 () Bool)

(assert (= bs!364970 d!448401))

(declare-fun m!1779135 () Bool)

(assert (=> bs!364970 m!1779135))

(assert (=> b!1514485 d!448401))

(declare-fun d!448403 () Bool)

(assert (=> d!448403 (= (list!6357 input!1102) (list!6359 (c!248131 input!1102)))))

(declare-fun bs!364971 () Bool)

(assert (= bs!364971 d!448403))

(declare-fun m!1779137 () Bool)

(assert (=> bs!364971 m!1779137))

(assert (=> b!1514485 d!448403))

(declare-fun d!448405 () Bool)

(assert (=> d!448405 (= (list!6357 treated!70) (list!6359 (c!248131 treated!70)))))

(declare-fun bs!364972 () Bool)

(assert (= bs!364972 d!448405))

(declare-fun m!1779139 () Bool)

(assert (=> bs!364972 m!1779139))

(assert (=> b!1514485 d!448405))

(declare-fun d!448407 () Bool)

(assert (=> d!448407 (= (array_inv!1679 (_keys!1782 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))) (bvsge (size!13017 (_keys!1782 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1514449 d!448407))

(declare-fun d!448409 () Bool)

(assert (=> d!448409 (= (array_inv!1680 (_values!1767 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))) (bvsge (size!13018 (_values!1767 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1514449 d!448409))

(declare-fun d!448411 () Bool)

(declare-fun c!248170 () Bool)

(assert (=> d!448411 (= c!248170 ((_ is Node!5447) (c!248132 acc!392)))))

(declare-fun e!968786 () Bool)

(assert (=> d!448411 (= (inv!21341 (c!248132 acc!392)) e!968786)))

(declare-fun b!1514679 () Bool)

(declare-fun inv!21345 (Conc!5447) Bool)

(assert (=> b!1514679 (= e!968786 (inv!21345 (c!248132 acc!392)))))

(declare-fun b!1514680 () Bool)

(declare-fun e!968787 () Bool)

(assert (=> b!1514680 (= e!968786 e!968787)))

(declare-fun res!681362 () Bool)

(assert (=> b!1514680 (= res!681362 (not ((_ is Leaf!8074) (c!248132 acc!392))))))

(assert (=> b!1514680 (=> res!681362 e!968787)))

(declare-fun b!1514681 () Bool)

(declare-fun inv!21346 (Conc!5447) Bool)

(assert (=> b!1514681 (= e!968787 (inv!21346 (c!248132 acc!392)))))

(assert (= (and d!448411 c!248170) b!1514679))

(assert (= (and d!448411 (not c!248170)) b!1514680))

(assert (= (and b!1514680 (not res!681362)) b!1514681))

(declare-fun m!1779141 () Bool)

(assert (=> b!1514679 m!1779141))

(declare-fun m!1779143 () Bool)

(assert (=> b!1514681 m!1779143))

(assert (=> b!1514450 d!448411))

(declare-fun d!448413 () Bool)

(declare-fun e!968790 () Bool)

(assert (=> d!448413 e!968790))

(declare-fun res!681374 () Bool)

(assert (=> d!448413 (=> (not res!681374) (not e!968790))))

(declare-fun appendAssocInst!370 (Conc!5447 Conc!5447) Bool)

(assert (=> d!448413 (= res!681374 (appendAssocInst!370 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))))))

(declare-fun lt!526683 () BalanceConc!10836)

(declare-fun ++!4369 (Conc!5447 Conc!5447) Conc!5447)

(assert (=> d!448413 (= lt!526683 (BalanceConc!10837 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))))))

(assert (=> d!448413 (= (++!4366 acc!392 (_1!8520 lt!526585)) lt!526683)))

(declare-fun b!1514691 () Bool)

(declare-fun res!681372 () Bool)

(assert (=> b!1514691 (=> (not res!681372) (not e!968790))))

(declare-fun height!813 (Conc!5447) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1514691 (= res!681372 (<= (height!813 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))) (+ (max!0 (height!813 (c!248132 acc!392)) (height!813 (c!248132 (_1!8520 lt!526585)))) 1)))))

(declare-fun b!1514690 () Bool)

(declare-fun res!681373 () Bool)

(assert (=> b!1514690 (=> (not res!681373) (not e!968790))))

(assert (=> b!1514690 (= res!681373 (isBalanced!1612 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))))))

(declare-fun b!1514693 () Bool)

(assert (=> b!1514693 (= e!968790 (= (list!6358 lt!526683) (++!4367 (list!6358 acc!392) (list!6358 (_1!8520 lt!526585)))))))

(declare-fun b!1514692 () Bool)

(declare-fun res!681371 () Bool)

(assert (=> b!1514692 (=> (not res!681371) (not e!968790))))

(assert (=> b!1514692 (= res!681371 (>= (height!813 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))) (max!0 (height!813 (c!248132 acc!392)) (height!813 (c!248132 (_1!8520 lt!526585))))))))

(assert (= (and d!448413 res!681374) b!1514690))

(assert (= (and b!1514690 res!681373) b!1514691))

(assert (= (and b!1514691 res!681372) b!1514692))

(assert (= (and b!1514692 res!681371) b!1514693))

(declare-fun m!1779145 () Bool)

(assert (=> b!1514691 m!1779145))

(declare-fun m!1779147 () Bool)

(assert (=> b!1514691 m!1779147))

(assert (=> b!1514691 m!1779145))

(assert (=> b!1514691 m!1779147))

(declare-fun m!1779149 () Bool)

(assert (=> b!1514691 m!1779149))

(declare-fun m!1779151 () Bool)

(assert (=> b!1514691 m!1779151))

(assert (=> b!1514691 m!1779151))

(declare-fun m!1779153 () Bool)

(assert (=> b!1514691 m!1779153))

(assert (=> b!1514692 m!1779145))

(assert (=> b!1514692 m!1779147))

(assert (=> b!1514692 m!1779145))

(assert (=> b!1514692 m!1779147))

(assert (=> b!1514692 m!1779149))

(assert (=> b!1514692 m!1779151))

(assert (=> b!1514692 m!1779151))

(assert (=> b!1514692 m!1779153))

(declare-fun m!1779155 () Bool)

(assert (=> b!1514693 m!1779155))

(assert (=> b!1514693 m!1778745))

(declare-fun m!1779157 () Bool)

(assert (=> b!1514693 m!1779157))

(assert (=> b!1514693 m!1778745))

(assert (=> b!1514693 m!1779157))

(declare-fun m!1779159 () Bool)

(assert (=> b!1514693 m!1779159))

(assert (=> b!1514690 m!1779151))

(assert (=> b!1514690 m!1779151))

(declare-fun m!1779161 () Bool)

(assert (=> b!1514690 m!1779161))

(declare-fun m!1779163 () Bool)

(assert (=> d!448413 m!1779163))

(assert (=> d!448413 m!1779151))

(assert (=> b!1514468 d!448413))

(declare-fun d!448415 () Bool)

(assert (=> d!448415 (= (list!6358 (_1!8520 lt!526570)) (list!6360 (c!248132 (_1!8520 lt!526570))))))

(declare-fun bs!364973 () Bool)

(assert (= bs!364973 d!448415))

(declare-fun m!1779165 () Bool)

(assert (=> bs!364973 m!1779165))

(assert (=> b!1514468 d!448415))

(declare-fun b!1514694 () Bool)

(declare-fun e!968794 () Bool)

(declare-fun lt!526684 () tuple2!14988)

(assert (=> b!1514694 (= e!968794 (not (isEmpty!9941 (_1!8520 lt!526684))))))

(declare-fun d!448417 () Bool)

(declare-fun e!968791 () Bool)

(assert (=> d!448417 e!968791))

(declare-fun res!681375 () Bool)

(assert (=> d!448417 (=> (not res!681375) (not e!968791))))

(declare-fun e!968793 () Bool)

(assert (=> d!448417 (= res!681375 e!968793)))

(declare-fun c!248175 () Bool)

(assert (=> d!448417 (= c!248175 (> (size!13024 (_1!8520 lt!526684)) 0))))

(declare-fun e!968792 () tuple2!14988)

(assert (=> d!448417 (= lt!526684 e!968792)))

(declare-fun c!248174 () Bool)

(declare-fun lt!526686 () Option!2934)

(assert (=> d!448417 (= c!248174 ((_ is Some!2933) lt!526686))))

(assert (=> d!448417 (= lt!526686 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!448417 (= (lexRec!334 thiss!13241 rules!1640 totalInput!458) lt!526684)))

(declare-fun b!1514695 () Bool)

(declare-fun res!681376 () Bool)

(assert (=> b!1514695 (=> (not res!681376) (not e!968791))))

(assert (=> b!1514695 (= res!681376 (= (list!6358 (_1!8520 lt!526684)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 totalInput!458)))))))

(declare-fun b!1514696 () Bool)

(assert (=> b!1514696 (= e!968793 e!968794)))

(declare-fun res!681377 () Bool)

(assert (=> b!1514696 (= res!681377 (< (size!13025 (_2!8520 lt!526684)) (size!13025 totalInput!458)))))

(assert (=> b!1514696 (=> (not res!681377) (not e!968794))))

(declare-fun b!1514697 () Bool)

(declare-fun lt!526685 () tuple2!14988)

(assert (=> b!1514697 (= e!968792 (tuple2!14989 (prepend!469 (_1!8520 lt!526685) (_1!8525 (v!22915 lt!526686))) (_2!8520 lt!526685)))))

(assert (=> b!1514697 (= lt!526685 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526686))))))

(declare-fun b!1514698 () Bool)

(assert (=> b!1514698 (= e!968792 (tuple2!14989 (BalanceConc!10837 Empty!5447) totalInput!458))))

(declare-fun b!1514699 () Bool)

(assert (=> b!1514699 (= e!968791 (= (list!6357 (_2!8520 lt!526684)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 totalInput!458)))))))

(declare-fun b!1514700 () Bool)

(assert (=> b!1514700 (= e!968793 (= (list!6357 (_2!8520 lt!526684)) (list!6357 totalInput!458)))))

(assert (= (and d!448417 c!248174) b!1514697))

(assert (= (and d!448417 (not c!248174)) b!1514698))

(assert (= (and d!448417 c!248175) b!1514696))

(assert (= (and d!448417 (not c!248175)) b!1514700))

(assert (= (and b!1514696 res!681377) b!1514694))

(assert (= (and d!448417 res!681375) b!1514695))

(assert (= (and b!1514695 res!681376) b!1514699))

(declare-fun m!1779167 () Bool)

(assert (=> b!1514700 m!1779167))

(assert (=> b!1514700 m!1778767))

(declare-fun m!1779169 () Bool)

(assert (=> b!1514695 m!1779169))

(assert (=> b!1514695 m!1778767))

(assert (=> b!1514695 m!1778767))

(declare-fun m!1779171 () Bool)

(assert (=> b!1514695 m!1779171))

(declare-fun m!1779173 () Bool)

(assert (=> b!1514697 m!1779173))

(declare-fun m!1779175 () Bool)

(assert (=> b!1514697 m!1779175))

(declare-fun m!1779177 () Bool)

(assert (=> b!1514694 m!1779177))

(assert (=> b!1514699 m!1779167))

(assert (=> b!1514699 m!1778767))

(assert (=> b!1514699 m!1778767))

(assert (=> b!1514699 m!1779171))

(declare-fun m!1779179 () Bool)

(assert (=> b!1514696 m!1779179))

(declare-fun m!1779181 () Bool)

(assert (=> b!1514696 m!1779181))

(declare-fun m!1779183 () Bool)

(assert (=> d!448417 m!1779183))

(declare-fun m!1779185 () Bool)

(assert (=> d!448417 m!1779185))

(assert (=> b!1514468 d!448417))

(declare-fun b!1514701 () Bool)

(declare-fun e!968798 () Bool)

(declare-fun lt!526687 () tuple2!14988)

(assert (=> b!1514701 (= e!968798 (not (isEmpty!9941 (_1!8520 lt!526687))))))

(declare-fun d!448419 () Bool)

(declare-fun e!968795 () Bool)

(assert (=> d!448419 e!968795))

(declare-fun res!681378 () Bool)

(assert (=> d!448419 (=> (not res!681378) (not e!968795))))

(declare-fun e!968797 () Bool)

(assert (=> d!448419 (= res!681378 e!968797)))

(declare-fun c!248177 () Bool)

(assert (=> d!448419 (= c!248177 (> (size!13024 (_1!8520 lt!526687)) 0))))

(declare-fun e!968796 () tuple2!14988)

(assert (=> d!448419 (= lt!526687 e!968796)))

(declare-fun c!248176 () Bool)

(declare-fun lt!526689 () Option!2934)

(assert (=> d!448419 (= c!248176 ((_ is Some!2933) lt!526689))))

(assert (=> d!448419 (= lt!526689 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 input!1102))))

(assert (=> d!448419 (= (lexRec!334 thiss!13241 rules!1640 input!1102) lt!526687)))

(declare-fun b!1514702 () Bool)

(declare-fun res!681379 () Bool)

(assert (=> b!1514702 (=> (not res!681379) (not e!968795))))

(assert (=> b!1514702 (= res!681379 (= (list!6358 (_1!8520 lt!526687)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 input!1102)))))))

(declare-fun b!1514703 () Bool)

(assert (=> b!1514703 (= e!968797 e!968798)))

(declare-fun res!681380 () Bool)

(assert (=> b!1514703 (= res!681380 (< (size!13025 (_2!8520 lt!526687)) (size!13025 input!1102)))))

(assert (=> b!1514703 (=> (not res!681380) (not e!968798))))

(declare-fun b!1514704 () Bool)

(declare-fun lt!526688 () tuple2!14988)

(assert (=> b!1514704 (= e!968796 (tuple2!14989 (prepend!469 (_1!8520 lt!526688) (_1!8525 (v!22915 lt!526689))) (_2!8520 lt!526688)))))

(assert (=> b!1514704 (= lt!526688 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526689))))))

(declare-fun b!1514705 () Bool)

(assert (=> b!1514705 (= e!968796 (tuple2!14989 (BalanceConc!10837 Empty!5447) input!1102))))

(declare-fun b!1514706 () Bool)

(assert (=> b!1514706 (= e!968795 (= (list!6357 (_2!8520 lt!526687)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 input!1102)))))))

(declare-fun b!1514707 () Bool)

(assert (=> b!1514707 (= e!968797 (= (list!6357 (_2!8520 lt!526687)) (list!6357 input!1102)))))

(assert (= (and d!448419 c!248176) b!1514704))

(assert (= (and d!448419 (not c!248176)) b!1514705))

(assert (= (and d!448419 c!248177) b!1514703))

(assert (= (and d!448419 (not c!248177)) b!1514707))

(assert (= (and b!1514703 res!681380) b!1514701))

(assert (= (and d!448419 res!681378) b!1514702))

(assert (= (and b!1514702 res!681379) b!1514706))

(declare-fun m!1779187 () Bool)

(assert (=> b!1514707 m!1779187))

(assert (=> b!1514707 m!1778769))

(declare-fun m!1779189 () Bool)

(assert (=> b!1514702 m!1779189))

(assert (=> b!1514702 m!1778769))

(assert (=> b!1514702 m!1778769))

(declare-fun m!1779191 () Bool)

(assert (=> b!1514702 m!1779191))

(declare-fun m!1779193 () Bool)

(assert (=> b!1514704 m!1779193))

(declare-fun m!1779195 () Bool)

(assert (=> b!1514704 m!1779195))

(declare-fun m!1779197 () Bool)

(assert (=> b!1514701 m!1779197))

(assert (=> b!1514706 m!1779187))

(assert (=> b!1514706 m!1778769))

(assert (=> b!1514706 m!1778769))

(assert (=> b!1514706 m!1779191))

(declare-fun m!1779199 () Bool)

(assert (=> b!1514703 m!1779199))

(declare-fun m!1779201 () Bool)

(assert (=> b!1514703 m!1779201))

(declare-fun m!1779203 () Bool)

(assert (=> d!448419 m!1779203))

(assert (=> d!448419 m!1778811))

(assert (=> b!1514468 d!448419))

(declare-fun d!448421 () Bool)

(assert (=> d!448421 (= (list!6358 (++!4366 acc!392 (_1!8520 lt!526585))) (list!6360 (c!248132 (++!4366 acc!392 (_1!8520 lt!526585)))))))

(declare-fun bs!364974 () Bool)

(assert (= bs!364974 d!448421))

(declare-fun m!1779205 () Bool)

(assert (=> bs!364974 m!1779205))

(assert (=> b!1514468 d!448421))

(declare-fun d!448423 () Bool)

(declare-fun c!248178 () Bool)

(assert (=> d!448423 (= c!248178 ((_ is Node!5446) (c!248131 totalInput!458)))))

(declare-fun e!968799 () Bool)

(assert (=> d!448423 (= (inv!21340 (c!248131 totalInput!458)) e!968799)))

(declare-fun b!1514708 () Bool)

(assert (=> b!1514708 (= e!968799 (inv!21343 (c!248131 totalInput!458)))))

(declare-fun b!1514709 () Bool)

(declare-fun e!968800 () Bool)

(assert (=> b!1514709 (= e!968799 e!968800)))

(declare-fun res!681381 () Bool)

(assert (=> b!1514709 (= res!681381 (not ((_ is Leaf!8073) (c!248131 totalInput!458))))))

(assert (=> b!1514709 (=> res!681381 e!968800)))

(declare-fun b!1514710 () Bool)

(assert (=> b!1514710 (= e!968800 (inv!21344 (c!248131 totalInput!458)))))

(assert (= (and d!448423 c!248178) b!1514708))

(assert (= (and d!448423 (not c!248178)) b!1514709))

(assert (= (and b!1514709 (not res!681381)) b!1514710))

(declare-fun m!1779207 () Bool)

(assert (=> b!1514708 m!1779207))

(declare-fun m!1779209 () Bool)

(assert (=> b!1514710 m!1779209))

(assert (=> b!1514487 d!448423))

(declare-fun d!448425 () Bool)

(assert (=> d!448425 (= (valid!1190 cacheFurthestNullable!64) (validCacheMapFurthestNullable!49 (cache!1815 cacheFurthestNullable!64) (totalInput!2301 cacheFurthestNullable!64)))))

(declare-fun bs!364975 () Bool)

(assert (= bs!364975 d!448425))

(assert (=> bs!364975 m!1778867))

(assert (=> b!1514452 d!448425))

(declare-fun d!448427 () Bool)

(assert (=> d!448427 (= (list!6358 acc!392) (list!6360 (c!248132 acc!392)))))

(declare-fun bs!364976 () Bool)

(assert (= bs!364976 d!448427))

(declare-fun m!1779211 () Bool)

(assert (=> bs!364976 m!1779211))

(assert (=> b!1514469 d!448427))

(declare-fun d!448429 () Bool)

(assert (=> d!448429 (= (list!6358 (_1!8520 lt!526567)) (list!6360 (c!248132 (_1!8520 lt!526567))))))

(declare-fun bs!364977 () Bool)

(assert (= bs!364977 d!448429))

(declare-fun m!1779213 () Bool)

(assert (=> bs!364977 m!1779213))

(assert (=> b!1514469 d!448429))

(declare-fun b!1514711 () Bool)

(declare-fun e!968804 () Bool)

(declare-fun lt!526690 () tuple2!14988)

(assert (=> b!1514711 (= e!968804 (not (isEmpty!9941 (_1!8520 lt!526690))))))

(declare-fun d!448431 () Bool)

(declare-fun e!968801 () Bool)

(assert (=> d!448431 e!968801))

(declare-fun res!681382 () Bool)

(assert (=> d!448431 (=> (not res!681382) (not e!968801))))

(declare-fun e!968803 () Bool)

(assert (=> d!448431 (= res!681382 e!968803)))

(declare-fun c!248180 () Bool)

(assert (=> d!448431 (= c!248180 (> (size!13024 (_1!8520 lt!526690)) 0))))

(declare-fun e!968802 () tuple2!14988)

(assert (=> d!448431 (= lt!526690 e!968802)))

(declare-fun c!248179 () Bool)

(declare-fun lt!526692 () Option!2934)

(assert (=> d!448431 (= c!248179 ((_ is Some!2933) lt!526692))))

(assert (=> d!448431 (= lt!526692 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 treated!70))))

(assert (=> d!448431 (= (lexRec!334 thiss!13241 rules!1640 treated!70) lt!526690)))

(declare-fun b!1514712 () Bool)

(declare-fun res!681383 () Bool)

(assert (=> b!1514712 (=> (not res!681383) (not e!968801))))

(assert (=> b!1514712 (= res!681383 (= (list!6358 (_1!8520 lt!526690)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 treated!70)))))))

(declare-fun b!1514713 () Bool)

(assert (=> b!1514713 (= e!968803 e!968804)))

(declare-fun res!681384 () Bool)

(assert (=> b!1514713 (= res!681384 (< (size!13025 (_2!8520 lt!526690)) (size!13025 treated!70)))))

(assert (=> b!1514713 (=> (not res!681384) (not e!968804))))

(declare-fun b!1514714 () Bool)

(declare-fun lt!526691 () tuple2!14988)

(assert (=> b!1514714 (= e!968802 (tuple2!14989 (prepend!469 (_1!8520 lt!526691) (_1!8525 (v!22915 lt!526692))) (_2!8520 lt!526691)))))

(assert (=> b!1514714 (= lt!526691 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526692))))))

(declare-fun b!1514715 () Bool)

(assert (=> b!1514715 (= e!968802 (tuple2!14989 (BalanceConc!10837 Empty!5447) treated!70))))

(declare-fun b!1514716 () Bool)

(assert (=> b!1514716 (= e!968801 (= (list!6357 (_2!8520 lt!526690)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 treated!70)))))))

(declare-fun b!1514717 () Bool)

(assert (=> b!1514717 (= e!968803 (= (list!6357 (_2!8520 lt!526690)) (list!6357 treated!70)))))

(assert (= (and d!448431 c!248179) b!1514714))

(assert (= (and d!448431 (not c!248179)) b!1514715))

(assert (= (and d!448431 c!248180) b!1514713))

(assert (= (and d!448431 (not c!248180)) b!1514717))

(assert (= (and b!1514713 res!681384) b!1514711))

(assert (= (and d!448431 res!681382) b!1514712))

(assert (= (and b!1514712 res!681383) b!1514716))

(declare-fun m!1779215 () Bool)

(assert (=> b!1514717 m!1779215))

(assert (=> b!1514717 m!1778771))

(declare-fun m!1779217 () Bool)

(assert (=> b!1514712 m!1779217))

(assert (=> b!1514712 m!1778771))

(assert (=> b!1514712 m!1778771))

(declare-fun m!1779219 () Bool)

(assert (=> b!1514712 m!1779219))

(declare-fun m!1779221 () Bool)

(assert (=> b!1514714 m!1779221))

(declare-fun m!1779223 () Bool)

(assert (=> b!1514714 m!1779223))

(declare-fun m!1779225 () Bool)

(assert (=> b!1514711 m!1779225))

(assert (=> b!1514716 m!1779215))

(assert (=> b!1514716 m!1778771))

(assert (=> b!1514716 m!1778771))

(assert (=> b!1514716 m!1779219))

(declare-fun m!1779227 () Bool)

(assert (=> b!1514713 m!1779227))

(declare-fun m!1779229 () Bool)

(assert (=> b!1514713 m!1779229))

(declare-fun m!1779231 () Bool)

(assert (=> d!448431 m!1779231))

(declare-fun m!1779233 () Bool)

(assert (=> d!448431 m!1779233))

(assert (=> b!1514469 d!448431))

(declare-fun b!1514728 () Bool)

(declare-fun b_free!39339 () Bool)

(declare-fun b_next!40043 () Bool)

(assert (=> b!1514728 (= b_free!39339 (not b_next!40043))))

(declare-fun tp!433700 () Bool)

(declare-fun b_and!105359 () Bool)

(assert (=> b!1514728 (= tp!433700 b_and!105359)))

(declare-fun b_free!39341 () Bool)

(declare-fun b_next!40045 () Bool)

(assert (=> b!1514728 (= b_free!39341 (not b_next!40045))))

(declare-fun tb!86211 () Bool)

(declare-fun t!139461 () Bool)

(assert (=> (and b!1514728 (= (toChars!4057 (transformation!2847 (h!21506 (t!139457 rules!1640)))) (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) t!139461) tb!86211))

(declare-fun result!103736 () Bool)

(assert (= result!103736 result!103730))

(assert (=> d!448361 t!139461))

(declare-fun tp!433699 () Bool)

(declare-fun b_and!105361 () Bool)

(assert (=> b!1514728 (= tp!433699 (and (=> t!139461 result!103736) b_and!105361))))

(declare-fun e!968815 () Bool)

(assert (=> b!1514728 (= e!968815 (and tp!433700 tp!433699))))

(declare-fun e!968816 () Bool)

(declare-fun b!1514727 () Bool)

(declare-fun tp!433698 () Bool)

(assert (=> b!1514727 (= e!968816 (and tp!433698 (inv!21332 (tag!3111 (h!21506 (t!139457 rules!1640)))) (inv!21342 (transformation!2847 (h!21506 (t!139457 rules!1640)))) e!968815))))

(declare-fun b!1514726 () Bool)

(declare-fun e!968813 () Bool)

(declare-fun tp!433701 () Bool)

(assert (=> b!1514726 (= e!968813 (and e!968816 tp!433701))))

(assert (=> b!1514462 (= tp!433677 e!968813)))

(assert (= b!1514727 b!1514728))

(assert (= b!1514726 b!1514727))

(assert (= (and b!1514462 ((_ is Cons!16105) (t!139457 rules!1640))) b!1514726))

(declare-fun m!1779235 () Bool)

(assert (=> b!1514727 m!1779235))

(declare-fun m!1779237 () Bool)

(assert (=> b!1514727 m!1779237))

(declare-fun b!1514739 () Bool)

(declare-fun e!968819 () Bool)

(declare-fun tp_is_empty!7017 () Bool)

(assert (=> b!1514739 (= e!968819 tp_is_empty!7017)))

(declare-fun b!1514740 () Bool)

(declare-fun tp!433715 () Bool)

(declare-fun tp!433713 () Bool)

(assert (=> b!1514740 (= e!968819 (and tp!433715 tp!433713))))

(assert (=> b!1514480 (= tp!433671 e!968819)))

(declare-fun b!1514741 () Bool)

(declare-fun tp!433714 () Bool)

(assert (=> b!1514741 (= e!968819 tp!433714)))

(declare-fun b!1514742 () Bool)

(declare-fun tp!433716 () Bool)

(declare-fun tp!433712 () Bool)

(assert (=> b!1514742 (= e!968819 (and tp!433716 tp!433712))))

(assert (= (and b!1514480 ((_ is ElementMatch!4163) (regex!2847 (h!21506 rules!1640)))) b!1514739))

(assert (= (and b!1514480 ((_ is Concat!7100) (regex!2847 (h!21506 rules!1640)))) b!1514740))

(assert (= (and b!1514480 ((_ is Star!4163) (regex!2847 (h!21506 rules!1640)))) b!1514741))

(assert (= (and b!1514480 ((_ is Union!4163) (regex!2847 (h!21506 rules!1640)))) b!1514742))

(declare-fun e!968825 () Bool)

(assert (=> b!1514481 (= tp!433674 e!968825)))

(declare-fun setIsEmpty!9188 () Bool)

(declare-fun setRes!9188 () Bool)

(assert (=> setIsEmpty!9188 setRes!9188))

(declare-fun tp!433723 () Bool)

(declare-fun e!968824 () Bool)

(declare-fun setNonEmpty!9188 () Bool)

(declare-fun setElem!9188 () Context!1362)

(declare-fun inv!21347 (Context!1362) Bool)

(assert (=> setNonEmpty!9188 (= setRes!9188 (and tp!433723 (inv!21347 setElem!9188) e!968824))))

(declare-fun setRest!9188 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9188 (= (_1!8523 (_1!8524 (h!21505 (zeroValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9188 true) setRest!9188))))

(declare-fun b!1514749 () Bool)

(declare-fun tp!433724 () Bool)

(assert (=> b!1514749 (= e!968825 (and setRes!9188 tp!433724))))

(declare-fun condSetEmpty!9188 () Bool)

(assert (=> b!1514749 (= condSetEmpty!9188 (= (_1!8523 (_1!8524 (h!21505 (zeroValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514750 () Bool)

(declare-fun tp!433725 () Bool)

(assert (=> b!1514750 (= e!968824 tp!433725)))

(assert (= (and b!1514749 condSetEmpty!9188) setIsEmpty!9188))

(assert (= (and b!1514749 (not condSetEmpty!9188)) setNonEmpty!9188))

(assert (= setNonEmpty!9188 b!1514750))

(assert (= (and b!1514481 ((_ is Cons!16104) (zeroValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64)))))))) b!1514749))

(declare-fun m!1779239 () Bool)

(assert (=> setNonEmpty!9188 m!1779239))

(declare-fun e!968827 () Bool)

(assert (=> b!1514481 (= tp!433686 e!968827)))

(declare-fun setIsEmpty!9189 () Bool)

(declare-fun setRes!9189 () Bool)

(assert (=> setIsEmpty!9189 setRes!9189))

(declare-fun e!968826 () Bool)

(declare-fun setNonEmpty!9189 () Bool)

(declare-fun tp!433726 () Bool)

(declare-fun setElem!9189 () Context!1362)

(assert (=> setNonEmpty!9189 (= setRes!9189 (and tp!433726 (inv!21347 setElem!9189) e!968826))))

(declare-fun setRest!9189 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9189 (= (_1!8523 (_1!8524 (h!21505 (minValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9189 true) setRest!9189))))

(declare-fun b!1514751 () Bool)

(declare-fun tp!433727 () Bool)

(assert (=> b!1514751 (= e!968827 (and setRes!9189 tp!433727))))

(declare-fun condSetEmpty!9189 () Bool)

(assert (=> b!1514751 (= condSetEmpty!9189 (= (_1!8523 (_1!8524 (h!21505 (minValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514752 () Bool)

(declare-fun tp!433728 () Bool)

(assert (=> b!1514752 (= e!968826 tp!433728)))

(assert (= (and b!1514751 condSetEmpty!9189) setIsEmpty!9189))

(assert (= (and b!1514751 (not condSetEmpty!9189)) setNonEmpty!9189))

(assert (= setNonEmpty!9189 b!1514752))

(assert (= (and b!1514481 ((_ is Cons!16104) (minValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64)))))))) b!1514751))

(declare-fun m!1779241 () Bool)

(assert (=> setNonEmpty!9189 m!1779241))

(declare-fun b!1514767 () Bool)

(declare-fun e!968843 () Bool)

(declare-fun tp!433754 () Bool)

(assert (=> b!1514767 (= e!968843 tp!433754)))

(declare-fun b!1514768 () Bool)

(declare-fun e!968845 () Bool)

(declare-fun tp!433750 () Bool)

(assert (=> b!1514768 (= e!968845 tp!433750)))

(declare-fun b!1514769 () Bool)

(declare-fun e!968844 () Bool)

(declare-fun tp!433748 () Bool)

(assert (=> b!1514769 (= e!968844 tp!433748)))

(declare-fun setNonEmpty!9194 () Bool)

(declare-fun tp!433753 () Bool)

(declare-fun setElem!9195 () Context!1362)

(declare-fun setRes!9194 () Bool)

(assert (=> setNonEmpty!9194 (= setRes!9194 (and tp!433753 (inv!21347 setElem!9195) e!968844))))

(declare-fun mapValue!7055 () List!16167)

(declare-fun setRest!9194 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9194 (= (_2!8519 (h!21500 mapValue!7055)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9195 true) setRest!9194))))

(declare-fun mapIsEmpty!7055 () Bool)

(declare-fun mapRes!7055 () Bool)

(assert (=> mapIsEmpty!7055 mapRes!7055))

(declare-fun tp!433747 () Bool)

(declare-fun setRes!9195 () Bool)

(declare-fun setElem!9194 () Context!1362)

(declare-fun setNonEmpty!9195 () Bool)

(assert (=> setNonEmpty!9195 (= setRes!9195 (and tp!433747 (inv!21347 setElem!9194) e!968843))))

(declare-fun mapDefault!7055 () List!16167)

(declare-fun setRest!9195 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9195 (= (_2!8519 (h!21500 mapDefault!7055)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9194 true) setRest!9195))))

(declare-fun mapNonEmpty!7055 () Bool)

(declare-fun tp!433752 () Bool)

(declare-fun e!968841 () Bool)

(assert (=> mapNonEmpty!7055 (= mapRes!7055 (and tp!433752 e!968841))))

(declare-fun mapRest!7055 () (Array (_ BitVec 32) List!16167))

(declare-fun mapKey!7055 () (_ BitVec 32))

(assert (=> mapNonEmpty!7055 (= mapRest!7052 (store mapRest!7055 mapKey!7055 mapValue!7055))))

(declare-fun b!1514770 () Bool)

(declare-fun e!968842 () Bool)

(declare-fun tp!433749 () Bool)

(declare-fun e!968840 () Bool)

(assert (=> b!1514770 (= e!968840 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 mapDefault!7055)))) e!968842 tp_is_empty!7017 setRes!9195 tp!433749))))

(declare-fun condSetEmpty!9194 () Bool)

(assert (=> b!1514770 (= condSetEmpty!9194 (= (_2!8519 (h!21500 mapDefault!7055)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun condMapEmpty!7055 () Bool)

(assert (=> mapNonEmpty!7050 (= condMapEmpty!7055 (= mapRest!7052 ((as const (Array (_ BitVec 32) List!16167)) mapDefault!7055)))))

(assert (=> mapNonEmpty!7050 (= tp!433670 (and e!968840 mapRes!7055))))

(declare-fun setIsEmpty!9194 () Bool)

(assert (=> setIsEmpty!9194 setRes!9194))

(declare-fun b!1514771 () Bool)

(declare-fun tp!433751 () Bool)

(assert (=> b!1514771 (= e!968842 tp!433751)))

(declare-fun b!1514772 () Bool)

(declare-fun tp!433755 () Bool)

(assert (=> b!1514772 (= e!968841 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 mapValue!7055)))) e!968845 tp_is_empty!7017 setRes!9194 tp!433755))))

(declare-fun condSetEmpty!9195 () Bool)

(assert (=> b!1514772 (= condSetEmpty!9195 (= (_2!8519 (h!21500 mapValue!7055)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setIsEmpty!9195 () Bool)

(assert (=> setIsEmpty!9195 setRes!9195))

(assert (= (and mapNonEmpty!7050 condMapEmpty!7055) mapIsEmpty!7055))

(assert (= (and mapNonEmpty!7050 (not condMapEmpty!7055)) mapNonEmpty!7055))

(assert (= b!1514772 b!1514768))

(assert (= (and b!1514772 condSetEmpty!9195) setIsEmpty!9194))

(assert (= (and b!1514772 (not condSetEmpty!9195)) setNonEmpty!9194))

(assert (= setNonEmpty!9194 b!1514769))

(assert (= (and mapNonEmpty!7055 ((_ is Cons!16099) mapValue!7055)) b!1514772))

(assert (= b!1514770 b!1514771))

(assert (= (and b!1514770 condSetEmpty!9194) setIsEmpty!9195))

(assert (= (and b!1514770 (not condSetEmpty!9194)) setNonEmpty!9195))

(assert (= setNonEmpty!9195 b!1514767))

(assert (= (and mapNonEmpty!7050 ((_ is Cons!16099) mapDefault!7055)) b!1514770))

(declare-fun m!1779243 () Bool)

(assert (=> setNonEmpty!9194 m!1779243))

(declare-fun m!1779245 () Bool)

(assert (=> mapNonEmpty!7055 m!1779245))

(declare-fun m!1779247 () Bool)

(assert (=> b!1514772 m!1779247))

(declare-fun m!1779249 () Bool)

(assert (=> setNonEmpty!9195 m!1779249))

(declare-fun m!1779251 () Bool)

(assert (=> b!1514770 m!1779251))

(declare-fun setIsEmpty!9198 () Bool)

(declare-fun setRes!9198 () Bool)

(assert (=> setIsEmpty!9198 setRes!9198))

(declare-fun e!968854 () Bool)

(assert (=> mapNonEmpty!7050 (= tp!433681 e!968854)))

(declare-fun setElem!9198 () Context!1362)

(declare-fun setNonEmpty!9198 () Bool)

(declare-fun e!968853 () Bool)

(declare-fun tp!433765 () Bool)

(assert (=> setNonEmpty!9198 (= setRes!9198 (and tp!433765 (inv!21347 setElem!9198) e!968853))))

(declare-fun setRest!9198 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9198 (= (_2!8519 (h!21500 mapValue!7052)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9198 true) setRest!9198))))

(declare-fun tp!433767 () Bool)

(declare-fun e!968852 () Bool)

(declare-fun b!1514781 () Bool)

(assert (=> b!1514781 (= e!968854 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 mapValue!7052)))) e!968852 tp_is_empty!7017 setRes!9198 tp!433767))))

(declare-fun condSetEmpty!9198 () Bool)

(assert (=> b!1514781 (= condSetEmpty!9198 (= (_2!8519 (h!21500 mapValue!7052)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514782 () Bool)

(declare-fun tp!433764 () Bool)

(assert (=> b!1514782 (= e!968852 tp!433764)))

(declare-fun b!1514783 () Bool)

(declare-fun tp!433766 () Bool)

(assert (=> b!1514783 (= e!968853 tp!433766)))

(assert (= b!1514781 b!1514782))

(assert (= (and b!1514781 condSetEmpty!9198) setIsEmpty!9198))

(assert (= (and b!1514781 (not condSetEmpty!9198)) setNonEmpty!9198))

(assert (= setNonEmpty!9198 b!1514783))

(assert (= (and mapNonEmpty!7050 ((_ is Cons!16099) mapValue!7052)) b!1514781))

(declare-fun m!1779253 () Bool)

(assert (=> setNonEmpty!9198 m!1779253))

(declare-fun m!1779255 () Bool)

(assert (=> b!1514781 m!1779255))

(declare-fun b!1514792 () Bool)

(declare-fun e!968863 () Bool)

(declare-fun tp!433779 () Bool)

(assert (=> b!1514792 (= e!968863 tp!433779)))

(declare-fun setIsEmpty!9201 () Bool)

(declare-fun setRes!9201 () Bool)

(assert (=> setIsEmpty!9201 setRes!9201))

(declare-fun e!968862 () Bool)

(assert (=> b!1514483 (= tp!433664 e!968862)))

(declare-fun setNonEmpty!9201 () Bool)

(declare-fun setElem!9201 () Context!1362)

(declare-fun tp!433782 () Bool)

(assert (=> setNonEmpty!9201 (= setRes!9201 (and tp!433782 (inv!21347 setElem!9201) e!968863))))

(declare-fun setRest!9201 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9201 (= (_2!8522 (h!21504 mapDefault!7052)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9201 true) setRest!9201))))

(declare-fun b!1514793 () Bool)

(declare-fun tp!433778 () Bool)

(declare-fun tp!433781 () Bool)

(declare-fun e!968861 () Bool)

(assert (=> b!1514793 (= e!968862 (and tp!433778 (inv!21347 (_2!8521 (_1!8522 (h!21504 mapDefault!7052)))) e!968861 tp_is_empty!7017 setRes!9201 tp!433781))))

(declare-fun condSetEmpty!9201 () Bool)

(assert (=> b!1514793 (= condSetEmpty!9201 (= (_2!8522 (h!21504 mapDefault!7052)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514794 () Bool)

(declare-fun tp!433780 () Bool)

(assert (=> b!1514794 (= e!968861 tp!433780)))

(assert (= b!1514793 b!1514794))

(assert (= (and b!1514793 condSetEmpty!9201) setIsEmpty!9201))

(assert (= (and b!1514793 (not condSetEmpty!9201)) setNonEmpty!9201))

(assert (= setNonEmpty!9201 b!1514792))

(assert (= (and b!1514483 ((_ is Cons!16103) mapDefault!7052)) b!1514793))

(declare-fun m!1779257 () Bool)

(assert (=> setNonEmpty!9201 m!1779257))

(declare-fun m!1779259 () Bool)

(assert (=> b!1514793 m!1779259))

(declare-fun e!968868 () Bool)

(declare-fun tp!433789 () Bool)

(declare-fun b!1514803 () Bool)

(declare-fun tp!433791 () Bool)

(assert (=> b!1514803 (= e!968868 (and (inv!21340 (left!13374 (c!248131 input!1102))) tp!433791 (inv!21340 (right!13704 (c!248131 input!1102))) tp!433789))))

(declare-fun b!1514805 () Bool)

(declare-fun e!968869 () Bool)

(declare-fun tp!433790 () Bool)

(assert (=> b!1514805 (= e!968869 tp!433790)))

(declare-fun b!1514804 () Bool)

(declare-fun inv!21348 (IArray!10897) Bool)

(assert (=> b!1514804 (= e!968868 (and (inv!21348 (xs!8229 (c!248131 input!1102))) e!968869))))

(assert (=> b!1514446 (= tp!433683 (and (inv!21340 (c!248131 input!1102)) e!968868))))

(assert (= (and b!1514446 ((_ is Node!5446) (c!248131 input!1102))) b!1514803))

(assert (= b!1514804 b!1514805))

(assert (= (and b!1514446 ((_ is Leaf!8073) (c!248131 input!1102))) b!1514804))

(declare-fun m!1779261 () Bool)

(assert (=> b!1514803 m!1779261))

(declare-fun m!1779263 () Bool)

(assert (=> b!1514803 m!1779263))

(declare-fun m!1779265 () Bool)

(assert (=> b!1514804 m!1779265))

(assert (=> b!1514446 m!1778837))

(declare-fun b!1514820 () Bool)

(declare-fun e!968882 () Bool)

(declare-fun tp!433819 () Bool)

(assert (=> b!1514820 (= e!968882 tp!433819)))

(declare-fun mapNonEmpty!7058 () Bool)

(declare-fun mapRes!7058 () Bool)

(declare-fun tp!433820 () Bool)

(declare-fun e!968887 () Bool)

(assert (=> mapNonEmpty!7058 (= mapRes!7058 (and tp!433820 e!968887))))

(declare-fun mapValue!7058 () List!16171)

(declare-fun mapRest!7058 () (Array (_ BitVec 32) List!16171))

(declare-fun mapKey!7058 () (_ BitVec 32))

(assert (=> mapNonEmpty!7058 (= mapRest!7050 (store mapRest!7058 mapKey!7058 mapValue!7058))))

(declare-fun mapIsEmpty!7058 () Bool)

(assert (=> mapIsEmpty!7058 mapRes!7058))

(declare-fun setElem!9206 () Context!1362)

(declare-fun setRes!9206 () Bool)

(declare-fun tp!433823 () Bool)

(declare-fun setNonEmpty!9206 () Bool)

(declare-fun e!968883 () Bool)

(assert (=> setNonEmpty!9206 (= setRes!9206 (and tp!433823 (inv!21347 setElem!9206) e!968883))))

(declare-fun setRest!9207 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9206 (= (_2!8522 (h!21504 mapValue!7058)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9206 true) setRest!9207))))

(declare-fun setIsEmpty!9206 () Bool)

(declare-fun setRes!9207 () Bool)

(assert (=> setIsEmpty!9206 setRes!9207))

(declare-fun b!1514822 () Bool)

(declare-fun tp!433816 () Bool)

(assert (=> b!1514822 (= e!968883 tp!433816)))

(declare-fun tp!433815 () Bool)

(declare-fun e!968884 () Bool)

(declare-fun b!1514823 () Bool)

(declare-fun tp!433817 () Bool)

(declare-fun mapDefault!7058 () List!16171)

(declare-fun e!968885 () Bool)

(assert (=> b!1514823 (= e!968885 (and tp!433817 (inv!21347 (_2!8521 (_1!8522 (h!21504 mapDefault!7058)))) e!968884 tp_is_empty!7017 setRes!9207 tp!433815))))

(declare-fun condSetEmpty!9206 () Bool)

(assert (=> b!1514823 (= condSetEmpty!9206 (= (_2!8522 (h!21504 mapDefault!7058)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setElem!9207 () Context!1362)

(declare-fun setNonEmpty!9207 () Bool)

(declare-fun tp!433818 () Bool)

(assert (=> setNonEmpty!9207 (= setRes!9207 (and tp!433818 (inv!21347 setElem!9207) e!968882))))

(declare-fun setRest!9206 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9207 (= (_2!8522 (h!21504 mapDefault!7058)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9207 true) setRest!9206))))

(declare-fun b!1514824 () Bool)

(declare-fun tp!433822 () Bool)

(assert (=> b!1514824 (= e!968884 tp!433822)))

(declare-fun setIsEmpty!9207 () Bool)

(assert (=> setIsEmpty!9207 setRes!9206))

(declare-fun e!968886 () Bool)

(declare-fun tp!433814 () Bool)

(declare-fun tp!433824 () Bool)

(declare-fun b!1514825 () Bool)

(assert (=> b!1514825 (= e!968887 (and tp!433824 (inv!21347 (_2!8521 (_1!8522 (h!21504 mapValue!7058)))) e!968886 tp_is_empty!7017 setRes!9206 tp!433814))))

(declare-fun condSetEmpty!9207 () Bool)

(assert (=> b!1514825 (= condSetEmpty!9207 (= (_2!8522 (h!21504 mapValue!7058)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun condMapEmpty!7058 () Bool)

(assert (=> mapNonEmpty!7052 (= condMapEmpty!7058 (= mapRest!7050 ((as const (Array (_ BitVec 32) List!16171)) mapDefault!7058)))))

(assert (=> mapNonEmpty!7052 (= tp!433665 (and e!968885 mapRes!7058))))

(declare-fun b!1514821 () Bool)

(declare-fun tp!433821 () Bool)

(assert (=> b!1514821 (= e!968886 tp!433821)))

(assert (= (and mapNonEmpty!7052 condMapEmpty!7058) mapIsEmpty!7058))

(assert (= (and mapNonEmpty!7052 (not condMapEmpty!7058)) mapNonEmpty!7058))

(assert (= b!1514825 b!1514821))

(assert (= (and b!1514825 condSetEmpty!9207) setIsEmpty!9207))

(assert (= (and b!1514825 (not condSetEmpty!9207)) setNonEmpty!9206))

(assert (= setNonEmpty!9206 b!1514822))

(assert (= (and mapNonEmpty!7058 ((_ is Cons!16103) mapValue!7058)) b!1514825))

(assert (= b!1514823 b!1514824))

(assert (= (and b!1514823 condSetEmpty!9206) setIsEmpty!9206))

(assert (= (and b!1514823 (not condSetEmpty!9206)) setNonEmpty!9207))

(assert (= setNonEmpty!9207 b!1514820))

(assert (= (and mapNonEmpty!7052 ((_ is Cons!16103) mapDefault!7058)) b!1514823))

(declare-fun m!1779267 () Bool)

(assert (=> b!1514823 m!1779267))

(declare-fun m!1779269 () Bool)

(assert (=> setNonEmpty!9207 m!1779269))

(declare-fun m!1779271 () Bool)

(assert (=> mapNonEmpty!7058 m!1779271))

(declare-fun m!1779273 () Bool)

(assert (=> b!1514825 m!1779273))

(declare-fun m!1779275 () Bool)

(assert (=> setNonEmpty!9206 m!1779275))

(declare-fun b!1514826 () Bool)

(declare-fun e!968890 () Bool)

(declare-fun tp!433826 () Bool)

(assert (=> b!1514826 (= e!968890 tp!433826)))

(declare-fun setIsEmpty!9208 () Bool)

(declare-fun setRes!9208 () Bool)

(assert (=> setIsEmpty!9208 setRes!9208))

(declare-fun e!968889 () Bool)

(assert (=> mapNonEmpty!7052 (= tp!433668 e!968889)))

(declare-fun setElem!9208 () Context!1362)

(declare-fun setNonEmpty!9208 () Bool)

(declare-fun tp!433829 () Bool)

(assert (=> setNonEmpty!9208 (= setRes!9208 (and tp!433829 (inv!21347 setElem!9208) e!968890))))

(declare-fun setRest!9208 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9208 (= (_2!8522 (h!21504 mapValue!7050)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9208 true) setRest!9208))))

(declare-fun b!1514827 () Bool)

(declare-fun tp!433828 () Bool)

(declare-fun e!968888 () Bool)

(declare-fun tp!433825 () Bool)

(assert (=> b!1514827 (= e!968889 (and tp!433825 (inv!21347 (_2!8521 (_1!8522 (h!21504 mapValue!7050)))) e!968888 tp_is_empty!7017 setRes!9208 tp!433828))))

(declare-fun condSetEmpty!9208 () Bool)

(assert (=> b!1514827 (= condSetEmpty!9208 (= (_2!8522 (h!21504 mapValue!7050)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514828 () Bool)

(declare-fun tp!433827 () Bool)

(assert (=> b!1514828 (= e!968888 tp!433827)))

(assert (= b!1514827 b!1514828))

(assert (= (and b!1514827 condSetEmpty!9208) setIsEmpty!9208))

(assert (= (and b!1514827 (not condSetEmpty!9208)) setNonEmpty!9208))

(assert (= setNonEmpty!9208 b!1514826))

(assert (= (and mapNonEmpty!7052 ((_ is Cons!16103) mapValue!7050)) b!1514827))

(declare-fun m!1779277 () Bool)

(assert (=> setNonEmpty!9208 m!1779277))

(declare-fun m!1779279 () Bool)

(assert (=> b!1514827 m!1779279))

(declare-fun setIsEmpty!9213 () Bool)

(declare-fun setRes!9214 () Bool)

(assert (=> setIsEmpty!9213 setRes!9214))

(declare-fun b!1514839 () Bool)

(declare-fun e!968899 () Bool)

(declare-fun tp!433847 () Bool)

(assert (=> b!1514839 (= e!968899 (and setRes!9214 tp!433847))))

(declare-fun condSetEmpty!9213 () Bool)

(declare-fun mapValue!7061 () List!16172)

(assert (=> b!1514839 (= condSetEmpty!9213 (= (_1!8523 (_1!8524 (h!21505 mapValue!7061))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514840 () Bool)

(declare-fun e!968902 () Bool)

(declare-fun tp!433850 () Bool)

(assert (=> b!1514840 (= e!968902 tp!433850)))

(declare-fun setElem!9213 () Context!1362)

(declare-fun tp!433845 () Bool)

(declare-fun setNonEmpty!9213 () Bool)

(declare-fun setRes!9213 () Bool)

(assert (=> setNonEmpty!9213 (= setRes!9213 (and tp!433845 (inv!21347 setElem!9213) e!968902))))

(declare-fun mapDefault!7061 () List!16172)

(declare-fun setRest!9214 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9213 (= (_1!8523 (_1!8524 (h!21505 mapDefault!7061))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9213 true) setRest!9214))))

(declare-fun b!1514841 () Bool)

(declare-fun e!968900 () Bool)

(declare-fun tp!433846 () Bool)

(assert (=> b!1514841 (= e!968900 (and setRes!9213 tp!433846))))

(declare-fun condSetEmpty!9214 () Bool)

(assert (=> b!1514841 (= condSetEmpty!9214 (= (_1!8523 (_1!8524 (h!21505 mapDefault!7061))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun condMapEmpty!7061 () Bool)

(assert (=> mapNonEmpty!7051 (= condMapEmpty!7061 (= mapRest!7051 ((as const (Array (_ BitVec 32) List!16172)) mapDefault!7061)))))

(declare-fun mapRes!7061 () Bool)

(assert (=> mapNonEmpty!7051 (= tp!433657 (and e!968900 mapRes!7061))))

(declare-fun setElem!9214 () Context!1362)

(declare-fun setNonEmpty!9214 () Bool)

(declare-fun e!968901 () Bool)

(declare-fun tp!433849 () Bool)

(assert (=> setNonEmpty!9214 (= setRes!9214 (and tp!433849 (inv!21347 setElem!9214) e!968901))))

(declare-fun setRest!9213 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9214 (= (_1!8523 (_1!8524 (h!21505 mapValue!7061))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9214 true) setRest!9213))))

(declare-fun b!1514842 () Bool)

(declare-fun tp!433844 () Bool)

(assert (=> b!1514842 (= e!968901 tp!433844)))

(declare-fun mapIsEmpty!7061 () Bool)

(assert (=> mapIsEmpty!7061 mapRes!7061))

(declare-fun mapNonEmpty!7061 () Bool)

(declare-fun tp!433848 () Bool)

(assert (=> mapNonEmpty!7061 (= mapRes!7061 (and tp!433848 e!968899))))

(declare-fun mapKey!7061 () (_ BitVec 32))

(declare-fun mapRest!7061 () (Array (_ BitVec 32) List!16172))

(assert (=> mapNonEmpty!7061 (= mapRest!7051 (store mapRest!7061 mapKey!7061 mapValue!7061))))

(declare-fun setIsEmpty!9214 () Bool)

(assert (=> setIsEmpty!9214 setRes!9213))

(assert (= (and mapNonEmpty!7051 condMapEmpty!7061) mapIsEmpty!7061))

(assert (= (and mapNonEmpty!7051 (not condMapEmpty!7061)) mapNonEmpty!7061))

(assert (= (and b!1514839 condSetEmpty!9213) setIsEmpty!9213))

(assert (= (and b!1514839 (not condSetEmpty!9213)) setNonEmpty!9214))

(assert (= setNonEmpty!9214 b!1514842))

(assert (= (and mapNonEmpty!7061 ((_ is Cons!16104) mapValue!7061)) b!1514839))

(assert (= (and b!1514841 condSetEmpty!9214) setIsEmpty!9214))

(assert (= (and b!1514841 (not condSetEmpty!9214)) setNonEmpty!9213))

(assert (= setNonEmpty!9213 b!1514840))

(assert (= (and mapNonEmpty!7051 ((_ is Cons!16104) mapDefault!7061)) b!1514841))

(declare-fun m!1779281 () Bool)

(assert (=> setNonEmpty!9213 m!1779281))

(declare-fun m!1779283 () Bool)

(assert (=> setNonEmpty!9214 m!1779283))

(declare-fun m!1779285 () Bool)

(assert (=> mapNonEmpty!7061 m!1779285))

(declare-fun e!968904 () Bool)

(assert (=> mapNonEmpty!7051 (= tp!433680 e!968904)))

(declare-fun setIsEmpty!9215 () Bool)

(declare-fun setRes!9215 () Bool)

(assert (=> setIsEmpty!9215 setRes!9215))

(declare-fun setElem!9215 () Context!1362)

(declare-fun tp!433851 () Bool)

(declare-fun setNonEmpty!9215 () Bool)

(declare-fun e!968903 () Bool)

(assert (=> setNonEmpty!9215 (= setRes!9215 (and tp!433851 (inv!21347 setElem!9215) e!968903))))

(declare-fun setRest!9215 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9215 (= (_1!8523 (_1!8524 (h!21505 mapValue!7051))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9215 true) setRest!9215))))

(declare-fun b!1514843 () Bool)

(declare-fun tp!433852 () Bool)

(assert (=> b!1514843 (= e!968904 (and setRes!9215 tp!433852))))

(declare-fun condSetEmpty!9215 () Bool)

(assert (=> b!1514843 (= condSetEmpty!9215 (= (_1!8523 (_1!8524 (h!21505 mapValue!7051))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514844 () Bool)

(declare-fun tp!433853 () Bool)

(assert (=> b!1514844 (= e!968903 tp!433853)))

(assert (= (and b!1514843 condSetEmpty!9215) setIsEmpty!9215))

(assert (= (and b!1514843 (not condSetEmpty!9215)) setNonEmpty!9215))

(assert (= setNonEmpty!9215 b!1514844))

(assert (= (and mapNonEmpty!7051 ((_ is Cons!16104) mapValue!7051)) b!1514843))

(declare-fun m!1779287 () Bool)

(assert (=> setNonEmpty!9215 m!1779287))

(declare-fun e!968905 () Bool)

(declare-fun b!1514845 () Bool)

(declare-fun tp!433856 () Bool)

(declare-fun tp!433854 () Bool)

(assert (=> b!1514845 (= e!968905 (and (inv!21340 (left!13374 (c!248131 treated!70))) tp!433856 (inv!21340 (right!13704 (c!248131 treated!70))) tp!433854))))

(declare-fun b!1514847 () Bool)

(declare-fun e!968906 () Bool)

(declare-fun tp!433855 () Bool)

(assert (=> b!1514847 (= e!968906 tp!433855)))

(declare-fun b!1514846 () Bool)

(assert (=> b!1514846 (= e!968905 (and (inv!21348 (xs!8229 (c!248131 treated!70))) e!968906))))

(assert (=> b!1514448 (= tp!433673 (and (inv!21340 (c!248131 treated!70)) e!968905))))

(assert (= (and b!1514448 ((_ is Node!5446) (c!248131 treated!70))) b!1514845))

(assert (= b!1514846 b!1514847))

(assert (= (and b!1514448 ((_ is Leaf!8073) (c!248131 treated!70))) b!1514846))

(declare-fun m!1779289 () Bool)

(assert (=> b!1514845 m!1779289))

(declare-fun m!1779291 () Bool)

(assert (=> b!1514845 m!1779291))

(declare-fun m!1779293 () Bool)

(assert (=> b!1514846 m!1779293))

(assert (=> b!1514448 m!1778821))

(declare-fun setIsEmpty!9216 () Bool)

(declare-fun setRes!9216 () Bool)

(assert (=> setIsEmpty!9216 setRes!9216))

(declare-fun e!968909 () Bool)

(assert (=> b!1514458 (= tp!433669 e!968909)))

(declare-fun setNonEmpty!9216 () Bool)

(declare-fun e!968908 () Bool)

(declare-fun tp!433858 () Bool)

(declare-fun setElem!9216 () Context!1362)

(assert (=> setNonEmpty!9216 (= setRes!9216 (and tp!433858 (inv!21347 setElem!9216) e!968908))))

(declare-fun setRest!9216 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9216 (= (_2!8519 (h!21500 mapDefault!7051)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9216 true) setRest!9216))))

(declare-fun b!1514848 () Bool)

(declare-fun tp!433860 () Bool)

(declare-fun e!968907 () Bool)

(assert (=> b!1514848 (= e!968909 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 mapDefault!7051)))) e!968907 tp_is_empty!7017 setRes!9216 tp!433860))))

(declare-fun condSetEmpty!9216 () Bool)

(assert (=> b!1514848 (= condSetEmpty!9216 (= (_2!8519 (h!21500 mapDefault!7051)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514849 () Bool)

(declare-fun tp!433857 () Bool)

(assert (=> b!1514849 (= e!968907 tp!433857)))

(declare-fun b!1514850 () Bool)

(declare-fun tp!433859 () Bool)

(assert (=> b!1514850 (= e!968908 tp!433859)))

(assert (= b!1514848 b!1514849))

(assert (= (and b!1514848 condSetEmpty!9216) setIsEmpty!9216))

(assert (= (and b!1514848 (not condSetEmpty!9216)) setNonEmpty!9216))

(assert (= setNonEmpty!9216 b!1514850))

(assert (= (and b!1514458 ((_ is Cons!16099) mapDefault!7051)) b!1514848))

(declare-fun m!1779295 () Bool)

(assert (=> setNonEmpty!9216 m!1779295))

(declare-fun m!1779297 () Bool)

(assert (=> b!1514848 m!1779297))

(declare-fun e!968911 () Bool)

(assert (=> b!1514486 (= tp!433685 e!968911)))

(declare-fun setIsEmpty!9217 () Bool)

(declare-fun setRes!9217 () Bool)

(assert (=> setIsEmpty!9217 setRes!9217))

(declare-fun tp!433861 () Bool)

(declare-fun setElem!9217 () Context!1362)

(declare-fun setNonEmpty!9217 () Bool)

(declare-fun e!968910 () Bool)

(assert (=> setNonEmpty!9217 (= setRes!9217 (and tp!433861 (inv!21347 setElem!9217) e!968910))))

(declare-fun setRest!9217 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9217 (= (_1!8523 (_1!8524 (h!21505 mapDefault!7050))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9217 true) setRest!9217))))

(declare-fun b!1514851 () Bool)

(declare-fun tp!433862 () Bool)

(assert (=> b!1514851 (= e!968911 (and setRes!9217 tp!433862))))

(declare-fun condSetEmpty!9217 () Bool)

(assert (=> b!1514851 (= condSetEmpty!9217 (= (_1!8523 (_1!8524 (h!21505 mapDefault!7050))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514852 () Bool)

(declare-fun tp!433863 () Bool)

(assert (=> b!1514852 (= e!968910 tp!433863)))

(assert (= (and b!1514851 condSetEmpty!9217) setIsEmpty!9217))

(assert (= (and b!1514851 (not condSetEmpty!9217)) setNonEmpty!9217))

(assert (= setNonEmpty!9217 b!1514852))

(assert (= (and b!1514486 ((_ is Cons!16104) mapDefault!7050)) b!1514851))

(declare-fun m!1779299 () Bool)

(assert (=> setNonEmpty!9217 m!1779299))

(declare-fun setIsEmpty!9218 () Bool)

(declare-fun setRes!9218 () Bool)

(assert (=> setIsEmpty!9218 setRes!9218))

(declare-fun e!968914 () Bool)

(assert (=> b!1514449 (= tp!433672 e!968914)))

(declare-fun e!968913 () Bool)

(declare-fun setNonEmpty!9218 () Bool)

(declare-fun tp!433865 () Bool)

(declare-fun setElem!9218 () Context!1362)

(assert (=> setNonEmpty!9218 (= setRes!9218 (and tp!433865 (inv!21347 setElem!9218) e!968913))))

(declare-fun setRest!9218 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9218 (= (_2!8519 (h!21500 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9218 true) setRest!9218))))

(declare-fun e!968912 () Bool)

(declare-fun tp!433867 () Bool)

(declare-fun b!1514853 () Bool)

(assert (=> b!1514853 (= e!968914 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))))) e!968912 tp_is_empty!7017 setRes!9218 tp!433867))))

(declare-fun condSetEmpty!9218 () Bool)

(assert (=> b!1514853 (= condSetEmpty!9218 (= (_2!8519 (h!21500 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514854 () Bool)

(declare-fun tp!433864 () Bool)

(assert (=> b!1514854 (= e!968912 tp!433864)))

(declare-fun b!1514855 () Bool)

(declare-fun tp!433866 () Bool)

(assert (=> b!1514855 (= e!968913 tp!433866)))

(assert (= b!1514853 b!1514854))

(assert (= (and b!1514853 condSetEmpty!9218) setIsEmpty!9218))

(assert (= (and b!1514853 (not condSetEmpty!9218)) setNonEmpty!9218))

(assert (= setNonEmpty!9218 b!1514855))

(assert (= (and b!1514449 ((_ is Cons!16099) (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))) b!1514853))

(declare-fun m!1779301 () Bool)

(assert (=> setNonEmpty!9218 m!1779301))

(declare-fun m!1779303 () Bool)

(assert (=> b!1514853 m!1779303))

(declare-fun setIsEmpty!9219 () Bool)

(declare-fun setRes!9219 () Bool)

(assert (=> setIsEmpty!9219 setRes!9219))

(declare-fun e!968917 () Bool)

(assert (=> b!1514449 (= tp!433660 e!968917)))

(declare-fun setNonEmpty!9219 () Bool)

(declare-fun setElem!9219 () Context!1362)

(declare-fun e!968916 () Bool)

(declare-fun tp!433869 () Bool)

(assert (=> setNonEmpty!9219 (= setRes!9219 (and tp!433869 (inv!21347 setElem!9219) e!968916))))

(declare-fun setRest!9219 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9219 (= (_2!8519 (h!21500 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9219 true) setRest!9219))))

(declare-fun e!968915 () Bool)

(declare-fun b!1514856 () Bool)

(declare-fun tp!433871 () Bool)

(assert (=> b!1514856 (= e!968917 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))))) e!968915 tp_is_empty!7017 setRes!9219 tp!433871))))

(declare-fun condSetEmpty!9219 () Bool)

(assert (=> b!1514856 (= condSetEmpty!9219 (= (_2!8519 (h!21500 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514857 () Bool)

(declare-fun tp!433868 () Bool)

(assert (=> b!1514857 (= e!968915 tp!433868)))

(declare-fun b!1514858 () Bool)

(declare-fun tp!433870 () Bool)

(assert (=> b!1514858 (= e!968916 tp!433870)))

(assert (= b!1514856 b!1514857))

(assert (= (and b!1514856 condSetEmpty!9219) setIsEmpty!9219))

(assert (= (and b!1514856 (not condSetEmpty!9219)) setNonEmpty!9219))

(assert (= setNonEmpty!9219 b!1514858))

(assert (= (and b!1514449 ((_ is Cons!16099) (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))) b!1514856))

(declare-fun m!1779305 () Bool)

(assert (=> setNonEmpty!9219 m!1779305))

(declare-fun m!1779307 () Bool)

(assert (=> b!1514856 m!1779307))

(declare-fun tp!433874 () Bool)

(declare-fun b!1514859 () Bool)

(declare-fun tp!433872 () Bool)

(declare-fun e!968918 () Bool)

(assert (=> b!1514859 (= e!968918 (and (inv!21340 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) tp!433874 (inv!21340 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) tp!433872))))

(declare-fun b!1514861 () Bool)

(declare-fun e!968919 () Bool)

(declare-fun tp!433873 () Bool)

(assert (=> b!1514861 (= e!968919 tp!433873)))

(declare-fun b!1514860 () Bool)

(assert (=> b!1514860 (= e!968918 (and (inv!21348 (xs!8229 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) e!968919))))

(assert (=> b!1514477 (= tp!433658 (and (inv!21340 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) e!968918))))

(assert (= (and b!1514477 ((_ is Node!5446) (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) b!1514859))

(assert (= b!1514860 b!1514861))

(assert (= (and b!1514477 ((_ is Leaf!8073) (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) b!1514860))

(declare-fun m!1779309 () Bool)

(assert (=> b!1514859 m!1779309))

(declare-fun m!1779311 () Bool)

(assert (=> b!1514859 m!1779311))

(declare-fun m!1779313 () Bool)

(assert (=> b!1514860 m!1779313))

(assert (=> b!1514477 m!1778759))

(declare-fun tp!433883 () Bool)

(declare-fun e!968924 () Bool)

(declare-fun b!1514870 () Bool)

(declare-fun tp!433882 () Bool)

(assert (=> b!1514870 (= e!968924 (and (inv!21341 (left!13375 (c!248132 acc!392))) tp!433882 (inv!21341 (right!13705 (c!248132 acc!392))) tp!433883))))

(declare-fun b!1514872 () Bool)

(declare-fun e!968925 () Bool)

(declare-fun tp!433881 () Bool)

(assert (=> b!1514872 (= e!968925 tp!433881)))

(declare-fun b!1514871 () Bool)

(declare-fun inv!21349 (IArray!10899) Bool)

(assert (=> b!1514871 (= e!968924 (and (inv!21349 (xs!8230 (c!248132 acc!392))) e!968925))))

(assert (=> b!1514450 (= tp!433661 (and (inv!21341 (c!248132 acc!392)) e!968924))))

(assert (= (and b!1514450 ((_ is Node!5447) (c!248132 acc!392))) b!1514870))

(assert (= b!1514871 b!1514872))

(assert (= (and b!1514450 ((_ is Leaf!8074) (c!248132 acc!392))) b!1514871))

(declare-fun m!1779315 () Bool)

(assert (=> b!1514870 m!1779315))

(declare-fun m!1779317 () Bool)

(assert (=> b!1514870 m!1779317))

(declare-fun m!1779319 () Bool)

(assert (=> b!1514871 m!1779319))

(assert (=> b!1514450 m!1778755))

(declare-fun tp!433884 () Bool)

(declare-fun e!968926 () Bool)

(declare-fun b!1514873 () Bool)

(declare-fun tp!433886 () Bool)

(assert (=> b!1514873 (= e!968926 (and (inv!21340 (left!13374 (c!248131 totalInput!458))) tp!433886 (inv!21340 (right!13704 (c!248131 totalInput!458))) tp!433884))))

(declare-fun b!1514875 () Bool)

(declare-fun e!968927 () Bool)

(declare-fun tp!433885 () Bool)

(assert (=> b!1514875 (= e!968927 tp!433885)))

(declare-fun b!1514874 () Bool)

(assert (=> b!1514874 (= e!968926 (and (inv!21348 (xs!8229 (c!248131 totalInput!458))) e!968927))))

(assert (=> b!1514487 (= tp!433684 (and (inv!21340 (c!248131 totalInput!458)) e!968926))))

(assert (= (and b!1514487 ((_ is Node!5446) (c!248131 totalInput!458))) b!1514873))

(assert (= b!1514874 b!1514875))

(assert (= (and b!1514487 ((_ is Leaf!8073) (c!248131 totalInput!458))) b!1514874))

(declare-fun m!1779321 () Bool)

(assert (=> b!1514873 m!1779321))

(declare-fun m!1779323 () Bool)

(assert (=> b!1514873 m!1779323))

(declare-fun m!1779325 () Bool)

(assert (=> b!1514874 m!1779325))

(assert (=> b!1514487 m!1778773))

(declare-fun b!1514876 () Bool)

(declare-fun e!968930 () Bool)

(declare-fun tp!433888 () Bool)

(assert (=> b!1514876 (= e!968930 tp!433888)))

(declare-fun setIsEmpty!9220 () Bool)

(declare-fun setRes!9220 () Bool)

(assert (=> setIsEmpty!9220 setRes!9220))

(declare-fun e!968929 () Bool)

(assert (=> b!1514479 (= tp!433666 e!968929)))

(declare-fun tp!433891 () Bool)

(declare-fun setNonEmpty!9220 () Bool)

(declare-fun setElem!9220 () Context!1362)

(assert (=> setNonEmpty!9220 (= setRes!9220 (and tp!433891 (inv!21347 setElem!9220) e!968930))))

(declare-fun setRest!9220 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9220 (= (_2!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9220 true) setRest!9220))))

(declare-fun tp!433890 () Bool)

(declare-fun b!1514877 () Bool)

(declare-fun e!968928 () Bool)

(declare-fun tp!433887 () Bool)

(assert (=> b!1514877 (= e!968929 (and tp!433887 (inv!21347 (_2!8521 (_1!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))))) e!968928 tp_is_empty!7017 setRes!9220 tp!433890))))

(declare-fun condSetEmpty!9220 () Bool)

(assert (=> b!1514877 (= condSetEmpty!9220 (= (_2!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514878 () Bool)

(declare-fun tp!433889 () Bool)

(assert (=> b!1514878 (= e!968928 tp!433889)))

(assert (= b!1514877 b!1514878))

(assert (= (and b!1514877 condSetEmpty!9220) setIsEmpty!9220))

(assert (= (and b!1514877 (not condSetEmpty!9220)) setNonEmpty!9220))

(assert (= setNonEmpty!9220 b!1514876))

(assert (= (and b!1514479 ((_ is Cons!16103) (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))) b!1514877))

(declare-fun m!1779327 () Bool)

(assert (=> setNonEmpty!9220 m!1779327))

(declare-fun m!1779329 () Bool)

(assert (=> b!1514877 m!1779329))

(declare-fun b!1514879 () Bool)

(declare-fun e!968933 () Bool)

(declare-fun tp!433893 () Bool)

(assert (=> b!1514879 (= e!968933 tp!433893)))

(declare-fun setIsEmpty!9221 () Bool)

(declare-fun setRes!9221 () Bool)

(assert (=> setIsEmpty!9221 setRes!9221))

(declare-fun e!968932 () Bool)

(assert (=> b!1514479 (= tp!433662 e!968932)))

(declare-fun tp!433896 () Bool)

(declare-fun setNonEmpty!9221 () Bool)

(declare-fun setElem!9221 () Context!1362)

(assert (=> setNonEmpty!9221 (= setRes!9221 (and tp!433896 (inv!21347 setElem!9221) e!968933))))

(declare-fun setRest!9221 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9221 (= (_2!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9221 true) setRest!9221))))

(declare-fun e!968931 () Bool)

(declare-fun tp!433895 () Bool)

(declare-fun tp!433892 () Bool)

(declare-fun b!1514880 () Bool)

(assert (=> b!1514880 (= e!968932 (and tp!433892 (inv!21347 (_2!8521 (_1!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))))) e!968931 tp_is_empty!7017 setRes!9221 tp!433895))))

(declare-fun condSetEmpty!9221 () Bool)

(assert (=> b!1514880 (= condSetEmpty!9221 (= (_2!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1514881 () Bool)

(declare-fun tp!433894 () Bool)

(assert (=> b!1514881 (= e!968931 tp!433894)))

(assert (= b!1514880 b!1514881))

(assert (= (and b!1514880 condSetEmpty!9221) setIsEmpty!9221))

(assert (= (and b!1514880 (not condSetEmpty!9221)) setNonEmpty!9221))

(assert (= setNonEmpty!9221 b!1514879))

(assert (= (and b!1514479 ((_ is Cons!16103) (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))) b!1514880))

(declare-fun m!1779331 () Bool)

(assert (=> setNonEmpty!9221 m!1779331))

(declare-fun m!1779333 () Bool)

(assert (=> b!1514880 m!1779333))

(check-sat (not b_next!40037) (not d!448431) (not b!1514508) (not b!1514591) (not d!448331) (not b!1514544) (not b!1514856) (not b!1514649) (not b!1514820) (not b!1514741) (not d!448413) (not b!1514636) (not d!448375) (not b!1514681) (not b!1514849) (not b!1514749) (not b!1514662) (not setNonEmpty!9221) (not b!1514716) (not b!1514879) (not b!1514448) (not setNonEmpty!9214) (not b!1514769) (not setNonEmpty!9206) (not b!1514643) (not b!1514877) (not b!1514847) (not d!448299) (not b!1514727) (not b!1514668) (not d!448309) (not setNonEmpty!9216) (not d!448347) (not b!1514654) (not d!448419) (not b!1514450) (not b!1514704) b_and!105359 (not b!1514844) tp_is_empty!7017 (not d!448415) (not b!1514696) (not b!1514665) (not b!1514638) (not b!1514597) (not b!1514750) (not d!448355) (not b!1514771) (not b!1514695) (not b!1514861) (not b!1514700) (not b!1514857) (not d!448323) (not setNonEmpty!9213) (not d!448405) (not b!1514872) (not b!1514656) (not b!1514540) (not b!1514870) (not d!448385) (not b!1514547) (not d!448373) (not b!1514803) (not b!1514770) b_and!105351 (not b!1514693) (not b!1514692) (not b!1514742) b_and!105353 (not b_lambda!47499) (not b!1514874) (not setNonEmpty!9218) (not b!1514878) (not b!1514794) (not d!448365) (not b!1514625) (not b!1514619) (not setNonEmpty!9198) (not b!1514712) (not b!1514697) (not b!1514493) (not b!1514854) (not d!448399) (not b!1514860) (not mapNonEmpty!7058) (not d!448317) (not b!1514487) (not d!448363) (not b!1514828) (not b!1514535) (not d!448345) (not setNonEmpty!9194) (not d!448305) (not b!1514506) (not d!448329) (not d!448315) (not b!1514821) (not d!448367) (not d!448421) (not b!1514490) (not b!1514661) (not setNonEmpty!9217) (not b_next!40033) (not b!1514667) b_and!105349 (not b!1514592) (not b!1514850) (not b!1514717) (not b!1514618) (not b!1514859) (not b!1514671) (not b!1514880) (not d!448341) b_and!105355 b_and!105357 (not b!1514839) b_and!105347 (not setNonEmpty!9220) (not b!1514629) (not b!1514477) (not d!448371) (not d!448425) (not d!448357) (not b!1514694) (not b!1514655) (not b!1514630) (not d!448383) (not b!1514783) (not d!448395) (not b!1514499) (not d!448307) (not setNonEmpty!9189) b_and!105345 (not b!1514711) (not d!448401) (not d!448417) (not b!1514875) (not d!448343) (not b_next!40041) (not b!1514706) (not b!1514767) (not d!448359) (not d!448349) (not b!1514710) (not b!1514793) (not setNonEmpty!9207) (not setNonEmpty!9219) (not b!1514740) (not b_next!40043) (not b!1514853) (not b!1514840) (not b!1514846) (not setNonEmpty!9188) (not b!1514714) (not b!1514703) (not mapNonEmpty!7061) (not b!1514536) (not b!1514613) b_and!105341 (not b_next!40045) (not b!1514848) (not b!1514768) (not b!1514650) (not b!1514827) (not d!448427) (not b!1514542) (not b!1514752) (not tb!86209) (not b!1514873) (not b!1514690) (not b_next!40039) (not b!1514639) (not setNonEmpty!9201) (not b_next!40031) (not b!1514541) (not b_next!40027) (not setNonEmpty!9208) (not b!1514851) (not b!1514841) (not b!1514699) (not b!1514538) (not b!1514842) (not b!1514701) (not b!1514772) (not b!1514708) (not b!1514560) b_and!105361 (not d!448361) (not b!1514845) (not b!1514781) (not b!1514658) (not d!448381) (not b!1514664) (not b!1514626) (not b!1514616) (not b!1514823) (not d!448387) (not b!1514446) (not b!1514622) (not b!1514647) (not mapNonEmpty!7055) (not d!448403) (not b!1514707) (not d!448353) (not d!448389) (not b!1514858) (not bm!100384) (not setNonEmpty!9215) (not b!1514615) (not b!1514598) (not b!1514876) (not b!1514594) (not b_next!40035) (not b!1514804) (not b!1514822) (not b!1514595) (not b!1514782) (not bm!100387) (not b!1514702) (not d!448351) (not setNonEmpty!9195) (not b!1514573) (not b!1514561) (not b!1514691) (not d!448379) (not d!448429) (not b!1514855) (not b!1514792) (not b!1514824) (not b!1514852) (not b!1514871) (not b!1514642) (not d!448327) (not b!1514805) (not b_next!40029) (not d!448397) (not b!1514548) (not b!1514543) (not b!1514726) (not b!1514572) (not b!1514539) (not b!1514663) (not b!1514826) (not d!448333) (not b!1514881) (not b!1514621) (not b!1514596) (not b!1514825) (not b!1514496) (not d!448369) (not b!1514537) (not b!1514550) (not b!1514679) (not b!1514670) (not b!1514713) (not b!1514843) (not b!1514614) (not b!1514751))
(check-sat (not b_next!40037) b_and!105359 b_and!105351 b_and!105353 b_and!105347 (not b_next!40043) (not b_next!40039) b_and!105361 (not b_next!40035) (not b_next!40029) (not b_next!40033) b_and!105349 b_and!105355 b_and!105357 b_and!105345 (not b_next!40041) b_and!105341 (not b_next!40045) (not b_next!40031) (not b_next!40027))
(get-model)

(declare-fun d!448433 () Bool)

(declare-fun res!681399 () Bool)

(declare-fun e!968936 () Bool)

(assert (=> d!448433 (=> (not res!681399) (not e!968936))))

(declare-fun list!6361 (IArray!10897) List!16169)

(assert (=> d!448433 (= res!681399 (<= (size!13022 (list!6361 (xs!8229 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) 512))))

(assert (=> d!448433 (= (inv!21344 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) e!968936)))

(declare-fun b!1514886 () Bool)

(declare-fun res!681400 () Bool)

(assert (=> b!1514886 (=> (not res!681400) (not e!968936))))

(assert (=> b!1514886 (= res!681400 (= (csize!11123 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) (size!13022 (list!6361 (xs!8229 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))))

(declare-fun b!1514887 () Bool)

(assert (=> b!1514887 (= e!968936 (and (> (csize!11123 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) 0) (<= (csize!11123 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) 512)))))

(assert (= (and d!448433 res!681399) b!1514886))

(assert (= (and b!1514886 res!681400) b!1514887))

(declare-fun m!1779335 () Bool)

(assert (=> d!448433 m!1779335))

(assert (=> d!448433 m!1779335))

(declare-fun m!1779337 () Bool)

(assert (=> d!448433 m!1779337))

(assert (=> b!1514886 m!1779335))

(assert (=> b!1514886 m!1779335))

(assert (=> b!1514886 m!1779337))

(assert (=> b!1514550 d!448433))

(declare-fun d!448435 () Bool)

(declare-fun e!968937 () Bool)

(assert (=> d!448435 e!968937))

(declare-fun res!681401 () Bool)

(assert (=> d!448435 (=> (not res!681401) (not e!968937))))

(assert (=> d!448435 (= res!681401 (isBalanced!1612 (prepend!470 (c!248132 (_1!8520 lt!526650)) (_1!8525 (v!22915 lt!526651)))))))

(declare-fun lt!526693 () BalanceConc!10836)

(assert (=> d!448435 (= lt!526693 (BalanceConc!10837 (prepend!470 (c!248132 (_1!8520 lt!526650)) (_1!8525 (v!22915 lt!526651)))))))

(assert (=> d!448435 (= (prepend!469 (_1!8520 lt!526650) (_1!8525 (v!22915 lt!526651))) lt!526693)))

(declare-fun b!1514888 () Bool)

(assert (=> b!1514888 (= e!968937 (= (list!6358 lt!526693) (Cons!16102 (_1!8525 (v!22915 lt!526651)) (list!6358 (_1!8520 lt!526650)))))))

(assert (= (and d!448435 res!681401) b!1514888))

(declare-fun m!1779339 () Bool)

(assert (=> d!448435 m!1779339))

(assert (=> d!448435 m!1779339))

(declare-fun m!1779341 () Bool)

(assert (=> d!448435 m!1779341))

(declare-fun m!1779343 () Bool)

(assert (=> b!1514888 m!1779343))

(declare-fun m!1779345 () Bool)

(assert (=> b!1514888 m!1779345))

(assert (=> b!1514616 d!448435))

(declare-fun b!1514889 () Bool)

(declare-fun e!968941 () Bool)

(declare-fun lt!526694 () tuple2!14988)

(assert (=> b!1514889 (= e!968941 (not (isEmpty!9941 (_1!8520 lt!526694))))))

(declare-fun d!448437 () Bool)

(declare-fun e!968938 () Bool)

(assert (=> d!448437 e!968938))

(declare-fun res!681402 () Bool)

(assert (=> d!448437 (=> (not res!681402) (not e!968938))))

(declare-fun e!968940 () Bool)

(assert (=> d!448437 (= res!681402 e!968940)))

(declare-fun c!248182 () Bool)

(assert (=> d!448437 (= c!248182 (> (size!13024 (_1!8520 lt!526694)) 0))))

(declare-fun e!968939 () tuple2!14988)

(assert (=> d!448437 (= lt!526694 e!968939)))

(declare-fun c!248181 () Bool)

(declare-fun lt!526696 () Option!2934)

(assert (=> d!448437 (= c!248181 ((_ is Some!2933) lt!526696))))

(assert (=> d!448437 (= lt!526696 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526651))))))

(assert (=> d!448437 (= (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526651))) lt!526694)))

(declare-fun b!1514890 () Bool)

(declare-fun res!681403 () Bool)

(assert (=> b!1514890 (=> (not res!681403) (not e!968938))))

(assert (=> b!1514890 (= res!681403 (= (list!6358 (_1!8520 lt!526694)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526651)))))))))

(declare-fun b!1514891 () Bool)

(assert (=> b!1514891 (= e!968940 e!968941)))

(declare-fun res!681404 () Bool)

(assert (=> b!1514891 (= res!681404 (< (size!13025 (_2!8520 lt!526694)) (size!13025 (_2!8525 (v!22915 lt!526651)))))))

(assert (=> b!1514891 (=> (not res!681404) (not e!968941))))

(declare-fun b!1514892 () Bool)

(declare-fun lt!526695 () tuple2!14988)

(assert (=> b!1514892 (= e!968939 (tuple2!14989 (prepend!469 (_1!8520 lt!526695) (_1!8525 (v!22915 lt!526696))) (_2!8520 lt!526695)))))

(assert (=> b!1514892 (= lt!526695 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526696))))))

(declare-fun b!1514893 () Bool)

(assert (=> b!1514893 (= e!968939 (tuple2!14989 (BalanceConc!10837 Empty!5447) (_2!8525 (v!22915 lt!526651))))))

(declare-fun b!1514894 () Bool)

(assert (=> b!1514894 (= e!968938 (= (list!6357 (_2!8520 lt!526694)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526651)))))))))

(declare-fun b!1514895 () Bool)

(assert (=> b!1514895 (= e!968940 (= (list!6357 (_2!8520 lt!526694)) (list!6357 (_2!8525 (v!22915 lt!526651)))))))

(assert (= (and d!448437 c!248181) b!1514892))

(assert (= (and d!448437 (not c!248181)) b!1514893))

(assert (= (and d!448437 c!248182) b!1514891))

(assert (= (and d!448437 (not c!248182)) b!1514895))

(assert (= (and b!1514891 res!681404) b!1514889))

(assert (= (and d!448437 res!681402) b!1514890))

(assert (= (and b!1514890 res!681403) b!1514894))

(declare-fun m!1779347 () Bool)

(assert (=> b!1514895 m!1779347))

(declare-fun m!1779349 () Bool)

(assert (=> b!1514895 m!1779349))

(declare-fun m!1779351 () Bool)

(assert (=> b!1514890 m!1779351))

(assert (=> b!1514890 m!1779349))

(assert (=> b!1514890 m!1779349))

(declare-fun m!1779353 () Bool)

(assert (=> b!1514890 m!1779353))

(declare-fun m!1779355 () Bool)

(assert (=> b!1514892 m!1779355))

(declare-fun m!1779357 () Bool)

(assert (=> b!1514892 m!1779357))

(declare-fun m!1779359 () Bool)

(assert (=> b!1514889 m!1779359))

(assert (=> b!1514894 m!1779347))

(assert (=> b!1514894 m!1779349))

(assert (=> b!1514894 m!1779349))

(assert (=> b!1514894 m!1779353))

(declare-fun m!1779361 () Bool)

(assert (=> b!1514891 m!1779361))

(declare-fun m!1779363 () Bool)

(assert (=> b!1514891 m!1779363))

(declare-fun m!1779365 () Bool)

(assert (=> d!448437 m!1779365))

(declare-fun m!1779367 () Bool)

(assert (=> d!448437 m!1779367))

(assert (=> b!1514616 d!448437))

(declare-fun d!448439 () Bool)

(declare-fun lt!526710 () Option!2935)

(assert (=> d!448439 (= lt!526710 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102)))))

(declare-fun e!968944 () Option!2935)

(assert (=> d!448439 (= lt!526710 e!968944)))

(declare-fun c!248185 () Bool)

(assert (=> d!448439 (= c!248185 (and ((_ is Cons!16105) rules!1640) ((_ is Nil!16105) (t!139457 rules!1640))))))

(declare-fun lt!526707 () Unit!25754)

(declare-fun lt!526708 () Unit!25754)

(assert (=> d!448439 (= lt!526707 lt!526708)))

(assert (=> d!448439 (isPrefix!1220 (list!6357 input!1102) (list!6357 input!1102))))

(assert (=> d!448439 (= lt!526708 (lemmaIsPrefixRefl!850 (list!6357 input!1102) (list!6357 input!1102)))))

(assert (=> d!448439 (rulesValidInductive!858 thiss!13241 rules!1640)))

(assert (=> d!448439 (= (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102)) lt!526710)))

(declare-fun call!100395 () Option!2935)

(declare-fun bm!100390 () Bool)

(declare-fun maxPrefixOneRuleZipper!97 (LexerInterface!2499 Rule!5494 List!16169) Option!2935)

(assert (=> bm!100390 (= call!100395 (maxPrefixOneRuleZipper!97 thiss!13241 (h!21506 rules!1640) (list!6357 input!1102)))))

(declare-fun b!1514900 () Bool)

(assert (=> b!1514900 (= e!968944 call!100395)))

(declare-fun b!1514901 () Bool)

(declare-fun lt!526711 () Option!2935)

(declare-fun lt!526709 () Option!2935)

(assert (=> b!1514901 (= e!968944 (ite (and ((_ is None!2934) lt!526711) ((_ is None!2934) lt!526709)) None!2934 (ite ((_ is None!2934) lt!526709) lt!526711 (ite ((_ is None!2934) lt!526711) lt!526709 (ite (>= (size!13019 (_1!8528 (v!22918 lt!526711))) (size!13019 (_1!8528 (v!22918 lt!526709)))) lt!526711 lt!526709)))))))

(assert (=> b!1514901 (= lt!526711 call!100395)))

(assert (=> b!1514901 (= lt!526709 (maxPrefixZipper!261 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102)))))

(assert (= (and d!448439 c!248185) b!1514900))

(assert (= (and d!448439 (not c!248185)) b!1514901))

(assert (= (or b!1514900 b!1514901) bm!100390))

(assert (=> d!448439 m!1778769))

(assert (=> d!448439 m!1778883))

(assert (=> d!448439 m!1778769))

(assert (=> d!448439 m!1778769))

(declare-fun m!1779369 () Bool)

(assert (=> d!448439 m!1779369))

(assert (=> d!448439 m!1778769))

(assert (=> d!448439 m!1778769))

(declare-fun m!1779371 () Bool)

(assert (=> d!448439 m!1779371))

(assert (=> d!448439 m!1778907))

(assert (=> bm!100390 m!1778769))

(declare-fun m!1779373 () Bool)

(assert (=> bm!100390 m!1779373))

(assert (=> b!1514901 m!1778769))

(declare-fun m!1779375 () Bool)

(assert (=> b!1514901 m!1779375))

(assert (=> b!1514592 d!448439))

(assert (=> b!1514592 d!448403))

(declare-fun d!448441 () Bool)

(assert (=> d!448441 (= (list!6357 (_2!8525 (get!4742 lt!526638))) (list!6359 (c!248131 (_2!8525 (get!4742 lt!526638)))))))

(declare-fun bs!364978 () Bool)

(assert (= bs!364978 d!448441))

(declare-fun m!1779377 () Bool)

(assert (=> bs!364978 m!1779377))

(assert (=> b!1514592 d!448441))

(declare-fun d!448443 () Bool)

(assert (=> d!448443 (= (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102))) (v!22918 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102))))))

(assert (=> b!1514592 d!448443))

(declare-fun d!448445 () Bool)

(assert (=> d!448445 (= (get!4742 lt!526638) (v!22915 lt!526638))))

(assert (=> b!1514592 d!448445))

(declare-fun b!1514920 () Bool)

(declare-fun e!968958 () Bool)

(declare-fun lt!526714 () List!16169)

(declare-fun e!968956 () Int)

(assert (=> b!1514920 (= e!968958 (= (size!13022 lt!526714) e!968956))))

(declare-fun c!248194 () Bool)

(assert (=> b!1514920 (= c!248194 (<= (- (size!13022 lt!526568) (size!13022 lt!526579)) 0))))

(declare-fun b!1514921 () Bool)

(declare-fun e!968955 () List!16169)

(declare-fun e!968959 () List!16169)

(assert (=> b!1514921 (= e!968955 e!968959)))

(declare-fun c!248197 () Bool)

(assert (=> b!1514921 (= c!248197 (<= (- (size!13022 lt!526568) (size!13022 lt!526579)) 0))))

(declare-fun b!1514922 () Bool)

(declare-fun call!100398 () Int)

(assert (=> b!1514922 (= e!968956 call!100398)))

(declare-fun b!1514923 () Bool)

(assert (=> b!1514923 (= e!968959 (drop!760 (t!139453 lt!526568) (- (- (size!13022 lt!526568) (size!13022 lt!526579)) 1)))))

(declare-fun b!1514924 () Bool)

(assert (=> b!1514924 (= e!968955 Nil!16101)))

(declare-fun d!448447 () Bool)

(assert (=> d!448447 e!968958))

(declare-fun res!681407 () Bool)

(assert (=> d!448447 (=> (not res!681407) (not e!968958))))

(assert (=> d!448447 (= res!681407 (= ((_ map implies) (content!2316 lt!526714) (content!2316 lt!526568)) ((as const (InoxSet C!8504)) true)))))

(assert (=> d!448447 (= lt!526714 e!968955)))

(declare-fun c!248196 () Bool)

(assert (=> d!448447 (= c!248196 ((_ is Nil!16101) lt!526568))))

(assert (=> d!448447 (= (drop!760 lt!526568 (- (size!13022 lt!526568) (size!13022 lt!526579))) lt!526714)))

(declare-fun b!1514925 () Bool)

(assert (=> b!1514925 (= e!968959 lt!526568)))

(declare-fun bm!100393 () Bool)

(assert (=> bm!100393 (= call!100398 (size!13022 lt!526568))))

(declare-fun b!1514926 () Bool)

(declare-fun e!968957 () Int)

(assert (=> b!1514926 (= e!968956 e!968957)))

(declare-fun c!248195 () Bool)

(assert (=> b!1514926 (= c!248195 (>= (- (size!13022 lt!526568) (size!13022 lt!526579)) call!100398))))

(declare-fun b!1514927 () Bool)

(assert (=> b!1514927 (= e!968957 (- call!100398 (- (size!13022 lt!526568) (size!13022 lt!526579))))))

(declare-fun b!1514928 () Bool)

(assert (=> b!1514928 (= e!968957 0)))

(assert (= (and d!448447 c!248196) b!1514924))

(assert (= (and d!448447 (not c!248196)) b!1514921))

(assert (= (and b!1514921 c!248197) b!1514925))

(assert (= (and b!1514921 (not c!248197)) b!1514923))

(assert (= (and d!448447 res!681407) b!1514920))

(assert (= (and b!1514920 c!248194) b!1514922))

(assert (= (and b!1514920 (not c!248194)) b!1514926))

(assert (= (and b!1514926 c!248195) b!1514928))

(assert (= (and b!1514926 (not c!248195)) b!1514927))

(assert (= (or b!1514922 b!1514926 b!1514927) bm!100393))

(declare-fun m!1779379 () Bool)

(assert (=> b!1514920 m!1779379))

(declare-fun m!1779381 () Bool)

(assert (=> b!1514923 m!1779381))

(declare-fun m!1779383 () Bool)

(assert (=> d!448447 m!1779383))

(declare-fun m!1779385 () Bool)

(assert (=> d!448447 m!1779385))

(assert (=> bm!100393 m!1779077))

(assert (=> d!448383 d!448447))

(declare-fun d!448449 () Bool)

(declare-fun lt!526717 () Int)

(assert (=> d!448449 (>= lt!526717 0)))

(declare-fun e!968962 () Int)

(assert (=> d!448449 (= lt!526717 e!968962)))

(declare-fun c!248200 () Bool)

(assert (=> d!448449 (= c!248200 ((_ is Nil!16101) lt!526568))))

(assert (=> d!448449 (= (size!13022 lt!526568) lt!526717)))

(declare-fun b!1514933 () Bool)

(assert (=> b!1514933 (= e!968962 0)))

(declare-fun b!1514934 () Bool)

(assert (=> b!1514934 (= e!968962 (+ 1 (size!13022 (t!139453 lt!526568))))))

(assert (= (and d!448449 c!248200) b!1514933))

(assert (= (and d!448449 (not c!248200)) b!1514934))

(declare-fun m!1779387 () Bool)

(assert (=> b!1514934 m!1779387))

(assert (=> d!448383 d!448449))

(declare-fun d!448451 () Bool)

(declare-fun lt!526718 () Int)

(assert (=> d!448451 (>= lt!526718 0)))

(declare-fun e!968963 () Int)

(assert (=> d!448451 (= lt!526718 e!968963)))

(declare-fun c!248201 () Bool)

(assert (=> d!448451 (= c!248201 ((_ is Nil!16101) lt!526579))))

(assert (=> d!448451 (= (size!13022 lt!526579) lt!526718)))

(declare-fun b!1514935 () Bool)

(assert (=> b!1514935 (= e!968963 0)))

(declare-fun b!1514936 () Bool)

(assert (=> b!1514936 (= e!968963 (+ 1 (size!13022 (t!139453 lt!526579))))))

(assert (= (and d!448451 c!248201) b!1514935))

(assert (= (and d!448451 (not c!248201)) b!1514936))

(declare-fun m!1779389 () Bool)

(assert (=> b!1514936 m!1779389))

(assert (=> d!448383 d!448451))

(declare-fun d!448453 () Bool)

(declare-fun lambda!64562 () Int)

(declare-fun forall!3861 (List!16166 Int) Bool)

(assert (=> d!448453 (= (inv!21347 setElem!9208) (forall!3861 (exprs!1181 setElem!9208) lambda!64562))))

(declare-fun bs!364979 () Bool)

(assert (= bs!364979 d!448453))

(declare-fun m!1779391 () Bool)

(assert (=> bs!364979 m!1779391))

(assert (=> setNonEmpty!9208 d!448453))

(declare-fun d!448455 () Bool)

(declare-fun lt!526721 () Int)

(assert (=> d!448455 (= lt!526721 (size!13023 (list!6358 (_1!8520 lt!526684))))))

(declare-fun size!13026 (Conc!5447) Int)

(assert (=> d!448455 (= lt!526721 (size!13026 (c!248132 (_1!8520 lt!526684))))))

(assert (=> d!448455 (= (size!13024 (_1!8520 lt!526684)) lt!526721)))

(declare-fun bs!364980 () Bool)

(assert (= bs!364980 d!448455))

(assert (=> bs!364980 m!1779169))

(assert (=> bs!364980 m!1779169))

(declare-fun m!1779393 () Bool)

(assert (=> bs!364980 m!1779393))

(declare-fun m!1779395 () Bool)

(assert (=> bs!364980 m!1779395))

(assert (=> d!448417 d!448455))

(declare-fun e!968964 () Bool)

(declare-fun lt!526724 () Option!2934)

(declare-fun b!1514937 () Bool)

(assert (=> b!1514937 (= e!968964 (= (list!6357 (_2!8525 (get!4742 lt!526724))) (_2!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 totalInput!458))))))))

(declare-fun e!968967 () Bool)

(declare-fun b!1514938 () Bool)

(assert (=> b!1514938 (= e!968967 (= (list!6357 (_2!8525 (get!4742 lt!526724))) (_2!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 totalInput!458))))))))

(declare-fun b!1514939 () Bool)

(declare-fun e!968968 () Option!2934)

(declare-fun call!100399 () Option!2934)

(assert (=> b!1514939 (= e!968968 call!100399)))

(declare-fun b!1514940 () Bool)

(declare-fun e!968965 () Bool)

(assert (=> b!1514940 (= e!968965 e!968967)))

(declare-fun res!681408 () Bool)

(assert (=> b!1514940 (=> (not res!681408) (not e!968967))))

(assert (=> b!1514940 (= res!681408 (= (_1!8525 (get!4742 lt!526724)) (_1!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 totalInput!458))))))))

(declare-fun b!1514941 () Bool)

(declare-fun e!968966 () Bool)

(declare-fun e!968969 () Bool)

(assert (=> b!1514941 (= e!968966 e!968969)))

(declare-fun res!681412 () Bool)

(assert (=> b!1514941 (=> res!681412 e!968969)))

(assert (=> b!1514941 (= res!681412 (not (isDefined!2357 lt!526724)))))

(declare-fun b!1514942 () Bool)

(declare-fun res!681413 () Bool)

(assert (=> b!1514942 (=> (not res!681413) (not e!968966))))

(assert (=> b!1514942 (= res!681413 e!968965)))

(declare-fun res!681409 () Bool)

(assert (=> b!1514942 (=> res!681409 e!968965)))

(assert (=> b!1514942 (= res!681409 (not (isDefined!2357 lt!526724)))))

(declare-fun b!1514943 () Bool)

(assert (=> b!1514943 (= e!968969 e!968964)))

(declare-fun res!681411 () Bool)

(assert (=> b!1514943 (=> (not res!681411) (not e!968964))))

(assert (=> b!1514943 (= res!681411 (= (_1!8525 (get!4742 lt!526724)) (_1!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 totalInput!458))))))))

(declare-fun d!448457 () Bool)

(assert (=> d!448457 e!968966))

(declare-fun res!681410 () Bool)

(assert (=> d!448457 (=> (not res!681410) (not e!968966))))

(assert (=> d!448457 (= res!681410 (= (isDefined!2357 lt!526724) (isDefined!2358 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 totalInput!458)))))))

(assert (=> d!448457 (= lt!526724 e!968968)))

(declare-fun c!248202 () Bool)

(assert (=> d!448457 (= c!248202 (and ((_ is Cons!16105) rules!1640) ((_ is Nil!16105) (t!139457 rules!1640))))))

(declare-fun lt!526728 () Unit!25754)

(declare-fun lt!526725 () Unit!25754)

(assert (=> d!448457 (= lt!526728 lt!526725)))

(declare-fun lt!526726 () List!16169)

(declare-fun lt!526727 () List!16169)

(assert (=> d!448457 (isPrefix!1220 lt!526726 lt!526727)))

(assert (=> d!448457 (= lt!526725 (lemmaIsPrefixRefl!850 lt!526726 lt!526727))))

(assert (=> d!448457 (= lt!526727 (list!6357 totalInput!458))))

(assert (=> d!448457 (= lt!526726 (list!6357 totalInput!458))))

(assert (=> d!448457 (rulesValidInductive!858 thiss!13241 rules!1640)))

(assert (=> d!448457 (= (maxPrefixZipperSequence!592 thiss!13241 rules!1640 totalInput!458) lt!526724)))

(declare-fun bm!100394 () Bool)

(assert (=> bm!100394 (= call!100399 (maxPrefixOneRuleZipperSequence!280 thiss!13241 (h!21506 rules!1640) totalInput!458))))

(declare-fun b!1514944 () Bool)

(declare-fun lt!526723 () Option!2934)

(declare-fun lt!526722 () Option!2934)

(assert (=> b!1514944 (= e!968968 (ite (and ((_ is None!2933) lt!526723) ((_ is None!2933) lt!526722)) None!2933 (ite ((_ is None!2933) lt!526722) lt!526723 (ite ((_ is None!2933) lt!526723) lt!526722 (ite (>= (size!13019 (_1!8525 (v!22915 lt!526723))) (size!13019 (_1!8525 (v!22915 lt!526722)))) lt!526723 lt!526722)))))))

(assert (=> b!1514944 (= lt!526723 call!100399)))

(assert (=> b!1514944 (= lt!526722 (maxPrefixZipperSequence!592 thiss!13241 (t!139457 rules!1640) totalInput!458))))

(assert (= (and d!448457 c!248202) b!1514939))

(assert (= (and d!448457 (not c!248202)) b!1514944))

(assert (= (or b!1514939 b!1514944) bm!100394))

(assert (= (and d!448457 res!681410) b!1514942))

(assert (= (and b!1514942 (not res!681409)) b!1514940))

(assert (= (and b!1514940 res!681408) b!1514938))

(assert (= (and b!1514942 res!681413) b!1514941))

(assert (= (and b!1514941 (not res!681412)) b!1514943))

(assert (= (and b!1514943 res!681411) b!1514937))

(declare-fun m!1779397 () Bool)

(assert (=> b!1514940 m!1779397))

(assert (=> b!1514940 m!1778767))

(assert (=> b!1514940 m!1778767))

(declare-fun m!1779399 () Bool)

(assert (=> b!1514940 m!1779399))

(assert (=> b!1514940 m!1779399))

(declare-fun m!1779401 () Bool)

(assert (=> b!1514940 m!1779401))

(declare-fun m!1779403 () Bool)

(assert (=> b!1514944 m!1779403))

(declare-fun m!1779405 () Bool)

(assert (=> bm!100394 m!1779405))

(assert (=> b!1514937 m!1779397))

(assert (=> b!1514937 m!1778767))

(assert (=> b!1514937 m!1778767))

(declare-fun m!1779407 () Bool)

(assert (=> b!1514937 m!1779407))

(assert (=> b!1514937 m!1779407))

(declare-fun m!1779409 () Bool)

(assert (=> b!1514937 m!1779409))

(declare-fun m!1779411 () Bool)

(assert (=> b!1514937 m!1779411))

(assert (=> b!1514938 m!1779397))

(assert (=> b!1514938 m!1779399))

(assert (=> b!1514938 m!1779401))

(assert (=> b!1514938 m!1778767))

(assert (=> b!1514938 m!1778767))

(assert (=> b!1514938 m!1779399))

(assert (=> b!1514938 m!1779411))

(declare-fun m!1779413 () Bool)

(assert (=> b!1514941 m!1779413))

(assert (=> d!448457 m!1779399))

(declare-fun m!1779415 () Bool)

(assert (=> d!448457 m!1779415))

(declare-fun m!1779417 () Bool)

(assert (=> d!448457 m!1779417))

(assert (=> d!448457 m!1778767))

(assert (=> d!448457 m!1778907))

(assert (=> d!448457 m!1778767))

(assert (=> d!448457 m!1779399))

(declare-fun m!1779419 () Bool)

(assert (=> d!448457 m!1779419))

(assert (=> d!448457 m!1779413))

(assert (=> b!1514942 m!1779413))

(assert (=> b!1514943 m!1779397))

(assert (=> b!1514943 m!1778767))

(assert (=> b!1514943 m!1778767))

(assert (=> b!1514943 m!1779407))

(assert (=> b!1514943 m!1779407))

(assert (=> b!1514943 m!1779409))

(assert (=> d!448417 d!448457))

(declare-fun e!968970 () List!16169)

(declare-fun b!1514946 () Bool)

(assert (=> b!1514946 (= e!968970 (Cons!16101 (h!21502 (t!139453 lt!526569)) (++!4368 (t!139453 (t!139453 lt!526569)) (++!4368 lt!526561 lt!526580))))))

(declare-fun b!1514948 () Bool)

(declare-fun lt!526729 () List!16169)

(declare-fun e!968971 () Bool)

(assert (=> b!1514948 (= e!968971 (or (not (= (++!4368 lt!526561 lt!526580) Nil!16101)) (= lt!526729 (t!139453 lt!526569))))))

(declare-fun b!1514945 () Bool)

(assert (=> b!1514945 (= e!968970 (++!4368 lt!526561 lt!526580))))

(declare-fun d!448459 () Bool)

(assert (=> d!448459 e!968971))

(declare-fun res!681414 () Bool)

(assert (=> d!448459 (=> (not res!681414) (not e!968971))))

(assert (=> d!448459 (= res!681414 (= (content!2316 lt!526729) ((_ map or) (content!2316 (t!139453 lt!526569)) (content!2316 (++!4368 lt!526561 lt!526580)))))))

(assert (=> d!448459 (= lt!526729 e!968970)))

(declare-fun c!248203 () Bool)

(assert (=> d!448459 (= c!248203 ((_ is Nil!16101) (t!139453 lt!526569)))))

(assert (=> d!448459 (= (++!4368 (t!139453 lt!526569) (++!4368 lt!526561 lt!526580)) lt!526729)))

(declare-fun b!1514947 () Bool)

(declare-fun res!681415 () Bool)

(assert (=> b!1514947 (=> (not res!681415) (not e!968971))))

(assert (=> b!1514947 (= res!681415 (= (size!13022 lt!526729) (+ (size!13022 (t!139453 lt!526569)) (size!13022 (++!4368 lt!526561 lt!526580)))))))

(assert (= (and d!448459 c!248203) b!1514945))

(assert (= (and d!448459 (not c!248203)) b!1514946))

(assert (= (and d!448459 res!681414) b!1514947))

(assert (= (and b!1514947 res!681415) b!1514948))

(assert (=> b!1514946 m!1778799))

(declare-fun m!1779421 () Bool)

(assert (=> b!1514946 m!1779421))

(declare-fun m!1779423 () Bool)

(assert (=> d!448459 m!1779423))

(declare-fun m!1779425 () Bool)

(assert (=> d!448459 m!1779425))

(assert (=> d!448459 m!1778799))

(assert (=> d!448459 m!1779007))

(declare-fun m!1779427 () Bool)

(assert (=> b!1514947 m!1779427))

(declare-fun m!1779429 () Bool)

(assert (=> b!1514947 m!1779429))

(assert (=> b!1514947 m!1778799))

(assert (=> b!1514947 m!1779013))

(assert (=> b!1514625 d!448459))

(declare-fun d!448461 () Bool)

(declare-fun res!681422 () Bool)

(declare-fun e!968974 () Bool)

(assert (=> d!448461 (=> (not res!681422) (not e!968974))))

(declare-fun size!13027 (Conc!5446) Int)

(assert (=> d!448461 (= res!681422 (= (csize!11122 (c!248131 treated!70)) (+ (size!13027 (left!13374 (c!248131 treated!70))) (size!13027 (right!13704 (c!248131 treated!70))))))))

(assert (=> d!448461 (= (inv!21343 (c!248131 treated!70)) e!968974)))

(declare-fun b!1514955 () Bool)

(declare-fun res!681423 () Bool)

(assert (=> b!1514955 (=> (not res!681423) (not e!968974))))

(assert (=> b!1514955 (= res!681423 (and (not (= (left!13374 (c!248131 treated!70)) Empty!5446)) (not (= (right!13704 (c!248131 treated!70)) Empty!5446))))))

(declare-fun b!1514956 () Bool)

(declare-fun res!681424 () Bool)

(assert (=> b!1514956 (=> (not res!681424) (not e!968974))))

(declare-fun height!814 (Conc!5446) Int)

(assert (=> b!1514956 (= res!681424 (= (cheight!5657 (c!248131 treated!70)) (+ (max!0 (height!814 (left!13374 (c!248131 treated!70))) (height!814 (right!13704 (c!248131 treated!70)))) 1)))))

(declare-fun b!1514957 () Bool)

(assert (=> b!1514957 (= e!968974 (<= 0 (cheight!5657 (c!248131 treated!70))))))

(assert (= (and d!448461 res!681422) b!1514955))

(assert (= (and b!1514955 res!681423) b!1514956))

(assert (= (and b!1514956 res!681424) b!1514957))

(declare-fun m!1779431 () Bool)

(assert (=> d!448461 m!1779431))

(declare-fun m!1779433 () Bool)

(assert (=> d!448461 m!1779433))

(declare-fun m!1779435 () Bool)

(assert (=> b!1514956 m!1779435))

(declare-fun m!1779437 () Bool)

(assert (=> b!1514956 m!1779437))

(assert (=> b!1514956 m!1779435))

(assert (=> b!1514956 m!1779437))

(declare-fun m!1779439 () Bool)

(assert (=> b!1514956 m!1779439))

(assert (=> b!1514656 d!448461))

(declare-fun d!448463 () Bool)

(declare-fun lt!526730 () Int)

(assert (=> d!448463 (>= lt!526730 0)))

(declare-fun e!968975 () Int)

(assert (=> d!448463 (= lt!526730 e!968975)))

(declare-fun c!248204 () Bool)

(assert (=> d!448463 (= c!248204 ((_ is Nil!16101) lt!526615))))

(assert (=> d!448463 (= (size!13022 lt!526615) lt!526730)))

(declare-fun b!1514958 () Bool)

(assert (=> b!1514958 (= e!968975 0)))

(declare-fun b!1514959 () Bool)

(assert (=> b!1514959 (= e!968975 (+ 1 (size!13022 (t!139453 lt!526615))))))

(assert (= (and d!448463 c!248204) b!1514958))

(assert (= (and d!448463 (not c!248204)) b!1514959))

(declare-fun m!1779441 () Bool)

(assert (=> b!1514959 m!1779441))

(assert (=> b!1514561 d!448463))

(declare-fun d!448465 () Bool)

(declare-fun lt!526731 () Int)

(assert (=> d!448465 (>= lt!526731 0)))

(declare-fun e!968976 () Int)

(assert (=> d!448465 (= lt!526731 e!968976)))

(declare-fun c!248205 () Bool)

(assert (=> d!448465 (= c!248205 ((_ is Nil!16101) lt!526561))))

(assert (=> d!448465 (= (size!13022 lt!526561) lt!526731)))

(declare-fun b!1514960 () Bool)

(assert (=> b!1514960 (= e!968976 0)))

(declare-fun b!1514961 () Bool)

(assert (=> b!1514961 (= e!968976 (+ 1 (size!13022 (t!139453 lt!526561))))))

(assert (= (and d!448465 c!248205) b!1514960))

(assert (= (and d!448465 (not c!248205)) b!1514961))

(declare-fun m!1779443 () Bool)

(assert (=> b!1514961 m!1779443))

(assert (=> b!1514561 d!448465))

(declare-fun d!448467 () Bool)

(declare-fun lt!526732 () Int)

(assert (=> d!448467 (>= lt!526732 0)))

(declare-fun e!968977 () Int)

(assert (=> d!448467 (= lt!526732 e!968977)))

(declare-fun c!248206 () Bool)

(assert (=> d!448467 (= c!248206 ((_ is Nil!16101) lt!526580))))

(assert (=> d!448467 (= (size!13022 lt!526580) lt!526732)))

(declare-fun b!1514962 () Bool)

(assert (=> b!1514962 (= e!968977 0)))

(declare-fun b!1514963 () Bool)

(assert (=> b!1514963 (= e!968977 (+ 1 (size!13022 (t!139453 lt!526580))))))

(assert (= (and d!448467 c!248206) b!1514962))

(assert (= (and d!448467 (not c!248206)) b!1514963))

(declare-fun m!1779445 () Bool)

(assert (=> b!1514963 m!1779445))

(assert (=> b!1514561 d!448467))

(declare-fun d!448469 () Bool)

(declare-fun c!248209 () Bool)

(assert (=> d!448469 (= c!248209 ((_ is Nil!16102) lt!526662))))

(declare-fun e!968980 () (InoxSet Token!5356))

(assert (=> d!448469 (= (content!2317 lt!526662) e!968980)))

(declare-fun b!1514968 () Bool)

(assert (=> b!1514968 (= e!968980 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1514969 () Bool)

(assert (=> b!1514969 (= e!968980 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 lt!526662) true) (content!2317 (t!139454 lt!526662))))))

(assert (= (and d!448469 c!248209) b!1514968))

(assert (= (and d!448469 (not c!248209)) b!1514969))

(declare-fun m!1779447 () Bool)

(assert (=> b!1514969 m!1779447))

(declare-fun m!1779449 () Bool)

(assert (=> b!1514969 m!1779449))

(assert (=> d!448369 d!448469))

(declare-fun d!448471 () Bool)

(declare-fun c!248210 () Bool)

(assert (=> d!448471 (= c!248210 ((_ is Nil!16102) lt!526584))))

(declare-fun e!968981 () (InoxSet Token!5356))

(assert (=> d!448471 (= (content!2317 lt!526584) e!968981)))

(declare-fun b!1514970 () Bool)

(assert (=> b!1514970 (= e!968981 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1514971 () Bool)

(assert (=> b!1514971 (= e!968981 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 lt!526584) true) (content!2317 (t!139454 lt!526584))))))

(assert (= (and d!448471 c!248210) b!1514970))

(assert (= (and d!448471 (not c!248210)) b!1514971))

(declare-fun m!1779451 () Bool)

(assert (=> b!1514971 m!1779451))

(declare-fun m!1779453 () Bool)

(assert (=> b!1514971 m!1779453))

(assert (=> d!448369 d!448471))

(declare-fun d!448473 () Bool)

(declare-fun c!248211 () Bool)

(assert (=> d!448473 (= c!248211 ((_ is Nil!16102) lt!526582))))

(declare-fun e!968982 () (InoxSet Token!5356))

(assert (=> d!448473 (= (content!2317 lt!526582) e!968982)))

(declare-fun b!1514972 () Bool)

(assert (=> b!1514972 (= e!968982 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1514973 () Bool)

(assert (=> b!1514973 (= e!968982 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 lt!526582) true) (content!2317 (t!139454 lt!526582))))))

(assert (= (and d!448473 c!248211) b!1514972))

(assert (= (and d!448473 (not c!248211)) b!1514973))

(declare-fun m!1779455 () Bool)

(assert (=> b!1514973 m!1779455))

(declare-fun m!1779457 () Bool)

(assert (=> b!1514973 m!1779457))

(assert (=> d!448369 d!448473))

(declare-fun b!1514983 () Bool)

(declare-fun e!968987 () List!16169)

(declare-fun e!968988 () List!16169)

(assert (=> b!1514983 (= e!968987 e!968988)))

(declare-fun c!248217 () Bool)

(assert (=> b!1514983 (= c!248217 ((_ is Leaf!8073) (c!248131 (_2!8520 lt!526567))))))

(declare-fun b!1514985 () Bool)

(assert (=> b!1514985 (= e!968988 (++!4368 (list!6359 (left!13374 (c!248131 (_2!8520 lt!526567)))) (list!6359 (right!13704 (c!248131 (_2!8520 lt!526567))))))))

(declare-fun d!448475 () Bool)

(declare-fun c!248216 () Bool)

(assert (=> d!448475 (= c!248216 ((_ is Empty!5446) (c!248131 (_2!8520 lt!526567))))))

(assert (=> d!448475 (= (list!6359 (c!248131 (_2!8520 lt!526567))) e!968987)))

(declare-fun b!1514982 () Bool)

(assert (=> b!1514982 (= e!968987 Nil!16101)))

(declare-fun b!1514984 () Bool)

(assert (=> b!1514984 (= e!968988 (list!6361 (xs!8229 (c!248131 (_2!8520 lt!526567)))))))

(assert (= (and d!448475 c!248216) b!1514982))

(assert (= (and d!448475 (not c!248216)) b!1514983))

(assert (= (and b!1514983 c!248217) b!1514984))

(assert (= (and b!1514983 (not c!248217)) b!1514985))

(declare-fun m!1779459 () Bool)

(assert (=> b!1514985 m!1779459))

(declare-fun m!1779461 () Bool)

(assert (=> b!1514985 m!1779461))

(assert (=> b!1514985 m!1779459))

(assert (=> b!1514985 m!1779461))

(declare-fun m!1779463 () Bool)

(assert (=> b!1514985 m!1779463))

(declare-fun m!1779465 () Bool)

(assert (=> b!1514984 m!1779465))

(assert (=> d!448323 d!448475))

(declare-fun bs!364981 () Bool)

(declare-fun d!448477 () Bool)

(assert (= bs!364981 (and d!448477 d!448453)))

(declare-fun lambda!64563 () Int)

(assert (=> bs!364981 (= lambda!64563 lambda!64562)))

(assert (=> d!448477 (= (inv!21347 (_2!8521 (_1!8522 (h!21504 mapValue!7058)))) (forall!3861 (exprs!1181 (_2!8521 (_1!8522 (h!21504 mapValue!7058)))) lambda!64563))))

(declare-fun bs!364982 () Bool)

(assert (= bs!364982 d!448477))

(declare-fun m!1779467 () Bool)

(assert (=> bs!364982 m!1779467))

(assert (=> b!1514825 d!448477))

(declare-fun d!448479 () Bool)

(declare-fun isEmpty!9942 (Option!2934) Bool)

(assert (=> d!448479 (= (isDefined!2357 lt!526638) (not (isEmpty!9942 lt!526638)))))

(declare-fun bs!364983 () Bool)

(assert (= bs!364983 d!448479))

(declare-fun m!1779469 () Bool)

(assert (=> bs!364983 m!1779469))

(assert (=> b!1514596 d!448479))

(declare-fun bs!364984 () Bool)

(declare-fun d!448481 () Bool)

(assert (= bs!364984 (and d!448481 d!448453)))

(declare-fun lambda!64564 () Int)

(assert (=> bs!364984 (= lambda!64564 lambda!64562)))

(declare-fun bs!364985 () Bool)

(assert (= bs!364985 (and d!448481 d!448477)))

(assert (=> bs!364985 (= lambda!64564 lambda!64563)))

(assert (=> d!448481 (= (inv!21347 setElem!9214) (forall!3861 (exprs!1181 setElem!9214) lambda!64564))))

(declare-fun bs!364986 () Bool)

(assert (= bs!364986 d!448481))

(declare-fun m!1779471 () Bool)

(assert (=> bs!364986 m!1779471))

(assert (=> setNonEmpty!9214 d!448481))

(declare-fun b!1514987 () Bool)

(declare-fun e!968990 () List!16170)

(assert (=> b!1514987 (= e!968990 (Cons!16102 (h!21503 (t!139454 lt!526584)) (++!4367 (t!139454 (t!139454 lt!526584)) lt!526582)))))

(declare-fun e!968989 () Bool)

(declare-fun lt!526733 () List!16170)

(declare-fun b!1514989 () Bool)

(assert (=> b!1514989 (= e!968989 (or (not (= lt!526582 Nil!16102)) (= lt!526733 (t!139454 lt!526584))))))

(declare-fun b!1514986 () Bool)

(assert (=> b!1514986 (= e!968990 lt!526582)))

(declare-fun b!1514988 () Bool)

(declare-fun res!681426 () Bool)

(assert (=> b!1514988 (=> (not res!681426) (not e!968989))))

(assert (=> b!1514988 (= res!681426 (= (size!13023 lt!526733) (+ (size!13023 (t!139454 lt!526584)) (size!13023 lt!526582))))))

(declare-fun d!448483 () Bool)

(assert (=> d!448483 e!968989))

(declare-fun res!681425 () Bool)

(assert (=> d!448483 (=> (not res!681425) (not e!968989))))

(assert (=> d!448483 (= res!681425 (= (content!2317 lt!526733) ((_ map or) (content!2317 (t!139454 lt!526584)) (content!2317 lt!526582))))))

(assert (=> d!448483 (= lt!526733 e!968990)))

(declare-fun c!248218 () Bool)

(assert (=> d!448483 (= c!248218 ((_ is Nil!16102) (t!139454 lt!526584)))))

(assert (=> d!448483 (= (++!4367 (t!139454 lt!526584) lt!526582) lt!526733)))

(assert (= (and d!448483 c!248218) b!1514986))

(assert (= (and d!448483 (not c!248218)) b!1514987))

(assert (= (and d!448483 res!681425) b!1514988))

(assert (= (and b!1514988 res!681426) b!1514989))

(declare-fun m!1779473 () Bool)

(assert (=> b!1514987 m!1779473))

(declare-fun m!1779475 () Bool)

(assert (=> b!1514988 m!1779475))

(declare-fun m!1779477 () Bool)

(assert (=> b!1514988 m!1779477))

(assert (=> b!1514988 m!1779021))

(declare-fun m!1779479 () Bool)

(assert (=> d!448483 m!1779479))

(assert (=> d!448483 m!1779453))

(assert (=> d!448483 m!1779027))

(assert (=> b!1514642 d!448483))

(declare-fun b!1514991 () Bool)

(declare-fun e!968991 () List!16169)

(declare-fun e!968992 () List!16169)

(assert (=> b!1514991 (= e!968991 e!968992)))

(declare-fun c!248220 () Bool)

(assert (=> b!1514991 (= c!248220 ((_ is Leaf!8073) (c!248131 (_2!8520 lt!526566))))))

(declare-fun b!1514993 () Bool)

(assert (=> b!1514993 (= e!968992 (++!4368 (list!6359 (left!13374 (c!248131 (_2!8520 lt!526566)))) (list!6359 (right!13704 (c!248131 (_2!8520 lt!526566))))))))

(declare-fun d!448485 () Bool)

(declare-fun c!248219 () Bool)

(assert (=> d!448485 (= c!248219 ((_ is Empty!5446) (c!248131 (_2!8520 lt!526566))))))

(assert (=> d!448485 (= (list!6359 (c!248131 (_2!8520 lt!526566))) e!968991)))

(declare-fun b!1514990 () Bool)

(assert (=> b!1514990 (= e!968991 Nil!16101)))

(declare-fun b!1514992 () Bool)

(assert (=> b!1514992 (= e!968992 (list!6361 (xs!8229 (c!248131 (_2!8520 lt!526566)))))))

(assert (= (and d!448485 c!248219) b!1514990))

(assert (= (and d!448485 (not c!248219)) b!1514991))

(assert (= (and b!1514991 c!248220) b!1514992))

(assert (= (and b!1514991 (not c!248220)) b!1514993))

(declare-fun m!1779481 () Bool)

(assert (=> b!1514993 m!1779481))

(declare-fun m!1779483 () Bool)

(assert (=> b!1514993 m!1779483))

(assert (=> b!1514993 m!1779481))

(assert (=> b!1514993 m!1779483))

(declare-fun m!1779485 () Bool)

(assert (=> b!1514993 m!1779485))

(declare-fun m!1779487 () Bool)

(assert (=> b!1514992 m!1779487))

(assert (=> d!448375 d!448485))

(declare-fun d!448487 () Bool)

(declare-fun c!248223 () Bool)

(assert (=> d!448487 (= c!248223 ((_ is Nil!16101) lt!526652))))

(declare-fun e!968995 () (InoxSet C!8504))

(assert (=> d!448487 (= (content!2316 lt!526652) e!968995)))

(declare-fun b!1514998 () Bool)

(assert (=> b!1514998 (= e!968995 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1514999 () Bool)

(assert (=> b!1514999 (= e!968995 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526652) true) (content!2316 (t!139453 lt!526652))))))

(assert (= (and d!448487 c!248223) b!1514998))

(assert (= (and d!448487 (not c!248223)) b!1514999))

(declare-fun m!1779489 () Bool)

(assert (=> b!1514999 m!1779489))

(declare-fun m!1779491 () Bool)

(assert (=> b!1514999 m!1779491))

(assert (=> d!448351 d!448487))

(declare-fun d!448489 () Bool)

(declare-fun c!248224 () Bool)

(assert (=> d!448489 (= c!248224 ((_ is Nil!16101) (++!4368 lt!526569 lt!526561)))))

(declare-fun e!968996 () (InoxSet C!8504))

(assert (=> d!448489 (= (content!2316 (++!4368 lt!526569 lt!526561)) e!968996)))

(declare-fun b!1515000 () Bool)

(assert (=> b!1515000 (= e!968996 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515001 () Bool)

(assert (=> b!1515001 (= e!968996 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 (++!4368 lt!526569 lt!526561)) true) (content!2316 (t!139453 (++!4368 lt!526569 lt!526561)))))))

(assert (= (and d!448489 c!248224) b!1515000))

(assert (= (and d!448489 (not c!248224)) b!1515001))

(declare-fun m!1779493 () Bool)

(assert (=> b!1515001 m!1779493))

(declare-fun m!1779495 () Bool)

(assert (=> b!1515001 m!1779495))

(assert (=> d!448351 d!448489))

(declare-fun d!448491 () Bool)

(declare-fun c!248225 () Bool)

(assert (=> d!448491 (= c!248225 ((_ is Nil!16101) lt!526580))))

(declare-fun e!968997 () (InoxSet C!8504))

(assert (=> d!448491 (= (content!2316 lt!526580) e!968997)))

(declare-fun b!1515002 () Bool)

(assert (=> b!1515002 (= e!968997 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515003 () Bool)

(assert (=> b!1515003 (= e!968997 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526580) true) (content!2316 (t!139453 lt!526580))))))

(assert (= (and d!448491 c!248225) b!1515002))

(assert (= (and d!448491 (not c!248225)) b!1515003))

(declare-fun m!1779497 () Bool)

(assert (=> b!1515003 m!1779497))

(declare-fun m!1779499 () Bool)

(assert (=> b!1515003 m!1779499))

(assert (=> d!448351 d!448491))

(declare-fun d!448493 () Bool)

(assert (=> d!448493 true))

(declare-fun order!9547 () Int)

(declare-fun lambda!64567 () Int)

(declare-fun order!9549 () Int)

(declare-fun dynLambda!7225 (Int Int) Int)

(declare-fun dynLambda!7226 (Int Int) Int)

(assert (=> d!448493 (< (dynLambda!7225 order!9547 (toChars!4057 (transformation!2847 (h!21506 rules!1640)))) (dynLambda!7226 order!9549 lambda!64567))))

(assert (=> d!448493 true))

(declare-fun order!9551 () Int)

(declare-fun dynLambda!7227 (Int Int) Int)

(assert (=> d!448493 (< (dynLambda!7227 order!9551 (toValue!4198 (transformation!2847 (h!21506 rules!1640)))) (dynLambda!7226 order!9549 lambda!64567))))

(declare-fun Forall!580 (Int) Bool)

(assert (=> d!448493 (= (semiInverseModEq!1072 (toChars!4057 (transformation!2847 (h!21506 rules!1640))) (toValue!4198 (transformation!2847 (h!21506 rules!1640)))) (Forall!580 lambda!64567))))

(declare-fun bs!364987 () Bool)

(assert (= bs!364987 d!448493))

(declare-fun m!1779501 () Bool)

(assert (=> bs!364987 m!1779501))

(assert (=> d!448299 d!448493))

(declare-fun d!448495 () Bool)

(assert (=> d!448495 true))

(declare-fun lt!526736 () Bool)

(declare-fun lambda!64570 () Int)

(declare-fun forall!3862 (List!16173 Int) Bool)

(assert (=> d!448495 (= lt!526736 (forall!3862 rules!1640 lambda!64570))))

(declare-fun e!969003 () Bool)

(assert (=> d!448495 (= lt!526736 e!969003)))

(declare-fun res!681431 () Bool)

(assert (=> d!448495 (=> res!681431 e!969003)))

(assert (=> d!448495 (= res!681431 (not ((_ is Cons!16105) rules!1640)))))

(assert (=> d!448495 (= (rulesValidInductive!858 thiss!13241 rules!1640) lt!526736)))

(declare-fun b!1515012 () Bool)

(declare-fun e!969002 () Bool)

(assert (=> b!1515012 (= e!969003 e!969002)))

(declare-fun res!681432 () Bool)

(assert (=> b!1515012 (=> (not res!681432) (not e!969002))))

(declare-fun ruleValid!636 (LexerInterface!2499 Rule!5494) Bool)

(assert (=> b!1515012 (= res!681432 (ruleValid!636 thiss!13241 (h!21506 rules!1640)))))

(declare-fun b!1515013 () Bool)

(assert (=> b!1515013 (= e!969002 (rulesValidInductive!858 thiss!13241 (t!139457 rules!1640)))))

(assert (= (and d!448495 (not res!681431)) b!1515012))

(assert (= (and b!1515012 res!681432) b!1515013))

(declare-fun m!1779503 () Bool)

(assert (=> d!448495 m!1779503))

(declare-fun m!1779505 () Bool)

(assert (=> b!1515012 m!1779505))

(declare-fun m!1779507 () Bool)

(assert (=> b!1515013 m!1779507))

(assert (=> d!448347 d!448495))

(assert (=> d!448347 d!448479))

(assert (=> d!448347 d!448439))

(assert (=> d!448347 d!448403))

(declare-fun b!1515025 () Bool)

(declare-fun res!681443 () Bool)

(declare-fun e!969011 () Bool)

(assert (=> b!1515025 (=> (not res!681443) (not e!969011))))

(declare-fun head!3092 (List!16169) C!8504)

(assert (=> b!1515025 (= res!681443 (= (head!3092 lt!526640) (head!3092 lt!526641)))))

(declare-fun d!448497 () Bool)

(declare-fun e!969010 () Bool)

(assert (=> d!448497 e!969010))

(declare-fun res!681442 () Bool)

(assert (=> d!448497 (=> res!681442 e!969010)))

(declare-fun lt!526739 () Bool)

(assert (=> d!448497 (= res!681442 (not lt!526739))))

(declare-fun e!969012 () Bool)

(assert (=> d!448497 (= lt!526739 e!969012)))

(declare-fun res!681444 () Bool)

(assert (=> d!448497 (=> res!681444 e!969012)))

(assert (=> d!448497 (= res!681444 ((_ is Nil!16101) lt!526640))))

(assert (=> d!448497 (= (isPrefix!1220 lt!526640 lt!526641) lt!526739)))

(declare-fun b!1515024 () Bool)

(assert (=> b!1515024 (= e!969012 e!969011)))

(declare-fun res!681441 () Bool)

(assert (=> b!1515024 (=> (not res!681441) (not e!969011))))

(assert (=> b!1515024 (= res!681441 (not ((_ is Nil!16101) lt!526641)))))

(declare-fun b!1515027 () Bool)

(assert (=> b!1515027 (= e!969010 (>= (size!13022 lt!526641) (size!13022 lt!526640)))))

(declare-fun b!1515026 () Bool)

(declare-fun tail!2187 (List!16169) List!16169)

(assert (=> b!1515026 (= e!969011 (isPrefix!1220 (tail!2187 lt!526640) (tail!2187 lt!526641)))))

(assert (= (and d!448497 (not res!681444)) b!1515024))

(assert (= (and b!1515024 res!681441) b!1515025))

(assert (= (and b!1515025 res!681443) b!1515026))

(assert (= (and d!448497 (not res!681442)) b!1515027))

(declare-fun m!1779509 () Bool)

(assert (=> b!1515025 m!1779509))

(declare-fun m!1779511 () Bool)

(assert (=> b!1515025 m!1779511))

(declare-fun m!1779513 () Bool)

(assert (=> b!1515027 m!1779513))

(declare-fun m!1779515 () Bool)

(assert (=> b!1515027 m!1779515))

(declare-fun m!1779517 () Bool)

(assert (=> b!1515026 m!1779517))

(declare-fun m!1779519 () Bool)

(assert (=> b!1515026 m!1779519))

(assert (=> b!1515026 m!1779517))

(assert (=> b!1515026 m!1779519))

(declare-fun m!1779521 () Bool)

(assert (=> b!1515026 m!1779521))

(assert (=> d!448347 d!448497))

(declare-fun d!448499 () Bool)

(assert (=> d!448499 (isPrefix!1220 lt!526640 lt!526641)))

(declare-fun lt!526742 () Unit!25754)

(declare-fun choose!9165 (List!16169 List!16169) Unit!25754)

(assert (=> d!448499 (= lt!526742 (choose!9165 lt!526640 lt!526641))))

(assert (=> d!448499 (= (lemmaIsPrefixRefl!850 lt!526640 lt!526641) lt!526742)))

(declare-fun bs!364988 () Bool)

(assert (= bs!364988 d!448499))

(assert (=> bs!364988 m!1778967))

(declare-fun m!1779523 () Bool)

(assert (=> bs!364988 m!1779523))

(assert (=> d!448347 d!448499))

(declare-fun d!448501 () Bool)

(declare-fun isEmpty!9943 (Option!2935) Bool)

(assert (=> d!448501 (= (isDefined!2358 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102))) (not (isEmpty!9943 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 input!1102)))))))

(declare-fun bs!364989 () Bool)

(assert (= bs!364989 d!448501))

(assert (=> bs!364989 m!1778887))

(declare-fun m!1779525 () Bool)

(assert (=> bs!364989 m!1779525))

(assert (=> d!448347 d!448501))

(declare-fun d!448503 () Bool)

(assert (=> d!448503 (= (list!6358 lt!526676) (list!6360 (c!248132 lt!526676)))))

(declare-fun bs!364990 () Bool)

(assert (= bs!364990 d!448503))

(declare-fun m!1779527 () Bool)

(assert (=> bs!364990 m!1779527))

(assert (=> b!1514661 d!448503))

(declare-fun d!448505 () Bool)

(assert (=> d!448505 (= (list!6358 (_1!8520 lt!526571)) (list!6360 (c!248132 (_1!8520 lt!526571))))))

(declare-fun bs!364991 () Bool)

(assert (= bs!364991 d!448505))

(declare-fun m!1779529 () Bool)

(assert (=> bs!364991 m!1779529))

(assert (=> b!1514661 d!448505))

(declare-fun d!448507 () Bool)

(declare-fun c!248226 () Bool)

(assert (=> d!448507 (= c!248226 ((_ is Node!5446) (left!13374 (c!248131 input!1102))))))

(declare-fun e!969013 () Bool)

(assert (=> d!448507 (= (inv!21340 (left!13374 (c!248131 input!1102))) e!969013)))

(declare-fun b!1515028 () Bool)

(assert (=> b!1515028 (= e!969013 (inv!21343 (left!13374 (c!248131 input!1102))))))

(declare-fun b!1515029 () Bool)

(declare-fun e!969014 () Bool)

(assert (=> b!1515029 (= e!969013 e!969014)))

(declare-fun res!681445 () Bool)

(assert (=> b!1515029 (= res!681445 (not ((_ is Leaf!8073) (left!13374 (c!248131 input!1102)))))))

(assert (=> b!1515029 (=> res!681445 e!969014)))

(declare-fun b!1515030 () Bool)

(assert (=> b!1515030 (= e!969014 (inv!21344 (left!13374 (c!248131 input!1102))))))

(assert (= (and d!448507 c!248226) b!1515028))

(assert (= (and d!448507 (not c!248226)) b!1515029))

(assert (= (and b!1515029 (not res!681445)) b!1515030))

(declare-fun m!1779531 () Bool)

(assert (=> b!1515028 m!1779531))

(declare-fun m!1779533 () Bool)

(assert (=> b!1515030 m!1779533))

(assert (=> b!1514803 d!448507))

(declare-fun d!448509 () Bool)

(declare-fun c!248227 () Bool)

(assert (=> d!448509 (= c!248227 ((_ is Node!5446) (right!13704 (c!248131 input!1102))))))

(declare-fun e!969015 () Bool)

(assert (=> d!448509 (= (inv!21340 (right!13704 (c!248131 input!1102))) e!969015)))

(declare-fun b!1515031 () Bool)

(assert (=> b!1515031 (= e!969015 (inv!21343 (right!13704 (c!248131 input!1102))))))

(declare-fun b!1515032 () Bool)

(declare-fun e!969016 () Bool)

(assert (=> b!1515032 (= e!969015 e!969016)))

(declare-fun res!681446 () Bool)

(assert (=> b!1515032 (= res!681446 (not ((_ is Leaf!8073) (right!13704 (c!248131 input!1102)))))))

(assert (=> b!1515032 (=> res!681446 e!969016)))

(declare-fun b!1515033 () Bool)

(assert (=> b!1515033 (= e!969016 (inv!21344 (right!13704 (c!248131 input!1102))))))

(assert (= (and d!448509 c!248227) b!1515031))

(assert (= (and d!448509 (not c!248227)) b!1515032))

(assert (= (and b!1515032 (not res!681446)) b!1515033))

(declare-fun m!1779535 () Bool)

(assert (=> b!1515031 m!1779535))

(declare-fun m!1779537 () Bool)

(assert (=> b!1515033 m!1779537))

(assert (=> b!1514803 d!448509))

(declare-fun d!448511 () Bool)

(declare-fun c!248232 () Bool)

(assert (=> d!448511 (= c!248232 ((_ is Empty!5447) (c!248132 (_1!8520 lt!526567))))))

(declare-fun e!969021 () List!16170)

(assert (=> d!448511 (= (list!6360 (c!248132 (_1!8520 lt!526567))) e!969021)))

(declare-fun b!1515043 () Bool)

(declare-fun e!969022 () List!16170)

(assert (=> b!1515043 (= e!969021 e!969022)))

(declare-fun c!248233 () Bool)

(assert (=> b!1515043 (= c!248233 ((_ is Leaf!8074) (c!248132 (_1!8520 lt!526567))))))

(declare-fun b!1515045 () Bool)

(assert (=> b!1515045 (= e!969022 (++!4367 (list!6360 (left!13375 (c!248132 (_1!8520 lt!526567)))) (list!6360 (right!13705 (c!248132 (_1!8520 lt!526567))))))))

(declare-fun b!1515042 () Bool)

(assert (=> b!1515042 (= e!969021 Nil!16102)))

(declare-fun b!1515044 () Bool)

(declare-fun list!6362 (IArray!10899) List!16170)

(assert (=> b!1515044 (= e!969022 (list!6362 (xs!8230 (c!248132 (_1!8520 lt!526567)))))))

(assert (= (and d!448511 c!248232) b!1515042))

(assert (= (and d!448511 (not c!248232)) b!1515043))

(assert (= (and b!1515043 c!248233) b!1515044))

(assert (= (and b!1515043 (not c!248233)) b!1515045))

(declare-fun m!1779539 () Bool)

(assert (=> b!1515045 m!1779539))

(declare-fun m!1779541 () Bool)

(assert (=> b!1515045 m!1779541))

(assert (=> b!1515045 m!1779539))

(assert (=> b!1515045 m!1779541))

(declare-fun m!1779543 () Bool)

(assert (=> b!1515045 m!1779543))

(declare-fun m!1779545 () Bool)

(assert (=> b!1515044 m!1779545))

(assert (=> d!448429 d!448511))

(declare-fun d!448513 () Bool)

(declare-fun c!248234 () Bool)

(assert (=> d!448513 (= c!248234 ((_ is Nil!16102) lt!526618))))

(declare-fun e!969023 () (InoxSet Token!5356))

(assert (=> d!448513 (= (content!2317 lt!526618) e!969023)))

(declare-fun b!1515046 () Bool)

(assert (=> b!1515046 (= e!969023 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1515047 () Bool)

(assert (=> b!1515047 (= e!969023 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 lt!526618) true) (content!2317 (t!139454 lt!526618))))))

(assert (= (and d!448513 c!248234) b!1515046))

(assert (= (and d!448513 (not c!248234)) b!1515047))

(declare-fun m!1779547 () Bool)

(assert (=> b!1515047 m!1779547))

(declare-fun m!1779549 () Bool)

(assert (=> b!1515047 m!1779549))

(assert (=> d!448343 d!448513))

(assert (=> d!448343 d!448471))

(declare-fun d!448515 () Bool)

(declare-fun c!248235 () Bool)

(assert (=> d!448515 (= c!248235 ((_ is Nil!16102) (++!4367 lt!526582 lt!526572)))))

(declare-fun e!969024 () (InoxSet Token!5356))

(assert (=> d!448515 (= (content!2317 (++!4367 lt!526582 lt!526572)) e!969024)))

(declare-fun b!1515048 () Bool)

(assert (=> b!1515048 (= e!969024 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1515049 () Bool)

(assert (=> b!1515049 (= e!969024 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 (++!4367 lt!526582 lt!526572)) true) (content!2317 (t!139454 (++!4367 lt!526582 lt!526572)))))))

(assert (= (and d!448515 c!248235) b!1515048))

(assert (= (and d!448515 (not c!248235)) b!1515049))

(declare-fun m!1779551 () Bool)

(assert (=> b!1515049 m!1779551))

(declare-fun m!1779553 () Bool)

(assert (=> b!1515049 m!1779553))

(assert (=> d!448343 d!448515))

(declare-fun d!448517 () Bool)

(declare-fun e!969025 () Bool)

(assert (=> d!448517 e!969025))

(declare-fun res!681447 () Bool)

(assert (=> d!448517 (=> (not res!681447) (not e!969025))))

(assert (=> d!448517 (= res!681447 (isBalanced!1612 (prepend!470 (c!248132 (_1!8520 lt!526691)) (_1!8525 (v!22915 lt!526692)))))))

(declare-fun lt!526743 () BalanceConc!10836)

(assert (=> d!448517 (= lt!526743 (BalanceConc!10837 (prepend!470 (c!248132 (_1!8520 lt!526691)) (_1!8525 (v!22915 lt!526692)))))))

(assert (=> d!448517 (= (prepend!469 (_1!8520 lt!526691) (_1!8525 (v!22915 lt!526692))) lt!526743)))

(declare-fun b!1515050 () Bool)

(assert (=> b!1515050 (= e!969025 (= (list!6358 lt!526743) (Cons!16102 (_1!8525 (v!22915 lt!526692)) (list!6358 (_1!8520 lt!526691)))))))

(assert (= (and d!448517 res!681447) b!1515050))

(declare-fun m!1779555 () Bool)

(assert (=> d!448517 m!1779555))

(assert (=> d!448517 m!1779555))

(declare-fun m!1779557 () Bool)

(assert (=> d!448517 m!1779557))

(declare-fun m!1779559 () Bool)

(assert (=> b!1515050 m!1779559))

(declare-fun m!1779561 () Bool)

(assert (=> b!1515050 m!1779561))

(assert (=> b!1514714 d!448517))

(declare-fun b!1515051 () Bool)

(declare-fun e!969029 () Bool)

(declare-fun lt!526744 () tuple2!14988)

(assert (=> b!1515051 (= e!969029 (not (isEmpty!9941 (_1!8520 lt!526744))))))

(declare-fun d!448519 () Bool)

(declare-fun e!969026 () Bool)

(assert (=> d!448519 e!969026))

(declare-fun res!681448 () Bool)

(assert (=> d!448519 (=> (not res!681448) (not e!969026))))

(declare-fun e!969028 () Bool)

(assert (=> d!448519 (= res!681448 e!969028)))

(declare-fun c!248237 () Bool)

(assert (=> d!448519 (= c!248237 (> (size!13024 (_1!8520 lt!526744)) 0))))

(declare-fun e!969027 () tuple2!14988)

(assert (=> d!448519 (= lt!526744 e!969027)))

(declare-fun c!248236 () Bool)

(declare-fun lt!526746 () Option!2934)

(assert (=> d!448519 (= c!248236 ((_ is Some!2933) lt!526746))))

(assert (=> d!448519 (= lt!526746 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526692))))))

(assert (=> d!448519 (= (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526692))) lt!526744)))

(declare-fun b!1515052 () Bool)

(declare-fun res!681449 () Bool)

(assert (=> b!1515052 (=> (not res!681449) (not e!969026))))

(assert (=> b!1515052 (= res!681449 (= (list!6358 (_1!8520 lt!526744)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526692)))))))))

(declare-fun b!1515053 () Bool)

(assert (=> b!1515053 (= e!969028 e!969029)))

(declare-fun res!681450 () Bool)

(assert (=> b!1515053 (= res!681450 (< (size!13025 (_2!8520 lt!526744)) (size!13025 (_2!8525 (v!22915 lt!526692)))))))

(assert (=> b!1515053 (=> (not res!681450) (not e!969029))))

(declare-fun b!1515054 () Bool)

(declare-fun lt!526745 () tuple2!14988)

(assert (=> b!1515054 (= e!969027 (tuple2!14989 (prepend!469 (_1!8520 lt!526745) (_1!8525 (v!22915 lt!526746))) (_2!8520 lt!526745)))))

(assert (=> b!1515054 (= lt!526745 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526746))))))

(declare-fun b!1515055 () Bool)

(assert (=> b!1515055 (= e!969027 (tuple2!14989 (BalanceConc!10837 Empty!5447) (_2!8525 (v!22915 lt!526692))))))

(declare-fun b!1515056 () Bool)

(assert (=> b!1515056 (= e!969026 (= (list!6357 (_2!8520 lt!526744)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526692)))))))))

(declare-fun b!1515057 () Bool)

(assert (=> b!1515057 (= e!969028 (= (list!6357 (_2!8520 lt!526744)) (list!6357 (_2!8525 (v!22915 lt!526692)))))))

(assert (= (and d!448519 c!248236) b!1515054))

(assert (= (and d!448519 (not c!248236)) b!1515055))

(assert (= (and d!448519 c!248237) b!1515053))

(assert (= (and d!448519 (not c!248237)) b!1515057))

(assert (= (and b!1515053 res!681450) b!1515051))

(assert (= (and d!448519 res!681448) b!1515052))

(assert (= (and b!1515052 res!681449) b!1515056))

(declare-fun m!1779563 () Bool)

(assert (=> b!1515057 m!1779563))

(declare-fun m!1779565 () Bool)

(assert (=> b!1515057 m!1779565))

(declare-fun m!1779567 () Bool)

(assert (=> b!1515052 m!1779567))

(assert (=> b!1515052 m!1779565))

(assert (=> b!1515052 m!1779565))

(declare-fun m!1779569 () Bool)

(assert (=> b!1515052 m!1779569))

(declare-fun m!1779571 () Bool)

(assert (=> b!1515054 m!1779571))

(declare-fun m!1779573 () Bool)

(assert (=> b!1515054 m!1779573))

(declare-fun m!1779575 () Bool)

(assert (=> b!1515051 m!1779575))

(assert (=> b!1515056 m!1779563))

(assert (=> b!1515056 m!1779565))

(assert (=> b!1515056 m!1779565))

(assert (=> b!1515056 m!1779569))

(declare-fun m!1779577 () Bool)

(assert (=> b!1515053 m!1779577))

(declare-fun m!1779579 () Bool)

(assert (=> b!1515053 m!1779579))

(declare-fun m!1779581 () Bool)

(assert (=> d!448519 m!1779581))

(declare-fun m!1779583 () Bool)

(assert (=> d!448519 m!1779583))

(assert (=> b!1514714 d!448519))

(assert (=> d!448327 d!448495))

(assert (=> d!448327 d!448439))

(assert (=> d!448327 d!448403))

(declare-fun b!1515059 () Bool)

(declare-fun res!681453 () Bool)

(declare-fun e!969031 () Bool)

(assert (=> b!1515059 (=> (not res!681453) (not e!969031))))

(assert (=> b!1515059 (= res!681453 (= (head!3092 lt!526609) (head!3092 lt!526605)))))

(declare-fun d!448521 () Bool)

(declare-fun e!969030 () Bool)

(assert (=> d!448521 e!969030))

(declare-fun res!681452 () Bool)

(assert (=> d!448521 (=> res!681452 e!969030)))

(declare-fun lt!526747 () Bool)

(assert (=> d!448521 (= res!681452 (not lt!526747))))

(declare-fun e!969032 () Bool)

(assert (=> d!448521 (= lt!526747 e!969032)))

(declare-fun res!681454 () Bool)

(assert (=> d!448521 (=> res!681454 e!969032)))

(assert (=> d!448521 (= res!681454 ((_ is Nil!16101) lt!526609))))

(assert (=> d!448521 (= (isPrefix!1220 lt!526609 lt!526605) lt!526747)))

(declare-fun b!1515058 () Bool)

(assert (=> b!1515058 (= e!969032 e!969031)))

(declare-fun res!681451 () Bool)

(assert (=> b!1515058 (=> (not res!681451) (not e!969031))))

(assert (=> b!1515058 (= res!681451 (not ((_ is Nil!16101) lt!526605)))))

(declare-fun b!1515061 () Bool)

(assert (=> b!1515061 (= e!969030 (>= (size!13022 lt!526605) (size!13022 lt!526609)))))

(declare-fun b!1515060 () Bool)

(assert (=> b!1515060 (= e!969031 (isPrefix!1220 (tail!2187 lt!526609) (tail!2187 lt!526605)))))

(assert (= (and d!448521 (not res!681454)) b!1515058))

(assert (= (and b!1515058 res!681451) b!1515059))

(assert (= (and b!1515059 res!681453) b!1515060))

(assert (= (and d!448521 (not res!681452)) b!1515061))

(declare-fun m!1779585 () Bool)

(assert (=> b!1515059 m!1779585))

(declare-fun m!1779587 () Bool)

(assert (=> b!1515059 m!1779587))

(declare-fun m!1779589 () Bool)

(assert (=> b!1515061 m!1779589))

(declare-fun m!1779591 () Bool)

(assert (=> b!1515061 m!1779591))

(declare-fun m!1779593 () Bool)

(assert (=> b!1515060 m!1779593))

(declare-fun m!1779595 () Bool)

(assert (=> b!1515060 m!1779595))

(assert (=> b!1515060 m!1779593))

(assert (=> b!1515060 m!1779595))

(declare-fun m!1779597 () Bool)

(assert (=> b!1515060 m!1779597))

(assert (=> d!448327 d!448521))

(declare-fun d!448523 () Bool)

(assert (=> d!448523 (isPrefix!1220 lt!526609 lt!526605)))

(declare-fun lt!526748 () Unit!25754)

(assert (=> d!448523 (= lt!526748 (choose!9165 lt!526609 lt!526605))))

(assert (=> d!448523 (= (lemmaIsPrefixRefl!850 lt!526609 lt!526605) lt!526748)))

(declare-fun bs!364992 () Bool)

(assert (= bs!364992 d!448523))

(assert (=> bs!364992 m!1778903))

(declare-fun m!1779599 () Bool)

(assert (=> bs!364992 m!1779599))

(assert (=> d!448327 d!448523))

(declare-fun d!448525 () Bool)

(assert (=> d!448525 (= (isDefined!2357 (_1!8526 lt!526612)) (not (isEmpty!9942 (_1!8526 lt!526612))))))

(declare-fun bs!364993 () Bool)

(assert (= bs!364993 d!448525))

(declare-fun m!1779601 () Bool)

(assert (=> bs!364993 m!1779601))

(assert (=> d!448327 d!448525))

(assert (=> d!448327 d!448501))

(declare-fun d!448527 () Bool)

(declare-fun lt!526751 () Int)

(assert (=> d!448527 (>= lt!526751 0)))

(declare-fun e!969035 () Int)

(assert (=> d!448527 (= lt!526751 e!969035)))

(declare-fun c!248240 () Bool)

(assert (=> d!448527 (= c!248240 ((_ is Nil!16102) lt!526618))))

(assert (=> d!448527 (= (size!13023 lt!526618) lt!526751)))

(declare-fun b!1515066 () Bool)

(assert (=> b!1515066 (= e!969035 0)))

(declare-fun b!1515067 () Bool)

(assert (=> b!1515067 (= e!969035 (+ 1 (size!13023 (t!139454 lt!526618))))))

(assert (= (and d!448527 c!248240) b!1515066))

(assert (= (and d!448527 (not c!248240)) b!1515067))

(declare-fun m!1779603 () Bool)

(assert (=> b!1515067 m!1779603))

(assert (=> b!1514573 d!448527))

(declare-fun d!448529 () Bool)

(declare-fun lt!526752 () Int)

(assert (=> d!448529 (>= lt!526752 0)))

(declare-fun e!969036 () Int)

(assert (=> d!448529 (= lt!526752 e!969036)))

(declare-fun c!248241 () Bool)

(assert (=> d!448529 (= c!248241 ((_ is Nil!16102) lt!526584))))

(assert (=> d!448529 (= (size!13023 lt!526584) lt!526752)))

(declare-fun b!1515068 () Bool)

(assert (=> b!1515068 (= e!969036 0)))

(declare-fun b!1515069 () Bool)

(assert (=> b!1515069 (= e!969036 (+ 1 (size!13023 (t!139454 lt!526584))))))

(assert (= (and d!448529 c!248241) b!1515068))

(assert (= (and d!448529 (not c!248241)) b!1515069))

(assert (=> b!1515069 m!1779477))

(assert (=> b!1514573 d!448529))

(declare-fun d!448531 () Bool)

(declare-fun lt!526753 () Int)

(assert (=> d!448531 (>= lt!526753 0)))

(declare-fun e!969037 () Int)

(assert (=> d!448531 (= lt!526753 e!969037)))

(declare-fun c!248242 () Bool)

(assert (=> d!448531 (= c!248242 ((_ is Nil!16102) (++!4367 lt!526582 lt!526572)))))

(assert (=> d!448531 (= (size!13023 (++!4367 lt!526582 lt!526572)) lt!526753)))

(declare-fun b!1515070 () Bool)

(assert (=> b!1515070 (= e!969037 0)))

(declare-fun b!1515071 () Bool)

(assert (=> b!1515071 (= e!969037 (+ 1 (size!13023 (t!139454 (++!4367 lt!526582 lt!526572)))))))

(assert (= (and d!448531 c!248242) b!1515070))

(assert (= (and d!448531 (not c!248242)) b!1515071))

(declare-fun m!1779605 () Bool)

(assert (=> b!1515071 m!1779605))

(assert (=> b!1514573 d!448531))

(declare-fun bs!364994 () Bool)

(declare-fun d!448533 () Bool)

(assert (= bs!364994 (and d!448533 d!448453)))

(declare-fun lambda!64571 () Int)

(assert (=> bs!364994 (= lambda!64571 lambda!64562)))

(declare-fun bs!364995 () Bool)

(assert (= bs!364995 (and d!448533 d!448477)))

(assert (=> bs!364995 (= lambda!64571 lambda!64563)))

(declare-fun bs!364996 () Bool)

(assert (= bs!364996 (and d!448533 d!448481)))

(assert (=> bs!364996 (= lambda!64571 lambda!64564)))

(assert (=> d!448533 (= (inv!21347 setElem!9201) (forall!3861 (exprs!1181 setElem!9201) lambda!64571))))

(declare-fun bs!364997 () Bool)

(assert (= bs!364997 d!448533))

(declare-fun m!1779607 () Bool)

(assert (=> bs!364997 m!1779607))

(assert (=> setNonEmpty!9201 d!448533))

(declare-fun d!448535 () Bool)

(declare-fun lt!526756 () Bool)

(assert (=> d!448535 (= lt!526756 (isEmpty!9939 (list!6358 (_1!8520 lt!526687))))))

(declare-fun isEmpty!9944 (Conc!5447) Bool)

(assert (=> d!448535 (= lt!526756 (isEmpty!9944 (c!248132 (_1!8520 lt!526687))))))

(assert (=> d!448535 (= (isEmpty!9941 (_1!8520 lt!526687)) lt!526756)))

(declare-fun bs!364998 () Bool)

(assert (= bs!364998 d!448535))

(assert (=> bs!364998 m!1779189))

(assert (=> bs!364998 m!1779189))

(declare-fun m!1779609 () Bool)

(assert (=> bs!364998 m!1779609))

(declare-fun m!1779611 () Bool)

(assert (=> bs!364998 m!1779611))

(assert (=> b!1514701 d!448535))

(declare-fun d!448537 () Bool)

(assert (=> d!448537 (= (list!6357 (_2!8520 lt!526677)) (list!6359 (c!248131 (_2!8520 lt!526677))))))

(declare-fun bs!364999 () Bool)

(assert (= bs!364999 d!448537))

(declare-fun m!1779613 () Bool)

(assert (=> bs!364999 m!1779613))

(assert (=> b!1514668 d!448537))

(declare-fun d!448539 () Bool)

(assert (=> d!448539 (= (list!6357 (_2!8525 (v!22915 lt!526574))) (list!6359 (c!248131 (_2!8525 (v!22915 lt!526574)))))))

(declare-fun bs!365000 () Bool)

(assert (= bs!365000 d!448539))

(declare-fun m!1779615 () Bool)

(assert (=> bs!365000 m!1779615))

(assert (=> b!1514668 d!448539))

(declare-fun d!448541 () Bool)

(declare-fun lt!526757 () Int)

(assert (=> d!448541 (>= lt!526757 0)))

(declare-fun e!969038 () Int)

(assert (=> d!448541 (= lt!526757 e!969038)))

(declare-fun c!248243 () Bool)

(assert (=> d!448541 (= c!248243 ((_ is Nil!16101) lt!526661))))

(assert (=> d!448541 (= (size!13022 lt!526661) lt!526757)))

(declare-fun b!1515072 () Bool)

(assert (=> b!1515072 (= e!969038 0)))

(declare-fun b!1515073 () Bool)

(assert (=> b!1515073 (= e!969038 (+ 1 (size!13022 (t!139453 lt!526661))))))

(assert (= (and d!448541 c!248243) b!1515072))

(assert (= (and d!448541 (not c!248243)) b!1515073))

(declare-fun m!1779617 () Bool)

(assert (=> b!1515073 m!1779617))

(assert (=> b!1514639 d!448541))

(declare-fun d!448543 () Bool)

(declare-fun lt!526758 () Int)

(assert (=> d!448543 (>= lt!526758 0)))

(declare-fun e!969039 () Int)

(assert (=> d!448543 (= lt!526758 e!969039)))

(declare-fun c!248244 () Bool)

(assert (=> d!448543 (= c!248244 ((_ is Nil!16101) lt!526569))))

(assert (=> d!448543 (= (size!13022 lt!526569) lt!526758)))

(declare-fun b!1515074 () Bool)

(assert (=> b!1515074 (= e!969039 0)))

(declare-fun b!1515075 () Bool)

(assert (=> b!1515075 (= e!969039 (+ 1 (size!13022 (t!139453 lt!526569))))))

(assert (= (and d!448543 c!248244) b!1515074))

(assert (= (and d!448543 (not c!248244)) b!1515075))

(assert (=> b!1515075 m!1779429))

(assert (=> b!1514639 d!448543))

(assert (=> b!1514639 d!448465))

(declare-fun b!1515076 () Bool)

(declare-fun e!969041 () Bool)

(declare-fun lt!526767 () tuple4!680)

(assert (=> b!1515076 (= e!969041 (= (totalInput!2301 (_4!340 lt!526767)) totalInput!458))))

(declare-fun b!1515077 () Bool)

(declare-fun e!969043 () tuple4!682)

(declare-fun lt!526759 () tuple4!680)

(assert (=> b!1515077 (= e!969043 (tuple4!683 (_1!8526 lt!526759) (_2!8526 lt!526759) (_4!340 lt!526759) (_3!1028 lt!526759)))))

(declare-fun call!100400 () tuple4!680)

(assert (=> b!1515077 (= lt!526759 call!100400)))

(declare-fun b!1515078 () Bool)

(declare-fun res!681455 () Bool)

(assert (=> b!1515078 (=> (not res!681455) (not e!969041))))

(assert (=> b!1515078 (= res!681455 (valid!1191 (_3!1028 lt!526767)))))

(declare-fun b!1515080 () Bool)

(declare-fun e!969044 () Bool)

(assert (=> b!1515080 (= e!969044 (= (list!6357 (_2!8525 (get!4742 (_1!8526 lt!526767)))) (_2!8528 (get!4743 (maxPrefix!1210 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102))))))))

(declare-fun b!1515081 () Bool)

(declare-fun e!969042 () Bool)

(assert (=> b!1515081 (= e!969042 e!969044)))

(declare-fun res!681461 () Bool)

(assert (=> b!1515081 (=> (not res!681461) (not e!969044))))

(assert (=> b!1515081 (= res!681461 (= (_1!8525 (get!4742 (_1!8526 lt!526767))) (_1!8528 (get!4743 (maxPrefix!1210 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102))))))))

(declare-fun e!969040 () Bool)

(declare-fun b!1515082 () Bool)

(assert (=> b!1515082 (= e!969040 (= (list!6357 (_2!8525 (get!4742 (_1!8526 lt!526767)))) (_2!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102))))))))

(declare-fun b!1515083 () Bool)

(declare-fun res!681458 () Bool)

(assert (=> b!1515083 (=> (not res!681458) (not e!969041))))

(declare-fun e!969045 () Bool)

(assert (=> b!1515083 (= res!681458 e!969045)))

(declare-fun res!681457 () Bool)

(assert (=> b!1515083 (=> res!681457 e!969045)))

(assert (=> b!1515083 (= res!681457 (not (isDefined!2357 (_1!8526 lt!526767))))))

(declare-fun b!1515084 () Bool)

(declare-fun res!681463 () Bool)

(assert (=> b!1515084 (=> (not res!681463) (not e!969041))))

(assert (=> b!1515084 (= res!681463 (valid!1189 (_2!8526 lt!526767)))))

(declare-fun b!1515085 () Bool)

(declare-fun res!681460 () Bool)

(assert (=> b!1515085 (=> (not res!681460) (not e!969041))))

(assert (=> b!1515085 (= res!681460 (valid!1190 (_4!340 lt!526767)))))

(declare-fun b!1515086 () Bool)

(declare-fun lt!526765 () tuple4!680)

(declare-fun lt!526762 () tuple4!680)

(assert (=> b!1515086 (= e!969043 (tuple4!683 (ite (and ((_ is None!2933) (_1!8526 lt!526765)) ((_ is None!2933) (_1!8526 lt!526762))) None!2933 (ite ((_ is None!2933) (_1!8526 lt!526762)) (_1!8526 lt!526765) (ite ((_ is None!2933) (_1!8526 lt!526765)) (_1!8526 lt!526762) (ite (>= (size!13019 (_1!8525 (v!22915 (_1!8526 lt!526765)))) (size!13019 (_1!8525 (v!22915 (_1!8526 lt!526762))))) (_1!8526 lt!526765) (_1!8526 lt!526762))))) (_2!8526 lt!526762) (_4!340 lt!526762) (_3!1028 lt!526762)))))

(assert (=> b!1515086 (= lt!526765 call!100400)))

(assert (=> b!1515086 (= lt!526762 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 (t!139457 (t!139457 rules!1640)) input!1102 totalInput!458 (_2!8526 lt!526765) (_3!1028 lt!526765) (_4!340 lt!526765)))))

(declare-fun b!1515087 () Bool)

(assert (=> b!1515087 (= e!969045 e!969040)))

(declare-fun res!681456 () Bool)

(assert (=> b!1515087 (=> (not res!681456) (not e!969040))))

(assert (=> b!1515087 (= res!681456 (= (_1!8525 (get!4742 (_1!8526 lt!526767))) (_1!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102))))))))

(declare-fun bm!100395 () Bool)

(assert (=> bm!100395 (= call!100400 (maxPrefixOneRuleZipperSequenceV3Mem!12 thiss!13241 (h!21506 (t!139457 rules!1640)) input!1102 totalInput!458 (_2!8526 lt!526610) (_3!1028 lt!526610) (_4!340 lt!526610)))))

(declare-fun b!1515079 () Bool)

(declare-fun res!681464 () Bool)

(assert (=> b!1515079 (=> (not res!681464) (not e!969041))))

(assert (=> b!1515079 (= res!681464 e!969042)))

(declare-fun res!681462 () Bool)

(assert (=> b!1515079 (=> res!681462 e!969042)))

(assert (=> b!1515079 (= res!681462 (not (isDefined!2357 (_1!8526 lt!526767))))))

(declare-fun d!448545 () Bool)

(assert (=> d!448545 e!969041))

(declare-fun res!681459 () Bool)

(assert (=> d!448545 (=> (not res!681459) (not e!969041))))

(assert (=> d!448545 (= res!681459 (= (isDefined!2357 (_1!8526 lt!526767)) (isDefined!2358 (maxPrefixZipper!261 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102)))))))

(declare-fun lt!526766 () tuple4!682)

(assert (=> d!448545 (= lt!526767 (tuple4!681 (_1!8527 lt!526766) (_2!8527 lt!526766) (_4!341 lt!526766) (_3!1029 lt!526766)))))

(assert (=> d!448545 (= lt!526766 e!969043)))

(declare-fun c!248245 () Bool)

(assert (=> d!448545 (= c!248245 (and ((_ is Cons!16105) (t!139457 rules!1640)) ((_ is Nil!16105) (t!139457 (t!139457 rules!1640)))))))

(declare-fun lt!526761 () Unit!25754)

(declare-fun lt!526763 () Unit!25754)

(assert (=> d!448545 (= lt!526761 lt!526763)))

(declare-fun lt!526764 () List!16169)

(declare-fun lt!526760 () List!16169)

(assert (=> d!448545 (isPrefix!1220 lt!526764 lt!526760)))

(assert (=> d!448545 (= lt!526763 (lemmaIsPrefixRefl!850 lt!526764 lt!526760))))

(assert (=> d!448545 (= lt!526760 (list!6357 input!1102))))

(assert (=> d!448545 (= lt!526764 (list!6357 input!1102))))

(assert (=> d!448545 (rulesValidInductive!858 thiss!13241 (t!139457 rules!1640))))

(assert (=> d!448545 (= (maxPrefixZipperSequenceV3Mem!27 thiss!13241 (t!139457 rules!1640) input!1102 totalInput!458 (_2!8526 lt!526610) (_3!1028 lt!526610) (_4!340 lt!526610)) lt!526767)))

(assert (= (and d!448545 c!248245) b!1515077))

(assert (= (and d!448545 (not c!248245)) b!1515086))

(assert (= (or b!1515077 b!1515086) bm!100395))

(assert (= (and d!448545 res!681459) b!1515083))

(assert (= (and b!1515083 (not res!681457)) b!1515087))

(assert (= (and b!1515087 res!681456) b!1515082))

(assert (= (and b!1515083 res!681458) b!1515079))

(assert (= (and b!1515079 (not res!681462)) b!1515081))

(assert (= (and b!1515081 res!681461) b!1515080))

(assert (= (and b!1515079 res!681464) b!1515084))

(assert (= (and b!1515084 res!681463) b!1515078))

(assert (= (and b!1515078 res!681455) b!1515085))

(assert (= (and b!1515085 res!681460) b!1515076))

(declare-fun m!1779619 () Bool)

(assert (=> b!1515081 m!1779619))

(assert (=> b!1515081 m!1778769))

(assert (=> b!1515081 m!1778769))

(declare-fun m!1779621 () Bool)

(assert (=> b!1515081 m!1779621))

(assert (=> b!1515081 m!1779621))

(declare-fun m!1779623 () Bool)

(assert (=> b!1515081 m!1779623))

(assert (=> b!1515087 m!1779619))

(assert (=> b!1515087 m!1778769))

(assert (=> b!1515087 m!1778769))

(assert (=> b!1515087 m!1779375))

(assert (=> b!1515087 m!1779375))

(declare-fun m!1779625 () Bool)

(assert (=> b!1515087 m!1779625))

(declare-fun m!1779627 () Bool)

(assert (=> b!1515086 m!1779627))

(declare-fun m!1779629 () Bool)

(assert (=> b!1515084 m!1779629))

(declare-fun m!1779631 () Bool)

(assert (=> b!1515083 m!1779631))

(declare-fun m!1779633 () Bool)

(assert (=> b!1515085 m!1779633))

(assert (=> b!1515079 m!1779631))

(declare-fun m!1779635 () Bool)

(assert (=> bm!100395 m!1779635))

(declare-fun m!1779637 () Bool)

(assert (=> b!1515078 m!1779637))

(assert (=> d!448545 m!1778769))

(assert (=> d!448545 m!1778769))

(assert (=> d!448545 m!1779375))

(declare-fun m!1779639 () Bool)

(assert (=> d!448545 m!1779639))

(assert (=> d!448545 m!1779375))

(declare-fun m!1779641 () Bool)

(assert (=> d!448545 m!1779641))

(assert (=> d!448545 m!1779507))

(declare-fun m!1779643 () Bool)

(assert (=> d!448545 m!1779643))

(assert (=> d!448545 m!1779631))

(assert (=> b!1515082 m!1778769))

(assert (=> b!1515082 m!1779375))

(assert (=> b!1515082 m!1779625))

(assert (=> b!1515082 m!1778769))

(assert (=> b!1515082 m!1779375))

(assert (=> b!1515082 m!1779619))

(declare-fun m!1779645 () Bool)

(assert (=> b!1515082 m!1779645))

(assert (=> b!1515080 m!1778769))

(assert (=> b!1515080 m!1779621))

(assert (=> b!1515080 m!1778769))

(assert (=> b!1515080 m!1779621))

(assert (=> b!1515080 m!1779623))

(assert (=> b!1515080 m!1779619))

(assert (=> b!1515080 m!1779645))

(assert (=> b!1514543 d!448545))

(declare-fun bs!365001 () Bool)

(declare-fun d!448547 () Bool)

(assert (= bs!365001 (and d!448547 d!448453)))

(declare-fun lambda!64572 () Int)

(assert (=> bs!365001 (= lambda!64572 lambda!64562)))

(declare-fun bs!365002 () Bool)

(assert (= bs!365002 (and d!448547 d!448477)))

(assert (=> bs!365002 (= lambda!64572 lambda!64563)))

(declare-fun bs!365003 () Bool)

(assert (= bs!365003 (and d!448547 d!448481)))

(assert (=> bs!365003 (= lambda!64572 lambda!64564)))

(declare-fun bs!365004 () Bool)

(assert (= bs!365004 (and d!448547 d!448533)))

(assert (=> bs!365004 (= lambda!64572 lambda!64571)))

(assert (=> d!448547 (= (inv!21347 (_1!8518 (_1!8519 (h!21500 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))))) (forall!3861 (exprs!1181 (_1!8518 (_1!8519 (h!21500 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))))) lambda!64572))))

(declare-fun bs!365005 () Bool)

(assert (= bs!365005 d!448547))

(declare-fun m!1779647 () Bool)

(assert (=> bs!365005 m!1779647))

(assert (=> b!1514853 d!448547))

(declare-fun bs!365006 () Bool)

(declare-fun d!448549 () Bool)

(assert (= bs!365006 (and d!448549 d!448547)))

(declare-fun lambda!64573 () Int)

(assert (=> bs!365006 (= lambda!64573 lambda!64572)))

(declare-fun bs!365007 () Bool)

(assert (= bs!365007 (and d!448549 d!448453)))

(assert (=> bs!365007 (= lambda!64573 lambda!64562)))

(declare-fun bs!365008 () Bool)

(assert (= bs!365008 (and d!448549 d!448533)))

(assert (=> bs!365008 (= lambda!64573 lambda!64571)))

(declare-fun bs!365009 () Bool)

(assert (= bs!365009 (and d!448549 d!448477)))

(assert (=> bs!365009 (= lambda!64573 lambda!64563)))

(declare-fun bs!365010 () Bool)

(assert (= bs!365010 (and d!448549 d!448481)))

(assert (=> bs!365010 (= lambda!64573 lambda!64564)))

(assert (=> d!448549 (= (inv!21347 setElem!9220) (forall!3861 (exprs!1181 setElem!9220) lambda!64573))))

(declare-fun bs!365011 () Bool)

(assert (= bs!365011 d!448549))

(declare-fun m!1779649 () Bool)

(assert (=> bs!365011 m!1779649))

(assert (=> setNonEmpty!9220 d!448549))

(declare-fun b!1515100 () Bool)

(declare-fun e!969051 () Bool)

(declare-fun e!969050 () Bool)

(assert (=> b!1515100 (= e!969051 e!969050)))

(declare-fun res!681478 () Bool)

(assert (=> b!1515100 (=> (not res!681478) (not e!969050))))

(assert (=> b!1515100 (= res!681478 (<= (- 1) (- (height!813 (left!13375 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574))))) (height!813 (right!13705 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574))))))))))

(declare-fun b!1515101 () Bool)

(declare-fun res!681482 () Bool)

(assert (=> b!1515101 (=> (not res!681482) (not e!969050))))

(assert (=> b!1515101 (= res!681482 (isBalanced!1612 (left!13375 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574))))))))

(declare-fun b!1515102 () Bool)

(declare-fun res!681481 () Bool)

(assert (=> b!1515102 (=> (not res!681481) (not e!969050))))

(assert (=> b!1515102 (= res!681481 (isBalanced!1612 (right!13705 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574))))))))

(declare-fun b!1515103 () Bool)

(assert (=> b!1515103 (= e!969050 (not (isEmpty!9944 (right!13705 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574)))))))))

(declare-fun b!1515104 () Bool)

(declare-fun res!681477 () Bool)

(assert (=> b!1515104 (=> (not res!681477) (not e!969050))))

(assert (=> b!1515104 (= res!681477 (<= (- (height!813 (left!13375 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574))))) (height!813 (right!13705 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574)))))) 1))))

(declare-fun d!448551 () Bool)

(declare-fun res!681480 () Bool)

(assert (=> d!448551 (=> res!681480 e!969051)))

(assert (=> d!448551 (= res!681480 (not ((_ is Node!5447) (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574))))))))

(assert (=> d!448551 (= (isBalanced!1612 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574)))) e!969051)))

(declare-fun b!1515105 () Bool)

(declare-fun res!681479 () Bool)

(assert (=> b!1515105 (=> (not res!681479) (not e!969050))))

(assert (=> b!1515105 (= res!681479 (not (isEmpty!9944 (left!13375 (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574)))))))))

(assert (= (and d!448551 (not res!681480)) b!1515100))

(assert (= (and b!1515100 res!681478) b!1515104))

(assert (= (and b!1515104 res!681477) b!1515101))

(assert (= (and b!1515101 res!681482) b!1515102))

(assert (= (and b!1515102 res!681481) b!1515105))

(assert (= (and b!1515105 res!681479) b!1515103))

(declare-fun m!1779651 () Bool)

(assert (=> b!1515105 m!1779651))

(declare-fun m!1779653 () Bool)

(assert (=> b!1515100 m!1779653))

(declare-fun m!1779655 () Bool)

(assert (=> b!1515100 m!1779655))

(declare-fun m!1779657 () Bool)

(assert (=> b!1515101 m!1779657))

(assert (=> b!1515104 m!1779653))

(assert (=> b!1515104 m!1779655))

(declare-fun m!1779659 () Bool)

(assert (=> b!1515102 m!1779659))

(declare-fun m!1779661 () Bool)

(assert (=> b!1515103 m!1779661))

(assert (=> d!448395 d!448551))

(declare-fun d!448553 () Bool)

(declare-fun e!969054 () Bool)

(assert (=> d!448553 e!969054))

(declare-fun res!681485 () Bool)

(assert (=> d!448553 (=> (not res!681485) (not e!969054))))

(declare-fun lt!526770 () Conc!5447)

(assert (=> d!448553 (= res!681485 (isBalanced!1612 lt!526770))))

(declare-fun fill!69 (Int Token!5356) IArray!10899)

(assert (=> d!448553 (= lt!526770 (++!4369 (Leaf!8074 (fill!69 1 (_1!8525 (v!22915 lt!526574))) 1) (c!248132 (_1!8520 lt!526571))))))

(assert (=> d!448553 (isBalanced!1612 (c!248132 (_1!8520 lt!526571)))))

(assert (=> d!448553 (= (prepend!470 (c!248132 (_1!8520 lt!526571)) (_1!8525 (v!22915 lt!526574))) lt!526770)))

(declare-fun b!1515108 () Bool)

(assert (=> b!1515108 (= e!969054 (= (list!6360 lt!526770) (Cons!16102 (_1!8525 (v!22915 lt!526574)) (list!6360 (c!248132 (_1!8520 lt!526571))))))))

(assert (= (and d!448553 res!681485) b!1515108))

(declare-fun m!1779663 () Bool)

(assert (=> d!448553 m!1779663))

(declare-fun m!1779665 () Bool)

(assert (=> d!448553 m!1779665))

(declare-fun m!1779667 () Bool)

(assert (=> d!448553 m!1779667))

(declare-fun m!1779669 () Bool)

(assert (=> d!448553 m!1779669))

(declare-fun m!1779671 () Bool)

(assert (=> b!1515108 m!1779671))

(assert (=> b!1515108 m!1779529))

(assert (=> d!448395 d!448553))

(declare-fun d!448555 () Bool)

(declare-fun lt!526773 () Int)

(assert (=> d!448555 (= lt!526773 (size!13022 (list!6357 (_2!8520 lt!526677))))))

(assert (=> d!448555 (= lt!526773 (size!13027 (c!248131 (_2!8520 lt!526677))))))

(assert (=> d!448555 (= (size!13025 (_2!8520 lt!526677)) lt!526773)))

(declare-fun bs!365012 () Bool)

(assert (= bs!365012 d!448555))

(assert (=> bs!365012 m!1779105))

(assert (=> bs!365012 m!1779105))

(declare-fun m!1779673 () Bool)

(assert (=> bs!365012 m!1779673))

(declare-fun m!1779675 () Bool)

(assert (=> bs!365012 m!1779675))

(assert (=> b!1514664 d!448555))

(declare-fun d!448557 () Bool)

(declare-fun lt!526774 () Int)

(assert (=> d!448557 (= lt!526774 (size!13022 (list!6357 (_2!8525 (v!22915 lt!526574)))))))

(assert (=> d!448557 (= lt!526774 (size!13027 (c!248131 (_2!8525 (v!22915 lt!526574)))))))

(assert (=> d!448557 (= (size!13025 (_2!8525 (v!22915 lt!526574))) lt!526774)))

(declare-fun bs!365013 () Bool)

(assert (= bs!365013 d!448557))

(assert (=> bs!365013 m!1779107))

(assert (=> bs!365013 m!1779107))

(declare-fun m!1779677 () Bool)

(assert (=> bs!365013 m!1779677))

(declare-fun m!1779679 () Bool)

(assert (=> bs!365013 m!1779679))

(assert (=> b!1514664 d!448557))

(declare-fun d!448559 () Bool)

(declare-fun res!681486 () Bool)

(declare-fun e!969055 () Bool)

(assert (=> d!448559 (=> (not res!681486) (not e!969055))))

(assert (=> d!448559 (= res!681486 (<= (size!13022 (list!6361 (xs!8229 (c!248131 totalInput!458)))) 512))))

(assert (=> d!448559 (= (inv!21344 (c!248131 totalInput!458)) e!969055)))

(declare-fun b!1515109 () Bool)

(declare-fun res!681487 () Bool)

(assert (=> b!1515109 (=> (not res!681487) (not e!969055))))

(assert (=> b!1515109 (= res!681487 (= (csize!11123 (c!248131 totalInput!458)) (size!13022 (list!6361 (xs!8229 (c!248131 totalInput!458))))))))

(declare-fun b!1515110 () Bool)

(assert (=> b!1515110 (= e!969055 (and (> (csize!11123 (c!248131 totalInput!458)) 0) (<= (csize!11123 (c!248131 totalInput!458)) 512)))))

(assert (= (and d!448559 res!681486) b!1515109))

(assert (= (and b!1515109 res!681487) b!1515110))

(declare-fun m!1779681 () Bool)

(assert (=> d!448559 m!1779681))

(assert (=> d!448559 m!1779681))

(declare-fun m!1779683 () Bool)

(assert (=> d!448559 m!1779683))

(assert (=> b!1515109 m!1779681))

(assert (=> b!1515109 m!1779681))

(assert (=> b!1515109 m!1779683))

(assert (=> b!1514710 d!448559))

(declare-fun bs!365014 () Bool)

(declare-fun d!448561 () Bool)

(assert (= bs!365014 (and d!448561 d!448547)))

(declare-fun lambda!64574 () Int)

(assert (=> bs!365014 (= lambda!64574 lambda!64572)))

(declare-fun bs!365015 () Bool)

(assert (= bs!365015 (and d!448561 d!448453)))

(assert (=> bs!365015 (= lambda!64574 lambda!64562)))

(declare-fun bs!365016 () Bool)

(assert (= bs!365016 (and d!448561 d!448533)))

(assert (=> bs!365016 (= lambda!64574 lambda!64571)))

(declare-fun bs!365017 () Bool)

(assert (= bs!365017 (and d!448561 d!448477)))

(assert (=> bs!365017 (= lambda!64574 lambda!64563)))

(declare-fun bs!365018 () Bool)

(assert (= bs!365018 (and d!448561 d!448549)))

(assert (=> bs!365018 (= lambda!64574 lambda!64573)))

(declare-fun bs!365019 () Bool)

(assert (= bs!365019 (and d!448561 d!448481)))

(assert (=> bs!365019 (= lambda!64574 lambda!64564)))

(assert (=> d!448561 (= (inv!21347 setElem!9221) (forall!3861 (exprs!1181 setElem!9221) lambda!64574))))

(declare-fun bs!365020 () Bool)

(assert (= bs!365020 d!448561))

(declare-fun m!1779685 () Bool)

(assert (=> bs!365020 m!1779685))

(assert (=> setNonEmpty!9221 d!448561))

(declare-fun d!448563 () Bool)

(assert (=> d!448563 (= (valid!1191 (_3!1028 lt!526612)) (validCacheMapDown!136 (cache!1814 (_3!1028 lt!526612))))))

(declare-fun bs!365021 () Bool)

(assert (= bs!365021 d!448563))

(declare-fun m!1779687 () Bool)

(assert (=> bs!365021 m!1779687))

(assert (=> b!1514535 d!448563))

(assert (=> b!1514654 d!448449))

(assert (=> b!1514654 d!448451))

(declare-fun d!448565 () Bool)

(declare-fun c!248246 () Bool)

(assert (=> d!448565 (= c!248246 ((_ is Empty!5447) (c!248132 (_1!8520 lt!526570))))))

(declare-fun e!969056 () List!16170)

(assert (=> d!448565 (= (list!6360 (c!248132 (_1!8520 lt!526570))) e!969056)))

(declare-fun b!1515112 () Bool)

(declare-fun e!969057 () List!16170)

(assert (=> b!1515112 (= e!969056 e!969057)))

(declare-fun c!248247 () Bool)

(assert (=> b!1515112 (= c!248247 ((_ is Leaf!8074) (c!248132 (_1!8520 lt!526570))))))

(declare-fun b!1515114 () Bool)

(assert (=> b!1515114 (= e!969057 (++!4367 (list!6360 (left!13375 (c!248132 (_1!8520 lt!526570)))) (list!6360 (right!13705 (c!248132 (_1!8520 lt!526570))))))))

(declare-fun b!1515111 () Bool)

(assert (=> b!1515111 (= e!969056 Nil!16102)))

(declare-fun b!1515113 () Bool)

(assert (=> b!1515113 (= e!969057 (list!6362 (xs!8230 (c!248132 (_1!8520 lt!526570)))))))

(assert (= (and d!448565 c!248246) b!1515111))

(assert (= (and d!448565 (not c!248246)) b!1515112))

(assert (= (and b!1515112 c!248247) b!1515113))

(assert (= (and b!1515112 (not c!248247)) b!1515114))

(declare-fun m!1779689 () Bool)

(assert (=> b!1515114 m!1779689))

(declare-fun m!1779691 () Bool)

(assert (=> b!1515114 m!1779691))

(assert (=> b!1515114 m!1779689))

(assert (=> b!1515114 m!1779691))

(declare-fun m!1779693 () Bool)

(assert (=> b!1515114 m!1779693))

(declare-fun m!1779695 () Bool)

(assert (=> b!1515113 m!1779695))

(assert (=> d!448415 d!448565))

(assert (=> d!448345 d!448341))

(assert (=> d!448345 d!448367))

(declare-fun d!448567 () Bool)

(assert (=> d!448567 (= (++!4368 (++!4368 lt!526569 lt!526561) lt!526580) (++!4368 lt!526569 (++!4368 lt!526561 lt!526580)))))

(assert (=> d!448567 true))

(declare-fun _$52!1043 () Unit!25754)

(assert (=> d!448567 (= (choose!9162 lt!526569 lt!526561 lt!526580) _$52!1043)))

(declare-fun bs!365022 () Bool)

(assert (= bs!365022 d!448567))

(assert (=> bs!365022 m!1778779))

(assert (=> bs!365022 m!1778779))

(assert (=> bs!365022 m!1778797))

(assert (=> bs!365022 m!1778799))

(assert (=> bs!365022 m!1778799))

(assert (=> bs!365022 m!1778801))

(assert (=> d!448345 d!448567))

(assert (=> d!448345 d!448351))

(assert (=> d!448345 d!448355))

(declare-fun d!448569 () Bool)

(declare-fun e!969058 () Bool)

(assert (=> d!448569 e!969058))

(declare-fun res!681488 () Bool)

(assert (=> d!448569 (=> (not res!681488) (not e!969058))))

(assert (=> d!448569 (= res!681488 (isBalanced!1612 (prepend!470 (c!248132 (_1!8520 lt!526685)) (_1!8525 (v!22915 lt!526686)))))))

(declare-fun lt!526775 () BalanceConc!10836)

(assert (=> d!448569 (= lt!526775 (BalanceConc!10837 (prepend!470 (c!248132 (_1!8520 lt!526685)) (_1!8525 (v!22915 lt!526686)))))))

(assert (=> d!448569 (= (prepend!469 (_1!8520 lt!526685) (_1!8525 (v!22915 lt!526686))) lt!526775)))

(declare-fun b!1515115 () Bool)

(assert (=> b!1515115 (= e!969058 (= (list!6358 lt!526775) (Cons!16102 (_1!8525 (v!22915 lt!526686)) (list!6358 (_1!8520 lt!526685)))))))

(assert (= (and d!448569 res!681488) b!1515115))

(declare-fun m!1779697 () Bool)

(assert (=> d!448569 m!1779697))

(assert (=> d!448569 m!1779697))

(declare-fun m!1779699 () Bool)

(assert (=> d!448569 m!1779699))

(declare-fun m!1779701 () Bool)

(assert (=> b!1515115 m!1779701))

(declare-fun m!1779703 () Bool)

(assert (=> b!1515115 m!1779703))

(assert (=> b!1514697 d!448569))

(declare-fun b!1515116 () Bool)

(declare-fun e!969062 () Bool)

(declare-fun lt!526776 () tuple2!14988)

(assert (=> b!1515116 (= e!969062 (not (isEmpty!9941 (_1!8520 lt!526776))))))

(declare-fun d!448571 () Bool)

(declare-fun e!969059 () Bool)

(assert (=> d!448571 e!969059))

(declare-fun res!681489 () Bool)

(assert (=> d!448571 (=> (not res!681489) (not e!969059))))

(declare-fun e!969061 () Bool)

(assert (=> d!448571 (= res!681489 e!969061)))

(declare-fun c!248249 () Bool)

(assert (=> d!448571 (= c!248249 (> (size!13024 (_1!8520 lt!526776)) 0))))

(declare-fun e!969060 () tuple2!14988)

(assert (=> d!448571 (= lt!526776 e!969060)))

(declare-fun c!248248 () Bool)

(declare-fun lt!526778 () Option!2934)

(assert (=> d!448571 (= c!248248 ((_ is Some!2933) lt!526778))))

(assert (=> d!448571 (= lt!526778 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526686))))))

(assert (=> d!448571 (= (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526686))) lt!526776)))

(declare-fun b!1515117 () Bool)

(declare-fun res!681490 () Bool)

(assert (=> b!1515117 (=> (not res!681490) (not e!969059))))

(assert (=> b!1515117 (= res!681490 (= (list!6358 (_1!8520 lt!526776)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526686)))))))))

(declare-fun b!1515118 () Bool)

(assert (=> b!1515118 (= e!969061 e!969062)))

(declare-fun res!681491 () Bool)

(assert (=> b!1515118 (= res!681491 (< (size!13025 (_2!8520 lt!526776)) (size!13025 (_2!8525 (v!22915 lt!526686)))))))

(assert (=> b!1515118 (=> (not res!681491) (not e!969062))))

(declare-fun b!1515119 () Bool)

(declare-fun lt!526777 () tuple2!14988)

(assert (=> b!1515119 (= e!969060 (tuple2!14989 (prepend!469 (_1!8520 lt!526777) (_1!8525 (v!22915 lt!526778))) (_2!8520 lt!526777)))))

(assert (=> b!1515119 (= lt!526777 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526778))))))

(declare-fun b!1515120 () Bool)

(assert (=> b!1515120 (= e!969060 (tuple2!14989 (BalanceConc!10837 Empty!5447) (_2!8525 (v!22915 lt!526686))))))

(declare-fun b!1515121 () Bool)

(assert (=> b!1515121 (= e!969059 (= (list!6357 (_2!8520 lt!526776)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526686)))))))))

(declare-fun b!1515122 () Bool)

(assert (=> b!1515122 (= e!969061 (= (list!6357 (_2!8520 lt!526776)) (list!6357 (_2!8525 (v!22915 lt!526686)))))))

(assert (= (and d!448571 c!248248) b!1515119))

(assert (= (and d!448571 (not c!248248)) b!1515120))

(assert (= (and d!448571 c!248249) b!1515118))

(assert (= (and d!448571 (not c!248249)) b!1515122))

(assert (= (and b!1515118 res!681491) b!1515116))

(assert (= (and d!448571 res!681489) b!1515117))

(assert (= (and b!1515117 res!681490) b!1515121))

(declare-fun m!1779705 () Bool)

(assert (=> b!1515122 m!1779705))

(declare-fun m!1779707 () Bool)

(assert (=> b!1515122 m!1779707))

(declare-fun m!1779709 () Bool)

(assert (=> b!1515117 m!1779709))

(assert (=> b!1515117 m!1779707))

(assert (=> b!1515117 m!1779707))

(declare-fun m!1779711 () Bool)

(assert (=> b!1515117 m!1779711))

(declare-fun m!1779713 () Bool)

(assert (=> b!1515119 m!1779713))

(declare-fun m!1779715 () Bool)

(assert (=> b!1515119 m!1779715))

(declare-fun m!1779717 () Bool)

(assert (=> b!1515116 m!1779717))

(assert (=> b!1515121 m!1779705))

(assert (=> b!1515121 m!1779707))

(assert (=> b!1515121 m!1779707))

(assert (=> b!1515121 m!1779711))

(declare-fun m!1779719 () Bool)

(assert (=> b!1515118 m!1779719))

(declare-fun m!1779721 () Bool)

(assert (=> b!1515118 m!1779721))

(declare-fun m!1779723 () Bool)

(assert (=> d!448571 m!1779723))

(declare-fun m!1779725 () Bool)

(assert (=> d!448571 m!1779725))

(assert (=> b!1514697 d!448571))

(declare-fun d!448573 () Bool)

(declare-fun res!681496 () Bool)

(declare-fun e!969067 () Bool)

(assert (=> d!448573 (=> res!681496 e!969067)))

(assert (=> d!448573 (= res!681496 ((_ is Nil!16105) rules!1640))))

(assert (=> d!448573 (= (noDuplicateTag!1043 thiss!13241 rules!1640 Nil!16106) e!969067)))

(declare-fun b!1515127 () Bool)

(declare-fun e!969068 () Bool)

(assert (=> b!1515127 (= e!969067 e!969068)))

(declare-fun res!681497 () Bool)

(assert (=> b!1515127 (=> (not res!681497) (not e!969068))))

(declare-fun contains!2970 (List!16174 String!18949) Bool)

(assert (=> b!1515127 (= res!681497 (not (contains!2970 Nil!16106 (tag!3111 (h!21506 rules!1640)))))))

(declare-fun b!1515128 () Bool)

(assert (=> b!1515128 (= e!969068 (noDuplicateTag!1043 thiss!13241 (t!139457 rules!1640) (Cons!16106 (tag!3111 (h!21506 rules!1640)) Nil!16106)))))

(assert (= (and d!448573 (not res!681496)) b!1515127))

(assert (= (and b!1515127 res!681497) b!1515128))

(declare-fun m!1779727 () Bool)

(assert (=> b!1515127 m!1779727))

(declare-fun m!1779729 () Bool)

(assert (=> b!1515128 m!1779729))

(assert (=> b!1514547 d!448573))

(declare-fun bs!365023 () Bool)

(declare-fun d!448575 () Bool)

(assert (= bs!365023 (and d!448575 d!448547)))

(declare-fun lambda!64575 () Int)

(assert (=> bs!365023 (= lambda!64575 lambda!64572)))

(declare-fun bs!365024 () Bool)

(assert (= bs!365024 (and d!448575 d!448453)))

(assert (=> bs!365024 (= lambda!64575 lambda!64562)))

(declare-fun bs!365025 () Bool)

(assert (= bs!365025 (and d!448575 d!448533)))

(assert (=> bs!365025 (= lambda!64575 lambda!64571)))

(declare-fun bs!365026 () Bool)

(assert (= bs!365026 (and d!448575 d!448477)))

(assert (=> bs!365026 (= lambda!64575 lambda!64563)))

(declare-fun bs!365027 () Bool)

(assert (= bs!365027 (and d!448575 d!448481)))

(assert (=> bs!365027 (= lambda!64575 lambda!64564)))

(declare-fun bs!365028 () Bool)

(assert (= bs!365028 (and d!448575 d!448561)))

(assert (=> bs!365028 (= lambda!64575 lambda!64574)))

(declare-fun bs!365029 () Bool)

(assert (= bs!365029 (and d!448575 d!448549)))

(assert (=> bs!365029 (= lambda!64575 lambda!64573)))

(assert (=> d!448575 (= (inv!21347 setElem!9217) (forall!3861 (exprs!1181 setElem!9217) lambda!64575))))

(declare-fun bs!365030 () Bool)

(assert (= bs!365030 d!448575))

(declare-fun m!1779731 () Bool)

(assert (=> bs!365030 m!1779731))

(assert (=> setNonEmpty!9217 d!448575))

(assert (=> b!1514487 d!448423))

(declare-fun d!448577 () Bool)

(declare-fun res!681504 () Bool)

(declare-fun e!969071 () Bool)

(assert (=> d!448577 (=> (not res!681504) (not e!969071))))

(assert (=> d!448577 (= res!681504 (= (csize!11124 (c!248132 acc!392)) (+ (size!13026 (left!13375 (c!248132 acc!392))) (size!13026 (right!13705 (c!248132 acc!392))))))))

(assert (=> d!448577 (= (inv!21345 (c!248132 acc!392)) e!969071)))

(declare-fun b!1515135 () Bool)

(declare-fun res!681505 () Bool)

(assert (=> b!1515135 (=> (not res!681505) (not e!969071))))

(assert (=> b!1515135 (= res!681505 (and (not (= (left!13375 (c!248132 acc!392)) Empty!5447)) (not (= (right!13705 (c!248132 acc!392)) Empty!5447))))))

(declare-fun b!1515136 () Bool)

(declare-fun res!681506 () Bool)

(assert (=> b!1515136 (=> (not res!681506) (not e!969071))))

(assert (=> b!1515136 (= res!681506 (= (cheight!5658 (c!248132 acc!392)) (+ (max!0 (height!813 (left!13375 (c!248132 acc!392))) (height!813 (right!13705 (c!248132 acc!392)))) 1)))))

(declare-fun b!1515137 () Bool)

(assert (=> b!1515137 (= e!969071 (<= 0 (cheight!5658 (c!248132 acc!392))))))

(assert (= (and d!448577 res!681504) b!1515135))

(assert (= (and b!1515135 res!681505) b!1515136))

(assert (= (and b!1515136 res!681506) b!1515137))

(declare-fun m!1779733 () Bool)

(assert (=> d!448577 m!1779733))

(declare-fun m!1779735 () Bool)

(assert (=> d!448577 m!1779735))

(declare-fun m!1779737 () Bool)

(assert (=> b!1515136 m!1779737))

(declare-fun m!1779739 () Bool)

(assert (=> b!1515136 m!1779739))

(assert (=> b!1515136 m!1779737))

(assert (=> b!1515136 m!1779739))

(declare-fun m!1779741 () Bool)

(assert (=> b!1515136 m!1779741))

(assert (=> b!1514679 d!448577))

(declare-fun d!448579 () Bool)

(assert (=> d!448579 (= (get!4742 (_1!8526 lt!526612)) (v!22915 (_1!8526 lt!526612)))))

(assert (=> b!1514539 d!448579))

(declare-fun d!448581 () Bool)

(assert (=> d!448581 (= (list!6357 (_2!8525 (get!4742 (_1!8526 lt!526612)))) (list!6359 (c!248131 (_2!8525 (get!4742 (_1!8526 lt!526612))))))))

(declare-fun bs!365031 () Bool)

(assert (= bs!365031 d!448581))

(declare-fun m!1779743 () Bool)

(assert (=> bs!365031 m!1779743))

(assert (=> b!1514539 d!448581))

(assert (=> b!1514539 d!448439))

(assert (=> b!1514539 d!448403))

(assert (=> b!1514539 d!448443))

(declare-fun d!448583 () Bool)

(assert (=> d!448583 true))

(declare-fun lambda!64578 () Int)

(declare-fun order!9553 () Int)

(declare-fun dynLambda!7228 (Int Int) Int)

(assert (=> d!448583 (< (dynLambda!7227 order!9551 (toValue!4198 (transformation!2847 (h!21506 rules!1640)))) (dynLambda!7228 order!9553 lambda!64578))))

(declare-fun Forall2!482 (Int) Bool)

(assert (=> d!448583 (= (equivClasses!1031 (toChars!4057 (transformation!2847 (h!21506 rules!1640))) (toValue!4198 (transformation!2847 (h!21506 rules!1640)))) (Forall2!482 lambda!64578))))

(declare-fun bs!365032 () Bool)

(assert (= bs!365032 d!448583))

(declare-fun m!1779745 () Bool)

(assert (=> bs!365032 m!1779745))

(assert (=> b!1514490 d!448583))

(declare-fun b!1515142 () Bool)

(declare-fun e!969075 () Bool)

(declare-fun e!969074 () Bool)

(assert (=> b!1515142 (= e!969075 e!969074)))

(declare-fun res!681510 () Bool)

(assert (=> b!1515142 (=> (not res!681510) (not e!969074))))

(assert (=> b!1515142 (= res!681510 (<= (- 1) (- (height!813 (left!13375 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))))) (height!813 (right!13705 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))))))))))

(declare-fun b!1515143 () Bool)

(declare-fun res!681514 () Bool)

(assert (=> b!1515143 (=> (not res!681514) (not e!969074))))

(assert (=> b!1515143 (= res!681514 (isBalanced!1612 (left!13375 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))))))))

(declare-fun b!1515144 () Bool)

(declare-fun res!681513 () Bool)

(assert (=> b!1515144 (=> (not res!681513) (not e!969074))))

(assert (=> b!1515144 (= res!681513 (isBalanced!1612 (right!13705 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))))))))

(declare-fun b!1515145 () Bool)

(assert (=> b!1515145 (= e!969074 (not (isEmpty!9944 (right!13705 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))))))))

(declare-fun b!1515146 () Bool)

(declare-fun res!681509 () Bool)

(assert (=> b!1515146 (=> (not res!681509) (not e!969074))))

(assert (=> b!1515146 (= res!681509 (<= (- (height!813 (left!13375 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))))) (height!813 (right!13705 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))))) 1))))

(declare-fun d!448585 () Bool)

(declare-fun res!681512 () Bool)

(assert (=> d!448585 (=> res!681512 e!969075)))

(assert (=> d!448585 (= res!681512 (not ((_ is Node!5447) (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))))))))

(assert (=> d!448585 (= (isBalanced!1612 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))) e!969075)))

(declare-fun b!1515147 () Bool)

(declare-fun res!681511 () Bool)

(assert (=> b!1515147 (=> (not res!681511) (not e!969074))))

(assert (=> b!1515147 (= res!681511 (not (isEmpty!9944 (left!13375 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))))))))

(assert (= (and d!448585 (not res!681512)) b!1515142))

(assert (= (and b!1515142 res!681510) b!1515146))

(assert (= (and b!1515146 res!681509) b!1515143))

(assert (= (and b!1515143 res!681514) b!1515144))

(assert (= (and b!1515144 res!681513) b!1515147))

(assert (= (and b!1515147 res!681511) b!1515145))

(declare-fun m!1779747 () Bool)

(assert (=> b!1515147 m!1779747))

(declare-fun m!1779749 () Bool)

(assert (=> b!1515142 m!1779749))

(declare-fun m!1779751 () Bool)

(assert (=> b!1515142 m!1779751))

(declare-fun m!1779753 () Bool)

(assert (=> b!1515143 m!1779753))

(assert (=> b!1515146 m!1779749))

(assert (=> b!1515146 m!1779751))

(declare-fun m!1779755 () Bool)

(assert (=> b!1515144 m!1779755))

(declare-fun m!1779757 () Bool)

(assert (=> b!1515145 m!1779757))

(assert (=> b!1514690 d!448585))

(declare-fun c!248266 () Bool)

(declare-fun bm!100428 () Bool)

(declare-fun lt!526789 () Conc!5447)

(declare-fun call!100437 () Int)

(assert (=> bm!100428 (= call!100437 (height!813 (ite c!248266 lt!526789 (c!248132 (_1!8520 lt!526585)))))))

(declare-fun b!1515191 () Bool)

(declare-fun res!681529 () Bool)

(declare-fun e!969102 () Bool)

(assert (=> b!1515191 (=> (not res!681529) (not e!969102))))

(declare-fun lt!526787 () Conc!5447)

(assert (=> b!1515191 (= res!681529 (>= (height!813 lt!526787) (max!0 (height!813 (c!248132 acc!392)) (height!813 (c!248132 (_1!8520 lt!526585))))))))

(declare-fun bm!100429 () Bool)

(declare-fun call!100448 () Conc!5447)

(declare-fun call!100446 () Conc!5447)

(assert (=> bm!100429 (= call!100448 call!100446)))

(declare-fun bm!100430 () Bool)

(declare-fun call!100439 () Conc!5447)

(declare-fun call!100438 () Conc!5447)

(assert (=> bm!100430 (= call!100439 call!100438)))

(declare-fun b!1515192 () Bool)

(declare-fun e!969100 () Conc!5447)

(declare-fun call!100445 () Conc!5447)

(assert (=> b!1515192 (= e!969100 call!100445)))

(declare-fun b!1515193 () Bool)

(declare-fun e!969098 () Conc!5447)

(declare-fun e!969101 () Conc!5447)

(assert (=> b!1515193 (= e!969098 e!969101)))

(declare-fun lt!526790 () Conc!5447)

(declare-fun call!100433 () Conc!5447)

(assert (=> b!1515193 (= lt!526790 call!100433)))

(declare-fun c!248271 () Bool)

(declare-fun call!100444 () Int)

(assert (=> b!1515193 (= c!248271 (= call!100444 (- call!100437 3)))))

(declare-fun b!1515194 () Bool)

(declare-fun e!969103 () Conc!5447)

(assert (=> b!1515194 (= e!969103 call!100448)))

(declare-fun b!1515195 () Bool)

(declare-fun res!681525 () Bool)

(assert (=> b!1515195 (=> (not res!681525) (not e!969102))))

(assert (=> b!1515195 (= res!681525 (<= (height!813 lt!526787) (+ (max!0 (height!813 (c!248132 acc!392)) (height!813 (c!248132 (_1!8520 lt!526585)))) 1)))))

(declare-fun b!1515190 () Bool)

(assert (=> b!1515190 (= e!969100 e!969103)))

(declare-fun call!100436 () Conc!5447)

(assert (=> b!1515190 (= lt!526789 call!100436)))

(declare-fun c!248273 () Bool)

(declare-fun call!100442 () Int)

(assert (=> b!1515190 (= c!248273 (= call!100437 (- call!100442 3)))))

(declare-fun d!448587 () Bool)

(assert (=> d!448587 e!969102))

(declare-fun res!681526 () Bool)

(assert (=> d!448587 (=> (not res!681526) (not e!969102))))

(assert (=> d!448587 (= res!681526 (appendAssocInst!370 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))))))

(declare-fun e!969096 () Conc!5447)

(assert (=> d!448587 (= lt!526787 e!969096)))

(declare-fun c!248268 () Bool)

(assert (=> d!448587 (= c!248268 (= (c!248132 acc!392) Empty!5447))))

(declare-fun e!969099 () Bool)

(assert (=> d!448587 e!969099))

(declare-fun res!681527 () Bool)

(assert (=> d!448587 (=> (not res!681527) (not e!969099))))

(assert (=> d!448587 (= res!681527 (isBalanced!1612 (c!248132 acc!392)))))

(assert (=> d!448587 (= (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))) lt!526787)))

(declare-fun bm!100431 () Bool)

(declare-fun call!100435 () Conc!5447)

(assert (=> bm!100431 (= call!100435 call!100445)))

(declare-fun c!248270 () Bool)

(declare-fun c!248267 () Bool)

(declare-fun call!100443 () Conc!5447)

(declare-fun call!100434 () Conc!5447)

(declare-fun bm!100432 () Bool)

(declare-fun <>!117 (Conc!5447 Conc!5447) Conc!5447)

(assert (=> bm!100432 (= call!100434 (<>!117 (ite c!248270 (c!248132 acc!392) (ite c!248266 (ite c!248273 (left!13375 (c!248132 acc!392)) call!100435) (ite c!248267 call!100433 (ite c!248271 call!100443 lt!526790)))) (ite c!248270 (c!248132 (_1!8520 lt!526585)) (ite c!248266 (ite c!248273 call!100435 lt!526789) (ite (or c!248267 c!248271) (right!13705 (c!248132 (_1!8520 lt!526585))) call!100443)))))))

(declare-fun call!100441 () Int)

(declare-fun bm!100433 () Bool)

(assert (=> bm!100433 (= call!100441 (height!813 (ite c!248266 (right!13705 (c!248132 acc!392)) (left!13375 (c!248132 (_1!8520 lt!526585))))))))

(declare-fun b!1515196 () Bool)

(assert (=> b!1515196 (= e!969102 (= (list!6360 lt!526787) (++!4367 (list!6360 (c!248132 acc!392)) (list!6360 (c!248132 (_1!8520 lt!526585))))))))

(declare-fun bm!100434 () Bool)

(declare-fun call!100440 () Conc!5447)

(assert (=> bm!100434 (= call!100445 call!100440)))

(declare-fun b!1515197 () Bool)

(assert (=> b!1515197 (= e!969101 call!100439)))

(declare-fun bm!100435 () Bool)

(assert (=> bm!100435 (= call!100442 (height!813 (ite c!248266 (c!248132 acc!392) (right!13705 (c!248132 (_1!8520 lt!526585))))))))

(declare-fun b!1515198 () Bool)

(assert (=> b!1515198 (= e!969101 call!100439)))

(declare-fun b!1515199 () Bool)

(declare-fun e!969105 () Conc!5447)

(assert (=> b!1515199 (= e!969105 (c!248132 acc!392))))

(declare-fun b!1515200 () Bool)

(declare-fun res!681528 () Bool)

(assert (=> b!1515200 (=> (not res!681528) (not e!969102))))

(assert (=> b!1515200 (= res!681528 (isBalanced!1612 lt!526787))))

(declare-fun bm!100436 () Bool)

(declare-fun call!100447 () Conc!5447)

(assert (=> bm!100436 (= call!100433 call!100447)))

(declare-fun bm!100437 () Bool)

(assert (=> bm!100437 (= call!100436 call!100447)))

(declare-fun bm!100438 () Bool)

(assert (=> bm!100438 (= call!100443 call!100440)))

(declare-fun c!248269 () Bool)

(declare-fun bm!100439 () Bool)

(assert (=> bm!100439 (= call!100440 (<>!117 (ite c!248266 (ite c!248269 (left!13375 (c!248132 acc!392)) (ite c!248273 (left!13375 (right!13705 (c!248132 acc!392))) (left!13375 (c!248132 acc!392)))) (ite c!248271 lt!526790 (right!13705 (left!13375 (c!248132 (_1!8520 lt!526585)))))) (ite c!248266 (ite c!248269 call!100436 (ite c!248273 lt!526789 (left!13375 (right!13705 (c!248132 acc!392))))) (ite c!248271 (right!13705 (left!13375 (c!248132 (_1!8520 lt!526585)))) (right!13705 (c!248132 (_1!8520 lt!526585)))))))))

(declare-fun b!1515201 () Bool)

(assert (=> b!1515201 (= c!248269 (>= call!100444 call!100441))))

(declare-fun e!969104 () Conc!5447)

(assert (=> b!1515201 (= e!969104 e!969100)))

(declare-fun b!1515202 () Bool)

(assert (=> b!1515202 (= e!969096 (c!248132 (_1!8520 lt!526585)))))

(declare-fun b!1515203 () Bool)

(assert (=> b!1515203 (= e!969099 (isBalanced!1612 (c!248132 (_1!8520 lt!526585))))))

(declare-fun b!1515204 () Bool)

(declare-fun lt!526788 () Int)

(assert (=> b!1515204 (= c!248270 (and (<= (- 1) lt!526788) (<= lt!526788 1)))))

(assert (=> b!1515204 (= lt!526788 (- (height!813 (c!248132 (_1!8520 lt!526585))) (height!813 (c!248132 acc!392))))))

(declare-fun e!969097 () Conc!5447)

(assert (=> b!1515204 (= e!969105 e!969097)))

(declare-fun b!1515205 () Bool)

(assert (=> b!1515205 (= e!969097 call!100434)))

(declare-fun b!1515206 () Bool)

(assert (=> b!1515206 (= e!969097 e!969104)))

(assert (=> b!1515206 (= c!248266 (< lt!526788 (- 1)))))

(declare-fun b!1515207 () Bool)

(assert (=> b!1515207 (= e!969098 call!100438)))

(declare-fun bm!100440 () Bool)

(assert (=> bm!100440 (= call!100438 call!100446)))

(declare-fun bm!100441 () Bool)

(assert (=> bm!100441 (= call!100444 (height!813 (ite c!248266 (left!13375 (c!248132 acc!392)) lt!526790)))))

(declare-fun b!1515208 () Bool)

(assert (=> b!1515208 (= e!969096 e!969105)))

(declare-fun c!248272 () Bool)

(assert (=> b!1515208 (= c!248272 (= (c!248132 (_1!8520 lt!526585)) Empty!5447))))

(declare-fun b!1515209 () Bool)

(assert (=> b!1515209 (= e!969103 call!100448)))

(declare-fun b!1515210 () Bool)

(assert (=> b!1515210 (= c!248267 (>= call!100442 call!100441))))

(assert (=> b!1515210 (= e!969104 e!969098)))

(declare-fun bm!100442 () Bool)

(assert (=> bm!100442 (= call!100446 call!100434)))

(declare-fun bm!100443 () Bool)

(assert (=> bm!100443 (= call!100447 (++!4369 (ite c!248266 (ite c!248269 (right!13705 (c!248132 acc!392)) (right!13705 (right!13705 (c!248132 acc!392)))) (c!248132 acc!392)) (ite c!248266 (c!248132 (_1!8520 lt!526585)) (ite c!248267 (left!13375 (c!248132 (_1!8520 lt!526585))) (left!13375 (left!13375 (c!248132 (_1!8520 lt!526585))))))))))

(assert (= (and d!448587 res!681527) b!1515203))

(assert (= (and d!448587 c!248268) b!1515202))

(assert (= (and d!448587 (not c!248268)) b!1515208))

(assert (= (and b!1515208 c!248272) b!1515199))

(assert (= (and b!1515208 (not c!248272)) b!1515204))

(assert (= (and b!1515204 c!248270) b!1515205))

(assert (= (and b!1515204 (not c!248270)) b!1515206))

(assert (= (and b!1515206 c!248266) b!1515201))

(assert (= (and b!1515206 (not c!248266)) b!1515210))

(assert (= (and b!1515201 c!248269) b!1515192))

(assert (= (and b!1515201 (not c!248269)) b!1515190))

(assert (= (and b!1515190 c!248273) b!1515194))

(assert (= (and b!1515190 (not c!248273)) b!1515209))

(assert (= (or b!1515194 b!1515209) bm!100431))

(assert (= (or b!1515194 b!1515209) bm!100429))

(assert (= (or b!1515192 b!1515190) bm!100437))

(assert (= (or b!1515192 bm!100431) bm!100434))

(assert (= (and b!1515210 c!248267) b!1515207))

(assert (= (and b!1515210 (not c!248267)) b!1515193))

(assert (= (and b!1515193 c!248271) b!1515197))

(assert (= (and b!1515193 (not c!248271)) b!1515198))

(assert (= (or b!1515197 b!1515198) bm!100438))

(assert (= (or b!1515197 b!1515198) bm!100430))

(assert (= (or b!1515207 b!1515193) bm!100436))

(assert (= (or b!1515207 bm!100430) bm!100440))

(assert (= (or bm!100437 bm!100436) bm!100443))

(assert (= (or b!1515190 b!1515193) bm!100428))

(assert (= (or bm!100429 bm!100440) bm!100442))

(assert (= (or b!1515201 b!1515193) bm!100441))

(assert (= (or bm!100434 bm!100438) bm!100439))

(assert (= (or b!1515201 b!1515210) bm!100433))

(assert (= (or b!1515190 b!1515210) bm!100435))

(assert (= (or b!1515205 bm!100442) bm!100432))

(assert (= (and d!448587 res!681526) b!1515200))

(assert (= (and b!1515200 res!681528) b!1515195))

(assert (= (and b!1515195 res!681525) b!1515191))

(assert (= (and b!1515191 res!681529) b!1515196))

(declare-fun m!1779759 () Bool)

(assert (=> bm!100433 m!1779759))

(assert (=> b!1515204 m!1779147))

(assert (=> b!1515204 m!1779145))

(declare-fun m!1779761 () Bool)

(assert (=> b!1515200 m!1779761))

(declare-fun m!1779763 () Bool)

(assert (=> bm!100432 m!1779763))

(declare-fun m!1779765 () Bool)

(assert (=> b!1515195 m!1779765))

(assert (=> b!1515195 m!1779145))

(assert (=> b!1515195 m!1779147))

(assert (=> b!1515195 m!1779145))

(assert (=> b!1515195 m!1779147))

(assert (=> b!1515195 m!1779149))

(declare-fun m!1779767 () Bool)

(assert (=> bm!100428 m!1779767))

(declare-fun m!1779769 () Bool)

(assert (=> bm!100435 m!1779769))

(declare-fun m!1779771 () Bool)

(assert (=> b!1515203 m!1779771))

(declare-fun m!1779773 () Bool)

(assert (=> bm!100441 m!1779773))

(declare-fun m!1779775 () Bool)

(assert (=> b!1515196 m!1779775))

(assert (=> b!1515196 m!1779211))

(declare-fun m!1779777 () Bool)

(assert (=> b!1515196 m!1779777))

(assert (=> b!1515196 m!1779211))

(assert (=> b!1515196 m!1779777))

(declare-fun m!1779779 () Bool)

(assert (=> b!1515196 m!1779779))

(assert (=> d!448587 m!1779163))

(assert (=> d!448587 m!1778873))

(declare-fun m!1779781 () Bool)

(assert (=> bm!100443 m!1779781))

(declare-fun m!1779783 () Bool)

(assert (=> bm!100439 m!1779783))

(assert (=> b!1515191 m!1779765))

(assert (=> b!1515191 m!1779145))

(assert (=> b!1515191 m!1779147))

(assert (=> b!1515191 m!1779145))

(assert (=> b!1515191 m!1779147))

(assert (=> b!1515191 m!1779149))

(assert (=> b!1514690 d!448587))

(declare-fun e!969106 () List!16169)

(declare-fun b!1515212 () Bool)

(assert (=> b!1515212 (= e!969106 (Cons!16101 (h!21502 (t!139453 (++!4368 lt!526569 lt!526561))) (++!4368 (t!139453 (t!139453 (++!4368 lt!526569 lt!526561))) lt!526580)))))

(declare-fun lt!526791 () List!16169)

(declare-fun b!1515214 () Bool)

(declare-fun e!969107 () Bool)

(assert (=> b!1515214 (= e!969107 (or (not (= lt!526580 Nil!16101)) (= lt!526791 (t!139453 (++!4368 lt!526569 lt!526561)))))))

(declare-fun b!1515211 () Bool)

(assert (=> b!1515211 (= e!969106 lt!526580)))

(declare-fun d!448589 () Bool)

(assert (=> d!448589 e!969107))

(declare-fun res!681530 () Bool)

(assert (=> d!448589 (=> (not res!681530) (not e!969107))))

(assert (=> d!448589 (= res!681530 (= (content!2316 lt!526791) ((_ map or) (content!2316 (t!139453 (++!4368 lt!526569 lt!526561))) (content!2316 lt!526580))))))

(assert (=> d!448589 (= lt!526791 e!969106)))

(declare-fun c!248274 () Bool)

(assert (=> d!448589 (= c!248274 ((_ is Nil!16101) (t!139453 (++!4368 lt!526569 lt!526561))))))

(assert (=> d!448589 (= (++!4368 (t!139453 (++!4368 lt!526569 lt!526561)) lt!526580) lt!526791)))

(declare-fun b!1515213 () Bool)

(declare-fun res!681531 () Bool)

(assert (=> b!1515213 (=> (not res!681531) (not e!969107))))

(assert (=> b!1515213 (= res!681531 (= (size!13022 lt!526791) (+ (size!13022 (t!139453 (++!4368 lt!526569 lt!526561))) (size!13022 lt!526580))))))

(assert (= (and d!448589 c!248274) b!1515211))

(assert (= (and d!448589 (not c!248274)) b!1515212))

(assert (= (and d!448589 res!681530) b!1515213))

(assert (= (and b!1515213 res!681531) b!1515214))

(declare-fun m!1779785 () Bool)

(assert (=> b!1515212 m!1779785))

(declare-fun m!1779787 () Bool)

(assert (=> d!448589 m!1779787))

(assert (=> d!448589 m!1779495))

(assert (=> d!448589 m!1778931))

(declare-fun m!1779789 () Bool)

(assert (=> b!1515213 m!1779789))

(declare-fun m!1779791 () Bool)

(assert (=> b!1515213 m!1779791))

(assert (=> b!1515213 m!1778937))

(assert (=> b!1514621 d!448589))

(declare-fun d!448591 () Bool)

(declare-fun c!248275 () Bool)

(assert (=> d!448591 (= c!248275 ((_ is Nil!16101) lt!526661))))

(declare-fun e!969108 () (InoxSet C!8504))

(assert (=> d!448591 (= (content!2316 lt!526661) e!969108)))

(declare-fun b!1515215 () Bool)

(assert (=> b!1515215 (= e!969108 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515216 () Bool)

(assert (=> b!1515216 (= e!969108 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526661) true) (content!2316 (t!139453 lt!526661))))))

(assert (= (and d!448591 c!248275) b!1515215))

(assert (= (and d!448591 (not c!248275)) b!1515216))

(declare-fun m!1779793 () Bool)

(assert (=> b!1515216 m!1779793))

(declare-fun m!1779795 () Bool)

(assert (=> b!1515216 m!1779795))

(assert (=> d!448367 d!448591))

(declare-fun d!448593 () Bool)

(declare-fun c!248276 () Bool)

(assert (=> d!448593 (= c!248276 ((_ is Nil!16101) lt!526569))))

(declare-fun e!969109 () (InoxSet C!8504))

(assert (=> d!448593 (= (content!2316 lt!526569) e!969109)))

(declare-fun b!1515217 () Bool)

(assert (=> b!1515217 (= e!969109 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515218 () Bool)

(assert (=> b!1515218 (= e!969109 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526569) true) (content!2316 (t!139453 lt!526569))))))

(assert (= (and d!448593 c!248276) b!1515217))

(assert (= (and d!448593 (not c!248276)) b!1515218))

(declare-fun m!1779797 () Bool)

(assert (=> b!1515218 m!1779797))

(assert (=> b!1515218 m!1779425))

(assert (=> d!448367 d!448593))

(declare-fun d!448595 () Bool)

(declare-fun c!248277 () Bool)

(assert (=> d!448595 (= c!248277 ((_ is Nil!16101) lt!526561))))

(declare-fun e!969110 () (InoxSet C!8504))

(assert (=> d!448595 (= (content!2316 lt!526561) e!969110)))

(declare-fun b!1515219 () Bool)

(assert (=> b!1515219 (= e!969110 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515220 () Bool)

(assert (=> b!1515220 (= e!969110 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526561) true) (content!2316 (t!139453 lt!526561))))))

(assert (= (and d!448595 c!248277) b!1515219))

(assert (= (and d!448595 (not c!248277)) b!1515220))

(declare-fun m!1779799 () Bool)

(assert (=> b!1515220 m!1779799))

(declare-fun m!1779801 () Bool)

(assert (=> b!1515220 m!1779801))

(assert (=> d!448367 d!448595))

(declare-fun d!448597 () Bool)

(declare-fun lt!526792 () Int)

(assert (=> d!448597 (>= lt!526792 0)))

(declare-fun e!969111 () Int)

(assert (=> d!448597 (= lt!526792 e!969111)))

(declare-fun c!248278 () Bool)

(assert (=> d!448597 (= c!248278 ((_ is Nil!16101) lt!526680))))

(assert (=> d!448597 (= (size!13022 lt!526680) lt!526792)))

(declare-fun b!1515221 () Bool)

(assert (=> b!1515221 (= e!969111 0)))

(declare-fun b!1515222 () Bool)

(assert (=> b!1515222 (= e!969111 (+ 1 (size!13022 (t!139453 lt!526680))))))

(assert (= (and d!448597 c!248278) b!1515221))

(assert (= (and d!448597 (not c!248278)) b!1515222))

(declare-fun m!1779803 () Bool)

(assert (=> b!1515222 m!1779803))

(assert (=> b!1514671 d!448597))

(assert (=> b!1514671 d!448543))

(assert (=> b!1514671 d!448451))

(declare-fun d!448599 () Bool)

(declare-fun lt!526793 () Int)

(assert (=> d!448599 (= lt!526793 (size!13022 (list!6357 (_2!8520 lt!526690))))))

(assert (=> d!448599 (= lt!526793 (size!13027 (c!248131 (_2!8520 lt!526690))))))

(assert (=> d!448599 (= (size!13025 (_2!8520 lt!526690)) lt!526793)))

(declare-fun bs!365033 () Bool)

(assert (= bs!365033 d!448599))

(assert (=> bs!365033 m!1779215))

(assert (=> bs!365033 m!1779215))

(declare-fun m!1779805 () Bool)

(assert (=> bs!365033 m!1779805))

(declare-fun m!1779807 () Bool)

(assert (=> bs!365033 m!1779807))

(assert (=> b!1514713 d!448599))

(declare-fun d!448601 () Bool)

(declare-fun lt!526794 () Int)

(assert (=> d!448601 (= lt!526794 (size!13022 (list!6357 treated!70)))))

(assert (=> d!448601 (= lt!526794 (size!13027 (c!248131 treated!70)))))

(assert (=> d!448601 (= (size!13025 treated!70) lt!526794)))

(declare-fun bs!365034 () Bool)

(assert (= bs!365034 d!448601))

(assert (=> bs!365034 m!1778771))

(assert (=> bs!365034 m!1778771))

(declare-fun m!1779809 () Bool)

(assert (=> bs!365034 m!1779809))

(declare-fun m!1779811 () Bool)

(assert (=> bs!365034 m!1779811))

(assert (=> b!1514713 d!448601))

(declare-fun b!1515224 () Bool)

(declare-fun e!969112 () List!16169)

(declare-fun e!969113 () List!16169)

(assert (=> b!1515224 (= e!969112 e!969113)))

(declare-fun c!248280 () Bool)

(assert (=> b!1515224 (= c!248280 ((_ is Leaf!8073) (c!248131 treated!70)))))

(declare-fun b!1515226 () Bool)

(assert (=> b!1515226 (= e!969113 (++!4368 (list!6359 (left!13374 (c!248131 treated!70))) (list!6359 (right!13704 (c!248131 treated!70)))))))

(declare-fun d!448603 () Bool)

(declare-fun c!248279 () Bool)

(assert (=> d!448603 (= c!248279 ((_ is Empty!5446) (c!248131 treated!70)))))

(assert (=> d!448603 (= (list!6359 (c!248131 treated!70)) e!969112)))

(declare-fun b!1515223 () Bool)

(assert (=> b!1515223 (= e!969112 Nil!16101)))

(declare-fun b!1515225 () Bool)

(assert (=> b!1515225 (= e!969113 (list!6361 (xs!8229 (c!248131 treated!70))))))

(assert (= (and d!448603 c!248279) b!1515223))

(assert (= (and d!448603 (not c!248279)) b!1515224))

(assert (= (and b!1515224 c!248280) b!1515225))

(assert (= (and b!1515224 (not c!248280)) b!1515226))

(declare-fun m!1779813 () Bool)

(assert (=> b!1515226 m!1779813))

(declare-fun m!1779815 () Bool)

(assert (=> b!1515226 m!1779815))

(assert (=> b!1515226 m!1779813))

(assert (=> b!1515226 m!1779815))

(declare-fun m!1779817 () Bool)

(assert (=> b!1515226 m!1779817))

(declare-fun m!1779819 () Bool)

(assert (=> b!1515225 m!1779819))

(assert (=> d!448405 d!448603))

(declare-fun b!1515228 () Bool)

(declare-fun e!969114 () List!16169)

(declare-fun e!969115 () List!16169)

(assert (=> b!1515228 (= e!969114 e!969115)))

(declare-fun c!248282 () Bool)

(assert (=> b!1515228 (= c!248282 ((_ is Leaf!8073) (c!248131 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(declare-fun b!1515230 () Bool)

(assert (=> b!1515230 (= e!969115 (++!4368 (list!6359 (left!13374 (c!248131 (_2!8525 (v!22915 (_1!8526 lt!526577)))))) (list!6359 (right!13704 (c!248131 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))))

(declare-fun d!448605 () Bool)

(declare-fun c!248281 () Bool)

(assert (=> d!448605 (= c!248281 ((_ is Empty!5446) (c!248131 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (=> d!448605 (= (list!6359 (c!248131 (_2!8525 (v!22915 (_1!8526 lt!526577))))) e!969114)))

(declare-fun b!1515227 () Bool)

(assert (=> b!1515227 (= e!969114 Nil!16101)))

(declare-fun b!1515229 () Bool)

(assert (=> b!1515229 (= e!969115 (list!6361 (xs!8229 (c!248131 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))))

(assert (= (and d!448605 c!248281) b!1515227))

(assert (= (and d!448605 (not c!248281)) b!1515228))

(assert (= (and b!1515228 c!248282) b!1515229))

(assert (= (and b!1515228 (not c!248282)) b!1515230))

(declare-fun m!1779821 () Bool)

(assert (=> b!1515230 m!1779821))

(declare-fun m!1779823 () Bool)

(assert (=> b!1515230 m!1779823))

(assert (=> b!1515230 m!1779821))

(assert (=> b!1515230 m!1779823))

(declare-fun m!1779825 () Bool)

(assert (=> b!1515230 m!1779825))

(declare-fun m!1779827 () Bool)

(assert (=> b!1515229 m!1779827))

(assert (=> d!448373 d!448605))

(declare-fun b!1515249 () Bool)

(declare-fun e!969140 () Bool)

(declare-fun e!969137 () Bool)

(assert (=> b!1515249 (= e!969140 e!969137)))

(declare-fun res!681556 () Bool)

(assert (=> b!1515249 (=> res!681556 e!969137)))

(assert (=> b!1515249 (= res!681556 (not ((_ is Node!5447) (left!13375 (c!248132 (_1!8520 lt!526585))))))))

(declare-fun b!1515250 () Bool)

(declare-fun e!969136 () Bool)

(declare-fun appendAssoc!89 (List!16170 List!16170 List!16170) Bool)

(assert (=> b!1515250 (= e!969136 (appendAssoc!89 (list!6360 (left!13375 (c!248132 acc!392))) (list!6360 (left!13375 (right!13705 (c!248132 acc!392)))) (++!4367 (list!6360 (right!13705 (right!13705 (c!248132 acc!392)))) (list!6360 (c!248132 (_1!8520 lt!526585))))))))

(declare-fun b!1515251 () Bool)

(declare-fun e!969142 () Bool)

(assert (=> b!1515251 (= e!969142 e!969136)))

(declare-fun res!681552 () Bool)

(assert (=> b!1515251 (=> (not res!681552) (not e!969136))))

(assert (=> b!1515251 (= res!681552 (appendAssoc!89 (list!6360 (left!13375 (right!13705 (c!248132 acc!392)))) (list!6360 (right!13705 (right!13705 (c!248132 acc!392)))) (list!6360 (c!248132 (_1!8520 lt!526585)))))))

(declare-fun b!1515252 () Bool)

(declare-fun e!969134 () Bool)

(declare-fun e!969141 () Bool)

(assert (=> b!1515252 (= e!969134 e!969141)))

(declare-fun res!681554 () Bool)

(assert (=> b!1515252 (=> (not res!681554) (not e!969141))))

(assert (=> b!1515252 (= res!681554 (appendAssoc!89 (list!6360 (left!13375 (c!248132 acc!392))) (list!6360 (right!13705 (c!248132 acc!392))) (list!6360 (c!248132 (_1!8520 lt!526585)))))))

(declare-fun b!1515253 () Bool)

(declare-fun e!969138 () Bool)

(declare-fun e!969135 () Bool)

(assert (=> b!1515253 (= e!969138 e!969135)))

(declare-fun res!681550 () Bool)

(assert (=> b!1515253 (=> res!681550 e!969135)))

(assert (=> b!1515253 (= res!681550 (not ((_ is Node!5447) (c!248132 (_1!8520 lt!526585)))))))

(declare-fun b!1515254 () Bool)

(declare-fun e!969139 () Bool)

(assert (=> b!1515254 (= e!969137 e!969139)))

(declare-fun res!681551 () Bool)

(assert (=> b!1515254 (=> (not res!681551) (not e!969139))))

(assert (=> b!1515254 (= res!681551 (appendAssoc!89 (list!6360 (c!248132 acc!392)) (list!6360 (left!13375 (left!13375 (c!248132 (_1!8520 lt!526585))))) (list!6360 (right!13705 (left!13375 (c!248132 (_1!8520 lt!526585)))))))))

(declare-fun d!448607 () Bool)

(assert (=> d!448607 e!969138))

(declare-fun res!681555 () Bool)

(assert (=> d!448607 (=> (not res!681555) (not e!969138))))

(assert (=> d!448607 (= res!681555 e!969134)))

(declare-fun res!681557 () Bool)

(assert (=> d!448607 (=> res!681557 e!969134)))

(assert (=> d!448607 (= res!681557 (not ((_ is Node!5447) (c!248132 acc!392))))))

(assert (=> d!448607 (= (appendAssocInst!370 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585))) true)))

(declare-fun b!1515255 () Bool)

(assert (=> b!1515255 (= e!969135 e!969140)))

(declare-fun res!681558 () Bool)

(assert (=> b!1515255 (=> (not res!681558) (not e!969140))))

(assert (=> b!1515255 (= res!681558 (appendAssoc!89 (list!6360 (c!248132 acc!392)) (list!6360 (left!13375 (c!248132 (_1!8520 lt!526585)))) (list!6360 (right!13705 (c!248132 (_1!8520 lt!526585))))))))

(declare-fun b!1515256 () Bool)

(assert (=> b!1515256 (= e!969141 e!969142)))

(declare-fun res!681553 () Bool)

(assert (=> b!1515256 (=> res!681553 e!969142)))

(assert (=> b!1515256 (= res!681553 (not ((_ is Node!5447) (right!13705 (c!248132 acc!392)))))))

(declare-fun b!1515257 () Bool)

(assert (=> b!1515257 (= e!969139 (appendAssoc!89 (++!4367 (list!6360 (c!248132 acc!392)) (list!6360 (left!13375 (left!13375 (c!248132 (_1!8520 lt!526585)))))) (list!6360 (right!13705 (left!13375 (c!248132 (_1!8520 lt!526585))))) (list!6360 (right!13705 (c!248132 (_1!8520 lt!526585))))))))

(assert (= (and d!448607 (not res!681557)) b!1515252))

(assert (= (and b!1515252 res!681554) b!1515256))

(assert (= (and b!1515256 (not res!681553)) b!1515251))

(assert (= (and b!1515251 res!681552) b!1515250))

(assert (= (and d!448607 res!681555) b!1515253))

(assert (= (and b!1515253 (not res!681550)) b!1515255))

(assert (= (and b!1515255 res!681558) b!1515249))

(assert (= (and b!1515249 (not res!681556)) b!1515254))

(assert (= (and b!1515254 res!681551) b!1515257))

(declare-fun m!1779829 () Bool)

(assert (=> b!1515252 m!1779829))

(declare-fun m!1779831 () Bool)

(assert (=> b!1515252 m!1779831))

(assert (=> b!1515252 m!1779777))

(assert (=> b!1515252 m!1779829))

(assert (=> b!1515252 m!1779831))

(assert (=> b!1515252 m!1779777))

(declare-fun m!1779833 () Bool)

(assert (=> b!1515252 m!1779833))

(declare-fun m!1779835 () Bool)

(assert (=> b!1515251 m!1779835))

(declare-fun m!1779837 () Bool)

(assert (=> b!1515251 m!1779837))

(assert (=> b!1515251 m!1779777))

(assert (=> b!1515251 m!1779835))

(assert (=> b!1515251 m!1779837))

(assert (=> b!1515251 m!1779777))

(declare-fun m!1779839 () Bool)

(assert (=> b!1515251 m!1779839))

(assert (=> b!1515254 m!1779211))

(declare-fun m!1779841 () Bool)

(assert (=> b!1515254 m!1779841))

(declare-fun m!1779843 () Bool)

(assert (=> b!1515254 m!1779843))

(assert (=> b!1515254 m!1779211))

(assert (=> b!1515254 m!1779841))

(assert (=> b!1515254 m!1779843))

(declare-fun m!1779845 () Bool)

(assert (=> b!1515254 m!1779845))

(assert (=> b!1515257 m!1779211))

(assert (=> b!1515257 m!1779841))

(declare-fun m!1779847 () Bool)

(assert (=> b!1515257 m!1779847))

(assert (=> b!1515257 m!1779843))

(declare-fun m!1779849 () Bool)

(assert (=> b!1515257 m!1779849))

(assert (=> b!1515257 m!1779847))

(assert (=> b!1515257 m!1779843))

(assert (=> b!1515257 m!1779849))

(declare-fun m!1779851 () Bool)

(assert (=> b!1515257 m!1779851))

(assert (=> b!1515257 m!1779211))

(assert (=> b!1515257 m!1779841))

(assert (=> b!1515255 m!1779211))

(declare-fun m!1779853 () Bool)

(assert (=> b!1515255 m!1779853))

(assert (=> b!1515255 m!1779849))

(assert (=> b!1515255 m!1779211))

(assert (=> b!1515255 m!1779853))

(assert (=> b!1515255 m!1779849))

(declare-fun m!1779855 () Bool)

(assert (=> b!1515255 m!1779855))

(assert (=> b!1515250 m!1779837))

(assert (=> b!1515250 m!1779829))

(assert (=> b!1515250 m!1779835))

(declare-fun m!1779857 () Bool)

(assert (=> b!1515250 m!1779857))

(declare-fun m!1779859 () Bool)

(assert (=> b!1515250 m!1779859))

(assert (=> b!1515250 m!1779777))

(assert (=> b!1515250 m!1779835))

(assert (=> b!1515250 m!1779829))

(assert (=> b!1515250 m!1779837))

(assert (=> b!1515250 m!1779777))

(assert (=> b!1515250 m!1779857))

(assert (=> d!448413 d!448607))

(assert (=> d!448413 d!448587))

(declare-fun d!448609 () Bool)

(declare-fun lt!526795 () Int)

(assert (=> d!448609 (= lt!526795 (size!13022 (list!6357 (_2!8520 lt!526649))))))

(assert (=> d!448609 (= lt!526795 (size!13027 (c!248131 (_2!8520 lt!526649))))))

(assert (=> d!448609 (= (size!13025 (_2!8520 lt!526649)) lt!526795)))

(declare-fun bs!365035 () Bool)

(assert (= bs!365035 d!448609))

(assert (=> bs!365035 m!1778969))

(assert (=> bs!365035 m!1778969))

(declare-fun m!1779861 () Bool)

(assert (=> bs!365035 m!1779861))

(declare-fun m!1779863 () Bool)

(assert (=> bs!365035 m!1779863))

(assert (=> b!1514615 d!448609))

(declare-fun d!448611 () Bool)

(declare-fun lt!526796 () Int)

(assert (=> d!448611 (= lt!526796 (size!13022 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (=> d!448611 (= lt!526796 (size!13027 (c!248131 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (=> d!448611 (= (size!13025 (_2!8525 (v!22915 (_1!8526 lt!526577)))) lt!526796)))

(declare-fun bs!365036 () Bool)

(assert (= bs!365036 d!448611))

(assert (=> bs!365036 m!1778795))

(assert (=> bs!365036 m!1778795))

(declare-fun m!1779865 () Bool)

(assert (=> bs!365036 m!1779865))

(declare-fun m!1779867 () Bool)

(assert (=> bs!365036 m!1779867))

(assert (=> b!1514615 d!448611))

(declare-fun d!448613 () Bool)

(assert (=> d!448613 (= (inv!21348 (xs!8229 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) (<= (size!13022 (innerList!5506 (xs!8229 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) 2147483647))))

(declare-fun bs!365037 () Bool)

(assert (= bs!365037 d!448613))

(declare-fun m!1779869 () Bool)

(assert (=> bs!365037 m!1779869))

(assert (=> b!1514860 d!448613))

(declare-fun b!1515259 () Bool)

(declare-fun e!969143 () List!16169)

(assert (=> b!1515259 (= e!969143 (Cons!16101 (h!21502 (t!139453 lt!526561)) (++!4368 (t!139453 (t!139453 lt!526561)) lt!526580)))))

(declare-fun b!1515261 () Bool)

(declare-fun e!969144 () Bool)

(declare-fun lt!526797 () List!16169)

(assert (=> b!1515261 (= e!969144 (or (not (= lt!526580 Nil!16101)) (= lt!526797 (t!139453 lt!526561))))))

(declare-fun b!1515258 () Bool)

(assert (=> b!1515258 (= e!969143 lt!526580)))

(declare-fun d!448615 () Bool)

(assert (=> d!448615 e!969144))

(declare-fun res!681559 () Bool)

(assert (=> d!448615 (=> (not res!681559) (not e!969144))))

(assert (=> d!448615 (= res!681559 (= (content!2316 lt!526797) ((_ map or) (content!2316 (t!139453 lt!526561)) (content!2316 lt!526580))))))

(assert (=> d!448615 (= lt!526797 e!969143)))

(declare-fun c!248283 () Bool)

(assert (=> d!448615 (= c!248283 ((_ is Nil!16101) (t!139453 lt!526561)))))

(assert (=> d!448615 (= (++!4368 (t!139453 lt!526561) lt!526580) lt!526797)))

(declare-fun b!1515260 () Bool)

(declare-fun res!681560 () Bool)

(assert (=> b!1515260 (=> (not res!681560) (not e!969144))))

(assert (=> b!1515260 (= res!681560 (= (size!13022 lt!526797) (+ (size!13022 (t!139453 lt!526561)) (size!13022 lt!526580))))))

(assert (= (and d!448615 c!248283) b!1515258))

(assert (= (and d!448615 (not c!248283)) b!1515259))

(assert (= (and d!448615 res!681559) b!1515260))

(assert (= (and b!1515260 res!681560) b!1515261))

(declare-fun m!1779871 () Bool)

(assert (=> b!1515259 m!1779871))

(declare-fun m!1779873 () Bool)

(assert (=> d!448615 m!1779873))

(assert (=> d!448615 m!1779801))

(assert (=> d!448615 m!1778931))

(declare-fun m!1779875 () Bool)

(assert (=> b!1515260 m!1779875))

(assert (=> b!1515260 m!1779443))

(assert (=> b!1515260 m!1778937))

(assert (=> b!1514560 d!448615))

(declare-fun d!448617 () Bool)

(declare-fun lt!526798 () Int)

(assert (=> d!448617 (= lt!526798 (size!13023 (list!6358 (_1!8520 lt!526687))))))

(assert (=> d!448617 (= lt!526798 (size!13026 (c!248132 (_1!8520 lt!526687))))))

(assert (=> d!448617 (= (size!13024 (_1!8520 lt!526687)) lt!526798)))

(declare-fun bs!365038 () Bool)

(assert (= bs!365038 d!448617))

(assert (=> bs!365038 m!1779189))

(assert (=> bs!365038 m!1779189))

(declare-fun m!1779877 () Bool)

(assert (=> bs!365038 m!1779877))

(declare-fun m!1779879 () Bool)

(assert (=> bs!365038 m!1779879))

(assert (=> d!448419 d!448617))

(assert (=> d!448419 d!448347))

(declare-fun d!448619 () Bool)

(declare-fun c!248284 () Bool)

(assert (=> d!448619 (= c!248284 ((_ is Empty!5447) (c!248132 acc!392)))))

(declare-fun e!969145 () List!16170)

(assert (=> d!448619 (= (list!6360 (c!248132 acc!392)) e!969145)))

(declare-fun b!1515263 () Bool)

(declare-fun e!969146 () List!16170)

(assert (=> b!1515263 (= e!969145 e!969146)))

(declare-fun c!248285 () Bool)

(assert (=> b!1515263 (= c!248285 ((_ is Leaf!8074) (c!248132 acc!392)))))

(declare-fun b!1515265 () Bool)

(assert (=> b!1515265 (= e!969146 (++!4367 (list!6360 (left!13375 (c!248132 acc!392))) (list!6360 (right!13705 (c!248132 acc!392)))))))

(declare-fun b!1515262 () Bool)

(assert (=> b!1515262 (= e!969145 Nil!16102)))

(declare-fun b!1515264 () Bool)

(assert (=> b!1515264 (= e!969146 (list!6362 (xs!8230 (c!248132 acc!392))))))

(assert (= (and d!448619 c!248284) b!1515262))

(assert (= (and d!448619 (not c!248284)) b!1515263))

(assert (= (and b!1515263 c!248285) b!1515264))

(assert (= (and b!1515263 (not c!248285)) b!1515265))

(assert (=> b!1515265 m!1779829))

(assert (=> b!1515265 m!1779831))

(assert (=> b!1515265 m!1779829))

(assert (=> b!1515265 m!1779831))

(declare-fun m!1779881 () Bool)

(assert (=> b!1515265 m!1779881))

(declare-fun m!1779883 () Bool)

(assert (=> b!1515264 m!1779883))

(assert (=> d!448427 d!448619))

(assert (=> b!1514446 d!448325))

(declare-fun d!448621 () Bool)

(declare-fun res!681565 () Bool)

(declare-fun e!969149 () Bool)

(assert (=> d!448621 (=> (not res!681565) (not e!969149))))

(declare-fun valid!1192 (MutableMap!1432) Bool)

(assert (=> d!448621 (= res!681565 (valid!1192 (cache!1813 cacheUp!616)))))

(assert (=> d!448621 (= (validCacheMapUp!136 (cache!1813 cacheUp!616)) e!969149)))

(declare-fun b!1515270 () Bool)

(declare-fun res!681566 () Bool)

(assert (=> b!1515270 (=> (not res!681566) (not e!969149))))

(declare-fun invariantList!223 (List!16167) Bool)

(declare-datatypes ((ListMap!495 0))(
  ( (ListMap!496 (toList!817 List!16167)) )
))
(declare-fun map!3427 (MutableMap!1432) ListMap!495)

(assert (=> b!1515270 (= res!681566 (invariantList!223 (toList!817 (map!3427 (cache!1813 cacheUp!616)))))))

(declare-fun b!1515271 () Bool)

(declare-fun lambda!64581 () Int)

(declare-fun forall!3863 (List!16167 Int) Bool)

(assert (=> b!1515271 (= e!969149 (forall!3863 (toList!817 (map!3427 (cache!1813 cacheUp!616))) lambda!64581))))

(assert (= (and d!448621 res!681565) b!1515270))

(assert (= (and b!1515270 res!681566) b!1515271))

(declare-fun m!1779886 () Bool)

(assert (=> d!448621 m!1779886))

(declare-fun m!1779888 () Bool)

(assert (=> b!1515270 m!1779888))

(declare-fun m!1779890 () Bool)

(assert (=> b!1515270 m!1779890))

(assert (=> b!1515271 m!1779888))

(declare-fun m!1779892 () Bool)

(assert (=> b!1515271 m!1779892))

(assert (=> d!448305 d!448621))

(declare-fun d!448623 () Bool)

(assert (=> d!448623 (= (list!6357 lt!526657) (list!6359 (c!248131 lt!526657)))))

(declare-fun bs!365039 () Bool)

(assert (= bs!365039 d!448623))

(declare-fun m!1779894 () Bool)

(assert (=> bs!365039 m!1779894))

(assert (=> d!448361 d!448623))

(declare-fun bs!365040 () Bool)

(declare-fun d!448625 () Bool)

(assert (= bs!365040 (and d!448625 d!448495)))

(declare-fun lambda!64584 () Int)

(assert (=> bs!365040 (= lambda!64584 lambda!64570)))

(assert (=> d!448625 true))

(declare-fun lt!526801 () Bool)

(assert (=> d!448625 (= lt!526801 (rulesValidInductive!858 thiss!13241 rules!1640))))

(assert (=> d!448625 (= lt!526801 (forall!3862 rules!1640 lambda!64584))))

(assert (=> d!448625 (= (rulesValid!1043 thiss!13241 rules!1640) lt!526801)))

(declare-fun bs!365041 () Bool)

(assert (= bs!365041 d!448625))

(assert (=> bs!365041 m!1778907))

(declare-fun m!1779896 () Bool)

(assert (=> bs!365041 m!1779896))

(assert (=> d!448333 d!448625))

(declare-fun d!448627 () Bool)

(assert (=> d!448627 (= (list!6358 (_1!8520 lt!526677)) (list!6360 (c!248132 (_1!8520 lt!526677))))))

(declare-fun bs!365042 () Bool)

(assert (= bs!365042 d!448627))

(declare-fun m!1779898 () Bool)

(assert (=> bs!365042 m!1779898))

(assert (=> b!1514663 d!448627))

(declare-fun b!1515282 () Bool)

(declare-fun e!969158 () Bool)

(declare-fun lt!526810 () tuple2!14998)

(assert (=> b!1515282 (= e!969158 (= (_2!8529 lt!526810) (list!6357 (_2!8525 (v!22915 lt!526574)))))))

(declare-fun b!1515283 () Bool)

(declare-fun e!969157 () tuple2!14998)

(assert (=> b!1515283 (= e!969157 (tuple2!14999 Nil!16102 (list!6357 (_2!8525 (v!22915 lt!526574)))))))

(declare-fun d!448629 () Bool)

(assert (=> d!448629 e!969158))

(declare-fun c!248291 () Bool)

(assert (=> d!448629 (= c!248291 (> (size!13023 (_1!8529 lt!526810)) 0))))

(assert (=> d!448629 (= lt!526810 e!969157)))

(declare-fun c!248290 () Bool)

(declare-fun lt!526808 () Option!2935)

(assert (=> d!448629 (= c!248290 ((_ is Some!2934) lt!526808))))

(assert (=> d!448629 (= lt!526808 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574)))))))

(assert (=> d!448629 (= (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574)))) lt!526810)))

(declare-fun b!1515284 () Bool)

(declare-fun e!969156 () Bool)

(assert (=> b!1515284 (= e!969156 (not (isEmpty!9939 (_1!8529 lt!526810))))))

(declare-fun b!1515285 () Bool)

(declare-fun lt!526809 () tuple2!14998)

(assert (=> b!1515285 (= e!969157 (tuple2!14999 (Cons!16102 (_1!8528 (v!22918 lt!526808)) (_1!8529 lt!526809)) (_2!8529 lt!526809)))))

(assert (=> b!1515285 (= lt!526809 (lexList!748 thiss!13241 rules!1640 (_2!8528 (v!22918 lt!526808))))))

(declare-fun b!1515286 () Bool)

(assert (=> b!1515286 (= e!969158 e!969156)))

(declare-fun res!681569 () Bool)

(assert (=> b!1515286 (= res!681569 (< (size!13022 (_2!8529 lt!526810)) (size!13022 (list!6357 (_2!8525 (v!22915 lt!526574))))))))

(assert (=> b!1515286 (=> (not res!681569) (not e!969156))))

(assert (= (and d!448629 c!248290) b!1515285))

(assert (= (and d!448629 (not c!248290)) b!1515283))

(assert (= (and d!448629 c!248291) b!1515286))

(assert (= (and d!448629 (not c!248291)) b!1515282))

(assert (= (and b!1515286 res!681569) b!1515284))

(declare-fun m!1779900 () Bool)

(assert (=> d!448629 m!1779900))

(assert (=> d!448629 m!1779107))

(declare-fun m!1779902 () Bool)

(assert (=> d!448629 m!1779902))

(declare-fun m!1779904 () Bool)

(assert (=> b!1515284 m!1779904))

(declare-fun m!1779906 () Bool)

(assert (=> b!1515285 m!1779906))

(declare-fun m!1779908 () Bool)

(assert (=> b!1515286 m!1779908))

(assert (=> b!1515286 m!1779107))

(assert (=> b!1515286 m!1779677))

(assert (=> b!1514663 d!448629))

(assert (=> b!1514663 d!448539))

(assert (=> b!1514595 d!448479))

(declare-fun d!448631 () Bool)

(assert (=> d!448631 (= (list!6357 (_2!8520 lt!526690)) (list!6359 (c!248131 (_2!8520 lt!526690))))))

(declare-fun bs!365043 () Bool)

(assert (= bs!365043 d!448631))

(declare-fun m!1779910 () Bool)

(assert (=> bs!365043 m!1779910))

(assert (=> b!1514717 d!448631))

(assert (=> b!1514717 d!448405))

(declare-fun d!448633 () Bool)

(assert (=> d!448633 (= (list!6357 (_2!8520 lt!526649)) (list!6359 (c!248131 (_2!8520 lt!526649))))))

(declare-fun bs!365044 () Bool)

(assert (= bs!365044 d!448633))

(declare-fun m!1779912 () Bool)

(assert (=> bs!365044 m!1779912))

(assert (=> b!1514619 d!448633))

(assert (=> b!1514619 d!448373))

(declare-fun b!1515287 () Bool)

(declare-fun e!969162 () Bool)

(declare-fun lt!526811 () List!16169)

(declare-fun e!969160 () Int)

(assert (=> b!1515287 (= e!969162 (= (size!13022 lt!526811) e!969160))))

(declare-fun c!248292 () Bool)

(assert (=> b!1515287 (= c!248292 (<= (- (size!13022 lt!526563) (size!13022 lt!526579)) 0))))

(declare-fun b!1515288 () Bool)

(declare-fun e!969159 () List!16169)

(declare-fun e!969163 () List!16169)

(assert (=> b!1515288 (= e!969159 e!969163)))

(declare-fun c!248295 () Bool)

(assert (=> b!1515288 (= c!248295 (<= (- (size!13022 lt!526563) (size!13022 lt!526579)) 0))))

(declare-fun b!1515289 () Bool)

(declare-fun call!100449 () Int)

(assert (=> b!1515289 (= e!969160 call!100449)))

(declare-fun b!1515290 () Bool)

(assert (=> b!1515290 (= e!969163 (drop!760 (t!139453 lt!526563) (- (- (size!13022 lt!526563) (size!13022 lt!526579)) 1)))))

(declare-fun b!1515291 () Bool)

(assert (=> b!1515291 (= e!969159 Nil!16101)))

(declare-fun d!448635 () Bool)

(assert (=> d!448635 e!969162))

(declare-fun res!681570 () Bool)

(assert (=> d!448635 (=> (not res!681570) (not e!969162))))

(assert (=> d!448635 (= res!681570 (= ((_ map implies) (content!2316 lt!526811) (content!2316 lt!526563)) ((as const (InoxSet C!8504)) true)))))

(assert (=> d!448635 (= lt!526811 e!969159)))

(declare-fun c!248294 () Bool)

(assert (=> d!448635 (= c!248294 ((_ is Nil!16101) lt!526563))))

(assert (=> d!448635 (= (drop!760 lt!526563 (- (size!13022 lt!526563) (size!13022 lt!526579))) lt!526811)))

(declare-fun b!1515292 () Bool)

(assert (=> b!1515292 (= e!969163 lt!526563)))

(declare-fun bm!100444 () Bool)

(assert (=> bm!100444 (= call!100449 (size!13022 lt!526563))))

(declare-fun b!1515293 () Bool)

(declare-fun e!969161 () Int)

(assert (=> b!1515293 (= e!969160 e!969161)))

(declare-fun c!248293 () Bool)

(assert (=> b!1515293 (= c!248293 (>= (- (size!13022 lt!526563) (size!13022 lt!526579)) call!100449))))

(declare-fun b!1515294 () Bool)

(assert (=> b!1515294 (= e!969161 (- call!100449 (- (size!13022 lt!526563) (size!13022 lt!526579))))))

(declare-fun b!1515295 () Bool)

(assert (=> b!1515295 (= e!969161 0)))

(assert (= (and d!448635 c!248294) b!1515291))

(assert (= (and d!448635 (not c!248294)) b!1515288))

(assert (= (and b!1515288 c!248295) b!1515292))

(assert (= (and b!1515288 (not c!248295)) b!1515290))

(assert (= (and d!448635 res!681570) b!1515287))

(assert (= (and b!1515287 c!248292) b!1515289))

(assert (= (and b!1515287 (not c!248292)) b!1515293))

(assert (= (and b!1515293 c!248293) b!1515295))

(assert (= (and b!1515293 (not c!248293)) b!1515294))

(assert (= (or b!1515289 b!1515293 b!1515294) bm!100444))

(declare-fun m!1779914 () Bool)

(assert (=> b!1515287 m!1779914))

(declare-fun m!1779916 () Bool)

(assert (=> b!1515290 m!1779916))

(declare-fun m!1779918 () Bool)

(assert (=> d!448635 m!1779918))

(declare-fun m!1779920 () Bool)

(assert (=> d!448635 m!1779920))

(assert (=> bm!100444 m!1779083))

(assert (=> d!448385 d!448635))

(declare-fun d!448637 () Bool)

(declare-fun lt!526812 () Int)

(assert (=> d!448637 (>= lt!526812 0)))

(declare-fun e!969164 () Int)

(assert (=> d!448637 (= lt!526812 e!969164)))

(declare-fun c!248296 () Bool)

(assert (=> d!448637 (= c!248296 ((_ is Nil!16101) lt!526563))))

(assert (=> d!448637 (= (size!13022 lt!526563) lt!526812)))

(declare-fun b!1515296 () Bool)

(assert (=> b!1515296 (= e!969164 0)))

(declare-fun b!1515297 () Bool)

(assert (=> b!1515297 (= e!969164 (+ 1 (size!13022 (t!139453 lt!526563))))))

(assert (= (and d!448637 c!248296) b!1515296))

(assert (= (and d!448637 (not c!248296)) b!1515297))

(declare-fun m!1779922 () Bool)

(assert (=> b!1515297 m!1779922))

(assert (=> d!448385 d!448637))

(assert (=> d!448385 d!448451))

(declare-fun b!1515316 () Bool)

(declare-fun res!681589 () Bool)

(declare-fun e!969171 () Bool)

(assert (=> b!1515316 (=> (not res!681589) (not e!969171))))

(declare-fun lt!526827 () Option!2935)

(assert (=> b!1515316 (= res!681589 (= (++!4368 (list!6357 (charsOf!1632 (_1!8528 (get!4743 lt!526827)))) (_2!8528 (get!4743 lt!526827))) (list!6357 input!1102)))))

(declare-fun b!1515317 () Bool)

(declare-fun res!681585 () Bool)

(assert (=> b!1515317 (=> (not res!681585) (not e!969171))))

(assert (=> b!1515317 (= res!681585 (< (size!13022 (_2!8528 (get!4743 lt!526827))) (size!13022 (list!6357 input!1102))))))

(declare-fun b!1515318 () Bool)

(declare-fun contains!2971 (List!16173 Rule!5494) Bool)

(assert (=> b!1515318 (= e!969171 (contains!2971 rules!1640 (rule!4640 (_1!8528 (get!4743 lt!526827)))))))

(declare-fun b!1515319 () Bool)

(declare-fun res!681588 () Bool)

(assert (=> b!1515319 (=> (not res!681588) (not e!969171))))

(declare-fun matchR!1838 (Regex!4163 List!16169) Bool)

(assert (=> b!1515319 (= res!681588 (matchR!1838 (regex!2847 (rule!4640 (_1!8528 (get!4743 lt!526827)))) (list!6357 (charsOf!1632 (_1!8528 (get!4743 lt!526827))))))))

(declare-fun d!448639 () Bool)

(declare-fun e!969172 () Bool)

(assert (=> d!448639 e!969172))

(declare-fun res!681591 () Bool)

(assert (=> d!448639 (=> res!681591 e!969172)))

(assert (=> d!448639 (= res!681591 (isEmpty!9943 lt!526827))))

(declare-fun e!969173 () Option!2935)

(assert (=> d!448639 (= lt!526827 e!969173)))

(declare-fun c!248299 () Bool)

(assert (=> d!448639 (= c!248299 (and ((_ is Cons!16105) rules!1640) ((_ is Nil!16105) (t!139457 rules!1640))))))

(declare-fun lt!526825 () Unit!25754)

(declare-fun lt!526824 () Unit!25754)

(assert (=> d!448639 (= lt!526825 lt!526824)))

(assert (=> d!448639 (isPrefix!1220 (list!6357 input!1102) (list!6357 input!1102))))

(assert (=> d!448639 (= lt!526824 (lemmaIsPrefixRefl!850 (list!6357 input!1102) (list!6357 input!1102)))))

(assert (=> d!448639 (rulesValidInductive!858 thiss!13241 rules!1640)))

(assert (=> d!448639 (= (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102)) lt!526827)))

(declare-fun b!1515320 () Bool)

(assert (=> b!1515320 (= e!969172 e!969171)))

(declare-fun res!681586 () Bool)

(assert (=> b!1515320 (=> (not res!681586) (not e!969171))))

(assert (=> b!1515320 (= res!681586 (isDefined!2358 lt!526827))))

(declare-fun b!1515321 () Bool)

(declare-fun res!681587 () Bool)

(assert (=> b!1515321 (=> (not res!681587) (not e!969171))))

(declare-fun apply!4073 (TokenValueInjection!5534 BalanceConc!10834) TokenValue!2937)

(declare-fun seqFromList!1735 (List!16169) BalanceConc!10834)

(assert (=> b!1515321 (= res!681587 (= (value!90801 (_1!8528 (get!4743 lt!526827))) (apply!4073 (transformation!2847 (rule!4640 (_1!8528 (get!4743 lt!526827)))) (seqFromList!1735 (originalCharacters!3709 (_1!8528 (get!4743 lt!526827)))))))))

(declare-fun b!1515322 () Bool)

(declare-fun lt!526826 () Option!2935)

(declare-fun lt!526823 () Option!2935)

(assert (=> b!1515322 (= e!969173 (ite (and ((_ is None!2934) lt!526826) ((_ is None!2934) lt!526823)) None!2934 (ite ((_ is None!2934) lt!526823) lt!526826 (ite ((_ is None!2934) lt!526826) lt!526823 (ite (>= (size!13019 (_1!8528 (v!22918 lt!526826))) (size!13019 (_1!8528 (v!22918 lt!526823)))) lt!526826 lt!526823)))))))

(declare-fun call!100452 () Option!2935)

(assert (=> b!1515322 (= lt!526826 call!100452)))

(assert (=> b!1515322 (= lt!526823 (maxPrefix!1210 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102)))))

(declare-fun b!1515323 () Bool)

(assert (=> b!1515323 (= e!969173 call!100452)))

(declare-fun bm!100447 () Bool)

(declare-fun maxPrefixOneRule!668 (LexerInterface!2499 Rule!5494 List!16169) Option!2935)

(assert (=> bm!100447 (= call!100452 (maxPrefixOneRule!668 thiss!13241 (h!21506 rules!1640) (list!6357 input!1102)))))

(declare-fun b!1515324 () Bool)

(declare-fun res!681590 () Bool)

(assert (=> b!1515324 (=> (not res!681590) (not e!969171))))

(assert (=> b!1515324 (= res!681590 (= (list!6357 (charsOf!1632 (_1!8528 (get!4743 lt!526827)))) (originalCharacters!3709 (_1!8528 (get!4743 lt!526827)))))))

(assert (= (and d!448639 c!248299) b!1515323))

(assert (= (and d!448639 (not c!248299)) b!1515322))

(assert (= (or b!1515323 b!1515322) bm!100447))

(assert (= (and d!448639 (not res!681591)) b!1515320))

(assert (= (and b!1515320 res!681586) b!1515324))

(assert (= (and b!1515324 res!681590) b!1515317))

(assert (= (and b!1515317 res!681585) b!1515316))

(assert (= (and b!1515316 res!681589) b!1515321))

(assert (= (and b!1515321 res!681587) b!1515319))

(assert (= (and b!1515319 res!681588) b!1515318))

(declare-fun m!1779924 () Bool)

(assert (=> d!448639 m!1779924))

(assert (=> d!448639 m!1778769))

(assert (=> d!448639 m!1778769))

(assert (=> d!448639 m!1779369))

(assert (=> d!448639 m!1778769))

(assert (=> d!448639 m!1778769))

(assert (=> d!448639 m!1779371))

(assert (=> d!448639 m!1778907))

(declare-fun m!1779926 () Bool)

(assert (=> b!1515318 m!1779926))

(declare-fun m!1779928 () Bool)

(assert (=> b!1515318 m!1779928))

(assert (=> b!1515322 m!1778769))

(assert (=> b!1515322 m!1779621))

(assert (=> b!1515324 m!1779926))

(declare-fun m!1779930 () Bool)

(assert (=> b!1515324 m!1779930))

(assert (=> b!1515324 m!1779930))

(declare-fun m!1779932 () Bool)

(assert (=> b!1515324 m!1779932))

(assert (=> bm!100447 m!1778769))

(declare-fun m!1779934 () Bool)

(assert (=> bm!100447 m!1779934))

(assert (=> b!1515321 m!1779926))

(declare-fun m!1779936 () Bool)

(assert (=> b!1515321 m!1779936))

(assert (=> b!1515321 m!1779936))

(declare-fun m!1779938 () Bool)

(assert (=> b!1515321 m!1779938))

(assert (=> b!1515316 m!1779926))

(assert (=> b!1515316 m!1779930))

(assert (=> b!1515316 m!1779930))

(assert (=> b!1515316 m!1779932))

(assert (=> b!1515316 m!1779932))

(declare-fun m!1779940 () Bool)

(assert (=> b!1515316 m!1779940))

(declare-fun m!1779942 () Bool)

(assert (=> b!1515320 m!1779942))

(assert (=> b!1515319 m!1779926))

(assert (=> b!1515319 m!1779930))

(assert (=> b!1515319 m!1779930))

(assert (=> b!1515319 m!1779932))

(assert (=> b!1515319 m!1779932))

(declare-fun m!1779944 () Bool)

(assert (=> b!1515319 m!1779944))

(assert (=> b!1515317 m!1779926))

(declare-fun m!1779946 () Bool)

(assert (=> b!1515317 m!1779946))

(assert (=> b!1515317 m!1778769))

(declare-fun m!1779948 () Bool)

(assert (=> b!1515317 m!1779948))

(assert (=> b!1514591 d!448639))

(declare-fun d!448641 () Bool)

(assert (=> d!448641 (= (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102))) (v!22918 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102))))))

(assert (=> b!1514591 d!448641))

(assert (=> b!1514591 d!448403))

(assert (=> b!1514591 d!448445))

(assert (=> b!1514591 d!448441))

(declare-fun b!1515326 () Bool)

(declare-fun e!969174 () List!16169)

(declare-fun e!969175 () List!16169)

(assert (=> b!1515326 (= e!969174 e!969175)))

(declare-fun c!248301 () Bool)

(assert (=> b!1515326 (= c!248301 ((_ is Leaf!8073) (c!248131 (_2!8520 lt!526585))))))

(declare-fun b!1515328 () Bool)

(assert (=> b!1515328 (= e!969175 (++!4368 (list!6359 (left!13374 (c!248131 (_2!8520 lt!526585)))) (list!6359 (right!13704 (c!248131 (_2!8520 lt!526585))))))))

(declare-fun d!448643 () Bool)

(declare-fun c!248300 () Bool)

(assert (=> d!448643 (= c!248300 ((_ is Empty!5446) (c!248131 (_2!8520 lt!526585))))))

(assert (=> d!448643 (= (list!6359 (c!248131 (_2!8520 lt!526585))) e!969174)))

(declare-fun b!1515325 () Bool)

(assert (=> b!1515325 (= e!969174 Nil!16101)))

(declare-fun b!1515327 () Bool)

(assert (=> b!1515327 (= e!969175 (list!6361 (xs!8229 (c!248131 (_2!8520 lt!526585)))))))

(assert (= (and d!448643 c!248300) b!1515325))

(assert (= (and d!448643 (not c!248300)) b!1515326))

(assert (= (and b!1515326 c!248301) b!1515327))

(assert (= (and b!1515326 (not c!248301)) b!1515328))

(declare-fun m!1779950 () Bool)

(assert (=> b!1515328 m!1779950))

(declare-fun m!1779952 () Bool)

(assert (=> b!1515328 m!1779952))

(assert (=> b!1515328 m!1779950))

(assert (=> b!1515328 m!1779952))

(declare-fun m!1779954 () Bool)

(assert (=> b!1515328 m!1779954))

(declare-fun m!1779956 () Bool)

(assert (=> b!1515327 m!1779956))

(assert (=> d!448331 d!448643))

(declare-fun d!448645 () Bool)

(declare-fun lt!526828 () Int)

(assert (=> d!448645 (>= lt!526828 0)))

(declare-fun e!969176 () Int)

(assert (=> d!448645 (= lt!526828 e!969176)))

(declare-fun c!248302 () Bool)

(assert (=> d!448645 (= c!248302 ((_ is Nil!16102) lt!526654))))

(assert (=> d!448645 (= (size!13023 lt!526654) lt!526828)))

(declare-fun b!1515329 () Bool)

(assert (=> b!1515329 (= e!969176 0)))

(declare-fun b!1515330 () Bool)

(assert (=> b!1515330 (= e!969176 (+ 1 (size!13023 (t!139454 lt!526654))))))

(assert (= (and d!448645 c!248302) b!1515329))

(assert (= (and d!448645 (not c!248302)) b!1515330))

(declare-fun m!1779958 () Bool)

(assert (=> b!1515330 m!1779958))

(assert (=> b!1514630 d!448645))

(declare-fun d!448647 () Bool)

(declare-fun lt!526829 () Int)

(assert (=> d!448647 (>= lt!526829 0)))

(declare-fun e!969177 () Int)

(assert (=> d!448647 (= lt!526829 e!969177)))

(declare-fun c!248303 () Bool)

(assert (=> d!448647 (= c!248303 ((_ is Nil!16102) lt!526582))))

(assert (=> d!448647 (= (size!13023 lt!526582) lt!526829)))

(declare-fun b!1515331 () Bool)

(assert (=> b!1515331 (= e!969177 0)))

(declare-fun b!1515332 () Bool)

(assert (=> b!1515332 (= e!969177 (+ 1 (size!13023 (t!139454 lt!526582))))))

(assert (= (and d!448647 c!248303) b!1515331))

(assert (= (and d!448647 (not c!248303)) b!1515332))

(declare-fun m!1779960 () Bool)

(assert (=> b!1515332 m!1779960))

(assert (=> b!1514630 d!448647))

(declare-fun d!448649 () Bool)

(declare-fun lt!526830 () Int)

(assert (=> d!448649 (>= lt!526830 0)))

(declare-fun e!969178 () Int)

(assert (=> d!448649 (= lt!526830 e!969178)))

(declare-fun c!248304 () Bool)

(assert (=> d!448649 (= c!248304 ((_ is Nil!16102) lt!526572))))

(assert (=> d!448649 (= (size!13023 lt!526572) lt!526830)))

(declare-fun b!1515333 () Bool)

(assert (=> b!1515333 (= e!969178 0)))

(declare-fun b!1515334 () Bool)

(assert (=> b!1515334 (= e!969178 (+ 1 (size!13023 (t!139454 lt!526572))))))

(assert (= (and d!448649 c!248304) b!1515333))

(assert (= (and d!448649 (not c!248304)) b!1515334))

(declare-fun m!1779962 () Bool)

(assert (=> b!1515334 m!1779962))

(assert (=> b!1514630 d!448649))

(declare-fun b!1515347 () Bool)

(declare-fun res!681608 () Bool)

(declare-fun e!969183 () Bool)

(assert (=> b!1515347 (=> (not res!681608) (not e!969183))))

(declare-fun isEmpty!9945 (Conc!5446) Bool)

(assert (=> b!1515347 (= res!681608 (not (isEmpty!9945 (left!13374 (c!248131 treated!70)))))))

(declare-fun b!1515348 () Bool)

(declare-fun res!681605 () Bool)

(assert (=> b!1515348 (=> (not res!681605) (not e!969183))))

(assert (=> b!1515348 (= res!681605 (isBalanced!1611 (left!13374 (c!248131 treated!70))))))

(declare-fun b!1515349 () Bool)

(declare-fun res!681604 () Bool)

(assert (=> b!1515349 (=> (not res!681604) (not e!969183))))

(assert (=> b!1515349 (= res!681604 (isBalanced!1611 (right!13704 (c!248131 treated!70))))))

(declare-fun d!448651 () Bool)

(declare-fun res!681607 () Bool)

(declare-fun e!969184 () Bool)

(assert (=> d!448651 (=> res!681607 e!969184)))

(assert (=> d!448651 (= res!681607 (not ((_ is Node!5446) (c!248131 treated!70))))))

(assert (=> d!448651 (= (isBalanced!1611 (c!248131 treated!70)) e!969184)))

(declare-fun b!1515350 () Bool)

(assert (=> b!1515350 (= e!969183 (not (isEmpty!9945 (right!13704 (c!248131 treated!70)))))))

(declare-fun b!1515351 () Bool)

(assert (=> b!1515351 (= e!969184 e!969183)))

(declare-fun res!681609 () Bool)

(assert (=> b!1515351 (=> (not res!681609) (not e!969183))))

(assert (=> b!1515351 (= res!681609 (<= (- 1) (- (height!814 (left!13374 (c!248131 treated!70))) (height!814 (right!13704 (c!248131 treated!70))))))))

(declare-fun b!1515352 () Bool)

(declare-fun res!681606 () Bool)

(assert (=> b!1515352 (=> (not res!681606) (not e!969183))))

(assert (=> b!1515352 (= res!681606 (<= (- (height!814 (left!13374 (c!248131 treated!70))) (height!814 (right!13704 (c!248131 treated!70)))) 1))))

(assert (= (and d!448651 (not res!681607)) b!1515351))

(assert (= (and b!1515351 res!681609) b!1515352))

(assert (= (and b!1515352 res!681606) b!1515348))

(assert (= (and b!1515348 res!681605) b!1515349))

(assert (= (and b!1515349 res!681604) b!1515347))

(assert (= (and b!1515347 res!681608) b!1515350))

(declare-fun m!1779964 () Bool)

(assert (=> b!1515348 m!1779964))

(assert (=> b!1515351 m!1779435))

(assert (=> b!1515351 m!1779437))

(assert (=> b!1515352 m!1779435))

(assert (=> b!1515352 m!1779437))

(declare-fun m!1779966 () Bool)

(assert (=> b!1515347 m!1779966))

(declare-fun m!1779968 () Bool)

(assert (=> b!1515350 m!1779968))

(declare-fun m!1779970 () Bool)

(assert (=> b!1515349 m!1779970))

(assert (=> d!448307 d!448651))

(declare-fun d!448653 () Bool)

(assert (=> d!448653 (= (valid!1190 (_4!340 lt!526612)) (validCacheMapFurthestNullable!49 (cache!1815 (_4!340 lt!526612)) (totalInput!2301 (_4!340 lt!526612))))))

(declare-fun bs!365045 () Bool)

(assert (= bs!365045 d!448653))

(declare-fun m!1779972 () Bool)

(assert (=> bs!365045 m!1779972))

(assert (=> b!1514542 d!448653))

(assert (=> b!1514667 d!448537))

(assert (=> b!1514667 d!448629))

(assert (=> b!1514667 d!448539))

(declare-fun lt!526833 () Option!2934)

(declare-fun b!1515353 () Bool)

(declare-fun e!969185 () Bool)

(assert (=> b!1515353 (= e!969185 (= (list!6357 (_2!8525 (get!4742 lt!526833))) (_2!8528 (get!4743 (maxPrefix!1210 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102))))))))

(declare-fun e!969188 () Bool)

(declare-fun b!1515354 () Bool)

(assert (=> b!1515354 (= e!969188 (= (list!6357 (_2!8525 (get!4742 lt!526833))) (_2!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102))))))))

(declare-fun b!1515355 () Bool)

(declare-fun e!969189 () Option!2934)

(declare-fun call!100453 () Option!2934)

(assert (=> b!1515355 (= e!969189 call!100453)))

(declare-fun b!1515356 () Bool)

(declare-fun e!969186 () Bool)

(assert (=> b!1515356 (= e!969186 e!969188)))

(declare-fun res!681610 () Bool)

(assert (=> b!1515356 (=> (not res!681610) (not e!969188))))

(assert (=> b!1515356 (= res!681610 (= (_1!8525 (get!4742 lt!526833)) (_1!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102))))))))

(declare-fun b!1515357 () Bool)

(declare-fun e!969187 () Bool)

(declare-fun e!969190 () Bool)

(assert (=> b!1515357 (= e!969187 e!969190)))

(declare-fun res!681614 () Bool)

(assert (=> b!1515357 (=> res!681614 e!969190)))

(assert (=> b!1515357 (= res!681614 (not (isDefined!2357 lt!526833)))))

(declare-fun b!1515358 () Bool)

(declare-fun res!681615 () Bool)

(assert (=> b!1515358 (=> (not res!681615) (not e!969187))))

(assert (=> b!1515358 (= res!681615 e!969186)))

(declare-fun res!681611 () Bool)

(assert (=> b!1515358 (=> res!681611 e!969186)))

(assert (=> b!1515358 (= res!681611 (not (isDefined!2357 lt!526833)))))

(declare-fun b!1515359 () Bool)

(assert (=> b!1515359 (= e!969190 e!969185)))

(declare-fun res!681613 () Bool)

(assert (=> b!1515359 (=> (not res!681613) (not e!969185))))

(assert (=> b!1515359 (= res!681613 (= (_1!8525 (get!4742 lt!526833)) (_1!8528 (get!4743 (maxPrefix!1210 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102))))))))

(declare-fun d!448655 () Bool)

(assert (=> d!448655 e!969187))

(declare-fun res!681612 () Bool)

(assert (=> d!448655 (=> (not res!681612) (not e!969187))))

(assert (=> d!448655 (= res!681612 (= (isDefined!2357 lt!526833) (isDefined!2358 (maxPrefixZipper!261 thiss!13241 (t!139457 rules!1640) (list!6357 input!1102)))))))

(assert (=> d!448655 (= lt!526833 e!969189)))

(declare-fun c!248305 () Bool)

(assert (=> d!448655 (= c!248305 (and ((_ is Cons!16105) (t!139457 rules!1640)) ((_ is Nil!16105) (t!139457 (t!139457 rules!1640)))))))

(declare-fun lt!526837 () Unit!25754)

(declare-fun lt!526834 () Unit!25754)

(assert (=> d!448655 (= lt!526837 lt!526834)))

(declare-fun lt!526835 () List!16169)

(declare-fun lt!526836 () List!16169)

(assert (=> d!448655 (isPrefix!1220 lt!526835 lt!526836)))

(assert (=> d!448655 (= lt!526834 (lemmaIsPrefixRefl!850 lt!526835 lt!526836))))

(assert (=> d!448655 (= lt!526836 (list!6357 input!1102))))

(assert (=> d!448655 (= lt!526835 (list!6357 input!1102))))

(assert (=> d!448655 (rulesValidInductive!858 thiss!13241 (t!139457 rules!1640))))

(assert (=> d!448655 (= (maxPrefixZipperSequence!592 thiss!13241 (t!139457 rules!1640) input!1102) lt!526833)))

(declare-fun bm!100448 () Bool)

(assert (=> bm!100448 (= call!100453 (maxPrefixOneRuleZipperSequence!280 thiss!13241 (h!21506 (t!139457 rules!1640)) input!1102))))

(declare-fun b!1515360 () Bool)

(declare-fun lt!526832 () Option!2934)

(declare-fun lt!526831 () Option!2934)

(assert (=> b!1515360 (= e!969189 (ite (and ((_ is None!2933) lt!526832) ((_ is None!2933) lt!526831)) None!2933 (ite ((_ is None!2933) lt!526831) lt!526832 (ite ((_ is None!2933) lt!526832) lt!526831 (ite (>= (size!13019 (_1!8525 (v!22915 lt!526832))) (size!13019 (_1!8525 (v!22915 lt!526831)))) lt!526832 lt!526831)))))))

(assert (=> b!1515360 (= lt!526832 call!100453)))

(assert (=> b!1515360 (= lt!526831 (maxPrefixZipperSequence!592 thiss!13241 (t!139457 (t!139457 rules!1640)) input!1102))))

(assert (= (and d!448655 c!248305) b!1515355))

(assert (= (and d!448655 (not c!248305)) b!1515360))

(assert (= (or b!1515355 b!1515360) bm!100448))

(assert (= (and d!448655 res!681612) b!1515358))

(assert (= (and b!1515358 (not res!681611)) b!1515356))

(assert (= (and b!1515356 res!681610) b!1515354))

(assert (= (and b!1515358 res!681615) b!1515357))

(assert (= (and b!1515357 (not res!681614)) b!1515359))

(assert (= (and b!1515359 res!681613) b!1515353))

(declare-fun m!1779974 () Bool)

(assert (=> b!1515356 m!1779974))

(assert (=> b!1515356 m!1778769))

(assert (=> b!1515356 m!1778769))

(assert (=> b!1515356 m!1779375))

(assert (=> b!1515356 m!1779375))

(assert (=> b!1515356 m!1779625))

(declare-fun m!1779976 () Bool)

(assert (=> b!1515360 m!1779976))

(declare-fun m!1779978 () Bool)

(assert (=> bm!100448 m!1779978))

(assert (=> b!1515353 m!1779974))

(assert (=> b!1515353 m!1778769))

(assert (=> b!1515353 m!1778769))

(assert (=> b!1515353 m!1779621))

(assert (=> b!1515353 m!1779621))

(assert (=> b!1515353 m!1779623))

(declare-fun m!1779980 () Bool)

(assert (=> b!1515353 m!1779980))

(assert (=> b!1515354 m!1779974))

(assert (=> b!1515354 m!1779375))

(assert (=> b!1515354 m!1779625))

(assert (=> b!1515354 m!1778769))

(assert (=> b!1515354 m!1778769))

(assert (=> b!1515354 m!1779375))

(assert (=> b!1515354 m!1779980))

(declare-fun m!1779982 () Bool)

(assert (=> b!1515357 m!1779982))

(assert (=> d!448655 m!1779375))

(assert (=> d!448655 m!1779641))

(declare-fun m!1779984 () Bool)

(assert (=> d!448655 m!1779984))

(assert (=> d!448655 m!1778769))

(assert (=> d!448655 m!1779507))

(assert (=> d!448655 m!1778769))

(assert (=> d!448655 m!1779375))

(declare-fun m!1779986 () Bool)

(assert (=> d!448655 m!1779986))

(assert (=> d!448655 m!1779982))

(assert (=> b!1515358 m!1779982))

(assert (=> b!1515359 m!1779974))

(assert (=> b!1515359 m!1778769))

(assert (=> b!1515359 m!1778769))

(assert (=> b!1515359 m!1779621))

(assert (=> b!1515359 m!1779621))

(assert (=> b!1515359 m!1779623))

(assert (=> b!1514598 d!448655))

(declare-fun b!1515362 () Bool)

(declare-fun e!969191 () List!16169)

(assert (=> b!1515362 (= e!969191 (Cons!16101 (h!21502 (t!139453 lt!526569)) (++!4368 (t!139453 (t!139453 lt!526569)) lt!526561)))))

(declare-fun e!969192 () Bool)

(declare-fun lt!526838 () List!16169)

(declare-fun b!1515364 () Bool)

(assert (=> b!1515364 (= e!969192 (or (not (= lt!526561 Nil!16101)) (= lt!526838 (t!139453 lt!526569))))))

(declare-fun b!1515361 () Bool)

(assert (=> b!1515361 (= e!969191 lt!526561)))

(declare-fun d!448657 () Bool)

(assert (=> d!448657 e!969192))

(declare-fun res!681616 () Bool)

(assert (=> d!448657 (=> (not res!681616) (not e!969192))))

(assert (=> d!448657 (= res!681616 (= (content!2316 lt!526838) ((_ map or) (content!2316 (t!139453 lt!526569)) (content!2316 lt!526561))))))

(assert (=> d!448657 (= lt!526838 e!969191)))

(declare-fun c!248306 () Bool)

(assert (=> d!448657 (= c!248306 ((_ is Nil!16101) (t!139453 lt!526569)))))

(assert (=> d!448657 (= (++!4368 (t!139453 lt!526569) lt!526561) lt!526838)))

(declare-fun b!1515363 () Bool)

(declare-fun res!681617 () Bool)

(assert (=> b!1515363 (=> (not res!681617) (not e!969192))))

(assert (=> b!1515363 (= res!681617 (= (size!13022 lt!526838) (+ (size!13022 (t!139453 lt!526569)) (size!13022 lt!526561))))))

(assert (= (and d!448657 c!248306) b!1515361))

(assert (= (and d!448657 (not c!248306)) b!1515362))

(assert (= (and d!448657 res!681616) b!1515363))

(assert (= (and b!1515363 res!681617) b!1515364))

(declare-fun m!1779988 () Bool)

(assert (=> b!1515362 m!1779988))

(declare-fun m!1779990 () Bool)

(assert (=> d!448657 m!1779990))

(assert (=> d!448657 m!1779425))

(assert (=> d!448657 m!1778929))

(declare-fun m!1779992 () Bool)

(assert (=> b!1515363 m!1779992))

(assert (=> b!1515363 m!1779429))

(assert (=> b!1515363 m!1778935))

(assert (=> b!1514638 d!448657))

(declare-fun bs!365046 () Bool)

(declare-fun d!448659 () Bool)

(assert (= bs!365046 (and d!448659 d!448547)))

(declare-fun lambda!64585 () Int)

(assert (=> bs!365046 (= lambda!64585 lambda!64572)))

(declare-fun bs!365047 () Bool)

(assert (= bs!365047 (and d!448659 d!448575)))

(assert (=> bs!365047 (= lambda!64585 lambda!64575)))

(declare-fun bs!365048 () Bool)

(assert (= bs!365048 (and d!448659 d!448453)))

(assert (=> bs!365048 (= lambda!64585 lambda!64562)))

(declare-fun bs!365049 () Bool)

(assert (= bs!365049 (and d!448659 d!448533)))

(assert (=> bs!365049 (= lambda!64585 lambda!64571)))

(declare-fun bs!365050 () Bool)

(assert (= bs!365050 (and d!448659 d!448477)))

(assert (=> bs!365050 (= lambda!64585 lambda!64563)))

(declare-fun bs!365051 () Bool)

(assert (= bs!365051 (and d!448659 d!448481)))

(assert (=> bs!365051 (= lambda!64585 lambda!64564)))

(declare-fun bs!365052 () Bool)

(assert (= bs!365052 (and d!448659 d!448561)))

(assert (=> bs!365052 (= lambda!64585 lambda!64574)))

(declare-fun bs!365053 () Bool)

(assert (= bs!365053 (and d!448659 d!448549)))

(assert (=> bs!365053 (= lambda!64585 lambda!64573)))

(assert (=> d!448659 (= (inv!21347 setElem!9195) (forall!3861 (exprs!1181 setElem!9195) lambda!64585))))

(declare-fun bs!365054 () Bool)

(assert (= bs!365054 d!448659))

(declare-fun m!1779994 () Bool)

(assert (=> bs!365054 m!1779994))

(assert (=> setNonEmpty!9194 d!448659))

(declare-fun bs!365055 () Bool)

(declare-fun d!448661 () Bool)

(assert (= bs!365055 (and d!448661 d!448547)))

(declare-fun lambda!64586 () Int)

(assert (=> bs!365055 (= lambda!64586 lambda!64572)))

(declare-fun bs!365056 () Bool)

(assert (= bs!365056 (and d!448661 d!448575)))

(assert (=> bs!365056 (= lambda!64586 lambda!64575)))

(declare-fun bs!365057 () Bool)

(assert (= bs!365057 (and d!448661 d!448453)))

(assert (=> bs!365057 (= lambda!64586 lambda!64562)))

(declare-fun bs!365058 () Bool)

(assert (= bs!365058 (and d!448661 d!448659)))

(assert (=> bs!365058 (= lambda!64586 lambda!64585)))

(declare-fun bs!365059 () Bool)

(assert (= bs!365059 (and d!448661 d!448533)))

(assert (=> bs!365059 (= lambda!64586 lambda!64571)))

(declare-fun bs!365060 () Bool)

(assert (= bs!365060 (and d!448661 d!448477)))

(assert (=> bs!365060 (= lambda!64586 lambda!64563)))

(declare-fun bs!365061 () Bool)

(assert (= bs!365061 (and d!448661 d!448481)))

(assert (=> bs!365061 (= lambda!64586 lambda!64564)))

(declare-fun bs!365062 () Bool)

(assert (= bs!365062 (and d!448661 d!448561)))

(assert (=> bs!365062 (= lambda!64586 lambda!64574)))

(declare-fun bs!365063 () Bool)

(assert (= bs!365063 (and d!448661 d!448549)))

(assert (=> bs!365063 (= lambda!64586 lambda!64573)))

(assert (=> d!448661 (= (inv!21347 setElem!9218) (forall!3861 (exprs!1181 setElem!9218) lambda!64586))))

(declare-fun bs!365064 () Bool)

(assert (= bs!365064 d!448661))

(declare-fun m!1779996 () Bool)

(assert (=> bs!365064 m!1779996))

(assert (=> setNonEmpty!9218 d!448661))

(declare-fun d!448663 () Bool)

(declare-fun res!681618 () Bool)

(declare-fun e!969193 () Bool)

(assert (=> d!448663 (=> (not res!681618) (not e!969193))))

(assert (=> d!448663 (= res!681618 (<= (size!13022 (list!6361 (xs!8229 (c!248131 input!1102)))) 512))))

(assert (=> d!448663 (= (inv!21344 (c!248131 input!1102)) e!969193)))

(declare-fun b!1515365 () Bool)

(declare-fun res!681619 () Bool)

(assert (=> b!1515365 (=> (not res!681619) (not e!969193))))

(assert (=> b!1515365 (= res!681619 (= (csize!11123 (c!248131 input!1102)) (size!13022 (list!6361 (xs!8229 (c!248131 input!1102))))))))

(declare-fun b!1515366 () Bool)

(assert (=> b!1515366 (= e!969193 (and (> (csize!11123 (c!248131 input!1102)) 0) (<= (csize!11123 (c!248131 input!1102)) 512)))))

(assert (= (and d!448663 res!681618) b!1515365))

(assert (= (and b!1515365 res!681619) b!1515366))

(declare-fun m!1779998 () Bool)

(assert (=> d!448663 m!1779998))

(assert (=> d!448663 m!1779998))

(declare-fun m!1780000 () Bool)

(assert (=> d!448663 m!1780000))

(assert (=> b!1515365 m!1779998))

(assert (=> b!1515365 m!1779998))

(assert (=> b!1515365 m!1780000))

(assert (=> b!1514508 d!448663))

(declare-fun bs!365065 () Bool)

(declare-fun d!448665 () Bool)

(assert (= bs!365065 (and d!448665 d!448547)))

(declare-fun lambda!64587 () Int)

(assert (=> bs!365065 (= lambda!64587 lambda!64572)))

(declare-fun bs!365066 () Bool)

(assert (= bs!365066 (and d!448665 d!448575)))

(assert (=> bs!365066 (= lambda!64587 lambda!64575)))

(declare-fun bs!365067 () Bool)

(assert (= bs!365067 (and d!448665 d!448453)))

(assert (=> bs!365067 (= lambda!64587 lambda!64562)))

(declare-fun bs!365068 () Bool)

(assert (= bs!365068 (and d!448665 d!448659)))

(assert (=> bs!365068 (= lambda!64587 lambda!64585)))

(declare-fun bs!365069 () Bool)

(assert (= bs!365069 (and d!448665 d!448533)))

(assert (=> bs!365069 (= lambda!64587 lambda!64571)))

(declare-fun bs!365070 () Bool)

(assert (= bs!365070 (and d!448665 d!448477)))

(assert (=> bs!365070 (= lambda!64587 lambda!64563)))

(declare-fun bs!365071 () Bool)

(assert (= bs!365071 (and d!448665 d!448661)))

(assert (=> bs!365071 (= lambda!64587 lambda!64586)))

(declare-fun bs!365072 () Bool)

(assert (= bs!365072 (and d!448665 d!448481)))

(assert (=> bs!365072 (= lambda!64587 lambda!64564)))

(declare-fun bs!365073 () Bool)

(assert (= bs!365073 (and d!448665 d!448561)))

(assert (=> bs!365073 (= lambda!64587 lambda!64574)))

(declare-fun bs!365074 () Bool)

(assert (= bs!365074 (and d!448665 d!448549)))

(assert (=> bs!365074 (= lambda!64587 lambda!64573)))

(assert (=> d!448665 (= (inv!21347 (_1!8518 (_1!8519 (h!21500 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))))) (forall!3861 (exprs!1181 (_1!8518 (_1!8519 (h!21500 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))))) lambda!64587))))

(declare-fun bs!365075 () Bool)

(assert (= bs!365075 d!448665))

(declare-fun m!1780002 () Bool)

(assert (=> bs!365075 m!1780002))

(assert (=> b!1514856 d!448665))

(assert (=> b!1514655 d!448637))

(assert (=> b!1514655 d!448451))

(declare-fun d!448667 () Bool)

(assert (=> d!448667 (= (inv!21348 (xs!8229 (c!248131 totalInput!458))) (<= (size!13022 (innerList!5506 (xs!8229 (c!248131 totalInput!458)))) 2147483647))))

(declare-fun bs!365076 () Bool)

(assert (= bs!365076 d!448667))

(declare-fun m!1780004 () Bool)

(assert (=> bs!365076 m!1780004))

(assert (=> b!1514874 d!448667))

(declare-fun b!1515368 () Bool)

(declare-fun e!969194 () List!16169)

(declare-fun e!969195 () List!16169)

(assert (=> b!1515368 (= e!969194 e!969195)))

(declare-fun c!248308 () Bool)

(assert (=> b!1515368 (= c!248308 ((_ is Leaf!8073) (c!248131 input!1102)))))

(declare-fun b!1515370 () Bool)

(assert (=> b!1515370 (= e!969195 (++!4368 (list!6359 (left!13374 (c!248131 input!1102))) (list!6359 (right!13704 (c!248131 input!1102)))))))

(declare-fun d!448669 () Bool)

(declare-fun c!248307 () Bool)

(assert (=> d!448669 (= c!248307 ((_ is Empty!5446) (c!248131 input!1102)))))

(assert (=> d!448669 (= (list!6359 (c!248131 input!1102)) e!969194)))

(declare-fun b!1515367 () Bool)

(assert (=> b!1515367 (= e!969194 Nil!16101)))

(declare-fun b!1515369 () Bool)

(assert (=> b!1515369 (= e!969195 (list!6361 (xs!8229 (c!248131 input!1102))))))

(assert (= (and d!448669 c!248307) b!1515367))

(assert (= (and d!448669 (not c!248307)) b!1515368))

(assert (= (and b!1515368 c!248308) b!1515369))

(assert (= (and b!1515368 (not c!248308)) b!1515370))

(declare-fun m!1780006 () Bool)

(assert (=> b!1515370 m!1780006))

(declare-fun m!1780008 () Bool)

(assert (=> b!1515370 m!1780008))

(assert (=> b!1515370 m!1780006))

(assert (=> b!1515370 m!1780008))

(declare-fun m!1780010 () Bool)

(assert (=> b!1515370 m!1780010))

(assert (=> b!1515369 m!1779998))

(assert (=> d!448403 d!448669))

(declare-fun bs!365077 () Bool)

(declare-fun d!448671 () Bool)

(assert (= bs!365077 (and d!448671 d!448547)))

(declare-fun lambda!64588 () Int)

(assert (=> bs!365077 (= lambda!64588 lambda!64572)))

(declare-fun bs!365078 () Bool)

(assert (= bs!365078 (and d!448671 d!448575)))

(assert (=> bs!365078 (= lambda!64588 lambda!64575)))

(declare-fun bs!365079 () Bool)

(assert (= bs!365079 (and d!448671 d!448453)))

(assert (=> bs!365079 (= lambda!64588 lambda!64562)))

(declare-fun bs!365080 () Bool)

(assert (= bs!365080 (and d!448671 d!448659)))

(assert (=> bs!365080 (= lambda!64588 lambda!64585)))

(declare-fun bs!365081 () Bool)

(assert (= bs!365081 (and d!448671 d!448533)))

(assert (=> bs!365081 (= lambda!64588 lambda!64571)))

(declare-fun bs!365082 () Bool)

(assert (= bs!365082 (and d!448671 d!448477)))

(assert (=> bs!365082 (= lambda!64588 lambda!64563)))

(declare-fun bs!365083 () Bool)

(assert (= bs!365083 (and d!448671 d!448665)))

(assert (=> bs!365083 (= lambda!64588 lambda!64587)))

(declare-fun bs!365084 () Bool)

(assert (= bs!365084 (and d!448671 d!448661)))

(assert (=> bs!365084 (= lambda!64588 lambda!64586)))

(declare-fun bs!365085 () Bool)

(assert (= bs!365085 (and d!448671 d!448481)))

(assert (=> bs!365085 (= lambda!64588 lambda!64564)))

(declare-fun bs!365086 () Bool)

(assert (= bs!365086 (and d!448671 d!448561)))

(assert (=> bs!365086 (= lambda!64588 lambda!64574)))

(declare-fun bs!365087 () Bool)

(assert (= bs!365087 (and d!448671 d!448549)))

(assert (=> bs!365087 (= lambda!64588 lambda!64573)))

(assert (=> d!448671 (= (inv!21347 (_1!8518 (_1!8519 (h!21500 mapDefault!7051)))) (forall!3861 (exprs!1181 (_1!8518 (_1!8519 (h!21500 mapDefault!7051)))) lambda!64588))))

(declare-fun bs!365088 () Bool)

(assert (= bs!365088 d!448671))

(declare-fun m!1780012 () Bool)

(assert (=> bs!365088 m!1780012))

(assert (=> b!1514848 d!448671))

(declare-fun d!448673 () Bool)

(assert (=> d!448673 (= (inv!21348 (xs!8229 (c!248131 treated!70))) (<= (size!13022 (innerList!5506 (xs!8229 (c!248131 treated!70)))) 2147483647))))

(declare-fun bs!365089 () Bool)

(assert (= bs!365089 d!448673))

(declare-fun m!1780014 () Bool)

(assert (=> bs!365089 m!1780014))

(assert (=> b!1514846 d!448673))

(declare-fun d!448675 () Bool)

(declare-fun res!681626 () Bool)

(declare-fun e!969200 () Bool)

(assert (=> d!448675 (=> (not res!681626) (not e!969200))))

(declare-fun valid!1193 (MutableMap!1433) Bool)

(assert (=> d!448675 (= res!681626 (valid!1193 (cache!1814 cacheDown!629)))))

(assert (=> d!448675 (= (validCacheMapDown!136 (cache!1814 cacheDown!629)) e!969200)))

(declare-fun b!1515377 () Bool)

(declare-fun res!681627 () Bool)

(assert (=> b!1515377 (=> (not res!681627) (not e!969200))))

(declare-fun invariantList!224 (List!16171) Bool)

(declare-datatypes ((ListMap!497 0))(
  ( (ListMap!498 (toList!818 List!16171)) )
))
(declare-fun map!3428 (MutableMap!1433) ListMap!497)

(assert (=> b!1515377 (= res!681627 (invariantList!224 (toList!818 (map!3428 (cache!1814 cacheDown!629)))))))

(declare-fun b!1515378 () Bool)

(declare-fun lambda!64591 () Int)

(declare-fun forall!3864 (List!16171 Int) Bool)

(assert (=> b!1515378 (= e!969200 (forall!3864 (toList!818 (map!3428 (cache!1814 cacheDown!629))) lambda!64591))))

(assert (= (and d!448675 res!681626) b!1515377))

(assert (= (and b!1515377 res!681627) b!1515378))

(declare-fun m!1780017 () Bool)

(assert (=> d!448675 m!1780017))

(declare-fun m!1780019 () Bool)

(assert (=> b!1515377 m!1780019))

(declare-fun m!1780021 () Bool)

(assert (=> b!1515377 m!1780021))

(assert (=> b!1515378 m!1780019))

(declare-fun m!1780023 () Bool)

(assert (=> b!1515378 m!1780023))

(assert (=> d!448381 d!448675))

(declare-fun d!448677 () Bool)

(assert (=> d!448677 (= (list!6358 lt!526683) (list!6360 (c!248132 lt!526683)))))

(declare-fun bs!365090 () Bool)

(assert (= bs!365090 d!448677))

(declare-fun m!1780025 () Bool)

(assert (=> bs!365090 m!1780025))

(assert (=> b!1514693 d!448677))

(declare-fun b!1515380 () Bool)

(declare-fun e!969202 () List!16170)

(assert (=> b!1515380 (= e!969202 (Cons!16102 (h!21503 (list!6358 acc!392)) (++!4367 (t!139454 (list!6358 acc!392)) (list!6358 (_1!8520 lt!526585)))))))

(declare-fun e!969201 () Bool)

(declare-fun lt!526839 () List!16170)

(declare-fun b!1515382 () Bool)

(assert (=> b!1515382 (= e!969201 (or (not (= (list!6358 (_1!8520 lt!526585)) Nil!16102)) (= lt!526839 (list!6358 acc!392))))))

(declare-fun b!1515379 () Bool)

(assert (=> b!1515379 (= e!969202 (list!6358 (_1!8520 lt!526585)))))

(declare-fun b!1515381 () Bool)

(declare-fun res!681629 () Bool)

(assert (=> b!1515381 (=> (not res!681629) (not e!969201))))

(assert (=> b!1515381 (= res!681629 (= (size!13023 lt!526839) (+ (size!13023 (list!6358 acc!392)) (size!13023 (list!6358 (_1!8520 lt!526585))))))))

(declare-fun d!448679 () Bool)

(assert (=> d!448679 e!969201))

(declare-fun res!681628 () Bool)

(assert (=> d!448679 (=> (not res!681628) (not e!969201))))

(assert (=> d!448679 (= res!681628 (= (content!2317 lt!526839) ((_ map or) (content!2317 (list!6358 acc!392)) (content!2317 (list!6358 (_1!8520 lt!526585))))))))

(assert (=> d!448679 (= lt!526839 e!969202)))

(declare-fun c!248309 () Bool)

(assert (=> d!448679 (= c!248309 ((_ is Nil!16102) (list!6358 acc!392)))))

(assert (=> d!448679 (= (++!4367 (list!6358 acc!392) (list!6358 (_1!8520 lt!526585))) lt!526839)))

(assert (= (and d!448679 c!248309) b!1515379))

(assert (= (and d!448679 (not c!248309)) b!1515380))

(assert (= (and d!448679 res!681628) b!1515381))

(assert (= (and b!1515381 res!681629) b!1515382))

(assert (=> b!1515380 m!1779157))

(declare-fun m!1780027 () Bool)

(assert (=> b!1515380 m!1780027))

(declare-fun m!1780029 () Bool)

(assert (=> b!1515381 m!1780029))

(assert (=> b!1515381 m!1778745))

(declare-fun m!1780031 () Bool)

(assert (=> b!1515381 m!1780031))

(assert (=> b!1515381 m!1779157))

(declare-fun m!1780033 () Bool)

(assert (=> b!1515381 m!1780033))

(declare-fun m!1780035 () Bool)

(assert (=> d!448679 m!1780035))

(assert (=> d!448679 m!1778745))

(declare-fun m!1780037 () Bool)

(assert (=> d!448679 m!1780037))

(assert (=> d!448679 m!1779157))

(declare-fun m!1780039 () Bool)

(assert (=> d!448679 m!1780039))

(assert (=> b!1514693 d!448679))

(assert (=> b!1514693 d!448427))

(declare-fun d!448681 () Bool)

(assert (=> d!448681 (= (list!6358 (_1!8520 lt!526585)) (list!6360 (c!248132 (_1!8520 lt!526585))))))

(declare-fun bs!365091 () Bool)

(assert (= bs!365091 d!448681))

(assert (=> bs!365091 m!1779777))

(assert (=> b!1514693 d!448681))

(declare-fun d!448683 () Bool)

(declare-fun lt!526840 () Int)

(assert (=> d!448683 (= lt!526840 (size!13022 (list!6357 (_2!8520 lt!526684))))))

(assert (=> d!448683 (= lt!526840 (size!13027 (c!248131 (_2!8520 lt!526684))))))

(assert (=> d!448683 (= (size!13025 (_2!8520 lt!526684)) lt!526840)))

(declare-fun bs!365092 () Bool)

(assert (= bs!365092 d!448683))

(assert (=> bs!365092 m!1779167))

(assert (=> bs!365092 m!1779167))

(declare-fun m!1780041 () Bool)

(assert (=> bs!365092 m!1780041))

(declare-fun m!1780043 () Bool)

(assert (=> bs!365092 m!1780043))

(assert (=> b!1514696 d!448683))

(declare-fun d!448685 () Bool)

(declare-fun lt!526841 () Int)

(assert (=> d!448685 (= lt!526841 (size!13022 (list!6357 totalInput!458)))))

(assert (=> d!448685 (= lt!526841 (size!13027 (c!248131 totalInput!458)))))

(assert (=> d!448685 (= (size!13025 totalInput!458) lt!526841)))

(declare-fun bs!365093 () Bool)

(assert (= bs!365093 d!448685))

(assert (=> bs!365093 m!1778767))

(assert (=> bs!365093 m!1778767))

(declare-fun m!1780045 () Bool)

(assert (=> bs!365093 m!1780045))

(declare-fun m!1780047 () Bool)

(assert (=> bs!365093 m!1780047))

(assert (=> b!1514696 d!448685))

(assert (=> b!1514450 d!448411))

(declare-fun d!448687 () Bool)

(declare-fun e!969203 () Bool)

(assert (=> d!448687 e!969203))

(declare-fun res!681630 () Bool)

(assert (=> d!448687 (=> (not res!681630) (not e!969203))))

(assert (=> d!448687 (= res!681630 (isBalanced!1612 (prepend!470 (c!248132 (_1!8520 lt!526688)) (_1!8525 (v!22915 lt!526689)))))))

(declare-fun lt!526842 () BalanceConc!10836)

(assert (=> d!448687 (= lt!526842 (BalanceConc!10837 (prepend!470 (c!248132 (_1!8520 lt!526688)) (_1!8525 (v!22915 lt!526689)))))))

(assert (=> d!448687 (= (prepend!469 (_1!8520 lt!526688) (_1!8525 (v!22915 lt!526689))) lt!526842)))

(declare-fun b!1515383 () Bool)

(assert (=> b!1515383 (= e!969203 (= (list!6358 lt!526842) (Cons!16102 (_1!8525 (v!22915 lt!526689)) (list!6358 (_1!8520 lt!526688)))))))

(assert (= (and d!448687 res!681630) b!1515383))

(declare-fun m!1780049 () Bool)

(assert (=> d!448687 m!1780049))

(assert (=> d!448687 m!1780049))

(declare-fun m!1780051 () Bool)

(assert (=> d!448687 m!1780051))

(declare-fun m!1780053 () Bool)

(assert (=> b!1515383 m!1780053))

(declare-fun m!1780055 () Bool)

(assert (=> b!1515383 m!1780055))

(assert (=> b!1514704 d!448687))

(declare-fun b!1515384 () Bool)

(declare-fun e!969207 () Bool)

(declare-fun lt!526843 () tuple2!14988)

(assert (=> b!1515384 (= e!969207 (not (isEmpty!9941 (_1!8520 lt!526843))))))

(declare-fun d!448689 () Bool)

(declare-fun e!969204 () Bool)

(assert (=> d!448689 e!969204))

(declare-fun res!681631 () Bool)

(assert (=> d!448689 (=> (not res!681631) (not e!969204))))

(declare-fun e!969206 () Bool)

(assert (=> d!448689 (= res!681631 e!969206)))

(declare-fun c!248311 () Bool)

(assert (=> d!448689 (= c!248311 (> (size!13024 (_1!8520 lt!526843)) 0))))

(declare-fun e!969205 () tuple2!14988)

(assert (=> d!448689 (= lt!526843 e!969205)))

(declare-fun c!248310 () Bool)

(declare-fun lt!526845 () Option!2934)

(assert (=> d!448689 (= c!248310 ((_ is Some!2933) lt!526845))))

(assert (=> d!448689 (= lt!526845 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526689))))))

(assert (=> d!448689 (= (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526689))) lt!526843)))

(declare-fun b!1515385 () Bool)

(declare-fun res!681632 () Bool)

(assert (=> b!1515385 (=> (not res!681632) (not e!969204))))

(assert (=> b!1515385 (= res!681632 (= (list!6358 (_1!8520 lt!526843)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526689)))))))))

(declare-fun b!1515386 () Bool)

(assert (=> b!1515386 (= e!969206 e!969207)))

(declare-fun res!681633 () Bool)

(assert (=> b!1515386 (= res!681633 (< (size!13025 (_2!8520 lt!526843)) (size!13025 (_2!8525 (v!22915 lt!526689)))))))

(assert (=> b!1515386 (=> (not res!681633) (not e!969207))))

(declare-fun b!1515387 () Bool)

(declare-fun lt!526844 () tuple2!14988)

(assert (=> b!1515387 (= e!969205 (tuple2!14989 (prepend!469 (_1!8520 lt!526844) (_1!8525 (v!22915 lt!526845))) (_2!8520 lt!526844)))))

(assert (=> b!1515387 (= lt!526844 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526845))))))

(declare-fun b!1515388 () Bool)

(assert (=> b!1515388 (= e!969205 (tuple2!14989 (BalanceConc!10837 Empty!5447) (_2!8525 (v!22915 lt!526689))))))

(declare-fun b!1515389 () Bool)

(assert (=> b!1515389 (= e!969204 (= (list!6357 (_2!8520 lt!526843)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526689)))))))))

(declare-fun b!1515390 () Bool)

(assert (=> b!1515390 (= e!969206 (= (list!6357 (_2!8520 lt!526843)) (list!6357 (_2!8525 (v!22915 lt!526689)))))))

(assert (= (and d!448689 c!248310) b!1515387))

(assert (= (and d!448689 (not c!248310)) b!1515388))

(assert (= (and d!448689 c!248311) b!1515386))

(assert (= (and d!448689 (not c!248311)) b!1515390))

(assert (= (and b!1515386 res!681633) b!1515384))

(assert (= (and d!448689 res!681631) b!1515385))

(assert (= (and b!1515385 res!681632) b!1515389))

(declare-fun m!1780057 () Bool)

(assert (=> b!1515390 m!1780057))

(declare-fun m!1780059 () Bool)

(assert (=> b!1515390 m!1780059))

(declare-fun m!1780061 () Bool)

(assert (=> b!1515385 m!1780061))

(assert (=> b!1515385 m!1780059))

(assert (=> b!1515385 m!1780059))

(declare-fun m!1780063 () Bool)

(assert (=> b!1515385 m!1780063))

(declare-fun m!1780065 () Bool)

(assert (=> b!1515387 m!1780065))

(declare-fun m!1780067 () Bool)

(assert (=> b!1515387 m!1780067))

(declare-fun m!1780069 () Bool)

(assert (=> b!1515384 m!1780069))

(assert (=> b!1515389 m!1780057))

(assert (=> b!1515389 m!1780059))

(assert (=> b!1515389 m!1780059))

(assert (=> b!1515389 m!1780063))

(declare-fun m!1780071 () Bool)

(assert (=> b!1515386 m!1780071))

(declare-fun m!1780073 () Bool)

(assert (=> b!1515386 m!1780073))

(declare-fun m!1780075 () Bool)

(assert (=> d!448689 m!1780075))

(declare-fun m!1780077 () Bool)

(assert (=> d!448689 m!1780077))

(assert (=> b!1514704 d!448689))

(assert (=> b!1514538 d!448579))

(assert (=> b!1514538 d!448641))

(assert (=> b!1514538 d!448639))

(assert (=> b!1514538 d!448403))

(declare-fun d!448691 () Bool)

(declare-fun c!248312 () Bool)

(assert (=> d!448691 (= c!248312 ((_ is Node!5446) (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))))

(declare-fun e!969208 () Bool)

(assert (=> d!448691 (= (inv!21340 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) e!969208)))

(declare-fun b!1515391 () Bool)

(assert (=> b!1515391 (= e!969208 (inv!21343 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))))

(declare-fun b!1515392 () Bool)

(declare-fun e!969209 () Bool)

(assert (=> b!1515392 (= e!969208 e!969209)))

(declare-fun res!681634 () Bool)

(assert (=> b!1515392 (= res!681634 (not ((_ is Leaf!8073) (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))))

(assert (=> b!1515392 (=> res!681634 e!969209)))

(declare-fun b!1515393 () Bool)

(assert (=> b!1515393 (= e!969209 (inv!21344 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))))

(assert (= (and d!448691 c!248312) b!1515391))

(assert (= (and d!448691 (not c!248312)) b!1515392))

(assert (= (and b!1515392 (not res!681634)) b!1515393))

(declare-fun m!1780079 () Bool)

(assert (=> b!1515391 m!1780079))

(declare-fun m!1780081 () Bool)

(assert (=> b!1515393 m!1780081))

(assert (=> b!1514636 d!448691))

(declare-fun d!448693 () Bool)

(declare-fun c!248313 () Bool)

(assert (=> d!448693 (= c!248313 ((_ is Nil!16101) lt!526680))))

(declare-fun e!969210 () (InoxSet C!8504))

(assert (=> d!448693 (= (content!2316 lt!526680) e!969210)))

(declare-fun b!1515394 () Bool)

(assert (=> b!1515394 (= e!969210 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515395 () Bool)

(assert (=> b!1515395 (= e!969210 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526680) true) (content!2316 (t!139453 lt!526680))))))

(assert (= (and d!448693 c!248313) b!1515394))

(assert (= (and d!448693 (not c!248313)) b!1515395))

(declare-fun m!1780083 () Bool)

(assert (=> b!1515395 m!1780083))

(declare-fun m!1780085 () Bool)

(assert (=> b!1515395 m!1780085))

(assert (=> d!448399 d!448693))

(assert (=> d!448399 d!448593))

(declare-fun d!448695 () Bool)

(declare-fun c!248314 () Bool)

(assert (=> d!448695 (= c!248314 ((_ is Nil!16101) lt!526579))))

(declare-fun e!969211 () (InoxSet C!8504))

(assert (=> d!448695 (= (content!2316 lt!526579) e!969211)))

(declare-fun b!1515396 () Bool)

(assert (=> b!1515396 (= e!969211 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515397 () Bool)

(assert (=> b!1515397 (= e!969211 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526579) true) (content!2316 (t!139453 lt!526579))))))

(assert (= (and d!448695 c!248314) b!1515396))

(assert (= (and d!448695 (not c!248314)) b!1515397))

(declare-fun m!1780087 () Bool)

(assert (=> b!1515397 m!1780087))

(declare-fun m!1780089 () Bool)

(assert (=> b!1515397 m!1780089))

(assert (=> d!448399 d!448695))

(declare-fun b!1515399 () Bool)

(declare-fun e!969213 () List!16170)

(assert (=> b!1515399 (= e!969213 (Cons!16102 (h!21503 (t!139454 lt!526584)) (++!4367 (t!139454 (t!139454 lt!526584)) (++!4367 lt!526582 lt!526572))))))

(declare-fun b!1515401 () Bool)

(declare-fun e!969212 () Bool)

(declare-fun lt!526846 () List!16170)

(assert (=> b!1515401 (= e!969212 (or (not (= (++!4367 lt!526582 lt!526572) Nil!16102)) (= lt!526846 (t!139454 lt!526584))))))

(declare-fun b!1515398 () Bool)

(assert (=> b!1515398 (= e!969213 (++!4367 lt!526582 lt!526572))))

(declare-fun b!1515400 () Bool)

(declare-fun res!681636 () Bool)

(assert (=> b!1515400 (=> (not res!681636) (not e!969212))))

(assert (=> b!1515400 (= res!681636 (= (size!13023 lt!526846) (+ (size!13023 (t!139454 lt!526584)) (size!13023 (++!4367 lt!526582 lt!526572)))))))

(declare-fun d!448697 () Bool)

(assert (=> d!448697 e!969212))

(declare-fun res!681635 () Bool)

(assert (=> d!448697 (=> (not res!681635) (not e!969212))))

(assert (=> d!448697 (= res!681635 (= (content!2317 lt!526846) ((_ map or) (content!2317 (t!139454 lt!526584)) (content!2317 (++!4367 lt!526582 lt!526572)))))))

(assert (=> d!448697 (= lt!526846 e!969213)))

(declare-fun c!248315 () Bool)

(assert (=> d!448697 (= c!248315 ((_ is Nil!16102) (t!139454 lt!526584)))))

(assert (=> d!448697 (= (++!4367 (t!139454 lt!526584) (++!4367 lt!526582 lt!526572)) lt!526846)))

(assert (= (and d!448697 c!248315) b!1515398))

(assert (= (and d!448697 (not c!248315)) b!1515399))

(assert (= (and d!448697 res!681635) b!1515400))

(assert (= (and b!1515400 res!681636) b!1515401))

(assert (=> b!1515399 m!1778793))

(declare-fun m!1780091 () Bool)

(assert (=> b!1515399 m!1780091))

(declare-fun m!1780093 () Bool)

(assert (=> b!1515400 m!1780093))

(assert (=> b!1515400 m!1779477))

(assert (=> b!1515400 m!1778793))

(assert (=> b!1515400 m!1778945))

(declare-fun m!1780095 () Bool)

(assert (=> d!448697 m!1780095))

(assert (=> d!448697 m!1779453))

(assert (=> d!448697 m!1778793))

(assert (=> d!448697 m!1778951))

(assert (=> b!1514572 d!448697))

(declare-fun bs!365094 () Bool)

(declare-fun d!448699 () Bool)

(assert (= bs!365094 (and d!448699 d!448547)))

(declare-fun lambda!64592 () Int)

(assert (=> bs!365094 (= lambda!64592 lambda!64572)))

(declare-fun bs!365095 () Bool)

(assert (= bs!365095 (and d!448699 d!448453)))

(assert (=> bs!365095 (= lambda!64592 lambda!64562)))

(declare-fun bs!365096 () Bool)

(assert (= bs!365096 (and d!448699 d!448659)))

(assert (=> bs!365096 (= lambda!64592 lambda!64585)))

(declare-fun bs!365097 () Bool)

(assert (= bs!365097 (and d!448699 d!448533)))

(assert (=> bs!365097 (= lambda!64592 lambda!64571)))

(declare-fun bs!365098 () Bool)

(assert (= bs!365098 (and d!448699 d!448477)))

(assert (=> bs!365098 (= lambda!64592 lambda!64563)))

(declare-fun bs!365099 () Bool)

(assert (= bs!365099 (and d!448699 d!448665)))

(assert (=> bs!365099 (= lambda!64592 lambda!64587)))

(declare-fun bs!365100 () Bool)

(assert (= bs!365100 (and d!448699 d!448661)))

(assert (=> bs!365100 (= lambda!64592 lambda!64586)))

(declare-fun bs!365101 () Bool)

(assert (= bs!365101 (and d!448699 d!448481)))

(assert (=> bs!365101 (= lambda!64592 lambda!64564)))

(declare-fun bs!365102 () Bool)

(assert (= bs!365102 (and d!448699 d!448575)))

(assert (=> bs!365102 (= lambda!64592 lambda!64575)))

(declare-fun bs!365103 () Bool)

(assert (= bs!365103 (and d!448699 d!448671)))

(assert (=> bs!365103 (= lambda!64592 lambda!64588)))

(declare-fun bs!365104 () Bool)

(assert (= bs!365104 (and d!448699 d!448561)))

(assert (=> bs!365104 (= lambda!64592 lambda!64574)))

(declare-fun bs!365105 () Bool)

(assert (= bs!365105 (and d!448699 d!448549)))

(assert (=> bs!365105 (= lambda!64592 lambda!64573)))

(assert (=> d!448699 (= (inv!21347 (_1!8518 (_1!8519 (h!21500 mapDefault!7055)))) (forall!3861 (exprs!1181 (_1!8518 (_1!8519 (h!21500 mapDefault!7055)))) lambda!64592))))

(declare-fun bs!365106 () Bool)

(assert (= bs!365106 d!448699))

(declare-fun m!1780097 () Bool)

(assert (=> bs!365106 m!1780097))

(assert (=> b!1514770 d!448699))

(declare-fun b!1515403 () Bool)

(declare-fun e!969214 () List!16169)

(assert (=> b!1515403 (= e!969214 (Cons!16101 (h!21502 (t!139453 lt!526569)) (++!4368 (t!139453 (t!139453 lt!526569)) lt!526579)))))

(declare-fun lt!526847 () List!16169)

(declare-fun e!969215 () Bool)

(declare-fun b!1515405 () Bool)

(assert (=> b!1515405 (= e!969215 (or (not (= lt!526579 Nil!16101)) (= lt!526847 (t!139453 lt!526569))))))

(declare-fun b!1515402 () Bool)

(assert (=> b!1515402 (= e!969214 lt!526579)))

(declare-fun d!448701 () Bool)

(assert (=> d!448701 e!969215))

(declare-fun res!681637 () Bool)

(assert (=> d!448701 (=> (not res!681637) (not e!969215))))

(assert (=> d!448701 (= res!681637 (= (content!2316 lt!526847) ((_ map or) (content!2316 (t!139453 lt!526569)) (content!2316 lt!526579))))))

(assert (=> d!448701 (= lt!526847 e!969214)))

(declare-fun c!248316 () Bool)

(assert (=> d!448701 (= c!248316 ((_ is Nil!16101) (t!139453 lt!526569)))))

(assert (=> d!448701 (= (++!4368 (t!139453 lt!526569) lt!526579) lt!526847)))

(declare-fun b!1515404 () Bool)

(declare-fun res!681638 () Bool)

(assert (=> b!1515404 (=> (not res!681638) (not e!969215))))

(assert (=> b!1515404 (= res!681638 (= (size!13022 lt!526847) (+ (size!13022 (t!139453 lt!526569)) (size!13022 lt!526579))))))

(assert (= (and d!448701 c!248316) b!1515402))

(assert (= (and d!448701 (not c!248316)) b!1515403))

(assert (= (and d!448701 res!681637) b!1515404))

(assert (= (and b!1515404 res!681638) b!1515405))

(declare-fun m!1780099 () Bool)

(assert (=> b!1515403 m!1780099))

(declare-fun m!1780101 () Bool)

(assert (=> d!448701 m!1780101))

(assert (=> d!448701 m!1779425))

(assert (=> d!448701 m!1779131))

(declare-fun m!1780103 () Bool)

(assert (=> b!1515404 m!1780103))

(assert (=> b!1515404 m!1779429))

(assert (=> b!1515404 m!1779079))

(assert (=> b!1514670 d!448701))

(declare-fun d!448703 () Bool)

(assert (=> d!448703 (= (list!6358 (_1!8520 lt!526690)) (list!6360 (c!248132 (_1!8520 lt!526690))))))

(declare-fun bs!365107 () Bool)

(assert (= bs!365107 d!448703))

(declare-fun m!1780105 () Bool)

(assert (=> bs!365107 m!1780105))

(assert (=> b!1514712 d!448703))

(declare-fun b!1515406 () Bool)

(declare-fun e!969218 () Bool)

(declare-fun lt!526850 () tuple2!14998)

(assert (=> b!1515406 (= e!969218 (= (_2!8529 lt!526850) (list!6357 treated!70)))))

(declare-fun b!1515407 () Bool)

(declare-fun e!969217 () tuple2!14998)

(assert (=> b!1515407 (= e!969217 (tuple2!14999 Nil!16102 (list!6357 treated!70)))))

(declare-fun d!448705 () Bool)

(assert (=> d!448705 e!969218))

(declare-fun c!248318 () Bool)

(assert (=> d!448705 (= c!248318 (> (size!13023 (_1!8529 lt!526850)) 0))))

(assert (=> d!448705 (= lt!526850 e!969217)))

(declare-fun c!248317 () Bool)

(declare-fun lt!526848 () Option!2935)

(assert (=> d!448705 (= c!248317 ((_ is Some!2934) lt!526848))))

(assert (=> d!448705 (= lt!526848 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 treated!70)))))

(assert (=> d!448705 (= (lexList!748 thiss!13241 rules!1640 (list!6357 treated!70)) lt!526850)))

(declare-fun b!1515408 () Bool)

(declare-fun e!969216 () Bool)

(assert (=> b!1515408 (= e!969216 (not (isEmpty!9939 (_1!8529 lt!526850))))))

(declare-fun b!1515409 () Bool)

(declare-fun lt!526849 () tuple2!14998)

(assert (=> b!1515409 (= e!969217 (tuple2!14999 (Cons!16102 (_1!8528 (v!22918 lt!526848)) (_1!8529 lt!526849)) (_2!8529 lt!526849)))))

(assert (=> b!1515409 (= lt!526849 (lexList!748 thiss!13241 rules!1640 (_2!8528 (v!22918 lt!526848))))))

(declare-fun b!1515410 () Bool)

(assert (=> b!1515410 (= e!969218 e!969216)))

(declare-fun res!681639 () Bool)

(assert (=> b!1515410 (= res!681639 (< (size!13022 (_2!8529 lt!526850)) (size!13022 (list!6357 treated!70))))))

(assert (=> b!1515410 (=> (not res!681639) (not e!969216))))

(assert (= (and d!448705 c!248317) b!1515409))

(assert (= (and d!448705 (not c!248317)) b!1515407))

(assert (= (and d!448705 c!248318) b!1515410))

(assert (= (and d!448705 (not c!248318)) b!1515406))

(assert (= (and b!1515410 res!681639) b!1515408))

(declare-fun m!1780107 () Bool)

(assert (=> d!448705 m!1780107))

(assert (=> d!448705 m!1778771))

(declare-fun m!1780109 () Bool)

(assert (=> d!448705 m!1780109))

(declare-fun m!1780111 () Bool)

(assert (=> b!1515408 m!1780111))

(declare-fun m!1780113 () Bool)

(assert (=> b!1515409 m!1780113))

(declare-fun m!1780115 () Bool)

(assert (=> b!1515410 m!1780115))

(assert (=> b!1515410 m!1778771))

(assert (=> b!1515410 m!1779809))

(assert (=> b!1514712 d!448705))

(assert (=> b!1514712 d!448405))

(declare-fun d!448707 () Bool)

(assert (=> d!448707 (= (inv!21332 (tag!3111 (h!21506 (t!139457 rules!1640)))) (= (mod (str.len (value!90800 (tag!3111 (h!21506 (t!139457 rules!1640))))) 2) 0))))

(assert (=> b!1514727 d!448707))

(declare-fun d!448709 () Bool)

(declare-fun res!681640 () Bool)

(declare-fun e!969219 () Bool)

(assert (=> d!448709 (=> (not res!681640) (not e!969219))))

(assert (=> d!448709 (= res!681640 (semiInverseModEq!1072 (toChars!4057 (transformation!2847 (h!21506 (t!139457 rules!1640)))) (toValue!4198 (transformation!2847 (h!21506 (t!139457 rules!1640))))))))

(assert (=> d!448709 (= (inv!21342 (transformation!2847 (h!21506 (t!139457 rules!1640)))) e!969219)))

(declare-fun b!1515411 () Bool)

(assert (=> b!1515411 (= e!969219 (equivClasses!1031 (toChars!4057 (transformation!2847 (h!21506 (t!139457 rules!1640)))) (toValue!4198 (transformation!2847 (h!21506 (t!139457 rules!1640))))))))

(assert (= (and d!448709 res!681640) b!1515411))

(declare-fun m!1780117 () Bool)

(assert (=> d!448709 m!1780117))

(declare-fun m!1780119 () Bool)

(assert (=> b!1515411 m!1780119))

(assert (=> b!1514727 d!448709))

(declare-fun d!448711 () Bool)

(assert (=> d!448711 (= (list!6358 (_1!8520 lt!526649)) (list!6360 (c!248132 (_1!8520 lt!526649))))))

(declare-fun bs!365108 () Bool)

(assert (= bs!365108 d!448711))

(declare-fun m!1780121 () Bool)

(assert (=> bs!365108 m!1780121))

(assert (=> b!1514614 d!448711))

(declare-fun b!1515412 () Bool)

(declare-fun e!969222 () Bool)

(declare-fun lt!526853 () tuple2!14998)

(assert (=> b!1515412 (= e!969222 (= (_2!8529 lt!526853) (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(declare-fun b!1515413 () Bool)

(declare-fun e!969221 () tuple2!14998)

(assert (=> b!1515413 (= e!969221 (tuple2!14999 Nil!16102 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(declare-fun d!448713 () Bool)

(assert (=> d!448713 e!969222))

(declare-fun c!248320 () Bool)

(assert (=> d!448713 (= c!248320 (> (size!13023 (_1!8529 lt!526853)) 0))))

(assert (=> d!448713 (= lt!526853 e!969221)))

(declare-fun c!248319 () Bool)

(declare-fun lt!526851 () Option!2935)

(assert (=> d!448713 (= c!248319 ((_ is Some!2934) lt!526851))))

(assert (=> d!448713 (= lt!526851 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))

(assert (=> d!448713 (= (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))) lt!526853)))

(declare-fun b!1515414 () Bool)

(declare-fun e!969220 () Bool)

(assert (=> b!1515414 (= e!969220 (not (isEmpty!9939 (_1!8529 lt!526853))))))

(declare-fun b!1515415 () Bool)

(declare-fun lt!526852 () tuple2!14998)

(assert (=> b!1515415 (= e!969221 (tuple2!14999 (Cons!16102 (_1!8528 (v!22918 lt!526851)) (_1!8529 lt!526852)) (_2!8529 lt!526852)))))

(assert (=> b!1515415 (= lt!526852 (lexList!748 thiss!13241 rules!1640 (_2!8528 (v!22918 lt!526851))))))

(declare-fun b!1515416 () Bool)

(assert (=> b!1515416 (= e!969222 e!969220)))

(declare-fun res!681641 () Bool)

(assert (=> b!1515416 (= res!681641 (< (size!13022 (_2!8529 lt!526853)) (size!13022 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))))

(assert (=> b!1515416 (=> (not res!681641) (not e!969220))))

(assert (= (and d!448713 c!248319) b!1515415))

(assert (= (and d!448713 (not c!248319)) b!1515413))

(assert (= (and d!448713 c!248320) b!1515416))

(assert (= (and d!448713 (not c!248320)) b!1515412))

(assert (= (and b!1515416 res!681641) b!1515414))

(declare-fun m!1780123 () Bool)

(assert (=> d!448713 m!1780123))

(assert (=> d!448713 m!1778795))

(declare-fun m!1780125 () Bool)

(assert (=> d!448713 m!1780125))

(declare-fun m!1780127 () Bool)

(assert (=> b!1515414 m!1780127))

(declare-fun m!1780129 () Bool)

(assert (=> b!1515415 m!1780129))

(declare-fun m!1780131 () Bool)

(assert (=> b!1515416 m!1780131))

(assert (=> b!1515416 m!1778795))

(assert (=> b!1515416 m!1779865))

(assert (=> b!1514614 d!448713))

(assert (=> b!1514614 d!448373))

(declare-fun d!448715 () Bool)

(declare-fun c!248321 () Bool)

(assert (=> d!448715 (= c!248321 ((_ is Node!5446) (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(declare-fun e!969223 () Bool)

(assert (=> d!448715 (= (inv!21340 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) e!969223)))

(declare-fun b!1515417 () Bool)

(assert (=> b!1515417 (= e!969223 (inv!21343 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(declare-fun b!1515418 () Bool)

(declare-fun e!969224 () Bool)

(assert (=> b!1515418 (= e!969223 e!969224)))

(declare-fun res!681642 () Bool)

(assert (=> b!1515418 (= res!681642 (not ((_ is Leaf!8073) (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))))))

(assert (=> b!1515418 (=> res!681642 e!969224)))

(declare-fun b!1515419 () Bool)

(assert (=> b!1515419 (= e!969224 (inv!21344 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(assert (= (and d!448715 c!248321) b!1515417))

(assert (= (and d!448715 (not c!248321)) b!1515418))

(assert (= (and b!1515418 (not res!681642)) b!1515419))

(declare-fun m!1780133 () Bool)

(assert (=> b!1515417 m!1780133))

(declare-fun m!1780135 () Bool)

(assert (=> b!1515419 m!1780135))

(assert (=> b!1514859 d!448715))

(declare-fun d!448717 () Bool)

(declare-fun c!248322 () Bool)

(assert (=> d!448717 (= c!248322 ((_ is Node!5446) (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(declare-fun e!969225 () Bool)

(assert (=> d!448717 (= (inv!21340 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) e!969225)))

(declare-fun b!1515420 () Bool)

(assert (=> b!1515420 (= e!969225 (inv!21343 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(declare-fun b!1515421 () Bool)

(declare-fun e!969226 () Bool)

(assert (=> b!1515421 (= e!969225 e!969226)))

(declare-fun res!681643 () Bool)

(assert (=> b!1515421 (= res!681643 (not ((_ is Leaf!8073) (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))))))

(assert (=> b!1515421 (=> res!681643 e!969226)))

(declare-fun b!1515422 () Bool)

(assert (=> b!1515422 (= e!969226 (inv!21344 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(assert (= (and d!448717 c!248322) b!1515420))

(assert (= (and d!448717 (not c!248322)) b!1515421))

(assert (= (and b!1515421 (not res!681643)) b!1515422))

(declare-fun m!1780137 () Bool)

(assert (=> b!1515420 m!1780137))

(declare-fun m!1780139 () Bool)

(assert (=> b!1515422 m!1780139))

(assert (=> b!1514859 d!448717))

(declare-fun d!448719 () Bool)

(assert (=> d!448719 (= (list!6357 (_2!8520 lt!526684)) (list!6359 (c!248131 (_2!8520 lt!526684))))))

(declare-fun bs!365109 () Bool)

(assert (= bs!365109 d!448719))

(declare-fun m!1780141 () Bool)

(assert (=> bs!365109 m!1780141))

(assert (=> b!1514700 d!448719))

(assert (=> b!1514700 d!448401))

(declare-fun bs!365110 () Bool)

(declare-fun d!448721 () Bool)

(assert (= bs!365110 (and d!448721 d!448547)))

(declare-fun lambda!64593 () Int)

(assert (=> bs!365110 (= lambda!64593 lambda!64572)))

(declare-fun bs!365111 () Bool)

(assert (= bs!365111 (and d!448721 d!448453)))

(assert (=> bs!365111 (= lambda!64593 lambda!64562)))

(declare-fun bs!365112 () Bool)

(assert (= bs!365112 (and d!448721 d!448699)))

(assert (=> bs!365112 (= lambda!64593 lambda!64592)))

(declare-fun bs!365113 () Bool)

(assert (= bs!365113 (and d!448721 d!448659)))

(assert (=> bs!365113 (= lambda!64593 lambda!64585)))

(declare-fun bs!365114 () Bool)

(assert (= bs!365114 (and d!448721 d!448533)))

(assert (=> bs!365114 (= lambda!64593 lambda!64571)))

(declare-fun bs!365115 () Bool)

(assert (= bs!365115 (and d!448721 d!448477)))

(assert (=> bs!365115 (= lambda!64593 lambda!64563)))

(declare-fun bs!365116 () Bool)

(assert (= bs!365116 (and d!448721 d!448665)))

(assert (=> bs!365116 (= lambda!64593 lambda!64587)))

(declare-fun bs!365117 () Bool)

(assert (= bs!365117 (and d!448721 d!448661)))

(assert (=> bs!365117 (= lambda!64593 lambda!64586)))

(declare-fun bs!365118 () Bool)

(assert (= bs!365118 (and d!448721 d!448481)))

(assert (=> bs!365118 (= lambda!64593 lambda!64564)))

(declare-fun bs!365119 () Bool)

(assert (= bs!365119 (and d!448721 d!448575)))

(assert (=> bs!365119 (= lambda!64593 lambda!64575)))

(declare-fun bs!365120 () Bool)

(assert (= bs!365120 (and d!448721 d!448671)))

(assert (=> bs!365120 (= lambda!64593 lambda!64588)))

(declare-fun bs!365121 () Bool)

(assert (= bs!365121 (and d!448721 d!448561)))

(assert (=> bs!365121 (= lambda!64593 lambda!64574)))

(declare-fun bs!365122 () Bool)

(assert (= bs!365122 (and d!448721 d!448549)))

(assert (=> bs!365122 (= lambda!64593 lambda!64573)))

(assert (=> d!448721 (= (inv!21347 setElem!9188) (forall!3861 (exprs!1181 setElem!9188) lambda!64593))))

(declare-fun bs!365123 () Bool)

(assert (= bs!365123 d!448721))

(declare-fun m!1780143 () Bool)

(assert (=> bs!365123 m!1780143))

(assert (=> setNonEmpty!9188 d!448721))

(declare-fun d!448723 () Bool)

(assert (=> d!448723 (= (inv!21338 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (isBalanced!1611 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))))

(declare-fun bs!365124 () Bool)

(assert (= bs!365124 d!448723))

(declare-fun m!1780145 () Bool)

(assert (=> bs!365124 m!1780145))

(assert (=> tb!86209 d!448723))

(declare-fun b!1515424 () Bool)

(declare-fun e!969227 () List!16169)

(declare-fun e!969228 () List!16169)

(assert (=> b!1515424 (= e!969227 e!969228)))

(declare-fun c!248324 () Bool)

(assert (=> b!1515424 (= c!248324 ((_ is Leaf!8073) (c!248131 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(declare-fun b!1515426 () Bool)

(assert (=> b!1515426 (= e!969228 (++!4368 (list!6359 (left!13374 (c!248131 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) (list!6359 (right!13704 (c!248131 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))))

(declare-fun d!448725 () Bool)

(declare-fun c!248323 () Bool)

(assert (=> d!448725 (= c!248323 ((_ is Empty!5446) (c!248131 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(assert (=> d!448725 (= (list!6359 (c!248131 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) e!969227)))

(declare-fun b!1515423 () Bool)

(assert (=> b!1515423 (= e!969227 Nil!16101)))

(declare-fun b!1515425 () Bool)

(assert (=> b!1515425 (= e!969228 (list!6361 (xs!8229 (c!248131 (charsOf!1632 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))))

(assert (= (and d!448725 c!248323) b!1515423))

(assert (= (and d!448725 (not c!248323)) b!1515424))

(assert (= (and b!1515424 c!248324) b!1515425))

(assert (= (and b!1515424 (not c!248324)) b!1515426))

(declare-fun m!1780147 () Bool)

(assert (=> b!1515426 m!1780147))

(declare-fun m!1780149 () Bool)

(assert (=> b!1515426 m!1780149))

(assert (=> b!1515426 m!1780147))

(assert (=> b!1515426 m!1780149))

(declare-fun m!1780151 () Bool)

(assert (=> b!1515426 m!1780151))

(declare-fun m!1780153 () Bool)

(assert (=> b!1515425 m!1780153))

(assert (=> d!448365 d!448725))

(declare-fun b!1515432 () Bool)

(assert (=> b!1515432 true))

(declare-fun d!448727 () Bool)

(declare-fun res!681648 () Bool)

(declare-fun e!969231 () Bool)

(assert (=> d!448727 (=> (not res!681648) (not e!969231))))

(declare-fun valid!1194 (MutableMap!1434) Bool)

(assert (=> d!448727 (= res!681648 (valid!1194 (cache!1815 cacheFurthestNullable!64)))))

(assert (=> d!448727 (= (validCacheMapFurthestNullable!49 (cache!1815 cacheFurthestNullable!64) (totalInput!2301 cacheFurthestNullable!64)) e!969231)))

(declare-fun b!1515431 () Bool)

(declare-fun res!681649 () Bool)

(assert (=> b!1515431 (=> (not res!681649) (not e!969231))))

(declare-fun invariantList!225 (List!16172) Bool)

(declare-datatypes ((ListMap!499 0))(
  ( (ListMap!500 (toList!819 List!16172)) )
))
(declare-fun map!3429 (MutableMap!1434) ListMap!499)

(assert (=> b!1515431 (= res!681649 (invariantList!225 (toList!819 (map!3429 (cache!1815 cacheFurthestNullable!64)))))))

(declare-fun lambda!64596 () Int)

(declare-fun forall!3865 (List!16172 Int) Bool)

(assert (=> b!1515432 (= e!969231 (forall!3865 (toList!819 (map!3429 (cache!1815 cacheFurthestNullable!64))) lambda!64596))))

(assert (= (and d!448727 res!681648) b!1515431))

(assert (= (and b!1515431 res!681649) b!1515432))

(declare-fun m!1780156 () Bool)

(assert (=> d!448727 m!1780156))

(declare-fun m!1780158 () Bool)

(assert (=> b!1515431 m!1780158))

(declare-fun m!1780160 () Bool)

(assert (=> b!1515431 m!1780160))

(assert (=> b!1515432 m!1780158))

(declare-fun m!1780162 () Bool)

(assert (=> b!1515432 m!1780162))

(assert (=> b!1514493 d!448727))

(declare-fun b!1515435 () Bool)

(declare-fun res!681654 () Bool)

(declare-fun e!969232 () Bool)

(assert (=> b!1515435 (=> (not res!681654) (not e!969232))))

(assert (=> b!1515435 (= res!681654 (not (isEmpty!9945 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))))))

(declare-fun b!1515436 () Bool)

(declare-fun res!681651 () Bool)

(assert (=> b!1515436 (=> (not res!681651) (not e!969232))))

(assert (=> b!1515436 (= res!681651 (isBalanced!1611 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(declare-fun b!1515437 () Bool)

(declare-fun res!681650 () Bool)

(assert (=> b!1515437 (=> (not res!681650) (not e!969232))))

(assert (=> b!1515437 (= res!681650 (isBalanced!1611 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(declare-fun d!448729 () Bool)

(declare-fun res!681653 () Bool)

(declare-fun e!969233 () Bool)

(assert (=> d!448729 (=> res!681653 e!969233)))

(assert (=> d!448729 (= res!681653 (not ((_ is Node!5446) (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(assert (=> d!448729 (= (isBalanced!1611 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) e!969233)))

(declare-fun b!1515438 () Bool)

(assert (=> b!1515438 (= e!969232 (not (isEmpty!9945 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))))))

(declare-fun b!1515439 () Bool)

(assert (=> b!1515439 (= e!969233 e!969232)))

(declare-fun res!681655 () Bool)

(assert (=> b!1515439 (=> (not res!681655) (not e!969232))))

(assert (=> b!1515439 (= res!681655 (<= (- 1) (- (height!814 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) (height!814 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))))

(declare-fun b!1515440 () Bool)

(declare-fun res!681652 () Bool)

(assert (=> b!1515440 (=> (not res!681652) (not e!969232))))

(assert (=> b!1515440 (= res!681652 (<= (- (height!814 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) (height!814 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) 1))))

(assert (= (and d!448729 (not res!681653)) b!1515439))

(assert (= (and b!1515439 res!681655) b!1515440))

(assert (= (and b!1515440 res!681652) b!1515436))

(assert (= (and b!1515436 res!681651) b!1515437))

(assert (= (and b!1515437 res!681650) b!1515435))

(assert (= (and b!1515435 res!681654) b!1515438))

(declare-fun m!1780164 () Bool)

(assert (=> b!1515436 m!1780164))

(declare-fun m!1780166 () Bool)

(assert (=> b!1515439 m!1780166))

(declare-fun m!1780168 () Bool)

(assert (=> b!1515439 m!1780168))

(assert (=> b!1515440 m!1780166))

(assert (=> b!1515440 m!1780168))

(declare-fun m!1780170 () Bool)

(assert (=> b!1515435 m!1780170))

(declare-fun m!1780172 () Bool)

(assert (=> b!1515438 m!1780172))

(declare-fun m!1780174 () Bool)

(assert (=> b!1515437 m!1780174))

(assert (=> d!448389 d!448729))

(declare-fun d!448731 () Bool)

(declare-fun c!248325 () Bool)

(assert (=> d!448731 (= c!248325 ((_ is Node!5446) (left!13374 (c!248131 totalInput!458))))))

(declare-fun e!969234 () Bool)

(assert (=> d!448731 (= (inv!21340 (left!13374 (c!248131 totalInput!458))) e!969234)))

(declare-fun b!1515441 () Bool)

(assert (=> b!1515441 (= e!969234 (inv!21343 (left!13374 (c!248131 totalInput!458))))))

(declare-fun b!1515442 () Bool)

(declare-fun e!969235 () Bool)

(assert (=> b!1515442 (= e!969234 e!969235)))

(declare-fun res!681656 () Bool)

(assert (=> b!1515442 (= res!681656 (not ((_ is Leaf!8073) (left!13374 (c!248131 totalInput!458)))))))

(assert (=> b!1515442 (=> res!681656 e!969235)))

(declare-fun b!1515443 () Bool)

(assert (=> b!1515443 (= e!969235 (inv!21344 (left!13374 (c!248131 totalInput!458))))))

(assert (= (and d!448731 c!248325) b!1515441))

(assert (= (and d!448731 (not c!248325)) b!1515442))

(assert (= (and b!1515442 (not res!681656)) b!1515443))

(declare-fun m!1780176 () Bool)

(assert (=> b!1515441 m!1780176))

(declare-fun m!1780178 () Bool)

(assert (=> b!1515443 m!1780178))

(assert (=> b!1514873 d!448731))

(declare-fun d!448733 () Bool)

(declare-fun c!248326 () Bool)

(assert (=> d!448733 (= c!248326 ((_ is Node!5446) (right!13704 (c!248131 totalInput!458))))))

(declare-fun e!969236 () Bool)

(assert (=> d!448733 (= (inv!21340 (right!13704 (c!248131 totalInput!458))) e!969236)))

(declare-fun b!1515444 () Bool)

(assert (=> b!1515444 (= e!969236 (inv!21343 (right!13704 (c!248131 totalInput!458))))))

(declare-fun b!1515445 () Bool)

(declare-fun e!969237 () Bool)

(assert (=> b!1515445 (= e!969236 e!969237)))

(declare-fun res!681657 () Bool)

(assert (=> b!1515445 (= res!681657 (not ((_ is Leaf!8073) (right!13704 (c!248131 totalInput!458)))))))

(assert (=> b!1515445 (=> res!681657 e!969237)))

(declare-fun b!1515446 () Bool)

(assert (=> b!1515446 (= e!969237 (inv!21344 (right!13704 (c!248131 totalInput!458))))))

(assert (= (and d!448733 c!248326) b!1515444))

(assert (= (and d!448733 (not c!248326)) b!1515445))

(assert (= (and b!1515445 (not res!681657)) b!1515446))

(declare-fun m!1780180 () Bool)

(assert (=> b!1515444 m!1780180))

(declare-fun m!1780182 () Bool)

(assert (=> b!1515446 m!1780182))

(assert (=> b!1514873 d!448733))

(declare-fun d!448735 () Bool)

(declare-fun lt!526854 () Bool)

(assert (=> d!448735 (= lt!526854 (isEmpty!9939 (list!6358 (_1!8520 lt!526677))))))

(assert (=> d!448735 (= lt!526854 (isEmpty!9944 (c!248132 (_1!8520 lt!526677))))))

(assert (=> d!448735 (= (isEmpty!9941 (_1!8520 lt!526677)) lt!526854)))

(declare-fun bs!365125 () Bool)

(assert (= bs!365125 d!448735))

(assert (=> bs!365125 m!1779109))

(assert (=> bs!365125 m!1779109))

(declare-fun m!1780184 () Bool)

(assert (=> bs!365125 m!1780184))

(declare-fun m!1780186 () Bool)

(assert (=> bs!365125 m!1780186))

(assert (=> b!1514662 d!448735))

(declare-fun d!448737 () Bool)

(declare-fun res!681658 () Bool)

(declare-fun e!969238 () Bool)

(assert (=> d!448737 (=> (not res!681658) (not e!969238))))

(assert (=> d!448737 (= res!681658 (= (csize!11122 (c!248131 totalInput!458)) (+ (size!13027 (left!13374 (c!248131 totalInput!458))) (size!13027 (right!13704 (c!248131 totalInput!458))))))))

(assert (=> d!448737 (= (inv!21343 (c!248131 totalInput!458)) e!969238)))

(declare-fun b!1515447 () Bool)

(declare-fun res!681659 () Bool)

(assert (=> b!1515447 (=> (not res!681659) (not e!969238))))

(assert (=> b!1515447 (= res!681659 (and (not (= (left!13374 (c!248131 totalInput!458)) Empty!5446)) (not (= (right!13704 (c!248131 totalInput!458)) Empty!5446))))))

(declare-fun b!1515448 () Bool)

(declare-fun res!681660 () Bool)

(assert (=> b!1515448 (=> (not res!681660) (not e!969238))))

(assert (=> b!1515448 (= res!681660 (= (cheight!5657 (c!248131 totalInput!458)) (+ (max!0 (height!814 (left!13374 (c!248131 totalInput!458))) (height!814 (right!13704 (c!248131 totalInput!458)))) 1)))))

(declare-fun b!1515449 () Bool)

(assert (=> b!1515449 (= e!969238 (<= 0 (cheight!5657 (c!248131 totalInput!458))))))

(assert (= (and d!448737 res!681658) b!1515447))

(assert (= (and b!1515447 res!681659) b!1515448))

(assert (= (and b!1515448 res!681660) b!1515449))

(declare-fun m!1780188 () Bool)

(assert (=> d!448737 m!1780188))

(declare-fun m!1780190 () Bool)

(assert (=> d!448737 m!1780190))

(declare-fun m!1780192 () Bool)

(assert (=> b!1515448 m!1780192))

(declare-fun m!1780194 () Bool)

(assert (=> b!1515448 m!1780194))

(assert (=> b!1515448 m!1780192))

(assert (=> b!1515448 m!1780194))

(declare-fun m!1780196 () Bool)

(assert (=> b!1515448 m!1780196))

(assert (=> b!1514708 d!448737))

(assert (=> d!448363 d!448343))

(assert (=> d!448363 d!448369))

(assert (=> d!448363 d!448379))

(declare-fun d!448739 () Bool)

(assert (=> d!448739 (= (++!4367 (++!4367 lt!526584 lt!526582) lt!526572) (++!4367 lt!526584 (++!4367 lt!526582 lt!526572)))))

(assert (=> d!448739 true))

(declare-fun _$52!1046 () Unit!25754)

(assert (=> d!448739 (= (choose!9163 lt!526584 lt!526582 lt!526572) _$52!1046)))

(declare-fun bs!365126 () Bool)

(assert (= bs!365126 d!448739))

(assert (=> bs!365126 m!1778783))

(assert (=> bs!365126 m!1778783))

(assert (=> bs!365126 m!1778785))

(assert (=> bs!365126 m!1778793))

(assert (=> bs!365126 m!1778793))

(assert (=> bs!365126 m!1778807))

(assert (=> d!448363 d!448739))

(assert (=> d!448363 d!448359))

(assert (=> b!1514594 d!448445))

(assert (=> b!1514594 d!448443))

(assert (=> b!1514594 d!448439))

(assert (=> b!1514594 d!448403))

(assert (=> b!1514716 d!448631))

(assert (=> b!1514716 d!448705))

(assert (=> b!1514716 d!448405))

(declare-fun bs!365127 () Bool)

(declare-fun d!448741 () Bool)

(assert (= bs!365127 (and d!448741 d!448547)))

(declare-fun lambda!64597 () Int)

(assert (=> bs!365127 (= lambda!64597 lambda!64572)))

(declare-fun bs!365128 () Bool)

(assert (= bs!365128 (and d!448741 d!448453)))

(assert (=> bs!365128 (= lambda!64597 lambda!64562)))

(declare-fun bs!365129 () Bool)

(assert (= bs!365129 (and d!448741 d!448699)))

(assert (=> bs!365129 (= lambda!64597 lambda!64592)))

(declare-fun bs!365130 () Bool)

(assert (= bs!365130 (and d!448741 d!448659)))

(assert (=> bs!365130 (= lambda!64597 lambda!64585)))

(declare-fun bs!365131 () Bool)

(assert (= bs!365131 (and d!448741 d!448533)))

(assert (=> bs!365131 (= lambda!64597 lambda!64571)))

(declare-fun bs!365132 () Bool)

(assert (= bs!365132 (and d!448741 d!448477)))

(assert (=> bs!365132 (= lambda!64597 lambda!64563)))

(declare-fun bs!365133 () Bool)

(assert (= bs!365133 (and d!448741 d!448665)))

(assert (=> bs!365133 (= lambda!64597 lambda!64587)))

(declare-fun bs!365134 () Bool)

(assert (= bs!365134 (and d!448741 d!448661)))

(assert (=> bs!365134 (= lambda!64597 lambda!64586)))

(declare-fun bs!365135 () Bool)

(assert (= bs!365135 (and d!448741 d!448575)))

(assert (=> bs!365135 (= lambda!64597 lambda!64575)))

(declare-fun bs!365136 () Bool)

(assert (= bs!365136 (and d!448741 d!448671)))

(assert (=> bs!365136 (= lambda!64597 lambda!64588)))

(declare-fun bs!365137 () Bool)

(assert (= bs!365137 (and d!448741 d!448561)))

(assert (=> bs!365137 (= lambda!64597 lambda!64574)))

(declare-fun bs!365138 () Bool)

(assert (= bs!365138 (and d!448741 d!448549)))

(assert (=> bs!365138 (= lambda!64597 lambda!64573)))

(declare-fun bs!365139 () Bool)

(assert (= bs!365139 (and d!448741 d!448721)))

(assert (=> bs!365139 (= lambda!64597 lambda!64593)))

(declare-fun bs!365140 () Bool)

(assert (= bs!365140 (and d!448741 d!448481)))

(assert (=> bs!365140 (= lambda!64597 lambda!64564)))

(assert (=> d!448741 (= (inv!21347 setElem!9213) (forall!3861 (exprs!1181 setElem!9213) lambda!64597))))

(declare-fun bs!365141 () Bool)

(assert (= bs!365141 d!448741))

(declare-fun m!1780198 () Bool)

(assert (=> bs!365141 m!1780198))

(assert (=> setNonEmpty!9213 d!448741))

(declare-fun d!448743 () Bool)

(declare-fun lt!526855 () Int)

(assert (=> d!448743 (= lt!526855 (size!13023 (list!6358 (_1!8520 lt!526649))))))

(assert (=> d!448743 (= lt!526855 (size!13026 (c!248132 (_1!8520 lt!526649))))))

(assert (=> d!448743 (= (size!13024 (_1!8520 lt!526649)) lt!526855)))

(declare-fun bs!365142 () Bool)

(assert (= bs!365142 d!448743))

(assert (=> bs!365142 m!1778971))

(assert (=> bs!365142 m!1778971))

(declare-fun m!1780200 () Bool)

(assert (=> bs!365142 m!1780200))

(declare-fun m!1780202 () Bool)

(assert (=> bs!365142 m!1780202))

(assert (=> d!448349 d!448743))

(declare-fun b!1515450 () Bool)

(declare-fun e!969239 () Bool)

(declare-fun lt!526858 () Option!2934)

(assert (=> b!1515450 (= e!969239 (= (list!6357 (_2!8525 (get!4742 lt!526858))) (_2!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))))))

(declare-fun b!1515451 () Bool)

(declare-fun e!969242 () Bool)

(assert (=> b!1515451 (= e!969242 (= (list!6357 (_2!8525 (get!4742 lt!526858))) (_2!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))))))

(declare-fun b!1515452 () Bool)

(declare-fun e!969243 () Option!2934)

(declare-fun call!100454 () Option!2934)

(assert (=> b!1515452 (= e!969243 call!100454)))

(declare-fun b!1515453 () Bool)

(declare-fun e!969240 () Bool)

(assert (=> b!1515453 (= e!969240 e!969242)))

(declare-fun res!681661 () Bool)

(assert (=> b!1515453 (=> (not res!681661) (not e!969242))))

(assert (=> b!1515453 (= res!681661 (= (_1!8525 (get!4742 lt!526858)) (_1!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))))))

(declare-fun b!1515454 () Bool)

(declare-fun e!969241 () Bool)

(declare-fun e!969244 () Bool)

(assert (=> b!1515454 (= e!969241 e!969244)))

(declare-fun res!681665 () Bool)

(assert (=> b!1515454 (=> res!681665 e!969244)))

(assert (=> b!1515454 (= res!681665 (not (isDefined!2357 lt!526858)))))

(declare-fun b!1515455 () Bool)

(declare-fun res!681666 () Bool)

(assert (=> b!1515455 (=> (not res!681666) (not e!969241))))

(assert (=> b!1515455 (= res!681666 e!969240)))

(declare-fun res!681662 () Bool)

(assert (=> b!1515455 (=> res!681662 e!969240)))

(assert (=> b!1515455 (= res!681662 (not (isDefined!2357 lt!526858)))))

(declare-fun b!1515456 () Bool)

(assert (=> b!1515456 (= e!969244 e!969239)))

(declare-fun res!681664 () Bool)

(assert (=> b!1515456 (=> (not res!681664) (not e!969239))))

(assert (=> b!1515456 (= res!681664 (= (_1!8525 (get!4742 lt!526858)) (_1!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))))))

(declare-fun d!448745 () Bool)

(assert (=> d!448745 e!969241))

(declare-fun res!681663 () Bool)

(assert (=> d!448745 (=> (not res!681663) (not e!969241))))

(assert (=> d!448745 (= res!681663 (= (isDefined!2357 lt!526858) (isDefined!2358 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577))))))))))

(assert (=> d!448745 (= lt!526858 e!969243)))

(declare-fun c!248327 () Bool)

(assert (=> d!448745 (= c!248327 (and ((_ is Cons!16105) rules!1640) ((_ is Nil!16105) (t!139457 rules!1640))))))

(declare-fun lt!526862 () Unit!25754)

(declare-fun lt!526859 () Unit!25754)

(assert (=> d!448745 (= lt!526862 lt!526859)))

(declare-fun lt!526860 () List!16169)

(declare-fun lt!526861 () List!16169)

(assert (=> d!448745 (isPrefix!1220 lt!526860 lt!526861)))

(assert (=> d!448745 (= lt!526859 (lemmaIsPrefixRefl!850 lt!526860 lt!526861))))

(assert (=> d!448745 (= lt!526861 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))

(assert (=> d!448745 (= lt!526860 (list!6357 (_2!8525 (v!22915 (_1!8526 lt!526577)))))))

(assert (=> d!448745 (rulesValidInductive!858 thiss!13241 rules!1640)))

(assert (=> d!448745 (= (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 (_1!8526 lt!526577)))) lt!526858)))

(declare-fun bm!100449 () Bool)

(assert (=> bm!100449 (= call!100454 (maxPrefixOneRuleZipperSequence!280 thiss!13241 (h!21506 rules!1640) (_2!8525 (v!22915 (_1!8526 lt!526577)))))))

(declare-fun b!1515457 () Bool)

(declare-fun lt!526857 () Option!2934)

(declare-fun lt!526856 () Option!2934)

(assert (=> b!1515457 (= e!969243 (ite (and ((_ is None!2933) lt!526857) ((_ is None!2933) lt!526856)) None!2933 (ite ((_ is None!2933) lt!526856) lt!526857 (ite ((_ is None!2933) lt!526857) lt!526856 (ite (>= (size!13019 (_1!8525 (v!22915 lt!526857))) (size!13019 (_1!8525 (v!22915 lt!526856)))) lt!526857 lt!526856)))))))

(assert (=> b!1515457 (= lt!526857 call!100454)))

(assert (=> b!1515457 (= lt!526856 (maxPrefixZipperSequence!592 thiss!13241 (t!139457 rules!1640) (_2!8525 (v!22915 (_1!8526 lt!526577)))))))

(assert (= (and d!448745 c!248327) b!1515452))

(assert (= (and d!448745 (not c!248327)) b!1515457))

(assert (= (or b!1515452 b!1515457) bm!100449))

(assert (= (and d!448745 res!681663) b!1515455))

(assert (= (and b!1515455 (not res!681662)) b!1515453))

(assert (= (and b!1515453 res!681661) b!1515451))

(assert (= (and b!1515455 res!681666) b!1515454))

(assert (= (and b!1515454 (not res!681665)) b!1515456))

(assert (= (and b!1515456 res!681664) b!1515450))

(declare-fun m!1780204 () Bool)

(assert (=> b!1515453 m!1780204))

(assert (=> b!1515453 m!1778795))

(assert (=> b!1515453 m!1778795))

(declare-fun m!1780206 () Bool)

(assert (=> b!1515453 m!1780206))

(assert (=> b!1515453 m!1780206))

(declare-fun m!1780208 () Bool)

(assert (=> b!1515453 m!1780208))

(declare-fun m!1780210 () Bool)

(assert (=> b!1515457 m!1780210))

(declare-fun m!1780212 () Bool)

(assert (=> bm!100449 m!1780212))

(assert (=> b!1515450 m!1780204))

(assert (=> b!1515450 m!1778795))

(assert (=> b!1515450 m!1778795))

(assert (=> b!1515450 m!1780125))

(assert (=> b!1515450 m!1780125))

(declare-fun m!1780214 () Bool)

(assert (=> b!1515450 m!1780214))

(declare-fun m!1780216 () Bool)

(assert (=> b!1515450 m!1780216))

(assert (=> b!1515451 m!1780204))

(assert (=> b!1515451 m!1780206))

(assert (=> b!1515451 m!1780208))

(assert (=> b!1515451 m!1778795))

(assert (=> b!1515451 m!1778795))

(assert (=> b!1515451 m!1780206))

(assert (=> b!1515451 m!1780216))

(declare-fun m!1780218 () Bool)

(assert (=> b!1515454 m!1780218))

(assert (=> d!448745 m!1780206))

(declare-fun m!1780220 () Bool)

(assert (=> d!448745 m!1780220))

(declare-fun m!1780222 () Bool)

(assert (=> d!448745 m!1780222))

(assert (=> d!448745 m!1778795))

(assert (=> d!448745 m!1778907))

(assert (=> d!448745 m!1778795))

(assert (=> d!448745 m!1780206))

(declare-fun m!1780224 () Bool)

(assert (=> d!448745 m!1780224))

(assert (=> d!448745 m!1780218))

(assert (=> b!1515455 m!1780218))

(assert (=> b!1515456 m!1780204))

(assert (=> b!1515456 m!1778795))

(assert (=> b!1515456 m!1778795))

(assert (=> b!1515456 m!1780125))

(assert (=> b!1515456 m!1780125))

(assert (=> b!1515456 m!1780214))

(assert (=> d!448349 d!448745))

(declare-fun d!448747 () Bool)

(declare-fun res!681667 () Bool)

(declare-fun e!969245 () Bool)

(assert (=> d!448747 (=> (not res!681667) (not e!969245))))

(assert (=> d!448747 (= res!681667 (= (csize!11122 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) (+ (size!13027 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) (size!13027 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))))

(assert (=> d!448747 (= (inv!21343 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) e!969245)))

(declare-fun b!1515458 () Bool)

(declare-fun res!681668 () Bool)

(assert (=> b!1515458 (=> (not res!681668) (not e!969245))))

(assert (=> b!1515458 (= res!681668 (and (not (= (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) Empty!5446)) (not (= (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) Empty!5446))))))

(declare-fun b!1515459 () Bool)

(declare-fun res!681669 () Bool)

(assert (=> b!1515459 (=> (not res!681669) (not e!969245))))

(assert (=> b!1515459 (= res!681669 (= (cheight!5657 (c!248131 (totalInput!2301 cacheFurthestNullable!64))) (+ (max!0 (height!814 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) (height!814 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) 1)))))

(declare-fun b!1515460 () Bool)

(assert (=> b!1515460 (= e!969245 (<= 0 (cheight!5657 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))))

(assert (= (and d!448747 res!681667) b!1515458))

(assert (= (and b!1515458 res!681668) b!1515459))

(assert (= (and b!1515459 res!681669) b!1515460))

(declare-fun m!1780226 () Bool)

(assert (=> d!448747 m!1780226))

(declare-fun m!1780228 () Bool)

(assert (=> d!448747 m!1780228))

(assert (=> b!1515459 m!1780166))

(assert (=> b!1515459 m!1780168))

(assert (=> b!1515459 m!1780166))

(assert (=> b!1515459 m!1780168))

(declare-fun m!1780230 () Bool)

(assert (=> b!1515459 m!1780230))

(assert (=> b!1514548 d!448747))

(declare-fun b!1515461 () Bool)

(declare-fun e!969247 () Bool)

(declare-fun e!969246 () Bool)

(assert (=> b!1515461 (= e!969247 e!969246)))

(declare-fun res!681671 () Bool)

(assert (=> b!1515461 (=> (not res!681671) (not e!969246))))

(assert (=> b!1515461 (= res!681671 (<= (- 1) (- (height!813 (left!13375 (c!248132 acc!392))) (height!813 (right!13705 (c!248132 acc!392))))))))

(declare-fun b!1515462 () Bool)

(declare-fun res!681675 () Bool)

(assert (=> b!1515462 (=> (not res!681675) (not e!969246))))

(assert (=> b!1515462 (= res!681675 (isBalanced!1612 (left!13375 (c!248132 acc!392))))))

(declare-fun b!1515463 () Bool)

(declare-fun res!681674 () Bool)

(assert (=> b!1515463 (=> (not res!681674) (not e!969246))))

(assert (=> b!1515463 (= res!681674 (isBalanced!1612 (right!13705 (c!248132 acc!392))))))

(declare-fun b!1515464 () Bool)

(assert (=> b!1515464 (= e!969246 (not (isEmpty!9944 (right!13705 (c!248132 acc!392)))))))

(declare-fun b!1515465 () Bool)

(declare-fun res!681670 () Bool)

(assert (=> b!1515465 (=> (not res!681670) (not e!969246))))

(assert (=> b!1515465 (= res!681670 (<= (- (height!813 (left!13375 (c!248132 acc!392))) (height!813 (right!13705 (c!248132 acc!392)))) 1))))

(declare-fun d!448749 () Bool)

(declare-fun res!681673 () Bool)

(assert (=> d!448749 (=> res!681673 e!969247)))

(assert (=> d!448749 (= res!681673 (not ((_ is Node!5447) (c!248132 acc!392))))))

(assert (=> d!448749 (= (isBalanced!1612 (c!248132 acc!392)) e!969247)))

(declare-fun b!1515466 () Bool)

(declare-fun res!681672 () Bool)

(assert (=> b!1515466 (=> (not res!681672) (not e!969246))))

(assert (=> b!1515466 (= res!681672 (not (isEmpty!9944 (left!13375 (c!248132 acc!392)))))))

(assert (= (and d!448749 (not res!681673)) b!1515461))

(assert (= (and b!1515461 res!681671) b!1515465))

(assert (= (and b!1515465 res!681670) b!1515462))

(assert (= (and b!1515462 res!681675) b!1515463))

(assert (= (and b!1515463 res!681674) b!1515466))

(assert (= (and b!1515466 res!681672) b!1515464))

(declare-fun m!1780232 () Bool)

(assert (=> b!1515466 m!1780232))

(assert (=> b!1515461 m!1779737))

(assert (=> b!1515461 m!1779739))

(declare-fun m!1780234 () Bool)

(assert (=> b!1515462 m!1780234))

(assert (=> b!1515465 m!1779737))

(assert (=> b!1515465 m!1779739))

(declare-fun m!1780236 () Bool)

(assert (=> b!1515463 m!1780236))

(declare-fun m!1780238 () Bool)

(assert (=> b!1515464 m!1780238))

(assert (=> d!448317 d!448749))

(assert (=> b!1514618 d!448633))

(assert (=> b!1514618 d!448713))

(assert (=> b!1514618 d!448373))

(declare-fun d!448751 () Bool)

(declare-fun lt!526863 () Int)

(assert (=> d!448751 (>= lt!526863 0)))

(declare-fun e!969248 () Int)

(assert (=> d!448751 (= lt!526863 e!969248)))

(declare-fun c!248328 () Bool)

(assert (=> d!448751 (= c!248328 ((_ is Nil!16102) lt!526666))))

(assert (=> d!448751 (= (size!13023 lt!526666) lt!526863)))

(declare-fun b!1515467 () Bool)

(assert (=> b!1515467 (= e!969248 0)))

(declare-fun b!1515468 () Bool)

(assert (=> b!1515468 (= e!969248 (+ 1 (size!13023 (t!139454 lt!526666))))))

(assert (= (and d!448751 c!248328) b!1515467))

(assert (= (and d!448751 (not c!248328)) b!1515468))

(declare-fun m!1780240 () Bool)

(assert (=> b!1515468 m!1780240))

(assert (=> b!1514650 d!448751))

(declare-fun d!448753 () Bool)

(declare-fun lt!526864 () Int)

(assert (=> d!448753 (>= lt!526864 0)))

(declare-fun e!969249 () Int)

(assert (=> d!448753 (= lt!526864 e!969249)))

(declare-fun c!248329 () Bool)

(assert (=> d!448753 (= c!248329 ((_ is Nil!16102) (++!4367 lt!526584 lt!526582)))))

(assert (=> d!448753 (= (size!13023 (++!4367 lt!526584 lt!526582)) lt!526864)))

(declare-fun b!1515469 () Bool)

(assert (=> b!1515469 (= e!969249 0)))

(declare-fun b!1515470 () Bool)

(assert (=> b!1515470 (= e!969249 (+ 1 (size!13023 (t!139454 (++!4367 lt!526584 lt!526582)))))))

(assert (= (and d!448753 c!248329) b!1515469))

(assert (= (and d!448753 (not c!248329)) b!1515470))

(declare-fun m!1780242 () Bool)

(assert (=> b!1515470 m!1780242))

(assert (=> b!1514650 d!448753))

(assert (=> b!1514650 d!448649))

(declare-fun b!1515471 () Bool)

(declare-fun res!681680 () Bool)

(declare-fun e!969250 () Bool)

(assert (=> b!1515471 (=> (not res!681680) (not e!969250))))

(assert (=> b!1515471 (= res!681680 (not (isEmpty!9945 (left!13374 (c!248131 input!1102)))))))

(declare-fun b!1515472 () Bool)

(declare-fun res!681677 () Bool)

(assert (=> b!1515472 (=> (not res!681677) (not e!969250))))

(assert (=> b!1515472 (= res!681677 (isBalanced!1611 (left!13374 (c!248131 input!1102))))))

(declare-fun b!1515473 () Bool)

(declare-fun res!681676 () Bool)

(assert (=> b!1515473 (=> (not res!681676) (not e!969250))))

(assert (=> b!1515473 (= res!681676 (isBalanced!1611 (right!13704 (c!248131 input!1102))))))

(declare-fun d!448755 () Bool)

(declare-fun res!681679 () Bool)

(declare-fun e!969251 () Bool)

(assert (=> d!448755 (=> res!681679 e!969251)))

(assert (=> d!448755 (= res!681679 (not ((_ is Node!5446) (c!248131 input!1102))))))

(assert (=> d!448755 (= (isBalanced!1611 (c!248131 input!1102)) e!969251)))

(declare-fun b!1515474 () Bool)

(assert (=> b!1515474 (= e!969250 (not (isEmpty!9945 (right!13704 (c!248131 input!1102)))))))

(declare-fun b!1515475 () Bool)

(assert (=> b!1515475 (= e!969251 e!969250)))

(declare-fun res!681681 () Bool)

(assert (=> b!1515475 (=> (not res!681681) (not e!969250))))

(assert (=> b!1515475 (= res!681681 (<= (- 1) (- (height!814 (left!13374 (c!248131 input!1102))) (height!814 (right!13704 (c!248131 input!1102))))))))

(declare-fun b!1515476 () Bool)

(declare-fun res!681678 () Bool)

(assert (=> b!1515476 (=> (not res!681678) (not e!969250))))

(assert (=> b!1515476 (= res!681678 (<= (- (height!814 (left!13374 (c!248131 input!1102))) (height!814 (right!13704 (c!248131 input!1102)))) 1))))

(assert (= (and d!448755 (not res!681679)) b!1515475))

(assert (= (and b!1515475 res!681681) b!1515476))

(assert (= (and b!1515476 res!681678) b!1515472))

(assert (= (and b!1515472 res!681677) b!1515473))

(assert (= (and b!1515473 res!681676) b!1515471))

(assert (= (and b!1515471 res!681680) b!1515474))

(declare-fun m!1780244 () Bool)

(assert (=> b!1515472 m!1780244))

(declare-fun m!1780246 () Bool)

(assert (=> b!1515475 m!1780246))

(declare-fun m!1780248 () Bool)

(assert (=> b!1515475 m!1780248))

(assert (=> b!1515476 m!1780246))

(assert (=> b!1515476 m!1780248))

(declare-fun m!1780250 () Bool)

(assert (=> b!1515471 m!1780250))

(declare-fun m!1780252 () Bool)

(assert (=> b!1515474 m!1780252))

(declare-fun m!1780254 () Bool)

(assert (=> b!1515473 m!1780254))

(assert (=> d!448309 d!448755))

(declare-fun d!448757 () Bool)

(declare-fun c!248330 () Bool)

(assert (=> d!448757 (= c!248330 ((_ is Nil!16102) lt!526654))))

(declare-fun e!969252 () (InoxSet Token!5356))

(assert (=> d!448757 (= (content!2317 lt!526654) e!969252)))

(declare-fun b!1515477 () Bool)

(assert (=> b!1515477 (= e!969252 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1515478 () Bool)

(assert (=> b!1515478 (= e!969252 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 lt!526654) true) (content!2317 (t!139454 lt!526654))))))

(assert (= (and d!448757 c!248330) b!1515477))

(assert (= (and d!448757 (not c!248330)) b!1515478))

(declare-fun m!1780256 () Bool)

(assert (=> b!1515478 m!1780256))

(declare-fun m!1780258 () Bool)

(assert (=> b!1515478 m!1780258))

(assert (=> d!448359 d!448757))

(assert (=> d!448359 d!448473))

(declare-fun d!448759 () Bool)

(declare-fun c!248331 () Bool)

(assert (=> d!448759 (= c!248331 ((_ is Nil!16102) lt!526572))))

(declare-fun e!969253 () (InoxSet Token!5356))

(assert (=> d!448759 (= (content!2317 lt!526572) e!969253)))

(declare-fun b!1515479 () Bool)

(assert (=> b!1515479 (= e!969253 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1515480 () Bool)

(assert (=> b!1515480 (= e!969253 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 lt!526572) true) (content!2317 (t!139454 lt!526572))))))

(assert (= (and d!448759 c!248331) b!1515479))

(assert (= (and d!448759 (not c!248331)) b!1515480))

(declare-fun m!1780260 () Bool)

(assert (=> b!1515480 m!1780260))

(declare-fun m!1780262 () Bool)

(assert (=> b!1515480 m!1780262))

(assert (=> d!448359 d!448759))

(declare-fun d!448761 () Bool)

(declare-fun res!681682 () Bool)

(declare-fun e!969254 () Bool)

(assert (=> d!448761 (=> (not res!681682) (not e!969254))))

(assert (=> d!448761 (= res!681682 (<= (size!13022 (list!6361 (xs!8229 (c!248131 treated!70)))) 512))))

(assert (=> d!448761 (= (inv!21344 (c!248131 treated!70)) e!969254)))

(declare-fun b!1515481 () Bool)

(declare-fun res!681683 () Bool)

(assert (=> b!1515481 (=> (not res!681683) (not e!969254))))

(assert (=> b!1515481 (= res!681683 (= (csize!11123 (c!248131 treated!70)) (size!13022 (list!6361 (xs!8229 (c!248131 treated!70))))))))

(declare-fun b!1515482 () Bool)

(assert (=> b!1515482 (= e!969254 (and (> (csize!11123 (c!248131 treated!70)) 0) (<= (csize!11123 (c!248131 treated!70)) 512)))))

(assert (= (and d!448761 res!681682) b!1515481))

(assert (= (and b!1515481 res!681683) b!1515482))

(assert (=> d!448761 m!1779819))

(assert (=> d!448761 m!1779819))

(declare-fun m!1780264 () Bool)

(assert (=> d!448761 m!1780264))

(assert (=> b!1515481 m!1779819))

(assert (=> b!1515481 m!1779819))

(assert (=> b!1515481 m!1780264))

(assert (=> b!1514658 d!448761))

(assert (=> b!1514496 d!448675))

(declare-fun d!448763 () Bool)

(assert (=> d!448763 (= (list!6358 lt!526665) (list!6360 (c!248132 lt!526665)))))

(declare-fun bs!365143 () Bool)

(assert (= bs!365143 d!448763))

(declare-fun m!1780266 () Bool)

(assert (=> bs!365143 m!1780266))

(assert (=> b!1514647 d!448763))

(declare-fun b!1515499 () Bool)

(declare-fun res!681692 () Bool)

(declare-fun e!969263 () Bool)

(assert (=> b!1515499 (=> (not res!681692) (not e!969263))))

(declare-fun lt!526867 () List!16170)

(assert (=> b!1515499 (= res!681692 (= (size!13023 lt!526867) (+ (size!13023 (list!6358 acc!392)) 1)))))

(declare-fun bm!100454 () Bool)

(declare-fun call!100460 () (_ BitVec 32))

(declare-fun isize!34 (List!16170) (_ BitVec 32))

(assert (=> bm!100454 (= call!100460 (isize!34 lt!526867))))

(declare-fun b!1515500 () Bool)

(assert (=> b!1515500 (= e!969263 (= lt!526867 (++!4367 (list!6358 acc!392) (Cons!16102 (_1!8525 (v!22915 (_1!8526 lt!526577))) Nil!16102))))))

(declare-fun b!1515501 () Bool)

(declare-fun res!681695 () Bool)

(assert (=> b!1515501 (=> (not res!681695) (not e!969263))))

(assert (=> b!1515501 (= res!681695 (= (content!2317 lt!526867) ((_ map or) (content!2317 (list!6358 acc!392)) (store ((as const (Array Token!5356 Bool)) false) (_1!8525 (v!22915 (_1!8526 lt!526577))) true))))))

(declare-fun b!1515502 () Bool)

(declare-fun e!969261 () List!16170)

(assert (=> b!1515502 (= e!969261 (Cons!16102 (h!21503 (list!6358 acc!392)) ($colon+!108 (t!139454 (list!6358 acc!392)) (_1!8525 (v!22915 (_1!8526 lt!526577))))))))

(declare-fun b!1515503 () Bool)

(declare-fun e!969262 () Bool)

(declare-fun call!100459 () (_ BitVec 32))

(assert (=> b!1515503 (= e!969262 (= call!100460 call!100459))))

(declare-fun b!1515504 () Bool)

(assert (=> b!1515504 (= e!969262 (= call!100460 (bvadd call!100459 #b00000000000000000000000000000001)))))

(declare-fun d!448765 () Bool)

(assert (=> d!448765 e!969263))

(declare-fun res!681693 () Bool)

(assert (=> d!448765 (=> (not res!681693) (not e!969263))))

(assert (=> d!448765 (= res!681693 ((_ is Cons!16102) lt!526867))))

(assert (=> d!448765 (= lt!526867 e!969261)))

(declare-fun c!248337 () Bool)

(assert (=> d!448765 (= c!248337 ((_ is Nil!16102) (list!6358 acc!392)))))

(assert (=> d!448765 (= ($colon+!108 (list!6358 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577)))) lt!526867)))

(declare-fun bm!100455 () Bool)

(assert (=> bm!100455 (= call!100459 (isize!34 (list!6358 acc!392)))))

(declare-fun b!1515505 () Bool)

(declare-fun res!681694 () Bool)

(assert (=> b!1515505 (=> (not res!681694) (not e!969263))))

(assert (=> b!1515505 (= res!681694 e!969262)))

(declare-fun c!248336 () Bool)

(assert (=> b!1515505 (= c!248336 (bvslt (isize!34 (list!6358 acc!392)) #b01111111111111111111111111111111))))

(declare-fun b!1515506 () Bool)

(assert (=> b!1515506 (= e!969261 (Cons!16102 (_1!8525 (v!22915 (_1!8526 lt!526577))) (list!6358 acc!392)))))

(assert (= (and d!448765 c!248337) b!1515506))

(assert (= (and d!448765 (not c!248337)) b!1515502))

(assert (= (and d!448765 res!681693) b!1515499))

(assert (= (and b!1515499 res!681692) b!1515505))

(assert (= (and b!1515505 c!248336) b!1515504))

(assert (= (and b!1515505 (not c!248336)) b!1515503))

(assert (= (or b!1515504 b!1515503) bm!100454))

(assert (= (or b!1515504 b!1515503) bm!100455))

(assert (= (and b!1515505 res!681694) b!1515501))

(assert (= (and b!1515501 res!681695) b!1515500))

(declare-fun m!1780268 () Bool)

(assert (=> b!1515502 m!1780268))

(assert (=> b!1515505 m!1778745))

(declare-fun m!1780270 () Bool)

(assert (=> b!1515505 m!1780270))

(declare-fun m!1780272 () Bool)

(assert (=> b!1515499 m!1780272))

(assert (=> b!1515499 m!1778745))

(assert (=> b!1515499 m!1780031))

(declare-fun m!1780274 () Bool)

(assert (=> b!1515501 m!1780274))

(assert (=> b!1515501 m!1778745))

(assert (=> b!1515501 m!1780037))

(declare-fun m!1780276 () Bool)

(assert (=> b!1515501 m!1780276))

(assert (=> b!1515500 m!1778745))

(declare-fun m!1780278 () Bool)

(assert (=> b!1515500 m!1780278))

(assert (=> bm!100455 m!1778745))

(assert (=> bm!100455 m!1780270))

(declare-fun m!1780280 () Bool)

(assert (=> bm!100454 m!1780280))

(assert (=> b!1514647 d!448765))

(assert (=> b!1514647 d!448427))

(declare-fun d!448767 () Bool)

(assert (=> d!448767 (= (valid!1189 (_2!8526 lt!526612)) (validCacheMapUp!136 (cache!1813 (_2!8526 lt!526612))))))

(declare-fun bs!365144 () Bool)

(assert (= bs!365144 d!448767))

(declare-fun m!1780282 () Bool)

(assert (=> bs!365144 m!1780282))

(assert (=> b!1514541 d!448767))

(declare-fun b!1515508 () Bool)

(declare-fun e!969265 () List!16170)

(assert (=> b!1515508 (= e!969265 (Cons!16102 (h!21503 (t!139454 lt!526582)) (++!4367 (t!139454 (t!139454 lt!526582)) lt!526572)))))

(declare-fun b!1515510 () Bool)

(declare-fun lt!526868 () List!16170)

(declare-fun e!969264 () Bool)

(assert (=> b!1515510 (= e!969264 (or (not (= lt!526572 Nil!16102)) (= lt!526868 (t!139454 lt!526582))))))

(declare-fun b!1515507 () Bool)

(assert (=> b!1515507 (= e!969265 lt!526572)))

(declare-fun b!1515509 () Bool)

(declare-fun res!681697 () Bool)

(assert (=> b!1515509 (=> (not res!681697) (not e!969264))))

(assert (=> b!1515509 (= res!681697 (= (size!13023 lt!526868) (+ (size!13023 (t!139454 lt!526582)) (size!13023 lt!526572))))))

(declare-fun d!448769 () Bool)

(assert (=> d!448769 e!969264))

(declare-fun res!681696 () Bool)

(assert (=> d!448769 (=> (not res!681696) (not e!969264))))

(assert (=> d!448769 (= res!681696 (= (content!2317 lt!526868) ((_ map or) (content!2317 (t!139454 lt!526582)) (content!2317 lt!526572))))))

(assert (=> d!448769 (= lt!526868 e!969265)))

(declare-fun c!248338 () Bool)

(assert (=> d!448769 (= c!248338 ((_ is Nil!16102) (t!139454 lt!526582)))))

(assert (=> d!448769 (= (++!4367 (t!139454 lt!526582) lt!526572) lt!526868)))

(assert (= (and d!448769 c!248338) b!1515507))

(assert (= (and d!448769 (not c!248338)) b!1515508))

(assert (= (and d!448769 res!681696) b!1515509))

(assert (= (and b!1515509 res!681697) b!1515510))

(declare-fun m!1780284 () Bool)

(assert (=> b!1515508 m!1780284))

(declare-fun m!1780286 () Bool)

(assert (=> b!1515509 m!1780286))

(assert (=> b!1515509 m!1779960))

(assert (=> b!1515509 m!1779023))

(declare-fun m!1780288 () Bool)

(assert (=> d!448769 m!1780288))

(assert (=> d!448769 m!1779457))

(assert (=> d!448769 m!1779029))

(assert (=> b!1514629 d!448769))

(declare-fun bs!365145 () Bool)

(declare-fun b!1515524 () Bool)

(assert (= bs!365145 (and b!1515524 d!448493)))

(declare-fun lambda!64602 () Int)

(assert (=> bs!365145 (= lambda!64602 lambda!64567)))

(declare-fun b!1515536 () Bool)

(declare-fun e!969286 () Bool)

(assert (=> b!1515536 (= e!969286 true)))

(declare-fun b!1515535 () Bool)

(declare-fun e!969285 () Bool)

(assert (=> b!1515535 (= e!969285 e!969286)))

(assert (=> b!1515524 e!969285))

(assert (= b!1515535 b!1515536))

(assert (= b!1515524 b!1515535))

(assert (=> b!1515536 (< (dynLambda!7227 order!9551 (toValue!4198 (transformation!2847 (h!21506 rules!1640)))) (dynLambda!7226 order!9549 lambda!64602))))

(assert (=> b!1515536 (< (dynLambda!7225 order!9547 (toChars!4057 (transformation!2847 (h!21506 rules!1640)))) (dynLambda!7226 order!9549 lambda!64602))))

(declare-fun d!448771 () Bool)

(declare-fun e!969277 () Bool)

(assert (=> d!448771 e!969277))

(declare-fun res!681706 () Bool)

(assert (=> d!448771 (=> (not res!681706) (not e!969277))))

(declare-fun lt!526889 () Option!2934)

(assert (=> d!448771 (= res!681706 (= (isDefined!2357 lt!526889) (isDefined!2358 (maxPrefixOneRule!668 thiss!13241 (h!21506 rules!1640) (list!6357 input!1102)))))))

(declare-fun e!969279 () Option!2934)

(assert (=> d!448771 (= lt!526889 e!969279)))

(declare-fun c!248341 () Bool)

(declare-datatypes ((tuple2!15000 0))(
  ( (tuple2!15001 (_1!8530 BalanceConc!10834) (_2!8530 BalanceConc!10834)) )
))
(declare-fun lt!526895 () tuple2!15000)

(declare-fun isEmpty!9946 (BalanceConc!10834) Bool)

(assert (=> d!448771 (= c!248341 (isEmpty!9946 (_1!8530 lt!526895)))))

(declare-fun findLongestMatchWithZipperSequence!111 (Regex!4163 BalanceConc!10834) tuple2!15000)

(assert (=> d!448771 (= lt!526895 (findLongestMatchWithZipperSequence!111 (regex!2847 (h!21506 rules!1640)) input!1102))))

(assert (=> d!448771 (ruleValid!636 thiss!13241 (h!21506 rules!1640))))

(assert (=> d!448771 (= (maxPrefixOneRuleZipperSequence!280 thiss!13241 (h!21506 rules!1640) input!1102) lt!526889)))

(declare-fun b!1515523 () Bool)

(assert (=> b!1515523 (= e!969279 None!2933)))

(assert (=> b!1515524 (= e!969279 (Some!2933 (tuple2!14995 (Token!5357 (apply!4073 (transformation!2847 (h!21506 rules!1640)) (_1!8530 lt!526895)) (h!21506 rules!1640) (size!13025 (_1!8530 lt!526895)) (list!6357 (_1!8530 lt!526895))) (_2!8530 lt!526895))))))

(declare-fun lt!526896 () List!16169)

(assert (=> b!1515524 (= lt!526896 (list!6357 input!1102))))

(declare-fun lt!526897 () Unit!25754)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!279 (Regex!4163 List!16169) Unit!25754)

(assert (=> b!1515524 (= lt!526897 (longestMatchIsAcceptedByMatchOrIsEmpty!279 (regex!2847 (h!21506 rules!1640)) lt!526896))))

(declare-fun res!681708 () Bool)

(declare-datatypes ((tuple2!15002 0))(
  ( (tuple2!15003 (_1!8531 List!16169) (_2!8531 List!16169)) )
))
(declare-fun findLongestMatchInner!295 (Regex!4163 List!16169 Int List!16169 List!16169 Int) tuple2!15002)

(assert (=> b!1515524 (= res!681708 (isEmpty!9938 (_1!8531 (findLongestMatchInner!295 (regex!2847 (h!21506 rules!1640)) Nil!16101 (size!13022 Nil!16101) lt!526896 lt!526896 (size!13022 lt!526896)))))))

(declare-fun e!969276 () Bool)

(assert (=> b!1515524 (=> res!681708 e!969276)))

(assert (=> b!1515524 e!969276))

(declare-fun lt!526894 () Unit!25754)

(assert (=> b!1515524 (= lt!526894 lt!526897)))

(declare-fun lt!526891 () Unit!25754)

(declare-fun lemmaInv!389 (TokenValueInjection!5534) Unit!25754)

(assert (=> b!1515524 (= lt!526891 (lemmaInv!389 (transformation!2847 (h!21506 rules!1640))))))

(declare-fun lt!526892 () Unit!25754)

(declare-fun ForallOf!172 (Int BalanceConc!10834) Unit!25754)

(assert (=> b!1515524 (= lt!526892 (ForallOf!172 lambda!64602 (_1!8530 lt!526895)))))

(declare-fun lt!526890 () Unit!25754)

(assert (=> b!1515524 (= lt!526890 (ForallOf!172 lambda!64602 (seqFromList!1735 (list!6357 (_1!8530 lt!526895)))))))

(declare-fun lt!526898 () Option!2934)

(assert (=> b!1515524 (= lt!526898 (Some!2933 (tuple2!14995 (Token!5357 (apply!4073 (transformation!2847 (h!21506 rules!1640)) (_1!8530 lt!526895)) (h!21506 rules!1640) (size!13025 (_1!8530 lt!526895)) (list!6357 (_1!8530 lt!526895))) (_2!8530 lt!526895))))))

(declare-fun lt!526893 () Unit!25754)

(declare-fun lemmaEqSameImage!122 (TokenValueInjection!5534 BalanceConc!10834 BalanceConc!10834) Unit!25754)

(assert (=> b!1515524 (= lt!526893 (lemmaEqSameImage!122 (transformation!2847 (h!21506 rules!1640)) (_1!8530 lt!526895) (seqFromList!1735 (list!6357 (_1!8530 lt!526895)))))))

(declare-fun e!969280 () Bool)

(declare-fun b!1515525 () Bool)

(assert (=> b!1515525 (= e!969280 (= (list!6357 (_2!8525 (get!4742 lt!526889))) (_2!8528 (get!4743 (maxPrefixOneRule!668 thiss!13241 (h!21506 rules!1640) (list!6357 input!1102))))))))

(declare-fun b!1515526 () Bool)

(declare-fun e!969278 () Bool)

(assert (=> b!1515526 (= e!969277 e!969278)))

(declare-fun res!681707 () Bool)

(assert (=> b!1515526 (=> res!681707 e!969278)))

(assert (=> b!1515526 (= res!681707 (not (isDefined!2357 lt!526889)))))

(declare-fun b!1515527 () Bool)

(assert (=> b!1515527 (= e!969278 e!969280)))

(declare-fun res!681709 () Bool)

(assert (=> b!1515527 (=> (not res!681709) (not e!969280))))

(assert (=> b!1515527 (= res!681709 (= (_1!8525 (get!4742 lt!526889)) (_1!8528 (get!4743 (maxPrefixOneRule!668 thiss!13241 (h!21506 rules!1640) (list!6357 input!1102))))))))

(declare-fun b!1515528 () Bool)

(assert (=> b!1515528 (= e!969276 (matchR!1838 (regex!2847 (h!21506 rules!1640)) (_1!8531 (findLongestMatchInner!295 (regex!2847 (h!21506 rules!1640)) Nil!16101 (size!13022 Nil!16101) lt!526896 lt!526896 (size!13022 lt!526896)))))))

(assert (= (and d!448771 c!248341) b!1515523))

(assert (= (and d!448771 (not c!248341)) b!1515524))

(assert (= (and b!1515524 (not res!681708)) b!1515528))

(assert (= (and d!448771 res!681706) b!1515526))

(assert (= (and b!1515526 (not res!681707)) b!1515527))

(assert (= (and b!1515527 res!681709) b!1515525))

(assert (=> b!1515525 m!1778769))

(assert (=> b!1515525 m!1779934))

(declare-fun m!1780290 () Bool)

(assert (=> b!1515525 m!1780290))

(assert (=> b!1515525 m!1778769))

(assert (=> b!1515525 m!1779934))

(declare-fun m!1780292 () Bool)

(assert (=> b!1515525 m!1780292))

(declare-fun m!1780294 () Bool)

(assert (=> b!1515525 m!1780294))

(assert (=> b!1515524 m!1778769))

(declare-fun m!1780296 () Bool)

(assert (=> b!1515524 m!1780296))

(declare-fun m!1780298 () Bool)

(assert (=> b!1515524 m!1780298))

(declare-fun m!1780300 () Bool)

(assert (=> b!1515524 m!1780300))

(declare-fun m!1780302 () Bool)

(assert (=> b!1515524 m!1780302))

(declare-fun m!1780304 () Bool)

(assert (=> b!1515524 m!1780304))

(assert (=> b!1515524 m!1780296))

(declare-fun m!1780306 () Bool)

(assert (=> b!1515524 m!1780306))

(declare-fun m!1780308 () Bool)

(assert (=> b!1515524 m!1780308))

(declare-fun m!1780310 () Bool)

(assert (=> b!1515524 m!1780310))

(assert (=> b!1515524 m!1780304))

(declare-fun m!1780312 () Bool)

(assert (=> b!1515524 m!1780312))

(declare-fun m!1780314 () Bool)

(assert (=> b!1515524 m!1780314))

(assert (=> b!1515524 m!1780296))

(declare-fun m!1780316 () Bool)

(assert (=> b!1515524 m!1780316))

(assert (=> b!1515524 m!1780306))

(assert (=> b!1515524 m!1780310))

(declare-fun m!1780318 () Bool)

(assert (=> b!1515524 m!1780318))

(declare-fun m!1780320 () Bool)

(assert (=> b!1515524 m!1780320))

(assert (=> d!448771 m!1778769))

(assert (=> d!448771 m!1779934))

(declare-fun m!1780322 () Bool)

(assert (=> d!448771 m!1780322))

(assert (=> d!448771 m!1778769))

(assert (=> d!448771 m!1779934))

(declare-fun m!1780324 () Bool)

(assert (=> d!448771 m!1780324))

(assert (=> d!448771 m!1779505))

(declare-fun m!1780326 () Bool)

(assert (=> d!448771 m!1780326))

(declare-fun m!1780328 () Bool)

(assert (=> d!448771 m!1780328))

(assert (=> b!1515527 m!1780294))

(assert (=> b!1515527 m!1778769))

(assert (=> b!1515527 m!1778769))

(assert (=> b!1515527 m!1779934))

(assert (=> b!1515527 m!1779934))

(assert (=> b!1515527 m!1780290))

(assert (=> b!1515528 m!1780306))

(assert (=> b!1515528 m!1780310))

(assert (=> b!1515528 m!1780306))

(assert (=> b!1515528 m!1780310))

(assert (=> b!1515528 m!1780318))

(declare-fun m!1780330 () Bool)

(assert (=> b!1515528 m!1780330))

(assert (=> b!1515526 m!1780328))

(assert (=> bm!100387 d!448771))

(declare-fun b!1515537 () Bool)

(declare-fun res!681714 () Bool)

(declare-fun e!969287 () Bool)

(assert (=> b!1515537 (=> (not res!681714) (not e!969287))))

(assert (=> b!1515537 (= res!681714 (not (isEmpty!9945 (left!13374 (c!248131 totalInput!458)))))))

(declare-fun b!1515538 () Bool)

(declare-fun res!681711 () Bool)

(assert (=> b!1515538 (=> (not res!681711) (not e!969287))))

(assert (=> b!1515538 (= res!681711 (isBalanced!1611 (left!13374 (c!248131 totalInput!458))))))

(declare-fun b!1515539 () Bool)

(declare-fun res!681710 () Bool)

(assert (=> b!1515539 (=> (not res!681710) (not e!969287))))

(assert (=> b!1515539 (= res!681710 (isBalanced!1611 (right!13704 (c!248131 totalInput!458))))))

(declare-fun d!448773 () Bool)

(declare-fun res!681713 () Bool)

(declare-fun e!969288 () Bool)

(assert (=> d!448773 (=> res!681713 e!969288)))

(assert (=> d!448773 (= res!681713 (not ((_ is Node!5446) (c!248131 totalInput!458))))))

(assert (=> d!448773 (= (isBalanced!1611 (c!248131 totalInput!458)) e!969288)))

(declare-fun b!1515540 () Bool)

(assert (=> b!1515540 (= e!969287 (not (isEmpty!9945 (right!13704 (c!248131 totalInput!458)))))))

(declare-fun b!1515541 () Bool)

(assert (=> b!1515541 (= e!969288 e!969287)))

(declare-fun res!681715 () Bool)

(assert (=> b!1515541 (=> (not res!681715) (not e!969287))))

(assert (=> b!1515541 (= res!681715 (<= (- 1) (- (height!814 (left!13374 (c!248131 totalInput!458))) (height!814 (right!13704 (c!248131 totalInput!458))))))))

(declare-fun b!1515542 () Bool)

(declare-fun res!681712 () Bool)

(assert (=> b!1515542 (=> (not res!681712) (not e!969287))))

(assert (=> b!1515542 (= res!681712 (<= (- (height!814 (left!13374 (c!248131 totalInput!458))) (height!814 (right!13704 (c!248131 totalInput!458)))) 1))))

(assert (= (and d!448773 (not res!681713)) b!1515541))

(assert (= (and b!1515541 res!681715) b!1515542))

(assert (= (and b!1515542 res!681712) b!1515538))

(assert (= (and b!1515538 res!681711) b!1515539))

(assert (= (and b!1515539 res!681710) b!1515537))

(assert (= (and b!1515537 res!681714) b!1515540))

(declare-fun m!1780332 () Bool)

(assert (=> b!1515538 m!1780332))

(assert (=> b!1515541 m!1780192))

(assert (=> b!1515541 m!1780194))

(assert (=> b!1515542 m!1780192))

(assert (=> b!1515542 m!1780194))

(declare-fun m!1780334 () Bool)

(assert (=> b!1515537 m!1780334))

(declare-fun m!1780336 () Bool)

(assert (=> b!1515540 m!1780336))

(declare-fun m!1780338 () Bool)

(assert (=> b!1515539 m!1780338))

(assert (=> d!448315 d!448773))

(declare-fun bs!365146 () Bool)

(declare-fun b!1515563 () Bool)

(assert (= bs!365146 (and b!1515563 d!448493)))

(declare-fun lambda!64607 () Int)

(assert (=> bs!365146 (= lambda!64607 lambda!64567)))

(declare-fun bs!365147 () Bool)

(assert (= bs!365147 (and b!1515563 b!1515524)))

(assert (=> bs!365147 (= lambda!64607 lambda!64602)))

(declare-fun b!1515574 () Bool)

(declare-fun e!969305 () Bool)

(assert (=> b!1515574 (= e!969305 true)))

(declare-fun b!1515573 () Bool)

(declare-fun e!969304 () Bool)

(assert (=> b!1515573 (= e!969304 e!969305)))

(assert (=> b!1515563 e!969304))

(assert (= b!1515573 b!1515574))

(assert (= b!1515563 b!1515573))

(assert (=> b!1515574 (< (dynLambda!7227 order!9551 (toValue!4198 (transformation!2847 (h!21506 rules!1640)))) (dynLambda!7226 order!9549 lambda!64607))))

(assert (=> b!1515574 (< (dynLambda!7225 order!9547 (toChars!4057 (transformation!2847 (h!21506 rules!1640)))) (dynLambda!7226 order!9549 lambda!64607))))

(declare-fun e!969303 () Option!2934)

(declare-datatypes ((tuple4!684 0))(
  ( (tuple4!685 (_1!8532 tuple2!15000) (_2!8532 CacheUp!856) (_3!1030 CacheDown!858) (_4!342 CacheFurthestNullable!278)) )
))
(declare-fun lt!526919 () tuple4!684)

(assert (=> b!1515563 (= e!969303 (Some!2933 (tuple2!14995 (Token!5357 (apply!4073 (transformation!2847 (h!21506 rules!1640)) (_1!8530 (_1!8532 lt!526919))) (h!21506 rules!1640) (size!13025 (_1!8530 (_1!8532 lt!526919))) (list!6357 (_1!8530 (_1!8532 lt!526919)))) (_2!8530 (_1!8532 lt!526919)))))))

(declare-fun lt!526921 () List!16169)

(assert (=> b!1515563 (= lt!526921 (list!6357 input!1102))))

(declare-fun lt!526923 () Unit!25754)

(assert (=> b!1515563 (= lt!526923 (longestMatchIsAcceptedByMatchOrIsEmpty!279 (regex!2847 (h!21506 rules!1640)) lt!526921))))

(declare-fun res!681733 () Bool)

(assert (=> b!1515563 (= res!681733 (isEmpty!9938 (_1!8531 (findLongestMatchInner!295 (regex!2847 (h!21506 rules!1640)) Nil!16101 (size!13022 Nil!16101) lt!526921 lt!526921 (size!13022 lt!526921)))))))

(declare-fun e!969300 () Bool)

(assert (=> b!1515563 (=> res!681733 e!969300)))

(assert (=> b!1515563 e!969300))

(declare-fun lt!526926 () Unit!25754)

(assert (=> b!1515563 (= lt!526926 lt!526923)))

(declare-fun lt!526920 () Unit!25754)

(assert (=> b!1515563 (= lt!526920 (lemmaInv!389 (transformation!2847 (h!21506 rules!1640))))))

(declare-fun lt!526922 () Unit!25754)

(assert (=> b!1515563 (= lt!526922 (ForallOf!172 lambda!64607 (_1!8530 (_1!8532 lt!526919))))))

(declare-fun lt!526928 () Unit!25754)

(assert (=> b!1515563 (= lt!526928 (ForallOf!172 lambda!64607 (seqFromList!1735 (list!6357 (_1!8530 (_1!8532 lt!526919))))))))

(declare-fun lt!526925 () Option!2934)

(assert (=> b!1515563 (= lt!526925 (Some!2933 (tuple2!14995 (Token!5357 (apply!4073 (transformation!2847 (h!21506 rules!1640)) (_1!8530 (_1!8532 lt!526919))) (h!21506 rules!1640) (size!13025 (_1!8530 (_1!8532 lt!526919))) (list!6357 (_1!8530 (_1!8532 lt!526919)))) (_2!8530 (_1!8532 lt!526919)))))))

(declare-fun lt!526927 () Unit!25754)

(assert (=> b!1515563 (= lt!526927 (lemmaEqSameImage!122 (transformation!2847 (h!21506 rules!1640)) (_1!8530 (_1!8532 lt!526919)) (seqFromList!1735 (list!6357 (_1!8530 (_1!8532 lt!526919))))))))

(declare-fun b!1515564 () Bool)

(declare-fun res!681738 () Bool)

(declare-fun e!969302 () Bool)

(assert (=> b!1515564 (=> (not res!681738) (not e!969302))))

(declare-fun lt!526924 () tuple4!680)

(assert (=> b!1515564 (= res!681738 (valid!1189 (_2!8526 lt!526924)))))

(declare-fun b!1515565 () Bool)

(declare-fun res!681732 () Bool)

(assert (=> b!1515565 (=> (not res!681732) (not e!969302))))

(assert (=> b!1515565 (= res!681732 (valid!1191 (_3!1028 lt!526924)))))

(declare-fun b!1515566 () Bool)

(declare-fun res!681736 () Bool)

(assert (=> b!1515566 (=> (not res!681736) (not e!969302))))

(assert (=> b!1515566 (= res!681736 (valid!1190 (_4!340 lt!526924)))))

(declare-fun b!1515567 () Bool)

(assert (=> b!1515567 (= e!969303 None!2933)))

(declare-fun b!1515568 () Bool)

(declare-fun res!681734 () Bool)

(assert (=> b!1515568 (=> (not res!681734) (not e!969302))))

(declare-fun e!969299 () Bool)

(assert (=> b!1515568 (= res!681734 e!969299)))

(declare-fun res!681739 () Bool)

(assert (=> b!1515568 (=> res!681739 e!969299)))

(assert (=> b!1515568 (= res!681739 (not (isDefined!2357 (_1!8526 lt!526924))))))

(declare-fun b!1515569 () Bool)

(assert (=> b!1515569 (= e!969302 (= (totalInput!2301 (_4!340 lt!526924)) totalInput!458))))

(declare-fun b!1515570 () Bool)

(declare-fun e!969301 () Bool)

(assert (=> b!1515570 (= e!969301 (= (list!6357 (_2!8525 (get!4742 (_1!8526 lt!526924)))) (_2!8528 (get!4743 (maxPrefixOneRule!668 thiss!13241 (h!21506 rules!1640) (list!6357 input!1102))))))))

(declare-fun b!1515571 () Bool)

(assert (=> b!1515571 (= e!969299 e!969301)))

(declare-fun res!681735 () Bool)

(assert (=> b!1515571 (=> (not res!681735) (not e!969301))))

(assert (=> b!1515571 (= res!681735 (= (_1!8525 (get!4742 (_1!8526 lt!526924))) (_1!8528 (get!4743 (maxPrefixOneRule!668 thiss!13241 (h!21506 rules!1640) (list!6357 input!1102))))))))

(declare-fun b!1515572 () Bool)

(assert (=> b!1515572 (= e!969300 (matchR!1838 (regex!2847 (h!21506 rules!1640)) (_1!8531 (findLongestMatchInner!295 (regex!2847 (h!21506 rules!1640)) Nil!16101 (size!13022 Nil!16101) lt!526921 lt!526921 (size!13022 lt!526921)))))))

(declare-fun d!448775 () Bool)

(assert (=> d!448775 e!969302))

(declare-fun res!681737 () Bool)

(assert (=> d!448775 (=> (not res!681737) (not e!969302))))

(assert (=> d!448775 (= res!681737 (= (isDefined!2357 (_1!8526 lt!526924)) (isDefined!2358 (maxPrefixOneRule!668 thiss!13241 (h!21506 rules!1640) (list!6357 input!1102)))))))

(assert (=> d!448775 (= lt!526924 (tuple4!681 e!969303 (_2!8532 lt!526919) (_3!1030 lt!526919) (_4!342 lt!526919)))))

(declare-fun c!248344 () Bool)

(assert (=> d!448775 (= c!248344 (isEmpty!9946 (_1!8530 (_1!8532 lt!526919))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!5 (Regex!4163 BalanceConc!10834 BalanceConc!10834 CacheUp!856 CacheDown!858 CacheFurthestNullable!278) tuple4!684)

(assert (=> d!448775 (= lt!526919 (findLongestMatchWithZipperSequenceV3Mem!5 (regex!2847 (h!21506 rules!1640)) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(assert (=> d!448775 (ruleValid!636 thiss!13241 (h!21506 rules!1640))))

(assert (=> d!448775 (= (maxPrefixOneRuleZipperSequenceV3Mem!12 thiss!13241 (h!21506 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!526924)))

(assert (= (and d!448775 c!248344) b!1515567))

(assert (= (and d!448775 (not c!248344)) b!1515563))

(assert (= (and b!1515563 (not res!681733)) b!1515572))

(assert (= (and d!448775 res!681737) b!1515568))

(assert (= (and b!1515568 (not res!681739)) b!1515571))

(assert (= (and b!1515571 res!681735) b!1515570))

(assert (= (and b!1515568 res!681734) b!1515564))

(assert (= (and b!1515564 res!681738) b!1515565))

(assert (= (and b!1515565 res!681732) b!1515566))

(assert (= (and b!1515566 res!681736) b!1515569))

(declare-fun m!1780340 () Bool)

(assert (=> b!1515565 m!1780340))

(declare-fun m!1780342 () Bool)

(assert (=> b!1515571 m!1780342))

(assert (=> b!1515571 m!1778769))

(assert (=> b!1515571 m!1778769))

(assert (=> b!1515571 m!1779934))

(assert (=> b!1515571 m!1779934))

(assert (=> b!1515571 m!1780290))

(declare-fun m!1780344 () Bool)

(assert (=> b!1515563 m!1780344))

(declare-fun m!1780346 () Bool)

(assert (=> b!1515563 m!1780346))

(declare-fun m!1780348 () Bool)

(assert (=> b!1515563 m!1780348))

(declare-fun m!1780350 () Bool)

(assert (=> b!1515563 m!1780350))

(assert (=> b!1515563 m!1780306))

(declare-fun m!1780352 () Bool)

(assert (=> b!1515563 m!1780352))

(assert (=> b!1515563 m!1780348))

(declare-fun m!1780354 () Bool)

(assert (=> b!1515563 m!1780354))

(assert (=> b!1515563 m!1780302))

(assert (=> b!1515563 m!1780306))

(assert (=> b!1515563 m!1780346))

(declare-fun m!1780356 () Bool)

(assert (=> b!1515563 m!1780356))

(declare-fun m!1780358 () Bool)

(assert (=> b!1515563 m!1780358))

(assert (=> b!1515563 m!1778769))

(assert (=> b!1515563 m!1780344))

(assert (=> b!1515563 m!1780348))

(declare-fun m!1780360 () Bool)

(assert (=> b!1515563 m!1780360))

(declare-fun m!1780362 () Bool)

(assert (=> b!1515563 m!1780362))

(declare-fun m!1780364 () Bool)

(assert (=> b!1515563 m!1780364))

(declare-fun m!1780366 () Bool)

(assert (=> b!1515568 m!1780366))

(declare-fun m!1780368 () Bool)

(assert (=> b!1515566 m!1780368))

(assert (=> b!1515572 m!1780306))

(assert (=> b!1515572 m!1780346))

(assert (=> b!1515572 m!1780306))

(assert (=> b!1515572 m!1780346))

(assert (=> b!1515572 m!1780356))

(declare-fun m!1780370 () Bool)

(assert (=> b!1515572 m!1780370))

(declare-fun m!1780372 () Bool)

(assert (=> b!1515564 m!1780372))

(declare-fun m!1780374 () Bool)

(assert (=> d!448775 m!1780374))

(assert (=> d!448775 m!1780366))

(assert (=> d!448775 m!1778769))

(assert (=> d!448775 m!1778769))

(assert (=> d!448775 m!1779934))

(declare-fun m!1780376 () Bool)

(assert (=> d!448775 m!1780376))

(assert (=> d!448775 m!1779934))

(assert (=> d!448775 m!1780322))

(assert (=> d!448775 m!1779505))

(assert (=> b!1515570 m!1778769))

(assert (=> b!1515570 m!1778769))

(assert (=> b!1515570 m!1779934))

(assert (=> b!1515570 m!1779934))

(assert (=> b!1515570 m!1780290))

(declare-fun m!1780378 () Bool)

(assert (=> b!1515570 m!1780378))

(assert (=> b!1515570 m!1780342))

(assert (=> bm!100384 d!448775))

(declare-fun bs!365148 () Bool)

(declare-fun d!448777 () Bool)

(assert (= bs!365148 (and d!448777 d!448547)))

(declare-fun lambda!64608 () Int)

(assert (=> bs!365148 (= lambda!64608 lambda!64572)))

(declare-fun bs!365149 () Bool)

(assert (= bs!365149 (and d!448777 d!448453)))

(assert (=> bs!365149 (= lambda!64608 lambda!64562)))

(declare-fun bs!365150 () Bool)

(assert (= bs!365150 (and d!448777 d!448699)))

(assert (=> bs!365150 (= lambda!64608 lambda!64592)))

(declare-fun bs!365151 () Bool)

(assert (= bs!365151 (and d!448777 d!448659)))

(assert (=> bs!365151 (= lambda!64608 lambda!64585)))

(declare-fun bs!365152 () Bool)

(assert (= bs!365152 (and d!448777 d!448533)))

(assert (=> bs!365152 (= lambda!64608 lambda!64571)))

(declare-fun bs!365153 () Bool)

(assert (= bs!365153 (and d!448777 d!448477)))

(assert (=> bs!365153 (= lambda!64608 lambda!64563)))

(declare-fun bs!365154 () Bool)

(assert (= bs!365154 (and d!448777 d!448665)))

(assert (=> bs!365154 (= lambda!64608 lambda!64587)))

(declare-fun bs!365155 () Bool)

(assert (= bs!365155 (and d!448777 d!448575)))

(assert (=> bs!365155 (= lambda!64608 lambda!64575)))

(declare-fun bs!365156 () Bool)

(assert (= bs!365156 (and d!448777 d!448671)))

(assert (=> bs!365156 (= lambda!64608 lambda!64588)))

(declare-fun bs!365157 () Bool)

(assert (= bs!365157 (and d!448777 d!448741)))

(assert (=> bs!365157 (= lambda!64608 lambda!64597)))

(declare-fun bs!365158 () Bool)

(assert (= bs!365158 (and d!448777 d!448661)))

(assert (=> bs!365158 (= lambda!64608 lambda!64586)))

(declare-fun bs!365159 () Bool)

(assert (= bs!365159 (and d!448777 d!448561)))

(assert (=> bs!365159 (= lambda!64608 lambda!64574)))

(declare-fun bs!365160 () Bool)

(assert (= bs!365160 (and d!448777 d!448549)))

(assert (=> bs!365160 (= lambda!64608 lambda!64573)))

(declare-fun bs!365161 () Bool)

(assert (= bs!365161 (and d!448777 d!448721)))

(assert (=> bs!365161 (= lambda!64608 lambda!64593)))

(declare-fun bs!365162 () Bool)

(assert (= bs!365162 (and d!448777 d!448481)))

(assert (=> bs!365162 (= lambda!64608 lambda!64564)))

(assert (=> d!448777 (= (inv!21347 setElem!9219) (forall!3861 (exprs!1181 setElem!9219) lambda!64608))))

(declare-fun bs!365163 () Bool)

(assert (= bs!365163 d!448777))

(declare-fun m!1780380 () Bool)

(assert (=> bs!365163 m!1780380))

(assert (=> setNonEmpty!9219 d!448777))

(declare-fun d!448779 () Bool)

(declare-fun c!248345 () Bool)

(assert (=> d!448779 (= c!248345 ((_ is Node!5446) (left!13374 (c!248131 treated!70))))))

(declare-fun e!969306 () Bool)

(assert (=> d!448779 (= (inv!21340 (left!13374 (c!248131 treated!70))) e!969306)))

(declare-fun b!1515575 () Bool)

(assert (=> b!1515575 (= e!969306 (inv!21343 (left!13374 (c!248131 treated!70))))))

(declare-fun b!1515576 () Bool)

(declare-fun e!969307 () Bool)

(assert (=> b!1515576 (= e!969306 e!969307)))

(declare-fun res!681740 () Bool)

(assert (=> b!1515576 (= res!681740 (not ((_ is Leaf!8073) (left!13374 (c!248131 treated!70)))))))

(assert (=> b!1515576 (=> res!681740 e!969307)))

(declare-fun b!1515577 () Bool)

(assert (=> b!1515577 (= e!969307 (inv!21344 (left!13374 (c!248131 treated!70))))))

(assert (= (and d!448779 c!248345) b!1515575))

(assert (= (and d!448779 (not c!248345)) b!1515576))

(assert (= (and b!1515576 (not res!681740)) b!1515577))

(declare-fun m!1780382 () Bool)

(assert (=> b!1515575 m!1780382))

(declare-fun m!1780384 () Bool)

(assert (=> b!1515577 m!1780384))

(assert (=> b!1514845 d!448779))

(declare-fun d!448781 () Bool)

(declare-fun c!248346 () Bool)

(assert (=> d!448781 (= c!248346 ((_ is Node!5446) (right!13704 (c!248131 treated!70))))))

(declare-fun e!969308 () Bool)

(assert (=> d!448781 (= (inv!21340 (right!13704 (c!248131 treated!70))) e!969308)))

(declare-fun b!1515578 () Bool)

(assert (=> b!1515578 (= e!969308 (inv!21343 (right!13704 (c!248131 treated!70))))))

(declare-fun b!1515579 () Bool)

(declare-fun e!969309 () Bool)

(assert (=> b!1515579 (= e!969308 e!969309)))

(declare-fun res!681741 () Bool)

(assert (=> b!1515579 (= res!681741 (not ((_ is Leaf!8073) (right!13704 (c!248131 treated!70)))))))

(assert (=> b!1515579 (=> res!681741 e!969309)))

(declare-fun b!1515580 () Bool)

(assert (=> b!1515580 (= e!969309 (inv!21344 (right!13704 (c!248131 treated!70))))))

(assert (= (and d!448781 c!248346) b!1515578))

(assert (= (and d!448781 (not c!248346)) b!1515579))

(assert (= (and b!1515579 (not res!681741)) b!1515580))

(declare-fun m!1780386 () Bool)

(assert (=> b!1515578 m!1780386))

(declare-fun m!1780388 () Bool)

(assert (=> b!1515580 m!1780388))

(assert (=> b!1514845 d!448781))

(declare-fun b!1515582 () Bool)

(declare-fun e!969310 () List!16169)

(declare-fun e!969311 () List!16169)

(assert (=> b!1515582 (= e!969310 e!969311)))

(declare-fun c!248348 () Bool)

(assert (=> b!1515582 (= c!248348 ((_ is Leaf!8073) (c!248131 (_2!8520 lt!526570))))))

(declare-fun b!1515584 () Bool)

(assert (=> b!1515584 (= e!969311 (++!4368 (list!6359 (left!13374 (c!248131 (_2!8520 lt!526570)))) (list!6359 (right!13704 (c!248131 (_2!8520 lt!526570))))))))

(declare-fun d!448783 () Bool)

(declare-fun c!248347 () Bool)

(assert (=> d!448783 (= c!248347 ((_ is Empty!5446) (c!248131 (_2!8520 lt!526570))))))

(assert (=> d!448783 (= (list!6359 (c!248131 (_2!8520 lt!526570))) e!969310)))

(declare-fun b!1515581 () Bool)

(assert (=> b!1515581 (= e!969310 Nil!16101)))

(declare-fun b!1515583 () Bool)

(assert (=> b!1515583 (= e!969311 (list!6361 (xs!8229 (c!248131 (_2!8520 lt!526570)))))))

(assert (= (and d!448783 c!248347) b!1515581))

(assert (= (and d!448783 (not c!248347)) b!1515582))

(assert (= (and b!1515582 c!248348) b!1515583))

(assert (= (and b!1515582 (not c!248348)) b!1515584))

(declare-fun m!1780390 () Bool)

(assert (=> b!1515584 m!1780390))

(declare-fun m!1780392 () Bool)

(assert (=> b!1515584 m!1780392))

(assert (=> b!1515584 m!1780390))

(assert (=> b!1515584 m!1780392))

(declare-fun m!1780394 () Bool)

(assert (=> b!1515584 m!1780394))

(declare-fun m!1780396 () Bool)

(assert (=> b!1515583 m!1780396))

(assert (=> d!448329 d!448783))

(declare-fun b!1515585 () Bool)

(declare-fun e!969313 () Bool)

(declare-fun e!969312 () Bool)

(assert (=> b!1515585 (= e!969313 e!969312)))

(declare-fun res!681743 () Bool)

(assert (=> b!1515585 (=> (not res!681743) (not e!969312))))

(assert (=> b!1515585 (= res!681743 (<= (- 1) (- (height!813 (left!13375 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (height!813 (right!13705 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))))

(declare-fun b!1515586 () Bool)

(declare-fun res!681747 () Bool)

(assert (=> b!1515586 (=> (not res!681747) (not e!969312))))

(assert (=> b!1515586 (= res!681747 (isBalanced!1612 (left!13375 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(declare-fun b!1515587 () Bool)

(declare-fun res!681746 () Bool)

(assert (=> b!1515587 (=> (not res!681746) (not e!969312))))

(assert (=> b!1515587 (= res!681746 (isBalanced!1612 (right!13705 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(declare-fun b!1515588 () Bool)

(assert (=> b!1515588 (= e!969312 (not (isEmpty!9944 (right!13705 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577))))))))))

(declare-fun b!1515589 () Bool)

(declare-fun res!681742 () Bool)

(assert (=> b!1515589 (=> (not res!681742) (not e!969312))))

(assert (=> b!1515589 (= res!681742 (<= (- (height!813 (left!13375 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (height!813 (right!13705 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577))))))) 1))))

(declare-fun d!448785 () Bool)

(declare-fun res!681745 () Bool)

(assert (=> d!448785 (=> res!681745 e!969313)))

(assert (=> d!448785 (= res!681745 (not ((_ is Node!5447) (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(assert (=> d!448785 (= (isBalanced!1612 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577))))) e!969313)))

(declare-fun b!1515590 () Bool)

(declare-fun res!681744 () Bool)

(assert (=> b!1515590 (=> (not res!681744) (not e!969312))))

(assert (=> b!1515590 (= res!681744 (not (isEmpty!9944 (left!13375 (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577))))))))))

(assert (= (and d!448785 (not res!681745)) b!1515585))

(assert (= (and b!1515585 res!681743) b!1515589))

(assert (= (and b!1515589 res!681742) b!1515586))

(assert (= (and b!1515586 res!681747) b!1515587))

(assert (= (and b!1515587 res!681746) b!1515590))

(assert (= (and b!1515590 res!681744) b!1515588))

(declare-fun m!1780398 () Bool)

(assert (=> b!1515590 m!1780398))

(declare-fun m!1780400 () Bool)

(assert (=> b!1515585 m!1780400))

(declare-fun m!1780402 () Bool)

(assert (=> b!1515585 m!1780402))

(declare-fun m!1780404 () Bool)

(assert (=> b!1515586 m!1780404))

(assert (=> b!1515589 m!1780400))

(assert (=> b!1515589 m!1780402))

(declare-fun m!1780406 () Bool)

(assert (=> b!1515587 m!1780406))

(declare-fun m!1780408 () Bool)

(assert (=> b!1515588 m!1780408))

(assert (=> d!448371 d!448785))

(declare-fun b!1515617 () Bool)

(declare-fun e!969331 () Conc!5447)

(declare-fun call!100486 () Conc!5447)

(assert (=> b!1515617 (= e!969331 call!100486)))

(declare-fun b!1515618 () Bool)

(declare-fun e!969330 () Conc!5447)

(declare-fun e!969329 () Conc!5447)

(assert (=> b!1515618 (= e!969330 e!969329)))

(declare-fun c!248359 () Bool)

(assert (=> b!1515618 (= c!248359 ((_ is Node!5447) (c!248132 acc!392)))))

(declare-fun call!100485 () List!16170)

(declare-fun bm!100476 () Bool)

(declare-fun c!248361 () Bool)

(declare-fun lt!526967 () List!16170)

(declare-fun lt!526970 () List!16170)

(declare-fun lt!526980 () List!16170)

(declare-fun lt!526965 () List!16170)

(assert (=> bm!100476 (= call!100485 (++!4367 (ite c!248361 lt!526980 lt!526970) (ite c!248361 lt!526965 lt!526967)))))

(declare-fun bm!100477 () Bool)

(declare-fun call!100481 () List!16170)

(assert (=> bm!100477 (= call!100481 (list!6360 (ite c!248361 (left!13375 (c!248132 acc!392)) (right!13705 (c!248132 acc!392)))))))

(declare-fun bm!100478 () Bool)

(declare-fun call!100483 () IArray!10899)

(assert (=> bm!100478 (= call!100483 (fill!69 1 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))

(declare-fun call!100490 () List!16170)

(declare-fun lt!526977 () List!16170)

(declare-fun lt!526982 () List!16170)

(declare-fun bm!100479 () Bool)

(declare-fun lt!526974 () List!16170)

(assert (=> bm!100479 (= call!100490 (++!4367 (ite c!248361 lt!526982 lt!526974) (ite c!248361 call!100485 lt!526977)))))

(declare-fun lt!526975 () List!16170)

(declare-fun bm!100480 () Bool)

(declare-fun call!100488 () List!16170)

(assert (=> bm!100480 (= call!100488 (++!4367 (ite c!248361 lt!526982 lt!526975) (ite c!248361 lt!526980 lt!526974)))))

(declare-fun b!1515619 () Bool)

(declare-fun append!506 (IArray!10899 Token!5356) IArray!10899)

(assert (=> b!1515619 (= e!969331 (Leaf!8074 (append!506 (xs!8230 (c!248132 acc!392)) (_1!8525 (v!22915 (_1!8526 lt!526577)))) (+ (csize!11125 (c!248132 acc!392)) 1)))))

(declare-fun lt!526966 () List!16170)

(assert (=> b!1515619 (= lt!526966 ($colon+!108 (list!6362 (xs!8230 (c!248132 acc!392))) (_1!8525 (v!22915 (_1!8526 lt!526577)))))))

(declare-fun b!1515620 () Bool)

(declare-fun res!681756 () Bool)

(declare-fun e!969328 () Bool)

(assert (=> b!1515620 (=> (not res!681756) (not e!969328))))

(declare-fun lt!526972 () Conc!5447)

(assert (=> b!1515620 (= res!681756 (<= (height!813 lt!526972) (+ (height!813 (c!248132 acc!392)) 1)))))

(declare-fun b!1515621 () Bool)

(declare-fun e!969327 () Conc!5447)

(assert (=> b!1515621 (= e!969327 (Leaf!8074 call!100483 1))))

(declare-fun b!1515622 () Bool)

(declare-fun c!248360 () Bool)

(assert (=> b!1515622 (= c!248360 (< (csize!11125 (c!248132 acc!392)) 512))))

(assert (=> b!1515622 (= e!969329 e!969331)))

(declare-fun b!1515623 () Bool)

(declare-fun lt!526968 () Conc!5447)

(assert (=> b!1515623 (= e!969327 (right!13705 lt!526968))))

(declare-fun b!1515624 () Bool)

(assert (=> b!1515624 (= c!248361 (<= (height!813 lt!526968) (+ (height!813 (left!13375 (c!248132 acc!392))) 1)))))

(assert (=> b!1515624 (= lt!526968 (append!505 (right!13705 (c!248132 acc!392)) (_1!8525 (v!22915 (_1!8526 lt!526577)))))))

(declare-fun e!969326 () Conc!5447)

(assert (=> b!1515624 (= e!969329 e!969326)))

(declare-fun b!1515625 () Bool)

(assert (=> b!1515625 (= e!969330 (Leaf!8074 call!100483 1))))

(declare-fun call!100489 () Unit!25754)

(declare-fun bm!100482 () Bool)

(declare-fun lemmaConcatAssociativity!948 (List!16170 List!16170 List!16170) Unit!25754)

(assert (=> bm!100482 (= call!100489 (lemmaConcatAssociativity!948 (ite c!248361 lt!526982 lt!526975) (ite c!248361 lt!526980 lt!526974) (ite c!248361 lt!526965 lt!526977)))))

(declare-fun call!100487 () List!16170)

(declare-fun bm!100483 () Bool)

(assert (=> bm!100483 (= call!100487 (list!6360 (ite c!248361 (right!13705 (c!248132 acc!392)) (right!13705 lt!526968))))))

(declare-fun bm!100484 () Bool)

(declare-fun call!100484 () List!16170)

(declare-fun lt!526969 () List!16170)

(assert (=> bm!100484 (= call!100484 (++!4367 (ite c!248361 call!100488 lt!526967) (ite c!248361 lt!526965 lt!526969)))))

(declare-fun b!1515626 () Bool)

(assert (=> b!1515626 (= e!969326 call!100486)))

(assert (=> b!1515626 (= lt!526975 (list!6360 (left!13375 (c!248132 acc!392))))))

(assert (=> b!1515626 (= lt!526974 (list!6360 (left!13375 lt!526968)))))

(assert (=> b!1515626 (= lt!526977 call!100487)))

(declare-fun lt!526971 () Unit!25754)

(assert (=> b!1515626 (= lt!526971 call!100489)))

(assert (=> b!1515626 (= (++!4367 call!100488 lt!526977) (++!4367 lt!526975 call!100490))))

(declare-fun lt!526979 () Unit!25754)

(assert (=> b!1515626 (= lt!526979 lt!526971)))

(assert (=> b!1515626 (= lt!526970 (list!6360 (left!13375 (c!248132 acc!392))))))

(assert (=> b!1515626 (= lt!526967 call!100481)))

(assert (=> b!1515626 (= lt!526969 (Cons!16102 (_1!8525 (v!22915 (_1!8526 lt!526577))) Nil!16102))))

(declare-fun lt!526981 () Unit!25754)

(assert (=> b!1515626 (= lt!526981 (lemmaConcatAssociativity!948 lt!526970 lt!526967 lt!526969))))

(assert (=> b!1515626 (= (++!4367 call!100485 lt!526969) (++!4367 lt!526970 call!100484))))

(declare-fun lt!526973 () Unit!25754)

(assert (=> b!1515626 (= lt!526973 lt!526981)))

(declare-fun b!1515627 () Bool)

(assert (=> b!1515627 (= e!969328 (= (list!6360 lt!526972) ($colon+!108 (list!6360 (c!248132 acc!392)) (_1!8525 (v!22915 (_1!8526 lt!526577))))))))

(declare-fun b!1515628 () Bool)

(declare-fun res!681754 () Bool)

(assert (=> b!1515628 (=> (not res!681754) (not e!969328))))

(assert (=> b!1515628 (= res!681754 (<= (height!813 (c!248132 acc!392)) (height!813 lt!526972)))))

(declare-fun bm!100485 () Bool)

(declare-fun c!248363 () Bool)

(assert (=> bm!100485 (= c!248363 c!248359)))

(declare-fun call!100482 () Conc!5447)

(assert (=> bm!100485 (= call!100486 (<>!117 (ite c!248359 call!100482 (c!248132 acc!392)) e!969327))))

(declare-fun b!1515629 () Bool)

(assert (=> b!1515629 (= e!969326 call!100482)))

(assert (=> b!1515629 (= lt!526982 call!100481)))

(assert (=> b!1515629 (= lt!526980 call!100487)))

(assert (=> b!1515629 (= lt!526965 (Cons!16102 (_1!8525 (v!22915 (_1!8526 lt!526577))) Nil!16102))))

(declare-fun lt!526976 () Unit!25754)

(assert (=> b!1515629 (= lt!526976 call!100489)))

(assert (=> b!1515629 (= call!100484 call!100490)))

(declare-fun lt!526978 () Unit!25754)

(assert (=> b!1515629 (= lt!526978 lt!526976)))

(declare-fun bm!100481 () Bool)

(assert (=> bm!100481 (= call!100482 (<>!117 (left!13375 (c!248132 acc!392)) (ite c!248361 lt!526968 (left!13375 lt!526968))))))

(declare-fun d!448787 () Bool)

(assert (=> d!448787 e!969328))

(declare-fun res!681755 () Bool)

(assert (=> d!448787 (=> (not res!681755) (not e!969328))))

(assert (=> d!448787 (= res!681755 (isBalanced!1612 lt!526972))))

(assert (=> d!448787 (= lt!526972 e!969330)))

(declare-fun c!248362 () Bool)

(assert (=> d!448787 (= c!248362 ((_ is Empty!5447) (c!248132 acc!392)))))

(assert (=> d!448787 (isBalanced!1612 (c!248132 acc!392))))

(assert (=> d!448787 (= (append!505 (c!248132 acc!392) (_1!8525 (v!22915 (_1!8526 lt!526577)))) lt!526972)))

(assert (= (and d!448787 c!248362) b!1515625))

(assert (= (and d!448787 (not c!248362)) b!1515618))

(assert (= (and b!1515618 c!248359) b!1515624))

(assert (= (and b!1515618 (not c!248359)) b!1515622))

(assert (= (and b!1515624 c!248361) b!1515629))

(assert (= (and b!1515624 (not c!248361)) b!1515626))

(assert (= (or b!1515629 b!1515626) bm!100481))

(assert (= (or b!1515629 b!1515626) bm!100480))

(assert (= (or b!1515629 b!1515626) bm!100483))

(assert (= (or b!1515629 b!1515626) bm!100476))

(assert (= (or b!1515629 b!1515626) bm!100477))

(assert (= (or b!1515629 b!1515626) bm!100482))

(assert (= (or b!1515629 b!1515626) bm!100484))

(assert (= (or b!1515629 b!1515626) bm!100479))

(assert (= (and b!1515622 c!248360) b!1515619))

(assert (= (and b!1515622 (not c!248360)) b!1515617))

(assert (= (or b!1515626 b!1515617) bm!100485))

(assert (= (and bm!100485 c!248363) b!1515623))

(assert (= (and bm!100485 (not c!248363)) b!1515621))

(assert (= (or b!1515625 b!1515621) bm!100478))

(assert (= (and d!448787 res!681755) b!1515628))

(assert (= (and b!1515628 res!681754) b!1515620))

(assert (= (and b!1515620 res!681756) b!1515627))

(declare-fun m!1780410 () Bool)

(assert (=> b!1515627 m!1780410))

(assert (=> b!1515627 m!1779211))

(assert (=> b!1515627 m!1779211))

(declare-fun m!1780412 () Bool)

(assert (=> b!1515627 m!1780412))

(declare-fun m!1780414 () Bool)

(assert (=> b!1515624 m!1780414))

(assert (=> b!1515624 m!1779737))

(declare-fun m!1780416 () Bool)

(assert (=> b!1515624 m!1780416))

(declare-fun m!1780418 () Bool)

(assert (=> bm!100480 m!1780418))

(declare-fun m!1780420 () Bool)

(assert (=> bm!100482 m!1780420))

(declare-fun m!1780422 () Bool)

(assert (=> bm!100478 m!1780422))

(declare-fun m!1780424 () Bool)

(assert (=> bm!100477 m!1780424))

(assert (=> b!1515628 m!1779145))

(declare-fun m!1780426 () Bool)

(assert (=> b!1515628 m!1780426))

(declare-fun m!1780428 () Bool)

(assert (=> b!1515619 m!1780428))

(assert (=> b!1515619 m!1779883))

(assert (=> b!1515619 m!1779883))

(declare-fun m!1780430 () Bool)

(assert (=> b!1515619 m!1780430))

(declare-fun m!1780432 () Bool)

(assert (=> d!448787 m!1780432))

(assert (=> d!448787 m!1778873))

(declare-fun m!1780434 () Bool)

(assert (=> bm!100485 m!1780434))

(declare-fun m!1780436 () Bool)

(assert (=> bm!100476 m!1780436))

(declare-fun m!1780438 () Bool)

(assert (=> bm!100479 m!1780438))

(assert (=> b!1515620 m!1780426))

(assert (=> b!1515620 m!1779145))

(declare-fun m!1780440 () Bool)

(assert (=> bm!100483 m!1780440))

(declare-fun m!1780442 () Bool)

(assert (=> b!1515626 m!1780442))

(assert (=> b!1515626 m!1779829))

(declare-fun m!1780444 () Bool)

(assert (=> b!1515626 m!1780444))

(declare-fun m!1780446 () Bool)

(assert (=> b!1515626 m!1780446))

(declare-fun m!1780448 () Bool)

(assert (=> b!1515626 m!1780448))

(declare-fun m!1780450 () Bool)

(assert (=> b!1515626 m!1780450))

(declare-fun m!1780452 () Bool)

(assert (=> b!1515626 m!1780452))

(declare-fun m!1780454 () Bool)

(assert (=> bm!100481 m!1780454))

(declare-fun m!1780456 () Bool)

(assert (=> bm!100484 m!1780456))

(assert (=> d!448371 d!448787))

(declare-fun bs!365164 () Bool)

(declare-fun d!448789 () Bool)

(assert (= bs!365164 (and d!448789 d!448547)))

(declare-fun lambda!64609 () Int)

(assert (=> bs!365164 (= lambda!64609 lambda!64572)))

(declare-fun bs!365165 () Bool)

(assert (= bs!365165 (and d!448789 d!448453)))

(assert (=> bs!365165 (= lambda!64609 lambda!64562)))

(declare-fun bs!365166 () Bool)

(assert (= bs!365166 (and d!448789 d!448699)))

(assert (=> bs!365166 (= lambda!64609 lambda!64592)))

(declare-fun bs!365167 () Bool)

(assert (= bs!365167 (and d!448789 d!448659)))

(assert (=> bs!365167 (= lambda!64609 lambda!64585)))

(declare-fun bs!365168 () Bool)

(assert (= bs!365168 (and d!448789 d!448533)))

(assert (=> bs!365168 (= lambda!64609 lambda!64571)))

(declare-fun bs!365169 () Bool)

(assert (= bs!365169 (and d!448789 d!448477)))

(assert (=> bs!365169 (= lambda!64609 lambda!64563)))

(declare-fun bs!365170 () Bool)

(assert (= bs!365170 (and d!448789 d!448665)))

(assert (=> bs!365170 (= lambda!64609 lambda!64587)))

(declare-fun bs!365171 () Bool)

(assert (= bs!365171 (and d!448789 d!448575)))

(assert (=> bs!365171 (= lambda!64609 lambda!64575)))

(declare-fun bs!365172 () Bool)

(assert (= bs!365172 (and d!448789 d!448671)))

(assert (=> bs!365172 (= lambda!64609 lambda!64588)))

(declare-fun bs!365173 () Bool)

(assert (= bs!365173 (and d!448789 d!448741)))

(assert (=> bs!365173 (= lambda!64609 lambda!64597)))

(declare-fun bs!365174 () Bool)

(assert (= bs!365174 (and d!448789 d!448661)))

(assert (=> bs!365174 (= lambda!64609 lambda!64586)))

(declare-fun bs!365175 () Bool)

(assert (= bs!365175 (and d!448789 d!448561)))

(assert (=> bs!365175 (= lambda!64609 lambda!64574)))

(declare-fun bs!365176 () Bool)

(assert (= bs!365176 (and d!448789 d!448549)))

(assert (=> bs!365176 (= lambda!64609 lambda!64573)))

(declare-fun bs!365177 () Bool)

(assert (= bs!365177 (and d!448789 d!448721)))

(assert (=> bs!365177 (= lambda!64609 lambda!64593)))

(declare-fun bs!365178 () Bool)

(assert (= bs!365178 (and d!448789 d!448777)))

(assert (=> bs!365178 (= lambda!64609 lambda!64608)))

(declare-fun bs!365179 () Bool)

(assert (= bs!365179 (and d!448789 d!448481)))

(assert (=> bs!365179 (= lambda!64609 lambda!64564)))

(assert (=> d!448789 (= (inv!21347 (_1!8518 (_1!8519 (h!21500 mapValue!7055)))) (forall!3861 (exprs!1181 (_1!8518 (_1!8519 (h!21500 mapValue!7055)))) lambda!64609))))

(declare-fun bs!365180 () Bool)

(assert (= bs!365180 d!448789))

(declare-fun m!1780458 () Bool)

(assert (=> bs!365180 m!1780458))

(assert (=> b!1514772 d!448789))

(declare-fun d!448791 () Bool)

(declare-fun res!681761 () Bool)

(declare-fun e!969334 () Bool)

(assert (=> d!448791 (=> (not res!681761) (not e!969334))))

(assert (=> d!448791 (= res!681761 (<= (size!13023 (list!6362 (xs!8230 (c!248132 acc!392)))) 512))))

(assert (=> d!448791 (= (inv!21346 (c!248132 acc!392)) e!969334)))

(declare-fun b!1515634 () Bool)

(declare-fun res!681762 () Bool)

(assert (=> b!1515634 (=> (not res!681762) (not e!969334))))

(assert (=> b!1515634 (= res!681762 (= (csize!11125 (c!248132 acc!392)) (size!13023 (list!6362 (xs!8230 (c!248132 acc!392))))))))

(declare-fun b!1515635 () Bool)

(assert (=> b!1515635 (= e!969334 (and (> (csize!11125 (c!248132 acc!392)) 0) (<= (csize!11125 (c!248132 acc!392)) 512)))))

(assert (= (and d!448791 res!681761) b!1515634))

(assert (= (and b!1515634 res!681762) b!1515635))

(assert (=> d!448791 m!1779883))

(assert (=> d!448791 m!1779883))

(declare-fun m!1780460 () Bool)

(assert (=> d!448791 m!1780460))

(assert (=> b!1515634 m!1779883))

(assert (=> b!1515634 m!1779883))

(assert (=> b!1515634 m!1780460))

(assert (=> b!1514681 d!448791))

(declare-fun bs!365181 () Bool)

(declare-fun d!448793 () Bool)

(assert (= bs!365181 (and d!448793 d!448547)))

(declare-fun lambda!64610 () Int)

(assert (=> bs!365181 (= lambda!64610 lambda!64572)))

(declare-fun bs!365182 () Bool)

(assert (= bs!365182 (and d!448793 d!448453)))

(assert (=> bs!365182 (= lambda!64610 lambda!64562)))

(declare-fun bs!365183 () Bool)

(assert (= bs!365183 (and d!448793 d!448699)))

(assert (=> bs!365183 (= lambda!64610 lambda!64592)))

(declare-fun bs!365184 () Bool)

(assert (= bs!365184 (and d!448793 d!448659)))

(assert (=> bs!365184 (= lambda!64610 lambda!64585)))

(declare-fun bs!365185 () Bool)

(assert (= bs!365185 (and d!448793 d!448533)))

(assert (=> bs!365185 (= lambda!64610 lambda!64571)))

(declare-fun bs!365186 () Bool)

(assert (= bs!365186 (and d!448793 d!448789)))

(assert (=> bs!365186 (= lambda!64610 lambda!64609)))

(declare-fun bs!365187 () Bool)

(assert (= bs!365187 (and d!448793 d!448477)))

(assert (=> bs!365187 (= lambda!64610 lambda!64563)))

(declare-fun bs!365188 () Bool)

(assert (= bs!365188 (and d!448793 d!448665)))

(assert (=> bs!365188 (= lambda!64610 lambda!64587)))

(declare-fun bs!365189 () Bool)

(assert (= bs!365189 (and d!448793 d!448575)))

(assert (=> bs!365189 (= lambda!64610 lambda!64575)))

(declare-fun bs!365190 () Bool)

(assert (= bs!365190 (and d!448793 d!448671)))

(assert (=> bs!365190 (= lambda!64610 lambda!64588)))

(declare-fun bs!365191 () Bool)

(assert (= bs!365191 (and d!448793 d!448741)))

(assert (=> bs!365191 (= lambda!64610 lambda!64597)))

(declare-fun bs!365192 () Bool)

(assert (= bs!365192 (and d!448793 d!448661)))

(assert (=> bs!365192 (= lambda!64610 lambda!64586)))

(declare-fun bs!365193 () Bool)

(assert (= bs!365193 (and d!448793 d!448561)))

(assert (=> bs!365193 (= lambda!64610 lambda!64574)))

(declare-fun bs!365194 () Bool)

(assert (= bs!365194 (and d!448793 d!448549)))

(assert (=> bs!365194 (= lambda!64610 lambda!64573)))

(declare-fun bs!365195 () Bool)

(assert (= bs!365195 (and d!448793 d!448721)))

(assert (=> bs!365195 (= lambda!64610 lambda!64593)))

(declare-fun bs!365196 () Bool)

(assert (= bs!365196 (and d!448793 d!448777)))

(assert (=> bs!365196 (= lambda!64610 lambda!64608)))

(declare-fun bs!365197 () Bool)

(assert (= bs!365197 (and d!448793 d!448481)))

(assert (=> bs!365197 (= lambda!64610 lambda!64564)))

(assert (=> d!448793 (= (inv!21347 setElem!9216) (forall!3861 (exprs!1181 setElem!9216) lambda!64610))))

(declare-fun bs!365198 () Bool)

(assert (= bs!365198 d!448793))

(declare-fun m!1780462 () Bool)

(assert (=> bs!365198 m!1780462))

(assert (=> setNonEmpty!9216 d!448793))

(assert (=> b!1514537 d!448579))

(assert (=> b!1514537 d!448639))

(assert (=> b!1514537 d!448641))

(assert (=> b!1514537 d!448581))

(assert (=> b!1514537 d!448403))

(declare-fun d!448795 () Bool)

(declare-fun c!248364 () Bool)

(assert (=> d!448795 (= c!248364 ((_ is Nil!16102) lt!526666))))

(declare-fun e!969335 () (InoxSet Token!5356))

(assert (=> d!448795 (= (content!2317 lt!526666) e!969335)))

(declare-fun b!1515636 () Bool)

(assert (=> b!1515636 (= e!969335 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1515637 () Bool)

(assert (=> b!1515637 (= e!969335 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 lt!526666) true) (content!2317 (t!139454 lt!526666))))))

(assert (= (and d!448795 c!248364) b!1515636))

(assert (= (and d!448795 (not c!248364)) b!1515637))

(declare-fun m!1780464 () Bool)

(assert (=> b!1515637 m!1780464))

(declare-fun m!1780466 () Bool)

(assert (=> b!1515637 m!1780466))

(assert (=> d!448379 d!448795))

(declare-fun d!448797 () Bool)

(declare-fun c!248365 () Bool)

(assert (=> d!448797 (= c!248365 ((_ is Nil!16102) (++!4367 lt!526584 lt!526582)))))

(declare-fun e!969336 () (InoxSet Token!5356))

(assert (=> d!448797 (= (content!2317 (++!4367 lt!526584 lt!526582)) e!969336)))

(declare-fun b!1515638 () Bool)

(assert (=> b!1515638 (= e!969336 ((as const (Array Token!5356 Bool)) false))))

(declare-fun b!1515639 () Bool)

(assert (=> b!1515639 (= e!969336 ((_ map or) (store ((as const (Array Token!5356 Bool)) false) (h!21503 (++!4367 lt!526584 lt!526582)) true) (content!2317 (t!139454 (++!4367 lt!526584 lt!526582)))))))

(assert (= (and d!448797 c!248365) b!1515638))

(assert (= (and d!448797 (not c!248365)) b!1515639))

(declare-fun m!1780468 () Bool)

(assert (=> b!1515639 m!1780468))

(declare-fun m!1780470 () Bool)

(assert (=> b!1515639 m!1780470))

(assert (=> d!448379 d!448797))

(assert (=> d!448379 d!448759))

(declare-fun bs!365199 () Bool)

(declare-fun d!448799 () Bool)

(assert (= bs!365199 (and d!448799 d!448547)))

(declare-fun lambda!64611 () Int)

(assert (=> bs!365199 (= lambda!64611 lambda!64572)))

(declare-fun bs!365200 () Bool)

(assert (= bs!365200 (and d!448799 d!448453)))

(assert (=> bs!365200 (= lambda!64611 lambda!64562)))

(declare-fun bs!365201 () Bool)

(assert (= bs!365201 (and d!448799 d!448699)))

(assert (=> bs!365201 (= lambda!64611 lambda!64592)))

(declare-fun bs!365202 () Bool)

(assert (= bs!365202 (and d!448799 d!448659)))

(assert (=> bs!365202 (= lambda!64611 lambda!64585)))

(declare-fun bs!365203 () Bool)

(assert (= bs!365203 (and d!448799 d!448533)))

(assert (=> bs!365203 (= lambda!64611 lambda!64571)))

(declare-fun bs!365204 () Bool)

(assert (= bs!365204 (and d!448799 d!448789)))

(assert (=> bs!365204 (= lambda!64611 lambda!64609)))

(declare-fun bs!365205 () Bool)

(assert (= bs!365205 (and d!448799 d!448477)))

(assert (=> bs!365205 (= lambda!64611 lambda!64563)))

(declare-fun bs!365206 () Bool)

(assert (= bs!365206 (and d!448799 d!448665)))

(assert (=> bs!365206 (= lambda!64611 lambda!64587)))

(declare-fun bs!365207 () Bool)

(assert (= bs!365207 (and d!448799 d!448575)))

(assert (=> bs!365207 (= lambda!64611 lambda!64575)))

(declare-fun bs!365208 () Bool)

(assert (= bs!365208 (and d!448799 d!448671)))

(assert (=> bs!365208 (= lambda!64611 lambda!64588)))

(declare-fun bs!365209 () Bool)

(assert (= bs!365209 (and d!448799 d!448741)))

(assert (=> bs!365209 (= lambda!64611 lambda!64597)))

(declare-fun bs!365210 () Bool)

(assert (= bs!365210 (and d!448799 d!448661)))

(assert (=> bs!365210 (= lambda!64611 lambda!64586)))

(declare-fun bs!365211 () Bool)

(assert (= bs!365211 (and d!448799 d!448561)))

(assert (=> bs!365211 (= lambda!64611 lambda!64574)))

(declare-fun bs!365212 () Bool)

(assert (= bs!365212 (and d!448799 d!448549)))

(assert (=> bs!365212 (= lambda!64611 lambda!64573)))

(declare-fun bs!365213 () Bool)

(assert (= bs!365213 (and d!448799 d!448793)))

(assert (=> bs!365213 (= lambda!64611 lambda!64610)))

(declare-fun bs!365214 () Bool)

(assert (= bs!365214 (and d!448799 d!448721)))

(assert (=> bs!365214 (= lambda!64611 lambda!64593)))

(declare-fun bs!365215 () Bool)

(assert (= bs!365215 (and d!448799 d!448777)))

(assert (=> bs!365215 (= lambda!64611 lambda!64608)))

(declare-fun bs!365216 () Bool)

(assert (= bs!365216 (and d!448799 d!448481)))

(assert (=> bs!365216 (= lambda!64611 lambda!64564)))

(assert (=> d!448799 (= (inv!21347 setElem!9207) (forall!3861 (exprs!1181 setElem!9207) lambda!64611))))

(declare-fun bs!365217 () Bool)

(assert (= bs!365217 d!448799))

(declare-fun m!1780472 () Bool)

(assert (=> bs!365217 m!1780472))

(assert (=> setNonEmpty!9207 d!448799))

(assert (=> b!1514692 d!448587))

(declare-fun d!448801 () Bool)

(assert (=> d!448801 (= (height!813 (c!248132 (_1!8520 lt!526585))) (ite ((_ is Empty!5447) (c!248132 (_1!8520 lt!526585))) 0 (ite ((_ is Leaf!8074) (c!248132 (_1!8520 lt!526585))) 1 (cheight!5658 (c!248132 (_1!8520 lt!526585))))))))

(assert (=> b!1514692 d!448801))

(declare-fun d!448803 () Bool)

(assert (=> d!448803 (= (max!0 (height!813 (c!248132 acc!392)) (height!813 (c!248132 (_1!8520 lt!526585)))) (ite (< (height!813 (c!248132 acc!392)) (height!813 (c!248132 (_1!8520 lt!526585)))) (height!813 (c!248132 (_1!8520 lt!526585))) (height!813 (c!248132 acc!392))))))

(assert (=> b!1514692 d!448803))

(declare-fun d!448805 () Bool)

(assert (=> d!448805 (= (height!813 (c!248132 acc!392)) (ite ((_ is Empty!5447) (c!248132 acc!392)) 0 (ite ((_ is Leaf!8074) (c!248132 acc!392)) 1 (cheight!5658 (c!248132 acc!392)))))))

(assert (=> b!1514692 d!448805))

(declare-fun d!448807 () Bool)

(assert (=> d!448807 (= (height!813 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))) (ite ((_ is Empty!5447) (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))) 0 (ite ((_ is Leaf!8074) (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))) 1 (cheight!5658 (++!4369 (c!248132 acc!392) (c!248132 (_1!8520 lt!526585)))))))))

(assert (=> b!1514692 d!448807))

(declare-fun d!448809 () Bool)

(assert (=> d!448809 (= (inv!21349 (xs!8230 (c!248132 acc!392))) (<= (size!13023 (innerList!5507 (xs!8230 (c!248132 acc!392)))) 2147483647))))

(declare-fun bs!365218 () Bool)

(assert (= bs!365218 d!448809))

(declare-fun m!1780474 () Bool)

(assert (=> bs!365218 m!1780474))

(assert (=> b!1514871 d!448809))

(declare-fun d!448811 () Bool)

(assert (=> d!448811 (= (list!6358 (_1!8520 lt!526684)) (list!6360 (c!248132 (_1!8520 lt!526684))))))

(declare-fun bs!365219 () Bool)

(assert (= bs!365219 d!448811))

(declare-fun m!1780476 () Bool)

(assert (=> bs!365219 m!1780476))

(assert (=> b!1514695 d!448811))

(declare-fun b!1515640 () Bool)

(declare-fun e!969339 () Bool)

(declare-fun lt!526985 () tuple2!14998)

(assert (=> b!1515640 (= e!969339 (= (_2!8529 lt!526985) (list!6357 totalInput!458)))))

(declare-fun b!1515641 () Bool)

(declare-fun e!969338 () tuple2!14998)

(assert (=> b!1515641 (= e!969338 (tuple2!14999 Nil!16102 (list!6357 totalInput!458)))))

(declare-fun d!448813 () Bool)

(assert (=> d!448813 e!969339))

(declare-fun c!248367 () Bool)

(assert (=> d!448813 (= c!248367 (> (size!13023 (_1!8529 lt!526985)) 0))))

(assert (=> d!448813 (= lt!526985 e!969338)))

(declare-fun c!248366 () Bool)

(declare-fun lt!526983 () Option!2935)

(assert (=> d!448813 (= c!248366 ((_ is Some!2934) lt!526983))))

(assert (=> d!448813 (= lt!526983 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 totalInput!458)))))

(assert (=> d!448813 (= (lexList!748 thiss!13241 rules!1640 (list!6357 totalInput!458)) lt!526985)))

(declare-fun b!1515642 () Bool)

(declare-fun e!969337 () Bool)

(assert (=> b!1515642 (= e!969337 (not (isEmpty!9939 (_1!8529 lt!526985))))))

(declare-fun b!1515643 () Bool)

(declare-fun lt!526984 () tuple2!14998)

(assert (=> b!1515643 (= e!969338 (tuple2!14999 (Cons!16102 (_1!8528 (v!22918 lt!526983)) (_1!8529 lt!526984)) (_2!8529 lt!526984)))))

(assert (=> b!1515643 (= lt!526984 (lexList!748 thiss!13241 rules!1640 (_2!8528 (v!22918 lt!526983))))))

(declare-fun b!1515644 () Bool)

(assert (=> b!1515644 (= e!969339 e!969337)))

(declare-fun res!681763 () Bool)

(assert (=> b!1515644 (= res!681763 (< (size!13022 (_2!8529 lt!526985)) (size!13022 (list!6357 totalInput!458))))))

(assert (=> b!1515644 (=> (not res!681763) (not e!969337))))

(assert (= (and d!448813 c!248366) b!1515643))

(assert (= (and d!448813 (not c!248366)) b!1515641))

(assert (= (and d!448813 c!248367) b!1515644))

(assert (= (and d!448813 (not c!248367)) b!1515640))

(assert (= (and b!1515644 res!681763) b!1515642))

(declare-fun m!1780478 () Bool)

(assert (=> d!448813 m!1780478))

(assert (=> d!448813 m!1778767))

(assert (=> d!448813 m!1779407))

(declare-fun m!1780480 () Bool)

(assert (=> b!1515642 m!1780480))

(declare-fun m!1780482 () Bool)

(assert (=> b!1515643 m!1780482))

(declare-fun m!1780484 () Bool)

(assert (=> b!1515644 m!1780484))

(assert (=> b!1515644 m!1778767))

(assert (=> b!1515644 m!1780045))

(assert (=> b!1514695 d!448813))

(assert (=> b!1514695 d!448401))

(declare-fun bs!365220 () Bool)

(declare-fun d!448815 () Bool)

(assert (= bs!365220 (and d!448815 d!448453)))

(declare-fun lambda!64612 () Int)

(assert (=> bs!365220 (= lambda!64612 lambda!64562)))

(declare-fun bs!365221 () Bool)

(assert (= bs!365221 (and d!448815 d!448699)))

(assert (=> bs!365221 (= lambda!64612 lambda!64592)))

(declare-fun bs!365222 () Bool)

(assert (= bs!365222 (and d!448815 d!448659)))

(assert (=> bs!365222 (= lambda!64612 lambda!64585)))

(declare-fun bs!365223 () Bool)

(assert (= bs!365223 (and d!448815 d!448533)))

(assert (=> bs!365223 (= lambda!64612 lambda!64571)))

(declare-fun bs!365224 () Bool)

(assert (= bs!365224 (and d!448815 d!448789)))

(assert (=> bs!365224 (= lambda!64612 lambda!64609)))

(declare-fun bs!365225 () Bool)

(assert (= bs!365225 (and d!448815 d!448477)))

(assert (=> bs!365225 (= lambda!64612 lambda!64563)))

(declare-fun bs!365226 () Bool)

(assert (= bs!365226 (and d!448815 d!448665)))

(assert (=> bs!365226 (= lambda!64612 lambda!64587)))

(declare-fun bs!365227 () Bool)

(assert (= bs!365227 (and d!448815 d!448547)))

(assert (=> bs!365227 (= lambda!64612 lambda!64572)))

(declare-fun bs!365228 () Bool)

(assert (= bs!365228 (and d!448815 d!448799)))

(assert (=> bs!365228 (= lambda!64612 lambda!64611)))

(declare-fun bs!365229 () Bool)

(assert (= bs!365229 (and d!448815 d!448575)))

(assert (=> bs!365229 (= lambda!64612 lambda!64575)))

(declare-fun bs!365230 () Bool)

(assert (= bs!365230 (and d!448815 d!448671)))

(assert (=> bs!365230 (= lambda!64612 lambda!64588)))

(declare-fun bs!365231 () Bool)

(assert (= bs!365231 (and d!448815 d!448741)))

(assert (=> bs!365231 (= lambda!64612 lambda!64597)))

(declare-fun bs!365232 () Bool)

(assert (= bs!365232 (and d!448815 d!448661)))

(assert (=> bs!365232 (= lambda!64612 lambda!64586)))

(declare-fun bs!365233 () Bool)

(assert (= bs!365233 (and d!448815 d!448561)))

(assert (=> bs!365233 (= lambda!64612 lambda!64574)))

(declare-fun bs!365234 () Bool)

(assert (= bs!365234 (and d!448815 d!448549)))

(assert (=> bs!365234 (= lambda!64612 lambda!64573)))

(declare-fun bs!365235 () Bool)

(assert (= bs!365235 (and d!448815 d!448793)))

(assert (=> bs!365235 (= lambda!64612 lambda!64610)))

(declare-fun bs!365236 () Bool)

(assert (= bs!365236 (and d!448815 d!448721)))

(assert (=> bs!365236 (= lambda!64612 lambda!64593)))

(declare-fun bs!365237 () Bool)

(assert (= bs!365237 (and d!448815 d!448777)))

(assert (=> bs!365237 (= lambda!64612 lambda!64608)))

(declare-fun bs!365238 () Bool)

(assert (= bs!365238 (and d!448815 d!448481)))

(assert (=> bs!365238 (= lambda!64612 lambda!64564)))

(assert (=> d!448815 (= (inv!21347 (_1!8518 (_1!8519 (h!21500 mapValue!7052)))) (forall!3861 (exprs!1181 (_1!8518 (_1!8519 (h!21500 mapValue!7052)))) lambda!64612))))

(declare-fun bs!365239 () Bool)

(assert (= bs!365239 d!448815))

(declare-fun m!1780486 () Bool)

(assert (=> bs!365239 m!1780486))

(assert (=> b!1514781 d!448815))

(declare-fun d!448817 () Bool)

(declare-fun lt!526986 () Int)

(assert (=> d!448817 (= lt!526986 (size!13022 (list!6357 (_2!8520 lt!526687))))))

(assert (=> d!448817 (= lt!526986 (size!13027 (c!248131 (_2!8520 lt!526687))))))

(assert (=> d!448817 (= (size!13025 (_2!8520 lt!526687)) lt!526986)))

(declare-fun bs!365240 () Bool)

(assert (= bs!365240 d!448817))

(assert (=> bs!365240 m!1779187))

(assert (=> bs!365240 m!1779187))

(declare-fun m!1780488 () Bool)

(assert (=> bs!365240 m!1780488))

(declare-fun m!1780490 () Bool)

(assert (=> bs!365240 m!1780490))

(assert (=> b!1514703 d!448817))

(declare-fun d!448819 () Bool)

(declare-fun lt!526987 () Int)

(assert (=> d!448819 (= lt!526987 (size!13022 (list!6357 input!1102)))))

(assert (=> d!448819 (= lt!526987 (size!13027 (c!248131 input!1102)))))

(assert (=> d!448819 (= (size!13025 input!1102) lt!526987)))

(declare-fun bs!365241 () Bool)

(assert (= bs!365241 d!448819))

(assert (=> bs!365241 m!1778769))

(assert (=> bs!365241 m!1778769))

(assert (=> bs!365241 m!1779948))

(declare-fun m!1780492 () Bool)

(assert (=> bs!365241 m!1780492))

(assert (=> b!1514703 d!448819))

(declare-fun d!448821 () Bool)

(declare-fun lt!526988 () Int)

(assert (=> d!448821 (= lt!526988 (size!13023 (list!6358 (_1!8520 lt!526677))))))

(assert (=> d!448821 (= lt!526988 (size!13026 (c!248132 (_1!8520 lt!526677))))))

(assert (=> d!448821 (= (size!13024 (_1!8520 lt!526677)) lt!526988)))

(declare-fun bs!365242 () Bool)

(assert (= bs!365242 d!448821))

(assert (=> bs!365242 m!1779109))

(assert (=> bs!365242 m!1779109))

(declare-fun m!1780494 () Bool)

(assert (=> bs!365242 m!1780494))

(declare-fun m!1780496 () Bool)

(assert (=> bs!365242 m!1780496))

(assert (=> d!448397 d!448821))

(declare-fun lt!526991 () Option!2934)

(declare-fun b!1515645 () Bool)

(declare-fun e!969340 () Bool)

(assert (=> b!1515645 (= e!969340 (= (list!6357 (_2!8525 (get!4742 lt!526991))) (_2!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574))))))))))

(declare-fun b!1515646 () Bool)

(declare-fun e!969343 () Bool)

(assert (=> b!1515646 (= e!969343 (= (list!6357 (_2!8525 (get!4742 lt!526991))) (_2!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574))))))))))

(declare-fun b!1515647 () Bool)

(declare-fun e!969344 () Option!2934)

(declare-fun call!100491 () Option!2934)

(assert (=> b!1515647 (= e!969344 call!100491)))

(declare-fun b!1515648 () Bool)

(declare-fun e!969341 () Bool)

(assert (=> b!1515648 (= e!969341 e!969343)))

(declare-fun res!681764 () Bool)

(assert (=> b!1515648 (=> (not res!681764) (not e!969343))))

(assert (=> b!1515648 (= res!681764 (= (_1!8525 (get!4742 lt!526991)) (_1!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574))))))))))

(declare-fun b!1515649 () Bool)

(declare-fun e!969342 () Bool)

(declare-fun e!969345 () Bool)

(assert (=> b!1515649 (= e!969342 e!969345)))

(declare-fun res!681768 () Bool)

(assert (=> b!1515649 (=> res!681768 e!969345)))

(assert (=> b!1515649 (= res!681768 (not (isDefined!2357 lt!526991)))))

(declare-fun b!1515650 () Bool)

(declare-fun res!681769 () Bool)

(assert (=> b!1515650 (=> (not res!681769) (not e!969342))))

(assert (=> b!1515650 (= res!681769 e!969341)))

(declare-fun res!681765 () Bool)

(assert (=> b!1515650 (=> res!681765 e!969341)))

(assert (=> b!1515650 (= res!681765 (not (isDefined!2357 lt!526991)))))

(declare-fun b!1515651 () Bool)

(assert (=> b!1515651 (= e!969345 e!969340)))

(declare-fun res!681767 () Bool)

(assert (=> b!1515651 (=> (not res!681767) (not e!969340))))

(assert (=> b!1515651 (= res!681767 (= (_1!8525 (get!4742 lt!526991)) (_1!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574))))))))))

(declare-fun d!448823 () Bool)

(assert (=> d!448823 e!969342))

(declare-fun res!681766 () Bool)

(assert (=> d!448823 (=> (not res!681766) (not e!969342))))

(assert (=> d!448823 (= res!681766 (= (isDefined!2357 lt!526991) (isDefined!2358 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526574)))))))))

(assert (=> d!448823 (= lt!526991 e!969344)))

(declare-fun c!248368 () Bool)

(assert (=> d!448823 (= c!248368 (and ((_ is Cons!16105) rules!1640) ((_ is Nil!16105) (t!139457 rules!1640))))))

(declare-fun lt!526995 () Unit!25754)

(declare-fun lt!526992 () Unit!25754)

(assert (=> d!448823 (= lt!526995 lt!526992)))

(declare-fun lt!526993 () List!16169)

(declare-fun lt!526994 () List!16169)

(assert (=> d!448823 (isPrefix!1220 lt!526993 lt!526994)))

(assert (=> d!448823 (= lt!526992 (lemmaIsPrefixRefl!850 lt!526993 lt!526994))))

(assert (=> d!448823 (= lt!526994 (list!6357 (_2!8525 (v!22915 lt!526574))))))

(assert (=> d!448823 (= lt!526993 (list!6357 (_2!8525 (v!22915 lt!526574))))))

(assert (=> d!448823 (rulesValidInductive!858 thiss!13241 rules!1640)))

(assert (=> d!448823 (= (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526574))) lt!526991)))

(declare-fun bm!100486 () Bool)

(assert (=> bm!100486 (= call!100491 (maxPrefixOneRuleZipperSequence!280 thiss!13241 (h!21506 rules!1640) (_2!8525 (v!22915 lt!526574))))))

(declare-fun b!1515652 () Bool)

(declare-fun lt!526990 () Option!2934)

(declare-fun lt!526989 () Option!2934)

(assert (=> b!1515652 (= e!969344 (ite (and ((_ is None!2933) lt!526990) ((_ is None!2933) lt!526989)) None!2933 (ite ((_ is None!2933) lt!526989) lt!526990 (ite ((_ is None!2933) lt!526990) lt!526989 (ite (>= (size!13019 (_1!8525 (v!22915 lt!526990))) (size!13019 (_1!8525 (v!22915 lt!526989)))) lt!526990 lt!526989)))))))

(assert (=> b!1515652 (= lt!526990 call!100491)))

(assert (=> b!1515652 (= lt!526989 (maxPrefixZipperSequence!592 thiss!13241 (t!139457 rules!1640) (_2!8525 (v!22915 lt!526574))))))

(assert (= (and d!448823 c!248368) b!1515647))

(assert (= (and d!448823 (not c!248368)) b!1515652))

(assert (= (or b!1515647 b!1515652) bm!100486))

(assert (= (and d!448823 res!681766) b!1515650))

(assert (= (and b!1515650 (not res!681765)) b!1515648))

(assert (= (and b!1515648 res!681764) b!1515646))

(assert (= (and b!1515650 res!681769) b!1515649))

(assert (= (and b!1515649 (not res!681768)) b!1515651))

(assert (= (and b!1515651 res!681767) b!1515645))

(declare-fun m!1780498 () Bool)

(assert (=> b!1515648 m!1780498))

(assert (=> b!1515648 m!1779107))

(assert (=> b!1515648 m!1779107))

(declare-fun m!1780500 () Bool)

(assert (=> b!1515648 m!1780500))

(assert (=> b!1515648 m!1780500))

(declare-fun m!1780502 () Bool)

(assert (=> b!1515648 m!1780502))

(declare-fun m!1780504 () Bool)

(assert (=> b!1515652 m!1780504))

(declare-fun m!1780506 () Bool)

(assert (=> bm!100486 m!1780506))

(assert (=> b!1515645 m!1780498))

(assert (=> b!1515645 m!1779107))

(assert (=> b!1515645 m!1779107))

(assert (=> b!1515645 m!1779902))

(assert (=> b!1515645 m!1779902))

(declare-fun m!1780508 () Bool)

(assert (=> b!1515645 m!1780508))

(declare-fun m!1780510 () Bool)

(assert (=> b!1515645 m!1780510))

(assert (=> b!1515646 m!1780498))

(assert (=> b!1515646 m!1780500))

(assert (=> b!1515646 m!1780502))

(assert (=> b!1515646 m!1779107))

(assert (=> b!1515646 m!1779107))

(assert (=> b!1515646 m!1780500))

(assert (=> b!1515646 m!1780510))

(declare-fun m!1780512 () Bool)

(assert (=> b!1515649 m!1780512))

(assert (=> d!448823 m!1780500))

(declare-fun m!1780514 () Bool)

(assert (=> d!448823 m!1780514))

(declare-fun m!1780516 () Bool)

(assert (=> d!448823 m!1780516))

(assert (=> d!448823 m!1779107))

(assert (=> d!448823 m!1778907))

(assert (=> d!448823 m!1779107))

(assert (=> d!448823 m!1780500))

(declare-fun m!1780518 () Bool)

(assert (=> d!448823 m!1780518))

(assert (=> d!448823 m!1780512))

(assert (=> b!1515650 m!1780512))

(assert (=> b!1515651 m!1780498))

(assert (=> b!1515651 m!1779107))

(assert (=> b!1515651 m!1779107))

(assert (=> b!1515651 m!1779902))

(assert (=> b!1515651 m!1779902))

(assert (=> b!1515651 m!1780508))

(assert (=> d!448397 d!448823))

(assert (=> d!448425 d!448727))

(declare-fun b!1515654 () Bool)

(declare-fun e!969346 () List!16169)

(declare-fun e!969347 () List!16169)

(assert (=> b!1515654 (= e!969346 e!969347)))

(declare-fun c!248370 () Bool)

(assert (=> b!1515654 (= c!248370 ((_ is Leaf!8073) (c!248131 totalInput!458)))))

(declare-fun b!1515656 () Bool)

(assert (=> b!1515656 (= e!969347 (++!4368 (list!6359 (left!13374 (c!248131 totalInput!458))) (list!6359 (right!13704 (c!248131 totalInput!458)))))))

(declare-fun d!448825 () Bool)

(declare-fun c!248369 () Bool)

(assert (=> d!448825 (= c!248369 ((_ is Empty!5446) (c!248131 totalInput!458)))))

(assert (=> d!448825 (= (list!6359 (c!248131 totalInput!458)) e!969346)))

(declare-fun b!1515653 () Bool)

(assert (=> b!1515653 (= e!969346 Nil!16101)))

(declare-fun b!1515655 () Bool)

(assert (=> b!1515655 (= e!969347 (list!6361 (xs!8229 (c!248131 totalInput!458))))))

(assert (= (and d!448825 c!248369) b!1515653))

(assert (= (and d!448825 (not c!248369)) b!1515654))

(assert (= (and b!1515654 c!248370) b!1515655))

(assert (= (and b!1515654 (not c!248370)) b!1515656))

(declare-fun m!1780520 () Bool)

(assert (=> b!1515656 m!1780520))

(declare-fun m!1780522 () Bool)

(assert (=> b!1515656 m!1780522))

(assert (=> b!1515656 m!1780520))

(assert (=> b!1515656 m!1780522))

(declare-fun m!1780524 () Bool)

(assert (=> b!1515656 m!1780524))

(assert (=> b!1515655 m!1779681))

(assert (=> d!448401 d!448825))

(declare-fun d!448827 () Bool)

(declare-fun lt!526996 () Int)

(assert (=> d!448827 (>= lt!526996 0)))

(declare-fun e!969348 () Int)

(assert (=> d!448827 (= lt!526996 e!969348)))

(declare-fun c!248371 () Bool)

(assert (=> d!448827 (= c!248371 ((_ is Nil!16101) lt!526653))))

(assert (=> d!448827 (= (size!13022 lt!526653) lt!526996)))

(declare-fun b!1515657 () Bool)

(assert (=> b!1515657 (= e!969348 0)))

(declare-fun b!1515658 () Bool)

(assert (=> b!1515658 (= e!969348 (+ 1 (size!13022 (t!139453 lt!526653))))))

(assert (= (and d!448827 c!248371) b!1515657))

(assert (= (and d!448827 (not c!248371)) b!1515658))

(declare-fun m!1780526 () Bool)

(assert (=> b!1515658 m!1780526))

(assert (=> b!1514626 d!448827))

(assert (=> b!1514626 d!448543))

(declare-fun d!448829 () Bool)

(declare-fun lt!526997 () Int)

(assert (=> d!448829 (>= lt!526997 0)))

(declare-fun e!969349 () Int)

(assert (=> d!448829 (= lt!526997 e!969349)))

(declare-fun c!248372 () Bool)

(assert (=> d!448829 (= c!248372 ((_ is Nil!16101) (++!4368 lt!526561 lt!526580)))))

(assert (=> d!448829 (= (size!13022 (++!4368 lt!526561 lt!526580)) lt!526997)))

(declare-fun b!1515659 () Bool)

(assert (=> b!1515659 (= e!969349 0)))

(declare-fun b!1515660 () Bool)

(assert (=> b!1515660 (= e!969349 (+ 1 (size!13022 (t!139453 (++!4368 lt!526561 lt!526580)))))))

(assert (= (and d!448829 c!248372) b!1515659))

(assert (= (and d!448829 (not c!248372)) b!1515660))

(declare-fun m!1780528 () Bool)

(assert (=> b!1515660 m!1780528))

(assert (=> b!1514626 d!448829))

(declare-fun bs!365243 () Bool)

(declare-fun d!448831 () Bool)

(assert (= bs!365243 (and d!448831 d!448453)))

(declare-fun lambda!64613 () Int)

(assert (=> bs!365243 (= lambda!64613 lambda!64562)))

(declare-fun bs!365244 () Bool)

(assert (= bs!365244 (and d!448831 d!448699)))

(assert (=> bs!365244 (= lambda!64613 lambda!64592)))

(declare-fun bs!365245 () Bool)

(assert (= bs!365245 (and d!448831 d!448659)))

(assert (=> bs!365245 (= lambda!64613 lambda!64585)))

(declare-fun bs!365246 () Bool)

(assert (= bs!365246 (and d!448831 d!448533)))

(assert (=> bs!365246 (= lambda!64613 lambda!64571)))

(declare-fun bs!365247 () Bool)

(assert (= bs!365247 (and d!448831 d!448815)))

(assert (=> bs!365247 (= lambda!64613 lambda!64612)))

(declare-fun bs!365248 () Bool)

(assert (= bs!365248 (and d!448831 d!448789)))

(assert (=> bs!365248 (= lambda!64613 lambda!64609)))

(declare-fun bs!365249 () Bool)

(assert (= bs!365249 (and d!448831 d!448477)))

(assert (=> bs!365249 (= lambda!64613 lambda!64563)))

(declare-fun bs!365250 () Bool)

(assert (= bs!365250 (and d!448831 d!448665)))

(assert (=> bs!365250 (= lambda!64613 lambda!64587)))

(declare-fun bs!365251 () Bool)

(assert (= bs!365251 (and d!448831 d!448547)))

(assert (=> bs!365251 (= lambda!64613 lambda!64572)))

(declare-fun bs!365252 () Bool)

(assert (= bs!365252 (and d!448831 d!448799)))

(assert (=> bs!365252 (= lambda!64613 lambda!64611)))

(declare-fun bs!365253 () Bool)

(assert (= bs!365253 (and d!448831 d!448575)))

(assert (=> bs!365253 (= lambda!64613 lambda!64575)))

(declare-fun bs!365254 () Bool)

(assert (= bs!365254 (and d!448831 d!448671)))

(assert (=> bs!365254 (= lambda!64613 lambda!64588)))

(declare-fun bs!365255 () Bool)

(assert (= bs!365255 (and d!448831 d!448741)))

(assert (=> bs!365255 (= lambda!64613 lambda!64597)))

(declare-fun bs!365256 () Bool)

(assert (= bs!365256 (and d!448831 d!448661)))

(assert (=> bs!365256 (= lambda!64613 lambda!64586)))

(declare-fun bs!365257 () Bool)

(assert (= bs!365257 (and d!448831 d!448561)))

(assert (=> bs!365257 (= lambda!64613 lambda!64574)))

(declare-fun bs!365258 () Bool)

(assert (= bs!365258 (and d!448831 d!448549)))

(assert (=> bs!365258 (= lambda!64613 lambda!64573)))

(declare-fun bs!365259 () Bool)

(assert (= bs!365259 (and d!448831 d!448793)))

(assert (=> bs!365259 (= lambda!64613 lambda!64610)))

(declare-fun bs!365260 () Bool)

(assert (= bs!365260 (and d!448831 d!448721)))

(assert (=> bs!365260 (= lambda!64613 lambda!64593)))

(declare-fun bs!365261 () Bool)

(assert (= bs!365261 (and d!448831 d!448777)))

(assert (=> bs!365261 (= lambda!64613 lambda!64608)))

(declare-fun bs!365262 () Bool)

(assert (= bs!365262 (and d!448831 d!448481)))

(assert (=> bs!365262 (= lambda!64613 lambda!64564)))

(assert (=> d!448831 (= (inv!21347 (_2!8521 (_1!8522 (h!21504 mapValue!7050)))) (forall!3861 (exprs!1181 (_2!8521 (_1!8522 (h!21504 mapValue!7050)))) lambda!64613))))

(declare-fun bs!365263 () Bool)

(assert (= bs!365263 d!448831))

(declare-fun m!1780530 () Bool)

(assert (=> bs!365263 m!1780530))

(assert (=> b!1514827 d!448831))

(declare-fun d!448833 () Bool)

(declare-fun lt!526998 () Bool)

(assert (=> d!448833 (= lt!526998 (isEmpty!9939 (list!6358 (_1!8520 lt!526690))))))

(assert (=> d!448833 (= lt!526998 (isEmpty!9944 (c!248132 (_1!8520 lt!526690))))))

(assert (=> d!448833 (= (isEmpty!9941 (_1!8520 lt!526690)) lt!526998)))

(declare-fun bs!365264 () Bool)

(assert (= bs!365264 d!448833))

(assert (=> bs!365264 m!1779217))

(assert (=> bs!365264 m!1779217))

(declare-fun m!1780532 () Bool)

(assert (=> bs!365264 m!1780532))

(declare-fun m!1780534 () Bool)

(assert (=> bs!365264 m!1780534))

(assert (=> b!1514711 d!448833))

(declare-fun d!448835 () Bool)

(declare-fun lt!526999 () Bool)

(assert (=> d!448835 (= lt!526999 (isEmpty!9939 (list!6358 (_1!8520 lt!526649))))))

(assert (=> d!448835 (= lt!526999 (isEmpty!9944 (c!248132 (_1!8520 lt!526649))))))

(assert (=> d!448835 (= (isEmpty!9941 (_1!8520 lt!526649)) lt!526999)))

(declare-fun bs!365265 () Bool)

(assert (= bs!365265 d!448835))

(assert (=> bs!365265 m!1778971))

(assert (=> bs!365265 m!1778971))

(declare-fun m!1780536 () Bool)

(assert (=> bs!365265 m!1780536))

(declare-fun m!1780538 () Bool)

(assert (=> bs!365265 m!1780538))

(assert (=> b!1514613 d!448835))

(assert (=> b!1514699 d!448719))

(assert (=> b!1514699 d!448813))

(assert (=> b!1514699 d!448401))

(declare-fun d!448837 () Bool)

(declare-fun c!248373 () Bool)

(assert (=> d!448837 (= c!248373 ((_ is Empty!5447) (c!248132 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(declare-fun e!969350 () List!16170)

(assert (=> d!448837 (= (list!6360 (c!248132 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) e!969350)))

(declare-fun b!1515662 () Bool)

(declare-fun e!969351 () List!16170)

(assert (=> b!1515662 (= e!969350 e!969351)))

(declare-fun c!248374 () Bool)

(assert (=> b!1515662 (= c!248374 ((_ is Leaf!8074) (c!248132 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))

(declare-fun b!1515664 () Bool)

(assert (=> b!1515664 (= e!969351 (++!4367 (list!6360 (left!13375 (c!248132 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) (list!6360 (right!13705 (c!248132 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))))))

(declare-fun b!1515661 () Bool)

(assert (=> b!1515661 (= e!969350 Nil!16102)))

(declare-fun b!1515663 () Bool)

(assert (=> b!1515663 (= e!969351 (list!6362 (xs!8230 (c!248132 (append!504 acc!392 (_1!8525 (v!22915 (_1!8526 lt!526577))))))))))

(assert (= (and d!448837 c!248373) b!1515661))

(assert (= (and d!448837 (not c!248373)) b!1515662))

(assert (= (and b!1515662 c!248374) b!1515663))

(assert (= (and b!1515662 (not c!248374)) b!1515664))

(declare-fun m!1780540 () Bool)

(assert (=> b!1515664 m!1780540))

(declare-fun m!1780542 () Bool)

(assert (=> b!1515664 m!1780542))

(assert (=> b!1515664 m!1780540))

(assert (=> b!1515664 m!1780542))

(declare-fun m!1780544 () Bool)

(assert (=> b!1515664 m!1780544))

(declare-fun m!1780546 () Bool)

(assert (=> b!1515663 m!1780546))

(assert (=> d!448357 d!448837))

(declare-fun d!448839 () Bool)

(assert (=> d!448839 (= (list!6357 (_2!8520 lt!526687)) (list!6359 (c!248131 (_2!8520 lt!526687))))))

(declare-fun bs!365266 () Bool)

(assert (= bs!365266 d!448839))

(declare-fun m!1780548 () Bool)

(assert (=> bs!365266 m!1780548))

(assert (=> b!1514707 d!448839))

(assert (=> b!1514707 d!448403))

(declare-fun d!448841 () Bool)

(declare-fun c!248375 () Bool)

(assert (=> d!448841 (= c!248375 ((_ is Empty!5447) (c!248132 (_1!8520 lt!526566))))))

(declare-fun e!969352 () List!16170)

(assert (=> d!448841 (= (list!6360 (c!248132 (_1!8520 lt!526566))) e!969352)))

(declare-fun b!1515666 () Bool)

(declare-fun e!969353 () List!16170)

(assert (=> b!1515666 (= e!969352 e!969353)))

(declare-fun c!248376 () Bool)

(assert (=> b!1515666 (= c!248376 ((_ is Leaf!8074) (c!248132 (_1!8520 lt!526566))))))

(declare-fun b!1515668 () Bool)

(assert (=> b!1515668 (= e!969353 (++!4367 (list!6360 (left!13375 (c!248132 (_1!8520 lt!526566)))) (list!6360 (right!13705 (c!248132 (_1!8520 lt!526566))))))))

(declare-fun b!1515665 () Bool)

(assert (=> b!1515665 (= e!969352 Nil!16102)))

(declare-fun b!1515667 () Bool)

(assert (=> b!1515667 (= e!969353 (list!6362 (xs!8230 (c!248132 (_1!8520 lt!526566)))))))

(assert (= (and d!448841 c!248375) b!1515665))

(assert (= (and d!448841 (not c!248375)) b!1515666))

(assert (= (and b!1515666 c!248376) b!1515667))

(assert (= (and b!1515666 (not c!248376)) b!1515668))

(declare-fun m!1780550 () Bool)

(assert (=> b!1515668 m!1780550))

(declare-fun m!1780552 () Bool)

(assert (=> b!1515668 m!1780552))

(assert (=> b!1515668 m!1780550))

(assert (=> b!1515668 m!1780552))

(declare-fun m!1780554 () Bool)

(assert (=> b!1515668 m!1780554))

(declare-fun m!1780556 () Bool)

(assert (=> b!1515667 m!1780556))

(assert (=> d!448353 d!448841))

(assert (=> b!1514499 d!448621))

(assert (=> b!1514477 d!448335))

(declare-fun d!448843 () Bool)

(assert (=> d!448843 (= (inv!21348 (xs!8229 (c!248131 input!1102))) (<= (size!13022 (innerList!5506 (xs!8229 (c!248131 input!1102)))) 2147483647))))

(declare-fun bs!365267 () Bool)

(assert (= bs!365267 d!448843))

(declare-fun m!1780558 () Bool)

(assert (=> bs!365267 m!1780558))

(assert (=> b!1514804 d!448843))

(declare-fun b!1515670 () Bool)

(declare-fun e!969355 () List!16170)

(assert (=> b!1515670 (= e!969355 (Cons!16102 (h!21503 (t!139454 (++!4367 lt!526584 lt!526582))) (++!4367 (t!139454 (t!139454 (++!4367 lt!526584 lt!526582))) lt!526572)))))

(declare-fun e!969354 () Bool)

(declare-fun b!1515672 () Bool)

(declare-fun lt!527000 () List!16170)

(assert (=> b!1515672 (= e!969354 (or (not (= lt!526572 Nil!16102)) (= lt!527000 (t!139454 (++!4367 lt!526584 lt!526582)))))))

(declare-fun b!1515669 () Bool)

(assert (=> b!1515669 (= e!969355 lt!526572)))

(declare-fun b!1515671 () Bool)

(declare-fun res!681771 () Bool)

(assert (=> b!1515671 (=> (not res!681771) (not e!969354))))

(assert (=> b!1515671 (= res!681771 (= (size!13023 lt!527000) (+ (size!13023 (t!139454 (++!4367 lt!526584 lt!526582))) (size!13023 lt!526572))))))

(declare-fun d!448845 () Bool)

(assert (=> d!448845 e!969354))

(declare-fun res!681770 () Bool)

(assert (=> d!448845 (=> (not res!681770) (not e!969354))))

(assert (=> d!448845 (= res!681770 (= (content!2317 lt!527000) ((_ map or) (content!2317 (t!139454 (++!4367 lt!526584 lt!526582))) (content!2317 lt!526572))))))

(assert (=> d!448845 (= lt!527000 e!969355)))

(declare-fun c!248377 () Bool)

(assert (=> d!448845 (= c!248377 ((_ is Nil!16102) (t!139454 (++!4367 lt!526584 lt!526582))))))

(assert (=> d!448845 (= (++!4367 (t!139454 (++!4367 lt!526584 lt!526582)) lt!526572) lt!527000)))

(assert (= (and d!448845 c!248377) b!1515669))

(assert (= (and d!448845 (not c!248377)) b!1515670))

(assert (= (and d!448845 res!681770) b!1515671))

(assert (= (and b!1515671 res!681771) b!1515672))

(declare-fun m!1780560 () Bool)

(assert (=> b!1515670 m!1780560))

(declare-fun m!1780562 () Bool)

(assert (=> b!1515671 m!1780562))

(assert (=> b!1515671 m!1780242))

(assert (=> b!1515671 m!1779023))

(declare-fun m!1780564 () Bool)

(assert (=> d!448845 m!1780564))

(assert (=> d!448845 m!1780470))

(assert (=> d!448845 m!1779029))

(assert (=> b!1514649 d!448845))

(declare-fun bs!365268 () Bool)

(declare-fun d!448847 () Bool)

(assert (= bs!365268 (and d!448847 d!448831)))

(declare-fun lambda!64614 () Int)

(assert (=> bs!365268 (= lambda!64614 lambda!64613)))

(declare-fun bs!365269 () Bool)

(assert (= bs!365269 (and d!448847 d!448453)))

(assert (=> bs!365269 (= lambda!64614 lambda!64562)))

(declare-fun bs!365270 () Bool)

(assert (= bs!365270 (and d!448847 d!448699)))

(assert (=> bs!365270 (= lambda!64614 lambda!64592)))

(declare-fun bs!365271 () Bool)

(assert (= bs!365271 (and d!448847 d!448659)))

(assert (=> bs!365271 (= lambda!64614 lambda!64585)))

(declare-fun bs!365272 () Bool)

(assert (= bs!365272 (and d!448847 d!448533)))

(assert (=> bs!365272 (= lambda!64614 lambda!64571)))

(declare-fun bs!365273 () Bool)

(assert (= bs!365273 (and d!448847 d!448815)))

(assert (=> bs!365273 (= lambda!64614 lambda!64612)))

(declare-fun bs!365274 () Bool)

(assert (= bs!365274 (and d!448847 d!448789)))

(assert (=> bs!365274 (= lambda!64614 lambda!64609)))

(declare-fun bs!365275 () Bool)

(assert (= bs!365275 (and d!448847 d!448477)))

(assert (=> bs!365275 (= lambda!64614 lambda!64563)))

(declare-fun bs!365276 () Bool)

(assert (= bs!365276 (and d!448847 d!448665)))

(assert (=> bs!365276 (= lambda!64614 lambda!64587)))

(declare-fun bs!365277 () Bool)

(assert (= bs!365277 (and d!448847 d!448547)))

(assert (=> bs!365277 (= lambda!64614 lambda!64572)))

(declare-fun bs!365278 () Bool)

(assert (= bs!365278 (and d!448847 d!448799)))

(assert (=> bs!365278 (= lambda!64614 lambda!64611)))

(declare-fun bs!365279 () Bool)

(assert (= bs!365279 (and d!448847 d!448575)))

(assert (=> bs!365279 (= lambda!64614 lambda!64575)))

(declare-fun bs!365280 () Bool)

(assert (= bs!365280 (and d!448847 d!448671)))

(assert (=> bs!365280 (= lambda!64614 lambda!64588)))

(declare-fun bs!365281 () Bool)

(assert (= bs!365281 (and d!448847 d!448741)))

(assert (=> bs!365281 (= lambda!64614 lambda!64597)))

(declare-fun bs!365282 () Bool)

(assert (= bs!365282 (and d!448847 d!448661)))

(assert (=> bs!365282 (= lambda!64614 lambda!64586)))

(declare-fun bs!365283 () Bool)

(assert (= bs!365283 (and d!448847 d!448561)))

(assert (=> bs!365283 (= lambda!64614 lambda!64574)))

(declare-fun bs!365284 () Bool)

(assert (= bs!365284 (and d!448847 d!448549)))

(assert (=> bs!365284 (= lambda!64614 lambda!64573)))

(declare-fun bs!365285 () Bool)

(assert (= bs!365285 (and d!448847 d!448793)))

(assert (=> bs!365285 (= lambda!64614 lambda!64610)))

(declare-fun bs!365286 () Bool)

(assert (= bs!365286 (and d!448847 d!448721)))

(assert (=> bs!365286 (= lambda!64614 lambda!64593)))

(declare-fun bs!365287 () Bool)

(assert (= bs!365287 (and d!448847 d!448777)))

(assert (=> bs!365287 (= lambda!64614 lambda!64608)))

(declare-fun bs!365288 () Bool)

(assert (= bs!365288 (and d!448847 d!448481)))

(assert (=> bs!365288 (= lambda!64614 lambda!64564)))

(assert (=> d!448847 (= (inv!21347 setElem!9194) (forall!3861 (exprs!1181 setElem!9194) lambda!64614))))

(declare-fun bs!365289 () Bool)

(assert (= bs!365289 d!448847))

(declare-fun m!1780566 () Bool)

(assert (=> bs!365289 m!1780566))

(assert (=> setNonEmpty!9195 d!448847))

(declare-fun d!448849 () Bool)

(declare-fun res!681772 () Bool)

(declare-fun e!969356 () Bool)

(assert (=> d!448849 (=> (not res!681772) (not e!969356))))

(assert (=> d!448849 (= res!681772 (= (csize!11122 (c!248131 input!1102)) (+ (size!13027 (left!13374 (c!248131 input!1102))) (size!13027 (right!13704 (c!248131 input!1102))))))))

(assert (=> d!448849 (= (inv!21343 (c!248131 input!1102)) e!969356)))

(declare-fun b!1515673 () Bool)

(declare-fun res!681773 () Bool)

(assert (=> b!1515673 (=> (not res!681773) (not e!969356))))

(assert (=> b!1515673 (= res!681773 (and (not (= (left!13374 (c!248131 input!1102)) Empty!5446)) (not (= (right!13704 (c!248131 input!1102)) Empty!5446))))))

(declare-fun b!1515674 () Bool)

(declare-fun res!681774 () Bool)

(assert (=> b!1515674 (=> (not res!681774) (not e!969356))))

(assert (=> b!1515674 (= res!681774 (= (cheight!5657 (c!248131 input!1102)) (+ (max!0 (height!814 (left!13374 (c!248131 input!1102))) (height!814 (right!13704 (c!248131 input!1102)))) 1)))))

(declare-fun b!1515675 () Bool)

(assert (=> b!1515675 (= e!969356 (<= 0 (cheight!5657 (c!248131 input!1102))))))

(assert (= (and d!448849 res!681772) b!1515673))

(assert (= (and b!1515673 res!681773) b!1515674))

(assert (= (and b!1515674 res!681774) b!1515675))

(declare-fun m!1780568 () Bool)

(assert (=> d!448849 m!1780568))

(declare-fun m!1780570 () Bool)

(assert (=> d!448849 m!1780570))

(assert (=> b!1515674 m!1780246))

(assert (=> b!1515674 m!1780248))

(assert (=> b!1515674 m!1780246))

(assert (=> b!1515674 m!1780248))

(declare-fun m!1780572 () Bool)

(assert (=> b!1515674 m!1780572))

(assert (=> b!1514506 d!448849))

(declare-fun d!448851 () Bool)

(declare-fun c!248378 () Bool)

(assert (=> d!448851 (= c!248378 ((_ is Nil!16101) lt!526615))))

(declare-fun e!969357 () (InoxSet C!8504))

(assert (=> d!448851 (= (content!2316 lt!526615) e!969357)))

(declare-fun b!1515676 () Bool)

(assert (=> b!1515676 (= e!969357 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515677 () Bool)

(assert (=> b!1515677 (= e!969357 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526615) true) (content!2316 (t!139453 lt!526615))))))

(assert (= (and d!448851 c!248378) b!1515676))

(assert (= (and d!448851 (not c!248378)) b!1515677))

(declare-fun m!1780574 () Bool)

(assert (=> b!1515677 m!1780574))

(declare-fun m!1780576 () Bool)

(assert (=> b!1515677 m!1780576))

(assert (=> d!448341 d!448851))

(assert (=> d!448341 d!448595))

(assert (=> d!448341 d!448491))

(declare-fun bs!365290 () Bool)

(declare-fun d!448853 () Bool)

(assert (= bs!365290 (and d!448853 d!448831)))

(declare-fun lambda!64615 () Int)

(assert (=> bs!365290 (= lambda!64615 lambda!64613)))

(declare-fun bs!365291 () Bool)

(assert (= bs!365291 (and d!448853 d!448453)))

(assert (=> bs!365291 (= lambda!64615 lambda!64562)))

(declare-fun bs!365292 () Bool)

(assert (= bs!365292 (and d!448853 d!448699)))

(assert (=> bs!365292 (= lambda!64615 lambda!64592)))

(declare-fun bs!365293 () Bool)

(assert (= bs!365293 (and d!448853 d!448659)))

(assert (=> bs!365293 (= lambda!64615 lambda!64585)))

(declare-fun bs!365294 () Bool)

(assert (= bs!365294 (and d!448853 d!448533)))

(assert (=> bs!365294 (= lambda!64615 lambda!64571)))

(declare-fun bs!365295 () Bool)

(assert (= bs!365295 (and d!448853 d!448815)))

(assert (=> bs!365295 (= lambda!64615 lambda!64612)))

(declare-fun bs!365296 () Bool)

(assert (= bs!365296 (and d!448853 d!448789)))

(assert (=> bs!365296 (= lambda!64615 lambda!64609)))

(declare-fun bs!365297 () Bool)

(assert (= bs!365297 (and d!448853 d!448477)))

(assert (=> bs!365297 (= lambda!64615 lambda!64563)))

(declare-fun bs!365298 () Bool)

(assert (= bs!365298 (and d!448853 d!448665)))

(assert (=> bs!365298 (= lambda!64615 lambda!64587)))

(declare-fun bs!365299 () Bool)

(assert (= bs!365299 (and d!448853 d!448547)))

(assert (=> bs!365299 (= lambda!64615 lambda!64572)))

(declare-fun bs!365300 () Bool)

(assert (= bs!365300 (and d!448853 d!448799)))

(assert (=> bs!365300 (= lambda!64615 lambda!64611)))

(declare-fun bs!365301 () Bool)

(assert (= bs!365301 (and d!448853 d!448671)))

(assert (=> bs!365301 (= lambda!64615 lambda!64588)))

(declare-fun bs!365302 () Bool)

(assert (= bs!365302 (and d!448853 d!448575)))

(assert (=> bs!365302 (= lambda!64615 lambda!64575)))

(declare-fun bs!365303 () Bool)

(assert (= bs!365303 (and d!448853 d!448847)))

(assert (=> bs!365303 (= lambda!64615 lambda!64614)))

(declare-fun bs!365304 () Bool)

(assert (= bs!365304 (and d!448853 d!448741)))

(assert (=> bs!365304 (= lambda!64615 lambda!64597)))

(declare-fun bs!365305 () Bool)

(assert (= bs!365305 (and d!448853 d!448661)))

(assert (=> bs!365305 (= lambda!64615 lambda!64586)))

(declare-fun bs!365306 () Bool)

(assert (= bs!365306 (and d!448853 d!448561)))

(assert (=> bs!365306 (= lambda!64615 lambda!64574)))

(declare-fun bs!365307 () Bool)

(assert (= bs!365307 (and d!448853 d!448549)))

(assert (=> bs!365307 (= lambda!64615 lambda!64573)))

(declare-fun bs!365308 () Bool)

(assert (= bs!365308 (and d!448853 d!448793)))

(assert (=> bs!365308 (= lambda!64615 lambda!64610)))

(declare-fun bs!365309 () Bool)

(assert (= bs!365309 (and d!448853 d!448721)))

(assert (=> bs!365309 (= lambda!64615 lambda!64593)))

(declare-fun bs!365310 () Bool)

(assert (= bs!365310 (and d!448853 d!448777)))

(assert (=> bs!365310 (= lambda!64615 lambda!64608)))

(declare-fun bs!365311 () Bool)

(assert (= bs!365311 (and d!448853 d!448481)))

(assert (=> bs!365311 (= lambda!64615 lambda!64564)))

(assert (=> d!448853 (= (inv!21347 setElem!9206) (forall!3861 (exprs!1181 setElem!9206) lambda!64615))))

(declare-fun bs!365312 () Bool)

(assert (= bs!365312 d!448853))

(declare-fun m!1780578 () Bool)

(assert (=> bs!365312 m!1780578))

(assert (=> setNonEmpty!9206 d!448853))

(declare-fun bs!365313 () Bool)

(declare-fun d!448855 () Bool)

(assert (= bs!365313 (and d!448855 d!448831)))

(declare-fun lambda!64616 () Int)

(assert (=> bs!365313 (= lambda!64616 lambda!64613)))

(declare-fun bs!365314 () Bool)

(assert (= bs!365314 (and d!448855 d!448453)))

(assert (=> bs!365314 (= lambda!64616 lambda!64562)))

(declare-fun bs!365315 () Bool)

(assert (= bs!365315 (and d!448855 d!448699)))

(assert (=> bs!365315 (= lambda!64616 lambda!64592)))

(declare-fun bs!365316 () Bool)

(assert (= bs!365316 (and d!448855 d!448533)))

(assert (=> bs!365316 (= lambda!64616 lambda!64571)))

(declare-fun bs!365317 () Bool)

(assert (= bs!365317 (and d!448855 d!448815)))

(assert (=> bs!365317 (= lambda!64616 lambda!64612)))

(declare-fun bs!365318 () Bool)

(assert (= bs!365318 (and d!448855 d!448789)))

(assert (=> bs!365318 (= lambda!64616 lambda!64609)))

(declare-fun bs!365319 () Bool)

(assert (= bs!365319 (and d!448855 d!448477)))

(assert (=> bs!365319 (= lambda!64616 lambda!64563)))

(declare-fun bs!365320 () Bool)

(assert (= bs!365320 (and d!448855 d!448665)))

(assert (=> bs!365320 (= lambda!64616 lambda!64587)))

(declare-fun bs!365321 () Bool)

(assert (= bs!365321 (and d!448855 d!448547)))

(assert (=> bs!365321 (= lambda!64616 lambda!64572)))

(declare-fun bs!365322 () Bool)

(assert (= bs!365322 (and d!448855 d!448799)))

(assert (=> bs!365322 (= lambda!64616 lambda!64611)))

(declare-fun bs!365323 () Bool)

(assert (= bs!365323 (and d!448855 d!448671)))

(assert (=> bs!365323 (= lambda!64616 lambda!64588)))

(declare-fun bs!365324 () Bool)

(assert (= bs!365324 (and d!448855 d!448575)))

(assert (=> bs!365324 (= lambda!64616 lambda!64575)))

(declare-fun bs!365325 () Bool)

(assert (= bs!365325 (and d!448855 d!448847)))

(assert (=> bs!365325 (= lambda!64616 lambda!64614)))

(declare-fun bs!365326 () Bool)

(assert (= bs!365326 (and d!448855 d!448659)))

(assert (=> bs!365326 (= lambda!64616 lambda!64585)))

(declare-fun bs!365327 () Bool)

(assert (= bs!365327 (and d!448855 d!448853)))

(assert (=> bs!365327 (= lambda!64616 lambda!64615)))

(declare-fun bs!365328 () Bool)

(assert (= bs!365328 (and d!448855 d!448741)))

(assert (=> bs!365328 (= lambda!64616 lambda!64597)))

(declare-fun bs!365329 () Bool)

(assert (= bs!365329 (and d!448855 d!448661)))

(assert (=> bs!365329 (= lambda!64616 lambda!64586)))

(declare-fun bs!365330 () Bool)

(assert (= bs!365330 (and d!448855 d!448561)))

(assert (=> bs!365330 (= lambda!64616 lambda!64574)))

(declare-fun bs!365331 () Bool)

(assert (= bs!365331 (and d!448855 d!448549)))

(assert (=> bs!365331 (= lambda!64616 lambda!64573)))

(declare-fun bs!365332 () Bool)

(assert (= bs!365332 (and d!448855 d!448793)))

(assert (=> bs!365332 (= lambda!64616 lambda!64610)))

(declare-fun bs!365333 () Bool)

(assert (= bs!365333 (and d!448855 d!448721)))

(assert (=> bs!365333 (= lambda!64616 lambda!64593)))

(declare-fun bs!365334 () Bool)

(assert (= bs!365334 (and d!448855 d!448777)))

(assert (=> bs!365334 (= lambda!64616 lambda!64608)))

(declare-fun bs!365335 () Bool)

(assert (= bs!365335 (and d!448855 d!448481)))

(assert (=> bs!365335 (= lambda!64616 lambda!64564)))

(assert (=> d!448855 (= (inv!21347 (_2!8521 (_1!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))))) (forall!3861 (exprs!1181 (_2!8521 (_1!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))))) lambda!64616))))

(declare-fun bs!365336 () Bool)

(assert (= bs!365336 d!448855))

(declare-fun m!1780580 () Bool)

(assert (=> bs!365336 m!1780580))

(assert (=> b!1514880 d!448855))

(assert (=> b!1514544 d!448579))

(assert (=> b!1514544 d!448443))

(assert (=> b!1514544 d!448439))

(assert (=> b!1514544 d!448403))

(declare-fun bs!365337 () Bool)

(declare-fun d!448857 () Bool)

(assert (= bs!365337 (and d!448857 d!448831)))

(declare-fun lambda!64617 () Int)

(assert (=> bs!365337 (= lambda!64617 lambda!64613)))

(declare-fun bs!365338 () Bool)

(assert (= bs!365338 (and d!448857 d!448453)))

(assert (=> bs!365338 (= lambda!64617 lambda!64562)))

(declare-fun bs!365339 () Bool)

(assert (= bs!365339 (and d!448857 d!448699)))

(assert (=> bs!365339 (= lambda!64617 lambda!64592)))

(declare-fun bs!365340 () Bool)

(assert (= bs!365340 (and d!448857 d!448533)))

(assert (=> bs!365340 (= lambda!64617 lambda!64571)))

(declare-fun bs!365341 () Bool)

(assert (= bs!365341 (and d!448857 d!448815)))

(assert (=> bs!365341 (= lambda!64617 lambda!64612)))

(declare-fun bs!365342 () Bool)

(assert (= bs!365342 (and d!448857 d!448789)))

(assert (=> bs!365342 (= lambda!64617 lambda!64609)))

(declare-fun bs!365343 () Bool)

(assert (= bs!365343 (and d!448857 d!448665)))

(assert (=> bs!365343 (= lambda!64617 lambda!64587)))

(declare-fun bs!365344 () Bool)

(assert (= bs!365344 (and d!448857 d!448547)))

(assert (=> bs!365344 (= lambda!64617 lambda!64572)))

(declare-fun bs!365345 () Bool)

(assert (= bs!365345 (and d!448857 d!448799)))

(assert (=> bs!365345 (= lambda!64617 lambda!64611)))

(declare-fun bs!365346 () Bool)

(assert (= bs!365346 (and d!448857 d!448671)))

(assert (=> bs!365346 (= lambda!64617 lambda!64588)))

(declare-fun bs!365347 () Bool)

(assert (= bs!365347 (and d!448857 d!448575)))

(assert (=> bs!365347 (= lambda!64617 lambda!64575)))

(declare-fun bs!365348 () Bool)

(assert (= bs!365348 (and d!448857 d!448847)))

(assert (=> bs!365348 (= lambda!64617 lambda!64614)))

(declare-fun bs!365349 () Bool)

(assert (= bs!365349 (and d!448857 d!448659)))

(assert (=> bs!365349 (= lambda!64617 lambda!64585)))

(declare-fun bs!365350 () Bool)

(assert (= bs!365350 (and d!448857 d!448853)))

(assert (=> bs!365350 (= lambda!64617 lambda!64615)))

(declare-fun bs!365351 () Bool)

(assert (= bs!365351 (and d!448857 d!448477)))

(assert (=> bs!365351 (= lambda!64617 lambda!64563)))

(declare-fun bs!365352 () Bool)

(assert (= bs!365352 (and d!448857 d!448855)))

(assert (=> bs!365352 (= lambda!64617 lambda!64616)))

(declare-fun bs!365353 () Bool)

(assert (= bs!365353 (and d!448857 d!448741)))

(assert (=> bs!365353 (= lambda!64617 lambda!64597)))

(declare-fun bs!365354 () Bool)

(assert (= bs!365354 (and d!448857 d!448661)))

(assert (=> bs!365354 (= lambda!64617 lambda!64586)))

(declare-fun bs!365355 () Bool)

(assert (= bs!365355 (and d!448857 d!448561)))

(assert (=> bs!365355 (= lambda!64617 lambda!64574)))

(declare-fun bs!365356 () Bool)

(assert (= bs!365356 (and d!448857 d!448549)))

(assert (=> bs!365356 (= lambda!64617 lambda!64573)))

(declare-fun bs!365357 () Bool)

(assert (= bs!365357 (and d!448857 d!448793)))

(assert (=> bs!365357 (= lambda!64617 lambda!64610)))

(declare-fun bs!365358 () Bool)

(assert (= bs!365358 (and d!448857 d!448721)))

(assert (=> bs!365358 (= lambda!64617 lambda!64593)))

(declare-fun bs!365359 () Bool)

(assert (= bs!365359 (and d!448857 d!448777)))

(assert (=> bs!365359 (= lambda!64617 lambda!64608)))

(declare-fun bs!365360 () Bool)

(assert (= bs!365360 (and d!448857 d!448481)))

(assert (=> bs!365360 (= lambda!64617 lambda!64564)))

(assert (=> d!448857 (= (inv!21347 (_2!8521 (_1!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))))) (forall!3861 (exprs!1181 (_2!8521 (_1!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))))) lambda!64617))))

(declare-fun bs!365361 () Bool)

(assert (= bs!365361 d!448857))

(declare-fun m!1780582 () Bool)

(assert (=> bs!365361 m!1780582))

(assert (=> b!1514877 d!448857))

(declare-fun d!448859 () Bool)

(declare-fun e!969358 () Bool)

(assert (=> d!448859 e!969358))

(declare-fun res!681775 () Bool)

(assert (=> d!448859 (=> (not res!681775) (not e!969358))))

(assert (=> d!448859 (= res!681775 (isBalanced!1612 (prepend!470 (c!248132 (_1!8520 lt!526678)) (_1!8525 (v!22915 lt!526679)))))))

(declare-fun lt!527001 () BalanceConc!10836)

(assert (=> d!448859 (= lt!527001 (BalanceConc!10837 (prepend!470 (c!248132 (_1!8520 lt!526678)) (_1!8525 (v!22915 lt!526679)))))))

(assert (=> d!448859 (= (prepend!469 (_1!8520 lt!526678) (_1!8525 (v!22915 lt!526679))) lt!527001)))

(declare-fun b!1515678 () Bool)

(assert (=> b!1515678 (= e!969358 (= (list!6358 lt!527001) (Cons!16102 (_1!8525 (v!22915 lt!526679)) (list!6358 (_1!8520 lt!526678)))))))

(assert (= (and d!448859 res!681775) b!1515678))

(declare-fun m!1780584 () Bool)

(assert (=> d!448859 m!1780584))

(assert (=> d!448859 m!1780584))

(declare-fun m!1780586 () Bool)

(assert (=> d!448859 m!1780586))

(declare-fun m!1780588 () Bool)

(assert (=> b!1515678 m!1780588))

(declare-fun m!1780590 () Bool)

(assert (=> b!1515678 m!1780590))

(assert (=> b!1514665 d!448859))

(declare-fun b!1515679 () Bool)

(declare-fun e!969362 () Bool)

(declare-fun lt!527002 () tuple2!14988)

(assert (=> b!1515679 (= e!969362 (not (isEmpty!9941 (_1!8520 lt!527002))))))

(declare-fun d!448861 () Bool)

(declare-fun e!969359 () Bool)

(assert (=> d!448861 e!969359))

(declare-fun res!681776 () Bool)

(assert (=> d!448861 (=> (not res!681776) (not e!969359))))

(declare-fun e!969361 () Bool)

(assert (=> d!448861 (= res!681776 e!969361)))

(declare-fun c!248380 () Bool)

(assert (=> d!448861 (= c!248380 (> (size!13024 (_1!8520 lt!527002)) 0))))

(declare-fun e!969360 () tuple2!14988)

(assert (=> d!448861 (= lt!527002 e!969360)))

(declare-fun c!248379 () Bool)

(declare-fun lt!527004 () Option!2934)

(assert (=> d!448861 (= c!248379 ((_ is Some!2933) lt!527004))))

(assert (=> d!448861 (= lt!527004 (maxPrefixZipperSequence!592 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526679))))))

(assert (=> d!448861 (= (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!526679))) lt!527002)))

(declare-fun b!1515680 () Bool)

(declare-fun res!681777 () Bool)

(assert (=> b!1515680 (=> (not res!681777) (not e!969359))))

(assert (=> b!1515680 (= res!681777 (= (list!6358 (_1!8520 lt!527002)) (_1!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526679)))))))))

(declare-fun b!1515681 () Bool)

(assert (=> b!1515681 (= e!969361 e!969362)))

(declare-fun res!681778 () Bool)

(assert (=> b!1515681 (= res!681778 (< (size!13025 (_2!8520 lt!527002)) (size!13025 (_2!8525 (v!22915 lt!526679)))))))

(assert (=> b!1515681 (=> (not res!681778) (not e!969362))))

(declare-fun b!1515682 () Bool)

(declare-fun lt!527003 () tuple2!14988)

(assert (=> b!1515682 (= e!969360 (tuple2!14989 (prepend!469 (_1!8520 lt!527003) (_1!8525 (v!22915 lt!527004))) (_2!8520 lt!527003)))))

(assert (=> b!1515682 (= lt!527003 (lexRec!334 thiss!13241 rules!1640 (_2!8525 (v!22915 lt!527004))))))

(declare-fun b!1515683 () Bool)

(assert (=> b!1515683 (= e!969360 (tuple2!14989 (BalanceConc!10837 Empty!5447) (_2!8525 (v!22915 lt!526679))))))

(declare-fun b!1515684 () Bool)

(assert (=> b!1515684 (= e!969359 (= (list!6357 (_2!8520 lt!527002)) (_2!8529 (lexList!748 thiss!13241 rules!1640 (list!6357 (_2!8525 (v!22915 lt!526679)))))))))

(declare-fun b!1515685 () Bool)

(assert (=> b!1515685 (= e!969361 (= (list!6357 (_2!8520 lt!527002)) (list!6357 (_2!8525 (v!22915 lt!526679)))))))

(assert (= (and d!448861 c!248379) b!1515682))

(assert (= (and d!448861 (not c!248379)) b!1515683))

(assert (= (and d!448861 c!248380) b!1515681))

(assert (= (and d!448861 (not c!248380)) b!1515685))

(assert (= (and b!1515681 res!681778) b!1515679))

(assert (= (and d!448861 res!681776) b!1515680))

(assert (= (and b!1515680 res!681777) b!1515684))

(declare-fun m!1780592 () Bool)

(assert (=> b!1515685 m!1780592))

(declare-fun m!1780594 () Bool)

(assert (=> b!1515685 m!1780594))

(declare-fun m!1780596 () Bool)

(assert (=> b!1515680 m!1780596))

(assert (=> b!1515680 m!1780594))

(assert (=> b!1515680 m!1780594))

(declare-fun m!1780598 () Bool)

(assert (=> b!1515680 m!1780598))

(declare-fun m!1780600 () Bool)

(assert (=> b!1515682 m!1780600))

(declare-fun m!1780602 () Bool)

(assert (=> b!1515682 m!1780602))

(declare-fun m!1780604 () Bool)

(assert (=> b!1515679 m!1780604))

(assert (=> b!1515684 m!1780592))

(assert (=> b!1515684 m!1780594))

(assert (=> b!1515684 m!1780594))

(assert (=> b!1515684 m!1780598))

(declare-fun m!1780606 () Bool)

(assert (=> b!1515681 m!1780606))

(declare-fun m!1780608 () Bool)

(assert (=> b!1515681 m!1780608))

(declare-fun m!1780610 () Bool)

(assert (=> d!448861 m!1780610))

(declare-fun m!1780612 () Bool)

(assert (=> d!448861 m!1780612))

(assert (=> b!1514665 d!448861))

(declare-fun d!448863 () Bool)

(declare-fun lt!527005 () Int)

(assert (=> d!448863 (= lt!527005 (size!13023 (list!6358 (_1!8520 lt!526690))))))

(assert (=> d!448863 (= lt!527005 (size!13026 (c!248132 (_1!8520 lt!526690))))))

(assert (=> d!448863 (= (size!13024 (_1!8520 lt!526690)) lt!527005)))

(declare-fun bs!365362 () Bool)

(assert (= bs!365362 d!448863))

(assert (=> bs!365362 m!1779217))

(assert (=> bs!365362 m!1779217))

(declare-fun m!1780614 () Bool)

(assert (=> bs!365362 m!1780614))

(declare-fun m!1780616 () Bool)

(assert (=> bs!365362 m!1780616))

(assert (=> d!448431 d!448863))

(declare-fun e!969363 () Bool)

(declare-fun lt!527008 () Option!2934)

(declare-fun b!1515686 () Bool)

(assert (=> b!1515686 (= e!969363 (= (list!6357 (_2!8525 (get!4742 lt!527008))) (_2!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 treated!70))))))))

(declare-fun e!969366 () Bool)

(declare-fun b!1515687 () Bool)

(assert (=> b!1515687 (= e!969366 (= (list!6357 (_2!8525 (get!4742 lt!527008))) (_2!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 treated!70))))))))

(declare-fun b!1515688 () Bool)

(declare-fun e!969367 () Option!2934)

(declare-fun call!100492 () Option!2934)

(assert (=> b!1515688 (= e!969367 call!100492)))

(declare-fun b!1515689 () Bool)

(declare-fun e!969364 () Bool)

(assert (=> b!1515689 (= e!969364 e!969366)))

(declare-fun res!681779 () Bool)

(assert (=> b!1515689 (=> (not res!681779) (not e!969366))))

(assert (=> b!1515689 (= res!681779 (= (_1!8525 (get!4742 lt!527008)) (_1!8528 (get!4743 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 treated!70))))))))

(declare-fun b!1515690 () Bool)

(declare-fun e!969365 () Bool)

(declare-fun e!969368 () Bool)

(assert (=> b!1515690 (= e!969365 e!969368)))

(declare-fun res!681783 () Bool)

(assert (=> b!1515690 (=> res!681783 e!969368)))

(assert (=> b!1515690 (= res!681783 (not (isDefined!2357 lt!527008)))))

(declare-fun b!1515691 () Bool)

(declare-fun res!681784 () Bool)

(assert (=> b!1515691 (=> (not res!681784) (not e!969365))))

(assert (=> b!1515691 (= res!681784 e!969364)))

(declare-fun res!681780 () Bool)

(assert (=> b!1515691 (=> res!681780 e!969364)))

(assert (=> b!1515691 (= res!681780 (not (isDefined!2357 lt!527008)))))

(declare-fun b!1515692 () Bool)

(assert (=> b!1515692 (= e!969368 e!969363)))

(declare-fun res!681782 () Bool)

(assert (=> b!1515692 (=> (not res!681782) (not e!969363))))

(assert (=> b!1515692 (= res!681782 (= (_1!8525 (get!4742 lt!527008)) (_1!8528 (get!4743 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 treated!70))))))))

(declare-fun d!448865 () Bool)

(assert (=> d!448865 e!969365))

(declare-fun res!681781 () Bool)

(assert (=> d!448865 (=> (not res!681781) (not e!969365))))

(assert (=> d!448865 (= res!681781 (= (isDefined!2357 lt!527008) (isDefined!2358 (maxPrefixZipper!261 thiss!13241 rules!1640 (list!6357 treated!70)))))))

(assert (=> d!448865 (= lt!527008 e!969367)))

(declare-fun c!248381 () Bool)

(assert (=> d!448865 (= c!248381 (and ((_ is Cons!16105) rules!1640) ((_ is Nil!16105) (t!139457 rules!1640))))))

(declare-fun lt!527012 () Unit!25754)

(declare-fun lt!527009 () Unit!25754)

(assert (=> d!448865 (= lt!527012 lt!527009)))

(declare-fun lt!527010 () List!16169)

(declare-fun lt!527011 () List!16169)

(assert (=> d!448865 (isPrefix!1220 lt!527010 lt!527011)))

(assert (=> d!448865 (= lt!527009 (lemmaIsPrefixRefl!850 lt!527010 lt!527011))))

(assert (=> d!448865 (= lt!527011 (list!6357 treated!70))))

(assert (=> d!448865 (= lt!527010 (list!6357 treated!70))))

(assert (=> d!448865 (rulesValidInductive!858 thiss!13241 rules!1640)))

(assert (=> d!448865 (= (maxPrefixZipperSequence!592 thiss!13241 rules!1640 treated!70) lt!527008)))

(declare-fun bm!100487 () Bool)

(assert (=> bm!100487 (= call!100492 (maxPrefixOneRuleZipperSequence!280 thiss!13241 (h!21506 rules!1640) treated!70))))

(declare-fun b!1515693 () Bool)

(declare-fun lt!527007 () Option!2934)

(declare-fun lt!527006 () Option!2934)

(assert (=> b!1515693 (= e!969367 (ite (and ((_ is None!2933) lt!527007) ((_ is None!2933) lt!527006)) None!2933 (ite ((_ is None!2933) lt!527006) lt!527007 (ite ((_ is None!2933) lt!527007) lt!527006 (ite (>= (size!13019 (_1!8525 (v!22915 lt!527007))) (size!13019 (_1!8525 (v!22915 lt!527006)))) lt!527007 lt!527006)))))))

(assert (=> b!1515693 (= lt!527007 call!100492)))

(assert (=> b!1515693 (= lt!527006 (maxPrefixZipperSequence!592 thiss!13241 (t!139457 rules!1640) treated!70))))

(assert (= (and d!448865 c!248381) b!1515688))

(assert (= (and d!448865 (not c!248381)) b!1515693))

(assert (= (or b!1515688 b!1515693) bm!100487))

(assert (= (and d!448865 res!681781) b!1515691))

(assert (= (and b!1515691 (not res!681780)) b!1515689))

(assert (= (and b!1515689 res!681779) b!1515687))

(assert (= (and b!1515691 res!681784) b!1515690))

(assert (= (and b!1515690 (not res!681783)) b!1515692))

(assert (= (and b!1515692 res!681782) b!1515686))

(declare-fun m!1780618 () Bool)

(assert (=> b!1515689 m!1780618))

(assert (=> b!1515689 m!1778771))

(assert (=> b!1515689 m!1778771))

(declare-fun m!1780620 () Bool)

(assert (=> b!1515689 m!1780620))

(assert (=> b!1515689 m!1780620))

(declare-fun m!1780622 () Bool)

(assert (=> b!1515689 m!1780622))

(declare-fun m!1780624 () Bool)

(assert (=> b!1515693 m!1780624))

(declare-fun m!1780626 () Bool)

(assert (=> bm!100487 m!1780626))

(assert (=> b!1515686 m!1780618))

(assert (=> b!1515686 m!1778771))

(assert (=> b!1515686 m!1778771))

(assert (=> b!1515686 m!1780109))

(assert (=> b!1515686 m!1780109))

(declare-fun m!1780628 () Bool)

(assert (=> b!1515686 m!1780628))

(declare-fun m!1780630 () Bool)

(assert (=> b!1515686 m!1780630))

(assert (=> b!1515687 m!1780618))

(assert (=> b!1515687 m!1780620))

(assert (=> b!1515687 m!1780622))

(assert (=> b!1515687 m!1778771))

(assert (=> b!1515687 m!1778771))

(assert (=> b!1515687 m!1780620))

(assert (=> b!1515687 m!1780630))

(declare-fun m!1780632 () Bool)

(assert (=> b!1515690 m!1780632))

(assert (=> d!448865 m!1780620))

(declare-fun m!1780634 () Bool)

(assert (=> d!448865 m!1780634))

(declare-fun m!1780636 () Bool)

(assert (=> d!448865 m!1780636))

(assert (=> d!448865 m!1778771))

(assert (=> d!448865 m!1778907))

(assert (=> d!448865 m!1778771))

(assert (=> d!448865 m!1780620))

(declare-fun m!1780638 () Bool)

(assert (=> d!448865 m!1780638))

(assert (=> d!448865 m!1780632))

(assert (=> b!1515691 m!1780632))

(assert (=> b!1515692 m!1780618))

(assert (=> b!1515692 m!1778771))

(assert (=> b!1515692 m!1778771))

(assert (=> b!1515692 m!1780109))

(assert (=> b!1515692 m!1780109))

(assert (=> b!1515692 m!1780628))

(assert (=> d!448431 d!448865))

(assert (=> b!1514597 d!448445))

(assert (=> b!1514597 d!448641))

(assert (=> b!1514597 d!448639))

(assert (=> b!1514597 d!448403))

(declare-fun d!448867 () Bool)

(declare-fun lt!527013 () Int)

(assert (=> d!448867 (>= lt!527013 0)))

(declare-fun e!969369 () Int)

(assert (=> d!448867 (= lt!527013 e!969369)))

(declare-fun c!248382 () Bool)

(assert (=> d!448867 (= c!248382 ((_ is Nil!16102) lt!526662))))

(assert (=> d!448867 (= (size!13023 lt!526662) lt!527013)))

(declare-fun b!1515694 () Bool)

(assert (=> b!1515694 (= e!969369 0)))

(declare-fun b!1515695 () Bool)

(assert (=> b!1515695 (= e!969369 (+ 1 (size!13023 (t!139454 lt!526662))))))

(assert (= (and d!448867 c!248382) b!1515694))

(assert (= (and d!448867 (not c!248382)) b!1515695))

(declare-fun m!1780640 () Bool)

(assert (=> b!1515695 m!1780640))

(assert (=> b!1514643 d!448867))

(assert (=> b!1514643 d!448529))

(assert (=> b!1514643 d!448647))

(declare-fun bs!365363 () Bool)

(declare-fun d!448869 () Bool)

(assert (= bs!365363 (and d!448869 d!448831)))

(declare-fun lambda!64618 () Int)

(assert (=> bs!365363 (= lambda!64618 lambda!64613)))

(declare-fun bs!365364 () Bool)

(assert (= bs!365364 (and d!448869 d!448453)))

(assert (=> bs!365364 (= lambda!64618 lambda!64562)))

(declare-fun bs!365365 () Bool)

(assert (= bs!365365 (and d!448869 d!448699)))

(assert (=> bs!365365 (= lambda!64618 lambda!64592)))

(declare-fun bs!365366 () Bool)

(assert (= bs!365366 (and d!448869 d!448533)))

(assert (=> bs!365366 (= lambda!64618 lambda!64571)))

(declare-fun bs!365367 () Bool)

(assert (= bs!365367 (and d!448869 d!448815)))

(assert (=> bs!365367 (= lambda!64618 lambda!64612)))

(declare-fun bs!365368 () Bool)

(assert (= bs!365368 (and d!448869 d!448789)))

(assert (=> bs!365368 (= lambda!64618 lambda!64609)))

(declare-fun bs!365369 () Bool)

(assert (= bs!365369 (and d!448869 d!448547)))

(assert (=> bs!365369 (= lambda!64618 lambda!64572)))

(declare-fun bs!365370 () Bool)

(assert (= bs!365370 (and d!448869 d!448799)))

(assert (=> bs!365370 (= lambda!64618 lambda!64611)))

(declare-fun bs!365371 () Bool)

(assert (= bs!365371 (and d!448869 d!448671)))

(assert (=> bs!365371 (= lambda!64618 lambda!64588)))

(declare-fun bs!365372 () Bool)

(assert (= bs!365372 (and d!448869 d!448575)))

(assert (=> bs!365372 (= lambda!64618 lambda!64575)))

(declare-fun bs!365373 () Bool)

(assert (= bs!365373 (and d!448869 d!448847)))

(assert (=> bs!365373 (= lambda!64618 lambda!64614)))

(declare-fun bs!365374 () Bool)

(assert (= bs!365374 (and d!448869 d!448659)))

(assert (=> bs!365374 (= lambda!64618 lambda!64585)))

(declare-fun bs!365375 () Bool)

(assert (= bs!365375 (and d!448869 d!448853)))

(assert (=> bs!365375 (= lambda!64618 lambda!64615)))

(declare-fun bs!365376 () Bool)

(assert (= bs!365376 (and d!448869 d!448477)))

(assert (=> bs!365376 (= lambda!64618 lambda!64563)))

(declare-fun bs!365377 () Bool)

(assert (= bs!365377 (and d!448869 d!448855)))

(assert (=> bs!365377 (= lambda!64618 lambda!64616)))

(declare-fun bs!365378 () Bool)

(assert (= bs!365378 (and d!448869 d!448665)))

(assert (=> bs!365378 (= lambda!64618 lambda!64587)))

(declare-fun bs!365379 () Bool)

(assert (= bs!365379 (and d!448869 d!448857)))

(assert (=> bs!365379 (= lambda!64618 lambda!64617)))

(declare-fun bs!365380 () Bool)

(assert (= bs!365380 (and d!448869 d!448741)))

(assert (=> bs!365380 (= lambda!64618 lambda!64597)))

(declare-fun bs!365381 () Bool)

(assert (= bs!365381 (and d!448869 d!448661)))

(assert (=> bs!365381 (= lambda!64618 lambda!64586)))

(declare-fun bs!365382 () Bool)

(assert (= bs!365382 (and d!448869 d!448561)))

(assert (=> bs!365382 (= lambda!64618 lambda!64574)))

(declare-fun bs!365383 () Bool)

(assert (= bs!365383 (and d!448869 d!448549)))

(assert (=> bs!365383 (= lambda!64618 lambda!64573)))

(declare-fun bs!365384 () Bool)

(assert (= bs!365384 (and d!448869 d!448793)))

(assert (=> bs!365384 (= lambda!64618 lambda!64610)))

(declare-fun bs!365385 () Bool)

(assert (= bs!365385 (and d!448869 d!448721)))

(assert (=> bs!365385 (= lambda!64618 lambda!64593)))

(declare-fun bs!365386 () Bool)

(assert (= bs!365386 (and d!448869 d!448777)))

(assert (=> bs!365386 (= lambda!64618 lambda!64608)))

(declare-fun bs!365387 () Bool)

(assert (= bs!365387 (and d!448869 d!448481)))

(assert (=> bs!365387 (= lambda!64618 lambda!64564)))

(assert (=> d!448869 (= (inv!21347 setElem!9215) (forall!3861 (exprs!1181 setElem!9215) lambda!64618))))

(declare-fun bs!365388 () Bool)

(assert (= bs!365388 d!448869))

(declare-fun m!1780642 () Bool)

(assert (=> bs!365388 m!1780642))

(assert (=> setNonEmpty!9215 d!448869))

(assert (=> b!1514448 d!448393))

(assert (=> b!1514706 d!448839))

(declare-fun b!1515696 () Bool)

(declare-fun e!969372 () Bool)

(declare-fun lt!527016 () tuple2!14998)

(assert (=> b!1515696 (= e!969372 (= (_2!8529 lt!527016) (list!6357 input!1102)))))

(declare-fun b!1515697 () Bool)

(declare-fun e!969371 () tuple2!14998)

(assert (=> b!1515697 (= e!969371 (tuple2!14999 Nil!16102 (list!6357 input!1102)))))

(declare-fun d!448871 () Bool)

(assert (=> d!448871 e!969372))

(declare-fun c!248384 () Bool)

(assert (=> d!448871 (= c!248384 (> (size!13023 (_1!8529 lt!527016)) 0))))

(assert (=> d!448871 (= lt!527016 e!969371)))

(declare-fun c!248383 () Bool)

(declare-fun lt!527014 () Option!2935)

(assert (=> d!448871 (= c!248383 ((_ is Some!2934) lt!527014))))

(assert (=> d!448871 (= lt!527014 (maxPrefix!1210 thiss!13241 rules!1640 (list!6357 input!1102)))))

(assert (=> d!448871 (= (lexList!748 thiss!13241 rules!1640 (list!6357 input!1102)) lt!527016)))

(declare-fun b!1515698 () Bool)

(declare-fun e!969370 () Bool)

(assert (=> b!1515698 (= e!969370 (not (isEmpty!9939 (_1!8529 lt!527016))))))

(declare-fun b!1515699 () Bool)

(declare-fun lt!527015 () tuple2!14998)

(assert (=> b!1515699 (= e!969371 (tuple2!14999 (Cons!16102 (_1!8528 (v!22918 lt!527014)) (_1!8529 lt!527015)) (_2!8529 lt!527015)))))

(assert (=> b!1515699 (= lt!527015 (lexList!748 thiss!13241 rules!1640 (_2!8528 (v!22918 lt!527014))))))

(declare-fun b!1515700 () Bool)

(assert (=> b!1515700 (= e!969372 e!969370)))

(declare-fun res!681785 () Bool)

(assert (=> b!1515700 (= res!681785 (< (size!13022 (_2!8529 lt!527016)) (size!13022 (list!6357 input!1102))))))

(assert (=> b!1515700 (=> (not res!681785) (not e!969370))))

(assert (= (and d!448871 c!248383) b!1515699))

(assert (= (and d!448871 (not c!248383)) b!1515697))

(assert (= (and d!448871 c!248384) b!1515700))

(assert (= (and d!448871 (not c!248384)) b!1515696))

(assert (= (and b!1515700 res!681785) b!1515698))

(declare-fun m!1780644 () Bool)

(assert (=> d!448871 m!1780644))

(assert (=> d!448871 m!1778769))

(assert (=> d!448871 m!1778883))

(declare-fun m!1780646 () Bool)

(assert (=> b!1515698 m!1780646))

(declare-fun m!1780648 () Bool)

(assert (=> b!1515699 m!1780648))

(declare-fun m!1780650 () Bool)

(assert (=> b!1515700 m!1780650))

(assert (=> b!1515700 m!1778769))

(assert (=> b!1515700 m!1779948))

(assert (=> b!1514706 d!448871))

(assert (=> b!1514706 d!448403))

(assert (=> b!1514536 d!448525))

(declare-fun d!448873 () Bool)

(declare-fun c!248385 () Bool)

(assert (=> d!448873 (= c!248385 ((_ is Empty!5447) (c!248132 (++!4366 acc!392 (_1!8520 lt!526585)))))))

(declare-fun e!969373 () List!16170)

(assert (=> d!448873 (= (list!6360 (c!248132 (++!4366 acc!392 (_1!8520 lt!526585)))) e!969373)))

(declare-fun b!1515702 () Bool)

(declare-fun e!969374 () List!16170)

(assert (=> b!1515702 (= e!969373 e!969374)))

(declare-fun c!248386 () Bool)

(assert (=> b!1515702 (= c!248386 ((_ is Leaf!8074) (c!248132 (++!4366 acc!392 (_1!8520 lt!526585)))))))

(declare-fun b!1515704 () Bool)

(assert (=> b!1515704 (= e!969374 (++!4367 (list!6360 (left!13375 (c!248132 (++!4366 acc!392 (_1!8520 lt!526585))))) (list!6360 (right!13705 (c!248132 (++!4366 acc!392 (_1!8520 lt!526585)))))))))

(declare-fun b!1515701 () Bool)

(assert (=> b!1515701 (= e!969373 Nil!16102)))

(declare-fun b!1515703 () Bool)

(assert (=> b!1515703 (= e!969374 (list!6362 (xs!8230 (c!248132 (++!4366 acc!392 (_1!8520 lt!526585))))))))

(assert (= (and d!448873 c!248385) b!1515701))

(assert (= (and d!448873 (not c!248385)) b!1515702))

(assert (= (and b!1515702 c!248386) b!1515703))

(assert (= (and b!1515702 (not c!248386)) b!1515704))

(declare-fun m!1780652 () Bool)

(assert (=> b!1515704 m!1780652))

(declare-fun m!1780654 () Bool)

(assert (=> b!1515704 m!1780654))

(assert (=> b!1515704 m!1780652))

(assert (=> b!1515704 m!1780654))

(declare-fun m!1780656 () Bool)

(assert (=> b!1515704 m!1780656))

(declare-fun m!1780658 () Bool)

(assert (=> b!1515703 m!1780658))

(assert (=> d!448421 d!448873))

(assert (=> b!1514691 d!448587))

(assert (=> b!1514691 d!448801))

(assert (=> b!1514691 d!448803))

(assert (=> b!1514691 d!448805))

(assert (=> b!1514691 d!448807))

(declare-fun bs!365389 () Bool)

(declare-fun d!448875 () Bool)

(assert (= bs!365389 (and d!448875 d!448831)))

(declare-fun lambda!64619 () Int)

(assert (=> bs!365389 (= lambda!64619 lambda!64613)))

(declare-fun bs!365390 () Bool)

(assert (= bs!365390 (and d!448875 d!448453)))

(assert (=> bs!365390 (= lambda!64619 lambda!64562)))

(declare-fun bs!365391 () Bool)

(assert (= bs!365391 (and d!448875 d!448869)))

(assert (=> bs!365391 (= lambda!64619 lambda!64618)))

(declare-fun bs!365392 () Bool)

(assert (= bs!365392 (and d!448875 d!448699)))

(assert (=> bs!365392 (= lambda!64619 lambda!64592)))

(declare-fun bs!365393 () Bool)

(assert (= bs!365393 (and d!448875 d!448533)))

(assert (=> bs!365393 (= lambda!64619 lambda!64571)))

(declare-fun bs!365394 () Bool)

(assert (= bs!365394 (and d!448875 d!448815)))

(assert (=> bs!365394 (= lambda!64619 lambda!64612)))

(declare-fun bs!365395 () Bool)

(assert (= bs!365395 (and d!448875 d!448789)))

(assert (=> bs!365395 (= lambda!64619 lambda!64609)))

(declare-fun bs!365396 () Bool)

(assert (= bs!365396 (and d!448875 d!448547)))

(assert (=> bs!365396 (= lambda!64619 lambda!64572)))

(declare-fun bs!365397 () Bool)

(assert (= bs!365397 (and d!448875 d!448799)))

(assert (=> bs!365397 (= lambda!64619 lambda!64611)))

(declare-fun bs!365398 () Bool)

(assert (= bs!365398 (and d!448875 d!448671)))

(assert (=> bs!365398 (= lambda!64619 lambda!64588)))

(declare-fun bs!365399 () Bool)

(assert (= bs!365399 (and d!448875 d!448575)))

(assert (=> bs!365399 (= lambda!64619 lambda!64575)))

(declare-fun bs!365400 () Bool)

(assert (= bs!365400 (and d!448875 d!448847)))

(assert (=> bs!365400 (= lambda!64619 lambda!64614)))

(declare-fun bs!365401 () Bool)

(assert (= bs!365401 (and d!448875 d!448659)))

(assert (=> bs!365401 (= lambda!64619 lambda!64585)))

(declare-fun bs!365402 () Bool)

(assert (= bs!365402 (and d!448875 d!448853)))

(assert (=> bs!365402 (= lambda!64619 lambda!64615)))

(declare-fun bs!365403 () Bool)

(assert (= bs!365403 (and d!448875 d!448477)))

(assert (=> bs!365403 (= lambda!64619 lambda!64563)))

(declare-fun bs!365404 () Bool)

(assert (= bs!365404 (and d!448875 d!448855)))

(assert (=> bs!365404 (= lambda!64619 lambda!64616)))

(declare-fun bs!365405 () Bool)

(assert (= bs!365405 (and d!448875 d!448665)))

(assert (=> bs!365405 (= lambda!64619 lambda!64587)))

(declare-fun bs!365406 () Bool)

(assert (= bs!365406 (and d!448875 d!448857)))

(assert (=> bs!365406 (= lambda!64619 lambda!64617)))

(declare-fun bs!365407 () Bool)

(assert (= bs!365407 (and d!448875 d!448741)))

(assert (=> bs!365407 (= lambda!64619 lambda!64597)))

(declare-fun bs!365408 () Bool)

(assert (= bs!365408 (and d!448875 d!448661)))

(assert (=> bs!365408 (= lambda!64619 lambda!64586)))

(declare-fun bs!365409 () Bool)

(assert (= bs!365409 (and d!448875 d!448561)))

(assert (=> bs!365409 (= lambda!64619 lambda!64574)))

(declare-fun bs!365410 () Bool)

(assert (= bs!365410 (and d!448875 d!448549)))

(assert (=> bs!365410 (= lambda!64619 lambda!64573)))

(declare-fun bs!365411 () Bool)

(assert (= bs!365411 (and d!448875 d!448793)))

(assert (=> bs!365411 (= lambda!64619 lambda!64610)))

(declare-fun bs!365412 () Bool)

(assert (= bs!365412 (and d!448875 d!448721)))

(assert (=> bs!365412 (= lambda!64619 lambda!64593)))

(declare-fun bs!365413 () Bool)

(assert (= bs!365413 (and d!448875 d!448777)))

(assert (=> bs!365413 (= lambda!64619 lambda!64608)))

(declare-fun bs!365414 () Bool)

(assert (= bs!365414 (and d!448875 d!448481)))

(assert (=> bs!365414 (= lambda!64619 lambda!64564)))

(assert (=> d!448875 (= (inv!21347 setElem!9198) (forall!3861 (exprs!1181 setElem!9198) lambda!64619))))

(declare-fun bs!365415 () Bool)

(assert (= bs!365415 d!448875))

(declare-fun m!1780660 () Bool)

(assert (=> bs!365415 m!1780660))

(assert (=> setNonEmpty!9198 d!448875))

(declare-fun d!448877 () Bool)

(declare-fun lt!527017 () Int)

(assert (=> d!448877 (>= lt!527017 0)))

(declare-fun e!969375 () Int)

(assert (=> d!448877 (= lt!527017 e!969375)))

(declare-fun c!248387 () Bool)

(assert (=> d!448877 (= c!248387 ((_ is Nil!16101) lt!526652))))

(assert (=> d!448877 (= (size!13022 lt!526652) lt!527017)))

(declare-fun b!1515705 () Bool)

(assert (=> b!1515705 (= e!969375 0)))

(declare-fun b!1515706 () Bool)

(assert (=> b!1515706 (= e!969375 (+ 1 (size!13022 (t!139453 lt!526652))))))

(assert (= (and d!448877 c!248387) b!1515705))

(assert (= (and d!448877 (not c!248387)) b!1515706))

(declare-fun m!1780662 () Bool)

(assert (=> b!1515706 m!1780662))

(assert (=> b!1514622 d!448877))

(declare-fun d!448879 () Bool)

(declare-fun lt!527018 () Int)

(assert (=> d!448879 (>= lt!527018 0)))

(declare-fun e!969376 () Int)

(assert (=> d!448879 (= lt!527018 e!969376)))

(declare-fun c!248388 () Bool)

(assert (=> d!448879 (= c!248388 ((_ is Nil!16101) (++!4368 lt!526569 lt!526561)))))

(assert (=> d!448879 (= (size!13022 (++!4368 lt!526569 lt!526561)) lt!527018)))

(declare-fun b!1515707 () Bool)

(assert (=> b!1515707 (= e!969376 0)))

(declare-fun b!1515708 () Bool)

(assert (=> b!1515708 (= e!969376 (+ 1 (size!13022 (t!139453 (++!4368 lt!526569 lt!526561)))))))

(assert (= (and d!448879 c!248388) b!1515707))

(assert (= (and d!448879 (not c!248388)) b!1515708))

(assert (=> b!1515708 m!1779791))

(assert (=> b!1514622 d!448879))

(assert (=> b!1514622 d!448467))

(declare-fun bs!365416 () Bool)

(declare-fun d!448881 () Bool)

(assert (= bs!365416 (and d!448881 d!448831)))

(declare-fun lambda!64620 () Int)

(assert (=> bs!365416 (= lambda!64620 lambda!64613)))

(declare-fun bs!365417 () Bool)

(assert (= bs!365417 (and d!448881 d!448453)))

(assert (=> bs!365417 (= lambda!64620 lambda!64562)))

(declare-fun bs!365418 () Bool)

(assert (= bs!365418 (and d!448881 d!448869)))

(assert (=> bs!365418 (= lambda!64620 lambda!64618)))

(declare-fun bs!365419 () Bool)

(assert (= bs!365419 (and d!448881 d!448699)))

(assert (=> bs!365419 (= lambda!64620 lambda!64592)))

(declare-fun bs!365420 () Bool)

(assert (= bs!365420 (and d!448881 d!448533)))

(assert (=> bs!365420 (= lambda!64620 lambda!64571)))

(declare-fun bs!365421 () Bool)

(assert (= bs!365421 (and d!448881 d!448815)))

(assert (=> bs!365421 (= lambda!64620 lambda!64612)))

(declare-fun bs!365422 () Bool)

(assert (= bs!365422 (and d!448881 d!448547)))

(assert (=> bs!365422 (= lambda!64620 lambda!64572)))

(declare-fun bs!365423 () Bool)

(assert (= bs!365423 (and d!448881 d!448799)))

(assert (=> bs!365423 (= lambda!64620 lambda!64611)))

(declare-fun bs!365424 () Bool)

(assert (= bs!365424 (and d!448881 d!448671)))

(assert (=> bs!365424 (= lambda!64620 lambda!64588)))

(declare-fun bs!365425 () Bool)

(assert (= bs!365425 (and d!448881 d!448575)))

(assert (=> bs!365425 (= lambda!64620 lambda!64575)))

(declare-fun bs!365426 () Bool)

(assert (= bs!365426 (and d!448881 d!448847)))

(assert (=> bs!365426 (= lambda!64620 lambda!64614)))

(declare-fun bs!365427 () Bool)

(assert (= bs!365427 (and d!448881 d!448659)))

(assert (=> bs!365427 (= lambda!64620 lambda!64585)))

(declare-fun bs!365428 () Bool)

(assert (= bs!365428 (and d!448881 d!448853)))

(assert (=> bs!365428 (= lambda!64620 lambda!64615)))

(declare-fun bs!365429 () Bool)

(assert (= bs!365429 (and d!448881 d!448789)))

(assert (=> bs!365429 (= lambda!64620 lambda!64609)))

(declare-fun bs!365430 () Bool)

(assert (= bs!365430 (and d!448881 d!448875)))

(assert (=> bs!365430 (= lambda!64620 lambda!64619)))

(declare-fun bs!365431 () Bool)

(assert (= bs!365431 (and d!448881 d!448477)))

(assert (=> bs!365431 (= lambda!64620 lambda!64563)))

(declare-fun bs!365432 () Bool)

(assert (= bs!365432 (and d!448881 d!448855)))

(assert (=> bs!365432 (= lambda!64620 lambda!64616)))

(declare-fun bs!365433 () Bool)

(assert (= bs!365433 (and d!448881 d!448665)))

(assert (=> bs!365433 (= lambda!64620 lambda!64587)))

(declare-fun bs!365434 () Bool)

(assert (= bs!365434 (and d!448881 d!448857)))

(assert (=> bs!365434 (= lambda!64620 lambda!64617)))

(declare-fun bs!365435 () Bool)

(assert (= bs!365435 (and d!448881 d!448741)))

(assert (=> bs!365435 (= lambda!64620 lambda!64597)))

(declare-fun bs!365436 () Bool)

(assert (= bs!365436 (and d!448881 d!448661)))

(assert (=> bs!365436 (= lambda!64620 lambda!64586)))

(declare-fun bs!365437 () Bool)

(assert (= bs!365437 (and d!448881 d!448561)))

(assert (=> bs!365437 (= lambda!64620 lambda!64574)))

(declare-fun bs!365438 () Bool)

(assert (= bs!365438 (and d!448881 d!448549)))

(assert (=> bs!365438 (= lambda!64620 lambda!64573)))

(declare-fun bs!365439 () Bool)

(assert (= bs!365439 (and d!448881 d!448793)))

(assert (=> bs!365439 (= lambda!64620 lambda!64610)))

(declare-fun bs!365440 () Bool)

(assert (= bs!365440 (and d!448881 d!448721)))

(assert (=> bs!365440 (= lambda!64620 lambda!64593)))

(declare-fun bs!365441 () Bool)

(assert (= bs!365441 (and d!448881 d!448777)))

(assert (=> bs!365441 (= lambda!64620 lambda!64608)))

(declare-fun bs!365442 () Bool)

(assert (= bs!365442 (and d!448881 d!448481)))

(assert (=> bs!365442 (= lambda!64620 lambda!64564)))

(assert (=> d!448881 (= (inv!21347 (_2!8521 (_1!8522 (h!21504 mapDefault!7058)))) (forall!3861 (exprs!1181 (_2!8521 (_1!8522 (h!21504 mapDefault!7058)))) lambda!64620))))

(declare-fun bs!365443 () Bool)

(assert (= bs!365443 d!448881))

(declare-fun m!1780664 () Bool)

(assert (=> bs!365443 m!1780664))

(assert (=> b!1514823 d!448881))

(declare-fun d!448883 () Bool)

(declare-fun c!248389 () Bool)

(assert (=> d!448883 (= c!248389 ((_ is Nil!16101) lt!526653))))

(declare-fun e!969377 () (InoxSet C!8504))

(assert (=> d!448883 (= (content!2316 lt!526653) e!969377)))

(declare-fun b!1515709 () Bool)

(assert (=> b!1515709 (= e!969377 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515710 () Bool)

(assert (=> b!1515710 (= e!969377 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 lt!526653) true) (content!2316 (t!139453 lt!526653))))))

(assert (= (and d!448883 c!248389) b!1515709))

(assert (= (and d!448883 (not c!248389)) b!1515710))

(declare-fun m!1780666 () Bool)

(assert (=> b!1515710 m!1780666))

(declare-fun m!1780668 () Bool)

(assert (=> b!1515710 m!1780668))

(assert (=> d!448355 d!448883))

(assert (=> d!448355 d!448593))

(declare-fun d!448885 () Bool)

(declare-fun c!248390 () Bool)

(assert (=> d!448885 (= c!248390 ((_ is Nil!16101) (++!4368 lt!526561 lt!526580)))))

(declare-fun e!969378 () (InoxSet C!8504))

(assert (=> d!448885 (= (content!2316 (++!4368 lt!526561 lt!526580)) e!969378)))

(declare-fun b!1515711 () Bool)

(assert (=> b!1515711 (= e!969378 ((as const (Array C!8504 Bool)) false))))

(declare-fun b!1515712 () Bool)

(assert (=> b!1515712 (= e!969378 ((_ map or) (store ((as const (Array C!8504 Bool)) false) (h!21502 (++!4368 lt!526561 lt!526580)) true) (content!2316 (t!139453 (++!4368 lt!526561 lt!526580)))))))

(assert (= (and d!448885 c!248390) b!1515711))

(assert (= (and d!448885 (not c!248390)) b!1515712))

(declare-fun m!1780670 () Bool)

(assert (=> b!1515712 m!1780670))

(declare-fun m!1780672 () Bool)

(assert (=> b!1515712 m!1780672))

(assert (=> d!448355 d!448885))

(declare-fun d!448887 () Bool)

(declare-fun e!969379 () Bool)

(assert (=> d!448887 e!969379))

(declare-fun res!681786 () Bool)

(assert (=> d!448887 (=> res!681786 e!969379)))

(declare-fun lt!527019 () Bool)

(assert (=> d!448887 (= res!681786 (not lt!527019))))

(assert (=> d!448887 (= lt!527019 (= lt!526579 (drop!760 (++!4368 lt!526569 lt!526579) (- (size!13022 (++!4368 lt!526569 lt!526579)) (size!13022 lt!526579)))))))

(assert (=> d!448887 (= (isSuffix!304 lt!526579 (++!4368 lt!526569 lt!526579)) lt!527019)))

(declare-fun b!1515713 () Bool)

(assert (=> b!1515713 (= e!969379 (>= (size!13022 (++!4368 lt!526569 lt!526579)) (size!13022 lt!526579)))))

(assert (= (and d!448887 (not res!681786)) b!1515713))

(assert (=> d!448887 m!1778765))

(declare-fun m!1780674 () Bool)

(assert (=> d!448887 m!1780674))

(assert (=> d!448887 m!1779079))

(assert (=> d!448887 m!1778765))

(declare-fun m!1780676 () Bool)

(assert (=> d!448887 m!1780676))

(assert (=> b!1515713 m!1778765))

(assert (=> b!1515713 m!1780674))

(assert (=> b!1515713 m!1779079))

(assert (=> d!448387 d!448887))

(assert (=> d!448387 d!448399))

(declare-fun d!448889 () Bool)

(assert (=> d!448889 (isSuffix!304 lt!526579 (++!4368 lt!526569 lt!526579))))

(assert (=> d!448889 true))

(declare-fun _$47!264 () Unit!25754)

(assert (=> d!448889 (= (choose!9164 lt!526569 lt!526579) _$47!264)))

(declare-fun bs!365444 () Bool)

(assert (= bs!365444 d!448889))

(assert (=> bs!365444 m!1778765))

(assert (=> bs!365444 m!1778765))

(assert (=> bs!365444 m!1779087))

(assert (=> d!448387 d!448889))

(declare-fun d!448891 () Bool)

(declare-fun lt!527020 () Bool)

(assert (=> d!448891 (= lt!527020 (isEmpty!9939 (list!6358 (_1!8520 lt!526684))))))

(assert (=> d!448891 (= lt!527020 (isEmpty!9944 (c!248132 (_1!8520 lt!526684))))))

(assert (=> d!448891 (= (isEmpty!9941 (_1!8520 lt!526684)) lt!527020)))

(declare-fun bs!365445 () Bool)

(assert (= bs!365445 d!448891))

(assert (=> bs!365445 m!1779169))

(assert (=> bs!365445 m!1779169))

(declare-fun m!1780678 () Bool)

(assert (=> bs!365445 m!1780678))

(declare-fun m!1780680 () Bool)

(assert (=> bs!365445 m!1780680))

(assert (=> b!1514694 d!448891))

(declare-fun d!448893 () Bool)

(declare-fun c!248391 () Bool)

(assert (=> d!448893 (= c!248391 ((_ is Node!5447) (left!13375 (c!248132 acc!392))))))

(declare-fun e!969380 () Bool)

(assert (=> d!448893 (= (inv!21341 (left!13375 (c!248132 acc!392))) e!969380)))

(declare-fun b!1515714 () Bool)

(assert (=> b!1515714 (= e!969380 (inv!21345 (left!13375 (c!248132 acc!392))))))

(declare-fun b!1515715 () Bool)

(declare-fun e!969381 () Bool)

(assert (=> b!1515715 (= e!969380 e!969381)))

(declare-fun res!681787 () Bool)

(assert (=> b!1515715 (= res!681787 (not ((_ is Leaf!8074) (left!13375 (c!248132 acc!392)))))))

(assert (=> b!1515715 (=> res!681787 e!969381)))

(declare-fun b!1515716 () Bool)

(assert (=> b!1515716 (= e!969381 (inv!21346 (left!13375 (c!248132 acc!392))))))

(assert (= (and d!448893 c!248391) b!1515714))

(assert (= (and d!448893 (not c!248391)) b!1515715))

(assert (= (and b!1515715 (not res!681787)) b!1515716))

(declare-fun m!1780682 () Bool)

(assert (=> b!1515714 m!1780682))

(declare-fun m!1780684 () Bool)

(assert (=> b!1515716 m!1780684))

(assert (=> b!1514870 d!448893))

(declare-fun d!448895 () Bool)

(declare-fun c!248392 () Bool)

(assert (=> d!448895 (= c!248392 ((_ is Node!5447) (right!13705 (c!248132 acc!392))))))

(declare-fun e!969382 () Bool)

(assert (=> d!448895 (= (inv!21341 (right!13705 (c!248132 acc!392))) e!969382)))

(declare-fun b!1515717 () Bool)

(assert (=> b!1515717 (= e!969382 (inv!21345 (right!13705 (c!248132 acc!392))))))

(declare-fun b!1515718 () Bool)

(declare-fun e!969383 () Bool)

(assert (=> b!1515718 (= e!969382 e!969383)))

(declare-fun res!681788 () Bool)

(assert (=> b!1515718 (= res!681788 (not ((_ is Leaf!8074) (right!13705 (c!248132 acc!392)))))))

(assert (=> b!1515718 (=> res!681788 e!969383)))

(declare-fun b!1515719 () Bool)

(assert (=> b!1515719 (= e!969383 (inv!21346 (right!13705 (c!248132 acc!392))))))

(assert (= (and d!448895 c!248392) b!1515717))

(assert (= (and d!448895 (not c!248392)) b!1515718))

(assert (= (and b!1515718 (not res!681788)) b!1515719))

(declare-fun m!1780686 () Bool)

(assert (=> b!1515717 m!1780686))

(declare-fun m!1780688 () Bool)

(assert (=> b!1515719 m!1780688))

(assert (=> b!1514870 d!448895))

(declare-fun d!448897 () Bool)

(assert (=> d!448897 (= (list!6358 (_1!8520 lt!526687)) (list!6360 (c!248132 (_1!8520 lt!526687))))))

(declare-fun bs!365446 () Bool)

(assert (= bs!365446 d!448897))

(declare-fun m!1780690 () Bool)

(assert (=> bs!365446 m!1780690))

(assert (=> b!1514702 d!448897))

(assert (=> b!1514702 d!448871))

(assert (=> b!1514702 d!448403))

(declare-fun bs!365447 () Bool)

(declare-fun d!448899 () Bool)

(assert (= bs!365447 (and d!448899 d!448831)))

(declare-fun lambda!64621 () Int)

(assert (=> bs!365447 (= lambda!64621 lambda!64613)))

(declare-fun bs!365448 () Bool)

(assert (= bs!365448 (and d!448899 d!448881)))

(assert (=> bs!365448 (= lambda!64621 lambda!64620)))

(declare-fun bs!365449 () Bool)

(assert (= bs!365449 (and d!448899 d!448453)))

(assert (=> bs!365449 (= lambda!64621 lambda!64562)))

(declare-fun bs!365450 () Bool)

(assert (= bs!365450 (and d!448899 d!448869)))

(assert (=> bs!365450 (= lambda!64621 lambda!64618)))

(declare-fun bs!365451 () Bool)

(assert (= bs!365451 (and d!448899 d!448699)))

(assert (=> bs!365451 (= lambda!64621 lambda!64592)))

(declare-fun bs!365452 () Bool)

(assert (= bs!365452 (and d!448899 d!448533)))

(assert (=> bs!365452 (= lambda!64621 lambda!64571)))

(declare-fun bs!365453 () Bool)

(assert (= bs!365453 (and d!448899 d!448815)))

(assert (=> bs!365453 (= lambda!64621 lambda!64612)))

(declare-fun bs!365454 () Bool)

(assert (= bs!365454 (and d!448899 d!448547)))

(assert (=> bs!365454 (= lambda!64621 lambda!64572)))

(declare-fun bs!365455 () Bool)

(assert (= bs!365455 (and d!448899 d!448799)))

(assert (=> bs!365455 (= lambda!64621 lambda!64611)))

(declare-fun bs!365456 () Bool)

(assert (= bs!365456 (and d!448899 d!448671)))

(assert (=> bs!365456 (= lambda!64621 lambda!64588)))

(declare-fun bs!365457 () Bool)

(assert (= bs!365457 (and d!448899 d!448575)))

(assert (=> bs!365457 (= lambda!64621 lambda!64575)))

(declare-fun bs!365458 () Bool)

(assert (= bs!365458 (and d!448899 d!448847)))

(assert (=> bs!365458 (= lambda!64621 lambda!64614)))

(declare-fun bs!365459 () Bool)

(assert (= bs!365459 (and d!448899 d!448659)))

(assert (=> bs!365459 (= lambda!64621 lambda!64585)))

(declare-fun bs!365460 () Bool)

(assert (= bs!365460 (and d!448899 d!448853)))

(assert (=> bs!365460 (= lambda!64621 lambda!64615)))

(declare-fun bs!365461 () Bool)

(assert (= bs!365461 (and d!448899 d!448789)))

(assert (=> bs!365461 (= lambda!64621 lambda!64609)))

(declare-fun bs!365462 () Bool)

(assert (= bs!365462 (and d!448899 d!448875)))

(assert (=> bs!365462 (= lambda!64621 lambda!64619)))

(declare-fun bs!365463 () Bool)

(assert (= bs!365463 (and d!448899 d!448477)))

(assert (=> bs!365463 (= lambda!64621 lambda!64563)))

(declare-fun bs!365464 () Bool)

(assert (= bs!365464 (and d!448899 d!448855)))

(assert (=> bs!365464 (= lambda!64621 lambda!64616)))

(declare-fun bs!365465 () Bool)

(assert (= bs!365465 (and d!448899 d!448665)))

(assert (=> bs!365465 (= lambda!64621 lambda!64587)))

(declare-fun bs!365466 () Bool)

(assert (= bs!365466 (and d!448899 d!448857)))

(assert (=> bs!365466 (= lambda!64621 lambda!64617)))

(declare-fun bs!365467 () Bool)

(assert (= bs!365467 (and d!448899 d!448741)))

(assert (=> bs!365467 (= lambda!64621 lambda!64597)))

(declare-fun bs!365468 () Bool)

(assert (= bs!365468 (and d!448899 d!448661)))

(assert (=> bs!365468 (= lambda!64621 lambda!64586)))

(declare-fun bs!365469 () Bool)

(assert (= bs!365469 (and d!448899 d!448561)))

(assert (=> bs!365469 (= lambda!64621 lambda!64574)))

(declare-fun bs!365470 () Bool)

(assert (= bs!365470 (and d!448899 d!448549)))

(assert (=> bs!365470 (= lambda!64621 lambda!64573)))

(declare-fun bs!365471 () Bool)

(assert (= bs!365471 (and d!448899 d!448793)))

(assert (=> bs!365471 (= lambda!64621 lambda!64610)))

(declare-fun bs!365472 () Bool)

(assert (= bs!365472 (and d!448899 d!448721)))

(assert (=> bs!365472 (= lambda!64621 lambda!64593)))

(declare-fun bs!365473 () Bool)

(assert (= bs!365473 (and d!448899 d!448777)))

(assert (=> bs!365473 (= lambda!64621 lambda!64608)))

(declare-fun bs!365474 () Bool)

(assert (= bs!365474 (and d!448899 d!448481)))

(assert (=> bs!365474 (= lambda!64621 lambda!64564)))

(assert (=> d!448899 (= (inv!21347 setElem!9189) (forall!3861 (exprs!1181 setElem!9189) lambda!64621))))

(declare-fun bs!365475 () Bool)

(assert (= bs!365475 d!448899))

(declare-fun m!1780692 () Bool)

(assert (=> bs!365475 m!1780692))

(assert (=> setNonEmpty!9189 d!448899))

(assert (=> b!1514540 d!448525))

(declare-fun bs!365476 () Bool)

(declare-fun d!448901 () Bool)

(assert (= bs!365476 (and d!448901 d!448831)))

(declare-fun lambda!64622 () Int)

(assert (=> bs!365476 (= lambda!64622 lambda!64613)))

(declare-fun bs!365477 () Bool)

(assert (= bs!365477 (and d!448901 d!448881)))

(assert (=> bs!365477 (= lambda!64622 lambda!64620)))

(declare-fun bs!365478 () Bool)

(assert (= bs!365478 (and d!448901 d!448453)))

(assert (=> bs!365478 (= lambda!64622 lambda!64562)))

(declare-fun bs!365479 () Bool)

(assert (= bs!365479 (and d!448901 d!448869)))

(assert (=> bs!365479 (= lambda!64622 lambda!64618)))

(declare-fun bs!365480 () Bool)

(assert (= bs!365480 (and d!448901 d!448699)))

(assert (=> bs!365480 (= lambda!64622 lambda!64592)))

(declare-fun bs!365481 () Bool)

(assert (= bs!365481 (and d!448901 d!448533)))

(assert (=> bs!365481 (= lambda!64622 lambda!64571)))

(declare-fun bs!365482 () Bool)

(assert (= bs!365482 (and d!448901 d!448815)))

(assert (=> bs!365482 (= lambda!64622 lambda!64612)))

(declare-fun bs!365483 () Bool)

(assert (= bs!365483 (and d!448901 d!448547)))

(assert (=> bs!365483 (= lambda!64622 lambda!64572)))

(declare-fun bs!365484 () Bool)

(assert (= bs!365484 (and d!448901 d!448799)))

(assert (=> bs!365484 (= lambda!64622 lambda!64611)))

(declare-fun bs!365485 () Bool)

(assert (= bs!365485 (and d!448901 d!448671)))

(assert (=> bs!365485 (= lambda!64622 lambda!64588)))

(declare-fun bs!365486 () Bool)

(assert (= bs!365486 (and d!448901 d!448575)))

(assert (=> bs!365486 (= lambda!64622 lambda!64575)))

(declare-fun bs!365487 () Bool)

(assert (= bs!365487 (and d!448901 d!448847)))

(assert (=> bs!365487 (= lambda!64622 lambda!64614)))

(declare-fun bs!365488 () Bool)

(assert (= bs!365488 (and d!448901 d!448659)))

(assert (=> bs!365488 (= lambda!64622 lambda!64585)))

(declare-fun bs!365489 () Bool)

(assert (= bs!365489 (and d!448901 d!448853)))

(assert (=> bs!365489 (= lambda!64622 lambda!64615)))

(declare-fun bs!365490 () Bool)

(assert (= bs!365490 (and d!448901 d!448789)))

(assert (=> bs!365490 (= lambda!64622 lambda!64609)))

(declare-fun bs!365491 () Bool)

(assert (= bs!365491 (and d!448901 d!448875)))

(assert (=> bs!365491 (= lambda!64622 lambda!64619)))

(declare-fun bs!365492 () Bool)

(assert (= bs!365492 (and d!448901 d!448477)))

(assert (=> bs!365492 (= lambda!64622 lambda!64563)))

(declare-fun bs!365493 () Bool)

(assert (= bs!365493 (and d!448901 d!448855)))

(assert (=> bs!365493 (= lambda!64622 lambda!64616)))

(declare-fun bs!365494 () Bool)

(assert (= bs!365494 (and d!448901 d!448665)))

(assert (=> bs!365494 (= lambda!64622 lambda!64587)))

(declare-fun bs!365495 () Bool)

(assert (= bs!365495 (and d!448901 d!448857)))

(assert (=> bs!365495 (= lambda!64622 lambda!64617)))

(declare-fun bs!365496 () Bool)

(assert (= bs!365496 (and d!448901 d!448741)))

(assert (=> bs!365496 (= lambda!64622 lambda!64597)))

(declare-fun bs!365497 () Bool)

(assert (= bs!365497 (and d!448901 d!448661)))

(assert (=> bs!365497 (= lambda!64622 lambda!64586)))

(declare-fun bs!365498 () Bool)

(assert (= bs!365498 (and d!448901 d!448899)))

(assert (=> bs!365498 (= lambda!64622 lambda!64621)))

(declare-fun bs!365499 () Bool)

(assert (= bs!365499 (and d!448901 d!448561)))

(assert (=> bs!365499 (= lambda!64622 lambda!64574)))

(declare-fun bs!365500 () Bool)

(assert (= bs!365500 (and d!448901 d!448549)))

(assert (=> bs!365500 (= lambda!64622 lambda!64573)))

(declare-fun bs!365501 () Bool)

(assert (= bs!365501 (and d!448901 d!448793)))

(assert (=> bs!365501 (= lambda!64622 lambda!64610)))

(declare-fun bs!365502 () Bool)

(assert (= bs!365502 (and d!448901 d!448721)))

(assert (=> bs!365502 (= lambda!64622 lambda!64593)))

(declare-fun bs!365503 () Bool)

(assert (= bs!365503 (and d!448901 d!448777)))

(assert (=> bs!365503 (= lambda!64622 lambda!64608)))

(declare-fun bs!365504 () Bool)

(assert (= bs!365504 (and d!448901 d!448481)))

(assert (=> bs!365504 (= lambda!64622 lambda!64564)))

(assert (=> d!448901 (= (inv!21347 (_2!8521 (_1!8522 (h!21504 mapDefault!7052)))) (forall!3861 (exprs!1181 (_2!8521 (_1!8522 (h!21504 mapDefault!7052)))) lambda!64622))))

(declare-fun bs!365505 () Bool)

(assert (= bs!365505 d!448901))

(declare-fun m!1780694 () Bool)

(assert (=> bs!365505 m!1780694))

(assert (=> b!1514793 d!448901))

(declare-fun condSetEmpty!9224 () Bool)

(assert (=> setNonEmpty!9208 (= condSetEmpty!9224 (= setRest!9208 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9224 () Bool)

(assert (=> setNonEmpty!9208 (= tp!433829 setRes!9224)))

(declare-fun setIsEmpty!9224 () Bool)

(assert (=> setIsEmpty!9224 setRes!9224))

(declare-fun e!969386 () Bool)

(declare-fun setElem!9224 () Context!1362)

(declare-fun setNonEmpty!9224 () Bool)

(declare-fun tp!433901 () Bool)

(assert (=> setNonEmpty!9224 (= setRes!9224 (and tp!433901 (inv!21347 setElem!9224) e!969386))))

(declare-fun setRest!9224 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9224 (= setRest!9208 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9224 true) setRest!9224))))

(declare-fun b!1515724 () Bool)

(declare-fun tp!433902 () Bool)

(assert (=> b!1515724 (= e!969386 tp!433902)))

(assert (= (and setNonEmpty!9208 condSetEmpty!9224) setIsEmpty!9224))

(assert (= (and setNonEmpty!9208 (not condSetEmpty!9224)) setNonEmpty!9224))

(assert (= setNonEmpty!9224 b!1515724))

(declare-fun m!1780696 () Bool)

(assert (=> setNonEmpty!9224 m!1780696))

(declare-fun b!1515729 () Bool)

(declare-fun e!969389 () Bool)

(declare-fun tp!433905 () Bool)

(assert (=> b!1515729 (= e!969389 (and tp_is_empty!7017 tp!433905))))

(assert (=> b!1514861 (= tp!433873 e!969389)))

(assert (= (and b!1514861 ((_ is Cons!16101) (innerList!5506 (xs!8229 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))))) b!1515729))

(declare-fun b!1515730 () Bool)

(declare-fun e!969390 () Bool)

(assert (=> b!1515730 (= e!969390 tp_is_empty!7017)))

(declare-fun b!1515731 () Bool)

(declare-fun tp!433909 () Bool)

(declare-fun tp!433907 () Bool)

(assert (=> b!1515731 (= e!969390 (and tp!433909 tp!433907))))

(assert (=> b!1514727 (= tp!433698 e!969390)))

(declare-fun b!1515732 () Bool)

(declare-fun tp!433908 () Bool)

(assert (=> b!1515732 (= e!969390 tp!433908)))

(declare-fun b!1515733 () Bool)

(declare-fun tp!433910 () Bool)

(declare-fun tp!433906 () Bool)

(assert (=> b!1515733 (= e!969390 (and tp!433910 tp!433906))))

(assert (= (and b!1514727 ((_ is ElementMatch!4163) (regex!2847 (h!21506 (t!139457 rules!1640))))) b!1515730))

(assert (= (and b!1514727 ((_ is Concat!7100) (regex!2847 (h!21506 (t!139457 rules!1640))))) b!1515731))

(assert (= (and b!1514727 ((_ is Star!4163) (regex!2847 (h!21506 (t!139457 rules!1640))))) b!1515732))

(assert (= (and b!1514727 ((_ is Union!4163) (regex!2847 (h!21506 (t!139457 rules!1640))))) b!1515733))

(declare-fun b!1515738 () Bool)

(declare-fun e!969393 () Bool)

(declare-fun tp!433915 () Bool)

(declare-fun tp!433916 () Bool)

(assert (=> b!1515738 (= e!969393 (and tp!433915 tp!433916))))

(assert (=> b!1514826 (= tp!433826 e!969393)))

(assert (= (and b!1514826 ((_ is Cons!16098) (exprs!1181 setElem!9208))) b!1515738))

(declare-fun tp!433917 () Bool)

(declare-fun e!969394 () Bool)

(declare-fun tp!433919 () Bool)

(declare-fun b!1515739 () Bool)

(assert (=> b!1515739 (= e!969394 (and (inv!21340 (left!13374 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) tp!433919 (inv!21340 (right!13704 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) tp!433917))))

(declare-fun b!1515741 () Bool)

(declare-fun e!969395 () Bool)

(declare-fun tp!433918 () Bool)

(assert (=> b!1515741 (= e!969395 tp!433918)))

(declare-fun b!1515740 () Bool)

(assert (=> b!1515740 (= e!969394 (and (inv!21348 (xs!8229 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) e!969395))))

(assert (=> b!1514859 (= tp!433874 (and (inv!21340 (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) e!969394))))

(assert (= (and b!1514859 ((_ is Node!5446) (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) b!1515739))

(assert (= b!1515740 b!1515741))

(assert (= (and b!1514859 ((_ is Leaf!8073) (left!13374 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) b!1515740))

(declare-fun m!1780698 () Bool)

(assert (=> b!1515739 m!1780698))

(declare-fun m!1780700 () Bool)

(assert (=> b!1515739 m!1780700))

(declare-fun m!1780702 () Bool)

(assert (=> b!1515740 m!1780702))

(assert (=> b!1514859 m!1779309))

(declare-fun tp!433920 () Bool)

(declare-fun e!969396 () Bool)

(declare-fun b!1515742 () Bool)

(declare-fun tp!433922 () Bool)

(assert (=> b!1515742 (= e!969396 (and (inv!21340 (left!13374 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) tp!433922 (inv!21340 (right!13704 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) tp!433920))))

(declare-fun b!1515744 () Bool)

(declare-fun e!969397 () Bool)

(declare-fun tp!433921 () Bool)

(assert (=> b!1515744 (= e!969397 tp!433921)))

(declare-fun b!1515743 () Bool)

(assert (=> b!1515743 (= e!969396 (and (inv!21348 (xs!8229 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) e!969397))))

(assert (=> b!1514859 (= tp!433872 (and (inv!21340 (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64)))) e!969396))))

(assert (= (and b!1514859 ((_ is Node!5446) (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) b!1515742))

(assert (= b!1515743 b!1515744))

(assert (= (and b!1514859 ((_ is Leaf!8073) (right!13704 (c!248131 (totalInput!2301 cacheFurthestNullable!64))))) b!1515743))

(declare-fun m!1780704 () Bool)

(assert (=> b!1515742 m!1780704))

(declare-fun m!1780706 () Bool)

(assert (=> b!1515742 m!1780706))

(declare-fun m!1780708 () Bool)

(assert (=> b!1515743 m!1780708))

(assert (=> b!1514859 m!1779311))

(declare-fun b!1515745 () Bool)

(declare-fun e!969398 () Bool)

(declare-fun tp!433923 () Bool)

(declare-fun tp!433924 () Bool)

(assert (=> b!1515745 (= e!969398 (and tp!433923 tp!433924))))

(assert (=> b!1514850 (= tp!433859 e!969398)))

(assert (= (and b!1514850 ((_ is Cons!16098) (exprs!1181 setElem!9216))) b!1515745))

(declare-fun condSetEmpty!9225 () Bool)

(assert (=> setNonEmpty!9188 (= condSetEmpty!9225 (= setRest!9188 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9225 () Bool)

(assert (=> setNonEmpty!9188 (= tp!433723 setRes!9225)))

(declare-fun setIsEmpty!9225 () Bool)

(assert (=> setIsEmpty!9225 setRes!9225))

(declare-fun e!969399 () Bool)

(declare-fun setNonEmpty!9225 () Bool)

(declare-fun tp!433925 () Bool)

(declare-fun setElem!9225 () Context!1362)

(assert (=> setNonEmpty!9225 (= setRes!9225 (and tp!433925 (inv!21347 setElem!9225) e!969399))))

(declare-fun setRest!9225 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9225 (= setRest!9188 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9225 true) setRest!9225))))

(declare-fun b!1515746 () Bool)

(declare-fun tp!433926 () Bool)

(assert (=> b!1515746 (= e!969399 tp!433926)))

(assert (= (and setNonEmpty!9188 condSetEmpty!9225) setIsEmpty!9225))

(assert (= (and setNonEmpty!9188 (not condSetEmpty!9225)) setNonEmpty!9225))

(assert (= setNonEmpty!9225 b!1515746))

(declare-fun m!1780710 () Bool)

(assert (=> setNonEmpty!9225 m!1780710))

(declare-fun b!1515747 () Bool)

(declare-fun e!969400 () Bool)

(assert (=> b!1515747 (= e!969400 tp_is_empty!7017)))

(declare-fun b!1515748 () Bool)

(declare-fun tp!433930 () Bool)

(declare-fun tp!433928 () Bool)

(assert (=> b!1515748 (= e!969400 (and tp!433930 tp!433928))))

(assert (=> b!1514742 (= tp!433716 e!969400)))

(declare-fun b!1515749 () Bool)

(declare-fun tp!433929 () Bool)

(assert (=> b!1515749 (= e!969400 tp!433929)))

(declare-fun b!1515750 () Bool)

(declare-fun tp!433931 () Bool)

(declare-fun tp!433927 () Bool)

(assert (=> b!1515750 (= e!969400 (and tp!433931 tp!433927))))

(assert (= (and b!1514742 ((_ is ElementMatch!4163) (regOne!8839 (regex!2847 (h!21506 rules!1640))))) b!1515747))

(assert (= (and b!1514742 ((_ is Concat!7100) (regOne!8839 (regex!2847 (h!21506 rules!1640))))) b!1515748))

(assert (= (and b!1514742 ((_ is Star!4163) (regOne!8839 (regex!2847 (h!21506 rules!1640))))) b!1515749))

(assert (= (and b!1514742 ((_ is Union!4163) (regOne!8839 (regex!2847 (h!21506 rules!1640))))) b!1515750))

(declare-fun b!1515751 () Bool)

(declare-fun e!969401 () Bool)

(assert (=> b!1515751 (= e!969401 tp_is_empty!7017)))

(declare-fun b!1515752 () Bool)

(declare-fun tp!433935 () Bool)

(declare-fun tp!433933 () Bool)

(assert (=> b!1515752 (= e!969401 (and tp!433935 tp!433933))))

(assert (=> b!1514742 (= tp!433712 e!969401)))

(declare-fun b!1515753 () Bool)

(declare-fun tp!433934 () Bool)

(assert (=> b!1515753 (= e!969401 tp!433934)))

(declare-fun b!1515754 () Bool)

(declare-fun tp!433936 () Bool)

(declare-fun tp!433932 () Bool)

(assert (=> b!1515754 (= e!969401 (and tp!433936 tp!433932))))

(assert (= (and b!1514742 ((_ is ElementMatch!4163) (regTwo!8839 (regex!2847 (h!21506 rules!1640))))) b!1515751))

(assert (= (and b!1514742 ((_ is Concat!7100) (regTwo!8839 (regex!2847 (h!21506 rules!1640))))) b!1515752))

(assert (= (and b!1514742 ((_ is Star!4163) (regTwo!8839 (regex!2847 (h!21506 rules!1640))))) b!1515753))

(assert (= (and b!1514742 ((_ is Union!4163) (regTwo!8839 (regex!2847 (h!21506 rules!1640))))) b!1515754))

(declare-fun b!1515755 () Bool)

(declare-fun e!969402 () Bool)

(assert (=> b!1515755 (= e!969402 tp_is_empty!7017)))

(declare-fun b!1515756 () Bool)

(declare-fun tp!433940 () Bool)

(declare-fun tp!433938 () Bool)

(assert (=> b!1515756 (= e!969402 (and tp!433940 tp!433938))))

(assert (=> b!1514825 (= tp!433824 e!969402)))

(declare-fun b!1515757 () Bool)

(declare-fun tp!433939 () Bool)

(assert (=> b!1515757 (= e!969402 tp!433939)))

(declare-fun b!1515758 () Bool)

(declare-fun tp!433941 () Bool)

(declare-fun tp!433937 () Bool)

(assert (=> b!1515758 (= e!969402 (and tp!433941 tp!433937))))

(assert (= (and b!1514825 ((_ is ElementMatch!4163) (_1!8521 (_1!8522 (h!21504 mapValue!7058))))) b!1515755))

(assert (= (and b!1514825 ((_ is Concat!7100) (_1!8521 (_1!8522 (h!21504 mapValue!7058))))) b!1515756))

(assert (= (and b!1514825 ((_ is Star!4163) (_1!8521 (_1!8522 (h!21504 mapValue!7058))))) b!1515757))

(assert (= (and b!1514825 ((_ is Union!4163) (_1!8521 (_1!8522 (h!21504 mapValue!7058))))) b!1515758))

(declare-fun b!1515759 () Bool)

(declare-fun e!969405 () Bool)

(declare-fun tp!433943 () Bool)

(assert (=> b!1515759 (= e!969405 tp!433943)))

(declare-fun setIsEmpty!9226 () Bool)

(declare-fun setRes!9226 () Bool)

(assert (=> setIsEmpty!9226 setRes!9226))

(declare-fun e!969404 () Bool)

(assert (=> b!1514825 (= tp!433814 e!969404)))

(declare-fun setElem!9226 () Context!1362)

(declare-fun tp!433946 () Bool)

(declare-fun setNonEmpty!9226 () Bool)

(assert (=> setNonEmpty!9226 (= setRes!9226 (and tp!433946 (inv!21347 setElem!9226) e!969405))))

(declare-fun setRest!9226 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9226 (= (_2!8522 (h!21504 (t!139455 mapValue!7058))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9226 true) setRest!9226))))

(declare-fun tp!433942 () Bool)

(declare-fun e!969403 () Bool)

(declare-fun tp!433945 () Bool)

(declare-fun b!1515760 () Bool)

(assert (=> b!1515760 (= e!969404 (and tp!433942 (inv!21347 (_2!8521 (_1!8522 (h!21504 (t!139455 mapValue!7058))))) e!969403 tp_is_empty!7017 setRes!9226 tp!433945))))

(declare-fun condSetEmpty!9226 () Bool)

(assert (=> b!1515760 (= condSetEmpty!9226 (= (_2!8522 (h!21504 (t!139455 mapValue!7058))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515761 () Bool)

(declare-fun tp!433944 () Bool)

(assert (=> b!1515761 (= e!969403 tp!433944)))

(assert (= b!1515760 b!1515761))

(assert (= (and b!1515760 condSetEmpty!9226) setIsEmpty!9226))

(assert (= (and b!1515760 (not condSetEmpty!9226)) setNonEmpty!9226))

(assert (= setNonEmpty!9226 b!1515759))

(assert (= (and b!1514825 ((_ is Cons!16103) (t!139455 mapValue!7058))) b!1515760))

(declare-fun m!1780712 () Bool)

(assert (=> setNonEmpty!9226 m!1780712))

(declare-fun m!1780714 () Bool)

(assert (=> b!1515760 m!1780714))

(declare-fun condSetEmpty!9227 () Bool)

(assert (=> setNonEmpty!9214 (= condSetEmpty!9227 (= setRest!9213 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9227 () Bool)

(assert (=> setNonEmpty!9214 (= tp!433849 setRes!9227)))

(declare-fun setIsEmpty!9227 () Bool)

(assert (=> setIsEmpty!9227 setRes!9227))

(declare-fun setNonEmpty!9227 () Bool)

(declare-fun tp!433947 () Bool)

(declare-fun setElem!9227 () Context!1362)

(declare-fun e!969406 () Bool)

(assert (=> setNonEmpty!9227 (= setRes!9227 (and tp!433947 (inv!21347 setElem!9227) e!969406))))

(declare-fun setRest!9227 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9227 (= setRest!9213 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9227 true) setRest!9227))))

(declare-fun b!1515762 () Bool)

(declare-fun tp!433948 () Bool)

(assert (=> b!1515762 (= e!969406 tp!433948)))

(assert (= (and setNonEmpty!9214 condSetEmpty!9227) setIsEmpty!9227))

(assert (= (and setNonEmpty!9214 (not condSetEmpty!9227)) setNonEmpty!9227))

(assert (= setNonEmpty!9227 b!1515762))

(declare-fun m!1780716 () Bool)

(assert (=> setNonEmpty!9227 m!1780716))

(declare-fun b!1515763 () Bool)

(declare-fun e!969407 () Bool)

(declare-fun tp!433949 () Bool)

(declare-fun tp!433950 () Bool)

(assert (=> b!1515763 (= e!969407 (and tp!433949 tp!433950))))

(assert (=> b!1514876 (= tp!433888 e!969407)))

(assert (= (and b!1514876 ((_ is Cons!16098) (exprs!1181 setElem!9220))) b!1515763))

(declare-fun b!1515764 () Bool)

(declare-fun e!969408 () Bool)

(declare-fun tp!433951 () Bool)

(declare-fun tp!433952 () Bool)

(assert (=> b!1515764 (= e!969408 (and tp!433951 tp!433952))))

(assert (=> b!1514767 (= tp!433754 e!969408)))

(assert (= (and b!1514767 ((_ is Cons!16098) (exprs!1181 setElem!9194))) b!1515764))

(declare-fun e!969409 () Bool)

(declare-fun b!1515765 () Bool)

(declare-fun tp!433953 () Bool)

(declare-fun tp!433955 () Bool)

(assert (=> b!1515765 (= e!969409 (and (inv!21340 (left!13374 (left!13374 (c!248131 totalInput!458)))) tp!433955 (inv!21340 (right!13704 (left!13374 (c!248131 totalInput!458)))) tp!433953))))

(declare-fun b!1515767 () Bool)

(declare-fun e!969410 () Bool)

(declare-fun tp!433954 () Bool)

(assert (=> b!1515767 (= e!969410 tp!433954)))

(declare-fun b!1515766 () Bool)

(assert (=> b!1515766 (= e!969409 (and (inv!21348 (xs!8229 (left!13374 (c!248131 totalInput!458)))) e!969410))))

(assert (=> b!1514873 (= tp!433886 (and (inv!21340 (left!13374 (c!248131 totalInput!458))) e!969409))))

(assert (= (and b!1514873 ((_ is Node!5446) (left!13374 (c!248131 totalInput!458)))) b!1515765))

(assert (= b!1515766 b!1515767))

(assert (= (and b!1514873 ((_ is Leaf!8073) (left!13374 (c!248131 totalInput!458)))) b!1515766))

(declare-fun m!1780718 () Bool)

(assert (=> b!1515765 m!1780718))

(declare-fun m!1780720 () Bool)

(assert (=> b!1515765 m!1780720))

(declare-fun m!1780722 () Bool)

(assert (=> b!1515766 m!1780722))

(assert (=> b!1514873 m!1779321))

(declare-fun tp!433958 () Bool)

(declare-fun b!1515768 () Bool)

(declare-fun tp!433956 () Bool)

(declare-fun e!969411 () Bool)

(assert (=> b!1515768 (= e!969411 (and (inv!21340 (left!13374 (right!13704 (c!248131 totalInput!458)))) tp!433958 (inv!21340 (right!13704 (right!13704 (c!248131 totalInput!458)))) tp!433956))))

(declare-fun b!1515770 () Bool)

(declare-fun e!969412 () Bool)

(declare-fun tp!433957 () Bool)

(assert (=> b!1515770 (= e!969412 tp!433957)))

(declare-fun b!1515769 () Bool)

(assert (=> b!1515769 (= e!969411 (and (inv!21348 (xs!8229 (right!13704 (c!248131 totalInput!458)))) e!969412))))

(assert (=> b!1514873 (= tp!433884 (and (inv!21340 (right!13704 (c!248131 totalInput!458))) e!969411))))

(assert (= (and b!1514873 ((_ is Node!5446) (right!13704 (c!248131 totalInput!458)))) b!1515768))

(assert (= b!1515769 b!1515770))

(assert (= (and b!1514873 ((_ is Leaf!8073) (right!13704 (c!248131 totalInput!458)))) b!1515769))

(declare-fun m!1780724 () Bool)

(assert (=> b!1515768 m!1780724))

(declare-fun m!1780726 () Bool)

(assert (=> b!1515768 m!1780726))

(declare-fun m!1780728 () Bool)

(assert (=> b!1515769 m!1780728))

(assert (=> b!1514873 m!1779323))

(declare-fun b!1515771 () Bool)

(declare-fun e!969413 () Bool)

(declare-fun tp!433959 () Bool)

(assert (=> b!1515771 (= e!969413 (and tp_is_empty!7017 tp!433959))))

(assert (=> b!1514805 (= tp!433790 e!969413)))

(assert (= (and b!1514805 ((_ is Cons!16101) (innerList!5506 (xs!8229 (c!248131 input!1102))))) b!1515771))

(declare-fun b!1515772 () Bool)

(declare-fun e!969414 () Bool)

(declare-fun tp!433960 () Bool)

(declare-fun tp!433961 () Bool)

(assert (=> b!1515772 (= e!969414 (and tp!433960 tp!433961))))

(assert (=> b!1514879 (= tp!433893 e!969414)))

(assert (= (and b!1514879 ((_ is Cons!16098) (exprs!1181 setElem!9221))) b!1515772))

(declare-fun condSetEmpty!9228 () Bool)

(assert (=> setNonEmpty!9213 (= condSetEmpty!9228 (= setRest!9214 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9228 () Bool)

(assert (=> setNonEmpty!9213 (= tp!433845 setRes!9228)))

(declare-fun setIsEmpty!9228 () Bool)

(assert (=> setIsEmpty!9228 setRes!9228))

(declare-fun tp!433962 () Bool)

(declare-fun setElem!9228 () Context!1362)

(declare-fun setNonEmpty!9228 () Bool)

(declare-fun e!969415 () Bool)

(assert (=> setNonEmpty!9228 (= setRes!9228 (and tp!433962 (inv!21347 setElem!9228) e!969415))))

(declare-fun setRest!9228 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9228 (= setRest!9214 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9228 true) setRest!9228))))

(declare-fun b!1515773 () Bool)

(declare-fun tp!433963 () Bool)

(assert (=> b!1515773 (= e!969415 tp!433963)))

(assert (= (and setNonEmpty!9213 condSetEmpty!9228) setIsEmpty!9228))

(assert (= (and setNonEmpty!9213 (not condSetEmpty!9228)) setNonEmpty!9228))

(assert (= setNonEmpty!9228 b!1515773))

(declare-fun m!1780730 () Bool)

(assert (=> setNonEmpty!9228 m!1780730))

(declare-fun tp!433964 () Bool)

(declare-fun b!1515774 () Bool)

(declare-fun tp!433966 () Bool)

(declare-fun e!969416 () Bool)

(assert (=> b!1515774 (= e!969416 (and (inv!21340 (left!13374 (left!13374 (c!248131 input!1102)))) tp!433966 (inv!21340 (right!13704 (left!13374 (c!248131 input!1102)))) tp!433964))))

(declare-fun b!1515776 () Bool)

(declare-fun e!969417 () Bool)

(declare-fun tp!433965 () Bool)

(assert (=> b!1515776 (= e!969417 tp!433965)))

(declare-fun b!1515775 () Bool)

(assert (=> b!1515775 (= e!969416 (and (inv!21348 (xs!8229 (left!13374 (c!248131 input!1102)))) e!969417))))

(assert (=> b!1514803 (= tp!433791 (and (inv!21340 (left!13374 (c!248131 input!1102))) e!969416))))

(assert (= (and b!1514803 ((_ is Node!5446) (left!13374 (c!248131 input!1102)))) b!1515774))

(assert (= b!1515775 b!1515776))

(assert (= (and b!1514803 ((_ is Leaf!8073) (left!13374 (c!248131 input!1102)))) b!1515775))

(declare-fun m!1780732 () Bool)

(assert (=> b!1515774 m!1780732))

(declare-fun m!1780734 () Bool)

(assert (=> b!1515774 m!1780734))

(declare-fun m!1780736 () Bool)

(assert (=> b!1515775 m!1780736))

(assert (=> b!1514803 m!1779261))

(declare-fun tp!433967 () Bool)

(declare-fun b!1515777 () Bool)

(declare-fun tp!433969 () Bool)

(declare-fun e!969418 () Bool)

(assert (=> b!1515777 (= e!969418 (and (inv!21340 (left!13374 (right!13704 (c!248131 input!1102)))) tp!433969 (inv!21340 (right!13704 (right!13704 (c!248131 input!1102)))) tp!433967))))

(declare-fun b!1515779 () Bool)

(declare-fun e!969419 () Bool)

(declare-fun tp!433968 () Bool)

(assert (=> b!1515779 (= e!969419 tp!433968)))

(declare-fun b!1515778 () Bool)

(assert (=> b!1515778 (= e!969418 (and (inv!21348 (xs!8229 (right!13704 (c!248131 input!1102)))) e!969419))))

(assert (=> b!1514803 (= tp!433789 (and (inv!21340 (right!13704 (c!248131 input!1102))) e!969418))))

(assert (= (and b!1514803 ((_ is Node!5446) (right!13704 (c!248131 input!1102)))) b!1515777))

(assert (= b!1515778 b!1515779))

(assert (= (and b!1514803 ((_ is Leaf!8073) (right!13704 (c!248131 input!1102)))) b!1515778))

(declare-fun m!1780738 () Bool)

(assert (=> b!1515777 m!1780738))

(declare-fun m!1780740 () Bool)

(assert (=> b!1515777 m!1780740))

(declare-fun m!1780742 () Bool)

(assert (=> b!1515778 m!1780742))

(assert (=> b!1514803 m!1779263))

(declare-fun b!1515780 () Bool)

(declare-fun e!969420 () Bool)

(declare-fun tp!433970 () Bool)

(declare-fun tp!433971 () Bool)

(assert (=> b!1515780 (= e!969420 (and tp!433970 tp!433971))))

(assert (=> b!1514828 (= tp!433827 e!969420)))

(assert (= (and b!1514828 ((_ is Cons!16098) (exprs!1181 (_2!8521 (_1!8522 (h!21504 mapValue!7050)))))) b!1515780))

(declare-fun e!969422 () Bool)

(assert (=> b!1514839 (= tp!433847 e!969422)))

(declare-fun setIsEmpty!9229 () Bool)

(declare-fun setRes!9229 () Bool)

(assert (=> setIsEmpty!9229 setRes!9229))

(declare-fun tp!433972 () Bool)

(declare-fun setNonEmpty!9229 () Bool)

(declare-fun setElem!9229 () Context!1362)

(declare-fun e!969421 () Bool)

(assert (=> setNonEmpty!9229 (= setRes!9229 (and tp!433972 (inv!21347 setElem!9229) e!969421))))

(declare-fun setRest!9229 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9229 (= (_1!8523 (_1!8524 (h!21505 (t!139456 mapValue!7061)))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9229 true) setRest!9229))))

(declare-fun b!1515781 () Bool)

(declare-fun tp!433973 () Bool)

(assert (=> b!1515781 (= e!969422 (and setRes!9229 tp!433973))))

(declare-fun condSetEmpty!9229 () Bool)

(assert (=> b!1515781 (= condSetEmpty!9229 (= (_1!8523 (_1!8524 (h!21505 (t!139456 mapValue!7061)))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515782 () Bool)

(declare-fun tp!433974 () Bool)

(assert (=> b!1515782 (= e!969421 tp!433974)))

(assert (= (and b!1515781 condSetEmpty!9229) setIsEmpty!9229))

(assert (= (and b!1515781 (not condSetEmpty!9229)) setNonEmpty!9229))

(assert (= setNonEmpty!9229 b!1515782))

(assert (= (and b!1514839 ((_ is Cons!16104) (t!139456 mapValue!7061))) b!1515781))

(declare-fun m!1780744 () Bool)

(assert (=> setNonEmpty!9229 m!1780744))

(declare-fun b!1515803 () Bool)

(declare-fun e!969448 () Bool)

(declare-fun e!969441 () Bool)

(assert (=> b!1515803 (= e!969448 e!969441)))

(declare-fun b!1515804 () Bool)

(declare-fun lt!527029 () MutLongMap!1490)

(assert (=> b!1515804 (= e!969441 ((_ is LongMap!1490) lt!527029))))

(assert (=> b!1515804 (= lt!527029 (v!22914 (underlying!3190 (cache!1815 (_4!340 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))))))

(declare-fun b!1515805 () Bool)

(declare-fun e!969443 () Bool)

(declare-fun e!969444 () Bool)

(assert (=> b!1515805 (= e!969443 e!969444)))

(declare-fun b!1515806 () Bool)

(declare-fun e!969446 () Bool)

(declare-fun lt!527027 () MutLongMap!1488)

(assert (=> b!1515806 (= e!969446 ((_ is LongMap!1488) lt!527027))))

(assert (=> b!1515806 (= lt!527027 (v!22910 (underlying!3186 (cache!1813 (_2!8526 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))))))

(declare-fun b!1515807 () Bool)

(declare-fun e!969447 () Bool)

(assert (=> b!1515807 (= e!969444 e!969447)))

(declare-fun b!1515808 () Bool)

(declare-fun e!969449 () Bool)

(declare-fun e!969442 () Bool)

(assert (=> b!1515808 (= e!969449 e!969442)))

(declare-fun e!969445 () Bool)

(assert (=> d!448327 (= true (and e!969449 e!969443 e!969445))))

(declare-fun b!1515809 () Bool)

(assert (=> b!1515809 (= e!969442 e!969446)))

(declare-fun b!1515810 () Bool)

(assert (=> b!1515810 (= e!969445 e!969448)))

(declare-fun b!1515811 () Bool)

(declare-fun lt!527028 () MutLongMap!1489)

(assert (=> b!1515811 (= e!969447 ((_ is LongMap!1489) lt!527028))))

(assert (=> b!1515811 (= lt!527028 (v!22912 (underlying!3188 (cache!1814 (_3!1028 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))))))

(assert (= b!1515809 b!1515806))

(assert (= (and b!1515808 ((_ is HashMap!1432) (cache!1813 (_2!8526 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))) b!1515809))

(assert (= d!448327 b!1515808))

(assert (= b!1515807 b!1515811))

(assert (= (and b!1515805 ((_ is HashMap!1433) (cache!1814 (_3!1028 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))) b!1515807))

(assert (= d!448327 b!1515805))

(assert (= b!1515803 b!1515804))

(assert (= (and b!1515810 ((_ is HashMap!1434) (cache!1815 (_4!340 (maxPrefixZipperSequenceV3Mem!27 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))) b!1515803))

(assert (= d!448327 b!1515810))

(declare-fun b!1515812 () Bool)

(declare-fun e!969453 () Bool)

(declare-fun tp!433982 () Bool)

(assert (=> b!1515812 (= e!969453 tp!433982)))

(declare-fun b!1515813 () Bool)

(declare-fun e!969455 () Bool)

(declare-fun tp!433978 () Bool)

(assert (=> b!1515813 (= e!969455 tp!433978)))

(declare-fun b!1515814 () Bool)

(declare-fun e!969454 () Bool)

(declare-fun tp!433976 () Bool)

(assert (=> b!1515814 (= e!969454 tp!433976)))

(declare-fun setElem!9231 () Context!1362)

(declare-fun setNonEmpty!9230 () Bool)

(declare-fun setRes!9230 () Bool)

(declare-fun tp!433981 () Bool)

(assert (=> setNonEmpty!9230 (= setRes!9230 (and tp!433981 (inv!21347 setElem!9231) e!969454))))

(declare-fun mapValue!7062 () List!16167)

(declare-fun setRest!9230 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9230 (= (_2!8519 (h!21500 mapValue!7062)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9231 true) setRest!9230))))

(declare-fun mapIsEmpty!7062 () Bool)

(declare-fun mapRes!7062 () Bool)

(assert (=> mapIsEmpty!7062 mapRes!7062))

(declare-fun setElem!9230 () Context!1362)

(declare-fun setNonEmpty!9231 () Bool)

(declare-fun tp!433975 () Bool)

(declare-fun setRes!9231 () Bool)

(assert (=> setNonEmpty!9231 (= setRes!9231 (and tp!433975 (inv!21347 setElem!9230) e!969453))))

(declare-fun mapDefault!7062 () List!16167)

(declare-fun setRest!9231 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9231 (= (_2!8519 (h!21500 mapDefault!7062)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9230 true) setRest!9231))))

(declare-fun mapNonEmpty!7062 () Bool)

(declare-fun tp!433980 () Bool)

(declare-fun e!969451 () Bool)

(assert (=> mapNonEmpty!7062 (= mapRes!7062 (and tp!433980 e!969451))))

(declare-fun mapRest!7062 () (Array (_ BitVec 32) List!16167))

(declare-fun mapKey!7062 () (_ BitVec 32))

(assert (=> mapNonEmpty!7062 (= mapRest!7055 (store mapRest!7062 mapKey!7062 mapValue!7062))))

(declare-fun e!969452 () Bool)

(declare-fun e!969450 () Bool)

(declare-fun b!1515815 () Bool)

(declare-fun tp!433977 () Bool)

(assert (=> b!1515815 (= e!969450 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 mapDefault!7062)))) e!969452 tp_is_empty!7017 setRes!9231 tp!433977))))

(declare-fun condSetEmpty!9230 () Bool)

(assert (=> b!1515815 (= condSetEmpty!9230 (= (_2!8519 (h!21500 mapDefault!7062)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun condMapEmpty!7062 () Bool)

(assert (=> mapNonEmpty!7055 (= condMapEmpty!7062 (= mapRest!7055 ((as const (Array (_ BitVec 32) List!16167)) mapDefault!7062)))))

(assert (=> mapNonEmpty!7055 (= tp!433752 (and e!969450 mapRes!7062))))

(declare-fun setIsEmpty!9230 () Bool)

(assert (=> setIsEmpty!9230 setRes!9230))

(declare-fun b!1515816 () Bool)

(declare-fun tp!433979 () Bool)

(assert (=> b!1515816 (= e!969452 tp!433979)))

(declare-fun b!1515817 () Bool)

(declare-fun tp!433983 () Bool)

(assert (=> b!1515817 (= e!969451 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 mapValue!7062)))) e!969455 tp_is_empty!7017 setRes!9230 tp!433983))))

(declare-fun condSetEmpty!9231 () Bool)

(assert (=> b!1515817 (= condSetEmpty!9231 (= (_2!8519 (h!21500 mapValue!7062)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setIsEmpty!9231 () Bool)

(assert (=> setIsEmpty!9231 setRes!9231))

(assert (= (and mapNonEmpty!7055 condMapEmpty!7062) mapIsEmpty!7062))

(assert (= (and mapNonEmpty!7055 (not condMapEmpty!7062)) mapNonEmpty!7062))

(assert (= b!1515817 b!1515813))

(assert (= (and b!1515817 condSetEmpty!9231) setIsEmpty!9230))

(assert (= (and b!1515817 (not condSetEmpty!9231)) setNonEmpty!9230))

(assert (= setNonEmpty!9230 b!1515814))

(assert (= (and mapNonEmpty!7062 ((_ is Cons!16099) mapValue!7062)) b!1515817))

(assert (= b!1515815 b!1515816))

(assert (= (and b!1515815 condSetEmpty!9230) setIsEmpty!9231))

(assert (= (and b!1515815 (not condSetEmpty!9230)) setNonEmpty!9231))

(assert (= setNonEmpty!9231 b!1515812))

(assert (= (and mapNonEmpty!7055 ((_ is Cons!16099) mapDefault!7062)) b!1515815))

(declare-fun m!1780746 () Bool)

(assert (=> setNonEmpty!9230 m!1780746))

(declare-fun m!1780748 () Bool)

(assert (=> mapNonEmpty!7062 m!1780748))

(declare-fun m!1780750 () Bool)

(assert (=> b!1515817 m!1780750))

(declare-fun m!1780752 () Bool)

(assert (=> setNonEmpty!9231 m!1780752))

(declare-fun m!1780754 () Bool)

(assert (=> b!1515815 m!1780754))

(declare-fun condSetEmpty!9232 () Bool)

(assert (=> setNonEmpty!9201 (= condSetEmpty!9232 (= setRest!9201 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9232 () Bool)

(assert (=> setNonEmpty!9201 (= tp!433782 setRes!9232)))

(declare-fun setIsEmpty!9232 () Bool)

(assert (=> setIsEmpty!9232 setRes!9232))

(declare-fun tp!433984 () Bool)

(declare-fun e!969456 () Bool)

(declare-fun setElem!9232 () Context!1362)

(declare-fun setNonEmpty!9232 () Bool)

(assert (=> setNonEmpty!9232 (= setRes!9232 (and tp!433984 (inv!21347 setElem!9232) e!969456))))

(declare-fun setRest!9232 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9232 (= setRest!9201 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9232 true) setRest!9232))))

(declare-fun b!1515818 () Bool)

(declare-fun tp!433985 () Bool)

(assert (=> b!1515818 (= e!969456 tp!433985)))

(assert (= (and setNonEmpty!9201 condSetEmpty!9232) setIsEmpty!9232))

(assert (= (and setNonEmpty!9201 (not condSetEmpty!9232)) setNonEmpty!9232))

(assert (= setNonEmpty!9232 b!1515818))

(declare-fun m!1780756 () Bool)

(assert (=> setNonEmpty!9232 m!1780756))

(declare-fun e!969458 () Bool)

(assert (=> b!1514851 (= tp!433862 e!969458)))

(declare-fun setIsEmpty!9233 () Bool)

(declare-fun setRes!9233 () Bool)

(assert (=> setIsEmpty!9233 setRes!9233))

(declare-fun setNonEmpty!9233 () Bool)

(declare-fun e!969457 () Bool)

(declare-fun tp!433986 () Bool)

(declare-fun setElem!9233 () Context!1362)

(assert (=> setNonEmpty!9233 (= setRes!9233 (and tp!433986 (inv!21347 setElem!9233) e!969457))))

(declare-fun setRest!9233 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9233 (= (_1!8523 (_1!8524 (h!21505 (t!139456 mapDefault!7050)))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9233 true) setRest!9233))))

(declare-fun b!1515819 () Bool)

(declare-fun tp!433987 () Bool)

(assert (=> b!1515819 (= e!969458 (and setRes!9233 tp!433987))))

(declare-fun condSetEmpty!9233 () Bool)

(assert (=> b!1515819 (= condSetEmpty!9233 (= (_1!8523 (_1!8524 (h!21505 (t!139456 mapDefault!7050)))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515820 () Bool)

(declare-fun tp!433988 () Bool)

(assert (=> b!1515820 (= e!969457 tp!433988)))

(assert (= (and b!1515819 condSetEmpty!9233) setIsEmpty!9233))

(assert (= (and b!1515819 (not condSetEmpty!9233)) setNonEmpty!9233))

(assert (= setNonEmpty!9233 b!1515820))

(assert (= (and b!1514851 ((_ is Cons!16104) (t!139456 mapDefault!7050))) b!1515819))

(declare-fun m!1780758 () Bool)

(assert (=> setNonEmpty!9233 m!1780758))

(declare-fun b!1515821 () Bool)

(declare-fun e!969459 () Bool)

(declare-fun tp!433989 () Bool)

(declare-fun tp!433990 () Bool)

(assert (=> b!1515821 (= e!969459 (and tp!433989 tp!433990))))

(assert (=> b!1514855 (= tp!433866 e!969459)))

(assert (= (and b!1514855 ((_ is Cons!16098) (exprs!1181 setElem!9218))) b!1515821))

(declare-fun b!1515822 () Bool)

(declare-fun e!969460 () Bool)

(declare-fun tp!433991 () Bool)

(declare-fun tp!433992 () Bool)

(assert (=> b!1515822 (= e!969460 (and tp!433991 tp!433992))))

(assert (=> b!1514792 (= tp!433779 e!969460)))

(assert (= (and b!1514792 ((_ is Cons!16098) (exprs!1181 setElem!9201))) b!1515822))

(declare-fun b!1515823 () Bool)

(declare-fun e!969461 () Bool)

(declare-fun tp!433993 () Bool)

(declare-fun tp!433994 () Bool)

(assert (=> b!1515823 (= e!969461 (and tp!433993 tp!433994))))

(assert (=> b!1514878 (= tp!433889 e!969461)))

(assert (= (and b!1514878 ((_ is Cons!16098) (exprs!1181 (_2!8521 (_1!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))))))) b!1515823))

(declare-fun b!1515824 () Bool)

(declare-fun e!969462 () Bool)

(declare-fun tp!433995 () Bool)

(declare-fun tp!433996 () Bool)

(assert (=> b!1515824 (= e!969462 (and tp!433995 tp!433996))))

(assert (=> b!1514857 (= tp!433868 e!969462)))

(assert (= (and b!1514857 ((_ is Cons!16098) (exprs!1181 (_1!8518 (_1!8519 (h!21500 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))))))) b!1515824))

(declare-fun setIsEmpty!9234 () Bool)

(declare-fun setRes!9234 () Bool)

(assert (=> setIsEmpty!9234 setRes!9234))

(declare-fun e!969465 () Bool)

(assert (=> b!1514853 (= tp!433867 e!969465)))

(declare-fun setNonEmpty!9234 () Bool)

(declare-fun tp!433998 () Bool)

(declare-fun e!969464 () Bool)

(declare-fun setElem!9234 () Context!1362)

(assert (=> setNonEmpty!9234 (= setRes!9234 (and tp!433998 (inv!21347 setElem!9234) e!969464))))

(declare-fun setRest!9234 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9234 (= (_2!8519 (h!21500 (t!139451 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9234 true) setRest!9234))))

(declare-fun e!969463 () Bool)

(declare-fun b!1515825 () Bool)

(declare-fun tp!434000 () Bool)

(assert (=> b!1515825 (= e!969465 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 (t!139451 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))))))) e!969463 tp_is_empty!7017 setRes!9234 tp!434000))))

(declare-fun condSetEmpty!9234 () Bool)

(assert (=> b!1515825 (= condSetEmpty!9234 (= (_2!8519 (h!21500 (t!139451 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515826 () Bool)

(declare-fun tp!433997 () Bool)

(assert (=> b!1515826 (= e!969463 tp!433997)))

(declare-fun b!1515827 () Bool)

(declare-fun tp!433999 () Bool)

(assert (=> b!1515827 (= e!969464 tp!433999)))

(assert (= b!1515825 b!1515826))

(assert (= (and b!1515825 condSetEmpty!9234) setIsEmpty!9234))

(assert (= (and b!1515825 (not condSetEmpty!9234)) setNonEmpty!9234))

(assert (= setNonEmpty!9234 b!1515827))

(assert (= (and b!1514853 ((_ is Cons!16099) (t!139451 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))))) b!1515825))

(declare-fun m!1780760 () Bool)

(assert (=> setNonEmpty!9234 m!1780760))

(declare-fun m!1780762 () Bool)

(assert (=> b!1515825 m!1780762))

(declare-fun b!1515828 () Bool)

(declare-fun e!969466 () Bool)

(declare-fun tp!434001 () Bool)

(declare-fun tp!434002 () Bool)

(assert (=> b!1515828 (= e!969466 (and tp!434001 tp!434002))))

(assert (=> b!1514881 (= tp!433894 e!969466)))

(assert (= (and b!1514881 ((_ is Cons!16098) (exprs!1181 (_2!8521 (_1!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629)))))))))))) b!1515828))

(declare-fun b!1515829 () Bool)

(declare-fun e!969467 () Bool)

(declare-fun tp!434003 () Bool)

(declare-fun tp!434004 () Bool)

(assert (=> b!1515829 (= e!969467 (and tp!434003 tp!434004))))

(assert (=> b!1514844 (= tp!433853 e!969467)))

(assert (= (and b!1514844 ((_ is Cons!16098) (exprs!1181 setElem!9215))) b!1515829))

(declare-fun condSetEmpty!9235 () Bool)

(assert (=> setNonEmpty!9220 (= condSetEmpty!9235 (= setRest!9220 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9235 () Bool)

(assert (=> setNonEmpty!9220 (= tp!433891 setRes!9235)))

(declare-fun setIsEmpty!9235 () Bool)

(assert (=> setIsEmpty!9235 setRes!9235))

(declare-fun setNonEmpty!9235 () Bool)

(declare-fun setElem!9235 () Context!1362)

(declare-fun tp!434005 () Bool)

(declare-fun e!969468 () Bool)

(assert (=> setNonEmpty!9235 (= setRes!9235 (and tp!434005 (inv!21347 setElem!9235) e!969468))))

(declare-fun setRest!9235 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9235 (= setRest!9220 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9235 true) setRest!9235))))

(declare-fun b!1515830 () Bool)

(declare-fun tp!434006 () Bool)

(assert (=> b!1515830 (= e!969468 tp!434006)))

(assert (= (and setNonEmpty!9220 condSetEmpty!9235) setIsEmpty!9235))

(assert (= (and setNonEmpty!9220 (not condSetEmpty!9235)) setNonEmpty!9235))

(assert (= setNonEmpty!9235 b!1515830))

(declare-fun m!1780764 () Bool)

(assert (=> setNonEmpty!9235 m!1780764))

(declare-fun b!1515831 () Bool)

(declare-fun e!969469 () Bool)

(declare-fun tp!434007 () Bool)

(declare-fun tp!434008 () Bool)

(assert (=> b!1515831 (= e!969469 (and tp!434007 tp!434008))))

(assert (=> b!1514769 (= tp!433748 e!969469)))

(assert (= (and b!1514769 ((_ is Cons!16098) (exprs!1181 setElem!9195))) b!1515831))

(declare-fun b!1515832 () Bool)

(declare-fun e!969470 () Bool)

(declare-fun tp!434009 () Bool)

(assert (=> b!1515832 (= e!969470 (and tp_is_empty!7017 tp!434009))))

(assert (=> b!1514875 (= tp!433885 e!969470)))

(assert (= (and b!1514875 ((_ is Cons!16101) (innerList!5506 (xs!8229 (c!248131 totalInput!458))))) b!1515832))

(declare-fun b!1515833 () Bool)

(declare-fun e!969471 () Bool)

(declare-fun tp!434010 () Bool)

(declare-fun tp!434011 () Bool)

(assert (=> b!1515833 (= e!969471 (and tp!434010 tp!434011))))

(assert (=> b!1514820 (= tp!433819 e!969471)))

(assert (= (and b!1514820 ((_ is Cons!16098) (exprs!1181 setElem!9207))) b!1515833))

(declare-fun condSetEmpty!9236 () Bool)

(assert (=> setNonEmpty!9219 (= condSetEmpty!9236 (= setRest!9219 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9236 () Bool)

(assert (=> setNonEmpty!9219 (= tp!433869 setRes!9236)))

(declare-fun setIsEmpty!9236 () Bool)

(assert (=> setIsEmpty!9236 setRes!9236))

(declare-fun setNonEmpty!9236 () Bool)

(declare-fun e!969472 () Bool)

(declare-fun setElem!9236 () Context!1362)

(declare-fun tp!434012 () Bool)

(assert (=> setNonEmpty!9236 (= setRes!9236 (and tp!434012 (inv!21347 setElem!9236) e!969472))))

(declare-fun setRest!9236 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9236 (= setRest!9219 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9236 true) setRest!9236))))

(declare-fun b!1515834 () Bool)

(declare-fun tp!434013 () Bool)

(assert (=> b!1515834 (= e!969472 tp!434013)))

(assert (= (and setNonEmpty!9219 condSetEmpty!9236) setIsEmpty!9236))

(assert (= (and setNonEmpty!9219 (not condSetEmpty!9236)) setNonEmpty!9236))

(assert (= setNonEmpty!9236 b!1515834))

(declare-fun m!1780766 () Bool)

(assert (=> setNonEmpty!9236 m!1780766))

(declare-fun condSetEmpty!9237 () Bool)

(assert (=> setNonEmpty!9221 (= condSetEmpty!9237 (= setRest!9221 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9237 () Bool)

(assert (=> setNonEmpty!9221 (= tp!433896 setRes!9237)))

(declare-fun setIsEmpty!9237 () Bool)

(assert (=> setIsEmpty!9237 setRes!9237))

(declare-fun setElem!9237 () Context!1362)

(declare-fun tp!434014 () Bool)

(declare-fun setNonEmpty!9237 () Bool)

(declare-fun e!969473 () Bool)

(assert (=> setNonEmpty!9237 (= setRes!9237 (and tp!434014 (inv!21347 setElem!9237) e!969473))))

(declare-fun setRest!9237 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9237 (= setRest!9221 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9237 true) setRest!9237))))

(declare-fun b!1515835 () Bool)

(declare-fun tp!434015 () Bool)

(assert (=> b!1515835 (= e!969473 tp!434015)))

(assert (= (and setNonEmpty!9221 condSetEmpty!9237) setIsEmpty!9237))

(assert (= (and setNonEmpty!9221 (not condSetEmpty!9237)) setNonEmpty!9237))

(assert (= setNonEmpty!9237 b!1515835))

(declare-fun m!1780768 () Bool)

(assert (=> setNonEmpty!9237 m!1780768))

(declare-fun b!1515836 () Bool)

(declare-fun e!969474 () Bool)

(assert (=> b!1515836 (= e!969474 tp_is_empty!7017)))

(declare-fun b!1515837 () Bool)

(declare-fun tp!434019 () Bool)

(declare-fun tp!434017 () Bool)

(assert (=> b!1515837 (= e!969474 (and tp!434019 tp!434017))))

(assert (=> b!1514741 (= tp!433714 e!969474)))

(declare-fun b!1515838 () Bool)

(declare-fun tp!434018 () Bool)

(assert (=> b!1515838 (= e!969474 tp!434018)))

(declare-fun b!1515839 () Bool)

(declare-fun tp!434020 () Bool)

(declare-fun tp!434016 () Bool)

(assert (=> b!1515839 (= e!969474 (and tp!434020 tp!434016))))

(assert (= (and b!1514741 ((_ is ElementMatch!4163) (reg!4492 (regex!2847 (h!21506 rules!1640))))) b!1515836))

(assert (= (and b!1514741 ((_ is Concat!7100) (reg!4492 (regex!2847 (h!21506 rules!1640))))) b!1515837))

(assert (= (and b!1514741 ((_ is Star!4163) (reg!4492 (regex!2847 (h!21506 rules!1640))))) b!1515838))

(assert (= (and b!1514741 ((_ is Union!4163) (reg!4492 (regex!2847 (h!21506 rules!1640))))) b!1515839))

(declare-fun tp!434021 () Bool)

(declare-fun e!969475 () Bool)

(declare-fun tp!434023 () Bool)

(declare-fun b!1515840 () Bool)

(assert (=> b!1515840 (= e!969475 (and (inv!21340 (left!13374 (left!13374 (c!248131 treated!70)))) tp!434023 (inv!21340 (right!13704 (left!13374 (c!248131 treated!70)))) tp!434021))))

(declare-fun b!1515842 () Bool)

(declare-fun e!969476 () Bool)

(declare-fun tp!434022 () Bool)

(assert (=> b!1515842 (= e!969476 tp!434022)))

(declare-fun b!1515841 () Bool)

(assert (=> b!1515841 (= e!969475 (and (inv!21348 (xs!8229 (left!13374 (c!248131 treated!70)))) e!969476))))

(assert (=> b!1514845 (= tp!433856 (and (inv!21340 (left!13374 (c!248131 treated!70))) e!969475))))

(assert (= (and b!1514845 ((_ is Node!5446) (left!13374 (c!248131 treated!70)))) b!1515840))

(assert (= b!1515841 b!1515842))

(assert (= (and b!1514845 ((_ is Leaf!8073) (left!13374 (c!248131 treated!70)))) b!1515841))

(declare-fun m!1780770 () Bool)

(assert (=> b!1515840 m!1780770))

(declare-fun m!1780772 () Bool)

(assert (=> b!1515840 m!1780772))

(declare-fun m!1780774 () Bool)

(assert (=> b!1515841 m!1780774))

(assert (=> b!1514845 m!1779289))

(declare-fun tp!434026 () Bool)

(declare-fun tp!434024 () Bool)

(declare-fun b!1515843 () Bool)

(declare-fun e!969477 () Bool)

(assert (=> b!1515843 (= e!969477 (and (inv!21340 (left!13374 (right!13704 (c!248131 treated!70)))) tp!434026 (inv!21340 (right!13704 (right!13704 (c!248131 treated!70)))) tp!434024))))

(declare-fun b!1515845 () Bool)

(declare-fun e!969478 () Bool)

(declare-fun tp!434025 () Bool)

(assert (=> b!1515845 (= e!969478 tp!434025)))

(declare-fun b!1515844 () Bool)

(assert (=> b!1515844 (= e!969477 (and (inv!21348 (xs!8229 (right!13704 (c!248131 treated!70)))) e!969478))))

(assert (=> b!1514845 (= tp!433854 (and (inv!21340 (right!13704 (c!248131 treated!70))) e!969477))))

(assert (= (and b!1514845 ((_ is Node!5446) (right!13704 (c!248131 treated!70)))) b!1515843))

(assert (= b!1515844 b!1515845))

(assert (= (and b!1514845 ((_ is Leaf!8073) (right!13704 (c!248131 treated!70)))) b!1515844))

(declare-fun m!1780776 () Bool)

(assert (=> b!1515843 m!1780776))

(declare-fun m!1780778 () Bool)

(assert (=> b!1515843 m!1780778))

(declare-fun m!1780780 () Bool)

(assert (=> b!1515844 m!1780780))

(assert (=> b!1514845 m!1779291))

(declare-fun b!1515846 () Bool)

(declare-fun e!969479 () Bool)

(declare-fun tp!434027 () Bool)

(declare-fun tp!434028 () Bool)

(assert (=> b!1515846 (= e!969479 (and tp!434027 tp!434028))))

(assert (=> b!1514783 (= tp!433766 e!969479)))

(assert (= (and b!1514783 ((_ is Cons!16098) (exprs!1181 setElem!9198))) b!1515846))

(declare-fun setIsEmpty!9238 () Bool)

(declare-fun setRes!9238 () Bool)

(assert (=> setIsEmpty!9238 setRes!9238))

(declare-fun e!969482 () Bool)

(assert (=> b!1514772 (= tp!433755 e!969482)))

(declare-fun e!969481 () Bool)

(declare-fun setNonEmpty!9238 () Bool)

(declare-fun tp!434030 () Bool)

(declare-fun setElem!9238 () Context!1362)

(assert (=> setNonEmpty!9238 (= setRes!9238 (and tp!434030 (inv!21347 setElem!9238) e!969481))))

(declare-fun setRest!9238 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9238 (= (_2!8519 (h!21500 (t!139451 mapValue!7055))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9238 true) setRest!9238))))

(declare-fun b!1515847 () Bool)

(declare-fun tp!434032 () Bool)

(declare-fun e!969480 () Bool)

(assert (=> b!1515847 (= e!969482 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 (t!139451 mapValue!7055))))) e!969480 tp_is_empty!7017 setRes!9238 tp!434032))))

(declare-fun condSetEmpty!9238 () Bool)

(assert (=> b!1515847 (= condSetEmpty!9238 (= (_2!8519 (h!21500 (t!139451 mapValue!7055))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515848 () Bool)

(declare-fun tp!434029 () Bool)

(assert (=> b!1515848 (= e!969480 tp!434029)))

(declare-fun b!1515849 () Bool)

(declare-fun tp!434031 () Bool)

(assert (=> b!1515849 (= e!969481 tp!434031)))

(assert (= b!1515847 b!1515848))

(assert (= (and b!1515847 condSetEmpty!9238) setIsEmpty!9238))

(assert (= (and b!1515847 (not condSetEmpty!9238)) setNonEmpty!9238))

(assert (= setNonEmpty!9238 b!1515849))

(assert (= (and b!1514772 ((_ is Cons!16099) (t!139451 mapValue!7055))) b!1515847))

(declare-fun m!1780782 () Bool)

(assert (=> setNonEmpty!9238 m!1780782))

(declare-fun m!1780784 () Bool)

(assert (=> b!1515847 m!1780784))

(declare-fun condSetEmpty!9239 () Bool)

(assert (=> setNonEmpty!9216 (= condSetEmpty!9239 (= setRest!9216 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9239 () Bool)

(assert (=> setNonEmpty!9216 (= tp!433858 setRes!9239)))

(declare-fun setIsEmpty!9239 () Bool)

(assert (=> setIsEmpty!9239 setRes!9239))

(declare-fun e!969483 () Bool)

(declare-fun setNonEmpty!9239 () Bool)

(declare-fun setElem!9239 () Context!1362)

(declare-fun tp!434033 () Bool)

(assert (=> setNonEmpty!9239 (= setRes!9239 (and tp!434033 (inv!21347 setElem!9239) e!969483))))

(declare-fun setRest!9239 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9239 (= setRest!9216 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9239 true) setRest!9239))))

(declare-fun b!1515850 () Bool)

(declare-fun tp!434034 () Bool)

(assert (=> b!1515850 (= e!969483 tp!434034)))

(assert (= (and setNonEmpty!9216 condSetEmpty!9239) setIsEmpty!9239))

(assert (= (and setNonEmpty!9216 (not condSetEmpty!9239)) setNonEmpty!9239))

(assert (= setNonEmpty!9239 b!1515850))

(declare-fun m!1780786 () Bool)

(assert (=> setNonEmpty!9239 m!1780786))

(declare-fun condSetEmpty!9240 () Bool)

(assert (=> setNonEmpty!9207 (= condSetEmpty!9240 (= setRest!9206 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9240 () Bool)

(assert (=> setNonEmpty!9207 (= tp!433818 setRes!9240)))

(declare-fun setIsEmpty!9240 () Bool)

(assert (=> setIsEmpty!9240 setRes!9240))

(declare-fun e!969484 () Bool)

(declare-fun setNonEmpty!9240 () Bool)

(declare-fun tp!434035 () Bool)

(declare-fun setElem!9240 () Context!1362)

(assert (=> setNonEmpty!9240 (= setRes!9240 (and tp!434035 (inv!21347 setElem!9240) e!969484))))

(declare-fun setRest!9240 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9240 (= setRest!9206 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9240 true) setRest!9240))))

(declare-fun b!1515851 () Bool)

(declare-fun tp!434036 () Bool)

(assert (=> b!1515851 (= e!969484 tp!434036)))

(assert (= (and setNonEmpty!9207 condSetEmpty!9240) setIsEmpty!9240))

(assert (= (and setNonEmpty!9207 (not condSetEmpty!9240)) setNonEmpty!9240))

(assert (= setNonEmpty!9240 b!1515851))

(declare-fun m!1780788 () Bool)

(assert (=> setNonEmpty!9240 m!1780788))

(declare-fun setIsEmpty!9241 () Bool)

(declare-fun setRes!9241 () Bool)

(assert (=> setIsEmpty!9241 setRes!9241))

(declare-fun e!969487 () Bool)

(assert (=> b!1514781 (= tp!433767 e!969487)))

(declare-fun e!969486 () Bool)

(declare-fun tp!434038 () Bool)

(declare-fun setElem!9241 () Context!1362)

(declare-fun setNonEmpty!9241 () Bool)

(assert (=> setNonEmpty!9241 (= setRes!9241 (and tp!434038 (inv!21347 setElem!9241) e!969486))))

(declare-fun setRest!9241 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9241 (= (_2!8519 (h!21500 (t!139451 mapValue!7052))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9241 true) setRest!9241))))

(declare-fun tp!434040 () Bool)

(declare-fun e!969485 () Bool)

(declare-fun b!1515852 () Bool)

(assert (=> b!1515852 (= e!969487 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 (t!139451 mapValue!7052))))) e!969485 tp_is_empty!7017 setRes!9241 tp!434040))))

(declare-fun condSetEmpty!9241 () Bool)

(assert (=> b!1515852 (= condSetEmpty!9241 (= (_2!8519 (h!21500 (t!139451 mapValue!7052))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515853 () Bool)

(declare-fun tp!434037 () Bool)

(assert (=> b!1515853 (= e!969485 tp!434037)))

(declare-fun b!1515854 () Bool)

(declare-fun tp!434039 () Bool)

(assert (=> b!1515854 (= e!969486 tp!434039)))

(assert (= b!1515852 b!1515853))

(assert (= (and b!1515852 condSetEmpty!9241) setIsEmpty!9241))

(assert (= (and b!1515852 (not condSetEmpty!9241)) setNonEmpty!9241))

(assert (= setNonEmpty!9241 b!1515854))

(assert (= (and b!1514781 ((_ is Cons!16099) (t!139451 mapValue!7052))) b!1515852))

(declare-fun m!1780790 () Bool)

(assert (=> setNonEmpty!9241 m!1780790))

(declare-fun m!1780792 () Bool)

(assert (=> b!1515852 m!1780792))

(declare-fun b!1515855 () Bool)

(declare-fun e!969488 () Bool)

(declare-fun tp!434041 () Bool)

(declare-fun tp!434042 () Bool)

(assert (=> b!1515855 (= e!969488 (and tp!434041 tp!434042))))

(assert (=> b!1514794 (= tp!433780 e!969488)))

(assert (= (and b!1514794 ((_ is Cons!16098) (exprs!1181 (_2!8521 (_1!8522 (h!21504 mapDefault!7052)))))) b!1515855))

(declare-fun condSetEmpty!9242 () Bool)

(assert (=> setNonEmpty!9217 (= condSetEmpty!9242 (= setRest!9217 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9242 () Bool)

(assert (=> setNonEmpty!9217 (= tp!433861 setRes!9242)))

(declare-fun setIsEmpty!9242 () Bool)

(assert (=> setIsEmpty!9242 setRes!9242))

(declare-fun setElem!9242 () Context!1362)

(declare-fun e!969489 () Bool)

(declare-fun setNonEmpty!9242 () Bool)

(declare-fun tp!434043 () Bool)

(assert (=> setNonEmpty!9242 (= setRes!9242 (and tp!434043 (inv!21347 setElem!9242) e!969489))))

(declare-fun setRest!9242 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9242 (= setRest!9217 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9242 true) setRest!9242))))

(declare-fun b!1515856 () Bool)

(declare-fun tp!434044 () Bool)

(assert (=> b!1515856 (= e!969489 tp!434044)))

(assert (= (and setNonEmpty!9217 condSetEmpty!9242) setIsEmpty!9242))

(assert (= (and setNonEmpty!9217 (not condSetEmpty!9242)) setNonEmpty!9242))

(assert (= setNonEmpty!9242 b!1515856))

(declare-fun m!1780794 () Bool)

(assert (=> setNonEmpty!9242 m!1780794))

(declare-fun b!1515857 () Bool)

(declare-fun e!969490 () Bool)

(declare-fun tp!434045 () Bool)

(declare-fun tp!434046 () Bool)

(assert (=> b!1515857 (= e!969490 (and tp!434045 tp!434046))))

(assert (=> b!1514752 (= tp!433728 e!969490)))

(assert (= (and b!1514752 ((_ is Cons!16098) (exprs!1181 setElem!9189))) b!1515857))

(declare-fun b!1515858 () Bool)

(declare-fun e!969491 () Bool)

(declare-fun tp!434047 () Bool)

(declare-fun tp!434048 () Bool)

(assert (=> b!1515858 (= e!969491 (and tp!434047 tp!434048))))

(assert (=> b!1514822 (= tp!433816 e!969491)))

(assert (= (and b!1514822 ((_ is Cons!16098) (exprs!1181 setElem!9206))) b!1515858))

(declare-fun b!1515859 () Bool)

(declare-fun e!969492 () Bool)

(assert (=> b!1515859 (= e!969492 tp_is_empty!7017)))

(declare-fun b!1515860 () Bool)

(declare-fun tp!434052 () Bool)

(declare-fun tp!434050 () Bool)

(assert (=> b!1515860 (= e!969492 (and tp!434052 tp!434050))))

(assert (=> b!1514827 (= tp!433825 e!969492)))

(declare-fun b!1515861 () Bool)

(declare-fun tp!434051 () Bool)

(assert (=> b!1515861 (= e!969492 tp!434051)))

(declare-fun b!1515862 () Bool)

(declare-fun tp!434053 () Bool)

(declare-fun tp!434049 () Bool)

(assert (=> b!1515862 (= e!969492 (and tp!434053 tp!434049))))

(assert (= (and b!1514827 ((_ is ElementMatch!4163) (_1!8521 (_1!8522 (h!21504 mapValue!7050))))) b!1515859))

(assert (= (and b!1514827 ((_ is Concat!7100) (_1!8521 (_1!8522 (h!21504 mapValue!7050))))) b!1515860))

(assert (= (and b!1514827 ((_ is Star!4163) (_1!8521 (_1!8522 (h!21504 mapValue!7050))))) b!1515861))

(assert (= (and b!1514827 ((_ is Union!4163) (_1!8521 (_1!8522 (h!21504 mapValue!7050))))) b!1515862))

(declare-fun b!1515863 () Bool)

(declare-fun e!969495 () Bool)

(declare-fun tp!434055 () Bool)

(assert (=> b!1515863 (= e!969495 tp!434055)))

(declare-fun setIsEmpty!9243 () Bool)

(declare-fun setRes!9243 () Bool)

(assert (=> setIsEmpty!9243 setRes!9243))

(declare-fun e!969494 () Bool)

(assert (=> b!1514827 (= tp!433828 e!969494)))

(declare-fun tp!434058 () Bool)

(declare-fun setNonEmpty!9243 () Bool)

(declare-fun setElem!9243 () Context!1362)

(assert (=> setNonEmpty!9243 (= setRes!9243 (and tp!434058 (inv!21347 setElem!9243) e!969495))))

(declare-fun setRest!9243 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9243 (= (_2!8522 (h!21504 (t!139455 mapValue!7050))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9243 true) setRest!9243))))

(declare-fun tp!434057 () Bool)

(declare-fun e!969493 () Bool)

(declare-fun b!1515864 () Bool)

(declare-fun tp!434054 () Bool)

(assert (=> b!1515864 (= e!969494 (and tp!434054 (inv!21347 (_2!8521 (_1!8522 (h!21504 (t!139455 mapValue!7050))))) e!969493 tp_is_empty!7017 setRes!9243 tp!434057))))

(declare-fun condSetEmpty!9243 () Bool)

(assert (=> b!1515864 (= condSetEmpty!9243 (= (_2!8522 (h!21504 (t!139455 mapValue!7050))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515865 () Bool)

(declare-fun tp!434056 () Bool)

(assert (=> b!1515865 (= e!969493 tp!434056)))

(assert (= b!1515864 b!1515865))

(assert (= (and b!1515864 condSetEmpty!9243) setIsEmpty!9243))

(assert (= (and b!1515864 (not condSetEmpty!9243)) setNonEmpty!9243))

(assert (= setNonEmpty!9243 b!1515863))

(assert (= (and b!1514827 ((_ is Cons!16103) (t!139455 mapValue!7050))) b!1515864))

(declare-fun m!1780796 () Bool)

(assert (=> setNonEmpty!9243 m!1780796))

(declare-fun m!1780798 () Bool)

(assert (=> b!1515864 m!1780798))

(declare-fun b!1515866 () Bool)

(declare-fun e!969496 () Bool)

(declare-fun tp!434059 () Bool)

(declare-fun tp!434060 () Bool)

(assert (=> b!1515866 (= e!969496 (and tp!434059 tp!434060))))

(assert (=> b!1514750 (= tp!433725 e!969496)))

(assert (= (and b!1514750 ((_ is Cons!16098) (exprs!1181 setElem!9188))) b!1515866))

(declare-fun b!1515869 () Bool)

(declare-fun b_free!39343 () Bool)

(declare-fun b_next!40047 () Bool)

(assert (=> b!1515869 (= b_free!39343 (not b_next!40047))))

(declare-fun tp!434063 () Bool)

(declare-fun b_and!105363 () Bool)

(assert (=> b!1515869 (= tp!434063 b_and!105363)))

(declare-fun b_free!39345 () Bool)

(declare-fun b_next!40049 () Bool)

(assert (=> b!1515869 (= b_free!39345 (not b_next!40049))))

(declare-fun t!139472 () Bool)

(declare-fun tb!86213 () Bool)

(assert (=> (and b!1515869 (= (toChars!4057 (transformation!2847 (h!21506 (t!139457 (t!139457 rules!1640))))) (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) t!139472) tb!86213))

(declare-fun result!103764 () Bool)

(assert (= result!103764 result!103730))

(assert (=> d!448361 t!139472))

(declare-fun tp!434062 () Bool)

(declare-fun b_and!105365 () Bool)

(assert (=> b!1515869 (= tp!434062 (and (=> t!139472 result!103764) b_and!105365))))

(declare-fun e!969499 () Bool)

(assert (=> b!1515869 (= e!969499 (and tp!434063 tp!434062))))

(declare-fun tp!434061 () Bool)

(declare-fun e!969500 () Bool)

(declare-fun b!1515868 () Bool)

(assert (=> b!1515868 (= e!969500 (and tp!434061 (inv!21332 (tag!3111 (h!21506 (t!139457 (t!139457 rules!1640))))) (inv!21342 (transformation!2847 (h!21506 (t!139457 (t!139457 rules!1640))))) e!969499))))

(declare-fun b!1515867 () Bool)

(declare-fun e!969497 () Bool)

(declare-fun tp!434064 () Bool)

(assert (=> b!1515867 (= e!969497 (and e!969500 tp!434064))))

(assert (=> b!1514726 (= tp!433701 e!969497)))

(assert (= b!1515868 b!1515869))

(assert (= b!1515867 b!1515868))

(assert (= (and b!1514726 ((_ is Cons!16105) (t!139457 (t!139457 rules!1640)))) b!1515867))

(declare-fun m!1780800 () Bool)

(assert (=> b!1515868 m!1780800))

(declare-fun m!1780802 () Bool)

(assert (=> b!1515868 m!1780802))

(declare-fun b!1515870 () Bool)

(declare-fun e!969501 () Bool)

(declare-fun tp!434065 () Bool)

(assert (=> b!1515870 (= e!969501 (and tp_is_empty!7017 tp!434065))))

(assert (=> b!1514847 (= tp!433855 e!969501)))

(assert (= (and b!1514847 ((_ is Cons!16101) (innerList!5506 (xs!8229 (c!248131 treated!70))))) b!1515870))

(declare-fun b!1515871 () Bool)

(declare-fun e!969502 () Bool)

(declare-fun tp!434066 () Bool)

(declare-fun tp!434067 () Bool)

(assert (=> b!1515871 (= e!969502 (and tp!434066 tp!434067))))

(assert (=> b!1514849 (= tp!433857 e!969502)))

(assert (= (and b!1514849 ((_ is Cons!16098) (exprs!1181 (_1!8518 (_1!8519 (h!21500 mapDefault!7051)))))) b!1515871))

(declare-fun b!1515872 () Bool)

(declare-fun e!969503 () Bool)

(declare-fun tp!434068 () Bool)

(declare-fun tp!434069 () Bool)

(assert (=> b!1515872 (= e!969503 (and tp!434068 tp!434069))))

(assert (=> b!1514768 (= tp!433750 e!969503)))

(assert (= (and b!1514768 ((_ is Cons!16098) (exprs!1181 (_1!8518 (_1!8519 (h!21500 mapValue!7055)))))) b!1515872))

(declare-fun e!969505 () Bool)

(assert (=> b!1514841 (= tp!433846 e!969505)))

(declare-fun setIsEmpty!9244 () Bool)

(declare-fun setRes!9244 () Bool)

(assert (=> setIsEmpty!9244 setRes!9244))

(declare-fun e!969504 () Bool)

(declare-fun setElem!9244 () Context!1362)

(declare-fun tp!434070 () Bool)

(declare-fun setNonEmpty!9244 () Bool)

(assert (=> setNonEmpty!9244 (= setRes!9244 (and tp!434070 (inv!21347 setElem!9244) e!969504))))

(declare-fun setRest!9244 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9244 (= (_1!8523 (_1!8524 (h!21505 (t!139456 mapDefault!7061)))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9244 true) setRest!9244))))

(declare-fun b!1515873 () Bool)

(declare-fun tp!434071 () Bool)

(assert (=> b!1515873 (= e!969505 (and setRes!9244 tp!434071))))

(declare-fun condSetEmpty!9244 () Bool)

(assert (=> b!1515873 (= condSetEmpty!9244 (= (_1!8523 (_1!8524 (h!21505 (t!139456 mapDefault!7061)))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515874 () Bool)

(declare-fun tp!434072 () Bool)

(assert (=> b!1515874 (= e!969504 tp!434072)))

(assert (= (and b!1515873 condSetEmpty!9244) setIsEmpty!9244))

(assert (= (and b!1515873 (not condSetEmpty!9244)) setNonEmpty!9244))

(assert (= setNonEmpty!9244 b!1515874))

(assert (= (and b!1514841 ((_ is Cons!16104) (t!139456 mapDefault!7061))) b!1515873))

(declare-fun m!1780804 () Bool)

(assert (=> setNonEmpty!9244 m!1780804))

(declare-fun e!969507 () Bool)

(assert (=> b!1514843 (= tp!433852 e!969507)))

(declare-fun setIsEmpty!9245 () Bool)

(declare-fun setRes!9245 () Bool)

(assert (=> setIsEmpty!9245 setRes!9245))

(declare-fun setElem!9245 () Context!1362)

(declare-fun e!969506 () Bool)

(declare-fun tp!434073 () Bool)

(declare-fun setNonEmpty!9245 () Bool)

(assert (=> setNonEmpty!9245 (= setRes!9245 (and tp!434073 (inv!21347 setElem!9245) e!969506))))

(declare-fun setRest!9245 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9245 (= (_1!8523 (_1!8524 (h!21505 (t!139456 mapValue!7051)))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9245 true) setRest!9245))))

(declare-fun b!1515875 () Bool)

(declare-fun tp!434074 () Bool)

(assert (=> b!1515875 (= e!969507 (and setRes!9245 tp!434074))))

(declare-fun condSetEmpty!9245 () Bool)

(assert (=> b!1515875 (= condSetEmpty!9245 (= (_1!8523 (_1!8524 (h!21505 (t!139456 mapValue!7051)))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515876 () Bool)

(declare-fun tp!434075 () Bool)

(assert (=> b!1515876 (= e!969506 tp!434075)))

(assert (= (and b!1515875 condSetEmpty!9245) setIsEmpty!9245))

(assert (= (and b!1515875 (not condSetEmpty!9245)) setNonEmpty!9245))

(assert (= setNonEmpty!9245 b!1515876))

(assert (= (and b!1514843 ((_ is Cons!16104) (t!139456 mapValue!7051))) b!1515875))

(declare-fun m!1780806 () Bool)

(assert (=> setNonEmpty!9245 m!1780806))

(declare-fun b!1515877 () Bool)

(declare-fun e!969508 () Bool)

(declare-fun tp!434076 () Bool)

(declare-fun tp!434077 () Bool)

(assert (=> b!1515877 (= e!969508 (and tp!434076 tp!434077))))

(assert (=> b!1514840 (= tp!433850 e!969508)))

(assert (= (and b!1514840 ((_ is Cons!16098) (exprs!1181 setElem!9213))) b!1515877))

(declare-fun b!1515878 () Bool)

(declare-fun e!969509 () Bool)

(declare-fun tp!434078 () Bool)

(declare-fun tp!434079 () Bool)

(assert (=> b!1515878 (= e!969509 (and tp!434078 tp!434079))))

(assert (=> b!1514821 (= tp!433821 e!969509)))

(assert (= (and b!1514821 ((_ is Cons!16098) (exprs!1181 (_2!8521 (_1!8522 (h!21504 mapValue!7058)))))) b!1515878))

(declare-fun e!969511 () Bool)

(assert (=> b!1514751 (= tp!433727 e!969511)))

(declare-fun setIsEmpty!9246 () Bool)

(declare-fun setRes!9246 () Bool)

(assert (=> setIsEmpty!9246 setRes!9246))

(declare-fun setElem!9246 () Context!1362)

(declare-fun tp!434080 () Bool)

(declare-fun setNonEmpty!9246 () Bool)

(declare-fun e!969510 () Bool)

(assert (=> setNonEmpty!9246 (= setRes!9246 (and tp!434080 (inv!21347 setElem!9246) e!969510))))

(declare-fun setRest!9246 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9246 (= (_1!8523 (_1!8524 (h!21505 (t!139456 (minValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64)))))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9246 true) setRest!9246))))

(declare-fun b!1515879 () Bool)

(declare-fun tp!434081 () Bool)

(assert (=> b!1515879 (= e!969511 (and setRes!9246 tp!434081))))

(declare-fun condSetEmpty!9246 () Bool)

(assert (=> b!1515879 (= condSetEmpty!9246 (= (_1!8523 (_1!8524 (h!21505 (t!139456 (minValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64)))))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515880 () Bool)

(declare-fun tp!434082 () Bool)

(assert (=> b!1515880 (= e!969510 tp!434082)))

(assert (= (and b!1515879 condSetEmpty!9246) setIsEmpty!9246))

(assert (= (and b!1515879 (not condSetEmpty!9246)) setNonEmpty!9246))

(assert (= setNonEmpty!9246 b!1515880))

(assert (= (and b!1514751 ((_ is Cons!16104) (t!139456 (minValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))))) b!1515879))

(declare-fun m!1780808 () Bool)

(assert (=> setNonEmpty!9246 m!1780808))

(declare-fun b!1515881 () Bool)

(declare-fun e!969512 () Bool)

(declare-fun tp!434083 () Bool)

(declare-fun tp!434084 () Bool)

(assert (=> b!1515881 (= e!969512 (and tp!434083 tp!434084))))

(assert (=> b!1514854 (= tp!433864 e!969512)))

(assert (= (and b!1514854 ((_ is Cons!16098) (exprs!1181 (_1!8518 (_1!8519 (h!21500 (zeroValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616)))))))))))) b!1515881))

(declare-fun condSetEmpty!9247 () Bool)

(assert (=> setNonEmpty!9195 (= condSetEmpty!9247 (= setRest!9195 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9247 () Bool)

(assert (=> setNonEmpty!9195 (= tp!433747 setRes!9247)))

(declare-fun setIsEmpty!9247 () Bool)

(assert (=> setIsEmpty!9247 setRes!9247))

(declare-fun tp!434085 () Bool)

(declare-fun setNonEmpty!9247 () Bool)

(declare-fun e!969513 () Bool)

(declare-fun setElem!9247 () Context!1362)

(assert (=> setNonEmpty!9247 (= setRes!9247 (and tp!434085 (inv!21347 setElem!9247) e!969513))))

(declare-fun setRest!9247 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9247 (= setRest!9195 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9247 true) setRest!9247))))

(declare-fun b!1515882 () Bool)

(declare-fun tp!434086 () Bool)

(assert (=> b!1515882 (= e!969513 tp!434086)))

(assert (= (and setNonEmpty!9195 condSetEmpty!9247) setIsEmpty!9247))

(assert (= (and setNonEmpty!9195 (not condSetEmpty!9247)) setNonEmpty!9247))

(assert (= setNonEmpty!9247 b!1515882))

(declare-fun m!1780810 () Bool)

(assert (=> setNonEmpty!9247 m!1780810))

(declare-fun setIsEmpty!9248 () Bool)

(declare-fun setRes!9249 () Bool)

(assert (=> setIsEmpty!9248 setRes!9249))

(declare-fun b!1515883 () Bool)

(declare-fun e!969514 () Bool)

(declare-fun tp!434090 () Bool)

(assert (=> b!1515883 (= e!969514 (and setRes!9249 tp!434090))))

(declare-fun condSetEmpty!9248 () Bool)

(declare-fun mapValue!7063 () List!16172)

(assert (=> b!1515883 (= condSetEmpty!9248 (= (_1!8523 (_1!8524 (h!21505 mapValue!7063))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515884 () Bool)

(declare-fun e!969517 () Bool)

(declare-fun tp!434093 () Bool)

(assert (=> b!1515884 (= e!969517 tp!434093)))

(declare-fun setNonEmpty!9248 () Bool)

(declare-fun setRes!9248 () Bool)

(declare-fun tp!434088 () Bool)

(declare-fun setElem!9248 () Context!1362)

(assert (=> setNonEmpty!9248 (= setRes!9248 (and tp!434088 (inv!21347 setElem!9248) e!969517))))

(declare-fun mapDefault!7063 () List!16172)

(declare-fun setRest!9249 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9248 (= (_1!8523 (_1!8524 (h!21505 mapDefault!7063))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9248 true) setRest!9249))))

(declare-fun b!1515885 () Bool)

(declare-fun e!969515 () Bool)

(declare-fun tp!434089 () Bool)

(assert (=> b!1515885 (= e!969515 (and setRes!9248 tp!434089))))

(declare-fun condSetEmpty!9249 () Bool)

(assert (=> b!1515885 (= condSetEmpty!9249 (= (_1!8523 (_1!8524 (h!21505 mapDefault!7063))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun condMapEmpty!7063 () Bool)

(assert (=> mapNonEmpty!7061 (= condMapEmpty!7063 (= mapRest!7061 ((as const (Array (_ BitVec 32) List!16172)) mapDefault!7063)))))

(declare-fun mapRes!7063 () Bool)

(assert (=> mapNonEmpty!7061 (= tp!433848 (and e!969515 mapRes!7063))))

(declare-fun setElem!9249 () Context!1362)

(declare-fun e!969516 () Bool)

(declare-fun setNonEmpty!9249 () Bool)

(declare-fun tp!434092 () Bool)

(assert (=> setNonEmpty!9249 (= setRes!9249 (and tp!434092 (inv!21347 setElem!9249) e!969516))))

(declare-fun setRest!9248 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9249 (= (_1!8523 (_1!8524 (h!21505 mapValue!7063))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9249 true) setRest!9248))))

(declare-fun b!1515886 () Bool)

(declare-fun tp!434087 () Bool)

(assert (=> b!1515886 (= e!969516 tp!434087)))

(declare-fun mapIsEmpty!7063 () Bool)

(assert (=> mapIsEmpty!7063 mapRes!7063))

(declare-fun mapNonEmpty!7063 () Bool)

(declare-fun tp!434091 () Bool)

(assert (=> mapNonEmpty!7063 (= mapRes!7063 (and tp!434091 e!969514))))

(declare-fun mapKey!7063 () (_ BitVec 32))

(declare-fun mapRest!7063 () (Array (_ BitVec 32) List!16172))

(assert (=> mapNonEmpty!7063 (= mapRest!7061 (store mapRest!7063 mapKey!7063 mapValue!7063))))

(declare-fun setIsEmpty!9249 () Bool)

(assert (=> setIsEmpty!9249 setRes!9248))

(assert (= (and mapNonEmpty!7061 condMapEmpty!7063) mapIsEmpty!7063))

(assert (= (and mapNonEmpty!7061 (not condMapEmpty!7063)) mapNonEmpty!7063))

(assert (= (and b!1515883 condSetEmpty!9248) setIsEmpty!9248))

(assert (= (and b!1515883 (not condSetEmpty!9248)) setNonEmpty!9249))

(assert (= setNonEmpty!9249 b!1515886))

(assert (= (and mapNonEmpty!7063 ((_ is Cons!16104) mapValue!7063)) b!1515883))

(assert (= (and b!1515885 condSetEmpty!9249) setIsEmpty!9249))

(assert (= (and b!1515885 (not condSetEmpty!9249)) setNonEmpty!9248))

(assert (= setNonEmpty!9248 b!1515884))

(assert (= (and mapNonEmpty!7061 ((_ is Cons!16104) mapDefault!7063)) b!1515885))

(declare-fun m!1780812 () Bool)

(assert (=> setNonEmpty!9248 m!1780812))

(declare-fun m!1780814 () Bool)

(assert (=> setNonEmpty!9249 m!1780814))

(declare-fun m!1780816 () Bool)

(assert (=> mapNonEmpty!7063 m!1780816))

(declare-fun condSetEmpty!9250 () Bool)

(assert (=> setNonEmpty!9206 (= condSetEmpty!9250 (= setRest!9207 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9250 () Bool)

(assert (=> setNonEmpty!9206 (= tp!433823 setRes!9250)))

(declare-fun setIsEmpty!9250 () Bool)

(assert (=> setIsEmpty!9250 setRes!9250))

(declare-fun e!969518 () Bool)

(declare-fun setNonEmpty!9250 () Bool)

(declare-fun tp!434094 () Bool)

(declare-fun setElem!9250 () Context!1362)

(assert (=> setNonEmpty!9250 (= setRes!9250 (and tp!434094 (inv!21347 setElem!9250) e!969518))))

(declare-fun setRest!9250 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9250 (= setRest!9207 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9250 true) setRest!9250))))

(declare-fun b!1515887 () Bool)

(declare-fun tp!434095 () Bool)

(assert (=> b!1515887 (= e!969518 tp!434095)))

(assert (= (and setNonEmpty!9206 condSetEmpty!9250) setIsEmpty!9250))

(assert (= (and setNonEmpty!9206 (not condSetEmpty!9250)) setNonEmpty!9250))

(assert (= setNonEmpty!9250 b!1515887))

(declare-fun m!1780818 () Bool)

(assert (=> setNonEmpty!9250 m!1780818))

(declare-fun b!1515888 () Bool)

(declare-fun e!969519 () Bool)

(declare-fun tp!434096 () Bool)

(declare-fun tp!434097 () Bool)

(assert (=> b!1515888 (= e!969519 (and tp!434096 tp!434097))))

(assert (=> b!1514858 (= tp!433870 e!969519)))

(assert (= (and b!1514858 ((_ is Cons!16098) (exprs!1181 setElem!9219))) b!1515888))

(declare-fun condSetEmpty!9251 () Bool)

(assert (=> setNonEmpty!9194 (= condSetEmpty!9251 (= setRest!9194 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9251 () Bool)

(assert (=> setNonEmpty!9194 (= tp!433753 setRes!9251)))

(declare-fun setIsEmpty!9251 () Bool)

(assert (=> setIsEmpty!9251 setRes!9251))

(declare-fun setNonEmpty!9251 () Bool)

(declare-fun e!969520 () Bool)

(declare-fun tp!434098 () Bool)

(declare-fun setElem!9251 () Context!1362)

(assert (=> setNonEmpty!9251 (= setRes!9251 (and tp!434098 (inv!21347 setElem!9251) e!969520))))

(declare-fun setRest!9251 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9251 (= setRest!9194 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9251 true) setRest!9251))))

(declare-fun b!1515889 () Bool)

(declare-fun tp!434099 () Bool)

(assert (=> b!1515889 (= e!969520 tp!434099)))

(assert (= (and setNonEmpty!9194 condSetEmpty!9251) setIsEmpty!9251))

(assert (= (and setNonEmpty!9194 (not condSetEmpty!9251)) setNonEmpty!9251))

(assert (= setNonEmpty!9251 b!1515889))

(declare-fun m!1780820 () Bool)

(assert (=> setNonEmpty!9251 m!1780820))

(declare-fun condSetEmpty!9252 () Bool)

(assert (=> setNonEmpty!9218 (= condSetEmpty!9252 (= setRest!9218 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9252 () Bool)

(assert (=> setNonEmpty!9218 (= tp!433865 setRes!9252)))

(declare-fun setIsEmpty!9252 () Bool)

(assert (=> setIsEmpty!9252 setRes!9252))

(declare-fun setElem!9252 () Context!1362)

(declare-fun setNonEmpty!9252 () Bool)

(declare-fun tp!434100 () Bool)

(declare-fun e!969521 () Bool)

(assert (=> setNonEmpty!9252 (= setRes!9252 (and tp!434100 (inv!21347 setElem!9252) e!969521))))

(declare-fun setRest!9252 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9252 (= setRest!9218 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9252 true) setRest!9252))))

(declare-fun b!1515890 () Bool)

(declare-fun tp!434101 () Bool)

(assert (=> b!1515890 (= e!969521 tp!434101)))

(assert (= (and setNonEmpty!9218 condSetEmpty!9252) setIsEmpty!9252))

(assert (= (and setNonEmpty!9218 (not condSetEmpty!9252)) setNonEmpty!9252))

(assert (= setNonEmpty!9252 b!1515890))

(declare-fun m!1780822 () Bool)

(assert (=> setNonEmpty!9252 m!1780822))

(declare-fun b!1515891 () Bool)

(declare-fun e!969522 () Bool)

(assert (=> b!1515891 (= e!969522 tp_is_empty!7017)))

(declare-fun b!1515892 () Bool)

(declare-fun tp!434105 () Bool)

(declare-fun tp!434103 () Bool)

(assert (=> b!1515892 (= e!969522 (and tp!434105 tp!434103))))

(assert (=> b!1514880 (= tp!433892 e!969522)))

(declare-fun b!1515893 () Bool)

(declare-fun tp!434104 () Bool)

(assert (=> b!1515893 (= e!969522 tp!434104)))

(declare-fun b!1515894 () Bool)

(declare-fun tp!434106 () Bool)

(declare-fun tp!434102 () Bool)

(assert (=> b!1515894 (= e!969522 (and tp!434106 tp!434102))))

(assert (= (and b!1514880 ((_ is ElementMatch!4163) (_1!8521 (_1!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) b!1515891))

(assert (= (and b!1514880 ((_ is Concat!7100) (_1!8521 (_1!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) b!1515892))

(assert (= (and b!1514880 ((_ is Star!4163) (_1!8521 (_1!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) b!1515893))

(assert (= (and b!1514880 ((_ is Union!4163) (_1!8521 (_1!8522 (h!21504 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) b!1515894))

(declare-fun b!1515895 () Bool)

(declare-fun e!969525 () Bool)

(declare-fun tp!434108 () Bool)

(assert (=> b!1515895 (= e!969525 tp!434108)))

(declare-fun setIsEmpty!9253 () Bool)

(declare-fun setRes!9253 () Bool)

(assert (=> setIsEmpty!9253 setRes!9253))

(declare-fun e!969524 () Bool)

(assert (=> b!1514880 (= tp!433895 e!969524)))

(declare-fun setElem!9253 () Context!1362)

(declare-fun setNonEmpty!9253 () Bool)

(declare-fun tp!434111 () Bool)

(assert (=> setNonEmpty!9253 (= setRes!9253 (and tp!434111 (inv!21347 setElem!9253) e!969525))))

(declare-fun setRest!9253 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9253 (= (_2!8522 (h!21504 (t!139455 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9253 true) setRest!9253))))

(declare-fun tp!434107 () Bool)

(declare-fun b!1515896 () Bool)

(declare-fun tp!434110 () Bool)

(declare-fun e!969523 () Bool)

(assert (=> b!1515896 (= e!969524 (and tp!434107 (inv!21347 (_2!8521 (_1!8522 (h!21504 (t!139455 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) e!969523 tp_is_empty!7017 setRes!9253 tp!434110))))

(declare-fun condSetEmpty!9253 () Bool)

(assert (=> b!1515896 (= condSetEmpty!9253 (= (_2!8522 (h!21504 (t!139455 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515897 () Bool)

(declare-fun tp!434109 () Bool)

(assert (=> b!1515897 (= e!969523 tp!434109)))

(assert (= b!1515896 b!1515897))

(assert (= (and b!1515896 condSetEmpty!9253) setIsEmpty!9253))

(assert (= (and b!1515896 (not condSetEmpty!9253)) setNonEmpty!9253))

(assert (= setNonEmpty!9253 b!1515895))

(assert (= (and b!1514880 ((_ is Cons!16103) (t!139455 (minValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))) b!1515896))

(declare-fun m!1780824 () Bool)

(assert (=> setNonEmpty!9253 m!1780824))

(declare-fun m!1780826 () Bool)

(assert (=> b!1515896 m!1780826))

(declare-fun b!1515898 () Bool)

(declare-fun e!969526 () Bool)

(assert (=> b!1515898 (= e!969526 tp_is_empty!7017)))

(declare-fun b!1515899 () Bool)

(declare-fun tp!434115 () Bool)

(declare-fun tp!434113 () Bool)

(assert (=> b!1515899 (= e!969526 (and tp!434115 tp!434113))))

(assert (=> b!1514877 (= tp!433887 e!969526)))

(declare-fun b!1515900 () Bool)

(declare-fun tp!434114 () Bool)

(assert (=> b!1515900 (= e!969526 tp!434114)))

(declare-fun b!1515901 () Bool)

(declare-fun tp!434116 () Bool)

(declare-fun tp!434112 () Bool)

(assert (=> b!1515901 (= e!969526 (and tp!434116 tp!434112))))

(assert (= (and b!1514877 ((_ is ElementMatch!4163) (_1!8521 (_1!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) b!1515898))

(assert (= (and b!1514877 ((_ is Concat!7100) (_1!8521 (_1!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) b!1515899))

(assert (= (and b!1514877 ((_ is Star!4163) (_1!8521 (_1!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) b!1515900))

(assert (= (and b!1514877 ((_ is Union!4163) (_1!8521 (_1!8522 (h!21504 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) b!1515901))

(declare-fun b!1515902 () Bool)

(declare-fun e!969529 () Bool)

(declare-fun tp!434118 () Bool)

(assert (=> b!1515902 (= e!969529 tp!434118)))

(declare-fun setIsEmpty!9254 () Bool)

(declare-fun setRes!9254 () Bool)

(assert (=> setIsEmpty!9254 setRes!9254))

(declare-fun e!969528 () Bool)

(assert (=> b!1514877 (= tp!433890 e!969528)))

(declare-fun setElem!9254 () Context!1362)

(declare-fun tp!434121 () Bool)

(declare-fun setNonEmpty!9254 () Bool)

(assert (=> setNonEmpty!9254 (= setRes!9254 (and tp!434121 (inv!21347 setElem!9254) e!969529))))

(declare-fun setRest!9254 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9254 (= (_2!8522 (h!21504 (t!139455 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9254 true) setRest!9254))))

(declare-fun e!969527 () Bool)

(declare-fun tp!434117 () Bool)

(declare-fun b!1515903 () Bool)

(declare-fun tp!434120 () Bool)

(assert (=> b!1515903 (= e!969528 (and tp!434117 (inv!21347 (_2!8521 (_1!8522 (h!21504 (t!139455 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))))) e!969527 tp_is_empty!7017 setRes!9254 tp!434120))))

(declare-fun condSetEmpty!9254 () Bool)

(assert (=> b!1515903 (= condSetEmpty!9254 (= (_2!8522 (h!21504 (t!139455 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515904 () Bool)

(declare-fun tp!434119 () Bool)

(assert (=> b!1515904 (= e!969527 tp!434119)))

(assert (= b!1515903 b!1515904))

(assert (= (and b!1515903 condSetEmpty!9254) setIsEmpty!9254))

(assert (= (and b!1515903 (not condSetEmpty!9254)) setNonEmpty!9254))

(assert (= setNonEmpty!9254 b!1515902))

(assert (= (and b!1514877 ((_ is Cons!16103) (t!139455 (zeroValue!1746 (v!22911 (underlying!3187 (v!22912 (underlying!3188 (cache!1814 cacheDown!629))))))))) b!1515903))

(declare-fun m!1780828 () Bool)

(assert (=> setNonEmpty!9254 m!1780828))

(declare-fun m!1780830 () Bool)

(assert (=> b!1515903 m!1780830))

(declare-fun b!1515905 () Bool)

(declare-fun e!969530 () Bool)

(declare-fun tp!434122 () Bool)

(declare-fun tp!434123 () Bool)

(assert (=> b!1515905 (= e!969530 (and tp!434122 tp!434123))))

(assert (=> b!1514842 (= tp!433844 e!969530)))

(assert (= (and b!1514842 ((_ is Cons!16098) (exprs!1181 setElem!9214))) b!1515905))

(declare-fun b!1515906 () Bool)

(declare-fun e!969531 () Bool)

(declare-fun tp!434129 () Bool)

(assert (=> b!1515906 (= e!969531 tp!434129)))

(declare-fun mapNonEmpty!7064 () Bool)

(declare-fun mapRes!7064 () Bool)

(declare-fun tp!434130 () Bool)

(declare-fun e!969536 () Bool)

(assert (=> mapNonEmpty!7064 (= mapRes!7064 (and tp!434130 e!969536))))

(declare-fun mapKey!7064 () (_ BitVec 32))

(declare-fun mapRest!7064 () (Array (_ BitVec 32) List!16171))

(declare-fun mapValue!7064 () List!16171)

(assert (=> mapNonEmpty!7064 (= mapRest!7058 (store mapRest!7064 mapKey!7064 mapValue!7064))))

(declare-fun mapIsEmpty!7064 () Bool)

(assert (=> mapIsEmpty!7064 mapRes!7064))

(declare-fun tp!434133 () Bool)

(declare-fun setRes!9255 () Bool)

(declare-fun setNonEmpty!9255 () Bool)

(declare-fun setElem!9255 () Context!1362)

(declare-fun e!969532 () Bool)

(assert (=> setNonEmpty!9255 (= setRes!9255 (and tp!434133 (inv!21347 setElem!9255) e!969532))))

(declare-fun setRest!9256 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9255 (= (_2!8522 (h!21504 mapValue!7064)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9255 true) setRest!9256))))

(declare-fun setIsEmpty!9255 () Bool)

(declare-fun setRes!9256 () Bool)

(assert (=> setIsEmpty!9255 setRes!9256))

(declare-fun b!1515908 () Bool)

(declare-fun tp!434126 () Bool)

(assert (=> b!1515908 (= e!969532 tp!434126)))

(declare-fun mapDefault!7064 () List!16171)

(declare-fun e!969534 () Bool)

(declare-fun tp!434127 () Bool)

(declare-fun e!969533 () Bool)

(declare-fun b!1515909 () Bool)

(declare-fun tp!434125 () Bool)

(assert (=> b!1515909 (= e!969534 (and tp!434127 (inv!21347 (_2!8521 (_1!8522 (h!21504 mapDefault!7064)))) e!969533 tp_is_empty!7017 setRes!9256 tp!434125))))

(declare-fun condSetEmpty!9255 () Bool)

(assert (=> b!1515909 (= condSetEmpty!9255 (= (_2!8522 (h!21504 mapDefault!7064)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun tp!434128 () Bool)

(declare-fun setElem!9256 () Context!1362)

(declare-fun setNonEmpty!9256 () Bool)

(assert (=> setNonEmpty!9256 (= setRes!9256 (and tp!434128 (inv!21347 setElem!9256) e!969531))))

(declare-fun setRest!9255 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9256 (= (_2!8522 (h!21504 mapDefault!7064)) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9256 true) setRest!9255))))

(declare-fun b!1515910 () Bool)

(declare-fun tp!434132 () Bool)

(assert (=> b!1515910 (= e!969533 tp!434132)))

(declare-fun setIsEmpty!9256 () Bool)

(assert (=> setIsEmpty!9256 setRes!9255))

(declare-fun e!969535 () Bool)

(declare-fun tp!434124 () Bool)

(declare-fun tp!434134 () Bool)

(declare-fun b!1515911 () Bool)

(assert (=> b!1515911 (= e!969536 (and tp!434134 (inv!21347 (_2!8521 (_1!8522 (h!21504 mapValue!7064)))) e!969535 tp_is_empty!7017 setRes!9255 tp!434124))))

(declare-fun condSetEmpty!9256 () Bool)

(assert (=> b!1515911 (= condSetEmpty!9256 (= (_2!8522 (h!21504 mapValue!7064)) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun condMapEmpty!7064 () Bool)

(assert (=> mapNonEmpty!7058 (= condMapEmpty!7064 (= mapRest!7058 ((as const (Array (_ BitVec 32) List!16171)) mapDefault!7064)))))

(assert (=> mapNonEmpty!7058 (= tp!433820 (and e!969534 mapRes!7064))))

(declare-fun b!1515907 () Bool)

(declare-fun tp!434131 () Bool)

(assert (=> b!1515907 (= e!969535 tp!434131)))

(assert (= (and mapNonEmpty!7058 condMapEmpty!7064) mapIsEmpty!7064))

(assert (= (and mapNonEmpty!7058 (not condMapEmpty!7064)) mapNonEmpty!7064))

(assert (= b!1515911 b!1515907))

(assert (= (and b!1515911 condSetEmpty!9256) setIsEmpty!9256))

(assert (= (and b!1515911 (not condSetEmpty!9256)) setNonEmpty!9255))

(assert (= setNonEmpty!9255 b!1515908))

(assert (= (and mapNonEmpty!7064 ((_ is Cons!16103) mapValue!7064)) b!1515911))

(assert (= b!1515909 b!1515910))

(assert (= (and b!1515909 condSetEmpty!9255) setIsEmpty!9255))

(assert (= (and b!1515909 (not condSetEmpty!9255)) setNonEmpty!9256))

(assert (= setNonEmpty!9256 b!1515906))

(assert (= (and mapNonEmpty!7058 ((_ is Cons!16103) mapDefault!7064)) b!1515909))

(declare-fun m!1780832 () Bool)

(assert (=> b!1515909 m!1780832))

(declare-fun m!1780834 () Bool)

(assert (=> setNonEmpty!9256 m!1780834))

(declare-fun m!1780836 () Bool)

(assert (=> mapNonEmpty!7064 m!1780836))

(declare-fun m!1780838 () Bool)

(assert (=> b!1515911 m!1780838))

(declare-fun m!1780840 () Bool)

(assert (=> setNonEmpty!9255 m!1780840))

(declare-fun setIsEmpty!9257 () Bool)

(declare-fun setRes!9257 () Bool)

(assert (=> setIsEmpty!9257 setRes!9257))

(declare-fun e!969539 () Bool)

(assert (=> b!1514856 (= tp!433871 e!969539)))

(declare-fun tp!434136 () Bool)

(declare-fun e!969538 () Bool)

(declare-fun setElem!9257 () Context!1362)

(declare-fun setNonEmpty!9257 () Bool)

(assert (=> setNonEmpty!9257 (= setRes!9257 (and tp!434136 (inv!21347 setElem!9257) e!969538))))

(declare-fun setRest!9257 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9257 (= (_2!8519 (h!21500 (t!139451 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9257 true) setRest!9257))))

(declare-fun tp!434138 () Bool)

(declare-fun b!1515912 () Bool)

(declare-fun e!969537 () Bool)

(assert (=> b!1515912 (= e!969539 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 (t!139451 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))))))) e!969537 tp_is_empty!7017 setRes!9257 tp!434138))))

(declare-fun condSetEmpty!9257 () Bool)

(assert (=> b!1515912 (= condSetEmpty!9257 (= (_2!8519 (h!21500 (t!139451 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515913 () Bool)

(declare-fun tp!434135 () Bool)

(assert (=> b!1515913 (= e!969537 tp!434135)))

(declare-fun b!1515914 () Bool)

(declare-fun tp!434137 () Bool)

(assert (=> b!1515914 (= e!969538 tp!434137)))

(assert (= b!1515912 b!1515913))

(assert (= (and b!1515912 condSetEmpty!9257) setIsEmpty!9257))

(assert (= (and b!1515912 (not condSetEmpty!9257)) setNonEmpty!9257))

(assert (= setNonEmpty!9257 b!1515914))

(assert (= (and b!1514856 ((_ is Cons!16099) (t!139451 (minValue!1745 (v!22909 (underlying!3185 (v!22910 (underlying!3186 (cache!1813 cacheUp!616))))))))) b!1515912))

(declare-fun m!1780842 () Bool)

(assert (=> setNonEmpty!9257 m!1780842))

(declare-fun m!1780844 () Bool)

(assert (=> b!1515912 m!1780844))

(declare-fun condSetEmpty!9258 () Bool)

(assert (=> setNonEmpty!9215 (= condSetEmpty!9258 (= setRest!9215 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9258 () Bool)

(assert (=> setNonEmpty!9215 (= tp!433851 setRes!9258)))

(declare-fun setIsEmpty!9258 () Bool)

(assert (=> setIsEmpty!9258 setRes!9258))

(declare-fun e!969540 () Bool)

(declare-fun setElem!9258 () Context!1362)

(declare-fun setNonEmpty!9258 () Bool)

(declare-fun tp!434139 () Bool)

(assert (=> setNonEmpty!9258 (= setRes!9258 (and tp!434139 (inv!21347 setElem!9258) e!969540))))

(declare-fun setRest!9258 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9258 (= setRest!9215 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9258 true) setRest!9258))))

(declare-fun b!1515915 () Bool)

(declare-fun tp!434140 () Bool)

(assert (=> b!1515915 (= e!969540 tp!434140)))

(assert (= (and setNonEmpty!9215 condSetEmpty!9258) setIsEmpty!9258))

(assert (= (and setNonEmpty!9215 (not condSetEmpty!9258)) setNonEmpty!9258))

(assert (= setNonEmpty!9258 b!1515915))

(declare-fun m!1780846 () Bool)

(assert (=> setNonEmpty!9258 m!1780846))

(declare-fun setIsEmpty!9259 () Bool)

(declare-fun setRes!9259 () Bool)

(assert (=> setIsEmpty!9259 setRes!9259))

(declare-fun e!969543 () Bool)

(assert (=> b!1514848 (= tp!433860 e!969543)))

(declare-fun setNonEmpty!9259 () Bool)

(declare-fun tp!434142 () Bool)

(declare-fun setElem!9259 () Context!1362)

(declare-fun e!969542 () Bool)

(assert (=> setNonEmpty!9259 (= setRes!9259 (and tp!434142 (inv!21347 setElem!9259) e!969542))))

(declare-fun setRest!9259 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9259 (= (_2!8519 (h!21500 (t!139451 mapDefault!7051))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9259 true) setRest!9259))))

(declare-fun e!969541 () Bool)

(declare-fun b!1515916 () Bool)

(declare-fun tp!434144 () Bool)

(assert (=> b!1515916 (= e!969543 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 (t!139451 mapDefault!7051))))) e!969541 tp_is_empty!7017 setRes!9259 tp!434144))))

(declare-fun condSetEmpty!9259 () Bool)

(assert (=> b!1515916 (= condSetEmpty!9259 (= (_2!8519 (h!21500 (t!139451 mapDefault!7051))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515917 () Bool)

(declare-fun tp!434141 () Bool)

(assert (=> b!1515917 (= e!969541 tp!434141)))

(declare-fun b!1515918 () Bool)

(declare-fun tp!434143 () Bool)

(assert (=> b!1515918 (= e!969542 tp!434143)))

(assert (= b!1515916 b!1515917))

(assert (= (and b!1515916 condSetEmpty!9259) setIsEmpty!9259))

(assert (= (and b!1515916 (not condSetEmpty!9259)) setNonEmpty!9259))

(assert (= setNonEmpty!9259 b!1515918))

(assert (= (and b!1514848 ((_ is Cons!16099) (t!139451 mapDefault!7051))) b!1515916))

(declare-fun m!1780848 () Bool)

(assert (=> setNonEmpty!9259 m!1780848))

(declare-fun m!1780850 () Bool)

(assert (=> b!1515916 m!1780850))

(declare-fun e!969545 () Bool)

(assert (=> b!1514749 (= tp!433724 e!969545)))

(declare-fun setIsEmpty!9260 () Bool)

(declare-fun setRes!9260 () Bool)

(assert (=> setIsEmpty!9260 setRes!9260))

(declare-fun setElem!9260 () Context!1362)

(declare-fun setNonEmpty!9260 () Bool)

(declare-fun tp!434145 () Bool)

(declare-fun e!969544 () Bool)

(assert (=> setNonEmpty!9260 (= setRes!9260 (and tp!434145 (inv!21347 setElem!9260) e!969544))))

(declare-fun setRest!9260 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9260 (= (_1!8523 (_1!8524 (h!21505 (t!139456 (zeroValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64)))))))))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9260 true) setRest!9260))))

(declare-fun b!1515919 () Bool)

(declare-fun tp!434146 () Bool)

(assert (=> b!1515919 (= e!969545 (and setRes!9260 tp!434146))))

(declare-fun condSetEmpty!9260 () Bool)

(assert (=> b!1515919 (= condSetEmpty!9260 (= (_1!8523 (_1!8524 (h!21505 (t!139456 (zeroValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64)))))))))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515920 () Bool)

(declare-fun tp!434147 () Bool)

(assert (=> b!1515920 (= e!969544 tp!434147)))

(assert (= (and b!1515919 condSetEmpty!9260) setIsEmpty!9260))

(assert (= (and b!1515919 (not condSetEmpty!9260)) setNonEmpty!9260))

(assert (= setNonEmpty!9260 b!1515920))

(assert (= (and b!1514749 ((_ is Cons!16104) (t!139456 (zeroValue!1747 (v!22913 (underlying!3189 (v!22914 (underlying!3190 (cache!1815 cacheFurthestNullable!64))))))))) b!1515919))

(declare-fun m!1780852 () Bool)

(assert (=> setNonEmpty!9260 m!1780852))

(declare-fun b!1515921 () Bool)

(declare-fun e!969546 () Bool)

(declare-fun tp!434148 () Bool)

(declare-fun tp!434149 () Bool)

(assert (=> b!1515921 (= e!969546 (and tp!434148 tp!434149))))

(assert (=> b!1514782 (= tp!433764 e!969546)))

(assert (= (and b!1514782 ((_ is Cons!16098) (exprs!1181 (_1!8518 (_1!8519 (h!21500 mapValue!7052)))))) b!1515921))

(declare-fun b!1515922 () Bool)

(declare-fun e!969547 () Bool)

(assert (=> b!1515922 (= e!969547 tp_is_empty!7017)))

(declare-fun b!1515923 () Bool)

(declare-fun tp!434153 () Bool)

(declare-fun tp!434151 () Bool)

(assert (=> b!1515923 (= e!969547 (and tp!434153 tp!434151))))

(assert (=> b!1514740 (= tp!433715 e!969547)))

(declare-fun b!1515924 () Bool)

(declare-fun tp!434152 () Bool)

(assert (=> b!1515924 (= e!969547 tp!434152)))

(declare-fun b!1515925 () Bool)

(declare-fun tp!434154 () Bool)

(declare-fun tp!434150 () Bool)

(assert (=> b!1515925 (= e!969547 (and tp!434154 tp!434150))))

(assert (= (and b!1514740 ((_ is ElementMatch!4163) (regOne!8838 (regex!2847 (h!21506 rules!1640))))) b!1515922))

(assert (= (and b!1514740 ((_ is Concat!7100) (regOne!8838 (regex!2847 (h!21506 rules!1640))))) b!1515923))

(assert (= (and b!1514740 ((_ is Star!4163) (regOne!8838 (regex!2847 (h!21506 rules!1640))))) b!1515924))

(assert (= (and b!1514740 ((_ is Union!4163) (regOne!8838 (regex!2847 (h!21506 rules!1640))))) b!1515925))

(declare-fun b!1515926 () Bool)

(declare-fun e!969548 () Bool)

(assert (=> b!1515926 (= e!969548 tp_is_empty!7017)))

(declare-fun b!1515927 () Bool)

(declare-fun tp!434158 () Bool)

(declare-fun tp!434156 () Bool)

(assert (=> b!1515927 (= e!969548 (and tp!434158 tp!434156))))

(assert (=> b!1514740 (= tp!433713 e!969548)))

(declare-fun b!1515928 () Bool)

(declare-fun tp!434157 () Bool)

(assert (=> b!1515928 (= e!969548 tp!434157)))

(declare-fun b!1515929 () Bool)

(declare-fun tp!434159 () Bool)

(declare-fun tp!434155 () Bool)

(assert (=> b!1515929 (= e!969548 (and tp!434159 tp!434155))))

(assert (= (and b!1514740 ((_ is ElementMatch!4163) (regTwo!8838 (regex!2847 (h!21506 rules!1640))))) b!1515926))

(assert (= (and b!1514740 ((_ is Concat!7100) (regTwo!8838 (regex!2847 (h!21506 rules!1640))))) b!1515927))

(assert (= (and b!1514740 ((_ is Star!4163) (regTwo!8838 (regex!2847 (h!21506 rules!1640))))) b!1515928))

(assert (= (and b!1514740 ((_ is Union!4163) (regTwo!8838 (regex!2847 (h!21506 rules!1640))))) b!1515929))

(declare-fun b!1515930 () Bool)

(declare-fun e!969549 () Bool)

(declare-fun tp!434160 () Bool)

(declare-fun tp!434161 () Bool)

(assert (=> b!1515930 (= e!969549 (and tp!434160 tp!434161))))

(assert (=> b!1514824 (= tp!433822 e!969549)))

(assert (= (and b!1514824 ((_ is Cons!16098) (exprs!1181 (_2!8521 (_1!8522 (h!21504 mapDefault!7058)))))) b!1515930))

(declare-fun b!1515944 () Bool)

(declare-fun b_free!39347 () Bool)

(declare-fun b_next!40051 () Bool)

(assert (=> b!1515944 (= b_free!39347 (not b_next!40051))))

(declare-fun tp!434173 () Bool)

(declare-fun b_and!105367 () Bool)

(assert (=> b!1515944 (= tp!434173 b_and!105367)))

(declare-fun b_free!39349 () Bool)

(declare-fun b_next!40053 () Bool)

(assert (=> b!1515944 (= b_free!39349 (not b_next!40053))))

(declare-fun tb!86215 () Bool)

(declare-fun t!139474 () Bool)

(assert (=> (and b!1515944 (= (toChars!4057 (transformation!2847 (rule!4640 (h!21503 (innerList!5507 (xs!8230 (c!248132 acc!392))))))) (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) t!139474) tb!86215))

(declare-fun result!103768 () Bool)

(assert (= result!103768 result!103730))

(assert (=> d!448361 t!139474))

(declare-fun b_and!105369 () Bool)

(declare-fun tp!434175 () Bool)

(assert (=> b!1515944 (= tp!434175 (and (=> t!139474 result!103768) b_and!105369))))

(declare-fun e!969564 () Bool)

(declare-fun tp!434176 () Bool)

(declare-fun e!969566 () Bool)

(declare-fun b!1515943 () Bool)

(assert (=> b!1515943 (= e!969564 (and tp!434176 (inv!21332 (tag!3111 (rule!4640 (h!21503 (innerList!5507 (xs!8230 (c!248132 acc!392))))))) (inv!21342 (transformation!2847 (rule!4640 (h!21503 (innerList!5507 (xs!8230 (c!248132 acc!392))))))) e!969566))))

(declare-fun b!1515941 () Bool)

(declare-fun e!969565 () Bool)

(declare-fun tp!434174 () Bool)

(declare-fun e!969563 () Bool)

(declare-fun inv!21350 (Token!5356) Bool)

(assert (=> b!1515941 (= e!969563 (and (inv!21350 (h!21503 (innerList!5507 (xs!8230 (c!248132 acc!392))))) e!969565 tp!434174))))

(assert (=> b!1515944 (= e!969566 (and tp!434173 tp!434175))))

(assert (=> b!1514872 (= tp!433881 e!969563)))

(declare-fun b!1515942 () Bool)

(declare-fun tp!434172 () Bool)

(declare-fun inv!21 (TokenValue!2937) Bool)

(assert (=> b!1515942 (= e!969565 (and (inv!21 (value!90801 (h!21503 (innerList!5507 (xs!8230 (c!248132 acc!392)))))) e!969564 tp!434172))))

(assert (= b!1515943 b!1515944))

(assert (= b!1515942 b!1515943))

(assert (= b!1515941 b!1515942))

(assert (= (and b!1514872 ((_ is Cons!16102) (innerList!5507 (xs!8230 (c!248132 acc!392))))) b!1515941))

(declare-fun m!1780854 () Bool)

(assert (=> b!1515943 m!1780854))

(declare-fun m!1780856 () Bool)

(assert (=> b!1515943 m!1780856))

(declare-fun m!1780858 () Bool)

(assert (=> b!1515941 m!1780858))

(declare-fun m!1780860 () Bool)

(assert (=> b!1515942 m!1780860))

(declare-fun b!1515945 () Bool)

(declare-fun e!969568 () Bool)

(declare-fun tp!434177 () Bool)

(declare-fun tp!434178 () Bool)

(assert (=> b!1515945 (= e!969568 (and tp!434177 tp!434178))))

(assert (=> b!1514771 (= tp!433751 e!969568)))

(assert (= (and b!1514771 ((_ is Cons!16098) (exprs!1181 (_1!8518 (_1!8519 (h!21500 mapDefault!7055)))))) b!1515945))

(declare-fun b!1515946 () Bool)

(declare-fun e!969569 () Bool)

(declare-fun tp!434179 () Bool)

(declare-fun tp!434180 () Bool)

(assert (=> b!1515946 (= e!969569 (and tp!434179 tp!434180))))

(assert (=> b!1514852 (= tp!433863 e!969569)))

(assert (= (and b!1514852 ((_ is Cons!16098) (exprs!1181 setElem!9217))) b!1515946))

(declare-fun tp!434181 () Bool)

(declare-fun b!1515947 () Bool)

(declare-fun tp!434183 () Bool)

(declare-fun e!969570 () Bool)

(assert (=> b!1515947 (= e!969570 (and (inv!21340 (left!13374 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) tp!434183 (inv!21340 (right!13704 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) tp!434181))))

(declare-fun b!1515949 () Bool)

(declare-fun e!969571 () Bool)

(declare-fun tp!434182 () Bool)

(assert (=> b!1515949 (= e!969571 tp!434182)))

(declare-fun b!1515948 () Bool)

(assert (=> b!1515948 (= e!969570 (and (inv!21348 (xs!8229 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) e!969571))))

(assert (=> b!1514636 (= tp!433689 (and (inv!21340 (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577))))))) e!969570))))

(assert (= (and b!1514636 ((_ is Node!5446) (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) b!1515947))

(assert (= b!1515948 b!1515949))

(assert (= (and b!1514636 ((_ is Leaf!8073) (c!248131 (dynLambda!7224 (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))) (value!90801 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) b!1515948))

(declare-fun m!1780862 () Bool)

(assert (=> b!1515947 m!1780862))

(declare-fun m!1780864 () Bool)

(assert (=> b!1515947 m!1780864))

(declare-fun m!1780866 () Bool)

(assert (=> b!1515948 m!1780866))

(assert (=> b!1514636 m!1779031))

(declare-fun condSetEmpty!9261 () Bool)

(assert (=> setNonEmpty!9198 (= condSetEmpty!9261 (= setRest!9198 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9261 () Bool)

(assert (=> setNonEmpty!9198 (= tp!433765 setRes!9261)))

(declare-fun setIsEmpty!9261 () Bool)

(assert (=> setIsEmpty!9261 setRes!9261))

(declare-fun tp!434184 () Bool)

(declare-fun setNonEmpty!9261 () Bool)

(declare-fun e!969572 () Bool)

(declare-fun setElem!9261 () Context!1362)

(assert (=> setNonEmpty!9261 (= setRes!9261 (and tp!434184 (inv!21347 setElem!9261) e!969572))))

(declare-fun setRest!9261 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9261 (= setRest!9198 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9261 true) setRest!9261))))

(declare-fun b!1515950 () Bool)

(declare-fun tp!434185 () Bool)

(assert (=> b!1515950 (= e!969572 tp!434185)))

(assert (= (and setNonEmpty!9198 condSetEmpty!9261) setIsEmpty!9261))

(assert (= (and setNonEmpty!9198 (not condSetEmpty!9261)) setNonEmpty!9261))

(assert (= setNonEmpty!9261 b!1515950))

(declare-fun m!1780868 () Bool)

(assert (=> setNonEmpty!9261 m!1780868))

(declare-fun b!1515951 () Bool)

(declare-fun e!969573 () Bool)

(assert (=> b!1515951 (= e!969573 tp_is_empty!7017)))

(declare-fun b!1515952 () Bool)

(declare-fun tp!434189 () Bool)

(declare-fun tp!434187 () Bool)

(assert (=> b!1515952 (= e!969573 (and tp!434189 tp!434187))))

(assert (=> b!1514823 (= tp!433817 e!969573)))

(declare-fun b!1515953 () Bool)

(declare-fun tp!434188 () Bool)

(assert (=> b!1515953 (= e!969573 tp!434188)))

(declare-fun b!1515954 () Bool)

(declare-fun tp!434190 () Bool)

(declare-fun tp!434186 () Bool)

(assert (=> b!1515954 (= e!969573 (and tp!434190 tp!434186))))

(assert (= (and b!1514823 ((_ is ElementMatch!4163) (_1!8521 (_1!8522 (h!21504 mapDefault!7058))))) b!1515951))

(assert (= (and b!1514823 ((_ is Concat!7100) (_1!8521 (_1!8522 (h!21504 mapDefault!7058))))) b!1515952))

(assert (= (and b!1514823 ((_ is Star!4163) (_1!8521 (_1!8522 (h!21504 mapDefault!7058))))) b!1515953))

(assert (= (and b!1514823 ((_ is Union!4163) (_1!8521 (_1!8522 (h!21504 mapDefault!7058))))) b!1515954))

(declare-fun b!1515955 () Bool)

(declare-fun e!969576 () Bool)

(declare-fun tp!434192 () Bool)

(assert (=> b!1515955 (= e!969576 tp!434192)))

(declare-fun setIsEmpty!9262 () Bool)

(declare-fun setRes!9262 () Bool)

(assert (=> setIsEmpty!9262 setRes!9262))

(declare-fun e!969575 () Bool)

(assert (=> b!1514823 (= tp!433815 e!969575)))

(declare-fun setNonEmpty!9262 () Bool)

(declare-fun setElem!9262 () Context!1362)

(declare-fun tp!434195 () Bool)

(assert (=> setNonEmpty!9262 (= setRes!9262 (and tp!434195 (inv!21347 setElem!9262) e!969576))))

(declare-fun setRest!9262 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9262 (= (_2!8522 (h!21504 (t!139455 mapDefault!7058))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9262 true) setRest!9262))))

(declare-fun b!1515956 () Bool)

(declare-fun tp!434194 () Bool)

(declare-fun tp!434191 () Bool)

(declare-fun e!969574 () Bool)

(assert (=> b!1515956 (= e!969575 (and tp!434191 (inv!21347 (_2!8521 (_1!8522 (h!21504 (t!139455 mapDefault!7058))))) e!969574 tp_is_empty!7017 setRes!9262 tp!434194))))

(declare-fun condSetEmpty!9262 () Bool)

(assert (=> b!1515956 (= condSetEmpty!9262 (= (_2!8522 (h!21504 (t!139455 mapDefault!7058))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515957 () Bool)

(declare-fun tp!434193 () Bool)

(assert (=> b!1515957 (= e!969574 tp!434193)))

(assert (= b!1515956 b!1515957))

(assert (= (and b!1515956 condSetEmpty!9262) setIsEmpty!9262))

(assert (= (and b!1515956 (not condSetEmpty!9262)) setNonEmpty!9262))

(assert (= setNonEmpty!9262 b!1515955))

(assert (= (and b!1514823 ((_ is Cons!16103) (t!139455 mapDefault!7058))) b!1515956))

(declare-fun m!1780870 () Bool)

(assert (=> setNonEmpty!9262 m!1780870))

(declare-fun m!1780872 () Bool)

(assert (=> b!1515956 m!1780872))

(declare-fun e!969577 () Bool)

(declare-fun tp!434197 () Bool)

(declare-fun tp!434198 () Bool)

(declare-fun b!1515958 () Bool)

(assert (=> b!1515958 (= e!969577 (and (inv!21341 (left!13375 (left!13375 (c!248132 acc!392)))) tp!434197 (inv!21341 (right!13705 (left!13375 (c!248132 acc!392)))) tp!434198))))

(declare-fun b!1515960 () Bool)

(declare-fun e!969578 () Bool)

(declare-fun tp!434196 () Bool)

(assert (=> b!1515960 (= e!969578 tp!434196)))

(declare-fun b!1515959 () Bool)

(assert (=> b!1515959 (= e!969577 (and (inv!21349 (xs!8230 (left!13375 (c!248132 acc!392)))) e!969578))))

(assert (=> b!1514870 (= tp!433882 (and (inv!21341 (left!13375 (c!248132 acc!392))) e!969577))))

(assert (= (and b!1514870 ((_ is Node!5447) (left!13375 (c!248132 acc!392)))) b!1515958))

(assert (= b!1515959 b!1515960))

(assert (= (and b!1514870 ((_ is Leaf!8074) (left!13375 (c!248132 acc!392)))) b!1515959))

(declare-fun m!1780874 () Bool)

(assert (=> b!1515958 m!1780874))

(declare-fun m!1780876 () Bool)

(assert (=> b!1515958 m!1780876))

(declare-fun m!1780878 () Bool)

(assert (=> b!1515959 m!1780878))

(assert (=> b!1514870 m!1779315))

(declare-fun b!1515961 () Bool)

(declare-fun tp!434201 () Bool)

(declare-fun e!969579 () Bool)

(declare-fun tp!434200 () Bool)

(assert (=> b!1515961 (= e!969579 (and (inv!21341 (left!13375 (right!13705 (c!248132 acc!392)))) tp!434200 (inv!21341 (right!13705 (right!13705 (c!248132 acc!392)))) tp!434201))))

(declare-fun b!1515963 () Bool)

(declare-fun e!969580 () Bool)

(declare-fun tp!434199 () Bool)

(assert (=> b!1515963 (= e!969580 tp!434199)))

(declare-fun b!1515962 () Bool)

(assert (=> b!1515962 (= e!969579 (and (inv!21349 (xs!8230 (right!13705 (c!248132 acc!392)))) e!969580))))

(assert (=> b!1514870 (= tp!433883 (and (inv!21341 (right!13705 (c!248132 acc!392))) e!969579))))

(assert (= (and b!1514870 ((_ is Node!5447) (right!13705 (c!248132 acc!392)))) b!1515961))

(assert (= b!1515962 b!1515963))

(assert (= (and b!1514870 ((_ is Leaf!8074) (right!13705 (c!248132 acc!392)))) b!1515962))

(declare-fun m!1780880 () Bool)

(assert (=> b!1515961 m!1780880))

(declare-fun m!1780882 () Bool)

(assert (=> b!1515961 m!1780882))

(declare-fun m!1780884 () Bool)

(assert (=> b!1515962 m!1780884))

(assert (=> b!1514870 m!1779317))

(declare-fun condSetEmpty!9263 () Bool)

(assert (=> setNonEmpty!9189 (= condSetEmpty!9263 (= setRest!9189 ((as const (Array Context!1362 Bool)) false)))))

(declare-fun setRes!9263 () Bool)

(assert (=> setNonEmpty!9189 (= tp!433726 setRes!9263)))

(declare-fun setIsEmpty!9263 () Bool)

(assert (=> setIsEmpty!9263 setRes!9263))

(declare-fun setNonEmpty!9263 () Bool)

(declare-fun e!969581 () Bool)

(declare-fun tp!434202 () Bool)

(declare-fun setElem!9263 () Context!1362)

(assert (=> setNonEmpty!9263 (= setRes!9263 (and tp!434202 (inv!21347 setElem!9263) e!969581))))

(declare-fun setRest!9263 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9263 (= setRest!9189 ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9263 true) setRest!9263))))

(declare-fun b!1515964 () Bool)

(declare-fun tp!434203 () Bool)

(assert (=> b!1515964 (= e!969581 tp!434203)))

(assert (= (and setNonEmpty!9189 condSetEmpty!9263) setIsEmpty!9263))

(assert (= (and setNonEmpty!9189 (not condSetEmpty!9263)) setNonEmpty!9263))

(assert (= setNonEmpty!9263 b!1515964))

(declare-fun m!1780886 () Bool)

(assert (=> setNonEmpty!9263 m!1780886))

(declare-fun setIsEmpty!9264 () Bool)

(declare-fun setRes!9264 () Bool)

(assert (=> setIsEmpty!9264 setRes!9264))

(declare-fun e!969584 () Bool)

(assert (=> b!1514770 (= tp!433749 e!969584)))

(declare-fun tp!434205 () Bool)

(declare-fun setNonEmpty!9264 () Bool)

(declare-fun setElem!9264 () Context!1362)

(declare-fun e!969583 () Bool)

(assert (=> setNonEmpty!9264 (= setRes!9264 (and tp!434205 (inv!21347 setElem!9264) e!969583))))

(declare-fun setRest!9264 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9264 (= (_2!8519 (h!21500 (t!139451 mapDefault!7055))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9264 true) setRest!9264))))

(declare-fun tp!434207 () Bool)

(declare-fun e!969582 () Bool)

(declare-fun b!1515965 () Bool)

(assert (=> b!1515965 (= e!969584 (and (inv!21347 (_1!8518 (_1!8519 (h!21500 (t!139451 mapDefault!7055))))) e!969582 tp_is_empty!7017 setRes!9264 tp!434207))))

(declare-fun condSetEmpty!9264 () Bool)

(assert (=> b!1515965 (= condSetEmpty!9264 (= (_2!8519 (h!21500 (t!139451 mapDefault!7055))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515966 () Bool)

(declare-fun tp!434204 () Bool)

(assert (=> b!1515966 (= e!969582 tp!434204)))

(declare-fun b!1515967 () Bool)

(declare-fun tp!434206 () Bool)

(assert (=> b!1515967 (= e!969583 tp!434206)))

(assert (= b!1515965 b!1515966))

(assert (= (and b!1515965 condSetEmpty!9264) setIsEmpty!9264))

(assert (= (and b!1515965 (not condSetEmpty!9264)) setNonEmpty!9264))

(assert (= setNonEmpty!9264 b!1515967))

(assert (= (and b!1514770 ((_ is Cons!16099) (t!139451 mapDefault!7055))) b!1515965))

(declare-fun m!1780888 () Bool)

(assert (=> setNonEmpty!9264 m!1780888))

(declare-fun m!1780890 () Bool)

(assert (=> b!1515965 m!1780890))

(declare-fun b!1515968 () Bool)

(declare-fun e!969585 () Bool)

(assert (=> b!1515968 (= e!969585 tp_is_empty!7017)))

(declare-fun b!1515969 () Bool)

(declare-fun tp!434211 () Bool)

(declare-fun tp!434209 () Bool)

(assert (=> b!1515969 (= e!969585 (and tp!434211 tp!434209))))

(assert (=> b!1514793 (= tp!433778 e!969585)))

(declare-fun b!1515970 () Bool)

(declare-fun tp!434210 () Bool)

(assert (=> b!1515970 (= e!969585 tp!434210)))

(declare-fun b!1515971 () Bool)

(declare-fun tp!434212 () Bool)

(declare-fun tp!434208 () Bool)

(assert (=> b!1515971 (= e!969585 (and tp!434212 tp!434208))))

(assert (= (and b!1514793 ((_ is ElementMatch!4163) (_1!8521 (_1!8522 (h!21504 mapDefault!7052))))) b!1515968))

(assert (= (and b!1514793 ((_ is Concat!7100) (_1!8521 (_1!8522 (h!21504 mapDefault!7052))))) b!1515969))

(assert (= (and b!1514793 ((_ is Star!4163) (_1!8521 (_1!8522 (h!21504 mapDefault!7052))))) b!1515970))

(assert (= (and b!1514793 ((_ is Union!4163) (_1!8521 (_1!8522 (h!21504 mapDefault!7052))))) b!1515971))

(declare-fun b!1515972 () Bool)

(declare-fun e!969588 () Bool)

(declare-fun tp!434214 () Bool)

(assert (=> b!1515972 (= e!969588 tp!434214)))

(declare-fun setIsEmpty!9265 () Bool)

(declare-fun setRes!9265 () Bool)

(assert (=> setIsEmpty!9265 setRes!9265))

(declare-fun e!969587 () Bool)

(assert (=> b!1514793 (= tp!433781 e!969587)))

(declare-fun setNonEmpty!9265 () Bool)

(declare-fun setElem!9265 () Context!1362)

(declare-fun tp!434217 () Bool)

(assert (=> setNonEmpty!9265 (= setRes!9265 (and tp!434217 (inv!21347 setElem!9265) e!969588))))

(declare-fun setRest!9265 () (InoxSet Context!1362))

(assert (=> setNonEmpty!9265 (= (_2!8522 (h!21504 (t!139455 mapDefault!7052))) ((_ map or) (store ((as const (Array Context!1362 Bool)) false) setElem!9265 true) setRest!9265))))

(declare-fun tp!434216 () Bool)

(declare-fun b!1515973 () Bool)

(declare-fun tp!434213 () Bool)

(declare-fun e!969586 () Bool)

(assert (=> b!1515973 (= e!969587 (and tp!434213 (inv!21347 (_2!8521 (_1!8522 (h!21504 (t!139455 mapDefault!7052))))) e!969586 tp_is_empty!7017 setRes!9265 tp!434216))))

(declare-fun condSetEmpty!9265 () Bool)

(assert (=> b!1515973 (= condSetEmpty!9265 (= (_2!8522 (h!21504 (t!139455 mapDefault!7052))) ((as const (Array Context!1362 Bool)) false)))))

(declare-fun b!1515974 () Bool)

(declare-fun tp!434215 () Bool)

(assert (=> b!1515974 (= e!969586 tp!434215)))

(assert (= b!1515973 b!1515974))

(assert (= (and b!1515973 condSetEmpty!9265) setIsEmpty!9265))

(assert (= (and b!1515973 (not condSetEmpty!9265)) setNonEmpty!9265))

(assert (= setNonEmpty!9265 b!1515972))

(assert (= (and b!1514793 ((_ is Cons!16103) (t!139455 mapDefault!7052))) b!1515973))

(declare-fun m!1780892 () Bool)

(assert (=> setNonEmpty!9265 m!1780892))

(declare-fun m!1780894 () Bool)

(assert (=> b!1515973 m!1780894))

(declare-fun b_lambda!47501 () Bool)

(assert (= b_lambda!47499 (or (and b!1514478 b_free!39325 (= (toChars!4057 (transformation!2847 (h!21506 rules!1640))) (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) (and b!1514728 b_free!39341 (= (toChars!4057 (transformation!2847 (h!21506 (t!139457 rules!1640)))) (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) (and b!1515869 b_free!39345 (= (toChars!4057 (transformation!2847 (h!21506 (t!139457 (t!139457 rules!1640))))) (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) (and b!1515944 b_free!39349 (= (toChars!4057 (transformation!2847 (rule!4640 (h!21503 (innerList!5507 (xs!8230 (c!248132 acc!392))))))) (toChars!4057 (transformation!2847 (rule!4640 (_1!8525 (v!22915 (_1!8526 lt!526577)))))))) b_lambda!47501)))

(check-sat (not b!1515862) (not d!448453) (not b!1515974) (not d!448831) (not b!1515930) (not b!1515871) (not b!1515480) (not d!448441) (not b!1515377) (not d!448627) (not b!1515829) (not b!1515030) (not setNonEmpty!9248) (not setNonEmpty!9254) b_and!105367 (not b_next!40037) (not d!448821) (not b!1515067) (not b!1515826) (not b!1515319) (not b!1515360) (not b!1515731) (not b!1515888) (not b!1515753) (not b!1515216) (not b!1515118) (not d!448677) (not b!1515259) (not b!1514636) (not b!1515919) (not b!1515575) (not d!448505) (not b!1514946) (not b!1515350) (not b!1515864) (not b!1515443) (not d!448699) (not b!1515204) (not bm!100455) (not b!1515508) (not d!448675) (not d!448791) (not d!448711) (not b!1514999) (not setNonEmpty!9237) (not b!1515397) (not b!1515946) (not d!448843) (not d!448659) (not b!1515637) (not b!1515502) (not b!1515566) (not b!1515967) (not setNonEmpty!9230) (not b!1515680) (not b!1515889) (not b!1515321) (not b!1515867) (not b!1514943) (not b!1515384) (not b!1515910) (not d!448697) (not setNonEmpty!9253) (not b!1515584) (not d!448499) (not b!1515322) (not b!1515639) (not b!1514942) (not b!1515917) (not b!1515349) (not b!1515220) (not b!1515453) (not b!1515663) (not b!1515127) (not setNonEmpty!9238) (not b!1515257) (not b!1515083) (not b!1515324) (not d!448563) (not b!1515380) (not b!1515451) (not b!1515954) (not b!1515587) (not b!1515409) (not b!1515044) (not b!1515057) (not b!1515885) (not b!1515876) tp_is_empty!7017 (not b!1515500) (not d!448713) (not b!1515473) (not b!1515191) (not d!448615) (not b!1515509) (not b_next!40053) (not b!1515085) (not b!1515704) (not b!1515624) (not b!1515924) (not b!1515363) (not b!1514993) b_and!105359 (not setNonEmpty!9245) (not b!1515687) (not b!1515577) (not b!1515332) (not b!1515679) (not b!1515440) (not b!1515902) (not bm!100454) (not d!448561) (not b!1515528) (not b!1515928) (not b!1515874) (not b!1515834) (not b!1515144) (not setNonEmpty!9228) (not b!1515814) (not bm!100477) (not b!1515957) (not b!1515892) (not b!1515104) (not b!1515271) (not b!1515439) (not d!448523) (not b!1515354) (not b!1515365) (not b!1515524) (not b!1515824) (not b!1515915) (not d!448455) b_and!105363 (not b!1515580) (not b!1515782) (not b!1515941) (not b!1515049) (not d!448667) (not b!1515966) (not d!448745) (not b!1515858) (not b!1515678) (not b!1515868) (not b!1515145) (not b!1515540) (not d!448849) (not b!1515724) (not b!1515838) (not b!1515114) (not b!1515627) (not setNonEmpty!9242) (not b!1515846) (not b!1515444) (not b!1515708) (not setNonEmpty!9244) (not d!448629) (not b!1515879) (not b!1515320) (not b!1515918) (not b!1514870) (not b!1514937) (not d!448845) (not b!1515589) (not d!448601) (not d!448789) (not bm!100486) (not b!1514803) (not d!448679) (not d!448559) (not bm!100447) (not b!1515844) (not b!1515847) (not d!448549) (not setNonEmpty!9234) (not d!448583) (not b!1514894) (not b!1515474) (not d!448869) (not bm!100478) (not d!448503) (not b!1515334) b_and!105351 (not b!1515648) (not b!1515414) (not b!1514892) (not b!1515883) (not b!1515882) (not b!1514888) (not d!448567) (not b!1515290) (not b!1515471) (not d!448703) (not b!1515466) b_and!105353 (not d!448839) (not b!1515033) (not d!448545) (not bm!100441) (not b!1515101) (not b!1515907) (not b!1515568) (not b!1515877) (not d!448747) (not d!448811) (not b!1515478) (not b!1515700) (not b!1515959) (not b!1515047) (not b!1515756) (not b!1515391) (not b!1515317) (not b!1515843) (not b!1515691) (not b!1515260) (not b!1515001) (not b!1515842) (not b!1515572) (not b!1515729) (not b!1515778) (not b!1515585) (not b!1515818) (not b!1515835) (not b!1515713) (not b!1515706) (not d!448571) (not b!1515897) (not b!1515455) (not b!1515895) (not setNonEmpty!9251) (not b!1515880) (not b!1515100) (not d!448817) (not b!1515069) (not b!1515115) (not b!1515742) (not b!1515357) (not d!448557) (not b!1515710) (not b!1515461) (not bm!100476) (not d!448799) (not b!1515347) (not b!1515432) (not b!1515468) (not d!448871) (not d!448737) (not d!448685) (not b!1515420) (not d!448865) (not b!1515774) (not b!1515861) (not b!1515752) (not b!1515693) (not b!1515823) (not b!1515767) (not b!1514938) (not b!1515952) (not d!448569) (not b!1515571) (not b!1515285) (not b!1515403) (not b!1515438) (not b!1515108) (not b!1515381) (not b!1515762) (not b!1515026) (not setNonEmpty!9243) (not setNonEmpty!9239) (not setNonEmpty!9258) (not b!1515744) (not d!448761) (not setNonEmpty!9226) (not b!1515265) (not b!1515102) (not b!1515854) (not b!1514973) (not b!1515196) (not b!1515833) (not b!1515056) (not b!1515128) (not d!448673) b_and!105349 (not b!1515570) (not b!1515387) (not b!1515775) (not b!1515411) (not b!1515353) (not b!1515947) (not b!1515251) (not d!448743) (not b!1515913) (not d!448439) (not b_next!40033) (not b!1515025) (not d!448433) (not b!1515472) (not b!1515769) (not d!448709) (not d!448609) (not b!1515812) (not d!448483) (not b!1515660) (not d!448835) (not b!1514859) (not b!1515643) (not d!448809) (not b!1515903) (not b!1515113) (not d!448621) (not b!1515395) (not setNonEmpty!9250) (not b!1515475) (not b!1515904) (not d!448501) (not b!1515920) b_and!105355 (not d!448727) b_and!105357 (not b!1515218) (not b!1515386) (not b!1515841) (not b!1515781) (not b!1515760) (not b!1515674) (not b!1515426) (not bm!100448) (not bm!100435) (not b!1515970) (not b!1515297) (not b!1515505) (not b!1515537) (not d!448767) (not b!1515825) (not b!1515415) (not b!1515690) (not b!1514923) (not b!1514940) (not b!1515849) (not b!1514886) (not b!1515901) (not b!1515425) (not b!1515121) (not b!1515470) b_and!105347 (not d!448775) (not b!1515012) (not b_lambda!47501) (not b!1515872) (not setNonEmpty!9241) (not b!1515664) (not b!1515955) (not b!1515921) (not d!448889) (not d!448853) (not b!1515226) (not b!1514891) (not setNonEmpty!9249) (not setNonEmpty!9260) (not b!1515670) (not d!448777) (not d!448553) (not b!1514985) (not b!1515839) (not b!1515853) (not b!1515499) (not setNonEmpty!9262) (not b!1515213) (not b!1515766) (not d!448887) (not b!1515965) (not setNonEmpty!9261) (not d!448863) (not d!448653) (not b!1515369) (not bm!100432) b_and!105345 (not b!1515203) (not b!1515565) (not b!1515845) (not d!448519) (not b!1515541) (not b!1515698) (not b!1515370) (not b!1515195) (not d!448495) (not d!448671) (not b_next!40041) (not d!448833) (not b!1515857) (not d!448447) (not b!1515254) (not d!448547) (not b!1515667) (not d!448657) (not setNonEmpty!9229) (not b!1515763) (not b!1515855) (not b!1514963) (not b_next!40043) (not setNonEmpty!9257) (not b!1515733) (not b!1515419) (not b!1515865) (not d!448599) (not b!1515539) (not b!1515583) (not b!1515501) (not b!1515225) (not d!448857) (not b!1514956) (not b!1514934) (not b!1515971) (not b!1515732) (not b!1515942) (not b!1515953) (not b!1514889) (not b!1515780) (not b!1515820) (not b!1515863) (not b!1515620) (not b!1515457) (not b!1515147) (not b!1515073) (not b!1515287) (not b!1515749) (not b!1515908) (not b!1515828) (not b!1515656) (not b!1515717) (not b!1515830) (not b!1515642) (not mapNonEmpty!7063) (not b!1515779) (not b!1515059) (not d!448681) (not d!448477) (not b!1515358) (not bm!100444) b_and!105341 (not b!1515417) (not b!1515741) (not b_next!40051) (not b!1515813) (not b!1515960) (not b!1515286) (not b!1515886) (not b!1515777) (not b!1515564) (not d!448589) (not b!1515054) (not b!1515819) (not b!1515116) (not b!1515651) (not b_next!40045) (not b!1515436) (not b!1515817) (not b!1514987) (not b!1515448) (not d!448587) (not b!1515378) (not d!448721) (not b!1515914) (not bm!100483) (not b!1515119) (not d!448859) (not b!1515645) (not b!1515896) (not b!1515692) (not b_next!40047) (not b!1515973) (not b!1515588) (not b!1515927) (not d!448861) (not bm!100482) (not d!448611) (not bm!100395) (not b!1515626) (not bm!100481) (not d!448855) (not b!1515071) (not b!1515746) (not bm!100485) (not b!1514936) (not d!448689) (not b!1515681) (not b!1515911) (not b!1515410) (not setNonEmpty!9255) (not d!448635) (not d!448631) (not d!448705) (not d!448459) (not b!1515689) (not d!448771) (not b!1514873) (not b_next!40039) (not b!1515075) (not b!1515831) (not b!1515212) (not b!1515768) (not b!1515906) (not d!448435) (not b_next!40031) (not b!1515437) (not b_next!40027) (not b!1515900) (not d!448901) (not b!1515956) (not b!1515628) (not b!1515649) (not b!1515542) (not b!1515837) (not b!1515393) (not bm!100480) (not b!1514984) (not d!448815) (not b!1515776) (not d!448793) (not b!1514901) (not b!1515761) (not b!1514890) (not setNonEmpty!9246) (not b!1515359) (not bm!100479) (not mapNonEmpty!7062) (not b!1515045) (not d!448891) (not b!1515080) (not b!1515450) (not b!1515003) (not b!1515230) (not b!1515146) (not b!1515916) (not b!1515822) (not bm!100449) (not b!1515685) (not b!1515462) (not d!448481) (not bm!100390) (not d!448493) b_and!105365 (not b!1515619) (not b!1515136) (not b!1515634) (not b!1515143) (not bm!100439) (not b!1515770) (not b!1515316) (not d!448581) (not b!1515454) (not b!1515527) (not setNonEmpty!9263) (not b!1515873) (not b!1515923) (not d!448813) (not d!448719) (not b!1515327) (not b!1514959) (not b!1515856) (not b!1515264) (not b!1515082) (not d!448665) (not b!1515840) b_and!105361 (not b!1515400) (not b!1514845) (not b!1515103) (not bm!100443) (not b!1515899) (not setNonEmpty!9247) (not b!1515087) (not b!1514944) (not b!1515884) (not b!1515925) (not b!1515644) (not d!448897) (not b!1515738) (not b!1515081) (not b!1515962) (not b!1515655) (not b!1515875) (not b!1515773) (not mapNonEmpty!7064) (not b!1515658) (not setNonEmpty!9231) (not b!1515431) (not b!1515399) (not d!448555) (not b!1515061) (not d!448701) (not b!1515740) (not bm!100487) (not b!1515948) (not bm!100433) (not b!1514961) (not b!1515200) (not b!1515827) (not d!448623) (not b!1515716) (not b!1515743) (not b!1515832) (not b!1515142) (not d!448741) (not d!448539) (not d!448575) (not b!1515435) (not b!1515050) (not d!448663) (not d!448687) (not d!448625) (not b!1515887) (not b!1515252) (not b!1515586) (not b!1515390) (not b!1515894) (not b!1515870) (not b!1515404) (not b!1515771) (not b!1515699) (not b!1515890) (not b!1515750) (not b!1515754) (not d!448461) (not d!448525) (not b!1515905) (not b!1515850) (not b!1515084) (not d!448823) (not setNonEmpty!9235) (not d!448739) (not b_next!40035) (not setNonEmpty!9265) (not b!1515712) (not b!1515229) (not b!1515748) (not b!1515476) (not b!1515078) (not b!1515912) (not b!1515646) (not d!448517) (not b!1515848) (not d!448613) (not b!1515852) (not setNonEmpty!9225) (not d!448479) (not b!1515772) (not b!1515526) (not b!1515943) (not b!1515383) (not setNonEmpty!9233) (not setNonEmpty!9232) (not b!1515284) (not b!1515677) (not setNonEmpty!9264) b_and!105369 (not d!448735) (not b!1515105) (not b!1515385) (not b!1515945) (not b!1515764) (not bm!100394) (not bm!100393) (not b!1515422) (not b!1515060) (not b!1515816) (not b!1515961) (not d!448787) (not b!1514941) (not b!1515652) (not b!1515328) (not b!1515051) (not b!1515969) (not b!1515893) (not b!1514947) (not b!1515765) (not setNonEmpty!9252) (not d!448763) (not d!448535) (not d!448769) (not d!448655) (not b!1515416) (not d!448577) (not b!1515086) (not b!1515389) (not b!1515972) (not b_next!40049) (not b!1515758) (not b!1515682) (not b!1515563) (not b!1515671) (not d!448847) (not b!1515590) (not d!448899) (not b!1515695) (not b!1515109) (not d!448683) (not b!1515117) (not b!1515053) (not b!1515330) (not b!1515878) (not d!448639) (not b!1515356) (not b!1515757) (not b_next!40029) (not b!1515456) (not setNonEmpty!9227) (not b!1515881) (not b!1515578) (not d!448881) (not b!1515821) (not b!1515463) (not b!1515851) (not b!1515031) (not d!448723) (not d!448661) (not b!1515027) (not b!1515052) (not b!1515929) (not b!1515668) (not b!1514992) (not b!1515964) (not b!1515815) (not d!448875) (not b!1515348) (not b!1515122) (not b!1515270) (not d!448633) (not b!1515013) (not b!1515464) (not b!1515949) (not b!1515860) (not b!1515739) (not b!1515028) (not b!1515650) (not b!1515255) (not d!448537) (not setNonEmpty!9240) (not b!1514971) (not b!1515318) (not setNonEmpty!9236) (not b!1515538) (not b!1515963) (not b!1515525) (not d!448457) (not setNonEmpty!9224) (not setNonEmpty!9256) (not b!1515408) (not b!1515441) (not setNonEmpty!9259) (not b!1515759) (not b!1514895) (not d!448617) (not b!1515719) (not bm!100428) (not b!1515351) (not b!1515714) (not b!1514969) (not b!1515446) (not b!1515352) (not b!1515909) (not b!1515866) (not b!1515684) (not b!1515686) (not b!1515703) (not b!1515362) (not b!1515745) (not d!448533) (not b!1515222) (not b!1515481) (not b!1515459) (not b!1515958) (not b!1514988) (not b!1515250) (not bm!100484) (not b!1515465) (not b!1515950) (not b!1515079) (not d!448437) (not b!1514920) (not d!448819))
(check-sat b_and!105363 b_and!105351 b_and!105353 b_and!105347 (not b_next!40043) b_and!105365 b_and!105361 (not b_next!40035) b_and!105369 (not b_next!40049) (not b_next!40029) b_and!105367 (not b_next!40037) (not b_next!40053) b_and!105359 (not b_next!40033) b_and!105349 b_and!105355 b_and!105357 b_and!105345 (not b_next!40041) b_and!105341 (not b_next!40045) (not b_next!40051) (not b_next!40047) (not b_next!40039) (not b_next!40031) (not b_next!40027))
