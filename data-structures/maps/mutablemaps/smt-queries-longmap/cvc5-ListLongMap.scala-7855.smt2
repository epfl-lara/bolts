; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97910 () Bool)

(assert start!97910)

(declare-fun b_free!23575 () Bool)

(declare-fun b_next!23575 () Bool)

(assert (=> start!97910 (= b_free!23575 (not b_next!23575))))

(declare-fun tp!83429 () Bool)

(declare-fun b_and!37955 () Bool)

(assert (=> start!97910 (= tp!83429 b_and!37955)))

(declare-fun b!1120554 () Bool)

(declare-fun res!748664 () Bool)

(declare-fun e!638105 () Bool)

(assert (=> b!1120554 (=> (not res!748664) (not e!638105))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120554 (= res!748664 (validKeyInArray!0 k!934))))

(declare-fun res!748667 () Bool)

(assert (=> start!97910 (=> (not res!748667) (not e!638105))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73036 0))(
  ( (array!73037 (arr!35167 (Array (_ BitVec 32) (_ BitVec 64))) (size!35704 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73036)

(assert (=> start!97910 (= res!748667 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35704 _keys!1208))))))

(assert (=> start!97910 e!638105))

(declare-fun tp_is_empty!28105 () Bool)

(assert (=> start!97910 tp_is_empty!28105))

(declare-fun array_inv!26880 (array!73036) Bool)

(assert (=> start!97910 (array_inv!26880 _keys!1208)))

(assert (=> start!97910 true))

(assert (=> start!97910 tp!83429))

