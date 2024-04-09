; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97334 () Bool)

(assert start!97334)

(declare-fun b_free!23269 () Bool)

(declare-fun b_next!23269 () Bool)

(assert (=> start!97334 (= b_free!23269 (not b_next!23269))))

(declare-fun tp!82106 () Bool)

(declare-fun b_and!37387 () Bool)

(assert (=> start!97334 (= tp!82106 b_and!37387)))

(declare-fun e!632187 () Bool)

(declare-datatypes ((V!41833 0))(
  ( (V!41834 (val!13821 Int)) )
))
(declare-datatypes ((tuple2!17530 0))(
  ( (tuple2!17531 (_1!8775 (_ BitVec 64)) (_2!8775 V!41833)) )
))
(declare-datatypes ((List!24267 0))(
  ( (Nil!24264) (Cons!24263 (h!25472 tuple2!17530) (t!34589 List!24267)) )
))
(declare-datatypes ((ListLongMap!15511 0))(
  ( (ListLongMap!15512 (toList!7771 List!24267)) )
))
(declare-fun call!46504 () ListLongMap!15511)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!46505 () ListLongMap!15511)

(declare-fun b!1108053 () Bool)

(declare-fun -!1003 (ListLongMap!15511 (_ BitVec 64)) ListLongMap!15511)

(assert (=> b!1108053 (= e!632187 (= call!46505 (-!1003 call!46504 k!934)))))

(declare-fun b!1108054 () Bool)

(declare-fun res!739562 () Bool)

(declare-fun e!632182 () Bool)

(assert (=> b!1108054 (=> (not res!739562) (not e!632182))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108054 (= res!739562 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43111 () Bool)

(declare-fun mapRes!43111 () Bool)

(declare-fun tp!82107 () Bool)

(declare-fun e!632185 () Bool)

(assert (=> mapNonEmpty!43111 (= mapRes!43111 (and tp!82107 e!632185))))

(declare-datatypes ((ValueCell!13055 0))(
  ( (ValueCellFull!13055 (v!16455 V!41833)) (EmptyCell!13055) )
))
(declare-fun mapRest!43111 () (Array (_ BitVec 32) ValueCell!13055))

(declare-fun mapKey!43111 () (_ BitVec 32))

(declare-fun mapValue!43111 () ValueCell!13055)

(declare-datatypes ((array!71926 0))(
  ( (array!71927 (arr!34612 (Array (_ BitVec 32) ValueCell!13055)) (size!35149 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71926)

(assert (=> mapNonEmpty!43111 (= (arr!34612 _values!996) (store mapRest!43111 mapKey!43111 mapValue!43111))))

(declare-fun b!1108055 () Bool)

(declare-fun res!739567 () Bool)

(assert (=> b!1108055 (=> (not res!739567) (not e!632182))))

(declare-datatypes ((array!71928 0))(
  ( (array!71929 (arr!34613 (Array (_ BitVec 32) (_ BitVec 64))) (size!35150 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71928)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71928 (_ BitVec 32)) Bool)

(assert (=> b!1108055 (= res!739567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1108056 () Bool)

(declare-fun res!739565 () Bool)

(assert (=> b!1108056 (=> (not res!739565) (not e!632182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108056 (= res!739565 (validMask!0 mask!1564))))

(declare-fun b!1108057 () Bool)

(declare-fun res!739569 () Bool)

(assert (=> b!1108057 (=> (not res!739569) (not e!632182))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108057 (= res!739569 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35150 _keys!1208))))))

(declare-fun b!1108058 () Bool)

(declare-fun res!739571 () Bool)

(assert (=> b!1108058 (=> (not res!739571) (not e!632182))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1108058 (= res!739571 (and (= (size!35149 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35150 _keys!1208) (size!35149 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108059 () Bool)

(declare-fun tp_is_empty!27529 () Bool)

(assert (=> b!1108059 (= e!632185 tp_is_empty!27529)))

(declare-fun b!1108060 () Bool)

(assert (=> b!1108060 (= e!632187 (= call!46504 call!46505))))

(declare-fun b!1108061 () Bool)

(declare-fun e!632186 () Bool)

(declare-fun e!632184 () Bool)

(assert (=> b!1108061 (= e!632186 (and e!632184 mapRes!43111))))

(declare-fun condMapEmpty!43111 () Bool)

(declare-fun mapDefault!43111 () ValueCell!13055)

