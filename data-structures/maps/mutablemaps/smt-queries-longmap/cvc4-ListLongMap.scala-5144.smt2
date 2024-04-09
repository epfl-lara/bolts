; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69812 () Bool)

(assert start!69812)

(declare-fun mapIsEmpty!22537 () Bool)

(declare-fun mapRes!22537 () Bool)

(assert (=> mapIsEmpty!22537 mapRes!22537))

(declare-fun b!811769 () Bool)

(declare-fun e!449517 () Bool)

(declare-fun e!449516 () Bool)

(assert (=> b!811769 (= e!449517 (and e!449516 mapRes!22537))))

(declare-fun condMapEmpty!22537 () Bool)

(declare-datatypes ((V!23647 0))(
  ( (V!23648 (val!7040 Int)) )
))
(declare-datatypes ((ValueCell!6577 0))(
  ( (ValueCellFull!6577 (v!9462 V!23647)) (EmptyCell!6577) )
))
(declare-datatypes ((array!44164 0))(
  ( (array!44165 (arr!21145 (Array (_ BitVec 32) ValueCell!6577)) (size!21566 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44164)

(declare-fun mapDefault!22537 () ValueCell!6577)

