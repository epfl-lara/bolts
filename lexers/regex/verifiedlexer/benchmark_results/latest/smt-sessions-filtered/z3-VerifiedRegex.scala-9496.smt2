; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502292 () Bool)

(assert start!502292)

(declare-fun b!4832845 () Bool)

(declare-fun e!3020039 () Bool)

(declare-datatypes ((K!16769 0))(
  ( (K!16770 (val!21721 Int)) )
))
(declare-datatypes ((V!17015 0))(
  ( (V!17016 (val!21722 Int)) )
))
(declare-datatypes ((tuple2!58376 0))(
  ( (tuple2!58377 (_1!32482 K!16769) (_2!32482 V!17015)) )
))
(declare-datatypes ((List!55207 0))(
  ( (Nil!55083) (Cons!55083 (h!61517 tuple2!58376) (t!362703 List!55207)) )
))
(declare-fun l!14180 () List!55207)

(declare-fun noDuplicateKeys!2478 (List!55207) Bool)

(assert (=> b!4832845 (= e!3020039 (not (noDuplicateKeys!2478 (t!362703 l!14180))))))

(declare-datatypes ((ListMap!6937 0))(
  ( (ListMap!6938 (toList!7564 List!55207)) )
))
(declare-fun lt!1978453 () ListMap!6937)

(declare-fun acc!1183 () ListMap!6937)

(declare-fun +!2557 (ListMap!6937 tuple2!58376) ListMap!6937)

(assert (=> b!4832845 (= lt!1978453 (+!2557 acc!1183 (h!61517 l!14180)))))

(declare-fun b!4832844 () Bool)

(declare-fun res!2058633 () Bool)

(assert (=> b!4832844 (=> (not res!2058633) (not e!3020039))))

(get-info :version)

(assert (=> b!4832844 (= res!2058633 (not ((_ is Nil!55083) l!14180)))))

(declare-fun b!4832847 () Bool)

(declare-fun e!3020038 () Bool)

(declare-fun tp!1362985 () Bool)

(assert (=> b!4832847 (= e!3020038 tp!1362985)))

(declare-fun b!4832846 () Bool)

(declare-fun e!3020040 () Bool)

(declare-fun tp_is_empty!34593 () Bool)

(declare-fun tp!1362986 () Bool)

(declare-fun tp_is_empty!34595 () Bool)

(assert (=> b!4832846 (= e!3020040 (and tp_is_empty!34593 tp_is_empty!34595 tp!1362986))))

(declare-fun res!2058632 () Bool)

(assert (=> start!502292 (=> (not res!2058632) (not e!3020039))))

(assert (=> start!502292 (= res!2058632 (noDuplicateKeys!2478 l!14180))))

(assert (=> start!502292 e!3020039))

(assert (=> start!502292 e!3020040))

(declare-fun inv!70669 (ListMap!6937) Bool)

(assert (=> start!502292 (and (inv!70669 acc!1183) e!3020038)))

(assert (= (and start!502292 res!2058632) b!4832844))

(assert (= (and b!4832844 res!2058633) b!4832845))

(assert (= (and start!502292 ((_ is Cons!55083) l!14180)) b!4832846))

(assert (= start!502292 b!4832847))

(declare-fun m!5827290 () Bool)

(assert (=> b!4832845 m!5827290))

(declare-fun m!5827292 () Bool)

(assert (=> b!4832845 m!5827292))

(declare-fun m!5827294 () Bool)

(assert (=> start!502292 m!5827294))

(declare-fun m!5827296 () Bool)

(assert (=> start!502292 m!5827296))

(check-sat (not b!4832845) tp_is_empty!34593 (not b!4832846) (not b!4832847) (not start!502292) tp_is_empty!34595)
(check-sat)
(get-model)

(declare-fun d!1549749 () Bool)

(declare-fun res!2058642 () Bool)

(declare-fun e!3020049 () Bool)

(assert (=> d!1549749 (=> res!2058642 e!3020049)))

