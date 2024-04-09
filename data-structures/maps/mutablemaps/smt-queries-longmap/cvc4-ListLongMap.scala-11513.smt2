; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133998 () Bool)

(assert start!133998)

(declare-fun b_free!32189 () Bool)

(declare-fun b_next!32189 () Bool)

(assert (=> start!133998 (= b_free!32189 (not b_next!32189))))

(declare-fun tp!113870 () Bool)

(declare-fun b_and!51829 () Bool)

(assert (=> start!133998 (= tp!113870 b_and!51829)))

(declare-fun b!1566017 () Bool)

(declare-fun e!872889 () Bool)

(declare-fun tp_is_empty!38963 () Bool)

(assert (=> b!1566017 (= e!872889 tp_is_empty!38963)))

(declare-fun b!1566018 () Bool)

(declare-fun res!1070567 () Bool)

(declare-fun e!872888 () Bool)

(assert (=> b!1566018 (=> (not res!1070567) (not e!872888))))

(declare-datatypes ((V!60157 0))(
  ( (V!60158 (val!19565 Int)) )
))
(declare-datatypes ((tuple2!25408 0))(
  ( (tuple2!25409 (_1!12714 (_ BitVec 64)) (_2!12714 V!60157)) )
))
(declare-datatypes ((List!36794 0))(
  ( (Nil!36791) (Cons!36790 (h!38237 tuple2!25408) (t!51704 List!36794)) )
))
(declare-datatypes ((ListLongMap!22855 0))(
  ( (ListLongMap!22856 (toList!11443 List!36794)) )
))
(declare-fun lt!672486 () ListLongMap!22855)

(declare-datatypes ((array!104585 0))(
  ( (array!104586 (arr!50475 (Array (_ BitVec 32) (_ BitVec 64))) (size!51026 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104585)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun contains!10364 (ListLongMap!22855 (_ BitVec 64)) Bool)

(assert (=> b!1566018 (= res!1070567 (contains!10364 lt!672486 (select (arr!50475 _keys!637) from!782)))))

(declare-fun b!1566019 () Bool)

(declare-fun e!872891 () Bool)

(assert (=> b!1566019 (= e!872891 (not e!872888))))

(declare-fun res!1070569 () Bool)

(assert (=> b!1566019 (=> (not res!1070569) (not e!872888))))

(assert (=> b!1566019 (= res!1070569 (not (contains!10364 lt!672486 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1566019 (not (contains!10364 lt!672486 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672487 () ListLongMap!22855)

(declare-fun lt!672488 () V!60157)

(declare-fun +!5050 (ListLongMap!22855 tuple2!25408) ListLongMap!22855)

(assert (=> b!1566019 (= lt!672486 (+!5050 lt!672487 (tuple2!25409 (select (arr!50475 _keys!637) from!782) lt!672488)))))

(declare-datatypes ((Unit!51974 0))(
  ( (Unit!51975) )
))
(declare-fun lt!672485 () Unit!51974)

(declare-fun addStillNotContains!586 (ListLongMap!22855 (_ BitVec 64) V!60157 (_ BitVec 64)) Unit!51974)

(assert (=> b!1566019 (= lt!672485 (addStillNotContains!586 lt!672487 (select (arr!50475 _keys!637) from!782) lt!672488 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18451 0))(
  ( (ValueCellFull!18451 (v!22318 V!60157)) (EmptyCell!18451) )
))
(declare-datatypes ((array!104587 0))(
  ( (array!104588 (arr!50476 (Array (_ BitVec 32) ValueCell!18451)) (size!51027 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104587)

(declare-fun get!26390 (ValueCell!18451 V!60157) V!60157)

(declare-fun dynLambda!3939 (Int (_ BitVec 64)) V!60157)

(assert (=> b!1566019 (= lt!672488 (get!26390 (select (arr!50476 _values!487) from!782) (dynLambda!3939 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60157)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60157)

(declare-fun getCurrentListMapNoExtraKeys!6783 (array!104585 array!104587 (_ BitVec 32) (_ BitVec 32) V!60157 V!60157 (_ BitVec 32) Int) ListLongMap!22855)

(assert (=> b!1566019 (= lt!672487 (getCurrentListMapNoExtraKeys!6783 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapNonEmpty!59836 () Bool)

(declare-fun mapRes!59836 () Bool)

(declare-fun tp!113869 () Bool)

(assert (=> mapNonEmpty!59836 (= mapRes!59836 (and tp!113869 e!872889))))

(declare-fun mapKey!59836 () (_ BitVec 32))

(declare-fun mapRest!59836 () (Array (_ BitVec 32) ValueCell!18451))

(declare-fun mapValue!59836 () ValueCell!18451)

(assert (=> mapNonEmpty!59836 (= (arr!50476 _values!487) (store mapRest!59836 mapKey!59836 mapValue!59836))))

(declare-fun b!1566020 () Bool)

(declare-fun e!872886 () Bool)

(declare-fun e!872887 () Bool)

(assert (=> b!1566020 (= e!872886 (and e!872887 mapRes!59836))))

(declare-fun condMapEmpty!59836 () Bool)

(declare-fun mapDefault!59836 () ValueCell!18451)

