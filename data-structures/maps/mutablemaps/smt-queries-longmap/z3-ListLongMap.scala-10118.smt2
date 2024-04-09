; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119244 () Bool)

(assert start!119244)

(declare-fun b!1390432 () Bool)

(declare-fun e!787436 () Bool)

(declare-datatypes ((SeekEntryResult!10250 0))(
  ( (MissingZero!10250 (index!43370 (_ BitVec 32))) (Found!10250 (index!43371 (_ BitVec 32))) (Intermediate!10250 (undefined!11062 Bool) (index!43372 (_ BitVec 32)) (x!125051 (_ BitVec 32))) (Undefined!10250) (MissingVacant!10250 (index!43373 (_ BitVec 32))) )
))
(declare-fun lt!610785 () SeekEntryResult!10250)

(declare-fun mask!2840 () (_ BitVec 32))

(get-info :version)

(assert (=> b!1390432 (= e!787436 (not (or (not ((_ is Intermediate!10250) lt!610785)) (undefined!11062 lt!610785) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(declare-fun e!787434 () Bool)

(assert (=> b!1390432 e!787434))

(declare-fun res!930704 () Bool)

(assert (=> b!1390432 (=> (not res!930704) (not e!787434))))

(declare-datatypes ((array!95099 0))(
  ( (array!95100 (arr!45911 (Array (_ BitVec 32) (_ BitVec 64))) (size!46462 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95099)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95099 (_ BitVec 32)) Bool)

(assert (=> b!1390432 (= res!930704 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46454 0))(
  ( (Unit!46455) )
))
(declare-fun lt!610786 () Unit!46454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46454)

(assert (=> b!1390432 (= lt!610786 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95099 (_ BitVec 32)) SeekEntryResult!10250)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390432 (= lt!610785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45911 a!2901) j!112) mask!2840) (select (arr!45911 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390433 () Bool)

(declare-fun res!930702 () Bool)

(assert (=> b!1390433 (=> (not res!930702) (not e!787436))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390433 (= res!930702 (and (= (size!46462 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46462 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46462 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390434 () Bool)

(declare-fun res!930708 () Bool)

(assert (=> b!1390434 (=> (not res!930708) (not e!787436))))

(assert (=> b!1390434 (= res!930708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390435 () Bool)

(declare-fun res!930706 () Bool)

(assert (=> b!1390435 (=> (not res!930706) (not e!787436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390435 (= res!930706 (validKeyInArray!0 (select (arr!45911 a!2901) j!112)))))

(declare-fun b!1390436 () Bool)

(declare-fun res!930703 () Bool)

(assert (=> b!1390436 (=> (not res!930703) (not e!787436))))

(declare-datatypes ((List!32610 0))(
  ( (Nil!32607) (Cons!32606 (h!33824 (_ BitVec 64)) (t!47311 List!32610)) )
))
(declare-fun arrayNoDuplicates!0 (array!95099 (_ BitVec 32) List!32610) Bool)

(assert (=> b!1390436 (= res!930703 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32607))))

(declare-fun b!1390437 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95099 (_ BitVec 32)) SeekEntryResult!10250)

(assert (=> b!1390437 (= e!787434 (= (seekEntryOrOpen!0 (select (arr!45911 a!2901) j!112) a!2901 mask!2840) (Found!10250 j!112)))))

(declare-fun b!1390438 () Bool)

(declare-fun res!930707 () Bool)

(assert (=> b!1390438 (=> (not res!930707) (not e!787436))))

(assert (=> b!1390438 (= res!930707 (validKeyInArray!0 (select (arr!45911 a!2901) i!1037)))))

(declare-fun res!930705 () Bool)

(assert (=> start!119244 (=> (not res!930705) (not e!787436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119244 (= res!930705 (validMask!0 mask!2840))))

(assert (=> start!119244 e!787436))

(assert (=> start!119244 true))

(declare-fun array_inv!34856 (array!95099) Bool)

(assert (=> start!119244 (array_inv!34856 a!2901)))

(assert (= (and start!119244 res!930705) b!1390433))

(assert (= (and b!1390433 res!930702) b!1390438))

(assert (= (and b!1390438 res!930707) b!1390435))

(assert (= (and b!1390435 res!930706) b!1390434))

(assert (= (and b!1390434 res!930708) b!1390436))

(assert (= (and b!1390436 res!930703) b!1390432))

(assert (= (and b!1390432 res!930704) b!1390437))

(declare-fun m!1276357 () Bool)

(assert (=> b!1390438 m!1276357))

(assert (=> b!1390438 m!1276357))

(declare-fun m!1276359 () Bool)

(assert (=> b!1390438 m!1276359))

(declare-fun m!1276361 () Bool)

(assert (=> b!1390432 m!1276361))

(declare-fun m!1276363 () Bool)

(assert (=> b!1390432 m!1276363))

(assert (=> b!1390432 m!1276361))

(declare-fun m!1276365 () Bool)

(assert (=> b!1390432 m!1276365))

(assert (=> b!1390432 m!1276363))

(assert (=> b!1390432 m!1276361))

(declare-fun m!1276367 () Bool)

(assert (=> b!1390432 m!1276367))

(declare-fun m!1276369 () Bool)

(assert (=> b!1390432 m!1276369))

(declare-fun m!1276371 () Bool)

(assert (=> b!1390436 m!1276371))

(declare-fun m!1276373 () Bool)

(assert (=> start!119244 m!1276373))

(declare-fun m!1276375 () Bool)

(assert (=> start!119244 m!1276375))

(declare-fun m!1276377 () Bool)

(assert (=> b!1390434 m!1276377))

(assert (=> b!1390437 m!1276361))

(assert (=> b!1390437 m!1276361))

(declare-fun m!1276379 () Bool)

(assert (=> b!1390437 m!1276379))

(assert (=> b!1390435 m!1276361))

(assert (=> b!1390435 m!1276361))

(declare-fun m!1276381 () Bool)

(assert (=> b!1390435 m!1276381))

(check-sat (not b!1390435) (not start!119244) (not b!1390438) (not b!1390432) (not b!1390437) (not b!1390434) (not b!1390436))
(check-sat)
