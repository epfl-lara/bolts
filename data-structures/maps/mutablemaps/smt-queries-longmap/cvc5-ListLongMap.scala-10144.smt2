; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119668 () Bool)

(assert start!119668)

(declare-fun b!1393389 () Bool)

(declare-fun e!789020 () Bool)

(assert (=> b!1393389 (= e!789020 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95268 0))(
  ( (array!95269 (arr!45988 (Array (_ BitVec 32) (_ BitVec 64))) (size!46539 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95268)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10327 0))(
  ( (MissingZero!10327 (index!43678 (_ BitVec 32))) (Found!10327 (index!43679 (_ BitVec 32))) (Intermediate!10327 (undefined!11139 Bool) (index!43680 (_ BitVec 32)) (x!125366 (_ BitVec 32))) (Undefined!10327) (MissingVacant!10327 (index!43681 (_ BitVec 32))) )
))
(declare-fun lt!611942 () SeekEntryResult!10327)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95268 (_ BitVec 32)) SeekEntryResult!10327)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393389 (= lt!611942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45988 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45988 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95269 (store (arr!45988 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46539 a!2901)) mask!2840))))

(declare-fun b!1393390 () Bool)

(declare-fun e!789017 () Bool)

(assert (=> b!1393390 (= e!789017 (not e!789020))))

(declare-fun res!932912 () Bool)

(assert (=> b!1393390 (=> res!932912 e!789020)))

(declare-fun lt!611944 () SeekEntryResult!10327)

(assert (=> b!1393390 (= res!932912 (or (not (is-Intermediate!10327 lt!611944)) (undefined!11139 lt!611944)))))

(declare-fun e!789018 () Bool)

(assert (=> b!1393390 e!789018))

(declare-fun res!932909 () Bool)

(assert (=> b!1393390 (=> (not res!932909) (not e!789018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95268 (_ BitVec 32)) Bool)

(assert (=> b!1393390 (= res!932909 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46608 0))(
  ( (Unit!46609) )
))
(declare-fun lt!611943 () Unit!46608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95268 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46608)

(assert (=> b!1393390 (= lt!611943 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393390 (= lt!611944 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45988 a!2901) j!112) mask!2840) (select (arr!45988 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393391 () Bool)

(declare-fun res!932913 () Bool)

(assert (=> b!1393391 (=> (not res!932913) (not e!789017))))

(assert (=> b!1393391 (= res!932913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393392 () Bool)

(declare-fun res!932910 () Bool)

(assert (=> b!1393392 (=> (not res!932910) (not e!789017))))

(declare-datatypes ((List!32687 0))(
  ( (Nil!32684) (Cons!32683 (h!33916 (_ BitVec 64)) (t!47388 List!32687)) )
))
(declare-fun arrayNoDuplicates!0 (array!95268 (_ BitVec 32) List!32687) Bool)

(assert (=> b!1393392 (= res!932910 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32684))))

(declare-fun res!932906 () Bool)

(assert (=> start!119668 (=> (not res!932906) (not e!789017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119668 (= res!932906 (validMask!0 mask!2840))))

(assert (=> start!119668 e!789017))

(assert (=> start!119668 true))

(declare-fun array_inv!34933 (array!95268) Bool)

(assert (=> start!119668 (array_inv!34933 a!2901)))

(declare-fun b!1393393 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95268 (_ BitVec 32)) SeekEntryResult!10327)

(assert (=> b!1393393 (= e!789018 (= (seekEntryOrOpen!0 (select (arr!45988 a!2901) j!112) a!2901 mask!2840) (Found!10327 j!112)))))

(declare-fun b!1393394 () Bool)

(declare-fun res!932908 () Bool)

(assert (=> b!1393394 (=> (not res!932908) (not e!789017))))

(assert (=> b!1393394 (= res!932908 (and (= (size!46539 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46539 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46539 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393395 () Bool)

(declare-fun res!932911 () Bool)

(assert (=> b!1393395 (=> (not res!932911) (not e!789017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393395 (= res!932911 (validKeyInArray!0 (select (arr!45988 a!2901) j!112)))))

(declare-fun b!1393396 () Bool)

(declare-fun res!932907 () Bool)

(assert (=> b!1393396 (=> (not res!932907) (not e!789017))))

(assert (=> b!1393396 (= res!932907 (validKeyInArray!0 (select (arr!45988 a!2901) i!1037)))))

(assert (= (and start!119668 res!932906) b!1393394))

(assert (= (and b!1393394 res!932908) b!1393396))

(assert (= (and b!1393396 res!932907) b!1393395))

(assert (= (and b!1393395 res!932911) b!1393391))

(assert (= (and b!1393391 res!932913) b!1393392))

(assert (= (and b!1393392 res!932910) b!1393390))

(assert (= (and b!1393390 res!932909) b!1393393))

(assert (= (and b!1393390 (not res!932912)) b!1393389))

(declare-fun m!1279373 () Bool)

(assert (=> b!1393396 m!1279373))

(assert (=> b!1393396 m!1279373))

(declare-fun m!1279375 () Bool)

(assert (=> b!1393396 m!1279375))

(declare-fun m!1279377 () Bool)

(assert (=> b!1393391 m!1279377))

(declare-fun m!1279379 () Bool)

(assert (=> b!1393393 m!1279379))

(assert (=> b!1393393 m!1279379))

(declare-fun m!1279381 () Bool)

(assert (=> b!1393393 m!1279381))

(declare-fun m!1279383 () Bool)

(assert (=> b!1393392 m!1279383))

(assert (=> b!1393390 m!1279379))

(declare-fun m!1279385 () Bool)

(assert (=> b!1393390 m!1279385))

(assert (=> b!1393390 m!1279379))

(declare-fun m!1279387 () Bool)

(assert (=> b!1393390 m!1279387))

(assert (=> b!1393390 m!1279385))

(assert (=> b!1393390 m!1279379))

(declare-fun m!1279389 () Bool)

(assert (=> b!1393390 m!1279389))

(declare-fun m!1279391 () Bool)

(assert (=> b!1393390 m!1279391))

(declare-fun m!1279393 () Bool)

(assert (=> start!119668 m!1279393))

(declare-fun m!1279395 () Bool)

(assert (=> start!119668 m!1279395))

(declare-fun m!1279397 () Bool)

(assert (=> b!1393389 m!1279397))

(declare-fun m!1279399 () Bool)

(assert (=> b!1393389 m!1279399))

(assert (=> b!1393389 m!1279399))

(declare-fun m!1279401 () Bool)

(assert (=> b!1393389 m!1279401))

(assert (=> b!1393389 m!1279401))

(assert (=> b!1393389 m!1279399))

(declare-fun m!1279403 () Bool)

(assert (=> b!1393389 m!1279403))

(assert (=> b!1393395 m!1279379))

(assert (=> b!1393395 m!1279379))

(declare-fun m!1279405 () Bool)

(assert (=> b!1393395 m!1279405))

(push 1)

(assert (not b!1393391))

(assert (not b!1393396))

(assert (not start!119668))

(assert (not b!1393390))

(assert (not b!1393395))

(assert (not b!1393392))

(assert (not b!1393393))

(assert (not b!1393389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

