; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79158 () Bool)

(assert start!79158)

(declare-fun b_free!17343 () Bool)

(declare-fun b_next!17343 () Bool)

(assert (=> start!79158 (= b_free!17343 (not b_next!17343))))

(declare-fun tp!60471 () Bool)

(declare-fun b_and!28427 () Bool)

(assert (=> start!79158 (= tp!60471 b_and!28427)))

(declare-fun b!928632 () Bool)

(declare-fun e!521463 () Bool)

(declare-fun e!521460 () Bool)

(assert (=> b!928632 (= e!521463 e!521460)))

(declare-fun res!625449 () Bool)

(assert (=> b!928632 (=> (not res!625449) (not e!521460))))

(declare-datatypes ((V!31433 0))(
  ( (V!31434 (val!9976 Int)) )
))
(declare-datatypes ((tuple2!13140 0))(
  ( (tuple2!13141 (_1!6580 (_ BitVec 64)) (_2!6580 V!31433)) )
))
(declare-datatypes ((List!18964 0))(
  ( (Nil!18961) (Cons!18960 (h!20106 tuple2!13140) (t!27029 List!18964)) )
))
(declare-datatypes ((ListLongMap!11851 0))(
  ( (ListLongMap!11852 (toList!5941 List!18964)) )
))
(declare-fun lt!418880 () ListLongMap!11851)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4959 (ListLongMap!11851 (_ BitVec 64)) Bool)

(assert (=> b!928632 (= res!625449 (contains!4959 lt!418880 k0!1099))))

