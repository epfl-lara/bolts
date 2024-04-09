; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112314 () Bool)

(assert start!112314)

(declare-fun b_free!30673 () Bool)

(declare-fun b_next!30673 () Bool)

(assert (=> start!112314 (= b_free!30673 (not b_next!30673))))

(declare-fun tp!107657 () Bool)

(declare-fun b_and!49411 () Bool)

(assert (=> start!112314 (= tp!107657 b_and!49411)))

(declare-fun b!1330248 () Bool)

(declare-fun e!758221 () Bool)

(assert (=> b!1330248 (= e!758221 (not true))))

(declare-datatypes ((V!53881 0))(
  ( (V!53882 (val!18366 Int)) )
))
(declare-datatypes ((tuple2!23798 0))(
  ( (tuple2!23799 (_1!11909 (_ BitVec 64)) (_2!11909 V!53881)) )
))
(declare-datatypes ((List!30987 0))(
  ( (Nil!30984) (Cons!30983 (h!32192 tuple2!23798) (t!45080 List!30987)) )
))
(declare-datatypes ((ListLongMap!21467 0))(
  ( (ListLongMap!21468 (toList!10749 List!30987)) )
))
(declare-fun lt!591037 () ListLongMap!21467)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8849 (ListLongMap!21467 (_ BitVec 64)) Bool)

(assert (=> b!1330248 (contains!8849 lt!591037 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90021 0))(
  ( (array!90022 (arr!43472 (Array (_ BitVec 32) (_ BitVec 64))) (size!44023 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90021)

(declare-fun lt!591040 () V!53881)

(declare-datatypes ((Unit!43711 0))(
  ( (Unit!43712) )
))
(declare-fun lt!591041 () Unit!43711)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!247 ((_ BitVec 64) (_ BitVec 64) V!53881 ListLongMap!21467) Unit!43711)

(assert (=> b!1330248 (= lt!591041 (lemmaInListMapAfterAddingDiffThenInBefore!247 k!1153 (select (arr!43472 _keys!1590) from!1980) lt!591040 lt!591037))))

(declare-fun lt!591039 () ListLongMap!21467)

(assert (=> b!1330248 (contains!8849 lt!591039 k!1153)))

(declare-fun lt!591038 () Unit!43711)

(declare-fun minValue!1262 () V!53881)

(assert (=> b!1330248 (= lt!591038 (lemmaInListMapAfterAddingDiffThenInBefore!247 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591039))))

(declare-fun +!4642 (ListLongMap!21467 tuple2!23798) ListLongMap!21467)

(assert (=> b!1330248 (= lt!591039 (+!4642 lt!591037 (tuple2!23799 (select (arr!43472 _keys!1590) from!1980) lt!591040)))))

(declare-datatypes ((ValueCell!17393 0))(
  ( (ValueCellFull!17393 (v!21001 V!53881)) (EmptyCell!17393) )
))
(declare-datatypes ((array!90023 0))(
  ( (array!90024 (arr!43473 (Array (_ BitVec 32) ValueCell!17393)) (size!44024 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90023)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21952 (ValueCell!17393 V!53881) V!53881)

(declare-fun dynLambda!3679 (Int (_ BitVec 64)) V!53881)

(assert (=> b!1330248 (= lt!591040 (get!21952 (select (arr!43473 _values!1320) from!1980) (dynLambda!3679 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53881)

(declare-fun getCurrentListMapNoExtraKeys!6360 (array!90021 array!90023 (_ BitVec 32) (_ BitVec 32) V!53881 V!53881 (_ BitVec 32) Int) ListLongMap!21467)

(assert (=> b!1330248 (= lt!591037 (getCurrentListMapNoExtraKeys!6360 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330249 () Bool)

(declare-fun e!758223 () Bool)

(declare-fun tp_is_empty!36583 () Bool)

(assert (=> b!1330249 (= e!758223 tp_is_empty!36583)))

(declare-fun b!1330250 () Bool)

(declare-fun res!882762 () Bool)

(assert (=> b!1330250 (=> (not res!882762) (not e!758221))))

(assert (=> b!1330250 (= res!882762 (and (= (size!44024 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44023 _keys!1590) (size!44024 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330251 () Bool)

(declare-fun res!882769 () Bool)

(assert (=> b!1330251 (=> (not res!882769) (not e!758221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330251 (= res!882769 (validKeyInArray!0 (select (arr!43472 _keys!1590) from!1980)))))

(declare-fun b!1330252 () Bool)

(declare-fun e!758220 () Bool)

(declare-fun mapRes!56548 () Bool)

(assert (=> b!1330252 (= e!758220 (and e!758223 mapRes!56548))))

(declare-fun condMapEmpty!56548 () Bool)

(declare-fun mapDefault!56548 () ValueCell!17393)

