; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101494 () Bool)

(assert start!101494)

(declare-fun b_free!26275 () Bool)

(declare-fun b_next!26275 () Bool)

(assert (=> start!101494 (= b_free!26275 (not b_next!26275))))

(declare-fun tp!91860 () Bool)

(declare-fun b_and!43749 () Bool)

(assert (=> start!101494 (= tp!91860 b_and!43749)))

(declare-fun b!1219234 () Bool)

(declare-fun e!692314 () Bool)

(declare-fun tp_is_empty!30979 () Bool)

(assert (=> b!1219234 (= e!692314 tp_is_empty!30979)))

(declare-fun b!1219235 () Bool)

(declare-fun e!692305 () Bool)

(assert (=> b!1219235 (= e!692305 true)))

(declare-datatypes ((array!78710 0))(
  ( (array!78711 (arr!37982 (Array (_ BitVec 32) (_ BitVec 64))) (size!38519 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78710)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!78710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1219235 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!40326 0))(
  ( (Unit!40327) )
))
(declare-fun lt!554297 () Unit!40326)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78710 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40326)

(assert (=> b!1219235 (= lt!554297 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1219236 () Bool)

(declare-fun e!692308 () Bool)

(declare-fun e!692309 () Bool)

(assert (=> b!1219236 (= e!692308 e!692309)))

(declare-fun res!809873 () Bool)

(assert (=> b!1219236 (=> (not res!809873) (not e!692309))))

(declare-fun lt!554302 () array!78710)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78710 (_ BitVec 32)) Bool)

(assert (=> b!1219236 (= res!809873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554302 mask!1564))))

(assert (=> b!1219236 (= lt!554302 (array!78711 (store (arr!37982 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38519 _keys!1208)))))

(declare-fun mapNonEmpty!48355 () Bool)

(declare-fun mapRes!48355 () Bool)

(declare-fun tp!91859 () Bool)

(declare-fun e!692316 () Bool)

(assert (=> mapNonEmpty!48355 (= mapRes!48355 (and tp!91859 e!692316))))

(declare-datatypes ((V!46433 0))(
  ( (V!46434 (val!15546 Int)) )
))
(declare-datatypes ((ValueCell!14780 0))(
  ( (ValueCellFull!14780 (v!18204 V!46433)) (EmptyCell!14780) )
))
(declare-fun mapRest!48355 () (Array (_ BitVec 32) ValueCell!14780))

(declare-fun mapKey!48355 () (_ BitVec 32))

(declare-fun mapValue!48355 () ValueCell!14780)

(declare-datatypes ((array!78712 0))(
  ( (array!78713 (arr!37983 (Array (_ BitVec 32) ValueCell!14780)) (size!38520 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78712)

(assert (=> mapNonEmpty!48355 (= (arr!37983 _values!996) (store mapRest!48355 mapKey!48355 mapValue!48355))))

(declare-fun res!809871 () Bool)

(assert (=> start!101494 (=> (not res!809871) (not e!692308))))

(assert (=> start!101494 (= res!809871 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38519 _keys!1208))))))

(assert (=> start!101494 e!692308))

(assert (=> start!101494 tp_is_empty!30979))

(declare-fun array_inv!28820 (array!78710) Bool)

(assert (=> start!101494 (array_inv!28820 _keys!1208)))

(assert (=> start!101494 true))

(assert (=> start!101494 tp!91860))

(declare-fun e!692310 () Bool)

(declare-fun array_inv!28821 (array!78712) Bool)

(assert (=> start!101494 (and (array_inv!28821 _values!996) e!692310)))

(declare-fun b!1219237 () Bool)

(declare-fun res!809860 () Bool)

(assert (=> b!1219237 (=> (not res!809860) (not e!692308))))

(assert (=> b!1219237 (= res!809860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1219238 () Bool)

(declare-fun res!809866 () Bool)

(assert (=> b!1219238 (=> (not res!809866) (not e!692309))))

(declare-datatypes ((List!26955 0))(
  ( (Nil!26952) (Cons!26951 (h!28160 (_ BitVec 64)) (t!40217 List!26955)) )
))
(declare-fun arrayNoDuplicates!0 (array!78710 (_ BitVec 32) List!26955) Bool)

(assert (=> b!1219238 (= res!809866 (arrayNoDuplicates!0 lt!554302 #b00000000000000000000000000000000 Nil!26952))))

(declare-fun b!1219239 () Bool)

(declare-fun res!809869 () Bool)

(assert (=> b!1219239 (=> (not res!809869) (not e!692308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1219239 (= res!809869 (validMask!0 mask!1564))))

(declare-fun b!1219240 () Bool)

(declare-fun e!692313 () Bool)

(assert (=> b!1219240 (= e!692313 e!692305)))

(declare-fun res!809868 () Bool)

(assert (=> b!1219240 (=> res!809868 e!692305)))

(assert (=> b!1219240 (= res!809868 (not (= (select (arr!37982 _keys!1208) from!1455) k!934)))))

(declare-fun e!692315 () Bool)

(assert (=> b!1219240 e!692315))

(declare-fun res!809859 () Bool)

(assert (=> b!1219240 (=> (not res!809859) (not e!692315))))

(declare-datatypes ((tuple2!20136 0))(
  ( (tuple2!20137 (_1!10078 (_ BitVec 64)) (_2!10078 V!46433)) )
))
(declare-datatypes ((List!26956 0))(
  ( (Nil!26953) (Cons!26952 (h!28161 tuple2!20136) (t!40218 List!26956)) )
))
(declare-datatypes ((ListLongMap!18117 0))(
  ( (ListLongMap!18118 (toList!9074 List!26956)) )
))
(declare-fun lt!554304 () ListLongMap!18117)

(declare-fun lt!554306 () ListLongMap!18117)

(declare-fun lt!554298 () V!46433)

(declare-fun +!4053 (ListLongMap!18117 tuple2!20136) ListLongMap!18117)

(declare-fun get!19411 (ValueCell!14780 V!46433) V!46433)

(assert (=> b!1219240 (= res!809859 (= lt!554306 (+!4053 lt!554304 (tuple2!20137 (select (arr!37982 _keys!1208) from!1455) (get!19411 (select (arr!37983 _values!996) from!1455) lt!554298)))))))

(declare-fun b!1219241 () Bool)

(assert (=> b!1219241 (= e!692316 tp_is_empty!30979)))

(declare-fun b!1219242 () Bool)

(assert (=> b!1219242 (= e!692310 (and e!692314 mapRes!48355))))

(declare-fun condMapEmpty!48355 () Bool)

(declare-fun mapDefault!48355 () ValueCell!14780)

