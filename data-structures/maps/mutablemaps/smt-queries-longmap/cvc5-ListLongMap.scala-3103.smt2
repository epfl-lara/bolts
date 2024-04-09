; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43588 () Bool)

(assert start!43588)

(declare-fun b_free!12337 () Bool)

(declare-fun b_next!12337 () Bool)

(assert (=> start!43588 (= b_free!12337 (not b_next!12337))))

(declare-fun tp!43296 () Bool)

(declare-fun b_and!21117 () Bool)

(assert (=> start!43588 (= tp!43296 b_and!21117)))

(declare-fun b!482642 () Bool)

(declare-fun e!284037 () Bool)

(declare-fun tp_is_empty!13849 () Bool)

(assert (=> b!482642 (= e!284037 tp_is_empty!13849)))

(declare-fun mapNonEmpty!22486 () Bool)

(declare-fun mapRes!22486 () Bool)

(declare-fun tp!43297 () Bool)

(declare-fun e!284040 () Bool)

(assert (=> mapNonEmpty!22486 (= mapRes!22486 (and tp!43297 e!284040))))

(declare-datatypes ((V!19537 0))(
  ( (V!19538 (val!6972 Int)) )
))
(declare-datatypes ((ValueCell!6563 0))(
  ( (ValueCellFull!6563 (v!9262 V!19537)) (EmptyCell!6563) )
))
(declare-fun mapValue!22486 () ValueCell!6563)

(declare-fun mapKey!22486 () (_ BitVec 32))

(declare-fun mapRest!22486 () (Array (_ BitVec 32) ValueCell!6563))

(declare-datatypes ((array!31323 0))(
  ( (array!31324 (arr!15060 (Array (_ BitVec 32) ValueCell!6563)) (size!15418 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31323)

(assert (=> mapNonEmpty!22486 (= (arr!15060 _values!1516) (store mapRest!22486 mapKey!22486 mapValue!22486))))

(declare-fun b!482643 () Bool)

(declare-fun res!287742 () Bool)

(declare-fun e!284039 () Bool)

(assert (=> b!482643 (=> (not res!287742) (not e!284039))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31325 0))(
  ( (array!31326 (arr!15061 (Array (_ BitVec 32) (_ BitVec 64))) (size!15419 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31325)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!482643 (= res!287742 (and (= (size!15418 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15419 _keys!1874) (size!15418 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!482644 () Bool)

(declare-fun res!287743 () Bool)

(assert (=> b!482644 (=> (not res!287743) (not e!284039))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19537)

(declare-fun zeroValue!1458 () V!19537)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9152 0))(
  ( (tuple2!9153 (_1!4586 (_ BitVec 64)) (_2!4586 V!19537)) )
))
(declare-datatypes ((List!9268 0))(
  ( (Nil!9265) (Cons!9264 (h!10120 tuple2!9152) (t!15492 List!9268)) )
))
(declare-datatypes ((ListLongMap!8079 0))(
  ( (ListLongMap!8080 (toList!4055 List!9268)) )
))
(declare-fun contains!2667 (ListLongMap!8079 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2347 (array!31325 array!31323 (_ BitVec 32) (_ BitVec 32) V!19537 V!19537 (_ BitVec 32) Int) ListLongMap!8079)

(assert (=> b!482644 (= res!287743 (contains!2667 (getCurrentListMap!2347 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!482645 () Bool)

(declare-fun e!284036 () Bool)

(declare-fun arrayContainsKey!0 (array!31325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482645 (= e!284036 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!482646 () Bool)

(declare-fun lt!218827 () (_ BitVec 32))

(assert (=> b!482646 (= e!284039 (not (or (not (= (size!15419 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))) (bvsgt #b00000000000000000000000000000000 (size!15419 _keys!1874)) (and (bvsge lt!218827 #b00000000000000000000000000000000) (bvsle lt!218827 (size!15419 _keys!1874))))))))

(declare-fun arrayScanForKey!0 (array!31325 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!482646 (= lt!218827 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!482646 e!284036))

(declare-fun c!57936 () Bool)

(assert (=> b!482646 (= c!57936 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14122 0))(
  ( (Unit!14123) )
))
(declare-fun lt!218828 () Unit!14122)

(declare-fun lemmaKeyInListMapIsInArray!149 (array!31325 array!31323 (_ BitVec 32) (_ BitVec 32) V!19537 V!19537 (_ BitVec 64) Int) Unit!14122)

(assert (=> b!482646 (= lt!218828 (lemmaKeyInListMapIsInArray!149 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun b!482647 () Bool)

(assert (=> b!482647 (= e!284040 tp_is_empty!13849)))

(declare-fun b!482648 () Bool)

(assert (=> b!482648 (= e!284036 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482649 () Bool)

(declare-fun res!287738 () Bool)

(assert (=> b!482649 (=> (not res!287738) (not e!284039))))

(declare-datatypes ((List!9269 0))(
  ( (Nil!9266) (Cons!9265 (h!10121 (_ BitVec 64)) (t!15493 List!9269)) )
))
(declare-fun arrayNoDuplicates!0 (array!31325 (_ BitVec 32) List!9269) Bool)

(assert (=> b!482649 (= res!287738 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9266))))

(declare-fun res!287739 () Bool)

(assert (=> start!43588 (=> (not res!287739) (not e!284039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43588 (= res!287739 (validMask!0 mask!2352))))

(assert (=> start!43588 e!284039))

(assert (=> start!43588 true))

(assert (=> start!43588 tp_is_empty!13849))

(declare-fun e!284041 () Bool)

(declare-fun array_inv!10842 (array!31323) Bool)

(assert (=> start!43588 (and (array_inv!10842 _values!1516) e!284041)))

(assert (=> start!43588 tp!43296))

(declare-fun array_inv!10843 (array!31325) Bool)

(assert (=> start!43588 (array_inv!10843 _keys!1874)))

(declare-fun mapIsEmpty!22486 () Bool)

(assert (=> mapIsEmpty!22486 mapRes!22486))

(declare-fun b!482650 () Bool)

(assert (=> b!482650 (= e!284041 (and e!284037 mapRes!22486))))

(declare-fun condMapEmpty!22486 () Bool)

(declare-fun mapDefault!22486 () ValueCell!6563)

