; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132020 () Bool)

(assert start!132020)

(declare-fun b_free!31701 () Bool)

(declare-fun b_next!31701 () Bool)

(assert (=> start!132020 (= b_free!31701 (not b_next!31701))))

(declare-fun tp!111355 () Bool)

(declare-fun b_and!51121 () Bool)

(assert (=> start!132020 (= tp!111355 b_and!51121)))

(declare-fun bm!69479 () Bool)

(declare-datatypes ((V!59079 0))(
  ( (V!59080 (val!19066 Int)) )
))
(declare-datatypes ((tuple2!24658 0))(
  ( (tuple2!24659 (_1!12339 (_ BitVec 64)) (_2!12339 V!59079)) )
))
(declare-datatypes ((List!36169 0))(
  ( (Nil!36166) (Cons!36165 (h!37611 tuple2!24658) (t!50870 List!36169)) )
))
(declare-datatypes ((ListLongMap!22279 0))(
  ( (ListLongMap!22280 (toList!11155 List!36169)) )
))
(declare-fun call!69485 () ListLongMap!22279)

(declare-fun call!69482 () ListLongMap!22279)

(assert (=> bm!69479 (= call!69485 call!69482)))

(declare-fun b!1546138 () Bool)

(declare-fun res!1060178 () Bool)

(declare-fun e!860643 () Bool)

(assert (=> b!1546138 (=> (not res!1060178) (not e!860643))))

