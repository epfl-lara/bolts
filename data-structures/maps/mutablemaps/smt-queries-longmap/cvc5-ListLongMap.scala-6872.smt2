; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86518 () Bool)

(assert start!86518)

(declare-fun b!1001491 () Bool)

(declare-fun e!564343 () Bool)

(declare-fun e!564347 () Bool)

(assert (=> b!1001491 (= e!564343 e!564347)))

(declare-fun res!671134 () Bool)

(assert (=> b!1001491 (=> (not res!671134) (not e!564347))))

(declare-datatypes ((SeekEntryResult!9389 0))(
  ( (MissingZero!9389 (index!39926 (_ BitVec 32))) (Found!9389 (index!39927 (_ BitVec 32))) (Intermediate!9389 (undefined!10201 Bool) (index!39928 (_ BitVec 32)) (x!87378 (_ BitVec 32))) (Undefined!9389) (MissingVacant!9389 (index!39929 (_ BitVec 32))) )
))
(declare-fun lt!442712 () SeekEntryResult!9389)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001491 (= res!671134 (or (= lt!442712 (MissingVacant!9389 i!1194)) (= lt!442712 (MissingZero!9389 i!1194))))))

(declare-datatypes ((array!63271 0))(
  ( (array!63272 (arr!30457 (Array (_ BitVec 32) (_ BitVec 64))) (size!30960 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63271)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63271 (_ BitVec 32)) SeekEntryResult!9389)

(assert (=> b!1001491 (= lt!442712 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001492 () Bool)

(declare-fun res!671135 () Bool)

(assert (=> b!1001492 (=> (not res!671135) (not e!564343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001492 (= res!671135 (validKeyInArray!0 k!2224))))

(declare-fun b!1001493 () Bool)

(declare-fun res!671125 () Bool)

(assert (=> b!1001493 (=> (not res!671125) (not e!564343))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1001493 (= res!671125 (validKeyInArray!0 (select (arr!30457 a!3219) j!170)))))

(declare-fun b!1001494 () Bool)

(declare-fun res!671139 () Bool)

(assert (=> b!1001494 (=> (not res!671139) (not e!564343))))

(assert (=> b!1001494 (= res!671139 (and (= (size!30960 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30960 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30960 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001495 () Bool)

(declare-fun res!671136 () Bool)

(declare-fun e!564346 () Bool)

(assert (=> b!1001495 (=> (not res!671136) (not e!564346))))

(declare-fun lt!442719 () SeekEntryResult!9389)

(declare-fun lt!442715 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63271 (_ BitVec 32)) SeekEntryResult!9389)

(assert (=> b!1001495 (= res!671136 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442715 (select (arr!30457 a!3219) j!170) a!3219 mask!3464) lt!442719))))

(declare-fun res!671128 () Bool)

(assert (=> start!86518 (=> (not res!671128) (not e!564343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86518 (= res!671128 (validMask!0 mask!3464))))

(assert (=> start!86518 e!564343))

(declare-fun array_inv!23447 (array!63271) Bool)

(assert (=> start!86518 (array_inv!23447 a!3219)))

(assert (=> start!86518 true))

(declare-fun b!1001496 () Bool)

(declare-fun res!671137 () Bool)

(assert (=> b!1001496 (=> (not res!671137) (not e!564347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63271 (_ BitVec 32)) Bool)

(assert (=> b!1001496 (= res!671137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001497 () Bool)

(declare-fun res!671138 () Bool)

(declare-fun e!564345 () Bool)

(assert (=> b!1001497 (=> (not res!671138) (not e!564345))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442713 () SeekEntryResult!9389)

(declare-fun lt!442717 () (_ BitVec 64))

(declare-fun lt!442714 () array!63271)

(assert (=> b!1001497 (= res!671138 (not (= lt!442713 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442717 lt!442714 mask!3464))))))

(declare-fun b!1001498 () Bool)

(declare-fun e!564341 () Bool)

(declare-fun e!564342 () Bool)

(assert (=> b!1001498 (= e!564341 e!564342)))

(declare-fun res!671140 () Bool)

(assert (=> b!1001498 (=> (not res!671140) (not e!564342))))

(assert (=> b!1001498 (= res!671140 (= lt!442713 lt!442719))))

(assert (=> b!1001498 (= lt!442713 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30457 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001499 () Bool)

(declare-fun res!671126 () Bool)

(assert (=> b!1001499 (=> (not res!671126) (not e!564343))))

(declare-fun arrayContainsKey!0 (array!63271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001499 (= res!671126 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001500 () Bool)

(assert (=> b!1001500 (= e!564346 false)))

(declare-fun lt!442716 () SeekEntryResult!9389)

(assert (=> b!1001500 (= lt!442716 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442715 lt!442717 lt!442714 mask!3464))))

(declare-fun b!1001501 () Bool)

(declare-fun res!671130 () Bool)

(assert (=> b!1001501 (=> (not res!671130) (not e!564345))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1001501 (= res!671130 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001502 () Bool)

(declare-fun res!671127 () Bool)

(assert (=> b!1001502 (=> (not res!671127) (not e!564347))))

(declare-datatypes ((List!21259 0))(
  ( (Nil!21256) (Cons!21255 (h!22432 (_ BitVec 64)) (t!30268 List!21259)) )
))
(declare-fun arrayNoDuplicates!0 (array!63271 (_ BitVec 32) List!21259) Bool)

(assert (=> b!1001502 (= res!671127 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21256))))

(declare-fun b!1001503 () Bool)

(assert (=> b!1001503 (= e!564347 e!564341)))

(declare-fun res!671129 () Bool)

(assert (=> b!1001503 (=> (not res!671129) (not e!564341))))

(declare-fun lt!442718 () SeekEntryResult!9389)

(assert (=> b!1001503 (= res!671129 (= lt!442718 lt!442719))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001503 (= lt!442719 (Intermediate!9389 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001503 (= lt!442718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30457 a!3219) j!170) mask!3464) (select (arr!30457 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001504 () Bool)

(assert (=> b!1001504 (= e!564342 e!564345)))

(declare-fun res!671133 () Bool)

(assert (=> b!1001504 (=> (not res!671133) (not e!564345))))

(assert (=> b!1001504 (= res!671133 (not (= lt!442718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442717 mask!3464) lt!442717 lt!442714 mask!3464))))))

(assert (=> b!1001504 (= lt!442717 (select (store (arr!30457 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001504 (= lt!442714 (array!63272 (store (arr!30457 a!3219) i!1194 k!2224) (size!30960 a!3219)))))

(declare-fun b!1001505 () Bool)

(assert (=> b!1001505 (= e!564345 e!564346)))

(declare-fun res!671132 () Bool)

(assert (=> b!1001505 (=> (not res!671132) (not e!564346))))

(assert (=> b!1001505 (= res!671132 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442715 #b00000000000000000000000000000000) (bvslt lt!442715 (size!30960 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001505 (= lt!442715 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001506 () Bool)

(declare-fun res!671131 () Bool)

(assert (=> b!1001506 (=> (not res!671131) (not e!564347))))

(assert (=> b!1001506 (= res!671131 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30960 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30960 a!3219))))))

(assert (= (and start!86518 res!671128) b!1001494))

(assert (= (and b!1001494 res!671139) b!1001493))

(assert (= (and b!1001493 res!671125) b!1001492))

(assert (= (and b!1001492 res!671135) b!1001499))

(assert (= (and b!1001499 res!671126) b!1001491))

(assert (= (and b!1001491 res!671134) b!1001496))

(assert (= (and b!1001496 res!671137) b!1001502))

(assert (= (and b!1001502 res!671127) b!1001506))

(assert (= (and b!1001506 res!671131) b!1001503))

(assert (= (and b!1001503 res!671129) b!1001498))

(assert (= (and b!1001498 res!671140) b!1001504))

(assert (= (and b!1001504 res!671133) b!1001497))

(assert (= (and b!1001497 res!671138) b!1001501))

(assert (= (and b!1001501 res!671130) b!1001505))

(assert (= (and b!1001505 res!671132) b!1001495))

(assert (= (and b!1001495 res!671136) b!1001500))

(declare-fun m!927621 () Bool)

(assert (=> b!1001493 m!927621))

(assert (=> b!1001493 m!927621))

(declare-fun m!927623 () Bool)

(assert (=> b!1001493 m!927623))

(declare-fun m!927625 () Bool)

(assert (=> b!1001500 m!927625))

(declare-fun m!927627 () Bool)

(assert (=> b!1001497 m!927627))

(declare-fun m!927629 () Bool)

(assert (=> b!1001491 m!927629))

(declare-fun m!927631 () Bool)

(assert (=> start!86518 m!927631))

(declare-fun m!927633 () Bool)

(assert (=> start!86518 m!927633))

(assert (=> b!1001498 m!927621))

(assert (=> b!1001498 m!927621))

(declare-fun m!927635 () Bool)

(assert (=> b!1001498 m!927635))

(declare-fun m!927637 () Bool)

(assert (=> b!1001504 m!927637))

(assert (=> b!1001504 m!927637))

(declare-fun m!927639 () Bool)

(assert (=> b!1001504 m!927639))

(declare-fun m!927641 () Bool)

(assert (=> b!1001504 m!927641))

(declare-fun m!927643 () Bool)

(assert (=> b!1001504 m!927643))

(declare-fun m!927645 () Bool)

(assert (=> b!1001502 m!927645))

(declare-fun m!927647 () Bool)

(assert (=> b!1001492 m!927647))

(declare-fun m!927649 () Bool)

(assert (=> b!1001505 m!927649))

(declare-fun m!927651 () Bool)

(assert (=> b!1001499 m!927651))

(assert (=> b!1001503 m!927621))

(assert (=> b!1001503 m!927621))

(declare-fun m!927653 () Bool)

(assert (=> b!1001503 m!927653))

(assert (=> b!1001503 m!927653))

(assert (=> b!1001503 m!927621))

(declare-fun m!927655 () Bool)

(assert (=> b!1001503 m!927655))

(assert (=> b!1001495 m!927621))

(assert (=> b!1001495 m!927621))

(declare-fun m!927657 () Bool)

(assert (=> b!1001495 m!927657))

(declare-fun m!927659 () Bool)

(assert (=> b!1001496 m!927659))

(push 1)

