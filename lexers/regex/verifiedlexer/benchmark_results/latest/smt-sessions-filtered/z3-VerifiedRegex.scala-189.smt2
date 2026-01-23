; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2540 () Bool)

(assert start!2540)

(declare-fun b!42688 () Bool)

(declare-fun b_free!1005 () Bool)

(declare-fun b_next!1005 () Bool)

(assert (=> b!42688 (= b_free!1005 (not b_next!1005))))

(declare-fun tp!29424 () Bool)

(declare-fun b_and!1039 () Bool)

(assert (=> b!42688 (= tp!29424 b_and!1039)))

(declare-fun b!42692 () Bool)

(declare-fun b_free!1007 () Bool)

(declare-fun b_next!1007 () Bool)

(assert (=> b!42692 (= b_free!1007 (not b_next!1007))))

(declare-fun tp!29406 () Bool)

(declare-fun b_and!1041 () Bool)

(assert (=> b!42692 (= tp!29406 b_and!1041)))

(declare-fun b!42680 () Bool)

(declare-fun b_free!1009 () Bool)

(declare-fun b_next!1009 () Bool)

(assert (=> b!42680 (= b_free!1009 (not b_next!1009))))

(declare-fun tp!29425 () Bool)

(declare-fun b_and!1043 () Bool)

(assert (=> b!42680 (= tp!29425 b_and!1043)))

(declare-fun b!42704 () Bool)

(declare-fun b_free!1011 () Bool)

(declare-fun b_next!1011 () Bool)

(assert (=> b!42704 (= b_free!1011 (not b_next!1011))))

(declare-fun tp!29411 () Bool)

(declare-fun b_and!1045 () Bool)

(assert (=> b!42704 (= tp!29411 b_and!1045)))

(declare-fun b!42697 () Bool)

(declare-fun b_free!1013 () Bool)

(declare-fun b_next!1013 () Bool)

(assert (=> b!42697 (= b_free!1013 (not b_next!1013))))

(declare-fun tp!29420 () Bool)

(declare-fun b_and!1047 () Bool)

(assert (=> b!42697 (= tp!29420 b_and!1047)))

(declare-fun b!42690 () Bool)

(declare-fun b_free!1015 () Bool)

(declare-fun b_next!1015 () Bool)

(assert (=> b!42690 (= b_free!1015 (not b_next!1015))))

(declare-fun tp!29412 () Bool)

(declare-fun b_and!1049 () Bool)

(assert (=> b!42690 (= tp!29412 b_and!1049)))

(declare-datatypes ((List!644 0))(
  ( (Nil!642) (Cons!642 (h!6038 (_ BitVec 16)) (t!16221 List!644)) )
))
(declare-datatypes ((TokenValue!148 0))(
  ( (FloatLiteralValue!296 (text!1481 List!644)) (TokenValueExt!147 (__x!1112 Int)) (Broken!740 (value!7285 List!644)) (Object!149) (End!148) (Def!148) (Underscore!148) (Match!148) (Else!148) (Error!148) (Case!148) (If!148) (Extends!148) (Abstract!148) (Class!148) (Val!148) (DelimiterValue!296 (del!208 List!644)) (KeywordValue!154 (value!7286 List!644)) (CommentValue!296 (value!7287 List!644)) (WhitespaceValue!296 (value!7288 List!644)) (IndentationValue!148 (value!7289 List!644)) (String!1033) (Int32!148) (Broken!741 (value!7290 List!644)) (Boolean!149) (Unit!292) (OperatorValue!151 (op!208 List!644)) (IdentifierValue!296 (value!7291 List!644)) (IdentifierValue!297 (value!7292 List!644)) (WhitespaceValue!297 (value!7293 List!644)) (True!296) (False!296) (Broken!742 (value!7294 List!644)) (Broken!743 (value!7295 List!644)) (True!297) (RightBrace!148) (RightBracket!148) (Colon!148) (Null!148) (Comma!148) (LeftBracket!148) (False!297) (LeftBrace!148) (ImaginaryLiteralValue!148 (text!1482 List!644)) (StringLiteralValue!444 (value!7296 List!644)) (EOFValue!148 (value!7297 List!644)) (IdentValue!148 (value!7298 List!644)) (DelimiterValue!297 (value!7299 List!644)) (DedentValue!148 (value!7300 List!644)) (NewLineValue!148 (value!7301 List!644)) (IntegerValue!444 (value!7302 (_ BitVec 32)) (text!1483 List!644)) (IntegerValue!445 (value!7303 Int) (text!1484 List!644)) (Times!148) (Or!148) (Equal!148) (Minus!148) (Broken!744 (value!7304 List!644)) (And!148) (Div!148) (LessEqual!148) (Mod!148) (Concat!371) (Not!148) (Plus!148) (SpaceValue!148 (value!7305 List!644)) (IntegerValue!446 (value!7306 Int) (text!1485 List!644)) (StringLiteralValue!445 (text!1486 List!644)) (FloatLiteralValue!297 (text!1487 List!644)) (BytesLiteralValue!148 (value!7307 List!644)) (CommentValue!297 (value!7308 List!644)) (StringLiteralValue!446 (value!7309 List!644)) (ErrorTokenValue!148 (msg!209 List!644)) )
))
(declare-datatypes ((Regex!223 0))(
  ( (ElementMatch!223 (c!15939 (_ BitVec 16))) (Concat!372 (regOne!958 Regex!223) (regTwo!958 Regex!223)) (EmptyExpr!223) (Star!223 (reg!552 Regex!223)) (EmptyLang!223) (Union!223 (regOne!959 Regex!223) (regTwo!959 Regex!223)) )
))
(declare-datatypes ((String!1034 0))(
  ( (String!1035 (value!7310 String)) )
))
(declare-datatypes ((IArray!239 0))(
  ( (IArray!240 (innerList!177 List!644)) )
))
(declare-datatypes ((Conc!119 0))(
  ( (Node!119 (left!534 Conc!119) (right!864 Conc!119) (csize!468 Int) (cheight!330 Int)) (Leaf!309 (xs!2698 IArray!239) (csize!469 Int)) (Empty!119) )
))
(declare-datatypes ((BalanceConc!238 0))(
  ( (BalanceConc!239 (c!15940 Conc!119)) )
))
(declare-datatypes ((TokenValueInjection!120 0))(
  ( (TokenValueInjection!121 (toValue!637 Int) (toChars!496 Int)) )
))
(declare-datatypes ((Rule!116 0))(
  ( (Rule!117 (regex!158 Regex!223) (tag!336 String!1034) (isSeparator!158 Bool) (transformation!158 TokenValueInjection!120)) )
))
(declare-datatypes ((Token!82 0))(
  ( (Token!83 (value!7311 TokenValue!148) (rule!634 Rule!116) (size!643 Int) (originalCharacters!212 List!644)) )
))
(declare-datatypes ((List!645 0))(
  ( (Nil!643) (Cons!643 (h!6039 Token!82) (t!16222 List!645)) )
))
(declare-fun lt!4869 () List!645)

(declare-datatypes ((List!646 0))(
  ( (Nil!644) (Cons!644 (h!6040 Rule!116) (t!16223 List!646)) )
))
(declare-fun lt!4878 () List!646)

(declare-fun e!22979 () Bool)

(declare-fun lt!4873 () BalanceConc!238)

(declare-fun b!42673 () Bool)

(declare-datatypes ((IArray!241 0))(
  ( (IArray!242 (innerList!178 List!645)) )
))
(declare-datatypes ((Conc!120 0))(
  ( (Node!120 (left!535 Conc!120) (right!865 Conc!120) (csize!470 Int) (cheight!331 Int)) (Leaf!310 (xs!2699 IArray!241) (csize!471 Int)) (Empty!120) )
))
(declare-datatypes ((BalanceConc!240 0))(
  ( (BalanceConc!241 (c!15941 Conc!120)) )
))
(declare-fun list!166 (BalanceConc!240) List!645)

(declare-datatypes ((tuple2!754 0))(
  ( (tuple2!755 (_1!525 BalanceConc!240) (_2!525 BalanceConc!238)) )
))
(declare-datatypes ((LexerInterface!53 0))(
  ( (LexerInterfaceExt!50 (__x!1113 Int)) (Lexer!51) )
))
(declare-fun lex!27 (LexerInterface!53 List!646 BalanceConc!238) tuple2!754)

(assert (=> b!42673 (= e!22979 (not (= lt!4869 (list!166 (_1!525 (lex!27 Lexer!51 lt!4878 lt!4873))))))))

(declare-fun b!42674 () Bool)

(declare-fun e!22973 () Bool)

(declare-fun input!525 () BalanceConc!238)

(declare-fun tp!29413 () Bool)

(declare-fun inv!927 (Conc!119) Bool)

(assert (=> b!42674 (= e!22973 (and (inv!927 (c!15940 input!525)) tp!29413))))

(declare-fun b!42675 () Bool)

(declare-fun e!22994 () Bool)

(declare-fun e!22978 () Bool)

(assert (=> b!42675 (= e!22994 e!22978)))

(declare-fun b!42676 () Bool)

(declare-fun e!22976 () Bool)

(declare-fun e!22985 () Bool)

(assert (=> b!42676 (= e!22976 e!22985)))

(declare-fun b!42677 () Bool)

(declare-fun e!22990 () Bool)

(assert (=> b!42677 (= e!22990 e!22979)))

(declare-fun res!30002 () Bool)

(assert (=> b!42677 (=> (not res!30002) (not e!22979))))

(declare-fun lt!4879 () List!644)

(declare-fun list!167 (BalanceConc!238) List!644)

(assert (=> b!42677 (= res!30002 (= (list!167 lt!4873) lt!4879))))

(declare-fun seqFromList!23 (List!644) BalanceConc!238)

(assert (=> b!42677 (= lt!4873 (seqFromList!23 lt!4879))))

(assert (=> b!42677 (= lt!4879 (list!167 input!525))))

(declare-fun b!42678 () Bool)

(declare-fun res!29998 () Bool)

(declare-fun e!22995 () Bool)

(assert (=> b!42678 (=> (not res!29998) (not e!22995))))

