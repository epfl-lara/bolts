; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97502 () Bool)

(assert start!97502)

(declare-fun b!1112299 () Bool)

(declare-fun e!634221 () Bool)

(declare-fun e!634219 () Bool)

(assert (=> b!1112299 (= e!634221 e!634219)))

(declare-fun res!742333 () Bool)

(assert (=> b!1112299 (=> (not res!742333) (not e!634219))))

(declare-datatypes ((array!72252 0))(
  ( (array!72253 (arr!34775 (Array (_ BitVec 32) (_ BitVec 64))) (size!35312 (_ BitVec 32))) )
))
(declare-fun lt!496478 () array!72252)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72252 (_ BitVec 32)) Bool)

(assert (=> b!1112299 (= res!742333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496478 mask!1564))))

(declare-fun _keys!1208 () array!72252)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112299 (= lt!496478 (array!72253 (store (arr!34775 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35312 _keys!1208)))))

(declare-fun b!1112300 () Bool)

(declare-fun res!742341 () Bool)

(assert (=> b!1112300 (=> (not res!742341) (not e!634221))))

(assert (=> b!1112300 (= res!742341 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35312 _keys!1208))))))

(declare-fun b!1112301 () Bool)

(declare-fun res!742338 () Bool)

(assert (=> b!1112301 (=> (not res!742338) (not e!634221))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112301 (= res!742338 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43363 () Bool)

(declare-fun mapRes!43363 () Bool)

(declare-fun tp!82608 () Bool)

(declare-fun e!634223 () Bool)

(assert (=> mapNonEmpty!43363 (= mapRes!43363 (and tp!82608 e!634223))))

(declare-datatypes ((V!42057 0))(
  ( (V!42058 (val!13905 Int)) )
))
(declare-datatypes ((ValueCell!13139 0))(
  ( (ValueCellFull!13139 (v!16539 V!42057)) (EmptyCell!13139) )
))
(declare-fun mapValue!43363 () ValueCell!13139)

(declare-fun mapKey!43363 () (_ BitVec 32))

(declare-datatypes ((array!72254 0))(
  ( (array!72255 (arr!34776 (Array (_ BitVec 32) ValueCell!13139)) (size!35313 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72254)

(declare-fun mapRest!43363 () (Array (_ BitVec 32) ValueCell!13139))

(assert (=> mapNonEmpty!43363 (= (arr!34776 _values!996) (store mapRest!43363 mapKey!43363 mapValue!43363))))

(declare-fun b!1112302 () Bool)

(assert (=> b!1112302 (= e!634219 (not true))))

(declare-fun arrayContainsKey!0 (array!72252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112302 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36411 0))(
  ( (Unit!36412) )
))
(declare-fun lt!496479 () Unit!36411)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72252 (_ BitVec 64) (_ BitVec 32)) Unit!36411)

(assert (=> b!1112302 (= lt!496479 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1112303 () Bool)

(declare-fun res!742337 () Bool)

(assert (=> b!1112303 (=> (not res!742337) (not e!634221))))

(assert (=> b!1112303 (= res!742337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112304 () Bool)

(declare-fun res!742336 () Bool)

(assert (=> b!1112304 (=> (not res!742336) (not e!634219))))

(declare-datatypes ((List!24396 0))(
  ( (Nil!24393) (Cons!24392 (h!25601 (_ BitVec 64)) (t!34884 List!24396)) )
))
(declare-fun arrayNoDuplicates!0 (array!72252 (_ BitVec 32) List!24396) Bool)

(assert (=> b!1112304 (= res!742336 (arrayNoDuplicates!0 lt!496478 #b00000000000000000000000000000000 Nil!24393))))

(declare-fun mapIsEmpty!43363 () Bool)

(assert (=> mapIsEmpty!43363 mapRes!43363))

(declare-fun b!1112306 () Bool)

(declare-fun tp_is_empty!27697 () Bool)

(assert (=> b!1112306 (= e!634223 tp_is_empty!27697)))

(declare-fun b!1112307 () Bool)

(declare-fun e!634222 () Bool)

(assert (=> b!1112307 (= e!634222 tp_is_empty!27697)))

(declare-fun b!1112305 () Bool)

(declare-fun res!742334 () Bool)

(assert (=> b!1112305 (=> (not res!742334) (not e!634221))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1112305 (= res!742334 (and (= (size!35313 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35312 _keys!1208) (size!35313 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!742335 () Bool)

(assert (=> start!97502 (=> (not res!742335) (not e!634221))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97502 (= res!742335 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35312 _keys!1208))))))

(assert (=> start!97502 e!634221))

(declare-fun array_inv!26614 (array!72252) Bool)

(assert (=> start!97502 (array_inv!26614 _keys!1208)))

(assert (=> start!97502 true))

(declare-fun e!634218 () Bool)

(declare-fun array_inv!26615 (array!72254) Bool)

(assert (=> start!97502 (and (array_inv!26615 _values!996) e!634218)))

(declare-fun b!1112308 () Bool)

(declare-fun res!742340 () Bool)

(assert (=> b!1112308 (=> (not res!742340) (not e!634221))))

(assert (=> b!1112308 (= res!742340 (= (select (arr!34775 _keys!1208) i!673) k!934))))

(declare-fun b!1112309 () Bool)

(declare-fun res!742332 () Bool)

(assert (=> b!1112309 (=> (not res!742332) (not e!634221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112309 (= res!742332 (validMask!0 mask!1564))))

(declare-fun b!1112310 () Bool)

(declare-fun res!742339 () Bool)

(assert (=> b!1112310 (=> (not res!742339) (not e!634221))))

(assert (=> b!1112310 (= res!742339 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24393))))

(declare-fun b!1112311 () Bool)

(assert (=> b!1112311 (= e!634218 (and e!634222 mapRes!43363))))

(declare-fun condMapEmpty!43363 () Bool)

(declare-fun mapDefault!43363 () ValueCell!13139)

