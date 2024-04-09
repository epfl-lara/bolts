; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44382 () Bool)

(assert start!44382)

(declare-fun b!487467 () Bool)

(declare-fun res!290895 () Bool)

(declare-fun e!286828 () Bool)

(assert (=> b!487467 (=> (not res!290895) (not e!286828))))

(declare-datatypes ((array!31548 0))(
  ( (array!31549 (arr!15163 (Array (_ BitVec 32) (_ BitVec 64))) (size!15527 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31548)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487467 (= res!290895 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!290894 () Bool)

(assert (=> start!44382 (=> (not res!290894) (not e!286828))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44382 (= res!290894 (validMask!0 mask!3524))))

(assert (=> start!44382 e!286828))

(assert (=> start!44382 true))

(declare-fun array_inv!10937 (array!31548) Bool)

(assert (=> start!44382 (array_inv!10937 a!3235)))

(declare-fun b!487468 () Bool)

(declare-fun res!290892 () Bool)

(assert (=> b!487468 (=> (not res!290892) (not e!286828))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487468 (= res!290892 (validKeyInArray!0 (select (arr!15163 a!3235) j!176)))))

(declare-fun e!286826 () Bool)

(declare-fun b!487469 () Bool)

(declare-datatypes ((SeekEntryResult!3637 0))(
  ( (MissingZero!3637 (index!16727 (_ BitVec 32))) (Found!3637 (index!16728 (_ BitVec 32))) (Intermediate!3637 (undefined!4449 Bool) (index!16729 (_ BitVec 32)) (x!45876 (_ BitVec 32))) (Undefined!3637) (MissingVacant!3637 (index!16730 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31548 (_ BitVec 32)) SeekEntryResult!3637)

(assert (=> b!487469 (= e!286826 (= (seekEntryOrOpen!0 (select (arr!15163 a!3235) j!176) a!3235 mask!3524) (Found!3637 j!176)))))

(declare-fun b!487470 () Bool)

(declare-fun res!290897 () Bool)

(assert (=> b!487470 (=> (not res!290897) (not e!286828))))

(assert (=> b!487470 (= res!290897 (validKeyInArray!0 k0!2280))))

(declare-fun b!487471 () Bool)

(declare-fun res!290893 () Bool)

(declare-fun e!286827 () Bool)

(assert (=> b!487471 (=> (not res!290893) (not e!286827))))

(declare-datatypes ((List!9374 0))(
  ( (Nil!9371) (Cons!9370 (h!10226 (_ BitVec 64)) (t!15610 List!9374)) )
))
(declare-fun arrayNoDuplicates!0 (array!31548 (_ BitVec 32) List!9374) Bool)

(assert (=> b!487471 (= res!290893 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9371))))

(declare-fun b!487472 () Bool)

(assert (=> b!487472 (= e!286828 e!286827)))

(declare-fun res!290889 () Bool)

(assert (=> b!487472 (=> (not res!290889) (not e!286827))))

(declare-fun lt!220078 () SeekEntryResult!3637)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487472 (= res!290889 (or (= lt!220078 (MissingZero!3637 i!1204)) (= lt!220078 (MissingVacant!3637 i!1204))))))

(assert (=> b!487472 (= lt!220078 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!487473 () Bool)

(declare-fun res!290891 () Bool)

(assert (=> b!487473 (=> (not res!290891) (not e!286828))))

(assert (=> b!487473 (= res!290891 (and (= (size!15527 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15527 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15527 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487474 () Bool)

(declare-fun res!290896 () Bool)

(assert (=> b!487474 (=> (not res!290896) (not e!286827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31548 (_ BitVec 32)) Bool)

(assert (=> b!487474 (= res!290896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487475 () Bool)

(assert (=> b!487475 (= e!286827 (not true))))

(declare-fun lt!220077 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487475 (= lt!220077 (toIndex!0 (select (arr!15163 a!3235) j!176) mask!3524))))

(assert (=> b!487475 e!286826))

(declare-fun res!290890 () Bool)

(assert (=> b!487475 (=> (not res!290890) (not e!286826))))

(assert (=> b!487475 (= res!290890 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14212 0))(
  ( (Unit!14213) )
))
(declare-fun lt!220079 () Unit!14212)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14212)

(assert (=> b!487475 (= lt!220079 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44382 res!290894) b!487473))

(assert (= (and b!487473 res!290891) b!487468))

(assert (= (and b!487468 res!290892) b!487470))

(assert (= (and b!487470 res!290897) b!487467))

(assert (= (and b!487467 res!290895) b!487472))

(assert (= (and b!487472 res!290889) b!487474))

(assert (= (and b!487474 res!290896) b!487471))

(assert (= (and b!487471 res!290893) b!487475))

(assert (= (and b!487475 res!290890) b!487469))

(declare-fun m!467295 () Bool)

(assert (=> b!487474 m!467295))

(declare-fun m!467297 () Bool)

(assert (=> b!487468 m!467297))

(assert (=> b!487468 m!467297))

(declare-fun m!467299 () Bool)

(assert (=> b!487468 m!467299))

(declare-fun m!467301 () Bool)

(assert (=> start!44382 m!467301))

(declare-fun m!467303 () Bool)

(assert (=> start!44382 m!467303))

(declare-fun m!467305 () Bool)

(assert (=> b!487467 m!467305))

(declare-fun m!467307 () Bool)

(assert (=> b!487470 m!467307))

(declare-fun m!467309 () Bool)

(assert (=> b!487471 m!467309))

(declare-fun m!467311 () Bool)

(assert (=> b!487472 m!467311))

(assert (=> b!487469 m!467297))

(assert (=> b!487469 m!467297))

(declare-fun m!467313 () Bool)

(assert (=> b!487469 m!467313))

(assert (=> b!487475 m!467297))

(assert (=> b!487475 m!467297))

(declare-fun m!467315 () Bool)

(assert (=> b!487475 m!467315))

(declare-fun m!467317 () Bool)

(assert (=> b!487475 m!467317))

(declare-fun m!467319 () Bool)

(assert (=> b!487475 m!467319))

(check-sat (not b!487474) (not start!44382) (not b!487475) (not b!487467) (not b!487471) (not b!487469) (not b!487472) (not b!487468) (not b!487470))
(check-sat)
