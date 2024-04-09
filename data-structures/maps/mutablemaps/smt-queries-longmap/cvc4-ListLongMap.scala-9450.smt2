; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112348 () Bool)

(assert start!112348)

(declare-fun b_free!30707 () Bool)

(declare-fun b_next!30707 () Bool)

(assert (=> start!112348 (= b_free!30707 (not b_next!30707))))

(declare-fun tp!107759 () Bool)

(declare-fun b_and!49479 () Bool)

(assert (=> start!112348 (= tp!107759 b_and!49479)))

(declare-fun b!1330894 () Bool)

(declare-fun e!758477 () Bool)

(assert (=> b!1330894 (= e!758477 (not true))))

(declare-datatypes ((V!53925 0))(
  ( (V!53926 (val!18383 Int)) )
))
(declare-datatypes ((tuple2!23826 0))(
  ( (tuple2!23827 (_1!11923 (_ BitVec 64)) (_2!11923 V!53925)) )
))
(declare-datatypes ((List!31013 0))(
  ( (Nil!31010) (Cons!31009 (h!32218 tuple2!23826) (t!45140 List!31013)) )
))
(declare-datatypes ((ListLongMap!21495 0))(
  ( (ListLongMap!21496 (toList!10763 List!31013)) )
))
(declare-fun lt!591292 () ListLongMap!21495)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8863 (ListLongMap!21495 (_ BitVec 64)) Bool)

(assert (=> b!1330894 (contains!8863 lt!591292 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90087 0))(
  ( (array!90088 (arr!43505 (Array (_ BitVec 32) (_ BitVec 64))) (size!44056 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90087)

(declare-datatypes ((Unit!43735 0))(
  ( (Unit!43736) )
))
(declare-fun lt!591295 () Unit!43735)

(declare-fun lt!591296 () V!53925)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!259 ((_ BitVec 64) (_ BitVec 64) V!53925 ListLongMap!21495) Unit!43735)

(assert (=> b!1330894 (= lt!591295 (lemmaInListMapAfterAddingDiffThenInBefore!259 k!1153 (select (arr!43505 _keys!1590) from!1980) lt!591296 lt!591292))))

(declare-fun lt!591294 () ListLongMap!21495)

(assert (=> b!1330894 (contains!8863 lt!591294 k!1153)))

(declare-fun minValue!1262 () V!53925)

(declare-fun lt!591293 () Unit!43735)

(assert (=> b!1330894 (= lt!591293 (lemmaInListMapAfterAddingDiffThenInBefore!259 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591294))))

(declare-fun +!4654 (ListLongMap!21495 tuple2!23826) ListLongMap!21495)

(assert (=> b!1330894 (= lt!591294 (+!4654 lt!591292 (tuple2!23827 (select (arr!43505 _keys!1590) from!1980) lt!591296)))))

(declare-datatypes ((ValueCell!17410 0))(
  ( (ValueCellFull!17410 (v!21018 V!53925)) (EmptyCell!17410) )
))
(declare-datatypes ((array!90089 0))(
  ( (array!90090 (arr!43506 (Array (_ BitVec 32) ValueCell!17410)) (size!44057 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90089)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21974 (ValueCell!17410 V!53925) V!53925)

(declare-fun dynLambda!3691 (Int (_ BitVec 64)) V!53925)

(assert (=> b!1330894 (= lt!591296 (get!21974 (select (arr!43506 _values!1320) from!1980) (dynLambda!3691 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53925)

(declare-fun getCurrentListMapNoExtraKeys!6372 (array!90087 array!90089 (_ BitVec 32) (_ BitVec 32) V!53925 V!53925 (_ BitVec 32) Int) ListLongMap!21495)

(assert (=> b!1330894 (= lt!591292 (getCurrentListMapNoExtraKeys!6372 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun mapIsEmpty!56599 () Bool)

(declare-fun mapRes!56599 () Bool)

(assert (=> mapIsEmpty!56599 mapRes!56599))

(declare-fun b!1330895 () Bool)

(declare-fun res!883222 () Bool)

(assert (=> b!1330895 (=> (not res!883222) (not e!758477))))

(assert (=> b!1330895 (= res!883222 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44056 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56599 () Bool)

(declare-fun tp!107758 () Bool)

(declare-fun e!758479 () Bool)

(assert (=> mapNonEmpty!56599 (= mapRes!56599 (and tp!107758 e!758479))))

(declare-fun mapRest!56599 () (Array (_ BitVec 32) ValueCell!17410))

(declare-fun mapKey!56599 () (_ BitVec 32))

(declare-fun mapValue!56599 () ValueCell!17410)

(assert (=> mapNonEmpty!56599 (= (arr!43506 _values!1320) (store mapRest!56599 mapKey!56599 mapValue!56599))))

(declare-fun b!1330896 () Bool)

(declare-fun res!883221 () Bool)

(assert (=> b!1330896 (=> (not res!883221) (not e!758477))))

(declare-fun getCurrentListMap!5688 (array!90087 array!90089 (_ BitVec 32) (_ BitVec 32) V!53925 V!53925 (_ BitVec 32) Int) ListLongMap!21495)

(assert (=> b!1330896 (= res!883221 (contains!8863 (getCurrentListMap!5688 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1330897 () Bool)

(declare-fun res!883224 () Bool)

(assert (=> b!1330897 (=> (not res!883224) (not e!758477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330897 (= res!883224 (validKeyInArray!0 (select (arr!43505 _keys!1590) from!1980)))))

(declare-fun b!1330898 () Bool)

(declare-fun res!883225 () Bool)

(assert (=> b!1330898 (=> (not res!883225) (not e!758477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90087 (_ BitVec 32)) Bool)

(assert (=> b!1330898 (= res!883225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330899 () Bool)

(declare-fun e!758475 () Bool)

(declare-fun e!758476 () Bool)

(assert (=> b!1330899 (= e!758475 (and e!758476 mapRes!56599))))

(declare-fun condMapEmpty!56599 () Bool)

(declare-fun mapDefault!56599 () ValueCell!17410)

