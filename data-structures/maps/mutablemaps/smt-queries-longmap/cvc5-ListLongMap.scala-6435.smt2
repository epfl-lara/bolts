; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82434 () Bool)

(assert start!82434)

(declare-datatypes ((V!33497 0))(
  ( (V!33498 (val!10743 Int)) )
))
(declare-datatypes ((ValueCell!10211 0))(
  ( (ValueCellFull!10211 (v!13300 V!33497)) (EmptyCell!10211) )
))
(declare-datatypes ((array!58867 0))(
  ( (array!58868 (arr!28303 (Array (_ BitVec 32) ValueCell!10211)) (size!28783 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58867)

(declare-datatypes ((array!58869 0))(
  ( (array!58870 (arr!28304 (Array (_ BitVec 32) (_ BitVec 64))) (size!28784 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58869)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun b!960767 () Bool)

(declare-fun e!541611 () Bool)

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!960767 (= e!541611 (and (= (size!28783 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28784 _keys!1686) (size!28783 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011) (not (= (size!28784 _keys!1686) (bvadd #b00000000000000000000000000000001 mask!2110)))))))

(declare-fun mapIsEmpty!34057 () Bool)

(declare-fun mapRes!34057 () Bool)

(assert (=> mapIsEmpty!34057 mapRes!34057))

(declare-fun b!960768 () Bool)

(declare-fun e!541613 () Bool)

(declare-fun e!541612 () Bool)

(assert (=> b!960768 (= e!541613 (and e!541612 mapRes!34057))))

(declare-fun condMapEmpty!34057 () Bool)

(declare-fun mapDefault!34057 () ValueCell!10211)

