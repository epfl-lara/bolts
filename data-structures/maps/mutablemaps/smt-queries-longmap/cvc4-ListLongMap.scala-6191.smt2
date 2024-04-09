; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79286 () Bool)

(assert start!79286)

(declare-fun b_free!17471 () Bool)

(declare-fun b_next!17471 () Bool)

(assert (=> start!79286 (= b_free!17471 (not b_next!17471))))

(declare-fun tp!60854 () Bool)

(declare-fun b_and!28555 () Bool)

(assert (=> start!79286 (= tp!60854 b_and!28555)))

(declare-fun b!930586 () Bool)

(declare-fun res!626823 () Bool)

(declare-fun e!522614 () Bool)

(assert (=> b!930586 (=> (not res!626823) (not e!522614))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55928 0))(
  ( (array!55929 (arr!26905 (Array (_ BitVec 32) (_ BitVec 64))) (size!27365 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55928)

(assert (=> b!930586 (= res!626823 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27365 _keys!1487))))))

(declare-fun b!930587 () Bool)

(declare-fun e!522613 () Bool)

(declare-fun tp_is_empty!19979 () Bool)

(assert (=> b!930587 (= e!522613 tp_is_empty!19979)))

(declare-fun mapNonEmpty!31725 () Bool)

(declare-fun mapRes!31725 () Bool)

(declare-fun tp!60855 () Bool)

(assert (=> mapNonEmpty!31725 (= mapRes!31725 (and tp!60855 e!522613))))

(declare-datatypes ((V!31603 0))(
  ( (V!31604 (val!10040 Int)) )
))
(declare-datatypes ((ValueCell!9508 0))(
  ( (ValueCellFull!9508 (v!12558 V!31603)) (EmptyCell!9508) )
))
(declare-fun mapRest!31725 () (Array (_ BitVec 32) ValueCell!9508))

(declare-fun mapValue!31725 () ValueCell!9508)

(declare-datatypes ((array!55930 0))(
  ( (array!55931 (arr!26906 (Array (_ BitVec 32) ValueCell!9508)) (size!27366 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55930)

(declare-fun mapKey!31725 () (_ BitVec 32))

(assert (=> mapNonEmpty!31725 (= (arr!26906 _values!1231) (store mapRest!31725 mapKey!31725 mapValue!31725))))

(declare-fun b!930588 () Bool)

(declare-fun res!626825 () Bool)

(assert (=> b!930588 (=> (not res!626825) (not e!522614))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55928 (_ BitVec 32)) Bool)

(assert (=> b!930588 (= res!626825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930589 () Bool)

(declare-fun e!522615 () Bool)

(assert (=> b!930589 (= e!522615 false)))

(declare-fun lt!419237 () V!31603)

(declare-datatypes ((tuple2!13244 0))(
  ( (tuple2!13245 (_1!6632 (_ BitVec 64)) (_2!6632 V!31603)) )
))
(declare-datatypes ((List!19064 0))(
  ( (Nil!19061) (Cons!19060 (h!20206 tuple2!13244) (t!27129 List!19064)) )
))
(declare-datatypes ((ListLongMap!11955 0))(
  ( (ListLongMap!11956 (toList!5993 List!19064)) )
))
(declare-fun lt!419238 () ListLongMap!11955)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!780 (ListLongMap!11955 (_ BitVec 64)) V!31603)

(assert (=> b!930589 (= lt!419237 (apply!780 lt!419238 k!1099))))

(declare-fun b!930590 () Bool)

(declare-fun res!626824 () Bool)

(assert (=> b!930590 (=> (not res!626824) (not e!522614))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!930590 (= res!626824 (and (= (size!27366 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27365 _keys!1487) (size!27366 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930591 () Bool)

(declare-fun e!522611 () Bool)

(declare-fun e!522610 () Bool)

(assert (=> b!930591 (= e!522611 (and e!522610 mapRes!31725))))

(declare-fun condMapEmpty!31725 () Bool)

(declare-fun mapDefault!31725 () ValueCell!9508)

