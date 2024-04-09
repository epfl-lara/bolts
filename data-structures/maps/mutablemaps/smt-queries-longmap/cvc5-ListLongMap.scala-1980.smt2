; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34772 () Bool)

(assert start!34772)

(declare-fun b_free!7549 () Bool)

(declare-fun b_next!7549 () Bool)

(assert (=> start!34772 (= b_free!7549 (not b_next!7549))))

(declare-fun tp!26213 () Bool)

(declare-fun b_and!14789 () Bool)

(assert (=> start!34772 (= tp!26213 b_and!14789)))

(declare-fun b!347408 () Bool)

(declare-fun res!192368 () Bool)

(declare-fun e!212880 () Bool)

(assert (=> b!347408 (=> (not res!192368) (not e!212880))))

(declare-datatypes ((array!18559 0))(
  ( (array!18560 (arr!8786 (Array (_ BitVec 32) (_ BitVec 64))) (size!9138 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18559)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18559 (_ BitVec 32)) Bool)

(assert (=> b!347408 (= res!192368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12711 () Bool)

(declare-fun mapRes!12711 () Bool)

(declare-fun tp!26214 () Bool)

(declare-fun e!212882 () Bool)

(assert (=> mapNonEmpty!12711 (= mapRes!12711 (and tp!26214 e!212882))))

(declare-datatypes ((V!10979 0))(
  ( (V!10980 (val!3795 Int)) )
))
(declare-datatypes ((ValueCell!3407 0))(
  ( (ValueCellFull!3407 (v!5974 V!10979)) (EmptyCell!3407) )
))
(declare-fun mapRest!12711 () (Array (_ BitVec 32) ValueCell!3407))

(declare-fun mapKey!12711 () (_ BitVec 32))

(declare-datatypes ((array!18561 0))(
  ( (array!18562 (arr!8787 (Array (_ BitVec 32) ValueCell!3407)) (size!9139 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18561)

(declare-fun mapValue!12711 () ValueCell!3407)

(assert (=> mapNonEmpty!12711 (= (arr!8787 _values!1525) (store mapRest!12711 mapKey!12711 mapValue!12711))))

(declare-fun b!347410 () Bool)

(declare-fun res!192369 () Bool)

(assert (=> b!347410 (=> (not res!192369) (not e!212880))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10979)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10979)

(declare-datatypes ((tuple2!5478 0))(
  ( (tuple2!5479 (_1!2749 (_ BitVec 64)) (_2!2749 V!10979)) )
))
(declare-datatypes ((List!5122 0))(
  ( (Nil!5119) (Cons!5118 (h!5974 tuple2!5478) (t!10260 List!5122)) )
))
(declare-datatypes ((ListLongMap!4405 0))(
  ( (ListLongMap!4406 (toList!2218 List!5122)) )
))
(declare-fun contains!2279 (ListLongMap!4405 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1738 (array!18559 array!18561 (_ BitVec 32) (_ BitVec 32) V!10979 V!10979 (_ BitVec 32) Int) ListLongMap!4405)

(assert (=> b!347410 (= res!192369 (not (contains!2279 (getCurrentListMap!1738 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!347411 () Bool)

(declare-fun res!192367 () Bool)

(assert (=> b!347411 (=> (not res!192367) (not e!212880))))

(assert (=> b!347411 (= res!192367 (and (= (size!9139 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9138 _keys!1895) (size!9139 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347412 () Bool)

(declare-fun res!192372 () Bool)

(assert (=> b!347412 (=> (not res!192372) (not e!212880))))

(declare-datatypes ((List!5123 0))(
  ( (Nil!5120) (Cons!5119 (h!5975 (_ BitVec 64)) (t!10261 List!5123)) )
))
(declare-fun arrayNoDuplicates!0 (array!18559 (_ BitVec 32) List!5123) Bool)

(assert (=> b!347412 (= res!192372 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5120))))

(declare-fun b!347413 () Bool)

(declare-fun e!212884 () Bool)

(assert (=> b!347413 (= e!212880 e!212884)))

(declare-fun res!192366 () Bool)

(assert (=> b!347413 (=> (not res!192366) (not e!212884))))

(declare-datatypes ((SeekEntryResult!3385 0))(
  ( (MissingZero!3385 (index!15719 (_ BitVec 32))) (Found!3385 (index!15720 (_ BitVec 32))) (Intermediate!3385 (undefined!4197 Bool) (index!15721 (_ BitVec 32)) (x!34612 (_ BitVec 32))) (Undefined!3385) (MissingVacant!3385 (index!15722 (_ BitVec 32))) )
))
(declare-fun lt!163617 () SeekEntryResult!3385)

(assert (=> b!347413 (= res!192366 (and (is-Found!3385 lt!163617) (= (select (arr!8786 _keys!1895) (index!15720 lt!163617)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18559 (_ BitVec 32)) SeekEntryResult!3385)

(assert (=> b!347413 (= lt!163617 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!347414 () Bool)

(declare-fun tp_is_empty!7501 () Bool)

(assert (=> b!347414 (= e!212882 tp_is_empty!7501)))

(declare-fun b!347415 () Bool)

(declare-fun res!192370 () Bool)

(assert (=> b!347415 (=> (not res!192370) (not e!212884))))

(declare-fun arrayContainsKey!0 (array!18559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347415 (= res!192370 (arrayContainsKey!0 _keys!1895 k!1348 (index!15720 lt!163617)))))

(declare-fun b!347416 () Bool)

(declare-fun e!212881 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347416 (= e!212881 (validKeyInArray!0 (select (arr!8786 _keys!1895) (index!15720 lt!163617))))))

(declare-fun b!347417 () Bool)

(assert (=> b!347417 (= e!212884 (not e!212881))))

(declare-fun res!192371 () Bool)

(assert (=> b!347417 (=> res!192371 e!212881)))

(assert (=> b!347417 (= res!192371 (or (bvslt (index!15720 lt!163617) #b00000000000000000000000000000000) (bvsge (index!15720 lt!163617) (size!9138 _keys!1895))))))

(assert (=> b!347417 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10784 0))(
  ( (Unit!10785) )
))
(declare-fun lt!163616 () Unit!10784)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18559 (_ BitVec 64) (_ BitVec 32)) Unit!10784)

(assert (=> b!347417 (= lt!163616 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15720 lt!163617)))))

(declare-fun b!347418 () Bool)

(declare-fun res!192373 () Bool)

(assert (=> b!347418 (=> (not res!192373) (not e!212880))))

(assert (=> b!347418 (= res!192373 (validKeyInArray!0 k!1348))))

(declare-fun b!347409 () Bool)

(declare-fun e!212879 () Bool)

(declare-fun e!212885 () Bool)

(assert (=> b!347409 (= e!212879 (and e!212885 mapRes!12711))))

(declare-fun condMapEmpty!12711 () Bool)

(declare-fun mapDefault!12711 () ValueCell!3407)

