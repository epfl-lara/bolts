; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50758 () Bool)

(assert start!50758)

(declare-fun res!347350 () Bool)

(declare-fun e!319827 () Bool)

(assert (=> start!50758 (=> (not res!347350) (not e!319827))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50758 (= res!347350 (validMask!0 mask!3119))))

(assert (=> start!50758 e!319827))

(assert (=> start!50758 true))

(declare-datatypes ((array!34937 0))(
  ( (array!34938 (arr!16774 (Array (_ BitVec 32) (_ BitVec 64))) (size!17138 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34937)

(declare-fun array_inv!12548 (array!34937) Bool)

(assert (=> start!50758 (array_inv!12548 a!3118)))

(declare-fun b!554787 () Bool)

(declare-fun res!347353 () Bool)

(declare-fun e!319826 () Bool)

(assert (=> b!554787 (=> (not res!347353) (not e!319826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34937 (_ BitVec 32)) Bool)

(assert (=> b!554787 (= res!347353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554788 () Bool)

(declare-fun res!347352 () Bool)

(assert (=> b!554788 (=> (not res!347352) (not e!319827))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554788 (= res!347352 (validKeyInArray!0 k0!1914))))

(declare-fun b!554789 () Bool)

(declare-fun e!319828 () Bool)

(assert (=> b!554789 (= e!319826 e!319828)))

(declare-fun res!347357 () Bool)

(assert (=> b!554789 (=> (not res!347357) (not e!319828))))

(declare-datatypes ((SeekEntryResult!5230 0))(
  ( (MissingZero!5230 (index!23147 (_ BitVec 32))) (Found!5230 (index!23148 (_ BitVec 32))) (Intermediate!5230 (undefined!6042 Bool) (index!23149 (_ BitVec 32)) (x!52083 (_ BitVec 32))) (Undefined!5230) (MissingVacant!5230 (index!23150 (_ BitVec 32))) )
))
(declare-fun lt!252077 () SeekEntryResult!5230)

(declare-fun lt!252073 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34937 (_ BitVec 32)) SeekEntryResult!5230)

(assert (=> b!554789 (= res!347357 (= lt!252077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252073 (select (store (arr!16774 a!3118) i!1132 k0!1914) j!142) (array!34938 (store (arr!16774 a!3118) i!1132 k0!1914) (size!17138 a!3118)) mask!3119)))))

(declare-fun lt!252072 () (_ BitVec 32))

(assert (=> b!554789 (= lt!252077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252072 (select (arr!16774 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554789 (= lt!252073 (toIndex!0 (select (store (arr!16774 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554789 (= lt!252072 (toIndex!0 (select (arr!16774 a!3118) j!142) mask!3119))))

(declare-fun b!554790 () Bool)

(declare-fun res!347355 () Bool)

(assert (=> b!554790 (=> (not res!347355) (not e!319826))))

(declare-datatypes ((List!10907 0))(
  ( (Nil!10904) (Cons!10903 (h!11888 (_ BitVec 64)) (t!17143 List!10907)) )
))
(declare-fun arrayNoDuplicates!0 (array!34937 (_ BitVec 32) List!10907) Bool)

(assert (=> b!554790 (= res!347355 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10904))))

(declare-fun b!554791 () Bool)

(declare-fun res!347351 () Bool)

(assert (=> b!554791 (=> (not res!347351) (not e!319827))))

(assert (=> b!554791 (= res!347351 (and (= (size!17138 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17138 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17138 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554792 () Bool)

(assert (=> b!554792 (= e!319827 e!319826)))

(declare-fun res!347356 () Bool)

(assert (=> b!554792 (=> (not res!347356) (not e!319826))))

(declare-fun lt!252074 () SeekEntryResult!5230)

(assert (=> b!554792 (= res!347356 (or (= lt!252074 (MissingZero!5230 i!1132)) (= lt!252074 (MissingVacant!5230 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34937 (_ BitVec 32)) SeekEntryResult!5230)

(assert (=> b!554792 (= lt!252074 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554793 () Bool)

(assert (=> b!554793 (= e!319828 (not true))))

(declare-fun lt!252076 () SeekEntryResult!5230)

(get-info :version)

(assert (=> b!554793 (and (= lt!252076 (Found!5230 j!142)) (or (undefined!6042 lt!252077) (not ((_ is Intermediate!5230) lt!252077)) (= (select (arr!16774 a!3118) (index!23149 lt!252077)) (select (arr!16774 a!3118) j!142)) (not (= (select (arr!16774 a!3118) (index!23149 lt!252077)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252076 (MissingZero!5230 (index!23149 lt!252077)))))))

(assert (=> b!554793 (= lt!252076 (seekEntryOrOpen!0 (select (arr!16774 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554793 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17234 0))(
  ( (Unit!17235) )
))
(declare-fun lt!252075 () Unit!17234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34937 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17234)

(assert (=> b!554793 (= lt!252075 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554794 () Bool)

(declare-fun res!347354 () Bool)

(assert (=> b!554794 (=> (not res!347354) (not e!319827))))

(assert (=> b!554794 (= res!347354 (validKeyInArray!0 (select (arr!16774 a!3118) j!142)))))

(declare-fun b!554795 () Bool)

(declare-fun res!347349 () Bool)

(assert (=> b!554795 (=> (not res!347349) (not e!319827))))

(declare-fun arrayContainsKey!0 (array!34937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554795 (= res!347349 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50758 res!347350) b!554791))

(assert (= (and b!554791 res!347351) b!554794))

(assert (= (and b!554794 res!347354) b!554788))

(assert (= (and b!554788 res!347352) b!554795))

(assert (= (and b!554795 res!347349) b!554792))

(assert (= (and b!554792 res!347356) b!554787))

(assert (= (and b!554787 res!347353) b!554790))

(assert (= (and b!554790 res!347355) b!554789))

(assert (= (and b!554789 res!347357) b!554793))

(declare-fun m!532323 () Bool)

(assert (=> b!554794 m!532323))

(assert (=> b!554794 m!532323))

(declare-fun m!532325 () Bool)

(assert (=> b!554794 m!532325))

(declare-fun m!532327 () Bool)

(assert (=> b!554793 m!532327))

(assert (=> b!554793 m!532323))

(declare-fun m!532329 () Bool)

(assert (=> b!554793 m!532329))

(declare-fun m!532331 () Bool)

(assert (=> b!554793 m!532331))

(assert (=> b!554793 m!532323))

(declare-fun m!532333 () Bool)

(assert (=> b!554793 m!532333))

(declare-fun m!532335 () Bool)

(assert (=> b!554795 m!532335))

(declare-fun m!532337 () Bool)

(assert (=> b!554788 m!532337))

(declare-fun m!532339 () Bool)

(assert (=> b!554792 m!532339))

(assert (=> b!554789 m!532323))

(declare-fun m!532341 () Bool)

(assert (=> b!554789 m!532341))

(assert (=> b!554789 m!532323))

(assert (=> b!554789 m!532323))

(declare-fun m!532343 () Bool)

(assert (=> b!554789 m!532343))

(declare-fun m!532345 () Bool)

(assert (=> b!554789 m!532345))

(declare-fun m!532347 () Bool)

(assert (=> b!554789 m!532347))

(assert (=> b!554789 m!532345))

(declare-fun m!532349 () Bool)

(assert (=> b!554789 m!532349))

(assert (=> b!554789 m!532345))

(declare-fun m!532351 () Bool)

(assert (=> b!554789 m!532351))

(declare-fun m!532353 () Bool)

(assert (=> b!554790 m!532353))

(declare-fun m!532355 () Bool)

(assert (=> b!554787 m!532355))

(declare-fun m!532357 () Bool)

(assert (=> start!50758 m!532357))

(declare-fun m!532359 () Bool)

(assert (=> start!50758 m!532359))

(check-sat (not b!554788) (not b!554794) (not b!554792) (not b!554793) (not b!554787) (not start!50758) (not b!554789) (not b!554795) (not b!554790))
(check-sat)
