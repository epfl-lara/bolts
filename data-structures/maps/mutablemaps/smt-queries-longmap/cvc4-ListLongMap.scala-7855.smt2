; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97914 () Bool)

(assert start!97914)

(declare-fun b_free!23579 () Bool)

(declare-fun b_next!23579 () Bool)

(assert (=> start!97914 (= b_free!23579 (not b_next!23579))))

(declare-fun tp!83441 () Bool)

(declare-fun b_and!37963 () Bool)

(assert (=> start!97914 (= tp!83441 b_and!37963)))

(declare-datatypes ((V!42605 0))(
  ( (V!42606 (val!14111 Int)) )
))
(declare-fun zeroValue!944 () V!42605)

(declare-datatypes ((array!73044 0))(
  ( (array!73045 (arr!35171 (Array (_ BitVec 32) (_ BitVec 64))) (size!35708 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73044)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13345 0))(
  ( (ValueCellFull!13345 (v!16745 V!42605)) (EmptyCell!13345) )
))
(declare-datatypes ((array!73046 0))(
  ( (array!73047 (arr!35172 (Array (_ BitVec 32) ValueCell!13345)) (size!35709 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73046)

(declare-datatypes ((tuple2!17764 0))(
  ( (tuple2!17765 (_1!8892 (_ BitVec 64)) (_2!8892 V!42605)) )
))
(declare-datatypes ((List!24603 0))(
  ( (Nil!24600) (Cons!24599 (h!25808 tuple2!17764) (t!35181 List!24603)) )
))
(declare-datatypes ((ListLongMap!15745 0))(
  ( (ListLongMap!15746 (toList!7888 List!24603)) )
))
(declare-fun call!47020 () ListLongMap!15745)

(declare-fun bm!47017 () Bool)

(declare-fun minValue!944 () V!42605)

(declare-fun getCurrentListMapNoExtraKeys!4349 (array!73044 array!73046 (_ BitVec 32) (_ BitVec 32) V!42605 V!42605 (_ BitVec 32) Int) ListLongMap!15745)

(assert (=> bm!47017 (= call!47020 (getCurrentListMapNoExtraKeys!4349 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120660 () Bool)

(declare-fun res!748736 () Bool)

(declare-fun e!638157 () Bool)

(assert (=> b!1120660 (=> (not res!748736) (not e!638157))))

(declare-fun lt!498083 () array!73044)

(declare-datatypes ((List!24604 0))(
  ( (Nil!24601) (Cons!24600 (h!25809 (_ BitVec 64)) (t!35182 List!24604)) )
))
(declare-fun arrayNoDuplicates!0 (array!73044 (_ BitVec 32) List!24604) Bool)

(assert (=> b!1120660 (= res!748736 (arrayNoDuplicates!0 lt!498083 #b00000000000000000000000000000000 Nil!24601))))

(declare-fun mapIsEmpty!43981 () Bool)

(declare-fun mapRes!43981 () Bool)

(assert (=> mapIsEmpty!43981 mapRes!43981))

(declare-fun call!47021 () ListLongMap!15745)

(declare-fun e!638158 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1120661 () Bool)

(declare-fun -!1057 (ListLongMap!15745 (_ BitVec 64)) ListLongMap!15745)

(assert (=> b!1120661 (= e!638158 (= call!47021 (-!1057 call!47020 k!934)))))

(declare-fun b!1120662 () Bool)

(declare-fun e!638164 () Bool)

(declare-fun e!638159 () Bool)

(assert (=> b!1120662 (= e!638164 e!638159)))

(declare-fun res!748745 () Bool)

(assert (=> b!1120662 (=> res!748745 e!638159)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120662 (= res!748745 (not (= from!1455 i!673)))))

(declare-fun lt!498079 () ListLongMap!15745)

(declare-fun lt!498080 () array!73046)

(assert (=> b!1120662 (= lt!498079 (getCurrentListMapNoExtraKeys!4349 lt!498083 lt!498080 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2450 (Int (_ BitVec 64)) V!42605)

(assert (=> b!1120662 (= lt!498080 (array!73047 (store (arr!35172 _values!996) i!673 (ValueCellFull!13345 (dynLambda!2450 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35709 _values!996)))))

(declare-fun lt!498082 () ListLongMap!15745)

(assert (=> b!1120662 (= lt!498082 (getCurrentListMapNoExtraKeys!4349 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120663 () Bool)

(declare-fun e!638162 () Bool)

(declare-fun e!638163 () Bool)

(assert (=> b!1120663 (= e!638162 (and e!638163 mapRes!43981))))

(declare-fun condMapEmpty!43981 () Bool)

(declare-fun mapDefault!43981 () ValueCell!13345)

