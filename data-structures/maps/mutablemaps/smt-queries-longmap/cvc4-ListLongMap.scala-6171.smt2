; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79166 () Bool)

(assert start!79166)

(declare-fun b_free!17351 () Bool)

(declare-fun b_next!17351 () Bool)

(assert (=> start!79166 (= b_free!17351 (not b_next!17351))))

(declare-fun tp!60495 () Bool)

(declare-fun b_and!28435 () Bool)

(assert (=> start!79166 (= tp!60495 b_and!28435)))

(declare-fun b!928740 () Bool)

(declare-fun e!521532 () Bool)

(assert (=> b!928740 (= e!521532 false)))

(declare-datatypes ((V!31443 0))(
  ( (V!31444 (val!9980 Int)) )
))
(declare-fun lt!418904 () V!31443)

(declare-datatypes ((tuple2!13148 0))(
  ( (tuple2!13149 (_1!6584 (_ BitVec 64)) (_2!6584 V!31443)) )
))
(declare-datatypes ((List!18972 0))(
  ( (Nil!18969) (Cons!18968 (h!20114 tuple2!13148) (t!27037 List!18972)) )
))
(declare-datatypes ((ListLongMap!11859 0))(
  ( (ListLongMap!11860 (toList!5945 List!18972)) )
))
(declare-fun lt!418905 () ListLongMap!11859)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!740 (ListLongMap!11859 (_ BitVec 64)) V!31443)

(assert (=> b!928740 (= lt!418904 (apply!740 lt!418905 k!1099))))

(declare-fun b!928742 () Bool)

(declare-fun res!625521 () Bool)

(declare-fun e!521530 () Bool)

(assert (=> b!928742 (=> (not res!625521) (not e!521530))))

(declare-datatypes ((array!55694 0))(
  ( (array!55695 (arr!26788 (Array (_ BitVec 32) (_ BitVec 64))) (size!27248 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55694)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9448 0))(
  ( (ValueCellFull!9448 (v!12498 V!31443)) (EmptyCell!9448) )
))
(declare-datatypes ((array!55696 0))(
  ( (array!55697 (arr!26789 (Array (_ BitVec 32) ValueCell!9448)) (size!27249 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55696)

(assert (=> b!928742 (= res!625521 (and (= (size!27249 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27248 _keys!1487) (size!27249 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928743 () Bool)

(declare-fun res!625518 () Bool)

(assert (=> b!928743 (=> (not res!625518) (not e!521530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55694 (_ BitVec 32)) Bool)

(assert (=> b!928743 (= res!625518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928744 () Bool)

(declare-fun res!625522 () Bool)

(assert (=> b!928744 (=> (not res!625522) (not e!521530))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928744 (= res!625522 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27248 _keys!1487))))))

(declare-fun b!928745 () Bool)

(declare-fun e!521535 () Bool)

(declare-fun tp_is_empty!19859 () Bool)

(assert (=> b!928745 (= e!521535 tp_is_empty!19859)))

(declare-fun b!928746 () Bool)

(declare-fun e!521534 () Bool)

(assert (=> b!928746 (= e!521534 tp_is_empty!19859)))

(declare-fun mapNonEmpty!31545 () Bool)

(declare-fun mapRes!31545 () Bool)

(declare-fun tp!60494 () Bool)

(assert (=> mapNonEmpty!31545 (= mapRes!31545 (and tp!60494 e!521535))))

(declare-fun mapValue!31545 () ValueCell!9448)

(declare-fun mapRest!31545 () (Array (_ BitVec 32) ValueCell!9448))

(declare-fun mapKey!31545 () (_ BitVec 32))

(assert (=> mapNonEmpty!31545 (= (arr!26789 _values!1231) (store mapRest!31545 mapKey!31545 mapValue!31545))))

(declare-fun b!928747 () Bool)

(declare-fun e!521533 () Bool)

(assert (=> b!928747 (= e!521533 (and e!521534 mapRes!31545))))

(declare-fun condMapEmpty!31545 () Bool)

(declare-fun mapDefault!31545 () ValueCell!9448)

