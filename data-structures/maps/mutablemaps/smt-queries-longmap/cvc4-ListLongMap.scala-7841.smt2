; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97830 () Bool)

(assert start!97830)

(declare-fun b_free!23495 () Bool)

(declare-fun b_next!23495 () Bool)

(assert (=> start!97830 (= b_free!23495 (not b_next!23495))))

(declare-fun tp!83190 () Bool)

(declare-fun b_and!37795 () Bool)

(assert (=> start!97830 (= tp!83190 b_and!37795)))

(declare-fun b!1118788 () Bool)

(declare-fun res!747343 () Bool)

(declare-fun e!637265 () Bool)

(assert (=> b!1118788 (=> (not res!747343) (not e!637265))))

(declare-datatypes ((array!72878 0))(
  ( (array!72879 (arr!35088 (Array (_ BitVec 32) (_ BitVec 64))) (size!35625 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72878)

(declare-datatypes ((List!24537 0))(
  ( (Nil!24534) (Cons!24533 (h!25742 (_ BitVec 64)) (t!35031 List!24537)) )
))
(declare-fun arrayNoDuplicates!0 (array!72878 (_ BitVec 32) List!24537) Bool)

(assert (=> b!1118788 (= res!747343 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24534))))

(declare-fun mapIsEmpty!43855 () Bool)

(declare-fun mapRes!43855 () Bool)

(assert (=> mapIsEmpty!43855 mapRes!43855))

(declare-fun b!1118789 () Bool)

(declare-fun res!747350 () Bool)

(assert (=> b!1118789 (=> (not res!747350) (not e!637265))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72878 (_ BitVec 32)) Bool)

(assert (=> b!1118789 (= res!747350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!747341 () Bool)

(assert (=> start!97830 (=> (not res!747341) (not e!637265))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97830 (= res!747341 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35625 _keys!1208))))))

(assert (=> start!97830 e!637265))

(declare-fun tp_is_empty!28025 () Bool)

(assert (=> start!97830 tp_is_empty!28025))

(declare-fun array_inv!26822 (array!72878) Bool)

(assert (=> start!97830 (array_inv!26822 _keys!1208)))

(assert (=> start!97830 true))

(assert (=> start!97830 tp!83190))

(declare-datatypes ((V!42493 0))(
  ( (V!42494 (val!14069 Int)) )
))
(declare-datatypes ((ValueCell!13303 0))(
  ( (ValueCellFull!13303 (v!16703 V!42493)) (EmptyCell!13303) )
))
(declare-datatypes ((array!72880 0))(
  ( (array!72881 (arr!35089 (Array (_ BitVec 32) ValueCell!13303)) (size!35626 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72880)

(declare-fun e!637263 () Bool)

(declare-fun array_inv!26823 (array!72880) Bool)

(assert (=> start!97830 (and (array_inv!26823 _values!996) e!637263)))

(declare-fun b!1118790 () Bool)

(declare-fun e!637259 () Bool)

(assert (=> b!1118790 (= e!637259 tp_is_empty!28025)))

(declare-fun b!1118791 () Bool)

(declare-fun res!747346 () Bool)

(assert (=> b!1118791 (=> (not res!747346) (not e!637265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118791 (= res!747346 (validMask!0 mask!1564))))

(declare-fun b!1118792 () Bool)

(declare-fun e!637264 () Bool)

(assert (=> b!1118792 (= e!637264 tp_is_empty!28025)))

(declare-fun b!1118793 () Bool)

(declare-fun e!637260 () Bool)

(assert (=> b!1118793 (= e!637260 true)))

(declare-fun zeroValue!944 () V!42493)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!497560 () array!72878)

(declare-datatypes ((tuple2!17700 0))(
  ( (tuple2!17701 (_1!8860 (_ BitVec 64)) (_2!8860 V!42493)) )
))
(declare-datatypes ((List!24538 0))(
  ( (Nil!24535) (Cons!24534 (h!25743 tuple2!17700) (t!35032 List!24538)) )
))
(declare-datatypes ((ListLongMap!15681 0))(
  ( (ListLongMap!15682 (toList!7856 List!24538)) )
))
(declare-fun lt!497561 () ListLongMap!15681)

(declare-fun minValue!944 () V!42493)

(declare-fun getCurrentListMapNoExtraKeys!4317 (array!72878 array!72880 (_ BitVec 32) (_ BitVec 32) V!42493 V!42493 (_ BitVec 32) Int) ListLongMap!15681)

(declare-fun dynLambda!2419 (Int (_ BitVec 64)) V!42493)

(assert (=> b!1118793 (= lt!497561 (getCurrentListMapNoExtraKeys!4317 lt!497560 (array!72881 (store (arr!35089 _values!996) i!673 (ValueCellFull!13303 (dynLambda!2419 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35626 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497562 () ListLongMap!15681)

(assert (=> b!1118793 (= lt!497562 (getCurrentListMapNoExtraKeys!4317 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118794 () Bool)

(declare-fun res!747349 () Bool)

(assert (=> b!1118794 (=> (not res!747349) (not e!637265))))

(assert (=> b!1118794 (= res!747349 (and (= (size!35626 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35625 _keys!1208) (size!35626 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118795 () Bool)

(assert (=> b!1118795 (= e!637263 (and e!637259 mapRes!43855))))

(declare-fun condMapEmpty!43855 () Bool)

(declare-fun mapDefault!43855 () ValueCell!13303)

