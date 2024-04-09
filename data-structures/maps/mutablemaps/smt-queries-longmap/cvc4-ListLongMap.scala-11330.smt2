; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131920 () Bool)

(assert start!131920)

(declare-fun b_free!31601 () Bool)

(declare-fun b_next!31601 () Bool)

(assert (=> start!131920 (= b_free!31601 (not b_next!31601))))

(declare-fun tp!111056 () Bool)

(declare-fun b_and!51021 () Bool)

(assert (=> start!131920 (= tp!111056 b_and!51021)))

(declare-fun b!1543884 () Bool)

(declare-datatypes ((V!58945 0))(
  ( (V!58946 (val!19016 Int)) )
))
(declare-datatypes ((tuple2!24562 0))(
  ( (tuple2!24563 (_1!12291 (_ BitVec 64)) (_2!12291 V!58945)) )
))
(declare-datatypes ((List!36086 0))(
  ( (Nil!36083) (Cons!36082 (h!37528 tuple2!24562) (t!50787 List!36086)) )
))
(declare-datatypes ((ListLongMap!22183 0))(
  ( (ListLongMap!22184 (toList!11107 List!36086)) )
))
(declare-fun e!859368 () ListLongMap!22183)

(declare-fun call!68736 () ListLongMap!22183)

(assert (=> b!1543884 (= e!859368 call!68736)))

(declare-fun b!1543885 () Bool)

(declare-fun e!859364 () ListLongMap!22183)

(declare-fun call!68732 () ListLongMap!22183)

(declare-fun minValue!436 () V!58945)

(declare-fun +!4845 (ListLongMap!22183 tuple2!24562) ListLongMap!22183)

