; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85986 () Bool)

(assert start!85986)

(declare-fun b!995825 () Bool)

(declare-fun e!561951 () Bool)

(declare-fun e!561952 () Bool)

(assert (=> b!995825 (= e!561951 e!561952)))

(declare-fun res!666182 () Bool)

(assert (=> b!995825 (=> (not res!666182) (not e!561952))))

(declare-datatypes ((SeekEntryResult!9255 0))(
  ( (MissingZero!9255 (index!39390 (_ BitVec 32))) (Found!9255 (index!39391 (_ BitVec 32))) (Intermediate!9255 (undefined!10067 Bool) (index!39392 (_ BitVec 32)) (x!86857 (_ BitVec 32))) (Undefined!9255) (MissingVacant!9255 (index!39393 (_ BitVec 32))) )
))
(declare-fun lt!441038 () SeekEntryResult!9255)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995825 (= res!666182 (or (= lt!441038 (MissingVacant!9255 i!1194)) (= lt!441038 (MissingZero!9255 i!1194))))))

(declare-datatypes ((array!62988 0))(
  ( (array!62989 (arr!30323 (Array (_ BitVec 32) (_ BitVec 64))) (size!30826 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62988)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62988 (_ BitVec 32)) SeekEntryResult!9255)

(assert (=> b!995825 (= lt!441038 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!995826 () Bool)

(declare-fun res!666187 () Bool)

(assert (=> b!995826 (=> (not res!666187) (not e!561951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995826 (= res!666187 (validKeyInArray!0 k0!2224))))

(declare-fun b!995827 () Bool)

(declare-fun res!666186 () Bool)

(assert (=> b!995827 (=> (not res!666186) (not e!561952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62988 (_ BitVec 32)) Bool)

(assert (=> b!995827 (= res!666186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995828 () Bool)

(declare-fun res!666189 () Bool)

(assert (=> b!995828 (=> (not res!666189) (not e!561951))))

(declare-fun arrayContainsKey!0 (array!62988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995828 (= res!666189 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995829 () Bool)

(declare-fun res!666184 () Bool)

(assert (=> b!995829 (=> (not res!666184) (not e!561952))))

(declare-datatypes ((List!21125 0))(
  ( (Nil!21122) (Cons!21121 (h!22283 (_ BitVec 64)) (t!30134 List!21125)) )
))
(declare-fun arrayNoDuplicates!0 (array!62988 (_ BitVec 32) List!21125) Bool)

(assert (=> b!995829 (= res!666184 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21122))))

(declare-fun b!995831 () Bool)

(declare-fun res!666190 () Bool)

(assert (=> b!995831 (=> (not res!666190) (not e!561951))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!995831 (= res!666190 (and (= (size!30826 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30826 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30826 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995832 () Bool)

(declare-fun res!666188 () Bool)

(assert (=> b!995832 (=> (not res!666188) (not e!561952))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995832 (= res!666188 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30826 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30826 a!3219))))))

(declare-fun b!995833 () Bool)

(assert (=> b!995833 (= e!561952 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun lt!441039 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995833 (= lt!441039 (toIndex!0 (select (arr!30323 a!3219) j!170) mask!3464))))

(declare-fun b!995830 () Bool)

(declare-fun res!666183 () Bool)

(assert (=> b!995830 (=> (not res!666183) (not e!561951))))

(assert (=> b!995830 (= res!666183 (validKeyInArray!0 (select (arr!30323 a!3219) j!170)))))

(declare-fun res!666185 () Bool)

(assert (=> start!85986 (=> (not res!666185) (not e!561951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85986 (= res!666185 (validMask!0 mask!3464))))

(assert (=> start!85986 e!561951))

(declare-fun array_inv!23313 (array!62988) Bool)

(assert (=> start!85986 (array_inv!23313 a!3219)))

(assert (=> start!85986 true))

(assert (= (and start!85986 res!666185) b!995831))

(assert (= (and b!995831 res!666190) b!995830))

(assert (= (and b!995830 res!666183) b!995826))

(assert (= (and b!995826 res!666187) b!995828))

(assert (= (and b!995828 res!666189) b!995825))

(assert (= (and b!995825 res!666182) b!995827))

(assert (= (and b!995827 res!666186) b!995829))

(assert (= (and b!995829 res!666184) b!995832))

(assert (= (and b!995832 res!666188) b!995833))

(declare-fun m!923201 () Bool)

(assert (=> b!995825 m!923201))

(declare-fun m!923203 () Bool)

(assert (=> b!995833 m!923203))

(assert (=> b!995833 m!923203))

(declare-fun m!923205 () Bool)

(assert (=> b!995833 m!923205))

(declare-fun m!923207 () Bool)

(assert (=> b!995828 m!923207))

(declare-fun m!923209 () Bool)

(assert (=> b!995827 m!923209))

(declare-fun m!923211 () Bool)

(assert (=> start!85986 m!923211))

(declare-fun m!923213 () Bool)

(assert (=> start!85986 m!923213))

(assert (=> b!995830 m!923203))

(assert (=> b!995830 m!923203))

(declare-fun m!923215 () Bool)

(assert (=> b!995830 m!923215))

(declare-fun m!923217 () Bool)

(assert (=> b!995826 m!923217))

(declare-fun m!923219 () Bool)

(assert (=> b!995829 m!923219))

(check-sat (not b!995826) (not b!995828) (not b!995825) (not b!995833) (not b!995829) (not start!85986) (not b!995830) (not b!995827))
(check-sat)
