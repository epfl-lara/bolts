; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32242 () Bool)

(assert start!32242)

(declare-fun res!175103 () Bool)

(declare-fun e!198938 () Bool)

(assert (=> start!32242 (=> (not res!175103) (not e!198938))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32242 (= res!175103 (validMask!0 mask!3777))))

(assert (=> start!32242 e!198938))

(declare-datatypes ((array!16428 0))(
  ( (array!16429 (arr!7770 (Array (_ BitVec 32) (_ BitVec 64))) (size!8122 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16428)

(declare-fun array_inv!5724 (array!16428) Bool)

(assert (=> start!32242 (array_inv!5724 a!3305)))

(assert (=> start!32242 true))

(declare-fun b!320824 () Bool)

(declare-fun e!198940 () Bool)

(assert (=> b!320824 (= e!198938 e!198940)))

(declare-fun res!175106 () Bool)

(assert (=> b!320824 (=> (not res!175106) (not e!198940))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2912 0))(
  ( (MissingZero!2912 (index!13824 (_ BitVec 32))) (Found!2912 (index!13825 (_ BitVec 32))) (Intermediate!2912 (undefined!3724 Bool) (index!13826 (_ BitVec 32)) (x!32054 (_ BitVec 32))) (Undefined!2912) (MissingVacant!2912 (index!13827 (_ BitVec 32))) )
))
(declare-fun lt!156107 () SeekEntryResult!2912)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16428 (_ BitVec 32)) SeekEntryResult!2912)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320824 (= res!175106 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156107))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320824 (= lt!156107 (Intermediate!2912 false resIndex!58 resX!58))))

(declare-fun b!320825 () Bool)

(declare-fun res!175108 () Bool)

(assert (=> b!320825 (=> (not res!175108) (not e!198940))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320825 (= res!175108 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156107))))

(declare-fun b!320826 () Bool)

(declare-fun res!175107 () Bool)

(assert (=> b!320826 (=> (not res!175107) (not e!198938))))

(declare-fun arrayContainsKey!0 (array!16428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320826 (= res!175107 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320827 () Bool)

(declare-fun res!175110 () Bool)

(assert (=> b!320827 (=> (not res!175110) (not e!198938))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320827 (= res!175110 (and (= (size!8122 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8122 a!3305))))))

(declare-fun b!320828 () Bool)

(declare-fun res!175104 () Bool)

(assert (=> b!320828 (=> (not res!175104) (not e!198938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320828 (= res!175104 (validKeyInArray!0 k!2497))))

(declare-fun b!320829 () Bool)

(declare-fun res!175109 () Bool)

(assert (=> b!320829 (=> (not res!175109) (not e!198938))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16428 (_ BitVec 32)) SeekEntryResult!2912)

(assert (=> b!320829 (= res!175109 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2912 i!1250)))))

(declare-fun b!320830 () Bool)

(declare-fun res!175102 () Bool)

(assert (=> b!320830 (=> (not res!175102) (not e!198940))))

(assert (=> b!320830 (= res!175102 (and (= (select (arr!7770 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8122 a!3305))))))

(declare-fun b!320831 () Bool)

(assert (=> b!320831 (= e!198940 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7770 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7770 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7770 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!320832 () Bool)

(declare-fun res!175105 () Bool)

(assert (=> b!320832 (=> (not res!175105) (not e!198938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16428 (_ BitVec 32)) Bool)

(assert (=> b!320832 (= res!175105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32242 res!175103) b!320827))

(assert (= (and b!320827 res!175110) b!320828))

(assert (= (and b!320828 res!175104) b!320826))

(assert (= (and b!320826 res!175107) b!320829))

(assert (= (and b!320829 res!175109) b!320832))

(assert (= (and b!320832 res!175105) b!320824))

(assert (= (and b!320824 res!175106) b!320830))

(assert (= (and b!320830 res!175102) b!320825))

(assert (= (and b!320825 res!175108) b!320831))

(declare-fun m!329085 () Bool)

(assert (=> b!320828 m!329085))

(declare-fun m!329087 () Bool)

(assert (=> b!320826 m!329087))

(declare-fun m!329089 () Bool)

(assert (=> b!320825 m!329089))

(declare-fun m!329091 () Bool)

(assert (=> b!320829 m!329091))

(declare-fun m!329093 () Bool)

(assert (=> b!320830 m!329093))

(declare-fun m!329095 () Bool)

(assert (=> b!320832 m!329095))

(declare-fun m!329097 () Bool)

(assert (=> b!320831 m!329097))

(declare-fun m!329099 () Bool)

(assert (=> start!32242 m!329099))

(declare-fun m!329101 () Bool)

(assert (=> start!32242 m!329101))

(declare-fun m!329103 () Bool)

(assert (=> b!320824 m!329103))

(assert (=> b!320824 m!329103))

(declare-fun m!329105 () Bool)

(assert (=> b!320824 m!329105))

(push 1)

(assert (not b!320828))

(assert (not b!320825))

(assert (not b!320829))

(assert (not b!320824))

(assert (not start!32242))

(assert (not b!320826))

(assert (not b!320832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

