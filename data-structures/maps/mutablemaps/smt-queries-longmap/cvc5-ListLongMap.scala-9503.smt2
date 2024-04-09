; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112720 () Bool)

(assert start!112720)

(declare-fun b_free!31021 () Bool)

(declare-fun b_next!31021 () Bool)

(assert (=> start!112720 (= b_free!31021 (not b_next!31021))))

(declare-fun tp!108705 () Bool)

(declare-fun b_and!49989 () Bool)

(assert (=> start!112720 (= tp!108705 b_and!49989)))

(declare-fun b!1336608 () Bool)

(declare-fun e!761157 () Bool)

(assert (=> b!1336608 (= e!761157 (not true))))

(declare-datatypes ((V!54345 0))(
  ( (V!54346 (val!18540 Int)) )
))
(declare-datatypes ((tuple2!24062 0))(
  ( (tuple2!24063 (_1!12041 (_ BitVec 64)) (_2!12041 V!54345)) )
))
(declare-datatypes ((List!31229 0))(
  ( (Nil!31226) (Cons!31225 (h!32434 tuple2!24062) (t!45538 List!31229)) )
))
(declare-datatypes ((ListLongMap!21731 0))(
  ( (ListLongMap!21732 (toList!10881 List!31229)) )
))
(declare-fun lt!592756 () ListLongMap!21731)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8982 (ListLongMap!21731 (_ BitVec 64)) Bool)

(assert (=> b!1336608 (contains!8982 lt!592756 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90693 0))(
  ( (array!90694 (arr!43807 (Array (_ BitVec 32) (_ BitVec 64))) (size!44358 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90693)

(declare-fun lt!592757 () V!54345)

(declare-datatypes ((Unit!43860 0))(
  ( (Unit!43861) )
))
(declare-fun lt!592755 () Unit!43860)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!314 ((_ BitVec 64) (_ BitVec 64) V!54345 ListLongMap!21731) Unit!43860)

(assert (=> b!1336608 (= lt!592755 (lemmaInListMapAfterAddingDiffThenInBefore!314 k!1153 (select (arr!43807 _keys!1590) from!1980) lt!592757 lt!592756))))

(declare-fun lt!592758 () ListLongMap!21731)

(assert (=> b!1336608 (contains!8982 lt!592758 k!1153)))

(declare-fun minValue!1262 () V!54345)

(declare-fun lt!592754 () Unit!43860)

(assert (=> b!1336608 (= lt!592754 (lemmaInListMapAfterAddingDiffThenInBefore!314 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592758))))

(declare-fun +!4713 (ListLongMap!21731 tuple2!24062) ListLongMap!21731)

(assert (=> b!1336608 (= lt!592758 (+!4713 lt!592756 (tuple2!24063 (select (arr!43807 _keys!1590) from!1980) lt!592757)))))

(declare-datatypes ((ValueCell!17567 0))(
  ( (ValueCellFull!17567 (v!21178 V!54345)) (EmptyCell!17567) )
))
(declare-datatypes ((array!90695 0))(
  ( (array!90696 (arr!43808 (Array (_ BitVec 32) ValueCell!17567)) (size!44359 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90695)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22142 (ValueCell!17567 V!54345) V!54345)

(declare-fun dynLambda!3750 (Int (_ BitVec 64)) V!54345)

(assert (=> b!1336608 (= lt!592757 (get!22142 (select (arr!43808 _values!1320) from!1980) (dynLambda!3750 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!54345)

(declare-fun getCurrentListMapNoExtraKeys!6436 (array!90693 array!90695 (_ BitVec 32) (_ BitVec 32) V!54345 V!54345 (_ BitVec 32) Int) ListLongMap!21731)

(assert (=> b!1336608 (= lt!592756 (getCurrentListMapNoExtraKeys!6436 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1336609 () Bool)

(declare-fun res!887123 () Bool)

(assert (=> b!1336609 (=> (not res!887123) (not e!761157))))

(assert (=> b!1336609 (= res!887123 (and (= (size!44359 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44358 _keys!1590) (size!44359 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336610 () Bool)

(declare-fun res!887124 () Bool)

(assert (=> b!1336610 (=> (not res!887124) (not e!761157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90693 (_ BitVec 32)) Bool)

(assert (=> b!1336610 (= res!887124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336611 () Bool)

(declare-fun res!887119 () Bool)

(assert (=> b!1336611 (=> (not res!887119) (not e!761157))))

(assert (=> b!1336611 (= res!887119 (not (= (select (arr!43807 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1336612 () Bool)

(declare-fun res!887122 () Bool)

(assert (=> b!1336612 (=> (not res!887122) (not e!761157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336612 (= res!887122 (validKeyInArray!0 (select (arr!43807 _keys!1590) from!1980)))))

(declare-fun b!1336613 () Bool)

(declare-fun res!887117 () Bool)

(assert (=> b!1336613 (=> (not res!887117) (not e!761157))))

(assert (=> b!1336613 (= res!887117 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44358 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336614 () Bool)

(declare-fun e!761155 () Bool)

(declare-fun e!761158 () Bool)

(declare-fun mapRes!57074 () Bool)

(assert (=> b!1336614 (= e!761155 (and e!761158 mapRes!57074))))

(declare-fun condMapEmpty!57074 () Bool)

(declare-fun mapDefault!57074 () ValueCell!17567)

