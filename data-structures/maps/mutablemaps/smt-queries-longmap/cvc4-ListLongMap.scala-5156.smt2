; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69928 () Bool)

(assert start!69928)

(declare-fun mapIsEmpty!22660 () Bool)

(declare-fun mapRes!22660 () Bool)

(assert (=> mapIsEmpty!22660 mapRes!22660))

(declare-fun b!812541 () Bool)

(declare-fun e!450152 () Bool)

(assert (=> b!812541 (= e!450152 false)))

(declare-fun lt!364127 () Bool)

(declare-datatypes ((array!44306 0))(
  ( (array!44307 (arr!21211 (Array (_ BitVec 32) (_ BitVec 64))) (size!21632 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44306)

(declare-datatypes ((List!15143 0))(
  ( (Nil!15140) (Cons!15139 (h!16268 (_ BitVec 64)) (t!21466 List!15143)) )
))
(declare-fun arrayNoDuplicates!0 (array!44306 (_ BitVec 32) List!15143) Bool)

(assert (=> b!812541 (= lt!364127 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15140))))

(declare-fun b!812542 () Bool)

(declare-fun e!450154 () Bool)

(declare-fun e!450153 () Bool)

(assert (=> b!812542 (= e!450154 (and e!450153 mapRes!22660))))

(declare-fun condMapEmpty!22660 () Bool)

(declare-datatypes ((V!23743 0))(
  ( (V!23744 (val!7076 Int)) )
))
(declare-datatypes ((ValueCell!6613 0))(
  ( (ValueCellFull!6613 (v!9499 V!23743)) (EmptyCell!6613) )
))
(declare-datatypes ((array!44308 0))(
  ( (array!44309 (arr!21212 (Array (_ BitVec 32) ValueCell!6613)) (size!21633 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44308)

(declare-fun mapDefault!22660 () ValueCell!6613)

