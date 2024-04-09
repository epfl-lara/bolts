; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111552 () Bool)

(assert start!111552)

(declare-fun b_free!30173 () Bool)

(declare-fun b_next!30173 () Bool)

(assert (=> start!111552 (= b_free!30173 (not b_next!30173))))

(declare-fun tp!105996 () Bool)

(declare-fun b_and!48515 () Bool)

(assert (=> start!111552 (= tp!105996 b_and!48515)))

(declare-fun b!1320144 () Bool)

(declare-fun e!753109 () Bool)

(assert (=> b!1320144 (= e!753109 (not true))))

(declare-datatypes ((V!53093 0))(
  ( (V!53094 (val!18071 Int)) )
))
(declare-datatypes ((tuple2!23430 0))(
  ( (tuple2!23431 (_1!11725 (_ BitVec 64)) (_2!11725 V!53093)) )
))
(declare-datatypes ((List!30613 0))(
  ( (Nil!30610) (Cons!30609 (h!31818 tuple2!23430) (t!44342 List!30613)) )
))
(declare-datatypes ((ListLongMap!21099 0))(
  ( (ListLongMap!21100 (toList!10565 List!30613)) )
))
(declare-fun lt!586816 () ListLongMap!21099)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8656 (ListLongMap!21099 (_ BitVec 64)) Bool)

(assert (=> b!1320144 (contains!8656 lt!586816 k!1164)))

(declare-fun zeroValue!1279 () V!53093)

(declare-datatypes ((Unit!43440 0))(
  ( (Unit!43441) )
))
(declare-fun lt!586817 () Unit!43440)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!135 ((_ BitVec 64) (_ BitVec 64) V!53093 ListLongMap!21099) Unit!43440)

(assert (=> b!1320144 (= lt!586817 (lemmaInListMapAfterAddingDiffThenInBefore!135 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586816))))

(declare-fun lt!586818 () ListLongMap!21099)

(assert (=> b!1320144 (contains!8656 lt!586818 k!1164)))

(declare-fun minValue!1279 () V!53093)

(declare-fun lt!586819 () Unit!43440)

(assert (=> b!1320144 (= lt!586819 (lemmaInListMapAfterAddingDiffThenInBefore!135 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586818))))

(declare-fun +!4520 (ListLongMap!21099 tuple2!23430) ListLongMap!21099)

(assert (=> b!1320144 (= lt!586818 (+!4520 lt!586816 (tuple2!23431 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-datatypes ((array!88881 0))(
  ( (array!88882 (arr!42910 (Array (_ BitVec 32) (_ BitVec 64))) (size!43461 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88881)

(declare-datatypes ((ValueCell!17098 0))(
  ( (ValueCellFull!17098 (v!20699 V!53093)) (EmptyCell!17098) )
))
(declare-datatypes ((array!88883 0))(
  ( (array!88884 (arr!42911 (Array (_ BitVec 32) ValueCell!17098)) (size!43462 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88883)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6235 (array!88881 array!88883 (_ BitVec 32) (_ BitVec 32) V!53093 V!53093 (_ BitVec 32) Int) ListLongMap!21099)

(declare-fun get!21624 (ValueCell!17098 V!53093) V!53093)

(declare-fun dynLambda!3557 (Int (_ BitVec 64)) V!53093)

(assert (=> b!1320144 (= lt!586816 (+!4520 (getCurrentListMapNoExtraKeys!6235 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23431 (select (arr!42910 _keys!1609) from!2000) (get!21624 (select (arr!42911 _values!1337) from!2000) (dynLambda!3557 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320145 () Bool)

(declare-fun res!876274 () Bool)

(assert (=> b!1320145 (=> (not res!876274) (not e!753109))))

(assert (=> b!1320145 (= res!876274 (not (= (select (arr!42910 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1320146 () Bool)

(declare-fun e!753111 () Bool)

(declare-fun e!753112 () Bool)

(declare-fun mapRes!55637 () Bool)

(assert (=> b!1320146 (= e!753111 (and e!753112 mapRes!55637))))

(declare-fun condMapEmpty!55637 () Bool)

(declare-fun mapDefault!55637 () ValueCell!17098)

