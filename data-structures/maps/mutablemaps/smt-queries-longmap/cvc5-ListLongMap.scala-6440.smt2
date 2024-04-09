; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82496 () Bool)

(assert start!82496)

(declare-fun mapNonEmpty!34114 () Bool)

(declare-fun mapRes!34114 () Bool)

(declare-fun tp!65044 () Bool)

(declare-fun e!541893 () Bool)

(assert (=> mapNonEmpty!34114 (= mapRes!34114 (and tp!65044 e!541893))))

(declare-datatypes ((V!33537 0))(
  ( (V!33538 (val!10758 Int)) )
))
(declare-datatypes ((ValueCell!10226 0))(
  ( (ValueCellFull!10226 (v!13315 V!33537)) (EmptyCell!10226) )
))
(declare-fun mapRest!34114 () (Array (_ BitVec 32) ValueCell!10226))

(declare-datatypes ((array!58927 0))(
  ( (array!58928 (arr!28329 (Array (_ BitVec 32) ValueCell!10226)) (size!28809 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58927)

(declare-fun mapValue!34114 () ValueCell!10226)

(declare-fun mapKey!34114 () (_ BitVec 32))

(assert (=> mapNonEmpty!34114 (= (arr!28329 _values!1400) (store mapRest!34114 mapKey!34114 mapValue!34114))))

(declare-fun res!643379 () Bool)

(declare-fun e!541896 () Bool)

(assert (=> start!82496 (=> (not res!643379) (not e!541896))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82496 (= res!643379 (validMask!0 mask!2110))))

(assert (=> start!82496 e!541896))

(assert (=> start!82496 true))

(declare-fun e!541897 () Bool)

(declare-fun array_inv!21881 (array!58927) Bool)

(assert (=> start!82496 (and (array_inv!21881 _values!1400) e!541897)))

(declare-datatypes ((array!58929 0))(
  ( (array!58930 (arr!28330 (Array (_ BitVec 32) (_ BitVec 64))) (size!28810 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58929)

(declare-fun array_inv!21882 (array!58929) Bool)

(assert (=> start!82496 (array_inv!21882 _keys!1686)))

(declare-fun b!961093 () Bool)

(declare-fun e!541895 () Bool)

(declare-fun tp_is_empty!21415 () Bool)

(assert (=> b!961093 (= e!541895 tp_is_empty!21415)))

(declare-fun mapIsEmpty!34114 () Bool)

(assert (=> mapIsEmpty!34114 mapRes!34114))

(declare-fun b!961094 () Bool)

(declare-fun e!541894 () Bool)

(declare-datatypes ((List!19803 0))(
  ( (Nil!19800) (Cons!19799 (h!20961 (_ BitVec 64)) (t!28174 List!19803)) )
))
(declare-fun contains!5394 (List!19803 (_ BitVec 64)) Bool)

(assert (=> b!961094 (= e!541894 (contains!5394 Nil!19800 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!961095 () Bool)

(declare-fun res!643376 () Bool)

(assert (=> b!961095 (=> (not res!643376) (not e!541896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58929 (_ BitVec 32)) Bool)

(assert (=> b!961095 (= res!643376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961096 () Bool)

(declare-fun res!643378 () Bool)

(assert (=> b!961096 (=> (not res!643378) (not e!541896))))

(declare-fun noDuplicate!1373 (List!19803) Bool)

(assert (=> b!961096 (= res!643378 (noDuplicate!1373 Nil!19800))))

(declare-fun b!961097 () Bool)

(declare-fun res!643380 () Bool)

(assert (=> b!961097 (=> (not res!643380) (not e!541896))))

(assert (=> b!961097 (= res!643380 (and (bvsle #b00000000000000000000000000000000 (size!28810 _keys!1686)) (bvslt (size!28810 _keys!1686) #b01111111111111111111111111111111)))))

(declare-fun b!961098 () Bool)

(assert (=> b!961098 (= e!541893 tp_is_empty!21415)))

(declare-fun b!961099 () Bool)

(declare-fun res!643375 () Bool)

(assert (=> b!961099 (=> (not res!643375) (not e!541896))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961099 (= res!643375 (and (= (size!28809 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28810 _keys!1686) (size!28809 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961100 () Bool)

(assert (=> b!961100 (= e!541897 (and e!541895 mapRes!34114))))

(declare-fun condMapEmpty!34114 () Bool)

(declare-fun mapDefault!34114 () ValueCell!10226)

