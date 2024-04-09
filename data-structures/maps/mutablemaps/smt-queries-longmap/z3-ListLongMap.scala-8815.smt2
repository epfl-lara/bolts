; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107152 () Bool)

(assert start!107152)

(declare-fun b_free!27621 () Bool)

(declare-fun b_next!27621 () Bool)

(assert (=> start!107152 (= b_free!27621 (not b_next!27621))))

(declare-fun tp!97091 () Bool)

(declare-fun b_and!45663 () Bool)

(assert (=> start!107152 (= tp!97091 b_and!45663)))

(declare-fun b!1269889 () Bool)

(declare-fun e!723847 () Bool)

(assert (=> b!1269889 (= e!723847 (not true))))

(declare-datatypes ((V!48933 0))(
  ( (V!48934 (val!16477 Int)) )
))
(declare-datatypes ((ValueCell!15549 0))(
  ( (ValueCellFull!15549 (v!19112 V!48933)) (EmptyCell!15549) )
))
(declare-datatypes ((array!82843 0))(
  ( (array!82844 (arr!39954 (Array (_ BitVec 32) ValueCell!15549)) (size!40491 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82843)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82845 0))(
  ( (array!82846 (arr!39955 (Array (_ BitVec 32) (_ BitVec 64))) (size!40492 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82845)

(declare-fun minValueAfter!52 () V!48933)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48933)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48933)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun zeroValueBefore!52 () V!48933)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21490 0))(
  ( (tuple2!21491 (_1!10755 (_ BitVec 64)) (_2!10755 V!48933)) )
))
(declare-datatypes ((List!28626 0))(
  ( (Nil!28623) (Cons!28622 (h!29831 tuple2!21490) (t!42162 List!28626)) )
))
(declare-datatypes ((ListLongMap!19231 0))(
  ( (ListLongMap!19232 (toList!9631 List!28626)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5939 (array!82845 array!82843 (_ BitVec 32) (_ BitVec 32) V!48933 V!48933 (_ BitVec 32) Int) ListLongMap!19231)

(assert (=> b!1269889 (= (getCurrentListMapNoExtraKeys!5939 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5939 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42234 0))(
  ( (Unit!42235) )
))
(declare-fun lt!574580 () Unit!42234)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1235 (array!82845 array!82843 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48933 V!48933 V!48933 V!48933 (_ BitVec 32) Int) Unit!42234)

(assert (=> b!1269889 (= lt!574580 (lemmaNoChangeToArrayThenSameMapNoExtras!1235 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun res!845167 () Bool)

(assert (=> start!107152 (=> (not res!845167) (not e!723847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107152 (= res!845167 (validMask!0 mask!1730))))

(assert (=> start!107152 e!723847))

(declare-fun e!723844 () Bool)

(declare-fun array_inv!30349 (array!82843) Bool)

(assert (=> start!107152 (and (array_inv!30349 _values!1134) e!723844)))

(assert (=> start!107152 true))

(declare-fun array_inv!30350 (array!82845) Bool)

(assert (=> start!107152 (array_inv!30350 _keys!1364)))

(declare-fun tp_is_empty!32805 () Bool)

(assert (=> start!107152 tp_is_empty!32805))

(assert (=> start!107152 tp!97091))

(declare-fun b!1269890 () Bool)

(declare-fun e!723845 () Bool)

(assert (=> b!1269890 (= e!723845 tp_is_empty!32805)))

(declare-fun b!1269891 () Bool)

(declare-fun mapRes!50788 () Bool)

(assert (=> b!1269891 (= e!723844 (and e!723845 mapRes!50788))))

(declare-fun condMapEmpty!50788 () Bool)

(declare-fun mapDefault!50788 () ValueCell!15549)

(assert (=> b!1269891 (= condMapEmpty!50788 (= (arr!39954 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15549)) mapDefault!50788)))))

(declare-fun b!1269892 () Bool)

(declare-fun res!845169 () Bool)

(assert (=> b!1269892 (=> (not res!845169) (not e!723847))))

(assert (=> b!1269892 (= res!845169 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40492 _keys!1364)) (bvslt from!1698 (size!40492 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269893 () Bool)

(declare-fun res!845171 () Bool)

(assert (=> b!1269893 (=> (not res!845171) (not e!723847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82845 (_ BitVec 32)) Bool)

(assert (=> b!1269893 (= res!845171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50788 () Bool)

(assert (=> mapIsEmpty!50788 mapRes!50788))

(declare-fun b!1269894 () Bool)

(declare-fun res!845170 () Bool)

(assert (=> b!1269894 (=> (not res!845170) (not e!723847))))

(assert (=> b!1269894 (= res!845170 (and (= (size!40491 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40492 _keys!1364) (size!40491 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269895 () Bool)

(declare-fun e!723846 () Bool)

(assert (=> b!1269895 (= e!723846 tp_is_empty!32805)))

(declare-fun b!1269896 () Bool)

(declare-fun res!845168 () Bool)

(assert (=> b!1269896 (=> (not res!845168) (not e!723847))))

(declare-datatypes ((List!28627 0))(
  ( (Nil!28624) (Cons!28623 (h!29832 (_ BitVec 64)) (t!42163 List!28627)) )
))
(declare-fun arrayNoDuplicates!0 (array!82845 (_ BitVec 32) List!28627) Bool)

(assert (=> b!1269896 (= res!845168 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28624))))

(declare-fun mapNonEmpty!50788 () Bool)

(declare-fun tp!97090 () Bool)

(assert (=> mapNonEmpty!50788 (= mapRes!50788 (and tp!97090 e!723846))))

(declare-fun mapValue!50788 () ValueCell!15549)

(declare-fun mapRest!50788 () (Array (_ BitVec 32) ValueCell!15549))

(declare-fun mapKey!50788 () (_ BitVec 32))

(assert (=> mapNonEmpty!50788 (= (arr!39954 _values!1134) (store mapRest!50788 mapKey!50788 mapValue!50788))))

(assert (= (and start!107152 res!845167) b!1269894))

(assert (= (and b!1269894 res!845170) b!1269893))

(assert (= (and b!1269893 res!845171) b!1269896))

(assert (= (and b!1269896 res!845168) b!1269892))

(assert (= (and b!1269892 res!845169) b!1269889))

(assert (= (and b!1269891 condMapEmpty!50788) mapIsEmpty!50788))

(assert (= (and b!1269891 (not condMapEmpty!50788)) mapNonEmpty!50788))

(get-info :version)

(assert (= (and mapNonEmpty!50788 ((_ is ValueCellFull!15549) mapValue!50788)) b!1269895))

(assert (= (and b!1269891 ((_ is ValueCellFull!15549) mapDefault!50788)) b!1269890))

(assert (= start!107152 b!1269891))

(declare-fun m!1168337 () Bool)

(assert (=> start!107152 m!1168337))

(declare-fun m!1168339 () Bool)

(assert (=> start!107152 m!1168339))

(declare-fun m!1168341 () Bool)

(assert (=> start!107152 m!1168341))

(declare-fun m!1168343 () Bool)

(assert (=> b!1269889 m!1168343))

(declare-fun m!1168345 () Bool)

(assert (=> b!1269889 m!1168345))

(declare-fun m!1168347 () Bool)

(assert (=> b!1269889 m!1168347))

(declare-fun m!1168349 () Bool)

(assert (=> mapNonEmpty!50788 m!1168349))

(declare-fun m!1168351 () Bool)

(assert (=> b!1269893 m!1168351))

(declare-fun m!1168353 () Bool)

(assert (=> b!1269896 m!1168353))

(check-sat (not b!1269893) (not b!1269896) (not b!1269889) (not mapNonEmpty!50788) b_and!45663 (not b_next!27621) tp_is_empty!32805 (not start!107152))
(check-sat b_and!45663 (not b_next!27621))
