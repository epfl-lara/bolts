; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485848 () Bool)

(assert start!485848)

(declare-fun b!4754032 () Bool)

(declare-fun e!2965684 () Bool)

(declare-datatypes ((K!14600 0))(
  ( (K!14601 (val!19951 Int)) )
))
(declare-datatypes ((V!14846 0))(
  ( (V!14847 (val!19952 Int)) )
))
(declare-datatypes ((tuple2!54920 0))(
  ( (tuple2!54921 (_1!30754 K!14600) (_2!30754 V!14846)) )
))
(declare-datatypes ((List!53244 0))(
  ( (Nil!53120) (Cons!53120 (h!59517 tuple2!54920) (t!360588 List!53244)) )
))
(declare-fun l!13029 () List!53244)

(declare-fun noDuplicateKeys!2180 (List!53244) Bool)

(assert (=> b!4754032 (= e!2965684 (noDuplicateKeys!2180 (t!360588 l!13029)))))

(declare-fun b!4754033 () Bool)

(declare-fun res!2016498 () Bool)

(declare-fun e!2965683 () Bool)

(assert (=> b!4754033 (=> (not res!2016498) (not e!2965683))))

(get-info :version)

(assert (=> b!4754033 (= res!2016498 ((_ is Cons!53120) l!13029))))

(declare-fun b!4754034 () Bool)

(declare-fun res!2016497 () Bool)

(assert (=> b!4754034 (=> (not res!2016497) (not e!2965683))))

(assert (=> b!4754034 (= res!2016497 (noDuplicateKeys!2180 l!13029))))

(declare-fun res!2016496 () Bool)

(assert (=> start!485848 (=> (not res!2016496) (not e!2965683))))

(declare-fun key!4572 () K!14600)

(declare-fun containsKey!3586 (List!53244 K!14600) Bool)

(assert (=> start!485848 (= res!2016496 (not (containsKey!3586 l!13029 key!4572)))))

(assert (=> start!485848 e!2965683))

(declare-fun e!2965681 () Bool)

(assert (=> start!485848 e!2965681))

(declare-fun tp_is_empty!32013 () Bool)

(assert (=> start!485848 tp_is_empty!32013))

(declare-fun tp_is_empty!32015 () Bool)

(assert (=> start!485848 tp_is_empty!32015))

(declare-datatypes ((ListMap!5605 0))(
  ( (ListMap!5606 (toList!6148 List!53244)) )
))
(declare-fun lhm!63 () ListMap!5605)

(declare-fun e!2965682 () Bool)

(declare-fun inv!68470 (ListMap!5605) Bool)

(assert (=> start!485848 (and (inv!68470 lhm!63) e!2965682)))

(declare-fun b!4754035 () Bool)

(assert (=> b!4754035 (= e!2965683 (not e!2965684))))

(declare-fun res!2016499 () Bool)

(assert (=> b!4754035 (=> res!2016499 e!2965684)))

(assert (=> b!4754035 (= res!2016499 (containsKey!3586 (t!360588 l!13029) key!4572))))

(declare-fun lt!1920081 () ListMap!5605)

(declare-fun lt!1920079 () tuple2!54920)

(declare-fun eq!1245 (ListMap!5605 ListMap!5605) Bool)

(declare-fun +!2414 (ListMap!5605 tuple2!54920) ListMap!5605)

(assert (=> b!4754035 (eq!1245 (+!2414 lt!1920081 lt!1920079) (+!2414 (+!2414 lhm!63 lt!1920079) (h!59517 l!13029)))))

(declare-fun value!2966 () V!14846)

(assert (=> b!4754035 (= lt!1920079 (tuple2!54921 key!4572 value!2966))))

(declare-datatypes ((Unit!137040 0))(
  ( (Unit!137041) )
))
(declare-fun lt!1920080 () Unit!137040)

(declare-fun addCommutativeForDiffKeys!46 (ListMap!5605 K!14600 V!14846 K!14600 V!14846) Unit!137040)

(assert (=> b!4754035 (= lt!1920080 (addCommutativeForDiffKeys!46 lhm!63 (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029)) key!4572 value!2966))))

