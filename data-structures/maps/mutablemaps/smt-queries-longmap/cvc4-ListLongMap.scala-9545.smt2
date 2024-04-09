; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113172 () Bool)

(assert start!113172)

(declare-fun b_free!31187 () Bool)

(declare-fun b_next!31187 () Bool)

(assert (=> start!113172 (= b_free!31187 (not b_next!31187))))

(declare-fun tp!109366 () Bool)

(declare-fun b_and!50291 () Bool)

(assert (=> start!113172 (= tp!109366 b_and!50291)))

(declare-fun b!1341346 () Bool)

(declare-fun res!889948 () Bool)

(declare-fun e!763856 () Bool)

(assert (=> b!1341346 (=> (not res!889948) (not e!763856))))

(declare-datatypes ((V!54685 0))(
  ( (V!54686 (val!18668 Int)) )
))
(declare-fun minValue!1245 () V!54685)

(declare-datatypes ((array!91183 0))(
  ( (array!91184 (arr!44043 (Array (_ BitVec 32) (_ BitVec 64))) (size!44594 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91183)

(declare-fun zeroValue!1245 () V!54685)

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17695 0))(
  ( (ValueCellFull!17695 (v!21314 V!54685)) (EmptyCell!17695) )
))
(declare-datatypes ((array!91185 0))(
  ( (array!91186 (arr!44044 (Array (_ BitVec 32) ValueCell!17695)) (size!44595 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91185)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((tuple2!24184 0))(
  ( (tuple2!24185 (_1!12102 (_ BitVec 64)) (_2!12102 V!54685)) )
))
(declare-datatypes ((List!31365 0))(
  ( (Nil!31362) (Cons!31361 (h!32570 tuple2!24184) (t!45770 List!31365)) )
))
(declare-datatypes ((ListLongMap!21853 0))(
  ( (ListLongMap!21854 (toList!10942 List!31365)) )
))
(declare-fun contains!9054 (ListLongMap!21853 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5843 (array!91183 array!91185 (_ BitVec 32) (_ BitVec 32) V!54685 V!54685 (_ BitVec 32) Int) ListLongMap!21853)

(assert (=> b!1341346 (= res!889948 (contains!9054 (getCurrentListMap!5843 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341347 () Bool)

(declare-fun res!889942 () Bool)

(assert (=> b!1341347 (=> (not res!889942) (not e!763856))))

(declare-datatypes ((List!31366 0))(
  ( (Nil!31363) (Cons!31362 (h!32571 (_ BitVec 64)) (t!45771 List!31366)) )
))
(declare-fun arrayNoDuplicates!0 (array!91183 (_ BitVec 32) List!31366) Bool)

(assert (=> b!1341347 (= res!889942 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31363))))

(declare-fun b!1341348 () Bool)

(assert (=> b!1341348 (= e!763856 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun lt!594078 () ListLongMap!21853)

(assert (=> b!1341348 (contains!9054 lt!594078 k!1142)))

(declare-datatypes ((Unit!43961 0))(
  ( (Unit!43962) )
))
(declare-fun lt!594079 () Unit!43961)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!340 ((_ BitVec 64) (_ BitVec 64) V!54685 ListLongMap!21853) Unit!43961)

(assert (=> b!1341348 (= lt!594079 (lemmaInListMapAfterAddingDiffThenInBefore!340 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594078))))

(declare-fun +!4748 (ListLongMap!21853 tuple2!24184) ListLongMap!21853)

(declare-fun getCurrentListMapNoExtraKeys!6471 (array!91183 array!91185 (_ BitVec 32) (_ BitVec 32) V!54685 V!54685 (_ BitVec 32) Int) ListLongMap!21853)

(declare-fun get!22271 (ValueCell!17695 V!54685) V!54685)

(declare-fun dynLambda!3785 (Int (_ BitVec 64)) V!54685)

(assert (=> b!1341348 (= lt!594078 (+!4748 (getCurrentListMapNoExtraKeys!6471 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24185 (select (arr!44043 _keys!1571) from!1960) (get!22271 (select (arr!44044 _values!1303) from!1960) (dynLambda!3785 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341349 () Bool)

(declare-fun res!889941 () Bool)

(assert (=> b!1341349 (=> (not res!889941) (not e!763856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91183 (_ BitVec 32)) Bool)

(assert (=> b!1341349 (= res!889941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341350 () Bool)

(declare-fun res!889946 () Bool)

(assert (=> b!1341350 (=> (not res!889946) (not e!763856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341350 (= res!889946 (validKeyInArray!0 (select (arr!44043 _keys!1571) from!1960)))))

(declare-fun b!1341351 () Bool)

(declare-fun e!763852 () Bool)

(declare-fun e!763855 () Bool)

(declare-fun mapRes!57487 () Bool)

(assert (=> b!1341351 (= e!763852 (and e!763855 mapRes!57487))))

(declare-fun condMapEmpty!57487 () Bool)

(declare-fun mapDefault!57487 () ValueCell!17695)

