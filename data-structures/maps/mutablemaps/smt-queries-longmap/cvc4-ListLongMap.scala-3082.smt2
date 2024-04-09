; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43396 () Bool)

(assert start!43396)

(declare-fun b_free!12215 () Bool)

(declare-fun b_next!12215 () Bool)

(assert (=> start!43396 (= b_free!12215 (not b_next!12215))))

(declare-fun tp!42921 () Bool)

(declare-fun b_and!20989 () Bool)

(assert (=> start!43396 (= tp!42921 b_and!20989)))

(declare-fun b!480564 () Bool)

(declare-fun res!286647 () Bool)

(declare-fun e!282765 () Bool)

(assert (=> b!480564 (=> (not res!286647) (not e!282765))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31089 0))(
  ( (array!31090 (arr!14946 (Array (_ BitVec 32) (_ BitVec 64))) (size!15304 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31089)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19373 0))(
  ( (V!19374 (val!6911 Int)) )
))
(declare-datatypes ((ValueCell!6502 0))(
  ( (ValueCellFull!6502 (v!9198 V!19373)) (EmptyCell!6502) )
))
(declare-datatypes ((array!31091 0))(
  ( (array!31092 (arr!14947 (Array (_ BitVec 32) ValueCell!6502)) (size!15305 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31091)

(assert (=> b!480564 (= res!286647 (and (= (size!15305 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15304 _keys!1874) (size!15305 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480565 () Bool)

(declare-fun e!282766 () Bool)

(declare-fun tp_is_empty!13727 () Bool)

(assert (=> b!480565 (= e!282766 tp_is_empty!13727)))

(declare-fun b!480566 () Bool)

(declare-fun res!286646 () Bool)

(assert (=> b!480566 (=> (not res!286646) (not e!282765))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480566 (= res!286646 (validKeyInArray!0 k!1332))))

(declare-fun b!480567 () Bool)

(declare-fun res!286650 () Bool)

(assert (=> b!480567 (=> (not res!286650) (not e!282765))))

(declare-fun minValue!1458 () V!19373)

(declare-fun zeroValue!1458 () V!19373)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9066 0))(
  ( (tuple2!9067 (_1!4543 (_ BitVec 64)) (_2!4543 V!19373)) )
))
(declare-datatypes ((List!9182 0))(
  ( (Nil!9179) (Cons!9178 (h!10034 tuple2!9066) (t!15400 List!9182)) )
))
(declare-datatypes ((ListLongMap!7993 0))(
  ( (ListLongMap!7994 (toList!4012 List!9182)) )
))
(declare-fun contains!2621 (ListLongMap!7993 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2304 (array!31089 array!31091 (_ BitVec 32) (_ BitVec 32) V!19373 V!19373 (_ BitVec 32) Int) ListLongMap!7993)

(assert (=> b!480567 (= res!286650 (contains!2621 (getCurrentListMap!2304 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!480568 () Bool)

(declare-fun e!282764 () Bool)

(declare-fun arrayContainsKey!0 (array!31089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480568 (= e!282764 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!480569 () Bool)

(assert (=> b!480569 (= e!282765 (not true))))

(declare-fun lt!218179 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31089 (_ BitVec 32)) Bool)

(assert (=> b!480569 (arrayForallSeekEntryOrOpenFound!0 lt!218179 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14072 0))(
  ( (Unit!14073) )
))
(declare-fun lt!218178 () Unit!14072)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14072)

(assert (=> b!480569 (= lt!218178 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218179))))

(declare-fun arrayScanForKey!0 (array!31089 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480569 (= lt!218179 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!480569 e!282764))

(declare-fun c!57733 () Bool)

(assert (=> b!480569 (= c!57733 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218180 () Unit!14072)

(declare-fun lemmaKeyInListMapIsInArray!127 (array!31089 array!31091 (_ BitVec 32) (_ BitVec 32) V!19373 V!19373 (_ BitVec 64) Int) Unit!14072)

(assert (=> b!480569 (= lt!218180 (lemmaKeyInListMapIsInArray!127 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!480570 () Bool)

(declare-fun e!282761 () Bool)

(declare-fun e!282762 () Bool)

(declare-fun mapRes!22294 () Bool)

(assert (=> b!480570 (= e!282761 (and e!282762 mapRes!22294))))

(declare-fun condMapEmpty!22294 () Bool)

(declare-fun mapDefault!22294 () ValueCell!6502)