(assert (=> b!4754035 (= lt!1920081 (+!2414 lhm!63 (h!59517 l!13029)))))

(declare-fun b!4754036 () Bool)

(declare-fun tp!1350444 () Bool)

(assert (=> b!4754036 (= e!2965681 (and tp_is_empty!32013 tp_is_empty!32015 tp!1350444))))

(declare-fun b!4754037 () Bool)

(declare-fun tp!1350445 () Bool)

(assert (=> b!4754037 (= e!2965682 tp!1350445)))

(assert (= (and start!485848 res!2016496) b!4754034))

(assert (= (and b!4754034 res!2016497) b!4754033))

(assert (= (and b!4754033 res!2016498) b!4754035))

(assert (= (and b!4754035 (not res!2016499)) b!4754032))

(assert (= (and start!485848 ((_ is Cons!53120) l!13029)) b!4754036))

(assert (= start!485848 b!4754037))

(declare-fun m!5721933 () Bool)

(assert (=> b!4754032 m!5721933))

(declare-fun m!5721935 () Bool)

(assert (=> b!4754034 m!5721935))

(declare-fun m!5721937 () Bool)

(assert (=> start!485848 m!5721937))

(declare-fun m!5721939 () Bool)

(assert (=> start!485848 m!5721939))

(declare-fun m!5721941 () Bool)

(assert (=> b!4754035 m!5721941))

(declare-fun m!5721943 () Bool)

(assert (=> b!4754035 m!5721943))

(declare-fun m!5721945 () Bool)

(assert (=> b!4754035 m!5721945))

(declare-fun m!5721947 () Bool)

(assert (=> b!4754035 m!5721947))

(declare-fun m!5721949 () Bool)

(assert (=> b!4754035 m!5721949))

(declare-fun m!5721951 () Bool)

(assert (=> b!4754035 m!5721951))

(assert (=> b!4754035 m!5721947))

(assert (=> b!4754035 m!5721943))

(declare-fun m!5721953 () Bool)

(assert (=> b!4754035 m!5721953))

(assert (=> b!4754035 m!5721941))

(check-sat (not b!4754036) tp_is_empty!32013 (not start!485848) (not b!4754032) (not b!4754035) tp_is_empty!32015 (not b!4754037) (not b!4754034))
(check-sat)
(get-model)

(declare-fun d!1520124 () Bool)

(declare-fun res!2016510 () Bool)

(declare-fun e!2965695 () Bool)

(assert (=> d!1520124 (=> res!2016510 e!2965695)))

(assert (=> d!1520124 (= res!2016510 (not ((_ is Cons!53120) l!13029)))))

(assert (=> d!1520124 (= (noDuplicateKeys!2180 l!13029) e!2965695)))

(declare-fun b!4754048 () Bool)

(declare-fun e!2965696 () Bool)

(assert (=> b!4754048 (= e!2965695 e!2965696)))

(declare-fun res!2016511 () Bool)

(assert (=> b!4754048 (=> (not res!2016511) (not e!2965696))))

(assert (=> b!4754048 (= res!2016511 (not (containsKey!3586 (t!360588 l!13029) (_1!30754 (h!59517 l!13029)))))))

(declare-fun b!4754049 () Bool)

(assert (=> b!4754049 (= e!2965696 (noDuplicateKeys!2180 (t!360588 l!13029)))))

(assert (= (and d!1520124 (not res!2016510)) b!4754048))

(assert (= (and b!4754048 res!2016511) b!4754049))

(declare-fun m!5721957 () Bool)

(assert (=> b!4754048 m!5721957))

(assert (=> b!4754049 m!5721933))

(assert (=> b!4754034 d!1520124))

(declare-fun d!1520126 () Bool)

(declare-fun res!2016516 () Bool)

(declare-fun e!2965701 () Bool)

(assert (=> d!1520126 (=> res!2016516 e!2965701)))

(assert (=> d!1520126 (= res!2016516 (and ((_ is Cons!53120) l!13029) (= (_1!30754 (h!59517 l!13029)) key!4572)))))

