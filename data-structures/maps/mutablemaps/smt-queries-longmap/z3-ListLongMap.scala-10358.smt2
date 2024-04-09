; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122004 () Bool)

(assert start!122004)

(declare-fun b!1415338 () Bool)

(declare-fun res!951491 () Bool)

(declare-fun e!801073 () Bool)

(assert (=> b!1415338 (=> (not res!951491) (not e!801073))))

(declare-datatypes ((array!96608 0))(
  ( (array!96609 (arr!46631 (Array (_ BitVec 32) (_ BitVec 64))) (size!47182 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96608)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415338 (= res!951491 (validKeyInArray!0 (select (arr!46631 a!2901) j!112)))))

(declare-fun b!1415339 () Bool)

(declare-fun res!951497 () Bool)

(assert (=> b!1415339 (=> (not res!951497) (not e!801073))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415339 (= res!951497 (and (= (size!47182 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47182 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47182 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!951495 () Bool)

(assert (=> start!122004 (=> (not res!951495) (not e!801073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122004 (= res!951495 (validMask!0 mask!2840))))

(assert (=> start!122004 e!801073))

(assert (=> start!122004 true))

(declare-fun array_inv!35576 (array!96608) Bool)

(assert (=> start!122004 (array_inv!35576 a!2901)))

(declare-fun b!1415340 () Bool)

(declare-fun e!801074 () Bool)

(declare-datatypes ((SeekEntryResult!10964 0))(
  ( (MissingZero!10964 (index!46247 (_ BitVec 32))) (Found!10964 (index!46248 (_ BitVec 32))) (Intermediate!10964 (undefined!11776 Bool) (index!46249 (_ BitVec 32)) (x!127862 (_ BitVec 32))) (Undefined!10964) (MissingVacant!10964 (index!46250 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96608 (_ BitVec 32)) SeekEntryResult!10964)

(assert (=> b!1415340 (= e!801074 (= (seekEntryOrOpen!0 (select (arr!46631 a!2901) j!112) a!2901 mask!2840) (Found!10964 j!112)))))

(declare-fun lt!624073 () SeekEntryResult!10964)

(declare-fun lt!624075 () (_ BitVec 32))

(declare-fun b!1415341 () Bool)

(declare-fun lt!624076 () SeekEntryResult!10964)

(declare-fun e!801071 () Bool)

(assert (=> b!1415341 (= e!801071 (or (bvslt (x!127862 lt!624076) #b00000000000000000000000000000000) (bvsgt (x!127862 lt!624076) #b01111111111111111111111111111110) (bvslt (x!127862 lt!624073) #b00000000000000000000000000000000) (bvsgt (x!127862 lt!624073) #b01111111111111111111111111111110) (bvslt lt!624075 #b00000000000000000000000000000000) (bvsge lt!624075 (size!47182 a!2901)) (bvslt (index!46249 lt!624076) #b00000000000000000000000000000000) (bvsge (index!46249 lt!624076) (size!47182 a!2901)) (bvslt (index!46249 lt!624073) #b00000000000000000000000000000000) (bvsge (index!46249 lt!624073) (size!47182 a!2901)) (= lt!624076 (Intermediate!10964 false (index!46249 lt!624076) (x!127862 lt!624076)))))))

(declare-fun e!801072 () Bool)

(assert (=> b!1415341 e!801072))

(declare-fun res!951494 () Bool)

(assert (=> b!1415341 (=> (not res!951494) (not e!801072))))

(assert (=> b!1415341 (= res!951494 (and (not (undefined!11776 lt!624073)) (= (index!46249 lt!624073) i!1037) (bvslt (x!127862 lt!624073) (x!127862 lt!624076)) (= (select (store (arr!46631 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46249 lt!624073)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47852 0))(
  ( (Unit!47853) )
))
(declare-fun lt!624070 () Unit!47852)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47852)

(assert (=> b!1415341 (= lt!624070 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624075 (x!127862 lt!624076) (index!46249 lt!624076) (x!127862 lt!624073) (index!46249 lt!624073) (undefined!11776 lt!624073) mask!2840))))

(declare-fun b!1415342 () Bool)

(declare-fun res!951489 () Bool)

(assert (=> b!1415342 (=> (not res!951489) (not e!801073))))

(assert (=> b!1415342 (= res!951489 (validKeyInArray!0 (select (arr!46631 a!2901) i!1037)))))

(declare-fun b!1415343 () Bool)

(declare-fun res!951490 () Bool)

(assert (=> b!1415343 (=> (not res!951490) (not e!801073))))

(declare-datatypes ((List!33330 0))(
  ( (Nil!33327) (Cons!33326 (h!34613 (_ BitVec 64)) (t!48031 List!33330)) )
))
(declare-fun arrayNoDuplicates!0 (array!96608 (_ BitVec 32) List!33330) Bool)

(assert (=> b!1415343 (= res!951490 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33327))))

(declare-fun lt!624072 () array!96608)

(declare-fun lt!624071 () (_ BitVec 64))

(declare-fun b!1415344 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96608 (_ BitVec 32)) SeekEntryResult!10964)

(assert (=> b!1415344 (= e!801072 (= (seekEntryOrOpen!0 lt!624071 lt!624072 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127862 lt!624073) (index!46249 lt!624073) (index!46249 lt!624073) (select (arr!46631 a!2901) j!112) lt!624072 mask!2840)))))

(declare-fun b!1415345 () Bool)

(declare-fun e!801069 () Bool)

(assert (=> b!1415345 (= e!801073 (not e!801069))))

(declare-fun res!951493 () Bool)

(assert (=> b!1415345 (=> res!951493 e!801069)))

(get-info :version)

(assert (=> b!1415345 (= res!951493 (or (not ((_ is Intermediate!10964) lt!624076)) (undefined!11776 lt!624076)))))

(assert (=> b!1415345 e!801074))

(declare-fun res!951496 () Bool)

(assert (=> b!1415345 (=> (not res!951496) (not e!801074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96608 (_ BitVec 32)) Bool)

(assert (=> b!1415345 (= res!951496 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624074 () Unit!47852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47852)

(assert (=> b!1415345 (= lt!624074 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96608 (_ BitVec 32)) SeekEntryResult!10964)

(assert (=> b!1415345 (= lt!624076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624075 (select (arr!46631 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415345 (= lt!624075 (toIndex!0 (select (arr!46631 a!2901) j!112) mask!2840))))

(declare-fun b!1415346 () Bool)

(assert (=> b!1415346 (= e!801069 e!801071)))

(declare-fun res!951492 () Bool)

(assert (=> b!1415346 (=> res!951492 e!801071)))

(assert (=> b!1415346 (= res!951492 (or (= lt!624076 lt!624073) (not ((_ is Intermediate!10964) lt!624073))))))

(assert (=> b!1415346 (= lt!624073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624071 mask!2840) lt!624071 lt!624072 mask!2840))))

(assert (=> b!1415346 (= lt!624071 (select (store (arr!46631 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415346 (= lt!624072 (array!96609 (store (arr!46631 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47182 a!2901)))))

(declare-fun b!1415347 () Bool)

(declare-fun res!951498 () Bool)

(assert (=> b!1415347 (=> (not res!951498) (not e!801073))))

(assert (=> b!1415347 (= res!951498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!122004 res!951495) b!1415339))

(assert (= (and b!1415339 res!951497) b!1415342))

(assert (= (and b!1415342 res!951489) b!1415338))

(assert (= (and b!1415338 res!951491) b!1415347))

(assert (= (and b!1415347 res!951498) b!1415343))

(assert (= (and b!1415343 res!951490) b!1415345))

(assert (= (and b!1415345 res!951496) b!1415340))

(assert (= (and b!1415345 (not res!951493)) b!1415346))

(assert (= (and b!1415346 (not res!951492)) b!1415341))

(assert (= (and b!1415341 res!951494) b!1415344))

(declare-fun m!1305671 () Bool)

(assert (=> b!1415347 m!1305671))

(declare-fun m!1305673 () Bool)

(assert (=> b!1415341 m!1305673))

(declare-fun m!1305675 () Bool)

(assert (=> b!1415341 m!1305675))

(declare-fun m!1305677 () Bool)

(assert (=> b!1415341 m!1305677))

(declare-fun m!1305679 () Bool)

(assert (=> b!1415343 m!1305679))

(declare-fun m!1305681 () Bool)

(assert (=> start!122004 m!1305681))

(declare-fun m!1305683 () Bool)

(assert (=> start!122004 m!1305683))

(declare-fun m!1305685 () Bool)

(assert (=> b!1415340 m!1305685))

(assert (=> b!1415340 m!1305685))

(declare-fun m!1305687 () Bool)

(assert (=> b!1415340 m!1305687))

(declare-fun m!1305689 () Bool)

(assert (=> b!1415344 m!1305689))

(assert (=> b!1415344 m!1305685))

(assert (=> b!1415344 m!1305685))

(declare-fun m!1305691 () Bool)

(assert (=> b!1415344 m!1305691))

(declare-fun m!1305693 () Bool)

(assert (=> b!1415346 m!1305693))

(assert (=> b!1415346 m!1305693))

(declare-fun m!1305695 () Bool)

(assert (=> b!1415346 m!1305695))

(assert (=> b!1415346 m!1305673))

(declare-fun m!1305697 () Bool)

(assert (=> b!1415346 m!1305697))

(assert (=> b!1415338 m!1305685))

(assert (=> b!1415338 m!1305685))

(declare-fun m!1305699 () Bool)

(assert (=> b!1415338 m!1305699))

(declare-fun m!1305701 () Bool)

(assert (=> b!1415342 m!1305701))

(assert (=> b!1415342 m!1305701))

(declare-fun m!1305703 () Bool)

(assert (=> b!1415342 m!1305703))

(assert (=> b!1415345 m!1305685))

(declare-fun m!1305705 () Bool)

(assert (=> b!1415345 m!1305705))

(assert (=> b!1415345 m!1305685))

(assert (=> b!1415345 m!1305685))

(declare-fun m!1305707 () Bool)

(assert (=> b!1415345 m!1305707))

(declare-fun m!1305709 () Bool)

(assert (=> b!1415345 m!1305709))

(declare-fun m!1305711 () Bool)

(assert (=> b!1415345 m!1305711))

(check-sat (not b!1415340) (not b!1415342) (not start!122004) (not b!1415346) (not b!1415345) (not b!1415338) (not b!1415341) (not b!1415343) (not b!1415344) (not b!1415347))
(check-sat)
