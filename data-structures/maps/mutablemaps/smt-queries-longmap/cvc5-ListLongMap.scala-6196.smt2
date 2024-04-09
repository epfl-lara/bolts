; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79312 () Bool)

(assert start!79312)

(declare-fun b_free!17497 () Bool)

(declare-fun b_next!17497 () Bool)

(assert (=> start!79312 (= b_free!17497 (not b_next!17497))))

(declare-fun tp!60932 () Bool)

(declare-fun b_and!28581 () Bool)

(assert (=> start!79312 (= tp!60932 b_and!28581)))

(declare-fun b!930936 () Bool)

(declare-fun res!627062 () Bool)

(declare-fun e!522848 () Bool)

(assert (=> b!930936 (=> (not res!627062) (not e!522848))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55978 0))(
  ( (array!55979 (arr!26930 (Array (_ BitVec 32) (_ BitVec 64))) (size!27390 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55978)

(assert (=> b!930936 (= res!627062 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27390 _keys!1487))))))

(declare-fun b!930937 () Bool)

(declare-fun e!522844 () Bool)

(assert (=> b!930937 (= e!522848 e!522844)))

(declare-fun res!627061 () Bool)

(assert (=> b!930937 (=> (not res!627061) (not e!522844))))

(declare-datatypes ((V!31639 0))(
  ( (V!31640 (val!10053 Int)) )
))
(declare-datatypes ((tuple2!13268 0))(
  ( (tuple2!13269 (_1!6644 (_ BitVec 64)) (_2!6644 V!31639)) )
))
(declare-datatypes ((List!19083 0))(
  ( (Nil!19080) (Cons!19079 (h!20225 tuple2!13268) (t!27148 List!19083)) )
))
(declare-datatypes ((ListLongMap!11979 0))(
  ( (ListLongMap!11980 (toList!6005 List!19083)) )
))
(declare-fun lt!419315 () ListLongMap!11979)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5009 (ListLongMap!11979 (_ BitVec 64)) Bool)

(assert (=> b!930937 (= res!627061 (contains!5009 lt!419315 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9521 0))(
  ( (ValueCellFull!9521 (v!12571 V!31639)) (EmptyCell!9521) )
))
(declare-datatypes ((array!55980 0))(
  ( (array!55981 (arr!26931 (Array (_ BitVec 32) ValueCell!9521)) (size!27391 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55980)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31639)

(declare-fun minValue!1173 () V!31639)

(declare-fun getCurrentListMap!3203 (array!55978 array!55980 (_ BitVec 32) (_ BitVec 32) V!31639 V!31639 (_ BitVec 32) Int) ListLongMap!11979)

(assert (=> b!930937 (= lt!419315 (getCurrentListMap!3203 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!627059 () Bool)

(assert (=> start!79312 (=> (not res!627059) (not e!522848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79312 (= res!627059 (validMask!0 mask!1881))))

(assert (=> start!79312 e!522848))

(assert (=> start!79312 true))

(declare-fun e!522845 () Bool)

(declare-fun array_inv!20936 (array!55980) Bool)

(assert (=> start!79312 (and (array_inv!20936 _values!1231) e!522845)))

(assert (=> start!79312 tp!60932))

(declare-fun array_inv!20937 (array!55978) Bool)

(assert (=> start!79312 (array_inv!20937 _keys!1487)))

(declare-fun tp_is_empty!20005 () Bool)

(assert (=> start!79312 tp_is_empty!20005))

(declare-fun b!930938 () Bool)

(assert (=> b!930938 (= e!522844 false)))

(declare-fun lt!419316 () V!31639)

(declare-fun apply!791 (ListLongMap!11979 (_ BitVec 64)) V!31639)

(assert (=> b!930938 (= lt!419316 (apply!791 lt!419315 k!1099))))

(declare-fun mapIsEmpty!31764 () Bool)

(declare-fun mapRes!31764 () Bool)

(assert (=> mapIsEmpty!31764 mapRes!31764))

(declare-fun b!930939 () Bool)

(declare-fun e!522846 () Bool)

(assert (=> b!930939 (= e!522846 tp_is_empty!20005)))

(declare-fun b!930940 () Bool)

(declare-fun res!627057 () Bool)

(assert (=> b!930940 (=> (not res!627057) (not e!522848))))

(declare-datatypes ((List!19084 0))(
  ( (Nil!19081) (Cons!19080 (h!20226 (_ BitVec 64)) (t!27149 List!19084)) )
))
(declare-fun arrayNoDuplicates!0 (array!55978 (_ BitVec 32) List!19084) Bool)

(assert (=> b!930940 (= res!627057 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19081))))

(declare-fun b!930941 () Bool)

(assert (=> b!930941 (= e!522845 (and e!522846 mapRes!31764))))

(declare-fun condMapEmpty!31764 () Bool)

(declare-fun mapDefault!31764 () ValueCell!9521)

