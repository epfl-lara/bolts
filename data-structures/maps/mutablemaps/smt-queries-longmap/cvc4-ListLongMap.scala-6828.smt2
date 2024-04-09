; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85994 () Bool)

(assert start!85994)

(declare-fun b!995933 () Bool)

(declare-fun res!666290 () Bool)

(declare-fun e!561988 () Bool)

(assert (=> b!995933 (=> (not res!666290) (not e!561988))))

(declare-datatypes ((array!62996 0))(
  ( (array!62997 (arr!30327 (Array (_ BitVec 32) (_ BitVec 64))) (size!30830 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62996)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62996 (_ BitVec 32)) Bool)

(assert (=> b!995933 (= res!666290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995935 () Bool)

(declare-fun res!666291 () Bool)

(declare-fun e!561987 () Bool)

(assert (=> b!995935 (=> (not res!666291) (not e!561987))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995935 (= res!666291 (validKeyInArray!0 k!2224))))

(declare-fun b!995936 () Bool)

(declare-fun res!666297 () Bool)

(assert (=> b!995936 (=> (not res!666297) (not e!561988))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995936 (= res!666297 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30830 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30830 a!3219))))))

(declare-fun b!995937 () Bool)

(declare-fun res!666293 () Bool)

(assert (=> b!995937 (=> (not res!666293) (not e!561987))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995937 (= res!666293 (and (= (size!30830 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30830 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30830 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995938 () Bool)

(declare-fun res!666294 () Bool)

(assert (=> b!995938 (=> (not res!666294) (not e!561987))))

(declare-fun arrayContainsKey!0 (array!62996 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995938 (= res!666294 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995939 () Bool)

(declare-fun res!666296 () Bool)

(assert (=> b!995939 (=> (not res!666296) (not e!561988))))

(declare-datatypes ((List!21129 0))(
  ( (Nil!21126) (Cons!21125 (h!22287 (_ BitVec 64)) (t!30138 List!21129)) )
))
(declare-fun arrayNoDuplicates!0 (array!62996 (_ BitVec 32) List!21129) Bool)

(assert (=> b!995939 (= res!666296 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21126))))

(declare-fun res!666295 () Bool)

(assert (=> start!85994 (=> (not res!666295) (not e!561987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85994 (= res!666295 (validMask!0 mask!3464))))

(assert (=> start!85994 e!561987))

(declare-fun array_inv!23317 (array!62996) Bool)

(assert (=> start!85994 (array_inv!23317 a!3219)))

(assert (=> start!85994 true))

(declare-fun b!995934 () Bool)

(declare-fun res!666298 () Bool)

(assert (=> b!995934 (=> (not res!666298) (not e!561987))))

(assert (=> b!995934 (= res!666298 (validKeyInArray!0 (select (arr!30327 a!3219) j!170)))))

(declare-fun b!995940 () Bool)

(assert (=> b!995940 (= e!561988 false)))

(declare-fun lt!441063 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995940 (= lt!441063 (toIndex!0 (select (arr!30327 a!3219) j!170) mask!3464))))

(declare-fun b!995941 () Bool)

(assert (=> b!995941 (= e!561987 e!561988)))

(declare-fun res!666292 () Bool)

(assert (=> b!995941 (=> (not res!666292) (not e!561988))))

(declare-datatypes ((SeekEntryResult!9259 0))(
  ( (MissingZero!9259 (index!39406 (_ BitVec 32))) (Found!9259 (index!39407 (_ BitVec 32))) (Intermediate!9259 (undefined!10071 Bool) (index!39408 (_ BitVec 32)) (x!86869 (_ BitVec 32))) (Undefined!9259) (MissingVacant!9259 (index!39409 (_ BitVec 32))) )
))
(declare-fun lt!441062 () SeekEntryResult!9259)

(assert (=> b!995941 (= res!666292 (or (= lt!441062 (MissingVacant!9259 i!1194)) (= lt!441062 (MissingZero!9259 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62996 (_ BitVec 32)) SeekEntryResult!9259)

(assert (=> b!995941 (= lt!441062 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!85994 res!666295) b!995937))

(assert (= (and b!995937 res!666293) b!995934))

(assert (= (and b!995934 res!666298) b!995935))

(assert (= (and b!995935 res!666291) b!995938))

(assert (= (and b!995938 res!666294) b!995941))

(assert (= (and b!995941 res!666292) b!995933))

(assert (= (and b!995933 res!666290) b!995939))

(assert (= (and b!995939 res!666296) b!995936))

(assert (= (and b!995936 res!666297) b!995940))

(declare-fun m!923281 () Bool)

(assert (=> b!995941 m!923281))

(declare-fun m!923283 () Bool)

(assert (=> b!995935 m!923283))

(declare-fun m!923285 () Bool)

(assert (=> start!85994 m!923285))

(declare-fun m!923287 () Bool)

(assert (=> start!85994 m!923287))

(declare-fun m!923289 () Bool)

(assert (=> b!995934 m!923289))

(assert (=> b!995934 m!923289))

(declare-fun m!923291 () Bool)

(assert (=> b!995934 m!923291))

(assert (=> b!995940 m!923289))

(assert (=> b!995940 m!923289))

(declare-fun m!923293 () Bool)

(assert (=> b!995940 m!923293))

(declare-fun m!923295 () Bool)

(assert (=> b!995933 m!923295))

(declare-fun m!923297 () Bool)

(assert (=> b!995938 m!923297))

(declare-fun m!923299 () Bool)

(assert (=> b!995939 m!923299))

(push 1)

(assert (not b!995941))

(assert (not b!995935))

(assert (not b!995938))

(assert (not b!995940))

