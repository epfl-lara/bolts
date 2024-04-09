; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112344 () Bool)

(assert start!112344)

(declare-fun b_free!30703 () Bool)

(declare-fun b_next!30703 () Bool)

(assert (=> start!112344 (= b_free!30703 (not b_next!30703))))

(declare-fun tp!107746 () Bool)

(declare-fun b_and!49471 () Bool)

(assert (=> start!112344 (= tp!107746 b_and!49471)))

(declare-fun b!1330818 () Bool)

(declare-fun res!883170 () Bool)

(declare-fun e!758449 () Bool)

(assert (=> b!1330818 (=> (not res!883170) (not e!758449))))

(declare-datatypes ((array!90079 0))(
  ( (array!90080 (arr!43501 (Array (_ BitVec 32) (_ BitVec 64))) (size!44052 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90079)

(declare-datatypes ((List!31009 0))(
  ( (Nil!31006) (Cons!31005 (h!32214 (_ BitVec 64)) (t!45132 List!31009)) )
))
(declare-fun arrayNoDuplicates!0 (array!90079 (_ BitVec 32) List!31009) Bool)

(assert (=> b!1330818 (= res!883170 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31006))))

(declare-fun b!1330819 () Bool)

(assert (=> b!1330819 (= e!758449 (not true))))

(declare-datatypes ((V!53921 0))(
  ( (V!53922 (val!18381 Int)) )
))
(declare-datatypes ((tuple2!23822 0))(
  ( (tuple2!23823 (_1!11921 (_ BitVec 64)) (_2!11921 V!53921)) )
))
(declare-datatypes ((List!31010 0))(
  ( (Nil!31007) (Cons!31006 (h!32215 tuple2!23822) (t!45133 List!31010)) )
))
(declare-datatypes ((ListLongMap!21491 0))(
  ( (ListLongMap!21492 (toList!10761 List!31010)) )
))
(declare-fun lt!591265 () ListLongMap!21491)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8861 (ListLongMap!21491 (_ BitVec 64)) Bool)

(assert (=> b!1330819 (contains!8861 lt!591265 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!591262 () V!53921)

(declare-datatypes ((Unit!43731 0))(
  ( (Unit!43732) )
))
(declare-fun lt!591263 () Unit!43731)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!257 ((_ BitVec 64) (_ BitVec 64) V!53921 ListLongMap!21491) Unit!43731)

(assert (=> b!1330819 (= lt!591263 (lemmaInListMapAfterAddingDiffThenInBefore!257 k!1153 (select (arr!43501 _keys!1590) from!1980) lt!591262 lt!591265))))

(declare-fun lt!591264 () ListLongMap!21491)

(assert (=> b!1330819 (contains!8861 lt!591264 k!1153)))

(declare-fun lt!591266 () Unit!43731)

(declare-fun minValue!1262 () V!53921)

(assert (=> b!1330819 (= lt!591266 (lemmaInListMapAfterAddingDiffThenInBefore!257 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591264))))

(declare-fun +!4652 (ListLongMap!21491 tuple2!23822) ListLongMap!21491)

(assert (=> b!1330819 (= lt!591264 (+!4652 lt!591265 (tuple2!23823 (select (arr!43501 _keys!1590) from!1980) lt!591262)))))

(declare-datatypes ((ValueCell!17408 0))(
  ( (ValueCellFull!17408 (v!21016 V!53921)) (EmptyCell!17408) )
))
(declare-datatypes ((array!90081 0))(
  ( (array!90082 (arr!43502 (Array (_ BitVec 32) ValueCell!17408)) (size!44053 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90081)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!21972 (ValueCell!17408 V!53921) V!53921)

(declare-fun dynLambda!3689 (Int (_ BitVec 64)) V!53921)

(assert (=> b!1330819 (= lt!591262 (get!21972 (select (arr!43502 _values!1320) from!1980) (dynLambda!3689 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53921)

(declare-fun getCurrentListMapNoExtraKeys!6370 (array!90079 array!90081 (_ BitVec 32) (_ BitVec 32) V!53921 V!53921 (_ BitVec 32) Int) ListLongMap!21491)

(assert (=> b!1330819 (= lt!591265 (getCurrentListMapNoExtraKeys!6370 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1330820 () Bool)

(declare-fun res!883173 () Bool)

(assert (=> b!1330820 (=> (not res!883173) (not e!758449))))

(assert (=> b!1330820 (= res!883173 (and (= (size!44053 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44052 _keys!1590) (size!44053 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330821 () Bool)

(declare-fun res!883169 () Bool)

(assert (=> b!1330821 (=> (not res!883169) (not e!758449))))

(assert (=> b!1330821 (= res!883169 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44052 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330822 () Bool)

(declare-fun e!758447 () Bool)

(declare-fun tp_is_empty!36613 () Bool)

(assert (=> b!1330822 (= e!758447 tp_is_empty!36613)))

(declare-fun mapNonEmpty!56593 () Bool)

(declare-fun mapRes!56593 () Bool)

(declare-fun tp!107747 () Bool)

(assert (=> mapNonEmpty!56593 (= mapRes!56593 (and tp!107747 e!758447))))

(declare-fun mapRest!56593 () (Array (_ BitVec 32) ValueCell!17408))

(declare-fun mapValue!56593 () ValueCell!17408)

(declare-fun mapKey!56593 () (_ BitVec 32))

(assert (=> mapNonEmpty!56593 (= (arr!43502 _values!1320) (store mapRest!56593 mapKey!56593 mapValue!56593))))

(declare-fun b!1330823 () Bool)

(declare-fun e!758446 () Bool)

(declare-fun e!758448 () Bool)

(assert (=> b!1330823 (= e!758446 (and e!758448 mapRes!56593))))

(declare-fun condMapEmpty!56593 () Bool)

(declare-fun mapDefault!56593 () ValueCell!17408)

