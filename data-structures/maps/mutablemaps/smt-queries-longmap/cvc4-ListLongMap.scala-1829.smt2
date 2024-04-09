; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33088 () Bool)

(assert start!33088)

(declare-fun b!329050 () Bool)

(declare-fun res!181393 () Bool)

(declare-fun e!202176 () Bool)

(assert (=> b!329050 (=> (not res!181393) (not e!202176))))

(declare-datatypes ((array!16845 0))(
  ( (array!16846 (arr!7965 (Array (_ BitVec 32) (_ BitVec 64))) (size!8317 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16845)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!329050 (= res!181393 (and (= (size!8317 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8317 a!3305))))))

(declare-fun b!329051 () Bool)

(declare-fun res!181397 () Bool)

(assert (=> b!329051 (=> (not res!181397) (not e!202176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16845 (_ BitVec 32)) Bool)

(assert (=> b!329051 (= res!181397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329052 () Bool)

(declare-fun res!181399 () Bool)

(assert (=> b!329052 (=> (not res!181399) (not e!202176))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329052 (= res!181399 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329053 () Bool)

(declare-fun e!202174 () Bool)

(assert (=> b!329053 (= e!202174 (not false))))

(declare-datatypes ((SeekEntryResult!3107 0))(
  ( (MissingZero!3107 (index!14604 (_ BitVec 32))) (Found!3107 (index!14605 (_ BitVec 32))) (Intermediate!3107 (undefined!3919 Bool) (index!14606 (_ BitVec 32)) (x!32835 (_ BitVec 32))) (Undefined!3107) (MissingVacant!3107 (index!14607 (_ BitVec 32))) )
))
(declare-fun lt!158129 () SeekEntryResult!3107)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!329053 (= lt!158129 (Intermediate!3107 false index!1840 resX!58))))

(declare-fun b!329054 () Bool)

(declare-fun res!181401 () Bool)

(assert (=> b!329054 (=> (not res!181401) (not e!202176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329054 (= res!181401 (validKeyInArray!0 k!2497))))

(declare-fun b!329055 () Bool)

(declare-fun e!202177 () Bool)

(assert (=> b!329055 (= e!202177 e!202174)))

(declare-fun res!181395 () Bool)

(assert (=> b!329055 (=> (not res!181395) (not e!202174))))

(declare-fun lt!158128 () SeekEntryResult!3107)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!329055 (= res!181395 (and (= lt!158129 lt!158128) (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7965 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7965 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7965 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16845 (_ BitVec 32)) SeekEntryResult!3107)

(assert (=> b!329055 (= lt!158129 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!329056 () Bool)

(assert (=> b!329056 (= e!202176 e!202177)))

(declare-fun res!181400 () Bool)

(assert (=> b!329056 (=> (not res!181400) (not e!202177))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329056 (= res!181400 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158128))))

(assert (=> b!329056 (= lt!158128 (Intermediate!3107 false resIndex!58 resX!58))))

(declare-fun res!181396 () Bool)

(assert (=> start!33088 (=> (not res!181396) (not e!202176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33088 (= res!181396 (validMask!0 mask!3777))))

(assert (=> start!33088 e!202176))

(declare-fun array_inv!5919 (array!16845) Bool)

(assert (=> start!33088 (array_inv!5919 a!3305)))

(assert (=> start!33088 true))

(declare-fun b!329057 () Bool)

(declare-fun res!181394 () Bool)

(assert (=> b!329057 (=> (not res!181394) (not e!202177))))

(assert (=> b!329057 (= res!181394 (and (= (select (arr!7965 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8317 a!3305))))))

(declare-fun b!329058 () Bool)

(declare-fun res!181398 () Bool)

(assert (=> b!329058 (=> (not res!181398) (not e!202176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16845 (_ BitVec 32)) SeekEntryResult!3107)

(assert (=> b!329058 (= res!181398 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3107 i!1250)))))

(assert (= (and start!33088 res!181396) b!329050))

(assert (= (and b!329050 res!181393) b!329054))

(assert (= (and b!329054 res!181401) b!329052))

(assert (= (and b!329052 res!181399) b!329058))

(assert (= (and b!329058 res!181398) b!329051))

(assert (= (and b!329051 res!181397) b!329056))

(assert (= (and b!329056 res!181400) b!329057))

(assert (= (and b!329057 res!181394) b!329055))

(assert (= (and b!329055 res!181395) b!329053))

(declare-fun m!334809 () Bool)

(assert (=> b!329051 m!334809))

(declare-fun m!334811 () Bool)

(assert (=> b!329052 m!334811))

(declare-fun m!334813 () Bool)

(assert (=> b!329055 m!334813))

(declare-fun m!334815 () Bool)

(assert (=> b!329055 m!334815))

(declare-fun m!334817 () Bool)

(assert (=> b!329057 m!334817))

(declare-fun m!334819 () Bool)

(assert (=> b!329054 m!334819))

(declare-fun m!334821 () Bool)

(assert (=> b!329058 m!334821))

(declare-fun m!334823 () Bool)

(assert (=> start!33088 m!334823))

(declare-fun m!334825 () Bool)

(assert (=> start!33088 m!334825))

(declare-fun m!334827 () Bool)

(assert (=> b!329056 m!334827))

(assert (=> b!329056 m!334827))

(declare-fun m!334829 () Bool)

(assert (=> b!329056 m!334829))

(push 1)

(assert (not b!329055))

(assert (not b!329054))

(assert (not start!33088))

(assert (not b!329052))

(assert (not b!329056))

(assert (not b!329058))