(declare-datatypes ((array!55678 0))(
  ( (array!55679 (arr!26780 (Array (_ BitVec 32) (_ BitVec 64))) (size!27240 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55678)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9444 0))(
  ( (ValueCellFull!9444 (v!12494 V!31433)) (EmptyCell!9444) )
))
(declare-datatypes ((array!55680 0))(
  ( (array!55681 (arr!26781 (Array (_ BitVec 32) ValueCell!9444)) (size!27241 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55680)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31433)

(declare-fun minValue!1173 () V!31433)

(declare-fun getCurrentListMap!3153 (array!55678 array!55680 (_ BitVec 32) (_ BitVec 32) V!31433 V!31433 (_ BitVec 32) Int) ListLongMap!11851)

(assert (=> b!928632 (= lt!418880 (getCurrentListMap!3153 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928633 () Bool)

(declare-fun res!625446 () Bool)

(assert (=> b!928633 (=> (not res!625446) (not e!521463))))

(declare-datatypes ((List!18965 0))(
  ( (Nil!18962) (Cons!18961 (h!20107 (_ BitVec 64)) (t!27030 List!18965)) )
))
(declare-fun arrayNoDuplicates!0 (array!55678 (_ BitVec 32) List!18965) Bool)

(assert (=> b!928633 (= res!625446 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18962))))

(declare-fun mapNonEmpty!31533 () Bool)

(declare-fun mapRes!31533 () Bool)

(declare-fun tp!60470 () Bool)

(declare-fun e!521458 () Bool)

(assert (=> mapNonEmpty!31533 (= mapRes!31533 (and tp!60470 e!521458))))

(declare-fun mapRest!31533 () (Array (_ BitVec 32) ValueCell!9444))

(declare-fun mapKey!31533 () (_ BitVec 32))

(declare-fun mapValue!31533 () ValueCell!9444)

(assert (=> mapNonEmpty!31533 (= (arr!26781 _values!1231) (store mapRest!31533 mapKey!31533 mapValue!31533))))

(declare-fun b!928634 () Bool)

(assert (=> b!928634 (= e!521460 false)))

(declare-fun lt!418881 () V!31433)

(declare-fun apply!737 (ListLongMap!11851 (_ BitVec 64)) V!31433)

(assert (=> b!928634 (= lt!418881 (apply!737 lt!418880 k0!1099))))

(declare-fun b!928635 () Bool)

(declare-fun tp_is_empty!19851 () Bool)

(assert (=> b!928635 (= e!521458 tp_is_empty!19851)))

(declare-fun b!928636 () Bool)

(declare-fun res!625448 () Bool)

(assert (=> b!928636 (=> (not res!625448) (not e!521463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55678 (_ BitVec 32)) Bool)

(assert (=> b!928636 (= res!625448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928637 () Bool)

(declare-fun res!625450 () Bool)

(assert (=> b!928637 (=> (not res!625450) (not e!521463))))

(assert (=> b!928637 (= res!625450 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27240 _keys!1487))))))

(declare-fun b!928638 () Bool)

(declare-fun e!521462 () Bool)

(assert (=> b!928638 (= e!521462 tp_is_empty!19851)))

(declare-fun b!928639 () Bool)

(declare-fun e!521461 () Bool)

(assert (=> b!928639 (= e!521461 (and e!521462 mapRes!31533))))

(declare-fun condMapEmpty!31533 () Bool)

(declare-fun mapDefault!31533 () ValueCell!9444)

(assert (=> b!928639 (= condMapEmpty!31533 (= (arr!26781 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9444)) mapDefault!31533)))))

(declare-fun b!928640 () Bool)

(declare-fun res!625451 () Bool)

(assert (=> b!928640 (=> (not res!625451) (not e!521463))))

(assert (=> b!928640 (= res!625451 (and (= (size!27241 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27240 _keys!1487) (size!27241 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31533 () Bool)

(assert (=> mapIsEmpty!31533 mapRes!31533))

(declare-fun res!625447 () Bool)

(assert (=> start!79158 (=> (not res!625447) (not e!521463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79158 (= res!625447 (validMask!0 mask!1881))))

(assert (=> start!79158 e!521463))

(assert (=> start!79158 true))

(declare-fun array_inv!20842 (array!55680) Bool)

(assert (=> start!79158 (and (array_inv!20842 _values!1231) e!521461)))

(assert (=> start!79158 tp!60471))

(declare-fun array_inv!20843 (array!55678) Bool)

(assert (=> start!79158 (array_inv!20843 _keys!1487)))

(assert (=> start!79158 tp_is_empty!19851))

(assert (= (and start!79158 res!625447) b!928640))

(assert (= (and b!928640 res!625451) b!928636))

(assert (= (and b!928636 res!625448) b!928633))

(assert (= (and b!928633 res!625446) b!928637))

(assert (= (and b!928637 res!625450) b!928632))

(assert (= (and b!928632 res!625449) b!928634))

(assert (= (and b!928639 condMapEmpty!31533) mapIsEmpty!31533))

(assert (= (and b!928639 (not condMapEmpty!31533)) mapNonEmpty!31533))

(get-info :version)

(assert (= (and mapNonEmpty!31533 ((_ is ValueCellFull!9444) mapValue!31533)) b!928635))

(assert (= (and b!928639 ((_ is ValueCellFull!9444) mapDefault!31533)) b!928638))

(assert (= start!79158 b!928639))

(declare-fun m!863527 () Bool)

(assert (=> b!928634 m!863527))

(declare-fun m!863529 () Bool)

(assert (=> mapNonEmpty!31533 m!863529))

(declare-fun m!863531 () Bool)

(assert (=> start!79158 m!863531))

(declare-fun m!863533 () Bool)

(assert (=> start!79158 m!863533))

(declare-fun m!863535 () Bool)

(assert (=> start!79158 m!863535))

(declare-fun m!863537 () Bool)

(assert (=> b!928632 m!863537))

(declare-fun m!863539 () Bool)

(assert (=> b!928632 m!863539))

(declare-fun m!863541 () Bool)

(assert (=> b!928636 m!863541))

(declare-fun m!863543 () Bool)

(assert (=> b!928633 m!863543))

(check-sat b_and!28427 tp_is_empty!19851 (not mapNonEmpty!31533) (not b!928636) (not b!928633) (not b_next!17343) (not b!928634) (not start!79158) (not b!928632))
(check-sat b_and!28427 (not b_next!17343))
