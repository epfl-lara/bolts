; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2232 () Bool)

(assert start!2232)

(declare-fun res!11443 () Bool)

(declare-fun e!9000 () Bool)

(assert (=> start!2232 (=> (not res!11443) (not e!9000))))

(declare-datatypes ((B!574 0))(
  ( (B!575 (val!385 Int)) )
))
(declare-datatypes ((tuple2!552 0))(
  ( (tuple2!553 (_1!276 (_ BitVec 64)) (_2!276 B!574)) )
))
(declare-datatypes ((List!435 0))(
  ( (Nil!432) (Cons!431 (h!997 tuple2!552) (t!2837 List!435)) )
))
(declare-datatypes ((ListLongMap!383 0))(
  ( (ListLongMap!384 (toList!207 List!435)) )
))
(declare-fun thiss!177 () ListLongMap!383)

(declare-fun size!496 (List!435) Int)

(assert (=> start!2232 (= res!11443 (< (size!496 (toList!207 thiss!177)) 2147483647))))

(assert (=> start!2232 e!9000))

(declare-fun e!9001 () Bool)

(declare-fun inv!737 (ListLongMap!383) Bool)

(assert (=> start!2232 (and (inv!737 thiss!177) e!9001)))

(declare-fun b!14944 () Bool)

(declare-fun isStrictlySorted!126 (List!435) Bool)

(assert (=> b!14944 (= e!9000 (not (isStrictlySorted!126 (toList!207 thiss!177))))))

(declare-fun b!14945 () Bool)

(declare-fun tp!2411 () Bool)

(assert (=> b!14945 (= e!9001 tp!2411)))

(assert (= (and start!2232 res!11443) b!14944))

(assert (= start!2232 b!14945))

(declare-fun m!9943 () Bool)

(assert (=> start!2232 m!9943))

(declare-fun m!9945 () Bool)

(assert (=> start!2232 m!9945))

(declare-fun m!9947 () Bool)

(assert (=> b!14944 m!9947))

(check-sat (not start!2232) (not b!14944) (not b!14945))
(check-sat)
(get-model)

(declare-fun d!2433 () Bool)

(declare-fun lt!3642 () Int)

(assert (=> d!2433 (>= lt!3642 0)))

(declare-fun e!9017 () Int)

(assert (=> d!2433 (= lt!3642 e!9017)))

(declare-fun c!1415 () Bool)

(get-info :version)

(assert (=> d!2433 (= c!1415 ((_ is Nil!432) (toList!207 thiss!177)))))

(assert (=> d!2433 (= (size!496 (toList!207 thiss!177)) lt!3642)))

(declare-fun b!14966 () Bool)

(assert (=> b!14966 (= e!9017 0)))

(declare-fun b!14967 () Bool)

(assert (=> b!14967 (= e!9017 (+ 1 (size!496 (t!2837 (toList!207 thiss!177)))))))

(assert (= (and d!2433 c!1415) b!14966))

(assert (= (and d!2433 (not c!1415)) b!14967))

(declare-fun m!9957 () Bool)

(assert (=> b!14967 m!9957))

(assert (=> start!2232 d!2433))

(declare-fun d!2441 () Bool)

(assert (=> d!2441 (= (inv!737 thiss!177) (isStrictlySorted!126 (toList!207 thiss!177)))))

(declare-fun bs!612 () Bool)

(assert (= bs!612 d!2441))

(assert (=> bs!612 m!9947))

(assert (=> start!2232 d!2441))

(declare-fun d!2447 () Bool)

(declare-fun res!11463 () Bool)

(declare-fun e!9039 () Bool)

(assert (=> d!2447 (=> res!11463 e!9039)))

(assert (=> d!2447 (= res!11463 (or ((_ is Nil!432) (toList!207 thiss!177)) ((_ is Nil!432) (t!2837 (toList!207 thiss!177)))))))

(assert (=> d!2447 (= (isStrictlySorted!126 (toList!207 thiss!177)) e!9039)))

(declare-fun b!14996 () Bool)

(declare-fun e!9040 () Bool)

(assert (=> b!14996 (= e!9039 e!9040)))

(declare-fun res!11464 () Bool)

(assert (=> b!14996 (=> (not res!11464) (not e!9040))))

(assert (=> b!14996 (= res!11464 (bvslt (_1!276 (h!997 (toList!207 thiss!177))) (_1!276 (h!997 (t!2837 (toList!207 thiss!177))))))))

(declare-fun b!14997 () Bool)

(assert (=> b!14997 (= e!9040 (isStrictlySorted!126 (t!2837 (toList!207 thiss!177))))))

(assert (= (and d!2447 (not res!11463)) b!14996))

(assert (= (and b!14996 res!11464) b!14997))

(declare-fun m!9965 () Bool)

(assert (=> b!14997 m!9965))

(assert (=> b!14944 d!2447))

(declare-fun b!15002 () Bool)

(declare-fun e!9043 () Bool)

(declare-fun tp_is_empty!755 () Bool)

(declare-fun tp!2423 () Bool)

(assert (=> b!15002 (= e!9043 (and tp_is_empty!755 tp!2423))))

(assert (=> b!14945 (= tp!2411 e!9043)))

(assert (= (and b!14945 ((_ is Cons!431) (toList!207 thiss!177))) b!15002))

(check-sat (not d!2441) (not b!14997) tp_is_empty!755 (not b!15002) (not b!14967))
(check-sat)
