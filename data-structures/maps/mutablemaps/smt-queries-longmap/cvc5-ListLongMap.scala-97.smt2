; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1500 () Bool)

(assert start!1500)

(declare-fun b_free!445 () Bool)

(declare-fun b_next!445 () Bool)

(assert (=> start!1500 (= b_free!445 (not b_next!445))))

(declare-fun tp!1859 () Bool)

(declare-fun b_and!741 () Bool)

(assert (=> start!1500 (= tp!1859 b_and!741)))

(declare-fun b!11300 () Bool)

(declare-fun e!6668 () Bool)

(declare-fun tp_is_empty!559 () Bool)

(declare-fun tp!1857 () Bool)

(assert (=> b!11300 (= e!6668 (and tp_is_empty!559 tp!1857))))

(declare-fun b!11301 () Bool)

(declare-fun e!6671 () Bool)

(declare-fun tp!1858 () Bool)

(assert (=> b!11301 (= e!6671 tp!1858)))

(declare-fun b!11303 () Bool)

(declare-fun e!6670 () Bool)

(declare-fun e!6669 () Bool)

(assert (=> b!11303 (= e!6670 (not e!6669))))

(declare-fun res!9432 () Bool)

(assert (=> b!11303 (=> res!9432 e!6669)))

(declare-datatypes ((B!386 0))(
  ( (B!387 (val!288 Int)) )
))
(declare-datatypes ((tuple2!358 0))(
  ( (tuple2!359 (_1!179 (_ BitVec 64)) (_2!179 B!386)) )
))
(declare-fun lt!2842 () tuple2!358)

(declare-datatypes ((List!335 0))(
  ( (Nil!332) (Cons!331 (h!897 tuple2!358) (t!2620 List!335)) )
))
(declare-datatypes ((ListLongMap!339 0))(
  ( (ListLongMap!340 (toList!185 List!335)) )
))
(declare-fun lm!227 () ListLongMap!339)

(declare-fun p!216 () Int)

(declare-fun forall!59 (List!335 Int) Bool)

(declare-fun +!26 (ListLongMap!339 tuple2!358) ListLongMap!339)

(assert (=> b!11303 (= res!9432 (not (forall!59 (toList!185 (+!26 lm!227 lt!2842)) p!216)))))

(declare-fun lt!2843 () List!335)

(declare-fun kvs!4 () List!335)

(declare-fun tail!53 (List!335) List!335)

(assert (=> b!11303 (= lt!2843 (tail!53 kvs!4))))

(assert (=> b!11303 (forall!59 (toList!185 (+!26 lm!227 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))) p!216)))

(declare-datatypes ((Unit!239 0))(
  ( (Unit!240) )
))
(declare-fun lt!2844 () Unit!239)

(declare-fun addValidProp!14 (ListLongMap!339 Int (_ BitVec 64) B!386) Unit!239)

(assert (=> b!11303 (= lt!2844 (addValidProp!14 lm!227 p!216 (_1!179 lt!2842) (_2!179 lt!2842)))))

(declare-fun head!773 (List!335) tuple2!358)

(assert (=> b!11303 (= lt!2842 (head!773 kvs!4))))

(declare-fun b!11304 () Bool)

(declare-fun res!9433 () Bool)

(assert (=> b!11304 (=> res!9433 e!6669)))

(assert (=> b!11304 (= res!9433 (not (forall!59 lt!2843 p!216)))))

(declare-fun b!11305 () Bool)

(declare-fun res!9431 () Bool)

(assert (=> b!11305 (=> (not res!9431) (not e!6670))))

(declare-fun isEmpty!66 (List!335) Bool)

(assert (=> b!11305 (= res!9431 (not (isEmpty!66 kvs!4)))))

(declare-fun b!11306 () Bool)

(declare-fun ListPrimitiveSize!10 (List!335) Int)

(assert (=> b!11306 (= e!6669 (< (ListPrimitiveSize!10 lt!2843) (ListPrimitiveSize!10 kvs!4)))))

(declare-fun b!11302 () Bool)

(declare-fun res!9430 () Bool)

(assert (=> b!11302 (=> (not res!9430) (not e!6670))))

(assert (=> b!11302 (= res!9430 (forall!59 kvs!4 p!216))))

(declare-fun res!9429 () Bool)

(assert (=> start!1500 (=> (not res!9429) (not e!6670))))

(assert (=> start!1500 (= res!9429 (forall!59 (toList!185 lm!227) p!216))))

