; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34280 () Bool)

(assert start!34280)

(declare-fun b_free!7271 () Bool)

(declare-fun b_next!7271 () Bool)

(assert (=> start!34280 (= b_free!7271 (not b_next!7271))))

(declare-fun tp!25350 () Bool)

(declare-fun b_and!14491 () Bool)

(assert (=> start!34280 (= tp!25350 b_and!14491)))

(declare-fun b!341777 () Bool)

(declare-fun e!209609 () Bool)

(declare-fun tp_is_empty!7223 () Bool)

(assert (=> b!341777 (= e!209609 tp_is_empty!7223)))

(declare-fun b!341778 () Bool)

(declare-fun res!189009 () Bool)

(declare-fun e!209604 () Bool)

(assert (=> b!341778 (=> (not res!189009) (not e!209604))))

(declare-datatypes ((array!18013 0))(
  ( (array!18014 (arr!8523 (Array (_ BitVec 32) (_ BitVec 64))) (size!8875 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18013)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18013 (_ BitVec 32)) Bool)

(assert (=> b!341778 (= res!189009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12264 () Bool)

(declare-fun mapRes!12264 () Bool)

(assert (=> mapIsEmpty!12264 mapRes!12264))

(declare-fun b!341779 () Bool)

(declare-fun e!209605 () Bool)

(assert (=> b!341779 (= e!209604 e!209605)))

(declare-fun res!189008 () Bool)

(assert (=> b!341779 (=> (not res!189008) (not e!209605))))

(declare-datatypes ((SeekEntryResult!3290 0))(
  ( (MissingZero!3290 (index!15339 (_ BitVec 32))) (Found!3290 (index!15340 (_ BitVec 32))) (Intermediate!3290 (undefined!4102 Bool) (index!15341 (_ BitVec 32)) (x!34041 (_ BitVec 32))) (Undefined!3290) (MissingVacant!3290 (index!15342 (_ BitVec 32))) )
))
(declare-fun lt!161926 () SeekEntryResult!3290)

(assert (=> b!341779 (= res!189008 (and (not (is-Found!3290 lt!161926)) (not (is-MissingZero!3290 lt!161926)) (is-MissingVacant!3290 lt!161926)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18013 (_ BitVec 32)) SeekEntryResult!3290)

(assert (=> b!341779 (= lt!161926 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!341780 () Bool)

(declare-fun res!189007 () Bool)

(assert (=> b!341780 (=> (not res!189007) (not e!209604))))

(declare-datatypes ((List!4929 0))(
  ( (Nil!4926) (Cons!4925 (h!5781 (_ BitVec 64)) (t!10047 List!4929)) )
))
(declare-fun arrayNoDuplicates!0 (array!18013 (_ BitVec 32) List!4929) Bool)

(assert (=> b!341780 (= res!189007 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4926))))

(declare-fun b!341781 () Bool)

(declare-datatypes ((Unit!10627 0))(
  ( (Unit!10628) )
))
(declare-fun e!209606 () Unit!10627)

(declare-fun Unit!10629 () Unit!10627)

(assert (=> b!341781 (= e!209606 Unit!10629)))

(declare-fun b!341782 () Bool)

(declare-fun res!189006 () Bool)

(assert (=> b!341782 (=> (not res!189006) (not e!209604))))

(declare-datatypes ((V!10607 0))(
  ( (V!10608 (val!3656 Int)) )
))
(declare-fun zeroValue!1467 () V!10607)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3268 0))(
  ( (ValueCellFull!3268 (v!5825 V!10607)) (EmptyCell!3268) )
))
(declare-datatypes ((array!18015 0))(
  ( (array!18016 (arr!8524 (Array (_ BitVec 32) ValueCell!3268)) (size!8876 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18015)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10607)

(declare-datatypes ((tuple2!5286 0))(
  ( (tuple2!5287 (_1!2653 (_ BitVec 64)) (_2!2653 V!10607)) )
))
(declare-datatypes ((List!4930 0))(
  ( (Nil!4927) (Cons!4926 (h!5782 tuple2!5286) (t!10048 List!4930)) )
))
(declare-datatypes ((ListLongMap!4213 0))(
  ( (ListLongMap!4214 (toList!2122 List!4930)) )
))
(declare-fun contains!2173 (ListLongMap!4213 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1642 (array!18013 array!18015 (_ BitVec 32) (_ BitVec 32) V!10607 V!10607 (_ BitVec 32) Int) ListLongMap!4213)

(assert (=> b!341782 (= res!189006 (not (contains!2173 (getCurrentListMap!1642 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!341783 () Bool)

(declare-fun res!189005 () Bool)

(assert (=> b!341783 (=> (not res!189005) (not e!209604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341783 (= res!189005 (validKeyInArray!0 k!1348))))

(declare-fun res!189010 () Bool)

(assert (=> start!34280 (=> (not res!189010) (not e!209604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34280 (= res!189010 (validMask!0 mask!2385))))

(assert (=> start!34280 e!209604))

(assert (=> start!34280 true))

(assert (=> start!34280 tp_is_empty!7223))

(assert (=> start!34280 tp!25350))

(declare-fun e!209607 () Bool)

(declare-fun array_inv!6306 (array!18015) Bool)

(assert (=> start!34280 (and (array_inv!6306 _values!1525) e!209607)))

(declare-fun array_inv!6307 (array!18013) Bool)

(assert (=> start!34280 (array_inv!6307 _keys!1895)))

(declare-fun b!341784 () Bool)

(declare-fun res!189011 () Bool)

(assert (=> b!341784 (=> (not res!189011) (not e!209604))))

(assert (=> b!341784 (= res!189011 (and (= (size!8876 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8875 _keys!1895) (size!8876 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341785 () Bool)

(declare-fun Unit!10630 () Unit!10627)

(assert (=> b!341785 (= e!209606 Unit!10630)))

(declare-fun lt!161928 () Unit!10627)

(declare-fun lemmaArrayContainsKeyThenInListMap!295 (array!18013 array!18015 (_ BitVec 32) (_ BitVec 32) V!10607 V!10607 (_ BitVec 64) (_ BitVec 32) Int) Unit!10627)

(declare-fun arrayScanForKey!0 (array!18013 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341785 (= lt!161928 (lemmaArrayContainsKeyThenInListMap!295 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341785 false))

(declare-fun mapNonEmpty!12264 () Bool)

(declare-fun tp!25349 () Bool)

(assert (=> mapNonEmpty!12264 (= mapRes!12264 (and tp!25349 e!209609))))

(declare-fun mapRest!12264 () (Array (_ BitVec 32) ValueCell!3268))

(declare-fun mapValue!12264 () ValueCell!3268)

(declare-fun mapKey!12264 () (_ BitVec 32))

(assert (=> mapNonEmpty!12264 (= (arr!8524 _values!1525) (store mapRest!12264 mapKey!12264 mapValue!12264))))

(declare-fun b!341786 () Bool)

(assert (=> b!341786 (= e!209605 (and (bvslt #b00000000000000000000000000000000 (size!8875 _keys!1895)) (bvsge (size!8875 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun lt!161927 () Unit!10627)

(assert (=> b!341786 (= lt!161927 e!209606)))

(declare-fun c!52670 () Bool)

(declare-fun arrayContainsKey!0 (array!18013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341786 (= c!52670 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!341787 () Bool)

(declare-fun e!209608 () Bool)

(assert (=> b!341787 (= e!209608 tp_is_empty!7223)))

(declare-fun b!341788 () Bool)

(assert (=> b!341788 (= e!209607 (and e!209608 mapRes!12264))))

(declare-fun condMapEmpty!12264 () Bool)

(declare-fun mapDefault!12264 () ValueCell!3268)

