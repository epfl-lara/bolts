; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81944 () Bool)

(assert start!81944)

(declare-fun b_free!18411 () Bool)

(declare-fun b_next!18411 () Bool)

(assert (=> start!81944 (= b_free!18411 (not b_next!18411))))

(declare-fun tp!63933 () Bool)

(declare-fun b_and!29915 () Bool)

(assert (=> start!81944 (= tp!63933 b_and!29915)))

(declare-fun b!955317 () Bool)

(declare-fun res!639847 () Bool)

(declare-fun e!538221 () Bool)

(assert (=> b!955317 (=> (not res!639847) (not e!538221))))

(declare-datatypes ((array!58035 0))(
  ( (array!58036 (arr!27893 (Array (_ BitVec 32) (_ BitVec 64))) (size!28373 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58035)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58035 (_ BitVec 32)) Bool)

(assert (=> b!955317 (= res!639847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955318 () Bool)

(declare-fun res!639853 () Bool)

(assert (=> b!955318 (=> (not res!639853) (not e!538221))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955318 (= res!639853 (validKeyInArray!0 (select (arr!27893 _keys!1441) i!735)))))

(declare-fun b!955319 () Bool)

(declare-fun res!639852 () Bool)

(assert (=> b!955319 (=> (not res!639852) (not e!538221))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32923 0))(
  ( (V!32924 (val!10528 Int)) )
))
(declare-datatypes ((ValueCell!9996 0))(
  ( (ValueCellFull!9996 (v!13083 V!32923)) (EmptyCell!9996) )
))
(declare-datatypes ((array!58037 0))(
  ( (array!58038 (arr!27894 (Array (_ BitVec 32) ValueCell!9996)) (size!28374 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58037)

(assert (=> b!955319 (= res!639852 (and (= (size!28374 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28373 _keys!1441) (size!28374 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955320 () Bool)

(declare-fun res!639850 () Bool)

(assert (=> b!955320 (=> (not res!639850) (not e!538221))))

(declare-fun zeroValue!1139 () V!32923)

(declare-fun minValue!1139 () V!32923)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13762 0))(
  ( (tuple2!13763 (_1!6891 (_ BitVec 64)) (_2!6891 V!32923)) )
))
(declare-datatypes ((List!19581 0))(
  ( (Nil!19578) (Cons!19577 (h!20739 tuple2!13762) (t!27950 List!19581)) )
))
(declare-datatypes ((ListLongMap!12473 0))(
  ( (ListLongMap!12474 (toList!6252 List!19581)) )
))
(declare-fun contains!5302 (ListLongMap!12473 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3437 (array!58035 array!58037 (_ BitVec 32) (_ BitVec 32) V!32923 V!32923 (_ BitVec 32) Int) ListLongMap!12473)

(assert (=> b!955320 (= res!639850 (contains!5302 (getCurrentListMap!3437 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27893 _keys!1441) i!735)))))

(declare-fun res!639851 () Bool)

(assert (=> start!81944 (=> (not res!639851) (not e!538221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81944 (= res!639851 (validMask!0 mask!1823))))

(assert (=> start!81944 e!538221))

(assert (=> start!81944 true))

(declare-fun tp_is_empty!20955 () Bool)

(assert (=> start!81944 tp_is_empty!20955))

(declare-fun array_inv!21595 (array!58035) Bool)

(assert (=> start!81944 (array_inv!21595 _keys!1441)))

(declare-fun e!538220 () Bool)

(declare-fun array_inv!21596 (array!58037) Bool)

(assert (=> start!81944 (and (array_inv!21596 _values!1197) e!538220)))

(assert (=> start!81944 tp!63933))

(declare-fun b!955321 () Bool)

(declare-fun e!538217 () Bool)

(declare-fun mapRes!33394 () Bool)

(assert (=> b!955321 (= e!538220 (and e!538217 mapRes!33394))))

(declare-fun condMapEmpty!33394 () Bool)

(declare-fun mapDefault!33394 () ValueCell!9996)

(assert (=> b!955321 (= condMapEmpty!33394 (= (arr!27894 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9996)) mapDefault!33394)))))

(declare-fun b!955322 () Bool)

(assert (=> b!955322 (= e!538221 (not true))))

(assert (=> b!955322 (contains!5302 (getCurrentListMap!3437 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27893 _keys!1441) i!735))))

(declare-datatypes ((Unit!32105 0))(
  ( (Unit!32106) )
))
(declare-fun lt!429955 () Unit!32105)

(declare-fun lemmaInListMapFromThenFromZero!9 (array!58035 array!58037 (_ BitVec 32) (_ BitVec 32) V!32923 V!32923 (_ BitVec 32) (_ BitVec 32) Int) Unit!32105)

(assert (=> b!955322 (= lt!429955 (lemmaInListMapFromThenFromZero!9 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955323 () Bool)

(assert (=> b!955323 (= e!538217 tp_is_empty!20955)))

(declare-fun b!955324 () Bool)

(declare-fun e!538219 () Bool)

(assert (=> b!955324 (= e!538219 tp_is_empty!20955)))

(declare-fun b!955325 () Bool)

(declare-fun res!639848 () Bool)

(assert (=> b!955325 (=> (not res!639848) (not e!538221))))

(assert (=> b!955325 (= res!639848 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28373 _keys!1441))))))

(declare-fun b!955326 () Bool)

(declare-fun res!639849 () Bool)

(assert (=> b!955326 (=> (not res!639849) (not e!538221))))

(declare-datatypes ((List!19582 0))(
  ( (Nil!19579) (Cons!19578 (h!20740 (_ BitVec 64)) (t!27951 List!19582)) )
))
(declare-fun arrayNoDuplicates!0 (array!58035 (_ BitVec 32) List!19582) Bool)

(assert (=> b!955326 (= res!639849 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19579))))

(declare-fun mapNonEmpty!33394 () Bool)

(declare-fun tp!63934 () Bool)

(assert (=> mapNonEmpty!33394 (= mapRes!33394 (and tp!63934 e!538219))))

(declare-fun mapRest!33394 () (Array (_ BitVec 32) ValueCell!9996))

(declare-fun mapValue!33394 () ValueCell!9996)

(declare-fun mapKey!33394 () (_ BitVec 32))

(assert (=> mapNonEmpty!33394 (= (arr!27894 _values!1197) (store mapRest!33394 mapKey!33394 mapValue!33394))))

(declare-fun mapIsEmpty!33394 () Bool)

(assert (=> mapIsEmpty!33394 mapRes!33394))

(assert (= (and start!81944 res!639851) b!955319))

(assert (= (and b!955319 res!639852) b!955317))

(assert (= (and b!955317 res!639847) b!955326))

(assert (= (and b!955326 res!639849) b!955325))

(assert (= (and b!955325 res!639848) b!955318))

(assert (= (and b!955318 res!639853) b!955320))

(assert (= (and b!955320 res!639850) b!955322))

(assert (= (and b!955321 condMapEmpty!33394) mapIsEmpty!33394))

(assert (= (and b!955321 (not condMapEmpty!33394)) mapNonEmpty!33394))

(get-info :version)

(assert (= (and mapNonEmpty!33394 ((_ is ValueCellFull!9996) mapValue!33394)) b!955324))

(assert (= (and b!955321 ((_ is ValueCellFull!9996) mapDefault!33394)) b!955323))

(assert (= start!81944 b!955321))

(declare-fun m!886937 () Bool)

(assert (=> b!955320 m!886937))

(declare-fun m!886939 () Bool)

(assert (=> b!955320 m!886939))

(assert (=> b!955320 m!886937))

(assert (=> b!955320 m!886939))

(declare-fun m!886941 () Bool)

(assert (=> b!955320 m!886941))

(declare-fun m!886943 () Bool)

(assert (=> b!955317 m!886943))

(assert (=> b!955318 m!886939))

(assert (=> b!955318 m!886939))

(declare-fun m!886945 () Bool)

(assert (=> b!955318 m!886945))

(declare-fun m!886947 () Bool)

(assert (=> start!81944 m!886947))

(declare-fun m!886949 () Bool)

(assert (=> start!81944 m!886949))

(declare-fun m!886951 () Bool)

(assert (=> start!81944 m!886951))

(declare-fun m!886953 () Bool)

(assert (=> b!955322 m!886953))

(assert (=> b!955322 m!886939))

(assert (=> b!955322 m!886953))

(assert (=> b!955322 m!886939))

(declare-fun m!886955 () Bool)

(assert (=> b!955322 m!886955))

(declare-fun m!886957 () Bool)

(assert (=> b!955322 m!886957))

(declare-fun m!886959 () Bool)

(assert (=> mapNonEmpty!33394 m!886959))

(declare-fun m!886961 () Bool)

(assert (=> b!955326 m!886961))

(check-sat b_and!29915 (not b!955317) (not mapNonEmpty!33394) (not b_next!18411) tp_is_empty!20955 (not b!955320) (not start!81944) (not b!955322) (not b!955326) (not b!955318))
(check-sat b_and!29915 (not b_next!18411))
