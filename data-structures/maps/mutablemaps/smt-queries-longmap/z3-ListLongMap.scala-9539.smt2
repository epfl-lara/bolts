; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113134 () Bool)

(assert start!113134)

(declare-fun b_free!31149 () Bool)

(declare-fun b_next!31149 () Bool)

(assert (=> start!113134 (= b_free!31149 (not b_next!31149))))

(declare-fun tp!109253 () Bool)

(declare-fun b_and!50215 () Bool)

(assert (=> start!113134 (= tp!109253 b_and!50215)))

(declare-fun b!1340624 () Bool)

(declare-fun e!763568 () Bool)

(declare-fun e!763567 () Bool)

(declare-fun mapRes!57430 () Bool)

(assert (=> b!1340624 (= e!763568 (and e!763567 mapRes!57430))))

(declare-fun condMapEmpty!57430 () Bool)

(declare-datatypes ((V!54635 0))(
  ( (V!54636 (val!18649 Int)) )
))
(declare-datatypes ((ValueCell!17676 0))(
  ( (ValueCellFull!17676 (v!21295 V!54635)) (EmptyCell!17676) )
))
(declare-datatypes ((array!91107 0))(
  ( (array!91108 (arr!44005 (Array (_ BitVec 32) ValueCell!17676)) (size!44556 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91107)

(declare-fun mapDefault!57430 () ValueCell!17676)

(assert (=> b!1340624 (= condMapEmpty!57430 (= (arr!44005 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17676)) mapDefault!57430)))))

(declare-fun b!1340625 () Bool)

(declare-fun res!889432 () Bool)

(declare-fun e!763569 () Bool)

(assert (=> b!1340625 (=> (not res!889432) (not e!763569))))

(declare-fun minValue!1245 () V!54635)

(declare-fun zeroValue!1245 () V!54635)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91109 0))(
  ( (array!91110 (arr!44006 (Array (_ BitVec 32) (_ BitVec 64))) (size!44557 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91109)

(declare-datatypes ((tuple2!24152 0))(
  ( (tuple2!24153 (_1!12086 (_ BitVec 64)) (_2!12086 V!54635)) )
))
(declare-datatypes ((List!31336 0))(
  ( (Nil!31333) (Cons!31332 (h!32541 tuple2!24152) (t!45703 List!31336)) )
))
(declare-datatypes ((ListLongMap!21821 0))(
  ( (ListLongMap!21822 (toList!10926 List!31336)) )
))
(declare-fun contains!9038 (ListLongMap!21821 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5829 (array!91109 array!91107 (_ BitVec 32) (_ BitVec 32) V!54635 V!54635 (_ BitVec 32) Int) ListLongMap!21821)

(assert (=> b!1340625 (= res!889432 (contains!9038 (getCurrentListMap!5829 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1340626 () Bool)

(declare-fun res!889434 () Bool)

(assert (=> b!1340626 (=> (not res!889434) (not e!763569))))

(assert (=> b!1340626 (= res!889434 (and (= (size!44556 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44557 _keys!1571) (size!44556 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340627 () Bool)

(assert (=> b!1340627 (= e!763569 (not true))))

(declare-fun lt!593965 () ListLongMap!21821)

(assert (=> b!1340627 (contains!9038 lt!593965 k0!1142)))

(declare-datatypes ((Unit!43929 0))(
  ( (Unit!43930) )
))
(declare-fun lt!593964 () Unit!43929)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!324 ((_ BitVec 64) (_ BitVec 64) V!54635 ListLongMap!21821) Unit!43929)

(assert (=> b!1340627 (= lt!593964 (lemmaInListMapAfterAddingDiffThenInBefore!324 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593965))))

(declare-fun +!4732 (ListLongMap!21821 tuple2!24152) ListLongMap!21821)

(declare-fun getCurrentListMapNoExtraKeys!6455 (array!91109 array!91107 (_ BitVec 32) (_ BitVec 32) V!54635 V!54635 (_ BitVec 32) Int) ListLongMap!21821)

(declare-fun get!22243 (ValueCell!17676 V!54635) V!54635)

(declare-fun dynLambda!3769 (Int (_ BitVec 64)) V!54635)

(assert (=> b!1340627 (= lt!593965 (+!4732 (getCurrentListMapNoExtraKeys!6455 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24153 (select (arr!44006 _keys!1571) from!1960) (get!22243 (select (arr!44005 _values!1303) from!1960) (dynLambda!3769 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340628 () Bool)

(declare-fun e!763571 () Bool)

(declare-fun tp_is_empty!37149 () Bool)

(assert (=> b!1340628 (= e!763571 tp_is_empty!37149)))

(declare-fun b!1340629 () Bool)

(declare-fun res!889433 () Bool)

(assert (=> b!1340629 (=> (not res!889433) (not e!763569))))

(assert (=> b!1340629 (= res!889433 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340630 () Bool)

(declare-fun res!889430 () Bool)

(assert (=> b!1340630 (=> (not res!889430) (not e!763569))))

(declare-datatypes ((List!31337 0))(
  ( (Nil!31334) (Cons!31333 (h!32542 (_ BitVec 64)) (t!45704 List!31337)) )
))
(declare-fun arrayNoDuplicates!0 (array!91109 (_ BitVec 32) List!31337) Bool)

(assert (=> b!1340630 (= res!889430 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31334))))

(declare-fun b!1340631 () Bool)

(declare-fun res!889435 () Bool)

(assert (=> b!1340631 (=> (not res!889435) (not e!763569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91109 (_ BitVec 32)) Bool)

(assert (=> b!1340631 (= res!889435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57430 () Bool)

(assert (=> mapIsEmpty!57430 mapRes!57430))

(declare-fun mapNonEmpty!57430 () Bool)

(declare-fun tp!109252 () Bool)

(assert (=> mapNonEmpty!57430 (= mapRes!57430 (and tp!109252 e!763571))))

(declare-fun mapKey!57430 () (_ BitVec 32))

(declare-fun mapValue!57430 () ValueCell!17676)

(declare-fun mapRest!57430 () (Array (_ BitVec 32) ValueCell!17676))

(assert (=> mapNonEmpty!57430 (= (arr!44005 _values!1303) (store mapRest!57430 mapKey!57430 mapValue!57430))))

(declare-fun res!889431 () Bool)

(assert (=> start!113134 (=> (not res!889431) (not e!763569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113134 (= res!889431 (validMask!0 mask!1977))))

(assert (=> start!113134 e!763569))

(assert (=> start!113134 tp_is_empty!37149))

(assert (=> start!113134 true))

(declare-fun array_inv!33093 (array!91109) Bool)

(assert (=> start!113134 (array_inv!33093 _keys!1571)))

(declare-fun array_inv!33094 (array!91107) Bool)

(assert (=> start!113134 (and (array_inv!33094 _values!1303) e!763568)))

(assert (=> start!113134 tp!109253))

(declare-fun b!1340632 () Bool)

(declare-fun res!889429 () Bool)

(assert (=> b!1340632 (=> (not res!889429) (not e!763569))))

(assert (=> b!1340632 (= res!889429 (not (= (select (arr!44006 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1340633 () Bool)

(declare-fun res!889428 () Bool)

(assert (=> b!1340633 (=> (not res!889428) (not e!763569))))

(assert (=> b!1340633 (= res!889428 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44557 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340634 () Bool)

(assert (=> b!1340634 (= e!763567 tp_is_empty!37149)))

(declare-fun b!1340635 () Bool)

(declare-fun res!889436 () Bool)

(assert (=> b!1340635 (=> (not res!889436) (not e!763569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340635 (= res!889436 (validKeyInArray!0 (select (arr!44006 _keys!1571) from!1960)))))

(assert (= (and start!113134 res!889431) b!1340626))

(assert (= (and b!1340626 res!889434) b!1340631))

(assert (= (and b!1340631 res!889435) b!1340630))

(assert (= (and b!1340630 res!889430) b!1340633))

(assert (= (and b!1340633 res!889428) b!1340625))

(assert (= (and b!1340625 res!889432) b!1340632))

(assert (= (and b!1340632 res!889429) b!1340635))

(assert (= (and b!1340635 res!889436) b!1340629))

(assert (= (and b!1340629 res!889433) b!1340627))

(assert (= (and b!1340624 condMapEmpty!57430) mapIsEmpty!57430))

(assert (= (and b!1340624 (not condMapEmpty!57430)) mapNonEmpty!57430))

(get-info :version)

(assert (= (and mapNonEmpty!57430 ((_ is ValueCellFull!17676) mapValue!57430)) b!1340628))

(assert (= (and b!1340624 ((_ is ValueCellFull!17676) mapDefault!57430)) b!1340634))

(assert (= start!113134 b!1340624))

(declare-fun b_lambda!24335 () Bool)

(assert (=> (not b_lambda!24335) (not b!1340627)))

(declare-fun t!45702 () Bool)

(declare-fun tb!12171 () Bool)

(assert (=> (and start!113134 (= defaultEntry!1306 defaultEntry!1306) t!45702) tb!12171))

(declare-fun result!25425 () Bool)

(assert (=> tb!12171 (= result!25425 tp_is_empty!37149)))

(assert (=> b!1340627 t!45702))

(declare-fun b_and!50217 () Bool)

(assert (= b_and!50215 (and (=> t!45702 result!25425) b_and!50217)))

(declare-fun m!1228391 () Bool)

(assert (=> start!113134 m!1228391))

(declare-fun m!1228393 () Bool)

(assert (=> start!113134 m!1228393))

(declare-fun m!1228395 () Bool)

(assert (=> start!113134 m!1228395))

(declare-fun m!1228397 () Bool)

(assert (=> mapNonEmpty!57430 m!1228397))

(declare-fun m!1228399 () Bool)

(assert (=> b!1340631 m!1228399))

(declare-fun m!1228401 () Bool)

(assert (=> b!1340627 m!1228401))

(declare-fun m!1228403 () Bool)

(assert (=> b!1340627 m!1228403))

(declare-fun m!1228405 () Bool)

(assert (=> b!1340627 m!1228405))

(declare-fun m!1228407 () Bool)

(assert (=> b!1340627 m!1228407))

(declare-fun m!1228409 () Bool)

(assert (=> b!1340627 m!1228409))

(assert (=> b!1340627 m!1228403))

(declare-fun m!1228411 () Bool)

(assert (=> b!1340627 m!1228411))

(assert (=> b!1340627 m!1228405))

(assert (=> b!1340627 m!1228407))

(declare-fun m!1228413 () Bool)

(assert (=> b!1340627 m!1228413))

(declare-fun m!1228415 () Bool)

(assert (=> b!1340627 m!1228415))

(assert (=> b!1340632 m!1228415))

(declare-fun m!1228417 () Bool)

(assert (=> b!1340630 m!1228417))

(assert (=> b!1340635 m!1228415))

(assert (=> b!1340635 m!1228415))

(declare-fun m!1228419 () Bool)

(assert (=> b!1340635 m!1228419))

(declare-fun m!1228421 () Bool)

(assert (=> b!1340625 m!1228421))

(assert (=> b!1340625 m!1228421))

(declare-fun m!1228423 () Bool)

(assert (=> b!1340625 m!1228423))

(check-sat (not b_lambda!24335) (not b!1340627) (not b!1340631) (not b!1340635) (not b!1340630) (not b!1340625) tp_is_empty!37149 (not mapNonEmpty!57430) b_and!50217 (not start!113134) (not b_next!31149))
(check-sat b_and!50217 (not b_next!31149))
