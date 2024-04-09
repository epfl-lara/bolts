; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82456 () Bool)

(assert start!82456)

(declare-fun mapIsEmpty!34084 () Bool)

(declare-fun mapRes!34084 () Bool)

(assert (=> mapIsEmpty!34084 mapRes!34084))

(declare-fun b!960886 () Bool)

(declare-fun e!541737 () Bool)

(declare-fun tp_is_empty!21401 () Bool)

(assert (=> b!960886 (= e!541737 tp_is_empty!21401)))

(declare-fun b!960887 () Bool)

(declare-fun res!643275 () Bool)

(declare-fun e!541735 () Bool)

(assert (=> b!960887 (=> (not res!643275) (not e!541735))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33517 0))(
  ( (V!33518 (val!10751 Int)) )
))
(declare-datatypes ((ValueCell!10219 0))(
  ( (ValueCellFull!10219 (v!13308 V!33517)) (EmptyCell!10219) )
))
(declare-datatypes ((array!58897 0))(
  ( (array!58898 (arr!28317 (Array (_ BitVec 32) ValueCell!10219)) (size!28797 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58897)

(declare-datatypes ((array!58899 0))(
  ( (array!58900 (arr!28318 (Array (_ BitVec 32) (_ BitVec 64))) (size!28798 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58899)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!960887 (= res!643275 (and (= (size!28797 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28798 _keys!1686) (size!28797 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!960888 () Bool)

(declare-fun e!541738 () Bool)

(declare-fun e!541739 () Bool)

(assert (=> b!960888 (= e!541738 (and e!541739 mapRes!34084))))

(declare-fun condMapEmpty!34084 () Bool)

(declare-fun mapDefault!34084 () ValueCell!10219)

