; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111754 () Bool)

(assert start!111754)

(declare-fun b_free!30375 () Bool)

(declare-fun b_next!30375 () Bool)

(assert (=> start!111754 (= b_free!30375 (not b_next!30375))))

(declare-fun tp!106602 () Bool)

(declare-fun b_and!48919 () Bool)

(assert (=> start!111754 (= tp!106602 b_and!48919)))

(declare-fun b!1323679 () Bool)

(declare-fun e!754624 () Bool)

(declare-fun e!754626 () Bool)

(declare-fun mapRes!55940 () Bool)

(assert (=> b!1323679 (= e!754624 (and e!754626 mapRes!55940))))

(declare-fun condMapEmpty!55940 () Bool)

(declare-datatypes ((V!53363 0))(
  ( (V!53364 (val!18172 Int)) )
))
(declare-datatypes ((ValueCell!17199 0))(
  ( (ValueCellFull!17199 (v!20800 V!53363)) (EmptyCell!17199) )
))
(declare-datatypes ((array!89265 0))(
  ( (array!89266 (arr!43102 (Array (_ BitVec 32) ValueCell!17199)) (size!43653 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89265)

(declare-fun mapDefault!55940 () ValueCell!17199)

(assert (=> b!1323679 (= condMapEmpty!55940 (= (arr!43102 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17199)) mapDefault!55940)))))

(declare-fun b!1323680 () Bool)

(declare-fun res!878698 () Bool)

(declare-fun e!754623 () Bool)

(assert (=> b!1323680 (=> (not res!878698) (not e!754623))))

(declare-datatypes ((array!89267 0))(
  ( (array!89268 (arr!43103 (Array (_ BitVec 32) (_ BitVec 64))) (size!43654 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89267)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1323680 (= res!878698 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43654 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323681 () Bool)

(declare-fun res!878699 () Bool)

(assert (=> b!1323681 (=> (not res!878699) (not e!754623))))

(declare-fun zeroValue!1279 () V!53363)

(declare-fun minValue!1279 () V!53363)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23580 0))(
  ( (tuple2!23581 (_1!11800 (_ BitVec 64)) (_2!11800 V!53363)) )
))
(declare-datatypes ((List!30752 0))(
  ( (Nil!30749) (Cons!30748 (h!31957 tuple2!23580) (t!44683 List!30752)) )
))
(declare-datatypes ((ListLongMap!21249 0))(
  ( (ListLongMap!21250 (toList!10640 List!30752)) )
))
(declare-fun contains!8731 (ListLongMap!21249 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5577 (array!89267 array!89265 (_ BitVec 32) (_ BitVec 32) V!53363 V!53363 (_ BitVec 32) Int) ListLongMap!21249)

(assert (=> b!1323681 (= res!878699 (contains!8731 (getCurrentListMap!5577 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!55940 () Bool)

(declare-fun tp!106601 () Bool)

(declare-fun e!754627 () Bool)

(assert (=> mapNonEmpty!55940 (= mapRes!55940 (and tp!106601 e!754627))))

(declare-fun mapValue!55940 () ValueCell!17199)

(declare-fun mapKey!55940 () (_ BitVec 32))

(declare-fun mapRest!55940 () (Array (_ BitVec 32) ValueCell!17199))

(assert (=> mapNonEmpty!55940 (= (arr!43102 _values!1337) (store mapRest!55940 mapKey!55940 mapValue!55940))))

(declare-fun b!1323683 () Bool)

(assert (=> b!1323683 (= e!754623 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-fun lt!589287 () ListLongMap!21249)

(declare-fun +!4585 (ListLongMap!21249 tuple2!23580) ListLongMap!21249)

(assert (=> b!1323683 (contains!8731 (+!4585 lt!589287 (tuple2!23581 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43570 0))(
  ( (Unit!43571) )
))
(declare-fun lt!589296 () Unit!43570)

(declare-fun addStillContains!1166 (ListLongMap!21249 (_ BitVec 64) V!53363 (_ BitVec 64)) Unit!43570)

(assert (=> b!1323683 (= lt!589296 (addStillContains!1166 lt!589287 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1323683 (contains!8731 lt!589287 k0!1164)))

(declare-fun lt!589295 () ListLongMap!21249)

(declare-fun lt!589291 () tuple2!23580)

(assert (=> b!1323683 (= lt!589287 (+!4585 lt!589295 lt!589291))))

(declare-fun lt!589290 () Unit!43570)

(assert (=> b!1323683 (= lt!589290 (addStillContains!1166 lt!589295 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1323683 (contains!8731 lt!589295 k0!1164)))

(declare-fun lt!589292 () V!53363)

(declare-fun lt!589293 () Unit!43570)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!200 ((_ BitVec 64) (_ BitVec 64) V!53363 ListLongMap!21249) Unit!43570)

(assert (=> b!1323683 (= lt!589293 (lemmaInListMapAfterAddingDiffThenInBefore!200 k0!1164 (select (arr!43103 _keys!1609) from!2000) lt!589292 lt!589295))))

(declare-fun lt!589289 () ListLongMap!21249)

(assert (=> b!1323683 (contains!8731 lt!589289 k0!1164)))

(declare-fun lt!589297 () Unit!43570)

(assert (=> b!1323683 (= lt!589297 (lemmaInListMapAfterAddingDiffThenInBefore!200 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589289))))

(declare-fun lt!589294 () ListLongMap!21249)

(assert (=> b!1323683 (contains!8731 lt!589294 k0!1164)))

(declare-fun lt!589288 () Unit!43570)

(assert (=> b!1323683 (= lt!589288 (lemmaInListMapAfterAddingDiffThenInBefore!200 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589294))))

(assert (=> b!1323683 (= lt!589294 (+!4585 lt!589289 lt!589291))))

(assert (=> b!1323683 (= lt!589291 (tuple2!23581 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323683 (= lt!589289 (+!4585 lt!589295 (tuple2!23581 (select (arr!43103 _keys!1609) from!2000) lt!589292)))))

(declare-fun get!21757 (ValueCell!17199 V!53363) V!53363)

(declare-fun dynLambda!3622 (Int (_ BitVec 64)) V!53363)

(assert (=> b!1323683 (= lt!589292 (get!21757 (select (arr!43102 _values!1337) from!2000) (dynLambda!3622 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6300 (array!89267 array!89265 (_ BitVec 32) (_ BitVec 32) V!53363 V!53363 (_ BitVec 32) Int) ListLongMap!21249)

(assert (=> b!1323683 (= lt!589295 (getCurrentListMapNoExtraKeys!6300 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323684 () Bool)

(declare-fun tp_is_empty!36195 () Bool)

(assert (=> b!1323684 (= e!754626 tp_is_empty!36195)))

(declare-fun b!1323685 () Bool)

(assert (=> b!1323685 (= e!754627 tp_is_empty!36195)))

(declare-fun mapIsEmpty!55940 () Bool)

(assert (=> mapIsEmpty!55940 mapRes!55940))

(declare-fun b!1323686 () Bool)

(declare-fun res!878697 () Bool)

(assert (=> b!1323686 (=> (not res!878697) (not e!754623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89267 (_ BitVec 32)) Bool)

(assert (=> b!1323686 (= res!878697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323687 () Bool)

(declare-fun res!878702 () Bool)

(assert (=> b!1323687 (=> (not res!878702) (not e!754623))))

(declare-datatypes ((List!30753 0))(
  ( (Nil!30750) (Cons!30749 (h!31958 (_ BitVec 64)) (t!44684 List!30753)) )
))
(declare-fun arrayNoDuplicates!0 (array!89267 (_ BitVec 32) List!30753) Bool)

(assert (=> b!1323687 (= res!878702 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30750))))

(declare-fun b!1323682 () Bool)

(declare-fun res!878703 () Bool)

(assert (=> b!1323682 (=> (not res!878703) (not e!754623))))

(assert (=> b!1323682 (= res!878703 (not (= (select (arr!43103 _keys!1609) from!2000) k0!1164)))))

(declare-fun res!878701 () Bool)

(assert (=> start!111754 (=> (not res!878701) (not e!754623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111754 (= res!878701 (validMask!0 mask!2019))))

(assert (=> start!111754 e!754623))

(declare-fun array_inv!32493 (array!89267) Bool)

(assert (=> start!111754 (array_inv!32493 _keys!1609)))

(assert (=> start!111754 true))

(assert (=> start!111754 tp_is_empty!36195))

(declare-fun array_inv!32494 (array!89265) Bool)

(assert (=> start!111754 (and (array_inv!32494 _values!1337) e!754624)))

(assert (=> start!111754 tp!106602))

(declare-fun b!1323688 () Bool)

(declare-fun res!878700 () Bool)

(assert (=> b!1323688 (=> (not res!878700) (not e!754623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323688 (= res!878700 (validKeyInArray!0 (select (arr!43103 _keys!1609) from!2000)))))

(declare-fun b!1323689 () Bool)

(declare-fun res!878704 () Bool)

(assert (=> b!1323689 (=> (not res!878704) (not e!754623))))

(assert (=> b!1323689 (= res!878704 (and (= (size!43653 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43654 _keys!1609) (size!43653 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(assert (= (and start!111754 res!878701) b!1323689))

(assert (= (and b!1323689 res!878704) b!1323686))

(assert (= (and b!1323686 res!878697) b!1323687))

(assert (= (and b!1323687 res!878702) b!1323680))

(assert (= (and b!1323680 res!878698) b!1323681))

(assert (= (and b!1323681 res!878699) b!1323682))

(assert (= (and b!1323682 res!878703) b!1323688))

(assert (= (and b!1323688 res!878700) b!1323683))

(assert (= (and b!1323679 condMapEmpty!55940) mapIsEmpty!55940))

(assert (= (and b!1323679 (not condMapEmpty!55940)) mapNonEmpty!55940))

(get-info :version)

(assert (= (and mapNonEmpty!55940 ((_ is ValueCellFull!17199) mapValue!55940)) b!1323685))

(assert (= (and b!1323679 ((_ is ValueCellFull!17199) mapDefault!55940)) b!1323684))

(assert (= start!111754 b!1323679))

(declare-fun b_lambda!23711 () Bool)

(assert (=> (not b_lambda!23711) (not b!1323683)))

(declare-fun t!44682 () Bool)

(declare-fun tb!11735 () Bool)

(assert (=> (and start!111754 (= defaultEntry!1340 defaultEntry!1340) t!44682) tb!11735))

(declare-fun result!24517 () Bool)

(assert (=> tb!11735 (= result!24517 tp_is_empty!36195)))

(assert (=> b!1323683 t!44682))

(declare-fun b_and!48921 () Bool)

(assert (= b_and!48919 (and (=> t!44682 result!24517) b_and!48921)))

(declare-fun m!1212731 () Bool)

(assert (=> start!111754 m!1212731))

(declare-fun m!1212733 () Bool)

(assert (=> start!111754 m!1212733))

(declare-fun m!1212735 () Bool)

(assert (=> start!111754 m!1212735))

(declare-fun m!1212737 () Bool)

(assert (=> b!1323683 m!1212737))

(declare-fun m!1212739 () Bool)

(assert (=> b!1323683 m!1212739))

(declare-fun m!1212741 () Bool)

(assert (=> b!1323683 m!1212741))

(declare-fun m!1212743 () Bool)

(assert (=> b!1323683 m!1212743))

(declare-fun m!1212745 () Bool)

(assert (=> b!1323683 m!1212745))

(declare-fun m!1212747 () Bool)

(assert (=> b!1323683 m!1212747))

(declare-fun m!1212749 () Bool)

(assert (=> b!1323683 m!1212749))

(declare-fun m!1212751 () Bool)

(assert (=> b!1323683 m!1212751))

(declare-fun m!1212753 () Bool)

(assert (=> b!1323683 m!1212753))

(declare-fun m!1212755 () Bool)

(assert (=> b!1323683 m!1212755))

(declare-fun m!1212757 () Bool)

(assert (=> b!1323683 m!1212757))

(assert (=> b!1323683 m!1212743))

(declare-fun m!1212759 () Bool)

(assert (=> b!1323683 m!1212759))

(declare-fun m!1212761 () Bool)

(assert (=> b!1323683 m!1212761))

(declare-fun m!1212763 () Bool)

(assert (=> b!1323683 m!1212763))

(declare-fun m!1212765 () Bool)

(assert (=> b!1323683 m!1212765))

(assert (=> b!1323683 m!1212757))

(declare-fun m!1212767 () Bool)

(assert (=> b!1323683 m!1212767))

(declare-fun m!1212769 () Bool)

(assert (=> b!1323683 m!1212769))

(assert (=> b!1323683 m!1212741))

(declare-fun m!1212771 () Bool)

(assert (=> b!1323683 m!1212771))

(declare-fun m!1212773 () Bool)

(assert (=> b!1323683 m!1212773))

(assert (=> b!1323683 m!1212753))

(declare-fun m!1212775 () Bool)

(assert (=> b!1323686 m!1212775))

(declare-fun m!1212777 () Bool)

(assert (=> b!1323687 m!1212777))

(declare-fun m!1212779 () Bool)

(assert (=> mapNonEmpty!55940 m!1212779))

(assert (=> b!1323688 m!1212753))

(assert (=> b!1323688 m!1212753))

(declare-fun m!1212781 () Bool)

(assert (=> b!1323688 m!1212781))

(declare-fun m!1212783 () Bool)

(assert (=> b!1323681 m!1212783))

(assert (=> b!1323681 m!1212783))

(declare-fun m!1212785 () Bool)

(assert (=> b!1323681 m!1212785))

(assert (=> b!1323682 m!1212753))

(check-sat (not b!1323687) (not b_lambda!23711) tp_is_empty!36195 (not b_next!30375) (not mapNonEmpty!55940) (not b!1323683) b_and!48921 (not b!1323681) (not b!1323688) (not b!1323686) (not start!111754))
(check-sat b_and!48921 (not b_next!30375))
