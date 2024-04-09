; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37406 () Bool)

(assert start!37406)

(declare-fun b_free!8525 () Bool)

(declare-fun b_next!8525 () Bool)

(assert (=> start!37406 (= b_free!8525 (not b_next!8525))))

(declare-fun tp!30290 () Bool)

(declare-fun b_and!15785 () Bool)

(assert (=> start!37406 (= tp!30290 b_and!15785)))

(declare-fun b!380070 () Bool)

(declare-fun res!215763 () Bool)

(declare-fun e!231190 () Bool)

(assert (=> b!380070 (=> (not res!215763) (not e!231190))))

(declare-datatypes ((array!22243 0))(
  ( (array!22244 (arr!10587 (Array (_ BitVec 32) (_ BitVec 64))) (size!10939 (_ BitVec 32))) )
))
(declare-fun lt!177871 () array!22243)

(declare-datatypes ((List!6043 0))(
  ( (Nil!6040) (Cons!6039 (h!6895 (_ BitVec 64)) (t!11201 List!6043)) )
))
(declare-fun arrayNoDuplicates!0 (array!22243 (_ BitVec 32) List!6043) Bool)

(assert (=> b!380070 (= res!215763 (arrayNoDuplicates!0 lt!177871 #b00000000000000000000000000000000 Nil!6040))))

(declare-fun b!380071 () Bool)

(declare-fun e!231194 () Bool)

(declare-fun tp_is_empty!9173 () Bool)

(assert (=> b!380071 (= e!231194 tp_is_empty!9173)))

(declare-fun b!380072 () Bool)

(declare-fun e!231191 () Bool)

(declare-fun mapRes!15324 () Bool)

(assert (=> b!380072 (= e!231191 (and e!231194 mapRes!15324))))

(declare-fun condMapEmpty!15324 () Bool)

(declare-datatypes ((V!13335 0))(
  ( (V!13336 (val!4631 Int)) )
))
(declare-datatypes ((ValueCell!4243 0))(
  ( (ValueCellFull!4243 (v!6824 V!13335)) (EmptyCell!4243) )
))
(declare-datatypes ((array!22245 0))(
  ( (array!22246 (arr!10588 (Array (_ BitVec 32) ValueCell!4243)) (size!10940 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22245)

(declare-fun mapDefault!15324 () ValueCell!4243)

