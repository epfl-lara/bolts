; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112420 () Bool)

(assert start!112420)

(declare-fun b_free!30779 () Bool)

(declare-fun b_next!30779 () Bool)

(assert (=> start!112420 (= b_free!30779 (not b_next!30779))))

(declare-fun tp!107975 () Bool)

(declare-fun b_and!49623 () Bool)

(assert (=> start!112420 (= tp!107975 b_and!49623)))

(declare-fun b!1332262 () Bool)

(declare-fun res!884201 () Bool)

(declare-fun e!759017 () Bool)

(assert (=> b!1332262 (=> (not res!884201) (not e!759017))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1332262 (= res!884201 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1332263 () Bool)

(declare-fun res!884193 () Bool)

(assert (=> b!1332263 (=> (not res!884193) (not e!759017))))

(declare-datatypes ((array!90227 0))(
  ( (array!90228 (arr!43575 (Array (_ BitVec 32) (_ BitVec 64))) (size!44126 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90227)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90227 (_ BitVec 32)) Bool)

(assert (=> b!1332263 (= res!884193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332264 () Bool)

(declare-fun res!884194 () Bool)

(assert (=> b!1332264 (=> (not res!884194) (not e!759017))))

(declare-datatypes ((List!31064 0))(
  ( (Nil!31061) (Cons!31060 (h!32269 (_ BitVec 64)) (t!45263 List!31064)) )
))
(declare-fun arrayNoDuplicates!0 (array!90227 (_ BitVec 32) List!31064) Bool)

(assert (=> b!1332264 (= res!884194 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31061))))

(declare-fun b!1332265 () Bool)

(declare-fun res!884198 () Bool)

(assert (=> b!1332265 (=> (not res!884198) (not e!759017))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332265 (= res!884198 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44126 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56707 () Bool)

(declare-fun mapRes!56707 () Bool)

(declare-fun tp!107974 () Bool)

(declare-fun e!759019 () Bool)

(assert (=> mapNonEmpty!56707 (= mapRes!56707 (and tp!107974 e!759019))))

(declare-datatypes ((V!54021 0))(
  ( (V!54022 (val!18419 Int)) )
))
(declare-datatypes ((ValueCell!17446 0))(
  ( (ValueCellFull!17446 (v!21054 V!54021)) (EmptyCell!17446) )
))
(declare-datatypes ((array!90229 0))(
  ( (array!90230 (arr!43576 (Array (_ BitVec 32) ValueCell!17446)) (size!44127 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90229)

(declare-fun mapRest!56707 () (Array (_ BitVec 32) ValueCell!17446))

(declare-fun mapValue!56707 () ValueCell!17446)

(declare-fun mapKey!56707 () (_ BitVec 32))

(assert (=> mapNonEmpty!56707 (= (arr!43576 _values!1320) (store mapRest!56707 mapKey!56707 mapValue!56707))))

(declare-fun b!1332267 () Bool)

(assert (=> b!1332267 (= e!759017 (not true))))

(declare-datatypes ((tuple2!23886 0))(
  ( (tuple2!23887 (_1!11953 (_ BitVec 64)) (_2!11953 V!54021)) )
))
(declare-datatypes ((List!31065 0))(
  ( (Nil!31062) (Cons!31061 (h!32270 tuple2!23886) (t!45264 List!31065)) )
))
(declare-datatypes ((ListLongMap!21555 0))(
  ( (ListLongMap!21556 (toList!10793 List!31065)) )
))
(declare-fun lt!591903 () ListLongMap!21555)

(declare-fun minValue!1262 () V!54021)

(declare-fun contains!8893 (ListLongMap!21555 (_ BitVec 64)) Bool)

(declare-fun +!4680 (ListLongMap!21555 tuple2!23886) ListLongMap!21555)

(assert (=> b!1332267 (contains!8893 (+!4680 lt!591903 (tuple2!23887 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43787 0))(
  ( (Unit!43788) )
))
(declare-fun lt!591905 () Unit!43787)

(declare-fun addStillContains!1190 (ListLongMap!21555 (_ BitVec 64) V!54021 (_ BitVec 64)) Unit!43787)

(assert (=> b!1332267 (= lt!591905 (addStillContains!1190 lt!591903 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1332267 (contains!8893 lt!591903 k!1153)))

(declare-fun lt!591906 () Unit!43787)

(declare-fun lt!591904 () V!54021)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!285 ((_ BitVec 64) (_ BitVec 64) V!54021 ListLongMap!21555) Unit!43787)

(assert (=> b!1332267 (= lt!591906 (lemmaInListMapAfterAddingDiffThenInBefore!285 k!1153 (select (arr!43575 _keys!1590) from!1980) lt!591904 lt!591903))))

(declare-fun lt!591908 () ListLongMap!21555)

(assert (=> b!1332267 (contains!8893 lt!591908 k!1153)))

(declare-fun lt!591907 () Unit!43787)

(assert (=> b!1332267 (= lt!591907 (lemmaInListMapAfterAddingDiffThenInBefore!285 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591908))))

(assert (=> b!1332267 (= lt!591908 (+!4680 lt!591903 (tuple2!23887 (select (arr!43575 _keys!1590) from!1980) lt!591904)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22024 (ValueCell!17446 V!54021) V!54021)

(declare-fun dynLambda!3717 (Int (_ BitVec 64)) V!54021)

(assert (=> b!1332267 (= lt!591904 (get!22024 (select (arr!43576 _values!1320) from!1980) (dynLambda!3717 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!54021)

(declare-fun getCurrentListMapNoExtraKeys!6398 (array!90227 array!90229 (_ BitVec 32) (_ BitVec 32) V!54021 V!54021 (_ BitVec 32) Int) ListLongMap!21555)

(assert (=> b!1332267 (= lt!591903 (getCurrentListMapNoExtraKeys!6398 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1332268 () Bool)

(declare-fun res!884196 () Bool)

(assert (=> b!1332268 (=> (not res!884196) (not e!759017))))

(declare-fun getCurrentListMap!5714 (array!90227 array!90229 (_ BitVec 32) (_ BitVec 32) V!54021 V!54021 (_ BitVec 32) Int) ListLongMap!21555)

(assert (=> b!1332268 (= res!884196 (contains!8893 (getCurrentListMap!5714 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1332269 () Bool)

(declare-fun res!884195 () Bool)

(assert (=> b!1332269 (=> (not res!884195) (not e!759017))))

(assert (=> b!1332269 (= res!884195 (not (= (select (arr!43575 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1332270 () Bool)

(declare-fun res!884200 () Bool)

(assert (=> b!1332270 (=> (not res!884200) (not e!759017))))

(assert (=> b!1332270 (= res!884200 (and (= (size!44127 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44126 _keys!1590) (size!44127 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56707 () Bool)

(assert (=> mapIsEmpty!56707 mapRes!56707))

(declare-fun b!1332271 () Bool)

(declare-fun tp_is_empty!36689 () Bool)

(assert (=> b!1332271 (= e!759019 tp_is_empty!36689)))

(declare-fun b!1332272 () Bool)

(declare-fun e!759015 () Bool)

(assert (=> b!1332272 (= e!759015 tp_is_empty!36689)))

(declare-fun b!1332273 () Bool)

(declare-fun e!759016 () Bool)

(assert (=> b!1332273 (= e!759016 (and e!759015 mapRes!56707))))

(declare-fun condMapEmpty!56707 () Bool)

(declare-fun mapDefault!56707 () ValueCell!17446)

