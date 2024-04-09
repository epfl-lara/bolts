; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111952 () Bool)

(assert start!111952)

(declare-fun b_free!30515 () Bool)

(declare-fun b_next!30515 () Bool)

(assert (=> start!111952 (= b_free!30515 (not b_next!30515))))

(declare-fun tp!107025 () Bool)

(declare-fun b_and!49135 () Bool)

(assert (=> start!111952 (= tp!107025 b_and!49135)))

(declare-datatypes ((array!89537 0))(
  ( (array!89538 (arr!43237 (Array (_ BitVec 32) (_ BitVec 64))) (size!43788 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89537)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun e!755931 () Bool)

(declare-fun b!1326192 () Bool)

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1326192 (= e!755931 (not (not (= k!1164 (select (arr!43237 _keys!1609) from!2000)))))))

(declare-datatypes ((V!53549 0))(
  ( (V!53550 (val!18242 Int)) )
))
(declare-datatypes ((tuple2!23686 0))(
  ( (tuple2!23687 (_1!11853 (_ BitVec 64)) (_2!11853 V!53549)) )
))
(declare-datatypes ((List!30853 0))(
  ( (Nil!30850) (Cons!30849 (h!32058 tuple2!23686) (t!44846 List!30853)) )
))
(declare-datatypes ((ListLongMap!21355 0))(
  ( (ListLongMap!21356 (toList!10693 List!30853)) )
))
(declare-fun lt!589932 () ListLongMap!21355)

(declare-fun contains!8786 (ListLongMap!21355 (_ BitVec 64)) Bool)

(assert (=> b!1326192 (contains!8786 lt!589932 k!1164)))

(declare-fun zeroValue!1279 () V!53549)

(declare-datatypes ((Unit!43622 0))(
  ( (Unit!43623) )
))
(declare-fun lt!589931 () Unit!43622)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!218 ((_ BitVec 64) (_ BitVec 64) V!53549 ListLongMap!21355) Unit!43622)

(assert (=> b!1326192 (= lt!589931 (lemmaInListMapAfterAddingDiffThenInBefore!218 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589932))))

(declare-fun lt!589933 () ListLongMap!21355)

(assert (=> b!1326192 (contains!8786 lt!589933 k!1164)))

(declare-fun minValue!1279 () V!53549)

(declare-fun lt!589930 () Unit!43622)

(assert (=> b!1326192 (= lt!589930 (lemmaInListMapAfterAddingDiffThenInBefore!218 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589933))))

(declare-fun +!4608 (ListLongMap!21355 tuple2!23686) ListLongMap!21355)

(assert (=> b!1326192 (= lt!589933 (+!4608 lt!589932 (tuple2!23687 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17269 0))(
  ( (ValueCellFull!17269 (v!20873 V!53549)) (EmptyCell!17269) )
))
(declare-datatypes ((array!89539 0))(
  ( (array!89540 (arr!43238 (Array (_ BitVec 32) ValueCell!17269)) (size!43789 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89539)

(declare-fun getCurrentListMapNoExtraKeys!6326 (array!89537 array!89539 (_ BitVec 32) (_ BitVec 32) V!53549 V!53549 (_ BitVec 32) Int) ListLongMap!21355)

(declare-fun get!21829 (ValueCell!17269 V!53549) V!53549)

(declare-fun dynLambda!3645 (Int (_ BitVec 64)) V!53549)

(assert (=> b!1326192 (= lt!589932 (+!4608 (getCurrentListMapNoExtraKeys!6326 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23687 (select (arr!43237 _keys!1609) from!2000) (get!21829 (select (arr!43238 _values!1337) from!2000) (dynLambda!3645 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1326193 () Bool)

(declare-fun e!755935 () Bool)

(declare-fun tp_is_empty!36335 () Bool)

(assert (=> b!1326193 (= e!755935 tp_is_empty!36335)))

(declare-fun b!1326194 () Bool)

(declare-fun res!880279 () Bool)

(assert (=> b!1326194 (=> (not res!880279) (not e!755931))))

(assert (=> b!1326194 (= res!880279 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43788 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326195 () Bool)

(declare-fun res!880282 () Bool)

(assert (=> b!1326195 (=> (not res!880282) (not e!755931))))

(assert (=> b!1326195 (= res!880282 (and (= (size!43789 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43788 _keys!1609) (size!43789 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326196 () Bool)

(declare-fun res!880278 () Bool)

(assert (=> b!1326196 (=> (not res!880278) (not e!755931))))

(declare-fun getCurrentListMap!5626 (array!89537 array!89539 (_ BitVec 32) (_ BitVec 32) V!53549 V!53549 (_ BitVec 32) Int) ListLongMap!21355)

(assert (=> b!1326196 (= res!880278 (contains!8786 (getCurrentListMap!5626 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!56154 () Bool)

(declare-fun mapRes!56154 () Bool)

(declare-fun tp!107026 () Bool)

(assert (=> mapNonEmpty!56154 (= mapRes!56154 (and tp!107026 e!755935))))

(declare-fun mapValue!56154 () ValueCell!17269)

(declare-fun mapKey!56154 () (_ BitVec 32))

(declare-fun mapRest!56154 () (Array (_ BitVec 32) ValueCell!17269))

(assert (=> mapNonEmpty!56154 (= (arr!43238 _values!1337) (store mapRest!56154 mapKey!56154 mapValue!56154))))

(declare-fun b!1326197 () Bool)

(declare-fun res!880281 () Bool)

(assert (=> b!1326197 (=> (not res!880281) (not e!755931))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326197 (= res!880281 (validKeyInArray!0 (select (arr!43237 _keys!1609) from!2000)))))

(declare-fun b!1326198 () Bool)

(declare-fun e!755933 () Bool)

(declare-fun e!755932 () Bool)

(assert (=> b!1326198 (= e!755933 (and e!755932 mapRes!56154))))

(declare-fun condMapEmpty!56154 () Bool)

(declare-fun mapDefault!56154 () ValueCell!17269)

