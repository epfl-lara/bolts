; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48754 () Bool)

(assert start!48754)

(declare-fun b!535676 () Bool)

(declare-fun e!311089 () Bool)

(declare-fun e!311090 () Bool)

(assert (=> b!535676 (= e!311089 e!311090)))

(declare-fun res!331042 () Bool)

(assert (=> b!535676 (=> (not res!331042) (not e!311090))))

(declare-datatypes ((SeekEntryResult!4761 0))(
  ( (MissingZero!4761 (index!21268 (_ BitVec 32))) (Found!4761 (index!21269 (_ BitVec 32))) (Intermediate!4761 (undefined!5573 Bool) (index!21270 (_ BitVec 32)) (x!50243 (_ BitVec 32))) (Undefined!4761) (MissingVacant!4761 (index!21271 (_ BitVec 32))) )
))
(declare-fun lt!245883 () SeekEntryResult!4761)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535676 (= res!331042 (or (= lt!245883 (MissingZero!4761 i!1153)) (= lt!245883 (MissingVacant!4761 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33922 0))(
  ( (array!33923 (arr!16296 (Array (_ BitVec 32) (_ BitVec 64))) (size!16660 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33922)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33922 (_ BitVec 32)) SeekEntryResult!4761)

(assert (=> b!535676 (= lt!245883 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535678 () Bool)

(declare-fun res!331043 () Bool)

(assert (=> b!535678 (=> (not res!331043) (not e!311090))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535678 (= res!331043 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16660 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16660 a!3154)) (= (select (arr!16296 a!3154) resIndex!32) (select (arr!16296 a!3154) j!147))))))

(declare-fun b!535679 () Bool)

(declare-fun res!331040 () Bool)

(assert (=> b!535679 (=> (not res!331040) (not e!311089))))

(declare-fun arrayContainsKey!0 (array!33922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535679 (= res!331040 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535680 () Bool)

(declare-fun res!331039 () Bool)

(declare-fun e!311091 () Bool)

(assert (=> b!535680 (=> (not res!331039) (not e!311091))))

(assert (=> b!535680 (= res!331039 (and (not (= (select (arr!16296 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16296 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16296 a!3154) index!1177) (select (arr!16296 a!3154) j!147)))))))

(declare-fun b!535681 () Bool)

(declare-fun res!331032 () Bool)

(assert (=> b!535681 (=> (not res!331032) (not e!311090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33922 (_ BitVec 32)) Bool)

(assert (=> b!535681 (= res!331032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535682 () Bool)

(declare-fun e!311088 () Bool)

(assert (=> b!535682 (= e!311088 false)))

(declare-fun lt!245885 () SeekEntryResult!4761)

(declare-fun lt!245882 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33922 (_ BitVec 32)) SeekEntryResult!4761)

(assert (=> b!535682 (= lt!245885 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245882 (select (arr!16296 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535683 () Bool)

(assert (=> b!535683 (= e!311091 e!311088)))

(declare-fun res!331034 () Bool)

(assert (=> b!535683 (=> (not res!331034) (not e!311088))))

(assert (=> b!535683 (= res!331034 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245882 #b00000000000000000000000000000000) (bvslt lt!245882 (size!16660 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535683 (= lt!245882 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535684 () Bool)

(declare-fun res!331037 () Bool)

(assert (=> b!535684 (=> (not res!331037) (not e!311091))))

(declare-fun lt!245884 () SeekEntryResult!4761)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535684 (= res!331037 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16296 a!3154) j!147) mask!3216) (select (arr!16296 a!3154) j!147) a!3154 mask!3216) lt!245884))))

(declare-fun b!535677 () Bool)

(declare-fun res!331033 () Bool)

(assert (=> b!535677 (=> (not res!331033) (not e!311089))))

(assert (=> b!535677 (= res!331033 (and (= (size!16660 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16660 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16660 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!331038 () Bool)

(assert (=> start!48754 (=> (not res!331038) (not e!311089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48754 (= res!331038 (validMask!0 mask!3216))))

(assert (=> start!48754 e!311089))

(assert (=> start!48754 true))

(declare-fun array_inv!12070 (array!33922) Bool)

(assert (=> start!48754 (array_inv!12070 a!3154)))

(declare-fun b!535685 () Bool)

(assert (=> b!535685 (= e!311090 e!311091)))

(declare-fun res!331041 () Bool)

(assert (=> b!535685 (=> (not res!331041) (not e!311091))))

(assert (=> b!535685 (= res!331041 (= lt!245884 (Intermediate!4761 false resIndex!32 resX!32)))))

(assert (=> b!535685 (= lt!245884 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16296 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535686 () Bool)

(declare-fun res!331035 () Bool)

(assert (=> b!535686 (=> (not res!331035) (not e!311089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535686 (= res!331035 (validKeyInArray!0 (select (arr!16296 a!3154) j!147)))))

(declare-fun b!535687 () Bool)

(declare-fun res!331031 () Bool)

(assert (=> b!535687 (=> (not res!331031) (not e!311090))))

(declare-datatypes ((List!10468 0))(
  ( (Nil!10465) (Cons!10464 (h!11407 (_ BitVec 64)) (t!16704 List!10468)) )
))
(declare-fun arrayNoDuplicates!0 (array!33922 (_ BitVec 32) List!10468) Bool)

(assert (=> b!535687 (= res!331031 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10465))))

(declare-fun b!535688 () Bool)

(declare-fun res!331036 () Bool)

(assert (=> b!535688 (=> (not res!331036) (not e!311089))))

(assert (=> b!535688 (= res!331036 (validKeyInArray!0 k!1998))))

(assert (= (and start!48754 res!331038) b!535677))

(assert (= (and b!535677 res!331033) b!535686))

(assert (= (and b!535686 res!331035) b!535688))

(assert (= (and b!535688 res!331036) b!535679))

(assert (= (and b!535679 res!331040) b!535676))

(assert (= (and b!535676 res!331042) b!535681))

(assert (= (and b!535681 res!331032) b!535687))

(assert (= (and b!535687 res!331031) b!535678))

(assert (= (and b!535678 res!331043) b!535685))

(assert (= (and b!535685 res!331041) b!535684))

(assert (= (and b!535684 res!331037) b!535680))

(assert (= (and b!535680 res!331039) b!535683))

(assert (= (and b!535683 res!331034) b!535682))

(declare-fun m!515227 () Bool)

(assert (=> b!535686 m!515227))

(assert (=> b!535686 m!515227))

(declare-fun m!515229 () Bool)

(assert (=> b!535686 m!515229))

(assert (=> b!535682 m!515227))

(assert (=> b!535682 m!515227))

(declare-fun m!515231 () Bool)

(assert (=> b!535682 m!515231))

(declare-fun m!515233 () Bool)

(assert (=> b!535683 m!515233))

(assert (=> b!535685 m!515227))

(assert (=> b!535685 m!515227))

(declare-fun m!515235 () Bool)

(assert (=> b!535685 m!515235))

(declare-fun m!515237 () Bool)

(assert (=> b!535676 m!515237))

(declare-fun m!515239 () Bool)

(assert (=> b!535687 m!515239))

(declare-fun m!515241 () Bool)

(assert (=> b!535681 m!515241))

(declare-fun m!515243 () Bool)

(assert (=> b!535679 m!515243))

(declare-fun m!515245 () Bool)

(assert (=> start!48754 m!515245))

(declare-fun m!515247 () Bool)

(assert (=> start!48754 m!515247))

(declare-fun m!515249 () Bool)

(assert (=> b!535678 m!515249))

(assert (=> b!535678 m!515227))

(declare-fun m!515251 () Bool)

(assert (=> b!535688 m!515251))

(declare-fun m!515253 () Bool)

(assert (=> b!535680 m!515253))

(assert (=> b!535680 m!515227))

(assert (=> b!535684 m!515227))

(assert (=> b!535684 m!515227))

(declare-fun m!515255 () Bool)

(assert (=> b!535684 m!515255))

(assert (=> b!535684 m!515255))

(assert (=> b!535684 m!515227))

(declare-fun m!515257 () Bool)

(assert (=> b!535684 m!515257))

(push 1)

