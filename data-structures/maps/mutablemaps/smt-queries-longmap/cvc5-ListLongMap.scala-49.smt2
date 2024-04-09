; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!806 () Bool)

(assert start!806)

(declare-fun b_free!199 () Bool)

(declare-fun b_next!199 () Bool)

(assert (=> start!806 (= b_free!199 (not b_next!199))))

(declare-fun tp!826 () Bool)

(declare-fun b_and!345 () Bool)

(assert (=> start!806 (= tp!826 b_and!345)))

(declare-fun b!6048 () Bool)

(declare-fun e!3301 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6048 (= e!3301 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6049 () Bool)

(declare-fun e!3303 () Bool)

(declare-fun e!3304 () Bool)

(assert (=> b!6049 (= e!3303 (not e!3304))))

(declare-fun res!6581 () Bool)

(assert (=> b!6049 (=> res!6581 e!3304)))

(declare-datatypes ((array!487 0))(
  ( (array!488 (arr!232 (Array (_ BitVec 32) (_ BitVec 64))) (size!294 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!487)

(declare-fun arrayContainsKey!0 (array!487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6049 (= res!6581 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!6049 e!3301))

(declare-fun c!431 () Bool)

(assert (=> b!6049 (= c!431 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((Unit!89 0))(
  ( (Unit!90) )
))
(declare-fun lt!1098 () Unit!89)

(declare-datatypes ((V!547 0))(
  ( (V!548 (val!144 Int)) )
))
(declare-datatypes ((ValueCell!122 0))(
  ( (ValueCellFull!122 (v!1235 V!547)) (EmptyCell!122) )
))
(declare-datatypes ((array!489 0))(
  ( (array!490 (arr!233 (Array (_ BitVec 32) ValueCell!122)) (size!295 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!489)

(declare-fun minValue!1434 () V!547)

(declare-fun zeroValue!1434 () V!547)

(declare-fun lemmaKeyInListMapIsInArray!30 (array!487 array!489 (_ BitVec 32) (_ BitVec 32) V!547 V!547 (_ BitVec 64) Int) Unit!89)

(assert (=> b!6049 (= lt!1098 (lemmaKeyInListMapIsInArray!30 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!6050 () Bool)

(assert (=> b!6050 (= e!3301 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6051 () Bool)

(declare-fun res!6586 () Bool)

(assert (=> b!6051 (=> (not res!6586) (not e!3303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!487 (_ BitVec 32)) Bool)

(assert (=> b!6051 (= res!6586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!6580 () Bool)

(assert (=> start!806 (=> (not res!6580) (not e!3303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!806 (= res!6580 (validMask!0 mask!2250))))

(assert (=> start!806 e!3303))

(assert (=> start!806 tp!826))

(assert (=> start!806 true))

(declare-fun e!3299 () Bool)

(declare-fun array_inv!163 (array!489) Bool)

(assert (=> start!806 (and (array_inv!163 _values!1492) e!3299)))

(declare-fun tp_is_empty!277 () Bool)

(assert (=> start!806 tp_is_empty!277))

(declare-fun array_inv!164 (array!487) Bool)

(assert (=> start!806 (array_inv!164 _keys!1806)))

(declare-fun mapNonEmpty!386 () Bool)

(declare-fun mapRes!386 () Bool)

(declare-fun tp!827 () Bool)

(declare-fun e!3302 () Bool)

(assert (=> mapNonEmpty!386 (= mapRes!386 (and tp!827 e!3302))))

(declare-fun mapKey!386 () (_ BitVec 32))

(declare-fun mapValue!386 () ValueCell!122)

(declare-fun mapRest!386 () (Array (_ BitVec 32) ValueCell!122))

(assert (=> mapNonEmpty!386 (= (arr!233 _values!1492) (store mapRest!386 mapKey!386 mapValue!386))))

(declare-fun b!6052 () Bool)

(declare-fun res!6584 () Bool)

(assert (=> b!6052 (=> (not res!6584) (not e!3303))))

(declare-datatypes ((List!149 0))(
  ( (Nil!146) (Cons!145 (h!711 (_ BitVec 64)) (t!2284 List!149)) )
))
(declare-fun arrayNoDuplicates!0 (array!487 (_ BitVec 32) List!149) Bool)

(assert (=> b!6052 (= res!6584 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!146))))

(declare-fun b!6053 () Bool)

(declare-fun res!6582 () Bool)

(assert (=> b!6053 (=> (not res!6582) (not e!3303))))

(declare-datatypes ((tuple2!138 0))(
  ( (tuple2!139 (_1!69 (_ BitVec 64)) (_2!69 V!547)) )
))
(declare-datatypes ((List!150 0))(
  ( (Nil!147) (Cons!146 (h!712 tuple2!138) (t!2285 List!150)) )
))
(declare-datatypes ((ListLongMap!143 0))(
  ( (ListLongMap!144 (toList!87 List!150)) )
))
(declare-fun contains!61 (ListLongMap!143 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!46 (array!487 array!489 (_ BitVec 32) (_ BitVec 32) V!547 V!547 (_ BitVec 32) Int) ListLongMap!143)

(assert (=> b!6053 (= res!6582 (contains!61 (getCurrentListMap!46 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!6054 () Bool)

(assert (=> b!6054 (= e!3304 true)))

(declare-fun lt!1097 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!487 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6054 (= lt!1097 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!386 () Bool)

(assert (=> mapIsEmpty!386 mapRes!386))

(declare-fun b!6055 () Bool)

(declare-fun e!3300 () Bool)

(assert (=> b!6055 (= e!3300 tp_is_empty!277)))

(declare-fun b!6056 () Bool)

(declare-fun res!6585 () Bool)

(assert (=> b!6056 (=> (not res!6585) (not e!3303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6056 (= res!6585 (validKeyInArray!0 k!1278))))

(declare-fun b!6057 () Bool)

(declare-fun res!6583 () Bool)

(assert (=> b!6057 (=> (not res!6583) (not e!3303))))

(assert (=> b!6057 (= res!6583 (and (= (size!295 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!294 _keys!1806) (size!295 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6058 () Bool)

(assert (=> b!6058 (= e!3299 (and e!3300 mapRes!386))))

(declare-fun condMapEmpty!386 () Bool)

(declare-fun mapDefault!386 () ValueCell!122)

