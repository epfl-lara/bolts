; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112238 () Bool)

(assert start!112238)

(declare-fun b_free!30597 () Bool)

(declare-fun b_next!30597 () Bool)

(assert (=> start!112238 (= b_free!30597 (not b_next!30597))))

(declare-fun tp!107429 () Bool)

(declare-fun b_and!49259 () Bool)

(assert (=> start!112238 (= tp!107429 b_and!49259)))

(declare-fun b!1328804 () Bool)

(declare-fun e!757654 () Bool)

(declare-fun e!757653 () Bool)

(declare-fun mapRes!56434 () Bool)

(assert (=> b!1328804 (= e!757654 (and e!757653 mapRes!56434))))

(declare-fun condMapEmpty!56434 () Bool)

(declare-datatypes ((V!53779 0))(
  ( (V!53780 (val!18328 Int)) )
))
(declare-datatypes ((ValueCell!17355 0))(
  ( (ValueCellFull!17355 (v!20963 V!53779)) (EmptyCell!17355) )
))
(declare-datatypes ((array!89871 0))(
  ( (array!89872 (arr!43397 (Array (_ BitVec 32) ValueCell!17355)) (size!43948 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89871)

(declare-fun mapDefault!56434 () ValueCell!17355)

(assert (=> b!1328804 (= condMapEmpty!56434 (= (arr!43397 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17355)) mapDefault!56434)))))

(declare-fun b!1328805 () Bool)

(declare-fun e!757651 () Bool)

(declare-fun tp_is_empty!36507 () Bool)

(assert (=> b!1328805 (= e!757651 tp_is_empty!36507)))

(declare-fun b!1328806 () Bool)

(declare-fun res!881738 () Bool)

(declare-fun e!757650 () Bool)

(assert (=> b!1328806 (=> (not res!881738) (not e!757650))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!89873 0))(
  ( (array!89874 (arr!43398 (Array (_ BitVec 32) (_ BitVec 64))) (size!43949 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89873)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1328806 (= res!881738 (not (= (select (arr!43398 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1328807 () Bool)

(assert (=> b!1328807 (= e!757653 tp_is_empty!36507)))

(declare-fun b!1328808 () Bool)

(declare-fun res!881743 () Bool)

(assert (=> b!1328808 (=> (not res!881743) (not e!757650))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89873 (_ BitVec 32)) Bool)

(assert (=> b!1328808 (= res!881743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328809 () Bool)

(declare-fun res!881740 () Bool)

(assert (=> b!1328809 (=> (not res!881740) (not e!757650))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1328809 (= res!881740 (and (= (size!43948 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43949 _keys!1590) (size!43948 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!881737 () Bool)

(assert (=> start!112238 (=> (not res!881737) (not e!757650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112238 (= res!881737 (validMask!0 mask!1998))))

(assert (=> start!112238 e!757650))

(declare-fun array_inv!32697 (array!89871) Bool)

(assert (=> start!112238 (and (array_inv!32697 _values!1320) e!757654)))

(assert (=> start!112238 true))

(declare-fun array_inv!32698 (array!89873) Bool)

(assert (=> start!112238 (array_inv!32698 _keys!1590)))

(assert (=> start!112238 tp!107429))

(assert (=> start!112238 tp_is_empty!36507))

(declare-fun b!1328810 () Bool)

(assert (=> b!1328810 (= e!757650 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!590816 () Bool)

(declare-fun minValue!1262 () V!53779)

(declare-fun zeroValue!1262 () V!53779)

(declare-datatypes ((tuple2!23740 0))(
  ( (tuple2!23741 (_1!11880 (_ BitVec 64)) (_2!11880 V!53779)) )
))
(declare-datatypes ((List!30929 0))(
  ( (Nil!30926) (Cons!30925 (h!32134 tuple2!23740) (t!44946 List!30929)) )
))
(declare-datatypes ((ListLongMap!21409 0))(
  ( (ListLongMap!21410 (toList!10720 List!30929)) )
))
(declare-fun contains!8820 (ListLongMap!21409 (_ BitVec 64)) Bool)

(declare-fun +!4618 (ListLongMap!21409 tuple2!23740) ListLongMap!21409)

(declare-fun getCurrentListMapNoExtraKeys!6336 (array!89873 array!89871 (_ BitVec 32) (_ BitVec 32) V!53779 V!53779 (_ BitVec 32) Int) ListLongMap!21409)

(declare-fun get!21902 (ValueCell!17355 V!53779) V!53779)

(declare-fun dynLambda!3655 (Int (_ BitVec 64)) V!53779)

(assert (=> b!1328810 (= lt!590816 (contains!8820 (+!4618 (+!4618 (getCurrentListMapNoExtraKeys!6336 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23741 (select (arr!43398 _keys!1590) from!1980) (get!21902 (select (arr!43397 _values!1320) from!1980) (dynLambda!3655 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23741 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153))))

(declare-fun b!1328811 () Bool)

(declare-fun res!881744 () Bool)

(assert (=> b!1328811 (=> (not res!881744) (not e!757650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1328811 (= res!881744 (validKeyInArray!0 (select (arr!43398 _keys!1590) from!1980)))))

(declare-fun b!1328812 () Bool)

(declare-fun res!881739 () Bool)

(assert (=> b!1328812 (=> (not res!881739) (not e!757650))))

(assert (=> b!1328812 (= res!881739 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1328813 () Bool)

(declare-fun res!881742 () Bool)

(assert (=> b!1328813 (=> (not res!881742) (not e!757650))))

(assert (=> b!1328813 (= res!881742 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43949 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56434 () Bool)

(assert (=> mapIsEmpty!56434 mapRes!56434))

(declare-fun mapNonEmpty!56434 () Bool)

(declare-fun tp!107428 () Bool)

(assert (=> mapNonEmpty!56434 (= mapRes!56434 (and tp!107428 e!757651))))

(declare-fun mapRest!56434 () (Array (_ BitVec 32) ValueCell!17355))

(declare-fun mapKey!56434 () (_ BitVec 32))

(declare-fun mapValue!56434 () ValueCell!17355)

(assert (=> mapNonEmpty!56434 (= (arr!43397 _values!1320) (store mapRest!56434 mapKey!56434 mapValue!56434))))

(declare-fun b!1328814 () Bool)

(declare-fun res!881736 () Bool)

(assert (=> b!1328814 (=> (not res!881736) (not e!757650))))

(declare-fun getCurrentListMap!5652 (array!89873 array!89871 (_ BitVec 32) (_ BitVec 32) V!53779 V!53779 (_ BitVec 32) Int) ListLongMap!21409)

(assert (=> b!1328814 (= res!881736 (contains!8820 (getCurrentListMap!5652 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1328815 () Bool)

(declare-fun res!881741 () Bool)

(assert (=> b!1328815 (=> (not res!881741) (not e!757650))))

(declare-datatypes ((List!30930 0))(
  ( (Nil!30927) (Cons!30926 (h!32135 (_ BitVec 64)) (t!44947 List!30930)) )
))
(declare-fun arrayNoDuplicates!0 (array!89873 (_ BitVec 32) List!30930) Bool)

(assert (=> b!1328815 (= res!881741 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30927))))

(assert (= (and start!112238 res!881737) b!1328809))

(assert (= (and b!1328809 res!881740) b!1328808))

(assert (= (and b!1328808 res!881743) b!1328815))

(assert (= (and b!1328815 res!881741) b!1328813))

(assert (= (and b!1328813 res!881742) b!1328814))

(assert (= (and b!1328814 res!881736) b!1328806))

(assert (= (and b!1328806 res!881738) b!1328811))

(assert (= (and b!1328811 res!881744) b!1328812))

(assert (= (and b!1328812 res!881739) b!1328810))

(assert (= (and b!1328804 condMapEmpty!56434) mapIsEmpty!56434))

(assert (= (and b!1328804 (not condMapEmpty!56434)) mapNonEmpty!56434))

(get-info :version)

(assert (= (and mapNonEmpty!56434 ((_ is ValueCellFull!17355) mapValue!56434)) b!1328805))

(assert (= (and b!1328804 ((_ is ValueCellFull!17355) mapDefault!56434)) b!1328807))

(assert (= start!112238 b!1328804))

(declare-fun b_lambda!23867 () Bool)

(assert (=> (not b_lambda!23867) (not b!1328810)))

(declare-fun t!44945 () Bool)

(declare-fun tb!11821 () Bool)

(assert (=> (and start!112238 (= defaultEntry!1323 defaultEntry!1323) t!44945) tb!11821))

(declare-fun result!24705 () Bool)

(assert (=> tb!11821 (= result!24705 tp_is_empty!36507)))

(assert (=> b!1328810 t!44945))

(declare-fun b_and!49261 () Bool)

(assert (= b_and!49259 (and (=> t!44945 result!24705) b_and!49261)))

(declare-fun m!1217659 () Bool)

(assert (=> b!1328814 m!1217659))

(assert (=> b!1328814 m!1217659))

(declare-fun m!1217661 () Bool)

(assert (=> b!1328814 m!1217661))

(declare-fun m!1217663 () Bool)

(assert (=> b!1328811 m!1217663))

(assert (=> b!1328811 m!1217663))

(declare-fun m!1217665 () Bool)

(assert (=> b!1328811 m!1217665))

(declare-fun m!1217667 () Bool)

(assert (=> b!1328815 m!1217667))

(assert (=> b!1328806 m!1217663))

(declare-fun m!1217669 () Bool)

(assert (=> mapNonEmpty!56434 m!1217669))

(declare-fun m!1217671 () Bool)

(assert (=> b!1328810 m!1217671))

(declare-fun m!1217673 () Bool)

(assert (=> b!1328810 m!1217673))

(declare-fun m!1217675 () Bool)

(assert (=> b!1328810 m!1217675))

(declare-fun m!1217677 () Bool)

(assert (=> b!1328810 m!1217677))

(declare-fun m!1217679 () Bool)

(assert (=> b!1328810 m!1217679))

(assert (=> b!1328810 m!1217673))

(declare-fun m!1217681 () Bool)

(assert (=> b!1328810 m!1217681))

(assert (=> b!1328810 m!1217671))

(assert (=> b!1328810 m!1217675))

(assert (=> b!1328810 m!1217663))

(assert (=> b!1328810 m!1217677))

(assert (=> b!1328810 m!1217681))

(declare-fun m!1217683 () Bool)

(assert (=> b!1328810 m!1217683))

(declare-fun m!1217685 () Bool)

(assert (=> b!1328808 m!1217685))

(declare-fun m!1217687 () Bool)

(assert (=> start!112238 m!1217687))

(declare-fun m!1217689 () Bool)

(assert (=> start!112238 m!1217689))

(declare-fun m!1217691 () Bool)

(assert (=> start!112238 m!1217691))

(check-sat (not b!1328808) (not b!1328814) b_and!49261 (not mapNonEmpty!56434) (not b_next!30597) (not b!1328810) (not start!112238) (not b!1328815) (not b_lambda!23867) tp_is_empty!36507 (not b!1328811))
(check-sat b_and!49261 (not b_next!30597))
