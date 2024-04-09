; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107170 () Bool)

(assert start!107170)

(declare-fun b_free!27639 () Bool)

(declare-fun b_next!27639 () Bool)

(assert (=> start!107170 (= b_free!27639 (not b_next!27639))))

(declare-fun tp!97144 () Bool)

(declare-fun b_and!45681 () Bool)

(assert (=> start!107170 (= tp!97144 b_and!45681)))

(declare-fun b!1270105 () Bool)

(declare-fun e!723982 () Bool)

(assert (=> b!1270105 (= e!723982 (not true))))

(declare-datatypes ((V!48957 0))(
  ( (V!48958 (val!16486 Int)) )
))
(declare-datatypes ((ValueCell!15558 0))(
  ( (ValueCellFull!15558 (v!19121 V!48957)) (EmptyCell!15558) )
))
(declare-datatypes ((array!82879 0))(
  ( (array!82880 (arr!39972 (Array (_ BitVec 32) ValueCell!15558)) (size!40509 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82879)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82881 0))(
  ( (array!82882 (arr!39973 (Array (_ BitVec 32) (_ BitVec 64))) (size!40510 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82881)

(declare-fun minValueAfter!52 () V!48957)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!48957)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48957)

(declare-fun zeroValueBefore!52 () V!48957)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21504 0))(
  ( (tuple2!21505 (_1!10762 (_ BitVec 64)) (_2!10762 V!48957)) )
))
(declare-datatypes ((List!28641 0))(
  ( (Nil!28638) (Cons!28637 (h!29846 tuple2!21504) (t!42177 List!28641)) )
))
(declare-datatypes ((ListLongMap!19245 0))(
  ( (ListLongMap!19246 (toList!9638 List!28641)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5946 (array!82881 array!82879 (_ BitVec 32) (_ BitVec 32) V!48957 V!48957 (_ BitVec 32) Int) ListLongMap!19245)

(assert (=> b!1270105 (= (getCurrentListMapNoExtraKeys!5946 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5946 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42248 0))(
  ( (Unit!42249) )
))
(declare-fun lt!574607 () Unit!42248)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1242 (array!82881 array!82879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48957 V!48957 V!48957 V!48957 (_ BitVec 32) Int) Unit!42248)

(assert (=> b!1270105 (= lt!574607 (lemmaNoChangeToArrayThenSameMapNoExtras!1242 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1270106 () Bool)

(declare-fun res!845304 () Bool)

(assert (=> b!1270106 (=> (not res!845304) (not e!723982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82881 (_ BitVec 32)) Bool)

(assert (=> b!1270106 (= res!845304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270107 () Bool)

(declare-fun res!845302 () Bool)

(assert (=> b!1270107 (=> (not res!845302) (not e!723982))))

(assert (=> b!1270107 (= res!845302 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40510 _keys!1364)) (bvslt from!1698 (size!40510 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1270108 () Bool)

(declare-fun e!723979 () Bool)

(declare-fun e!723980 () Bool)

(declare-fun mapRes!50815 () Bool)

(assert (=> b!1270108 (= e!723979 (and e!723980 mapRes!50815))))

(declare-fun condMapEmpty!50815 () Bool)

(declare-fun mapDefault!50815 () ValueCell!15558)

(assert (=> b!1270108 (= condMapEmpty!50815 (= (arr!39972 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15558)) mapDefault!50815)))))

(declare-fun b!1270110 () Bool)

(declare-fun tp_is_empty!32823 () Bool)

(assert (=> b!1270110 (= e!723980 tp_is_empty!32823)))

(declare-fun mapIsEmpty!50815 () Bool)

(assert (=> mapIsEmpty!50815 mapRes!50815))

(declare-fun b!1270111 () Bool)

(declare-fun res!845303 () Bool)

(assert (=> b!1270111 (=> (not res!845303) (not e!723982))))

(assert (=> b!1270111 (= res!845303 (and (= (size!40509 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40510 _keys!1364) (size!40509 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270109 () Bool)

(declare-fun res!845306 () Bool)

(assert (=> b!1270109 (=> (not res!845306) (not e!723982))))

(declare-datatypes ((List!28642 0))(
  ( (Nil!28639) (Cons!28638 (h!29847 (_ BitVec 64)) (t!42178 List!28642)) )
))
(declare-fun arrayNoDuplicates!0 (array!82881 (_ BitVec 32) List!28642) Bool)

(assert (=> b!1270109 (= res!845306 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28639))))

(declare-fun res!845305 () Bool)

(assert (=> start!107170 (=> (not res!845305) (not e!723982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107170 (= res!845305 (validMask!0 mask!1730))))

(assert (=> start!107170 e!723982))

(declare-fun array_inv!30361 (array!82879) Bool)

(assert (=> start!107170 (and (array_inv!30361 _values!1134) e!723979)))

(assert (=> start!107170 true))

(declare-fun array_inv!30362 (array!82881) Bool)

(assert (=> start!107170 (array_inv!30362 _keys!1364)))

(assert (=> start!107170 tp_is_empty!32823))

(assert (=> start!107170 tp!97144))

(declare-fun mapNonEmpty!50815 () Bool)

(declare-fun tp!97145 () Bool)

(declare-fun e!723983 () Bool)

(assert (=> mapNonEmpty!50815 (= mapRes!50815 (and tp!97145 e!723983))))

(declare-fun mapKey!50815 () (_ BitVec 32))

(declare-fun mapRest!50815 () (Array (_ BitVec 32) ValueCell!15558))

(declare-fun mapValue!50815 () ValueCell!15558)

(assert (=> mapNonEmpty!50815 (= (arr!39972 _values!1134) (store mapRest!50815 mapKey!50815 mapValue!50815))))

(declare-fun b!1270112 () Bool)

(assert (=> b!1270112 (= e!723983 tp_is_empty!32823)))

(assert (= (and start!107170 res!845305) b!1270111))

(assert (= (and b!1270111 res!845303) b!1270106))

(assert (= (and b!1270106 res!845304) b!1270109))

(assert (= (and b!1270109 res!845306) b!1270107))

(assert (= (and b!1270107 res!845302) b!1270105))

(assert (= (and b!1270108 condMapEmpty!50815) mapIsEmpty!50815))

(assert (= (and b!1270108 (not condMapEmpty!50815)) mapNonEmpty!50815))

(get-info :version)

(assert (= (and mapNonEmpty!50815 ((_ is ValueCellFull!15558) mapValue!50815)) b!1270112))

(assert (= (and b!1270108 ((_ is ValueCellFull!15558) mapDefault!50815)) b!1270110))

(assert (= start!107170 b!1270108))

(declare-fun m!1168499 () Bool)

(assert (=> b!1270106 m!1168499))

(declare-fun m!1168501 () Bool)

(assert (=> b!1270109 m!1168501))

(declare-fun m!1168503 () Bool)

(assert (=> start!107170 m!1168503))

(declare-fun m!1168505 () Bool)

(assert (=> start!107170 m!1168505))

(declare-fun m!1168507 () Bool)

(assert (=> start!107170 m!1168507))

(declare-fun m!1168509 () Bool)

(assert (=> mapNonEmpty!50815 m!1168509))

(declare-fun m!1168511 () Bool)

(assert (=> b!1270105 m!1168511))

(declare-fun m!1168513 () Bool)

(assert (=> b!1270105 m!1168513))

(declare-fun m!1168515 () Bool)

(assert (=> b!1270105 m!1168515))

(check-sat (not b_next!27639) (not start!107170) (not b!1270106) b_and!45681 (not b!1270105) tp_is_empty!32823 (not mapNonEmpty!50815) (not b!1270109))
(check-sat b_and!45681 (not b_next!27639))
