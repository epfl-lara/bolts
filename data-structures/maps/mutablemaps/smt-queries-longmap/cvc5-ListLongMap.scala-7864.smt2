; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97964 () Bool)

(assert start!97964)

(declare-fun b_free!23629 () Bool)

(declare-fun b_next!23629 () Bool)

(assert (=> start!97964 (= b_free!23629 (not b_next!23629))))

(declare-fun tp!83591 () Bool)

(declare-fun b_and!38063 () Bool)

(assert (=> start!97964 (= tp!83591 b_and!38063)))

(declare-fun b!1121987 () Bool)

(declare-fun res!749644 () Bool)

(declare-fun e!638836 () Bool)

(assert (=> b!1121987 (=> (not res!749644) (not e!638836))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73144 0))(
  ( (array!73145 (arr!35221 (Array (_ BitVec 32) (_ BitVec 64))) (size!35758 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73144)

(assert (=> b!1121987 (= res!749644 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35758 _keys!1208))))))

(declare-fun mapIsEmpty!44056 () Bool)

(declare-fun mapRes!44056 () Bool)

(assert (=> mapIsEmpty!44056 mapRes!44056))

(declare-fun b!1121988 () Bool)

(declare-fun e!638837 () Bool)

(assert (=> b!1121988 (= e!638836 e!638837)))

(declare-fun res!749645 () Bool)

(assert (=> b!1121988 (=> (not res!749645) (not e!638837))))

(declare-fun lt!498536 () array!73144)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73144 (_ BitVec 32)) Bool)

(assert (=> b!1121988 (= res!749645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498536 mask!1564))))

(assert (=> b!1121988 (= lt!498536 (array!73145 (store (arr!35221 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35758 _keys!1208)))))

(declare-fun b!1121989 () Bool)

(declare-fun e!638835 () Bool)

(declare-fun tp_is_empty!28159 () Bool)

(assert (=> b!1121989 (= e!638835 tp_is_empty!28159)))

(declare-fun b!1121990 () Bool)

(declare-fun res!749648 () Bool)

(assert (=> b!1121990 (=> (not res!749648) (not e!638836))))

(declare-datatypes ((List!24650 0))(
  ( (Nil!24647) (Cons!24646 (h!25855 (_ BitVec 64)) (t!35278 List!24650)) )
))
(declare-fun arrayNoDuplicates!0 (array!73144 (_ BitVec 32) List!24650) Bool)

(assert (=> b!1121990 (= res!749648 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24647))))

(declare-datatypes ((V!42673 0))(
  ( (V!42674 (val!14136 Int)) )
))
(declare-fun zeroValue!944 () V!42673)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47167 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17812 0))(
  ( (tuple2!17813 (_1!8916 (_ BitVec 64)) (_2!8916 V!42673)) )
))
(declare-datatypes ((List!24651 0))(
  ( (Nil!24648) (Cons!24647 (h!25856 tuple2!17812) (t!35279 List!24651)) )
))
(declare-datatypes ((ListLongMap!15793 0))(
  ( (ListLongMap!15794 (toList!7912 List!24651)) )
))
(declare-fun call!47170 () ListLongMap!15793)

(declare-datatypes ((ValueCell!13370 0))(
  ( (ValueCellFull!13370 (v!16770 V!42673)) (EmptyCell!13370) )
))
(declare-datatypes ((array!73146 0))(
  ( (array!73147 (arr!35222 (Array (_ BitVec 32) ValueCell!13370)) (size!35759 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73146)

(declare-fun defaultEntry!1004 () Int)

(declare-fun c!109394 () Bool)

(declare-fun lt!498537 () array!73146)

(declare-fun minValue!944 () V!42673)

(declare-fun getCurrentListMapNoExtraKeys!4373 (array!73144 array!73146 (_ BitVec 32) (_ BitVec 32) V!42673 V!42673 (_ BitVec 32) Int) ListLongMap!15793)

(assert (=> bm!47167 (= call!47170 (getCurrentListMapNoExtraKeys!4373 (ite c!109394 _keys!1208 lt!498536) (ite c!109394 _values!996 lt!498537) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121991 () Bool)

(declare-fun res!749642 () Bool)

(assert (=> b!1121991 (=> (not res!749642) (not e!638836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121991 (= res!749642 (validMask!0 mask!1564))))

(declare-fun b!1121992 () Bool)

(declare-fun res!749646 () Bool)

(assert (=> b!1121992 (=> (not res!749646) (not e!638836))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1121992 (= res!749646 (= (select (arr!35221 _keys!1208) i!673) k!934))))

(declare-fun bm!47168 () Bool)

(declare-fun call!47171 () ListLongMap!15793)

(assert (=> bm!47168 (= call!47171 (getCurrentListMapNoExtraKeys!4373 (ite c!109394 lt!498536 _keys!1208) (ite c!109394 lt!498537 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121993 () Bool)

(declare-fun e!638840 () Bool)

(assert (=> b!1121993 (= e!638840 (and e!638835 mapRes!44056))))

(declare-fun condMapEmpty!44056 () Bool)

(declare-fun mapDefault!44056 () ValueCell!13370)

