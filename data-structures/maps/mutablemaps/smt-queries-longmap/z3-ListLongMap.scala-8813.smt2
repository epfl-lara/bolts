; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107140 () Bool)

(assert start!107140)

(declare-fun b_free!27609 () Bool)

(declare-fun b_next!27609 () Bool)

(assert (=> start!107140 (= b_free!27609 (not b_next!27609))))

(declare-fun tp!97054 () Bool)

(declare-fun b_and!45651 () Bool)

(assert (=> start!107140 (= tp!97054 b_and!45651)))

(declare-fun b!1269745 () Bool)

(declare-fun e!723756 () Bool)

(declare-fun e!723757 () Bool)

(declare-fun mapRes!50770 () Bool)

(assert (=> b!1269745 (= e!723756 (and e!723757 mapRes!50770))))

(declare-fun condMapEmpty!50770 () Bool)

(declare-datatypes ((V!48917 0))(
  ( (V!48918 (val!16471 Int)) )
))
(declare-datatypes ((ValueCell!15543 0))(
  ( (ValueCellFull!15543 (v!19106 V!48917)) (EmptyCell!15543) )
))
(declare-datatypes ((array!82819 0))(
  ( (array!82820 (arr!39942 (Array (_ BitVec 32) ValueCell!15543)) (size!40479 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82819)

(declare-fun mapDefault!50770 () ValueCell!15543)

(assert (=> b!1269745 (= condMapEmpty!50770 (= (arr!39942 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15543)) mapDefault!50770)))))

(declare-fun b!1269746 () Bool)

(declare-fun res!845080 () Bool)

(declare-fun e!723754 () Bool)

(assert (=> b!1269746 (=> (not res!845080) (not e!723754))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82821 0))(
  ( (array!82822 (arr!39943 (Array (_ BitVec 32) (_ BitVec 64))) (size!40480 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82821)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1269746 (= res!845080 (and (= (size!40479 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40480 _keys!1364) (size!40479 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!50770 () Bool)

(declare-fun tp!97055 () Bool)

(declare-fun e!723758 () Bool)

(assert (=> mapNonEmpty!50770 (= mapRes!50770 (and tp!97055 e!723758))))

(declare-fun mapRest!50770 () (Array (_ BitVec 32) ValueCell!15543))

(declare-fun mapValue!50770 () ValueCell!15543)

(declare-fun mapKey!50770 () (_ BitVec 32))

(assert (=> mapNonEmpty!50770 (= (arr!39942 _values!1134) (store mapRest!50770 mapKey!50770 mapValue!50770))))

(declare-fun b!1269747 () Bool)

(declare-fun tp_is_empty!32793 () Bool)

(assert (=> b!1269747 (= e!723757 tp_is_empty!32793)))

(declare-fun b!1269748 () Bool)

(declare-fun res!845079 () Bool)

(assert (=> b!1269748 (=> (not res!845079) (not e!723754))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269748 (= res!845079 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40480 _keys!1364)) (bvslt from!1698 (size!40480 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269749 () Bool)

(declare-fun res!845077 () Bool)

(assert (=> b!1269749 (=> (not res!845077) (not e!723754))))

(declare-datatypes ((List!28618 0))(
  ( (Nil!28615) (Cons!28614 (h!29823 (_ BitVec 64)) (t!42154 List!28618)) )
))
(declare-fun arrayNoDuplicates!0 (array!82821 (_ BitVec 32) List!28618) Bool)

(assert (=> b!1269749 (= res!845077 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28615))))

(declare-fun res!845081 () Bool)

(assert (=> start!107140 (=> (not res!845081) (not e!723754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107140 (= res!845081 (validMask!0 mask!1730))))

(assert (=> start!107140 e!723754))

(declare-fun array_inv!30343 (array!82819) Bool)

(assert (=> start!107140 (and (array_inv!30343 _values!1134) e!723756)))

(assert (=> start!107140 true))

(declare-fun array_inv!30344 (array!82821) Bool)

(assert (=> start!107140 (array_inv!30344 _keys!1364)))

(assert (=> start!107140 tp_is_empty!32793))

(assert (=> start!107140 tp!97054))

(declare-fun b!1269750 () Bool)

(declare-fun res!845078 () Bool)

(assert (=> b!1269750 (=> (not res!845078) (not e!723754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82821 (_ BitVec 32)) Bool)

(assert (=> b!1269750 (= res!845078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269751 () Bool)

(assert (=> b!1269751 (= e!723754 (not true))))

(declare-fun minValueAfter!52 () V!48917)

(declare-fun minValueBefore!52 () V!48917)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48917)

(declare-fun zeroValueBefore!52 () V!48917)

(declare-datatypes ((tuple2!21482 0))(
  ( (tuple2!21483 (_1!10751 (_ BitVec 64)) (_2!10751 V!48917)) )
))
(declare-datatypes ((List!28619 0))(
  ( (Nil!28616) (Cons!28615 (h!29824 tuple2!21482) (t!42155 List!28619)) )
))
(declare-datatypes ((ListLongMap!19223 0))(
  ( (ListLongMap!19224 (toList!9627 List!28619)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5935 (array!82821 array!82819 (_ BitVec 32) (_ BitVec 32) V!48917 V!48917 (_ BitVec 32) Int) ListLongMap!19223)

(assert (=> b!1269751 (= (getCurrentListMapNoExtraKeys!5935 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5935 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42226 0))(
  ( (Unit!42227) )
))
(declare-fun lt!574562 () Unit!42226)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1231 (array!82821 array!82819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48917 V!48917 V!48917 V!48917 (_ BitVec 32) Int) Unit!42226)

(assert (=> b!1269751 (= lt!574562 (lemmaNoChangeToArrayThenSameMapNoExtras!1231 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapIsEmpty!50770 () Bool)

(assert (=> mapIsEmpty!50770 mapRes!50770))

(declare-fun b!1269752 () Bool)

(assert (=> b!1269752 (= e!723758 tp_is_empty!32793)))

(assert (= (and start!107140 res!845081) b!1269746))

(assert (= (and b!1269746 res!845080) b!1269750))

(assert (= (and b!1269750 res!845078) b!1269749))

(assert (= (and b!1269749 res!845077) b!1269748))

(assert (= (and b!1269748 res!845079) b!1269751))

(assert (= (and b!1269745 condMapEmpty!50770) mapIsEmpty!50770))

(assert (= (and b!1269745 (not condMapEmpty!50770)) mapNonEmpty!50770))

(get-info :version)

(assert (= (and mapNonEmpty!50770 ((_ is ValueCellFull!15543) mapValue!50770)) b!1269752))

(assert (= (and b!1269745 ((_ is ValueCellFull!15543) mapDefault!50770)) b!1269747))

(assert (= start!107140 b!1269745))

(declare-fun m!1168229 () Bool)

(assert (=> b!1269749 m!1168229))

(declare-fun m!1168231 () Bool)

(assert (=> start!107140 m!1168231))

(declare-fun m!1168233 () Bool)

(assert (=> start!107140 m!1168233))

(declare-fun m!1168235 () Bool)

(assert (=> start!107140 m!1168235))

(declare-fun m!1168237 () Bool)

(assert (=> b!1269751 m!1168237))

(declare-fun m!1168239 () Bool)

(assert (=> b!1269751 m!1168239))

(declare-fun m!1168241 () Bool)

(assert (=> b!1269751 m!1168241))

(declare-fun m!1168243 () Bool)

(assert (=> mapNonEmpty!50770 m!1168243))

(declare-fun m!1168245 () Bool)

(assert (=> b!1269750 m!1168245))

(check-sat (not b_next!27609) tp_is_empty!32793 (not b!1269749) (not mapNonEmpty!50770) b_and!45651 (not b!1269750) (not b!1269751) (not start!107140))
(check-sat b_and!45651 (not b_next!27609))
