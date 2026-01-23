; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502530 () Bool)

(assert start!502530)

(declare-fun b!4834504 () Bool)

(declare-fun res!2059566 () Bool)

(declare-fun e!3021203 () Bool)

(assert (=> b!4834504 (=> res!2059566 e!3021203)))

(declare-datatypes ((K!16839 0))(
  ( (K!16840 (val!21777 Int)) )
))
(declare-datatypes ((V!17085 0))(
  ( (V!17086 (val!21778 Int)) )
))
(declare-datatypes ((tuple2!58432 0))(
  ( (tuple2!58433 (_1!32510 K!16839) (_2!32510 V!17085)) )
))
(declare-datatypes ((List!55245 0))(
  ( (Nil!55121) (Cons!55121 (h!61555 tuple2!58432) (t!362741 List!55245)) )
))
(declare-fun l!14180 () List!55245)

(declare-fun noDuplicateKeys!2506 (List!55245) Bool)

(assert (=> b!4834504 (= res!2059566 (not (noDuplicateKeys!2506 (t!362741 l!14180))))))

(declare-fun b!4834505 () Bool)

(declare-fun e!3021201 () Bool)

(declare-datatypes ((ListMap!6993 0))(
  ( (ListMap!6994 (toList!7592 List!55245)) )
))
(declare-fun lt!1980384 () ListMap!6993)

(declare-fun key!5666 () K!16839)

(declare-fun contains!18943 (ListMap!6993 K!16839) Bool)

(assert (=> b!4834505 (= e!3021201 (contains!18943 lt!1980384 key!5666))))

(declare-fun res!2059563 () Bool)

(declare-fun e!3021205 () Bool)

(assert (=> start!502530 (=> (not res!2059563) (not e!3021205))))

(assert (=> start!502530 (= res!2059563 (noDuplicateKeys!2506 l!14180))))

(assert (=> start!502530 e!3021205))

(declare-fun e!3021202 () Bool)

(assert (=> start!502530 e!3021202))

(declare-fun acc!1183 () ListMap!6993)

(declare-fun e!3021204 () Bool)

(declare-fun inv!70739 (ListMap!6993) Bool)

(assert (=> start!502530 (and (inv!70739 acc!1183) e!3021204)))

(declare-fun tp_is_empty!34705 () Bool)

(assert (=> start!502530 tp_is_empty!34705))

(declare-fun b!4834506 () Bool)

(declare-fun res!2059565 () Bool)

(assert (=> b!4834506 (=> (not res!2059565) (not e!3021205))))

(get-info :version)

(assert (=> b!4834506 (= res!2059565 (not ((_ is Nil!55121) l!14180)))))

(declare-fun b!4834507 () Bool)

(declare-fun ListPrimitiveSize!353 (List!55245) Int)

(assert (=> b!4834507 (= e!3021203 (< (ListPrimitiveSize!353 (t!362741 l!14180)) (ListPrimitiveSize!353 l!14180)))))

(declare-fun b!4834508 () Bool)

(declare-fun res!2059567 () Bool)

(assert (=> b!4834508 (=> res!2059567 e!3021203)))

(declare-fun lt!1980387 () Bool)

(assert (=> b!4834508 (= res!2059567 (or (= (_1!32510 (h!61555 l!14180)) key!5666) lt!1980387))))

(declare-fun b!4834509 () Bool)

(declare-fun tp!1363218 () Bool)

(declare-fun tp_is_empty!34707 () Bool)

(assert (=> b!4834509 (= e!3021202 (and tp_is_empty!34705 tp_is_empty!34707 tp!1363218))))

(declare-fun b!4834510 () Bool)

(declare-fun tp!1363217 () Bool)

(assert (=> b!4834510 (= e!3021204 tp!1363217)))

(declare-fun b!4834511 () Bool)

(assert (=> b!4834511 (= e!3021205 (not e!3021203))))

(declare-fun res!2059564 () Bool)

(assert (=> b!4834511 (=> res!2059564 e!3021203)))

(assert (=> b!4834511 (= res!2059564 (contains!18943 acc!1183 key!5666))))

(declare-fun lt!1980385 () ListMap!6993)

(assert (=> b!4834511 (= (contains!18943 lt!1980385 key!5666) e!3021201)))

(declare-fun res!2059562 () Bool)

(assert (=> b!4834511 (=> res!2059562 e!3021201)))

(assert (=> b!4834511 (= res!2059562 lt!1980387)))

(declare-fun containsKey!4485 (List!55245 K!16839) Bool)

(assert (=> b!4834511 (= lt!1980387 (containsKey!4485 (t!362741 l!14180) key!5666))))

(declare-datatypes ((Unit!144417 0))(
  ( (Unit!144418) )
))
(declare-fun lt!1980386 () Unit!144417)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!74 (List!55245 ListMap!6993 K!16839) Unit!144417)

(assert (=> b!4834511 (= lt!1980386 (lemmaAddToMapFromBucketContainsIIFInAccOrL!74 (t!362741 l!14180) lt!1980384 key!5666))))

(declare-fun addToMapMapFromBucket!1861 (List!55245 ListMap!6993) ListMap!6993)

(assert (=> b!4834511 (= lt!1980385 (addToMapMapFromBucket!1861 (t!362741 l!14180) lt!1980384))))

(declare-fun +!2585 (ListMap!6993 tuple2!58432) ListMap!6993)

(assert (=> b!4834511 (= lt!1980384 (+!2585 acc!1183 (h!61555 l!14180)))))

(assert (= (and start!502530 res!2059563) b!4834506))

(assert (= (and b!4834506 res!2059565) b!4834511))

(assert (= (and b!4834511 (not res!2059562)) b!4834505))

(assert (= (and b!4834511 (not res!2059564)) b!4834508))

(assert (= (and b!4834508 (not res!2059567)) b!4834504))

(assert (= (and b!4834504 (not res!2059566)) b!4834507))

(assert (= (and start!502530 ((_ is Cons!55121) l!14180)) b!4834509))

(assert (= start!502530 b!4834510))

(declare-fun m!5829418 () Bool)

(assert (=> b!4834505 m!5829418))

(declare-fun m!5829420 () Bool)

(assert (=> b!4834511 m!5829420))

(declare-fun m!5829422 () Bool)

(assert (=> b!4834511 m!5829422))

(declare-fun m!5829424 () Bool)

(assert (=> b!4834511 m!5829424))

(declare-fun m!5829426 () Bool)

(assert (=> b!4834511 m!5829426))

(declare-fun m!5829428 () Bool)

(assert (=> b!4834511 m!5829428))

(declare-fun m!5829430 () Bool)

(assert (=> b!4834511 m!5829430))

(declare-fun m!5829432 () Bool)

(assert (=> start!502530 m!5829432))

