; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78780 () Bool)

(assert start!78780)

(declare-fun b_free!16965 () Bool)

(declare-fun b_next!16965 () Bool)

(assert (=> start!78780 (= b_free!16965 (not b_next!16965))))

(declare-fun tp!59337 () Bool)

(declare-fun b_and!27685 () Bool)

(assert (=> start!78780 (= tp!59337 b_and!27685)))

(declare-fun b!918712 () Bool)

(declare-fun res!619557 () Bool)

(declare-fun e!515741 () Bool)

(assert (=> b!918712 (=> (not res!619557) (not e!515741))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54938 0))(
  ( (array!54939 (arr!26410 (Array (_ BitVec 32) (_ BitVec 64))) (size!26870 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54938)

(assert (=> b!918712 (= res!619557 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26870 _keys!1487))))))

(declare-fun b!918713 () Bool)

(declare-fun e!515744 () Bool)

(declare-fun e!515742 () Bool)

(declare-fun mapRes!30966 () Bool)

(assert (=> b!918713 (= e!515744 (and e!515742 mapRes!30966))))

(declare-fun condMapEmpty!30966 () Bool)

(declare-datatypes ((V!30929 0))(
  ( (V!30930 (val!9787 Int)) )
))
(declare-datatypes ((ValueCell!9255 0))(
  ( (ValueCellFull!9255 (v!12305 V!30929)) (EmptyCell!9255) )
))
(declare-datatypes ((array!54940 0))(
  ( (array!54941 (arr!26411 (Array (_ BitVec 32) ValueCell!9255)) (size!26871 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54940)

(declare-fun mapDefault!30966 () ValueCell!9255)

(assert (=> b!918713 (= condMapEmpty!30966 (= (arr!26411 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9255)) mapDefault!30966)))))

(declare-fun mapNonEmpty!30966 () Bool)

(declare-fun tp!59336 () Bool)

(declare-fun e!515739 () Bool)

(assert (=> mapNonEmpty!30966 (= mapRes!30966 (and tp!59336 e!515739))))

(declare-fun mapKey!30966 () (_ BitVec 32))

(declare-fun mapValue!30966 () ValueCell!9255)

(declare-fun mapRest!30966 () (Array (_ BitVec 32) ValueCell!9255))

(assert (=> mapNonEmpty!30966 (= (arr!26411 _values!1231) (store mapRest!30966 mapKey!30966 mapValue!30966))))

(declare-fun b!918714 () Bool)

(declare-fun res!619556 () Bool)

(declare-fun e!515740 () Bool)

(assert (=> b!918714 (=> (not res!619556) (not e!515740))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918714 (= res!619556 (validKeyInArray!0 k0!1099))))

(declare-fun b!918715 () Bool)

(declare-fun tp_is_empty!19473 () Bool)

(assert (=> b!918715 (= e!515742 tp_is_empty!19473)))

(declare-fun b!918716 () Bool)

(declare-fun res!619559 () Bool)

(assert (=> b!918716 (=> (not res!619559) (not e!515740))))

(declare-datatypes ((tuple2!12800 0))(
  ( (tuple2!12801 (_1!6410 (_ BitVec 64)) (_2!6410 V!30929)) )
))
(declare-datatypes ((List!18642 0))(
  ( (Nil!18639) (Cons!18638 (h!19784 tuple2!12800) (t!26345 List!18642)) )
))
(declare-datatypes ((ListLongMap!11511 0))(
  ( (ListLongMap!11512 (toList!5771 List!18642)) )
))
(declare-fun lt!412366 () ListLongMap!11511)

(declare-fun v!791 () V!30929)

(declare-fun apply!589 (ListLongMap!11511 (_ BitVec 64)) V!30929)

(assert (=> b!918716 (= res!619559 (= (apply!589 lt!412366 k0!1099) v!791))))

(declare-fun res!619561 () Bool)

(assert (=> start!78780 (=> (not res!619561) (not e!515741))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78780 (= res!619561 (validMask!0 mask!1881))))

(assert (=> start!78780 e!515741))

(assert (=> start!78780 true))

(assert (=> start!78780 tp_is_empty!19473))

(declare-fun array_inv!20580 (array!54940) Bool)

(assert (=> start!78780 (and (array_inv!20580 _values!1231) e!515744)))

(assert (=> start!78780 tp!59337))

(declare-fun array_inv!20581 (array!54938) Bool)

(assert (=> start!78780 (array_inv!20581 _keys!1487)))

(declare-fun b!918717 () Bool)

(declare-fun e!515745 () Bool)

(assert (=> b!918717 (= e!515745 (not true))))

(declare-fun lt!412367 () tuple2!12800)

(declare-fun contains!4784 (ListLongMap!11511 (_ BitVec 64)) Bool)

(declare-fun +!2598 (ListLongMap!11511 tuple2!12800) ListLongMap!11511)

(assert (=> b!918717 (contains!4784 (+!2598 lt!412366 lt!412367) k0!1099)))

(declare-fun lt!412371 () (_ BitVec 64))

(declare-datatypes ((Unit!31003 0))(
  ( (Unit!31004) )
))
(declare-fun lt!412369 () Unit!31003)

(declare-fun lt!412368 () V!30929)

(declare-fun addStillContains!360 (ListLongMap!11511 (_ BitVec 64) V!30929 (_ BitVec 64)) Unit!31003)

(assert (=> b!918717 (= lt!412369 (addStillContains!360 lt!412366 lt!412371 lt!412368 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30929)

(declare-fun minValue!1173 () V!30929)

(declare-fun getCurrentListMap!2996 (array!54938 array!54940 (_ BitVec 32) (_ BitVec 32) V!30929 V!30929 (_ BitVec 32) Int) ListLongMap!11511)

(assert (=> b!918717 (= (getCurrentListMap!2996 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2598 (getCurrentListMap!2996 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412367))))

(assert (=> b!918717 (= lt!412367 (tuple2!12801 lt!412371 lt!412368))))

(declare-fun get!13865 (ValueCell!9255 V!30929) V!30929)

(declare-fun dynLambda!1437 (Int (_ BitVec 64)) V!30929)

(assert (=> b!918717 (= lt!412368 (get!13865 (select (arr!26411 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1437 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412370 () Unit!31003)

(declare-fun lemmaListMapRecursiveValidKeyArray!33 (array!54938 array!54940 (_ BitVec 32) (_ BitVec 32) V!30929 V!30929 (_ BitVec 32) Int) Unit!31003)

(assert (=> b!918717 (= lt!412370 (lemmaListMapRecursiveValidKeyArray!33 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!30966 () Bool)

(assert (=> mapIsEmpty!30966 mapRes!30966))

(declare-fun b!918718 () Bool)

(declare-fun res!619554 () Bool)

(assert (=> b!918718 (=> (not res!619554) (not e!515741))))

(assert (=> b!918718 (= res!619554 (and (= (size!26871 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26870 _keys!1487) (size!26871 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918719 () Bool)

(declare-fun res!619553 () Bool)

(assert (=> b!918719 (=> (not res!619553) (not e!515741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54938 (_ BitVec 32)) Bool)

(assert (=> b!918719 (= res!619553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918720 () Bool)

(assert (=> b!918720 (= e!515739 tp_is_empty!19473)))

(declare-fun b!918721 () Bool)

(declare-fun res!619560 () Bool)

(assert (=> b!918721 (=> (not res!619560) (not e!515740))))

(assert (=> b!918721 (= res!619560 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918722 () Bool)

(declare-fun res!619562 () Bool)

(assert (=> b!918722 (=> (not res!619562) (not e!515741))))

(declare-datatypes ((List!18643 0))(
  ( (Nil!18640) (Cons!18639 (h!19785 (_ BitVec 64)) (t!26346 List!18643)) )
))
(declare-fun arrayNoDuplicates!0 (array!54938 (_ BitVec 32) List!18643) Bool)

(assert (=> b!918722 (= res!619562 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18640))))

(declare-fun b!918723 () Bool)

(assert (=> b!918723 (= e!515740 e!515745)))

(declare-fun res!619558 () Bool)

(assert (=> b!918723 (=> (not res!619558) (not e!515745))))

(assert (=> b!918723 (= res!619558 (validKeyInArray!0 lt!412371))))

(assert (=> b!918723 (= lt!412371 (select (arr!26410 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918724 () Bool)

(assert (=> b!918724 (= e!515741 e!515740)))

(declare-fun res!619555 () Bool)

(assert (=> b!918724 (=> (not res!619555) (not e!515740))))

(assert (=> b!918724 (= res!619555 (contains!4784 lt!412366 k0!1099))))

(assert (=> b!918724 (= lt!412366 (getCurrentListMap!2996 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78780 res!619561) b!918718))

(assert (= (and b!918718 res!619554) b!918719))

(assert (= (and b!918719 res!619553) b!918722))

(assert (= (and b!918722 res!619562) b!918712))

(assert (= (and b!918712 res!619557) b!918724))

(assert (= (and b!918724 res!619555) b!918716))

(assert (= (and b!918716 res!619559) b!918721))

(assert (= (and b!918721 res!619560) b!918714))

(assert (= (and b!918714 res!619556) b!918723))

(assert (= (and b!918723 res!619558) b!918717))

(assert (= (and b!918713 condMapEmpty!30966) mapIsEmpty!30966))

(assert (= (and b!918713 (not condMapEmpty!30966)) mapNonEmpty!30966))

(get-info :version)

(assert (= (and mapNonEmpty!30966 ((_ is ValueCellFull!9255) mapValue!30966)) b!918720))

(assert (= (and b!918713 ((_ is ValueCellFull!9255) mapDefault!30966)) b!918715))

(assert (= start!78780 b!918713))

(declare-fun b_lambda!13497 () Bool)

(assert (=> (not b_lambda!13497) (not b!918717)))

(declare-fun t!26344 () Bool)

(declare-fun tb!5553 () Bool)

(assert (=> (and start!78780 (= defaultEntry!1235 defaultEntry!1235) t!26344) tb!5553))

(declare-fun result!10921 () Bool)

(assert (=> tb!5553 (= result!10921 tp_is_empty!19473)))

(assert (=> b!918717 t!26344))

(declare-fun b_and!27687 () Bool)

(assert (= b_and!27685 (and (=> t!26344 result!10921) b_and!27687)))

(declare-fun m!852519 () Bool)

(assert (=> start!78780 m!852519))

(declare-fun m!852521 () Bool)

(assert (=> start!78780 m!852521))

(declare-fun m!852523 () Bool)

(assert (=> start!78780 m!852523))

(declare-fun m!852525 () Bool)

(assert (=> b!918723 m!852525))

(declare-fun m!852527 () Bool)

(assert (=> b!918723 m!852527))

(declare-fun m!852529 () Bool)

(assert (=> b!918717 m!852529))

(declare-fun m!852531 () Bool)

(assert (=> b!918717 m!852531))

(declare-fun m!852533 () Bool)

(assert (=> b!918717 m!852533))

(declare-fun m!852535 () Bool)

(assert (=> b!918717 m!852535))

(declare-fun m!852537 () Bool)

(assert (=> b!918717 m!852537))

(assert (=> b!918717 m!852533))

(declare-fun m!852539 () Bool)

(assert (=> b!918717 m!852539))

(assert (=> b!918717 m!852529))

(assert (=> b!918717 m!852537))

(declare-fun m!852541 () Bool)

(assert (=> b!918717 m!852541))

(assert (=> b!918717 m!852531))

(declare-fun m!852543 () Bool)

(assert (=> b!918717 m!852543))

(declare-fun m!852545 () Bool)

(assert (=> b!918717 m!852545))

(declare-fun m!852547 () Bool)

(assert (=> b!918717 m!852547))

(declare-fun m!852549 () Bool)

(assert (=> b!918716 m!852549))

(declare-fun m!852551 () Bool)

(assert (=> b!918719 m!852551))

(declare-fun m!852553 () Bool)

(assert (=> b!918724 m!852553))

(declare-fun m!852555 () Bool)

(assert (=> b!918724 m!852555))

(declare-fun m!852557 () Bool)

(assert (=> mapNonEmpty!30966 m!852557))

(declare-fun m!852559 () Bool)

(assert (=> b!918722 m!852559))

(declare-fun m!852561 () Bool)

(assert (=> b!918714 m!852561))

(check-sat (not b!918714) (not b!918724) b_and!27687 (not mapNonEmpty!30966) tp_is_empty!19473 (not b_next!16965) (not b_lambda!13497) (not start!78780) (not b!918717) (not b!918719) (not b!918716) (not b!918722) (not b!918723))
(check-sat b_and!27687 (not b_next!16965))
