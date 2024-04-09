; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101360 () Bool)

(assert start!101360)

(declare-fun b_free!26221 () Bool)

(declare-fun b_next!26221 () Bool)

(assert (=> start!101360 (= b_free!26221 (not b_next!26221))))

(declare-fun tp!91689 () Bool)

(declare-fun b_and!43587 () Bool)

(assert (=> start!101360 (= tp!91689 b_and!43587)))

(declare-fun b!1217297 () Bool)

(declare-fun e!691136 () Bool)

(declare-fun e!691138 () Bool)

(assert (=> b!1217297 (= e!691136 (not e!691138))))

(declare-fun res!808474 () Bool)

(assert (=> b!1217297 (=> res!808474 e!691138)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1217297 (= res!808474 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78598 0))(
  ( (array!78599 (arr!37929 (Array (_ BitVec 32) (_ BitVec 64))) (size!38466 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78598)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1217297 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40290 0))(
  ( (Unit!40291) )
))
(declare-fun lt!553251 () Unit!40290)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78598 (_ BitVec 64) (_ BitVec 32)) Unit!40290)

(assert (=> b!1217297 (= lt!553251 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1217298 () Bool)

(declare-fun res!808476 () Bool)

(declare-fun e!691143 () Bool)

(assert (=> b!1217298 (=> (not res!808476) (not e!691143))))

(declare-datatypes ((List!26914 0))(
  ( (Nil!26911) (Cons!26910 (h!28119 (_ BitVec 64)) (t!40122 List!26914)) )
))
(declare-fun arrayNoDuplicates!0 (array!78598 (_ BitVec 32) List!26914) Bool)

(assert (=> b!1217298 (= res!808476 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26911))))

(declare-fun b!1217299 () Bool)

(declare-fun res!808482 () Bool)

(assert (=> b!1217299 (=> (not res!808482) (not e!691143))))

(assert (=> b!1217299 (= res!808482 (= (select (arr!37929 _keys!1208) i!673) k!934))))

(declare-fun b!1217300 () Bool)

(declare-fun e!691137 () Bool)

(assert (=> b!1217300 (= e!691137 (bvslt from!1455 (size!38466 _keys!1208)))))

(declare-datatypes ((V!46361 0))(
  ( (V!46362 (val!15519 Int)) )
))
(declare-fun lt!553247 () V!46361)

(declare-datatypes ((ValueCell!14753 0))(
  ( (ValueCellFull!14753 (v!18174 V!46361)) (EmptyCell!14753) )
))
(declare-datatypes ((array!78600 0))(
  ( (array!78601 (arr!37930 (Array (_ BitVec 32) ValueCell!14753)) (size!38467 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78600)

(declare-datatypes ((tuple2!20094 0))(
  ( (tuple2!20095 (_1!10057 (_ BitVec 64)) (_2!10057 V!46361)) )
))
(declare-datatypes ((List!26915 0))(
  ( (Nil!26912) (Cons!26911 (h!28120 tuple2!20094) (t!40123 List!26915)) )
))
(declare-datatypes ((ListLongMap!18075 0))(
  ( (ListLongMap!18076 (toList!9053 List!26915)) )
))
(declare-fun lt!553255 () ListLongMap!18075)

(declare-fun lt!553248 () ListLongMap!18075)

(declare-fun +!4036 (ListLongMap!18075 tuple2!20094) ListLongMap!18075)

(declare-fun get!19370 (ValueCell!14753 V!46361) V!46361)

(assert (=> b!1217300 (= lt!553248 (+!4036 lt!553255 (tuple2!20095 (select (arr!37929 _keys!1208) from!1455) (get!19370 (select (arr!37930 _values!996) from!1455) lt!553247))))))

(declare-fun res!808471 () Bool)

(assert (=> start!101360 (=> (not res!808471) (not e!691143))))

(assert (=> start!101360 (= res!808471 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38466 _keys!1208))))))

(assert (=> start!101360 e!691143))

(declare-fun tp_is_empty!30925 () Bool)

(assert (=> start!101360 tp_is_empty!30925))

(declare-fun array_inv!28780 (array!78598) Bool)

(assert (=> start!101360 (array_inv!28780 _keys!1208)))

(assert (=> start!101360 true))

(assert (=> start!101360 tp!91689))

(declare-fun e!691141 () Bool)

(declare-fun array_inv!28781 (array!78600) Bool)

(assert (=> start!101360 (and (array_inv!28781 _values!996) e!691141)))

(declare-fun b!1217301 () Bool)

(declare-fun e!691142 () Bool)

(assert (=> b!1217301 (= e!691142 tp_is_empty!30925)))

(declare-fun b!1217302 () Bool)

(declare-fun e!691140 () Bool)

(declare-fun mapRes!48265 () Bool)

(assert (=> b!1217302 (= e!691141 (and e!691140 mapRes!48265))))

(declare-fun condMapEmpty!48265 () Bool)

(declare-fun mapDefault!48265 () ValueCell!14753)

