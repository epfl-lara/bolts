; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35190 () Bool)

(assert start!35190)

(declare-fun b_free!7775 () Bool)

(declare-fun b_next!7775 () Bool)

(assert (=> start!35190 (= b_free!7775 (not b_next!7775))))

(declare-fun tp!26915 () Bool)

(declare-fun b_and!15031 () Bool)

(assert (=> start!35190 (= tp!26915 b_and!15031)))

(declare-fun b!352469 () Bool)

(declare-fun res!195508 () Bool)

(declare-fun e!215856 () Bool)

(assert (=> b!352469 (=> (not res!195508) (not e!215856))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352469 (= res!195508 (validKeyInArray!0 k!1348))))

(declare-fun b!352470 () Bool)

(declare-fun e!215853 () Bool)

(declare-fun tp_is_empty!7727 () Bool)

(assert (=> b!352470 (= e!215853 tp_is_empty!7727)))

(declare-fun b!352471 () Bool)

(declare-fun res!195511 () Bool)

(assert (=> b!352471 (=> (not res!195511) (not e!215856))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11279 0))(
  ( (V!11280 (val!3908 Int)) )
))
(declare-fun zeroValue!1467 () V!11279)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3520 0))(
  ( (ValueCellFull!3520 (v!6095 V!11279)) (EmptyCell!3520) )
))
(declare-datatypes ((array!19003 0))(
  ( (array!19004 (arr!9000 (Array (_ BitVec 32) ValueCell!3520)) (size!9352 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19003)

(declare-datatypes ((array!19005 0))(
  ( (array!19006 (arr!9001 (Array (_ BitVec 32) (_ BitVec 64))) (size!9353 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19005)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11279)

(declare-datatypes ((tuple2!5636 0))(
  ( (tuple2!5637 (_1!2828 (_ BitVec 64)) (_2!2828 V!11279)) )
))
(declare-datatypes ((List!5272 0))(
  ( (Nil!5269) (Cons!5268 (h!6124 tuple2!5636) (t!10426 List!5272)) )
))
(declare-datatypes ((ListLongMap!4563 0))(
  ( (ListLongMap!4564 (toList!2297 List!5272)) )
))
(declare-fun contains!2366 (ListLongMap!4563 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1814 (array!19005 array!19003 (_ BitVec 32) (_ BitVec 32) V!11279 V!11279 (_ BitVec 32) Int) ListLongMap!4563)

(assert (=> b!352471 (= res!195511 (not (contains!2366 (getCurrentListMap!1814 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun res!195507 () Bool)

(assert (=> start!35190 (=> (not res!195507) (not e!215856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35190 (= res!195507 (validMask!0 mask!2385))))

(assert (=> start!35190 e!215856))

(assert (=> start!35190 true))

(assert (=> start!35190 tp_is_empty!7727))

(assert (=> start!35190 tp!26915))

(declare-fun e!215854 () Bool)

(declare-fun array_inv!6630 (array!19003) Bool)

(assert (=> start!35190 (and (array_inv!6630 _values!1525) e!215854)))

(declare-fun array_inv!6631 (array!19005) Bool)

(assert (=> start!35190 (array_inv!6631 _keys!1895)))

(declare-fun b!352472 () Bool)

(assert (=> b!352472 (= e!215856 false)))

(declare-datatypes ((SeekEntryResult!3461 0))(
  ( (MissingZero!3461 (index!16023 (_ BitVec 32))) (Found!3461 (index!16024 (_ BitVec 32))) (Intermediate!3461 (undefined!4273 Bool) (index!16025 (_ BitVec 32)) (x!35064 (_ BitVec 32))) (Undefined!3461) (MissingVacant!3461 (index!16026 (_ BitVec 32))) )
))
(declare-fun lt!165288 () SeekEntryResult!3461)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19005 (_ BitVec 32)) SeekEntryResult!3461)

(assert (=> b!352472 (= lt!165288 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!13074 () Bool)

(declare-fun mapRes!13074 () Bool)

(assert (=> mapIsEmpty!13074 mapRes!13074))

(declare-fun b!352473 () Bool)

(declare-fun res!195509 () Bool)

(assert (=> b!352473 (=> (not res!195509) (not e!215856))))

(declare-datatypes ((List!5273 0))(
  ( (Nil!5270) (Cons!5269 (h!6125 (_ BitVec 64)) (t!10427 List!5273)) )
))
(declare-fun arrayNoDuplicates!0 (array!19005 (_ BitVec 32) List!5273) Bool)

(assert (=> b!352473 (= res!195509 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5270))))

(declare-fun b!352474 () Bool)

(declare-fun e!215852 () Bool)

(assert (=> b!352474 (= e!215852 tp_is_empty!7727)))

(declare-fun b!352475 () Bool)

(assert (=> b!352475 (= e!215854 (and e!215853 mapRes!13074))))

(declare-fun condMapEmpty!13074 () Bool)

(declare-fun mapDefault!13074 () ValueCell!3520)

