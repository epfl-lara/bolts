; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107098 () Bool)

(assert start!107098)

(declare-fun b_free!27567 () Bool)

(declare-fun b_next!27567 () Bool)

(assert (=> start!107098 (= b_free!27567 (not b_next!27567))))

(declare-fun tp!96929 () Bool)

(declare-fun b_and!45609 () Bool)

(assert (=> start!107098 (= tp!96929 b_and!45609)))

(declare-fun b!1269241 () Bool)

(declare-fun res!844763 () Bool)

(declare-fun e!723441 () Bool)

(assert (=> b!1269241 (=> (not res!844763) (not e!723441))))

(declare-datatypes ((V!48861 0))(
  ( (V!48862 (val!16450 Int)) )
))
(declare-datatypes ((ValueCell!15522 0))(
  ( (ValueCellFull!15522 (v!19085 V!48861)) (EmptyCell!15522) )
))
(declare-datatypes ((array!82741 0))(
  ( (array!82742 (arr!39903 (Array (_ BitVec 32) ValueCell!15522)) (size!40440 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82741)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82743 0))(
  ( (array!82744 (arr!39904 (Array (_ BitVec 32) (_ BitVec 64))) (size!40441 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82743)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269241 (= res!844763 (and (= (size!40440 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40441 _keys!1364) (size!40440 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844765 () Bool)

(assert (=> start!107098 (=> (not res!844765) (not e!723441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107098 (= res!844765 (validMask!0 mask!1730))))

(assert (=> start!107098 e!723441))

(declare-fun e!723439 () Bool)

(declare-fun array_inv!30321 (array!82741) Bool)

(assert (=> start!107098 (and (array_inv!30321 _values!1134) e!723439)))

(assert (=> start!107098 true))

(declare-fun array_inv!30322 (array!82743) Bool)

(assert (=> start!107098 (array_inv!30322 _keys!1364)))

(declare-fun tp_is_empty!32751 () Bool)

(assert (=> start!107098 tp_is_empty!32751))

(assert (=> start!107098 tp!96929))

(declare-fun b!1269242 () Bool)

(declare-fun res!844764 () Bool)

(assert (=> b!1269242 (=> (not res!844764) (not e!723441))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269242 (= res!844764 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40441 _keys!1364)) (bvslt from!1698 (size!40441 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50707 () Bool)

(declare-fun mapRes!50707 () Bool)

(declare-fun tp!96928 () Bool)

(declare-fun e!723443 () Bool)

(assert (=> mapNonEmpty!50707 (= mapRes!50707 (and tp!96928 e!723443))))

(declare-fun mapRest!50707 () (Array (_ BitVec 32) ValueCell!15522))

(declare-fun mapKey!50707 () (_ BitVec 32))

(declare-fun mapValue!50707 () ValueCell!15522)

(assert (=> mapNonEmpty!50707 (= (arr!39903 _values!1134) (store mapRest!50707 mapKey!50707 mapValue!50707))))

(declare-fun b!1269243 () Bool)

(declare-fun res!844766 () Bool)

(assert (=> b!1269243 (=> (not res!844766) (not e!723441))))

(declare-datatypes ((List!28596 0))(
  ( (Nil!28593) (Cons!28592 (h!29801 (_ BitVec 64)) (t!42132 List!28596)) )
))
(declare-fun arrayNoDuplicates!0 (array!82743 (_ BitVec 32) List!28596) Bool)

(assert (=> b!1269243 (= res!844766 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28593))))

(declare-fun b!1269244 () Bool)

(declare-fun res!844762 () Bool)

(assert (=> b!1269244 (=> (not res!844762) (not e!723441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82743 (_ BitVec 32)) Bool)

(assert (=> b!1269244 (= res!844762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269245 () Bool)

(assert (=> b!1269245 (= e!723441 (not true))))

(declare-fun minValueAfter!52 () V!48861)

(declare-fun minValueBefore!52 () V!48861)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48861)

(declare-fun zeroValueBefore!52 () V!48861)

(declare-datatypes ((tuple2!21458 0))(
  ( (tuple2!21459 (_1!10739 (_ BitVec 64)) (_2!10739 V!48861)) )
))
(declare-datatypes ((List!28597 0))(
  ( (Nil!28594) (Cons!28593 (h!29802 tuple2!21458) (t!42133 List!28597)) )
))
(declare-datatypes ((ListLongMap!19199 0))(
  ( (ListLongMap!19200 (toList!9615 List!28597)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5923 (array!82743 array!82741 (_ BitVec 32) (_ BitVec 32) V!48861 V!48861 (_ BitVec 32) Int) ListLongMap!19199)

(assert (=> b!1269245 (= (getCurrentListMapNoExtraKeys!5923 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5923 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42202 0))(
  ( (Unit!42203) )
))
(declare-fun lt!574499 () Unit!42202)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1219 (array!82743 array!82741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48861 V!48861 V!48861 V!48861 (_ BitVec 32) Int) Unit!42202)

(assert (=> b!1269245 (= lt!574499 (lemmaNoChangeToArrayThenSameMapNoExtras!1219 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269246 () Bool)

(declare-fun e!723440 () Bool)

(assert (=> b!1269246 (= e!723440 tp_is_empty!32751)))

(declare-fun mapIsEmpty!50707 () Bool)

(assert (=> mapIsEmpty!50707 mapRes!50707))

(declare-fun b!1269247 () Bool)

(assert (=> b!1269247 (= e!723439 (and e!723440 mapRes!50707))))

(declare-fun condMapEmpty!50707 () Bool)

(declare-fun mapDefault!50707 () ValueCell!15522)

(assert (=> b!1269247 (= condMapEmpty!50707 (= (arr!39903 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15522)) mapDefault!50707)))))

(declare-fun b!1269248 () Bool)

(assert (=> b!1269248 (= e!723443 tp_is_empty!32751)))

(assert (= (and start!107098 res!844765) b!1269241))

(assert (= (and b!1269241 res!844763) b!1269244))

(assert (= (and b!1269244 res!844762) b!1269243))

(assert (= (and b!1269243 res!844766) b!1269242))

(assert (= (and b!1269242 res!844764) b!1269245))

(assert (= (and b!1269247 condMapEmpty!50707) mapIsEmpty!50707))

(assert (= (and b!1269247 (not condMapEmpty!50707)) mapNonEmpty!50707))

(get-info :version)

(assert (= (and mapNonEmpty!50707 ((_ is ValueCellFull!15522) mapValue!50707)) b!1269248))

(assert (= (and b!1269247 ((_ is ValueCellFull!15522) mapDefault!50707)) b!1269246))

(assert (= start!107098 b!1269247))

(declare-fun m!1167851 () Bool)

(assert (=> start!107098 m!1167851))

(declare-fun m!1167853 () Bool)

(assert (=> start!107098 m!1167853))

(declare-fun m!1167855 () Bool)

(assert (=> start!107098 m!1167855))

(declare-fun m!1167857 () Bool)

(assert (=> b!1269245 m!1167857))

(declare-fun m!1167859 () Bool)

(assert (=> b!1269245 m!1167859))

(declare-fun m!1167861 () Bool)

(assert (=> b!1269245 m!1167861))

(declare-fun m!1167863 () Bool)

(assert (=> b!1269243 m!1167863))

(declare-fun m!1167865 () Bool)

(assert (=> b!1269244 m!1167865))

(declare-fun m!1167867 () Bool)

(assert (=> mapNonEmpty!50707 m!1167867))

(check-sat (not b!1269245) tp_is_empty!32751 (not start!107098) (not mapNonEmpty!50707) (not b!1269243) (not b!1269244) b_and!45609 (not b_next!27567))
(check-sat b_and!45609 (not b_next!27567))
