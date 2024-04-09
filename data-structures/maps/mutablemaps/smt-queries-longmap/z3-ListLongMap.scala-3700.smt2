; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50836 () Bool)

(assert start!50836)

(declare-fun b!555854 () Bool)

(declare-fun res!348417 () Bool)

(declare-fun e!320302 () Bool)

(assert (=> b!555854 (=> (not res!348417) (not e!320302))))

(declare-datatypes ((array!35015 0))(
  ( (array!35016 (arr!16813 (Array (_ BitVec 32) (_ BitVec 64))) (size!17177 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35015)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35015 (_ BitVec 32)) Bool)

(assert (=> b!555854 (= res!348417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!348423 () Bool)

(declare-fun e!320299 () Bool)

(assert (=> start!50836 (=> (not res!348423) (not e!320299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50836 (= res!348423 (validMask!0 mask!3119))))

(assert (=> start!50836 e!320299))

(assert (=> start!50836 true))

(declare-fun array_inv!12587 (array!35015) Bool)

(assert (=> start!50836 (array_inv!12587 a!3118)))

(declare-fun b!555855 () Bool)

(declare-fun res!348424 () Bool)

(assert (=> b!555855 (=> (not res!348424) (not e!320299))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555855 (= res!348424 (and (= (size!17177 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17177 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17177 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555856 () Bool)

(declare-fun res!348421 () Bool)

(assert (=> b!555856 (=> (not res!348421) (not e!320299))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555856 (= res!348421 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555857 () Bool)

(declare-fun e!320300 () Bool)

(assert (=> b!555857 (= e!320302 e!320300)))

(declare-fun res!348416 () Bool)

(assert (=> b!555857 (=> (not res!348416) (not e!320300))))

(declare-fun lt!252736 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5269 0))(
  ( (MissingZero!5269 (index!23303 (_ BitVec 32))) (Found!5269 (index!23304 (_ BitVec 32))) (Intermediate!5269 (undefined!6081 Bool) (index!23305 (_ BitVec 32)) (x!52226 (_ BitVec 32))) (Undefined!5269) (MissingVacant!5269 (index!23306 (_ BitVec 32))) )
))
(declare-fun lt!252733 () SeekEntryResult!5269)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35015 (_ BitVec 32)) SeekEntryResult!5269)

(assert (=> b!555857 (= res!348416 (= lt!252733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252736 (select (store (arr!16813 a!3118) i!1132 k0!1914) j!142) (array!35016 (store (arr!16813 a!3118) i!1132 k0!1914) (size!17177 a!3118)) mask!3119)))))

(declare-fun lt!252734 () (_ BitVec 32))

(assert (=> b!555857 (= lt!252733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252734 (select (arr!16813 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555857 (= lt!252736 (toIndex!0 (select (store (arr!16813 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555857 (= lt!252734 (toIndex!0 (select (arr!16813 a!3118) j!142) mask!3119))))

(declare-fun b!555858 () Bool)

(declare-fun res!348420 () Bool)

(assert (=> b!555858 (=> (not res!348420) (not e!320299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555858 (= res!348420 (validKeyInArray!0 k0!1914))))

(declare-fun b!555859 () Bool)

(get-info :version)

(assert (=> b!555859 (= e!320300 (not (or (not ((_ is Intermediate!5269) lt!252733)) (undefined!6081 lt!252733) (= (select (arr!16813 a!3118) (index!23305 lt!252733)) (select (arr!16813 a!3118) j!142)) (= (select (arr!16813 a!3118) (index!23305 lt!252733)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(declare-fun e!320298 () Bool)

(assert (=> b!555859 e!320298))

(declare-fun res!348422 () Bool)

(assert (=> b!555859 (=> (not res!348422) (not e!320298))))

(assert (=> b!555859 (= res!348422 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17312 0))(
  ( (Unit!17313) )
))
(declare-fun lt!252735 () Unit!17312)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17312)

(assert (=> b!555859 (= lt!252735 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555860 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35015 (_ BitVec 32)) SeekEntryResult!5269)

(assert (=> b!555860 (= e!320298 (= (seekEntryOrOpen!0 (select (arr!16813 a!3118) j!142) a!3118 mask!3119) (Found!5269 j!142)))))

(declare-fun b!555861 () Bool)

(declare-fun res!348425 () Bool)

(assert (=> b!555861 (=> (not res!348425) (not e!320299))))

(assert (=> b!555861 (= res!348425 (validKeyInArray!0 (select (arr!16813 a!3118) j!142)))))

(declare-fun b!555862 () Bool)

(declare-fun res!348419 () Bool)

(assert (=> b!555862 (=> (not res!348419) (not e!320302))))

(declare-datatypes ((List!10946 0))(
  ( (Nil!10943) (Cons!10942 (h!11927 (_ BitVec 64)) (t!17182 List!10946)) )
))
(declare-fun arrayNoDuplicates!0 (array!35015 (_ BitVec 32) List!10946) Bool)

(assert (=> b!555862 (= res!348419 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10943))))

(declare-fun b!555863 () Bool)

(assert (=> b!555863 (= e!320299 e!320302)))

(declare-fun res!348418 () Bool)

(assert (=> b!555863 (=> (not res!348418) (not e!320302))))

(declare-fun lt!252737 () SeekEntryResult!5269)

(assert (=> b!555863 (= res!348418 (or (= lt!252737 (MissingZero!5269 i!1132)) (= lt!252737 (MissingVacant!5269 i!1132))))))

(assert (=> b!555863 (= lt!252737 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!50836 res!348423) b!555855))

(assert (= (and b!555855 res!348424) b!555861))

(assert (= (and b!555861 res!348425) b!555858))

(assert (= (and b!555858 res!348420) b!555856))

(assert (= (and b!555856 res!348421) b!555863))

(assert (= (and b!555863 res!348418) b!555854))

(assert (= (and b!555854 res!348417) b!555862))

(assert (= (and b!555862 res!348419) b!555857))

(assert (= (and b!555857 res!348416) b!555859))

(assert (= (and b!555859 res!348422) b!555860))

(declare-fun m!533799 () Bool)

(assert (=> b!555858 m!533799))

(declare-fun m!533801 () Bool)

(assert (=> b!555856 m!533801))

(declare-fun m!533803 () Bool)

(assert (=> b!555859 m!533803))

(declare-fun m!533805 () Bool)

(assert (=> b!555859 m!533805))

(declare-fun m!533807 () Bool)

(assert (=> b!555859 m!533807))

(declare-fun m!533809 () Bool)

(assert (=> b!555859 m!533809))

(declare-fun m!533811 () Bool)

(assert (=> b!555863 m!533811))

(assert (=> b!555860 m!533805))

(assert (=> b!555860 m!533805))

(declare-fun m!533813 () Bool)

(assert (=> b!555860 m!533813))

(declare-fun m!533815 () Bool)

(assert (=> start!50836 m!533815))

(declare-fun m!533817 () Bool)

(assert (=> start!50836 m!533817))

(assert (=> b!555857 m!533805))

(declare-fun m!533819 () Bool)

(assert (=> b!555857 m!533819))

(assert (=> b!555857 m!533805))

(declare-fun m!533821 () Bool)

(assert (=> b!555857 m!533821))

(declare-fun m!533823 () Bool)

(assert (=> b!555857 m!533823))

(assert (=> b!555857 m!533821))

(declare-fun m!533825 () Bool)

(assert (=> b!555857 m!533825))

(assert (=> b!555857 m!533821))

(declare-fun m!533827 () Bool)

(assert (=> b!555857 m!533827))

(assert (=> b!555857 m!533805))

(declare-fun m!533829 () Bool)

(assert (=> b!555857 m!533829))

(assert (=> b!555861 m!533805))

(assert (=> b!555861 m!533805))

(declare-fun m!533831 () Bool)

(assert (=> b!555861 m!533831))

(declare-fun m!533833 () Bool)

(assert (=> b!555854 m!533833))

(declare-fun m!533835 () Bool)

(assert (=> b!555862 m!533835))

(check-sat (not start!50836) (not b!555860) (not b!555858) (not b!555862) (not b!555859) (not b!555856) (not b!555857) (not b!555861) (not b!555863) (not b!555854))
(check-sat)
