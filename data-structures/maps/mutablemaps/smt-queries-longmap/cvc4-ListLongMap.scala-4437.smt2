; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61708 () Bool)

(assert start!61708)

(declare-fun res!454571 () Bool)

(declare-fun e!392899 () Bool)

(assert (=> start!61708 (=> (not res!454571) (not e!392899))))

(declare-datatypes ((array!39718 0))(
  ( (array!39719 (arr!19025 (Array (_ BitVec 32) (_ BitVec 64))) (size!19408 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39718)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61708 (= res!454571 (and (bvslt (size!19408 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19408 a!3626))))))

(assert (=> start!61708 e!392899))

(assert (=> start!61708 true))

(declare-fun array_inv!14799 (array!39718) Bool)

(assert (=> start!61708 (array_inv!14799 a!3626)))

(declare-fun b!689985 () Bool)

(declare-fun e!392900 () Bool)

(declare-fun e!392901 () Bool)

(assert (=> b!689985 (= e!392900 e!392901)))

(declare-fun res!454570 () Bool)

(assert (=> b!689985 (=> (not res!454570) (not e!392901))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!689985 (= res!454570 (bvsle from!3004 i!1382))))

(declare-fun b!689986 () Bool)

(declare-fun res!454567 () Bool)

(assert (=> b!689986 (=> (not res!454567) (not e!392899))))

(declare-datatypes ((List!13119 0))(
  ( (Nil!13116) (Cons!13115 (h!14160 (_ BitVec 64)) (t!19394 List!13119)) )
))
(declare-fun acc!681 () List!13119)

(declare-fun contains!3662 (List!13119 (_ BitVec 64)) Bool)

(assert (=> b!689986 (= res!454567 (not (contains!3662 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689987 () Bool)

(declare-fun res!454563 () Bool)

(assert (=> b!689987 (=> (not res!454563) (not e!392899))))

(declare-fun noDuplicate!909 (List!13119) Bool)

(assert (=> b!689987 (= res!454563 (noDuplicate!909 acc!681))))

(declare-fun b!689988 () Bool)

(declare-fun res!454568 () Bool)

(assert (=> b!689988 (=> (not res!454568) (not e!392899))))

(assert (=> b!689988 (= res!454568 (not (contains!3662 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689989 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!689989 (= e!392901 (not (contains!3662 acc!681 k!2843)))))

(declare-fun b!689990 () Bool)

(declare-fun e!392898 () Bool)

(assert (=> b!689990 (= e!392898 (contains!3662 acc!681 k!2843))))

(declare-fun b!689991 () Bool)

(assert (=> b!689991 (= e!392899 false)))

(declare-fun lt!316353 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39718 (_ BitVec 32) List!13119) Bool)

(assert (=> b!689991 (= lt!316353 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689992 () Bool)

(declare-fun res!454565 () Bool)

(assert (=> b!689992 (=> (not res!454565) (not e!392899))))

(assert (=> b!689992 (= res!454565 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13116))))

(declare-fun b!689993 () Bool)

(declare-fun res!454564 () Bool)

(assert (=> b!689993 (=> (not res!454564) (not e!392899))))

(assert (=> b!689993 (= res!454564 e!392900)))

(declare-fun res!454566 () Bool)

(assert (=> b!689993 (=> res!454566 e!392900)))

(assert (=> b!689993 (= res!454566 e!392898)))

(declare-fun res!454569 () Bool)

(assert (=> b!689993 (=> (not res!454569) (not e!392898))))

(assert (=> b!689993 (= res!454569 (bvsgt from!3004 i!1382))))

(assert (= (and start!61708 res!454571) b!689987))

(assert (= (and b!689987 res!454563) b!689986))

(assert (= (and b!689986 res!454567) b!689988))

(assert (= (and b!689988 res!454568) b!689993))

(assert (= (and b!689993 res!454569) b!689990))

(assert (= (and b!689993 (not res!454566)) b!689985))

(assert (= (and b!689985 res!454570) b!689989))

(assert (= (and b!689993 res!454564) b!689992))

(assert (= (and b!689992 res!454565) b!689991))

(declare-fun m!653665 () Bool)

(assert (=> b!689986 m!653665))

(declare-fun m!653667 () Bool)

(assert (=> b!689991 m!653667))

(declare-fun m!653669 () Bool)

(assert (=> b!689989 m!653669))

(declare-fun m!653671 () Bool)

(assert (=> b!689988 m!653671))

(declare-fun m!653673 () Bool)

(assert (=> b!689987 m!653673))

(assert (=> b!689990 m!653669))

(declare-fun m!653675 () Bool)

(assert (=> start!61708 m!653675))

(declare-fun m!653677 () Bool)

(assert (=> b!689992 m!653677))

(push 1)

(assert (not b!689991))

(assert (not start!61708))

(assert (not b!689990))

(assert (not b!689987))

(assert (not b!689988))

(assert (not b!689992))

(assert (not b!689986))

(assert (not b!689989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