(assert (=> d!1520126 (= (containsKey!3586 l!13029 key!4572) e!2965701)))

(declare-fun b!4754054 () Bool)

(declare-fun e!2965702 () Bool)

(assert (=> b!4754054 (= e!2965701 e!2965702)))

(declare-fun res!2016517 () Bool)

(assert (=> b!4754054 (=> (not res!2016517) (not e!2965702))))

(assert (=> b!4754054 (= res!2016517 ((_ is Cons!53120) l!13029))))

(declare-fun b!4754055 () Bool)

(assert (=> b!4754055 (= e!2965702 (containsKey!3586 (t!360588 l!13029) key!4572))))

(assert (= (and d!1520126 (not res!2016516)) b!4754054))

(assert (= (and b!4754054 res!2016517) b!4754055))

(assert (=> b!4754055 m!5721951))

(assert (=> start!485848 d!1520126))

(declare-fun d!1520128 () Bool)

(declare-fun invariantList!1609 (List!53244) Bool)

(assert (=> d!1520128 (= (inv!68470 lhm!63) (invariantList!1609 (toList!6148 lhm!63)))))

(declare-fun bs!1145904 () Bool)

(assert (= bs!1145904 d!1520128))

(declare-fun m!5721959 () Bool)

(assert (=> bs!1145904 m!5721959))

(assert (=> start!485848 d!1520128))

(declare-fun d!1520130 () Bool)

(declare-fun res!2016524 () Bool)

(declare-fun e!2965706 () Bool)

(assert (=> d!1520130 (=> res!2016524 e!2965706)))

(assert (=> d!1520130 (= res!2016524 (not ((_ is Cons!53120) (t!360588 l!13029))))))

(assert (=> d!1520130 (= (noDuplicateKeys!2180 (t!360588 l!13029)) e!2965706)))

(declare-fun b!4754062 () Bool)

(declare-fun e!2965707 () Bool)

(assert (=> b!4754062 (= e!2965706 e!2965707)))

(declare-fun res!2016525 () Bool)

(assert (=> b!4754062 (=> (not res!2016525) (not e!2965707))))

(assert (=> b!4754062 (= res!2016525 (not (containsKey!3586 (t!360588 (t!360588 l!13029)) (_1!30754 (h!59517 (t!360588 l!13029))))))))

(declare-fun b!4754063 () Bool)

(assert (=> b!4754063 (= e!2965707 (noDuplicateKeys!2180 (t!360588 (t!360588 l!13029))))))

(assert (= (and d!1520130 (not res!2016524)) b!4754062))

(assert (= (and b!4754062 res!2016525) b!4754063))

(declare-fun m!5721967 () Bool)

(assert (=> b!4754062 m!5721967))

(declare-fun m!5721969 () Bool)

(assert (=> b!4754063 m!5721969))

(assert (=> b!4754032 d!1520130))

(declare-fun d!1520132 () Bool)

(declare-fun res!2016526 () Bool)

(declare-fun e!2965708 () Bool)

(assert (=> d!1520132 (=> res!2016526 e!2965708)))

(assert (=> d!1520132 (= res!2016526 (and ((_ is Cons!53120) (t!360588 l!13029)) (= (_1!30754 (h!59517 (t!360588 l!13029))) key!4572)))))

(assert (=> d!1520132 (= (containsKey!3586 (t!360588 l!13029) key!4572) e!2965708)))

(declare-fun b!4754064 () Bool)

(declare-fun e!2965709 () Bool)

(assert (=> b!4754064 (= e!2965708 e!2965709)))

(declare-fun res!2016527 () Bool)

(assert (=> b!4754064 (=> (not res!2016527) (not e!2965709))))

(assert (=> b!4754064 (= res!2016527 ((_ is Cons!53120) (t!360588 l!13029)))))

(declare-fun b!4754065 () Bool)

(assert (=> b!4754065 (= e!2965709 (containsKey!3586 (t!360588 (t!360588 l!13029)) key!4572))))

