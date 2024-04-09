; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79330 () Bool)

(assert start!79330)

(declare-fun b_free!17515 () Bool)

(declare-fun b_next!17515 () Bool)

(assert (=> start!79330 (= b_free!17515 (not b_next!17515))))

(declare-fun tp!60987 () Bool)

(declare-fun b_and!28599 () Bool)

(assert (=> start!79330 (= tp!60987 b_and!28599)))

(declare-fun b!931223 () Bool)

(declare-fun res!627270 () Bool)

(declare-fun e!523009 () Bool)

(assert (=> b!931223 (=> (not res!627270) (not e!523009))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56014 0))(
  ( (array!56015 (arr!26948 (Array (_ BitVec 32) (_ BitVec 64))) (size!27408 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56014)

(assert (=> b!931223 (= res!627270 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27408 _keys!1487))))))

(declare-fun b!931224 () Bool)

(declare-fun e!523014 () Bool)

(assert (=> b!931224 (= e!523014 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27408 _keys!1487))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((V!31663 0))(
  ( (V!31664 (val!10062 Int)) )
))
(declare-datatypes ((ValueCell!9530 0))(
  ( (ValueCellFull!9530 (v!12580 V!31663)) (EmptyCell!9530) )
))
(declare-datatypes ((array!56016 0))(
  ( (array!56017 (arr!26949 (Array (_ BitVec 32) ValueCell!9530)) (size!27409 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56016)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!419363 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31663)

(declare-fun minValue!1173 () V!31663)

(declare-datatypes ((tuple2!13282 0))(
  ( (tuple2!13283 (_1!6651 (_ BitVec 64)) (_2!6651 V!31663)) )
))
(declare-datatypes ((List!19098 0))(
  ( (Nil!19095) (Cons!19094 (h!20240 tuple2!13282) (t!27165 List!19098)) )
))
(declare-datatypes ((ListLongMap!11993 0))(
  ( (ListLongMap!11994 (toList!6012 List!19098)) )
))
(declare-fun getCurrentListMap!3209 (array!56014 array!56016 (_ BitVec 32) (_ BitVec 32) V!31663 V!31663 (_ BitVec 32) Int) ListLongMap!11993)

(declare-fun +!2723 (ListLongMap!11993 tuple2!13282) ListLongMap!11993)

(declare-fun get!14174 (ValueCell!9530 V!31663) V!31663)

(declare-fun dynLambda!1562 (Int (_ BitVec 64)) V!31663)

(assert (=> b!931224 (= (getCurrentListMap!3209 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2723 (getCurrentListMap!3209 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!13283 lt!419363 (get!14174 (select (arr!26949 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1562 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!31429 0))(
  ( (Unit!31430) )
))
(declare-fun lt!419364 () Unit!31429)

(declare-fun lemmaListMapRecursiveValidKeyArray!158 (array!56014 array!56016 (_ BitVec 32) (_ BitVec 32) V!31663 V!31663 (_ BitVec 32) Int) Unit!31429)

(assert (=> b!931224 (= lt!419364 (lemmaListMapRecursiveValidKeyArray!158 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!931225 () Bool)

(declare-fun res!627263 () Bool)

(declare-fun e!523012 () Bool)

(assert (=> b!931225 (=> (not res!627263) (not e!523012))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31663)

(declare-fun lt!419362 () ListLongMap!11993)

(declare-fun apply!798 (ListLongMap!11993 (_ BitVec 64)) V!31663)

(assert (=> b!931225 (= res!627263 (= (apply!798 lt!419362 k!1099) v!791))))

(declare-fun b!931226 () Bool)

(declare-fun e!523008 () Bool)

(declare-fun e!523011 () Bool)

(declare-fun mapRes!31791 () Bool)

(assert (=> b!931226 (= e!523008 (and e!523011 mapRes!31791))))

(declare-fun condMapEmpty!31791 () Bool)

(declare-fun mapDefault!31791 () ValueCell!9530)