(assert (=> start!1500 e!6670))

(declare-fun inv!558 (ListLongMap!339) Bool)

(assert (=> start!1500 (and (inv!558 lm!227) e!6671)))

(assert (=> start!1500 tp!1859))

(assert (=> start!1500 e!6668))

(assert (= (and start!1500 res!9429) b!11302))

(assert (= (and b!11302 res!9430) b!11305))

(assert (= (and b!11305 res!9431) b!11303))

(assert (= (and b!11303 (not res!9432)) b!11304))

(assert (= (and b!11304 (not res!9433)) b!11306))

(assert (= start!1500 b!11301))

(assert (= (and start!1500 (is-Cons!331 kvs!4)) b!11300))

(declare-fun m!7583 () Bool)

(assert (=> b!11306 m!7583))

(declare-fun m!7585 () Bool)

(assert (=> b!11306 m!7585))

(declare-fun m!7587 () Bool)

(assert (=> start!1500 m!7587))

(declare-fun m!7589 () Bool)

(assert (=> start!1500 m!7589))

(declare-fun m!7591 () Bool)

(assert (=> b!11304 m!7591))

(declare-fun m!7593 () Bool)

(assert (=> b!11303 m!7593))

(declare-fun m!7595 () Bool)

(assert (=> b!11303 m!7595))

(declare-fun m!7597 () Bool)

(assert (=> b!11303 m!7597))

(declare-fun m!7599 () Bool)

(assert (=> b!11303 m!7599))

(declare-fun m!7601 () Bool)

(assert (=> b!11303 m!7601))

(declare-fun m!7603 () Bool)

(assert (=> b!11303 m!7603))

(declare-fun m!7605 () Bool)

(assert (=> b!11303 m!7605))

(declare-fun m!7607 () Bool)

(assert (=> b!11305 m!7607))

(declare-fun m!7609 () Bool)

(assert (=> b!11302 m!7609))

(push 1)

(assert (not b!11302))

(assert tp_is_empty!559)

(assert (not b!11305))

(assert (not b!11303))

(assert (not b!11304))

(assert b_and!741)

(assert (not b!11301))

(assert (not b!11306))

(assert (not start!1500))

(assert (not b_next!445))

(assert (not b!11300))

(check-sat)

(pop 1)

(push 1)

(assert b_and!741)

(assert (not b_next!445))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1411 () Bool)

(declare-fun res!9472 () Bool)

(declare-fun e!6708 () Bool)

(assert (=> d!1411 (=> res!9472 e!6708)))

(assert (=> d!1411 (= res!9472 (is-Nil!332 lt!2843))))

(assert (=> d!1411 (= (forall!59 lt!2843 p!216) e!6708)))

(declare-fun b!11365 () Bool)

(declare-fun e!6709 () Bool)

(assert (=> b!11365 (= e!6708 e!6709)))

(declare-fun res!9473 () Bool)

(assert (=> b!11365 (=> (not res!9473) (not e!6709))))

(declare-fun dynLambda!70 (Int tuple2!358) Bool)

(assert (=> b!11365 (= res!9473 (dynLambda!70 p!216 (h!897 lt!2843)))))

(declare-fun b!11366 () Bool)

(assert (=> b!11366 (= e!6709 (forall!59 (t!2620 lt!2843) p!216))))

(assert (= (and d!1411 (not res!9472)) b!11365))

(assert (= (and b!11365 res!9473) b!11366))

(declare-fun b_lambda!635 () Bool)

(assert (=> (not b_lambda!635) (not b!11365)))

(declare-fun t!2624 () Bool)

(declare-fun tb!285 () Bool)

(assert (=> (and start!1500 (= p!216 p!216) t!2624) tb!285))

(declare-fun result!453 () Bool)

(assert (=> tb!285 (= result!453 true)))

(assert (=> b!11365 t!2624))

(declare-fun b_and!747 () Bool)

(assert (= b_and!741 (and (=> t!2624 result!453) b_and!747)))

(declare-fun m!7671 () Bool)

(assert (=> b!11365 m!7671))

(declare-fun m!7673 () Bool)

(assert (=> b!11366 m!7673))

(assert (=> b!11304 d!1411))

(declare-fun d!1417 () Bool)

(declare-fun e!6725 () Bool)

(assert (=> d!1417 e!6725))

(declare-fun res!9491 () Bool)

(assert (=> d!1417 (=> (not res!9491) (not e!6725))))

