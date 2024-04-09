; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128212 () Bool)

(assert start!128212)

(declare-fun b!1504713 () Bool)

(declare-fun res!1025384 () Bool)

(declare-fun e!841121 () Bool)

(assert (=> b!1504713 (=> (not res!1025384) (not e!841121))))

(declare-datatypes ((array!100323 0))(
  ( (array!100324 (arr!48409 (Array (_ BitVec 32) (_ BitVec 64))) (size!48960 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100323)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504713 (= res!1025384 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48960 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48960 a!2850)) (= (select (arr!48409 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48409 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48960 a!2850))))))

(declare-fun b!1504714 () Bool)

(declare-fun res!1025381 () Bool)

(assert (=> b!1504714 (=> (not res!1025381) (not e!841121))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504714 (= res!1025381 (validKeyInArray!0 (select (arr!48409 a!2850) j!87)))))

(declare-fun b!1504715 () Bool)

(declare-fun res!1025383 () Bool)

(assert (=> b!1504715 (=> (not res!1025383) (not e!841121))))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1504715 (= res!1025383 (and (= (size!48960 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48960 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48960 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504716 () Bool)

(declare-fun res!1025385 () Bool)

(assert (=> b!1504716 (=> (not res!1025385) (not e!841121))))

(assert (=> b!1504716 (= res!1025385 (validKeyInArray!0 (select (arr!48409 a!2850) i!996)))))

(declare-fun b!1504717 () Bool)

(declare-fun e!841120 () Bool)

(declare-fun e!841118 () Bool)

(assert (=> b!1504717 (= e!841120 e!841118)))

(declare-fun res!1025380 () Bool)

(assert (=> b!1504717 (=> (not res!1025380) (not e!841118))))

(declare-fun lt!653767 () (_ BitVec 32))

(assert (=> b!1504717 (= res!1025380 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653767 #b00000000000000000000000000000000) (bvslt lt!653767 (size!48960 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504717 (= lt!653767 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504718 () Bool)

(declare-fun res!1025379 () Bool)

(assert (=> b!1504718 (=> (not res!1025379) (not e!841120))))

(assert (=> b!1504718 (= res!1025379 (not (= (select (arr!48409 a!2850) index!625) (select (arr!48409 a!2850) j!87))))))

(declare-fun b!1504720 () Bool)

(declare-fun res!1025382 () Bool)

(assert (=> b!1504720 (=> (not res!1025382) (not e!841118))))

(declare-datatypes ((SeekEntryResult!12626 0))(
  ( (MissingZero!12626 (index!52895 (_ BitVec 32))) (Found!12626 (index!52896 (_ BitVec 32))) (Intermediate!12626 (undefined!13438 Bool) (index!52897 (_ BitVec 32)) (x!134601 (_ BitVec 32))) (Undefined!12626) (MissingVacant!12626 (index!52898 (_ BitVec 32))) )
))
(declare-fun lt!653766 () SeekEntryResult!12626)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100323 (_ BitVec 32)) SeekEntryResult!12626)

(assert (=> b!1504720 (= res!1025382 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653767 vacantBefore!10 (select (arr!48409 a!2850) j!87) a!2850 mask!2661) lt!653766))))

(declare-fun b!1504721 () Bool)

(assert (=> b!1504721 (= e!841118 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!647)) (bvsub #b01111111111111111111111111111110 x!647)))))

(declare-fun b!1504722 () Bool)

(declare-fun res!1025376 () Bool)

(assert (=> b!1504722 (=> (not res!1025376) (not e!841121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100323 (_ BitVec 32)) Bool)

(assert (=> b!1504722 (= res!1025376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504723 () Bool)

(declare-fun res!1025378 () Bool)

(assert (=> b!1504723 (=> (not res!1025378) (not e!841121))))

(declare-datatypes ((List!35081 0))(
  ( (Nil!35078) (Cons!35077 (h!36475 (_ BitVec 64)) (t!49782 List!35081)) )
))
(declare-fun arrayNoDuplicates!0 (array!100323 (_ BitVec 32) List!35081) Bool)

(assert (=> b!1504723 (= res!1025378 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35078))))

(declare-fun res!1025377 () Bool)

(assert (=> start!128212 (=> (not res!1025377) (not e!841121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128212 (= res!1025377 (validMask!0 mask!2661))))

(assert (=> start!128212 e!841121))

(assert (=> start!128212 true))

(declare-fun array_inv!37354 (array!100323) Bool)

(assert (=> start!128212 (array_inv!37354 a!2850)))

(declare-fun b!1504719 () Bool)

(assert (=> b!1504719 (= e!841121 e!841120)))

(declare-fun res!1025375 () Bool)

(assert (=> b!1504719 (=> (not res!1025375) (not e!841120))))

(assert (=> b!1504719 (= res!1025375 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48409 a!2850) j!87) a!2850 mask!2661) lt!653766))))

(assert (=> b!1504719 (= lt!653766 (Found!12626 j!87))))

(assert (= (and start!128212 res!1025377) b!1504715))

(assert (= (and b!1504715 res!1025383) b!1504716))

(assert (= (and b!1504716 res!1025385) b!1504714))

(assert (= (and b!1504714 res!1025381) b!1504722))

(assert (= (and b!1504722 res!1025376) b!1504723))

(assert (= (and b!1504723 res!1025378) b!1504713))

(assert (= (and b!1504713 res!1025384) b!1504719))

(assert (= (and b!1504719 res!1025375) b!1504718))

(assert (= (and b!1504718 res!1025379) b!1504717))

(assert (= (and b!1504717 res!1025380) b!1504720))

(assert (= (and b!1504720 res!1025382) b!1504721))

(declare-fun m!1387869 () Bool)

(assert (=> b!1504714 m!1387869))

(assert (=> b!1504714 m!1387869))

(declare-fun m!1387871 () Bool)

(assert (=> b!1504714 m!1387871))

(declare-fun m!1387873 () Bool)

(assert (=> start!128212 m!1387873))

(declare-fun m!1387875 () Bool)

(assert (=> start!128212 m!1387875))

(declare-fun m!1387877 () Bool)

(assert (=> b!1504717 m!1387877))

(declare-fun m!1387879 () Bool)

(assert (=> b!1504722 m!1387879))

(declare-fun m!1387881 () Bool)

(assert (=> b!1504716 m!1387881))

(assert (=> b!1504716 m!1387881))

(declare-fun m!1387883 () Bool)

(assert (=> b!1504716 m!1387883))

(declare-fun m!1387885 () Bool)

(assert (=> b!1504723 m!1387885))

(declare-fun m!1387887 () Bool)

(assert (=> b!1504713 m!1387887))

(declare-fun m!1387889 () Bool)

(assert (=> b!1504713 m!1387889))

(declare-fun m!1387891 () Bool)

(assert (=> b!1504713 m!1387891))

(declare-fun m!1387893 () Bool)

(assert (=> b!1504718 m!1387893))

(assert (=> b!1504718 m!1387869))

(assert (=> b!1504719 m!1387869))

(assert (=> b!1504719 m!1387869))

(declare-fun m!1387895 () Bool)

(assert (=> b!1504719 m!1387895))

(assert (=> b!1504720 m!1387869))

(assert (=> b!1504720 m!1387869))

(declare-fun m!1387897 () Bool)

(assert (=> b!1504720 m!1387897))

(push 1)

(assert (not b!1504720))

(assert (not b!1504723))

(assert (not b!1504714))

(assert (not b!1504719))

(assert (not b!1504717))

(assert (not b!1504716))

(assert (not b!1504722))

(assert (not start!128212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

