; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113258 () Bool)

(assert start!113258)

(declare-fun b_free!31273 () Bool)

(declare-fun b_next!31273 () Bool)

(assert (=> start!113258 (= b_free!31273 (not b_next!31273))))

(declare-fun tp!109624 () Bool)

(declare-fun b_and!50463 () Bool)

(assert (=> start!113258 (= tp!109624 b_and!50463)))

(declare-fun b!1342980 () Bool)

(declare-fun res!891108 () Bool)

(declare-fun e!764500 () Bool)

(assert (=> b!1342980 (=> (not res!891108) (not e!764500))))

(declare-datatypes ((array!91347 0))(
  ( (array!91348 (arr!44125 (Array (_ BitVec 32) (_ BitVec 64))) (size!44676 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91347)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342980 (= res!891108 (validKeyInArray!0 (select (arr!44125 _keys!1571) from!1960)))))

(declare-fun b!1342981 () Bool)

(declare-fun res!891103 () Bool)

(assert (=> b!1342981 (=> (not res!891103) (not e!764500))))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1342981 (= res!891103 (not (= (select (arr!44125 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1342982 () Bool)

(assert (=> b!1342982 (= e!764500 (not true))))

(declare-datatypes ((V!54801 0))(
  ( (V!54802 (val!18711 Int)) )
))
(declare-datatypes ((tuple2!24254 0))(
  ( (tuple2!24255 (_1!12137 (_ BitVec 64)) (_2!12137 V!54801)) )
))
(declare-datatypes ((List!31433 0))(
  ( (Nil!31430) (Cons!31429 (h!32638 tuple2!24254) (t!45924 List!31433)) )
))
(declare-datatypes ((ListLongMap!21923 0))(
  ( (ListLongMap!21924 (toList!10977 List!31433)) )
))
(declare-fun lt!594688 () ListLongMap!21923)

(declare-fun zeroValue!1245 () V!54801)

(declare-fun contains!9089 (ListLongMap!21923 (_ BitVec 64)) Bool)

(declare-fun +!4775 (ListLongMap!21923 tuple2!24254) ListLongMap!21923)

(assert (=> b!1342982 (contains!9089 (+!4775 lt!594688 (tuple2!24255 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44015 0))(
  ( (Unit!44016) )
))
(declare-fun lt!594691 () Unit!44015)

(declare-fun addStillContains!1201 (ListLongMap!21923 (_ BitVec 64) V!54801 (_ BitVec 64)) Unit!44015)

(assert (=> b!1342982 (= lt!594691 (addStillContains!1201 lt!594688 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1342982 (contains!9089 lt!594688 k!1142)))

(declare-fun lt!594690 () Unit!44015)

(declare-fun lt!594686 () V!54801)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!367 ((_ BitVec 64) (_ BitVec 64) V!54801 ListLongMap!21923) Unit!44015)

(assert (=> b!1342982 (= lt!594690 (lemmaInListMapAfterAddingDiffThenInBefore!367 k!1142 (select (arr!44125 _keys!1571) from!1960) lt!594686 lt!594688))))

(declare-fun lt!594687 () ListLongMap!21923)

(assert (=> b!1342982 (contains!9089 lt!594687 k!1142)))

(declare-fun lt!594689 () Unit!44015)

(assert (=> b!1342982 (= lt!594689 (lemmaInListMapAfterAddingDiffThenInBefore!367 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594687))))

(assert (=> b!1342982 (= lt!594687 (+!4775 lt!594688 (tuple2!24255 (select (arr!44125 _keys!1571) from!1960) lt!594686)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17738 0))(
  ( (ValueCellFull!17738 (v!21357 V!54801)) (EmptyCell!17738) )
))
(declare-datatypes ((array!91349 0))(
  ( (array!91350 (arr!44126 (Array (_ BitVec 32) ValueCell!17738)) (size!44677 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91349)

(declare-fun get!22328 (ValueCell!17738 V!54801) V!54801)

(declare-fun dynLambda!3812 (Int (_ BitVec 64)) V!54801)

(assert (=> b!1342982 (= lt!594686 (get!22328 (select (arr!44126 _values!1303) from!1960) (dynLambda!3812 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54801)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6498 (array!91347 array!91349 (_ BitVec 32) (_ BitVec 32) V!54801 V!54801 (_ BitVec 32) Int) ListLongMap!21923)

(assert (=> b!1342982 (= lt!594688 (getCurrentListMapNoExtraKeys!6498 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapIsEmpty!57616 () Bool)

(declare-fun mapRes!57616 () Bool)

(assert (=> mapIsEmpty!57616 mapRes!57616))

(declare-fun mapNonEmpty!57616 () Bool)

(declare-fun tp!109625 () Bool)

(declare-fun e!764501 () Bool)

(assert (=> mapNonEmpty!57616 (= mapRes!57616 (and tp!109625 e!764501))))

(declare-fun mapKey!57616 () (_ BitVec 32))

(declare-fun mapRest!57616 () (Array (_ BitVec 32) ValueCell!17738))

(declare-fun mapValue!57616 () ValueCell!17738)

(assert (=> mapNonEmpty!57616 (= (arr!44126 _values!1303) (store mapRest!57616 mapKey!57616 mapValue!57616))))

(declare-fun b!1342983 () Bool)

(declare-fun res!891107 () Bool)

(assert (=> b!1342983 (=> (not res!891107) (not e!764500))))

(assert (=> b!1342983 (= res!891107 (and (= (size!44677 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44676 _keys!1571) (size!44677 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1342985 () Bool)

(declare-fun res!891104 () Bool)

(assert (=> b!1342985 (=> (not res!891104) (not e!764500))))

(assert (=> b!1342985 (= res!891104 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342986 () Bool)

(declare-fun res!891106 () Bool)

(assert (=> b!1342986 (=> (not res!891106) (not e!764500))))

(declare-fun getCurrentListMap!5873 (array!91347 array!91349 (_ BitVec 32) (_ BitVec 32) V!54801 V!54801 (_ BitVec 32) Int) ListLongMap!21923)

(assert (=> b!1342986 (= res!891106 (contains!9089 (getCurrentListMap!5873 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1342987 () Bool)

(declare-fun e!764498 () Bool)

(declare-fun e!764499 () Bool)

(assert (=> b!1342987 (= e!764498 (and e!764499 mapRes!57616))))

(declare-fun condMapEmpty!57616 () Bool)

(declare-fun mapDefault!57616 () ValueCell!17738)

