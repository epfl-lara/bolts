; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66100 () Bool)

(assert start!66100)

(declare-fun b!691273 () Bool)

(declare-fun b_free!19569 () Bool)

(declare-fun b_next!19633 () Bool)

(assert (=> b!691273 (= b_free!19569 (not b_next!19633))))

(declare-fun tp!208087 () Bool)

(declare-fun b_and!63363 () Bool)

(assert (=> b!691273 (= tp!208087 b_and!63363)))

(declare-fun b!691286 () Bool)

(declare-fun b_free!19571 () Bool)

(declare-fun b_next!19635 () Bool)

(assert (=> b!691286 (= b_free!19571 (not b_next!19635))))

(declare-fun tp!208069 () Bool)

(declare-fun b_and!63365 () Bool)

(assert (=> b!691286 (= tp!208069 b_and!63365)))

(declare-fun b!691270 () Bool)

(declare-fun b_free!19573 () Bool)

(declare-fun b_next!19637 () Bool)

(assert (=> b!691270 (= b_free!19573 (not b_next!19637))))

(declare-fun tp!208086 () Bool)

(declare-fun b_and!63367 () Bool)

(assert (=> b!691270 (= tp!208086 b_and!63367)))

(declare-fun b_free!19575 () Bool)

(declare-fun b_next!19639 () Bool)

(assert (=> b!691270 (= b_free!19575 (not b_next!19639))))

(declare-fun tp!208078 () Bool)

(declare-fun b_and!63369 () Bool)

(assert (=> b!691270 (= tp!208078 b_and!63369)))

(declare-fun b!691266 () Bool)

(declare-fun b_free!19577 () Bool)

(declare-fun b_next!19641 () Bool)

(assert (=> b!691266 (= b_free!19577 (not b_next!19641))))

(declare-fun tp!208093 () Bool)

(declare-fun b_and!63371 () Bool)

(assert (=> b!691266 (= tp!208093 b_and!63371)))

(declare-fun b!691298 () Bool)

(declare-fun b_free!19579 () Bool)

(declare-fun b_next!19643 () Bool)

(assert (=> b!691298 (= b_free!19579 (not b_next!19643))))

(declare-fun tp!208092 () Bool)

(declare-fun b_and!63373 () Bool)

(assert (=> b!691298 (= tp!208092 b_and!63373)))

(declare-fun b!691297 () Bool)

(declare-fun b_free!19581 () Bool)

(declare-fun b_next!19645 () Bool)

(assert (=> b!691297 (= b_free!19581 (not b_next!19645))))

(declare-fun tp!208081 () Bool)

(declare-fun b_and!63375 () Bool)

(assert (=> b!691297 (= tp!208081 b_and!63375)))

(declare-fun b!691279 () Bool)

(declare-fun b_free!19583 () Bool)

(declare-fun b_next!19647 () Bool)

(assert (=> b!691279 (= b_free!19583 (not b_next!19647))))

(declare-fun tp!208091 () Bool)

(declare-fun b_and!63377 () Bool)

(assert (=> b!691279 (= tp!208091 b_and!63377)))

(declare-fun b!691264 () Bool)

(declare-fun res!313523 () Bool)

(declare-fun e!434805 () Bool)

(assert (=> b!691264 (=> (not res!313523) (not e!434805))))

(declare-datatypes ((LexerInterface!1309 0))(
  ( (LexerInterfaceExt!1306 (__x!5376 Int)) (Lexer!1307) )
))
(declare-fun thiss!12183 () LexerInterface!1309)

(declare-datatypes ((C!4268 0))(
  ( (C!4269 (val!2364 Int)) )
))
(declare-datatypes ((Regex!1833 0))(
  ( (ElementMatch!1833 (c!121555 C!4268)) (Concat!3372 (regOne!4178 Regex!1833) (regTwo!4178 Regex!1833)) (EmptyExpr!1833) (Star!1833 (reg!2162 Regex!1833)) (EmptyLang!1833) (Union!1833 (regOne!4179 Regex!1833) (regTwo!4179 Regex!1833)) )
))
(declare-datatypes ((String!9418 0))(
  ( (String!9419 (value!48247 String)) )
))
(declare-datatypes ((List!7468 0))(
  ( (Nil!7454) (Cons!7454 (h!12855 (_ BitVec 16)) (t!87286 List!7468)) )
))
(declare-datatypes ((TokenValue!1539 0))(
  ( (FloatLiteralValue!3078 (text!11218 List!7468)) (TokenValueExt!1538 (__x!5377 Int)) (Broken!7695 (value!48248 List!7468)) (Object!1552) (End!1539) (Def!1539) (Underscore!1539) (Match!1539) (Else!1539) (Error!1539) (Case!1539) (If!1539) (Extends!1539) (Abstract!1539) (Class!1539) (Val!1539) (DelimiterValue!3078 (del!1599 List!7468)) (KeywordValue!1545 (value!48249 List!7468)) (CommentValue!3078 (value!48250 List!7468)) (WhitespaceValue!3078 (value!48251 List!7468)) (IndentationValue!1539 (value!48252 List!7468)) (String!9420) (Int32!1539) (Broken!7696 (value!48253 List!7468)) (Boolean!1540) (Unit!12633) (OperatorValue!1542 (op!1599 List!7468)) (IdentifierValue!3078 (value!48254 List!7468)) (IdentifierValue!3079 (value!48255 List!7468)) (WhitespaceValue!3079 (value!48256 List!7468)) (True!3078) (False!3078) (Broken!7697 (value!48257 List!7468)) (Broken!7698 (value!48258 List!7468)) (True!3079) (RightBrace!1539) (RightBracket!1539) (Colon!1539) (Null!1539) (Comma!1539) (LeftBracket!1539) (False!3079) (LeftBrace!1539) (ImaginaryLiteralValue!1539 (text!11219 List!7468)) (StringLiteralValue!4617 (value!48259 List!7468)) (EOFValue!1539 (value!48260 List!7468)) (IdentValue!1539 (value!48261 List!7468)) (DelimiterValue!3079 (value!48262 List!7468)) (DedentValue!1539 (value!48263 List!7468)) (NewLineValue!1539 (value!48264 List!7468)) (IntegerValue!4617 (value!48265 (_ BitVec 32)) (text!11220 List!7468)) (IntegerValue!4618 (value!48266 Int) (text!11221 List!7468)) (Times!1539) (Or!1539) (Equal!1539) (Minus!1539) (Broken!7699 (value!48267 List!7468)) (And!1539) (Div!1539) (LessEqual!1539) (Mod!1539) (Concat!3373) (Not!1539) (Plus!1539) (SpaceValue!1539 (value!48268 List!7468)) (IntegerValue!4619 (value!48269 Int) (text!11222 List!7468)) (StringLiteralValue!4618 (text!11223 List!7468)) (FloatLiteralValue!3079 (text!11224 List!7468)) (BytesLiteralValue!1539 (value!48270 List!7468)) (CommentValue!3079 (value!48271 List!7468)) (StringLiteralValue!4619 (value!48272 List!7468)) (ErrorTokenValue!1539 (msg!1600 List!7468)) )
))
(declare-datatypes ((List!7469 0))(
  ( (Nil!7455) (Cons!7455 (h!12856 C!4268) (t!87287 List!7469)) )
))
(declare-datatypes ((IArray!5263 0))(
  ( (IArray!5264 (innerList!2689 List!7469)) )
))
(declare-datatypes ((Conc!2631 0))(
  ( (Node!2631 (left!5980 Conc!2631) (right!6310 Conc!2631) (csize!5492 Int) (cheight!2842 Int)) (Leaf!3901 (xs!5282 IArray!5263) (csize!5493 Int)) (Empty!2631) )
))
(declare-datatypes ((BalanceConc!5274 0))(
  ( (BalanceConc!5275 (c!121556 Conc!2631)) )
))
(declare-datatypes ((TokenValueInjection!2814 0))(
  ( (TokenValueInjection!2815 (toValue!2457 Int) (toChars!2316 Int)) )
))
(declare-datatypes ((Rule!2790 0))(
  ( (Rule!2791 (regex!1495 Regex!1833) (tag!1757 String!9418) (isSeparator!1495 Bool) (transformation!1495 TokenValueInjection!2814)) )
))
(declare-datatypes ((List!7470 0))(
  ( (Nil!7456) (Cons!7456 (h!12857 Rule!2790) (t!87288 List!7470)) )
))
(declare-fun rules!1357 () List!7470)

(declare-fun rulesInvariant!1242 (LexerInterface!1309 List!7470) Bool)

(assert (=> b!691264 (= res!313523 (rulesInvariant!1242 thiss!12183 rules!1357))))

(declare-fun b!691265 () Bool)

(declare-fun res!313522 () Bool)

(assert (=> b!691265 (=> (not res!313522) (not e!434805))))

