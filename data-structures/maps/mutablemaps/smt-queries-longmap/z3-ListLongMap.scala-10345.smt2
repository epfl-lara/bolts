; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121662 () Bool)

(assert start!121662)

(declare-fun b!1412860 () Bool)

(declare-fun e!799589 () Bool)

(declare-fun e!799592 () Bool)

(assert (=> b!1412860 (= e!799589 (not e!799592))))

(declare-fun res!949966 () Bool)

(assert (=> b!1412860 (=> res!949966 e!799592)))

(declare-datatypes ((SeekEntryResult!10925 0))(
  ( (MissingZero!10925 (index!46079 (_ BitVec 32))) (Found!10925 (index!46080 (_ BitVec 32))) (Intermediate!10925 (undefined!11737 Bool) (index!46081 (_ BitVec 32)) (x!127671 (_ BitVec 32))) (Undefined!10925) (MissingVacant!10925 (index!46082 (_ BitVec 32))) )
))
(declare-fun lt!622632 () SeekEntryResult!10925)

(get-info :version)

(assert (=> b!1412860 (= res!949966 (or (not ((_ is Intermediate!10925) lt!622632)) (undefined!11737 lt!622632)))))

(declare-fun e!799590 () Bool)

(assert (=> b!1412860 e!799590))

(declare-fun res!949963 () Bool)

