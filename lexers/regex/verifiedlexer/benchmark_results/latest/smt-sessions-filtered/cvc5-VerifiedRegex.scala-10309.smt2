; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536076 () Bool)

(assert start!536076)

(declare-fun res!2166104 () Bool)

(declare-fun e!3173428 () Bool)

(assert (=> start!536076 (=> (not res!2166104) (not e!3173428))))

(declare-fun i!589 () Int)

(assert (=> start!536076 (= res!2166104 (<= 0 i!589))))

(assert (=> start!536076 e!3173428))

(assert (=> start!536076 true))

(declare-datatypes ((T!105410 0))(
  ( (T!105411 (val!23693 Int)) )
))
(declare-datatypes ((List!58618 0))(
  ( (Nil!58494) (Cons!58494 (h!64942 T!105410) (t!371483 List!58618)) )
))
(declare-datatypes ((IArray!31279 0))(
  ( (IArray!31280 (innerList!15697 List!58618)) )
))
(declare-datatypes ((Conc!15609 0))(
  ( (Node!15609 (left!42886 Conc!15609) (right!43216 Conc!15609) (csize!31448 Int) (cheight!15820 Int)) (Leaf!25919 (xs!18991 IArray!31279) (csize!31449 Int)) (Empty!15609) )
))
(declare-datatypes ((BalanceConc!30408 0))(
  ( (BalanceConc!30409 (c!874283 Conc!15609)) )
))
(declare-fun thiss!5775 () BalanceConc!30408)

(declare-fun e!3173427 () Bool)

(declare-fun inv!77797 (BalanceConc!30408) Bool)

(assert (=> start!536076 (and (inv!77797 thiss!5775) e!3173427)))

(declare-fun b!5088247 () Bool)

(declare-fun res!2166103 () Bool)

(assert (=> b!5088247 (=> (not res!2166103) (not e!3173428))))

(declare-fun size!39154 (BalanceConc!30408) Int)

(assert (=> b!5088247 (= res!2166103 (< i!589 (size!39154 thiss!5775)))))

(declare-fun b!5088248 () Bool)

(declare-fun size!39155 (List!58618) Int)

(declare-fun list!19053 (BalanceConc!30408) List!58618)

(assert (=> b!5088248 (= e!3173428 (>= i!589 (size!39155 (list!19053 thiss!5775))))))

(declare-fun lt!2092045 () T!105410)

(declare-fun apply!14235 (Conc!15609 Int) T!105410)

(assert (=> b!5088248 (= lt!2092045 (apply!14235 (c!874283 thiss!5775) i!589))))

(declare-fun b!5088249 () Bool)

(declare-fun tp!1418540 () Bool)

(declare-fun inv!77798 (Conc!15609) Bool)

(assert (=> b!5088249 (= e!3173427 (and (inv!77798 (c!874283 thiss!5775)) tp!1418540))))

(assert (= (and start!536076 res!2166104) b!5088247))

(assert (= (and b!5088247 res!2166103) b!5088248))

(assert (= start!536076 b!5088249))

(declare-fun m!6146174 () Bool)

(assert (=> start!536076 m!6146174))

(declare-fun m!6146176 () Bool)

(assert (=> b!5088247 m!6146176))

(declare-fun m!6146178 () Bool)

(assert (=> b!5088248 m!6146178))

(assert (=> b!5088248 m!6146178))

(declare-fun m!6146180 () Bool)

(assert (=> b!5088248 m!6146180))

(declare-fun m!6146182 () Bool)

(assert (=> b!5088248 m!6146182))

(declare-fun m!6146184 () Bool)

(assert (=> b!5088249 m!6146184))

(push 1)

(assert (not b!5088247))

(assert (not b!5088248))

(assert (not start!536076))

