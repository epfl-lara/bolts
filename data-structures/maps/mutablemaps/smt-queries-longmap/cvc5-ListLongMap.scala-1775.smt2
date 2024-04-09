; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32358 () Bool)

(assert start!32358)

(declare-fun b!321897 () Bool)

(declare-fun res!176037 () Bool)

(declare-fun e!199331 () Bool)

(assert (=> b!321897 (=> (not res!176037) (not e!199331))))

(declare-datatypes ((array!16493 0))(
  ( (array!16494 (arr!7801 (Array (_ BitVec 32) (_ BitVec 64))) (size!8153 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16493)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2943 0))(
  ( (MissingZero!2943 (index!13948 (_ BitVec 32))) (Found!2943 (index!13949 (_ BitVec 32))) (Intermediate!2943 (undefined!3755 Bool) (index!13950 (_ BitVec 32)) (x!32182 (_ BitVec 32))) (Undefined!2943) (MissingVacant!2943 (index!13951 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16493 (_ BitVec 32)) SeekEntryResult!2943)

(assert (=> b!321897 (= res!176037 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2943 i!1250)))))

(declare-fun b!321898 () Bool)

(declare-fun res!176042 () Bool)

(assert (=> b!321898 (=> (not res!176042) (not e!199331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16493 (_ BitVec 32)) Bool)

(assert (=> b!321898 (= res!176042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!176043 () Bool)

(assert (=> start!32358 (=> (not res!176043) (not e!199331))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32358 (= res!176043 (validMask!0 mask!3777))))

(assert (=> start!32358 e!199331))

(declare-fun array_inv!5755 (array!16493) Bool)

(assert (=> start!32358 (array_inv!5755 a!3305)))

(assert (=> start!32358 true))

(declare-fun b!321899 () Bool)

(declare-fun res!176034 () Bool)

(declare-fun e!199333 () Bool)

(assert (=> b!321899 (=> (not res!176034) (not e!199333))))

(declare-fun lt!156344 () SeekEntryResult!2943)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16493 (_ BitVec 32)) SeekEntryResult!2943)

(assert (=> b!321899 (= res!176034 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156344))))

(declare-fun b!321900 () Bool)

(declare-fun res!176040 () Bool)

(assert (=> b!321900 (=> (not res!176040) (not e!199331))))

(assert (=> b!321900 (= res!176040 (and (= (size!8153 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8153 a!3305))))))

(declare-fun b!321901 () Bool)

(declare-fun res!176041 () Bool)

(assert (=> b!321901 (=> (not res!176041) (not e!199333))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!321901 (= res!176041 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7801 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7801 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7801 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321902 () Bool)

(declare-fun res!176036 () Bool)

(assert (=> b!321902 (=> (not res!176036) (not e!199333))))

(assert (=> b!321902 (= res!176036 (and (= (select (arr!7801 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8153 a!3305))))))

(declare-fun b!321903 () Bool)

(declare-fun res!176039 () Bool)

(assert (=> b!321903 (=> (not res!176039) (not e!199331))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321903 (= res!176039 (validKeyInArray!0 k!2497))))

(declare-fun b!321904 () Bool)

(declare-fun res!176035 () Bool)

(assert (=> b!321904 (=> (not res!176035) (not e!199331))))

(declare-fun arrayContainsKey!0 (array!16493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321904 (= res!176035 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun lt!156343 () (_ BitVec 32))

(declare-fun b!321905 () Bool)

(assert (=> b!321905 (= e!199333 (and (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge lt!156343 #b00000000000000000000000000000000) (bvslt lt!156343 (bvadd #b00000000000000000000000000000001 mask!3777)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321905 (= lt!156343 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321906 () Bool)

(assert (=> b!321906 (= e!199331 e!199333)))

(declare-fun res!176038 () Bool)

(assert (=> b!321906 (=> (not res!176038) (not e!199333))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321906 (= res!176038 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156344))))

(assert (=> b!321906 (= lt!156344 (Intermediate!2943 false resIndex!58 resX!58))))

(assert (= (and start!32358 res!176043) b!321900))

(assert (= (and b!321900 res!176040) b!321903))

(assert (= (and b!321903 res!176039) b!321904))

(assert (= (and b!321904 res!176035) b!321897))

(assert (= (and b!321897 res!176037) b!321898))

(assert (= (and b!321898 res!176042) b!321906))

(assert (= (and b!321906 res!176038) b!321902))

(assert (= (and b!321902 res!176036) b!321899))

(assert (= (and b!321899 res!176034) b!321901))

(assert (= (and b!321901 res!176041) b!321905))

(declare-fun m!329893 () Bool)

(assert (=> b!321901 m!329893))

(declare-fun m!329895 () Bool)

(assert (=> b!321906 m!329895))

(assert (=> b!321906 m!329895))

(declare-fun m!329897 () Bool)

(assert (=> b!321906 m!329897))

(declare-fun m!329899 () Bool)

(assert (=> b!321897 m!329899))

(declare-fun m!329901 () Bool)

(assert (=> b!321902 m!329901))

(declare-fun m!329903 () Bool)

(assert (=> b!321903 m!329903))

(declare-fun m!329905 () Bool)

(assert (=> b!321904 m!329905))

(declare-fun m!329907 () Bool)

(assert (=> start!32358 m!329907))

(declare-fun m!329909 () Bool)

(assert (=> start!32358 m!329909))

(declare-fun m!329911 () Bool)

(assert (=> b!321899 m!329911))

(declare-fun m!329913 () Bool)

(assert (=> b!321898 m!329913))

(declare-fun m!329915 () Bool)

(assert (=> b!321905 m!329915))

(push 1)

(assert (not b!321904))

(assert (not b!321899))

(assert (not b!321897))

(assert (not start!32358))

(assert (not b!321906))

(assert (not b!321903))

(assert (not b!321898))

(assert (not b!321905))

(check-sat)

