; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121128 () Bool)

(assert start!121128)

(declare-fun b!1407772 () Bool)

(declare-fun res!945602 () Bool)

(declare-fun e!796810 () Bool)

(assert (=> b!1407772 (=> (not res!945602) (not e!796810))))

(declare-datatypes ((array!96200 0))(
  ( (array!96201 (arr!46439 (Array (_ BitVec 32) (_ BitVec 64))) (size!46990 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96200)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96200 (_ BitVec 32)) Bool)

(assert (=> b!1407772 (= res!945602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!945607 () Bool)

(assert (=> start!121128 (=> (not res!945607) (not e!796810))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121128 (= res!945607 (validMask!0 mask!2840))))

(assert (=> start!121128 e!796810))

(assert (=> start!121128 true))

(declare-fun array_inv!35384 (array!96200) Bool)

(assert (=> start!121128 (array_inv!35384 a!2901)))

(declare-fun b!1407771 () Bool)

(declare-fun e!796809 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10772 0))(
  ( (MissingZero!10772 (index!45464 (_ BitVec 32))) (Found!10772 (index!45465 (_ BitVec 32))) (Intermediate!10772 (undefined!11584 Bool) (index!45466 (_ BitVec 32)) (x!127080 (_ BitVec 32))) (Undefined!10772) (MissingVacant!10772 (index!45467 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96200 (_ BitVec 32)) SeekEntryResult!10772)

(assert (=> b!1407771 (= e!796809 (= (seekEntryOrOpen!0 (select (arr!46439 a!2901) j!112) a!2901 mask!2840) (Found!10772 j!112)))))

(declare-fun b!1407773 () Bool)

(declare-fun res!945603 () Bool)

(assert (=> b!1407773 (=> (not res!945603) (not e!796810))))

(declare-datatypes ((List!33138 0))(
  ( (Nil!33135) (Cons!33134 (h!34397 (_ BitVec 64)) (t!47839 List!33138)) )
))
(declare-fun arrayNoDuplicates!0 (array!96200 (_ BitVec 32) List!33138) Bool)

(assert (=> b!1407773 (= res!945603 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33135))))

(declare-fun b!1407774 () Bool)

(declare-fun res!945608 () Bool)

(assert (=> b!1407774 (=> (not res!945608) (not e!796810))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407774 (= res!945608 (validKeyInArray!0 (select (arr!46439 a!2901) j!112)))))

(declare-fun b!1407775 () Bool)

(declare-fun res!945606 () Bool)

(assert (=> b!1407775 (=> (not res!945606) (not e!796810))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1407775 (= res!945606 (and (= (size!46990 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46990 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46990 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407776 () Bool)

(declare-fun e!796808 () Bool)

(assert (=> b!1407776 (= e!796810 (not e!796808))))

(declare-fun res!945605 () Bool)

(assert (=> b!1407776 (=> res!945605 e!796808)))

(declare-fun lt!619904 () SeekEntryResult!10772)

(get-info :version)

(assert (=> b!1407776 (= res!945605 (or (not ((_ is Intermediate!10772) lt!619904)) (undefined!11584 lt!619904)))))

(assert (=> b!1407776 e!796809))

(declare-fun res!945609 () Bool)

(assert (=> b!1407776 (=> (not res!945609) (not e!796809))))

(assert (=> b!1407776 (= res!945609 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47468 0))(
  ( (Unit!47469) )
))
(declare-fun lt!619905 () Unit!47468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96200 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47468)

(assert (=> b!1407776 (= lt!619905 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96200 (_ BitVec 32)) SeekEntryResult!10772)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407776 (= lt!619904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46439 a!2901) j!112) mask!2840) (select (arr!46439 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407777 () Bool)

(assert (=> b!1407777 (= e!796808 true)))

(declare-fun lt!619906 () SeekEntryResult!10772)

(assert (=> b!1407777 (= lt!619906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46439 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46439 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96201 (store (arr!46439 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46990 a!2901)) mask!2840))))

(declare-fun b!1407778 () Bool)

(declare-fun res!945604 () Bool)

(assert (=> b!1407778 (=> (not res!945604) (not e!796810))))

(assert (=> b!1407778 (= res!945604 (validKeyInArray!0 (select (arr!46439 a!2901) i!1037)))))

(assert (= (and start!121128 res!945607) b!1407775))

(assert (= (and b!1407775 res!945606) b!1407778))

(assert (= (and b!1407778 res!945604) b!1407774))

(assert (= (and b!1407774 res!945608) b!1407772))

(assert (= (and b!1407772 res!945602) b!1407773))

(assert (= (and b!1407773 res!945603) b!1407776))

(assert (= (and b!1407776 res!945609) b!1407771))

(assert (= (and b!1407776 (not res!945605)) b!1407777))

(declare-fun m!1296891 () Bool)

(assert (=> b!1407774 m!1296891))

(assert (=> b!1407774 m!1296891))

(declare-fun m!1296893 () Bool)

(assert (=> b!1407774 m!1296893))

(declare-fun m!1296895 () Bool)

(assert (=> b!1407773 m!1296895))

(declare-fun m!1296897 () Bool)

(assert (=> b!1407778 m!1296897))

(assert (=> b!1407778 m!1296897))

(declare-fun m!1296899 () Bool)

(assert (=> b!1407778 m!1296899))

(assert (=> b!1407771 m!1296891))

(assert (=> b!1407771 m!1296891))

(declare-fun m!1296901 () Bool)

(assert (=> b!1407771 m!1296901))

(assert (=> b!1407776 m!1296891))

(declare-fun m!1296903 () Bool)

(assert (=> b!1407776 m!1296903))

(assert (=> b!1407776 m!1296891))

(declare-fun m!1296905 () Bool)

(assert (=> b!1407776 m!1296905))

(assert (=> b!1407776 m!1296903))

(assert (=> b!1407776 m!1296891))

(declare-fun m!1296907 () Bool)

(assert (=> b!1407776 m!1296907))

(declare-fun m!1296909 () Bool)

(assert (=> b!1407776 m!1296909))

(declare-fun m!1296911 () Bool)

(assert (=> b!1407772 m!1296911))

(declare-fun m!1296913 () Bool)

(assert (=> start!121128 m!1296913))

(declare-fun m!1296915 () Bool)

(assert (=> start!121128 m!1296915))

(declare-fun m!1296917 () Bool)

(assert (=> b!1407777 m!1296917))

(declare-fun m!1296919 () Bool)

(assert (=> b!1407777 m!1296919))

(assert (=> b!1407777 m!1296919))

(declare-fun m!1296921 () Bool)

(assert (=> b!1407777 m!1296921))

(assert (=> b!1407777 m!1296921))

(assert (=> b!1407777 m!1296919))

(declare-fun m!1296923 () Bool)

(assert (=> b!1407777 m!1296923))

(check-sat (not b!1407771) (not start!121128) (not b!1407772) (not b!1407776) (not b!1407778) (not b!1407777) (not b!1407773) (not b!1407774))
