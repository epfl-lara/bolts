; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107110 () Bool)

(assert start!107110)

(declare-fun b_free!27579 () Bool)

(declare-fun b_next!27579 () Bool)

(assert (=> start!107110 (= b_free!27579 (not b_next!27579))))

(declare-fun tp!96965 () Bool)

(declare-fun b_and!45621 () Bool)

(assert (=> start!107110 (= tp!96965 b_and!45621)))

(declare-fun b!1269385 () Bool)

(declare-fun res!844855 () Bool)

(declare-fun e!723532 () Bool)

(assert (=> b!1269385 (=> (not res!844855) (not e!723532))))

(declare-datatypes ((V!48877 0))(
  ( (V!48878 (val!16456 Int)) )
))
(declare-datatypes ((ValueCell!15528 0))(
  ( (ValueCellFull!15528 (v!19091 V!48877)) (EmptyCell!15528) )
))
(declare-datatypes ((array!82761 0))(
  ( (array!82762 (arr!39913 (Array (_ BitVec 32) ValueCell!15528)) (size!40450 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82761)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82763 0))(
  ( (array!82764 (arr!39914 (Array (_ BitVec 32) (_ BitVec 64))) (size!40451 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82763)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269385 (= res!844855 (and (= (size!40450 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40451 _keys!1364) (size!40450 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269386 () Bool)

(declare-fun res!844852 () Bool)

(assert (=> b!1269386 (=> (not res!844852) (not e!723532))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269386 (= res!844852 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40451 _keys!1364)) (bvslt from!1698 (size!40451 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269387 () Bool)

(declare-fun e!723530 () Bool)

(declare-fun e!723531 () Bool)

(declare-fun mapRes!50725 () Bool)

(assert (=> b!1269387 (= e!723530 (and e!723531 mapRes!50725))))

(declare-fun condMapEmpty!50725 () Bool)

(declare-fun mapDefault!50725 () ValueCell!15528)

(assert (=> b!1269387 (= condMapEmpty!50725 (= (arr!39913 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15528)) mapDefault!50725)))))

(declare-fun b!1269388 () Bool)

(declare-fun e!723529 () Bool)

(declare-fun tp_is_empty!32763 () Bool)

(assert (=> b!1269388 (= e!723529 tp_is_empty!32763)))

(declare-fun b!1269389 () Bool)

(assert (=> b!1269389 (= e!723531 tp_is_empty!32763)))

(declare-fun b!1269390 () Bool)

(assert (=> b!1269390 (= e!723532 (not true))))

(declare-fun minValueAfter!52 () V!48877)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48877)

(declare-fun zeroValueBefore!52 () V!48877)

(declare-fun minValueBefore!52 () V!48877)

(declare-datatypes ((tuple2!21464 0))(
  ( (tuple2!21465 (_1!10742 (_ BitVec 64)) (_2!10742 V!48877)) )
))
(declare-datatypes ((List!28601 0))(
  ( (Nil!28598) (Cons!28597 (h!29806 tuple2!21464) (t!42137 List!28601)) )
))
(declare-datatypes ((ListLongMap!19205 0))(
  ( (ListLongMap!19206 (toList!9618 List!28601)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5926 (array!82763 array!82761 (_ BitVec 32) (_ BitVec 32) V!48877 V!48877 (_ BitVec 32) Int) ListLongMap!19205)

(assert (=> b!1269390 (= (getCurrentListMapNoExtraKeys!5926 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5926 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42208 0))(
  ( (Unit!42209) )
))
(declare-fun lt!574517 () Unit!42208)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1222 (array!82763 array!82761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48877 V!48877 V!48877 V!48877 (_ BitVec 32) Int) Unit!42208)

(assert (=> b!1269390 (= lt!574517 (lemmaNoChangeToArrayThenSameMapNoExtras!1222 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapNonEmpty!50725 () Bool)

(declare-fun tp!96964 () Bool)

(assert (=> mapNonEmpty!50725 (= mapRes!50725 (and tp!96964 e!723529))))

(declare-fun mapKey!50725 () (_ BitVec 32))

(declare-fun mapValue!50725 () ValueCell!15528)

(declare-fun mapRest!50725 () (Array (_ BitVec 32) ValueCell!15528))

(assert (=> mapNonEmpty!50725 (= (arr!39913 _values!1134) (store mapRest!50725 mapKey!50725 mapValue!50725))))

(declare-fun b!1269391 () Bool)

(declare-fun res!844853 () Bool)

(assert (=> b!1269391 (=> (not res!844853) (not e!723532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82763 (_ BitVec 32)) Bool)

(assert (=> b!1269391 (= res!844853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844856 () Bool)

(assert (=> start!107110 (=> (not res!844856) (not e!723532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107110 (= res!844856 (validMask!0 mask!1730))))

(assert (=> start!107110 e!723532))

(declare-fun array_inv!30327 (array!82761) Bool)

(assert (=> start!107110 (and (array_inv!30327 _values!1134) e!723530)))

(assert (=> start!107110 true))

(declare-fun array_inv!30328 (array!82763) Bool)

(assert (=> start!107110 (array_inv!30328 _keys!1364)))

(assert (=> start!107110 tp_is_empty!32763))

(assert (=> start!107110 tp!96965))

(declare-fun b!1269392 () Bool)

(declare-fun res!844854 () Bool)

(assert (=> b!1269392 (=> (not res!844854) (not e!723532))))

(declare-datatypes ((List!28602 0))(
  ( (Nil!28599) (Cons!28598 (h!29807 (_ BitVec 64)) (t!42138 List!28602)) )
))
(declare-fun arrayNoDuplicates!0 (array!82763 (_ BitVec 32) List!28602) Bool)

(assert (=> b!1269392 (= res!844854 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28599))))

(declare-fun mapIsEmpty!50725 () Bool)

(assert (=> mapIsEmpty!50725 mapRes!50725))

(assert (= (and start!107110 res!844856) b!1269385))

(assert (= (and b!1269385 res!844855) b!1269391))

(assert (= (and b!1269391 res!844853) b!1269392))

(assert (= (and b!1269392 res!844854) b!1269386))

(assert (= (and b!1269386 res!844852) b!1269390))

(assert (= (and b!1269387 condMapEmpty!50725) mapIsEmpty!50725))

(assert (= (and b!1269387 (not condMapEmpty!50725)) mapNonEmpty!50725))

(get-info :version)

(assert (= (and mapNonEmpty!50725 ((_ is ValueCellFull!15528) mapValue!50725)) b!1269388))

(assert (= (and b!1269387 ((_ is ValueCellFull!15528) mapDefault!50725)) b!1269389))

(assert (= start!107110 b!1269387))

(declare-fun m!1167959 () Bool)

(assert (=> b!1269392 m!1167959))

(declare-fun m!1167961 () Bool)

(assert (=> start!107110 m!1167961))

(declare-fun m!1167963 () Bool)

(assert (=> start!107110 m!1167963))

(declare-fun m!1167965 () Bool)

(assert (=> start!107110 m!1167965))

(declare-fun m!1167967 () Bool)

(assert (=> b!1269390 m!1167967))

(declare-fun m!1167969 () Bool)

(assert (=> b!1269390 m!1167969))

(declare-fun m!1167971 () Bool)

(assert (=> b!1269390 m!1167971))

(declare-fun m!1167973 () Bool)

(assert (=> mapNonEmpty!50725 m!1167973))

(declare-fun m!1167975 () Bool)

(assert (=> b!1269391 m!1167975))

(check-sat tp_is_empty!32763 (not b_next!27579) (not mapNonEmpty!50725) (not start!107110) (not b!1269391) (not b!1269392) b_and!45621 (not b!1269390))
(check-sat b_and!45621 (not b_next!27579))
