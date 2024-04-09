; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106844 () Bool)

(assert start!106844)

(declare-fun b!1267449 () Bool)

(declare-fun res!843802 () Bool)

(declare-fun e!722070 () Bool)

(assert (=> b!1267449 (=> (not res!843802) (not e!722070))))

(declare-datatypes ((B!2088 0))(
  ( (B!2089 (val!16379 Int)) )
))
(declare-datatypes ((tuple2!21426 0))(
  ( (tuple2!21427 (_1!10723 (_ BitVec 64)) (_2!10723 B!2088)) )
))
(declare-datatypes ((List!28546 0))(
  ( (Nil!28543) (Cons!28542 (h!29751 tuple2!21426) (t!42080 List!28546)) )
))
(declare-fun l!874 () List!28546)

(assert (=> b!1267449 (= res!843802 (is-Cons!28542 l!874))))

(declare-fun b!1267450 () Bool)

(declare-fun ListPrimitiveSize!162 (List!28546) Int)

(assert (=> b!1267450 (= e!722070 (>= (ListPrimitiveSize!162 (t!42080 l!874)) (ListPrimitiveSize!162 l!874)))))

(declare-fun res!843798 () Bool)

(assert (=> start!106844 (=> (not res!843798) (not e!722070))))

(declare-fun isStrictlySorted!824 (List!28546) Bool)

(assert (=> start!106844 (= res!843798 (isStrictlySorted!824 l!874))))

(assert (=> start!106844 e!722070))

(declare-fun e!722071 () Bool)

(assert (=> start!106844 e!722071))

(assert (=> start!106844 true))

(declare-fun b!1267451 () Bool)

(declare-fun tp_is_empty!32609 () Bool)

(declare-fun tp!96630 () Bool)

(assert (=> b!1267451 (= e!722071 (and tp_is_empty!32609 tp!96630))))

(declare-fun b!1267452 () Bool)

(declare-fun res!843801 () Bool)

(assert (=> b!1267452 (=> (not res!843801) (not e!722070))))

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!685 (List!28546 (_ BitVec 64)) Bool)

(assert (=> b!1267452 (= res!843801 (not (containsKey!685 (t!42080 l!874) key!235)))))

(declare-fun b!1267453 () Bool)

(declare-fun res!843800 () Bool)

(assert (=> b!1267453 (=> (not res!843800) (not e!722070))))

(assert (=> b!1267453 (= res!843800 (isStrictlySorted!824 (t!42080 l!874)))))

(declare-fun b!1267454 () Bool)

(declare-fun res!843799 () Bool)

(assert (=> b!1267454 (=> (not res!843799) (not e!722070))))

(assert (=> b!1267454 (= res!843799 (not (containsKey!685 l!874 key!235)))))

(assert (= (and start!106844 res!843798) b!1267454))

(assert (= (and b!1267454 res!843799) b!1267449))

(assert (= (and b!1267449 res!843802) b!1267453))

(assert (= (and b!1267453 res!843800) b!1267452))

(assert (= (and b!1267452 res!843801) b!1267450))

(assert (= (and start!106844 (is-Cons!28542 l!874)) b!1267451))

(declare-fun m!1166727 () Bool)

(assert (=> start!106844 m!1166727))

(declare-fun m!1166729 () Bool)

(assert (=> b!1267450 m!1166729))

(declare-fun m!1166731 () Bool)

(assert (=> b!1267450 m!1166731))

(declare-fun m!1166733 () Bool)

(assert (=> b!1267452 m!1166733))

(declare-fun m!1166735 () Bool)

(assert (=> b!1267453 m!1166735))

(declare-fun m!1166737 () Bool)

(assert (=> b!1267454 m!1166737))

(push 1)

(assert (not b!1267451))

(assert (not b!1267453))

(assert (not b!1267450))

(assert (not start!106844))

(assert (not b!1267452))

(assert (not b!1267454))

(assert tp_is_empty!32609)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139409 () Bool)

(declare-fun res!843819 () Bool)