(declare-datatypes ((array!103123 0))(
  ( (array!103124 (arr!49759 (Array (_ BitVec 32) (_ BitVec 64))) (size!50310 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103123)

(declare-datatypes ((List!36170 0))(
  ( (Nil!36167) (Cons!36166 (h!37612 (_ BitVec 64)) (t!50871 List!36170)) )
))
(declare-fun arrayNoDuplicates!0 (array!103123 (_ BitVec 32) List!36170) Bool)

(assert (=> b!1546138 (= res!1060178 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36167))))

(declare-fun b!1546139 () Bool)

(declare-fun e!860646 () ListLongMap!22279)

(declare-fun call!69486 () ListLongMap!22279)

(assert (=> b!1546139 (= e!860646 call!69486)))

(declare-fun zeroValue!436 () V!59079)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun bm!69480 () Bool)

(declare-datatypes ((ValueCell!18078 0))(
  ( (ValueCellFull!18078 (v!21864 V!59079)) (EmptyCell!18078) )
))
(declare-datatypes ((array!103125 0))(
  ( (array!103126 (arr!49760 (Array (_ BitVec 32) ValueCell!18078)) (size!50311 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103125)

(declare-fun minValue!436 () V!59079)

(declare-fun getCurrentListMapNoExtraKeys!6602 (array!103123 array!103125 (_ BitVec 32) (_ BitVec 32) V!59079 V!59079 (_ BitVec 32) Int) ListLongMap!22279)

(assert (=> bm!69480 (= call!69482 (getCurrentListMapNoExtraKeys!6602 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546140 () Bool)

(declare-fun e!860644 () Bool)

(declare-fun e!860640 () Bool)

(declare-fun mapRes!58669 () Bool)

(assert (=> b!1546140 (= e!860644 (and e!860640 mapRes!58669))))

(declare-fun condMapEmpty!58669 () Bool)

(declare-fun mapDefault!58669 () ValueCell!18078)

(assert (=> b!1546140 (= condMapEmpty!58669 (= (arr!49760 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18078)) mapDefault!58669)))))

(declare-fun b!1546141 () Bool)

(declare-fun e!860642 () Bool)

(assert (=> b!1546141 (= e!860643 e!860642)))

(declare-fun res!1060183 () Bool)

(assert (=> b!1546141 (=> (not res!1060183) (not e!860642))))

(assert (=> b!1546141 (= res!1060183 (bvslt from!762 (size!50310 _keys!618)))))

(declare-fun lt!666444 () ListLongMap!22279)

(declare-fun e!860639 () ListLongMap!22279)

(assert (=> b!1546141 (= lt!666444 e!860639)))

(declare-fun c!141717 () Bool)

(declare-fun lt!666445 () Bool)

(assert (=> b!1546141 (= c!141717 (and (not lt!666445) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546141 (= lt!666445 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546142 () Bool)

(assert (=> b!1546142 (= e!860639 e!860646)))

(declare-fun c!141719 () Bool)

(assert (=> b!1546142 (= c!141719 (and (not lt!666445) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69481 () Bool)

(declare-fun call!69484 () ListLongMap!22279)

(assert (=> bm!69481 (= call!69486 call!69484)))

(declare-fun b!1546143 () Bool)

(declare-fun tp_is_empty!37977 () Bool)

(assert (=> b!1546143 (= e!860640 tp_is_empty!37977)))

(declare-fun bm!69482 () Bool)

(declare-fun call!69483 () ListLongMap!22279)

(declare-fun +!4883 (ListLongMap!22279 tuple2!24658) ListLongMap!22279)

(assert (=> bm!69482 (= call!69484 (+!4883 (ite c!141717 call!69482 (ite c!141719 call!69485 call!69483)) (ite (or c!141717 c!141719) (tuple2!24659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1546144 () Bool)

(declare-fun e!860647 () ListLongMap!22279)

(assert (=> b!1546144 (= e!860647 call!69486)))

(declare-fun bm!69483 () Bool)

(assert (=> bm!69483 (= call!69483 call!69485)))

(declare-fun mapNonEmpty!58669 () Bool)

(declare-fun tp!111356 () Bool)

(declare-fun e!860641 () Bool)

(assert (=> mapNonEmpty!58669 (= mapRes!58669 (and tp!111356 e!860641))))

(declare-fun mapKey!58669 () (_ BitVec 32))

(declare-fun mapValue!58669 () ValueCell!18078)

(declare-fun mapRest!58669 () (Array (_ BitVec 32) ValueCell!18078))

(assert (=> mapNonEmpty!58669 (= (arr!49760 _values!470) (store mapRest!58669 mapKey!58669 mapValue!58669))))

(declare-fun b!1546145 () Bool)

(assert (=> b!1546145 (= e!860647 call!69483)))

(declare-fun b!1546146 () Bool)

(declare-fun res!1060179 () Bool)

(assert (=> b!1546146 (=> (not res!1060179) (not e!860643))))

(assert (=> b!1546146 (= res!1060179 (and (= (size!50311 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50310 _keys!618) (size!50311 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546147 () Bool)

(declare-fun res!1060182 () Bool)

(assert (=> b!1546147 (=> (not res!1060182) (not e!860643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103123 (_ BitVec 32)) Bool)

(assert (=> b!1546147 (= res!1060182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1546148 () Bool)

(declare-fun c!141718 () Bool)

(assert (=> b!1546148 (= c!141718 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666445))))

(assert (=> b!1546148 (= e!860646 e!860647)))

(declare-fun res!1060180 () Bool)

(assert (=> start!132020 (=> (not res!1060180) (not e!860643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132020 (= res!1060180 (validMask!0 mask!926))))

(assert (=> start!132020 e!860643))

(declare-fun array_inv!38625 (array!103123) Bool)

(assert (=> start!132020 (array_inv!38625 _keys!618)))

(assert (=> start!132020 tp_is_empty!37977))

(assert (=> start!132020 true))

(assert (=> start!132020 tp!111355))

(declare-fun array_inv!38626 (array!103125) Bool)

(assert (=> start!132020 (and (array_inv!38626 _values!470) e!860644)))

(declare-fun b!1546149 () Bool)

(assert (=> b!1546149 (= e!860641 tp_is_empty!37977)))

(declare-fun mapIsEmpty!58669 () Bool)

(assert (=> mapIsEmpty!58669 mapRes!58669))

(declare-fun b!1546150 () Bool)

(declare-fun res!1060181 () Bool)

(assert (=> b!1546150 (=> (not res!1060181) (not e!860643))))

(assert (=> b!1546150 (= res!1060181 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50310 _keys!618))))))

(declare-fun b!1546151 () Bool)

(assert (=> b!1546151 (= e!860639 (+!4883 call!69484 (tuple2!24659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546152 () Bool)

(declare-fun res!1060184 () Bool)

(assert (=> b!1546152 (=> (not res!1060184) (not e!860642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546152 (= res!1060184 (validKeyInArray!0 (select (arr!49759 _keys!618) from!762)))))

(declare-fun b!1546153 () Bool)

(assert (=> b!1546153 (= e!860642 (not true))))

(declare-fun lt!666446 () ListLongMap!22279)

(declare-fun contains!10055 (ListLongMap!22279 (_ BitVec 64)) Bool)

(assert (=> b!1546153 (contains!10055 (+!4883 lt!666446 (tuple2!24659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49759 _keys!618) from!762))))

(declare-datatypes ((Unit!51472 0))(
  ( (Unit!51473) )
))
(declare-fun lt!666443 () Unit!51472)

(declare-fun addStillContains!1237 (ListLongMap!22279 (_ BitVec 64) V!59079 (_ BitVec 64)) Unit!51472)

(assert (=> b!1546153 (= lt!666443 (addStillContains!1237 lt!666446 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49759 _keys!618) from!762)))))

(assert (=> b!1546153 (= lt!666446 (getCurrentListMapNoExtraKeys!6602 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(assert (= (and start!132020 res!1060180) b!1546146))

(assert (= (and b!1546146 res!1060179) b!1546147))

(assert (= (and b!1546147 res!1060182) b!1546138))

(assert (= (and b!1546138 res!1060178) b!1546150))

(assert (= (and b!1546150 res!1060181) b!1546141))

(assert (= (and b!1546141 c!141717) b!1546151))

(assert (= (and b!1546141 (not c!141717)) b!1546142))

(assert (= (and b!1546142 c!141719) b!1546139))

(assert (= (and b!1546142 (not c!141719)) b!1546148))

(assert (= (and b!1546148 c!141718) b!1546144))

(assert (= (and b!1546148 (not c!141718)) b!1546145))

(assert (= (or b!1546144 b!1546145) bm!69483))

(assert (= (or b!1546139 bm!69483) bm!69479))

(assert (= (or b!1546139 b!1546144) bm!69481))

(assert (= (or b!1546151 bm!69479) bm!69480))

(assert (= (or b!1546151 bm!69481) bm!69482))

(assert (= (and b!1546141 res!1060183) b!1546152))

(assert (= (and b!1546152 res!1060184) b!1546153))

(assert (= (and b!1546140 condMapEmpty!58669) mapIsEmpty!58669))

(assert (= (and b!1546140 (not condMapEmpty!58669)) mapNonEmpty!58669))

(get-info :version)

(assert (= (and mapNonEmpty!58669 ((_ is ValueCellFull!18078) mapValue!58669)) b!1546149))

(assert (= (and b!1546140 ((_ is ValueCellFull!18078) mapDefault!58669)) b!1546143))

(assert (= start!132020 b!1546140))

(declare-fun m!1426157 () Bool)

(assert (=> b!1546147 m!1426157))

(declare-fun m!1426159 () Bool)

(assert (=> mapNonEmpty!58669 m!1426159))

(declare-fun m!1426161 () Bool)

(assert (=> b!1546151 m!1426161))

(declare-fun m!1426163 () Bool)

(assert (=> b!1546138 m!1426163))

(declare-fun m!1426165 () Bool)

(assert (=> b!1546153 m!1426165))

(declare-fun m!1426167 () Bool)

(assert (=> b!1546153 m!1426167))

(declare-fun m!1426169 () Bool)

(assert (=> b!1546153 m!1426169))

(assert (=> b!1546153 m!1426169))

(declare-fun m!1426171 () Bool)

(assert (=> b!1546153 m!1426171))

(assert (=> b!1546153 m!1426165))

(assert (=> b!1546153 m!1426169))

(declare-fun m!1426173 () Bool)

(assert (=> b!1546153 m!1426173))

(assert (=> b!1546152 m!1426169))

(assert (=> b!1546152 m!1426169))

(declare-fun m!1426175 () Bool)

(assert (=> b!1546152 m!1426175))

(declare-fun m!1426177 () Bool)

(assert (=> bm!69482 m!1426177))

(declare-fun m!1426179 () Bool)

(assert (=> start!132020 m!1426179))

(declare-fun m!1426181 () Bool)

(assert (=> start!132020 m!1426181))

(declare-fun m!1426183 () Bool)

(assert (=> start!132020 m!1426183))

(assert (=> bm!69480 m!1426167))

(check-sat (not b!1546153) (not b!1546138) (not bm!69482) (not mapNonEmpty!58669) (not b!1546147) (not b_next!31701) b_and!51121 (not start!132020) (not bm!69480) (not b!1546151) tp_is_empty!37977 (not b!1546152))
(check-sat b_and!51121 (not b_next!31701))