(assert (not b!5088249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1646982 () Bool)

(declare-fun lt!2092051 () Int)

(assert (=> d!1646982 (= lt!2092051 (size!39155 (list!19053 thiss!5775)))))

(declare-fun size!39158 (Conc!15609) Int)

(assert (=> d!1646982 (= lt!2092051 (size!39158 (c!874283 thiss!5775)))))

(assert (=> d!1646982 (= (size!39154 thiss!5775) lt!2092051)))

(declare-fun bs!1191034 () Bool)

(assert (= bs!1191034 d!1646982))

(assert (=> bs!1191034 m!6146178))

(assert (=> bs!1191034 m!6146178))

(assert (=> bs!1191034 m!6146180))

(declare-fun m!6146198 () Bool)

(assert (=> bs!1191034 m!6146198))

(assert (=> b!5088247 d!1646982))

(declare-fun d!1646984 () Bool)

(declare-fun lt!2092054 () Int)

(assert (=> d!1646984 (>= lt!2092054 0)))

(declare-fun e!3173437 () Int)

(assert (=> d!1646984 (= lt!2092054 e!3173437)))

(declare-fun c!874287 () Bool)

(assert (=> d!1646984 (= c!874287 (is-Nil!58494 (list!19053 thiss!5775)))))

(assert (=> d!1646984 (= (size!39155 (list!19053 thiss!5775)) lt!2092054)))

(declare-fun b!5088263 () Bool)

(assert (=> b!5088263 (= e!3173437 0)))

(declare-fun b!5088264 () Bool)

(assert (=> b!5088264 (= e!3173437 (+ 1 (size!39155 (t!371483 (list!19053 thiss!5775)))))))

(assert (= (and d!1646984 c!874287) b!5088263))

(assert (= (and d!1646984 (not c!874287)) b!5088264))

(declare-fun m!6146200 () Bool)

(assert (=> b!5088264 m!6146200))

(assert (=> b!5088248 d!1646984))

(declare-fun d!1646988 () Bool)

(declare-fun list!19055 (Conc!15609) List!58618)

(assert (=> d!1646988 (= (list!19053 thiss!5775) (list!19055 (c!874283 thiss!5775)))))

(declare-fun bs!1191035 () Bool)

(assert (= bs!1191035 d!1646988))

(declare-fun m!6146202 () Bool)

(assert (=> bs!1191035 m!6146202))

(assert (=> b!5088248 d!1646988))

(declare-fun b!5088285 () Bool)

(declare-fun e!3173452 () T!105410)

(declare-fun e!3173449 () T!105410)

(assert (=> b!5088285 (= e!3173452 e!3173449)))

(declare-fun lt!2092062 () Bool)

(declare-fun appendIndex!406 (List!58618 List!58618 Int) Bool)

(assert (=> b!5088285 (= lt!2092062 (appendIndex!406 (list!19055 (left!42886 (c!874283 thiss!5775))) (list!19055 (right!43216 (c!874283 thiss!5775))) i!589))))

(declare-fun c!874298 () Bool)

(assert (=> b!5088285 (= c!874298 (< i!589 (size!39158 (left!42886 (c!874283 thiss!5775)))))))

(declare-fun d!1646990 () Bool)

(declare-fun lt!2092063 () T!105410)

(declare-fun apply!14237 (List!58618 Int) T!105410)

(assert (=> d!1646990 (= lt!2092063 (apply!14237 (list!19055 (c!874283 thiss!5775)) i!589))))

(assert (=> d!1646990 (= lt!2092063 e!3173452)))

(declare-fun c!874299 () Bool)

(assert (=> d!1646990 (= c!874299 (is-Leaf!25919 (c!874283 thiss!5775)))))

(declare-fun e!3173450 () Bool)

(assert (=> d!1646990 e!3173450))

(declare-fun res!2166113 () Bool)

(assert (=> d!1646990 (=> (not res!2166113) (not e!3173450))))

(assert (=> d!1646990 (= res!2166113 (<= 0 i!589))))

(assert (=> d!1646990 (= (apply!14235 (c!874283 thiss!5775) i!589) lt!2092063)))

(declare-fun b!5088286 () Bool)

(declare-fun apply!14238 (IArray!31279 Int) T!105410)

(assert (=> b!5088286 (= e!3173452 (apply!14238 (xs!18991 (c!874283 thiss!5775)) i!589))))

(declare-fun b!5088287 () Bool)

(declare-fun call!354612 () T!105410)

(assert (=> b!5088287 (= e!3173449 call!354612)))

(declare-fun b!5088288 () Bool)

(declare-fun e!3173451 () Int)

(assert (=> b!5088288 (= e!3173451 i!589)))

(declare-fun b!5088289 () Bool)

(assert (=> b!5088289 (= e!3173449 call!354612)))

(declare-fun b!5088290 () Bool)

(assert (=> b!5088290 (= e!3173450 (< i!589 (size!39158 (c!874283 thiss!5775))))))

(declare-fun b!5088291 () Bool)

(assert (=> b!5088291 (= e!3173451 (- i!589 (size!39158 (left!42886 (c!874283 thiss!5775)))))))

(declare-fun bm!354607 () Bool)

(declare-fun c!874297 () Bool)

(assert (=> bm!354607 (= c!874297 c!874298)))

(assert (=> bm!354607 (= call!354612 (apply!14235 (ite c!874298 (left!42886 (c!874283 thiss!5775)) (right!43216 (c!874283 thiss!5775))) e!3173451))))

(assert (= (and d!1646990 res!2166113) b!5088290))

(assert (= (and d!1646990 c!874299) b!5088286))

(assert (= (and d!1646990 (not c!874299)) b!5088285))

(assert (= (and b!5088285 c!874298) b!5088289))

(assert (= (and b!5088285 (not c!874298)) b!5088287))

(assert (= (or b!5088289 b!5088287) bm!354607))

(assert (= (and bm!354607 c!874297) b!5088288))

(assert (= (and bm!354607 (not c!874297)) b!5088291))

(declare-fun m!6146208 () Bool)

(assert (=> bm!354607 m!6146208))

(declare-fun m!6146210 () Bool)

(assert (=> b!5088286 m!6146210))

(declare-fun m!6146212 () Bool)

(assert (=> b!5088285 m!6146212))

(declare-fun m!6146214 () Bool)

(assert (=> b!5088285 m!6146214))

(assert (=> b!5088285 m!6146212))

(assert (=> b!5088285 m!6146214))

(declare-fun m!6146216 () Bool)

(assert (=> b!5088285 m!6146216))

(declare-fun m!6146218 () Bool)

(assert (=> b!5088285 m!6146218))

(assert (=> b!5088291 m!6146218))

(assert (=> d!1646990 m!6146202))

(assert (=> d!1646990 m!6146202))

(declare-fun m!6146220 () Bool)

(assert (=> d!1646990 m!6146220))

(assert (=> b!5088290 m!6146198))

(assert (=> b!5088248 d!1646990))

(declare-fun d!1646996 () Bool)

(declare-fun isBalanced!4456 (Conc!15609) Bool)

(assert (=> d!1646996 (= (inv!77797 thiss!5775) (isBalanced!4456 (c!874283 thiss!5775)))))

(declare-fun bs!1191037 () Bool)

(assert (= bs!1191037 d!1646996))

(declare-fun m!6146222 () Bool)

(assert (=> bs!1191037 m!6146222))

(assert (=> start!536076 d!1646996))

(declare-fun d!1646998 () Bool)

(declare-fun c!874302 () Bool)

(assert (=> d!1646998 (= c!874302 (is-Node!15609 (c!874283 thiss!5775)))))

(declare-fun e!3173457 () Bool)

(assert (=> d!1646998 (= (inv!77798 (c!874283 thiss!5775)) e!3173457)))

(declare-fun b!5088298 () Bool)

(declare-fun inv!77801 (Conc!15609) Bool)

(assert (=> b!5088298 (= e!3173457 (inv!77801 (c!874283 thiss!5775)))))

(declare-fun b!5088299 () Bool)

(declare-fun e!3173458 () Bool)

(assert (=> b!5088299 (= e!3173457 e!3173458)))

(declare-fun res!2166116 () Bool)

(assert (=> b!5088299 (= res!2166116 (not (is-Leaf!25919 (c!874283 thiss!5775))))))

(assert (=> b!5088299 (=> res!2166116 e!3173458)))

(declare-fun b!5088300 () Bool)

(declare-fun inv!77802 (Conc!15609) Bool)

(assert (=> b!5088300 (= e!3173458 (inv!77802 (c!874283 thiss!5775)))))

(assert (= (and d!1646998 c!874302) b!5088298))

(assert (= (and d!1646998 (not c!874302)) b!5088299))

(assert (= (and b!5088299 (not res!2166116)) b!5088300))

(declare-fun m!6146224 () Bool)

(assert (=> b!5088298 m!6146224))

(declare-fun m!6146226 () Bool)

(assert (=> b!5088300 m!6146226))

(assert (=> b!5088249 d!1646998))

(declare-fun b!5088309 () Bool)

(declare-fun e!3173464 () Bool)

(declare-fun tp!1418550 () Bool)

(declare-fun tp!1418552 () Bool)

(assert (=> b!5088309 (= e!3173464 (and (inv!77798 (left!42886 (c!874283 thiss!5775))) tp!1418550 (inv!77798 (right!43216 (c!874283 thiss!5775))) tp!1418552))))

(declare-fun b!5088311 () Bool)

(declare-fun e!3173463 () Bool)

(declare-fun tp!1418551 () Bool)

(assert (=> b!5088311 (= e!3173463 tp!1418551)))

(declare-fun b!5088310 () Bool)

(declare-fun inv!77803 (IArray!31279) Bool)

(assert (=> b!5088310 (= e!3173464 (and (inv!77803 (xs!18991 (c!874283 thiss!5775))) e!3173463))))

(assert (=> b!5088249 (= tp!1418540 (and (inv!77798 (c!874283 thiss!5775)) e!3173464))))

(assert (= (and b!5088249 (is-Node!15609 (c!874283 thiss!5775))) b!5088309))

(assert (= b!5088310 b!5088311))

(assert (= (and b!5088249 (is-Leaf!25919 (c!874283 thiss!5775))) b!5088310))

(declare-fun m!6146228 () Bool)

(assert (=> b!5088309 m!6146228))

(declare-fun m!6146230 () Bool)

(assert (=> b!5088309 m!6146230))

(declare-fun m!6146232 () Bool)

(assert (=> b!5088310 m!6146232))

(assert (=> b!5088249 m!6146184))

(push 1)

(assert (not d!1646990))

(assert (not b!5088286))

(assert (not b!5088291))

(assert (not b!5088311))

(assert (not bm!354607))

(assert (not b!5088290))

(assert (not d!1646996))

(assert (not d!1646982))

(assert (not b!5088309))

(assert (not b!5088310))

(assert (not d!1646988))

(assert (not b!5088300))

(assert (not b!5088264))

(assert (not b!5088249))

(assert (not b!5088285))

(assert (not b!5088298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