(assert (=> d!1549749 (= res!2058642 (not ((_ is Cons!55083) l!14180)))))

(assert (=> d!1549749 (= (noDuplicateKeys!2478 l!14180) e!3020049)))

(declare-fun b!4832856 () Bool)

(declare-fun e!3020050 () Bool)

(assert (=> b!4832856 (= e!3020049 e!3020050)))

(declare-fun res!2058643 () Bool)

(assert (=> b!4832856 (=> (not res!2058643) (not e!3020050))))

(declare-fun containsKey!4450 (List!55207 K!16769) Bool)

(assert (=> b!4832856 (= res!2058643 (not (containsKey!4450 (t!362703 l!14180) (_1!32482 (h!61517 l!14180)))))))

(declare-fun b!4832857 () Bool)

(assert (=> b!4832857 (= e!3020050 (noDuplicateKeys!2478 (t!362703 l!14180)))))

(assert (= (and d!1549749 (not res!2058642)) b!4832856))

(assert (= (and b!4832856 res!2058643) b!4832857))

(declare-fun m!5827298 () Bool)

(assert (=> b!4832856 m!5827298))

(assert (=> b!4832857 m!5827290))

(assert (=> start!502292 d!1549749))

(declare-fun d!1549751 () Bool)

(declare-fun invariantList!1833 (List!55207) Bool)

(assert (=> d!1549751 (= (inv!70669 acc!1183) (invariantList!1833 (toList!7564 acc!1183)))))

(declare-fun bs!1167172 () Bool)

(assert (= bs!1167172 d!1549751))

(declare-fun m!5827302 () Bool)

(assert (=> bs!1167172 m!5827302))

(assert (=> start!502292 d!1549751))

(declare-fun d!1549755 () Bool)

(declare-fun res!2058646 () Bool)

(declare-fun e!3020053 () Bool)

(assert (=> d!1549755 (=> res!2058646 e!3020053)))

(assert (=> d!1549755 (= res!2058646 (not ((_ is Cons!55083) (t!362703 l!14180))))))

(assert (=> d!1549755 (= (noDuplicateKeys!2478 (t!362703 l!14180)) e!3020053)))

(declare-fun b!4832860 () Bool)

(declare-fun e!3020054 () Bool)

(assert (=> b!4832860 (= e!3020053 e!3020054)))

(declare-fun res!2058647 () Bool)

(assert (=> b!4832860 (=> (not res!2058647) (not e!3020054))))

(assert (=> b!4832860 (= res!2058647 (not (containsKey!4450 (t!362703 (t!362703 l!14180)) (_1!32482 (h!61517 (t!362703 l!14180))))))))

(declare-fun b!4832861 () Bool)

(assert (=> b!4832861 (= e!3020054 (noDuplicateKeys!2478 (t!362703 (t!362703 l!14180))))))

(assert (= (and d!1549755 (not res!2058646)) b!4832860))

(assert (= (and b!4832860 res!2058647) b!4832861))

(declare-fun m!5827304 () Bool)

(assert (=> b!4832860 m!5827304))

(declare-fun m!5827306 () Bool)

(assert (=> b!4832861 m!5827306))

(assert (=> b!4832845 d!1549755))

(declare-fun d!1549757 () Bool)

(declare-fun e!3020059 () Bool)

(assert (=> d!1549757 e!3020059))

(declare-fun res!2058655 () Bool)

(assert (=> d!1549757 (=> (not res!2058655) (not e!3020059))))

(declare-fun lt!1978462 () ListMap!6937)

(declare-fun contains!18896 (ListMap!6937 K!16769) Bool)

(assert (=> d!1549757 (= res!2058655 (contains!18896 lt!1978462 (_1!32482 (h!61517 l!14180))))))

(declare-fun lt!1978463 () List!55207)

(assert (=> d!1549757 (= lt!1978462 (ListMap!6938 lt!1978463))))

(declare-datatypes ((Unit!144103 0))(
  ( (Unit!144104) )
))
(declare-fun lt!1978464 () Unit!144103)