(assert (= (and d!1520132 (not res!2016526)) b!4754064))

(assert (= (and b!4754064 res!2016527) b!4754065))

(declare-fun m!5721977 () Bool)

(assert (=> b!4754065 m!5721977))

(assert (=> b!4754035 d!1520132))

(declare-fun d!1520136 () Bool)

(declare-fun e!2965721 () Bool)

(assert (=> d!1520136 e!2965721))

(declare-fun res!2016544 () Bool)

(assert (=> d!1520136 (=> (not res!2016544) (not e!2965721))))

(declare-fun lt!1920119 () ListMap!5605)

(declare-fun contains!16544 (ListMap!5605 K!14600) Bool)

(assert (=> d!1520136 (= res!2016544 (contains!16544 lt!1920119 (_1!30754 (h!59517 l!13029))))))

(declare-fun lt!1920118 () List!53244)

(assert (=> d!1520136 (= lt!1920119 (ListMap!5606 lt!1920118))))

(declare-fun lt!1920117 () Unit!137040)

(declare-fun lt!1920116 () Unit!137040)

(assert (=> d!1520136 (= lt!1920117 lt!1920116)))

(declare-datatypes ((Option!12547 0))(
  ( (None!12546) (Some!12546 (v!47247 V!14846)) )
))
(declare-fun getValueByKey!2097 (List!53244 K!14600) Option!12547)

