; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37658 () Bool)

(assert start!37658)

(declare-fun mapIsEmpty!15702 () Bool)

(declare-fun mapRes!15702 () Bool)

(assert (=> mapIsEmpty!15702 mapRes!15702))

(declare-fun b!385281 () Bool)

(declare-fun res!219842 () Bool)

(declare-fun e!233856 () Bool)

(assert (=> b!385281 (=> (not res!219842) (not e!233856))))

(declare-datatypes ((array!22729 0))(
  ( (array!22730 (arr!10830 (Array (_ BitVec 32) (_ BitVec 64))) (size!11182 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22729)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22729 (_ BitVec 32)) Bool)

(assert (=> b!385281 (= res!219842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385282 () Bool)

(declare-fun e!233859 () Bool)

(declare-fun tp_is_empty!9425 () Bool)

(assert (=> b!385282 (= e!233859 tp_is_empty!9425)))

(declare-fun b!385283 () Bool)

(declare-fun e!233858 () Bool)

(assert (=> b!385283 (= e!233858 tp_is_empty!9425)))

(declare-fun res!219841 () Bool)

(assert (=> start!37658 (=> (not res!219841) (not e!233856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37658 (= res!219841 (validMask!0 mask!970))))

(assert (=> start!37658 e!233856))

(assert (=> start!37658 true))

(declare-datatypes ((V!13671 0))(
  ( (V!13672 (val!4757 Int)) )
))
(declare-datatypes ((ValueCell!4369 0))(
  ( (ValueCellFull!4369 (v!6950 V!13671)) (EmptyCell!4369) )
))
(declare-datatypes ((array!22731 0))(
  ( (array!22732 (arr!10831 (Array (_ BitVec 32) ValueCell!4369)) (size!11183 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22731)

(declare-fun e!233855 () Bool)

(declare-fun array_inv!7950 (array!22731) Bool)

(assert (=> start!37658 (and (array_inv!7950 _values!506) e!233855)))

(declare-fun array_inv!7951 (array!22729) Bool)

(assert (=> start!37658 (array_inv!7951 _keys!658)))

(declare-fun b!385284 () Bool)

(assert (=> b!385284 (= e!233855 (and e!233859 mapRes!15702))))

(declare-fun condMapEmpty!15702 () Bool)

(declare-fun mapDefault!15702 () ValueCell!4369)

