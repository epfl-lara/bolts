; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34748 () Bool)

(assert start!34748)

(declare-fun b_free!7547 () Bool)

(declare-fun b_next!7547 () Bool)

(assert (=> start!34748 (= b_free!7547 (not b_next!7547))))

(declare-fun tp!26205 () Bool)

(declare-fun b_and!14785 () Bool)

(assert (=> start!34748 (= tp!26205 b_and!14785)))

(declare-fun mapNonEmpty!12705 () Bool)

(declare-fun mapRes!12705 () Bool)

(declare-fun tp!26204 () Bool)

(declare-fun e!212771 () Bool)

(assert (=> mapNonEmpty!12705 (= mapRes!12705 (and tp!26204 e!212771))))

(declare-datatypes ((V!10975 0))(
  ( (V!10976 (val!3794 Int)) )
))
(declare-datatypes ((ValueCell!3406 0))(
  ( (ValueCellFull!3406 (v!5972 V!10975)) (EmptyCell!3406) )
))
(declare-fun mapValue!12705 () ValueCell!3406)

(declare-datatypes ((array!18553 0))(
  ( (array!18554 (arr!8784 (Array (_ BitVec 32) ValueCell!3406)) (size!9136 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18553)

(declare-fun mapRest!12705 () (Array (_ BitVec 32) ValueCell!3406))

(declare-fun mapKey!12705 () (_ BitVec 32))

(assert (=> mapNonEmpty!12705 (= (arr!8784 _values!1525) (store mapRest!12705 mapKey!12705 mapValue!12705))))

(declare-fun b!347238 () Bool)

(declare-fun res!192287 () Bool)

(declare-fun e!212770 () Bool)

(assert (=> b!347238 (=> (not res!192287) (not e!212770))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10975)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!18555 0))(
  ( (array!18556 (arr!8785 (Array (_ BitVec 32) (_ BitVec 64))) (size!9137 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18555)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10975)

(declare-datatypes ((tuple2!5476 0))(
  ( (tuple2!5477 (_1!2748 (_ BitVec 64)) (_2!2748 V!10975)) )
))
(declare-datatypes ((List!5120 0))(
  ( (Nil!5117) (Cons!5116 (h!5972 tuple2!5476) (t!10256 List!5120)) )
))
(declare-datatypes ((ListLongMap!4403 0))(
  ( (ListLongMap!4404 (toList!2217 List!5120)) )
))
(declare-fun contains!2277 (ListLongMap!4403 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1737 (array!18555 array!18553 (_ BitVec 32) (_ BitVec 32) V!10975 V!10975 (_ BitVec 32) Int) ListLongMap!4403)

(assert (=> b!347238 (= res!192287 (not (contains!2277 (getCurrentListMap!1737 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!347239 () Bool)

(declare-fun res!192286 () Bool)

(assert (=> b!347239 (=> (not res!192286) (not e!212770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18555 (_ BitVec 32)) Bool)

(assert (=> b!347239 (= res!192286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347240 () Bool)

(declare-fun res!192292 () Bool)

(assert (=> b!347240 (=> (not res!192292) (not e!212770))))

(assert (=> b!347240 (= res!192292 (and (= (size!9136 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9137 _keys!1895) (size!9136 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347241 () Bool)

(declare-fun e!212775 () Bool)

(declare-fun tp_is_empty!7499 () Bool)

(assert (=> b!347241 (= e!212775 tp_is_empty!7499)))

(declare-fun b!347242 () Bool)

(assert (=> b!347242 (= e!212771 tp_is_empty!7499)))

(declare-fun b!347243 () Bool)

(declare-fun res!192288 () Bool)

(assert (=> b!347243 (=> (not res!192288) (not e!212770))))

(declare-datatypes ((List!5121 0))(
  ( (Nil!5118) (Cons!5117 (h!5973 (_ BitVec 64)) (t!10257 List!5121)) )
))
(declare-fun arrayNoDuplicates!0 (array!18555 (_ BitVec 32) List!5121) Bool)

(assert (=> b!347243 (= res!192288 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5118))))

(declare-fun mapIsEmpty!12705 () Bool)

(assert (=> mapIsEmpty!12705 mapRes!12705))

(declare-fun b!347244 () Bool)

(declare-fun e!212774 () Bool)

(assert (=> b!347244 (= e!212770 e!212774)))

(declare-fun res!192293 () Bool)

(assert (=> b!347244 (=> (not res!192293) (not e!212774))))

(declare-datatypes ((SeekEntryResult!3384 0))(
  ( (MissingZero!3384 (index!15715 (_ BitVec 32))) (Found!3384 (index!15716 (_ BitVec 32))) (Intermediate!3384 (undefined!4196 Bool) (index!15717 (_ BitVec 32)) (x!34593 (_ BitVec 32))) (Undefined!3384) (MissingVacant!3384 (index!15718 (_ BitVec 32))) )
))
(declare-fun lt!163512 () SeekEntryResult!3384)

(assert (=> b!347244 (= res!192293 (and (is-Found!3384 lt!163512) (= (select (arr!8785 _keys!1895) (index!15716 lt!163512)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18555 (_ BitVec 32)) SeekEntryResult!3384)

(assert (=> b!347244 (= lt!163512 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!347245 () Bool)

(assert (=> b!347245 (= e!212774 (not (and (bvsge (index!15716 lt!163512) #b00000000000000000000000000000000) (bvslt (index!15716 lt!163512) (size!9137 _keys!1895)))))))

(declare-fun arrayContainsKey!0 (array!18555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347245 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10780 0))(
  ( (Unit!10781) )
))
(declare-fun lt!163511 () Unit!10780)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18555 (_ BitVec 64) (_ BitVec 32)) Unit!10780)

(assert (=> b!347245 (= lt!163511 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15716 lt!163512)))))

(declare-fun res!192289 () Bool)

(assert (=> start!34748 (=> (not res!192289) (not e!212770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34748 (= res!192289 (validMask!0 mask!2385))))

(assert (=> start!34748 e!212770))

(assert (=> start!34748 true))

(assert (=> start!34748 tp_is_empty!7499))

(assert (=> start!34748 tp!26205))

(declare-fun e!212772 () Bool)

(declare-fun array_inv!6492 (array!18553) Bool)

(assert (=> start!34748 (and (array_inv!6492 _values!1525) e!212772)))

(declare-fun array_inv!6493 (array!18555) Bool)

(assert (=> start!34748 (array_inv!6493 _keys!1895)))

(declare-fun b!347246 () Bool)

(declare-fun res!192290 () Bool)

(assert (=> b!347246 (=> (not res!192290) (not e!212774))))

(assert (=> b!347246 (= res!192290 (arrayContainsKey!0 _keys!1895 k!1348 (index!15716 lt!163512)))))

(declare-fun b!347247 () Bool)

(declare-fun res!192291 () Bool)

(assert (=> b!347247 (=> (not res!192291) (not e!212770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347247 (= res!192291 (validKeyInArray!0 k!1348))))

(declare-fun b!347248 () Bool)

(assert (=> b!347248 (= e!212772 (and e!212775 mapRes!12705))))

(declare-fun condMapEmpty!12705 () Bool)

(declare-fun mapDefault!12705 () ValueCell!3406)

