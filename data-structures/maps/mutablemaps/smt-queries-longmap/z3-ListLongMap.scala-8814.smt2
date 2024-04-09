; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107146 () Bool)

(assert start!107146)

(declare-fun b_free!27615 () Bool)

(declare-fun b_next!27615 () Bool)

(assert (=> start!107146 (= b_free!27615 (not b_next!27615))))

(declare-fun tp!97073 () Bool)

(declare-fun b_and!45657 () Bool)

(assert (=> start!107146 (= tp!97073 b_and!45657)))

(declare-fun b!1269817 () Bool)

(declare-fun res!845123 () Bool)

(declare-fun e!723801 () Bool)

(assert (=> b!1269817 (=> (not res!845123) (not e!723801))))

(declare-datatypes ((array!82831 0))(
  ( (array!82832 (arr!39948 (Array (_ BitVec 32) (_ BitVec 64))) (size!40485 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82831)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82831 (_ BitVec 32)) Bool)

(assert (=> b!1269817 (= res!845123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269818 () Bool)

(assert (=> b!1269818 (= e!723801 (not true))))

(declare-datatypes ((V!48925 0))(
  ( (V!48926 (val!16474 Int)) )
))
(declare-datatypes ((ValueCell!15546 0))(
  ( (ValueCellFull!15546 (v!19109 V!48925)) (EmptyCell!15546) )
))
(declare-datatypes ((array!82833 0))(
  ( (array!82834 (arr!39949 (Array (_ BitVec 32) ValueCell!15546)) (size!40486 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82833)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48925)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48925)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48925)

(declare-fun zeroValueBefore!52 () V!48925)

(declare-datatypes ((tuple2!21484 0))(
  ( (tuple2!21485 (_1!10752 (_ BitVec 64)) (_2!10752 V!48925)) )
))
(declare-datatypes ((List!28621 0))(
  ( (Nil!28618) (Cons!28617 (h!29826 tuple2!21484) (t!42157 List!28621)) )
))
(declare-datatypes ((ListLongMap!19225 0))(
  ( (ListLongMap!19226 (toList!9628 List!28621)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5936 (array!82831 array!82833 (_ BitVec 32) (_ BitVec 32) V!48925 V!48925 (_ BitVec 32) Int) ListLongMap!19225)

(assert (=> b!1269818 (= (getCurrentListMapNoExtraKeys!5936 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5936 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42228 0))(
  ( (Unit!42229) )
))
(declare-fun lt!574571 () Unit!42228)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1232 (array!82831 array!82833 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48925 V!48925 V!48925 V!48925 (_ BitVec 32) Int) Unit!42228)

(assert (=> b!1269818 (= lt!574571 (lemmaNoChangeToArrayThenSameMapNoExtras!1232 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1269819 () Bool)

(declare-fun res!845122 () Bool)

(assert (=> b!1269819 (=> (not res!845122) (not e!723801))))

(assert (=> b!1269819 (= res!845122 (and (= (size!40486 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40485 _keys!1364) (size!40486 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!50779 () Bool)

(declare-fun mapRes!50779 () Bool)

(assert (=> mapIsEmpty!50779 mapRes!50779))

(declare-fun b!1269820 () Bool)

(declare-fun res!845124 () Bool)

(assert (=> b!1269820 (=> (not res!845124) (not e!723801))))

(assert (=> b!1269820 (= res!845124 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40485 _keys!1364)) (bvslt from!1698 (size!40485 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun res!845126 () Bool)

(assert (=> start!107146 (=> (not res!845126) (not e!723801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107146 (= res!845126 (validMask!0 mask!1730))))

(assert (=> start!107146 e!723801))

(declare-fun e!723803 () Bool)

(declare-fun array_inv!30347 (array!82833) Bool)

(assert (=> start!107146 (and (array_inv!30347 _values!1134) e!723803)))

(assert (=> start!107146 true))

(declare-fun array_inv!30348 (array!82831) Bool)

(assert (=> start!107146 (array_inv!30348 _keys!1364)))

(declare-fun tp_is_empty!32799 () Bool)

(assert (=> start!107146 tp_is_empty!32799))

(assert (=> start!107146 tp!97073))

(declare-fun b!1269821 () Bool)

(declare-fun e!723799 () Bool)

(assert (=> b!1269821 (= e!723803 (and e!723799 mapRes!50779))))

(declare-fun condMapEmpty!50779 () Bool)

(declare-fun mapDefault!50779 () ValueCell!15546)

(assert (=> b!1269821 (= condMapEmpty!50779 (= (arr!39949 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15546)) mapDefault!50779)))))

(declare-fun b!1269822 () Bool)

(declare-fun e!723800 () Bool)

(assert (=> b!1269822 (= e!723800 tp_is_empty!32799)))

(declare-fun mapNonEmpty!50779 () Bool)

(declare-fun tp!97072 () Bool)

(assert (=> mapNonEmpty!50779 (= mapRes!50779 (and tp!97072 e!723800))))

(declare-fun mapValue!50779 () ValueCell!15546)

(declare-fun mapRest!50779 () (Array (_ BitVec 32) ValueCell!15546))

(declare-fun mapKey!50779 () (_ BitVec 32))

(assert (=> mapNonEmpty!50779 (= (arr!39949 _values!1134) (store mapRest!50779 mapKey!50779 mapValue!50779))))

(declare-fun b!1269823 () Bool)

(declare-fun res!845125 () Bool)

(assert (=> b!1269823 (=> (not res!845125) (not e!723801))))

(declare-datatypes ((List!28622 0))(
  ( (Nil!28619) (Cons!28618 (h!29827 (_ BitVec 64)) (t!42158 List!28622)) )
))
(declare-fun arrayNoDuplicates!0 (array!82831 (_ BitVec 32) List!28622) Bool)

(assert (=> b!1269823 (= res!845125 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28619))))

(declare-fun b!1269824 () Bool)

(assert (=> b!1269824 (= e!723799 tp_is_empty!32799)))

(assert (= (and start!107146 res!845126) b!1269819))

(assert (= (and b!1269819 res!845122) b!1269817))

(assert (= (and b!1269817 res!845123) b!1269823))

(assert (= (and b!1269823 res!845125) b!1269820))

(assert (= (and b!1269820 res!845124) b!1269818))

(assert (= (and b!1269821 condMapEmpty!50779) mapIsEmpty!50779))

(assert (= (and b!1269821 (not condMapEmpty!50779)) mapNonEmpty!50779))

(get-info :version)

(assert (= (and mapNonEmpty!50779 ((_ is ValueCellFull!15546) mapValue!50779)) b!1269822))

(assert (= (and b!1269821 ((_ is ValueCellFull!15546) mapDefault!50779)) b!1269824))

(assert (= start!107146 b!1269821))

(declare-fun m!1168283 () Bool)

(assert (=> mapNonEmpty!50779 m!1168283))

(declare-fun m!1168285 () Bool)

(assert (=> b!1269823 m!1168285))

(declare-fun m!1168287 () Bool)

(assert (=> b!1269818 m!1168287))

(declare-fun m!1168289 () Bool)

(assert (=> b!1269818 m!1168289))

(declare-fun m!1168291 () Bool)

(assert (=> b!1269818 m!1168291))

(declare-fun m!1168293 () Bool)

(assert (=> b!1269817 m!1168293))

(declare-fun m!1168295 () Bool)

(assert (=> start!107146 m!1168295))

(declare-fun m!1168297 () Bool)

(assert (=> start!107146 m!1168297))

(declare-fun m!1168299 () Bool)

(assert (=> start!107146 m!1168299))

(check-sat (not b!1269818) (not b!1269823) b_and!45657 (not start!107146) tp_is_empty!32799 (not b!1269817) (not mapNonEmpty!50779) (not b_next!27615))
(check-sat b_and!45657 (not b_next!27615))