(declare-fun m!5829434 () Bool)

(assert (=> start!502530 m!5829434))

(declare-fun m!5829436 () Bool)

(assert (=> b!4834507 m!5829436))

(declare-fun m!5829438 () Bool)

(assert (=> b!4834507 m!5829438))

(declare-fun m!5829440 () Bool)

(assert (=> b!4834504 m!5829440))

(check-sat (not b!4834510) (not b!4834511) (not b!4834509) (not start!502530) (not b!4834505) tp_is_empty!34707 (not b!4834504) (not b!4834507) tp_is_empty!34705)
(check-sat)
(get-model)

(declare-fun d!1550035 () Bool)

(declare-fun res!2059572 () Bool)

(declare-fun e!3021210 () Bool)

(assert (=> d!1550035 (=> res!2059572 e!3021210)))

(assert (=> d!1550035 (= res!2059572 (not ((_ is Cons!55121) (t!362741 l!14180))))))

(assert (=> d!1550035 (= (noDuplicateKeys!2506 (t!362741 l!14180)) e!3021210)))

(declare-fun b!4834516 () Bool)

(declare-fun e!3021211 () Bool)

(assert (=> b!4834516 (= e!3021210 e!3021211)))

(declare-fun res!2059573 () Bool)

(assert (=> b!4834516 (=> (not res!2059573) (not e!3021211))))

(assert (=> b!4834516 (= res!2059573 (not (containsKey!4485 (t!362741 (t!362741 l!14180)) (_1!32510 (h!61555 (t!362741 l!14180))))))))

(declare-fun b!4834517 () Bool)

(assert (=> b!4834517 (= e!3021211 (noDuplicateKeys!2506 (t!362741 (t!362741 l!14180))))))

(assert (= (and d!1550035 (not res!2059572)) b!4834516))

(assert (= (and b!4834516 res!2059573) b!4834517))

(declare-fun m!5829442 () Bool)

(assert (=> b!4834516 m!5829442))

(declare-fun m!5829444 () Bool)

(assert (=> b!4834517 m!5829444))

(assert (=> b!4834504 d!1550035))

(declare-fun b!4834560 () Bool)

(declare-fun e!3021245 () Unit!144417)

(declare-fun lt!1980427 () Unit!144417)

(assert (=> b!4834560 (= e!3021245 lt!1980427)))

(declare-fun lt!1980425 () Unit!144417)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2460 (List!55245 K!16839) Unit!144417)

(assert (=> b!4834560 (= lt!1980425 (lemmaContainsKeyImpliesGetValueByKeyDefined!2460 (toList!7592 lt!1980384) key!5666))))

(declare-datatypes ((Option!13552 0))(
  ( (None!13551) (Some!13551 (v!49252 V!17085)) )
))
(declare-fun isDefined!10663 (Option!13552) Bool)

(declare-fun getValueByKey!2679 (List!55245 K!16839) Option!13552)

(assert (=> b!4834560 (isDefined!10663 (getValueByKey!2679 (toList!7592 lt!1980384) key!5666))))

(declare-fun lt!1980421 () Unit!144417)

(assert (=> b!4834560 (= lt!1980421 lt!1980425)))

(declare-fun lemmaInListThenGetKeysListContains!1185 (List!55245 K!16839) Unit!144417)

(assert (=> b!4834560 (= lt!1980427 (lemmaInListThenGetKeysListContains!1185 (toList!7592 lt!1980384) key!5666))))

(declare-fun call!336985 () Bool)

(assert (=> b!4834560 call!336985))

(declare-fun b!4834561 () Bool)

(declare-datatypes ((List!55247 0))(
  ( (Nil!55123) (Cons!55123 (h!61557 K!16839) (t!362743 List!55247)) )
))
(declare-fun e!3021243 () List!55247)

(declare-fun keys!20331 (ListMap!6993) List!55247)

(assert (=> b!4834561 (= e!3021243 (keys!20331 lt!1980384))))

(declare-fun b!4834562 () Bool)

(declare-fun e!3021246 () Bool)

(declare-fun contains!18945 (List!55247 K!16839) Bool)

(assert (=> b!4834562 (= e!3021246 (not (contains!18945 (keys!20331 lt!1980384) key!5666)))))

(declare-fun b!4834563 () Bool)

(declare-fun e!3021244 () Unit!144417)

(declare-fun Unit!144423 () Unit!144417)

(assert (=> b!4834563 (= e!3021244 Unit!144423)))

(declare-fun b!4834564 () Bool)

(declare-fun e!3021247 () Bool)

(assert (=> b!4834564 (= e!3021247 (contains!18945 (keys!20331 lt!1980384) key!5666))))

(declare-fun b!4834565 () Bool)

(assert (=> b!4834565 (= e!3021245 e!3021244)))

(declare-fun c!823744 () Bool)

(assert (=> b!4834565 (= c!823744 call!336985)))

(declare-fun b!4834566 () Bool)

(declare-fun getKeysList!1190 (List!55245) List!55247)

(assert (=> b!4834566 (= e!3021243 (getKeysList!1190 (toList!7592 lt!1980384)))))

(declare-fun b!4834567 () Bool)

(declare-fun e!3021242 () Bool)

(assert (=> b!4834567 (= e!3021242 e!3021247)))

(declare-fun res!2059593 () Bool)

(assert (=> b!4834567 (=> (not res!2059593) (not e!3021247))))

(assert (=> b!4834567 (= res!2059593 (isDefined!10663 (getValueByKey!2679 (toList!7592 lt!1980384) key!5666)))))

(declare-fun b!4834568 () Bool)

(assert (=> b!4834568 false))

(declare-fun lt!1980426 () Unit!144417)

(declare-fun lt!1980420 () Unit!144417)

(assert (=> b!4834568 (= lt!1980426 lt!1980420)))

(declare-fun containsKey!4487 (List!55245 K!16839) Bool)

(assert (=> b!4834568 (containsKey!4487 (toList!7592 lt!1980384) key!5666)))

(declare-fun lemmaInGetKeysListThenContainsKey!1190 (List!55245 K!16839) Unit!144417)

(assert (=> b!4834568 (= lt!1980420 (lemmaInGetKeysListThenContainsKey!1190 (toList!7592 lt!1980384) key!5666))))

(declare-fun Unit!144424 () Unit!144417)

(assert (=> b!4834568 (= e!3021244 Unit!144424)))

(declare-fun bm!336980 () Bool)

(assert (=> bm!336980 (= call!336985 (contains!18945 e!3021243 key!5666))))

(declare-fun c!823743 () Bool)

(declare-fun c!823742 () Bool)

(assert (=> bm!336980 (= c!823743 c!823742)))

(declare-fun d!1550037 () Bool)

