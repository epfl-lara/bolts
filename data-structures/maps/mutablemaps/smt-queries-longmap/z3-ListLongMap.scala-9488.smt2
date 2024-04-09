; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112574 () Bool)

(assert start!112574)

(declare-fun b_free!30933 () Bool)

(declare-fun b_next!30933 () Bool)

(assert (=> start!112574 (= b_free!30933 (not b_next!30933))))

(declare-fun tp!108436 () Bool)

(declare-fun b_and!49851 () Bool)

(assert (=> start!112574 (= tp!108436 b_and!49851)))

(declare-fun b!1334809 () Bool)

(declare-fun res!885977 () Bool)

(declare-fun e!760254 () Bool)

(assert (=> b!1334809 (=> (not res!885977) (not e!760254))))

(declare-datatypes ((array!90525 0))(
  ( (array!90526 (arr!43724 (Array (_ BitVec 32) (_ BitVec 64))) (size!44275 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90525)

(declare-datatypes ((List!31175 0))(
  ( (Nil!31172) (Cons!31171 (h!32380 (_ BitVec 64)) (t!45446 List!31175)) )
))
(declare-fun arrayNoDuplicates!0 (array!90525 (_ BitVec 32) List!31175) Bool)

(assert (=> b!1334809 (= res!885977 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31172))))

(declare-fun b!1334810 () Bool)

(assert (=> b!1334810 (= e!760254 false)))

(declare-datatypes ((V!54227 0))(
  ( (V!54228 (val!18496 Int)) )
))
(declare-datatypes ((ValueCell!17523 0))(
  ( (ValueCellFull!17523 (v!21131 V!54227)) (EmptyCell!17523) )
))
(declare-datatypes ((array!90527 0))(
  ( (array!90528 (arr!43725 (Array (_ BitVec 32) ValueCell!17523)) (size!44276 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90527)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54227)

(declare-fun zeroValue!1262 () V!54227)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!592337 () Bool)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-datatypes ((tuple2!24004 0))(
  ( (tuple2!24005 (_1!12012 (_ BitVec 64)) (_2!12012 V!54227)) )
))
(declare-datatypes ((List!31176 0))(
  ( (Nil!31173) (Cons!31172 (h!32381 tuple2!24004) (t!45447 List!31176)) )
))
(declare-datatypes ((ListLongMap!21673 0))(
  ( (ListLongMap!21674 (toList!10852 List!31176)) )
))
(declare-fun contains!8952 (ListLongMap!21673 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5763 (array!90525 array!90527 (_ BitVec 32) (_ BitVec 32) V!54227 V!54227 (_ BitVec 32) Int) ListLongMap!21673)

(assert (=> b!1334810 (= lt!592337 (contains!8952 (getCurrentListMap!5763 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!56938 () Bool)

(declare-fun mapRes!56938 () Bool)

(declare-fun tp!108437 () Bool)

(declare-fun e!760253 () Bool)

(assert (=> mapNonEmpty!56938 (= mapRes!56938 (and tp!108437 e!760253))))

(declare-fun mapKey!56938 () (_ BitVec 32))

(declare-fun mapRest!56938 () (Array (_ BitVec 32) ValueCell!17523))

(declare-fun mapValue!56938 () ValueCell!17523)

(assert (=> mapNonEmpty!56938 (= (arr!43725 _values!1320) (store mapRest!56938 mapKey!56938 mapValue!56938))))

(declare-fun b!1334811 () Bool)

(declare-fun res!885975 () Bool)

(assert (=> b!1334811 (=> (not res!885975) (not e!760254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90525 (_ BitVec 32)) Bool)

(assert (=> b!1334811 (= res!885975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334812 () Bool)

(declare-fun res!885974 () Bool)

(assert (=> b!1334812 (=> (not res!885974) (not e!760254))))

(assert (=> b!1334812 (= res!885974 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44275 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334813 () Bool)

(declare-fun res!885976 () Bool)

(assert (=> b!1334813 (=> (not res!885976) (not e!760254))))

(assert (=> b!1334813 (= res!885976 (and (= (size!44276 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44275 _keys!1590) (size!44276 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334814 () Bool)

(declare-fun e!760251 () Bool)

(declare-fun tp_is_empty!36843 () Bool)

(assert (=> b!1334814 (= e!760251 tp_is_empty!36843)))

(declare-fun b!1334815 () Bool)

(assert (=> b!1334815 (= e!760253 tp_is_empty!36843)))

(declare-fun b!1334816 () Bool)

(declare-fun e!760255 () Bool)

(assert (=> b!1334816 (= e!760255 (and e!760251 mapRes!56938))))

(declare-fun condMapEmpty!56938 () Bool)

(declare-fun mapDefault!56938 () ValueCell!17523)

(assert (=> b!1334816 (= condMapEmpty!56938 (= (arr!43725 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17523)) mapDefault!56938)))))

(declare-fun res!885973 () Bool)

(assert (=> start!112574 (=> (not res!885973) (not e!760254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112574 (= res!885973 (validMask!0 mask!1998))))

(assert (=> start!112574 e!760254))

(declare-fun array_inv!32909 (array!90527) Bool)

(assert (=> start!112574 (and (array_inv!32909 _values!1320) e!760255)))

(assert (=> start!112574 true))

(declare-fun array_inv!32910 (array!90525) Bool)

(assert (=> start!112574 (array_inv!32910 _keys!1590)))

(assert (=> start!112574 tp!108436))

(assert (=> start!112574 tp_is_empty!36843))

(declare-fun mapIsEmpty!56938 () Bool)

(assert (=> mapIsEmpty!56938 mapRes!56938))

(assert (= (and start!112574 res!885973) b!1334813))

(assert (= (and b!1334813 res!885976) b!1334811))

(assert (= (and b!1334811 res!885975) b!1334809))

(assert (= (and b!1334809 res!885977) b!1334812))

(assert (= (and b!1334812 res!885974) b!1334810))

(assert (= (and b!1334816 condMapEmpty!56938) mapIsEmpty!56938))

(assert (= (and b!1334816 (not condMapEmpty!56938)) mapNonEmpty!56938))

(get-info :version)

(assert (= (and mapNonEmpty!56938 ((_ is ValueCellFull!17523) mapValue!56938)) b!1334815))

(assert (= (and b!1334816 ((_ is ValueCellFull!17523) mapDefault!56938)) b!1334814))

(assert (= start!112574 b!1334816))

(declare-fun m!1223095 () Bool)

(assert (=> b!1334809 m!1223095))

(declare-fun m!1223097 () Bool)

(assert (=> start!112574 m!1223097))

(declare-fun m!1223099 () Bool)

(assert (=> start!112574 m!1223099))

(declare-fun m!1223101 () Bool)

(assert (=> start!112574 m!1223101))

(declare-fun m!1223103 () Bool)

(assert (=> b!1334811 m!1223103))

(declare-fun m!1223105 () Bool)

(assert (=> b!1334810 m!1223105))

(assert (=> b!1334810 m!1223105))

(declare-fun m!1223107 () Bool)

(assert (=> b!1334810 m!1223107))

(declare-fun m!1223109 () Bool)

(assert (=> mapNonEmpty!56938 m!1223109))

(check-sat (not b!1334810) (not b!1334811) tp_is_empty!36843 (not b!1334809) (not mapNonEmpty!56938) (not start!112574) b_and!49851 (not b_next!30933))
(check-sat b_and!49851 (not b_next!30933))
