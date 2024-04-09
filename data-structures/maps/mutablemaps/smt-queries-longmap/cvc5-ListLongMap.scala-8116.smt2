; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99598 () Bool)

(assert start!99598)

(declare-fun b_free!25141 () Bool)

(declare-fun b_next!25141 () Bool)

(assert (=> start!99598 (= b_free!25141 (not b_next!25141))))

(declare-fun tp!88137 () Bool)

(declare-fun b_and!41163 () Bool)

(assert (=> start!99598 (= tp!88137 b_and!41163)))

(declare-fun b!1178361 () Bool)

(declare-fun e!669939 () Bool)

(declare-fun tp_is_empty!29671 () Bool)

(assert (=> b!1178361 (= e!669939 tp_is_empty!29671)))

(declare-fun b!1178362 () Bool)

(declare-fun res!782898 () Bool)

(declare-fun e!669932 () Bool)

(assert (=> b!1178362 (=> (not res!782898) (not e!669932))))

(declare-datatypes ((array!76114 0))(
  ( (array!76115 (arr!36703 (Array (_ BitVec 32) (_ BitVec 64))) (size!37240 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76114)

(declare-datatypes ((List!25942 0))(
  ( (Nil!25939) (Cons!25938 (h!27147 (_ BitVec 64)) (t!38082 List!25942)) )
))
(declare-fun arrayNoDuplicates!0 (array!76114 (_ BitVec 32) List!25942) Bool)

(assert (=> b!1178362 (= res!782898 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25939))))

(declare-fun b!1178363 () Bool)

(declare-fun res!782891 () Bool)

(assert (=> b!1178363 (=> (not res!782891) (not e!669932))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44689 0))(
  ( (V!44690 (val!14892 Int)) )
))
(declare-datatypes ((ValueCell!14126 0))(
  ( (ValueCellFull!14126 (v!17531 V!44689)) (EmptyCell!14126) )
))
(declare-datatypes ((array!76116 0))(
  ( (array!76117 (arr!36704 (Array (_ BitVec 32) ValueCell!14126)) (size!37241 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76116)

(assert (=> b!1178363 (= res!782891 (and (= (size!37241 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37240 _keys!1208) (size!37241 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178364 () Bool)

(declare-fun res!782887 () Bool)

(assert (=> b!1178364 (=> (not res!782887) (not e!669932))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1178364 (= res!782887 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37240 _keys!1208))))))

(declare-fun b!1178365 () Bool)

(declare-fun e!669930 () Bool)

(assert (=> b!1178365 (= e!669930 true)))

(declare-fun e!669940 () Bool)

(assert (=> b!1178365 e!669940))

(declare-fun res!782893 () Bool)

(assert (=> b!1178365 (=> (not res!782893) (not e!669940))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1178365 (= res!782893 (not (= (select (arr!36703 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38860 0))(
  ( (Unit!38861) )
))
(declare-fun lt!532289 () Unit!38860)

(declare-fun e!669934 () Unit!38860)

(assert (=> b!1178365 (= lt!532289 e!669934)))

(declare-fun c!116783 () Bool)

(assert (=> b!1178365 (= c!116783 (= (select (arr!36703 _keys!1208) from!1455) k!934))))

(declare-fun e!669931 () Bool)

(assert (=> b!1178365 e!669931))

(declare-fun res!782901 () Bool)

(assert (=> b!1178365 (=> (not res!782901) (not e!669931))))

(declare-datatypes ((tuple2!19178 0))(
  ( (tuple2!19179 (_1!9599 (_ BitVec 64)) (_2!9599 V!44689)) )
))
(declare-datatypes ((List!25943 0))(
  ( (Nil!25940) (Cons!25939 (h!27148 tuple2!19178) (t!38083 List!25943)) )
))
(declare-datatypes ((ListLongMap!17159 0))(
  ( (ListLongMap!17160 (toList!8595 List!25943)) )
))
(declare-fun lt!532290 () ListLongMap!17159)

(declare-fun lt!532295 () tuple2!19178)

(declare-fun lt!532291 () ListLongMap!17159)

(declare-fun +!3816 (ListLongMap!17159 tuple2!19178) ListLongMap!17159)

(assert (=> b!1178365 (= res!782901 (= lt!532291 (+!3816 lt!532290 lt!532295)))))

(declare-fun lt!532287 () V!44689)

(declare-fun get!18793 (ValueCell!14126 V!44689) V!44689)

(assert (=> b!1178365 (= lt!532295 (tuple2!19179 (select (arr!36703 _keys!1208) from!1455) (get!18793 (select (arr!36704 _values!996) from!1455) lt!532287)))))

(declare-fun res!782894 () Bool)

(assert (=> start!99598 (=> (not res!782894) (not e!669932))))

(assert (=> start!99598 (= res!782894 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37240 _keys!1208))))))

(assert (=> start!99598 e!669932))

(assert (=> start!99598 tp_is_empty!29671))

(declare-fun array_inv!27914 (array!76114) Bool)

(assert (=> start!99598 (array_inv!27914 _keys!1208)))

(assert (=> start!99598 true))

(assert (=> start!99598 tp!88137))

(declare-fun e!669935 () Bool)

(declare-fun array_inv!27915 (array!76116) Bool)

(assert (=> start!99598 (and (array_inv!27915 _values!996) e!669935)))

(declare-fun mapIsEmpty!46334 () Bool)

(declare-fun mapRes!46334 () Bool)

(assert (=> mapIsEmpty!46334 mapRes!46334))

(declare-fun b!1178366 () Bool)

(declare-fun e!669937 () Bool)

(declare-fun e!669928 () Bool)

(assert (=> b!1178366 (= e!669937 (not e!669928))))

(declare-fun res!782888 () Bool)

(assert (=> b!1178366 (=> res!782888 e!669928)))

(assert (=> b!1178366 (= res!782888 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178366 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!532294 () Unit!38860)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76114 (_ BitVec 64) (_ BitVec 32)) Unit!38860)

(assert (=> b!1178366 (= lt!532294 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178367 () Bool)

(declare-fun e!669936 () Bool)

(assert (=> b!1178367 (= e!669931 e!669936)))

(declare-fun res!782892 () Bool)

(assert (=> b!1178367 (=> res!782892 e!669936)))

(assert (=> b!1178367 (= res!782892 (not (= (select (arr!36703 _keys!1208) from!1455) k!934)))))

(declare-fun b!1178368 () Bool)

(declare-fun res!782897 () Bool)

(assert (=> b!1178368 (=> (not res!782897) (not e!669937))))

(declare-fun lt!532285 () array!76114)

(assert (=> b!1178368 (= res!782897 (arrayNoDuplicates!0 lt!532285 #b00000000000000000000000000000000 Nil!25939))))

(declare-fun b!1178369 () Bool)

(assert (=> b!1178369 (= e!669932 e!669937)))

(declare-fun res!782899 () Bool)

(assert (=> b!1178369 (=> (not res!782899) (not e!669937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76114 (_ BitVec 32)) Bool)

(assert (=> b!1178369 (= res!782899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532285 mask!1564))))

(assert (=> b!1178369 (= lt!532285 (array!76115 (store (arr!36703 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37240 _keys!1208)))))

(declare-fun b!1178370 () Bool)

(declare-fun res!782900 () Bool)

(assert (=> b!1178370 (=> (not res!782900) (not e!669932))))

(assert (=> b!1178370 (= res!782900 (= (select (arr!36703 _keys!1208) i!673) k!934))))

(declare-fun b!1178371 () Bool)

(declare-fun res!782889 () Bool)

(assert (=> b!1178371 (=> (not res!782889) (not e!669932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178371 (= res!782889 (validKeyInArray!0 k!934))))

(declare-fun b!1178372 () Bool)

(declare-fun e!669929 () Bool)

(assert (=> b!1178372 (= e!669935 (and e!669929 mapRes!46334))))

(declare-fun condMapEmpty!46334 () Bool)

(declare-fun mapDefault!46334 () ValueCell!14126)

