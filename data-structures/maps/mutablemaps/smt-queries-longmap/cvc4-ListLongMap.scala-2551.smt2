; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39136 () Bool)

(assert start!39136)

(declare-fun b_free!9395 () Bool)

(declare-fun b_next!9395 () Bool)

(assert (=> start!39136 (= b_free!9395 (not b_next!9395))))

(declare-fun tp!33714 () Bool)

(declare-fun b_and!16799 () Bool)

(assert (=> start!39136 (= tp!33714 b_and!16799)))

(declare-fun b!411297 () Bool)

(declare-fun res!238695 () Bool)

(declare-fun e!246324 () Bool)

(assert (=> b!411297 (=> (not res!238695) (not e!246324))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411297 (= res!238695 (validKeyInArray!0 k!794))))

(declare-fun b!411298 () Bool)

(declare-fun res!238690 () Bool)

(assert (=> b!411298 (=> (not res!238690) (not e!246324))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411298 (= res!238690 (validMask!0 mask!1025))))

(declare-fun b!411299 () Bool)

(declare-fun e!246321 () Bool)

(declare-fun e!246323 () Bool)

(declare-fun mapRes!17442 () Bool)

(assert (=> b!411299 (= e!246321 (and e!246323 mapRes!17442))))

(declare-fun condMapEmpty!17442 () Bool)

(declare-datatypes ((V!15167 0))(
  ( (V!15168 (val!5318 Int)) )
))
(declare-datatypes ((ValueCell!4930 0))(
  ( (ValueCellFull!4930 (v!7561 V!15167)) (EmptyCell!4930) )
))
(declare-datatypes ((array!24941 0))(
  ( (array!24942 (arr!11917 (Array (_ BitVec 32) ValueCell!4930)) (size!12269 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24941)

(declare-fun mapDefault!17442 () ValueCell!4930)

