; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33298 () Bool)

(assert start!33298)

(declare-fun res!182377 () Bool)

(declare-fun e!203010 () Bool)

(assert (=> start!33298 (=> (not res!182377) (not e!203010))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33298 (= res!182377 (validMask!0 mask!3777))))

(assert (=> start!33298 e!203010))

(declare-datatypes ((array!16902 0))(
  ( (array!16903 (arr!7989 (Array (_ BitVec 32) (_ BitVec 64))) (size!8341 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16902)

(declare-fun array_inv!5943 (array!16902) Bool)

(assert (=> start!33298 (array_inv!5943 a!3305)))

(assert (=> start!33298 true))

(declare-fun b!330813 () Bool)

(declare-fun res!182381 () Bool)

(assert (=> b!330813 (=> (not res!182381) (not e!203010))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330813 (= res!182381 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330814 () Bool)

(declare-fun res!182382 () Bool)

(declare-fun e!203011 () Bool)

(assert (=> b!330814 (=> (not res!182382) (not e!203011))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3131 0))(
  ( (MissingZero!3131 (index!14700 (_ BitVec 32))) (Found!3131 (index!14701 (_ BitVec 32))) (Intermediate!3131 (undefined!3943 Bool) (index!14702 (_ BitVec 32)) (x!32950 (_ BitVec 32))) (Undefined!3131) (MissingVacant!3131 (index!14703 (_ BitVec 32))) )
))
(declare-fun lt!158657 () SeekEntryResult!3131)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16902 (_ BitVec 32)) SeekEntryResult!3131)

(assert (=> b!330814 (= res!182382 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158657))))

(declare-fun b!330815 () Bool)

(declare-fun res!182374 () Bool)

(assert (=> b!330815 (=> (not res!182374) (not e!203010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16902 (_ BitVec 32)) Bool)

(assert (=> b!330815 (= res!182374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330816 () Bool)

(declare-fun res!182378 () Bool)

(assert (=> b!330816 (=> (not res!182378) (not e!203010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330816 (= res!182378 (validKeyInArray!0 k!2497))))

(declare-fun b!330817 () Bool)

(declare-fun res!182373 () Bool)

(assert (=> b!330817 (=> (not res!182373) (not e!203011))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330817 (= res!182373 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7989 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!330818 () Bool)

(assert (=> b!330818 (= e!203010 e!203011)))

(declare-fun res!182375 () Bool)

(assert (=> b!330818 (=> (not res!182375) (not e!203011))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330818 (= res!182375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158657))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!330818 (= lt!158657 (Intermediate!3131 false resIndex!58 resX!58))))

(declare-fun b!330819 () Bool)

(assert (=> b!330819 (= e!203011 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1490)) (bvsub #b01111111111111111111111111111110 x!1490)))))

(declare-fun lt!158656 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330819 (= lt!158656 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!330820 () Bool)

(declare-fun res!182380 () Bool)

(assert (=> b!330820 (=> (not res!182380) (not e!203011))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330820 (= res!182380 (and (= (select (arr!7989 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8341 a!3305))))))

(declare-fun b!330821 () Bool)

(declare-fun res!182376 () Bool)

(assert (=> b!330821 (=> (not res!182376) (not e!203010))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16902 (_ BitVec 32)) SeekEntryResult!3131)

(assert (=> b!330821 (= res!182376 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3131 i!1250)))))

(declare-fun b!330822 () Bool)

(declare-fun res!182379 () Bool)

(assert (=> b!330822 (=> (not res!182379) (not e!203010))))

(assert (=> b!330822 (= res!182379 (and (= (size!8341 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8341 a!3305))))))

(assert (= (and start!33298 res!182377) b!330822))

(assert (= (and b!330822 res!182379) b!330816))

(assert (= (and b!330816 res!182378) b!330813))

(assert (= (and b!330813 res!182381) b!330821))

(assert (= (and b!330821 res!182376) b!330815))

(assert (= (and b!330815 res!182374) b!330818))

(assert (= (and b!330818 res!182375) b!330820))

(assert (= (and b!330820 res!182380) b!330814))

(assert (= (and b!330814 res!182382) b!330817))

(assert (= (and b!330817 res!182373) b!330819))

(declare-fun m!335869 () Bool)

(assert (=> b!330819 m!335869))

(declare-fun m!335871 () Bool)

(assert (=> b!330816 m!335871))

(declare-fun m!335873 () Bool)

(assert (=> b!330814 m!335873))

(declare-fun m!335875 () Bool)

(assert (=> b!330820 m!335875))

(declare-fun m!335877 () Bool)

(assert (=> b!330815 m!335877))

(declare-fun m!335879 () Bool)

(assert (=> start!33298 m!335879))

(declare-fun m!335881 () Bool)

(assert (=> start!33298 m!335881))

(declare-fun m!335883 () Bool)

(assert (=> b!330821 m!335883))

(declare-fun m!335885 () Bool)

(assert (=> b!330818 m!335885))

(assert (=> b!330818 m!335885))

(declare-fun m!335887 () Bool)

(assert (=> b!330818 m!335887))

(declare-fun m!335889 () Bool)

(assert (=> b!330817 m!335889))

(declare-fun m!335891 () Bool)

(assert (=> b!330813 m!335891))

(push 1)

(assert (not b!330821))

(assert (not b!330818))

(assert (not b!330813))

(assert (not b!330816))

(assert (not b!330814))

(assert (not start!33298))

(assert (not b!330819))

(assert (not b!330815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

