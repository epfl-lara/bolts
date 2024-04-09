; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1044 () Bool)

(assert start!1044)

(declare-fun b_free!373 () Bool)

(declare-fun b_next!373 () Bool)

(assert (=> start!1044 (= b_free!373 (not b_next!373))))

(declare-fun tp!1357 () Bool)

(declare-fun b_and!525 () Bool)

(assert (=> start!1044 (= tp!1357 b_and!525)))

(declare-fun b!9233 () Bool)

(declare-fun res!8403 () Bool)

(declare-fun e!5271 () Bool)

(assert (=> b!9233 (=> (not res!8403) (not e!5271))))

(declare-datatypes ((array!825 0))(
  ( (array!826 (arr!398 (Array (_ BitVec 32) (_ BitVec 64))) (size!460 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!825)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!825 (_ BitVec 32)) Bool)

(assert (=> b!9233 (= res!8403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9234 () Bool)

(declare-fun res!8401 () Bool)

(assert (=> b!9234 (=> (not res!8401) (not e!5271))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9234 (= res!8401 (validKeyInArray!0 k!1278))))

(declare-fun e!5270 () Bool)

(declare-fun lt!2006 () (_ BitVec 32))

(declare-fun b!9235 () Bool)

(declare-datatypes ((SeekEntryResult!37 0))(
  ( (MissingZero!37 (index!2267 (_ BitVec 32))) (Found!37 (index!2268 (_ BitVec 32))) (Intermediate!37 (undefined!849 Bool) (index!2269 (_ BitVec 32)) (x!2781 (_ BitVec 32))) (Undefined!37) (MissingVacant!37 (index!2270 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!825 (_ BitVec 32)) SeekEntryResult!37)

(assert (=> b!9235 (= e!5270 (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!37 lt!2006)))))

(declare-fun b!9236 () Bool)

(declare-fun e!5276 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!9236 (= e!5276 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9237 () Bool)

(declare-fun e!5275 () Bool)

(assert (=> b!9237 (= e!5271 (not e!5275))))

(declare-fun res!8405 () Bool)

(assert (=> b!9237 (=> res!8405 e!5275)))

(declare-fun arrayContainsKey!0 (array!825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9237 (= res!8405 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!9237 e!5276))

(declare-fun c!707 () Bool)

(assert (=> b!9237 (= c!707 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((Unit!189 0))(
  ( (Unit!190) )
))
(declare-fun lt!2007 () Unit!189)

(declare-datatypes ((V!779 0))(
  ( (V!780 (val!231 Int)) )
))
(declare-datatypes ((ValueCell!209 0))(
  ( (ValueCellFull!209 (v!1325 V!779)) (EmptyCell!209) )
))
(declare-datatypes ((array!827 0))(
  ( (array!828 (arr!399 (Array (_ BitVec 32) ValueCell!209)) (size!461 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!827)

(declare-fun minValue!1434 () V!779)

(declare-fun zeroValue!1434 () V!779)

(declare-fun lemmaKeyInListMapIsInArray!71 (array!825 array!827 (_ BitVec 32) (_ BitVec 32) V!779 V!779 (_ BitVec 64) Int) Unit!189)

(assert (=> b!9237 (= lt!2007 (lemmaKeyInListMapIsInArray!71 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!9238 () Bool)

(declare-fun e!5274 () Bool)

(declare-fun tp_is_empty!451 () Bool)

(assert (=> b!9238 (= e!5274 tp_is_empty!451)))

(declare-fun b!9239 () Bool)

(assert (=> b!9239 (= e!5275 e!5270)))

(declare-fun res!8400 () Bool)

(assert (=> b!9239 (=> res!8400 e!5270)))

(assert (=> b!9239 (= res!8400 (not (= (size!460 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(assert (=> b!9239 (arrayForallSeekEntryOrOpenFound!0 lt!2006 _keys!1806 mask!2250)))

(declare-fun lt!2005 () Unit!189)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!189)

(assert (=> b!9239 (= lt!2005 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2006))))

(declare-fun arrayScanForKey!0 (array!825 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9239 (= lt!2006 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!656 () Bool)

(declare-fun mapRes!656 () Bool)

(declare-fun tp!1358 () Bool)

(declare-fun e!5273 () Bool)

(assert (=> mapNonEmpty!656 (= mapRes!656 (and tp!1358 e!5273))))

(declare-fun mapRest!656 () (Array (_ BitVec 32) ValueCell!209))

(declare-fun mapValue!656 () ValueCell!209)

(declare-fun mapKey!656 () (_ BitVec 32))

(assert (=> mapNonEmpty!656 (= (arr!399 _values!1492) (store mapRest!656 mapKey!656 mapValue!656))))

(declare-fun b!9240 () Bool)

(declare-fun res!8404 () Bool)

(assert (=> b!9240 (=> (not res!8404) (not e!5271))))

(declare-datatypes ((tuple2!246 0))(
  ( (tuple2!247 (_1!123 (_ BitVec 64)) (_2!123 V!779)) )
))
(declare-datatypes ((List!272 0))(
  ( (Nil!269) (Cons!268 (h!834 tuple2!246) (t!2413 List!272)) )
))
(declare-datatypes ((ListLongMap!251 0))(
  ( (ListLongMap!252 (toList!141 List!272)) )
))
(declare-fun contains!118 (ListLongMap!251 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!100 (array!825 array!827 (_ BitVec 32) (_ BitVec 32) V!779 V!779 (_ BitVec 32) Int) ListLongMap!251)

(assert (=> b!9240 (= res!8404 (contains!118 (getCurrentListMap!100 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!9242 () Bool)

(declare-fun res!8406 () Bool)

(assert (=> b!9242 (=> (not res!8406) (not e!5271))))

(declare-datatypes ((List!273 0))(
  ( (Nil!270) (Cons!269 (h!835 (_ BitVec 64)) (t!2414 List!273)) )
))
(declare-fun arrayNoDuplicates!0 (array!825 (_ BitVec 32) List!273) Bool)

(assert (=> b!9242 (= res!8406 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!270))))

(declare-fun b!9243 () Bool)

(assert (=> b!9243 (= e!5273 tp_is_empty!451)))

(declare-fun b!9244 () Bool)

(assert (=> b!9244 (= e!5276 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!656 () Bool)

(assert (=> mapIsEmpty!656 mapRes!656))

(declare-fun b!9245 () Bool)

(declare-fun res!8402 () Bool)

(assert (=> b!9245 (=> (not res!8402) (not e!5271))))

(assert (=> b!9245 (= res!8402 (and (= (size!461 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!460 _keys!1806) (size!461 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun res!8407 () Bool)

(assert (=> start!1044 (=> (not res!8407) (not e!5271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1044 (= res!8407 (validMask!0 mask!2250))))

(assert (=> start!1044 e!5271))

(assert (=> start!1044 tp!1357))

(assert (=> start!1044 true))

(declare-fun e!5269 () Bool)

(declare-fun array_inv!287 (array!827) Bool)

(assert (=> start!1044 (and (array_inv!287 _values!1492) e!5269)))

(assert (=> start!1044 tp_is_empty!451))

(declare-fun array_inv!288 (array!825) Bool)

(assert (=> start!1044 (array_inv!288 _keys!1806)))

(declare-fun b!9241 () Bool)

(assert (=> b!9241 (= e!5269 (and e!5274 mapRes!656))))

(declare-fun condMapEmpty!656 () Bool)

(declare-fun mapDefault!656 () ValueCell!209)

