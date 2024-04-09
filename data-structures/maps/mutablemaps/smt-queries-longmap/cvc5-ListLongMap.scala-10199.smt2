; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120160 () Bool)

(assert start!120160)

(declare-fun b!1398503 () Bool)

(declare-fun e!791758 () Bool)

(declare-fun e!791755 () Bool)

(assert (=> b!1398503 (= e!791758 e!791755)))

(declare-fun res!937532 () Bool)

(assert (=> b!1398503 (=> res!937532 e!791755)))

(declare-datatypes ((SeekEntryResult!10492 0))(
  ( (MissingZero!10492 (index!44338 (_ BitVec 32))) (Found!10492 (index!44339 (_ BitVec 32))) (Intermediate!10492 (undefined!11304 Bool) (index!44340 (_ BitVec 32)) (x!125989 (_ BitVec 32))) (Undefined!10492) (MissingVacant!10492 (index!44341 (_ BitVec 32))) )
))
(declare-fun lt!614963 () SeekEntryResult!10492)

(declare-fun lt!614965 () SeekEntryResult!10492)

(assert (=> b!1398503 (= res!937532 (or (= lt!614963 lt!614965) (not (is-Intermediate!10492 lt!614965))))))

(declare-datatypes ((array!95607 0))(
  ( (array!95608 (arr!46153 (Array (_ BitVec 32) (_ BitVec 64))) (size!46704 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95607)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!614966 () (_ BitVec 64))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95607 (_ BitVec 32)) SeekEntryResult!10492)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398503 (= lt!614965 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614966 mask!2840) lt!614966 (array!95608 (store (arr!46153 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46704 a!2901)) mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1398503 (= lt!614966 (select (store (arr!46153 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398504 () Bool)

(assert (=> b!1398504 (= e!791755 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge (index!44340 lt!614965) #b00000000000000000000000000000000) (bvslt (index!44340 lt!614965) (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(assert (=> b!1398504 (and (not (undefined!11304 lt!614965)) (= (index!44340 lt!614965) i!1037) (bvslt (x!125989 lt!614965) (x!125989 lt!614963)) (= (select (store (arr!46153 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44340 lt!614965)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46938 0))(
  ( (Unit!46939) )
))
(declare-fun lt!614967 () Unit!46938)

(declare-fun lt!614968 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46938)

(assert (=> b!1398504 (= lt!614967 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614968 (x!125989 lt!614963) (index!44340 lt!614963) (x!125989 lt!614965) (index!44340 lt!614965) (undefined!11304 lt!614965) mask!2840))))

(declare-fun b!1398505 () Bool)

(declare-fun res!937533 () Bool)

(declare-fun e!791759 () Bool)

(assert (=> b!1398505 (=> (not res!937533) (not e!791759))))

(declare-datatypes ((List!32852 0))(
  ( (Nil!32849) (Cons!32848 (h!34090 (_ BitVec 64)) (t!47553 List!32852)) )
))
(declare-fun arrayNoDuplicates!0 (array!95607 (_ BitVec 32) List!32852) Bool)

(assert (=> b!1398505 (= res!937533 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32849))))

(declare-fun res!937531 () Bool)

(assert (=> start!120160 (=> (not res!937531) (not e!791759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120160 (= res!937531 (validMask!0 mask!2840))))

(assert (=> start!120160 e!791759))

(assert (=> start!120160 true))

(declare-fun array_inv!35098 (array!95607) Bool)

(assert (=> start!120160 (array_inv!35098 a!2901)))

(declare-fun b!1398506 () Bool)

(declare-fun res!937529 () Bool)

(assert (=> b!1398506 (=> (not res!937529) (not e!791759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398506 (= res!937529 (validKeyInArray!0 (select (arr!46153 a!2901) i!1037)))))

(declare-fun b!1398507 () Bool)

(declare-fun res!937525 () Bool)

(assert (=> b!1398507 (=> (not res!937525) (not e!791759))))

(assert (=> b!1398507 (= res!937525 (and (= (size!46704 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46704 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46704 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398508 () Bool)

(declare-fun e!791756 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95607 (_ BitVec 32)) SeekEntryResult!10492)

(assert (=> b!1398508 (= e!791756 (= (seekEntryOrOpen!0 (select (arr!46153 a!2901) j!112) a!2901 mask!2840) (Found!10492 j!112)))))

(declare-fun b!1398509 () Bool)

(declare-fun res!937527 () Bool)

(assert (=> b!1398509 (=> (not res!937527) (not e!791759))))

(assert (=> b!1398509 (= res!937527 (validKeyInArray!0 (select (arr!46153 a!2901) j!112)))))

(declare-fun b!1398510 () Bool)

(assert (=> b!1398510 (= e!791759 (not e!791758))))

(declare-fun res!937530 () Bool)

(assert (=> b!1398510 (=> res!937530 e!791758)))

(assert (=> b!1398510 (= res!937530 (or (not (is-Intermediate!10492 lt!614963)) (undefined!11304 lt!614963)))))

(assert (=> b!1398510 e!791756))

(declare-fun res!937528 () Bool)

(assert (=> b!1398510 (=> (not res!937528) (not e!791756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95607 (_ BitVec 32)) Bool)

(assert (=> b!1398510 (= res!937528 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614964 () Unit!46938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95607 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46938)

(assert (=> b!1398510 (= lt!614964 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398510 (= lt!614963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614968 (select (arr!46153 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398510 (= lt!614968 (toIndex!0 (select (arr!46153 a!2901) j!112) mask!2840))))

(declare-fun b!1398511 () Bool)

(declare-fun res!937526 () Bool)

(assert (=> b!1398511 (=> (not res!937526) (not e!791759))))

(assert (=> b!1398511 (= res!937526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120160 res!937531) b!1398507))

(assert (= (and b!1398507 res!937525) b!1398506))

(assert (= (and b!1398506 res!937529) b!1398509))

(assert (= (and b!1398509 res!937527) b!1398511))

(assert (= (and b!1398511 res!937526) b!1398505))

(assert (= (and b!1398505 res!937533) b!1398510))

(assert (= (and b!1398510 res!937528) b!1398508))

(assert (= (and b!1398510 (not res!937530)) b!1398503))

(assert (= (and b!1398503 (not res!937532)) b!1398504))

(declare-fun m!1285751 () Bool)

(assert (=> b!1398508 m!1285751))

(assert (=> b!1398508 m!1285751))

(declare-fun m!1285753 () Bool)

(assert (=> b!1398508 m!1285753))

(assert (=> b!1398509 m!1285751))

(assert (=> b!1398509 m!1285751))

(declare-fun m!1285755 () Bool)

(assert (=> b!1398509 m!1285755))

(declare-fun m!1285757 () Bool)

(assert (=> b!1398503 m!1285757))

(declare-fun m!1285759 () Bool)

(assert (=> b!1398503 m!1285759))

(assert (=> b!1398503 m!1285757))

(declare-fun m!1285761 () Bool)

(assert (=> b!1398503 m!1285761))

(declare-fun m!1285763 () Bool)

(assert (=> b!1398503 m!1285763))

(declare-fun m!1285765 () Bool)

(assert (=> b!1398511 m!1285765))

(assert (=> b!1398510 m!1285751))

(declare-fun m!1285767 () Bool)

(assert (=> b!1398510 m!1285767))

(assert (=> b!1398510 m!1285751))

(declare-fun m!1285769 () Bool)

(assert (=> b!1398510 m!1285769))

(assert (=> b!1398510 m!1285751))

(declare-fun m!1285771 () Bool)

(assert (=> b!1398510 m!1285771))

(declare-fun m!1285773 () Bool)

(assert (=> b!1398510 m!1285773))

(declare-fun m!1285775 () Bool)

(assert (=> b!1398506 m!1285775))

(assert (=> b!1398506 m!1285775))

(declare-fun m!1285777 () Bool)

(assert (=> b!1398506 m!1285777))

(declare-fun m!1285779 () Bool)

(assert (=> start!120160 m!1285779))

(declare-fun m!1285781 () Bool)

(assert (=> start!120160 m!1285781))

(declare-fun m!1285783 () Bool)

(assert (=> b!1398505 m!1285783))

(assert (=> b!1398504 m!1285759))

(declare-fun m!1285785 () Bool)

(assert (=> b!1398504 m!1285785))

(declare-fun m!1285787 () Bool)

(assert (=> b!1398504 m!1285787))

(push 1)

(assert (not b!1398504))

(assert (not b!1398506))

(assert (not start!120160))

(assert (not b!1398511))

(assert (not b!1398503))

(assert (not b!1398508))

(assert (not b!1398509))

(assert (not b!1398510))

(assert (not b!1398505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

