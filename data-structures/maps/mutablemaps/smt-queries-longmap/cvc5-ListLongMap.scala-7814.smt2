; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97664 () Bool)

(assert start!97664)

(declare-fun b!1115458 () Bool)

(declare-fun e!635678 () Bool)

(assert (=> b!1115458 (= e!635678 (not true))))

(declare-datatypes ((array!72558 0))(
  ( (array!72559 (arr!34928 (Array (_ BitVec 32) (_ BitVec 64))) (size!35465 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72558)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115458 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36509 0))(
  ( (Unit!36510) )
))
(declare-fun lt!496965 () Unit!36509)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72558 (_ BitVec 64) (_ BitVec 32)) Unit!36509)

(assert (=> b!1115458 (= lt!496965 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1115459 () Bool)

(declare-fun e!635680 () Bool)

(declare-fun tp_is_empty!27859 () Bool)

(assert (=> b!1115459 (= e!635680 tp_is_empty!27859)))

(declare-fun mapNonEmpty!43606 () Bool)

(declare-fun mapRes!43606 () Bool)

(declare-fun tp!82851 () Bool)

(assert (=> mapNonEmpty!43606 (= mapRes!43606 (and tp!82851 e!635680))))

(declare-datatypes ((V!42273 0))(
  ( (V!42274 (val!13986 Int)) )
))
(declare-datatypes ((ValueCell!13220 0))(
  ( (ValueCellFull!13220 (v!16620 V!42273)) (EmptyCell!13220) )
))
(declare-fun mapRest!43606 () (Array (_ BitVec 32) ValueCell!13220))

(declare-fun mapValue!43606 () ValueCell!13220)

(declare-datatypes ((array!72560 0))(
  ( (array!72561 (arr!34929 (Array (_ BitVec 32) ValueCell!13220)) (size!35466 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72560)

(declare-fun mapKey!43606 () (_ BitVec 32))

(assert (=> mapNonEmpty!43606 (= (arr!34929 _values!996) (store mapRest!43606 mapKey!43606 mapValue!43606))))

(declare-fun mapIsEmpty!43606 () Bool)

(assert (=> mapIsEmpty!43606 mapRes!43606))

(declare-fun b!1115460 () Bool)

(declare-fun res!744763 () Bool)

(declare-fun e!635676 () Bool)

(assert (=> b!1115460 (=> (not res!744763) (not e!635676))))

(assert (=> b!1115460 (= res!744763 (= (select (arr!34928 _keys!1208) i!673) k!934))))

(declare-fun b!1115461 () Bool)

(declare-fun res!744768 () Bool)

(assert (=> b!1115461 (=> (not res!744768) (not e!635676))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72558 (_ BitVec 32)) Bool)

(assert (=> b!1115461 (= res!744768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115462 () Bool)

(declare-fun e!635679 () Bool)

(declare-fun e!635677 () Bool)

(assert (=> b!1115462 (= e!635679 (and e!635677 mapRes!43606))))

(declare-fun condMapEmpty!43606 () Bool)

(declare-fun mapDefault!43606 () ValueCell!13220)

