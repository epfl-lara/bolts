; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43554 () Bool)

(assert start!43554)

(declare-fun b_free!12325 () Bool)

(declare-fun b_next!12325 () Bool)

(assert (=> start!43554 (= b_free!12325 (not b_next!12325))))

(declare-fun tp!43258 () Bool)

(declare-fun b_and!21103 () Bool)

(assert (=> start!43554 (= tp!43258 b_and!21103)))

(declare-fun b!482317 () Bool)

(declare-fun e!283845 () Bool)

(declare-datatypes ((array!31299 0))(
  ( (array!31300 (arr!15049 (Array (_ BitVec 32) (_ BitVec 64))) (size!15407 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31299)

(declare-fun mask!2352 () (_ BitVec 32))

(assert (=> b!482317 (= e!283845 (not (= (size!15407 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))))))

(declare-fun lt!218699 () (_ BitVec 32))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!31299 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482317 (= lt!218699 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun e!283849 () Bool)

(assert (=> b!482317 e!283849))

(declare-fun c!57885 () Bool)

(assert (=> b!482317 (= c!57885 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!19521 0))(
  ( (V!19522 (val!6966 Int)) )
))
(declare-fun minValue!1458 () V!19521)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19521)

(declare-datatypes ((ValueCell!6557 0))(
  ( (ValueCellFull!6557 (v!9255 V!19521)) (EmptyCell!6557) )
))
(declare-datatypes ((array!31301 0))(
  ( (array!31302 (arr!15050 (Array (_ BitVec 32) ValueCell!6557)) (size!15408 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31301)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((Unit!14114 0))(
  ( (Unit!14115) )
))
(declare-fun lt!218698 () Unit!14114)

(declare-fun lemmaKeyInListMapIsInArray!146 (array!31299 array!31301 (_ BitVec 32) (_ BitVec 32) V!19521 V!19521 (_ BitVec 64) Int) Unit!14114)

(assert (=> b!482317 (= lt!218698 (lemmaKeyInListMapIsInArray!146 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!482318 () Bool)

(declare-fun res!287579 () Bool)

(assert (=> b!482318 (=> (not res!287579) (not e!283845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31299 (_ BitVec 32)) Bool)

(assert (=> b!482318 (= res!287579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482319 () Bool)

(declare-fun res!287581 () Bool)

(assert (=> b!482319 (=> (not res!287581) (not e!283845))))

(declare-datatypes ((List!9260 0))(
  ( (Nil!9257) (Cons!9256 (h!10112 (_ BitVec 64)) (t!15482 List!9260)) )
))
(declare-fun arrayNoDuplicates!0 (array!31299 (_ BitVec 32) List!9260) Bool)

(assert (=> b!482319 (= res!287581 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9257))))

(declare-fun mapNonEmpty!22465 () Bool)

(declare-fun mapRes!22465 () Bool)

(declare-fun tp!43257 () Bool)

(declare-fun e!283847 () Bool)

(assert (=> mapNonEmpty!22465 (= mapRes!22465 (and tp!43257 e!283847))))

(declare-fun mapKey!22465 () (_ BitVec 32))

(declare-fun mapRest!22465 () (Array (_ BitVec 32) ValueCell!6557))

(declare-fun mapValue!22465 () ValueCell!6557)

(assert (=> mapNonEmpty!22465 (= (arr!15050 _values!1516) (store mapRest!22465 mapKey!22465 mapValue!22465))))

(declare-fun b!482320 () Bool)

(assert (=> b!482320 (= e!283849 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482321 () Bool)

(declare-fun tp_is_empty!13837 () Bool)

(assert (=> b!482321 (= e!283847 tp_is_empty!13837)))

(declare-fun res!287580 () Bool)

(assert (=> start!43554 (=> (not res!287580) (not e!283845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43554 (= res!287580 (validMask!0 mask!2352))))

(assert (=> start!43554 e!283845))

(assert (=> start!43554 true))

(assert (=> start!43554 tp_is_empty!13837))

(declare-fun e!283848 () Bool)

(declare-fun array_inv!10832 (array!31301) Bool)

(assert (=> start!43554 (and (array_inv!10832 _values!1516) e!283848)))

(assert (=> start!43554 tp!43258))

(declare-fun array_inv!10833 (array!31299) Bool)

(assert (=> start!43554 (array_inv!10833 _keys!1874)))

(declare-fun b!482322 () Bool)

(declare-fun res!287584 () Bool)

(assert (=> b!482322 (=> (not res!287584) (not e!283845))))

(declare-datatypes ((tuple2!9144 0))(
  ( (tuple2!9145 (_1!4582 (_ BitVec 64)) (_2!4582 V!19521)) )
))
(declare-datatypes ((List!9261 0))(
  ( (Nil!9258) (Cons!9257 (h!10113 tuple2!9144) (t!15483 List!9261)) )
))
(declare-datatypes ((ListLongMap!8071 0))(
  ( (ListLongMap!8072 (toList!4051 List!9261)) )
))
(declare-fun contains!2662 (ListLongMap!8071 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2343 (array!31299 array!31301 (_ BitVec 32) (_ BitVec 32) V!19521 V!19521 (_ BitVec 32) Int) ListLongMap!8071)

(assert (=> b!482322 (= res!287584 (contains!2662 (getCurrentListMap!2343 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!482323 () Bool)

(declare-fun e!283846 () Bool)

(assert (=> b!482323 (= e!283848 (and e!283846 mapRes!22465))))

(declare-fun condMapEmpty!22465 () Bool)

(declare-fun mapDefault!22465 () ValueCell!6557)