(assert (=> d!1550037 e!3021242))

(declare-fun res!2059592 () Bool)

(assert (=> d!1550037 (=> res!2059592 e!3021242)))

(assert (=> d!1550037 (= res!2059592 e!3021246)))

(declare-fun res!2059594 () Bool)

(assert (=> d!1550037 (=> (not res!2059594) (not e!3021246))))

(declare-fun lt!1980422 () Bool)

(assert (=> d!1550037 (= res!2059594 (not lt!1980422))))

(declare-fun lt!1980423 () Bool)

(assert (=> d!1550037 (= lt!1980422 lt!1980423)))

(declare-fun lt!1980424 () Unit!144417)

(assert (=> d!1550037 (= lt!1980424 e!3021245)))

(assert (=> d!1550037 (= c!823742 lt!1980423)))

(assert (=> d!1550037 (= lt!1980423 (containsKey!4487 (toList!7592 lt!1980384) key!5666))))

(assert (=> d!1550037 (= (contains!18943 lt!1980384 key!5666) lt!1980422)))

(assert (= (and d!1550037 c!823742) b!4834560))

(assert (= (and d!1550037 (not c!823742)) b!4834565))

(assert (= (and b!4834565 c!823744) b!4834568))

(assert (= (and b!4834565 (not c!823744)) b!4834563))

(assert (= (or b!4834560 b!4834565) bm!336980))

(assert (= (and bm!336980 c!823743) b!4834566))

(assert (= (and bm!336980 (not c!823743)) b!4834561))

(assert (= (and d!1550037 res!2059594) b!4834562))

(assert (= (and d!1550037 (not res!2059592)) b!4834567))

(assert (= (and b!4834567 res!2059593) b!4834564))

(declare-fun m!5829450 () Bool)

(assert (=> b!4834560 m!5829450))

(declare-fun m!5829452 () Bool)

(assert (=> b!4834560 m!5829452))

(assert (=> b!4834560 m!5829452))

(declare-fun m!5829454 () Bool)

(assert (=> b!4834560 m!5829454))

(declare-fun m!5829456 () Bool)

(assert (=> b!4834560 m!5829456))

(declare-fun m!5829458 () Bool)

(assert (=> d!1550037 m!5829458))

(declare-fun m!5829460 () Bool)

(assert (=> b!4834561 m!5829460))

(assert (=> b!4834564 m!5829460))

(assert (=> b!4834564 m!5829460))

(declare-fun m!5829462 () Bool)

(assert (=> b!4834564 m!5829462))

(assert (=> b!4834567 m!5829452))

(assert (=> b!4834567 m!5829452))

(assert (=> b!4834567 m!5829454))

(assert (=> b!4834562 m!5829460))

(assert (=> b!4834562 m!5829460))

(assert (=> b!4834562 m!5829462))

(assert (=> b!4834568 m!5829458))

(declare-fun m!5829464 () Bool)

(assert (=> b!4834568 m!5829464))

(declare-fun m!5829466 () Bool)

(assert (=> b!4834566 m!5829466))

(declare-fun m!5829468 () Bool)

(assert (=> bm!336980 m!5829468))

(assert (=> b!4834505 d!1550037))

(declare-fun b!4834637 () Bool)

(assert (=> b!4834637 true))

(declare-fun bs!1167336 () Bool)

(declare-fun b!4834634 () Bool)

(assert (= bs!1167336 (and b!4834634 b!4834637)))

(declare-fun lambda!239062 () Int)

(declare-fun lambda!239061 () Int)

(assert (=> bs!1167336 (= lambda!239062 lambda!239061)))

(assert (=> b!4834634 true))

(declare-fun lt!1980590 () ListMap!6993)

(declare-fun lambda!239063 () Int)

(assert (=> bs!1167336 (= (= lt!1980590 lt!1980384) (= lambda!239063 lambda!239061))))

(assert (=> b!4834634 (= (= lt!1980590 lt!1980384) (= lambda!239063 lambda!239062))))

(assert (=> b!4834634 true))

(declare-fun bs!1167337 () Bool)

(declare-fun d!1550043 () Bool)

(assert (= bs!1167337 (and d!1550043 b!4834637)))

(declare-fun lt!1980582 () ListMap!6993)

(declare-fun lambda!239064 () Int)

(assert (=> bs!1167337 (= (= lt!1980582 lt!1980384) (= lambda!239064 lambda!239061))))

(declare-fun bs!1167338 () Bool)

(assert (= bs!1167338 (and d!1550043 b!4834634)))

(assert (=> bs!1167338 (= (= lt!1980582 lt!1980384) (= lambda!239064 lambda!239062))))

(assert (=> bs!1167338 (= (= lt!1980582 lt!1980590) (= lambda!239064 lambda!239063))))

(assert (=> d!1550043 true))

(declare-fun e!3021289 () ListMap!6993)

(assert (=> b!4834634 (= e!3021289 lt!1980590)))

(declare-fun lt!1980586 () ListMap!6993)

(assert (=> b!4834634 (= lt!1980586 (+!2585 lt!1980384 (h!61555 (t!362741 l!14180))))))

(assert (=> b!4834634 (= lt!1980590 (addToMapMapFromBucket!1861 (t!362741 (t!362741 l!14180)) (+!2585 lt!1980384 (h!61555 (t!362741 l!14180)))))))

(declare-fun lt!1980576 () Unit!144417)

(declare-fun call!337004 () Unit!144417)

(assert (=> b!4834634 (= lt!1980576 call!337004)))

(declare-fun forall!12706 (List!55245 Int) Bool)

(assert (=> b!4834634 (forall!12706 (toList!7592 lt!1980384) lambda!239062)))

(declare-fun lt!1980584 () Unit!144417)

(assert (=> b!4834634 (= lt!1980584 lt!1980576)))

(assert (=> b!4834634 (forall!12706 (toList!7592 lt!1980586) lambda!239063)))

(declare-fun lt!1980572 () Unit!144417)

(declare-fun Unit!144426 () Unit!144417)

(assert (=> b!4834634 (= lt!1980572 Unit!144426)))

(declare-fun call!337006 () Bool)

(assert (=> b!4834634 call!337006))

(declare-fun lt!1980585 () Unit!144417)

(declare-fun Unit!144427 () Unit!144417)

(assert (=> b!4834634 (= lt!1980585 Unit!144427)))

(declare-fun lt!1980591 () Unit!144417)

(declare-fun Unit!144428 () Unit!144417)

(assert (=> b!4834634 (= lt!1980591 Unit!144428)))

(declare-fun lt!1980577 () Unit!144417)

(declare-fun forallContained!4436 (List!55245 Int tuple2!58432) Unit!144417)

