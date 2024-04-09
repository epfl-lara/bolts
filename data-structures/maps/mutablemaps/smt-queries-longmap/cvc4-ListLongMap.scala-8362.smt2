; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101794 () Bool)

(assert start!101794)

(declare-fun b_free!26447 () Bool)

(declare-fun b_next!26447 () Bool)

(assert (=> start!101794 (= b_free!26447 (not b_next!26447))))

(declare-fun tp!92387 () Bool)

(declare-fun b_and!44165 () Bool)

(assert (=> start!101794 (= tp!92387 b_and!44165)))

(declare-fun b!1225243 () Bool)

(declare-fun res!814312 () Bool)

(declare-fun e!695938 () Bool)

(assert (=> b!1225243 (=> (not res!814312) (not e!695938))))

(declare-datatypes ((array!79060 0))(
  ( (array!79061 (arr!38153 (Array (_ BitVec 32) (_ BitVec 64))) (size!38690 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79060)

(declare-datatypes ((List!27110 0))(
  ( (Nil!27107) (Cons!27106 (h!28315 (_ BitVec 64)) (t!40544 List!27110)) )
))
(declare-fun arrayNoDuplicates!0 (array!79060 (_ BitVec 32) List!27110) Bool)

(assert (=> b!1225243 (= res!814312 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27107))))

(declare-fun mapNonEmpty!48625 () Bool)

(declare-fun mapRes!48625 () Bool)

(declare-fun tp!92388 () Bool)

(declare-fun e!695930 () Bool)

(assert (=> mapNonEmpty!48625 (= mapRes!48625 (and tp!92388 e!695930))))

(declare-datatypes ((V!46661 0))(
  ( (V!46662 (val!15632 Int)) )
))
(declare-datatypes ((ValueCell!14866 0))(
  ( (ValueCellFull!14866 (v!18295 V!46661)) (EmptyCell!14866) )
))
(declare-fun mapValue!48625 () ValueCell!14866)

(declare-fun mapKey!48625 () (_ BitVec 32))

(declare-datatypes ((array!79062 0))(
  ( (array!79063 (arr!38154 (Array (_ BitVec 32) ValueCell!14866)) (size!38691 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79062)

(declare-fun mapRest!48625 () (Array (_ BitVec 32) ValueCell!14866))

(assert (=> mapNonEmpty!48625 (= (arr!38154 _values!996) (store mapRest!48625 mapKey!48625 mapValue!48625))))

(declare-fun b!1225244 () Bool)

(declare-fun res!814318 () Bool)

(assert (=> b!1225244 (=> (not res!814318) (not e!695938))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225244 (= res!814318 (validMask!0 mask!1564))))

(declare-fun b!1225246 () Bool)

(declare-fun res!814317 () Bool)

(assert (=> b!1225246 (=> (not res!814317) (not e!695938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79060 (_ BitVec 32)) Bool)

(assert (=> b!1225246 (= res!814317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225247 () Bool)

(declare-fun e!695935 () Bool)

(declare-fun e!695937 () Bool)

(assert (=> b!1225247 (= e!695935 (not e!695937))))

(declare-fun res!814309 () Bool)

(assert (=> b!1225247 (=> res!814309 e!695937)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225247 (= res!814309 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225247 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40548 0))(
  ( (Unit!40549) )
))
(declare-fun lt!558226 () Unit!40548)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79060 (_ BitVec 64) (_ BitVec 32)) Unit!40548)

(assert (=> b!1225247 (= lt!558226 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225248 () Bool)

(declare-fun e!695933 () Bool)

(assert (=> b!1225248 (= e!695933 true)))

(declare-datatypes ((tuple2!20300 0))(
  ( (tuple2!20301 (_1!10160 (_ BitVec 64)) (_2!10160 V!46661)) )
))
(declare-datatypes ((List!27111 0))(
  ( (Nil!27108) (Cons!27107 (h!28316 tuple2!20300) (t!40545 List!27111)) )
))
(declare-datatypes ((ListLongMap!18281 0))(
  ( (ListLongMap!18282 (toList!9156 List!27111)) )
))
(declare-fun lt!558234 () ListLongMap!18281)

(declare-fun lt!558231 () ListLongMap!18281)

(declare-fun -!1992 (ListLongMap!18281 (_ BitVec 64)) ListLongMap!18281)

(assert (=> b!1225248 (= (-!1992 lt!558234 k!934) lt!558231)))

(declare-fun lt!558230 () ListLongMap!18281)

(declare-fun lt!558229 () V!46661)

(declare-fun lt!558238 () Unit!40548)

(declare-fun addRemoveCommutativeForDiffKeys!231 (ListLongMap!18281 (_ BitVec 64) V!46661 (_ BitVec 64)) Unit!40548)

(assert (=> b!1225248 (= lt!558238 (addRemoveCommutativeForDiffKeys!231 lt!558230 (select (arr!38153 _keys!1208) from!1455) lt!558229 k!934))))

(declare-fun lt!558232 () ListLongMap!18281)

(declare-fun lt!558228 () ListLongMap!18281)

(declare-fun lt!558233 () ListLongMap!18281)

(assert (=> b!1225248 (and (= lt!558232 lt!558234) (= lt!558233 lt!558228))))

(declare-fun lt!558242 () tuple2!20300)

(declare-fun +!4116 (ListLongMap!18281 tuple2!20300) ListLongMap!18281)

(assert (=> b!1225248 (= lt!558234 (+!4116 lt!558230 lt!558242))))

(assert (=> b!1225248 (not (= (select (arr!38153 _keys!1208) from!1455) k!934))))

(declare-fun lt!558227 () Unit!40548)

(declare-fun e!695939 () Unit!40548)

(assert (=> b!1225248 (= lt!558227 e!695939)))

(declare-fun c!120435 () Bool)

(assert (=> b!1225248 (= c!120435 (= (select (arr!38153 _keys!1208) from!1455) k!934))))

(declare-fun e!695932 () Bool)

(assert (=> b!1225248 e!695932))

(declare-fun res!814323 () Bool)

(assert (=> b!1225248 (=> (not res!814323) (not e!695932))))

(declare-fun lt!558237 () ListLongMap!18281)

(assert (=> b!1225248 (= res!814323 (= lt!558237 lt!558231))))

(assert (=> b!1225248 (= lt!558231 (+!4116 lt!558233 lt!558242))))

(assert (=> b!1225248 (= lt!558242 (tuple2!20301 (select (arr!38153 _keys!1208) from!1455) lt!558229))))

(declare-fun lt!558235 () V!46661)

(declare-fun get!19536 (ValueCell!14866 V!46661) V!46661)

(assert (=> b!1225248 (= lt!558229 (get!19536 (select (arr!38154 _values!996) from!1455) lt!558235))))

(declare-fun b!1225249 () Bool)

(declare-fun res!814320 () Bool)

(assert (=> b!1225249 (=> (not res!814320) (not e!695938))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1225249 (= res!814320 (and (= (size!38691 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38690 _keys!1208) (size!38691 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225250 () Bool)

(declare-fun res!814319 () Bool)

(assert (=> b!1225250 (=> (not res!814319) (not e!695938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225250 (= res!814319 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!48625 () Bool)

(assert (=> mapIsEmpty!48625 mapRes!48625))

(declare-fun b!1225251 () Bool)

(declare-fun Unit!40550 () Unit!40548)

(assert (=> b!1225251 (= e!695939 Unit!40550)))

(declare-fun b!1225252 () Bool)

(declare-fun res!814313 () Bool)

(assert (=> b!1225252 (=> (not res!814313) (not e!695935))))

(declare-fun lt!558236 () array!79060)

(assert (=> b!1225252 (= res!814313 (arrayNoDuplicates!0 lt!558236 #b00000000000000000000000000000000 Nil!27107))))

(declare-fun b!1225253 () Bool)

(declare-fun e!695931 () Bool)

(declare-fun e!695929 () Bool)

(assert (=> b!1225253 (= e!695931 (and e!695929 mapRes!48625))))

(declare-fun condMapEmpty!48625 () Bool)

(declare-fun mapDefault!48625 () ValueCell!14866)

