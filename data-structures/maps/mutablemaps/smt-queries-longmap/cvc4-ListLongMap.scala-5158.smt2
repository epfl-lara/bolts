; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69940 () Bool)

(assert start!69940)

(declare-fun b!812657 () Bool)

(declare-fun res!555380 () Bool)

(declare-fun e!450242 () Bool)

(assert (=> b!812657 (=> (not res!555380) (not e!450242))))

(declare-datatypes ((array!44328 0))(
  ( (array!44329 (arr!21222 (Array (_ BitVec 32) (_ BitVec 64))) (size!21643 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44328)

(declare-datatypes ((List!15147 0))(
  ( (Nil!15144) (Cons!15143 (h!16272 (_ BitVec 64)) (t!21470 List!15147)) )
))
(declare-fun arrayNoDuplicates!0 (array!44328 (_ BitVec 32) List!15147) Bool)

(assert (=> b!812657 (= res!555380 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15144))))

(declare-fun b!812658 () Bool)

(declare-fun e!450243 () Bool)

(declare-fun tp_is_empty!14069 () Bool)

(assert (=> b!812658 (= e!450243 tp_is_empty!14069)))

(declare-fun b!812659 () Bool)

(assert (=> b!812659 (= e!450242 (bvsgt #b00000000000000000000000000000000 (size!21643 _keys!976)))))

(declare-fun b!812660 () Bool)

(declare-fun e!450244 () Bool)

(declare-fun e!450245 () Bool)

(declare-fun mapRes!22678 () Bool)

(assert (=> b!812660 (= e!450244 (and e!450245 mapRes!22678))))

(declare-fun condMapEmpty!22678 () Bool)

(declare-datatypes ((V!23759 0))(
  ( (V!23760 (val!7082 Int)) )
))
(declare-datatypes ((ValueCell!6619 0))(
  ( (ValueCellFull!6619 (v!9505 V!23759)) (EmptyCell!6619) )
))
(declare-datatypes ((array!44330 0))(
  ( (array!44331 (arr!21223 (Array (_ BitVec 32) ValueCell!6619)) (size!21644 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44330)

(declare-fun mapDefault!22678 () ValueCell!6619)

