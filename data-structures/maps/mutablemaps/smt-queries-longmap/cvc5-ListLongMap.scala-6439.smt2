; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82480 () Bool)

(assert start!82480)

(declare-fun res!643324 () Bool)

(declare-fun e!541827 () Bool)

(assert (=> start!82480 (=> (not res!643324) (not e!541827))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82480 (= res!643324 (validMask!0 mask!2110))))

(assert (=> start!82480 e!541827))

(assert (=> start!82480 true))

(declare-datatypes ((V!33529 0))(
  ( (V!33530 (val!10755 Int)) )
))
(declare-datatypes ((ValueCell!10223 0))(
  ( (ValueCellFull!10223 (v!13312 V!33529)) (EmptyCell!10223) )
))
(declare-datatypes ((array!58915 0))(
  ( (array!58916 (arr!28324 (Array (_ BitVec 32) ValueCell!10223)) (size!28804 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58915)

(declare-fun e!541829 () Bool)

(declare-fun array_inv!21877 (array!58915) Bool)

(assert (=> start!82480 (and (array_inv!21877 _values!1400) e!541829)))

(declare-datatypes ((array!58917 0))(
  ( (array!58918 (arr!28325 (Array (_ BitVec 32) (_ BitVec 64))) (size!28805 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58917)

(declare-fun array_inv!21878 (array!58917) Bool)

(assert (=> start!82480 (array_inv!21878 _keys!1686)))

(declare-fun mapNonEmpty!34102 () Bool)

(declare-fun mapRes!34102 () Bool)

(declare-fun tp!65032 () Bool)

(declare-fun e!541826 () Bool)

(assert (=> mapNonEmpty!34102 (= mapRes!34102 (and tp!65032 e!541826))))

(declare-fun mapValue!34102 () ValueCell!10223)

(declare-fun mapKey!34102 () (_ BitVec 32))

(declare-fun mapRest!34102 () (Array (_ BitVec 32) ValueCell!10223))

(assert (=> mapNonEmpty!34102 (= (arr!28324 _values!1400) (store mapRest!34102 mapKey!34102 mapValue!34102))))

(declare-fun mapIsEmpty!34102 () Bool)

(assert (=> mapIsEmpty!34102 mapRes!34102))

(declare-fun b!961000 () Bool)

(declare-fun e!541825 () Bool)

(declare-fun tp_is_empty!21409 () Bool)

(assert (=> b!961000 (= e!541825 tp_is_empty!21409)))

(declare-fun b!961001 () Bool)

(declare-fun res!643325 () Bool)

(assert (=> b!961001 (=> (not res!643325) (not e!541827))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961001 (= res!643325 (and (= (size!28804 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28805 _keys!1686) (size!28804 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961002 () Bool)

(declare-fun res!643326 () Bool)

(assert (=> b!961002 (=> (not res!643326) (not e!541827))))

(assert (=> b!961002 (= res!643326 (and (bvsle #b00000000000000000000000000000000 (size!28805 _keys!1686)) (bvslt (size!28805 _keys!1686) #b01111111111111111111111111111111)))))

(declare-fun b!961003 () Bool)

(declare-fun res!643323 () Bool)

(assert (=> b!961003 (=> (not res!643323) (not e!541827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58917 (_ BitVec 32)) Bool)

(assert (=> b!961003 (= res!643323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961004 () Bool)

(declare-datatypes ((List!19801 0))(
  ( (Nil!19798) (Cons!19797 (h!20959 (_ BitVec 64)) (t!28172 List!19801)) )
))
(declare-fun noDuplicate!1371 (List!19801) Bool)

(assert (=> b!961004 (= e!541827 (not (noDuplicate!1371 Nil!19798)))))

(declare-fun b!961005 () Bool)

(assert (=> b!961005 (= e!541829 (and e!541825 mapRes!34102))))

(declare-fun condMapEmpty!34102 () Bool)

(declare-fun mapDefault!34102 () ValueCell!10223)