(declare-datatypes ((Hashable!739 0))(
  ( (HashableExt!738 (__x!5378 Int)) )
))
(declare-datatypes ((List!7471 0))(
  ( (Nil!7457) (Cons!7457 (h!12858 Regex!1833) (t!87289 List!7471)) )
))
(declare-datatypes ((Context!486 0))(
  ( (Context!487 (exprs!743 List!7471)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7858 0))(
  ( (tuple2!7859 (_1!4340 (InoxSet Context!486)) (_2!4340 Int)) )
))
(declare-datatypes ((array!2873 0))(
  ( (array!2874 (arr!1298 (Array (_ BitVec 32) (_ BitVec 64))) (size!6114 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!7860 0))(
  ( (tuple2!7861 (_1!4341 tuple2!7858) (_2!4341 Int)) )
))
(declare-datatypes ((List!7472 0))(
  ( (Nil!7458) (Cons!7458 (h!12859 tuple2!7860) (t!87290 List!7472)) )
))
(declare-datatypes ((array!2875 0))(
  ( (array!2876 (arr!1299 (Array (_ BitVec 32) List!7472)) (size!6115 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1534 0))(
  ( (LongMapFixedSize!1535 (defaultEntry!1123 Int) (mask!2568 (_ BitVec 32)) (extraKeys!1014 (_ BitVec 32)) (zeroValue!1024 List!7472) (minValue!1024 List!7472) (_size!1643 (_ BitVec 32)) (_keys!1061 array!2873) (_values!1046 array!2875) (_vacant!828 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3009 0))(
  ( (Cell!3010 (v!17652 LongMapFixedSize!1534)) )
))
(declare-datatypes ((MutLongMap!767 0))(
  ( (LongMap!767 (underlying!1717 Cell!3009)) (MutLongMapExt!766 (__x!5379 Int)) )
))
(declare-datatypes ((Cell!3011 0))(
  ( (Cell!3012 (v!17653 MutLongMap!767)) )
))
(declare-datatypes ((MutableMap!739 0))(
  ( (MutableMapExt!738 (__x!5380 Int)) (HashMap!739 (underlying!1718 Cell!3011) (hashF!2647 Hashable!739) (_size!1644 (_ BitVec 32)) (defaultValue!890 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!40 0))(
  ( (CacheFindLongestMatch!41 (cache!1126 MutableMap!739) (totalInput!1800 BalanceConc!5274)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!40)

(declare-fun valid!656 (CacheFindLongestMatch!40) Bool)

(assert (=> b!691265 (= res!313522 (valid!656 cacheFindLongestMatch!59))))

(declare-fun tp!208090 () Bool)

(declare-fun tp!208075 () Bool)

(declare-datatypes ((tuple3!712 0))(
  ( (tuple3!713 (_1!4342 Regex!1833) (_2!4342 Context!486) (_3!411 C!4268)) )
))
(declare-datatypes ((tuple2!7862 0))(
  ( (tuple2!7863 (_1!4343 tuple3!712) (_2!4343 (InoxSet Context!486))) )
))
(declare-datatypes ((List!7473 0))(
  ( (Nil!7459) (Cons!7459 (h!12860 tuple2!7862) (t!87291 List!7473)) )
))
(declare-datatypes ((array!2877 0))(
  ( (array!2878 (arr!1300 (Array (_ BitVec 32) List!7473)) (size!6116 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1536 0))(
  ( (LongMapFixedSize!1537 (defaultEntry!1124 Int) (mask!2569 (_ BitVec 32)) (extraKeys!1015 (_ BitVec 32)) (zeroValue!1025 List!7473) (minValue!1025 List!7473) (_size!1645 (_ BitVec 32)) (_keys!1062 array!2873) (_values!1047 array!2877) (_vacant!829 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3013 0))(
  ( (Cell!3014 (v!17654 LongMapFixedSize!1536)) )
))
(declare-datatypes ((MutLongMap!768 0))(
  ( (LongMap!768 (underlying!1719 Cell!3013)) (MutLongMapExt!767 (__x!5381 Int)) )
))
(declare-datatypes ((Cell!3015 0))(
  ( (Cell!3016 (v!17655 MutLongMap!768)) )
))
(declare-datatypes ((Hashable!740 0))(
  ( (HashableExt!739 (__x!5382 Int)) )
))
(declare-datatypes ((MutableMap!740 0))(
  ( (MutableMapExt!739 (__x!5383 Int)) (HashMap!740 (underlying!1720 Cell!3015) (hashF!2648 Hashable!740) (_size!1646 (_ BitVec 32)) (defaultValue!891 Int)) )
))
(declare-datatypes ((CacheDown!384 0))(
  ( (CacheDown!385 (cache!1127 MutableMap!740)) )
))
(declare-fun cacheDown!470 () CacheDown!384)

(declare-fun e!434792 () Bool)

(declare-fun e!434810 () Bool)

(declare-fun array_inv!951 (array!2873) Bool)

(declare-fun array_inv!952 (array!2877) Bool)

(assert (=> b!691266 (= e!434792 (and tp!208093 tp!208090 tp!208075 (array_inv!951 (_keys!1062 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))) (array_inv!952 (_values!1047 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))) e!434810))))

(declare-fun b!691267 () Bool)

(declare-fun e!434807 () Bool)

(declare-fun e!434798 () Bool)

(declare-fun lt!284535 () MutLongMap!767)

(get-info :version)

(assert (=> b!691267 (= e!434807 (and e!434798 ((_ is LongMap!767) lt!284535)))))

(assert (=> b!691267 (= lt!284535 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))

(declare-fun mapIsEmpty!3080 () Bool)

(declare-fun mapRes!3080 () Bool)

(assert (=> mapIsEmpty!3080 mapRes!3080))

(declare-fun b!691268 () Bool)

(declare-fun res!313520 () Bool)

(assert (=> b!691268 (=> (not res!313520) (not e!434805))))

(declare-datatypes ((tuple2!7864 0))(
  ( (tuple2!7865 (_1!4344 Context!486) (_2!4344 C!4268)) )
))
(declare-datatypes ((tuple2!7866 0))(
  ( (tuple2!7867 (_1!4345 tuple2!7864) (_2!4345 (InoxSet Context!486))) )
))
(declare-datatypes ((List!7474 0))(
  ( (Nil!7460) (Cons!7460 (h!12861 tuple2!7866) (t!87292 List!7474)) )
))
(declare-datatypes ((array!2879 0))(
  ( (array!2880 (arr!1301 (Array (_ BitVec 32) List!7474)) (size!6117 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1538 0))(
  ( (LongMapFixedSize!1539 (defaultEntry!1125 Int) (mask!2570 (_ BitVec 32)) (extraKeys!1016 (_ BitVec 32)) (zeroValue!1026 List!7474) (minValue!1026 List!7474) (_size!1647 (_ BitVec 32)) (_keys!1063 array!2873) (_values!1048 array!2879) (_vacant!830 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3017 0))(
  ( (Cell!3018 (v!17656 LongMapFixedSize!1538)) )
))
(declare-datatypes ((MutLongMap!769 0))(
  ( (LongMap!769 (underlying!1721 Cell!3017)) (MutLongMapExt!768 (__x!5384 Int)) )
))
(declare-datatypes ((Cell!3019 0))(
  ( (Cell!3020 (v!17657 MutLongMap!769)) )
))
(declare-datatypes ((Hashable!741 0))(
  ( (HashableExt!740 (__x!5385 Int)) )
))
(declare-datatypes ((MutableMap!741 0))(
  ( (MutableMapExt!740 (__x!5386 Int)) (HashMap!741 (underlying!1722 Cell!3019) (hashF!2649 Hashable!741) (_size!1648 (_ BitVec 32)) (defaultValue!892 Int)) )
))
(declare-datatypes ((CacheUp!380 0))(
  ( (CacheUp!381 (cache!1128 MutableMap!741)) )
))
(declare-fun cacheUp!457 () CacheUp!380)

(declare-fun valid!657 (CacheUp!380) Bool)

(assert (=> b!691268 (= res!313520 (valid!657 cacheUp!457))))

(declare-fun b!691269 () Bool)

(declare-fun res!313519 () Bool)

(declare-fun e!434816 () Bool)

(assert (=> b!691269 (=> res!313519 e!434816)))

(declare-datatypes ((Token!2694 0))(
  ( (Token!2695 (value!48273 TokenValue!1539) (rule!2536 Rule!2790) (size!6118 Int) (originalCharacters!1772 List!7469)) )
))
(declare-datatypes ((List!7475 0))(
  ( (Nil!7461) (Cons!7461 (h!12862 Token!2694) (t!87293 List!7475)) )
))
(declare-datatypes ((IArray!5265 0))(
  ( (IArray!5266 (innerList!2690 List!7475)) )
))
(declare-datatypes ((Conc!2632 0))(
  ( (Node!2632 (left!5981 Conc!2632) (right!6311 Conc!2632) (csize!5494 Int) (cheight!2843 Int)) (Leaf!3902 (xs!5283 IArray!5265) (csize!5495 Int)) (Empty!2632) )
))
(declare-datatypes ((BalanceConc!5276 0))(
  ( (BalanceConc!5277 (c!121557 Conc!2632)) )
))
(declare-datatypes ((tuple2!7868 0))(
  ( (tuple2!7869 (_1!4346 BalanceConc!5276) (_2!4346 BalanceConc!5274)) )
))
(declare-datatypes ((tuple4!110 0))(
  ( (tuple4!111 (_1!4347 tuple2!7868) (_2!4347 CacheUp!380) (_3!412 CacheDown!384) (_4!55 CacheFindLongestMatch!40)) )
))
(declare-fun lt!284532 () tuple4!110)

(assert (=> b!691269 (= res!313519 (not (valid!657 (_2!4347 lt!284532))))))

(declare-fun e!434814 () Bool)

(assert (=> b!691270 (= e!434814 (and tp!208086 tp!208078))))

(declare-fun tp!208085 () Bool)

(declare-fun b!691271 () Bool)

(declare-fun e!434822 () Bool)

(declare-fun inv!9547 (String!9418) Bool)

(declare-fun inv!9553 (TokenValueInjection!2814) Bool)

(assert (=> b!691271 (= e!434822 (and tp!208085 (inv!9547 (tag!1757 (h!12857 rules!1357))) (inv!9553 (transformation!1495 (h!12857 rules!1357))) e!434814))))

(declare-fun b!691272 () Bool)

(assert (=> b!691272 (= e!434805 e!434816)))

(declare-fun res!313517 () Bool)

(assert (=> b!691272 (=> res!313517 e!434816)))

(declare-fun lt!284533 () tuple2!7868)

(declare-fun list!3129 (BalanceConc!5276) List!7475)

(assert (=> b!691272 (= res!313517 (not (= (list!3129 (_1!4346 (_1!4347 lt!284532))) (list!3129 (_1!4346 lt!284533)))))))

(declare-fun input!756 () BalanceConc!5274)

(declare-fun lex!589 (LexerInterface!1309 List!7470 BalanceConc!5274) tuple2!7868)

(assert (=> b!691272 (= lt!284533 (lex!589 thiss!12183 rules!1357 input!756))))

(declare-fun lexTailRecV2Mem!5 (LexerInterface!1309 List!7470 BalanceConc!5274 BalanceConc!5274 BalanceConc!5274 BalanceConc!5276 CacheUp!380 CacheDown!384 CacheFindLongestMatch!40) tuple4!110)

(assert (=> b!691272 (= lt!284532 (lexTailRecV2Mem!5 thiss!12183 rules!1357 input!756 (BalanceConc!5275 Empty!2631) input!756 (BalanceConc!5277 Empty!2632) cacheUp!457 cacheDown!470 cacheFindLongestMatch!59))))

(declare-fun mapIsEmpty!3081 () Bool)

(declare-fun mapRes!3081 () Bool)

(assert (=> mapIsEmpty!3081 mapRes!3081))

(declare-fun e!434811 () Bool)

(declare-fun e!434800 () Bool)

(assert (=> b!691273 (= e!434811 (and e!434800 tp!208087))))

(declare-fun b!691274 () Bool)

(declare-fun e!434806 () Bool)

(assert (=> b!691274 (= e!434798 e!434806)))

(declare-fun b!691275 () Bool)

(declare-fun e!434795 () Bool)

(declare-fun e!434794 () Bool)

(declare-fun lt!284534 () MutLongMap!768)

(assert (=> b!691275 (= e!434795 (and e!434794 ((_ is LongMap!768) lt!284534)))))

(assert (=> b!691275 (= lt!284534 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))

(declare-fun b!691276 () Bool)

(declare-fun e!434797 () Bool)

(assert (=> b!691276 (= e!434797 e!434811)))

(declare-fun b!691277 () Bool)

(declare-fun tp!208079 () Bool)

(assert (=> b!691277 (= e!434810 (and tp!208079 mapRes!3081))))

(declare-fun condMapEmpty!3081 () Bool)

(declare-fun mapDefault!3081 () List!7473)

(assert (=> b!691277 (= condMapEmpty!3081 (= (arr!1300 (_values!1047 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7473)) mapDefault!3081)))))

(declare-fun b!691278 () Bool)

(declare-fun e!434809 () Bool)

(declare-fun tp!208083 () Bool)

(assert (=> b!691278 (= e!434809 (and e!434822 tp!208083))))

(declare-fun mapNonEmpty!3080 () Bool)

(declare-fun tp!208080 () Bool)

(declare-fun tp!208076 () Bool)

(assert (=> mapNonEmpty!3080 (= mapRes!3081 (and tp!208080 tp!208076))))

(declare-fun mapValue!3080 () List!7473)

(declare-fun mapKey!3081 () (_ BitVec 32))

(declare-fun mapRest!3080 () (Array (_ BitVec 32) List!7473))

(assert (=> mapNonEmpty!3080 (= (arr!1300 (_values!1047 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))) (store mapRest!3080 mapKey!3081 mapValue!3080))))

(declare-fun e!434812 () Bool)

(declare-fun tp!208077 () Bool)

(declare-fun tp!208070 () Bool)

(declare-fun e!434813 () Bool)

(declare-fun array_inv!953 (array!2879) Bool)

(assert (=> b!691279 (= e!434813 (and tp!208091 tp!208070 tp!208077 (array_inv!951 (_keys!1063 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))) (array_inv!953 (_values!1048 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))) e!434812))))

(declare-fun b!691280 () Bool)

(declare-fun res!313525 () Bool)

(assert (=> b!691280 (=> (not res!313525) (not e!434805))))

(assert (=> b!691280 (= res!313525 (= (totalInput!1800 cacheFindLongestMatch!59) input!756))))

(declare-fun mapIsEmpty!3082 () Bool)

(declare-fun mapRes!3082 () Bool)

(assert (=> mapIsEmpty!3082 mapRes!3082))

(declare-fun b!691281 () Bool)

(declare-fun e!434817 () Bool)

(declare-fun tp!208071 () Bool)

(declare-fun inv!9554 (Conc!2631) Bool)

(assert (=> b!691281 (= e!434817 (and (inv!9554 (c!121556 input!756)) tp!208071))))

(declare-fun b!691282 () Bool)

(declare-fun e!434821 () Bool)

(assert (=> b!691282 (= e!434821 e!434813)))

(declare-fun b!691283 () Bool)

(declare-fun e!434791 () Bool)

(assert (=> b!691283 (= e!434791 e!434821)))

(declare-fun b!691284 () Bool)

(declare-fun lt!284536 () MutLongMap!769)

(assert (=> b!691284 (= e!434800 (and e!434791 ((_ is LongMap!769) lt!284536)))))

(assert (=> b!691284 (= lt!284536 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))

(declare-fun b!691285 () Bool)

(declare-fun res!313516 () Bool)

(assert (=> b!691285 (=> (not res!313516) (not e!434805))))

(declare-fun valid!658 (CacheDown!384) Bool)

(assert (=> b!691285 (= res!313516 (valid!658 cacheDown!470))))

(declare-fun e!434796 () Bool)

(declare-fun tp!208088 () Bool)

(declare-fun e!434819 () Bool)

(declare-fun tp!208082 () Bool)

(declare-fun array_inv!954 (array!2875) Bool)

(assert (=> b!691286 (= e!434796 (and tp!208069 tp!208082 tp!208088 (array_inv!951 (_keys!1061 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))) (array_inv!954 (_values!1046 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))) e!434819))))

(declare-fun b!691287 () Bool)

(declare-fun tp!208089 () Bool)

(assert (=> b!691287 (= e!434812 (and tp!208089 mapRes!3080))))

(declare-fun condMapEmpty!3080 () Bool)

(declare-fun mapDefault!3082 () List!7474)

(assert (=> b!691287 (= condMapEmpty!3080 (= (arr!1301 (_values!1048 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7474)) mapDefault!3082)))))

(declare-fun b!691288 () Bool)

(declare-fun e!434804 () Bool)

(declare-fun tp!208084 () Bool)

(assert (=> b!691288 (= e!434804 (and (inv!9554 (c!121556 (totalInput!1800 cacheFindLongestMatch!59))) tp!208084))))

(declare-fun b!691289 () Bool)

(assert (=> b!691289 (= e!434806 e!434796)))

(declare-fun b!691290 () Bool)

(declare-fun res!313521 () Bool)

(assert (=> b!691290 (=> res!313521 e!434816)))

(assert (=> b!691290 (= res!313521 (not (valid!658 (_3!412 lt!284532))))))

(declare-fun b!691291 () Bool)

(declare-fun res!313524 () Bool)

(assert (=> b!691291 (=> (not res!313524) (not e!434805))))

(declare-fun isEmpty!4864 (List!7470) Bool)

(assert (=> b!691291 (= res!313524 (not (isEmpty!4864 rules!1357)))))

(declare-fun b!691292 () Bool)

(declare-fun tp!208073 () Bool)

(assert (=> b!691292 (= e!434819 (and tp!208073 mapRes!3082))))

(declare-fun condMapEmpty!3082 () Bool)

(declare-fun mapDefault!3080 () List!7472)

(assert (=> b!691292 (= condMapEmpty!3082 (= (arr!1299 (_values!1046 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7472)) mapDefault!3080)))))

(declare-fun b!691293 () Bool)

(declare-fun e!434799 () Bool)

(assert (=> b!691293 (= e!434794 e!434799)))

(declare-fun b!691294 () Bool)

(declare-fun e!434818 () Bool)

(declare-fun e!434820 () Bool)

(declare-fun inv!9555 (BalanceConc!5274) Bool)

(assert (=> b!691294 (= e!434820 (and e!434818 (inv!9555 (totalInput!1800 cacheFindLongestMatch!59)) e!434804))))

(declare-fun b!691295 () Bool)

(declare-fun res!313518 () Bool)

(assert (=> b!691295 (=> res!313518 e!434816)))

(declare-fun list!3130 (BalanceConc!5274) List!7469)

(assert (=> b!691295 (= res!313518 (not (= (list!3130 (_2!4346 (_1!4347 lt!284532))) (list!3130 (_2!4346 lt!284533)))))))

(declare-fun b!691296 () Bool)

(assert (=> b!691296 (= e!434816 (not (= (totalInput!1800 (_4!55 lt!284532)) input!756)))))

(declare-fun mapNonEmpty!3081 () Bool)

(declare-fun tp!208068 () Bool)

(declare-fun tp!208074 () Bool)

(assert (=> mapNonEmpty!3081 (= mapRes!3082 (and tp!208068 tp!208074))))

(declare-fun mapRest!3081 () (Array (_ BitVec 32) List!7472))

(declare-fun mapValue!3081 () List!7472)

(declare-fun mapKey!3082 () (_ BitVec 32))

(assert (=> mapNonEmpty!3081 (= (arr!1299 (_values!1046 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))) (store mapRest!3081 mapKey!3082 mapValue!3081))))

(declare-fun mapNonEmpty!3082 () Bool)

(declare-fun tp!208072 () Bool)

(declare-fun tp!208067 () Bool)

(assert (=> mapNonEmpty!3082 (= mapRes!3080 (and tp!208072 tp!208067))))

(declare-fun mapValue!3082 () List!7474)

(declare-fun mapKey!3080 () (_ BitVec 32))

(declare-fun mapRest!3082 () (Array (_ BitVec 32) List!7474))

(assert (=> mapNonEmpty!3082 (= (arr!1301 (_values!1048 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))) (store mapRest!3082 mapKey!3080 mapValue!3082))))

(assert (=> b!691297 (= e!434818 (and e!434807 tp!208081))))

(declare-fun e!434793 () Bool)

(assert (=> b!691298 (= e!434793 (and e!434795 tp!208092))))

(declare-fun res!313526 () Bool)

(assert (=> start!66100 (=> (not res!313526) (not e!434805))))

(assert (=> start!66100 (= res!313526 ((_ is Lexer!1307) thiss!12183))))

(assert (=> start!66100 e!434805))

(declare-fun inv!9556 (CacheFindLongestMatch!40) Bool)

(assert (=> start!66100 (and (inv!9556 cacheFindLongestMatch!59) e!434820)))

(assert (=> start!66100 (and (inv!9555 input!756) e!434817)))

(declare-fun inv!9557 (CacheUp!380) Bool)

(assert (=> start!66100 (and (inv!9557 cacheUp!457) e!434797)))

(declare-fun e!434803 () Bool)

(declare-fun inv!9558 (CacheDown!384) Bool)

(assert (=> start!66100 (and (inv!9558 cacheDown!470) e!434803)))

(assert (=> start!66100 true))

(assert (=> start!66100 e!434809))

(declare-fun b!691299 () Bool)

(declare-fun res!313515 () Bool)

(assert (=> b!691299 (=> res!313515 e!434816)))

(assert (=> b!691299 (= res!313515 (not (valid!656 (_4!55 lt!284532))))))

(declare-fun b!691300 () Bool)

(assert (=> b!691300 (= e!434803 e!434793)))

(declare-fun b!691301 () Bool)

(assert (=> b!691301 (= e!434799 e!434792)))

(assert (= (and start!66100 res!313526) b!691291))

(assert (= (and b!691291 res!313524) b!691264))

(assert (= (and b!691264 res!313523) b!691268))

(assert (= (and b!691268 res!313520) b!691285))

(assert (= (and b!691285 res!313516) b!691265))

(assert (= (and b!691265 res!313522) b!691280))

(assert (= (and b!691280 res!313525) b!691272))

(assert (= (and b!691272 (not res!313517)) b!691295))

(assert (= (and b!691295 (not res!313518)) b!691299))

(assert (= (and b!691299 (not res!313515)) b!691269))

(assert (= (and b!691269 (not res!313519)) b!691290))

(assert (= (and b!691290 (not res!313521)) b!691296))

(assert (= (and b!691292 condMapEmpty!3082) mapIsEmpty!3082))

(assert (= (and b!691292 (not condMapEmpty!3082)) mapNonEmpty!3081))

(assert (= b!691286 b!691292))

(assert (= b!691289 b!691286))

(assert (= b!691274 b!691289))

(assert (= (and b!691267 ((_ is LongMap!767) (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))) b!691274))

(assert (= b!691297 b!691267))

(assert (= (and b!691294 ((_ is HashMap!739) (cache!1126 cacheFindLongestMatch!59))) b!691297))

(assert (= b!691294 b!691288))

(assert (= start!66100 b!691294))

(assert (= start!66100 b!691281))

(assert (= (and b!691287 condMapEmpty!3080) mapIsEmpty!3080))

(assert (= (and b!691287 (not condMapEmpty!3080)) mapNonEmpty!3082))

(assert (= b!691279 b!691287))

(assert (= b!691282 b!691279))

(assert (= b!691283 b!691282))

(assert (= (and b!691284 ((_ is LongMap!769) (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))) b!691283))

(assert (= b!691273 b!691284))

(assert (= (and b!691276 ((_ is HashMap!741) (cache!1128 cacheUp!457))) b!691273))

(assert (= start!66100 b!691276))

(assert (= (and b!691277 condMapEmpty!3081) mapIsEmpty!3081))

(assert (= (and b!691277 (not condMapEmpty!3081)) mapNonEmpty!3080))

(assert (= b!691266 b!691277))

(assert (= b!691301 b!691266))

(assert (= b!691293 b!691301))

(assert (= (and b!691275 ((_ is LongMap!768) (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))) b!691293))

(assert (= b!691298 b!691275))

(assert (= (and b!691300 ((_ is HashMap!740) (cache!1127 cacheDown!470))) b!691298))

(assert (= start!66100 b!691300))

(assert (= b!691271 b!691270))

(assert (= b!691278 b!691271))

(assert (= (and start!66100 ((_ is Cons!7456) rules!1357)) b!691278))

(declare-fun m!947354 () Bool)

(assert (=> b!691281 m!947354))

(declare-fun m!947356 () Bool)

(assert (=> b!691268 m!947356))

(declare-fun m!947358 () Bool)

(assert (=> b!691269 m!947358))

(declare-fun m!947360 () Bool)

(assert (=> b!691265 m!947360))

(declare-fun m!947362 () Bool)

(assert (=> mapNonEmpty!3082 m!947362))

(declare-fun m!947364 () Bool)

(assert (=> b!691271 m!947364))

(declare-fun m!947366 () Bool)

(assert (=> b!691271 m!947366))

(declare-fun m!947368 () Bool)

(assert (=> b!691294 m!947368))

(declare-fun m!947370 () Bool)

(assert (=> b!691291 m!947370))

(declare-fun m!947372 () Bool)

(assert (=> b!691279 m!947372))

(declare-fun m!947374 () Bool)

(assert (=> b!691279 m!947374))

(declare-fun m!947376 () Bool)

(assert (=> mapNonEmpty!3081 m!947376))

(declare-fun m!947378 () Bool)

(assert (=> b!691264 m!947378))

(declare-fun m!947380 () Bool)

(assert (=> b!691286 m!947380))

(declare-fun m!947382 () Bool)

(assert (=> b!691286 m!947382))

(declare-fun m!947384 () Bool)

(assert (=> b!691272 m!947384))

(declare-fun m!947386 () Bool)

(assert (=> b!691272 m!947386))

(declare-fun m!947388 () Bool)

(assert (=> b!691272 m!947388))

(declare-fun m!947390 () Bool)

(assert (=> b!691272 m!947390))

(declare-fun m!947392 () Bool)

(assert (=> b!691299 m!947392))

(declare-fun m!947394 () Bool)

(assert (=> b!691285 m!947394))

(declare-fun m!947396 () Bool)

(assert (=> b!691295 m!947396))

(declare-fun m!947398 () Bool)

(assert (=> b!691295 m!947398))

(declare-fun m!947400 () Bool)

(assert (=> b!691290 m!947400))

(declare-fun m!947402 () Bool)

(assert (=> b!691288 m!947402))

(declare-fun m!947404 () Bool)

(assert (=> b!691266 m!947404))

(declare-fun m!947406 () Bool)

(assert (=> b!691266 m!947406))

(declare-fun m!947408 () Bool)

(assert (=> start!66100 m!947408))

(declare-fun m!947410 () Bool)

(assert (=> start!66100 m!947410))

(declare-fun m!947412 () Bool)

(assert (=> start!66100 m!947412))

(declare-fun m!947414 () Bool)

(assert (=> start!66100 m!947414))

(declare-fun m!947416 () Bool)

(assert (=> mapNonEmpty!3080 m!947416))

(check-sat (not b_next!19645) (not b!691287) (not b_next!19633) (not b_next!19641) (not b!691278) (not b!691272) (not b!691294) b_and!63377 (not start!66100) b_and!63363 (not b!691288) (not b!691266) (not b_next!19643) b_and!63369 (not mapNonEmpty!3081) (not b!691299) (not b!691291) (not b!691286) (not b!691292) b_and!63365 b_and!63375 (not b!691269) (not b!691285) (not mapNonEmpty!3080) b_and!63371 (not b!691271) b_and!63367 (not b!691268) (not mapNonEmpty!3082) (not b!691281) b_and!63373 (not b_next!19647) (not b!691295) (not b!691277) (not b_next!19637) (not b!691290) (not b!691265) (not b!691279) (not b!691264) (not b_next!19639) (not b_next!19635))
(check-sat (not b_next!19645) (not b_next!19633) (not b_next!19641) b_and!63371 b_and!63367 b_and!63373 (not b_next!19647) (not b_next!19637) b_and!63377 b_and!63363 (not b_next!19643) b_and!63369 b_and!63365 b_and!63375 (not b_next!19639) (not b_next!19635))
(get-model)

(declare-fun d!232550 () Bool)

(assert (=> d!232550 (= (isEmpty!4864 rules!1357) ((_ is Nil!7456) rules!1357))))

(assert (=> b!691291 d!232550))

(declare-fun d!232552 () Bool)

(declare-fun validCacheMapFindLongestMatch!6 (MutableMap!739 BalanceConc!5274) Bool)

(assert (=> d!232552 (= (valid!656 (_4!55 lt!284532)) (validCacheMapFindLongestMatch!6 (cache!1126 (_4!55 lt!284532)) (totalInput!1800 (_4!55 lt!284532))))))

(declare-fun bs!137352 () Bool)

(assert (= bs!137352 d!232552))

(declare-fun m!947418 () Bool)

(assert (=> bs!137352 m!947418))

(assert (=> b!691299 d!232552))

(declare-fun d!232554 () Bool)

(declare-fun list!3131 (Conc!2632) List!7475)

(assert (=> d!232554 (= (list!3129 (_1!4346 (_1!4347 lt!284532))) (list!3131 (c!121557 (_1!4346 (_1!4347 lt!284532)))))))

(declare-fun bs!137353 () Bool)

(assert (= bs!137353 d!232554))

(declare-fun m!947420 () Bool)

(assert (=> bs!137353 m!947420))

(assert (=> b!691272 d!232554))

(declare-fun d!232556 () Bool)

(assert (=> d!232556 (= (list!3129 (_1!4346 lt!284533)) (list!3131 (c!121557 (_1!4346 lt!284533))))))

(declare-fun bs!137354 () Bool)

(assert (= bs!137354 d!232556))

(declare-fun m!947422 () Bool)

(assert (=> bs!137354 m!947422))

(assert (=> b!691272 d!232556))

(declare-fun b!691312 () Bool)

(declare-fun res!313533 () Bool)

(declare-fun e!434830 () Bool)

(assert (=> b!691312 (=> (not res!313533) (not e!434830))))

(declare-fun lt!284539 () tuple2!7868)

(declare-datatypes ((tuple2!7870 0))(
  ( (tuple2!7871 (_1!4348 List!7475) (_2!4348 List!7469)) )
))
(declare-fun lexList!322 (LexerInterface!1309 List!7470 List!7469) tuple2!7870)

(assert (=> b!691312 (= res!313533 (= (list!3129 (_1!4346 lt!284539)) (_1!4348 (lexList!322 thiss!12183 rules!1357 (list!3130 input!756)))))))

(declare-fun b!691313 () Bool)

(declare-fun e!434831 () Bool)

(declare-fun e!434829 () Bool)

(assert (=> b!691313 (= e!434831 e!434829)))

(declare-fun res!313534 () Bool)

(declare-fun size!6119 (BalanceConc!5274) Int)

(assert (=> b!691313 (= res!313534 (< (size!6119 (_2!4346 lt!284539)) (size!6119 input!756)))))

(assert (=> b!691313 (=> (not res!313534) (not e!434829))))

(declare-fun d!232558 () Bool)

(assert (=> d!232558 e!434830))

(declare-fun res!313535 () Bool)

(assert (=> d!232558 (=> (not res!313535) (not e!434830))))

(assert (=> d!232558 (= res!313535 e!434831)))

(declare-fun c!121561 () Bool)

(declare-fun size!6120 (BalanceConc!5276) Int)

(assert (=> d!232558 (= c!121561 (> (size!6120 (_1!4346 lt!284539)) 0))))

(declare-fun lexTailRecV2!281 (LexerInterface!1309 List!7470 BalanceConc!5274 BalanceConc!5274 BalanceConc!5274 BalanceConc!5276) tuple2!7868)

(assert (=> d!232558 (= lt!284539 (lexTailRecV2!281 thiss!12183 rules!1357 input!756 (BalanceConc!5275 Empty!2631) input!756 (BalanceConc!5277 Empty!2632)))))

(assert (=> d!232558 (= (lex!589 thiss!12183 rules!1357 input!756) lt!284539)))

(declare-fun b!691314 () Bool)

(declare-fun isEmpty!4865 (BalanceConc!5276) Bool)

(assert (=> b!691314 (= e!434829 (not (isEmpty!4865 (_1!4346 lt!284539))))))

(declare-fun b!691315 () Bool)

(assert (=> b!691315 (= e!434831 (= (_2!4346 lt!284539) input!756))))

(declare-fun b!691316 () Bool)

(assert (=> b!691316 (= e!434830 (= (list!3130 (_2!4346 lt!284539)) (_2!4348 (lexList!322 thiss!12183 rules!1357 (list!3130 input!756)))))))

(assert (= (and d!232558 c!121561) b!691313))

(assert (= (and d!232558 (not c!121561)) b!691315))

(assert (= (and b!691313 res!313534) b!691314))

(assert (= (and d!232558 res!313535) b!691312))

(assert (= (and b!691312 res!313533) b!691316))

(declare-fun m!947424 () Bool)

(assert (=> d!232558 m!947424))

(declare-fun m!947426 () Bool)

(assert (=> d!232558 m!947426))

(declare-fun m!947428 () Bool)

(assert (=> b!691316 m!947428))

(declare-fun m!947430 () Bool)

(assert (=> b!691316 m!947430))

(assert (=> b!691316 m!947430))

(declare-fun m!947432 () Bool)

(assert (=> b!691316 m!947432))

(declare-fun m!947434 () Bool)

(assert (=> b!691314 m!947434))

(declare-fun m!947436 () Bool)

(assert (=> b!691313 m!947436))

(declare-fun m!947438 () Bool)

(assert (=> b!691313 m!947438))

(declare-fun m!947440 () Bool)

(assert (=> b!691312 m!947440))

(assert (=> b!691312 m!947430))

(assert (=> b!691312 m!947430))

(assert (=> b!691312 m!947432))

(assert (=> b!691272 d!232558))

(declare-fun bm!43588 () Bool)

(declare-datatypes ((tuple2!7872 0))(
  ( (tuple2!7873 (_1!4349 Token!2694) (_2!4349 BalanceConc!5274)) )
))
(declare-datatypes ((Option!1706 0))(
  ( (None!1705) (Some!1705 (v!17658 tuple2!7872)) )
))
(declare-datatypes ((tuple4!112 0))(
  ( (tuple4!113 (_1!4350 Option!1706) (_2!4350 CacheUp!380) (_3!413 CacheDown!384) (_4!56 CacheFindLongestMatch!40)) )
))
(declare-fun lt!284695 () tuple4!112)

(declare-fun call!43595 () tuple4!112)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!1 (LexerInterface!1309 Rule!2790 BalanceConc!5274 BalanceConc!5274 CacheUp!380 CacheDown!384 CacheFindLongestMatch!40) tuple4!112)

(assert (=> bm!43588 (= call!43595 (maxPrefixOneRuleZipperSequenceV2Mem!1 thiss!12183 (h!12857 rules!1357) input!756 input!756 (_2!4350 lt!284695) (_3!413 lt!284695) (_4!56 lt!284695)))))

(declare-fun b!691349 () Bool)

(declare-fun e!434851 () tuple4!110)

(declare-fun lt!284672 () tuple4!110)

(assert (=> b!691349 (= e!434851 (tuple4!111 (_1!4347 lt!284672) (_2!4347 lt!284672) (_3!412 lt!284672) (_4!55 lt!284672)))))

(declare-fun lt!284705 () tuple2!7868)

(declare-fun lexRec!154 (LexerInterface!1309 List!7470 BalanceConc!5274) tuple2!7868)

(assert (=> b!691349 (= lt!284705 (lexRec!154 thiss!12183 rules!1357 (_2!4349 (v!17658 (_1!4350 lt!284695)))))))

(declare-fun lt!284673 () tuple4!112)

(declare-fun maxPrefixZipperSequenceV2Mem!1 (LexerInterface!1309 List!7470 BalanceConc!5274 BalanceConc!5274 CacheUp!380 CacheDown!384 CacheFindLongestMatch!40) tuple4!112)

(assert (=> b!691349 (= lt!284673 (maxPrefixZipperSequenceV2Mem!1 thiss!12183 rules!1357 input!756 input!756 (_2!4350 lt!284695) (_3!413 lt!284695) (_4!56 lt!284695)))))

(declare-fun lt!284700 () List!7469)

(assert (=> b!691349 (= lt!284700 (list!3130 input!756))))

(declare-fun lt!284713 () List!7469)

(assert (=> b!691349 (= lt!284713 (list!3130 input!756))))

(declare-datatypes ((Unit!12634 0))(
  ( (Unit!12635) )
))
(declare-fun lt!284678 () Unit!12634)

(declare-fun lemmaIsPrefixRefl!626 (List!7469 List!7469) Unit!12634)

(assert (=> b!691349 (= lt!284678 (lemmaIsPrefixRefl!626 lt!284700 lt!284713))))

(declare-fun isPrefix!915 (List!7469 List!7469) Bool)

(assert (=> b!691349 (isPrefix!915 lt!284700 lt!284713)))

(declare-fun lt!284703 () Unit!12634)

(assert (=> b!691349 (= lt!284703 lt!284678)))

(declare-fun c!121577 () Bool)

(assert (=> b!691349 (= c!121577 (and ((_ is Cons!7456) rules!1357) ((_ is Nil!7456) (t!87288 rules!1357))))))

(declare-datatypes ((tuple4!114 0))(
  ( (tuple4!115 (_1!4351 Option!1706) (_2!4351 CacheUp!380) (_3!414 CacheFindLongestMatch!40) (_4!57 CacheDown!384)) )
))
(declare-fun lt!284665 () tuple4!114)

(declare-fun e!434848 () tuple4!114)

(assert (=> b!691349 (= lt!284665 e!434848)))

(assert (=> b!691349 (= (maxPrefixZipperSequenceV2Mem!1 thiss!12183 rules!1357 input!756 input!756 (_2!4350 lt!284695) (_3!413 lt!284695) (_4!56 lt!284695)) (tuple4!113 (_1!4351 lt!284665) (_2!4351 lt!284665) (_4!57 lt!284665) (_3!414 lt!284665)))))

(declare-fun lt!284668 () Unit!12634)

(declare-fun Unit!12636 () Unit!12634)

(assert (=> b!691349 (= lt!284668 Unit!12636)))

(declare-fun lt!284692 () List!7469)

(assert (=> b!691349 (= lt!284692 (list!3130 input!756))))

(declare-fun lt!284716 () List!7469)

(assert (=> b!691349 (= lt!284716 (list!3130 input!756))))

(declare-fun lt!284663 () Unit!12634)

(assert (=> b!691349 (= lt!284663 (lemmaIsPrefixRefl!626 lt!284692 lt!284716))))

(assert (=> b!691349 (isPrefix!915 lt!284692 lt!284716)))

(declare-fun lt!284696 () Unit!12634)

(assert (=> b!691349 (= lt!284696 lt!284663)))

(declare-fun c!121579 () Bool)

(assert (=> b!691349 (= c!121579 (and ((_ is Cons!7456) rules!1357) ((_ is Nil!7456) (t!87288 rules!1357))))))

(declare-fun e!434846 () Option!1706)

(declare-fun maxPrefixZipperSequenceV2!127 (LexerInterface!1309 List!7470 BalanceConc!5274 BalanceConc!5274) Option!1706)

(assert (=> b!691349 (= (maxPrefixZipperSequenceV2!127 thiss!12183 rules!1357 input!756 input!756) e!434846)))

(declare-fun lt!284671 () Unit!12634)

(declare-fun Unit!12637 () Unit!12634)

(assert (=> b!691349 (= lt!284671 Unit!12637)))

(declare-fun lt!284690 () List!7469)

(assert (=> b!691349 (= lt!284690 (list!3130 input!756))))

(declare-fun lt!284666 () List!7469)

(assert (=> b!691349 (= lt!284666 (list!3130 input!756))))

(declare-fun lt!284711 () Unit!12634)

(assert (=> b!691349 (= lt!284711 (lemmaIsPrefixRefl!626 lt!284690 lt!284666))))

(assert (=> b!691349 (isPrefix!915 lt!284690 lt!284666)))

(declare-fun lt!284679 () Unit!12634)

(assert (=> b!691349 (= lt!284679 lt!284711)))

(declare-fun c!121578 () Bool)

(assert (=> b!691349 (= c!121578 (and ((_ is Cons!7456) rules!1357) ((_ is Nil!7456) (t!87288 rules!1357))))))

(declare-fun e!434847 () Option!1706)

(declare-fun maxPrefixZipperSequence!456 (LexerInterface!1309 List!7470 BalanceConc!5274) Option!1706)

(assert (=> b!691349 (= (maxPrefixZipperSequence!456 thiss!12183 rules!1357 input!756) e!434847)))

(declare-fun lt!284677 () Unit!12634)

(declare-fun Unit!12638 () Unit!12634)

(assert (=> b!691349 (= lt!284677 Unit!12638)))

(declare-fun lt!284687 () List!7469)

(assert (=> b!691349 (= lt!284687 (list!3130 (BalanceConc!5275 Empty!2631)))))

(declare-fun lt!284674 () List!7469)

(declare-fun charsOf!920 (Token!2694) BalanceConc!5274)

(assert (=> b!691349 (= lt!284674 (list!3130 (charsOf!920 (_1!4349 (v!17658 (_1!4350 lt!284695))))))))

(declare-fun lt!284701 () List!7469)

(assert (=> b!691349 (= lt!284701 (list!3130 (_2!4349 (v!17658 (_1!4350 lt!284695)))))))

(declare-fun lt!284683 () Unit!12634)

(declare-fun lemmaConcatAssociativity!645 (List!7469 List!7469 List!7469) Unit!12634)

(assert (=> b!691349 (= lt!284683 (lemmaConcatAssociativity!645 lt!284687 lt!284674 lt!284701))))

(declare-fun ++!1943 (List!7469 List!7469) List!7469)

(assert (=> b!691349 (= (++!1943 (++!1943 lt!284687 lt!284674) lt!284701) (++!1943 lt!284687 (++!1943 lt!284674 lt!284701)))))

(declare-fun lt!284719 () Unit!12634)

(assert (=> b!691349 (= lt!284719 lt!284683)))

(declare-fun lt!284722 () Option!1706)

(assert (=> b!691349 (= lt!284722 (maxPrefixZipperSequence!456 thiss!12183 rules!1357 input!756))))

(declare-fun c!121576 () Bool)

(assert (=> b!691349 (= c!121576 ((_ is Some!1705) lt!284722))))

(declare-fun e!434852 () tuple2!7868)

(assert (=> b!691349 (= (lexRec!154 thiss!12183 rules!1357 input!756) e!434852)))

(declare-fun lt!284697 () Unit!12634)

(declare-fun Unit!12639 () Unit!12634)

(assert (=> b!691349 (= lt!284697 Unit!12639)))

(declare-fun lt!284684 () tuple2!7870)

(assert (=> b!691349 (= lt!284684 (lexList!322 thiss!12183 rules!1357 (list!3130 input!756)))))

(declare-fun lt!284718 () List!7475)

(assert (=> b!691349 (= lt!284718 (list!3129 (BalanceConc!5277 Empty!2632)))))

(declare-fun lt!284691 () List!7475)

(assert (=> b!691349 (= lt!284691 (Cons!7461 (_1!4349 (v!17658 (_1!4350 lt!284695))) Nil!7461))))

(declare-fun lt!284715 () List!7475)

(assert (=> b!691349 (= lt!284715 (list!3129 (_1!4346 lt!284705)))))

(declare-fun lt!284662 () Unit!12634)

(declare-fun lemmaConcatAssociativity!646 (List!7475 List!7475 List!7475) Unit!12634)

(assert (=> b!691349 (= lt!284662 (lemmaConcatAssociativity!646 lt!284718 lt!284691 lt!284715))))

(declare-fun ++!1944 (List!7475 List!7475) List!7475)

(assert (=> b!691349 (= (++!1944 (++!1944 lt!284718 lt!284691) lt!284715) (++!1944 lt!284718 (++!1944 lt!284691 lt!284715)))))

(declare-fun lt!284708 () Unit!12634)

(assert (=> b!691349 (= lt!284708 lt!284662)))

(declare-fun lt!284686 () List!7469)

(assert (=> b!691349 (= lt!284686 (++!1943 (list!3130 (BalanceConc!5275 Empty!2631)) (list!3130 (charsOf!920 (_1!4349 (v!17658 (_1!4350 lt!284695)))))))))

(declare-fun lt!284675 () List!7475)

(declare-fun append!277 (BalanceConc!5276 Token!2694) BalanceConc!5276)

(assert (=> b!691349 (= lt!284675 (list!3129 (append!277 (BalanceConc!5277 Empty!2632) (_1!4349 (v!17658 (_1!4350 lt!284695))))))))

(declare-fun lt!284710 () List!7469)

(assert (=> b!691349 (= lt!284710 (list!3130 (_2!4349 (v!17658 (_1!4350 lt!284695)))))))

(declare-fun lt!284704 () List!7475)

(assert (=> b!691349 (= lt!284704 (list!3129 (append!277 (BalanceConc!5277 Empty!2632) (_1!4349 (v!17658 (_1!4350 lt!284695))))))))

(declare-fun lt!284709 () Unit!12634)

(declare-fun lemmaLexThenLexPrefix!129 (LexerInterface!1309 List!7470 List!7469 List!7469 List!7475 List!7475 List!7469) Unit!12634)

(assert (=> b!691349 (= lt!284709 (lemmaLexThenLexPrefix!129 thiss!12183 rules!1357 lt!284686 lt!284710 lt!284704 (list!3129 (_1!4346 lt!284705)) (list!3130 (_2!4346 lt!284705))))))

(assert (=> b!691349 (= (lexList!322 thiss!12183 rules!1357 lt!284686) (tuple2!7871 lt!284704 Nil!7455))))

(declare-fun lt!284694 () Unit!12634)

(assert (=> b!691349 (= lt!284694 lt!284709)))

(declare-fun lt!284706 () BalanceConc!5274)

(declare-fun ++!1945 (BalanceConc!5274 BalanceConc!5274) BalanceConc!5274)

(assert (=> b!691349 (= lt!284706 (++!1945 (BalanceConc!5275 Empty!2631) (charsOf!920 (_1!4349 (v!17658 (_1!4350 lt!284695))))))))

(declare-fun lt!284689 () Option!1706)

(assert (=> b!691349 (= lt!284689 (maxPrefixZipperSequence!456 thiss!12183 rules!1357 lt!284706))))

(declare-fun c!121574 () Bool)

(assert (=> b!691349 (= c!121574 ((_ is Some!1705) lt!284689))))

(declare-fun e!434850 () tuple2!7868)

(assert (=> b!691349 (= (lexRec!154 thiss!12183 rules!1357 (++!1945 (BalanceConc!5275 Empty!2631) (charsOf!920 (_1!4349 (v!17658 (_1!4350 lt!284695)))))) e!434850)))

(declare-fun lt!284680 () Unit!12634)

(declare-fun Unit!12640 () Unit!12634)

(assert (=> b!691349 (= lt!284680 Unit!12640)))

(declare-fun lt!284688 () BalanceConc!5274)

(assert (=> b!691349 (= lt!284688 (++!1945 (BalanceConc!5275 Empty!2631) (charsOf!920 (_1!4349 (v!17658 (_1!4350 lt!284695))))))))

(declare-fun lt!284707 () List!7469)

(assert (=> b!691349 (= lt!284707 (list!3130 lt!284688))))

(declare-fun lt!284676 () List!7469)

(assert (=> b!691349 (= lt!284676 (list!3130 (_2!4349 (v!17658 (_1!4350 lt!284695)))))))

(declare-fun lt!284670 () Unit!12634)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!127 (List!7469 List!7469) Unit!12634)

(assert (=> b!691349 (= lt!284670 (lemmaConcatTwoListThenFSndIsSuffix!127 lt!284707 lt!284676))))

(declare-fun isSuffix!127 (List!7469 List!7469) Bool)

(assert (=> b!691349 (isSuffix!127 lt!284676 (++!1943 lt!284707 lt!284676))))

(declare-fun lt!284720 () Unit!12634)

(assert (=> b!691349 (= lt!284720 lt!284670)))

(assert (=> b!691349 (= lt!284672 (lexTailRecV2Mem!5 thiss!12183 rules!1357 input!756 lt!284688 (_2!4349 (v!17658 (_1!4350 lt!284695))) (append!277 (BalanceConc!5277 Empty!2632) (_1!4349 (v!17658 (_1!4350 lt!284695)))) (_2!4350 lt!284673) (_3!413 lt!284673) (_4!56 lt!284673)))))

(declare-fun b!691350 () Bool)

(declare-fun lt!284712 () tuple4!112)

(declare-fun lt!284717 () tuple4!112)

(assert (=> b!691350 (= lt!284717 (maxPrefixZipperSequenceV2Mem!1 thiss!12183 (t!87288 rules!1357) input!756 input!756 (_2!4350 lt!284712) (_3!413 lt!284712) (_4!56 lt!284712)))))

(assert (=> b!691350 (= lt!284712 call!43595)))

(assert (=> b!691350 (= e!434848 (tuple4!115 (ite (and ((_ is None!1705) (_1!4350 lt!284712)) ((_ is None!1705) (_1!4350 lt!284717))) None!1705 (ite ((_ is None!1705) (_1!4350 lt!284717)) (_1!4350 lt!284712) (ite ((_ is None!1705) (_1!4350 lt!284712)) (_1!4350 lt!284717) (ite (>= (size!6118 (_1!4349 (v!17658 (_1!4350 lt!284712)))) (size!6118 (_1!4349 (v!17658 (_1!4350 lt!284717))))) (_1!4350 lt!284712) (_1!4350 lt!284717))))) (_2!4350 lt!284717) (_4!56 lt!284717) (_3!413 lt!284717)))))

(declare-fun b!691352 () Bool)

(assert (=> b!691352 (= e!434850 (tuple2!7869 (BalanceConc!5277 Empty!2632) lt!284706))))

(declare-fun lt!284699 () tuple2!7868)

(declare-fun b!691353 () Bool)

(assert (=> b!691353 (= lt!284699 (lexRec!154 thiss!12183 rules!1357 (_2!4349 (v!17658 lt!284722))))))

(declare-fun prepend!257 (BalanceConc!5276 Token!2694) BalanceConc!5276)

(assert (=> b!691353 (= e!434852 (tuple2!7869 (prepend!257 (_1!4346 lt!284699) (_1!4349 (v!17658 lt!284722))) (_2!4346 lt!284699)))))

(declare-fun b!691354 () Bool)

(declare-fun res!313546 () Bool)

(declare-fun e!434849 () Bool)

(assert (=> b!691354 (=> (not res!313546) (not e!434849))))

(declare-fun lt!284685 () tuple4!110)

(assert (=> b!691354 (= res!313546 (valid!657 (_2!4347 lt!284685)))))

(declare-fun b!691355 () Bool)

(assert (=> b!691355 (= e!434849 (= (totalInput!1800 (_4!55 lt!284685)) input!756))))

(declare-fun bm!43589 () Bool)

(declare-fun call!43594 () Option!1706)

(declare-fun maxPrefixOneRuleZipperSequenceV2!26 (LexerInterface!1309 Rule!2790 BalanceConc!5274 BalanceConc!5274) Option!1706)

(assert (=> bm!43589 (= call!43594 (maxPrefixOneRuleZipperSequenceV2!26 thiss!12183 (h!12857 rules!1357) input!756 input!756))))

(declare-fun bm!43590 () Bool)

(declare-fun call!43593 () Option!1706)

(declare-fun maxPrefixOneRuleZipperSequence!209 (LexerInterface!1309 Rule!2790 BalanceConc!5274) Option!1706)

(assert (=> bm!43590 (= call!43593 (maxPrefixOneRuleZipperSequence!209 thiss!12183 (h!12857 rules!1357) input!756))))

(declare-fun b!691356 () Bool)

(declare-fun lt!284693 () tuple2!7868)

(assert (=> b!691356 (= lt!284693 (lexRec!154 thiss!12183 rules!1357 (_2!4349 (v!17658 lt!284689))))))

(assert (=> b!691356 (= e!434850 (tuple2!7869 (prepend!257 (_1!4346 lt!284693) (_1!4349 (v!17658 lt!284689))) (_2!4346 lt!284693)))))

(declare-fun b!691357 () Bool)

(declare-fun lt!284664 () Option!1706)

(assert (=> b!691357 (= lt!284664 (maxPrefixZipperSequence!456 thiss!12183 (t!87288 rules!1357) input!756))))

(declare-fun lt!284721 () Option!1706)

(assert (=> b!691357 (= lt!284721 call!43593)))

(assert (=> b!691357 (= e!434847 (ite (and ((_ is None!1705) lt!284721) ((_ is None!1705) lt!284664)) None!1705 (ite ((_ is None!1705) lt!284664) lt!284721 (ite ((_ is None!1705) lt!284721) lt!284664 (ite (>= (size!6118 (_1!4349 (v!17658 lt!284721))) (size!6118 (_1!4349 (v!17658 lt!284664)))) lt!284721 lt!284664)))))))

(declare-fun b!691358 () Bool)

(declare-fun res!313545 () Bool)

(assert (=> b!691358 (=> (not res!313545) (not e!434849))))

(assert (=> b!691358 (= res!313545 (valid!658 (_3!412 lt!284685)))))

(declare-fun b!691359 () Bool)

(assert (=> b!691359 (= e!434847 call!43593)))

(declare-fun b!691360 () Bool)

(assert (=> b!691360 (= e!434846 call!43594)))

(declare-fun b!691361 () Bool)

(declare-fun res!313544 () Bool)

(assert (=> b!691361 (=> (not res!313544) (not e!434849))))

(assert (=> b!691361 (= res!313544 (valid!656 (_4!55 lt!284685)))))

(declare-fun d!232560 () Bool)

(assert (=> d!232560 e!434849))

(declare-fun res!313547 () Bool)

(assert (=> d!232560 (=> (not res!313547) (not e!434849))))

(assert (=> d!232560 (= res!313547 (= (_1!4347 lt!284685) (lexTailRecV2!281 thiss!12183 rules!1357 input!756 (BalanceConc!5275 Empty!2631) input!756 (BalanceConc!5277 Empty!2632))))))

(assert (=> d!232560 (= lt!284685 e!434851)))

(declare-fun c!121575 () Bool)

(assert (=> d!232560 (= c!121575 ((_ is Some!1705) (_1!4350 lt!284695)))))

(assert (=> d!232560 (= lt!284695 (maxPrefixZipperSequenceV2Mem!1 thiss!12183 rules!1357 input!756 input!756 cacheUp!457 cacheDown!470 cacheFindLongestMatch!59))))

(declare-fun lt!284682 () Unit!12634)

(declare-fun lt!284714 () Unit!12634)

(assert (=> d!232560 (= lt!284682 lt!284714)))

(declare-fun lt!284667 () List!7469)

(declare-fun lt!284698 () List!7469)

(assert (=> d!232560 (isSuffix!127 lt!284667 (++!1943 lt!284698 lt!284667))))

(assert (=> d!232560 (= lt!284714 (lemmaConcatTwoListThenFSndIsSuffix!127 lt!284698 lt!284667))))

(assert (=> d!232560 (= lt!284667 (list!3130 input!756))))

(assert (=> d!232560 (= lt!284698 (list!3130 (BalanceConc!5275 Empty!2631)))))

(assert (=> d!232560 (= (lexTailRecV2Mem!5 thiss!12183 rules!1357 input!756 (BalanceConc!5275 Empty!2631) input!756 (BalanceConc!5277 Empty!2632) cacheUp!457 cacheDown!470 cacheFindLongestMatch!59) lt!284685)))

(declare-fun b!691351 () Bool)

(assert (=> b!691351 (= e!434851 (tuple4!111 (tuple2!7869 (BalanceConc!5277 Empty!2632) input!756) (_2!4350 lt!284695) (_3!413 lt!284695) (_4!56 lt!284695)))))

(declare-fun lt!284669 () Option!1706)

(declare-fun b!691362 () Bool)

(assert (=> b!691362 (= lt!284669 (maxPrefixZipperSequenceV2!127 thiss!12183 (t!87288 rules!1357) input!756 input!756))))

(declare-fun lt!284702 () Option!1706)

(assert (=> b!691362 (= lt!284702 call!43594)))

(assert (=> b!691362 (= e!434846 (ite (and ((_ is None!1705) lt!284702) ((_ is None!1705) lt!284669)) None!1705 (ite ((_ is None!1705) lt!284669) lt!284702 (ite ((_ is None!1705) lt!284702) lt!284669 (ite (>= (size!6118 (_1!4349 (v!17658 lt!284702))) (size!6118 (_1!4349 (v!17658 lt!284669)))) lt!284702 lt!284669)))))))

(declare-fun b!691363 () Bool)

(assert (=> b!691363 (= e!434852 (tuple2!7869 (BalanceConc!5277 Empty!2632) input!756))))

(declare-fun b!691364 () Bool)

(declare-fun lt!284681 () tuple4!112)

(assert (=> b!691364 (= lt!284681 call!43595)))

(assert (=> b!691364 (= e!434848 (tuple4!115 (_1!4350 lt!284681) (_2!4350 lt!284681) (_4!56 lt!284681) (_3!413 lt!284681)))))

(assert (= (and d!232560 c!121575) b!691349))

(assert (= (and d!232560 (not c!121575)) b!691351))

(assert (= (and b!691349 c!121577) b!691364))

(assert (= (and b!691349 (not c!121577)) b!691350))

(assert (= (or b!691364 b!691350) bm!43588))

(assert (= (and b!691349 c!121579) b!691360))

(assert (= (and b!691349 (not c!121579)) b!691362))

(assert (= (or b!691360 b!691362) bm!43589))

(assert (= (and b!691349 c!121578) b!691359))

(assert (= (and b!691349 (not c!121578)) b!691357))

(assert (= (or b!691359 b!691357) bm!43590))

(assert (= (and b!691349 c!121576) b!691353))

(assert (= (and b!691349 (not c!121576)) b!691363))

(assert (= (and b!691349 c!121574) b!691356))

(assert (= (and b!691349 (not c!121574)) b!691352))

(assert (= (and d!232560 res!313547) b!691361))

(assert (= (and b!691361 res!313544) b!691354))

(assert (= (and b!691354 res!313546) b!691358))

(assert (= (and b!691358 res!313545) b!691355))

(declare-fun m!947442 () Bool)

(assert (=> b!691357 m!947442))

(declare-fun m!947444 () Bool)

(assert (=> bm!43590 m!947444))

(declare-fun m!947446 () Bool)

(assert (=> bm!43589 m!947446))

(declare-fun m!947448 () Bool)

(assert (=> d!232560 m!947448))

(declare-fun m!947450 () Bool)

(assert (=> d!232560 m!947450))

(declare-fun m!947452 () Bool)

(assert (=> d!232560 m!947452))

(assert (=> d!232560 m!947430))

(assert (=> d!232560 m!947426))

(declare-fun m!947454 () Bool)

(assert (=> d!232560 m!947454))

(assert (=> d!232560 m!947452))

(declare-fun m!947456 () Bool)

(assert (=> d!232560 m!947456))

(declare-fun m!947458 () Bool)

(assert (=> b!691358 m!947458))

(declare-fun m!947460 () Bool)

(assert (=> b!691350 m!947460))

(declare-fun m!947462 () Bool)

(assert (=> b!691356 m!947462))

(declare-fun m!947464 () Bool)

(assert (=> b!691356 m!947464))

(declare-fun m!947466 () Bool)

(assert (=> b!691349 m!947466))

(declare-fun m!947468 () Bool)

(assert (=> b!691349 m!947468))

(declare-fun m!947470 () Bool)

(assert (=> b!691349 m!947470))

(declare-fun m!947472 () Bool)

(assert (=> b!691349 m!947472))

(declare-fun m!947474 () Bool)

(assert (=> b!691349 m!947474))

(declare-fun m!947476 () Bool)

(assert (=> b!691349 m!947476))

(declare-fun m!947478 () Bool)

(assert (=> b!691349 m!947478))

(assert (=> b!691349 m!947430))

(assert (=> b!691349 m!947478))

(declare-fun m!947480 () Bool)

(assert (=> b!691349 m!947480))

(assert (=> b!691349 m!947466))

(declare-fun m!947482 () Bool)

(assert (=> b!691349 m!947482))

(declare-fun m!947484 () Bool)

(assert (=> b!691349 m!947484))

(declare-fun m!947486 () Bool)

(assert (=> b!691349 m!947486))

(declare-fun m!947488 () Bool)

(assert (=> b!691349 m!947488))

(declare-fun m!947490 () Bool)

(assert (=> b!691349 m!947490))

(assert (=> b!691349 m!947448))

(declare-fun m!947492 () Bool)

(assert (=> b!691349 m!947492))

(declare-fun m!947494 () Bool)

(assert (=> b!691349 m!947494))

(assert (=> b!691349 m!947472))

(declare-fun m!947496 () Bool)

(assert (=> b!691349 m!947496))

(declare-fun m!947498 () Bool)

(assert (=> b!691349 m!947498))

(declare-fun m!947500 () Bool)

(assert (=> b!691349 m!947500))

(declare-fun m!947502 () Bool)

(assert (=> b!691349 m!947502))

(declare-fun m!947504 () Bool)

(assert (=> b!691349 m!947504))

(declare-fun m!947506 () Bool)

(assert (=> b!691349 m!947506))

(declare-fun m!947508 () Bool)

(assert (=> b!691349 m!947508))

(declare-fun m!947510 () Bool)

(assert (=> b!691349 m!947510))

(declare-fun m!947512 () Bool)

(assert (=> b!691349 m!947512))

(declare-fun m!947514 () Bool)

(assert (=> b!691349 m!947514))

(declare-fun m!947516 () Bool)

(assert (=> b!691349 m!947516))

(declare-fun m!947518 () Bool)

(assert (=> b!691349 m!947518))

(declare-fun m!947520 () Bool)

(assert (=> b!691349 m!947520))

(declare-fun m!947522 () Bool)

(assert (=> b!691349 m!947522))

(assert (=> b!691349 m!947468))

(assert (=> b!691349 m!947492))

(declare-fun m!947524 () Bool)

(assert (=> b!691349 m!947524))

(assert (=> b!691349 m!947494))

(assert (=> b!691349 m!947474))

(assert (=> b!691349 m!947486))

(assert (=> b!691349 m!947430))

(assert (=> b!691349 m!947432))

(assert (=> b!691349 m!947472))

(declare-fun m!947526 () Bool)

(assert (=> b!691349 m!947526))

(assert (=> b!691349 m!947484))

(declare-fun m!947528 () Bool)

(assert (=> b!691349 m!947528))

(declare-fun m!947530 () Bool)

(assert (=> b!691349 m!947530))

(declare-fun m!947532 () Bool)

(assert (=> b!691349 m!947532))

(declare-fun m!947534 () Bool)

(assert (=> b!691349 m!947534))

(declare-fun m!947536 () Bool)

(assert (=> b!691349 m!947536))

(assert (=> b!691349 m!947532))

(assert (=> b!691349 m!947448))

(declare-fun m!947538 () Bool)

(assert (=> b!691349 m!947538))

(declare-fun m!947540 () Bool)

(assert (=> b!691349 m!947540))

(declare-fun m!947542 () Bool)

(assert (=> b!691349 m!947542))

(assert (=> b!691349 m!947494))

(assert (=> b!691349 m!947538))

(declare-fun m!947544 () Bool)

(assert (=> b!691349 m!947544))

(declare-fun m!947546 () Bool)

(assert (=> b!691354 m!947546))

(declare-fun m!947548 () Bool)

(assert (=> b!691353 m!947548))

(declare-fun m!947550 () Bool)

(assert (=> b!691353 m!947550))

(declare-fun m!947552 () Bool)

(assert (=> bm!43588 m!947552))

(declare-fun m!947554 () Bool)

(assert (=> b!691361 m!947554))

(declare-fun m!947556 () Bool)

(assert (=> b!691362 m!947556))

(assert (=> b!691272 d!232560))

(declare-fun d!232562 () Bool)

(declare-fun res!313550 () Bool)

(declare-fun e!434855 () Bool)

(assert (=> d!232562 (=> (not res!313550) (not e!434855))))

(assert (=> d!232562 (= res!313550 ((_ is HashMap!739) (cache!1126 cacheFindLongestMatch!59)))))

(assert (=> d!232562 (= (inv!9556 cacheFindLongestMatch!59) e!434855)))

(declare-fun b!691367 () Bool)

(assert (=> b!691367 (= e!434855 (validCacheMapFindLongestMatch!6 (cache!1126 cacheFindLongestMatch!59) (totalInput!1800 cacheFindLongestMatch!59)))))

(assert (= (and d!232562 res!313550) b!691367))

(declare-fun m!947558 () Bool)

(assert (=> b!691367 m!947558))

(assert (=> start!66100 d!232562))

(declare-fun d!232564 () Bool)

(declare-fun isBalanced!695 (Conc!2631) Bool)

(assert (=> d!232564 (= (inv!9555 input!756) (isBalanced!695 (c!121556 input!756)))))

(declare-fun bs!137355 () Bool)

(assert (= bs!137355 d!232564))

(declare-fun m!947560 () Bool)

(assert (=> bs!137355 m!947560))

(assert (=> start!66100 d!232564))

(declare-fun d!232566 () Bool)

(declare-fun res!313553 () Bool)

(declare-fun e!434858 () Bool)

(assert (=> d!232566 (=> (not res!313553) (not e!434858))))

(assert (=> d!232566 (= res!313553 ((_ is HashMap!741) (cache!1128 cacheUp!457)))))

(assert (=> d!232566 (= (inv!9557 cacheUp!457) e!434858)))

(declare-fun b!691370 () Bool)

(declare-fun validCacheMapUp!60 (MutableMap!741) Bool)

(assert (=> b!691370 (= e!434858 (validCacheMapUp!60 (cache!1128 cacheUp!457)))))

(assert (= (and d!232566 res!313553) b!691370))

(declare-fun m!947562 () Bool)

(assert (=> b!691370 m!947562))

(assert (=> start!66100 d!232566))

(declare-fun d!232568 () Bool)

(declare-fun res!313556 () Bool)

(declare-fun e!434861 () Bool)

(assert (=> d!232568 (=> (not res!313556) (not e!434861))))

(assert (=> d!232568 (= res!313556 ((_ is HashMap!740) (cache!1127 cacheDown!470)))))

(assert (=> d!232568 (= (inv!9558 cacheDown!470) e!434861)))

(declare-fun b!691373 () Bool)

(declare-fun validCacheMapDown!60 (MutableMap!740) Bool)

(assert (=> b!691373 (= e!434861 (validCacheMapDown!60 (cache!1127 cacheDown!470)))))

(assert (= (and d!232568 res!313556) b!691373))

(declare-fun m!947564 () Bool)

(assert (=> b!691373 m!947564))

(assert (=> start!66100 d!232568))

(declare-fun d!232570 () Bool)

(declare-fun c!121582 () Bool)

(assert (=> d!232570 (= c!121582 ((_ is Node!2631) (c!121556 input!756)))))

(declare-fun e!434866 () Bool)

(assert (=> d!232570 (= (inv!9554 (c!121556 input!756)) e!434866)))

(declare-fun b!691380 () Bool)

(declare-fun inv!9559 (Conc!2631) Bool)

(assert (=> b!691380 (= e!434866 (inv!9559 (c!121556 input!756)))))

(declare-fun b!691381 () Bool)

(declare-fun e!434867 () Bool)

(assert (=> b!691381 (= e!434866 e!434867)))

(declare-fun res!313559 () Bool)

(assert (=> b!691381 (= res!313559 (not ((_ is Leaf!3901) (c!121556 input!756))))))

(assert (=> b!691381 (=> res!313559 e!434867)))

(declare-fun b!691382 () Bool)

(declare-fun inv!9560 (Conc!2631) Bool)

(assert (=> b!691382 (= e!434867 (inv!9560 (c!121556 input!756)))))

(assert (= (and d!232570 c!121582) b!691380))

(assert (= (and d!232570 (not c!121582)) b!691381))

(assert (= (and b!691381 (not res!313559)) b!691382))

(declare-fun m!947566 () Bool)

(assert (=> b!691380 m!947566))

(declare-fun m!947568 () Bool)

(assert (=> b!691382 m!947568))

(assert (=> b!691281 d!232570))

(declare-fun d!232572 () Bool)

(declare-fun res!313562 () Bool)

(declare-fun e!434870 () Bool)

(assert (=> d!232572 (=> (not res!313562) (not e!434870))))

(declare-fun rulesValid!527 (LexerInterface!1309 List!7470) Bool)

(assert (=> d!232572 (= res!313562 (rulesValid!527 thiss!12183 rules!1357))))

(assert (=> d!232572 (= (rulesInvariant!1242 thiss!12183 rules!1357) e!434870)))

(declare-fun b!691385 () Bool)

(declare-datatypes ((List!7476 0))(
  ( (Nil!7462) (Cons!7462 (h!12863 String!9418) (t!87294 List!7476)) )
))
(declare-fun noDuplicateTag!527 (LexerInterface!1309 List!7470 List!7476) Bool)

(assert (=> b!691385 (= e!434870 (noDuplicateTag!527 thiss!12183 rules!1357 Nil!7462))))

(assert (= (and d!232572 res!313562) b!691385))

(declare-fun m!947570 () Bool)

(assert (=> d!232572 m!947570))

(declare-fun m!947572 () Bool)

(assert (=> b!691385 m!947572))

(assert (=> b!691264 d!232572))

(declare-fun d!232574 () Bool)

(assert (=> d!232574 (= (inv!9555 (totalInput!1800 cacheFindLongestMatch!59)) (isBalanced!695 (c!121556 (totalInput!1800 cacheFindLongestMatch!59))))))

(declare-fun bs!137356 () Bool)

(assert (= bs!137356 d!232574))

(declare-fun m!947574 () Bool)

(assert (=> bs!137356 m!947574))

(assert (=> b!691294 d!232574))

(declare-fun d!232576 () Bool)

(assert (=> d!232576 (= (array_inv!951 (_keys!1062 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))) (bvsge (size!6114 (_keys!1062 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!691266 d!232576))

(declare-fun d!232578 () Bool)

(assert (=> d!232578 (= (array_inv!952 (_values!1047 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))) (bvsge (size!6116 (_values!1047 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!691266 d!232578))

(declare-fun d!232580 () Bool)

(assert (=> d!232580 (= (valid!656 cacheFindLongestMatch!59) (validCacheMapFindLongestMatch!6 (cache!1126 cacheFindLongestMatch!59) (totalInput!1800 cacheFindLongestMatch!59)))))

(declare-fun bs!137357 () Bool)

(assert (= bs!137357 d!232580))

(assert (=> bs!137357 m!947558))

(assert (=> b!691265 d!232580))

(declare-fun d!232582 () Bool)

(declare-fun list!3132 (Conc!2631) List!7469)

(assert (=> d!232582 (= (list!3130 (_2!4346 (_1!4347 lt!284532))) (list!3132 (c!121556 (_2!4346 (_1!4347 lt!284532)))))))

(declare-fun bs!137358 () Bool)

(assert (= bs!137358 d!232582))

(declare-fun m!947576 () Bool)

(assert (=> bs!137358 m!947576))

(assert (=> b!691295 d!232582))

(declare-fun d!232584 () Bool)

(assert (=> d!232584 (= (list!3130 (_2!4346 lt!284533)) (list!3132 (c!121556 (_2!4346 lt!284533))))))

(declare-fun bs!137359 () Bool)

(assert (= bs!137359 d!232584))

(declare-fun m!947578 () Bool)

(assert (=> bs!137359 m!947578))

(assert (=> b!691295 d!232584))

(declare-fun d!232586 () Bool)

(assert (=> d!232586 (= (array_inv!951 (_keys!1061 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))) (bvsge (size!6114 (_keys!1061 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!691286 d!232586))

(declare-fun d!232588 () Bool)

(assert (=> d!232588 (= (array_inv!954 (_values!1046 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))) (bvsge (size!6115 (_values!1046 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!691286 d!232588))

(declare-fun d!232590 () Bool)

(assert (=> d!232590 (= (valid!658 cacheDown!470) (validCacheMapDown!60 (cache!1127 cacheDown!470)))))

(declare-fun bs!137360 () Bool)

(assert (= bs!137360 d!232590))

(assert (=> bs!137360 m!947564))

(assert (=> b!691285 d!232590))

(declare-fun d!232592 () Bool)

(assert (=> d!232592 (= (valid!657 (_2!4347 lt!284532)) (validCacheMapUp!60 (cache!1128 (_2!4347 lt!284532))))))

(declare-fun bs!137361 () Bool)

(assert (= bs!137361 d!232592))

(declare-fun m!947580 () Bool)

(assert (=> bs!137361 m!947580))

(assert (=> b!691269 d!232592))

(declare-fun d!232594 () Bool)

(assert (=> d!232594 (= (valid!657 cacheUp!457) (validCacheMapUp!60 (cache!1128 cacheUp!457)))))

(declare-fun bs!137362 () Bool)

(assert (= bs!137362 d!232594))

(assert (=> bs!137362 m!947562))

(assert (=> b!691268 d!232594))

(declare-fun d!232596 () Bool)

(assert (=> d!232596 (= (array_inv!951 (_keys!1063 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))) (bvsge (size!6114 (_keys!1063 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!691279 d!232596))

(declare-fun d!232598 () Bool)

(assert (=> d!232598 (= (array_inv!953 (_values!1048 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))) (bvsge (size!6117 (_values!1048 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!691279 d!232598))

(declare-fun d!232600 () Bool)

(declare-fun c!121583 () Bool)

(assert (=> d!232600 (= c!121583 ((_ is Node!2631) (c!121556 (totalInput!1800 cacheFindLongestMatch!59))))))

(declare-fun e!434871 () Bool)

(assert (=> d!232600 (= (inv!9554 (c!121556 (totalInput!1800 cacheFindLongestMatch!59))) e!434871)))

(declare-fun b!691386 () Bool)

(assert (=> b!691386 (= e!434871 (inv!9559 (c!121556 (totalInput!1800 cacheFindLongestMatch!59))))))

(declare-fun b!691387 () Bool)

(declare-fun e!434872 () Bool)

(assert (=> b!691387 (= e!434871 e!434872)))

(declare-fun res!313563 () Bool)

(assert (=> b!691387 (= res!313563 (not ((_ is Leaf!3901) (c!121556 (totalInput!1800 cacheFindLongestMatch!59)))))))

(assert (=> b!691387 (=> res!313563 e!434872)))

(declare-fun b!691388 () Bool)

(assert (=> b!691388 (= e!434872 (inv!9560 (c!121556 (totalInput!1800 cacheFindLongestMatch!59))))))

(assert (= (and d!232600 c!121583) b!691386))

(assert (= (and d!232600 (not c!121583)) b!691387))

(assert (= (and b!691387 (not res!313563)) b!691388))

(declare-fun m!947582 () Bool)

(assert (=> b!691386 m!947582))

(declare-fun m!947584 () Bool)

(assert (=> b!691388 m!947584))

(assert (=> b!691288 d!232600))

(declare-fun d!232602 () Bool)

(assert (=> d!232602 (= (valid!658 (_3!412 lt!284532)) (validCacheMapDown!60 (cache!1127 (_3!412 lt!284532))))))

(declare-fun bs!137363 () Bool)

(assert (= bs!137363 d!232602))

(declare-fun m!947586 () Bool)

(assert (=> bs!137363 m!947586))

(assert (=> b!691290 d!232602))

(declare-fun d!232604 () Bool)

(assert (=> d!232604 (= (inv!9547 (tag!1757 (h!12857 rules!1357))) (= (mod (str.len (value!48247 (tag!1757 (h!12857 rules!1357)))) 2) 0))))

(assert (=> b!691271 d!232604))

(declare-fun d!232606 () Bool)

(declare-fun res!313566 () Bool)

(declare-fun e!434875 () Bool)

(assert (=> d!232606 (=> (not res!313566) (not e!434875))))

(declare-fun semiInverseModEq!570 (Int Int) Bool)

(assert (=> d!232606 (= res!313566 (semiInverseModEq!570 (toChars!2316 (transformation!1495 (h!12857 rules!1357))) (toValue!2457 (transformation!1495 (h!12857 rules!1357)))))))

(assert (=> d!232606 (= (inv!9553 (transformation!1495 (h!12857 rules!1357))) e!434875)))

(declare-fun b!691391 () Bool)

(declare-fun equivClasses!545 (Int Int) Bool)

(assert (=> b!691391 (= e!434875 (equivClasses!545 (toChars!2316 (transformation!1495 (h!12857 rules!1357))) (toValue!2457 (transformation!1495 (h!12857 rules!1357)))))))

(assert (= (and d!232606 res!313566) b!691391))

(declare-fun m!947588 () Bool)

(assert (=> d!232606 m!947588))

(declare-fun m!947590 () Bool)

(assert (=> b!691391 m!947590))

(assert (=> b!691271 d!232606))

(declare-fun tp!208102 () Bool)

(declare-fun b!691400 () Bool)

(declare-fun e!434880 () Bool)

(declare-fun tp!208101 () Bool)

(assert (=> b!691400 (= e!434880 (and (inv!9554 (left!5980 (c!121556 input!756))) tp!208102 (inv!9554 (right!6310 (c!121556 input!756))) tp!208101))))

(declare-fun b!691402 () Bool)

(declare-fun e!434881 () Bool)

(declare-fun tp!208100 () Bool)

(assert (=> b!691402 (= e!434881 tp!208100)))

(declare-fun b!691401 () Bool)

(declare-fun inv!9561 (IArray!5263) Bool)

(assert (=> b!691401 (= e!434880 (and (inv!9561 (xs!5282 (c!121556 input!756))) e!434881))))

(assert (=> b!691281 (= tp!208071 (and (inv!9554 (c!121556 input!756)) e!434880))))

(assert (= (and b!691281 ((_ is Node!2631) (c!121556 input!756))) b!691400))

(assert (= b!691401 b!691402))

(assert (= (and b!691281 ((_ is Leaf!3901) (c!121556 input!756))) b!691401))

(declare-fun m!947592 () Bool)

(assert (=> b!691400 m!947592))

(declare-fun m!947594 () Bool)

(assert (=> b!691400 m!947594))

(declare-fun m!947596 () Bool)

(assert (=> b!691401 m!947596))

(assert (=> b!691281 m!947354))

(declare-fun e!434887 () Bool)

(assert (=> b!691292 (= tp!208073 e!434887)))

(declare-fun setIsEmpty!3771 () Bool)

(declare-fun setRes!3771 () Bool)

(assert (=> setIsEmpty!3771 setRes!3771))

(declare-fun b!691409 () Bool)

(declare-fun tp!208110 () Bool)

(assert (=> b!691409 (= e!434887 (and setRes!3771 tp!208110))))

(declare-fun condSetEmpty!3771 () Bool)

(assert (=> b!691409 (= condSetEmpty!3771 (= (_1!4340 (_1!4341 (h!12859 mapDefault!3080))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691410 () Bool)

(declare-fun e!434886 () Bool)

(declare-fun tp!208111 () Bool)

(assert (=> b!691410 (= e!434886 tp!208111)))

(declare-fun setElem!3771 () Context!486)

(declare-fun tp!208109 () Bool)

(declare-fun setNonEmpty!3771 () Bool)

(declare-fun inv!9562 (Context!486) Bool)

(assert (=> setNonEmpty!3771 (= setRes!3771 (and tp!208109 (inv!9562 setElem!3771) e!434886))))

(declare-fun setRest!3771 () (InoxSet Context!486))

(assert (=> setNonEmpty!3771 (= (_1!4340 (_1!4341 (h!12859 mapDefault!3080))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3771 true) setRest!3771))))

(assert (= (and b!691409 condSetEmpty!3771) setIsEmpty!3771))

(assert (= (and b!691409 (not condSetEmpty!3771)) setNonEmpty!3771))

(assert (= setNonEmpty!3771 b!691410))

(assert (= (and b!691292 ((_ is Cons!7458) mapDefault!3080)) b!691409))

(declare-fun m!947598 () Bool)

(assert (=> setNonEmpty!3771 m!947598))

(declare-fun b!691419 () Bool)

(declare-fun e!434896 () Bool)

(declare-fun tp!208125 () Bool)

(assert (=> b!691419 (= e!434896 tp!208125)))

(declare-fun e!434895 () Bool)

(assert (=> b!691266 (= tp!208090 e!434895)))

(declare-fun b!691420 () Bool)

(declare-fun e!434894 () Bool)

(declare-fun tp!208122 () Bool)

(assert (=> b!691420 (= e!434894 tp!208122)))

(declare-fun setIsEmpty!3774 () Bool)

(declare-fun setRes!3774 () Bool)

(assert (=> setIsEmpty!3774 setRes!3774))

(declare-fun b!691421 () Bool)

(declare-fun tp_is_empty!3645 () Bool)

(declare-fun tp!208124 () Bool)

(declare-fun tp!208126 () Bool)

(assert (=> b!691421 (= e!434895 (and tp!208124 (inv!9562 (_2!4342 (_1!4343 (h!12860 (zeroValue!1025 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470)))))))))) e!434894 tp_is_empty!3645 setRes!3774 tp!208126))))

(declare-fun condSetEmpty!3774 () Bool)

(assert (=> b!691421 (= condSetEmpty!3774 (= (_2!4343 (h!12860 (zeroValue!1025 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470)))))))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun setElem!3774 () Context!486)

(declare-fun tp!208123 () Bool)

(declare-fun setNonEmpty!3774 () Bool)

(assert (=> setNonEmpty!3774 (= setRes!3774 (and tp!208123 (inv!9562 setElem!3774) e!434896))))

(declare-fun setRest!3774 () (InoxSet Context!486))

(assert (=> setNonEmpty!3774 (= (_2!4343 (h!12860 (zeroValue!1025 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3774 true) setRest!3774))))

(assert (= b!691421 b!691420))

(assert (= (and b!691421 condSetEmpty!3774) setIsEmpty!3774))

(assert (= (and b!691421 (not condSetEmpty!3774)) setNonEmpty!3774))

(assert (= setNonEmpty!3774 b!691419))

(assert (= (and b!691266 ((_ is Cons!7459) (zeroValue!1025 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470)))))))) b!691421))

(declare-fun m!947600 () Bool)

(assert (=> b!691421 m!947600))

(declare-fun m!947602 () Bool)

(assert (=> setNonEmpty!3774 m!947602))

(declare-fun b!691422 () Bool)

(declare-fun e!434899 () Bool)

(declare-fun tp!208130 () Bool)

(assert (=> b!691422 (= e!434899 tp!208130)))

(declare-fun e!434898 () Bool)

(assert (=> b!691266 (= tp!208075 e!434898)))

(declare-fun b!691423 () Bool)

(declare-fun e!434897 () Bool)

(declare-fun tp!208127 () Bool)

(assert (=> b!691423 (= e!434897 tp!208127)))

(declare-fun setIsEmpty!3775 () Bool)

(declare-fun setRes!3775 () Bool)

(assert (=> setIsEmpty!3775 setRes!3775))

(declare-fun tp!208131 () Bool)

(declare-fun tp!208129 () Bool)

(declare-fun b!691424 () Bool)

(assert (=> b!691424 (= e!434898 (and tp!208129 (inv!9562 (_2!4342 (_1!4343 (h!12860 (minValue!1025 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470)))))))))) e!434897 tp_is_empty!3645 setRes!3775 tp!208131))))

(declare-fun condSetEmpty!3775 () Bool)

(assert (=> b!691424 (= condSetEmpty!3775 (= (_2!4343 (h!12860 (minValue!1025 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470)))))))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun setNonEmpty!3775 () Bool)

(declare-fun setElem!3775 () Context!486)

(declare-fun tp!208128 () Bool)

(assert (=> setNonEmpty!3775 (= setRes!3775 (and tp!208128 (inv!9562 setElem!3775) e!434899))))

(declare-fun setRest!3775 () (InoxSet Context!486))

(assert (=> setNonEmpty!3775 (= (_2!4343 (h!12860 (minValue!1025 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3775 true) setRest!3775))))

(assert (= b!691424 b!691423))

(assert (= (and b!691424 condSetEmpty!3775) setIsEmpty!3775))

(assert (= (and b!691424 (not condSetEmpty!3775)) setNonEmpty!3775))

(assert (= setNonEmpty!3775 b!691422))

(assert (= (and b!691266 ((_ is Cons!7459) (minValue!1025 (v!17654 (underlying!1719 (v!17655 (underlying!1720 (cache!1127 cacheDown!470)))))))) b!691424))

(declare-fun m!947604 () Bool)

(assert (=> b!691424 m!947604))

(declare-fun m!947606 () Bool)

(assert (=> setNonEmpty!3775 m!947606))

(declare-fun b!691425 () Bool)

(declare-fun e!434902 () Bool)

(declare-fun tp!208135 () Bool)

(assert (=> b!691425 (= e!434902 tp!208135)))

(declare-fun e!434901 () Bool)

(assert (=> b!691277 (= tp!208079 e!434901)))

(declare-fun b!691426 () Bool)

(declare-fun e!434900 () Bool)

(declare-fun tp!208132 () Bool)

(assert (=> b!691426 (= e!434900 tp!208132)))

(declare-fun setIsEmpty!3776 () Bool)

(declare-fun setRes!3776 () Bool)

(assert (=> setIsEmpty!3776 setRes!3776))

(declare-fun tp!208136 () Bool)

(declare-fun tp!208134 () Bool)

(declare-fun b!691427 () Bool)

(assert (=> b!691427 (= e!434901 (and tp!208134 (inv!9562 (_2!4342 (_1!4343 (h!12860 mapDefault!3081)))) e!434900 tp_is_empty!3645 setRes!3776 tp!208136))))

(declare-fun condSetEmpty!3776 () Bool)

(assert (=> b!691427 (= condSetEmpty!3776 (= (_2!4343 (h!12860 mapDefault!3081)) ((as const (Array Context!486 Bool)) false)))))

(declare-fun setElem!3776 () Context!486)

(declare-fun setNonEmpty!3776 () Bool)

(declare-fun tp!208133 () Bool)

(assert (=> setNonEmpty!3776 (= setRes!3776 (and tp!208133 (inv!9562 setElem!3776) e!434902))))

(declare-fun setRest!3776 () (InoxSet Context!486))

(assert (=> setNonEmpty!3776 (= (_2!4343 (h!12860 mapDefault!3081)) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3776 true) setRest!3776))))

(assert (= b!691427 b!691426))

(assert (= (and b!691427 condSetEmpty!3776) setIsEmpty!3776))

(assert (= (and b!691427 (not condSetEmpty!3776)) setNonEmpty!3776))

(assert (= setNonEmpty!3776 b!691425))

(assert (= (and b!691277 ((_ is Cons!7459) mapDefault!3081)) b!691427))

(declare-fun m!947608 () Bool)

(assert (=> b!691427 m!947608))

(declare-fun m!947610 () Bool)

(assert (=> setNonEmpty!3776 m!947610))

(declare-fun e!434904 () Bool)

(assert (=> b!691286 (= tp!208082 e!434904)))

(declare-fun setIsEmpty!3777 () Bool)

(declare-fun setRes!3777 () Bool)

(assert (=> setIsEmpty!3777 setRes!3777))

(declare-fun b!691428 () Bool)

(declare-fun tp!208138 () Bool)

(assert (=> b!691428 (= e!434904 (and setRes!3777 tp!208138))))

(declare-fun condSetEmpty!3777 () Bool)

(assert (=> b!691428 (= condSetEmpty!3777 (= (_1!4340 (_1!4341 (h!12859 (zeroValue!1024 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691429 () Bool)

(declare-fun e!434903 () Bool)

(declare-fun tp!208139 () Bool)

(assert (=> b!691429 (= e!434903 tp!208139)))

(declare-fun tp!208137 () Bool)

(declare-fun setElem!3777 () Context!486)

(declare-fun setNonEmpty!3777 () Bool)

(assert (=> setNonEmpty!3777 (= setRes!3777 (and tp!208137 (inv!9562 setElem!3777) e!434903))))

(declare-fun setRest!3777 () (InoxSet Context!486))

(assert (=> setNonEmpty!3777 (= (_1!4340 (_1!4341 (h!12859 (zeroValue!1024 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3777 true) setRest!3777))))

(assert (= (and b!691428 condSetEmpty!3777) setIsEmpty!3777))

(assert (= (and b!691428 (not condSetEmpty!3777)) setNonEmpty!3777))

(assert (= setNonEmpty!3777 b!691429))

(assert (= (and b!691286 ((_ is Cons!7458) (zeroValue!1024 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59)))))))) b!691428))

(declare-fun m!947612 () Bool)

(assert (=> setNonEmpty!3777 m!947612))

(declare-fun e!434906 () Bool)

(assert (=> b!691286 (= tp!208088 e!434906)))

(declare-fun setIsEmpty!3778 () Bool)

(declare-fun setRes!3778 () Bool)

(assert (=> setIsEmpty!3778 setRes!3778))

(declare-fun b!691430 () Bool)

(declare-fun tp!208141 () Bool)

(assert (=> b!691430 (= e!434906 (and setRes!3778 tp!208141))))

(declare-fun condSetEmpty!3778 () Bool)

(assert (=> b!691430 (= condSetEmpty!3778 (= (_1!4340 (_1!4341 (h!12859 (minValue!1024 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691431 () Bool)

(declare-fun e!434905 () Bool)

(declare-fun tp!208142 () Bool)

(assert (=> b!691431 (= e!434905 tp!208142)))

(declare-fun setElem!3778 () Context!486)

(declare-fun setNonEmpty!3778 () Bool)

(declare-fun tp!208140 () Bool)

(assert (=> setNonEmpty!3778 (= setRes!3778 (and tp!208140 (inv!9562 setElem!3778) e!434905))))

(declare-fun setRest!3778 () (InoxSet Context!486))

(assert (=> setNonEmpty!3778 (= (_1!4340 (_1!4341 (h!12859 (minValue!1024 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3778 true) setRest!3778))))

(assert (= (and b!691430 condSetEmpty!3778) setIsEmpty!3778))

(assert (= (and b!691430 (not condSetEmpty!3778)) setNonEmpty!3778))

(assert (= setNonEmpty!3778 b!691431))

(assert (= (and b!691286 ((_ is Cons!7458) (minValue!1024 (v!17652 (underlying!1717 (v!17653 (underlying!1718 (cache!1126 cacheFindLongestMatch!59)))))))) b!691430))

(declare-fun m!947614 () Bool)

(assert (=> setNonEmpty!3778 m!947614))

(declare-fun setIsEmpty!3781 () Bool)

(declare-fun setRes!3781 () Bool)

(assert (=> setIsEmpty!3781 setRes!3781))

(declare-fun setElem!3781 () Context!486)

(declare-fun tp!208151 () Bool)

(declare-fun setNonEmpty!3781 () Bool)

(declare-fun e!434914 () Bool)

(assert (=> setNonEmpty!3781 (= setRes!3781 (and tp!208151 (inv!9562 setElem!3781) e!434914))))

(declare-fun setRest!3781 () (InoxSet Context!486))

(assert (=> setNonEmpty!3781 (= (_2!4345 (h!12861 mapDefault!3082)) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3781 true) setRest!3781))))

(declare-fun e!434913 () Bool)

(declare-fun b!691440 () Bool)

(declare-fun e!434915 () Bool)

(declare-fun tp!208152 () Bool)

(assert (=> b!691440 (= e!434915 (and (inv!9562 (_1!4344 (_1!4345 (h!12861 mapDefault!3082)))) e!434913 tp_is_empty!3645 setRes!3781 tp!208152))))

(declare-fun condSetEmpty!3781 () Bool)

(assert (=> b!691440 (= condSetEmpty!3781 (= (_2!4345 (h!12861 mapDefault!3082)) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691441 () Bool)

(declare-fun tp!208154 () Bool)

(assert (=> b!691441 (= e!434914 tp!208154)))

(declare-fun b!691442 () Bool)

(declare-fun tp!208153 () Bool)

(assert (=> b!691442 (= e!434913 tp!208153)))

(assert (=> b!691287 (= tp!208089 e!434915)))

(assert (= b!691440 b!691442))

(assert (= (and b!691440 condSetEmpty!3781) setIsEmpty!3781))

(assert (= (and b!691440 (not condSetEmpty!3781)) setNonEmpty!3781))

(assert (= setNonEmpty!3781 b!691441))

(assert (= (and b!691287 ((_ is Cons!7460) mapDefault!3082)) b!691440))

(declare-fun m!947616 () Bool)

(assert (=> setNonEmpty!3781 m!947616))

(declare-fun m!947618 () Bool)

(assert (=> b!691440 m!947618))

(declare-fun b!691457 () Bool)

(declare-fun e!434928 () Bool)

(declare-fun tp!208180 () Bool)

(assert (=> b!691457 (= e!434928 tp!208180)))

(declare-fun setIsEmpty!3786 () Bool)

(declare-fun setRes!3786 () Bool)

(assert (=> setIsEmpty!3786 setRes!3786))

(declare-fun condMapEmpty!3085 () Bool)

(declare-fun mapDefault!3085 () List!7474)

(assert (=> mapNonEmpty!3082 (= condMapEmpty!3085 (= mapRest!3082 ((as const (Array (_ BitVec 32) List!7474)) mapDefault!3085)))))

(declare-fun e!434931 () Bool)

(declare-fun mapRes!3085 () Bool)

(assert (=> mapNonEmpty!3082 (= tp!208072 (and e!434931 mapRes!3085))))

(declare-fun mapIsEmpty!3085 () Bool)

(assert (=> mapIsEmpty!3085 mapRes!3085))

(declare-fun e!434929 () Bool)

(declare-fun tp!208179 () Bool)

(declare-fun b!691458 () Bool)

(assert (=> b!691458 (= e!434931 (and (inv!9562 (_1!4344 (_1!4345 (h!12861 mapDefault!3085)))) e!434929 tp_is_empty!3645 setRes!3786 tp!208179))))

(declare-fun condSetEmpty!3787 () Bool)

(assert (=> b!691458 (= condSetEmpty!3787 (= (_2!4345 (h!12861 mapDefault!3085)) ((as const (Array Context!486 Bool)) false)))))

(declare-fun mapNonEmpty!3085 () Bool)

(declare-fun tp!208181 () Bool)

(declare-fun e!434930 () Bool)

(assert (=> mapNonEmpty!3085 (= mapRes!3085 (and tp!208181 e!434930))))

(declare-fun mapKey!3085 () (_ BitVec 32))

(declare-fun mapValue!3085 () List!7474)

(declare-fun mapRest!3085 () (Array (_ BitVec 32) List!7474))

(assert (=> mapNonEmpty!3085 (= mapRest!3082 (store mapRest!3085 mapKey!3085 mapValue!3085))))

(declare-fun b!691459 () Bool)

(declare-fun tp!208173 () Bool)

(assert (=> b!691459 (= e!434929 tp!208173)))

(declare-fun b!691460 () Bool)

(declare-fun e!434932 () Bool)

(declare-fun tp!208174 () Bool)

(assert (=> b!691460 (= e!434932 tp!208174)))

(declare-fun setNonEmpty!3786 () Bool)

(declare-fun tp!208177 () Bool)

(declare-fun setElem!3786 () Context!486)

(assert (=> setNonEmpty!3786 (= setRes!3786 (and tp!208177 (inv!9562 setElem!3786) e!434928))))

(declare-fun setRest!3786 () (InoxSet Context!486))

(assert (=> setNonEmpty!3786 (= (_2!4345 (h!12861 mapDefault!3085)) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3786 true) setRest!3786))))

(declare-fun setIsEmpty!3787 () Bool)

(declare-fun setRes!3787 () Bool)

(assert (=> setIsEmpty!3787 setRes!3787))

(declare-fun tp!208178 () Bool)

(declare-fun b!691461 () Bool)

(assert (=> b!691461 (= e!434930 (and (inv!9562 (_1!4344 (_1!4345 (h!12861 mapValue!3085)))) e!434932 tp_is_empty!3645 setRes!3787 tp!208178))))

(declare-fun condSetEmpty!3786 () Bool)

(assert (=> b!691461 (= condSetEmpty!3786 (= (_2!4345 (h!12861 mapValue!3085)) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691462 () Bool)

(declare-fun e!434933 () Bool)

(declare-fun tp!208175 () Bool)

(assert (=> b!691462 (= e!434933 tp!208175)))

(declare-fun tp!208176 () Bool)

(declare-fun setNonEmpty!3787 () Bool)

(declare-fun setElem!3787 () Context!486)

(assert (=> setNonEmpty!3787 (= setRes!3787 (and tp!208176 (inv!9562 setElem!3787) e!434933))))

(declare-fun setRest!3787 () (InoxSet Context!486))

(assert (=> setNonEmpty!3787 (= (_2!4345 (h!12861 mapValue!3085)) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3787 true) setRest!3787))))

(assert (= (and mapNonEmpty!3082 condMapEmpty!3085) mapIsEmpty!3085))

(assert (= (and mapNonEmpty!3082 (not condMapEmpty!3085)) mapNonEmpty!3085))

(assert (= b!691461 b!691460))

(assert (= (and b!691461 condSetEmpty!3786) setIsEmpty!3787))

(assert (= (and b!691461 (not condSetEmpty!3786)) setNonEmpty!3787))

(assert (= setNonEmpty!3787 b!691462))

(assert (= (and mapNonEmpty!3085 ((_ is Cons!7460) mapValue!3085)) b!691461))

(assert (= b!691458 b!691459))

(assert (= (and b!691458 condSetEmpty!3787) setIsEmpty!3786))

(assert (= (and b!691458 (not condSetEmpty!3787)) setNonEmpty!3786))

(assert (= setNonEmpty!3786 b!691457))

(assert (= (and mapNonEmpty!3082 ((_ is Cons!7460) mapDefault!3085)) b!691458))

(declare-fun m!947620 () Bool)

(assert (=> b!691461 m!947620))

(declare-fun m!947622 () Bool)

(assert (=> setNonEmpty!3786 m!947622))

(declare-fun m!947624 () Bool)

(assert (=> b!691458 m!947624))

(declare-fun m!947626 () Bool)

(assert (=> setNonEmpty!3787 m!947626))

(declare-fun m!947628 () Bool)

(assert (=> mapNonEmpty!3085 m!947628))

(declare-fun setIsEmpty!3788 () Bool)

(declare-fun setRes!3788 () Bool)

(assert (=> setIsEmpty!3788 setRes!3788))

(declare-fun setNonEmpty!3788 () Bool)

(declare-fun e!434935 () Bool)

(declare-fun tp!208182 () Bool)

(declare-fun setElem!3788 () Context!486)

(assert (=> setNonEmpty!3788 (= setRes!3788 (and tp!208182 (inv!9562 setElem!3788) e!434935))))

(declare-fun setRest!3788 () (InoxSet Context!486))

(assert (=> setNonEmpty!3788 (= (_2!4345 (h!12861 mapValue!3082)) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3788 true) setRest!3788))))

(declare-fun tp!208183 () Bool)

(declare-fun e!434934 () Bool)

(declare-fun b!691463 () Bool)

(declare-fun e!434936 () Bool)

(assert (=> b!691463 (= e!434936 (and (inv!9562 (_1!4344 (_1!4345 (h!12861 mapValue!3082)))) e!434934 tp_is_empty!3645 setRes!3788 tp!208183))))

(declare-fun condSetEmpty!3788 () Bool)

(assert (=> b!691463 (= condSetEmpty!3788 (= (_2!4345 (h!12861 mapValue!3082)) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691464 () Bool)

(declare-fun tp!208185 () Bool)

(assert (=> b!691464 (= e!434935 tp!208185)))

(declare-fun b!691465 () Bool)

(declare-fun tp!208184 () Bool)

(assert (=> b!691465 (= e!434934 tp!208184)))

(assert (=> mapNonEmpty!3082 (= tp!208067 e!434936)))

(assert (= b!691463 b!691465))

(assert (= (and b!691463 condSetEmpty!3788) setIsEmpty!3788))

(assert (= (and b!691463 (not condSetEmpty!3788)) setNonEmpty!3788))

(assert (= setNonEmpty!3788 b!691464))

(assert (= (and mapNonEmpty!3082 ((_ is Cons!7460) mapValue!3082)) b!691463))

(declare-fun m!947630 () Bool)

(assert (=> setNonEmpty!3788 m!947630))

(declare-fun m!947632 () Bool)

(assert (=> b!691463 m!947632))

(declare-fun setIsEmpty!3793 () Bool)

(declare-fun setRes!3794 () Bool)

(assert (=> setIsEmpty!3793 setRes!3794))

(declare-fun setIsEmpty!3794 () Bool)

(declare-fun setRes!3793 () Bool)

(assert (=> setIsEmpty!3794 setRes!3793))

(declare-fun b!691476 () Bool)

(declare-fun e!434945 () Bool)

(declare-fun tp!208200 () Bool)

(assert (=> b!691476 (= e!434945 (and setRes!3794 tp!208200))))

(declare-fun condSetEmpty!3794 () Bool)

(declare-fun mapValue!3088 () List!7472)

(assert (=> b!691476 (= condSetEmpty!3794 (= (_1!4340 (_1!4341 (h!12859 mapValue!3088))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691477 () Bool)

(declare-fun e!434948 () Bool)

(declare-fun tp!208206 () Bool)

(assert (=> b!691477 (= e!434948 (and setRes!3793 tp!208206))))

(declare-fun condSetEmpty!3793 () Bool)

(declare-fun mapDefault!3088 () List!7472)

(assert (=> b!691477 (= condSetEmpty!3793 (= (_1!4340 (_1!4341 (h!12859 mapDefault!3088))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691479 () Bool)

(declare-fun e!434946 () Bool)

(declare-fun tp!208205 () Bool)

(assert (=> b!691479 (= e!434946 tp!208205)))

(declare-fun b!691478 () Bool)

(declare-fun e!434947 () Bool)

(declare-fun tp!208204 () Bool)

(assert (=> b!691478 (= e!434947 tp!208204)))

(declare-fun condMapEmpty!3088 () Bool)

(assert (=> mapNonEmpty!3081 (= condMapEmpty!3088 (= mapRest!3081 ((as const (Array (_ BitVec 32) List!7472)) mapDefault!3088)))))

(declare-fun mapRes!3088 () Bool)

(assert (=> mapNonEmpty!3081 (= tp!208068 (and e!434948 mapRes!3088))))

(declare-fun mapIsEmpty!3088 () Bool)

(assert (=> mapIsEmpty!3088 mapRes!3088))

(declare-fun mapNonEmpty!3088 () Bool)

(declare-fun tp!208203 () Bool)

(assert (=> mapNonEmpty!3088 (= mapRes!3088 (and tp!208203 e!434945))))

(declare-fun mapRest!3088 () (Array (_ BitVec 32) List!7472))

(declare-fun mapKey!3088 () (_ BitVec 32))

(assert (=> mapNonEmpty!3088 (= mapRest!3081 (store mapRest!3088 mapKey!3088 mapValue!3088))))

(declare-fun setNonEmpty!3793 () Bool)

(declare-fun tp!208202 () Bool)

(declare-fun setElem!3794 () Context!486)

(assert (=> setNonEmpty!3793 (= setRes!3793 (and tp!208202 (inv!9562 setElem!3794) e!434946))))

(declare-fun setRest!3794 () (InoxSet Context!486))

(assert (=> setNonEmpty!3793 (= (_1!4340 (_1!4341 (h!12859 mapDefault!3088))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3794 true) setRest!3794))))

(declare-fun tp!208201 () Bool)

(declare-fun setNonEmpty!3794 () Bool)

(declare-fun setElem!3793 () Context!486)

(assert (=> setNonEmpty!3794 (= setRes!3794 (and tp!208201 (inv!9562 setElem!3793) e!434947))))

(declare-fun setRest!3793 () (InoxSet Context!486))

(assert (=> setNonEmpty!3794 (= (_1!4340 (_1!4341 (h!12859 mapValue!3088))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3793 true) setRest!3793))))

(assert (= (and mapNonEmpty!3081 condMapEmpty!3088) mapIsEmpty!3088))

(assert (= (and mapNonEmpty!3081 (not condMapEmpty!3088)) mapNonEmpty!3088))

(assert (= (and b!691476 condSetEmpty!3794) setIsEmpty!3793))

(assert (= (and b!691476 (not condSetEmpty!3794)) setNonEmpty!3794))

(assert (= setNonEmpty!3794 b!691478))

(assert (= (and mapNonEmpty!3088 ((_ is Cons!7458) mapValue!3088)) b!691476))

(assert (= (and b!691477 condSetEmpty!3793) setIsEmpty!3794))

(assert (= (and b!691477 (not condSetEmpty!3793)) setNonEmpty!3793))

(assert (= setNonEmpty!3793 b!691479))

(assert (= (and mapNonEmpty!3081 ((_ is Cons!7458) mapDefault!3088)) b!691477))

(declare-fun m!947634 () Bool)

(assert (=> mapNonEmpty!3088 m!947634))

(declare-fun m!947636 () Bool)

(assert (=> setNonEmpty!3793 m!947636))

(declare-fun m!947638 () Bool)

(assert (=> setNonEmpty!3794 m!947638))

(declare-fun e!434950 () Bool)

(assert (=> mapNonEmpty!3081 (= tp!208074 e!434950)))

(declare-fun setIsEmpty!3795 () Bool)

(declare-fun setRes!3795 () Bool)

(assert (=> setIsEmpty!3795 setRes!3795))

(declare-fun b!691480 () Bool)

(declare-fun tp!208208 () Bool)

(assert (=> b!691480 (= e!434950 (and setRes!3795 tp!208208))))

(declare-fun condSetEmpty!3795 () Bool)

(assert (=> b!691480 (= condSetEmpty!3795 (= (_1!4340 (_1!4341 (h!12859 mapValue!3081))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691481 () Bool)

(declare-fun e!434949 () Bool)

(declare-fun tp!208209 () Bool)

(assert (=> b!691481 (= e!434949 tp!208209)))

(declare-fun setElem!3795 () Context!486)

(declare-fun tp!208207 () Bool)

(declare-fun setNonEmpty!3795 () Bool)

(assert (=> setNonEmpty!3795 (= setRes!3795 (and tp!208207 (inv!9562 setElem!3795) e!434949))))

(declare-fun setRest!3795 () (InoxSet Context!486))

(assert (=> setNonEmpty!3795 (= (_1!4340 (_1!4341 (h!12859 mapValue!3081))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3795 true) setRest!3795))))

(assert (= (and b!691480 condSetEmpty!3795) setIsEmpty!3795))

(assert (= (and b!691480 (not condSetEmpty!3795)) setNonEmpty!3795))

(assert (= setNonEmpty!3795 b!691481))

(assert (= (and mapNonEmpty!3081 ((_ is Cons!7458) mapValue!3081)) b!691480))

(declare-fun m!947640 () Bool)

(assert (=> setNonEmpty!3795 m!947640))

(declare-fun b!691492 () Bool)

(declare-fun b_free!19585 () Bool)

(declare-fun b_next!19649 () Bool)

(assert (=> b!691492 (= b_free!19585 (not b_next!19649))))

(declare-fun tp!208218 () Bool)

(declare-fun b_and!63379 () Bool)

(assert (=> b!691492 (= tp!208218 b_and!63379)))

(declare-fun b_free!19587 () Bool)

(declare-fun b_next!19651 () Bool)

(assert (=> b!691492 (= b_free!19587 (not b_next!19651))))

(declare-fun tp!208220 () Bool)

(declare-fun b_and!63381 () Bool)

(assert (=> b!691492 (= tp!208220 b_and!63381)))

(declare-fun e!434962 () Bool)

(assert (=> b!691492 (= e!434962 (and tp!208218 tp!208220))))

(declare-fun b!691491 () Bool)

(declare-fun e!434959 () Bool)

(declare-fun tp!208221 () Bool)

(assert (=> b!691491 (= e!434959 (and tp!208221 (inv!9547 (tag!1757 (h!12857 (t!87288 rules!1357)))) (inv!9553 (transformation!1495 (h!12857 (t!87288 rules!1357)))) e!434962))))

(declare-fun b!691490 () Bool)

(declare-fun e!434960 () Bool)

(declare-fun tp!208219 () Bool)

(assert (=> b!691490 (= e!434960 (and e!434959 tp!208219))))

(assert (=> b!691278 (= tp!208083 e!434960)))

(assert (= b!691491 b!691492))

(assert (= b!691490 b!691491))

(assert (= (and b!691278 ((_ is Cons!7456) (t!87288 rules!1357))) b!691490))

(declare-fun m!947642 () Bool)

(assert (=> b!691491 m!947642))

(declare-fun m!947644 () Bool)

(assert (=> b!691491 m!947644))

(declare-fun setIsEmpty!3796 () Bool)

(declare-fun setRes!3796 () Bool)

(assert (=> setIsEmpty!3796 setRes!3796))

(declare-fun setNonEmpty!3796 () Bool)

(declare-fun setElem!3796 () Context!486)

(declare-fun tp!208222 () Bool)

(declare-fun e!434964 () Bool)

(assert (=> setNonEmpty!3796 (= setRes!3796 (and tp!208222 (inv!9562 setElem!3796) e!434964))))

(declare-fun setRest!3796 () (InoxSet Context!486))

(assert (=> setNonEmpty!3796 (= (_2!4345 (h!12861 (zeroValue!1026 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3796 true) setRest!3796))))

(declare-fun e!434963 () Bool)

(declare-fun b!691493 () Bool)

(declare-fun tp!208223 () Bool)

(declare-fun e!434965 () Bool)

(assert (=> b!691493 (= e!434965 (and (inv!9562 (_1!4344 (_1!4345 (h!12861 (zeroValue!1026 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457)))))))))) e!434963 tp_is_empty!3645 setRes!3796 tp!208223))))

(declare-fun condSetEmpty!3796 () Bool)

(assert (=> b!691493 (= condSetEmpty!3796 (= (_2!4345 (h!12861 (zeroValue!1026 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457)))))))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691494 () Bool)

(declare-fun tp!208225 () Bool)

(assert (=> b!691494 (= e!434964 tp!208225)))

(declare-fun b!691495 () Bool)

(declare-fun tp!208224 () Bool)

(assert (=> b!691495 (= e!434963 tp!208224)))

(assert (=> b!691279 (= tp!208070 e!434965)))

(assert (= b!691493 b!691495))

(assert (= (and b!691493 condSetEmpty!3796) setIsEmpty!3796))

(assert (= (and b!691493 (not condSetEmpty!3796)) setNonEmpty!3796))

(assert (= setNonEmpty!3796 b!691494))

(assert (= (and b!691279 ((_ is Cons!7460) (zeroValue!1026 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457)))))))) b!691493))

(declare-fun m!947646 () Bool)

(assert (=> setNonEmpty!3796 m!947646))

(declare-fun m!947648 () Bool)

(assert (=> b!691493 m!947648))

(declare-fun setIsEmpty!3797 () Bool)

(declare-fun setRes!3797 () Bool)

(assert (=> setIsEmpty!3797 setRes!3797))

(declare-fun setNonEmpty!3797 () Bool)

(declare-fun tp!208226 () Bool)

(declare-fun setElem!3797 () Context!486)

(declare-fun e!434967 () Bool)

(assert (=> setNonEmpty!3797 (= setRes!3797 (and tp!208226 (inv!9562 setElem!3797) e!434967))))

(declare-fun setRest!3797 () (InoxSet Context!486))

(assert (=> setNonEmpty!3797 (= (_2!4345 (h!12861 (minValue!1026 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3797 true) setRest!3797))))

(declare-fun e!434968 () Bool)

(declare-fun tp!208227 () Bool)

(declare-fun e!434966 () Bool)

(declare-fun b!691496 () Bool)

(assert (=> b!691496 (= e!434968 (and (inv!9562 (_1!4344 (_1!4345 (h!12861 (minValue!1026 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457)))))))))) e!434966 tp_is_empty!3645 setRes!3797 tp!208227))))

(declare-fun condSetEmpty!3797 () Bool)

(assert (=> b!691496 (= condSetEmpty!3797 (= (_2!4345 (h!12861 (minValue!1026 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457)))))))) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691497 () Bool)

(declare-fun tp!208229 () Bool)

(assert (=> b!691497 (= e!434967 tp!208229)))

(declare-fun b!691498 () Bool)

(declare-fun tp!208228 () Bool)

(assert (=> b!691498 (= e!434966 tp!208228)))

(assert (=> b!691279 (= tp!208077 e!434968)))

(assert (= b!691496 b!691498))

(assert (= (and b!691496 condSetEmpty!3797) setIsEmpty!3797))

(assert (= (and b!691496 (not condSetEmpty!3797)) setNonEmpty!3797))

(assert (= setNonEmpty!3797 b!691497))

(assert (= (and b!691279 ((_ is Cons!7460) (minValue!1026 (v!17656 (underlying!1721 (v!17657 (underlying!1722 (cache!1128 cacheUp!457)))))))) b!691496))

(declare-fun m!947650 () Bool)

(assert (=> setNonEmpty!3797 m!947650))

(declare-fun m!947652 () Bool)

(assert (=> b!691496 m!947652))

(declare-fun setIsEmpty!3802 () Bool)

(declare-fun setRes!3803 () Bool)

(assert (=> setIsEmpty!3802 setRes!3803))

(declare-fun e!434986 () Bool)

(declare-fun b!691513 () Bool)

(declare-fun setRes!3802 () Bool)

(declare-fun tp!208261 () Bool)

(declare-fun e!434982 () Bool)

(declare-fun tp!208257 () Bool)

(declare-fun mapValue!3091 () List!7473)

(assert (=> b!691513 (= e!434982 (and tp!208261 (inv!9562 (_2!4342 (_1!4343 (h!12860 mapValue!3091)))) e!434986 tp_is_empty!3645 setRes!3802 tp!208257))))

(declare-fun condSetEmpty!3802 () Bool)

(assert (=> b!691513 (= condSetEmpty!3802 (= (_2!4343 (h!12860 mapValue!3091)) ((as const (Array Context!486 Bool)) false)))))

(declare-fun setIsEmpty!3803 () Bool)

(assert (=> setIsEmpty!3803 setRes!3802))

(declare-fun condMapEmpty!3091 () Bool)

(declare-fun mapDefault!3091 () List!7473)

(assert (=> mapNonEmpty!3080 (= condMapEmpty!3091 (= mapRest!3080 ((as const (Array (_ BitVec 32) List!7473)) mapDefault!3091)))))

(declare-fun e!434983 () Bool)

(declare-fun mapRes!3091 () Bool)

(assert (=> mapNonEmpty!3080 (= tp!208080 (and e!434983 mapRes!3091))))

(declare-fun b!691514 () Bool)

(declare-fun e!434985 () Bool)

(declare-fun tp!208254 () Bool)

(assert (=> b!691514 (= e!434985 tp!208254)))

(declare-fun b!691515 () Bool)

(declare-fun e!434981 () Bool)

(declare-fun tp!208260 () Bool)

(assert (=> b!691515 (= e!434981 tp!208260)))

(declare-fun tp!208255 () Bool)

(declare-fun e!434984 () Bool)

(declare-fun tp!208259 () Bool)

(declare-fun b!691516 () Bool)

(assert (=> b!691516 (= e!434983 (and tp!208255 (inv!9562 (_2!4342 (_1!4343 (h!12860 mapDefault!3091)))) e!434984 tp_is_empty!3645 setRes!3803 tp!208259))))

(declare-fun condSetEmpty!3803 () Bool)

(assert (=> b!691516 (= condSetEmpty!3803 (= (_2!4343 (h!12860 mapDefault!3091)) ((as const (Array Context!486 Bool)) false)))))

(declare-fun b!691517 () Bool)

(declare-fun tp!208258 () Bool)

(assert (=> b!691517 (= e!434986 tp!208258)))

(declare-fun tp!208253 () Bool)

(declare-fun setNonEmpty!3802 () Bool)

(declare-fun setElem!3802 () Context!486)

(assert (=> setNonEmpty!3802 (= setRes!3802 (and tp!208253 (inv!9562 setElem!3802) e!434985))))

(declare-fun setRest!3802 () (InoxSet Context!486))

(assert (=> setNonEmpty!3802 (= (_2!4343 (h!12860 mapValue!3091)) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3802 true) setRest!3802))))

(declare-fun setNonEmpty!3803 () Bool)

(declare-fun setElem!3803 () Context!486)

(declare-fun tp!208252 () Bool)

(assert (=> setNonEmpty!3803 (= setRes!3803 (and tp!208252 (inv!9562 setElem!3803) e!434981))))

(declare-fun setRest!3803 () (InoxSet Context!486))

(assert (=> setNonEmpty!3803 (= (_2!4343 (h!12860 mapDefault!3091)) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3803 true) setRest!3803))))

(declare-fun mapIsEmpty!3091 () Bool)

(assert (=> mapIsEmpty!3091 mapRes!3091))

(declare-fun b!691518 () Bool)

(declare-fun tp!208262 () Bool)

(assert (=> b!691518 (= e!434984 tp!208262)))

(declare-fun mapNonEmpty!3091 () Bool)

(declare-fun tp!208256 () Bool)

(assert (=> mapNonEmpty!3091 (= mapRes!3091 (and tp!208256 e!434982))))

(declare-fun mapKey!3091 () (_ BitVec 32))

(declare-fun mapRest!3091 () (Array (_ BitVec 32) List!7473))

(assert (=> mapNonEmpty!3091 (= mapRest!3080 (store mapRest!3091 mapKey!3091 mapValue!3091))))

(assert (= (and mapNonEmpty!3080 condMapEmpty!3091) mapIsEmpty!3091))

(assert (= (and mapNonEmpty!3080 (not condMapEmpty!3091)) mapNonEmpty!3091))

(assert (= b!691513 b!691517))

(assert (= (and b!691513 condSetEmpty!3802) setIsEmpty!3803))

(assert (= (and b!691513 (not condSetEmpty!3802)) setNonEmpty!3802))

(assert (= setNonEmpty!3802 b!691514))

(assert (= (and mapNonEmpty!3091 ((_ is Cons!7459) mapValue!3091)) b!691513))

(assert (= b!691516 b!691518))

(assert (= (and b!691516 condSetEmpty!3803) setIsEmpty!3802))

(assert (= (and b!691516 (not condSetEmpty!3803)) setNonEmpty!3803))

(assert (= setNonEmpty!3803 b!691515))

(assert (= (and mapNonEmpty!3080 ((_ is Cons!7459) mapDefault!3091)) b!691516))

(declare-fun m!947654 () Bool)

(assert (=> mapNonEmpty!3091 m!947654))

(declare-fun m!947656 () Bool)

(assert (=> b!691516 m!947656))

(declare-fun m!947658 () Bool)

(assert (=> setNonEmpty!3803 m!947658))

(declare-fun m!947660 () Bool)

(assert (=> b!691513 m!947660))

(declare-fun m!947662 () Bool)

(assert (=> setNonEmpty!3802 m!947662))

(declare-fun b!691519 () Bool)

(declare-fun e!434989 () Bool)

(declare-fun tp!208266 () Bool)

(assert (=> b!691519 (= e!434989 tp!208266)))

(declare-fun e!434988 () Bool)

(assert (=> mapNonEmpty!3080 (= tp!208076 e!434988)))

(declare-fun b!691520 () Bool)

(declare-fun e!434987 () Bool)

(declare-fun tp!208263 () Bool)

(assert (=> b!691520 (= e!434987 tp!208263)))

(declare-fun setIsEmpty!3804 () Bool)

(declare-fun setRes!3804 () Bool)

(assert (=> setIsEmpty!3804 setRes!3804))

(declare-fun b!691521 () Bool)

(declare-fun tp!208267 () Bool)

(declare-fun tp!208265 () Bool)

(assert (=> b!691521 (= e!434988 (and tp!208265 (inv!9562 (_2!4342 (_1!4343 (h!12860 mapValue!3080)))) e!434987 tp_is_empty!3645 setRes!3804 tp!208267))))

(declare-fun condSetEmpty!3804 () Bool)

(assert (=> b!691521 (= condSetEmpty!3804 (= (_2!4343 (h!12860 mapValue!3080)) ((as const (Array Context!486 Bool)) false)))))

(declare-fun tp!208264 () Bool)

(declare-fun setNonEmpty!3804 () Bool)

(declare-fun setElem!3804 () Context!486)

(assert (=> setNonEmpty!3804 (= setRes!3804 (and tp!208264 (inv!9562 setElem!3804) e!434989))))

(declare-fun setRest!3804 () (InoxSet Context!486))

(assert (=> setNonEmpty!3804 (= (_2!4343 (h!12860 mapValue!3080)) ((_ map or) (store ((as const (Array Context!486 Bool)) false) setElem!3804 true) setRest!3804))))

(assert (= b!691521 b!691520))

(assert (= (and b!691521 condSetEmpty!3804) setIsEmpty!3804))

(assert (= (and b!691521 (not condSetEmpty!3804)) setNonEmpty!3804))

(assert (= setNonEmpty!3804 b!691519))

(assert (= (and mapNonEmpty!3080 ((_ is Cons!7459) mapValue!3080)) b!691521))

(declare-fun m!947664 () Bool)

(assert (=> b!691521 m!947664))

(declare-fun m!947666 () Bool)

(assert (=> setNonEmpty!3804 m!947666))

(declare-fun b!691522 () Bool)

(declare-fun tp!208270 () Bool)

(declare-fun tp!208269 () Bool)

(declare-fun e!434990 () Bool)

(assert (=> b!691522 (= e!434990 (and (inv!9554 (left!5980 (c!121556 (totalInput!1800 cacheFindLongestMatch!59)))) tp!208270 (inv!9554 (right!6310 (c!121556 (totalInput!1800 cacheFindLongestMatch!59)))) tp!208269))))

(declare-fun b!691524 () Bool)

(declare-fun e!434991 () Bool)

(declare-fun tp!208268 () Bool)

(assert (=> b!691524 (= e!434991 tp!208268)))

(declare-fun b!691523 () Bool)

(assert (=> b!691523 (= e!434990 (and (inv!9561 (xs!5282 (c!121556 (totalInput!1800 cacheFindLongestMatch!59)))) e!434991))))

(assert (=> b!691288 (= tp!208084 (and (inv!9554 (c!121556 (totalInput!1800 cacheFindLongestMatch!59))) e!434990))))

(assert (= (and b!691288 ((_ is Node!2631) (c!121556 (totalInput!1800 cacheFindLongestMatch!59)))) b!691522))

(assert (= b!691523 b!691524))

(assert (= (and b!691288 ((_ is Leaf!3901) (c!121556 (totalInput!1800 cacheFindLongestMatch!59)))) b!691523))

(declare-fun m!947668 () Bool)

(assert (=> b!691522 m!947668))

(declare-fun m!947670 () Bool)

(assert (=> b!691522 m!947670))

(declare-fun m!947672 () Bool)

(assert (=> b!691523 m!947672))

(assert (=> b!691288 m!947402))

(declare-fun b!691535 () Bool)

(declare-fun e!434994 () Bool)

(assert (=> b!691535 (= e!434994 tp_is_empty!3645)))

(declare-fun b!691538 () Bool)

(declare-fun tp!208282 () Bool)

(declare-fun tp!208281 () Bool)

(assert (=> b!691538 (= e!434994 (and tp!208282 tp!208281))))

(declare-fun b!691536 () Bool)

(declare-fun tp!208283 () Bool)

(declare-fun tp!208285 () Bool)

(assert (=> b!691536 (= e!434994 (and tp!208283 tp!208285))))

(assert (=> b!691271 (= tp!208085 e!434994)))

(declare-fun b!691537 () Bool)

(declare-fun tp!208284 () Bool)

(assert (=> b!691537 (= e!434994 tp!208284)))

(assert (= (and b!691271 ((_ is ElementMatch!1833) (regex!1495 (h!12857 rules!1357)))) b!691535))

(assert (= (and b!691271 ((_ is Concat!3372) (regex!1495 (h!12857 rules!1357)))) b!691536))

(assert (= (and b!691271 ((_ is Star!1833) (regex!1495 (h!12857 rules!1357)))) b!691537))

(assert (= (and b!691271 ((_ is Union!1833) (regex!1495 (h!12857 rules!1357)))) b!691538))

(check-sat (not setNonEmpty!3775) (not b!691463) (not b!691314) (not b!691537) (not b!691461) (not b_next!19645) (not d!232572) (not b!691419) (not b!691288) (not b!691516) (not bm!43590) (not b_next!19643) b_and!63369 (not b!691427) (not b_next!19651) (not b!691349) (not setNonEmpty!3795) (not b!691353) (not setNonEmpty!3793) (not mapNonEmpty!3091) (not b!691513) (not setNonEmpty!3778) (not b!691410) (not b!691480) (not b!691459) (not b!691422) (not b!691481) b_and!63381 (not d!232552) (not b!691362) (not d!232594) (not b!691409) (not b!691479) (not bm!43588) (not d!232606) (not setNonEmpty!3781) b_and!63365 b_and!63375 (not d!232574) (not d!232580) (not b!691385) (not bm!43589) (not b!691476) (not b!691514) tp_is_empty!3645 (not b!691316) (not b!691361) (not b!691420) (not b!691428) (not b_next!19633) (not b!691430) (not b!691429) (not b!691460) (not d!232564) (not b_next!19641) (not b!691367) (not b!691391) (not b!691357) (not b!691515) (not b!691313) (not b!691538) (not b!691522) (not setNonEmpty!3774) (not setNonEmpty!3802) (not b!691519) (not b!691457) (not b!691442) (not d!232558) (not b!691386) (not setNonEmpty!3797) (not b!691373) (not b!691495) (not b!691524) (not b!691423) (not b!691370) (not b!691491) (not b!691493) (not b!691356) (not b!691536) (not b!691354) (not setNonEmpty!3794) (not b!691517) (not b!691518) (not b!691462) (not b!691523) (not b!691380) (not b!691431) (not b!691497) (not mapNonEmpty!3085) (not b!691441) (not b!691425) (not d!232582) (not b!691440) (not b!691421) (not b!691496) (not setNonEmpty!3788) (not setNonEmpty!3787) (not b!691388) (not b!691382) (not b!691424) (not b!691464) (not b!691490) (not b!691478) b_and!63371 (not b!691494) (not b!691358) (not setNonEmpty!3804) (not b!691350) (not d!232592) b_and!63367 (not b!691400) (not d!232590) (not b!691281) b_and!63373 (not d!232554) (not setNonEmpty!3803) (not d!232556) (not b_next!19647) (not b_next!19649) (not mapNonEmpty!3088) (not b!691312) (not d!232560) (not b!691477) (not b!691401) (not setNonEmpty!3771) (not b!691402) (not b_next!19637) (not b_next!19639) (not b_next!19635) (not d!232584) (not b!691426) (not b!691521) b_and!63377 (not b!691498) (not d!232602) (not setNonEmpty!3776) (not b!691520) b_and!63363 (not setNonEmpty!3796) (not setNonEmpty!3786) (not b!691465) (not setNonEmpty!3777) b_and!63379 (not b!691458))
(check-sat (not b_next!19645) b_and!63381 (not b_next!19633) (not b_next!19641) b_and!63371 b_and!63367 b_and!63373 (not b_next!19637) b_and!63377 b_and!63363 b_and!63379 (not b_next!19643) b_and!63369 (not b_next!19651) b_and!63365 b_and!63375 (not b_next!19647) (not b_next!19649) (not b_next!19639) (not b_next!19635))
