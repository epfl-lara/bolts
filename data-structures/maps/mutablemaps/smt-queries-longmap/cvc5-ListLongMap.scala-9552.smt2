; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113210 () Bool)

(assert start!113210)

(declare-fun b_free!31225 () Bool)

(declare-fun b_next!31225 () Bool)

(assert (=> start!113210 (= b_free!31225 (not b_next!31225))))

(declare-fun tp!109481 () Bool)

(declare-fun b_and!50367 () Bool)

(assert (=> start!113210 (= tp!109481 b_and!50367)))

(declare-fun b!1342068 () Bool)

(declare-fun res!890459 () Bool)

(declare-fun e!764140 () Bool)

(assert (=> b!1342068 (=> (not res!890459) (not e!764140))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91259 0))(
  ( (array!91260 (arr!44081 (Array (_ BitVec 32) (_ BitVec 64))) (size!44632 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91259)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54737 0))(
  ( (V!54738 (val!18687 Int)) )
))
(declare-datatypes ((ValueCell!17714 0))(
  ( (ValueCellFull!17714 (v!21333 V!54737)) (EmptyCell!17714) )
))
(declare-datatypes ((array!91261 0))(
  ( (array!91262 (arr!44082 (Array (_ BitVec 32) ValueCell!17714)) (size!44633 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91261)

(assert (=> b!1342068 (= res!890459 (and (= (size!44633 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44632 _keys!1571) (size!44633 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342069 () Bool)

(assert (=> b!1342069 (= e!764140 (not true))))

(declare-datatypes ((tuple2!24216 0))(
  ( (tuple2!24217 (_1!12118 (_ BitVec 64)) (_2!12118 V!54737)) )
))
(declare-datatypes ((List!31396 0))(
  ( (Nil!31393) (Cons!31392 (h!32601 tuple2!24216) (t!45839 List!31396)) )
))
(declare-datatypes ((ListLongMap!21885 0))(
  ( (ListLongMap!21886 (toList!10958 List!31396)) )
))
(declare-fun lt!594306 () ListLongMap!21885)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9070 (ListLongMap!21885 (_ BitVec 64)) Bool)

(assert (=> b!1342069 (contains!9070 lt!594306 k!1142)))

(declare-datatypes ((Unit!43987 0))(
  ( (Unit!43988) )
))
(declare-fun lt!594307 () Unit!43987)

(declare-fun lt!594308 () V!54737)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!353 ((_ BitVec 64) (_ BitVec 64) V!54737 ListLongMap!21885) Unit!43987)

(assert (=> b!1342069 (= lt!594307 (lemmaInListMapAfterAddingDiffThenInBefore!353 k!1142 (select (arr!44081 _keys!1571) from!1960) lt!594308 lt!594306))))

(declare-fun lt!594309 () ListLongMap!21885)

(assert (=> b!1342069 (contains!9070 lt!594309 k!1142)))

(declare-fun lt!594310 () Unit!43987)

(declare-fun zeroValue!1245 () V!54737)

(assert (=> b!1342069 (= lt!594310 (lemmaInListMapAfterAddingDiffThenInBefore!353 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594309))))

(declare-fun +!4761 (ListLongMap!21885 tuple2!24216) ListLongMap!21885)

(assert (=> b!1342069 (= lt!594309 (+!4761 lt!594306 (tuple2!24217 (select (arr!44081 _keys!1571) from!1960) lt!594308)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22298 (ValueCell!17714 V!54737) V!54737)

(declare-fun dynLambda!3798 (Int (_ BitVec 64)) V!54737)

(assert (=> b!1342069 (= lt!594308 (get!22298 (select (arr!44082 _values!1303) from!1960) (dynLambda!3798 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54737)

(declare-fun getCurrentListMapNoExtraKeys!6484 (array!91259 array!91261 (_ BitVec 32) (_ BitVec 32) V!54737 V!54737 (_ BitVec 32) Int) ListLongMap!21885)

(assert (=> b!1342069 (= lt!594306 (getCurrentListMapNoExtraKeys!6484 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342070 () Bool)

(declare-fun res!890462 () Bool)

(assert (=> b!1342070 (=> (not res!890462) (not e!764140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91259 (_ BitVec 32)) Bool)

(assert (=> b!1342070 (= res!890462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342071 () Bool)

(declare-fun res!890455 () Bool)

(assert (=> b!1342071 (=> (not res!890455) (not e!764140))))

(declare-datatypes ((List!31397 0))(
  ( (Nil!31394) (Cons!31393 (h!32602 (_ BitVec 64)) (t!45840 List!31397)) )
))
(declare-fun arrayNoDuplicates!0 (array!91259 (_ BitVec 32) List!31397) Bool)

(assert (=> b!1342071 (= res!890455 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31394))))

(declare-fun b!1342072 () Bool)

(declare-fun res!890461 () Bool)

(assert (=> b!1342072 (=> (not res!890461) (not e!764140))))

(assert (=> b!1342072 (= res!890461 (not (= (select (arr!44081 _keys!1571) from!1960) k!1142)))))

(declare-fun res!890458 () Bool)

(assert (=> start!113210 (=> (not res!890458) (not e!764140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113210 (= res!890458 (validMask!0 mask!1977))))

(assert (=> start!113210 e!764140))

(declare-fun tp_is_empty!37225 () Bool)

(assert (=> start!113210 tp_is_empty!37225))

(assert (=> start!113210 true))

(declare-fun array_inv!33145 (array!91259) Bool)

(assert (=> start!113210 (array_inv!33145 _keys!1571)))

(declare-fun e!764139 () Bool)

(declare-fun array_inv!33146 (array!91261) Bool)

(assert (=> start!113210 (and (array_inv!33146 _values!1303) e!764139)))

(assert (=> start!113210 tp!109481))

(declare-fun b!1342073 () Bool)

(declare-fun res!890457 () Bool)

(assert (=> b!1342073 (=> (not res!890457) (not e!764140))))

(declare-fun getCurrentListMap!5858 (array!91259 array!91261 (_ BitVec 32) (_ BitVec 32) V!54737 V!54737 (_ BitVec 32) Int) ListLongMap!21885)

(assert (=> b!1342073 (= res!890457 (contains!9070 (getCurrentListMap!5858 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1342074 () Bool)

(declare-fun res!890456 () Bool)

(assert (=> b!1342074 (=> (not res!890456) (not e!764140))))

(assert (=> b!1342074 (= res!890456 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44632 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342075 () Bool)

(declare-fun e!764141 () Bool)

(declare-fun mapRes!57544 () Bool)

(assert (=> b!1342075 (= e!764139 (and e!764141 mapRes!57544))))

(declare-fun condMapEmpty!57544 () Bool)

(declare-fun mapDefault!57544 () ValueCell!17714)

