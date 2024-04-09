; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81932 () Bool)

(assert start!81932)

(declare-fun b_free!18399 () Bool)

(declare-fun b_next!18399 () Bool)

(assert (=> start!81932 (= b_free!18399 (not b_next!18399))))

(declare-fun tp!63897 () Bool)

(declare-fun b_and!29903 () Bool)

(assert (=> start!81932 (= tp!63897 b_and!29903)))

(declare-fun res!639724 () Bool)

(declare-fun e!538127 () Bool)

(assert (=> start!81932 (=> (not res!639724) (not e!538127))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81932 (= res!639724 (validMask!0 mask!1823))))

(assert (=> start!81932 e!538127))

(assert (=> start!81932 true))

(declare-fun tp_is_empty!20943 () Bool)

(assert (=> start!81932 tp_is_empty!20943))

(declare-datatypes ((array!58011 0))(
  ( (array!58012 (arr!27881 (Array (_ BitVec 32) (_ BitVec 64))) (size!28361 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58011)

(declare-fun array_inv!21587 (array!58011) Bool)

(assert (=> start!81932 (array_inv!21587 _keys!1441)))

(declare-datatypes ((V!32907 0))(
  ( (V!32908 (val!10522 Int)) )
))
(declare-datatypes ((ValueCell!9990 0))(
  ( (ValueCellFull!9990 (v!13077 V!32907)) (EmptyCell!9990) )
))
(declare-datatypes ((array!58013 0))(
  ( (array!58014 (arr!27882 (Array (_ BitVec 32) ValueCell!9990)) (size!28362 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58013)

(declare-fun e!538130 () Bool)

(declare-fun array_inv!21588 (array!58013) Bool)

(assert (=> start!81932 (and (array_inv!21588 _values!1197) e!538130)))

(assert (=> start!81932 tp!63897))

(declare-fun b!955137 () Bool)

(declare-fun e!538131 () Bool)

(assert (=> b!955137 (= e!538131 tp_is_empty!20943)))

(declare-fun b!955138 () Bool)

(declare-fun res!639723 () Bool)

(assert (=> b!955138 (=> (not res!639723) (not e!538127))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955138 (= res!639723 (and (= (size!28362 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28361 _keys!1441) (size!28362 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955139 () Bool)

(declare-fun e!538129 () Bool)

(assert (=> b!955139 (= e!538129 tp_is_empty!20943)))

(declare-fun b!955140 () Bool)

(declare-fun res!639725 () Bool)

(assert (=> b!955140 (=> (not res!639725) (not e!538127))))

(declare-datatypes ((List!19574 0))(
  ( (Nil!19571) (Cons!19570 (h!20732 (_ BitVec 64)) (t!27943 List!19574)) )
))
(declare-fun arrayNoDuplicates!0 (array!58011 (_ BitVec 32) List!19574) Bool)

(assert (=> b!955140 (= res!639725 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19571))))

(declare-fun b!955141 () Bool)

(assert (=> b!955141 (= e!538127 (not true))))

(declare-fun zeroValue!1139 () V!32907)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32907)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13756 0))(
  ( (tuple2!13757 (_1!6888 (_ BitVec 64)) (_2!6888 V!32907)) )
))
(declare-datatypes ((List!19575 0))(
  ( (Nil!19572) (Cons!19571 (h!20733 tuple2!13756) (t!27944 List!19575)) )
))
(declare-datatypes ((ListLongMap!12467 0))(
  ( (ListLongMap!12468 (toList!6249 List!19575)) )
))
(declare-fun contains!5299 (ListLongMap!12467 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3434 (array!58011 array!58013 (_ BitVec 32) (_ BitVec 32) V!32907 V!32907 (_ BitVec 32) Int) ListLongMap!12467)

(assert (=> b!955141 (contains!5299 (getCurrentListMap!3434 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27881 _keys!1441) i!735))))

(declare-datatypes ((Unit!32099 0))(
  ( (Unit!32100) )
))
(declare-fun lt!429937 () Unit!32099)

(declare-fun lemmaInListMapFromThenFromZero!6 (array!58011 array!58013 (_ BitVec 32) (_ BitVec 32) V!32907 V!32907 (_ BitVec 32) (_ BitVec 32) Int) Unit!32099)

(assert (=> b!955141 (= lt!429937 (lemmaInListMapFromThenFromZero!6 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955142 () Bool)

(declare-fun res!639722 () Bool)

(assert (=> b!955142 (=> (not res!639722) (not e!538127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955142 (= res!639722 (validKeyInArray!0 (select (arr!27881 _keys!1441) i!735)))))

(declare-fun b!955143 () Bool)

(declare-fun res!639721 () Bool)

(assert (=> b!955143 (=> (not res!639721) (not e!538127))))

(assert (=> b!955143 (= res!639721 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28361 _keys!1441))))))

(declare-fun b!955144 () Bool)

(declare-fun mapRes!33376 () Bool)

(assert (=> b!955144 (= e!538130 (and e!538131 mapRes!33376))))

(declare-fun condMapEmpty!33376 () Bool)

(declare-fun mapDefault!33376 () ValueCell!9990)

(assert (=> b!955144 (= condMapEmpty!33376 (= (arr!27882 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9990)) mapDefault!33376)))))

(declare-fun b!955145 () Bool)

(declare-fun res!639726 () Bool)

(assert (=> b!955145 (=> (not res!639726) (not e!538127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58011 (_ BitVec 32)) Bool)

(assert (=> b!955145 (= res!639726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33376 () Bool)

(assert (=> mapIsEmpty!33376 mapRes!33376))

(declare-fun b!955146 () Bool)

(declare-fun res!639727 () Bool)

(assert (=> b!955146 (=> (not res!639727) (not e!538127))))

(assert (=> b!955146 (= res!639727 (contains!5299 (getCurrentListMap!3434 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27881 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33376 () Bool)

(declare-fun tp!63898 () Bool)

(assert (=> mapNonEmpty!33376 (= mapRes!33376 (and tp!63898 e!538129))))

(declare-fun mapKey!33376 () (_ BitVec 32))

(declare-fun mapValue!33376 () ValueCell!9990)

(declare-fun mapRest!33376 () (Array (_ BitVec 32) ValueCell!9990))

(assert (=> mapNonEmpty!33376 (= (arr!27882 _values!1197) (store mapRest!33376 mapKey!33376 mapValue!33376))))

(assert (= (and start!81932 res!639724) b!955138))

(assert (= (and b!955138 res!639723) b!955145))

(assert (= (and b!955145 res!639726) b!955140))

(assert (= (and b!955140 res!639725) b!955143))

(assert (= (and b!955143 res!639721) b!955142))

(assert (= (and b!955142 res!639722) b!955146))

(assert (= (and b!955146 res!639727) b!955141))

(assert (= (and b!955144 condMapEmpty!33376) mapIsEmpty!33376))

(assert (= (and b!955144 (not condMapEmpty!33376)) mapNonEmpty!33376))

(get-info :version)

(assert (= (and mapNonEmpty!33376 ((_ is ValueCellFull!9990) mapValue!33376)) b!955139))

(assert (= (and b!955144 ((_ is ValueCellFull!9990) mapDefault!33376)) b!955137))

(assert (= start!81932 b!955144))

(declare-fun m!886781 () Bool)

(assert (=> b!955145 m!886781))

(declare-fun m!886783 () Bool)

(assert (=> b!955142 m!886783))

(assert (=> b!955142 m!886783))

(declare-fun m!886785 () Bool)

(assert (=> b!955142 m!886785))

(declare-fun m!886787 () Bool)

(assert (=> b!955140 m!886787))

(declare-fun m!886789 () Bool)

(assert (=> b!955146 m!886789))

(assert (=> b!955146 m!886783))

(assert (=> b!955146 m!886789))

(assert (=> b!955146 m!886783))

(declare-fun m!886791 () Bool)

(assert (=> b!955146 m!886791))

(declare-fun m!886793 () Bool)

(assert (=> start!81932 m!886793))

(declare-fun m!886795 () Bool)

(assert (=> start!81932 m!886795))

(declare-fun m!886797 () Bool)

(assert (=> start!81932 m!886797))

(declare-fun m!886799 () Bool)

(assert (=> b!955141 m!886799))

(assert (=> b!955141 m!886783))

(assert (=> b!955141 m!886799))

(assert (=> b!955141 m!886783))

(declare-fun m!886801 () Bool)

(assert (=> b!955141 m!886801))

(declare-fun m!886803 () Bool)

(assert (=> b!955141 m!886803))

(declare-fun m!886805 () Bool)

(assert (=> mapNonEmpty!33376 m!886805))

(check-sat (not b_next!18399) (not b!955142) (not mapNonEmpty!33376) (not b!955146) tp_is_empty!20943 (not b!955145) (not b!955141) b_and!29903 (not b!955140) (not start!81932))
(check-sat b_and!29903 (not b_next!18399))
