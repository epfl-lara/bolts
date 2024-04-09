; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34238 () Bool)

(assert start!34238)

(declare-fun b_free!7253 () Bool)

(declare-fun b_next!7253 () Bool)

(assert (=> start!34238 (= b_free!7253 (not b_next!7253))))

(declare-fun tp!25292 () Bool)

(declare-fun b_and!14471 () Bool)

(assert (=> start!34238 (= tp!25292 b_and!14471)))

(declare-fun b!341315 () Bool)

(declare-fun e!209330 () Bool)

(declare-fun e!209328 () Bool)

(assert (=> b!341315 (= e!209330 e!209328)))

(declare-fun res!188769 () Bool)

(assert (=> b!341315 (=> (not res!188769) (not e!209328))))

(declare-datatypes ((SeekEntryResult!3283 0))(
  ( (MissingZero!3283 (index!15311 (_ BitVec 32))) (Found!3283 (index!15312 (_ BitVec 32))) (Intermediate!3283 (undefined!4095 Bool) (index!15313 (_ BitVec 32)) (x!34000 (_ BitVec 32))) (Undefined!3283) (MissingVacant!3283 (index!15314 (_ BitVec 32))) )
))
(declare-fun lt!161744 () SeekEntryResult!3283)

(assert (=> b!341315 (= res!188769 (and (not (is-Found!3283 lt!161744)) (not (is-MissingZero!3283 lt!161744)) (is-MissingVacant!3283 lt!161744)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!17975 0))(
  ( (array!17976 (arr!8505 (Array (_ BitVec 32) (_ BitVec 64))) (size!8857 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17975)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17975 (_ BitVec 32)) SeekEntryResult!3283)

(assert (=> b!341315 (= lt!161744 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!341316 () Bool)

(declare-fun res!188771 () Bool)

(assert (=> b!341316 (=> (not res!188771) (not e!209328))))

(declare-fun arrayContainsKey!0 (array!17975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341316 (= res!188771 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!341317 () Bool)

(declare-fun e!209329 () Bool)

(declare-fun tp_is_empty!7205 () Bool)

(assert (=> b!341317 (= e!209329 tp_is_empty!7205)))

(declare-fun b!341318 () Bool)

(declare-fun res!188768 () Bool)

(assert (=> b!341318 (=> (not res!188768) (not e!209330))))

(declare-datatypes ((List!4916 0))(
  ( (Nil!4913) (Cons!4912 (h!5768 (_ BitVec 64)) (t!10032 List!4916)) )
))
(declare-fun arrayNoDuplicates!0 (array!17975 (_ BitVec 32) List!4916) Bool)

(assert (=> b!341318 (= res!188768 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4913))))

(declare-fun res!188767 () Bool)

(assert (=> start!34238 (=> (not res!188767) (not e!209330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34238 (= res!188767 (validMask!0 mask!2385))))

(assert (=> start!34238 e!209330))

(assert (=> start!34238 true))

(assert (=> start!34238 tp_is_empty!7205))

(assert (=> start!34238 tp!25292))

(declare-datatypes ((V!10583 0))(
  ( (V!10584 (val!3647 Int)) )
))
(declare-datatypes ((ValueCell!3259 0))(
  ( (ValueCellFull!3259 (v!5815 V!10583)) (EmptyCell!3259) )
))
(declare-datatypes ((array!17977 0))(
  ( (array!17978 (arr!8506 (Array (_ BitVec 32) ValueCell!3259)) (size!8858 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17977)

(declare-fun e!209331 () Bool)

(declare-fun array_inv!6292 (array!17977) Bool)

(assert (=> start!34238 (and (array_inv!6292 _values!1525) e!209331)))

(declare-fun array_inv!6293 (array!17975) Bool)

(assert (=> start!34238 (array_inv!6293 _keys!1895)))

(declare-fun b!341319 () Bool)

(declare-fun mapRes!12234 () Bool)

(assert (=> b!341319 (= e!209331 (and e!209329 mapRes!12234))))

(declare-fun condMapEmpty!12234 () Bool)

(declare-fun mapDefault!12234 () ValueCell!3259)

