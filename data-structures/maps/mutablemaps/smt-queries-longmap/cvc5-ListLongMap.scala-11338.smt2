; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131964 () Bool)

(assert start!131964)

(declare-fun b_free!31645 () Bool)

(declare-fun b_next!31645 () Bool)

(assert (=> start!131964 (= b_free!31645 (not b_next!31645))))

(declare-fun tp!111188 () Bool)

(declare-fun b_and!51065 () Bool)

(assert (=> start!131964 (= tp!111188 b_and!51065)))

(declare-fun b!1544808 () Bool)

(declare-datatypes ((V!59005 0))(
  ( (V!59006 (val!19038 Int)) )
))
(declare-datatypes ((tuple2!24604 0))(
  ( (tuple2!24605 (_1!12312 (_ BitVec 64)) (_2!12312 V!59005)) )
))
(declare-datatypes ((List!36123 0))(
  ( (Nil!36120) (Cons!36119 (h!37565 tuple2!24604) (t!50824 List!36123)) )
))
(declare-datatypes ((ListLongMap!22225 0))(
  ( (ListLongMap!22226 (toList!11128 List!36123)) )
))
(declare-fun e!859893 () ListLongMap!22225)

(declare-fun call!69063 () ListLongMap!22225)

(assert (=> b!1544808 (= e!859893 call!69063)))

(declare-fun b!1544809 () Bool)

(declare-fun res!1059605 () Bool)

(declare-fun e!859897 () Bool)

(assert (=> b!1544809 (=> (not res!1059605) (not e!859897))))

(declare-datatypes ((array!103015 0))(
  ( (array!103016 (arr!49705 (Array (_ BitVec 32) (_ BitVec 64))) (size!50256 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103015)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18050 0))(
  ( (ValueCellFull!18050 (v!21836 V!59005)) (EmptyCell!18050) )
))
(declare-datatypes ((array!103017 0))(
  ( (array!103018 (arr!49706 (Array (_ BitVec 32) ValueCell!18050)) (size!50257 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103017)

(assert (=> b!1544809 (= res!1059605 (and (= (size!50257 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50256 _keys!618) (size!50257 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544810 () Bool)

(declare-fun e!859894 () Bool)

(declare-fun tp_is_empty!37921 () Bool)

(assert (=> b!1544810 (= e!859894 tp_is_empty!37921)))

(declare-fun bm!69059 () Bool)

(declare-fun call!69064 () ListLongMap!22225)

(declare-fun call!69062 () ListLongMap!22225)

(assert (=> bm!69059 (= call!69064 call!69062)))

(declare-fun b!1544811 () Bool)

(assert (=> b!1544811 (= e!859897 false)))

(declare-fun lt!666130 () ListLongMap!22225)

(declare-fun e!859896 () ListLongMap!22225)

(assert (=> b!1544811 (= lt!666130 e!859896)))

(declare-fun c!141466 () Bool)

(declare-fun lt!666131 () Bool)

(assert (=> b!1544811 (= c!141466 (and (not lt!666131) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544811 (= lt!666131 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69060 () Bool)

(assert (=> bm!69060 (= call!69063 call!69064)))

(declare-fun zeroValue!436 () V!59005)

(declare-fun c!141465 () Bool)

(declare-fun bm!69061 () Bool)

(declare-fun minValue!436 () V!59005)

(declare-fun call!69065 () ListLongMap!22225)

(declare-fun +!4860 (ListLongMap!22225 tuple2!24604) ListLongMap!22225)

(assert (=> bm!69061 (= call!69065 (+!4860 (ite c!141466 call!69062 (ite c!141465 call!69064 call!69063)) (ite (or c!141466 c!141465) (tuple2!24605 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24605 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544812 () Bool)

(declare-fun call!69066 () ListLongMap!22225)

(assert (=> b!1544812 (= e!859893 call!69066)))

(declare-fun res!1059606 () Bool)

(assert (=> start!131964 (=> (not res!1059606) (not e!859897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131964 (= res!1059606 (validMask!0 mask!926))))

(assert (=> start!131964 e!859897))

(declare-fun array_inv!38587 (array!103015) Bool)

(assert (=> start!131964 (array_inv!38587 _keys!618)))

(assert (=> start!131964 tp_is_empty!37921))

(assert (=> start!131964 true))

(assert (=> start!131964 tp!111188))

(declare-fun e!859892 () Bool)

(declare-fun array_inv!38588 (array!103017) Bool)

(assert (=> start!131964 (and (array_inv!38588 _values!470) e!859892)))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun bm!69062 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6577 (array!103015 array!103017 (_ BitVec 32) (_ BitVec 32) V!59005 V!59005 (_ BitVec 32) Int) ListLongMap!22225)

(assert (=> bm!69062 (= call!69062 (getCurrentListMapNoExtraKeys!6577 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544813 () Bool)

(assert (=> b!1544813 (= e!859896 (+!4860 call!69065 (tuple2!24605 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544814 () Bool)

(declare-fun res!1059608 () Bool)

(assert (=> b!1544814 (=> (not res!1059608) (not e!859897))))

(declare-datatypes ((List!36124 0))(
  ( (Nil!36121) (Cons!36120 (h!37566 (_ BitVec 64)) (t!50825 List!36124)) )
))
(declare-fun arrayNoDuplicates!0 (array!103015 (_ BitVec 32) List!36124) Bool)

(assert (=> b!1544814 (= res!1059608 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36121))))

(declare-fun b!1544815 () Bool)

(declare-fun res!1059604 () Bool)

(assert (=> b!1544815 (=> (not res!1059604) (not e!859897))))

(assert (=> b!1544815 (= res!1059604 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50256 _keys!618))))))

(declare-fun b!1544816 () Bool)

(declare-fun e!859895 () Bool)

(assert (=> b!1544816 (= e!859895 tp_is_empty!37921)))

(declare-fun mapNonEmpty!58585 () Bool)

(declare-fun mapRes!58585 () Bool)

(declare-fun tp!111187 () Bool)

(assert (=> mapNonEmpty!58585 (= mapRes!58585 (and tp!111187 e!859894))))

(declare-fun mapKey!58585 () (_ BitVec 32))

(declare-fun mapRest!58585 () (Array (_ BitVec 32) ValueCell!18050))

(declare-fun mapValue!58585 () ValueCell!18050)

(assert (=> mapNonEmpty!58585 (= (arr!49706 _values!470) (store mapRest!58585 mapKey!58585 mapValue!58585))))

(declare-fun mapIsEmpty!58585 () Bool)

(assert (=> mapIsEmpty!58585 mapRes!58585))

(declare-fun b!1544817 () Bool)

(assert (=> b!1544817 (= e!859892 (and e!859895 mapRes!58585))))

(declare-fun condMapEmpty!58585 () Bool)

(declare-fun mapDefault!58585 () ValueCell!18050)

