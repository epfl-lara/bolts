; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!411050 () Bool)

(assert start!411050)

(declare-datatypes ((T!80016 0))(
  ( (T!80017 (val!15275 Int)) )
))
(declare-datatypes ((List!47484 0))(
  ( (Nil!47360) (Cons!47360 (h!52780 T!80016) (t!354069 List!47484)) )
))
(declare-datatypes ((IArray!28689 0))(
  ( (IArray!28690 (innerList!14402 List!47484)) )
))
(declare-fun arr!8 () IArray!28689)

(declare-fun size!34676 (IArray!28689) Int)

(assert (=> start!411050 (> 0 (size!34676 arr!8))))

(declare-fun e!2657000 () Bool)

(declare-fun inv!62739 (IArray!28689) Bool)

(assert (=> start!411050 (and (inv!62739 arr!8) e!2657000)))

(declare-fun b!4279936 () Bool)

(declare-fun tp!1309213 () Bool)

(assert (=> b!4279936 (= e!2657000 tp!1309213)))

(assert (= start!411050 b!4279936))

(declare-fun m!4877751 () Bool)

(assert (=> start!411050 m!4877751))

(declare-fun m!4877753 () Bool)

(assert (=> start!411050 m!4877753))

(push 1)

(assert (not start!411050))

(assert (not b!4279936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1264295 () Bool)

(declare-fun lt!1514650 () Int)

(declare-fun size!34678 (List!47484) Int)

(declare-fun list!17282 (IArray!28689) List!47484)

(assert (=> d!1264295 (= lt!1514650 (size!34678 (list!17282 arr!8)))))

(declare-fun choose!26093 (IArray!28689) Int)

(assert (=> d!1264295 (= lt!1514650 (choose!26093 arr!8))))

(assert (=> d!1264295 (= (size!34676 arr!8) lt!1514650)))

(declare-fun bs!602673 () Bool)

(assert (= bs!602673 d!1264295))

(declare-fun m!4877759 () Bool)

(assert (=> bs!602673 m!4877759))

(assert (=> bs!602673 m!4877759))

(declare-fun m!4877761 () Bool)

(assert (=> bs!602673 m!4877761))

(declare-fun m!4877763 () Bool)

(assert (=> bs!602673 m!4877763))

(assert (=> start!411050 d!1264295))

(declare-fun d!1264299 () Bool)

(assert (=> d!1264299 (= (inv!62739 arr!8) (<= (size!34678 (innerList!14402 arr!8)) 2147483647))))

(declare-fun bs!602674 () Bool)

(assert (= bs!602674 d!1264299))

(declare-fun m!4877765 () Bool)

(assert (=> bs!602674 m!4877765))

(assert (=> start!411050 d!1264299))

(declare-fun b!4279944 () Bool)

(declare-fun e!2657006 () Bool)

(declare-fun tp_is_empty!22959 () Bool)

(declare-fun tp!1309219 () Bool)

(assert (=> b!4279944 (= e!2657006 (and tp_is_empty!22959 tp!1309219))))

(assert (=> b!4279936 (= tp!1309213 e!2657006)))

(assert (= (and b!4279936 (is-Cons!47360 (innerList!14402 arr!8))) b!4279944))

(push 1)

(assert (not d!1264295))

(assert (not d!1264299))

(assert (not b!4279944))

(assert tp_is_empty!22959)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1264303 () Bool)

(declare-fun lt!1514656 () Int)

(assert (=> d!1264303 (>= lt!1514656 0)))

(declare-fun e!2657012 () Int)

(assert (=> d!1264303 (= lt!1514656 e!2657012)))

(declare-fun c!729281 () Bool)

(assert (=> d!1264303 (= c!729281 (is-Nil!47360 (list!17282 arr!8)))))

(assert (=> d!1264303 (= (size!34678 (list!17282 arr!8)) lt!1514656)))

(declare-fun b!4279954 () Bool)

(assert (=> b!4279954 (= e!2657012 0)))

(declare-fun b!4279955 () Bool)

(assert (=> b!4279955 (= e!2657012 (+ 1 (size!34678 (t!354069 (list!17282 arr!8)))))))

(assert (= (and d!1264303 c!729281) b!4279954))

(assert (= (and d!1264303 (not c!729281)) b!4279955))

(declare-fun m!4877775 () Bool)

(assert (=> b!4279955 m!4877775))

(assert (=> d!1264295 d!1264303))

(declare-fun d!1264307 () Bool)

(assert (=> d!1264307 (= (list!17282 arr!8) (innerList!14402 arr!8))))

(assert (=> d!1264295 d!1264307))

(declare-fun d!1264309 () Bool)

(declare-fun _$1!10361 () Int)

(assert (=> d!1264309 (= _$1!10361 (size!34678 (list!17282 arr!8)))))

(assert (=> d!1264309 true))

(assert (=> d!1264309 (= (choose!26093 arr!8) _$1!10361)))

(declare-fun bs!602677 () Bool)

(assert (= bs!602677 d!1264309))

(assert (=> bs!602677 m!4877759))

(assert (=> bs!602677 m!4877759))

(assert (=> bs!602677 m!4877761))

(assert (=> d!1264295 d!1264309))

(declare-fun d!1264311 () Bool)

(declare-fun lt!1514659 () Int)

(assert (=> d!1264311 (>= lt!1514659 0)))

(declare-fun e!2657015 () Int)

(assert (=> d!1264311 (= lt!1514659 e!2657015)))

(declare-fun c!729284 () Bool)

(assert (=> d!1264311 (= c!729284 (is-Nil!47360 (innerList!14402 arr!8)))))

(assert (=> d!1264311 (= (size!34678 (innerList!14402 arr!8)) lt!1514659)))

(declare-fun b!4279960 () Bool)

(assert (=> b!4279960 (= e!2657015 0)))

(declare-fun b!4279961 () Bool)

(assert (=> b!4279961 (= e!2657015 (+ 1 (size!34678 (t!354069 (innerList!14402 arr!8)))))))

(assert (= (and d!1264311 c!729284) b!4279960))

(assert (= (and d!1264311 (not c!729284)) b!4279961))

(declare-fun m!4877777 () Bool)

(assert (=> b!4279961 m!4877777))

(assert (=> d!1264299 d!1264311))

(declare-fun b!4279962 () Bool)

(declare-fun e!2657016 () Bool)

(declare-fun tp!1309223 () Bool)

(assert (=> b!4279962 (= e!2657016 (and tp_is_empty!22959 tp!1309223))))

(assert (=> b!4279944 (= tp!1309219 e!2657016)))

(assert (= (and b!4279944 (is-Cons!47360 (t!354069 (innerList!14402 arr!8)))) b!4279962))

(push 1)

(assert (not b!4279961))

(assert (not b!4279955))

(assert (not b!4279962))

(assert (not d!1264309))

(assert tp_is_empty!22959)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

