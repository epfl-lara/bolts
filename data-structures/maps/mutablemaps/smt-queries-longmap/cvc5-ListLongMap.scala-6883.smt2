; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86584 () Bool)

(assert start!86584)

(declare-fun b!1003075 () Bool)

(declare-fun e!565040 () Bool)

(assert (=> b!1003075 (= e!565040 false)))

(declare-datatypes ((SeekEntryResult!9422 0))(
  ( (MissingZero!9422 (index!40058 (_ BitVec 32))) (Found!9422 (index!40059 (_ BitVec 32))) (Intermediate!9422 (undefined!10234 Bool) (index!40060 (_ BitVec 32)) (x!87499 (_ BitVec 32))) (Undefined!9422) (MissingVacant!9422 (index!40061 (_ BitVec 32))) )
))
(declare-fun lt!443507 () SeekEntryResult!9422)

(declare-fun lt!443511 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!443505 () (_ BitVec 64))

(declare-datatypes ((array!63337 0))(
  ( (array!63338 (arr!30490 (Array (_ BitVec 32) (_ BitVec 64))) (size!30993 (_ BitVec 32))) )
))
(declare-fun lt!443508 () array!63337)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63337 (_ BitVec 32)) SeekEntryResult!9422)

(assert (=> b!1003075 (= lt!443507 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443511 lt!443505 lt!443508 mask!3464))))

(declare-fun b!1003076 () Bool)

(declare-fun res!672722 () Bool)

(declare-fun e!565037 () Bool)

(assert (=> b!1003076 (=> (not res!672722) (not e!565037))))

(declare-fun a!3219 () array!63337)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003076 (= res!672722 (validKeyInArray!0 (select (arr!30490 a!3219) j!170)))))

(declare-fun res!672714 () Bool)

