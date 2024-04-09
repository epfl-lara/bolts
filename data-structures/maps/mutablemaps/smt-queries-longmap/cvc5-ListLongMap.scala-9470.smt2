; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112464 () Bool)

(assert start!112464)

(declare-fun b_free!30823 () Bool)

(declare-fun b_next!30823 () Bool)

(assert (=> start!112464 (= b_free!30823 (not b_next!30823))))

(declare-fun tp!108106 () Bool)

(declare-fun b_and!49675 () Bool)

(assert (=> start!112464 (= tp!108106 b_and!49675)))

(declare-fun b!1332838 () Bool)

(declare-fun e!759347 () Bool)

(declare-fun tp_is_empty!36733 () Bool)

(assert (=> b!1332838 (= e!759347 tp_is_empty!36733)))

(declare-fun b!1332839 () Bool)

(declare-fun res!884564 () Bool)

(declare-fun e!759345 () Bool)

(assert (=> b!1332839 (=> (not res!884564) (not e!759345))))

(declare-datatypes ((array!90313 0))(
  ( (array!90314 (arr!43618 (Array (_ BitVec 32) (_ BitVec 64))) (size!44169 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90313)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90313 (_ BitVec 32)) Bool)

(assert (=> b!1332839 (= res!884564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56773 () Bool)

(declare-fun mapRes!56773 () Bool)

(declare-fun tp!108107 () Bool)

(declare-fun e!759349 () Bool)

(assert (=> mapNonEmpty!56773 (= mapRes!56773 (and tp!108107 e!759349))))

(declare-datatypes ((V!54081 0))(
  ( (V!54082 (val!18441 Int)) )
))
(declare-datatypes ((ValueCell!17468 0))(
  ( (ValueCellFull!17468 (v!21076 V!54081)) (EmptyCell!17468) )
))
(declare-datatypes ((array!90315 0))(
  ( (array!90316 (arr!43619 (Array (_ BitVec 32) ValueCell!17468)) (size!44170 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90315)

(declare-fun mapKey!56773 () (_ BitVec 32))

(declare-fun mapValue!56773 () ValueCell!17468)

(declare-fun mapRest!56773 () (Array (_ BitVec 32) ValueCell!17468))

(assert (=> mapNonEmpty!56773 (= (arr!43619 _values!1320) (store mapRest!56773 mapKey!56773 mapValue!56773))))

(declare-fun b!1332840 () Bool)

(declare-fun res!884565 () Bool)

(assert (=> b!1332840 (=> (not res!884565) (not e!759345))))

(declare-datatypes ((List!31097 0))(
  ( (Nil!31094) (Cons!31093 (h!32302 (_ BitVec 64)) (t!45302 List!31097)) )
))
(declare-fun arrayNoDuplicates!0 (array!90313 (_ BitVec 32) List!31097) Bool)

(assert (=> b!1332840 (= res!884565 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31094))))

(declare-fun mapIsEmpty!56773 () Bool)

(assert (=> mapIsEmpty!56773 mapRes!56773))

(declare-fun b!1332841 () Bool)

(assert (=> b!1332841 (= e!759349 tp_is_empty!36733)))

(declare-fun res!884566 () Bool)

(assert (=> start!112464 (=> (not res!884566) (not e!759345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112464 (= res!884566 (validMask!0 mask!1998))))

(assert (=> start!112464 e!759345))

(declare-fun e!759348 () Bool)

(declare-fun array_inv!32843 (array!90315) Bool)

(assert (=> start!112464 (and (array_inv!32843 _values!1320) e!759348)))

(assert (=> start!112464 true))

(declare-fun array_inv!32844 (array!90313) Bool)

(assert (=> start!112464 (array_inv!32844 _keys!1590)))

(assert (=> start!112464 tp!108106))

(assert (=> start!112464 tp_is_empty!36733))

(declare-fun b!1332842 () Bool)

(assert (=> b!1332842 (= e!759345 false)))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54081)

(declare-fun zeroValue!1262 () V!54081)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun lt!592019 () Bool)

(declare-datatypes ((tuple2!23918 0))(
  ( (tuple2!23919 (_1!11969 (_ BitVec 64)) (_2!11969 V!54081)) )
))
(declare-datatypes ((List!31098 0))(
  ( (Nil!31095) (Cons!31094 (h!32303 tuple2!23918) (t!45303 List!31098)) )
))
(declare-datatypes ((ListLongMap!21587 0))(
  ( (ListLongMap!21588 (toList!10809 List!31098)) )
))
(declare-fun contains!8909 (ListLongMap!21587 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5730 (array!90313 array!90315 (_ BitVec 32) (_ BitVec 32) V!54081 V!54081 (_ BitVec 32) Int) ListLongMap!21587)

(assert (=> b!1332842 (= lt!592019 (contains!8909 (getCurrentListMap!5730 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1332843 () Bool)

(declare-fun res!884567 () Bool)

(assert (=> b!1332843 (=> (not res!884567) (not e!759345))))

(assert (=> b!1332843 (= res!884567 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44169 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332844 () Bool)

(assert (=> b!1332844 (= e!759348 (and e!759347 mapRes!56773))))

(declare-fun condMapEmpty!56773 () Bool)

(declare-fun mapDefault!56773 () ValueCell!17468)

