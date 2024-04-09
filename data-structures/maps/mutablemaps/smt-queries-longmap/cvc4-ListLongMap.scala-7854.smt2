; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97908 () Bool)

(assert start!97908)

(declare-fun b_free!23573 () Bool)

(declare-fun b_next!23573 () Bool)

(assert (=> start!97908 (= b_free!23573 (not b_next!23573))))

(declare-fun tp!83424 () Bool)

(declare-fun b_and!37951 () Bool)

(assert (=> start!97908 (= tp!83424 b_and!37951)))

(declare-fun b!1120504 () Bool)

(declare-fun res!748630 () Bool)

(declare-fun e!638078 () Bool)

(assert (=> b!1120504 (=> (not res!748630) (not e!638078))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120504 (= res!748630 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!43972 () Bool)

(declare-fun mapRes!43972 () Bool)

(assert (=> mapIsEmpty!43972 mapRes!43972))

(declare-fun b!1120505 () Bool)

(declare-fun res!748638 () Bool)

(assert (=> b!1120505 (=> (not res!748638) (not e!638078))))

(declare-datatypes ((array!73032 0))(
  ( (array!73033 (arr!35165 (Array (_ BitVec 32) (_ BitVec 64))) (size!35702 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73032)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120505 (= res!748638 (= (select (arr!35165 _keys!1208) i!673) k!934))))

(declare-fun b!1120506 () Bool)

(declare-fun res!748629 () Bool)

(declare-fun e!638081 () Bool)

(assert (=> b!1120506 (=> (not res!748629) (not e!638081))))

(declare-fun lt!498029 () array!73032)

(declare-datatypes ((List!24597 0))(
  ( (Nil!24594) (Cons!24593 (h!25802 (_ BitVec 64)) (t!35169 List!24597)) )
))
(declare-fun arrayNoDuplicates!0 (array!73032 (_ BitVec 32) List!24597) Bool)

(assert (=> b!1120506 (= res!748629 (arrayNoDuplicates!0 lt!498029 #b00000000000000000000000000000000 Nil!24594))))

(declare-fun b!1120507 () Bool)

(assert (=> b!1120507 (= e!638078 e!638081)))

(declare-fun res!748628 () Bool)

(assert (=> b!1120507 (=> (not res!748628) (not e!638081))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73032 (_ BitVec 32)) Bool)

(assert (=> b!1120507 (= res!748628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498029 mask!1564))))

(assert (=> b!1120507 (= lt!498029 (array!73033 (store (arr!35165 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35702 _keys!1208)))))

(declare-fun b!1120508 () Bool)

(declare-fun e!638083 () Bool)

(assert (=> b!1120508 (= e!638081 (not e!638083))))

(declare-fun res!748634 () Bool)

(assert (=> b!1120508 (=> res!748634 e!638083)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1120508 (= res!748634 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120508 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36689 0))(
  ( (Unit!36690) )
))
(declare-fun lt!498028 () Unit!36689)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73032 (_ BitVec 64) (_ BitVec 32)) Unit!36689)

(assert (=> b!1120508 (= lt!498028 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1120509 () Bool)

(declare-fun res!748635 () Bool)

(assert (=> b!1120509 (=> (not res!748635) (not e!638078))))

(assert (=> b!1120509 (= res!748635 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35702 _keys!1208))))))

(declare-fun b!1120510 () Bool)

(declare-fun res!748631 () Bool)

(assert (=> b!1120510 (=> (not res!748631) (not e!638078))))

(assert (=> b!1120510 (= res!748631 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24594))))

(declare-fun b!1120511 () Bool)

(assert (=> b!1120511 (= e!638083 true)))

(declare-datatypes ((V!42597 0))(
  ( (V!42598 (val!14108 Int)) )
))
(declare-fun zeroValue!944 () V!42597)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13342 0))(
  ( (ValueCellFull!13342 (v!16742 V!42597)) (EmptyCell!13342) )
))
(declare-datatypes ((array!73034 0))(
  ( (array!73035 (arr!35166 (Array (_ BitVec 32) ValueCell!13342)) (size!35703 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73034)

(declare-datatypes ((tuple2!17758 0))(
  ( (tuple2!17759 (_1!8889 (_ BitVec 64)) (_2!8889 V!42597)) )
))
(declare-datatypes ((List!24598 0))(
  ( (Nil!24595) (Cons!24594 (h!25803 tuple2!17758) (t!35170 List!24598)) )
))
(declare-datatypes ((ListLongMap!15739 0))(
  ( (ListLongMap!15740 (toList!7885 List!24598)) )
))
(declare-fun lt!498027 () ListLongMap!15739)

(declare-fun minValue!944 () V!42597)

(declare-fun getCurrentListMapNoExtraKeys!4346 (array!73032 array!73034 (_ BitVec 32) (_ BitVec 32) V!42597 V!42597 (_ BitVec 32) Int) ListLongMap!15739)

(declare-fun dynLambda!2448 (Int (_ BitVec 64)) V!42597)

(assert (=> b!1120511 (= lt!498027 (getCurrentListMapNoExtraKeys!4346 lt!498029 (array!73035 (store (arr!35166 _values!996) i!673 (ValueCellFull!13342 (dynLambda!2448 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35703 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!498030 () ListLongMap!15739)

(assert (=> b!1120511 (= lt!498030 (getCurrentListMapNoExtraKeys!4346 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120512 () Bool)

(declare-fun res!748632 () Bool)

(assert (=> b!1120512 (=> (not res!748632) (not e!638078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120512 (= res!748632 (validMask!0 mask!1564))))

(declare-fun res!748633 () Bool)

(assert (=> start!97908 (=> (not res!748633) (not e!638078))))

(assert (=> start!97908 (= res!748633 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35702 _keys!1208))))))

(assert (=> start!97908 e!638078))

(declare-fun tp_is_empty!28103 () Bool)

(assert (=> start!97908 tp_is_empty!28103))

(declare-fun array_inv!26878 (array!73032) Bool)

(assert (=> start!97908 (array_inv!26878 _keys!1208)))

(assert (=> start!97908 true))

(assert (=> start!97908 tp!83424))

(declare-fun e!638084 () Bool)

(declare-fun array_inv!26879 (array!73034) Bool)

(assert (=> start!97908 (and (array_inv!26879 _values!996) e!638084)))

(declare-fun b!1120513 () Bool)

(declare-fun res!748637 () Bool)

(assert (=> b!1120513 (=> (not res!748637) (not e!638078))))

(assert (=> b!1120513 (= res!748637 (and (= (size!35703 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35702 _keys!1208) (size!35703 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43972 () Bool)

(declare-fun tp!83423 () Bool)

(declare-fun e!638082 () Bool)

(assert (=> mapNonEmpty!43972 (= mapRes!43972 (and tp!83423 e!638082))))

(declare-fun mapValue!43972 () ValueCell!13342)

(declare-fun mapKey!43972 () (_ BitVec 32))

(declare-fun mapRest!43972 () (Array (_ BitVec 32) ValueCell!13342))

(assert (=> mapNonEmpty!43972 (= (arr!35166 _values!996) (store mapRest!43972 mapKey!43972 mapValue!43972))))

(declare-fun b!1120514 () Bool)

(assert (=> b!1120514 (= e!638082 tp_is_empty!28103)))

(declare-fun b!1120515 () Bool)

(declare-fun e!638079 () Bool)

(assert (=> b!1120515 (= e!638079 tp_is_empty!28103)))

(declare-fun b!1120516 () Bool)

(declare-fun res!748636 () Bool)

(assert (=> b!1120516 (=> (not res!748636) (not e!638078))))

(assert (=> b!1120516 (= res!748636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120517 () Bool)

(assert (=> b!1120517 (= e!638084 (and e!638079 mapRes!43972))))

(declare-fun condMapEmpty!43972 () Bool)

(declare-fun mapDefault!43972 () ValueCell!13342)

