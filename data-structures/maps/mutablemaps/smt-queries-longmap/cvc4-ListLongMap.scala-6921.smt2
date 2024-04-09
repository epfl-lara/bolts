; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86978 () Bool)

(assert start!86978)

(declare-fun b!1008519 () Bool)

(declare-fun res!677578 () Bool)

(declare-fun e!567472 () Bool)

(assert (=> b!1008519 (=> (not res!677578) (not e!567472))))

(declare-datatypes ((array!63578 0))(
  ( (array!63579 (arr!30606 (Array (_ BitVec 32) (_ BitVec 64))) (size!31109 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63578)

(declare-datatypes ((List!21408 0))(
  ( (Nil!21405) (Cons!21404 (h!22590 (_ BitVec 64)) (t!30417 List!21408)) )
))
(declare-fun arrayNoDuplicates!0 (array!63578 (_ BitVec 32) List!21408) Bool)

(assert (=> b!1008519 (= res!677578 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21405))))

(declare-fun b!1008520 () Bool)

(declare-fun e!567471 () Bool)

(assert (=> b!1008520 (= e!567471 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445755 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008520 (= lt!445755 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008521 () Bool)

(declare-fun res!677571 () Bool)

(assert (=> b!1008521 (=> (not res!677571) (not e!567471))))

(declare-datatypes ((SeekEntryResult!9538 0))(
  ( (MissingZero!9538 (index!40522 (_ BitVec 32))) (Found!9538 (index!40523 (_ BitVec 32))) (Intermediate!9538 (undefined!10350 Bool) (index!40524 (_ BitVec 32)) (x!87937 (_ BitVec 32))) (Undefined!9538) (MissingVacant!9538 (index!40525 (_ BitVec 32))) )
))
(declare-fun lt!445751 () SeekEntryResult!9538)

(declare-fun lt!445753 () (_ BitVec 64))

(declare-fun lt!445754 () array!63578)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63578 (_ BitVec 32)) SeekEntryResult!9538)

(assert (=> b!1008521 (= res!677571 (not (= lt!445751 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445753 lt!445754 mask!3464))))))

(declare-fun b!1008522 () Bool)

(declare-fun e!567476 () Bool)

(assert (=> b!1008522 (= e!567476 e!567472)))

(declare-fun res!677572 () Bool)

(assert (=> b!1008522 (=> (not res!677572) (not e!567472))))

(declare-fun lt!445752 () SeekEntryResult!9538)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008522 (= res!677572 (or (= lt!445752 (MissingVacant!9538 i!1194)) (= lt!445752 (MissingZero!9538 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63578 (_ BitVec 32)) SeekEntryResult!9538)

(assert (=> b!1008522 (= lt!445752 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008523 () Bool)

(declare-fun res!677576 () Bool)

(assert (=> b!1008523 (=> (not res!677576) (not e!567476))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1008523 (= res!677576 (and (= (size!31109 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31109 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31109 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008524 () Bool)

(declare-fun e!567474 () Bool)

(declare-fun e!567473 () Bool)

(assert (=> b!1008524 (= e!567474 e!567473)))

(declare-fun res!677575 () Bool)

(assert (=> b!1008524 (=> (not res!677575) (not e!567473))))

(declare-fun lt!445749 () SeekEntryResult!9538)

(assert (=> b!1008524 (= res!677575 (= lt!445751 lt!445749))))

(assert (=> b!1008524 (= lt!445751 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30606 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008525 () Bool)

(declare-fun res!677577 () Bool)

(assert (=> b!1008525 (=> (not res!677577) (not e!567476))))

(declare-fun arrayContainsKey!0 (array!63578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008525 (= res!677577 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008526 () Bool)

(declare-fun res!677570 () Bool)

(assert (=> b!1008526 (=> (not res!677570) (not e!567471))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1008526 (= res!677570 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008527 () Bool)

(declare-fun res!677580 () Bool)

(assert (=> b!1008527 (=> (not res!677580) (not e!567476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008527 (= res!677580 (validKeyInArray!0 k!2224))))

(declare-fun b!1008529 () Bool)

(declare-fun res!677568 () Bool)

(assert (=> b!1008529 (=> (not res!677568) (not e!567476))))

(assert (=> b!1008529 (= res!677568 (validKeyInArray!0 (select (arr!30606 a!3219) j!170)))))

(declare-fun b!1008530 () Bool)

(assert (=> b!1008530 (= e!567472 e!567474)))

(declare-fun res!677574 () Bool)

(assert (=> b!1008530 (=> (not res!677574) (not e!567474))))

(declare-fun lt!445750 () SeekEntryResult!9538)

(assert (=> b!1008530 (= res!677574 (= lt!445750 lt!445749))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008530 (= lt!445749 (Intermediate!9538 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008530 (= lt!445750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30606 a!3219) j!170) mask!3464) (select (arr!30606 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008531 () Bool)

(assert (=> b!1008531 (= e!567473 e!567471)))

(declare-fun res!677581 () Bool)

(assert (=> b!1008531 (=> (not res!677581) (not e!567471))))

(assert (=> b!1008531 (= res!677581 (not (= lt!445750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445753 mask!3464) lt!445753 lt!445754 mask!3464))))))

(assert (=> b!1008531 (= lt!445753 (select (store (arr!30606 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008531 (= lt!445754 (array!63579 (store (arr!30606 a!3219) i!1194 k!2224) (size!31109 a!3219)))))

(declare-fun b!1008532 () Bool)

(declare-fun res!677569 () Bool)

(assert (=> b!1008532 (=> (not res!677569) (not e!567472))))

(assert (=> b!1008532 (= res!677569 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31109 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31109 a!3219))))))

(declare-fun b!1008528 () Bool)

(declare-fun res!677579 () Bool)

(assert (=> b!1008528 (=> (not res!677579) (not e!567472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63578 (_ BitVec 32)) Bool)

(assert (=> b!1008528 (= res!677579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!677573 () Bool)

(assert (=> start!86978 (=> (not res!677573) (not e!567476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86978 (= res!677573 (validMask!0 mask!3464))))

(assert (=> start!86978 e!567476))

(declare-fun array_inv!23596 (array!63578) Bool)

(assert (=> start!86978 (array_inv!23596 a!3219)))

(assert (=> start!86978 true))

(assert (= (and start!86978 res!677573) b!1008523))

(assert (= (and b!1008523 res!677576) b!1008529))

(assert (= (and b!1008529 res!677568) b!1008527))

(assert (= (and b!1008527 res!677580) b!1008525))

(assert (= (and b!1008525 res!677577) b!1008522))

(assert (= (and b!1008522 res!677572) b!1008528))

(assert (= (and b!1008528 res!677579) b!1008519))

(assert (= (and b!1008519 res!677578) b!1008532))

(assert (= (and b!1008532 res!677569) b!1008530))

(assert (= (and b!1008530 res!677574) b!1008524))

(assert (= (and b!1008524 res!677575) b!1008531))

(assert (= (and b!1008531 res!677581) b!1008521))

(assert (= (and b!1008521 res!677571) b!1008526))

(assert (= (and b!1008526 res!677570) b!1008520))

(declare-fun m!933351 () Bool)

(assert (=> b!1008531 m!933351))

(assert (=> b!1008531 m!933351))

(declare-fun m!933353 () Bool)

(assert (=> b!1008531 m!933353))

(declare-fun m!933355 () Bool)

(assert (=> b!1008531 m!933355))

(declare-fun m!933357 () Bool)

(assert (=> b!1008531 m!933357))

(declare-fun m!933359 () Bool)

(assert (=> b!1008519 m!933359))

(declare-fun m!933361 () Bool)

(assert (=> b!1008527 m!933361))

(declare-fun m!933363 () Bool)

(assert (=> b!1008529 m!933363))

(assert (=> b!1008529 m!933363))

(declare-fun m!933365 () Bool)

(assert (=> b!1008529 m!933365))

(assert (=> b!1008530 m!933363))

(assert (=> b!1008530 m!933363))

(declare-fun m!933367 () Bool)

(assert (=> b!1008530 m!933367))

(assert (=> b!1008530 m!933367))

(assert (=> b!1008530 m!933363))

(declare-fun m!933369 () Bool)

(assert (=> b!1008530 m!933369))

(assert (=> b!1008524 m!933363))

(assert (=> b!1008524 m!933363))

(declare-fun m!933371 () Bool)

(assert (=> b!1008524 m!933371))

(declare-fun m!933373 () Bool)

(assert (=> start!86978 m!933373))

(declare-fun m!933375 () Bool)

(assert (=> start!86978 m!933375))

(declare-fun m!933377 () Bool)

(assert (=> b!1008520 m!933377))

(declare-fun m!933379 () Bool)

(assert (=> b!1008525 m!933379))

(declare-fun m!933381 () Bool)

(assert (=> b!1008528 m!933381))

(declare-fun m!933383 () Bool)

(assert (=> b!1008522 m!933383))

(declare-fun m!933385 () Bool)

(assert (=> b!1008521 m!933385))

(push 1)

