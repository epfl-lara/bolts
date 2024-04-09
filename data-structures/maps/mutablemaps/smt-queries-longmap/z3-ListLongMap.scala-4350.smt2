; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60146 () Bool)

(assert start!60146)

(declare-fun b!670793 () Bool)

(declare-fun res!437671 () Bool)

(declare-fun e!383476 () Bool)

(assert (=> b!670793 (=> (not res!437671) (not e!383476))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39149 0))(
  ( (array!39150 (arr!18763 (Array (_ BitVec 32) (_ BitVec 64))) (size!19127 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39149)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!670793 (= res!437671 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19127 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!670794 () Bool)

(declare-fun res!437673 () Bool)

(assert (=> b!670794 (=> (not res!437673) (not e!383476))))

(declare-datatypes ((List!12857 0))(
  ( (Nil!12854) (Cons!12853 (h!13898 (_ BitVec 64)) (t!19093 List!12857)) )
))
(declare-fun arrayNoDuplicates!0 (array!39149 (_ BitVec 32) List!12857) Bool)

(assert (=> b!670794 (= res!437673 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12854))))

(declare-fun b!670795 () Bool)

(declare-fun e!383475 () Bool)

(declare-fun e!383472 () Bool)

(assert (=> b!670795 (= e!383475 e!383472)))

(declare-fun res!437665 () Bool)

(assert (=> b!670795 (=> (not res!437665) (not e!383472))))

(assert (=> b!670795 (= res!437665 (bvsle from!3004 i!1382))))

(declare-fun b!670796 () Bool)

(declare-fun e!383473 () Bool)

(declare-fun acc!681 () List!12857)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3400 (List!12857 (_ BitVec 64)) Bool)

(assert (=> b!670796 (= e!383473 (contains!3400 acc!681 k0!2843))))

(declare-fun b!670797 () Bool)

(declare-fun res!437676 () Bool)

(assert (=> b!670797 (=> (not res!437676) (not e!383476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670797 (= res!437676 (validKeyInArray!0 (select (arr!18763 a!3626) from!3004)))))

(declare-fun b!670799 () Bool)

(declare-fun res!437664 () Bool)

(assert (=> b!670799 (=> (not res!437664) (not e!383476))))

(declare-fun noDuplicate!647 (List!12857) Bool)

(assert (=> b!670799 (= res!437664 (noDuplicate!647 acc!681))))

(declare-fun b!670800 () Bool)

(declare-fun res!437678 () Bool)

(assert (=> b!670800 (=> (not res!437678) (not e!383476))))

(assert (=> b!670800 (= res!437678 (not (contains!3400 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670801 () Bool)

(assert (=> b!670801 (= e!383476 (not true))))

(declare-fun arrayContainsKey!0 (array!39149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670801 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun b!670802 () Bool)

(declare-fun res!437677 () Bool)

(assert (=> b!670802 (=> (not res!437677) (not e!383476))))

(assert (=> b!670802 (= res!437677 (= (select (arr!18763 a!3626) from!3004) k0!2843))))

(declare-fun b!670803 () Bool)

(declare-fun res!437675 () Bool)

(assert (=> b!670803 (=> (not res!437675) (not e!383476))))

(assert (=> b!670803 (= res!437675 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670804 () Bool)

(declare-fun res!437666 () Bool)

(assert (=> b!670804 (=> (not res!437666) (not e!383476))))

(assert (=> b!670804 (= res!437666 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670805 () Bool)

(declare-fun res!437663 () Bool)

(assert (=> b!670805 (=> (not res!437663) (not e!383476))))

(assert (=> b!670805 (= res!437663 (validKeyInArray!0 k0!2843))))

(declare-fun b!670806 () Bool)

(declare-fun res!437667 () Bool)

(assert (=> b!670806 (=> (not res!437667) (not e!383476))))

(assert (=> b!670806 (= res!437667 (not (contains!3400 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670798 () Bool)

(declare-fun res!437670 () Bool)

(assert (=> b!670798 (=> (not res!437670) (not e!383476))))

(assert (=> b!670798 (= res!437670 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19127 a!3626))))))

(declare-fun res!437672 () Bool)

(assert (=> start!60146 (=> (not res!437672) (not e!383476))))

(assert (=> start!60146 (= res!437672 (and (bvslt (size!19127 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19127 a!3626))))))

(assert (=> start!60146 e!383476))

(assert (=> start!60146 true))

(declare-fun array_inv!14537 (array!39149) Bool)

(assert (=> start!60146 (array_inv!14537 a!3626)))

(declare-fun b!670807 () Bool)

(assert (=> b!670807 (= e!383472 (not (contains!3400 acc!681 k0!2843)))))

(declare-fun b!670808 () Bool)

(declare-fun res!437669 () Bool)

(assert (=> b!670808 (=> (not res!437669) (not e!383476))))

(assert (=> b!670808 (= res!437669 e!383475)))

(declare-fun res!437668 () Bool)

(assert (=> b!670808 (=> res!437668 e!383475)))

(assert (=> b!670808 (= res!437668 e!383473)))

(declare-fun res!437674 () Bool)

(assert (=> b!670808 (=> (not res!437674) (not e!383473))))

(assert (=> b!670808 (= res!437674 (bvsgt from!3004 i!1382))))

(assert (= (and start!60146 res!437672) b!670799))

(assert (= (and b!670799 res!437664) b!670806))

(assert (= (and b!670806 res!437667) b!670800))

(assert (= (and b!670800 res!437678) b!670808))

(assert (= (and b!670808 res!437674) b!670796))

(assert (= (and b!670808 (not res!437668)) b!670795))

(assert (= (and b!670795 res!437665) b!670807))

(assert (= (and b!670808 res!437669) b!670794))

(assert (= (and b!670794 res!437673) b!670803))

(assert (= (and b!670803 res!437675) b!670798))

(assert (= (and b!670798 res!437670) b!670805))

(assert (= (and b!670805 res!437663) b!670804))

(assert (= (and b!670804 res!437666) b!670793))

(assert (= (and b!670793 res!437671) b!670797))

(assert (= (and b!670797 res!437676) b!670802))

(assert (= (and b!670802 res!437677) b!670801))

(declare-fun m!640563 () Bool)

(assert (=> b!670803 m!640563))

(declare-fun m!640565 () Bool)

(assert (=> b!670807 m!640565))

(declare-fun m!640567 () Bool)

(assert (=> b!670799 m!640567))

(declare-fun m!640569 () Bool)

(assert (=> b!670805 m!640569))

(declare-fun m!640571 () Bool)

(assert (=> b!670797 m!640571))

(assert (=> b!670797 m!640571))

(declare-fun m!640573 () Bool)

(assert (=> b!670797 m!640573))

(declare-fun m!640575 () Bool)

(assert (=> b!670801 m!640575))

(declare-fun m!640577 () Bool)

(assert (=> start!60146 m!640577))

(assert (=> b!670802 m!640571))

(declare-fun m!640579 () Bool)

(assert (=> b!670806 m!640579))

(assert (=> b!670796 m!640565))

(declare-fun m!640581 () Bool)

(assert (=> b!670794 m!640581))

(declare-fun m!640583 () Bool)

(assert (=> b!670800 m!640583))

(declare-fun m!640585 () Bool)

(assert (=> b!670804 m!640585))

(check-sat (not b!670803) (not b!670807) (not start!60146) (not b!670796) (not b!670805) (not b!670794) (not b!670797) (not b!670800) (not b!670804) (not b!670799) (not b!670801) (not b!670806))
