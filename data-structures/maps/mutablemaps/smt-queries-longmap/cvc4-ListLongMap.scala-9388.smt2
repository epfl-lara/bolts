; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111804 () Bool)

(assert start!111804)

(declare-fun b_free!30425 () Bool)

(declare-fun b_next!30425 () Bool)

(assert (=> start!111804 (= b_free!30425 (not b_next!30425))))

(declare-fun tp!106751 () Bool)

(declare-fun b_and!48973 () Bool)

(assert (=> start!111804 (= tp!106751 b_and!48973)))

(declare-fun b!1324295 () Bool)

(declare-fun e!755001 () Bool)

(declare-fun tp_is_empty!36245 () Bool)

(assert (=> b!1324295 (= e!755001 tp_is_empty!36245)))

(declare-fun mapNonEmpty!56015 () Bool)

(declare-fun mapRes!56015 () Bool)

(declare-fun tp!106752 () Bool)

(declare-fun e!755002 () Bool)

(assert (=> mapNonEmpty!56015 (= mapRes!56015 (and tp!106752 e!755002))))

(declare-datatypes ((V!53429 0))(
  ( (V!53430 (val!18197 Int)) )
))
(declare-datatypes ((ValueCell!17224 0))(
  ( (ValueCellFull!17224 (v!20825 V!53429)) (EmptyCell!17224) )
))
(declare-datatypes ((array!89359 0))(
  ( (array!89360 (arr!43149 (Array (_ BitVec 32) ValueCell!17224)) (size!43700 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89359)

(declare-fun mapValue!56015 () ValueCell!17224)

(declare-fun mapRest!56015 () (Array (_ BitVec 32) ValueCell!17224))

(declare-fun mapKey!56015 () (_ BitVec 32))

(assert (=> mapNonEmpty!56015 (= (arr!43149 _values!1337) (store mapRest!56015 mapKey!56015 mapValue!56015))))

(declare-fun b!1324296 () Bool)

(declare-fun e!755000 () Bool)

(assert (=> b!1324296 (= e!755000 false)))

(declare-datatypes ((array!89361 0))(
  ( (array!89362 (arr!43150 (Array (_ BitVec 32) (_ BitVec 64))) (size!43701 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89361)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53429)

(declare-fun minValue!1279 () V!53429)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun lt!589402 () Bool)

(declare-datatypes ((tuple2!23612 0))(
  ( (tuple2!23613 (_1!11816 (_ BitVec 64)) (_2!11816 V!53429)) )
))
(declare-datatypes ((List!30785 0))(
  ( (Nil!30782) (Cons!30781 (h!31990 tuple2!23612) (t!44718 List!30785)) )
))
(declare-datatypes ((ListLongMap!21281 0))(
  ( (ListLongMap!21282 (toList!10656 List!30785)) )
))
(declare-fun contains!8747 (ListLongMap!21281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5593 (array!89361 array!89359 (_ BitVec 32) (_ BitVec 32) V!53429 V!53429 (_ BitVec 32) Int) ListLongMap!21281)

(assert (=> b!1324296 (= lt!589402 (contains!8747 (getCurrentListMap!5593 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapIsEmpty!56015 () Bool)

(assert (=> mapIsEmpty!56015 mapRes!56015))

(declare-fun b!1324297 () Bool)

(declare-fun e!754998 () Bool)

(assert (=> b!1324297 (= e!754998 (and e!755001 mapRes!56015))))

(declare-fun condMapEmpty!56015 () Bool)

(declare-fun mapDefault!56015 () ValueCell!17224)

