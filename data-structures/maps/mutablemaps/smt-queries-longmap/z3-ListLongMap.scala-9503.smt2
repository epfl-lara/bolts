; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112722 () Bool)

(assert start!112722)

(declare-fun b_free!31023 () Bool)

(declare-fun b_next!31023 () Bool)

(assert (=> start!112722 (= b_free!31023 (not b_next!31023))))

(declare-fun tp!108711 () Bool)

(declare-fun b_and!49993 () Bool)

(assert (=> start!112722 (= tp!108711 b_and!49993)))

(declare-fun b!1336646 () Bool)

(declare-fun res!887145 () Bool)

(declare-fun e!761171 () Bool)

(assert (=> b!1336646 (=> (not res!887145) (not e!761171))))

(declare-datatypes ((V!54347 0))(
  ( (V!54348 (val!18541 Int)) )
))
(declare-datatypes ((ValueCell!17568 0))(
  ( (ValueCellFull!17568 (v!21179 V!54347)) (EmptyCell!17568) )
))
(declare-datatypes ((array!90697 0))(
  ( (array!90698 (arr!43809 (Array (_ BitVec 32) ValueCell!17568)) (size!44360 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90697)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90699 0))(
  ( (array!90700 (arr!43810 (Array (_ BitVec 32) (_ BitVec 64))) (size!44361 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90699)

(assert (=> b!1336646 (= res!887145 (and (= (size!44360 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44361 _keys!1590) (size!44360 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336647 () Bool)

(declare-fun res!887146 () Bool)

(assert (=> b!1336647 (=> (not res!887146) (not e!761171))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1336647 (= res!887146 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44361 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!887150 () Bool)

(assert (=> start!112722 (=> (not res!887150) (not e!761171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112722 (= res!887150 (validMask!0 mask!1998))))

(assert (=> start!112722 e!761171))

(declare-fun e!761173 () Bool)

(declare-fun array_inv!32967 (array!90697) Bool)

(assert (=> start!112722 (and (array_inv!32967 _values!1320) e!761173)))

(assert (=> start!112722 true))

(declare-fun array_inv!32968 (array!90699) Bool)

(assert (=> start!112722 (array_inv!32968 _keys!1590)))

(assert (=> start!112722 tp!108711))

(declare-fun tp_is_empty!36933 () Bool)

(assert (=> start!112722 tp_is_empty!36933))

(declare-fun b!1336648 () Bool)

(declare-fun res!887151 () Bool)

(assert (=> b!1336648 (=> (not res!887151) (not e!761171))))

(declare-datatypes ((List!31230 0))(
  ( (Nil!31227) (Cons!31226 (h!32435 (_ BitVec 64)) (t!45541 List!31230)) )
))
(declare-fun arrayNoDuplicates!0 (array!90699 (_ BitVec 32) List!31230) Bool)

(assert (=> b!1336648 (= res!887151 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31227))))

(declare-fun b!1336649 () Bool)

(declare-fun e!761170 () Bool)

(assert (=> b!1336649 (= e!761170 tp_is_empty!36933)))

(declare-fun b!1336650 () Bool)

(declare-fun res!887144 () Bool)

(assert (=> b!1336650 (=> (not res!887144) (not e!761171))))

(assert (=> b!1336650 (= res!887144 (not (= (select (arr!43810 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1336651 () Bool)

(assert (=> b!1336651 (= e!761171 (not true))))

(declare-datatypes ((tuple2!24064 0))(
  ( (tuple2!24065 (_1!12042 (_ BitVec 64)) (_2!12042 V!54347)) )
))
(declare-datatypes ((List!31231 0))(
  ( (Nil!31228) (Cons!31227 (h!32436 tuple2!24064) (t!45542 List!31231)) )
))
(declare-datatypes ((ListLongMap!21733 0))(
  ( (ListLongMap!21734 (toList!10882 List!31231)) )
))
(declare-fun lt!592769 () ListLongMap!21733)

(declare-fun contains!8983 (ListLongMap!21733 (_ BitVec 64)) Bool)

(assert (=> b!1336651 (contains!8983 lt!592769 k0!1153)))

(declare-datatypes ((Unit!43862 0))(
  ( (Unit!43863) )
))
(declare-fun lt!592773 () Unit!43862)

(declare-fun lt!592772 () V!54347)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!315 ((_ BitVec 64) (_ BitVec 64) V!54347 ListLongMap!21733) Unit!43862)

(assert (=> b!1336651 (= lt!592773 (lemmaInListMapAfterAddingDiffThenInBefore!315 k0!1153 (select (arr!43810 _keys!1590) from!1980) lt!592772 lt!592769))))

(declare-fun lt!592770 () ListLongMap!21733)

(assert (=> b!1336651 (contains!8983 lt!592770 k0!1153)))

(declare-fun minValue!1262 () V!54347)

(declare-fun lt!592771 () Unit!43862)

(assert (=> b!1336651 (= lt!592771 (lemmaInListMapAfterAddingDiffThenInBefore!315 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592770))))

(declare-fun +!4714 (ListLongMap!21733 tuple2!24064) ListLongMap!21733)

(assert (=> b!1336651 (= lt!592770 (+!4714 lt!592769 (tuple2!24065 (select (arr!43810 _keys!1590) from!1980) lt!592772)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22143 (ValueCell!17568 V!54347) V!54347)

(declare-fun dynLambda!3751 (Int (_ BitVec 64)) V!54347)

(assert (=> b!1336651 (= lt!592772 (get!22143 (select (arr!43809 _values!1320) from!1980) (dynLambda!3751 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!54347)

(declare-fun getCurrentListMapNoExtraKeys!6437 (array!90699 array!90697 (_ BitVec 32) (_ BitVec 32) V!54347 V!54347 (_ BitVec 32) Int) ListLongMap!21733)

(assert (=> b!1336651 (= lt!592769 (getCurrentListMapNoExtraKeys!6437 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1336652 () Bool)

(declare-fun e!761172 () Bool)

(assert (=> b!1336652 (= e!761172 tp_is_empty!36933)))

(declare-fun b!1336653 () Bool)

(declare-fun res!887152 () Bool)

(assert (=> b!1336653 (=> (not res!887152) (not e!761171))))

(declare-fun getCurrentListMap!5789 (array!90699 array!90697 (_ BitVec 32) (_ BitVec 32) V!54347 V!54347 (_ BitVec 32) Int) ListLongMap!21733)

(assert (=> b!1336653 (= res!887152 (contains!8983 (getCurrentListMap!5789 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapIsEmpty!57077 () Bool)

(declare-fun mapRes!57077 () Bool)

(assert (=> mapIsEmpty!57077 mapRes!57077))

(declare-fun b!1336654 () Bool)

(declare-fun res!887148 () Bool)

(assert (=> b!1336654 (=> (not res!887148) (not e!761171))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336654 (= res!887148 (validKeyInArray!0 (select (arr!43810 _keys!1590) from!1980)))))

(declare-fun b!1336655 () Bool)

(declare-fun res!887149 () Bool)

(assert (=> b!1336655 (=> (not res!887149) (not e!761171))))

(assert (=> b!1336655 (= res!887149 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57077 () Bool)

(declare-fun tp!108710 () Bool)

(assert (=> mapNonEmpty!57077 (= mapRes!57077 (and tp!108710 e!761172))))

(declare-fun mapRest!57077 () (Array (_ BitVec 32) ValueCell!17568))

(declare-fun mapValue!57077 () ValueCell!17568)

(declare-fun mapKey!57077 () (_ BitVec 32))

(assert (=> mapNonEmpty!57077 (= (arr!43809 _values!1320) (store mapRest!57077 mapKey!57077 mapValue!57077))))

(declare-fun b!1336656 () Bool)

(assert (=> b!1336656 (= e!761173 (and e!761170 mapRes!57077))))

(declare-fun condMapEmpty!57077 () Bool)

(declare-fun mapDefault!57077 () ValueCell!17568)

(assert (=> b!1336656 (= condMapEmpty!57077 (= (arr!43809 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17568)) mapDefault!57077)))))

(declare-fun b!1336657 () Bool)

(declare-fun res!887147 () Bool)

(assert (=> b!1336657 (=> (not res!887147) (not e!761171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90699 (_ BitVec 32)) Bool)

(assert (=> b!1336657 (= res!887147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(assert (= (and start!112722 res!887150) b!1336646))

(assert (= (and b!1336646 res!887145) b!1336657))

(assert (= (and b!1336657 res!887147) b!1336648))

(assert (= (and b!1336648 res!887151) b!1336647))

(assert (= (and b!1336647 res!887146) b!1336653))

(assert (= (and b!1336653 res!887152) b!1336650))

(assert (= (and b!1336650 res!887144) b!1336654))

(assert (= (and b!1336654 res!887148) b!1336655))

(assert (= (and b!1336655 res!887149) b!1336651))

(assert (= (and b!1336656 condMapEmpty!57077) mapIsEmpty!57077))

(assert (= (and b!1336656 (not condMapEmpty!57077)) mapNonEmpty!57077))

(get-info :version)

(assert (= (and mapNonEmpty!57077 ((_ is ValueCellFull!17568) mapValue!57077)) b!1336652))

(assert (= (and b!1336656 ((_ is ValueCellFull!17568) mapDefault!57077)) b!1336649))

(assert (= start!112722 b!1336656))

(declare-fun b_lambda!24191 () Bool)

(assert (=> (not b_lambda!24191) (not b!1336651)))

(declare-fun t!45540 () Bool)

(declare-fun tb!12115 () Bool)

(assert (=> (and start!112722 (= defaultEntry!1323 defaultEntry!1323) t!45540) tb!12115))

(declare-fun result!25295 () Bool)

(assert (=> tb!12115 (= result!25295 tp_is_empty!36933)))

(assert (=> b!1336651 t!45540))

(declare-fun b_and!49995 () Bool)

(assert (= b_and!49993 (and (=> t!45540 result!25295) b_and!49995)))

(declare-fun m!1224747 () Bool)

(assert (=> b!1336651 m!1224747))

(declare-fun m!1224749 () Bool)

(assert (=> b!1336651 m!1224749))

(declare-fun m!1224751 () Bool)

(assert (=> b!1336651 m!1224751))

(declare-fun m!1224753 () Bool)

(assert (=> b!1336651 m!1224753))

(declare-fun m!1224755 () Bool)

(assert (=> b!1336651 m!1224755))

(assert (=> b!1336651 m!1224747))

(declare-fun m!1224757 () Bool)

(assert (=> b!1336651 m!1224757))

(assert (=> b!1336651 m!1224753))

(declare-fun m!1224759 () Bool)

(assert (=> b!1336651 m!1224759))

(declare-fun m!1224761 () Bool)

(assert (=> b!1336651 m!1224761))

(declare-fun m!1224763 () Bool)

(assert (=> b!1336651 m!1224763))

(assert (=> b!1336651 m!1224755))

(declare-fun m!1224765 () Bool)

(assert (=> b!1336651 m!1224765))

(declare-fun m!1224767 () Bool)

(assert (=> start!112722 m!1224767))

(declare-fun m!1224769 () Bool)

(assert (=> start!112722 m!1224769))

(declare-fun m!1224771 () Bool)

(assert (=> start!112722 m!1224771))

(assert (=> b!1336650 m!1224753))

(declare-fun m!1224773 () Bool)

(assert (=> b!1336657 m!1224773))

(assert (=> b!1336654 m!1224753))

(assert (=> b!1336654 m!1224753))

(declare-fun m!1224775 () Bool)

(assert (=> b!1336654 m!1224775))

(declare-fun m!1224777 () Bool)

(assert (=> b!1336648 m!1224777))

(declare-fun m!1224779 () Bool)

(assert (=> mapNonEmpty!57077 m!1224779))

(declare-fun m!1224781 () Bool)

(assert (=> b!1336653 m!1224781))

(assert (=> b!1336653 m!1224781))

(declare-fun m!1224783 () Bool)

(assert (=> b!1336653 m!1224783))

(check-sat (not b_next!31023) (not b!1336653) (not b!1336657) (not mapNonEmpty!57077) (not b!1336648) (not start!112722) (not b_lambda!24191) (not b!1336654) (not b!1336651) b_and!49995 tp_is_empty!36933)
(check-sat b_and!49995 (not b_next!31023))
