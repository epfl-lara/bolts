; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132182 () Bool)

(assert start!132182)

(declare-fun b_free!31863 () Bool)

(declare-fun b_next!31863 () Bool)

(assert (=> start!132182 (= b_free!31863 (not b_next!31863))))

(declare-fun tp!111841 () Bool)

(declare-fun b_and!51295 () Bool)

(assert (=> start!132182 (= tp!111841 b_and!51295)))

(declare-fun b!1550164 () Bool)

(declare-fun e!862933 () Bool)

(declare-fun tp_is_empty!38139 () Bool)

(assert (=> b!1550164 (= e!862933 tp_is_empty!38139)))

(declare-fun b!1550165 () Bool)

(declare-fun res!1061933 () Bool)

(declare-fun e!862929 () Bool)

(assert (=> b!1550165 (=> (not res!1061933) (not e!862929))))

(declare-datatypes ((array!103435 0))(
  ( (array!103436 (arr!49915 (Array (_ BitVec 32) (_ BitVec 64))) (size!50466 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103435)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1550165 (= res!1061933 (validKeyInArray!0 (select (arr!49915 _keys!618) from!762)))))

(declare-datatypes ((V!59295 0))(
  ( (V!59296 (val!19147 Int)) )
))
(declare-datatypes ((tuple2!24814 0))(
  ( (tuple2!24815 (_1!12417 (_ BitVec 64)) (_2!12417 V!59295)) )
))
(declare-datatypes ((List!36306 0))(
  ( (Nil!36303) (Cons!36302 (h!37748 tuple2!24814) (t!51019 List!36306)) )
))
(declare-datatypes ((ListLongMap!22435 0))(
  ( (ListLongMap!22436 (toList!11233 List!36306)) )
))
(declare-fun call!70706 () ListLongMap!22435)

(declare-fun c!142482 () Bool)

(declare-fun call!70710 () ListLongMap!22435)

(declare-fun c!142483 () Bool)

(declare-fun bm!70703 () Bool)

(declare-fun zeroValue!436 () V!59295)

(declare-fun call!70708 () ListLongMap!22435)

(declare-fun minValue!436 () V!59295)

(declare-fun call!70709 () ListLongMap!22435)

(declare-fun +!4943 (ListLongMap!22435 tuple2!24814) ListLongMap!22435)

(assert (=> bm!70703 (= call!70708 (+!4943 (ite c!142482 call!70709 (ite c!142483 call!70710 call!70706)) (ite (or c!142482 c!142483) (tuple2!24815 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24815 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1550166 () Bool)

(declare-fun e!862927 () Bool)

(assert (=> b!1550166 (= e!862927 e!862929)))

(declare-fun res!1061935 () Bool)

(assert (=> b!1550166 (=> (not res!1061935) (not e!862929))))

(assert (=> b!1550166 (= res!1061935 (bvslt from!762 (size!50466 _keys!618)))))

(declare-fun lt!668176 () ListLongMap!22435)

(declare-fun e!862932 () ListLongMap!22435)

(assert (=> b!1550166 (= lt!668176 e!862932)))

(declare-fun lt!668177 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1550166 (= c!142482 (and (not lt!668177) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550166 (= lt!668177 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!58912 () Bool)

(declare-fun mapRes!58912 () Bool)

(assert (=> mapIsEmpty!58912 mapRes!58912))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18159 0))(
  ( (ValueCellFull!18159 (v!21945 V!59295)) (EmptyCell!18159) )
))
(declare-datatypes ((array!103437 0))(
  ( (array!103438 (arr!49916 (Array (_ BitVec 32) ValueCell!18159)) (size!50467 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103437)

(declare-fun bm!70704 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6664 (array!103435 array!103437 (_ BitVec 32) (_ BitVec 32) V!59295 V!59295 (_ BitVec 32) Int) ListLongMap!22435)

(assert (=> bm!70704 (= call!70709 (getCurrentListMapNoExtraKeys!6664 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550167 () Bool)

(declare-fun res!1061939 () Bool)

(assert (=> b!1550167 (=> (not res!1061939) (not e!862927))))

(assert (=> b!1550167 (= res!1061939 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50466 _keys!618))))))

(declare-fun b!1550168 () Bool)

(declare-fun res!1061934 () Bool)

(assert (=> b!1550168 (=> (not res!1061934) (not e!862927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103435 (_ BitVec 32)) Bool)

(assert (=> b!1550168 (= res!1061934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550169 () Bool)

(assert (=> b!1550169 (= e!862929 false)))

(declare-fun lt!668175 () ListLongMap!22435)

(assert (=> b!1550169 (= lt!668175 (getCurrentListMapNoExtraKeys!6664 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1061937 () Bool)

(assert (=> start!132182 (=> (not res!1061937) (not e!862927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132182 (= res!1061937 (validMask!0 mask!926))))

(assert (=> start!132182 e!862927))

(declare-fun array_inv!38735 (array!103435) Bool)

(assert (=> start!132182 (array_inv!38735 _keys!618)))

(assert (=> start!132182 tp_is_empty!38139))

(assert (=> start!132182 true))

(assert (=> start!132182 tp!111841))

(declare-fun e!862925 () Bool)

(declare-fun array_inv!38736 (array!103437) Bool)

(assert (=> start!132182 (and (array_inv!38736 _values!470) e!862925)))

(declare-fun b!1550170 () Bool)

(declare-fun res!1061938 () Bool)

(assert (=> b!1550170 (=> (not res!1061938) (not e!862927))))

(declare-datatypes ((List!36307 0))(
  ( (Nil!36304) (Cons!36303 (h!37749 (_ BitVec 64)) (t!51020 List!36307)) )
))
(declare-fun arrayNoDuplicates!0 (array!103435 (_ BitVec 32) List!36307) Bool)

(assert (=> b!1550170 (= res!1061938 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36304))))

(declare-fun bm!70705 () Bool)

(assert (=> bm!70705 (= call!70710 call!70709)))

(declare-fun b!1550171 () Bool)

(declare-fun e!862926 () ListLongMap!22435)

(assert (=> b!1550171 (= e!862926 call!70706)))

(declare-fun b!1550172 () Bool)

(declare-fun c!142484 () Bool)

(assert (=> b!1550172 (= c!142484 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668177))))

(declare-fun e!862931 () ListLongMap!22435)

(assert (=> b!1550172 (= e!862931 e!862926)))

(declare-fun bm!70706 () Bool)

(assert (=> bm!70706 (= call!70706 call!70710)))

(declare-fun bm!70707 () Bool)

(declare-fun call!70707 () ListLongMap!22435)

(assert (=> bm!70707 (= call!70707 call!70708)))

(declare-fun b!1550173 () Bool)

(assert (=> b!1550173 (= e!862932 (+!4943 call!70708 (tuple2!24815 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550174 () Bool)

(assert (=> b!1550174 (= e!862931 call!70707)))

(declare-fun b!1550175 () Bool)

(declare-fun res!1061936 () Bool)

(assert (=> b!1550175 (=> (not res!1061936) (not e!862927))))

(assert (=> b!1550175 (= res!1061936 (and (= (size!50467 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50466 _keys!618) (size!50467 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58912 () Bool)

(declare-fun tp!111842 () Bool)

(assert (=> mapNonEmpty!58912 (= mapRes!58912 (and tp!111842 e!862933))))

(declare-fun mapRest!58912 () (Array (_ BitVec 32) ValueCell!18159))

(declare-fun mapKey!58912 () (_ BitVec 32))

(declare-fun mapValue!58912 () ValueCell!18159)

(assert (=> mapNonEmpty!58912 (= (arr!49916 _values!470) (store mapRest!58912 mapKey!58912 mapValue!58912))))

(declare-fun b!1550176 () Bool)

(assert (=> b!1550176 (= e!862932 e!862931)))

(assert (=> b!1550176 (= c!142483 (and (not lt!668177) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1550177 () Bool)

(declare-fun e!862928 () Bool)

(assert (=> b!1550177 (= e!862928 tp_is_empty!38139)))

(declare-fun b!1550178 () Bool)

(assert (=> b!1550178 (= e!862926 call!70707)))

(declare-fun b!1550179 () Bool)

(assert (=> b!1550179 (= e!862925 (and e!862928 mapRes!58912))))

(declare-fun condMapEmpty!58912 () Bool)

(declare-fun mapDefault!58912 () ValueCell!18159)

(assert (=> b!1550179 (= condMapEmpty!58912 (= (arr!49916 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18159)) mapDefault!58912)))))

(assert (= (and start!132182 res!1061937) b!1550175))

(assert (= (and b!1550175 res!1061936) b!1550168))

(assert (= (and b!1550168 res!1061934) b!1550170))

(assert (= (and b!1550170 res!1061938) b!1550167))

(assert (= (and b!1550167 res!1061939) b!1550166))

(assert (= (and b!1550166 c!142482) b!1550173))

(assert (= (and b!1550166 (not c!142482)) b!1550176))

(assert (= (and b!1550176 c!142483) b!1550174))

(assert (= (and b!1550176 (not c!142483)) b!1550172))

(assert (= (and b!1550172 c!142484) b!1550178))

(assert (= (and b!1550172 (not c!142484)) b!1550171))

(assert (= (or b!1550178 b!1550171) bm!70706))

(assert (= (or b!1550174 bm!70706) bm!70705))

(assert (= (or b!1550174 b!1550178) bm!70707))

(assert (= (or b!1550173 bm!70705) bm!70704))

(assert (= (or b!1550173 bm!70707) bm!70703))

(assert (= (and b!1550166 res!1061935) b!1550165))

(assert (= (and b!1550165 res!1061933) b!1550169))

(assert (= (and b!1550179 condMapEmpty!58912) mapIsEmpty!58912))

(assert (= (and b!1550179 (not condMapEmpty!58912)) mapNonEmpty!58912))

(get-info :version)

(assert (= (and mapNonEmpty!58912 ((_ is ValueCellFull!18159) mapValue!58912)) b!1550164))

(assert (= (and b!1550179 ((_ is ValueCellFull!18159) mapDefault!58912)) b!1550177))

(assert (= start!132182 b!1550179))

(declare-fun m!1429205 () Bool)

(assert (=> b!1550170 m!1429205))

(declare-fun m!1429207 () Bool)

(assert (=> b!1550168 m!1429207))

(declare-fun m!1429209 () Bool)

(assert (=> b!1550169 m!1429209))

(declare-fun m!1429211 () Bool)

(assert (=> b!1550165 m!1429211))

(assert (=> b!1550165 m!1429211))

(declare-fun m!1429213 () Bool)

(assert (=> b!1550165 m!1429213))

(assert (=> bm!70704 m!1429209))

(declare-fun m!1429215 () Bool)

(assert (=> start!132182 m!1429215))

(declare-fun m!1429217 () Bool)

(assert (=> start!132182 m!1429217))

(declare-fun m!1429219 () Bool)

(assert (=> start!132182 m!1429219))

(declare-fun m!1429221 () Bool)

(assert (=> bm!70703 m!1429221))

(declare-fun m!1429223 () Bool)

(assert (=> b!1550173 m!1429223))

(declare-fun m!1429225 () Bool)

(assert (=> mapNonEmpty!58912 m!1429225))

(check-sat (not b!1550169) (not b_next!31863) (not b!1550168) (not b!1550173) tp_is_empty!38139 (not mapNonEmpty!58912) (not bm!70704) (not b!1550165) (not b!1550170) (not start!132182) (not bm!70703) b_and!51295)
(check-sat b_and!51295 (not b_next!31863))
