; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143264 () Bool)

(assert start!143264)

(declare-fun b!1542440 () Bool)

(declare-fun b_free!40455 () Bool)

(declare-fun b_next!41159 () Bool)

(assert (=> b!1542440 (= b_free!40455 (not b_next!41159))))

(declare-fun tp!447753 () Bool)

(declare-fun b_and!107333 () Bool)

(assert (=> b!1542440 (= tp!447753 b_and!107333)))

(declare-fun b!1542449 () Bool)

(declare-fun b_free!40457 () Bool)

(declare-fun b_next!41161 () Bool)

(assert (=> b!1542449 (= b_free!40457 (not b_next!41161))))

(declare-fun tp!447757 () Bool)

(declare-fun b_and!107335 () Bool)

(assert (=> b!1542449 (= tp!447757 b_and!107335)))

(declare-fun b!1542417 () Bool)

(declare-fun b_free!40459 () Bool)

(declare-fun b_next!41163 () Bool)

(assert (=> b!1542417 (= b_free!40459 (not b_next!41163))))

(declare-fun tp!447752 () Bool)

(declare-fun b_and!107337 () Bool)

(assert (=> b!1542417 (= tp!447752 b_and!107337)))

(declare-fun b!1542418 () Bool)

(declare-fun b_free!40461 () Bool)

(declare-fun b_next!41165 () Bool)

(assert (=> b!1542418 (= b_free!40461 (not b_next!41165))))

(declare-fun tp!447749 () Bool)

(declare-fun b_and!107339 () Bool)

(assert (=> b!1542418 (= tp!447749 b_and!107339)))

(declare-fun b!1542429 () Bool)

(declare-fun b_free!40463 () Bool)

(declare-fun b_next!41167 () Bool)

(assert (=> b!1542429 (= b_free!40463 (not b_next!41167))))

(declare-fun tp!447742 () Bool)

(declare-fun b_and!107341 () Bool)

(assert (=> b!1542429 (= tp!447742 b_and!107341)))

(declare-fun b!1542431 () Bool)

(declare-fun b_free!40465 () Bool)

(declare-fun b_next!41169 () Bool)

(assert (=> b!1542431 (= b_free!40465 (not b_next!41169))))

(declare-fun tp!447759 () Bool)

(declare-fun b_and!107343 () Bool)

(assert (=> b!1542431 (= tp!447759 b_and!107343)))

(declare-fun b!1542428 () Bool)

(declare-fun b_free!40467 () Bool)

(declare-fun b_next!41171 () Bool)

(assert (=> b!1542428 (= b_free!40467 (not b_next!41171))))

(declare-fun tp!447743 () Bool)

(declare-fun b_and!107345 () Bool)

(assert (=> b!1542428 (= tp!447743 b_and!107345)))

(declare-fun b_free!40469 () Bool)

(declare-fun b_next!41173 () Bool)

(assert (=> b!1542428 (= b_free!40469 (not b_next!41173))))

(declare-fun tp!447754 () Bool)

(declare-fun b_and!107347 () Bool)

(assert (=> b!1542428 (= tp!447754 b_and!107347)))

(declare-fun b!1542416 () Bool)

(declare-fun e!987791 () Bool)

(declare-datatypes ((C!8624 0))(
  ( (C!8625 (val!4884 Int)) )
))
(declare-datatypes ((List!16585 0))(
  ( (Nil!16517) (Cons!16517 (h!21918 C!8624) (t!140791 List!16585)) )
))
(declare-datatypes ((IArray!11035 0))(
  ( (IArray!11036 (innerList!5575 List!16585)) )
))
(declare-datatypes ((Conc!5515 0))(
  ( (Node!5515 (left!13503 Conc!5515) (right!13833 Conc!5515) (csize!11260 Int) (cheight!5726 Int)) (Leaf!8172 (xs!8315 IArray!11035) (csize!11261 Int)) (Empty!5515) )
))
(declare-datatypes ((BalanceConc!10972 0))(
  ( (BalanceConc!10973 (c!251781 Conc!5515)) )
))
(declare-fun input!1460 () BalanceConc!10972)

(declare-fun tp!447756 () Bool)

(declare-fun inv!21782 (Conc!5515) Bool)

(assert (=> b!1542416 (= e!987791 (and (inv!21782 (c!251781 input!1460)) tp!447756))))

(declare-fun e!987799 () Bool)

(declare-fun e!987808 () Bool)

(assert (=> b!1542417 (= e!987799 (and e!987808 tp!447752))))

(declare-fun mapIsEmpty!7770 () Bool)

(declare-fun mapRes!7770 () Bool)

(assert (=> mapIsEmpty!7770 mapRes!7770))

(declare-fun tp!447755 () Bool)

(declare-fun tp!447751 () Bool)

(declare-fun e!987788 () Bool)

