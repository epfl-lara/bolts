; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132018 () Bool)

(assert start!132018)

(declare-fun b_free!31699 () Bool)

(declare-fun b_next!31699 () Bool)

(assert (=> start!132018 (= b_free!31699 (not b_next!31699))))

(declare-fun tp!111349 () Bool)

(declare-fun b_and!51119 () Bool)

(assert (=> start!132018 (= tp!111349 b_and!51119)))

(declare-fun b!1546090 () Bool)

(declare-fun res!1060159 () Bool)

(declare-fun e!860615 () Bool)

(assert (=> b!1546090 (=> (not res!1060159) (not e!860615))))

(declare-datatypes ((array!103119 0))(
  ( (array!103120 (arr!49757 (Array (_ BitVec 32) (_ BitVec 64))) (size!50308 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103119)

(declare-datatypes ((List!36167 0))(
  ( (Nil!36164) (Cons!36163 (h!37609 (_ BitVec 64)) (t!50868 List!36167)) )
))
(declare-fun arrayNoDuplicates!0 (array!103119 (_ BitVec 32) List!36167) Bool)

(assert (=> b!1546090 (= res!1060159 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36164))))

(declare-fun b!1546091 () Bool)

(declare-datatypes ((V!59077 0))(
  ( (V!59078 (val!19065 Int)) )
))
(declare-datatypes ((tuple2!24656 0))(
  ( (tuple2!24657 (_1!12338 (_ BitVec 64)) (_2!12338 V!59077)) )
))
(declare-datatypes ((List!36168 0))(
  ( (Nil!36165) (Cons!36164 (h!37610 tuple2!24656) (t!50869 List!36168)) )
))
(declare-datatypes ((ListLongMap!22277 0))(
  ( (ListLongMap!22278 (toList!11154 List!36168)) )
))
(declare-fun e!860617 () ListLongMap!22277)

(declare-fun e!860614 () ListLongMap!22277)

(assert (=> b!1546091 (= e!860617 e!860614)))

(declare-fun c!141710 () Bool)

(declare-fun lt!666431 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1546091 (= c!141710 (and (not lt!666431) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69464 () Bool)

(declare-fun call!69470 () ListLongMap!22277)

(declare-fun call!69467 () ListLongMap!22277)

(assert (=> bm!69464 (= call!69470 call!69467)))

(declare-fun b!1546092 () Bool)

(declare-fun e!860613 () ListLongMap!22277)

(assert (=> b!1546092 (= e!860613 call!69470)))

(declare-fun zeroValue!436 () V!59077)

(declare-fun call!69468 () ListLongMap!22277)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun minValue!436 () V!59077)

(declare-fun bm!69465 () Bool)

(declare-datatypes ((ValueCell!18077 0))(
  ( (ValueCellFull!18077 (v!21863 V!59077)) (EmptyCell!18077) )
))
(declare-datatypes ((array!103121 0))(
  ( (array!103122 (arr!49758 (Array (_ BitVec 32) ValueCell!18077)) (size!50309 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103121)

(declare-fun getCurrentListMapNoExtraKeys!6601 (array!103119 array!103121 (_ BitVec 32) (_ BitVec 32) V!59077 V!59077 (_ BitVec 32) Int) ListLongMap!22277)

(assert (=> bm!69465 (= call!69468 (getCurrentListMapNoExtraKeys!6601 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546093 () Bool)

(declare-fun e!860612 () Bool)

(assert (=> b!1546093 (= e!860615 e!860612)))

(declare-fun res!1060161 () Bool)

(assert (=> b!1546093 (=> (not res!1060161) (not e!860612))))

(assert (=> b!1546093 (= res!1060161 (bvslt from!762 (size!50308 _keys!618)))))

(declare-fun lt!666432 () ListLongMap!22277)

(assert (=> b!1546093 (= lt!666432 e!860617)))

(declare-fun c!141708 () Bool)

(assert (=> b!1546093 (= c!141708 (and (not lt!666431) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546093 (= lt!666431 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546094 () Bool)

(declare-fun res!1060163 () Bool)

(assert (=> b!1546094 (=> (not res!1060163) (not e!860612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546094 (= res!1060163 (validKeyInArray!0 (select (arr!49757 _keys!618) from!762)))))

(declare-fun b!1546095 () Bool)

(declare-fun call!69469 () ListLongMap!22277)

(assert (=> b!1546095 (= e!860613 call!69469)))

(declare-fun res!1060162 () Bool)

(assert (=> start!132018 (=> (not res!1060162) (not e!860615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132018 (= res!1060162 (validMask!0 mask!926))))

(assert (=> start!132018 e!860615))

(declare-fun array_inv!38623 (array!103119) Bool)

(assert (=> start!132018 (array_inv!38623 _keys!618)))

(declare-fun tp_is_empty!37975 () Bool)

(assert (=> start!132018 tp_is_empty!37975))

(assert (=> start!132018 true))

(assert (=> start!132018 tp!111349))

(declare-fun e!860620 () Bool)

(declare-fun array_inv!38624 (array!103121) Bool)

(assert (=> start!132018 (and (array_inv!38624 _values!470) e!860620)))

(declare-fun bm!69466 () Bool)

(assert (=> bm!69466 (= call!69467 call!69468)))

(declare-fun b!1546096 () Bool)

(declare-fun res!1060158 () Bool)

(assert (=> b!1546096 (=> (not res!1060158) (not e!860615))))

(assert (=> b!1546096 (= res!1060158 (and (= (size!50309 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50308 _keys!618) (size!50309 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun call!69471 () ListLongMap!22277)

(declare-fun bm!69467 () Bool)

(declare-fun +!4882 (ListLongMap!22277 tuple2!24656) ListLongMap!22277)

(assert (=> bm!69467 (= call!69471 (+!4882 (ite c!141708 call!69468 (ite c!141710 call!69467 call!69470)) (ite (or c!141708 c!141710) (tuple2!24657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24657 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapNonEmpty!58666 () Bool)

(declare-fun mapRes!58666 () Bool)

(declare-fun tp!111350 () Bool)

(declare-fun e!860616 () Bool)

(assert (=> mapNonEmpty!58666 (= mapRes!58666 (and tp!111350 e!860616))))

(declare-fun mapRest!58666 () (Array (_ BitVec 32) ValueCell!18077))

(declare-fun mapKey!58666 () (_ BitVec 32))

(declare-fun mapValue!58666 () ValueCell!18077)

(assert (=> mapNonEmpty!58666 (= (arr!49758 _values!470) (store mapRest!58666 mapKey!58666 mapValue!58666))))

(declare-fun b!1546097 () Bool)

(declare-fun e!860618 () Bool)

(assert (=> b!1546097 (= e!860618 tp_is_empty!37975)))

(declare-fun b!1546098 () Bool)

(assert (=> b!1546098 (= e!860612 (not true))))

(declare-fun lt!666433 () ListLongMap!22277)

(declare-fun contains!10054 (ListLongMap!22277 (_ BitVec 64)) Bool)

(assert (=> b!1546098 (contains!10054 (+!4882 lt!666433 (tuple2!24657 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49757 _keys!618) from!762))))

(declare-datatypes ((Unit!51470 0))(
  ( (Unit!51471) )
))
(declare-fun lt!666434 () Unit!51470)

(declare-fun addStillContains!1236 (ListLongMap!22277 (_ BitVec 64) V!59077 (_ BitVec 64)) Unit!51470)

(assert (=> b!1546098 (= lt!666434 (addStillContains!1236 lt!666433 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49757 _keys!618) from!762)))))

(assert (=> b!1546098 (= lt!666433 (getCurrentListMapNoExtraKeys!6601 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546099 () Bool)

(assert (=> b!1546099 (= e!860620 (and e!860618 mapRes!58666))))

(declare-fun condMapEmpty!58666 () Bool)

(declare-fun mapDefault!58666 () ValueCell!18077)

