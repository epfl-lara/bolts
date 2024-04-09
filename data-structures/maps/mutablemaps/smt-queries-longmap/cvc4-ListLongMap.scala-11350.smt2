; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132040 () Bool)

(assert start!132040)

(declare-fun b_free!31721 () Bool)

(declare-fun b_next!31721 () Bool)

(assert (=> start!132040 (= b_free!31721 (not b_next!31721))))

(declare-fun tp!111416 () Bool)

(declare-fun b_and!51141 () Bool)

(assert (=> start!132040 (= tp!111416 b_and!51141)))

(declare-datatypes ((V!59105 0))(
  ( (V!59106 (val!19076 Int)) )
))
(declare-datatypes ((tuple2!24676 0))(
  ( (tuple2!24677 (_1!12348 (_ BitVec 64)) (_2!12348 V!59105)) )
))
(declare-datatypes ((List!36187 0))(
  ( (Nil!36184) (Cons!36183 (h!37629 tuple2!24676) (t!50888 List!36187)) )
))
(declare-datatypes ((ListLongMap!22297 0))(
  ( (ListLongMap!22298 (toList!11164 List!36187)) )
))
(declare-fun call!69632 () ListLongMap!22297)

(declare-fun zeroValue!436 () V!59105)

(declare-fun call!69635 () ListLongMap!22297)

(declare-fun c!141809 () Bool)

(declare-fun bm!69629 () Bool)

(declare-fun minValue!436 () V!59105)

(declare-fun call!69634 () ListLongMap!22297)

(declare-fun call!69633 () ListLongMap!22297)

(declare-fun c!141808 () Bool)

(declare-fun +!4892 (ListLongMap!22297 tuple2!24676) ListLongMap!22297)

