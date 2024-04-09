; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72062 () Bool)

(assert start!72062)

(declare-fun b!836342 () Bool)

(declare-fun res!569100 () Bool)

(declare-fun e!466647 () Bool)

(assert (=> b!836342 (=> (not res!569100) (not e!466647))))

(declare-datatypes ((B!1200 0))(
  ( (B!1201 (val!7682 Int)) )
))
(declare-datatypes ((tuple2!10242 0))(
  ( (tuple2!10243 (_1!5131 (_ BitVec 64)) (_2!5131 B!1200)) )
))
(declare-datatypes ((List!16043 0))(
  ( (Nil!16040) (Cons!16039 (h!17170 tuple2!10242) (t!22422 List!16043)) )
))
(declare-fun l!390 () List!16043)

(assert (=> b!836342 (= res!569100 (is-Cons!16039 l!390))))

(declare-fun res!569099 () Bool)

(assert (=> start!72062 (=> (not res!569099) (not e!466647))))

(declare-fun isStrictlySorted!453 (List!16043) Bool)

(assert (=> start!72062 (= res!569099 (isStrictlySorted!453 l!390))))

(assert (=> start!72062 e!466647))

(declare-fun e!466648 () Bool)

(assert (=> start!72062 e!466648))

(declare-fun b!836345 () Bool)

(declare-fun tp_is_empty!15269 () Bool)

(declare-fun tp!47465 () Bool)

(assert (=> b!836345 (= e!466648 (and tp_is_empty!15269 tp!47465))))

(declare-fun b!836343 () Bool)

(declare-fun e!466649 () Bool)

(assert (=> b!836343 (= e!466647 e!466649)))

(declare-fun res!569101 () Bool)

(assert (=> b!836343 (=> res!569101 e!466649)))

(declare-datatypes ((List!16044 0))(
  ( (Nil!16041) (Cons!16040 (h!17171 (_ BitVec 64)) (t!22423 List!16044)) )
))
(declare-fun lt!380358 () List!16044)

(declare-fun isStrictlySortedLong!0 (List!16044) Bool)

(assert (=> b!836343 (= res!569101 (not (isStrictlySortedLong!0 lt!380358)))))

(declare-fun getKeysList!6 (List!16043) List!16044)

(assert (=> b!836343 (= lt!380358 (Cons!16040 (_1!5131 (h!17170 l!390)) (getKeysList!6 (t!22422 l!390))))))

(declare-fun b!836344 () Bool)

(declare-fun length!21 (List!16044) Int)

(declare-fun length!22 (List!16043) Int)

(assert (=> b!836344 (= e!466649 (not (= (length!21 lt!380358) (length!22 l!390))))))

(assert (= (and start!72062 res!569099) b!836342))

(assert (= (and b!836342 res!569100) b!836343))

(assert (= (and b!836343 (not res!569101)) b!836344))

(assert (= (and start!72062 (is-Cons!16039 l!390)) b!836345))

(declare-fun m!781683 () Bool)

(assert (=> start!72062 m!781683))

(declare-fun m!781685 () Bool)

(assert (=> b!836343 m!781685))

(declare-fun m!781687 () Bool)

(assert (=> b!836343 m!781687))

(declare-fun m!781689 () Bool)

(assert (=> b!836344 m!781689))

(declare-fun m!781691 () Bool)

(assert (=> b!836344 m!781691))

(push 1)

(assert (not b!836345))

(assert (not b!836344))

(assert (not start!72062))

(assert (not b!836343))

(assert tp_is_empty!15269)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107523 () Bool)

(declare-fun res!569120 () Bool)

(declare-fun e!466668 () Bool)

(assert (=> d!107523 (=> res!569120 e!466668)))

(assert (=> d!107523 (= res!569120 (or (is-Nil!16040 l!390) (is-Nil!16040 (t!22422 l!390))))))

