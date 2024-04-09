; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86602 () Bool)

(assert start!86602)

(declare-fun b!1003507 () Bool)

(declare-fun res!673146 () Bool)

(declare-fun e!565229 () Bool)

(assert (=> b!1003507 (=> (not res!673146) (not e!565229))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003507 (= res!673146 (validKeyInArray!0 k!2224))))

(declare-fun b!1003508 () Bool)

(declare-fun res!673147 () Bool)

(assert (=> b!1003508 (=> (not res!673147) (not e!565229))))

(declare-datatypes ((array!63355 0))(
  ( (array!63356 (arr!30499 (Array (_ BitVec 32) (_ BitVec 64))) (size!31002 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63355)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1003508 (= res!673147 (and (= (size!31002 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31002 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31002 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003509 () Bool)

(declare-fun e!565228 () Bool)

(declare-fun e!565227 () Bool)

(assert (=> b!1003509 (= e!565228 e!565227)))

(declare-fun res!673153 () Bool)

(assert (=> b!1003509 (=> (not res!673153) (not e!565227))))

(declare-datatypes ((SeekEntryResult!9431 0))(
  ( (MissingZero!9431 (index!40094 (_ BitVec 32))) (Found!9431 (index!40095 (_ BitVec 32))) (Intermediate!9431 (undefined!10243 Bool) (index!40096 (_ BitVec 32)) (x!87532 (_ BitVec 32))) (Undefined!9431) (MissingVacant!9431 (index!40097 (_ BitVec 32))) )
))
(declare-fun lt!443720 () SeekEntryResult!9431)

(declare-fun lt!443721 () SeekEntryResult!9431)

(assert (=> b!1003509 (= res!673153 (= lt!443720 lt!443721))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003509 (= lt!443721 (Intermediate!9431 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63355 (_ BitVec 32)) SeekEntryResult!9431)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003509 (= lt!443720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30499 a!3219) j!170) mask!3464) (select (arr!30499 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003511 () Bool)

(declare-fun res!673145 () Bool)

(declare-fun e!565224 () Bool)

(assert (=> b!1003511 (=> (not res!673145) (not e!565224))))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1003511 (= res!673145 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003512 () Bool)

(declare-fun res!673152 () Bool)

(assert (=> b!1003512 (=> (not res!673152) (not e!565229))))

(declare-fun arrayContainsKey!0 (array!63355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003512 (= res!673152 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003513 () Bool)

(declare-fun e!565225 () Bool)

(assert (=> b!1003513 (= e!565225 false)))

(declare-fun lt!443723 () array!63355)

(declare-fun lt!443724 () SeekEntryResult!9431)

(declare-fun lt!443725 () (_ BitVec 64))

(declare-fun lt!443726 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1003513 (= lt!443724 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443726 lt!443725 lt!443723 mask!3464))))

(declare-fun b!1003514 () Bool)

(declare-fun res!673144 () Bool)

(assert (=> b!1003514 (=> (not res!673144) (not e!565228))))

(assert (=> b!1003514 (= res!673144 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31002 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31002 a!3219))))))

(declare-fun b!1003515 () Bool)

(declare-fun e!565223 () Bool)

(assert (=> b!1003515 (= e!565223 e!565224)))

(declare-fun res!673151 () Bool)

(assert (=> b!1003515 (=> (not res!673151) (not e!565224))))

(assert (=> b!1003515 (= res!673151 (not (= lt!443720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443725 mask!3464) lt!443725 lt!443723 mask!3464))))))

(assert (=> b!1003515 (= lt!443725 (select (store (arr!30499 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003515 (= lt!443723 (array!63356 (store (arr!30499 a!3219) i!1194 k!2224) (size!31002 a!3219)))))

(declare-fun b!1003516 () Bool)

(assert (=> b!1003516 (= e!565229 e!565228)))

(declare-fun res!673143 () Bool)

(assert (=> b!1003516 (=> (not res!673143) (not e!565228))))

(declare-fun lt!443722 () SeekEntryResult!9431)

(assert (=> b!1003516 (= res!673143 (or (= lt!443722 (MissingVacant!9431 i!1194)) (= lt!443722 (MissingZero!9431 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63355 (_ BitVec 32)) SeekEntryResult!9431)

(assert (=> b!1003516 (= lt!443722 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003517 () Bool)

(declare-fun res!673156 () Bool)

(assert (=> b!1003517 (=> (not res!673156) (not e!565225))))

(assert (=> b!1003517 (= res!673156 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443726 (select (arr!30499 a!3219) j!170) a!3219 mask!3464) lt!443721))))

(declare-fun b!1003518 () Bool)

(declare-fun res!673155 () Bool)

(assert (=> b!1003518 (=> (not res!673155) (not e!565224))))

(declare-fun lt!443727 () SeekEntryResult!9431)

(assert (=> b!1003518 (= res!673155 (not (= lt!443727 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443725 lt!443723 mask!3464))))))

(declare-fun b!1003519 () Bool)

(declare-fun res!673149 () Bool)

(assert (=> b!1003519 (=> (not res!673149) (not e!565229))))

(assert (=> b!1003519 (= res!673149 (validKeyInArray!0 (select (arr!30499 a!3219) j!170)))))

(declare-fun b!1003520 () Bool)

(assert (=> b!1003520 (= e!565224 e!565225)))

(declare-fun res!673150 () Bool)

(assert (=> b!1003520 (=> (not res!673150) (not e!565225))))

(assert (=> b!1003520 (= res!673150 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443726 #b00000000000000000000000000000000) (bvslt lt!443726 (size!31002 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003520 (= lt!443726 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003521 () Bool)

(declare-fun res!673148 () Bool)

(assert (=> b!1003521 (=> (not res!673148) (not e!565228))))

(declare-datatypes ((List!21301 0))(
  ( (Nil!21298) (Cons!21297 (h!22474 (_ BitVec 64)) (t!30310 List!21301)) )
))
(declare-fun arrayNoDuplicates!0 (array!63355 (_ BitVec 32) List!21301) Bool)

(assert (=> b!1003521 (= res!673148 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21298))))

(declare-fun b!1003522 () Bool)

(assert (=> b!1003522 (= e!565227 e!565223)))

(declare-fun res!673142 () Bool)

(assert (=> b!1003522 (=> (not res!673142) (not e!565223))))

(assert (=> b!1003522 (= res!673142 (= lt!443727 lt!443721))))

(assert (=> b!1003522 (= lt!443727 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30499 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003510 () Bool)

(declare-fun res!673154 () Bool)

(assert (=> b!1003510 (=> (not res!673154) (not e!565228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63355 (_ BitVec 32)) Bool)

(assert (=> b!1003510 (= res!673154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!673141 () Bool)

(assert (=> start!86602 (=> (not res!673141) (not e!565229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86602 (= res!673141 (validMask!0 mask!3464))))

(assert (=> start!86602 e!565229))

(declare-fun array_inv!23489 (array!63355) Bool)

(assert (=> start!86602 (array_inv!23489 a!3219)))

(assert (=> start!86602 true))

(assert (= (and start!86602 res!673141) b!1003508))

(assert (= (and b!1003508 res!673147) b!1003519))

(assert (= (and b!1003519 res!673149) b!1003507))

(assert (= (and b!1003507 res!673146) b!1003512))

(assert (= (and b!1003512 res!673152) b!1003516))

(assert (= (and b!1003516 res!673143) b!1003510))

(assert (= (and b!1003510 res!673154) b!1003521))

(assert (= (and b!1003521 res!673148) b!1003514))

(assert (= (and b!1003514 res!673144) b!1003509))

(assert (= (and b!1003509 res!673153) b!1003522))

(assert (= (and b!1003522 res!673142) b!1003515))

(assert (= (and b!1003515 res!673151) b!1003518))

(assert (= (and b!1003518 res!673155) b!1003511))

(assert (= (and b!1003511 res!673145) b!1003520))

(assert (= (and b!1003520 res!673150) b!1003517))

(assert (= (and b!1003517 res!673156) b!1003513))

(declare-fun m!929301 () Bool)

(assert (=> b!1003516 m!929301))

(declare-fun m!929303 () Bool)

(assert (=> b!1003510 m!929303))

(declare-fun m!929305 () Bool)

(assert (=> b!1003518 m!929305))

(declare-fun m!929307 () Bool)

(assert (=> b!1003517 m!929307))

(assert (=> b!1003517 m!929307))

(declare-fun m!929309 () Bool)

(assert (=> b!1003517 m!929309))

(declare-fun m!929311 () Bool)

(assert (=> b!1003520 m!929311))

(assert (=> b!1003509 m!929307))

(assert (=> b!1003509 m!929307))

(declare-fun m!929313 () Bool)

(assert (=> b!1003509 m!929313))

(assert (=> b!1003509 m!929313))

(assert (=> b!1003509 m!929307))

(declare-fun m!929315 () Bool)

(assert (=> b!1003509 m!929315))

(declare-fun m!929317 () Bool)

(assert (=> b!1003513 m!929317))

(assert (=> b!1003522 m!929307))

(assert (=> b!1003522 m!929307))

(declare-fun m!929319 () Bool)

(assert (=> b!1003522 m!929319))

(declare-fun m!929321 () Bool)

(assert (=> b!1003507 m!929321))

(declare-fun m!929323 () Bool)

(assert (=> b!1003515 m!929323))

(assert (=> b!1003515 m!929323))

(declare-fun m!929325 () Bool)

(assert (=> b!1003515 m!929325))

(declare-fun m!929327 () Bool)

(assert (=> b!1003515 m!929327))

(declare-fun m!929329 () Bool)

(assert (=> b!1003515 m!929329))

(declare-fun m!929331 () Bool)

(assert (=> start!86602 m!929331))

(declare-fun m!929333 () Bool)

(assert (=> start!86602 m!929333))

(declare-fun m!929335 () Bool)

(assert (=> b!1003521 m!929335))

(assert (=> b!1003519 m!929307))

(assert (=> b!1003519 m!929307))

(declare-fun m!929337 () Bool)

(assert (=> b!1003519 m!929337))

(declare-fun m!929339 () Bool)

(assert (=> b!1003512 m!929339))

(push 1)

