; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106276 () Bool)

(assert start!106276)

(declare-fun res!842173 () Bool)

(declare-fun e!720093 () Bool)

(assert (=> start!106276 (=> (not res!842173) (not e!720093))))

(declare-datatypes ((B!1916 0))(
  ( (B!1917 (val!16293 Int)) )
))
(declare-datatypes ((tuple2!21254 0))(
  ( (tuple2!21255 (_1!10637 (_ BitVec 64)) (_2!10637 B!1916)) )
))
(declare-datatypes ((List!28460 0))(
  ( (Nil!28457) (Cons!28456 (h!29665 tuple2!21254) (t!41988 List!28460)) )
))
(declare-datatypes ((ListLongMap!19139 0))(
  ( (ListLongMap!19140 (toList!9585 List!28460)) )
))
(declare-fun lm!212 () ListLongMap!19139)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7643 (ListLongMap!19139 (_ BitVec 64)) Bool)

(assert (=> start!106276 (= res!842173 (not (contains!7643 lm!212 a1!67)))))

(assert (=> start!106276 e!720093))

(declare-fun e!720094 () Bool)

(declare-fun inv!44080 (ListLongMap!19139) Bool)

(assert (=> start!106276 (and (inv!44080 lm!212) e!720094)))

(assert (=> start!106276 true))

(declare-fun b!1264485 () Bool)

(declare-fun res!842172 () Bool)

(assert (=> b!1264485 (=> (not res!842172) (not e!720093))))

(declare-fun isStrictlySorted!768 (List!28460) Bool)

(assert (=> b!1264485 (= res!842172 (isStrictlySorted!768 (toList!9585 lm!212)))))

(declare-fun b!1264486 () Bool)

(declare-fun containsKey!629 (List!28460 (_ BitVec 64)) Bool)

(assert (=> b!1264486 (= e!720093 (containsKey!629 (toList!9585 lm!212) a1!67))))

(declare-fun b!1264487 () Bool)

(declare-fun tp!96222 () Bool)

(assert (=> b!1264487 (= e!720094 tp!96222)))

(assert (= (and start!106276 res!842173) b!1264485))

(assert (= (and b!1264485 res!842172) b!1264486))

(assert (= start!106276 b!1264487))

(declare-fun m!1165065 () Bool)

(assert (=> start!106276 m!1165065))

(declare-fun m!1165067 () Bool)

(assert (=> start!106276 m!1165067))

(declare-fun m!1165069 () Bool)

(assert (=> b!1264485 m!1165069))

(declare-fun m!1165071 () Bool)

(assert (=> b!1264486 m!1165071))

(push 1)

(assert (not b!1264485))

(assert (not start!106276))

(assert (not b!1264486))

