; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112332 () Bool)

(assert start!112332)

(declare-fun b_free!30691 () Bool)

(declare-fun b_next!30691 () Bool)

(assert (=> start!112332 (= b_free!30691 (not b_next!30691))))

(declare-fun tp!107710 () Bool)

(declare-fun b_and!49447 () Bool)

(assert (=> start!112332 (= tp!107710 b_and!49447)))

(declare-fun mapIsEmpty!56575 () Bool)

(declare-fun mapRes!56575 () Bool)

(assert (=> mapIsEmpty!56575 mapRes!56575))

(declare-fun b!1330590 () Bool)

(declare-fun res!883012 () Bool)

(declare-fun e!758359 () Bool)

(assert (=> b!1330590 (=> (not res!883012) (not e!758359))))

(declare-datatypes ((array!90055 0))(
  ( (array!90056 (arr!43489 (Array (_ BitVec 32) (_ BitVec 64))) (size!44040 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90055)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330590 (= res!883012 (validKeyInArray!0 (select (arr!43489 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!56575 () Bool)

(declare-fun tp!107711 () Bool)

(declare-fun e!758358 () Bool)

(assert (=> mapNonEmpty!56575 (= mapRes!56575 (and tp!107711 e!758358))))

(declare-datatypes ((V!53905 0))(
  ( (V!53906 (val!18375 Int)) )
))
(declare-datatypes ((ValueCell!17402 0))(
  ( (ValueCellFull!17402 (v!21010 V!53905)) (EmptyCell!17402) )
))
(declare-datatypes ((array!90057 0))(
  ( (array!90058 (arr!43490 (Array (_ BitVec 32) ValueCell!17402)) (size!44041 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90057)

(declare-fun mapKey!56575 () (_ BitVec 32))

(declare-fun mapRest!56575 () (Array (_ BitVec 32) ValueCell!17402))

(declare-fun mapValue!56575 () ValueCell!17402)

(assert (=> mapNonEmpty!56575 (= (arr!43490 _values!1320) (store mapRest!56575 mapKey!56575 mapValue!56575))))

(declare-fun b!1330592 () Bool)

(declare-fun e!758355 () Bool)

(declare-fun tp_is_empty!36601 () Bool)

(assert (=> b!1330592 (= e!758355 tp_is_empty!36601)))

(declare-fun b!1330593 () Bool)

(declare-fun res!883010 () Bool)

(assert (=> b!1330593 (=> (not res!883010) (not e!758359))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1330593 (= res!883010 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44040 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330594 () Bool)

(declare-fun res!883009 () Bool)

(assert (=> b!1330594 (=> (not res!883009) (not e!758359))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90055 (_ BitVec 32)) Bool)

(assert (=> b!1330594 (= res!883009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330595 () Bool)

(assert (=> b!1330595 (= e!758359 (not true))))

(declare-datatypes ((tuple2!23812 0))(
  ( (tuple2!23813 (_1!11916 (_ BitVec 64)) (_2!11916 V!53905)) )
))
(declare-datatypes ((List!31000 0))(
  ( (Nil!30997) (Cons!30996 (h!32205 tuple2!23812) (t!45111 List!31000)) )
))
(declare-datatypes ((ListLongMap!21481 0))(
  ( (ListLongMap!21482 (toList!10756 List!31000)) )
))
(declare-fun lt!591172 () ListLongMap!21481)

(declare-fun contains!8856 (ListLongMap!21481 (_ BitVec 64)) Bool)

(assert (=> b!1330595 (contains!8856 lt!591172 k!1153)))

(declare-fun lt!591173 () V!53905)

(declare-datatypes ((Unit!43723 0))(
  ( (Unit!43724) )
))
(declare-fun lt!591175 () Unit!43723)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!253 ((_ BitVec 64) (_ BitVec 64) V!53905 ListLongMap!21481) Unit!43723)

(assert (=> b!1330595 (= lt!591175 (lemmaInListMapAfterAddingDiffThenInBefore!253 k!1153 (select (arr!43489 _keys!1590) from!1980) lt!591173 lt!591172))))

(declare-fun lt!591174 () ListLongMap!21481)

(assert (=> b!1330595 (contains!8856 lt!591174 k!1153)))

(declare-fun lt!591176 () Unit!43723)

(declare-fun minValue!1262 () V!53905)

(assert (=> b!1330595 (= lt!591176 (lemmaInListMapAfterAddingDiffThenInBefore!253 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591174))))

(declare-fun +!4648 (ListLongMap!21481 tuple2!23812) ListLongMap!21481)

(assert (=> b!1330595 (= lt!591174 (+!4648 lt!591172 (tuple2!23813 (select (arr!43489 _keys!1590) from!1980) lt!591173)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21964 (ValueCell!17402 V!53905) V!53905)

(declare-fun dynLambda!3685 (Int (_ BitVec 64)) V!53905)

(assert (=> b!1330595 (= lt!591173 (get!21964 (select (arr!43490 _values!1320) from!1980) (dynLambda!3685 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!53905)

(declare-fun getCurrentListMapNoExtraKeys!6366 (array!90055 array!90057 (_ BitVec 32) (_ BitVec 32) V!53905 V!53905 (_ BitVec 32) Int) ListLongMap!21481)

(assert (=> b!1330595 (= lt!591172 (getCurrentListMapNoExtraKeys!6366 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330596 () Bool)

(assert (=> b!1330596 (= e!758358 tp_is_empty!36601)))

(declare-fun b!1330597 () Bool)

(declare-fun res!883011 () Bool)

(assert (=> b!1330597 (=> (not res!883011) (not e!758359))))

(assert (=> b!1330597 (= res!883011 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1330598 () Bool)

(declare-fun e!758356 () Bool)

(assert (=> b!1330598 (= e!758356 (and e!758355 mapRes!56575))))

(declare-fun condMapEmpty!56575 () Bool)

(declare-fun mapDefault!56575 () ValueCell!17402)