(assert (=> d!107523 (= (isStrictlySorted!453 l!390) e!466668)))

(declare-fun b!836362 () Bool)

(declare-fun e!466669 () Bool)

(assert (=> b!836362 (= e!466668 e!466669)))

(declare-fun res!569121 () Bool)

(assert (=> b!836362 (=> (not res!569121) (not e!466669))))

(assert (=> b!836362 (= res!569121 (bvslt (_1!5131 (h!17170 l!390)) (_1!5131 (h!17170 (t!22422 l!390)))))))

(declare-fun b!836363 () Bool)

(assert (=> b!836363 (= e!466669 (isStrictlySorted!453 (t!22422 l!390)))))

(assert (= (and d!107523 (not res!569120)) b!836362))

(assert (= (and b!836362 res!569121) b!836363))

(declare-fun m!781705 () Bool)

(assert (=> b!836363 m!781705))

(assert (=> start!72062 d!107523))

(declare-fun d!107533 () Bool)

(declare-fun res!569136 () Bool)

(declare-fun e!466684 () Bool)

(assert (=> d!107533 (=> res!569136 e!466684)))

(assert (=> d!107533 (= res!569136 (or (is-Nil!16041 lt!380358) (is-Nil!16041 (t!22423 lt!380358))))))

(assert (=> d!107533 (= (isStrictlySortedLong!0 lt!380358) e!466684)))

(declare-fun b!836380 () Bool)

(declare-fun e!466685 () Bool)

(assert (=> b!836380 (= e!466684 e!466685)))

(declare-fun res!569137 () Bool)

(assert (=> b!836380 (=> (not res!569137) (not e!466685))))

(assert (=> b!836380 (= res!569137 (bvslt (h!17171 lt!380358) (h!17171 (t!22423 lt!380358))))))

(declare-fun b!836381 () Bool)

(assert (=> b!836381 (= e!466685 (isStrictlySortedLong!0 (t!22423 lt!380358)))))

(assert (= (and d!107533 (not res!569136)) b!836380))

(assert (= (and b!836380 res!569137) b!836381))

(declare-fun m!781711 () Bool)

(assert (=> b!836381 m!781711))

(assert (=> b!836343 d!107533))

(declare-fun d!107539 () Bool)

(declare-fun e!466709 () Bool)

(assert (=> d!107539 e!466709))

(declare-fun res!569146 () Bool)

(assert (=> d!107539 (=> (not res!569146) (not e!466709))))

(declare-fun lt!380367 () List!16044)

(assert (=> d!107539 (= res!569146 (isStrictlySortedLong!0 lt!380367))))

(declare-fun e!466708 () List!16044)

(assert (=> d!107539 (= lt!380367 e!466708)))

(declare-fun c!90973 () Bool)

(assert (=> d!107539 (= c!90973 (is-Cons!16039 (t!22422 l!390)))))

(assert (=> d!107539 (isStrictlySorted!453 (t!22422 l!390))))

(assert (=> d!107539 (= (getKeysList!6 (t!22422 l!390)) lt!380367)))

(declare-fun b!836416 () Bool)

(assert (=> b!836416 (= e!466708 (Cons!16040 (_1!5131 (h!17170 (t!22422 l!390))) (getKeysList!6 (t!22422 (t!22422 l!390)))))))

(declare-fun b!836417 () Bool)

(assert (=> b!836417 (= e!466708 Nil!16041)))

(declare-fun b!836418 () Bool)

(assert (=> b!836418 (= e!466709 (= (length!21 lt!380367) (length!22 (t!22422 l!390))))))

(assert (= (and d!107539 c!90973) b!836416))

(assert (= (and d!107539 (not c!90973)) b!836417))

(assert (= (and d!107539 res!569146) b!836418))

(declare-fun m!781729 () Bool)

(assert (=> d!107539 m!781729))

(assert (=> d!107539 m!781705))

(declare-fun m!781731 () Bool)

