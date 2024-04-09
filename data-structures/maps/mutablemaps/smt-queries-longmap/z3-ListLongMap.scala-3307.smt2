; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45798 () Bool)

(assert start!45798)

(declare-fun b!506590 () Bool)

(declare-fun res!307701 () Bool)

(declare-fun e!296499 () Bool)

(assert (=> b!506590 (=> (not res!307701) (not e!296499))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506590 (= res!307701 (validKeyInArray!0 k0!2280))))

(declare-fun b!506591 () Bool)

(declare-fun res!307699 () Bool)

(assert (=> b!506591 (=> (not res!307699) (not e!296499))))

(declare-datatypes ((array!32514 0))(
  ( (array!32515 (arr!15634 (Array (_ BitVec 32) (_ BitVec 64))) (size!15998 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32514)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!506591 (= res!307699 (validKeyInArray!0 (select (arr!15634 a!3235) j!176)))))

(declare-fun b!506592 () Bool)

(declare-fun res!307700 () Bool)

(declare-fun e!296503 () Bool)

(assert (=> b!506592 (=> (not res!307700) (not e!296503))))

(declare-datatypes ((List!9845 0))(
  ( (Nil!9842) (Cons!9841 (h!10718 (_ BitVec 64)) (t!16081 List!9845)) )
))
(declare-fun arrayNoDuplicates!0 (array!32514 (_ BitVec 32) List!9845) Bool)

(assert (=> b!506592 (= res!307700 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9842))))

(declare-fun b!506593 () Bool)

(declare-fun e!296502 () Bool)

(assert (=> b!506593 (= e!296503 (not e!296502))))

(declare-fun res!307704 () Bool)

(assert (=> b!506593 (=> res!307704 e!296502)))

(declare-fun lt!231243 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4108 0))(
  ( (MissingZero!4108 (index!18620 (_ BitVec 32))) (Found!4108 (index!18621 (_ BitVec 32))) (Intermediate!4108 (undefined!4920 Bool) (index!18622 (_ BitVec 32)) (x!47648 (_ BitVec 32))) (Undefined!4108) (MissingVacant!4108 (index!18623 (_ BitVec 32))) )
))
(declare-fun lt!231244 () SeekEntryResult!4108)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32514 (_ BitVec 32)) SeekEntryResult!4108)

(assert (=> b!506593 (= res!307704 (= lt!231244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231243 (select (store (arr!15634 a!3235) i!1204 k0!2280) j!176) (array!32515 (store (arr!15634 a!3235) i!1204 k0!2280) (size!15998 a!3235)) mask!3524)))))

(declare-fun lt!231245 () (_ BitVec 32))

