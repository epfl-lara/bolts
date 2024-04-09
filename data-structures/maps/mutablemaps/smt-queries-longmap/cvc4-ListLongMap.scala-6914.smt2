; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86936 () Bool)

(assert start!86936)

(declare-fun b!1007637 () Bool)

(declare-fun res!676691 () Bool)

(declare-fun e!567093 () Bool)

(assert (=> b!1007637 (=> (not res!676691) (not e!567093))))

(declare-datatypes ((array!63536 0))(
  ( (array!63537 (arr!30585 (Array (_ BitVec 32) (_ BitVec 64))) (size!31088 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63536)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007637 (= res!676691 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007638 () Bool)

(declare-fun res!676689 () Bool)

(assert (=> b!1007638 (=> (not res!676689) (not e!567093))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007638 (= res!676689 (validKeyInArray!0 k!2224))))

(declare-fun b!1007639 () Bool)

(declare-fun res!676695 () Bool)

(declare-fun e!567098 () Bool)

(assert (=> b!1007639 (=> (not res!676695) (not e!567098))))

(declare-datatypes ((List!21387 0))(
  ( (Nil!21384) (Cons!21383 (h!22569 (_ BitVec 64)) (t!30396 List!21387)) )
))
(declare-fun arrayNoDuplicates!0 (array!63536 (_ BitVec 32) List!21387) Bool)

(assert (=> b!1007639 (= res!676695 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21384))))

(declare-fun b!1007640 () Bool)

(declare-fun res!676687 () Bool)

(assert (=> b!1007640 (=> (not res!676687) (not e!567098))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007640 (= res!676687 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31088 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31088 a!3219))))))

(declare-fun res!676694 () Bool)

(assert (=> start!86936 (=> (not res!676694) (not e!567093))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86936 (= res!676694 (validMask!0 mask!3464))))

(assert (=> start!86936 e!567093))

(declare-fun array_inv!23575 (array!63536) Bool)

(assert (=> start!86936 (array_inv!23575 a!3219)))

(assert (=> start!86936 true))

(declare-fun b!1007641 () Bool)

(declare-fun res!676688 () Bool)

(declare-fun e!567095 () Bool)

(assert (=> b!1007641 (=> (not res!676688) (not e!567095))))

(declare-datatypes ((SeekEntryResult!9517 0))(
  ( (MissingZero!9517 (index!40438 (_ BitVec 32))) (Found!9517 (index!40439 (_ BitVec 32))) (Intermediate!9517 (undefined!10329 Bool) (index!40440 (_ BitVec 32)) (x!87860 (_ BitVec 32))) (Undefined!9517) (MissingVacant!9517 (index!40441 (_ BitVec 32))) )
))
(declare-fun lt!445308 () SeekEntryResult!9517)

(declare-fun lt!445311 () (_ BitVec 64))

(declare-fun lt!445313 () array!63536)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63536 (_ BitVec 32)) SeekEntryResult!9517)

(assert (=> b!1007641 (= res!676688 (not (= lt!445308 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445311 lt!445313 mask!3464))))))

(declare-fun b!1007642 () Bool)

(assert (=> b!1007642 (= e!567093 e!567098)))

(declare-fun res!676693 () Bool)

(assert (=> b!1007642 (=> (not res!676693) (not e!567098))))

