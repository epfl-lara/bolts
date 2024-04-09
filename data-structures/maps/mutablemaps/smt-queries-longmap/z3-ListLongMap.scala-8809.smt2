; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107116 () Bool)

(assert start!107116)

(declare-fun b_free!27585 () Bool)

(declare-fun b_next!27585 () Bool)

(assert (=> start!107116 (= b_free!27585 (not b_next!27585))))

(declare-fun tp!96982 () Bool)

(declare-fun b_and!45627 () Bool)

(assert (=> start!107116 (= tp!96982 b_and!45627)))

(declare-fun mapNonEmpty!50734 () Bool)

(declare-fun mapRes!50734 () Bool)

(declare-fun tp!96983 () Bool)

(declare-fun e!723574 () Bool)

(assert (=> mapNonEmpty!50734 (= mapRes!50734 (and tp!96983 e!723574))))

(declare-datatypes ((V!48885 0))(
  ( (V!48886 (val!16459 Int)) )
))
(declare-datatypes ((ValueCell!15531 0))(
  ( (ValueCellFull!15531 (v!19094 V!48885)) (EmptyCell!15531) )
))
(declare-fun mapValue!50734 () ValueCell!15531)

(declare-datatypes ((array!82773 0))(
  ( (array!82774 (arr!39919 (Array (_ BitVec 32) ValueCell!15531)) (size!40456 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82773)

(declare-fun mapKey!50734 () (_ BitVec 32))

(declare-fun mapRest!50734 () (Array (_ BitVec 32) ValueCell!15531))

(assert (=> mapNonEmpty!50734 (= (arr!39919 _values!1134) (store mapRest!50734 mapKey!50734 mapValue!50734))))

(declare-fun b!1269457 () Bool)

(declare-fun res!844899 () Bool)

(declare-fun e!723578 () Bool)

(assert (=> b!1269457 (=> (not res!844899) (not e!723578))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82775 0))(
  ( (array!82776 (arr!39920 (Array (_ BitVec 32) (_ BitVec 64))) (size!40457 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82775)

(assert (=> b!1269457 (= res!844899 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40457 _keys!1364)) (bvslt from!1698 (size!40457 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269458 () Bool)

(assert (=> b!1269458 (= e!723578 (not true))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48885)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48885)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48885)

(declare-fun zeroValueBefore!52 () V!48885)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21470 0))(
  ( (tuple2!21471 (_1!10745 (_ BitVec 64)) (_2!10745 V!48885)) )
))
(declare-datatypes ((List!28606 0))(
  ( (Nil!28603) (Cons!28602 (h!29811 tuple2!21470) (t!42142 List!28606)) )
))
(declare-datatypes ((ListLongMap!19211 0))(
  ( (ListLongMap!19212 (toList!9621 List!28606)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5929 (array!82775 array!82773 (_ BitVec 32) (_ BitVec 32) V!48885 V!48885 (_ BitVec 32) Int) ListLongMap!19211)

(assert (=> b!1269458 (= (getCurrentListMapNoExtraKeys!5929 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5929 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42214 0))(
  ( (Unit!42215) )
))
(declare-fun lt!574526 () Unit!42214)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1225 (array!82775 array!82773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48885 V!48885 V!48885 V!48885 (_ BitVec 32) Int) Unit!42214)

(assert (=> b!1269458 (= lt!574526 (lemmaNoChangeToArrayThenSameMapNoExtras!1225 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun res!844901 () Bool)

(assert (=> start!107116 (=> (not res!844901) (not e!723578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107116 (= res!844901 (validMask!0 mask!1730))))

(assert (=> start!107116 e!723578))

(declare-fun e!723577 () Bool)

(declare-fun array_inv!30333 (array!82773) Bool)

(assert (=> start!107116 (and (array_inv!30333 _values!1134) e!723577)))

(assert (=> start!107116 true))

(declare-fun array_inv!30334 (array!82775) Bool)

(assert (=> start!107116 (array_inv!30334 _keys!1364)))

(declare-fun tp_is_empty!32769 () Bool)

(assert (=> start!107116 tp_is_empty!32769))

(assert (=> start!107116 tp!96982))

(declare-fun b!1269459 () Bool)

(declare-fun res!844898 () Bool)

(assert (=> b!1269459 (=> (not res!844898) (not e!723578))))

(declare-datatypes ((List!28607 0))(
  ( (Nil!28604) (Cons!28603 (h!29812 (_ BitVec 64)) (t!42143 List!28607)) )
))
(declare-fun arrayNoDuplicates!0 (array!82775 (_ BitVec 32) List!28607) Bool)

(assert (=> b!1269459 (= res!844898 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28604))))

(declare-fun b!1269460 () Bool)

(declare-fun e!723576 () Bool)

(assert (=> b!1269460 (= e!723577 (and e!723576 mapRes!50734))))

(declare-fun condMapEmpty!50734 () Bool)

(declare-fun mapDefault!50734 () ValueCell!15531)

(assert (=> b!1269460 (= condMapEmpty!50734 (= (arr!39919 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15531)) mapDefault!50734)))))

(declare-fun b!1269461 () Bool)

(assert (=> b!1269461 (= e!723576 tp_is_empty!32769)))

(declare-fun mapIsEmpty!50734 () Bool)

(assert (=> mapIsEmpty!50734 mapRes!50734))

(declare-fun b!1269462 () Bool)

(declare-fun res!844897 () Bool)

(assert (=> b!1269462 (=> (not res!844897) (not e!723578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82775 (_ BitVec 32)) Bool)

(assert (=> b!1269462 (= res!844897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269463 () Bool)

(declare-fun res!844900 () Bool)

(assert (=> b!1269463 (=> (not res!844900) (not e!723578))))

(assert (=> b!1269463 (= res!844900 (and (= (size!40456 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40457 _keys!1364) (size!40456 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269464 () Bool)

(assert (=> b!1269464 (= e!723574 tp_is_empty!32769)))

(assert (= (and start!107116 res!844901) b!1269463))

(assert (= (and b!1269463 res!844900) b!1269462))

(assert (= (and b!1269462 res!844897) b!1269459))

(assert (= (and b!1269459 res!844898) b!1269457))

(assert (= (and b!1269457 res!844899) b!1269458))

(assert (= (and b!1269460 condMapEmpty!50734) mapIsEmpty!50734))

(assert (= (and b!1269460 (not condMapEmpty!50734)) mapNonEmpty!50734))

(get-info :version)

(assert (= (and mapNonEmpty!50734 ((_ is ValueCellFull!15531) mapValue!50734)) b!1269464))

(assert (= (and b!1269460 ((_ is ValueCellFull!15531) mapDefault!50734)) b!1269461))

(assert (= start!107116 b!1269460))

(declare-fun m!1168013 () Bool)

(assert (=> b!1269462 m!1168013))

(declare-fun m!1168015 () Bool)

(assert (=> mapNonEmpty!50734 m!1168015))

(declare-fun m!1168017 () Bool)

(assert (=> b!1269458 m!1168017))

(declare-fun m!1168019 () Bool)

(assert (=> b!1269458 m!1168019))

(declare-fun m!1168021 () Bool)

(assert (=> b!1269458 m!1168021))

(declare-fun m!1168023 () Bool)

(assert (=> start!107116 m!1168023))

(declare-fun m!1168025 () Bool)

(assert (=> start!107116 m!1168025))

(declare-fun m!1168027 () Bool)

(assert (=> start!107116 m!1168027))

(declare-fun m!1168029 () Bool)

(assert (=> b!1269459 m!1168029))

(check-sat (not b_next!27585) b_and!45627 (not start!107116) (not b!1269459) (not b!1269462) tp_is_empty!32769 (not b!1269458) (not mapNonEmpty!50734))
(check-sat b_and!45627 (not b_next!27585))
