; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86542 () Bool)

(assert start!86542)

(declare-fun b!1002067 () Bool)

(declare-fun res!671702 () Bool)

(declare-fun e!564598 () Bool)

(assert (=> b!1002067 (=> (not res!671702) (not e!564598))))

(declare-datatypes ((array!63295 0))(
  ( (array!63296 (arr!30469 (Array (_ BitVec 32) (_ BitVec 64))) (size!30972 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63295)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002067 (= res!671702 (validKeyInArray!0 (select (arr!30469 a!3219) j!170)))))

(declare-fun b!1002068 () Bool)

(declare-fun res!671705 () Bool)

(assert (=> b!1002068 (=> (not res!671705) (not e!564598))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002068 (= res!671705 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002069 () Bool)

(declare-fun res!671701 () Bool)

(assert (=> b!1002069 (=> (not res!671701) (not e!564598))))

(assert (=> b!1002069 (= res!671701 (validKeyInArray!0 k!2224))))

(declare-fun b!1002070 () Bool)

(declare-fun e!564595 () Bool)

(declare-fun e!564597 () Bool)

(assert (=> b!1002070 (= e!564595 e!564597)))

(declare-fun res!671708 () Bool)

(assert (=> b!1002070 (=> (not res!671708) (not e!564597))))

(declare-datatypes ((SeekEntryResult!9401 0))(
  ( (MissingZero!9401 (index!39974 (_ BitVec 32))) (Found!9401 (index!39975 (_ BitVec 32))) (Intermediate!9401 (undefined!10213 Bool) (index!39976 (_ BitVec 32)) (x!87422 (_ BitVec 32))) (Undefined!9401) (MissingVacant!9401 (index!39977 (_ BitVec 32))) )
))
(declare-fun lt!443000 () SeekEntryResult!9401)

(declare-fun lt!443006 () SeekEntryResult!9401)

(assert (=> b!1002070 (= res!671708 (= lt!443000 lt!443006))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002070 (= lt!443006 (Intermediate!9401 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63295 (_ BitVec 32)) SeekEntryResult!9401)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002070 (= lt!443000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30469 a!3219) j!170) mask!3464) (select (arr!30469 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002071 () Bool)

(declare-fun res!671714 () Bool)

(assert (=> b!1002071 (=> (not res!671714) (not e!564595))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1002071 (= res!671714 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30972 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30972 a!3219))))))

(declare-fun b!1002072 () Bool)

(assert (=> b!1002072 (= e!564598 e!564595)))

(declare-fun res!671713 () Bool)

(assert (=> b!1002072 (=> (not res!671713) (not e!564595))))

(declare-fun lt!443003 () SeekEntryResult!9401)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002072 (= res!671713 (or (= lt!443003 (MissingVacant!9401 i!1194)) (= lt!443003 (MissingZero!9401 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63295 (_ BitVec 32)) SeekEntryResult!9401)

(assert (=> b!1002072 (= lt!443003 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002073 () Bool)

(declare-fun e!564599 () Bool)

(declare-fun e!564594 () Bool)

(assert (=> b!1002073 (= e!564599 e!564594)))

(declare-fun res!671715 () Bool)

(assert (=> b!1002073 (=> (not res!671715) (not e!564594))))

(declare-fun lt!443007 () (_ BitVec 32))

(assert (=> b!1002073 (= res!671715 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443007 #b00000000000000000000000000000000) (bvslt lt!443007 (size!30972 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002073 (= lt!443007 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002074 () Bool)

(declare-fun res!671703 () Bool)

(assert (=> b!1002074 (=> (not res!671703) (not e!564598))))

(assert (=> b!1002074 (= res!671703 (and (= (size!30972 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30972 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30972 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002075 () Bool)

(declare-fun res!671704 () Bool)

(assert (=> b!1002075 (=> (not res!671704) (not e!564599))))

(assert (=> b!1002075 (= res!671704 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002076 () Bool)

(declare-fun res!671711 () Bool)

(assert (=> b!1002076 (=> (not res!671711) (not e!564595))))

(declare-datatypes ((List!21271 0))(
  ( (Nil!21268) (Cons!21267 (h!22444 (_ BitVec 64)) (t!30280 List!21271)) )
))
(declare-fun arrayNoDuplicates!0 (array!63295 (_ BitVec 32) List!21271) Bool)

(assert (=> b!1002076 (= res!671711 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21268))))

(declare-fun res!671709 () Bool)

(assert (=> start!86542 (=> (not res!671709) (not e!564598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86542 (= res!671709 (validMask!0 mask!3464))))

(assert (=> start!86542 e!564598))

(declare-fun array_inv!23459 (array!63295) Bool)

(assert (=> start!86542 (array_inv!23459 a!3219)))

(assert (=> start!86542 true))

(declare-fun b!1002077 () Bool)

(assert (=> b!1002077 (= e!564594 false)))

(declare-fun lt!443004 () array!63295)

(declare-fun lt!443005 () (_ BitVec 64))

(declare-fun lt!443002 () SeekEntryResult!9401)

(assert (=> b!1002077 (= lt!443002 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443007 lt!443005 lt!443004 mask!3464))))

(declare-fun b!1002078 () Bool)

(declare-fun res!671716 () Bool)

(assert (=> b!1002078 (=> (not res!671716) (not e!564595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63295 (_ BitVec 32)) Bool)

(assert (=> b!1002078 (= res!671716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002079 () Bool)

(declare-fun e!564593 () Bool)

(assert (=> b!1002079 (= e!564597 e!564593)))

(declare-fun res!671712 () Bool)

(assert (=> b!1002079 (=> (not res!671712) (not e!564593))))

(declare-fun lt!443001 () SeekEntryResult!9401)

(assert (=> b!1002079 (= res!671712 (= lt!443001 lt!443006))))

(assert (=> b!1002079 (= lt!443001 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30469 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002080 () Bool)

(declare-fun res!671706 () Bool)

(assert (=> b!1002080 (=> (not res!671706) (not e!564599))))

(assert (=> b!1002080 (= res!671706 (not (= lt!443001 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443005 lt!443004 mask!3464))))))

(declare-fun b!1002081 () Bool)

(assert (=> b!1002081 (= e!564593 e!564599)))

(declare-fun res!671710 () Bool)

(assert (=> b!1002081 (=> (not res!671710) (not e!564599))))

(assert (=> b!1002081 (= res!671710 (not (= lt!443000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443005 mask!3464) lt!443005 lt!443004 mask!3464))))))

(assert (=> b!1002081 (= lt!443005 (select (store (arr!30469 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002081 (= lt!443004 (array!63296 (store (arr!30469 a!3219) i!1194 k!2224) (size!30972 a!3219)))))

(declare-fun b!1002082 () Bool)

(declare-fun res!671707 () Bool)

(assert (=> b!1002082 (=> (not res!671707) (not e!564594))))

(assert (=> b!1002082 (= res!671707 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443007 (select (arr!30469 a!3219) j!170) a!3219 mask!3464) lt!443006))))

(assert (= (and start!86542 res!671709) b!1002074))

(assert (= (and b!1002074 res!671703) b!1002067))

(assert (= (and b!1002067 res!671702) b!1002069))

(assert (= (and b!1002069 res!671701) b!1002068))

(assert (= (and b!1002068 res!671705) b!1002072))

(assert (= (and b!1002072 res!671713) b!1002078))

(assert (= (and b!1002078 res!671716) b!1002076))

(assert (= (and b!1002076 res!671711) b!1002071))

(assert (= (and b!1002071 res!671714) b!1002070))

(assert (= (and b!1002070 res!671708) b!1002079))

(assert (= (and b!1002079 res!671712) b!1002081))

(assert (= (and b!1002081 res!671710) b!1002080))

(assert (= (and b!1002080 res!671706) b!1002075))

(assert (= (and b!1002075 res!671704) b!1002073))

(assert (= (and b!1002073 res!671715) b!1002082))

(assert (= (and b!1002082 res!671707) b!1002077))

(declare-fun m!928101 () Bool)

(assert (=> b!1002073 m!928101))

(declare-fun m!928103 () Bool)

(assert (=> b!1002080 m!928103))

(declare-fun m!928105 () Bool)

(assert (=> b!1002072 m!928105))

(declare-fun m!928107 () Bool)

(assert (=> b!1002079 m!928107))

(assert (=> b!1002079 m!928107))

(declare-fun m!928109 () Bool)

(assert (=> b!1002079 m!928109))

(declare-fun m!928111 () Bool)

(assert (=> start!86542 m!928111))

(declare-fun m!928113 () Bool)

(assert (=> start!86542 m!928113))

(declare-fun m!928115 () Bool)

(assert (=> b!1002081 m!928115))

(assert (=> b!1002081 m!928115))

(declare-fun m!928117 () Bool)

(assert (=> b!1002081 m!928117))

(declare-fun m!928119 () Bool)

(assert (=> b!1002081 m!928119))

(declare-fun m!928121 () Bool)

(assert (=> b!1002081 m!928121))

(declare-fun m!928123 () Bool)

(assert (=> b!1002069 m!928123))

(assert (=> b!1002070 m!928107))

(assert (=> b!1002070 m!928107))

(declare-fun m!928125 () Bool)

(assert (=> b!1002070 m!928125))

(assert (=> b!1002070 m!928125))

(assert (=> b!1002070 m!928107))

(declare-fun m!928127 () Bool)

(assert (=> b!1002070 m!928127))

(assert (=> b!1002082 m!928107))

(assert (=> b!1002082 m!928107))

(declare-fun m!928129 () Bool)

(assert (=> b!1002082 m!928129))

(declare-fun m!928131 () Bool)

(assert (=> b!1002076 m!928131))

(declare-fun m!928133 () Bool)

(assert (=> b!1002077 m!928133))

(declare-fun m!928135 () Bool)

(assert (=> b!1002068 m!928135))

(declare-fun m!928137 () Bool)

(assert (=> b!1002078 m!928137))

(assert (=> b!1002067 m!928107))

(assert (=> b!1002067 m!928107))

(declare-fun m!928139 () Bool)

(assert (=> b!1002067 m!928139))

(push 1)

