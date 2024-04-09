; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72108 () Bool)

(assert start!72108)

(declare-fun b!836510 () Bool)

(declare-fun res!569185 () Bool)

(declare-fun e!466775 () Bool)

(assert (=> b!836510 (=> (not res!569185) (not e!466775))))

(declare-datatypes ((B!1204 0))(
  ( (B!1205 (val!7684 Int)) )
))
(declare-datatypes ((tuple2!10246 0))(
  ( (tuple2!10247 (_1!5133 (_ BitVec 64)) (_2!5133 B!1204)) )
))
(declare-datatypes ((List!16047 0))(
  ( (Nil!16044) (Cons!16043 (h!17174 tuple2!10246) (t!22426 List!16047)) )
))
(declare-fun l!390 () List!16047)

(get-info :version)

(assert (=> b!836510 (= res!569185 (not ((_ is Cons!16043) l!390)))))

(declare-fun b!836513 () Bool)

(declare-fun e!466773 () Bool)

(declare-fun tp_is_empty!15273 () Bool)

(declare-fun tp!47483 () Bool)

(assert (=> b!836513 (= e!466773 (and tp_is_empty!15273 tp!47483))))

(declare-fun b!836511 () Bool)

(declare-fun e!466774 () Bool)

(assert (=> b!836511 (= e!466775 e!466774)))

(declare-fun res!569183 () Bool)

(assert (=> b!836511 (=> res!569183 e!466774)))

(assert (=> b!836511 (= res!569183 false)))

(declare-fun b!836512 () Bool)

(declare-datatypes ((List!16048 0))(
  ( (Nil!16045) (Cons!16044 (h!17175 (_ BitVec 64)) (t!22427 List!16048)) )
))
(declare-fun length!25 (List!16048) Int)

(declare-fun length!26 (List!16047) Int)

(assert (=> b!836512 (= e!466774 (not (= (length!25 Nil!16045) (length!26 l!390))))))

(declare-fun res!569184 () Bool)

(assert (=> start!72108 (=> (not res!569184) (not e!466775))))

(declare-fun isStrictlySorted!455 (List!16047) Bool)

(assert (=> start!72108 (= res!569184 (isStrictlySorted!455 l!390))))

(assert (=> start!72108 e!466775))

(assert (=> start!72108 e!466773))

(assert (= (and start!72108 res!569184) b!836510))

(assert (= (and b!836510 res!569185) b!836511))

(assert (= (and b!836511 (not res!569183)) b!836512))

(assert (= (and start!72108 ((_ is Cons!16043) l!390)) b!836513))

(declare-fun m!781807 () Bool)

(assert (=> b!836512 m!781807))

(declare-fun m!781809 () Bool)

(assert (=> b!836512 m!781809))

(declare-fun m!781811 () Bool)

(assert (=> start!72108 m!781811))

(check-sat (not start!72108) (not b!836512) (not b!836513) tp_is_empty!15273)
(check-sat)
(get-model)

(declare-fun d!107595 () Bool)

(declare-fun res!569209 () Bool)

(declare-fun e!466799 () Bool)

(assert (=> d!107595 (=> res!569209 e!466799)))

(assert (=> d!107595 (= res!569209 (or ((_ is Nil!16044) l!390) ((_ is Nil!16044) (t!22426 l!390))))))

(assert (=> d!107595 (= (isStrictlySorted!455 l!390) e!466799)))

(declare-fun b!836540 () Bool)

(declare-fun e!466800 () Bool)

(assert (=> b!836540 (= e!466799 e!466800)))

(declare-fun res!569210 () Bool)

(assert (=> b!836540 (=> (not res!569210) (not e!466800))))

(assert (=> b!836540 (= res!569210 (bvslt (_1!5133 (h!17174 l!390)) (_1!5133 (h!17174 (t!22426 l!390)))))))

(declare-fun b!836541 () Bool)

(assert (=> b!836541 (= e!466800 (isStrictlySorted!455 (t!22426 l!390)))))

(assert (= (and d!107595 (not res!569209)) b!836540))

(assert (= (and b!836540 res!569210) b!836541))

(declare-fun m!781821 () Bool)

(assert (=> b!836541 m!781821))

(assert (=> start!72108 d!107595))

(declare-fun d!107603 () Bool)

(declare-fun size!22882 (List!16048) Int)

(assert (=> d!107603 (= (length!25 Nil!16045) (size!22882 Nil!16045))))

(declare-fun bs!23494 () Bool)

(assert (= bs!23494 d!107603))

(declare-fun m!781827 () Bool)

(assert (=> bs!23494 m!781827))

(assert (=> b!836512 d!107603))

(declare-fun d!107607 () Bool)

(declare-fun size!22883 (List!16047) Int)

(assert (=> d!107607 (= (length!26 l!390) (size!22883 l!390))))

(declare-fun bs!23495 () Bool)

(assert (= bs!23495 d!107607))

(declare-fun m!781831 () Bool)

(assert (=> bs!23495 m!781831))

(assert (=> b!836512 d!107607))

(declare-fun b!836553 () Bool)

(declare-fun e!466808 () Bool)

(declare-fun tp!47492 () Bool)

(assert (=> b!836553 (= e!466808 (and tp_is_empty!15273 tp!47492))))

(assert (=> b!836513 (= tp!47483 e!466808)))

(assert (= (and b!836513 ((_ is Cons!16043) (t!22426 l!390))) b!836553))

(check-sat tp_is_empty!15273 (not b!836541) (not b!836553) (not d!107607) (not d!107603))
(check-sat)
(get-model)

(declare-fun d!107621 () Bool)

(declare-fun lt!380400 () Int)

(assert (=> d!107621 (>= lt!380400 0)))

(declare-fun e!466826 () Int)

(assert (=> d!107621 (= lt!380400 e!466826)))

(declare-fun c!91006 () Bool)

(assert (=> d!107621 (= c!91006 ((_ is Nil!16044) l!390))))

(assert (=> d!107621 (= (size!22883 l!390) lt!380400)))

(declare-fun b!836584 () Bool)

(assert (=> b!836584 (= e!466826 0)))

(declare-fun b!836585 () Bool)