(declare-fun lt!2878 () ListLongMap!339)

(declare-fun contains!149 (ListLongMap!339 (_ BitVec 64)) Bool)

(assert (=> d!1417 (= res!9491 (contains!149 lt!2878 (_1!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))))))

(declare-fun lt!2880 () List!335)

(assert (=> d!1417 (= lt!2878 (ListLongMap!340 lt!2880))))

(declare-fun lt!2881 () Unit!239)

(declare-fun lt!2879 () Unit!239)

(assert (=> d!1417 (= lt!2881 lt!2879)))

(declare-datatypes ((Option!32 0))(
  ( (Some!31 (v!1346 B!386)) (None!30) )
))
(declare-fun getValueByKey!26 (List!335 (_ BitVec 64)) Option!32)

(assert (=> d!1417 (= (getValueByKey!26 lt!2880 (_1!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))) (Some!31 (_2!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!10 (List!335 (_ BitVec 64) B!386) Unit!239)

(assert (=> d!1417 (= lt!2879 (lemmaContainsTupThenGetReturnValue!10 lt!2880 (_1!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842))) (_2!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))))))

(declare-fun insertStrictlySorted!10 (List!335 (_ BitVec 64) B!386) List!335)

(assert (=> d!1417 (= lt!2880 (insertStrictlySorted!10 (toList!185 lm!227) (_1!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842))) (_2!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))))))

(assert (=> d!1417 (= (+!26 lm!227 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842))) lt!2878)))

(declare-fun b!11385 () Bool)

(declare-fun res!9492 () Bool)

(assert (=> b!11385 (=> (not res!9492) (not e!6725))))

(assert (=> b!11385 (= res!9492 (= (getValueByKey!26 (toList!185 lt!2878) (_1!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))) (Some!31 (_2!179 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842))))))))

(declare-fun b!11386 () Bool)

(declare-fun contains!150 (List!335 tuple2!358) Bool)

(assert (=> b!11386 (= e!6725 (contains!150 (toList!185 lt!2878) (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842))))))

(assert (= (and d!1417 res!9491) b!11385))

(assert (= (and b!11385 res!9492) b!11386))

(declare-fun m!7693 () Bool)

(assert (=> d!1417 m!7693))

(declare-fun m!7695 () Bool)

(assert (=> d!1417 m!7695))

(declare-fun m!7697 () Bool)

(assert (=> d!1417 m!7697))

(declare-fun m!7699 () Bool)

(assert (=> d!1417 m!7699))

(declare-fun m!7701 () Bool)

(assert (=> b!11385 m!7701))

(declare-fun m!7703 () Bool)

(assert (=> b!11386 m!7703))

(assert (=> b!11303 d!1417))

(declare-fun d!1433 () Bool)

(assert (=> d!1433 (forall!59 (toList!185 (+!26 lm!227 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))) p!216)))

(declare-fun lt!2895 () Unit!239)

(declare-fun choose!157 (ListLongMap!339 Int (_ BitVec 64) B!386) Unit!239)

(assert (=> d!1433 (= lt!2895 (choose!157 lm!227 p!216 (_1!179 lt!2842) (_2!179 lt!2842)))))

(declare-fun e!6733 () Bool)

(assert (=> d!1433 e!6733))

(declare-fun res!9500 () Bool)

(assert (=> d!1433 (=> (not res!9500) (not e!6733))))

(assert (=> d!1433 (= res!9500 (forall!59 (toList!185 lm!227) p!216))))

(assert (=> d!1433 (= (addValidProp!14 lm!227 p!216 (_1!179 lt!2842) (_2!179 lt!2842)) lt!2895)))

(declare-fun b!11394 () Bool)

(assert (=> b!11394 (= e!6733 (dynLambda!70 p!216 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842))))))

(assert (= (and d!1433 res!9500) b!11394))

(declare-fun b_lambda!647 () Bool)

(assert (=> (not b_lambda!647) (not b!11394)))

(declare-fun t!2636 () Bool)

(declare-fun tb!297 () Bool)

(assert (=> (and start!1500 (= p!216 p!216) t!2636) tb!297))

(declare-fun result!465 () Bool)

(assert (=> tb!297 (= result!465 true)))

(assert (=> b!11394 t!2636))

(declare-fun b_and!759 () Bool)

(assert (= b_and!747 (and (=> t!2636 result!465) b_and!759)))

(assert (=> d!1433 m!7595))

