; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113280 () Bool)

(assert start!113280)

(declare-fun b_free!31295 () Bool)

(declare-fun b_next!31295 () Bool)

(assert (=> start!113280 (= b_free!31295 (not b_next!31295))))

(declare-fun tp!109691 () Bool)

(declare-fun b_and!50507 () Bool)

(assert (=> start!113280 (= tp!109691 b_and!50507)))

(declare-fun b!1343398 () Bool)

(declare-fun res!891405 () Bool)

(declare-fun e!764665 () Bool)

(assert (=> b!1343398 (=> (not res!891405) (not e!764665))))

(declare-datatypes ((array!91391 0))(
  ( (array!91392 (arr!44147 (Array (_ BitVec 32) (_ BitVec 64))) (size!44698 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91391)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343398 (= res!891405 (validKeyInArray!0 (select (arr!44147 _keys!1571) from!1960)))))

(declare-fun b!1343399 () Bool)

(declare-fun res!891400 () Bool)

(assert (=> b!1343399 (=> (not res!891400) (not e!764665))))

(declare-datatypes ((V!54829 0))(
  ( (V!54830 (val!18722 Int)) )
))
(declare-fun minValue!1245 () V!54829)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54829)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17749 0))(
  ( (ValueCellFull!17749 (v!21368 V!54829)) (EmptyCell!17749) )
))
(declare-datatypes ((array!91393 0))(
  ( (array!91394 (arr!44148 (Array (_ BitVec 32) ValueCell!17749)) (size!44699 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91393)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24270 0))(
  ( (tuple2!24271 (_1!12145 (_ BitVec 64)) (_2!12145 V!54829)) )
))
(declare-datatypes ((List!31447 0))(
  ( (Nil!31444) (Cons!31443 (h!32652 tuple2!24270) (t!45960 List!31447)) )
))
(declare-datatypes ((ListLongMap!21939 0))(
  ( (ListLongMap!21940 (toList!10985 List!31447)) )
))
(declare-fun contains!9097 (ListLongMap!21939 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5880 (array!91391 array!91393 (_ BitVec 32) (_ BitVec 32) V!54829 V!54829 (_ BitVec 32) Int) ListLongMap!21939)

(assert (=> b!1343399 (= res!891400 (contains!9097 (getCurrentListMap!5880 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343400 () Bool)

(declare-fun e!764664 () Bool)

(declare-fun tp_is_empty!37295 () Bool)

(assert (=> b!1343400 (= e!764664 tp_is_empty!37295)))

(declare-fun b!1343401 () Bool)

(declare-fun res!891403 () Bool)

(assert (=> b!1343401 (=> (not res!891403) (not e!764665))))

(assert (=> b!1343401 (= res!891403 (and (= (size!44699 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44698 _keys!1571) (size!44699 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343402 () Bool)

(declare-fun res!891401 () Bool)

(assert (=> b!1343402 (=> (not res!891401) (not e!764665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91391 (_ BitVec 32)) Bool)

(assert (=> b!1343402 (= res!891401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343403 () Bool)

(declare-fun res!891406 () Bool)

(assert (=> b!1343403 (=> (not res!891406) (not e!764665))))

(assert (=> b!1343403 (= res!891406 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44698 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343404 () Bool)

(assert (=> b!1343404 (= e!764665 (not true))))

(declare-fun lt!594887 () ListLongMap!21939)

(declare-fun +!4783 (ListLongMap!21939 tuple2!24270) ListLongMap!21939)

(assert (=> b!1343404 (contains!9097 (+!4783 lt!594887 (tuple2!24271 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44031 0))(
  ( (Unit!44032) )
))
(declare-fun lt!594885 () Unit!44031)

(declare-fun addStillContains!1209 (ListLongMap!21939 (_ BitVec 64) V!54829 (_ BitVec 64)) Unit!44031)

(assert (=> b!1343404 (= lt!594885 (addStillContains!1209 lt!594887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1343404 (contains!9097 lt!594887 k!1142)))

(declare-fun lt!594888 () V!54829)

(declare-fun lt!594884 () Unit!44031)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!375 ((_ BitVec 64) (_ BitVec 64) V!54829 ListLongMap!21939) Unit!44031)

(assert (=> b!1343404 (= lt!594884 (lemmaInListMapAfterAddingDiffThenInBefore!375 k!1142 (select (arr!44147 _keys!1571) from!1960) lt!594888 lt!594887))))

(declare-fun lt!594886 () ListLongMap!21939)

(assert (=> b!1343404 (contains!9097 lt!594886 k!1142)))

(declare-fun lt!594889 () Unit!44031)

(assert (=> b!1343404 (= lt!594889 (lemmaInListMapAfterAddingDiffThenInBefore!375 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594886))))

(assert (=> b!1343404 (= lt!594886 (+!4783 lt!594887 (tuple2!24271 (select (arr!44147 _keys!1571) from!1960) lt!594888)))))

(declare-fun get!22342 (ValueCell!17749 V!54829) V!54829)

(declare-fun dynLambda!3820 (Int (_ BitVec 64)) V!54829)

(assert (=> b!1343404 (= lt!594888 (get!22342 (select (arr!44148 _values!1303) from!1960) (dynLambda!3820 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6506 (array!91391 array!91393 (_ BitVec 32) (_ BitVec 32) V!54829 V!54829 (_ BitVec 32) Int) ListLongMap!21939)

(assert (=> b!1343404 (= lt!594887 (getCurrentListMapNoExtraKeys!6506 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343405 () Bool)

(declare-fun e!764662 () Bool)

(assert (=> b!1343405 (= e!764662 tp_is_empty!37295)))

(declare-fun b!1343406 () Bool)

(declare-fun res!891402 () Bool)

(assert (=> b!1343406 (=> (not res!891402) (not e!764665))))

(declare-datatypes ((List!31448 0))(
  ( (Nil!31445) (Cons!31444 (h!32653 (_ BitVec 64)) (t!45961 List!31448)) )
))
(declare-fun arrayNoDuplicates!0 (array!91391 (_ BitVec 32) List!31448) Bool)

(assert (=> b!1343406 (= res!891402 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31445))))

(declare-fun mapNonEmpty!57649 () Bool)

(declare-fun mapRes!57649 () Bool)

(declare-fun tp!109690 () Bool)

(assert (=> mapNonEmpty!57649 (= mapRes!57649 (and tp!109690 e!764662))))

(declare-fun mapRest!57649 () (Array (_ BitVec 32) ValueCell!17749))

(declare-fun mapValue!57649 () ValueCell!17749)

(declare-fun mapKey!57649 () (_ BitVec 32))

(assert (=> mapNonEmpty!57649 (= (arr!44148 _values!1303) (store mapRest!57649 mapKey!57649 mapValue!57649))))

(declare-fun b!1343407 () Bool)

(declare-fun res!891399 () Bool)

(assert (=> b!1343407 (=> (not res!891399) (not e!764665))))

(assert (=> b!1343407 (= res!891399 (not (= (select (arr!44147 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1343408 () Bool)

(declare-fun res!891404 () Bool)

(assert (=> b!1343408 (=> (not res!891404) (not e!764665))))

(assert (=> b!1343408 (= res!891404 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343409 () Bool)

(declare-fun e!764666 () Bool)

(assert (=> b!1343409 (= e!764666 (and e!764664 mapRes!57649))))

(declare-fun condMapEmpty!57649 () Bool)

(declare-fun mapDefault!57649 () ValueCell!17749)