(assert (=> b!4834634 (= lt!1980577 (forallContained!4436 (toList!7592 lt!1980586) lambda!239063 (h!61555 (t!362741 l!14180))))))

(assert (=> b!4834634 (contains!18943 lt!1980586 (_1!32510 (h!61555 (t!362741 l!14180))))))

(declare-fun lt!1980573 () Unit!144417)

(declare-fun Unit!144430 () Unit!144417)

(assert (=> b!4834634 (= lt!1980573 Unit!144430)))

(assert (=> b!4834634 (contains!18943 lt!1980590 (_1!32510 (h!61555 (t!362741 l!14180))))))

(declare-fun lt!1980574 () Unit!144417)

(declare-fun Unit!144431 () Unit!144417)

(assert (=> b!4834634 (= lt!1980574 Unit!144431)))

(declare-fun call!337005 () Bool)

(assert (=> b!4834634 call!337005))

(declare-fun lt!1980583 () Unit!144417)

(declare-fun Unit!144432 () Unit!144417)

(assert (=> b!4834634 (= lt!1980583 Unit!144432)))

(assert (=> b!4834634 (forall!12706 (toList!7592 lt!1980586) lambda!239063)))

(declare-fun lt!1980581 () Unit!144417)

(declare-fun Unit!144433 () Unit!144417)

(assert (=> b!4834634 (= lt!1980581 Unit!144433)))

(declare-fun lt!1980589 () Unit!144417)

(declare-fun Unit!144434 () Unit!144417)

(assert (=> b!4834634 (= lt!1980589 Unit!144434)))

(declare-fun lt!1980580 () Unit!144417)

(declare-fun addForallContainsKeyThenBeforeAdding!1023 (ListMap!6993 ListMap!6993 K!16839 V!17085) Unit!144417)

(assert (=> b!4834634 (= lt!1980580 (addForallContainsKeyThenBeforeAdding!1023 lt!1980384 lt!1980590 (_1!32510 (h!61555 (t!362741 l!14180))) (_2!32510 (h!61555 (t!362741 l!14180)))))))

(assert (=> b!4834634 (forall!12706 (toList!7592 lt!1980384) lambda!239063)))

(declare-fun lt!1980578 () Unit!144417)

(assert (=> b!4834634 (= lt!1980578 lt!1980580)))

(assert (=> b!4834634 (forall!12706 (toList!7592 lt!1980384) lambda!239063)))

(declare-fun lt!1980588 () Unit!144417)

(declare-fun Unit!144435 () Unit!144417)

(assert (=> b!4834634 (= lt!1980588 Unit!144435)))

(declare-fun res!2059632 () Bool)

(assert (=> b!4834634 (= res!2059632 (forall!12706 (t!362741 l!14180) lambda!239063))))

(declare-fun e!3021290 () Bool)

(assert (=> b!4834634 (=> (not res!2059632) (not e!3021290))))

(assert (=> b!4834634 e!3021290))

(declare-fun lt!1980587 () Unit!144417)

(declare-fun Unit!144436 () Unit!144417)

(assert (=> b!4834634 (= lt!1980587 Unit!144436)))

(declare-fun b!4834635 () Bool)

(declare-fun res!2059630 () Bool)

(declare-fun e!3021291 () Bool)

(assert (=> b!4834635 (=> (not res!2059630) (not e!3021291))))

(assert (=> b!4834635 (= res!2059630 (forall!12706 (toList!7592 lt!1980384) lambda!239064))))

(declare-fun b!4834636 () Bool)

(declare-fun invariantList!1848 (List!55245) Bool)

(assert (=> b!4834636 (= e!3021291 (invariantList!1848 (toList!7592 lt!1980582)))))

(assert (=> d!1550043 e!3021291))

(declare-fun res!2059631 () Bool)

(assert (=> d!1550043 (=> (not res!2059631) (not e!3021291))))

(assert (=> d!1550043 (= res!2059631 (forall!12706 (t!362741 l!14180) lambda!239064))))

(assert (=> d!1550043 (= lt!1980582 e!3021289)))

(declare-fun c!823759 () Bool)

(assert (=> d!1550043 (= c!823759 ((_ is Nil!55121) (t!362741 l!14180)))))

(assert (=> d!1550043 (noDuplicateKeys!2506 (t!362741 l!14180))))

(assert (=> d!1550043 (= (addToMapMapFromBucket!1861 (t!362741 l!14180) lt!1980384) lt!1980582)))

(assert (=> b!4834637 (= e!3021289 lt!1980384)))

(declare-fun lt!1980579 () Unit!144417)

(assert (=> b!4834637 (= lt!1980579 call!337004)))

(assert (=> b!4834637 call!337006))

(declare-fun lt!1980575 () Unit!144417)

(assert (=> b!4834637 (= lt!1980575 lt!1980579)))

(assert (=> b!4834637 call!337005))

(declare-fun lt!1980592 () Unit!144417)

(declare-fun Unit!144437 () Unit!144417)

(assert (=> b!4834637 (= lt!1980592 Unit!144437)))

(declare-fun bm!336999 () Bool)

(assert (=> bm!336999 (= call!337006 (forall!12706 (ite c!823759 (toList!7592 lt!1980384) (t!362741 (t!362741 l!14180))) (ite c!823759 lambda!239061 lambda!239063)))))

(declare-fun b!4834638 () Bool)

(assert (=> b!4834638 (= e!3021290 (forall!12706 (toList!7592 lt!1980384) lambda!239063))))

(declare-fun bm!337000 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1024 (ListMap!6993) Unit!144417)

(assert (=> bm!337000 (= call!337004 (lemmaContainsAllItsOwnKeys!1024 lt!1980384))))

(declare-fun bm!337001 () Bool)

(assert (=> bm!337001 (= call!337005 (forall!12706 (ite c!823759 (toList!7592 lt!1980384) (t!362741 l!14180)) (ite c!823759 lambda!239061 lambda!239063)))))

(assert (= (and d!1550043 c!823759) b!4834637))

(assert (= (and d!1550043 (not c!823759)) b!4834634))

(assert (= (and b!4834634 res!2059632) b!4834638))

(assert (= (or b!4834637 b!4834634) bm!336999))

(assert (= (or b!4834637 b!4834634) bm!337001))

(assert (= (or b!4834637 b!4834634) bm!337000))

(assert (= (and d!1550043 res!2059631) b!4834635))

(assert (= (and b!4834635 res!2059630) b!4834636))

(declare-fun m!5829586 () Bool)

(assert (=> d!1550043 m!5829586))

(assert (=> d!1550043 m!5829440))

(declare-fun m!5829588 () Bool)

(assert (=> b!4834636 m!5829588))

(declare-fun m!5829590 () Bool)

(assert (=> bm!337001 m!5829590))

(declare-fun m!5829592 () Bool)

