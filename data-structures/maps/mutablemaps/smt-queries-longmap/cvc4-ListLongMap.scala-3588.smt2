; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49334 () Bool)

(assert start!49334)

(declare-fun res!337733 () Bool)

(declare-fun e!314119 () Bool)

(assert (=> start!49334 (=> (not res!337733) (not e!314119))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49334 (= res!337733 (validMask!0 mask!3216))))

(assert (=> start!49334 e!314119))

(assert (=> start!49334 true))

(declare-datatypes ((array!34298 0))(
  ( (array!34299 (arr!16478 (Array (_ BitVec 32) (_ BitVec 64))) (size!16842 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34298)

(declare-fun array_inv!12252 (array!34298) Bool)

(assert (=> start!49334 (array_inv!12252 a!3154)))

(declare-fun b!543027 () Bool)

(declare-fun res!337738 () Bool)

(assert (=> b!543027 (=> (not res!337738) (not e!314119))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543027 (= res!337738 (and (= (size!16842 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16842 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16842 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543028 () Bool)

(declare-fun res!337737 () Bool)

(declare-fun e!314122 () Bool)

(assert (=> b!543028 (=> (not res!337737) (not e!314122))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543028 (= res!337737 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16842 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16842 a!3154)) (= (select (arr!16478 a!3154) resIndex!32) (select (arr!16478 a!3154) j!147))))))

(declare-fun b!543029 () Bool)

(declare-fun res!337734 () Bool)

(declare-fun e!314120 () Bool)

(assert (=> b!543029 (=> (not res!337734) (not e!314120))))

(assert (=> b!543029 (= res!337734 (and (not (= (select (arr!16478 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16478 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16478 a!3154) index!1177) (select (arr!16478 a!3154) j!147)))))))

(declare-fun b!543030 () Bool)

(assert (=> b!543030 (= e!314122 e!314120)))

(declare-fun res!337729 () Bool)

(assert (=> b!543030 (=> (not res!337729) (not e!314120))))

(declare-datatypes ((SeekEntryResult!4943 0))(
  ( (MissingZero!4943 (index!21996 (_ BitVec 32))) (Found!4943 (index!21997 (_ BitVec 32))) (Intermediate!4943 (undefined!5755 Bool) (index!21998 (_ BitVec 32)) (x!50929 (_ BitVec 32))) (Undefined!4943) (MissingVacant!4943 (index!21999 (_ BitVec 32))) )
))
(declare-fun lt!248079 () SeekEntryResult!4943)

(assert (=> b!543030 (= res!337729 (= lt!248079 (Intermediate!4943 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34298 (_ BitVec 32)) SeekEntryResult!4943)

(assert (=> b!543030 (= lt!248079 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16478 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543031 () Bool)

(declare-fun res!337732 () Bool)

(assert (=> b!543031 (=> (not res!337732) (not e!314119))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543031 (= res!337732 (validKeyInArray!0 k!1998))))

(declare-fun b!543032 () Bool)

(assert (=> b!543032 (= e!314119 e!314122)))

(declare-fun res!337735 () Bool)

(assert (=> b!543032 (=> (not res!337735) (not e!314122))))

(declare-fun lt!248081 () SeekEntryResult!4943)

(assert (=> b!543032 (= res!337735 (or (= lt!248081 (MissingZero!4943 i!1153)) (= lt!248081 (MissingVacant!4943 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34298 (_ BitVec 32)) SeekEntryResult!4943)

(assert (=> b!543032 (= lt!248081 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543033 () Bool)

(assert (=> b!543033 (= e!314120 false)))

(declare-fun lt!248080 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543033 (= lt!248080 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543034 () Bool)

(declare-fun res!337739 () Bool)

(assert (=> b!543034 (=> (not res!337739) (not e!314122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34298 (_ BitVec 32)) Bool)

(assert (=> b!543034 (= res!337739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543035 () Bool)

(declare-fun res!337736 () Bool)

(assert (=> b!543035 (=> (not res!337736) (not e!314119))))

(declare-fun arrayContainsKey!0 (array!34298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543035 (= res!337736 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543036 () Bool)

(declare-fun res!337730 () Bool)

(assert (=> b!543036 (=> (not res!337730) (not e!314120))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543036 (= res!337730 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16478 a!3154) j!147) mask!3216) (select (arr!16478 a!3154) j!147) a!3154 mask!3216) lt!248079))))

(declare-fun b!543037 () Bool)

(declare-fun res!337731 () Bool)

(assert (=> b!543037 (=> (not res!337731) (not e!314122))))

(declare-datatypes ((List!10650 0))(
  ( (Nil!10647) (Cons!10646 (h!11601 (_ BitVec 64)) (t!16886 List!10650)) )
))
(declare-fun arrayNoDuplicates!0 (array!34298 (_ BitVec 32) List!10650) Bool)

(assert (=> b!543037 (= res!337731 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10647))))

(declare-fun b!543038 () Bool)

(declare-fun res!337728 () Bool)

(assert (=> b!543038 (=> (not res!337728) (not e!314119))))

(assert (=> b!543038 (= res!337728 (validKeyInArray!0 (select (arr!16478 a!3154) j!147)))))

(assert (= (and start!49334 res!337733) b!543027))

(assert (= (and b!543027 res!337738) b!543038))

(assert (= (and b!543038 res!337728) b!543031))

(assert (= (and b!543031 res!337732) b!543035))

(assert (= (and b!543035 res!337736) b!543032))

(assert (= (and b!543032 res!337735) b!543034))

(assert (= (and b!543034 res!337739) b!543037))

(assert (= (and b!543037 res!337731) b!543028))

(assert (= (and b!543028 res!337737) b!543030))

(assert (= (and b!543030 res!337729) b!543036))

(assert (= (and b!543036 res!337730) b!543029))

(assert (= (and b!543029 res!337734) b!543033))

(declare-fun m!521191 () Bool)

(assert (=> b!543028 m!521191))

(declare-fun m!521193 () Bool)

(assert (=> b!543028 m!521193))

(declare-fun m!521195 () Bool)

(assert (=> b!543035 m!521195))

(declare-fun m!521197 () Bool)

(assert (=> start!49334 m!521197))

(declare-fun m!521199 () Bool)

(assert (=> start!49334 m!521199))

(assert (=> b!543036 m!521193))

(assert (=> b!543036 m!521193))

(declare-fun m!521201 () Bool)

(assert (=> b!543036 m!521201))

(assert (=> b!543036 m!521201))

(assert (=> b!543036 m!521193))

(declare-fun m!521203 () Bool)

(assert (=> b!543036 m!521203))

(declare-fun m!521205 () Bool)

(assert (=> b!543037 m!521205))

(assert (=> b!543030 m!521193))

(assert (=> b!543030 m!521193))

(declare-fun m!521207 () Bool)

(assert (=> b!543030 m!521207))

(declare-fun m!521209 () Bool)

(assert (=> b!543031 m!521209))

(declare-fun m!521211 () Bool)

(assert (=> b!543033 m!521211))

(assert (=> b!543038 m!521193))

(assert (=> b!543038 m!521193))

(declare-fun m!521213 () Bool)

(assert (=> b!543038 m!521213))

(declare-fun m!521215 () Bool)

(assert (=> b!543034 m!521215))

(declare-fun m!521217 () Bool)

(assert (=> b!543029 m!521217))

(assert (=> b!543029 m!521193))

(declare-fun m!521219 () Bool)

(assert (=> b!543032 m!521219))

(push 1)

(assert (not b!543030))

(assert (not b!543032))

(assert (not b!543038))

