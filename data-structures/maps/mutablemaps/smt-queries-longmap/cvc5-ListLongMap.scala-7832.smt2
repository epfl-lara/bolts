; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97772 () Bool)

(assert start!97772)

(declare-fun b_free!23437 () Bool)

(declare-fun b_next!23437 () Bool)

(assert (=> start!97772 (= b_free!23437 (not b_next!23437))))

(declare-fun tp!83015 () Bool)

(declare-fun b_and!37733 () Bool)

(assert (=> start!97772 (= tp!83015 b_and!37733)))

(declare-fun mapNonEmpty!43768 () Bool)

(declare-fun mapRes!43768 () Bool)

(declare-fun tp!83016 () Bool)

(declare-fun e!636653 () Bool)

(assert (=> mapNonEmpty!43768 (= mapRes!43768 (and tp!83016 e!636653))))

(declare-datatypes ((V!42417 0))(
  ( (V!42418 (val!14040 Int)) )
))
(declare-datatypes ((ValueCell!13274 0))(
  ( (ValueCellFull!13274 (v!16674 V!42417)) (EmptyCell!13274) )
))
(declare-fun mapRest!43768 () (Array (_ BitVec 32) ValueCell!13274))

(declare-fun mapValue!43768 () ValueCell!13274)

(declare-datatypes ((array!72768 0))(
  ( (array!72769 (arr!35033 (Array (_ BitVec 32) ValueCell!13274)) (size!35570 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72768)

(declare-fun mapKey!43768 () (_ BitVec 32))

(assert (=> mapNonEmpty!43768 (= (arr!35033 _values!996) (store mapRest!43768 mapKey!43768 mapValue!43768))))

(declare-fun b!1117566 () Bool)

(declare-fun res!746389 () Bool)

(declare-fun e!636656 () Bool)

(assert (=> b!1117566 (=> (not res!746389) (not e!636656))))

(declare-datatypes ((array!72770 0))(
  ( (array!72771 (arr!35034 (Array (_ BitVec 32) (_ BitVec 64))) (size!35571 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72770)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1117566 (= res!746389 (and (= (size!35570 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35571 _keys!1208) (size!35570 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117567 () Bool)

(declare-fun tp_is_empty!27967 () Bool)

(assert (=> b!1117567 (= e!636653 tp_is_empty!27967)))

(declare-fun b!1117568 () Bool)

(declare-fun res!746393 () Bool)

(declare-fun e!636654 () Bool)

(assert (=> b!1117568 (=> (not res!746393) (not e!636654))))

(declare-fun lt!497290 () array!72770)

(declare-datatypes ((List!24496 0))(
  ( (Nil!24493) (Cons!24492 (h!25701 (_ BitVec 64)) (t!34984 List!24496)) )
))
(declare-fun arrayNoDuplicates!0 (array!72770 (_ BitVec 32) List!24496) Bool)

(assert (=> b!1117568 (= res!746393 (arrayNoDuplicates!0 lt!497290 #b00000000000000000000000000000000 Nil!24493))))

(declare-fun b!1117569 () Bool)

(declare-fun e!636651 () Bool)

(assert (=> b!1117569 (= e!636651 true)))

(declare-fun zeroValue!944 () V!42417)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17660 0))(
  ( (tuple2!17661 (_1!8840 (_ BitVec 64)) (_2!8840 V!42417)) )
))
(declare-datatypes ((List!24497 0))(
  ( (Nil!24494) (Cons!24493 (h!25702 tuple2!17660) (t!34985 List!24497)) )
))
(declare-datatypes ((ListLongMap!15641 0))(
  ( (ListLongMap!15642 (toList!7836 List!24497)) )
))
(declare-fun lt!497292 () ListLongMap!15641)

(declare-fun minValue!944 () V!42417)

(declare-fun getCurrentListMapNoExtraKeys!4297 (array!72770 array!72768 (_ BitVec 32) (_ BitVec 32) V!42417 V!42417 (_ BitVec 32) Int) ListLongMap!15641)

(assert (=> b!1117569 (= lt!497292 (getCurrentListMapNoExtraKeys!4297 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1117570 () Bool)

(declare-fun res!746390 () Bool)

(assert (=> b!1117570 (=> (not res!746390) (not e!636656))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117570 (= res!746390 (validKeyInArray!0 k!934))))

(declare-fun b!1117572 () Bool)

(declare-fun res!746386 () Bool)

(assert (=> b!1117572 (=> (not res!746386) (not e!636656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117572 (= res!746386 (validMask!0 mask!1564))))

(declare-fun b!1117573 () Bool)

(declare-fun res!746384 () Bool)

(assert (=> b!1117573 (=> (not res!746384) (not e!636656))))

(assert (=> b!1117573 (= res!746384 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24493))))

(declare-fun b!1117574 () Bool)

(assert (=> b!1117574 (= e!636656 e!636654)))

(declare-fun res!746394 () Bool)

(assert (=> b!1117574 (=> (not res!746394) (not e!636654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72770 (_ BitVec 32)) Bool)

(assert (=> b!1117574 (= res!746394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497290 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117574 (= lt!497290 (array!72771 (store (arr!35034 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35571 _keys!1208)))))

(declare-fun b!1117575 () Bool)

(declare-fun res!746392 () Bool)

(assert (=> b!1117575 (=> (not res!746392) (not e!636656))))

(assert (=> b!1117575 (= res!746392 (= (select (arr!35034 _keys!1208) i!673) k!934))))

(declare-fun b!1117576 () Bool)

(assert (=> b!1117576 (= e!636654 (not e!636651))))

(declare-fun res!746387 () Bool)

(assert (=> b!1117576 (=> res!746387 e!636651)))

(assert (=> b!1117576 (= res!746387 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117576 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36587 0))(
  ( (Unit!36588) )
))
(declare-fun lt!497291 () Unit!36587)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72770 (_ BitVec 64) (_ BitVec 32)) Unit!36587)

(assert (=> b!1117576 (= lt!497291 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!43768 () Bool)

(assert (=> mapIsEmpty!43768 mapRes!43768))

(declare-fun b!1117577 () Bool)

(declare-fun res!746385 () Bool)

(assert (=> b!1117577 (=> (not res!746385) (not e!636656))))

(assert (=> b!1117577 (= res!746385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117571 () Bool)

(declare-fun e!636655 () Bool)

(assert (=> b!1117571 (= e!636655 tp_is_empty!27967)))

(declare-fun res!746391 () Bool)

(assert (=> start!97772 (=> (not res!746391) (not e!636656))))

(assert (=> start!97772 (= res!746391 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35571 _keys!1208))))))

(assert (=> start!97772 e!636656))

(assert (=> start!97772 tp_is_empty!27967))

(declare-fun array_inv!26784 (array!72770) Bool)

(assert (=> start!97772 (array_inv!26784 _keys!1208)))

(assert (=> start!97772 true))

(assert (=> start!97772 tp!83015))

(declare-fun e!636650 () Bool)

(declare-fun array_inv!26785 (array!72768) Bool)

(assert (=> start!97772 (and (array_inv!26785 _values!996) e!636650)))

(declare-fun b!1117578 () Bool)

(declare-fun res!746388 () Bool)

(assert (=> b!1117578 (=> (not res!746388) (not e!636656))))

(assert (=> b!1117578 (= res!746388 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35571 _keys!1208))))))

(declare-fun b!1117579 () Bool)

(assert (=> b!1117579 (= e!636650 (and e!636655 mapRes!43768))))

(declare-fun condMapEmpty!43768 () Bool)

(declare-fun mapDefault!43768 () ValueCell!13274)

