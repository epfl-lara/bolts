; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112840 () Bool)

(assert start!112840)

(declare-fun b_free!31057 () Bool)

(declare-fun b_next!31057 () Bool)

(assert (=> start!112840 (= b_free!31057 (not b_next!31057))))

(declare-fun tp!108819 () Bool)

(declare-fun b_and!50071 () Bool)

(assert (=> start!112840 (= tp!108819 b_and!50071)))

(declare-fun mapNonEmpty!57135 () Bool)

(declare-fun mapRes!57135 () Bool)

(declare-fun tp!108820 () Bool)

(declare-fun e!761778 () Bool)

(assert (=> mapNonEmpty!57135 (= mapRes!57135 (and tp!108820 e!761778))))

(declare-datatypes ((V!54393 0))(
  ( (V!54394 (val!18558 Int)) )
))
(declare-datatypes ((ValueCell!17585 0))(
  ( (ValueCellFull!17585 (v!21200 V!54393)) (EmptyCell!17585) )
))
(declare-fun mapValue!57135 () ValueCell!17585)

(declare-fun mapRest!57135 () (Array (_ BitVec 32) ValueCell!17585))

(declare-fun mapKey!57135 () (_ BitVec 32))

(declare-datatypes ((array!90767 0))(
  ( (array!90768 (arr!43842 (Array (_ BitVec 32) ValueCell!17585)) (size!44393 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90767)

(assert (=> mapNonEmpty!57135 (= (arr!43842 _values!1320) (store mapRest!57135 mapKey!57135 mapValue!57135))))

(declare-fun b!1337796 () Bool)

(declare-fun e!761779 () Bool)

(declare-fun e!761777 () Bool)

(assert (=> b!1337796 (= e!761779 e!761777)))

(declare-fun res!887810 () Bool)

(assert (=> b!1337796 (=> (not res!887810) (not e!761777))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90769 0))(
  ( (array!90770 (arr!43843 (Array (_ BitVec 32) (_ BitVec 64))) (size!44394 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90769)

(declare-fun k!1153 () (_ BitVec 64))

(declare-datatypes ((tuple2!24086 0))(
  ( (tuple2!24087 (_1!12053 (_ BitVec 64)) (_2!12053 V!54393)) )
))
(declare-datatypes ((List!31253 0))(
  ( (Nil!31250) (Cons!31249 (h!32458 tuple2!24086) (t!45586 List!31253)) )
))
(declare-datatypes ((ListLongMap!21755 0))(
  ( (ListLongMap!21756 (toList!10893 List!31253)) )
))
(declare-fun lt!593276 () ListLongMap!21755)

(declare-fun lt!593277 () V!54393)

(declare-fun contains!8998 (ListLongMap!21755 (_ BitVec 64)) Bool)

(declare-fun +!4722 (ListLongMap!21755 tuple2!24086) ListLongMap!21755)

(assert (=> b!1337796 (= res!887810 (contains!8998 (+!4722 lt!593276 (tuple2!24087 (select (arr!43843 _keys!1590) from!1980) lt!593277)) k!1153))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54393)

(declare-fun zeroValue!1262 () V!54393)

(declare-fun getCurrentListMapNoExtraKeys!6445 (array!90769 array!90767 (_ BitVec 32) (_ BitVec 32) V!54393 V!54393 (_ BitVec 32) Int) ListLongMap!21755)

(assert (=> b!1337796 (= lt!593276 (getCurrentListMapNoExtraKeys!6445 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22168 (ValueCell!17585 V!54393) V!54393)

(declare-fun dynLambda!3759 (Int (_ BitVec 64)) V!54393)

(assert (=> b!1337796 (= lt!593277 (get!22168 (select (arr!43842 _values!1320) from!1980) (dynLambda!3759 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1337798 () Bool)

(declare-fun e!761776 () Bool)

(declare-fun e!761775 () Bool)

(assert (=> b!1337798 (= e!761776 (and e!761775 mapRes!57135))))

(declare-fun condMapEmpty!57135 () Bool)

(declare-fun mapDefault!57135 () ValueCell!17585)

