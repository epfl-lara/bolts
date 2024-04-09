; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107128 () Bool)

(assert start!107128)

(declare-fun b_free!27597 () Bool)

(declare-fun b_next!27597 () Bool)

(assert (=> start!107128 (= b_free!27597 (not b_next!27597))))

(declare-fun tp!97018 () Bool)

(declare-fun b_and!45639 () Bool)

(assert (=> start!107128 (= tp!97018 b_and!45639)))

(declare-fun mapNonEmpty!50752 () Bool)

(declare-fun mapRes!50752 () Bool)

(declare-fun tp!97019 () Bool)

(declare-fun e!723664 () Bool)

(assert (=> mapNonEmpty!50752 (= mapRes!50752 (and tp!97019 e!723664))))

(declare-datatypes ((V!48901 0))(
  ( (V!48902 (val!16465 Int)) )
))
(declare-datatypes ((ValueCell!15537 0))(
  ( (ValueCellFull!15537 (v!19100 V!48901)) (EmptyCell!15537) )
))
(declare-datatypes ((array!82797 0))(
  ( (array!82798 (arr!39931 (Array (_ BitVec 32) ValueCell!15537)) (size!40468 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82797)

(declare-fun mapRest!50752 () (Array (_ BitVec 32) ValueCell!15537))

(declare-fun mapValue!50752 () ValueCell!15537)

(declare-fun mapKey!50752 () (_ BitVec 32))

(assert (=> mapNonEmpty!50752 (= (arr!39931 _values!1134) (store mapRest!50752 mapKey!50752 mapValue!50752))))

(declare-fun b!1269601 () Bool)

(declare-fun tp_is_empty!32781 () Bool)

(assert (=> b!1269601 (= e!723664 tp_is_empty!32781)))

(declare-fun b!1269602 () Bool)

(declare-fun res!844989 () Bool)

(declare-fun e!723668 () Bool)

(assert (=> b!1269602 (=> (not res!844989) (not e!723668))))

(declare-datatypes ((array!82799 0))(
  ( (array!82800 (arr!39932 (Array (_ BitVec 32) (_ BitVec 64))) (size!40469 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82799)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82799 (_ BitVec 32)) Bool)

(assert (=> b!1269602 (= res!844989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269603 () Bool)

(declare-fun e!723667 () Bool)

(declare-fun e!723666 () Bool)

(assert (=> b!1269603 (= e!723667 (and e!723666 mapRes!50752))))

(declare-fun condMapEmpty!50752 () Bool)

(declare-fun mapDefault!50752 () ValueCell!15537)

(assert (=> b!1269603 (= condMapEmpty!50752 (= (arr!39931 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15537)) mapDefault!50752)))))

(declare-fun res!844990 () Bool)

(assert (=> start!107128 (=> (not res!844990) (not e!723668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107128 (= res!844990 (validMask!0 mask!1730))))

(assert (=> start!107128 e!723668))

(declare-fun array_inv!30337 (array!82797) Bool)

(assert (=> start!107128 (and (array_inv!30337 _values!1134) e!723667)))

(assert (=> start!107128 true))

(declare-fun array_inv!30338 (array!82799) Bool)

(assert (=> start!107128 (array_inv!30338 _keys!1364)))

(assert (=> start!107128 tp_is_empty!32781))

(assert (=> start!107128 tp!97018))

(declare-fun b!1269604 () Bool)

(assert (=> b!1269604 (= e!723668 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48901)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48901)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48901)

(declare-fun zeroValueBefore!52 () V!48901)

(declare-datatypes ((tuple2!21476 0))(
  ( (tuple2!21477 (_1!10748 (_ BitVec 64)) (_2!10748 V!48901)) )
))
(declare-datatypes ((List!28611 0))(
  ( (Nil!28608) (Cons!28607 (h!29816 tuple2!21476) (t!42147 List!28611)) )
))
(declare-datatypes ((ListLongMap!19217 0))(
  ( (ListLongMap!19218 (toList!9624 List!28611)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5932 (array!82799 array!82797 (_ BitVec 32) (_ BitVec 32) V!48901 V!48901 (_ BitVec 32) Int) ListLongMap!19217)

(assert (=> b!1269604 (= (getCurrentListMapNoExtraKeys!5932 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5932 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42220 0))(
  ( (Unit!42221) )
))
(declare-fun lt!574544 () Unit!42220)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1228 (array!82799 array!82797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48901 V!48901 V!48901 V!48901 (_ BitVec 32) Int) Unit!42220)

(assert (=> b!1269604 (= lt!574544 (lemmaNoChangeToArrayThenSameMapNoExtras!1228 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269605 () Bool)

(assert (=> b!1269605 (= e!723666 tp_is_empty!32781)))

(declare-fun mapIsEmpty!50752 () Bool)

(assert (=> mapIsEmpty!50752 mapRes!50752))

(declare-fun b!1269606 () Bool)

(declare-fun res!844987 () Bool)

(assert (=> b!1269606 (=> (not res!844987) (not e!723668))))

(declare-datatypes ((List!28612 0))(
  ( (Nil!28609) (Cons!28608 (h!29817 (_ BitVec 64)) (t!42148 List!28612)) )
))
(declare-fun arrayNoDuplicates!0 (array!82799 (_ BitVec 32) List!28612) Bool)

(assert (=> b!1269606 (= res!844987 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28609))))

(declare-fun b!1269607 () Bool)

(declare-fun res!844991 () Bool)

(assert (=> b!1269607 (=> (not res!844991) (not e!723668))))

(assert (=> b!1269607 (= res!844991 (and (= (size!40468 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40469 _keys!1364) (size!40468 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269608 () Bool)

(declare-fun res!844988 () Bool)

(assert (=> b!1269608 (=> (not res!844988) (not e!723668))))

(assert (=> b!1269608 (= res!844988 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40469 _keys!1364)) (bvslt from!1698 (size!40469 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(assert (= (and start!107128 res!844990) b!1269607))

(assert (= (and b!1269607 res!844991) b!1269602))

(assert (= (and b!1269602 res!844989) b!1269606))

(assert (= (and b!1269606 res!844987) b!1269608))

(assert (= (and b!1269608 res!844988) b!1269604))

(assert (= (and b!1269603 condMapEmpty!50752) mapIsEmpty!50752))

(assert (= (and b!1269603 (not condMapEmpty!50752)) mapNonEmpty!50752))

(get-info :version)

(assert (= (and mapNonEmpty!50752 ((_ is ValueCellFull!15537) mapValue!50752)) b!1269601))

(assert (= (and b!1269603 ((_ is ValueCellFull!15537) mapDefault!50752)) b!1269605))

(assert (= start!107128 b!1269603))

(declare-fun m!1168121 () Bool)

(assert (=> b!1269602 m!1168121))

(declare-fun m!1168123 () Bool)

(assert (=> b!1269606 m!1168123))

(declare-fun m!1168125 () Bool)

(assert (=> start!107128 m!1168125))

(declare-fun m!1168127 () Bool)

(assert (=> start!107128 m!1168127))

(declare-fun m!1168129 () Bool)

(assert (=> start!107128 m!1168129))

(declare-fun m!1168131 () Bool)

(assert (=> b!1269604 m!1168131))

(declare-fun m!1168133 () Bool)

(assert (=> b!1269604 m!1168133))

(declare-fun m!1168135 () Bool)

(assert (=> b!1269604 m!1168135))

(declare-fun m!1168137 () Bool)

(assert (=> mapNonEmpty!50752 m!1168137))

(check-sat (not b_next!27597) (not b!1269602) (not mapNonEmpty!50752) (not b!1269604) b_and!45639 tp_is_empty!32781 (not start!107128) (not b!1269606))
(check-sat b_and!45639 (not b_next!27597))
