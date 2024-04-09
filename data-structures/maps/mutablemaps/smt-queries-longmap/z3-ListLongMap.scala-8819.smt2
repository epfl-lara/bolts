; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107176 () Bool)

(assert start!107176)

(declare-fun b_free!27645 () Bool)

(declare-fun b_next!27645 () Bool)

(assert (=> start!107176 (= b_free!27645 (not b_next!27645))))

(declare-fun tp!97163 () Bool)

(declare-fun b_and!45687 () Bool)

(assert (=> start!107176 (= tp!97163 b_and!45687)))

(declare-fun mapIsEmpty!50824 () Bool)

(declare-fun mapRes!50824 () Bool)

(assert (=> mapIsEmpty!50824 mapRes!50824))

(declare-fun b!1270177 () Bool)

(declare-fun res!845351 () Bool)

(declare-fun e!724027 () Bool)

(assert (=> b!1270177 (=> (not res!845351) (not e!724027))))

(declare-datatypes ((V!48965 0))(
  ( (V!48966 (val!16489 Int)) )
))
(declare-datatypes ((ValueCell!15561 0))(
  ( (ValueCellFull!15561 (v!19124 V!48965)) (EmptyCell!15561) )
))
(declare-datatypes ((array!82889 0))(
  ( (array!82890 (arr!39977 (Array (_ BitVec 32) ValueCell!15561)) (size!40514 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82889)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82891 0))(
  ( (array!82892 (arr!39978 (Array (_ BitVec 32) (_ BitVec 64))) (size!40515 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82891)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270177 (= res!845351 (and (= (size!40514 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40515 _keys!1364) (size!40514 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270178 () Bool)

(assert (=> b!1270178 (= e!724027 (not true))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!48965)

(declare-fun minValueBefore!52 () V!48965)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48965)

(declare-fun zeroValueBefore!52 () V!48965)

(declare-datatypes ((tuple2!21508 0))(
  ( (tuple2!21509 (_1!10764 (_ BitVec 64)) (_2!10764 V!48965)) )
))
(declare-datatypes ((List!28644 0))(
  ( (Nil!28641) (Cons!28640 (h!29849 tuple2!21508) (t!42180 List!28644)) )
))
(declare-datatypes ((ListLongMap!19249 0))(
  ( (ListLongMap!19250 (toList!9640 List!28644)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5948 (array!82891 array!82889 (_ BitVec 32) (_ BitVec 32) V!48965 V!48965 (_ BitVec 32) Int) ListLongMap!19249)

(assert (=> b!1270178 (= (getCurrentListMapNoExtraKeys!5948 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5948 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42252 0))(
  ( (Unit!42253) )
))
(declare-fun lt!574616 () Unit!42252)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1244 (array!82891 array!82889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48965 V!48965 V!48965 V!48965 (_ BitVec 32) Int) Unit!42252)

(assert (=> b!1270178 (= lt!574616 (lemmaNoChangeToArrayThenSameMapNoExtras!1244 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1270179 () Bool)

(declare-fun res!845348 () Bool)

(assert (=> b!1270179 (=> (not res!845348) (not e!724027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82891 (_ BitVec 32)) Bool)

(assert (=> b!1270179 (= res!845348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270180 () Bool)

(declare-fun e!724026 () Bool)

(declare-fun e!724025 () Bool)

(assert (=> b!1270180 (= e!724026 (and e!724025 mapRes!50824))))

(declare-fun condMapEmpty!50824 () Bool)

(declare-fun mapDefault!50824 () ValueCell!15561)

(assert (=> b!1270180 (= condMapEmpty!50824 (= (arr!39977 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15561)) mapDefault!50824)))))

(declare-fun b!1270181 () Bool)

(declare-fun e!724024 () Bool)

(declare-fun tp_is_empty!32829 () Bool)

(assert (=> b!1270181 (= e!724024 tp_is_empty!32829)))

(declare-fun mapNonEmpty!50824 () Bool)

(declare-fun tp!97162 () Bool)

(assert (=> mapNonEmpty!50824 (= mapRes!50824 (and tp!97162 e!724024))))

(declare-fun mapRest!50824 () (Array (_ BitVec 32) ValueCell!15561))

(declare-fun mapKey!50824 () (_ BitVec 32))

(declare-fun mapValue!50824 () ValueCell!15561)

(assert (=> mapNonEmpty!50824 (= (arr!39977 _values!1134) (store mapRest!50824 mapKey!50824 mapValue!50824))))

(declare-fun b!1270182 () Bool)

(declare-fun res!845349 () Bool)

(assert (=> b!1270182 (=> (not res!845349) (not e!724027))))

(assert (=> b!1270182 (= res!845349 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40515 _keys!1364)) (bvslt from!1698 (size!40515 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1270183 () Bool)

(assert (=> b!1270183 (= e!724025 tp_is_empty!32829)))

(declare-fun b!1270184 () Bool)

(declare-fun res!845350 () Bool)

(assert (=> b!1270184 (=> (not res!845350) (not e!724027))))

(declare-datatypes ((List!28645 0))(
  ( (Nil!28642) (Cons!28641 (h!29850 (_ BitVec 64)) (t!42181 List!28645)) )
))
(declare-fun arrayNoDuplicates!0 (array!82891 (_ BitVec 32) List!28645) Bool)

(assert (=> b!1270184 (= res!845350 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28642))))

(declare-fun res!845347 () Bool)

(assert (=> start!107176 (=> (not res!845347) (not e!724027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107176 (= res!845347 (validMask!0 mask!1730))))

(assert (=> start!107176 e!724027))

(declare-fun array_inv!30365 (array!82889) Bool)

(assert (=> start!107176 (and (array_inv!30365 _values!1134) e!724026)))

(assert (=> start!107176 true))

(declare-fun array_inv!30366 (array!82891) Bool)

(assert (=> start!107176 (array_inv!30366 _keys!1364)))

(assert (=> start!107176 tp_is_empty!32829))

(assert (=> start!107176 tp!97163))

(assert (= (and start!107176 res!845347) b!1270177))

(assert (= (and b!1270177 res!845351) b!1270179))

(assert (= (and b!1270179 res!845348) b!1270184))

(assert (= (and b!1270184 res!845350) b!1270182))

(assert (= (and b!1270182 res!845349) b!1270178))

(assert (= (and b!1270180 condMapEmpty!50824) mapIsEmpty!50824))

(assert (= (and b!1270180 (not condMapEmpty!50824)) mapNonEmpty!50824))

(get-info :version)

(assert (= (and mapNonEmpty!50824 ((_ is ValueCellFull!15561) mapValue!50824)) b!1270181))

(assert (= (and b!1270180 ((_ is ValueCellFull!15561) mapDefault!50824)) b!1270183))

(assert (= start!107176 b!1270180))

(declare-fun m!1168553 () Bool)

(assert (=> b!1270178 m!1168553))

(declare-fun m!1168555 () Bool)

(assert (=> b!1270178 m!1168555))

(declare-fun m!1168557 () Bool)

(assert (=> b!1270178 m!1168557))

(declare-fun m!1168559 () Bool)

(assert (=> mapNonEmpty!50824 m!1168559))

(declare-fun m!1168561 () Bool)

(assert (=> b!1270184 m!1168561))

(declare-fun m!1168563 () Bool)

(assert (=> start!107176 m!1168563))

(declare-fun m!1168565 () Bool)

(assert (=> start!107176 m!1168565))

(declare-fun m!1168567 () Bool)

(assert (=> start!107176 m!1168567))

(declare-fun m!1168569 () Bool)

(assert (=> b!1270179 m!1168569))

(check-sat (not mapNonEmpty!50824) (not b_next!27645) (not b!1270178) tp_is_empty!32829 b_and!45687 (not b!1270184) (not start!107176) (not b!1270179))
(check-sat b_and!45687 (not b_next!27645))
