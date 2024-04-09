; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137670 () Bool)

(assert start!137670)

(declare-datatypes ((B!2752 0))(
  ( (B!2753 (val!19738 Int)) )
))
(declare-datatypes ((tuple2!25808 0))(
  ( (tuple2!25809 (_1!12914 (_ BitVec 64)) (_2!12914 B!2752)) )
))
(declare-datatypes ((List!37019 0))(
  ( (Nil!37016) (Cons!37015 (h!38559 tuple2!25808) (t!51940 List!37019)) )
))
(declare-fun l!1356 () List!37019)

(declare-fun b!1582234 () Bool)

(declare-fun value!184 () B!2752)

(declare-fun e!883022 () Bool)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun contains!10535 (List!37019 tuple2!25808) Bool)

(assert (=> b!1582234 (= e!883022 (contains!10535 l!1356 (tuple2!25809 key!387 value!184)))))

(declare-datatypes ((Unit!52198 0))(
  ( (Unit!52199) )
))
(declare-fun lt!676993 () Unit!52198)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!8 (List!37019 (_ BitVec 64) B!2752) Unit!52198)

(assert (=> b!1582234 (= lt!676993 (lemmaNotContainsKeyThenNotContainsTuple!8 (t!51940 l!1356) key!387 value!184))))

(declare-fun b!1582235 () Bool)

(declare-fun e!883023 () Bool)

(declare-fun tp_is_empty!39297 () Bool)

(declare-fun tp!114718 () Bool)

(assert (=> b!1582235 (= e!883023 (and tp_is_empty!39297 tp!114718))))

(declare-fun b!1582233 () Bool)

(declare-fun res!1081040 () Bool)

(assert (=> b!1582233 (=> (not res!1081040) (not e!883022))))

(get-info :version)

(assert (=> b!1582233 (= res!1081040 (not ((_ is Nil!37016) l!1356)))))

(declare-fun res!1081038 () Bool)

(assert (=> start!137670 (=> (not res!1081038) (not e!883022))))

(declare-fun isStrictlySorted!1111 (List!37019) Bool)

(assert (=> start!137670 (= res!1081038 (isStrictlySorted!1111 l!1356))))

(assert (=> start!137670 e!883022))

(assert (=> start!137670 e!883023))

(assert (=> start!137670 true))

(assert (=> start!137670 tp_is_empty!39297))

(declare-fun b!1582232 () Bool)

(declare-fun res!1081039 () Bool)

(assert (=> b!1582232 (=> (not res!1081039) (not e!883022))))

(declare-fun containsKey!957 (List!37019 (_ BitVec 64)) Bool)

(assert (=> b!1582232 (= res!1081039 (not (containsKey!957 l!1356 key!387)))))

(assert (= (and start!137670 res!1081038) b!1582232))

(assert (= (and b!1582232 res!1081039) b!1582233))

(assert (= (and b!1582233 res!1081040) b!1582234))

(assert (= (and start!137670 ((_ is Cons!37015) l!1356)) b!1582235))

(declare-fun m!1452757 () Bool)

(assert (=> b!1582234 m!1452757))

(declare-fun m!1452759 () Bool)

(assert (=> b!1582234 m!1452759))

(declare-fun m!1452761 () Bool)

(assert (=> start!137670 m!1452761))

(declare-fun m!1452763 () Bool)

(assert (=> b!1582232 m!1452763))

(check-sat tp_is_empty!39297 (not b!1582232) (not b!1582235) (not b!1582234) (not start!137670))
(check-sat)
(get-model)

(declare-fun d!166903 () Bool)

(declare-fun lt!677005 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!863 (List!37019) (InoxSet tuple2!25808))

(assert (=> d!166903 (= lt!677005 (select (content!863 l!1356) (tuple2!25809 key!387 value!184)))))

(declare-fun e!883046 () Bool)

(assert (=> d!166903 (= lt!677005 e!883046)))

(declare-fun res!1081067 () Bool)

(assert (=> d!166903 (=> (not res!1081067) (not e!883046))))

(assert (=> d!166903 (= res!1081067 ((_ is Cons!37015) l!1356))))

(assert (=> d!166903 (= (contains!10535 l!1356 (tuple2!25809 key!387 value!184)) lt!677005)))

(declare-fun b!1582264 () Bool)

(declare-fun e!883047 () Bool)

(assert (=> b!1582264 (= e!883046 e!883047)))

(declare-fun res!1081066 () Bool)

(assert (=> b!1582264 (=> res!1081066 e!883047)))

(assert (=> b!1582264 (= res!1081066 (= (h!38559 l!1356) (tuple2!25809 key!387 value!184)))))

(declare-fun b!1582265 () Bool)

(assert (=> b!1582265 (= e!883047 (contains!10535 (t!51940 l!1356) (tuple2!25809 key!387 value!184)))))

(assert (= (and d!166903 res!1081067) b!1582264))

(assert (= (and b!1582264 (not res!1081066)) b!1582265))

(declare-fun m!1452785 () Bool)

(assert (=> d!166903 m!1452785))

