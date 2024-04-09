; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87464 () Bool)

(assert start!87464)

(declare-fun b!1012851 () Bool)

(assert (=> b!1012851 true))

(assert (=> b!1012851 true))

(declare-fun b!1012850 () Bool)

(declare-fun res!680266 () Bool)

(declare-fun e!569788 () Bool)

(assert (=> b!1012850 (=> (not res!680266) (not e!569788))))

(declare-datatypes ((B!1368 0))(
  ( (B!1369 (val!11768 Int)) )
))
(declare-datatypes ((tuple2!15172 0))(
  ( (tuple2!15173 (_1!7596 (_ BitVec 64)) (_2!7596 B!1368)) )
))
(declare-datatypes ((List!21497 0))(
  ( (Nil!21494) (Cons!21493 (h!22691 tuple2!15172) (t!30506 List!21497)) )
))
(declare-fun l!412 () List!21497)

(declare-fun value!115 () B!1368)

(assert (=> b!1012850 (= res!680266 (and (not (= (_2!7596 (h!22691 l!412)) value!115)) (is-Cons!21493 l!412)))))

(declare-datatypes ((Unit!33054 0))(
  ( (Unit!33055) )
))
(declare-fun e!569789 () Unit!33054)

(declare-fun lt!447711 () Unit!33054)

(assert (=> b!1012851 (= e!569789 lt!447711)))

(declare-datatypes ((List!21498 0))(
  ( (Nil!21495) (Cons!21494 (h!22692 (_ BitVec 64)) (t!30507 List!21498)) )
))
(declare-fun lt!447710 () List!21498)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!21 (List!21497 List!21498 B!1368 tuple2!15172) Unit!33054)

(assert (=> b!1012851 (= lt!447711 (lemmaForallGetValueByKeySameWithASmallerHead!21 (t!30506 l!412) lt!447710 value!115 (h!22691 l!412)))))

(declare-fun lambda!425 () Int)

(declare-fun forall!226 (List!21498 Int) Bool)

(assert (=> b!1012851 (forall!226 lt!447710 lambda!425)))

(declare-fun res!680265 () Bool)

(assert (=> start!87464 (=> (not res!680265) (not e!569788))))

(declare-fun isStrictlySorted!544 (List!21497) Bool)

(assert (=> start!87464 (= res!680265 (isStrictlySorted!544 l!412))))

(assert (=> start!87464 e!569788))

(declare-fun e!569787 () Bool)

(assert (=> start!87464 e!569787))

(declare-fun tp_is_empty!23435 () Bool)

(assert (=> start!87464 tp_is_empty!23435))

(declare-fun b!1012852 () Bool)

(declare-fun Unit!33056 () Unit!33054)

(assert (=> b!1012852 (= e!569789 Unit!33056)))

(declare-fun b!1012853 () Bool)

(declare-fun tp!70353 () Bool)

(assert (=> b!1012853 (= e!569787 (and tp_is_empty!23435 tp!70353))))

(declare-fun b!1012854 () Bool)

(assert (=> b!1012854 (= e!569788 (not (isStrictlySorted!544 (t!30506 l!412))))))

(declare-fun lt!447709 () Unit!33054)

(assert (=> b!1012854 (= lt!447709 e!569789)))

(declare-fun c!102309 () Bool)

(declare-fun isEmpty!810 (List!21498) Bool)

(assert (=> b!1012854 (= c!102309 (not (isEmpty!810 lt!447710)))))

(declare-fun getKeysOf!30 (List!21497 B!1368) List!21498)

(assert (=> b!1012854 (= lt!447710 (getKeysOf!30 (t!30506 l!412) value!115))))

(assert (= (and start!87464 res!680265) b!1012850))

(assert (= (and b!1012850 res!680266) b!1012854))

(assert (= (and b!1012854 c!102309) b!1012851))

(assert (= (and b!1012854 (not c!102309)) b!1012852))

(assert (= (and start!87464 (is-Cons!21493 l!412)) b!1012853))

(declare-fun m!936291 () Bool)

(assert (=> b!1012851 m!936291))

(declare-fun m!936293 () Bool)

(assert (=> b!1012851 m!936293))

(declare-fun m!936295 () Bool)

(assert (=> start!87464 m!936295))

(declare-fun m!936297 () Bool)

(assert (=> b!1012854 m!936297))

(declare-fun m!936299 () Bool)

(assert (=> b!1012854 m!936299))

(declare-fun m!936301 () Bool)

(assert (=> b!1012854 m!936301))

(push 1)

(assert (not b!1012854))

