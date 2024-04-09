; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121130 () Bool)

(assert start!121130)

(declare-fun b!1407795 () Bool)

(declare-fun res!945627 () Bool)

(declare-fun e!796823 () Bool)

(assert (=> b!1407795 (=> (not res!945627) (not e!796823))))

(declare-datatypes ((array!96202 0))(
  ( (array!96203 (arr!46440 (Array (_ BitVec 32) (_ BitVec 64))) (size!46991 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96202)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407795 (= res!945627 (validKeyInArray!0 (select (arr!46440 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1407797 () Bool)

(declare-fun e!796821 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10773 0))(
  ( (MissingZero!10773 (index!45468 (_ BitVec 32))) (Found!10773 (index!45469 (_ BitVec 32))) (Intermediate!10773 (undefined!11585 Bool) (index!45470 (_ BitVec 32)) (x!127081 (_ BitVec 32))) (Undefined!10773) (MissingVacant!10773 (index!45471 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96202 (_ BitVec 32)) SeekEntryResult!10773)

(assert (=> b!1407797 (= e!796821 (= (seekEntryOrOpen!0 (select (arr!46440 a!2901) j!112) a!2901 mask!2840) (Found!10773 j!112)))))

(declare-fun b!1407798 () Bool)

(declare-fun res!945629 () Bool)

(assert (=> b!1407798 (=> (not res!945629) (not e!796823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96202 (_ BitVec 32)) Bool)

(assert (=> b!1407798 (= res!945629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407799 () Bool)

(declare-fun e!796822 () Bool)

(assert (=> b!1407799 (= e!796822 true)))

(declare-fun lt!619915 () SeekEntryResult!10773)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96202 (_ BitVec 32)) SeekEntryResult!10773)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407799 (= lt!619915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46440 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46440 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96203 (store (arr!46440 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46991 a!2901)) mask!2840))))

(declare-fun b!1407800 () Bool)

(declare-fun res!945626 () Bool)

(assert (=> b!1407800 (=> (not res!945626) (not e!796823))))

(declare-datatypes ((List!33139 0))(
  ( (Nil!33136) (Cons!33135 (h!34398 (_ BitVec 64)) (t!47840 List!33139)) )
))
(declare-fun arrayNoDuplicates!0 (array!96202 (_ BitVec 32) List!33139) Bool)

(assert (=> b!1407800 (= res!945626 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33136))))

(declare-fun b!1407801 () Bool)

(declare-fun res!945630 () Bool)

(assert (=> b!1407801 (=> (not res!945630) (not e!796823))))

(assert (=> b!1407801 (= res!945630 (validKeyInArray!0 (select (arr!46440 a!2901) j!112)))))

(declare-fun b!1407802 () Bool)

(declare-fun res!945628 () Bool)

(assert (=> b!1407802 (=> (not res!945628) (not e!796823))))

(assert (=> b!1407802 (= res!945628 (and (= (size!46991 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46991 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46991 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!945632 () Bool)

(assert (=> start!121130 (=> (not res!945632) (not e!796823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121130 (= res!945632 (validMask!0 mask!2840))))

(assert (=> start!121130 e!796823))

(assert (=> start!121130 true))

(declare-fun array_inv!35385 (array!96202) Bool)

(assert (=> start!121130 (array_inv!35385 a!2901)))

(declare-fun b!1407796 () Bool)

(assert (=> b!1407796 (= e!796823 (not e!796822))))

(declare-fun res!945633 () Bool)

(assert (=> b!1407796 (=> res!945633 e!796822)))

(declare-fun lt!619913 () SeekEntryResult!10773)

(assert (=> b!1407796 (= res!945633 (or (not (is-Intermediate!10773 lt!619913)) (undefined!11585 lt!619913)))))

(assert (=> b!1407796 e!796821))

(declare-fun res!945631 () Bool)

(assert (=> b!1407796 (=> (not res!945631) (not e!796821))))

(assert (=> b!1407796 (= res!945631 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47470 0))(
  ( (Unit!47471) )
))
(declare-fun lt!619914 () Unit!47470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96202 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47470)

(assert (=> b!1407796 (= lt!619914 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407796 (= lt!619913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46440 a!2901) j!112) mask!2840) (select (arr!46440 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!121130 res!945632) b!1407802))

(assert (= (and b!1407802 res!945628) b!1407795))

(assert (= (and b!1407795 res!945627) b!1407801))

(assert (= (and b!1407801 res!945630) b!1407798))

(assert (= (and b!1407798 res!945629) b!1407800))

(assert (= (and b!1407800 res!945626) b!1407796))

(assert (= (and b!1407796 res!945631) b!1407797))

(assert (= (and b!1407796 (not res!945633)) b!1407799))

(declare-fun m!1296925 () Bool)

(assert (=> b!1407795 m!1296925))

(assert (=> b!1407795 m!1296925))

(declare-fun m!1296927 () Bool)

(assert (=> b!1407795 m!1296927))

(declare-fun m!1296929 () Bool)

(assert (=> b!1407800 m!1296929))

(declare-fun m!1296931 () Bool)

(assert (=> b!1407799 m!1296931))

(declare-fun m!1296933 () Bool)

(assert (=> b!1407799 m!1296933))

(assert (=> b!1407799 m!1296933))

(declare-fun m!1296935 () Bool)

(assert (=> b!1407799 m!1296935))

(assert (=> b!1407799 m!1296935))

(assert (=> b!1407799 m!1296933))

(declare-fun m!1296937 () Bool)

(assert (=> b!1407799 m!1296937))

(declare-fun m!1296939 () Bool)

(assert (=> b!1407797 m!1296939))

(assert (=> b!1407797 m!1296939))

(declare-fun m!1296941 () Bool)

(assert (=> b!1407797 m!1296941))

(declare-fun m!1296943 () Bool)

(assert (=> b!1407798 m!1296943))

(declare-fun m!1296945 () Bool)

(assert (=> start!121130 m!1296945))

(declare-fun m!1296947 () Bool)

(assert (=> start!121130 m!1296947))

(assert (=> b!1407796 m!1296939))

(declare-fun m!1296949 () Bool)

(assert (=> b!1407796 m!1296949))

(assert (=> b!1407796 m!1296939))

(declare-fun m!1296951 () Bool)

(assert (=> b!1407796 m!1296951))

(assert (=> b!1407796 m!1296949))

(assert (=> b!1407796 m!1296939))

(declare-fun m!1296953 () Bool)

(assert (=> b!1407796 m!1296953))

(declare-fun m!1296955 () Bool)

(assert (=> b!1407796 m!1296955))

(assert (=> b!1407801 m!1296939))

(assert (=> b!1407801 m!1296939))

(declare-fun m!1296957 () Bool)

(assert (=> b!1407801 m!1296957))

(push 1)

(assert (not b!1407798))

(assert (not start!121130))

(assert (not b!1407801))

(assert (not b!1407795))

(assert (not b!1407800))

(assert (not b!1407799))

(assert (not b!1407797))

(assert (not b!1407796))

(check-sat)

(pop 1)