(assert (=> b!836416 m!781731))

(declare-fun m!781733 () Bool)

(assert (=> b!836418 m!781733))

(declare-fun m!781735 () Bool)

(assert (=> b!836418 m!781735))

(assert (=> b!836343 d!107539))

(declare-fun d!107541 () Bool)

(declare-fun size!22878 (List!16044) Int)

(assert (=> d!107541 (= (length!21 lt!380358) (size!22878 lt!380358))))

(declare-fun bs!23481 () Bool)

(assert (= bs!23481 d!107541))

(declare-fun m!781737 () Bool)

(assert (=> bs!23481 m!781737))

(assert (=> b!836344 d!107541))

(declare-fun d!107543 () Bool)

(declare-fun size!22879 (List!16043) Int)

(assert (=> d!107543 (= (length!22 l!390) (size!22879 l!390))))

(declare-fun bs!23482 () Bool)

(assert (= bs!23482 d!107543))

(declare-fun m!781739 () Bool)

(assert (=> bs!23482 m!781739))

(assert (=> b!836344 d!107543))

(declare-fun b!836423 () Bool)

(declare-fun e!466712 () Bool)

(declare-fun tp!47474 () Bool)

(assert (=> b!836423 (= e!466712 (and tp_is_empty!15269 tp!47474))))

(assert (=> b!836345 (= tp!47465 e!466712)))

(assert (= (and b!836345 (is-Cons!16039 (t!22422 l!390))) b!836423))

(push 1)

(assert (not d!107543))

(assert (not d!107541))

(assert (not b!836363))

(assert (not b!836418))

(assert (not d!107539))

(assert (not b!836423))

(assert tp_is_empty!15269)

(assert (not b!836416))

