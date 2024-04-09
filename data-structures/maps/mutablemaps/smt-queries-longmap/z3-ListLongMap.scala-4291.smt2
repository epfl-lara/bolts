; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59792 () Bool)

(assert start!59792)

(declare-fun b!660088 () Bool)

(declare-fun res!428327 () Bool)

(declare-fun e!379325 () Bool)

(assert (=> b!660088 (=> (not res!428327) (not e!379325))))

(declare-datatypes ((List!12680 0))(
  ( (Nil!12677) (Cons!12676 (h!13721 (_ BitVec 64)) (t!18916 List!12680)) )
))
(declare-fun acc!681 () List!12680)

(declare-fun contains!3223 (List!12680 (_ BitVec 64)) Bool)

(assert (=> b!660088 (= res!428327 (not (contains!3223 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660089 () Bool)

(declare-fun res!428328 () Bool)

(assert (=> b!660089 (=> (not res!428328) (not e!379325))))

(declare-fun e!379323 () Bool)

(assert (=> b!660089 (= res!428328 e!379323)))

(declare-fun res!428326 () Bool)

(assert (=> b!660089 (=> res!428326 e!379323)))

(declare-fun e!379326 () Bool)

(assert (=> b!660089 (= res!428326 e!379326)))

(declare-fun res!428329 () Bool)

(assert (=> b!660089 (=> (not res!428329) (not e!379326))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660089 (= res!428329 (bvsgt from!3004 i!1382))))

(declare-fun res!428333 () Bool)

(assert (=> start!59792 (=> (not res!428333) (not e!379325))))

(declare-datatypes ((array!38795 0))(
  ( (array!38796 (arr!18586 (Array (_ BitVec 32) (_ BitVec 64))) (size!18950 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38795)

(assert (=> start!59792 (= res!428333 (and (bvslt (size!18950 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18950 a!3626))))))

(assert (=> start!59792 e!379325))

(assert (=> start!59792 true))

(declare-fun array_inv!14360 (array!38795) Bool)

(assert (=> start!59792 (array_inv!14360 a!3626)))

(declare-fun b!660090 () Bool)

(declare-fun res!428330 () Bool)

(assert (=> b!660090 (=> (not res!428330) (not e!379325))))

(assert (=> b!660090 (= res!428330 (not (contains!3223 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660091 () Bool)

(declare-fun e!379327 () Bool)

(assert (=> b!660091 (= e!379323 e!379327)))

(declare-fun res!428332 () Bool)

(assert (=> b!660091 (=> (not res!428332) (not e!379327))))

(assert (=> b!660091 (= res!428332 (bvsle from!3004 i!1382))))

(declare-fun b!660092 () Bool)

(assert (=> b!660092 (= e!379325 false)))

(declare-fun lt!308709 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38795 (_ BitVec 32) List!12680) Bool)

(assert (=> b!660092 (= lt!308709 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12677))))

(declare-fun b!660093 () Bool)

(declare-fun res!428331 () Bool)

(assert (=> b!660093 (=> (not res!428331) (not e!379325))))

(declare-fun noDuplicate!470 (List!12680) Bool)

(assert (=> b!660093 (= res!428331 (noDuplicate!470 acc!681))))

(declare-fun b!660094 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!660094 (= e!379326 (contains!3223 acc!681 k0!2843))))

(declare-fun b!660095 () Bool)

(assert (=> b!660095 (= e!379327 (not (contains!3223 acc!681 k0!2843)))))

(assert (= (and start!59792 res!428333) b!660093))

(assert (= (and b!660093 res!428331) b!660088))

(assert (= (and b!660088 res!428327) b!660090))

(assert (= (and b!660090 res!428330) b!660089))

(assert (= (and b!660089 res!428329) b!660094))

(assert (= (and b!660089 (not res!428326)) b!660091))

(assert (= (and b!660091 res!428332) b!660095))

(assert (= (and b!660089 res!428328) b!660092))

(declare-fun m!632907 () Bool)

(assert (=> b!660092 m!632907))

(declare-fun m!632909 () Bool)

(assert (=> b!660095 m!632909))

(declare-fun m!632911 () Bool)

(assert (=> b!660093 m!632911))

(declare-fun m!632913 () Bool)

(assert (=> start!59792 m!632913))

(declare-fun m!632915 () Bool)

(assert (=> b!660088 m!632915))

(assert (=> b!660094 m!632909))

(declare-fun m!632917 () Bool)

(assert (=> b!660090 m!632917))

(check-sat (not b!660090) (not b!660094) (not b!660092) (not b!660095) (not b!660093) (not start!59792) (not b!660088))
(check-sat)
