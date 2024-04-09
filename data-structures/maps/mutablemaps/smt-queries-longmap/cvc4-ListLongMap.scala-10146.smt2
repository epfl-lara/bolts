; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119684 () Bool)

(assert start!119684)

(declare-fun b!1393581 () Bool)

(declare-fun res!933104 () Bool)

(declare-fun e!789116 () Bool)

(assert (=> b!1393581 (=> (not res!933104) (not e!789116))))

(declare-datatypes ((array!95284 0))(
  ( (array!95285 (arr!45996 (Array (_ BitVec 32) (_ BitVec 64))) (size!46547 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95284)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393581 (= res!933104 (validKeyInArray!0 (select (arr!45996 a!2901) j!112)))))

(declare-fun b!1393582 () Bool)

(declare-fun e!789115 () Bool)

(assert (=> b!1393582 (= e!789116 (not e!789115))))

(declare-fun res!933102 () Bool)

(assert (=> b!1393582 (=> res!933102 e!789115)))

(declare-datatypes ((SeekEntryResult!10335 0))(
  ( (MissingZero!10335 (index!43710 (_ BitVec 32))) (Found!10335 (index!43711 (_ BitVec 32))) (Intermediate!10335 (undefined!11147 Bool) (index!43712 (_ BitVec 32)) (x!125390 (_ BitVec 32))) (Undefined!10335) (MissingVacant!10335 (index!43713 (_ BitVec 32))) )
))
(declare-fun lt!612016 () SeekEntryResult!10335)

(assert (=> b!1393582 (= res!933102 (or (not (is-Intermediate!10335 lt!612016)) (undefined!11147 lt!612016)))))

(declare-fun e!789114 () Bool)

(assert (=> b!1393582 e!789114))

(declare-fun res!933105 () Bool)

(assert (=> b!1393582 (=> (not res!933105) (not e!789114))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95284 (_ BitVec 32)) Bool)

(assert (=> b!1393582 (= res!933105 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46624 0))(
  ( (Unit!46625) )
))
(declare-fun lt!612015 () Unit!46624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46624)

(assert (=> b!1393582 (= lt!612015 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95284 (_ BitVec 32)) SeekEntryResult!10335)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393582 (= lt!612016 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45996 a!2901) j!112) mask!2840) (select (arr!45996 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393583 () Bool)

(declare-fun res!933099 () Bool)

(assert (=> b!1393583 (=> (not res!933099) (not e!789116))))

(declare-datatypes ((List!32695 0))(
  ( (Nil!32692) (Cons!32691 (h!33924 (_ BitVec 64)) (t!47396 List!32695)) )
))
(declare-fun arrayNoDuplicates!0 (array!95284 (_ BitVec 32) List!32695) Bool)

(assert (=> b!1393583 (= res!933099 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32692))))

(declare-fun b!1393584 () Bool)

(declare-fun res!933098 () Bool)

(assert (=> b!1393584 (=> (not res!933098) (not e!789116))))

(assert (=> b!1393584 (= res!933098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393585 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95284 (_ BitVec 32)) SeekEntryResult!10335)

(assert (=> b!1393585 (= e!789114 (= (seekEntryOrOpen!0 (select (arr!45996 a!2901) j!112) a!2901 mask!2840) (Found!10335 j!112)))))

(declare-fun res!933100 () Bool)

(assert (=> start!119684 (=> (not res!933100) (not e!789116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119684 (= res!933100 (validMask!0 mask!2840))))

(assert (=> start!119684 e!789116))

(assert (=> start!119684 true))

(declare-fun array_inv!34941 (array!95284) Bool)

(assert (=> start!119684 (array_inv!34941 a!2901)))

(declare-fun b!1393586 () Bool)

(assert (=> b!1393586 (= e!789115 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!612014 () SeekEntryResult!10335)

(assert (=> b!1393586 (= lt!612014 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45996 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45996 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95285 (store (arr!45996 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46547 a!2901)) mask!2840))))

(declare-fun b!1393587 () Bool)

(declare-fun res!933103 () Bool)

(assert (=> b!1393587 (=> (not res!933103) (not e!789116))))

(assert (=> b!1393587 (= res!933103 (validKeyInArray!0 (select (arr!45996 a!2901) i!1037)))))

(declare-fun b!1393588 () Bool)

(declare-fun res!933101 () Bool)

(assert (=> b!1393588 (=> (not res!933101) (not e!789116))))

(assert (=> b!1393588 (= res!933101 (and (= (size!46547 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46547 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46547 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119684 res!933100) b!1393588))

(assert (= (and b!1393588 res!933101) b!1393587))

(assert (= (and b!1393587 res!933103) b!1393581))

(assert (= (and b!1393581 res!933104) b!1393584))

(assert (= (and b!1393584 res!933098) b!1393583))

(assert (= (and b!1393583 res!933099) b!1393582))

(assert (= (and b!1393582 res!933105) b!1393585))

(assert (= (and b!1393582 (not res!933102)) b!1393586))

(declare-fun m!1279645 () Bool)

(assert (=> b!1393582 m!1279645))

(declare-fun m!1279647 () Bool)

(assert (=> b!1393582 m!1279647))

(assert (=> b!1393582 m!1279645))

(declare-fun m!1279649 () Bool)

(assert (=> b!1393582 m!1279649))

(assert (=> b!1393582 m!1279647))

(assert (=> b!1393582 m!1279645))

(declare-fun m!1279651 () Bool)

(assert (=> b!1393582 m!1279651))

(declare-fun m!1279653 () Bool)

(assert (=> b!1393582 m!1279653))

(assert (=> b!1393581 m!1279645))

(assert (=> b!1393581 m!1279645))

(declare-fun m!1279655 () Bool)

(assert (=> b!1393581 m!1279655))

(declare-fun m!1279657 () Bool)

(assert (=> b!1393586 m!1279657))

(declare-fun m!1279659 () Bool)

(assert (=> b!1393586 m!1279659))

(assert (=> b!1393586 m!1279659))

(declare-fun m!1279661 () Bool)

(assert (=> b!1393586 m!1279661))

(assert (=> b!1393586 m!1279661))

(assert (=> b!1393586 m!1279659))

(declare-fun m!1279663 () Bool)

(assert (=> b!1393586 m!1279663))

(declare-fun m!1279665 () Bool)

(assert (=> b!1393587 m!1279665))

(assert (=> b!1393587 m!1279665))

(declare-fun m!1279667 () Bool)

(assert (=> b!1393587 m!1279667))

(declare-fun m!1279669 () Bool)

(assert (=> b!1393583 m!1279669))

(declare-fun m!1279671 () Bool)

(assert (=> start!119684 m!1279671))

(declare-fun m!1279673 () Bool)

(assert (=> start!119684 m!1279673))

(assert (=> b!1393585 m!1279645))

(assert (=> b!1393585 m!1279645))

(declare-fun m!1279675 () Bool)

(assert (=> b!1393585 m!1279675))

(declare-fun m!1279677 () Bool)

(assert (=> b!1393584 m!1279677))

(push 1)

(assert (not b!1393581))

(assert (not start!119684))

(assert (not b!1393585))

(assert (not b!1393582))

(assert (not b!1393584))

(assert (not b!1393583))

(assert (not b!1393587))

(assert (not b!1393586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

