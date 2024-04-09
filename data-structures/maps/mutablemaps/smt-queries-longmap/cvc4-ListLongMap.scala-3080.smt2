; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43384 () Bool)

(assert start!43384)

(declare-fun b_free!12203 () Bool)

(declare-fun b_next!12203 () Bool)

(assert (=> start!43384 (= b_free!12203 (not b_next!12203))))

(declare-fun tp!42885 () Bool)

(declare-fun b_and!20977 () Bool)

(assert (=> start!43384 (= tp!42885 b_and!20977)))

(declare-fun res!286540 () Bool)

(declare-fun e!282655 () Bool)

(assert (=> start!43384 (=> (not res!286540) (not e!282655))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43384 (= res!286540 (validMask!0 mask!2352))))

(assert (=> start!43384 e!282655))

(assert (=> start!43384 true))

(declare-fun tp_is_empty!13715 () Bool)

(assert (=> start!43384 tp_is_empty!13715))

(declare-datatypes ((V!19357 0))(
  ( (V!19358 (val!6905 Int)) )
))
(declare-datatypes ((ValueCell!6496 0))(
  ( (ValueCellFull!6496 (v!9192 V!19357)) (EmptyCell!6496) )
))
(declare-datatypes ((array!31065 0))(
  ( (array!31066 (arr!14934 (Array (_ BitVec 32) ValueCell!6496)) (size!15292 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31065)

(declare-fun e!282654 () Bool)

(declare-fun array_inv!10760 (array!31065) Bool)

(assert (=> start!43384 (and (array_inv!10760 _values!1516) e!282654)))

(assert (=> start!43384 tp!42885))

(declare-datatypes ((array!31067 0))(
  ( (array!31068 (arr!14935 (Array (_ BitVec 32) (_ BitVec 64))) (size!15293 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31067)

(declare-fun array_inv!10761 (array!31067) Bool)

(assert (=> start!43384 (array_inv!10761 _keys!1874)))

(declare-fun mapIsEmpty!22276 () Bool)

(declare-fun mapRes!22276 () Bool)

(assert (=> mapIsEmpty!22276 mapRes!22276))

(declare-fun b!480366 () Bool)

(declare-fun res!286542 () Bool)

(assert (=> b!480366 (=> (not res!286542) (not e!282655))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480366 (= res!286542 (and (= (size!15292 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15293 _keys!1874) (size!15292 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480367 () Bool)

(assert (=> b!480367 (= e!282655 (not true))))

(declare-fun lt!218135 () (_ BitVec 32))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31067 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480367 (= lt!218135 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!282653 () Bool)

(assert (=> b!480367 e!282653))

(declare-fun c!57715 () Bool)

(assert (=> b!480367 (= c!57715 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun minValue!1458 () V!19357)

(declare-fun zeroValue!1458 () V!19357)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((Unit!14064 0))(
  ( (Unit!14065) )
))
(declare-fun lt!218134 () Unit!14064)

(declare-fun lemmaKeyInListMapIsInArray!123 (array!31067 array!31065 (_ BitVec 32) (_ BitVec 32) V!19357 V!19357 (_ BitVec 64) Int) Unit!14064)

(assert (=> b!480367 (= lt!218134 (lemmaKeyInListMapIsInArray!123 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!480368 () Bool)

(declare-fun res!286537 () Bool)

(assert (=> b!480368 (=> (not res!286537) (not e!282655))))

(declare-datatypes ((tuple2!9056 0))(
  ( (tuple2!9057 (_1!4538 (_ BitVec 64)) (_2!4538 V!19357)) )
))
(declare-datatypes ((List!9171 0))(
  ( (Nil!9168) (Cons!9167 (h!10023 tuple2!9056) (t!15389 List!9171)) )
))
(declare-datatypes ((ListLongMap!7983 0))(
  ( (ListLongMap!7984 (toList!4007 List!9171)) )
))
(declare-fun contains!2616 (ListLongMap!7983 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2299 (array!31067 array!31065 (_ BitVec 32) (_ BitVec 32) V!19357 V!19357 (_ BitVec 32) Int) ListLongMap!7983)

(assert (=> b!480368 (= res!286537 (contains!2616 (getCurrentListMap!2299 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun mapNonEmpty!22276 () Bool)

(declare-fun tp!42886 () Bool)

(declare-fun e!282658 () Bool)

(assert (=> mapNonEmpty!22276 (= mapRes!22276 (and tp!42886 e!282658))))

(declare-fun mapKey!22276 () (_ BitVec 32))

(declare-fun mapValue!22276 () ValueCell!6496)

(declare-fun mapRest!22276 () (Array (_ BitVec 32) ValueCell!6496))

(assert (=> mapNonEmpty!22276 (= (arr!14934 _values!1516) (store mapRest!22276 mapKey!22276 mapValue!22276))))

(declare-fun b!480369 () Bool)

(declare-fun res!286541 () Bool)

(assert (=> b!480369 (=> (not res!286541) (not e!282655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31067 (_ BitVec 32)) Bool)

(assert (=> b!480369 (= res!286541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480370 () Bool)

(declare-fun res!286538 () Bool)

(assert (=> b!480370 (=> (not res!286538) (not e!282655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480370 (= res!286538 (validKeyInArray!0 k!1332))))

(declare-fun b!480371 () Bool)

(declare-fun e!282656 () Bool)

(assert (=> b!480371 (= e!282656 tp_is_empty!13715)))

(declare-fun b!480372 () Bool)

(declare-fun arrayContainsKey!0 (array!31067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480372 (= e!282653 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!480373 () Bool)

(assert (=> b!480373 (= e!282653 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480374 () Bool)

(declare-fun res!286539 () Bool)

(assert (=> b!480374 (=> (not res!286539) (not e!282655))))

(declare-datatypes ((List!9172 0))(
  ( (Nil!9169) (Cons!9168 (h!10024 (_ BitVec 64)) (t!15390 List!9172)) )
))
(declare-fun arrayNoDuplicates!0 (array!31067 (_ BitVec 32) List!9172) Bool)

(assert (=> b!480374 (= res!286539 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9169))))

(declare-fun b!480375 () Bool)

(assert (=> b!480375 (= e!282658 tp_is_empty!13715)))

(declare-fun b!480376 () Bool)

(assert (=> b!480376 (= e!282654 (and e!282656 mapRes!22276))))

(declare-fun condMapEmpty!22276 () Bool)

(declare-fun mapDefault!22276 () ValueCell!6496)

