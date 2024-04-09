; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113274 () Bool)

(assert start!113274)

(declare-fun b_free!31289 () Bool)

(declare-fun b_next!31289 () Bool)

(assert (=> start!113274 (= b_free!31289 (not b_next!31289))))

(declare-fun tp!109673 () Bool)

(declare-fun b_and!50495 () Bool)

(assert (=> start!113274 (= tp!109673 b_and!50495)))

(declare-fun mapNonEmpty!57640 () Bool)

(declare-fun mapRes!57640 () Bool)

(declare-fun tp!109672 () Bool)

(declare-fun e!764617 () Bool)

(assert (=> mapNonEmpty!57640 (= mapRes!57640 (and tp!109672 e!764617))))

(declare-fun mapKey!57640 () (_ BitVec 32))

(declare-datatypes ((V!54821 0))(
  ( (V!54822 (val!18719 Int)) )
))
(declare-datatypes ((ValueCell!17746 0))(
  ( (ValueCellFull!17746 (v!21365 V!54821)) (EmptyCell!17746) )
))
(declare-datatypes ((array!91379 0))(
  ( (array!91380 (arr!44141 (Array (_ BitVec 32) ValueCell!17746)) (size!44692 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91379)

(declare-fun mapRest!57640 () (Array (_ BitVec 32) ValueCell!17746))

(declare-fun mapValue!57640 () ValueCell!17746)

(assert (=> mapNonEmpty!57640 (= (arr!44141 _values!1303) (store mapRest!57640 mapKey!57640 mapValue!57640))))

(declare-fun b!1343284 () Bool)

(declare-fun e!764621 () Bool)

(assert (=> b!1343284 (= e!764621 (not true))))

(declare-datatypes ((tuple2!24264 0))(
  ( (tuple2!24265 (_1!12142 (_ BitVec 64)) (_2!12142 V!54821)) )
))
(declare-datatypes ((List!31442 0))(
  ( (Nil!31439) (Cons!31438 (h!32647 tuple2!24264) (t!45949 List!31442)) )
))
(declare-datatypes ((ListLongMap!21933 0))(
  ( (ListLongMap!21934 (toList!10982 List!31442)) )
))
(declare-fun lt!594835 () ListLongMap!21933)

(declare-fun zeroValue!1245 () V!54821)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9094 (ListLongMap!21933 (_ BitVec 64)) Bool)

(declare-fun +!4780 (ListLongMap!21933 tuple2!24264) ListLongMap!21933)

(assert (=> b!1343284 (contains!9094 (+!4780 lt!594835 (tuple2!24265 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44025 0))(
  ( (Unit!44026) )
))
(declare-fun lt!594834 () Unit!44025)

(declare-fun addStillContains!1206 (ListLongMap!21933 (_ BitVec 64) V!54821 (_ BitVec 64)) Unit!44025)

(assert (=> b!1343284 (= lt!594834 (addStillContains!1206 lt!594835 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1343284 (contains!9094 lt!594835 k!1142)))

(declare-datatypes ((array!91381 0))(
  ( (array!91382 (arr!44142 (Array (_ BitVec 32) (_ BitVec 64))) (size!44693 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91381)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lt!594831 () V!54821)

(declare-fun lt!594832 () Unit!44025)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!372 ((_ BitVec 64) (_ BitVec 64) V!54821 ListLongMap!21933) Unit!44025)

(assert (=> b!1343284 (= lt!594832 (lemmaInListMapAfterAddingDiffThenInBefore!372 k!1142 (select (arr!44142 _keys!1571) from!1960) lt!594831 lt!594835))))

(declare-fun lt!594830 () ListLongMap!21933)

(assert (=> b!1343284 (contains!9094 lt!594830 k!1142)))

(declare-fun lt!594833 () Unit!44025)

(assert (=> b!1343284 (= lt!594833 (lemmaInListMapAfterAddingDiffThenInBefore!372 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594830))))

(assert (=> b!1343284 (= lt!594830 (+!4780 lt!594835 (tuple2!24265 (select (arr!44142 _keys!1571) from!1960) lt!594831)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22337 (ValueCell!17746 V!54821) V!54821)

(declare-fun dynLambda!3817 (Int (_ BitVec 64)) V!54821)

(assert (=> b!1343284 (= lt!594831 (get!22337 (select (arr!44141 _values!1303) from!1960) (dynLambda!3817 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun minValue!1245 () V!54821)

(declare-fun getCurrentListMapNoExtraKeys!6503 (array!91381 array!91379 (_ BitVec 32) (_ BitVec 32) V!54821 V!54821 (_ BitVec 32) Int) ListLongMap!21933)

(assert (=> b!1343284 (= lt!594835 (getCurrentListMapNoExtraKeys!6503 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343285 () Bool)

(declare-fun res!891318 () Bool)

(assert (=> b!1343285 (=> (not res!891318) (not e!764621))))

(assert (=> b!1343285 (= res!891318 (and (= (size!44692 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44693 _keys!1571) (size!44692 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343286 () Bool)

(declare-fun tp_is_empty!37289 () Bool)

(assert (=> b!1343286 (= e!764617 tp_is_empty!37289)))

(declare-fun b!1343288 () Bool)

(declare-fun res!891320 () Bool)

(assert (=> b!1343288 (=> (not res!891320) (not e!764621))))

(assert (=> b!1343288 (= res!891320 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!57640 () Bool)

(assert (=> mapIsEmpty!57640 mapRes!57640))

(declare-fun b!1343289 () Bool)

(declare-fun res!891319 () Bool)

(assert (=> b!1343289 (=> (not res!891319) (not e!764621))))

(declare-fun getCurrentListMap!5877 (array!91381 array!91379 (_ BitVec 32) (_ BitVec 32) V!54821 V!54821 (_ BitVec 32) Int) ListLongMap!21933)

(assert (=> b!1343289 (= res!891319 (contains!9094 (getCurrentListMap!5877 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343290 () Bool)

(declare-fun res!891324 () Bool)

(assert (=> b!1343290 (=> (not res!891324) (not e!764621))))

(assert (=> b!1343290 (= res!891324 (not (= (select (arr!44142 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1343291 () Bool)

(declare-fun e!764620 () Bool)

(declare-fun e!764619 () Bool)

(assert (=> b!1343291 (= e!764620 (and e!764619 mapRes!57640))))

(declare-fun condMapEmpty!57640 () Bool)

(declare-fun mapDefault!57640 () ValueCell!17746)

