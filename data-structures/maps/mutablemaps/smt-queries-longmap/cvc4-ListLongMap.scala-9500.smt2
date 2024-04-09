; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112706 () Bool)

(assert start!112706)

(declare-fun b_free!31007 () Bool)

(declare-fun b_next!31007 () Bool)

(assert (=> start!112706 (= b_free!31007 (not b_next!31007))))

(declare-fun tp!108662 () Bool)

(declare-fun b_and!49961 () Bool)

(assert (=> start!112706 (= tp!108662 b_and!49961)))

(declare-fun b!1336342 () Bool)

(declare-fun e!761051 () Bool)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((V!54325 0))(
  ( (V!54326 (val!18533 Int)) )
))
(declare-datatypes ((ValueCell!17560 0))(
  ( (ValueCellFull!17560 (v!21171 V!54325)) (EmptyCell!17560) )
))
(declare-datatypes ((array!90667 0))(
  ( (array!90668 (arr!43794 (Array (_ BitVec 32) ValueCell!17560)) (size!44345 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90667)

(assert (=> b!1336342 (= e!761051 (not (bvslt from!1980 (size!44345 _values!1320))))))

(declare-datatypes ((tuple2!24056 0))(
  ( (tuple2!24057 (_1!12038 (_ BitVec 64)) (_2!12038 V!54325)) )
))
(declare-datatypes ((List!31224 0))(
  ( (Nil!31221) (Cons!31220 (h!32429 tuple2!24056) (t!45519 List!31224)) )
))
(declare-datatypes ((ListLongMap!21725 0))(
  ( (ListLongMap!21726 (toList!10878 List!31224)) )
))
(declare-fun lt!592706 () ListLongMap!21725)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8979 (ListLongMap!21725 (_ BitVec 64)) Bool)

(assert (=> b!1336342 (contains!8979 lt!592706 k!1153)))

(declare-datatypes ((Unit!43854 0))(
  ( (Unit!43855) )
))
(declare-fun lt!592707 () Unit!43854)

(declare-fun minValue!1262 () V!54325)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!311 ((_ BitVec 64) (_ BitVec 64) V!54325 ListLongMap!21725) Unit!43854)

(assert (=> b!1336342 (= lt!592707 (lemmaInListMapAfterAddingDiffThenInBefore!311 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592706))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90669 0))(
  ( (array!90670 (arr!43795 (Array (_ BitVec 32) (_ BitVec 64))) (size!44346 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90669)

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!54325)

(declare-fun +!4710 (ListLongMap!21725 tuple2!24056) ListLongMap!21725)

(declare-fun getCurrentListMapNoExtraKeys!6433 (array!90669 array!90667 (_ BitVec 32) (_ BitVec 32) V!54325 V!54325 (_ BitVec 32) Int) ListLongMap!21725)

(declare-fun get!22133 (ValueCell!17560 V!54325) V!54325)

(declare-fun dynLambda!3747 (Int (_ BitVec 64)) V!54325)

(assert (=> b!1336342 (= lt!592706 (+!4710 (getCurrentListMapNoExtraKeys!6433 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24057 (select (arr!43795 _keys!1590) from!1980) (get!22133 (select (arr!43794 _values!1320) from!1980) (dynLambda!3747 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1336343 () Bool)

(declare-fun res!886929 () Bool)

(assert (=> b!1336343 (=> (not res!886929) (not e!761051))))

(assert (=> b!1336343 (= res!886929 (not (= (select (arr!43795 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1336344 () Bool)

(declare-fun res!886928 () Bool)

(assert (=> b!1336344 (=> (not res!886928) (not e!761051))))

(assert (=> b!1336344 (= res!886928 (and (= (size!44345 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44346 _keys!1590) (size!44345 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336345 () Bool)

(declare-fun e!761049 () Bool)

(declare-fun tp_is_empty!36917 () Bool)

(assert (=> b!1336345 (= e!761049 tp_is_empty!36917)))

(declare-fun b!1336346 () Bool)

(declare-fun res!886930 () Bool)

(assert (=> b!1336346 (=> (not res!886930) (not e!761051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90669 (_ BitVec 32)) Bool)

(assert (=> b!1336346 (= res!886930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336347 () Bool)

(declare-fun res!886936 () Bool)

(assert (=> b!1336347 (=> (not res!886936) (not e!761051))))

(declare-fun getCurrentListMap!5786 (array!90669 array!90667 (_ BitVec 32) (_ BitVec 32) V!54325 V!54325 (_ BitVec 32) Int) ListLongMap!21725)

(assert (=> b!1336347 (= res!886936 (contains!8979 (getCurrentListMap!5786 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1336348 () Bool)

(declare-fun res!886932 () Bool)

(assert (=> b!1336348 (=> (not res!886932) (not e!761051))))

(assert (=> b!1336348 (= res!886932 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44346 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57053 () Bool)

(declare-fun mapRes!57053 () Bool)

(declare-fun tp!108663 () Bool)

(assert (=> mapNonEmpty!57053 (= mapRes!57053 (and tp!108663 e!761049))))

(declare-fun mapKey!57053 () (_ BitVec 32))

(declare-fun mapValue!57053 () ValueCell!17560)

(declare-fun mapRest!57053 () (Array (_ BitVec 32) ValueCell!17560))

(assert (=> mapNonEmpty!57053 (= (arr!43794 _values!1320) (store mapRest!57053 mapKey!57053 mapValue!57053))))

(declare-fun b!1336349 () Bool)

(declare-fun e!761053 () Bool)

(declare-fun e!761052 () Bool)

(assert (=> b!1336349 (= e!761053 (and e!761052 mapRes!57053))))

(declare-fun condMapEmpty!57053 () Bool)

(declare-fun mapDefault!57053 () ValueCell!17560)

