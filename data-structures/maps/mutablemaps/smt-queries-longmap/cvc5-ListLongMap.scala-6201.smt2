; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79342 () Bool)

(assert start!79342)

(declare-fun b_free!17527 () Bool)

(declare-fun b_next!17527 () Bool)

(assert (=> start!79342 (= b_free!17527 (not b_next!17527))))

(declare-fun tp!61023 () Bool)

(declare-fun b_and!28623 () Bool)

(assert (=> start!79342 (= tp!61023 b_and!28623)))

(declare-fun b!931469 () Bool)

(declare-fun e!523137 () Bool)

(declare-fun e!523140 () Bool)

(assert (=> b!931469 (= e!523137 e!523140)))

(declare-fun res!627448 () Bool)

(assert (=> b!931469 (=> (not res!627448) (not e!523140))))

(declare-fun lt!419416 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931469 (= res!627448 (validKeyInArray!0 lt!419416))))

(declare-datatypes ((array!56038 0))(
  ( (array!56039 (arr!26960 (Array (_ BitVec 32) (_ BitVec 64))) (size!27420 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56038)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931469 (= lt!419416 (select (arr!26960 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931470 () Bool)

(declare-fun e!523139 () Bool)

(assert (=> b!931470 (= e!523139 e!523137)))

(declare-fun res!627452 () Bool)

(assert (=> b!931470 (=> (not res!627452) (not e!523137))))

(declare-datatypes ((V!31679 0))(
  ( (V!31680 (val!10068 Int)) )
))
(declare-datatypes ((tuple2!13292 0))(
  ( (tuple2!13293 (_1!6656 (_ BitVec 64)) (_2!6656 V!31679)) )
))
(declare-datatypes ((List!19107 0))(
  ( (Nil!19104) (Cons!19103 (h!20249 tuple2!13292) (t!27186 List!19107)) )
))
(declare-datatypes ((ListLongMap!12003 0))(
  ( (ListLongMap!12004 (toList!6017 List!19107)) )
))
(declare-fun lt!419418 () ListLongMap!12003)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5018 (ListLongMap!12003 (_ BitVec 64)) Bool)

(assert (=> b!931470 (= res!627452 (contains!5018 lt!419418 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9536 0))(
  ( (ValueCellFull!9536 (v!12586 V!31679)) (EmptyCell!9536) )
))
(declare-datatypes ((array!56040 0))(
  ( (array!56041 (arr!26961 (Array (_ BitVec 32) ValueCell!9536)) (size!27421 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56040)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31679)

(declare-fun minValue!1173 () V!31679)

(declare-fun getCurrentListMap!3213 (array!56038 array!56040 (_ BitVec 32) (_ BitVec 32) V!31679 V!31679 (_ BitVec 32) Int) ListLongMap!12003)

(assert (=> b!931470 (= lt!419418 (getCurrentListMap!3213 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!931471 () Bool)

(declare-fun res!627451 () Bool)

(assert (=> b!931471 (=> (not res!627451) (not e!523139))))

(assert (=> b!931471 (= res!627451 (and (= (size!27421 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27420 _keys!1487) (size!27421 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!627447 () Bool)

(assert (=> start!79342 (=> (not res!627447) (not e!523139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79342 (= res!627447 (validMask!0 mask!1881))))

(assert (=> start!79342 e!523139))

(assert (=> start!79342 true))

(declare-fun tp_is_empty!20035 () Bool)

(assert (=> start!79342 tp_is_empty!20035))

(declare-fun e!523136 () Bool)

(declare-fun array_inv!20956 (array!56040) Bool)

(assert (=> start!79342 (and (array_inv!20956 _values!1231) e!523136)))

(assert (=> start!79342 tp!61023))

(declare-fun array_inv!20957 (array!56038) Bool)

(assert (=> start!79342 (array_inv!20957 _keys!1487)))

(declare-fun b!931472 () Bool)

(declare-fun e!523135 () Bool)

(assert (=> b!931472 (= e!523135 tp_is_empty!20035)))

(declare-fun b!931473 () Bool)

(declare-fun res!627444 () Bool)

(assert (=> b!931473 (=> (not res!627444) (not e!523137))))

(assert (=> b!931473 (= res!627444 (validKeyInArray!0 k!1099))))

(declare-fun mapIsEmpty!31809 () Bool)

(declare-fun mapRes!31809 () Bool)

(assert (=> mapIsEmpty!31809 mapRes!31809))

(declare-fun b!931474 () Bool)

(declare-fun res!627446 () Bool)

(assert (=> b!931474 (=> (not res!627446) (not e!523137))))

(declare-fun v!791 () V!31679)

(declare-fun apply!803 (ListLongMap!12003 (_ BitVec 64)) V!31679)

(assert (=> b!931474 (= res!627446 (= (apply!803 lt!419418 k!1099) v!791))))

(declare-fun b!931475 () Bool)

(declare-fun res!627443 () Bool)

(assert (=> b!931475 (=> (not res!627443) (not e!523139))))

(declare-datatypes ((List!19108 0))(
  ( (Nil!19105) (Cons!19104 (h!20250 (_ BitVec 64)) (t!27187 List!19108)) )
))
(declare-fun arrayNoDuplicates!0 (array!56038 (_ BitVec 32) List!19108) Bool)

(assert (=> b!931475 (= res!627443 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19105))))

(declare-fun b!931476 () Bool)

(declare-fun e!523138 () Bool)

(assert (=> b!931476 (= e!523138 tp_is_empty!20035)))

(declare-fun b!931477 () Bool)

(assert (=> b!931477 (= e!523140 (not true))))

(declare-fun +!2727 (ListLongMap!12003 tuple2!13292) ListLongMap!12003)

(declare-fun get!14182 (ValueCell!9536 V!31679) V!31679)

(declare-fun dynLambda!1566 (Int (_ BitVec 64)) V!31679)

(assert (=> b!931477 (= (getCurrentListMap!3213 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2727 (getCurrentListMap!3213 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!13293 lt!419416 (get!14182 (select (arr!26961 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1566 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!31437 0))(
  ( (Unit!31438) )
))
(declare-fun lt!419417 () Unit!31437)

(declare-fun lemmaListMapRecursiveValidKeyArray!162 (array!56038 array!56040 (_ BitVec 32) (_ BitVec 32) V!31679 V!31679 (_ BitVec 32) Int) Unit!31437)

(assert (=> b!931477 (= lt!419417 (lemmaListMapRecursiveValidKeyArray!162 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!931478 () Bool)

(assert (=> b!931478 (= e!523136 (and e!523138 mapRes!31809))))

(declare-fun condMapEmpty!31809 () Bool)

(declare-fun mapDefault!31809 () ValueCell!9536)

