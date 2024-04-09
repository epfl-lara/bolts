; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107158 () Bool)

(assert start!107158)

(declare-fun b_free!27627 () Bool)

(declare-fun b_next!27627 () Bool)

(assert (=> start!107158 (= b_free!27627 (not b_next!27627))))

(declare-fun tp!97109 () Bool)

(declare-fun b_and!45669 () Bool)

(assert (=> start!107158 (= tp!97109 b_and!45669)))

(declare-fun b!1269961 () Bool)

(declare-fun e!723891 () Bool)

(declare-fun tp_is_empty!32811 () Bool)

(assert (=> b!1269961 (= e!723891 tp_is_empty!32811)))

(declare-fun b!1269962 () Bool)

(declare-fun res!845212 () Bool)

(declare-fun e!723893 () Bool)

(assert (=> b!1269962 (=> (not res!845212) (not e!723893))))

(declare-datatypes ((array!82855 0))(
  ( (array!82856 (arr!39960 (Array (_ BitVec 32) (_ BitVec 64))) (size!40497 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82855)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82855 (_ BitVec 32)) Bool)

(assert (=> b!1269962 (= res!845212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269963 () Bool)

(assert (=> b!1269963 (= e!723893 (not true))))

(declare-datatypes ((V!48941 0))(
  ( (V!48942 (val!16480 Int)) )
))
(declare-datatypes ((ValueCell!15552 0))(
  ( (ValueCellFull!15552 (v!19115 V!48941)) (EmptyCell!15552) )
))
(declare-datatypes ((array!82857 0))(
  ( (array!82858 (arr!39961 (Array (_ BitVec 32) ValueCell!15552)) (size!40498 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82857)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48941)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48941)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48941)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun zeroValueBefore!52 () V!48941)

(declare-datatypes ((tuple2!21496 0))(
  ( (tuple2!21497 (_1!10758 (_ BitVec 64)) (_2!10758 V!48941)) )
))
(declare-datatypes ((List!28632 0))(
  ( (Nil!28629) (Cons!28628 (h!29837 tuple2!21496) (t!42168 List!28632)) )
))
(declare-datatypes ((ListLongMap!19237 0))(
  ( (ListLongMap!19238 (toList!9634 List!28632)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5942 (array!82855 array!82857 (_ BitVec 32) (_ BitVec 32) V!48941 V!48941 (_ BitVec 32) Int) ListLongMap!19237)

(assert (=> b!1269963 (= (getCurrentListMapNoExtraKeys!5942 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5942 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42240 0))(
  ( (Unit!42241) )
))
(declare-fun lt!574589 () Unit!42240)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1238 (array!82855 array!82857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48941 V!48941 V!48941 V!48941 (_ BitVec 32) Int) Unit!42240)

(assert (=> b!1269963 (= lt!574589 (lemmaNoChangeToArrayThenSameMapNoExtras!1238 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapNonEmpty!50797 () Bool)

(declare-fun mapRes!50797 () Bool)

(declare-fun tp!97108 () Bool)

(assert (=> mapNonEmpty!50797 (= mapRes!50797 (and tp!97108 e!723891))))

(declare-fun mapRest!50797 () (Array (_ BitVec 32) ValueCell!15552))

(declare-fun mapKey!50797 () (_ BitVec 32))

(declare-fun mapValue!50797 () ValueCell!15552)

(assert (=> mapNonEmpty!50797 (= (arr!39961 _values!1134) (store mapRest!50797 mapKey!50797 mapValue!50797))))

(declare-fun b!1269964 () Bool)

(declare-fun res!845215 () Bool)

(assert (=> b!1269964 (=> (not res!845215) (not e!723893))))

(assert (=> b!1269964 (= res!845215 (and (= (size!40498 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40497 _keys!1364) (size!40498 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269965 () Bool)

(declare-fun e!723890 () Bool)

(assert (=> b!1269965 (= e!723890 tp_is_empty!32811)))

(declare-fun res!845216 () Bool)

(assert (=> start!107158 (=> (not res!845216) (not e!723893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107158 (= res!845216 (validMask!0 mask!1730))))

(assert (=> start!107158 e!723893))

(declare-fun e!723892 () Bool)

(declare-fun array_inv!30355 (array!82857) Bool)

(assert (=> start!107158 (and (array_inv!30355 _values!1134) e!723892)))

(assert (=> start!107158 true))

(declare-fun array_inv!30356 (array!82855) Bool)

(assert (=> start!107158 (array_inv!30356 _keys!1364)))

(assert (=> start!107158 tp_is_empty!32811))

(assert (=> start!107158 tp!97109))

(declare-fun b!1269966 () Bool)

(declare-fun res!845213 () Bool)

(assert (=> b!1269966 (=> (not res!845213) (not e!723893))))

(assert (=> b!1269966 (= res!845213 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40497 _keys!1364)) (bvslt from!1698 (size!40497 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269967 () Bool)

(assert (=> b!1269967 (= e!723892 (and e!723890 mapRes!50797))))

(declare-fun condMapEmpty!50797 () Bool)

(declare-fun mapDefault!50797 () ValueCell!15552)

(assert (=> b!1269967 (= condMapEmpty!50797 (= (arr!39961 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15552)) mapDefault!50797)))))

(declare-fun mapIsEmpty!50797 () Bool)

(assert (=> mapIsEmpty!50797 mapRes!50797))

(declare-fun b!1269968 () Bool)

(declare-fun res!845214 () Bool)

(assert (=> b!1269968 (=> (not res!845214) (not e!723893))))

(declare-datatypes ((List!28633 0))(
  ( (Nil!28630) (Cons!28629 (h!29838 (_ BitVec 64)) (t!42169 List!28633)) )
))
(declare-fun arrayNoDuplicates!0 (array!82855 (_ BitVec 32) List!28633) Bool)

(assert (=> b!1269968 (= res!845214 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28630))))

(assert (= (and start!107158 res!845216) b!1269964))

(assert (= (and b!1269964 res!845215) b!1269962))

(assert (= (and b!1269962 res!845212) b!1269968))

(assert (= (and b!1269968 res!845214) b!1269966))

(assert (= (and b!1269966 res!845213) b!1269963))

(assert (= (and b!1269967 condMapEmpty!50797) mapIsEmpty!50797))

(assert (= (and b!1269967 (not condMapEmpty!50797)) mapNonEmpty!50797))

(get-info :version)

(assert (= (and mapNonEmpty!50797 ((_ is ValueCellFull!15552) mapValue!50797)) b!1269961))

(assert (= (and b!1269967 ((_ is ValueCellFull!15552) mapDefault!50797)) b!1269965))

(assert (= start!107158 b!1269967))

(declare-fun m!1168391 () Bool)

(assert (=> b!1269962 m!1168391))

(declare-fun m!1168393 () Bool)

(assert (=> start!107158 m!1168393))

(declare-fun m!1168395 () Bool)

(assert (=> start!107158 m!1168395))

(declare-fun m!1168397 () Bool)

(assert (=> start!107158 m!1168397))

(declare-fun m!1168399 () Bool)

(assert (=> mapNonEmpty!50797 m!1168399))

(declare-fun m!1168401 () Bool)

(assert (=> b!1269968 m!1168401))

(declare-fun m!1168403 () Bool)

(assert (=> b!1269963 m!1168403))

(declare-fun m!1168405 () Bool)

(assert (=> b!1269963 m!1168405))

(declare-fun m!1168407 () Bool)

(assert (=> b!1269963 m!1168407))

(check-sat b_and!45669 (not b_next!27627) (not b!1269968) (not start!107158) (not b!1269962) tp_is_empty!32811 (not mapNonEmpty!50797) (not b!1269963))
(check-sat b_and!45669 (not b_next!27627))
