; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112586 () Bool)

(assert start!112586)

(declare-fun b_free!30945 () Bool)

(declare-fun b_next!30945 () Bool)

(assert (=> start!112586 (= b_free!30945 (not b_next!30945))))

(declare-fun tp!108472 () Bool)

(declare-fun b_and!49863 () Bool)

(assert (=> start!112586 (= tp!108472 b_and!49863)))

(declare-fun b!1334953 () Bool)

(declare-fun e!760344 () Bool)

(declare-fun tp_is_empty!36855 () Bool)

(assert (=> b!1334953 (= e!760344 tp_is_empty!36855)))

(declare-fun mapIsEmpty!56956 () Bool)

(declare-fun mapRes!56956 () Bool)

(assert (=> mapIsEmpty!56956 mapRes!56956))

(declare-fun res!886066 () Bool)

(declare-fun e!760341 () Bool)

(assert (=> start!112586 (=> (not res!886066) (not e!760341))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112586 (= res!886066 (validMask!0 mask!1998))))

(assert (=> start!112586 e!760341))

(declare-datatypes ((V!54243 0))(
  ( (V!54244 (val!18502 Int)) )
))
(declare-datatypes ((ValueCell!17529 0))(
  ( (ValueCellFull!17529 (v!21137 V!54243)) (EmptyCell!17529) )
))
(declare-datatypes ((array!90549 0))(
  ( (array!90550 (arr!43736 (Array (_ BitVec 32) ValueCell!17529)) (size!44287 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90549)

(declare-fun e!760345 () Bool)

(declare-fun array_inv!32919 (array!90549) Bool)

(assert (=> start!112586 (and (array_inv!32919 _values!1320) e!760345)))

(assert (=> start!112586 true))

(declare-datatypes ((array!90551 0))(
  ( (array!90552 (arr!43737 (Array (_ BitVec 32) (_ BitVec 64))) (size!44288 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90551)

(declare-fun array_inv!32920 (array!90551) Bool)

(assert (=> start!112586 (array_inv!32920 _keys!1590)))

(assert (=> start!112586 tp!108472))

(assert (=> start!112586 tp_is_empty!36855))

(declare-fun b!1334954 () Bool)

(assert (=> b!1334954 (= e!760341 false)))

(declare-fun lt!592355 () Bool)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54243)

(declare-fun zeroValue!1262 () V!54243)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(declare-datatypes ((tuple2!24012 0))(
  ( (tuple2!24013 (_1!12016 (_ BitVec 64)) (_2!12016 V!54243)) )
))
(declare-datatypes ((List!31183 0))(
  ( (Nil!31180) (Cons!31179 (h!32388 tuple2!24012) (t!45454 List!31183)) )
))
(declare-datatypes ((ListLongMap!21681 0))(
  ( (ListLongMap!21682 (toList!10856 List!31183)) )
))
(declare-fun contains!8956 (ListLongMap!21681 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5767 (array!90551 array!90549 (_ BitVec 32) (_ BitVec 32) V!54243 V!54243 (_ BitVec 32) Int) ListLongMap!21681)

(assert (=> b!1334954 (= lt!592355 (contains!8956 (getCurrentListMap!5767 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!56956 () Bool)

(declare-fun tp!108473 () Bool)

(declare-fun e!760343 () Bool)

(assert (=> mapNonEmpty!56956 (= mapRes!56956 (and tp!108473 e!760343))))

(declare-fun mapValue!56956 () ValueCell!17529)

(declare-fun mapKey!56956 () (_ BitVec 32))

(declare-fun mapRest!56956 () (Array (_ BitVec 32) ValueCell!17529))

(assert (=> mapNonEmpty!56956 (= (arr!43736 _values!1320) (store mapRest!56956 mapKey!56956 mapValue!56956))))

(declare-fun b!1334955 () Bool)

(declare-fun res!886064 () Bool)

(assert (=> b!1334955 (=> (not res!886064) (not e!760341))))

(declare-datatypes ((List!31184 0))(
  ( (Nil!31181) (Cons!31180 (h!32389 (_ BitVec 64)) (t!45455 List!31184)) )
))
(declare-fun arrayNoDuplicates!0 (array!90551 (_ BitVec 32) List!31184) Bool)

(assert (=> b!1334955 (= res!886064 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31181))))

(declare-fun b!1334956 () Bool)

(declare-fun res!886065 () Bool)

(assert (=> b!1334956 (=> (not res!886065) (not e!760341))))

(assert (=> b!1334956 (= res!886065 (and (= (size!44287 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44288 _keys!1590) (size!44287 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334957 () Bool)

(declare-fun res!886063 () Bool)

(assert (=> b!1334957 (=> (not res!886063) (not e!760341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90551 (_ BitVec 32)) Bool)

(assert (=> b!1334957 (= res!886063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334958 () Bool)

(assert (=> b!1334958 (= e!760343 tp_is_empty!36855)))

(declare-fun b!1334959 () Bool)

(assert (=> b!1334959 (= e!760345 (and e!760344 mapRes!56956))))

(declare-fun condMapEmpty!56956 () Bool)

(declare-fun mapDefault!56956 () ValueCell!17529)

(assert (=> b!1334959 (= condMapEmpty!56956 (= (arr!43736 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17529)) mapDefault!56956)))))

(declare-fun b!1334960 () Bool)

(declare-fun res!886067 () Bool)

(assert (=> b!1334960 (=> (not res!886067) (not e!760341))))

(assert (=> b!1334960 (= res!886067 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44288 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!112586 res!886066) b!1334956))

(assert (= (and b!1334956 res!886065) b!1334957))

(assert (= (and b!1334957 res!886063) b!1334955))

(assert (= (and b!1334955 res!886064) b!1334960))

(assert (= (and b!1334960 res!886067) b!1334954))

(assert (= (and b!1334959 condMapEmpty!56956) mapIsEmpty!56956))

(assert (= (and b!1334959 (not condMapEmpty!56956)) mapNonEmpty!56956))

(get-info :version)

(assert (= (and mapNonEmpty!56956 ((_ is ValueCellFull!17529) mapValue!56956)) b!1334958))

(assert (= (and b!1334959 ((_ is ValueCellFull!17529) mapDefault!56956)) b!1334953))

(assert (= start!112586 b!1334959))

(declare-fun m!1223191 () Bool)

(assert (=> b!1334955 m!1223191))

(declare-fun m!1223193 () Bool)

(assert (=> start!112586 m!1223193))

(declare-fun m!1223195 () Bool)

(assert (=> start!112586 m!1223195))

(declare-fun m!1223197 () Bool)

(assert (=> start!112586 m!1223197))

(declare-fun m!1223199 () Bool)

(assert (=> b!1334957 m!1223199))

(declare-fun m!1223201 () Bool)

(assert (=> mapNonEmpty!56956 m!1223201))

(declare-fun m!1223203 () Bool)

(assert (=> b!1334954 m!1223203))

(assert (=> b!1334954 m!1223203))

(declare-fun m!1223205 () Bool)

(assert (=> b!1334954 m!1223205))

(check-sat (not b!1334954) b_and!49863 (not start!112586) tp_is_empty!36855 (not b!1334955) (not mapNonEmpty!56956) (not b_next!30945) (not b!1334957))
(check-sat b_and!49863 (not b_next!30945))
