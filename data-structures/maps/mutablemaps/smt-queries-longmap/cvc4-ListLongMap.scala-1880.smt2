; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33726 () Bool)

(assert start!33726)

(declare-fun b_free!6953 () Bool)

(declare-fun b_next!6953 () Bool)

(assert (=> start!33726 (= b_free!6953 (not b_next!6953))))

(declare-fun tp!24363 () Bool)

(declare-fun b_and!14151 () Bool)

(assert (=> start!33726 (= tp!24363 b_and!14151)))

(declare-fun res!184907 () Bool)

(declare-fun e!205662 () Bool)

(assert (=> start!33726 (=> (not res!184907) (not e!205662))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33726 (= res!184907 (validMask!0 mask!2385))))

(assert (=> start!33726 e!205662))

(assert (=> start!33726 true))

(declare-fun tp_is_empty!6905 () Bool)

(assert (=> start!33726 tp_is_empty!6905))

(assert (=> start!33726 tp!24363))

(declare-datatypes ((V!10183 0))(
  ( (V!10184 (val!3497 Int)) )
))
(declare-datatypes ((ValueCell!3109 0))(
  ( (ValueCellFull!3109 (v!5655 V!10183)) (EmptyCell!3109) )
))
(declare-datatypes ((array!17391 0))(
  ( (array!17392 (arr!8223 (Array (_ BitVec 32) ValueCell!3109)) (size!8575 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17391)

(declare-fun e!205659 () Bool)

(declare-fun array_inv!6096 (array!17391) Bool)

(assert (=> start!33726 (and (array_inv!6096 _values!1525) e!205659)))

(declare-datatypes ((array!17393 0))(
  ( (array!17394 (arr!8224 (Array (_ BitVec 32) (_ BitVec 64))) (size!8576 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17393)

(declare-fun array_inv!6097 (array!17393) Bool)

(assert (=> start!33726 (array_inv!6097 _keys!1895)))

(declare-fun mapNonEmpty!11754 () Bool)

(declare-fun mapRes!11754 () Bool)

(declare-fun tp!24362 () Bool)

(declare-fun e!205664 () Bool)

(assert (=> mapNonEmpty!11754 (= mapRes!11754 (and tp!24362 e!205664))))

(declare-fun mapKey!11754 () (_ BitVec 32))

(declare-fun mapRest!11754 () (Array (_ BitVec 32) ValueCell!3109))

(declare-fun mapValue!11754 () ValueCell!3109)

(assert (=> mapNonEmpty!11754 (= (arr!8223 _values!1525) (store mapRest!11754 mapKey!11754 mapValue!11754))))

(declare-fun b!335026 () Bool)

(declare-fun e!205661 () Bool)

(declare-fun e!205663 () Bool)

(assert (=> b!335026 (= e!205661 e!205663)))

(declare-fun res!184906 () Bool)

(assert (=> b!335026 (=> (not res!184906) (not e!205663))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3188 0))(
  ( (MissingZero!3188 (index!14931 (_ BitVec 32))) (Found!3188 (index!14932 (_ BitVec 32))) (Intermediate!3188 (undefined!4000 Bool) (index!14933 (_ BitVec 32)) (x!33405 (_ BitVec 32))) (Undefined!3188) (MissingVacant!3188 (index!14934 (_ BitVec 32))) )
))
(declare-fun lt!159717 () SeekEntryResult!3188)

(assert (=> b!335026 (= res!184906 (and (is-Found!3188 lt!159717) (= (select (arr!8224 _keys!1895) (index!14932 lt!159717)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17393 (_ BitVec 32)) SeekEntryResult!3188)

(assert (=> b!335026 (= lt!159717 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!335027 () Bool)

(declare-fun res!184909 () Bool)

(assert (=> b!335027 (=> (not res!184909) (not e!205662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17393 (_ BitVec 32)) Bool)

(assert (=> b!335027 (= res!184909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335028 () Bool)

(declare-fun res!184910 () Bool)

(assert (=> b!335028 (=> (not res!184910) (not e!205663))))

(declare-fun arrayContainsKey!0 (array!17393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!335028 (= res!184910 (arrayContainsKey!0 _keys!1895 k!1348 (index!14932 lt!159717)))))

(declare-fun b!335029 () Bool)

(assert (=> b!335029 (= e!205662 e!205661)))

(declare-fun res!184908 () Bool)

(assert (=> b!335029 (=> (not res!184908) (not e!205661))))

(declare-datatypes ((tuple2!5078 0))(
  ( (tuple2!5079 (_1!2549 (_ BitVec 64)) (_2!2549 V!10183)) )
))
(declare-datatypes ((List!4720 0))(
  ( (Nil!4717) (Cons!4716 (h!5572 tuple2!5078) (t!9816 List!4720)) )
))
(declare-datatypes ((ListLongMap!4005 0))(
  ( (ListLongMap!4006 (toList!2018 List!4720)) )
))
(declare-fun lt!159716 () ListLongMap!4005)

(declare-fun contains!2058 (ListLongMap!4005 (_ BitVec 64)) Bool)

(assert (=> b!335029 (= res!184908 (not (contains!2058 lt!159716 k!1348)))))

(declare-fun zeroValue!1467 () V!10183)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10183)

(declare-fun getCurrentListMap!1540 (array!17393 array!17391 (_ BitVec 32) (_ BitVec 32) V!10183 V!10183 (_ BitVec 32) Int) ListLongMap!4005)

(assert (=> b!335029 (= lt!159716 (getCurrentListMap!1540 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!335030 () Bool)

(declare-fun e!205660 () Bool)

(assert (=> b!335030 (= e!205659 (and e!205660 mapRes!11754))))

(declare-fun condMapEmpty!11754 () Bool)

(declare-fun mapDefault!11754 () ValueCell!3109)

