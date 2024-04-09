; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62534 () Bool)

(assert start!62534)

(declare-fun b!703977 () Bool)

(declare-fun res!467971 () Bool)

(declare-fun e!397582 () Bool)

(assert (=> b!703977 (=> (not res!467971) (not e!397582))))

(declare-datatypes ((List!13331 0))(
  ( (Nil!13328) (Cons!13327 (h!14372 (_ BitVec 64)) (t!19621 List!13331)) )
))
(declare-fun acc!652 () List!13331)

(declare-fun contains!3874 (List!13331 (_ BitVec 64)) Bool)

(assert (=> b!703977 (= res!467971 (not (contains!3874 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703978 () Bool)

(declare-fun res!467976 () Bool)

(assert (=> b!703978 (=> (not res!467976) (not e!397582))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40169 0))(
  ( (array!40170 (arr!19237 (Array (_ BitVec 32) (_ BitVec 64))) (size!19620 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40169)

(assert (=> b!703978 (= res!467976 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19620 a!3591)))))

(declare-fun res!467963 () Bool)

(assert (=> start!62534 (=> (not res!467963) (not e!397582))))

(assert (=> start!62534 (= res!467963 (and (bvslt (size!19620 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19620 a!3591))))))

(assert (=> start!62534 e!397582))

(assert (=> start!62534 true))

(declare-fun array_inv!15011 (array!40169) Bool)

(assert (=> start!62534 (array_inv!15011 a!3591)))

(declare-fun b!703979 () Bool)

(declare-fun res!467973 () Bool)

(assert (=> b!703979 (=> (not res!467973) (not e!397582))))

(declare-fun noDuplicate!1121 (List!13331) Bool)

(assert (=> b!703979 (= res!467973 (noDuplicate!1121 acc!652))))

(declare-fun b!703980 () Bool)

(declare-fun res!467975 () Bool)

(assert (=> b!703980 (=> (not res!467975) (not e!397582))))

(declare-fun arrayNoDuplicates!0 (array!40169 (_ BitVec 32) List!13331) Bool)

(assert (=> b!703980 (= res!467975 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703981 () Bool)

(declare-fun res!467966 () Bool)

(assert (=> b!703981 (=> (not res!467966) (not e!397582))))

(declare-fun newAcc!49 () List!13331)

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!703981 (= res!467966 (contains!3874 newAcc!49 k0!2824))))

(declare-fun b!703982 () Bool)

(declare-fun res!467970 () Bool)

(assert (=> b!703982 (=> (not res!467970) (not e!397582))))

(declare-fun arrayContainsKey!0 (array!40169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703982 (= res!467970 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!703983 () Bool)

(declare-fun res!467969 () Bool)

(assert (=> b!703983 (=> (not res!467969) (not e!397582))))

(assert (=> b!703983 (= res!467969 (not (contains!3874 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703984 () Bool)

(declare-fun res!467964 () Bool)

(assert (=> b!703984 (=> (not res!467964) (not e!397582))))

(assert (=> b!703984 (= res!467964 (not (contains!3874 acc!652 k0!2824)))))

(declare-fun b!703985 () Bool)

(assert (=> b!703985 (= e!397582 false)))

(declare-fun lt!317772 () Bool)

(assert (=> b!703985 (= lt!317772 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703986 () Bool)

(declare-fun res!467978 () Bool)

(assert (=> b!703986 (=> (not res!467978) (not e!397582))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703986 (= res!467978 (not (validKeyInArray!0 (select (arr!19237 a!3591) from!2969))))))

(declare-fun b!703987 () Bool)

(declare-fun res!467972 () Bool)

(assert (=> b!703987 (=> (not res!467972) (not e!397582))))

(assert (=> b!703987 (= res!467972 (validKeyInArray!0 k0!2824))))

(declare-fun b!703988 () Bool)

(declare-fun res!467968 () Bool)

(assert (=> b!703988 (=> (not res!467968) (not e!397582))))

(declare-fun -!283 (List!13331 (_ BitVec 64)) List!13331)

(assert (=> b!703988 (= res!467968 (= (-!283 newAcc!49 k0!2824) acc!652))))

(declare-fun b!703989 () Bool)

(declare-fun res!467967 () Bool)

(assert (=> b!703989 (=> (not res!467967) (not e!397582))))

(assert (=> b!703989 (= res!467967 (noDuplicate!1121 newAcc!49))))

(declare-fun b!703990 () Bool)

(declare-fun res!467977 () Bool)

(assert (=> b!703990 (=> (not res!467977) (not e!397582))))

(assert (=> b!703990 (= res!467977 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703991 () Bool)

(declare-fun res!467974 () Bool)

(assert (=> b!703991 (=> (not res!467974) (not e!397582))))

(assert (=> b!703991 (= res!467974 (not (contains!3874 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703992 () Bool)

(declare-fun res!467961 () Bool)

(assert (=> b!703992 (=> (not res!467961) (not e!397582))))

(assert (=> b!703992 (= res!467961 (not (contains!3874 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703993 () Bool)

(declare-fun res!467965 () Bool)

(assert (=> b!703993 (=> (not res!467965) (not e!397582))))

(declare-fun subseq!318 (List!13331 List!13331) Bool)

(assert (=> b!703993 (= res!467965 (subseq!318 acc!652 newAcc!49))))

(declare-fun b!703994 () Bool)

(declare-fun res!467962 () Bool)

(assert (=> b!703994 (=> (not res!467962) (not e!397582))))

(assert (=> b!703994 (= res!467962 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and start!62534 res!467963) b!703979))

(assert (= (and b!703979 res!467973) b!703989))

(assert (= (and b!703989 res!467967) b!703977))

(assert (= (and b!703977 res!467971) b!703991))

(assert (= (and b!703991 res!467974) b!703982))

(assert (= (and b!703982 res!467970) b!703984))

(assert (= (and b!703984 res!467964) b!703987))

(assert (= (and b!703987 res!467972) b!703980))

(assert (= (and b!703980 res!467975) b!703993))

(assert (= (and b!703993 res!467965) b!703981))

(assert (= (and b!703981 res!467966) b!703988))

(assert (= (and b!703988 res!467968) b!703983))

(assert (= (and b!703983 res!467969) b!703992))

(assert (= (and b!703992 res!467961) b!703978))

(assert (= (and b!703978 res!467976) b!703986))

(assert (= (and b!703986 res!467978) b!703990))

(assert (= (and b!703990 res!467977) b!703994))

(assert (= (and b!703994 res!467962) b!703985))

(declare-fun m!662643 () Bool)

(assert (=> b!703980 m!662643))

(declare-fun m!662645 () Bool)

(assert (=> b!703983 m!662645))

(declare-fun m!662647 () Bool)

(assert (=> b!703985 m!662647))

(declare-fun m!662649 () Bool)

(assert (=> b!703993 m!662649))

(declare-fun m!662651 () Bool)

(assert (=> b!703987 m!662651))

(declare-fun m!662653 () Bool)

(assert (=> b!703986 m!662653))

(assert (=> b!703986 m!662653))

(declare-fun m!662655 () Bool)

(assert (=> b!703986 m!662655))

(declare-fun m!662657 () Bool)

(assert (=> b!703988 m!662657))

(declare-fun m!662659 () Bool)

(assert (=> b!703991 m!662659))

(declare-fun m!662661 () Bool)

(assert (=> b!703982 m!662661))

(declare-fun m!662663 () Bool)

(assert (=> b!703984 m!662663))

(declare-fun m!662665 () Bool)

(assert (=> b!703992 m!662665))

(declare-fun m!662667 () Bool)

(assert (=> b!703979 m!662667))

(declare-fun m!662669 () Bool)

(assert (=> start!62534 m!662669))

(declare-fun m!662671 () Bool)

(assert (=> b!703994 m!662671))

(declare-fun m!662673 () Bool)

(assert (=> b!703989 m!662673))

(declare-fun m!662675 () Bool)

(assert (=> b!703977 m!662675))

(declare-fun m!662677 () Bool)

(assert (=> b!703981 m!662677))

(check-sat (not b!703981) (not b!703993) (not b!703977) (not start!62534) (not b!703980) (not b!703992) (not b!703991) (not b!703984) (not b!703989) (not b!703983) (not b!703982) (not b!703988) (not b!703985) (not b!703986) (not b!703987) (not b!703979) (not b!703994))
(check-sat)