(declare-fun lt!1978465 () Unit!144103)

(assert (=> d!1549757 (= lt!1978464 lt!1978465)))

(declare-datatypes ((Option!13537 0))(
  ( (None!13536) (Some!13536 (v!49237 V!17015)) )
))
(declare-fun getValueByKey!2664 (List!55207 K!16769) Option!13537)

(assert (=> d!1549757 (= (getValueByKey!2664 lt!1978463 (_1!32482 (h!61517 l!14180))) (Some!13536 (_2!32482 (h!61517 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1236 (List!55207 K!16769 V!17015) Unit!144103)

(assert (=> d!1549757 (= lt!1978465 (lemmaContainsTupThenGetReturnValue!1236 lt!1978463 (_1!32482 (h!61517 l!14180)) (_2!32482 (h!61517 l!14180))))))

(declare-fun insertNoDuplicatedKeys!744 (List!55207 K!16769 V!17015) List!55207)

(assert (=> d!1549757 (= lt!1978463 (insertNoDuplicatedKeys!744 (toList!7564 acc!1183) (_1!32482 (h!61517 l!14180)) (_2!32482 (h!61517 l!14180))))))

(assert (=> d!1549757 (= (+!2557 acc!1183 (h!61517 l!14180)) lt!1978462)))

(declare-fun b!4832868 () Bool)

(declare-fun res!2058654 () Bool)

(assert (=> b!4832868 (=> (not res!2058654) (not e!3020059))))

(assert (=> b!4832868 (= res!2058654 (= (getValueByKey!2664 (toList!7564 lt!1978462) (_1!32482 (h!61517 l!14180))) (Some!13536 (_2!32482 (h!61517 l!14180)))))))

(declare-fun b!4832869 () Bool)

(declare-fun contains!18897 (List!55207 tuple2!58376) Bool)

(assert (=> b!4832869 (= e!3020059 (contains!18897 (toList!7564 lt!1978462) (h!61517 l!14180)))))

(assert (= (and d!1549757 res!2058655) b!4832868))

(assert (= (and b!4832868 res!2058654) b!4832869))

(declare-fun m!5827314 () Bool)

(assert (=> d!1549757 m!5827314))

(declare-fun m!5827316 () Bool)

(assert (=> d!1549757 m!5827316))

(declare-fun m!5827318 () Bool)

(assert (=> d!1549757 m!5827318))

(declare-fun m!5827320 () Bool)

(assert (=> d!1549757 m!5827320))

(declare-fun m!5827322 () Bool)

(assert (=> b!4832868 m!5827322))

(declare-fun m!5827324 () Bool)

(assert (=> b!4832869 m!5827324))

(assert (=> b!4832845 d!1549757))

(declare-fun b!4832874 () Bool)

(declare-fun e!3020062 () Bool)

(declare-fun tp!1362989 () Bool)

(assert (=> b!4832874 (= e!3020062 (and tp_is_empty!34593 tp_is_empty!34595 tp!1362989))))

(assert (=> b!4832847 (= tp!1362985 e!3020062)))

(assert (= (and b!4832847 ((_ is Cons!55083) (toList!7564 acc!1183))) b!4832874))

(declare-fun e!3020063 () Bool)

(declare-fun b!4832875 () Bool)

(declare-fun tp!1362990 () Bool)

(assert (=> b!4832875 (= e!3020063 (and tp_is_empty!34593 tp_is_empty!34595 tp!1362990))))

(assert (=> b!4832846 (= tp!1362986 e!3020063)))

(assert (= (and b!4832846 ((_ is Cons!55083) (t!362703 l!14180))) b!4832875))

(check-sat (not b!4832857) (not d!1549751) (not b!4832875) (not d!1549757) tp_is_empty!34593 (not b!4832869) (not b!4832868) (not b!4832856) (not b!4832861) (not b!4832874) (not b!4832860) tp_is_empty!34595)
(check-sat)