(assert (=> d!1520136 (= (getValueByKey!2097 lt!1920118 (_1!30754 (h!59517 l!13029))) (Some!12546 (_2!30754 (h!59517 l!13029))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1174 (List!53244 K!14600 V!14846) Unit!137040)

(assert (=> d!1520136 (= lt!1920116 (lemmaContainsTupThenGetReturnValue!1174 lt!1920118 (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029))))))

(declare-fun insertNoDuplicatedKeys!682 (List!53244 K!14600 V!14846) List!53244)

(assert (=> d!1520136 (= lt!1920118 (insertNoDuplicatedKeys!682 (toList!6148 (+!2414 lhm!63 lt!1920079)) (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029))))))

(assert (=> d!1520136 (= (+!2414 (+!2414 lhm!63 lt!1920079) (h!59517 l!13029)) lt!1920119)))

(declare-fun b!4754082 () Bool)

(declare-fun res!2016545 () Bool)

(assert (=> b!4754082 (=> (not res!2016545) (not e!2965721))))

(assert (=> b!4754082 (= res!2016545 (= (getValueByKey!2097 (toList!6148 lt!1920119) (_1!30754 (h!59517 l!13029))) (Some!12546 (_2!30754 (h!59517 l!13029)))))))

(declare-fun b!4754083 () Bool)

(declare-fun contains!16545 (List!53244 tuple2!54920) Bool)

(assert (=> b!4754083 (= e!2965721 (contains!16545 (toList!6148 lt!1920119) (h!59517 l!13029)))))

(assert (= (and d!1520136 res!2016544) b!4754082))

(assert (= (and b!4754082 res!2016545) b!4754083))

(declare-fun m!5722021 () Bool)

(assert (=> d!1520136 m!5722021))

(declare-fun m!5722023 () Bool)

(assert (=> d!1520136 m!5722023))

(declare-fun m!5722025 () Bool)

(assert (=> d!1520136 m!5722025))

(declare-fun m!5722027 () Bool)

(assert (=> d!1520136 m!5722027))

(declare-fun m!5722029 () Bool)

(assert (=> b!4754082 m!5722029))

(declare-fun m!5722031 () Bool)

(assert (=> b!4754083 m!5722031))

(assert (=> b!4754035 d!1520136))

(declare-fun d!1520148 () Bool)

(declare-fun e!2965722 () Bool)

(assert (=> d!1520148 e!2965722))

(declare-fun res!2016546 () Bool)

(assert (=> d!1520148 (=> (not res!2016546) (not e!2965722))))

(declare-fun lt!1920124 () ListMap!5605)

(assert (=> d!1520148 (= res!2016546 (contains!16544 lt!1920124 (_1!30754 lt!1920079)))))

(declare-fun lt!1920123 () List!53244)

(assert (=> d!1520148 (= lt!1920124 (ListMap!5606 lt!1920123))))

(declare-fun lt!1920122 () Unit!137040)

(declare-fun lt!1920121 () Unit!137040)

(assert (=> d!1520148 (= lt!1920122 lt!1920121)))

(assert (=> d!1520148 (= (getValueByKey!2097 lt!1920123 (_1!30754 lt!1920079)) (Some!12546 (_2!30754 lt!1920079)))))

(assert (=> d!1520148 (= lt!1920121 (lemmaContainsTupThenGetReturnValue!1174 lt!1920123 (_1!30754 lt!1920079) (_2!30754 lt!1920079)))))

(assert (=> d!1520148 (= lt!1920123 (insertNoDuplicatedKeys!682 (toList!6148 lt!1920081) (_1!30754 lt!1920079) (_2!30754 lt!1920079)))))

(assert (=> d!1520148 (= (+!2414 lt!1920081 lt!1920079) lt!1920124)))

(declare-fun b!4754084 () Bool)

(declare-fun res!2016547 () Bool)

(assert (=> b!4754084 (=> (not res!2016547) (not e!2965722))))

(assert (=> b!4754084 (= res!2016547 (= (getValueByKey!2097 (toList!6148 lt!1920124) (_1!30754 lt!1920079)) (Some!12546 (_2!30754 lt!1920079))))))

(declare-fun b!4754085 () Bool)

(assert (=> b!4754085 (= e!2965722 (contains!16545 (toList!6148 lt!1920124) lt!1920079))))

(assert (= (and d!1520148 res!2016546) b!4754084))

(assert (= (and b!4754084 res!2016547) b!4754085))

(declare-fun m!5722041 () Bool)

(assert (=> d!1520148 m!5722041))

(declare-fun m!5722045 () Bool)

(assert (=> d!1520148 m!5722045))

(declare-fun m!5722049 () Bool)

(assert (=> d!1520148 m!5722049))

(declare-fun m!5722051 () Bool)

(assert (=> d!1520148 m!5722051))

(declare-fun m!5722053 () Bool)

(assert (=> b!4754084 m!5722053))

(declare-fun m!5722055 () Bool)

(assert (=> b!4754085 m!5722055))

(assert (=> b!4754035 d!1520148))

(declare-fun d!1520152 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9547 (List!53244) (InoxSet tuple2!54920))

(assert (=> d!1520152 (= (eq!1245 (+!2414 lt!1920081 lt!1920079) (+!2414 (+!2414 lhm!63 lt!1920079) (h!59517 l!13029))) (= (content!9547 (toList!6148 (+!2414 lt!1920081 lt!1920079))) (content!9547 (toList!6148 (+!2414 (+!2414 lhm!63 lt!1920079) (h!59517 l!13029))))))))

(declare-fun bs!1145907 () Bool)

(assert (= bs!1145907 d!1520152))

(declare-fun m!5722061 () Bool)

(assert (=> bs!1145907 m!5722061))

(declare-fun m!5722063 () Bool)

(assert (=> bs!1145907 m!5722063))

(assert (=> b!4754035 d!1520152))

(declare-fun d!1520158 () Bool)

(declare-fun e!2965727 () Bool)

(assert (=> d!1520158 e!2965727))

(declare-fun res!2016552 () Bool)

(assert (=> d!1520158 (=> (not res!2016552) (not e!2965727))))

(declare-fun lt!1920128 () ListMap!5605)

(assert (=> d!1520158 (= res!2016552 (contains!16544 lt!1920128 (_1!30754 lt!1920079)))))

(declare-fun lt!1920127 () List!53244)

(assert (=> d!1520158 (= lt!1920128 (ListMap!5606 lt!1920127))))

(declare-fun lt!1920126 () Unit!137040)

(declare-fun lt!1920125 () Unit!137040)

(assert (=> d!1520158 (= lt!1920126 lt!1920125)))

(assert (=> d!1520158 (= (getValueByKey!2097 lt!1920127 (_1!30754 lt!1920079)) (Some!12546 (_2!30754 lt!1920079)))))

(assert (=> d!1520158 (= lt!1920125 (lemmaContainsTupThenGetReturnValue!1174 lt!1920127 (_1!30754 lt!1920079) (_2!30754 lt!1920079)))))

(assert (=> d!1520158 (= lt!1920127 (insertNoDuplicatedKeys!682 (toList!6148 lhm!63) (_1!30754 lt!1920079) (_2!30754 lt!1920079)))))

(assert (=> d!1520158 (= (+!2414 lhm!63 lt!1920079) lt!1920128)))

(declare-fun b!4754090 () Bool)

(declare-fun res!2016553 () Bool)

(assert (=> b!4754090 (=> (not res!2016553) (not e!2965727))))

(assert (=> b!4754090 (= res!2016553 (= (getValueByKey!2097 (toList!6148 lt!1920128) (_1!30754 lt!1920079)) (Some!12546 (_2!30754 lt!1920079))))))

(declare-fun b!4754091 () Bool)

(assert (=> b!4754091 (= e!2965727 (contains!16545 (toList!6148 lt!1920128) lt!1920079))))

(assert (= (and d!1520158 res!2016552) b!4754090))

(assert (= (and b!4754090 res!2016553) b!4754091))

(declare-fun m!5722067 () Bool)

(assert (=> d!1520158 m!5722067))

(declare-fun m!5722069 () Bool)

(assert (=> d!1520158 m!5722069))

(declare-fun m!5722071 () Bool)

(assert (=> d!1520158 m!5722071))

(declare-fun m!5722073 () Bool)

(assert (=> d!1520158 m!5722073))

(declare-fun m!5722075 () Bool)

(assert (=> b!4754090 m!5722075))

(declare-fun m!5722077 () Bool)

(assert (=> b!4754091 m!5722077))

(assert (=> b!4754035 d!1520158))

(declare-fun d!1520160 () Bool)

(declare-fun e!2965732 () Bool)

(assert (=> d!1520160 e!2965732))

(declare-fun res!2016554 () Bool)

(assert (=> d!1520160 (=> (not res!2016554) (not e!2965732))))

(declare-fun lt!1920132 () ListMap!5605)

(assert (=> d!1520160 (= res!2016554 (contains!16544 lt!1920132 (_1!30754 (h!59517 l!13029))))))

(declare-fun lt!1920131 () List!53244)

(assert (=> d!1520160 (= lt!1920132 (ListMap!5606 lt!1920131))))

(declare-fun lt!1920130 () Unit!137040)

(declare-fun lt!1920129 () Unit!137040)

(assert (=> d!1520160 (= lt!1920130 lt!1920129)))

(assert (=> d!1520160 (= (getValueByKey!2097 lt!1920131 (_1!30754 (h!59517 l!13029))) (Some!12546 (_2!30754 (h!59517 l!13029))))))

(assert (=> d!1520160 (= lt!1920129 (lemmaContainsTupThenGetReturnValue!1174 lt!1920131 (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029))))))