(assert (not b!1012853))

(assert (not start!87464))

(assert tp_is_empty!23435)

(assert (not b!1012851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120327 () Bool)

(declare-fun res!680290 () Bool)

(declare-fun e!569807 () Bool)

(assert (=> d!120327 (=> res!680290 e!569807)))

(assert (=> d!120327 (= res!680290 (or (is-Nil!21494 (t!30506 l!412)) (is-Nil!21494 (t!30506 (t!30506 l!412)))))))

(assert (=> d!120327 (= (isStrictlySorted!544 (t!30506 l!412)) e!569807)))

(declare-fun b!1012884 () Bool)

(declare-fun e!569808 () Bool)

(assert (=> b!1012884 (= e!569807 e!569808)))

(declare-fun res!680291 () Bool)

(assert (=> b!1012884 (=> (not res!680291) (not e!569808))))

(assert (=> b!1012884 (= res!680291 (bvslt (_1!7596 (h!22691 (t!30506 l!412))) (_1!7596 (h!22691 (t!30506 (t!30506 l!412))))))))

(declare-fun b!1012885 () Bool)

(assert (=> b!1012885 (= e!569808 (isStrictlySorted!544 (t!30506 (t!30506 l!412))))))

(assert (= (and d!120327 (not res!680290)) b!1012884))

(assert (= (and b!1012884 res!680291) b!1012885))

(declare-fun m!936315 () Bool)

(assert (=> b!1012885 m!936315))

(assert (=> b!1012854 d!120327))

(declare-fun d!120331 () Bool)

(assert (=> d!120331 (= (isEmpty!810 lt!447710) (is-Nil!21495 lt!447710))))

(assert (=> b!1012854 d!120331))

(declare-fun bs!28853 () Bool)

(declare-fun b!1012958 () Bool)

(assert (= bs!28853 (and b!1012958 b!1012851)))

(declare-fun lt!447806 () tuple2!15172)

(declare-fun lambda!451 () Int)

(declare-fun lt!447799 () List!21497)

(assert (=> bs!28853 (= (= (Cons!21493 lt!447806 lt!447799) l!412) (= lambda!451 lambda!425))))

(assert (=> b!1012958 true))

(assert (=> b!1012958 true))

(assert (=> b!1012958 true))

(declare-fun bs!28854 () Bool)

(declare-fun b!1012960 () Bool)

(assert (= bs!28854 (and b!1012960 b!1012851)))

(declare-fun lt!447804 () List!21497)

(declare-fun lt!447807 () tuple2!15172)

(declare-fun lambda!454 () Int)

(assert (=> bs!28854 (= (= (Cons!21493 lt!447807 lt!447804) l!412) (= lambda!454 lambda!425))))

(declare-fun bs!28855 () Bool)

(assert (= bs!28855 (and b!1012960 b!1012958)))

(assert (=> bs!28855 (= (= (Cons!21493 lt!447807 lt!447804) (Cons!21493 lt!447806 lt!447799)) (= lambda!454 lambda!451))))

(assert (=> b!1012960 true))

(assert (=> b!1012960 true))

(assert (=> b!1012960 true))

(declare-fun bs!28856 () Bool)

(declare-fun d!120333 () Bool)

(assert (= bs!28856 (and d!120333 b!1012851)))

(declare-fun lambda!455 () Int)

(assert (=> bs!28856 (= (= (t!30506 l!412) l!412) (= lambda!455 lambda!425))))

(declare-fun bs!28857 () Bool)

(assert (= bs!28857 (and d!120333 b!1012958)))

(assert (=> bs!28857 (= (= (t!30506 l!412) (Cons!21493 lt!447806 lt!447799)) (= lambda!455 lambda!451))))

(declare-fun bs!28858 () Bool)

(assert (= bs!28858 (and d!120333 b!1012960)))

(assert (=> bs!28858 (= (= (t!30506 l!412) (Cons!21493 lt!447807 lt!447804)) (= lambda!455 lambda!454))))

(assert (=> d!120333 true))

(assert (=> d!120333 true))

(declare-fun bm!42615 () Bool)

(declare-fun lt!447803 () List!21498)

(declare-fun c!102340 () Bool)

(declare-fun call!42620 () Unit!33054)

(declare-fun lt!447802 () List!21498)

(assert (=> bm!42615 (= call!42620 (lemmaForallGetValueByKeySameWithASmallerHead!21 (ite c!102340 lt!447799 lt!447804) (ite c!102340 lt!447802 lt!447803) value!115 (ite c!102340 lt!447806 lt!447807)))))

(declare-fun b!1012956 () Bool)

(declare-fun lt!447808 () Unit!33054)

(declare-fun e!569852 () Unit!33054)

(assert (=> b!1012956 (= lt!447808 e!569852)))

(declare-fun c!102341 () Bool)

(declare-fun call!42621 () Bool)

(assert (=> b!1012956 (= c!102341 (not call!42621))))

(declare-fun lt!447805 () List!21498)

(declare-fun call!42618 () List!21498)

(assert (=> b!1012956 (= lt!447805 call!42618)))

(declare-fun e!569850 () List!21498)

(assert (=> b!1012956 (= e!569850 call!42618)))

(declare-fun b!1012957 () Bool)

(declare-fun e!569849 () Unit!33054)

(declare-fun Unit!33061 () Unit!33054)

(assert (=> b!1012957 (= e!569849 Unit!33061)))

(declare-fun b!1012959 () Bool)

(declare-fun e!569851 () List!21498)

(assert (=> b!1012959 (= e!569851 e!569850)))

(declare-fun c!102339 () Bool)

(assert (=> b!1012959 (= c!102339 (and (is-Cons!21493 (t!30506 l!412)) (not (= (_2!7596 (h!22691 (t!30506 l!412))) value!115))))))

(declare-fun bm!42616 () Bool)

(assert (=> bm!42616 (= call!42618 (getKeysOf!30 (t!30506 (t!30506 l!412)) value!115))))

(declare-fun bm!42617 () Bool)

(declare-fun call!42619 () Bool)

(assert (=> bm!42617 (= call!42619 (forall!226 (ite c!102340 lt!447802 lt!447803) (ite c!102340 lambda!451 lambda!454)))))

(declare-fun lt!447800 () Unit!33054)

(assert (=> b!1012960 (= e!569852 lt!447800)))

(assert (=> b!1012960 (= lt!447804 (t!30506 (t!30506 l!412)))))

(assert (=> b!1012960 (= lt!447803 call!42618)))

(assert (=> b!1012960 (= lt!447807 (h!22691 (t!30506 l!412)))))

(assert (=> b!1012960 (= lt!447800 call!42620)))

(assert (=> b!1012960 call!42619))

(declare-fun b!1012961 () Bool)

(declare-fun Unit!33062 () Unit!33054)

(assert (=> b!1012961 (= e!569852 Unit!33062)))

(declare-fun b!1012962 () Bool)

(assert (=> b!1012962 (= e!569850 Nil!21495)))

(assert (=> b!1012958 call!42619))

(declare-fun lt!447810 () Unit!33054)

(assert (=> b!1012958 (= lt!447810 call!42620)))

(assert (=> b!1012958 (= lt!447806 (h!22691 (t!30506 l!412)))))

(assert (=> b!1012958 (= lt!447802 call!42618)))

(assert (=> b!1012958 (= lt!447799 (t!30506 (t!30506 l!412)))))

(assert (=> b!1012958 (= e!569849 lt!447810)))

(declare-fun lt!447801 () List!21498)

(assert (=> d!120333 (forall!226 lt!447801 lambda!455)))

(assert (=> d!120333 (= lt!447801 e!569851)))

(assert (=> d!120333 (= c!102340 (and (is-Cons!21493 (t!30506 l!412)) (= (_2!7596 (h!22691 (t!30506 l!412))) value!115)))))

(assert (=> d!120333 (isStrictlySorted!544 (t!30506 l!412))))

(assert (=> d!120333 (= (getKeysOf!30 (t!30506 l!412) value!115) lt!447801)))

(declare-fun bm!42618 () Bool)

(assert (=> bm!42618 (= call!42621 (isEmpty!810 call!42618))))

(declare-fun b!1012963 () Bool)

(assert (=> b!1012963 (= e!569851 (Cons!21494 (_1!7596 (h!22691 (t!30506 l!412))) call!42618))))

(declare-fun c!102338 () Bool)

(assert (=> b!1012963 (= c!102338 (not call!42621))))

(declare-fun lt!447809 () Unit!33054)

(assert (=> b!1012963 (= lt!447809 e!569849)))

(assert (= (and d!120333 c!102340) b!1012963))

(assert (= (and d!120333 (not c!102340)) b!1012959))

(assert (= (and b!1012963 c!102338) b!1012958))

(assert (= (and b!1012963 (not c!102338)) b!1012957))

(assert (= (and b!1012959 c!102339) b!1012956))

(assert (= (and b!1012959 (not c!102339)) b!1012962))

