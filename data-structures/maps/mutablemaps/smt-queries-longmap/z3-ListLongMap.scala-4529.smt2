; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62660 () Bool)

(assert start!62660)

(declare-fun b!707018 () Bool)

(declare-fun res!471014 () Bool)

(declare-fun e!397959 () Bool)

(assert (=> b!707018 (=> (not res!471014) (not e!397959))))

(declare-datatypes ((List!13394 0))(
  ( (Nil!13391) (Cons!13390 (h!14435 (_ BitVec 64)) (t!19684 List!13394)) )
))
(declare-fun acc!652 () List!13394)

(declare-fun contains!3937 (List!13394 (_ BitVec 64)) Bool)

(assert (=> b!707018 (= res!471014 (not (contains!3937 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707019 () Bool)

(declare-fun res!471017 () Bool)

(assert (=> b!707019 (=> (not res!471017) (not e!397959))))

(declare-fun newAcc!49 () List!13394)

(declare-fun subseq!381 (List!13394 List!13394) Bool)

(assert (=> b!707019 (= res!471017 (subseq!381 acc!652 newAcc!49))))

(declare-fun b!707020 () Bool)

(declare-fun res!471008 () Bool)

(assert (=> b!707020 (=> (not res!471008) (not e!397959))))

(declare-datatypes ((array!40295 0))(
  ( (array!40296 (arr!19300 (Array (_ BitVec 32) (_ BitVec 64))) (size!19683 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40295)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40295 (_ BitVec 32) List!13394) Bool)

(assert (=> b!707020 (= res!471008 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun res!471015 () Bool)

(assert (=> start!62660 (=> (not res!471015) (not e!397959))))

(assert (=> start!62660 (= res!471015 (and (bvslt (size!19683 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19683 a!3591))))))

(assert (=> start!62660 e!397959))

(assert (=> start!62660 true))

(declare-fun array_inv!15074 (array!40295) Bool)

(assert (=> start!62660 (array_inv!15074 a!3591)))

(declare-fun b!707021 () Bool)

(assert (=> b!707021 (= e!397959 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!707022 () Bool)

(declare-fun res!471009 () Bool)

(assert (=> b!707022 (=> (not res!471009) (not e!397959))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707022 (= res!471009 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!707023 () Bool)

(declare-fun res!471005 () Bool)

(assert (=> b!707023 (=> (not res!471005) (not e!397959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707023 (= res!471005 (validKeyInArray!0 k0!2824))))

(declare-fun b!707024 () Bool)

(declare-fun res!471013 () Bool)

(assert (=> b!707024 (=> (not res!471013) (not e!397959))))

(assert (=> b!707024 (= res!471013 (contains!3937 newAcc!49 k0!2824))))

(declare-fun b!707025 () Bool)

(declare-fun res!471007 () Bool)

(assert (=> b!707025 (=> (not res!471007) (not e!397959))))

(assert (=> b!707025 (= res!471007 (not (contains!3937 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707026 () Bool)

(declare-fun res!471016 () Bool)

(assert (=> b!707026 (=> (not res!471016) (not e!397959))))

(assert (=> b!707026 (= res!471016 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19683 a!3591)))))

(declare-fun b!707027 () Bool)

(declare-fun res!471010 () Bool)

(assert (=> b!707027 (=> (not res!471010) (not e!397959))))

(assert (=> b!707027 (= res!471010 (not (contains!3937 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707028 () Bool)

(declare-fun res!471003 () Bool)

(assert (=> b!707028 (=> (not res!471003) (not e!397959))))

(assert (=> b!707028 (= res!471003 (not (contains!3937 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707029 () Bool)

(declare-fun res!471012 () Bool)

(assert (=> b!707029 (=> (not res!471012) (not e!397959))))

(declare-fun -!346 (List!13394 (_ BitVec 64)) List!13394)

(assert (=> b!707029 (= res!471012 (= (-!346 newAcc!49 k0!2824) acc!652))))

(declare-fun b!707030 () Bool)

(declare-fun res!471002 () Bool)

(assert (=> b!707030 (=> (not res!471002) (not e!397959))))

(declare-fun noDuplicate!1184 (List!13394) Bool)

(assert (=> b!707030 (= res!471002 (noDuplicate!1184 acc!652))))

(declare-fun b!707031 () Bool)

(declare-fun res!471011 () Bool)

(assert (=> b!707031 (=> (not res!471011) (not e!397959))))

(assert (=> b!707031 (= res!471011 (validKeyInArray!0 (select (arr!19300 a!3591) from!2969)))))

(declare-fun b!707032 () Bool)

(declare-fun res!471004 () Bool)

(assert (=> b!707032 (=> (not res!471004) (not e!397959))))

(assert (=> b!707032 (= res!471004 (not (contains!3937 acc!652 k0!2824)))))

(declare-fun b!707033 () Bool)

(declare-fun res!471006 () Bool)

(assert (=> b!707033 (=> (not res!471006) (not e!397959))))

(assert (=> b!707033 (= res!471006 (noDuplicate!1184 newAcc!49))))

(assert (= (and start!62660 res!471015) b!707030))

(assert (= (and b!707030 res!471002) b!707033))

(assert (= (and b!707033 res!471006) b!707018))

(assert (= (and b!707018 res!471014) b!707027))

(assert (= (and b!707027 res!471010) b!707022))

(assert (= (and b!707022 res!471009) b!707032))

(assert (= (and b!707032 res!471004) b!707023))

(assert (= (and b!707023 res!471005) b!707020))

(assert (= (and b!707020 res!471008) b!707019))

(assert (= (and b!707019 res!471017) b!707024))

(assert (= (and b!707024 res!471013) b!707029))

(assert (= (and b!707029 res!471012) b!707028))

(assert (= (and b!707028 res!471003) b!707025))

(assert (= (and b!707025 res!471007) b!707026))

(assert (= (and b!707026 res!471016) b!707031))

(assert (= (and b!707031 res!471011) b!707021))

(declare-fun m!664739 () Bool)

(assert (=> b!707030 m!664739))

(declare-fun m!664741 () Bool)

(assert (=> b!707020 m!664741))

(declare-fun m!664743 () Bool)

(assert (=> start!62660 m!664743))

(declare-fun m!664745 () Bool)

(assert (=> b!707024 m!664745))

(declare-fun m!664747 () Bool)

(assert (=> b!707031 m!664747))

(assert (=> b!707031 m!664747))

(declare-fun m!664749 () Bool)

(assert (=> b!707031 m!664749))

(declare-fun m!664751 () Bool)

(assert (=> b!707025 m!664751))

(declare-fun m!664753 () Bool)

(assert (=> b!707029 m!664753))

(declare-fun m!664755 () Bool)

(assert (=> b!707033 m!664755))

(declare-fun m!664757 () Bool)

(assert (=> b!707018 m!664757))

(declare-fun m!664759 () Bool)

(assert (=> b!707027 m!664759))

(declare-fun m!664761 () Bool)

(assert (=> b!707022 m!664761))

(declare-fun m!664763 () Bool)

(assert (=> b!707019 m!664763))

(declare-fun m!664765 () Bool)

(assert (=> b!707028 m!664765))

(declare-fun m!664767 () Bool)

(assert (=> b!707032 m!664767))

(declare-fun m!664769 () Bool)

(assert (=> b!707023 m!664769))

(check-sat (not b!707024) (not b!707019) (not b!707022) (not b!707028) (not b!707018) (not b!707023) (not b!707033) (not b!707027) (not b!707032) (not b!707029) (not b!707020) (not b!707030) (not b!707031) (not b!707025) (not start!62660))
(check-sat)
