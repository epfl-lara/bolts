; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112302 () Bool)

(assert start!112302)

(declare-fun b_free!30661 () Bool)

(declare-fun b_next!30661 () Bool)

(assert (=> start!112302 (= b_free!30661 (not b_next!30661))))

(declare-fun tp!107621 () Bool)

(declare-fun b_and!49387 () Bool)

(assert (=> start!112302 (= tp!107621 b_and!49387)))

(declare-fun b!1330020 () Bool)

(declare-fun e!758131 () Bool)

(declare-fun tp_is_empty!36571 () Bool)

(assert (=> b!1330020 (= e!758131 tp_is_empty!36571)))

(declare-fun b!1330021 () Bool)

(declare-fun res!882608 () Bool)

(declare-fun e!758132 () Bool)

(assert (=> b!1330021 (=> (not res!882608) (not e!758132))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1330021 (= res!882608 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1330022 () Bool)

(declare-fun res!882604 () Bool)

(assert (=> b!1330022 (=> (not res!882604) (not e!758132))))

(declare-datatypes ((array!89997 0))(
  ( (array!89998 (arr!43460 (Array (_ BitVec 32) (_ BitVec 64))) (size!44011 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89997)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330022 (= res!882604 (validKeyInArray!0 (select (arr!43460 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!56530 () Bool)

(declare-fun mapRes!56530 () Bool)

(declare-fun tp!107620 () Bool)

(assert (=> mapNonEmpty!56530 (= mapRes!56530 (and tp!107620 e!758131))))

(declare-datatypes ((V!53865 0))(
  ( (V!53866 (val!18360 Int)) )
))
(declare-datatypes ((ValueCell!17387 0))(
  ( (ValueCellFull!17387 (v!20995 V!53865)) (EmptyCell!17387) )
))
(declare-fun mapValue!56530 () ValueCell!17387)

(declare-fun mapRest!56530 () (Array (_ BitVec 32) ValueCell!17387))

(declare-datatypes ((array!89999 0))(
  ( (array!90000 (arr!43461 (Array (_ BitVec 32) ValueCell!17387)) (size!44012 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89999)

(declare-fun mapKey!56530 () (_ BitVec 32))

(assert (=> mapNonEmpty!56530 (= (arr!43461 _values!1320) (store mapRest!56530 mapKey!56530 mapValue!56530))))

(declare-fun b!1330023 () Bool)

(declare-fun res!882606 () Bool)

(assert (=> b!1330023 (=> (not res!882606) (not e!758132))))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1330023 (= res!882606 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44011 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330024 () Bool)

(declare-fun res!882605 () Bool)

(assert (=> b!1330024 (=> (not res!882605) (not e!758132))))

(declare-datatypes ((List!30977 0))(
  ( (Nil!30974) (Cons!30973 (h!32182 (_ BitVec 64)) (t!45058 List!30977)) )
))
(declare-fun arrayNoDuplicates!0 (array!89997 (_ BitVec 32) List!30977) Bool)

(assert (=> b!1330024 (= res!882605 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30974))))

(declare-fun b!1330025 () Bool)

(declare-fun e!758130 () Bool)

(assert (=> b!1330025 (= e!758130 tp_is_empty!36571)))

(declare-fun b!1330026 () Bool)

(declare-fun res!882600 () Bool)

(assert (=> b!1330026 (=> (not res!882600) (not e!758132))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89997 (_ BitVec 32)) Bool)

(assert (=> b!1330026 (= res!882600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330027 () Bool)

(assert (=> b!1330027 (= e!758132 (not true))))

(declare-datatypes ((tuple2!23788 0))(
  ( (tuple2!23789 (_1!11904 (_ BitVec 64)) (_2!11904 V!53865)) )
))
(declare-datatypes ((List!30978 0))(
  ( (Nil!30975) (Cons!30974 (h!32183 tuple2!23788) (t!45059 List!30978)) )
))
(declare-datatypes ((ListLongMap!21457 0))(
  ( (ListLongMap!21458 (toList!10744 List!30978)) )
))
(declare-fun lt!590995 () ListLongMap!21457)

(declare-fun contains!8844 (ListLongMap!21457 (_ BitVec 64)) Bool)

(assert (=> b!1330027 (contains!8844 lt!590995 k!1153)))

(declare-datatypes ((Unit!43705 0))(
  ( (Unit!43706) )
))
(declare-fun lt!590996 () Unit!43705)

(declare-fun minValue!1262 () V!53865)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!244 ((_ BitVec 64) (_ BitVec 64) V!53865 ListLongMap!21457) Unit!43705)

(assert (=> b!1330027 (= lt!590996 (lemmaInListMapAfterAddingDiffThenInBefore!244 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590995))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!53865)

(declare-fun +!4639 (ListLongMap!21457 tuple2!23788) ListLongMap!21457)

(declare-fun getCurrentListMapNoExtraKeys!6357 (array!89997 array!89999 (_ BitVec 32) (_ BitVec 32) V!53865 V!53865 (_ BitVec 32) Int) ListLongMap!21457)

(declare-fun get!21945 (ValueCell!17387 V!53865) V!53865)

(declare-fun dynLambda!3676 (Int (_ BitVec 64)) V!53865)

(assert (=> b!1330027 (= lt!590995 (+!4639 (getCurrentListMapNoExtraKeys!6357 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23789 (select (arr!43460 _keys!1590) from!1980) (get!21945 (select (arr!43461 _values!1320) from!1980) (dynLambda!3676 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!882607 () Bool)

(assert (=> start!112302 (=> (not res!882607) (not e!758132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112302 (= res!882607 (validMask!0 mask!1998))))

(assert (=> start!112302 e!758132))

(declare-fun e!758133 () Bool)

(declare-fun array_inv!32741 (array!89999) Bool)

(assert (=> start!112302 (and (array_inv!32741 _values!1320) e!758133)))

(assert (=> start!112302 true))

(declare-fun array_inv!32742 (array!89997) Bool)

(assert (=> start!112302 (array_inv!32742 _keys!1590)))

(assert (=> start!112302 tp!107621))

(assert (=> start!112302 tp_is_empty!36571))

(declare-fun mapIsEmpty!56530 () Bool)

(assert (=> mapIsEmpty!56530 mapRes!56530))

(declare-fun b!1330028 () Bool)

(assert (=> b!1330028 (= e!758133 (and e!758130 mapRes!56530))))

(declare-fun condMapEmpty!56530 () Bool)

(declare-fun mapDefault!56530 () ValueCell!17387)

