; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86974 () Bool)

(assert start!86974)

(declare-fun b!1008435 () Bool)

(declare-fun res!677493 () Bool)

(declare-fun e!567435 () Bool)

(assert (=> b!1008435 (=> (not res!677493) (not e!567435))))

(declare-datatypes ((array!63574 0))(
  ( (array!63575 (arr!30604 (Array (_ BitVec 32) (_ BitVec 64))) (size!31107 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63574)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008435 (= res!677493 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31107 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31107 a!3219))))))

(declare-fun res!677495 () Bool)

(declare-fun e!567438 () Bool)

(assert (=> start!86974 (=> (not res!677495) (not e!567438))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86974 (= res!677495 (validMask!0 mask!3464))))

(assert (=> start!86974 e!567438))

(declare-fun array_inv!23594 (array!63574) Bool)

(assert (=> start!86974 (array_inv!23594 a!3219)))

(assert (=> start!86974 true))

(declare-fun b!1008436 () Bool)

(declare-fun res!677497 () Bool)

(assert (=> b!1008436 (=> (not res!677497) (not e!567438))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008436 (= res!677497 (validKeyInArray!0 (select (arr!30604 a!3219) j!170)))))

(declare-fun b!1008437 () Bool)

(declare-fun e!567440 () Bool)

(declare-fun e!567436 () Bool)

(assert (=> b!1008437 (= e!567440 e!567436)))

(declare-fun res!677490 () Bool)

(assert (=> b!1008437 (=> (not res!677490) (not e!567436))))

(declare-datatypes ((SeekEntryResult!9536 0))(
  ( (MissingZero!9536 (index!40514 (_ BitVec 32))) (Found!9536 (index!40515 (_ BitVec 32))) (Intermediate!9536 (undefined!10348 Bool) (index!40516 (_ BitVec 32)) (x!87935 (_ BitVec 32))) (Undefined!9536) (MissingVacant!9536 (index!40517 (_ BitVec 32))) )
))
(declare-fun lt!445712 () SeekEntryResult!9536)

(declare-fun lt!445708 () SeekEntryResult!9536)

(assert (=> b!1008437 (= res!677490 (= lt!445712 lt!445708))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63574 (_ BitVec 32)) SeekEntryResult!9536)

