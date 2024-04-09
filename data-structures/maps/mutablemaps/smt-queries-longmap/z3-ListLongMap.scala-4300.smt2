; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59846 () Bool)

(assert start!59846)

(declare-fun b!660955 () Bool)

(declare-fun res!429205 () Bool)

(declare-fun e!379731 () Bool)

(assert (=> b!660955 (=> (not res!429205) (not e!379731))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38849 0))(
  ( (array!38850 (arr!18613 (Array (_ BitVec 32) (_ BitVec 64))) (size!18977 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38849)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!660955 (= res!429205 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18977 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!660956 () Bool)

(declare-fun res!429206 () Bool)

(assert (=> b!660956 (=> (not res!429206) (not e!379731))))

(declare-fun e!379730 () Bool)

(assert (=> b!660956 (= res!429206 e!379730)))

(declare-fun res!429195 () Bool)

(assert (=> b!660956 (=> res!429195 e!379730)))

(declare-fun e!379732 () Bool)

(assert (=> b!660956 (= res!429195 e!379732)))

(declare-fun res!429193 () Bool)

(assert (=> b!660956 (=> (not res!429193) (not e!379732))))

(assert (=> b!660956 (= res!429193 (bvsgt from!3004 i!1382))))

(declare-fun b!660957 () Bool)

(declare-fun res!429196 () Bool)

(assert (=> b!660957 (=> (not res!429196) (not e!379731))))

(declare-datatypes ((List!12707 0))(
  ( (Nil!12704) (Cons!12703 (h!13748 (_ BitVec 64)) (t!18943 List!12707)) )
))
(declare-fun arrayNoDuplicates!0 (array!38849 (_ BitVec 32) List!12707) Bool)

(assert (=> b!660957 (= res!429196 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12704))))

(declare-fun b!660958 () Bool)

(declare-fun res!429197 () Bool)

(assert (=> b!660958 (=> (not res!429197) (not e!379731))))

(declare-fun acc!681 () List!12707)

(declare-fun contains!3250 (List!12707 (_ BitVec 64)) Bool)

(assert (=> b!660958 (= res!429197 (not (contains!3250 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660959 () Bool)

(declare-fun res!429194 () Bool)

(assert (=> b!660959 (=> (not res!429194) (not e!379731))))

(declare-fun noDuplicate!497 (List!12707) Bool)

(assert (=> b!660959 (= res!429194 (noDuplicate!497 acc!681))))

(declare-fun res!429199 () Bool)

(assert (=> start!59846 (=> (not res!429199) (not e!379731))))

(assert (=> start!59846 (= res!429199 (and (bvslt (size!18977 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18977 a!3626))))))

(assert (=> start!59846 e!379731))

(assert (=> start!59846 true))

(declare-fun array_inv!14387 (array!38849) Bool)

(assert (=> start!59846 (array_inv!14387 a!3626)))

(declare-fun b!660960 () Bool)

(declare-fun res!429203 () Bool)

(assert (=> b!660960 (=> (not res!429203) (not e!379731))))

(assert (=> b!660960 (= res!429203 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18977 a!3626))))))

(declare-fun b!660961 () Bool)

(declare-fun res!429202 () Bool)

(assert (=> b!660961 (=> (not res!429202) (not e!379731))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660961 (= res!429202 (validKeyInArray!0 k0!2843))))

(declare-fun b!660962 () Bool)

(declare-fun res!429198 () Bool)

(assert (=> b!660962 (=> (not res!429198) (not e!379731))))

(assert (=> b!660962 (= res!429198 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660963 () Bool)

(declare-fun e!379728 () Bool)

(assert (=> b!660963 (= e!379730 e!379728)))

(declare-fun res!429200 () Bool)

(assert (=> b!660963 (=> (not res!429200) (not e!379728))))

(assert (=> b!660963 (= res!429200 (bvsle from!3004 i!1382))))

(declare-fun b!660964 () Bool)

(declare-fun res!429204 () Bool)

(assert (=> b!660964 (=> (not res!429204) (not e!379731))))

(declare-fun arrayContainsKey!0 (array!38849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!660964 (= res!429204 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!660965 () Bool)

(declare-fun res!429201 () Bool)

(assert (=> b!660965 (=> (not res!429201) (not e!379731))))

(assert (=> b!660965 (= res!429201 (not (contains!3250 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660966 () Bool)

(assert (=> b!660966 (= e!379728 (not (contains!3250 acc!681 k0!2843)))))

(declare-fun b!660967 () Bool)

(assert (=> b!660967 (= e!379731 (not true))))

(assert (=> b!660967 (arrayContainsKey!0 (array!38850 (store (arr!18613 a!3626) i!1382 k0!2843) (size!18977 a!3626)) k0!2843 from!3004)))

(declare-fun b!660968 () Bool)

(assert (=> b!660968 (= e!379732 (contains!3250 acc!681 k0!2843))))

(assert (= (and start!59846 res!429199) b!660959))

(assert (= (and b!660959 res!429194) b!660958))

(assert (= (and b!660958 res!429197) b!660965))

(assert (= (and b!660965 res!429201) b!660956))

(assert (= (and b!660956 res!429193) b!660968))

(assert (= (and b!660956 (not res!429195)) b!660963))

(assert (= (and b!660963 res!429200) b!660966))

(assert (= (and b!660956 res!429206) b!660957))

(assert (= (and b!660957 res!429196) b!660962))

(assert (= (and b!660962 res!429198) b!660960))

(assert (= (and b!660960 res!429203) b!660961))

(assert (= (and b!660961 res!429202) b!660964))

(assert (= (and b!660964 res!429204) b!660955))

(assert (= (and b!660955 res!429205) b!660967))

(declare-fun m!633343 () Bool)

(assert (=> b!660961 m!633343))

(declare-fun m!633345 () Bool)

(assert (=> b!660959 m!633345))

(declare-fun m!633347 () Bool)

(assert (=> b!660965 m!633347))

(declare-fun m!633349 () Bool)

(assert (=> b!660968 m!633349))

(declare-fun m!633351 () Bool)

(assert (=> b!660957 m!633351))

(declare-fun m!633353 () Bool)

(assert (=> b!660967 m!633353))

(declare-fun m!633355 () Bool)

(assert (=> b!660967 m!633355))

(declare-fun m!633357 () Bool)

(assert (=> b!660958 m!633357))

(assert (=> b!660966 m!633349))

(declare-fun m!633359 () Bool)

(assert (=> start!59846 m!633359))

(declare-fun m!633361 () Bool)

(assert (=> b!660962 m!633361))

(declare-fun m!633363 () Bool)

(assert (=> b!660964 m!633363))

(check-sat (not b!660966) (not b!660962) (not b!660958) (not b!660965) (not b!660964) (not b!660959) (not b!660957) (not b!660961) (not b!660967) (not b!660968) (not start!59846))
