; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86552 () Bool)

(assert start!86552)

(declare-fun b!1002307 () Bool)

(declare-fun res!671953 () Bool)

(declare-fun e!564704 () Bool)

(assert (=> b!1002307 (=> (not res!671953) (not e!564704))))

(declare-datatypes ((array!63305 0))(
  ( (array!63306 (arr!30474 (Array (_ BitVec 32) (_ BitVec 64))) (size!30977 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63305)

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9406 0))(
  ( (MissingZero!9406 (index!39994 (_ BitVec 32))) (Found!9406 (index!39995 (_ BitVec 32))) (Intermediate!9406 (undefined!10218 Bool) (index!39996 (_ BitVec 32)) (x!87435 (_ BitVec 32))) (Undefined!9406) (MissingVacant!9406 (index!39997 (_ BitVec 32))) )
))
(declare-fun lt!443126 () SeekEntryResult!9406)

(declare-fun lt!443120 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63305 (_ BitVec 32)) SeekEntryResult!9406)

(assert (=> b!1002307 (= res!671953 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443120 (select (arr!30474 a!3219) j!170) a!3219 mask!3464) lt!443126))))

(declare-fun b!1002308 () Bool)

(declare-fun e!564700 () Bool)

(declare-fun e!564703 () Bool)

(assert (=> b!1002308 (= e!564700 e!564703)))

(declare-fun res!671956 () Bool)

(assert (=> b!1002308 (=> (not res!671956) (not e!564703))))

(declare-fun lt!443121 () (_ BitVec 64))

(declare-fun lt!443122 () SeekEntryResult!9406)

