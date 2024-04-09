; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131978 () Bool)

(assert start!131978)

(declare-fun b_free!31659 () Bool)

(declare-fun b_next!31659 () Bool)

(assert (=> start!131978 (= b_free!31659 (not b_next!31659))))

(declare-fun tp!111229 () Bool)

(declare-fun b_and!51079 () Bool)

(assert (=> start!131978 (= tp!111229 b_and!51079)))

(declare-datatypes ((array!103043 0))(
  ( (array!103044 (arr!49719 (Array (_ BitVec 32) (_ BitVec 64))) (size!50270 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103043)

(declare-datatypes ((V!59023 0))(
  ( (V!59024 (val!19045 Int)) )
))
(declare-fun zeroValue!436 () V!59023)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18057 0))(
  ( (ValueCellFull!18057 (v!21843 V!59023)) (EmptyCell!18057) )
))
(declare-datatypes ((array!103045 0))(
  ( (array!103046 (arr!49720 (Array (_ BitVec 32) ValueCell!18057)) (size!50271 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103045)

(declare-fun bm!69164 () Bool)

(declare-fun minValue!436 () V!59023)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((tuple2!24618 0))(
  ( (tuple2!24619 (_1!12319 (_ BitVec 64)) (_2!12319 V!59023)) )
))
(declare-datatypes ((List!36136 0))(
  ( (Nil!36133) (Cons!36132 (h!37578 tuple2!24618) (t!50837 List!36136)) )
))
(declare-datatypes ((ListLongMap!22239 0))(
  ( (ListLongMap!22240 (toList!11135 List!36136)) )
))
(declare-fun call!69171 () ListLongMap!22239)

(declare-fun getCurrentListMapNoExtraKeys!6584 (array!103043 array!103045 (_ BitVec 32) (_ BitVec 32) V!59023 V!59023 (_ BitVec 32) Int) ListLongMap!22239)

(assert (=> bm!69164 (= call!69171 (getCurrentListMapNoExtraKeys!6584 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545130 () Bool)

(declare-fun c!141529 () Bool)

(declare-fun lt!666194 () Bool)

(assert (=> b!1545130 (= c!141529 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666194))))

(declare-fun e!860072 () ListLongMap!22239)

(declare-fun e!860076 () ListLongMap!22239)

(assert (=> b!1545130 (= e!860072 e!860076)))

(declare-fun b!1545131 () Bool)

(declare-fun res!1059739 () Bool)

(declare-fun e!860079 () Bool)

(assert (=> b!1545131 (=> (not res!1059739) (not e!860079))))

(assert (=> b!1545131 (= res!1059739 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50270 _keys!618))))))

(declare-fun b!1545132 () Bool)

(declare-fun e!860077 () Bool)

(declare-fun tp_is_empty!37935 () Bool)

(assert (=> b!1545132 (= e!860077 tp_is_empty!37935)))

(declare-fun bm!69165 () Bool)

(declare-fun call!69168 () ListLongMap!22239)

(declare-fun call!69167 () ListLongMap!22239)

(assert (=> bm!69165 (= call!69168 call!69167)))

(declare-fun b!1545133 () Bool)

(declare-fun e!860080 () ListLongMap!22239)

(declare-fun +!4867 (ListLongMap!22239 tuple2!24618) ListLongMap!22239)

(assert (=> b!1545133 (= e!860080 (+!4867 call!69167 (tuple2!24619 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545134 () Bool)

(assert (=> b!1545134 (= e!860072 call!69168)))

(declare-fun bm!69166 () Bool)

(declare-fun call!69169 () ListLongMap!22239)

(assert (=> bm!69166 (= call!69169 call!69171)))

(declare-fun b!1545135 () Bool)

(declare-fun res!1059738 () Bool)

(assert (=> b!1545135 (=> (not res!1059738) (not e!860079))))

(assert (=> b!1545135 (= res!1059738 (and (= (size!50271 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50270 _keys!618) (size!50271 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545136 () Bool)

(declare-fun e!860074 () Bool)

(declare-fun e!860078 () Bool)

(declare-fun mapRes!58606 () Bool)

(assert (=> b!1545136 (= e!860074 (and e!860078 mapRes!58606))))

(declare-fun condMapEmpty!58606 () Bool)

(declare-fun mapDefault!58606 () ValueCell!18057)

(assert (=> b!1545136 (= condMapEmpty!58606 (= (arr!49720 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18057)) mapDefault!58606)))))

(declare-fun c!141530 () Bool)

(declare-fun bm!69167 () Bool)

(declare-fun c!141528 () Bool)

(declare-fun call!69170 () ListLongMap!22239)

(assert (=> bm!69167 (= call!69167 (+!4867 (ite c!141530 call!69171 (ite c!141528 call!69169 call!69170)) (ite (or c!141530 c!141528) (tuple2!24619 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24619 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58606 () Bool)

(assert (=> mapIsEmpty!58606 mapRes!58606))

(declare-fun b!1545137 () Bool)

(declare-fun e!860075 () Bool)

(assert (=> b!1545137 (= e!860075 (not true))))

(declare-fun lt!666191 () ListLongMap!22239)

(declare-fun contains!10041 (ListLongMap!22239 (_ BitVec 64)) Bool)

(assert (=> b!1545137 (contains!10041 (+!4867 lt!666191 (tuple2!24619 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49719 _keys!618) from!762))))

(declare-datatypes ((Unit!51444 0))(
  ( (Unit!51445) )
))
(declare-fun lt!666192 () Unit!51444)

(declare-fun addStillContains!1223 (ListLongMap!22239 (_ BitVec 64) V!59023 (_ BitVec 64)) Unit!51444)

(assert (=> b!1545137 (= lt!666192 (addStillContains!1223 lt!666191 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49719 _keys!618) from!762)))))

(assert (=> b!1545137 (= lt!666191 (getCurrentListMapNoExtraKeys!6584 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545138 () Bool)

(assert (=> b!1545138 (= e!860079 e!860075)))

(declare-fun res!1059737 () Bool)

(assert (=> b!1545138 (=> (not res!1059737) (not e!860075))))

(assert (=> b!1545138 (= res!1059737 (bvslt from!762 (size!50270 _keys!618)))))

(declare-fun lt!666193 () ListLongMap!22239)

(assert (=> b!1545138 (= lt!666193 e!860080)))

(assert (=> b!1545138 (= c!141530 (and (not lt!666194) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545138 (= lt!666194 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1545139 () Bool)

(declare-fun res!1059740 () Bool)

(assert (=> b!1545139 (=> (not res!1059740) (not e!860075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545139 (= res!1059740 (validKeyInArray!0 (select (arr!49719 _keys!618) from!762)))))

(declare-fun b!1545140 () Bool)

(assert (=> b!1545140 (= e!860076 call!69168)))

(declare-fun mapNonEmpty!58606 () Bool)

(declare-fun tp!111230 () Bool)

(assert (=> mapNonEmpty!58606 (= mapRes!58606 (and tp!111230 e!860077))))

(declare-fun mapValue!58606 () ValueCell!18057)

(declare-fun mapKey!58606 () (_ BitVec 32))

(declare-fun mapRest!58606 () (Array (_ BitVec 32) ValueCell!18057))

(assert (=> mapNonEmpty!58606 (= (arr!49720 _values!470) (store mapRest!58606 mapKey!58606 mapValue!58606))))

(declare-fun b!1545141 () Bool)

(assert (=> b!1545141 (= e!860076 call!69170)))

(declare-fun bm!69168 () Bool)

(assert (=> bm!69168 (= call!69170 call!69169)))

(declare-fun res!1059743 () Bool)

(assert (=> start!131978 (=> (not res!1059743) (not e!860079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131978 (= res!1059743 (validMask!0 mask!926))))

(assert (=> start!131978 e!860079))

(declare-fun array_inv!38595 (array!103043) Bool)

(assert (=> start!131978 (array_inv!38595 _keys!618)))

(assert (=> start!131978 tp_is_empty!37935))

(assert (=> start!131978 true))

(assert (=> start!131978 tp!111229))

(declare-fun array_inv!38596 (array!103045) Bool)

(assert (=> start!131978 (and (array_inv!38596 _values!470) e!860074)))

(declare-fun b!1545142 () Bool)

(assert (=> b!1545142 (= e!860080 e!860072)))

(assert (=> b!1545142 (= c!141528 (and (not lt!666194) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1545143 () Bool)

(declare-fun res!1059741 () Bool)

(assert (=> b!1545143 (=> (not res!1059741) (not e!860079))))

(declare-datatypes ((List!36137 0))(
  ( (Nil!36134) (Cons!36133 (h!37579 (_ BitVec 64)) (t!50838 List!36137)) )
))
(declare-fun arrayNoDuplicates!0 (array!103043 (_ BitVec 32) List!36137) Bool)

(assert (=> b!1545143 (= res!1059741 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36134))))

(declare-fun b!1545144 () Bool)

(declare-fun res!1059742 () Bool)

(assert (=> b!1545144 (=> (not res!1059742) (not e!860079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103043 (_ BitVec 32)) Bool)

(assert (=> b!1545144 (= res!1059742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1545145 () Bool)

(assert (=> b!1545145 (= e!860078 tp_is_empty!37935)))

(assert (= (and start!131978 res!1059743) b!1545135))

(assert (= (and b!1545135 res!1059738) b!1545144))

(assert (= (and b!1545144 res!1059742) b!1545143))

(assert (= (and b!1545143 res!1059741) b!1545131))

(assert (= (and b!1545131 res!1059739) b!1545138))

(assert (= (and b!1545138 c!141530) b!1545133))

(assert (= (and b!1545138 (not c!141530)) b!1545142))

(assert (= (and b!1545142 c!141528) b!1545134))

(assert (= (and b!1545142 (not c!141528)) b!1545130))

(assert (= (and b!1545130 c!141529) b!1545140))

(assert (= (and b!1545130 (not c!141529)) b!1545141))

(assert (= (or b!1545140 b!1545141) bm!69168))

(assert (= (or b!1545134 bm!69168) bm!69166))

(assert (= (or b!1545134 b!1545140) bm!69165))

(assert (= (or b!1545133 bm!69166) bm!69164))

(assert (= (or b!1545133 bm!69165) bm!69167))

(assert (= (and b!1545138 res!1059737) b!1545139))

(assert (= (and b!1545139 res!1059740) b!1545137))

(assert (= (and b!1545136 condMapEmpty!58606) mapIsEmpty!58606))

(assert (= (and b!1545136 (not condMapEmpty!58606)) mapNonEmpty!58606))

(get-info :version)

(assert (= (and mapNonEmpty!58606 ((_ is ValueCellFull!18057) mapValue!58606)) b!1545132))

(assert (= (and b!1545136 ((_ is ValueCellFull!18057) mapDefault!58606)) b!1545145))

(assert (= start!131978 b!1545136))

(declare-fun m!1425569 () Bool)

(assert (=> b!1545144 m!1425569))

(declare-fun m!1425571 () Bool)

(assert (=> b!1545139 m!1425571))

(assert (=> b!1545139 m!1425571))

(declare-fun m!1425573 () Bool)

(assert (=> b!1545139 m!1425573))

(declare-fun m!1425575 () Bool)

(assert (=> mapNonEmpty!58606 m!1425575))

(declare-fun m!1425577 () Bool)

(assert (=> bm!69164 m!1425577))

(declare-fun m!1425579 () Bool)

(assert (=> b!1545143 m!1425579))

(assert (=> b!1545137 m!1425577))

(assert (=> b!1545137 m!1425571))

(declare-fun m!1425581 () Bool)

(assert (=> b!1545137 m!1425581))

(assert (=> b!1545137 m!1425581))

(assert (=> b!1545137 m!1425571))

(declare-fun m!1425583 () Bool)

(assert (=> b!1545137 m!1425583))

(assert (=> b!1545137 m!1425571))

(declare-fun m!1425585 () Bool)

(assert (=> b!1545137 m!1425585))

(declare-fun m!1425587 () Bool)

(assert (=> b!1545133 m!1425587))

(declare-fun m!1425589 () Bool)

(assert (=> bm!69167 m!1425589))

(declare-fun m!1425591 () Bool)

(assert (=> start!131978 m!1425591))

(declare-fun m!1425593 () Bool)

(assert (=> start!131978 m!1425593))

(declare-fun m!1425595 () Bool)

(assert (=> start!131978 m!1425595))

(check-sat (not b!1545133) (not start!131978) (not bm!69164) (not b!1545137) tp_is_empty!37935 (not b!1545144) (not mapNonEmpty!58606) b_and!51079 (not b_next!31659) (not b!1545143) (not bm!69167) (not b!1545139))
(check-sat b_and!51079 (not b_next!31659))
