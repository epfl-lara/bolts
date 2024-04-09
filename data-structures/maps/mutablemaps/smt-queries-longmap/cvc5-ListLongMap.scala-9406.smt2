; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111966 () Bool)

(assert start!111966)

(declare-fun b_free!30529 () Bool)

(declare-fun b_next!30529 () Bool)

(assert (=> start!111966 (= b_free!30529 (not b_next!30529))))

(declare-fun tp!107067 () Bool)

(declare-fun b_and!49163 () Bool)

(assert (=> start!111966 (= tp!107067 b_and!49163)))

(declare-fun mapIsEmpty!56175 () Bool)

(declare-fun mapRes!56175 () Bool)

(assert (=> mapIsEmpty!56175 mapRes!56175))

(declare-fun b!1326437 () Bool)

(declare-fun res!880446 () Bool)

(declare-fun e!756036 () Bool)

(assert (=> b!1326437 (=> (not res!880446) (not e!756036))))

(declare-datatypes ((array!89565 0))(
  ( (array!89566 (arr!43251 (Array (_ BitVec 32) (_ BitVec 64))) (size!43802 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89565)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89565 (_ BitVec 32)) Bool)

(assert (=> b!1326437 (= res!880446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53569 0))(
  ( (V!53570 (val!18249 Int)) )
))
(declare-fun zeroValue!1279 () V!53569)

(declare-fun minValue!1279 () V!53569)

(declare-fun b!1326438 () Bool)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((ValueCell!17276 0))(
  ( (ValueCellFull!17276 (v!20880 V!53569)) (EmptyCell!17276) )
))
(declare-datatypes ((array!89567 0))(
  ( (array!89568 (arr!43252 (Array (_ BitVec 32) ValueCell!17276)) (size!43803 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89567)

(declare-datatypes ((tuple2!23696 0))(
  ( (tuple2!23697 (_1!11858 (_ BitVec 64)) (_2!11858 V!53569)) )
))
(declare-datatypes ((List!30861 0))(
  ( (Nil!30858) (Cons!30857 (h!32066 tuple2!23696) (t!44868 List!30861)) )
))
(declare-datatypes ((ListLongMap!21365 0))(
  ( (ListLongMap!21366 (toList!10698 List!30861)) )
))
(declare-fun contains!8791 (ListLongMap!21365 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5630 (array!89565 array!89567 (_ BitVec 32) (_ BitVec 32) V!53569 V!53569 (_ BitVec 32) Int) ListLongMap!21365)

(assert (=> b!1326438 (= e!756036 (not (contains!8791 (getCurrentListMap!5630 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) k!1164)))))

(declare-fun lt!590108 () ListLongMap!21365)

(declare-fun +!4613 (ListLongMap!21365 tuple2!23696) ListLongMap!21365)

(assert (=> b!1326438 (contains!8791 (+!4613 lt!590108 (tuple2!23697 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164)))

(declare-datatypes ((Unit!43632 0))(
  ( (Unit!43633) )
))
(declare-fun lt!590103 () Unit!43632)

(declare-fun addStillContains!1170 (ListLongMap!21365 (_ BitVec 64) V!53569 (_ BitVec 64)) Unit!43632)

(assert (=> b!1326438 (= lt!590103 (addStillContains!1170 lt!590108 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k!1164))))

(assert (=> b!1326438 (contains!8791 lt!590108 k!1164)))

(declare-fun lt!590106 () ListLongMap!21365)

(declare-fun lt!590109 () tuple2!23696)

(assert (=> b!1326438 (= lt!590108 (+!4613 lt!590106 lt!590109))))

(declare-fun lt!590110 () Unit!43632)

(assert (=> b!1326438 (= lt!590110 (addStillContains!1170 lt!590106 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k!1164))))

(assert (=> b!1326438 (contains!8791 lt!590106 k!1164)))

(declare-fun lt!590107 () Unit!43632)

(declare-fun lt!590104 () V!53569)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!223 ((_ BitVec 64) (_ BitVec 64) V!53569 ListLongMap!21365) Unit!43632)

(assert (=> b!1326438 (= lt!590107 (lemmaInListMapAfterAddingDiffThenInBefore!223 k!1164 (select (arr!43251 _keys!1609) from!2000) lt!590104 lt!590106))))

(declare-fun lt!590105 () ListLongMap!21365)

(assert (=> b!1326438 (contains!8791 lt!590105 k!1164)))

(declare-fun lt!590100 () Unit!43632)

(assert (=> b!1326438 (= lt!590100 (lemmaInListMapAfterAddingDiffThenInBefore!223 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!590105))))

(declare-fun lt!590102 () ListLongMap!21365)

(assert (=> b!1326438 (contains!8791 lt!590102 k!1164)))

(declare-fun lt!590101 () Unit!43632)

(assert (=> b!1326438 (= lt!590101 (lemmaInListMapAfterAddingDiffThenInBefore!223 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!590102))))

(assert (=> b!1326438 (= lt!590102 (+!4613 lt!590105 lt!590109))))

(assert (=> b!1326438 (= lt!590109 (tuple2!23697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1326438 (= lt!590105 (+!4613 lt!590106 (tuple2!23697 (select (arr!43251 _keys!1609) from!2000) lt!590104)))))

(declare-fun get!21840 (ValueCell!17276 V!53569) V!53569)

(declare-fun dynLambda!3650 (Int (_ BitVec 64)) V!53569)

(assert (=> b!1326438 (= lt!590104 (get!21840 (select (arr!43252 _values!1337) from!2000) (dynLambda!3650 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6331 (array!89565 array!89567 (_ BitVec 32) (_ BitVec 32) V!53569 V!53569 (_ BitVec 32) Int) ListLongMap!21365)

(assert (=> b!1326438 (= lt!590106 (getCurrentListMapNoExtraKeys!6331 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1326439 () Bool)

(declare-fun e!756039 () Bool)

(declare-fun e!756040 () Bool)

(assert (=> b!1326439 (= e!756039 (and e!756040 mapRes!56175))))

(declare-fun condMapEmpty!56175 () Bool)

(declare-fun mapDefault!56175 () ValueCell!17276)