(assert (=> bm!336999 m!5829592))

(declare-fun m!5829594 () Bool)

(assert (=> bm!337000 m!5829594))

(declare-fun m!5829596 () Bool)

(assert (=> b!4834634 m!5829596))

(declare-fun m!5829598 () Bool)

(assert (=> b!4834634 m!5829598))

(declare-fun m!5829602 () Bool)

(assert (=> b!4834634 m!5829602))

(assert (=> b!4834634 m!5829596))

(assert (=> b!4834634 m!5829598))

(declare-fun m!5829604 () Bool)

(assert (=> b!4834634 m!5829604))

(declare-fun m!5829606 () Bool)

(assert (=> b!4834634 m!5829606))

(declare-fun m!5829608 () Bool)

(assert (=> b!4834634 m!5829608))

(declare-fun m!5829610 () Bool)

(assert (=> b!4834634 m!5829610))

(declare-fun m!5829612 () Bool)

(assert (=> b!4834634 m!5829612))

(assert (=> b!4834634 m!5829606))

(declare-fun m!5829614 () Bool)

(assert (=> b!4834634 m!5829614))

(declare-fun m!5829616 () Bool)

(assert (=> b!4834634 m!5829616))

(declare-fun m!5829618 () Bool)

(assert (=> b!4834635 m!5829618))

(assert (=> b!4834638 m!5829596))

(assert (=> b!4834511 d!1550043))

(declare-fun b!4834659 () Bool)

(declare-fun e!3021307 () Unit!144417)

(declare-fun lt!1980604 () Unit!144417)

(assert (=> b!4834659 (= e!3021307 lt!1980604)))

(declare-fun lt!1980602 () Unit!144417)

(assert (=> b!4834659 (= lt!1980602 (lemmaContainsKeyImpliesGetValueByKeyDefined!2460 (toList!7592 lt!1980385) key!5666))))

(assert (=> b!4834659 (isDefined!10663 (getValueByKey!2679 (toList!7592 lt!1980385) key!5666))))

(declare-fun lt!1980598 () Unit!144417)

(assert (=> b!4834659 (= lt!1980598 lt!1980602)))

(assert (=> b!4834659 (= lt!1980604 (lemmaInListThenGetKeysListContains!1185 (toList!7592 lt!1980385) key!5666))))

(declare-fun call!337007 () Bool)

(assert (=> b!4834659 call!337007))

(declare-fun b!4834660 () Bool)

(declare-fun e!3021305 () List!55247)

(assert (=> b!4834660 (= e!3021305 (keys!20331 lt!1980385))))

(declare-fun b!4834661 () Bool)

(declare-fun e!3021308 () Bool)

(assert (=> b!4834661 (= e!3021308 (not (contains!18945 (keys!20331 lt!1980385) key!5666)))))

(declare-fun b!4834662 () Bool)

(declare-fun e!3021306 () Unit!144417)

(declare-fun Unit!144439 () Unit!144417)

(assert (=> b!4834662 (= e!3021306 Unit!144439)))

(declare-fun b!4834663 () Bool)

(declare-fun e!3021309 () Bool)

(assert (=> b!4834663 (= e!3021309 (contains!18945 (keys!20331 lt!1980385) key!5666))))

(declare-fun b!4834664 () Bool)

(assert (=> b!4834664 (= e!3021307 e!3021306)))

(declare-fun c!823766 () Bool)

(assert (=> b!4834664 (= c!823766 call!337007)))

(declare-fun b!4834665 () Bool)

(assert (=> b!4834665 (= e!3021305 (getKeysList!1190 (toList!7592 lt!1980385)))))

(declare-fun b!4834666 () Bool)

(declare-fun e!3021304 () Bool)

(assert (=> b!4834666 (= e!3021304 e!3021309)))

(declare-fun res!2059640 () Bool)

(assert (=> b!4834666 (=> (not res!2059640) (not e!3021309))))

(assert (=> b!4834666 (= res!2059640 (isDefined!10663 (getValueByKey!2679 (toList!7592 lt!1980385) key!5666)))))

(declare-fun b!4834667 () Bool)

(assert (=> b!4834667 false))

(declare-fun lt!1980603 () Unit!144417)

(declare-fun lt!1980597 () Unit!144417)

(assert (=> b!4834667 (= lt!1980603 lt!1980597)))

(assert (=> b!4834667 (containsKey!4487 (toList!7592 lt!1980385) key!5666)))

(assert (=> b!4834667 (= lt!1980597 (lemmaInGetKeysListThenContainsKey!1190 (toList!7592 lt!1980385) key!5666))))

(declare-fun Unit!144441 () Unit!144417)

(assert (=> b!4834667 (= e!3021306 Unit!144441)))

(declare-fun bm!337002 () Bool)

(assert (=> bm!337002 (= call!337007 (contains!18945 e!3021305 key!5666))))

(declare-fun c!823765 () Bool)

(declare-fun c!823764 () Bool)

(assert (=> bm!337002 (= c!823765 c!823764)))

(declare-fun d!1550065 () Bool)

(assert (=> d!1550065 e!3021304))

(declare-fun res!2059639 () Bool)

(assert (=> d!1550065 (=> res!2059639 e!3021304)))

(assert (=> d!1550065 (= res!2059639 e!3021308)))

(declare-fun res!2059641 () Bool)

(assert (=> d!1550065 (=> (not res!2059641) (not e!3021308))))

(declare-fun lt!1980599 () Bool)

(assert (=> d!1550065 (= res!2059641 (not lt!1980599))))

(declare-fun lt!1980600 () Bool)

(assert (=> d!1550065 (= lt!1980599 lt!1980600)))

(declare-fun lt!1980601 () Unit!144417)

(assert (=> d!1550065 (= lt!1980601 e!3021307)))

(assert (=> d!1550065 (= c!823764 lt!1980600)))

(assert (=> d!1550065 (= lt!1980600 (containsKey!4487 (toList!7592 lt!1980385) key!5666))))

(assert (=> d!1550065 (= (contains!18943 lt!1980385 key!5666) lt!1980599)))

(assert (= (and d!1550065 c!823764) b!4834659))

(assert (= (and d!1550065 (not c!823764)) b!4834664))

(assert (= (and b!4834664 c!823766) b!4834667))

(assert (= (and b!4834664 (not c!823766)) b!4834662))

(assert (= (or b!4834659 b!4834664) bm!337002))

(assert (= (and bm!337002 c!823765) b!4834665))

(assert (= (and bm!337002 (not c!823765)) b!4834660))

(assert (= (and d!1550065 res!2059641) b!4834661))

(assert (= (and d!1550065 (not res!2059639)) b!4834666))

(assert (= (and b!4834666 res!2059640) b!4834663))

(declare-fun m!5829620 () Bool)

