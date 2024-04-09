; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79268 () Bool)

(assert start!79268)

(declare-fun b_free!17453 () Bool)

(declare-fun b_next!17453 () Bool)

(assert (=> start!79268 (= b_free!17453 (not b_next!17453))))

(declare-fun tp!60800 () Bool)

(declare-fun b_and!28537 () Bool)

(assert (=> start!79268 (= tp!60800 b_and!28537)))

(declare-fun b!930339 () Bool)

(declare-fun res!626658 () Bool)

(declare-fun e!522453 () Bool)

(assert (=> b!930339 (=> (not res!626658) (not e!522453))))

(declare-datatypes ((array!55892 0))(
  ( (array!55893 (arr!26887 (Array (_ BitVec 32) (_ BitVec 64))) (size!27347 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55892)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31579 0))(
  ( (V!31580 (val!10031 Int)) )
))
(declare-datatypes ((ValueCell!9499 0))(
  ( (ValueCellFull!9499 (v!12549 V!31579)) (EmptyCell!9499) )
))
(declare-datatypes ((array!55894 0))(
  ( (array!55895 (arr!26888 (Array (_ BitVec 32) ValueCell!9499)) (size!27348 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55894)

(assert (=> b!930339 (= res!626658 (and (= (size!27348 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27347 _keys!1487) (size!27348 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930340 () Bool)

(declare-fun e!522451 () Bool)

(declare-fun tp_is_empty!19961 () Bool)

(assert (=> b!930340 (= e!522451 tp_is_empty!19961)))

(declare-fun b!930341 () Bool)

(declare-fun res!626663 () Bool)

(assert (=> b!930341 (=> (not res!626663) (not e!522453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55892 (_ BitVec 32)) Bool)

(assert (=> b!930341 (= res!626663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930342 () Bool)

(declare-fun res!626661 () Bool)

(declare-fun e!522452 () Bool)

(assert (=> b!930342 (=> (not res!626661) (not e!522452))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31579)

(declare-datatypes ((tuple2!13228 0))(
  ( (tuple2!13229 (_1!6624 (_ BitVec 64)) (_2!6624 V!31579)) )
))
(declare-datatypes ((List!19048 0))(
  ( (Nil!19045) (Cons!19044 (h!20190 tuple2!13228) (t!27113 List!19048)) )
))
(declare-datatypes ((ListLongMap!11939 0))(
  ( (ListLongMap!11940 (toList!5985 List!19048)) )
))
(declare-fun lt!419184 () ListLongMap!11939)

(declare-fun apply!773 (ListLongMap!11939 (_ BitVec 64)) V!31579)

(assert (=> b!930342 (= res!626661 (= (apply!773 lt!419184 k!1099) v!791))))

(declare-fun mapNonEmpty!31698 () Bool)

(declare-fun mapRes!31698 () Bool)

(declare-fun tp!60801 () Bool)

(declare-fun e!522449 () Bool)

(assert (=> mapNonEmpty!31698 (= mapRes!31698 (and tp!60801 e!522449))))

(declare-fun mapRest!31698 () (Array (_ BitVec 32) ValueCell!9499))

(declare-fun mapValue!31698 () ValueCell!9499)

(declare-fun mapKey!31698 () (_ BitVec 32))

(assert (=> mapNonEmpty!31698 (= (arr!26888 _values!1231) (store mapRest!31698 mapKey!31698 mapValue!31698))))

(declare-fun b!930343 () Bool)

(declare-fun res!626662 () Bool)

(assert (=> b!930343 (=> (not res!626662) (not e!522453))))

(declare-datatypes ((List!19049 0))(
  ( (Nil!19046) (Cons!19045 (h!20191 (_ BitVec 64)) (t!27114 List!19049)) )
))
(declare-fun arrayNoDuplicates!0 (array!55892 (_ BitVec 32) List!19049) Bool)

(assert (=> b!930343 (= res!626662 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19046))))

(declare-fun mapIsEmpty!31698 () Bool)

(assert (=> mapIsEmpty!31698 mapRes!31698))

(declare-fun b!930344 () Bool)

(declare-fun res!626659 () Bool)

(assert (=> b!930344 (=> (not res!626659) (not e!522453))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930344 (= res!626659 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27347 _keys!1487))))))

(declare-fun b!930345 () Bool)

(declare-fun e!522450 () Bool)

(assert (=> b!930345 (= e!522450 (and e!522451 mapRes!31698))))

(declare-fun condMapEmpty!31698 () Bool)

(declare-fun mapDefault!31698 () ValueCell!9499)