(declare-fun m!1452787 () Bool)

(assert (=> d!166903 m!1452787))

(declare-fun m!1452789 () Bool)

(assert (=> b!1582265 m!1452789))

(assert (=> b!1582234 d!166903))

(declare-fun d!166909 () Bool)

(assert (=> d!166909 (not (contains!10535 (t!51940 l!1356) (tuple2!25809 key!387 value!184)))))

(declare-fun lt!677014 () Unit!52198)

(declare-fun choose!2106 (List!37019 (_ BitVec 64) B!2752) Unit!52198)

(assert (=> d!166909 (= lt!677014 (choose!2106 (t!51940 l!1356) key!387 value!184))))

(declare-fun e!883056 () Bool)

(assert (=> d!166909 e!883056))

(declare-fun res!1081076 () Bool)

(assert (=> d!166909 (=> (not res!1081076) (not e!883056))))

(assert (=> d!166909 (= res!1081076 (isStrictlySorted!1111 (t!51940 l!1356)))))

(assert (=> d!166909 (= (lemmaNotContainsKeyThenNotContainsTuple!8 (t!51940 l!1356) key!387 value!184) lt!677014)))

(declare-fun b!1582274 () Bool)

(assert (=> b!1582274 (= e!883056 (not (containsKey!957 (t!51940 l!1356) key!387)))))

(assert (= (and d!166909 res!1081076) b!1582274))

(assert (=> d!166909 m!1452789))

(declare-fun m!1452803 () Bool)

(assert (=> d!166909 m!1452803))

(declare-fun m!1452805 () Bool)

(assert (=> d!166909 m!1452805))

(declare-fun m!1452807 () Bool)

(assert (=> b!1582274 m!1452807))

(assert (=> b!1582234 d!166909))

(declare-fun d!166915 () Bool)

(declare-fun res!1081093 () Bool)

(declare-fun e!883073 () Bool)

(assert (=> d!166915 (=> res!1081093 e!883073)))

(assert (=> d!166915 (= res!1081093 (and ((_ is Cons!37015) l!1356) (= (_1!12914 (h!38559 l!1356)) key!387)))))

(assert (=> d!166915 (= (containsKey!957 l!1356 key!387) e!883073)))

(declare-fun b!1582291 () Bool)

(declare-fun e!883074 () Bool)

(assert (=> b!1582291 (= e!883073 e!883074)))

(declare-fun res!1081094 () Bool)

(assert (=> b!1582291 (=> (not res!1081094) (not e!883074))))

(assert (=> b!1582291 (= res!1081094 (and (or (not ((_ is Cons!37015) l!1356)) (bvsle (_1!12914 (h!38559 l!1356)) key!387)) ((_ is Cons!37015) l!1356) (bvslt (_1!12914 (h!38559 l!1356)) key!387)))))

(declare-fun b!1582292 () Bool)

(assert (=> b!1582292 (= e!883074 (containsKey!957 (t!51940 l!1356) key!387))))

(assert (= (and d!166915 (not res!1081093)) b!1582291))

(assert (= (and b!1582291 res!1081094) b!1582292))

(assert (=> b!1582292 m!1452807))

(assert (=> b!1582232 d!166915))

(declare-fun d!166921 () Bool)

(declare-fun res!1081111 () Bool)

(declare-fun e!883096 () Bool)

(assert (=> d!166921 (=> res!1081111 e!883096)))

(assert (=> d!166921 (= res!1081111 (or ((_ is Nil!37016) l!1356) ((_ is Nil!37016) (t!51940 l!1356))))))

(assert (=> d!166921 (= (isStrictlySorted!1111 l!1356) e!883096)))

(declare-fun b!1582318 () Bool)

(declare-fun e!883097 () Bool)

(assert (=> b!1582318 (= e!883096 e!883097)))

(declare-fun res!1081112 () Bool)

(assert (=> b!1582318 (=> (not res!1081112) (not e!883097))))

(assert (=> b!1582318 (= res!1081112 (bvslt (_1!12914 (h!38559 l!1356)) (_1!12914 (h!38559 (t!51940 l!1356)))))))

(declare-fun b!1582319 () Bool)

(assert (=> b!1582319 (= e!883097 (isStrictlySorted!1111 (t!51940 l!1356)))))

(assert (= (and d!166921 (not res!1081111)) b!1582318))

(assert (= (and b!1582318 res!1081112) b!1582319))

(assert (=> b!1582319 m!1452805))

(assert (=> start!137670 d!166921))

(declare-fun b!1582325 () Bool)

(declare-fun e!883101 () Bool)

(declare-fun tp!114730 () Bool)

(assert (=> b!1582325 (= e!883101 (and tp_is_empty!39297 tp!114730))))

(assert (=> b!1582235 (= tp!114718 e!883101)))

(assert (= (and b!1582235 ((_ is Cons!37015) (t!51940 l!1356))) b!1582325))

(check-sat (not b!1582292) tp_is_empty!39297 (not d!166903) (not b!1582265) (not b!1582319) (not b!1582325) (not d!166909) (not b!1582274))
(check-sat)
