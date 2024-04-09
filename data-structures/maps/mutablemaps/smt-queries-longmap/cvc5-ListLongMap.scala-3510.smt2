; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48646 () Bool)

(assert start!48646)

(declare-fun b!533951 () Bool)

(declare-fun res!329309 () Bool)

(declare-fun e!310518 () Bool)

(assert (=> b!533951 (=> (not res!329309) (not e!310518))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533951 (= res!329309 (validKeyInArray!0 k!1998))))

(declare-fun b!533952 () Bool)

(declare-fun res!329307 () Bool)

(declare-fun e!310519 () Bool)

(assert (=> b!533952 (=> (not res!329307) (not e!310519))))

(declare-datatypes ((array!33814 0))(
  ( (array!33815 (arr!16242 (Array (_ BitVec 32) (_ BitVec 64))) (size!16606 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33814)

(declare-datatypes ((List!10414 0))(
  ( (Nil!10411) (Cons!10410 (h!11353 (_ BitVec 64)) (t!16650 List!10414)) )
))
(declare-fun arrayNoDuplicates!0 (array!33814 (_ BitVec 32) List!10414) Bool)

(assert (=> b!533952 (= res!329307 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10411))))

(declare-fun b!533953 () Bool)

(declare-fun res!329313 () Bool)

(assert (=> b!533953 (=> (not res!329313) (not e!310518))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533953 (= res!329313 (validKeyInArray!0 (select (arr!16242 a!3154) j!147)))))

(declare-fun res!329306 () Bool)

(assert (=> start!48646 (=> (not res!329306) (not e!310518))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48646 (= res!329306 (validMask!0 mask!3216))))

(assert (=> start!48646 e!310518))

(assert (=> start!48646 true))

(declare-fun array_inv!12016 (array!33814) Bool)

(assert (=> start!48646 (array_inv!12016 a!3154)))

(declare-fun b!533954 () Bool)

(declare-fun res!329315 () Bool)

(assert (=> b!533954 (=> (not res!329315) (not e!310518))))

(declare-fun arrayContainsKey!0 (array!33814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533954 (= res!329315 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533955 () Bool)

(assert (=> b!533955 (= e!310518 e!310519)))

(declare-fun res!329310 () Bool)

(assert (=> b!533955 (=> (not res!329310) (not e!310519))))

(declare-datatypes ((SeekEntryResult!4707 0))(
  ( (MissingZero!4707 (index!21052 (_ BitVec 32))) (Found!4707 (index!21053 (_ BitVec 32))) (Intermediate!4707 (undefined!5519 Bool) (index!21054 (_ BitVec 32)) (x!50045 (_ BitVec 32))) (Undefined!4707) (MissingVacant!4707 (index!21055 (_ BitVec 32))) )
))
(declare-fun lt!245536 () SeekEntryResult!4707)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533955 (= res!329310 (or (= lt!245536 (MissingZero!4707 i!1153)) (= lt!245536 (MissingVacant!4707 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33814 (_ BitVec 32)) SeekEntryResult!4707)

(assert (=> b!533955 (= lt!245536 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533956 () Bool)

(declare-fun res!329314 () Bool)

(assert (=> b!533956 (=> (not res!329314) (not e!310519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33814 (_ BitVec 32)) Bool)

(assert (=> b!533956 (= res!329314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533957 () Bool)

(declare-fun res!329308 () Bool)

(assert (=> b!533957 (=> (not res!329308) (not e!310519))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533957 (= res!329308 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16606 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16606 a!3154)) (= (select (arr!16242 a!3154) resIndex!32) (select (arr!16242 a!3154) j!147))))))

(declare-fun b!533958 () Bool)

(declare-fun res!329312 () Bool)

(assert (=> b!533958 (=> (not res!329312) (not e!310519))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33814 (_ BitVec 32)) SeekEntryResult!4707)

(assert (=> b!533958 (= res!329312 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16242 a!3154) j!147) a!3154 mask!3216) (Intermediate!4707 false resIndex!32 resX!32)))))

(declare-fun b!533959 () Bool)

(assert (=> b!533959 (= e!310519 false)))

(declare-fun lt!245537 () SeekEntryResult!4707)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533959 (= lt!245537 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16242 a!3154) j!147) mask!3216) (select (arr!16242 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533960 () Bool)

(declare-fun res!329311 () Bool)

(assert (=> b!533960 (=> (not res!329311) (not e!310518))))

(assert (=> b!533960 (= res!329311 (and (= (size!16606 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16606 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16606 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48646 res!329306) b!533960))

(assert (= (and b!533960 res!329311) b!533953))

(assert (= (and b!533953 res!329313) b!533951))

(assert (= (and b!533951 res!329309) b!533954))

(assert (= (and b!533954 res!329315) b!533955))

(assert (= (and b!533955 res!329310) b!533956))

(assert (= (and b!533956 res!329314) b!533952))

(assert (= (and b!533952 res!329307) b!533957))

(assert (= (and b!533957 res!329308) b!533958))

(assert (= (and b!533958 res!329312) b!533959))

(declare-fun m!513745 () Bool)

(assert (=> b!533955 m!513745))

(declare-fun m!513747 () Bool)

(assert (=> b!533953 m!513747))

(assert (=> b!533953 m!513747))

(declare-fun m!513749 () Bool)

(assert (=> b!533953 m!513749))

(declare-fun m!513751 () Bool)

(assert (=> b!533952 m!513751))

(assert (=> b!533958 m!513747))

(assert (=> b!533958 m!513747))

(declare-fun m!513753 () Bool)

(assert (=> b!533958 m!513753))

(declare-fun m!513755 () Bool)

(assert (=> start!48646 m!513755))

(declare-fun m!513757 () Bool)

(assert (=> start!48646 m!513757))

(declare-fun m!513759 () Bool)

(assert (=> b!533951 m!513759))

(declare-fun m!513761 () Bool)

(assert (=> b!533956 m!513761))

(declare-fun m!513763 () Bool)

(assert (=> b!533954 m!513763))

(assert (=> b!533959 m!513747))

(assert (=> b!533959 m!513747))

(declare-fun m!513765 () Bool)

(assert (=> b!533959 m!513765))

(assert (=> b!533959 m!513765))

(assert (=> b!533959 m!513747))

(declare-fun m!513767 () Bool)

(assert (=> b!533959 m!513767))

(declare-fun m!513769 () Bool)

(assert (=> b!533957 m!513769))

(assert (=> b!533957 m!513747))

(push 1)

