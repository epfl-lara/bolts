; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132042 () Bool)

(assert start!132042)

(declare-fun b_free!31723 () Bool)

(declare-fun b_next!31723 () Bool)

(assert (=> start!132042 (= b_free!31723 (not b_next!31723))))

(declare-fun tp!111421 () Bool)

(declare-fun b_and!51143 () Bool)

(assert (=> start!132042 (= tp!111421 b_and!51143)))

(declare-fun b!1546666 () Bool)

(declare-fun res!1060411 () Bool)

(declare-fun e!860942 () Bool)

(assert (=> b!1546666 (=> (not res!1060411) (not e!860942))))

(declare-datatypes ((array!103165 0))(
  ( (array!103166 (arr!49780 (Array (_ BitVec 32) (_ BitVec 64))) (size!50331 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103165)

(declare-datatypes ((List!36188 0))(
  ( (Nil!36185) (Cons!36184 (h!37630 (_ BitVec 64)) (t!50889 List!36188)) )
))
(declare-fun arrayNoDuplicates!0 (array!103165 (_ BitVec 32) List!36188) Bool)

(assert (=> b!1546666 (= res!1060411 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36185))))

(declare-fun b!1546667 () Bool)

(declare-fun res!1060412 () Bool)

(assert (=> b!1546667 (=> (not res!1060412) (not e!860942))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1546667 (= res!1060412 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50331 _keys!618))))))

(declare-fun mapNonEmpty!58702 () Bool)

(declare-fun mapRes!58702 () Bool)

(declare-fun tp!111422 () Bool)

(declare-fun e!860939 () Bool)

(assert (=> mapNonEmpty!58702 (= mapRes!58702 (and tp!111422 e!860939))))

(declare-datatypes ((V!59109 0))(
  ( (V!59110 (val!19077 Int)) )
))
(declare-datatypes ((ValueCell!18089 0))(
  ( (ValueCellFull!18089 (v!21875 V!59109)) (EmptyCell!18089) )
))
(declare-fun mapRest!58702 () (Array (_ BitVec 32) ValueCell!18089))

