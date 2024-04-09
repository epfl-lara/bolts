; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112486 () Bool)

(assert start!112486)

(declare-fun b_free!30845 () Bool)

(declare-fun b_next!30845 () Bool)

(assert (=> start!112486 (= b_free!30845 (not b_next!30845))))

(declare-fun tp!108172 () Bool)

(declare-fun b_and!49701 () Bool)

(assert (=> start!112486 (= tp!108172 b_and!49701)))

(declare-fun b!1333165 () Bool)

(declare-fun res!884788 () Bool)

(declare-fun e!759512 () Bool)

(assert (=> b!1333165 (=> (not res!884788) (not e!759512))))

(declare-datatypes ((V!54109 0))(
  ( (V!54110 (val!18452 Int)) )
))
(declare-datatypes ((ValueCell!17479 0))(
  ( (ValueCellFull!17479 (v!21087 V!54109)) (EmptyCell!17479) )
))
(declare-datatypes ((array!90357 0))(
  ( (array!90358 (arr!43640 (Array (_ BitVec 32) ValueCell!17479)) (size!44191 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90357)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90359 0))(
  ( (array!90360 (arr!43641 (Array (_ BitVec 32) (_ BitVec 64))) (size!44192 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90359)

(assert (=> b!1333165 (= res!884788 (and (= (size!44191 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44192 _keys!1590) (size!44191 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333166 () Bool)

(declare-fun res!884789 () Bool)

(assert (=> b!1333166 (=> (not res!884789) (not e!759512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90359 (_ BitVec 32)) Bool)

(assert (=> b!1333166 (= res!884789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333167 () Bool)

(declare-fun res!884791 () Bool)

(assert (=> b!1333167 (=> (not res!884791) (not e!759512))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54109)

(declare-fun zeroValue!1262 () V!54109)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23934 0))(
  ( (tuple2!23935 (_1!11977 (_ BitVec 64)) (_2!11977 V!54109)) )
))
(declare-datatypes ((List!31113 0))(
  ( (Nil!31110) (Cons!31109 (h!32318 tuple2!23934) (t!45324 List!31113)) )
))
(declare-datatypes ((ListLongMap!21603 0))(
  ( (ListLongMap!21604 (toList!10817 List!31113)) )
))
(declare-fun contains!8917 (ListLongMap!21603 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5738 (array!90359 array!90357 (_ BitVec 32) (_ BitVec 32) V!54109 V!54109 (_ BitVec 32) Int) ListLongMap!21603)

(assert (=> b!1333167 (= res!884791 (contains!8917 (getCurrentListMap!5738 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1333168 () Bool)

(assert (=> b!1333168 (= e!759512 false)))

(declare-fun lt!592043 () Bool)

(declare-fun +!4685 (ListLongMap!21603 tuple2!23934) ListLongMap!21603)

(declare-fun getCurrentListMapNoExtraKeys!6403 (array!90359 array!90357 (_ BitVec 32) (_ BitVec 32) V!54109 V!54109 (_ BitVec 32) Int) ListLongMap!21603)

(declare-fun get!22051 (ValueCell!17479 V!54109) V!54109)

(declare-fun dynLambda!3722 (Int (_ BitVec 64)) V!54109)

(assert (=> b!1333168 (= lt!592043 (contains!8917 (+!4685 (getCurrentListMapNoExtraKeys!6403 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23935 (select (arr!43641 _keys!1590) from!1980) (get!22051 (select (arr!43640 _values!1320) from!1980) (dynLambda!3722 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k!1153))))

(declare-fun b!1333169 () Bool)

(declare-fun res!884795 () Bool)

(assert (=> b!1333169 (=> (not res!884795) (not e!759512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333169 (= res!884795 (validKeyInArray!0 (select (arr!43641 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!56806 () Bool)

(declare-fun mapRes!56806 () Bool)

(declare-fun tp!108173 () Bool)

(declare-fun e!759510 () Bool)

(assert (=> mapNonEmpty!56806 (= mapRes!56806 (and tp!108173 e!759510))))

(declare-fun mapKey!56806 () (_ BitVec 32))

(declare-fun mapValue!56806 () ValueCell!17479)

(declare-fun mapRest!56806 () (Array (_ BitVec 32) ValueCell!17479))

(assert (=> mapNonEmpty!56806 (= (arr!43640 _values!1320) (store mapRest!56806 mapKey!56806 mapValue!56806))))

(declare-fun b!1333171 () Bool)

(declare-fun res!884794 () Bool)

(assert (=> b!1333171 (=> (not res!884794) (not e!759512))))

(assert (=> b!1333171 (= res!884794 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44192 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333172 () Bool)

(declare-fun res!884790 () Bool)

(assert (=> b!1333172 (=> (not res!884790) (not e!759512))))

(assert (=> b!1333172 (= res!884790 (not (= (select (arr!43641 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1333173 () Bool)

(declare-fun res!884792 () Bool)

(assert (=> b!1333173 (=> (not res!884792) (not e!759512))))

(assert (=> b!1333173 (= res!884792 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333174 () Bool)

(declare-fun e!759513 () Bool)

(declare-fun e!759514 () Bool)

(assert (=> b!1333174 (= e!759513 (and e!759514 mapRes!56806))))

(declare-fun condMapEmpty!56806 () Bool)

(declare-fun mapDefault!56806 () ValueCell!17479)

