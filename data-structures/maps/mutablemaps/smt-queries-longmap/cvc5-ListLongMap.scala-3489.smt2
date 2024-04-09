; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48418 () Bool)

(assert start!48418)

(declare-fun b!531661 () Bool)

(declare-fun res!327303 () Bool)

(declare-fun e!309645 () Bool)

(assert (=> b!531661 (=> (not res!327303) (not e!309645))))

(declare-datatypes ((array!33682 0))(
  ( (array!33683 (arr!16179 (Array (_ BitVec 32) (_ BitVec 64))) (size!16543 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33682)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33682 (_ BitVec 32)) Bool)

(assert (=> b!531661 (= res!327303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!327302 () Bool)

(declare-fun e!309646 () Bool)

(assert (=> start!48418 (=> (not res!327302) (not e!309646))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48418 (= res!327302 (validMask!0 mask!3216))))

(assert (=> start!48418 e!309646))

(assert (=> start!48418 true))

(declare-fun array_inv!11953 (array!33682) Bool)

(assert (=> start!48418 (array_inv!11953 a!3154)))

(declare-fun b!531662 () Bool)

(declare-fun res!327301 () Bool)

(assert (=> b!531662 (=> (not res!327301) (not e!309646))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531662 (= res!327301 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531663 () Bool)

(declare-fun res!327307 () Bool)

(assert (=> b!531663 (=> (not res!327307) (not e!309645))))

(declare-datatypes ((List!10351 0))(
  ( (Nil!10348) (Cons!10347 (h!11287 (_ BitVec 64)) (t!16587 List!10351)) )
))
(declare-fun arrayNoDuplicates!0 (array!33682 (_ BitVec 32) List!10351) Bool)

(assert (=> b!531663 (= res!327307 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10348))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun b!531664 () Bool)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!531664 (= e!309645 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16543 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16543 a!3154)) (= (select (arr!16179 a!3154) resIndex!32) (select (arr!16179 a!3154) j!147)) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!531665 () Bool)

(declare-fun res!327305 () Bool)

(assert (=> b!531665 (=> (not res!327305) (not e!309646))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531665 (= res!327305 (and (= (size!16543 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16543 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16543 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531666 () Bool)

(assert (=> b!531666 (= e!309646 e!309645)))

(declare-fun res!327308 () Bool)

(assert (=> b!531666 (=> (not res!327308) (not e!309645))))

(declare-datatypes ((SeekEntryResult!4644 0))(
  ( (MissingZero!4644 (index!20800 (_ BitVec 32))) (Found!4644 (index!20801 (_ BitVec 32))) (Intermediate!4644 (undefined!5456 Bool) (index!20802 (_ BitVec 32)) (x!49805 (_ BitVec 32))) (Undefined!4644) (MissingVacant!4644 (index!20803 (_ BitVec 32))) )
))
(declare-fun lt!245048 () SeekEntryResult!4644)

(assert (=> b!531666 (= res!327308 (or (= lt!245048 (MissingZero!4644 i!1153)) (= lt!245048 (MissingVacant!4644 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33682 (_ BitVec 32)) SeekEntryResult!4644)

(assert (=> b!531666 (= lt!245048 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531667 () Bool)

(declare-fun res!327306 () Bool)

(assert (=> b!531667 (=> (not res!327306) (not e!309646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531667 (= res!327306 (validKeyInArray!0 k!1998))))

(declare-fun b!531668 () Bool)

(declare-fun res!327304 () Bool)

(assert (=> b!531668 (=> (not res!327304) (not e!309646))))

(assert (=> b!531668 (= res!327304 (validKeyInArray!0 (select (arr!16179 a!3154) j!147)))))

(assert (= (and start!48418 res!327302) b!531665))

(assert (= (and b!531665 res!327305) b!531668))

(assert (= (and b!531668 res!327304) b!531667))

(assert (= (and b!531667 res!327306) b!531662))

(assert (= (and b!531662 res!327301) b!531666))

(assert (= (and b!531666 res!327308) b!531661))

(assert (= (and b!531661 res!327303) b!531663))

(assert (= (and b!531663 res!327307) b!531664))

(declare-fun m!512041 () Bool)

(assert (=> b!531661 m!512041))

(declare-fun m!512043 () Bool)

(assert (=> b!531667 m!512043))

(declare-fun m!512045 () Bool)

(assert (=> b!531666 m!512045))

(declare-fun m!512047 () Bool)

(assert (=> b!531668 m!512047))

(assert (=> b!531668 m!512047))

(declare-fun m!512049 () Bool)

(assert (=> b!531668 m!512049))

(declare-fun m!512051 () Bool)

(assert (=> start!48418 m!512051))

(declare-fun m!512053 () Bool)

(assert (=> start!48418 m!512053))

(declare-fun m!512055 () Bool)

(assert (=> b!531662 m!512055))

(declare-fun m!512057 () Bool)

(assert (=> b!531663 m!512057))

(declare-fun m!512059 () Bool)

(assert (=> b!531664 m!512059))

(assert (=> b!531664 m!512047))

(push 1)

(assert (not b!531661))

(assert (not b!531668))

(assert (not b!531663))

(assert (not b!531662))

(assert (not b!531666))

(assert (not b!531667))

(assert (not start!48418))

(check-sat)

(pop 1)