(assert (=> start!86584 (=> (not res!672714) (not e!565037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86584 (= res!672714 (validMask!0 mask!3464))))

(assert (=> start!86584 e!565037))

(declare-fun array_inv!23480 (array!63337) Bool)

(assert (=> start!86584 (array_inv!23480 a!3219)))

(assert (=> start!86584 true))

(declare-fun b!1003077 () Bool)

(declare-fun res!672718 () Bool)

(assert (=> b!1003077 (=> (not res!672718) (not e!565037))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003077 (= res!672718 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003078 () Bool)

(declare-fun res!672712 () Bool)

(declare-fun e!565036 () Bool)

(assert (=> b!1003078 (=> (not res!672712) (not e!565036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63337 (_ BitVec 32)) Bool)

(assert (=> b!1003078 (= res!672712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003079 () Bool)

(declare-fun e!565034 () Bool)

(declare-fun e!565038 () Bool)

(assert (=> b!1003079 (= e!565034 e!565038)))

(declare-fun res!672717 () Bool)

(assert (=> b!1003079 (=> (not res!672717) (not e!565038))))

(declare-fun lt!443509 () SeekEntryResult!9422)

(declare-fun lt!443506 () SeekEntryResult!9422)

(assert (=> b!1003079 (= res!672717 (= lt!443509 lt!443506))))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1003079 (= lt!443509 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30490 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003080 () Bool)

(declare-fun res!672709 () Bool)

(assert (=> b!1003080 (=> (not res!672709) (not e!565037))))

(assert (=> b!1003080 (= res!672709 (validKeyInArray!0 k!2224))))

(declare-fun b!1003081 () Bool)

(declare-fun res!672724 () Bool)

(assert (=> b!1003081 (=> (not res!672724) (not e!565040))))

(assert (=> b!1003081 (= res!672724 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443511 (select (arr!30490 a!3219) j!170) a!3219 mask!3464) lt!443506))))

(declare-fun b!1003082 () Bool)

(declare-fun res!672720 () Bool)

(declare-fun e!565039 () Bool)

(assert (=> b!1003082 (=> (not res!672720) (not e!565039))))

(assert (=> b!1003082 (= res!672720 (not (= lt!443509 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443505 lt!443508 mask!3464))))))

(declare-fun b!1003083 () Bool)

(assert (=> b!1003083 (= e!565036 e!565034)))

(declare-fun res!672713 () Bool)

(assert (=> b!1003083 (=> (not res!672713) (not e!565034))))

(declare-fun lt!443510 () SeekEntryResult!9422)

(assert (=> b!1003083 (= res!672713 (= lt!443510 lt!443506))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003083 (= lt!443506 (Intermediate!9422 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003083 (= lt!443510 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30490 a!3219) j!170) mask!3464) (select (arr!30490 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003084 () Bool)

(declare-fun res!672711 () Bool)

(assert (=> b!1003084 (=> (not res!672711) (not e!565036))))

(assert (=> b!1003084 (= res!672711 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30993 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30993 a!3219))))))

(declare-fun b!1003085 () Bool)

(assert (=> b!1003085 (= e!565039 e!565040)))

(declare-fun res!672719 () Bool)

(assert (=> b!1003085 (=> (not res!672719) (not e!565040))))

(assert (=> b!1003085 (= res!672719 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443511 #b00000000000000000000000000000000) (bvslt lt!443511 (size!30993 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003085 (= lt!443511 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003086 () Bool)

(assert (=> b!1003086 (= e!565037 e!565036)))

(declare-fun res!672715 () Bool)

(assert (=> b!1003086 (=> (not res!672715) (not e!565036))))

(declare-fun lt!443504 () SeekEntryResult!9422)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003086 (= res!672715 (or (= lt!443504 (MissingVacant!9422 i!1194)) (= lt!443504 (MissingZero!9422 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63337 (_ BitVec 32)) SeekEntryResult!9422)

(assert (=> b!1003086 (= lt!443504 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003087 () Bool)

(declare-fun res!672723 () Bool)

(assert (=> b!1003087 (=> (not res!672723) (not e!565039))))

(assert (=> b!1003087 (= res!672723 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003088 () Bool)

(declare-fun res!672710 () Bool)

(assert (=> b!1003088 (=> (not res!672710) (not e!565037))))

(assert (=> b!1003088 (= res!672710 (and (= (size!30993 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30993 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30993 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003089 () Bool)

(assert (=> b!1003089 (= e!565038 e!565039)))

(declare-fun res!672716 () Bool)

(assert (=> b!1003089 (=> (not res!672716) (not e!565039))))

(assert (=> b!1003089 (= res!672716 (not (= lt!443510 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443505 mask!3464) lt!443505 lt!443508 mask!3464))))))

(assert (=> b!1003089 (= lt!443505 (select (store (arr!30490 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003089 (= lt!443508 (array!63338 (store (arr!30490 a!3219) i!1194 k!2224) (size!30993 a!3219)))))

(declare-fun b!1003090 () Bool)

(declare-fun res!672721 () Bool)

(assert (=> b!1003090 (=> (not res!672721) (not e!565036))))

(declare-datatypes ((List!21292 0))(
  ( (Nil!21289) (Cons!21288 (h!22465 (_ BitVec 64)) (t!30301 List!21292)) )
))
(declare-fun arrayNoDuplicates!0 (array!63337 (_ BitVec 32) List!21292) Bool)

(assert (=> b!1003090 (= res!672721 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21289))))

(assert (= (and start!86584 res!672714) b!1003088))

(assert (= (and b!1003088 res!672710) b!1003076))

(assert (= (and b!1003076 res!672722) b!1003080))

(assert (= (and b!1003080 res!672709) b!1003077))

(assert (= (and b!1003077 res!672718) b!1003086))

(assert (= (and b!1003086 res!672715) b!1003078))

(assert (= (and b!1003078 res!672712) b!1003090))

(assert (= (and b!1003090 res!672721) b!1003084))

(assert (= (and b!1003084 res!672711) b!1003083))

(assert (= (and b!1003083 res!672713) b!1003079))

(assert (= (and b!1003079 res!672717) b!1003089))

(assert (= (and b!1003089 res!672716) b!1003082))

(assert (= (and b!1003082 res!672720) b!1003087))

(assert (= (and b!1003087 res!672723) b!1003085))

(assert (= (and b!1003085 res!672719) b!1003081))

(assert (= (and b!1003081 res!672724) b!1003075))

(declare-fun m!928941 () Bool)

(assert (=> b!1003077 m!928941))

(declare-fun m!928943 () Bool)

(assert (=> b!1003076 m!928943))

(assert (=> b!1003076 m!928943))

(declare-fun m!928945 () Bool)

(assert (=> b!1003076 m!928945))

(assert (=> b!1003081 m!928943))

(assert (=> b!1003081 m!928943))

(declare-fun m!928947 () Bool)

(assert (=> b!1003081 m!928947))

(declare-fun m!928949 () Bool)

(assert (=> b!1003078 m!928949))

(declare-fun m!928951 () Bool)

(assert (=> b!1003080 m!928951))

(declare-fun m!928953 () Bool)

(assert (=> b!1003082 m!928953))

(declare-fun m!928955 () Bool)

(assert (=> start!86584 m!928955))

(declare-fun m!928957 () Bool)

(assert (=> start!86584 m!928957))

(declare-fun m!928959 () Bool)

(assert (=> b!1003075 m!928959))

(assert (=> b!1003083 m!928943))

(assert (=> b!1003083 m!928943))

(declare-fun m!928961 () Bool)

(assert (=> b!1003083 m!928961))

(assert (=> b!1003083 m!928961))

(assert (=> b!1003083 m!928943))

(declare-fun m!928963 () Bool)

(assert (=> b!1003083 m!928963))

(declare-fun m!928965 () Bool)

(assert (=> b!1003085 m!928965))

(assert (=> b!1003079 m!928943))

(assert (=> b!1003079 m!928943))

(declare-fun m!928967 () Bool)

(assert (=> b!1003079 m!928967))

(declare-fun m!928969 () Bool)

(assert (=> b!1003090 m!928969))

(declare-fun m!928971 () Bool)

(assert (=> b!1003089 m!928971))

(assert (=> b!1003089 m!928971))

(declare-fun m!928973 () Bool)

(assert (=> b!1003089 m!928973))

(declare-fun m!928975 () Bool)

(assert (=> b!1003089 m!928975))

(declare-fun m!928977 () Bool)

(assert (=> b!1003089 m!928977))

(declare-fun m!928979 () Bool)

(assert (=> b!1003086 m!928979))

(push 1)

