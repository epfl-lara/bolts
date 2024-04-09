; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79152 () Bool)

(assert start!79152)

(declare-fun b_free!17337 () Bool)

(declare-fun b_next!17337 () Bool)

(assert (=> start!79152 (= b_free!17337 (not b_next!17337))))

(declare-fun tp!60452 () Bool)

(declare-fun b_and!28421 () Bool)

(assert (=> start!79152 (= tp!60452 b_and!28421)))

(declare-fun res!625394 () Bool)

(declare-fun e!521408 () Bool)

(assert (=> start!79152 (=> (not res!625394) (not e!521408))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79152 (= res!625394 (validMask!0 mask!1881))))

(assert (=> start!79152 e!521408))

(assert (=> start!79152 true))

(declare-datatypes ((V!31425 0))(
  ( (V!31426 (val!9973 Int)) )
))
(declare-datatypes ((ValueCell!9441 0))(
  ( (ValueCellFull!9441 (v!12491 V!31425)) (EmptyCell!9441) )
))
(declare-datatypes ((array!55666 0))(
  ( (array!55667 (arr!26774 (Array (_ BitVec 32) ValueCell!9441)) (size!27234 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55666)

(declare-fun e!521409 () Bool)

(declare-fun array_inv!20840 (array!55666) Bool)

(assert (=> start!79152 (and (array_inv!20840 _values!1231) e!521409)))

(assert (=> start!79152 tp!60452))

(declare-datatypes ((array!55668 0))(
  ( (array!55669 (arr!26775 (Array (_ BitVec 32) (_ BitVec 64))) (size!27235 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55668)

(declare-fun array_inv!20841 (array!55668) Bool)

(assert (=> start!79152 (array_inv!20841 _keys!1487)))

(declare-fun tp_is_empty!19845 () Bool)

(assert (=> start!79152 tp_is_empty!19845))

(declare-fun b!928551 () Bool)

(declare-fun e!521407 () Bool)

(assert (=> b!928551 (= e!521407 tp_is_empty!19845)))

(declare-fun b!928552 () Bool)

(declare-fun e!521406 () Bool)

(declare-fun mapRes!31524 () Bool)

(assert (=> b!928552 (= e!521409 (and e!521406 mapRes!31524))))

(declare-fun condMapEmpty!31524 () Bool)

(declare-fun mapDefault!31524 () ValueCell!9441)

(assert (=> b!928552 (= condMapEmpty!31524 (= (arr!26774 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9441)) mapDefault!31524)))))

(declare-fun b!928553 () Bool)

(declare-fun res!625392 () Bool)

(assert (=> b!928553 (=> (not res!625392) (not e!521408))))

(declare-datatypes ((List!18960 0))(
  ( (Nil!18957) (Cons!18956 (h!20102 (_ BitVec 64)) (t!27025 List!18960)) )
))
(declare-fun arrayNoDuplicates!0 (array!55668 (_ BitVec 32) List!18960) Bool)

(assert (=> b!928553 (= res!625392 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18957))))

(declare-fun b!928554 () Bool)

(declare-fun e!521404 () Bool)

(assert (=> b!928554 (= e!521408 e!521404)))

(declare-fun res!625397 () Bool)

(assert (=> b!928554 (=> (not res!625397) (not e!521404))))

(declare-datatypes ((tuple2!13136 0))(
  ( (tuple2!13137 (_1!6578 (_ BitVec 64)) (_2!6578 V!31425)) )
))
(declare-datatypes ((List!18961 0))(
  ( (Nil!18958) (Cons!18957 (h!20103 tuple2!13136) (t!27026 List!18961)) )
))
(declare-datatypes ((ListLongMap!11847 0))(
  ( (ListLongMap!11848 (toList!5939 List!18961)) )
))
(declare-fun lt!418863 () ListLongMap!11847)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4958 (ListLongMap!11847 (_ BitVec 64)) Bool)

(assert (=> b!928554 (= res!625397 (contains!4958 lt!418863 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31425)

(declare-fun minValue!1173 () V!31425)

(declare-fun getCurrentListMap!3152 (array!55668 array!55666 (_ BitVec 32) (_ BitVec 32) V!31425 V!31425 (_ BitVec 32) Int) ListLongMap!11847)

(assert (=> b!928554 (= lt!418863 (getCurrentListMap!3152 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928555 () Bool)

(declare-fun res!625393 () Bool)

(assert (=> b!928555 (=> (not res!625393) (not e!521408))))

(assert (=> b!928555 (= res!625393 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27235 _keys!1487))))))

(declare-fun b!928556 () Bool)

(assert (=> b!928556 (= e!521406 tp_is_empty!19845)))

(declare-fun b!928557 () Bool)

(assert (=> b!928557 (= e!521404 false)))

(declare-fun lt!418862 () V!31425)

(declare-fun apply!735 (ListLongMap!11847 (_ BitVec 64)) V!31425)

(assert (=> b!928557 (= lt!418862 (apply!735 lt!418863 k0!1099))))

(declare-fun mapNonEmpty!31524 () Bool)

(declare-fun tp!60453 () Bool)

(assert (=> mapNonEmpty!31524 (= mapRes!31524 (and tp!60453 e!521407))))

(declare-fun mapRest!31524 () (Array (_ BitVec 32) ValueCell!9441))

(declare-fun mapValue!31524 () ValueCell!9441)

(declare-fun mapKey!31524 () (_ BitVec 32))

(assert (=> mapNonEmpty!31524 (= (arr!26774 _values!1231) (store mapRest!31524 mapKey!31524 mapValue!31524))))

(declare-fun b!928558 () Bool)

(declare-fun res!625396 () Bool)

(assert (=> b!928558 (=> (not res!625396) (not e!521408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55668 (_ BitVec 32)) Bool)

(assert (=> b!928558 (= res!625396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31524 () Bool)

(assert (=> mapIsEmpty!31524 mapRes!31524))

(declare-fun b!928559 () Bool)

(declare-fun res!625395 () Bool)

(assert (=> b!928559 (=> (not res!625395) (not e!521408))))

(assert (=> b!928559 (= res!625395 (and (= (size!27234 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27235 _keys!1487) (size!27234 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!79152 res!625394) b!928559))

(assert (= (and b!928559 res!625395) b!928558))

(assert (= (and b!928558 res!625396) b!928553))

(assert (= (and b!928553 res!625392) b!928555))

(assert (= (and b!928555 res!625393) b!928554))

(assert (= (and b!928554 res!625397) b!928557))

(assert (= (and b!928552 condMapEmpty!31524) mapIsEmpty!31524))

(assert (= (and b!928552 (not condMapEmpty!31524)) mapNonEmpty!31524))

(get-info :version)

(assert (= (and mapNonEmpty!31524 ((_ is ValueCellFull!9441) mapValue!31524)) b!928551))

(assert (= (and b!928552 ((_ is ValueCellFull!9441) mapDefault!31524)) b!928556))

(assert (= start!79152 b!928552))

(declare-fun m!863473 () Bool)

(assert (=> start!79152 m!863473))

(declare-fun m!863475 () Bool)

(assert (=> start!79152 m!863475))

(declare-fun m!863477 () Bool)

(assert (=> start!79152 m!863477))

(declare-fun m!863479 () Bool)

(assert (=> b!928557 m!863479))

(declare-fun m!863481 () Bool)

(assert (=> b!928558 m!863481))

(declare-fun m!863483 () Bool)

(assert (=> b!928553 m!863483))

(declare-fun m!863485 () Bool)

(assert (=> b!928554 m!863485))

(declare-fun m!863487 () Bool)

(assert (=> b!928554 m!863487))

(declare-fun m!863489 () Bool)

(assert (=> mapNonEmpty!31524 m!863489))

(check-sat (not b!928554) (not b!928557) (not b!928558) tp_is_empty!19845 (not b_next!17337) (not b!928553) b_and!28421 (not start!79152) (not mapNonEmpty!31524))
(check-sat b_and!28421 (not b_next!17337))
