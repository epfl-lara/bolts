; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113372 () Bool)

(assert start!113372)

(declare-fun b_free!31387 () Bool)

(declare-fun b_next!31387 () Bool)

(assert (=> start!113372 (= b_free!31387 (not b_next!31387))))

(declare-fun tp!109967 () Bool)

(declare-fun b_and!50637 () Bool)

(assert (=> start!113372 (= tp!109967 b_and!50637)))

(declare-fun b!1344817 () Bool)

(declare-fun e!765368 () Bool)

(declare-fun tp_is_empty!37387 () Bool)

(assert (=> b!1344817 (= e!765368 tp_is_empty!37387)))

(declare-fun b!1344818 () Bool)

(declare-fun res!892373 () Bool)

(declare-fun e!765367 () Bool)

(assert (=> b!1344818 (=> (not res!892373) (not e!765367))))

(declare-datatypes ((array!91571 0))(
  ( (array!91572 (arr!44237 (Array (_ BitVec 32) (_ BitVec 64))) (size!44788 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91571)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344818 (= res!892373 (validKeyInArray!0 (select (arr!44237 _keys!1571) from!1960)))))

(declare-fun b!1344819 () Bool)

(declare-fun res!892368 () Bool)

(declare-fun e!765365 () Bool)

(assert (=> b!1344819 (=> (not res!892368) (not e!765365))))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1344819 (= res!892368 (not (= k!1142 (select (arr!44237 _keys!1571) from!1960))))))

(declare-fun b!1344821 () Bool)

(assert (=> b!1344821 (= e!765365 (not true))))

(declare-datatypes ((V!54953 0))(
  ( (V!54954 (val!18768 Int)) )
))
(declare-datatypes ((tuple2!24328 0))(
  ( (tuple2!24329 (_1!12174 (_ BitVec 64)) (_2!12174 V!54953)) )
))
(declare-datatypes ((List!31503 0))(
  ( (Nil!31500) (Cons!31499 (h!32708 tuple2!24328) (t!46054 List!31503)) )
))
(declare-datatypes ((ListLongMap!21997 0))(
  ( (ListLongMap!21998 (toList!11014 List!31503)) )
))
(declare-fun lt!595176 () ListLongMap!21997)

(declare-fun contains!9126 (ListLongMap!21997 (_ BitVec 64)) Bool)

(assert (=> b!1344821 (contains!9126 lt!595176 k!1142)))

(declare-datatypes ((Unit!44047 0))(
  ( (Unit!44048) )
))
(declare-fun lt!595175 () Unit!44047)

(declare-fun lt!595177 () V!54953)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!383 ((_ BitVec 64) (_ BitVec 64) V!54953 ListLongMap!21997) Unit!44047)

(assert (=> b!1344821 (= lt!595175 (lemmaInListMapAfterAddingDiffThenInBefore!383 k!1142 (select (arr!44237 _keys!1571) from!1960) lt!595177 lt!595176))))

(declare-fun mapNonEmpty!57787 () Bool)

(declare-fun mapRes!57787 () Bool)

(declare-fun tp!109966 () Bool)

(declare-fun e!765366 () Bool)

(assert (=> mapNonEmpty!57787 (= mapRes!57787 (and tp!109966 e!765366))))

(declare-fun mapKey!57787 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17795 0))(
  ( (ValueCellFull!17795 (v!21414 V!54953)) (EmptyCell!17795) )
))
(declare-fun mapRest!57787 () (Array (_ BitVec 32) ValueCell!17795))

(declare-fun mapValue!57787 () ValueCell!17795)

(declare-datatypes ((array!91573 0))(
  ( (array!91574 (arr!44238 (Array (_ BitVec 32) ValueCell!17795)) (size!44789 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91573)

(assert (=> mapNonEmpty!57787 (= (arr!44238 _values!1303) (store mapRest!57787 mapKey!57787 mapValue!57787))))

(declare-fun b!1344822 () Bool)

(declare-fun res!892366 () Bool)

(assert (=> b!1344822 (=> (not res!892366) (not e!765367))))

(declare-fun minValue!1245 () V!54953)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54953)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun getCurrentListMap!5907 (array!91571 array!91573 (_ BitVec 32) (_ BitVec 32) V!54953 V!54953 (_ BitVec 32) Int) ListLongMap!21997)

(assert (=> b!1344822 (= res!892366 (contains!9126 (getCurrentListMap!5907 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1344823 () Bool)

(assert (=> b!1344823 (= e!765367 e!765365)))

(declare-fun res!892375 () Bool)

(assert (=> b!1344823 (=> (not res!892375) (not e!765365))))

(declare-fun +!4795 (ListLongMap!21997 tuple2!24328) ListLongMap!21997)

(assert (=> b!1344823 (= res!892375 (contains!9126 (+!4795 lt!595176 (tuple2!24329 (select (arr!44237 _keys!1571) from!1960) lt!595177)) k!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6518 (array!91571 array!91573 (_ BitVec 32) (_ BitVec 32) V!54953 V!54953 (_ BitVec 32) Int) ListLongMap!21997)

(assert (=> b!1344823 (= lt!595176 (getCurrentListMapNoExtraKeys!6518 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22386 (ValueCell!17795 V!54953) V!54953)

(declare-fun dynLambda!3832 (Int (_ BitVec 64)) V!54953)

(assert (=> b!1344823 (= lt!595177 (get!22386 (select (arr!44238 _values!1303) from!1960) (dynLambda!3832 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1344824 () Bool)

(declare-fun res!892369 () Bool)

(assert (=> b!1344824 (=> (not res!892369) (not e!765367))))

(assert (=> b!1344824 (= res!892369 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1344825 () Bool)

(declare-fun e!765364 () Bool)

(assert (=> b!1344825 (= e!765364 (and e!765368 mapRes!57787))))

(declare-fun condMapEmpty!57787 () Bool)

(declare-fun mapDefault!57787 () ValueCell!17795)