(assert (=> b!1412860 (=> (not res!949963) (not e!799590))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96518 0))(
  ( (array!96519 (arr!46592 (Array (_ BitVec 32) (_ BitVec 64))) (size!47143 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96518)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96518 (_ BitVec 32)) Bool)

(assert (=> b!1412860 (= res!949963 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47774 0))(
  ( (Unit!47775) )
))
(declare-fun lt!622629 () Unit!47774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47774)

(assert (=> b!1412860 (= lt!622629 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622627 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96518 (_ BitVec 32)) SeekEntryResult!10925)

(assert (=> b!1412860 (= lt!622632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622627 (select (arr!46592 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412860 (= lt!622627 (toIndex!0 (select (arr!46592 a!2901) j!112) mask!2840))))

(declare-fun b!1412861 () Bool)

(declare-fun res!949967 () Bool)

(assert (=> b!1412861 (=> (not res!949967) (not e!799589))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412861 (= res!949967 (and (= (size!47143 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47143 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47143 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412862 () Bool)

(declare-fun res!949961 () Bool)

(assert (=> b!1412862 (=> (not res!949961) (not e!799589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412862 (= res!949961 (validKeyInArray!0 (select (arr!46592 a!2901) i!1037)))))

(declare-fun res!949968 () Bool)

(assert (=> start!121662 (=> (not res!949968) (not e!799589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121662 (= res!949968 (validMask!0 mask!2840))))

(assert (=> start!121662 e!799589))

(assert (=> start!121662 true))

(declare-fun array_inv!35537 (array!96518) Bool)

(assert (=> start!121662 (array_inv!35537 a!2901)))

(declare-fun b!1412863 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96518 (_ BitVec 32)) SeekEntryResult!10925)

(assert (=> b!1412863 (= e!799590 (= (seekEntryOrOpen!0 (select (arr!46592 a!2901) j!112) a!2901 mask!2840) (Found!10925 j!112)))))

(declare-fun b!1412864 () Bool)

(declare-fun e!799591 () Bool)

(assert (=> b!1412864 (= e!799591 true)))

(declare-fun e!799588 () Bool)

(assert (=> b!1412864 e!799588))

(declare-fun res!949962 () Bool)

(assert (=> b!1412864 (=> (not res!949962) (not e!799588))))

(declare-fun lt!622630 () SeekEntryResult!10925)

(assert (=> b!1412864 (= res!949962 (and (not (undefined!11737 lt!622630)) (= (index!46081 lt!622630) i!1037) (bvslt (x!127671 lt!622630) (x!127671 lt!622632)) (= (select (store (arr!46592 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46081 lt!622630)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622631 () Unit!47774)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47774)

(assert (=> b!1412864 (= lt!622631 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622627 (x!127671 lt!622632) (index!46081 lt!622632) (x!127671 lt!622630) (index!46081 lt!622630) (undefined!11737 lt!622630) mask!2840))))

(declare-fun b!1412865 () Bool)

(declare-fun res!949964 () Bool)

(assert (=> b!1412865 (=> (not res!949964) (not e!799589))))

(declare-datatypes ((List!33291 0))(
  ( (Nil!33288) (Cons!33287 (h!34562 (_ BitVec 64)) (t!47992 List!33291)) )
))
(declare-fun arrayNoDuplicates!0 (array!96518 (_ BitVec 32) List!33291) Bool)

(assert (=> b!1412865 (= res!949964 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33288))))

(declare-fun b!1412866 () Bool)

(declare-fun lt!622628 () (_ BitVec 64))

(declare-fun lt!622633 () array!96518)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96518 (_ BitVec 32)) SeekEntryResult!10925)

(assert (=> b!1412866 (= e!799588 (= (seekEntryOrOpen!0 lt!622628 lt!622633 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127671 lt!622630) (index!46081 lt!622630) (index!46081 lt!622630) (select (arr!46592 a!2901) j!112) lt!622633 mask!2840)))))

(declare-fun b!1412867 () Bool)

(assert (=> b!1412867 (= e!799592 e!799591)))

(declare-fun res!949965 () Bool)

(assert (=> b!1412867 (=> res!949965 e!799591)))

(assert (=> b!1412867 (= res!949965 (or (= lt!622632 lt!622630) (not ((_ is Intermediate!10925) lt!622630))))))

(assert (=> b!1412867 (= lt!622630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622628 mask!2840) lt!622628 lt!622633 mask!2840))))

(assert (=> b!1412867 (= lt!622628 (select (store (arr!46592 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412867 (= lt!622633 (array!96519 (store (arr!46592 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47143 a!2901)))))

(declare-fun b!1412868 () Bool)

(declare-fun res!949960 () Bool)

(assert (=> b!1412868 (=> (not res!949960) (not e!799589))))

(assert (=> b!1412868 (= res!949960 (validKeyInArray!0 (select (arr!46592 a!2901) j!112)))))

(declare-fun b!1412869 () Bool)

(declare-fun res!949959 () Bool)

(assert (=> b!1412869 (=> (not res!949959) (not e!799589))))

(assert (=> b!1412869 (= res!949959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121662 res!949968) b!1412861))

(assert (= (and b!1412861 res!949967) b!1412862))

(assert (= (and b!1412862 res!949961) b!1412868))

(assert (= (and b!1412868 res!949960) b!1412869))

(assert (= (and b!1412869 res!949959) b!1412865))

(assert (= (and b!1412865 res!949964) b!1412860))

(assert (= (and b!1412860 res!949963) b!1412863))

(assert (= (and b!1412860 (not res!949966)) b!1412867))

(assert (= (and b!1412867 (not res!949965)) b!1412864))

(assert (= (and b!1412864 res!949962) b!1412866))

(declare-fun m!1303145 () Bool)

(assert (=> b!1412862 m!1303145))

(assert (=> b!1412862 m!1303145))

(declare-fun m!1303147 () Bool)

(assert (=> b!1412862 m!1303147))

(declare-fun m!1303149 () Bool)

(assert (=> b!1412864 m!1303149))

(declare-fun m!1303151 () Bool)

(assert (=> b!1412864 m!1303151))

(declare-fun m!1303153 () Bool)

(assert (=> b!1412864 m!1303153))

(declare-fun m!1303155 () Bool)

(assert (=> b!1412865 m!1303155))

(declare-fun m!1303157 () Bool)

(assert (=> b!1412867 m!1303157))

(assert (=> b!1412867 m!1303157))

(declare-fun m!1303159 () Bool)

(assert (=> b!1412867 m!1303159))

(assert (=> b!1412867 m!1303149))

(declare-fun m!1303161 () Bool)

(assert (=> b!1412867 m!1303161))

(declare-fun m!1303163 () Bool)

(assert (=> b!1412868 m!1303163))

(assert (=> b!1412868 m!1303163))

(declare-fun m!1303165 () Bool)

(assert (=> b!1412868 m!1303165))

(assert (=> b!1412863 m!1303163))

(assert (=> b!1412863 m!1303163))

(declare-fun m!1303167 () Bool)

(assert (=> b!1412863 m!1303167))

(assert (=> b!1412860 m!1303163))

(declare-fun m!1303169 () Bool)

(assert (=> b!1412860 m!1303169))

(assert (=> b!1412860 m!1303163))

(declare-fun m!1303171 () Bool)

(assert (=> b!1412860 m!1303171))

(assert (=> b!1412860 m!1303163))

(declare-fun m!1303173 () Bool)

(assert (=> b!1412860 m!1303173))

(declare-fun m!1303175 () Bool)

(assert (=> b!1412860 m!1303175))

(declare-fun m!1303177 () Bool)

(assert (=> b!1412869 m!1303177))

(declare-fun m!1303179 () Bool)

(assert (=> start!121662 m!1303179))

(declare-fun m!1303181 () Bool)

(assert (=> start!121662 m!1303181))

(declare-fun m!1303183 () Bool)

(assert (=> b!1412866 m!1303183))

(assert (=> b!1412866 m!1303163))

(assert (=> b!1412866 m!1303163))

(declare-fun m!1303185 () Bool)

(assert (=> b!1412866 m!1303185))

(check-sat (not b!1412862) (not b!1412865) (not b!1412864) (not b!1412863) (not b!1412860) (not b!1412867) (not start!121662) (not b!1412866) (not b!1412869) (not b!1412868))
(check-sat)