(assert (=> d!1433 m!7599))

(declare-fun m!7709 () Bool)

(assert (=> d!1433 m!7709))

(assert (=> d!1433 m!7587))

(declare-fun m!7711 () Bool)

(assert (=> b!11394 m!7711))

(assert (=> b!11303 d!1433))

(declare-fun d!1437 () Bool)

(assert (=> d!1437 (= (tail!53 kvs!4) (t!2620 kvs!4))))

(assert (=> b!11303 d!1437))

(declare-fun d!1439 () Bool)

(declare-fun e!6734 () Bool)

(assert (=> d!1439 e!6734))

(declare-fun res!9503 () Bool)

(assert (=> d!1439 (=> (not res!9503) (not e!6734))))

(declare-fun lt!2896 () ListLongMap!339)

(assert (=> d!1439 (= res!9503 (contains!149 lt!2896 (_1!179 lt!2842)))))

(declare-fun lt!2898 () List!335)

(assert (=> d!1439 (= lt!2896 (ListLongMap!340 lt!2898))))

(declare-fun lt!2899 () Unit!239)

(declare-fun lt!2897 () Unit!239)

(assert (=> d!1439 (= lt!2899 lt!2897)))

(assert (=> d!1439 (= (getValueByKey!26 lt!2898 (_1!179 lt!2842)) (Some!31 (_2!179 lt!2842)))))

(assert (=> d!1439 (= lt!2897 (lemmaContainsTupThenGetReturnValue!10 lt!2898 (_1!179 lt!2842) (_2!179 lt!2842)))))

(assert (=> d!1439 (= lt!2898 (insertStrictlySorted!10 (toList!185 lm!227) (_1!179 lt!2842) (_2!179 lt!2842)))))

(assert (=> d!1439 (= (+!26 lm!227 lt!2842) lt!2896)))

(declare-fun b!11399 () Bool)

(declare-fun res!9504 () Bool)

(assert (=> b!11399 (=> (not res!9504) (not e!6734))))

(assert (=> b!11399 (= res!9504 (= (getValueByKey!26 (toList!185 lt!2896) (_1!179 lt!2842)) (Some!31 (_2!179 lt!2842))))))

(declare-fun b!11400 () Bool)

(assert (=> b!11400 (= e!6734 (contains!150 (toList!185 lt!2896) lt!2842))))

(assert (= (and d!1439 res!9503) b!11399))

(assert (= (and b!11399 res!9504) b!11400))

(declare-fun m!7713 () Bool)

(assert (=> d!1439 m!7713))

(declare-fun m!7715 () Bool)

(assert (=> d!1439 m!7715))

(declare-fun m!7717 () Bool)

(assert (=> d!1439 m!7717))

(declare-fun m!7719 () Bool)

(assert (=> d!1439 m!7719))

(declare-fun m!7723 () Bool)

(assert (=> b!11399 m!7723))

(declare-fun m!7727 () Bool)

(assert (=> b!11400 m!7727))

(assert (=> b!11303 d!1439))

(declare-fun d!1441 () Bool)

(assert (=> d!1441 (= (head!773 kvs!4) (h!897 kvs!4))))

(assert (=> b!11303 d!1441))

(declare-fun d!1445 () Bool)

(declare-fun res!9513 () Bool)

(declare-fun e!6740 () Bool)

(assert (=> d!1445 (=> res!9513 e!6740)))

(assert (=> d!1445 (= res!9513 (is-Nil!332 (toList!185 (+!26 lm!227 lt!2842))))))

(assert (=> d!1445 (= (forall!59 (toList!185 (+!26 lm!227 lt!2842)) p!216) e!6740)))

(declare-fun b!11409 () Bool)

(declare-fun e!6741 () Bool)

(assert (=> b!11409 (= e!6740 e!6741)))

(declare-fun res!9514 () Bool)

(assert (=> b!11409 (=> (not res!9514) (not e!6741))))

(assert (=> b!11409 (= res!9514 (dynLambda!70 p!216 (h!897 (toList!185 (+!26 lm!227 lt!2842)))))))

(declare-fun b!11410 () Bool)

(assert (=> b!11410 (= e!6741 (forall!59 (t!2620 (toList!185 (+!26 lm!227 lt!2842))) p!216))))

(assert (= (and d!1445 (not res!9513)) b!11409))

(assert (= (and b!11409 res!9514) b!11410))

(declare-fun b_lambda!651 () Bool)

