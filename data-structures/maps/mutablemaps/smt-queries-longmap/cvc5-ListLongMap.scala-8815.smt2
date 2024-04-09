; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107150 () Bool)

(assert start!107150)

(declare-fun b_free!27619 () Bool)

(declare-fun b_next!27619 () Bool)

(assert (=> start!107150 (= b_free!27619 (not b_next!27619))))

(declare-fun tp!97085 () Bool)

(declare-fun b_and!45661 () Bool)

(assert (=> start!107150 (= tp!97085 b_and!45661)))

(declare-fun mapNonEmpty!50785 () Bool)

(declare-fun mapRes!50785 () Bool)

(declare-fun tp!97084 () Bool)

(declare-fun e!723831 () Bool)

(assert (=> mapNonEmpty!50785 (= mapRes!50785 (and tp!97084 e!723831))))

(declare-datatypes ((V!48931 0))(
  ( (V!48932 (val!16476 Int)) )
))
(declare-datatypes ((ValueCell!15548 0))(
  ( (ValueCellFull!15548 (v!19111 V!48931)) (EmptyCell!15548) )
))
(declare-datatypes ((array!82839 0))(
  ( (array!82840 (arr!39952 (Array (_ BitVec 32) ValueCell!15548)) (size!40489 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82839)

(declare-fun mapKey!50785 () (_ BitVec 32))

(declare-fun mapRest!50785 () (Array (_ BitVec 32) ValueCell!15548))

(declare-fun mapValue!50785 () ValueCell!15548)

(assert (=> mapNonEmpty!50785 (= (arr!39952 _values!1134) (store mapRest!50785 mapKey!50785 mapValue!50785))))

(declare-fun b!1269866 () Bool)

(declare-fun e!723833 () Bool)

(assert (=> b!1269866 (= e!723833 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82841 0))(
  ( (array!82842 (arr!39953 (Array (_ BitVec 32) (_ BitVec 64))) (size!40490 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82841)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48931)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48931)

(declare-fun zeroValueBefore!52 () V!48931)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48931)

(declare-datatypes ((tuple2!21488 0))(
  ( (tuple2!21489 (_1!10754 (_ BitVec 64)) (_2!10754 V!48931)) )
))
(declare-datatypes ((List!28625 0))(
  ( (Nil!28622) (Cons!28621 (h!29830 tuple2!21488) (t!42161 List!28625)) )
))
(declare-datatypes ((ListLongMap!19229 0))(
  ( (ListLongMap!19230 (toList!9630 List!28625)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5938 (array!82841 array!82839 (_ BitVec 32) (_ BitVec 32) V!48931 V!48931 (_ BitVec 32) Int) ListLongMap!19229)

(assert (=> b!1269866 (= (getCurrentListMapNoExtraKeys!5938 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5938 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42232 0))(
  ( (Unit!42233) )
))
(declare-fun lt!574577 () Unit!42232)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1234 (array!82841 array!82839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48931 V!48931 V!48931 V!48931 (_ BitVec 32) Int) Unit!42232)

(assert (=> b!1269866 (= lt!574577 (lemmaNoChangeToArrayThenSameMapNoExtras!1234 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269867 () Bool)

(declare-fun res!845154 () Bool)

(assert (=> b!1269867 (=> (not res!845154) (not e!723833))))

(assert (=> b!1269867 (= res!845154 (and (= (size!40489 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40490 _keys!1364) (size!40489 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269868 () Bool)

(declare-fun res!845152 () Bool)

(assert (=> b!1269868 (=> (not res!845152) (not e!723833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82841 (_ BitVec 32)) Bool)

(assert (=> b!1269868 (= res!845152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50785 () Bool)

(assert (=> mapIsEmpty!50785 mapRes!50785))

(declare-fun b!1269869 () Bool)

(declare-fun e!723830 () Bool)

(declare-fun e!723829 () Bool)

(assert (=> b!1269869 (= e!723830 (and e!723829 mapRes!50785))))

(declare-fun condMapEmpty!50785 () Bool)

(declare-fun mapDefault!50785 () ValueCell!15548)

