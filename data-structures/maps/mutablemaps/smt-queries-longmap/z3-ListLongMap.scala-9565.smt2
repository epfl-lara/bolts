; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113290 () Bool)

(assert start!113290)

(declare-fun b_free!31305 () Bool)

(declare-fun b_next!31305 () Bool)

(assert (=> start!113290 (= b_free!31305 (not b_next!31305))))

(declare-fun tp!109721 () Bool)

(declare-fun b_and!50527 () Bool)

(assert (=> start!113290 (= tp!109721 b_and!50527)))

(declare-fun b!1343588 () Bool)

(declare-fun e!764737 () Bool)

(declare-fun tp_is_empty!37305 () Bool)

(assert (=> b!1343588 (= e!764737 tp_is_empty!37305)))

(declare-fun b!1343589 () Bool)

(declare-fun res!891536 () Bool)

(declare-fun e!764740 () Bool)

(assert (=> b!1343589 (=> (not res!891536) (not e!764740))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91409 0))(
  ( (array!91410 (arr!44156 (Array (_ BitVec 32) (_ BitVec 64))) (size!44707 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91409)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343589 (= res!891536 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44707 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343590 () Bool)

(declare-fun res!891535 () Bool)

(assert (=> b!1343590 (=> (not res!891535) (not e!764740))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91409 (_ BitVec 32)) Bool)

(assert (=> b!1343590 (= res!891535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343591 () Bool)

(declare-fun e!764738 () Bool)

(declare-fun e!764739 () Bool)

(declare-fun mapRes!57664 () Bool)

(assert (=> b!1343591 (= e!764738 (and e!764739 mapRes!57664))))

(declare-fun condMapEmpty!57664 () Bool)

(declare-datatypes ((V!54843 0))(
  ( (V!54844 (val!18727 Int)) )
))
(declare-datatypes ((ValueCell!17754 0))(
  ( (ValueCellFull!17754 (v!21373 V!54843)) (EmptyCell!17754) )
))
(declare-datatypes ((array!91411 0))(
  ( (array!91412 (arr!44157 (Array (_ BitVec 32) ValueCell!17754)) (size!44708 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91411)

(declare-fun mapDefault!57664 () ValueCell!17754)

(assert (=> b!1343591 (= condMapEmpty!57664 (= (arr!44157 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17754)) mapDefault!57664)))))

(declare-fun b!1343592 () Bool)

(assert (=> b!1343592 (= e!764739 tp_is_empty!37305)))

(declare-fun b!1343593 () Bool)

(declare-fun res!891538 () Bool)

(assert (=> b!1343593 (=> (not res!891538) (not e!764740))))

(declare-fun minValue!1245 () V!54843)

(declare-fun zeroValue!1245 () V!54843)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24278 0))(
  ( (tuple2!24279 (_1!12149 (_ BitVec 64)) (_2!12149 V!54843)) )
))
(declare-datatypes ((List!31453 0))(
  ( (Nil!31450) (Cons!31449 (h!32658 tuple2!24278) (t!45976 List!31453)) )
))
(declare-datatypes ((ListLongMap!21947 0))(
  ( (ListLongMap!21948 (toList!10989 List!31453)) )
))
(declare-fun contains!9101 (ListLongMap!21947 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5883 (array!91409 array!91411 (_ BitVec 32) (_ BitVec 32) V!54843 V!54843 (_ BitVec 32) Int) ListLongMap!21947)

(assert (=> b!1343593 (= res!891538 (contains!9101 (getCurrentListMap!5883 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun res!891534 () Bool)

(assert (=> start!113290 (=> (not res!891534) (not e!764740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113290 (= res!891534 (validMask!0 mask!1977))))

(assert (=> start!113290 e!764740))

(assert (=> start!113290 tp_is_empty!37305))

(assert (=> start!113290 true))

(declare-fun array_inv!33197 (array!91409) Bool)

(assert (=> start!113290 (array_inv!33197 _keys!1571)))

(declare-fun array_inv!33198 (array!91411) Bool)

(assert (=> start!113290 (and (array_inv!33198 _values!1303) e!764738)))

(assert (=> start!113290 tp!109721))

(declare-fun b!1343594 () Bool)

(assert (=> b!1343594 (= e!764740 (not true))))

(declare-fun lt!594975 () ListLongMap!21947)

(declare-fun +!4786 (ListLongMap!21947 tuple2!24278) ListLongMap!21947)

(assert (=> b!1343594 (contains!9101 (+!4786 lt!594975 (tuple2!24279 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44037 0))(
  ( (Unit!44038) )
))
(declare-fun lt!594978 () Unit!44037)

(declare-fun addStillContains!1212 (ListLongMap!21947 (_ BitVec 64) V!54843 (_ BitVec 64)) Unit!44037)

(assert (=> b!1343594 (= lt!594978 (addStillContains!1212 lt!594975 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1343594 (contains!9101 lt!594975 k0!1142)))

(declare-fun lt!594974 () Unit!44037)

(declare-fun lt!594976 () V!54843)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!378 ((_ BitVec 64) (_ BitVec 64) V!54843 ListLongMap!21947) Unit!44037)

(assert (=> b!1343594 (= lt!594974 (lemmaInListMapAfterAddingDiffThenInBefore!378 k0!1142 (select (arr!44156 _keys!1571) from!1960) lt!594976 lt!594975))))

(declare-fun lt!594977 () ListLongMap!21947)

(assert (=> b!1343594 (contains!9101 lt!594977 k0!1142)))

(declare-fun lt!594979 () Unit!44037)

(assert (=> b!1343594 (= lt!594979 (lemmaInListMapAfterAddingDiffThenInBefore!378 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594977))))

(assert (=> b!1343594 (= lt!594977 (+!4786 lt!594975 (tuple2!24279 (select (arr!44156 _keys!1571) from!1960) lt!594976)))))

(declare-fun get!22349 (ValueCell!17754 V!54843) V!54843)

(declare-fun dynLambda!3823 (Int (_ BitVec 64)) V!54843)

(assert (=> b!1343594 (= lt!594976 (get!22349 (select (arr!44157 _values!1303) from!1960) (dynLambda!3823 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6509 (array!91409 array!91411 (_ BitVec 32) (_ BitVec 32) V!54843 V!54843 (_ BitVec 32) Int) ListLongMap!21947)

(assert (=> b!1343594 (= lt!594975 (getCurrentListMapNoExtraKeys!6509 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343595 () Bool)

(declare-fun res!891541 () Bool)

(assert (=> b!1343595 (=> (not res!891541) (not e!764740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343595 (= res!891541 (validKeyInArray!0 (select (arr!44156 _keys!1571) from!1960)))))

(declare-fun mapIsEmpty!57664 () Bool)

(assert (=> mapIsEmpty!57664 mapRes!57664))

(declare-fun b!1343596 () Bool)

(declare-fun res!891542 () Bool)

(assert (=> b!1343596 (=> (not res!891542) (not e!764740))))

(declare-datatypes ((List!31454 0))(
  ( (Nil!31451) (Cons!31450 (h!32659 (_ BitVec 64)) (t!45977 List!31454)) )
))
(declare-fun arrayNoDuplicates!0 (array!91409 (_ BitVec 32) List!31454) Bool)

(assert (=> b!1343596 (= res!891542 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31451))))

(declare-fun b!1343597 () Bool)

(declare-fun res!891537 () Bool)

(assert (=> b!1343597 (=> (not res!891537) (not e!764740))))

(assert (=> b!1343597 (= res!891537 (not (= (select (arr!44156 _keys!1571) from!1960) k0!1142)))))

(declare-fun mapNonEmpty!57664 () Bool)

(declare-fun tp!109720 () Bool)

(assert (=> mapNonEmpty!57664 (= mapRes!57664 (and tp!109720 e!764737))))

(declare-fun mapValue!57664 () ValueCell!17754)

(declare-fun mapRest!57664 () (Array (_ BitVec 32) ValueCell!17754))

(declare-fun mapKey!57664 () (_ BitVec 32))

(assert (=> mapNonEmpty!57664 (= (arr!44157 _values!1303) (store mapRest!57664 mapKey!57664 mapValue!57664))))

(declare-fun b!1343598 () Bool)

(declare-fun res!891539 () Bool)

(assert (=> b!1343598 (=> (not res!891539) (not e!764740))))

(assert (=> b!1343598 (= res!891539 (and (= (size!44708 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44707 _keys!1571) (size!44708 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343599 () Bool)

(declare-fun res!891540 () Bool)

(assert (=> b!1343599 (=> (not res!891540) (not e!764740))))

(assert (=> b!1343599 (= res!891540 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!113290 res!891534) b!1343598))

(assert (= (and b!1343598 res!891539) b!1343590))

(assert (= (and b!1343590 res!891535) b!1343596))

(assert (= (and b!1343596 res!891542) b!1343589))

(assert (= (and b!1343589 res!891536) b!1343593))

(assert (= (and b!1343593 res!891538) b!1343597))

(assert (= (and b!1343597 res!891537) b!1343595))

(assert (= (and b!1343595 res!891541) b!1343599))

(assert (= (and b!1343599 res!891540) b!1343594))

(assert (= (and b!1343591 condMapEmpty!57664) mapIsEmpty!57664))

(assert (= (and b!1343591 (not condMapEmpty!57664)) mapNonEmpty!57664))

(get-info :version)

(assert (= (and mapNonEmpty!57664 ((_ is ValueCellFull!17754) mapValue!57664)) b!1343588))

(assert (= (and b!1343591 ((_ is ValueCellFull!17754) mapDefault!57664)) b!1343592))

(assert (= start!113290 b!1343591))

(declare-fun b_lambda!24491 () Bool)

(assert (=> (not b_lambda!24491) (not b!1343594)))

(declare-fun t!45975 () Bool)

(declare-fun tb!12327 () Bool)

(assert (=> (and start!113290 (= defaultEntry!1306 defaultEntry!1306) t!45975) tb!12327))

(declare-fun result!25737 () Bool)

(assert (=> tb!12327 (= result!25737 tp_is_empty!37305)))

(assert (=> b!1343594 t!45975))

(declare-fun b_and!50529 () Bool)

(assert (= b_and!50527 (and (=> t!45975 result!25737) b_and!50529)))

(declare-fun m!1231383 () Bool)

(assert (=> b!1343596 m!1231383))

(declare-fun m!1231385 () Bool)

(assert (=> b!1343593 m!1231385))

(assert (=> b!1343593 m!1231385))

(declare-fun m!1231387 () Bool)

(assert (=> b!1343593 m!1231387))

(declare-fun m!1231389 () Bool)

(assert (=> b!1343595 m!1231389))

(assert (=> b!1343595 m!1231389))

(declare-fun m!1231391 () Bool)

(assert (=> b!1343595 m!1231391))

(assert (=> b!1343594 m!1231389))

(declare-fun m!1231393 () Bool)

(assert (=> b!1343594 m!1231393))

(declare-fun m!1231395 () Bool)

(assert (=> b!1343594 m!1231395))

(declare-fun m!1231397 () Bool)

(assert (=> b!1343594 m!1231397))

(declare-fun m!1231399 () Bool)

(assert (=> b!1343594 m!1231399))

(declare-fun m!1231401 () Bool)

(assert (=> b!1343594 m!1231401))

(declare-fun m!1231403 () Bool)

(assert (=> b!1343594 m!1231403))

(assert (=> b!1343594 m!1231399))

(declare-fun m!1231405 () Bool)

(assert (=> b!1343594 m!1231405))

(declare-fun m!1231407 () Bool)

(assert (=> b!1343594 m!1231407))

(assert (=> b!1343594 m!1231401))

(declare-fun m!1231409 () Bool)

(assert (=> b!1343594 m!1231409))

(declare-fun m!1231411 () Bool)

(assert (=> b!1343594 m!1231411))

(assert (=> b!1343594 m!1231389))

(declare-fun m!1231413 () Bool)

(assert (=> b!1343594 m!1231413))

(assert (=> b!1343594 m!1231405))

(declare-fun m!1231415 () Bool)

(assert (=> b!1343594 m!1231415))

(declare-fun m!1231417 () Bool)

(assert (=> start!113290 m!1231417))

(declare-fun m!1231419 () Bool)

(assert (=> start!113290 m!1231419))

(declare-fun m!1231421 () Bool)

(assert (=> start!113290 m!1231421))

(assert (=> b!1343597 m!1231389))

(declare-fun m!1231423 () Bool)

(assert (=> mapNonEmpty!57664 m!1231423))

(declare-fun m!1231425 () Bool)

(assert (=> b!1343590 m!1231425))

(check-sat (not b!1343594) (not b!1343595) (not b!1343593) (not b_lambda!24491) (not mapNonEmpty!57664) (not b!1343590) (not start!113290) (not b!1343596) tp_is_empty!37305 b_and!50529 (not b_next!31305))
(check-sat b_and!50529 (not b_next!31305))