(assert (=> b!4834659 m!5829620))

(declare-fun m!5829622 () Bool)

(assert (=> b!4834659 m!5829622))

(assert (=> b!4834659 m!5829622))

(declare-fun m!5829624 () Bool)

(assert (=> b!4834659 m!5829624))

(declare-fun m!5829626 () Bool)

(assert (=> b!4834659 m!5829626))

(declare-fun m!5829628 () Bool)

(assert (=> d!1550065 m!5829628))

(declare-fun m!5829630 () Bool)

(assert (=> b!4834660 m!5829630))

(assert (=> b!4834663 m!5829630))

(assert (=> b!4834663 m!5829630))

(declare-fun m!5829632 () Bool)

(assert (=> b!4834663 m!5829632))

(assert (=> b!4834666 m!5829622))

(assert (=> b!4834666 m!5829622))

(assert (=> b!4834666 m!5829624))

(assert (=> b!4834661 m!5829630))

(assert (=> b!4834661 m!5829630))

(assert (=> b!4834661 m!5829632))

(assert (=> b!4834667 m!5829628))

(declare-fun m!5829634 () Bool)

(assert (=> b!4834667 m!5829634))

(declare-fun m!5829636 () Bool)

(assert (=> b!4834665 m!5829636))

(declare-fun m!5829638 () Bool)

(assert (=> bm!337002 m!5829638))

(assert (=> b!4834511 d!1550065))

(declare-fun d!1550067 () Bool)

(declare-fun e!3021314 () Bool)

(assert (=> d!1550067 e!3021314))

(declare-fun res!2059646 () Bool)

(assert (=> d!1550067 (=> (not res!2059646) (not e!3021314))))

(declare-fun lt!1980616 () ListMap!6993)

(assert (=> d!1550067 (= res!2059646 (contains!18943 lt!1980616 (_1!32510 (h!61555 l!14180))))))

(declare-fun lt!1980614 () List!55245)

(assert (=> d!1550067 (= lt!1980616 (ListMap!6994 lt!1980614))))

(declare-fun lt!1980613 () Unit!144417)

(declare-fun lt!1980615 () Unit!144417)

(assert (=> d!1550067 (= lt!1980613 lt!1980615)))

