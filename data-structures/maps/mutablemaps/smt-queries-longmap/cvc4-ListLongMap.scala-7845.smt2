; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97854 () Bool)

(assert start!97854)

(declare-fun b_free!23519 () Bool)

(declare-fun b_next!23519 () Bool)

(assert (=> start!97854 (= b_free!23519 (not b_next!23519))))

(declare-fun tp!83261 () Bool)

(declare-fun b_and!37843 () Bool)

(assert (=> start!97854 (= tp!83261 b_and!37843)))

(declare-fun b!1119316 () Bool)

(declare-fun res!747738 () Bool)

(declare-fun e!637514 () Bool)

(assert (=> b!1119316 (=> (not res!747738) (not e!637514))))

(declare-datatypes ((array!72926 0))(
  ( (array!72927 (arr!35112 (Array (_ BitVec 32) (_ BitVec 64))) (size!35649 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72926)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72926 (_ BitVec 32)) Bool)

(assert (=> b!1119316 (= res!747738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!747740 () Bool)

(assert (=> start!97854 (=> (not res!747740) (not e!637514))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97854 (= res!747740 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35649 _keys!1208))))))

(assert (=> start!97854 e!637514))

(declare-fun tp_is_empty!28049 () Bool)

(assert (=> start!97854 tp_is_empty!28049))

(declare-fun array_inv!26838 (array!72926) Bool)

(assert (=> start!97854 (array_inv!26838 _keys!1208)))

(assert (=> start!97854 true))

(assert (=> start!97854 tp!83261))

(declare-datatypes ((V!42525 0))(
  ( (V!42526 (val!14081 Int)) )
))
(declare-datatypes ((ValueCell!13315 0))(
  ( (ValueCellFull!13315 (v!16715 V!42525)) (EmptyCell!13315) )
))
(declare-datatypes ((array!72928 0))(
  ( (array!72929 (arr!35113 (Array (_ BitVec 32) ValueCell!13315)) (size!35650 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72928)

(declare-fun e!637513 () Bool)

(declare-fun array_inv!26839 (array!72928) Bool)

(assert (=> start!97854 (and (array_inv!26839 _values!996) e!637513)))

(declare-fun b!1119317 () Bool)

(declare-fun e!637516 () Bool)

(assert (=> b!1119317 (= e!637516 tp_is_empty!28049)))

(declare-fun b!1119318 () Bool)

(declare-fun res!747742 () Bool)

(assert (=> b!1119318 (=> (not res!747742) (not e!637514))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1119318 (= res!747742 (and (= (size!35650 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35649 _keys!1208) (size!35650 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119319 () Bool)

(declare-fun e!637512 () Bool)

(assert (=> b!1119319 (= e!637512 tp_is_empty!28049)))

(declare-fun b!1119320 () Bool)

(declare-fun e!637517 () Bool)

(assert (=> b!1119320 (= e!637517 true)))

(declare-fun zeroValue!944 () V!42525)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17720 0))(
  ( (tuple2!17721 (_1!8870 (_ BitVec 64)) (_2!8870 V!42525)) )
))
(declare-datatypes ((List!24557 0))(
  ( (Nil!24554) (Cons!24553 (h!25762 tuple2!17720) (t!35075 List!24557)) )
))
(declare-datatypes ((ListLongMap!15701 0))(
  ( (ListLongMap!15702 (toList!7866 List!24557)) )
))
(declare-fun lt!497706 () ListLongMap!15701)

(declare-fun minValue!944 () V!42525)

(declare-fun lt!497704 () array!72926)

(declare-fun getCurrentListMapNoExtraKeys!4327 (array!72926 array!72928 (_ BitVec 32) (_ BitVec 32) V!42525 V!42525 (_ BitVec 32) Int) ListLongMap!15701)

(declare-fun dynLambda!2429 (Int (_ BitVec 64)) V!42525)

(assert (=> b!1119320 (= lt!497706 (getCurrentListMapNoExtraKeys!4327 lt!497704 (array!72929 (store (arr!35113 _values!996) i!673 (ValueCellFull!13315 (dynLambda!2429 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35650 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497703 () ListLongMap!15701)

(assert (=> b!1119320 (= lt!497703 (getCurrentListMapNoExtraKeys!4327 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119321 () Bool)

(declare-fun e!637515 () Bool)

(assert (=> b!1119321 (= e!637514 e!637515)))

(declare-fun res!747744 () Bool)

(assert (=> b!1119321 (=> (not res!747744) (not e!637515))))

(assert (=> b!1119321 (= res!747744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497704 mask!1564))))

(assert (=> b!1119321 (= lt!497704 (array!72927 (store (arr!35112 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35649 _keys!1208)))))

(declare-fun b!1119322 () Bool)

(declare-fun mapRes!43891 () Bool)

(assert (=> b!1119322 (= e!637513 (and e!637516 mapRes!43891))))

(declare-fun condMapEmpty!43891 () Bool)

(declare-fun mapDefault!43891 () ValueCell!13315)

