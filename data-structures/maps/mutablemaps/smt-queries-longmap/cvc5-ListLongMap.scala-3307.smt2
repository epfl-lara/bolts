; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45796 () Bool)

(assert start!45796)

(declare-fun res!307671 () Bool)

(declare-fun e!296485 () Bool)

(assert (=> start!45796 (=> (not res!307671) (not e!296485))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45796 (= res!307671 (validMask!0 mask!3524))))

(assert (=> start!45796 e!296485))

(assert (=> start!45796 true))

(declare-datatypes ((array!32512 0))(
  ( (array!32513 (arr!15633 (Array (_ BitVec 32) (_ BitVec 64))) (size!15997 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32512)

(declare-fun array_inv!11407 (array!32512) Bool)

(assert (=> start!45796 (array_inv!11407 a!3235)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!506557 () Bool)

(declare-fun e!296482 () Bool)

(declare-datatypes ((SeekEntryResult!4107 0))(
  ( (MissingZero!4107 (index!18616 (_ BitVec 32))) (Found!4107 (index!18617 (_ BitVec 32))) (Intermediate!4107 (undefined!4919 Bool) (index!18618 (_ BitVec 32)) (x!47647 (_ BitVec 32))) (Undefined!4107) (MissingVacant!4107 (index!18619 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32512 (_ BitVec 32)) SeekEntryResult!4107)

(assert (=> b!506557 (= e!296482 (= (seekEntryOrOpen!0 (select (arr!15633 a!3235) j!176) a!3235 mask!3524) (Found!4107 j!176)))))

(declare-fun b!506558 () Bool)

(declare-fun res!307674 () Bool)

(declare-fun e!296483 () Bool)

(assert (=> b!506558 (=> (not res!307674) (not e!296483))))

(declare-datatypes ((List!9844 0))(
  ( (Nil!9841) (Cons!9840 (h!10717 (_ BitVec 64)) (t!16080 List!9844)) )
))
(declare-fun arrayNoDuplicates!0 (array!32512 (_ BitVec 32) List!9844) Bool)

(assert (=> b!506558 (= res!307674 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9841))))

(declare-fun b!506559 () Bool)

(declare-fun e!296484 () Bool)

(assert (=> b!506559 (= e!296483 (not e!296484))))

(declare-fun res!307670 () Bool)

(assert (=> b!506559 (=> res!307670 e!296484)))

(declare-fun lt!231229 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!231225 () SeekEntryResult!4107)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32512 (_ BitVec 32)) SeekEntryResult!4107)

(assert (=> b!506559 (= res!307670 (= lt!231225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231229 (select (store (arr!15633 a!3235) i!1204 k!2280) j!176) (array!32513 (store (arr!15633 a!3235) i!1204 k!2280) (size!15997 a!3235)) mask!3524)))))

(declare-fun lt!231226 () (_ BitVec 32))

(assert (=> b!506559 (= lt!231225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231226 (select (arr!15633 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506559 (= lt!231229 (toIndex!0 (select (store (arr!15633 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506559 (= lt!231226 (toIndex!0 (select (arr!15633 a!3235) j!176) mask!3524))))

(assert (=> b!506559 e!296482))

(declare-fun res!307675 () Bool)

(assert (=> b!506559 (=> (not res!307675) (not e!296482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32512 (_ BitVec 32)) Bool)

(assert (=> b!506559 (= res!307675 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15494 0))(
  ( (Unit!15495) )
))
(declare-fun lt!231230 () Unit!15494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15494)

(assert (=> b!506559 (= lt!231230 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506560 () Bool)

(assert (=> b!506560 (= e!296485 e!296483)))

(declare-fun res!307666 () Bool)

(assert (=> b!506560 (=> (not res!307666) (not e!296483))))

(declare-fun lt!231228 () SeekEntryResult!4107)

(assert (=> b!506560 (= res!307666 (or (= lt!231228 (MissingZero!4107 i!1204)) (= lt!231228 (MissingVacant!4107 i!1204))))))

(assert (=> b!506560 (= lt!231228 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506561 () Bool)

(declare-fun e!296481 () Bool)

(assert (=> b!506561 (= e!296484 e!296481)))

(declare-fun res!307672 () Bool)

(assert (=> b!506561 (=> res!307672 e!296481)))

(declare-fun lt!231227 () Bool)

(assert (=> b!506561 (= res!307672 (or (and (not lt!231227) (undefined!4919 lt!231225)) (and (not lt!231227) (not (undefined!4919 lt!231225)))))))

(assert (=> b!506561 (= lt!231227 (not (is-Intermediate!4107 lt!231225)))))

(declare-fun b!506562 () Bool)

(declare-fun res!307668 () Bool)

(assert (=> b!506562 (=> (not res!307668) (not e!296485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506562 (= res!307668 (validKeyInArray!0 k!2280))))

(declare-fun b!506563 () Bool)

(declare-fun res!307667 () Bool)

(assert (=> b!506563 (=> (not res!307667) (not e!296485))))

(assert (=> b!506563 (= res!307667 (validKeyInArray!0 (select (arr!15633 a!3235) j!176)))))

(declare-fun b!506564 () Bool)

(assert (=> b!506564 (= e!296481 true)))

(assert (=> b!506564 false))

(declare-fun b!506565 () Bool)

(declare-fun res!307673 () Bool)

(assert (=> b!506565 (=> (not res!307673) (not e!296485))))

(assert (=> b!506565 (= res!307673 (and (= (size!15997 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15997 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15997 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506566 () Bool)

(declare-fun res!307669 () Bool)

(assert (=> b!506566 (=> (not res!307669) (not e!296485))))

(declare-fun arrayContainsKey!0 (array!32512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506566 (= res!307669 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506567 () Bool)

(declare-fun res!307676 () Bool)

(assert (=> b!506567 (=> (not res!307676) (not e!296483))))

(assert (=> b!506567 (= res!307676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45796 res!307671) b!506565))

(assert (= (and b!506565 res!307673) b!506563))

(assert (= (and b!506563 res!307667) b!506562))

(assert (= (and b!506562 res!307668) b!506566))

(assert (= (and b!506566 res!307669) b!506560))

(assert (= (and b!506560 res!307666) b!506567))

(assert (= (and b!506567 res!307676) b!506558))

(assert (= (and b!506558 res!307674) b!506559))

(assert (= (and b!506559 res!307675) b!506557))

(assert (= (and b!506559 (not res!307670)) b!506561))

(assert (= (and b!506561 (not res!307672)) b!506564))

(declare-fun m!487285 () Bool)

(assert (=> b!506559 m!487285))

(declare-fun m!487287 () Bool)

(assert (=> b!506559 m!487287))

(declare-fun m!487289 () Bool)

(assert (=> b!506559 m!487289))

(assert (=> b!506559 m!487289))

(declare-fun m!487291 () Bool)

(assert (=> b!506559 m!487291))

(declare-fun m!487293 () Bool)

(assert (=> b!506559 m!487293))

(declare-fun m!487295 () Bool)

(assert (=> b!506559 m!487295))

(assert (=> b!506559 m!487293))

(declare-fun m!487297 () Bool)

(assert (=> b!506559 m!487297))

(assert (=> b!506559 m!487289))

(declare-fun m!487299 () Bool)

(assert (=> b!506559 m!487299))

(assert (=> b!506559 m!487293))

(declare-fun m!487301 () Bool)

(assert (=> b!506559 m!487301))

(declare-fun m!487303 () Bool)

(assert (=> b!506562 m!487303))

(declare-fun m!487305 () Bool)

(assert (=> b!506566 m!487305))

(declare-fun m!487307 () Bool)

(assert (=> b!506558 m!487307))

(assert (=> b!506563 m!487293))

(assert (=> b!506563 m!487293))

(declare-fun m!487309 () Bool)

(assert (=> b!506563 m!487309))

(declare-fun m!487311 () Bool)

(assert (=> b!506560 m!487311))

(assert (=> b!506557 m!487293))

(assert (=> b!506557 m!487293))

(declare-fun m!487313 () Bool)

(assert (=> b!506557 m!487313))

(declare-fun m!487315 () Bool)

(assert (=> b!506567 m!487315))

(declare-fun m!487317 () Bool)

(assert (=> start!45796 m!487317))

(declare-fun m!487319 () Bool)

(assert (=> start!45796 m!487319))

(push 1)

