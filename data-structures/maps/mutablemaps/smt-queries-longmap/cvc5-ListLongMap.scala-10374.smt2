; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122152 () Bool)

(assert start!122152)

(declare-fun b!1416936 () Bool)

(declare-fun res!952922 () Bool)

(declare-fun e!801962 () Bool)

(assert (=> b!1416936 (=> (not res!952922) (not e!801962))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96705 0))(
  ( (array!96706 (arr!46678 (Array (_ BitVec 32) (_ BitVec 64))) (size!47229 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96705)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416936 (= res!952922 (and (= (size!47229 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47229 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47229 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416937 () Bool)

(declare-fun res!952928 () Bool)

(assert (=> b!1416937 (=> (not res!952928) (not e!801962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96705 (_ BitVec 32)) Bool)

(assert (=> b!1416937 (= res!952928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416938 () Bool)

(declare-fun e!801964 () Bool)

(assert (=> b!1416938 (= e!801962 (not e!801964))))

(declare-fun res!952927 () Bool)

(assert (=> b!1416938 (=> res!952927 e!801964)))

(declare-datatypes ((SeekEntryResult!11011 0))(
  ( (MissingZero!11011 (index!46435 (_ BitVec 32))) (Found!11011 (index!46436 (_ BitVec 32))) (Intermediate!11011 (undefined!11823 Bool) (index!46437 (_ BitVec 32)) (x!128043 (_ BitVec 32))) (Undefined!11011) (MissingVacant!11011 (index!46438 (_ BitVec 32))) )
))
(declare-fun lt!625143 () SeekEntryResult!11011)

(assert (=> b!1416938 (= res!952927 (or (not (is-Intermediate!11011 lt!625143)) (undefined!11823 lt!625143)))))

(declare-fun e!801963 () Bool)

(assert (=> b!1416938 e!801963))

(declare-fun res!952923 () Bool)

(assert (=> b!1416938 (=> (not res!952923) (not e!801963))))

(assert (=> b!1416938 (= res!952923 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47946 0))(
  ( (Unit!47947) )
))
(declare-fun lt!625142 () Unit!47946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47946)

(assert (=> b!1416938 (= lt!625142 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96705 (_ BitVec 32)) SeekEntryResult!11011)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416938 (= lt!625143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46678 a!2901) j!112) mask!2840) (select (arr!46678 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416939 () Bool)

(assert (=> b!1416939 (= e!801964 true)))

(declare-fun lt!625144 () SeekEntryResult!11011)

(assert (=> b!1416939 (= lt!625144 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46678 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46678 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96706 (store (arr!46678 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47229 a!2901)) mask!2840))))

(declare-fun b!1416940 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96705 (_ BitVec 32)) SeekEntryResult!11011)

(assert (=> b!1416940 (= e!801963 (= (seekEntryOrOpen!0 (select (arr!46678 a!2901) j!112) a!2901 mask!2840) (Found!11011 j!112)))))

(declare-fun b!1416942 () Bool)

(declare-fun res!952924 () Bool)

(assert (=> b!1416942 (=> (not res!952924) (not e!801962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416942 (= res!952924 (validKeyInArray!0 (select (arr!46678 a!2901) i!1037)))))

(declare-fun b!1416943 () Bool)

(declare-fun res!952926 () Bool)

(assert (=> b!1416943 (=> (not res!952926) (not e!801962))))

(declare-datatypes ((List!33377 0))(
  ( (Nil!33374) (Cons!33373 (h!34663 (_ BitVec 64)) (t!48078 List!33377)) )
))
(declare-fun arrayNoDuplicates!0 (array!96705 (_ BitVec 32) List!33377) Bool)

(assert (=> b!1416943 (= res!952926 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33374))))

(declare-fun b!1416941 () Bool)

(declare-fun res!952925 () Bool)

(assert (=> b!1416941 (=> (not res!952925) (not e!801962))))

(assert (=> b!1416941 (= res!952925 (validKeyInArray!0 (select (arr!46678 a!2901) j!112)))))

(declare-fun res!952929 () Bool)

(assert (=> start!122152 (=> (not res!952929) (not e!801962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122152 (= res!952929 (validMask!0 mask!2840))))

(assert (=> start!122152 e!801962))

(assert (=> start!122152 true))

(declare-fun array_inv!35623 (array!96705) Bool)

(assert (=> start!122152 (array_inv!35623 a!2901)))

(assert (= (and start!122152 res!952929) b!1416936))

(assert (= (and b!1416936 res!952922) b!1416942))

(assert (= (and b!1416942 res!952924) b!1416941))

(assert (= (and b!1416941 res!952925) b!1416937))

(assert (= (and b!1416937 res!952928) b!1416943))

(assert (= (and b!1416943 res!952926) b!1416938))

(assert (= (and b!1416938 res!952923) b!1416940))

(assert (= (and b!1416938 (not res!952927)) b!1416939))

(declare-fun m!1307753 () Bool)

(assert (=> b!1416937 m!1307753))

(declare-fun m!1307755 () Bool)

(assert (=> start!122152 m!1307755))

(declare-fun m!1307757 () Bool)

(assert (=> start!122152 m!1307757))

(declare-fun m!1307759 () Bool)

(assert (=> b!1416939 m!1307759))

(declare-fun m!1307761 () Bool)

(assert (=> b!1416939 m!1307761))

(assert (=> b!1416939 m!1307761))

(declare-fun m!1307763 () Bool)

(assert (=> b!1416939 m!1307763))

(assert (=> b!1416939 m!1307763))

(assert (=> b!1416939 m!1307761))

(declare-fun m!1307765 () Bool)

(assert (=> b!1416939 m!1307765))

(declare-fun m!1307767 () Bool)

(assert (=> b!1416938 m!1307767))

(declare-fun m!1307769 () Bool)

(assert (=> b!1416938 m!1307769))

(assert (=> b!1416938 m!1307767))

(declare-fun m!1307771 () Bool)

(assert (=> b!1416938 m!1307771))

(assert (=> b!1416938 m!1307769))

(assert (=> b!1416938 m!1307767))

(declare-fun m!1307773 () Bool)

(assert (=> b!1416938 m!1307773))

(declare-fun m!1307775 () Bool)

(assert (=> b!1416938 m!1307775))

(assert (=> b!1416941 m!1307767))

(assert (=> b!1416941 m!1307767))

(declare-fun m!1307777 () Bool)

(assert (=> b!1416941 m!1307777))

(declare-fun m!1307779 () Bool)

(assert (=> b!1416942 m!1307779))

(assert (=> b!1416942 m!1307779))

(declare-fun m!1307781 () Bool)

(assert (=> b!1416942 m!1307781))

(assert (=> b!1416940 m!1307767))

(assert (=> b!1416940 m!1307767))

(declare-fun m!1307783 () Bool)

(assert (=> b!1416940 m!1307783))

(declare-fun m!1307785 () Bool)

(assert (=> b!1416943 m!1307785))

(push 1)

(assert (not start!122152))

(assert (not b!1416941))

(assert (not b!1416940))

(assert (not b!1416942))

(assert (not b!1416938))

(assert (not b!1416939))

(assert (not b!1416943))

(assert (not b!1416937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

