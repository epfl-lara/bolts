; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44790 () Bool)

(assert start!44790)

(declare-fun b!491436 () Bool)

(declare-fun res!294528 () Bool)

(declare-fun e!288734 () Bool)

(assert (=> b!491436 (=> (not res!294528) (not e!288734))))

(declare-datatypes ((array!31809 0))(
  ( (array!31810 (arr!15289 (Array (_ BitVec 32) (_ BitVec 64))) (size!15653 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31809)

(declare-datatypes ((List!9500 0))(
  ( (Nil!9497) (Cons!9496 (h!10358 (_ BitVec 64)) (t!15736 List!9500)) )
))
(declare-fun arrayNoDuplicates!0 (array!31809 (_ BitVec 32) List!9500) Bool)

(assert (=> b!491436 (= res!294528 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9497))))

(declare-fun res!294523 () Bool)

(declare-fun e!288736 () Bool)

(assert (=> start!44790 (=> (not res!294523) (not e!288736))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44790 (= res!294523 (validMask!0 mask!3524))))

(assert (=> start!44790 e!288736))

(assert (=> start!44790 true))

(declare-fun array_inv!11063 (array!31809) Bool)

(assert (=> start!44790 (array_inv!11063 a!3235)))

(declare-fun b!491437 () Bool)

(declare-fun res!294529 () Bool)

(assert (=> b!491437 (=> (not res!294529) (not e!288734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31809 (_ BitVec 32)) Bool)

(assert (=> b!491437 (= res!294529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491438 () Bool)

(declare-fun e!288735 () Bool)

(assert (=> b!491438 (= e!288735 true)))

(declare-fun lt!222243 () (_ BitVec 64))

(declare-fun lt!222246 () array!31809)

(declare-datatypes ((SeekEntryResult!3763 0))(
  ( (MissingZero!3763 (index!17231 (_ BitVec 32))) (Found!3763 (index!17232 (_ BitVec 32))) (Intermediate!3763 (undefined!4575 Bool) (index!17233 (_ BitVec 32)) (x!46344 (_ BitVec 32))) (Undefined!3763) (MissingVacant!3763 (index!17234 (_ BitVec 32))) )
))
(declare-fun lt!222245 () SeekEntryResult!3763)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31809 (_ BitVec 32)) SeekEntryResult!3763)

(assert (=> b!491438 (= lt!222245 (seekEntryOrOpen!0 lt!222243 lt!222246 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((Unit!14464 0))(
  ( (Unit!14465) )
))
(declare-fun lt!222248 () Unit!14464)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31809 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14464)

(assert (=> b!491438 (= lt!222248 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!491439 () Bool)

(declare-fun res!294527 () Bool)

(assert (=> b!491439 (=> (not res!294527) (not e!288736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491439 (= res!294527 (validKeyInArray!0 k0!2280))))

(declare-fun b!491440 () Bool)

(declare-fun res!294524 () Bool)

(assert (=> b!491440 (=> (not res!294524) (not e!288736))))

(assert (=> b!491440 (= res!294524 (validKeyInArray!0 (select (arr!15289 a!3235) j!176)))))

(declare-fun b!491441 () Bool)

(declare-fun res!294530 () Bool)

(assert (=> b!491441 (=> (not res!294530) (not e!288736))))

(assert (=> b!491441 (= res!294530 (and (= (size!15653 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15653 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15653 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491442 () Bool)

(declare-fun res!294522 () Bool)

(assert (=> b!491442 (=> (not res!294522) (not e!288736))))

(declare-fun arrayContainsKey!0 (array!31809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491442 (= res!294522 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491443 () Bool)

(assert (=> b!491443 (= e!288734 (not e!288735))))

(declare-fun res!294526 () Bool)

(assert (=> b!491443 (=> res!294526 e!288735)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31809 (_ BitVec 32)) SeekEntryResult!3763)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491443 (= res!294526 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15289 a!3235) j!176) mask!3524) (select (arr!15289 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222243 mask!3524) lt!222243 lt!222246 mask!3524))))))

(assert (=> b!491443 (= lt!222243 (select (store (arr!15289 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!491443 (= lt!222246 (array!31810 (store (arr!15289 a!3235) i!1204 k0!2280) (size!15653 a!3235)))))

(assert (=> b!491443 (= lt!222245 (Found!3763 j!176))))

(assert (=> b!491443 (= lt!222245 (seekEntryOrOpen!0 (select (arr!15289 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491443 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222244 () Unit!14464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14464)

(assert (=> b!491443 (= lt!222244 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491444 () Bool)

(assert (=> b!491444 (= e!288736 e!288734)))

(declare-fun res!294525 () Bool)

(assert (=> b!491444 (=> (not res!294525) (not e!288734))))

(declare-fun lt!222247 () SeekEntryResult!3763)

(assert (=> b!491444 (= res!294525 (or (= lt!222247 (MissingZero!3763 i!1204)) (= lt!222247 (MissingVacant!3763 i!1204))))))

(assert (=> b!491444 (= lt!222247 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!44790 res!294523) b!491441))

(assert (= (and b!491441 res!294530) b!491440))

(assert (= (and b!491440 res!294524) b!491439))

(assert (= (and b!491439 res!294527) b!491442))

(assert (= (and b!491442 res!294522) b!491444))

(assert (= (and b!491444 res!294525) b!491437))

(assert (= (and b!491437 res!294529) b!491436))

(assert (= (and b!491436 res!294528) b!491443))

(assert (= (and b!491443 (not res!294526)) b!491438))

(declare-fun m!472145 () Bool)

(assert (=> b!491440 m!472145))

(assert (=> b!491440 m!472145))

(declare-fun m!472147 () Bool)

(assert (=> b!491440 m!472147))

(declare-fun m!472149 () Bool)

(assert (=> b!491443 m!472149))

(declare-fun m!472151 () Bool)

(assert (=> b!491443 m!472151))

(declare-fun m!472153 () Bool)

(assert (=> b!491443 m!472153))

(assert (=> b!491443 m!472145))

(declare-fun m!472155 () Bool)

(assert (=> b!491443 m!472155))

(declare-fun m!472157 () Bool)

(assert (=> b!491443 m!472157))

(assert (=> b!491443 m!472145))

(declare-fun m!472159 () Bool)

(assert (=> b!491443 m!472159))

(assert (=> b!491443 m!472145))

(declare-fun m!472161 () Bool)

(assert (=> b!491443 m!472161))

(assert (=> b!491443 m!472157))

(declare-fun m!472163 () Bool)

(assert (=> b!491443 m!472163))

(assert (=> b!491443 m!472155))

(assert (=> b!491443 m!472145))

(declare-fun m!472165 () Bool)

(assert (=> b!491443 m!472165))

(declare-fun m!472167 () Bool)

(assert (=> start!44790 m!472167))

(declare-fun m!472169 () Bool)

(assert (=> start!44790 m!472169))

(declare-fun m!472171 () Bool)

(assert (=> b!491438 m!472171))

(declare-fun m!472173 () Bool)

(assert (=> b!491438 m!472173))

(declare-fun m!472175 () Bool)

(assert (=> b!491442 m!472175))

(declare-fun m!472177 () Bool)

(assert (=> b!491439 m!472177))

(declare-fun m!472179 () Bool)

(assert (=> b!491444 m!472179))

(declare-fun m!472181 () Bool)

(assert (=> b!491437 m!472181))

(declare-fun m!472183 () Bool)

(assert (=> b!491436 m!472183))

(check-sat (not b!491438) (not b!491444) (not b!491439) (not b!491440) (not start!44790) (not b!491443) (not b!491437) (not b!491442) (not b!491436))
(check-sat)