(declare-fun e!722088 () Bool)

(assert (=> d!139409 (=> res!843819 e!722088)))

(assert (=> d!139409 (= res!843819 (and (is-Cons!28542 l!874) (= (_1!10723 (h!29751 l!874)) key!235)))))

(assert (=> d!139409 (= (containsKey!685 l!874 key!235) e!722088)))

(declare-fun b!1267471 () Bool)

(declare-fun e!722089 () Bool)

(assert (=> b!1267471 (= e!722088 e!722089)))

(declare-fun res!843820 () Bool)

(assert (=> b!1267471 (=> (not res!843820) (not e!722089))))

(assert (=> b!1267471 (= res!843820 (and (or (not (is-Cons!28542 l!874)) (bvsle (_1!10723 (h!29751 l!874)) key!235)) (is-Cons!28542 l!874) (bvslt (_1!10723 (h!29751 l!874)) key!235)))))

(declare-fun b!1267472 () Bool)

(assert (=> b!1267472 (= e!722089 (containsKey!685 (t!42080 l!874) key!235))))

(assert (= (and d!139409 (not res!843819)) b!1267471))

(assert (= (and b!1267471 res!843820) b!1267472))

(assert (=> b!1267472 m!1166733))

(assert (=> b!1267454 d!139409))

(declare-fun d!139415 () Bool)

(declare-fun res!843837 () Bool)

(declare-fun e!722109 () Bool)

(assert (=> d!139415 (=> res!843837 e!722109)))

(assert (=> d!139415 (= res!843837 (or (is-Nil!28543 (t!42080 l!874)) (is-Nil!28543 (t!42080 (t!42080 l!874)))))))

(assert (=> d!139415 (= (isStrictlySorted!824 (t!42080 l!874)) e!722109)))

(declare-fun b!1267495 () Bool)

(declare-fun e!722110 () Bool)

(assert (=> b!1267495 (= e!722109 e!722110)))

(declare-fun res!843838 () Bool)

(assert (=> b!1267495 (=> (not res!843838) (not e!722110))))

(assert (=> b!1267495 (= res!843838 (bvslt (_1!10723 (h!29751 (t!42080 l!874))) (_1!10723 (h!29751 (t!42080 (t!42080 l!874))))))))

(declare-fun b!1267496 () Bool)

(assert (=> b!1267496 (= e!722110 (isStrictlySorted!824 (t!42080 (t!42080 l!874))))))

(assert (= (and d!139415 (not res!843837)) b!1267495))

(assert (= (and b!1267495 res!843838) b!1267496))

(declare-fun m!1166747 () Bool)

(assert (=> b!1267496 m!1166747))

(assert (=> b!1267453 d!139415))

(declare-fun d!139427 () Bool)

(declare-fun res!843839 () Bool)

(declare-fun e!722112 () Bool)

(assert (=> d!139427 (=> res!843839 e!722112)))

(assert (=> d!139427 (= res!843839 (or (is-Nil!28543 l!874) (is-Nil!28543 (t!42080 l!874))))))

(assert (=> d!139427 (= (isStrictlySorted!824 l!874) e!722112)))

(declare-fun b!1267499 () Bool)

(declare-fun e!722113 () Bool)

(assert (=> b!1267499 (= e!722112 e!722113)))

(declare-fun res!843840 () Bool)

(assert (=> b!1267499 (=> (not res!843840) (not e!722113))))

(assert (=> b!1267499 (= res!843840 (bvslt (_1!10723 (h!29751 l!874)) (_1!10723 (h!29751 (t!42080 l!874)))))))

(declare-fun b!1267500 () Bool)

(assert (=> b!1267500 (= e!722113 (isStrictlySorted!824 (t!42080 l!874)))))

(assert (= (and d!139427 (not res!843839)) b!1267499))

(assert (= (and b!1267499 res!843840) b!1267500))

(assert (=> b!1267500 m!1166735))

(assert (=> start!106844 d!139427))

(declare-fun d!139431 () Bool)

