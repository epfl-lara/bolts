; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62440 () Bool)

(assert start!62440)

(declare-fun b!700583 () Bool)

(declare-fun e!397218 () Bool)

(declare-fun e!397219 () Bool)

(assert (=> b!700583 (= e!397218 e!397219)))

(declare-fun res!464586 () Bool)

(assert (=> b!700583 (=> (not res!464586) (not e!397219))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!700583 (= res!464586 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13284 0))(
  ( (Nil!13281) (Cons!13280 (h!14325 (_ BitVec 64)) (t!19574 List!13284)) )
))
(declare-fun newAcc!49 () List!13284)

(declare-fun lt!317468 () List!13284)

(declare-datatypes ((array!40075 0))(
  ( (array!40076 (arr!19190 (Array (_ BitVec 32) (_ BitVec 64))) (size!19573 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40075)

(declare-fun $colon$colon!468 (List!13284 (_ BitVec 64)) List!13284)

(assert (=> b!700583 (= lt!317468 ($colon$colon!468 newAcc!49 (select (arr!19190 a!3591) from!2969)))))

(declare-fun lt!317469 () List!13284)

(declare-fun acc!652 () List!13284)

(assert (=> b!700583 (= lt!317469 ($colon$colon!468 acc!652 (select (arr!19190 a!3591) from!2969)))))

(declare-fun b!700584 () Bool)

(declare-fun res!464588 () Bool)

(assert (=> b!700584 (=> (not res!464588) (not e!397218))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!236 (List!13284 (_ BitVec 64)) List!13284)

(assert (=> b!700584 (= res!464588 (= (-!236 newAcc!49 k!2824) acc!652))))

(declare-fun b!700585 () Bool)

(declare-fun res!464570 () Bool)

(assert (=> b!700585 (=> (not res!464570) (not e!397218))))

(declare-fun contains!3827 (List!13284 (_ BitVec 64)) Bool)

(assert (=> b!700585 (= res!464570 (not (contains!3827 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700586 () Bool)

(declare-fun res!464594 () Bool)

(assert (=> b!700586 (=> (not res!464594) (not e!397219))))

(declare-fun arrayContainsKey!0 (array!40075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!700586 (= res!464594 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!700587 () Bool)

(declare-fun res!464591 () Bool)

(assert (=> b!700587 (=> (not res!464591) (not e!397218))))

(assert (=> b!700587 (= res!464591 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19573 a!3591)))))

(declare-fun b!700588 () Bool)

(declare-fun res!464575 () Bool)

(assert (=> b!700588 (=> (not res!464575) (not e!397219))))

(assert (=> b!700588 (= res!464575 (= (-!236 lt!317468 k!2824) lt!317469))))

(declare-fun b!700589 () Bool)

(declare-fun res!464589 () Bool)

(assert (=> b!700589 (=> (not res!464589) (not e!397218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!700589 (= res!464589 (validKeyInArray!0 (select (arr!19190 a!3591) from!2969)))))

(declare-fun b!700590 () Bool)

(declare-fun res!464585 () Bool)

(assert (=> b!700590 (=> (not res!464585) (not e!397219))))

(declare-fun noDuplicate!1074 (List!13284) Bool)

(assert (=> b!700590 (= res!464585 (noDuplicate!1074 lt!317469))))

(declare-fun b!700591 () Bool)

(declare-fun res!464573 () Bool)

(assert (=> b!700591 (=> (not res!464573) (not e!397219))))

(assert (=> b!700591 (= res!464573 (not (contains!3827 lt!317469 k!2824)))))

(declare-fun b!700592 () Bool)

(assert (=> b!700592 (= e!397219 false)))

(declare-fun lt!317467 () Bool)

(assert (=> b!700592 (= lt!317467 (contains!3827 lt!317468 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!700594 () Bool)

(declare-fun res!464592 () Bool)

(assert (=> b!700594 (=> (not res!464592) (not e!397218))))

(assert (=> b!700594 (= res!464592 (not (contains!3827 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700595 () Bool)

(declare-fun res!464584 () Bool)

(assert (=> b!700595 (=> (not res!464584) (not e!397218))))

(assert (=> b!700595 (= res!464584 (not (contains!3827 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700596 () Bool)

(declare-fun res!464571 () Bool)

(assert (=> b!700596 (=> (not res!464571) (not e!397219))))

(assert (=> b!700596 (= res!464571 (not (contains!3827 lt!317469 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700597 () Bool)

(declare-fun res!464572 () Bool)

(assert (=> b!700597 (=> (not res!464572) (not e!397219))))

(assert (=> b!700597 (= res!464572 (not (contains!3827 lt!317469 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700598 () Bool)

(declare-fun res!464583 () Bool)

(assert (=> b!700598 (=> (not res!464583) (not e!397218))))

(assert (=> b!700598 (= res!464583 (validKeyInArray!0 k!2824))))

(declare-fun b!700599 () Bool)

(declare-fun res!464590 () Bool)

(assert (=> b!700599 (=> (not res!464590) (not e!397219))))

(assert (=> b!700599 (= res!464590 (not (contains!3827 lt!317468 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700600 () Bool)

(declare-fun res!464581 () Bool)

(assert (=> b!700600 (=> (not res!464581) (not e!397218))))

(assert (=> b!700600 (= res!464581 (not (contains!3827 acc!652 k!2824)))))

(declare-fun b!700593 () Bool)

(declare-fun res!464569 () Bool)

(assert (=> b!700593 (=> (not res!464569) (not e!397218))))

(assert (=> b!700593 (= res!464569 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun res!464567 () Bool)

(assert (=> start!62440 (=> (not res!464567) (not e!397218))))

(assert (=> start!62440 (= res!464567 (and (bvslt (size!19573 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19573 a!3591))))))

(assert (=> start!62440 e!397218))

(assert (=> start!62440 true))

(declare-fun array_inv!14964 (array!40075) Bool)

(assert (=> start!62440 (array_inv!14964 a!3591)))

(declare-fun b!700601 () Bool)

(declare-fun res!464576 () Bool)

(assert (=> b!700601 (=> (not res!464576) (not e!397219))))

(assert (=> b!700601 (= res!464576 (noDuplicate!1074 lt!317468))))

(declare-fun b!700602 () Bool)

(declare-fun res!464574 () Bool)

(assert (=> b!700602 (=> (not res!464574) (not e!397219))))

(declare-fun arrayNoDuplicates!0 (array!40075 (_ BitVec 32) List!13284) Bool)

(assert (=> b!700602 (= res!464574 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317469))))

(declare-fun b!700603 () Bool)

(declare-fun res!464582 () Bool)

(assert (=> b!700603 (=> (not res!464582) (not e!397219))))

(declare-fun subseq!271 (List!13284 List!13284) Bool)

(assert (=> b!700603 (= res!464582 (subseq!271 lt!317469 lt!317468))))

(declare-fun b!700604 () Bool)

(declare-fun res!464587 () Bool)

(assert (=> b!700604 (=> (not res!464587) (not e!397218))))

(assert (=> b!700604 (= res!464587 (noDuplicate!1074 acc!652))))

(declare-fun b!700605 () Bool)

(declare-fun res!464577 () Bool)

(assert (=> b!700605 (=> (not res!464577) (not e!397218))))

(assert (=> b!700605 (= res!464577 (subseq!271 acc!652 newAcc!49))))

(declare-fun b!700606 () Bool)

(declare-fun res!464568 () Bool)

(assert (=> b!700606 (=> (not res!464568) (not e!397218))))

(assert (=> b!700606 (= res!464568 (contains!3827 newAcc!49 k!2824))))

(declare-fun b!700607 () Bool)

(declare-fun res!464580 () Bool)

(assert (=> b!700607 (=> (not res!464580) (not e!397219))))

(assert (=> b!700607 (= res!464580 (contains!3827 lt!317468 k!2824))))

(declare-fun b!700608 () Bool)

(declare-fun res!464593 () Bool)

(assert (=> b!700608 (=> (not res!464593) (not e!397218))))

(assert (=> b!700608 (= res!464593 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!700609 () Bool)

(declare-fun res!464578 () Bool)

(assert (=> b!700609 (=> (not res!464578) (not e!397218))))

(assert (=> b!700609 (= res!464578 (noDuplicate!1074 newAcc!49))))

(declare-fun b!700610 () Bool)

(declare-fun res!464579 () Bool)

(assert (=> b!700610 (=> (not res!464579) (not e!397218))))

(assert (=> b!700610 (= res!464579 (not (contains!3827 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62440 res!464567) b!700604))

(assert (= (and b!700604 res!464587) b!700609))

(assert (= (and b!700609 res!464578) b!700585))

(assert (= (and b!700585 res!464570) b!700595))

(assert (= (and b!700595 res!464584) b!700593))

(assert (= (and b!700593 res!464569) b!700600))

(assert (= (and b!700600 res!464581) b!700598))

(assert (= (and b!700598 res!464583) b!700608))

(assert (= (and b!700608 res!464593) b!700605))

(assert (= (and b!700605 res!464577) b!700606))

(assert (= (and b!700606 res!464568) b!700584))

(assert (= (and b!700584 res!464588) b!700610))

(assert (= (and b!700610 res!464579) b!700594))

(assert (= (and b!700594 res!464592) b!700587))

(assert (= (and b!700587 res!464591) b!700589))

(assert (= (and b!700589 res!464589) b!700583))

(assert (= (and b!700583 res!464586) b!700590))

(assert (= (and b!700590 res!464585) b!700601))

(assert (= (and b!700601 res!464576) b!700596))

(assert (= (and b!700596 res!464571) b!700597))

(assert (= (and b!700597 res!464572) b!700586))

(assert (= (and b!700586 res!464594) b!700591))

(assert (= (and b!700591 res!464573) b!700602))

(assert (= (and b!700602 res!464574) b!700603))

(assert (= (and b!700603 res!464582) b!700607))

(assert (= (and b!700607 res!464580) b!700588))

(assert (= (and b!700588 res!464575) b!700599))

(assert (= (and b!700599 res!464590) b!700592))

(declare-fun m!660231 () Bool)

(assert (=> b!700610 m!660231))

(declare-fun m!660233 () Bool)

(assert (=> b!700594 m!660233))

(declare-fun m!660235 () Bool)

(assert (=> b!700596 m!660235))

(declare-fun m!660237 () Bool)

(assert (=> b!700591 m!660237))

(declare-fun m!660239 () Bool)

(assert (=> b!700605 m!660239))

(declare-fun m!660241 () Bool)

(assert (=> b!700586 m!660241))

(declare-fun m!660243 () Bool)

(assert (=> b!700598 m!660243))

(declare-fun m!660245 () Bool)

(assert (=> start!62440 m!660245))

(declare-fun m!660247 () Bool)

(assert (=> b!700588 m!660247))

(declare-fun m!660249 () Bool)

(assert (=> b!700601 m!660249))

(declare-fun m!660251 () Bool)

(assert (=> b!700606 m!660251))

(declare-fun m!660253 () Bool)

(assert (=> b!700599 m!660253))

(declare-fun m!660255 () Bool)

(assert (=> b!700602 m!660255))

(declare-fun m!660257 () Bool)

(assert (=> b!700608 m!660257))

(declare-fun m!660259 () Bool)

(assert (=> b!700583 m!660259))

(assert (=> b!700583 m!660259))

(declare-fun m!660261 () Bool)

(assert (=> b!700583 m!660261))

(assert (=> b!700583 m!660259))

(declare-fun m!660263 () Bool)

(assert (=> b!700583 m!660263))

(declare-fun m!660265 () Bool)

(assert (=> b!700590 m!660265))

(declare-fun m!660267 () Bool)

(assert (=> b!700609 m!660267))

(declare-fun m!660269 () Bool)

(assert (=> b!700603 m!660269))

(declare-fun m!660271 () Bool)

(assert (=> b!700600 m!660271))

(declare-fun m!660273 () Bool)

(assert (=> b!700597 m!660273))

(declare-fun m!660275 () Bool)

(assert (=> b!700607 m!660275))

(assert (=> b!700589 m!660259))

(assert (=> b!700589 m!660259))

(declare-fun m!660277 () Bool)

(assert (=> b!700589 m!660277))

(declare-fun m!660279 () Bool)

(assert (=> b!700585 m!660279))

(declare-fun m!660281 () Bool)

(assert (=> b!700595 m!660281))

(declare-fun m!660283 () Bool)

(assert (=> b!700592 m!660283))

(declare-fun m!660285 () Bool)

(assert (=> b!700593 m!660285))

(declare-fun m!660287 () Bool)

(assert (=> b!700604 m!660287))

(declare-fun m!660289 () Bool)

(assert (=> b!700584 m!660289))

(push 1)

