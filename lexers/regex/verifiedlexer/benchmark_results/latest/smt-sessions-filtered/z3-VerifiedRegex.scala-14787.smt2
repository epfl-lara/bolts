; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759588 () Bool)

(assert start!759588)

(declare-fun res!3188632 () Bool)

(declare-fun e!4749859 () Bool)

(assert (=> start!759588 (=> (not res!3188632) (not e!4749859))))

(declare-datatypes ((B!4533 0))(
  ( (B!4534 (val!33127 Int)) )
))
(declare-datatypes ((K!23068 0))(
  ( (K!23069 (val!33128 Int)) )
))
(declare-datatypes ((tuple2!71092 0))(
  ( (tuple2!71093 (_1!38849 K!23068) (_2!38849 B!4533)) )
))
(declare-datatypes ((List!75811 0))(
  ( (Nil!75685) (Cons!75685 (h!82133 tuple2!71092) (t!391583 List!75811)) )
))
(declare-datatypes ((ListMap!7455 0))(
  ( (ListMap!7456 (toList!12002 List!75811)) )
))
(declare-fun thiss!41813 () ListMap!7455)

(declare-fun key!1573 () K!23068)

(declare-fun containsKey!4955 (List!75811 K!23068) Bool)

(assert (=> start!759588 (= res!3188632 (containsKey!4955 (toList!12002 thiss!41813) key!1573))))

(assert (=> start!759588 e!4749859))

(declare-fun e!4749860 () Bool)

(declare-fun inv!97537 (ListMap!7455) Bool)

(assert (=> start!759588 (and (inv!97537 thiss!41813) e!4749860)))

(declare-fun tp_is_empty!55285 () Bool)

(assert (=> start!759588 tp_is_empty!55285))

(declare-fun b!8059868 () Bool)

(declare-fun invariantList!1990 (List!75811) Bool)

(assert (=> b!8059868 (= e!4749859 (not (invariantList!1990 (toList!12002 thiss!41813))))))

(declare-datatypes ((Option!18039 0))(
  ( (None!18038) (Some!18038 (v!55399 B!4533)) )
))
(declare-fun isDefined!14566 (Option!18039) Bool)

(declare-fun getValueByKey!2823 (List!75811 K!23068) Option!18039)

(assert (=> b!8059868 (isDefined!14566 (getValueByKey!2823 (toList!12002 thiss!41813) key!1573))))

(declare-datatypes ((Unit!172802 0))(
  ( (Unit!172803) )
))
(declare-fun lt!2732958 () Unit!172802)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2588 (List!75811 K!23068) Unit!172802)

(assert (=> b!8059868 (= lt!2732958 (lemmaContainsKeyImpliesGetValueByKeyDefined!2588 (toList!12002 thiss!41813) key!1573))))

(declare-fun b!8059869 () Bool)

(declare-fun tp!2414466 () Bool)

(assert (=> b!8059869 (= e!4749860 tp!2414466)))

(assert (= (and start!759588 res!3188632) b!8059868))

(assert (= start!759588 b!8059869))

(declare-fun m!8413016 () Bool)

(assert (=> start!759588 m!8413016))

(declare-fun m!8413018 () Bool)

(assert (=> start!759588 m!8413018))

(declare-fun m!8413020 () Bool)

(assert (=> b!8059868 m!8413020))

(declare-fun m!8413022 () Bool)

(assert (=> b!8059868 m!8413022))

(assert (=> b!8059868 m!8413022))

(declare-fun m!8413024 () Bool)

(assert (=> b!8059868 m!8413024))

(declare-fun m!8413026 () Bool)

(assert (=> b!8059868 m!8413026))

(check-sat (not b!8059868) (not start!759588) (not b!8059869) tp_is_empty!55285)
(check-sat)
(get-model)

(declare-fun d!2399430 () Bool)

(declare-fun noDuplicatedKeys!526 (List!75811) Bool)

(assert (=> d!2399430 (= (invariantList!1990 (toList!12002 thiss!41813)) (noDuplicatedKeys!526 (toList!12002 thiss!41813)))))

(declare-fun bs!1973593 () Bool)

(assert (= bs!1973593 d!2399430))

(declare-fun m!8413032 () Bool)

(assert (=> bs!1973593 m!8413032))

(assert (=> b!8059868 d!2399430))

(declare-fun d!2399434 () Bool)

(declare-fun isEmpty!43043 (Option!18039) Bool)

(assert (=> d!2399434 (= (isDefined!14566 (getValueByKey!2823 (toList!12002 thiss!41813) key!1573)) (not (isEmpty!43043 (getValueByKey!2823 (toList!12002 thiss!41813) key!1573))))))

(declare-fun bs!1973594 () Bool)

(assert (= bs!1973594 d!2399434))

(assert (=> bs!1973594 m!8413022))

(declare-fun m!8413034 () Bool)

(assert (=> bs!1973594 m!8413034))

(assert (=> b!8059868 d!2399434))

(declare-fun b!8059891 () Bool)

(declare-fun e!4749871 () Option!18039)

(declare-fun e!4749872 () Option!18039)

(assert (=> b!8059891 (= e!4749871 e!4749872)))

(declare-fun c!1477023 () Bool)

