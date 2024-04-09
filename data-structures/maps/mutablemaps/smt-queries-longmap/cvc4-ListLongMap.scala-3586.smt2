; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49322 () Bool)

(assert start!49322)

(declare-fun b!542811 () Bool)

(declare-fun res!337521 () Bool)

(declare-fun e!314049 () Bool)

(assert (=> b!542811 (=> (not res!337521) (not e!314049))))

(declare-datatypes ((array!34286 0))(
  ( (array!34287 (arr!16472 (Array (_ BitVec 32) (_ BitVec 64))) (size!16836 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34286)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542811 (= res!337521 (validKeyInArray!0 (select (arr!16472 a!3154) j!147)))))

(declare-fun b!542812 () Bool)

(declare-fun e!314050 () Bool)

(assert (=> b!542812 (= e!314050 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun lt!248027 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542812 (= lt!248027 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542813 () Bool)

(declare-fun res!337512 () Bool)

(declare-fun e!314047 () Bool)

(assert (=> b!542813 (=> (not res!337512) (not e!314047))))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!542813 (= res!337512 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16836 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16836 a!3154)) (= (select (arr!16472 a!3154) resIndex!32) (select (arr!16472 a!3154) j!147))))))

(declare-fun b!542814 () Bool)

(assert (=> b!542814 (= e!314049 e!314047)))

(declare-fun res!337523 () Bool)

(assert (=> b!542814 (=> (not res!337523) (not e!314047))))

