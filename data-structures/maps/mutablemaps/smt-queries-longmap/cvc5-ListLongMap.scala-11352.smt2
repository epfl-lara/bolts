; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132048 () Bool)

(assert start!132048)

(declare-fun b_free!31729 () Bool)

(declare-fun b_next!31729 () Bool)

(assert (=> start!132048 (= b_free!31729 (not b_next!31729))))

(declare-fun tp!111439 () Bool)

(declare-fun b_and!51149 () Bool)

(assert (=> start!132048 (= tp!111439 b_and!51149)))

(declare-datatypes ((V!59117 0))(
  ( (V!59118 (val!19080 Int)) )
))
(declare-datatypes ((tuple2!24684 0))(
  ( (tuple2!24685 (_1!12352 (_ BitVec 64)) (_2!12352 V!59117)) )
))
(declare-datatypes ((List!36194 0))(
  ( (Nil!36191) (Cons!36190 (h!37636 tuple2!24684) (t!50895 List!36194)) )
))
(declare-datatypes ((ListLongMap!22305 0))(
  ( (ListLongMap!22306 (toList!11168 List!36194)) )
))
(declare-fun call!69696 () ListLongMap!22305)

(declare-fun call!69692 () ListLongMap!22305)

(declare-fun minValue!436 () V!59117)

(declare-fun c!141845 () Bool)

(declare-fun bm!69689 () Bool)

(declare-fun call!69694 () ListLongMap!22305)

(declare-fun c!141843 () Bool)

(declare-fun call!69695 () ListLongMap!22305)

(declare-fun zeroValue!436 () V!59117)

(declare-fun +!4896 (ListLongMap!22305 tuple2!24684) ListLongMap!22305)

