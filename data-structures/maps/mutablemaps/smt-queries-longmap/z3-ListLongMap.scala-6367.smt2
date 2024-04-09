; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81968 () Bool)

(assert start!81968)

(declare-fun b_free!18435 () Bool)

(declare-fun b_next!18435 () Bool)

(assert (=> start!81968 (= b_free!18435 (not b_next!18435))))

(declare-fun tp!64006 () Bool)

(declare-fun b_and!29939 () Bool)

(assert (=> start!81968 (= tp!64006 b_and!29939)))

(declare-fun b!955677 () Bool)

(declare-fun res!640104 () Bool)

(declare-fun e!538399 () Bool)

(assert (=> b!955677 (=> (not res!640104) (not e!538399))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32955 0))(
  ( (V!32956 (val!10540 Int)) )
))
(declare-fun zeroValue!1139 () V!32955)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58083 0))(
  ( (array!58084 (arr!27917 (Array (_ BitVec 32) (_ BitVec 64))) (size!28397 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58083)

(declare-datatypes ((ValueCell!10008 0))(
  ( (ValueCellFull!10008 (v!13095 V!32955)) (EmptyCell!10008) )
))
(declare-datatypes ((array!58085 0))(
  ( (array!58086 (arr!27918 (Array (_ BitVec 32) ValueCell!10008)) (size!28398 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58085)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32955)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13782 0))(
  ( (tuple2!13783 (_1!6901 (_ BitVec 64)) (_2!6901 V!32955)) )
))
(declare-datatypes ((List!19600 0))(
  ( (Nil!19597) (Cons!19596 (h!20758 tuple2!13782) (t!27969 List!19600)) )
))
(declare-datatypes ((ListLongMap!12493 0))(
  ( (ListLongMap!12494 (toList!6262 List!19600)) )
))
(declare-fun contains!5312 (ListLongMap!12493 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3447 (array!58083 array!58085 (_ BitVec 32) (_ BitVec 32) V!32955 V!32955 (_ BitVec 32) Int) ListLongMap!12493)

(assert (=> b!955677 (= res!640104 (contains!5312 (getCurrentListMap!3447 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27917 _keys!1441) i!735)))))

(declare-fun b!955678 () Bool)

(declare-fun e!538397 () Bool)

(declare-fun tp_is_empty!20979 () Bool)

(assert (=> b!955678 (= e!538397 tp_is_empty!20979)))

(declare-fun mapIsEmpty!33430 () Bool)

(declare-fun mapRes!33430 () Bool)

(assert (=> mapIsEmpty!33430 mapRes!33430))

(declare-fun b!955679 () Bool)

(declare-fun res!640102 () Bool)

(assert (=> b!955679 (=> (not res!640102) (not e!538399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58083 (_ BitVec 32)) Bool)

(assert (=> b!955679 (= res!640102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun res!640101 () Bool)

(assert (=> start!81968 (=> (not res!640101) (not e!538399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81968 (= res!640101 (validMask!0 mask!1823))))

(assert (=> start!81968 e!538399))

(assert (=> start!81968 true))

(assert (=> start!81968 tp_is_empty!20979))

(declare-fun array_inv!21613 (array!58083) Bool)

(assert (=> start!81968 (array_inv!21613 _keys!1441)))

(declare-fun e!538400 () Bool)

(declare-fun array_inv!21614 (array!58085) Bool)

(assert (=> start!81968 (and (array_inv!21614 _values!1197) e!538400)))

(assert (=> start!81968 tp!64006))

(declare-fun b!955680 () Bool)

(assert (=> b!955680 (= e!538399 (not (bvsle #b00000000000000000000000000000000 (size!28397 _keys!1441))))))

(assert (=> b!955680 (contains!5312 (getCurrentListMap!3447 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27917 _keys!1441) i!735))))

(declare-datatypes ((Unit!32121 0))(
  ( (Unit!32122) )
))
(declare-fun lt!429991 () Unit!32121)

(declare-fun lemmaInListMapFromThenFromZero!17 (array!58083 array!58085 (_ BitVec 32) (_ BitVec 32) V!32955 V!32955 (_ BitVec 32) (_ BitVec 32) Int) Unit!32121)

(assert (=> b!955680 (= lt!429991 (lemmaInListMapFromThenFromZero!17 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun mapNonEmpty!33430 () Bool)

(declare-fun tp!64005 () Bool)

(assert (=> mapNonEmpty!33430 (= mapRes!33430 (and tp!64005 e!538397))))

(declare-fun mapKey!33430 () (_ BitVec 32))

(declare-fun mapValue!33430 () ValueCell!10008)

(declare-fun mapRest!33430 () (Array (_ BitVec 32) ValueCell!10008))

(assert (=> mapNonEmpty!33430 (= (arr!27918 _values!1197) (store mapRest!33430 mapKey!33430 mapValue!33430))))

(declare-fun b!955681 () Bool)

(declare-fun res!640100 () Bool)

(assert (=> b!955681 (=> (not res!640100) (not e!538399))))

(assert (=> b!955681 (= res!640100 (and (= (size!28398 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28397 _keys!1441) (size!28398 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955682 () Bool)

(declare-fun e!538401 () Bool)

(assert (=> b!955682 (= e!538401 tp_is_empty!20979)))

(declare-fun b!955683 () Bool)

(assert (=> b!955683 (= e!538400 (and e!538401 mapRes!33430))))

(declare-fun condMapEmpty!33430 () Bool)

(declare-fun mapDefault!33430 () ValueCell!10008)

(assert (=> b!955683 (= condMapEmpty!33430 (= (arr!27918 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10008)) mapDefault!33430)))))

(declare-fun b!955684 () Bool)

(declare-fun res!640099 () Bool)

(assert (=> b!955684 (=> (not res!640099) (not e!538399))))

(declare-datatypes ((List!19601 0))(
  ( (Nil!19598) (Cons!19597 (h!20759 (_ BitVec 64)) (t!27970 List!19601)) )
))
(declare-fun arrayNoDuplicates!0 (array!58083 (_ BitVec 32) List!19601) Bool)

(assert (=> b!955684 (= res!640099 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19598))))

(declare-fun b!955685 () Bool)

(declare-fun res!640105 () Bool)

(assert (=> b!955685 (=> (not res!640105) (not e!538399))))

(assert (=> b!955685 (= res!640105 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28397 _keys!1441))))))

(declare-fun b!955686 () Bool)

(declare-fun res!640103 () Bool)

(assert (=> b!955686 (=> (not res!640103) (not e!538399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955686 (= res!640103 (validKeyInArray!0 (select (arr!27917 _keys!1441) i!735)))))

(assert (= (and start!81968 res!640101) b!955681))

(assert (= (and b!955681 res!640100) b!955679))

(assert (= (and b!955679 res!640102) b!955684))

(assert (= (and b!955684 res!640099) b!955685))

(assert (= (and b!955685 res!640105) b!955686))

(assert (= (and b!955686 res!640103) b!955677))

(assert (= (and b!955677 res!640104) b!955680))

(assert (= (and b!955683 condMapEmpty!33430) mapIsEmpty!33430))

(assert (= (and b!955683 (not condMapEmpty!33430)) mapNonEmpty!33430))

(get-info :version)

(assert (= (and mapNonEmpty!33430 ((_ is ValueCellFull!10008) mapValue!33430)) b!955678))

(assert (= (and b!955683 ((_ is ValueCellFull!10008) mapDefault!33430)) b!955682))

(assert (= start!81968 b!955683))

(declare-fun m!887249 () Bool)

(assert (=> b!955680 m!887249))

(declare-fun m!887251 () Bool)

(assert (=> b!955680 m!887251))

(assert (=> b!955680 m!887249))

(assert (=> b!955680 m!887251))

(declare-fun m!887253 () Bool)

(assert (=> b!955680 m!887253))

(declare-fun m!887255 () Bool)

(assert (=> b!955680 m!887255))

(declare-fun m!887257 () Bool)

(assert (=> mapNonEmpty!33430 m!887257))

(declare-fun m!887259 () Bool)

(assert (=> b!955677 m!887259))

(assert (=> b!955677 m!887251))

(assert (=> b!955677 m!887259))

(assert (=> b!955677 m!887251))

(declare-fun m!887261 () Bool)

(assert (=> b!955677 m!887261))

(declare-fun m!887263 () Bool)

(assert (=> b!955684 m!887263))

(declare-fun m!887265 () Bool)

(assert (=> b!955679 m!887265))

(declare-fun m!887267 () Bool)

(assert (=> start!81968 m!887267))

(declare-fun m!887269 () Bool)

(assert (=> start!81968 m!887269))

(declare-fun m!887271 () Bool)

(assert (=> start!81968 m!887271))

(assert (=> b!955686 m!887251))

(assert (=> b!955686 m!887251))

(declare-fun m!887273 () Bool)

(assert (=> b!955686 m!887273))

(check-sat (not start!81968) (not b!955677) (not b!955679) (not b_next!18435) (not b!955684) (not b!955680) (not b!955686) tp_is_empty!20979 (not mapNonEmpty!33430) b_and!29939)
(check-sat b_and!29939 (not b_next!18435))
