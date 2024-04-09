; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98460 () Bool)

(assert start!98460)

(declare-fun b_free!24029 () Bool)

(declare-fun b_next!24029 () Bool)

(assert (=> start!98460 (= b_free!24029 (not b_next!24029))))

(declare-fun tp!84799 () Bool)

(declare-fun b_and!38921 () Bool)

(assert (=> start!98460 (= tp!84799 b_and!38921)))

(declare-fun b!1136533 () Bool)

(declare-datatypes ((Unit!37170 0))(
  ( (Unit!37171) )
))
(declare-fun e!646782 () Unit!37170)

(declare-fun lt!505329 () Unit!37170)

(assert (=> b!1136533 (= e!646782 lt!505329)))

(declare-datatypes ((V!43205 0))(
  ( (V!43206 (val!14336 Int)) )
))
(declare-fun zeroValue!944 () V!43205)

(declare-fun lt!505326 () Unit!37170)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((tuple2!18192 0))(
  ( (tuple2!18193 (_1!9106 (_ BitVec 64)) (_2!9106 V!43205)) )
))
(declare-datatypes ((List!25002 0))(
  ( (Nil!24999) (Cons!24998 (h!26207 tuple2!18192) (t!36030 List!25002)) )
))
(declare-datatypes ((ListLongMap!16173 0))(
  ( (ListLongMap!16174 (toList!8102 List!25002)) )
))
(declare-fun lt!505318 () ListLongMap!16173)

(declare-fun addStillContains!757 (ListLongMap!16173 (_ BitVec 64) V!43205 (_ BitVec 64)) Unit!37170)

