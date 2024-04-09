; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113592 () Bool)

(assert start!113592)

(declare-fun b_free!31549 () Bool)

(declare-fun b_next!31549 () Bool)

(assert (=> start!113592 (= b_free!31549 (not b_next!31549))))

(declare-fun tp!110457 () Bool)

(declare-fun b_and!50897 () Bool)

(assert (=> start!113592 (= tp!110457 b_and!50897)))

(declare-fun b!1347973 () Bool)

(declare-fun res!894490 () Bool)

(declare-fun e!766891 () Bool)

(assert (=> b!1347973 (=> (not res!894490) (not e!766891))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91887 0))(
  ( (array!91888 (arr!44394 (Array (_ BitVec 32) (_ BitVec 64))) (size!44945 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91887)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1347973 (= res!894490 (not (= (select (arr!44394 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1347974 () Bool)

(assert (=> b!1347974 (= e!766891 (not true))))

(declare-datatypes ((V!55169 0))(
  ( (V!55170 (val!18849 Int)) )
))
(declare-datatypes ((tuple2!24444 0))(
  ( (tuple2!24445 (_1!12232 (_ BitVec 64)) (_2!12232 V!55169)) )
))
(declare-datatypes ((List!31614 0))(
  ( (Nil!31611) (Cons!31610 (h!32819 tuple2!24444) (t!46249 List!31614)) )
))
(declare-datatypes ((ListLongMap!22113 0))(
  ( (ListLongMap!22114 (toList!11072 List!31614)) )
))
(declare-fun lt!595846 () ListLongMap!22113)

(declare-fun contains!9185 (ListLongMap!22113 (_ BitVec 64)) Bool)

(assert (=> b!1347974 (contains!9185 lt!595846 k!1142)))

(declare-fun lt!595845 () V!55169)

(declare-datatypes ((Unit!44110 0))(
  ( (Unit!44111) )
))
(declare-fun lt!595844 () Unit!44110)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!407 ((_ BitVec 64) (_ BitVec 64) V!55169 ListLongMap!22113) Unit!44110)

(assert (=> b!1347974 (= lt!595844 (lemmaInListMapAfterAddingDiffThenInBefore!407 k!1142 (select (arr!44394 _keys!1571) from!1960) lt!595845 lt!595846))))

(declare-fun lt!595843 () ListLongMap!22113)

(assert (=> b!1347974 (contains!9185 lt!595843 k!1142)))

(declare-fun zeroValue!1245 () V!55169)

(declare-fun lt!595847 () Unit!44110)

(assert (=> b!1347974 (= lt!595847 (lemmaInListMapAfterAddingDiffThenInBefore!407 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595843))))

(declare-fun +!4821 (ListLongMap!22113 tuple2!24444) ListLongMap!22113)

(assert (=> b!1347974 (= lt!595843 (+!4821 lt!595846 (tuple2!24445 (select (arr!44394 _keys!1571) from!1960) lt!595845)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17876 0))(
  ( (ValueCellFull!17876 (v!21498 V!55169)) (EmptyCell!17876) )
))
(declare-datatypes ((array!91889 0))(
  ( (array!91890 (arr!44395 (Array (_ BitVec 32) ValueCell!17876)) (size!44946 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91889)

(declare-fun get!22469 (ValueCell!17876 V!55169) V!55169)

(declare-fun dynLambda!3858 (Int (_ BitVec 64)) V!55169)

(assert (=> b!1347974 (= lt!595845 (get!22469 (select (arr!44395 _values!1303) from!1960) (dynLambda!3858 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun minValue!1245 () V!55169)

(declare-fun getCurrentListMapNoExtraKeys!6548 (array!91887 array!91889 (_ BitVec 32) (_ BitVec 32) V!55169 V!55169 (_ BitVec 32) Int) ListLongMap!22113)

(assert (=> b!1347974 (= lt!595846 (getCurrentListMapNoExtraKeys!6548 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1347975 () Bool)

(declare-fun e!766894 () Bool)

(declare-fun tp_is_empty!37549 () Bool)

(assert (=> b!1347975 (= e!766894 tp_is_empty!37549)))

(declare-fun b!1347976 () Bool)

(declare-fun res!894489 () Bool)

(assert (=> b!1347976 (=> (not res!894489) (not e!766891))))

(declare-fun getCurrentListMap!5962 (array!91887 array!91889 (_ BitVec 32) (_ BitVec 32) V!55169 V!55169 (_ BitVec 32) Int) ListLongMap!22113)

(assert (=> b!1347976 (= res!894489 (contains!9185 (getCurrentListMap!5962 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapNonEmpty!58034 () Bool)

(declare-fun mapRes!58034 () Bool)

(declare-fun tp!110456 () Bool)

(declare-fun e!766893 () Bool)

(assert (=> mapNonEmpty!58034 (= mapRes!58034 (and tp!110456 e!766893))))

(declare-fun mapRest!58034 () (Array (_ BitVec 32) ValueCell!17876))

(declare-fun mapKey!58034 () (_ BitVec 32))

(declare-fun mapValue!58034 () ValueCell!17876)

(assert (=> mapNonEmpty!58034 (= (arr!44395 _values!1303) (store mapRest!58034 mapKey!58034 mapValue!58034))))

(declare-fun b!1347977 () Bool)

(declare-fun res!894487 () Bool)

(assert (=> b!1347977 (=> (not res!894487) (not e!766891))))

(assert (=> b!1347977 (= res!894487 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1347978 () Bool)

(declare-fun res!894485 () Bool)

(assert (=> b!1347978 (=> (not res!894485) (not e!766891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91887 (_ BitVec 32)) Bool)

(assert (=> b!1347978 (= res!894485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1347979 () Bool)

(declare-fun e!766895 () Bool)

(assert (=> b!1347979 (= e!766895 (and e!766894 mapRes!58034))))

(declare-fun condMapEmpty!58034 () Bool)

(declare-fun mapDefault!58034 () ValueCell!17876)

