; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107104 () Bool)

(assert start!107104)

(declare-fun b_free!27573 () Bool)

(declare-fun b_next!27573 () Bool)

(assert (=> start!107104 (= b_free!27573 (not b_next!27573))))

(declare-fun tp!96946 () Bool)

(declare-fun b_and!45615 () Bool)

(assert (=> start!107104 (= tp!96946 b_and!45615)))

(declare-fun b!1269313 () Bool)

(declare-fun res!844810 () Bool)

(declare-fun e!723488 () Bool)

(assert (=> b!1269313 (=> (not res!844810) (not e!723488))))

(declare-datatypes ((V!48869 0))(
  ( (V!48870 (val!16453 Int)) )
))
(declare-datatypes ((ValueCell!15525 0))(
  ( (ValueCellFull!15525 (v!19088 V!48869)) (EmptyCell!15525) )
))
(declare-datatypes ((array!82749 0))(
  ( (array!82750 (arr!39907 (Array (_ BitVec 32) ValueCell!15525)) (size!40444 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82749)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82751 0))(
  ( (array!82752 (arr!39908 (Array (_ BitVec 32) (_ BitVec 64))) (size!40445 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82751)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269313 (= res!844810 (and (= (size!40444 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40445 _keys!1364) (size!40444 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269314 () Bool)

(declare-fun res!844811 () Bool)

(assert (=> b!1269314 (=> (not res!844811) (not e!723488))))

(declare-datatypes ((List!28598 0))(
  ( (Nil!28595) (Cons!28594 (h!29803 (_ BitVec 64)) (t!42134 List!28598)) )
))
(declare-fun arrayNoDuplicates!0 (array!82751 (_ BitVec 32) List!28598) Bool)

(assert (=> b!1269314 (= res!844811 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28595))))

(declare-fun b!1269315 () Bool)

(declare-fun res!844808 () Bool)

(assert (=> b!1269315 (=> (not res!844808) (not e!723488))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269315 (= res!844808 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40445 _keys!1364)) (bvslt from!1698 (size!40445 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun res!844807 () Bool)

(assert (=> start!107104 (=> (not res!844807) (not e!723488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107104 (= res!844807 (validMask!0 mask!1730))))

(assert (=> start!107104 e!723488))

(declare-fun e!723486 () Bool)

(declare-fun array_inv!30323 (array!82749) Bool)

(assert (=> start!107104 (and (array_inv!30323 _values!1134) e!723486)))

(assert (=> start!107104 true))

(declare-fun array_inv!30324 (array!82751) Bool)

(assert (=> start!107104 (array_inv!30324 _keys!1364)))

(declare-fun tp_is_empty!32757 () Bool)

(assert (=> start!107104 tp_is_empty!32757))

(assert (=> start!107104 tp!96946))

(declare-fun b!1269316 () Bool)

(declare-fun res!844809 () Bool)

(assert (=> b!1269316 (=> (not res!844809) (not e!723488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82751 (_ BitVec 32)) Bool)

(assert (=> b!1269316 (= res!844809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269317 () Bool)

(declare-fun e!723484 () Bool)

(assert (=> b!1269317 (= e!723484 tp_is_empty!32757)))

(declare-fun b!1269318 () Bool)

(assert (=> b!1269318 (= e!723488 (not true))))

(declare-fun minValueAfter!52 () V!48869)

(declare-fun minValueBefore!52 () V!48869)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48869)

(declare-fun zeroValueBefore!52 () V!48869)

(declare-datatypes ((tuple2!21460 0))(
  ( (tuple2!21461 (_1!10740 (_ BitVec 64)) (_2!10740 V!48869)) )
))
(declare-datatypes ((List!28599 0))(
  ( (Nil!28596) (Cons!28595 (h!29804 tuple2!21460) (t!42135 List!28599)) )
))
(declare-datatypes ((ListLongMap!19201 0))(
  ( (ListLongMap!19202 (toList!9616 List!28599)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5924 (array!82751 array!82749 (_ BitVec 32) (_ BitVec 32) V!48869 V!48869 (_ BitVec 32) Int) ListLongMap!19201)

(assert (=> b!1269318 (= (getCurrentListMapNoExtraKeys!5924 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5924 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42204 0))(
  ( (Unit!42205) )
))
(declare-fun lt!574508 () Unit!42204)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1220 (array!82751 array!82749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48869 V!48869 V!48869 V!48869 (_ BitVec 32) Int) Unit!42204)

(assert (=> b!1269318 (= lt!574508 (lemmaNoChangeToArrayThenSameMapNoExtras!1220 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269319 () Bool)

(declare-fun e!723485 () Bool)

(declare-fun mapRes!50716 () Bool)

(assert (=> b!1269319 (= e!723486 (and e!723485 mapRes!50716))))

(declare-fun condMapEmpty!50716 () Bool)

(declare-fun mapDefault!50716 () ValueCell!15525)

(assert (=> b!1269319 (= condMapEmpty!50716 (= (arr!39907 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15525)) mapDefault!50716)))))

(declare-fun mapNonEmpty!50716 () Bool)

(declare-fun tp!96947 () Bool)

(assert (=> mapNonEmpty!50716 (= mapRes!50716 (and tp!96947 e!723484))))

(declare-fun mapRest!50716 () (Array (_ BitVec 32) ValueCell!15525))

(declare-fun mapValue!50716 () ValueCell!15525)

(declare-fun mapKey!50716 () (_ BitVec 32))

(assert (=> mapNonEmpty!50716 (= (arr!39907 _values!1134) (store mapRest!50716 mapKey!50716 mapValue!50716))))

(declare-fun mapIsEmpty!50716 () Bool)

(assert (=> mapIsEmpty!50716 mapRes!50716))

(declare-fun b!1269320 () Bool)

(assert (=> b!1269320 (= e!723485 tp_is_empty!32757)))

(assert (= (and start!107104 res!844807) b!1269313))

(assert (= (and b!1269313 res!844810) b!1269316))

(assert (= (and b!1269316 res!844809) b!1269314))

(assert (= (and b!1269314 res!844811) b!1269315))

(assert (= (and b!1269315 res!844808) b!1269318))

(assert (= (and b!1269319 condMapEmpty!50716) mapIsEmpty!50716))

(assert (= (and b!1269319 (not condMapEmpty!50716)) mapNonEmpty!50716))

(get-info :version)

(assert (= (and mapNonEmpty!50716 ((_ is ValueCellFull!15525) mapValue!50716)) b!1269317))

(assert (= (and b!1269319 ((_ is ValueCellFull!15525) mapDefault!50716)) b!1269320))

(assert (= start!107104 b!1269319))

(declare-fun m!1167905 () Bool)

(assert (=> b!1269314 m!1167905))

(declare-fun m!1167907 () Bool)

(assert (=> b!1269318 m!1167907))

(declare-fun m!1167909 () Bool)

(assert (=> b!1269318 m!1167909))

(declare-fun m!1167911 () Bool)

(assert (=> b!1269318 m!1167911))

(declare-fun m!1167913 () Bool)

(assert (=> mapNonEmpty!50716 m!1167913))

(declare-fun m!1167915 () Bool)

(assert (=> start!107104 m!1167915))

(declare-fun m!1167917 () Bool)

(assert (=> start!107104 m!1167917))

(declare-fun m!1167919 () Bool)

(assert (=> start!107104 m!1167919))

(declare-fun m!1167921 () Bool)

(assert (=> b!1269316 m!1167921))

(check-sat (not mapNonEmpty!50716) b_and!45615 (not b_next!27573) (not b!1269318) tp_is_empty!32757 (not b!1269314) (not b!1269316) (not start!107104))
(check-sat b_and!45615 (not b_next!27573))
