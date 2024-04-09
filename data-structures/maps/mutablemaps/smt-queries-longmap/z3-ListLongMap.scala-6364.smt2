; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81950 () Bool)

(assert start!81950)

(declare-fun b_free!18417 () Bool)

(declare-fun b_next!18417 () Bool)

(assert (=> start!81950 (= b_free!18417 (not b_next!18417))))

(declare-fun tp!63952 () Bool)

(declare-fun b_and!29921 () Bool)

(assert (=> start!81950 (= tp!63952 b_and!29921)))

(declare-fun b!955407 () Bool)

(declare-fun res!639912 () Bool)

(declare-fun e!538263 () Bool)

(assert (=> b!955407 (=> (not res!639912) (not e!538263))))

(declare-datatypes ((array!58047 0))(
  ( (array!58048 (arr!27899 (Array (_ BitVec 32) (_ BitVec 64))) (size!28379 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58047)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955407 (= res!639912 (validKeyInArray!0 (select (arr!27899 _keys!1441) i!735)))))

(declare-fun b!955408 () Bool)

(declare-fun res!639915 () Bool)

(assert (=> b!955408 (=> (not res!639915) (not e!538263))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32931 0))(
  ( (V!32932 (val!10531 Int)) )
))
(declare-datatypes ((ValueCell!9999 0))(
  ( (ValueCellFull!9999 (v!13086 V!32931)) (EmptyCell!9999) )
))
(declare-datatypes ((array!58049 0))(
  ( (array!58050 (arr!27900 (Array (_ BitVec 32) ValueCell!9999)) (size!28380 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58049)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!955408 (= res!639915 (and (= (size!28380 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28379 _keys!1441) (size!28380 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955409 () Bool)

(declare-fun res!639911 () Bool)

(assert (=> b!955409 (=> (not res!639911) (not e!538263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58047 (_ BitVec 32)) Bool)

(assert (=> b!955409 (= res!639911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955410 () Bool)

(declare-fun res!639916 () Bool)

(assert (=> b!955410 (=> (not res!639916) (not e!538263))))

(declare-fun zeroValue!1139 () V!32931)

(declare-fun minValue!1139 () V!32931)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13768 0))(
  ( (tuple2!13769 (_1!6894 (_ BitVec 64)) (_2!6894 V!32931)) )
))
(declare-datatypes ((List!19585 0))(
  ( (Nil!19582) (Cons!19581 (h!20743 tuple2!13768) (t!27954 List!19585)) )
))
(declare-datatypes ((ListLongMap!12479 0))(
  ( (ListLongMap!12480 (toList!6255 List!19585)) )
))
(declare-fun contains!5305 (ListLongMap!12479 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3440 (array!58047 array!58049 (_ BitVec 32) (_ BitVec 32) V!32931 V!32931 (_ BitVec 32) Int) ListLongMap!12479)

(assert (=> b!955410 (= res!639916 (contains!5305 (getCurrentListMap!3440 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27899 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33403 () Bool)

(declare-fun mapRes!33403 () Bool)

(declare-fun tp!63951 () Bool)

(declare-fun e!538265 () Bool)

(assert (=> mapNonEmpty!33403 (= mapRes!33403 (and tp!63951 e!538265))))

(declare-fun mapKey!33403 () (_ BitVec 32))

(declare-fun mapRest!33403 () (Array (_ BitVec 32) ValueCell!9999))

(declare-fun mapValue!33403 () ValueCell!9999)

(assert (=> mapNonEmpty!33403 (= (arr!27900 _values!1197) (store mapRest!33403 mapKey!33403 mapValue!33403))))

(declare-fun mapIsEmpty!33403 () Bool)

(assert (=> mapIsEmpty!33403 mapRes!33403))

(declare-fun b!955411 () Bool)

(declare-fun res!639913 () Bool)

(assert (=> b!955411 (=> (not res!639913) (not e!538263))))

(assert (=> b!955411 (= res!639913 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28379 _keys!1441))))))

(declare-fun res!639910 () Bool)

(assert (=> start!81950 (=> (not res!639910) (not e!538263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81950 (= res!639910 (validMask!0 mask!1823))))

(assert (=> start!81950 e!538263))

(assert (=> start!81950 true))

(declare-fun tp_is_empty!20961 () Bool)

(assert (=> start!81950 tp_is_empty!20961))

(declare-fun array_inv!21601 (array!58047) Bool)

(assert (=> start!81950 (array_inv!21601 _keys!1441)))

(declare-fun e!538262 () Bool)

(declare-fun array_inv!21602 (array!58049) Bool)

(assert (=> start!81950 (and (array_inv!21602 _values!1197) e!538262)))

(assert (=> start!81950 tp!63952))

(declare-fun b!955412 () Bool)

(declare-fun e!538264 () Bool)

(assert (=> b!955412 (= e!538264 tp_is_empty!20961)))

(declare-fun b!955413 () Bool)

(assert (=> b!955413 (= e!538265 tp_is_empty!20961)))

(declare-fun b!955414 () Bool)

(assert (=> b!955414 (= e!538263 (not true))))

(assert (=> b!955414 (contains!5305 (getCurrentListMap!3440 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27899 _keys!1441) i!735))))

(declare-datatypes ((Unit!32111 0))(
  ( (Unit!32112) )
))
(declare-fun lt!429964 () Unit!32111)

(declare-fun lemmaInListMapFromThenFromZero!12 (array!58047 array!58049 (_ BitVec 32) (_ BitVec 32) V!32931 V!32931 (_ BitVec 32) (_ BitVec 32) Int) Unit!32111)

(assert (=> b!955414 (= lt!429964 (lemmaInListMapFromThenFromZero!12 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!955415 () Bool)

(declare-fun res!639914 () Bool)

(assert (=> b!955415 (=> (not res!639914) (not e!538263))))

(declare-datatypes ((List!19586 0))(
  ( (Nil!19583) (Cons!19582 (h!20744 (_ BitVec 64)) (t!27955 List!19586)) )
))
(declare-fun arrayNoDuplicates!0 (array!58047 (_ BitVec 32) List!19586) Bool)

(assert (=> b!955415 (= res!639914 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19583))))

(declare-fun b!955416 () Bool)

(assert (=> b!955416 (= e!538262 (and e!538264 mapRes!33403))))

(declare-fun condMapEmpty!33403 () Bool)

(declare-fun mapDefault!33403 () ValueCell!9999)

(assert (=> b!955416 (= condMapEmpty!33403 (= (arr!27900 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9999)) mapDefault!33403)))))

(assert (= (and start!81950 res!639910) b!955408))

(assert (= (and b!955408 res!639915) b!955409))

(assert (= (and b!955409 res!639911) b!955415))

(assert (= (and b!955415 res!639914) b!955411))

(assert (= (and b!955411 res!639913) b!955407))

(assert (= (and b!955407 res!639912) b!955410))

(assert (= (and b!955410 res!639916) b!955414))

(assert (= (and b!955416 condMapEmpty!33403) mapIsEmpty!33403))

(assert (= (and b!955416 (not condMapEmpty!33403)) mapNonEmpty!33403))

(get-info :version)

(assert (= (and mapNonEmpty!33403 ((_ is ValueCellFull!9999) mapValue!33403)) b!955413))

(assert (= (and b!955416 ((_ is ValueCellFull!9999) mapDefault!33403)) b!955412))

(assert (= start!81950 b!955416))

(declare-fun m!887015 () Bool)

(assert (=> mapNonEmpty!33403 m!887015))

(declare-fun m!887017 () Bool)

(assert (=> b!955409 m!887017))

(declare-fun m!887019 () Bool)

(assert (=> b!955414 m!887019))

(declare-fun m!887021 () Bool)

(assert (=> b!955414 m!887021))

(assert (=> b!955414 m!887019))

(assert (=> b!955414 m!887021))

(declare-fun m!887023 () Bool)

(assert (=> b!955414 m!887023))

(declare-fun m!887025 () Bool)

(assert (=> b!955414 m!887025))

(assert (=> b!955407 m!887021))

(assert (=> b!955407 m!887021))

(declare-fun m!887027 () Bool)

(assert (=> b!955407 m!887027))

(declare-fun m!887029 () Bool)

(assert (=> start!81950 m!887029))

(declare-fun m!887031 () Bool)

(assert (=> start!81950 m!887031))

(declare-fun m!887033 () Bool)

(assert (=> start!81950 m!887033))

(declare-fun m!887035 () Bool)

(assert (=> b!955415 m!887035))

(declare-fun m!887037 () Bool)

(assert (=> b!955410 m!887037))

(assert (=> b!955410 m!887021))

(assert (=> b!955410 m!887037))

(assert (=> b!955410 m!887021))

(declare-fun m!887039 () Bool)

(assert (=> b!955410 m!887039))

(check-sat (not b_next!18417) (not b!955415) (not b!955410) (not b!955409) b_and!29921 (not mapNonEmpty!33403) (not b!955407) tp_is_empty!20961 (not start!81950) (not b!955414))
(check-sat b_and!29921 (not b_next!18417))
