; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32360 () Bool)

(assert start!32360)

(declare-fun b!321927 () Bool)

(declare-fun res!176071 () Bool)

(declare-fun e!199341 () Bool)

(assert (=> b!321927 (=> (not res!176071) (not e!199341))))

(declare-datatypes ((array!16495 0))(
  ( (array!16496 (arr!7802 (Array (_ BitVec 32) (_ BitVec 64))) (size!8154 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16495)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2944 0))(
  ( (MissingZero!2944 (index!13952 (_ BitVec 32))) (Found!2944 (index!13953 (_ BitVec 32))) (Intermediate!2944 (undefined!3756 Bool) (index!13954 (_ BitVec 32)) (x!32183 (_ BitVec 32))) (Undefined!2944) (MissingVacant!2944 (index!13955 (_ BitVec 32))) )
))
(declare-fun lt!156350 () SeekEntryResult!2944)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16495 (_ BitVec 32)) SeekEntryResult!2944)

(assert (=> b!321927 (= res!176071 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156350))))

(declare-fun b!321928 () Bool)

(declare-fun res!176073 () Bool)

(declare-fun e!199342 () Bool)

(assert (=> b!321928 (=> (not res!176073) (not e!199342))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321928 (= res!176073 (and (= (size!8154 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8154 a!3305))))))

(declare-fun b!321929 () Bool)

(declare-fun res!176072 () Bool)

(assert (=> b!321929 (=> (not res!176072) (not e!199342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16495 (_ BitVec 32)) Bool)

(assert (=> b!321929 (= res!176072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321930 () Bool)

(declare-fun res!176065 () Bool)

(assert (=> b!321930 (=> (not res!176065) (not e!199342))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16495 (_ BitVec 32)) SeekEntryResult!2944)

(assert (=> b!321930 (= res!176065 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2944 i!1250)))))

(declare-fun b!321931 () Bool)

(declare-fun res!176069 () Bool)

(assert (=> b!321931 (=> (not res!176069) (not e!199342))))

(declare-fun arrayContainsKey!0 (array!16495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321931 (= res!176069 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321933 () Bool)

(assert (=> b!321933 (= e!199342 e!199341)))

(declare-fun res!176064 () Bool)

(assert (=> b!321933 (=> (not res!176064) (not e!199341))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321933 (= res!176064 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156350))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321933 (= lt!156350 (Intermediate!2944 false resIndex!58 resX!58))))

(declare-fun lt!156349 () (_ BitVec 32))

(declare-fun b!321934 () Bool)

(assert (=> b!321934 (= e!199341 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge lt!156349 #b00000000000000000000000000000000) (bvslt lt!156349 (bvadd #b00000000000000000000000000000001 mask!3777)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321934 (= lt!156349 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321935 () Bool)

(declare-fun res!176070 () Bool)

(assert (=> b!321935 (=> (not res!176070) (not e!199341))))

(assert (=> b!321935 (= res!176070 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7802 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7802 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7802 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321936 () Bool)

(declare-fun res!176067 () Bool)

(assert (=> b!321936 (=> (not res!176067) (not e!199341))))

(assert (=> b!321936 (= res!176067 (and (= (select (arr!7802 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8154 a!3305))))))

(declare-fun b!321932 () Bool)

(declare-fun res!176068 () Bool)

(assert (=> b!321932 (=> (not res!176068) (not e!199342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321932 (= res!176068 (validKeyInArray!0 k0!2497))))

(declare-fun res!176066 () Bool)

(assert (=> start!32360 (=> (not res!176066) (not e!199342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32360 (= res!176066 (validMask!0 mask!3777))))

(assert (=> start!32360 e!199342))

(declare-fun array_inv!5756 (array!16495) Bool)

(assert (=> start!32360 (array_inv!5756 a!3305)))

(assert (=> start!32360 true))

(assert (= (and start!32360 res!176066) b!321928))

(assert (= (and b!321928 res!176073) b!321932))

(assert (= (and b!321932 res!176068) b!321931))

(assert (= (and b!321931 res!176069) b!321930))

(assert (= (and b!321930 res!176065) b!321929))

(assert (= (and b!321929 res!176072) b!321933))

(assert (= (and b!321933 res!176064) b!321936))

(assert (= (and b!321936 res!176067) b!321927))

(assert (= (and b!321927 res!176071) b!321935))

(assert (= (and b!321935 res!176070) b!321934))

(declare-fun m!329917 () Bool)

(assert (=> b!321933 m!329917))

(assert (=> b!321933 m!329917))

(declare-fun m!329919 () Bool)

(assert (=> b!321933 m!329919))

(declare-fun m!329921 () Bool)

(assert (=> b!321929 m!329921))

(declare-fun m!329923 () Bool)

(assert (=> b!321931 m!329923))

(declare-fun m!329925 () Bool)

(assert (=> b!321930 m!329925))

(declare-fun m!329927 () Bool)

(assert (=> start!32360 m!329927))

(declare-fun m!329929 () Bool)

(assert (=> start!32360 m!329929))

(declare-fun m!329931 () Bool)

(assert (=> b!321936 m!329931))

(declare-fun m!329933 () Bool)

(assert (=> b!321932 m!329933))

(declare-fun m!329935 () Bool)

(assert (=> b!321927 m!329935))

(declare-fun m!329937 () Bool)

(assert (=> b!321935 m!329937))

(declare-fun m!329939 () Bool)

(assert (=> b!321934 m!329939))

(check-sat (not b!321929) (not b!321932) (not start!32360) (not b!321931) (not b!321930) (not b!321933) (not b!321934) (not b!321927))
(check-sat)
