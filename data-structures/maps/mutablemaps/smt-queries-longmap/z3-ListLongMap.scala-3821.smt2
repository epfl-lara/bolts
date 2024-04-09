; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52432 () Bool)

(assert start!52432)

(declare-fun b!571841 () Bool)

(declare-fun e!328921 () Bool)

(assert (=> b!571841 (= e!328921 (not true))))

(declare-fun e!328920 () Bool)

(assert (=> b!571841 e!328920))

(declare-fun res!361499 () Bool)

(assert (=> b!571841 (=> (not res!361499) (not e!328920))))

(declare-datatypes ((SeekEntryResult!5632 0))(
  ( (MissingZero!5632 (index!24755 (_ BitVec 32))) (Found!5632 (index!24756 (_ BitVec 32))) (Intermediate!5632 (undefined!6444 Bool) (index!24757 (_ BitVec 32)) (x!53656 (_ BitVec 32))) (Undefined!5632) (MissingVacant!5632 (index!24758 (_ BitVec 32))) )
))
(declare-fun lt!260922 () SeekEntryResult!5632)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!571841 (= res!361499 (= lt!260922 (Found!5632 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35783 0))(
  ( (array!35784 (arr!17176 (Array (_ BitVec 32) (_ BitVec 64))) (size!17540 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35783)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35783 (_ BitVec 32)) SeekEntryResult!5632)

(assert (=> b!571841 (= lt!260922 (seekEntryOrOpen!0 (select (arr!17176 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35783 (_ BitVec 32)) Bool)

(assert (=> b!571841 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17966 0))(
  ( (Unit!17967) )
))
(declare-fun lt!260923 () Unit!17966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17966)

(assert (=> b!571841 (= lt!260923 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun lt!260926 () (_ BitVec 64))

(declare-fun b!571842 () Bool)

(declare-fun lt!260927 () array!35783)

(declare-fun e!328924 () Bool)

(declare-fun lt!260925 () SeekEntryResult!5632)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35783 (_ BitVec 32)) SeekEntryResult!5632)

(assert (=> b!571842 (= e!328924 (= (seekEntryOrOpen!0 lt!260926 lt!260927 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53656 lt!260925) (index!24757 lt!260925) (index!24757 lt!260925) lt!260926 lt!260927 mask!3119)))))

(declare-fun b!571843 () Bool)

(declare-fun e!328923 () Bool)

(assert (=> b!571843 (= e!328920 e!328923)))

(declare-fun res!361500 () Bool)

(assert (=> b!571843 (=> res!361500 e!328923)))

(get-info :version)

(assert (=> b!571843 (= res!361500 (or (undefined!6444 lt!260925) (not ((_ is Intermediate!5632) lt!260925))))))

(declare-fun b!571844 () Bool)

(declare-fun res!361509 () Bool)

(declare-fun e!328926 () Bool)

(assert (=> b!571844 (=> (not res!361509) (not e!328926))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571844 (= res!361509 (and (= (size!17540 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17540 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17540 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571845 () Bool)

(declare-fun res!361510 () Bool)

(assert (=> b!571845 (=> (not res!361510) (not e!328926))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571845 (= res!361510 (validKeyInArray!0 k0!1914))))

(declare-fun b!571846 () Bool)

(declare-fun res!361502 () Bool)

(assert (=> b!571846 (=> (not res!361502) (not e!328926))))

(assert (=> b!571846 (= res!361502 (validKeyInArray!0 (select (arr!17176 a!3118) j!142)))))

(declare-fun b!571847 () Bool)

(declare-fun res!361506 () Bool)

(declare-fun e!328922 () Bool)

(assert (=> b!571847 (=> (not res!361506) (not e!328922))))

(declare-datatypes ((List!11309 0))(
  ( (Nil!11306) (Cons!11305 (h!12332 (_ BitVec 64)) (t!17545 List!11309)) )
))
(declare-fun arrayNoDuplicates!0 (array!35783 (_ BitVec 32) List!11309) Bool)

(assert (=> b!571847 (= res!361506 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11306))))

(declare-fun b!571848 () Bool)

(declare-fun res!361507 () Bool)

(assert (=> b!571848 (=> (not res!361507) (not e!328926))))

(declare-fun arrayContainsKey!0 (array!35783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571848 (= res!361507 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!361511 () Bool)

(assert (=> start!52432 (=> (not res!361511) (not e!328926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52432 (= res!361511 (validMask!0 mask!3119))))

(assert (=> start!52432 e!328926))

(assert (=> start!52432 true))

(declare-fun array_inv!12950 (array!35783) Bool)

(assert (=> start!52432 (array_inv!12950 a!3118)))

(declare-fun b!571849 () Bool)

(assert (=> b!571849 (= e!328922 e!328921)))

(declare-fun res!361508 () Bool)

(assert (=> b!571849 (=> (not res!361508) (not e!328921))))

(declare-fun lt!260920 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35783 (_ BitVec 32)) SeekEntryResult!5632)

(assert (=> b!571849 (= res!361508 (= lt!260925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260920 lt!260926 lt!260927 mask!3119)))))

(declare-fun lt!260921 () (_ BitVec 32))

(assert (=> b!571849 (= lt!260925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260921 (select (arr!17176 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571849 (= lt!260920 (toIndex!0 lt!260926 mask!3119))))

(assert (=> b!571849 (= lt!260926 (select (store (arr!17176 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!571849 (= lt!260921 (toIndex!0 (select (arr!17176 a!3118) j!142) mask!3119))))

(assert (=> b!571849 (= lt!260927 (array!35784 (store (arr!17176 a!3118) i!1132 k0!1914) (size!17540 a!3118)))))

(declare-fun b!571850 () Bool)

(declare-fun e!328927 () Bool)

(assert (=> b!571850 (= e!328923 e!328927)))

(declare-fun res!361503 () Bool)

(assert (=> b!571850 (=> res!361503 e!328927)))

(declare-fun lt!260924 () (_ BitVec 64))

(assert (=> b!571850 (= res!361503 (or (= lt!260924 (select (arr!17176 a!3118) j!142)) (= lt!260924 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571850 (= lt!260924 (select (arr!17176 a!3118) (index!24757 lt!260925)))))

(declare-fun b!571851 () Bool)

(assert (=> b!571851 (= e!328927 e!328924)))

(declare-fun res!361501 () Bool)

(assert (=> b!571851 (=> (not res!361501) (not e!328924))))

(assert (=> b!571851 (= res!361501 (= lt!260922 (seekKeyOrZeroReturnVacant!0 (x!53656 lt!260925) (index!24757 lt!260925) (index!24757 lt!260925) (select (arr!17176 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571852 () Bool)

(assert (=> b!571852 (= e!328926 e!328922)))

(declare-fun res!361505 () Bool)

(assert (=> b!571852 (=> (not res!361505) (not e!328922))))

(declare-fun lt!260919 () SeekEntryResult!5632)

(assert (=> b!571852 (= res!361505 (or (= lt!260919 (MissingZero!5632 i!1132)) (= lt!260919 (MissingVacant!5632 i!1132))))))

(assert (=> b!571852 (= lt!260919 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!571853 () Bool)

(declare-fun res!361504 () Bool)

(assert (=> b!571853 (=> (not res!361504) (not e!328922))))

(assert (=> b!571853 (= res!361504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52432 res!361511) b!571844))

(assert (= (and b!571844 res!361509) b!571846))

(assert (= (and b!571846 res!361502) b!571845))

(assert (= (and b!571845 res!361510) b!571848))

(assert (= (and b!571848 res!361507) b!571852))

(assert (= (and b!571852 res!361505) b!571853))

(assert (= (and b!571853 res!361504) b!571847))

(assert (= (and b!571847 res!361506) b!571849))

(assert (= (and b!571849 res!361508) b!571841))

(assert (= (and b!571841 res!361499) b!571843))

(assert (= (and b!571843 (not res!361500)) b!571850))

(assert (= (and b!571850 (not res!361503)) b!571851))

(assert (= (and b!571851 res!361501) b!571842))

(declare-fun m!550803 () Bool)

(assert (=> b!571845 m!550803))

(declare-fun m!550805 () Bool)

(assert (=> b!571850 m!550805))

(declare-fun m!550807 () Bool)

(assert (=> b!571850 m!550807))

(assert (=> b!571851 m!550805))

(assert (=> b!571851 m!550805))

(declare-fun m!550809 () Bool)

(assert (=> b!571851 m!550809))

(declare-fun m!550811 () Bool)

(assert (=> b!571847 m!550811))

(assert (=> b!571846 m!550805))

(assert (=> b!571846 m!550805))

(declare-fun m!550813 () Bool)

(assert (=> b!571846 m!550813))

(declare-fun m!550815 () Bool)

(assert (=> b!571848 m!550815))

(declare-fun m!550817 () Bool)

(assert (=> b!571842 m!550817))

(declare-fun m!550819 () Bool)

(assert (=> b!571842 m!550819))

(declare-fun m!550821 () Bool)

(assert (=> b!571853 m!550821))

(assert (=> b!571841 m!550805))

(assert (=> b!571841 m!550805))

(declare-fun m!550823 () Bool)

(assert (=> b!571841 m!550823))

(declare-fun m!550825 () Bool)

(assert (=> b!571841 m!550825))

(declare-fun m!550827 () Bool)

(assert (=> b!571841 m!550827))

(declare-fun m!550829 () Bool)

(assert (=> start!52432 m!550829))

(declare-fun m!550831 () Bool)

(assert (=> start!52432 m!550831))

(declare-fun m!550833 () Bool)

(assert (=> b!571852 m!550833))

(assert (=> b!571849 m!550805))

(declare-fun m!550835 () Bool)

(assert (=> b!571849 m!550835))

(declare-fun m!550837 () Bool)

(assert (=> b!571849 m!550837))

(assert (=> b!571849 m!550805))

(declare-fun m!550839 () Bool)

(assert (=> b!571849 m!550839))

(assert (=> b!571849 m!550805))

(declare-fun m!550841 () Bool)

(assert (=> b!571849 m!550841))

(declare-fun m!550843 () Bool)

(assert (=> b!571849 m!550843))

(declare-fun m!550845 () Bool)

(assert (=> b!571849 m!550845))

(check-sat (not b!571842) (not b!571848) (not b!571852) (not b!571851) (not b!571841) (not b!571849) (not b!571846) (not b!571847) (not start!52432) (not b!571853) (not b!571845))
(check-sat)
