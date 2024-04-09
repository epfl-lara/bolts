; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119474 () Bool)

(assert start!119474)

(declare-fun b!1391847 () Bool)

(declare-fun res!931678 () Bool)

(declare-fun e!788189 () Bool)

(assert (=> b!1391847 (=> (not res!931678) (not e!788189))))

(declare-datatypes ((array!95176 0))(
  ( (array!95177 (arr!45945 (Array (_ BitVec 32) (_ BitVec 64))) (size!46496 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95176)

(declare-datatypes ((List!32644 0))(
  ( (Nil!32641) (Cons!32640 (h!33867 (_ BitVec 64)) (t!47345 List!32644)) )
))
(declare-fun arrayNoDuplicates!0 (array!95176 (_ BitVec 32) List!32644) Bool)

(assert (=> b!1391847 (= res!931678 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32641))))

(declare-fun b!1391848 () Bool)

(declare-fun res!931679 () Bool)

(assert (=> b!1391848 (=> (not res!931679) (not e!788189))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391848 (= res!931679 (validKeyInArray!0 (select (arr!45945 a!2901) i!1037)))))

(declare-fun b!1391849 () Bool)

(declare-fun res!931681 () Bool)

(assert (=> b!1391849 (=> (not res!931681) (not e!788189))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95176 (_ BitVec 32)) Bool)

(assert (=> b!1391849 (= res!931681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391850 () Bool)

(declare-fun e!788192 () Bool)

(assert (=> b!1391850 (= e!788192 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!611339 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391850 (= lt!611339 (toIndex!0 (select (store (arr!45945 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391851 () Bool)

(declare-fun res!931676 () Bool)

(assert (=> b!1391851 (=> (not res!931676) (not e!788189))))

(assert (=> b!1391851 (= res!931676 (validKeyInArray!0 (select (arr!45945 a!2901) j!112)))))

(declare-fun b!1391852 () Bool)

(declare-fun res!931680 () Bool)

(assert (=> b!1391852 (=> (not res!931680) (not e!788189))))

(assert (=> b!1391852 (= res!931680 (and (= (size!46496 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46496 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46496 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!931682 () Bool)

(assert (=> start!119474 (=> (not res!931682) (not e!788189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119474 (= res!931682 (validMask!0 mask!2840))))

(assert (=> start!119474 e!788189))

(assert (=> start!119474 true))

(declare-fun array_inv!34890 (array!95176) Bool)

(assert (=> start!119474 (array_inv!34890 a!2901)))

(declare-fun b!1391853 () Bool)

(assert (=> b!1391853 (= e!788189 (not e!788192))))

(declare-fun res!931683 () Bool)

(assert (=> b!1391853 (=> res!931683 e!788192)))

(declare-datatypes ((SeekEntryResult!10284 0))(
  ( (MissingZero!10284 (index!43506 (_ BitVec 32))) (Found!10284 (index!43507 (_ BitVec 32))) (Intermediate!10284 (undefined!11096 Bool) (index!43508 (_ BitVec 32)) (x!125191 (_ BitVec 32))) (Undefined!10284) (MissingVacant!10284 (index!43509 (_ BitVec 32))) )
))
(declare-fun lt!611340 () SeekEntryResult!10284)

(assert (=> b!1391853 (= res!931683 (or (not (is-Intermediate!10284 lt!611340)) (undefined!11096 lt!611340)))))

(declare-fun e!788191 () Bool)

(assert (=> b!1391853 e!788191))

(declare-fun res!931677 () Bool)

(assert (=> b!1391853 (=> (not res!931677) (not e!788191))))

(assert (=> b!1391853 (= res!931677 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46522 0))(
  ( (Unit!46523) )
))
(declare-fun lt!611341 () Unit!46522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95176 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46522)

(assert (=> b!1391853 (= lt!611341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95176 (_ BitVec 32)) SeekEntryResult!10284)

(assert (=> b!1391853 (= lt!611340 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45945 a!2901) j!112) mask!2840) (select (arr!45945 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391854 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95176 (_ BitVec 32)) SeekEntryResult!10284)

(assert (=> b!1391854 (= e!788191 (= (seekEntryOrOpen!0 (select (arr!45945 a!2901) j!112) a!2901 mask!2840) (Found!10284 j!112)))))

(assert (= (and start!119474 res!931682) b!1391852))

(assert (= (and b!1391852 res!931680) b!1391848))

(assert (= (and b!1391848 res!931679) b!1391851))

(assert (= (and b!1391851 res!931676) b!1391849))

(assert (= (and b!1391849 res!931681) b!1391847))

(assert (= (and b!1391847 res!931678) b!1391853))

(assert (= (and b!1391853 res!931677) b!1391854))

(assert (= (and b!1391853 (not res!931683)) b!1391850))

(declare-fun m!1277655 () Bool)

(assert (=> b!1391851 m!1277655))

(assert (=> b!1391851 m!1277655))

(declare-fun m!1277657 () Bool)

(assert (=> b!1391851 m!1277657))

(declare-fun m!1277659 () Bool)

(assert (=> b!1391847 m!1277659))

(declare-fun m!1277661 () Bool)

(assert (=> b!1391850 m!1277661))

(declare-fun m!1277663 () Bool)

(assert (=> b!1391850 m!1277663))

(assert (=> b!1391850 m!1277663))

(declare-fun m!1277665 () Bool)

(assert (=> b!1391850 m!1277665))

(declare-fun m!1277667 () Bool)

(assert (=> b!1391849 m!1277667))

(assert (=> b!1391853 m!1277655))

(declare-fun m!1277669 () Bool)

(assert (=> b!1391853 m!1277669))

(assert (=> b!1391853 m!1277655))

(declare-fun m!1277671 () Bool)

(assert (=> b!1391853 m!1277671))

(assert (=> b!1391853 m!1277669))

(assert (=> b!1391853 m!1277655))

(declare-fun m!1277673 () Bool)

(assert (=> b!1391853 m!1277673))

(declare-fun m!1277675 () Bool)

(assert (=> b!1391853 m!1277675))

(declare-fun m!1277677 () Bool)

(assert (=> b!1391848 m!1277677))

(assert (=> b!1391848 m!1277677))

(declare-fun m!1277679 () Bool)

(assert (=> b!1391848 m!1277679))

(assert (=> b!1391854 m!1277655))

(assert (=> b!1391854 m!1277655))

(declare-fun m!1277681 () Bool)

(assert (=> b!1391854 m!1277681))

(declare-fun m!1277683 () Bool)

(assert (=> start!119474 m!1277683))

(declare-fun m!1277685 () Bool)

(assert (=> start!119474 m!1277685))

(push 1)

(assert (not b!1391851))

(assert (not b!1391850))

(assert (not start!119474))

(assert (not b!1391849))

(assert (not b!1391853))

(assert (not b!1391854))

(assert (not b!1391847))

