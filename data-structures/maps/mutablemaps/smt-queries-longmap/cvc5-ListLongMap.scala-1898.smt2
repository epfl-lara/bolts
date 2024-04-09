; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33886 () Bool)

(assert start!33886)

(declare-fun b_free!7057 () Bool)

(declare-fun b_next!7057 () Bool)

(assert (=> start!33886 (= b_free!7057 (not b_next!7057))))

(declare-fun tp!24684 () Bool)

(declare-fun b_and!14261 () Bool)

(assert (=> start!33886 (= tp!24684 b_and!14261)))

(declare-fun b!337057 () Bool)

(declare-fun res!186222 () Bool)

(declare-fun e!206857 () Bool)

(assert (=> b!337057 (=> (not res!186222) (not e!206857))))

(declare-datatypes ((array!17593 0))(
  ( (array!17594 (arr!8321 (Array (_ BitVec 32) (_ BitVec 64))) (size!8673 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17593)

(declare-datatypes ((List!4797 0))(
  ( (Nil!4794) (Cons!4793 (h!5649 (_ BitVec 64)) (t!9899 List!4797)) )
))
(declare-fun arrayNoDuplicates!0 (array!17593 (_ BitVec 32) List!4797) Bool)

(assert (=> b!337057 (= res!186222 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4794))))

(declare-fun mapIsEmpty!11919 () Bool)

(declare-fun mapRes!11919 () Bool)

(assert (=> mapIsEmpty!11919 mapRes!11919))

(declare-fun b!337058 () Bool)

(declare-fun e!206855 () Bool)

(assert (=> b!337058 (= e!206855 false)))

(declare-fun lt!160362 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17593 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337058 (= lt!160362 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!337059 () Bool)

(assert (=> b!337059 (= e!206857 e!206855)))

(declare-fun res!186220 () Bool)

(assert (=> b!337059 (=> (not res!186220) (not e!206855))))

(declare-datatypes ((SeekEntryResult!3222 0))(
  ( (MissingZero!3222 (index!15067 (_ BitVec 32))) (Found!3222 (index!15068 (_ BitVec 32))) (Intermediate!3222 (undefined!4034 Bool) (index!15069 (_ BitVec 32)) (x!33613 (_ BitVec 32))) (Undefined!3222) (MissingVacant!3222 (index!15070 (_ BitVec 32))) )
))
(declare-fun lt!160361 () SeekEntryResult!3222)

(assert (=> b!337059 (= res!186220 (and (not (is-Found!3222 lt!160361)) (is-MissingZero!3222 lt!160361)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17593 (_ BitVec 32)) SeekEntryResult!3222)

(assert (=> b!337059 (= lt!160361 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!337060 () Bool)

(declare-fun res!186223 () Bool)

(assert (=> b!337060 (=> (not res!186223) (not e!206855))))

(declare-fun arrayContainsKey!0 (array!17593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337060 (= res!186223 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!337061 () Bool)

(declare-fun e!206858 () Bool)

(declare-fun tp_is_empty!7009 () Bool)

(assert (=> b!337061 (= e!206858 tp_is_empty!7009)))

(declare-fun b!337062 () Bool)

(declare-fun res!186225 () Bool)

(assert (=> b!337062 (=> (not res!186225) (not e!206857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17593 (_ BitVec 32)) Bool)

(assert (=> b!337062 (= res!186225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!337063 () Bool)

(declare-fun e!206856 () Bool)

(declare-fun e!206859 () Bool)

(assert (=> b!337063 (= e!206856 (and e!206859 mapRes!11919))))

(declare-fun condMapEmpty!11919 () Bool)

(declare-datatypes ((V!10323 0))(
  ( (V!10324 (val!3549 Int)) )
))
(declare-datatypes ((ValueCell!3161 0))(
  ( (ValueCellFull!3161 (v!5710 V!10323)) (EmptyCell!3161) )
))
(declare-datatypes ((array!17595 0))(
  ( (array!17596 (arr!8322 (Array (_ BitVec 32) ValueCell!3161)) (size!8674 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17595)

(declare-fun mapDefault!11919 () ValueCell!3161)

