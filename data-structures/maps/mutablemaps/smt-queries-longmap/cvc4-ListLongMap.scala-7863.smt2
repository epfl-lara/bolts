; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97962 () Bool)

(assert start!97962)

(declare-fun b_free!23627 () Bool)

(declare-fun b_next!23627 () Bool)

(assert (=> start!97962 (= b_free!23627 (not b_next!23627))))

(declare-fun tp!83585 () Bool)

(declare-fun b_and!38059 () Bool)

(assert (=> start!97962 (= tp!83585 b_and!38059)))

(declare-datatypes ((V!42669 0))(
  ( (V!42670 (val!14135 Int)) )
))
(declare-datatypes ((tuple2!17810 0))(
  ( (tuple2!17811 (_1!8915 (_ BitVec 64)) (_2!8915 V!42669)) )
))
(declare-datatypes ((List!24648 0))(
  ( (Nil!24645) (Cons!24644 (h!25853 tuple2!17810) (t!35274 List!24648)) )
))
(declare-datatypes ((ListLongMap!15791 0))(
  ( (ListLongMap!15792 (toList!7911 List!24648)) )
))
(declare-fun call!47165 () ListLongMap!15791)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!638811 () Bool)

(declare-fun b!1121932 () Bool)

(declare-fun call!47164 () ListLongMap!15791)

(declare-fun -!1075 (ListLongMap!15791 (_ BitVec 64)) ListLongMap!15791)

(assert (=> b!1121932 (= e!638811 (= call!47164 (-!1075 call!47165 k!934)))))

(declare-fun b!1121933 () Bool)

(declare-fun e!638808 () Bool)

(declare-fun e!638809 () Bool)

(assert (=> b!1121933 (= e!638808 (not e!638809))))

(declare-fun res!749600 () Bool)

(assert (=> b!1121933 (=> res!749600 e!638809)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121933 (= res!749600 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73140 0))(
  ( (array!73141 (arr!35219 (Array (_ BitVec 32) (_ BitVec 64))) (size!35756 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73140)

(declare-fun arrayContainsKey!0 (array!73140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121933 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36735 0))(
  ( (Unit!36736) )
))
(declare-fun lt!498514 () Unit!36735)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73140 (_ BitVec 64) (_ BitVec 32)) Unit!36735)

(assert (=> b!1121933 (= lt!498514 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!44053 () Bool)

(declare-fun mapRes!44053 () Bool)

(assert (=> mapIsEmpty!44053 mapRes!44053))

(declare-fun b!1121934 () Bool)

(declare-fun res!749602 () Bool)

(declare-fun e!638810 () Bool)

(assert (=> b!1121934 (=> (not res!749602) (not e!638810))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73140 (_ BitVec 32)) Bool)

(assert (=> b!1121934 (= res!749602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121935 () Bool)

(declare-fun e!638805 () Bool)

(assert (=> b!1121935 (= e!638809 e!638805)))

(declare-fun res!749603 () Bool)

(assert (=> b!1121935 (=> res!749603 e!638805)))

(assert (=> b!1121935 (= res!749603 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42669)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13369 0))(
  ( (ValueCellFull!13369 (v!16769 V!42669)) (EmptyCell!13369) )
))
(declare-datatypes ((array!73142 0))(
  ( (array!73143 (arr!35220 (Array (_ BitVec 32) ValueCell!13369)) (size!35757 (_ BitVec 32))) )
))
(declare-fun lt!498512 () array!73142)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!498516 () ListLongMap!15791)

(declare-fun minValue!944 () V!42669)

(declare-fun lt!498513 () array!73140)

(declare-fun getCurrentListMapNoExtraKeys!4372 (array!73140 array!73142 (_ BitVec 32) (_ BitVec 32) V!42669 V!42669 (_ BitVec 32) Int) ListLongMap!15791)

(assert (=> b!1121935 (= lt!498516 (getCurrentListMapNoExtraKeys!4372 lt!498513 lt!498512 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73142)

(declare-fun dynLambda!2471 (Int (_ BitVec 64)) V!42669)

(assert (=> b!1121935 (= lt!498512 (array!73143 (store (arr!35220 _values!996) i!673 (ValueCellFull!13369 (dynLambda!2471 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35757 _values!996)))))

(declare-fun lt!498515 () ListLongMap!15791)

(assert (=> b!1121935 (= lt!498515 (getCurrentListMapNoExtraKeys!4372 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121936 () Bool)

(declare-fun e!638813 () Bool)

(declare-fun tp_is_empty!28157 () Bool)

(assert (=> b!1121936 (= e!638813 tp_is_empty!28157)))

(declare-fun b!1121937 () Bool)

(declare-fun res!749606 () Bool)

(assert (=> b!1121937 (=> (not res!749606) (not e!638810))))

(declare-datatypes ((List!24649 0))(
  ( (Nil!24646) (Cons!24645 (h!25854 (_ BitVec 64)) (t!35275 List!24649)) )
))
(declare-fun arrayNoDuplicates!0 (array!73140 (_ BitVec 32) List!24649) Bool)

(assert (=> b!1121937 (= res!749606 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24646))))

(declare-fun mapNonEmpty!44053 () Bool)

(declare-fun tp!83586 () Bool)

(declare-fun e!638807 () Bool)

(assert (=> mapNonEmpty!44053 (= mapRes!44053 (and tp!83586 e!638807))))

(declare-fun mapKey!44053 () (_ BitVec 32))

(declare-fun mapValue!44053 () ValueCell!13369)

(declare-fun mapRest!44053 () (Array (_ BitVec 32) ValueCell!13369))

(assert (=> mapNonEmpty!44053 (= (arr!35220 _values!996) (store mapRest!44053 mapKey!44053 mapValue!44053))))

(declare-fun bm!47161 () Bool)

(assert (=> bm!47161 (= call!47164 (getCurrentListMapNoExtraKeys!4372 lt!498513 lt!498512 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121938 () Bool)

(declare-fun res!749607 () Bool)

(assert (=> b!1121938 (=> (not res!749607) (not e!638810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121938 (= res!749607 (validMask!0 mask!1564))))

(declare-fun b!1121939 () Bool)

(declare-fun res!749609 () Bool)

(assert (=> b!1121939 (=> (not res!749609) (not e!638810))))

(assert (=> b!1121939 (= res!749609 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35756 _keys!1208))))))

(declare-fun b!1121940 () Bool)

(assert (=> b!1121940 (= e!638811 (= call!47164 call!47165))))

(declare-fun b!1121941 () Bool)

(declare-fun e!638806 () Bool)

(assert (=> b!1121941 (= e!638806 (and e!638813 mapRes!44053))))

(declare-fun condMapEmpty!44053 () Bool)

(declare-fun mapDefault!44053 () ValueCell!13369)

