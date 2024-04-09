; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86608 () Bool)

(assert start!86608)

(declare-fun b!1003651 () Bool)

(declare-fun res!673287 () Bool)

(declare-fun e!565286 () Bool)

(assert (=> b!1003651 (=> (not res!673287) (not e!565286))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003651 (= res!673287 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003652 () Bool)

(declare-fun res!673293 () Bool)

(declare-fun e!565291 () Bool)

(assert (=> b!1003652 (=> (not res!673293) (not e!565291))))

(declare-datatypes ((array!63361 0))(
  ( (array!63362 (arr!30502 (Array (_ BitVec 32) (_ BitVec 64))) (size!31005 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63361)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003652 (= res!673293 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31005 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31005 a!3219))))))

(declare-fun b!1003653 () Bool)

(declare-fun res!673292 () Bool)

(declare-fun e!565287 () Bool)

(assert (=> b!1003653 (=> (not res!673292) (not e!565287))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003653 (= res!673292 (validKeyInArray!0 k!2224))))

(declare-fun b!1003654 () Bool)

(declare-fun res!673299 () Bool)

(assert (=> b!1003654 (=> (not res!673299) (not e!565287))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1003654 (= res!673299 (and (= (size!31005 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31005 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31005 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003655 () Bool)

(assert (=> b!1003655 (= e!565287 e!565291)))

(declare-fun res!673291 () Bool)

(assert (=> b!1003655 (=> (not res!673291) (not e!565291))))

(declare-datatypes ((SeekEntryResult!9434 0))(
  ( (MissingZero!9434 (index!40106 (_ BitVec 32))) (Found!9434 (index!40107 (_ BitVec 32))) (Intermediate!9434 (undefined!10246 Bool) (index!40108 (_ BitVec 32)) (x!87543 (_ BitVec 32))) (Undefined!9434) (MissingVacant!9434 (index!40109 (_ BitVec 32))) )
))
(declare-fun lt!443796 () SeekEntryResult!9434)

(assert (=> b!1003655 (= res!673291 (or (= lt!443796 (MissingVacant!9434 i!1194)) (= lt!443796 (MissingZero!9434 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63361 (_ BitVec 32)) SeekEntryResult!9434)

(assert (=> b!1003655 (= lt!443796 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003656 () Bool)

(declare-fun e!565289 () Bool)

(declare-fun e!565292 () Bool)

(assert (=> b!1003656 (= e!565289 e!565292)))

(declare-fun res!673296 () Bool)

(assert (=> b!1003656 (=> (not res!673296) (not e!565292))))

(declare-fun lt!443793 () SeekEntryResult!9434)

(declare-fun lt!443795 () SeekEntryResult!9434)

(assert (=> b!1003656 (= res!673296 (= lt!443793 lt!443795))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63361 (_ BitVec 32)) SeekEntryResult!9434)

(assert (=> b!1003656 (= lt!443793 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30502 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003657 () Bool)

(declare-fun res!673297 () Bool)

(assert (=> b!1003657 (=> (not res!673297) (not e!565291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63361 (_ BitVec 32)) Bool)

(assert (=> b!1003657 (= res!673297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003658 () Bool)

(declare-fun res!673288 () Bool)

(assert (=> b!1003658 (=> (not res!673288) (not e!565286))))

(declare-fun lt!443797 () (_ BitVec 64))

(declare-fun lt!443792 () array!63361)

(assert (=> b!1003658 (= res!673288 (not (= lt!443793 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443797 lt!443792 mask!3464))))))

(declare-fun b!1003659 () Bool)

(declare-fun e!565288 () Bool)

(assert (=> b!1003659 (= e!565286 e!565288)))

(declare-fun res!673290 () Bool)

(assert (=> b!1003659 (=> (not res!673290) (not e!565288))))

(declare-fun lt!443794 () (_ BitVec 32))

(assert (=> b!1003659 (= res!673290 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443794 #b00000000000000000000000000000000) (bvslt lt!443794 (size!31005 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003659 (= lt!443794 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!673300 () Bool)

(assert (=> start!86608 (=> (not res!673300) (not e!565287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86608 (= res!673300 (validMask!0 mask!3464))))

(assert (=> start!86608 e!565287))

(declare-fun array_inv!23492 (array!63361) Bool)

(assert (=> start!86608 (array_inv!23492 a!3219)))

(assert (=> start!86608 true))

(declare-fun b!1003660 () Bool)

(declare-fun res!673286 () Bool)

(assert (=> b!1003660 (=> (not res!673286) (not e!565287))))

(assert (=> b!1003660 (= res!673286 (validKeyInArray!0 (select (arr!30502 a!3219) j!170)))))

(declare-fun b!1003661 () Bool)

(declare-fun res!673295 () Bool)

(assert (=> b!1003661 (=> (not res!673295) (not e!565288))))

(assert (=> b!1003661 (= res!673295 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443794 (select (arr!30502 a!3219) j!170) a!3219 mask!3464) lt!443795))))

(declare-fun b!1003662 () Bool)

(declare-fun res!673298 () Bool)

(assert (=> b!1003662 (=> (not res!673298) (not e!565291))))

(declare-datatypes ((List!21304 0))(
  ( (Nil!21301) (Cons!21300 (h!22477 (_ BitVec 64)) (t!30313 List!21304)) )
))
(declare-fun arrayNoDuplicates!0 (array!63361 (_ BitVec 32) List!21304) Bool)

(assert (=> b!1003662 (= res!673298 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21301))))

(declare-fun b!1003663 () Bool)

(assert (=> b!1003663 (= e!565292 e!565286)))

(declare-fun res!673289 () Bool)

(assert (=> b!1003663 (=> (not res!673289) (not e!565286))))

(declare-fun lt!443799 () SeekEntryResult!9434)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003663 (= res!673289 (not (= lt!443799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443797 mask!3464) lt!443797 lt!443792 mask!3464))))))

(assert (=> b!1003663 (= lt!443797 (select (store (arr!30502 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003663 (= lt!443792 (array!63362 (store (arr!30502 a!3219) i!1194 k!2224) (size!31005 a!3219)))))

(declare-fun b!1003664 () Bool)

(declare-fun res!673285 () Bool)

(assert (=> b!1003664 (=> (not res!673285) (not e!565287))))

(declare-fun arrayContainsKey!0 (array!63361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003664 (= res!673285 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003665 () Bool)

(assert (=> b!1003665 (= e!565288 false)))

(declare-fun lt!443798 () SeekEntryResult!9434)

(assert (=> b!1003665 (= lt!443798 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443794 lt!443797 lt!443792 mask!3464))))

(declare-fun b!1003666 () Bool)

(assert (=> b!1003666 (= e!565291 e!565289)))

(declare-fun res!673294 () Bool)

(assert (=> b!1003666 (=> (not res!673294) (not e!565289))))

(assert (=> b!1003666 (= res!673294 (= lt!443799 lt!443795))))

(assert (=> b!1003666 (= lt!443795 (Intermediate!9434 false resIndex!38 resX!38))))

(assert (=> b!1003666 (= lt!443799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30502 a!3219) j!170) mask!3464) (select (arr!30502 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86608 res!673300) b!1003654))

(assert (= (and b!1003654 res!673299) b!1003660))

(assert (= (and b!1003660 res!673286) b!1003653))

(assert (= (and b!1003653 res!673292) b!1003664))

(assert (= (and b!1003664 res!673285) b!1003655))

(assert (= (and b!1003655 res!673291) b!1003657))

(assert (= (and b!1003657 res!673297) b!1003662))

(assert (= (and b!1003662 res!673298) b!1003652))

(assert (= (and b!1003652 res!673293) b!1003666))

(assert (= (and b!1003666 res!673294) b!1003656))

(assert (= (and b!1003656 res!673296) b!1003663))

(assert (= (and b!1003663 res!673289) b!1003658))

(assert (= (and b!1003658 res!673288) b!1003651))

(assert (= (and b!1003651 res!673287) b!1003659))

(assert (= (and b!1003659 res!673290) b!1003661))

(assert (= (and b!1003661 res!673295) b!1003665))

(declare-fun m!929421 () Bool)

(assert (=> b!1003662 m!929421))

(declare-fun m!929423 () Bool)

(assert (=> b!1003665 m!929423))

(declare-fun m!929425 () Bool)

(assert (=> b!1003658 m!929425))

(declare-fun m!929427 () Bool)

(assert (=> b!1003656 m!929427))

(assert (=> b!1003656 m!929427))

(declare-fun m!929429 () Bool)

(assert (=> b!1003656 m!929429))

(assert (=> b!1003660 m!929427))

(assert (=> b!1003660 m!929427))

(declare-fun m!929431 () Bool)

(assert (=> b!1003660 m!929431))

(declare-fun m!929433 () Bool)

(assert (=> b!1003664 m!929433))

(declare-fun m!929435 () Bool)

(assert (=> b!1003663 m!929435))

(assert (=> b!1003663 m!929435))

(declare-fun m!929437 () Bool)

(assert (=> b!1003663 m!929437))

(declare-fun m!929439 () Bool)

(assert (=> b!1003663 m!929439))

(declare-fun m!929441 () Bool)

(assert (=> b!1003663 m!929441))

(declare-fun m!929443 () Bool)

(assert (=> start!86608 m!929443))

(declare-fun m!929445 () Bool)

(assert (=> start!86608 m!929445))

(assert (=> b!1003661 m!929427))

(assert (=> b!1003661 m!929427))

(declare-fun m!929447 () Bool)

(assert (=> b!1003661 m!929447))

(assert (=> b!1003666 m!929427))

(assert (=> b!1003666 m!929427))

(declare-fun m!929449 () Bool)

(assert (=> b!1003666 m!929449))

(assert (=> b!1003666 m!929449))

(assert (=> b!1003666 m!929427))

(declare-fun m!929451 () Bool)

(assert (=> b!1003666 m!929451))

(declare-fun m!929453 () Bool)

(assert (=> b!1003659 m!929453))

(declare-fun m!929455 () Bool)

(assert (=> b!1003657 m!929455))

(declare-fun m!929457 () Bool)

(assert (=> b!1003653 m!929457))

(declare-fun m!929459 () Bool)

(assert (=> b!1003655 m!929459))

(push 1)