(declare-datatypes ((SeekEntryResult!4937 0))(
  ( (MissingZero!4937 (index!21972 (_ BitVec 32))) (Found!4937 (index!21973 (_ BitVec 32))) (Intermediate!4937 (undefined!5749 Bool) (index!21974 (_ BitVec 32)) (x!50907 (_ BitVec 32))) (Undefined!4937) (MissingVacant!4937 (index!21975 (_ BitVec 32))) )
))
(declare-fun lt!248026 () SeekEntryResult!4937)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542814 (= res!337523 (or (= lt!248026 (MissingZero!4937 i!1153)) (= lt!248026 (MissingVacant!4937 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34286 (_ BitVec 32)) SeekEntryResult!4937)

(assert (=> b!542814 (= lt!248026 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!337516 () Bool)

(assert (=> start!49322 (=> (not res!337516) (not e!314049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49322 (= res!337516 (validMask!0 mask!3216))))

(assert (=> start!49322 e!314049))

(assert (=> start!49322 true))

(declare-fun array_inv!12246 (array!34286) Bool)

(assert (=> start!49322 (array_inv!12246 a!3154)))

(declare-fun b!542815 () Bool)

(declare-fun res!337514 () Bool)

(assert (=> b!542815 (=> (not res!337514) (not e!314047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34286 (_ BitVec 32)) Bool)

(assert (=> b!542815 (= res!337514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542816 () Bool)

(declare-fun res!337517 () Bool)

(assert (=> b!542816 (=> (not res!337517) (not e!314049))))

(assert (=> b!542816 (= res!337517 (and (= (size!16836 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16836 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16836 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542817 () Bool)

(declare-fun res!337519 () Bool)

(assert (=> b!542817 (=> (not res!337519) (not e!314049))))

(declare-fun arrayContainsKey!0 (array!34286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542817 (= res!337519 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542818 () Bool)

(declare-fun res!337520 () Bool)

(assert (=> b!542818 (=> (not res!337520) (not e!314050))))

(declare-fun lt!248025 () SeekEntryResult!4937)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34286 (_ BitVec 32)) SeekEntryResult!4937)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542818 (= res!337520 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16472 a!3154) j!147) mask!3216) (select (arr!16472 a!3154) j!147) a!3154 mask!3216) lt!248025))))

(declare-fun b!542819 () Bool)

(declare-fun res!337522 () Bool)

(assert (=> b!542819 (=> (not res!337522) (not e!314049))))

(assert (=> b!542819 (= res!337522 (validKeyInArray!0 k!1998))))

(declare-fun b!542820 () Bool)

(declare-fun res!337513 () Bool)

(assert (=> b!542820 (=> (not res!337513) (not e!314047))))

(declare-datatypes ((List!10644 0))(
  ( (Nil!10641) (Cons!10640 (h!11595 (_ BitVec 64)) (t!16880 List!10644)) )
))
(declare-fun arrayNoDuplicates!0 (array!34286 (_ BitVec 32) List!10644) Bool)

(assert (=> b!542820 (= res!337513 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10641))))

(declare-fun b!542821 () Bool)

(assert (=> b!542821 (= e!314047 e!314050)))

(declare-fun res!337518 () Bool)

(assert (=> b!542821 (=> (not res!337518) (not e!314050))))

(assert (=> b!542821 (= res!337518 (= lt!248025 (Intermediate!4937 false resIndex!32 resX!32)))))

(assert (=> b!542821 (= lt!248025 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16472 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542822 () Bool)

(declare-fun res!337515 () Bool)

(assert (=> b!542822 (=> (not res!337515) (not e!314050))))

(assert (=> b!542822 (= res!337515 (and (not (= (select (arr!16472 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16472 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16472 a!3154) index!1177) (select (arr!16472 a!3154) j!147)))))))

(assert (= (and start!49322 res!337516) b!542816))

(assert (= (and b!542816 res!337517) b!542811))

(assert (= (and b!542811 res!337521) b!542819))

(assert (= (and b!542819 res!337522) b!542817))

(assert (= (and b!542817 res!337519) b!542814))

(assert (= (and b!542814 res!337523) b!542815))

(assert (= (and b!542815 res!337514) b!542820))

(assert (= (and b!542820 res!337513) b!542813))

(assert (= (and b!542813 res!337512) b!542821))

(assert (= (and b!542821 res!337518) b!542818))

(assert (= (and b!542818 res!337520) b!542822))

(assert (= (and b!542822 res!337515) b!542812))

(declare-fun m!521011 () Bool)

(assert (=> b!542817 m!521011))

(declare-fun m!521013 () Bool)

(assert (=> b!542822 m!521013))

(declare-fun m!521015 () Bool)

(assert (=> b!542822 m!521015))

(assert (=> b!542821 m!521015))

(assert (=> b!542821 m!521015))

(declare-fun m!521017 () Bool)

(assert (=> b!542821 m!521017))

(declare-fun m!521019 () Bool)

(assert (=> b!542814 m!521019))

(assert (=> b!542818 m!521015))

(assert (=> b!542818 m!521015))

(declare-fun m!521021 () Bool)

(assert (=> b!542818 m!521021))

(assert (=> b!542818 m!521021))

(assert (=> b!542818 m!521015))

(declare-fun m!521023 () Bool)

(assert (=> b!542818 m!521023))

(declare-fun m!521025 () Bool)

(assert (=> b!542813 m!521025))

(assert (=> b!542813 m!521015))

(declare-fun m!521027 () Bool)

(assert (=> b!542820 m!521027))

(declare-fun m!521029 () Bool)

(assert (=> b!542812 m!521029))

(declare-fun m!521031 () Bool)

(assert (=> b!542819 m!521031))

(assert (=> b!542811 m!521015))

(assert (=> b!542811 m!521015))

(declare-fun m!521033 () Bool)

(assert (=> b!542811 m!521033))

(declare-fun m!521035 () Bool)

(assert (=> b!542815 m!521035))

(declare-fun m!521037 () Bool)

(assert (=> start!49322 m!521037))

(declare-fun m!521039 () Bool)

(assert (=> start!49322 m!521039))

(push 1)

(assert (not b!542819))

(assert (not b!542814))

(assert (not b!542821))

(assert (not b!542820))

(assert (not b!542811))

(assert (not start!49322))

(assert (not b!542815))

(assert (not b!542812))

(assert (not b!542818))

(assert (not b!542817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

