; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113124 () Bool)

(assert start!113124)

(declare-fun b_free!31139 () Bool)

(declare-fun b_next!31139 () Bool)

(assert (=> start!113124 (= b_free!31139 (not b_next!31139))))

(declare-fun tp!109223 () Bool)

(declare-fun b_and!50195 () Bool)

(assert (=> start!113124 (= tp!109223 b_and!50195)))

(declare-fun b!1340434 () Bool)

(declare-fun res!889294 () Bool)

(declare-fun e!763495 () Bool)

(assert (=> b!1340434 (=> (not res!889294) (not e!763495))))

(declare-datatypes ((array!91089 0))(
  ( (array!91090 (arr!43996 (Array (_ BitVec 32) (_ BitVec 64))) (size!44547 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91089)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91089 (_ BitVec 32)) Bool)

(assert (=> b!1340434 (= res!889294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340435 () Bool)

(declare-fun res!889301 () Bool)

(assert (=> b!1340435 (=> (not res!889301) (not e!763495))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1340435 (= res!889301 (not (= (select (arr!43996 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1340436 () Bool)

(assert (=> b!1340436 (= e!763495 (not true))))

(declare-datatypes ((V!54621 0))(
  ( (V!54622 (val!18644 Int)) )
))
(declare-datatypes ((tuple2!24144 0))(
  ( (tuple2!24145 (_1!12082 (_ BitVec 64)) (_2!12082 V!54621)) )
))
(declare-datatypes ((List!31329 0))(
  ( (Nil!31326) (Cons!31325 (h!32534 tuple2!24144) (t!45686 List!31329)) )
))
(declare-datatypes ((ListLongMap!21813 0))(
  ( (ListLongMap!21814 (toList!10922 List!31329)) )
))
(declare-fun lt!593935 () ListLongMap!21813)

(declare-fun contains!9034 (ListLongMap!21813 (_ BitVec 64)) Bool)

(assert (=> b!1340436 (contains!9034 lt!593935 k!1142)))

(declare-fun zeroValue!1245 () V!54621)

(declare-datatypes ((Unit!43925 0))(
  ( (Unit!43926) )
))
(declare-fun lt!593934 () Unit!43925)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!322 ((_ BitVec 64) (_ BitVec 64) V!54621 ListLongMap!21813) Unit!43925)

(assert (=> b!1340436 (= lt!593934 (lemmaInListMapAfterAddingDiffThenInBefore!322 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593935))))

(declare-fun minValue!1245 () V!54621)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17671 0))(
  ( (ValueCellFull!17671 (v!21290 V!54621)) (EmptyCell!17671) )
))
(declare-datatypes ((array!91091 0))(
  ( (array!91092 (arr!43997 (Array (_ BitVec 32) ValueCell!17671)) (size!44548 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91091)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun +!4730 (ListLongMap!21813 tuple2!24144) ListLongMap!21813)

(declare-fun getCurrentListMapNoExtraKeys!6453 (array!91089 array!91091 (_ BitVec 32) (_ BitVec 32) V!54621 V!54621 (_ BitVec 32) Int) ListLongMap!21813)

(declare-fun get!22237 (ValueCell!17671 V!54621) V!54621)

(declare-fun dynLambda!3767 (Int (_ BitVec 64)) V!54621)

(assert (=> b!1340436 (= lt!593935 (+!4730 (getCurrentListMapNoExtraKeys!6453 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24145 (select (arr!43996 _keys!1571) from!1960) (get!22237 (select (arr!43997 _values!1303) from!1960) (dynLambda!3767 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340437 () Bool)

(declare-fun e!763494 () Bool)

(declare-fun e!763492 () Bool)

(declare-fun mapRes!57415 () Bool)

(assert (=> b!1340437 (= e!763494 (and e!763492 mapRes!57415))))

(declare-fun condMapEmpty!57415 () Bool)

(declare-fun mapDefault!57415 () ValueCell!17671)