(declare-datatypes ((Regex!4223 0))(
  ( (ElementMatch!4223 (c!251782 C!8624)) (Concat!7211 (regOne!8958 Regex!4223) (regTwo!8958 Regex!4223)) (EmptyExpr!4223) (Star!4223 (reg!4552 Regex!4223)) (EmptyLang!4223) (Union!4223 (regOne!8959 Regex!4223) (regTwo!8959 Regex!4223)) )
))
(declare-datatypes ((List!16586 0))(
  ( (Nil!16518) (Cons!16518 (h!21919 Regex!4223) (t!140792 List!16586)) )
))
(declare-datatypes ((Context!1482 0))(
  ( (Context!1483 (exprs!1241 List!16586)) )
))
(declare-datatypes ((array!5742 0))(
  ( (array!5743 (arr!2554 (Array (_ BitVec 32) (_ BitVec 64))) (size!13342 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!1600 0))(
  ( (tuple3!1601 (_1!9043 Regex!4223) (_2!9043 Context!1482) (_3!1208 C!8624)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15670 0))(
  ( (tuple2!15671 (_1!9044 tuple3!1600) (_2!9044 (InoxSet Context!1482))) )
))
(declare-datatypes ((List!16587 0))(
  ( (Nil!16519) (Cons!16519 (h!21920 tuple2!15670) (t!140793 List!16587)) )
))
(declare-datatypes ((array!5744 0))(
  ( (array!5745 (arr!2555 (Array (_ BitVec 32) List!16587)) (size!13343 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3312 0))(
  ( (LongMapFixedSize!3313 (defaultEntry!2016 Int) (mask!4856 (_ BitVec 32)) (extraKeys!1903 (_ BitVec 32)) (zeroValue!1913 List!16587) (minValue!1913 List!16587) (_size!3393 (_ BitVec 32)) (_keys!1950 array!5742) (_values!1935 array!5744) (_vacant!1717 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6509 0))(
  ( (Cell!6510 (v!23330 LongMapFixedSize!3312)) )
))
(declare-datatypes ((MutLongMap!1656 0))(
  ( (LongMap!1656 (underlying!3521 Cell!6509)) (MutLongMapExt!1655 (__x!10674 Int)) )
))
(declare-datatypes ((Cell!6511 0))(
  ( (Cell!6512 (v!23331 MutLongMap!1656)) )
))
(declare-datatypes ((Hashable!1600 0))(
  ( (HashableExt!1599 (__x!10675 Int)) )
))
(declare-datatypes ((MutableMap!1600 0))(
  ( (MutableMapExt!1599 (__x!10676 Int)) (HashMap!1600 (underlying!3522 Cell!6511) (hashF!3519 Hashable!1600) (_size!3394 (_ BitVec 32)) (defaultValue!1760 Int)) )
))
(declare-datatypes ((CacheDown!972 0))(
  ( (CacheDown!973 (cache!1981 MutableMap!1600)) )
))
(declare-fun cacheDown!708 () CacheDown!972)

(declare-fun e!987787 () Bool)

(declare-fun array_inv!1837 (array!5742) Bool)

(declare-fun array_inv!1838 (array!5744) Bool)

(assert (=> b!1542418 (= e!987788 (and tp!447749 tp!447755 tp!447751 (array_inv!1837 (_keys!1950 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))) (array_inv!1838 (_values!1935 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))) e!987787))))

(declare-fun b!1542419 () Bool)

(declare-fun e!987784 () Bool)

(declare-fun e!987781 () Bool)

(declare-fun e!987789 () Bool)

(declare-datatypes ((tuple3!1602 0))(
  ( (tuple3!1603 (_1!9045 (InoxSet Context!1482)) (_2!9045 Int) (_3!1209 Int)) )
))
(declare-datatypes ((tuple2!15672 0))(
  ( (tuple2!15673 (_1!9046 tuple3!1602) (_2!9046 Int)) )
))
(declare-datatypes ((List!16588 0))(
  ( (Nil!16520) (Cons!16520 (h!21921 tuple2!15672) (t!140794 List!16588)) )
))
(declare-datatypes ((array!5746 0))(
  ( (array!5747 (arr!2556 (Array (_ BitVec 32) List!16588)) (size!13344 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3314 0))(
  ( (LongMapFixedSize!3315 (defaultEntry!2017 Int) (mask!4857 (_ BitVec 32)) (extraKeys!1904 (_ BitVec 32)) (zeroValue!1914 List!16588) (minValue!1914 List!16588) (_size!3395 (_ BitVec 32)) (_keys!1951 array!5742) (_values!1936 array!5746) (_vacant!1718 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1601 0))(
  ( (HashableExt!1600 (__x!10677 Int)) )
))
(declare-datatypes ((Cell!6513 0))(
  ( (Cell!6514 (v!23332 LongMapFixedSize!3314)) )
))
(declare-datatypes ((MutLongMap!1657 0))(
  ( (LongMap!1657 (underlying!3523 Cell!6513)) (MutLongMapExt!1656 (__x!10678 Int)) )
))
(declare-datatypes ((Cell!6515 0))(
  ( (Cell!6516 (v!23333 MutLongMap!1657)) )
))
(declare-datatypes ((MutableMap!1601 0))(
  ( (MutableMapExt!1600 (__x!10679 Int)) (HashMap!1601 (underlying!3524 Cell!6515) (hashF!3520 Hashable!1601) (_size!3396 (_ BitVec 32)) (defaultValue!1761 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!392 0))(
  ( (CacheFurthestNullable!393 (cache!1982 MutableMap!1601) (totalInput!2393 BalanceConc!10972)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!392)

(declare-fun inv!21783 (BalanceConc!10972) Bool)

(assert (=> b!1542419 (= e!987789 (and e!987781 (inv!21783 (totalInput!2393 cacheFurthestNullable!81)) e!987784))))

(declare-fun b!1542420 () Bool)

(declare-fun e!987794 () Bool)

(declare-fun totalInput!496 () BalanceConc!10972)

(declare-fun tp!447744 () Bool)

(assert (=> b!1542420 (= e!987794 (and (inv!21782 (c!251781 totalInput!496)) tp!447744))))

(declare-fun b!1542421 () Bool)

(declare-fun e!987783 () Bool)

(declare-fun e!987806 () Bool)

(assert (=> b!1542421 (= e!987783 e!987806)))

(declare-fun b!1542422 () Bool)

(declare-fun e!987780 () Bool)

(declare-datatypes ((List!16589 0))(
  ( (Nil!16521) (Cons!16521 (h!21922 (_ BitVec 16)) (t!140795 List!16589)) )
))
(declare-datatypes ((TokenValue!2988 0))(
  ( (FloatLiteralValue!5976 (text!21361 List!16589)) (TokenValueExt!2987 (__x!10680 Int)) (Broken!14940 (value!92226 List!16589)) (Object!3055) (End!2988) (Def!2988) (Underscore!2988) (Match!2988) (Else!2988) (Error!2988) (Case!2988) (If!2988) (Extends!2988) (Abstract!2988) (Class!2988) (Val!2988) (DelimiterValue!5976 (del!3048 List!16589)) (KeywordValue!2994 (value!92227 List!16589)) (CommentValue!5976 (value!92228 List!16589)) (WhitespaceValue!5976 (value!92229 List!16589)) (IndentationValue!2988 (value!92230 List!16589)) (String!19221) (Int32!2988) (Broken!14941 (value!92231 List!16589)) (Boolean!2989) (Unit!25904) (OperatorValue!2991 (op!3048 List!16589)) (IdentifierValue!5976 (value!92232 List!16589)) (IdentifierValue!5977 (value!92233 List!16589)) (WhitespaceValue!5977 (value!92234 List!16589)) (True!5976) (False!5976) (Broken!14942 (value!92235 List!16589)) (Broken!14943 (value!92236 List!16589)) (True!5977) (RightBrace!2988) (RightBracket!2988) (Colon!2988) (Null!2988) (Comma!2988) (LeftBracket!2988) (False!5977) (LeftBrace!2988) (ImaginaryLiteralValue!2988 (text!21362 List!16589)) (StringLiteralValue!8964 (value!92237 List!16589)) (EOFValue!2988 (value!92238 List!16589)) (IdentValue!2988 (value!92239 List!16589)) (DelimiterValue!5977 (value!92240 List!16589)) (DedentValue!2988 (value!92241 List!16589)) (NewLineValue!2988 (value!92242 List!16589)) (IntegerValue!8964 (value!92243 (_ BitVec 32)) (text!21363 List!16589)) (IntegerValue!8965 (value!92244 Int) (text!21364 List!16589)) (Times!2988) (Or!2988) (Equal!2988) (Minus!2988) (Broken!14944 (value!92245 List!16589)) (And!2988) (Div!2988) (LessEqual!2988) (Mod!2988) (Concat!7212) (Not!2988) (Plus!2988) (SpaceValue!2988 (value!92246 List!16589)) (IntegerValue!8966 (value!92247 Int) (text!21365 List!16589)) (StringLiteralValue!8965 (text!21366 List!16589)) (FloatLiteralValue!5977 (text!21367 List!16589)) (BytesLiteralValue!2988 (value!92248 List!16589)) (CommentValue!5977 (value!92249 List!16589)) (StringLiteralValue!8966 (value!92250 List!16589)) (ErrorTokenValue!2988 (msg!3049 List!16589)) )
))
(declare-datatypes ((String!19222 0))(
  ( (String!19223 (value!92251 String)) )
))
(declare-datatypes ((TokenValueInjection!5636 0))(
  ( (TokenValueInjection!5637 (toValue!4259 Int) (toChars!4118 Int)) )
))
(declare-datatypes ((Rule!5596 0))(
  ( (Rule!5597 (regex!2898 Regex!4223) (tag!3162 String!19222) (isSeparator!2898 Bool) (transformation!2898 TokenValueInjection!5636)) )
))
(declare-datatypes ((List!16590 0))(
  ( (Nil!16522) (Cons!16522 (h!21923 Rule!5596) (t!140796 List!16590)) )
))
(declare-fun rulesArg!359 () List!16590)

(get-info :version)

(assert (=> b!1542422 (= e!987780 (not (or (and ((_ is Cons!16522) rulesArg!359) ((_ is Nil!16522) (t!140796 rulesArg!359))) ((_ is Cons!16522) rulesArg!359))))))

(declare-fun lt!534699 () List!16585)

(declare-fun isPrefix!1253 (List!16585 List!16585) Bool)

(assert (=> b!1542422 (isPrefix!1253 lt!534699 lt!534699)))

(declare-datatypes ((Unit!25905 0))(
  ( (Unit!25906) )
))
(declare-fun lt!534700 () Unit!25905)

(declare-fun lemmaIsPrefixRefl!883 (List!16585 List!16585) Unit!25905)

(assert (=> b!1542422 (= lt!534700 (lemmaIsPrefixRefl!883 lt!534699 lt!534699))))

(declare-fun b!1542423 () Bool)

(declare-fun e!987802 () Bool)

(declare-fun e!987786 () Bool)

(declare-fun lt!534702 () MutLongMap!1657)

(assert (=> b!1542423 (= e!987802 (and e!987786 ((_ is LongMap!1657) lt!534702)))))

(assert (=> b!1542423 (= lt!534702 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))

(declare-fun b!1542424 () Bool)

(declare-fun res!690511 () Bool)

(assert (=> b!1542424 (=> (not res!690511) (not e!987780))))

(declare-fun valid!1336 (CacheDown!972) Bool)

(assert (=> b!1542424 (= res!690511 (valid!1336 cacheDown!708))))

(declare-fun b!1542425 () Bool)

(declare-fun e!987795 () Bool)

(assert (=> b!1542425 (= e!987795 e!987799)))

(declare-fun b!1542426 () Bool)

(declare-fun e!987807 () Bool)

(declare-fun tp!447766 () Bool)

(assert (=> b!1542426 (= e!987807 (and tp!447766 mapRes!7770))))

(declare-fun condMapEmpty!7771 () Bool)

(declare-datatypes ((tuple2!15674 0))(
  ( (tuple2!15675 (_1!9047 Context!1482) (_2!9047 C!8624)) )
))
(declare-datatypes ((tuple2!15676 0))(
  ( (tuple2!15677 (_1!9048 tuple2!15674) (_2!9048 (InoxSet Context!1482))) )
))
(declare-datatypes ((List!16591 0))(
  ( (Nil!16523) (Cons!16523 (h!21924 tuple2!15676) (t!140797 List!16591)) )
))
(declare-datatypes ((array!5748 0))(
  ( (array!5749 (arr!2557 (Array (_ BitVec 32) List!16591)) (size!13345 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3316 0))(
  ( (LongMapFixedSize!3317 (defaultEntry!2018 Int) (mask!4858 (_ BitVec 32)) (extraKeys!1905 (_ BitVec 32)) (zeroValue!1915 List!16591) (minValue!1915 List!16591) (_size!3397 (_ BitVec 32)) (_keys!1952 array!5742) (_values!1937 array!5748) (_vacant!1719 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6517 0))(
  ( (Cell!6518 (v!23334 LongMapFixedSize!3316)) )
))
(declare-datatypes ((MutLongMap!1658 0))(
  ( (LongMap!1658 (underlying!3525 Cell!6517)) (MutLongMapExt!1657 (__x!10681 Int)) )
))
(declare-datatypes ((Cell!6519 0))(
  ( (Cell!6520 (v!23335 MutLongMap!1658)) )
))
(declare-datatypes ((Hashable!1602 0))(
  ( (HashableExt!1601 (__x!10682 Int)) )
))
(declare-datatypes ((MutableMap!1602 0))(
  ( (MutableMapExt!1601 (__x!10683 Int)) (HashMap!1602 (underlying!3526 Cell!6519) (hashF!3521 Hashable!1602) (_size!3398 (_ BitVec 32)) (defaultValue!1762 Int)) )
))
(declare-datatypes ((CacheUp!964 0))(
  ( (CacheUp!965 (cache!1983 MutableMap!1602)) )
))
(declare-fun cacheUp!695 () CacheUp!964)

(declare-fun mapDefault!7771 () List!16591)

(assert (=> b!1542426 (= condMapEmpty!7771 (= (arr!2557 (_values!1937 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16591)) mapDefault!7771)))))

(declare-fun b!1542427 () Bool)

(declare-fun e!987798 () Bool)

(declare-fun e!987797 () Bool)

(assert (=> b!1542427 (= e!987798 e!987797)))

(declare-fun e!987796 () Bool)

(assert (=> b!1542428 (= e!987796 (and tp!447743 tp!447754))))

(declare-fun tp!447762 () Bool)

(declare-fun e!987810 () Bool)

(declare-fun e!987779 () Bool)

(declare-fun tp!447764 () Bool)

(declare-fun array_inv!1839 (array!5746) Bool)

(assert (=> b!1542429 (= e!987810 (and tp!447742 tp!447764 tp!447762 (array_inv!1837 (_keys!1951 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))) (array_inv!1839 (_values!1936 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))) e!987779))))

(declare-fun mapNonEmpty!7770 () Bool)

(declare-fun tp!447760 () Bool)

(declare-fun tp!447765 () Bool)

(assert (=> mapNonEmpty!7770 (= mapRes!7770 (and tp!447760 tp!447765))))

(declare-fun mapKey!7770 () (_ BitVec 32))

(declare-fun mapRest!7771 () (Array (_ BitVec 32) List!16591))

(declare-fun mapValue!7772 () List!16591)

(assert (=> mapNonEmpty!7770 (= (arr!2557 (_values!1937 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))) (store mapRest!7771 mapKey!7770 mapValue!7772))))

(declare-fun b!1542430 () Bool)

(assert (=> b!1542430 (= e!987806 e!987788)))

(declare-fun e!987809 () Bool)

(declare-fun e!987801 () Bool)

(assert (=> b!1542431 (= e!987809 (and e!987801 tp!447759))))

(declare-fun b!1542432 () Bool)

(declare-fun e!987778 () Bool)

(assert (=> b!1542432 (= e!987778 e!987780)))

(declare-fun res!690512 () Bool)

(assert (=> b!1542432 (=> (not res!690512) (not e!987780))))

(declare-fun isSuffix!341 (List!16585 List!16585) Bool)

(declare-fun list!6441 (BalanceConc!10972) List!16585)

(assert (=> b!1542432 (= res!690512 (isSuffix!341 lt!534699 (list!6441 totalInput!496)))))

(assert (=> b!1542432 (= lt!534699 (list!6441 input!1460))))

(declare-fun b!1542433 () Bool)

(declare-fun e!987793 () Bool)

(assert (=> b!1542433 (= e!987793 e!987809)))

(declare-fun b!1542434 () Bool)

(declare-fun e!987782 () Bool)

(assert (=> b!1542434 (= e!987782 e!987810)))

(declare-fun b!1542435 () Bool)

(declare-fun res!690514 () Bool)

(assert (=> b!1542435 (=> (not res!690514) (not e!987778))))

(declare-fun isEmpty!10039 (List!16590) Bool)

(assert (=> b!1542435 (= res!690514 (not (isEmpty!10039 rulesArg!359)))))

(declare-fun mapNonEmpty!7771 () Bool)

(declare-fun mapRes!7771 () Bool)

(declare-fun tp!447767 () Bool)

(declare-fun tp!447745 () Bool)

(assert (=> mapNonEmpty!7771 (= mapRes!7771 (and tp!447767 tp!447745))))

(declare-fun mapKey!7772 () (_ BitVec 32))

(declare-fun mapValue!7770 () List!16588)

(declare-fun mapRest!7770 () (Array (_ BitVec 32) List!16588))

(assert (=> mapNonEmpty!7771 (= (arr!2556 (_values!1936 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))) (store mapRest!7770 mapKey!7772 mapValue!7770))))

(declare-fun b!1542436 () Bool)

(declare-fun lt!534701 () MutLongMap!1658)

(assert (=> b!1542436 (= e!987808 (and e!987798 ((_ is LongMap!1658) lt!534701)))))

(assert (=> b!1542436 (= lt!534701 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))

(declare-fun b!1542437 () Bool)

(declare-fun e!987800 () Bool)

(declare-fun tp!447748 () Bool)

(declare-fun inv!21779 (String!19222) Bool)

(declare-fun inv!21784 (TokenValueInjection!5636) Bool)

(assert (=> b!1542437 (= e!987800 (and tp!447748 (inv!21779 (tag!3162 (h!21923 rulesArg!359))) (inv!21784 (transformation!2898 (h!21923 rulesArg!359))) e!987796))))

(declare-fun b!1542438 () Bool)

(declare-fun res!690510 () Bool)

(assert (=> b!1542438 (=> (not res!690510) (not e!987778))))

(declare-datatypes ((LexerInterface!2547 0))(
  ( (LexerInterfaceExt!2544 (__x!10684 Int)) (Lexer!2545) )
))
(declare-fun thiss!15733 () LexerInterface!2547)

(declare-fun rulesValidInductive!893 (LexerInterface!2547 List!16590) Bool)

(assert (=> b!1542438 (= res!690510 (rulesValidInductive!893 thiss!15733 rulesArg!359))))

(declare-fun b!1542439 () Bool)

(declare-fun e!987803 () Bool)

(assert (=> b!1542439 (= e!987797 e!987803)))

(assert (=> b!1542440 (= e!987781 (and e!987802 tp!447753))))

(declare-fun b!1542441 () Bool)

(declare-fun e!987785 () Bool)

(declare-fun tp!447746 () Bool)

(assert (=> b!1542441 (= e!987785 (and e!987800 tp!447746))))

(declare-fun b!1542442 () Bool)

(declare-fun res!690508 () Bool)

(assert (=> b!1542442 (=> (not res!690508) (not e!987780))))

(declare-fun valid!1337 (CacheFurthestNullable!392) Bool)

(assert (=> b!1542442 (= res!690508 (valid!1337 cacheFurthestNullable!81))))

(declare-fun b!1542443 () Bool)

(assert (=> b!1542443 (= e!987786 e!987782)))

(declare-fun mapIsEmpty!7771 () Bool)

(declare-fun mapRes!7772 () Bool)

(assert (=> mapIsEmpty!7771 mapRes!7772))

(declare-fun mapIsEmpty!7772 () Bool)

(assert (=> mapIsEmpty!7772 mapRes!7771))

(declare-fun b!1542444 () Bool)

(declare-fun res!690513 () Bool)

(assert (=> b!1542444 (=> (not res!690513) (not e!987780))))

(declare-fun valid!1338 (CacheUp!964) Bool)

(assert (=> b!1542444 (= res!690513 (valid!1338 cacheUp!695))))

(declare-fun mapNonEmpty!7772 () Bool)

(declare-fun tp!447758 () Bool)

(declare-fun tp!447763 () Bool)

(assert (=> mapNonEmpty!7772 (= mapRes!7772 (and tp!447758 tp!447763))))

(declare-fun mapValue!7771 () List!16587)

(declare-fun mapRest!7772 () (Array (_ BitVec 32) List!16587))

(declare-fun mapKey!7771 () (_ BitVec 32))

(assert (=> mapNonEmpty!7772 (= (arr!2555 (_values!1935 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))) (store mapRest!7772 mapKey!7771 mapValue!7771))))

(declare-fun b!1542445 () Bool)

(declare-fun lt!534703 () MutLongMap!1656)

(assert (=> b!1542445 (= e!987801 (and e!987783 ((_ is LongMap!1656) lt!534703)))))

(assert (=> b!1542445 (= lt!534703 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))

(declare-fun b!1542446 () Bool)

(declare-fun tp!447747 () Bool)

(assert (=> b!1542446 (= e!987787 (and tp!447747 mapRes!7772))))

(declare-fun condMapEmpty!7770 () Bool)

(declare-fun mapDefault!7772 () List!16587)

(assert (=> b!1542446 (= condMapEmpty!7770 (= (arr!2555 (_values!1935 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16587)) mapDefault!7772)))))

(declare-fun b!1542447 () Bool)

(declare-fun tp!447761 () Bool)

(assert (=> b!1542447 (= e!987779 (and tp!447761 mapRes!7771))))

(declare-fun condMapEmpty!7772 () Bool)

(declare-fun mapDefault!7770 () List!16588)

(assert (=> b!1542447 (= condMapEmpty!7772 (= (arr!2556 (_values!1936 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16588)) mapDefault!7770)))))

(declare-fun b!1542448 () Bool)

(declare-fun tp!447740 () Bool)

(assert (=> b!1542448 (= e!987784 (and (inv!21782 (c!251781 (totalInput!2393 cacheFurthestNullable!81))) tp!447740))))

(declare-fun tp!447750 () Bool)

(declare-fun tp!447741 () Bool)

(declare-fun array_inv!1840 (array!5748) Bool)

(assert (=> b!1542449 (= e!987803 (and tp!447757 tp!447750 tp!447741 (array_inv!1837 (_keys!1952 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))) (array_inv!1840 (_values!1937 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))) e!987807))))

(declare-fun res!690507 () Bool)

(assert (=> start!143264 (=> (not res!690507) (not e!987778))))

(assert (=> start!143264 (= res!690507 ((_ is Lexer!2545) thiss!15733))))

(assert (=> start!143264 e!987778))

(declare-fun inv!21785 (CacheUp!964) Bool)

(assert (=> start!143264 (and (inv!21785 cacheUp!695) e!987795)))

(assert (=> start!143264 (and (inv!21783 input!1460) e!987791)))

(declare-fun inv!21786 (CacheDown!972) Bool)

(assert (=> start!143264 (and (inv!21786 cacheDown!708) e!987793)))

(assert (=> start!143264 true))

(assert (=> start!143264 (and (inv!21783 totalInput!496) e!987794)))

(assert (=> start!143264 e!987785))

(declare-fun inv!21787 (CacheFurthestNullable!392) Bool)

(assert (=> start!143264 (and (inv!21787 cacheFurthestNullable!81) e!987789)))

(declare-fun b!1542450 () Bool)

(declare-fun res!690509 () Bool)

(assert (=> b!1542450 (=> (not res!690509) (not e!987780))))

(assert (=> b!1542450 (= res!690509 (= (totalInput!2393 cacheFurthestNullable!81) totalInput!496))))

(assert (= (and start!143264 res!690507) b!1542438))

(assert (= (and b!1542438 res!690510) b!1542435))

(assert (= (and b!1542435 res!690514) b!1542432))

(assert (= (and b!1542432 res!690512) b!1542444))

(assert (= (and b!1542444 res!690513) b!1542424))

(assert (= (and b!1542424 res!690511) b!1542442))

(assert (= (and b!1542442 res!690508) b!1542450))

(assert (= (and b!1542450 res!690509) b!1542422))

(assert (= (and b!1542426 condMapEmpty!7771) mapIsEmpty!7770))

(assert (= (and b!1542426 (not condMapEmpty!7771)) mapNonEmpty!7770))

(assert (= b!1542449 b!1542426))

(assert (= b!1542439 b!1542449))

(assert (= b!1542427 b!1542439))

(assert (= (and b!1542436 ((_ is LongMap!1658) (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))) b!1542427))

(assert (= b!1542417 b!1542436))

(assert (= (and b!1542425 ((_ is HashMap!1602) (cache!1983 cacheUp!695))) b!1542417))

(assert (= start!143264 b!1542425))

(assert (= start!143264 b!1542416))

(assert (= (and b!1542446 condMapEmpty!7770) mapIsEmpty!7771))

(assert (= (and b!1542446 (not condMapEmpty!7770)) mapNonEmpty!7772))

(assert (= b!1542418 b!1542446))

(assert (= b!1542430 b!1542418))

(assert (= b!1542421 b!1542430))

(assert (= (and b!1542445 ((_ is LongMap!1656) (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))) b!1542421))

(assert (= b!1542431 b!1542445))

(assert (= (and b!1542433 ((_ is HashMap!1600) (cache!1981 cacheDown!708))) b!1542431))

(assert (= start!143264 b!1542433))

(assert (= start!143264 b!1542420))

(assert (= b!1542437 b!1542428))

(assert (= b!1542441 b!1542437))

(assert (= (and start!143264 ((_ is Cons!16522) rulesArg!359)) b!1542441))

(assert (= (and b!1542447 condMapEmpty!7772) mapIsEmpty!7772))

(assert (= (and b!1542447 (not condMapEmpty!7772)) mapNonEmpty!7771))

(assert (= b!1542429 b!1542447))

(assert (= b!1542434 b!1542429))

(assert (= b!1542443 b!1542434))

(assert (= (and b!1542423 ((_ is LongMap!1657) (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))) b!1542443))

(assert (= b!1542440 b!1542423))

(assert (= (and b!1542419 ((_ is HashMap!1601) (cache!1982 cacheFurthestNullable!81))) b!1542440))

(assert (= b!1542419 b!1542448))

(assert (= start!143264 b!1542419))

(declare-fun m!1815716 () Bool)

(assert (=> b!1542429 m!1815716))

(declare-fun m!1815718 () Bool)

(assert (=> b!1542429 m!1815718))

(declare-fun m!1815720 () Bool)

(assert (=> b!1542438 m!1815720))

(declare-fun m!1815722 () Bool)

(assert (=> mapNonEmpty!7772 m!1815722))

(declare-fun m!1815724 () Bool)

(assert (=> start!143264 m!1815724))

(declare-fun m!1815726 () Bool)

(assert (=> start!143264 m!1815726))

(declare-fun m!1815728 () Bool)

(assert (=> start!143264 m!1815728))

(declare-fun m!1815730 () Bool)

(assert (=> start!143264 m!1815730))

(declare-fun m!1815732 () Bool)

(assert (=> start!143264 m!1815732))

(declare-fun m!1815734 () Bool)

(assert (=> b!1542442 m!1815734))

(declare-fun m!1815736 () Bool)

(assert (=> b!1542449 m!1815736))

(declare-fun m!1815738 () Bool)

(assert (=> b!1542449 m!1815738))

(declare-fun m!1815740 () Bool)

(assert (=> b!1542435 m!1815740))

(declare-fun m!1815742 () Bool)

(assert (=> b!1542422 m!1815742))

(declare-fun m!1815744 () Bool)

(assert (=> b!1542422 m!1815744))

(declare-fun m!1815746 () Bool)

(assert (=> b!1542437 m!1815746))

(declare-fun m!1815748 () Bool)

(assert (=> b!1542437 m!1815748))

(declare-fun m!1815750 () Bool)

(assert (=> mapNonEmpty!7770 m!1815750))

(declare-fun m!1815752 () Bool)

(assert (=> b!1542419 m!1815752))

(declare-fun m!1815754 () Bool)

(assert (=> b!1542420 m!1815754))

(declare-fun m!1815756 () Bool)

(assert (=> b!1542424 m!1815756))

(declare-fun m!1815758 () Bool)

(assert (=> mapNonEmpty!7771 m!1815758))

(declare-fun m!1815760 () Bool)

(assert (=> b!1542444 m!1815760))

(declare-fun m!1815762 () Bool)

(assert (=> b!1542416 m!1815762))

(declare-fun m!1815764 () Bool)

(assert (=> b!1542448 m!1815764))

(declare-fun m!1815766 () Bool)

(assert (=> b!1542418 m!1815766))

(declare-fun m!1815768 () Bool)

(assert (=> b!1542418 m!1815768))

(declare-fun m!1815770 () Bool)

(assert (=> b!1542432 m!1815770))

(assert (=> b!1542432 m!1815770))

(declare-fun m!1815772 () Bool)

(assert (=> b!1542432 m!1815772))

(declare-fun m!1815774 () Bool)

(assert (=> b!1542432 m!1815774))

(check-sat (not b!1542418) (not b!1542444) (not b!1542424) (not b!1542422) (not b_next!41169) b_and!107333 b_and!107345 (not b!1542416) (not mapNonEmpty!7772) b_and!107347 (not b!1542435) b_and!107341 (not mapNonEmpty!7770) (not b!1542446) (not b!1542420) (not b!1542426) (not b_next!41165) (not b!1542442) (not b!1542448) (not b!1542441) (not b!1542429) (not b!1542432) (not b_next!41173) (not b_next!41171) b_and!107339 b_and!107335 (not b!1542438) (not b!1542447) (not b_next!41161) (not b_next!41167) b_and!107337 b_and!107343 (not b!1542419) (not b!1542437) (not start!143264) (not b_next!41163) (not b_next!41159) (not mapNonEmpty!7771) (not b!1542449))
(check-sat (not b_next!41165) (not b_next!41169) b_and!107333 b_and!107345 b_and!107347 b_and!107341 (not b_next!41163) (not b_next!41159) (not b_next!41173) (not b_next!41171) b_and!107339 b_and!107335 (not b_next!41161) (not b_next!41167) b_and!107337 b_and!107343)
(get-model)

(declare-fun d!458759 () Bool)

(declare-fun c!251785 () Bool)

(assert (=> d!458759 (= c!251785 ((_ is Node!5515) (c!251781 totalInput!496)))))

(declare-fun e!987815 () Bool)

(assert (=> d!458759 (= (inv!21782 (c!251781 totalInput!496)) e!987815)))

(declare-fun b!1542457 () Bool)

(declare-fun inv!21788 (Conc!5515) Bool)

(assert (=> b!1542457 (= e!987815 (inv!21788 (c!251781 totalInput!496)))))

(declare-fun b!1542458 () Bool)

(declare-fun e!987816 () Bool)

(assert (=> b!1542458 (= e!987815 e!987816)))

(declare-fun res!690517 () Bool)

(assert (=> b!1542458 (= res!690517 (not ((_ is Leaf!8172) (c!251781 totalInput!496))))))

(assert (=> b!1542458 (=> res!690517 e!987816)))

(declare-fun b!1542459 () Bool)

(declare-fun inv!21789 (Conc!5515) Bool)

(assert (=> b!1542459 (= e!987816 (inv!21789 (c!251781 totalInput!496)))))

(assert (= (and d!458759 c!251785) b!1542457))

(assert (= (and d!458759 (not c!251785)) b!1542458))

(assert (= (and b!1542458 (not res!690517)) b!1542459))

(declare-fun m!1815776 () Bool)

(assert (=> b!1542457 m!1815776))

(declare-fun m!1815778 () Bool)

(assert (=> b!1542459 m!1815778))

(assert (=> b!1542420 d!458759))

(declare-fun d!458761 () Bool)

(declare-fun c!251786 () Bool)

(assert (=> d!458761 (= c!251786 ((_ is Node!5515) (c!251781 (totalInput!2393 cacheFurthestNullable!81))))))

(declare-fun e!987817 () Bool)

(assert (=> d!458761 (= (inv!21782 (c!251781 (totalInput!2393 cacheFurthestNullable!81))) e!987817)))

(declare-fun b!1542460 () Bool)

(assert (=> b!1542460 (= e!987817 (inv!21788 (c!251781 (totalInput!2393 cacheFurthestNullable!81))))))

(declare-fun b!1542461 () Bool)

(declare-fun e!987818 () Bool)

(assert (=> b!1542461 (= e!987817 e!987818)))

(declare-fun res!690518 () Bool)

(assert (=> b!1542461 (= res!690518 (not ((_ is Leaf!8172) (c!251781 (totalInput!2393 cacheFurthestNullable!81)))))))

(assert (=> b!1542461 (=> res!690518 e!987818)))

(declare-fun b!1542462 () Bool)

(assert (=> b!1542462 (= e!987818 (inv!21789 (c!251781 (totalInput!2393 cacheFurthestNullable!81))))))

(assert (= (and d!458761 c!251786) b!1542460))

(assert (= (and d!458761 (not c!251786)) b!1542461))

(assert (= (and b!1542461 (not res!690518)) b!1542462))

(declare-fun m!1815780 () Bool)

(assert (=> b!1542460 m!1815780))

(declare-fun m!1815782 () Bool)

(assert (=> b!1542462 m!1815782))

(assert (=> b!1542448 d!458761))

(declare-fun d!458763 () Bool)

(assert (=> d!458763 (= (inv!21779 (tag!3162 (h!21923 rulesArg!359))) (= (mod (str.len (value!92251 (tag!3162 (h!21923 rulesArg!359)))) 2) 0))))

(assert (=> b!1542437 d!458763))

(declare-fun d!458765 () Bool)

(declare-fun res!690521 () Bool)

(declare-fun e!987821 () Bool)

(assert (=> d!458765 (=> (not res!690521) (not e!987821))))

(declare-fun semiInverseModEq!1089 (Int Int) Bool)

(assert (=> d!458765 (= res!690521 (semiInverseModEq!1089 (toChars!4118 (transformation!2898 (h!21923 rulesArg!359))) (toValue!4259 (transformation!2898 (h!21923 rulesArg!359)))))))

(assert (=> d!458765 (= (inv!21784 (transformation!2898 (h!21923 rulesArg!359))) e!987821)))

(declare-fun b!1542465 () Bool)

(declare-fun equivClasses!1048 (Int Int) Bool)

(assert (=> b!1542465 (= e!987821 (equivClasses!1048 (toChars!4118 (transformation!2898 (h!21923 rulesArg!359))) (toValue!4259 (transformation!2898 (h!21923 rulesArg!359)))))))

(assert (= (and d!458765 res!690521) b!1542465))

(declare-fun m!1815784 () Bool)

(assert (=> d!458765 m!1815784))

(declare-fun m!1815786 () Bool)

(assert (=> b!1542465 m!1815786))

(assert (=> b!1542437 d!458765))

(declare-fun d!458767 () Bool)

(assert (=> d!458767 (= (array_inv!1837 (_keys!1951 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))) (bvsge (size!13342 (_keys!1951 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1542429 d!458767))

(declare-fun d!458769 () Bool)

(assert (=> d!458769 (= (array_inv!1839 (_values!1936 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))) (bvsge (size!13344 (_values!1936 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1542429 d!458769))

(declare-fun d!458771 () Bool)

(assert (=> d!458771 (= (array_inv!1837 (_keys!1950 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))) (bvsge (size!13342 (_keys!1950 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1542418 d!458771))

(declare-fun d!458773 () Bool)

(assert (=> d!458773 (= (array_inv!1838 (_values!1935 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))) (bvsge (size!13343 (_values!1935 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1542418 d!458773))

(declare-fun d!458775 () Bool)

(declare-fun isBalanced!1635 (Conc!5515) Bool)

(assert (=> d!458775 (= (inv!21783 (totalInput!2393 cacheFurthestNullable!81)) (isBalanced!1635 (c!251781 (totalInput!2393 cacheFurthestNullable!81))))))

(declare-fun bs!382859 () Bool)

(assert (= bs!382859 d!458775))

(declare-fun m!1815788 () Bool)

(assert (=> bs!382859 m!1815788))

(assert (=> b!1542419 d!458775))

(declare-fun d!458777 () Bool)

(declare-fun res!690524 () Bool)

(declare-fun e!987824 () Bool)

(assert (=> d!458777 (=> (not res!690524) (not e!987824))))

(assert (=> d!458777 (= res!690524 ((_ is HashMap!1600) (cache!1981 cacheDown!708)))))

(assert (=> d!458777 (= (inv!21786 cacheDown!708) e!987824)))

(declare-fun b!1542468 () Bool)

(declare-fun validCacheMapDown!153 (MutableMap!1600) Bool)

(assert (=> b!1542468 (= e!987824 (validCacheMapDown!153 (cache!1981 cacheDown!708)))))

(assert (= (and d!458777 res!690524) b!1542468))

(declare-fun m!1815790 () Bool)

(assert (=> b!1542468 m!1815790))

(assert (=> start!143264 d!458777))

(declare-fun d!458779 () Bool)

(assert (=> d!458779 (= (inv!21783 input!1460) (isBalanced!1635 (c!251781 input!1460)))))

(declare-fun bs!382860 () Bool)

(assert (= bs!382860 d!458779))

(declare-fun m!1815792 () Bool)

(assert (=> bs!382860 m!1815792))

(assert (=> start!143264 d!458779))

(declare-fun d!458781 () Bool)

(declare-fun res!690527 () Bool)

(declare-fun e!987827 () Bool)

(assert (=> d!458781 (=> (not res!690527) (not e!987827))))

(assert (=> d!458781 (= res!690527 ((_ is HashMap!1602) (cache!1983 cacheUp!695)))))

(assert (=> d!458781 (= (inv!21785 cacheUp!695) e!987827)))

(declare-fun b!1542471 () Bool)

(declare-fun validCacheMapUp!153 (MutableMap!1602) Bool)

(assert (=> b!1542471 (= e!987827 (validCacheMapUp!153 (cache!1983 cacheUp!695)))))

(assert (= (and d!458781 res!690527) b!1542471))

(declare-fun m!1815794 () Bool)

(assert (=> b!1542471 m!1815794))

(assert (=> start!143264 d!458781))

(declare-fun d!458783 () Bool)

(assert (=> d!458783 (= (inv!21783 totalInput!496) (isBalanced!1635 (c!251781 totalInput!496)))))

(declare-fun bs!382861 () Bool)

(assert (= bs!382861 d!458783))

(declare-fun m!1815796 () Bool)

(assert (=> bs!382861 m!1815796))

(assert (=> start!143264 d!458783))

(declare-fun d!458785 () Bool)

(declare-fun res!690530 () Bool)

(declare-fun e!987830 () Bool)

(assert (=> d!458785 (=> (not res!690530) (not e!987830))))

(assert (=> d!458785 (= res!690530 ((_ is HashMap!1601) (cache!1982 cacheFurthestNullable!81)))))

(assert (=> d!458785 (= (inv!21787 cacheFurthestNullable!81) e!987830)))

(declare-fun b!1542474 () Bool)

(declare-fun validCacheMapFurthestNullable!66 (MutableMap!1601 BalanceConc!10972) Bool)

(assert (=> b!1542474 (= e!987830 (validCacheMapFurthestNullable!66 (cache!1982 cacheFurthestNullable!81) (totalInput!2393 cacheFurthestNullable!81)))))

(assert (= (and d!458785 res!690530) b!1542474))

(declare-fun m!1815798 () Bool)

(assert (=> b!1542474 m!1815798))

(assert (=> start!143264 d!458785))

(declare-fun d!458787 () Bool)

(assert (=> d!458787 true))

(declare-fun lt!534706 () Bool)

(declare-fun lambda!65290 () Int)

(declare-fun forall!3908 (List!16590 Int) Bool)

(assert (=> d!458787 (= lt!534706 (forall!3908 rulesArg!359 lambda!65290))))

(declare-fun e!987835 () Bool)

(assert (=> d!458787 (= lt!534706 e!987835)))

(declare-fun res!690536 () Bool)

(assert (=> d!458787 (=> res!690536 e!987835)))

(assert (=> d!458787 (= res!690536 (not ((_ is Cons!16522) rulesArg!359)))))

(assert (=> d!458787 (= (rulesValidInductive!893 thiss!15733 rulesArg!359) lt!534706)))

(declare-fun b!1542479 () Bool)

(declare-fun e!987836 () Bool)

(assert (=> b!1542479 (= e!987835 e!987836)))

(declare-fun res!690535 () Bool)

(assert (=> b!1542479 (=> (not res!690535) (not e!987836))))

(declare-fun ruleValid!653 (LexerInterface!2547 Rule!5596) Bool)

(assert (=> b!1542479 (= res!690535 (ruleValid!653 thiss!15733 (h!21923 rulesArg!359)))))

(declare-fun b!1542480 () Bool)

(assert (=> b!1542480 (= e!987836 (rulesValidInductive!893 thiss!15733 (t!140796 rulesArg!359)))))

(assert (= (and d!458787 (not res!690536)) b!1542479))

(assert (= (and b!1542479 res!690535) b!1542480))

(declare-fun m!1815800 () Bool)

(assert (=> d!458787 m!1815800))

(declare-fun m!1815802 () Bool)

(assert (=> b!1542479 m!1815802))

(declare-fun m!1815804 () Bool)

(assert (=> b!1542480 m!1815804))

(assert (=> b!1542438 d!458787))

(declare-fun d!458789 () Bool)

(declare-fun c!251787 () Bool)

(assert (=> d!458789 (= c!251787 ((_ is Node!5515) (c!251781 input!1460)))))

(declare-fun e!987837 () Bool)

(assert (=> d!458789 (= (inv!21782 (c!251781 input!1460)) e!987837)))

(declare-fun b!1542483 () Bool)

(assert (=> b!1542483 (= e!987837 (inv!21788 (c!251781 input!1460)))))

(declare-fun b!1542484 () Bool)

(declare-fun e!987838 () Bool)

(assert (=> b!1542484 (= e!987837 e!987838)))

(declare-fun res!690537 () Bool)

(assert (=> b!1542484 (= res!690537 (not ((_ is Leaf!8172) (c!251781 input!1460))))))

(assert (=> b!1542484 (=> res!690537 e!987838)))

(declare-fun b!1542485 () Bool)

(assert (=> b!1542485 (= e!987838 (inv!21789 (c!251781 input!1460)))))

(assert (= (and d!458789 c!251787) b!1542483))

(assert (= (and d!458789 (not c!251787)) b!1542484))

(assert (= (and b!1542484 (not res!690537)) b!1542485))

(declare-fun m!1815806 () Bool)

(assert (=> b!1542483 m!1815806))

(declare-fun m!1815808 () Bool)

(assert (=> b!1542485 m!1815808))

(assert (=> b!1542416 d!458789))

(declare-fun d!458791 () Bool)

(assert (=> d!458791 (= (isEmpty!10039 rulesArg!359) ((_ is Nil!16522) rulesArg!359))))

(assert (=> b!1542435 d!458791))

(declare-fun d!458793 () Bool)

(assert (=> d!458793 (= (valid!1338 cacheUp!695) (validCacheMapUp!153 (cache!1983 cacheUp!695)))))

(declare-fun bs!382862 () Bool)

(assert (= bs!382862 d!458793))

(assert (=> bs!382862 m!1815794))

(assert (=> b!1542444 d!458793))

(declare-fun d!458795 () Bool)

(declare-fun e!987841 () Bool)

(assert (=> d!458795 e!987841))

(declare-fun res!690540 () Bool)

(assert (=> d!458795 (=> res!690540 e!987841)))

(declare-fun lt!534709 () Bool)

(assert (=> d!458795 (= res!690540 (not lt!534709))))

(declare-fun drop!777 (List!16585 Int) List!16585)

(declare-fun size!13346 (List!16585) Int)

(assert (=> d!458795 (= lt!534709 (= lt!534699 (drop!777 (list!6441 totalInput!496) (- (size!13346 (list!6441 totalInput!496)) (size!13346 lt!534699)))))))

(assert (=> d!458795 (= (isSuffix!341 lt!534699 (list!6441 totalInput!496)) lt!534709)))

(declare-fun b!1542488 () Bool)

(assert (=> b!1542488 (= e!987841 (>= (size!13346 (list!6441 totalInput!496)) (size!13346 lt!534699)))))

(assert (= (and d!458795 (not res!690540)) b!1542488))

(assert (=> d!458795 m!1815770))

(declare-fun m!1815810 () Bool)

(assert (=> d!458795 m!1815810))

(declare-fun m!1815812 () Bool)

(assert (=> d!458795 m!1815812))

(assert (=> d!458795 m!1815770))

(declare-fun m!1815814 () Bool)

(assert (=> d!458795 m!1815814))

(assert (=> b!1542488 m!1815770))

(assert (=> b!1542488 m!1815810))

(assert (=> b!1542488 m!1815812))

(assert (=> b!1542432 d!458795))

(declare-fun d!458797 () Bool)

(declare-fun list!6442 (Conc!5515) List!16585)

(assert (=> d!458797 (= (list!6441 totalInput!496) (list!6442 (c!251781 totalInput!496)))))

(declare-fun bs!382863 () Bool)

(assert (= bs!382863 d!458797))

(declare-fun m!1815816 () Bool)

(assert (=> bs!382863 m!1815816))

(assert (=> b!1542432 d!458797))

(declare-fun d!458799 () Bool)

(assert (=> d!458799 (= (list!6441 input!1460) (list!6442 (c!251781 input!1460)))))

(declare-fun bs!382864 () Bool)

(assert (= bs!382864 d!458799))

(declare-fun m!1815818 () Bool)

(assert (=> bs!382864 m!1815818))

(assert (=> b!1542432 d!458799))

(declare-fun b!1542498 () Bool)

(declare-fun res!690551 () Bool)

(declare-fun e!987850 () Bool)

(assert (=> b!1542498 (=> (not res!690551) (not e!987850))))

(declare-fun head!3106 (List!16585) C!8624)

(assert (=> b!1542498 (= res!690551 (= (head!3106 lt!534699) (head!3106 lt!534699)))))

(declare-fun b!1542499 () Bool)

(declare-fun tail!2201 (List!16585) List!16585)

(assert (=> b!1542499 (= e!987850 (isPrefix!1253 (tail!2201 lt!534699) (tail!2201 lt!534699)))))

(declare-fun d!458801 () Bool)

(declare-fun e!987849 () Bool)

(assert (=> d!458801 e!987849))

(declare-fun res!690552 () Bool)

(assert (=> d!458801 (=> res!690552 e!987849)))

(declare-fun lt!534712 () Bool)

(assert (=> d!458801 (= res!690552 (not lt!534712))))

(declare-fun e!987848 () Bool)

(assert (=> d!458801 (= lt!534712 e!987848)))

(declare-fun res!690549 () Bool)

(assert (=> d!458801 (=> res!690549 e!987848)))

(assert (=> d!458801 (= res!690549 ((_ is Nil!16517) lt!534699))))

(assert (=> d!458801 (= (isPrefix!1253 lt!534699 lt!534699) lt!534712)))

(declare-fun b!1542500 () Bool)

(assert (=> b!1542500 (= e!987849 (>= (size!13346 lt!534699) (size!13346 lt!534699)))))

(declare-fun b!1542497 () Bool)

(assert (=> b!1542497 (= e!987848 e!987850)))

(declare-fun res!690550 () Bool)

(assert (=> b!1542497 (=> (not res!690550) (not e!987850))))

(assert (=> b!1542497 (= res!690550 (not ((_ is Nil!16517) lt!534699)))))

(assert (= (and d!458801 (not res!690549)) b!1542497))

(assert (= (and b!1542497 res!690550) b!1542498))

(assert (= (and b!1542498 res!690551) b!1542499))

(assert (= (and d!458801 (not res!690552)) b!1542500))

(declare-fun m!1815820 () Bool)

(assert (=> b!1542498 m!1815820))

(assert (=> b!1542498 m!1815820))

(declare-fun m!1815822 () Bool)

(assert (=> b!1542499 m!1815822))

(assert (=> b!1542499 m!1815822))

(assert (=> b!1542499 m!1815822))

(assert (=> b!1542499 m!1815822))

(declare-fun m!1815824 () Bool)

(assert (=> b!1542499 m!1815824))

(assert (=> b!1542500 m!1815812))

(assert (=> b!1542500 m!1815812))

(assert (=> b!1542422 d!458801))

(declare-fun d!458803 () Bool)

(assert (=> d!458803 (isPrefix!1253 lt!534699 lt!534699)))

(declare-fun lt!534715 () Unit!25905)

(declare-fun choose!9229 (List!16585 List!16585) Unit!25905)

(assert (=> d!458803 (= lt!534715 (choose!9229 lt!534699 lt!534699))))

(assert (=> d!458803 (= (lemmaIsPrefixRefl!883 lt!534699 lt!534699) lt!534715)))

(declare-fun bs!382865 () Bool)

(assert (= bs!382865 d!458803))

(assert (=> bs!382865 m!1815742))

(declare-fun m!1815826 () Bool)

(assert (=> bs!382865 m!1815826))

(assert (=> b!1542422 d!458803))

(declare-fun d!458805 () Bool)

(assert (=> d!458805 (= (array_inv!1837 (_keys!1952 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))) (bvsge (size!13342 (_keys!1952 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1542449 d!458805))

(declare-fun d!458807 () Bool)

(assert (=> d!458807 (= (array_inv!1840 (_values!1937 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))) (bvsge (size!13345 (_values!1937 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1542449 d!458807))

(declare-fun d!458809 () Bool)

(assert (=> d!458809 (= (valid!1337 cacheFurthestNullable!81) (validCacheMapFurthestNullable!66 (cache!1982 cacheFurthestNullable!81) (totalInput!2393 cacheFurthestNullable!81)))))

(declare-fun bs!382866 () Bool)

(assert (= bs!382866 d!458809))

(assert (=> bs!382866 m!1815798))

(assert (=> b!1542442 d!458809))

(declare-fun d!458811 () Bool)

(assert (=> d!458811 (= (valid!1336 cacheDown!708) (validCacheMapDown!153 (cache!1981 cacheDown!708)))))

(declare-fun bs!382867 () Bool)

(assert (= bs!382867 d!458811))

(assert (=> bs!382867 m!1815790))

(assert (=> b!1542424 d!458811))

(declare-fun condMapEmpty!7775 () Bool)

(declare-fun mapDefault!7775 () List!16591)

(assert (=> mapNonEmpty!7770 (= condMapEmpty!7775 (= mapRest!7771 ((as const (Array (_ BitVec 32) List!16591)) mapDefault!7775)))))

(declare-fun e!987863 () Bool)

(declare-fun mapRes!7775 () Bool)

(assert (=> mapNonEmpty!7770 (= tp!447760 (and e!987863 mapRes!7775))))

(declare-fun setIsEmpty!10310 () Bool)

(declare-fun setRes!10311 () Bool)

(assert (=> setIsEmpty!10310 setRes!10311))

(declare-fun tp!447793 () Bool)

(declare-fun setRes!10310 () Bool)

(declare-fun e!987865 () Bool)

(declare-fun tp_is_empty!7051 () Bool)

(declare-fun b!1542515 () Bool)

(declare-fun inv!21790 (Context!1482) Bool)

(assert (=> b!1542515 (= e!987863 (and (inv!21790 (_1!9047 (_1!9048 (h!21924 mapDefault!7775)))) e!987865 tp_is_empty!7051 setRes!10310 tp!447793))))

(declare-fun condSetEmpty!10311 () Bool)

(assert (=> b!1542515 (= condSetEmpty!10311 (= (_2!9048 (h!21924 mapDefault!7775)) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun setIsEmpty!10311 () Bool)

(assert (=> setIsEmpty!10311 setRes!10310))

(declare-fun tp!447789 () Bool)

(declare-fun b!1542516 () Bool)

(declare-fun mapValue!7775 () List!16591)

(declare-fun e!987866 () Bool)

(declare-fun e!987867 () Bool)

(assert (=> b!1542516 (= e!987867 (and (inv!21790 (_1!9047 (_1!9048 (h!21924 mapValue!7775)))) e!987866 tp_is_empty!7051 setRes!10311 tp!447789))))

(declare-fun condSetEmpty!10310 () Bool)

(assert (=> b!1542516 (= condSetEmpty!10310 (= (_2!9048 (h!21924 mapValue!7775)) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542517 () Bool)

(declare-fun e!987864 () Bool)

(declare-fun tp!447792 () Bool)

(assert (=> b!1542517 (= e!987864 tp!447792)))

(declare-fun b!1542518 () Bool)

(declare-fun e!987868 () Bool)

(declare-fun tp!447791 () Bool)

(assert (=> b!1542518 (= e!987868 tp!447791)))

(declare-fun b!1542519 () Bool)

(declare-fun tp!447786 () Bool)

(assert (=> b!1542519 (= e!987865 tp!447786)))

(declare-fun tp!447794 () Bool)

(declare-fun setNonEmpty!10310 () Bool)

(declare-fun setElem!10311 () Context!1482)

(assert (=> setNonEmpty!10310 (= setRes!10310 (and tp!447794 (inv!21790 setElem!10311) e!987864))))

(declare-fun setRest!10311 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10310 (= (_2!9048 (h!21924 mapDefault!7775)) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10311 true) setRest!10311))))

(declare-fun b!1542520 () Bool)

(declare-fun tp!447788 () Bool)

(assert (=> b!1542520 (= e!987866 tp!447788)))

(declare-fun mapNonEmpty!7775 () Bool)

(declare-fun tp!447787 () Bool)

(assert (=> mapNonEmpty!7775 (= mapRes!7775 (and tp!447787 e!987867))))

(declare-fun mapKey!7775 () (_ BitVec 32))

(declare-fun mapRest!7775 () (Array (_ BitVec 32) List!16591))

(assert (=> mapNonEmpty!7775 (= mapRest!7771 (store mapRest!7775 mapKey!7775 mapValue!7775))))

(declare-fun mapIsEmpty!7775 () Bool)

(assert (=> mapIsEmpty!7775 mapRes!7775))

(declare-fun tp!447790 () Bool)

(declare-fun setNonEmpty!10311 () Bool)

(declare-fun setElem!10310 () Context!1482)

(assert (=> setNonEmpty!10311 (= setRes!10311 (and tp!447790 (inv!21790 setElem!10310) e!987868))))

(declare-fun setRest!10310 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10311 (= (_2!9048 (h!21924 mapValue!7775)) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10310 true) setRest!10310))))

(assert (= (and mapNonEmpty!7770 condMapEmpty!7775) mapIsEmpty!7775))

(assert (= (and mapNonEmpty!7770 (not condMapEmpty!7775)) mapNonEmpty!7775))

(assert (= b!1542516 b!1542520))

(assert (= (and b!1542516 condSetEmpty!10310) setIsEmpty!10310))

(assert (= (and b!1542516 (not condSetEmpty!10310)) setNonEmpty!10311))

(assert (= setNonEmpty!10311 b!1542518))

(assert (= (and mapNonEmpty!7775 ((_ is Cons!16523) mapValue!7775)) b!1542516))

(assert (= b!1542515 b!1542519))

(assert (= (and b!1542515 condSetEmpty!10311) setIsEmpty!10311))

(assert (= (and b!1542515 (not condSetEmpty!10311)) setNonEmpty!10310))

(assert (= setNonEmpty!10310 b!1542517))

(assert (= (and mapNonEmpty!7770 ((_ is Cons!16523) mapDefault!7775)) b!1542515))

(declare-fun m!1815828 () Bool)

(assert (=> setNonEmpty!10310 m!1815828))

(declare-fun m!1815830 () Bool)

(assert (=> b!1542516 m!1815830))

(declare-fun m!1815832 () Bool)

(assert (=> setNonEmpty!10311 m!1815832))

(declare-fun m!1815834 () Bool)

(assert (=> b!1542515 m!1815834))

(declare-fun m!1815836 () Bool)

(assert (=> mapNonEmpty!7775 m!1815836))

(declare-fun setIsEmpty!10314 () Bool)

(declare-fun setRes!10314 () Bool)

(assert (=> setIsEmpty!10314 setRes!10314))

(declare-fun e!987875 () Bool)

(declare-fun setNonEmpty!10314 () Bool)

(declare-fun setElem!10314 () Context!1482)

(declare-fun tp!447805 () Bool)

(assert (=> setNonEmpty!10314 (= setRes!10314 (and tp!447805 (inv!21790 setElem!10314) e!987875))))

(declare-fun setRest!10314 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10314 (= (_2!9048 (h!21924 mapValue!7772)) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10314 true) setRest!10314))))

(declare-fun e!987877 () Bool)

(assert (=> mapNonEmpty!7770 (= tp!447765 e!987877)))

(declare-fun b!1542529 () Bool)

(declare-fun e!987876 () Bool)

(declare-fun tp!447806 () Bool)

(assert (=> b!1542529 (= e!987877 (and (inv!21790 (_1!9047 (_1!9048 (h!21924 mapValue!7772)))) e!987876 tp_is_empty!7051 setRes!10314 tp!447806))))

(declare-fun condSetEmpty!10314 () Bool)

(assert (=> b!1542529 (= condSetEmpty!10314 (= (_2!9048 (h!21924 mapValue!7772)) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542530 () Bool)

(declare-fun tp!447804 () Bool)

(assert (=> b!1542530 (= e!987875 tp!447804)))

(declare-fun b!1542531 () Bool)

(declare-fun tp!447803 () Bool)

(assert (=> b!1542531 (= e!987876 tp!447803)))

(assert (= b!1542529 b!1542531))

(assert (= (and b!1542529 condSetEmpty!10314) setIsEmpty!10314))

(assert (= (and b!1542529 (not condSetEmpty!10314)) setNonEmpty!10314))

(assert (= setNonEmpty!10314 b!1542530))

(assert (= (and mapNonEmpty!7770 ((_ is Cons!16523) mapValue!7772)) b!1542529))

(declare-fun m!1815838 () Bool)

(assert (=> setNonEmpty!10314 m!1815838))

(declare-fun m!1815840 () Bool)

(assert (=> b!1542529 m!1815840))

(declare-fun tp!447813 () Bool)

(declare-fun b!1542540 () Bool)

(declare-fun e!987883 () Bool)

(declare-fun tp!447814 () Bool)

(assert (=> b!1542540 (= e!987883 (and (inv!21782 (left!13503 (c!251781 totalInput!496))) tp!447814 (inv!21782 (right!13833 (c!251781 totalInput!496))) tp!447813))))

(declare-fun b!1542542 () Bool)

(declare-fun e!987882 () Bool)

(declare-fun tp!447815 () Bool)

(assert (=> b!1542542 (= e!987882 tp!447815)))

(declare-fun b!1542541 () Bool)

(declare-fun inv!21791 (IArray!11035) Bool)

(assert (=> b!1542541 (= e!987883 (and (inv!21791 (xs!8315 (c!251781 totalInput!496))) e!987882))))

(assert (=> b!1542420 (= tp!447744 (and (inv!21782 (c!251781 totalInput!496)) e!987883))))

(assert (= (and b!1542420 ((_ is Node!5515) (c!251781 totalInput!496))) b!1542540))

(assert (= b!1542541 b!1542542))

(assert (= (and b!1542420 ((_ is Leaf!8172) (c!251781 totalInput!496))) b!1542541))

(declare-fun m!1815842 () Bool)

(assert (=> b!1542540 m!1815842))

(declare-fun m!1815844 () Bool)

(assert (=> b!1542540 m!1815844))

(declare-fun m!1815846 () Bool)

(assert (=> b!1542541 m!1815846))

(assert (=> b!1542420 m!1815754))

(declare-fun setIsEmpty!10317 () Bool)

(declare-fun setRes!10317 () Bool)

(assert (=> setIsEmpty!10317 setRes!10317))

(declare-fun e!987888 () Bool)

(assert (=> b!1542447 (= tp!447761 e!987888)))

(declare-fun b!1542550 () Bool)

(declare-fun e!987889 () Bool)

(declare-fun tp!447822 () Bool)

(assert (=> b!1542550 (= e!987889 tp!447822)))

(declare-fun b!1542549 () Bool)

(declare-fun tp!447824 () Bool)

(assert (=> b!1542549 (= e!987888 (and setRes!10317 tp!447824))))

(declare-fun condSetEmpty!10317 () Bool)

(assert (=> b!1542549 (= condSetEmpty!10317 (= (_1!9045 (_1!9046 (h!21921 mapDefault!7770))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun setNonEmpty!10317 () Bool)

(declare-fun setElem!10317 () Context!1482)

(declare-fun tp!447823 () Bool)

(assert (=> setNonEmpty!10317 (= setRes!10317 (and tp!447823 (inv!21790 setElem!10317) e!987889))))

(declare-fun setRest!10317 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10317 (= (_1!9045 (_1!9046 (h!21921 mapDefault!7770))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10317 true) setRest!10317))))

(assert (= (and b!1542549 condSetEmpty!10317) setIsEmpty!10317))

(assert (= (and b!1542549 (not condSetEmpty!10317)) setNonEmpty!10317))

(assert (= setNonEmpty!10317 b!1542550))

(assert (= (and b!1542447 ((_ is Cons!16520) mapDefault!7770)) b!1542549))

(declare-fun m!1815848 () Bool)

(assert (=> setNonEmpty!10317 m!1815848))

(declare-fun tp!447825 () Bool)

(declare-fun e!987891 () Bool)

(declare-fun b!1542551 () Bool)

(declare-fun tp!447826 () Bool)

(assert (=> b!1542551 (= e!987891 (and (inv!21782 (left!13503 (c!251781 (totalInput!2393 cacheFurthestNullable!81)))) tp!447826 (inv!21782 (right!13833 (c!251781 (totalInput!2393 cacheFurthestNullable!81)))) tp!447825))))

(declare-fun b!1542553 () Bool)

(declare-fun e!987890 () Bool)

(declare-fun tp!447827 () Bool)

(assert (=> b!1542553 (= e!987890 tp!447827)))

(declare-fun b!1542552 () Bool)

(assert (=> b!1542552 (= e!987891 (and (inv!21791 (xs!8315 (c!251781 (totalInput!2393 cacheFurthestNullable!81)))) e!987890))))

(assert (=> b!1542448 (= tp!447740 (and (inv!21782 (c!251781 (totalInput!2393 cacheFurthestNullable!81))) e!987891))))

(assert (= (and b!1542448 ((_ is Node!5515) (c!251781 (totalInput!2393 cacheFurthestNullable!81)))) b!1542551))

(assert (= b!1542552 b!1542553))

(assert (= (and b!1542448 ((_ is Leaf!8172) (c!251781 (totalInput!2393 cacheFurthestNullable!81)))) b!1542552))

(declare-fun m!1815850 () Bool)

(assert (=> b!1542551 m!1815850))

(declare-fun m!1815852 () Bool)

(assert (=> b!1542551 m!1815852))

(declare-fun m!1815854 () Bool)

(assert (=> b!1542552 m!1815854))

(assert (=> b!1542448 m!1815764))

(declare-fun b!1542564 () Bool)

(declare-fun b_free!40471 () Bool)

(declare-fun b_next!41175 () Bool)

(assert (=> b!1542564 (= b_free!40471 (not b_next!41175))))

(declare-fun tp!447838 () Bool)

(declare-fun b_and!107349 () Bool)

(assert (=> b!1542564 (= tp!447838 b_and!107349)))

(declare-fun b_free!40473 () Bool)

(declare-fun b_next!41177 () Bool)

(assert (=> b!1542564 (= b_free!40473 (not b_next!41177))))

(declare-fun tp!447837 () Bool)

(declare-fun b_and!107351 () Bool)

(assert (=> b!1542564 (= tp!447837 b_and!107351)))

(declare-fun e!987900 () Bool)

(assert (=> b!1542564 (= e!987900 (and tp!447838 tp!447837))))

(declare-fun tp!447839 () Bool)

(declare-fun b!1542563 () Bool)

(declare-fun e!987901 () Bool)

(assert (=> b!1542563 (= e!987901 (and tp!447839 (inv!21779 (tag!3162 (h!21923 (t!140796 rulesArg!359)))) (inv!21784 (transformation!2898 (h!21923 (t!140796 rulesArg!359)))) e!987900))))

(declare-fun b!1542562 () Bool)

(declare-fun e!987903 () Bool)

(declare-fun tp!447836 () Bool)

(assert (=> b!1542562 (= e!987903 (and e!987901 tp!447836))))

(assert (=> b!1542441 (= tp!447746 e!987903)))

(assert (= b!1542563 b!1542564))

(assert (= b!1542562 b!1542563))

(assert (= (and b!1542441 ((_ is Cons!16522) (t!140796 rulesArg!359))) b!1542562))

(declare-fun m!1815856 () Bool)

(assert (=> b!1542563 m!1815856))

(declare-fun m!1815858 () Bool)

(assert (=> b!1542563 m!1815858))

(declare-fun b!1542579 () Bool)

(declare-fun e!987920 () Bool)

(declare-fun tp!447867 () Bool)

(assert (=> b!1542579 (= e!987920 tp!447867)))

(declare-fun setIsEmpty!10322 () Bool)

(declare-fun setRes!10323 () Bool)

(assert (=> setIsEmpty!10322 setRes!10323))

(declare-fun tp!447864 () Bool)

(declare-fun b!1542580 () Bool)

(declare-fun mapValue!7778 () List!16587)

(declare-fun tp!447870 () Bool)

(declare-fun setRes!10322 () Bool)

(declare-fun e!987921 () Bool)

(declare-fun e!987917 () Bool)

(assert (=> b!1542580 (= e!987917 (and tp!447870 (inv!21790 (_2!9043 (_1!9044 (h!21920 mapValue!7778)))) e!987921 tp_is_empty!7051 setRes!10322 tp!447864))))

(declare-fun condSetEmpty!10322 () Bool)

(assert (=> b!1542580 (= condSetEmpty!10322 (= (_2!9044 (h!21920 mapValue!7778)) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun setIsEmpty!10323 () Bool)

(assert (=> setIsEmpty!10323 setRes!10322))

(declare-fun condMapEmpty!7778 () Bool)

(declare-fun mapDefault!7778 () List!16587)

(assert (=> mapNonEmpty!7772 (= condMapEmpty!7778 (= mapRest!7772 ((as const (Array (_ BitVec 32) List!16587)) mapDefault!7778)))))

(declare-fun e!987919 () Bool)

(declare-fun mapRes!7778 () Bool)

(assert (=> mapNonEmpty!7772 (= tp!447758 (and e!987919 mapRes!7778))))

(declare-fun tp!447863 () Bool)

(declare-fun e!987918 () Bool)

(declare-fun setElem!10322 () Context!1482)

(declare-fun setNonEmpty!10322 () Bool)

(assert (=> setNonEmpty!10322 (= setRes!10323 (and tp!447863 (inv!21790 setElem!10322) e!987918))))

(declare-fun setRest!10322 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10322 (= (_2!9044 (h!21920 mapDefault!7778)) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10322 true) setRest!10322))))

(declare-fun b!1542581 () Bool)

(declare-fun tp!447871 () Bool)

(assert (=> b!1542581 (= e!987921 tp!447871)))

(declare-fun mapNonEmpty!7778 () Bool)

(declare-fun tp!447866 () Bool)

(assert (=> mapNonEmpty!7778 (= mapRes!7778 (and tp!447866 e!987917))))

(declare-fun mapRest!7778 () (Array (_ BitVec 32) List!16587))

(declare-fun mapKey!7778 () (_ BitVec 32))

(assert (=> mapNonEmpty!7778 (= mapRest!7772 (store mapRest!7778 mapKey!7778 mapValue!7778))))

(declare-fun e!987916 () Bool)

(declare-fun tp!447869 () Bool)

(declare-fun setNonEmpty!10323 () Bool)

(declare-fun setElem!10323 () Context!1482)

(assert (=> setNonEmpty!10323 (= setRes!10322 (and tp!447869 (inv!21790 setElem!10323) e!987916))))

(declare-fun setRest!10323 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10323 (= (_2!9044 (h!21920 mapValue!7778)) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10323 true) setRest!10323))))

(declare-fun mapIsEmpty!7778 () Bool)

(assert (=> mapIsEmpty!7778 mapRes!7778))

(declare-fun b!1542582 () Bool)

(declare-fun tp!447872 () Bool)

(assert (=> b!1542582 (= e!987918 tp!447872)))

(declare-fun b!1542583 () Bool)

(declare-fun tp!447862 () Bool)

(assert (=> b!1542583 (= e!987916 tp!447862)))

(declare-fun tp!447865 () Bool)

(declare-fun tp!447868 () Bool)

(declare-fun b!1542584 () Bool)

(assert (=> b!1542584 (= e!987919 (and tp!447865 (inv!21790 (_2!9043 (_1!9044 (h!21920 mapDefault!7778)))) e!987920 tp_is_empty!7051 setRes!10323 tp!447868))))

(declare-fun condSetEmpty!10323 () Bool)

(assert (=> b!1542584 (= condSetEmpty!10323 (= (_2!9044 (h!21920 mapDefault!7778)) ((as const (Array Context!1482 Bool)) false)))))

(assert (= (and mapNonEmpty!7772 condMapEmpty!7778) mapIsEmpty!7778))

(assert (= (and mapNonEmpty!7772 (not condMapEmpty!7778)) mapNonEmpty!7778))

(assert (= b!1542580 b!1542581))

(assert (= (and b!1542580 condSetEmpty!10322) setIsEmpty!10323))

(assert (= (and b!1542580 (not condSetEmpty!10322)) setNonEmpty!10323))

(assert (= setNonEmpty!10323 b!1542583))

(assert (= (and mapNonEmpty!7778 ((_ is Cons!16519) mapValue!7778)) b!1542580))

(assert (= b!1542584 b!1542579))

(assert (= (and b!1542584 condSetEmpty!10323) setIsEmpty!10322))

(assert (= (and b!1542584 (not condSetEmpty!10323)) setNonEmpty!10322))

(assert (= setNonEmpty!10322 b!1542582))

(assert (= (and mapNonEmpty!7772 ((_ is Cons!16519) mapDefault!7778)) b!1542584))

(declare-fun m!1815860 () Bool)

(assert (=> setNonEmpty!10323 m!1815860))

(declare-fun m!1815862 () Bool)

(assert (=> setNonEmpty!10322 m!1815862))

(declare-fun m!1815864 () Bool)

(assert (=> b!1542580 m!1815864))

(declare-fun m!1815866 () Bool)

(assert (=> b!1542584 m!1815866))

(declare-fun m!1815868 () Bool)

(assert (=> mapNonEmpty!7778 m!1815868))

(declare-fun b!1542593 () Bool)

(declare-fun e!987930 () Bool)

(declare-fun tp!447887 () Bool)

(assert (=> b!1542593 (= e!987930 tp!447887)))

(declare-fun e!987928 () Bool)

(assert (=> mapNonEmpty!7772 (= tp!447763 e!987928)))

(declare-fun tp!447883 () Bool)

(declare-fun setNonEmpty!10326 () Bool)

(declare-fun setRes!10326 () Bool)

(declare-fun setElem!10326 () Context!1482)

(assert (=> setNonEmpty!10326 (= setRes!10326 (and tp!447883 (inv!21790 setElem!10326) e!987930))))

(declare-fun setRest!10326 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10326 (= (_2!9044 (h!21920 mapValue!7771)) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10326 true) setRest!10326))))

(declare-fun setIsEmpty!10326 () Bool)

(assert (=> setIsEmpty!10326 setRes!10326))

(declare-fun e!987929 () Bool)

(declare-fun tp!447886 () Bool)

(declare-fun b!1542594 () Bool)

(declare-fun tp!447885 () Bool)

(assert (=> b!1542594 (= e!987928 (and tp!447885 (inv!21790 (_2!9043 (_1!9044 (h!21920 mapValue!7771)))) e!987929 tp_is_empty!7051 setRes!10326 tp!447886))))

(declare-fun condSetEmpty!10326 () Bool)

(assert (=> b!1542594 (= condSetEmpty!10326 (= (_2!9044 (h!21920 mapValue!7771)) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542595 () Bool)

(declare-fun tp!447884 () Bool)

(assert (=> b!1542595 (= e!987929 tp!447884)))

(assert (= b!1542594 b!1542595))

(assert (= (and b!1542594 condSetEmpty!10326) setIsEmpty!10326))

(assert (= (and b!1542594 (not condSetEmpty!10326)) setNonEmpty!10326))

(assert (= setNonEmpty!10326 b!1542593))

(assert (= (and mapNonEmpty!7772 ((_ is Cons!16519) mapValue!7771)) b!1542594))

(declare-fun m!1815870 () Bool)

(assert (=> setNonEmpty!10326 m!1815870))

(declare-fun m!1815872 () Bool)

(assert (=> b!1542594 m!1815872))

(declare-fun b!1542606 () Bool)

(declare-fun e!987933 () Bool)

(assert (=> b!1542606 (= e!987933 tp_is_empty!7051)))

(declare-fun b!1542607 () Bool)

(declare-fun tp!447902 () Bool)

(declare-fun tp!447898 () Bool)

(assert (=> b!1542607 (= e!987933 (and tp!447902 tp!447898))))

(declare-fun b!1542608 () Bool)

(declare-fun tp!447900 () Bool)

(assert (=> b!1542608 (= e!987933 tp!447900)))

(declare-fun b!1542609 () Bool)

(declare-fun tp!447899 () Bool)

(declare-fun tp!447901 () Bool)

(assert (=> b!1542609 (= e!987933 (and tp!447899 tp!447901))))

(assert (=> b!1542437 (= tp!447748 e!987933)))

(assert (= (and b!1542437 ((_ is ElementMatch!4223) (regex!2898 (h!21923 rulesArg!359)))) b!1542606))

(assert (= (and b!1542437 ((_ is Concat!7211) (regex!2898 (h!21923 rulesArg!359)))) b!1542607))

(assert (= (and b!1542437 ((_ is Star!4223) (regex!2898 (h!21923 rulesArg!359)))) b!1542608))

(assert (= (and b!1542437 ((_ is Union!4223) (regex!2898 (h!21923 rulesArg!359)))) b!1542609))

(declare-fun setIsEmpty!10327 () Bool)

(declare-fun setRes!10327 () Bool)

(assert (=> setIsEmpty!10327 setRes!10327))

(declare-fun e!987934 () Bool)

(assert (=> b!1542429 (= tp!447764 e!987934)))

(declare-fun b!1542611 () Bool)

(declare-fun e!987935 () Bool)

(declare-fun tp!447903 () Bool)

(assert (=> b!1542611 (= e!987935 tp!447903)))

(declare-fun b!1542610 () Bool)

(declare-fun tp!447905 () Bool)

(assert (=> b!1542610 (= e!987934 (and setRes!10327 tp!447905))))

(declare-fun condSetEmpty!10327 () Bool)

(assert (=> b!1542610 (= condSetEmpty!10327 (= (_1!9045 (_1!9046 (h!21921 (zeroValue!1914 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun setNonEmpty!10327 () Bool)

(declare-fun setElem!10327 () Context!1482)

(declare-fun tp!447904 () Bool)

(assert (=> setNonEmpty!10327 (= setRes!10327 (and tp!447904 (inv!21790 setElem!10327) e!987935))))

(declare-fun setRest!10327 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10327 (= (_1!9045 (_1!9046 (h!21921 (zeroValue!1914 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10327 true) setRest!10327))))

(assert (= (and b!1542610 condSetEmpty!10327) setIsEmpty!10327))

(assert (= (and b!1542610 (not condSetEmpty!10327)) setNonEmpty!10327))

(assert (= setNonEmpty!10327 b!1542611))

(assert (= (and b!1542429 ((_ is Cons!16520) (zeroValue!1914 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81)))))))) b!1542610))

(declare-fun m!1815874 () Bool)

(assert (=> setNonEmpty!10327 m!1815874))

(declare-fun setIsEmpty!10328 () Bool)

(declare-fun setRes!10328 () Bool)

(assert (=> setIsEmpty!10328 setRes!10328))

(declare-fun e!987936 () Bool)

(assert (=> b!1542429 (= tp!447762 e!987936)))

(declare-fun b!1542613 () Bool)

(declare-fun e!987937 () Bool)

(declare-fun tp!447906 () Bool)

(assert (=> b!1542613 (= e!987937 tp!447906)))

(declare-fun b!1542612 () Bool)

(declare-fun tp!447908 () Bool)

(assert (=> b!1542612 (= e!987936 (and setRes!10328 tp!447908))))

(declare-fun condSetEmpty!10328 () Bool)

(assert (=> b!1542612 (= condSetEmpty!10328 (= (_1!9045 (_1!9046 (h!21921 (minValue!1914 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun setElem!10328 () Context!1482)

(declare-fun setNonEmpty!10328 () Bool)

(declare-fun tp!447907 () Bool)

(assert (=> setNonEmpty!10328 (= setRes!10328 (and tp!447907 (inv!21790 setElem!10328) e!987937))))

(declare-fun setRest!10328 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10328 (= (_1!9045 (_1!9046 (h!21921 (minValue!1914 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10328 true) setRest!10328))))

(assert (= (and b!1542612 condSetEmpty!10328) setIsEmpty!10328))

(assert (= (and b!1542612 (not condSetEmpty!10328)) setNonEmpty!10328))

(assert (= setNonEmpty!10328 b!1542613))

(assert (= (and b!1542429 ((_ is Cons!16520) (minValue!1914 (v!23332 (underlying!3523 (v!23333 (underlying!3524 (cache!1982 cacheFurthestNullable!81)))))))) b!1542612))

(declare-fun m!1815876 () Bool)

(assert (=> setNonEmpty!10328 m!1815876))

(declare-fun b!1542614 () Bool)

(declare-fun e!987940 () Bool)

(declare-fun tp!447913 () Bool)

(assert (=> b!1542614 (= e!987940 tp!447913)))

(declare-fun e!987938 () Bool)

(assert (=> b!1542418 (= tp!447755 e!987938)))

(declare-fun setElem!10329 () Context!1482)

(declare-fun tp!447909 () Bool)

(declare-fun setRes!10329 () Bool)

(declare-fun setNonEmpty!10329 () Bool)

(assert (=> setNonEmpty!10329 (= setRes!10329 (and tp!447909 (inv!21790 setElem!10329) e!987940))))

(declare-fun setRest!10329 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10329 (= (_2!9044 (h!21920 (zeroValue!1913 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10329 true) setRest!10329))))

(declare-fun setIsEmpty!10329 () Bool)

(assert (=> setIsEmpty!10329 setRes!10329))

(declare-fun tp!447912 () Bool)

(declare-fun tp!447911 () Bool)

(declare-fun e!987939 () Bool)

(declare-fun b!1542615 () Bool)

(assert (=> b!1542615 (= e!987938 (and tp!447911 (inv!21790 (_2!9043 (_1!9044 (h!21920 (zeroValue!1913 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708)))))))))) e!987939 tp_is_empty!7051 setRes!10329 tp!447912))))

(declare-fun condSetEmpty!10329 () Bool)

(assert (=> b!1542615 (= condSetEmpty!10329 (= (_2!9044 (h!21920 (zeroValue!1913 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708)))))))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542616 () Bool)

(declare-fun tp!447910 () Bool)

(assert (=> b!1542616 (= e!987939 tp!447910)))

(assert (= b!1542615 b!1542616))

(assert (= (and b!1542615 condSetEmpty!10329) setIsEmpty!10329))

(assert (= (and b!1542615 (not condSetEmpty!10329)) setNonEmpty!10329))

(assert (= setNonEmpty!10329 b!1542614))

(assert (= (and b!1542418 ((_ is Cons!16519) (zeroValue!1913 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708)))))))) b!1542615))

(declare-fun m!1815878 () Bool)

(assert (=> setNonEmpty!10329 m!1815878))

(declare-fun m!1815880 () Bool)

(assert (=> b!1542615 m!1815880))

(declare-fun b!1542617 () Bool)

(declare-fun e!987943 () Bool)

(declare-fun tp!447918 () Bool)

(assert (=> b!1542617 (= e!987943 tp!447918)))

(declare-fun e!987941 () Bool)

(assert (=> b!1542418 (= tp!447751 e!987941)))

(declare-fun tp!447914 () Bool)

(declare-fun setElem!10330 () Context!1482)

(declare-fun setNonEmpty!10330 () Bool)

(declare-fun setRes!10330 () Bool)

(assert (=> setNonEmpty!10330 (= setRes!10330 (and tp!447914 (inv!21790 setElem!10330) e!987943))))

(declare-fun setRest!10330 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10330 (= (_2!9044 (h!21920 (minValue!1913 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10330 true) setRest!10330))))

(declare-fun setIsEmpty!10330 () Bool)

(assert (=> setIsEmpty!10330 setRes!10330))

(declare-fun tp!447917 () Bool)

(declare-fun b!1542618 () Bool)

(declare-fun e!987942 () Bool)

(declare-fun tp!447916 () Bool)

(assert (=> b!1542618 (= e!987941 (and tp!447916 (inv!21790 (_2!9043 (_1!9044 (h!21920 (minValue!1913 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708)))))))))) e!987942 tp_is_empty!7051 setRes!10330 tp!447917))))

(declare-fun condSetEmpty!10330 () Bool)

(assert (=> b!1542618 (= condSetEmpty!10330 (= (_2!9044 (h!21920 (minValue!1913 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708)))))))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542619 () Bool)

(declare-fun tp!447915 () Bool)

(assert (=> b!1542619 (= e!987942 tp!447915)))

(assert (= b!1542618 b!1542619))

(assert (= (and b!1542618 condSetEmpty!10330) setIsEmpty!10330))

(assert (= (and b!1542618 (not condSetEmpty!10330)) setNonEmpty!10330))

(assert (= setNonEmpty!10330 b!1542617))

(assert (= (and b!1542418 ((_ is Cons!16519) (minValue!1913 (v!23330 (underlying!3521 (v!23331 (underlying!3522 (cache!1981 cacheDown!708)))))))) b!1542618))

(declare-fun m!1815882 () Bool)

(assert (=> setNonEmpty!10330 m!1815882))

(declare-fun m!1815884 () Bool)

(assert (=> b!1542618 m!1815884))

(declare-fun b!1542620 () Bool)

(declare-fun e!987946 () Bool)

(declare-fun tp!447923 () Bool)

(assert (=> b!1542620 (= e!987946 tp!447923)))

(declare-fun e!987944 () Bool)

(assert (=> b!1542446 (= tp!447747 e!987944)))

(declare-fun setElem!10331 () Context!1482)

(declare-fun setRes!10331 () Bool)

(declare-fun tp!447919 () Bool)

(declare-fun setNonEmpty!10331 () Bool)

(assert (=> setNonEmpty!10331 (= setRes!10331 (and tp!447919 (inv!21790 setElem!10331) e!987946))))

(declare-fun setRest!10331 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10331 (= (_2!9044 (h!21920 mapDefault!7772)) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10331 true) setRest!10331))))

(declare-fun setIsEmpty!10331 () Bool)

(assert (=> setIsEmpty!10331 setRes!10331))

(declare-fun b!1542621 () Bool)

(declare-fun e!987945 () Bool)

(declare-fun tp!447922 () Bool)

(declare-fun tp!447921 () Bool)

(assert (=> b!1542621 (= e!987944 (and tp!447921 (inv!21790 (_2!9043 (_1!9044 (h!21920 mapDefault!7772)))) e!987945 tp_is_empty!7051 setRes!10331 tp!447922))))

(declare-fun condSetEmpty!10331 () Bool)

(assert (=> b!1542621 (= condSetEmpty!10331 (= (_2!9044 (h!21920 mapDefault!7772)) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542622 () Bool)

(declare-fun tp!447920 () Bool)

(assert (=> b!1542622 (= e!987945 tp!447920)))

(assert (= b!1542621 b!1542622))

(assert (= (and b!1542621 condSetEmpty!10331) setIsEmpty!10331))

(assert (= (and b!1542621 (not condSetEmpty!10331)) setNonEmpty!10331))

(assert (= setNonEmpty!10331 b!1542620))

(assert (= (and b!1542446 ((_ is Cons!16519) mapDefault!7772)) b!1542621))

(declare-fun m!1815886 () Bool)

(assert (=> setNonEmpty!10331 m!1815886))

(declare-fun m!1815888 () Bool)

(assert (=> b!1542621 m!1815888))

(declare-fun b!1542623 () Bool)

(declare-fun tp!447924 () Bool)

(declare-fun tp!447925 () Bool)

(declare-fun e!987948 () Bool)

(assert (=> b!1542623 (= e!987948 (and (inv!21782 (left!13503 (c!251781 input!1460))) tp!447925 (inv!21782 (right!13833 (c!251781 input!1460))) tp!447924))))

(declare-fun b!1542625 () Bool)

(declare-fun e!987947 () Bool)

(declare-fun tp!447926 () Bool)

(assert (=> b!1542625 (= e!987947 tp!447926)))

(declare-fun b!1542624 () Bool)

(assert (=> b!1542624 (= e!987948 (and (inv!21791 (xs!8315 (c!251781 input!1460))) e!987947))))

(assert (=> b!1542416 (= tp!447756 (and (inv!21782 (c!251781 input!1460)) e!987948))))

(assert (= (and b!1542416 ((_ is Node!5515) (c!251781 input!1460))) b!1542623))

(assert (= b!1542624 b!1542625))

(assert (= (and b!1542416 ((_ is Leaf!8172) (c!251781 input!1460))) b!1542624))

(declare-fun m!1815890 () Bool)

(assert (=> b!1542623 m!1815890))

(declare-fun m!1815892 () Bool)

(assert (=> b!1542623 m!1815892))

(declare-fun m!1815894 () Bool)

(assert (=> b!1542624 m!1815894))

(assert (=> b!1542416 m!1815762))

(declare-fun setNonEmpty!10336 () Bool)

(declare-fun setRes!10337 () Bool)

(declare-fun tp!447943 () Bool)

(declare-fun setElem!10337 () Context!1482)

(declare-fun e!987958 () Bool)

(assert (=> setNonEmpty!10336 (= setRes!10337 (and tp!447943 (inv!21790 setElem!10337) e!987958))))

(declare-fun mapValue!7781 () List!16588)

(declare-fun setRest!10337 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10336 (= (_1!9045 (_1!9046 (h!21921 mapValue!7781))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10337 true) setRest!10337))))

(declare-fun setIsEmpty!10336 () Bool)

(assert (=> setIsEmpty!10336 setRes!10337))

(declare-fun b!1542636 () Bool)

(declare-fun e!987957 () Bool)

(declare-fun tp!447946 () Bool)

(assert (=> b!1542636 (= e!987957 tp!447946)))

(declare-fun b!1542637 () Bool)

(declare-fun e!987960 () Bool)

(declare-fun tp!447944 () Bool)

(assert (=> b!1542637 (= e!987960 (and setRes!10337 tp!447944))))

(declare-fun condSetEmpty!10337 () Bool)

(assert (=> b!1542637 (= condSetEmpty!10337 (= (_1!9045 (_1!9046 (h!21921 mapValue!7781))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542638 () Bool)

(declare-fun tp!447942 () Bool)

(assert (=> b!1542638 (= e!987958 tp!447942)))

(declare-fun tp!447941 () Bool)

(declare-fun setRes!10336 () Bool)

(declare-fun setNonEmpty!10337 () Bool)

(declare-fun setElem!10336 () Context!1482)

(assert (=> setNonEmpty!10337 (= setRes!10336 (and tp!447941 (inv!21790 setElem!10336) e!987957))))

(declare-fun mapDefault!7781 () List!16588)

(declare-fun setRest!10336 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10337 (= (_1!9045 (_1!9046 (h!21921 mapDefault!7781))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10336 true) setRest!10336))))

(declare-fun b!1542639 () Bool)

(declare-fun e!987959 () Bool)

(declare-fun tp!447945 () Bool)

(assert (=> b!1542639 (= e!987959 (and setRes!10336 tp!447945))))

(declare-fun condSetEmpty!10336 () Bool)

(assert (=> b!1542639 (= condSetEmpty!10336 (= (_1!9045 (_1!9046 (h!21921 mapDefault!7781))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun mapNonEmpty!7781 () Bool)

(declare-fun mapRes!7781 () Bool)

(declare-fun tp!447947 () Bool)

(assert (=> mapNonEmpty!7781 (= mapRes!7781 (and tp!447947 e!987960))))

(declare-fun mapKey!7781 () (_ BitVec 32))

(declare-fun mapRest!7781 () (Array (_ BitVec 32) List!16588))

(assert (=> mapNonEmpty!7781 (= mapRest!7770 (store mapRest!7781 mapKey!7781 mapValue!7781))))

(declare-fun condMapEmpty!7781 () Bool)

(assert (=> mapNonEmpty!7771 (= condMapEmpty!7781 (= mapRest!7770 ((as const (Array (_ BitVec 32) List!16588)) mapDefault!7781)))))

(assert (=> mapNonEmpty!7771 (= tp!447767 (and e!987959 mapRes!7781))))

(declare-fun setIsEmpty!10337 () Bool)

(assert (=> setIsEmpty!10337 setRes!10336))

(declare-fun mapIsEmpty!7781 () Bool)

(assert (=> mapIsEmpty!7781 mapRes!7781))

(assert (= (and mapNonEmpty!7771 condMapEmpty!7781) mapIsEmpty!7781))

(assert (= (and mapNonEmpty!7771 (not condMapEmpty!7781)) mapNonEmpty!7781))

(assert (= (and b!1542637 condSetEmpty!10337) setIsEmpty!10336))

(assert (= (and b!1542637 (not condSetEmpty!10337)) setNonEmpty!10336))

(assert (= setNonEmpty!10336 b!1542638))

(assert (= (and mapNonEmpty!7781 ((_ is Cons!16520) mapValue!7781)) b!1542637))

(assert (= (and b!1542639 condSetEmpty!10336) setIsEmpty!10337))

(assert (= (and b!1542639 (not condSetEmpty!10336)) setNonEmpty!10337))

(assert (= setNonEmpty!10337 b!1542636))

(assert (= (and mapNonEmpty!7771 ((_ is Cons!16520) mapDefault!7781)) b!1542639))

(declare-fun m!1815896 () Bool)

(assert (=> setNonEmpty!10336 m!1815896))

(declare-fun m!1815898 () Bool)

(assert (=> setNonEmpty!10337 m!1815898))

(declare-fun m!1815900 () Bool)

(assert (=> mapNonEmpty!7781 m!1815900))

(declare-fun setIsEmpty!10338 () Bool)

(declare-fun setRes!10338 () Bool)

(assert (=> setIsEmpty!10338 setRes!10338))

(declare-fun e!987961 () Bool)

(assert (=> mapNonEmpty!7771 (= tp!447745 e!987961)))

(declare-fun b!1542641 () Bool)

(declare-fun e!987962 () Bool)

(declare-fun tp!447948 () Bool)

(assert (=> b!1542641 (= e!987962 tp!447948)))

(declare-fun b!1542640 () Bool)

(declare-fun tp!447950 () Bool)

(assert (=> b!1542640 (= e!987961 (and setRes!10338 tp!447950))))

(declare-fun condSetEmpty!10338 () Bool)

(assert (=> b!1542640 (= condSetEmpty!10338 (= (_1!9045 (_1!9046 (h!21921 mapValue!7770))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun setNonEmpty!10338 () Bool)

(declare-fun tp!447949 () Bool)

(declare-fun setElem!10338 () Context!1482)

(assert (=> setNonEmpty!10338 (= setRes!10338 (and tp!447949 (inv!21790 setElem!10338) e!987962))))

(declare-fun setRest!10338 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10338 (= (_1!9045 (_1!9046 (h!21921 mapValue!7770))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10338 true) setRest!10338))))

(assert (= (and b!1542640 condSetEmpty!10338) setIsEmpty!10338))

(assert (= (and b!1542640 (not condSetEmpty!10338)) setNonEmpty!10338))

(assert (= setNonEmpty!10338 b!1542641))

(assert (= (and mapNonEmpty!7771 ((_ is Cons!16520) mapValue!7770)) b!1542640))

(declare-fun m!1815902 () Bool)

(assert (=> setNonEmpty!10338 m!1815902))

(declare-fun setIsEmpty!10339 () Bool)

(declare-fun setRes!10339 () Bool)

(assert (=> setIsEmpty!10339 setRes!10339))

(declare-fun setNonEmpty!10339 () Bool)

(declare-fun tp!447953 () Bool)

(declare-fun e!987963 () Bool)

(declare-fun setElem!10339 () Context!1482)

(assert (=> setNonEmpty!10339 (= setRes!10339 (and tp!447953 (inv!21790 setElem!10339) e!987963))))

(declare-fun setRest!10339 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10339 (= (_2!9048 (h!21924 mapDefault!7771)) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10339 true) setRest!10339))))

(declare-fun e!987965 () Bool)

(assert (=> b!1542426 (= tp!447766 e!987965)))

(declare-fun e!987964 () Bool)

(declare-fun b!1542642 () Bool)

(declare-fun tp!447954 () Bool)

(assert (=> b!1542642 (= e!987965 (and (inv!21790 (_1!9047 (_1!9048 (h!21924 mapDefault!7771)))) e!987964 tp_is_empty!7051 setRes!10339 tp!447954))))

(declare-fun condSetEmpty!10339 () Bool)

(assert (=> b!1542642 (= condSetEmpty!10339 (= (_2!9048 (h!21924 mapDefault!7771)) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542643 () Bool)

(declare-fun tp!447952 () Bool)

(assert (=> b!1542643 (= e!987963 tp!447952)))

(declare-fun b!1542644 () Bool)

(declare-fun tp!447951 () Bool)

(assert (=> b!1542644 (= e!987964 tp!447951)))

(assert (= b!1542642 b!1542644))

(assert (= (and b!1542642 condSetEmpty!10339) setIsEmpty!10339))

(assert (= (and b!1542642 (not condSetEmpty!10339)) setNonEmpty!10339))

(assert (= setNonEmpty!10339 b!1542643))

(assert (= (and b!1542426 ((_ is Cons!16523) mapDefault!7771)) b!1542642))

(declare-fun m!1815904 () Bool)

(assert (=> setNonEmpty!10339 m!1815904))

(declare-fun m!1815906 () Bool)

(assert (=> b!1542642 m!1815906))

(declare-fun setIsEmpty!10340 () Bool)

(declare-fun setRes!10340 () Bool)

(assert (=> setIsEmpty!10340 setRes!10340))

(declare-fun tp!447957 () Bool)

(declare-fun e!987966 () Bool)

(declare-fun setNonEmpty!10340 () Bool)

(declare-fun setElem!10340 () Context!1482)

(assert (=> setNonEmpty!10340 (= setRes!10340 (and tp!447957 (inv!21790 setElem!10340) e!987966))))

(declare-fun setRest!10340 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10340 (= (_2!9048 (h!21924 (zeroValue!1915 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10340 true) setRest!10340))))

(declare-fun e!987968 () Bool)

(assert (=> b!1542449 (= tp!447750 e!987968)))

(declare-fun tp!447958 () Bool)

(declare-fun e!987967 () Bool)

(declare-fun b!1542645 () Bool)

(assert (=> b!1542645 (= e!987968 (and (inv!21790 (_1!9047 (_1!9048 (h!21924 (zeroValue!1915 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695)))))))))) e!987967 tp_is_empty!7051 setRes!10340 tp!447958))))

(declare-fun condSetEmpty!10340 () Bool)

(assert (=> b!1542645 (= condSetEmpty!10340 (= (_2!9048 (h!21924 (zeroValue!1915 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695)))))))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542646 () Bool)

(declare-fun tp!447956 () Bool)

(assert (=> b!1542646 (= e!987966 tp!447956)))

(declare-fun b!1542647 () Bool)

(declare-fun tp!447955 () Bool)

(assert (=> b!1542647 (= e!987967 tp!447955)))

(assert (= b!1542645 b!1542647))

(assert (= (and b!1542645 condSetEmpty!10340) setIsEmpty!10340))

(assert (= (and b!1542645 (not condSetEmpty!10340)) setNonEmpty!10340))

(assert (= setNonEmpty!10340 b!1542646))

(assert (= (and b!1542449 ((_ is Cons!16523) (zeroValue!1915 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695)))))))) b!1542645))

(declare-fun m!1815908 () Bool)

(assert (=> setNonEmpty!10340 m!1815908))

(declare-fun m!1815910 () Bool)

(assert (=> b!1542645 m!1815910))

(declare-fun setIsEmpty!10341 () Bool)

(declare-fun setRes!10341 () Bool)

(assert (=> setIsEmpty!10341 setRes!10341))

(declare-fun setNonEmpty!10341 () Bool)

(declare-fun setElem!10341 () Context!1482)

(declare-fun tp!447961 () Bool)

(declare-fun e!987969 () Bool)

(assert (=> setNonEmpty!10341 (= setRes!10341 (and tp!447961 (inv!21790 setElem!10341) e!987969))))

(declare-fun setRest!10341 () (InoxSet Context!1482))

(assert (=> setNonEmpty!10341 (= (_2!9048 (h!21924 (minValue!1915 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1482 Bool)) false) setElem!10341 true) setRest!10341))))

(declare-fun e!987971 () Bool)

(assert (=> b!1542449 (= tp!447741 e!987971)))

(declare-fun e!987970 () Bool)

(declare-fun tp!447962 () Bool)

(declare-fun b!1542648 () Bool)

(assert (=> b!1542648 (= e!987971 (and (inv!21790 (_1!9047 (_1!9048 (h!21924 (minValue!1915 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695)))))))))) e!987970 tp_is_empty!7051 setRes!10341 tp!447962))))

(declare-fun condSetEmpty!10341 () Bool)

(assert (=> b!1542648 (= condSetEmpty!10341 (= (_2!9048 (h!21924 (minValue!1915 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695)))))))) ((as const (Array Context!1482 Bool)) false)))))

(declare-fun b!1542649 () Bool)

(declare-fun tp!447960 () Bool)

(assert (=> b!1542649 (= e!987969 tp!447960)))

(declare-fun b!1542650 () Bool)

(declare-fun tp!447959 () Bool)

(assert (=> b!1542650 (= e!987970 tp!447959)))

(assert (= b!1542648 b!1542650))

(assert (= (and b!1542648 condSetEmpty!10341) setIsEmpty!10341))

(assert (= (and b!1542648 (not condSetEmpty!10341)) setNonEmpty!10341))

(assert (= setNonEmpty!10341 b!1542649))

(assert (= (and b!1542449 ((_ is Cons!16523) (minValue!1915 (v!23334 (underlying!3525 (v!23335 (underlying!3526 (cache!1983 cacheUp!695)))))))) b!1542648))

(declare-fun m!1815912 () Bool)

(assert (=> setNonEmpty!10341 m!1815912))

(declare-fun m!1815914 () Bool)

(assert (=> b!1542648 m!1815914))

(check-sat (not b!1542516) (not d!458795) (not b!1542483) (not b!1542621) (not setNonEmpty!10329) (not b!1542562) (not d!458799) (not setNonEmpty!10327) (not setNonEmpty!10336) (not d!458783) (not b!1542420) (not b!1542480) (not b!1542515) (not b!1542499) (not b!1542650) (not b_next!41165) (not b!1542612) (not b!1542618) (not d!458809) (not b!1542625) (not b!1542619) (not setNonEmpty!10317) (not b!1542479) (not b!1542485) (not b!1542448) (not b!1542520) (not b_next!41175) (not b!1542550) (not b!1542643) (not b!1542474) (not d!458803) (not b!1542563) (not b!1542614) b_and!107351 (not setNonEmpty!10337) (not b!1542617) (not d!458779) (not b!1542646) (not setNonEmpty!10330) (not b!1542500) (not b_next!41173) (not b!1542517) (not b_next!41171) (not setNonEmpty!10341) (not b!1542488) (not b!1542642) (not b_next!41177) (not b!1542610) (not b!1542644) (not b!1542615) b_and!107339 (not d!458775) b_and!107335 (not setNonEmpty!10340) (not b!1542641) (not b!1542580) (not mapNonEmpty!7781) (not b_next!41169) (not b!1542552) (not b!1542540) (not setNonEmpty!10328) (not b!1542551) b_and!107333 (not b!1542462) (not b!1542608) (not b!1542620) (not b!1542459) (not setNonEmpty!10331) (not b!1542457) (not b!1542649) (not b!1542647) (not b_next!41161) (not b_next!41167) (not b!1542648) (not b!1542616) (not b!1542542) (not b!1542624) (not b!1542613) b_and!107345 (not b!1542645) (not setNonEmpty!10314) (not b!1542529) (not b!1542416) (not b!1542530) (not setNonEmpty!10311) (not b!1542519) (not b!1542584) (not b!1542622) (not b!1542636) (not setNonEmpty!10322) (not b!1542498) (not b!1542609) b_and!107349 (not mapNonEmpty!7775) (not b!1542623) b_and!107337 (not b!1542468) b_and!107343 (not b!1542531) (not b!1542553) (not d!458787) (not b!1542637) (not b!1542607) b_and!107347 (not setNonEmpty!10310) (not setNonEmpty!10326) (not setNonEmpty!10323) (not b!1542639) (not d!458797) (not b!1542518) (not setNonEmpty!10339) (not b!1542638) (not mapNonEmpty!7778) (not d!458765) (not b!1542582) (not b!1542579) (not d!458811) (not b!1542460) (not b!1542471) (not setNonEmpty!10338) (not b!1542465) (not d!458793) (not b!1542583) b_and!107341 (not b!1542611) (not b!1542549) (not b!1542595) (not b!1542581) (not b!1542593) (not b!1542541) (not b!1542640) (not b!1542594) (not b_next!41163) tp_is_empty!7051 (not b_next!41159))
(check-sat (not b_next!41165) (not b_next!41175) b_and!107351 (not b_next!41177) (not b_next!41169) b_and!107333 b_and!107345 b_and!107347 b_and!107341 (not b_next!41163) (not b_next!41159) (not b_next!41173) (not b_next!41171) b_and!107339 b_and!107335 (not b_next!41161) (not b_next!41167) b_and!107349 b_and!107337 b_and!107343)
