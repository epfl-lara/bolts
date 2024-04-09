; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97590 () Bool)

(assert start!97590)

(declare-fun b!1114015 () Bool)

(declare-fun res!743657 () Bool)

(declare-fun e!635013 () Bool)

(assert (=> b!1114015 (=> (not res!743657) (not e!635013))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114015 (= res!743657 (validKeyInArray!0 k!934))))

(declare-fun b!1114016 () Bool)

(declare-fun res!743652 () Bool)

(assert (=> b!1114016 (=> (not res!743652) (not e!635013))))

(declare-datatypes ((array!72418 0))(
  ( (array!72419 (arr!34858 (Array (_ BitVec 32) (_ BitVec 64))) (size!35395 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72418)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42173 0))(
  ( (V!42174 (val!13949 Int)) )
))
(declare-datatypes ((ValueCell!13183 0))(
  ( (ValueCellFull!13183 (v!16583 V!42173)) (EmptyCell!13183) )
))
(declare-datatypes ((array!72420 0))(
  ( (array!72421 (arr!34859 (Array (_ BitVec 32) ValueCell!13183)) (size!35396 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72420)

(assert (=> b!1114016 (= res!743652 (and (= (size!35396 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35395 _keys!1208) (size!35396 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114017 () Bool)

(declare-fun res!743659 () Bool)

(assert (=> b!1114017 (=> (not res!743659) (not e!635013))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114017 (= res!743659 (= (select (arr!34858 _keys!1208) i!673) k!934))))

(declare-fun b!1114018 () Bool)

(declare-fun e!635012 () Bool)

(declare-fun tp_is_empty!27785 () Bool)

(assert (=> b!1114018 (= e!635012 tp_is_empty!27785)))

(declare-fun b!1114019 () Bool)

(declare-fun res!743656 () Bool)

(assert (=> b!1114019 (=> (not res!743656) (not e!635013))))

(assert (=> b!1114019 (= res!743656 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35395 _keys!1208))))))

(declare-fun b!1114020 () Bool)

(declare-fun e!635011 () Bool)

(assert (=> b!1114020 (= e!635011 (not true))))

(declare-fun arrayContainsKey!0 (array!72418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114020 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36469 0))(
  ( (Unit!36470) )
))
(declare-fun lt!496742 () Unit!36469)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72418 (_ BitVec 64) (_ BitVec 32)) Unit!36469)

(assert (=> b!1114020 (= lt!496742 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1114021 () Bool)

(declare-fun e!635015 () Bool)

(declare-fun mapRes!43495 () Bool)

(assert (=> b!1114021 (= e!635015 (and e!635012 mapRes!43495))))

(declare-fun condMapEmpty!43495 () Bool)

(declare-fun mapDefault!43495 () ValueCell!13183)

