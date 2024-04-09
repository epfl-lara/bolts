; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107122 () Bool)

(assert start!107122)

(declare-fun b_free!27591 () Bool)

(declare-fun b_next!27591 () Bool)

(assert (=> start!107122 (= b_free!27591 (not b_next!27591))))

(declare-fun tp!97001 () Bool)

(declare-fun b_and!45633 () Bool)

(assert (=> start!107122 (= tp!97001 b_and!45633)))

(declare-fun b!1269529 () Bool)

(declare-fun e!723623 () Bool)

(declare-fun e!723621 () Bool)

(declare-fun mapRes!50743 () Bool)

(assert (=> b!1269529 (= e!723623 (and e!723621 mapRes!50743))))

(declare-fun condMapEmpty!50743 () Bool)

(declare-datatypes ((V!48893 0))(
  ( (V!48894 (val!16462 Int)) )
))
(declare-datatypes ((ValueCell!15534 0))(
  ( (ValueCellFull!15534 (v!19097 V!48893)) (EmptyCell!15534) )
))
(declare-datatypes ((array!82785 0))(
  ( (array!82786 (arr!39925 (Array (_ BitVec 32) ValueCell!15534)) (size!40462 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82785)

(declare-fun mapDefault!50743 () ValueCell!15534)

(assert (=> b!1269529 (= condMapEmpty!50743 (= (arr!39925 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15534)) mapDefault!50743)))))

(declare-fun b!1269530 () Bool)

(declare-fun e!723622 () Bool)

(assert (=> b!1269530 (= e!723622 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82787 0))(
  ( (array!82788 (arr!39926 (Array (_ BitVec 32) (_ BitVec 64))) (size!40463 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82787)

(declare-fun minValueAfter!52 () V!48893)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48893)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48893)

(declare-fun zeroValueBefore!52 () V!48893)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21472 0))(
  ( (tuple2!21473 (_1!10746 (_ BitVec 64)) (_2!10746 V!48893)) )
))
(declare-datatypes ((List!28608 0))(
  ( (Nil!28605) (Cons!28604 (h!29813 tuple2!21472) (t!42144 List!28608)) )
))
(declare-datatypes ((ListLongMap!19213 0))(
  ( (ListLongMap!19214 (toList!9622 List!28608)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5930 (array!82787 array!82785 (_ BitVec 32) (_ BitVec 32) V!48893 V!48893 (_ BitVec 32) Int) ListLongMap!19213)

(assert (=> b!1269530 (= (getCurrentListMapNoExtraKeys!5930 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5930 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42216 0))(
  ( (Unit!42217) )
))
(declare-fun lt!574535 () Unit!42216)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1226 (array!82787 array!82785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48893 V!48893 V!48893 V!48893 (_ BitVec 32) Int) Unit!42216)

(assert (=> b!1269530 (= lt!574535 (lemmaNoChangeToArrayThenSameMapNoExtras!1226 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapNonEmpty!50743 () Bool)

(declare-fun tp!97000 () Bool)

(declare-fun e!723619 () Bool)

(assert (=> mapNonEmpty!50743 (= mapRes!50743 (and tp!97000 e!723619))))

(declare-fun mapValue!50743 () ValueCell!15534)

(declare-fun mapKey!50743 () (_ BitVec 32))

(declare-fun mapRest!50743 () (Array (_ BitVec 32) ValueCell!15534))

(assert (=> mapNonEmpty!50743 (= (arr!39925 _values!1134) (store mapRest!50743 mapKey!50743 mapValue!50743))))

(declare-fun res!844946 () Bool)

(assert (=> start!107122 (=> (not res!844946) (not e!723622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107122 (= res!844946 (validMask!0 mask!1730))))

(assert (=> start!107122 e!723622))

(declare-fun array_inv!30335 (array!82785) Bool)

(assert (=> start!107122 (and (array_inv!30335 _values!1134) e!723623)))

(assert (=> start!107122 true))

(declare-fun array_inv!30336 (array!82787) Bool)

(assert (=> start!107122 (array_inv!30336 _keys!1364)))

(declare-fun tp_is_empty!32775 () Bool)

(assert (=> start!107122 tp_is_empty!32775))

(assert (=> start!107122 tp!97001))

(declare-fun b!1269531 () Bool)

(assert (=> b!1269531 (= e!723621 tp_is_empty!32775)))

(declare-fun b!1269532 () Bool)

(declare-fun res!844942 () Bool)

(assert (=> b!1269532 (=> (not res!844942) (not e!723622))))

(assert (=> b!1269532 (= res!844942 (and (= (size!40462 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40463 _keys!1364) (size!40462 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269533 () Bool)

(declare-fun res!844943 () Bool)

(assert (=> b!1269533 (=> (not res!844943) (not e!723622))))

(declare-datatypes ((List!28609 0))(
  ( (Nil!28606) (Cons!28605 (h!29814 (_ BitVec 64)) (t!42145 List!28609)) )
))
(declare-fun arrayNoDuplicates!0 (array!82787 (_ BitVec 32) List!28609) Bool)

(assert (=> b!1269533 (= res!844943 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28606))))

(declare-fun b!1269534 () Bool)

(declare-fun res!844945 () Bool)

(assert (=> b!1269534 (=> (not res!844945) (not e!723622))))

(assert (=> b!1269534 (= res!844945 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40463 _keys!1364)) (bvslt from!1698 (size!40463 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50743 () Bool)

(assert (=> mapIsEmpty!50743 mapRes!50743))

(declare-fun b!1269535 () Bool)

(assert (=> b!1269535 (= e!723619 tp_is_empty!32775)))

(declare-fun b!1269536 () Bool)

(declare-fun res!844944 () Bool)

(assert (=> b!1269536 (=> (not res!844944) (not e!723622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82787 (_ BitVec 32)) Bool)

(assert (=> b!1269536 (= res!844944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(assert (= (and start!107122 res!844946) b!1269532))

(assert (= (and b!1269532 res!844942) b!1269536))

(assert (= (and b!1269536 res!844944) b!1269533))

(assert (= (and b!1269533 res!844943) b!1269534))

(assert (= (and b!1269534 res!844945) b!1269530))

(assert (= (and b!1269529 condMapEmpty!50743) mapIsEmpty!50743))

(assert (= (and b!1269529 (not condMapEmpty!50743)) mapNonEmpty!50743))

(get-info :version)

(assert (= (and mapNonEmpty!50743 ((_ is ValueCellFull!15534) mapValue!50743)) b!1269535))

(assert (= (and b!1269529 ((_ is ValueCellFull!15534) mapDefault!50743)) b!1269531))

(assert (= start!107122 b!1269529))

(declare-fun m!1168067 () Bool)

(assert (=> start!107122 m!1168067))

(declare-fun m!1168069 () Bool)

(assert (=> start!107122 m!1168069))

(declare-fun m!1168071 () Bool)

(assert (=> start!107122 m!1168071))

(declare-fun m!1168073 () Bool)

(assert (=> b!1269533 m!1168073))

(declare-fun m!1168075 () Bool)

(assert (=> b!1269536 m!1168075))

(declare-fun m!1168077 () Bool)

(assert (=> b!1269530 m!1168077))

(declare-fun m!1168079 () Bool)

(assert (=> b!1269530 m!1168079))

(declare-fun m!1168081 () Bool)

(assert (=> b!1269530 m!1168081))

(declare-fun m!1168083 () Bool)

(assert (=> mapNonEmpty!50743 m!1168083))

(check-sat (not b!1269536) b_and!45633 (not b!1269533) (not b!1269530) (not start!107122) tp_is_empty!32775 (not b_next!27591) (not mapNonEmpty!50743))
(check-sat b_and!45633 (not b_next!27591))
