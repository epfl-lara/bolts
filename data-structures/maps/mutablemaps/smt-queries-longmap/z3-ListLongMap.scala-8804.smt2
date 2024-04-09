; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107086 () Bool)

(assert start!107086)

(declare-fun b_free!27555 () Bool)

(declare-fun b_next!27555 () Bool)

(assert (=> start!107086 (= b_free!27555 (not b_next!27555))))

(declare-fun tp!96892 () Bool)

(declare-fun b_and!45597 () Bool)

(assert (=> start!107086 (= tp!96892 b_and!45597)))

(declare-fun mapIsEmpty!50689 () Bool)

(declare-fun mapRes!50689 () Bool)

(assert (=> mapIsEmpty!50689 mapRes!50689))

(declare-fun b!1269097 () Bool)

(declare-fun res!844675 () Bool)

(declare-fun e!723350 () Bool)

(assert (=> b!1269097 (=> (not res!844675) (not e!723350))))

(declare-datatypes ((V!48845 0))(
  ( (V!48846 (val!16444 Int)) )
))
(declare-datatypes ((ValueCell!15516 0))(
  ( (ValueCellFull!15516 (v!19079 V!48845)) (EmptyCell!15516) )
))
(declare-datatypes ((array!82721 0))(
  ( (array!82722 (arr!39893 (Array (_ BitVec 32) ValueCell!15516)) (size!40430 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82721)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82723 0))(
  ( (array!82724 (arr!39894 (Array (_ BitVec 32) (_ BitVec 64))) (size!40431 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82723)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269097 (= res!844675 (and (= (size!40430 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40431 _keys!1364) (size!40430 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269098 () Bool)

(declare-fun res!844673 () Bool)

(assert (=> b!1269098 (=> (not res!844673) (not e!723350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82723 (_ BitVec 32)) Bool)

(assert (=> b!1269098 (= res!844673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844676 () Bool)

(assert (=> start!107086 (=> (not res!844676) (not e!723350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107086 (= res!844676 (validMask!0 mask!1730))))

(assert (=> start!107086 e!723350))

(declare-fun e!723349 () Bool)

(declare-fun array_inv!30313 (array!82721) Bool)

(assert (=> start!107086 (and (array_inv!30313 _values!1134) e!723349)))

(assert (=> start!107086 true))

(declare-fun array_inv!30314 (array!82723) Bool)

(assert (=> start!107086 (array_inv!30314 _keys!1364)))

(declare-fun tp_is_empty!32739 () Bool)

(assert (=> start!107086 tp_is_empty!32739))

(assert (=> start!107086 tp!96892))

(declare-fun b!1269099 () Bool)

(declare-fun res!844672 () Bool)

(assert (=> b!1269099 (=> (not res!844672) (not e!723350))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269099 (= res!844672 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40431 _keys!1364)) (bvslt from!1698 (size!40431 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269100 () Bool)

(declare-fun e!723352 () Bool)

(assert (=> b!1269100 (= e!723352 tp_is_empty!32739)))

(declare-fun b!1269101 () Bool)

(assert (=> b!1269101 (= e!723350 (not true))))

(declare-fun minValueAfter!52 () V!48845)

(declare-fun minValueBefore!52 () V!48845)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48845)

(declare-fun zeroValueBefore!52 () V!48845)

(declare-datatypes ((tuple2!21450 0))(
  ( (tuple2!21451 (_1!10735 (_ BitVec 64)) (_2!10735 V!48845)) )
))
(declare-datatypes ((List!28588 0))(
  ( (Nil!28585) (Cons!28584 (h!29793 tuple2!21450) (t!42124 List!28588)) )
))
(declare-datatypes ((ListLongMap!19191 0))(
  ( (ListLongMap!19192 (toList!9611 List!28588)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5919 (array!82723 array!82721 (_ BitVec 32) (_ BitVec 32) V!48845 V!48845 (_ BitVec 32) Int) ListLongMap!19191)

(assert (=> b!1269101 (= (getCurrentListMapNoExtraKeys!5919 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5919 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42194 0))(
  ( (Unit!42195) )
))
(declare-fun lt!574481 () Unit!42194)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1215 (array!82723 array!82721 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48845 V!48845 V!48845 V!48845 (_ BitVec 32) Int) Unit!42194)

(assert (=> b!1269101 (= lt!574481 (lemmaNoChangeToArrayThenSameMapNoExtras!1215 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269102 () Bool)

(declare-fun e!723351 () Bool)

(assert (=> b!1269102 (= e!723351 tp_is_empty!32739)))

(declare-fun mapNonEmpty!50689 () Bool)

(declare-fun tp!96893 () Bool)

(assert (=> mapNonEmpty!50689 (= mapRes!50689 (and tp!96893 e!723352))))

(declare-fun mapKey!50689 () (_ BitVec 32))

(declare-fun mapRest!50689 () (Array (_ BitVec 32) ValueCell!15516))

(declare-fun mapValue!50689 () ValueCell!15516)

(assert (=> mapNonEmpty!50689 (= (arr!39893 _values!1134) (store mapRest!50689 mapKey!50689 mapValue!50689))))

(declare-fun b!1269103 () Bool)

(declare-fun res!844674 () Bool)

(assert (=> b!1269103 (=> (not res!844674) (not e!723350))))

(declare-datatypes ((List!28589 0))(
  ( (Nil!28586) (Cons!28585 (h!29794 (_ BitVec 64)) (t!42125 List!28589)) )
))
(declare-fun arrayNoDuplicates!0 (array!82723 (_ BitVec 32) List!28589) Bool)

(assert (=> b!1269103 (= res!844674 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28586))))

(declare-fun b!1269104 () Bool)

(assert (=> b!1269104 (= e!723349 (and e!723351 mapRes!50689))))

(declare-fun condMapEmpty!50689 () Bool)

(declare-fun mapDefault!50689 () ValueCell!15516)

(assert (=> b!1269104 (= condMapEmpty!50689 (= (arr!39893 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15516)) mapDefault!50689)))))

(assert (= (and start!107086 res!844676) b!1269097))

(assert (= (and b!1269097 res!844675) b!1269098))

(assert (= (and b!1269098 res!844673) b!1269103))

(assert (= (and b!1269103 res!844674) b!1269099))

(assert (= (and b!1269099 res!844672) b!1269101))

(assert (= (and b!1269104 condMapEmpty!50689) mapIsEmpty!50689))

(assert (= (and b!1269104 (not condMapEmpty!50689)) mapNonEmpty!50689))

(get-info :version)

(assert (= (and mapNonEmpty!50689 ((_ is ValueCellFull!15516) mapValue!50689)) b!1269100))

(assert (= (and b!1269104 ((_ is ValueCellFull!15516) mapDefault!50689)) b!1269102))

(assert (= start!107086 b!1269104))

(declare-fun m!1167743 () Bool)

(assert (=> b!1269098 m!1167743))

(declare-fun m!1167745 () Bool)

(assert (=> start!107086 m!1167745))

(declare-fun m!1167747 () Bool)

(assert (=> start!107086 m!1167747))

(declare-fun m!1167749 () Bool)

(assert (=> start!107086 m!1167749))

(declare-fun m!1167751 () Bool)

(assert (=> b!1269101 m!1167751))

(declare-fun m!1167753 () Bool)

(assert (=> b!1269101 m!1167753))

(declare-fun m!1167755 () Bool)

(assert (=> b!1269101 m!1167755))

(declare-fun m!1167757 () Bool)

(assert (=> mapNonEmpty!50689 m!1167757))

(declare-fun m!1167759 () Bool)

(assert (=> b!1269103 m!1167759))

(check-sat (not b!1269101) (not mapNonEmpty!50689) b_and!45597 (not b!1269098) (not b!1269103) (not start!107086) (not b_next!27555) tp_is_empty!32739)
(check-sat b_and!45597 (not b_next!27555))
