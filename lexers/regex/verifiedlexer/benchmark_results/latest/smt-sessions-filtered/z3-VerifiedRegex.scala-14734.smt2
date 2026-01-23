; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758448 () Bool)

(assert start!758448)

(declare-fun b!8052773 () Bool)

(declare-fun e!4745099 () Bool)

(declare-datatypes ((K!22803 0))(
  ( (K!22804 (val!32915 Int)) )
))
(declare-datatypes ((V!23057 0))(
  ( (V!23058 (val!32916 Int)) )
))
(declare-datatypes ((tuple2!70880 0))(
  ( (tuple2!70881 (_1!38743 K!22803) (_2!38743 V!23057)) )
))
(declare-datatypes ((List!75664 0))(
  ( (Nil!75538) (Cons!75538 (h!81986 tuple2!70880) (t!391436 List!75664)) )
))
(declare-fun l!14636 () List!75664)

(declare-fun ListPrimitiveSize!550 (List!75664) Int)

(assert (=> b!8052773 (= e!4745099 (< (ListPrimitiveSize!550 (t!391436 l!14636)) (ListPrimitiveSize!550 l!14636)))))

(declare-fun b!8052774 () Bool)

(declare-fun e!4745096 () Bool)

(assert (=> b!8052774 (= e!4745096 (not e!4745099))))

(declare-fun res!3184383 () Bool)

(assert (=> b!8052774 (=> res!3184383 e!4745099)))

(declare-fun value!3131 () V!23057)

(assert (=> b!8052774 (= res!3184383 (not (= (_2!38743 (h!81986 l!14636)) value!3131)))))

(declare-fun key!6222 () K!22803)

(declare-fun contains!21197 (List!75664 tuple2!70880) Bool)

(assert (=> b!8052774 (not (contains!21197 (t!391436 l!14636) (tuple2!70881 key!6222 value!3131)))))

(declare-datatypes ((Unit!171791 0))(
  ( (Unit!171792) )
))
(declare-fun lt!2726492 () Unit!171791)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!22 (List!75664 K!22803 V!23057) Unit!171791)

(assert (=> b!8052774 (= lt!2726492 (lemmaNotContainsKeyThenCannotContainPair!22 (t!391436 l!14636) key!6222 value!3131))))

(declare-fun b!8052775 () Bool)

(declare-fun e!4745092 () Bool)

(declare-fun e!4745100 () Bool)

(assert (=> b!8052775 (= e!4745092 e!4745100)))

(declare-fun res!3184394 () Bool)

(assert (=> b!8052775 (=> (not res!3184394) (not e!4745100))))

(declare-fun containsKey!4845 (List!75664 K!22803) Bool)

(assert (=> b!8052775 (= res!3184394 (containsKey!4845 l!14636 key!6222))))

(declare-fun b!8052776 () Bool)

(declare-fun res!3184392 () Bool)

(declare-fun e!4745093 () Bool)

(assert (=> b!8052776 (=> (not res!3184392) (not e!4745093))))

(get-info :version)

(assert (=> b!8052776 (= res!3184392 (not ((_ is Nil!75538) l!14636)))))

(declare-fun tp_is_empty!54885 () Bool)

(declare-fun tp!2413704 () Bool)

(declare-fun b!8052777 () Bool)

(declare-fun e!4745090 () Bool)

(declare-fun tp_is_empty!54883 () Bool)

(assert (=> b!8052777 (= e!4745090 (and tp_is_empty!54883 tp_is_empty!54885 tp!2413704))))

(declare-fun b!8052778 () Bool)

(declare-fun res!3184388 () Bool)

(assert (=> b!8052778 (=> res!3184388 e!4745099)))

(declare-fun e!4745094 () Bool)

(assert (=> b!8052778 (= res!3184388 e!4745094)))

(declare-fun res!3184382 () Bool)

(assert (=> b!8052778 (=> (not res!3184382) (not e!4745094))))

(declare-fun e!4745097 () Bool)

(assert (=> b!8052778 (= res!3184382 e!4745097)))

(declare-fun res!3184390 () Bool)

(assert (=> b!8052778 (=> res!3184390 e!4745097)))

(declare-datatypes ((ListMap!7283 0))(
  ( (ListMap!7284 (toList!11916 List!75664)) )
))
(declare-fun lt!2726488 () ListMap!7283)

(declare-fun contains!21198 (ListMap!7283 K!22803) Bool)

(assert (=> b!8052778 (= res!3184390 (not (contains!21198 lt!2726488 key!6222)))))

(declare-fun b!8052779 () Bool)

(declare-fun e!4745095 () Bool)

(assert (=> b!8052779 (= e!4745095 (not (containsKey!4845 l!14636 key!6222)))))

(declare-fun b!8052781 () Bool)

(assert (=> b!8052781 (= e!4745097 (containsKey!4845 (t!391436 l!14636) key!6222))))

(declare-fun b!8052782 () Bool)

(declare-fun res!3184381 () Bool)

(assert (=> b!8052782 (=> (not res!3184381) (not e!4745100))))

(assert (=> b!8052782 (= res!3184381 (contains!21197 l!14636 (tuple2!70881 key!6222 value!3131)))))

(declare-fun b!8052783 () Bool)

(declare-fun e!4745098 () Bool)

(assert (=> b!8052783 (= e!4745098 e!4745093)))

(declare-fun res!3184395 () Bool)

(assert (=> b!8052783 (=> (not res!3184395) (not e!4745093))))

(assert (=> b!8052783 (= res!3184395 e!4745092)))

(declare-fun res!3184391 () Bool)

(assert (=> b!8052783 (=> res!3184391 e!4745092)))

(assert (=> b!8052783 (= res!3184391 e!4745095)))

(declare-fun res!3184380 () Bool)

(assert (=> b!8052783 (=> (not res!3184380) (not e!4745095))))

(declare-fun lt!2726489 () Bool)

(assert (=> b!8052783 (= res!3184380 lt!2726489)))

(declare-fun acc!1298 () ListMap!7283)

(assert (=> b!8052783 (= lt!2726489 (contains!21198 acc!1298 key!6222))))

(declare-fun b!8052784 () Bool)

(assert (=> b!8052784 (= e!4745094 true)))

(declare-fun lt!2726491 () Bool)

(assert (=> b!8052784 (= lt!2726491 (containsKey!4845 (t!391436 l!14636) key!6222))))

(declare-fun b!8052785 () Bool)

(declare-fun res!3184384 () Bool)

(assert (=> b!8052785 (=> res!3184384 e!4745097)))

(declare-fun apply!14429 (ListMap!7283 K!22803) V!23057)

(assert (=> b!8052785 (= res!3184384 (not (= (apply!14429 lt!2726488 key!6222) value!3131)))))

(declare-fun b!8052786 () Bool)

(assert (=> b!8052786 (= e!4745093 e!4745096)))

(declare-fun res!3184385 () Bool)

(assert (=> b!8052786 (=> (not res!3184385) (not e!4745096))))

(assert (=> b!8052786 (= res!3184385 (= (_1!38743 (h!81986 l!14636)) key!6222))))

(declare-fun lt!2726490 () ListMap!7283)

(declare-fun addToMapMapFromBucket!1983 (List!75664 ListMap!7283) ListMap!7283)

(assert (=> b!8052786 (= lt!2726490 (addToMapMapFromBucket!1983 (t!391436 l!14636) lt!2726488))))

(declare-fun +!2667 (ListMap!7283 tuple2!70880) ListMap!7283)

(assert (=> b!8052786 (= lt!2726488 (+!2667 acc!1298 (h!81986 l!14636)))))

(declare-fun b!8052787 () Bool)

(declare-fun res!3184389 () Bool)

(assert (=> b!8052787 (=> (not res!3184389) (not e!4745095))))

(assert (=> b!8052787 (= res!3184389 (= (apply!14429 acc!1298 key!6222) value!3131))))

(declare-fun b!8052780 () Bool)

(assert (=> b!8052780 (= e!4745100 (not lt!2726489))))

(declare-fun res!3184393 () Bool)

(assert (=> start!758448 (=> (not res!3184393) (not e!4745098))))

(declare-fun noDuplicateKeys!2702 (List!75664) Bool)

(assert (=> start!758448 (= res!3184393 (noDuplicateKeys!2702 l!14636))))

(assert (=> start!758448 e!4745098))

(assert (=> start!758448 e!4745090))

(declare-fun e!4745091 () Bool)

(declare-fun inv!97292 (ListMap!7283) Bool)

(assert (=> start!758448 (and (inv!97292 acc!1298) e!4745091)))

(assert (=> start!758448 tp_is_empty!54883))

(assert (=> start!758448 tp_is_empty!54885))

(declare-fun b!8052788 () Bool)

(declare-fun res!3184386 () Bool)

(assert (=> b!8052788 (=> (not res!3184386) (not e!4745098))))

(assert (=> b!8052788 (= res!3184386 (contains!21198 (addToMapMapFromBucket!1983 l!14636 acc!1298) key!6222))))

(declare-fun b!8052789 () Bool)

(declare-fun res!3184387 () Bool)

(assert (=> b!8052789 (=> res!3184387 e!4745099)))

(assert (=> b!8052789 (= res!3184387 (not (noDuplicateKeys!2702 (t!391436 l!14636))))))

(declare-fun b!8052790 () Bool)

(declare-fun res!3184379 () Bool)

(assert (=> b!8052790 (=> res!3184379 e!4745099)))

(assert (=> b!8052790 (= res!3184379 (not (contains!21198 lt!2726490 key!6222)))))

(declare-fun b!8052791 () Bool)

(declare-fun tp!2413705 () Bool)

(assert (=> b!8052791 (= e!4745091 tp!2413705)))

(assert (= (and start!758448 res!3184393) b!8052788))

(assert (= (and b!8052788 res!3184386) b!8052783))

(assert (= (and b!8052783 res!3184380) b!8052787))

(assert (= (and b!8052787 res!3184389) b!8052779))

(assert (= (and b!8052783 (not res!3184391)) b!8052775))

(assert (= (and b!8052775 res!3184394) b!8052782))

(assert (= (and b!8052782 res!3184381) b!8052780))

(assert (= (and b!8052783 res!3184395) b!8052776))

(assert (= (and b!8052776 res!3184392) b!8052786))

(assert (= (and b!8052786 res!3184385) b!8052774))

(assert (= (and b!8052774 (not res!3184383)) b!8052789))

(assert (= (and b!8052789 (not res!3184387)) b!8052790))

(assert (= (and b!8052790 (not res!3184379)) b!8052778))

(assert (= (and b!8052778 (not res!3184390)) b!8052785))

(assert (= (and b!8052785 (not res!3184384)) b!8052781))

(assert (= (and b!8052778 res!3184382) b!8052784))

