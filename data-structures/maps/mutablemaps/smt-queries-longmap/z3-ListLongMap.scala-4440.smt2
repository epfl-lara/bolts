; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61760 () Bool)

(assert start!61760)

(declare-fun b!690431 () Bool)

(declare-fun res!454992 () Bool)

(declare-fun e!393142 () Bool)

(assert (=> b!690431 (=> (not res!454992) (not e!393142))))

(declare-datatypes ((List!13127 0))(
  ( (Nil!13124) (Cons!13123 (h!14168 (_ BitVec 64)) (t!19402 List!13127)) )
))
(declare-fun acc!681 () List!13127)

(declare-fun contains!3670 (List!13127 (_ BitVec 64)) Bool)

(assert (=> b!690431 (= res!454992 (not (contains!3670 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690432 () Bool)

(declare-fun res!454993 () Bool)

(assert (=> b!690432 (=> (not res!454993) (not e!393142))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39737 0))(
  ( (array!39738 (arr!19033 (Array (_ BitVec 32) (_ BitVec 64))) (size!19416 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39737)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!690432 (= res!454993 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19416 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!690433 () Bool)

(declare-fun res!454988 () Bool)

(assert (=> b!690433 (=> (not res!454988) (not e!393142))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!690433 (= res!454988 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!690434 () Bool)

(declare-fun res!454995 () Bool)

(assert (=> b!690434 (=> (not res!454995) (not e!393142))))

(assert (=> b!690434 (= res!454995 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19416 a!3626))))))

(declare-fun b!690435 () Bool)

(declare-fun res!454990 () Bool)

(assert (=> b!690435 (=> (not res!454990) (not e!393142))))

(assert (=> b!690435 (= res!454990 (not (contains!3670 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!690436 () Bool)

(declare-fun res!454994 () Bool)

(assert (=> b!690436 (=> (not res!454994) (not e!393142))))

(declare-fun arrayNoDuplicates!0 (array!39737 (_ BitVec 32) List!13127) Bool)

(assert (=> b!690436 (= res!454994 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13124))))

(declare-fun b!690437 () Bool)

(declare-fun e!393140 () Bool)

(assert (=> b!690437 (= e!393140 (contains!3670 acc!681 k0!2843))))

(declare-fun b!690438 () Bool)

(declare-fun res!454986 () Bool)

(assert (=> b!690438 (=> (not res!454986) (not e!393142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!690438 (= res!454986 (validKeyInArray!0 k0!2843))))

(declare-fun b!690439 () Bool)

(declare-fun res!454989 () Bool)

(assert (=> b!690439 (=> (not res!454989) (not e!393142))))

(assert (=> b!690439 (= res!454989 (= (select (arr!19033 a!3626) from!3004) k0!2843))))

(declare-fun b!690440 () Bool)

(declare-fun res!454987 () Bool)

(assert (=> b!690440 (=> (not res!454987) (not e!393142))))

(assert (=> b!690440 (= res!454987 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!454997 () Bool)

(assert (=> start!61760 (=> (not res!454997) (not e!393142))))

(assert (=> start!61760 (= res!454997 (and (bvslt (size!19416 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19416 a!3626))))))

(assert (=> start!61760 e!393142))

(assert (=> start!61760 true))

(declare-fun array_inv!14807 (array!39737) Bool)

(assert (=> start!61760 (array_inv!14807 a!3626)))

(declare-fun b!690441 () Bool)

(declare-fun res!454998 () Bool)

(assert (=> b!690441 (=> (not res!454998) (not e!393142))))

(declare-fun noDuplicate!917 (List!13127) Bool)

(assert (=> b!690441 (= res!454998 (noDuplicate!917 acc!681))))

(declare-fun b!690442 () Bool)

(declare-fun res!454996 () Bool)

(assert (=> b!690442 (=> (not res!454996) (not e!393142))))

(declare-fun e!393138 () Bool)

(assert (=> b!690442 (= res!454996 e!393138)))

(declare-fun res!454991 () Bool)

(assert (=> b!690442 (=> res!454991 e!393138)))

(assert (=> b!690442 (= res!454991 e!393140)))

(declare-fun res!454985 () Bool)

(assert (=> b!690442 (=> (not res!454985) (not e!393140))))

(assert (=> b!690442 (= res!454985 (bvsgt from!3004 i!1382))))

(declare-fun b!690443 () Bool)

(assert (=> b!690443 (= e!393142 (not true))))

(assert (=> b!690443 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun b!690444 () Bool)

(declare-fun res!454999 () Bool)

(assert (=> b!690444 (=> (not res!454999) (not e!393142))))

(assert (=> b!690444 (= res!454999 (validKeyInArray!0 (select (arr!19033 a!3626) from!3004)))))

(declare-fun b!690445 () Bool)

(declare-fun e!393139 () Bool)

(assert (=> b!690445 (= e!393139 (not (contains!3670 acc!681 k0!2843)))))

(declare-fun b!690446 () Bool)

(assert (=> b!690446 (= e!393138 e!393139)))

(declare-fun res!455000 () Bool)

(assert (=> b!690446 (=> (not res!455000) (not e!393139))))

(assert (=> b!690446 (= res!455000 (bvsle from!3004 i!1382))))

(assert (= (and start!61760 res!454997) b!690441))

(assert (= (and b!690441 res!454998) b!690435))

(assert (= (and b!690435 res!454990) b!690431))

(assert (= (and b!690431 res!454992) b!690442))

(assert (= (and b!690442 res!454985) b!690437))

(assert (= (and b!690442 (not res!454991)) b!690446))

(assert (= (and b!690446 res!455000) b!690445))

(assert (= (and b!690442 res!454996) b!690436))

(assert (= (and b!690436 res!454994) b!690440))

(assert (= (and b!690440 res!454987) b!690434))

(assert (= (and b!690434 res!454995) b!690438))

(assert (= (and b!690438 res!454986) b!690433))

(assert (= (and b!690433 res!454988) b!690432))

(assert (= (and b!690432 res!454993) b!690444))

(assert (= (and b!690444 res!454999) b!690439))

(assert (= (and b!690439 res!454989) b!690443))

(declare-fun m!653919 () Bool)

(assert (=> b!690435 m!653919))

(declare-fun m!653921 () Bool)

(assert (=> b!690441 m!653921))

(declare-fun m!653923 () Bool)

(assert (=> b!690431 m!653923))

(declare-fun m!653925 () Bool)

(assert (=> b!690439 m!653925))

(declare-fun m!653927 () Bool)

(assert (=> b!690443 m!653927))

(declare-fun m!653929 () Bool)

(assert (=> b!690433 m!653929))

(declare-fun m!653931 () Bool)

(assert (=> b!690436 m!653931))

(declare-fun m!653933 () Bool)

(assert (=> b!690437 m!653933))

(assert (=> b!690445 m!653933))

(assert (=> b!690444 m!653925))

(assert (=> b!690444 m!653925))

(declare-fun m!653935 () Bool)

(assert (=> b!690444 m!653935))

(declare-fun m!653937 () Bool)

(assert (=> b!690440 m!653937))

(declare-fun m!653939 () Bool)

(assert (=> start!61760 m!653939))

(declare-fun m!653941 () Bool)

(assert (=> b!690438 m!653941))

(check-sat (not b!690445) (not b!690443) (not b!690436) (not b!690433) (not b!690437) (not b!690438) (not b!690435) (not b!690441) (not b!690431) (not b!690440) (not b!690444) (not start!61760))