(assert (not b!836381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107577 () Bool)

(declare-fun res!569161 () Bool)

(declare-fun e!466743 () Bool)

(assert (=> d!107577 (=> res!569161 e!466743)))

(assert (=> d!107577 (= res!569161 (or (is-Nil!16040 (t!22422 l!390)) (is-Nil!16040 (t!22422 (t!22422 l!390)))))))

(assert (=> d!107577 (= (isStrictlySorted!453 (t!22422 l!390)) e!466743)))

(declare-fun b!836468 () Bool)

(declare-fun e!466744 () Bool)

(assert (=> b!836468 (= e!466743 e!466744)))

(declare-fun res!569162 () Bool)

(assert (=> b!836468 (=> (not res!569162) (not e!466744))))

(assert (=> b!836468 (= res!569162 (bvslt (_1!5131 (h!17170 (t!22422 l!390))) (_1!5131 (h!17170 (t!22422 (t!22422 l!390))))))))

(declare-fun b!836469 () Bool)

(assert (=> b!836469 (= e!466744 (isStrictlySorted!453 (t!22422 (t!22422 l!390))))))

(assert (= (and d!107577 (not res!569161)) b!836468))

(assert (= (and b!836468 res!569162) b!836469))

(declare-fun m!781781 () Bool)

(assert (=> b!836469 m!781781))

(assert (=> b!836363 d!107577))

(declare-fun d!107579 () Bool)

(declare-fun lt!380384 () Int)

(assert (=> d!107579 (>= lt!380384 0)))

(declare-fun e!466747 () Int)

(assert (=> d!107579 (= lt!380384 e!466747)))

(declare-fun c!90990 () Bool)

(assert (=> d!107579 (= c!90990 (is-Nil!16041 lt!380358))))

(assert (=> d!107579 (= (size!22878 lt!380358) lt!380384)))

(declare-fun b!836474 () Bool)

(assert (=> b!836474 (= e!466747 0)))

(declare-fun b!836475 () Bool)

(assert (=> b!836475 (= e!466747 (+ 1 (size!22878 (t!22423 lt!380358))))))

(assert (= (and d!107579 c!90990) b!836474))

(assert (= (and d!107579 (not c!90990)) b!836475))

(declare-fun m!781783 () Bool)

(assert (=> b!836475 m!781783))

(assert (=> d!107541 d!107579))

(declare-fun d!107581 () Bool)

(assert (=> d!107581 (= (length!21 lt!380367) (size!22878 lt!380367))))

(declare-fun bs!23487 () Bool)

(assert (= bs!23487 d!107581))

(declare-fun m!781785 () Bool)

(assert (=> bs!23487 m!781785))

(assert (=> b!836418 d!107581))

(declare-fun d!107583 () Bool)

(assert (=> d!107583 (= (length!22 (t!22422 l!390)) (size!22879 (t!22422 l!390)))))

(declare-fun bs!23488 () Bool)

(assert (= bs!23488 d!107583))

(declare-fun m!781787 () Bool)

(assert (=> bs!23488 m!781787))

(assert (=> b!836418 d!107583))

(declare-fun d!107585 () Bool)

(declare-fun res!569163 () Bool)

(declare-fun e!466748 () Bool)

(assert (=> d!107585 (=> res!569163 e!466748)))

(assert (=> d!107585 (= res!569163 (or (is-Nil!16041 (t!22423 lt!380358)) (is-Nil!16041 (t!22423 (t!22423 lt!380358)))))))

(assert (=> d!107585 (= (isStrictlySortedLong!0 (t!22423 lt!380358)) e!466748)))

(declare-fun b!836476 () Bool)

(declare-fun e!466749 () Bool)

(assert (=> b!836476 (= e!466748 e!466749)))

(declare-fun res!569164 () Bool)

(assert (=> b!836476 (=> (not res!569164) (not e!466749))))

(assert (=> b!836476 (= res!569164 (bvslt (h!17171 (t!22423 lt!380358)) (h!17171 (t!22423 (t!22423 lt!380358)))))))

(declare-fun b!836477 () Bool)

(assert (=> b!836477 (= e!466749 (isStrictlySortedLong!0 (t!22423 (t!22423 lt!380358))))))

(assert (= (and d!107585 (not res!569163)) b!836476))

(assert (= (and b!836476 res!569164) b!836477))

(declare-fun m!781789 () Bool)

(assert (=> b!836477 m!781789))

(assert (=> b!836381 d!107585))

(declare-fun d!107587 () Bool)

(declare-fun e!466751 () Bool)

(assert (=> d!107587 e!466751))

(declare-fun res!569165 () Bool)

(assert (=> d!107587 (=> (not res!569165) (not e!466751))))

(declare-fun lt!380385 () List!16044)

(assert (=> d!107587 (= res!569165 (isStrictlySortedLong!0 lt!380385))))

(declare-fun e!466750 () List!16044)

(assert (=> d!107587 (= lt!380385 e!466750)))

(declare-fun c!90991 () Bool)

(assert (=> d!107587 (= c!90991 (is-Cons!16039 (t!22422 (t!22422 l!390))))))

(assert (=> d!107587 (isStrictlySorted!453 (t!22422 (t!22422 l!390)))))

(assert (=> d!107587 (= (getKeysList!6 (t!22422 (t!22422 l!390))) lt!380385)))

(declare-fun b!836478 () Bool)

(assert (=> b!836478 (= e!466750 (Cons!16040 (_1!5131 (h!17170 (t!22422 (t!22422 l!390)))) (getKeysList!6 (t!22422 (t!22422 (t!22422 l!390))))))))

(declare-fun b!836479 () Bool)

(assert (=> b!836479 (= e!466750 Nil!16041)))

(declare-fun b!836480 () Bool)

(assert (=> b!836480 (= e!466751 (= (length!21 lt!380385) (length!22 (t!22422 (t!22422 l!390)))))))

(assert (= (and d!107587 c!90991) b!836478))

(assert (= (and d!107587 (not c!90991)) b!836479))

