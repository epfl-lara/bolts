; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113570 () Bool)

(assert start!113570)

(declare-fun b_free!31527 () Bool)

(declare-fun b_next!31527 () Bool)

(assert (=> start!113570 (= b_free!31527 (not b_next!31527))))

(declare-fun tp!110391 () Bool)

(declare-fun b_and!50853 () Bool)

(assert (=> start!113570 (= tp!110391 b_and!50853)))

(declare-fun b!1347554 () Bool)

(declare-fun e!766726 () Bool)

(declare-fun e!766727 () Bool)

(declare-fun mapRes!58001 () Bool)

(assert (=> b!1347554 (= e!766726 (and e!766727 mapRes!58001))))

(declare-fun condMapEmpty!58001 () Bool)

(declare-datatypes ((V!55139 0))(
  ( (V!55140 (val!18838 Int)) )
))
(declare-datatypes ((ValueCell!17865 0))(
  ( (ValueCellFull!17865 (v!21487 V!55139)) (EmptyCell!17865) )
))
(declare-datatypes ((array!91845 0))(
  ( (array!91846 (arr!44373 (Array (_ BitVec 32) ValueCell!17865)) (size!44924 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91845)

(declare-fun mapDefault!58001 () ValueCell!17865)

(assert (=> b!1347554 (= condMapEmpty!58001 (= (arr!44373 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17865)) mapDefault!58001)))))

(declare-fun b!1347555 () Bool)

(declare-fun res!894194 () Bool)

(declare-fun e!766730 () Bool)

(assert (=> b!1347555 (=> (not res!894194) (not e!766730))))

(declare-datatypes ((array!91847 0))(
  ( (array!91848 (arr!44374 (Array (_ BitVec 32) (_ BitVec 64))) (size!44925 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91847)

(declare-datatypes ((List!31595 0))(
  ( (Nil!31592) (Cons!31591 (h!32800 (_ BitVec 64)) (t!46208 List!31595)) )
))
(declare-fun arrayNoDuplicates!0 (array!91847 (_ BitVec 32) List!31595) Bool)

(assert (=> b!1347555 (= res!894194 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31592))))

(declare-fun b!1347556 () Bool)

(declare-fun res!894188 () Bool)

(assert (=> b!1347556 (=> (not res!894188) (not e!766730))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1347556 (= res!894188 (and (= (size!44924 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44925 _keys!1571) (size!44924 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1347557 () Bool)

(declare-fun tp_is_empty!37527 () Bool)

(assert (=> b!1347557 (= e!766727 tp_is_empty!37527)))

(declare-fun b!1347558 () Bool)

(declare-fun res!894192 () Bool)

(assert (=> b!1347558 (=> (not res!894192) (not e!766730))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347558 (= res!894192 (validKeyInArray!0 (select (arr!44374 _keys!1571) from!1960)))))

(declare-fun mapIsEmpty!58001 () Bool)

(assert (=> mapIsEmpty!58001 mapRes!58001))

(declare-fun b!1347559 () Bool)

(declare-fun res!894196 () Bool)

(assert (=> b!1347559 (=> (not res!894196) (not e!766730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91847 (_ BitVec 32)) Bool)

(assert (=> b!1347559 (= res!894196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1347560 () Bool)

(declare-fun res!894189 () Bool)

(assert (=> b!1347560 (=> (not res!894189) (not e!766730))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1347560 (= res!894189 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44925 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347561 () Bool)

(assert (=> b!1347561 (= e!766730 (not true))))

(declare-datatypes ((tuple2!24426 0))(
  ( (tuple2!24427 (_1!12223 (_ BitVec 64)) (_2!12223 V!55139)) )
))
(declare-datatypes ((List!31596 0))(
  ( (Nil!31593) (Cons!31592 (h!32801 tuple2!24426) (t!46209 List!31596)) )
))
(declare-datatypes ((ListLongMap!22095 0))(
  ( (ListLongMap!22096 (toList!11063 List!31596)) )
))
(declare-fun lt!595772 () ListLongMap!22095)

(declare-fun contains!9176 (ListLongMap!22095 (_ BitVec 64)) Bool)

(assert (=> b!1347561 (contains!9176 lt!595772 k0!1142)))

(declare-fun zeroValue!1245 () V!55139)

(declare-datatypes ((Unit!44098 0))(
  ( (Unit!44099) )
))
(declare-fun lt!595771 () Unit!44098)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!401 ((_ BitVec 64) (_ BitVec 64) V!55139 ListLongMap!22095) Unit!44098)

(assert (=> b!1347561 (= lt!595771 (lemmaInListMapAfterAddingDiffThenInBefore!401 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595772))))

(declare-fun minValue!1245 () V!55139)

(declare-fun defaultEntry!1306 () Int)

(declare-fun +!4815 (ListLongMap!22095 tuple2!24426) ListLongMap!22095)

(declare-fun getCurrentListMapNoExtraKeys!6542 (array!91847 array!91845 (_ BitVec 32) (_ BitVec 32) V!55139 V!55139 (_ BitVec 32) Int) ListLongMap!22095)

(declare-fun get!22455 (ValueCell!17865 V!55139) V!55139)

(declare-fun dynLambda!3852 (Int (_ BitVec 64)) V!55139)

(assert (=> b!1347561 (= lt!595772 (+!4815 (getCurrentListMapNoExtraKeys!6542 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24427 (select (arr!44374 _keys!1571) from!1960) (get!22455 (select (arr!44373 _values!1303) from!1960) (dynLambda!3852 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1347562 () Bool)

(declare-fun res!894195 () Bool)

(assert (=> b!1347562 (=> (not res!894195) (not e!766730))))

(assert (=> b!1347562 (= res!894195 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!58001 () Bool)

(declare-fun tp!110390 () Bool)

(declare-fun e!766729 () Bool)

(assert (=> mapNonEmpty!58001 (= mapRes!58001 (and tp!110390 e!766729))))

(declare-fun mapKey!58001 () (_ BitVec 32))

(declare-fun mapRest!58001 () (Array (_ BitVec 32) ValueCell!17865))

(declare-fun mapValue!58001 () ValueCell!17865)

(assert (=> mapNonEmpty!58001 (= (arr!44373 _values!1303) (store mapRest!58001 mapKey!58001 mapValue!58001))))

(declare-fun b!1347563 () Bool)

(declare-fun res!894191 () Bool)

(assert (=> b!1347563 (=> (not res!894191) (not e!766730))))

(declare-fun getCurrentListMap!5953 (array!91847 array!91845 (_ BitVec 32) (_ BitVec 32) V!55139 V!55139 (_ BitVec 32) Int) ListLongMap!22095)

(assert (=> b!1347563 (= res!894191 (contains!9176 (getCurrentListMap!5953 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun res!894193 () Bool)

(assert (=> start!113570 (=> (not res!894193) (not e!766730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113570 (= res!894193 (validMask!0 mask!1977))))

(assert (=> start!113570 e!766730))

(assert (=> start!113570 tp_is_empty!37527))

(assert (=> start!113570 true))

(declare-fun array_inv!33341 (array!91847) Bool)

(assert (=> start!113570 (array_inv!33341 _keys!1571)))

(declare-fun array_inv!33342 (array!91845) Bool)

(assert (=> start!113570 (and (array_inv!33342 _values!1303) e!766726)))

(assert (=> start!113570 tp!110391))

(declare-fun b!1347564 () Bool)

(declare-fun res!894190 () Bool)

(assert (=> b!1347564 (=> (not res!894190) (not e!766730))))

(assert (=> b!1347564 (= res!894190 (not (= (select (arr!44374 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1347565 () Bool)

(assert (=> b!1347565 (= e!766729 tp_is_empty!37527)))

(assert (= (and start!113570 res!894193) b!1347556))

(assert (= (and b!1347556 res!894188) b!1347559))

(assert (= (and b!1347559 res!894196) b!1347555))

(assert (= (and b!1347555 res!894194) b!1347560))

(assert (= (and b!1347560 res!894189) b!1347563))

(assert (= (and b!1347563 res!894191) b!1347564))

(assert (= (and b!1347564 res!894190) b!1347558))

(assert (= (and b!1347558 res!894192) b!1347562))

(assert (= (and b!1347562 res!894195) b!1347561))

(assert (= (and b!1347554 condMapEmpty!58001) mapIsEmpty!58001))

(assert (= (and b!1347554 (not condMapEmpty!58001)) mapNonEmpty!58001))

(get-info :version)

(assert (= (and mapNonEmpty!58001 ((_ is ValueCellFull!17865) mapValue!58001)) b!1347565))

(assert (= (and b!1347554 ((_ is ValueCellFull!17865) mapDefault!58001)) b!1347557))

(assert (= start!113570 b!1347554))

(declare-fun b_lambda!24611 () Bool)

(assert (=> (not b_lambda!24611) (not b!1347561)))

(declare-fun t!46207 () Bool)

(declare-fun tb!12417 () Bool)

(assert (=> (and start!113570 (= defaultEntry!1306 defaultEntry!1306) t!46207) tb!12417))

(declare-fun result!25919 () Bool)

(assert (=> tb!12417 (= result!25919 tp_is_empty!37527)))

(assert (=> b!1347561 t!46207))

(declare-fun b_and!50855 () Bool)

(assert (= b_and!50853 (and (=> t!46207 result!25919) b_and!50855)))

(declare-fun m!1234659 () Bool)

(assert (=> mapNonEmpty!58001 m!1234659))

(declare-fun m!1234661 () Bool)

(assert (=> b!1347563 m!1234661))

(assert (=> b!1347563 m!1234661))

(declare-fun m!1234663 () Bool)

(assert (=> b!1347563 m!1234663))

(declare-fun m!1234665 () Bool)

(assert (=> b!1347561 m!1234665))

(declare-fun m!1234667 () Bool)

(assert (=> b!1347561 m!1234667))

(declare-fun m!1234669 () Bool)

(assert (=> b!1347561 m!1234669))

(declare-fun m!1234671 () Bool)

(assert (=> b!1347561 m!1234671))

(assert (=> b!1347561 m!1234665))

(declare-fun m!1234673 () Bool)

(assert (=> b!1347561 m!1234673))

(assert (=> b!1347561 m!1234667))

(assert (=> b!1347561 m!1234669))

(declare-fun m!1234675 () Bool)

(assert (=> b!1347561 m!1234675))

(declare-fun m!1234677 () Bool)

(assert (=> b!1347561 m!1234677))

(declare-fun m!1234679 () Bool)

(assert (=> b!1347561 m!1234679))

(declare-fun m!1234681 () Bool)

(assert (=> start!113570 m!1234681))

(declare-fun m!1234683 () Bool)

(assert (=> start!113570 m!1234683))

(declare-fun m!1234685 () Bool)

(assert (=> start!113570 m!1234685))

(assert (=> b!1347558 m!1234675))

(assert (=> b!1347558 m!1234675))

(declare-fun m!1234687 () Bool)

(assert (=> b!1347558 m!1234687))

(assert (=> b!1347564 m!1234675))

(declare-fun m!1234689 () Bool)

(assert (=> b!1347559 m!1234689))

(declare-fun m!1234691 () Bool)

(assert (=> b!1347555 m!1234691))

(check-sat (not b_lambda!24611) (not b!1347558) tp_is_empty!37527 (not b!1347563) (not start!113570) (not b!1347559) (not b!1347561) (not b_next!31527) (not b!1347555) (not mapNonEmpty!58001) b_and!50855)
(check-sat b_and!50855 (not b_next!31527))