(declare-datatypes ((V!42601 0))(
  ( (V!42602 (val!14109 Int)) )
))
(declare-datatypes ((ValueCell!13343 0))(
  ( (ValueCellFull!13343 (v!16743 V!42601)) (EmptyCell!13343) )
))
(declare-datatypes ((array!73038 0))(
  ( (array!73039 (arr!35168 (Array (_ BitVec 32) ValueCell!13343)) (size!35705 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73038)

(declare-fun e!638108 () Bool)

(declare-fun array_inv!26881 (array!73038) Bool)

(assert (=> start!97910 (and (array_inv!26881 _values!996) e!638108)))

(declare-fun b!1120555 () Bool)

(declare-fun res!748672 () Bool)

(assert (=> b!1120555 (=> (not res!748672) (not e!638105))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1120555 (= res!748672 (and (= (size!35705 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35704 _keys!1208) (size!35705 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120556 () Bool)

(declare-fun e!638110 () Bool)

(declare-datatypes ((tuple2!17760 0))(
  ( (tuple2!17761 (_1!8890 (_ BitVec 64)) (_2!8890 V!42601)) )
))
(declare-datatypes ((List!24599 0))(
  ( (Nil!24596) (Cons!24595 (h!25804 tuple2!17760) (t!35173 List!24599)) )
))
(declare-datatypes ((ListLongMap!15741 0))(
  ( (ListLongMap!15742 (toList!7886 List!24599)) )
))
(declare-fun call!47009 () ListLongMap!15741)

(declare-fun call!47008 () ListLongMap!15741)

(assert (=> b!1120556 (= e!638110 (= call!47009 call!47008))))

(declare-fun b!1120557 () Bool)

(declare-fun e!638111 () Bool)

(declare-fun e!638107 () Bool)

(assert (=> b!1120557 (= e!638111 (not e!638107))))

(declare-fun res!748668 () Bool)

(assert (=> b!1120557 (=> res!748668 e!638107)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120557 (= res!748668 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120557 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36691 0))(
  ( (Unit!36692) )
))
(declare-fun lt!498047 () Unit!36691)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73036 (_ BitVec 64) (_ BitVec 32)) Unit!36691)

(assert (=> b!1120557 (= lt!498047 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1120558 () Bool)

(declare-fun res!748674 () Bool)

(assert (=> b!1120558 (=> (not res!748674) (not e!638105))))

(assert (=> b!1120558 (= res!748674 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35704 _keys!1208))))))

(declare-fun b!1120559 () Bool)

(assert (=> b!1120559 (= e!638105 e!638111)))

(declare-fun res!748666 () Bool)

(assert (=> b!1120559 (=> (not res!748666) (not e!638111))))

(declare-fun lt!498043 () array!73036)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73036 (_ BitVec 32)) Bool)

(assert (=> b!1120559 (= res!748666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498043 mask!1564))))

(assert (=> b!1120559 (= lt!498043 (array!73037 (store (arr!35167 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35704 _keys!1208)))))

(declare-fun b!1120560 () Bool)

(declare-fun -!1055 (ListLongMap!15741 (_ BitVec 64)) ListLongMap!15741)

(assert (=> b!1120560 (= e!638110 (= call!47009 (-!1055 call!47008 k!934)))))

(declare-fun b!1120561 () Bool)

(declare-fun res!748671 () Bool)

(assert (=> b!1120561 (=> (not res!748671) (not e!638105))))

(assert (=> b!1120561 (= res!748671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120562 () Bool)

(declare-fun res!748673 () Bool)

(assert (=> b!1120562 (=> (not res!748673) (not e!638105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120562 (= res!748673 (validMask!0 mask!1564))))

(declare-fun b!1120563 () Bool)

(declare-fun e!638104 () Bool)

(assert (=> b!1120563 (= e!638104 tp_is_empty!28105)))

(declare-fun b!1120564 () Bool)

(declare-fun res!748670 () Bool)

(assert (=> b!1120564 (=> (not res!748670) (not e!638105))))

(assert (=> b!1120564 (= res!748670 (= (select (arr!35167 _keys!1208) i!673) k!934))))

(declare-fun b!1120565 () Bool)

(declare-fun res!748663 () Bool)

(assert (=> b!1120565 (=> (not res!748663) (not e!638105))))

(declare-datatypes ((List!24600 0))(
  ( (Nil!24597) (Cons!24596 (h!25805 (_ BitVec 64)) (t!35174 List!24600)) )
))
(declare-fun arrayNoDuplicates!0 (array!73036 (_ BitVec 32) List!24600) Bool)

(assert (=> b!1120565 (= res!748663 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24597))))

(declare-fun mapIsEmpty!43975 () Bool)

(declare-fun mapRes!43975 () Bool)

(assert (=> mapIsEmpty!43975 mapRes!43975))

(declare-fun mapNonEmpty!43975 () Bool)

(declare-fun tp!83430 () Bool)

(assert (=> mapNonEmpty!43975 (= mapRes!43975 (and tp!83430 e!638104))))

(declare-fun mapValue!43975 () ValueCell!13343)

(declare-fun mapKey!43975 () (_ BitVec 32))

(declare-fun mapRest!43975 () (Array (_ BitVec 32) ValueCell!13343))

(assert (=> mapNonEmpty!43975 (= (arr!35168 _values!996) (store mapRest!43975 mapKey!43975 mapValue!43975))))

(declare-fun zeroValue!944 () V!42601)

(declare-fun bm!47005 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42601)

(declare-fun lt!498046 () array!73038)

(declare-fun getCurrentListMapNoExtraKeys!4347 (array!73036 array!73038 (_ BitVec 32) (_ BitVec 32) V!42601 V!42601 (_ BitVec 32) Int) ListLongMap!15741)

(assert (=> bm!47005 (= call!47009 (getCurrentListMapNoExtraKeys!4347 lt!498043 lt!498046 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120566 () Bool)

(declare-fun res!748669 () Bool)

(assert (=> b!1120566 (=> (not res!748669) (not e!638111))))

(assert (=> b!1120566 (= res!748669 (arrayNoDuplicates!0 lt!498043 #b00000000000000000000000000000000 Nil!24597))))

(declare-fun b!1120567 () Bool)

(declare-fun e!638109 () Bool)

(assert (=> b!1120567 (= e!638108 (and e!638109 mapRes!43975))))

(declare-fun condMapEmpty!43975 () Bool)

(declare-fun mapDefault!43975 () ValueCell!13343)