(assert (= (and b!8052778 (not res!3184388)) b!8052773))

(assert (= (and start!758448 ((_ is Cons!75538) l!14636)) b!8052777))

(assert (= start!758448 b!8052791))

(declare-fun m!8404652 () Bool)

(assert (=> b!8052784 m!8404652))

(declare-fun m!8404654 () Bool)

(assert (=> b!8052787 m!8404654))

(assert (=> b!8052781 m!8404652))

(declare-fun m!8404656 () Bool)

(assert (=> b!8052785 m!8404656))

(declare-fun m!8404658 () Bool)

(assert (=> start!758448 m!8404658))

(declare-fun m!8404660 () Bool)

(assert (=> start!758448 m!8404660))

(declare-fun m!8404662 () Bool)

(assert (=> b!8052789 m!8404662))

(declare-fun m!8404664 () Bool)

(assert (=> b!8052786 m!8404664))

(declare-fun m!8404666 () Bool)

(assert (=> b!8052786 m!8404666))

(declare-fun m!8404668 () Bool)

(assert (=> b!8052779 m!8404668))

(assert (=> b!8052775 m!8404668))

(declare-fun m!8404670 () Bool)

(assert (=> b!8052788 m!8404670))

(assert (=> b!8052788 m!8404670))

(declare-fun m!8404672 () Bool)

(assert (=> b!8052788 m!8404672))

(declare-fun m!8404674 () Bool)

(assert (=> b!8052774 m!8404674))

(declare-fun m!8404676 () Bool)

(assert (=> b!8052774 m!8404676))

(declare-fun m!8404678 () Bool)

(assert (=> b!8052778 m!8404678))

(declare-fun m!8404680 () Bool)

(assert (=> b!8052790 m!8404680))

(declare-fun m!8404682 () Bool)

(assert (=> b!8052773 m!8404682))

(declare-fun m!8404684 () Bool)

(assert (=> b!8052773 m!8404684))

(declare-fun m!8404686 () Bool)

(assert (=> b!8052783 m!8404686))

(declare-fun m!8404688 () Bool)

(assert (=> b!8052782 m!8404688))

(check-sat (not b!8052783) (not start!758448) tp_is_empty!54885 (not b!8052782) (not b!8052786) (not b!8052788) (not b!8052787) (not b!8052775) (not b!8052790) (not b!8052789) (not b!8052784) tp_is_empty!54883 (not b!8052791) (not b!8052777) (not b!8052785) (not b!8052774) (not b!8052773) (not b!8052781) (not b!8052778) (not b!8052779))
(check-sat)
(get-model)

(declare-fun b!8052818 () Bool)

(declare-datatypes ((List!75665 0))(
  ( (Nil!75539) (Cons!75539 (h!81987 K!22803) (t!391437 List!75665)) )
))
(declare-fun e!4745122 () List!75665)

(declare-fun getKeysList!1238 (List!75664) List!75665)

(assert (=> b!8052818 (= e!4745122 (getKeysList!1238 (toList!11916 lt!2726490)))))

(declare-fun d!2397835 () Bool)

(declare-fun e!4745125 () Bool)

(assert (=> d!2397835 e!4745125))

(declare-fun res!3184411 () Bool)

(assert (=> d!2397835 (=> res!3184411 e!4745125)))

(declare-fun e!4745124 () Bool)

(assert (=> d!2397835 (= res!3184411 e!4745124)))

(declare-fun res!3184412 () Bool)

(assert (=> d!2397835 (=> (not res!3184412) (not e!4745124))))

(declare-fun lt!2726511 () Bool)

(assert (=> d!2397835 (= res!3184412 (not lt!2726511))))

(declare-fun lt!2726516 () Bool)

(assert (=> d!2397835 (= lt!2726511 lt!2726516)))

(declare-fun lt!2726509 () Unit!171791)

(declare-fun e!4745121 () Unit!171791)

(assert (=> d!2397835 (= lt!2726509 e!4745121)))

(declare-fun c!1476123 () Bool)

(assert (=> d!2397835 (= c!1476123 lt!2726516)))

(declare-fun containsKey!4846 (List!75664 K!22803) Bool)

(assert (=> d!2397835 (= lt!2726516 (containsKey!4846 (toList!11916 lt!2726490) key!6222))))

(assert (=> d!2397835 (= (contains!21198 lt!2726490 key!6222) lt!2726511)))

(declare-fun b!8052819 () Bool)

(declare-fun e!4745123 () Bool)

(assert (=> b!8052819 (= e!4745125 e!4745123)))

(declare-fun res!3184410 () Bool)

(assert (=> b!8052819 (=> (not res!3184410) (not e!4745123))))

(declare-datatypes ((Option!17996 0))(
  ( (None!17995) (Some!17995 (v!55310 V!23057)) )
))
(declare-fun isDefined!14528 (Option!17996) Bool)

(declare-fun getValueByKey!2780 (List!75664 K!22803) Option!17996)

(assert (=> b!8052819 (= res!3184410 (isDefined!14528 (getValueByKey!2780 (toList!11916 lt!2726490) key!6222)))))

(declare-fun bm!747105 () Bool)

(declare-fun call!747110 () Bool)

(declare-fun contains!21199 (List!75665 K!22803) Bool)

(assert (=> bm!747105 (= call!747110 (contains!21199 e!4745122 key!6222))))

(declare-fun c!1476122 () Bool)

(assert (=> bm!747105 (= c!1476122 c!1476123)))

(declare-fun b!8052820 () Bool)

(declare-fun keys!30829 (ListMap!7283) List!75665)

(assert (=> b!8052820 (= e!4745124 (not (contains!21199 (keys!30829 lt!2726490) key!6222)))))

(declare-fun b!8052821 () Bool)

(declare-fun lt!2726515 () Unit!171791)

(assert (=> b!8052821 (= e!4745121 lt!2726515)))

(declare-fun lt!2726514 () Unit!171791)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2550 (List!75664 K!22803) Unit!171791)

(assert (=> b!8052821 (= lt!2726514 (lemmaContainsKeyImpliesGetValueByKeyDefined!2550 (toList!11916 lt!2726490) key!6222))))

(assert (=> b!8052821 (isDefined!14528 (getValueByKey!2780 (toList!11916 lt!2726490) key!6222))))

(declare-fun lt!2726510 () Unit!171791)

(assert (=> b!8052821 (= lt!2726510 lt!2726514)))

(declare-fun lemmaInListThenGetKeysListContains!1233 (List!75664 K!22803) Unit!171791)

(assert (=> b!8052821 (= lt!2726515 (lemmaInListThenGetKeysListContains!1233 (toList!11916 lt!2726490) key!6222))))

(assert (=> b!8052821 call!747110))

(declare-fun b!8052822 () Bool)

(declare-fun e!4745126 () Unit!171791)

(declare-fun Unit!171802 () Unit!171791)

(assert (=> b!8052822 (= e!4745126 Unit!171802)))

(declare-fun b!8052823 () Bool)

(assert (=> b!8052823 (= e!4745123 (contains!21199 (keys!30829 lt!2726490) key!6222))))

(declare-fun b!8052824 () Bool)

(assert (=> b!8052824 (= e!4745122 (keys!30829 lt!2726490))))

(declare-fun b!8052825 () Bool)

(assert (=> b!8052825 false))

(declare-fun lt!2726512 () Unit!171791)

(declare-fun lt!2726513 () Unit!171791)

(assert (=> b!8052825 (= lt!2726512 lt!2726513)))

