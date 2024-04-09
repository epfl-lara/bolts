; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112294 () Bool)

(assert start!112294)

(declare-fun b_free!30653 () Bool)

(declare-fun b_next!30653 () Bool)

(assert (=> start!112294 (= b_free!30653 (not b_next!30653))))

(declare-fun tp!107596 () Bool)

(declare-fun b_and!49371 () Bool)

(assert (=> start!112294 (= tp!107596 b_and!49371)))

(declare-fun b!1329868 () Bool)

(declare-fun e!758074 () Bool)

(declare-fun tp_is_empty!36563 () Bool)

(assert (=> b!1329868 (= e!758074 tp_is_empty!36563)))

(declare-fun b!1329869 () Bool)

(declare-fun res!882492 () Bool)

(declare-fun e!758071 () Bool)

(assert (=> b!1329869 (=> (not res!882492) (not e!758071))))

(declare-datatypes ((array!89981 0))(
  ( (array!89982 (arr!43452 (Array (_ BitVec 32) (_ BitVec 64))) (size!44003 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89981)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329869 (= res!882492 (validKeyInArray!0 (select (arr!43452 _keys!1590) from!1980)))))

(declare-fun b!1329871 () Bool)

(assert (=> b!1329871 (= e!758071 (not true))))

(declare-datatypes ((V!53853 0))(
  ( (V!53854 (val!18356 Int)) )
))
(declare-datatypes ((tuple2!23780 0))(
  ( (tuple2!23781 (_1!11900 (_ BitVec 64)) (_2!11900 V!53853)) )
))
(declare-datatypes ((List!30971 0))(
  ( (Nil!30968) (Cons!30967 (h!32176 tuple2!23780) (t!45044 List!30971)) )
))
(declare-datatypes ((ListLongMap!21449 0))(
  ( (ListLongMap!21450 (toList!10740 List!30971)) )
))
(declare-fun lt!590971 () ListLongMap!21449)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8840 (ListLongMap!21449 (_ BitVec 64)) Bool)

(assert (=> b!1329871 (contains!8840 lt!590971 k!1153)))

(declare-datatypes ((Unit!43697 0))(
  ( (Unit!43698) )
))
(declare-fun lt!590972 () Unit!43697)

(declare-fun minValue!1262 () V!53853)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!240 ((_ BitVec 64) (_ BitVec 64) V!53853 ListLongMap!21449) Unit!43697)

(assert (=> b!1329871 (= lt!590972 (lemmaInListMapAfterAddingDiffThenInBefore!240 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590971))))

(declare-datatypes ((ValueCell!17383 0))(
  ( (ValueCellFull!17383 (v!20991 V!53853)) (EmptyCell!17383) )
))
(declare-datatypes ((array!89983 0))(
  ( (array!89984 (arr!43453 (Array (_ BitVec 32) ValueCell!17383)) (size!44004 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89983)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!53853)

(declare-fun +!4635 (ListLongMap!21449 tuple2!23780) ListLongMap!21449)

(declare-fun getCurrentListMapNoExtraKeys!6353 (array!89981 array!89983 (_ BitVec 32) (_ BitVec 32) V!53853 V!53853 (_ BitVec 32) Int) ListLongMap!21449)

(declare-fun get!21937 (ValueCell!17383 V!53853) V!53853)

(declare-fun dynLambda!3672 (Int (_ BitVec 64)) V!53853)

(assert (=> b!1329871 (= lt!590971 (+!4635 (getCurrentListMapNoExtraKeys!6353 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23781 (select (arr!43452 _keys!1590) from!1980) (get!21937 (select (arr!43453 _values!1320) from!1980) (dynLambda!3672 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329872 () Bool)

(declare-fun e!758070 () Bool)

(declare-fun e!758072 () Bool)

(declare-fun mapRes!56518 () Bool)

(assert (=> b!1329872 (= e!758070 (and e!758072 mapRes!56518))))

(declare-fun condMapEmpty!56518 () Bool)

(declare-fun mapDefault!56518 () ValueCell!17383)

