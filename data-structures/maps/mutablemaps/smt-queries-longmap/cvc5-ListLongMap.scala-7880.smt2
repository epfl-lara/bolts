; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98060 () Bool)

(assert start!98060)

(declare-fun b_free!23725 () Bool)

(declare-fun b_next!23725 () Bool)

(assert (=> start!98060 (= b_free!23725 (not b_next!23725))))

(declare-fun tp!83879 () Bool)

(declare-fun b_and!38255 () Bool)

(assert (=> start!98060 (= tp!83879 b_and!38255)))

(declare-fun b!1124796 () Bool)

(declare-fun e!640339 () Bool)

(declare-fun e!640332 () Bool)

(assert (=> b!1124796 (= e!640339 e!640332)))

(declare-fun res!751644 () Bool)

(assert (=> b!1124796 (=> res!751644 e!640332)))

(declare-datatypes ((V!42801 0))(
  ( (V!42802 (val!14184 Int)) )
))
(declare-datatypes ((tuple2!17902 0))(
  ( (tuple2!17903 (_1!8961 (_ BitVec 64)) (_2!8961 V!42801)) )
))
(declare-datatypes ((List!24732 0))(
  ( (Nil!24729) (Cons!24728 (h!25937 tuple2!17902) (t!35456 List!24732)) )
))
(declare-datatypes ((ListLongMap!15883 0))(
  ( (ListLongMap!15884 (toList!7957 List!24732)) )
))
(declare-fun lt!499592 () ListLongMap!15883)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6468 (ListLongMap!15883 (_ BitVec 64)) Bool)

(assert (=> b!1124796 (= res!751644 (not (contains!6468 lt!499592 k!934)))))

(declare-fun zeroValue!944 () V!42801)

(declare-datatypes ((array!73334 0))(
  ( (array!73335 (arr!35316 (Array (_ BitVec 32) (_ BitVec 64))) (size!35853 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73334)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13418 0))(
  ( (ValueCellFull!13418 (v!16818 V!42801)) (EmptyCell!13418) )
))
(declare-datatypes ((array!73336 0))(
  ( (array!73337 (arr!35317 (Array (_ BitVec 32) ValueCell!13418)) (size!35854 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73336)

(declare-fun minValue!944 () V!42801)

(declare-fun getCurrentListMapNoExtraKeys!4416 (array!73334 array!73336 (_ BitVec 32) (_ BitVec 32) V!42801 V!42801 (_ BitVec 32) Int) ListLongMap!15883)

(assert (=> b!1124796 (= lt!499592 (getCurrentListMapNoExtraKeys!4416 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47458 () ListLongMap!15883)

(declare-fun e!640340 () Bool)

(declare-fun b!1124797 () Bool)

(declare-fun call!47459 () ListLongMap!15883)

(declare-fun -!1106 (ListLongMap!15883 (_ BitVec 64)) ListLongMap!15883)

(assert (=> b!1124797 (= e!640340 (= call!47459 (-!1106 call!47458 k!934)))))

(declare-fun b!1124798 () Bool)

(declare-fun e!640331 () Bool)

(declare-fun tp_is_empty!28255 () Bool)

(assert (=> b!1124798 (= e!640331 tp_is_empty!28255)))

(declare-fun b!1124799 () Bool)

(declare-fun res!751630 () Bool)

(declare-fun e!640335 () Bool)

(assert (=> b!1124799 (=> (not res!751630) (not e!640335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73334 (_ BitVec 32)) Bool)

(assert (=> b!1124799 (= res!751630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!44200 () Bool)

(declare-fun mapRes!44200 () Bool)

(declare-fun tp!83880 () Bool)

(declare-fun e!640338 () Bool)

(assert (=> mapNonEmpty!44200 (= mapRes!44200 (and tp!83880 e!640338))))

(declare-fun mapKey!44200 () (_ BitVec 32))

(declare-fun mapValue!44200 () ValueCell!13418)

(declare-fun mapRest!44200 () (Array (_ BitVec 32) ValueCell!13418))

(assert (=> mapNonEmpty!44200 (= (arr!35317 _values!996) (store mapRest!44200 mapKey!44200 mapValue!44200))))

(declare-fun b!1124800 () Bool)

(declare-fun res!751632 () Bool)

(assert (=> b!1124800 (=> (not res!751632) (not e!640335))))

(declare-datatypes ((List!24733 0))(
  ( (Nil!24730) (Cons!24729 (h!25938 (_ BitVec 64)) (t!35457 List!24733)) )
))
(declare-fun arrayNoDuplicates!0 (array!73334 (_ BitVec 32) List!24733) Bool)

(assert (=> b!1124800 (= res!751632 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24730))))

(declare-fun b!1124801 () Bool)

(declare-fun res!751636 () Bool)

(assert (=> b!1124801 (=> (not res!751636) (not e!640335))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124801 (= res!751636 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35853 _keys!1208))))))

(declare-fun b!1124802 () Bool)

(declare-fun res!751641 () Bool)

(assert (=> b!1124802 (=> (not res!751641) (not e!640335))))

(assert (=> b!1124802 (= res!751641 (= (select (arr!35316 _keys!1208) i!673) k!934))))

(declare-fun b!1124804 () Bool)

(declare-fun e!640336 () Bool)

(assert (=> b!1124804 (= e!640336 e!640339)))

(declare-fun res!751640 () Bool)

(assert (=> b!1124804 (=> res!751640 e!640339)))

(assert (=> b!1124804 (= res!751640 (not (= (select (arr!35316 _keys!1208) from!1455) k!934)))))

(assert (=> b!1124804 e!640340))

(declare-fun c!109538 () Bool)

(assert (=> b!1124804 (= c!109538 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36811 0))(
  ( (Unit!36812) )
))
(declare-fun lt!499591 () Unit!36811)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!359 (array!73334 array!73336 (_ BitVec 32) (_ BitVec 32) V!42801 V!42801 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36811)

(assert (=> b!1124804 (= lt!499591 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!359 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44200 () Bool)

(assert (=> mapIsEmpty!44200 mapRes!44200))

(declare-fun b!1124805 () Bool)

(declare-fun e!640330 () Bool)

(assert (=> b!1124805 (= e!640335 e!640330)))

(declare-fun res!751642 () Bool)

(assert (=> b!1124805 (=> (not res!751642) (not e!640330))))

(declare-fun lt!499589 () array!73334)

(assert (=> b!1124805 (= res!751642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499589 mask!1564))))

(assert (=> b!1124805 (= lt!499589 (array!73335 (store (arr!35316 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35853 _keys!1208)))))

(declare-fun b!1124806 () Bool)

(assert (=> b!1124806 (= e!640338 tp_is_empty!28255)))

(declare-fun b!1124807 () Bool)

(declare-fun res!751633 () Bool)

(assert (=> b!1124807 (=> res!751633 e!640332)))

(assert (=> b!1124807 (= res!751633 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124808 () Bool)

(declare-fun res!751631 () Bool)

(assert (=> b!1124808 (=> (not res!751631) (not e!640335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124808 (= res!751631 (validMask!0 mask!1564))))

(declare-fun b!1124809 () Bool)

(declare-fun e!640334 () Bool)

(assert (=> b!1124809 (= e!640334 (and e!640331 mapRes!44200))))

(declare-fun condMapEmpty!44200 () Bool)

(declare-fun mapDefault!44200 () ValueCell!13418)

