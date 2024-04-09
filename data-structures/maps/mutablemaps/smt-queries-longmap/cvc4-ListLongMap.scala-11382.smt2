; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132318 () Bool)

(assert start!132318)

(declare-fun b_free!31913 () Bool)

(declare-fun b_next!31913 () Bool)

(assert (=> start!132318 (= b_free!31913 (not b_next!31913))))

(declare-fun tp!112003 () Bool)

(declare-fun b_and!51361 () Bool)

(assert (=> start!132318 (= tp!112003 b_and!51361)))

(declare-fun b!1551791 () Bool)

(declare-fun e!863892 () Bool)

(declare-datatypes ((array!103537 0))(
  ( (array!103538 (arr!49962 (Array (_ BitVec 32) (_ BitVec 64))) (size!50513 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103537)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1551791 (= e!863892 (validKeyInArray!0 (select (arr!49962 _keys!618) from!762)))))

(declare-fun b!1551792 () Bool)

(declare-fun res!1062654 () Bool)

(declare-fun e!863893 () Bool)

(assert (=> b!1551792 (=> (not res!1062654) (not e!863893))))

(declare-datatypes ((List!36341 0))(
  ( (Nil!36338) (Cons!36337 (h!37783 (_ BitVec 64)) (t!51062 List!36341)) )
))
(declare-fun arrayNoDuplicates!0 (array!103537 (_ BitVec 32) List!36341) Bool)

(assert (=> b!1551792 (= res!1062654 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36338))))

(declare-fun b!1551793 () Bool)

(declare-datatypes ((Unit!51614 0))(
  ( (Unit!51615) )
))
(declare-fun e!863889 () Unit!51614)

(declare-fun lt!668896 () Unit!51614)

(assert (=> b!1551793 (= e!863889 lt!668896)))

(declare-datatypes ((V!59361 0))(
  ( (V!59362 (val!19172 Int)) )
))
(declare-fun zeroValue!436 () V!59361)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18184 0))(
  ( (ValueCellFull!18184 (v!21974 V!59361)) (EmptyCell!18184) )
))
(declare-datatypes ((array!103539 0))(
  ( (array!103540 (arr!49963 (Array (_ BitVec 32) ValueCell!18184)) (size!50514 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103539)

(declare-fun minValue!436 () V!59361)

(declare-datatypes ((tuple2!24860 0))(
  ( (tuple2!24861 (_1!12440 (_ BitVec 64)) (_2!12440 V!59361)) )
))
(declare-datatypes ((List!36342 0))(
  ( (Nil!36339) (Cons!36338 (h!37784 tuple2!24860) (t!51063 List!36342)) )
))
(declare-datatypes ((ListLongMap!22481 0))(
  ( (ListLongMap!22482 (toList!11256 List!36342)) )
))
(declare-fun lt!668894 () ListLongMap!22481)

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6680 (array!103537 array!103539 (_ BitVec 32) (_ BitVec 32) V!59361 V!59361 (_ BitVec 32) Int) ListLongMap!22481)

(assert (=> b!1551793 (= lt!668894 (getCurrentListMapNoExtraKeys!6680 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!668890 () Unit!51614)

(declare-fun addStillContains!1298 (ListLongMap!22481 (_ BitVec 64) V!59361 (_ BitVec 64)) Unit!51614)

(assert (=> b!1551793 (= lt!668890 (addStillContains!1298 lt!668894 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49962 _keys!618) from!762)))))

(declare-fun lt!668898 () ListLongMap!22481)

(declare-fun +!4963 (ListLongMap!22481 tuple2!24860) ListLongMap!22481)

(assert (=> b!1551793 (= lt!668898 (+!4963 lt!668894 (tuple2!24861 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10127 (ListLongMap!22481 (_ BitVec 64)) Bool)

(assert (=> b!1551793 (contains!10127 lt!668898 (select (arr!49962 _keys!618) from!762))))

(declare-fun addApplyDifferent!631 (ListLongMap!22481 (_ BitVec 64) V!59361 (_ BitVec 64)) Unit!51614)

(assert (=> b!1551793 (= lt!668896 (addApplyDifferent!631 lt!668894 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49962 _keys!618) from!762)))))

(declare-fun lt!668891 () V!59361)

(declare-fun apply!1130 (ListLongMap!22481 (_ BitVec 64)) V!59361)

(assert (=> b!1551793 (= lt!668891 (apply!1130 (+!4963 lt!668894 (tuple2!24861 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49962 _keys!618) from!762)))))

(declare-fun lt!668897 () V!59361)

(assert (=> b!1551793 (= lt!668897 (apply!1130 lt!668894 (select (arr!49962 _keys!618) from!762)))))

(assert (=> b!1551793 (= lt!668891 lt!668897)))

(declare-fun lt!668893 () Unit!51614)

(assert (=> b!1551793 (= lt!668893 (addApplyDifferent!631 lt!668894 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49962 _keys!618) from!762)))))

(assert (=> b!1551793 (= (apply!1130 lt!668898 (select (arr!49962 _keys!618) from!762)) lt!668897)))

(declare-fun b!1551794 () Bool)

(declare-fun e!863888 () Bool)

(declare-fun tp_is_empty!38189 () Bool)

(assert (=> b!1551794 (= e!863888 tp_is_empty!38189)))

(declare-fun bm!71114 () Bool)

(declare-fun call!71120 () ListLongMap!22481)

(declare-fun call!71119 () ListLongMap!22481)

(assert (=> bm!71114 (= call!71120 call!71119)))

(declare-fun call!71118 () ListLongMap!22481)

(declare-fun bm!71115 () Bool)

(declare-fun c!142805 () Bool)

(declare-fun call!71121 () ListLongMap!22481)

(declare-fun call!71117 () ListLongMap!22481)

(declare-fun c!142804 () Bool)

(assert (=> bm!71115 (= call!71119 (+!4963 (ite c!142805 call!71117 (ite c!142804 call!71121 call!71118)) (ite (or c!142805 c!142804) (tuple2!24861 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24861 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1551795 () Bool)

(declare-fun e!863885 () ListLongMap!22481)

(assert (=> b!1551795 (= e!863885 call!71120)))

(declare-fun b!1551796 () Bool)

(declare-fun e!863887 () Bool)

(declare-fun mapRes!58999 () Bool)

(assert (=> b!1551796 (= e!863887 (and e!863888 mapRes!58999))))

(declare-fun condMapEmpty!58999 () Bool)

(declare-fun mapDefault!58999 () ValueCell!18184)

