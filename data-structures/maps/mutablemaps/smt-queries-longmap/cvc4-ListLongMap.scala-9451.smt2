; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112354 () Bool)

(assert start!112354)

(declare-fun b_free!30713 () Bool)

(declare-fun b_next!30713 () Bool)

(assert (=> start!112354 (= b_free!30713 (not b_next!30713))))

(declare-fun tp!107777 () Bool)

(declare-fun b_and!49491 () Bool)

(assert (=> start!112354 (= tp!107777 b_and!49491)))

(declare-fun b!1331008 () Bool)

(declare-fun res!883310 () Bool)

(declare-fun e!758521 () Bool)

(assert (=> b!1331008 (=> (not res!883310) (not e!758521))))

(declare-datatypes ((V!53933 0))(
  ( (V!53934 (val!18386 Int)) )
))
(declare-datatypes ((ValueCell!17413 0))(
  ( (ValueCellFull!17413 (v!21021 V!53933)) (EmptyCell!17413) )
))
(declare-datatypes ((array!90097 0))(
  ( (array!90098 (arr!43510 (Array (_ BitVec 32) ValueCell!17413)) (size!44061 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90097)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90099 0))(
  ( (array!90100 (arr!43511 (Array (_ BitVec 32) (_ BitVec 64))) (size!44062 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90099)

(assert (=> b!1331008 (= res!883310 (and (= (size!44061 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44062 _keys!1590) (size!44061 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331009 () Bool)

(assert (=> b!1331009 (= e!758521 (not true))))

(declare-datatypes ((tuple2!23830 0))(
  ( (tuple2!23831 (_1!11925 (_ BitVec 64)) (_2!11925 V!53933)) )
))
(declare-datatypes ((List!31016 0))(
  ( (Nil!31013) (Cons!31012 (h!32221 tuple2!23830) (t!45149 List!31016)) )
))
(declare-datatypes ((ListLongMap!21499 0))(
  ( (ListLongMap!21500 (toList!10765 List!31016)) )
))
(declare-fun lt!591340 () ListLongMap!21499)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8865 (ListLongMap!21499 (_ BitVec 64)) Bool)

(assert (=> b!1331009 (contains!8865 lt!591340 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!591338 () V!53933)

(declare-datatypes ((Unit!43739 0))(
  ( (Unit!43740) )
))
(declare-fun lt!591341 () Unit!43739)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!261 ((_ BitVec 64) (_ BitVec 64) V!53933 ListLongMap!21499) Unit!43739)

(assert (=> b!1331009 (= lt!591341 (lemmaInListMapAfterAddingDiffThenInBefore!261 k!1153 (select (arr!43511 _keys!1590) from!1980) lt!591338 lt!591340))))

(declare-fun lt!591337 () ListLongMap!21499)

(assert (=> b!1331009 (contains!8865 lt!591337 k!1153)))

(declare-fun minValue!1262 () V!53933)

(declare-fun lt!591339 () Unit!43739)

(assert (=> b!1331009 (= lt!591339 (lemmaInListMapAfterAddingDiffThenInBefore!261 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591337))))

(declare-fun +!4656 (ListLongMap!21499 tuple2!23830) ListLongMap!21499)

(assert (=> b!1331009 (= lt!591337 (+!4656 lt!591340 (tuple2!23831 (select (arr!43511 _keys!1590) from!1980) lt!591338)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21978 (ValueCell!17413 V!53933) V!53933)

(declare-fun dynLambda!3693 (Int (_ BitVec 64)) V!53933)

(assert (=> b!1331009 (= lt!591338 (get!21978 (select (arr!43510 _values!1320) from!1980) (dynLambda!3693 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!53933)

(declare-fun getCurrentListMapNoExtraKeys!6374 (array!90099 array!90097 (_ BitVec 32) (_ BitVec 32) V!53933 V!53933 (_ BitVec 32) Int) ListLongMap!21499)

(assert (=> b!1331009 (= lt!591340 (getCurrentListMapNoExtraKeys!6374 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun res!883307 () Bool)

(assert (=> start!112354 (=> (not res!883307) (not e!758521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112354 (= res!883307 (validMask!0 mask!1998))))

(assert (=> start!112354 e!758521))

(declare-fun e!758523 () Bool)

(declare-fun array_inv!32771 (array!90097) Bool)

(assert (=> start!112354 (and (array_inv!32771 _values!1320) e!758523)))

(assert (=> start!112354 true))

(declare-fun array_inv!32772 (array!90099) Bool)

(assert (=> start!112354 (array_inv!32772 _keys!1590)))

(assert (=> start!112354 tp!107777))

(declare-fun tp_is_empty!36623 () Bool)

(assert (=> start!112354 tp_is_empty!36623))

(declare-fun b!1331010 () Bool)

(declare-fun res!883309 () Bool)

(assert (=> b!1331010 (=> (not res!883309) (not e!758521))))

(assert (=> b!1331010 (= res!883309 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331011 () Bool)

(declare-fun res!883305 () Bool)

(assert (=> b!1331011 (=> (not res!883305) (not e!758521))))

(declare-datatypes ((List!31017 0))(
  ( (Nil!31014) (Cons!31013 (h!32222 (_ BitVec 64)) (t!45150 List!31017)) )
))
(declare-fun arrayNoDuplicates!0 (array!90099 (_ BitVec 32) List!31017) Bool)

(assert (=> b!1331011 (= res!883305 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31014))))

(declare-fun b!1331012 () Bool)

(declare-fun res!883308 () Bool)

(assert (=> b!1331012 (=> (not res!883308) (not e!758521))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331012 (= res!883308 (validKeyInArray!0 (select (arr!43511 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!56608 () Bool)

(declare-fun mapRes!56608 () Bool)

(declare-fun tp!107776 () Bool)

(declare-fun e!758524 () Bool)

(assert (=> mapNonEmpty!56608 (= mapRes!56608 (and tp!107776 e!758524))))

(declare-fun mapKey!56608 () (_ BitVec 32))

(declare-fun mapValue!56608 () ValueCell!17413)

(declare-fun mapRest!56608 () (Array (_ BitVec 32) ValueCell!17413))

(assert (=> mapNonEmpty!56608 (= (arr!43510 _values!1320) (store mapRest!56608 mapKey!56608 mapValue!56608))))

(declare-fun mapIsEmpty!56608 () Bool)

(assert (=> mapIsEmpty!56608 mapRes!56608))

(declare-fun b!1331013 () Bool)

(assert (=> b!1331013 (= e!758524 tp_is_empty!36623)))

(declare-fun b!1331014 () Bool)

(declare-fun e!758522 () Bool)

(assert (=> b!1331014 (= e!758522 tp_is_empty!36623)))

(declare-fun b!1331015 () Bool)

(declare-fun res!883304 () Bool)

(assert (=> b!1331015 (=> (not res!883304) (not e!758521))))

(assert (=> b!1331015 (= res!883304 (not (= (select (arr!43511 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1331016 () Bool)

(declare-fun res!883302 () Bool)

(assert (=> b!1331016 (=> (not res!883302) (not e!758521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90099 (_ BitVec 32)) Bool)

(assert (=> b!1331016 (= res!883302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331017 () Bool)

(assert (=> b!1331017 (= e!758523 (and e!758522 mapRes!56608))))

(declare-fun condMapEmpty!56608 () Bool)

(declare-fun mapDefault!56608 () ValueCell!17413)

