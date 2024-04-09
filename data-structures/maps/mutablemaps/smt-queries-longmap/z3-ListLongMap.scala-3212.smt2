; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45030 () Bool)

(assert start!45030)

(declare-fun b!493751 () Bool)

(declare-fun res!296480 () Bool)

(declare-fun e!289879 () Bool)

(assert (=> b!493751 (=> (not res!296480) (not e!289879))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493751 (= res!296480 (validKeyInArray!0 k0!2280))))

(declare-fun b!493752 () Bool)

(declare-fun res!296476 () Bool)

(assert (=> b!493752 (=> (not res!296476) (not e!289879))))

(declare-datatypes ((array!31935 0))(
  ( (array!31936 (arr!15349 (Array (_ BitVec 32) (_ BitVec 64))) (size!15713 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31935)

(declare-fun arrayContainsKey!0 (array!31935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493752 (= res!296476 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493753 () Bool)

(declare-fun res!296475 () Bool)

(declare-fun e!289881 () Bool)

(assert (=> b!493753 (=> (not res!296475) (not e!289881))))

(declare-datatypes ((List!9560 0))(
  ( (Nil!9557) (Cons!9556 (h!10424 (_ BitVec 64)) (t!15796 List!9560)) )
))
(declare-fun arrayNoDuplicates!0 (array!31935 (_ BitVec 32) List!9560) Bool)

(assert (=> b!493753 (= res!296475 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9557))))

(declare-fun b!493754 () Bool)

(declare-fun res!296474 () Bool)

(assert (=> b!493754 (=> (not res!296474) (not e!289879))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493754 (= res!296474 (and (= (size!15713 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15713 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15713 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493755 () Bool)

(declare-fun res!296471 () Bool)

(declare-fun e!289880 () Bool)

(assert (=> b!493755 (=> res!296471 e!289880)))

(declare-datatypes ((SeekEntryResult!3823 0))(
  ( (MissingZero!3823 (index!17471 (_ BitVec 32))) (Found!3823 (index!17472 (_ BitVec 32))) (Intermediate!3823 (undefined!4635 Bool) (index!17473 (_ BitVec 32)) (x!46576 (_ BitVec 32))) (Undefined!3823) (MissingVacant!3823 (index!17474 (_ BitVec 32))) )
))
(declare-fun lt!223438 () SeekEntryResult!3823)

(get-info :version)

(assert (=> b!493755 (= res!296471 (or (not ((_ is Intermediate!3823) lt!223438)) (not (undefined!4635 lt!223438))))))

(declare-fun b!493756 () Bool)

(assert (=> b!493756 (= e!289880 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun lt!223441 () SeekEntryResult!3823)

(assert (=> b!493756 (= lt!223441 Undefined!3823)))

(declare-fun b!493757 () Bool)

(assert (=> b!493757 (= e!289879 e!289881)))

(declare-fun res!296479 () Bool)

(assert (=> b!493757 (=> (not res!296479) (not e!289881))))

(declare-fun lt!223439 () SeekEntryResult!3823)

(assert (=> b!493757 (= res!296479 (or (= lt!223439 (MissingZero!3823 i!1204)) (= lt!223439 (MissingVacant!3823 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31935 (_ BitVec 32)) SeekEntryResult!3823)

(assert (=> b!493757 (= lt!223439 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!296477 () Bool)

(assert (=> start!45030 (=> (not res!296477) (not e!289879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45030 (= res!296477 (validMask!0 mask!3524))))

(assert (=> start!45030 e!289879))

(assert (=> start!45030 true))

(declare-fun array_inv!11123 (array!31935) Bool)

(assert (=> start!45030 (array_inv!11123 a!3235)))

(declare-fun b!493758 () Bool)

(declare-fun res!296473 () Bool)

(assert (=> b!493758 (=> (not res!296473) (not e!289879))))

(assert (=> b!493758 (= res!296473 (validKeyInArray!0 (select (arr!15349 a!3235) j!176)))))

(declare-fun b!493759 () Bool)

(assert (=> b!493759 (= e!289881 (not e!289880))))

(declare-fun res!296472 () Bool)

(assert (=> b!493759 (=> res!296472 e!289880)))

(declare-fun lt!223440 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31935 (_ BitVec 32)) SeekEntryResult!3823)

(assert (=> b!493759 (= res!296472 (= lt!223438 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223440 (select (store (arr!15349 a!3235) i!1204 k0!2280) j!176) (array!31936 (store (arr!15349 a!3235) i!1204 k0!2280) (size!15713 a!3235)) mask!3524)))))

(declare-fun lt!223437 () (_ BitVec 32))

(assert (=> b!493759 (= lt!223438 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223437 (select (arr!15349 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493759 (= lt!223440 (toIndex!0 (select (store (arr!15349 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493759 (= lt!223437 (toIndex!0 (select (arr!15349 a!3235) j!176) mask!3524))))

(assert (=> b!493759 (= lt!223441 (Found!3823 j!176))))

(assert (=> b!493759 (= lt!223441 (seekEntryOrOpen!0 (select (arr!15349 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31935 (_ BitVec 32)) Bool)

(assert (=> b!493759 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14584 0))(
  ( (Unit!14585) )
))
(declare-fun lt!223442 () Unit!14584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14584)

(assert (=> b!493759 (= lt!223442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493760 () Bool)

(declare-fun res!296478 () Bool)

(assert (=> b!493760 (=> (not res!296478) (not e!289881))))

(assert (=> b!493760 (= res!296478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45030 res!296477) b!493754))

(assert (= (and b!493754 res!296474) b!493758))

(assert (= (and b!493758 res!296473) b!493751))

(assert (= (and b!493751 res!296480) b!493752))

(assert (= (and b!493752 res!296476) b!493757))

(assert (= (and b!493757 res!296479) b!493760))

(assert (= (and b!493760 res!296478) b!493753))

(assert (= (and b!493753 res!296475) b!493759))

(assert (= (and b!493759 (not res!296472)) b!493755))

(assert (= (and b!493755 (not res!296471)) b!493756))

(declare-fun m!474733 () Bool)

(assert (=> b!493751 m!474733))

(declare-fun m!474735 () Bool)

(assert (=> b!493752 m!474735))

(declare-fun m!474737 () Bool)

(assert (=> b!493760 m!474737))

(declare-fun m!474739 () Bool)

(assert (=> b!493757 m!474739))

(declare-fun m!474741 () Bool)

(assert (=> b!493758 m!474741))

(assert (=> b!493758 m!474741))

(declare-fun m!474743 () Bool)

(assert (=> b!493758 m!474743))

(declare-fun m!474745 () Bool)

(assert (=> start!45030 m!474745))

(declare-fun m!474747 () Bool)

(assert (=> start!45030 m!474747))

(declare-fun m!474749 () Bool)

(assert (=> b!493753 m!474749))

(declare-fun m!474751 () Bool)

(assert (=> b!493759 m!474751))

(declare-fun m!474753 () Bool)

(assert (=> b!493759 m!474753))

(declare-fun m!474755 () Bool)

(assert (=> b!493759 m!474755))

(assert (=> b!493759 m!474741))

(declare-fun m!474757 () Bool)

(assert (=> b!493759 m!474757))

(declare-fun m!474759 () Bool)

(assert (=> b!493759 m!474759))

(assert (=> b!493759 m!474751))

(assert (=> b!493759 m!474741))

(declare-fun m!474761 () Bool)

(assert (=> b!493759 m!474761))

(assert (=> b!493759 m!474741))

(declare-fun m!474763 () Bool)

(assert (=> b!493759 m!474763))

(assert (=> b!493759 m!474741))

(declare-fun m!474765 () Bool)

(assert (=> b!493759 m!474765))

(assert (=> b!493759 m!474751))

(declare-fun m!474767 () Bool)

(assert (=> b!493759 m!474767))

(check-sat (not b!493758) (not b!493753) (not b!493757) (not b!493752) (not start!45030) (not b!493751) (not b!493760) (not b!493759))
(check-sat)
