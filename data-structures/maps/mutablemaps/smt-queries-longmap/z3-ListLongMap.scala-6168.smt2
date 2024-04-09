; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79146 () Bool)

(assert start!79146)

(declare-fun b_free!17331 () Bool)

(declare-fun b_next!17331 () Bool)

(assert (=> start!79146 (= b_free!17331 (not b_next!17331))))

(declare-fun tp!60435 () Bool)

(declare-fun b_and!28415 () Bool)

(assert (=> start!79146 (= tp!60435 b_and!28415)))

(declare-fun b!928470 () Bool)

(declare-fun e!521350 () Bool)

(declare-fun tp_is_empty!19839 () Bool)

(assert (=> b!928470 (= e!521350 tp_is_empty!19839)))

(declare-fun mapIsEmpty!31515 () Bool)

(declare-fun mapRes!31515 () Bool)

(assert (=> mapIsEmpty!31515 mapRes!31515))

(declare-fun res!625338 () Bool)

(declare-fun e!521352 () Bool)

(assert (=> start!79146 (=> (not res!625338) (not e!521352))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79146 (= res!625338 (validMask!0 mask!1881))))

(assert (=> start!79146 e!521352))

(assert (=> start!79146 true))

(declare-datatypes ((V!31417 0))(
  ( (V!31418 (val!9970 Int)) )
))
(declare-datatypes ((ValueCell!9438 0))(
  ( (ValueCellFull!9438 (v!12488 V!31417)) (EmptyCell!9438) )
))
(declare-datatypes ((array!55654 0))(
  ( (array!55655 (arr!26768 (Array (_ BitVec 32) ValueCell!9438)) (size!27228 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55654)

(declare-fun e!521354 () Bool)

(declare-fun array_inv!20836 (array!55654) Bool)

(assert (=> start!79146 (and (array_inv!20836 _values!1231) e!521354)))

(assert (=> start!79146 tp!60435))

(declare-datatypes ((array!55656 0))(
  ( (array!55657 (arr!26769 (Array (_ BitVec 32) (_ BitVec 64))) (size!27229 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55656)

(declare-fun array_inv!20837 (array!55656) Bool)

(assert (=> start!79146 (array_inv!20837 _keys!1487)))

(assert (=> start!79146 tp_is_empty!19839))

(declare-fun b!928471 () Bool)

(declare-fun res!625342 () Bool)

(assert (=> b!928471 (=> (not res!625342) (not e!521352))))

(declare-datatypes ((List!18955 0))(
  ( (Nil!18952) (Cons!18951 (h!20097 (_ BitVec 64)) (t!27020 List!18955)) )
))
(declare-fun arrayNoDuplicates!0 (array!55656 (_ BitVec 32) List!18955) Bool)

(assert (=> b!928471 (= res!625342 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18952))))

(declare-fun b!928472 () Bool)

(declare-fun e!521353 () Bool)

(assert (=> b!928472 (= e!521353 tp_is_empty!19839)))

(declare-fun b!928473 () Bool)

(declare-fun res!625340 () Bool)

(assert (=> b!928473 (=> (not res!625340) (not e!521352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55656 (_ BitVec 32)) Bool)

(assert (=> b!928473 (= res!625340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928474 () Bool)

(declare-fun e!521351 () Bool)

(assert (=> b!928474 (= e!521351 false)))

(declare-fun lt!418845 () V!31417)

(declare-datatypes ((tuple2!13132 0))(
  ( (tuple2!13133 (_1!6576 (_ BitVec 64)) (_2!6576 V!31417)) )
))
(declare-datatypes ((List!18956 0))(
  ( (Nil!18953) (Cons!18952 (h!20098 tuple2!13132) (t!27021 List!18956)) )
))
(declare-datatypes ((ListLongMap!11843 0))(
  ( (ListLongMap!11844 (toList!5937 List!18956)) )
))
(declare-fun lt!418844 () ListLongMap!11843)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!733 (ListLongMap!11843 (_ BitVec 64)) V!31417)

(assert (=> b!928474 (= lt!418845 (apply!733 lt!418844 k0!1099))))

(declare-fun b!928475 () Bool)

(declare-fun res!625343 () Bool)

(assert (=> b!928475 (=> (not res!625343) (not e!521352))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928475 (= res!625343 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27229 _keys!1487))))))

(declare-fun mapNonEmpty!31515 () Bool)

(declare-fun tp!60434 () Bool)

(assert (=> mapNonEmpty!31515 (= mapRes!31515 (and tp!60434 e!521353))))

(declare-fun mapRest!31515 () (Array (_ BitVec 32) ValueCell!9438))

(declare-fun mapValue!31515 () ValueCell!9438)

(declare-fun mapKey!31515 () (_ BitVec 32))

(assert (=> mapNonEmpty!31515 (= (arr!26768 _values!1231) (store mapRest!31515 mapKey!31515 mapValue!31515))))

(declare-fun b!928476 () Bool)

(assert (=> b!928476 (= e!521354 (and e!521350 mapRes!31515))))

(declare-fun condMapEmpty!31515 () Bool)

(declare-fun mapDefault!31515 () ValueCell!9438)

(assert (=> b!928476 (= condMapEmpty!31515 (= (arr!26768 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9438)) mapDefault!31515)))))

(declare-fun b!928477 () Bool)

(declare-fun res!625339 () Bool)

(assert (=> b!928477 (=> (not res!625339) (not e!521352))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!928477 (= res!625339 (and (= (size!27228 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27229 _keys!1487) (size!27228 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928478 () Bool)

(assert (=> b!928478 (= e!521352 e!521351)))

(declare-fun res!625341 () Bool)

(assert (=> b!928478 (=> (not res!625341) (not e!521351))))

(declare-fun contains!4956 (ListLongMap!11843 (_ BitVec 64)) Bool)

(assert (=> b!928478 (= res!625341 (contains!4956 lt!418844 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31417)

(declare-fun minValue!1173 () V!31417)

(declare-fun getCurrentListMap!3150 (array!55656 array!55654 (_ BitVec 32) (_ BitVec 32) V!31417 V!31417 (_ BitVec 32) Int) ListLongMap!11843)

(assert (=> b!928478 (= lt!418844 (getCurrentListMap!3150 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!79146 res!625338) b!928477))

(assert (= (and b!928477 res!625339) b!928473))

(assert (= (and b!928473 res!625340) b!928471))

(assert (= (and b!928471 res!625342) b!928475))

(assert (= (and b!928475 res!625343) b!928478))

(assert (= (and b!928478 res!625341) b!928474))

(assert (= (and b!928476 condMapEmpty!31515) mapIsEmpty!31515))

(assert (= (and b!928476 (not condMapEmpty!31515)) mapNonEmpty!31515))

(get-info :version)

(assert (= (and mapNonEmpty!31515 ((_ is ValueCellFull!9438) mapValue!31515)) b!928472))

(assert (= (and b!928476 ((_ is ValueCellFull!9438) mapDefault!31515)) b!928470))

(assert (= start!79146 b!928476))

(declare-fun m!863419 () Bool)

(assert (=> b!928474 m!863419))

(declare-fun m!863421 () Bool)

(assert (=> mapNonEmpty!31515 m!863421))

(declare-fun m!863423 () Bool)

(assert (=> start!79146 m!863423))

(declare-fun m!863425 () Bool)

(assert (=> start!79146 m!863425))

(declare-fun m!863427 () Bool)

(assert (=> start!79146 m!863427))

(declare-fun m!863429 () Bool)

(assert (=> b!928471 m!863429))

(declare-fun m!863431 () Bool)

(assert (=> b!928473 m!863431))

(declare-fun m!863433 () Bool)

(assert (=> b!928478 m!863433))

(declare-fun m!863435 () Bool)

(assert (=> b!928478 m!863435))

(check-sat (not b!928473) b_and!28415 (not mapNonEmpty!31515) (not b!928478) (not b_next!17331) (not b!928471) tp_is_empty!19839 (not start!79146) (not b!928474))
(check-sat b_and!28415 (not b_next!17331))
