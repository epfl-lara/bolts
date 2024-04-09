; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29158 () Bool)

(assert start!29158)

(declare-fun b!295678 () Bool)

(declare-fun res!155600 () Bool)

(declare-fun e!186897 () Bool)

(assert (=> b!295678 (=> (not res!155600) (not e!186897))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295678 (= res!155600 (validKeyInArray!0 k!2524))))

(declare-fun b!295679 () Bool)

(declare-fun res!155607 () Bool)

(assert (=> b!295679 (=> (not res!155607) (not e!186897))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14958 0))(
  ( (array!14959 (arr!7089 (Array (_ BitVec 32) (_ BitVec 64))) (size!7441 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14958)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295679 (= res!155607 (and (= (size!7441 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7441 a!3312))))))

(declare-fun b!295680 () Bool)

(declare-fun e!186896 () Bool)

(declare-fun e!186899 () Bool)

(assert (=> b!295680 (= e!186896 e!186899)))

(declare-fun res!155603 () Bool)

(assert (=> b!295680 (=> (not res!155603) (not e!186899))))

(declare-fun lt!146741 () Bool)

(assert (=> b!295680 (= res!155603 lt!146741)))

(declare-fun lt!146738 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2249 0))(
  ( (MissingZero!2249 (index!11166 (_ BitVec 32))) (Found!2249 (index!11167 (_ BitVec 32))) (Intermediate!2249 (undefined!3061 Bool) (index!11168 (_ BitVec 32)) (x!29346 (_ BitVec 32))) (Undefined!2249) (MissingVacant!2249 (index!11169 (_ BitVec 32))) )
))
(declare-fun lt!146740 () SeekEntryResult!2249)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14958 (_ BitVec 32)) SeekEntryResult!2249)

(assert (=> b!295680 (= lt!146740 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146738 k!2524 (array!14959 (store (arr!7089 a!3312) i!1256 k!2524) (size!7441 a!3312)) mask!3809))))

(declare-fun lt!146739 () SeekEntryResult!2249)

(assert (=> b!295680 (= lt!146739 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146738 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295680 (= lt!146738 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295681 () Bool)

(declare-fun e!186898 () Bool)

(assert (=> b!295681 (= e!186898 (not true))))

(assert (=> b!295681 (and (= (select (arr!7089 a!3312) (index!11168 lt!146739)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11168 lt!146739) i!1256))))

(declare-fun res!155605 () Bool)

(assert (=> start!29158 (=> (not res!155605) (not e!186897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29158 (= res!155605 (validMask!0 mask!3809))))

(assert (=> start!29158 e!186897))

(assert (=> start!29158 true))

(declare-fun array_inv!5043 (array!14958) Bool)

(assert (=> start!29158 (array_inv!5043 a!3312)))

(declare-fun b!295682 () Bool)

(declare-fun res!155601 () Bool)

(assert (=> b!295682 (=> (not res!155601) (not e!186896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14958 (_ BitVec 32)) Bool)

(assert (=> b!295682 (= res!155601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295683 () Bool)

(assert (=> b!295683 (= e!186899 e!186898)))

(declare-fun res!155604 () Bool)

(assert (=> b!295683 (=> (not res!155604) (not e!186898))))

(declare-fun lt!146736 () Bool)

(assert (=> b!295683 (= res!155604 (and (or lt!146736 (not (undefined!3061 lt!146739))) (or lt!146736 (not (= (select (arr!7089 a!3312) (index!11168 lt!146739)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146736 (not (= (select (arr!7089 a!3312) (index!11168 lt!146739)) k!2524))) (not lt!146736)))))

(assert (=> b!295683 (= lt!146736 (not (is-Intermediate!2249 lt!146739)))))

(declare-fun b!295684 () Bool)

(assert (=> b!295684 (= e!186897 e!186896)))

(declare-fun res!155602 () Bool)

(assert (=> b!295684 (=> (not res!155602) (not e!186896))))

(declare-fun lt!146737 () SeekEntryResult!2249)

(assert (=> b!295684 (= res!155602 (or lt!146741 (= lt!146737 (MissingVacant!2249 i!1256))))))

(assert (=> b!295684 (= lt!146741 (= lt!146737 (MissingZero!2249 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14958 (_ BitVec 32)) SeekEntryResult!2249)

(assert (=> b!295684 (= lt!146737 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295685 () Bool)

(declare-fun res!155606 () Bool)

(assert (=> b!295685 (=> (not res!155606) (not e!186897))))

(declare-fun arrayContainsKey!0 (array!14958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295685 (= res!155606 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29158 res!155605) b!295679))

(assert (= (and b!295679 res!155607) b!295678))

(assert (= (and b!295678 res!155600) b!295685))

(assert (= (and b!295685 res!155606) b!295684))

(assert (= (and b!295684 res!155602) b!295682))

(assert (= (and b!295682 res!155601) b!295680))

(assert (= (and b!295680 res!155603) b!295683))

(assert (= (and b!295683 res!155604) b!295681))

(declare-fun m!308791 () Bool)

(assert (=> b!295684 m!308791))

(declare-fun m!308793 () Bool)

(assert (=> b!295685 m!308793))

(declare-fun m!308795 () Bool)

(assert (=> b!295681 m!308795))

(declare-fun m!308797 () Bool)

(assert (=> b!295680 m!308797))

(declare-fun m!308799 () Bool)

(assert (=> b!295680 m!308799))

(declare-fun m!308801 () Bool)

(assert (=> b!295680 m!308801))

(declare-fun m!308803 () Bool)

(assert (=> b!295680 m!308803))

(declare-fun m!308805 () Bool)

(assert (=> b!295678 m!308805))

(declare-fun m!308807 () Bool)

(assert (=> b!295682 m!308807))

(declare-fun m!308809 () Bool)

(assert (=> start!29158 m!308809))

(declare-fun m!308811 () Bool)

(assert (=> start!29158 m!308811))

(assert (=> b!295683 m!308795))

(push 1)

