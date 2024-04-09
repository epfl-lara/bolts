; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34312 () Bool)

(assert start!34312)

(declare-fun b_free!7279 () Bool)

(declare-fun b_next!7279 () Bool)

(assert (=> start!34312 (= b_free!7279 (not b_next!7279))))

(declare-fun tp!25377 () Bool)

(declare-fun b_and!14501 () Bool)

(assert (=> start!34312 (= tp!25377 b_and!14501)))

(declare-fun b!342060 () Bool)

(declare-fun res!189144 () Bool)

(declare-fun e!209782 () Bool)

(assert (=> b!342060 (=> (not res!189144) (not e!209782))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10619 0))(
  ( (V!10620 (val!3660 Int)) )
))
(declare-fun zeroValue!1467 () V!10619)

(declare-datatypes ((ValueCell!3272 0))(
  ( (ValueCellFull!3272 (v!5830 V!10619)) (EmptyCell!3272) )
))
(declare-datatypes ((array!18029 0))(
  ( (array!18030 (arr!8530 (Array (_ BitVec 32) ValueCell!3272)) (size!8882 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18029)

(declare-datatypes ((array!18031 0))(
  ( (array!18032 (arr!8531 (Array (_ BitVec 32) (_ BitVec 64))) (size!8883 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18031)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10619)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5292 0))(
  ( (tuple2!5293 (_1!2656 (_ BitVec 64)) (_2!2656 V!10619)) )
))
(declare-datatypes ((List!4934 0))(
  ( (Nil!4931) (Cons!4930 (h!5786 tuple2!5292) (t!10054 List!4934)) )
))
(declare-datatypes ((ListLongMap!4219 0))(
  ( (ListLongMap!4220 (toList!2125 List!4934)) )
))
(declare-fun contains!2177 (ListLongMap!4219 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1645 (array!18031 array!18029 (_ BitVec 32) (_ BitVec 32) V!10619 V!10619 (_ BitVec 32) Int) ListLongMap!4219)

(assert (=> b!342060 (= res!189144 (not (contains!2177 (getCurrentListMap!1645 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!342061 () Bool)

(declare-fun res!189145 () Bool)

(assert (=> b!342061 (=> (not res!189145) (not e!209782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342061 (= res!189145 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12279 () Bool)

(declare-fun mapRes!12279 () Bool)

(declare-fun tp!25376 () Bool)

(declare-fun e!209778 () Bool)

(assert (=> mapNonEmpty!12279 (= mapRes!12279 (and tp!25376 e!209778))))

(declare-fun mapValue!12279 () ValueCell!3272)

(declare-fun mapKey!12279 () (_ BitVec 32))

(declare-fun mapRest!12279 () (Array (_ BitVec 32) ValueCell!3272))

(assert (=> mapNonEmpty!12279 (= (arr!8530 _values!1525) (store mapRest!12279 mapKey!12279 mapValue!12279))))

(declare-fun b!342062 () Bool)

(declare-fun e!209779 () Bool)

(assert (=> b!342062 (= e!209782 e!209779)))

(declare-fun res!189143 () Bool)

(assert (=> b!342062 (=> (not res!189143) (not e!209779))))

(declare-datatypes ((SeekEntryResult!3292 0))(
  ( (MissingZero!3292 (index!15347 (_ BitVec 32))) (Found!3292 (index!15348 (_ BitVec 32))) (Intermediate!3292 (undefined!4104 Bool) (index!15349 (_ BitVec 32)) (x!34069 (_ BitVec 32))) (Undefined!3292) (MissingVacant!3292 (index!15350 (_ BitVec 32))) )
))
(declare-fun lt!162066 () SeekEntryResult!3292)

(assert (=> b!342062 (= res!189143 (and (not (is-Found!3292 lt!162066)) (not (is-MissingZero!3292 lt!162066)) (is-MissingVacant!3292 lt!162066)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18031 (_ BitVec 32)) SeekEntryResult!3292)

(assert (=> b!342062 (= lt!162066 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!342063 () Bool)

(declare-fun res!189142 () Bool)

(assert (=> b!342063 (=> (not res!189142) (not e!209782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18031 (_ BitVec 32)) Bool)

(assert (=> b!342063 (= res!189142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342064 () Bool)

(declare-fun e!209781 () Bool)

(declare-fun tp_is_empty!7231 () Bool)

(assert (=> b!342064 (= e!209781 tp_is_empty!7231)))

(declare-fun b!342065 () Bool)

(assert (=> b!342065 (= e!209778 tp_is_empty!7231)))

(declare-fun b!342066 () Bool)

(declare-datatypes ((Unit!10639 0))(
  ( (Unit!10640) )
))
(declare-fun e!209780 () Unit!10639)

(declare-fun Unit!10641 () Unit!10639)

(assert (=> b!342066 (= e!209780 Unit!10641)))

(declare-fun b!342068 () Bool)

(declare-fun res!189146 () Bool)

(assert (=> b!342068 (=> (not res!189146) (not e!209782))))

(assert (=> b!342068 (= res!189146 (and (= (size!8882 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8883 _keys!1895) (size!8882 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12279 () Bool)

(assert (=> mapIsEmpty!12279 mapRes!12279))

(declare-fun b!342069 () Bool)

(declare-fun Unit!10642 () Unit!10639)

(assert (=> b!342069 (= e!209780 Unit!10642)))

(declare-fun lt!162065 () Unit!10639)

(declare-fun lemmaArrayContainsKeyThenInListMap!297 (array!18031 array!18029 (_ BitVec 32) (_ BitVec 32) V!10619 V!10619 (_ BitVec 64) (_ BitVec 32) Int) Unit!10639)

(declare-fun arrayScanForKey!0 (array!18031 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342069 (= lt!162065 (lemmaArrayContainsKeyThenInListMap!297 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342069 false))

(declare-fun b!342070 () Bool)

(declare-fun e!209783 () Bool)

(assert (=> b!342070 (= e!209783 (and e!209781 mapRes!12279))))

(declare-fun condMapEmpty!12279 () Bool)

(declare-fun mapDefault!12279 () ValueCell!3272)