(declare-datatypes ((List!647 0))(
  ( (Nil!645) (Cons!645 (h!6041 Regex!223) (t!16224 List!647)) )
))
(declare-datatypes ((Context!162 0))(
  ( (Context!163 (exprs!581 List!647)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!238 0))(
  ( (tuple3!239 (_1!526 (InoxSet Context!162)) (_2!526 Int) (_3!148 Int)) )
))
(declare-datatypes ((tuple2!756 0))(
  ( (tuple2!757 (_1!527 tuple3!238) (_2!527 Int)) )
))
(declare-datatypes ((List!648 0))(
  ( (Nil!646) (Cons!646 (h!6042 tuple2!756) (t!16225 List!648)) )
))
(declare-datatypes ((array!700 0))(
  ( (array!701 (arr!347 (Array (_ BitVec 32) (_ BitVec 64))) (size!644 (_ BitVec 32))) )
))
(declare-datatypes ((array!702 0))(
  ( (array!703 (arr!348 (Array (_ BitVec 32) List!648)) (size!645 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!424 0))(
  ( (LongMapFixedSize!425 (defaultEntry!550 Int) (mask!925 (_ BitVec 32)) (extraKeys!458 (_ BitVec 32)) (zeroValue!468 List!648) (minValue!468 List!648) (_size!556 (_ BitVec 32)) (_keys!503 array!700) (_values!490 array!702) (_vacant!272 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!208 0))(
  ( (HashableExt!207 (__x!1114 Int)) )
))
(declare-datatypes ((Cell!837 0))(
  ( (Cell!838 (v!12401 LongMapFixedSize!424)) )
))
(declare-datatypes ((MutLongMap!212 0))(
  ( (LongMap!212 (underlying!619 Cell!837)) (MutLongMapExt!211 (__x!1115 Int)) )
))
(declare-datatypes ((Cell!839 0))(
  ( (Cell!840 (v!12402 MutLongMap!212)) )
))
(declare-datatypes ((MutableMap!208 0))(
  ( (MutableMapExt!207 (__x!1116 Int)) (HashMap!208 (underlying!620 Cell!839) (hashF!2076 Hashable!208) (_size!557 (_ BitVec 32)) (defaultValue!357 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!90 0))(
  ( (CacheFurthestNullable!91 (cache!693 MutableMap!208) (totalInput!1525 BalanceConc!238)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!90)

(declare-fun valid!197 (CacheFurthestNullable!90) Bool)

(assert (=> b!42678 (= res!29998 (valid!197 cacheFurthestNullable!45))))

(declare-fun mapNonEmpty!781 () Bool)

(declare-fun mapRes!782 () Bool)

(declare-fun tp!29415 () Bool)

(declare-fun tp!29421 () Bool)

(assert (=> mapNonEmpty!781 (= mapRes!782 (and tp!29415 tp!29421))))

(declare-fun mapValue!781 () List!648)

(declare-fun mapKey!782 () (_ BitVec 32))

(declare-fun mapRest!781 () (Array (_ BitVec 32) List!648))

(assert (=> mapNonEmpty!781 (= (arr!348 (_values!490 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))) (store mapRest!781 mapKey!782 mapValue!781))))

(declare-fun b!42679 () Bool)

(declare-fun e!22984 () Bool)

(assert (=> b!42679 (= e!22984 e!22976)))

(declare-fun mapIsEmpty!781 () Bool)

(assert (=> mapIsEmpty!781 mapRes!782))

(declare-fun e!22987 () Bool)

(declare-fun e!22996 () Bool)

(assert (=> b!42680 (= e!22987 (and e!22996 tp!29425))))

(declare-fun b!42681 () Bool)

(declare-fun res!29995 () Bool)

(assert (=> b!42681 (=> (not res!29995) (not e!22995))))

(declare-fun rulesInvariant!44 (LexerInterface!53 List!646) Bool)

(assert (=> b!42681 (= res!29995 (rulesInvariant!44 Lexer!51 lt!4878))))

(declare-fun b!42682 () Bool)

(declare-fun e!22968 () Bool)

(declare-fun tp!29403 () Bool)

(assert (=> b!42682 (= e!22968 (and (inv!927 (c!15940 (totalInput!1525 cacheFurthestNullable!45))) tp!29403))))

(declare-fun b!42683 () Bool)

(declare-fun e!22981 () Bool)

(declare-fun e!22982 () Bool)

(assert (=> b!42683 (= e!22981 e!22982)))

(declare-fun b!42684 () Bool)

(declare-fun e!22991 () Bool)

(assert (=> b!42684 (= e!22982 e!22991)))

(declare-fun mapNonEmpty!782 () Bool)

(declare-fun mapRes!783 () Bool)

(declare-fun tp!29416 () Bool)

(declare-fun tp!29405 () Bool)

(assert (=> mapNonEmpty!782 (= mapRes!783 (and tp!29416 tp!29405))))

(declare-fun mapKey!783 () (_ BitVec 32))

(declare-datatypes ((tuple2!758 0))(
  ( (tuple2!759 (_1!528 Context!162) (_2!528 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!760 0))(
  ( (tuple2!761 (_1!529 tuple2!758) (_2!529 (InoxSet Context!162))) )
))
(declare-datatypes ((List!649 0))(
  ( (Nil!647) (Cons!647 (h!6043 tuple2!760) (t!16226 List!649)) )
))
(declare-fun mapRest!782 () (Array (_ BitVec 32) List!649))

(declare-fun mapValue!783 () List!649)

(declare-datatypes ((Hashable!209 0))(
  ( (HashableExt!208 (__x!1117 Int)) )
))
(declare-datatypes ((array!704 0))(
  ( (array!705 (arr!349 (Array (_ BitVec 32) List!649)) (size!646 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!426 0))(
  ( (LongMapFixedSize!427 (defaultEntry!551 Int) (mask!926 (_ BitVec 32)) (extraKeys!459 (_ BitVec 32)) (zeroValue!469 List!649) (minValue!469 List!649) (_size!558 (_ BitVec 32)) (_keys!504 array!700) (_values!491 array!704) (_vacant!273 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!841 0))(
  ( (Cell!842 (v!12403 LongMapFixedSize!426)) )
))
(declare-datatypes ((MutLongMap!213 0))(
  ( (LongMap!213 (underlying!621 Cell!841)) (MutLongMapExt!212 (__x!1118 Int)) )
))
(declare-datatypes ((Cell!843 0))(
  ( (Cell!844 (v!12404 MutLongMap!213)) )
))
(declare-datatypes ((MutableMap!209 0))(
  ( (MutableMapExt!208 (__x!1119 Int)) (HashMap!209 (underlying!622 Cell!843) (hashF!2077 Hashable!209) (_size!559 (_ BitVec 32)) (defaultValue!358 Int)) )
))
(declare-datatypes ((CacheUp!140 0))(
  ( (CacheUp!141 (cache!694 MutableMap!209)) )
))
(declare-fun cacheUp!320 () CacheUp!140)

(assert (=> mapNonEmpty!782 (= (arr!349 (_values!491 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))) (store mapRest!782 mapKey!783 mapValue!783))))

(declare-fun b!42686 () Bool)

(declare-fun e!22993 () Bool)

(assert (=> b!42686 (= e!22978 e!22993)))

(declare-fun b!42687 () Bool)

(declare-fun e!22989 () Bool)

(declare-fun lt!4870 () MutLongMap!212)

(get-info :version)

(assert (=> b!42687 (= e!22989 (and e!22984 ((_ is LongMap!212) lt!4870)))))

(assert (=> b!42687 (= lt!4870 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))

(declare-fun tp!29422 () Bool)

(declare-fun tp!29410 () Bool)

(declare-fun e!22971 () Bool)

(declare-fun array_inv!229 (array!700) Bool)

(declare-fun array_inv!230 (array!702) Bool)

(assert (=> b!42688 (= e!22985 (and tp!29424 tp!29422 tp!29410 (array_inv!229 (_keys!503 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))) (array_inv!230 (_values!490 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))) e!22971))))

(declare-fun b!42689 () Bool)

(declare-fun res!30001 () Bool)

(assert (=> b!42689 (=> (not res!30001) (not e!22995))))

(assert (=> b!42689 (= res!30001 (= (totalInput!1525 cacheFurthestNullable!45) input!525))))

(declare-fun mapNonEmpty!783 () Bool)

(declare-fun mapRes!781 () Bool)

(declare-fun tp!29407 () Bool)

(declare-fun tp!29418 () Bool)

(assert (=> mapNonEmpty!783 (= mapRes!781 (and tp!29407 tp!29418))))

(declare-datatypes ((tuple3!240 0))(
  ( (tuple3!241 (_1!530 Regex!223) (_2!530 Context!162) (_3!149 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!762 0))(
  ( (tuple2!763 (_1!531 tuple3!240) (_2!531 (InoxSet Context!162))) )
))
(declare-datatypes ((List!650 0))(
  ( (Nil!648) (Cons!648 (h!6044 tuple2!762) (t!16227 List!650)) )
))
(declare-fun mapValue!782 () List!650)

(declare-fun mapKey!781 () (_ BitVec 32))

(declare-datatypes ((array!706 0))(
  ( (array!707 (arr!350 (Array (_ BitVec 32) List!650)) (size!647 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!428 0))(
  ( (LongMapFixedSize!429 (defaultEntry!552 Int) (mask!927 (_ BitVec 32)) (extraKeys!460 (_ BitVec 32)) (zeroValue!470 List!650) (minValue!470 List!650) (_size!560 (_ BitVec 32)) (_keys!505 array!700) (_values!492 array!706) (_vacant!274 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!845 0))(
  ( (Cell!846 (v!12405 LongMapFixedSize!428)) )
))
(declare-datatypes ((MutLongMap!214 0))(
  ( (LongMap!214 (underlying!623 Cell!845)) (MutLongMapExt!213 (__x!1120 Int)) )
))
(declare-datatypes ((Cell!847 0))(
  ( (Cell!848 (v!12406 MutLongMap!214)) )
))
(declare-datatypes ((Hashable!210 0))(
  ( (HashableExt!209 (__x!1121 Int)) )
))
(declare-datatypes ((MutableMap!210 0))(
  ( (MutableMapExt!209 (__x!1122 Int)) (HashMap!210 (underlying!624 Cell!847) (hashF!2078 Hashable!210) (_size!561 (_ BitVec 32)) (defaultValue!359 Int)) )
))
(declare-datatypes ((CacheDown!142 0))(
  ( (CacheDown!143 (cache!695 MutableMap!210)) )
))
(declare-fun cacheDown!333 () CacheDown!142)

(declare-fun mapRest!783 () (Array (_ BitVec 32) List!650))

(assert (=> mapNonEmpty!783 (= (arr!350 (_values!492 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))) (store mapRest!783 mapKey!781 mapValue!782))))

(declare-fun tp!29404 () Bool)

(declare-fun e!22988 () Bool)

(declare-fun tp!29417 () Bool)

(declare-fun array_inv!231 (array!704) Bool)

(assert (=> b!42690 (= e!22991 (and tp!29412 tp!29417 tp!29404 (array_inv!229 (_keys!504 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))) (array_inv!231 (_values!491 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))) e!22988))))

(declare-fun b!42691 () Bool)

(declare-fun tp!29408 () Bool)

(assert (=> b!42691 (= e!22988 (and tp!29408 mapRes!783))))

(declare-fun condMapEmpty!782 () Bool)

(declare-fun mapDefault!781 () List!649)

(assert (=> b!42691 (= condMapEmpty!782 (= (arr!349 (_values!491 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!649)) mapDefault!781)))))

(declare-fun e!22972 () Bool)

(declare-fun tp!29423 () Bool)

(declare-fun tp!29414 () Bool)

(declare-fun array_inv!232 (array!706) Bool)

(assert (=> b!42692 (= e!22993 (and tp!29406 tp!29414 tp!29423 (array_inv!229 (_keys!505 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))) (array_inv!232 (_values!492 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))) e!22972))))

(declare-fun e!22986 () Bool)

(declare-fun e!22969 () Bool)

(declare-fun b!42693 () Bool)

(declare-fun inv!928 (BalanceConc!238) Bool)

(assert (=> b!42693 (= e!22969 (and e!22986 (inv!928 (totalInput!1525 cacheFurthestNullable!45)) e!22968))))

(declare-fun b!42694 () Bool)

(declare-fun e!22975 () Bool)

(assert (=> b!42694 (= e!22975 e!22987)))

(declare-fun b!42695 () Bool)

(declare-fun res!29997 () Bool)

(assert (=> b!42695 (=> (not res!29997) (not e!22990))))

(declare-datatypes ((tuple4!58 0))(
  ( (tuple4!59 (_1!532 tuple2!754) (_2!532 CacheUp!140) (_3!150 CacheDown!142) (_4!29 CacheFurthestNullable!90)) )
))
(declare-fun lt!4872 () tuple4!58)

(declare-fun lt!4875 () tuple2!754)

(assert (=> b!42695 (= res!29997 (= (list!167 (_2!525 (_1!532 lt!4872))) (list!167 (_2!525 lt!4875))))))

(declare-fun b!42696 () Bool)

(declare-fun tp!29419 () Bool)

(assert (=> b!42696 (= e!22971 (and tp!29419 mapRes!782))))

(declare-fun condMapEmpty!781 () Bool)

(declare-fun mapDefault!782 () List!648)

(assert (=> b!42696 (= condMapEmpty!781 (= (arr!348 (_values!490 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!648)) mapDefault!782)))))

(declare-fun mapIsEmpty!782 () Bool)

(assert (=> mapIsEmpty!782 mapRes!783))

(assert (=> b!42697 (= e!22986 (and e!22989 tp!29420))))

(declare-fun mapIsEmpty!783 () Bool)

(assert (=> mapIsEmpty!783 mapRes!781))

(declare-fun b!42698 () Bool)

(declare-fun e!22974 () Bool)

(declare-fun e!22992 () Bool)

(assert (=> b!42698 (= e!22974 e!22992)))

(declare-fun b!42699 () Bool)

(declare-fun tp!29409 () Bool)

(assert (=> b!42699 (= e!22972 (and tp!29409 mapRes!781))))

(declare-fun condMapEmpty!783 () Bool)

(declare-fun mapDefault!783 () List!650)

(assert (=> b!42699 (= condMapEmpty!783 (= (arr!350 (_values!492 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!650)) mapDefault!783)))))

(declare-fun b!42700 () Bool)

(declare-fun res!29999 () Bool)

(assert (=> b!42700 (=> (not res!29999) (not e!22995))))

(declare-fun valid!198 (CacheDown!142) Bool)

(assert (=> b!42700 (= res!29999 (valid!198 cacheDown!333))))

(declare-fun b!42701 () Bool)

(declare-fun e!22970 () Bool)

(declare-fun lt!4874 () MutLongMap!213)

(assert (=> b!42701 (= e!22970 (and e!22981 ((_ is LongMap!213) lt!4874)))))

(assert (=> b!42701 (= lt!4874 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))

(declare-fun b!42702 () Bool)

(declare-fun lt!4876 () MutLongMap!214)

(assert (=> b!42702 (= e!22996 (and e!22994 ((_ is LongMap!214) lt!4876)))))

(assert (=> b!42702 (= lt!4876 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))

(declare-fun b!42703 () Bool)

(assert (=> b!42703 (= e!22995 e!22990)))

(declare-fun res!29994 () Bool)

(assert (=> b!42703 (=> (not res!29994) (not e!22990))))

(declare-fun lt!4871 () List!645)

(assert (=> b!42703 (= res!29994 (= lt!4871 lt!4869))))

(assert (=> b!42703 (= lt!4869 (list!166 (_1!525 lt!4875)))))

(assert (=> b!42703 (= lt!4871 (list!166 (_1!525 (_1!532 lt!4872))))))

(assert (=> b!42703 (= lt!4875 (lex!27 Lexer!51 lt!4878 input!525))))

(declare-datatypes ((Unit!293 0))(
  ( (Unit!294) )
))
(declare-fun lt!4877 () Unit!293)

(declare-fun lemmaInvariant!45 (CacheDown!142) Unit!293)

(assert (=> b!42703 (= lt!4877 (lemmaInvariant!45 (_3!150 lt!4872)))))

(declare-fun lt!4868 () Unit!293)

(declare-fun lemmaInvariant!46 (CacheUp!140) Unit!293)

(assert (=> b!42703 (= lt!4868 (lemmaInvariant!46 (_2!532 lt!4872)))))

(declare-fun lexMem!21 (LexerInterface!53 List!646 BalanceConc!238 CacheUp!140 CacheDown!142 CacheFurthestNullable!90) tuple4!58)

(assert (=> b!42703 (= lt!4872 (lexMem!21 Lexer!51 lt!4878 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> b!42704 (= e!22992 (and e!22970 tp!29411))))

(declare-fun res!30000 () Bool)

(assert (=> start!2540 (=> (not res!30000) (not e!22995))))

(declare-fun isEmpty!130 (List!646) Bool)

(assert (=> start!2540 (= res!30000 (not (isEmpty!130 lt!4878)))))

(declare-datatypes ((JsonLexer!66 0))(
  ( (JsonLexer!67) )
))
(declare-fun rules!109 (JsonLexer!66) List!646)

(assert (=> start!2540 (= lt!4878 (rules!109 JsonLexer!67))))

(assert (=> start!2540 e!22995))

(declare-fun inv!929 (CacheDown!142) Bool)

(assert (=> start!2540 (and (inv!929 cacheDown!333) e!22975)))

(assert (=> start!2540 (and (inv!928 input!525) e!22973)))

(declare-fun inv!930 (CacheFurthestNullable!90) Bool)

(assert (=> start!2540 (and (inv!930 cacheFurthestNullable!45) e!22969)))

(declare-fun inv!931 (CacheUp!140) Bool)

(assert (=> start!2540 (and (inv!931 cacheUp!320) e!22974)))

(declare-fun b!42685 () Bool)

(declare-fun res!29996 () Bool)

(assert (=> b!42685 (=> (not res!29996) (not e!22995))))

(declare-fun valid!199 (CacheUp!140) Bool)

(assert (=> b!42685 (= res!29996 (valid!199 cacheUp!320))))

(assert (= (and start!2540 res!30000) b!42681))

(assert (= (and b!42681 res!29995) b!42685))

(assert (= (and b!42685 res!29996) b!42700))

(assert (= (and b!42700 res!29999) b!42678))

(assert (= (and b!42678 res!29998) b!42689))

(assert (= (and b!42689 res!30001) b!42703))

(assert (= (and b!42703 res!29994) b!42695))

(assert (= (and b!42695 res!29997) b!42677))

(assert (= (and b!42677 res!30002) b!42673))

(assert (= (and b!42699 condMapEmpty!783) mapIsEmpty!783))

(assert (= (and b!42699 (not condMapEmpty!783)) mapNonEmpty!783))

(assert (= b!42692 b!42699))

(assert (= b!42686 b!42692))

(assert (= b!42675 b!42686))

(assert (= (and b!42702 ((_ is LongMap!214) (v!12406 (underlying!624 (cache!695 cacheDown!333))))) b!42675))

(assert (= b!42680 b!42702))

(assert (= (and b!42694 ((_ is HashMap!210) (cache!695 cacheDown!333))) b!42680))

(assert (= start!2540 b!42694))

(assert (= start!2540 b!42674))

(assert (= (and b!42696 condMapEmpty!781) mapIsEmpty!781))

(assert (= (and b!42696 (not condMapEmpty!781)) mapNonEmpty!781))

(assert (= b!42688 b!42696))

(assert (= b!42676 b!42688))

(assert (= b!42679 b!42676))

(assert (= (and b!42687 ((_ is LongMap!212) (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))) b!42679))

(assert (= b!42697 b!42687))

(assert (= (and b!42693 ((_ is HashMap!208) (cache!693 cacheFurthestNullable!45))) b!42697))

(assert (= b!42693 b!42682))

(assert (= start!2540 b!42693))

(assert (= (and b!42691 condMapEmpty!782) mapIsEmpty!782))

(assert (= (and b!42691 (not condMapEmpty!782)) mapNonEmpty!782))

(assert (= b!42690 b!42691))

(assert (= b!42684 b!42690))

(assert (= b!42683 b!42684))

(assert (= (and b!42701 ((_ is LongMap!213) (v!12404 (underlying!622 (cache!694 cacheUp!320))))) b!42683))

(assert (= b!42704 b!42701))

(assert (= (and b!42698 ((_ is HashMap!209) (cache!694 cacheUp!320))) b!42704))

(assert (= start!2540 b!42698))

(declare-fun m!16365 () Bool)

(assert (=> b!42693 m!16365))

(declare-fun m!16367 () Bool)

(assert (=> b!42685 m!16367))

(declare-fun m!16369 () Bool)

(assert (=> b!42673 m!16369))

(declare-fun m!16371 () Bool)

(assert (=> b!42673 m!16371))

(declare-fun m!16373 () Bool)

(assert (=> b!42674 m!16373))

(declare-fun m!16375 () Bool)

(assert (=> mapNonEmpty!781 m!16375))

(declare-fun m!16377 () Bool)

(assert (=> b!42681 m!16377))

(declare-fun m!16379 () Bool)

(assert (=> b!42690 m!16379))

(declare-fun m!16381 () Bool)

(assert (=> b!42690 m!16381))

(declare-fun m!16383 () Bool)

(assert (=> b!42677 m!16383))

(declare-fun m!16385 () Bool)

(assert (=> b!42677 m!16385))

(declare-fun m!16387 () Bool)

(assert (=> b!42677 m!16387))

(declare-fun m!16389 () Bool)

(assert (=> mapNonEmpty!783 m!16389))

(declare-fun m!16391 () Bool)

(assert (=> start!2540 m!16391))

(declare-fun m!16393 () Bool)

(assert (=> start!2540 m!16393))

(declare-fun m!16395 () Bool)

(assert (=> start!2540 m!16395))

(declare-fun m!16397 () Bool)

(assert (=> start!2540 m!16397))

(declare-fun m!16399 () Bool)

(assert (=> start!2540 m!16399))

(declare-fun m!16401 () Bool)

(assert (=> start!2540 m!16401))

(declare-fun m!16403 () Bool)

(assert (=> b!42695 m!16403))

(declare-fun m!16405 () Bool)

(assert (=> b!42695 m!16405))

(declare-fun m!16407 () Bool)

(assert (=> b!42678 m!16407))

(declare-fun m!16409 () Bool)

(assert (=> b!42703 m!16409))

(declare-fun m!16411 () Bool)

(assert (=> b!42703 m!16411))

(declare-fun m!16413 () Bool)

(assert (=> b!42703 m!16413))

(declare-fun m!16415 () Bool)

(assert (=> b!42703 m!16415))

(declare-fun m!16417 () Bool)

(assert (=> b!42703 m!16417))

(declare-fun m!16419 () Bool)

(assert (=> b!42703 m!16419))

(declare-fun m!16421 () Bool)

(assert (=> b!42692 m!16421))

(declare-fun m!16423 () Bool)

(assert (=> b!42692 m!16423))

(declare-fun m!16425 () Bool)

(assert (=> b!42700 m!16425))

(declare-fun m!16427 () Bool)

(assert (=> b!42682 m!16427))

(declare-fun m!16429 () Bool)

(assert (=> mapNonEmpty!782 m!16429))

(declare-fun m!16431 () Bool)

(assert (=> b!42688 m!16431))

(declare-fun m!16433 () Bool)

(assert (=> b!42688 m!16433))

(check-sat (not b!42700) (not b!42688) (not b!42695) (not mapNonEmpty!781) (not b!42678) (not b!42674) b_and!1041 (not b!42681) (not b_next!1005) (not b!42682) (not b!42690) (not b_next!1007) (not b!42677) (not b_next!1009) (not b!42685) (not b!42692) (not b!42703) (not b!42699) (not b_next!1011) b_and!1049 b_and!1045 (not b!42696) b_and!1047 (not mapNonEmpty!782) b_and!1043 (not mapNonEmpty!783) (not b!42693) b_and!1039 (not start!2540) (not b_next!1013) (not b_next!1015) (not b!42691) (not b!42673))
(check-sat (not b_next!1007) (not b_next!1009) b_and!1045 b_and!1041 b_and!1047 (not b_next!1005) b_and!1043 b_and!1039 (not b_next!1013) (not b_next!1015) (not b_next!1011) b_and!1049)
(get-model)

(declare-fun d!4590 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!66) Rule!116)

(declare-fun integerLiteralRule!0 (JsonLexer!66) Rule!116)

(declare-fun floatLiteralRule!0 (JsonLexer!66) Rule!116)

(declare-fun trueRule!0 (JsonLexer!66) Rule!116)

(declare-fun falseRule!0 (JsonLexer!66) Rule!116)

(declare-fun nullRule!0 (JsonLexer!66) Rule!116)

(declare-fun jsonstringRule!0 (JsonLexer!66) Rule!116)

(declare-fun lBraceRule!0 (JsonLexer!66) Rule!116)

(declare-fun rBraceRule!0 (JsonLexer!66) Rule!116)

(declare-fun lBracketRule!0 (JsonLexer!66) Rule!116)

(declare-fun rBracketRule!0 (JsonLexer!66) Rule!116)

(declare-fun colonRule!0 (JsonLexer!66) Rule!116)

(declare-fun commaRule!0 (JsonLexer!66) Rule!116)

(declare-fun eofRule!0 (JsonLexer!66) Rule!116)

(assert (=> d!4590 (= (rules!109 JsonLexer!67) (Cons!644 (whitespaceRule!0 JsonLexer!67) (Cons!644 (integerLiteralRule!0 JsonLexer!67) (Cons!644 (floatLiteralRule!0 JsonLexer!67) (Cons!644 (trueRule!0 JsonLexer!67) (Cons!644 (falseRule!0 JsonLexer!67) (Cons!644 (nullRule!0 JsonLexer!67) (Cons!644 (jsonstringRule!0 JsonLexer!67) (Cons!644 (lBraceRule!0 JsonLexer!67) (Cons!644 (rBraceRule!0 JsonLexer!67) (Cons!644 (lBracketRule!0 JsonLexer!67) (Cons!644 (rBracketRule!0 JsonLexer!67) (Cons!644 (colonRule!0 JsonLexer!67) (Cons!644 (commaRule!0 JsonLexer!67) (Cons!644 (eofRule!0 JsonLexer!67) Nil!644)))))))))))))))))

(declare-fun bs!5621 () Bool)

(assert (= bs!5621 d!4590))

(declare-fun m!16435 () Bool)

(assert (=> bs!5621 m!16435))

(declare-fun m!16437 () Bool)

(assert (=> bs!5621 m!16437))

(declare-fun m!16439 () Bool)

(assert (=> bs!5621 m!16439))

(declare-fun m!16441 () Bool)

(assert (=> bs!5621 m!16441))

(declare-fun m!16443 () Bool)

(assert (=> bs!5621 m!16443))

(declare-fun m!16445 () Bool)

(assert (=> bs!5621 m!16445))

(declare-fun m!16447 () Bool)

(assert (=> bs!5621 m!16447))

(declare-fun m!16449 () Bool)

(assert (=> bs!5621 m!16449))

(declare-fun m!16451 () Bool)

(assert (=> bs!5621 m!16451))

(declare-fun m!16453 () Bool)

(assert (=> bs!5621 m!16453))

(declare-fun m!16455 () Bool)

(assert (=> bs!5621 m!16455))

(declare-fun m!16457 () Bool)

(assert (=> bs!5621 m!16457))

(declare-fun m!16459 () Bool)

(assert (=> bs!5621 m!16459))

(declare-fun m!16461 () Bool)

(assert (=> bs!5621 m!16461))

(assert (=> start!2540 d!4590))

(declare-fun d!4592 () Bool)

(declare-fun res!30007 () Bool)

(declare-fun e!22999 () Bool)

(assert (=> d!4592 (=> (not res!30007) (not e!22999))))

(assert (=> d!4592 (= res!30007 ((_ is HashMap!210) (cache!695 cacheDown!333)))))

(assert (=> d!4592 (= (inv!929 cacheDown!333) e!22999)))

(declare-fun b!42707 () Bool)

(declare-fun validCacheMapDown!17 (MutableMap!210) Bool)

(assert (=> b!42707 (= e!22999 (validCacheMapDown!17 (cache!695 cacheDown!333)))))

(assert (= (and d!4592 res!30007) b!42707))

(declare-fun m!16463 () Bool)

(assert (=> b!42707 m!16463))

(assert (=> start!2540 d!4592))

(declare-fun d!4594 () Bool)

(declare-fun isBalanced!20 (Conc!119) Bool)

(assert (=> d!4594 (= (inv!928 input!525) (isBalanced!20 (c!15940 input!525)))))

(declare-fun bs!5622 () Bool)

(assert (= bs!5622 d!4594))

(declare-fun m!16465 () Bool)

(assert (=> bs!5622 m!16465))

(assert (=> start!2540 d!4594))

(declare-fun d!4596 () Bool)

(assert (=> d!4596 (= (isEmpty!130 lt!4878) ((_ is Nil!644) lt!4878))))

(assert (=> start!2540 d!4596))

(declare-fun d!4598 () Bool)

(declare-fun res!30010 () Bool)

(declare-fun e!23002 () Bool)

(assert (=> d!4598 (=> (not res!30010) (not e!23002))))

(assert (=> d!4598 (= res!30010 ((_ is HashMap!208) (cache!693 cacheFurthestNullable!45)))))

(assert (=> d!4598 (= (inv!930 cacheFurthestNullable!45) e!23002)))

(declare-fun b!42710 () Bool)

(declare-fun validCacheMapFurthestNullable!9 (MutableMap!208 BalanceConc!238) Bool)

(assert (=> b!42710 (= e!23002 (validCacheMapFurthestNullable!9 (cache!693 cacheFurthestNullable!45) (totalInput!1525 cacheFurthestNullable!45)))))

(assert (= (and d!4598 res!30010) b!42710))

(declare-fun m!16467 () Bool)

(assert (=> b!42710 m!16467))

(assert (=> start!2540 d!4598))

(declare-fun d!4600 () Bool)

(declare-fun res!30013 () Bool)

(declare-fun e!23005 () Bool)

(assert (=> d!4600 (=> (not res!30013) (not e!23005))))

(assert (=> d!4600 (= res!30013 ((_ is HashMap!209) (cache!694 cacheUp!320)))))

(assert (=> d!4600 (= (inv!931 cacheUp!320) e!23005)))

(declare-fun b!42713 () Bool)

(declare-fun validCacheMapUp!15 (MutableMap!209) Bool)

(assert (=> b!42713 (= e!23005 (validCacheMapUp!15 (cache!694 cacheUp!320)))))

(assert (= (and d!4600 res!30013) b!42713))

(declare-fun m!16469 () Bool)

(assert (=> b!42713 m!16469))

(assert (=> start!2540 d!4600))

(declare-fun d!4602 () Bool)

(assert (=> d!4602 (= (array_inv!229 (_keys!503 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))) (bvsge (size!644 (_keys!503 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!42688 d!4602))

(declare-fun d!4604 () Bool)

(assert (=> d!4604 (= (array_inv!230 (_values!490 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))) (bvsge (size!645 (_values!490 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!42688 d!4604))

(declare-fun d!4606 () Bool)

(declare-fun c!15944 () Bool)

(assert (=> d!4606 (= c!15944 ((_ is Node!119) (c!15940 (totalInput!1525 cacheFurthestNullable!45))))))

(declare-fun e!23010 () Bool)

(assert (=> d!4606 (= (inv!927 (c!15940 (totalInput!1525 cacheFurthestNullable!45))) e!23010)))

(declare-fun b!42720 () Bool)

(declare-fun inv!932 (Conc!119) Bool)

(assert (=> b!42720 (= e!23010 (inv!932 (c!15940 (totalInput!1525 cacheFurthestNullable!45))))))

(declare-fun b!42721 () Bool)

(declare-fun e!23011 () Bool)

(assert (=> b!42721 (= e!23010 e!23011)))

(declare-fun res!30016 () Bool)

(assert (=> b!42721 (= res!30016 (not ((_ is Leaf!309) (c!15940 (totalInput!1525 cacheFurthestNullable!45)))))))

(assert (=> b!42721 (=> res!30016 e!23011)))

(declare-fun b!42722 () Bool)

(declare-fun inv!933 (Conc!119) Bool)

(assert (=> b!42722 (= e!23011 (inv!933 (c!15940 (totalInput!1525 cacheFurthestNullable!45))))))

(assert (= (and d!4606 c!15944) b!42720))

(assert (= (and d!4606 (not c!15944)) b!42721))

(assert (= (and b!42721 (not res!30016)) b!42722))

(declare-fun m!16471 () Bool)

(assert (=> b!42720 m!16471))

(declare-fun m!16473 () Bool)

(assert (=> b!42722 m!16473))

(assert (=> b!42682 d!4606))

(declare-fun d!4608 () Bool)

(assert (=> d!4608 (= (array_inv!229 (_keys!504 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))) (bvsge (size!644 (_keys!504 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!42690 d!4608))

(declare-fun d!4610 () Bool)

(assert (=> d!4610 (= (array_inv!231 (_values!491 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))) (bvsge (size!646 (_values!491 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!42690 d!4610))

(declare-fun d!4612 () Bool)

(declare-fun list!168 (Conc!120) List!645)

(assert (=> d!4612 (= (list!166 (_1!525 (lex!27 Lexer!51 lt!4878 lt!4873))) (list!168 (c!15941 (_1!525 (lex!27 Lexer!51 lt!4878 lt!4873)))))))

(declare-fun bs!5623 () Bool)

(assert (= bs!5623 d!4612))

(declare-fun m!16475 () Bool)

(assert (=> bs!5623 m!16475))

(assert (=> b!42673 d!4612))

(declare-fun b!42733 () Bool)

(declare-fun e!23018 () Bool)

(declare-fun lt!4882 () tuple2!754)

(declare-fun isEmpty!131 (BalanceConc!240) Bool)

(assert (=> b!42733 (= e!23018 (not (isEmpty!131 (_1!525 lt!4882))))))

(declare-fun b!42734 () Bool)

(declare-fun res!30024 () Bool)

(declare-fun e!23020 () Bool)

(assert (=> b!42734 (=> (not res!30024) (not e!23020))))

(declare-datatypes ((tuple2!764 0))(
  ( (tuple2!765 (_1!533 List!645) (_2!533 List!644)) )
))
(declare-fun lexList!10 (LexerInterface!53 List!646 List!644) tuple2!764)

(assert (=> b!42734 (= res!30024 (= (list!166 (_1!525 lt!4882)) (_1!533 (lexList!10 Lexer!51 lt!4878 (list!167 lt!4873)))))))

(declare-fun b!42735 () Bool)

(declare-fun e!23019 () Bool)

(assert (=> b!42735 (= e!23019 (= (_2!525 lt!4882) lt!4873))))

(declare-fun b!42736 () Bool)

(assert (=> b!42736 (= e!23020 (= (list!167 (_2!525 lt!4882)) (_2!533 (lexList!10 Lexer!51 lt!4878 (list!167 lt!4873)))))))

(declare-fun b!42737 () Bool)

(assert (=> b!42737 (= e!23019 e!23018)))

(declare-fun res!30023 () Bool)

(declare-fun size!648 (BalanceConc!238) Int)

(assert (=> b!42737 (= res!30023 (< (size!648 (_2!525 lt!4882)) (size!648 lt!4873)))))

(assert (=> b!42737 (=> (not res!30023) (not e!23018))))

(declare-fun d!4614 () Bool)

(assert (=> d!4614 e!23020))

(declare-fun res!30025 () Bool)

(assert (=> d!4614 (=> (not res!30025) (not e!23020))))

(assert (=> d!4614 (= res!30025 e!23019)))

(declare-fun c!15947 () Bool)

(declare-fun size!649 (BalanceConc!240) Int)

(assert (=> d!4614 (= c!15947 (> (size!649 (_1!525 lt!4882)) 0))))

(declare-fun lexTailRecV2!7 (LexerInterface!53 List!646 BalanceConc!238 BalanceConc!238 BalanceConc!238 BalanceConc!240) tuple2!754)

(assert (=> d!4614 (= lt!4882 (lexTailRecV2!7 Lexer!51 lt!4878 lt!4873 (BalanceConc!239 Empty!119) lt!4873 (BalanceConc!241 Empty!120)))))

(assert (=> d!4614 (= (lex!27 Lexer!51 lt!4878 lt!4873) lt!4882)))

(assert (= (and d!4614 c!15947) b!42737))

(assert (= (and d!4614 (not c!15947)) b!42735))

(assert (= (and b!42737 res!30023) b!42733))

(assert (= (and d!4614 res!30025) b!42734))

(assert (= (and b!42734 res!30024) b!42736))

(declare-fun m!16477 () Bool)

(assert (=> b!42736 m!16477))

(assert (=> b!42736 m!16383))

(assert (=> b!42736 m!16383))

(declare-fun m!16479 () Bool)

(assert (=> b!42736 m!16479))

(declare-fun m!16481 () Bool)

(assert (=> b!42737 m!16481))

(declare-fun m!16483 () Bool)

(assert (=> b!42737 m!16483))

(declare-fun m!16485 () Bool)

(assert (=> b!42734 m!16485))

(assert (=> b!42734 m!16383))

(assert (=> b!42734 m!16383))

(assert (=> b!42734 m!16479))

(declare-fun m!16487 () Bool)

(assert (=> b!42733 m!16487))

(declare-fun m!16489 () Bool)

(assert (=> d!4614 m!16489))

(declare-fun m!16491 () Bool)

(assert (=> d!4614 m!16491))

(assert (=> b!42673 d!4614))

(declare-fun d!4616 () Bool)

(declare-fun res!30028 () Bool)

(declare-fun e!23023 () Bool)

(assert (=> d!4616 (=> (not res!30028) (not e!23023))))

(declare-fun rulesValid!13 (LexerInterface!53 List!646) Bool)

(assert (=> d!4616 (= res!30028 (rulesValid!13 Lexer!51 lt!4878))))

(assert (=> d!4616 (= (rulesInvariant!44 Lexer!51 lt!4878) e!23023)))

(declare-fun b!42740 () Bool)

(declare-datatypes ((List!651 0))(
  ( (Nil!649) (Cons!649 (h!6045 String!1034) (t!16228 List!651)) )
))
(declare-fun noDuplicateTag!13 (LexerInterface!53 List!646 List!651) Bool)

(assert (=> b!42740 (= e!23023 (noDuplicateTag!13 Lexer!51 lt!4878 Nil!649))))

(assert (= (and d!4616 res!30028) b!42740))

(declare-fun m!16493 () Bool)

(assert (=> d!4616 m!16493))

(declare-fun m!16495 () Bool)

(assert (=> b!42740 m!16495))

(assert (=> b!42681 d!4616))

(declare-fun d!4618 () Bool)

(assert (=> d!4618 (= (valid!199 cacheUp!320) (validCacheMapUp!15 (cache!694 cacheUp!320)))))

(declare-fun bs!5624 () Bool)

(assert (= bs!5624 d!4618))

(assert (=> bs!5624 m!16469))

(assert (=> b!42685 d!4618))

(declare-fun d!4620 () Bool)

(assert (=> d!4620 (= (inv!928 (totalInput!1525 cacheFurthestNullable!45)) (isBalanced!20 (c!15940 (totalInput!1525 cacheFurthestNullable!45))))))

(declare-fun bs!5625 () Bool)

(assert (= bs!5625 d!4620))

(declare-fun m!16497 () Bool)

(assert (=> bs!5625 m!16497))

(assert (=> b!42693 d!4620))

(declare-fun d!4622 () Bool)

(assert (=> d!4622 (= (array_inv!229 (_keys!505 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))) (bvsge (size!644 (_keys!505 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!42692 d!4622))

(declare-fun d!4624 () Bool)

(assert (=> d!4624 (= (array_inv!232 (_values!492 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))) (bvsge (size!647 (_values!492 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!42692 d!4624))

(declare-fun d!4626 () Bool)

(assert (=> d!4626 (= (valid!198 cacheDown!333) (validCacheMapDown!17 (cache!695 cacheDown!333)))))

(declare-fun bs!5626 () Bool)

(assert (= bs!5626 d!4626))

(assert (=> bs!5626 m!16463))

(assert (=> b!42700 d!4626))

(declare-fun d!4628 () Bool)

(declare-fun c!15948 () Bool)

(assert (=> d!4628 (= c!15948 ((_ is Node!119) (c!15940 input!525)))))

(declare-fun e!23024 () Bool)

(assert (=> d!4628 (= (inv!927 (c!15940 input!525)) e!23024)))

(declare-fun b!42741 () Bool)

(assert (=> b!42741 (= e!23024 (inv!932 (c!15940 input!525)))))

(declare-fun b!42742 () Bool)

(declare-fun e!23025 () Bool)

(assert (=> b!42742 (= e!23024 e!23025)))

(declare-fun res!30029 () Bool)

(assert (=> b!42742 (= res!30029 (not ((_ is Leaf!309) (c!15940 input!525))))))

(assert (=> b!42742 (=> res!30029 e!23025)))

(declare-fun b!42743 () Bool)

(assert (=> b!42743 (= e!23025 (inv!933 (c!15940 input!525)))))

(assert (= (and d!4628 c!15948) b!42741))

(assert (= (and d!4628 (not c!15948)) b!42742))

(assert (= (and b!42742 (not res!30029)) b!42743))

(declare-fun m!16499 () Bool)

(assert (=> b!42741 m!16499))

(declare-fun m!16501 () Bool)

(assert (=> b!42743 m!16501))

(assert (=> b!42674 d!4628))

(declare-fun d!4630 () Bool)

(assert (=> d!4630 (= (valid!197 cacheFurthestNullable!45) (validCacheMapFurthestNullable!9 (cache!693 cacheFurthestNullable!45) (totalInput!1525 cacheFurthestNullable!45)))))

(declare-fun bs!5627 () Bool)

(assert (= bs!5627 d!4630))

(assert (=> bs!5627 m!16467))

(assert (=> b!42678 d!4630))

(declare-fun d!4632 () Bool)

(declare-fun list!169 (Conc!119) List!644)

(assert (=> d!4632 (= (list!167 (_2!525 (_1!532 lt!4872))) (list!169 (c!15940 (_2!525 (_1!532 lt!4872)))))))

(declare-fun bs!5628 () Bool)

(assert (= bs!5628 d!4632))

(declare-fun m!16503 () Bool)

(assert (=> bs!5628 m!16503))

(assert (=> b!42695 d!4632))

(declare-fun d!4634 () Bool)

(assert (=> d!4634 (= (list!167 (_2!525 lt!4875)) (list!169 (c!15940 (_2!525 lt!4875))))))

(declare-fun bs!5629 () Bool)

(assert (= bs!5629 d!4634))

(declare-fun m!16505 () Bool)

(assert (=> bs!5629 m!16505))

(assert (=> b!42695 d!4634))

(declare-fun b!42754 () Bool)

(declare-fun res!30040 () Bool)

(declare-fun e!23028 () Bool)

(assert (=> b!42754 (=> (not res!30040) (not e!23028))))

(declare-fun lt!4888 () tuple4!58)

(assert (=> b!42754 (= res!30040 (valid!197 (_4!29 lt!4888)))))

(declare-fun b!42755 () Bool)

(declare-fun res!30044 () Bool)

(assert (=> b!42755 (=> (not res!30044) (not e!23028))))

(assert (=> b!42755 (= res!30044 (= (list!167 (_2!525 (_1!532 lt!4888))) (list!167 (_2!525 (lex!27 Lexer!51 lt!4878 input!525)))))))

(declare-fun d!4636 () Bool)

(assert (=> d!4636 e!23028))

(declare-fun res!30042 () Bool)

(assert (=> d!4636 (=> (not res!30042) (not e!23028))))

(assert (=> d!4636 (= res!30042 (= (list!166 (_1!525 (_1!532 lt!4888))) (list!166 (_1!525 (lex!27 Lexer!51 lt!4878 input!525)))))))

(declare-fun lt!4887 () tuple4!58)

(assert (=> d!4636 (= lt!4888 (tuple4!59 (_1!532 lt!4887) (_2!532 lt!4887) (_3!150 lt!4887) (_4!29 lt!4887)))))

(declare-fun lexTailRecV3Mem!7 (LexerInterface!53 List!646 BalanceConc!238 BalanceConc!238 BalanceConc!238 BalanceConc!240 CacheUp!140 CacheDown!142 CacheFurthestNullable!90) tuple4!58)

(assert (=> d!4636 (= lt!4887 (lexTailRecV3Mem!7 Lexer!51 lt!4878 input!525 (BalanceConc!239 Empty!119) input!525 (BalanceConc!241 Empty!120) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4636 (not (isEmpty!130 lt!4878))))

(assert (=> d!4636 (= (lexMem!21 Lexer!51 lt!4878 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!4888)))

(declare-fun b!42756 () Bool)

(declare-fun res!30043 () Bool)

(assert (=> b!42756 (=> (not res!30043) (not e!23028))))

(assert (=> b!42756 (= res!30043 (valid!199 (_2!532 lt!4888)))))

(declare-fun b!42757 () Bool)

(assert (=> b!42757 (= e!23028 (= (totalInput!1525 (_4!29 lt!4888)) input!525))))

(declare-fun b!42758 () Bool)

(declare-fun res!30041 () Bool)

(assert (=> b!42758 (=> (not res!30041) (not e!23028))))

(assert (=> b!42758 (= res!30041 (valid!198 (_3!150 lt!4888)))))

(assert (= (and d!4636 res!30042) b!42755))

(assert (= (and b!42755 res!30044) b!42754))

(assert (= (and b!42754 res!30040) b!42756))

(assert (= (and b!42756 res!30043) b!42758))

(assert (= (and b!42758 res!30041) b!42757))

(declare-fun m!16507 () Bool)

(assert (=> b!42758 m!16507))

(declare-fun m!16509 () Bool)

(assert (=> b!42755 m!16509))

(assert (=> b!42755 m!16417))

(declare-fun m!16511 () Bool)

(assert (=> b!42755 m!16511))

(declare-fun m!16513 () Bool)

(assert (=> b!42756 m!16513))

(declare-fun m!16515 () Bool)

(assert (=> b!42754 m!16515))

(declare-fun m!16517 () Bool)

(assert (=> d!4636 m!16517))

(assert (=> d!4636 m!16417))

(declare-fun m!16519 () Bool)

(assert (=> d!4636 m!16519))

(assert (=> d!4636 m!16401))

(declare-fun m!16521 () Bool)

(assert (=> d!4636 m!16521))

(assert (=> b!42703 d!4636))

(declare-fun d!4638 () Bool)

(assert (=> d!4638 (valid!199 (_2!532 lt!4872))))

(declare-fun Unit!295 () Unit!293)

(assert (=> d!4638 (= (lemmaInvariant!46 (_2!532 lt!4872)) Unit!295)))

(declare-fun bs!5630 () Bool)

(assert (= bs!5630 d!4638))

(declare-fun m!16523 () Bool)

(assert (=> bs!5630 m!16523))

(assert (=> b!42703 d!4638))

(declare-fun d!4640 () Bool)

(assert (=> d!4640 (= (list!166 (_1!525 lt!4875)) (list!168 (c!15941 (_1!525 lt!4875))))))

(declare-fun bs!5631 () Bool)

(assert (= bs!5631 d!4640))

(declare-fun m!16525 () Bool)

(assert (=> bs!5631 m!16525))

(assert (=> b!42703 d!4640))

(declare-fun b!42759 () Bool)

(declare-fun e!23029 () Bool)

(declare-fun lt!4889 () tuple2!754)

(assert (=> b!42759 (= e!23029 (not (isEmpty!131 (_1!525 lt!4889))))))

(declare-fun b!42760 () Bool)

(declare-fun res!30046 () Bool)

(declare-fun e!23031 () Bool)

(assert (=> b!42760 (=> (not res!30046) (not e!23031))))

(assert (=> b!42760 (= res!30046 (= (list!166 (_1!525 lt!4889)) (_1!533 (lexList!10 Lexer!51 lt!4878 (list!167 input!525)))))))

(declare-fun b!42761 () Bool)

(declare-fun e!23030 () Bool)

(assert (=> b!42761 (= e!23030 (= (_2!525 lt!4889) input!525))))

(declare-fun b!42762 () Bool)

(assert (=> b!42762 (= e!23031 (= (list!167 (_2!525 lt!4889)) (_2!533 (lexList!10 Lexer!51 lt!4878 (list!167 input!525)))))))

(declare-fun b!42763 () Bool)

(assert (=> b!42763 (= e!23030 e!23029)))

(declare-fun res!30045 () Bool)

(assert (=> b!42763 (= res!30045 (< (size!648 (_2!525 lt!4889)) (size!648 input!525)))))

(assert (=> b!42763 (=> (not res!30045) (not e!23029))))

(declare-fun d!4642 () Bool)

(assert (=> d!4642 e!23031))

(declare-fun res!30047 () Bool)

(assert (=> d!4642 (=> (not res!30047) (not e!23031))))

(assert (=> d!4642 (= res!30047 e!23030)))

(declare-fun c!15949 () Bool)

(assert (=> d!4642 (= c!15949 (> (size!649 (_1!525 lt!4889)) 0))))

(assert (=> d!4642 (= lt!4889 (lexTailRecV2!7 Lexer!51 lt!4878 input!525 (BalanceConc!239 Empty!119) input!525 (BalanceConc!241 Empty!120)))))

(assert (=> d!4642 (= (lex!27 Lexer!51 lt!4878 input!525) lt!4889)))

(assert (= (and d!4642 c!15949) b!42763))

(assert (= (and d!4642 (not c!15949)) b!42761))

(assert (= (and b!42763 res!30045) b!42759))

(assert (= (and d!4642 res!30047) b!42760))

(assert (= (and b!42760 res!30046) b!42762))

(declare-fun m!16527 () Bool)

(assert (=> b!42762 m!16527))

(assert (=> b!42762 m!16387))

(assert (=> b!42762 m!16387))

(declare-fun m!16529 () Bool)

(assert (=> b!42762 m!16529))

(declare-fun m!16531 () Bool)

(assert (=> b!42763 m!16531))

(declare-fun m!16533 () Bool)

(assert (=> b!42763 m!16533))

(declare-fun m!16535 () Bool)

(assert (=> b!42760 m!16535))

(assert (=> b!42760 m!16387))

(assert (=> b!42760 m!16387))

(assert (=> b!42760 m!16529))

(declare-fun m!16537 () Bool)

(assert (=> b!42759 m!16537))

(declare-fun m!16539 () Bool)

(assert (=> d!4642 m!16539))

(declare-fun m!16541 () Bool)

(assert (=> d!4642 m!16541))

(assert (=> b!42703 d!4642))

(declare-fun d!4644 () Bool)

(assert (=> d!4644 (valid!198 (_3!150 lt!4872))))

(declare-fun Unit!296 () Unit!293)

(assert (=> d!4644 (= (lemmaInvariant!45 (_3!150 lt!4872)) Unit!296)))

(declare-fun bs!5632 () Bool)

(assert (= bs!5632 d!4644))

(declare-fun m!16543 () Bool)

(assert (=> bs!5632 m!16543))

(assert (=> b!42703 d!4644))

(declare-fun d!4646 () Bool)

(assert (=> d!4646 (= (list!166 (_1!525 (_1!532 lt!4872))) (list!168 (c!15941 (_1!525 (_1!532 lt!4872)))))))

(declare-fun bs!5633 () Bool)

(assert (= bs!5633 d!4646))

(declare-fun m!16545 () Bool)

(assert (=> bs!5633 m!16545))

(assert (=> b!42703 d!4646))

(declare-fun d!4648 () Bool)

(assert (=> d!4648 (= (list!167 lt!4873) (list!169 (c!15940 lt!4873)))))

(declare-fun bs!5634 () Bool)

(assert (= bs!5634 d!4648))

(declare-fun m!16547 () Bool)

(assert (=> bs!5634 m!16547))

(assert (=> b!42677 d!4648))

(declare-fun d!4650 () Bool)

(declare-fun fromListB!5 (List!644) BalanceConc!238)

(assert (=> d!4650 (= (seqFromList!23 lt!4879) (fromListB!5 lt!4879))))

(declare-fun bs!5635 () Bool)

(assert (= bs!5635 d!4650))

(declare-fun m!16549 () Bool)

(assert (=> bs!5635 m!16549))

(assert (=> b!42677 d!4650))

(declare-fun d!4652 () Bool)

(assert (=> d!4652 (= (list!167 input!525) (list!169 (c!15940 input!525)))))

(declare-fun bs!5636 () Bool)

(assert (= bs!5636 d!4652))

(declare-fun m!16551 () Bool)

(assert (=> bs!5636 m!16551))

(assert (=> b!42677 d!4652))

(declare-fun b!42768 () Bool)

(declare-fun e!23037 () Bool)

(declare-fun setRes!846 () Bool)

(declare-fun tp!29430 () Bool)

(assert (=> b!42768 (= e!23037 (and setRes!846 tp!29430))))

(declare-fun condSetEmpty!846 () Bool)

(assert (=> b!42768 (= condSetEmpty!846 (= (_1!526 (_1!527 (h!6042 (zeroValue!468 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!846 () Bool)

(assert (=> setIsEmpty!846 setRes!846))

(declare-fun setNonEmpty!846 () Bool)

(declare-fun tp!29431 () Bool)

(declare-fun setElem!846 () Context!162)

(declare-fun inv!934 (Context!162) Bool)

(assert (=> setNonEmpty!846 (= setRes!846 (and tp!29431 (inv!934 setElem!846)))))

(declare-fun setRest!846 () (InoxSet Context!162))

(assert (=> setNonEmpty!846 (= (_1!526 (_1!527 (h!6042 (zeroValue!468 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!846 true) setRest!846))))

(assert (=> b!42688 (= tp!29422 e!23037)))

(assert (= (and b!42768 condSetEmpty!846) setIsEmpty!846))

(assert (= (and b!42768 (not condSetEmpty!846)) setNonEmpty!846))

(assert (= (and b!42688 ((_ is Cons!646) (zeroValue!468 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45)))))))) b!42768))

(declare-fun m!16553 () Bool)

(assert (=> setNonEmpty!846 m!16553))

(declare-fun b!42769 () Bool)

(declare-fun e!23039 () Bool)

(declare-fun setRes!847 () Bool)

(declare-fun tp!29432 () Bool)

(assert (=> b!42769 (= e!23039 (and setRes!847 tp!29432))))

(declare-fun condSetEmpty!847 () Bool)

(assert (=> b!42769 (= condSetEmpty!847 (= (_1!526 (_1!527 (h!6042 (minValue!468 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!847 () Bool)

(assert (=> setIsEmpty!847 setRes!847))

(declare-fun setNonEmpty!847 () Bool)

(declare-fun tp!29433 () Bool)

(declare-fun setElem!847 () Context!162)

(assert (=> setNonEmpty!847 (= setRes!847 (and tp!29433 (inv!934 setElem!847)))))

(declare-fun setRest!847 () (InoxSet Context!162))

(assert (=> setNonEmpty!847 (= (_1!526 (_1!527 (h!6042 (minValue!468 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!847 true) setRest!847))))

(assert (=> b!42688 (= tp!29410 e!23039)))

(assert (= (and b!42769 condSetEmpty!847) setIsEmpty!847))

(assert (= (and b!42769 (not condSetEmpty!847)) setNonEmpty!847))

(assert (= (and b!42688 ((_ is Cons!646) (minValue!468 (v!12401 (underlying!619 (v!12402 (underlying!620 (cache!693 cacheFurthestNullable!45)))))))) b!42769))

(declare-fun m!16555 () Bool)

(assert (=> setNonEmpty!847 m!16555))

(declare-fun tp!29439 () Bool)

(declare-fun e!23044 () Bool)

(declare-fun tp!29438 () Bool)

(declare-fun b!42776 () Bool)

(assert (=> b!42776 (= e!23044 (and (inv!927 (left!534 (c!15940 (totalInput!1525 cacheFurthestNullable!45)))) tp!29438 (inv!927 (right!864 (c!15940 (totalInput!1525 cacheFurthestNullable!45)))) tp!29439))))

(declare-fun b!42777 () Bool)

(declare-fun inv!935 (IArray!239) Bool)

(assert (=> b!42777 (= e!23044 (inv!935 (xs!2698 (c!15940 (totalInput!1525 cacheFurthestNullable!45)))))))

(assert (=> b!42682 (= tp!29403 (and (inv!927 (c!15940 (totalInput!1525 cacheFurthestNullable!45))) e!23044))))

(assert (= (and b!42682 ((_ is Node!119) (c!15940 (totalInput!1525 cacheFurthestNullable!45)))) b!42776))

(assert (= (and b!42682 ((_ is Leaf!309) (c!15940 (totalInput!1525 cacheFurthestNullable!45)))) b!42777))

(declare-fun m!16557 () Bool)

(assert (=> b!42776 m!16557))

(declare-fun m!16559 () Bool)

(assert (=> b!42776 m!16559))

(declare-fun m!16561 () Bool)

(assert (=> b!42777 m!16561))

(assert (=> b!42682 m!16427))

(declare-fun setRes!850 () Bool)

(declare-fun e!23053 () Bool)

(declare-fun b!42782 () Bool)

(declare-fun tp!29445 () Bool)

(assert (=> b!42782 (= e!23053 (and (inv!934 (_1!528 (_1!529 (h!6043 mapDefault!781)))) setRes!850 tp!29445))))

(declare-fun condSetEmpty!850 () Bool)

(assert (=> b!42782 (= condSetEmpty!850 (= (_2!529 (h!6043 mapDefault!781)) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!850 () Bool)

(assert (=> setIsEmpty!850 setRes!850))

(declare-fun setNonEmpty!850 () Bool)

(declare-fun tp!29444 () Bool)

(declare-fun setElem!850 () Context!162)

(assert (=> setNonEmpty!850 (= setRes!850 (and tp!29444 (inv!934 setElem!850)))))

(declare-fun setRest!850 () (InoxSet Context!162))

(assert (=> setNonEmpty!850 (= (_2!529 (h!6043 mapDefault!781)) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!850 true) setRest!850))))

(assert (=> b!42691 (= tp!29408 e!23053)))

(assert (= (and b!42782 condSetEmpty!850) setIsEmpty!850))

(assert (= (and b!42782 (not condSetEmpty!850)) setNonEmpty!850))

(assert (= (and b!42691 ((_ is Cons!647) mapDefault!781)) b!42782))

(declare-fun m!16563 () Bool)

(assert (=> b!42782 m!16563))

(declare-fun m!16565 () Bool)

(assert (=> setNonEmpty!850 m!16565))

(declare-fun setRes!851 () Bool)

(declare-fun tp!29447 () Bool)

(declare-fun b!42783 () Bool)

(declare-fun e!23056 () Bool)

(assert (=> b!42783 (= e!23056 (and (inv!934 (_1!528 (_1!529 (h!6043 (zeroValue!469 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320)))))))))) setRes!851 tp!29447))))

(declare-fun condSetEmpty!851 () Bool)

(assert (=> b!42783 (= condSetEmpty!851 (= (_2!529 (h!6043 (zeroValue!469 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320)))))))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!851 () Bool)

(assert (=> setIsEmpty!851 setRes!851))

(declare-fun setNonEmpty!851 () Bool)

(declare-fun tp!29446 () Bool)

(declare-fun setElem!851 () Context!162)

(assert (=> setNonEmpty!851 (= setRes!851 (and tp!29446 (inv!934 setElem!851)))))

(declare-fun setRest!851 () (InoxSet Context!162))

(assert (=> setNonEmpty!851 (= (_2!529 (h!6043 (zeroValue!469 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!851 true) setRest!851))))

(assert (=> b!42690 (= tp!29417 e!23056)))

(assert (= (and b!42783 condSetEmpty!851) setIsEmpty!851))

(assert (= (and b!42783 (not condSetEmpty!851)) setNonEmpty!851))

(assert (= (and b!42690 ((_ is Cons!647) (zeroValue!469 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320)))))))) b!42783))

(declare-fun m!16567 () Bool)

(assert (=> b!42783 m!16567))

(declare-fun m!16569 () Bool)

(assert (=> setNonEmpty!851 m!16569))

(declare-fun tp!29449 () Bool)

(declare-fun setRes!852 () Bool)

(declare-fun e!23059 () Bool)

(declare-fun b!42784 () Bool)

(assert (=> b!42784 (= e!23059 (and (inv!934 (_1!528 (_1!529 (h!6043 (minValue!469 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320)))))))))) setRes!852 tp!29449))))

(declare-fun condSetEmpty!852 () Bool)

(assert (=> b!42784 (= condSetEmpty!852 (= (_2!529 (h!6043 (minValue!469 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320)))))))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!852 () Bool)

(assert (=> setIsEmpty!852 setRes!852))

(declare-fun setNonEmpty!852 () Bool)

(declare-fun tp!29448 () Bool)

(declare-fun setElem!852 () Context!162)

(assert (=> setNonEmpty!852 (= setRes!852 (and tp!29448 (inv!934 setElem!852)))))

(declare-fun setRest!852 () (InoxSet Context!162))

(assert (=> setNonEmpty!852 (= (_2!529 (h!6043 (minValue!469 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!852 true) setRest!852))))

(assert (=> b!42690 (= tp!29404 e!23059)))

(assert (= (and b!42784 condSetEmpty!852) setIsEmpty!852))

(assert (= (and b!42784 (not condSetEmpty!852)) setNonEmpty!852))

(assert (= (and b!42690 ((_ is Cons!647) (minValue!469 (v!12403 (underlying!621 (v!12404 (underlying!622 (cache!694 cacheUp!320)))))))) b!42784))

(declare-fun m!16571 () Bool)

(assert (=> b!42784 m!16571))

(declare-fun m!16573 () Bool)

(assert (=> setNonEmpty!852 m!16573))

(declare-fun setRes!855 () Bool)

(declare-fun e!23069 () Bool)

(declare-fun tp!29455 () Bool)

(declare-fun b!42789 () Bool)

(assert (=> b!42789 (= e!23069 (and (inv!934 (_2!530 (_1!531 (h!6044 mapDefault!783)))) setRes!855 tp!29455))))

(declare-fun condSetEmpty!855 () Bool)

(assert (=> b!42789 (= condSetEmpty!855 (= (_2!531 (h!6044 mapDefault!783)) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!855 () Bool)

(assert (=> setIsEmpty!855 setRes!855))

(declare-fun setNonEmpty!855 () Bool)

(declare-fun tp!29454 () Bool)

(declare-fun setElem!855 () Context!162)

(assert (=> setNonEmpty!855 (= setRes!855 (and tp!29454 (inv!934 setElem!855)))))

(declare-fun setRest!855 () (InoxSet Context!162))

(assert (=> setNonEmpty!855 (= (_2!531 (h!6044 mapDefault!783)) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!855 true) setRest!855))))

(assert (=> b!42699 (= tp!29409 e!23069)))

(assert (= (and b!42789 condSetEmpty!855) setIsEmpty!855))

(assert (= (and b!42789 (not condSetEmpty!855)) setNonEmpty!855))

(assert (= (and b!42699 ((_ is Cons!648) mapDefault!783)) b!42789))

(declare-fun m!16575 () Bool)

(assert (=> b!42789 m!16575))

(declare-fun m!16577 () Bool)

(assert (=> setNonEmpty!855 m!16577))

(declare-fun setIsEmpty!860 () Bool)

(declare-fun setRes!861 () Bool)

(assert (=> setIsEmpty!860 setRes!861))

(declare-fun b!42796 () Bool)

(declare-fun e!23082 () Bool)

(declare-fun setRes!860 () Bool)

(declare-fun mapDefault!786 () List!650)

(declare-fun tp!29469 () Bool)

(assert (=> b!42796 (= e!23082 (and (inv!934 (_2!530 (_1!531 (h!6044 mapDefault!786)))) setRes!860 tp!29469))))

(declare-fun condSetEmpty!861 () Bool)

(assert (=> b!42796 (= condSetEmpty!861 (= (_2!531 (h!6044 mapDefault!786)) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setNonEmpty!860 () Bool)

(declare-fun tp!29470 () Bool)

(declare-fun setElem!860 () Context!162)

(assert (=> setNonEmpty!860 (= setRes!860 (and tp!29470 (inv!934 setElem!860)))))

(declare-fun setRest!860 () (InoxSet Context!162))

(assert (=> setNonEmpty!860 (= (_2!531 (h!6044 mapDefault!786)) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!860 true) setRest!860))))

(declare-fun setNonEmpty!861 () Bool)

(declare-fun tp!29467 () Bool)

(declare-fun setElem!861 () Context!162)

(assert (=> setNonEmpty!861 (= setRes!861 (and tp!29467 (inv!934 setElem!861)))))

(declare-fun mapValue!786 () List!650)

(declare-fun setRest!861 () (InoxSet Context!162))

(assert (=> setNonEmpty!861 (= (_2!531 (h!6044 mapValue!786)) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!861 true) setRest!861))))

(declare-fun mapIsEmpty!786 () Bool)

(declare-fun mapRes!786 () Bool)

(assert (=> mapIsEmpty!786 mapRes!786))

(declare-fun setIsEmpty!861 () Bool)

(assert (=> setIsEmpty!861 setRes!860))

(declare-fun condMapEmpty!786 () Bool)

(assert (=> mapNonEmpty!783 (= condMapEmpty!786 (= mapRest!783 ((as const (Array (_ BitVec 32) List!650)) mapDefault!786)))))

(assert (=> mapNonEmpty!783 (= tp!29407 (and e!23082 mapRes!786))))

(declare-fun tp!29466 () Bool)

(declare-fun b!42797 () Bool)

(declare-fun e!23083 () Bool)

(assert (=> b!42797 (= e!23083 (and (inv!934 (_2!530 (_1!531 (h!6044 mapValue!786)))) setRes!861 tp!29466))))

(declare-fun condSetEmpty!860 () Bool)

(assert (=> b!42797 (= condSetEmpty!860 (= (_2!531 (h!6044 mapValue!786)) ((as const (Array Context!162 Bool)) false)))))

(declare-fun mapNonEmpty!786 () Bool)

(declare-fun tp!29468 () Bool)

(assert (=> mapNonEmpty!786 (= mapRes!786 (and tp!29468 e!23083))))

(declare-fun mapKey!786 () (_ BitVec 32))

(declare-fun mapRest!786 () (Array (_ BitVec 32) List!650))

(assert (=> mapNonEmpty!786 (= mapRest!783 (store mapRest!786 mapKey!786 mapValue!786))))

(assert (= (and mapNonEmpty!783 condMapEmpty!786) mapIsEmpty!786))

(assert (= (and mapNonEmpty!783 (not condMapEmpty!786)) mapNonEmpty!786))

(assert (= (and b!42797 condSetEmpty!860) setIsEmpty!860))

(assert (= (and b!42797 (not condSetEmpty!860)) setNonEmpty!861))

(assert (= (and mapNonEmpty!786 ((_ is Cons!648) mapValue!786)) b!42797))

(assert (= (and b!42796 condSetEmpty!861) setIsEmpty!861))

(assert (= (and b!42796 (not condSetEmpty!861)) setNonEmpty!860))

(assert (= (and mapNonEmpty!783 ((_ is Cons!648) mapDefault!786)) b!42796))

(declare-fun m!16579 () Bool)

(assert (=> mapNonEmpty!786 m!16579))

(declare-fun m!16581 () Bool)

(assert (=> setNonEmpty!861 m!16581))

(declare-fun m!16583 () Bool)

(assert (=> setNonEmpty!860 m!16583))

(declare-fun m!16585 () Bool)

(assert (=> b!42797 m!16585))

(declare-fun m!16587 () Bool)

(assert (=> b!42796 m!16587))

(declare-fun b!42798 () Bool)

(declare-fun e!23090 () Bool)

(declare-fun tp!29472 () Bool)

(declare-fun setRes!862 () Bool)

(assert (=> b!42798 (= e!23090 (and (inv!934 (_2!530 (_1!531 (h!6044 mapValue!782)))) setRes!862 tp!29472))))

(declare-fun condSetEmpty!862 () Bool)

(assert (=> b!42798 (= condSetEmpty!862 (= (_2!531 (h!6044 mapValue!782)) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!862 () Bool)

(assert (=> setIsEmpty!862 setRes!862))

(declare-fun setNonEmpty!862 () Bool)

(declare-fun tp!29471 () Bool)

(declare-fun setElem!862 () Context!162)

(assert (=> setNonEmpty!862 (= setRes!862 (and tp!29471 (inv!934 setElem!862)))))

(declare-fun setRest!862 () (InoxSet Context!162))

(assert (=> setNonEmpty!862 (= (_2!531 (h!6044 mapValue!782)) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!862 true) setRest!862))))

(assert (=> mapNonEmpty!783 (= tp!29418 e!23090)))

(assert (= (and b!42798 condSetEmpty!862) setIsEmpty!862))

(assert (= (and b!42798 (not condSetEmpty!862)) setNonEmpty!862))

(assert (= (and mapNonEmpty!783 ((_ is Cons!648) mapValue!782)) b!42798))

(declare-fun m!16589 () Bool)

(assert (=> b!42798 m!16589))

(declare-fun m!16591 () Bool)

(assert (=> setNonEmpty!862 m!16591))

(declare-fun setRes!863 () Bool)

(declare-fun e!23093 () Bool)

(declare-fun b!42799 () Bool)

(declare-fun tp!29474 () Bool)

(assert (=> b!42799 (= e!23093 (and (inv!934 (_2!530 (_1!531 (h!6044 (zeroValue!470 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333)))))))))) setRes!863 tp!29474))))

(declare-fun condSetEmpty!863 () Bool)

(assert (=> b!42799 (= condSetEmpty!863 (= (_2!531 (h!6044 (zeroValue!470 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333)))))))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!863 () Bool)

(assert (=> setIsEmpty!863 setRes!863))

(declare-fun setNonEmpty!863 () Bool)

(declare-fun tp!29473 () Bool)

(declare-fun setElem!863 () Context!162)

(assert (=> setNonEmpty!863 (= setRes!863 (and tp!29473 (inv!934 setElem!863)))))

(declare-fun setRest!863 () (InoxSet Context!162))

(assert (=> setNonEmpty!863 (= (_2!531 (h!6044 (zeroValue!470 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!863 true) setRest!863))))

(assert (=> b!42692 (= tp!29414 e!23093)))

(assert (= (and b!42799 condSetEmpty!863) setIsEmpty!863))

(assert (= (and b!42799 (not condSetEmpty!863)) setNonEmpty!863))

(assert (= (and b!42692 ((_ is Cons!648) (zeroValue!470 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333)))))))) b!42799))

(declare-fun m!16593 () Bool)

(assert (=> b!42799 m!16593))

(declare-fun m!16595 () Bool)

(assert (=> setNonEmpty!863 m!16595))

(declare-fun setRes!864 () Bool)

(declare-fun b!42800 () Bool)

(declare-fun tp!29476 () Bool)

(declare-fun e!23096 () Bool)

(assert (=> b!42800 (= e!23096 (and (inv!934 (_2!530 (_1!531 (h!6044 (minValue!470 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333)))))))))) setRes!864 tp!29476))))

(declare-fun condSetEmpty!864 () Bool)

(assert (=> b!42800 (= condSetEmpty!864 (= (_2!531 (h!6044 (minValue!470 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333)))))))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!864 () Bool)

(assert (=> setIsEmpty!864 setRes!864))

(declare-fun setNonEmpty!864 () Bool)

(declare-fun tp!29475 () Bool)

(declare-fun setElem!864 () Context!162)

(assert (=> setNonEmpty!864 (= setRes!864 (and tp!29475 (inv!934 setElem!864)))))

(declare-fun setRest!864 () (InoxSet Context!162))

(assert (=> setNonEmpty!864 (= (_2!531 (h!6044 (minValue!470 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!864 true) setRest!864))))

(assert (=> b!42692 (= tp!29423 e!23096)))

(assert (= (and b!42800 condSetEmpty!864) setIsEmpty!864))

(assert (= (and b!42800 (not condSetEmpty!864)) setNonEmpty!864))

(assert (= (and b!42692 ((_ is Cons!648) (minValue!470 (v!12405 (underlying!623 (v!12406 (underlying!624 (cache!695 cacheDown!333)))))))) b!42800))

(declare-fun m!16597 () Bool)

(assert (=> b!42800 m!16597))

(declare-fun m!16599 () Bool)

(assert (=> setNonEmpty!864 m!16599))

(declare-fun tp!29478 () Bool)

(declare-fun e!23097 () Bool)

(declare-fun b!42801 () Bool)

(declare-fun tp!29477 () Bool)

(assert (=> b!42801 (= e!23097 (and (inv!927 (left!534 (c!15940 input!525))) tp!29477 (inv!927 (right!864 (c!15940 input!525))) tp!29478))))

(declare-fun b!42802 () Bool)

(assert (=> b!42802 (= e!23097 (inv!935 (xs!2698 (c!15940 input!525))))))

(assert (=> b!42674 (= tp!29413 (and (inv!927 (c!15940 input!525)) e!23097))))

(assert (= (and b!42674 ((_ is Node!119) (c!15940 input!525))) b!42801))

(assert (= (and b!42674 ((_ is Leaf!309) (c!15940 input!525))) b!42802))

(declare-fun m!16601 () Bool)

(assert (=> b!42801 m!16601))

(declare-fun m!16603 () Bool)

(assert (=> b!42801 m!16603))

(declare-fun m!16605 () Bool)

(assert (=> b!42802 m!16605))

(assert (=> b!42674 m!16373))

(declare-fun b!42803 () Bool)

(declare-fun e!23100 () Bool)

(declare-fun setRes!865 () Bool)

(declare-fun tp!29479 () Bool)

(assert (=> b!42803 (= e!23100 (and setRes!865 tp!29479))))

(declare-fun condSetEmpty!865 () Bool)

(assert (=> b!42803 (= condSetEmpty!865 (= (_1!526 (_1!527 (h!6042 mapDefault!782))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!865 () Bool)

(assert (=> setIsEmpty!865 setRes!865))

(declare-fun setNonEmpty!865 () Bool)

(declare-fun tp!29480 () Bool)

(declare-fun setElem!865 () Context!162)

(assert (=> setNonEmpty!865 (= setRes!865 (and tp!29480 (inv!934 setElem!865)))))

(declare-fun setRest!865 () (InoxSet Context!162))

(assert (=> setNonEmpty!865 (= (_1!526 (_1!527 (h!6042 mapDefault!782))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!865 true) setRest!865))))

(assert (=> b!42696 (= tp!29419 e!23100)))

(assert (= (and b!42803 condSetEmpty!865) setIsEmpty!865))

(assert (= (and b!42803 (not condSetEmpty!865)) setNonEmpty!865))

(assert (= (and b!42696 ((_ is Cons!646) mapDefault!782)) b!42803))

(declare-fun m!16607 () Bool)

(assert (=> setNonEmpty!865 m!16607))

(declare-fun b!42810 () Bool)

(declare-fun e!23110 () Bool)

(declare-fun setRes!871 () Bool)

(declare-fun tp!29493 () Bool)

(assert (=> b!42810 (= e!23110 (and setRes!871 tp!29493))))

(declare-fun condSetEmpty!870 () Bool)

(declare-fun mapValue!789 () List!648)

(assert (=> b!42810 (= condSetEmpty!870 (= (_1!526 (_1!527 (h!6042 mapValue!789))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun mapIsEmpty!789 () Bool)

(declare-fun mapRes!789 () Bool)

(assert (=> mapIsEmpty!789 mapRes!789))

(declare-fun setIsEmpty!870 () Bool)

(declare-fun setRes!870 () Bool)

(assert (=> setIsEmpty!870 setRes!870))

(declare-fun b!42811 () Bool)

(declare-fun e!23112 () Bool)

(declare-fun tp!29494 () Bool)

(assert (=> b!42811 (= e!23112 (and setRes!870 tp!29494))))

(declare-fun condSetEmpty!871 () Bool)

(declare-fun mapDefault!789 () List!648)

(assert (=> b!42811 (= condSetEmpty!871 (= (_1!526 (_1!527 (h!6042 mapDefault!789))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun condMapEmpty!789 () Bool)

(assert (=> mapNonEmpty!781 (= condMapEmpty!789 (= mapRest!781 ((as const (Array (_ BitVec 32) List!648)) mapDefault!789)))))

(assert (=> mapNonEmpty!781 (= tp!29415 (and e!23112 mapRes!789))))

(declare-fun mapNonEmpty!789 () Bool)

(declare-fun tp!29495 () Bool)

(assert (=> mapNonEmpty!789 (= mapRes!789 (and tp!29495 e!23110))))

(declare-fun mapRest!789 () (Array (_ BitVec 32) List!648))

(declare-fun mapKey!789 () (_ BitVec 32))

(assert (=> mapNonEmpty!789 (= mapRest!781 (store mapRest!789 mapKey!789 mapValue!789))))

(declare-fun setNonEmpty!870 () Bool)

(declare-fun tp!29491 () Bool)

(declare-fun setElem!870 () Context!162)

(assert (=> setNonEmpty!870 (= setRes!871 (and tp!29491 (inv!934 setElem!870)))))

(declare-fun setRest!870 () (InoxSet Context!162))

(assert (=> setNonEmpty!870 (= (_1!526 (_1!527 (h!6042 mapValue!789))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!870 true) setRest!870))))

(declare-fun setNonEmpty!871 () Bool)

(declare-fun tp!29492 () Bool)

(declare-fun setElem!871 () Context!162)

(assert (=> setNonEmpty!871 (= setRes!870 (and tp!29492 (inv!934 setElem!871)))))

(declare-fun setRest!871 () (InoxSet Context!162))

(assert (=> setNonEmpty!871 (= (_1!526 (_1!527 (h!6042 mapDefault!789))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!871 true) setRest!871))))

(declare-fun setIsEmpty!871 () Bool)

(assert (=> setIsEmpty!871 setRes!871))

(assert (= (and mapNonEmpty!781 condMapEmpty!789) mapIsEmpty!789))

(assert (= (and mapNonEmpty!781 (not condMapEmpty!789)) mapNonEmpty!789))

(assert (= (and b!42810 condSetEmpty!870) setIsEmpty!871))

(assert (= (and b!42810 (not condSetEmpty!870)) setNonEmpty!870))

(assert (= (and mapNonEmpty!789 ((_ is Cons!646) mapValue!789)) b!42810))

(assert (= (and b!42811 condSetEmpty!871) setIsEmpty!870))

(assert (= (and b!42811 (not condSetEmpty!871)) setNonEmpty!871))

(assert (= (and mapNonEmpty!781 ((_ is Cons!646) mapDefault!789)) b!42811))

(declare-fun m!16609 () Bool)

(assert (=> mapNonEmpty!789 m!16609))

(declare-fun m!16611 () Bool)

(assert (=> setNonEmpty!870 m!16611))

(declare-fun m!16613 () Bool)

(assert (=> setNonEmpty!871 m!16613))

(declare-fun b!42812 () Bool)

(declare-fun e!23114 () Bool)

(declare-fun setRes!872 () Bool)

(declare-fun tp!29496 () Bool)

(assert (=> b!42812 (= e!23114 (and setRes!872 tp!29496))))

(declare-fun condSetEmpty!872 () Bool)

(assert (=> b!42812 (= condSetEmpty!872 (= (_1!526 (_1!527 (h!6042 mapValue!781))) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!872 () Bool)

(assert (=> setIsEmpty!872 setRes!872))

(declare-fun setNonEmpty!872 () Bool)

(declare-fun tp!29497 () Bool)

(declare-fun setElem!872 () Context!162)

(assert (=> setNonEmpty!872 (= setRes!872 (and tp!29497 (inv!934 setElem!872)))))

(declare-fun setRest!872 () (InoxSet Context!162))

(assert (=> setNonEmpty!872 (= (_1!526 (_1!527 (h!6042 mapValue!781))) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!872 true) setRest!872))))

(assert (=> mapNonEmpty!781 (= tp!29421 e!23114)))

(assert (= (and b!42812 condSetEmpty!872) setIsEmpty!872))

(assert (= (and b!42812 (not condSetEmpty!872)) setNonEmpty!872))

(assert (= (and mapNonEmpty!781 ((_ is Cons!646) mapValue!781)) b!42812))

(declare-fun m!16615 () Bool)

(assert (=> setNonEmpty!872 m!16615))

(declare-fun mapIsEmpty!792 () Bool)

(declare-fun mapRes!792 () Bool)

(assert (=> mapIsEmpty!792 mapRes!792))

(declare-fun setIsEmpty!877 () Bool)

(declare-fun setRes!878 () Bool)

(assert (=> setIsEmpty!877 setRes!878))

(declare-fun setNonEmpty!877 () Bool)

(declare-fun tp!29508 () Bool)

(declare-fun setElem!878 () Context!162)

(assert (=> setNonEmpty!877 (= setRes!878 (and tp!29508 (inv!934 setElem!878)))))

(declare-fun mapDefault!792 () List!649)

(declare-fun setRest!877 () (InoxSet Context!162))

(assert (=> setNonEmpty!877 (= (_2!529 (h!6043 mapDefault!792)) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!878 true) setRest!877))))

(declare-fun mapValue!792 () List!649)

(declare-fun b!42819 () Bool)

(declare-fun e!23130 () Bool)

(declare-fun setRes!877 () Bool)

(declare-fun tp!29511 () Bool)

(assert (=> b!42819 (= e!23130 (and (inv!934 (_1!528 (_1!529 (h!6043 mapValue!792)))) setRes!877 tp!29511))))

(declare-fun condSetEmpty!877 () Bool)

(assert (=> b!42819 (= condSetEmpty!877 (= (_2!529 (h!6043 mapValue!792)) ((as const (Array Context!162 Bool)) false)))))

(declare-fun b!42820 () Bool)

(declare-fun tp!29512 () Bool)

(declare-fun e!23127 () Bool)

(assert (=> b!42820 (= e!23127 (and (inv!934 (_1!528 (_1!529 (h!6043 mapDefault!792)))) setRes!878 tp!29512))))

(declare-fun condSetEmpty!878 () Bool)

(assert (=> b!42820 (= condSetEmpty!878 (= (_2!529 (h!6043 mapDefault!792)) ((as const (Array Context!162 Bool)) false)))))

(declare-fun mapNonEmpty!792 () Bool)

(declare-fun tp!29510 () Bool)

(assert (=> mapNonEmpty!792 (= mapRes!792 (and tp!29510 e!23130))))

(declare-fun mapKey!792 () (_ BitVec 32))

(declare-fun mapRest!792 () (Array (_ BitVec 32) List!649))

(assert (=> mapNonEmpty!792 (= mapRest!782 (store mapRest!792 mapKey!792 mapValue!792))))

(declare-fun condMapEmpty!792 () Bool)

(assert (=> mapNonEmpty!782 (= condMapEmpty!792 (= mapRest!782 ((as const (Array (_ BitVec 32) List!649)) mapDefault!792)))))

(assert (=> mapNonEmpty!782 (= tp!29416 (and e!23127 mapRes!792))))

(declare-fun setIsEmpty!878 () Bool)

(assert (=> setIsEmpty!878 setRes!877))

(declare-fun setNonEmpty!878 () Bool)

(declare-fun tp!29509 () Bool)

(declare-fun setElem!877 () Context!162)

(assert (=> setNonEmpty!878 (= setRes!877 (and tp!29509 (inv!934 setElem!877)))))

(declare-fun setRest!878 () (InoxSet Context!162))

(assert (=> setNonEmpty!878 (= (_2!529 (h!6043 mapValue!792)) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!877 true) setRest!878))))

(assert (= (and mapNonEmpty!782 condMapEmpty!792) mapIsEmpty!792))

(assert (= (and mapNonEmpty!782 (not condMapEmpty!792)) mapNonEmpty!792))

(assert (= (and b!42819 condSetEmpty!877) setIsEmpty!878))

(assert (= (and b!42819 (not condSetEmpty!877)) setNonEmpty!878))

(assert (= (and mapNonEmpty!792 ((_ is Cons!647) mapValue!792)) b!42819))

(assert (= (and b!42820 condSetEmpty!878) setIsEmpty!877))

(assert (= (and b!42820 (not condSetEmpty!878)) setNonEmpty!877))

(assert (= (and mapNonEmpty!782 ((_ is Cons!647) mapDefault!792)) b!42820))

(declare-fun m!16617 () Bool)

(assert (=> setNonEmpty!878 m!16617))

(declare-fun m!16619 () Bool)

(assert (=> b!42820 m!16619))

(declare-fun m!16621 () Bool)

(assert (=> mapNonEmpty!792 m!16621))

(declare-fun m!16623 () Bool)

(assert (=> setNonEmpty!877 m!16623))

(declare-fun m!16625 () Bool)

(assert (=> b!42819 m!16625))

(declare-fun b!42821 () Bool)

(declare-fun e!23134 () Bool)

(declare-fun setRes!879 () Bool)

(declare-fun tp!29514 () Bool)

(assert (=> b!42821 (= e!23134 (and (inv!934 (_1!528 (_1!529 (h!6043 mapValue!783)))) setRes!879 tp!29514))))

(declare-fun condSetEmpty!879 () Bool)

(assert (=> b!42821 (= condSetEmpty!879 (= (_2!529 (h!6043 mapValue!783)) ((as const (Array Context!162 Bool)) false)))))

(declare-fun setIsEmpty!879 () Bool)

(assert (=> setIsEmpty!879 setRes!879))

(declare-fun setNonEmpty!879 () Bool)

(declare-fun tp!29513 () Bool)

(declare-fun setElem!879 () Context!162)

(assert (=> setNonEmpty!879 (= setRes!879 (and tp!29513 (inv!934 setElem!879)))))

(declare-fun setRest!879 () (InoxSet Context!162))

(assert (=> setNonEmpty!879 (= (_2!529 (h!6043 mapValue!783)) ((_ map or) (store ((as const (Array Context!162 Bool)) false) setElem!879 true) setRest!879))))

(assert (=> mapNonEmpty!782 (= tp!29405 e!23134)))

(assert (= (and b!42821 condSetEmpty!879) setIsEmpty!879))

(assert (= (and b!42821 (not condSetEmpty!879)) setNonEmpty!879))

(assert (= (and mapNonEmpty!782 ((_ is Cons!647) mapValue!783)) b!42821))

(declare-fun m!16627 () Bool)

(assert (=> b!42821 m!16627))

(declare-fun m!16629 () Bool)

(assert (=> setNonEmpty!879 m!16629))

(check-sat (not b!42821) (not setNonEmpty!847) (not setNonEmpty!870) (not setNonEmpty!851) (not b!42810) (not d!4652) (not b!42733) (not b!42763) (not b_next!1007) (not b!42800) (not d!4616) (not setNonEmpty!850) (not d!4640) (not d!4650) (not b!42796) (not d!4618) (not b!42707) (not setNonEmpty!855) (not b!42797) (not b!42756) (not setNonEmpty!846) (not b!42736) (not d!4632) (not setNonEmpty!877) (not mapNonEmpty!789) (not d!4626) (not b!42798) (not b!42768) (not b!42740) (not d!4594) (not setNonEmpty!879) (not b_next!1009) (not b!42789) (not d!4634) (not setNonEmpty!865) (not b!42801) (not b!42755) (not d!4614) (not b!42734) (not b!42812) (not b_next!1011) (not setNonEmpty!863) (not b!42762) b_and!1049 (not b!42754) (not setNonEmpty!862) (not setNonEmpty!872) (not b!42674) b_and!1045 (not b!42777) (not d!4638) b_and!1041 (not b!42743) (not b!42737) (not mapNonEmpty!786) (not setNonEmpty!878) (not setNonEmpty!860) (not b!42819) (not d!4636) (not b!42722) b_and!1047 (not b!42802) (not b!42799) (not d!4630) (not b!42803) (not b!42713) (not b!42720) (not setNonEmpty!852) (not d!4646) (not b!42811) (not b!42710) (not b_next!1005) (not b!42759) (not d!4648) (not d!4642) (not b!42741) (not b!42682) (not d!4644) (not b!42820) b_and!1043 (not setNonEmpty!861) (not b!42783) b_and!1039 (not b!42758) (not b!42769) (not b!42784) (not b_next!1013) (not setNonEmpty!864) (not setNonEmpty!871) (not d!4620) (not d!4612) (not b!42760) (not mapNonEmpty!792) (not b_next!1015) (not b!42782) (not d!4590) (not b!42776))
(check-sat (not b_next!1007) (not b_next!1009) b_and!1045 b_and!1041 b_and!1047 (not b_next!1005) b_and!1043 b_and!1039 (not b_next!1013) (not b_next!1015) (not b_next!1011) b_and!1049)
