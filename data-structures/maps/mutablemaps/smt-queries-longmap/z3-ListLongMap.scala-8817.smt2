; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107164 () Bool)

(assert start!107164)

(declare-fun b_free!27633 () Bool)

(declare-fun b_next!27633 () Bool)

(assert (=> start!107164 (= b_free!27633 (not b_next!27633))))

(declare-fun tp!97126 () Bool)

(declare-fun b_and!45675 () Bool)

(assert (=> start!107164 (= tp!97126 b_and!45675)))

(declare-fun b!1270033 () Bool)

(declare-fun e!723938 () Bool)

(declare-fun e!723935 () Bool)

(declare-fun mapRes!50806 () Bool)

(assert (=> b!1270033 (= e!723938 (and e!723935 mapRes!50806))))

(declare-fun condMapEmpty!50806 () Bool)

(declare-datatypes ((V!48949 0))(
  ( (V!48950 (val!16483 Int)) )
))
(declare-datatypes ((ValueCell!15555 0))(
  ( (ValueCellFull!15555 (v!19118 V!48949)) (EmptyCell!15555) )
))
(declare-datatypes ((array!82867 0))(
  ( (array!82868 (arr!39966 (Array (_ BitVec 32) ValueCell!15555)) (size!40503 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82867)

(declare-fun mapDefault!50806 () ValueCell!15555)

(assert (=> b!1270033 (= condMapEmpty!50806 (= (arr!39966 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15555)) mapDefault!50806)))))

(declare-fun b!1270034 () Bool)

(declare-fun res!845260 () Bool)

(declare-fun e!723936 () Bool)

(assert (=> b!1270034 (=> (not res!845260) (not e!723936))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82869 0))(
  ( (array!82870 (arr!39967 (Array (_ BitVec 32) (_ BitVec 64))) (size!40504 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82869)

(assert (=> b!1270034 (= res!845260 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40504 _keys!1364)) (bvslt from!1698 (size!40504 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1270035 () Bool)

(declare-fun res!845257 () Bool)

(assert (=> b!1270035 (=> (not res!845257) (not e!723936))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270035 (= res!845257 (and (= (size!40503 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40504 _keys!1364) (size!40503 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!845261 () Bool)

(assert (=> start!107164 (=> (not res!845261) (not e!723936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107164 (= res!845261 (validMask!0 mask!1730))))

(assert (=> start!107164 e!723936))

(declare-fun array_inv!30359 (array!82867) Bool)

(assert (=> start!107164 (and (array_inv!30359 _values!1134) e!723938)))

(assert (=> start!107164 true))

(declare-fun array_inv!30360 (array!82869) Bool)

(assert (=> start!107164 (array_inv!30360 _keys!1364)))

(declare-fun tp_is_empty!32817 () Bool)

(assert (=> start!107164 tp_is_empty!32817))

(assert (=> start!107164 tp!97126))

(declare-fun b!1270036 () Bool)

(declare-fun res!845259 () Bool)

(assert (=> b!1270036 (=> (not res!845259) (not e!723936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82869 (_ BitVec 32)) Bool)

(assert (=> b!1270036 (= res!845259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270037 () Bool)

(assert (=> b!1270037 (= e!723935 tp_is_empty!32817)))

(declare-fun mapIsEmpty!50806 () Bool)

(assert (=> mapIsEmpty!50806 mapRes!50806))

(declare-fun b!1270038 () Bool)

(declare-fun e!723937 () Bool)

(assert (=> b!1270038 (= e!723937 tp_is_empty!32817)))

(declare-fun mapNonEmpty!50806 () Bool)

(declare-fun tp!97127 () Bool)

(assert (=> mapNonEmpty!50806 (= mapRes!50806 (and tp!97127 e!723937))))

(declare-fun mapKey!50806 () (_ BitVec 32))

(declare-fun mapValue!50806 () ValueCell!15555)

(declare-fun mapRest!50806 () (Array (_ BitVec 32) ValueCell!15555))

(assert (=> mapNonEmpty!50806 (= (arr!39966 _values!1134) (store mapRest!50806 mapKey!50806 mapValue!50806))))

(declare-fun b!1270039 () Bool)

(assert (=> b!1270039 (= e!723936 (not true))))

(declare-fun minValueBefore!52 () V!48949)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48949)

(declare-fun zeroValueBefore!52 () V!48949)

(declare-fun minValueAfter!52 () V!48949)

(declare-datatypes ((tuple2!21502 0))(
  ( (tuple2!21503 (_1!10761 (_ BitVec 64)) (_2!10761 V!48949)) )
))
(declare-datatypes ((List!28638 0))(
  ( (Nil!28635) (Cons!28634 (h!29843 tuple2!21502) (t!42174 List!28638)) )
))
(declare-datatypes ((ListLongMap!19243 0))(
  ( (ListLongMap!19244 (toList!9637 List!28638)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5945 (array!82869 array!82867 (_ BitVec 32) (_ BitVec 32) V!48949 V!48949 (_ BitVec 32) Int) ListLongMap!19243)

(assert (=> b!1270039 (= (getCurrentListMapNoExtraKeys!5945 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5945 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42246 0))(
  ( (Unit!42247) )
))
(declare-fun lt!574598 () Unit!42246)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1241 (array!82869 array!82867 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48949 V!48949 V!48949 V!48949 (_ BitVec 32) Int) Unit!42246)

(assert (=> b!1270039 (= lt!574598 (lemmaNoChangeToArrayThenSameMapNoExtras!1241 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1270040 () Bool)

(declare-fun res!845258 () Bool)

(assert (=> b!1270040 (=> (not res!845258) (not e!723936))))

(declare-datatypes ((List!28639 0))(
  ( (Nil!28636) (Cons!28635 (h!29844 (_ BitVec 64)) (t!42175 List!28639)) )
))
(declare-fun arrayNoDuplicates!0 (array!82869 (_ BitVec 32) List!28639) Bool)

(assert (=> b!1270040 (= res!845258 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28636))))

(assert (= (and start!107164 res!845261) b!1270035))

(assert (= (and b!1270035 res!845257) b!1270036))

(assert (= (and b!1270036 res!845259) b!1270040))

(assert (= (and b!1270040 res!845258) b!1270034))

(assert (= (and b!1270034 res!845260) b!1270039))

(assert (= (and b!1270033 condMapEmpty!50806) mapIsEmpty!50806))

(assert (= (and b!1270033 (not condMapEmpty!50806)) mapNonEmpty!50806))

(get-info :version)

(assert (= (and mapNonEmpty!50806 ((_ is ValueCellFull!15555) mapValue!50806)) b!1270038))

(assert (= (and b!1270033 ((_ is ValueCellFull!15555) mapDefault!50806)) b!1270037))

(assert (= start!107164 b!1270033))

(declare-fun m!1168445 () Bool)

(assert (=> b!1270040 m!1168445))

(declare-fun m!1168447 () Bool)

(assert (=> b!1270039 m!1168447))

(declare-fun m!1168449 () Bool)

(assert (=> b!1270039 m!1168449))

(declare-fun m!1168451 () Bool)

(assert (=> b!1270039 m!1168451))

(declare-fun m!1168453 () Bool)

(assert (=> mapNonEmpty!50806 m!1168453))

(declare-fun m!1168455 () Bool)

(assert (=> b!1270036 m!1168455))

(declare-fun m!1168457 () Bool)

(assert (=> start!107164 m!1168457))

(declare-fun m!1168459 () Bool)

(assert (=> start!107164 m!1168459))

(declare-fun m!1168461 () Bool)

(assert (=> start!107164 m!1168461))

(check-sat (not b_next!27633) (not mapNonEmpty!50806) (not start!107164) (not b!1270036) tp_is_empty!32817 b_and!45675 (not b!1270040) (not b!1270039))
(check-sat b_and!45675 (not b_next!27633))