(assert (=> (not b_lambda!651) (not b!11409)))

(declare-fun t!2640 () Bool)

(declare-fun tb!301 () Bool)

(assert (=> (and start!1500 (= p!216 p!216) t!2640) tb!301))

(declare-fun result!469 () Bool)

(assert (=> tb!301 (= result!469 true)))

(assert (=> b!11409 t!2640))

(declare-fun b_and!763 () Bool)

(assert (= b_and!759 (and (=> t!2640 result!469) b_and!763)))

(declare-fun m!7741 () Bool)

(assert (=> b!11409 m!7741))

(declare-fun m!7743 () Bool)

(assert (=> b!11410 m!7743))

(assert (=> b!11303 d!1445))

(declare-fun d!1449 () Bool)

(declare-fun res!9517 () Bool)

(declare-fun e!6743 () Bool)

(assert (=> d!1449 (=> res!9517 e!6743)))

(assert (=> d!1449 (= res!9517 (is-Nil!332 (toList!185 (+!26 lm!227 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842))))))))

(assert (=> d!1449 (= (forall!59 (toList!185 (+!26 lm!227 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))) p!216) e!6743)))

(declare-fun b!11413 () Bool)

(declare-fun e!6744 () Bool)

(assert (=> b!11413 (= e!6743 e!6744)))

(declare-fun res!9518 () Bool)

(assert (=> b!11413 (=> (not res!9518) (not e!6744))))

(assert (=> b!11413 (= res!9518 (dynLambda!70 p!216 (h!897 (toList!185 (+!26 lm!227 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842)))))))))

(declare-fun b!11414 () Bool)

(assert (=> b!11414 (= e!6744 (forall!59 (t!2620 (toList!185 (+!26 lm!227 (tuple2!359 (_1!179 lt!2842) (_2!179 lt!2842))))) p!216))))

(assert (= (and d!1449 (not res!9517)) b!11413))

(assert (= (and b!11413 res!9518) b!11414))

(declare-fun b_lambda!653 () Bool)

(assert (=> (not b_lambda!653) (not b!11413)))

(declare-fun t!2642 () Bool)

(declare-fun tb!303 () Bool)

(assert (=> (and start!1500 (= p!216 p!216) t!2642) tb!303))

(declare-fun result!471 () Bool)

(assert (=> tb!303 (= result!471 true)))

(assert (=> b!11413 t!2642))

(declare-fun b_and!765 () Bool)

(assert (= b_and!763 (and (=> t!2642 result!471) b_and!765)))

(declare-fun m!7759 () Bool)

(assert (=> b!11413 m!7759))

(declare-fun m!7765 () Bool)

(assert (=> b!11414 m!7765))

(assert (=> b!11303 d!1449))

(declare-fun d!1453 () Bool)

(declare-fun res!9523 () Bool)

(declare-fun e!6748 () Bool)

(assert (=> d!1453 (=> res!9523 e!6748)))

(assert (=> d!1453 (= res!9523 (is-Nil!332 kvs!4))))

(assert (=> d!1453 (= (forall!59 kvs!4 p!216) e!6748)))

(declare-fun b!11419 () Bool)

(declare-fun e!6749 () Bool)

(assert (=> b!11419 (= e!6748 e!6749)))

(declare-fun res!9524 () Bool)

(assert (=> b!11419 (=> (not res!9524) (not e!6749))))

(assert (=> b!11419 (= res!9524 (dynLambda!70 p!216 (h!897 kvs!4)))))

(declare-fun b!11420 () Bool)

(assert (=> b!11420 (= e!6749 (forall!59 (t!2620 kvs!4) p!216))))

(assert (= (and d!1453 (not res!9523)) b!11419))

(assert (= (and b!11419 res!9524) b!11420))

(declare-fun b_lambda!657 () Bool)

(assert (=> (not b_lambda!657) (not b!11419)))

(declare-fun t!2646 () Bool)

(declare-fun tb!307 () Bool)

(assert (=> (and start!1500 (= p!216 p!216) t!2646) tb!307))

(declare-fun result!475 () Bool)

(assert (=> tb!307 (= result!475 true)))

(assert (=> b!11419 t!2646))

(declare-fun b_and!769 () Bool)

(assert (= b_and!765 (and (=> t!2646 result!475) b_and!769)))

(declare-fun m!7777 () Bool)

(assert (=> b!11419 m!7777))

(declare-fun m!7779 () Bool)

