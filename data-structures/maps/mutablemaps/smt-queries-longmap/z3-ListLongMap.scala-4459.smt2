; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62066 () Bool)

(assert start!62066)

(declare-fun b!694566 () Bool)

(declare-fun res!458756 () Bool)

(declare-fun e!395063 () Bool)

(assert (=> b!694566 (=> (not res!458756) (not e!395063))))

(declare-datatypes ((List!13184 0))(
  ( (Nil!13181) (Cons!13180 (h!14225 (_ BitVec 64)) (t!19471 List!13184)) )
))
(declare-fun lt!316887 () List!13184)

(declare-datatypes ((array!39863 0))(
  ( (array!39864 (arr!19090 (Array (_ BitVec 32) (_ BitVec 64))) (size!19473 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39863)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39863 (_ BitVec 32) List!13184) Bool)

(assert (=> b!694566 (= res!458756 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316887))))

(declare-fun b!694567 () Bool)

(declare-fun res!458773 () Bool)

(assert (=> b!694567 (=> (not res!458773) (not e!395063))))

(declare-fun noDuplicate!974 (List!13184) Bool)

(assert (=> b!694567 (= res!458773 (noDuplicate!974 lt!316887))))

(declare-fun b!694568 () Bool)

(declare-fun res!458776 () Bool)

(declare-fun e!395060 () Bool)

(assert (=> b!694568 (=> (not res!458776) (not e!395060))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694568 (= res!458776 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694569 () Bool)

(declare-fun res!458764 () Bool)

(assert (=> b!694569 (=> (not res!458764) (not e!395060))))

(assert (=> b!694569 (= res!458764 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13181))))

(declare-fun b!694570 () Bool)

(declare-fun e!395062 () Bool)

(declare-fun contains!3727 (List!13184 (_ BitVec 64)) Bool)

(assert (=> b!694570 (= e!395062 (not (contains!3727 lt!316887 k0!2843)))))

(declare-fun b!694571 () Bool)

(declare-fun res!458765 () Bool)

(assert (=> b!694571 (=> (not res!458765) (not e!395060))))

(declare-fun acc!681 () List!13184)

(assert (=> b!694571 (= res!458765 (noDuplicate!974 acc!681))))

(declare-fun b!694572 () Bool)

(declare-fun res!458758 () Bool)

(assert (=> b!694572 (=> (not res!458758) (not e!395063))))

(assert (=> b!694572 (= res!458758 (not (contains!3727 lt!316887 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694573 () Bool)

(declare-fun res!458771 () Bool)

(assert (=> b!694573 (=> (not res!458771) (not e!395060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694573 (= res!458771 (validKeyInArray!0 (select (arr!19090 a!3626) from!3004)))))

(declare-fun b!694574 () Bool)

(declare-fun res!458777 () Bool)

(assert (=> b!694574 (=> (not res!458777) (not e!395063))))

(declare-fun e!395055 () Bool)

(assert (=> b!694574 (= res!458777 e!395055)))

(declare-fun res!458778 () Bool)

(assert (=> b!694574 (=> res!458778 e!395055)))

(declare-fun e!395059 () Bool)

(assert (=> b!694574 (= res!458778 e!395059)))

(declare-fun res!458766 () Bool)

(assert (=> b!694574 (=> (not res!458766) (not e!395059))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694574 (= res!458766 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694575 () Bool)

(declare-fun res!458774 () Bool)

(assert (=> b!694575 (=> (not res!458774) (not e!395060))))

(assert (=> b!694575 (= res!458774 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19473 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694576 () Bool)

(declare-fun res!458762 () Bool)

(assert (=> b!694576 (=> (not res!458762) (not e!395060))))

(assert (=> b!694576 (= res!458762 (validKeyInArray!0 k0!2843))))

(declare-fun b!694577 () Bool)

(declare-fun e!395058 () Bool)

(assert (=> b!694577 (= e!395058 e!395063)))

(declare-fun res!458759 () Bool)

(assert (=> b!694577 (=> (not res!458759) (not e!395063))))

(assert (=> b!694577 (= res!458759 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!437 (List!13184 (_ BitVec 64)) List!13184)

(assert (=> b!694577 (= lt!316887 ($colon$colon!437 acc!681 (select (arr!19090 a!3626) from!3004)))))

(declare-fun b!694578 () Bool)

(declare-fun res!458780 () Bool)

(assert (=> b!694578 (=> (not res!458780) (not e!395060))))

(assert (=> b!694578 (= res!458780 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19473 a!3626))))))

(declare-fun b!694579 () Bool)

(declare-fun e!395065 () Bool)

(assert (=> b!694579 (= e!395065 (not (contains!3727 acc!681 k0!2843)))))

(declare-fun b!694580 () Bool)

(declare-datatypes ((Unit!24530 0))(
  ( (Unit!24531) )
))
(declare-fun e!395056 () Unit!24530)

(declare-fun Unit!24532 () Unit!24530)

(assert (=> b!694580 (= e!395056 Unit!24532)))

(assert (=> b!694580 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316890 () Unit!24530)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39863 (_ BitVec 64) (_ BitVec 32)) Unit!24530)

(assert (=> b!694580 (= lt!316890 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!694580 false))

(declare-fun res!458767 () Bool)

(assert (=> start!62066 (=> (not res!458767) (not e!395060))))

(assert (=> start!62066 (= res!458767 (and (bvslt (size!19473 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19473 a!3626))))))

(assert (=> start!62066 e!395060))

(assert (=> start!62066 true))

(declare-fun array_inv!14864 (array!39863) Bool)

(assert (=> start!62066 (array_inv!14864 a!3626)))

(declare-fun b!694581 () Bool)

(declare-fun e!395057 () Bool)

(assert (=> b!694581 (= e!395057 e!395065)))

(declare-fun res!458760 () Bool)

(assert (=> b!694581 (=> (not res!458760) (not e!395065))))

(assert (=> b!694581 (= res!458760 (bvsle from!3004 i!1382))))

(declare-fun b!694582 () Bool)

(declare-fun e!395061 () Bool)

(assert (=> b!694582 (= e!395061 (contains!3727 acc!681 k0!2843))))

(declare-fun b!694583 () Bool)

(assert (=> b!694583 (= e!395055 e!395062)))

(declare-fun res!458779 () Bool)

(assert (=> b!694583 (=> (not res!458779) (not e!395062))))

(assert (=> b!694583 (= res!458779 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694584 () Bool)

(declare-fun res!458775 () Bool)

(assert (=> b!694584 (=> (not res!458775) (not e!395060))))

(assert (=> b!694584 (= res!458775 (not (contains!3727 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694585 () Bool)

(declare-fun res!458757 () Bool)

(assert (=> b!694585 (=> (not res!458757) (not e!395060))))

(assert (=> b!694585 (= res!458757 (not (contains!3727 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694586 () Bool)

(assert (=> b!694586 (= e!395063 (not true))))

(assert (=> b!694586 (arrayNoDuplicates!0 (array!39864 (store (arr!19090 a!3626) i!1382 k0!2843) (size!19473 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!316887)))

(declare-fun lt!316889 () Unit!24530)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39863 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13184) Unit!24530)

(assert (=> b!694586 (= lt!316889 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316887))))

(declare-fun b!694587 () Bool)

(declare-fun res!458769 () Bool)

(assert (=> b!694587 (=> (not res!458769) (not e!395060))))

(assert (=> b!694587 (= res!458769 e!395057)))

(declare-fun res!458770 () Bool)

(assert (=> b!694587 (=> res!458770 e!395057)))

(assert (=> b!694587 (= res!458770 e!395061)))

(declare-fun res!458768 () Bool)

(assert (=> b!694587 (=> (not res!458768) (not e!395061))))

(assert (=> b!694587 (= res!458768 (bvsgt from!3004 i!1382))))

(declare-fun b!694588 () Bool)

(declare-fun res!458772 () Bool)

(assert (=> b!694588 (=> (not res!458772) (not e!395063))))

(assert (=> b!694588 (= res!458772 (not (contains!3727 lt!316887 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694589 () Bool)

(declare-fun res!458761 () Bool)

(assert (=> b!694589 (=> (not res!458761) (not e!395060))))

(assert (=> b!694589 (= res!458761 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694590 () Bool)

(assert (=> b!694590 (= e!395060 e!395058)))

(declare-fun res!458763 () Bool)

(assert (=> b!694590 (=> (not res!458763) (not e!395058))))

(assert (=> b!694590 (= res!458763 (not (= (select (arr!19090 a!3626) from!3004) k0!2843)))))

(declare-fun lt!316888 () Unit!24530)

(assert (=> b!694590 (= lt!316888 e!395056)))

(declare-fun c!78272 () Bool)

(assert (=> b!694590 (= c!78272 (= (select (arr!19090 a!3626) from!3004) k0!2843))))

(declare-fun b!694591 () Bool)

(declare-fun Unit!24533 () Unit!24530)

(assert (=> b!694591 (= e!395056 Unit!24533)))

(declare-fun b!694592 () Bool)

(assert (=> b!694592 (= e!395059 (contains!3727 lt!316887 k0!2843))))

(assert (= (and start!62066 res!458767) b!694571))

(assert (= (and b!694571 res!458765) b!694584))

(assert (= (and b!694584 res!458775) b!694585))

(assert (= (and b!694585 res!458757) b!694587))

(assert (= (and b!694587 res!458768) b!694582))

(assert (= (and b!694587 (not res!458770)) b!694581))

(assert (= (and b!694581 res!458760) b!694579))

(assert (= (and b!694587 res!458769) b!694569))

(assert (= (and b!694569 res!458764) b!694589))

(assert (= (and b!694589 res!458761) b!694578))

(assert (= (and b!694578 res!458780) b!694576))

(assert (= (and b!694576 res!458762) b!694568))

(assert (= (and b!694568 res!458776) b!694575))

(assert (= (and b!694575 res!458774) b!694573))

(assert (= (and b!694573 res!458771) b!694590))

(assert (= (and b!694590 c!78272) b!694580))

(assert (= (and b!694590 (not c!78272)) b!694591))

(assert (= (and b!694590 res!458763) b!694577))

(assert (= (and b!694577 res!458759) b!694567))

(assert (= (and b!694567 res!458773) b!694572))

(assert (= (and b!694572 res!458758) b!694588))

(assert (= (and b!694588 res!458772) b!694574))

(assert (= (and b!694574 res!458766) b!694592))

(assert (= (and b!694574 (not res!458778)) b!694583))

(assert (= (and b!694583 res!458779) b!694570))

(assert (= (and b!694574 res!458777) b!694566))

(assert (= (and b!694566 res!458756) b!694586))

(declare-fun m!656291 () Bool)

(assert (=> b!694572 m!656291))

(declare-fun m!656293 () Bool)

(assert (=> b!694582 m!656293))

(declare-fun m!656295 () Bool)

(assert (=> b!694588 m!656295))

(declare-fun m!656297 () Bool)

(assert (=> b!694568 m!656297))

(declare-fun m!656299 () Bool)

(assert (=> b!694566 m!656299))

(declare-fun m!656301 () Bool)

(assert (=> b!694584 m!656301))

(declare-fun m!656303 () Bool)

(assert (=> b!694586 m!656303))

(declare-fun m!656305 () Bool)

(assert (=> b!694586 m!656305))

(declare-fun m!656307 () Bool)

(assert (=> b!694586 m!656307))

(declare-fun m!656309 () Bool)

(assert (=> b!694569 m!656309))

(declare-fun m!656311 () Bool)

(assert (=> b!694573 m!656311))

(assert (=> b!694573 m!656311))

(declare-fun m!656313 () Bool)

(assert (=> b!694573 m!656313))

(declare-fun m!656315 () Bool)

(assert (=> b!694570 m!656315))

(assert (=> b!694577 m!656311))

(assert (=> b!694577 m!656311))

(declare-fun m!656317 () Bool)

(assert (=> b!694577 m!656317))

(declare-fun m!656319 () Bool)

(assert (=> b!694580 m!656319))

(declare-fun m!656321 () Bool)

(assert (=> b!694580 m!656321))

(assert (=> b!694590 m!656311))

(declare-fun m!656323 () Bool)

(assert (=> b!694576 m!656323))

(declare-fun m!656325 () Bool)

(assert (=> b!694571 m!656325))

(declare-fun m!656327 () Bool)

(assert (=> b!694585 m!656327))

(declare-fun m!656329 () Bool)

(assert (=> start!62066 m!656329))

(assert (=> b!694579 m!656293))

(declare-fun m!656331 () Bool)

(assert (=> b!694589 m!656331))

(assert (=> b!694592 m!656315))

(declare-fun m!656333 () Bool)

(assert (=> b!694567 m!656333))

(check-sat (not b!694571) (not b!694580) (not b!694569) (not b!694572) (not b!694588) (not b!694566) (not start!62066) (not b!694584) (not b!694568) (not b!694585) (not b!694570) (not b!694577) (not b!694586) (not b!694589) (not b!694592) (not b!694567) (not b!694573) (not b!694576) (not b!694582) (not b!694579))
(check-sat)
