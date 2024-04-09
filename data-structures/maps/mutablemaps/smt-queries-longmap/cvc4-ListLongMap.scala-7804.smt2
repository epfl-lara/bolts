; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97608 () Bool)

(assert start!97608)

(declare-fun b!1114366 () Bool)

(declare-fun res!743925 () Bool)

(declare-fun e!635173 () Bool)

(assert (=> b!1114366 (=> (not res!743925) (not e!635173))))

(declare-datatypes ((array!72454 0))(
  ( (array!72455 (arr!34876 (Array (_ BitVec 32) (_ BitVec 64))) (size!35413 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72454)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42197 0))(
  ( (V!42198 (val!13958 Int)) )
))
(declare-datatypes ((ValueCell!13192 0))(
  ( (ValueCellFull!13192 (v!16592 V!42197)) (EmptyCell!13192) )
))
(declare-datatypes ((array!72456 0))(
  ( (array!72457 (arr!34877 (Array (_ BitVec 32) ValueCell!13192)) (size!35414 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72456)

(assert (=> b!1114366 (= res!743925 (and (= (size!35414 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35413 _keys!1208) (size!35414 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114367 () Bool)

(declare-fun res!743931 () Bool)

(assert (=> b!1114367 (=> (not res!743931) (not e!635173))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114367 (= res!743931 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35413 _keys!1208))))))

(declare-fun b!1114368 () Bool)

(declare-fun res!743923 () Bool)

(assert (=> b!1114368 (=> (not res!743923) (not e!635173))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114368 (= res!743923 (validKeyInArray!0 k!934))))

(declare-fun res!743926 () Bool)

(assert (=> start!97608 (=> (not res!743926) (not e!635173))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97608 (= res!743926 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35413 _keys!1208))))))

(assert (=> start!97608 e!635173))

(declare-fun array_inv!26682 (array!72454) Bool)

(assert (=> start!97608 (array_inv!26682 _keys!1208)))

(assert (=> start!97608 true))

(declare-fun e!635172 () Bool)

(declare-fun array_inv!26683 (array!72456) Bool)

(assert (=> start!97608 (and (array_inv!26683 _values!996) e!635172)))

(declare-fun mapNonEmpty!43522 () Bool)

(declare-fun mapRes!43522 () Bool)

(declare-fun tp!82767 () Bool)

(declare-fun e!635176 () Bool)

(assert (=> mapNonEmpty!43522 (= mapRes!43522 (and tp!82767 e!635176))))

(declare-fun mapKey!43522 () (_ BitVec 32))

(declare-fun mapRest!43522 () (Array (_ BitVec 32) ValueCell!13192))

(declare-fun mapValue!43522 () ValueCell!13192)

(assert (=> mapNonEmpty!43522 (= (arr!34877 _values!996) (store mapRest!43522 mapKey!43522 mapValue!43522))))

(declare-fun b!1114369 () Bool)

(declare-fun e!635175 () Bool)

(assert (=> b!1114369 (= e!635173 e!635175)))

(declare-fun res!743922 () Bool)

(assert (=> b!1114369 (=> (not res!743922) (not e!635175))))

(declare-fun lt!496796 () array!72454)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72454 (_ BitVec 32)) Bool)

(assert (=> b!1114369 (= res!743922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496796 mask!1564))))

(assert (=> b!1114369 (= lt!496796 (array!72455 (store (arr!34876 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35413 _keys!1208)))))

(declare-fun b!1114370 () Bool)

(declare-fun res!743928 () Bool)

(assert (=> b!1114370 (=> (not res!743928) (not e!635173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114370 (= res!743928 (validMask!0 mask!1564))))

(declare-fun b!1114371 () Bool)

(declare-fun res!743930 () Bool)

(assert (=> b!1114371 (=> (not res!743930) (not e!635173))))

(declare-datatypes ((List!24435 0))(
  ( (Nil!24432) (Cons!24431 (h!25640 (_ BitVec 64)) (t!34923 List!24435)) )
))
(declare-fun arrayNoDuplicates!0 (array!72454 (_ BitVec 32) List!24435) Bool)

(assert (=> b!1114371 (= res!743930 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24432))))

(declare-fun mapIsEmpty!43522 () Bool)

(assert (=> mapIsEmpty!43522 mapRes!43522))

(declare-fun b!1114372 () Bool)

(assert (=> b!1114372 (= e!635175 (not true))))

(declare-fun arrayContainsKey!0 (array!72454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114372 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36479 0))(
  ( (Unit!36480) )
))
(declare-fun lt!496797 () Unit!36479)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72454 (_ BitVec 64) (_ BitVec 32)) Unit!36479)

(assert (=> b!1114372 (= lt!496797 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1114373 () Bool)

(declare-fun tp_is_empty!27803 () Bool)

(assert (=> b!1114373 (= e!635176 tp_is_empty!27803)))

(declare-fun b!1114374 () Bool)

(declare-fun res!743929 () Bool)

(assert (=> b!1114374 (=> (not res!743929) (not e!635175))))

(assert (=> b!1114374 (= res!743929 (arrayNoDuplicates!0 lt!496796 #b00000000000000000000000000000000 Nil!24432))))

(declare-fun b!1114375 () Bool)

(declare-fun e!635177 () Bool)

(assert (=> b!1114375 (= e!635172 (and e!635177 mapRes!43522))))

(declare-fun condMapEmpty!43522 () Bool)

(declare-fun mapDefault!43522 () ValueCell!13192)

