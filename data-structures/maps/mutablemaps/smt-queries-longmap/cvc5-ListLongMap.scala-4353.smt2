; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60162 () Bool)

(assert start!60162)

(declare-fun b!671177 () Bool)

(declare-fun res!438055 () Bool)

(declare-fun e!383596 () Bool)

(assert (=> b!671177 (=> (not res!438055) (not e!383596))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39165 0))(
  ( (array!39166 (arr!18771 (Array (_ BitVec 32) (_ BitVec 64))) (size!19135 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39165)

(assert (=> b!671177 (= res!438055 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19135 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671179 () Bool)

(declare-fun res!438057 () Bool)

(assert (=> b!671179 (=> (not res!438057) (not e!383596))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671179 (= res!438057 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671180 () Bool)

(assert (=> b!671180 (= e!383596 (not true))))

(assert (=> b!671180 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun b!671181 () Bool)

(declare-fun res!438051 () Bool)

(assert (=> b!671181 (=> (not res!438051) (not e!383596))))

(declare-datatypes ((List!12865 0))(
  ( (Nil!12862) (Cons!12861 (h!13906 (_ BitVec 64)) (t!19101 List!12865)) )
))
(declare-fun acc!681 () List!12865)

(declare-fun contains!3408 (List!12865 (_ BitVec 64)) Bool)

(assert (=> b!671181 (= res!438051 (not (contains!3408 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671182 () Bool)

(declare-fun res!438049 () Bool)

(assert (=> b!671182 (=> (not res!438049) (not e!383596))))

(assert (=> b!671182 (= res!438049 (= (select (arr!18771 a!3626) from!3004) k!2843))))

(declare-fun b!671183 () Bool)

(declare-fun res!438054 () Bool)

(assert (=> b!671183 (=> (not res!438054) (not e!383596))))

(declare-fun arrayNoDuplicates!0 (array!39165 (_ BitVec 32) List!12865) Bool)

(assert (=> b!671183 (= res!438054 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!671184 () Bool)

(declare-fun res!438053 () Bool)

(assert (=> b!671184 (=> (not res!438053) (not e!383596))))

(assert (=> b!671184 (= res!438053 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12862))))

(declare-fun b!671185 () Bool)

(declare-fun res!438059 () Bool)

(assert (=> b!671185 (=> (not res!438059) (not e!383596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671185 (= res!438059 (validKeyInArray!0 k!2843))))

(declare-fun b!671186 () Bool)

(declare-fun res!438048 () Bool)

(assert (=> b!671186 (=> (not res!438048) (not e!383596))))

(assert (=> b!671186 (= res!438048 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19135 a!3626))))))

(declare-fun res!438047 () Bool)

(assert (=> start!60162 (=> (not res!438047) (not e!383596))))

(assert (=> start!60162 (= res!438047 (and (bvslt (size!19135 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19135 a!3626))))))

(assert (=> start!60162 e!383596))

(assert (=> start!60162 true))

(declare-fun array_inv!14545 (array!39165) Bool)

(assert (=> start!60162 (array_inv!14545 a!3626)))

(declare-fun b!671178 () Bool)

(declare-fun res!438056 () Bool)

(assert (=> b!671178 (=> (not res!438056) (not e!383596))))

(declare-fun e!383592 () Bool)

(assert (=> b!671178 (= res!438056 e!383592)))

(declare-fun res!438062 () Bool)

(assert (=> b!671178 (=> res!438062 e!383592)))

(declare-fun e!383594 () Bool)

(assert (=> b!671178 (= res!438062 e!383594)))

(declare-fun res!438060 () Bool)

(assert (=> b!671178 (=> (not res!438060) (not e!383594))))

(assert (=> b!671178 (= res!438060 (bvsgt from!3004 i!1382))))

(declare-fun b!671187 () Bool)

(assert (=> b!671187 (= e!383594 (contains!3408 acc!681 k!2843))))

(declare-fun b!671188 () Bool)

(declare-fun e!383593 () Bool)

(assert (=> b!671188 (= e!383592 e!383593)))

(declare-fun res!438050 () Bool)

(assert (=> b!671188 (=> (not res!438050) (not e!383593))))

(assert (=> b!671188 (= res!438050 (bvsle from!3004 i!1382))))

(declare-fun b!671189 () Bool)

(assert (=> b!671189 (= e!383593 (not (contains!3408 acc!681 k!2843)))))

(declare-fun b!671190 () Bool)

(declare-fun res!438058 () Bool)

(assert (=> b!671190 (=> (not res!438058) (not e!383596))))

(assert (=> b!671190 (= res!438058 (not (contains!3408 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671191 () Bool)

(declare-fun res!438052 () Bool)

(assert (=> b!671191 (=> (not res!438052) (not e!383596))))

(assert (=> b!671191 (= res!438052 (validKeyInArray!0 (select (arr!18771 a!3626) from!3004)))))

(declare-fun b!671192 () Bool)

(declare-fun res!438061 () Bool)

(assert (=> b!671192 (=> (not res!438061) (not e!383596))))

(declare-fun noDuplicate!655 (List!12865) Bool)

(assert (=> b!671192 (= res!438061 (noDuplicate!655 acc!681))))

(assert (= (and start!60162 res!438047) b!671192))

(assert (= (and b!671192 res!438061) b!671181))

(assert (= (and b!671181 res!438051) b!671190))

(assert (= (and b!671190 res!438058) b!671178))

(assert (= (and b!671178 res!438060) b!671187))

(assert (= (and b!671178 (not res!438062)) b!671188))

(assert (= (and b!671188 res!438050) b!671189))

(assert (= (and b!671178 res!438056) b!671184))

(assert (= (and b!671184 res!438053) b!671183))

(assert (= (and b!671183 res!438054) b!671186))

(assert (= (and b!671186 res!438048) b!671185))

(assert (= (and b!671185 res!438059) b!671179))

(assert (= (and b!671179 res!438057) b!671177))

(assert (= (and b!671177 res!438055) b!671191))

(assert (= (and b!671191 res!438052) b!671182))

(assert (= (and b!671182 res!438049) b!671180))

(declare-fun m!640755 () Bool)

(assert (=> b!671185 m!640755))

(declare-fun m!640757 () Bool)

(assert (=> b!671191 m!640757))

(assert (=> b!671191 m!640757))

(declare-fun m!640759 () Bool)

(assert (=> b!671191 m!640759))

(declare-fun m!640761 () Bool)

(assert (=> b!671183 m!640761))

(declare-fun m!640763 () Bool)

(assert (=> b!671181 m!640763))

(declare-fun m!640765 () Bool)

(assert (=> b!671192 m!640765))

(assert (=> b!671182 m!640757))

(declare-fun m!640767 () Bool)

(assert (=> b!671187 m!640767))

(declare-fun m!640769 () Bool)

(assert (=> b!671190 m!640769))

(declare-fun m!640771 () Bool)

(assert (=> b!671184 m!640771))

(declare-fun m!640773 () Bool)

(assert (=> b!671179 m!640773))

(assert (=> b!671189 m!640767))

(declare-fun m!640775 () Bool)

(assert (=> b!671180 m!640775))

(declare-fun m!640777 () Bool)

(assert (=> start!60162 m!640777))

(push 1)

(assert (not b!671180))

(assert (not b!671192))

(assert (not b!671190))

(assert (not b!671187))

(assert (not b!671191))

(assert (not b!671189))

(assert (not start!60162))

(assert (not b!671181))

(assert (not b!671179))

(assert (not b!671185))

(assert (not b!671183))

(assert (not b!671184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

