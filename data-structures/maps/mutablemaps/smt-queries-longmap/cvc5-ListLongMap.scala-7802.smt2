; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97592 () Bool)

(assert start!97592)

(declare-fun res!743684 () Bool)

(declare-fun e!635033 () Bool)

(assert (=> start!97592 (=> (not res!743684) (not e!635033))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72422 0))(
  ( (array!72423 (arr!34860 (Array (_ BitVec 32) (_ BitVec 64))) (size!35397 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72422)

(assert (=> start!97592 (= res!743684 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35397 _keys!1208))))))

(assert (=> start!97592 e!635033))

(declare-fun array_inv!26666 (array!72422) Bool)

(assert (=> start!97592 (array_inv!26666 _keys!1208)))

(assert (=> start!97592 true))

(declare-datatypes ((V!42177 0))(
  ( (V!42178 (val!13950 Int)) )
))
(declare-datatypes ((ValueCell!13184 0))(
  ( (ValueCellFull!13184 (v!16584 V!42177)) (EmptyCell!13184) )
))
(declare-datatypes ((array!72424 0))(
  ( (array!72425 (arr!34861 (Array (_ BitVec 32) ValueCell!13184)) (size!35398 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72424)

(declare-fun e!635028 () Bool)

(declare-fun array_inv!26667 (array!72424) Bool)

(assert (=> start!97592 (and (array_inv!26667 _values!996) e!635028)))

(declare-fun b!1114054 () Bool)

(declare-fun res!743689 () Bool)

(assert (=> b!1114054 (=> (not res!743689) (not e!635033))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1114054 (= res!743689 (= (select (arr!34860 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43498 () Bool)

(declare-fun mapRes!43498 () Bool)

(declare-fun tp!82743 () Bool)

(declare-fun e!635032 () Bool)

(assert (=> mapNonEmpty!43498 (= mapRes!43498 (and tp!82743 e!635032))))

(declare-fun mapValue!43498 () ValueCell!13184)

(declare-fun mapRest!43498 () (Array (_ BitVec 32) ValueCell!13184))

(declare-fun mapKey!43498 () (_ BitVec 32))

(assert (=> mapNonEmpty!43498 (= (arr!34861 _values!996) (store mapRest!43498 mapKey!43498 mapValue!43498))))

(declare-fun b!1114055 () Bool)

(declare-fun res!743686 () Bool)

(assert (=> b!1114055 (=> (not res!743686) (not e!635033))))

(assert (=> b!1114055 (= res!743686 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35397 _keys!1208))))))

(declare-fun b!1114056 () Bool)

(declare-fun tp_is_empty!27787 () Bool)

(assert (=> b!1114056 (= e!635032 tp_is_empty!27787)))

(declare-fun b!1114057 () Bool)

(declare-fun res!743691 () Bool)

(declare-fun e!635031 () Bool)

(assert (=> b!1114057 (=> (not res!743691) (not e!635031))))

(declare-fun lt!496748 () array!72422)

(declare-datatypes ((List!24428 0))(
  ( (Nil!24425) (Cons!24424 (h!25633 (_ BitVec 64)) (t!34916 List!24428)) )
))
(declare-fun arrayNoDuplicates!0 (array!72422 (_ BitVec 32) List!24428) Bool)

(assert (=> b!1114057 (= res!743691 (arrayNoDuplicates!0 lt!496748 #b00000000000000000000000000000000 Nil!24425))))

(declare-fun b!1114058 () Bool)

(declare-fun e!635030 () Bool)

(assert (=> b!1114058 (= e!635028 (and e!635030 mapRes!43498))))

(declare-fun condMapEmpty!43498 () Bool)

(declare-fun mapDefault!43498 () ValueCell!13184)

