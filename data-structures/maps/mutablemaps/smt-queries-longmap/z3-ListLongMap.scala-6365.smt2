; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81956 () Bool)

(assert start!81956)

(declare-fun b_free!18423 () Bool)

(declare-fun b_next!18423 () Bool)

(assert (=> start!81956 (= b_free!18423 (not b_next!18423))))

(declare-fun tp!63969 () Bool)

(declare-fun b_and!29927 () Bool)

(assert (=> start!81956 (= tp!63969 b_and!29927)))

(declare-fun b!955497 () Bool)

(declare-fun e!538311 () Bool)

(declare-fun e!538309 () Bool)

(declare-fun mapRes!33412 () Bool)

(assert (=> b!955497 (= e!538311 (and e!538309 mapRes!33412))))

(declare-fun condMapEmpty!33412 () Bool)

(declare-datatypes ((V!32939 0))(
  ( (V!32940 (val!10534 Int)) )
))
(declare-datatypes ((ValueCell!10002 0))(
  ( (ValueCellFull!10002 (v!13089 V!32939)) (EmptyCell!10002) )
))
(declare-datatypes ((array!58059 0))(
  ( (array!58060 (arr!27905 (Array (_ BitVec 32) ValueCell!10002)) (size!28385 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58059)

(declare-fun mapDefault!33412 () ValueCell!10002)

(assert (=> b!955497 (= condMapEmpty!33412 (= (arr!27905 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10002)) mapDefault!33412)))))

(declare-fun b!955498 () Bool)

(declare-fun res!639974 () Bool)

(declare-fun e!538307 () Bool)

(assert (=> b!955498 (=> (not res!639974) (not e!538307))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58061 0))(
  ( (array!58062 (arr!27906 (Array (_ BitVec 32) (_ BitVec 64))) (size!28386 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58061)

(assert (=> b!955498 (= res!639974 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28386 _keys!1441))))))

(declare-fun b!955499 () Bool)

(declare-fun res!639975 () Bool)

(assert (=> b!955499 (=> (not res!639975) (not e!538307))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58061 (_ BitVec 32)) Bool)

(assert (=> b!955499 (= res!639975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapIsEmpty!33412 () Bool)

(assert (=> mapIsEmpty!33412 mapRes!33412))

(declare-fun b!955500 () Bool)

(declare-fun res!639973 () Bool)

(assert (=> b!955500 (=> (not res!639973) (not e!538307))))

(declare-fun zeroValue!1139 () V!32939)

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32939)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13772 0))(
  ( (tuple2!13773 (_1!6896 (_ BitVec 64)) (_2!6896 V!32939)) )
))
(declare-datatypes ((List!19589 0))(
  ( (Nil!19586) (Cons!19585 (h!20747 tuple2!13772) (t!27958 List!19589)) )
))
(declare-datatypes ((ListLongMap!12483 0))(
  ( (ListLongMap!12484 (toList!6257 List!19589)) )
))
(declare-fun contains!5307 (ListLongMap!12483 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3442 (array!58061 array!58059 (_ BitVec 32) (_ BitVec 32) V!32939 V!32939 (_ BitVec 32) Int) ListLongMap!12483)

(assert (=> b!955500 (= res!639973 (contains!5307 (getCurrentListMap!3442 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27906 _keys!1441) i!735)))))

(declare-fun res!639977 () Bool)

