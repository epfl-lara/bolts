; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113248 () Bool)

(assert start!113248)

(declare-fun b_free!31263 () Bool)

(declare-fun b_next!31263 () Bool)

(assert (=> start!113248 (= b_free!31263 (not b_next!31263))))

(declare-fun tp!109594 () Bool)

(declare-fun b_and!50443 () Bool)

(assert (=> start!113248 (= tp!109594 b_and!50443)))

(declare-fun b!1342790 () Bool)

(declare-fun res!890969 () Bool)

(declare-fun e!764426 () Bool)

(assert (=> b!1342790 (=> (not res!890969) (not e!764426))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342790 (= res!890969 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342791 () Bool)

(declare-fun e!764425 () Bool)

(declare-fun tp_is_empty!37263 () Bool)

(assert (=> b!1342791 (= e!764425 tp_is_empty!37263)))

(declare-fun b!1342792 () Bool)

(declare-fun res!890970 () Bool)

(assert (=> b!1342792 (=> (not res!890970) (not e!764426))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91327 0))(
  ( (array!91328 (arr!44115 (Array (_ BitVec 32) (_ BitVec 64))) (size!44666 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91327)

(declare-datatypes ((V!54787 0))(
  ( (V!54788 (val!18706 Int)) )
))
(declare-datatypes ((ValueCell!17733 0))(
  ( (ValueCellFull!17733 (v!21352 V!54787)) (EmptyCell!17733) )
))
(declare-datatypes ((array!91329 0))(
  ( (array!91330 (arr!44116 (Array (_ BitVec 32) ValueCell!17733)) (size!44667 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91329)

(assert (=> b!1342792 (= res!890970 (and (= (size!44667 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44666 _keys!1571) (size!44667 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342793 () Bool)

(declare-fun res!890972 () Bool)

(assert (=> b!1342793 (=> (not res!890972) (not e!764426))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342793 (= res!890972 (not (= (select (arr!44115 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1342794 () Bool)

(declare-fun res!890973 () Bool)

(assert (=> b!1342794 (=> (not res!890973) (not e!764426))))

(declare-datatypes ((List!31424 0))(
  ( (Nil!31421) (Cons!31420 (h!32629 (_ BitVec 64)) (t!45905 List!31424)) )
))
(declare-fun arrayNoDuplicates!0 (array!91327 (_ BitVec 32) List!31424) Bool)

(assert (=> b!1342794 (= res!890973 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31421))))

(declare-fun res!890967 () Bool)

(assert (=> start!113248 (=> (not res!890967) (not e!764426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113248 (= res!890967 (validMask!0 mask!1977))))

(assert (=> start!113248 e!764426))

(assert (=> start!113248 tp_is_empty!37263))

(assert (=> start!113248 true))

(declare-fun array_inv!33169 (array!91327) Bool)

(assert (=> start!113248 (array_inv!33169 _keys!1571)))

(declare-fun e!764422 () Bool)

(declare-fun array_inv!33170 (array!91329) Bool)

(assert (=> start!113248 (and (array_inv!33170 _values!1303) e!764422)))

(assert (=> start!113248 tp!109594))

(declare-fun b!1342795 () Bool)

(declare-fun res!890975 () Bool)

(assert (=> b!1342795 (=> (not res!890975) (not e!764426))))

(assert (=> b!1342795 (= res!890975 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44666 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342796 () Bool)

(declare-fun res!890974 () Bool)

(assert (=> b!1342796 (=> (not res!890974) (not e!764426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91327 (_ BitVec 32)) Bool)

(assert (=> b!1342796 (= res!890974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342797 () Bool)

(declare-fun e!764423 () Bool)

(assert (=> b!1342797 (= e!764423 tp_is_empty!37263)))

(declare-fun b!1342798 () Bool)

(declare-fun mapRes!57601 () Bool)

(assert (=> b!1342798 (= e!764422 (and e!764423 mapRes!57601))))

(declare-fun condMapEmpty!57601 () Bool)

(declare-fun mapDefault!57601 () ValueCell!17733)

(assert (=> b!1342798 (= condMapEmpty!57601 (= (arr!44116 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17733)) mapDefault!57601)))))

(declare-fun b!1342799 () Bool)

(declare-fun res!890971 () Bool)

(assert (=> b!1342799 (=> (not res!890971) (not e!764426))))

(declare-fun minValue!1245 () V!54787)

(declare-fun zeroValue!1245 () V!54787)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24244 0))(
  ( (tuple2!24245 (_1!12132 (_ BitVec 64)) (_2!12132 V!54787)) )
))
(declare-datatypes ((List!31425 0))(
  ( (Nil!31422) (Cons!31421 (h!32630 tuple2!24244) (t!45906 List!31425)) )
))
(declare-datatypes ((ListLongMap!21913 0))(
  ( (ListLongMap!21914 (toList!10972 List!31425)) )
))
(declare-fun contains!9084 (ListLongMap!21913 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5868 (array!91327 array!91329 (_ BitVec 32) (_ BitVec 32) V!54787 V!54787 (_ BitVec 32) Int) ListLongMap!21913)

(assert (=> b!1342799 (= res!890971 (contains!9084 (getCurrentListMap!5868 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1342800 () Bool)

(assert (=> b!1342800 (= e!764426 (not true))))

(declare-fun lt!594597 () ListLongMap!21913)

(declare-fun +!4772 (ListLongMap!21913 tuple2!24244) ListLongMap!21913)

(assert (=> b!1342800 (contains!9084 (+!4772 lt!594597 (tuple2!24245 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44009 0))(
  ( (Unit!44010) )
))
(declare-fun lt!594601 () Unit!44009)

(declare-fun addStillContains!1198 (ListLongMap!21913 (_ BitVec 64) V!54787 (_ BitVec 64)) Unit!44009)

(assert (=> b!1342800 (= lt!594601 (addStillContains!1198 lt!594597 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1342800 (contains!9084 lt!594597 k0!1142)))

(declare-fun lt!594596 () V!54787)

(declare-fun lt!594599 () Unit!44009)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!364 ((_ BitVec 64) (_ BitVec 64) V!54787 ListLongMap!21913) Unit!44009)

(assert (=> b!1342800 (= lt!594599 (lemmaInListMapAfterAddingDiffThenInBefore!364 k0!1142 (select (arr!44115 _keys!1571) from!1960) lt!594596 lt!594597))))

(declare-fun lt!594600 () ListLongMap!21913)

(assert (=> b!1342800 (contains!9084 lt!594600 k0!1142)))

(declare-fun lt!594598 () Unit!44009)

(assert (=> b!1342800 (= lt!594598 (lemmaInListMapAfterAddingDiffThenInBefore!364 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594600))))

(assert (=> b!1342800 (= lt!594600 (+!4772 lt!594597 (tuple2!24245 (select (arr!44115 _keys!1571) from!1960) lt!594596)))))

(declare-fun get!22321 (ValueCell!17733 V!54787) V!54787)

(declare-fun dynLambda!3809 (Int (_ BitVec 64)) V!54787)

(assert (=> b!1342800 (= lt!594596 (get!22321 (select (arr!44116 _values!1303) from!1960) (dynLambda!3809 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6495 (array!91327 array!91329 (_ BitVec 32) (_ BitVec 32) V!54787 V!54787 (_ BitVec 32) Int) ListLongMap!21913)

(assert (=> b!1342800 (= lt!594597 (getCurrentListMapNoExtraKeys!6495 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapNonEmpty!57601 () Bool)

(declare-fun tp!109595 () Bool)

(assert (=> mapNonEmpty!57601 (= mapRes!57601 (and tp!109595 e!764425))))

(declare-fun mapKey!57601 () (_ BitVec 32))

(declare-fun mapValue!57601 () ValueCell!17733)

(declare-fun mapRest!57601 () (Array (_ BitVec 32) ValueCell!17733))

(assert (=> mapNonEmpty!57601 (= (arr!44116 _values!1303) (store mapRest!57601 mapKey!57601 mapValue!57601))))

(declare-fun mapIsEmpty!57601 () Bool)

(assert (=> mapIsEmpty!57601 mapRes!57601))

(declare-fun b!1342801 () Bool)

(declare-fun res!890968 () Bool)

(assert (=> b!1342801 (=> (not res!890968) (not e!764426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342801 (= res!890968 (validKeyInArray!0 (select (arr!44115 _keys!1571) from!1960)))))

(assert (= (and start!113248 res!890967) b!1342792))

(assert (= (and b!1342792 res!890970) b!1342796))

(assert (= (and b!1342796 res!890974) b!1342794))

(assert (= (and b!1342794 res!890973) b!1342795))

(assert (= (and b!1342795 res!890975) b!1342799))

(assert (= (and b!1342799 res!890971) b!1342793))

(assert (= (and b!1342793 res!890972) b!1342801))

(assert (= (and b!1342801 res!890968) b!1342790))

(assert (= (and b!1342790 res!890969) b!1342800))

(assert (= (and b!1342798 condMapEmpty!57601) mapIsEmpty!57601))

(assert (= (and b!1342798 (not condMapEmpty!57601)) mapNonEmpty!57601))

(get-info :version)

(assert (= (and mapNonEmpty!57601 ((_ is ValueCellFull!17733) mapValue!57601)) b!1342791))

(assert (= (and b!1342798 ((_ is ValueCellFull!17733) mapDefault!57601)) b!1342797))

(assert (= start!113248 b!1342798))

(declare-fun b_lambda!24449 () Bool)

(assert (=> (not b_lambda!24449) (not b!1342800)))

(declare-fun t!45904 () Bool)

(declare-fun tb!12285 () Bool)

(assert (=> (and start!113248 (= defaultEntry!1306 defaultEntry!1306) t!45904) tb!12285))

(declare-fun result!25653 () Bool)

(assert (=> tb!12285 (= result!25653 tp_is_empty!37263)))

(assert (=> b!1342800 t!45904))

(declare-fun b_and!50445 () Bool)

(assert (= b_and!50443 (and (=> t!45904 result!25653) b_and!50445)))

(declare-fun m!1230459 () Bool)

(assert (=> start!113248 m!1230459))

(declare-fun m!1230461 () Bool)

(assert (=> start!113248 m!1230461))

(declare-fun m!1230463 () Bool)

(assert (=> start!113248 m!1230463))

(declare-fun m!1230465 () Bool)

(assert (=> b!1342801 m!1230465))

(assert (=> b!1342801 m!1230465))

(declare-fun m!1230467 () Bool)

(assert (=> b!1342801 m!1230467))

(declare-fun m!1230469 () Bool)

(assert (=> b!1342799 m!1230469))

(assert (=> b!1342799 m!1230469))

(declare-fun m!1230471 () Bool)

(assert (=> b!1342799 m!1230471))

(declare-fun m!1230473 () Bool)

(assert (=> b!1342794 m!1230473))

(declare-fun m!1230475 () Bool)

(assert (=> b!1342796 m!1230475))

(assert (=> b!1342793 m!1230465))

(declare-fun m!1230477 () Bool)

(assert (=> b!1342800 m!1230477))

(declare-fun m!1230479 () Bool)

(assert (=> b!1342800 m!1230479))

(declare-fun m!1230481 () Bool)

(assert (=> b!1342800 m!1230481))

(declare-fun m!1230483 () Bool)

(assert (=> b!1342800 m!1230483))

(assert (=> b!1342800 m!1230479))

(assert (=> b!1342800 m!1230481))

(declare-fun m!1230485 () Bool)

(assert (=> b!1342800 m!1230485))

(assert (=> b!1342800 m!1230477))

(declare-fun m!1230487 () Bool)

(assert (=> b!1342800 m!1230487))

(declare-fun m!1230489 () Bool)

(assert (=> b!1342800 m!1230489))

(declare-fun m!1230491 () Bool)

(assert (=> b!1342800 m!1230491))

(declare-fun m!1230493 () Bool)

(assert (=> b!1342800 m!1230493))

(assert (=> b!1342800 m!1230465))

(declare-fun m!1230495 () Bool)

(assert (=> b!1342800 m!1230495))

(declare-fun m!1230497 () Bool)

(assert (=> b!1342800 m!1230497))

(declare-fun m!1230499 () Bool)

(assert (=> b!1342800 m!1230499))

(assert (=> b!1342800 m!1230465))

(declare-fun m!1230501 () Bool)

(assert (=> mapNonEmpty!57601 m!1230501))

(check-sat (not b_lambda!24449) (not mapNonEmpty!57601) tp_is_empty!37263 (not b!1342800) b_and!50445 (not b_next!31263) (not b!1342801) (not b!1342796) (not b!1342794) (not b!1342799) (not start!113248))
(check-sat b_and!50445 (not b_next!31263))