(declare-datatypes ((array!103167 0))(
  ( (array!103168 (arr!49781 (Array (_ BitVec 32) ValueCell!18089)) (size!50332 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103167)

(declare-fun mapKey!58702 () (_ BitVec 32))

(declare-fun mapValue!58702 () ValueCell!18089)

(assert (=> mapNonEmpty!58702 (= (arr!49781 _values!470) (store mapRest!58702 mapKey!58702 mapValue!58702))))

(declare-fun b!1546668 () Bool)

(declare-fun c!141818 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!666597 () Bool)

(assert (=> b!1546668 (= c!141818 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666597))))

(declare-datatypes ((tuple2!24678 0))(
  ( (tuple2!24679 (_1!12349 (_ BitVec 64)) (_2!12349 V!59109)) )
))
(declare-datatypes ((List!36189 0))(
  ( (Nil!36186) (Cons!36185 (h!37631 tuple2!24678) (t!50890 List!36189)) )
))
(declare-datatypes ((ListLongMap!22299 0))(
  ( (ListLongMap!22300 (toList!11165 List!36189)) )
))
(declare-fun e!860938 () ListLongMap!22299)

(declare-fun e!860936 () ListLongMap!22299)

(assert (=> b!1546668 (= e!860938 e!860936)))

(declare-fun bm!69644 () Bool)

(declare-fun call!69649 () ListLongMap!22299)

(declare-fun call!69648 () ListLongMap!22299)

(assert (=> bm!69644 (= call!69649 call!69648)))

(declare-fun zeroValue!436 () V!59109)

(declare-fun c!141816 () Bool)

(declare-fun call!69651 () ListLongMap!22299)

(declare-fun minValue!436 () V!59109)

(declare-fun c!141817 () Bool)

(declare-fun bm!69645 () Bool)

(declare-fun call!69650 () ListLongMap!22299)

(declare-fun +!4893 (ListLongMap!22299 tuple2!24678) ListLongMap!22299)

(assert (=> bm!69645 (= call!69650 (+!4893 (ite c!141816 call!69648 (ite c!141817 call!69649 call!69651)) (ite (or c!141816 c!141817) (tuple2!24679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1546669 () Bool)

(declare-fun res!1060410 () Bool)

(assert (=> b!1546669 (=> (not res!1060410) (not e!860942))))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1546669 (= res!1060410 (and (= (size!50332 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50331 _keys!618) (size!50332 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546670 () Bool)

(declare-fun e!860937 () Bool)

(declare-fun tp_is_empty!37999 () Bool)

(assert (=> b!1546670 (= e!860937 tp_is_empty!37999)))

(declare-fun bm!69646 () Bool)

(declare-fun call!69647 () ListLongMap!22299)

(assert (=> bm!69646 (= call!69647 call!69650)))

(declare-fun b!1546671 () Bool)

(declare-fun e!860941 () ListLongMap!22299)

(assert (=> b!1546671 (= e!860941 (+!4893 call!69650 (tuple2!24679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546672 () Bool)

(assert (=> b!1546672 (= e!860936 call!69647)))

(declare-fun b!1546674 () Bool)

(declare-fun res!1060415 () Bool)

(assert (=> b!1546674 (=> (not res!1060415) (not e!860942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103165 (_ BitVec 32)) Bool)

(assert (=> b!1546674 (= res!1060415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69647 () Bool)

(assert (=> bm!69647 (= call!69651 call!69649)))

(declare-fun b!1546673 () Bool)

(declare-fun e!860944 () Bool)

(assert (=> b!1546673 (= e!860942 e!860944)))

(declare-fun res!1060414 () Bool)

(assert (=> b!1546673 (=> (not res!1060414) (not e!860944))))

(assert (=> b!1546673 (= res!1060414 (bvslt from!762 (size!50331 _keys!618)))))

(declare-fun lt!666595 () ListLongMap!22299)

(assert (=> b!1546673 (= lt!666595 e!860941)))

(assert (=> b!1546673 (= c!141816 (and (not lt!666597) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546673 (= lt!666597 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun res!1060413 () Bool)

(assert (=> start!132042 (=> (not res!1060413) (not e!860942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132042 (= res!1060413 (validMask!0 mask!926))))

(assert (=> start!132042 e!860942))

(declare-fun array_inv!38641 (array!103165) Bool)

(assert (=> start!132042 (array_inv!38641 _keys!618)))

(assert (=> start!132042 tp_is_empty!37999))

(assert (=> start!132042 true))

(assert (=> start!132042 tp!111421))

(declare-fun e!860940 () Bool)

(declare-fun array_inv!38642 (array!103167) Bool)

(assert (=> start!132042 (and (array_inv!38642 _values!470) e!860940)))

(declare-fun b!1546675 () Bool)

(assert (=> b!1546675 (= e!860939 tp_is_empty!37999)))

(declare-fun b!1546676 () Bool)

(declare-fun res!1060409 () Bool)

(assert (=> b!1546676 (=> (not res!1060409) (not e!860944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546676 (= res!1060409 (validKeyInArray!0 (select (arr!49780 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69648 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6610 (array!103165 array!103167 (_ BitVec 32) (_ BitVec 32) V!59109 V!59109 (_ BitVec 32) Int) ListLongMap!22299)

(assert (=> bm!69648 (= call!69648 (getCurrentListMapNoExtraKeys!6610 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58702 () Bool)

(assert (=> mapIsEmpty!58702 mapRes!58702))

(declare-fun b!1546677 () Bool)

(assert (=> b!1546677 (= e!860936 call!69651)))

(declare-fun b!1546678 () Bool)

(assert (=> b!1546678 (= e!860938 call!69647)))

(declare-fun b!1546679 () Bool)

(assert (=> b!1546679 (= e!860940 (and e!860937 mapRes!58702))))

(declare-fun condMapEmpty!58702 () Bool)

(declare-fun mapDefault!58702 () ValueCell!18089)