(assert (=> d!1520160 (= lt!1920131 (insertNoDuplicatedKeys!682 (toList!6148 lhm!63) (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029))))))

(assert (=> d!1520160 (= (+!2414 lhm!63 (h!59517 l!13029)) lt!1920132)))

(declare-fun b!4754098 () Bool)

(declare-fun res!2016555 () Bool)

(assert (=> b!4754098 (=> (not res!2016555) (not e!2965732))))

(assert (=> b!4754098 (= res!2016555 (= (getValueByKey!2097 (toList!6148 lt!1920132) (_1!30754 (h!59517 l!13029))) (Some!12546 (_2!30754 (h!59517 l!13029)))))))

(declare-fun b!4754099 () Bool)

(assert (=> b!4754099 (= e!2965732 (contains!16545 (toList!6148 lt!1920132) (h!59517 l!13029)))))

(assert (= (and d!1520160 res!2016554) b!4754098))

(assert (= (and b!4754098 res!2016555) b!4754099))

(declare-fun m!5722079 () Bool)

(assert (=> d!1520160 m!5722079))

(declare-fun m!5722081 () Bool)

(assert (=> d!1520160 m!5722081))

(declare-fun m!5722083 () Bool)

(assert (=> d!1520160 m!5722083))

(declare-fun m!5722085 () Bool)