(assert (=> b!1008437 (= lt!445712 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30604 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008438 () Bool)

(declare-fun e!567437 () Bool)

(assert (=> b!1008438 (= e!567436 e!567437)))

(declare-fun res!677484 () Bool)

(assert (=> b!1008438 (=> (not res!677484) (not e!567437))))

(declare-fun lt!445709 () SeekEntryResult!9536)

(declare-fun lt!445713 () (_ BitVec 64))

(declare-fun lt!445711 () array!63574)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008438 (= res!677484 (not (= lt!445709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445713 mask!3464) lt!445713 lt!445711 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1008438 (= lt!445713 (select (store (arr!30604 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008438 (= lt!445711 (array!63575 (store (arr!30604 a!3219) i!1194 k!2224) (size!31107 a!3219)))))

(declare-fun b!1008439 () Bool)

(declare-fun res!677494 () Bool)

(assert (=> b!1008439 (=> (not res!677494) (not e!567438))))

(assert (=> b!1008439 (= res!677494 (validKeyInArray!0 k!2224))))

(declare-fun b!1008440 () Bool)

(assert (=> b!1008440 (= e!567437 false)))

(declare-fun lt!445710 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008440 (= lt!445710 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008441 () Bool)

(declare-fun res!677485 () Bool)

(assert (=> b!1008441 (=> (not res!677485) (not e!567437))))

(assert (=> b!1008441 (= res!677485 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008442 () Bool)

(declare-fun res!677487 () Bool)

(assert (=> b!1008442 (=> (not res!677487) (not e!567435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63574 (_ BitVec 32)) Bool)

(assert (=> b!1008442 (= res!677487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008443 () Bool)

(declare-fun res!677492 () Bool)

(assert (=> b!1008443 (=> (not res!677492) (not e!567438))))

(declare-fun arrayContainsKey!0 (array!63574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008443 (= res!677492 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008444 () Bool)

(declare-fun res!677489 () Bool)

(assert (=> b!1008444 (=> (not res!677489) (not e!567438))))

(assert (=> b!1008444 (= res!677489 (and (= (size!31107 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31107 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31107 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008445 () Bool)

(assert (=> b!1008445 (= e!567438 e!567435)))

(declare-fun res!677496 () Bool)

(assert (=> b!1008445 (=> (not res!677496) (not e!567435))))

(declare-fun lt!445707 () SeekEntryResult!9536)

(assert (=> b!1008445 (= res!677496 (or (= lt!445707 (MissingVacant!9536 i!1194)) (= lt!445707 (MissingZero!9536 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63574 (_ BitVec 32)) SeekEntryResult!9536)

(assert (=> b!1008445 (= lt!445707 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008446 () Bool)

(declare-fun res!677486 () Bool)

(assert (=> b!1008446 (=> (not res!677486) (not e!567435))))

(declare-datatypes ((List!21406 0))(
  ( (Nil!21403) (Cons!21402 (h!22588 (_ BitVec 64)) (t!30415 List!21406)) )
))
(declare-fun arrayNoDuplicates!0 (array!63574 (_ BitVec 32) List!21406) Bool)

(assert (=> b!1008446 (= res!677486 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21403))))

(declare-fun b!1008447 () Bool)

(assert (=> b!1008447 (= e!567435 e!567440)))

(declare-fun res!677491 () Bool)

(assert (=> b!1008447 (=> (not res!677491) (not e!567440))))

(assert (=> b!1008447 (= res!677491 (= lt!445709 lt!445708))))

(assert (=> b!1008447 (= lt!445708 (Intermediate!9536 false resIndex!38 resX!38))))

(assert (=> b!1008447 (= lt!445709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30604 a!3219) j!170) mask!3464) (select (arr!30604 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008448 () Bool)

(declare-fun res!677488 () Bool)

(assert (=> b!1008448 (=> (not res!677488) (not e!567437))))

(assert (=> b!1008448 (= res!677488 (not (= lt!445712 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445713 lt!445711 mask!3464))))))

(assert (= (and start!86974 res!677495) b!1008444))

(assert (= (and b!1008444 res!677489) b!1008436))

(assert (= (and b!1008436 res!677497) b!1008439))

(assert (= (and b!1008439 res!677494) b!1008443))

(assert (= (and b!1008443 res!677492) b!1008445))

(assert (= (and b!1008445 res!677496) b!1008442))

(assert (= (and b!1008442 res!677487) b!1008446))

(assert (= (and b!1008446 res!677486) b!1008435))

(assert (= (and b!1008435 res!677493) b!1008447))

(assert (= (and b!1008447 res!677491) b!1008437))

(assert (= (and b!1008437 res!677490) b!1008438))

(assert (= (and b!1008438 res!677484) b!1008448))

(assert (= (and b!1008448 res!677488) b!1008441))

(assert (= (and b!1008441 res!677485) b!1008440))

(declare-fun m!933279 () Bool)

(assert (=> b!1008446 m!933279))

(declare-fun m!933281 () Bool)

(assert (=> b!1008448 m!933281))

(declare-fun m!933283 () Bool)

(assert (=> b!1008447 m!933283))

(assert (=> b!1008447 m!933283))

(declare-fun m!933285 () Bool)

(assert (=> b!1008447 m!933285))

(assert (=> b!1008447 m!933285))

(assert (=> b!1008447 m!933283))

(declare-fun m!933287 () Bool)

(assert (=> b!1008447 m!933287))

(declare-fun m!933289 () Bool)

(assert (=> start!86974 m!933289))

(declare-fun m!933291 () Bool)

(assert (=> start!86974 m!933291))

(declare-fun m!933293 () Bool)

(assert (=> b!1008439 m!933293))

(declare-fun m!933295 () Bool)

(assert (=> b!1008445 m!933295))

(declare-fun m!933297 () Bool)

(assert (=> b!1008438 m!933297))

(assert (=> b!1008438 m!933297))

(declare-fun m!933299 () Bool)

(assert (=> b!1008438 m!933299))

(declare-fun m!933301 () Bool)

(assert (=> b!1008438 m!933301))

(declare-fun m!933303 () Bool)

(assert (=> b!1008438 m!933303))

(declare-fun m!933305 () Bool)

(assert (=> b!1008442 m!933305))

(declare-fun m!933307 () Bool)

(assert (=> b!1008440 m!933307))

(declare-fun m!933309 () Bool)

(assert (=> b!1008443 m!933309))

(assert (=> b!1008436 m!933283))

(assert (=> b!1008436 m!933283))

(declare-fun m!933311 () Bool)

(assert (=> b!1008436 m!933311))

(assert (=> b!1008437 m!933283))

(assert (=> b!1008437 m!933283))

(declare-fun m!933313 () Bool)

(assert (=> b!1008437 m!933313))

(push 1)

