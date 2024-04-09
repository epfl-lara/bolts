; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82452 () Bool)

(assert start!82452)

(declare-fun b!960850 () Bool)

(declare-fun e!541707 () Bool)

(declare-datatypes ((array!58889 0))(
  ( (array!58890 (arr!28313 (Array (_ BitVec 32) (_ BitVec 64))) (size!28793 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58889)

(assert (=> b!960850 (= e!541707 (bvsgt #b00000000000000000000000000000000 (size!28793 _keys!1686)))))

(declare-fun res!643255 () Bool)

(assert (=> start!82452 (=> (not res!643255) (not e!541707))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82452 (= res!643255 (validMask!0 mask!2110))))

(assert (=> start!82452 e!541707))

(assert (=> start!82452 true))

(declare-datatypes ((V!33513 0))(
  ( (V!33514 (val!10749 Int)) )
))
(declare-datatypes ((ValueCell!10217 0))(
  ( (ValueCellFull!10217 (v!13306 V!33513)) (EmptyCell!10217) )
))
(declare-datatypes ((array!58891 0))(
  ( (array!58892 (arr!28314 (Array (_ BitVec 32) ValueCell!10217)) (size!28794 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58891)

(declare-fun e!541705 () Bool)

(declare-fun array_inv!21871 (array!58891) Bool)

(assert (=> start!82452 (and (array_inv!21871 _values!1400) e!541705)))

(declare-fun array_inv!21872 (array!58889) Bool)

(assert (=> start!82452 (array_inv!21872 _keys!1686)))

(declare-fun b!960851 () Bool)

(declare-fun e!541708 () Bool)

(declare-fun tp_is_empty!21397 () Bool)

(assert (=> b!960851 (= e!541708 tp_is_empty!21397)))

(declare-fun b!960852 () Bool)

(declare-fun res!643256 () Bool)

(assert (=> b!960852 (=> (not res!643256) (not e!541707))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!960852 (= res!643256 (and (= (size!28794 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28793 _keys!1686) (size!28794 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!960853 () Bool)

(declare-fun e!541706 () Bool)

(declare-fun mapRes!34078 () Bool)

(assert (=> b!960853 (= e!541705 (and e!541706 mapRes!34078))))

(declare-fun condMapEmpty!34078 () Bool)

(declare-fun mapDefault!34078 () ValueCell!10217)