(assert (=> b!506593 (= lt!231244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231245 (select (arr!15634 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506593 (= lt!231243 (toIndex!0 (select (store (arr!15634 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!506593 (= lt!231245 (toIndex!0 (select (arr!15634 a!3235) j!176) mask!3524))))

(declare-fun e!296500 () Bool)

(assert (=> b!506593 e!296500))

(declare-fun res!307705 () Bool)

(assert (=> b!506593 (=> (not res!307705) (not e!296500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32514 (_ BitVec 32)) Bool)

(assert (=> b!506593 (= res!307705 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15496 0))(
  ( (Unit!15497) )
))
(declare-fun lt!231248 () Unit!15496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15496)

(assert (=> b!506593 (= lt!231248 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506594 () Bool)

(declare-fun res!307709 () Bool)

(assert (=> b!506594 (=> (not res!307709) (not e!296499))))

(declare-fun arrayContainsKey!0 (array!32514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506594 (= res!307709 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506595 () Bool)

(declare-fun e!296498 () Bool)

(assert (=> b!506595 (= e!296502 e!296498)))

(declare-fun res!307708 () Bool)

(assert (=> b!506595 (=> res!307708 e!296498)))

(declare-fun lt!231247 () Bool)

(assert (=> b!506595 (= res!307708 (or (and (not lt!231247) (undefined!4920 lt!231244)) (and (not lt!231247) (not (undefined!4920 lt!231244)))))))

(get-info :version)

(assert (=> b!506595 (= lt!231247 (not ((_ is Intermediate!4108) lt!231244)))))

(declare-fun b!506596 () Bool)

(assert (=> b!506596 (= e!296498 true)))

(assert (=> b!506596 false))

(declare-fun b!506597 () Bool)

(declare-fun res!307707 () Bool)

(assert (=> b!506597 (=> (not res!307707) (not e!296503))))

(assert (=> b!506597 (= res!307707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506599 () Bool)

(declare-fun res!307703 () Bool)

(assert (=> b!506599 (=> (not res!307703) (not e!296499))))

(assert (=> b!506599 (= res!307703 (and (= (size!15998 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15998 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15998 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506600 () Bool)

(assert (=> b!506600 (= e!296499 e!296503)))

(declare-fun res!307702 () Bool)

(assert (=> b!506600 (=> (not res!307702) (not e!296503))))

(declare-fun lt!231246 () SeekEntryResult!4108)

(assert (=> b!506600 (= res!307702 (or (= lt!231246 (MissingZero!4108 i!1204)) (= lt!231246 (MissingVacant!4108 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32514 (_ BitVec 32)) SeekEntryResult!4108)

(assert (=> b!506600 (= lt!231246 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!506598 () Bool)

(assert (=> b!506598 (= e!296500 (= (seekEntryOrOpen!0 (select (arr!15634 a!3235) j!176) a!3235 mask!3524) (Found!4108 j!176)))))

(declare-fun res!307706 () Bool)

(assert (=> start!45798 (=> (not res!307706) (not e!296499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45798 (= res!307706 (validMask!0 mask!3524))))

(assert (=> start!45798 e!296499))

(assert (=> start!45798 true))

(declare-fun array_inv!11408 (array!32514) Bool)

(assert (=> start!45798 (array_inv!11408 a!3235)))

(assert (= (and start!45798 res!307706) b!506599))

(assert (= (and b!506599 res!307703) b!506591))

(assert (= (and b!506591 res!307699) b!506590))

(assert (= (and b!506590 res!307701) b!506594))

(assert (= (and b!506594 res!307709) b!506600))

(assert (= (and b!506600 res!307702) b!506597))

(assert (= (and b!506597 res!307707) b!506592))

(assert (= (and b!506592 res!307700) b!506593))

(assert (= (and b!506593 res!307705) b!506598))

(assert (= (and b!506593 (not res!307704)) b!506595))

(assert (= (and b!506595 (not res!307708)) b!506596))

(declare-fun m!487321 () Bool)

(assert (=> b!506593 m!487321))

(declare-fun m!487323 () Bool)

(assert (=> b!506593 m!487323))

(declare-fun m!487325 () Bool)

(assert (=> b!506593 m!487325))

(assert (=> b!506593 m!487321))

(declare-fun m!487327 () Bool)

(assert (=> b!506593 m!487327))

(declare-fun m!487329 () Bool)

(assert (=> b!506593 m!487329))

(assert (=> b!506593 m!487327))

(declare-fun m!487331 () Bool)

(assert (=> b!506593 m!487331))

(assert (=> b!506593 m!487321))

(declare-fun m!487333 () Bool)

(assert (=> b!506593 m!487333))

(assert (=> b!506593 m!487327))

(declare-fun m!487335 () Bool)

(assert (=> b!506593 m!487335))

(declare-fun m!487337 () Bool)

(assert (=> b!506593 m!487337))

(assert (=> b!506598 m!487327))

(assert (=> b!506598 m!487327))

(declare-fun m!487339 () Bool)

(assert (=> b!506598 m!487339))

(declare-fun m!487341 () Bool)

(assert (=> b!506597 m!487341))

(declare-fun m!487343 () Bool)

(assert (=> b!506590 m!487343))

(declare-fun m!487345 () Bool)

(assert (=> b!506600 m!487345))

(declare-fun m!487347 () Bool)

(assert (=> start!45798 m!487347))

(declare-fun m!487349 () Bool)

(assert (=> start!45798 m!487349))

(declare-fun m!487351 () Bool)

(assert (=> b!506592 m!487351))

(assert (=> b!506591 m!487327))

(assert (=> b!506591 m!487327))

(declare-fun m!487353 () Bool)

(assert (=> b!506591 m!487353))

(declare-fun m!487355 () Bool)

(assert (=> b!506594 m!487355))

(check-sat (not b!506594) (not b!506593) (not b!506598) (not b!506591) (not b!506590) (not b!506600) (not b!506592) (not start!45798) (not b!506597))
(check-sat)
