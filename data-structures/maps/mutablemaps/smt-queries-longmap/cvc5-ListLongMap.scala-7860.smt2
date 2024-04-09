; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97940 () Bool)

(assert start!97940)

(declare-fun b_free!23605 () Bool)

(declare-fun b_next!23605 () Bool)

(assert (=> start!97940 (= b_free!23605 (not b_next!23605))))

(declare-fun tp!83519 () Bool)

(declare-fun b_and!38015 () Bool)

(assert (=> start!97940 (= tp!83519 b_and!38015)))

(declare-fun b!1121349 () Bool)

(declare-fun res!749205 () Bool)

(declare-fun e!638510 () Bool)

(assert (=> b!1121349 (=> (not res!749205) (not e!638510))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73096 0))(
  ( (array!73097 (arr!35197 (Array (_ BitVec 32) (_ BitVec 64))) (size!35734 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73096)

(assert (=> b!1121349 (= res!749205 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35734 _keys!1208))))))

(declare-fun b!1121350 () Bool)

(declare-fun res!749208 () Bool)

(assert (=> b!1121350 (=> (not res!749208) (not e!638510))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121350 (= res!749208 (validKeyInArray!0 k!934))))

(declare-fun b!1121351 () Bool)

(declare-fun e!638514 () Bool)

(declare-datatypes ((V!42641 0))(
  ( (V!42642 (val!14124 Int)) )
))
(declare-datatypes ((tuple2!17788 0))(
  ( (tuple2!17789 (_1!8904 (_ BitVec 64)) (_2!8904 V!42641)) )
))
(declare-datatypes ((List!24626 0))(
  ( (Nil!24623) (Cons!24622 (h!25831 tuple2!17788) (t!35230 List!24626)) )
))
(declare-datatypes ((ListLongMap!15769 0))(
  ( (ListLongMap!15770 (toList!7900 List!24626)) )
))
(declare-fun call!47099 () ListLongMap!15769)

(declare-fun call!47098 () ListLongMap!15769)

(assert (=> b!1121351 (= e!638514 (= call!47099 call!47098))))

(declare-fun b!1121352 () Bool)

(declare-fun res!749211 () Bool)

(declare-fun e!638511 () Bool)

(assert (=> b!1121352 (=> (not res!749211) (not e!638511))))

(declare-fun lt!498315 () array!73096)

(declare-datatypes ((List!24627 0))(
  ( (Nil!24624) (Cons!24623 (h!25832 (_ BitVec 64)) (t!35231 List!24627)) )
))
(declare-fun arrayNoDuplicates!0 (array!73096 (_ BitVec 32) List!24627) Bool)

(assert (=> b!1121352 (= res!749211 (arrayNoDuplicates!0 lt!498315 #b00000000000000000000000000000000 Nil!24624))))

(declare-fun res!749207 () Bool)

(assert (=> start!97940 (=> (not res!749207) (not e!638510))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97940 (= res!749207 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35734 _keys!1208))))))

(assert (=> start!97940 e!638510))

(declare-fun tp_is_empty!28135 () Bool)

(assert (=> start!97940 tp_is_empty!28135))

(declare-fun array_inv!26904 (array!73096) Bool)

(assert (=> start!97940 (array_inv!26904 _keys!1208)))

(assert (=> start!97940 true))

(assert (=> start!97940 tp!83519))

(declare-datatypes ((ValueCell!13358 0))(
  ( (ValueCellFull!13358 (v!16758 V!42641)) (EmptyCell!13358) )
))
(declare-datatypes ((array!73098 0))(
  ( (array!73099 (arr!35198 (Array (_ BitVec 32) ValueCell!13358)) (size!35735 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73098)

(declare-fun e!638515 () Bool)

(declare-fun array_inv!26905 (array!73098) Bool)

(assert (=> start!97940 (and (array_inv!26905 _values!996) e!638515)))

(declare-fun b!1121353 () Bool)

(assert (=> b!1121353 (= e!638510 e!638511)))

(declare-fun res!749206 () Bool)

(assert (=> b!1121353 (=> (not res!749206) (not e!638511))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73096 (_ BitVec 32)) Bool)

(assert (=> b!1121353 (= res!749206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498315 mask!1564))))

(assert (=> b!1121353 (= lt!498315 (array!73097 (store (arr!35197 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35734 _keys!1208)))))

(declare-fun b!1121354 () Bool)

(declare-fun res!749204 () Bool)

(assert (=> b!1121354 (=> (not res!749204) (not e!638510))))

(assert (=> b!1121354 (= res!749204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121355 () Bool)

(declare-fun e!638513 () Bool)

(assert (=> b!1121355 (= e!638513 tp_is_empty!28135)))

(declare-fun b!1121356 () Bool)

(declare-fun e!638508 () Bool)

(assert (=> b!1121356 (= e!638508 true)))

(assert (=> b!1121356 e!638514))

(declare-fun c!109358 () Bool)

(assert (=> b!1121356 (= c!109358 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42641)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!36715 0))(
  ( (Unit!36716) )
))
(declare-fun lt!498318 () Unit!36715)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42641)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!320 (array!73096 array!73098 (_ BitVec 32) (_ BitVec 32) V!42641 V!42641 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36715)

(assert (=> b!1121356 (= lt!498318 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!320 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121357 () Bool)

(declare-fun e!638516 () Bool)

(assert (=> b!1121357 (= e!638516 tp_is_empty!28135)))

(declare-fun bm!47095 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4361 (array!73096 array!73098 (_ BitVec 32) (_ BitVec 32) V!42641 V!42641 (_ BitVec 32) Int) ListLongMap!15769)

(assert (=> bm!47095 (= call!47098 (getCurrentListMapNoExtraKeys!4361 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44020 () Bool)

(declare-fun mapRes!44020 () Bool)

(declare-fun tp!83520 () Bool)

(assert (=> mapNonEmpty!44020 (= mapRes!44020 (and tp!83520 e!638516))))

(declare-fun mapValue!44020 () ValueCell!13358)

(declare-fun mapRest!44020 () (Array (_ BitVec 32) ValueCell!13358))

(declare-fun mapKey!44020 () (_ BitVec 32))

(assert (=> mapNonEmpty!44020 (= (arr!35198 _values!996) (store mapRest!44020 mapKey!44020 mapValue!44020))))

(declare-fun b!1121358 () Bool)

(declare-fun res!749210 () Bool)

(assert (=> b!1121358 (=> (not res!749210) (not e!638510))))

(assert (=> b!1121358 (= res!749210 (and (= (size!35735 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35734 _keys!1208) (size!35735 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121359 () Bool)

(assert (=> b!1121359 (= e!638515 (and e!638513 mapRes!44020))))

(declare-fun condMapEmpty!44020 () Bool)

(declare-fun mapDefault!44020 () ValueCell!13358)

