; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43476 () Bool)

(assert start!43476)

(declare-fun b_free!12247 () Bool)

(declare-fun b_next!12247 () Bool)

(assert (=> start!43476 (= b_free!12247 (not b_next!12247))))

(declare-fun tp!43023 () Bool)

(declare-fun b_and!21025 () Bool)

(assert (=> start!43476 (= tp!43023 b_and!21025)))

(declare-fun res!287040 () Bool)

(declare-fun e!283223 () Bool)

(assert (=> start!43476 (=> (not res!287040) (not e!283223))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43476 (= res!287040 (validMask!0 mask!2352))))

(assert (=> start!43476 e!283223))

(assert (=> start!43476 true))

(declare-fun tp_is_empty!13759 () Bool)

(assert (=> start!43476 tp_is_empty!13759))

(declare-datatypes ((V!19417 0))(
  ( (V!19418 (val!6927 Int)) )
))
(declare-datatypes ((ValueCell!6518 0))(
  ( (ValueCellFull!6518 (v!9216 V!19417)) (EmptyCell!6518) )
))
(declare-datatypes ((array!31155 0))(
  ( (array!31156 (arr!14977 (Array (_ BitVec 32) ValueCell!6518)) (size!15335 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31155)

(declare-fun e!283224 () Bool)

(declare-fun array_inv!10784 (array!31155) Bool)

(assert (=> start!43476 (and (array_inv!10784 _values!1516) e!283224)))

(assert (=> start!43476 tp!43023))

(declare-datatypes ((array!31157 0))(
  ( (array!31158 (arr!14978 (Array (_ BitVec 32) (_ BitVec 64))) (size!15336 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31157)

(declare-fun array_inv!10785 (array!31157) Bool)

(assert (=> start!43476 (array_inv!10785 _keys!1874)))

(declare-fun b!481354 () Bool)

(declare-fun res!287044 () Bool)

(assert (=> b!481354 (=> (not res!287044) (not e!283223))))

(declare-datatypes ((List!9204 0))(
  ( (Nil!9201) (Cons!9200 (h!10056 (_ BitVec 64)) (t!15426 List!9204)) )
))
(declare-fun arrayNoDuplicates!0 (array!31157 (_ BitVec 32) List!9204) Bool)

(assert (=> b!481354 (= res!287044 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9201))))

(declare-fun b!481355 () Bool)

(declare-fun e!283227 () Bool)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481355 (= e!283227 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!481356 () Bool)

(declare-fun res!287039 () Bool)

(assert (=> b!481356 (=> (not res!287039) (not e!283223))))

(declare-fun minValue!1458 () V!19417)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun defaultEntry!1519 () Int)

(declare-fun zeroValue!1458 () V!19417)

(declare-datatypes ((tuple2!9090 0))(
  ( (tuple2!9091 (_1!4555 (_ BitVec 64)) (_2!4555 V!19417)) )
))
(declare-datatypes ((List!9205 0))(
  ( (Nil!9202) (Cons!9201 (h!10057 tuple2!9090) (t!15427 List!9205)) )
))
(declare-datatypes ((ListLongMap!8017 0))(
  ( (ListLongMap!8018 (toList!4024 List!9205)) )
))
(declare-fun contains!2635 (ListLongMap!8017 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2316 (array!31157 array!31155 (_ BitVec 32) (_ BitVec 32) V!19417 V!19417 (_ BitVec 32) Int) ListLongMap!8017)

(assert (=> b!481356 (= res!287039 (contains!2635 (getCurrentListMap!2316 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481357 () Bool)

(declare-fun e!283228 () Bool)

(assert (=> b!481357 (= e!283228 tp_is_empty!13759)))

(declare-fun b!481358 () Bool)

(declare-fun res!287041 () Bool)

(assert (=> b!481358 (=> (not res!287041) (not e!283223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31157 (_ BitVec 32)) Bool)

(assert (=> b!481358 (= res!287041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481359 () Bool)

(assert (=> b!481359 (= e!283223 (not (= (size!15336 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))))))

(declare-fun lt!218521 () (_ BitVec 32))

(assert (=> b!481359 (arrayForallSeekEntryOrOpenFound!0 lt!218521 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14096 0))(
  ( (Unit!14097) )
))
(declare-fun lt!218520 () Unit!14096)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14096)

(assert (=> b!481359 (= lt!218520 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218521))))

(declare-fun arrayScanForKey!0 (array!31157 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481359 (= lt!218521 (arrayScanForKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(assert (=> b!481359 e!283227))

(declare-fun c!57849 () Bool)

(assert (=> b!481359 (= c!57849 (and (not (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218522 () Unit!14096)

(declare-fun lemmaKeyInListMapIsInArray!137 (array!31157 array!31155 (_ BitVec 32) (_ BitVec 32) V!19417 V!19417 (_ BitVec 64) Int) Unit!14096)

(assert (=> b!481359 (= lt!218522 (lemmaKeyInListMapIsInArray!137 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k!1332 defaultEntry!1519))))

(declare-fun mapNonEmpty!22348 () Bool)

(declare-fun mapRes!22348 () Bool)

(declare-fun tp!43024 () Bool)

(assert (=> mapNonEmpty!22348 (= mapRes!22348 (and tp!43024 e!283228))))

(declare-fun mapValue!22348 () ValueCell!6518)

(declare-fun mapRest!22348 () (Array (_ BitVec 32) ValueCell!6518))

(declare-fun mapKey!22348 () (_ BitVec 32))

(assert (=> mapNonEmpty!22348 (= (arr!14977 _values!1516) (store mapRest!22348 mapKey!22348 mapValue!22348))))

(declare-fun b!481360 () Bool)

(declare-fun e!283225 () Bool)

(assert (=> b!481360 (= e!283224 (and e!283225 mapRes!22348))))

(declare-fun condMapEmpty!22348 () Bool)

(declare-fun mapDefault!22348 () ValueCell!6518)

