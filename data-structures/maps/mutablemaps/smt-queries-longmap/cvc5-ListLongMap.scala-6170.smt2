; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79156 () Bool)

(assert start!79156)

(declare-fun b_free!17341 () Bool)

(declare-fun b_next!17341 () Bool)

(assert (=> start!79156 (= b_free!17341 (not b_next!17341))))

(declare-fun tp!60465 () Bool)

(declare-fun b_and!28425 () Bool)

(assert (=> start!79156 (= tp!60465 b_and!28425)))

(declare-fun b!928605 () Bool)

(declare-fun e!521444 () Bool)

(assert (=> b!928605 (= e!521444 false)))

(declare-datatypes ((V!31431 0))(
  ( (V!31432 (val!9975 Int)) )
))
(declare-fun lt!418875 () V!31431)

(declare-datatypes ((tuple2!13138 0))(
  ( (tuple2!13139 (_1!6579 (_ BitVec 64)) (_2!6579 V!31431)) )
))
(declare-datatypes ((List!18963 0))(
  ( (Nil!18960) (Cons!18959 (h!20105 tuple2!13138) (t!27028 List!18963)) )
))
(declare-datatypes ((ListLongMap!11849 0))(
  ( (ListLongMap!11850 (toList!5940 List!18963)) )
))
(declare-fun lt!418874 () ListLongMap!11849)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!736 (ListLongMap!11849 (_ BitVec 64)) V!31431)

(assert (=> b!928605 (= lt!418875 (apply!736 lt!418874 k!1099))))

(declare-fun mapNonEmpty!31530 () Bool)

(declare-fun mapRes!31530 () Bool)

(declare-fun tp!60464 () Bool)

(declare-fun e!521441 () Bool)

(assert (=> mapNonEmpty!31530 (= mapRes!31530 (and tp!60464 e!521441))))

(declare-datatypes ((ValueCell!9443 0))(
  ( (ValueCellFull!9443 (v!12493 V!31431)) (EmptyCell!9443) )
))
(declare-fun mapValue!31530 () ValueCell!9443)

(declare-datatypes ((array!55674 0))(
  ( (array!55675 (arr!26778 (Array (_ BitVec 32) ValueCell!9443)) (size!27238 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55674)

(declare-fun mapRest!31530 () (Array (_ BitVec 32) ValueCell!9443))

(declare-fun mapKey!31530 () (_ BitVec 32))

(assert (=> mapNonEmpty!31530 (= (arr!26778 _values!1231) (store mapRest!31530 mapKey!31530 mapValue!31530))))

(declare-fun b!928606 () Bool)

(declare-fun e!521445 () Bool)

(declare-fun tp_is_empty!19849 () Bool)

(assert (=> b!928606 (= e!521445 tp_is_empty!19849)))

(declare-fun b!928607 () Bool)

(declare-fun res!625429 () Bool)

(declare-fun e!521440 () Bool)

(assert (=> b!928607 (=> (not res!625429) (not e!521440))))

(declare-datatypes ((array!55676 0))(
  ( (array!55677 (arr!26779 (Array (_ BitVec 32) (_ BitVec 64))) (size!27239 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55676)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55676 (_ BitVec 32)) Bool)

(assert (=> b!928607 (= res!625429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31530 () Bool)

(assert (=> mapIsEmpty!31530 mapRes!31530))

(declare-fun b!928608 () Bool)

(declare-fun res!625433 () Bool)

(assert (=> b!928608 (=> (not res!625433) (not e!521440))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!928608 (= res!625433 (and (= (size!27238 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27239 _keys!1487) (size!27238 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!928609 () Bool)

(declare-fun res!625432 () Bool)

(assert (=> b!928609 (=> (not res!625432) (not e!521440))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!928609 (= res!625432 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27239 _keys!1487))))))

(declare-fun b!928610 () Bool)

(declare-fun e!521443 () Bool)

(assert (=> b!928610 (= e!521443 (and e!521445 mapRes!31530))))

(declare-fun condMapEmpty!31530 () Bool)

(declare-fun mapDefault!31530 () ValueCell!9443)

