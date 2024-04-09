; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113222 () Bool)

(assert start!113222)

(declare-fun b_free!31237 () Bool)

(declare-fun b_next!31237 () Bool)

(assert (=> start!113222 (= b_free!31237 (not b_next!31237))))

(declare-fun tp!109517 () Bool)

(declare-fun b_and!50391 () Bool)

(assert (=> start!113222 (= tp!109517 b_and!50391)))

(declare-fun b!1342296 () Bool)

(declare-fun res!890620 () Bool)

(declare-fun e!764227 () Bool)

(assert (=> b!1342296 (=> (not res!890620) (not e!764227))))

(declare-datatypes ((array!91281 0))(
  ( (array!91282 (arr!44092 (Array (_ BitVec 32) (_ BitVec 64))) (size!44643 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91281)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91281 (_ BitVec 32)) Bool)

(assert (=> b!1342296 (= res!890620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342297 () Bool)

(assert (=> b!1342297 (= e!764227 (not true))))

(declare-datatypes ((V!54753 0))(
  ( (V!54754 (val!18693 Int)) )
))
(declare-datatypes ((tuple2!24224 0))(
  ( (tuple2!24225 (_1!12122 (_ BitVec 64)) (_2!12122 V!54753)) )
))
(declare-datatypes ((List!31405 0))(
  ( (Nil!31402) (Cons!31401 (h!32610 tuple2!24224) (t!45860 List!31405)) )
))
(declare-datatypes ((ListLongMap!21893 0))(
  ( (ListLongMap!21894 (toList!10962 List!31405)) )
))
(declare-fun lt!594400 () ListLongMap!21893)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9074 (ListLongMap!21893 (_ BitVec 64)) Bool)

(assert (=> b!1342297 (contains!9074 lt!594400 k!1142)))

(declare-datatypes ((Unit!43993 0))(
  ( (Unit!43994) )
))
(declare-fun lt!594396 () Unit!43993)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lt!594398 () V!54753)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!356 ((_ BitVec 64) (_ BitVec 64) V!54753 ListLongMap!21893) Unit!43993)

(assert (=> b!1342297 (= lt!594396 (lemmaInListMapAfterAddingDiffThenInBefore!356 k!1142 (select (arr!44092 _keys!1571) from!1960) lt!594398 lt!594400))))

(declare-fun lt!594399 () ListLongMap!21893)

(assert (=> b!1342297 (contains!9074 lt!594399 k!1142)))

(declare-fun zeroValue!1245 () V!54753)

(declare-fun lt!594397 () Unit!43993)

(assert (=> b!1342297 (= lt!594397 (lemmaInListMapAfterAddingDiffThenInBefore!356 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594399))))

(declare-fun +!4764 (ListLongMap!21893 tuple2!24224) ListLongMap!21893)

(assert (=> b!1342297 (= lt!594399 (+!4764 lt!594400 (tuple2!24225 (select (arr!44092 _keys!1571) from!1960) lt!594398)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17720 0))(
  ( (ValueCellFull!17720 (v!21339 V!54753)) (EmptyCell!17720) )
))
(declare-datatypes ((array!91283 0))(
  ( (array!91284 (arr!44093 (Array (_ BitVec 32) ValueCell!17720)) (size!44644 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91283)

(declare-fun get!22305 (ValueCell!17720 V!54753) V!54753)

(declare-fun dynLambda!3801 (Int (_ BitVec 64)) V!54753)

(assert (=> b!1342297 (= lt!594398 (get!22305 (select (arr!44093 _values!1303) from!1960) (dynLambda!3801 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54753)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6487 (array!91281 array!91283 (_ BitVec 32) (_ BitVec 32) V!54753 V!54753 (_ BitVec 32) Int) ListLongMap!21893)

(assert (=> b!1342297 (= lt!594400 (getCurrentListMapNoExtraKeys!6487 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342298 () Bool)

(declare-fun res!890617 () Bool)

(assert (=> b!1342298 (=> (not res!890617) (not e!764227))))

(declare-datatypes ((List!31406 0))(
  ( (Nil!31403) (Cons!31402 (h!32611 (_ BitVec 64)) (t!45861 List!31406)) )
))
(declare-fun arrayNoDuplicates!0 (array!91281 (_ BitVec 32) List!31406) Bool)

(assert (=> b!1342298 (= res!890617 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31403))))

(declare-fun res!890619 () Bool)

(assert (=> start!113222 (=> (not res!890619) (not e!764227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113222 (= res!890619 (validMask!0 mask!1977))))

(assert (=> start!113222 e!764227))

(declare-fun tp_is_empty!37237 () Bool)

(assert (=> start!113222 tp_is_empty!37237))

(assert (=> start!113222 true))

(declare-fun array_inv!33153 (array!91281) Bool)

(assert (=> start!113222 (array_inv!33153 _keys!1571)))

(declare-fun e!764229 () Bool)

(declare-fun array_inv!33154 (array!91283) Bool)

(assert (=> start!113222 (and (array_inv!33154 _values!1303) e!764229)))

(assert (=> start!113222 tp!109517))

(declare-fun b!1342299 () Bool)

(declare-fun res!890624 () Bool)

(assert (=> b!1342299 (=> (not res!890624) (not e!764227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342299 (= res!890624 (validKeyInArray!0 (select (arr!44092 _keys!1571) from!1960)))))

(declare-fun b!1342300 () Bool)

(declare-fun e!764231 () Bool)

(declare-fun mapRes!57562 () Bool)

(assert (=> b!1342300 (= e!764229 (and e!764231 mapRes!57562))))

(declare-fun condMapEmpty!57562 () Bool)

(declare-fun mapDefault!57562 () ValueCell!17720)

