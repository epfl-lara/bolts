; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34776 () Bool)

(assert start!34776)

(declare-fun b_free!7553 () Bool)

(declare-fun b_next!7553 () Bool)

(assert (=> start!34776 (= b_free!7553 (not b_next!7553))))

(declare-fun tp!26225 () Bool)

(declare-fun b_and!14793 () Bool)

(assert (=> start!34776 (= tp!26225 b_and!14793)))

(declare-fun mapIsEmpty!12717 () Bool)

(declare-fun mapRes!12717 () Bool)

(assert (=> mapIsEmpty!12717 mapRes!12717))

(declare-fun mapNonEmpty!12717 () Bool)

(declare-fun tp!26226 () Bool)

(declare-fun e!212922 () Bool)

(assert (=> mapNonEmpty!12717 (= mapRes!12717 (and tp!26226 e!212922))))

(declare-fun mapKey!12717 () (_ BitVec 32))

(declare-datatypes ((V!10983 0))(
  ( (V!10984 (val!3797 Int)) )
))
(declare-datatypes ((ValueCell!3409 0))(
  ( (ValueCellFull!3409 (v!5976 V!10983)) (EmptyCell!3409) )
))
(declare-fun mapValue!12717 () ValueCell!3409)

(declare-datatypes ((array!18567 0))(
  ( (array!18568 (arr!8790 (Array (_ BitVec 32) ValueCell!3409)) (size!9142 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18567)

(declare-fun mapRest!12717 () (Array (_ BitVec 32) ValueCell!3409))

(assert (=> mapNonEmpty!12717 (= (arr!8790 _values!1525) (store mapRest!12717 mapKey!12717 mapValue!12717))))

(declare-fun b!347480 () Bool)

(declare-fun e!212921 () Bool)

(declare-datatypes ((array!18569 0))(
  ( (array!18570 (arr!8791 (Array (_ BitVec 32) (_ BitVec 64))) (size!9143 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18569)

(declare-datatypes ((SeekEntryResult!3387 0))(
  ( (MissingZero!3387 (index!15727 (_ BitVec 32))) (Found!3387 (index!15728 (_ BitVec 32))) (Intermediate!3387 (undefined!4199 Bool) (index!15729 (_ BitVec 32)) (x!34614 (_ BitVec 32))) (Undefined!3387) (MissingVacant!3387 (index!15730 (_ BitVec 32))) )
))
(declare-fun lt!163629 () SeekEntryResult!3387)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347480 (= e!212921 (validKeyInArray!0 (select (arr!8791 _keys!1895) (index!15728 lt!163629))))))

(declare-fun b!347481 () Bool)

(declare-fun e!212923 () Bool)

(declare-fun tp_is_empty!7505 () Bool)

(assert (=> b!347481 (= e!212923 tp_is_empty!7505)))

(declare-fun b!347482 () Bool)

(declare-fun res!192425 () Bool)

(declare-fun e!212925 () Bool)

(assert (=> b!347482 (=> (not res!192425) (not e!212925))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347482 (= res!192425 (arrayContainsKey!0 _keys!1895 k!1348 (index!15728 lt!163629)))))

(declare-fun b!347483 () Bool)

(assert (=> b!347483 (= e!212922 tp_is_empty!7505)))

(declare-fun b!347484 () Bool)

(assert (=> b!347484 (= e!212925 (not e!212921))))

(declare-fun res!192420 () Bool)

(assert (=> b!347484 (=> res!192420 e!212921)))

(assert (=> b!347484 (= res!192420 (or (bvslt (index!15728 lt!163629) #b00000000000000000000000000000000) (bvsge (index!15728 lt!163629) (size!9143 _keys!1895))))))

(assert (=> b!347484 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10788 0))(
  ( (Unit!10789) )
))
(declare-fun lt!163628 () Unit!10788)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18569 (_ BitVec 64) (_ BitVec 32)) Unit!10788)

(assert (=> b!347484 (= lt!163628 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15728 lt!163629)))))

(declare-fun b!347486 () Bool)

(declare-fun res!192422 () Bool)

(declare-fun e!212926 () Bool)

(assert (=> b!347486 (=> (not res!192422) (not e!212926))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10983)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10983)

(declare-datatypes ((tuple2!5482 0))(
  ( (tuple2!5483 (_1!2751 (_ BitVec 64)) (_2!2751 V!10983)) )
))
(declare-datatypes ((List!5126 0))(
  ( (Nil!5123) (Cons!5122 (h!5978 tuple2!5482) (t!10264 List!5126)) )
))
(declare-datatypes ((ListLongMap!4409 0))(
  ( (ListLongMap!4410 (toList!2220 List!5126)) )
))
(declare-fun contains!2281 (ListLongMap!4409 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1740 (array!18569 array!18567 (_ BitVec 32) (_ BitVec 32) V!10983 V!10983 (_ BitVec 32) Int) ListLongMap!4409)

(assert (=> b!347486 (= res!192422 (not (contains!2281 (getCurrentListMap!1740 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!347487 () Bool)

(declare-fun res!192424 () Bool)

(assert (=> b!347487 (=> (not res!192424) (not e!212926))))

(declare-datatypes ((List!5127 0))(
  ( (Nil!5124) (Cons!5123 (h!5979 (_ BitVec 64)) (t!10265 List!5127)) )
))
(declare-fun arrayNoDuplicates!0 (array!18569 (_ BitVec 32) List!5127) Bool)

(assert (=> b!347487 (= res!192424 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5124))))

(declare-fun b!347488 () Bool)

(declare-fun res!192426 () Bool)

(assert (=> b!347488 (=> (not res!192426) (not e!212926))))

(assert (=> b!347488 (= res!192426 (and (= (size!9142 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9143 _keys!1895) (size!9142 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347489 () Bool)

(assert (=> b!347489 (= e!212926 e!212925)))

(declare-fun res!192423 () Bool)

(assert (=> b!347489 (=> (not res!192423) (not e!212925))))

(assert (=> b!347489 (= res!192423 (and (is-Found!3387 lt!163629) (= (select (arr!8791 _keys!1895) (index!15728 lt!163629)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18569 (_ BitVec 32)) SeekEntryResult!3387)

(assert (=> b!347489 (= lt!163629 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!347485 () Bool)

(declare-fun e!212927 () Bool)

(assert (=> b!347485 (= e!212927 (and e!212923 mapRes!12717))))

(declare-fun condMapEmpty!12717 () Bool)

(declare-fun mapDefault!12717 () ValueCell!3409)

