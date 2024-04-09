; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133632 () Bool)

(assert start!133632)

(declare-fun b_free!32017 () Bool)

(declare-fun b_next!32017 () Bool)

(assert (=> start!133632 (= b_free!32017 (not b_next!32017))))

(declare-fun tp!113175 () Bool)

(declare-fun b_and!51555 () Bool)

(assert (=> start!133632 (= tp!113175 b_and!51555)))

(declare-fun b!1561904 () Bool)

(declare-fun e!870415 () Bool)

(assert (=> b!1561904 (= e!870415 (not true))))

(declare-fun lt!671373 () Bool)

(declare-datatypes ((V!59785 0))(
  ( (V!59786 (val!19425 Int)) )
))
(declare-datatypes ((tuple2!25246 0))(
  ( (tuple2!25247 (_1!12633 (_ BitVec 64)) (_2!12633 V!59785)) )
))
(declare-datatypes ((List!36622 0))(
  ( (Nil!36619) (Cons!36618 (h!38065 tuple2!25246) (t!51436 List!36622)) )
))
(declare-datatypes ((ListLongMap!22693 0))(
  ( (ListLongMap!22694 (toList!11362 List!36622)) )
))
(declare-fun lt!671375 () ListLongMap!22693)

(declare-fun contains!10282 (ListLongMap!22693 (_ BitVec 64)) Bool)

(assert (=> b!1561904 (= lt!671373 (contains!10282 lt!671375 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1561904 (not (contains!10282 lt!671375 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671372 () V!59785)

(declare-fun lt!671376 () ListLongMap!22693)

(declare-datatypes ((array!104035 0))(
  ( (array!104036 (arr!50205 (Array (_ BitVec 32) (_ BitVec 64))) (size!50756 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104035)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun +!5016 (ListLongMap!22693 tuple2!25246) ListLongMap!22693)

(assert (=> b!1561904 (= lt!671375 (+!5016 lt!671376 (tuple2!25247 (select (arr!50205 _keys!637) from!782) lt!671372)))))

(declare-datatypes ((Unit!51896 0))(
  ( (Unit!51897) )
))
(declare-fun lt!671374 () Unit!51896)

(declare-fun addStillNotContains!552 (ListLongMap!22693 (_ BitVec 64) V!59785 (_ BitVec 64)) Unit!51896)

(assert (=> b!1561904 (= lt!671374 (addStillNotContains!552 lt!671376 (select (arr!50205 _keys!637) from!782) lt!671372 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18311 0))(
  ( (ValueCellFull!18311 (v!22174 V!59785)) (EmptyCell!18311) )
))
(declare-datatypes ((array!104037 0))(
  ( (array!104038 (arr!50206 (Array (_ BitVec 32) ValueCell!18311)) (size!50757 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104037)

(declare-fun get!26262 (ValueCell!18311 V!59785) V!59785)

(declare-fun dynLambda!3905 (Int (_ BitVec 64)) V!59785)

(assert (=> b!1561904 (= lt!671372 (get!26262 (select (arr!50206 _values!487) from!782) (dynLambda!3905 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59785)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59785)

(declare-fun getCurrentListMapNoExtraKeys!6722 (array!104035 array!104037 (_ BitVec 32) (_ BitVec 32) V!59785 V!59785 (_ BitVec 32) Int) ListLongMap!22693)

(assert (=> b!1561904 (= lt!671376 (getCurrentListMapNoExtraKeys!6722 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapIsEmpty!59400 () Bool)

(declare-fun mapRes!59400 () Bool)

(assert (=> mapIsEmpty!59400 mapRes!59400))

(declare-fun b!1561905 () Bool)

(declare-fun res!1068008 () Bool)

(assert (=> b!1561905 (=> (not res!1068008) (not e!870415))))

(assert (=> b!1561905 (= res!1068008 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50756 _keys!637)) (bvslt from!782 (size!50756 _keys!637))))))

(declare-fun b!1561906 () Bool)

(declare-fun e!870414 () Bool)

(declare-fun tp_is_empty!38683 () Bool)

(assert (=> b!1561906 (= e!870414 tp_is_empty!38683)))

(declare-fun b!1561907 () Bool)

(declare-fun res!1068006 () Bool)

(assert (=> b!1561907 (=> (not res!1068006) (not e!870415))))

(assert (=> b!1561907 (= res!1068006 (and (= (size!50757 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50756 _keys!637) (size!50757 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59400 () Bool)

(declare-fun tp!113176 () Bool)

(declare-fun e!870416 () Bool)

(assert (=> mapNonEmpty!59400 (= mapRes!59400 (and tp!113176 e!870416))))

(declare-fun mapKey!59400 () (_ BitVec 32))

(declare-fun mapRest!59400 () (Array (_ BitVec 32) ValueCell!18311))

(declare-fun mapValue!59400 () ValueCell!18311)

(assert (=> mapNonEmpty!59400 (= (arr!50206 _values!487) (store mapRest!59400 mapKey!59400 mapValue!59400))))

(declare-fun b!1561908 () Bool)

(declare-fun res!1068007 () Bool)

(assert (=> b!1561908 (=> (not res!1068007) (not e!870415))))

(declare-datatypes ((List!36623 0))(
  ( (Nil!36620) (Cons!36619 (h!38066 (_ BitVec 64)) (t!51437 List!36623)) )
))
(declare-fun arrayNoDuplicates!0 (array!104035 (_ BitVec 32) List!36623) Bool)

(assert (=> b!1561908 (= res!1068007 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36620))))

(declare-fun res!1068009 () Bool)

(assert (=> start!133632 (=> (not res!1068009) (not e!870415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133632 (= res!1068009 (validMask!0 mask!947))))

(assert (=> start!133632 e!870415))

(assert (=> start!133632 tp!113175))

(assert (=> start!133632 tp_is_empty!38683))

(assert (=> start!133632 true))

(declare-fun array_inv!38949 (array!104035) Bool)

(assert (=> start!133632 (array_inv!38949 _keys!637)))

(declare-fun e!870413 () Bool)

(declare-fun array_inv!38950 (array!104037) Bool)

(assert (=> start!133632 (and (array_inv!38950 _values!487) e!870413)))

(declare-fun b!1561909 () Bool)

(assert (=> b!1561909 (= e!870416 tp_is_empty!38683)))

(declare-fun b!1561910 () Bool)

(assert (=> b!1561910 (= e!870413 (and e!870414 mapRes!59400))))

(declare-fun condMapEmpty!59400 () Bool)

(declare-fun mapDefault!59400 () ValueCell!18311)

