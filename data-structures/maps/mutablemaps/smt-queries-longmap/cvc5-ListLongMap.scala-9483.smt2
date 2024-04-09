; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112542 () Bool)

(assert start!112542)

(declare-fun b_free!30901 () Bool)

(declare-fun b_next!30901 () Bool)

(assert (=> start!112542 (= b_free!30901 (not b_next!30901))))

(declare-fun tp!108340 () Bool)

(declare-fun b_and!49813 () Bool)

(assert (=> start!112542 (= tp!108340 b_and!49813)))

(declare-fun b!1334377 () Bool)

(declare-fun res!885698 () Bool)

(declare-fun e!760007 () Bool)

(assert (=> b!1334377 (=> (not res!885698) (not e!760007))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334377 (= res!885698 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1334378 () Bool)

(declare-fun e!760005 () Bool)

(assert (=> b!1334378 (= e!760007 e!760005)))

(declare-fun res!885694 () Bool)

(assert (=> b!1334378 (=> (not res!885694) (not e!760005))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90467 0))(
  ( (array!90468 (arr!43695 (Array (_ BitVec 32) (_ BitVec 64))) (size!44246 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90467)

(declare-fun k!1153 () (_ BitVec 64))

(declare-datatypes ((V!54185 0))(
  ( (V!54186 (val!18480 Int)) )
))
(declare-datatypes ((tuple2!23986 0))(
  ( (tuple2!23987 (_1!12003 (_ BitVec 64)) (_2!12003 V!54185)) )
))
(declare-datatypes ((List!31157 0))(
  ( (Nil!31154) (Cons!31153 (h!32362 tuple2!23986) (t!45424 List!31157)) )
))
(declare-datatypes ((ListLongMap!21655 0))(
  ( (ListLongMap!21656 (toList!10843 List!31157)) )
))
(declare-fun lt!592275 () ListLongMap!21655)

(declare-fun lt!592277 () V!54185)

(declare-fun contains!8943 (ListLongMap!21655 (_ BitVec 64)) Bool)

(declare-fun +!4701 (ListLongMap!21655 tuple2!23986) ListLongMap!21655)

(assert (=> b!1334378 (= res!885694 (contains!8943 (+!4701 lt!592275 (tuple2!23987 (select (arr!43695 _keys!1590) from!1980) lt!592277)) k!1153))))

(declare-datatypes ((ValueCell!17507 0))(
  ( (ValueCellFull!17507 (v!21115 V!54185)) (EmptyCell!17507) )
))
(declare-datatypes ((array!90469 0))(
  ( (array!90470 (arr!43696 (Array (_ BitVec 32) ValueCell!17507)) (size!44247 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90469)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54185)

(declare-fun zeroValue!1262 () V!54185)

(declare-fun getCurrentListMapNoExtraKeys!6419 (array!90467 array!90469 (_ BitVec 32) (_ BitVec 32) V!54185 V!54185 (_ BitVec 32) Int) ListLongMap!21655)

(assert (=> b!1334378 (= lt!592275 (getCurrentListMapNoExtraKeys!6419 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22087 (ValueCell!17507 V!54185) V!54185)

(declare-fun dynLambda!3738 (Int (_ BitVec 64)) V!54185)

(assert (=> b!1334378 (= lt!592277 (get!22087 (select (arr!43696 _values!1320) from!1980) (dynLambda!3738 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1334379 () Bool)

(declare-fun res!885693 () Bool)

(assert (=> b!1334379 (=> (not res!885693) (not e!760007))))

(assert (=> b!1334379 (= res!885693 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44246 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334380 () Bool)

(declare-fun e!760008 () Bool)

(declare-fun e!760009 () Bool)

(declare-fun mapRes!56890 () Bool)

(assert (=> b!1334380 (= e!760008 (and e!760009 mapRes!56890))))

(declare-fun condMapEmpty!56890 () Bool)

(declare-fun mapDefault!56890 () ValueCell!17507)

