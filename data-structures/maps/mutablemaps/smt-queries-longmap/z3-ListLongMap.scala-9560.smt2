; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113260 () Bool)

(assert start!113260)

(declare-fun b_free!31275 () Bool)

(declare-fun b_next!31275 () Bool)

(assert (=> start!113260 (= b_free!31275 (not b_next!31275))))

(declare-fun tp!109631 () Bool)

(declare-fun b_and!50467 () Bool)

(assert (=> start!113260 (= tp!109631 b_and!50467)))

(declare-fun b!1343018 () Bool)

(declare-fun res!891129 () Bool)

(declare-fun e!764514 () Bool)

(assert (=> b!1343018 (=> (not res!891129) (not e!764514))))

(declare-datatypes ((array!91351 0))(
  ( (array!91352 (arr!44127 (Array (_ BitVec 32) (_ BitVec 64))) (size!44678 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91351)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343018 (= res!891129 (validKeyInArray!0 (select (arr!44127 _keys!1571) from!1960)))))

(declare-fun b!1343019 () Bool)

(declare-fun res!891136 () Bool)

(assert (=> b!1343019 (=> (not res!891136) (not e!764514))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1343019 (= res!891136 (not (= (select (arr!44127 _keys!1571) from!1960) k0!1142)))))

(declare-fun mapIsEmpty!57619 () Bool)

(declare-fun mapRes!57619 () Bool)

(assert (=> mapIsEmpty!57619 mapRes!57619))

(declare-fun b!1343020 () Bool)

(declare-fun res!891137 () Bool)

(assert (=> b!1343020 (=> (not res!891137) (not e!764514))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343020 (= res!891137 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343021 () Bool)

(declare-fun e!764516 () Bool)

(declare-fun e!764512 () Bool)

(assert (=> b!1343021 (= e!764516 (and e!764512 mapRes!57619))))

(declare-fun condMapEmpty!57619 () Bool)

(declare-datatypes ((V!54803 0))(
  ( (V!54804 (val!18712 Int)) )
))
(declare-datatypes ((ValueCell!17739 0))(
  ( (ValueCellFull!17739 (v!21358 V!54803)) (EmptyCell!17739) )
))
(declare-datatypes ((array!91353 0))(
  ( (array!91354 (arr!44128 (Array (_ BitVec 32) ValueCell!17739)) (size!44679 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91353)

(declare-fun mapDefault!57619 () ValueCell!17739)

(assert (=> b!1343021 (= condMapEmpty!57619 (= (arr!44128 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17739)) mapDefault!57619)))))

(declare-fun b!1343022 () Bool)

(declare-fun e!764513 () Bool)

(declare-fun tp_is_empty!37275 () Bool)

(assert (=> b!1343022 (= e!764513 tp_is_empty!37275)))

(declare-fun b!1343023 () Bool)

(declare-fun res!891133 () Bool)

(assert (=> b!1343023 (=> (not res!891133) (not e!764514))))

(declare-fun minValue!1245 () V!54803)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54803)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24256 0))(
  ( (tuple2!24257 (_1!12138 (_ BitVec 64)) (_2!12138 V!54803)) )
))
(declare-datatypes ((List!31434 0))(
  ( (Nil!31431) (Cons!31430 (h!32639 tuple2!24256) (t!45927 List!31434)) )
))
(declare-datatypes ((ListLongMap!21925 0))(
  ( (ListLongMap!21926 (toList!10978 List!31434)) )
))
(declare-fun contains!9090 (ListLongMap!21925 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5874 (array!91351 array!91353 (_ BitVec 32) (_ BitVec 32) V!54803 V!54803 (_ BitVec 32) Int) ListLongMap!21925)

(assert (=> b!1343023 (= res!891133 (contains!9090 (getCurrentListMap!5874 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343024 () Bool)

(declare-fun res!891130 () Bool)

(assert (=> b!1343024 (=> (not res!891130) (not e!764514))))

(assert (=> b!1343024 (= res!891130 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44678 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343025 () Bool)

(declare-fun res!891132 () Bool)

(assert (=> b!1343025 (=> (not res!891132) (not e!764514))))

(declare-datatypes ((List!31435 0))(
  ( (Nil!31432) (Cons!31431 (h!32640 (_ BitVec 64)) (t!45928 List!31435)) )
))
(declare-fun arrayNoDuplicates!0 (array!91351 (_ BitVec 32) List!31435) Bool)

(assert (=> b!1343025 (= res!891132 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31432))))

(declare-fun res!891131 () Bool)

(assert (=> start!113260 (=> (not res!891131) (not e!764514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113260 (= res!891131 (validMask!0 mask!1977))))

(assert (=> start!113260 e!764514))

(assert (=> start!113260 tp_is_empty!37275))

(assert (=> start!113260 true))

(declare-fun array_inv!33179 (array!91351) Bool)

(assert (=> start!113260 (array_inv!33179 _keys!1571)))

(declare-fun array_inv!33180 (array!91353) Bool)

(assert (=> start!113260 (and (array_inv!33180 _values!1303) e!764516)))

(assert (=> start!113260 tp!109631))

(declare-fun mapNonEmpty!57619 () Bool)

(declare-fun tp!109630 () Bool)

(assert (=> mapNonEmpty!57619 (= mapRes!57619 (and tp!109630 e!764513))))

(declare-fun mapRest!57619 () (Array (_ BitVec 32) ValueCell!17739))

(declare-fun mapKey!57619 () (_ BitVec 32))

(declare-fun mapValue!57619 () ValueCell!17739)

(assert (=> mapNonEmpty!57619 (= (arr!44128 _values!1303) (store mapRest!57619 mapKey!57619 mapValue!57619))))

(declare-fun b!1343026 () Bool)

(declare-fun res!891135 () Bool)

(assert (=> b!1343026 (=> (not res!891135) (not e!764514))))

(assert (=> b!1343026 (= res!891135 (and (= (size!44679 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44678 _keys!1571) (size!44679 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343027 () Bool)

(declare-fun res!891134 () Bool)

(assert (=> b!1343027 (=> (not res!891134) (not e!764514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91351 (_ BitVec 32)) Bool)

(assert (=> b!1343027 (= res!891134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343028 () Bool)

(assert (=> b!1343028 (= e!764514 (not true))))

(declare-fun lt!594705 () ListLongMap!21925)

(declare-fun +!4776 (ListLongMap!21925 tuple2!24256) ListLongMap!21925)

(assert (=> b!1343028 (contains!9090 (+!4776 lt!594705 (tuple2!24257 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44017 0))(
  ( (Unit!44018) )
))
(declare-fun lt!594707 () Unit!44017)

(declare-fun addStillContains!1202 (ListLongMap!21925 (_ BitVec 64) V!54803 (_ BitVec 64)) Unit!44017)

(assert (=> b!1343028 (= lt!594707 (addStillContains!1202 lt!594705 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1343028 (contains!9090 lt!594705 k0!1142)))

(declare-fun lt!594704 () Unit!44017)

(declare-fun lt!594706 () V!54803)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!368 ((_ BitVec 64) (_ BitVec 64) V!54803 ListLongMap!21925) Unit!44017)

(assert (=> b!1343028 (= lt!594704 (lemmaInListMapAfterAddingDiffThenInBefore!368 k0!1142 (select (arr!44127 _keys!1571) from!1960) lt!594706 lt!594705))))

(declare-fun lt!594708 () ListLongMap!21925)

(assert (=> b!1343028 (contains!9090 lt!594708 k0!1142)))

(declare-fun lt!594709 () Unit!44017)

(assert (=> b!1343028 (= lt!594709 (lemmaInListMapAfterAddingDiffThenInBefore!368 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594708))))

(assert (=> b!1343028 (= lt!594708 (+!4776 lt!594705 (tuple2!24257 (select (arr!44127 _keys!1571) from!1960) lt!594706)))))

(declare-fun get!22329 (ValueCell!17739 V!54803) V!54803)

(declare-fun dynLambda!3813 (Int (_ BitVec 64)) V!54803)

(assert (=> b!1343028 (= lt!594706 (get!22329 (select (arr!44128 _values!1303) from!1960) (dynLambda!3813 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6499 (array!91351 array!91353 (_ BitVec 32) (_ BitVec 32) V!54803 V!54803 (_ BitVec 32) Int) ListLongMap!21925)

(assert (=> b!1343028 (= lt!594705 (getCurrentListMapNoExtraKeys!6499 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343029 () Bool)

(assert (=> b!1343029 (= e!764512 tp_is_empty!37275)))

(assert (= (and start!113260 res!891131) b!1343026))

(assert (= (and b!1343026 res!891135) b!1343027))

(assert (= (and b!1343027 res!891134) b!1343025))

(assert (= (and b!1343025 res!891132) b!1343024))

(assert (= (and b!1343024 res!891130) b!1343023))

(assert (= (and b!1343023 res!891133) b!1343019))

(assert (= (and b!1343019 res!891136) b!1343018))

(assert (= (and b!1343018 res!891129) b!1343020))

(assert (= (and b!1343020 res!891137) b!1343028))

(assert (= (and b!1343021 condMapEmpty!57619) mapIsEmpty!57619))

(assert (= (and b!1343021 (not condMapEmpty!57619)) mapNonEmpty!57619))

(get-info :version)

(assert (= (and mapNonEmpty!57619 ((_ is ValueCellFull!17739) mapValue!57619)) b!1343022))

(assert (= (and b!1343021 ((_ is ValueCellFull!17739) mapDefault!57619)) b!1343029))

(assert (= start!113260 b!1343021))

(declare-fun b_lambda!24461 () Bool)

(assert (=> (not b_lambda!24461) (not b!1343028)))

(declare-fun t!45926 () Bool)

(declare-fun tb!12297 () Bool)

(assert (=> (and start!113260 (= defaultEntry!1306 defaultEntry!1306) t!45926) tb!12297))

(declare-fun result!25677 () Bool)

(assert (=> tb!12297 (= result!25677 tp_is_empty!37275)))

(assert (=> b!1343028 t!45926))

(declare-fun b_and!50469 () Bool)

(assert (= b_and!50467 (and (=> t!45926 result!25677) b_and!50469)))

(declare-fun m!1230723 () Bool)

(assert (=> b!1343025 m!1230723))

(declare-fun m!1230725 () Bool)

(assert (=> b!1343018 m!1230725))

(assert (=> b!1343018 m!1230725))

(declare-fun m!1230727 () Bool)

(assert (=> b!1343018 m!1230727))

(declare-fun m!1230729 () Bool)

(assert (=> mapNonEmpty!57619 m!1230729))

(declare-fun m!1230731 () Bool)

(assert (=> b!1343027 m!1230731))

(declare-fun m!1230733 () Bool)

(assert (=> start!113260 m!1230733))

(declare-fun m!1230735 () Bool)

(assert (=> start!113260 m!1230735))

(declare-fun m!1230737 () Bool)

(assert (=> start!113260 m!1230737))

(assert (=> b!1343019 m!1230725))

(declare-fun m!1230739 () Bool)

(assert (=> b!1343023 m!1230739))

(assert (=> b!1343023 m!1230739))

(declare-fun m!1230741 () Bool)

(assert (=> b!1343023 m!1230741))

(declare-fun m!1230743 () Bool)

(assert (=> b!1343028 m!1230743))

(assert (=> b!1343028 m!1230725))

(declare-fun m!1230745 () Bool)

(assert (=> b!1343028 m!1230745))

(declare-fun m!1230747 () Bool)

(assert (=> b!1343028 m!1230747))

(declare-fun m!1230749 () Bool)

(assert (=> b!1343028 m!1230749))

(declare-fun m!1230751 () Bool)

(assert (=> b!1343028 m!1230751))

(declare-fun m!1230753 () Bool)

(assert (=> b!1343028 m!1230753))

(declare-fun m!1230755 () Bool)

(assert (=> b!1343028 m!1230755))

(assert (=> b!1343028 m!1230751))

(assert (=> b!1343028 m!1230753))

(declare-fun m!1230757 () Bool)

(assert (=> b!1343028 m!1230757))

(declare-fun m!1230759 () Bool)

(assert (=> b!1343028 m!1230759))

(assert (=> b!1343028 m!1230747))

(declare-fun m!1230761 () Bool)

(assert (=> b!1343028 m!1230761))

(declare-fun m!1230763 () Bool)

(assert (=> b!1343028 m!1230763))

(assert (=> b!1343028 m!1230725))

(declare-fun m!1230765 () Bool)

(assert (=> b!1343028 m!1230765))

(check-sat (not mapNonEmpty!57619) b_and!50469 (not b!1343023) tp_is_empty!37275 (not b_lambda!24461) (not b!1343028) (not b!1343025) (not b_next!31275) (not start!113260) (not b!1343018) (not b!1343027))
(check-sat b_and!50469 (not b_next!31275))
