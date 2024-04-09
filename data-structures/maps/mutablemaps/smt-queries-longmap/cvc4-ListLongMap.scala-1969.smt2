; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34668 () Bool)

(assert start!34668)

(declare-fun b_free!7487 () Bool)

(declare-fun b_next!7487 () Bool)

(assert (=> start!34668 (= b_free!7487 (not b_next!7487))))

(declare-fun tp!26021 () Bool)

(declare-fun b_and!14723 () Bool)

(assert (=> start!34668 (= tp!26021 b_and!14723)))

(declare-fun b!346133 () Bool)

(declare-fun res!191538 () Bool)

(declare-fun e!212155 () Bool)

(assert (=> b!346133 (=> (not res!191538) (not e!212155))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10895 0))(
  ( (V!10896 (val!3764 Int)) )
))
(declare-fun zeroValue!1467 () V!10895)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3376 0))(
  ( (ValueCellFull!3376 (v!5941 V!10895)) (EmptyCell!3376) )
))
(declare-datatypes ((array!18435 0))(
  ( (array!18436 (arr!8726 (Array (_ BitVec 32) ValueCell!3376)) (size!9078 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18435)

(declare-datatypes ((array!18437 0))(
  ( (array!18438 (arr!8727 (Array (_ BitVec 32) (_ BitVec 64))) (size!9079 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18437)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10895)

(declare-datatypes ((tuple2!5432 0))(
  ( (tuple2!5433 (_1!2726 (_ BitVec 64)) (_2!2726 V!10895)) )
))
(declare-datatypes ((List!5079 0))(
  ( (Nil!5076) (Cons!5075 (h!5931 tuple2!5432) (t!10213 List!5079)) )
))
(declare-datatypes ((ListLongMap!4359 0))(
  ( (ListLongMap!4360 (toList!2195 List!5079)) )
))
(declare-fun contains!2254 (ListLongMap!4359 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1715 (array!18437 array!18435 (_ BitVec 32) (_ BitVec 32) V!10895 V!10895 (_ BitVec 32) Int) ListLongMap!4359)

(assert (=> b!346133 (= res!191538 (not (contains!2254 (getCurrentListMap!1715 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!346134 () Bool)

(declare-fun res!191535 () Bool)

(assert (=> b!346134 (=> (not res!191535) (not e!212155))))

(assert (=> b!346134 (= res!191535 (and (= (size!9078 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9079 _keys!1895) (size!9078 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346135 () Bool)

(declare-fun res!191533 () Bool)

(declare-fun e!212156 () Bool)

(assert (=> b!346135 (=> (not res!191533) (not e!212156))))

(declare-datatypes ((SeekEntryResult!3360 0))(
  ( (MissingZero!3360 (index!15619 (_ BitVec 32))) (Found!3360 (index!15620 (_ BitVec 32))) (Intermediate!3360 (undefined!4172 Bool) (index!15621 (_ BitVec 32)) (x!34479 (_ BitVec 32))) (Undefined!3360) (MissingVacant!3360 (index!15622 (_ BitVec 32))) )
))
(declare-fun lt!163245 () SeekEntryResult!3360)

(declare-fun arrayContainsKey!0 (array!18437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346135 (= res!191533 (arrayContainsKey!0 _keys!1895 k!1348 (index!15620 lt!163245)))))

(declare-fun b!346136 () Bool)

(declare-fun e!212154 () Bool)

(declare-fun e!212153 () Bool)

(declare-fun mapRes!12612 () Bool)

(assert (=> b!346136 (= e!212154 (and e!212153 mapRes!12612))))

(declare-fun condMapEmpty!12612 () Bool)

(declare-fun mapDefault!12612 () ValueCell!3376)

