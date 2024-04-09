; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113200 () Bool)

(assert start!113200)

(declare-fun b_free!31215 () Bool)

(declare-fun b_next!31215 () Bool)

(assert (=> start!113200 (= b_free!31215 (not b_next!31215))))

(declare-fun tp!109451 () Bool)

(declare-fun b_and!50347 () Bool)

(assert (=> start!113200 (= tp!109451 b_and!50347)))

(declare-fun mapNonEmpty!57529 () Bool)

(declare-fun mapRes!57529 () Bool)

(declare-fun tp!109450 () Bool)

(declare-fun e!764064 () Bool)

(assert (=> mapNonEmpty!57529 (= mapRes!57529 (and tp!109450 e!764064))))

(declare-fun mapKey!57529 () (_ BitVec 32))

(declare-datatypes ((V!54723 0))(
  ( (V!54724 (val!18682 Int)) )
))
(declare-datatypes ((ValueCell!17709 0))(
  ( (ValueCellFull!17709 (v!21328 V!54723)) (EmptyCell!17709) )
))
(declare-fun mapValue!57529 () ValueCell!17709)

(declare-fun mapRest!57529 () (Array (_ BitVec 32) ValueCell!17709))

(declare-datatypes ((array!91239 0))(
  ( (array!91240 (arr!44071 (Array (_ BitVec 32) ValueCell!17709)) (size!44622 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91239)

(assert (=> mapNonEmpty!57529 (= (arr!44071 _values!1303) (store mapRest!57529 mapKey!57529 mapValue!57529))))

(declare-fun b!1341878 () Bool)

(declare-fun e!764066 () Bool)

(assert (=> b!1341878 (= e!764066 (not true))))

(declare-datatypes ((tuple2!24208 0))(
  ( (tuple2!24209 (_1!12114 (_ BitVec 64)) (_2!12114 V!54723)) )
))
(declare-datatypes ((List!31388 0))(
  ( (Nil!31385) (Cons!31384 (h!32593 tuple2!24208) (t!45821 List!31388)) )
))
(declare-datatypes ((ListLongMap!21877 0))(
  ( (ListLongMap!21878 (toList!10954 List!31388)) )
))
(declare-fun lt!594231 () ListLongMap!21877)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun contains!9066 (ListLongMap!21877 (_ BitVec 64)) Bool)

(assert (=> b!1341878 (contains!9066 lt!594231 k0!1142)))

(declare-fun lt!594232 () V!54723)

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((array!91241 0))(
  ( (array!91242 (arr!44072 (Array (_ BitVec 32) (_ BitVec 64))) (size!44623 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91241)

(declare-datatypes ((Unit!43981 0))(
  ( (Unit!43982) )
))
(declare-fun lt!594235 () Unit!43981)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!350 ((_ BitVec 64) (_ BitVec 64) V!54723 ListLongMap!21877) Unit!43981)

(assert (=> b!1341878 (= lt!594235 (lemmaInListMapAfterAddingDiffThenInBefore!350 k0!1142 (select (arr!44072 _keys!1571) from!1960) lt!594232 lt!594231))))

(declare-fun lt!594233 () ListLongMap!21877)

(assert (=> b!1341878 (contains!9066 lt!594233 k0!1142)))

(declare-fun zeroValue!1245 () V!54723)

(declare-fun lt!594234 () Unit!43981)

(assert (=> b!1341878 (= lt!594234 (lemmaInListMapAfterAddingDiffThenInBefore!350 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594233))))

(declare-fun +!4758 (ListLongMap!21877 tuple2!24208) ListLongMap!21877)

(assert (=> b!1341878 (= lt!594233 (+!4758 lt!594231 (tuple2!24209 (select (arr!44072 _keys!1571) from!1960) lt!594232)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22291 (ValueCell!17709 V!54723) V!54723)

(declare-fun dynLambda!3795 (Int (_ BitVec 64)) V!54723)

(assert (=> b!1341878 (= lt!594232 (get!22291 (select (arr!44071 _values!1303) from!1960) (dynLambda!3795 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54723)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6481 (array!91241 array!91239 (_ BitVec 32) (_ BitVec 32) V!54723 V!54723 (_ BitVec 32) Int) ListLongMap!21877)

(assert (=> b!1341878 (= lt!594231 (getCurrentListMapNoExtraKeys!6481 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1341879 () Bool)

(declare-fun res!890326 () Bool)

(assert (=> b!1341879 (=> (not res!890326) (not e!764066))))

(assert (=> b!1341879 (= res!890326 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341880 () Bool)

(declare-fun e!764065 () Bool)

(declare-fun tp_is_empty!37215 () Bool)

(assert (=> b!1341880 (= e!764065 tp_is_empty!37215)))

(declare-fun b!1341881 () Bool)

(declare-fun res!890324 () Bool)

(assert (=> b!1341881 (=> (not res!890324) (not e!764066))))

(assert (=> b!1341881 (= res!890324 (not (= (select (arr!44072 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1341882 () Bool)

(declare-fun e!764063 () Bool)

(assert (=> b!1341882 (= e!764063 (and e!764065 mapRes!57529))))

(declare-fun condMapEmpty!57529 () Bool)

(declare-fun mapDefault!57529 () ValueCell!17709)

(assert (=> b!1341882 (= condMapEmpty!57529 (= (arr!44071 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17709)) mapDefault!57529)))))

(declare-fun b!1341883 () Bool)

(declare-fun res!890327 () Bool)

(assert (=> b!1341883 (=> (not res!890327) (not e!764066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341883 (= res!890327 (validKeyInArray!0 (select (arr!44072 _keys!1571) from!1960)))))

(declare-fun res!890320 () Bool)

(assert (=> start!113200 (=> (not res!890320) (not e!764066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113200 (= res!890320 (validMask!0 mask!1977))))

(assert (=> start!113200 e!764066))

(assert (=> start!113200 tp_is_empty!37215))

(assert (=> start!113200 true))

(declare-fun array_inv!33139 (array!91241) Bool)

(assert (=> start!113200 (array_inv!33139 _keys!1571)))

(declare-fun array_inv!33140 (array!91239) Bool)

(assert (=> start!113200 (and (array_inv!33140 _values!1303) e!764063)))

(assert (=> start!113200 tp!109451))

(declare-fun b!1341884 () Bool)

(assert (=> b!1341884 (= e!764064 tp_is_empty!37215)))

(declare-fun b!1341885 () Bool)

(declare-fun res!890319 () Bool)

(assert (=> b!1341885 (=> (not res!890319) (not e!764066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91241 (_ BitVec 32)) Bool)

(assert (=> b!1341885 (= res!890319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341886 () Bool)

(declare-fun res!890321 () Bool)

(assert (=> b!1341886 (=> (not res!890321) (not e!764066))))

(declare-fun getCurrentListMap!5854 (array!91241 array!91239 (_ BitVec 32) (_ BitVec 32) V!54723 V!54723 (_ BitVec 32) Int) ListLongMap!21877)

(assert (=> b!1341886 (= res!890321 (contains!9066 (getCurrentListMap!5854 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1341887 () Bool)

(declare-fun res!890322 () Bool)

(assert (=> b!1341887 (=> (not res!890322) (not e!764066))))

(declare-datatypes ((List!31389 0))(
  ( (Nil!31386) (Cons!31385 (h!32594 (_ BitVec 64)) (t!45822 List!31389)) )
))
(declare-fun arrayNoDuplicates!0 (array!91241 (_ BitVec 32) List!31389) Bool)

(assert (=> b!1341887 (= res!890322 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31386))))

(declare-fun mapIsEmpty!57529 () Bool)

(assert (=> mapIsEmpty!57529 mapRes!57529))

(declare-fun b!1341888 () Bool)

(declare-fun res!890323 () Bool)

(assert (=> b!1341888 (=> (not res!890323) (not e!764066))))

(assert (=> b!1341888 (= res!890323 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44623 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341889 () Bool)

(declare-fun res!890325 () Bool)

(assert (=> b!1341889 (=> (not res!890325) (not e!764066))))

(assert (=> b!1341889 (= res!890325 (and (= (size!44622 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44623 _keys!1571) (size!44622 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113200 res!890320) b!1341889))

(assert (= (and b!1341889 res!890325) b!1341885))

(assert (= (and b!1341885 res!890319) b!1341887))

(assert (= (and b!1341887 res!890322) b!1341888))

(assert (= (and b!1341888 res!890323) b!1341886))

(assert (= (and b!1341886 res!890321) b!1341881))

(assert (= (and b!1341881 res!890324) b!1341883))

(assert (= (and b!1341883 res!890327) b!1341879))

(assert (= (and b!1341879 res!890326) b!1341878))

(assert (= (and b!1341882 condMapEmpty!57529) mapIsEmpty!57529))

(assert (= (and b!1341882 (not condMapEmpty!57529)) mapNonEmpty!57529))

(get-info :version)

(assert (= (and mapNonEmpty!57529 ((_ is ValueCellFull!17709) mapValue!57529)) b!1341884))

(assert (= (and b!1341882 ((_ is ValueCellFull!17709) mapDefault!57529)) b!1341880))

(assert (= start!113200 b!1341882))

(declare-fun b_lambda!24401 () Bool)

(assert (=> (not b_lambda!24401) (not b!1341878)))

(declare-fun t!45820 () Bool)

(declare-fun tb!12237 () Bool)

(assert (=> (and start!113200 (= defaultEntry!1306 defaultEntry!1306) t!45820) tb!12237))

(declare-fun result!25557 () Bool)

(assert (=> tb!12237 (= result!25557 tp_is_empty!37215)))

(assert (=> b!1341878 t!45820))

(declare-fun b_and!50349 () Bool)

(assert (= b_and!50347 (and (=> t!45820 result!25557) b_and!50349)))

(declare-fun m!1229541 () Bool)

(assert (=> b!1341878 m!1229541))

(declare-fun m!1229543 () Bool)

(assert (=> b!1341878 m!1229543))

(declare-fun m!1229545 () Bool)

(assert (=> b!1341878 m!1229545))

(declare-fun m!1229547 () Bool)

(assert (=> b!1341878 m!1229547))

(assert (=> b!1341878 m!1229543))

(declare-fun m!1229549 () Bool)

(assert (=> b!1341878 m!1229549))

(declare-fun m!1229551 () Bool)

(assert (=> b!1341878 m!1229551))

(assert (=> b!1341878 m!1229545))

(declare-fun m!1229553 () Bool)

(assert (=> b!1341878 m!1229553))

(declare-fun m!1229555 () Bool)

(assert (=> b!1341878 m!1229555))

(declare-fun m!1229557 () Bool)

(assert (=> b!1341878 m!1229557))

(assert (=> b!1341878 m!1229549))

(declare-fun m!1229559 () Bool)

(assert (=> b!1341878 m!1229559))

(declare-fun m!1229561 () Bool)

(assert (=> b!1341885 m!1229561))

(assert (=> b!1341883 m!1229549))

(assert (=> b!1341883 m!1229549))

(declare-fun m!1229563 () Bool)

(assert (=> b!1341883 m!1229563))

(declare-fun m!1229565 () Bool)

(assert (=> start!113200 m!1229565))

(declare-fun m!1229567 () Bool)

(assert (=> start!113200 m!1229567))

(declare-fun m!1229569 () Bool)

(assert (=> start!113200 m!1229569))

(assert (=> b!1341881 m!1229549))

(declare-fun m!1229571 () Bool)

(assert (=> b!1341886 m!1229571))

(assert (=> b!1341886 m!1229571))

(declare-fun m!1229573 () Bool)

(assert (=> b!1341886 m!1229573))

(declare-fun m!1229575 () Bool)

(assert (=> b!1341887 m!1229575))

(declare-fun m!1229577 () Bool)

(assert (=> mapNonEmpty!57529 m!1229577))

(check-sat (not b!1341885) (not b!1341886) (not mapNonEmpty!57529) (not b_next!31215) (not start!113200) tp_is_empty!37215 (not b!1341887) b_and!50349 (not b!1341883) (not b_lambda!24401) (not b!1341878))
(check-sat b_and!50349 (not b_next!31215))
