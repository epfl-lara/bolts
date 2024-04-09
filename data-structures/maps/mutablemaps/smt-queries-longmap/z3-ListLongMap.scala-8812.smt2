; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107134 () Bool)

(assert start!107134)

(declare-fun b_free!27603 () Bool)

(declare-fun b_next!27603 () Bool)

(assert (=> start!107134 (= b_free!27603 (not b_next!27603))))

(declare-fun tp!97036 () Bool)

(declare-fun b_and!45645 () Bool)

(assert (=> start!107134 (= tp!97036 b_and!45645)))

(declare-fun b!1269673 () Bool)

(declare-fun res!845033 () Bool)

(declare-fun e!723711 () Bool)

(assert (=> b!1269673 (=> (not res!845033) (not e!723711))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82809 0))(
  ( (array!82810 (arr!39937 (Array (_ BitVec 32) (_ BitVec 64))) (size!40474 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82809)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-datatypes ((V!48909 0))(
  ( (V!48910 (val!16468 Int)) )
))
(declare-datatypes ((ValueCell!15540 0))(
  ( (ValueCellFull!15540 (v!19103 V!48909)) (EmptyCell!15540) )
))
(declare-datatypes ((array!82811 0))(
  ( (array!82812 (arr!39938 (Array (_ BitVec 32) ValueCell!15540)) (size!40475 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82811)

(declare-fun mask!1730 () (_ BitVec 32))

(assert (=> b!1269673 (= res!845033 (and (= (size!40475 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40474 _keys!1364) (size!40475 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1269674 () Bool)

(declare-fun res!845035 () Bool)

(assert (=> b!1269674 (=> (not res!845035) (not e!723711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82809 (_ BitVec 32)) Bool)

(assert (=> b!1269674 (= res!845035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1269675 () Bool)

(declare-fun e!723709 () Bool)

(declare-fun e!723712 () Bool)

(declare-fun mapRes!50761 () Bool)

(assert (=> b!1269675 (= e!723709 (and e!723712 mapRes!50761))))

(declare-fun condMapEmpty!50761 () Bool)

(declare-fun mapDefault!50761 () ValueCell!15540)

(assert (=> b!1269675 (= condMapEmpty!50761 (= (arr!39938 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15540)) mapDefault!50761)))))

(declare-fun b!1269676 () Bool)

(declare-fun res!845034 () Bool)

(assert (=> b!1269676 (=> (not res!845034) (not e!723711))))

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1269676 (= res!845034 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40474 _keys!1364)) (bvslt from!1698 (size!40474 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269677 () Bool)

(declare-fun e!723710 () Bool)

(declare-fun tp_is_empty!32787 () Bool)

(assert (=> b!1269677 (= e!723710 tp_is_empty!32787)))

(declare-fun res!845032 () Bool)

(assert (=> start!107134 (=> (not res!845032) (not e!723711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107134 (= res!845032 (validMask!0 mask!1730))))

(assert (=> start!107134 e!723711))

(declare-fun array_inv!30339 (array!82811) Bool)

(assert (=> start!107134 (and (array_inv!30339 _values!1134) e!723709)))

(assert (=> start!107134 true))

(declare-fun array_inv!30340 (array!82809) Bool)

(assert (=> start!107134 (array_inv!30340 _keys!1364)))

(assert (=> start!107134 tp_is_empty!32787))

(assert (=> start!107134 tp!97036))

(declare-fun b!1269678 () Bool)

(declare-fun res!845036 () Bool)

(assert (=> b!1269678 (=> (not res!845036) (not e!723711))))

(declare-datatypes ((List!28615 0))(
  ( (Nil!28612) (Cons!28611 (h!29820 (_ BitVec 64)) (t!42151 List!28615)) )
))
(declare-fun arrayNoDuplicates!0 (array!82809 (_ BitVec 32) List!28615) Bool)

(assert (=> b!1269678 (= res!845036 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28612))))

(declare-fun mapIsEmpty!50761 () Bool)

(assert (=> mapIsEmpty!50761 mapRes!50761))

(declare-fun b!1269679 () Bool)

(assert (=> b!1269679 (= e!723712 tp_is_empty!32787)))

(declare-fun b!1269680 () Bool)

(assert (=> b!1269680 (= e!723711 (not true))))

(declare-fun minValueAfter!52 () V!48909)

(declare-fun minValueBefore!52 () V!48909)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!48909)

(declare-fun zeroValueBefore!52 () V!48909)

(declare-datatypes ((tuple2!21480 0))(
  ( (tuple2!21481 (_1!10750 (_ BitVec 64)) (_2!10750 V!48909)) )
))
(declare-datatypes ((List!28616 0))(
  ( (Nil!28613) (Cons!28612 (h!29821 tuple2!21480) (t!42152 List!28616)) )
))
(declare-datatypes ((ListLongMap!19221 0))(
  ( (ListLongMap!19222 (toList!9626 List!28616)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5934 (array!82809 array!82811 (_ BitVec 32) (_ BitVec 32) V!48909 V!48909 (_ BitVec 32) Int) ListLongMap!19221)

(assert (=> b!1269680 (= (getCurrentListMapNoExtraKeys!5934 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5934 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42224 0))(
  ( (Unit!42225) )
))
(declare-fun lt!574553 () Unit!42224)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1230 (array!82809 array!82811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48909 V!48909 V!48909 V!48909 (_ BitVec 32) Int) Unit!42224)

(assert (=> b!1269680 (= lt!574553 (lemmaNoChangeToArrayThenSameMapNoExtras!1230 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun mapNonEmpty!50761 () Bool)

(declare-fun tp!97037 () Bool)

(assert (=> mapNonEmpty!50761 (= mapRes!50761 (and tp!97037 e!723710))))

(declare-fun mapRest!50761 () (Array (_ BitVec 32) ValueCell!15540))

(declare-fun mapKey!50761 () (_ BitVec 32))

(declare-fun mapValue!50761 () ValueCell!15540)

(assert (=> mapNonEmpty!50761 (= (arr!39938 _values!1134) (store mapRest!50761 mapKey!50761 mapValue!50761))))

(assert (= (and start!107134 res!845032) b!1269673))

(assert (= (and b!1269673 res!845033) b!1269674))

(assert (= (and b!1269674 res!845035) b!1269678))

(assert (= (and b!1269678 res!845036) b!1269676))

(assert (= (and b!1269676 res!845034) b!1269680))

(assert (= (and b!1269675 condMapEmpty!50761) mapIsEmpty!50761))

(assert (= (and b!1269675 (not condMapEmpty!50761)) mapNonEmpty!50761))

(get-info :version)

(assert (= (and mapNonEmpty!50761 ((_ is ValueCellFull!15540) mapValue!50761)) b!1269677))

(assert (= (and b!1269675 ((_ is ValueCellFull!15540) mapDefault!50761)) b!1269679))

(assert (= start!107134 b!1269675))

(declare-fun m!1168175 () Bool)

(assert (=> b!1269680 m!1168175))

(declare-fun m!1168177 () Bool)

(assert (=> b!1269680 m!1168177))

(declare-fun m!1168179 () Bool)

(assert (=> b!1269680 m!1168179))

(declare-fun m!1168181 () Bool)

(assert (=> b!1269678 m!1168181))

(declare-fun m!1168183 () Bool)

(assert (=> start!107134 m!1168183))

(declare-fun m!1168185 () Bool)

(assert (=> start!107134 m!1168185))

(declare-fun m!1168187 () Bool)

(assert (=> start!107134 m!1168187))

(declare-fun m!1168189 () Bool)

(assert (=> b!1269674 m!1168189))

(declare-fun m!1168191 () Bool)

(assert (=> mapNonEmpty!50761 m!1168191))

(check-sat b_and!45645 (not b!1269678) tp_is_empty!32787 (not start!107134) (not b_next!27603) (not b!1269674) (not mapNonEmpty!50761) (not b!1269680))
(check-sat b_and!45645 (not b_next!27603))