(assert (=> d!1550067 (= (getValueByKey!2679 lt!1980614 (_1!32510 (h!61555 l!14180))) (Some!13551 (_2!32510 (h!61555 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1249 (List!55245 K!16839 V!17085) Unit!144417)

(assert (=> d!1550067 (= lt!1980615 (lemmaContainsTupThenGetReturnValue!1249 lt!1980614 (_1!32510 (h!61555 l!14180)) (_2!32510 (h!61555 l!14180))))))

(declare-fun insertNoDuplicatedKeys!757 (List!55245 K!16839 V!17085) List!55245)

(assert (=> d!1550067 (= lt!1980614 (insertNoDuplicatedKeys!757 (toList!7592 acc!1183) (_1!32510 (h!61555 l!14180)) (_2!32510 (h!61555 l!14180))))))

(assert (=> d!1550067 (= (+!2585 acc!1183 (h!61555 l!14180)) lt!1980616)))

(declare-fun b!4834674 () Bool)

(declare-fun res!2059647 () Bool)

(assert (=> b!4834674 (=> (not res!2059647) (not e!3021314))))

(assert (=> b!4834674 (= res!2059647 (= (getValueByKey!2679 (toList!7592 lt!1980616) (_1!32510 (h!61555 l!14180))) (Some!13551 (_2!32510 (h!61555 l!14180)))))))

(declare-fun b!4834675 () Bool)

(declare-fun contains!18947 (List!55245 tuple2!58432) Bool)

(assert (=> b!4834675 (= e!3021314 (contains!18947 (toList!7592 lt!1980616) (h!61555 l!14180)))))

(assert (= (and d!1550067 res!2059646) b!4834674))

(assert (= (and b!4834674 res!2059647) b!4834675))

(declare-fun m!5829640 () Bool)

(assert (=> d!1550067 m!5829640))

(declare-fun m!5829642 () Bool)

(assert (=> d!1550067 m!5829642))

(declare-fun m!5829644 () Bool)

(assert (=> d!1550067 m!5829644))

(declare-fun m!5829646 () Bool)

(assert (=> d!1550067 m!5829646))

(declare-fun m!5829648 () Bool)

(assert (=> b!4834674 m!5829648))

(declare-fun m!5829650 () Bool)

(assert (=> b!4834675 m!5829650))

(assert (=> b!4834511 d!1550067))

(declare-fun d!1550069 () Bool)

(declare-fun res!2059652 () Bool)

(declare-fun e!3021319 () Bool)

(assert (=> d!1550069 (=> res!2059652 e!3021319)))

(assert (=> d!1550069 (= res!2059652 (and ((_ is Cons!55121) (t!362741 l!14180)) (= (_1!32510 (h!61555 (t!362741 l!14180))) key!5666)))))

(assert (=> d!1550069 (= (containsKey!4485 (t!362741 l!14180) key!5666) e!3021319)))

(declare-fun b!4834680 () Bool)

(declare-fun e!3021320 () Bool)

(assert (=> b!4834680 (= e!3021319 e!3021320)))

(declare-fun res!2059653 () Bool)

(assert (=> b!4834680 (=> (not res!2059653) (not e!3021320))))

(assert (=> b!4834680 (= res!2059653 ((_ is Cons!55121) (t!362741 l!14180)))))

(declare-fun b!4834681 () Bool)

(assert (=> b!4834681 (= e!3021320 (containsKey!4485 (t!362741 (t!362741 l!14180)) key!5666))))

(assert (= (and d!1550069 (not res!2059652)) b!4834680))

(assert (= (and b!4834680 res!2059653) b!4834681))

(declare-fun m!5829652 () Bool)

(assert (=> b!4834681 m!5829652))

(assert (=> b!4834511 d!1550069))

(declare-fun b!4834682 () Bool)

(declare-fun e!3021324 () Unit!144417)

(declare-fun lt!1980624 () Unit!144417)

(assert (=> b!4834682 (= e!3021324 lt!1980624)))

(declare-fun lt!1980622 () Unit!144417)

(assert (=> b!4834682 (= lt!1980622 (lemmaContainsKeyImpliesGetValueByKeyDefined!2460 (toList!7592 acc!1183) key!5666))))

(assert (=> b!4834682 (isDefined!10663 (getValueByKey!2679 (toList!7592 acc!1183) key!5666))))

(declare-fun lt!1980618 () Unit!144417)

(assert (=> b!4834682 (= lt!1980618 lt!1980622)))

(assert (=> b!4834682 (= lt!1980624 (lemmaInListThenGetKeysListContains!1185 (toList!7592 acc!1183) key!5666))))

(declare-fun call!337008 () Bool)

(assert (=> b!4834682 call!337008))

(declare-fun b!4834683 () Bool)

(declare-fun e!3021322 () List!55247)

(assert (=> b!4834683 (= e!3021322 (keys!20331 acc!1183))))

(declare-fun b!4834684 () Bool)

(declare-fun e!3021325 () Bool)

(assert (=> b!4834684 (= e!3021325 (not (contains!18945 (keys!20331 acc!1183) key!5666)))))

(declare-fun b!4834685 () Bool)

(declare-fun e!3021323 () Unit!144417)

(declare-fun Unit!144451 () Unit!144417)

(assert (=> b!4834685 (= e!3021323 Unit!144451)))

(declare-fun b!4834686 () Bool)

(declare-fun e!3021326 () Bool)

(assert (=> b!4834686 (= e!3021326 (contains!18945 (keys!20331 acc!1183) key!5666))))

(declare-fun b!4834687 () Bool)

(assert (=> b!4834687 (= e!3021324 e!3021323)))

(declare-fun c!823769 () Bool)

(assert (=> b!4834687 (= c!823769 call!337008)))

(declare-fun b!4834688 () Bool)

(assert (=> b!4834688 (= e!3021322 (getKeysList!1190 (toList!7592 acc!1183)))))

(declare-fun b!4834689 () Bool)

(declare-fun e!3021321 () Bool)

(assert (=> b!4834689 (= e!3021321 e!3021326)))

(declare-fun res!2059655 () Bool)

(assert (=> b!4834689 (=> (not res!2059655) (not e!3021326))))

(assert (=> b!4834689 (= res!2059655 (isDefined!10663 (getValueByKey!2679 (toList!7592 acc!1183) key!5666)))))

(declare-fun b!4834690 () Bool)

(assert (=> b!4834690 false))

(declare-fun lt!1980623 () Unit!144417)

(declare-fun lt!1980617 () Unit!144417)

(assert (=> b!4834690 (= lt!1980623 lt!1980617)))

(assert (=> b!4834690 (containsKey!4487 (toList!7592 acc!1183) key!5666)))

(assert (=> b!4834690 (= lt!1980617 (lemmaInGetKeysListThenContainsKey!1190 (toList!7592 acc!1183) key!5666))))

(declare-fun Unit!144452 () Unit!144417)

(assert (=> b!4834690 (= e!3021323 Unit!144452)))

(declare-fun bm!337003 () Bool)

(assert (=> bm!337003 (= call!337008 (contains!18945 e!3021322 key!5666))))

(declare-fun c!823768 () Bool)

(declare-fun c!823767 () Bool)

(assert (=> bm!337003 (= c!823768 c!823767)))

(declare-fun d!1550071 () Bool)

(assert (=> d!1550071 e!3021321))

(declare-fun res!2059654 () Bool)

(assert (=> d!1550071 (=> res!2059654 e!3021321)))

(assert (=> d!1550071 (= res!2059654 e!3021325)))

(declare-fun res!2059656 () Bool)

(assert (=> d!1550071 (=> (not res!2059656) (not e!3021325))))

(declare-fun lt!1980619 () Bool)

(assert (=> d!1550071 (= res!2059656 (not lt!1980619))))

(declare-fun lt!1980620 () Bool)

(assert (=> d!1550071 (= lt!1980619 lt!1980620)))

(declare-fun lt!1980621 () Unit!144417)

(assert (=> d!1550071 (= lt!1980621 e!3021324)))

(assert (=> d!1550071 (= c!823767 lt!1980620)))

(assert (=> d!1550071 (= lt!1980620 (containsKey!4487 (toList!7592 acc!1183) key!5666))))

(assert (=> d!1550071 (= (contains!18943 acc!1183 key!5666) lt!1980619)))

(assert (= (and d!1550071 c!823767) b!4834682))

(assert (= (and d!1550071 (not c!823767)) b!4834687))

(assert (= (and b!4834687 c!823769) b!4834690))

(assert (= (and b!4834687 (not c!823769)) b!4834685))

(assert (= (or b!4834682 b!4834687) bm!337003))

(assert (= (and bm!337003 c!823768) b!4834688))

(assert (= (and bm!337003 (not c!823768)) b!4834683))

(assert (= (and d!1550071 res!2059656) b!4834684))

(assert (= (and d!1550071 (not res!2059654)) b!4834689))

(assert (= (and b!4834689 res!2059655) b!4834686))

(declare-fun m!5829654 () Bool)

(assert (=> b!4834682 m!5829654))

(declare-fun m!5829656 () Bool)

(assert (=> b!4834682 m!5829656))

(assert (=> b!4834682 m!5829656))

(declare-fun m!5829658 () Bool)

(assert (=> b!4834682 m!5829658))

(declare-fun m!5829660 () Bool)

(assert (=> b!4834682 m!5829660))

(declare-fun m!5829662 () Bool)

(assert (=> d!1550071 m!5829662))

(declare-fun m!5829664 () Bool)

(assert (=> b!4834683 m!5829664))

(assert (=> b!4834686 m!5829664))

(assert (=> b!4834686 m!5829664))

(declare-fun m!5829666 () Bool)

(assert (=> b!4834686 m!5829666))

(assert (=> b!4834689 m!5829656))

(assert (=> b!4834689 m!5829656))

(assert (=> b!4834689 m!5829658))

(assert (=> b!4834684 m!5829664))

(assert (=> b!4834684 m!5829664))

(assert (=> b!4834684 m!5829666))

(assert (=> b!4834690 m!5829662))

(declare-fun m!5829668 () Bool)

(assert (=> b!4834690 m!5829668))

(declare-fun m!5829670 () Bool)

(assert (=> b!4834688 m!5829670))

(declare-fun m!5829672 () Bool)

(assert (=> bm!337003 m!5829672))

(assert (=> b!4834511 d!1550071))

(declare-fun d!1550073 () Bool)

(declare-fun e!3021329 () Bool)

(assert (=> d!1550073 (= (contains!18943 (addToMapMapFromBucket!1861 (t!362741 l!14180) lt!1980384) key!5666) e!3021329)))

(declare-fun res!2059659 () Bool)

(assert (=> d!1550073 (=> res!2059659 e!3021329)))

(assert (=> d!1550073 (= res!2059659 (containsKey!4485 (t!362741 l!14180) key!5666))))

(declare-fun lt!1980627 () Unit!144417)

(declare-fun choose!35314 (List!55245 ListMap!6993 K!16839) Unit!144417)

(assert (=> d!1550073 (= lt!1980627 (choose!35314 (t!362741 l!14180) lt!1980384 key!5666))))

(assert (=> d!1550073 (noDuplicateKeys!2506 (t!362741 l!14180))))

(assert (=> d!1550073 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!74 (t!362741 l!14180) lt!1980384 key!5666) lt!1980627)))

(declare-fun b!4834693 () Bool)

(assert (=> b!4834693 (= e!3021329 (contains!18943 lt!1980384 key!5666))))

(assert (= (and d!1550073 (not res!2059659)) b!4834693))

(assert (=> d!1550073 m!5829428))

(declare-fun m!5829674 () Bool)

(assert (=> d!1550073 m!5829674))

(assert (=> d!1550073 m!5829440))

(declare-fun m!5829676 () Bool)

(assert (=> d!1550073 m!5829676))

(assert (=> d!1550073 m!5829428))

(assert (=> d!1550073 m!5829422))

(assert (=> b!4834693 m!5829418))

(assert (=> b!4834511 d!1550073))

(declare-fun d!1550075 () Bool)

(declare-fun res!2059660 () Bool)

(declare-fun e!3021330 () Bool)

(assert (=> d!1550075 (=> res!2059660 e!3021330)))

(assert (=> d!1550075 (= res!2059660 (not ((_ is Cons!55121) l!14180)))))

(assert (=> d!1550075 (= (noDuplicateKeys!2506 l!14180) e!3021330)))

(declare-fun b!4834694 () Bool)

(declare-fun e!3021331 () Bool)

(assert (=> b!4834694 (= e!3021330 e!3021331)))

(declare-fun res!2059661 () Bool)

(assert (=> b!4834694 (=> (not res!2059661) (not e!3021331))))

(assert (=> b!4834694 (= res!2059661 (not (containsKey!4485 (t!362741 l!14180) (_1!32510 (h!61555 l!14180)))))))

(declare-fun b!4834695 () Bool)

(assert (=> b!4834695 (= e!3021331 (noDuplicateKeys!2506 (t!362741 l!14180)))))

(assert (= (and d!1550075 (not res!2059660)) b!4834694))

(assert (= (and b!4834694 res!2059661) b!4834695))

(declare-fun m!5829678 () Bool)

(assert (=> b!4834694 m!5829678))

(assert (=> b!4834695 m!5829440))

(assert (=> start!502530 d!1550075))

(declare-fun d!1550077 () Bool)

(assert (=> d!1550077 (= (inv!70739 acc!1183) (invariantList!1848 (toList!7592 acc!1183)))))

(declare-fun bs!1167339 () Bool)

(assert (= bs!1167339 d!1550077))

(declare-fun m!5829680 () Bool)

(assert (=> bs!1167339 m!5829680))

(assert (=> start!502530 d!1550077))

(declare-fun d!1550079 () Bool)

(declare-fun lt!1980630 () Int)

(assert (=> d!1550079 (>= lt!1980630 0)))

(declare-fun e!3021334 () Int)

(assert (=> d!1550079 (= lt!1980630 e!3021334)))

(declare-fun c!823772 () Bool)

(assert (=> d!1550079 (= c!823772 ((_ is Nil!55121) (t!362741 l!14180)))))

(assert (=> d!1550079 (= (ListPrimitiveSize!353 (t!362741 l!14180)) lt!1980630)))

(declare-fun b!4834700 () Bool)

(assert (=> b!4834700 (= e!3021334 0)))

(declare-fun b!4834701 () Bool)

(assert (=> b!4834701 (= e!3021334 (+ 1 (ListPrimitiveSize!353 (t!362741 (t!362741 l!14180)))))))

(assert (= (and d!1550079 c!823772) b!4834700))

(assert (= (and d!1550079 (not c!823772)) b!4834701))

(declare-fun m!5829682 () Bool)

(assert (=> b!4834701 m!5829682))

(assert (=> b!4834507 d!1550079))

(declare-fun d!1550081 () Bool)

(declare-fun lt!1980631 () Int)

(assert (=> d!1550081 (>= lt!1980631 0)))

(declare-fun e!3021335 () Int)

(assert (=> d!1550081 (= lt!1980631 e!3021335)))

(declare-fun c!823773 () Bool)

(assert (=> d!1550081 (= c!823773 ((_ is Nil!55121) l!14180))))

(assert (=> d!1550081 (= (ListPrimitiveSize!353 l!14180) lt!1980631)))

(declare-fun b!4834702 () Bool)

(assert (=> b!4834702 (= e!3021335 0)))

(declare-fun b!4834703 () Bool)

(assert (=> b!4834703 (= e!3021335 (+ 1 (ListPrimitiveSize!353 (t!362741 l!14180))))))

(assert (= (and d!1550081 c!823773) b!4834702))

(assert (= (and d!1550081 (not c!823773)) b!4834703))

(assert (=> b!4834703 m!5829436))

(assert (=> b!4834507 d!1550081))

(declare-fun e!3021338 () Bool)

(declare-fun tp!1363225 () Bool)

(declare-fun b!4834708 () Bool)

(assert (=> b!4834708 (= e!3021338 (and tp_is_empty!34705 tp_is_empty!34707 tp!1363225))))

(assert (=> b!4834509 (= tp!1363218 e!3021338)))

(assert (= (and b!4834509 ((_ is Cons!55121) (t!362741 l!14180))) b!4834708))

(declare-fun e!3021339 () Bool)

(declare-fun tp!1363226 () Bool)

(declare-fun b!4834709 () Bool)

(assert (=> b!4834709 (= e!3021339 (and tp_is_empty!34705 tp_is_empty!34707 tp!1363226))))

(assert (=> b!4834510 (= tp!1363217 e!3021339)))

(assert (= (and b!4834510 ((_ is Cons!55121) (toList!7592 acc!1183))) b!4834709))

(check-sat (not b!4834695) (not b!4834694) (not d!1550071) (not b!4834688) (not b!4834635) (not b!4834516) (not b!4834661) (not bm!337000) tp_is_empty!34705 (not b!4834667) (not b!4834708) (not b!4834660) (not b!4834564) (not b!4834690) (not b!4834681) (not b!4834674) (not bm!337002) (not d!1550073) (not b!4834709) (not b!4834693) (not b!4834560) (not b!4834638) (not d!1550077) (not bm!337001) (not b!4834663) (not d!1550037) (not b!4834682) (not b!4834701) (not b!4834684) (not bm!336999) (not b!4834567) (not b!4834568) (not b!4834683) (not bm!336980) (not b!4834686) (not b!4834562) (not d!1550065) (not b!4834675) (not bm!337003) (not b!4834666) (not b!4834665) tp_is_empty!34707 (not b!4834703) (not b!4834634) (not b!4834517) (not b!4834659) (not d!1550067) (not b!4834566) (not b!4834561) (not d!1550043) (not b!4834689) (not b!4834636))
(check-sat)
