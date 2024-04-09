; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86968 () Bool)

(assert start!86968)

(declare-fun b!1008309 () Bool)

(declare-fun e!567385 () Bool)

(declare-fun e!567381 () Bool)

(assert (=> b!1008309 (= e!567385 e!567381)))

(declare-fun res!677361 () Bool)

(assert (=> b!1008309 (=> (not res!677361) (not e!567381))))

(declare-datatypes ((SeekEntryResult!9533 0))(
  ( (MissingZero!9533 (index!40502 (_ BitVec 32))) (Found!9533 (index!40503 (_ BitVec 32))) (Intermediate!9533 (undefined!10345 Bool) (index!40504 (_ BitVec 32)) (x!87924 (_ BitVec 32))) (Undefined!9533) (MissingVacant!9533 (index!40505 (_ BitVec 32))) )
))
(declare-fun lt!445647 () SeekEntryResult!9533)

(declare-fun lt!445645 () SeekEntryResult!9533)

(assert (=> b!1008309 (= res!677361 (= lt!445647 lt!445645))))

(declare-datatypes ((array!63568 0))(
  ( (array!63569 (arr!30601 (Array (_ BitVec 32) (_ BitVec 64))) (size!31104 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63568)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63568 (_ BitVec 32)) SeekEntryResult!9533)

(assert (=> b!1008309 (= lt!445647 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30601 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008310 () Bool)

(declare-fun res!677358 () Bool)

(declare-fun e!567382 () Bool)

(assert (=> b!1008310 (=> (not res!677358) (not e!567382))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008310 (= res!677358 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008311 () Bool)

(declare-fun res!677362 () Bool)

(declare-fun e!567383 () Bool)

(assert (=> b!1008311 (=> (not res!677362) (not e!567383))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008311 (= res!677362 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008312 () Bool)

(assert (=> b!1008312 (= e!567383 false)))

(declare-fun lt!445649 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008312 (= lt!445649 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!677371 () Bool)

(assert (=> start!86968 (=> (not res!677371) (not e!567382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86968 (= res!677371 (validMask!0 mask!3464))))

(assert (=> start!86968 e!567382))

(declare-fun array_inv!23591 (array!63568) Bool)

(assert (=> start!86968 (array_inv!23591 a!3219)))

(assert (=> start!86968 true))

(declare-fun b!1008313 () Bool)

(declare-fun e!567386 () Bool)

(assert (=> b!1008313 (= e!567382 e!567386)))

(declare-fun res!677369 () Bool)

(assert (=> b!1008313 (=> (not res!677369) (not e!567386))))

(declare-fun lt!445648 () SeekEntryResult!9533)

(assert (=> b!1008313 (= res!677369 (or (= lt!445648 (MissingVacant!9533 i!1194)) (= lt!445648 (MissingZero!9533 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63568 (_ BitVec 32)) SeekEntryResult!9533)

(assert (=> b!1008313 (= lt!445648 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008314 () Bool)

(declare-fun res!677360 () Bool)

(assert (=> b!1008314 (=> (not res!677360) (not e!567386))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008314 (= res!677360 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31104 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31104 a!3219))))))

(declare-fun b!1008315 () Bool)

(declare-fun res!677364 () Bool)

(assert (=> b!1008315 (=> (not res!677364) (not e!567386))))

(declare-datatypes ((List!21403 0))(
  ( (Nil!21400) (Cons!21399 (h!22585 (_ BitVec 64)) (t!30412 List!21403)) )
))
(declare-fun arrayNoDuplicates!0 (array!63568 (_ BitVec 32) List!21403) Bool)

(assert (=> b!1008315 (= res!677364 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21400))))

(declare-fun b!1008316 () Bool)

(declare-fun res!677370 () Bool)

(assert (=> b!1008316 (=> (not res!677370) (not e!567382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008316 (= res!677370 (validKeyInArray!0 k!2224))))

(declare-fun b!1008317 () Bool)

(declare-fun res!677366 () Bool)

(assert (=> b!1008317 (=> (not res!677366) (not e!567382))))

(assert (=> b!1008317 (= res!677366 (and (= (size!31104 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31104 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31104 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008318 () Bool)

(declare-fun res!677367 () Bool)

(assert (=> b!1008318 (=> (not res!677367) (not e!567386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63568 (_ BitVec 32)) Bool)

(assert (=> b!1008318 (= res!677367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008319 () Bool)

(declare-fun res!677368 () Bool)

(assert (=> b!1008319 (=> (not res!677368) (not e!567382))))

(assert (=> b!1008319 (= res!677368 (validKeyInArray!0 (select (arr!30601 a!3219) j!170)))))

(declare-fun b!1008320 () Bool)

(assert (=> b!1008320 (= e!567386 e!567385)))

(declare-fun res!677359 () Bool)

(assert (=> b!1008320 (=> (not res!677359) (not e!567385))))

(declare-fun lt!445650 () SeekEntryResult!9533)

(assert (=> b!1008320 (= res!677359 (= lt!445650 lt!445645))))

(assert (=> b!1008320 (= lt!445645 (Intermediate!9533 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008320 (= lt!445650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30601 a!3219) j!170) mask!3464) (select (arr!30601 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008321 () Bool)

(assert (=> b!1008321 (= e!567381 e!567383)))

(declare-fun res!677363 () Bool)

(assert (=> b!1008321 (=> (not res!677363) (not e!567383))))

(declare-fun lt!445646 () (_ BitVec 64))

(declare-fun lt!445644 () array!63568)

(assert (=> b!1008321 (= res!677363 (not (= lt!445650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445646 mask!3464) lt!445646 lt!445644 mask!3464))))))

(assert (=> b!1008321 (= lt!445646 (select (store (arr!30601 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008321 (= lt!445644 (array!63569 (store (arr!30601 a!3219) i!1194 k!2224) (size!31104 a!3219)))))

(declare-fun b!1008322 () Bool)

(declare-fun res!677365 () Bool)

(assert (=> b!1008322 (=> (not res!677365) (not e!567383))))

(assert (=> b!1008322 (= res!677365 (not (= lt!445647 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445646 lt!445644 mask!3464))))))

(assert (= (and start!86968 res!677371) b!1008317))

(assert (= (and b!1008317 res!677366) b!1008319))

(assert (= (and b!1008319 res!677368) b!1008316))

(assert (= (and b!1008316 res!677370) b!1008310))

(assert (= (and b!1008310 res!677358) b!1008313))

(assert (= (and b!1008313 res!677369) b!1008318))

(assert (= (and b!1008318 res!677367) b!1008315))

(assert (= (and b!1008315 res!677364) b!1008314))

(assert (= (and b!1008314 res!677360) b!1008320))

(assert (= (and b!1008320 res!677359) b!1008309))

(assert (= (and b!1008309 res!677361) b!1008321))

(assert (= (and b!1008321 res!677363) b!1008322))

(assert (= (and b!1008322 res!677365) b!1008311))

(assert (= (and b!1008311 res!677362) b!1008312))

(declare-fun m!933171 () Bool)

(assert (=> b!1008309 m!933171))

(assert (=> b!1008309 m!933171))

(declare-fun m!933173 () Bool)

(assert (=> b!1008309 m!933173))

(declare-fun m!933175 () Bool)

(assert (=> b!1008312 m!933175))

(declare-fun m!933177 () Bool)

(assert (=> start!86968 m!933177))

(declare-fun m!933179 () Bool)

(assert (=> start!86968 m!933179))

(declare-fun m!933181 () Bool)

(assert (=> b!1008318 m!933181))

(declare-fun m!933183 () Bool)

(assert (=> b!1008322 m!933183))

(declare-fun m!933185 () Bool)

(assert (=> b!1008310 m!933185))

(declare-fun m!933187 () Bool)

(assert (=> b!1008313 m!933187))

(declare-fun m!933189 () Bool)

(assert (=> b!1008316 m!933189))

(assert (=> b!1008320 m!933171))

(assert (=> b!1008320 m!933171))

(declare-fun m!933191 () Bool)

(assert (=> b!1008320 m!933191))

(assert (=> b!1008320 m!933191))

(assert (=> b!1008320 m!933171))

(declare-fun m!933193 () Bool)

(assert (=> b!1008320 m!933193))

(declare-fun m!933195 () Bool)

(assert (=> b!1008315 m!933195))

(declare-fun m!933197 () Bool)

(assert (=> b!1008321 m!933197))

(assert (=> b!1008321 m!933197))

(declare-fun m!933199 () Bool)

(assert (=> b!1008321 m!933199))

(declare-fun m!933201 () Bool)

(assert (=> b!1008321 m!933201))

(declare-fun m!933203 () Bool)

(assert (=> b!1008321 m!933203))

(assert (=> b!1008319 m!933171))

(assert (=> b!1008319 m!933171))

(declare-fun m!933205 () Bool)

(assert (=> b!1008319 m!933205))

(push 1)