(declare-fun lt!443125 () array!63305)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002308 (= res!671956 (not (= lt!443122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443121 mask!3464) lt!443121 lt!443125 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1002308 (= lt!443121 (select (store (arr!30474 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002308 (= lt!443125 (array!63306 (store (arr!30474 a!3219) i!1194 k!2224) (size!30977 a!3219)))))

(declare-fun b!1002309 () Bool)

(declare-fun res!671946 () Bool)

(assert (=> b!1002309 (=> (not res!671946) (not e!564703))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002309 (= res!671946 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun res!671949 () Bool)

(declare-fun e!564702 () Bool)

(assert (=> start!86552 (=> (not res!671949) (not e!564702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86552 (= res!671949 (validMask!0 mask!3464))))

(assert (=> start!86552 e!564702))

(declare-fun array_inv!23464 (array!63305) Bool)

(assert (=> start!86552 (array_inv!23464 a!3219)))

(assert (=> start!86552 true))

(declare-fun b!1002310 () Bool)

(declare-fun res!671951 () Bool)

(assert (=> b!1002310 (=> (not res!671951) (not e!564702))))

(declare-fun arrayContainsKey!0 (array!63305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002310 (= res!671951 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002311 () Bool)

(declare-fun res!671955 () Bool)

(declare-fun e!564698 () Bool)

(assert (=> b!1002311 (=> (not res!671955) (not e!564698))))

(declare-datatypes ((List!21276 0))(
  ( (Nil!21273) (Cons!21272 (h!22449 (_ BitVec 64)) (t!30285 List!21276)) )
))
(declare-fun arrayNoDuplicates!0 (array!63305 (_ BitVec 32) List!21276) Bool)

(assert (=> b!1002311 (= res!671955 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21273))))

(declare-fun b!1002312 () Bool)

(assert (=> b!1002312 (= e!564704 false)))

(declare-fun lt!443127 () SeekEntryResult!9406)

(assert (=> b!1002312 (= lt!443127 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443120 lt!443121 lt!443125 mask!3464))))

(declare-fun b!1002313 () Bool)

(declare-fun res!671950 () Bool)

(assert (=> b!1002313 (=> (not res!671950) (not e!564702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002313 (= res!671950 (validKeyInArray!0 k!2224))))

(declare-fun b!1002314 () Bool)

(assert (=> b!1002314 (= e!564702 e!564698)))

(declare-fun res!671952 () Bool)

(assert (=> b!1002314 (=> (not res!671952) (not e!564698))))

(declare-fun lt!443124 () SeekEntryResult!9406)

(assert (=> b!1002314 (= res!671952 (or (= lt!443124 (MissingVacant!9406 i!1194)) (= lt!443124 (MissingZero!9406 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63305 (_ BitVec 32)) SeekEntryResult!9406)

(assert (=> b!1002314 (= lt!443124 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002315 () Bool)

(declare-fun res!671942 () Bool)

(assert (=> b!1002315 (=> (not res!671942) (not e!564698))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002315 (= res!671942 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30977 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30977 a!3219))))))

(declare-fun b!1002316 () Bool)

(declare-fun res!671944 () Bool)

(assert (=> b!1002316 (=> (not res!671944) (not e!564698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63305 (_ BitVec 32)) Bool)

(assert (=> b!1002316 (= res!671944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002317 () Bool)

(declare-fun res!671941 () Bool)

(assert (=> b!1002317 (=> (not res!671941) (not e!564703))))

(declare-fun lt!443123 () SeekEntryResult!9406)

(assert (=> b!1002317 (= res!671941 (not (= lt!443123 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443121 lt!443125 mask!3464))))))

(declare-fun b!1002318 () Bool)

(assert (=> b!1002318 (= e!564703 e!564704)))

(declare-fun res!671948 () Bool)

(assert (=> b!1002318 (=> (not res!671948) (not e!564704))))

(assert (=> b!1002318 (= res!671948 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443120 #b00000000000000000000000000000000) (bvslt lt!443120 (size!30977 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002318 (= lt!443120 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002319 () Bool)

(declare-fun res!671954 () Bool)

(assert (=> b!1002319 (=> (not res!671954) (not e!564702))))

(assert (=> b!1002319 (= res!671954 (validKeyInArray!0 (select (arr!30474 a!3219) j!170)))))

(declare-fun b!1002320 () Bool)

(declare-fun e!564699 () Bool)

(assert (=> b!1002320 (= e!564699 e!564700)))

(declare-fun res!671943 () Bool)

(assert (=> b!1002320 (=> (not res!671943) (not e!564700))))

(assert (=> b!1002320 (= res!671943 (= lt!443123 lt!443126))))

(assert (=> b!1002320 (= lt!443123 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30474 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002321 () Bool)

(declare-fun res!671945 () Bool)

(assert (=> b!1002321 (=> (not res!671945) (not e!564702))))

(assert (=> b!1002321 (= res!671945 (and (= (size!30977 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30977 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30977 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002322 () Bool)

(assert (=> b!1002322 (= e!564698 e!564699)))

(declare-fun res!671947 () Bool)

(assert (=> b!1002322 (=> (not res!671947) (not e!564699))))

(assert (=> b!1002322 (= res!671947 (= lt!443122 lt!443126))))

(assert (=> b!1002322 (= lt!443126 (Intermediate!9406 false resIndex!38 resX!38))))

(assert (=> b!1002322 (= lt!443122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30474 a!3219) j!170) mask!3464) (select (arr!30474 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86552 res!671949) b!1002321))

(assert (= (and b!1002321 res!671945) b!1002319))

(assert (= (and b!1002319 res!671954) b!1002313))

(assert (= (and b!1002313 res!671950) b!1002310))

(assert (= (and b!1002310 res!671951) b!1002314))

(assert (= (and b!1002314 res!671952) b!1002316))

(assert (= (and b!1002316 res!671944) b!1002311))

(assert (= (and b!1002311 res!671955) b!1002315))

(assert (= (and b!1002315 res!671942) b!1002322))

(assert (= (and b!1002322 res!671947) b!1002320))

(assert (= (and b!1002320 res!671943) b!1002308))

(assert (= (and b!1002308 res!671956) b!1002317))

(assert (= (and b!1002317 res!671941) b!1002309))

(assert (= (and b!1002309 res!671946) b!1002318))

(assert (= (and b!1002318 res!671948) b!1002307))

(assert (= (and b!1002307 res!671953) b!1002312))

(declare-fun m!928301 () Bool)

(assert (=> b!1002308 m!928301))

(assert (=> b!1002308 m!928301))

(declare-fun m!928303 () Bool)

(assert (=> b!1002308 m!928303))

(declare-fun m!928305 () Bool)

(assert (=> b!1002308 m!928305))

(declare-fun m!928307 () Bool)

(assert (=> b!1002308 m!928307))

(declare-fun m!928309 () Bool)

(assert (=> b!1002316 m!928309))

(declare-fun m!928311 () Bool)

(assert (=> start!86552 m!928311))

(declare-fun m!928313 () Bool)

(assert (=> start!86552 m!928313))

(declare-fun m!928315 () Bool)

(assert (=> b!1002311 m!928315))

(declare-fun m!928317 () Bool)

(assert (=> b!1002319 m!928317))

(assert (=> b!1002319 m!928317))

(declare-fun m!928319 () Bool)

(assert (=> b!1002319 m!928319))

(assert (=> b!1002320 m!928317))

(assert (=> b!1002320 m!928317))

(declare-fun m!928321 () Bool)

(assert (=> b!1002320 m!928321))

(declare-fun m!928323 () Bool)

(assert (=> b!1002312 m!928323))

(assert (=> b!1002307 m!928317))

(assert (=> b!1002307 m!928317))

(declare-fun m!928325 () Bool)

(assert (=> b!1002307 m!928325))

(assert (=> b!1002322 m!928317))

(assert (=> b!1002322 m!928317))

(declare-fun m!928327 () Bool)

(assert (=> b!1002322 m!928327))

(assert (=> b!1002322 m!928327))

(assert (=> b!1002322 m!928317))

(declare-fun m!928329 () Bool)

(assert (=> b!1002322 m!928329))

(declare-fun m!928331 () Bool)

(assert (=> b!1002310 m!928331))

(declare-fun m!928333 () Bool)

(assert (=> b!1002318 m!928333))

(declare-fun m!928335 () Bool)

(assert (=> b!1002313 m!928335))

(declare-fun m!928337 () Bool)

(assert (=> b!1002317 m!928337))

(declare-fun m!928339 () Bool)

(assert (=> b!1002314 m!928339))

(push 1)

