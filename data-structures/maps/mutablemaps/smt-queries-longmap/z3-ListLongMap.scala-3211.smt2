; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45024 () Bool)

(assert start!45024)

(declare-fun b!493661 () Bool)

(declare-fun res!296383 () Bool)

(declare-fun e!289843 () Bool)

(assert (=> b!493661 (=> (not res!296383) (not e!289843))))

(declare-datatypes ((array!31929 0))(
  ( (array!31930 (arr!15346 (Array (_ BitVec 32) (_ BitVec 64))) (size!15710 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31929)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31929 (_ BitVec 32)) Bool)

(assert (=> b!493661 (= res!296383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493662 () Bool)

(declare-fun e!289845 () Bool)

(assert (=> b!493662 (= e!289845 e!289843)))

(declare-fun res!296387 () Bool)

(assert (=> b!493662 (=> (not res!296387) (not e!289843))))

(declare-datatypes ((SeekEntryResult!3820 0))(
  ( (MissingZero!3820 (index!17459 (_ BitVec 32))) (Found!3820 (index!17460 (_ BitVec 32))) (Intermediate!3820 (undefined!4632 Bool) (index!17461 (_ BitVec 32)) (x!46565 (_ BitVec 32))) (Undefined!3820) (MissingVacant!3820 (index!17462 (_ BitVec 32))) )
))
(declare-fun lt!223385 () SeekEntryResult!3820)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493662 (= res!296387 (or (= lt!223385 (MissingZero!3820 i!1204)) (= lt!223385 (MissingVacant!3820 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31929 (_ BitVec 32)) SeekEntryResult!3820)

(assert (=> b!493662 (= lt!223385 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!493663 () Bool)

(declare-fun e!289846 () Bool)

(assert (=> b!493663 (= e!289846 true)))

(declare-fun lt!223383 () SeekEntryResult!3820)

(assert (=> b!493663 (= lt!223383 Undefined!3820)))

(declare-fun b!493664 () Bool)

(declare-fun res!296381 () Bool)

(assert (=> b!493664 (=> (not res!296381) (not e!289845))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493664 (= res!296381 (and (= (size!15710 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15710 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15710 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493665 () Bool)

(declare-fun res!296385 () Bool)

(assert (=> b!493665 (=> (not res!296385) (not e!289843))))

(declare-datatypes ((List!9557 0))(
  ( (Nil!9554) (Cons!9553 (h!10421 (_ BitVec 64)) (t!15793 List!9557)) )
))
(declare-fun arrayNoDuplicates!0 (array!31929 (_ BitVec 32) List!9557) Bool)

(assert (=> b!493665 (= res!296385 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9554))))

(declare-fun b!493666 () Bool)

(assert (=> b!493666 (= e!289843 (not e!289846))))

(declare-fun res!296389 () Bool)

(assert (=> b!493666 (=> res!296389 e!289846)))

(declare-fun lt!223388 () SeekEntryResult!3820)

(declare-fun lt!223386 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31929 (_ BitVec 32)) SeekEntryResult!3820)

(assert (=> b!493666 (= res!296389 (= lt!223388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223386 (select (store (arr!15346 a!3235) i!1204 k0!2280) j!176) (array!31930 (store (arr!15346 a!3235) i!1204 k0!2280) (size!15710 a!3235)) mask!3524)))))

(declare-fun lt!223387 () (_ BitVec 32))

(assert (=> b!493666 (= lt!223388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223387 (select (arr!15346 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493666 (= lt!223386 (toIndex!0 (select (store (arr!15346 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493666 (= lt!223387 (toIndex!0 (select (arr!15346 a!3235) j!176) mask!3524))))

(assert (=> b!493666 (= lt!223383 (Found!3820 j!176))))

(assert (=> b!493666 (= lt!223383 (seekEntryOrOpen!0 (select (arr!15346 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493666 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14578 0))(
  ( (Unit!14579) )
))
(declare-fun lt!223384 () Unit!14578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14578)

(assert (=> b!493666 (= lt!223384 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493667 () Bool)

(declare-fun res!296386 () Bool)

(assert (=> b!493667 (=> (not res!296386) (not e!289845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493667 (= res!296386 (validKeyInArray!0 (select (arr!15346 a!3235) j!176)))))

(declare-fun res!296384 () Bool)

(assert (=> start!45024 (=> (not res!296384) (not e!289845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45024 (= res!296384 (validMask!0 mask!3524))))

(assert (=> start!45024 e!289845))

(assert (=> start!45024 true))

(declare-fun array_inv!11120 (array!31929) Bool)

(assert (=> start!45024 (array_inv!11120 a!3235)))

(declare-fun b!493668 () Bool)

(declare-fun res!296390 () Bool)

(assert (=> b!493668 (=> (not res!296390) (not e!289845))))

(assert (=> b!493668 (= res!296390 (validKeyInArray!0 k0!2280))))

(declare-fun b!493669 () Bool)

(declare-fun res!296382 () Bool)

(assert (=> b!493669 (=> (not res!296382) (not e!289845))))

(declare-fun arrayContainsKey!0 (array!31929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493669 (= res!296382 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493670 () Bool)

(declare-fun res!296388 () Bool)

(assert (=> b!493670 (=> res!296388 e!289846)))

(get-info :version)

(assert (=> b!493670 (= res!296388 (or (not ((_ is Intermediate!3820) lt!223388)) (not (undefined!4632 lt!223388))))))

(assert (= (and start!45024 res!296384) b!493664))

(assert (= (and b!493664 res!296381) b!493667))

(assert (= (and b!493667 res!296386) b!493668))

(assert (= (and b!493668 res!296390) b!493669))

(assert (= (and b!493669 res!296382) b!493662))

(assert (= (and b!493662 res!296387) b!493661))

(assert (= (and b!493661 res!296383) b!493665))

(assert (= (and b!493665 res!296385) b!493666))

(assert (= (and b!493666 (not res!296389)) b!493670))

(assert (= (and b!493670 (not res!296388)) b!493663))

(declare-fun m!474625 () Bool)

(assert (=> b!493661 m!474625))

(declare-fun m!474627 () Bool)

(assert (=> b!493667 m!474627))

(assert (=> b!493667 m!474627))

(declare-fun m!474629 () Bool)

(assert (=> b!493667 m!474629))

(declare-fun m!474631 () Bool)

(assert (=> b!493666 m!474631))

(declare-fun m!474633 () Bool)

(assert (=> b!493666 m!474633))

(declare-fun m!474635 () Bool)

(assert (=> b!493666 m!474635))

(assert (=> b!493666 m!474635))

(declare-fun m!474637 () Bool)

(assert (=> b!493666 m!474637))

(assert (=> b!493666 m!474627))

(declare-fun m!474639 () Bool)

(assert (=> b!493666 m!474639))

(assert (=> b!493666 m!474627))

(declare-fun m!474641 () Bool)

(assert (=> b!493666 m!474641))

(assert (=> b!493666 m!474627))

(declare-fun m!474643 () Bool)

(assert (=> b!493666 m!474643))

(assert (=> b!493666 m!474627))

(declare-fun m!474645 () Bool)

(assert (=> b!493666 m!474645))

(assert (=> b!493666 m!474635))

(declare-fun m!474647 () Bool)

(assert (=> b!493666 m!474647))

(declare-fun m!474649 () Bool)

(assert (=> b!493662 m!474649))

(declare-fun m!474651 () Bool)

(assert (=> start!45024 m!474651))

(declare-fun m!474653 () Bool)

(assert (=> start!45024 m!474653))

(declare-fun m!474655 () Bool)

(assert (=> b!493669 m!474655))

(declare-fun m!474657 () Bool)

(assert (=> b!493668 m!474657))

(declare-fun m!474659 () Bool)

(assert (=> b!493665 m!474659))

(check-sat (not b!493667) (not b!493669) (not b!493665) (not b!493661) (not b!493668) (not b!493666) (not b!493662) (not start!45024))
(check-sat)
