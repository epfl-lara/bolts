; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107092 () Bool)

(assert start!107092)

(declare-fun b_free!27561 () Bool)

(declare-fun b_next!27561 () Bool)

(assert (=> start!107092 (= b_free!27561 (not b_next!27561))))

(declare-fun tp!96910 () Bool)

(declare-fun b_and!45603 () Bool)

(assert (=> start!107092 (= tp!96910 b_and!45603)))

(declare-fun b!1269169 () Bool)

(declare-fun e!723396 () Bool)

(declare-fun tp_is_empty!32745 () Bool)

(assert (=> b!1269169 (= e!723396 tp_is_empty!32745)))

(declare-fun b!1269171 () Bool)

(declare-fun e!723397 () Bool)

(declare-fun mapRes!50698 () Bool)

(assert (=> b!1269171 (= e!723397 (and e!723396 mapRes!50698))))

(declare-fun condMapEmpty!50698 () Bool)

(declare-datatypes ((V!48853 0))(
  ( (V!48854 (val!16447 Int)) )
))
(declare-datatypes ((ValueCell!15519 0))(
  ( (ValueCellFull!15519 (v!19082 V!48853)) (EmptyCell!15519) )
))
(declare-datatypes ((array!82733 0))(
  ( (array!82734 (arr!39899 (Array (_ BitVec 32) ValueCell!15519)) (size!40436 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82733)

(declare-fun mapDefault!50698 () ValueCell!15519)

(assert (=> b!1269171 (= condMapEmpty!50698 (= (arr!39899 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15519)) mapDefault!50698)))))

(declare-fun b!1269172 () Bool)

(declare-fun e!723395 () Bool)

(assert (=> b!1269172 (= e!723395 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82735 0))(
  ( (array!82736 (arr!39900 (Array (_ BitVec 32) (_ BitVec 64))) (size!40437 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82735)

(declare-fun minValueAfter!52 () V!48853)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48853)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48853)

(declare-fun zeroValueBefore!52 () V!48853)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21456 0))(
  ( (tuple2!21457 (_1!10738 (_ BitVec 64)) (_2!10738 V!48853)) )
))
(declare-datatypes ((List!28594 0))(
  ( (Nil!28591) (Cons!28590 (h!29799 tuple2!21456) (t!42130 List!28594)) )
))
(declare-datatypes ((ListLongMap!19197 0))(
  ( (ListLongMap!19198 (toList!9614 List!28594)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5922 (array!82735 array!82733 (_ BitVec 32) (_ BitVec 32) V!48853 V!48853 (_ BitVec 32) Int) ListLongMap!19197)

(assert (=> b!1269172 (= (getCurrentListMapNoExtraKeys!5922 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5922 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42200 0))(
  ( (Unit!42201) )
))
(declare-fun lt!574490 () Unit!42200)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1218 (array!82735 array!82733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48853 V!48853 V!48853 V!48853 (_ BitVec 32) Int) Unit!42200)

(assert (=> b!1269172 (= lt!574490 (lemmaNoChangeToArrayThenSameMapNoExtras!1218 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269173 () Bool)

(declare-fun res!844717 () Bool)

(assert (=> b!1269173 (=> (not res!844717) (not e!723395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82735 (_ BitVec 32)) Bool)

(assert (=> b!1269173 (= res!844717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844718 () Bool)

(assert (=> start!107092 (=> (not res!844718) (not e!723395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107092 (= res!844718 (validMask!0 mask!1730))))

(assert (=> start!107092 e!723395))

(declare-fun array_inv!30319 (array!82733) Bool)

(assert (=> start!107092 (and (array_inv!30319 _values!1134) e!723397)))

(assert (=> start!107092 true))

(declare-fun array_inv!30320 (array!82735) Bool)

(assert (=> start!107092 (array_inv!30320 _keys!1364)))

(assert (=> start!107092 tp_is_empty!32745))

(assert (=> start!107092 tp!96910))

(declare-fun b!1269170 () Bool)

(declare-fun res!844720 () Bool)

(assert (=> b!1269170 (=> (not res!844720) (not e!723395))))

(assert (=> b!1269170 (= res!844720 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40437 _keys!1364)) (bvslt from!1698 (size!40437 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269174 () Bool)

(declare-fun res!844721 () Bool)

(assert (=> b!1269174 (=> (not res!844721) (not e!723395))))

(assert (=> b!1269174 (= res!844721 (and (= (size!40436 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40437 _keys!1364) (size!40436 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269175 () Bool)

(declare-fun e!723398 () Bool)

(assert (=> b!1269175 (= e!723398 tp_is_empty!32745)))

(declare-fun b!1269176 () Bool)

(declare-fun res!844719 () Bool)

(assert (=> b!1269176 (=> (not res!844719) (not e!723395))))

(declare-datatypes ((List!28595 0))(
  ( (Nil!28592) (Cons!28591 (h!29800 (_ BitVec 64)) (t!42131 List!28595)) )
))
(declare-fun arrayNoDuplicates!0 (array!82735 (_ BitVec 32) List!28595) Bool)

(assert (=> b!1269176 (= res!844719 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28592))))

(declare-fun mapNonEmpty!50698 () Bool)

(declare-fun tp!96911 () Bool)

(assert (=> mapNonEmpty!50698 (= mapRes!50698 (and tp!96911 e!723398))))

(declare-fun mapValue!50698 () ValueCell!15519)

(declare-fun mapKey!50698 () (_ BitVec 32))

(declare-fun mapRest!50698 () (Array (_ BitVec 32) ValueCell!15519))

(assert (=> mapNonEmpty!50698 (= (arr!39899 _values!1134) (store mapRest!50698 mapKey!50698 mapValue!50698))))

(declare-fun mapIsEmpty!50698 () Bool)

(assert (=> mapIsEmpty!50698 mapRes!50698))

(assert (= (and start!107092 res!844718) b!1269174))

(assert (= (and b!1269174 res!844721) b!1269173))

(assert (= (and b!1269173 res!844717) b!1269176))

(assert (= (and b!1269176 res!844719) b!1269170))

(assert (= (and b!1269170 res!844720) b!1269172))

(assert (= (and b!1269171 condMapEmpty!50698) mapIsEmpty!50698))

(assert (= (and b!1269171 (not condMapEmpty!50698)) mapNonEmpty!50698))

(get-info :version)

(assert (= (and mapNonEmpty!50698 ((_ is ValueCellFull!15519) mapValue!50698)) b!1269175))

(assert (= (and b!1269171 ((_ is ValueCellFull!15519) mapDefault!50698)) b!1269169))

(assert (= start!107092 b!1269171))

(declare-fun m!1167797 () Bool)

(assert (=> b!1269172 m!1167797))

(declare-fun m!1167799 () Bool)

(assert (=> b!1269172 m!1167799))

(declare-fun m!1167801 () Bool)

(assert (=> b!1269172 m!1167801))

(declare-fun m!1167803 () Bool)

(assert (=> b!1269176 m!1167803))

(declare-fun m!1167805 () Bool)

(assert (=> b!1269173 m!1167805))

(declare-fun m!1167807 () Bool)

(assert (=> start!107092 m!1167807))

(declare-fun m!1167809 () Bool)

(assert (=> start!107092 m!1167809))

(declare-fun m!1167811 () Bool)

(assert (=> start!107092 m!1167811))

(declare-fun m!1167813 () Bool)

(assert (=> mapNonEmpty!50698 m!1167813))

(check-sat b_and!45603 tp_is_empty!32745 (not b!1269176) (not start!107092) (not b!1269173) (not b!1269172) (not b_next!27561) (not mapNonEmpty!50698))
(check-sat b_and!45603 (not b_next!27561))
