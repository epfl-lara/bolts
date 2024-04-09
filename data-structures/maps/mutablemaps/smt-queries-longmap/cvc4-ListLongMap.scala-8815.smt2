; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107154 () Bool)

(assert start!107154)

(declare-fun b_free!27623 () Bool)

(declare-fun b_next!27623 () Bool)

(assert (=> start!107154 (= b_free!27623 (not b_next!27623))))

(declare-fun tp!97097 () Bool)

(declare-fun b_and!45665 () Bool)

(assert (=> start!107154 (= tp!97097 b_and!45665)))

(declare-fun mapNonEmpty!50791 () Bool)

(declare-fun mapRes!50791 () Bool)

(declare-fun tp!97096 () Bool)

(declare-fun e!723859 () Bool)

(assert (=> mapNonEmpty!50791 (= mapRes!50791 (and tp!97096 e!723859))))

(declare-datatypes ((V!48935 0))(
  ( (V!48936 (val!16478 Int)) )
))
(declare-datatypes ((ValueCell!15550 0))(
  ( (ValueCellFull!15550 (v!19113 V!48935)) (EmptyCell!15550) )
))
(declare-datatypes ((array!82847 0))(
  ( (array!82848 (arr!39956 (Array (_ BitVec 32) ValueCell!15550)) (size!40493 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82847)

(declare-fun mapValue!50791 () ValueCell!15550)

(declare-fun mapRest!50791 () (Array (_ BitVec 32) ValueCell!15550))

(declare-fun mapKey!50791 () (_ BitVec 32))

(assert (=> mapNonEmpty!50791 (= (arr!39956 _values!1134) (store mapRest!50791 mapKey!50791 mapValue!50791))))

(declare-fun mapIsEmpty!50791 () Bool)

(assert (=> mapIsEmpty!50791 mapRes!50791))

(declare-fun b!1269914 () Bool)

(declare-fun res!845183 () Bool)

(declare-fun e!723861 () Bool)

(assert (=> b!1269914 (=> (not res!845183) (not e!723861))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82849 0))(
  ( (array!82850 (arr!39957 (Array (_ BitVec 32) (_ BitVec 64))) (size!40494 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82849)

(assert (=> b!1269914 (= res!845183 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40494 _keys!1364)) (bvslt from!1698 (size!40494 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269915 () Bool)

(declare-fun tp_is_empty!32807 () Bool)

(assert (=> b!1269915 (= e!723859 tp_is_empty!32807)))

(declare-fun b!1269916 () Bool)

(declare-fun e!723863 () Bool)

(assert (=> b!1269916 (= e!723863 tp_is_empty!32807)))

(declare-fun res!845182 () Bool)

(assert (=> start!107154 (=> (not res!845182) (not e!723861))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107154 (= res!845182 (validMask!0 mask!1730))))

(assert (=> start!107154 e!723861))

(declare-fun e!723860 () Bool)

(declare-fun array_inv!30351 (array!82847) Bool)

(assert (=> start!107154 (and (array_inv!30351 _values!1134) e!723860)))

(assert (=> start!107154 true))

(declare-fun array_inv!30352 (array!82849) Bool)

(assert (=> start!107154 (array_inv!30352 _keys!1364)))

(assert (=> start!107154 tp_is_empty!32807))

(assert (=> start!107154 tp!97097))

(declare-fun b!1269913 () Bool)

(declare-fun res!845186 () Bool)

(assert (=> b!1269913 (=> (not res!845186) (not e!723861))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269913 (= res!845186 (and (= (size!40493 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40494 _keys!1364) (size!40493 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269917 () Bool)

(declare-fun res!845184 () Bool)

(assert (=> b!1269917 (=> (not res!845184) (not e!723861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82849 (_ BitVec 32)) Bool)

(assert (=> b!1269917 (= res!845184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269918 () Bool)

(assert (=> b!1269918 (= e!723861 (not true))))

(declare-fun minValueAfter!52 () V!48935)

(declare-fun minValueBefore!52 () V!48935)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48935)

(declare-fun zeroValueBefore!52 () V!48935)

(declare-datatypes ((tuple2!21492 0))(
  ( (tuple2!21493 (_1!10756 (_ BitVec 64)) (_2!10756 V!48935)) )
))
(declare-datatypes ((List!28628 0))(
  ( (Nil!28625) (Cons!28624 (h!29833 tuple2!21492) (t!42164 List!28628)) )
))
(declare-datatypes ((ListLongMap!19233 0))(
  ( (ListLongMap!19234 (toList!9632 List!28628)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5940 (array!82849 array!82847 (_ BitVec 32) (_ BitVec 32) V!48935 V!48935 (_ BitVec 32) Int) ListLongMap!19233)

(assert (=> b!1269918 (= (getCurrentListMapNoExtraKeys!5940 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5940 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42236 0))(
  ( (Unit!42237) )
))
(declare-fun lt!574583 () Unit!42236)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1236 (array!82849 array!82847 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48935 V!48935 V!48935 V!48935 (_ BitVec 32) Int) Unit!42236)

(assert (=> b!1269918 (= lt!574583 (lemmaNoChangeToArrayThenSameMapNoExtras!1236 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269919 () Bool)

(declare-fun res!845185 () Bool)

(assert (=> b!1269919 (=> (not res!845185) (not e!723861))))

(declare-datatypes ((List!28629 0))(
  ( (Nil!28626) (Cons!28625 (h!29834 (_ BitVec 64)) (t!42165 List!28629)) )
))
(declare-fun arrayNoDuplicates!0 (array!82849 (_ BitVec 32) List!28629) Bool)

(assert (=> b!1269919 (= res!845185 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28626))))

(declare-fun b!1269920 () Bool)

(assert (=> b!1269920 (= e!723860 (and e!723863 mapRes!50791))))

(declare-fun condMapEmpty!50791 () Bool)

(declare-fun mapDefault!50791 () ValueCell!15550)

