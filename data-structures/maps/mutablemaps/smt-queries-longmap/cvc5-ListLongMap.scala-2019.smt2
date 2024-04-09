; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35198 () Bool)

(assert start!35198)

(declare-fun b_free!7783 () Bool)

(declare-fun b_next!7783 () Bool)

(assert (=> start!35198 (= b_free!7783 (not b_next!7783))))

(declare-fun tp!26940 () Bool)

(declare-fun b_and!15039 () Bool)

(assert (=> start!35198 (= tp!26940 b_and!15039)))

(declare-fun b!352577 () Bool)

(declare-fun res!195581 () Bool)

(declare-fun e!215913 () Bool)

(assert (=> b!352577 (=> (not res!195581) (not e!215913))))

(declare-datatypes ((array!19019 0))(
  ( (array!19020 (arr!9008 (Array (_ BitVec 32) (_ BitVec 64))) (size!9360 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19019)

(declare-datatypes ((List!5276 0))(
  ( (Nil!5273) (Cons!5272 (h!6128 (_ BitVec 64)) (t!10430 List!5276)) )
))
(declare-fun arrayNoDuplicates!0 (array!19019 (_ BitVec 32) List!5276) Bool)

(assert (=> b!352577 (= res!195581 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5273))))

(declare-fun b!352578 () Bool)

(declare-datatypes ((SeekEntryResult!3465 0))(
  ( (MissingZero!3465 (index!16039 (_ BitVec 32))) (Found!3465 (index!16040 (_ BitVec 32))) (Intermediate!3465 (undefined!4277 Bool) (index!16041 (_ BitVec 32)) (x!35084 (_ BitVec 32))) (Undefined!3465) (MissingVacant!3465 (index!16042 (_ BitVec 32))) )
))
(declare-fun lt!165300 () SeekEntryResult!3465)

(assert (=> b!352578 (= e!215913 (and (not (is-Found!3465 lt!165300)) (not (is-MissingZero!3465 lt!165300)) (not (is-MissingVacant!3465 lt!165300)) (is-Undefined!3465 lt!165300) (not (is-Undefined!3465 lt!165300))))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19019 (_ BitVec 32)) SeekEntryResult!3465)

(assert (=> b!352578 (= lt!165300 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!13086 () Bool)

(declare-fun mapRes!13086 () Bool)

(assert (=> mapIsEmpty!13086 mapRes!13086))

(declare-fun b!352579 () Bool)

(declare-fun e!215916 () Bool)

(declare-fun tp_is_empty!7735 () Bool)

(assert (=> b!352579 (= e!215916 tp_is_empty!7735)))

(declare-fun b!352580 () Bool)

(declare-fun e!215915 () Bool)

(assert (=> b!352580 (= e!215915 tp_is_empty!7735)))

(declare-fun mapNonEmpty!13086 () Bool)

(declare-fun tp!26939 () Bool)

(assert (=> mapNonEmpty!13086 (= mapRes!13086 (and tp!26939 e!215915))))

(declare-fun mapKey!13086 () (_ BitVec 32))

(declare-datatypes ((V!11291 0))(
  ( (V!11292 (val!3912 Int)) )
))
(declare-datatypes ((ValueCell!3524 0))(
  ( (ValueCellFull!3524 (v!6099 V!11291)) (EmptyCell!3524) )
))
(declare-fun mapRest!13086 () (Array (_ BitVec 32) ValueCell!3524))

(declare-fun mapValue!13086 () ValueCell!3524)

(declare-datatypes ((array!19021 0))(
  ( (array!19022 (arr!9009 (Array (_ BitVec 32) ValueCell!3524)) (size!9361 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19021)

(assert (=> mapNonEmpty!13086 (= (arr!9009 _values!1525) (store mapRest!13086 mapKey!13086 mapValue!13086))))

(declare-fun res!195580 () Bool)

(assert (=> start!35198 (=> (not res!195580) (not e!215913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35198 (= res!195580 (validMask!0 mask!2385))))

(assert (=> start!35198 e!215913))

(assert (=> start!35198 true))

(assert (=> start!35198 tp_is_empty!7735))

(assert (=> start!35198 tp!26940))

(declare-fun e!215912 () Bool)

(declare-fun array_inv!6636 (array!19021) Bool)

(assert (=> start!35198 (and (array_inv!6636 _values!1525) e!215912)))

(declare-fun array_inv!6637 (array!19019) Bool)

(assert (=> start!35198 (array_inv!6637 _keys!1895)))

(declare-fun b!352581 () Bool)

(declare-fun res!195584 () Bool)

(assert (=> b!352581 (=> (not res!195584) (not e!215913))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352581 (= res!195584 (and (= (size!9361 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9360 _keys!1895) (size!9361 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352582 () Bool)

(assert (=> b!352582 (= e!215912 (and e!215916 mapRes!13086))))

(declare-fun condMapEmpty!13086 () Bool)

(declare-fun mapDefault!13086 () ValueCell!3524)

