; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34354 () Bool)

(assert start!34354)

(declare-fun b_free!7321 () Bool)

(declare-fun b_next!7321 () Bool)

(assert (=> start!34354 (= b_free!7321 (not b_next!7321))))

(declare-fun tp!25503 () Bool)

(declare-fun b_and!14543 () Bool)

(assert (=> start!34354 (= tp!25503 b_and!14543)))

(declare-fun b!342820 () Bool)

(declare-fun e!210223 () Bool)

(declare-fun e!210225 () Bool)

(assert (=> b!342820 (= e!210223 e!210225)))

(declare-fun res!189593 () Bool)

(assert (=> b!342820 (=> (not res!189593) (not e!210225))))

(declare-datatypes ((SeekEntryResult!3305 0))(
  ( (MissingZero!3305 (index!15399 (_ BitVec 32))) (Found!3305 (index!15400 (_ BitVec 32))) (Intermediate!3305 (undefined!4117 Bool) (index!15401 (_ BitVec 32)) (x!34138 (_ BitVec 32))) (Undefined!3305) (MissingVacant!3305 (index!15402 (_ BitVec 32))) )
))
(declare-fun lt!162265 () SeekEntryResult!3305)

(assert (=> b!342820 (= res!189593 (and (not (is-Found!3305 lt!162265)) (not (is-MissingZero!3305 lt!162265)) (is-MissingVacant!3305 lt!162265)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18111 0))(
  ( (array!18112 (arr!8571 (Array (_ BitVec 32) (_ BitVec 64))) (size!8923 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18111)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18111 (_ BitVec 32)) SeekEntryResult!3305)

(assert (=> b!342820 (= lt!162265 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!342821 () Bool)

(declare-fun res!189592 () Bool)

(assert (=> b!342821 (=> (not res!189592) (not e!210223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18111 (_ BitVec 32)) Bool)

(assert (=> b!342821 (= res!189592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342822 () Bool)

(declare-fun res!189590 () Bool)

(declare-fun e!210226 () Bool)

(assert (=> b!342822 (=> (not res!189590) (not e!210226))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!342822 (= res!189590 (inRange!0 (index!15402 lt!162265) mask!2385))))

(declare-fun b!342823 () Bool)

(assert (=> b!342823 (= e!210225 e!210226)))

(declare-fun res!189588 () Bool)

(assert (=> b!342823 (=> (not res!189588) (not e!210226))))

(declare-fun lt!162267 () Bool)

(assert (=> b!342823 (= res!189588 (not lt!162267))))

(declare-datatypes ((Unit!10705 0))(
  ( (Unit!10706) )
))
(declare-fun lt!162266 () Unit!10705)

(declare-fun e!210221 () Unit!10705)

(assert (=> b!342823 (= lt!162266 e!210221)))

(declare-fun c!52784 () Bool)

(assert (=> b!342823 (= c!52784 lt!162267)))

(declare-fun arrayContainsKey!0 (array!18111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342823 (= lt!162267 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!342824 () Bool)

(declare-fun res!189587 () Bool)

(assert (=> b!342824 (=> (not res!189587) (not e!210223))))

(declare-datatypes ((V!10675 0))(
  ( (V!10676 (val!3681 Int)) )
))
(declare-fun zeroValue!1467 () V!10675)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10675)

(declare-datatypes ((ValueCell!3293 0))(
  ( (ValueCellFull!3293 (v!5851 V!10675)) (EmptyCell!3293) )
))
(declare-datatypes ((array!18113 0))(
  ( (array!18114 (arr!8572 (Array (_ BitVec 32) ValueCell!3293)) (size!8924 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18113)

(declare-datatypes ((tuple2!5324 0))(
  ( (tuple2!5325 (_1!2672 (_ BitVec 64)) (_2!2672 V!10675)) )
))
(declare-datatypes ((List!4967 0))(
  ( (Nil!4964) (Cons!4963 (h!5819 tuple2!5324) (t!10087 List!4967)) )
))
(declare-datatypes ((ListLongMap!4251 0))(
  ( (ListLongMap!4252 (toList!2141 List!4967)) )
))
(declare-fun contains!2193 (ListLongMap!4251 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1661 (array!18111 array!18113 (_ BitVec 32) (_ BitVec 32) V!10675 V!10675 (_ BitVec 32) Int) ListLongMap!4251)

(assert (=> b!342824 (= res!189587 (not (contains!2193 (getCurrentListMap!1661 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!342825 () Bool)

(declare-fun Unit!10707 () Unit!10705)

(assert (=> b!342825 (= e!210221 Unit!10707)))

(declare-fun res!189586 () Bool)

(assert (=> start!34354 (=> (not res!189586) (not e!210223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34354 (= res!189586 (validMask!0 mask!2385))))

(assert (=> start!34354 e!210223))

(assert (=> start!34354 true))

(declare-fun tp_is_empty!7273 () Bool)

(assert (=> start!34354 tp_is_empty!7273))

(assert (=> start!34354 tp!25503))

(declare-fun e!210227 () Bool)

(declare-fun array_inv!6338 (array!18113) Bool)

(assert (=> start!34354 (and (array_inv!6338 _values!1525) e!210227)))

(declare-fun array_inv!6339 (array!18111) Bool)

(assert (=> start!34354 (array_inv!6339 _keys!1895)))

(declare-fun b!342826 () Bool)

(declare-fun res!189585 () Bool)

(assert (=> b!342826 (=> (not res!189585) (not e!210223))))

(assert (=> b!342826 (= res!189585 (and (= (size!8924 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8923 _keys!1895) (size!8924 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342827 () Bool)

(declare-fun res!189591 () Bool)

(assert (=> b!342827 (=> (not res!189591) (not e!210223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342827 (= res!189591 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12342 () Bool)

(declare-fun mapRes!12342 () Bool)

(declare-fun tp!25502 () Bool)

(declare-fun e!210222 () Bool)

(assert (=> mapNonEmpty!12342 (= mapRes!12342 (and tp!25502 e!210222))))

(declare-fun mapValue!12342 () ValueCell!3293)

(declare-fun mapRest!12342 () (Array (_ BitVec 32) ValueCell!3293))

(declare-fun mapKey!12342 () (_ BitVec 32))

(assert (=> mapNonEmpty!12342 (= (arr!8572 _values!1525) (store mapRest!12342 mapKey!12342 mapValue!12342))))

(declare-fun mapIsEmpty!12342 () Bool)

(assert (=> mapIsEmpty!12342 mapRes!12342))

(declare-fun b!342828 () Bool)

(assert (=> b!342828 (= e!210226 (and (= (select (arr!8571 _keys!1895) (index!15402 lt!162265)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge #b00000000000000000000000000000000 (size!8923 _keys!1895))))))

(declare-fun b!342829 () Bool)

(declare-fun res!189589 () Bool)

(assert (=> b!342829 (=> (not res!189589) (not e!210223))))

(declare-datatypes ((List!4968 0))(
  ( (Nil!4965) (Cons!4964 (h!5820 (_ BitVec 64)) (t!10088 List!4968)) )
))
(declare-fun arrayNoDuplicates!0 (array!18111 (_ BitVec 32) List!4968) Bool)

(assert (=> b!342829 (= res!189589 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4965))))

(declare-fun b!342830 () Bool)

(assert (=> b!342830 (= e!210222 tp_is_empty!7273)))

(declare-fun b!342831 () Bool)

(declare-fun Unit!10708 () Unit!10705)

(assert (=> b!342831 (= e!210221 Unit!10708)))

(declare-fun lt!162264 () Unit!10705)

(declare-fun lemmaArrayContainsKeyThenInListMap!313 (array!18111 array!18113 (_ BitVec 32) (_ BitVec 32) V!10675 V!10675 (_ BitVec 64) (_ BitVec 32) Int) Unit!10705)

(declare-fun arrayScanForKey!0 (array!18111 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342831 (= lt!162264 (lemmaArrayContainsKeyThenInListMap!313 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342831 false))

(declare-fun b!342832 () Bool)

(declare-fun e!210228 () Bool)

(assert (=> b!342832 (= e!210227 (and e!210228 mapRes!12342))))

(declare-fun condMapEmpty!12342 () Bool)

(declare-fun mapDefault!12342 () ValueCell!3293)

