; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132088 () Bool)

(assert start!132088)

(declare-fun b_free!31769 () Bool)

(declare-fun b_next!31769 () Bool)

(assert (=> start!132088 (= b_free!31769 (not b_next!31769))))

(declare-fun tp!111560 () Bool)

(declare-fun b_and!51189 () Bool)

(assert (=> start!132088 (= tp!111560 b_and!51189)))

(declare-fun b!1547770 () Bool)

(declare-fun e!861563 () Bool)

(declare-fun tp_is_empty!38045 () Bool)

(assert (=> b!1547770 (= e!861563 tp_is_empty!38045)))

(declare-fun mapNonEmpty!58771 () Bool)

(declare-fun mapRes!58771 () Bool)

(declare-fun tp!111559 () Bool)

(declare-fun e!861560 () Bool)

(assert (=> mapNonEmpty!58771 (= mapRes!58771 (and tp!111559 e!861560))))

(declare-datatypes ((V!59169 0))(
  ( (V!59170 (val!19100 Int)) )
))
(declare-datatypes ((ValueCell!18112 0))(
  ( (ValueCellFull!18112 (v!21898 V!59169)) (EmptyCell!18112) )
))
(declare-fun mapRest!58771 () (Array (_ BitVec 32) ValueCell!18112))

(declare-datatypes ((array!103255 0))(
  ( (array!103256 (arr!49825 (Array (_ BitVec 32) ValueCell!18112)) (size!50376 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103255)

(declare-fun mapValue!58771 () ValueCell!18112)

(declare-fun mapKey!58771 () (_ BitVec 32))

(assert (=> mapNonEmpty!58771 (= (arr!49825 _values!470) (store mapRest!58771 mapKey!58771 mapValue!58771))))

(declare-fun bm!69989 () Bool)

(declare-datatypes ((tuple2!24724 0))(
  ( (tuple2!24725 (_1!12372 (_ BitVec 64)) (_2!12372 V!59169)) )
))
(declare-datatypes ((List!36231 0))(
  ( (Nil!36228) (Cons!36227 (h!37673 tuple2!24724) (t!50932 List!36231)) )
))
(declare-datatypes ((ListLongMap!22345 0))(
  ( (ListLongMap!22346 (toList!11188 List!36231)) )
))
(declare-fun call!69993 () ListLongMap!22345)

(declare-fun call!69995 () ListLongMap!22345)

(assert (=> bm!69989 (= call!69993 call!69995)))

(declare-fun b!1547771 () Bool)

(declare-fun e!861557 () ListLongMap!22345)

(assert (=> b!1547771 (= e!861557 call!69993)))

(declare-fun b!1547772 () Bool)

(declare-fun e!861559 () ListLongMap!22345)

(declare-fun e!861561 () ListLongMap!22345)

(assert (=> b!1547772 (= e!861559 e!861561)))

(declare-fun c!142024 () Bool)

(declare-fun lt!666944 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1547772 (= c!142024 (and (not lt!666944) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1547773 () Bool)

(declare-fun e!861558 () Bool)

(assert (=> b!1547773 (= e!861558 (not true))))

(declare-datatypes ((array!103257 0))(
  ( (array!103258 (arr!49826 (Array (_ BitVec 32) (_ BitVec 64))) (size!50377 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103257)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!666941 () ListLongMap!22345)

(declare-fun minValue!436 () V!59169)

(declare-fun apply!1094 (ListLongMap!22345 (_ BitVec 64)) V!59169)

(declare-fun +!4911 (ListLongMap!22345 tuple2!24724) ListLongMap!22345)

(assert (=> b!1547773 (= (apply!1094 (+!4911 lt!666941 (tuple2!24725 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49826 _keys!618) from!762)) (apply!1094 lt!666941 (select (arr!49826 _keys!618) from!762)))))

(declare-datatypes ((Unit!51518 0))(
  ( (Unit!51519) )
))
(declare-fun lt!666942 () Unit!51518)

(declare-fun addApplyDifferent!597 (ListLongMap!22345 (_ BitVec 64) V!59169 (_ BitVec 64)) Unit!51518)

(assert (=> b!1547773 (= lt!666942 (addApplyDifferent!597 lt!666941 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49826 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59169)

(declare-fun contains!10078 (ListLongMap!22345 (_ BitVec 64)) Bool)

(assert (=> b!1547773 (contains!10078 (+!4911 lt!666941 (tuple2!24725 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49826 _keys!618) from!762))))

(declare-fun lt!666943 () Unit!51518)

(declare-fun addStillContains!1260 (ListLongMap!22345 (_ BitVec 64) V!59169 (_ BitVec 64)) Unit!51518)

(assert (=> b!1547773 (= lt!666943 (addStillContains!1260 lt!666941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49826 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6631 (array!103257 array!103255 (_ BitVec 32) (_ BitVec 32) V!59169 V!59169 (_ BitVec 32) Int) ListLongMap!22345)

(assert (=> b!1547773 (= lt!666941 (getCurrentListMapNoExtraKeys!6631 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547774 () Bool)

(declare-fun res!1060896 () Bool)

(declare-fun e!861565 () Bool)

(assert (=> b!1547774 (=> (not res!1060896) (not e!861565))))

(assert (=> b!1547774 (= res!1060896 (and (= (size!50376 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50377 _keys!618) (size!50376 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun call!69996 () ListLongMap!22345)

(declare-fun bm!69990 () Bool)

(assert (=> bm!69990 (= call!69996 (getCurrentListMapNoExtraKeys!6631 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547775 () Bool)

(assert (=> b!1547775 (= e!861560 tp_is_empty!38045)))

(declare-fun b!1547776 () Bool)

(declare-fun res!1060897 () Bool)

(assert (=> b!1547776 (=> (not res!1060897) (not e!861565))))

(assert (=> b!1547776 (= res!1060897 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50377 _keys!618))))))

(declare-fun b!1547777 () Bool)

(declare-fun e!861564 () Bool)

(assert (=> b!1547777 (= e!861564 (and e!861563 mapRes!58771))))

(declare-fun condMapEmpty!58771 () Bool)

(declare-fun mapDefault!58771 () ValueCell!18112)

