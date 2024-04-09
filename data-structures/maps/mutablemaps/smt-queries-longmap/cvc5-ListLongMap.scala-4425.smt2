; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61290 () Bool)

(assert start!61290)

(declare-fun b!686268 () Bool)

(declare-fun res!451576 () Bool)

(declare-fun e!390808 () Bool)

(assert (=> b!686268 (=> (not res!451576) (not e!390808))))

(declare-datatypes ((List!13081 0))(
  ( (Nil!13078) (Cons!13077 (h!14122 (_ BitVec 64)) (t!19344 List!13081)) )
))
(declare-fun acc!681 () List!13081)

(declare-fun contains!3624 (List!13081 (_ BitVec 64)) Bool)

(assert (=> b!686268 (= res!451576 (not (contains!3624 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686269 () Bool)

(declare-datatypes ((Unit!24172 0))(
  ( (Unit!24173) )
))
(declare-fun e!390806 () Unit!24172)

(declare-fun Unit!24174 () Unit!24172)

(assert (=> b!686269 (= e!390806 Unit!24174)))

(declare-fun lt!315004 () Unit!24172)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39630 0))(
  ( (array!39631 (arr!18987 (Array (_ BitVec 32) (_ BitVec 64))) (size!19360 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39630)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39630 (_ BitVec 64) (_ BitVec 32)) Unit!24172)

(assert (=> b!686269 (= lt!315004 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686269 false))

(declare-fun b!686270 () Bool)

(declare-fun res!451579 () Bool)

(assert (=> b!686270 (=> (not res!451579) (not e!390808))))

(assert (=> b!686270 (= res!451579 (not (contains!3624 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686271 () Bool)

(declare-fun res!451580 () Bool)

(assert (=> b!686271 (=> (not res!451580) (not e!390808))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686271 (= res!451580 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19360 a!3626))))))

(declare-fun b!686272 () Bool)

(declare-fun e!390807 () Bool)

(declare-fun e!390811 () Bool)

(assert (=> b!686272 (= e!390807 e!390811)))

(declare-fun res!451577 () Bool)

(assert (=> b!686272 (=> (not res!451577) (not e!390811))))

(assert (=> b!686272 (= res!451577 (bvsle from!3004 i!1382))))

(declare-fun b!686273 () Bool)

(declare-fun e!390810 () Bool)

(assert (=> b!686273 (= e!390810 (contains!3624 acc!681 k!2843))))

(declare-fun b!686274 () Bool)

(declare-fun res!451575 () Bool)

(assert (=> b!686274 (=> (not res!451575) (not e!390808))))

(declare-fun noDuplicate!871 (List!13081) Bool)

(assert (=> b!686274 (= res!451575 (noDuplicate!871 acc!681))))

(declare-fun res!451572 () Bool)

(assert (=> start!61290 (=> (not res!451572) (not e!390808))))

(assert (=> start!61290 (= res!451572 (and (bvslt (size!19360 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19360 a!3626))))))

(assert (=> start!61290 e!390808))

(assert (=> start!61290 true))

(declare-fun array_inv!14761 (array!39630) Bool)

(assert (=> start!61290 (array_inv!14761 a!3626)))

(declare-fun b!686275 () Bool)

(declare-fun res!451583 () Bool)

(assert (=> b!686275 (=> (not res!451583) (not e!390808))))

(assert (=> b!686275 (= res!451583 e!390807)))

(declare-fun res!451574 () Bool)

(assert (=> b!686275 (=> res!451574 e!390807)))

(assert (=> b!686275 (= res!451574 e!390810)))

(declare-fun res!451578 () Bool)

(assert (=> b!686275 (=> (not res!451578) (not e!390810))))

(assert (=> b!686275 (= res!451578 (bvsgt from!3004 i!1382))))

(declare-fun b!686276 () Bool)

(declare-fun res!451582 () Bool)

(assert (=> b!686276 (=> (not res!451582) (not e!390808))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686276 (= res!451582 (validKeyInArray!0 k!2843))))

(declare-fun b!686277 () Bool)

(declare-fun res!451570 () Bool)

(assert (=> b!686277 (=> (not res!451570) (not e!390808))))

(declare-fun arrayNoDuplicates!0 (array!39630 (_ BitVec 32) List!13081) Bool)

(assert (=> b!686277 (= res!451570 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686278 () Bool)

(declare-fun res!451573 () Bool)

(assert (=> b!686278 (=> (not res!451573) (not e!390808))))

(assert (=> b!686278 (= res!451573 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19360 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686279 () Bool)

(assert (=> b!686279 (= e!390811 (not (contains!3624 acc!681 k!2843)))))

(declare-fun b!686280 () Bool)

(declare-fun e!390805 () Unit!24172)

(declare-fun lt!315006 () Unit!24172)

(assert (=> b!686280 (= e!390805 lt!315006)))

(declare-fun lt!315003 () Unit!24172)

(declare-fun lemmaListSubSeqRefl!0 (List!13081) Unit!24172)

(assert (=> b!686280 (= lt!315003 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!209 (List!13081 List!13081) Bool)

(assert (=> b!686280 (subseq!209 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39630 List!13081 List!13081 (_ BitVec 32)) Unit!24172)

(declare-fun $colon$colon!373 (List!13081 (_ BitVec 64)) List!13081)

(assert (=> b!686280 (= lt!315006 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!373 acc!681 (select (arr!18987 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686280 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686281 () Bool)

(declare-fun res!451581 () Bool)

(assert (=> b!686281 (=> (not res!451581) (not e!390808))))

(declare-fun arrayContainsKey!0 (array!39630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686281 (= res!451581 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686282 () Bool)

(declare-fun Unit!24175 () Unit!24172)

(assert (=> b!686282 (= e!390805 Unit!24175)))

(declare-fun b!686283 () Bool)

(assert (=> b!686283 (= e!390808 (not true))))

(declare-fun lt!315002 () List!13081)

(assert (=> b!686283 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315002)))

(declare-fun lt!315008 () Unit!24172)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39630 (_ BitVec 64) (_ BitVec 32) List!13081 List!13081) Unit!24172)

(assert (=> b!686283 (= lt!315008 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315002))))

(declare-fun -!174 (List!13081 (_ BitVec 64)) List!13081)

(assert (=> b!686283 (= (-!174 lt!315002 k!2843) acc!681)))

(assert (=> b!686283 (= lt!315002 ($colon$colon!373 acc!681 k!2843))))

(declare-fun lt!315001 () Unit!24172)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13081) Unit!24172)

(assert (=> b!686283 (= lt!315001 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!686283 (subseq!209 acc!681 acc!681)))

(declare-fun lt!315005 () Unit!24172)

(assert (=> b!686283 (= lt!315005 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686283 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315007 () Unit!24172)

(assert (=> b!686283 (= lt!315007 e!390805)))

(declare-fun c!77716 () Bool)

(assert (=> b!686283 (= c!77716 (validKeyInArray!0 (select (arr!18987 a!3626) from!3004)))))

(declare-fun lt!315009 () Unit!24172)

(assert (=> b!686283 (= lt!315009 e!390806)))

(declare-fun c!77717 () Bool)

(assert (=> b!686283 (= c!77717 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686283 (arrayContainsKey!0 (array!39631 (store (arr!18987 a!3626) i!1382 k!2843) (size!19360 a!3626)) k!2843 from!3004)))

(declare-fun b!686284 () Bool)

(declare-fun Unit!24176 () Unit!24172)

(assert (=> b!686284 (= e!390806 Unit!24176)))

(declare-fun b!686285 () Bool)

(declare-fun res!451571 () Bool)

(assert (=> b!686285 (=> (not res!451571) (not e!390808))))

(assert (=> b!686285 (= res!451571 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13078))))

(assert (= (and start!61290 res!451572) b!686274))

(assert (= (and b!686274 res!451575) b!686268))

(assert (= (and b!686268 res!451576) b!686270))

(assert (= (and b!686270 res!451579) b!686275))

(assert (= (and b!686275 res!451578) b!686273))

(assert (= (and b!686275 (not res!451574)) b!686272))

(assert (= (and b!686272 res!451577) b!686279))

(assert (= (and b!686275 res!451583) b!686285))

(assert (= (and b!686285 res!451571) b!686277))

(assert (= (and b!686277 res!451570) b!686271))

(assert (= (and b!686271 res!451580) b!686276))

(assert (= (and b!686276 res!451582) b!686281))

(assert (= (and b!686281 res!451581) b!686278))

(assert (= (and b!686278 res!451573) b!686283))

(assert (= (and b!686283 c!77717) b!686269))

(assert (= (and b!686283 (not c!77717)) b!686284))

(assert (= (and b!686283 c!77716) b!686280))

(assert (= (and b!686283 (not c!77716)) b!686282))

(declare-fun m!650433 () Bool)

(assert (=> b!686268 m!650433))

(declare-fun m!650435 () Bool)

(assert (=> b!686281 m!650435))

(declare-fun m!650437 () Bool)

(assert (=> b!686273 m!650437))

(declare-fun m!650439 () Bool)

(assert (=> b!686270 m!650439))

(assert (=> b!686279 m!650437))

(declare-fun m!650441 () Bool)

(assert (=> b!686285 m!650441))

(declare-fun m!650443 () Bool)

(assert (=> b!686274 m!650443))

(declare-fun m!650445 () Bool)

(assert (=> start!61290 m!650445))

(declare-fun m!650447 () Bool)

(assert (=> b!686283 m!650447))

(declare-fun m!650449 () Bool)

(assert (=> b!686283 m!650449))

(declare-fun m!650451 () Bool)

(assert (=> b!686283 m!650451))

(declare-fun m!650453 () Bool)

(assert (=> b!686283 m!650453))

(declare-fun m!650455 () Bool)

(assert (=> b!686283 m!650455))

(declare-fun m!650457 () Bool)

(assert (=> b!686283 m!650457))

(declare-fun m!650459 () Bool)

(assert (=> b!686283 m!650459))

(declare-fun m!650461 () Bool)

(assert (=> b!686283 m!650461))

(declare-fun m!650463 () Bool)

(assert (=> b!686283 m!650463))

(declare-fun m!650465 () Bool)

(assert (=> b!686283 m!650465))

(assert (=> b!686283 m!650449))

(declare-fun m!650467 () Bool)

(assert (=> b!686283 m!650467))

(declare-fun m!650469 () Bool)

(assert (=> b!686283 m!650469))

(declare-fun m!650471 () Bool)

(assert (=> b!686283 m!650471))

(declare-fun m!650473 () Bool)

(assert (=> b!686277 m!650473))

(declare-fun m!650475 () Bool)

(assert (=> b!686276 m!650475))

(assert (=> b!686280 m!650447))

(assert (=> b!686280 m!650449))

(declare-fun m!650477 () Bool)

(assert (=> b!686280 m!650477))

(declare-fun m!650479 () Bool)

(assert (=> b!686280 m!650479))

(assert (=> b!686280 m!650449))

(assert (=> b!686280 m!650477))

(assert (=> b!686280 m!650457))

(assert (=> b!686280 m!650471))

(declare-fun m!650481 () Bool)

(assert (=> b!686269 m!650481))

(push 1)

(assert (not b!686285))

(assert (not b!686270))

(assert (not b!686276))

(assert (not b!686274))

(assert (not b!686280))

(assert (not b!686277))

(assert (not b!686279))

(assert (not start!61290))

(assert (not b!686273))

(assert (not b!686281))

(assert (not b!686269))

(assert (not b!686268))

(assert (not b!686283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