(assert (=> b!8052825 (containsKey!4846 (toList!11916 lt!2726490) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1238 (List!75664 K!22803) Unit!171791)

(assert (=> b!8052825 (= lt!2726513 (lemmaInGetKeysListThenContainsKey!1238 (toList!11916 lt!2726490) key!6222))))

(declare-fun Unit!171804 () Unit!171791)

(assert (=> b!8052825 (= e!4745126 Unit!171804)))

(declare-fun b!8052826 () Bool)

(assert (=> b!8052826 (= e!4745121 e!4745126)))

(declare-fun c!1476124 () Bool)

(assert (=> b!8052826 (= c!1476124 call!747110)))

(assert (= (and d!2397835 c!1476123) b!8052821))

(assert (= (and d!2397835 (not c!1476123)) b!8052826))

(assert (= (and b!8052826 c!1476124) b!8052825))

(assert (= (and b!8052826 (not c!1476124)) b!8052822))

(assert (= (or b!8052821 b!8052826) bm!747105))

(assert (= (and bm!747105 c!1476122) b!8052818))

(assert (= (and bm!747105 (not c!1476122)) b!8052824))

(assert (= (and d!2397835 res!3184412) b!8052820))

(assert (= (and d!2397835 (not res!3184411)) b!8052819))

(assert (= (and b!8052819 res!3184410) b!8052823))

(declare-fun m!8404700 () Bool)

(assert (=> b!8052825 m!8404700))

(declare-fun m!8404702 () Bool)

(assert (=> b!8052825 m!8404702))

(declare-fun m!8404704 () Bool)

(assert (=> b!8052824 m!8404704))

(declare-fun m!8404706 () Bool)

(assert (=> b!8052818 m!8404706))

(declare-fun m!8404708 () Bool)

(assert (=> b!8052821 m!8404708))

(declare-fun m!8404710 () Bool)

(assert (=> b!8052821 m!8404710))

(assert (=> b!8052821 m!8404710))

(declare-fun m!8404712 () Bool)

(assert (=> b!8052821 m!8404712))

(declare-fun m!8404714 () Bool)

(assert (=> b!8052821 m!8404714))

(assert (=> b!8052820 m!8404704))

(assert (=> b!8052820 m!8404704))

(declare-fun m!8404716 () Bool)

(assert (=> b!8052820 m!8404716))

(assert (=> d!2397835 m!8404700))

(assert (=> b!8052819 m!8404710))

(assert (=> b!8052819 m!8404710))

(assert (=> b!8052819 m!8404712))

(declare-fun m!8404718 () Bool)

(assert (=> bm!747105 m!8404718))

(assert (=> b!8052823 m!8404704))

(assert (=> b!8052823 m!8404704))

(assert (=> b!8052823 m!8404716))

(assert (=> b!8052790 d!2397835))

(declare-fun d!2397847 () Bool)

(declare-fun res!3184417 () Bool)

(declare-fun e!4745131 () Bool)

(assert (=> d!2397847 (=> res!3184417 e!4745131)))

(assert (=> d!2397847 (= res!3184417 (and ((_ is Cons!75538) l!14636) (= (_1!38743 (h!81986 l!14636)) key!6222)))))

(assert (=> d!2397847 (= (containsKey!4845 l!14636 key!6222) e!4745131)))

(declare-fun b!8052831 () Bool)

(declare-fun e!4745132 () Bool)

(assert (=> b!8052831 (= e!4745131 e!4745132)))

(declare-fun res!3184418 () Bool)

(assert (=> b!8052831 (=> (not res!3184418) (not e!4745132))))

(assert (=> b!8052831 (= res!3184418 ((_ is Cons!75538) l!14636))))

(declare-fun b!8052832 () Bool)

(assert (=> b!8052832 (= e!4745132 (containsKey!4845 (t!391436 l!14636) key!6222))))

(assert (= (and d!2397847 (not res!3184417)) b!8052831))

(assert (= (and b!8052831 res!3184418) b!8052832))

(assert (=> b!8052832 m!8404652))

(assert (=> b!8052779 d!2397847))

(declare-fun d!2397849 () Bool)

(declare-fun res!3184423 () Bool)

(declare-fun e!4745137 () Bool)

(assert (=> d!2397849 (=> res!3184423 e!4745137)))

(assert (=> d!2397849 (= res!3184423 (not ((_ is Cons!75538) (t!391436 l!14636))))))

(assert (=> d!2397849 (= (noDuplicateKeys!2702 (t!391436 l!14636)) e!4745137)))

(declare-fun b!8052837 () Bool)

(declare-fun e!4745138 () Bool)

(assert (=> b!8052837 (= e!4745137 e!4745138)))

(declare-fun res!3184424 () Bool)

(assert (=> b!8052837 (=> (not res!3184424) (not e!4745138))))

(assert (=> b!8052837 (= res!3184424 (not (containsKey!4845 (t!391436 (t!391436 l!14636)) (_1!38743 (h!81986 (t!391436 l!14636))))))))

(declare-fun b!8052838 () Bool)

(assert (=> b!8052838 (= e!4745138 (noDuplicateKeys!2702 (t!391436 (t!391436 l!14636))))))

(assert (= (and d!2397849 (not res!3184423)) b!8052837))

(assert (= (and b!8052837 res!3184424) b!8052838))

(declare-fun m!8404720 () Bool)

(assert (=> b!8052837 m!8404720))

(declare-fun m!8404722 () Bool)

(assert (=> b!8052838 m!8404722))

(assert (=> b!8052789 d!2397849))

(declare-fun b!8052839 () Bool)

(declare-fun e!4745140 () List!75665)

(assert (=> b!8052839 (= e!4745140 (getKeysList!1238 (toList!11916 lt!2726488)))))

(declare-fun d!2397851 () Bool)

(declare-fun e!4745143 () Bool)

(assert (=> d!2397851 e!4745143))

(declare-fun res!3184426 () Bool)

(assert (=> d!2397851 (=> res!3184426 e!4745143)))

(declare-fun e!4745142 () Bool)

(assert (=> d!2397851 (= res!3184426 e!4745142)))

(declare-fun res!3184427 () Bool)

(assert (=> d!2397851 (=> (not res!3184427) (not e!4745142))))

(declare-fun lt!2726519 () Bool)

(assert (=> d!2397851 (= res!3184427 (not lt!2726519))))

(declare-fun lt!2726524 () Bool)

(assert (=> d!2397851 (= lt!2726519 lt!2726524)))

(declare-fun lt!2726517 () Unit!171791)

(declare-fun e!4745139 () Unit!171791)

(assert (=> d!2397851 (= lt!2726517 e!4745139)))

(declare-fun c!1476126 () Bool)

(assert (=> d!2397851 (= c!1476126 lt!2726524)))

(assert (=> d!2397851 (= lt!2726524 (containsKey!4846 (toList!11916 lt!2726488) key!6222))))

(assert (=> d!2397851 (= (contains!21198 lt!2726488 key!6222) lt!2726519)))

(declare-fun b!8052840 () Bool)

(declare-fun e!4745141 () Bool)

(assert (=> b!8052840 (= e!4745143 e!4745141)))

(declare-fun res!3184425 () Bool)

(assert (=> b!8052840 (=> (not res!3184425) (not e!4745141))))

(assert (=> b!8052840 (= res!3184425 (isDefined!14528 (getValueByKey!2780 (toList!11916 lt!2726488) key!6222)))))

(declare-fun bm!747106 () Bool)

(declare-fun call!747111 () Bool)

(assert (=> bm!747106 (= call!747111 (contains!21199 e!4745140 key!6222))))

(declare-fun c!1476125 () Bool)

(assert (=> bm!747106 (= c!1476125 c!1476126)))

(declare-fun b!8052841 () Bool)

(assert (=> b!8052841 (= e!4745142 (not (contains!21199 (keys!30829 lt!2726488) key!6222)))))

(declare-fun b!8052842 () Bool)

(declare-fun lt!2726523 () Unit!171791)

(assert (=> b!8052842 (= e!4745139 lt!2726523)))

(declare-fun lt!2726522 () Unit!171791)

(assert (=> b!8052842 (= lt!2726522 (lemmaContainsKeyImpliesGetValueByKeyDefined!2550 (toList!11916 lt!2726488) key!6222))))

(assert (=> b!8052842 (isDefined!14528 (getValueByKey!2780 (toList!11916 lt!2726488) key!6222))))

(declare-fun lt!2726518 () Unit!171791)

(assert (=> b!8052842 (= lt!2726518 lt!2726522)))

(assert (=> b!8052842 (= lt!2726523 (lemmaInListThenGetKeysListContains!1233 (toList!11916 lt!2726488) key!6222))))

(assert (=> b!8052842 call!747111))

(declare-fun b!8052843 () Bool)

(declare-fun e!4745144 () Unit!171791)

(declare-fun Unit!171806 () Unit!171791)

(assert (=> b!8052843 (= e!4745144 Unit!171806)))

(declare-fun b!8052844 () Bool)

(assert (=> b!8052844 (= e!4745141 (contains!21199 (keys!30829 lt!2726488) key!6222))))

(declare-fun b!8052845 () Bool)

(assert (=> b!8052845 (= e!4745140 (keys!30829 lt!2726488))))

(declare-fun b!8052846 () Bool)

(assert (=> b!8052846 false))

(declare-fun lt!2726520 () Unit!171791)

(declare-fun lt!2726521 () Unit!171791)

(assert (=> b!8052846 (= lt!2726520 lt!2726521)))

(assert (=> b!8052846 (containsKey!4846 (toList!11916 lt!2726488) key!6222)))

(assert (=> b!8052846 (= lt!2726521 (lemmaInGetKeysListThenContainsKey!1238 (toList!11916 lt!2726488) key!6222))))

(declare-fun Unit!171807 () Unit!171791)

(assert (=> b!8052846 (= e!4745144 Unit!171807)))

(declare-fun b!8052847 () Bool)

(assert (=> b!8052847 (= e!4745139 e!4745144)))

(declare-fun c!1476127 () Bool)

(assert (=> b!8052847 (= c!1476127 call!747111)))

(assert (= (and d!2397851 c!1476126) b!8052842))

(assert (= (and d!2397851 (not c!1476126)) b!8052847))

(assert (= (and b!8052847 c!1476127) b!8052846))

(assert (= (and b!8052847 (not c!1476127)) b!8052843))

(assert (= (or b!8052842 b!8052847) bm!747106))

(assert (= (and bm!747106 c!1476125) b!8052839))

(assert (= (and bm!747106 (not c!1476125)) b!8052845))

(assert (= (and d!2397851 res!3184427) b!8052841))

(assert (= (and d!2397851 (not res!3184426)) b!8052840))

(assert (= (and b!8052840 res!3184425) b!8052844))

(declare-fun m!8404724 () Bool)

(assert (=> b!8052846 m!8404724))

(declare-fun m!8404726 () Bool)

(assert (=> b!8052846 m!8404726))

(declare-fun m!8404728 () Bool)

(assert (=> b!8052845 m!8404728))

(declare-fun m!8404730 () Bool)

(assert (=> b!8052839 m!8404730))

(declare-fun m!8404732 () Bool)

(assert (=> b!8052842 m!8404732))

(declare-fun m!8404734 () Bool)

(assert (=> b!8052842 m!8404734))

(assert (=> b!8052842 m!8404734))

(declare-fun m!8404736 () Bool)

(assert (=> b!8052842 m!8404736))

(declare-fun m!8404738 () Bool)

(assert (=> b!8052842 m!8404738))

(assert (=> b!8052841 m!8404728))

(assert (=> b!8052841 m!8404728))

(declare-fun m!8404740 () Bool)

(assert (=> b!8052841 m!8404740))

(assert (=> d!2397851 m!8404724))

(assert (=> b!8052840 m!8404734))

(assert (=> b!8052840 m!8404734))

(assert (=> b!8052840 m!8404736))

(declare-fun m!8404742 () Bool)

(assert (=> bm!747106 m!8404742))

(assert (=> b!8052844 m!8404728))

(assert (=> b!8052844 m!8404728))

(assert (=> b!8052844 m!8404740))

(assert (=> b!8052778 d!2397851))

(declare-fun b!8052848 () Bool)

(declare-fun e!4745146 () List!75665)

(assert (=> b!8052848 (= e!4745146 (getKeysList!1238 (toList!11916 (addToMapMapFromBucket!1983 l!14636 acc!1298))))))

(declare-fun d!2397853 () Bool)

(declare-fun e!4745149 () Bool)

(assert (=> d!2397853 e!4745149))

(declare-fun res!3184429 () Bool)

(assert (=> d!2397853 (=> res!3184429 e!4745149)))

(declare-fun e!4745148 () Bool)

(assert (=> d!2397853 (= res!3184429 e!4745148)))

(declare-fun res!3184430 () Bool)

(assert (=> d!2397853 (=> (not res!3184430) (not e!4745148))))

(declare-fun lt!2726527 () Bool)

(assert (=> d!2397853 (= res!3184430 (not lt!2726527))))

(declare-fun lt!2726532 () Bool)

(assert (=> d!2397853 (= lt!2726527 lt!2726532)))

(declare-fun lt!2726525 () Unit!171791)

(declare-fun e!4745145 () Unit!171791)

(assert (=> d!2397853 (= lt!2726525 e!4745145)))

(declare-fun c!1476129 () Bool)

(assert (=> d!2397853 (= c!1476129 lt!2726532)))

(assert (=> d!2397853 (= lt!2726532 (containsKey!4846 (toList!11916 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397853 (= (contains!21198 (addToMapMapFromBucket!1983 l!14636 acc!1298) key!6222) lt!2726527)))

(declare-fun b!8052849 () Bool)

(declare-fun e!4745147 () Bool)

(assert (=> b!8052849 (= e!4745149 e!4745147)))

(declare-fun res!3184428 () Bool)

(assert (=> b!8052849 (=> (not res!3184428) (not e!4745147))))

(assert (=> b!8052849 (= res!3184428 (isDefined!14528 (getValueByKey!2780 (toList!11916 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222)))))

(declare-fun bm!747107 () Bool)

(declare-fun call!747112 () Bool)

(assert (=> bm!747107 (= call!747112 (contains!21199 e!4745146 key!6222))))

(declare-fun c!1476128 () Bool)

(assert (=> bm!747107 (= c!1476128 c!1476129)))

(declare-fun b!8052850 () Bool)

(assert (=> b!8052850 (= e!4745148 (not (contains!21199 (keys!30829 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8052851 () Bool)

(declare-fun lt!2726531 () Unit!171791)

(assert (=> b!8052851 (= e!4745145 lt!2726531)))

(declare-fun lt!2726530 () Unit!171791)

(assert (=> b!8052851 (= lt!2726530 (lemmaContainsKeyImpliesGetValueByKeyDefined!2550 (toList!11916 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222))))

(assert (=> b!8052851 (isDefined!14528 (getValueByKey!2780 (toList!11916 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2726526 () Unit!171791)

(assert (=> b!8052851 (= lt!2726526 lt!2726530)))

(assert (=> b!8052851 (= lt!2726531 (lemmaInListThenGetKeysListContains!1233 (toList!11916 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222))))

(assert (=> b!8052851 call!747112))

(declare-fun b!8052852 () Bool)

(declare-fun e!4745150 () Unit!171791)

(declare-fun Unit!171810 () Unit!171791)

(assert (=> b!8052852 (= e!4745150 Unit!171810)))

(declare-fun b!8052853 () Bool)

(assert (=> b!8052853 (= e!4745147 (contains!21199 (keys!30829 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222))))

(declare-fun b!8052854 () Bool)

(assert (=> b!8052854 (= e!4745146 (keys!30829 (addToMapMapFromBucket!1983 l!14636 acc!1298)))))

(declare-fun b!8052855 () Bool)

(assert (=> b!8052855 false))

(declare-fun lt!2726528 () Unit!171791)

(declare-fun lt!2726529 () Unit!171791)

(assert (=> b!8052855 (= lt!2726528 lt!2726529)))

(assert (=> b!8052855 (containsKey!4846 (toList!11916 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222)))

(assert (=> b!8052855 (= lt!2726529 (lemmaInGetKeysListThenContainsKey!1238 (toList!11916 (addToMapMapFromBucket!1983 l!14636 acc!1298)) key!6222))))

(declare-fun Unit!171811 () Unit!171791)

(assert (=> b!8052855 (= e!4745150 Unit!171811)))

(declare-fun b!8052856 () Bool)

(assert (=> b!8052856 (= e!4745145 e!4745150)))

(declare-fun c!1476130 () Bool)

(assert (=> b!8052856 (= c!1476130 call!747112)))

(assert (= (and d!2397853 c!1476129) b!8052851))

(assert (= (and d!2397853 (not c!1476129)) b!8052856))

(assert (= (and b!8052856 c!1476130) b!8052855))

(assert (= (and b!8052856 (not c!1476130)) b!8052852))

(assert (= (or b!8052851 b!8052856) bm!747107))

(assert (= (and bm!747107 c!1476128) b!8052848))

(assert (= (and bm!747107 (not c!1476128)) b!8052854))

(assert (= (and d!2397853 res!3184430) b!8052850))

(assert (= (and d!2397853 (not res!3184429)) b!8052849))

(assert (= (and b!8052849 res!3184428) b!8052853))

(declare-fun m!8404744 () Bool)

(assert (=> b!8052855 m!8404744))

(declare-fun m!8404746 () Bool)

(assert (=> b!8052855 m!8404746))

(assert (=> b!8052854 m!8404670))

(declare-fun m!8404748 () Bool)

(assert (=> b!8052854 m!8404748))

(declare-fun m!8404750 () Bool)

(assert (=> b!8052848 m!8404750))

(declare-fun m!8404752 () Bool)

(assert (=> b!8052851 m!8404752))

(declare-fun m!8404754 () Bool)

(assert (=> b!8052851 m!8404754))

(assert (=> b!8052851 m!8404754))

(declare-fun m!8404756 () Bool)

(assert (=> b!8052851 m!8404756))

(declare-fun m!8404758 () Bool)

(assert (=> b!8052851 m!8404758))

(assert (=> b!8052850 m!8404670))

(assert (=> b!8052850 m!8404748))

(assert (=> b!8052850 m!8404748))

(declare-fun m!8404760 () Bool)

(assert (=> b!8052850 m!8404760))

(assert (=> d!2397853 m!8404744))

(assert (=> b!8052849 m!8404754))

(assert (=> b!8052849 m!8404754))

(assert (=> b!8052849 m!8404756))

(declare-fun m!8404762 () Bool)

(assert (=> bm!747107 m!8404762))

(assert (=> b!8052853 m!8404670))

(assert (=> b!8052853 m!8404748))

(assert (=> b!8052853 m!8404748))

(assert (=> b!8052853 m!8404760))

(assert (=> b!8052788 d!2397853))

(declare-fun b!8052928 () Bool)

(assert (=> b!8052928 true))

(declare-fun bs!1972695 () Bool)

(declare-fun b!8052929 () Bool)

(assert (= bs!1972695 (and b!8052929 b!8052928)))

(declare-fun lambda!473614 () Int)

(declare-fun lambda!473612 () Int)

(assert (=> bs!1972695 (= lambda!473614 lambda!473612)))

(assert (=> b!8052929 true))

(declare-fun lambda!473615 () Int)

(declare-fun lt!2726692 () ListMap!7283)

(assert (=> bs!1972695 (= (= lt!2726692 acc!1298) (= lambda!473615 lambda!473612))))

(assert (=> b!8052929 (= (= lt!2726692 acc!1298) (= lambda!473615 lambda!473614))))

(assert (=> b!8052929 true))

(declare-fun bs!1972702 () Bool)

(declare-fun d!2397855 () Bool)

(assert (= bs!1972702 (and d!2397855 b!8052928)))

(declare-fun lt!2726689 () ListMap!7283)

(declare-fun lambda!473618 () Int)

(assert (=> bs!1972702 (= (= lt!2726689 acc!1298) (= lambda!473618 lambda!473612))))

(declare-fun bs!1972703 () Bool)

(assert (= bs!1972703 (and d!2397855 b!8052929)))

(assert (=> bs!1972703 (= (= lt!2726689 acc!1298) (= lambda!473618 lambda!473614))))

(assert (=> bs!1972703 (= (= lt!2726689 lt!2726692) (= lambda!473618 lambda!473615))))

(assert (=> d!2397855 true))

(declare-fun e!4745192 () Bool)

(assert (=> d!2397855 e!4745192))

(declare-fun res!3184462 () Bool)

(assert (=> d!2397855 (=> (not res!3184462) (not e!4745192))))

(declare-fun forall!18502 (List!75664 Int) Bool)

(assert (=> d!2397855 (= res!3184462 (forall!18502 l!14636 lambda!473618))))

(declare-fun e!4745193 () ListMap!7283)

(assert (=> d!2397855 (= lt!2726689 e!4745193)))

(declare-fun c!1476149 () Bool)

(assert (=> d!2397855 (= c!1476149 ((_ is Nil!75538) l!14636))))

(assert (=> d!2397855 (noDuplicateKeys!2702 l!14636)))

(assert (=> d!2397855 (= (addToMapMapFromBucket!1983 l!14636 acc!1298) lt!2726689)))

(declare-fun b!8052925 () Bool)

(declare-fun res!3184463 () Bool)

(assert (=> b!8052925 (=> (not res!3184463) (not e!4745192))))

(assert (=> b!8052925 (= res!3184463 (forall!18502 (toList!11916 acc!1298) lambda!473618))))

(declare-fun b!8052926 () Bool)

(declare-fun e!4745191 () Bool)

(assert (=> b!8052926 (= e!4745191 (forall!18502 (toList!11916 acc!1298) lambda!473615))))

(declare-fun lt!2726679 () ListMap!7283)

(declare-fun call!747131 () Bool)

(declare-fun bm!747126 () Bool)

(assert (=> bm!747126 (= call!747131 (forall!18502 (ite c!1476149 (toList!11916 acc!1298) (toList!11916 lt!2726679)) (ite c!1476149 lambda!473612 lambda!473615)))))

(declare-fun b!8052927 () Bool)

(declare-fun invariantList!1931 (List!75664) Bool)

(assert (=> b!8052927 (= e!4745192 (invariantList!1931 (toList!11916 lt!2726689)))))

(assert (=> b!8052928 (= e!4745193 acc!1298)))

(declare-fun lt!2726691 () Unit!171791)

(declare-fun call!747133 () Unit!171791)

(assert (=> b!8052928 (= lt!2726691 call!747133)))

(assert (=> b!8052928 call!747131))

(declare-fun lt!2726693 () Unit!171791)

(assert (=> b!8052928 (= lt!2726693 lt!2726691)))

(declare-fun call!747132 () Bool)

(assert (=> b!8052928 call!747132))

(declare-fun lt!2726684 () Unit!171791)

(declare-fun Unit!171813 () Unit!171791)

(assert (=> b!8052928 (= lt!2726684 Unit!171813)))

(assert (=> b!8052929 (= e!4745193 lt!2726692)))

(assert (=> b!8052929 (= lt!2726679 (+!2667 acc!1298 (h!81986 l!14636)))))

(assert (=> b!8052929 (= lt!2726692 (addToMapMapFromBucket!1983 (t!391436 l!14636) (+!2667 acc!1298 (h!81986 l!14636))))))

(declare-fun lt!2726690 () Unit!171791)

(assert (=> b!8052929 (= lt!2726690 call!747133)))

(assert (=> b!8052929 (forall!18502 (toList!11916 acc!1298) lambda!473614)))

(declare-fun lt!2726687 () Unit!171791)

(assert (=> b!8052929 (= lt!2726687 lt!2726690)))

(assert (=> b!8052929 call!747131))

(declare-fun lt!2726682 () Unit!171791)

(declare-fun Unit!171814 () Unit!171791)

(assert (=> b!8052929 (= lt!2726682 Unit!171814)))

(assert (=> b!8052929 (forall!18502 (t!391436 l!14636) lambda!473615)))

(declare-fun lt!2726683 () Unit!171791)

(declare-fun Unit!171815 () Unit!171791)

(assert (=> b!8052929 (= lt!2726683 Unit!171815)))

(declare-fun lt!2726678 () Unit!171791)

(declare-fun Unit!171816 () Unit!171791)

(assert (=> b!8052929 (= lt!2726678 Unit!171816)))

(declare-fun lt!2726680 () Unit!171791)

(declare-fun forallContained!4656 (List!75664 Int tuple2!70880) Unit!171791)

(assert (=> b!8052929 (= lt!2726680 (forallContained!4656 (toList!11916 lt!2726679) lambda!473615 (h!81986 l!14636)))))

(assert (=> b!8052929 (contains!21198 lt!2726679 (_1!38743 (h!81986 l!14636)))))

(declare-fun lt!2726681 () Unit!171791)

(declare-fun Unit!171817 () Unit!171791)

(assert (=> b!8052929 (= lt!2726681 Unit!171817)))

(assert (=> b!8052929 (contains!21198 lt!2726692 (_1!38743 (h!81986 l!14636)))))

(declare-fun lt!2726696 () Unit!171791)

(declare-fun Unit!171819 () Unit!171791)

(assert (=> b!8052929 (= lt!2726696 Unit!171819)))

(assert (=> b!8052929 call!747132))

(declare-fun lt!2726697 () Unit!171791)

(declare-fun Unit!171820 () Unit!171791)

(assert (=> b!8052929 (= lt!2726697 Unit!171820)))

(assert (=> b!8052929 (forall!18502 (toList!11916 lt!2726679) lambda!473615)))

(declare-fun lt!2726698 () Unit!171791)

(declare-fun Unit!171823 () Unit!171791)

(assert (=> b!8052929 (= lt!2726698 Unit!171823)))

(declare-fun lt!2726686 () Unit!171791)

(declare-fun Unit!171824 () Unit!171791)

(assert (=> b!8052929 (= lt!2726686 Unit!171824)))

(declare-fun lt!2726685 () Unit!171791)

(declare-fun addForallContainsKeyThenBeforeAdding!1081 (ListMap!7283 ListMap!7283 K!22803 V!23057) Unit!171791)

(assert (=> b!8052929 (= lt!2726685 (addForallContainsKeyThenBeforeAdding!1081 acc!1298 lt!2726692 (_1!38743 (h!81986 l!14636)) (_2!38743 (h!81986 l!14636))))))

(assert (=> b!8052929 (forall!18502 (toList!11916 acc!1298) lambda!473615)))

(declare-fun lt!2726695 () Unit!171791)

(assert (=> b!8052929 (= lt!2726695 lt!2726685)))

(assert (=> b!8052929 (forall!18502 (toList!11916 acc!1298) lambda!473615)))

(declare-fun lt!2726694 () Unit!171791)

(declare-fun Unit!171827 () Unit!171791)

(assert (=> b!8052929 (= lt!2726694 Unit!171827)))

(declare-fun res!3184461 () Bool)

(assert (=> b!8052929 (= res!3184461 (forall!18502 l!14636 lambda!473615))))

(assert (=> b!8052929 (=> (not res!3184461) (not e!4745191))))

(assert (=> b!8052929 e!4745191))

(declare-fun lt!2726688 () Unit!171791)

(declare-fun Unit!171830 () Unit!171791)

(assert (=> b!8052929 (= lt!2726688 Unit!171830)))

(declare-fun bm!747127 () Bool)

(assert (=> bm!747127 (= call!747132 (forall!18502 (ite c!1476149 (toList!11916 acc!1298) l!14636) (ite c!1476149 lambda!473612 lambda!473615)))))

(declare-fun bm!747128 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1083 (ListMap!7283) Unit!171791)

(assert (=> bm!747128 (= call!747133 (lemmaContainsAllItsOwnKeys!1083 acc!1298))))

(assert (= (and d!2397855 c!1476149) b!8052928))

(assert (= (and d!2397855 (not c!1476149)) b!8052929))

(assert (= (and b!8052929 res!3184461) b!8052926))

(assert (= (or b!8052928 b!8052929) bm!747126))

(assert (= (or b!8052928 b!8052929) bm!747127))

(assert (= (or b!8052928 b!8052929) bm!747128))

(assert (= (and d!2397855 res!3184462) b!8052925))

(assert (= (and b!8052925 res!3184463) b!8052927))

(declare-fun m!8404830 () Bool)

(assert (=> b!8052927 m!8404830))

(declare-fun m!8404832 () Bool)

(assert (=> bm!747126 m!8404832))

(declare-fun m!8404834 () Bool)

(assert (=> b!8052926 m!8404834))

(declare-fun m!8404836 () Bool)

(assert (=> b!8052929 m!8404836))

(assert (=> b!8052929 m!8404666))

(declare-fun m!8404838 () Bool)

(assert (=> b!8052929 m!8404838))

(declare-fun m!8404840 () Bool)

(assert (=> b!8052929 m!8404840))

(declare-fun m!8404842 () Bool)

(assert (=> b!8052929 m!8404842))

(declare-fun m!8404844 () Bool)

(assert (=> b!8052929 m!8404844))

(declare-fun m!8404846 () Bool)

(assert (=> b!8052929 m!8404846))

(declare-fun m!8404848 () Bool)

(assert (=> b!8052929 m!8404848))

(declare-fun m!8404850 () Bool)

(assert (=> b!8052929 m!8404850))

(assert (=> b!8052929 m!8404834))

(assert (=> b!8052929 m!8404666))

(assert (=> b!8052929 m!8404834))

(declare-fun m!8404852 () Bool)

(assert (=> b!8052929 m!8404852))

(declare-fun m!8404854 () Bool)

(assert (=> d!2397855 m!8404854))

(assert (=> d!2397855 m!8404658))

(declare-fun m!8404856 () Bool)

(assert (=> bm!747128 m!8404856))

(declare-fun m!8404858 () Bool)

(assert (=> bm!747127 m!8404858))

(declare-fun m!8404860 () Bool)

(assert (=> b!8052925 m!8404860))

(assert (=> b!8052788 d!2397855))

(declare-fun d!2397867 () Bool)

(declare-fun get!27212 (Option!17996) V!23057)

(assert (=> d!2397867 (= (apply!14429 acc!1298 key!6222) (get!27212 (getValueByKey!2780 (toList!11916 acc!1298) key!6222)))))

(declare-fun bs!1972709 () Bool)

(assert (= bs!1972709 d!2397867))

(declare-fun m!8404882 () Bool)

(assert (=> bs!1972709 m!8404882))

(assert (=> bs!1972709 m!8404882))

(declare-fun m!8404886 () Bool)

(assert (=> bs!1972709 m!8404886))

(assert (=> b!8052787 d!2397867))

(declare-fun bs!1972710 () Bool)

(declare-fun b!8052940 () Bool)

(assert (= bs!1972710 (and b!8052940 b!8052928)))

(declare-fun lambda!473620 () Int)

(assert (=> bs!1972710 (= (= lt!2726488 acc!1298) (= lambda!473620 lambda!473612))))

(declare-fun bs!1972711 () Bool)

(assert (= bs!1972711 (and b!8052940 b!8052929)))

(assert (=> bs!1972711 (= (= lt!2726488 acc!1298) (= lambda!473620 lambda!473614))))

(assert (=> bs!1972711 (= (= lt!2726488 lt!2726692) (= lambda!473620 lambda!473615))))

(declare-fun bs!1972712 () Bool)

(assert (= bs!1972712 (and b!8052940 d!2397855)))

(assert (=> bs!1972712 (= (= lt!2726488 lt!2726689) (= lambda!473620 lambda!473618))))

(assert (=> b!8052940 true))

(declare-fun bs!1972713 () Bool)

(declare-fun b!8052941 () Bool)

(assert (= bs!1972713 (and b!8052941 b!8052929)))

(declare-fun lambda!473621 () Int)

(assert (=> bs!1972713 (= (= lt!2726488 acc!1298) (= lambda!473621 lambda!473614))))

(assert (=> bs!1972713 (= (= lt!2726488 lt!2726692) (= lambda!473621 lambda!473615))))

(declare-fun bs!1972714 () Bool)

(assert (= bs!1972714 (and b!8052941 b!8052940)))

(assert (=> bs!1972714 (= lambda!473621 lambda!473620)))

(declare-fun bs!1972715 () Bool)

(assert (= bs!1972715 (and b!8052941 d!2397855)))

(assert (=> bs!1972715 (= (= lt!2726488 lt!2726689) (= lambda!473621 lambda!473618))))

(declare-fun bs!1972716 () Bool)

(assert (= bs!1972716 (and b!8052941 b!8052928)))

(assert (=> bs!1972716 (= (= lt!2726488 acc!1298) (= lambda!473621 lambda!473612))))

(assert (=> b!8052941 true))

(declare-fun lt!2726734 () ListMap!7283)

(declare-fun lambda!473622 () Int)

(assert (=> bs!1972713 (= (= lt!2726734 lt!2726692) (= lambda!473622 lambda!473615))))

(assert (=> bs!1972714 (= (= lt!2726734 lt!2726488) (= lambda!473622 lambda!473620))))

(assert (=> bs!1972715 (= (= lt!2726734 lt!2726689) (= lambda!473622 lambda!473618))))

(assert (=> bs!1972716 (= (= lt!2726734 acc!1298) (= lambda!473622 lambda!473612))))

(assert (=> b!8052941 (= (= lt!2726734 lt!2726488) (= lambda!473622 lambda!473621))))

(assert (=> bs!1972713 (= (= lt!2726734 acc!1298) (= lambda!473622 lambda!473614))))

(assert (=> b!8052941 true))

(declare-fun bs!1972718 () Bool)

(declare-fun d!2397869 () Bool)

(assert (= bs!1972718 (and d!2397869 b!8052929)))

(declare-fun lambda!473623 () Int)

(declare-fun lt!2726731 () ListMap!7283)

(assert (=> bs!1972718 (= (= lt!2726731 lt!2726692) (= lambda!473623 lambda!473615))))

(declare-fun bs!1972719 () Bool)

(assert (= bs!1972719 (and d!2397869 b!8052941)))

(assert (=> bs!1972719 (= (= lt!2726731 lt!2726734) (= lambda!473623 lambda!473622))))

(declare-fun bs!1972720 () Bool)

(assert (= bs!1972720 (and d!2397869 b!8052940)))

(assert (=> bs!1972720 (= (= lt!2726731 lt!2726488) (= lambda!473623 lambda!473620))))

(declare-fun bs!1972721 () Bool)

(assert (= bs!1972721 (and d!2397869 d!2397855)))

(assert (=> bs!1972721 (= (= lt!2726731 lt!2726689) (= lambda!473623 lambda!473618))))

(declare-fun bs!1972722 () Bool)

(assert (= bs!1972722 (and d!2397869 b!8052928)))

(assert (=> bs!1972722 (= (= lt!2726731 acc!1298) (= lambda!473623 lambda!473612))))

(assert (=> bs!1972719 (= (= lt!2726731 lt!2726488) (= lambda!473623 lambda!473621))))

(assert (=> bs!1972718 (= (= lt!2726731 acc!1298) (= lambda!473623 lambda!473614))))

(assert (=> d!2397869 true))

(declare-fun e!4745198 () Bool)

(assert (=> d!2397869 e!4745198))

(declare-fun res!3184468 () Bool)

(assert (=> d!2397869 (=> (not res!3184468) (not e!4745198))))

(assert (=> d!2397869 (= res!3184468 (forall!18502 (t!391436 l!14636) lambda!473623))))

(declare-fun e!4745199 () ListMap!7283)

(assert (=> d!2397869 (= lt!2726731 e!4745199)))

(declare-fun c!1476151 () Bool)

(assert (=> d!2397869 (= c!1476151 ((_ is Nil!75538) (t!391436 l!14636)))))

(assert (=> d!2397869 (noDuplicateKeys!2702 (t!391436 l!14636))))

(assert (=> d!2397869 (= (addToMapMapFromBucket!1983 (t!391436 l!14636) lt!2726488) lt!2726731)))

(declare-fun b!8052937 () Bool)

(declare-fun res!3184469 () Bool)

(assert (=> b!8052937 (=> (not res!3184469) (not e!4745198))))

(assert (=> b!8052937 (= res!3184469 (forall!18502 (toList!11916 lt!2726488) lambda!473623))))

(declare-fun b!8052938 () Bool)

(declare-fun e!4745197 () Bool)

(assert (=> b!8052938 (= e!4745197 (forall!18502 (toList!11916 lt!2726488) lambda!473622))))

(declare-fun call!747137 () Bool)

(declare-fun bm!747132 () Bool)

(declare-fun lt!2726721 () ListMap!7283)

(assert (=> bm!747132 (= call!747137 (forall!18502 (ite c!1476151 (toList!11916 lt!2726488) (toList!11916 lt!2726721)) (ite c!1476151 lambda!473620 lambda!473622)))))

(declare-fun b!8052939 () Bool)

(assert (=> b!8052939 (= e!4745198 (invariantList!1931 (toList!11916 lt!2726731)))))

(assert (=> b!8052940 (= e!4745199 lt!2726488)))

(declare-fun lt!2726733 () Unit!171791)

(declare-fun call!747139 () Unit!171791)

(assert (=> b!8052940 (= lt!2726733 call!747139)))

(assert (=> b!8052940 call!747137))

(declare-fun lt!2726735 () Unit!171791)

(assert (=> b!8052940 (= lt!2726735 lt!2726733)))

(declare-fun call!747138 () Bool)

(assert (=> b!8052940 call!747138))

(declare-fun lt!2726726 () Unit!171791)

(declare-fun Unit!171834 () Unit!171791)

(assert (=> b!8052940 (= lt!2726726 Unit!171834)))

(assert (=> b!8052941 (= e!4745199 lt!2726734)))

(assert (=> b!8052941 (= lt!2726721 (+!2667 lt!2726488 (h!81986 (t!391436 l!14636))))))

(assert (=> b!8052941 (= lt!2726734 (addToMapMapFromBucket!1983 (t!391436 (t!391436 l!14636)) (+!2667 lt!2726488 (h!81986 (t!391436 l!14636)))))))

(declare-fun lt!2726732 () Unit!171791)

(assert (=> b!8052941 (= lt!2726732 call!747139)))

(assert (=> b!8052941 (forall!18502 (toList!11916 lt!2726488) lambda!473621)))

(declare-fun lt!2726729 () Unit!171791)

(assert (=> b!8052941 (= lt!2726729 lt!2726732)))

(assert (=> b!8052941 call!747137))

(declare-fun lt!2726724 () Unit!171791)

(declare-fun Unit!171836 () Unit!171791)

(assert (=> b!8052941 (= lt!2726724 Unit!171836)))

(assert (=> b!8052941 (forall!18502 (t!391436 (t!391436 l!14636)) lambda!473622)))

(declare-fun lt!2726725 () Unit!171791)

(declare-fun Unit!171837 () Unit!171791)

(assert (=> b!8052941 (= lt!2726725 Unit!171837)))

(declare-fun lt!2726720 () Unit!171791)

(declare-fun Unit!171838 () Unit!171791)

(assert (=> b!8052941 (= lt!2726720 Unit!171838)))

(declare-fun lt!2726722 () Unit!171791)

(assert (=> b!8052941 (= lt!2726722 (forallContained!4656 (toList!11916 lt!2726721) lambda!473622 (h!81986 (t!391436 l!14636))))))

(assert (=> b!8052941 (contains!21198 lt!2726721 (_1!38743 (h!81986 (t!391436 l!14636))))))

(declare-fun lt!2726723 () Unit!171791)

(declare-fun Unit!171839 () Unit!171791)

(assert (=> b!8052941 (= lt!2726723 Unit!171839)))

(assert (=> b!8052941 (contains!21198 lt!2726734 (_1!38743 (h!81986 (t!391436 l!14636))))))

(declare-fun lt!2726738 () Unit!171791)

(declare-fun Unit!171840 () Unit!171791)

(assert (=> b!8052941 (= lt!2726738 Unit!171840)))

(assert (=> b!8052941 call!747138))

(declare-fun lt!2726739 () Unit!171791)

(declare-fun Unit!171841 () Unit!171791)

(assert (=> b!8052941 (= lt!2726739 Unit!171841)))

(assert (=> b!8052941 (forall!18502 (toList!11916 lt!2726721) lambda!473622)))

(declare-fun lt!2726740 () Unit!171791)

(declare-fun Unit!171842 () Unit!171791)

(assert (=> b!8052941 (= lt!2726740 Unit!171842)))

(declare-fun lt!2726728 () Unit!171791)

(declare-fun Unit!171843 () Unit!171791)

(assert (=> b!8052941 (= lt!2726728 Unit!171843)))

(declare-fun lt!2726727 () Unit!171791)

(assert (=> b!8052941 (= lt!2726727 (addForallContainsKeyThenBeforeAdding!1081 lt!2726488 lt!2726734 (_1!38743 (h!81986 (t!391436 l!14636))) (_2!38743 (h!81986 (t!391436 l!14636)))))))

(assert (=> b!8052941 (forall!18502 (toList!11916 lt!2726488) lambda!473622)))

(declare-fun lt!2726737 () Unit!171791)

(assert (=> b!8052941 (= lt!2726737 lt!2726727)))

(assert (=> b!8052941 (forall!18502 (toList!11916 lt!2726488) lambda!473622)))

(declare-fun lt!2726736 () Unit!171791)

(declare-fun Unit!171844 () Unit!171791)

(assert (=> b!8052941 (= lt!2726736 Unit!171844)))

(declare-fun res!3184467 () Bool)

(assert (=> b!8052941 (= res!3184467 (forall!18502 (t!391436 l!14636) lambda!473622))))

(assert (=> b!8052941 (=> (not res!3184467) (not e!4745197))))

(assert (=> b!8052941 e!4745197))

(declare-fun lt!2726730 () Unit!171791)

(declare-fun Unit!171846 () Unit!171791)

(assert (=> b!8052941 (= lt!2726730 Unit!171846)))

(declare-fun bm!747133 () Bool)

(assert (=> bm!747133 (= call!747138 (forall!18502 (ite c!1476151 (toList!11916 lt!2726488) (t!391436 l!14636)) (ite c!1476151 lambda!473620 lambda!473622)))))

(declare-fun bm!747134 () Bool)

(assert (=> bm!747134 (= call!747139 (lemmaContainsAllItsOwnKeys!1083 lt!2726488))))

(assert (= (and d!2397869 c!1476151) b!8052940))

(assert (= (and d!2397869 (not c!1476151)) b!8052941))

(assert (= (and b!8052941 res!3184467) b!8052938))

(assert (= (or b!8052940 b!8052941) bm!747132))

(assert (= (or b!8052940 b!8052941) bm!747133))

(assert (= (or b!8052940 b!8052941) bm!747134))

(assert (= (and d!2397869 res!3184468) b!8052937))

(assert (= (and b!8052937 res!3184469) b!8052939))

(declare-fun m!8404900 () Bool)

(assert (=> b!8052939 m!8404900))

(declare-fun m!8404902 () Bool)

(assert (=> bm!747132 m!8404902))

(declare-fun m!8404904 () Bool)

(assert (=> b!8052938 m!8404904))

(declare-fun m!8404906 () Bool)

(assert (=> b!8052941 m!8404906))

(declare-fun m!8404908 () Bool)

(assert (=> b!8052941 m!8404908))

(declare-fun m!8404910 () Bool)

(assert (=> b!8052941 m!8404910))

(declare-fun m!8404912 () Bool)

(assert (=> b!8052941 m!8404912))

(declare-fun m!8404914 () Bool)

(assert (=> b!8052941 m!8404914))

(declare-fun m!8404916 () Bool)

(assert (=> b!8052941 m!8404916))

(declare-fun m!8404918 () Bool)

(assert (=> b!8052941 m!8404918))

(declare-fun m!8404920 () Bool)

(assert (=> b!8052941 m!8404920))

(declare-fun m!8404922 () Bool)

(assert (=> b!8052941 m!8404922))

(assert (=> b!8052941 m!8404904))

(assert (=> b!8052941 m!8404908))

(assert (=> b!8052941 m!8404904))

(declare-fun m!8404924 () Bool)

(assert (=> b!8052941 m!8404924))

(declare-fun m!8404926 () Bool)

(assert (=> d!2397869 m!8404926))

(assert (=> d!2397869 m!8404662))

(declare-fun m!8404928 () Bool)

(assert (=> bm!747134 m!8404928))

(declare-fun m!8404932 () Bool)

(assert (=> bm!747133 m!8404932))

(declare-fun m!8404936 () Bool)

(assert (=> b!8052937 m!8404936))

(assert (=> b!8052786 d!2397869))

(declare-fun d!2397879 () Bool)

(declare-fun e!4745240 () Bool)

(assert (=> d!2397879 e!4745240))

(declare-fun res!3184500 () Bool)

(assert (=> d!2397879 (=> (not res!3184500) (not e!4745240))))

(declare-fun lt!2726781 () ListMap!7283)

(assert (=> d!2397879 (= res!3184500 (contains!21198 lt!2726781 (_1!38743 (h!81986 l!14636))))))

(declare-fun lt!2726782 () List!75664)

(assert (=> d!2397879 (= lt!2726781 (ListMap!7284 lt!2726782))))

(declare-fun lt!2726783 () Unit!171791)

(declare-fun lt!2726780 () Unit!171791)

(assert (=> d!2397879 (= lt!2726783 lt!2726780)))

(assert (=> d!2397879 (= (getValueByKey!2780 lt!2726782 (_1!38743 (h!81986 l!14636))) (Some!17995 (_2!38743 (h!81986 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1273 (List!75664 K!22803 V!23057) Unit!171791)

(assert (=> d!2397879 (= lt!2726780 (lemmaContainsTupThenGetReturnValue!1273 lt!2726782 (_1!38743 (h!81986 l!14636)) (_2!38743 (h!81986 l!14636))))))

(declare-fun insertNoDuplicatedKeys!781 (List!75664 K!22803 V!23057) List!75664)

(assert (=> d!2397879 (= lt!2726782 (insertNoDuplicatedKeys!781 (toList!11916 acc!1298) (_1!38743 (h!81986 l!14636)) (_2!38743 (h!81986 l!14636))))))

(assert (=> d!2397879 (= (+!2667 acc!1298 (h!81986 l!14636)) lt!2726781)))

(declare-fun b!8052995 () Bool)

(declare-fun res!3184499 () Bool)

(assert (=> b!8052995 (=> (not res!3184499) (not e!4745240))))

(assert (=> b!8052995 (= res!3184499 (= (getValueByKey!2780 (toList!11916 lt!2726781) (_1!38743 (h!81986 l!14636))) (Some!17995 (_2!38743 (h!81986 l!14636)))))))

(declare-fun b!8052996 () Bool)

(assert (=> b!8052996 (= e!4745240 (contains!21197 (toList!11916 lt!2726781) (h!81986 l!14636)))))

(assert (= (and d!2397879 res!3184500) b!8052995))

(assert (= (and b!8052995 res!3184499) b!8052996))

(declare-fun m!8405006 () Bool)

(assert (=> d!2397879 m!8405006))

(declare-fun m!8405008 () Bool)

(assert (=> d!2397879 m!8405008))

(declare-fun m!8405010 () Bool)

(assert (=> d!2397879 m!8405010))

(declare-fun m!8405012 () Bool)

(assert (=> d!2397879 m!8405012))

(declare-fun m!8405014 () Bool)

(assert (=> b!8052995 m!8405014))

(declare-fun m!8405016 () Bool)

(assert (=> b!8052996 m!8405016))

(assert (=> b!8052786 d!2397879))

(assert (=> b!8052775 d!2397847))

(declare-fun d!2397891 () Bool)

(declare-fun res!3184501 () Bool)

(declare-fun e!4745241 () Bool)

(assert (=> d!2397891 (=> res!3184501 e!4745241)))

(assert (=> d!2397891 (= res!3184501 (not ((_ is Cons!75538) l!14636)))))

(assert (=> d!2397891 (= (noDuplicateKeys!2702 l!14636) e!4745241)))

(declare-fun b!8052997 () Bool)

(declare-fun e!4745242 () Bool)

(assert (=> b!8052997 (= e!4745241 e!4745242)))

(declare-fun res!3184502 () Bool)

(assert (=> b!8052997 (=> (not res!3184502) (not e!4745242))))

(assert (=> b!8052997 (= res!3184502 (not (containsKey!4845 (t!391436 l!14636) (_1!38743 (h!81986 l!14636)))))))

(declare-fun b!8052998 () Bool)

(assert (=> b!8052998 (= e!4745242 (noDuplicateKeys!2702 (t!391436 l!14636)))))

(assert (= (and d!2397891 (not res!3184501)) b!8052997))

(assert (= (and b!8052997 res!3184502) b!8052998))

(declare-fun m!8405018 () Bool)

(assert (=> b!8052997 m!8405018))

(assert (=> b!8052998 m!8404662))

(assert (=> start!758448 d!2397891))

(declare-fun d!2397893 () Bool)

(assert (=> d!2397893 (= (inv!97292 acc!1298) (invariantList!1931 (toList!11916 acc!1298)))))

(declare-fun bs!1972724 () Bool)

(assert (= bs!1972724 d!2397893))

(declare-fun m!8405020 () Bool)

(assert (=> bs!1972724 m!8405020))

(assert (=> start!758448 d!2397893))

(declare-fun d!2397895 () Bool)

(assert (=> d!2397895 (= (apply!14429 lt!2726488 key!6222) (get!27212 (getValueByKey!2780 (toList!11916 lt!2726488) key!6222)))))

(declare-fun bs!1972725 () Bool)

(assert (= bs!1972725 d!2397895))

(assert (=> bs!1972725 m!8404734))

(assert (=> bs!1972725 m!8404734))

(declare-fun m!8405022 () Bool)

(assert (=> bs!1972725 m!8405022))

(assert (=> b!8052785 d!2397895))

(declare-fun d!2397897 () Bool)

(declare-fun lt!2726786 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16106 (List!75664) (InoxSet tuple2!70880))

(assert (=> d!2397897 (= lt!2726786 (select (content!16106 (t!391436 l!14636)) (tuple2!70881 key!6222 value!3131)))))

(declare-fun e!4745247 () Bool)

(assert (=> d!2397897 (= lt!2726786 e!4745247)))

(declare-fun res!3184507 () Bool)

(assert (=> d!2397897 (=> (not res!3184507) (not e!4745247))))

(assert (=> d!2397897 (= res!3184507 ((_ is Cons!75538) (t!391436 l!14636)))))

(assert (=> d!2397897 (= (contains!21197 (t!391436 l!14636) (tuple2!70881 key!6222 value!3131)) lt!2726786)))

(declare-fun b!8053003 () Bool)

(declare-fun e!4745248 () Bool)

(assert (=> b!8053003 (= e!4745247 e!4745248)))

(declare-fun res!3184508 () Bool)

(assert (=> b!8053003 (=> res!3184508 e!4745248)))

(assert (=> b!8053003 (= res!3184508 (= (h!81986 (t!391436 l!14636)) (tuple2!70881 key!6222 value!3131)))))

(declare-fun b!8053004 () Bool)

(assert (=> b!8053004 (= e!4745248 (contains!21197 (t!391436 (t!391436 l!14636)) (tuple2!70881 key!6222 value!3131)))))

(assert (= (and d!2397897 res!3184507) b!8053003))

(assert (= (and b!8053003 (not res!3184508)) b!8053004))

(declare-fun m!8405024 () Bool)

(assert (=> d!2397897 m!8405024))

(declare-fun m!8405026 () Bool)

(assert (=> d!2397897 m!8405026))

(declare-fun m!8405028 () Bool)

(assert (=> b!8053004 m!8405028))

(assert (=> b!8052774 d!2397897))

(declare-fun d!2397899 () Bool)

(assert (=> d!2397899 (not (contains!21197 (t!391436 l!14636) (tuple2!70881 key!6222 value!3131)))))

(declare-fun lt!2726789 () Unit!171791)

(declare-fun choose!60514 (List!75664 K!22803 V!23057) Unit!171791)

(assert (=> d!2397899 (= lt!2726789 (choose!60514 (t!391436 l!14636) key!6222 value!3131))))

(assert (=> d!2397899 (not (containsKey!4845 (t!391436 l!14636) key!6222))))

(assert (=> d!2397899 (= (lemmaNotContainsKeyThenCannotContainPair!22 (t!391436 l!14636) key!6222 value!3131) lt!2726789)))

(declare-fun bs!1972726 () Bool)

(assert (= bs!1972726 d!2397899))

(assert (=> bs!1972726 m!8404674))

(declare-fun m!8405030 () Bool)

(assert (=> bs!1972726 m!8405030))

(assert (=> bs!1972726 m!8404652))

(assert (=> b!8052774 d!2397899))

(declare-fun d!2397901 () Bool)

(declare-fun res!3184509 () Bool)

(declare-fun e!4745249 () Bool)

(assert (=> d!2397901 (=> res!3184509 e!4745249)))

(assert (=> d!2397901 (= res!3184509 (and ((_ is Cons!75538) (t!391436 l!14636)) (= (_1!38743 (h!81986 (t!391436 l!14636))) key!6222)))))

(assert (=> d!2397901 (= (containsKey!4845 (t!391436 l!14636) key!6222) e!4745249)))

(declare-fun b!8053005 () Bool)

(declare-fun e!4745250 () Bool)

(assert (=> b!8053005 (= e!4745249 e!4745250)))

(declare-fun res!3184510 () Bool)

(assert (=> b!8053005 (=> (not res!3184510) (not e!4745250))))

(assert (=> b!8053005 (= res!3184510 ((_ is Cons!75538) (t!391436 l!14636)))))

(declare-fun b!8053006 () Bool)

(assert (=> b!8053006 (= e!4745250 (containsKey!4845 (t!391436 (t!391436 l!14636)) key!6222))))

(assert (= (and d!2397901 (not res!3184509)) b!8053005))

(assert (= (and b!8053005 res!3184510) b!8053006))

(declare-fun m!8405032 () Bool)

(assert (=> b!8053006 m!8405032))

(assert (=> b!8052784 d!2397901))

(declare-fun d!2397903 () Bool)

(declare-fun lt!2726792 () Int)

(assert (=> d!2397903 (>= lt!2726792 0)))

(declare-fun e!4745253 () Int)

(assert (=> d!2397903 (= lt!2726792 e!4745253)))

(declare-fun c!1476163 () Bool)

(assert (=> d!2397903 (= c!1476163 ((_ is Nil!75538) (t!391436 l!14636)))))

(assert (=> d!2397903 (= (ListPrimitiveSize!550 (t!391436 l!14636)) lt!2726792)))

(declare-fun b!8053011 () Bool)

(assert (=> b!8053011 (= e!4745253 0)))

(declare-fun b!8053012 () Bool)

(assert (=> b!8053012 (= e!4745253 (+ 1 (ListPrimitiveSize!550 (t!391436 (t!391436 l!14636)))))))

(assert (= (and d!2397903 c!1476163) b!8053011))

(assert (= (and d!2397903 (not c!1476163)) b!8053012))

(declare-fun m!8405034 () Bool)

(assert (=> b!8053012 m!8405034))

(assert (=> b!8052773 d!2397903))

(declare-fun d!2397905 () Bool)

(declare-fun lt!2726793 () Int)

(assert (=> d!2397905 (>= lt!2726793 0)))

(declare-fun e!4745254 () Int)

(assert (=> d!2397905 (= lt!2726793 e!4745254)))

(declare-fun c!1476164 () Bool)

(assert (=> d!2397905 (= c!1476164 ((_ is Nil!75538) l!14636))))

(assert (=> d!2397905 (= (ListPrimitiveSize!550 l!14636) lt!2726793)))

(declare-fun b!8053013 () Bool)

(assert (=> b!8053013 (= e!4745254 0)))

(declare-fun b!8053014 () Bool)

(assert (=> b!8053014 (= e!4745254 (+ 1 (ListPrimitiveSize!550 (t!391436 l!14636))))))

(assert (= (and d!2397905 c!1476164) b!8053013))

(assert (= (and d!2397905 (not c!1476164)) b!8053014))

(assert (=> b!8053014 m!8404682))

(assert (=> b!8052773 d!2397905))

(declare-fun b!8053015 () Bool)

(declare-fun e!4745256 () List!75665)

(assert (=> b!8053015 (= e!4745256 (getKeysList!1238 (toList!11916 acc!1298)))))

(declare-fun d!2397907 () Bool)

(declare-fun e!4745259 () Bool)

(assert (=> d!2397907 e!4745259))

(declare-fun res!3184512 () Bool)

(assert (=> d!2397907 (=> res!3184512 e!4745259)))

(declare-fun e!4745258 () Bool)

(assert (=> d!2397907 (= res!3184512 e!4745258)))

(declare-fun res!3184513 () Bool)

(assert (=> d!2397907 (=> (not res!3184513) (not e!4745258))))

(declare-fun lt!2726796 () Bool)

(assert (=> d!2397907 (= res!3184513 (not lt!2726796))))

(declare-fun lt!2726801 () Bool)

(assert (=> d!2397907 (= lt!2726796 lt!2726801)))

(declare-fun lt!2726794 () Unit!171791)

(declare-fun e!4745255 () Unit!171791)

(assert (=> d!2397907 (= lt!2726794 e!4745255)))

(declare-fun c!1476166 () Bool)

(assert (=> d!2397907 (= c!1476166 lt!2726801)))

(assert (=> d!2397907 (= lt!2726801 (containsKey!4846 (toList!11916 acc!1298) key!6222))))

(assert (=> d!2397907 (= (contains!21198 acc!1298 key!6222) lt!2726796)))

(declare-fun b!8053016 () Bool)

(declare-fun e!4745257 () Bool)

(assert (=> b!8053016 (= e!4745259 e!4745257)))

(declare-fun res!3184511 () Bool)

(assert (=> b!8053016 (=> (not res!3184511) (not e!4745257))))

(assert (=> b!8053016 (= res!3184511 (isDefined!14528 (getValueByKey!2780 (toList!11916 acc!1298) key!6222)))))

(declare-fun bm!747138 () Bool)

(declare-fun call!747143 () Bool)

(assert (=> bm!747138 (= call!747143 (contains!21199 e!4745256 key!6222))))

(declare-fun c!1476165 () Bool)

(assert (=> bm!747138 (= c!1476165 c!1476166)))

(declare-fun b!8053017 () Bool)

(assert (=> b!8053017 (= e!4745258 (not (contains!21199 (keys!30829 acc!1298) key!6222)))))

(declare-fun b!8053018 () Bool)

(declare-fun lt!2726800 () Unit!171791)

(assert (=> b!8053018 (= e!4745255 lt!2726800)))

(declare-fun lt!2726799 () Unit!171791)

(assert (=> b!8053018 (= lt!2726799 (lemmaContainsKeyImpliesGetValueByKeyDefined!2550 (toList!11916 acc!1298) key!6222))))

(assert (=> b!8053018 (isDefined!14528 (getValueByKey!2780 (toList!11916 acc!1298) key!6222))))

(declare-fun lt!2726795 () Unit!171791)

(assert (=> b!8053018 (= lt!2726795 lt!2726799)))

(assert (=> b!8053018 (= lt!2726800 (lemmaInListThenGetKeysListContains!1233 (toList!11916 acc!1298) key!6222))))

(assert (=> b!8053018 call!747143))

(declare-fun b!8053019 () Bool)

(declare-fun e!4745260 () Unit!171791)

(declare-fun Unit!171851 () Unit!171791)

(assert (=> b!8053019 (= e!4745260 Unit!171851)))

(declare-fun b!8053020 () Bool)

(assert (=> b!8053020 (= e!4745257 (contains!21199 (keys!30829 acc!1298) key!6222))))

(declare-fun b!8053021 () Bool)

(assert (=> b!8053021 (= e!4745256 (keys!30829 acc!1298))))

(declare-fun b!8053022 () Bool)

(assert (=> b!8053022 false))

(declare-fun lt!2726797 () Unit!171791)

(declare-fun lt!2726798 () Unit!171791)

(assert (=> b!8053022 (= lt!2726797 lt!2726798)))

(assert (=> b!8053022 (containsKey!4846 (toList!11916 acc!1298) key!6222)))

(assert (=> b!8053022 (= lt!2726798 (lemmaInGetKeysListThenContainsKey!1238 (toList!11916 acc!1298) key!6222))))

(declare-fun Unit!171852 () Unit!171791)

(assert (=> b!8053022 (= e!4745260 Unit!171852)))

(declare-fun b!8053023 () Bool)

(assert (=> b!8053023 (= e!4745255 e!4745260)))

(declare-fun c!1476167 () Bool)

(assert (=> b!8053023 (= c!1476167 call!747143)))

(assert (= (and d!2397907 c!1476166) b!8053018))

(assert (= (and d!2397907 (not c!1476166)) b!8053023))

(assert (= (and b!8053023 c!1476167) b!8053022))

(assert (= (and b!8053023 (not c!1476167)) b!8053019))

(assert (= (or b!8053018 b!8053023) bm!747138))

(assert (= (and bm!747138 c!1476165) b!8053015))

(assert (= (and bm!747138 (not c!1476165)) b!8053021))

(assert (= (and d!2397907 res!3184513) b!8053017))

(assert (= (and d!2397907 (not res!3184512)) b!8053016))

(assert (= (and b!8053016 res!3184511) b!8053020))

(declare-fun m!8405036 () Bool)

(assert (=> b!8053022 m!8405036))

(declare-fun m!8405038 () Bool)

(assert (=> b!8053022 m!8405038))

(declare-fun m!8405040 () Bool)

(assert (=> b!8053021 m!8405040))

(declare-fun m!8405042 () Bool)

(assert (=> b!8053015 m!8405042))

(declare-fun m!8405044 () Bool)

(assert (=> b!8053018 m!8405044))

(assert (=> b!8053018 m!8404882))

(assert (=> b!8053018 m!8404882))

(declare-fun m!8405046 () Bool)

(assert (=> b!8053018 m!8405046))

(declare-fun m!8405048 () Bool)

(assert (=> b!8053018 m!8405048))

(assert (=> b!8053017 m!8405040))

(assert (=> b!8053017 m!8405040))

(declare-fun m!8405050 () Bool)

(assert (=> b!8053017 m!8405050))

(assert (=> d!2397907 m!8405036))

(assert (=> b!8053016 m!8404882))

(assert (=> b!8053016 m!8404882))

(assert (=> b!8053016 m!8405046))

(declare-fun m!8405052 () Bool)

(assert (=> bm!747138 m!8405052))

(assert (=> b!8053020 m!8405040))

(assert (=> b!8053020 m!8405040))

(assert (=> b!8053020 m!8405050))

(assert (=> b!8052783 d!2397907))

(declare-fun d!2397909 () Bool)

(declare-fun lt!2726802 () Bool)

(assert (=> d!2397909 (= lt!2726802 (select (content!16106 l!14636) (tuple2!70881 key!6222 value!3131)))))

(declare-fun e!4745261 () Bool)

(assert (=> d!2397909 (= lt!2726802 e!4745261)))

(declare-fun res!3184514 () Bool)

(assert (=> d!2397909 (=> (not res!3184514) (not e!4745261))))

(assert (=> d!2397909 (= res!3184514 ((_ is Cons!75538) l!14636))))

(assert (=> d!2397909 (= (contains!21197 l!14636 (tuple2!70881 key!6222 value!3131)) lt!2726802)))

(declare-fun b!8053024 () Bool)

(declare-fun e!4745262 () Bool)

(assert (=> b!8053024 (= e!4745261 e!4745262)))

(declare-fun res!3184515 () Bool)

(assert (=> b!8053024 (=> res!3184515 e!4745262)))

(assert (=> b!8053024 (= res!3184515 (= (h!81986 l!14636) (tuple2!70881 key!6222 value!3131)))))

(declare-fun b!8053025 () Bool)

(assert (=> b!8053025 (= e!4745262 (contains!21197 (t!391436 l!14636) (tuple2!70881 key!6222 value!3131)))))

(assert (= (and d!2397909 res!3184514) b!8053024))

(assert (= (and b!8053024 (not res!3184515)) b!8053025))

(declare-fun m!8405054 () Bool)

(assert (=> d!2397909 m!8405054))

(declare-fun m!8405056 () Bool)

(assert (=> d!2397909 m!8405056))

(assert (=> b!8053025 m!8404674))

(assert (=> b!8052782 d!2397909))

(assert (=> b!8052781 d!2397901))

(declare-fun b!8053030 () Bool)

(declare-fun e!4745265 () Bool)

(declare-fun tp!2413712 () Bool)

(assert (=> b!8053030 (= e!4745265 (and tp_is_empty!54883 tp_is_empty!54885 tp!2413712))))

(assert (=> b!8052777 (= tp!2413704 e!4745265)))

(assert (= (and b!8052777 ((_ is Cons!75538) (t!391436 l!14636))) b!8053030))

(declare-fun b!8053031 () Bool)

(declare-fun tp!2413713 () Bool)

(declare-fun e!4745266 () Bool)

(assert (=> b!8053031 (= e!4745266 (and tp_is_empty!54883 tp_is_empty!54885 tp!2413713))))

(assert (=> b!8052791 (= tp!2413705 e!4745266)))

(assert (= (and b!8052791 ((_ is Cons!75538) (toList!11916 acc!1298))) b!8053031))

(check-sat (not b!8052929) (not b!8053014) (not b!8053020) (not b!8052939) (not b!8052820) (not bm!747106) (not b!8052853) tp_is_empty!54883 (not b!8052850) (not b!8052851) (not b!8053030) (not d!2397867) (not d!2397895) (not bm!747127) (not bm!747107) (not b!8053006) (not d!2397909) tp_is_empty!54885 (not b!8053018) (not b!8052998) (not d!2397897) (not b!8053017) (not b!8052941) (not b!8052838) (not b!8052842) (not b!8052824) (not b!8052846) (not d!2397869) (not b!8052845) (not b!8052849) (not d!2397879) (not b!8053012) (not b!8052995) (not b!8052840) (not b!8052855) (not b!8052825) (not d!2397899) (not b!8052839) (not b!8052841) (not b!8052997) (not b!8053022) (not b!8052823) (not b!8052854) (not b!8053031) (not b!8052848) (not b!8052996) (not b!8052837) (not bm!747138) (not bm!747132) (not d!2397835) (not d!2397853) (not b!8053004) (not bm!747128) (not b!8052819) (not b!8052821) (not b!8052832) (not d!2397907) (not b!8053015) (not bm!747105) (not d!2397851) (not b!8052818) (not b!8053021) (not d!2397893) (not bm!747126) (not d!2397855) (not b!8053025) (not bm!747134) (not bm!747133) (not b!8052927) (not b!8052925) (not b!8052938) (not b!8052844) (not b!8053016) (not b!8052926) (not b!8052937))
(check-sat)
