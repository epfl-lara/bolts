; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112698 () Bool)

(assert start!112698)

(declare-fun b_free!30999 () Bool)

(declare-fun b_next!30999 () Bool)

(assert (=> start!112698 (= b_free!30999 (not b_next!30999))))

(declare-fun tp!108638 () Bool)

(declare-fun b_and!49945 () Bool)

(assert (=> start!112698 (= tp!108638 b_and!49945)))

(declare-fun mapIsEmpty!57041 () Bool)

(declare-fun mapRes!57041 () Bool)

(assert (=> mapIsEmpty!57041 mapRes!57041))

(declare-fun b!1336190 () Bool)

(declare-fun res!886824 () Bool)

(declare-fun e!760992 () Bool)

(assert (=> b!1336190 (=> (not res!886824) (not e!760992))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1336190 (= res!886824 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336191 () Bool)

(declare-fun e!760990 () Bool)

(declare-fun tp_is_empty!36909 () Bool)

(assert (=> b!1336191 (= e!760990 tp_is_empty!36909)))

(declare-fun res!886821 () Bool)

(assert (=> start!112698 (=> (not res!886821) (not e!760992))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112698 (= res!886821 (validMask!0 mask!1998))))

(assert (=> start!112698 e!760992))

(declare-datatypes ((V!54315 0))(
  ( (V!54316 (val!18529 Int)) )
))
(declare-datatypes ((ValueCell!17556 0))(
  ( (ValueCellFull!17556 (v!21167 V!54315)) (EmptyCell!17556) )
))
(declare-datatypes ((array!90651 0))(
  ( (array!90652 (arr!43786 (Array (_ BitVec 32) ValueCell!17556)) (size!44337 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90651)

(declare-fun e!760989 () Bool)

(declare-fun array_inv!32957 (array!90651) Bool)

(assert (=> start!112698 (and (array_inv!32957 _values!1320) e!760989)))

(assert (=> start!112698 true))

(declare-datatypes ((array!90653 0))(
  ( (array!90654 (arr!43787 (Array (_ BitVec 32) (_ BitVec 64))) (size!44338 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90653)

(declare-fun array_inv!32958 (array!90653) Bool)

(assert (=> start!112698 (array_inv!32958 _keys!1590)))

(assert (=> start!112698 tp!108638))

(assert (=> start!112698 tp_is_empty!36909))

(declare-fun b!1336192 () Bool)

(declare-fun res!886823 () Bool)

(assert (=> b!1336192 (=> (not res!886823) (not e!760992))))

(assert (=> b!1336192 (= res!886823 (and (= (size!44337 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44338 _keys!1590) (size!44337 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336193 () Bool)

(declare-fun res!886822 () Bool)

(assert (=> b!1336193 (=> (not res!886822) (not e!760992))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54315)

(declare-fun zeroValue!1262 () V!54315)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24050 0))(
  ( (tuple2!24051 (_1!12035 (_ BitVec 64)) (_2!12035 V!54315)) )
))
(declare-datatypes ((List!31219 0))(
  ( (Nil!31216) (Cons!31215 (h!32424 tuple2!24050) (t!45506 List!31219)) )
))
(declare-datatypes ((ListLongMap!21719 0))(
  ( (ListLongMap!21720 (toList!10875 List!31219)) )
))
(declare-fun contains!8976 (ListLongMap!21719 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5783 (array!90653 array!90651 (_ BitVec 32) (_ BitVec 32) V!54315 V!54315 (_ BitVec 32) Int) ListLongMap!21719)

(assert (=> b!1336193 (= res!886822 (contains!8976 (getCurrentListMap!5783 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1336194 () Bool)

(declare-fun res!886825 () Bool)

(assert (=> b!1336194 (=> (not res!886825) (not e!760992))))

(declare-datatypes ((List!31220 0))(
  ( (Nil!31217) (Cons!31216 (h!32425 (_ BitVec 64)) (t!45507 List!31220)) )
))
(declare-fun arrayNoDuplicates!0 (array!90653 (_ BitVec 32) List!31220) Bool)

(assert (=> b!1336194 (= res!886825 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31217))))

(declare-fun b!1336195 () Bool)

(declare-fun res!886820 () Bool)

(assert (=> b!1336195 (=> (not res!886820) (not e!760992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90653 (_ BitVec 32)) Bool)

(assert (=> b!1336195 (= res!886820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336196 () Bool)

(declare-fun res!886828 () Bool)

(assert (=> b!1336196 (=> (not res!886828) (not e!760992))))

(assert (=> b!1336196 (= res!886828 (not (= (select (arr!43787 _keys!1590) from!1980) k0!1153)))))

(declare-fun mapNonEmpty!57041 () Bool)

(declare-fun tp!108639 () Bool)

(assert (=> mapNonEmpty!57041 (= mapRes!57041 (and tp!108639 e!760990))))

(declare-fun mapRest!57041 () (Array (_ BitVec 32) ValueCell!17556))

(declare-fun mapValue!57041 () ValueCell!17556)

(declare-fun mapKey!57041 () (_ BitVec 32))

(assert (=> mapNonEmpty!57041 (= (arr!43786 _values!1320) (store mapRest!57041 mapKey!57041 mapValue!57041))))

(declare-fun b!1336197 () Bool)

(declare-fun e!760993 () Bool)

(assert (=> b!1336197 (= e!760993 tp_is_empty!36909)))

(declare-fun b!1336198 () Bool)

(assert (=> b!1336198 (= e!760992 (not true))))

(declare-fun lt!592682 () ListLongMap!21719)

(assert (=> b!1336198 (contains!8976 lt!592682 k0!1153)))

(declare-datatypes ((Unit!43848 0))(
  ( (Unit!43849) )
))
(declare-fun lt!592683 () Unit!43848)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!308 ((_ BitVec 64) (_ BitVec 64) V!54315 ListLongMap!21719) Unit!43848)

(assert (=> b!1336198 (= lt!592683 (lemmaInListMapAfterAddingDiffThenInBefore!308 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592682))))

(declare-fun +!4707 (ListLongMap!21719 tuple2!24050) ListLongMap!21719)

(declare-fun getCurrentListMapNoExtraKeys!6430 (array!90653 array!90651 (_ BitVec 32) (_ BitVec 32) V!54315 V!54315 (_ BitVec 32) Int) ListLongMap!21719)

(declare-fun get!22128 (ValueCell!17556 V!54315) V!54315)

(declare-fun dynLambda!3744 (Int (_ BitVec 64)) V!54315)

(assert (=> b!1336198 (= lt!592682 (+!4707 (getCurrentListMapNoExtraKeys!6430 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24051 (select (arr!43787 _keys!1590) from!1980) (get!22128 (select (arr!43786 _values!1320) from!1980) (dynLambda!3744 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1336199 () Bool)

(assert (=> b!1336199 (= e!760989 (and e!760993 mapRes!57041))))

(declare-fun condMapEmpty!57041 () Bool)

(declare-fun mapDefault!57041 () ValueCell!17556)

(assert (=> b!1336199 (= condMapEmpty!57041 (= (arr!43786 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17556)) mapDefault!57041)))))

(declare-fun b!1336200 () Bool)

(declare-fun res!886827 () Bool)

(assert (=> b!1336200 (=> (not res!886827) (not e!760992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336200 (= res!886827 (validKeyInArray!0 (select (arr!43787 _keys!1590) from!1980)))))

(declare-fun b!1336201 () Bool)

(declare-fun res!886826 () Bool)

(assert (=> b!1336201 (=> (not res!886826) (not e!760992))))

(assert (=> b!1336201 (= res!886826 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44338 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!112698 res!886821) b!1336192))

(assert (= (and b!1336192 res!886823) b!1336195))

(assert (= (and b!1336195 res!886820) b!1336194))

(assert (= (and b!1336194 res!886825) b!1336201))

(assert (= (and b!1336201 res!886826) b!1336193))

(assert (= (and b!1336193 res!886822) b!1336196))

(assert (= (and b!1336196 res!886828) b!1336200))

(assert (= (and b!1336200 res!886827) b!1336190))

(assert (= (and b!1336190 res!886824) b!1336198))

(assert (= (and b!1336199 condMapEmpty!57041) mapIsEmpty!57041))

(assert (= (and b!1336199 (not condMapEmpty!57041)) mapNonEmpty!57041))

(get-info :version)

(assert (= (and mapNonEmpty!57041 ((_ is ValueCellFull!17556) mapValue!57041)) b!1336191))

(assert (= (and b!1336199 ((_ is ValueCellFull!17556) mapDefault!57041)) b!1336197))

(assert (= start!112698 b!1336199))

(declare-fun b_lambda!24167 () Bool)

(assert (=> (not b_lambda!24167) (not b!1336198)))

(declare-fun t!45505 () Bool)

(declare-fun tb!12091 () Bool)

(assert (=> (and start!112698 (= defaultEntry!1323 defaultEntry!1323) t!45505) tb!12091))

(declare-fun result!25247 () Bool)

(assert (=> tb!12091 (= result!25247 tp_is_empty!36909)))

(assert (=> b!1336198 t!45505))

(declare-fun b_and!49947 () Bool)

(assert (= b_and!49945 (and (=> t!45505 result!25247) b_and!49947)))

(declare-fun m!1224335 () Bool)

(assert (=> b!1336194 m!1224335))

(declare-fun m!1224337 () Bool)

(assert (=> b!1336200 m!1224337))

(assert (=> b!1336200 m!1224337))

(declare-fun m!1224339 () Bool)

(assert (=> b!1336200 m!1224339))

(assert (=> b!1336196 m!1224337))

(declare-fun m!1224341 () Bool)

(assert (=> b!1336195 m!1224341))

(declare-fun m!1224343 () Bool)

(assert (=> b!1336198 m!1224343))

(declare-fun m!1224345 () Bool)

(assert (=> b!1336198 m!1224345))

(declare-fun m!1224347 () Bool)

(assert (=> b!1336198 m!1224347))

(declare-fun m!1224349 () Bool)

(assert (=> b!1336198 m!1224349))

(declare-fun m!1224351 () Bool)

(assert (=> b!1336198 m!1224351))

(declare-fun m!1224353 () Bool)

(assert (=> b!1336198 m!1224353))

(assert (=> b!1336198 m!1224347))

(declare-fun m!1224355 () Bool)

(assert (=> b!1336198 m!1224355))

(assert (=> b!1336198 m!1224349))

(assert (=> b!1336198 m!1224353))

(assert (=> b!1336198 m!1224337))

(declare-fun m!1224357 () Bool)

(assert (=> start!112698 m!1224357))

(declare-fun m!1224359 () Bool)

(assert (=> start!112698 m!1224359))

(declare-fun m!1224361 () Bool)

(assert (=> start!112698 m!1224361))

(declare-fun m!1224363 () Bool)

(assert (=> b!1336193 m!1224363))

(assert (=> b!1336193 m!1224363))

(declare-fun m!1224365 () Bool)

(assert (=> b!1336193 m!1224365))

(declare-fun m!1224367 () Bool)

(assert (=> mapNonEmpty!57041 m!1224367))

(check-sat (not b!1336195) (not b!1336194) (not b_next!30999) (not b!1336200) b_and!49947 (not b!1336193) (not b_lambda!24167) (not mapNonEmpty!57041) tp_is_empty!36909 (not b!1336198) (not start!112698))
(check-sat b_and!49947 (not b_next!30999))