(assert (=> b!1543885 (= e!859364 (+!4845 call!68732 (tuple2!24563 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!68729 () Bool)

(declare-fun call!68735 () ListLongMap!22183)

(assert (=> bm!68729 (= call!68735 call!68732)))

(declare-fun res!1059278 () Bool)

(declare-fun e!859369 () Bool)

(assert (=> start!131920 (=> (not res!1059278) (not e!859369))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131920 (= res!1059278 (validMask!0 mask!926))))

(assert (=> start!131920 e!859369))

(declare-datatypes ((array!102929 0))(
  ( (array!102930 (arr!49662 (Array (_ BitVec 32) (_ BitVec 64))) (size!50213 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102929)

(declare-fun array_inv!38555 (array!102929) Bool)

(assert (=> start!131920 (array_inv!38555 _keys!618)))

(declare-fun tp_is_empty!37877 () Bool)

(assert (=> start!131920 tp_is_empty!37877))

(assert (=> start!131920 true))

(assert (=> start!131920 tp!111056))

(declare-datatypes ((ValueCell!18028 0))(
  ( (ValueCellFull!18028 (v!21814 V!58945)) (EmptyCell!18028) )
))
(declare-datatypes ((array!102931 0))(
  ( (array!102932 (arr!49663 (Array (_ BitVec 32) ValueCell!18028)) (size!50214 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102931)

(declare-fun e!859366 () Bool)

(declare-fun array_inv!38556 (array!102931) Bool)

(assert (=> start!131920 (and (array_inv!38556 _values!470) e!859366)))

(declare-fun b!1543886 () Bool)

(declare-fun c!141268 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!665998 () Bool)

(assert (=> b!1543886 (= c!141268 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!665998))))

(declare-fun e!859367 () ListLongMap!22183)

(assert (=> b!1543886 (= e!859367 e!859368)))

(declare-fun b!1543887 () Bool)

(declare-fun res!1059274 () Bool)

(assert (=> b!1543887 (=> (not res!1059274) (not e!859369))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1543887 (= res!1059274 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50213 _keys!618))))))

(declare-fun b!1543888 () Bool)

(assert (=> b!1543888 (= e!859368 call!68735)))

(declare-fun b!1543889 () Bool)

(declare-fun res!1059277 () Bool)

(assert (=> b!1543889 (=> (not res!1059277) (not e!859369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102929 (_ BitVec 32)) Bool)

(assert (=> b!1543889 (= res!1059277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543890 () Bool)

(declare-fun e!859363 () Bool)

(assert (=> b!1543890 (= e!859363 tp_is_empty!37877)))

(declare-fun bm!68730 () Bool)

(declare-fun call!68733 () ListLongMap!22183)

(assert (=> bm!68730 (= call!68736 call!68733)))

(declare-fun b!1543891 () Bool)

(declare-fun e!859365 () Bool)

(assert (=> b!1543891 (= e!859365 tp_is_empty!37877)))

(declare-fun mapNonEmpty!58519 () Bool)

(declare-fun mapRes!58519 () Bool)

(declare-fun tp!111055 () Bool)

(assert (=> mapNonEmpty!58519 (= mapRes!58519 (and tp!111055 e!859363))))

(declare-fun mapValue!58519 () ValueCell!18028)

(declare-fun mapRest!58519 () (Array (_ BitVec 32) ValueCell!18028))

(declare-fun mapKey!58519 () (_ BitVec 32))

(assert (=> mapNonEmpty!58519 (= (arr!49663 _values!470) (store mapRest!58519 mapKey!58519 mapValue!58519))))

(declare-fun b!1543892 () Bool)

(declare-fun res!1059275 () Bool)

(assert (=> b!1543892 (=> (not res!1059275) (not e!859369))))

(assert (=> b!1543892 (= res!1059275 (and (= (size!50214 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50213 _keys!618) (size!50214 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543893 () Bool)

(assert (=> b!1543893 (= e!859367 call!68735)))

(declare-fun b!1543894 () Bool)

(declare-fun res!1059276 () Bool)

(assert (=> b!1543894 (=> (not res!1059276) (not e!859369))))

(declare-datatypes ((List!36087 0))(
  ( (Nil!36084) (Cons!36083 (h!37529 (_ BitVec 64)) (t!50788 List!36087)) )
))
(declare-fun arrayNoDuplicates!0 (array!102929 (_ BitVec 32) List!36087) Bool)

(assert (=> b!1543894 (= res!1059276 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36084))))

(declare-fun bm!68731 () Bool)

(declare-fun call!68734 () ListLongMap!22183)

(assert (=> bm!68731 (= call!68733 call!68734)))

(declare-fun b!1543895 () Bool)

(assert (=> b!1543895 (= e!859369 false)))

(declare-fun lt!665999 () ListLongMap!22183)

(assert (=> b!1543895 (= lt!665999 e!859364)))

(declare-fun c!141269 () Bool)

(assert (=> b!1543895 (= c!141269 (and (not lt!665998) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1543895 (= lt!665998 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!436 () V!58945)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68732 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6559 (array!102929 array!102931 (_ BitVec 32) (_ BitVec 32) V!58945 V!58945 (_ BitVec 32) Int) ListLongMap!22183)

(assert (=> bm!68732 (= call!68734 (getCurrentListMapNoExtraKeys!6559 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58519 () Bool)

(assert (=> mapIsEmpty!58519 mapRes!58519))

(declare-fun b!1543896 () Bool)

(assert (=> b!1543896 (= e!859364 e!859367)))

(declare-fun c!141267 () Bool)

(assert (=> b!1543896 (= c!141267 (and (not lt!665998) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!68733 () Bool)

(assert (=> bm!68733 (= call!68732 (+!4845 (ite c!141269 call!68734 (ite c!141267 call!68733 call!68736)) (ite (or c!141269 c!141267) (tuple2!24563 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24563 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1543897 () Bool)

(assert (=> b!1543897 (= e!859366 (and e!859365 mapRes!58519))))

(declare-fun condMapEmpty!58519 () Bool)

(declare-fun mapDefault!58519 () ValueCell!18028)

