; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112516 () Bool)

(assert start!112516)

(declare-fun b_free!30875 () Bool)

(declare-fun b_next!30875 () Bool)

(assert (=> start!112516 (= b_free!30875 (not b_next!30875))))

(declare-fun tp!108262 () Bool)

(declare-fun b_and!49761 () Bool)

(assert (=> start!112516 (= tp!108262 b_and!49761)))

(declare-fun b!1333805 () Bool)

(declare-fun res!885263 () Bool)

(declare-fun e!759772 () Bool)

(assert (=> b!1333805 (=> (not res!885263) (not e!759772))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333805 (= res!885263 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333806 () Bool)

(declare-fun e!759771 () Bool)

(assert (=> b!1333806 (= e!759772 e!759771)))

(declare-fun res!885265 () Bool)

(assert (=> b!1333806 (=> (not res!885265) (not e!759771))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((V!54149 0))(
  ( (V!54150 (val!18467 Int)) )
))
(declare-datatypes ((tuple2!23964 0))(
  ( (tuple2!23965 (_1!11992 (_ BitVec 64)) (_2!11992 V!54149)) )
))
(declare-datatypes ((List!31139 0))(
  ( (Nil!31136) (Cons!31135 (h!32344 tuple2!23964) (t!45380 List!31139)) )
))
(declare-datatypes ((ListLongMap!21633 0))(
  ( (ListLongMap!21634 (toList!10832 List!31139)) )
))
(declare-fun lt!592159 () ListLongMap!21633)

(declare-fun lt!592160 () V!54149)

(declare-datatypes ((array!90417 0))(
  ( (array!90418 (arr!43670 (Array (_ BitVec 32) (_ BitVec 64))) (size!44221 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90417)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8932 (ListLongMap!21633 (_ BitVec 64)) Bool)

(declare-fun +!4694 (ListLongMap!21633 tuple2!23964) ListLongMap!21633)

(assert (=> b!1333806 (= res!885265 (contains!8932 (+!4694 lt!592159 (tuple2!23965 (select (arr!43670 _keys!1590) from!1980) lt!592160)) k!1153))))

(declare-datatypes ((ValueCell!17494 0))(
  ( (ValueCellFull!17494 (v!21102 V!54149)) (EmptyCell!17494) )
))
(declare-datatypes ((array!90419 0))(
  ( (array!90420 (arr!43671 (Array (_ BitVec 32) ValueCell!17494)) (size!44222 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90419)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54149)

(declare-fun zeroValue!1262 () V!54149)

(declare-fun getCurrentListMapNoExtraKeys!6412 (array!90417 array!90419 (_ BitVec 32) (_ BitVec 32) V!54149 V!54149 (_ BitVec 32) Int) ListLongMap!21633)

(assert (=> b!1333806 (= lt!592159 (getCurrentListMapNoExtraKeys!6412 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22070 (ValueCell!17494 V!54149) V!54149)

(declare-fun dynLambda!3731 (Int (_ BitVec 64)) V!54149)

(assert (=> b!1333806 (= lt!592160 (get!22070 (select (arr!43671 _values!1320) from!1980) (dynLambda!3731 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!885264 () Bool)

(assert (=> start!112516 (=> (not res!885264) (not e!759772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112516 (= res!885264 (validMask!0 mask!1998))))

(assert (=> start!112516 e!759772))

(declare-fun e!759770 () Bool)

(declare-fun array_inv!32879 (array!90419) Bool)

(assert (=> start!112516 (and (array_inv!32879 _values!1320) e!759770)))

(assert (=> start!112516 true))

(declare-fun array_inv!32880 (array!90417) Bool)

(assert (=> start!112516 (array_inv!32880 _keys!1590)))

(assert (=> start!112516 tp!108262))

(declare-fun tp_is_empty!36785 () Bool)

(assert (=> start!112516 tp_is_empty!36785))

(declare-fun b!1333807 () Bool)

(declare-fun e!759774 () Bool)

(declare-fun mapRes!56851 () Bool)

(assert (=> b!1333807 (= e!759770 (and e!759774 mapRes!56851))))

(declare-fun condMapEmpty!56851 () Bool)

(declare-fun mapDefault!56851 () ValueCell!17494)

