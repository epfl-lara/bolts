; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34216 () Bool)

(assert start!34216)

(declare-fun b_free!7231 () Bool)

(declare-fun b_next!7231 () Bool)

(assert (=> start!34216 (= b_free!7231 (not b_next!7231))))

(declare-fun tp!25226 () Bool)

(declare-fun b_and!14449 () Bool)

(assert (=> start!34216 (= tp!25226 b_and!14449)))

(declare-fun res!188502 () Bool)

(declare-fun e!209133 () Bool)

(assert (=> start!34216 (=> (not res!188502) (not e!209133))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34216 (= res!188502 (validMask!0 mask!2385))))

(assert (=> start!34216 e!209133))

(assert (=> start!34216 true))

(declare-fun tp_is_empty!7183 () Bool)

(assert (=> start!34216 tp_is_empty!7183))

(assert (=> start!34216 tp!25226))

(declare-datatypes ((V!10555 0))(
  ( (V!10556 (val!3636 Int)) )
))
(declare-datatypes ((ValueCell!3248 0))(
  ( (ValueCellFull!3248 (v!5804 V!10555)) (EmptyCell!3248) )
))
(declare-datatypes ((array!17931 0))(
  ( (array!17932 (arr!8483 (Array (_ BitVec 32) ValueCell!3248)) (size!8835 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17931)

(declare-fun e!209128 () Bool)

(declare-fun array_inv!6274 (array!17931) Bool)

(assert (=> start!34216 (and (array_inv!6274 _values!1525) e!209128)))

(declare-datatypes ((array!17933 0))(
  ( (array!17934 (arr!8484 (Array (_ BitVec 32) (_ BitVec 64))) (size!8836 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17933)

(declare-fun array_inv!6275 (array!17933) Bool)

(assert (=> start!34216 (array_inv!6275 _keys!1895)))

(declare-fun b!340952 () Bool)

(declare-fun e!209132 () Bool)

(assert (=> b!340952 (= e!209133 e!209132)))

(declare-fun res!188505 () Bool)

(assert (=> b!340952 (=> (not res!188505) (not e!209132))))

(declare-datatypes ((SeekEntryResult!3274 0))(
  ( (MissingZero!3274 (index!15275 (_ BitVec 32))) (Found!3274 (index!15276 (_ BitVec 32))) (Intermediate!3274 (undefined!4086 Bool) (index!15277 (_ BitVec 32)) (x!33967 (_ BitVec 32))) (Undefined!3274) (MissingVacant!3274 (index!15278 (_ BitVec 32))) )
))
(declare-fun lt!161678 () SeekEntryResult!3274)

(assert (=> b!340952 (= res!188505 (and (not (is-Found!3274 lt!161678)) (not (is-MissingZero!3274 lt!161678)) (is-MissingVacant!3274 lt!161678)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17933 (_ BitVec 32)) SeekEntryResult!3274)

(assert (=> b!340952 (= lt!161678 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!340953 () Bool)

(declare-fun e!209131 () Bool)

(assert (=> b!340953 (= e!209131 tp_is_empty!7183)))

(declare-fun b!340954 () Bool)

(declare-fun res!188503 () Bool)

(assert (=> b!340954 (=> (not res!188503) (not e!209133))))

(declare-fun zeroValue!1467 () V!10555)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10555)

(declare-datatypes ((tuple2!5256 0))(
  ( (tuple2!5257 (_1!2638 (_ BitVec 64)) (_2!2638 V!10555)) )
))
(declare-datatypes ((List!4901 0))(
  ( (Nil!4898) (Cons!4897 (h!5753 tuple2!5256) (t!10017 List!4901)) )
))
(declare-datatypes ((ListLongMap!4183 0))(
  ( (ListLongMap!4184 (toList!2107 List!4901)) )
))
(declare-fun contains!2157 (ListLongMap!4183 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1627 (array!17933 array!17931 (_ BitVec 32) (_ BitVec 32) V!10555 V!10555 (_ BitVec 32) Int) ListLongMap!4183)

(assert (=> b!340954 (= res!188503 (not (contains!2157 (getCurrentListMap!1627 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!340955 () Bool)

(declare-fun e!209130 () Bool)

(declare-fun mapRes!12201 () Bool)

(assert (=> b!340955 (= e!209128 (and e!209130 mapRes!12201))))

(declare-fun condMapEmpty!12201 () Bool)

(declare-fun mapDefault!12201 () ValueCell!3248)

