; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48736 () Bool)

(assert start!48736)

(declare-fun b!535357 () Bool)

(declare-fun res!330721 () Bool)

(declare-fun e!310970 () Bool)

(assert (=> b!535357 (=> (not res!330721) (not e!310970))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535357 (= res!330721 (validKeyInArray!0 k!1998))))

(declare-fun b!535358 () Bool)

(declare-fun res!330717 () Bool)

(declare-fun e!310971 () Bool)

(assert (=> b!535358 (=> (not res!330717) (not e!310971))))

(declare-datatypes ((array!33904 0))(
  ( (array!33905 (arr!16287 (Array (_ BitVec 32) (_ BitVec 64))) (size!16651 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33904)

(declare-datatypes ((List!10459 0))(
  ( (Nil!10456) (Cons!10455 (h!11398 (_ BitVec 64)) (t!16695 List!10459)) )
))
(declare-fun arrayNoDuplicates!0 (array!33904 (_ BitVec 32) List!10459) Bool)

(assert (=> b!535358 (= res!330717 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10456))))

(declare-fun e!310969 () Bool)

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun b!535359 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!535359 (= e!310969 (and (not (= (select (arr!16287 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16287 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16287 a!3154) index!1177) (select (arr!16287 a!3154) j!147))) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun res!330722 () Bool)

(assert (=> start!48736 (=> (not res!330722) (not e!310970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48736 (= res!330722 (validMask!0 mask!3216))))

(assert (=> start!48736 e!310970))

(assert (=> start!48736 true))

(declare-fun array_inv!12061 (array!33904) Bool)

(assert (=> start!48736 (array_inv!12061 a!3154)))

(declare-fun b!535360 () Bool)

(declare-fun res!330718 () Bool)

(assert (=> b!535360 (=> (not res!330718) (not e!310971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33904 (_ BitVec 32)) Bool)

(assert (=> b!535360 (= res!330718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535361 () Bool)

(declare-fun res!330716 () Bool)

(assert (=> b!535361 (=> (not res!330716) (not e!310969))))

(declare-datatypes ((SeekEntryResult!4752 0))(
  ( (MissingZero!4752 (index!21232 (_ BitVec 32))) (Found!4752 (index!21233 (_ BitVec 32))) (Intermediate!4752 (undefined!5564 Bool) (index!21234 (_ BitVec 32)) (x!50210 (_ BitVec 32))) (Undefined!4752) (MissingVacant!4752 (index!21235 (_ BitVec 32))) )
))
(declare-fun lt!245807 () SeekEntryResult!4752)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33904 (_ BitVec 32)) SeekEntryResult!4752)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535361 (= res!330716 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16287 a!3154) j!147) mask!3216) (select (arr!16287 a!3154) j!147) a!3154 mask!3216) lt!245807))))

(declare-fun b!535362 () Bool)

(assert (=> b!535362 (= e!310971 e!310969)))

(declare-fun res!330714 () Bool)

(assert (=> b!535362 (=> (not res!330714) (not e!310969))))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!535362 (= res!330714 (= lt!245807 (Intermediate!4752 false resIndex!32 resX!32)))))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!535362 (= lt!245807 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16287 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535363 () Bool)

(assert (=> b!535363 (= e!310970 e!310971)))

(declare-fun res!330719 () Bool)

(assert (=> b!535363 (=> (not res!330719) (not e!310971))))

(declare-fun lt!245806 () SeekEntryResult!4752)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535363 (= res!330719 (or (= lt!245806 (MissingZero!4752 i!1153)) (= lt!245806 (MissingVacant!4752 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33904 (_ BitVec 32)) SeekEntryResult!4752)

(assert (=> b!535363 (= lt!245806 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535364 () Bool)

(declare-fun res!330715 () Bool)

(assert (=> b!535364 (=> (not res!330715) (not e!310971))))

(assert (=> b!535364 (= res!330715 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16651 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16651 a!3154)) (= (select (arr!16287 a!3154) resIndex!32) (select (arr!16287 a!3154) j!147))))))

(declare-fun b!535365 () Bool)

(declare-fun res!330720 () Bool)

(assert (=> b!535365 (=> (not res!330720) (not e!310970))))

(assert (=> b!535365 (= res!330720 (and (= (size!16651 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16651 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16651 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535366 () Bool)

(declare-fun res!330712 () Bool)

(assert (=> b!535366 (=> (not res!330712) (not e!310970))))

(assert (=> b!535366 (= res!330712 (validKeyInArray!0 (select (arr!16287 a!3154) j!147)))))

(declare-fun b!535367 () Bool)

(declare-fun res!330713 () Bool)

(assert (=> b!535367 (=> (not res!330713) (not e!310970))))

(declare-fun arrayContainsKey!0 (array!33904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535367 (= res!330713 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48736 res!330722) b!535365))

(assert (= (and b!535365 res!330720) b!535366))

(assert (= (and b!535366 res!330712) b!535357))

(assert (= (and b!535357 res!330721) b!535367))

(assert (= (and b!535367 res!330713) b!535363))

(assert (= (and b!535363 res!330719) b!535360))

(assert (= (and b!535360 res!330718) b!535358))

(assert (= (and b!535358 res!330717) b!535364))

(assert (= (and b!535364 res!330715) b!535362))

(assert (= (and b!535362 res!330714) b!535361))

(assert (= (and b!535361 res!330716) b!535359))

(declare-fun m!514963 () Bool)

(assert (=> b!535359 m!514963))

(declare-fun m!514965 () Bool)

(assert (=> b!535359 m!514965))

(declare-fun m!514967 () Bool)

(assert (=> b!535357 m!514967))

(declare-fun m!514969 () Bool)

(assert (=> start!48736 m!514969))

(declare-fun m!514971 () Bool)

(assert (=> start!48736 m!514971))

(declare-fun m!514973 () Bool)

(assert (=> b!535358 m!514973))

(declare-fun m!514975 () Bool)

(assert (=> b!535360 m!514975))

(declare-fun m!514977 () Bool)

(assert (=> b!535364 m!514977))

(assert (=> b!535364 m!514965))

(declare-fun m!514979 () Bool)

(assert (=> b!535367 m!514979))

(assert (=> b!535362 m!514965))

(assert (=> b!535362 m!514965))

(declare-fun m!514981 () Bool)

(assert (=> b!535362 m!514981))

(assert (=> b!535366 m!514965))

(assert (=> b!535366 m!514965))

(declare-fun m!514983 () Bool)

(assert (=> b!535366 m!514983))

(declare-fun m!514985 () Bool)

(assert (=> b!535363 m!514985))

(assert (=> b!535361 m!514965))

(assert (=> b!535361 m!514965))

(declare-fun m!514987 () Bool)

(assert (=> b!535361 m!514987))

(assert (=> b!535361 m!514987))

(assert (=> b!535361 m!514965))

(declare-fun m!514989 () Bool)

(assert (=> b!535361 m!514989))

(push 1)

(assert (not b!535363))

(assert (not start!48736))

(assert (not b!535367))

(assert (not b!535361))

(assert (not b!535362))

(assert (not b!535357))

(assert (not b!535358))

(assert (not b!535360))

(assert (not b!535366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

