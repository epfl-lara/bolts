; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97550 () Bool)

(assert start!97550)

(declare-fun b!1113235 () Bool)

(declare-fun res!743053 () Bool)

(declare-fun e!634651 () Bool)

(assert (=> b!1113235 (=> (not res!743053) (not e!634651))))

(declare-datatypes ((array!72346 0))(
  ( (array!72347 (arr!34822 (Array (_ BitVec 32) (_ BitVec 64))) (size!35359 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72346)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42121 0))(
  ( (V!42122 (val!13929 Int)) )
))
(declare-datatypes ((ValueCell!13163 0))(
  ( (ValueCellFull!13163 (v!16563 V!42121)) (EmptyCell!13163) )
))
(declare-datatypes ((array!72348 0))(
  ( (array!72349 (arr!34823 (Array (_ BitVec 32) ValueCell!13163)) (size!35360 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72348)

(assert (=> b!1113235 (= res!743053 (and (= (size!35360 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35359 _keys!1208) (size!35360 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113236 () Bool)

(declare-fun res!743055 () Bool)

(assert (=> b!1113236 (=> (not res!743055) (not e!634651))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113236 (= res!743055 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35359 _keys!1208))))))

(declare-fun res!743059 () Bool)

(assert (=> start!97550 (=> (not res!743059) (not e!634651))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97550 (= res!743059 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35359 _keys!1208))))))

(assert (=> start!97550 e!634651))

(declare-fun array_inv!26644 (array!72346) Bool)

(assert (=> start!97550 (array_inv!26644 _keys!1208)))

(assert (=> start!97550 true))

(declare-fun e!634650 () Bool)

(declare-fun array_inv!26645 (array!72348) Bool)

(assert (=> start!97550 (and (array_inv!26645 _values!996) e!634650)))

(declare-fun b!1113237 () Bool)

(declare-fun e!634654 () Bool)

(declare-fun tp_is_empty!27745 () Bool)

(assert (=> b!1113237 (= e!634654 tp_is_empty!27745)))

(declare-fun mapNonEmpty!43435 () Bool)

(declare-fun mapRes!43435 () Bool)

(declare-fun tp!82680 () Bool)

(declare-fun e!634655 () Bool)

(assert (=> mapNonEmpty!43435 (= mapRes!43435 (and tp!82680 e!634655))))

(declare-fun mapRest!43435 () (Array (_ BitVec 32) ValueCell!13163))

(declare-fun mapValue!43435 () ValueCell!13163)

(declare-fun mapKey!43435 () (_ BitVec 32))

(assert (=> mapNonEmpty!43435 (= (arr!34823 _values!996) (store mapRest!43435 mapKey!43435 mapValue!43435))))

(declare-fun b!1113238 () Bool)

(declare-fun e!634652 () Bool)

(assert (=> b!1113238 (= e!634651 e!634652)))

(declare-fun res!743057 () Bool)

(assert (=> b!1113238 (=> (not res!743057) (not e!634652))))

(declare-fun lt!496622 () array!72346)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72346 (_ BitVec 32)) Bool)

(assert (=> b!1113238 (= res!743057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496622 mask!1564))))

(assert (=> b!1113238 (= lt!496622 (array!72347 (store (arr!34822 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35359 _keys!1208)))))

(declare-fun mapIsEmpty!43435 () Bool)

(assert (=> mapIsEmpty!43435 mapRes!43435))

(declare-fun b!1113239 () Bool)

(assert (=> b!1113239 (= e!634652 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113239 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36443 0))(
  ( (Unit!36444) )
))
(declare-fun lt!496623 () Unit!36443)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72346 (_ BitVec 64) (_ BitVec 32)) Unit!36443)

(assert (=> b!1113239 (= lt!496623 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1113240 () Bool)

(declare-fun res!743052 () Bool)

(assert (=> b!1113240 (=> (not res!743052) (not e!634651))))

(assert (=> b!1113240 (= res!743052 (= (select (arr!34822 _keys!1208) i!673) k!934))))

(declare-fun b!1113241 () Bool)

(assert (=> b!1113241 (= e!634655 tp_is_empty!27745)))

(declare-fun b!1113242 () Bool)

(declare-fun res!743058 () Bool)

(assert (=> b!1113242 (=> (not res!743058) (not e!634651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113242 (= res!743058 (validKeyInArray!0 k!934))))

(declare-fun b!1113243 () Bool)

(assert (=> b!1113243 (= e!634650 (and e!634654 mapRes!43435))))

(declare-fun condMapEmpty!43435 () Bool)

(declare-fun mapDefault!43435 () ValueCell!13163)