(declare-fun lt!445309 () SeekEntryResult!9517)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007642 (= res!676693 (or (= lt!445309 (MissingVacant!9517 i!1194)) (= lt!445309 (MissingZero!9517 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63536 (_ BitVec 32)) SeekEntryResult!9517)

(assert (=> b!1007642 (= lt!445309 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007643 () Bool)

(declare-fun res!676697 () Bool)

(assert (=> b!1007643 (=> (not res!676697) (not e!567093))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1007643 (= res!676697 (and (= (size!31088 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31088 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31088 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007644 () Bool)

(declare-fun e!567094 () Bool)

(assert (=> b!1007644 (= e!567094 e!567095)))

(declare-fun res!676696 () Bool)

(assert (=> b!1007644 (=> (not res!676696) (not e!567095))))

(declare-fun lt!445312 () SeekEntryResult!9517)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007644 (= res!676696 (not (= lt!445312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445311 mask!3464) lt!445311 lt!445313 mask!3464))))))

(assert (=> b!1007644 (= lt!445311 (select (store (arr!30585 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007644 (= lt!445313 (array!63537 (store (arr!30585 a!3219) i!1194 k!2224) (size!31088 a!3219)))))

(declare-fun b!1007645 () Bool)

(declare-fun e!567096 () Bool)

(assert (=> b!1007645 (= e!567098 e!567096)))

(declare-fun res!676692 () Bool)

(assert (=> b!1007645 (=> (not res!676692) (not e!567096))))

(declare-fun lt!445314 () SeekEntryResult!9517)

(assert (=> b!1007645 (= res!676692 (= lt!445312 lt!445314))))

(assert (=> b!1007645 (= lt!445314 (Intermediate!9517 false resIndex!38 resX!38))))

(assert (=> b!1007645 (= lt!445312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30585 a!3219) j!170) mask!3464) (select (arr!30585 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007646 () Bool)

(declare-fun res!676699 () Bool)

(assert (=> b!1007646 (=> (not res!676699) (not e!567095))))

(assert (=> b!1007646 (= res!676699 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007647 () Bool)

(declare-fun res!676690 () Bool)

(assert (=> b!1007647 (=> (not res!676690) (not e!567098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63536 (_ BitVec 32)) Bool)

(assert (=> b!1007647 (= res!676690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007648 () Bool)

(assert (=> b!1007648 (= e!567095 false)))

(declare-fun lt!445310 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007648 (= lt!445310 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007649 () Bool)

(declare-fun res!676686 () Bool)

(assert (=> b!1007649 (=> (not res!676686) (not e!567093))))

(assert (=> b!1007649 (= res!676686 (validKeyInArray!0 (select (arr!30585 a!3219) j!170)))))

(declare-fun b!1007650 () Bool)

(assert (=> b!1007650 (= e!567096 e!567094)))

(declare-fun res!676698 () Bool)

(assert (=> b!1007650 (=> (not res!676698) (not e!567094))))

(assert (=> b!1007650 (= res!676698 (= lt!445308 lt!445314))))

(assert (=> b!1007650 (= lt!445308 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30585 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86936 res!676694) b!1007643))

(assert (= (and b!1007643 res!676697) b!1007649))

(assert (= (and b!1007649 res!676686) b!1007638))

(assert (= (and b!1007638 res!676689) b!1007637))

(assert (= (and b!1007637 res!676691) b!1007642))

(assert (= (and b!1007642 res!676693) b!1007647))

(assert (= (and b!1007647 res!676690) b!1007639))

(assert (= (and b!1007639 res!676695) b!1007640))

(assert (= (and b!1007640 res!676687) b!1007645))

(assert (= (and b!1007645 res!676692) b!1007650))

(assert (= (and b!1007650 res!676698) b!1007644))

(assert (= (and b!1007644 res!676696) b!1007641))

(assert (= (and b!1007641 res!676688) b!1007646))

(assert (= (and b!1007646 res!676699) b!1007648))

(declare-fun m!932595 () Bool)

(assert (=> b!1007645 m!932595))

(assert (=> b!1007645 m!932595))

(declare-fun m!932597 () Bool)

(assert (=> b!1007645 m!932597))

(assert (=> b!1007645 m!932597))

(assert (=> b!1007645 m!932595))

(declare-fun m!932599 () Bool)

(assert (=> b!1007645 m!932599))

(declare-fun m!932601 () Bool)

(assert (=> b!1007644 m!932601))

(assert (=> b!1007644 m!932601))

(declare-fun m!932603 () Bool)

(assert (=> b!1007644 m!932603))

(declare-fun m!932605 () Bool)

(assert (=> b!1007644 m!932605))

(declare-fun m!932607 () Bool)

(assert (=> b!1007644 m!932607))

(declare-fun m!932609 () Bool)

(assert (=> b!1007637 m!932609))

(declare-fun m!932611 () Bool)

(assert (=> b!1007648 m!932611))

(declare-fun m!932613 () Bool)

(assert (=> b!1007642 m!932613))

(assert (=> b!1007650 m!932595))

(assert (=> b!1007650 m!932595))

(declare-fun m!932615 () Bool)

(assert (=> b!1007650 m!932615))

(declare-fun m!932617 () Bool)

(assert (=> b!1007647 m!932617))

(assert (=> b!1007649 m!932595))

(assert (=> b!1007649 m!932595))

(declare-fun m!932619 () Bool)

(assert (=> b!1007649 m!932619))

(declare-fun m!932621 () Bool)

(assert (=> b!1007641 m!932621))

(declare-fun m!932623 () Bool)

(assert (=> b!1007638 m!932623))

(declare-fun m!932625 () Bool)

(assert (=> b!1007639 m!932625))

(declare-fun m!932627 () Bool)

(assert (=> start!86936 m!932627))

(declare-fun m!932629 () Bool)

(assert (=> start!86936 m!932629))

(push 1)