(assert (=> start!81956 (=> (not res!639977) (not e!538307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81956 (= res!639977 (validMask!0 mask!1823))))

(assert (=> start!81956 e!538307))

(assert (=> start!81956 true))

(declare-fun tp_is_empty!20967 () Bool)

(assert (=> start!81956 tp_is_empty!20967))

(declare-fun array_inv!21605 (array!58061) Bool)

(assert (=> start!81956 (array_inv!21605 _keys!1441)))

(declare-fun array_inv!21606 (array!58059) Bool)

(assert (=> start!81956 (and (array_inv!21606 _values!1197) e!538311)))

(assert (=> start!81956 tp!63969))

(declare-fun b!955501 () Bool)

(declare-fun e!538308 () Bool)

(assert (=> b!955501 (= e!538308 tp_is_empty!20967)))

(declare-fun b!955502 () Bool)

(assert (=> b!955502 (= e!538307 (not true))))

(assert (=> b!955502 (contains!5307 (getCurrentListMap!3442 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27906 _keys!1441) i!735))))

(declare-datatypes ((Unit!32113 0))(
  ( (Unit!32114) )
))
(declare-fun lt!429973 () Unit!32113)

(declare-fun lemmaInListMapFromThenFromZero!13 (array!58061 array!58059 (_ BitVec 32) (_ BitVec 32) V!32939 V!32939 (_ BitVec 32) (_ BitVec 32) Int) Unit!32113)

(assert (=> b!955502 (= lt!429973 (lemmaInListMapFromThenFromZero!13 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955503 () Bool)

(assert (=> b!955503 (= e!538309 tp_is_empty!20967)))

(declare-fun b!955504 () Bool)

(declare-fun res!639979 () Bool)

(assert (=> b!955504 (=> (not res!639979) (not e!538307))))

(assert (=> b!955504 (= res!639979 (and (= (size!28385 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28386 _keys!1441) (size!28385 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33412 () Bool)

(declare-fun tp!63970 () Bool)

(assert (=> mapNonEmpty!33412 (= mapRes!33412 (and tp!63970 e!538308))))

(declare-fun mapValue!33412 () ValueCell!10002)

(declare-fun mapKey!33412 () (_ BitVec 32))

(declare-fun mapRest!33412 () (Array (_ BitVec 32) ValueCell!10002))

(assert (=> mapNonEmpty!33412 (= (arr!27905 _values!1197) (store mapRest!33412 mapKey!33412 mapValue!33412))))

(declare-fun b!955505 () Bool)

(declare-fun res!639978 () Bool)

(assert (=> b!955505 (=> (not res!639978) (not e!538307))))

(declare-datatypes ((List!19590 0))(
  ( (Nil!19587) (Cons!19586 (h!20748 (_ BitVec 64)) (t!27959 List!19590)) )
))
(declare-fun arrayNoDuplicates!0 (array!58061 (_ BitVec 32) List!19590) Bool)

(assert (=> b!955505 (= res!639978 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19587))))

(declare-fun b!955506 () Bool)

(declare-fun res!639976 () Bool)

(assert (=> b!955506 (=> (not res!639976) (not e!538307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955506 (= res!639976 (validKeyInArray!0 (select (arr!27906 _keys!1441) i!735)))))

(assert (= (and start!81956 res!639977) b!955504))

(assert (= (and b!955504 res!639979) b!955499))

(assert (= (and b!955499 res!639975) b!955505))

(assert (= (and b!955505 res!639978) b!955498))

(assert (= (and b!955498 res!639974) b!955506))

(assert (= (and b!955506 res!639976) b!955500))

(assert (= (and b!955500 res!639973) b!955502))

(assert (= (and b!955497 condMapEmpty!33412) mapIsEmpty!33412))

(assert (= (and b!955497 (not condMapEmpty!33412)) mapNonEmpty!33412))

(get-info :version)

(assert (= (and mapNonEmpty!33412 ((_ is ValueCellFull!10002) mapValue!33412)) b!955501))

(assert (= (and b!955497 ((_ is ValueCellFull!10002) mapDefault!33412)) b!955503))

(assert (= start!81956 b!955497))

(declare-fun m!887093 () Bool)

(assert (=> b!955506 m!887093))

(assert (=> b!955506 m!887093))

(declare-fun m!887095 () Bool)

(assert (=> b!955506 m!887095))

(declare-fun m!887097 () Bool)

(assert (=> mapNonEmpty!33412 m!887097))

(declare-fun m!887099 () Bool)

(assert (=> b!955499 m!887099))

(declare-fun m!887101 () Bool)

(assert (=> b!955505 m!887101))

(declare-fun m!887103 () Bool)

(assert (=> start!81956 m!887103))

(declare-fun m!887105 () Bool)

(assert (=> start!81956 m!887105))

(declare-fun m!887107 () Bool)

(assert (=> start!81956 m!887107))

(declare-fun m!887109 () Bool)

(assert (=> b!955502 m!887109))

(assert (=> b!955502 m!887093))

(assert (=> b!955502 m!887109))

(assert (=> b!955502 m!887093))

(declare-fun m!887111 () Bool)

(assert (=> b!955502 m!887111))

(declare-fun m!887113 () Bool)

(assert (=> b!955502 m!887113))

(declare-fun m!887115 () Bool)

(assert (=> b!955500 m!887115))

(assert (=> b!955500 m!887093))

(assert (=> b!955500 m!887115))

(assert (=> b!955500 m!887093))

(declare-fun m!887117 () Bool)

(assert (=> b!955500 m!887117))

(check-sat (not b!955500) (not b!955506) (not b!955505) (not b!955502) (not b_next!18423) b_and!29927 tp_is_empty!20967 (not start!81956) (not mapNonEmpty!33412) (not b!955499))
(check-sat b_and!29927 (not b_next!18423))