(assert (=> bm!69689 (= call!69692 (+!4896 (ite c!141845 call!69696 (ite c!141843 call!69694 call!69695)) (ite (or c!141845 c!141843) (tuple2!24685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1546810 () Bool)

(declare-fun e!861017 () Bool)

(assert (=> b!1546810 (= e!861017 (not true))))

(declare-datatypes ((array!103177 0))(
  ( (array!103178 (arr!49786 (Array (_ BitVec 32) (_ BitVec 64))) (size!50337 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103177)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!666643 () ListLongMap!22305)

(declare-fun apply!1081 (ListLongMap!22305 (_ BitVec 64)) V!59117)

(assert (=> b!1546810 (= (apply!1081 (+!4896 lt!666643 (tuple2!24685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49786 _keys!618) from!762)) (apply!1081 lt!666643 (select (arr!49786 _keys!618) from!762)))))

(declare-datatypes ((Unit!51492 0))(
  ( (Unit!51493) )
))
(declare-fun lt!666642 () Unit!51492)

(declare-fun addApplyDifferent!584 (ListLongMap!22305 (_ BitVec 64) V!59117 (_ BitVec 64)) Unit!51492)

(assert (=> b!1546810 (= lt!666642 (addApplyDifferent!584 lt!666643 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49786 _keys!618) from!762)))))

(declare-fun contains!10065 (ListLongMap!22305 (_ BitVec 64)) Bool)

(assert (=> b!1546810 (contains!10065 (+!4896 lt!666643 (tuple2!24685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49786 _keys!618) from!762))))

(declare-fun lt!666641 () Unit!51492)

(declare-fun addStillContains!1247 (ListLongMap!22305 (_ BitVec 64) V!59117 (_ BitVec 64)) Unit!51492)

(assert (=> b!1546810 (= lt!666641 (addStillContains!1247 lt!666643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49786 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18092 0))(
  ( (ValueCellFull!18092 (v!21878 V!59117)) (EmptyCell!18092) )
))
(declare-datatypes ((array!103179 0))(
  ( (array!103180 (arr!49787 (Array (_ BitVec 32) ValueCell!18092)) (size!50338 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103179)

(declare-fun getCurrentListMapNoExtraKeys!6613 (array!103177 array!103179 (_ BitVec 32) (_ BitVec 32) V!59117 V!59117 (_ BitVec 32) Int) ListLongMap!22305)

(assert (=> b!1546810 (= lt!666643 (getCurrentListMapNoExtraKeys!6613 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58711 () Bool)

(declare-fun mapRes!58711 () Bool)

(assert (=> mapIsEmpty!58711 mapRes!58711))

(declare-fun b!1546811 () Bool)

(declare-fun e!861022 () ListLongMap!22305)

(declare-fun e!861024 () ListLongMap!22305)

(assert (=> b!1546811 (= e!861022 e!861024)))

(declare-fun lt!666644 () Bool)

(assert (=> b!1546811 (= c!141843 (and (not lt!666644) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69690 () Bool)

(assert (=> bm!69690 (= call!69694 call!69696)))

(declare-fun b!1546812 () Bool)

(declare-fun res!1060476 () Bool)

(declare-fun e!861018 () Bool)

(assert (=> b!1546812 (=> (not res!1060476) (not e!861018))))

(assert (=> b!1546812 (= res!1060476 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50337 _keys!618))))))

(declare-fun b!1546813 () Bool)

(declare-fun e!861021 () ListLongMap!22305)

(declare-fun call!69693 () ListLongMap!22305)

(assert (=> b!1546813 (= e!861021 call!69693)))

(declare-fun bm!69691 () Bool)

(assert (=> bm!69691 (= call!69693 call!69692)))

(declare-fun b!1546814 () Bool)

(assert (=> b!1546814 (= e!861018 e!861017)))

(declare-fun res!1060477 () Bool)

(assert (=> b!1546814 (=> (not res!1060477) (not e!861017))))

(assert (=> b!1546814 (= res!1060477 (bvslt from!762 (size!50337 _keys!618)))))

(declare-fun lt!666640 () ListLongMap!22305)

(assert (=> b!1546814 (= lt!666640 e!861022)))

(assert (=> b!1546814 (= c!141845 (and (not lt!666644) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546814 (= lt!666644 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546815 () Bool)

(assert (=> b!1546815 (= e!861022 (+!4896 call!69692 (tuple2!24685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546816 () Bool)

(declare-fun res!1060472 () Bool)

(assert (=> b!1546816 (=> (not res!1060472) (not e!861018))))

(declare-datatypes ((List!36195 0))(
  ( (Nil!36192) (Cons!36191 (h!37637 (_ BitVec 64)) (t!50896 List!36195)) )
))
(declare-fun arrayNoDuplicates!0 (array!103177 (_ BitVec 32) List!36195) Bool)

(assert (=> b!1546816 (= res!1060472 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36192))))

(declare-fun bm!69692 () Bool)

(assert (=> bm!69692 (= call!69695 call!69694)))

(declare-fun bm!69693 () Bool)

(assert (=> bm!69693 (= call!69696 (getCurrentListMapNoExtraKeys!6613 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546817 () Bool)

(declare-fun res!1060473 () Bool)

(assert (=> b!1546817 (=> (not res!1060473) (not e!861018))))

(assert (=> b!1546817 (= res!1060473 (and (= (size!50338 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50337 _keys!618) (size!50338 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58711 () Bool)

(declare-fun tp!111440 () Bool)

(declare-fun e!861025 () Bool)

(assert (=> mapNonEmpty!58711 (= mapRes!58711 (and tp!111440 e!861025))))

(declare-fun mapRest!58711 () (Array (_ BitVec 32) ValueCell!18092))

(declare-fun mapKey!58711 () (_ BitVec 32))

(declare-fun mapValue!58711 () ValueCell!18092)

(assert (=> mapNonEmpty!58711 (= (arr!49787 _values!470) (store mapRest!58711 mapKey!58711 mapValue!58711))))

(declare-fun b!1546818 () Bool)

(declare-fun e!861019 () Bool)

(declare-fun e!861020 () Bool)

(assert (=> b!1546818 (= e!861019 (and e!861020 mapRes!58711))))

(declare-fun condMapEmpty!58711 () Bool)

(declare-fun mapDefault!58711 () ValueCell!18092)