(assert (=> d!1520160 m!5722085))

(declare-fun m!5722087 () Bool)

(assert (=> b!4754098 m!5722087))

(declare-fun m!5722089 () Bool)

(assert (=> b!4754099 m!5722089))

(assert (=> b!4754035 d!1520160))

(declare-fun d!1520162 () Bool)

(assert (=> d!1520162 (eq!1245 (+!2414 (+!2414 lhm!63 (tuple2!54921 (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029)))) (tuple2!54921 key!4572 value!2966)) (+!2414 (+!2414 lhm!63 (tuple2!54921 key!4572 value!2966)) (tuple2!54921 (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029)))))))

(declare-fun lt!1920135 () Unit!137040)

(declare-fun choose!33864 (ListMap!5605 K!14600 V!14846 K!14600 V!14846) Unit!137040)

(assert (=> d!1520162 (= lt!1920135 (choose!33864 lhm!63 (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029)) key!4572 value!2966))))

(assert (=> d!1520162 (not (= (_1!30754 (h!59517 l!13029)) key!4572))))

(assert (=> d!1520162 (= (addCommutativeForDiffKeys!46 lhm!63 (_1!30754 (h!59517 l!13029)) (_2!30754 (h!59517 l!13029)) key!4572 value!2966) lt!1920135)))

(declare-fun bs!1145909 () Bool)

(assert (= bs!1145909 d!1520162))

(declare-fun m!5722091 () Bool)

(assert (=> bs!1145909 m!5722091))

(declare-fun m!5722093 () Bool)

(assert (=> bs!1145909 m!5722093))

(declare-fun m!5722095 () Bool)

(assert (=> bs!1145909 m!5722095))

(declare-fun m!5722097 () Bool)

(assert (=> bs!1145909 m!5722097))

(assert (=> bs!1145909 m!5722091))

(declare-fun m!5722099 () Bool)

(assert (=> bs!1145909 m!5722099))

(assert (=> bs!1145909 m!5722099))

(assert (=> bs!1145909 m!5722095))

(declare-fun m!5722101 () Bool)

(assert (=> bs!1145909 m!5722101))

(assert (=> bs!1145909 m!5722093))

(assert (=> b!4754035 d!1520162))

(declare-fun b!4754104 () Bool)

(declare-fun tp!1350452 () Bool)

(declare-fun e!2965735 () Bool)

(assert (=> b!4754104 (= e!2965735 (and tp_is_empty!32013 tp_is_empty!32015 tp!1350452))))

(assert (=> b!4754037 (= tp!1350445 e!2965735)))

(assert (= (and b!4754037 ((_ is Cons!53120) (toList!6148 lhm!63))) b!4754104))

(declare-fun b!4754105 () Bool)

(declare-fun e!2965736 () Bool)

(declare-fun tp!1350453 () Bool)

(assert (=> b!4754105 (= e!2965736 (and tp_is_empty!32013 tp_is_empty!32015 tp!1350453))))

(assert (=> b!4754036 (= tp!1350444 e!2965736)))

(assert (= (and b!4754036 ((_ is Cons!53120) (t!360588 l!13029))) b!4754105))

(check-sat (not d!1520136) (not b!4754084) tp_is_empty!32013 (not b!4754099) (not b!4754105) (not b!4754082) (not d!1520148) (not b!4754098) (not d!1520158) (not b!4754048) (not d!1520152) (not b!4754055) (not b!4754085) (not b!4754090) (not b!4754091) (not d!1520162) tp_is_empty!32015 (not d!1520128) (not b!4754062) (not b!4754049) (not b!4754065) (not b!4754063) (not b!4754104) (not d!1520160) (not b!4754083))
(check-sat)