(assert (=> b!11420 m!7779))

(assert (=> b!11302 d!1453))

(declare-fun d!1459 () Bool)

(declare-fun res!9527 () Bool)

(declare-fun e!6752 () Bool)

(assert (=> d!1459 (=> res!9527 e!6752)))

(assert (=> d!1459 (= res!9527 (is-Nil!332 (toList!185 lm!227)))))

(assert (=> d!1459 (= (forall!59 (toList!185 lm!227) p!216) e!6752)))

(declare-fun b!11423 () Bool)

(declare-fun e!6753 () Bool)

(assert (=> b!11423 (= e!6752 e!6753)))

(declare-fun res!9528 () Bool)

(assert (=> b!11423 (=> (not res!9528) (not e!6753))))

(assert (=> b!11423 (= res!9528 (dynLambda!70 p!216 (h!897 (toList!185 lm!227))))))

(declare-fun b!11424 () Bool)

(assert (=> b!11424 (= e!6753 (forall!59 (t!2620 (toList!185 lm!227)) p!216))))

(assert (= (and d!1459 (not res!9527)) b!11423))

(assert (= (and b!11423 res!9528) b!11424))

(declare-fun b_lambda!661 () Bool)

(assert (=> (not b_lambda!661) (not b!11423)))

(declare-fun t!2650 () Bool)

(declare-fun tb!311 () Bool)

(assert (=> (and start!1500 (= p!216 p!216) t!2650) tb!311))

(declare-fun result!479 () Bool)

(assert (=> tb!311 (= result!479 true)))

(assert (=> b!11423 t!2650))

(declare-fun b_and!773 () Bool)

(assert (= b_and!769 (and (=> t!2650 result!479) b_and!773)))

(declare-fun m!7785 () Bool)

(assert (=> b!11423 m!7785))

(declare-fun m!7787 () Bool)

(assert (=> b!11424 m!7787))

(assert (=> start!1500 d!1459))

(declare-fun d!1465 () Bool)

(declare-fun isStrictlySorted!45 (List!335) Bool)

(assert (=> d!1465 (= (inv!558 lm!227) (isStrictlySorted!45 (toList!185 lm!227)))))

(declare-fun bs!434 () Bool)

(assert (= bs!434 d!1465))

(declare-fun m!7807 () Bool)

(assert (=> bs!434 m!7807))

(assert (=> start!1500 d!1465))

(declare-fun d!1475 () Bool)

(declare-fun lt!2928 () Int)

(assert (=> d!1475 (>= lt!2928 0)))

(declare-fun e!6769 () Int)

(assert (=> d!1475 (= lt!2928 e!6769)))

(declare-fun c!962 () Bool)

(assert (=> d!1475 (= c!962 (is-Nil!332 lt!2843))))

(assert (=> d!1475 (= (ListPrimitiveSize!10 lt!2843) lt!2928)))

(declare-fun b!11447 () Bool)

(assert (=> b!11447 (= e!6769 0)))

(declare-fun b!11448 () Bool)

(assert (=> b!11448 (= e!6769 (+ 1 (ListPrimitiveSize!10 (t!2620 lt!2843))))))

(assert (= (and d!1475 c!962) b!11447))

(assert (= (and d!1475 (not c!962)) b!11448))

(declare-fun m!7817 () Bool)

(assert (=> b!11448 m!7817))

(assert (=> b!11306 d!1475))

(declare-fun d!1481 () Bool)

(declare-fun lt!2930 () Int)

(assert (=> d!1481 (>= lt!2930 0)))

(declare-fun e!6771 () Int)

(assert (=> d!1481 (= lt!2930 e!6771)))

(declare-fun c!964 () Bool)

(assert (=> d!1481 (= c!964 (is-Nil!332 kvs!4))))

(assert (=> d!1481 (= (ListPrimitiveSize!10 kvs!4) lt!2930)))

(declare-fun b!11451 () Bool)

(assert (=> b!11451 (= e!6771 0)))

(declare-fun b!11452 () Bool)

(assert (=> b!11452 (= e!6771 (+ 1 (ListPrimitiveSize!10 (t!2620 kvs!4))))))

(assert (= (and d!1481 c!964) b!11451))

(assert (= (and d!1481 (not c!964)) b!11452))

(declare-fun m!7821 () Bool)

(assert (=> b!11452 m!7821))

(assert (=> b!11306 d!1481))

(declare-fun d!1485 () Bool)

