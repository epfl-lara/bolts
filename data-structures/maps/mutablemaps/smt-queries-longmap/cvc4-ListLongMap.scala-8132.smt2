; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99698 () Bool)

(assert start!99698)

(declare-fun b_free!25241 () Bool)

(declare-fun b_next!25241 () Bool)

(assert (=> start!99698 (= b_free!25241 (not b_next!25241))))

(declare-fun tp!88437 () Bool)

(declare-fun b_and!41363 () Bool)

(assert (=> start!99698 (= tp!88437 b_and!41363)))

(declare-fun b!1181693 () Bool)

(declare-fun res!785383 () Bool)

(declare-fun e!671871 () Bool)

(assert (=> b!1181693 (=> (not res!785383) (not e!671871))))

(declare-datatypes ((array!76310 0))(
  ( (array!76311 (arr!36801 (Array (_ BitVec 32) (_ BitVec 64))) (size!37338 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76310)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1181693 (= res!785383 (= (select (arr!36801 _keys!1208) i!673) k!934))))

(declare-fun b!1181694 () Bool)

(declare-fun e!671874 () Bool)

(declare-fun e!671876 () Bool)

(assert (=> b!1181694 (= e!671874 (not e!671876))))

(declare-fun res!785372 () Bool)

(assert (=> b!1181694 (=> res!785372 e!671876)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1181694 (= res!785372 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181694 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39009 0))(
  ( (Unit!39010) )
))
(declare-fun lt!534580 () Unit!39009)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76310 (_ BitVec 64) (_ BitVec 32)) Unit!39009)

(assert (=> b!1181694 (= lt!534580 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46484 () Bool)

(declare-fun mapRes!46484 () Bool)

(assert (=> mapIsEmpty!46484 mapRes!46484))

(declare-fun b!1181695 () Bool)

(declare-fun res!785379 () Bool)

(assert (=> b!1181695 (=> (not res!785379) (not e!671871))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76310 (_ BitVec 32)) Bool)

(assert (=> b!1181695 (= res!785379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181696 () Bool)

(declare-fun res!785377 () Bool)

(assert (=> b!1181696 (=> (not res!785377) (not e!671871))))

(declare-datatypes ((List!26026 0))(
  ( (Nil!26023) (Cons!26022 (h!27231 (_ BitVec 64)) (t!38266 List!26026)) )
))
(declare-fun arrayNoDuplicates!0 (array!76310 (_ BitVec 32) List!26026) Bool)

(assert (=> b!1181696 (= res!785377 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26023))))

(declare-fun b!1181697 () Bool)

(declare-fun e!671878 () Bool)

(declare-fun e!671881 () Bool)

(assert (=> b!1181697 (= e!671878 e!671881)))

(declare-fun res!785380 () Bool)

(assert (=> b!1181697 (=> res!785380 e!671881)))

(assert (=> b!1181697 (= res!785380 (not (= (select (arr!36801 _keys!1208) from!1455) k!934)))))

(declare-fun b!1181698 () Bool)

(declare-fun res!785373 () Bool)

(assert (=> b!1181698 (=> (not res!785373) (not e!671871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181698 (= res!785373 (validMask!0 mask!1564))))

(declare-fun b!1181699 () Bool)

(declare-fun e!671870 () Bool)

(declare-fun e!671879 () Bool)

(assert (=> b!1181699 (= e!671870 (and e!671879 mapRes!46484))))

(declare-fun condMapEmpty!46484 () Bool)

(declare-datatypes ((V!44821 0))(
  ( (V!44822 (val!14942 Int)) )
))
(declare-datatypes ((ValueCell!14176 0))(
  ( (ValueCellFull!14176 (v!17581 V!44821)) (EmptyCell!14176) )
))
(declare-datatypes ((array!76312 0))(
  ( (array!76313 (arr!36802 (Array (_ BitVec 32) ValueCell!14176)) (size!37339 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76312)

(declare-fun mapDefault!46484 () ValueCell!14176)

