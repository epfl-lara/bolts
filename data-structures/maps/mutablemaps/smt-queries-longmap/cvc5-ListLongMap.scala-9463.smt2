; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112422 () Bool)

(assert start!112422)

(declare-fun b_free!30781 () Bool)

(declare-fun b_next!30781 () Bool)

(assert (=> start!112422 (= b_free!30781 (not b_next!30781))))

(declare-fun tp!107981 () Bool)

(declare-fun b_and!49627 () Bool)

(assert (=> start!112422 (= tp!107981 b_and!49627)))

(declare-fun b!1332300 () Bool)

(declare-fun res!884228 () Bool)

(declare-fun e!759030 () Bool)

(assert (=> b!1332300 (=> (not res!884228) (not e!759030))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1332300 (= res!884228 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1332301 () Bool)

(declare-fun res!884225 () Bool)

(assert (=> b!1332301 (=> (not res!884225) (not e!759030))))

(declare-datatypes ((array!90231 0))(
  ( (array!90232 (arr!43577 (Array (_ BitVec 32) (_ BitVec 64))) (size!44128 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90231)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90231 (_ BitVec 32)) Bool)

(assert (=> b!1332301 (= res!884225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56710 () Bool)

(declare-fun mapRes!56710 () Bool)

(declare-fun tp!107980 () Bool)

(declare-fun e!759033 () Bool)

(assert (=> mapNonEmpty!56710 (= mapRes!56710 (and tp!107980 e!759033))))

(declare-datatypes ((V!54025 0))(
  ( (V!54026 (val!18420 Int)) )
))
(declare-datatypes ((ValueCell!17447 0))(
  ( (ValueCellFull!17447 (v!21055 V!54025)) (EmptyCell!17447) )
))
(declare-fun mapValue!56710 () ValueCell!17447)

(declare-fun mapKey!56710 () (_ BitVec 32))

(declare-datatypes ((array!90233 0))(
  ( (array!90234 (arr!43578 (Array (_ BitVec 32) ValueCell!17447)) (size!44129 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90233)

(declare-fun mapRest!56710 () (Array (_ BitVec 32) ValueCell!17447))

(assert (=> mapNonEmpty!56710 (= (arr!43578 _values!1320) (store mapRest!56710 mapKey!56710 mapValue!56710))))

(declare-fun b!1332302 () Bool)

(declare-fun e!759032 () Bool)

(declare-fun tp_is_empty!36691 () Bool)

(assert (=> b!1332302 (= e!759032 tp_is_empty!36691)))

(declare-fun mapIsEmpty!56710 () Bool)

(assert (=> mapIsEmpty!56710 mapRes!56710))

(declare-fun b!1332304 () Bool)

(declare-fun res!884222 () Bool)

(assert (=> b!1332304 (=> (not res!884222) (not e!759030))))

(assert (=> b!1332304 (= res!884222 (and (= (size!44129 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44128 _keys!1590) (size!44129 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332305 () Bool)

(declare-fun res!884224 () Bool)

(assert (=> b!1332305 (=> (not res!884224) (not e!759030))))

(declare-datatypes ((List!31066 0))(
  ( (Nil!31063) (Cons!31062 (h!32271 (_ BitVec 64)) (t!45267 List!31066)) )
))
(declare-fun arrayNoDuplicates!0 (array!90231 (_ BitVec 32) List!31066) Bool)

(assert (=> b!1332305 (= res!884224 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31063))))

(declare-fun b!1332306 () Bool)

(declare-fun res!884226 () Bool)

(assert (=> b!1332306 (=> (not res!884226) (not e!759030))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332306 (= res!884226 (not (= (select (arr!43577 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1332307 () Bool)

(declare-fun res!884223 () Bool)

(assert (=> b!1332307 (=> (not res!884223) (not e!759030))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1332307 (= res!884223 (validKeyInArray!0 (select (arr!43577 _keys!1590) from!1980)))))

(declare-fun b!1332308 () Bool)

(assert (=> b!1332308 (= e!759033 tp_is_empty!36691)))

(declare-fun b!1332309 () Bool)

(declare-fun res!884227 () Bool)

(assert (=> b!1332309 (=> (not res!884227) (not e!759030))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54025)

(declare-fun zeroValue!1262 () V!54025)

(declare-datatypes ((tuple2!23888 0))(
  ( (tuple2!23889 (_1!11954 (_ BitVec 64)) (_2!11954 V!54025)) )
))
(declare-datatypes ((List!31067 0))(
  ( (Nil!31064) (Cons!31063 (h!32272 tuple2!23888) (t!45268 List!31067)) )
))
(declare-datatypes ((ListLongMap!21557 0))(
  ( (ListLongMap!21558 (toList!10794 List!31067)) )
))
(declare-fun contains!8894 (ListLongMap!21557 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5715 (array!90231 array!90233 (_ BitVec 32) (_ BitVec 32) V!54025 V!54025 (_ BitVec 32) Int) ListLongMap!21557)

(assert (=> b!1332309 (= res!884227 (contains!8894 (getCurrentListMap!5715 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun res!884220 () Bool)

(assert (=> start!112422 (=> (not res!884220) (not e!759030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112422 (= res!884220 (validMask!0 mask!1998))))

(assert (=> start!112422 e!759030))

(declare-fun e!759034 () Bool)

(declare-fun array_inv!32817 (array!90233) Bool)

(assert (=> start!112422 (and (array_inv!32817 _values!1320) e!759034)))

(assert (=> start!112422 true))

(declare-fun array_inv!32818 (array!90231) Bool)

(assert (=> start!112422 (array_inv!32818 _keys!1590)))

(assert (=> start!112422 tp!107981))

(assert (=> start!112422 tp_is_empty!36691))

(declare-fun b!1332303 () Bool)

(assert (=> b!1332303 (= e!759030 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun lt!591926 () ListLongMap!21557)

(declare-fun +!4681 (ListLongMap!21557 tuple2!23888) ListLongMap!21557)

(assert (=> b!1332303 (contains!8894 (+!4681 lt!591926 (tuple2!23889 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43789 0))(
  ( (Unit!43790) )
))
(declare-fun lt!591921 () Unit!43789)

(declare-fun addStillContains!1191 (ListLongMap!21557 (_ BitVec 64) V!54025 (_ BitVec 64)) Unit!43789)

(assert (=> b!1332303 (= lt!591921 (addStillContains!1191 lt!591926 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1332303 (contains!8894 lt!591926 k!1153)))

(declare-fun lt!591923 () Unit!43789)

(declare-fun lt!591924 () V!54025)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!286 ((_ BitVec 64) (_ BitVec 64) V!54025 ListLongMap!21557) Unit!43789)

(assert (=> b!1332303 (= lt!591923 (lemmaInListMapAfterAddingDiffThenInBefore!286 k!1153 (select (arr!43577 _keys!1590) from!1980) lt!591924 lt!591926))))

(declare-fun lt!591925 () ListLongMap!21557)

(assert (=> b!1332303 (contains!8894 lt!591925 k!1153)))

(declare-fun lt!591922 () Unit!43789)

(assert (=> b!1332303 (= lt!591922 (lemmaInListMapAfterAddingDiffThenInBefore!286 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591925))))

(assert (=> b!1332303 (= lt!591925 (+!4681 lt!591926 (tuple2!23889 (select (arr!43577 _keys!1590) from!1980) lt!591924)))))

(declare-fun get!22027 (ValueCell!17447 V!54025) V!54025)

(declare-fun dynLambda!3718 (Int (_ BitVec 64)) V!54025)

(assert (=> b!1332303 (= lt!591924 (get!22027 (select (arr!43578 _values!1320) from!1980) (dynLambda!3718 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6399 (array!90231 array!90233 (_ BitVec 32) (_ BitVec 32) V!54025 V!54025 (_ BitVec 32) Int) ListLongMap!21557)

(assert (=> b!1332303 (= lt!591926 (getCurrentListMapNoExtraKeys!6399 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1332310 () Bool)

(assert (=> b!1332310 (= e!759034 (and e!759032 mapRes!56710))))

(declare-fun condMapEmpty!56710 () Bool)

(declare-fun mapDefault!56710 () ValueCell!17447)