(assert (=> bm!69629 (= call!69632 (+!4892 (ite c!141809 call!69635 (ite c!141808 call!69634 call!69633)) (ite (or c!141809 c!141808) (tuple2!24677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24677 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1546618 () Bool)

(declare-fun e!860913 () Bool)

(declare-fun e!860912 () Bool)

(assert (=> b!1546618 (= e!860913 e!860912)))

(declare-fun res!1060390 () Bool)

(assert (=> b!1546618 (=> (not res!1060390) (not e!860912))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103161 0))(
  ( (array!103162 (arr!49778 (Array (_ BitVec 32) (_ BitVec 64))) (size!50329 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103161)

(assert (=> b!1546618 (= res!1060390 (bvslt from!762 (size!50329 _keys!618)))))

(declare-fun lt!666583 () ListLongMap!22297)

(declare-fun e!860910 () ListLongMap!22297)

(assert (=> b!1546618 (= lt!666583 e!860910)))

(declare-fun lt!666581 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1546618 (= c!141809 (and (not lt!666581) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546618 (= lt!666581 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546619 () Bool)

(declare-fun c!141807 () Bool)

(assert (=> b!1546619 (= c!141807 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666581))))

(declare-fun e!860917 () ListLongMap!22297)

(declare-fun e!860909 () ListLongMap!22297)

(assert (=> b!1546619 (= e!860917 e!860909)))

(declare-fun bm!69630 () Bool)

(assert (=> bm!69630 (= call!69633 call!69634)))

(declare-fun b!1546620 () Bool)

(declare-fun res!1060392 () Bool)

(assert (=> b!1546620 (=> (not res!1060392) (not e!860913))))

(assert (=> b!1546620 (= res!1060392 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50329 _keys!618))))))

(declare-fun b!1546621 () Bool)

(assert (=> b!1546621 (= e!860910 (+!4892 call!69632 (tuple2!24677 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546623 () Bool)

(assert (=> b!1546623 (= e!860910 e!860917)))

(assert (=> b!1546623 (= c!141808 (and (not lt!666581) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1546624 () Bool)

(assert (=> b!1546624 (= e!860909 call!69633)))

(declare-fun bm!69631 () Bool)

(assert (=> bm!69631 (= call!69634 call!69635)))

(declare-fun b!1546625 () Bool)

(assert (=> b!1546625 (= e!860912 (not true))))

(declare-fun lt!666582 () ListLongMap!22297)

(declare-fun apply!1078 (ListLongMap!22297 (_ BitVec 64)) V!59105)

(assert (=> b!1546625 (= (apply!1078 (+!4892 lt!666582 (tuple2!24677 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49778 _keys!618) from!762)) (apply!1078 lt!666582 (select (arr!49778 _keys!618) from!762)))))

(declare-datatypes ((Unit!51486 0))(
  ( (Unit!51487) )
))
(declare-fun lt!666580 () Unit!51486)

(declare-fun addApplyDifferent!581 (ListLongMap!22297 (_ BitVec 64) V!59105 (_ BitVec 64)) Unit!51486)

(assert (=> b!1546625 (= lt!666580 (addApplyDifferent!581 lt!666582 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49778 _keys!618) from!762)))))

(declare-fun contains!10062 (ListLongMap!22297 (_ BitVec 64)) Bool)

(assert (=> b!1546625 (contains!10062 (+!4892 lt!666582 (tuple2!24677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49778 _keys!618) from!762))))

(declare-fun lt!666584 () Unit!51486)

(declare-fun addStillContains!1244 (ListLongMap!22297 (_ BitVec 64) V!59105 (_ BitVec 64)) Unit!51486)

(assert (=> b!1546625 (= lt!666584 (addStillContains!1244 lt!666582 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49778 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18088 0))(
  ( (ValueCellFull!18088 (v!21874 V!59105)) (EmptyCell!18088) )
))
(declare-datatypes ((array!103163 0))(
  ( (array!103164 (arr!49779 (Array (_ BitVec 32) ValueCell!18088)) (size!50330 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103163)

(declare-fun getCurrentListMapNoExtraKeys!6609 (array!103161 array!103163 (_ BitVec 32) (_ BitVec 32) V!59105 V!59105 (_ BitVec 32) Int) ListLongMap!22297)

(assert (=> b!1546625 (= lt!666582 (getCurrentListMapNoExtraKeys!6609 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546626 () Bool)

(declare-fun res!1060394 () Bool)

(assert (=> b!1546626 (=> (not res!1060394) (not e!860913))))

(assert (=> b!1546626 (= res!1060394 (and (= (size!50330 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50329 _keys!618) (size!50330 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546627 () Bool)

(declare-fun res!1060391 () Bool)

(assert (=> b!1546627 (=> (not res!1060391) (not e!860913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103161 (_ BitVec 32)) Bool)

(assert (=> b!1546627 (= res!1060391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69632 () Bool)

(assert (=> bm!69632 (= call!69635 (getCurrentListMapNoExtraKeys!6609 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58699 () Bool)

(declare-fun mapRes!58699 () Bool)

(assert (=> mapIsEmpty!58699 mapRes!58699))

(declare-fun b!1546622 () Bool)

(declare-fun call!69636 () ListLongMap!22297)

(assert (=> b!1546622 (= e!860917 call!69636)))

(declare-fun res!1060388 () Bool)

(assert (=> start!132040 (=> (not res!1060388) (not e!860913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132040 (= res!1060388 (validMask!0 mask!926))))

(assert (=> start!132040 e!860913))

(declare-fun array_inv!38639 (array!103161) Bool)

(assert (=> start!132040 (array_inv!38639 _keys!618)))

(declare-fun tp_is_empty!37997 () Bool)

(assert (=> start!132040 tp_is_empty!37997))

(assert (=> start!132040 true))

(assert (=> start!132040 tp!111416))

(declare-fun e!860916 () Bool)

(declare-fun array_inv!38640 (array!103163) Bool)

(assert (=> start!132040 (and (array_inv!38640 _values!470) e!860916)))

(declare-fun b!1546628 () Bool)

(declare-fun e!860915 () Bool)

(assert (=> b!1546628 (= e!860915 tp_is_empty!37997)))

(declare-fun b!1546629 () Bool)

(declare-fun e!860914 () Bool)

(assert (=> b!1546629 (= e!860916 (and e!860914 mapRes!58699))))

(declare-fun condMapEmpty!58699 () Bool)

(declare-fun mapDefault!58699 () ValueCell!18088)