(get-info :version)

(assert (=> b!8059891 (= c!1477023 (and ((_ is Cons!75685) (toList!12002 thiss!41813)) (not (= (_1!38849 (h!82133 (toList!12002 thiss!41813))) key!1573))))))

(declare-fun b!8059892 () Bool)

(assert (=> b!8059892 (= e!4749872 (getValueByKey!2823 (t!391583 (toList!12002 thiss!41813)) key!1573))))

(declare-fun b!8059893 () Bool)

(assert (=> b!8059893 (= e!4749872 None!18038)))

(declare-fun b!8059890 () Bool)

(assert (=> b!8059890 (= e!4749871 (Some!18038 (_2!38849 (h!82133 (toList!12002 thiss!41813)))))))

(declare-fun d!2399436 () Bool)

(declare-fun c!1477022 () Bool)

(assert (=> d!2399436 (= c!1477022 (and ((_ is Cons!75685) (toList!12002 thiss!41813)) (= (_1!38849 (h!82133 (toList!12002 thiss!41813))) key!1573)))))

(assert (=> d!2399436 (= (getValueByKey!2823 (toList!12002 thiss!41813) key!1573) e!4749871)))

(assert (= (and d!2399436 c!1477022) b!8059890))

(assert (= (and d!2399436 (not c!1477022)) b!8059891))

(assert (= (and b!8059891 c!1477023) b!8059892))

(assert (= (and b!8059891 (not c!1477023)) b!8059893))

(declare-fun m!8413038 () Bool)

(assert (=> b!8059892 m!8413038))

(assert (=> b!8059868 d!2399436))

(declare-fun d!2399440 () Bool)

(assert (=> d!2399440 (isDefined!14566 (getValueByKey!2823 (toList!12002 thiss!41813) key!1573))))

(declare-fun lt!2732964 () Unit!172802)

(declare-fun choose!60590 (List!75811 K!23068) Unit!172802)

(assert (=> d!2399440 (= lt!2732964 (choose!60590 (toList!12002 thiss!41813) key!1573))))

(assert (=> d!2399440 (invariantList!1990 (toList!12002 thiss!41813))))

(assert (=> d!2399440 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2588 (toList!12002 thiss!41813) key!1573) lt!2732964)))

(declare-fun bs!1973596 () Bool)

(assert (= bs!1973596 d!2399440))

(assert (=> bs!1973596 m!8413022))

(assert (=> bs!1973596 m!8413022))

(assert (=> bs!1973596 m!8413024))

(declare-fun m!8413042 () Bool)

(assert (=> bs!1973596 m!8413042))

(assert (=> bs!1973596 m!8413020))

(assert (=> b!8059868 d!2399440))

(declare-fun d!2399444 () Bool)

(declare-fun res!3188643 () Bool)

(declare-fun e!4749886 () Bool)

(assert (=> d!2399444 (=> res!3188643 e!4749886)))

(assert (=> d!2399444 (= res!3188643 (and ((_ is Cons!75685) (toList!12002 thiss!41813)) (= (_1!38849 (h!82133 (toList!12002 thiss!41813))) key!1573)))))

(assert (=> d!2399444 (= (containsKey!4955 (toList!12002 thiss!41813) key!1573) e!4749886)))

(declare-fun b!8059909 () Bool)

(declare-fun e!4749887 () Bool)

(assert (=> b!8059909 (= e!4749886 e!4749887)))

(declare-fun res!3188644 () Bool)

(assert (=> b!8059909 (=> (not res!3188644) (not e!4749887))))

(assert (=> b!8059909 (= res!3188644 ((_ is Cons!75685) (toList!12002 thiss!41813)))))

(declare-fun b!8059910 () Bool)

(assert (=> b!8059910 (= e!4749887 (containsKey!4955 (t!391583 (toList!12002 thiss!41813)) key!1573))))

(assert (= (and d!2399444 (not res!3188643)) b!8059909))

(assert (= (and b!8059909 res!3188644) b!8059910))

(declare-fun m!8413046 () Bool)

(assert (=> b!8059910 m!8413046))

(assert (=> start!759588 d!2399444))

(declare-fun d!2399448 () Bool)

(assert (=> d!2399448 (= (inv!97537 thiss!41813) (invariantList!1990 (toList!12002 thiss!41813)))))

(declare-fun bs!1973598 () Bool)

(assert (= bs!1973598 d!2399448))

(assert (=> bs!1973598 m!8413020))

(assert (=> start!759588 d!2399448))

(declare-fun tp!2414472 () Bool)

(declare-fun b!8059915 () Bool)

(declare-fun tp_is_empty!55289 () Bool)

(declare-fun e!4749890 () Bool)

(assert (=> b!8059915 (= e!4749890 (and tp_is_empty!55285 tp_is_empty!55289 tp!2414472))))

(assert (=> b!8059869 (= tp!2414466 e!4749890)))

(assert (= (and b!8059869 ((_ is Cons!75685) (toList!12002 thiss!41813))) b!8059915))

(check-sat (not b!8059915) (not d!2399448) (not d!2399434) (not b!8059892) (not d!2399440) tp_is_empty!55289 (not d!2399430) tp_is_empty!55285 (not b!8059910))
(check-sat)