(declare-fun res!843841 () Bool)

(declare-fun e!722114 () Bool)

(assert (=> d!139431 (=> res!843841 e!722114)))

(assert (=> d!139431 (= res!843841 (and (is-Cons!28542 (t!42080 l!874)) (= (_1!10723 (h!29751 (t!42080 l!874))) key!235)))))

(assert (=> d!139431 (= (containsKey!685 (t!42080 l!874) key!235) e!722114)))

(declare-fun b!1267501 () Bool)

(declare-fun e!722115 () Bool)

(assert (=> b!1267501 (= e!722114 e!722115)))

(declare-fun res!843842 () Bool)

(assert (=> b!1267501 (=> (not res!843842) (not e!722115))))

(assert (=> b!1267501 (= res!843842 (and (or (not (is-Cons!28542 (t!42080 l!874))) (bvsle (_1!10723 (h!29751 (t!42080 l!874))) key!235)) (is-Cons!28542 (t!42080 l!874)) (bvslt (_1!10723 (h!29751 (t!42080 l!874))) key!235)))))

(declare-fun b!1267502 () Bool)

(assert (=> b!1267502 (= e!722115 (containsKey!685 (t!42080 (t!42080 l!874)) key!235))))

(assert (= (and d!139431 (not res!843841)) b!1267501))

(assert (= (and b!1267501 res!843842) b!1267502))

(declare-fun m!1166749 () Bool)

(assert (=> b!1267502 m!1166749))

(assert (=> b!1267452 d!139431))

(declare-fun d!139433 () Bool)

(declare-fun lt!574276 () Int)

(assert (=> d!139433 (>= lt!574276 0)))

(declare-fun e!722130 () Int)

(assert (=> d!139433 (= lt!574276 e!722130)))

(declare-fun c!123516 () Bool)

(assert (=> d!139433 (= c!123516 (is-Nil!28543 (t!42080 l!874)))))

(assert (=> d!139433 (= (ListPrimitiveSize!162 (t!42080 l!874)) lt!574276)))

(declare-fun b!1267525 () Bool)

(assert (=> b!1267525 (= e!722130 0)))

(declare-fun b!1267526 () Bool)

(assert (=> b!1267526 (= e!722130 (+ 1 (ListPrimitiveSize!162 (t!42080 (t!42080 l!874)))))))

(assert (= (and d!139433 c!123516) b!1267525))

(assert (= (and d!139433 (not c!123516)) b!1267526))

(declare-fun m!1166753 () Bool)

(assert (=> b!1267526 m!1166753))

(assert (=> b!1267450 d!139433))

(declare-fun d!139439 () Bool)

(declare-fun lt!574277 () Int)

(assert (=> d!139439 (>= lt!574277 0)))

(declare-fun e!722133 () Int)

(assert (=> d!139439 (= lt!574277 e!722133)))

(declare-fun c!123517 () Bool)

(assert (=> d!139439 (= c!123517 (is-Nil!28543 l!874))))

(assert (=> d!139439 (= (ListPrimitiveSize!162 l!874) lt!574277)))

(declare-fun b!1267529 () Bool)

(assert (=> b!1267529 (= e!722133 0)))

(declare-fun b!1267530 () Bool)

(assert (=> b!1267530 (= e!722133 (+ 1 (ListPrimitiveSize!162 (t!42080 l!874))))))

(assert (= (and d!139439 c!123517) b!1267529))

(assert (= (and d!139439 (not c!123517)) b!1267530))

(assert (=> b!1267530 m!1166729))

(assert (=> b!1267450 d!139439))

(declare-fun b!1267541 () Bool)

(declare-fun e!722140 () Bool)

(declare-fun tp!96639 () Bool)

(assert (=> b!1267541 (= e!722140 (and tp_is_empty!32609 tp!96639))))

(assert (=> b!1267451 (= tp!96630 e!722140)))

(assert (= (and b!1267451 (is-Cons!28542 (t!42080 l!874))) b!1267541))

(push 1)

