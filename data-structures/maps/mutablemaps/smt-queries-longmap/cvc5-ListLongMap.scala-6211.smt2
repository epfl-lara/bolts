; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79428 () Bool)

(assert start!79428)

(declare-fun b_free!17587 () Bool)

(declare-fun b_next!17587 () Bool)

(assert (=> start!79428 (= b_free!17587 (not b_next!17587))))

(declare-fun tp!61206 () Bool)

(declare-fun b_and!28751 () Bool)

(assert (=> start!79428 (= tp!61206 b_and!28751)))

(declare-fun b!932869 () Bool)

(declare-fun e!523879 () Bool)

(assert (=> b!932869 (= e!523879 (not true))))

(declare-datatypes ((array!56150 0))(
  ( (array!56151 (arr!27015 (Array (_ BitVec 32) (_ BitVec 64))) (size!27475 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56150)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((List!19147 0))(
  ( (Nil!19144) (Cons!19143 (h!20289 (_ BitVec 64)) (t!27286 List!19147)) )
))
(declare-fun arrayNoDuplicates!0 (array!56150 (_ BitVec 32) List!19147) Bool)

(assert (=> b!932869 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19144)))

(declare-datatypes ((Unit!31476 0))(
  ( (Unit!31477) )
))
(declare-fun lt!420134 () Unit!31476)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56150 (_ BitVec 32) (_ BitVec 32)) Unit!31476)

(assert (=> b!932869 (= lt!420134 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((V!31759 0))(
  ( (V!31760 (val!10098 Int)) )
))
(declare-datatypes ((tuple2!13340 0))(
  ( (tuple2!13341 (_1!6680 (_ BitVec 64)) (_2!6680 V!31759)) )
))
(declare-datatypes ((List!19148 0))(
  ( (Nil!19145) (Cons!19144 (h!20290 tuple2!13340) (t!27287 List!19148)) )
))
(declare-datatypes ((ListLongMap!12051 0))(
  ( (ListLongMap!12052 (toList!6041 List!19148)) )
))
(declare-fun lt!420135 () ListLongMap!12051)

(declare-fun lt!420131 () tuple2!13340)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5040 (ListLongMap!12051 (_ BitVec 64)) Bool)

(declare-fun +!2744 (ListLongMap!12051 tuple2!13340) ListLongMap!12051)

(assert (=> b!932869 (contains!5040 (+!2744 lt!420135 lt!420131) k!1099)))

(declare-fun lt!420136 () Unit!31476)

(declare-fun lt!420130 () (_ BitVec 64))

(declare-fun lt!420133 () V!31759)

(declare-fun addStillContains!500 (ListLongMap!12051 (_ BitVec 64) V!31759 (_ BitVec 64)) Unit!31476)

(assert (=> b!932869 (= lt!420136 (addStillContains!500 lt!420135 lt!420130 lt!420133 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9566 0))(
  ( (ValueCellFull!9566 (v!12617 V!31759)) (EmptyCell!9566) )
))
(declare-datatypes ((array!56152 0))(
  ( (array!56153 (arr!27016 (Array (_ BitVec 32) ValueCell!9566)) (size!27476 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56152)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31759)

(declare-fun minValue!1173 () V!31759)

(declare-fun getCurrentListMap!3233 (array!56150 array!56152 (_ BitVec 32) (_ BitVec 32) V!31759 V!31759 (_ BitVec 32) Int) ListLongMap!12051)

(assert (=> b!932869 (= (getCurrentListMap!3233 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2744 (getCurrentListMap!3233 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420131))))

(assert (=> b!932869 (= lt!420131 (tuple2!13341 lt!420130 lt!420133))))

(declare-fun get!14222 (ValueCell!9566 V!31759) V!31759)

(declare-fun dynLambda!1583 (Int (_ BitVec 64)) V!31759)

(assert (=> b!932869 (= lt!420133 (get!14222 (select (arr!27016 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1583 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420132 () Unit!31476)

(declare-fun lemmaListMapRecursiveValidKeyArray!179 (array!56150 array!56152 (_ BitVec 32) (_ BitVec 32) V!31759 V!31759 (_ BitVec 32) Int) Unit!31476)

(assert (=> b!932869 (= lt!420132 (lemmaListMapRecursiveValidKeyArray!179 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!628427 () Bool)

(declare-fun e!523876 () Bool)

(assert (=> start!79428 (=> (not res!628427) (not e!523876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79428 (= res!628427 (validMask!0 mask!1881))))

(assert (=> start!79428 e!523876))

(assert (=> start!79428 true))

(declare-fun tp_is_empty!20095 () Bool)

(assert (=> start!79428 tp_is_empty!20095))

(declare-fun e!523877 () Bool)

(declare-fun array_inv!20992 (array!56152) Bool)

(assert (=> start!79428 (and (array_inv!20992 _values!1231) e!523877)))

(assert (=> start!79428 tp!61206))

(declare-fun array_inv!20993 (array!56150) Bool)

(assert (=> start!79428 (array_inv!20993 _keys!1487)))

(declare-fun b!932870 () Bool)

(declare-fun res!628425 () Bool)

(declare-fun e!523878 () Bool)

(assert (=> b!932870 (=> (not res!628425) (not e!523878))))

(assert (=> b!932870 (= res!628425 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932871 () Bool)

(declare-fun res!628420 () Bool)

(assert (=> b!932871 (=> (not res!628420) (not e!523876))))

(assert (=> b!932871 (= res!628420 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19144))))

(declare-fun b!932872 () Bool)

(declare-fun res!628424 () Bool)

(assert (=> b!932872 (=> (not res!628424) (not e!523878))))

(declare-fun v!791 () V!31759)

(declare-fun apply!825 (ListLongMap!12051 (_ BitVec 64)) V!31759)

(assert (=> b!932872 (= res!628424 (= (apply!825 lt!420135 k!1099) v!791))))

(declare-fun b!932873 () Bool)

(declare-fun e!523875 () Bool)

(assert (=> b!932873 (= e!523875 tp_is_empty!20095)))

(declare-fun mapNonEmpty!31902 () Bool)

(declare-fun mapRes!31902 () Bool)

(declare-fun tp!61205 () Bool)

(assert (=> mapNonEmpty!31902 (= mapRes!31902 (and tp!61205 e!523875))))

(declare-fun mapValue!31902 () ValueCell!9566)

(declare-fun mapKey!31902 () (_ BitVec 32))

(declare-fun mapRest!31902 () (Array (_ BitVec 32) ValueCell!9566))

(assert (=> mapNonEmpty!31902 (= (arr!27016 _values!1231) (store mapRest!31902 mapKey!31902 mapValue!31902))))

(declare-fun b!932874 () Bool)

(assert (=> b!932874 (= e!523876 e!523878)))

(declare-fun res!628423 () Bool)

(assert (=> b!932874 (=> (not res!628423) (not e!523878))))

(assert (=> b!932874 (= res!628423 (contains!5040 lt!420135 k!1099))))

(assert (=> b!932874 (= lt!420135 (getCurrentListMap!3233 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932875 () Bool)

(declare-fun e!523880 () Bool)

(assert (=> b!932875 (= e!523877 (and e!523880 mapRes!31902))))

(declare-fun condMapEmpty!31902 () Bool)

(declare-fun mapDefault!31902 () ValueCell!9566)

