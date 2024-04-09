; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52142 () Bool)

(assert start!52142)

(declare-fun b!568638 () Bool)

(declare-fun res!358809 () Bool)

(declare-fun e!327204 () Bool)

(assert (=> b!568638 (=> (not res!358809) (not e!327204))))

(declare-datatypes ((array!35619 0))(
  ( (array!35620 (arr!17097 (Array (_ BitVec 32) (_ BitVec 64))) (size!17461 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35619)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568638 (= res!358809 (validKeyInArray!0 (select (arr!17097 a!3118) j!142)))))

(declare-fun b!568639 () Bool)

(declare-fun res!358811 () Bool)

(assert (=> b!568639 (=> (not res!358811) (not e!327204))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568639 (= res!358811 (and (= (size!17461 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17461 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17461 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568640 () Bool)

(declare-fun res!358813 () Bool)

(assert (=> b!568640 (=> (not res!358813) (not e!327204))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!568640 (= res!358813 (validKeyInArray!0 k!1914))))

(declare-fun b!568641 () Bool)

(declare-fun res!358807 () Bool)

(declare-fun e!327202 () Bool)

(assert (=> b!568641 (=> (not res!358807) (not e!327202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35619 (_ BitVec 32)) Bool)

(assert (=> b!568641 (= res!358807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568643 () Bool)

(declare-fun e!327203 () Bool)

(assert (=> b!568643 (= e!327203 (not true))))

(declare-datatypes ((SeekEntryResult!5553 0))(
  ( (MissingZero!5553 (index!24439 (_ BitVec 32))) (Found!5553 (index!24440 (_ BitVec 32))) (Intermediate!5553 (undefined!6365 Bool) (index!24441 (_ BitVec 32)) (x!53351 (_ BitVec 32))) (Undefined!5553) (MissingVacant!5553 (index!24442 (_ BitVec 32))) )
))
(declare-fun lt!259101 () SeekEntryResult!5553)

(declare-fun lt!259106 () SeekEntryResult!5553)

(assert (=> b!568643 (and (= lt!259106 (Found!5553 j!142)) (or (undefined!6365 lt!259101) (not (is-Intermediate!5553 lt!259101)) (= (select (arr!17097 a!3118) (index!24441 lt!259101)) (select (arr!17097 a!3118) j!142)) (not (= (select (arr!17097 a!3118) (index!24441 lt!259101)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259106 (MissingZero!5553 (index!24441 lt!259101)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35619 (_ BitVec 32)) SeekEntryResult!5553)

(assert (=> b!568643 (= lt!259106 (seekEntryOrOpen!0 (select (arr!17097 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!568643 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17808 0))(
  ( (Unit!17809) )
))
(declare-fun lt!259104 () Unit!17808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35619 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17808)

(assert (=> b!568643 (= lt!259104 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568644 () Bool)

(declare-fun res!358806 () Bool)

(assert (=> b!568644 (=> (not res!358806) (not e!327204))))

(declare-fun arrayContainsKey!0 (array!35619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568644 (= res!358806 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568642 () Bool)

(assert (=> b!568642 (= e!327204 e!327202)))

(declare-fun res!358814 () Bool)

(assert (=> b!568642 (=> (not res!358814) (not e!327202))))

(declare-fun lt!259103 () SeekEntryResult!5553)

(assert (=> b!568642 (= res!358814 (or (= lt!259103 (MissingZero!5553 i!1132)) (= lt!259103 (MissingVacant!5553 i!1132))))))

(assert (=> b!568642 (= lt!259103 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!358812 () Bool)

(assert (=> start!52142 (=> (not res!358812) (not e!327204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52142 (= res!358812 (validMask!0 mask!3119))))

(assert (=> start!52142 e!327204))

(assert (=> start!52142 true))

(declare-fun array_inv!12871 (array!35619) Bool)

(assert (=> start!52142 (array_inv!12871 a!3118)))

(declare-fun b!568645 () Bool)

(declare-fun res!358810 () Bool)

(assert (=> b!568645 (=> (not res!358810) (not e!327202))))

(declare-datatypes ((List!11230 0))(
  ( (Nil!11227) (Cons!11226 (h!12247 (_ BitVec 64)) (t!17466 List!11230)) )
))
(declare-fun arrayNoDuplicates!0 (array!35619 (_ BitVec 32) List!11230) Bool)

(assert (=> b!568645 (= res!358810 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11227))))

(declare-fun b!568646 () Bool)

(assert (=> b!568646 (= e!327202 e!327203)))

(declare-fun res!358808 () Bool)

(assert (=> b!568646 (=> (not res!358808) (not e!327203))))

(declare-fun lt!259105 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35619 (_ BitVec 32)) SeekEntryResult!5553)

(assert (=> b!568646 (= res!358808 (= lt!259101 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259105 (select (store (arr!17097 a!3118) i!1132 k!1914) j!142) (array!35620 (store (arr!17097 a!3118) i!1132 k!1914) (size!17461 a!3118)) mask!3119)))))

(declare-fun lt!259102 () (_ BitVec 32))

(assert (=> b!568646 (= lt!259101 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259102 (select (arr!17097 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568646 (= lt!259105 (toIndex!0 (select (store (arr!17097 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568646 (= lt!259102 (toIndex!0 (select (arr!17097 a!3118) j!142) mask!3119))))

(assert (= (and start!52142 res!358812) b!568639))

(assert (= (and b!568639 res!358811) b!568638))

(assert (= (and b!568638 res!358809) b!568640))

(assert (= (and b!568640 res!358813) b!568644))

(assert (= (and b!568644 res!358806) b!568642))

(assert (= (and b!568642 res!358814) b!568641))

(assert (= (and b!568641 res!358807) b!568645))

(assert (= (and b!568645 res!358810) b!568646))

(assert (= (and b!568646 res!358808) b!568643))

(declare-fun m!547159 () Bool)

(assert (=> b!568644 m!547159))

(declare-fun m!547161 () Bool)

(assert (=> b!568646 m!547161))

(declare-fun m!547163 () Bool)

(assert (=> b!568646 m!547163))

(assert (=> b!568646 m!547161))

(declare-fun m!547165 () Bool)

(assert (=> b!568646 m!547165))

(assert (=> b!568646 m!547161))

(declare-fun m!547167 () Bool)

(assert (=> b!568646 m!547167))

(declare-fun m!547169 () Bool)

(assert (=> b!568646 m!547169))

(assert (=> b!568646 m!547167))

(declare-fun m!547171 () Bool)

(assert (=> b!568646 m!547171))

(assert (=> b!568646 m!547167))

(declare-fun m!547173 () Bool)

(assert (=> b!568646 m!547173))

(declare-fun m!547175 () Bool)

(assert (=> b!568645 m!547175))

(assert (=> b!568638 m!547161))

(assert (=> b!568638 m!547161))

(declare-fun m!547177 () Bool)

(assert (=> b!568638 m!547177))

(declare-fun m!547179 () Bool)

(assert (=> b!568643 m!547179))

(assert (=> b!568643 m!547161))

(declare-fun m!547181 () Bool)

(assert (=> b!568643 m!547181))

(declare-fun m!547183 () Bool)

(assert (=> b!568643 m!547183))

(assert (=> b!568643 m!547161))

(declare-fun m!547185 () Bool)

(assert (=> b!568643 m!547185))

(declare-fun m!547187 () Bool)

(assert (=> b!568640 m!547187))

(declare-fun m!547189 () Bool)

(assert (=> b!568642 m!547189))

(declare-fun m!547191 () Bool)

(assert (=> start!52142 m!547191))

(declare-fun m!547193 () Bool)

(assert (=> start!52142 m!547193))

(declare-fun m!547195 () Bool)

(assert (=> b!568641 m!547195))

(push 1)

