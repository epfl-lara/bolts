; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107080 () Bool)

(assert start!107080)

(declare-fun b_free!27549 () Bool)

(declare-fun b_next!27549 () Bool)

(assert (=> start!107080 (= b_free!27549 (not b_next!27549))))

(declare-fun tp!96874 () Bool)

(declare-fun b_and!45591 () Bool)

(assert (=> start!107080 (= tp!96874 b_and!45591)))

(declare-fun b!1269025 () Bool)

(declare-fun e!723307 () Bool)

(assert (=> b!1269025 (= e!723307 (not true))))

(declare-datatypes ((V!48837 0))(
  ( (V!48838 (val!16441 Int)) )
))
(declare-datatypes ((ValueCell!15513 0))(
  ( (ValueCellFull!15513 (v!19076 V!48837)) (EmptyCell!15513) )
))
(declare-datatypes ((array!82709 0))(
  ( (array!82710 (arr!39887 (Array (_ BitVec 32) ValueCell!15513)) (size!40424 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82709)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82711 0))(
  ( (array!82712 (arr!39888 (Array (_ BitVec 32) (_ BitVec 64))) (size!40425 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82711)

(declare-fun minValueAfter!52 () V!48837)

(declare-fun minValueBefore!52 () V!48837)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48837)

(declare-fun zeroValueBefore!52 () V!48837)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-datatypes ((tuple2!21448 0))(
  ( (tuple2!21449 (_1!10734 (_ BitVec 64)) (_2!10734 V!48837)) )
))
(declare-datatypes ((List!28585 0))(
  ( (Nil!28582) (Cons!28581 (h!29790 tuple2!21448) (t!42121 List!28585)) )
))
(declare-datatypes ((ListLongMap!19189 0))(
  ( (ListLongMap!19190 (toList!9610 List!28585)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5918 (array!82711 array!82709 (_ BitVec 32) (_ BitVec 32) V!48837 V!48837 (_ BitVec 32) Int) ListLongMap!19189)

(assert (=> b!1269025 (= (getCurrentListMapNoExtraKeys!5918 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5918 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42192 0))(
  ( (Unit!42193) )
))
(declare-fun lt!574472 () Unit!42192)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1214 (array!82711 array!82709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48837 V!48837 V!48837 V!48837 (_ BitVec 32) Int) Unit!42192)

(assert (=> b!1269025 (= lt!574472 (lemmaNoChangeToArrayThenSameMapNoExtras!1214 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269026 () Bool)

(declare-fun res!844630 () Bool)

(assert (=> b!1269026 (=> (not res!844630) (not e!723307))))

(assert (=> b!1269026 (= res!844630 (and (= (size!40424 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40425 _keys!1364) (size!40424 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844629 () Bool)

(assert (=> start!107080 (=> (not res!844629) (not e!723307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107080 (= res!844629 (validMask!0 mask!1730))))

(assert (=> start!107080 e!723307))

(declare-fun e!723305 () Bool)

(declare-fun array_inv!30309 (array!82709) Bool)

(assert (=> start!107080 (and (array_inv!30309 _values!1134) e!723305)))

(assert (=> start!107080 true))

(declare-fun array_inv!30310 (array!82711) Bool)

(assert (=> start!107080 (array_inv!30310 _keys!1364)))

(declare-fun tp_is_empty!32733 () Bool)

(assert (=> start!107080 tp_is_empty!32733))

(assert (=> start!107080 tp!96874))

(declare-fun b!1269027 () Bool)

(declare-fun e!723308 () Bool)

(declare-fun mapRes!50680 () Bool)

(assert (=> b!1269027 (= e!723305 (and e!723308 mapRes!50680))))

(declare-fun condMapEmpty!50680 () Bool)

(declare-fun mapDefault!50680 () ValueCell!15513)

(assert (=> b!1269027 (= condMapEmpty!50680 (= (arr!39887 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15513)) mapDefault!50680)))))

(declare-fun b!1269028 () Bool)

(assert (=> b!1269028 (= e!723308 tp_is_empty!32733)))

(declare-fun b!1269029 () Bool)

(declare-fun res!844628 () Bool)

(assert (=> b!1269029 (=> (not res!844628) (not e!723307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82711 (_ BitVec 32)) Bool)

(assert (=> b!1269029 (= res!844628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50680 () Bool)

(declare-fun tp!96875 () Bool)

(declare-fun e!723306 () Bool)

(assert (=> mapNonEmpty!50680 (= mapRes!50680 (and tp!96875 e!723306))))

(declare-fun mapValue!50680 () ValueCell!15513)

(declare-fun mapKey!50680 () (_ BitVec 32))

(declare-fun mapRest!50680 () (Array (_ BitVec 32) ValueCell!15513))

(assert (=> mapNonEmpty!50680 (= (arr!39887 _values!1134) (store mapRest!50680 mapKey!50680 mapValue!50680))))

(declare-fun b!1269030 () Bool)

(declare-fun res!844627 () Bool)

(assert (=> b!1269030 (=> (not res!844627) (not e!723307))))

(declare-datatypes ((List!28586 0))(
  ( (Nil!28583) (Cons!28582 (h!29791 (_ BitVec 64)) (t!42122 List!28586)) )
))
(declare-fun arrayNoDuplicates!0 (array!82711 (_ BitVec 32) List!28586) Bool)

(assert (=> b!1269030 (= res!844627 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28583))))

(declare-fun b!1269031 () Bool)

(declare-fun res!844631 () Bool)

(assert (=> b!1269031 (=> (not res!844631) (not e!723307))))

(assert (=> b!1269031 (= res!844631 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40425 _keys!1364)) (bvslt from!1698 (size!40425 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269032 () Bool)

(assert (=> b!1269032 (= e!723306 tp_is_empty!32733)))

(declare-fun mapIsEmpty!50680 () Bool)

(assert (=> mapIsEmpty!50680 mapRes!50680))

(assert (= (and start!107080 res!844629) b!1269026))

(assert (= (and b!1269026 res!844630) b!1269029))

(assert (= (and b!1269029 res!844628) b!1269030))

(assert (= (and b!1269030 res!844627) b!1269031))

(assert (= (and b!1269031 res!844631) b!1269025))

(assert (= (and b!1269027 condMapEmpty!50680) mapIsEmpty!50680))

(assert (= (and b!1269027 (not condMapEmpty!50680)) mapNonEmpty!50680))

(get-info :version)

(assert (= (and mapNonEmpty!50680 ((_ is ValueCellFull!15513) mapValue!50680)) b!1269032))

(assert (= (and b!1269027 ((_ is ValueCellFull!15513) mapDefault!50680)) b!1269028))

(assert (= start!107080 b!1269027))

(declare-fun m!1167689 () Bool)

(assert (=> start!107080 m!1167689))

(declare-fun m!1167691 () Bool)

(assert (=> start!107080 m!1167691))

(declare-fun m!1167693 () Bool)

(assert (=> start!107080 m!1167693))

(declare-fun m!1167695 () Bool)

(assert (=> mapNonEmpty!50680 m!1167695))

(declare-fun m!1167697 () Bool)

(assert (=> b!1269030 m!1167697))

(declare-fun m!1167699 () Bool)

(assert (=> b!1269025 m!1167699))

(declare-fun m!1167701 () Bool)

(assert (=> b!1269025 m!1167701))

(declare-fun m!1167703 () Bool)

(assert (=> b!1269025 m!1167703))

(declare-fun m!1167705 () Bool)

(assert (=> b!1269029 m!1167705))

(check-sat (not b!1269029) (not mapNonEmpty!50680) b_and!45591 (not b_next!27549) (not b!1269030) (not b!1269025) (not start!107080) tp_is_empty!32733)
(check-sat b_and!45591 (not b_next!27549))
