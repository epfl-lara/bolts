; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82204 () Bool)

(assert start!82204)

(declare-fun b!957593 () Bool)

(declare-fun e!539887 () Bool)

(assert (=> b!957593 (= e!539887 false)))

(declare-fun lt!430319 () Bool)

(declare-datatypes ((array!58427 0))(
  ( (array!58428 (arr!28083 (Array (_ BitVec 32) (_ BitVec 64))) (size!28563 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58427)

(declare-datatypes ((List!19658 0))(
  ( (Nil!19655) (Cons!19654 (h!20816 (_ BitVec 64)) (t!28029 List!19658)) )
))
(declare-fun arrayNoDuplicates!0 (array!58427 (_ BitVec 32) List!19658) Bool)

(assert (=> b!957593 (= lt!430319 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19655))))

(declare-fun b!957594 () Bool)

(declare-fun e!539886 () Bool)

(declare-fun tp_is_empty!21155 () Bool)

(assert (=> b!957594 (= e!539886 tp_is_empty!21155)))

(declare-fun res!641096 () Bool)

(assert (=> start!82204 (=> (not res!641096) (not e!539887))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82204 (= res!641096 (validMask!0 mask!2088))))

(assert (=> start!82204 e!539887))

(assert (=> start!82204 true))

(declare-datatypes ((V!33189 0))(
  ( (V!33190 (val!10628 Int)) )
))
(declare-datatypes ((ValueCell!10096 0))(
  ( (ValueCellFull!10096 (v!13185 V!33189)) (EmptyCell!10096) )
))
(declare-datatypes ((array!58429 0))(
  ( (array!58430 (arr!28084 (Array (_ BitVec 32) ValueCell!10096)) (size!28564 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58429)

(declare-fun e!539884 () Bool)

(declare-fun array_inv!21727 (array!58429) Bool)

(assert (=> start!82204 (and (array_inv!21727 _values!1386) e!539884)))

(declare-fun array_inv!21728 (array!58427) Bool)

(assert (=> start!82204 (array_inv!21728 _keys!1668)))

(declare-fun b!957595 () Bool)

(declare-fun res!641095 () Bool)

(assert (=> b!957595 (=> (not res!641095) (not e!539887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58427 (_ BitVec 32)) Bool)

(assert (=> b!957595 (= res!641095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapIsEmpty!33712 () Bool)

(declare-fun mapRes!33712 () Bool)

(assert (=> mapIsEmpty!33712 mapRes!33712))

(declare-fun b!957596 () Bool)

(declare-fun e!539888 () Bool)

(assert (=> b!957596 (= e!539888 tp_is_empty!21155)))

(declare-fun mapNonEmpty!33712 () Bool)

(declare-fun tp!64318 () Bool)

(assert (=> mapNonEmpty!33712 (= mapRes!33712 (and tp!64318 e!539886))))

(declare-fun mapValue!33712 () ValueCell!10096)

(declare-fun mapRest!33712 () (Array (_ BitVec 32) ValueCell!10096))

(declare-fun mapKey!33712 () (_ BitVec 32))

(assert (=> mapNonEmpty!33712 (= (arr!28084 _values!1386) (store mapRest!33712 mapKey!33712 mapValue!33712))))

(declare-fun b!957597 () Bool)

(assert (=> b!957597 (= e!539884 (and e!539888 mapRes!33712))))

(declare-fun condMapEmpty!33712 () Bool)

(declare-fun mapDefault!33712 () ValueCell!10096)

