; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75058 () Bool)

(assert start!75058)

(declare-datatypes ((B!1228 0))(
  ( (B!1229 (val!8920 Int)) )
))
(declare-datatypes ((tuple2!11860 0))(
  ( (tuple2!11861 (_1!5940 (_ BitVec 64)) (_2!5940 B!1228)) )
))
(declare-datatypes ((List!17720 0))(
  ( (Nil!17717) (Cons!17716 (h!18847 tuple2!11860) (t!25005 List!17720)) )
))
(declare-datatypes ((ListLongMap!10643 0))(
  ( (ListLongMap!10644 (toList!5337 List!17720)) )
))
(declare-fun lm!210 () ListLongMap!10643)

(declare-fun isStrictlySorted!459 (List!17720) Bool)

(assert (=> start!75058 (not (isStrictlySorted!459 (toList!5337 lm!210)))))

(declare-fun e!492458 () Bool)

(declare-fun inv!29362 (ListLongMap!10643) Bool)

(assert (=> start!75058 (and (inv!29362 lm!210) e!492458)))

(declare-fun b!884830 () Bool)

(declare-fun tp!54198 () Bool)

(assert (=> b!884830 (= e!492458 tp!54198)))

(assert (= start!75058 b!884830))

(declare-fun m!825195 () Bool)

(assert (=> start!75058 m!825195))

(declare-fun m!825197 () Bool)

(assert (=> start!75058 m!825197))

(check-sat (not start!75058) (not b!884830))
(check-sat)
(get-model)

(declare-fun d!109215 () Bool)

(declare-fun res!601184 () Bool)

(declare-fun e!492476 () Bool)

(assert (=> d!109215 (=> res!601184 e!492476)))

(get-info :version)

(assert (=> d!109215 (= res!601184 (or ((_ is Nil!17717) (toList!5337 lm!210)) ((_ is Nil!17717) (t!25005 (toList!5337 lm!210)))))))

(assert (=> d!109215 (= (isStrictlySorted!459 (toList!5337 lm!210)) e!492476)))

(declare-fun b!884848 () Bool)

(declare-fun e!492477 () Bool)

(assert (=> b!884848 (= e!492476 e!492477)))

(declare-fun res!601185 () Bool)

(assert (=> b!884848 (=> (not res!601185) (not e!492477))))

(assert (=> b!884848 (= res!601185 (bvslt (_1!5940 (h!18847 (toList!5337 lm!210))) (_1!5940 (h!18847 (t!25005 (toList!5337 lm!210))))))))

(declare-fun b!884849 () Bool)

(assert (=> b!884849 (= e!492477 (isStrictlySorted!459 (t!25005 (toList!5337 lm!210))))))

(assert (= (and d!109215 (not res!601184)) b!884848))

(assert (= (and b!884848 res!601185) b!884849))

(declare-fun m!825205 () Bool)

(assert (=> b!884849 m!825205))

(assert (=> start!75058 d!109215))

(declare-fun d!109223 () Bool)

(assert (=> d!109223 (= (inv!29362 lm!210) (isStrictlySorted!459 (toList!5337 lm!210)))))

(declare-fun bs!24794 () Bool)

(assert (= bs!24794 d!109223))

(assert (=> bs!24794 m!825195))

(assert (=> start!75058 d!109223))

(declare-fun b!884863 () Bool)

(declare-fun e!492485 () Bool)

(declare-fun tp_is_empty!17738 () Bool)

(declare-fun tp!54207 () Bool)

(assert (=> b!884863 (= e!492485 (and tp_is_empty!17738 tp!54207))))

(assert (=> b!884830 (= tp!54198 e!492485)))

(assert (= (and b!884830 ((_ is Cons!17716) (toList!5337 lm!210))) b!884863))

(check-sat (not d!109223) (not b!884849) (not b!884863) tp_is_empty!17738)
(check-sat)
