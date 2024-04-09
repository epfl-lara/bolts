; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112518 () Bool)

(assert start!112518)

(declare-fun b_free!30877 () Bool)

(declare-fun b_next!30877 () Bool)

(assert (=> start!112518 (= b_free!30877 (not b_next!30877))))

(declare-fun tp!108268 () Bool)

(declare-fun b_and!49765 () Bool)

(assert (=> start!112518 (= tp!108268 b_and!49765)))

(declare-fun b!1333849 () Bool)

(declare-fun e!759792 () Bool)

(declare-fun tp_is_empty!36787 () Bool)

(assert (=> b!1333849 (= e!759792 tp_is_empty!36787)))

(declare-fun b!1333850 () Bool)

(declare-fun res!885298 () Bool)

(declare-fun e!759793 () Bool)

(assert (=> b!1333850 (=> (not res!885298) (not e!759793))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90421 0))(
  ( (array!90422 (arr!43672 (Array (_ BitVec 32) (_ BitVec 64))) (size!44223 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90421)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1333850 (= res!885298 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44223 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56854 () Bool)

(declare-fun mapRes!56854 () Bool)

(declare-fun tp!108269 () Bool)

(declare-fun e!759789 () Bool)

(assert (=> mapNonEmpty!56854 (= mapRes!56854 (and tp!108269 e!759789))))

(declare-datatypes ((V!54153 0))(
  ( (V!54154 (val!18468 Int)) )
))
(declare-datatypes ((ValueCell!17495 0))(
  ( (ValueCellFull!17495 (v!21103 V!54153)) (EmptyCell!17495) )
))
(declare-datatypes ((array!90423 0))(
  ( (array!90424 (arr!43673 (Array (_ BitVec 32) ValueCell!17495)) (size!44224 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90423)

(declare-fun mapValue!56854 () ValueCell!17495)

(declare-fun mapRest!56854 () (Array (_ BitVec 32) ValueCell!17495))

(declare-fun mapKey!56854 () (_ BitVec 32))

(assert (=> mapNonEmpty!56854 (= (arr!43673 _values!1320) (store mapRest!56854 mapKey!56854 mapValue!56854))))

(declare-fun mapIsEmpty!56854 () Bool)

(assert (=> mapIsEmpty!56854 mapRes!56854))

(declare-fun b!1333852 () Bool)

(declare-fun e!759790 () Bool)

(assert (=> b!1333852 (= e!759793 e!759790)))

(declare-fun res!885303 () Bool)

(assert (=> b!1333852 (=> (not res!885303) (not e!759790))))

(declare-datatypes ((tuple2!23966 0))(
  ( (tuple2!23967 (_1!11993 (_ BitVec 64)) (_2!11993 V!54153)) )
))
(declare-datatypes ((List!31140 0))(
  ( (Nil!31137) (Cons!31136 (h!32345 tuple2!23966) (t!45383 List!31140)) )
))
(declare-datatypes ((ListLongMap!21635 0))(
  ( (ListLongMap!21636 (toList!10833 List!31140)) )
))
(declare-fun lt!592167 () ListLongMap!21635)

(declare-fun lt!592169 () V!54153)

(declare-fun contains!8933 (ListLongMap!21635 (_ BitVec 64)) Bool)

(declare-fun +!4695 (ListLongMap!21635 tuple2!23966) ListLongMap!21635)

(assert (=> b!1333852 (= res!885303 (contains!8933 (+!4695 lt!592167 (tuple2!23967 (select (arr!43672 _keys!1590) from!1980) lt!592169)) k!1153))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54153)

(declare-fun zeroValue!1262 () V!54153)

(declare-fun getCurrentListMapNoExtraKeys!6413 (array!90421 array!90423 (_ BitVec 32) (_ BitVec 32) V!54153 V!54153 (_ BitVec 32) Int) ListLongMap!21635)

(assert (=> b!1333852 (= lt!592167 (getCurrentListMapNoExtraKeys!6413 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22073 (ValueCell!17495 V!54153) V!54153)

(declare-fun dynLambda!3732 (Int (_ BitVec 64)) V!54153)

(assert (=> b!1333852 (= lt!592169 (get!22073 (select (arr!43673 _values!1320) from!1980) (dynLambda!3732 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1333853 () Bool)

(declare-fun res!885297 () Bool)

(assert (=> b!1333853 (=> (not res!885297) (not e!759793))))

(assert (=> b!1333853 (= res!885297 (not (= (select (arr!43672 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1333854 () Bool)

(declare-fun e!759788 () Bool)

(assert (=> b!1333854 (= e!759788 (and e!759792 mapRes!56854))))

(declare-fun condMapEmpty!56854 () Bool)

(declare-fun mapDefault!56854 () ValueCell!17495)

