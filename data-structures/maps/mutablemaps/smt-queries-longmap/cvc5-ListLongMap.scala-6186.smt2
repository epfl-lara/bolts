; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79252 () Bool)

(assert start!79252)

(declare-fun b_free!17437 () Bool)

(declare-fun b_next!17437 () Bool)

(assert (=> start!79252 (= b_free!17437 (not b_next!17437))))

(declare-fun tp!60753 () Bool)

(declare-fun b_and!28521 () Bool)

(assert (=> start!79252 (= tp!60753 b_and!28521)))

(declare-fun mapNonEmpty!31674 () Bool)

(declare-fun mapRes!31674 () Bool)

(declare-fun tp!60752 () Bool)

(declare-fun e!522306 () Bool)

(assert (=> mapNonEmpty!31674 (= mapRes!31674 (and tp!60752 e!522306))))

(declare-fun mapKey!31674 () (_ BitVec 32))

(declare-datatypes ((V!31559 0))(
  ( (V!31560 (val!10023 Int)) )
))
(declare-datatypes ((ValueCell!9491 0))(
  ( (ValueCellFull!9491 (v!12541 V!31559)) (EmptyCell!9491) )
))
(declare-fun mapRest!31674 () (Array (_ BitVec 32) ValueCell!9491))

(declare-datatypes ((array!55860 0))(
  ( (array!55861 (arr!26871 (Array (_ BitVec 32) ValueCell!9491)) (size!27331 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55860)

(declare-fun mapValue!31674 () ValueCell!9491)

(assert (=> mapNonEmpty!31674 (= (arr!26871 _values!1231) (store mapRest!31674 mapKey!31674 mapValue!31674))))

(declare-fun b!930085 () Bool)

(declare-fun res!626480 () Bool)

(declare-fun e!522304 () Bool)

(assert (=> b!930085 (=> (not res!626480) (not e!522304))))

(declare-datatypes ((array!55862 0))(
  ( (array!55863 (arr!26872 (Array (_ BitVec 32) (_ BitVec 64))) (size!27332 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55862)

(declare-datatypes ((List!19034 0))(
  ( (Nil!19031) (Cons!19030 (h!20176 (_ BitVec 64)) (t!27099 List!19034)) )
))
(declare-fun arrayNoDuplicates!0 (array!55862 (_ BitVec 32) List!19034) Bool)

(assert (=> b!930085 (= res!626480 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19031))))

(declare-fun b!930086 () Bool)

(declare-fun res!626482 () Bool)

(assert (=> b!930086 (=> (not res!626482) (not e!522304))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55862 (_ BitVec 32)) Bool)

(assert (=> b!930086 (= res!626482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930087 () Bool)

(declare-fun res!626483 () Bool)

(declare-fun e!522305 () Bool)

(assert (=> b!930087 (=> (not res!626483) (not e!522305))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930087 (= res!626483 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!930088 () Bool)

(declare-fun e!522307 () Bool)

(declare-fun tp_is_empty!19945 () Bool)

(assert (=> b!930088 (= e!522307 tp_is_empty!19945)))

(declare-fun b!930089 () Bool)

(declare-fun res!626476 () Bool)

(assert (=> b!930089 (=> (not res!626476) (not e!522305))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((tuple2!13212 0))(
  ( (tuple2!13213 (_1!6616 (_ BitVec 64)) (_2!6616 V!31559)) )
))
(declare-datatypes ((List!19035 0))(
  ( (Nil!19032) (Cons!19031 (h!20177 tuple2!13212) (t!27100 List!19035)) )
))
(declare-datatypes ((ListLongMap!11923 0))(
  ( (ListLongMap!11924 (toList!5977 List!19035)) )
))
(declare-fun lt!419144 () ListLongMap!11923)

(declare-fun v!791 () V!31559)

(declare-fun apply!766 (ListLongMap!11923 (_ BitVec 64)) V!31559)

(assert (=> b!930089 (= res!626476 (= (apply!766 lt!419144 k!1099) v!791))))

(declare-fun b!930090 () Bool)

(assert (=> b!930090 (= e!522306 tp_is_empty!19945)))

(declare-fun b!930091 () Bool)

(assert (=> b!930091 (= e!522304 e!522305)))

(declare-fun res!626478 () Bool)

(assert (=> b!930091 (=> (not res!626478) (not e!522305))))

(declare-fun contains!4991 (ListLongMap!11923 (_ BitVec 64)) Bool)

(assert (=> b!930091 (= res!626478 (contains!4991 lt!419144 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31559)

(declare-fun minValue!1173 () V!31559)

(declare-fun getCurrentListMap!3185 (array!55862 array!55860 (_ BitVec 32) (_ BitVec 32) V!31559 V!31559 (_ BitVec 32) Int) ListLongMap!11923)

(assert (=> b!930091 (= lt!419144 (getCurrentListMap!3185 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!626479 () Bool)

(assert (=> start!79252 (=> (not res!626479) (not e!522304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79252 (= res!626479 (validMask!0 mask!1881))))

(assert (=> start!79252 e!522304))

(assert (=> start!79252 true))

(assert (=> start!79252 tp_is_empty!19945))

(declare-fun e!522309 () Bool)

(declare-fun array_inv!20898 (array!55860) Bool)

(assert (=> start!79252 (and (array_inv!20898 _values!1231) e!522309)))

(assert (=> start!79252 tp!60753))

(declare-fun array_inv!20899 (array!55862) Bool)

(assert (=> start!79252 (array_inv!20899 _keys!1487)))

(declare-fun b!930092 () Bool)

(declare-fun res!626477 () Bool)

(assert (=> b!930092 (=> (not res!626477) (not e!522304))))

(assert (=> b!930092 (= res!626477 (and (= (size!27331 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27332 _keys!1487) (size!27331 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930093 () Bool)

(assert (=> b!930093 (= e!522309 (and e!522307 mapRes!31674))))

(declare-fun condMapEmpty!31674 () Bool)

(declare-fun mapDefault!31674 () ValueCell!9491)