(assert (=> b!1136533 (= lt!505326 (addStillContains!757 lt!505318 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!505322 () ListLongMap!16173)

(declare-fun call!49896 () ListLongMap!16173)

(assert (=> b!1136533 (= lt!505322 call!49896)))

(declare-fun call!49889 () Bool)

(assert (=> b!1136533 call!49889))

(declare-fun call!49893 () Unit!37170)

(assert (=> b!1136533 (= lt!505329 call!49893)))

(declare-fun minValue!944 () V!43205)

(declare-fun contains!6612 (ListLongMap!16173 (_ BitVec 64)) Bool)

(declare-fun +!3456 (ListLongMap!16173 tuple2!18192) ListLongMap!16173)

(assert (=> b!1136533 (contains!6612 (+!3456 lt!505322 (tuple2!18193 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun bm!49886 () Bool)

(declare-fun call!49890 () Bool)

(assert (=> bm!49886 (= call!49890 call!49889)))

(declare-fun call!49895 () ListLongMap!16173)

(declare-fun b!1136534 () Bool)

(declare-fun call!49891 () ListLongMap!16173)

(declare-fun e!646784 () Bool)

(declare-fun -!1212 (ListLongMap!16173 (_ BitVec 64)) ListLongMap!16173)

(assert (=> b!1136534 (= e!646784 (= call!49895 (-!1212 call!49891 k!934)))))

(declare-fun b!1136535 () Bool)

(declare-fun e!646778 () Bool)

(declare-fun e!646788 () Bool)

(assert (=> b!1136535 (= e!646778 e!646788)))

(declare-fun res!758614 () Bool)

(assert (=> b!1136535 (=> res!758614 e!646788)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1136535 (= res!758614 (not (= from!1455 i!673)))))

(declare-fun lt!505330 () ListLongMap!16173)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13570 0))(
  ( (ValueCellFull!13570 (v!16974 V!43205)) (EmptyCell!13570) )
))
(declare-datatypes ((array!73938 0))(
  ( (array!73939 (arr!35616 (Array (_ BitVec 32) ValueCell!13570)) (size!36153 (_ BitVec 32))) )
))
(declare-fun lt!505316 () array!73938)

(declare-datatypes ((array!73940 0))(
  ( (array!73941 (arr!35617 (Array (_ BitVec 32) (_ BitVec 64))) (size!36154 (_ BitVec 32))) )
))
(declare-fun lt!505327 () array!73940)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4550 (array!73940 array!73938 (_ BitVec 32) (_ BitVec 32) V!43205 V!43205 (_ BitVec 32) Int) ListLongMap!16173)

(assert (=> b!1136535 (= lt!505330 (getCurrentListMapNoExtraKeys!4550 lt!505327 lt!505316 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73938)

(declare-fun dynLambda!2613 (Int (_ BitVec 64)) V!43205)

(assert (=> b!1136535 (= lt!505316 (array!73939 (store (arr!35616 _values!996) i!673 (ValueCellFull!13570 (dynLambda!2613 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36153 _values!996)))))

(declare-fun _keys!1208 () array!73940)

(declare-fun lt!505319 () ListLongMap!16173)

(assert (=> b!1136535 (= lt!505319 (getCurrentListMapNoExtraKeys!4550 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1136536 () Bool)

(declare-fun e!646780 () Bool)

(declare-fun arrayContainsKey!0 (array!73940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136536 (= e!646780 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136538 () Bool)

(declare-fun e!646792 () Bool)

(assert (=> b!1136538 (= e!646792 true)))

(declare-fun lt!505321 () Bool)

(declare-datatypes ((List!25003 0))(
  ( (Nil!25000) (Cons!24999 (h!26208 (_ BitVec 64)) (t!36031 List!25003)) )
))
(declare-fun contains!6613 (List!25003 (_ BitVec 64)) Bool)

(assert (=> b!1136538 (= lt!505321 (contains!6613 Nil!25000 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1136539 () Bool)

(declare-fun e!646781 () Bool)

(declare-fun tp_is_empty!28559 () Bool)

(assert (=> b!1136539 (= e!646781 tp_is_empty!28559)))

(declare-fun b!1136540 () Bool)

(assert (=> b!1136540 call!49890))

(declare-fun lt!505332 () Unit!37170)

(declare-fun call!49894 () Unit!37170)

(assert (=> b!1136540 (= lt!505332 call!49894)))

(declare-fun e!646785 () Unit!37170)

(assert (=> b!1136540 (= e!646785 lt!505332)))

(declare-fun b!1136541 () Bool)

(declare-fun e!646791 () Bool)

(declare-fun e!646779 () Bool)

(assert (=> b!1136541 (= e!646791 e!646779)))

(declare-fun res!758619 () Bool)

(assert (=> b!1136541 (=> (not res!758619) (not e!646779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73940 (_ BitVec 32)) Bool)

(assert (=> b!1136541 (= res!758619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505327 mask!1564))))

(assert (=> b!1136541 (= lt!505327 (array!73941 (store (arr!35617 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36154 _keys!1208)))))

(declare-fun b!1136542 () Bool)

(declare-fun e!646789 () Bool)

(assert (=> b!1136542 (= e!646788 e!646789)))

(declare-fun res!758622 () Bool)

(assert (=> b!1136542 (=> res!758622 e!646789)))

(assert (=> b!1136542 (= res!758622 (not (= (select (arr!35617 _keys!1208) from!1455) k!934)))))

(assert (=> b!1136542 e!646784))

(declare-fun c!111068 () Bool)

(assert (=> b!1136542 (= c!111068 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505328 () Unit!37170)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!468 (array!73940 array!73938 (_ BitVec 32) (_ BitVec 32) V!43205 V!43205 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37170)

(assert (=> b!1136542 (= lt!505328 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!468 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136543 () Bool)

(declare-fun res!758629 () Bool)

(assert (=> b!1136543 (=> res!758629 e!646792)))

(declare-fun noDuplicate!1623 (List!25003) Bool)

(assert (=> b!1136543 (= res!758629 (not (noDuplicate!1623 Nil!25000)))))

(declare-fun b!1136544 () Bool)

(declare-fun e!646786 () Bool)

(assert (=> b!1136544 (= e!646786 e!646792)))

(declare-fun res!758615 () Bool)

(assert (=> b!1136544 (=> res!758615 e!646792)))

(assert (=> b!1136544 (= res!758615 (or (bvsge (size!36154 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36154 _keys!1208)) (bvsge from!1455 (size!36154 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!73940 (_ BitVec 32) List!25003) Bool)

(assert (=> b!1136544 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25000)))

(declare-fun lt!505320 () Unit!37170)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73940 (_ BitVec 32) (_ BitVec 32)) Unit!37170)

(assert (=> b!1136544 (= lt!505320 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!646794 () Bool)

(assert (=> b!1136544 e!646794))

(declare-fun res!758627 () Bool)

(assert (=> b!1136544 (=> (not res!758627) (not e!646794))))

(assert (=> b!1136544 (= res!758627 e!646780)))

(declare-fun c!111072 () Bool)

(assert (=> b!1136544 (= c!111072 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!505331 () Unit!37170)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!362 (array!73940 array!73938 (_ BitVec 32) (_ BitVec 32) V!43205 V!43205 (_ BitVec 64) (_ BitVec 32) Int) Unit!37170)

(assert (=> b!1136544 (= lt!505331 (lemmaListMapContainsThenArrayContainsFrom!362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!505325 () Unit!37170)

(assert (=> b!1136544 (= lt!505325 e!646782)))

(declare-fun c!111070 () Bool)

(declare-fun lt!505323 () Bool)

(assert (=> b!1136544 (= c!111070 (and (not lt!505323) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1136544 (= lt!505323 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1136545 () Bool)

(declare-fun res!758626 () Bool)

(assert (=> b!1136545 (=> (not res!758626) (not e!646791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1136545 (= res!758626 (validKeyInArray!0 k!934))))

(declare-fun b!1136546 () Bool)

(declare-fun res!758618 () Bool)

(assert (=> b!1136546 (=> res!758618 e!646792)))

(assert (=> b!1136546 (= res!758618 (contains!6613 Nil!25000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!111071 () Bool)

(declare-fun bm!49887 () Bool)

(assert (=> bm!49887 (= call!49893 (addStillContains!757 (ite c!111070 lt!505322 lt!505318) (ite c!111070 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111071 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111070 minValue!944 (ite c!111071 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1136547 () Bool)

(declare-fun e!646793 () Unit!37170)

(declare-fun lt!505324 () Unit!37170)

(assert (=> b!1136547 (= e!646793 lt!505324)))

(assert (=> b!1136547 (= lt!505324 call!49894)))

(assert (=> b!1136547 call!49890))

(declare-fun b!1136548 () Bool)

(declare-fun res!758623 () Bool)

(assert (=> b!1136548 (=> (not res!758623) (not e!646791))))

(assert (=> b!1136548 (= res!758623 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36154 _keys!1208))))))

(declare-fun mapIsEmpty!44663 () Bool)

(declare-fun mapRes!44663 () Bool)

(assert (=> mapIsEmpty!44663 mapRes!44663))

(declare-fun b!1136549 () Bool)

(assert (=> b!1136549 (= e!646784 (= call!49895 call!49891))))

(declare-fun b!1136550 () Bool)

(declare-fun res!758628 () Bool)

(assert (=> b!1136550 (=> (not res!758628) (not e!646779))))

(assert (=> b!1136550 (= res!758628 (arrayNoDuplicates!0 lt!505327 #b00000000000000000000000000000000 Nil!25000))))

(declare-fun b!1136551 () Bool)

(declare-fun res!758624 () Bool)

(assert (=> b!1136551 (=> (not res!758624) (not e!646791))))

(assert (=> b!1136551 (= res!758624 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25000))))

(declare-fun bm!49888 () Bool)

(assert (=> bm!49888 (= call!49894 call!49893)))

(declare-fun b!1136552 () Bool)

(assert (=> b!1136552 (= e!646794 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136553 () Bool)

(declare-fun res!758630 () Bool)

(assert (=> b!1136553 (=> (not res!758630) (not e!646791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1136553 (= res!758630 (validMask!0 mask!1564))))

(declare-fun b!1136554 () Bool)

(declare-fun Unit!37172 () Unit!37170)

(assert (=> b!1136554 (= e!646793 Unit!37172)))

(declare-fun b!1136555 () Bool)

(declare-fun res!758625 () Bool)

(assert (=> b!1136555 (=> (not res!758625) (not e!646791))))

(assert (=> b!1136555 (= res!758625 (and (= (size!36153 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36154 _keys!1208) (size!36153 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!49889 () Bool)

(declare-fun call!49892 () ListLongMap!16173)

(assert (=> bm!49889 (= call!49892 call!49896)))

(declare-fun b!1136556 () Bool)

(declare-fun c!111069 () Bool)

(assert (=> b!1136556 (= c!111069 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505323))))

(assert (=> b!1136556 (= e!646785 e!646793)))

(declare-fun bm!49890 () Bool)

(assert (=> bm!49890 (= call!49896 (+!3456 lt!505318 (ite (or c!111070 c!111071) (tuple2!18193 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18193 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1136557 () Bool)

(declare-fun res!758617 () Bool)

(assert (=> b!1136557 (=> (not res!758617) (not e!646791))))

(assert (=> b!1136557 (= res!758617 (= (select (arr!35617 _keys!1208) i!673) k!934))))

(declare-fun bm!49891 () Bool)

(assert (=> bm!49891 (= call!49891 (getCurrentListMapNoExtraKeys!4550 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136558 () Bool)

(declare-fun e!646787 () Bool)

(assert (=> b!1136558 (= e!646787 tp_is_empty!28559)))

(declare-fun b!1136559 () Bool)

(assert (=> b!1136559 (= e!646780 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505323) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1136560 () Bool)

(assert (=> b!1136560 (= e!646782 e!646785)))

(assert (=> b!1136560 (= c!111071 (and (not lt!505323) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1136561 () Bool)

(assert (=> b!1136561 (= e!646779 (not e!646778))))

(declare-fun res!758620 () Bool)

(assert (=> b!1136561 (=> res!758620 e!646778)))

(assert (=> b!1136561 (= res!758620 (bvsgt from!1455 i!673))))

(assert (=> b!1136561 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!505317 () Unit!37170)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73940 (_ BitVec 64) (_ BitVec 32)) Unit!37170)

(assert (=> b!1136561 (= lt!505317 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!49892 () Bool)

(assert (=> bm!49892 (= call!49895 (getCurrentListMapNoExtraKeys!4550 lt!505327 lt!505316 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!758616 () Bool)

(assert (=> start!98460 (=> (not res!758616) (not e!646791))))

(assert (=> start!98460 (= res!758616 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36154 _keys!1208))))))

(assert (=> start!98460 e!646791))

(assert (=> start!98460 tp_is_empty!28559))

(declare-fun array_inv!27182 (array!73940) Bool)

(assert (=> start!98460 (array_inv!27182 _keys!1208)))

(assert (=> start!98460 true))

(assert (=> start!98460 tp!84799))

(declare-fun e!646790 () Bool)

(declare-fun array_inv!27183 (array!73938) Bool)

(assert (=> start!98460 (and (array_inv!27183 _values!996) e!646790)))

(declare-fun b!1136537 () Bool)

(declare-fun res!758613 () Bool)

(assert (=> b!1136537 (=> (not res!758613) (not e!646791))))

(assert (=> b!1136537 (= res!758613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!49893 () Bool)

(assert (=> bm!49893 (= call!49889 (contains!6612 (ite c!111070 lt!505322 call!49892) k!934))))

(declare-fun mapNonEmpty!44663 () Bool)

(declare-fun tp!84798 () Bool)

(assert (=> mapNonEmpty!44663 (= mapRes!44663 (and tp!84798 e!646781))))

(declare-fun mapKey!44663 () (_ BitVec 32))

(declare-fun mapRest!44663 () (Array (_ BitVec 32) ValueCell!13570))

(declare-fun mapValue!44663 () ValueCell!13570)

(assert (=> mapNonEmpty!44663 (= (arr!35616 _values!996) (store mapRest!44663 mapKey!44663 mapValue!44663))))

(declare-fun b!1136562 () Bool)

(assert (=> b!1136562 (= e!646789 e!646786)))

(declare-fun res!758621 () Bool)

(assert (=> b!1136562 (=> res!758621 e!646786)))

(assert (=> b!1136562 (= res!758621 (not (contains!6612 lt!505318 k!934)))))

(assert (=> b!1136562 (= lt!505318 (getCurrentListMapNoExtraKeys!4550 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136563 () Bool)

(assert (=> b!1136563 (= e!646790 (and e!646787 mapRes!44663))))

(declare-fun condMapEmpty!44663 () Bool)

(declare-fun mapDefault!44663 () ValueCell!13570)

