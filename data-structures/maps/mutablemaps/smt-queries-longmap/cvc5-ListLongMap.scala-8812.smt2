; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107132 () Bool)

(assert start!107132)

(declare-fun b_free!27601 () Bool)

(declare-fun b_next!27601 () Bool)

(assert (=> start!107132 (= b_free!27601 (not b_next!27601))))

(declare-fun tp!97030 () Bool)

(declare-fun b_and!45643 () Bool)

(assert (=> start!107132 (= tp!97030 b_and!45643)))

(declare-fun b!1269649 () Bool)

(declare-fun res!845021 () Bool)

(declare-fun e!723698 () Bool)

(assert (=> b!1269649 (=> (not res!845021) (not e!723698))))

(declare-datatypes ((V!48907 0))(
  ( (V!48908 (val!16467 Int)) )
))
(declare-datatypes ((ValueCell!15539 0))(
  ( (ValueCellFull!15539 (v!19102 V!48907)) (EmptyCell!15539) )
))
(declare-datatypes ((array!82805 0))(
  ( (array!82806 (arr!39935 (Array (_ BitVec 32) ValueCell!15539)) (size!40472 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82805)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82807 0))(
  ( (array!82808 (arr!39936 (Array (_ BitVec 32) (_ BitVec 64))) (size!40473 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82807)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269649 (= res!845021 (and (= (size!40472 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40473 _keys!1364) (size!40472 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269650 () Bool)

(declare-fun res!845018 () Bool)

(assert (=> b!1269650 (=> (not res!845018) (not e!723698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82807 (_ BitVec 32)) Bool)

(assert (=> b!1269650 (= res!845018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269651 () Bool)

(assert (=> b!1269651 (= e!723698 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48907)

(declare-fun minValueBefore!52 () V!48907)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48907)

(declare-fun zeroValueBefore!52 () V!48907)

(declare-datatypes ((tuple2!21478 0))(
  ( (tuple2!21479 (_1!10749 (_ BitVec 64)) (_2!10749 V!48907)) )
))
(declare-datatypes ((List!28613 0))(
  ( (Nil!28610) (Cons!28609 (h!29818 tuple2!21478) (t!42149 List!28613)) )
))
(declare-datatypes ((ListLongMap!19219 0))(
  ( (ListLongMap!19220 (toList!9625 List!28613)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5933 (array!82807 array!82805 (_ BitVec 32) (_ BitVec 32) V!48907 V!48907 (_ BitVec 32) Int) ListLongMap!19219)

(assert (=> b!1269651 (= (getCurrentListMapNoExtraKeys!5933 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5933 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42222 0))(
  ( (Unit!42223) )
))
(declare-fun lt!574550 () Unit!42222)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1229 (array!82807 array!82805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48907 V!48907 V!48907 V!48907 (_ BitVec 32) Int) Unit!42222)

(assert (=> b!1269651 (= lt!574550 (lemmaNoChangeToArrayThenSameMapNoExtras!1229 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269652 () Bool)

(declare-fun e!723694 () Bool)

(declare-fun tp_is_empty!32785 () Bool)

(assert (=> b!1269652 (= e!723694 tp_is_empty!32785)))

(declare-fun b!1269653 () Bool)

(declare-fun res!845017 () Bool)

(assert (=> b!1269653 (=> (not res!845017) (not e!723698))))

(declare-datatypes ((List!28614 0))(
  ( (Nil!28611) (Cons!28610 (h!29819 (_ BitVec 64)) (t!42150 List!28614)) )
))
(declare-fun arrayNoDuplicates!0 (array!82807 (_ BitVec 32) List!28614) Bool)

(assert (=> b!1269653 (= res!845017 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28611))))

(declare-fun b!1269654 () Bool)

(declare-fun e!723695 () Bool)

(declare-fun e!723697 () Bool)

(declare-fun mapRes!50758 () Bool)

(assert (=> b!1269654 (= e!723695 (and e!723697 mapRes!50758))))

(declare-fun condMapEmpty!50758 () Bool)

(declare-fun mapDefault!50758 () ValueCell!15539)