(assert (not b!1264487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138671 () Bool)

(declare-fun res!842194 () Bool)

(declare-fun e!720115 () Bool)

(assert (=> d!138671 (=> res!842194 e!720115)))

(assert (=> d!138671 (= res!842194 (or (is-Nil!28457 (toList!9585 lm!212)) (is-Nil!28457 (t!41988 (toList!9585 lm!212)))))))

(assert (=> d!138671 (= (isStrictlySorted!768 (toList!9585 lm!212)) e!720115)))

(declare-fun b!1264514 () Bool)

(declare-fun e!720116 () Bool)

(assert (=> b!1264514 (= e!720115 e!720116)))

(declare-fun res!842195 () Bool)

(assert (=> b!1264514 (=> (not res!842195) (not e!720116))))

(assert (=> b!1264514 (= res!842195 (bvslt (_1!10637 (h!29665 (toList!9585 lm!212))) (_1!10637 (h!29665 (t!41988 (toList!9585 lm!212))))))))

(declare-fun b!1264515 () Bool)

(assert (=> b!1264515 (= e!720116 (isStrictlySorted!768 (t!41988 (toList!9585 lm!212))))))

(assert (= (and d!138671 (not res!842194)) b!1264514))

(assert (= (and b!1264514 res!842195) b!1264515))

(declare-fun m!1165089 () Bool)

(assert (=> b!1264515 m!1165089))

(assert (=> b!1264485 d!138671))

(declare-fun d!138677 () Bool)

(declare-fun e!720133 () Bool)

(assert (=> d!138677 e!720133))

(declare-fun res!842210 () Bool)

(assert (=> d!138677 (=> res!842210 e!720133)))

(declare-fun lt!573787 () Bool)

(assert (=> d!138677 (= res!842210 (not lt!573787))))

(declare-fun lt!573788 () Bool)

(assert (=> d!138677 (= lt!573787 lt!573788)))

(declare-datatypes ((Unit!42105 0))(
  ( (Unit!42106) )
))
(declare-fun lt!573785 () Unit!42105)

(declare-fun e!720134 () Unit!42105)

(assert (=> d!138677 (= lt!573785 e!720134)))

(declare-fun c!123091 () Bool)

(assert (=> d!138677 (= c!123091 lt!573788)))

(assert (=> d!138677 (= lt!573788 (containsKey!629 (toList!9585 lm!212) a1!67))))

(assert (=> d!138677 (= (contains!7643 lm!212 a1!67) lt!573787)))

(declare-fun b!1264534 () Bool)

(declare-fun lt!573786 () Unit!42105)

(assert (=> b!1264534 (= e!720134 lt!573786)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!439 (List!28460 (_ BitVec 64)) Unit!42105)

(assert (=> b!1264534 (= lt!573786 (lemmaContainsKeyImpliesGetValueByKeyDefined!439 (toList!9585 lm!212) a1!67))))

(declare-datatypes ((Option!726 0))(
  ( (Some!725 (v!19000 B!1916)) (None!724) )
))
(declare-fun isDefined!479 (Option!726) Bool)

(declare-fun getValueByKey!675 (List!28460 (_ BitVec 64)) Option!726)

(assert (=> b!1264534 (isDefined!479 (getValueByKey!675 (toList!9585 lm!212) a1!67))))

(declare-fun b!1264535 () Bool)

(declare-fun Unit!42107 () Unit!42105)

(assert (=> b!1264535 (= e!720134 Unit!42107)))

(declare-fun b!1264536 () Bool)

(assert (=> b!1264536 (= e!720133 (isDefined!479 (getValueByKey!675 (toList!9585 lm!212) a1!67)))))

(assert (= (and d!138677 c!123091) b!1264534))

(assert (= (and d!138677 (not c!123091)) b!1264535))

(assert (= (and d!138677 (not res!842210)) b!1264536))

(assert (=> d!138677 m!1165071))

(declare-fun m!1165095 () Bool)

(assert (=> b!1264534 m!1165095))

(declare-fun m!1165097 () Bool)

(assert (=> b!1264534 m!1165097))

(assert (=> b!1264534 m!1165097))

(declare-fun m!1165099 () Bool)

(assert (=> b!1264534 m!1165099))

(assert (=> b!1264536 m!1165097))

(assert (=> b!1264536 m!1165097))

(assert (=> b!1264536 m!1165099))

(assert (=> start!106276 d!138677))

(declare-fun d!138683 () Bool)

(assert (=> d!138683 (= (inv!44080 lm!212) (isStrictlySorted!768 (toList!9585 lm!212)))))

(declare-fun bs!35773 () Bool)

(assert (= bs!35773 d!138683))

(assert (=> bs!35773 m!1165069))

(assert (=> start!106276 d!138683))

(declare-fun d!138685 () Bool)

(declare-fun res!842219 () Bool)

(declare-fun e!720145 () Bool)

(assert (=> d!138685 (=> res!842219 e!720145)))

(assert (=> d!138685 (= res!842219 (and (is-Cons!28456 (toList!9585 lm!212)) (= (_1!10637 (h!29665 (toList!9585 lm!212))) a1!67)))))

(assert (=> d!138685 (= (containsKey!629 (toList!9585 lm!212) a1!67) e!720145)))

(declare-fun b!1264549 () Bool)

(declare-fun e!720146 () Bool)

(assert (=> b!1264549 (= e!720145 e!720146)))

(declare-fun res!842220 () Bool)

(assert (=> b!1264549 (=> (not res!842220) (not e!720146))))

(assert (=> b!1264549 (= res!842220 (and (or (not (is-Cons!28456 (toList!9585 lm!212))) (bvsle (_1!10637 (h!29665 (toList!9585 lm!212))) a1!67)) (is-Cons!28456 (toList!9585 lm!212)) (bvslt (_1!10637 (h!29665 (toList!9585 lm!212))) a1!67)))))

(declare-fun b!1264550 () Bool)

(assert (=> b!1264550 (= e!720146 (containsKey!629 (t!41988 (toList!9585 lm!212)) a1!67))))

(assert (= (and d!138685 (not res!842219)) b!1264549))

(assert (= (and b!1264549 res!842220) b!1264550))

(declare-fun m!1165103 () Bool)

(assert (=> b!1264550 m!1165103))

(assert (=> b!1264486 d!138685))

(declare-fun b!1264555 () Bool)

(declare-fun e!720149 () Bool)

(declare-fun tp_is_empty!32449 () Bool)

(declare-fun tp!96231 () Bool)

(assert (=> b!1264555 (= e!720149 (and tp_is_empty!32449 tp!96231))))

(assert (=> b!1264487 (= tp!96222 e!720149)))

(assert (= (and b!1264487 (is-Cons!28456 (toList!9585 lm!212))) b!1264555))

(push 1)

(assert tp_is_empty!32449)

(assert (not b!1264550))

(assert (not b!1264536))

(assert (not b!1264555))

(assert (not d!138683))

(assert (not d!138677))

(assert (not b!1264534))

(assert (not b!1264515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

